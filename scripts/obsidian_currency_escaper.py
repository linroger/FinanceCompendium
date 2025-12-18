#!/usr/bin/env python3
import os
import re
import argparse
import tempfile
import shutil
import sys
from enum import Enum, auto

# --- Configuration & Regex Patterns ---

class State(Enum):
    NORMAL = auto()
    FRONTMATTER = auto()       # YAML frontmatter: --- ... ---
    OBSIDIAN_COMMENT = auto()  # %% ... %%
    INLINE_MATH = auto()       # $...$
    BLOCK_MATH = auto()        # $$...$$
    LATEX_ENV = auto()         # \begin{...} ... \end{...}
    INLINE_CODE = auto()       # ` ... `
    FENCED_CODE = auto()       # ``` ... ```

# Currency Patterns (Lookahead from the $)
# Pattern A: Leading $ + number ($5, $1,000, $0.50)
PAT_A_NUM = re.compile(r'^\s*\d+(?:,\d{3})*(?:\.\d+)?')
# Pattern B: Leading $ + number + scale word ($6 million)
PAT_B_SCALE = re.compile(r'^\s*\d+(?:,\d{3})*(?:\.\d+)?\s*(million|billion|trillion|thousand)\b', re.IGNORECASE)
# Pattern C: Leading $ + number + magnitude suffix ($5b, $5k)
PAT_C_SUFFIX = re.compile(r'^\s*\d+(?:\.\d+)?\s*[kKmMbBtT]\b')

# Math Signal Patterns (To distinguish math from prose between two $...$)
# If the text between two $ contains these, it is extremely likely to be math.
PAT_MATH_SIGNALS = re.compile(r'[+\-=/*^_{}\\]|\\b(sin|cos|tan|log|ln|lim|sum|prod|int)\\b')

# Prose Signal Patterns (If text contains these, it is likely prose/currency, e.g. "$5 and $10")
PAT_PROSE_SIGNALS = re.compile(r'\b(and|or|the|is|are|with|for)\b', re.IGNORECASE)

def is_currency_lookahead(text_slice):
    """Checks if text following a $ matches currency patterns A, B, or C."""
    return (PAT_A_NUM.match(text_slice) or
            PAT_B_SCALE.match(text_slice) or
            PAT_C_SUFFIX.match(text_slice))

def is_currency_lookbehind(text, index):
    """
    Checks Pattern D: Trailing $ (e.g. 100$)
    Looks backward from text[index]
    """
    start = max(0, index - 20)
    chunk = text[start:index]
    # Regex: Ends with number + optional space
    return bool(re.search(r'\d+(?:,\d{3})*(?:\.\d+)?\s*$', chunk))

def is_likely_math_content(content):
    """
    Heuristic to determine if the string 'content' (found between two $)
    is valid LaTeX math or just prose.
    """
    if not content.strip():
        return False # Empty $ $ is not math

    # Newlines between $...$ are almost certainly not intended inline math.
    if '\n' in content:
        return False

    # If the content contains LaTeX-style commands like "\lambda" or "\frac",
    # treat it as math.
    if re.search(r'\\[A-Za-z]+', content):
        return True

    # If the content looks like prose (natural language), treat as non-math.
    # This is intentionally conservative to avoid mis-parsing currency like:
    # "$100, satisfies  $P = ...$"
    if PAT_PROSE_SIGNALS.search(content):
        return False

    # If there are long words AND whitespace, it's likely prose.
    # (Single-token identifiers like "sigma" should still be allowed as math.)
    if re.search(r'(?<!\\)[A-Za-z]{4,}', content) and re.search(r'\s', content):
        return False

    # 1. Strong Math Signals (Operators, LaTeX commands)
    if PAT_MATH_SIGNALS.search(content):
        return True

    # Ambiguous Case (e.g. "30", "x"): prefer math.
    return True

class VaultProcessor:
    def __init__(self, dry_run=False, escape_percent=False):
        self.dry_run = dry_run
        self.escape_percent = escape_percent
        self.stats = {
            'files_processed': 0,
            'dollars_normalized': 0,
            'dollars_escaped': 0,
            'percents_normalized': 0,
            'percents_escaped': 0,
        }

    def process_file(self, filepath):
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
        except UnicodeDecodeError:
            print(f"[WARN] Skipping non-UTF8 file: {filepath}")
            return

        new_content, changes = self.process_text(content)

        if changes > 0:
            print(f"[MOD] {filepath} ({changes} changes)")
            if not self.dry_run:
                # Atomic write
                dir_name = os.path.dirname(filepath)
                with tempfile.NamedTemporaryFile('w', delete=False, dir=dir_name, encoding='utf-8') as tf:
                    tf.write(new_content)
                    temp_name = tf.name
                shutil.move(temp_name, filepath)
        else:
            if self.dry_run:
                # Optional: print verbose no-change
                pass

        self.stats['files_processed'] += 1

    def process_text(self, text):
        """
        Robust single-pass state machine.
        """
        output = []
        i = 0
        n = len(text)
        state = State.NORMAL

        # State tracking for LaTeX environments
        latex_env_depth = 0

        changes = 0

        # Helper to append characters
        def emit(s):
            output.append(s)

        # Check for Frontmatter at start of file
        if text.startswith('---'):
            state = State.FRONTMATTER
            emit('---')
            i += 3

        while i < n:
            char = text[i]

            # --- STATE: FRONTMATTER (YAML) ---
            if state == State.FRONTMATTER:
                if text.startswith('\n---', i) or (i == 0 and text.startswith('---')):
                    # Technically frontmatter ends at the next ---
                    # We need to be careful not to match the start --- if we just entered
                    pass

                # Check for End of Frontmatter
                if text.startswith('\n---', i):
                    emit(char) # emit newline
                    i += 1
                    emit('---')
                    i += 3
                    state = State.NORMAL
                    continue
                # Also handle case where frontmatter closes on first line? Unlikely but possible.

                emit(char)
                i += 1
                continue

            # --- STATE: OBSIDIAN COMMENT (%%) ---
            if state == State.OBSIDIAN_COMMENT:
                if text.startswith('%%', i):
                    state = State.NORMAL
                    emit('%%')
                    i += 2
                else:
                    emit(char)
                    i += 1
                continue

            # --- STATE: FENCED CODE (```) ---
            if state == State.FENCED_CODE:
                if text.startswith('```', i):
                    state = State.NORMAL
                    emit('```')
                    i += 3
                else:
                    emit(char)
                    i += 1
                continue

            # --- STATE: INLINE CODE (`) ---
            if state == State.INLINE_CODE:
                if char == '`':
                    state = State.NORMAL
                emit(char)
                i += 1
                continue

            # --- STATE: BLOCK MATH ($$) ---
            if state == State.BLOCK_MATH:
                if text.startswith('$$', i):
                    state = State.NORMAL
                    emit('$$')
                    i += 2
                else:
                    emit(char)
                    i += 1
                continue

            # --- STATE: LATEX ENVIRONMENT (\begin{...}) ---
            if state == State.LATEX_ENV:
                # Check for nested begins (basic counter)
                if text.startswith(r'\begin{', i):
                    latex_env_depth += 1

                # Check for end
                if text.startswith(r'\end{', i):
                    if latex_env_depth > 0:
                        latex_env_depth -= 1
                    else:
                        # Found the closing tag
                        # We need to find the closing brace '}' to exit state fully
                        # But simpler: just stay in state until we pass the full \end{...} tag
                        # Let's just emit and continue, we assume valid latex.
                        pass

                    # Determine if we are fully out.
                    # Heuristic: We exit state after the closing brace of this \end command.
                    # This is complex to parse perfectly without lookahead.
                    # Simplified: We treat everything inside \begin...\end as safe.
                    # We only exit if we match the closing logic.

                    # Robust approach: Just look for the closing brace '}' of the \end command
                    end_idx = text.find('}', i)
                    if end_idx != -1:
                         # emit everything up to the brace
                         chunk = text[i:end_idx+1]
                         emit(chunk)
                         i = end_idx + 1
                         if latex_env_depth == 0:
                             state = State.NORMAL
                         continue

                emit(char)
                i += 1
                continue

            # --- STATE: INLINE MATH ($) ---
            if state == State.INLINE_MATH:
                if char == '$':
                    # Only treat as a closing delimiter if the $ is not escaped (i.e., not preceded
                    # by an odd number of backslashes). This avoids prematurely terminating on "\$"
                    # inside math.
                    bk = i - 1
                    bs_count = 0
                    while bk >= 0 and text[bk] == '\\':
                        bs_count += 1
                        bk -= 1
                    if bs_count % 2 == 0:
                        state = State.NORMAL
                emit(char)
                i += 1
                continue

            # --- STATE: NORMAL TEXT (Processing) ---
            if state == State.NORMAL:

                # 1. Handle Escapes (Backslashes)
                if char == '\\':
                    bs_count = 0
                    j = i
                    while j < n and text[j] == '\\':
                        bs_count += 1
                        j += 1

                    # Normalize "\ $" -> "\$" and "\ %" -> "\%"
                    # We need odd number of backslashes + space + symbol
                    next_char = text[j] if j < n else ''
                    next_next_char = text[j+1] if j+1 < n else ''

                    if (bs_count % 2 == 1 and next_char == ' ' and next_next_char in ('$', '%')):
                        # It is an escaped space followed by symbol.
                        # Fix it.
                        emit('\\' * (bs_count - 1)) # Emit even slashes
                        emit('\\' + next_next_char) # Emit escaped symbol
                        if next_next_char == '$': self.stats['dollars_normalized'] += 1
                        else: self.stats['percents_normalized'] += 1
                        changes += 1
                        i = j + 2
                        continue

                    # Preserve already-escaped symbols (e.g. "\$" or "\%") to keep the transform idempotent.
                    # If the number of preceding backslashes is odd, the next character is escaped.
                    if (bs_count % 2 == 1 and next_char in ('$', '%')):
                        emit(text[i:j+1])
                        i = j + 1
                        continue

                    # Just emit the backslashes
                    emit(text[i:j])
                    i = j
                    continue

                # 2. Check for Obsidian Comments (%%)
                if text.startswith('%%', i):
                    state = State.OBSIDIAN_COMMENT
                    emit('%%')
                    i += 2
                    continue

                # 3. Check for Templater/Liquid (<% or {%) - Treat as Code
                if text.startswith('<%', i) or text.startswith('{%', i):
                    emit(text[i:i+2])
                    i += 2
                    # Small optimization: Skip until %> or %} if we wanted,
                    # but just staying in NORMAL and relying on the % heuristic (below) is safer
                    # provided we don't escape the % inside the tag.
                    # Actually, the % logic below blindly escapes %.
                    # We MUST skip past these tags.

                    # Simple skip: Find closing tag
                    closer = '%>' if text[i-2:i] == '<%' else '%}'
                    end_tag = text.find(closer, i)
                    if end_tag != -1:
                        # Emit everything inside
                        emit(text[i:end_tag+2])
                        i = end_tag + 2
                    continue

                # 4. Check for LaTeX Environment Start
                if text.startswith(r'\begin{', i):
                    state = State.LATEX_ENV
                    emit(r'\begin{')
                    i += 7
                    latex_env_depth = 0
                    continue

                # 5. Check for Fenced Code
                if text.startswith('```', i):
                    state = State.FENCED_CODE
                    emit('```')
                    i += 3
                    continue

                # 6. Check for Inline Code
                if char == '`':
                    state = State.INLINE_CODE
                    emit('`')
                    i += 1
                    continue

                # 7. Check for Block Math
                if text.startswith('$$', i):
                    state = State.BLOCK_MATH
                    emit('$$')
                    i += 2
                    continue

                # 8. Check for Dollar Sign ($)
                if char == '$':
                    # Heuristic: Is this Math or Currency?

                    # A. Look ahead for closing $ on same line
                    line_end = text.find('\n', i)
                    if line_end == -1: line_end = n

                    next_dollar_idx = -1
                    k = i + 1
                    while k < line_end:
                        if text[k] == '$':
                            # Verify not escaped
                            bk = k - 1
                            bs_count = 0
                            while bk >= i and text[bk] == '\\':
                                bs_count += 1
                                bk -= 1
                            if bs_count % 2 == 0:
                                next_dollar_idx = k
                                break
                        k += 1

                    # B. Analyze content if pair found
                    is_math = False
                    if next_dollar_idx != -1:
                        content = text[i+1:next_dollar_idx]
                        if is_likely_math_content(content):
                            is_math = True

                    if is_math:
                        state = State.INLINE_MATH
                        emit('$')
                        i += 1
                        continue

                    # C. Not Math - Check Currency Patterns
                    if is_currency_lookahead(text[i+1:]) or is_currency_lookbehind(text, i):
                        emit(r'\$')
                        self.stats['dollars_escaped'] += 1
                        changes += 1
                        i += 1
                        continue

                    # D. Ambiguous / Neither
                    # Conservative: Do not escape.
                    emit('$')
                    i += 1
                    continue

                # 9. Check for Percent Sign (%)
                if char == '%':
                    if not self.escape_percent:
                        emit('%')
                        i += 1
                        continue

                    # Avoid corrupting percent-encoded sequences in URLs (e.g. %20).
                    if i + 2 < n and re.match(r'^[0-9A-Fa-f]{2}$', text[i+1:i+3]):
                        emit('%')
                        i += 1
                        continue

                    emit(r'\%')
                    self.stats['percents_escaped'] += 1
                    changes += 1
                    i += 1
                    continue

                # Default
                emit(char)
                i += 1

        return "".join(output), changes

def main():
    parser = argparse.ArgumentParser(description="Robust Obsidian Currency Escaper")
    parser.add_argument("vault_path", help="Path to the Obsidian vault root")
    parser.add_argument("--apply", action="store_true", help="Apply changes (default is dry-run)")
    parser.add_argument(
        "--escape-percent",
        action="store_true",
        help="Also escape bare percent signs outside code/math (off by default to avoid breaking URLs like %%20)",
    )
    args = parser.parse_args()

    if not os.path.exists(args.vault_path):
        print(f"Error: Path {args.vault_path} does not exist.")
        sys.exit(1)

    print(f"Scanning vault: {args.vault_path}")
    if not args.apply:
        print("!!! DRY RUN MODE: No files will be modified. Use --apply to execute. !!!")

    processor = VaultProcessor(dry_run=not args.apply, escape_percent=args.escape_percent)

    for root, dirs, files in os.walk(args.vault_path):
        # Skip internal folders
        if '.git' in dirs: dirs.remove('.git')
        if '.obsidian' in dirs: dirs.remove('.obsidian')
        if '.trash' in dirs: dirs.remove('.trash')

        for file in files:
            if file.endswith(".md"):
                processor.process_file(os.path.join(root, file))

    print("-" * 40)
    print("Execution Summary")
    print(f"Files Processed:      {processor.stats['files_processed']}")
    print(f"Dollars Normalized:   {processor.stats['dollars_normalized']} (fixed '\\ $')")
    print(f"Dollars Escaped:      {processor.stats['dollars_escaped']}")
    print(f"Percents Normalized:  {processor.stats['percents_normalized']} (fixed '\\ %')")
    print(f"Percents Escaped:     {processor.stats['percents_escaped']}")
    print("-" * 40)
    if not args.apply:
        print("Run with --apply to save changes.")

if __name__ == "__main__":
    main()

#!/usr/bin/env python3
# %%%{CotEditorXInput=Selection}%%%
# %%%{CotEditorXOutput=ReplaceSelection}%%%

import sys
import re

def is_interruption(line):
    """
    Returns True if the line looks like metadata, valid caption,
    image link, or source citation.
    """
    l = line.strip()
    # Check for empty lines (treat as interruption to be skipped over)
    if not l:
        return True

    # Check for Markdown images or HTML image tags
    if l.startswith('![') or l.startswith('<img'):
        return True

    # Check for Caption/Source keywords
    # Matches: "Figure 22.1", "Note:", "Source:", "Table 1"
    keywords = r'^(Figure|Table|Source|Sources|Note|Graph|Chart)\b'
    if re.search(keywords, l, re.IGNORECASE):
        return True

    return False

def main():
    text = sys.stdin.read()
    lines = text.split('\n')

    processed_lines = []
    interruption_buffer = []

    # Buffer for the "previous line" that wants to be joined
    pending_fragment = None

    for line in lines:
        stripped = line.strip()

        # 1. Check if we have a pending fragment waiting for a lowercase continuation
        if pending_fragment is not None:
            # Check if this line is an interruption (Figure, Image, Empty)
            if is_interruption(line):
                interruption_buffer.append(line)
                continue

            # Check if this line is the continuation (starts with lowercase)
            # We strictly enforce the "start with lowercase" rule
            if stripped and stripped[0].islower():
                # JOIN!
                # Collapse the fragment and this line
                joined_line = pending_fragment + " " + stripped
                processed_lines.append(joined_line)

                # Dump the interruption buffer *after* the joined sentence
                # (Or you could dump it before, depending on preference.
                # Usually better to push figures to the end of the paragraph).
                if interruption_buffer:
                    processed_lines.extend(interruption_buffer)

                # Reset
                pending_fragment = None
                interruption_buffer = []
                continue

            else:
                # ABORT JOIN
                # The line wasn't an interruption, but it didn't look like a continuation
                # (maybe it started with Uppercase).
                # Flush everything as is.
                processed_lines.append(pending_fragment)
                if interruption_buffer:
                    processed_lines.extend(interruption_buffer)

                # We do NOT add the current line yet, we treat it as a fresh start below
                pending_fragment = None
                interruption_buffer = []
                # Fall through to normal processing for 'line'

        # 2. Normal Processing (No pending fragment)
        # Check if this line SHOULD trigger a join (ends with no terminal punctuation)
        # Regex: Ends with non-terminal char.
        # Note: We check the original 'line' for trailing spaces, but use 'stripped' for content.

        # Condition: Line has content, and does NOT end in [.?!] or [.?!]["'”’]
        if stripped and not re.search(r'[.?!]["”’]?$', stripped):
            pending_fragment = stripped
            # We do not append to processed_lines yet; we wait for the next loop
            continue

        # Default: Just print the line
        processed_lines.append(line)

    # Flush any remaining buffers at EOF
    if pending_fragment:
        processed_lines.append(pending_fragment)
    if interruption_buffer:
        processed_lines.extend(interruption_buffer)

    # Reconstruct text
    sys.stdout.write('\n'.join(processed_lines))

if __name__ == "__main__":
    main()

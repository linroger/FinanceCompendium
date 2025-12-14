---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: style-guide-v3
---

# style-guide-v3

A. Obsidian Markdown Formatting Guide v3

Canonical rules for formatting, parsing, and repairing Markdown notes in your Obsidian vault, updated so tables can remain Markdown/HTML.

I. Document Hierarchy

	1.	Headings

	-	# — Document title (exactly one per file; Title Case).

	-	## — Major sections.

	-	### — Subsections.

	-	#### — Sub-subsections.

	-	Always exactly one space after hashes: ### Heading.

	2.	Lists

	-	Bulleted lists: -.

	-	Ordered lists: 1..

	-	Indent nesting by two spaces per level.

	-	Each bullet/number starts on its own line.

	3.	Spacing

	-	Collapse runs of ≥ 2 blank lines into one.

	-	Keep exactly one blank line:

	-	Between YAML and body.

	-	Before any Markdown heading.

	-	Before/after code fences.

	-	Before/after block math ($$…$$).

	-	Before/after image embeds.

	-	Remove:

	-	Trailing whitespace on all lines.

	-	Empty lines immediately above lines starting with - (bullets).

	-	Empty lines between consecutive bullet lines.

⸻

II. Text Formatting & Q&A

	1.	Question–Answer format

	-	Use numbered questions; answers indented one level:

1. Question: What is the effect of inflation on bond yields?
   - Inflation erodes real returns, leading to higher nominal yields.

	2. Paragraph continuity
	- If a sentence is split across lines incorrectly:
	- First fragment does not end with . ! ? : ; or a closing quote of those.
	- Or ends with a comma , or hyphen - (explicit continuation).
	- Second fragment begins with a lowercase letter.
	- Possibly one or more blank lines in between.
	- Action:
	- Remove the line break(s) and intervening blank lines.
	- Join with a single space.
	3. Inline emphasis
	- Use **bold** and *italics* only where needed.
	- If a heading text is just "Problem …" or "Example …" (any level), downgrade it to:

**Problem N — Title**

(no #; plain paragraph with bold).

⸻

III. Math & Equations

	1.	Inline math

	-	Use $…$ for inline expressions:

The nominal yield is $i_t = r_t + E_t[\pi_{t+1}]$.

	2.	Block math
	•	Use $$ on a line by itself:

$$
E_t[x_{t+1}] = \mu_x + \rho_x (x_t - \mu_x) + \epsilon_{t+1}
$$

	3.	Variable formatting (time indices etc.)
	•	Transform plain text occurrences (outside $...$ and code) into LaTeX:
	•	xt+1 → $x_{t+1}$
	•	yt-1 → $y_{t-1}$
	•	Et[xt+1] → $E_t[x_{t+1}]$
	•	Rt,t+1 → $R_{t,t+1}$
	•	xt_hat → $x_t^{\hat{}}$
	•	Do not auto-convert a standalone lower-case i.
	4.	Fixing spaced operators inside math
	•	Inside $...$ or $$...$$, normalize:
	•	\operatorname {V a r} → \operatorname{Var}
	•	\operatorname {C o v} → \operatorname{Cov}
	•	Remove spaces between digits: 1 0 0 → 100, . 0 0 0 1 → .0001.
	•	Do not attempt more aggressive reconstruction that might change meaning.
	5.	Stray superscripts
	•	Pattern X $^2$ → $X^2$:
	•	Join letter/number before $^2$ into a single inline math token.
	•	A bare $^2$ with no preceding symbol should be flagged for manual review (or left as-is).

⸻

IV. Tables (New Policy)

	1.	General rule

	-	Do not convert tables to LaTeX by default.

	-	Preserve tables as:

	-	GitHub-style Markdown tables (| separated), or

	-	HTML <table>…</table> blocks.

	-	Only fix:

	-	Obvious syntax errors (unbalanced pipes, malformed header separators).

	-	Trivial whitespace issues (extra spaces at line ends).

	2.	Legacy LaTeX tables

	-	If a table is already in LaTeX inside a fenced block:

```latex
\begin{tabular}{...}
...
\end{tabular}




	•	Leave it as-is; do not convert away from LaTeX.

	3.	No forced conversion
	•	Never auto-translate:
	•	Markdown ↔ LaTeX
	•	HTML ↔ LaTeX
	•	Tables are formatting-preserving; only repair obvious breakage.

⸻

V. Images
	1.	Image syntax
	•	Accept:
	•	![[file.png]]
	•	![](file.png)
	•	![500](file.png) (for width).
	•	External links:

![](https://example.com/img.jpg)


	•	Do not modify URLs, filenames, or Obsidian embeds.

	2.	Placement
	•	Place the image immediately after the paragraph or section it illustrates.
	•	When merging documents:
	•	Use filename/fuzzy matching to attach images to the closest related text.
	•	Insert at the nearest logical point (same paragraph or immediate subsection).

⸻

VI. YAML Frontmatter & Metadata
	1.	Presence and structure
	•	Frontmatter appears at top:

---
title: My Title
tags:
  - finance
  - macro
aliases:
  - Alternative Title
parent_folder:
  - Folder Name
subfolder:
key_concepts:
  - Concept A
  - Concept B
cssclasses: academia
---


	•	Keys are lower-case: title, tags, aliases, parent_folder, subfolder, key_concepts, cssclasses.

	2.	Title
	•	title must be Title Case and match the logical document title.
	3.	tags / key_concepts
	•	tags: short, general, reusable:
	•	e.g. option_pricing, term_structure, macro, derivatives.
	•	key_concepts: slightly more descriptive but still reusable phrases:
	•	e.g. American vs European options, no-arbitrage pricing, term premia decomposition.
	•	Avoid hyper-specific tags (e.g. Chapter-7-Figure-4).
	4.	parent_folder / subfolder
	•	parent_folder: list of folder names that contain the note (e.g. course, book).
	•	subfolder: list of subfolders if the note itself acts as a parent for others.
	•	cssclasses is always academia.

⸻

VII. Special Outline Structures (Do Not Normalize)
	1.	Hierarchical chapter outlines
	•	Some notes intentionally use:
	•	Level 1: Arabic numerals (1.).
	•	Level 2: lowercase letters (a.).
	•	Level 3: lowercase Roman numerals (i.).
	•	Example:

1. Monetary policy influences the economy through several channels.
    a. The traditional channels of monetary policy…
        i. Interest rates influence consumption and investment.


	•	These are not converted to Markdown bullet lists.
	•	Preserve indentation and numbering exactly as-is.

	2.	Decimal headings / sections
	•	Lines like:

3. Dynamic Programming
3.1 Bellman Equation
3.1.1 Finite-Horizon Problems
3.1.1.1 Numerical Implementation


	•	Rule:
	•	Convert decimal section labels to headings starting at level 2:
	•	3 ... → ## 3. ...
	•	3.1 ... → ### 3.1 ...
	•	3.1.1 ... → #### 3.1.1 ...
	•	3.1.1.1 ... → ##### 3.1.1.1 ...
	•	Only when they are not already Markdown headings and clearly act as section titles.

⸻

VIII. Bullets & List Cleanup
	1.	Canonical bullet symbol
	•	All bullets must be - at the start of the line:

- Item
  - Subitem


	2.	Normalize malformed bullets
	•	Replace any bullet-like prefix at line start with - :
	•	LaTeX bullets: $\circ$, $\bullet$, $^{\circ}$.
	•	Raw tokens: \circ, \bullet.
	•	Unicode symbols: ■, ●, °, ◦, •.
	•	[*], [?] used as ad-hoc bullets.
	•	Only treat them as bullets when they appear at line start (ignoring whitespace) followed by space or tab.
	•	Do not replace \circ or \bullet inside legitimate math expressions.
	3.	Compact bullet lists
	•	Remove:
	•	Any blank line between two bullet items.
	•	Any blank line immediately above a bullet item.
	•	Valid pattern:

- First
- Second
  - Nested



⸻

IX. Repairs & Normalization (Agent Behavior)
	1.	Mid-sentence line breaks
	•	Join when:
	•	End fragment does not end with sentence-terminal punctuation.
	•	Or ends with comma/hyphen.
	•	Start fragment begins with lowercase.
	•	No code fence or math environment boundary between them.
	•	Preserve:
	•	Code blocks (```).
	•	Math fences ( ```math, $$).
	•	Headings.
	•	Lists (bullets, numbered).
	2.	Headers
	•	Exactly one # title per file.
	•	Chapter-level headings (from TOC / chapter splits) become:
	•	At file level: # <Chapter Title> in the split file.
	•	All other headings are relative:
	•	If top heading in file is level L, shift all headings so top becomes # and deeper keep the same relative depth.
	3.	Header demotion for Problems / Examples
	•	Any heading whose text (after trimming) begins with:
	•	Problem, Example (case-insensitive),
	•	Should be converted to plain text with bold:

**Problem 3 — Bond Pricing**


	4.	Broken LaTeX
	•	Fix:
	•	Simple matched \begin{aligned}, \end{aligned}.
	•	Obvious unmatched $ (but do not guess if ambiguous).
	•	If unsafe, leave equation unchanged.
	5.	Tables
	•	Do not alter structure other than:
	•	Fix clearly broken Markdown table delimiters.
	•	Fix obvious <table> tag mismatches.

⸻

That’s the updated style guide with your new table policy and the new bullet / line-break / outline constraints.

⸻

B. Script 1 — Split Large Markdown Files by TOC into Chapters

This script:
	•	Walks a directory tree.
	•	Finds .md files whose size ≥ a threshold (default: 500 KB).
	•	For each such file:
	•	Creates a new folder named after the original file (without extension).
	•	Parses the TOC between a # TOC or ## TOC heading and the next heading / rule.
	•	Cleans TOC entries (removes trailing page numbers and dotted leaders).
	•	Locates corresponding chapter headings in the body (outside the TOC).
	•	Splits the document at those headings into chapter files.
	•	Normalizes heading levels in each chapter file:
	•	Top heading → # (chapter title).
	•	All other headings shifted relatively.
	•	Headings starting with “Problem” or “Example” → bold text.

It does not modify tables; it treats table lines as normal text and preserves them.

#!/usr/bin/env python3
"""
split_markdown_toc_and_chapters.py

Walk a directory, find large Markdown files, and split them into chapter-level
files using the Table of Contents (TOC) inside the file as a guide.

- Looks for a '# TOC' or '## TOC' heading.
- Extracts TOC entries between that heading and the next top-level heading or
  a horizontal rule ('---').
- Cleans TOC entries (removes trailing page numbers / dotted leaders).
- Finds matching headings in the body and splits the document at those locations.
- Normalizes headings in each chapter file:
    * Top heading becomes '#'.
    * Other headings shifted by the same amount.
    * Headings whose text begins with 'Problem' or 'Example' are converted to
      bold paragraphs (no '#').
- Creates a new folder named after the original file (stem) and writes
  chapter files inside it.

Usage:
    python split_markdown_toc_and_chapters.py /path/to/root --min-kb 500
"""

import argparse
import os
import re
from pathlib import Path
from typing import List, Tuple, Optional


TOC_HEADING_PATTERN = re.compile(r'^\s*#{1,3}\s+TOC\b', re.IGNORECASE)
HEADING_PATTERN = re.compile(r'^(\s*#{1,6})\s+(.*\S)\s*$')


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def find_toc_region(lines: List[str]) -> Optional[Tuple[int, int]]:
    """
    Return (start_index, end_index) for the TOC region in lines, or None.
    The region starts at the TOC heading line and ends at the line before
    the next top-level heading or a horizontal rule '---' after a blank line.
    """
    toc_start = None
    for i, line in enumerate(lines):
        if TOC_HEADING_PATTERN.match(line):
            toc_start = i
            break
    if toc_start is None:
        return None

    # Find end: next heading of same or higher level, or a horizontal rule.
    for j in range(toc_start + 1, len(lines)):
        stripped = lines[j].strip()
        if stripped.startswith("#"):
            return toc_start, j
        if stripped == "---":
            return toc_start, j
    return toc_start, len(lines)


def normalize_title_for_match(s: str) -> str:
    """
    Normalize a TOC or heading title for approximate matching:
    - strip Markdown link markup
    - strip leading bullets / numbers
    - strip trailing page numbers / dotted leaders
    - collapse whitespace
    - lowercase
    """
    # Remove [text](anchor)
    s = re.sub(r'\[([^\]]+)\]\([^)]+\)', r'\1', s)
    # Remove brackets if any left
    s = s.replace("[", "").replace("]", "")
    # Remove leading bullets / numbering
    s = re.sub(r'^[\-\*\d\.\s]+', '', s)
    # Remove dotted leaders and trailing page numbers, e.g. "Chapter 1 ..... 23"
    s = re.sub(r'\.{2,}\s*\d+\s*$', '', s)
    s = re.sub(r'\s+\d+\s*$', '', s)
    # Collapse whitespace
    s = re.sub(r'\s+', ' ', s)
    return s.strip().lower()


def extract_toc_entries(lines: List[str], toc_region: Tuple[int, int]) -> List[str]:
    start, end = toc_region
    entries: List[str] = []
    for line in lines[start + 1 : end]:
        stripped = line.strip()
        if not stripped:
            continue
        # Skip horizontal rules or obvious non-entries
        if stripped == "---":
            continue
        # Expect typical TOC bullets such as "- [Title](#anchor)"
        # or "1. Title .... 3"
        # Take the human-readable part.
        text = stripped
        # Remove leading bullet markers
        text = re.sub(r'^[-\*\+]\s+', '', text)
        # Remove Markdown link, keep label
        m = re.search(r'\[([^\]]+)\]\([^)]+\)', text)
        if m:
            text = m.group(1)
        # Remove trailing dotted leaders/page numbers
        text = normalize_title_for_match(text)
        if text and text not in entries:
            entries.append(text)
    return entries


def find_chapter_heading_indices(
    lines: List[str],
    entries: List[str],
    toc_region: Optional[Tuple[int, int]],
) -> List[int]:
    """
    For each TOC entry, find the first matching heading line index outside
    the TOC region. Matching is done on normalized titles.
    """
    chapter_indices: List[int] = []
    toc_start, toc_end = toc_region if toc_region else (-1, -1)

    # Precompute normalized headings
    normalized_headings: List[Optional[str]] = []
    for line in lines:
        m = HEADING_PATTERN.match(line)
        if not m:
            normalized_headings.append(None)
        else:
            heading_text = m.group(2)
            normalized_headings.append(normalize_title_for_match(heading_text))

    for entry in entries:
        for idx, norm in enumerate(normalized_headings):
            if idx >= toc_start and idx <= toc_end:
                continue
            if norm is None:
                continue
            # Require that heading text startswith or equals the entry
            if norm == entry or norm.startswith(entry):
                if idx not in chapter_indices:
                    chapter_indices.append(idx)
                break

    chapter_indices.sort()
    return chapter_indices


def insert_break_markers(lines: List[str], chapter_indices: List[int]) -> List[str]:
    """
    Insert a '----break----' marker line before each chapter heading except
    the first one.
    """
    if not chapter_indices or len(chapter_indices) < 2:
        return lines[:]

    new_lines: List[str] = []
    chapter_set = set(chapter_indices[1:])  # indices to break before

    for i, line in enumerate(lines):
        if i in chapter_set:
            new_lines.append("----break----\n")
        new_lines.append(line)
    return new_lines


def split_on_break_markers(lines: List[str]) -> List[List[str]]:
    """
    Split the document into chunks by '----break----' marker lines.
    """
    chunks: List[List[str]] = []
    current: List[str] = []
    for line in lines:
        if line.strip() == "----break----":
            if current:
                chunks.append(current)
                current = []
        else:
            current.append(line)
    if current:
        chunks.append(current)
    return chunks


def normalize_headings_in_chunk(chunk_lines: List[str]) -> List[str]:
    """
    Normalize heading levels in a single chapter chunk:
    - Determine smallest heading level in chunk (e.g. '##' → level 2).
    - Shift all headings so that smallest level becomes '#'.
    - Demote 'Problem ...' / 'Example ...' headings to bold paragraphs.
    """
    # Determine minimal heading level in this chunk
    min_level: Optional[int] = None
    for line in chunk_lines:
        m = HEADING_PATTERN.match(line)
        if m:
            hashes = m.group(1)
            level = hashes.count("#")
            if min_level is None or level < min_level:
                min_level = level

    if min_level is None:
        # No headings; return unchanged
        return chunk_lines

    shift = min_level - 1  # amount to subtract from each level

    new_lines: List[str] = []
    for line in chunk_lines:
        m = HEADING_PATTERN.match(line)
        if not m:
            new_lines.append(line)
            continue

        hashes, text = m.group(1), m.group(2).strip()
        level = hashes.count("#")
        # Check for Problem / Example headings
        lowered = text.lower()
        if lowered.startswith("problem ") or lowered.startswith("problem:") or lowered == "problem":
            new_lines.append(f"**{text}**\n")
            continue
        if lowered.startswith("example ") or lowered.startswith("example:") or lowered == "example":
            new_lines.append(f"**{text}**\n")
            continue

        new_level = max(1, level - shift)
        new_hashes = "#" * new_level
        new_lines.append(f"{new_hashes} {text}\n")

    return new_lines


def derive_chapter_title(chunk_lines: List[str]) -> Optional[str]:
    """
    Return the first heading text in the chunk as the chapter title.
    """
    for line in chunk_lines:
        m = HEADING_PATTERN.match(line)
        if m:
            return m.group(2).strip()
    return None


def ensure_single_h1(chunk_lines: List[str], chapter_title: Optional[str]) -> List[str]:
    """
    Ensure that the chunk starts with '# <chapter_title>' as the file title.
    If an H1 already exists and matches, keep it. If H1 exists but doesn't match,
    leave as-is. If no H1 but we have a title, insert one at top.
    """
    lines = chunk_lines[:]
    has_h1 = any(line.startswith("# ") for line in lines)

    if has_h1:
        return lines

    if chapter_title:
        return [f"# {chapter_title}\n", "\n"] + lines
    return lines


def split_file(path: Path, min_kb: int) -> None:
    """
    Process a single markdown file; if its size is >= min_kb, attempt to
    split it into chapter files using TOC.
    """
    size_kb = path.stat().st_size / 1024.0
    if size_kb < min_kb:
        return

    text = read_text(path)
    lines = text.splitlines(keepends=True)

    toc_region = find_toc_region(lines)
    if toc_region is None:
        # No TOC; nothing to do
        return

    entries = extract_toc_entries(lines, toc_region)
    if not entries:
        return

    chapter_indices = find_chapter_heading_indices(lines, entries, toc_region)
    if len(chapter_indices) < 2:
        # Only one chapter found; nothing to split
        return

    lines_with_breaks = insert_break_markers(lines, chapter_indices)
    chunks = split_on_break_markers(lines_with_breaks)

    if len(chunks) <= 1:
        return

    out_dir = path.parent / path.stem
    out_dir.mkdir(exist_ok=True, parents=True)

    for idx, chunk in enumerate(chunks, start=1):
        normalized_chunk = normalize_headings_in_chunk(chunk)
        title = derive_chapter_title(normalized_chunk)
        final_chunk = ensure_single_h1(normalized_chunk, title)

        # Build file name
        safe_title = (title or f"Chapter {idx}").strip()
        safe_title = re.sub(r'[^\w\- ]+', '', safe_title)
        safe_title = re.sub(r'\s+', ' ', safe_title).strip()
        safe_title = safe_title.replace(" ", "_")
        chapter_filename = f"{path.stem}_Chapter_{idx:02d}_{safe_title}.md"
        out_path = out_dir / chapter_filename
        write_text(out_path, "".join(final_chunk))
        print(f"  -> Wrote {out_path}")


def walk_and_split(root: Path, min_kb: int) -> None:
    for p in root.rglob("*.md"):
        print(f"Processing {p} ...")
        try:
            split_file(p, min_kb=min_kb)
        except Exception as exc:
            print(f"  ! Error processing {p}: {exc}")


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Split large Markdown files into chapter files using TOC."
    )
    parser.add_argument(
        "root",
        type=str,
        help="Root directory or single markdown file.",
    )
    parser.add_argument(
        "--min-kb",
        type=int,
        default=500,
        help="Minimum file size in KB to consider for splitting (default: 500 KB).",
    )
    args = parser.parse_args()

    root_path = Path(args.root).expanduser().resolve()
    if root_path.is_file():
        split_file(root_path, min_kb=args.min_kb)
    else:
        walk_and_split(root_path, min_kb=args.min_kb)


if __name__ == "__main__":
    main()


⸻

C. Script 2 — Fix Mid-Sentence Line Breaks, Bullets, and Bullet Symbols

This script targets:
	•	Mid-sentence line or paragraph breaks, including the case with intervening blank lines.
	•	Bullet normalization:
	•	Replace $\circ$, $\bullet$, \circ, \bullet, ■, ●, °, ◦, •, [?], etc. at line start with -.
	•	Remove empty lines above/between bullet lines.
	•	Decimal heading lines like 3.1.1 Finite-Horizon Problems → heading levels ##/###/####/....
	•	Leaves code fences, math fences, and tables untouched structurally.

#!/usr/bin/env python3
"""
fix_mid_sentence_and_lists.py

Repairs common formatting issues in Markdown files:

1. Mid-sentence line or paragraph splits:
   - Joins lines when the first fragment does NOT end with sentence-terminal
     punctuation (. ! ? : ;) and the next fragment starts with a lowercase
     letter (possibly after quotes), with optional blank lines in between.
   - Skips code fences, math fences, headings, and list items.

2. Bullet normalization:
   - At line start, replace malformed bullets like:
        $\circ$, $\bullet$, \circ, \bullet, ■, ●, °, ◦, •, [?]
     with a canonical '- ' bullet.
   - Remove blank lines immediately above bullets and between bullets.

3. Decimal headings:
   - Lines that look like '3.1.1 Title' are turned into headings:
        3              -> '## 3 ...'
        3.1            -> '### 3.1 ...'
        3.1.1          -> '#### 3.1.1 ...'
        3.1.1.1        -> '##### 3.1.1.1 ...'
     Only when the line is not already a Markdown heading and appears to be
     a section title.

Tables are preserved without structural changes.

Usage:
    python fix_mid_sentence_and_lists.py /path/to/root
"""

import argparse
import os
import re
from pathlib import Path
from typing import List


CODE_FENCE_PATTERN = re.compile(r'^\s*```')
MATH_FENCE_PATTERN = re.compile(r'^\s*```math\b')
HEADING_PATTERN = re.compile(r'^\s*#{1,6}\s+')
BULLET_START_PATTERN = re.compile(r'^\s*-\s+')
DECIMAL_HEADING_PATTERN = re.compile(r'^\s*(\d+(?:\.\d+)*)\s+(.+\S)\s*$')

# Bullet-like tokens we normalize at line start
MALFORMED_BULLET_PREFIX = re.compile(
    r"""^\s*(
        \$\\circ\$|
        \$\\bullet\$|
        \\circ|
        \\bullet|
        \$\^\{\\circ\}\$|
        [\u25cf\u25e6\u2022\u25aa°]|
        \[\?\]
    )\s+""",
    re.VERBOSE,
)


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def write_text(path: Path, text: str) -> None:
    path.write_text(text, encoding="utf-8")


def is_code_or_math_fence(line: str) -> bool:
    return CODE_FENCE_PATTERN.match(line) is not None


def normalize_malformed_bullets(lines: List[str]) -> List[str]:
    """
    Normalize bullet-like markers at line start to '- ' and remove
    unnecessary blank lines around bullet lists.
    """
    # First pass: replace malformed bullet prefixes at start of line
    new_lines: List[str] = []
    for line in lines:
        if MALFORMED_BULLET_PREFIX.match(line):
            cleaned = MALFORMED_BULLET_PREFIX.sub("- ", line)
            new_lines.append(cleaned)
        else:
            new_lines.append(line)

    # Second pass: compact bullet lists by removing blank lines
    compacted: List[str] = []
    i = 0
    while i < len(new_lines):
        line = new_lines[i]
        stripped = line.strip()

        if stripped == "":
            # Look ahead/backward for bullets
            prev_line = compacted[-1] if compacted else ""
            next_line = new_lines[i + 1] if i + 1 < len(new_lines) else ""
            prev_is_bullet = bool(re.match(r'^\s*-\s+', prev_line or ""))
            next_is_bullet = bool(re.match(r'^\s*-\s+', next_line or ""))
            if prev_is_bullet or next_is_bullet:
                # Skip this blank line
                i += 1
                continue

        compacted.append(line)
        i += 1

    # Also remove blank lines directly above bullet items
    final_lines: List[str] = []
    for line in compacted:
        if re.match(r'^\s*-\s+', line) and final_lines and final_lines[-1].strip() == "":
            # Drop the blank line before a bullet
            final_lines.pop()
        final_lines.append(line)

    return final_lines


def fix_decimal_headings(lines: List[str]) -> List[str]:
    """
    Convert '3.1.1 Title' type lines into markdown headings, starting at level 2.
    """
    new_lines: List[str] = []
    inside_fence = False

    for line in lines:
        stripped = line.rstrip("\n")
        if is_code_or_math_fence(stripped):
            inside_fence = not inside_fence
            new_lines.append(line)
            continue

        if inside_fence or HEADING_PATTERN.match(stripped):
            new_lines.append(line)
            continue

        m = DECIMAL_HEADING_PATTERN.match(stripped)
        if m:
            number = m.group(1)
            title = m.group(2).strip()
            depth = number.count(".") + 1  # 3 -> 1, 3.1 -> 2, etc.
            # Start decimal headings at level 2
            level = min(6, 1 + depth)  # 3 -> ##, 3.1 -> ###, etc.
            hashes = "#" * level
            new_lines.append(f"{hashes} {number} {title}\n")
        else:
            new_lines.append(line)

    return new_lines


def should_join(prev: str, nxt: str) -> bool:
    """
    Decide if prev and nxt (already stripped of trailing newlines) should be
    joined as a single sentence.

    Conditions:
    - prev is not a heading, bullet, or code/maths fence.
    - nxt is not a heading, bullet, code fence, or starts with '#', '-', or digit+dot list.
    - prev does NOT end with sentence-terminal punctuation.
    - nxt starts with a lowercase letter or (quote + lowercase).
    """
    prev_stripped = prev.rstrip()
    nxt_stripped = nxt.lstrip()

    if not prev_stripped or not nxt_stripped:
        return False

    # Do not join if either line is a heading or bullet
    if HEADING_PATTERN.match(prev_stripped) or HEADING_PATTERN.match(nxt_stripped):
        return False
    if BULLET_START_PATTERN.match(prev_stripped) or BULLET_START_PATTERN.match(nxt_stripped):
        return False
    if is_code_or_math_fence(prev_stripped) or is_code_or_math_fence(nxt_stripped):
        return False

    # Do not join table header rows or rows that start with '|'
    if prev_stripped.startswith("|") or nxt_stripped.startswith("|"):
        return False

    # End-of-sentence punctuation
    if re.search(r'[\.!?;:]["”\']?$', prev_stripped):
        return False

    # If prev ends with comma or hyphen, allow join (explicit continuation)
    # Otherwise, require that it also not be obviously mid-word
    # (we already know it doesn't end with .!?;:)
    # Check start of next: lowercase letter or quote + lowercase
    if re.match(r'^[a-z]', nxt_stripped):
        return True
    if re.match(r'^[\'"“][a-z]', nxt_stripped):
        return True

    return False


def fix_mid_sentence_breaks(lines: List[str]) -> List[str]:
    """
    Join mid-sentence lines across inadvertent line/paragraph breaks.
    Handles a single block of empty lines between fragments.
    """
    # First, break text into "blocks" separated by code fences; we don't
    # touch inside fenced code/math blocks.
    result_lines: List[str] = []
    inside_fence = False
    buffer_block: List[str] = []

    def flush_block(block: List[str]):
        if not block:
            return
        joined = _join_block_mid_sentences(block)
        result_lines.extend(joined)

    for line in lines:
        stripped = line.rstrip("\n")
        if is_code_or_math_fence(stripped):
            # Flush current block before toggling fence
            flush_block(buffer_block)
            buffer_block = []
            inside_fence = not inside_fence
            result_lines.append(line)
            continue

        if inside_fence:
            result_lines.append(line)
        else:
            buffer_block.append(line)

    flush_block(buffer_block)
    return result_lines


def _join_block_mid_sentences(block: List[str]) -> List[str]:
    """
    Join mid-sentence lines within a block (no code fences inside).
    """
    out: List[str] = []
    i = 0
    while i < len(block):
        line = block[i]
        stripped = line.rstrip("\n")

        # If this line is empty, we may still want to join across it, so we
        # handle joining at the non-empty lines and then collapse empties
        if stripped == "":
            out.append(line)
            i += 1
            continue

        # Look ahead past blank lines to next non-empty line
        j = i + 1
        blank_lines: List[str] = []
        while j < len(block) and block[j].strip() == "":
            blank_lines.append(block[j])
            j += 1

        if j < len(block):
            next_line = block[j]
            next_stripped = next_line.rstrip("\n")
            if should_join(stripped, next_stripped):
                # Join prev + space + next, skipping intermediate blanks
                joined_line = stripped + " " + next_stripped.lstrip() + "\n"
                out.append(joined_line)
                i = j + 1
                continue

        out.append(line)
        i += 1

    # After joining, we may have redundant blank lines; compact double blanks
    compacted: List[str] = []
    prev_blank = False
    for line in out:
        if line.strip() == "":
            if prev_blank:
                continue
            prev_blank = True
        else:
            prev_blank = False
        compacted.append(line)

    return compacted


def process_file(path: Path) -> None:
    text = read_text(path)
    lines = text.splitlines(keepends=True)

    # 1) Normalize malformed bullets and compact bullet lists
    lines = normalize_malformed_bullets(lines)

    # 2) Fix decimal headings
    lines = fix_decimal_headings(lines)

    # 3) Fix mid-sentence line breaks
    lines = fix_mid_sentence_breaks(lines)

    new_text = "".join(lines)
    if new_text != text:
        write_text(path, new_text)
        print(f"Fixed: {path}")
    else:
        print(f"No changes: {path}")


def walk_and_fix(root: Path) -> None:
    if root.is_file() and root.suffix.lower() == ".md":
        process_file(root)
        return

    for p in root.rglob("*.md"):
        process_file(p)


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Fix mid-sentence line breaks, bullets, and decimal headings in Markdown."
    )
    parser.add_argument(
        "root",
        type=str,
        help="Root directory or single markdown file.",
    )
    args = parser.parse_args()

    root_path = Path(args.root).expanduser().resolve()
    walk_and_fix(root_path)


if __name__ == "__main__":
    main()


⸻

D. Script 3 — Automation for OCR, Headers, and Equations

This script deals with specific "Finance Library" artifacts, such as:
1. OCR Split Words: identifiers like `di erent` → `different`, `signi cant` → `significant`.
2. Header Spacing: Ensures `# Title` format and empty lines before headers.
3. Equation Spacing: Standardizes `51167` block spacing.
4. Artifact Removal: Removes `[?]` and other scanning noise.

How an AI Agent should fix them:
- **Scan**: Look for common broken words using regex (e.g. `\b\w+ \w+\b` patterns that form valid words).
- **Context**: Verify the replacement makes sense (though `di erent` is almost always `different`).
- **Formatting**: Enforce LaTeX equation spacing `51167 ... 51167` for readability.

Script Implementation (Finance-Markdown-Fixer.py):

```python
#!/usr/bin/env python3
# %%%{CotEditorXInput=AllText}%%%
# %%%{CotEditorXOutput=ReplaceAllText}%%%

import sys
import re

def fix_ocr_artifacts(text):
    """Fix common OCR splitting errors in finance documents."""
    replacements = {
        r'\bdi erent\b': 'different',
        r'\bsigni cant\b': 'significant',
        r'\bspeci c\b': 'specific',
        r'\bin formation\b': 'information',
        r'\bde cit\b': 'deficit',
        r'\bco ef cient\b': 'coefficient',
        r'\bfi nance\b': 'finance',
        r'\be ect\b': 'effect',
        r'\bo ce\b': 'office',
        r'\breg ula tion\b': 'regulation',
        r'\btrans ac tion\b': 'transaction',
        r'\bval u a tion\b': 'valuation',
    }
    for pattern, repl in replacements.items():
        text = re.sub(pattern, repl, text, flags=re.IGNORECASE)
    
    # Remove common artifact [?]
    text = text.replace('[?]', '')
    return text

def fix_equations(text):
    """Ensure proper spacing around LaTeX equation blocks."""
    # Pattern: content51167 -> content 51167
    text = re.sub(r'(?<![\s\n])$$', ' 51167', text)
    # Pattern: 51167content -> 51167 content
    text = re.sub(r'$$(?![\s\n])', '51167 ', text)
    return text

def fix_headers(text):
    """Ensure Markdown headers have correct spacing."""
    # 1. Ensure space after #
    text = re.sub(r'^(#+)([^ #\n])', r'\1 \2', text, flags=re.MULTILINE)
    # 2. Ensure empty line before header (except first line)
    text = re.sub(r'([^\n])\n(#+\s)', r'\1\n\n\2', text)
    return text

def fix_spacing(text):
    """Fix general spacing issues."""
    lines = [line.rstrip() for line in text.splitlines()]
    return '\n'.join(lines) + '\n'

def main():
    input_text = sys.stdin.read()
    text = input_text
    text = fix_ocr_artifacts(text)
    text = fix_headers(text)
    text = fix_equations(text)
    text = fix_spacing(text)
    sys.stdout.write(text)

if __name__ == '__main__':
    main()
```

## Field Report: Common OCR Artifacts in Finance Library

The "Analysis of Fixed Income Securities" and "BUSN Cases" directories contain specific OCR artifacts in mathematical expressions:

1. **Spaced Decimals**: `0 . 0 8`, `0 . 0 5`, `1 . 0 8`.
	* *Fix*: Regex to collapse `\d \. \d` into `\d.\d`.
2. **Spaced LaTeX Text**: `\text {m i l l i o n}`, `\text {y i e l d}`.
	* *Fix*: Specific regex to collapse spaces inside `\text{…}` if the content looks like spaced individual letters.
3. **Spaced Currency**: `$ 2 . 5`.

These are addressed in the `Finance-Markdown-Fixer.py` script.

```python
    # Spaced decimal support: 0 . 0 8 -> 0.08
    text = re.sub(r'(?<=\d)\s+\.\s+(?=\d)', '.', text)
    text = re.sub(r'(?<=\d\.)\s+(?=\d)', '', text)
    
    # Spaced text in \text{...}
    def fix_spaced_text(match):
        content = match.group(2)
        if re.search(r'\b\w\s\w\b', content):
            return match.group(1) + content.replace(' ', '') + match.group(3)
        return match.group(0)
    text = re.sub(r'(\text\s*\{)([^}]+)(\})', fix_spaced_text, text)
```

#!/usr/bin/env python3
# %%%{CotEditorXInput=Selection}%%%
# %%%{CotEditorXOutput=ReplaceSelection}%%%

import sys
import re

def main():
    # Read the selected text
    source_text = sys.stdin.read()

    # Regex Explanation:
    # (?m)          : Multiline mode.
    # ^(\s*-\s.*)   : Capture Group 1. Finds a line starting with a hyphen (and optional indent).
    # (\n\s*)+      : Finds the newlines (gap) following that item.
    # ^(?=\s*-\s)   : Lookahead. Checks if the VERY NEXT line is ALSO a bullet.

    # Logic: If line A is a bullet, and line B is a bullet, remove the gap between them.
    # This naturally leaves the gap above the FIRST bullet alone, because the line
    # above it is not a bullet.

    pattern = r'(?m)^(\s*-\s.*)(\n\s*)+^(?=\s*-\s)'

    # Replace the Item + Big Gap with Item + Single Newline
    cleaned_text = re.sub(pattern, r'\1\n', source_text)

    # Output back to CotEditor
    sys.stdout.write(cleaned_text)

if __name__ == "__main__":
    main()
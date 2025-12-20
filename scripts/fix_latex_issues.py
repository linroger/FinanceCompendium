#!/usr/bin/env python3
"""
fix_latex_issues.py

Applies systematic fixes to common LaTeX OCR issues in Markdown files.
Focuses on:
1. Removing spaces around subscript/superscript operators (_ and ^)
2. Removing spaces inside \text{}, \mathrm{}, \operatorname{} commands
3. Collapsing spaced numbers (OCR artifacts)
4. Removing spaces after LaTeX command names
5. Fixing common operator formatting

This script processes equations in isolation and applies fixes while maintaining
context awareness.
"""

import re
import sys
from pathlib import Path
from typing import Tuple, List

def remove_spaced_subscript_superscript(content: str) -> str:
    """Remove spaces around _ and ^ when followed by braces."""
    # Pattern: word/char followed by space(s), then _ or ^, then space(s), then {
    content = re.sub(r'(\w|\})\s+_\s*\{', r'\1_{', content)
    content = re.sub(r'(\w|\})\s+\^\s*\{', r'\1^{', content)
    # Pattern: _ or ^ followed by spaces then {
    content = re.sub(r'_\s+\{', r'_{', content)
    content = re.sub(r'\^\s+\{', r'^{', content)
    return content

def remove_space_in_text_commands(content: str) -> str:
    """
    Remove spaces inside \text{}, \mathrm{}, \operatorname{} commands.
    Collapses spaced letters into words.
    """
    def fix_text_command(match):
        cmd = match.group(1)  # text, mathrm, operatorname, etc.
        inner = match.group(2)  # content inside braces

        # Collapse spaced letters: "m i n i m i z e" -> "minimize"
        fixed = re.sub(r'(\w)\s+(\w)', r'\1\2', inner)
        # Also handle cases like "s u b j e c t t o" -> "subject to"
        # but preserve actual multi-word spaces in \text{}

        return f'\\{cmd}{{{fixed}}}'

    # Pattern: \command {content}
    content = re.sub(r'\\(text|mathrm|operatorname)\s*\{\s*([^}]*)\s*\}', fix_text_command, content)

    return content

def collapse_spaced_numbers(content: str) -> str:
    """Collapse sequences of space-separated digits into numbers."""
    # Pattern: digit space digit (not part of a larger multi-digit number)
    # e.g., "1 0" -> "10", "0 . 0 5" -> "0.05"

    # First handle decimal numbers: "0 . 0 5" -> "0.05"
    content = re.sub(r'(\d)\s+\.\s+(\d)', r'\1.\2', content)

    # Then handle spaced digits: "1 0" -> "10", "2 4" -> "24"
    content = re.sub(r'(\d)\s+(\d)', r'\1\2', content)

    return content

def remove_space_before_brace(content: str) -> str:
    """Remove spaces between LaTeX commands and opening braces."""
    commands = ['frac', 'sqrt', 'text', 'mathrm', 'operatorname', 'underset',
                'overset', 'underbrace', 'overbrace', 'sum', 'prod', 'int']

    for cmd in commands:
        content = re.sub(f'\\\\{cmd}\\s+\\{{', f'\\\\{cmd}{{', content)

    return content

def fix_operators_with_spaces(content: str) -> str:
    """Fix operators that might have spacing issues."""
    # Fix \lim, \max, \min, etc. with spaces after
    operators = ['lim', 'max', 'min', 'inf', 'sup', 'exp', 'log', 'ln',
                 'sin', 'cos', 'tan', 'arcsin', 'arccos', 'arctan']

    for op in operators:
        content = re.sub(f'\\\\{op}\\s+', f'\\\\{op} ', content)

    return content

def fix_file(filepath: Path) -> Tuple[str, int]:
    """
    Apply all fixes to a file and return the fixed content and count of replacements.
    """
    content = filepath.read_text(encoding='utf-8')
    original_content = content

    # Apply fixes in sequence
    content = remove_spaced_subscript_superscript(content)
    content = remove_space_in_text_commands(content)
    content = collapse_spaced_numbers(content)
    content = remove_space_before_brace(content)
    content = fix_operators_with_spaces(content)

    # Count changes (rough approximation)
    changes = sum(1 for a, b in zip(original_content.split('\n'), content.split('\n')) if a != b)

    return content, changes

def main():
    if len(sys.argv) < 2:
        print("Usage: python fix_latex_issues.py <filepath>")
        sys.exit(1)

    filepath = Path(sys.argv[1]).expanduser().resolve()

    if not filepath.exists():
        print(f"Error: File not found: {filepath}", file=sys.stderr)
        sys.exit(1)

    print(f"Processing: {filepath}")
    fixed_content, changes = fix_file(filepath)

    # Write back
    filepath.write_text(fixed_content, encoding='utf-8')

    print(f"✓ Fixed {changes} lines with issues")
    print(f"✓ File saved")

if __name__ == '__main__':
    main()

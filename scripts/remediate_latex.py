#!/usr/bin/env python3
"""
LaTeX Remediation Script
Fixes common LaTeX spacing issues in markdown equations.
"""

import re
import sys
from pathlib import Path
from datetime import datetime

def remediate_latex(content):
    """
    Apply systematic fixes to LaTeX equations.

    Issues fixed:
    1. Spaced subscripts: \theta_ {j} -> \theta_j
    2. Spaced superscripts: x ^ {i} -> x^{i}
    3. Spaced command braces: \frac {1}{2} -> \frac{1}{2}
    4. Spaced text letters: \mathrm {a b c} -> \mathrm{abc}
    """

    # Track statistics
    stats = {
        'subscript_fixes': 0,
        'superscript_fixes': 0,
        'command_fixes': 0,
        'text_letter_fixes': 0,
        'operator_fixes': 0,
    }

    # Fix 1: Spaced subscripts (most common)
    # Pattern: underscore followed by spaces and opening brace
    # \theta_ {j} -> \theta_j
    pattern = r'([a-zA-Z_}\)])\s*_\s+\{'
    matches = len(re.findall(pattern, content))
    content = re.sub(pattern, r'\1_{', content)
    stats['subscript_fixes'] = matches

    # Fix 2: Spaced superscripts
    # Pattern: caret followed by spaces and opening brace
    # x ^ {i} -> x^{i}
    pattern = r'([a-zA-Z_}\)])\s*\^\s+\{'
    matches = len(re.findall(pattern, content))
    content = re.sub(pattern, r'\1^{', content)
    stats['superscript_fixes'] = matches

    # Fix 3: Spaced command braces (common for \frac, \sqrt, \vec, etc.)
    # Pattern: backslash-command followed by spaces and opening brace
    # \frac {1}{2} -> \frac{1}{2}
    commands = [
        r'frac', r'sqrt', r'vec', r'text', r'mathrm', r'operatorname',
        r'log', r'exp', r'sin', r'cos', r'tan', r'left', r'right',
        r'nabla', r'partial', r'tfrac', r'dfrac'
    ]
    for cmd in commands:
        pattern = rf'(\\{cmd})\s+\{{'
        matches = len(re.findall(pattern, content))
        content = re.sub(pattern, r'\1{', content)
        stats['command_fixes'] += matches

    # Fix 4: Spaced text inside \text, \mathrm, \operatorname
    # Pattern: \text {f o r} -> \text{for}
    # This is trickier - we need to handle the content inside braces

    def fix_spaced_text(match):
        prefix = match.group(1)  # \text, \mathrm, etc.
        content_inside = match.group(2)  # content inside braces
        # Remove spaces between letters/digits
        fixed = re.sub(r'(\S)\s+([a-zA-Z0-9])', r'\1\2', content_inside)
        return f'{prefix}{{{fixed}}}'

    # Match \text{...}, \mathrm{...}, \operatorname{...}
    pattern = r'(\\(?:text|mathrm|operatorname))\s*\{([^}]*)\}'
    matches = len(re.findall(pattern, content))
    content = re.sub(pattern, fix_spaced_text, content)
    stats['text_letter_fixes'] = matches

    # Fix 5: Spaced operators like \sum, \prod, \log
    # \sum_ {i=1} -> \sum_{i=1}
    pattern = r'(\\(?:sum|prod|log|exp|min|max|sup|inf))\s*_\s+\{'
    matches = len(re.findall(pattern, content))
    content = re.sub(pattern, r'\1_{', content)
    stats['operator_fixes'] += matches

    # Also fix spaced caret for operators
    # \sum ^ {n} -> \sum^{n}
    pattern = r'(\\(?:sum|prod))\s*\^\s+\{'
    matches = len(re.findall(pattern, content))
    content = re.sub(pattern, r'\1^{', content)
    stats['operator_fixes'] += matches

    # Fix 6: Standalone spaced superscripts (any preceding character)
    # Pattern: ^ followed by space(s) and brace
    # \right\| ^ {2} -> \right\|^{2}
    pattern = r'(\S)\s+\^\s+\{'
    matches = len(re.findall(pattern, content))
    if matches > 0:
        content = re.sub(r'(\S)(\s+)\^\s+\{', r'\1^{', content)
        stats['superscript_fixes'] += matches

    # Fix 7: Standalone spaced subscripts
    # Pattern: _ followed by space(s) and brace
    # \right\| _ {2} -> \right\|_{2}
    pattern = r'(\S)\s+_\s+\{'
    matches = len(re.findall(pattern, content))
    if matches > 0:
        content = re.sub(r'(\S)(\s+)_\s+\{', r'\1_{', content)
        stats['subscript_fixes'] += matches

    return content, stats

def main():
    if len(sys.argv) < 2:
        print("Usage: python remediate_latex.py <input_file> [output_file]")
        sys.exit(1)

    input_file = Path(sys.argv[1])
    output_file = Path(sys.argv[2]) if len(sys.argv) > 2 else input_file

    if not input_file.exists():
        print(f"Error: File not found: {input_file}")
        sys.exit(1)

    # Read file
    print(f"Reading: {input_file}")
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()

    # Remediate
    print("Remediating LaTeX...")
    fixed_content, stats = remediate_latex(content)

    # Write output
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(fixed_content)

    print(f"\nRemediations Applied:")
    print(f"  Subscript fixes:      {stats['subscript_fixes']}")
    print(f"  Superscript fixes:    {stats['superscript_fixes']}")
    print(f"  Command brace fixes:  {stats['command_fixes']}")
    print(f"  Text/operator fixes:  {stats['text_letter_fixes']}")
    print(f"  Operator fixes:       {stats['operator_fixes']}")
    print(f"  TOTAL:                {sum(stats.values())}")
    print(f"\nOutput: {output_file}")

if __name__ == '__main__':
    main()

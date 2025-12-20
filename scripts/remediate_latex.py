#!/usr/bin/env python3
"""
LaTeX Remediation Script (Stable Version)
Fixes common LaTeX spacing issues in markdown equations.
"""

import re
import sys
from pathlib import Path

def remediate_latex(content):
    stats = {
        'subscript_fixes': 0,
        'superscript_fixes': 0,
        'command_fixes': 0,
        'text_letter_fixes': 0,
        'operator_fixes': 0,
    }

    # Fix 1: Spaced subscripts
    pattern = r'([a-zA-Z_}\])])\s*_\s+\{'
    matches = len(re.findall(pattern, content))
    content = re.sub(pattern, r'\1_{', content)
    stats['subscript_fixes'] = matches

    # Fix 2: Spaced superscripts
    pattern = r'([a-zA-Z_}\])])\s*\^\s+\{'
    matches = len(re.findall(pattern, content))
    content = re.sub(pattern, r'\1^{', content)
    stats['superscript_fixes'] = matches

    # Fix 3: Spaced command braces
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
    def fix_spaced_text(match):
        prefix = match.group(1)
        content_inside = match.group(2)
        fixed = re.sub(r'(\S)\s+([a-zA-Z0-9])', r'\1\2', content_inside)
        return f'{prefix}{{{fixed}}}'

    pattern = r'(\\(?:text|mathrm|operatorname))\s*\{([^}]*)\}'
    matches = len(re.findall(pattern, content))
    content = re.sub(pattern, fix_spaced_text, content)
    stats['text_letter_fixes'] = matches

    # Fix 5: Spaced operators
    pattern = r'(\\(?:sum|prod|log|exp|min|max|sup|inf))\s*_\s+\{'
    matches = len(re.findall(pattern, content))
    content = re.sub(pattern, r'\1_{', content)
    stats['operator_fixes'] += matches

    # Fix 6: Spaced caret for operators
    pattern = r'(\\(?:sum|prod))\s*\^\s+\{'
    matches = len(re.findall(pattern, content))
    content = re.sub(pattern, r'\1^{', content)
    stats['operator_fixes'] += matches

    return content, stats

def main():
    if len(sys.argv) < 2:
        sys.exit(1)

    input_file = Path(sys.argv[1])
    output_file = Path(sys.argv[2]) if len(sys.argv) > 2 else input_file

    if not input_file.exists():
        sys.exit(1)

    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()

    fixed_content, stats = remediate_latex(content)

    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(fixed_content)

    print(f"Remediations: {sum(stats.values())}")

if __name__ == '__main__':
    main()

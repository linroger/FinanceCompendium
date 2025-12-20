#!/usr/bin/env python3
"""
extract_latex_equations.py

Extracts all block LaTeX equations from a Markdown file for review.
Each equation is displayed with line numbers for easy reference.

Usage:
    python scripts/extract_latex_equations.py <path_to_markdown_file>

Output:
    For each block equation found, prints:
    - Line range where the equation appears
    - The full equation content
    - Potential issues detected

This script is designed for subagents to quickly assess all LaTeX
equations in a document before making targeted fixes.
"""

import argparse
import re
import sys
from pathlib import Path
from typing import List, Tuple, Dict

# Common LaTeX issues to flag
ISSUE_PATTERNS = [
    # Spacing issues
    (r'\w\s+_\s*\{', 'Space before/after underscore in subscript'),
    (r'\w\s+\^\s*\{', 'Space before/after caret in superscript'),
    (r'_\s+\{', 'Space between underscore and brace'),
    (r'\^\s+\{', 'Space between caret and brace'),

    # Spaced text inside \text{} or \mathrm{}
    (r'\\text\s*\{\s*\w(\s+\w)+\s*\}', 'Spaced letters inside \\text{}'),
    (r'\\mathrm\s*\{\s*\w(\s+\w)+\s*\}', 'Spaced letters inside \\mathrm{}'),
    (r'\\operatorname\s*\{\s*\w(\s+\w)+\s*\}', 'Spaced letters inside \\operatorname{}'),

    # Spaced numbers
    (r'(?<!\d)\d\s+\d(?!\d)', 'Spaced digits (OCR artifact)'),
    (r'\d\s+\.\s+\d', 'Spaced decimal point'),

    # Potential bullet/symbol issues
    (r'^\\circ(?!\w)', 'Bare \\circ at line start (possible bullet)'),
    (r'^\\bullet(?!\w)', 'Bare \\bullet at line start (possible bullet)'),

    # Misformatted commands
    (r'\\text\s+\{', 'Space between \\text and brace'),
    (r'\\mathrm\s+\{', 'Space between \\mathrm and brace'),
    (r'\\frac\s+\{', 'Space between \\frac and brace'),
    (r'\\sqrt\s+\{', 'Space between \\sqrt and brace'),

    # Missing \text{} for words
    (r'(?<![\\a-zA-Z])(where|if|for|and|or|such that|given)(?![a-zA-Z])',
     'Unescaped word (should use \\text{})'),

    # Percentage issues
    (r'(?<!\\)%', 'Unescaped percent sign'),

    # Common operator issues
    (r'(?<![\\a-zA-Z])(log|ln|exp|sin|cos|tan|max|min|lim|inf|sup)(?!\{)',
     'Operator without backslash'),
]


def extract_block_equations(content: str) -> List[Tuple[int, int, str]]:
    """
    Extract all block equations ($$...$$) from the content.

    Returns list of (start_line, end_line, equation_content) tuples.
    """
    equations = []
    lines = content.split('\n')

    in_equation = False
    equation_start = 0
    equation_lines = []

    for i, line in enumerate(lines, start=1):
        stripped = line.strip()

        if stripped == '$$' and not in_equation:
            # Start of equation block
            in_equation = True
            equation_start = i
            equation_lines = []
        elif stripped == '$$' and in_equation:
            # End of equation block
            in_equation = False
            equation_content = '\n'.join(equation_lines)
            equations.append((equation_start, i, equation_content))
        elif in_equation:
            equation_lines.append(line)
        elif stripped.startswith('$$') and stripped.endswith('$$') and len(stripped) > 4:
            # Single-line block equation: $$ content $$
            equation_content = stripped[2:-2].strip()
            equations.append((i, i, equation_content))

    return equations


def detect_issues(equation: str) -> List[str]:
    """
    Detect potential issues in an equation.
    Returns list of issue descriptions.
    """
    issues = []
    for pattern, description in ISSUE_PATTERNS:
        if re.search(pattern, equation, re.IGNORECASE):
            issues.append(description)
    return issues


def format_equation_display(eq_num: int, start_line: int, end_line: int,
                            content: str, issues: List[str]) -> str:
    """Format an equation for display."""
    output = []
    output.append(f"\n{'='*60}")
    output.append(f"EQUATION #{eq_num} | Lines {start_line}-{end_line}")
    output.append('='*60)
    output.append(content)

    if issues:
        output.append(f"\n⚠️  POTENTIAL ISSUES DETECTED:")
        for issue in issues:
            output.append(f"   • {issue}")
    else:
        output.append(f"\n✅ No obvious issues detected")

    return '\n'.join(output)


def analyze_file(filepath: Path) -> Dict:
    """
    Analyze a file and extract all equations with potential issues.

    Returns a dict with:
    - 'filepath': path to file
    - 'total_equations': count of block equations
    - 'equations_with_issues': count with detected issues
    - 'equations': list of equation details
    """
    content = filepath.read_text(encoding='utf-8')
    equations = extract_block_equations(content)

    result = {
        'filepath': str(filepath),
        'total_equations': len(equations),
        'equations_with_issues': 0,
        'equations': []
    }

    for i, (start, end, eq_content) in enumerate(equations, start=1):
        issues = detect_issues(eq_content)
        if issues:
            result['equations_with_issues'] += 1

        result['equations'].append({
            'number': i,
            'start_line': start,
            'end_line': end,
            'content': eq_content,
            'issues': issues
        })

    return result


def main():
    parser = argparse.ArgumentParser(
        description='Extract and analyze LaTeX equations from Markdown files'
    )
    parser.add_argument('filepath', help='Path to Markdown file')
    parser.add_argument('--json', action='store_true',
                        help='Output in JSON format')
    parser.add_argument('--issues-only', action='store_true',
                        help='Only show equations with detected issues')
    args = parser.parse_args()

    filepath = Path(args.filepath).expanduser().resolve()

    if not filepath.exists():
        print(f"Error: File not found: {filepath}", file=sys.stderr)
        sys.exit(1)

    if not filepath.suffix.lower() == '.md':
        print(f"Warning: File does not appear to be Markdown: {filepath}",
              file=sys.stderr)

    result = analyze_file(filepath)

    if args.json:
        import json
        print(json.dumps(result, indent=2))
    else:
        print(f"\n📄 FILE: {result['filepath']}")
        print(f"📊 SUMMARY: {result['total_equations']} equations, "
              f"{result['equations_with_issues']} with potential issues")

        for eq in result['equations']:
            if args.issues_only and not eq['issues']:
                continue

            display = format_equation_display(
                eq['number'],
                eq['start_line'],
                eq['end_line'],
                eq['content'],
                eq['issues']
            )
            print(display)

        print(f"\n{'='*60}")
        print("END OF ANALYSIS")
        print('='*60)


if __name__ == '__main__':
    main()

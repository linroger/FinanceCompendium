#!/usr/bin/env python3
"""
extract_latex_equations.py

Extracts and analyzes block LaTeX equations ($$...$$) from a Markdown file.
Flags potential formatting issues based on the Style Guide.

Usage:
    python3 extract_latex_equations.py <file_path> [--issues-only]
"""

import sys
import re
import argparse
from pathlib import Path

def analyze_equation(equation_content, line_num):
    """
    Analyze a single equation block for common issues.
    Returns a list of issue descriptions.
    """
    issues = []
    
    # 1. Spaced text inside commands (e.g., \text{m a r k e t})
    if re.search(r'\\(text|mathrm|operatorname)\s*(\{\s*\\w){2,}\}', equation_content):
        issues.append("Spaced text inside command (OCR artifact)")
        
    # 2. Spaced numbers (e.g., 0 . 0 5)
    if re.search(r'\d\s+\.\s+\d', equation_content) or re.search(r'\s\d\s\d\s', equation_content):
        # Refine regex to avoid false positives in matrices, but catch "1 6 - 2 P"
        if re.search(r'\d\s+\d', equation_content): 
             issues.append("Spaced numbers (OCR artifact)")

    # 3. Spaced subscripts/superscripts (e.g., _ { t })
    if re.search(r'(_|\^)\s+\{', equation_content):
        issues.append("Space between _/^ and brace")

    # 4. Unescaped %
    # Check if % is used without \ (and not part of a comment, though comments inside $$ are tricky)
    # Simple check: % not preceded by \
    if re.search(r'(?<!\\)%', equation_content):
        issues.append("Unescaped % sign")

    # 5. Missing \text{} for words (Heuristic: sequence of >3 letters not in a command)
    # This is hard to perfect, but we can look for " where " or " if "
    # text_words = ["where", "if", "and", "or", "given", "subject to"]
    # for word in text_words:
    #     if re.search(r'(?<!\\text{)\b' + word + r'\b', equation_content):
    #         issues.append(f"Potential missing \\text{{}} for '{word}'")

    return issues

def process_file(file_path, issues_only=False):
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            lines = f.readlines()
    except Exception as e:
        print(f"Error reading file: {e}")
        return

    equations = []
    in_equation = False
    current_eq_lines = []
    start_line = 0

    for i, line in enumerate(lines):
        stripped = line.strip()
        
        # Check for $$ delimiters
        # Note: This handles standard "$$" on its own line or "$$ ... $$" inline block (less common but possible)
        # The prompt implies standard block equations "$$" on separate lines.
        
        if stripped == '$$':
            if in_equation:
                # End of equation
                end_line = i + 1
                content = "".join(current_eq_lines)
                issues = analyze_equation(content, start_line)
                
                equations.append({
                    'start': start_line,
                    'end': end_line,
                    'content': content,
                    'issues': issues
                })
                
                in_equation = False
                current_eq_lines = []
            else:
                # Start of equation
                in_equation = True
                start_line = i + 1
        elif in_equation:
            current_eq_lines.append(line)
        # Handle inline block "$$ eq $$" ? Assuming standard styleguide "$$" on separate lines.

    # Reporting
    if not issues_only:
        print(f"File: {file_path}")
        print(f"Total Block Equations: {len(equations)}")
        print("-" * 40)

    issues_count = 0
    for eq in equations:
        if eq['issues']:
            issues_count += 1
            print(f"[Line {eq['start']}-{eq['end']}] Issues: {', '.join(eq['issues'])}")
            print(f"Content:\n{eq['content'].strip()}")
            print("-" * 20)
        elif not issues_only:
            print(f"[Line {eq['start']}-{eq['end']}] OK")
            # print(f"{eq['content'].strip()[:50]}...")

    if issues_only and issues_count == 0:
        pass # Print nothing if clean
    elif issues_only:
        print(f"Found {issues_count} equations with issues in {file_path}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("file_path", help="Path to markdown file")
    parser.add_argument("--issues-only", action="store_true", help="Only show equations with flagged issues")
    args = parser.parse_args()
    
    process_file(args.file_path, args.issues_only)
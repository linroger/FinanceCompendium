#!/usr/bin/env python3
"""
LaTeX Remediation Script
Fixes common LaTeX spacing issues in markdown equations.
"""

import re
import sys
from pathlib import Path
from datetime import datetime

def remediate_latex(content, file_path=""):
    """
    Apply systematic fixes to LaTeX equations.
    """

    stats = {
        'subscript_fixes': 0,
        'superscript_fixes': 0,
        'command_fixes': 0,
        'text_letter_fixes': 0,
        'operator_fixes': 0,
        'targeted_word_fixes': 0,
    }
    
    detailed_logs = []

    # Helper to log changes
    def record_change(category, original, fixed):
        detailed_logs.append({
            'file': str(file_path),
            'category': category,
            'original': original,
            'fixed': fixed,
            'timestamp': datetime.now().isoformat()
        })

    # Fix 1: Spaced subscripts
    pattern = r'([a-zA-Z_}\])])\s*_\s+\{'
    def sub_sub(match):
        stats['subscript_fixes'] += 1
        orig = match.group(0)
        fix = f"{match.group(1)}_{{"
        record_change('subscript', orig, fix)
        return fix
    content = re.sub(pattern, sub_sub, content)

    # Fix 2: Spaced superscripts
    pattern = r'([a-zA-Z_}\])])\s*\^\s+\{'
    def sub_sup(match):
        stats['superscript_fixes'] += 1
        orig = match.group(0)
        fix = f"{match.group(1)}^{{"
        record_change('superscript', orig, fix)
        return fix
    content = re.sub(pattern, sub_sup, content)

    # Fix 3: Spaced command braces
    commands = [
        r'frac', r'sqrt', r'vec', r'text', r'mathrm', r'operatorname',
        r'log', r'exp', r'sin', r'cos', r'tan', r'left', r'right',
        r'nabla', r'partial', r'tfrac', r'dfrac'
    ]
    for cmd in commands:
        pattern = rf'(\\{cmd})\s+\{{' 
        def sub_cmd(match):
            stats['command_fixes'] += 1
            orig = match.group(0)
            fix = f"{match.group(1)}{{"
            record_change('command_brace', orig, fix)
            return fix
        content = re.sub(pattern, sub_cmd, content)

    # Fix 4: Spaced text inside \text, \mathrm, \operatorname
    def fix_spaced_text(match):
        prefix = match.group(1)
        content_inside = match.group(2)
        fixed = re.sub(r'(\S)\s+([a-zA-Z0-9])', r'\1\2', content_inside)
        if fixed != content_inside:
            stats['text_letter_fixes'] += 1
            record_change('text_spacing', f"{prefix}{{{content_inside}}}", f"{prefix}{{{fixed}}}")
        return f'{prefix}{{{fixed}}}'

    pattern = r'(\\(?:text|mathrm|operatorname))\s*\{([^}]*)\}'
    content = re.sub(pattern, fix_spaced_text, content)

    # Fix 5: Spaced operators like \sum, \prod
    pattern = r'(\\(?:sum|prod|log|exp|min|max|sup|inf))\s*_\s+\{'
    def sub_op(match):
        stats['operator_fixes'] += 1
        orig = match.group(0)
        fix = f"{match.group(1)}_{{"
        record_change('operator_sub', orig, fix)
        return fix
    content = re.sub(pattern, sub_op, content)

    # Fix 6: Spaced caret for operators
    pattern = r'(\\(?:sum|prod))\s*\^\s+\{'
    def sub_op_sup(match):
        stats['operator_fixes'] += 1
        orig = match.group(0)
        fix = f"{match.group(1)}^{{"
        record_change('operator_sup', orig, fix)
        return fix
    content = re.sub(pattern, sub_op_sup, content)

    # Fix 7: Standalone spaced superscripts
    pattern = r'(\S)(\s+)\^\s+\{'
    def sub_stand_sup(match):
        stats['superscript_fixes'] += 1
        orig = match.group(0)
        fix = f"{match.group(1)}^{{"
        record_change('standalone_sup', orig, fix)
        return fix
    content = re.sub(pattern, sub_stand_sup, content)

    # Fix 8: Standalone spaced subscripts
    pattern = r'(\S)(\s+)_\s+\{'
    def sub_stand_sub(match):
        stats['subscript_fixes'] += 1
        orig = match.group(0)
        fix = f"{match.group(1)}_{{"
        record_change('standalone_sub', orig, fix)
        return fix
    content = re.sub(pattern, sub_stand_sub, content)

    # Fix 9: Targeted Word Fixes
    replacements = {
        r'\\text\{positivepart\}': r'\\text{positive part}',
        r'\\text\{negativepart\}': r'\\text{negative part}',
        r'\\text\{foranyset\}': r'\\text{for any set}',
        r'\\text\{samplemedian\}': r'\\text{sample median}',
        r'\\text\{forall\}': r'\\text{for all}',
        r'\\text\{foreach\}': r'\\text{for each}',
        r'\\text\{withprobability\}': r'\\text{with probability }',
        r'\\text\{typeIerror\}': r'\\text{type I error}',
        r'\\text\{typeIIerror\}': r'\\text{type II error}',
        r'\\text\{iscontinuous\}': r'\\text{is continuous}',
        r'\\text\{isdiscrete\}': r'\\text{is discrete}',
        r'\\text\{forallintegers\}': r'\\text{for all integers}',
        r'\\text\{if\}': r'\\text{if }', 
    }
    
    for pat, repl in replacements.items():
        found = re.findall(pat, content)
        if found:
            for f in found:
                stats['targeted_word_fixes'] += 1
                # Simplification: we know what it's changing to
                record_change('word_mashed', pat.replace('\\', '\'), repl.replace('\\', '\'))
            content = re.sub(pat, repl, content)

    return content, stats, detailed_logs

def main():
    if len(sys.argv) < 2:
        print("Usage: python remediate_latex.py <input_file> [output_file]")
        sys.exit(1)

    input_file = Path(sys.argv[1])
    output_file = Path(sys.argv[2]) if len(sys.argv) > 2 else input_file

    if not input_file.exists():
        print(f"Error: File not found: {input_file}")
        sys.exit(1)

    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()

    fixed_content, stats, detailed_logs = remediate_latex(content, input_file)

    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(fixed_content)

    # Write detailed logs to a separate file
    detailed_log_path = Path("logs/detailed_fix_log.jsonl")
    with open(detailed_log_path, 'a', encoding='utf-8') as f:
        import json
        for entry in detailed_logs:
            f.write(json.dumps(entry) + "\n")

    print(f"Remediations Applied to {input_file}:")
    for k, v in stats.items():
        if v > 0:
            print(f"  {k}: {v}")
    print(f"  TOTAL: {sum(stats.values())}")

if __name__ == '__main__':
    main()

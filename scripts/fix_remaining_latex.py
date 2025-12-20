#!/usr/bin/env python3
"""
fix_remaining_latex.py

Applies additional fixes to remaining LaTeX spacing issues, particularly:
1. Spaced text inside \text{} commands (e.g., "ot he rw is e" -> "otherwise")
2. Spaced text inside \operatorname{} commands
3. Edge cases with multi-word spacing
"""

import re
from pathlib import Path

def fix_remaining_spaced_text(content: str) -> str:
    """
    Fix spaced text patterns that the basic regex couldn't handle.
    Focuses on common words like 'otherwise', 'forward difference', etc.
    """

    # Dictionary of common spaced text patterns found in the file
    fixes = {
        # "otherwise" patterns
        r'\\text\{ot\s+he\s+rw\s+is\s+e\}': r'\\text{otherwise}',
        r'\\operatorname\{ot\s+he\s+rw\s+is\s+e\}': r'\\operatorname{otherwise}',
        r'ot\s+he\s+rw\s+is\s+e': 'otherwise',

        # "forward difference" patterns
        r'\\text\{fo\s+rw\s+ar\s+d\s+di\s+ff\s+er\s+en\s+ce\}': r'\\text{forward difference}',
        r'fo\s+rw\s+ar\s+d\s+di\s+ff\s+er\s+en\s+ce': 'forward difference',

        # "central difference" patterns
        r'\\text\{ce\s+nt\s+ra\s+l\s+di\s+ff\s+er\s+en\s+ce\}': r'\\text{central difference}',
        r'ce\s+nt\s+ra\s+l\s+di\s+ff\s+er\s+en\s+ce': 'central difference',

        # "backward difference" patterns
        r'\\text\{ba\s+ck\s+wa\s+rd\s+di\s+ff\s+er\s+en\s+ce\}': r'\\text{backward difference}',
        r'ba\s+ck\s+wa\s+rd\s+di\s+ff\s+er\s+en\s+ce': 'backward difference',

        # "barrier" in \text
        r'\\text\{ba\s+rr\s+ie\s+r\}': r'\\text{barrier}',

        # "huber" in \operatorname
        r'\\operatorname\{hu\s+be\s+r\}': r'\\operatorname{huber}',

        # Pattern for "no improvement was found in this iteration"
        r'no\s+im\s+pr\s+ov\s+em\s+en\s+tw\s+as\s+fo\s+un\s+di\s+nt\s+hi\s+si\s+te\s+ra\s+ti\s+on': 'no improvement was found in this iteration',

        # "min" for operatorname
        r'operatorname\s*\{\s*arg\s+min\s*\}': r'\\operatorname{arg\\,min}',

        # Generic pattern: collapse any single-letter spacing within text commands
    }

    for pattern, replacement in fixes.items():
        content = re.sub(pattern, replacement, content, flags=re.IGNORECASE)

    # Generic handler for remaining spaced letters
    # Match patterns like "f o r w a r d" within \text{} or \operatorname{}
    def fix_spaced_word(match):
        cmd = match.group(1)
        inner = match.group(2)
        # Collapse spaced letters
        fixed = re.sub(r'(\w)\s+(?=[a-z])', r'\1', inner)
        return f'\\{cmd}{{{fixed}}}'

    content = re.sub(r'\\(text|operatorname)\{([^}]*(?:\s+[a-z])+[^}]*)\}', fix_spaced_word, content)

    return content

def main():
    filepath = Path('/Users/rogerlin/Reserve/FinanceCompendium/I. Foundations/Machine Learning/Algorithms for Optimization.md')
    content = filepath.read_text(encoding='utf-8')

    print("Applying remaining LaTeX fixes...")
    content = fix_remaining_spaced_text(content)

    filepath.write_text(content, encoding='utf-8')
    print("Done!")

if __name__ == '__main__':
    main()

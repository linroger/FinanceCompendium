#!/usr/bin/env python3
"""
Fix corrupted equations in the enhanced dataset
"""

import pandas as pd
import re

def is_mathematical_expression(text):
    """Check if text looks like a mathematical expression vs descriptive text"""
    # Must contain at least one mathematical operator or symbol
    math_symbols = ['=', '+', '-', '*', '/', '^', '_', '{', '}', '∫', '∑', '∂', '∞']
    has_math = any(symbol in text for symbol in math_symbols)

    # Check for excessive \\times usage (sign of corruption)
    times_count = text.count(' \\times ')
    if times_count > 5:  # If more than 5 \\times, it's likely corrupted
        return False

    # Must not contain long words that were broken up
    # Look for patterns like "def \times a \times u \times l \times t" (corrupted "default")
    if ' \\times ' in text:
        parts = text.split(' \\times ')
        # Check if we have many single letters in sequence (corruption pattern)
        single_letters = [p.strip() for p in parts if len(p.strip()) == 1 and p.strip().isalpha()]
        if len(single_letters) > 3:  # More than 3 single letters with \\times likely corrupted
            return False

    return has_math

def fix_corrupted_equation(eq):
    """Remove excessive \\times from corrupted equations"""
    if not is_mathematical_expression(eq):
        return eq

    # Remove \\times between letters in words (like "def \times a \times u \times l \times t")
    # But preserve legitimate multiplication (like "P \times r \times t")

    # First, identify legitimate multiplication patterns
    # Keep \\times when it's between single variables (P, r, t, etc.) or numbers
    single_vars = set('PrtSmnijkxyzabcdghlouvwqfe')
    digits = set('0123456789')

    # Split by \\times and reassemble carefully
    parts = eq.split(' \\times ')
    result = []

    i = 0
    while i < len(parts):
        part = parts[i].strip()
        result.append(part)

        if i + 1 < len(parts):
            next_part = parts[i + 1].strip()

            # Check if this is legitimate multiplication
            should_keep_times = False

            # Single variables
            if (len(part) == 1 and part in single_vars and
                len(next_part) == 1 and next_part in single_vars):
                should_keep_times = True

            # Variable with number
            elif ((len(part) == 1 and part in single_vars and next_part.isdigit()) or
                  (part.isdigit() and len(next_part) == 1 and next_part in single_vars)):
                should_keep_times = True

            # Known abbreviations that should be multiplied
            elif part in ['P', 'r', 't', 'S', 'K', 'σ', 'μ'] and next_part in ['P', 'r', 't', 'S', 'K', 'σ', 'μ']:
                should_keep_times = True

            if should_keep_times:
                result.append(' \\times ')
            else:
                # Remove the \\times by not adding it
                pass

        i += 1

    return ''.join(result)

def main():
    # Read the master file
    df = pd.read_csv('/Users/rogerlin/Downloads/iflow-eq/financial_equations_master_enhanced.csv')

    # Fix corrupted equations
    fixed_equations = []
    for eq in df['equation_latex']:
        fixed = fix_corrupted_equation(eq)
        fixed_equations.append(fixed)

    df['equation_latex'] = fixed_equations

    # Save the fixed version
    df.to_csv('/Users/rogerlin/Downloads/iflow-eq/financial_equations_master_fixed.csv', index=False)

    print(f"Fixed {len(df)} equations")
    print("Saved to financial_equations_master_fixed.csv")

if __name__ == '__main__':
    main()
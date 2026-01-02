#!/usr/bin/env python3
"""
Comprehensive fix for the corrupted equations dataset
"""

import pandas as pd
import glob
import csv

def load_original_equations():
    """Load all original equations from the category files"""
    originals = {}

    for file_path in glob.glob('/Users/rogerlin/Downloads/iflow-eq/category*.csv'):
        if 'enhanced' not in file_path:
            with open(file_path, 'r', encoding='utf-8') as f:
                reader = csv.reader(f)
                next(reader)  # Skip header
                for row in reader:
                    if len(row) >= 3:
                        title = row[0]
                        equation = row[1]
                        originals[title] = equation

    return originals

def is_corrupted(equation):
    """Check if an equation appears to be corrupted"""
    # Look for excessive \\times usage
    if equation.count(' \\times ') > 3:
        return True

    # Look for broken words (single letters with \\times)
    if ' \\times ' in equation:
        parts = equation.split(' \\times ')
        single_letters = [p.strip() for p in parts if len(p.strip()) == 1 and p.strip().isalpha()]
        if len(single_letters) >= 3:  # 3 or more single letters likely corrupted
            return True

    return False

def fix_equation(title, corrupted_eq, original_eq):
    """Fix a corrupted equation by using the original if it's corrupted"""
    if is_corrupted(corrupted_eq):
        return original_eq
    return corrupted_eq

def main():
    # Load original equations
    originals = load_original_equations()
    print(f"Loaded {len(originals)} original equations")

    # Read the corrupted master file
    df = pd.read_csv('/Users/rogerlin/Downloads/iflow-eq/financial_equations_master_enhanced.csv')

    # Fix corrupted equations
    fixed_equations = []
    fixed_count = 0

    for idx, row in df.iterrows():
        title = row['title']
        equation = row['equation_latex']

        if title in originals:
            original = originals[title]
            fixed_eq = fix_equation(title, equation, original)
            if fixed_eq != equation:
                fixed_count += 1
        else:
            fixed_eq = equation

        fixed_equations.append(fixed_eq)

    df['equation_latex'] = fixed_equations

    # Save the comprehensively fixed version
    df.to_csv('/Users/rogerlin/Downloads/iflow-eq/financial_equations_master_final.csv', index=False)

    print(f"Fixed {fixed_count} corrupted equations")
    print(f"Total equations: {len(df)}")
    print("Saved to financial_equations_master_final.csv")

if __name__ == '__main__':
    main()
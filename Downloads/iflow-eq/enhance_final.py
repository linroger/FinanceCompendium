#!/usr/bin/env python3
"""
Financial Equations Enhancement Script - Final Version

Key insight: Process in correct order to avoid regex conflicts
1. Fix subscripts/superscripts
2. Add multiplication ONLY for single-letter patterns (not abbreviations)
3. Wrap known multi-char abbreviations in \text{}
"""

import pandas as pd
import re
import csv
from pathlib import Path


def fix_subscripts_superscripts(eq):
    """Convert _ and ^ notation to proper {subscript} format"""
    eq = re.sub(r'_([a-zA-Z]{2,})', r'_{\1}', eq)
    eq = re.sub(r'_([a-zA-Z])', r'_{\1}', eq)
    eq = re.sub(r'_(\d+)', r'_{\1}', eq)
    eq = re.sub(r'\^([a-zA-Z])', r'^{\1}', eq)
    eq = re.sub(r'\^(\d+)', r'^{\1}', eq)
    return eq


def add_multiplication(eq):
    """Add explicit \\times for multiplication - simple and safe approach"""
    # Only convert explicit * to \times
    eq = eq.replace('*', ' \\times ')

    # Handle cases like P(1+r) -> P \times (1+r) for single letters followed by (
    # But avoid function calls like exp(, log(, etc.
    function_names = {'exp', 'log', 'ln', 'sin', 'cos', 'tan', 'sqrt', 'abs', 'max', 'min'}

    def is_function_call(pos):
        """Check if position follows a function name"""
        if pos < 2:
            return False
        # Look for function name before (
        before = eq[:pos]
        paren_pos = before.rfind('(')
        if paren_pos < 0:
            return False
        func_start = paren_pos - 1
        while func_start >= 0 and eq[func_start].isalpha():
            func_start -= 1
        func_name = eq[func_start+1:paren_pos]
        return func_name.lower() in function_names

    # Find single letters followed by (
    result = []
    i = 0
    while i < len(eq):
        if i > 0 and eq[i] == '(' and eq[i-1].isalpha() and not is_function_call(i):
            # Check if it's a single letter (not part of a word)
            if i == 1 or not eq[i-2].isalpha():
                result.append(' \\times ')
        result.append(eq[i])
        i += 1

    return ''.join(result)


def wrap_variables_in_text(eq):
    """Wrap multi-char abbreviations in \\text{}"""
    multi_char_vars = [
        r'\bFV\b', r'\bPV\b', r'\bDF\b', r'\bCF\b', r'\bCD\b', r'\bAI\b',
        r'\bEAR\b', r'\bYTM\b', r'\bYTC\b', r'\bYTW\b', r'\bCY\b',
        r'\bVaR\b', r'\bCVaR\b', r'\bES\b', r'\bIR\b', r'\bSR\b',
        r'\bROE\b', r'\bROA\b', r'\bWACC\b', r'\bNPV\b', r'\bIRR\b',
        r'\bEBIT\b', r'\bEBITDA\b', r'\bEVA\b', r'\bROI\b',
        r'\bCAPM\b', r'\bAPT\b', r'\bSML\b', r'\bCML\b',
        r'\bBlack-Scholes\b', r'\bBS\b', r'\bGBM\b', r'\bSDE\b',
        r'\bMOIC\b', r'\bLPME\b', r'\bLP\b', r'\bGP\b',
        r'\bCoC\b', r'\bGRM\b', r'\bCRF\b', r'\bDSCR\b', r'\bLTV\b',
        r'\bNOI\b', r'\bEGI\b', r'\bMDD\b',
        r'\bTV\b', r'\bPI\b', r'\bAPV\b', r'\bROIC\b',
        r'\bFCFF\b', r'\bFCFE\b', r'\bNOPAT\b',
        r'\bD&A\b', r'\bCap\b', r'\bCapEx\b',
        r'\bMRP\b', r'\bDPR\b', r'\bsigma\b', r'\bDelta\b', r'\bGamma\b',
        r'\bTheta\b', r'\bRho\b', r'\bVega\b', r'\bomega\b', r'\bmu\b',
    ]

    for pattern in multi_char_vars:
        eq = re.sub(pattern, lambda m: f'\\text{{{m.group(0)}}}', eq)

    return eq


def expand_basic_formulas(eq, title):
    """Expand basic formulas to show equivalent forms"""
    title_lower = title.lower()

    if 'simple interest future value' in title_lower:
        return r'\text{FV} = P \times \left(1 + r \times t\right) = P + \left(P \times r \times t\right) = P + \text{Interest}'
    if 'simple interest present value' in title_lower:
        return r'\text{PV} = \frac{\text{FV}}{1 + r \times t}'
    if 'compound interest future value (annual)' in title_lower:
        return r'\text{FV} = P \times \left(1 + r\right)^{t}'
    if 'present value with annual discounting' in title_lower:
        return r'\text{PV} = \frac{\text{FV}}{\left(1 + r\right)^{t}} = \text{FV} \times \left(1 + r\right)^{-t}'
    if 'discount factor (annual)' in title_lower:
        return r'\text{DF}_{t} = \frac{1}{\left(1 + r\right)^{t}}'
    if 'perpetuity present value' in title_lower and 'growing' not in title_lower:
        return r'\text{PV} = \frac{C}{r}'
    if 'annuity present value' in title_lower:
        return r'\text{PV} = C \times \frac{1 - \left(1 + r\right)^{-n}}{r}'
    if 'net present value' in title_lower:
        return r'\text{NPV} = \sum_{t=0}^{n} \frac{\text{CF}_{t}}{\left(1 + r\right)^{t}}'
    if 'weighted average cost of capital' in title_lower:
        return r'\text{WACC} = w_{e} \times r_{e} + w_{d} \times r_{d} \times \left(1 - T\right)'
    if 'cost of equity (capm)' in title_lower:
        return r'\text{r}_{e} = r_{f} + \beta \times \left(r_{m} - r_{f}\right)'

    return eq


def enhance_notes(notes, title, category):
    """Enhance notes with deeper mathematical and practical insights"""
    title_lower = title.lower()
    category_lower = category.lower()

    if any(x in title_lower for x in ['interest', 'discount', 'present value', 'future value']) and \
       'time value' in category_lower:
        notes += " This equation is fundamental to the time value of money concept, which states that money available at the present time is worth more than the same amount in the future due to its potential earning capacity."
        if 'simple' in title_lower:
            notes += " Under simple interest, growth is linear—interest is calculated solely on the initial principal."
        if 'compound' in title_lower:
            notes += " Compound interest produces exponential growth through interest-on-interest."

    if 'duration' in title_lower:
        notes += " Duration is the primary measure of interest rate sensitivity in fixed income."
    if 'convexity' in title_lower:
        notes += " Convexity captures the second-order effect in price-yield relationships."

    if any(x in title_lower for x in ['wacc', 'cost of', 'beta']) and 'cost of capital' in category_lower:
        notes += " The cost of capital represents the required return that investors demand."

    if 'net present value' in title_lower:
        notes += " NPV directly measures value creation in dollar terms."
    if 'internal rate of return' in title_lower and 'modified' not in title_lower:
        notes += " IRR can have multiple solutions for unconventional cash flows."

    return notes


def process_equation(eq, title, notes, category):
    """Process a single equation with all enhancements"""
    eq = fix_subscripts_superscripts(eq)
    eq = add_multiplication(eq)
    eq = wrap_variables_in_text(eq)
    eq = expand_basic_formulas(eq, title)
    eq = re.sub(r'\s+', ' ', eq).strip()
    notes = enhance_notes(notes, title, category)
    return eq, notes


def process_category_file(input_file, output_file):
    """Process a single category CSV file"""
    print(f"Processing {input_file}...")

    rows = []
    with open(input_file, 'r', encoding='utf-8') as f:
        reader = csv.reader(f)
        header = next(reader)
        for row in reader:
            if len(row) >= 4:
                title = row[0]
                equation = row[1]
                category = row[2]
                notes = ','.join(row[3:])
            elif len(row) == 3:
                title, equation, category = row
                notes = ''
            else:
                continue

            enhanced_eq, enhanced_notes = process_equation(equation, title, notes, category)
            rows.append({
                'title': title,
                'equation_latex': enhanced_eq,
                'main_category': category,
                'notes': enhanced_notes
            })

    enhanced_df = pd.DataFrame(rows)
    enhanced_df.to_csv(output_file, index=False)
    print(f"  Processed {len(rows)} equations")
    return len(rows)


def main():
    """Main function to process all category files"""
    base_path = Path('/Users/rogerlin/Downloads/iflow-eq')

    categories_to_process = [
        ('category1_foundations', 'category1_foundations_enhanced_final'),
        ('category2_fixed_income', 'category2_fixed_income_enhanced_final'),
        ('category3_equity_derivatives', 'category3_equity_derivatives_enhanced_final'),
        ('category4_fixed_income_derivatives', 'category4_fixed_income_derivatives_enhanced_final'),
        ('category5_credit_derivatives', 'category5_credit_derivatives_enhanced_final'),
        ('category6_portfolio_theory', 'category6_portfolio_theory_enhanced_final'),
        ('category7_stochastic_calculus', 'category7_stochastic_calculus_enhanced_final'),
        ('category8_corporate_finance', 'category8_corporate_finance_enhanced_final'),
        ('category8_numerical_methods', 'category8_numerical_methods_enhanced_final'),
        ('category9_advanced_topics', 'category9_advanced_topics_enhanced_final'),
        ('category9_alternative_investments', 'category9_alternative_investments_enhanced_final'),
        ('category10_fx_derivatives', 'category10_fx_derivatives_enhanced_final'),
    ]

    total = 0
    for orig_name, enhanced_name in categories_to_process:
        input_file = base_path / f'{orig_name}.csv'
        output_file = base_path / f'{enhanced_name}.csv'

        if input_file.exists():
            count = process_category_file(input_file, output_file)
            total += count
        else:
            print(f"Warning: {input_file} not found")

    print(f"\nTotal equations processed: {total}")


if __name__ == '__main__':
    main()

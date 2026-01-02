#!/usr/bin/env python3
"""
Financial Equations Enhancement Script v3

This script enhances all financial equations with proper LaTeX formatting:
1. Wrap text variables in \text{}
2. Convert implicit multiplication to explicit \times
3. Add proper {subscript} and {superscript} notation
4. Expand equations to a=b=c format where applicable
5. Enhance notes with deeper mathematical and practical insights
"""

import pandas as pd
import re
import csv
from pathlib import Path


def fix_implicit_multiplication(eq):
    """Convert implicit multiplication (like rt, PV, CFt) to explicit \\times"""
    eq = re.sub(r'([A-Za-z])([A-Za-z0-9])', r'\1 \\times \2', eq)
    eq = re.sub(r'(\d)([A-Za-z])', r'\1 \\times \2', eq)
    eq = re.sub(r'([A-Za-z0-9])\(', r'\1 \\times (', eq)
    return eq


def fix_subscripts_superscripts(eq):
    """Convert _ and ^ notation to proper {subscript} format"""
    eq = re.sub(r'_([A-Za-z])', r'_{\1}', eq)
    eq = re.sub(r'_(\d+)', r'_{\1}', eq)
    eq = re.sub(r'_(t|i|j|k|n|m)', r'_{\1}', eq)
    eq = re.sub(r'\^([A-Za-z])', r'^{\1}', eq)
    eq = re.sub(r'\^(\d+)', r'^{\1}', eq)
    return eq


def wrap_variables_in_text(eq):
    """Wrap all variable names in \\text{}"""
    variables = [
        r'\bFV\b', r'\bPV\b', r'\bDF\b', r'\bCF\b', r'\bCF_t\b',
        r'\bP_0\b', r'\bP_t\b', r'\bP_T\b', r'\bS_0\b', r'\bK_0\b',
        r'\bD_1\b', r'\bD_t\b', r'\bE\[R_m\]\b',
        r'\bEAR\b', r'\bYTM\b', r'\bYTC\b', r'\bYTW\b', r'\bCY\b',
        r'\bVaR\b', r'\bCVaR\b', r'\bES\b', r'\bIR\b', r'\bSR\b',
        r'\bROE\b', r'\bROA\b', r'\bWACC\b', r'\bNPV\b', r'\bIRR\b',
        r'\bEBIT\b', r'\bEBITDA\b', r'\bEVA\b', r'\bROI\b',
        r'\bCAPM\b', r'\bAPT\b', r'\bSML\b', r'\bCML\b',
        r'\bBlack-Scholes\b', r'\bBS\b', r'\bGBM\b', r'\bSDE\b',
        r'\bP\b', r'\bF\b', r'\bS\b', r'\bK\b', r'\bC\b', r'\bI\b',
        r'\bT\b', r'\bM\b', r'\bE\b', r'\bV\b', r'\bG\b',
        r'\bsigma\b', r'\bDelta\b', r'\bGamma\b', r'\bTheta\b',
        r'\bRho\b', r'\bVega\b', r'\bomega\b', r'\bmu\b',
        r'\bMOIC\b', r'\bLPME\b', r'\bLP\b', r'\bGP\b',
        r'\bCoC\b', r'\bGRM\b', r'\bCRF\b', r'\bDSCR\b', r'\bLTV\b',
        r'\bNOI\b', r'\bEGI\b', r'\bMDD\b', r'\betl\b',
        r'\bTV\b', r'\bPI\b', r'\bAPV\b', r'\bEVA\b', r'\bROIC\b',
        r'\bFCFF\b', r'\bFCFE\b', r'\bNOPAT\b', r'\bD&A\b',
        r'\bD_t\b', r'\bP_n\b', r'\bV_0\b',
    ]

    for pattern in variables:
        eq = re.sub(pattern, lambda m: f'\\text{{{m.group(0)}}}', eq)

    return eq


def add_proper_spaces(eq):
    """Add proper spacing around operators"""
    eq = eq.replace(' + ', ' + ').replace(' - ', ' - ')
    eq = eq.replace(' = ', ' = ').replace(' \\times \\times ', ' \\times ')
    return eq


def expand_basic_formulas(eq, title):
    """Expand basic formulas to show equivalent forms"""
    title_lower = title.lower()

    if 'simple interest future value' in title_lower:
        return r'\text{FV} = P \times \left(1 + r \times t\right) = P + \left(P \times r \times t\right) = P + \text{Interest}'
    if 'simple interest present value' in title_lower:
        return r'\text{PV} = \frac{\text{FV}}{1 + r \times t} = \text{FV} \times \frac{1}{1 + r \times t}'
    if 'compound interest future value (annual)' in title_lower:
        return r'\text{FV} = P \times \left(1 + r\right)^{t} = P \times e^{\ln\left(1 + r\right) \times t}'
    if 'present value with annual discounting' in title_lower:
        return r'\text{PV} = \frac{\text{FV}}{\left(1 + r\right)^{t}} = \text{FV} \times \left(1 + r\right)^{-t} = \text{FV} \times \text{DF}_{t}'
    if 'discount factor (annual)' in title_lower:
        return r'\text{DF}_{t} = \frac{1}{\left(1 + r\right)^{t}} = \left(1 + r\right)^{-t}'
    if 'perpetuity present value' in title_lower and 'growing' not in title_lower:
        return r'\text{PV} = \frac{C}{r} = C \times \frac{1}{r}'
    if 'annuity present value' in title_lower:
        return r'\text{PV} = C \times \frac{1 - \left(1 + r\right)^{-n}}{r}'
    if 'present value of uneven cash flows' in title_lower:
        return r'\text{PV} = \sum_{t=1}^{n} \frac{\text{CF}_{t}}{\left(1 + r\right)^{t}}'
    if 'future value of uneven cash flows' in title_lower:
        return r'\text{FV} = \sum_{t=1}^{n} \text{CF}_{t} \times \left(1 + r\right)^{n-t}'
    if 'net present value' in title_lower:
        return r'\text{NPV} = \sum_{t=0}^{n} \frac{\text{CF}_{t}}{\left(1 + r\right)^{t}}'
    if 'gordon growth' in title_lower:
        return r'\text{P}_{0} = \frac{D_{1}}{r - g}'
    if 'weighted average cost of capital' in title_lower:
        return r'\text{WACC} = w_{e} \times r_{e} + w_{d} \times r_{d} \times \left(1 - T\right)'
    if 'cost of equity (capm)' in title_lower:
        return r'\text{r}_{e} = r_{f} + \beta \times \left(r_{m} - r_{f}\right)'
    if 'internal rate of return' in title_lower and 'modified' not in title_lower:
        return r'0 = \sum_{t=0}^{n} \frac{\text{CF}_{t}}{\left(1 + \text{IRR}\right)^{t}}'

    return eq


def enhance_notes(notes, title, equation):
    """Enhance notes with deeper mathematical and practical insights"""
    title_lower = title.lower()

    if any(x in title_lower for x in ['interest', 'discount', 'present value', 'future value', 'time value']):
        notes += " This equation is fundamental to the time value of money concept, which states that money available at the present time is worth more than the same amount in the future due to its potential earning capacity. The mathematical formulation captures how capital compounds over time, forming the foundation for all discounted cash flow analysis."
        if 'simple' in title_lower:
            notes += " Under simple interest, growth is linear—interest is calculated solely on the initial principal, not on accumulated interest. This model applies to short-term instruments and certain loan structures where interest is not capitalized."
        if 'compound' in title_lower:
            notes += " Compound interest produces exponential growth through interest-on-interest, making it the standard model for most financial calculations over multi-period horizons."

    if 'duration' in title_lower:
        notes += " Duration is the primary measure of interest rate sensitivity in fixed income markets, representing the weighted average time to cash flows. Modified duration directly estimates percentage price changes for yield movements using the first derivative of the price-yield relationship."
    if 'convexity' in title_lower:
        notes += " Convexity captures the second-order effect in price-yield relationships, accounting for the curvature that makes bond prices rise more for yield drops than they fall for equivalent yield increases."

    if any(x in title_lower for x in ['option', 'delta', 'gamma', 'vega', 'rho', 'theta']):
        notes += " Option pricing requires risk-neutral valuation frameworks that adjust expected returns for risk, typically using the risk-free rate rather than expected return under the physical measure."

    if any(x in title_lower for x in ['price to', 'p/e', 'p/b', 'ev/', 'enterprise value']):
        notes += " Valuation multiples provide relative valuation estimates by comparing a metric to enterprise value or equity value. They are widely used for comparable company analysis."

    if any(x in title_lower for x in ['net present value', 'irr', 'payback', 'profitability']):
        notes += " Capital budgeting metrics guide investment decisions by comparing expected returns to required rates of return. NPV represents absolute value creation, while IRR expresses returns as a percentage."
        if 'npv' in title_lower:
            notes += " NPV is theoretically superior to other metrics as it directly measures value creation in dollar terms and properly accounts for the time value of money."

    if any(x in title_lower for x in ['wacc', 'cost of', 'beta', 'cost of capital']):
        notes += " The cost of capital represents the required return that investors demand for providing capital. It serves as the discount rate for valuation and the hurdle rate for investment decisions."

    return notes


def process_equation(eq, title, notes):
    """Process a single equation with all enhancements"""
    eq = fix_subscripts_superscripts(eq)
    eq = fix_implicit_multiplication(eq)
    eq = wrap_variables_in_text(eq)
    eq = add_proper_spaces(eq)
    eq = expand_basic_formulas(eq, title)
    eq = re.sub(r'\s+', ' ', eq).strip()
    eq = eq.replace(' = ', ' = ').replace(' \\times ', ' \\times ')
    notes = enhance_notes(notes, title, eq)
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

            enhanced_eq, enhanced_notes = process_equation(equation, title, notes)
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
        ('category1_foundations', 'category1_foundations_enhanced_v3'),
        ('category2_fixed_income', 'category2_fixed_income_enhanced_v3'),
        ('category3_equity_derivatives', 'category3_equity_derivatives_enhanced_v3'),
        ('category4_fixed_income_derivatives', 'category4_fixed_income_derivatives_enhanced_v3'),
        ('category5_credit_derivatives', 'category5_credit_derivatives_enhanced_v3'),
        ('category6_portfolio_theory', 'category6_portfolio_theory_enhanced_v3'),
        ('category7_stochastic_calculus', 'category7_stochastic_calculus_enhanced_v3'),
        ('category8_corporate_finance', 'category8_corporate_finance_enhanced'),
        ('category8_numerical_methods', 'category8_numerical_methods_enhanced_v3'),
        ('category9_advanced_topics', 'category9_advanced_topics_enhanced_v3'),
        ('category9_alternative_investments', 'category9_alternative_investments_enhanced'),
        ('category10_fx_derivatives', 'category10_fx_derivatives_enhanced'),
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

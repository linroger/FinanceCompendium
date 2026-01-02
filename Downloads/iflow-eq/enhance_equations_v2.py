#!/usr/bin/env python3
"""
Financial Equations Enhancement Script v2

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


def wrap_text_variable(match):
    """Wrap text tokens in \\text{}"""
    text = match.group(1)
    # Skip common LaTeX commands and already wrapped text
    if text.startswith('\\') or text.startswith('{'):
        return match.group(0)
    # Handle fractions specially
    if text == '/':
        return '/'
    return f'\\text{{{text}}}'


def fix_implicit_multiplication(eq):
    """Convert implicit multiplication (like rt, PV, CFt) to explicit \\times"""
    # Add \times between adjacent variables/numbers (letter-letter or letter-number)
    eq = re.sub(r'([A-Za-z])([A-Za-z0-9])', r'\1 \\times \2', eq)
    # Add \times between number and letter
    eq = re.sub(r'(\d)([A-Za-z])', r'\1 \\times \2', eq)
    # Add \times before ( in expressions like r(1+r)
    eq = re.sub(r'([A-Za-z0-9])\(', r'\1 \\times (', eq)
    return eq


def fix_subscripts_superscripts(eq):
    """Convert _ and ^ notation to proper {subscript} format"""
    # Convert _singlechar to _{singlechar}
    eq = re.sub(r'_([A-Za-z])', r'_{\1}', eq)
    # Convert _number to _{number}
    eq = re.sub(r'_(\d+)', r'_{\1}', eq)
    # Convert _t (single letter subscript)
    eq = re.sub(r'_(t|i|j|k|n|m)', r'_{\1}', eq)
    # Convert ^singlechar to ^{singlechar}
    eq = re.sub(r'\^([A-Za-z])', r'^{\1}', eq)
    # Convert ^number to ^{number}
    eq = re.sub(r'\^(\d+)', r'^{\1}', eq)
    return eq


def wrap_variables_in_text(eq):
    """Wrap all variable names in \\text{}"""
    # Common financial variable patterns
    variables = [
        # Time value variables
        r'\bFV\b', r'\bPV\b', r'\bDF\b', r'\bCF\b', r'\bCF_t\b',
        r'\bP_0\b', r'\bP_t\b', r'\bP_T\b', r'\bS_0\b', r'\bK_0\b',
        r'\bD_1\b', r'\bD_t\b', r'\bE[R_m]\b',
        # Rate variables
        r'\bEAR\b', r'\bYTM\b', r'\bYTC\b', r'\bYTW\b', r'\bCY\b',
        r'\bVaR\b', r'\bCVaR\b', r'\bES\b', r'\bIR\b', r'\bSR\b',
        r'\bROE\b', r'\bROA\b', r'\bWACC\b', r'\bNPV\b', r'\bIRR\b',
        r'\bEBIT\b', r'\bEBITDA\b', r'\bEVA\b', r'\bROI\b',
        r'\bCAPM\b', r'\bAPT\b', r'\bSML\b', r'\bCML\b',
        r'\bBlack-Scholes\b', r'\bBS\b', r'\bGBM\b', r'\bSDE\b',
        # Single letter variables that should be wrapped
        r'\bP\b', r'\bF\b', r'\bS\b', r'\bK\b', r'\bC\b', r'\bI\b',
        r'\bT\b', r'\bM\b', r'\bE\b', r'\bV\b', r'\bG\b',
        # Greek letters used as variables
        r'\bsigma\b', r'\bDelta\b', r'\bGamma\b', r'\bTheta\b',
        r'\bRho\b', r'\bVega\b', r'\bomega\b', r'\bmu\b',
        # Derived variables
        r'\bMOIC\b', r'\bLPME\b', r'\bLP\b', r'\bGP\b',
        r'\bCoC\b', r'\bGRM\b', r'\bCRF\b', r'\bDSCR\b', r'\bLTV\b',
        r'\bNOI\b', r'\bEGI\b', r'\bCap\b', r'\bMDD\b',
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

    # Simple Interest Future Value expansion
    if 'simple interest future value' in title_lower:
        if r'\text{FV}' not in eq:
            return r'\text{FV} = P \times \left(1 + r \times t\right) = P + \left(P \times r \times t\right) = P + \text{Interest}'

    # Simple Interest Present Value
    if 'simple interest present value' in title_lower:
        if r'\text{PV}' not in eq:
            return r'\text{PV} = \frac{\text{FV}}{1 + r \times t} = \text{FV} \times \frac{1}{1 + r \times t}'

    # Compound Interest Future Value (Annual)
    if 'compound interest future value (annual)' in title_lower:
        if r'\text{FV}' not in eq:
            return r'\text{FV} = P \times \left(1 + r\right)^{t} = P \times e^{\ln\left(1 + r\right) \times t}'

    # Present Value with Annual Discounting
    if 'present value with annual discounting' in title_lower:
        if r'\text{PV}' not in eq:
            return r'\text{PV} = \frac{\text{FV}}{\left(1 + r\right)^{t}} = \text{FV} \times \left(1 + r\right)^{-t} = \text{FV} \times \text{DF}_{t}'

    # Discount Factor (Annual)
    if 'discount factor (annual)' in title_lower:
        if r'\text{DF}' not in eq:
            return r'\text{DF}_{t} = \frac{1}{\left(1 + r\right)^{t}} = \left(1 + r\right)^{-t}'

    # Perpetuity Present Value
    if 'perpetuity present value' in title_lower:
        if 'growing' not in title_lower and r'\text{PV}' not in eq:
            return r'\text{PV} = \frac{C}{r} = C \times \frac{1}{r}'

    # Annuity Present Value
    if 'annuity present value' in title_lower:
        if r'\text{PV}' not in eq:
            return r'\text{PV} = C \times \frac{1 - \left(1 + r\right)^{-n}}{r}'

    # Present Value of Uneven Cash Flows
    if 'present value of uneven cash flows' in title_lower:
        if r'\text{PV}' not in eq:
            return r'\text{PV} = \sum_{t=1}^{n} \frac{\text{CF}_{t}}{\left(1 + r\right)^{t}}'

    # Future Value of Uneven Cash Flows
    if 'future value of uneven cash flows' in title_lower:
        if r'\text{FV}' not in eq:
            return r'\text{FV} = \sum_{t=1}^{n} \text{CF}_{t} \times \left(1 + r\right)^{n-t}'

    # Net Present Value
    if 'net present value' in title_lower:
        if r'\text{NPV}' not in eq:
            return r'\text{NPV} = \sum_{t=0}^{n} \frac{\text{CF}_{t}}{\left(1 + r\right)^{t}}'

    # Gordon Growth Model
    if 'gordon growth' in title_lower:
        if r'\text{P}_{0}' not in eq:
            return r'\text{P}_{0} = \frac{D_{1}}{r - g} = \frac{D_{1}}{r - g}'

    # WACC
    if 'weighted average cost of capital' in title_lower:
        if r'\text{WACC}' not in eq:
            return r'\text{WACC} = w_{e} \times r_{e} + w_{d} \times r_{d} \times \left(1 - T\right)'

    # Cost of Equity (CAPM)
    if 'cost of equity (capm)' in title_lower:
        if r'\text{r}_{e}' not in eq:
            return r'\text{r}_{e} = r_{f} + \beta \times \left(r_{m} - r_{f}\right)'

    # Internal Rate of Return
    if 'internal rate of return' in title_lower:
        if r'\text{IRR}' not in eq:
            return r'0 = \sum_{t=0}^{n} \frac{\text{CF}_{t}}{\left(1 + \text{IRR}\right)^{t}}'

    return eq


def enhance_notes(notes, title, equation):
    """Enhance notes with deeper mathematical and practical insights"""
    title_lower = title.lower()

    # Add mathematical significance for time value concepts
    if any(x in title_lower for x in ['interest', 'discount', 'present value', 'future value', 'time value']):
        notes += " This equation is fundamental to the time value of money concept, which states that money available at the present time is worth more than the same amount in the future due to its potential earning capacity. The mathematical formulation captures how capital compounds over time, forming the foundation for all discounted cash flow analysis."
        if 'simple' in title_lower:
            notes += " Under simple interest, growth is linear—interest is calculated solely on the initial principal, not on accumulated interest. This model applies to short-term instruments and certain loan structures where interest is not capitalized."
        if 'compound' in title_lower:
            notes += " Compound interest produces exponential growth through interest-on-interest, making it the standard model for most financial calculations over multi-period horizons."

    # Duration and convexity
    if 'duration' in title_lower:
        notes += " Duration is the primary measure of interest rate sensitivity in fixed income markets, representing the weighted average time to cash flows. Modified duration directly estimates percentage price changes for yield movements using the first derivative of the price-yield relationship. Higher duration means greater sensitivity to rate changes."
    if 'convexity' in title_lower:
        notes += " Convexity captures the second-order effect in price-yield relationships, accounting for the curvature that makes bond prices rise more for yield drops than they fall for equivalent yield increases. This curvature adjustment improves price estimates for large yield changes beyond what duration alone can predict."

    # Option-related terms
    if 'option' in title_lower or 'delta' in title_lower or 'gamma' in title_lower:
        notes += " Option pricing requires risk-neutral valuation frameworks that adjust expected returns for risk, typically using the risk-free rate rather than expected return under the physical measure. The Greeks measure sensitivity to various risk factors."

    # Valuation multiples
    if any(x in title_lower for x in ['price to', 'p/e', 'p/b', 'ev/', 'enterprise value']):
        notes += " Valuation multiples provide relative valuation estimates by comparing a metric to enterprise value or equity value. They are widely used for comparable company analysis, though proper comparables and adjustments for growth, risk, and return on capital are essential for meaningful estimates."

    # Capital budgeting
    if any(x in title_lower for x in ['net present value', 'irr', 'payback', 'profitability']):
        notes += " Capital budgeting metrics guide investment decisions by comparing expected returns to required rates of return. NPV represents absolute value creation, while IRR expresses returns as a percentage. Project selection criteria typically require positive NPV or IRR exceeding the cost of capital."
        if 'npv' in title_lower:
            notes += " NPV is theoretically superior to other metrics as it directly measures value creation in dollar terms, properly accounts for the time value of money, and incorporates both risk (through the discount rate) and scale (through the absolute present value)."
        if 'irr' in title_lower:
            notes += " IRR can have multiple solutions or none for unconventional cash flows, and the reinvestment rate assumption may be unrealistic. Use MIRR for more reliable comparisons."

    # Cost of capital
    if any(x in title_lower for x in ['wacc', 'cost of', 'beta', 'cost of capital']):
        notes += " The cost of capital represents the required return that investors demand for providing capital. It serves as the discount rate for valuation and the hurdle rate for investment decisions, reflecting both the time value of money and compensation for risk."

    return notes


def process_equation(eq, title, notes):
    """Process a single equation with all enhancements"""
    # Step 1: Fix subscripts and superscripts
    eq = fix_subscripts_superscripts(eq)

    # Step 2: Fix implicit multiplication
    eq = fix_implicit_multiplication(eq)

    # Step 3: Wrap variables in \text{}
    eq = wrap_variables_in_text(eq)

    # Step 4: Add proper spacing
    eq = add_proper_spaces(eq)

    # Step 5: Expand basic formulas
    eq = expand_basic_formulas(eq, title)

    # Step 6: Fix spacing after expansion
    eq = re.sub(r'\s+', ' ', eq).strip()
    eq = eq.replace(' = ', ' = ').replace(' \\times ', ' \\times ')

    # Step 7: Enhance notes
    notes = enhance_notes(notes, title, eq)

    return eq, notes


def process_category_file(input_file, output_file):
    """Process a single category CSV file"""
    print(f"Processing {input_file}...")

    # Read the file with error handling for inconsistent field counts
    # Try standard CSV first, then fallback to manual parsing
    try:
        # Try reading with on_bad_lines='skip' first to identify problem lines
        df = pd.read_csv(input_file, on_bad_lines='warn')
    except Exception as e:
        print(f"  Warning: Error reading {input_file}: {e}")
        print("  Attempting manual parsing...")
        # Manual parsing - read lines and handle variable field counts
        rows = []
        with open(input_file, 'r') as f:
            reader = csv.reader(f)
            header = next(reader)
            for row in reader:
                if len(row) >= 4:
                    # Combine extra fields into notes
                    title = row[0]
                    equation = row[1]
                    category = row[2]
                    notes = ','.join(row[3:])
                    rows.append([title, equation, category, notes])
                elif len(row) == 3:
                    # Missing notes field
                    rows.append([row[0], row[1], row[2], ''])
        df = pd.DataFrame(rows, columns=['title', 'equation_latex', 'main_category', 'notes'])

    # Process each equation
    enhanced_data = []
    for idx, row in df.iterrows():
        title = row['title']
        equation = row['equation_latex']
        category = row['main_category']
        notes = row['notes']

        # Process the equation and notes
        enhanced_eq, enhanced_notes = process_equation(equation, title, notes)

        enhanced_data.append({
            'title': title,
            'equation_latex': enhanced_eq,
            'main_category': category,
            'notes': enhanced_notes
        })

    # Write to output file
    enhanced_df = pd.DataFrame(enhanced_data)
    enhanced_df.to_csv(output_file, index=False)

    print(f"  Processed {len(enhanced_data)} equations")
    return len(enhanced_data)


def main():
    """Main function to process all category files"""
    base_path = Path('/Users/rogerlin/Downloads/iflow-eq')

    # Categories that need enhancement (original files only)
    categories_to_process = [
        ('category1_foundations', 'category1_foundations_enhanced_v2'),
        ('category2_fixed_income', 'category2_fixed_income_enhanced_v2'),
        ('category3_equity_derivatives', 'category3_equity_derivatives_enhanced_v2'),
        ('category4_fixed_income_derivatives', 'category4_fixed_income_derivatives_enhanced_v2'),
        ('category5_credit_derivatives', 'category5_credit_derivatives_enhanced_v2'),
        ('category6_portfolio_theory', 'category6_portfolio_theory_enhanced_v2'),
        ('category7_stochastic_calculus', 'category7_stochastic_calculus_enhanced_v2'),
        ('category8_corporate_finance', 'category8_corporate_finance_enhanced'),
        ('category8_numerical_methods', 'category8_numerical_methods_enhanced_v2'),
        ('category9_advanced_topics', 'category9_advanced_topics_enhanced_v2'),
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

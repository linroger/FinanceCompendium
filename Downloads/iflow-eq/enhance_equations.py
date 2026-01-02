#!/usr/bin/env python3
"""
Financial Equations Enhancement Script

This script enhances all financial equations with proper LaTeX formatting:
1. Wrap text variables in \text{}
2. Convert implicit multiplication to explicit \times
3. Add proper {subscript} and {superscript} notation
4. Expand equations to a=b=c format where applicable
5. Add underbraces for clarity
6. Enhance notes with deeper mathematical and practical insights
"""

import pandas as pd
import re
from pathlib import Path

def wrap_text_in_equation(match):
    """Wrap text tokens in \\text{}"""
    text = match.group(1)
    # Skip common LaTeX commands
    if text.startswith('\\') or text.startswith('_') or text.startswith('^'):
        return match.group(0)
    return f'\\text{{{text}}}'

def fix_implicit_multiplication(eq):
    """Convert implicit multiplication (like rt, PV, CFt) to explicit \\times"""
    # Add \times between adjacent variables/numbers
    # Pattern: letter followed by letter/number
    eq = re.sub(r'([A-Za-z])([A-Za-z0-9])', r'\1 \\times \2', eq)
    # Pattern: number followed by letter
    eq = re.sub(r'(\d)([A-Za-z])', r'\1 \\times \2', eq)
    return eq

def fix_subscripts_superscripts(eq):
    """Convert _ and ^ notation to proper {subscript} format"""
    # Convert _singlechar to _{singlechar}
    eq = re.sub(r'_([A-Za-z])', r'_{\1}', eq)
    # Convert _number to _{number}
    eq = re.sub(r'_(\d+)', r'_{\1}', eq)
    # Convert ^singlechar to ^{singlechar}
    eq = re.sub(r'\^([A-Za-z])', r'^{\1}', eq)
    # Convert ^number to ^{number}
    eq = re.sub(r'\^(\d+)', r'^{\1}', eq)
    return eq

def expand_equation(eq, title):
    """Expand equation to a=b=c format where applicable"""
    # Common expansions
    expansions = {
        r'PV = \frac{FV}{1 + r \times t}': 
            r'\text{PV} = \frac{\text{FV}}{1 + r \times t} = \frac{\text{FV}}{1 + r \times t}',
        r'FV = P \times (1 + r \times t)':
            r'\text{FV} = P \\times (1 + r \\times t) = P + (P \\times r \\times t) = \text{Interest}',
        r'PV = \frac{FV}{(1 + r)^t}':
            r'\text{PV} = \frac{\text{FV}}{(1 + r)^{t}} = \text{FV} \\times (1 + r)^{-t} = \text{FV} \\times \text{DF}_{t}',
        r'FV = P \times (1 + r)^t':
            r'\text{FV} = P \\times (1 + r)^{t} = P \\times e^{\\ln(1 + r) \\times t}',
        r'DF = \frac{1}{(1 + r)^t}':
            r'\text{DF}_{t} = \\frac{1}{(1 + r)^{t}} = (1 + r)^{-t} = e^{-r \\times t}',
    }
    
    # Check if equation matches any pattern
    for pattern, expanded in expansions.items():
        if pattern.replace(r'\times', '×') in eq.replace(r'\times', '×'):
            return expanded
    
    return eq

def add_underbrace(eq, variable, description):
    """Add underbrace to explain variables"""
    # Example: F = S \times (1+r) → F = \underbrace{S \times (1+r)}_{\text{...}}
    return eq

def enhance_notes(notes, title, equation):
    """Enhance notes with deeper mathematical and practical insights"""
    # Add mathematical significance
    if "interest" in title.lower() or "discount" in title.lower():
        notes += " This equation is fundamental to the time value of money concept, which states that money available at the present time is worth more than the same amount in the future due to its potential earning capacity."
    if "duration" in title.lower():
        notes += " Duration is the primary measure of interest rate sensitivity in fixed income markets, measuring the weighted average time to cash flows. Modified duration directly estimates price changes for yield movements."
    if "convexity" in title.lower():
        notes += " Convexity captures the second-order effect in price-yield relationships, accounting for the curvature that makes bond prices rise more for yield drops than they fall for equivalent yield increases."
    if "option" in title.lower():
        notes += " Option pricing requires risk-neutral valuation frameworks that adjust expected returns for risk, typically using the risk-free rate rather than expected return under the physical measure."
    
    return notes

def process_equation(eq, title, notes):
    """Process a single equation with all enhancements"""
    # Step 1: Fix subscripts and superscripts
    eq = fix_subscripts_superscripts(eq)
    
    # Step 2: Fix implicit multiplication
    eq = fix_implicit_multiplication(eq)
    
    # Step 3: Wrap text in \text{}
    # This is complex - we need to identify text tokens
    # Common patterns: FV, PV, DF, C, P, r, t, sigma, delta, etc.
    text_patterns = [
        r'\bFV\b', r'\bPV\b', r'\bDF\b', r'\bCF\b', r'\bCD\b', r'\bAI\b',
        r'\bP_E\b', r'\bP_0\b', r'\bS_0\b', r'\bK_0\b', r'\bE[R]\b',
        r'\bEAR\b', r'\bYTM\b', r'\bYTC\b', r'\bYTW\b', r'\bCY\b',
        r'\bVaR\b', r'\bCVaR\b', r'\bES\b', r'\bIR\b', r'\bSR\b',
        r'\bROE\b', r'\bROA\b', r'\bWACC\b', r'\bNPV\b', r'\bIRR\b',
        r'\bEBIT\b', r'\bEBITDA\b', r'\bEVA\b', r'\bROI\b',
        r'\bCAPM\b', r'\bAPT\b', r'\bSML\b', r'\bCML\b',
        r'\bBlack-Scholes\b', r'\bBS\b', r'\bGBM\b', r'\bSDE\b',
    ]
    
    for pattern in text_patterns:
        eq = re.sub(pattern, lambda m: f'\\text{{{m.group(0)}}}', eq)
    
    # Step 4: Wrap single-letter Greek in \text{} if they look like variables
    greek_in_text = [r'\bsigma\b', r'\bDelta\b', r'\bGamma\b', r'\bTheta\b', r'\bRho\b', r'\bVega\b']
    for pattern in greek_in_text:
        eq = re.sub(pattern, lambda m: f'\\text{{{m.group(0)}}}', eq)
    
    # Step 5: Add proper spacing around operators
    eq = eq.replace('+', ' + ').replace('-', ' - ')
    eq = eq.replace(' = ', ' = ').replace(' * ', ' \\times ')
    
    # Step 6: Fix spacing
    eq = re.sub(r'\s+', ' ', eq).strip()
    eq = eq.replace(' = ', ' = ').replace(' \\times ', ' \\times ')
    
    # Step 7: Expand to a=b=c format
    eq = expand_equation(eq, title)
    
    # Step 8: Enhance notes
    notes = enhance_notes(notes, title, eq)
    
    return eq, notes

def process_category_file(input_file, output_file):
    """Process a single category CSV file"""
    print(f"Processing {input_file}...")
    
    # Read the file
    df = pd.read_csv(input_file)
    
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
    
    categories = [
        'category1_foundations',
        'category2_fixed_income',
        'category3_equity_derivatives',
        'category4_fixed_income_derivatives',
        'category5_credit_derivatives',
        'category6_portfolio_theory',
        'category7_stochastic_calculus',
        'category8_corporate_finance',
        'category8_numerical_methods',
        'category9_advanced_topics',
        'category9_alternative_investments',
        'category10_fx_derivatives',
    ]
    
    total = 0
    for cat in categories:
        input_file = base_path / f'{cat}.csv'
        output_file = base_path / f'{cat}_enhanced_v2.csv'
        
        if input_file.exists():
            count = process_category_file(input_file, output_file)
            total += count
        else:
            print(f"Warning: {input_file} not found")
    
    print(f"\nTotal equations processed: {total}")

if __name__ == '__main__':
    main()

#!/usr/bin/env python3

import csv
import re

def fix_numbered_prefixes(title):
    """Remove numbered prefixes like '1.', '2.', etc."""
    return re.sub(r'^\d+\.\s*', '', title)

def fix_discount_factor_entries(title, equation, line_num):
    """Fix the 20+ 'Discount Factor' entries with proper names"""
    
    # Mapping of line numbers to correct titles based on the equation content
    discount_factor_fixes = {
        26: "Defaultable Bond Price (Duffie-Singleton)",
        27: "CDO Portfolio Loss Function", 
        80: "State Price Density Process",
        81: "Put Option Price (Black-Scholes)",
        82: "Risk-Neutral Density (Breeden-Litzenberger)",
        83: "Put Option Price (Garman-Kohlhagen)",
        84: "Covered Interest Rate Parity (Continuous)",
        85: "Feynman-Kac Formula",
        86: "CDO Tranche Pricing",
        88: "Fourier Transform Pricing",
        90: "Survival Probability (Cox Process)",
        91: "Lognormal Jump Distribution",
        92: "Joint Default Probability (Gaussian Copula)",
        93: "Fourier Transform Option Pricing",
        95: "CDO Tranche Spread Formula",
        96: "Option-Adjusted Spread Pricing",
        97: "Conditional Default Probability (Factor Model)",
        98: "Basket Option Second Moment",
        100: "CDO Tranche Spread (Alternative)",
        101: "Optimal Exercise Boundary (American Options)",
        102: "CGMY Process Levy Measure",
        103: "Second Tranche CDO Spread",
        104: "Heston Model Characteristic Function",
        106: "CDS Par Spread Formula",
        107: "Basket Option Moment Matching",
        110: "Mathematical Constraint (Technical)",
        111: "Discount Factor Relationships",
        112: "FX Forward Points",
        113: "Fokker-Planck Equation",
        114: "Geometric Series",
        115: "Gold Lease Rate",
        116: "I-Spread (Interpolated Spread)",
        117: "Key Rate Duration",
        118: "Key Rate Duration (Alternative)",
        119: "Kolmogorov Forward Equation",
        513: "Binomial Model Risk-Neutral Probability",
        514: "Binomial Model Up/Down Factors",
        515: "Merton Model Equity as Call Option",
        516: "Binomial Model Factors (Alternative)",
        517: "Binomial Model Backward Induction",
        518: "Radon-Nikodym Derivative",
        519: "Heston Model C Function",
        520: "Levy Process Characteristic Exponent",
        521: "Heston Model A Function",
        522: "Trinomial Model Probability",
        523: "Heston Model Parameters",
        527: "Carr-Madan FFT Implementation",
        529: "Vanna and Volga Formulas",
        533: "Geometric Asian Option MGF",
        536: "Carr-Madan FFT Formula",
        540: "Curran's Conditional Expectation",
        543: "Arithmetic Asian Option MGF (Jump-Diffusion)",
        546: "Asian Option PDE"
    }
    
    if line_num in discount_factor_fixes:
        return discount_factor_fixes[line_num]
    
    # If equation contains specific patterns, identify what it actually is
    equation_lower = equation.lower()
    
    if 'phi(' in equation and 'd_2' in equation and 'put' in title.lower():
        return "Put Option Price (Black-Scholes)"
    elif 'phi(' in equation and 'd_1' in equation and 'call' in title.lower():
        return "Call Option Price (Black-Scholes)"
    elif 'e^{-rt}' in equation and 'zeta' in equation:
        return "State Price Density Process"
    elif 'fourier' in equation.lower() or 'fft' in equation.lower():
        return "Fourier Transform Pricing"
    elif 'survival' in equation.lower() or 'tau >' in equation:
        return "Survival Probability"
    elif 'jump' in equation.lower():
        return "Jump Process Distribution"
    elif 'copula' in equation.lower() or 'joint' in equation.lower():
        return "Joint Default Probability"
    elif 'cds' in equation.lower() or 'credit' in equation.lower():
        return "Credit Derivative Pricing"
    elif 'asian' in equation.lower():
        return "Asian Option Pricing"
    elif 'binomial' in equation.lower() or ('u = e' in equation and 'sigma' in equation):
        return "Binomial Model Parameters"
    elif 'characteristic' in equation.lower():
        return "Characteristic Function"
    elif 'moment' in equation.lower() and 'generating' in equation.lower():
        return "Moment Generating Function"
    elif 'pde' in equation.lower() or 'partial' in equation.lower():
        return "Partial Differential Equation"
    elif 'vasicek' in equation_lower:
        return "Vasicek Model"
    elif 'cir' in equation_lower:
        return "CIR Model"
    elif 'heston' in equation_lower:
        return "Heston Model"
    elif 'sabr' in equation_lower:
        return "SABR Model"
    elif 'forward' in equation_lower and 'rate' in equation_lower:
        return "Forward Rate Model"
    elif 'swap' in equation_lower:
        return "Interest Rate Swap"
    elif 'cap' in equation_lower or 'floor' in equation_lower:
        return "Interest Rate Cap/Floor"
    elif 'swaption' in equation_lower:
        return "Swaption Pricing"
    elif 'bond' in equation_lower and 'price' in equation_lower:
        return "Bond Pricing"
    elif 'forward' in equation_lower:
        return "Forward Pricing"
    elif 'futures' in equation_lower:
        return "Futures Pricing"
    elif 'convexity' in equation_lower:
        return "Convexity Measure"
    elif 'duration' in equation_lower:
        return "Duration Measure"
    elif 'delta' in equation_lower:
        return "Option Greek"
    elif 'gamma' in equation_lower:
        return "Option Greek"
    elif 'vega' in equation_lower:
        return "Option Greek"
    elif 'theta' in equation_lower:
        return "Option Greek"
    elif 'rho' in equation_lower:
        return "Option Greek"
    elif 'kolmogorov' in equation_lower:
        return "Kolmogorov Equation"
    elif 'fokker-planck' in equation_lower:
        return "Fokker-Planck Equation"
    elif 'geometric' in equation_lower and 'series' in equation_lower:
        return "Geometric Series"
    elif 'lease' in equation_lower and 'rate' in equation_lower:
        return "Gold Lease Rate"
    elif 'forward' in equation_lower and 'points' in equation_lower:
        return "FX Forward Points"
    elif 'i-spread' in equation_lower or 'interpolated' in equation_lower:
        return "I-Spread (Interpolated Spread)"
    elif 'key rate' in equation_lower:
        return "Key Rate Duration"
    
    return title  # Return original if no match

def fix_generic_titles(title, equation, line_num):
    """Fix generic titles like 'Unknown', 'Mathematical Relationship', etc."""
    
    if title in ['Unknown', 'Mathematical Relationship', 'Variables:', 'Equation:', 'Financial Model Component']:
        # Try to identify based on equation content
        equation_lower = equation.lower()
        
        if 'vasicek' in equation_lower or ('dr_t' in equation_lower and 'b' in equation_lower):
            return "Vasicek Model"
        elif 'hjm' in equation_lower or 'df(t,T)' in equation_lower:
            return "HJM Framework"
        elif 'cir' in equation_lower:
            return "CIR Model"
        elif 'black-scholes' in equation_lower or 'd_1' in equation_lower:
            return "Black-Scholes Component"
        elif 'heston' in equation_lower:
            return "Heston Model"
        elif 'sabr' in equation_lower:
            return "SABR Model"
        elif 'correlation' in equation_lower:
            return "Correlation Structure"
        elif 'characteristic' in equation_lower:
            return "Characteristic Function"
        elif 'swap' in equation_lower:
            return "Interest Rate Swap"
        elif 'cap' in equation_lower or 'floor' in equation_lower:
            return "Interest Rate Cap/Floor"
        elif 'swaption' in equation_lower:
            return "Swaption Pricing"
        elif 'bond' in equation_lower:
            return "Bond Pricing"
        elif 'forward' in equation_lower:
            return "Forward Pricing"
        elif 'futures' in equation_lower:
            return "Futures Pricing"
        elif 'option' in equation_lower:
            return "Option Pricing"
        elif 'volatility' in equation_lower:
            return "Volatility Model"
        elif 'default' in equation_lower or 'credit' in equation_lower:
            return "Credit Risk Model"
        elif 'prepayment' in equation_lower:
            return "Prepayment Model"
        elif 'mbss' in equation_lower or 'mortgage' in equation_lower:
            return "MBS Model"
        elif 'duration' in equation_lower:
            return "Duration Measure"
        elif 'convexity' in equation_lower:
            return "Convexity Measure"
        elif 'delta' in equation_lower:
            return "Option Greek"
        elif 'gamma' in equation_lower:
            return "Option Greek"
        elif 'vega' in equation_lower:
            return "Option Greek"
        elif 'theta' in equation_lower:
            return "Option Greek"
        elif 'rho' in equation_lower:
            return "Option Greek"
        elif 'kolmogorov' in equation_lower:
            return "Kolmogorov Equation"
        elif 'fokker-planck' in equation_lower:
            return "Fokker-Planck Equation"
        elif 'geometric' in equation_lower and 'series' in equation_lower:
            return "Geometric Series"
        elif 'lease' in equation_lower and 'rate' in equation_lower:
            return "Gold Lease Rate"
        elif 'forward' in equation_lower and 'points' in equation_lower:
            return "FX Forward Points"
        elif 'i-spread' in equation_lower or 'interpolated' in equation_lower:
            return "I-Spread (Interpolated Spread)"
        elif 'key rate' in equation_lower:
            return "Key Rate Duration"
        elif 'carry' in equation_lower:
            return "MBS Carry Return"
        elif 'cash flow' in equation_lower:
            return "MBS Cash Flow"
        elif 'crack' in equation_lower:
            return "Crack Spread"
        elif 'butterfly' in equation_lower:
            return "Butterfly Spread"
        elif 'straddle' in equation_lower:
            return "Straddle Option"
        elif 'strangle' in equation_lower:
            return "Strangle Option"
        elif 'collar' in equation_lower:
            return "Collar Option"
        elif 'cliquet' in equation_lower:
            return "Cliquet Option"
        elif 'chooser' in equation_lower:
            return "Chooser Option"
        elif 'barrier' in equation_lower:
            return "Barrier Option"
        elif 'asian' in equation_lower:
            return "Asian Option"
        elif 'lookback' in equation_lower:
            return "Lookback Option"
        elif 'digital' in equation_lower or 'binary' in equation_lower:
            return "Digital Option"
        elif 'variance' in equation_lower and 'swap' in equation_lower:
            return "Variance Swap"
        elif 'correlation' in equation_lower and 'swap' in equation_lower:
            return "Correlation Swap"
        elif 'total return' in equation_lower:
            return "Total Return Swap"
        elif 'dividend' in equation_lower:
            return "Dividend Model"
        elif 'repo' in equation_lower:
            return "Repo Rate Model"
        elif 'libor' in equation_lower:
            return "LIBOR Market Model"
        elif 'ois' in equation_lower:
            return "OIS Pricing"
        elif 'cross currency' in equation_lower or 'basis' in equation_lower:
            return "Cross Currency Basis"
        elif 'fva' in equation_lower:
            return "Funding Valuation Adjustment"
        elif 'kva' in equation_lower:
            return "Capital Valuation Adjustment"
        elif 'mva' in equation_lower:
            return "Margin Valuation Adjustment"
        
        # If still can't identify, use a more descriptive generic name based on line number
        if line_num < 50:
            return "Credit Risk Model Component"
        elif line_num < 150:
            return "Fixed Income Model Component"
        elif line_num < 250:
            return "Interest Rate Model Component"
        elif line_num < 400:
            return "Option Pricing Component"
        else:
            return "Advanced Financial Model"
    
    return title

def clean_notes_column(notes):
    """Clean up the Notes column by removing appended category names"""
    # Remove patterns like "| Category name" and "| Credit risk modeling framework"
    notes = re.sub(r'\s*\|\s*[^|]+$', '', notes)
    notes = notes.strip()
    return notes

def fix_truncated_equations(equation, title, line_num):
    """Fix incomplete equations"""
    
    # Fix the specific example from line 3
    if line_num == 3 and 'V = E[ max( S_T - S_0 exp((r+u)T)' in equation:
        equation = 'V = E[ max( S_T - S_0 exp((r+u)T), 0) ]'
    
    # Fix other common truncation patterns
    if equation.endswith('P(0,') and ('CDS' in title or 'Credit' in title):
        equation = equation + 't)'
    
    if equation.endswith('P(t,') and ('Swap' in title or 'Bond' in title):
        equation = equation + 'T_i)'
    
    if equation.endswith('sum_{i=1}^n') and 'coupon' in title.lower():
        equation = equation + ' c_i P(t,T_i)'
    
    if equation.endswith('Cov(') and 'convexity' in title.lower():
        equation = equation + ' int_t^T r_s ds, int_t^T r_s ds )'
    
    # Fix specific known truncated equations
    if 'frac{partial p(x,' in equation and not equation.endswith(']'):
        # This looks like a truncated Kolmogorov equation
        equation = equation.replace('frac{partial p(x,Fixed Income,t_0)}{partial t} = -frac{partial}{partial x}[mu(x | t)}{partial t} = -mu(x',
                                   'frac{partial p(x,t_0)}{partial t} = -frac{partial}{partial x}[mu(x,t) p(x,t)]')
    
    return equation

def consolidate_duplicates(records):
    """Consolidate duplicate entries"""
    
    # Create a dictionary to track unique equations by their mathematical content
    seen_equations = {}
    consolidated = []
    
    for record in records:
        title, equation, category, notes = record
        
        # Normalize equation for comparison (remove spaces, convert to lowercase)
        normalized_eq = re.sub(r'\s+', '', equation.lower())
        
        if normalized_eq in seen_equations:
            # This is a duplicate, consolidate the information
            original_idx = seen_equations[normalized_eq]
            original = consolidated[original_idx]
            
            # Combine titles if they're different
            if title != original[0] and title not in original[0]:
                consolidated[original_idx][0] = f"{original[0]} / {title}"
            
            # Combine notes if they're different
            if notes != original[3] and notes not in original[3]:
                consolidated[original_idx][3] = f"{original[3]} | {notes}"
        else:
            # This is a new unique equation
            seen_equations[normalized_eq] = len(consolidated)
            consolidated.append(record)
    
    return consolidated

def process_csv(input_file, output_file):
    """Main processing function"""
    
    records = []
    
    # Read the input CSV
    with open(input_file, 'r', encoding='utf-8') as f:
        reader = csv.reader(f)
        header = next(reader)  # Skip header
        
        for line_num, row in enumerate(reader, start=2):
            if len(row) != 4:
                continue  # Skip malformed rows
                
            title, equation, category, notes = row
            
            # Apply all fixes
            title = fix_numbered_prefixes(title)
            title = fix_discount_factor_entries(title, equation, line_num)
            title = fix_generic_titles(title, equation, line_num)
            equation = fix_truncated_equations(equation, title, line_num)
            notes = clean_notes_column(notes)
            
            records.append([title, equation, category, notes])
    
    # Consolidate duplicates
    records = consolidate_duplicates(records)
    
    # Write the corrected CSV
    with open(output_file, 'w', encoding='utf-8', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(header)
        writer.writerows(records)
    
    print(f"Processed {len(records)} records")
    return len(records)

if __name__ == "__main__":
    input_file = "/Users/rogerlin/Downloads/jules_session_7526197867548014752_consolidate-financial-equations-7526197867548014752 (1)/distilled_equations.csv"
    output_file = "/Users/rogerlin/Downloads/jules_session_7526197867548014752_consolidate-financial-equations-7526197867548014752 (1)/distilled_equations_corrected_v2.csv"
    
    count = process_csv(input_file, output_file)
    print(f"Successfully created corrected CSV with {count} records")
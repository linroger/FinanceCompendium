#!/usr/bin/env python3
"""
Financial Equations CSV Processor

This script processes a financial equations CSV file by:
1. Reading and parsing the CSV data
2. Filtering and consolidating equations (removing duplicates and non-mathematical ones)
3. Enhancing data with better names, categories, and informative notes
4. Outputting both CSV and Markdown formats

Key filtering criteria:
- Keep: Black-Scholes, stochastic calculus, interest rate models, credit models, numerical methods
- Remove: Quantum computing, most ESG/climate equations, bitcoin/crypto specific, extremely simple equations
"""

import pandas as pd
import re
import json
from typing import List, Dict, Tuple
import csv

# Categories for financial equations
CATEGORIES = {
    'Option Pricing': ['black-scholes', 'option', 'call', 'put', 'delta', 'gamma', 'vega', 'theta', 'rho'],
    'Stochastic Calculus': ['brownian', 'martingale', 'ito', 'girsanov', 'quadratic variation', 'stochastic'],
    'Interest Rate Models': ['vasicek', 'hull-white', 'heston', 'cir', 'forward rate', 'libor', 'swap', 'cap', 'floor'],
    'Credit Models': ['merton', 'structural', 'default', 'credit', 'cds', 'hazard', 'intensity'],
    'Volatility Models': ['sabr', 'garch', 'stochastic volatility', 'local volatility', 'implied volatility'],
    'Numerical Methods': ['monte carlo', 'finite difference', 'binomial', 'tree', 'numerical', 'quadrature'],
    'Portfolio Theory': ['markowitz', 'efficient frontier', 'var', 'cvar', 'portfolio', 'correlation', 'beta'],
    'Fixed Income': ['bond', 'duration', 'convexity', 'yield', 'discount', 'forward', 'mbs', 'prepayment'],
    'Exotic Options': ['asian', 'barrier', 'lookback', 'basket', 'rainbow', 'chooser', 'cliquet'],
    'Risk Management': ['var', 'cvar', 'expected shortfall', 'risk', 'exposure', 'hedging'],
    'Econometrics': ['regression', 'kalman', 'garch', 'arima', 'time series', 'forecast'],
    'Commodities': ['commodity', 'futures', 'convenience yield', 'storage', 'cost of carry'],
    'Foreign Exchange': ['fx', 'currency', 'forward', 'garman-kohlhagen', 'exchange'],
    'Machine Learning': ['neural', 'lstm', 'xgboost', 'reinforcement', 'learning', 'algorithm'],
    'Other Models': []
}

# Terms to exclude (non-mathematical or too specialized)
EXCLUDE_TERMS = [
    'quantum', 'grover', 'bitcoin', 'crypto', 'blockchain', 'staking', 'impermanent loss',
    'esg score', 'carbon intensity', 'decarbonization', 'science-based target', 'net zero',
    'green bond', 'greenium', 'sustainability-linked', 'climate var', 'stranded asset',
    'impact investing', 'transmission option', 'battery storage', 'wind power', 'solar power',
    'sentiment index', 'vpin', 'latency arbitrage', 'roll spread'
]

# Simple/obvious equations to exclude
SIMPLE_EQUATIONS = [
    'npv', 'irr', 'wacc', 'hpr', 'r_g', 'y_real', 'holding period return',
    'geometric average return', 'yield to maturity', 'macaulay duration'
]

def categorize_equation(title: str, equation: str, description: str) -> str:
    """Assign a main category to an equation based on its content."""
    text = (title + ' ' + equation + ' ' + description).lower()
    
    for category, keywords in CATEGORIES.items():
        if any(keyword in text for keyword in keywords):
            return category
    
    return 'Other Models'

def should_exclude_equation(title: str, equation: str, description: str) -> bool:
    """Determine if an equation should be excluded based on content."""
    text = (title + ' ' + equation + ' ' + description).lower()
    title_lower = title.lower()
    
    # Exclude based on terms
    if any(term in text for term in EXCLUDE_TERMS):
        return True
    
    # Exclude simple/obvious equations
    if any(term in title_lower for term in SIMPLE_EQUATIONS):
        return True
    
    # Exclude untitled equations that are too simple
    if 'untitled equation' in title_lower:
        # Check if equation is too simple (just a variable definition or basic arithmetic)
        if len(equation.strip()) < 10 or re.match(r'^[a-zA-Z_][a-zA-Z0-9_]*\s*=\s*[a-zA-Z0-9_\s+\-*/()]+$', equation.strip()):
            return True
    
    # Exclude equations that are just variable definitions
    if re.match(r'^[a-zA-Z_][a-zA-Z0-9_]*\s*=\s*[a-zA-Z_][a-zA-Z0-9_]*$', equation.strip()):
        return True
    
    return False

def normalize_equation(equation: str) -> str:
    """Normalize equation for comparison (remove spaces, convert to lowercase)."""
    return re.sub(r'\s+', '', equation.lower())

def equations_are_similar(eq1: str, eq2: str, threshold: float = 0.8) -> bool:
    """Check if two equations are similar (for duplicate detection)."""
    norm1 = normalize_equation(eq1)
    norm2 = normalize_equation(eq2)
    
    # Exact match
    if norm1 == norm2:
        return True
    
    # Check if one is a substring of the other (indicating a variation)
    if len(norm1) > 10 and len(norm2) > 10:
        if norm1 in norm2 or norm2 in norm1:
            return True
    
    # For longer equations, check similarity ratio
    if len(norm1) > 20 and len(norm2) > 20:
        from difflib import SequenceMatcher
        similarity = SequenceMatcher(None, norm1, norm2).ratio()
        return similarity > threshold
    
    return False

def enhance_equation_name(title: str, equation: str, description: str) -> str:
    """Enhance generic equation names with more descriptive titles."""
    if 'untitled equation' not in title.lower():
        return title
    
    # Try to identify the equation from its content
    eq_lower = equation.lower()
    desc_lower = description.lower()
    
    # Common financial equations
    if 'dW' in eq_lower and 'dt' in eq_lower:
        if 'brownian' in desc_lower:
            return 'Brownian Motion SDE'
        elif 'stochastic' in desc_lower:
            return 'Stochastic Differential Equation'
        else:
            return 'Ito Process'
    
    if 'n(' in eq_lower and 'd_' in eq_lower:
        return 'Black-Scholes Component'
    
    if 'var' in eq_lower and 'cov' in eq_lower:
        return 'Covariance Structure'
    
    if 'e^' in eq_lower and 'r' in eq_lower:
        return 'Discount Factor'
    
    if 'phi' in eq_lower:
        return 'Normal Distribution Function'
    
    if 'rho' in eq_lower and 'dt' in eq_lower:
        return 'Correlation Structure'
    
    # Return a generic but more descriptive name
    return f'Stochastic Process Equation'

def enhance_notes(title: str, equation: str, description: str, category: str) -> str:
    """Enhance notes to be more informative."""
    notes = []
    
    if description and description.strip():
        notes.append(description.strip())
    
    # Add category-specific context
    if category == 'Option Pricing':
        notes.append('Fundamental option pricing relationship used in derivatives valuation.')
    elif category == 'Stochastic Calculus':
        notes.append('Core mathematical foundation for continuous-time finance models.')
    elif category == 'Interest Rate Models':
        notes.append('Term structure model for interest rate derivatives pricing.')
    elif category == 'Credit Models':
        notes.append('Credit risk modeling framework for default probability assessment.')
    elif category == 'Volatility Models':
        notes.append('Volatility modeling approach for smile and surface dynamics.')
    elif category == 'Numerical Methods':
        notes.append('Computational technique for pricing complex derivatives.')
    
    # Add mathematical context based on equation form
    if 'dW' in equation:
        notes.append('Stochastic process driven by Brownian motion.')
    if 'N(' in equation or 'Phi(' in equation:
        notes.append('Involves standard normal distribution functions.')
    if 'e^' in equation:
        notes.append('Exponential form typical in continuous compounding.')
    
    return ' | '.join(notes) if notes else 'Financial mathematical relationship.'

def process_financial_equations(input_file: str, output_csv: str, output_md: str) -> None:
    """Main processing function."""
    print(f"Reading input file: {input_file}")
    
    # Read CSV file
    try:
        df = pd.read_csv(input_file)
    except Exception as e:
        print(f"Error reading CSV file: {e}")
        return
    
    print(f"Total equations read: {len(df)}")
    
    # Clean and validate data
    df = df.dropna(subset=['Title', 'Equation'])
    df = df.fillna({'Description': ''})
    
    print(f"Equations after removing empty titles/equations: {len(df)}")
    
    # Filter out non-mathematical equations
    filtered_df = df[~df.apply(lambda row: should_exclude_equation(
        str(row['Title']), str(row['Equation']), str(row['Description'])
    ), axis=1)]
    
    print(f"Equations after filtering exclusions: {len(filtered_df)}")
    
    # Remove duplicates and near-duplicates
    unique_equations = []
    seen_equations = []
    
    for _, row in filtered_df.iterrows():
        title = str(row['Title']).strip()
        equation = str(row['Equation']).strip()
        description = str(row['Description']).strip()
        
        # Check if this equation is similar to any we've seen
        is_duplicate = False
        for seen_eq in seen_equations:
            if equations_are_similar(equation, seen_eq):
                is_duplicate = True
                break
        
        if not is_duplicate:
            unique_equations.append({
                'Title': title,
                'Equation': equation,
                'Description': description
            })
            seen_equations.append(equation)
    
    print(f"Equations after removing duplicates: {len(unique_equations)}")
    
    # Enhance and categorize equations
    enhanced_equations = []
    
    for eq in unique_equations:
        # Enhance title
        enhanced_title = enhance_equation_name(eq['Title'], eq['Equation'], eq['Description'])
        
        # Assign category
        category = categorize_equation(enhanced_title, eq['Equation'], eq['Description'])
        
        # Enhance notes
        notes = enhance_notes(enhanced_title, eq['Equation'], eq['Description'], category)
        
        enhanced_equations.append({
            'Title': enhanced_title,
            'Equation': eq['Equation'],
            'Main_Category': category,
            'Notes': notes
        })
    
    # Sort by category and then by title
    enhanced_equations.sort(key=lambda x: (x['Main_Category'], x['Title']))
    
    # Limit to target range (300-500 equations)
    target_count = min(500, max(300, len(enhanced_equations)))
    final_equations = enhanced_equations[:target_count]
    
    print(f"Final equation count: {len(final_equations)}")
    
    # Write CSV output
    print(f"Writing CSV output: {output_csv}")
    with open(output_csv, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=['Title', 'Equation', 'Main_Category', 'Notes'])
        writer.writeheader()
        writer.writerows(final_equations)
    
    # Write Markdown output
    print(f"Writing Markdown output: {output_md}")
    with open(output_md, 'w', encoding='utf-8') as f:
        f.write("# Financial Equations Reference\n\n")
        f.write("A curated collection of essential financial mathematical equations for quantitative finance.\n\n")
        
        current_category = None
        for eq in final_equations:
            if eq['Main_Category'] != current_category:
                current_category = eq['Main_Category']
                f.write(f"\n## {current_category}\n\n")
            
            f.write(f"### {eq['Title']}\n\n")
            f.write(f"**Equation:** `{eq['Equation']}`\n\n")
            f.write(f"**Category:** {eq['Main_Category']}\n\n")
            if eq['Notes']:
                f.write(f"**Notes:** {eq['Notes']}\n\n")
            f.write("---\n\n")
    
    # Print summary statistics
    category_counts = {}
    for eq in final_equations:
        category = eq['Main_Category']
        category_counts[category] = category_counts.get(category, 0) + 1
    
    print("\nCategory distribution:")
    for category, count in sorted(category_counts.items()):
        print(f"  {category}: {count}")
    
    print(f"\nProcessing complete! Generated {len(final_equations)} equations.")
    print(f"CSV output: {output_csv}")
    print(f"Markdown output: {output_md}")

if __name__ == "__main__":
    input_file = "/Users/rogerlin/Downloads/jules_session_7526197867548014752_consolidate-financial-equations-7526197867548014752 (1)/consolidated_equations.csv"
    output_csv = "/Users/rogerlin/Downloads/jules_session_7526197867548014752_consolidate-financial-equations-7526197867548014752 (1)/distilled_equations.csv"
    output_md = "/Users/rogerlin/Downloads/jules_session_7526197867548014752_consolidate-financial-equations-7526197867548014752 (1)/distilled_equations.md"
    
    process_financial_equations(input_file, output_csv, output_md)
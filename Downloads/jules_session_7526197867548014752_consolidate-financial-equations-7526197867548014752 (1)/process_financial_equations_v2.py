#!/usr/bin/env python3
"""
Financial Equations CSV Processor - Optimized Version
"""

import pandas as pd
import re
import csv
from collections import defaultdict

def main():
    print("Reading input file...")
    df = pd.read_csv("/Users/rogerlin/Downloads/jules_session_7526197867548014752_consolidate-financial-equations-7526197867548014752 (1)/consolidated_equations.csv")
    print(f"Total rows: {len(df)}")
    
    # Clean data
    df = df.dropna(subset=['Title', 'Equation'])
    df['Description'] = df['Description'].fillna('')
    print(f"After cleaning: {len(df)}")
    
    # Filter out unwanted equations
    filtered = []
    exclude_patterns = [
        r'quantum', r'bitcoin', r'crypto', r'blockchain', r'staking', r'impermanent loss',
        r'esg score', r'carbon intensity', r'decarbonization', r'science-based target', r'net zero',
        r'green bond', r'greenium', r'sustainability-linked', r'climate var', r'stranded asset',
        r'impact investing', r'transmission option', r'battery storage', r'wind power', r'solar power',
        r'sentiment index', r'vpin', r'latency arbitrage', r'roll spread', r'grover'
    ]
    
    simple_patterns = [
        r'^npv$', r'^irr$', r'^wacc$', r'^hpr$', r'^r_g$', r'^y_real$',
        r'^holding period return$', r'^geometric average return$', r'^yield to maturity$',
        r'^macaulay duration$', r'^npv\s*=\s*', r'^irr\s*=\s*', r'^wacc\s*=\s*'
    ]
    
    for _, row in df.iterrows():
        title = str(row['Title']).lower()
        equation = str(row['Equation']).lower()
        description = str(row['Description']).lower()
        
        # Skip excluded terms
        text = title + ' ' + equation + ' ' + description
        if any(re.search(pattern, text) for pattern in exclude_patterns):
            continue
            
        # Skip simple equations
        if any(re.search(pattern, title) for pattern in simple_patterns):
            continue
            
        # Skip untitled equations that are too simple
        if 'untitled equation' in title and len(equation.strip()) < 15:
            continue
            
        filtered.append({
            'Title': row['Title'],
            'Equation': row['Equation'],
            'Description': row['Description']
        })
    
    print(f"After filtering: {len(filtered)}")
    
    # Remove duplicates
    unique = []
    seen = set()
    
    for item in filtered:
        # Create a simple hash for comparison
        eq_norm = re.sub(r'\s+', '', item['Equation'].lower())
        
        # Skip if we've seen a similar equation
        if eq_norm in seen:
            continue
            
        seen.add(eq_norm)
        unique.append(item)
    
    print(f"After deduplication: {len(unique)}")
    
    # Categorize and enhance
    categories = {
        'Option Pricing': ['black-scholes', 'option', 'call', 'put', 'delta', 'gamma', 'vega', 'theta', 'rho'],
        'Stochastic Calculus': ['brownian', 'martingale', 'ito', 'girsanov', 'quadratic variation', 'stochastic'],
        'Interest Rate Models': ['vasicek', 'hull-white', 'heston', 'cir', 'forward rate', 'libor', 'swap', 'cap', 'floor'],
        'Credit Models': ['merton', 'structural', 'default', 'credit', 'cds', 'hazard', 'intensity'],
        'Volatility Models': ['sabr', 'garch', 'stochastic volatility', 'local volatility', 'implied volatility'],
        'Numerical Methods': ['monte carlo', 'finite difference', 'binomial', 'tree', 'numerical'],
        'Portfolio Theory': ['markowitz', 'efficient frontier', 'var', 'cvar', 'portfolio', 'correlation'],
        'Fixed Income': ['bond', 'duration', 'convexity', 'yield', 'discount', 'forward', 'mbs'],
        'Exotic Options': ['asian', 'barrier', 'lookback', 'basket', 'rainbow', 'chooser', 'cliquet'],
        'Risk Management': ['var', 'cvar', 'expected shortfall', 'risk', 'exposure'],
        'Econometrics': ['regression', 'kalman', 'garch', 'arima', 'time series'],
        'Commodities': ['commodity', 'futures', 'convenience yield', 'storage'],
        'Foreign Exchange': ['fx', 'currency', 'forward', 'garman-kohlhagen'],
        'Machine Learning': ['neural', 'lstm', 'xgboost', 'reinforcement'],
        'Other Models': []
    }
    
    def categorize(title, equation, desc):
        text = (title + ' ' + equation + ' ' + desc).lower()
        for cat, keywords in categories.items():
            if any(keyword in text for keyword in keywords):
                return cat
        return 'Other Models'
    
    def enhance_title(title, equation, desc):
        if 'untitled equation' not in title.lower():
            return title
        
        eq_lower = equation.lower()
        if 'dW' in eq_lower and 'dt' in eq_lower:
            return 'Stochastic Process'
        elif 'n(' in eq_lower and 'd_' in eq_lower:
            return 'Black-Scholes Component'
        elif 'var' in eq_lower and 'cov' in eq_lower:
            return 'Covariance Structure'
        elif 'e^' in eq_lower and 'r' in eq_lower:
            return 'Discount Factor'
        elif 'phi' in eq_lower:
            return 'Normal Distribution Function'
        else:
            return 'Mathematical Relationship'
    
    def enhance_notes(title, equation, desc, category):
        notes = []
        if desc and desc.strip():
            notes.append(desc.strip())
        
        category_notes = {
            'Option Pricing': 'Fundamental option pricing relationship',
            'Stochastic Calculus': 'Core mathematical foundation for continuous-time finance',
            'Interest Rate Models': 'Term structure model for interest rate derivatives',
            'Credit Models': 'Credit risk modeling framework',
            'Volatility Models': 'Volatility modeling approach',
            'Numerical Methods': 'Computational technique for pricing',
            'Portfolio Theory': 'Portfolio optimization and risk analysis',
            'Fixed Income': 'Bond and interest rate analysis',
            'Exotic Options': 'Complex derivative instrument',
            'Risk Management': 'Risk measurement and management',
            'Econometrics': 'Statistical modeling technique',
            'Commodities': 'Commodity pricing model',
            'Foreign Exchange': 'Currency and FX modeling',
            'Machine Learning': 'AI/ML technique for finance'
        }
        
        if category in category_notes:
            notes.append(category_notes[category])
        
        return ' | '.join(notes) if notes else 'Financial mathematical relationship'
    
    # Process all items
    final_items = []
    for item in unique:
        enhanced_title = enhance_title(item['Title'], item['Equation'], item['Description'])
        category = categorize(enhanced_title, item['Equation'], item['Description'])
        notes = enhance_notes(enhanced_title, item['Equation'], item['Description'], category)
        
        final_items.append({
            'Title': enhanced_title,
            'Equation': item['Equation'],
            'Main_Category': category,
            'Notes': notes
        })
    
    # Sort and limit
    final_items.sort(key=lambda x: (x['Main_Category'], x['Title']))
    target_count = min(500, max(300, len(final_items)))
    final_items = final_items[:target_count]
    
    print(f"Final count: {len(final_items)}")
    
    # Write outputs
    with open("/Users/rogerlin/Downloads/jules_session_7526197867548014752_consolidate-financial-equations-7526197867548014752 (1)/distilled_equations.csv", 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=['Title', 'Equation', 'Main_Category', 'Notes'])
        writer.writeheader()
        writer.writerows(final_items)
    
    with open("/Users/rogerlin/Downloads/jules_session_7526197867548014752_consolidate-financial-equations-7526197867548014752 (1)/distilled_equations.md", 'w', encoding='utf-8') as f:
        f.write("# Financial Equations Reference\n\n")
        f.write("A curated collection of essential financial mathematical equations for quantitative finance.\n\n")
        
        current_category = None
        for item in final_items:
            if item['Main_Category'] != current_category:
                current_category = item['Main_Category']
                f.write(f"\n## {current_category}\n\n")
            
            f.write(f"### {item['Title']}\n\n")
            f.write(f"**Equation:** `{item['Equation']}`\n\n")
            f.write(f"**Category:** {item['Main_Category']}\n\n")
            if item['Notes']:
                f.write(f"**Notes:** {item['Notes']}\n\n")
            f.write("---\n\n")
    
    # Print stats
    category_counts = defaultdict(int)
    for item in final_items:
        category_counts[item['Main_Category']] += 1
    
    print("\nCategory distribution:")
    for cat, count in sorted(category_counts.items()):
        print(f"  {cat}: {count}")

if __name__ == "__main__":
    main()
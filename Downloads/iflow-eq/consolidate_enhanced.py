#!/usr/bin/env python3
"""
Consolidate all enhanced category files into a single master CSV
"""

import pandas as pd
from pathlib import Path


def main():
    base_path = Path('/Users/rogerlin/Downloads/iflow-eq')

    # List of enhanced category files
    enhanced_files = [
        'category1_foundations_enhanced_final.csv',
        'category2_fixed_income_enhanced_final.csv',
        'category3_equity_derivatives_enhanced_final.csv',
        'category4_fixed_income_derivatives_enhanced_final.csv',
        'category5_credit_derivatives_enhanced_final.csv',
        'category6_portfolio_theory_enhanced_final.csv',
        'category7_stochastic_calculus_enhanced_final.csv',
        'category8_corporate_finance_enhanced_final.csv',
        'category8_numerical_methods_enhanced_final.csv',
        'category9_advanced_topics_enhanced_final.csv',
        'category9_alternative_investments_enhanced_final.csv',
        'category10_fx_derivatives_enhanced_final.csv',
    ]

    all_data = []
    total = 0

    for filename in enhanced_files:
        filepath = base_path / filename
        if filepath.exists():
            df = pd.read_csv(filepath)
            all_data.append(df)
            total += len(df)
            print(f"  {filename}: {len(df)} equations")
        else:
            print(f"  WARNING: {filename} not found")

    # Concatenate all dataframes
    master_df = pd.concat(all_data, ignore_index=True)

    # Save to master file
    output_path = base_path / 'financial_equations_master_enhanced.csv'
    master_df.to_csv(output_path, index=False)

    print(f"\nTotal equations consolidated: {total}")
    print(f"Master file saved to: {output_path}")


if __name__ == '__main__':
    main()

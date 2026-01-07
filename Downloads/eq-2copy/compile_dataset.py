#!/usr/bin/env python3
"""
Compile financial equations from all category JSONL files into:
1. financial_equations_dataset.jsonl
2. financial_equations_dataset.csv
3. financial_equations_primer.md

Fixed version that handles escaped backslashes properly.
"""

import json
import csv
import os
import re
from pathlib import Path

# Define category mapping
jsonl_files = {
    "Options": "options_pricing_jsonl.txt",
    "Fixed Income": "fixed_income_jsonl.txt",
    "Risk Metrics": "risk_metrics_jsonl.txt",
    "Interest Rate Derivatives": "ir_derivatives_jsonl.txt",
    "Credit Risk": "credit_risk_jsonl.txt",
    "Portfolio Theory": "portfolio_jsonl.txt",
    "Stochastic Processes": "stochastic_jsonl.txt",
    "Volatility Models": "volatility_jsonl.txt",
    "FX Derivatives": "fx_derivatives_jsonl.txt",
    "Commodity Derivatives": "commodity_jsonl.txt",
    "Exotic Options": "exotic_jsonl.txt",
}

def clean_equation(eq):
    """Remove any LaTeX delimiters that may have slipped through"""
    eq = re.sub(r'\$', '', eq)
    return eq.strip()

def parse_jsonl_file(filepath):
    """Parse a JSONL file and return list of records"""
    records = []
    with open(filepath, 'r', encoding='utf-8') as f:
        for line_num, line in enumerate(f, 1):
            line = line.strip()
            if line:
                try:
                    # Handle double-escaped backslashes
                    line_unescaped = line.encode().decode('unicode_escape')
                    records.append(json.loads(line_unescaped))
                except (json.JSONDecodeError, UnicodeDecodeError) as e:
                    print(f"Error parsing line {line_num}: {str(e)[:80]}")
                    # Try a different approach - raw string
                    try:
                        records.append(json.loads(line))
                    except json.JSONDecodeError as e2:
                        print(f"  Failed again: {str(e2)[:80]}")
    return records

def deduplicate_records(records):
    """Deduplicate records by title, keeping first occurrence"""
    seen = set()
    deduped = []
    for record in records:
        title = record['title']
        if title not in seen:
            seen.add(title)
            deduped.append(record)
        else:
            print(f"  Duplicate removed: {title}")
    return deduped

def convert_jsonl_to_csv(records, output_path):
    """Convert JSONL records to CSV format"""
    fieldnames = ['title', 'equation', 'category', 'tags', 'notes']
    
    with open(output_path, 'w', encoding='utf-8', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames, quoting=csv.QUOTE_ALL)
        writer.writeheader()
        
        for record in records:
            tags_str = '; '.join(record.get('tags', []))
            notes = record.get('note', '')
            
            writer.writerow({
                'title': record['title'],
                'equation': clean_equation(record['equation']),
                'category': record['category'],
                'tags': tags_str,
                'notes': notes
            })

def create_primer(records, output_path):
    """Create markdown primer with expanded explanations"""
    
    categories = {}
    for record in records:
        cat = record['category']
        if cat not in categories:
            categories[cat] = []
        categories[cat].append(record)
    
    primer = """# Financial Mathematics Equations Primer

This primer provides a comprehensive reference for the significant equations used in the pricing, risk management, and analysis of financial instruments and derivatives. Each section corresponds to a main category and includes detailed explanations of the equations within.

---

"""
    
    category_order = [
        ("Options", "## Options Pricing\n\nThe Options category encompasses the foundational models for pricing and hedging options on various underlying assets. This includes the Black-Scholes framework for European options, binomial tree methods for American options, and the comprehensive family of Greeks that measure sensitivity to various parameters.\n\n### Subcategories\n- **European Options**: Black-Scholes model and closed-form solutions\n- **American Options**: Binomial and trinomial tree methods\n- **Greeks**: Delta, Gamma, Vega, Theta, Rho, Vanna, Volga\n- **Implied Volatility**: Calibration and surface construction"),
        ("Fixed Income", "## Fixed Income and Bond Pricing\n\nFixed Income covers the mathematics of bond valuation, yield curve construction, and interest rate risk measures. This includes both the fundamental pricing formulas for coupon and zero-coupon bonds, as well as the modern term structure models that capture the dynamics of interest rates.\n\n### Subcategories\n- **Bond Pricing**: Zero-coupon and coupon-bearing bond valuation\n- **Duration and Convexity**: Interest rate sensitivity measures\n- **Term Structure Models**: Vasicek, CIR, Hull-White, and affine models\n- **Yield Curve Construction**: Interpolation and bootstrapping methods"),
        ("Risk Metrics", "## Risk Metrics and Greeks\n\nRisk Metrics encompasses the quantitative measures used to assess and manage financial risk. This includes Value at Risk (VaR), Expected Shortfall, and the comprehensive family of option Greeks that measure sensitivity to various market parameters.\n\n### Subcategories\n- **Market Risk**: VaR, CVaR, stress testing\n- **Option Greeks**: Delta, Gamma, Vega, Theta, Rho and cross-Greeks\n- **Performance Metrics**: Sharpe, Sortino, Treynor ratios\n- **Portfolio Risk**: Variance, correlation, and aggregation methods"),
        ("Interest Rate Derivatives", "## Interest Rate Derivatives\n\nInterest Rate Derivatives covers the pricing and risk management of instruments whose value depends on interest rates. This includes swaps, caps, floors, swaptions, and the term structure models that underpin their valuation.\n\n### Subcategories\n- **Interest Rate Swaps**: Fixed-for-floating exchanges and basis swaps\n- **Cap/Floor**: Interest rate options using Black's model\n- **Swaptions**: Options on swaps\n- **Term Structure**: Forward rates and multi-curve framework"),
        ("Credit Risk", "## Credit Risk and CVA/DVA\n\nCredit Risk addresses the mathematics of default risk, credit spreads, and counterparty credit exposure. This includes both structural models (Merton) and reduced-form (intensity) models, as well as valuation adjustments.\n\n### Subcategories\n- **Default Probability**: Hazard rates and survival probabilities\n- **CVA/DVA**: Counterparty valuation adjustments\n- **Credit Derivatives**: CDS, CDOs, and credit indices\n- **Structural Models**: Merton, Black-Cox first-passage"),
        ("Portfolio Theory", "## Portfolio Theory and CAPM\n\nPortfolio Theory covers the mathematics of optimal portfolio construction and asset pricing. This includes mean-variance optimization, the Capital Asset Pricing Model, and related performance and risk measures.\n\n### Subcategories\n- **Mean-Variance Optimization**: Portfolio variance and efficient frontier\n- **CAPM**: Beta, alpha, and the Security Market Line\n- **Performance Ratios**: Sharpe, Information, Treynor ratios\n- **Risk Budgeting**: Risk parity and factor models"),
        ("Stochastic Processes", "## Stochastic Processes and Martingales\n\nStochastic Processes provides the mathematical foundation for modeling asset price dynamics and derivative pricing. This includes Itô calculus, change of measure, and the martingale approach to pricing.\n\n### Subcategories\n- **Diffusion Processes**: GBM, OU, CIR models\n- **Stochastic Calculus**: Itô's Lemma and stochastic integrals\n- **Change of Measure**: Girsanov theorem and risk-neutral pricing\n- **Feynman-Kac**: Connection between SDEs and PDEs"),
        ("Volatility Models", "## Volatility Models and Calibration\n\nVolatility Models addresses the estimation and forecasting of asset volatility, including GARCH models, realized volatility measures, and the volatility smile/surface.\n\n### Subcategories\n- **GARCH Models**: Conditional variance and persistence\n- **Realized Volatility**: High-frequency estimation methods\n- **Range-Based Estimators**: Parkinson, Garman-Klass\n- **Volatility Surface**: SABR, smile/skew parametrization"),
        ("FX Derivatives", "## FX and Currency Derivatives\n\nFX Derivatives covers the pricing of foreign exchange instruments including forwards, options, and cross-currency products. This includes covered interest parity and the Garman-Kohlhagen currency option model.\n\n### Subcategories\n- **FX Forwards**: Covered interest parity and forward pricing\n- **Currency Options**: Garman-Kohlhagen model\n- **Cross-Currency Products**: Basis swaps and quantos\n- **FX Risk Measures**: Delta, gamma, vega for FX options"),
        ("Commodity Derivatives", "## Commodity Derivatives and Energy\n\nCommodity Derivatives addresses the unique characteristics of commodity markets, including storage costs, convenience yields, and the mean-reverting nature of energy prices.\n\n### Subcategories\n- **Cost of Carry**: Futures pricing with storage and convenience yield\n- **Spread Options**: Kirk's approximation and crack spreads\n- **Energy Models**: Mean-reverting spot and Schwartz models\n- **Spark/Crack Spreads**: Electricity and refinery margin products"),
        ("Exotic Options", "## Exotic Options and Path-Dependent Derivatives\n\nExotic Options covers non-vanilla option structures whose payoff depends on the path of the underlying price or other exotic features. This includes Asian, barrier, lookback, and compound options.\n\n### Subcategories\n- **Asian Options**: Average price and average strike variants\n- **Barrier Options**: Knock-in, knock-out, and rebate features\n- **Lookback Options**: Floating and fixed strike variants\n- **Compound Options**: Options on options (Geske's model)"),
    ]
    
    for cat_name, intro_text in category_order:
        if cat_name in categories:
            primer += intro_text + "\n\n"
            
            for record in sorted(categories[cat_name], key=lambda x: x['title']):
                primer += f"### {record['title']}\n\n"
                primer += f"**Equation:**\n\n"
                primer += f"```\n{clean_equation(record['equation'])}\n```\n\n"
                primer += f"{record['note']}\n\n"
                primer += "---\n\n"
    
    primer += """---

## Appendices

### A. Mathematical Notation Reference

| Symbol | Meaning |
|--------|---------|
| $S_0$ | Spot price at time 0 |
| $K$ | Strike price |
| $r$ | Risk-free interest rate |
| $T$ | Time to maturity |
| $\\sigma$ | Volatility |
| $N(\\cdot)$ | Standard normal CDF |
| $\\mathbb{E}$ | Expectation operator |
| $\\mathbb{Q}$ | Risk-neutral measure |
| $\\mathcal{F}_t$ | Filtration at time $t$ |

### B. Model Assumptions Summary

1. **Black-Scholes**: Lognormal dynamics, constant parameters, frictionless markets
2. **Binomial Trees**: Recombining price lattice, no early exercise (European)
3. **GARCH(1,1)**: Conditional normality, stationarity
4. **Vasicek/ CIR/ Hull-White**: Affine term structure, mean reversion

### C. Practical Calibration Notes

- **Implied Volatility**: Solve using Newton-Raphson or bisection
- **GARCH Parameters**: Maximum likelihood estimation
- **Term Structure**: Bootstrap from market instruments
- **Credit Spreads**: Calibrate to CDS or bond prices

---

*This primer is automatically generated from the financial_equations_dataset.*
"""
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(primer)

def main():
    working_dir = Path('.')
    all_records = []
    
    print("Reading category JSONL files...")
    for cat_name, filename in jsonl_files.items():
        filepath = working_dir / filename
        if filepath.exists():
            records = parse_jsonl_file(filepath)
            print(f"  {cat_name}: {len(records)} records")
            all_records.extend(records)
        else:
            print(f"  WARNING: {filename} not found")
    
    print(f"\nTotal records before deduplication: {len(all_records)}")
    
    # Deduplicate
    all_records = deduplicate_records(all_records)
    print(f"Total records after deduplication: {len(all_records)}")
    
    # Write consolidated JSONL
    jsonl_path = working_dir / 'financial_equations_dataset.jsonl'
    with open(jsonl_path, 'w', encoding='utf-8') as f:
        for record in all_records:
            json_line = json.dumps(record, ensure_ascii=False)
            f.write(json_line + '\n')
    print(f"\nWritten: {jsonl_path}")
    
    # Write CSV
    csv_path = working_dir / 'financial_equations_dataset.csv'
    convert_jsonl_to_csv(all_records, csv_path)
    print(f"Written: {csv_path}")
    
    # Write primer
    primer_path = working_dir / 'financial_equations_primer.md'
    create_primer(all_records, primer_path)
    print(f"Written: {primer_path}")
    
    print("\nCompilation complete!")

if __name__ == '__main__':
    main()

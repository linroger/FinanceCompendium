#!/usr/bin/env python3
"""
Analyze enhanced_interest_rate_models_complete.csv for duplicates and near-duplicates.
"""
import csv
import re
from collections import defaultdict

def normalize_equation(eq):
    """Normalize equation for comparison by removing whitespace and standardizing symbols."""
    # Remove extra whitespace
    eq = re.sub(r'\s+', '', eq)
    # Standardize common symbols
    eq = eq.replace('β', 'beta')
    eq = eq.replace('λ', 'lambda')
    eq = eq.replace('σ', 'sigma')
    eq = eq.replace('Φ', 'Phi')
    eq = eq.replace('φ', 'phi')
    eq = eq.replace('ρ', 'rho')
    eq = eq.replace('τ', 'tau')
    eq = eq.replace('𝔼', 'E')
    eq = eq.replace('≈', '~=')
    return eq

def extract_core_formula(eq):
    """Extract core formula from equation (without E[] for expected values)."""
    # Remove expected value notation for comparison
    eq = re.sub(r'E\[(.*?)\]', r'\1', eq)
    eq = re.sub(r'𝔼\[(.*?)\]', r'\1', eq)
    return eq

def read_equations(filename):
    """Read equations from CSV file."""
    equations = []
    with open(filename, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for i, row in enumerate(reader, 1):
            equations.append({
                'index': i,
                'title': row['Title'],
                'equation': row['Equation'],
                'category': row['Main_Category'],
                'notes': row['Notes']
            })
    return equations

def find_exact_duplicates(equations):
    """Find exact duplicate equations."""
    eq_map = defaultdict(list)
    for eq in equations:
        eq_map[eq['equation']].append(eq)

    duplicates = {k: v for k, v in eq_map.items() if len(v) > 1}
    return duplicates

def find_near_duplicates(equations):
    """Find semantically similar equations that could be consolidated."""
    # Look for common patterns
    similar_groups = []

    # Group 1: CAPM variations
    capm_equations = []
    for eq in equations:
        title = eq['title'].lower()
        if 'capm' in title or 'capital asset pricing' in title:
            capm_equations.append(eq)

    if len(capm_equations) > 1:
        similar_groups.append({
            'type': 'CAPM Variations',
            'equations': capm_equations
        })

    # Group 2: Black-76 variations
    black76_equations = []
    for eq in equations:
        title = eq['title'].lower()
        if 'black-76' in title and ('caplet' in title or 'floorlet' in title):
            black76_equations.append(eq)

    if len(black76_equations) > 1:
        similar_groups.append({
            'type': 'Black-76 Caplet/Floorlet',
            'equations': black76_equations
        })

    # Group 3: Swaption pricing
    swaption_equations = []
    for eq in equations:
        title = eq['title'].lower()
        if 'swaption' in title:
            swaption_equations.append(eq)

    if len(swaption_equations) > 1:
        similar_groups.append({
            'type': 'Swaption Pricing Models',
            'equations': swaption_equations
        })

    # Group 4: Swap valuation
    swap_equations = []
    for eq in equations:
        title = eq['title'].lower()
        if 'swap' in title and ('valuation' in title or 'pricing' in title):
            swap_equations.append(eq)

    if len(swap_equations) > 1:
        similar_groups.append({
            'type': 'Swap Valuation Models',
            'equations': swap_equations
        })

    return similar_groups

def analyze_notes_similarity(eq1, eq2):
    """Check if notes describe similar concepts."""
    notes1 = eq1['notes'].lower()
    notes2 = eq2['notes'].lower()

    # Extract key terms
    terms1 = set(re.findall(r'\b\w+\b', notes1))
    terms2 = set(re.findall(r'\b\w+\b', notes2))

    common = terms1 & terms2
    similarity = len(common) / max(len(terms1), len(terms2)) if max(len(terms1), len(terms2)) > 0 else 0

    return similarity > 0.5  # High threshold for semantic similarity

def main():
    filename = 'enhanced_interest_rate_models_complete.csv'

    print("Reading equations from file...")
    equations = read_equations(filename)
    print(f"Total equations read: {len(equations)}\n")

    print("=" * 80)
    print("ANALYSIS REPORT")
    print("=" * 80)

    # Find exact duplicates
    print("\n1. EXACT DUPLICATES:")
    print("-" * 80)
    exact_dupes = find_exact_duplicates(equations)

    if exact_dupes:
        for eq_str, eq_list in exact_dupes.items():
            print(f"\nDuplicate Equation: {eq_str}")
            print(f"  Found {len(eq_list)} times:")
            for eq in eq_list:
                print(f"    - Line {eq['index']}: {eq['title']}")
    else:
        print("No exact duplicates found.")

    # Find near duplicates
    print("\n\n2. NEAR-DUPLICATES (Similar Equations):")
    print("-" * 80)
    near_dupes = find_near_duplicates(equations)

    for group in near_dupes:
        print(f"\n{group['type']} ({len(group['equations'])} equations):")
        for eq in group['equations']:
            print(f"    Line {eq['index']}: {eq['title']}")
            print(f"      Equation: {eq['equation'][:80]}...")

    # Manual inspection of specific patterns
    print("\n\n3. MANUAL INSPECTION PATTERNS:")
    print("-" * 80)

    # Check for equation patterns that might indicate duplicates
    pattern_matches = defaultdict(list)

    for eq in equations:
        eq_norm = normalize_equation(eq['equation'])

        # Look for similar structure patterns
        if 'beta' in eq_norm and 'R_f' in eq_norm:
            pattern_matches['CAPM_structure'].append(eq)
        elif 'Phi' in eq_norm or 'd_1' in eq_norm:
            pattern_matches['Black_style'].append(eq)
        elif 'P(0' in eq_norm and 'tau' in eq_norm:
            pattern_matches['Present_value_structure'].append(eq)

    for pattern, eqs in pattern_matches.items():
        if len(eqs) > 3:  # Only show if there are multiple
            print(f"\n{pattern} pattern ({len(eqs)} equations):")
            for eq in eqs[:5]:  # Show first 5
                print(f"  Line {eq['index']}: {eq['title']}")
            if len(eqs) > 5:
                print(f"  ... and {len(eqs)-5} more")

    print("\n\n4. CATEGORIZATION REVIEW:")
    print("-" * 80)
    category_count = defaultdict(int)
    for eq in equations:
        category_count[eq['category']] += 1

    print("\nEquation counts by category:")
    for cat, count in sorted(category_count.items(), key=lambda x: -x[1]):
        print(f"  {cat}: {count}")

    # Potential consolidation recommendations
    print("\n\n5. POTENTIAL CONSOLIDATIONS:")
    print("-" * 80)

    # Specific cases for consolidation
    consolidations = []

    # CAPM equations
    capm_items = []
    for eq in equations:
        if 'CAPM' in eq['title'] or 'Capital Asset Pricing' in eq['title']:
            capm_items.append(eq)
    if len(capm_items) > 1:
        consolidations.append({
            'type': 'CAPM',
            'count': len(capm_items),
            'lines': [eq['index'] for eq in capm_items]
        })

    # Black-76 caplets/floorlets
    black76_items = []
    for eq in equations:
        title = eq['title']
        if 'Black-76' in title and ('Caplet' in title or 'Floorlet' in title):
            black76_items.append(eq)
    if len(black76_items) > 1:
        consolidations.append({
            'type': 'Black-76 Caplets/Floorlets',
            'count': len(black76_items),
            'lines': [eq['index'] for eq in black76_items]
        })

    # Swap valuation equations
    swap_items = []
    for eq in equations:
        title = eq['title']
        if 'Swap' in title and 'Valuation' in title:
            swap_items.append(eq)
    if len(swap_items) > 1:
        consolidations.append({
            'type': 'Swap Valuation',
            'count': len(swap_items),
            'lines': [eq['index'] for eq in swap_items]
        })

    for cons in consolidations:
        print(f"\n{cons['type']}: {cons['count']} equations (lines {cons['lines']})")

    # Ambiguous cases requiring human review
    print("\n\n6. CASES REQUIRING HUMAN REVIEW:")
    print("-" * 80)

    ambiguous_cases = []

    # Check for equations that look similar but might serve different purposes
    similar_formulas = defaultdict(list)

    for eq in equations:
        eq_str = eq['equation']
        # Extract simplified formula signature
        sig = extract_core_formula(eq_str)[:50]  # First 50 chars as signature
        similar_formulas[sig].append(eq)

    for sig, eqs in similar_formulas.items():
        if len(eqs) > 1:
            # Check if titles suggest different purposes
            titles = [eq['title'] for eq in eqs]
            if len(set(titles)) == len(titles):  # All different titles
                print(f"\nSimilar formula structure (first 50 chars): {sig}")
                print(f"  Found in:")
                for eq in eqs:
                    print(f"    Line {eq['index']}: {eq['title']}")
                ambiguous_cases.append({
                    'signature': sig,
                    'equations': eqs
                })

    print("\n\n" + "=" * 80)
    print("SUMMARY")
    print("=" * 80)
    print(f"\nTotal equations analyzed: {len(equations)}")
    print(f"Exact duplicate groups: {len(exact_dupes)}")
    print(f"Near-duplicate groups identified: {len(near_dupes)}")
    print(f"Consolidation recommendations: {len(consolidations)}")
    print(f"Ambiguous cases for review: {len(ambiguous_cases)}")

    total_dupes = sum(len(group['equations']) - 1 for group in near_dupes)
    print(f"\nPotential reduction through consolidation: ~{total_dupes} equations")

if __name__ == '__main__':
    main()

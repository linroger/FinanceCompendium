#!/usr/bin/env python3
"""
Comprehensive duplicate analysis with consolidation examples.
"""
import csv
import re
from collections import defaultdict

def normalize_for_comparison(eq_str):
    """Normalize equation for comparison - handle unicode and formatting differences."""
    mapping = {
        'β': 'beta',
        'λ': 'lambda',
        'σ': 'sigma',
        'Φ': 'Phi',
        'φ': 'phi',
        'ρ': 'rho',
        'τ': 'tau',
        '𝔼': 'E',
        '√': 'sqrt',
        '∑': 'sum',
        '∫': 'int',
        '∞': 'inf',
        '≈': '~=',
        'α': 'alpha',
        'γ': 'gamma',
        'κ': 'kappa',
        'π': 'pi',
        'ε': 'epsilon',
        'δ': 'delta',
        'η': 'eta',
        'ξ': 'xi',
        'ψ': 'psi',
        'θ': 'theta',
        'μ': 'mu',
        'ν': 'nu',
        'ω': 'omega',
        'χ': 'chi',
        '±': '+/-'
    }

    normalized = eq_str
    for unicode_char, ascii_char in mapping.items():
        normalized = normalized.replace(unicode_char, f'{{{ascii_char}}}')
    normalized = re.sub(r'\s+', '', normalized)
    return normalized

def extract_key_terms(eq_str):
    """Extract key terms from equation for semantic comparison."""
    terms = []

    if 'Phi(' in eq_str or 'Φ(' in eq_str:
        terms.append('black-scholes-type')
    if 'E[' in eq_str or '𝔼[' in eq_str:
        terms.append('expected-value')
    if 'beta' in eq_str.lower() or 'β' in eq_str:
        terms.append('beta-parameter')
    if 'R_f' in eq_str or 'r_f' in eq_str:
        terms.append('risk-free-rate')
    if 'P(0' in eq_str:
        terms.append('discount-factor')
    if 'tau' in eq_str.lower() or 'τ' in eq_str:
        terms.append('time-fraction')

    return set(terms)

def calculate_semantic_similarity(eq1, eq2):
    """Calculate semantic similarity between two equations."""
    terms1 = extract_key_terms(eq1['equation'])
    terms2 = extract_key_terms(eq2['equation'])

    if not terms1 and not terms2:
        return 1.0

    union = terms1 | terms2
    intersection = terms1 & terms2

    if not union:
        return 0.0

    return len(intersection) / len(union)

def find_consolidation_groups(equations):
    """Find groups of equations that can be consolidated."""
    groups = []

    capm_group = []
    for eq in equations:
        title = eq['title'].lower()
        if 'capm' in title or 'capital asset pricing' in title:
            capm_group.append(eq)

    if len(capm_group) > 1:
        groups.append({
            'type': 'CAPM Equations',
            'equations': capm_group,
            'similarity': 'CAPM formulations with slight notation differences'
        })

    black76_group = []
    for eq in equations:
        title = eq['title']
        if 'black-76' in title and ('caplet' in title.lower() or 'floorlet' in title.lower()):
            black76_group.append(eq)

    if len(black76_group) > 1:
        groups.append({
            'type': 'Black-76 Caplet/Floorlet Pricing',
            'equations': black76_group,
            'similarity': 'Black-76 framework applied to caplets and floorlets'
        })

    swaption_group = []
    for eq in equations:
        title = eq['title'].lower()
        if 'swaption' in title:
            swaption_group.append(eq)

    if len(swaption_group) > 1:
        groups.append({
            'type': 'Swaption Pricing Models',
            'equations': swaption_group,
            'similarity': 'Different swaption pricing approaches (Black-76, Normal, Bachelier, Bermudan)'
        })

    swap_valuation_group = []
    for eq in equations:
        title = eq['title'].lower()
        if 'swap' in title and ('valuation' in title or 'pricing' in title):
            swap_valuation_group.append(eq)

    if len(swap_valuation_group) > 1:
        groups.append({
            'type': 'Swap Valuation Models',
            'equations': swap_valuation_group,
            'similarity': 'Various swap valuation formulas (fixed leg, floating leg, general, post-inception)'
        })

    return groups

def combine_notes(eq_list):
    """Combine notes from multiple similar equations."""
    combined_notes = []

    for eq in eq_list:
        note = eq['notes']

        sections = []

        if '**Mathematical Foundation**:' in note:
            foundation_match = re.search(r'\*\*Mathematical Foundation\*\*:([^*]+)', note, re.DOTALL)
            if foundation_match:
                sections.append(('Foundation', foundation_match.group(1).strip()))

        if '**Key Assumptions**:' in note:
            assumptions_match = re.search(r'\*\*Key Assumptions\*\*:([^*]+)', note, re.DOTALL)
            if assumptions_match:
                sections.append(('Assumptions', assumptions_match.group(1).strip()))

        if '**Practical Applications**:' in note:
            apps_match = re.search(r'\*\*Practical Applications\*\*:([^*]+)', note, re.DOTALL)
            if apps_match:
                sections.append(('Applications', apps_match.group(1).strip()))

        if '**Limitations**:' in note:
            limitations_match = re.search(r'\*\*Limitations\*\*:([^*]+)', note, re.DOTALL)
            if limitations_match:
                sections.append(('Limitations', limitations_match.group(1).strip()))

        combined_notes.extend(sections)

    unique_sections = {}
    for section_type, content in combined_notes:
        if section_type not in unique_sections:
            unique_sections[section_type] = []
        unique_sections[section_type].append(content)

    result = ""
    for section_type in ['Foundation', 'Assumptions', 'Applications', 'Limitations']:
        if section_type in unique_sections:
            result += f"**{section_type}:** " + "; ".join(unique_sections[section_type]) + "\n\n"

    return result if result else "Combined from multiple sources"

def main():
    filename = 'enhanced_interest_rate_models_complete.csv'

    print("=" * 100)
    print("COMPREHENSIVE DUPLICATE ANALYSIS REPORT")
    print("enhanced_interest_rate_models_complete.csv")
    print("=" * 100)

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

    print(f"\nTotal equations analyzed: {len(equations)}")

    print("\n\n" + "=" * 100)
    print("SECTION 1: EXACT DUPLICATES")
    print("=" * 100)

    exact_duplicate_groups = defaultdict(list)
    for eq in equations:
        exact_duplicate_groups[eq['equation']].append(eq)

    exact_duplicates = {k: v for k, v in exact_duplicate_groups.items() if len(v) > 1}

    if exact_duplicates:
        print(f"\nFound {len(exact_duplicates)} exact duplicate groups:\n")
        for eq_str, eq_list in exact_duplicates.items():
            print(f"  Equation: {eq_str[:60]}...")
            print(f"  Appears {len(eq_list)} times:")
            for eq in eq_list:
                print(f"    Line {eq['index']}: {eq['title']}")
            print()
    else:
        print("\nNo exact duplicates found")

    print("\n\n" + "=" * 100)
    print("SECTION 2: NEAR-DUPLICATES (Semantic Similarity)")
    print("=" * 100)

    similar_pairs = []
    for i in range(len(equations)):
        for j in range(i+1, len(equations)):
            eq1 = equations[i]
            eq2 = equations[j]

            similarity = calculate_semantic_similarity(eq1, eq2)

            if similarity > 0.6:
                similar_pairs.append({
                    'eq1': eq1,
                    'eq2': eq2,
                    'similarity': similarity
                })

    similar_groups = find_consolidation_groups(equations)

    for group in similar_groups:
        print(f"\nGroup: {group['type']}")
        print(f"  {len(group['equations'])} equations: {group['similarity']}\n")

        most_complete = max(group['equations'], key=lambda x: len(x['notes']))

        print(f"  Most complete version: Line {most_complete['index']} - {most_complete['title']}")
        print(f"  Notes length: {len(most_complete['notes'])} characters")

        print("\n  Equations in this group:")
        for eq in group['equations']:
            eq_preview = eq['equation'][:70].replace('\n', ' ')
            print(f"    Line {eq['index']}: {eq['title']}")
            print(f"      {eq_preview}...")

    print("\n\n" + "=" * 100)
    print("SECTION 3: CONSOLIDATION EXAMPLES (Before & After)")
    print("=" * 100)

    consolidation_examples = 0

    for group in similar_groups:
        if len(group['equations']) < 2:
            continue

        consolidation_examples += 1
        print(f"\n\nExample {consolidation_examples}: {group['type']}")
        print("-" * 100)

        most_complete = max(group['equations'], key=lambda x: len(x['notes']))

        print("BEFORE (separate equations):")
        for i, eq in enumerate(group['equations'][:3], 1):
            eq_preview = eq['equation'][:80]
            print(f"  {i}. Line {eq['index']}: {eq['title']}")
            print(f"     Equation: {eq_preview}")

        print("\nAFTER (consolidated version):")
        consolidated_notes = combine_notes(group['equations'])

        if group['type'] == 'CAPM Equations':
            consolidated_title = 'Capital Asset Pricing Model (CAPM) - Comprehensive'
        elif group['type'] == 'Black-76 Caplet/Floorlet Pricing':
            consolidated_title = 'Black-76 Framework for Caplets and Floorlets'
        elif group['type'] == 'Swaption Pricing Models':
            consolidated_title = 'Swaption Pricing Frameworks (Black-76, Normal, Bachelier)'
        elif group['type'] == 'Swap Valuation Models':
            consolidated_title = 'Interest Rate Swap Valuation - Comprehensive Framework'
        else:
            consolidated_title = group['type']

        consolidated_eq = most_complete['equation']

        print(f"  Title: {consolidated_title}")
        print(f"  Equation: {consolidated_eq[:80]}")
        print(f"  Notes preview: {consolidated_notes[:200]}...")
        print(f"\n  Reduction: {len(group['equations'])} -> 1 equation")

    print("\n\n" + "=" * 100)
    print("SECTION 4: CASES REQUIRING HUMAN REVIEW")
    print("=" * 100)

    ambiguous_cases = []

    for group in similar_groups:
        if len(group['equations']) >= 4:
            for eq in group['equations']:
                ambiguous_cases.append(eq)

    if ambiguous_cases:
        print(f"\n{len(ambiguous_cases)} equations in large groups - may require manual review:")
        for eq in ambiguous_cases[:10]:
            print(f"  Line {eq['index']}: {eq['title']}")
        if len(ambiguous_cases) > 10:
            print(f"  ... and {len(ambiguous_cases)-10} more")
    else:
        print("\nNo ambiguous cases identified")

    print("\n\n" + "=" * 100)
    print("FINAL SUMMARY")
    print("=" * 100)

    total_duplicates = 0
    for group in similar_groups:
        total_duplicates += len(group['equations']) - 1

    print(f"\n  Total equations analyzed: {len(equations)}")
    print(f"  Exact duplicate groups: {len(exact_duplicates)}")
    print(f"  Near-duplicate groups identified: {len(similar_groups)}")
    print(f"  Total duplicates across all groups: {total_duplicates}")

    current_count = len(equations)
    if len(similar_groups) > 0:
        print(f"\n  Current equation count: {current_count}")
        print(f"  Potential reduced count: {current_count - total_duplicates}")
        print(f"  Reduction percentage: {(total_duplicates/current_count)*100:.1f}%")

    print(f"\n  Equations requiring human review: {len(ambiguous_cases)}")

    print("\n\n" + "=" * 100)

if __name__ == '__main__':
    main()

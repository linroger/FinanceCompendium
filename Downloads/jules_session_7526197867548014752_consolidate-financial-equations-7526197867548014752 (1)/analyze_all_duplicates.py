#!/usr/bin/env python3
"""
Analyze financial equations for duplicates and near-duplicates across multiple categories.
"""
import csv
import re
import json
from collections import defaultdict
from typing import List, Dict, Set, Tuple

# Comprehensive Unicode to ASCII normalization map
UNICODE_NORMALIZATION = {
    # Greek letters
    'α': 'alpha', 'β': 'beta', 'γ': 'gamma', 'δ': 'delta',
    'ε': 'epsilon', 'θ': 'theta', 'λ': 'lambda', 'μ': 'mu',
    'ν': 'nu', 'π': 'pi', 'ρ': 'rho', 'σ': 'sigma',
    'τ': 'tau', 'φ': 'phi', 'ψ': 'psi', 'ω': 'omega',
    'χ': 'chi', 'ξ': 'xi', 'ζ': 'zeta',
    # Mathematical operators
    '∑': 'sum', '∏': 'product', '∫': 'integral',
    '∂': 'd', '√': 'sqrt', '∞': 'infinity',
    '≈': 'approx', '≠': '!=', '≡': 'identical',
    '≤': '<=', '≥': '>=', '∈': 'in', '∉': 'notin',
    '→': '->', '←': '<-', '∀': 'forall', '∃': 'exists',
    # Expected value notation
    '𝔼': 'E', '𝔽': 'E', '𝔞': 'infinity',
    'ℚ': 'Q', 'ℛ': 'P',
    # Functions
    'Φ': 'Phi', 'φ': 'phi', 'Ψ': 'Psi', 'ψ': 'psi',
    'Θ': 'Theta', 'θ': 'theta', 'Λ': 'Lambda', 'λ': 'lambda',
    'Π': 'Pi', 'π': 'pi', 'Σ': 'Sigma', 'σ': 'sigma',
    'Δ': 'Delta', 'δ': 'delta', 'Γ': 'Gamma', 'γ': 'gamma',
    'Ω': 'Omega', 'ω': 'omega', 'Ξ': 'Infinity',
    # Subscripts and superscripts patterns
    '_': '_', '^': '^',
}

def normalize_equation(eq: str) -> str:
    """Normalize equation string for comparison."""
    if not eq:
        return ''

    # Remove whitespace
    eq = re.sub(r'\s+', '', eq)
    eq = re.sub(r'\n+', '', eq)
    eq = re.sub(r'\t+', '', eq)

    # Apply Unicode normalization
    for unicode_char, ascii_replacement in UNICODE_NORMALIZATION.items():
        eq = eq.replace(unicode_char, ascii_replacement)

    # Additional standardizations
    eq = eq.replace('·', '*')      # Dot multiplication
    eq = eq.replace('×', '*')      # Cross to asterisk
    eq = eq.replace('[', '(')      # Change brackets
    eq = eq.replace(']', ')')
    eq = eq.replace('{', '(')
    eq = eq.replace('}', ')')

    return eq.lower().strip()

def extract_key_terms(eq: str) -> Set[str]:
    """Extract key mathematical terms for semantic comparison."""
    terms = set()

    eq_lower = eq.lower()

    # Mathematical operations
    if any(word in eq_lower for word in ['integral', 'sumation', 'derivative',
                                           'expectation', 'variance', 'convexity',
                                           'duration', 'volatility', 'probability',
                                           'density', 'characteristic', 'fourier']):
        if 'integral' in eq_lower or '∫' in eq or 'integral' in eq_lower:
            terms.add('integral')
        if 'sumation' in eq_lower or '∑' in eq or 'sum' in eq_lower:
            terms.add('sumation')
        if 'derivative' in eq_lower or '∂' in eq or 'partial' in eq_lower:
            terms.add('derivative')
        if 'expectation' in eq_lower or any(x in eq_lower for x in ['e[', '𝔼', 'expect']):
            terms.add('expectation')
        if 'variance' in eq_lower:
            terms.add('variance')
        if 'convexity' in eq_lower:
            terms.add('convexity')
        if 'duration' in eq_lower:
            terms.add('duration')
        if 'volatility' in eq_lower or 'volatility' in eq_lower or 'σ' in eq:
            terms.add('volatility')
        if 'probability' in eq_lower or 'prob' in eq_lower:
            terms.add('probability')
        if 'density' in eq_lower:
            terms.add('density')
        if 'characteristic' in eq_lower:
            terms.add('characteristic')
        if 'fourier' in eq_lower or 'fft' in eq_lower:
            terms.add('fourier')

    # Financial instruments
    for instrument in ['option', 'bond', 'mbs', 'mortgage', 'cdo', 'cds',
                         'fx', 'foreign', 'commodity', 'swap', 'swaption',
                         'tranche', 'inflation', 'forward', 'future']:
        if instrument in eq_lower:
            terms.add(instrument)

    # Pricing concepts
    for concept in ['pricing', 'valuation', 'discount', 'yield', 'spread',
                     'rate', 'premium', 'risk', 'return', 'carry']:
        if concept in eq_lower:
            terms.add(concept)

    # Models and frameworks
    for model in ['black', 'merton', 'heston', 'vasicek', 'hull-white',
                  'garman', 'nelson', 'siegel', 'crank', 'nicolson',
                  'binomial', 'monte carlo', 'neural', 'network',
                  'cholesky', 'sobol', 'quasi', 'copula', 'jump']:
        if model in eq_lower:
            terms.add(model)

    return terms

def calculate_jaccard_similarity(set1: Set[str], set2: Set[str]) -> float:
    """Calculate Jaccard similarity between two term sets."""
    if not set1 or not set2:
        return 0.0

    intersection = len(set1 & set2)
    union = len(set1 | set2)

    if union == 0:
        return 0.0

    return intersection / union

def semantic_similarity(eq1: str, eq2: str) -> Tuple[float, List[str]]:
    """Calculate semantic similarity between two equations."""
    terms1 = extract_key_terms(eq1)
    terms2 = extract_key_terms(eq2)

    jaccard = calculate_jaccard_similarity(terms1, terms2)

    # Find common terms for explanation
    common = list(terms1 & terms2)
    unique = list(terms1.symmetric_difference(terms2))

    return jaccard, common, unique

def analyze_category(filepath: str, category: str) -> Dict:
    """Analyze a single CSV category for duplicates."""
    print(f"\n{'='*80}")
    print(f"Analyzing {category}")
    print(f"{'='*80}")

    results = {
        'category': category,
        'filepath': filepath,
        'total': 0,
        'equations': [],
        'exact_duplicates': [],
        'near_duplicates': []
    }

    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)

            equations = []
            for i, row in enumerate(reader, 1):
                if 'Equation' in row and row['Equation']:
                    eq_data = {
                        'index': i,
                        'title': row.get('Title', '').strip(),
                        'equation': row['Equation'].strip(),
                        'normalized': normalize_equation(row['Equation']),
                        'notes': row.get('Notes', '').strip(),
                        'terms': extract_key_terms(row['Equation'])
                    }
                    equations.append(eq_data)

            results['equations'] = equations
            results['total'] = len(equations)

            print(f"Total equations: {results['total']}")

            # Check for exact duplicates
            print("\nFinding exact duplicates...")
            norm_map = defaultdict(list)
            for i, eq in enumerate(equations):
                norm_map[eq['normalized']].append(i)

            for norm, indices in norm_map.items():
                if len(indices) > 1:
                    dup_info = {
                        'normalized_equation': norm,
                        'indices': indices,
                        'titles': [equations[i]['title'] for i in indices],
                        'notes_list': [equations[i]['notes'] for i in indices],
                        'count': len(indices)
                    }
                    results['exact_duplicates'].append(dup_info)
                    print(f"  Found: '{norm[:60]}...' appears {len(indices)} times")

            print(f"Exact duplicate groups: {len(results['exact_duplicates'])}")

            # Check for near-duplicates (semantic similarity)
            print("\nFinding near-duplicates...")
            similarity_threshold = 0.5  # Jaccard threshold

            for i in range(len(equations)):
                # Skip if already part of exact duplicate group
                is_duplicate = any(i in dup['indices'] for dup in results['exact_duplicates'])
                if is_duplicate:
                    continue

                for j in range(i + 1, len(equations)):
                    # Skip if j is part of exact duplicate
                    is_j_duplicate = any(j in dup['indices'] for dup in results['exact_duplicates'])
                    if is_j_duplicate:
                        continue

                    sim, common, unique = semantic_similarity(equations[i]['equation'],
                                                                     equations[j]['equation'])

                    if sim > similarity_threshold:
                        nd_info = {
                            'equation_1': equations[i],
                            'equation_2': equations[j],
                            'similarity': sim,
                            'common_terms': common,
                            'unique_to_1': list(equations[i]['terms'] - equations[j]['terms']),
                            'unique_to_2': list(equations[j]['terms'] - equations[i]['terms']),
                            'indices': [i, j]
                        }
                        results['near_duplicates'].append(nd_info)
                        print(f"  Similar ({sim:.2%}): {equations[i]['title'][:40]} <-> {equations[j]['title'][:40]}")

            print(f"Near-duplicate pairs: {len(results['near_duplicates'])}")

    except Exception as e:
        print(f"Error processing {filepath}: {e}")
        import traceback
        traceback.print_exc()

    return results

def consolidate_notes(notes_list: List[str]) -> str:
    """Combine notes from multiple versions."""
    if not notes_list:
        return ''

    # Remove duplicates while preserving some order
    unique_notes = []
    seen = set()

    for note in notes_list:
        if note and note not in seen:
            seen.add(note)
            unique_notes.append(note)

    return ' '.join(unique_notes)

def generate_consolidated_csv(category_results: Dict, output_prefix: str):
    """Generate consolidated CSV with duplicates removed/combined."""
    equations = category_results['equations']

    # Identify indices to remove (exact duplicates - keep first of each group)
    indices_to_remove = set()

    for dup in category_results['exact_duplicates']:
        # Keep first occurrence, remove rest
        for idx in dup['indices'][1:]:
            indices_to_remove.add(idx)

    # For near-duplicates, keep both but mark them
    # (User will review these manually)

    consolidated = []
    kept_indices = set()

    for i, eq in enumerate(equations):
        if i in indices_to_remove:
            # This is an exact duplicate - skip it
            continue

        # Mark if part of near-duplicate pair
        is_near_dup = any(i in nd['indices'] for nd in category_results['near_duplicates'])

        consolidated_eq = {
            'Title': eq['title'] + ' [NEAR-DUPLICATE]' if is_near_dup else '',
            'Equation': eq['equation'],
            'Main_Category': category_results['category'],
            'Notes': eq['notes']
        }

        consolidated.append(consolidated_eq)
        kept_indices.add(i)

    # Write consolidated CSV
    output_filename = f"{output_prefix}_consolidated.csv"

    with open(output_filename, 'w', encoding='utf-8', newline='') as f:
        fieldnames = ['Title', 'Equation', 'Main_Category', 'Notes']
        writer = csv.DictWriter(f, fieldnames=fieldnames)

        writer.writeheader()
        for row in consolidated:
            writer.writerow(row)

    print(f"\nConsolidated file created: {output_filename}")
    print(f"Original: {category_results['total']} equations")
    print(f"Consolidated: {len(consolidated)} equations")
    print(f"Removed: {category_results['total'] - len(consolidated)} exact duplicates")

    return output_filename, len(consolidated)

def main():
    """Main analysis function."""
    files_to_analyze = [
        ('enhanced_credit_models_complete.csv', 'Credit Models', 'credit_models'),
        ('enhanced_fixed_income_complete.csv', 'Fixed Income', 'fixed_income'),
        ('enhanced_numerical_methods_complete.csv', 'Numerical Methods', 'numerical_methods'),
        ('enhanced_stochastic_calculus_complete.csv', 'Stochastic Calculus', 'stochastic_calculus'),
        ('enhanced_foreign_exchange_complete.csv', 'Foreign Exchange', 'foreign_exchange'),
        ('enhanced_commodities_complete.csv', 'Commodities', 'commodities')
    ]

    all_results = {}
    grand_totals = {
        'total_equations': 0,
        'total_exact_duplicates': 0,
        'total_near_duplicates': 0
    }

    # Analyze each category
    for filename, category, prefix in files_to_analyze:
        try:
            results = analyze_category(filename, category)
            all_results[category] = results

            grand_totals['total_equations'] += results['total']
            grand_totals['total_exact_duplicates'] += sum(
                [dup['count'] - 1 for dup in results['exact_duplicates']])
            grand_totals['total_near_duplicates'] += len(results['near_duplicates'])

            # Generate consolidated file
            consolidated_file, consolidated_count = generate_consolidated_csv(results, prefix)

            # Update results with consolidated file info
            all_results[category]['consolidated_file'] = consolidated_file
            all_results[category]['consolidated_count'] = consolidated_count

        except Exception as e:
            print(f"\nERROR analyzing {category}: {e}")
            import traceback
            traceback.print_exc()

    # Generate detailed report
    report_lines = []
    report_lines.append("=" * 80)
    report_lines.append("DUPLICATE AND NEAR-DUPLICATE ANALYSIS REPORT")
    report_lines.append("=" * 80)
    report_lines.append("")
    report_lines.append(f"Analysis Date: 2025")
    report_lines.append("")

    # Category summaries
    report_lines.append("\nCATEGORY-BY-CATEGORY ANALYSIS")
    report_lines.append("-" * 80)
    report_lines.append("")

    for category, results in all_results.items():
        report_lines.append(f"\n{category.upper()}")
        report_lines.append("-" * 80)
        report_lines.append(f"Total equations analyzed: {results['total']}")
        report_lines.append(f"Exact duplicate groups: {len(results['exact_duplicates'])}")

        exact_dup_count = sum([dup['count'] - 1 for dup in results['exact_duplicates']])
        report_lines.append(f"Exact duplicate equations: {exact_dup_count}")

        report_lines.append(f"Near-duplicate pairs: {len(results['near_duplicates'])}")

        if 'consolidated_count' in results:
            report_lines.append(f"Consolidated count: {results['consolidated_count']}")

        # Show exact duplicate examples
        if results['exact_duplicates']:
            report_lines.append("\n  EXACT DUPLICATES:")
            for dup in results['exact_duplicates'][:3]:
                report_lines.append(f"    Equation: {dup['normalized_equation'][:80]}...")
                report_lines.append(f"    Found {dup['count']} times at indices: {dup['indices']}")
                report_lines.append(f"    Titles: {', '.join(dup['titles'][:3])}")
                if len(dup['titles']) > 3:
                    report_lines.append(f"      ... and {len(dup['titles']) - 3} more")

        # Show near-duplicate examples
        if results['near_duplicates']:
            report_lines.append("\n  NEAR-DUPLICATES (Similarity > 50%):")
            for nd in results['near_duplicates'][:3]:
                report_lines.append(f"    Similarity: {nd['similarity']:.2%}")
                report_lines.append(f"    Equation 1: {nd['equation_1']['equation'][:70]}...")
                report_lines.append(f"      ({nd['equation_1']['title']})")
                report_lines.append(f"    Equation 2: {nd['equation_2']['equation'][:70]}...")
                report_lines.append(f"      ({nd['equation_2']['title']})")
                report_lines.append(f"    Common terms: {', '.join(nd['common_terms'][:5])}")

    # Grand summary
    report_lines.append("\n" + "=" * 80)
    report_lines.append("GRAND SUMMARY")
    report_lines.append("=" * 80)
    report_lines.append(f"Total equations across all categories: {grand_totals['total_equations']}")
    report_lines.append(f"Total exact duplicate equations: {grand_totals['total_exact_duplicates']}")
    report_lines.append(f"Total near-duplicate pairs: {grand_totals['total_near_duplicates']}")
    report_lines.append(f"Unique equations after removing exact duplicates: {grand_totals['total_equations'] - grand_totals['total_exact_duplicates']}")

    # Ambiguous cases requiring review
    report_lines.append("\n" + "=" * 80)
    report_lines.append("CASES REQUIRING HUMAN REVIEW")
    report_lines.append("=" * 80)
    report_lines.append("")

    review_needed = False

    for category, results in all_results.items():
        high_similarity_pairs = [nd for nd in results['near_duplicates']
                              if nd['similarity'] > 0.7]

        if high_similarity_pairs:
            review_needed = True
            report_lines.append(f"\n{category} - High Similarity Pairs (> 70%):")

            for nd in high_similarity_pairs:
                report_lines.append(f"  {nd['equation_1']['title']} <-> {nd['equation_2']['title']}")
                report_lines.append(f"    Similarity: {nd['similarity']:.2%}")
                report_lines.append(f"    Unique to eq1: {', '.join(nd['unique_to_1'][:3])}")
                report_lines.append(f"    Unique to eq2: {', '.join(nd['unique_to_2'][:3])}")

    if not review_needed:
        report_lines.append("No ambiguous cases found - all near-duplicates have clear distinctions.")

    # Save report
    report_filename = "duplicate_near_duplicate_analysis_report.txt"
    with open(report_filename, 'w', encoding='utf-8') as f:
        f.write('\n'.join(report_lines))

    print("\n" + "=" * 80)
    print("ANALYSIS COMPLETE")
    print("=" * 80)
    print(f"\nReport saved to: {report_filename}")
    print(f"Detailed JSON saved to: duplicate_analysis_details.json")

    # Save detailed JSON
    with open('duplicate_analysis_details.json', 'w', encoding='utf-8') as f:
        json.dump(all_results, f, indent=2, ensure_ascii=False)

if __name__ == '__main__':
    main()

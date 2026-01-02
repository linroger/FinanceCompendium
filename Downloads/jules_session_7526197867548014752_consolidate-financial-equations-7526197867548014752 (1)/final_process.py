import os
import csv
import re
import difflib

# Keywords to exclude
EXCLUDE_KEYWORDS = [
    'bitcoin', 'crypto', 'defi', 'uniswap', 'token', 'ethereum', 'blockchain',
    'amm', 'automated market maker', 'staking', 'yield farming', 'impermanent loss',
    'esg', 'sustainability', 'green bond', 'carbon', 'climate', 'btc', 'eth', 'liquidity pool'
]

def normalize_text(text):
    if not text: return ""
    return ' '.join(text.strip().split())

def normalize_equation_for_comparison(eq):
    # Aggressive normalization for deduplication
    eq = eq.lower()
    # Remove latex commands that don't change meaning much
    eq = re.sub(r'\\[a-zA-Z]+', '', eq)
    # Remove non-alphanumeric
    eq = re.sub(r'[^a-z0-9]', '', eq)
    return eq

def is_banned(text):
    text_lower = text.lower()
    for kw in EXCLUDE_KEYWORDS:
        if kw in text_lower:
            return True
    return False

def is_valid_equation(eq):
    eq = eq.strip()
    if not eq: return False
    
    # Reject lines that are clearly text or headers
    if eq.startswith('#'): return False
    if re.match(r'^(Variables|Explanation|Category|Where|Note|The|In|For|This|Assume|Let|Consider):', eq, re.I):
        return False
    
    # Check for math symbols
    indicators = ['=', '\\', '+', '-', '^', '_', '{', '}', '<', '>']
    count = sum(1 for char in eq if char in indicators)
    if count == 0: return False
    
    # Heuristic: Ratio of letters to length. Real equations have many symbols.
    # Text has many letters and spaces.
    letters = sum(c.isalpha() for c in eq)
    if len(eq) > 20 and letters / len(eq) > 0.8: return False
    
    return True

def extract_equations(filepath):
    items = []
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
    except:
        return items

    ext = os.path.splitext(filepath)[1].lower()
    
    if ext == '.csv':
        reader = csv.DictReader(content.splitlines())
        if not reader.fieldnames: return items
        
        # Column mapping
        cols = {k: None for k in ['title', 'eq', 'desc', 'cat']}
        for h in reader.fieldnames:
            h_low = h.lower()
            if 'title' in h_low or 'name' in h_low: cols['title'] = h
            elif 'equation' in h_low or 'formula' in h_low: cols['eq'] = h
            elif 'description' in h_low or 'explanation' in h_low: cols['desc'] = h
            elif 'category' in h_low: cols['cat'] = h
            
        if not cols['eq']: return items

        for row in reader:
            eq = row[cols['eq']]
            if not eq or not is_valid_equation(eq): continue
            
            title = row.get(cols['title'], "")
            desc = row.get(cols['desc'], "")
            cat = row.get(cols['cat'], "")
            
            # Combine context
            full_desc = desc
            if cat: full_desc = f"Category: {cat}. {full_desc}"
            
            if not is_banned(title) and not is_banned(full_desc):
                items.append({
                    'title': normalize_text(title) or "Financial Equation",
                    'equation': eq.strip(),
                    'description': normalize_text(full_desc),
                    'source': filepath
                })

    else: # Markdown/Text
        # Strategy: Look for latex blocks or lines with math
        # Split by blank lines
        blocks = re.split(r'\n\s*\n', content)
        
        for i, block in enumerate(blocks):
            block = block.strip()
            if not block: continue
            
            # Check if block is equation
            if is_valid_equation(block) and not is_banned(block):
                # Context extraction
                title = "Financial Equation"
                description = ""
                
                # Look behind for title
                if i > 0:
                    prev = blocks[i-1].strip()
                    if len(prev) < 100 and not is_valid_equation(prev) and not prev.startswith('Variables'):
                        title = re.sub(r'^[#\d\.\s]+', '', prev).strip()
                
                # Look ahead for description
                if i + 1 < len(blocks):
                    next_block = blocks[i+1].strip()
                    if not is_valid_equation(next_block) and len(next_block) > 0:
                        description = next_block
                
                if not is_banned(title) and not is_banned(description):
                    items.append({
                        'title': normalize_text(title),
                        'equation': block,
                        'description': normalize_text(description),
                        'source': filepath
                    })

    return items

def consolidate_items(items):
    # Sort by complexity (length) to prioritize fuller equations
    items.sort(key=lambda x: len(x['equation']), reverse=True)
    
    unique_items = []
    seen_hashes = set()
    
    for item in items:
        # 1. Split compound equations if possible?
        # Some CSV entries have "Eq1 Eq2" in one cell.
        # Simple heuristic: if "dF_t =" appears multiple times?
        # Let's skip complex splitting for now, rely on fuzzy match.
        
        # Clean equation content specifically for output
        # Remove "Variables:" or "Explanation:" if they leaked in
        clean_eq = item['equation']
        for marker in ['Variables:', 'Explanation:', 'Category:']:
            if marker in clean_eq:
                clean_eq = clean_eq.split(marker)[0].strip()
        
        item['equation'] = clean_eq
        if not is_valid_equation(clean_eq): continue

        norm = normalize_equation_for_comparison(clean_eq)
        if not norm: continue
        
        # Check against existing
        matched = False
        for existing in unique_items:
            existing_norm = normalize_equation_for_comparison(existing['equation'])
            
            # Exact match or high fuzzy match
            if norm == existing_norm or (abs(len(norm) - len(existing_norm)) < 10 and difflib.SequenceMatcher(None, norm, existing_norm).ratio() > 0.9):
                matched = True
                # Merge logic
                if item['source'] not in existing['source']:
                    existing['source'] += f"; {item['source']}"
                
                # Pick better title
                if "Financial Equation" in existing['title'] and "Financial Equation" not in item['title']:
                    existing['title'] = item['title']
                elif len(item['title']) > len(existing['title']) and "Untitled" not in item['title']:
                    existing['title'] = item['title']
                
                # Append description
                if item['description'] and item['description'] not in existing['description']:
                    existing['description'] += f" | {item['description']}"
                break
        
        if not matched:
            unique_items.append(item)
            
    return unique_items

def main():
    root_dir = 'eq3'
    all_items = []
    
    for root, dirs, files in os.walk(root_dir):
        for file in files:
            filepath = os.path.join(root, file)
            all_items.extend(extract_equations(filepath))
            
    print(f"Total raw items: {len(all_items)}")
    final_items = consolidate_items(all_items)
    print(f"Consolidated items: {len(final_items)}")
    
    # Sort for output
    final_items.sort(key=lambda x: x['title'])
    
    # Write
    with open('distilled_equations.csv', 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=['Title', 'Equation', 'Description', 'Source'])
        writer.writeheader()
        for item in final_items:
            writer.writerow({
                'Title': item['title'],
                'Equation': item['equation'],
                'Description': item['description'],
                'Source': item['source']
            })
            
    with open('distilled_equations.md', 'w', encoding='utf-8') as f:
        f.write("# Distilled Financial Equations\n\n")
        for i, item in enumerate(final_items):
            f.write(f"### {i+1}. {item['title']}\n\n")
            f.write(f"$$\n{item['equation']}\n$$\n\n")
            if item['description']:
                f.write(f"**Notes:** {item['description']}\n\n")
            f.write(f"*Source: {item['source']}*\n\n---\n\n")

if __name__ == '__main__':
    main()

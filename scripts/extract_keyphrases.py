import os
import re
import json
import time
from typing import List, Tuple, Dict
import numpy as np
from sklearn.feature_extraction.text import CountVectorizer

# Configuration
VAULT_ROOT = "/Users/rogerlin/Reserve/FinanceCompendium"
TARGET_FOLDERS_PREFIX = ["I. ", "II. ", "III. ", "IV. ", "V. ", "VI. ", "VII. ", "VIII. ", "IX. ", "X. "]
OUTPUT_FILE = os.path.join(VAULT_ROOT, "keyphrase_report.md")
MIN_WORD_COUNT = 100 
MAX_WORD_COUNT = 500000

def clean_markdown(text: str) -> str:
    """
    Remove Markdown formatting to get raw text.
    """
    text = re.sub(r'^#+\s+', '', text, flags=re.MULTILINE)
    text = re.sub(r'\*\*|__|\*|_', '', text)
    text = re.sub(r'\[([^\]]+)\]\([^\)]+\)', r'\1', text)
    text = re.sub(r'```[\s\S]*?```', '', text)
    text = re.sub(r'`[^`]+`', '', text)
    text = re.sub(r'^\s*>\s+', '', text, flags=re.MULTILINE)
    return text

def extract_keyphrases(text: str, top_n=10, secondary_n=25) -> Dict[str, List[str]]:
    """
    Extract keyphrases using Term Frequency (TF) and MMR for diversity.
    """
    # 1. Clean text
    clean_text = clean_markdown(text)
    word_count = len(clean_text.split())
    
    if word_count < MIN_WORD_COUNT:
        return None

    # 2. Generate Candidates and Counts directly
    try:
        # We use CountVectorizer to get both candidates and their frequencies
        vectorizer = CountVectorizer(ngram_range=(2, 4), stop_words='english')
        dtm = vectorizer.fit_transform([clean_text])
        
        candidates = vectorizer.get_feature_names_out()
        counts = dtm.toarray()[0]
        
        # Create (candidate, score) pairs where score is the count
        candidate_scores = list(zip(candidates, counts))
        
        # Sort by score descending
        candidate_scores.sort(key=lambda x: x[1], reverse=True)
        
        # Filter out 0 counts (shouldn't happen)
        candidate_scores = [x for x in candidate_scores if x[1] > 0]
        
    except ValueError:
        return None
    
    # 4. Selection with Diversity (Simple MMR-like heuristic)
    final_primary = []
    final_secondary = []
    
    def is_redundant(phrase, selected_phrases):
        for selected in selected_phrases:
            if phrase in selected or selected in phrase:
                return True
            w1 = set(phrase.split())
            w2 = set(selected.split())
            jaccard = len(w1.intersection(w2)) / len(w1.union(w2))
            if jaccard > 0.5: 
                return True
        return False

    # Select Primary
    for cand, score in candidate_scores:
        if len(final_primary) >= top_n:
            break
        if not is_redundant(cand, final_primary):
            final_primary.append(cand)
            
    # Select Secondary (from remaining)
    for cand, score in candidate_scores:
        if cand in final_primary:
            continue
        if len(final_secondary) >= secondary_n:
            break
        if not is_redundant(cand, final_primary + final_secondary):
            final_secondary.append(cand)

    return {
        "word_count": word_count,
        "primary": final_primary,
        "secondary": final_secondary
    }

def main():
    print(f"Starting Keyphrase Extraction in {VAULT_ROOT}")
    print(f"Target Folders: {TARGET_FOLDERS_PREFIX}")
    
    results = []
    
    # Walk directories
    for root, dirs, files in os.walk(VAULT_ROOT):
        rel_path = os.path.relpath(root, VAULT_ROOT)
        top_folder = rel_path.split(os.sep)[0]
        
        is_target = False
        if rel_path == ".": 
            pass 
        else:
            for prefix in TARGET_FOLDERS_PREFIX:
                if top_folder.startswith(prefix) or top_folder == prefix.strip():
                    is_target = True
                    break
        
        if not is_target and rel_path != ".":
            continue

        for file in files:
            if file.endswith(".md"):
                filepath = os.path.join(root, file)
                print(f"Processing: {filepath}")
                
                try:
                    with open(filepath, 'r', encoding='utf-8') as f:
                        text = f.read()
                    
                    extraction = extract_keyphrases(text)
                    
                    if extraction:
                        results.append({
                            "file": rel_path + "/" + file,
                            "stats": extraction
                        })
                except Exception as e:
                    print(f"Error processing {file}: {e}")

    # Generate Report
    with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
        f.write(f"# Keyphrase Extraction Report\n")
        f.write(f"Generated: {time.strftime('%Y-%m-%d %H:%M:%S')}\n\n")
        
        for item in results:
            f.write(f"## {item['file']}\n")
            f.write(f"**Word Count:** {item['stats']['word_count']}\n\n")
            f.write(f"### Primary Keyphrases\n")
            for kp in item['stats']['primary']:
                f.write(f"- {kp}\n")
            f.write(f"\n### Secondary Keyphrases\n")
            for kp in item['stats']['secondary']:
                f.write(f"- {kp}\n")
            f.write(f"\n---\n\n")
            
    print(f"Report generated at {OUTPUT_FILE}")

if __name__ == "__main__":
    main()

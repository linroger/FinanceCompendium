import os
import re
from sklearn.feature_extraction.text import CountVectorizer, TfidfVectorizer

def clean_markdown(text: str) -> str:
    text = re.sub(r'^#+\s+', '', text, flags=re.MULTILINE)
    text = re.sub(r'\*\*|__|\*|_', '', text)
    text = re.sub(r'\[([^\]]+)\]\([^\)]+\)', r'\1', text)
    text = re.sub(r'```[\s\S]*?```', '', text)
    text = re.sub(r'`[^`]+`', '', text)
    text = re.sub(r'^\s*>\s+', '', text, flags=re.MULTILINE)
    return text

filepath = "/Users/rogerlin/Reserve/FinanceCompendium/VII. Corporate Finance/Financial Statements/A Primer on Financial Statements.md"

with open(filepath, 'r', encoding='utf-8') as f:
    text = f.read()

clean_text = clean_markdown(text)
print(f"Clean text length: {len(clean_text)}")
print(f"Sample clean text: {clean_text[:200]}")

try:
    count = CountVectorizer(ngram_range=(2, 4), stop_words='english').fit([clean_text])
    candidates = count.get_feature_names_out()
    print(f"Candidates found: {len(candidates)}")
    print(f"Sample candidates: {candidates[:10]}")
    
    vectorizer = TfidfVectorizer(vocabulary=candidates, stop_words='english')
    doc_vector = vectorizer.fit_transform([clean_text])
    tfidf_scores = doc_vector.toarray()[0]
    
    candidate_scores = list(zip(candidates, tfidf_scores))
    candidate_scores.sort(key=lambda x: x[1], reverse=True)
    
    print(f"Top 10 scores: {candidate_scores[:10]}")
    
except Exception as e:
    print(f"Error: {e}")

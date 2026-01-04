import sqlite3

conn = sqlite3.connect('.autocode/progress.db')
cursor = conn.cursor()

features = [
    ('functional', 'SQLite database schema created with all required tables (files, chunks, concepts, concept_mentions, link_proposals, applied_links, rejected_concepts, qa_samples, run_statistics)', "python3 -c \"import sqlite3; conn = sqlite3.connect('vault_linking.db'); cursor = conn.cursor(); tables = ['files', 'chunks', 'concepts', 'concept_mentions', 'link_proposals', 'applied_links', 'rejected_concepts', 'qa_samples', 'run_statistics']; existing = [r[0] for r in cursor.execute(\"SELECT name FROM sqlite_master WHERE type='table'\")]; print([t for t in tables if t in existing]); conn.close()\""),
    ('functional', 'Vault discovery identifies all markdown files in folders I-X and validates masking completeness', "python3 -c \"from pathlib import Path; vault = Path('.'); folders = [f for f in vault.iterdir() if f.is_dir() and f.name.startswith(('I.', 'II.', 'III.', 'IV.', 'V.', 'VI.', 'VII.', 'VIII.', 'IX.', 'X.'))]; print(f'Found {len(folders)} target folders')\""),
    ('functional', 'Semantic chunking splits documents into 1500-4500 word chunks with cohesion assessment', "python3 -c \"from linking_engine import chunker; c = chunker.Chunker(); chunks = c.chunk_text('Test ' * 3000); print(f'Chunks created: {len(chunks)}')\""),
    ('functional', '4-pass concept extraction pipeline (structural, mechanism, terminology, domain patterns) extracts candidates', "python3 -c \"from linking_engine import extractor; e = extractor.ConceptExtractor(); candidates = e.extract('Liquidity risk drives fire sales through market mechanisms.'); print(f'Extracted {len(candidates)} candidates')\""),
    ('functional', 'Pentatonic filter scores concepts across 5 dimensions (syntactic, conceptuality, specificity, salience, linkability)', "python3 -c \"from linking_engine import filter; f = filter.PentatonicFilter(); score = f.score_concept('systemic risk amplification channels'); print(f'Score: {score}')\""),
    ('functional', 'Vault-wide concept deduplication identifies and merges duplicate concepts with normalized names', "python3 -c \"from linking_engine import deduplicator; d = deduplicator.Deduplicator(); d.add('Systemic Risk'); d.add('systemic risk'); print(f'Unique concepts: {d.count()}')\""),
    ('functional', 'Too-broad concept filtering rejects concepts appearing in more than 50 documents', "python3 -c \"from linking_engine import filter; f = filter.TooBroadFilter(); result = f.is_valid('risk management', 30); print(f'Valid: {result}')\""),
    ('functional', 'CRS scoring framework calculates Composite Relevance Score across 5 dimensions (depth, centrality, uniqueness, authority, context)', "python3 -c \"from linking_engine import scorer; s = scorer.CRSScorer(); score = s.score({'depth': 2, 'centrality': 2, 'uniqueness': 1, 'authority': 1, 'context': 2}); print(f'CRS: {score}')\""),
    ('functional', 'Mention selection and reranking selects top 5 mentions per concept with per-document cap', "python3 -c \"from linking_engine import selector; s = selector.MentionSelector(); selected = s.select_top_k([{'crs': 8.0}, {'crs': 7.5}, {'crs': 9.0}, {'crs': 6.5}, {'crs': 8.5}, {'crs': 7.0}], k=5); print(f'Selected: {len(selected)} mentions')\""),
    ('functional', 'Link validation checks prevent mask intersections, self-links, density violations, and duplicate links', "python3 -c \"from linking_engine import validator; v = validator.LinkValidator(); result = v.validate({'source': 'a.md', 'target': 'b.md', 'anchor': 'test'}); print(f'Valid: {result}')\""),
    ('functional', 'Obsidian wiki link syntax generation creates forward links and backlink entries', "python3 -c \"from linking_engine import generator; g = generator.LinkGenerator(); link = g.create_link('systemic risk amplification', 'risk amplification'); print(f'Link: {link}')\""),
    ('functional', 'Quality assurance sampling evaluates 10% of applied links for relevance, specificity, target quality, and readability', "python3 -c \"from linking_engine import qa; q = qa.QualityAssessor(); sample = q.sample(['link1', 'link2', 'link3'], 0.1); print(f'Sample size: {len(sample)}')\""),
    ('functional', 'Linking report generation produces comprehensive statistics and metrics', "python3 -c \"from linking_engine import reporter; r = reporter.Reporter(); stats = r.generate_stats({'files': 100, 'links': 150}); print(f'Generated stats: {stats}')\""),
    ('functional', 'Concept registry JSON export maintains vault-wide concept management', "python3 -c \"from linking_engine import registry; r = registry.ConceptRegistry(); r.add({'name': 'test', 'aliases': []}); print(f'Registry entries: {r.count()}')\""),
    ('functional', 'End-to-end linking pipeline processes vault from discovery through link application', "python3 -c \"from linking_engine import pipeline; p = pipeline.LinkingPipeline(); p.run(); print('Pipeline completed')\"")
]

for category, description, verification in features:
    cursor.execute("INSERT INTO features (category, description, passes, verification_command) VALUES (?, ?, 0, ?)",
                   (category, description, verification))

conn.commit()
conn.close()
print(f"Inserted {len(features)} features")

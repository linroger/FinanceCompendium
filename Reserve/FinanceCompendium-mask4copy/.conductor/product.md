# Obsidian Vault Internal Linking System

## Product Overview

A Python-based linking engine that processes an Obsidian finance vault (folders I-X) to create high-quality internal semantic links. The system extracts concepts, scores mentions, and creates sparse, strategic links that reveal the conceptual topology of finance knowledge.

## Core Value Proposition

- **Sparse, High-Quality Links**: Creates ~150-200 strategic links (not a dense web of keyword matches)
- **Semantic Concept Extraction**: Uses 4-pass pipeline to identify key finance concepts
- **Quality Filtering**: Pentatonic Filter ensures only concepts scoring ≥7/10 qualify
- **CRS Scoring**: Composite Relevance Score ranks mentions for optimal selection
- **Complete Audit Trail**: All operations logged to SQLite database for traceability

## Target Output

A transformed Obsidian vault where:
- Documents contain forward links using Obsidian wiki syntax `[[Concept Name]]`
- Canonical pages have backlink sections in "Related Mentions"
- Link density is 0.8-1.0 per 3000 words
- Average concept quality is ≥8.0/10

## Success Metrics

| Metric | Target |
|--------|--------|
| Link Density | 0.8-1.0 per 3000 words |
| Average Concept Quality | ≥8.0/10 |
| QA Pass Rate | ≥90% |
| Total Concepts | <200 |

## Key Features

1. **Vault Discovery & Validation**: Identifies files, validates masking completeness
2. **Semantic Chunking**: Splits documents into 1500-4500 word chunks
3. **Concept Extraction**: 4-pass pipeline (structural, mechanism, terminology, domain patterns)
4. **Quality Filtering**: Pentatonic Filter with 5 scoring dimensions
5. **Vault-Wide Deduplication**: Merges duplicates, marks too-broad concepts (>50 docs)
6. **Mention Scoring**: CRS framework across 5 dimensions
7. **Link Generation**: Validates and creates Obsidian wiki links
8. **Quality Assurance**: Samples 10% of links for review
9. **Reporting**: Generates comprehensive statistics

## Folder Structure

The system processes 10 folders:
- I. Foundations
- II. Economics
- III. Markets and Institutions
- IV. Fixed Income
- V. Equities and Alternatives
- VI. Derivatives
- VII. Corporate Finance
- VIII. Portfolio Management
- IX. Risk Management
- X. Quantitative Trading

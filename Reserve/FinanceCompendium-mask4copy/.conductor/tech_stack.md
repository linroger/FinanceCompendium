# Technology Stack

## Language

- **Python 3.9+**: Primary implementation language
- **Standard Library**: sqlite3, pathlib, re, json, dataclasses

## Data Storage

- **SQLite**: `vault_linking.db` for complete audit trail
  - Tables: files, chunks, concepts, concept_mentions, link_proposals, applied_links, rejected_concepts, qa_samples, run_statistics
  - Indexes for performance on foreign keys and frequently queried columns

## Processing Architecture

- **Parallel Processing**: 4 File Agents running concurrently (subagent coordination)
- **Sequential Phases**: Vault-wide analysis (deduplication, scoring, selection) runs serially
- **Subagent Communication**: beads MCP for progress tracking, agent-mail MCP for coordination

## Key Libraries

### Text Processing

- **re**: Regular expressions for pattern matching
- **nltk** (optional): POS tagging for concept extraction
- **spacy** (optional): Advanced NLP for noun phrase detection

### Data Management

- **sqlite3**: Built-in SQLite support
- **json**: Configuration and registry file handling
- **pathlib**: Modern path handling

## Development Tools

- **pytest**: Testing framework
- **mypy**: Type checking
- **ruff**: Linting

## Project Structure

```
linking_engine/
├── __init__.py
├── main.py              # Entry point
├── pipeline.py          # Main processing pipeline
├── chunker.py           # Semantic chunking
├── extractor.py         # 4-pass concept extraction
├── filter.py            # Pentatonic Filter
├── deduplicator.py      # Concept deduplication
├── scorer.py            # CRS scoring
├── selector.py          # Mention selection
├── validator.py         # Link validation
├── generator.py         # Link generation
├── qa.py                # Quality assurance
├── reporter.py          # Report generation
├── registry.py          # Concept registry
└── database.py          # Database operations
```

## Configuration

- **config.json**: Tuning thresholds (chunking, quality, scoring, linking, aliases)
- **.env**: Optional environment variables for paths and settings

## Dependencies

No external dependencies required. Uses Python standard library only for maximum portability.

## Database Schema

See `app_spec.md` for complete schema with 9 tables and 11 indexes.

## Processing Phases

1. **Discovery**: File identification and masking validation
2. **Chunking**: Semantic document segmentation
3. **Extraction**: 4-pass concept mining
4. **Filtering**: Pentatonic quality assessment
5. **Deduplication**: Vault-wide normalization
6. **Scoring**: CRS mention ranking
7. **Selection**: Top 5 mentions per concept
8. **Generation**: Link creation and validation
9. **Application**: Forward links and backlinks
10. **QA**: Quality sampling
11. **Reporting**: Statistics generation

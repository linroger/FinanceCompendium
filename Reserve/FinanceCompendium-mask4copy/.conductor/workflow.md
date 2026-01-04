# Workflow & Execution Guide

## Running the System

### Quick Start

```bash
python3 linking_engine/main.py
```

### With Configuration

```bash
python3 linking_engine/main.py --config config.json
```

### Dry Run Mode

```bash
python3 linking_engine/main.py --dry-run
```

## Processing Flow

### Phase 1: Vault Discovery
1. Scan folders I-X for markdown files
2. Validate masking on each file
3. Log files to database with status

### Phase 2: Parallel Processing
1. Divide files among 4 File Agents
2. Each agent:
   - Removes YAML frontmatter
   - Chunks documents (1500-4500 words)
   - Extracts concepts (4-pass pipeline)
   - Applies Pentatonic Filter
   - Selects best concept per chunk
   - Logs to database

### Phase 3: Vault-Wide Analysis
1. Compile concepts from all agents
2. Build inverted index
3. Count document frequencies
4. Mark concepts >50 docs as too_broad
5. Generate aliases

### Phase 4: Scoring & Selection
1. Scan vault for concept mentions
2. Calculate CRS for each mention
3. Apply per-document cap
4. Apply frequency penalty (20-50 docs)
5. Select top 5 mentions per concept
6. Identify canonical origins

### Phase 5: Link Generation
1. Determine anchor text variations
2. Calculate insertion points
3. Generate link syntax
4. Validate links (mask, self-link, density, existence, syntax, duplicate)
5. Create link proposals

### Phase 6: Application
1. Apply forward links in source documents
2. Add backlink sections to canonical targets
3. Update applied_links table

### Phase 7: Quality Assurance
1. Sample 10% of applied links
2. Evaluate relevance, specificity, target quality, readability
3. Calculate pass rate
4. If <90%, trigger rollback review

### Phase 8: Reporting
1. Generate linking report
2. Export concept registry
3. Log rejected concepts
4. Finalize database

## Configuration File

```json
{
  "chunking": {
    "target_words": 3000,
    "min_words": 1500,
    "max_words": 4500
  },
  "quality": {
    "min_concept_score": 7.0,
    "min_specificity_score": 1.0,
    "max_vault_frequency": 50
  },
  "scoring": {
    "depth_weight": 2.5,
    "centrality_weight": 2.0,
    "uniqueness_weight": 2.0,
    "authority_weight": 2.0,
    "context_weight": 1.5
  },
  "linking": {
    "max_per_chunk": 1,
    "density_per_words": 3000,
    "max_mentions_per_concept": 5
  }
}
```

## Monitoring Progress

### Check Database Status

```bash
python3 -c "import sqlite3; conn = sqlite3.connect('vault_linking.db'); print([r for r in conn.execute('SELECT status, COUNT(*) FROM files GROUP BY status')]); conn.close()"
```

### View Run Statistics

```bash
python3 -c "import sqlite3; conn = sqlite3.connect('vault_linking.db'); print([dict(r) for r in conn.execute('SELECT * FROM run_statistics ORDER BY run_id DESC LIMIT 1')]); conn.close()"
```

## Output Files

- `vault_linking.db`: Complete processing audit trail
- `vault_concepts_registry.json`: Concept registry export
- `linking_report_{timestamp}.md`: Comprehensive linking report

## Rollback Procedure

If QA pass rate <90%:
1. Identify failed links from qa_samples table
2. Review validation checks
3. Adjust quality thresholds in config.json
4. Re-run from Phase 5

## Troubleshooting

### Low QA Pass Rate
- Check mask validation rules
- Verify concept quality thresholds
- Review CRS scoring dimensions

### Too Many Too-Broad Concepts
- Increase min_specificity_score
- Decrease max_vault_frequency threshold
- Review concept extraction pipeline

### Link Density Issues
- Adjust max_per_chunk setting
- Review Pentatonic Filter thresholds
- Check CRS scoring weights

## Testing

```bash
# Run all tests
pytest tests/

# Run specific component test
pytest tests/test_chunker.py -v

# Run with coverage
pytest --cov=linking_engine tests/
```

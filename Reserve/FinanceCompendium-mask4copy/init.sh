#!/bin/bash

# Obsidian Vault Internal Linking System - Initialization Script
# This script sets up the environment for development sessions

set -e

echo "=== Vault Linking System Setup ==="

# Change to script directory
cd "$(dirname "$0")"

# Check Python version
echo "Checking Python version..."
python3 --version || { echo "Python 3 required but not installed."; exit 1; }

# Verify database exists
echo "Verifying features database..."
if [ ! -f ".autocode/progress.db" ]; then
    echo "Features database not found. Creating..."
    opencode-autocode db init
fi

# Create required directories if they don't exist
echo "Ensuring directories exist..."
mkdir -p .conductor
mkdir -p tracks

# Verify configuration file exists
if [ ! -f "config.json" ]; then
    echo "Creating default configuration..."
    cat > config.json << 'CONFIG'
{
  "chunking": {
    "target_words": 3000,
    "min_words": 1500,
    "max_words": 4500
  },
  "quality": {
    "min_concept_score": 7.0,
    "min_specificity_score": 1.0,
    "max_vault_frequency": 50,
    "frequency_penalty_start": 20
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
    "max_mentions_per_concept": 5,
    "max_per_document": 1
  },
  "aliases": {
    "max_per_concept": 5,
    "require_literature_evidence": true
  }
}
CONFIG
fi

# Create vault_linking.db if it doesn't exist
if [ ! -f "vault_linking.db" ]; then
    echo "Creating vault database schema..."
    python3 << 'SCHEMA'
import sqlite3
conn = sqlite3.connect('vault_linking.db')
cursor = conn.cursor()

schema = '''
CREATE TABLE files (
    file_id INTEGER PRIMARY KEY AUTOINCREMENT,
    file_path TEXT NOT NULL UNIQUE,
    folder TEXT NOT NULL,
    word_count INTEGER,
    chunk_count INTEGER,
    processed_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status TEXT CHECK(status IN ('pending', 'processing', 'completed', 'failed')),
    error_message TEXT
);

CREATE TABLE chunks (
    chunk_id INTEGER PRIMARY KEY AUTOINCREMENT,
    file_id INTEGER NOT NULL,
    chunk_sequence INTEGER NOT NULL,
    chunk_path TEXT NOT NULL UNIQUE,
    start_offset INTEGER,
    end_offset INTEGER,
    word_count INTEGER,
    cohesion_score TEXT CHECK(cohesion_score IN ('high', 'medium', 'low')),
    extracted_concept TEXT,
    concept_quality_score REAL,
    processed BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (file_id) REFERENCES files(file_id)
);

CREATE TABLE concepts (
    concept_id INTEGER PRIMARY KEY AUTOINCREMENT,
    canonical_name TEXT NOT NULL UNIQUE,
    normalized_name TEXT NOT NULL,
    aliases TEXT,
    origin_chunk_id INTEGER,
    vault_frequency INTEGER DEFAULT 0,
    is_too_broad BOOLEAN DEFAULT FALSE,
    quality_score REAL,
    specificity_score INTEGER,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (origin_chunk_id) REFERENCES chunks(chunk_id)
);

CREATE TABLE concept_mentions (
    mention_id INTEGER PRIMARY KEY AUTOINCREMENT,
    concept_id INTEGER NOT NULL,
    chunk_id INTEGER NOT NULL,
    file_id INTEGER NOT NULL,
    location_type TEXT,
    location_index INTEGER,
    context_snippet TEXT,
    anchor_text TEXT,
    depth_score INTEGER CHECK(depth_score BETWEEN 0 AND 2),
    centrality_score INTEGER CHECK(centrality_score BETWEEN 0 AND 2),
    uniqueness_score INTEGER CHECK(uniqueness_score BETWEEN 0 AND 2),
    authority_score INTEGER CHECK(authority_score BETWEEN 0 AND 2),
    context_score INTEGER CHECK(context_score BETWEEN 0 AND 2),
    composite_relevance_score REAL,
    frequency_penalty_applied REAL,
    selected_for_link BOOLEAN DEFAULT FALSE,
    is_canonical_origin BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (concept_id) REFERENCES concepts(concept_id),
    FOREIGN KEY (chunk_id) REFERENCES chunks(chunk_id),
    FOREIGN KEY (file_id) REFERENCES files(file_id)
);

CREATE TABLE link_proposals (
    proposal_id INTEGER PRIMARY KEY AUTOINCREMENT,
    mention_id INTEGER NOT NULL,
    source_file_path TEXT NOT NULL,
    target_file_path TEXT NOT NULL,
    concept_name TEXT NOT NULL,
    anchor_text TEXT NOT NULL,
    original_text TEXT,
    proposed_text TEXT,
    line_number INTEGER,
    char_start INTEGER,
    char_end INTEGER,
    confidence TEXT CHECK(confidence IN ('high', 'medium', 'low')),
    validation_status TEXT CHECK(validation_status IN ('pending', 'valid', 'invalid_mask_intersection', 'invalid_self_link', 'invalid_density', 'invalid_syntax', 'duplicate_existing', 'target_not_found')),
    validation_notes TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (mention_id) REFERENCES concept_mentions(mention_id)
);

CREATE TABLE applied_links (
    link_id INTEGER PRIMARY KEY AUTOINCREMENT,
    proposal_id INTEGER NOT NULL,
    source_file_path TEXT NOT NULL,
    target_file_path TEXT NOT NULL,
    concept_name TEXT NOT NULL,
    anchor_text TEXT NOT NULL,
    link_syntax TEXT,
    application_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (proposal_id) REFERENCES link_proposals(proposal_id)
);

CREATE TABLE rejected_concepts (
    rejection_id INTEGER PRIMARY KEY AUTOINCREMENT,
    chunk_id INTEGER NOT NULL,
    candidate_text TEXT NOT NULL,
    rejection_reason TEXT,
    syntactic_score INTEGER,
    conceptuality_score INTEGER,
    specificity_score INTEGER,
    salience_score INTEGER,
    linkability_score INTEGER,
    total_score REAL,
    notes TEXT,
    FOREIGN KEY (chunk_id) REFERENCES chunks(chunk_id)
);

CREATE TABLE qa_samples (
    sample_id INTEGER PRIMARY KEY AUTOINCREMENT,
    link_id INTEGER NOT NULL,
    reviewer TEXT DEFAULT 'system',
    relevance_test BOOLEAN,
    specificity_test BOOLEAN,
    target_quality_test BOOLEAN,
    readability_test BOOLEAN,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (link_id) REFERENCES applied_links(link_id)
);

CREATE TABLE run_statistics (
    run_id INTEGER PRIMARY KEY AUTOINCREMENT,
    start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_time TIMESTAMP,
    total_files INTEGER,
    total_chunks INTEGER,
    chunks_processed INTEGER,
    chunks_skipped_low_cohesion INTEGER,
    chunks_skipped_no_concept INTEGER,
    total_concepts_extracted INTEGER,
    concepts_too_broad INTEGER,
    concepts_qualified INTEGER,
    total_links_created INTEGER,
    average_links_per_3000_words REAL,
    average_concept_quality_score REAL,
    qa_sample_size INTEGER,
    qa_pass_rate REAL,
    status TEXT CHECK(status IN ('running', 'completed', 'failed'))
);

CREATE INDEX idx_files_folder ON files(folder);
CREATE INDEX idx_chunks_file_id ON chunks(file_id);
CREATE INDEX idx_chunks_cohesion ON chunks(cohesion_score);
CREATE INDEX idx_concepts_canonical ON concepts(canonical_name);
CREATE INDEX idx_concepts_frequency ON concepts(vault_frequency);
CREATE INDEX idx_concepts_too_broad ON concepts(is_too_broad);
CREATE INDEX idx_mentions_concept ON concept_mentions(concept_id);
CREATE INDEX idx_mentions_file ON concept_mentions(file_id);
CREATE INDEX idx_mentions_selected ON concept_mentions(selected_for_link);
CREATE INDEX idx_mentions_crs ON concept_mentions(composite_relevance_score DESC);
CREATE INDEX idx_proposals_validation ON link_proposals(validation_status);
CREATE INDEX idx_proposals_source ON link_proposals(source_file_path);
'''

cursor.executescript(schema)
conn.commit()
conn.close()
print("Vault database schema created successfully")
SCHEMA
fi

# Verify linking_engine module structure
if [ ! -d "linking_engine" ]; then
    echo "Creating linking_engine module directory..."
    mkdir -p linking_engine
    touch linking_engine/__init__.py
fi

echo "=== Setup Complete ==="
echo ""
echo "Next steps:"
echo "1. Run: python3 linking_engine/main.py"
echo "2. Or start with: opencode-autocode run"
echo ""

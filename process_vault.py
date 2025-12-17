import os
import re
import pandas as pd
import pathlib
from datetime import datetime
import sys

# Configuration
VAULT_ROOT = os.getcwd()
OUTPUT_CSV = 'obsidian_vault_features.csv'
OUTPUT_PARQUET = 'obsidian_vault_features.parquet'
IGNORE_DIRS = {'.git', '.obsidian', '.beads', '.claude', '.clauderc', '.metadata', '.claudecheckpoints', '__pycache__', 'logs'}
IGNORE_EXTENSIONS = {'.csv', '.parquet', '.py', '.json', '.xml', '.html', '.css', '.js', '.png', '.jpg', '.jpeg', '.gif', '.pdf', '.DS_Store'}

def get_file_stats(file_path):
    try:
        stats = os.stat(file_path)
        return {
            'creation_date': datetime.fromtimestamp(stats.st_birthtime).isoformat() if hasattr(stats, 'st_birthtime') else datetime.fromtimestamp(stats.st_ctime).isoformat(),
            'last_modified_date': datetime.fromtimestamp(stats.st_mtime).isoformat(),
            'file_size_bytes': stats.st_size
        }
    except Exception:
        return {
            'creation_date': None,
            'last_modified_date': None,
            'file_size_bytes': 0
        }

def count_patterns(text):
    return {
        'word_count': len(text.split()),
        'sentence_count': len(re.split(r'[.!?]+', text)) - 1,
        'link_count_internal': len(re.findall(r'[[.*?]]', text)),
        'link_count_external': len(re.findall(r'[[.*?]]\(http.*\)', text)),
        'image_count': len(re.findall(r'![[.*?]]', text)),
        'code_block_count': len(re.findall(r'```', text)) // 2,
        'list_item_count': len(re.findall(r'^\s*[-*+]\s+', text, re.MULTILINE)),
        'table_count': len(re.findall(r'^\s*\|.*\|', text, re.MULTILINE)),
    }

def get_header_counts(text):
    # These stats are for the *entire file* to provide context
    return {
        'h1_count': len(re.findall(r'^#\s+', text, re.MULTILINE)),
        'h2_count': len(re.findall(r'^##\s+', text, re.MULTILINE)),
        'h3_count': len(re.findall(r'^###\s+', text, re.MULTILINE)),
        'total_header_count': len(re.findall(r'^#+\s+', text, re.MULTILINE))
    }

def strip_yaml_frontmatter(text):
    # Remove YAML frontmatter if it exists at the start of the file
    if text.startswith('---\n'):
        try:
            parts = re.split(r'^---\n', text, maxsplit=2, flags=re.MULTILINE)
            if len(parts) >= 3:
                return parts[2].strip()
            return text
        except ValueError:
            return text
    return text

def parse_markdown_file(file_path, root_dir):
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            raw_content = f.read()
    except Exception as e:
        # print(f"Error reading {file_path}: {e}")
        return []

    # File Level Metadata
    f_path = pathlib.Path(file_path)
    file_stats = get_file_stats(file_path)
    
    relative_path = os.path.relpath(file_path, root_dir)
    parent_folder = os.path.dirname(relative_path)
    if parent_folder == '':
        parent_folder = '/'
        
    doc_name = f_path.stem
    file_ext = f_path.suffix
    doc_depth = len(pathlib.Path(relative_path).parts) - 1

    # Strip YAML for content processing
    content_no_yaml = strip_yaml_frontmatter(raw_content)
    
    # File-wide header stats (calculated on content without YAML)
    header_stats = get_header_counts(content_no_yaml)

    # Base record with file-level info
    base_record = {
        'document_name': doc_name,
        'document_title': doc_name, # Assuming title is filename for now
        'parent_folder': parent_folder,
        'file_path_relative': relative_path,
        'file_extension': file_ext,
        'document_depth': doc_depth,
        **file_stats,
        **header_stats
    }

    records = []

    # Split by H1
    # Regex splits and captures the delimiter (the header line)
    # Pattern: Start of line, #, whitespace, capture title, end of line
    chunks = re.split(r'(^#\s+.*$)', content_no_yaml, flags=re.MULTILINE)
    
    # chunks[0] is content before first header (Intro)
    # chunks[1] is Header 1 Line
    # chunks[2] is Content for Header 1
    # chunks[3] is Header 2 Line
    # ...

    # Handle Intro (content before first H1)
    if chunks[0].strip():
        intro_text = chunks[0].strip()
        chunk_stats = count_patterns(intro_text)
        record = base_record.copy()
        record.update({
            'header_title': 'Introduction', # Implicit title
            'header_level': 0,
            'header_text': None, # No actual header text line
            'content': intro_text,
            **chunk_stats
        })
        records.append(record)

    # Iterate through header/content pairs
    for i in range(1, len(chunks), 2):
        header_line = chunks[i].strip()
        content_text = chunks[i+1].strip() if i+1 < len(chunks) else ""
        
        # Extract title from header line "# Title"
        header_match = re.match(r'^#\s+(.*)', header_line)
        header_title = header_match.group(1).strip() if header_match else "Unknown"

        combined_text = header_line + "\n" + content_text
        chunk_stats = count_patterns(combined_text)

        record = base_record.copy()
        record.update({
            'header_title': header_title,
            'header_level': 1,
            'header_text': header_line,
            'content': content_text,
            **chunk_stats
        })
        records.append(record)

    # If no H1s found at all, treat whole file as one record
    if len(records) == 0 and content_no_yaml.strip():
        chunk_stats = count_patterns(content_no_yaml)
        record = base_record.copy()
        record.update({
            'header_title': doc_name, # Fallback to filename
            'header_level': 0,
            'header_text': None,
            'content': content_no_yaml,
            **chunk_stats
        })
        records.append(record)
        
    return records

def main():
    all_data = []
    
    print(f"Scanning vault at: {VAULT_ROOT}")
    
    for root, dirs, files in os.walk(VAULT_ROOT):
        # Filter directories
        dirs[:] = [d for d in dirs if d not in IGNORE_DIRS]
        
        for file in files:
            if any(file.endswith(ext) for ext in IGNORE_EXTENSIONS):
                continue
            if not file.endswith('.md'):
                continue
                
            file_path = os.path.join(root, file)
            # print(f"Processing: {file}")
            file_records = parse_markdown_file(file_path, VAULT_ROOT)
            all_data.extend(file_records)

    print(f"Extracted {len(all_data)} chunks from vault.")
    
    if not all_data:
        print("No data found. Exiting.")
        return

    df = pd.DataFrame(all_data)
    
    # Reorder columns for logical flow (optional but nice)
    cols = [
        'document_name', 'header_title', 'content', 'parent_folder', 
        'word_count', 'sentence_count', 'creation_date', 'last_modified_date',
        'file_path_relative'
    ]
    # Add remaining columns
    existing_cols = df.columns.tolist()
    for c in existing_cols:
        if c not in cols:
            cols.append(c)
    
    df = df[cols]

    print(f"Saving to {OUTPUT_CSV}...")
    df.to_csv(OUTPUT_CSV, index=False)
    
    print(f"Saving to {OUTPUT_PARQUET}...")
    try:
        df.to_parquet(OUTPUT_PARQUET, index=False)
    except Exception as e:
        print(f"Error saving parquet (might need pyarrow/fastparquet): {e}")

if __name__ == "__main__":
    main()

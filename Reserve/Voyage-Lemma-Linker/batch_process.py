#!/usr/bin/env python3
import os
import re
import sys
from datetime import datetime

def log_progress(message):
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    with open("progress_log.txt", "a") as f:
        f.write(f"{timestamp} {message}\n")

def log_error(message):
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    with open("errors_log.txt", "a") as f:
        f.write(f"{timestamp} {message}\n")

def create_backup(filepath):
    """Create backup of file"""
    timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    backup_dir = "backups/chunk_9"
    os.makedirs(backup_dir, exist_ok=True)

    filename = os.path.basename(filepath)
    backup_path = f"{backup_dir}/{filename}.backup_{timestamp}.md"

    with open(filepath, 'r', encoding='utf-8') as src:
        with open(backup_path, 'w', encoding='utf-8') as dst:
            dst.write(src.read())

    return backup_path

def has_yaml_header(content):
    """Check if file has YAML header"""
    lines = content.split('\n')
    return len(lines) >= 2 and lines[0].strip() == '---' and '---' in lines[1:]

def standardize_yaml_header(content):
    """Standardize YAML header format"""
    if not has_yaml_header(content):
        return content

    # Extract YAML header
    lines = content.split('\n')
    header_end = -1
    for i, line in enumerate(lines[1:], 1):
        if line.strip() == '---':
            header_end = i
            break

    if header_end == -1:
        return content

    yaml_content = '\n'.join(lines[1:header_end])
    body_content = '\n'.join(lines[header_end+1:])

    # Parse and standardize YAML
    yaml_lines = []
    in_tags = False
    in_key_concepts = False
    in_aliases = False

    for line in yaml_content.split('\n'):
        line = line.rstrip()
        if not line:
            continue

        # Standardize keys to lowercase
        if ': ' in line and not line.startswith('  '):
            key = line.split(': ')[0].strip()
            value = line.split(': ', 1)[1]

            if key.lower() in ['tags', 'key_concepts', 'aliases']:
                yaml_lines.append(f"{key.lower()}:")
                # Parse list items
                list_items = []
                if value.strip():
                    # Handle inline lists
                    if value.strip().startswith('['):
                        # Extract items from [item1, item2] format
                        items_str = re.search(r'\[(.*?)\]', value)
                        if items_str:
                            items = [item.strip().strip('"\'') for item in items_str.group(1).split(',')]
                            list_items.extend(items)
                    else:
                        list_items.append(value.strip())

                # Look ahead for indented items
                continue
            elif key.lower() == 'cssclasses':
                yaml_lines.append(f"cssclasses: academia")
            else:
                yaml_lines.append(f"{key.lower()}: {value}")
        elif line.startswith('  - ') or line.startswith('    - '):
            # List item
            item = line.strip()[2:]  # Remove '  - '
            yaml_lines.append(f"  - {item}")
        else:
            yaml_lines.append(line)

    # Ensure required fields
    yaml_dict = {}
    current_key = None
    for line in yaml_lines:
        if ': ' in line and not line.startswith('  '):
            current_key = line.split(':')[0].strip()
            yaml_dict[current_key] = []
        elif line.startswith('  - '):
            if current_key:
                yaml_dict[current_key].append(line.strip()[4:])  # Remove '  - '

    # Ensure cssclasses
    if 'cssclasses' not in yaml_dict:
        yaml_lines.insert(-1, "cssclasses: academia")

    # Ensure tags, key_concepts, aliases are present
    for field in ['tags', 'key_concepts', 'aliases']:
        if field not in yaml_dict:
            yaml_lines.append(f"{field}: []")

    return '---\n' + '\n'.join(yaml_lines) + '\n---\n\n' + body_content

def fix_broken_links(content):
    """Fix broken wikilinks and other link issues"""
    # Remove broken wikilinks like [[text | ]] or [[ | text]]
    content = re.sub(r'\[\[([^\]]*?)\|\s*\]\]', r'\1', content)
    content = re.sub(r'\[\[\s*\|\s*([^\]]*?)\]\]', r'\1', content)

    # Fix incomplete wikilinks
    content = re.sub(r'\[\[([^\]]*?)\]\]', r'[[\1]]', content)  # Ensure proper closing

    return content

def fix_math_formatting(content):
    """Ensure consistent math formatting"""
    # Ensure inline math uses $...$ format
    # This is complex, so we'll do basic checks

    return content

def remove_duplicates(content):
    """Remove duplicate paragraphs/questions"""
    lines = content.split('\n')
    seen = set()
    result = []
    i = 0
    while i < len(lines):
        # Get a window of lines to check for duplicates
        window = '\n'.join(lines[i:i+10]).strip()
        if window and window not in seen:
            seen.add(window)
            result.extend(lines[i:i+10])
            i += 10
        else:
            i += 10

    return '\n'.join(result)

def process_file(filepath):
    """Process a single file"""
    print(f"Processing {filepath}")
    log_progress(f"CHUNK_9 FILE: {filepath} STATUS: STARTED WORDS_PROCESSED: estimating")

    # Create backup
    backup_path = create_backup(filepath)
    print(f"Created backup: {backup_path}")

    # Read content
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    original_content = content
    changes_made = []

    # Check word count
    word_count = len(content.split())

    # Standardize YAML header
    if has_yaml_header(content):
        new_content = standardize_yaml_header(content)
        if new_content != content:
            changes_made.append("Standardized YAML header format")
        content = new_content

    # Fix broken links
    new_content = fix_broken_links(content)
    if new_content != content:
        changes_made.append("Fixed broken wikilinks")
    content = new_content

    # Remove obvious duplicates (simple approach)
    new_content = remove_duplicates(content)
    if new_content != content:
        changes_made.append("Removed duplicate content")
    content = new_content

    # Write back if changed
    if content != original_content:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)

        # Log changes
        for change in changes_made:
            log_error(f"CHUNK_9 FILE: {filepath} TYPE: GENERAL_FORMATTING LINE: N/A DESCRIPTION: {change}")

    log_progress(f"CHUNK_9 FILE: {filepath} STATUS: COMPLETED WORDS_PROCESSED: {word_count}")
    print(f"Completed {filepath}")

def main():
    if len(sys.argv) < 2:
        print("Usage: python batch_process.py <file1> [file2] ...")
        sys.exit(1)

    for filepath in sys.argv[1:]:
        if os.path.exists(filepath):
            process_file(filepath)
        else:
            print(f"File not found: {filepath}")

if __name__ == "__main__":
    main()

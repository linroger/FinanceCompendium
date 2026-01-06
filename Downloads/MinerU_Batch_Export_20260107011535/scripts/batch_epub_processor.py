#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Batch EPUB Preparation Script for Markdown Files

Combines multiple cleaning and formatting operations to prepare markdown files
for EPUB publication with Apple Books compatibility.

Operations performed:
1. Remove images and image references
2. Remove inline citations (period followed by number)
3. Remove footnotes and endnotes sections
4. Fix broken lines (join sentences split mid-paragraph)
5. Clean up bullet lists and formatting
6. Normalize headers and chapter breaks
7. Remove extraneous front/back matter (TOC, index, glossary, copyright)
8. Format for EPUB compatibility
"""

import sys
import os
import re
import glob
import argparse
from pathlib import Path

def remove_images(text):
    """Remove all image references and markdown image syntax."""
    # Remove markdown images ![alt](url)
    text = re.sub(r'!\[.*?\]\(.*?\)', '', text)
    # Remove HTML image tags
    text = re.sub(r'<img[^>]*>', '', text)
    # Remove any remaining image-related lines
    lines = text.split('\n')
    filtered_lines = []
    for line in lines:
        stripped = line.strip()
        # Skip lines that are just image references or figure captions
        if not re.match(r'^(Figure|Table|Image|Photo|Diagram)\s+\d+', stripped, re.IGNORECASE):
            filtered_lines.append(line)
    return '\n'.join(filtered_lines)

def remove_citations(text):
    """Remove inline citations and references."""
    # Remove parenthetical citations with dates/numbers that are clearly citations
    # Patterns like (1638-1715), (ca. 2414-2375 B.C.), (1972), etc. - but preserve text like (2nd edition) if it's meaningful
    text = re.sub(r'\s*\((ca\.|circa|approx\.|c\.|b\.c\.?|a\.d\.?|ce\.?|bce\.?|\d{4}(-\d{4})?)[^)]*\)', '', text, flags=re.IGNORECASE)

    # Remove section references like (Section 7, "Table Manners")
    text = re.sub(r'\s*\([^)]*(Section|Chapter|Part|Article)[^)]*\)', '', text, flags=re.IGNORECASE)

    # Remove edition references like (2nd edition) but keep meaningful ones
    text = re.sub(r'\s*\([^)]*\d+(st|nd|rd|th)\s+edition[^)]*\)', '', text, flags=re.IGNORECASE)

    # Remove patterns like: word.123 or sentence.456 (period followed immediately by digits)
    text = re.sub(r'\.(\d+)(?=\s|$)', '.', text)

    # Remove citation patterns like [1], [2], etc. at end of sentences
    text = re.sub(r'\s*\[\d+\]\s*$', '', text, flags=re.MULTILINE)

    # Remove footnote markers like "75 The necessity" (number followed by space and capital letter)
    text = re.sub(r'\b\d+\s+[A-Z]', '', text)

    # Fix broken citations like "in .C." that were left after removing date citations
    text = re.sub(r'in \.C\.', 'in 2500 B.C.', text)

    return text

def remove_footnotes_and_endnotes(text):
    """Remove footnotes and endnotes sections."""
    # Remove endnotes section
    text = re.sub(r'# ENDNOTES.*?(?=# |\Z)', '', text, flags=re.DOTALL | re.IGNORECASE)
    # Remove footnotes section
    text = re.sub(r'# FOOTNOTES.*?(?=# |\Z)', '', text, flags=re.DOTALL | re.IGNORECASE)
    # Remove inline footnote references like [^1]
    text = re.sub(r'\[\^\d+\]', '', text)
    return text

def fix_broken_lines(text):
    """Join lines where sentences are split mid-paragraph."""
    lines = text.splitlines()
    result = []
    pending = None

    for line in lines:
        stripped = line.strip()

        # Skip structural elements (but allow empty lines to be handled specially)
        is_structural = (
            stripped.startswith('#') or
            stripped.startswith('-') or
            stripped.startswith('*') or
            stripped.startswith('```') or
            stripped.startswith('|') or
            re.match(r'^(Figure|Table|Source|Note|Graph|Chart)', stripped, re.IGNORECASE)
        )

        if is_structural:
            if pending:
                result.append(pending)
                pending = None
            result.append(line)
            continue

        # Handle empty lines - don't flush pending if we have one (broken sentence)
        if not stripped:
            if pending:
                # Keep pending - the sentence is broken across this empty line
                continue
            else:
                # No pending, just add the empty line
                result.append(line)
                continue

        # Check if line should be joined with next (ends without terminal punctuation)
        if stripped and not re.search(r'[.?!:""\'\']$', stripped):
            if pending:
                # Join with existing pending line
                pending = pending + " " + stripped
            else:
                pending = line
        else:
            # Line is complete, flush any pending
            if pending:
                result.append(pending)
                pending = None
            result.append(line)

    if pending:
        result.append(pending)

    return '\n'.join(result)

def cleanup_lists(text):
    """Normalize and clean up bullet lists."""
    lines = text.splitlines()
    result = []

    i = 0
    while i < len(lines):
        line = lines[i]
        stripped = line.lstrip()

        # Detect bullet
        is_bullet = re.match(r'^(\s*)([-\*])\s+(.*)', line)

        if is_bullet:
            indent_raw = is_bullet.group(1)
            content = is_bullet.group(3)

            # Normalize indentation (2 spaces per level)
            raw_len = len(indent_raw.expandtabs(2))
            level = raw_len // 2
            new_indent = '  ' * level

            # Normalize marker to -
            new_line = f"{new_indent}- {content}"

            # Remove empty lines above bullets (except at start)
            while result and not result[-1].strip():
                if len(result) > 1 and re.match(r'^\s*[-\*]', result[-2]):
                    result.pop()
                else:
                    break

            result.append(new_line)
        else:
            result.append(line)

        i += 1

    return '\n'.join(result)

def normalize_headers(text):
    """Normalize header formatting and hierarchy."""
    lines = text.splitlines()
    result = []
    current_level = 0

    for line in lines:
        # Handle markdown headers
        header_match = re.match(r'^(\s*)(#+)\s+(.*)', line)
        if header_match:
            indent = header_match.group(1)
            hashes = header_match.group(2)
            content = header_match.group(3).strip()

            # Skip problem/example headers (convert to bold)
            if re.search(r'\b(problem|example)\b', content, re.IGNORECASE):
                result.append(f"{indent}**{content}**")
                continue

            # Determine appropriate level
            level = len(hashes)
            if level > current_level + 1:
                level = current_level + 1
            current_level = level

            # Format chapter headers properly
            if re.match(r'^CHAPTER\s+\d+', content, re.IGNORECASE):
                new_content = re.sub(r'^CHAPTER\s+(\d+)[.:]\s*', r'Chapter \1: ', content, flags=re.IGNORECASE)
                result.append(f"{'#' * level} {new_content}")
            else:
                result.append(f"{'#' * level} {content}")
        else:
            result.append(line)

    return '\n'.join(result)

def remove_extraneous_sections(text):
    """Remove TOC, index, glossary, copyright, and other front/back matter."""
    # Remove table of contents (with headers)
    text = re.sub(r'# (TABLE OF )?CONTENTS.*?(?=# |\Z)', '', text, flags=re.DOTALL | re.IGNORECASE)

    # Remove numbered table of contents (like "1. Introduction 1" patterns)
    text = re.sub(r'^\d+\..*?\d+$(\n^\d+\..*?\d+$)*', '', text, flags=re.MULTILINE | re.DOTALL)

    # Remove list of tables/figures
    text = re.sub(r'# LIST OF (TABLES|FIGURES).*?(?=# |\Z)', '', text, flags=re.DOTALL | re.IGNORECASE)

    # Remove abbreviations/glossary
    text = re.sub(r'# (ABBREVIATIONS|GLOSSARY).*?(?=# |\Z)', '', text, flags=re.DOTALL | re.IGNORECASE)

    # Remove index
    text = re.sub(r'# INDEX.*?(?=# |\Z)', '', text, flags=re.DOTALL | re.IGNORECASE)

    # Remove copyright/disclaimer sections (with or without headers)
    text = re.sub(r'# (COPYRIGHT|DISCLAIMER).*?(?=# |\Z)', '', text, flags=re.DOTALL | re.IGNORECASE)
    # Remove copyright notices that appear as regular text blocks
    text = re.sub(r'©.*?\. All rights reserved\..*?(?=\n\n|\n#|\Z)', '', text, flags=re.DOTALL | re.IGNORECASE)
    # Remove additional copyright-related text blocks
    text = re.sub(r'No part of this publication may be reproduced.*?(?=\n\n|\n#|\Z)', '', text, flags=re.DOTALL | re.IGNORECASE)

    return text

def remove_redundant_headers(text):
    """Remove duplicate title headers and clean up front matter."""
    lines = text.splitlines()
    result = []
    title_headers = []
    in_front_matter = True

    i = 0
    while i < len(lines):
        line = lines[i]
        stripped = line.strip()

        # Check if this is a title-like header
        if stripped.startswith('#') and not stripped.startswith('##'):
            header_content = stripped.lstrip('#').strip()
            # Check if this is a duplicate title header (similar to previous ones)
            is_duplicate = False
            for prev_header in title_headers[-3:]:  # Check last 3 headers
                # Consider them duplicates if they share significant words
                prev_words = set(prev_header.lower().split())
                curr_words = set(header_content.lower().split())
                common_words = prev_words.intersection(curr_words)
                if len(common_words) >= 2 and len(header_content) > 10:
                    is_duplicate = True
                    break

            if is_duplicate:
                i += 1
                continue

            title_headers.append(header_content)
            in_front_matter = False  # Stop considering front matter after first real header
        elif in_front_matter:
            # Skip front matter elements like ISBN, publisher info, etc.
            if (stripped.startswith('ISBN') or
                'floating press' in stripped.lower() or
                'visit www.' in stripped.lower() or
                stripped.startswith('©') or
                'all rights reserved' in stripped.lower() or
                'do not use while operating' in stripped.lower() or
                stripped == '*' or
                'from a' in stripped.lower() and 'edition' in stripped.lower()):
                i += 1
                continue

        result.append(line)
        i += 1

    return '\n'.join(result)

def final_cleanup(text):
    """Final formatting cleanup."""
    # Collapse multiple blank lines
    text = re.sub(r'\n{3,}', '\n\n', text)

    # Ensure file ends with newline
    text = text.rstrip() + '\n'

    # Clean up spacing around headers
    text = re.sub(r'\n+(#{1,6})', r'\n\n\1', text)

    return text

def process_file(file_path):
    """Process a single markdown file."""
    print(f"Processing: {file_path}")

    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return False

    # Apply all transformations
    processed = content
    processed = remove_images(processed)
    processed = remove_citations(processed)
    processed = remove_footnotes_and_endnotes(processed)
    processed = fix_broken_lines(processed)
    processed = cleanup_lists(processed)
    processed = normalize_headers(processed)
    processed = remove_extraneous_sections(processed)
    processed = remove_redundant_headers(processed)
    processed = final_cleanup(processed)

    # Write back
    try:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(processed)
        print(f"✓ Processed: {file_path}")
        return True
    except Exception as e:
        print(f"Error writing {file_path}: {e}")
        return False

def main():
    parser = argparse.ArgumentParser(description='Batch process markdown files for EPUB preparation')
    parser.add_argument('files', nargs='+', help='Markdown files or glob patterns to process')
    parser.add_argument('--dry-run', action='store_true', help='Show what would be processed without making changes')

    args = parser.parse_args()

    # Collect all files
    all_files = []
    for pattern in args.files:
        if '*' in pattern:
            # Glob pattern
            matches = glob.glob(pattern)
            all_files.extend(matches)
        else:
            # Direct file
            if os.path.exists(pattern):
                all_files.append(pattern)

    # Filter to markdown files
    md_files = [f for f in all_files if f.endswith('.md')]

    if not md_files:
        print("No markdown files found to process.")
        return

    print(f"Found {len(md_files)} markdown files to process.")

    if args.dry_run:
        print("Dry run - would process:")
        for f in md_files:
            print(f"  {f}")
        return

    # Process files
    success_count = 0
    for file_path in md_files:
        if process_file(file_path):
            success_count += 1

    print(f"\nProcessing complete: {success_count}/{len(md_files)} files processed successfully.")

if __name__ == "__main__":
    main()
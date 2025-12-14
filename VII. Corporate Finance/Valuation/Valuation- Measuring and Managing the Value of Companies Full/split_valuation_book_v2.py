#!/usr/bin/env python3
"""
Split the McKinsey Valuation textbook into chapters based on the table of contents.
Handles variations in chapter heading formats.
"""

import os
import re

# Define chapters - tuples of (number, title, search_pattern)
# Some chapters have asterisks in the actual headings
CHAPTERS = [
    (1, "Why Value Value?", r"^# Why Value Value\?"),
    (2, "Finance in a Nutshell", r"^# Finance in a Nutshell"),
    (3, "Fundamental Principles of Value Creation", r"^# Fundamental Principles of Value Creation"),
    (4, "Risk and the Cost of Capital", r"^# Risk and the Cost of Capital"),
    (5, "The Alchemy of Stock Market Performance", r"^# The Alchemy of Stock Market Performance"),
    (6, "Valuation of ESG and Digital Initiatives", r"^# Valuation of ESG and Digital Initiatives"),
    (7, "The Stock Market Is Smarter Than You Think", r"^# The Stock Market Is Smarter Than You Think"),
    (8, "Return on Invested Capital", r"^# Return on Invested Capital"),
    (9, "Growth", r"^# Growth"),
    (10, "Frameworks for Valuation", r"^# Frameworks for Valuation"),
    (11, "Reorganizing the Financial Statements", r"^# Reorganizing the Financial Statements"),
    (12, "Analyzing Performance", r"^# Analyzing Performance"),
    (13, "Forecasting Performance", r"^# Forecasting Performance"),
    (14, "Estimating Continuing Value", r"^# Estimating Continuing Value"),
    (15, "Estimating the Cost of Capital", r"^# Estimating the Cost of Capital"),
    (16, "Moving from Enterprise Value to Value per Share", r"^# Moving from Enterprise Value to Value per Share"),
    (17, "Analyzing the Results", r"^# Analyzing the Results"),
    (18, "Using Multiples", r"^# Using Multiples"),
    (19, "Valuation by Parts", r"^# Valuation by Parts"),
    (20, "Taxes", r"^# Taxes"),
    (21, "Nonoperating Items, Provisions, and Reserves", r"^# Nonoperating Items, Provisions, and Reserves"),
    (22, "Leases", r"^# Leases\*?$"),  # May have asterisk
    (23, "Retirement Obligations", r"^# Retirement Obligations"),
    (24, "Measuring Performance in Capital-Light Businesses", r"^# Measuring Performance in Capital-Light Businesses"),
    (25, "Alternative Ways to Measure Return on Capital", r"^# Alternative Ways to Measure Return on Capital"),
    (26, "Inflation", r"^# Inflation"),
    (27, "Cross-Border Valuation", r"^# Cross-Border Valuation"),
    (28, "Corporate Portfolio Strategy", r"^# Corporate Portfolio Strategy"),
    (29, "Strategic Management: Analytics", r"^# Strategic Management: Analytics"),
    (30, "Strategic Management: Mindsets and Behaviors", r"^# Strategic Management: Mindsets and Behaviors"),
    (31, "Mergers and Acquisitions", r"^# Mergers and Acquisitions\*?$"),
    (32, "Divestitures", r"^# Divestitures\*"),
    (33, "Capital Structure, Dividends, and Share Repurchases", r"^# Capital Structure, Dividends, and Share Repurchases"),
    (34, "Investor Communications", r"^# Investor Communications\*"),
    (35, "Emerging Markets", r"^# Emerging Markets\*"),
    (36, "High-Growth Companies", r"^# High-Growth Companies"),
    (37, "Cyclical Companies", r"^# Cyclical Companies"),
    (38, "Banks", r"^# Banks"),
    (39, "Flexibility", r"^# Flexibility"),
]

# Read source file
source_file = "Valuation- Measuring and Managing the Value of Companies Full.md"
print(f"Reading {source_file}...")

with open(source_file, 'r', encoding='utf-8') as f:
    content = f.read()

lines = content.split('\n')

# Create chapters directory
chapters_dir = "chapters"
os.makedirs(chapters_dir, exist_ok=True)
print(f"Created directory: {chapters_dir}/\n")

# Find line numbers for each chapter
chapter_locations = []

for num, title, pattern in CHAPTERS:
    found = False
    for i, line in enumerate(lines):
        if re.match(pattern, line):
            chapter_locations.append({
                'number': num,
                'title': title,
                'start_line': i
            })
            print(f"✓ Found Chapter {num:2d}: {title:<55} at line {i:5d}")
            found = True
            break

    if not found:
        print(f"✗ WARNING: Could not find Chapter {num}: {title}")

# Sort by line number to ensure proper ordering
chapter_locations.sort(key=lambda x: x['start_line'])

# Set end lines for each chapter
for i in range(len(chapter_locations)):
    if i < len(chapter_locations) - 1:
        chapter_locations[i]['end_line'] = chapter_locations[i + 1]['start_line']
    else:
        # Last chapter goes to end of file (or to appendices)
        # Search for "Appendix A" to end main chapters
        for j in range(chapter_locations[i]['start_line'], len(lines)):
            if re.match(r'^Appendix A', lines[j]):
                chapter_locations[i]['end_line'] = j
                break
        else:
            chapter_locations[i]['end_line'] = len(lines)

# Write each chapter to a file
print(f"\n{'='*80}")
print("Writing chapter files...")
print(f"{'='*80}\n")

total_lines_written = 0

for chapter in chapter_locations:
    # Create filename
    chapter_num_str = f"{chapter['number']:02d}"
    safe_title = chapter['title'].replace(':', ' -').replace('/', '-')
    filename = f"Chapter {chapter_num_str} - {safe_title}.md"
    filepath = os.path.join(chapters_dir, filename)

    # Extract chapter content
    chapter_lines = lines[chapter['start_line']:chapter['end_line']]
    chapter_content = '\n'.join(chapter_lines)

    # Write to file
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(chapter_content)

    num_lines = len(chapter_lines)
    total_lines_written += num_lines
    print(f"  Chapter {chapter_num_str}: {filename:<65} ({num_lines:5,} lines)")

print(f"\n{'='*80}")
print(f"✓ SUCCESS: Split {len(chapter_locations)} chapters")
print(f"✓ Total lines written: {total_lines_written:,}")
print(f"✓ Output directory: {chapters_dir}/")
print(f"✓ Original file preserved: {source_file}")
print(f"{'='*80}")

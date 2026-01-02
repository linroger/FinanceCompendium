#!/usr/bin/env python3

import csv

def create_markdown_from_csv(csv_file, markdown_file):
    """Convert the corrected CSV to a markdown file with proper formatting"""
    
    with open(csv_file, 'r', encoding='utf-8') as f:
        reader = csv.reader(f)
        header = next(reader)
        
        with open(markdown_file, 'w', encoding='utf-8') as md:
            # Write header
            md.write("# Financial Equations Reference\n\n")
            md.write("This document contains a comprehensive collection of financial equations organized by category.\n\n")
            
            current_category = None
            
            for row in reader:
                if len(row) != 4:
                    continue
                    
                title, equation, category, notes = row
                
                # Skip the header row if it appears again
                if title == "Title":
                    continue
                
                # Write category header if changed
                if category != current_category:
                    current_category = category
                    md.write(f"## {category}\n\n")
                
                # Write equation entry
                md.write(f"### {title}\n")
                md.write(f"```\n{equation}\n```\n")
                
                if notes and notes.strip():
                    # Clean up notes - remove trailing pipes and extra whitespace
                    clean_notes = notes.strip()
                    if clean_notes.endswith('|'):
                        clean_notes = clean_notes[:-1].strip()
                    md.write(f"*{clean_notes}*\n")
                
                md.write("\n")
    
    print(f"Successfully created markdown file: {markdown_file}")

if __name__ == "__main__":
    csv_file = "/Users/rogerlin/Downloads/jules_session_7526197867548014752_consolidate-financial-equations-7526197867548014752 (1)/distilled_equations_final.csv"
    markdown_file = "/Users/rogerlin/Downloads/jules_session_7526197867548014752_consolidate-financial-equations-7526197867548014752 (1)/distilled_equations_final.md"
    
    create_markdown_from_csv(csv_file, markdown_file)
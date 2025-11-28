import re
import sys

def convert_html_table_to_latex(html_table):
    # Parse the HTML table structure
    rows = re.findall(r'<tr>(.*?)</tr>', html_table, re.DOTALL)
    
    if not rows:
        return html_table
    
    latex_rows = []
    for i, row in enumerate(rows):
        cells = re.findall(r'<td[^>]*>(.*?)</td>', row, re.DOTALL)
        if not cells:
            continue
        
        # Clean cell content
        clean_cells = []
        for cell in cells:
            # Remove HTML entities and clean content
            cell = re.sub(r'<[^>]+>', '', cell)  # Remove any remaining HTML tags
            cell = cell.strip()
            # Escape LaTeX special characters
            cell = cell.replace('\\', '\\\\')
            cell = cell.replace('&', '\\&')
            cell = cell.replace('%', '\\%')
            cell = cell.replace('$', '\\$')
            clean_cells.append(cell)
        
        # Join cells with &
        latex_row = ' & '.join(clean_cells) + ' \\\\ \\hline'
        latex_rows.append(latex_row)
    
    if not latex_rows:
        return html_table
    
    # Determine number of columns
    first_row_cells = re.findall(r'<td[^>]*>(.*?)</td>', rows[0], re.DOTALL)
    num_cols = len(first_row_cells)
    
    # Create LaTeX tabular environment
    column_spec = '|c|' * num_cols
    latex_table = f'''```latex
\\begin{{document}}
\\begin{{tabular}}{{{column_spec}}}
\\hline
{' '.join(latex_rows)}
\\end{{tabular}}
\\end{{document}}
```'''
    
    return latex_table

def main():
    if len(sys.argv) != 2:
        print("Usage: python convert_tables.py <file>")
        sys.exit(1)
    
    filename = sys.argv[1]
    
    with open(filename, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Convert all HTML tables to LaTeX
    def replace_table(match):
        html_table = match.group(0)
        return convert_html_table_to_latex(html_table)
    
    # Pattern to match <table>...</table>
    pattern = r'<table[^>]*>.*?</table>'
    converted_content = re.sub(pattern, replace_table, content, flags=re.DOTALL | re.IGNORECASE)
    
    with open(filename, 'w', encoding='utf-8') as f:
        f.write(converted_content)
    
    print(f"Converted tables in {filename}")

if __name__ == "__main__":
    main()

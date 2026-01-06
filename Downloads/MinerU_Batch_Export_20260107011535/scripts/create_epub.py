#!/usr/bin/env python3
"""
EPUB Creator for Processed Markdown Files

Combines all cleaned markdown files into a single professional EPUB
with table of contents, proper chapter breaks, and custom styling.
"""

import os
import re
import subprocess
import tempfile
from pathlib import Path
from typing import List, Dict

class EPUBCreator:
    def __init__(self, source_dir: str, output_file: str = "Chinese_Etiquette_Collection.epub"):
        self.source_dir = Path(source_dir)
        self.output_file = Path(source_dir) / output_file
        self.temp_dir = Path(tempfile.mkdtemp())

    def find_markdown_files(self) -> List[Path]:
        """Find all processed markdown files."""
        return sorted([
            f for f in self.source_dir.glob("MinerU_markdown_*.md")
            if f.is_file() and f.stat().st_size > 1000  # Skip very small files
        ])

    def extract_title_and_author(self, file_path: Path) -> Dict[str, str]:
        """Extract title and author from markdown file."""
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()

        lines = content.split('\n')[:20]  # First 20 lines

        title = ""
        author = ""

        for line in lines:
            line = line.strip()
            if line.startswith('# ') and not title:
                title = line[2:].strip()
            elif line.startswith('by ') or line.startswith('By ') or 'author' in line.lower():
                author = line.replace('by', '').replace('By', '').strip()

        # Clean up title
        title = re.sub(r'_+', ' ', title)  # Replace underscores with spaces
        title = re.sub(r'\s+', ' ', title)  # Normalize spaces

        return {
            'title': title or file_path.stem,
            'author': author or 'Various Authors',
            'filename': file_path.name
        }

    def create_epub_css(self) -> str:
        """Create professional CSS stylesheet for the EPUB."""
        return """
/* Professional EPUB Stylesheet for Chinese Etiquette Collection */

body {
    font-family: "Georgia", serif;
    line-height: 1.6;
    margin: 0;
    padding: 0;
    color: #2c3e50;
    background-color: #fefefe;
}

h1, h2, h3, h4, h5, h6 {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    color: #34495e;
    margin-top: 2em;
    margin-bottom: 0.5em;
    line-height: 1.2;
}

h1 {
    font-size: 2.2em;
    text-align: center;
    border-bottom: 2px solid #3498db;
    padding-bottom: 0.3em;
    margin-top: 0;
    page-break-before: always;
}

h2 {
    font-size: 1.8em;
    border-bottom: 1px solid #bdc3c7;
    padding-bottom: 0.2em;
    margin-top: 1.5em;
    page-break-before: avoid;
}

h3 {
    font-size: 1.4em;
    color: #7f8c8d;
    margin-top: 1.2em;
}

h4 {
    font-size: 1.2em;
    font-style: italic;
}

p {
    margin: 0 0 1em 0;
    text-align: justify;
    text-justify: inter-word;
    hyphens: auto;
}

blockquote {
    margin: 1.5em 2em;
    padding: 0.5em 1em;
    border-left: 4px solid #3498db;
    background-color: #ecf0f1;
    font-style: italic;
}

ul, ol {
    margin: 1em 0;
    padding-left: 2em;
}

li {
    margin-bottom: 0.5em;
}

code {
    font-family: "Monaco", "Menlo", "Ubuntu Mono", monospace;
    background-color: #f8f8f8;
    padding: 0.2em 0.4em;
    border-radius: 3px;
    font-size: 0.9em;
}

pre {
    background-color: #f8f8f8;
    border: 1px solid #e1e1e1;
    border-radius: 5px;
    padding: 1em;
    overflow-x: auto;
    margin: 1em 0;
}

table {
    border-collapse: collapse;
    width: 100%;
    margin: 1em 0;
    font-size: 0.9em;
}

th, td {
    border: 1px solid #bdc3c7;
    padding: 0.5em;
    text-align: left;
}

th {
    background-color: #ecf0f1;
    font-weight: bold;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

/* Custom classes for special content */
.chapter-break {
    page-break-before: always;
    margin-top: 3em;
}

.book-title {
    font-size: 2.5em;
    font-weight: bold;
    text-align: center;
    color: #2c3e50;
    margin: 2em 0;
}

.author {
    font-size: 1.4em;
    text-align: center;
    color: #7f8c8d;
    margin-bottom: 3em;
    font-style: italic;
}

.toc-entry {
    margin: 0.5em 0;
}

.toc-level-1 {
    font-weight: bold;
    font-size: 1.1em;
}

.toc-level-2 {
    margin-left: 1em;
    font-size: 1.0em;
}

.toc-level-3 {
    margin-left: 2em;
    font-size: 0.9em;
}

/* Print-specific styles */
@media print {
    body {
        font-size: 12pt;
        line-height: 1.4;
    }

    h1 {
        page-break-before: always;
    }

    h2 {
        page-break-before: avoid;
    }
}

/* Dark mode support for some readers */
@media (prefers-color-scheme: dark) {
    body {
        color: #ecf0f1;
        background-color: #2c3e50;
    }

    h1, h2, h3, h4, h5, h6 {
        color: #ecf0f1;
    }

    blockquote {
        background-color: #34495e;
        border-left-color: #3498db;
    }

    code, pre {
        background-color: #34495e;
        color: #ecf0f1;
    }

    table {
        border-color: #7f8c8d;
    }

    th {
        background-color: #34495e;
    }

    tr:nth-child(even) {
        background-color: #34495e;
    }
}
"""

    def create_front_matter(self, books: List[Dict]) -> str:
        """Create front matter for the EPUB."""
        title = "Chinese Etiquette and Culture Collection"

        front_matter = f"""# {title}

**A Comprehensive Collection of Books on Chinese Business Etiquette, Culture, and Social Norms**

*Compiled and Processed for Digital Publication*

This collection contains {len(books)} books covering various aspects of Chinese etiquette, business culture, social norms, and cross-cultural communication.

---

## Table of Contents

"""

        # Add table of contents
        for i, book in enumerate(books, 1):
            front_matter += f"{i}. {book['title']}\n"
            if book['author'] != 'Various Authors':
                front_matter += f"   *{book['author']}*\n"
            front_matter += "\n"

        front_matter += "---\n\n"
        return front_matter

    def prepare_markdown_content(self, file_path: Path, book_info: Dict) -> str:
        """Prepare individual markdown content for EPUB."""
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()

        # Add book header
        header = f"""# {book_info['title']}

**Author:** {book_info['author']}

---

"""

        # Clean up any remaining issues
        content = re.sub(r'^\s*# Table of Contents.*?(?=# |\Z)', '', content, flags=re.MULTILINE | re.DOTALL)
        content = re.sub(r'^\s*# Contents.*?(?=# |\Z)', '', content, flags=re.MULTILINE | re.DOTALL)

        return header + content

    def create_epub(self):
        """Main method to create the EPUB."""
        print("🔍 Finding markdown files...")
        markdown_files = self.find_markdown_files()
        print(f"Found {len(markdown_files)} markdown files")

        if not markdown_files:
            print("No markdown files found!")
            return False

        print("📚 Extracting book information...")
        books = []
        for file_path in markdown_files:
            book_info = self.extract_title_and_author(file_path)
            books.append(book_info)
            print(f"  ✓ {book_info['title']} by {book_info['author']}")

        print("🎨 Creating stylesheet...")
        css_content = self.create_epub_css()
        css_file = self.temp_dir / "epub-styles.css"
        with open(css_file, 'w', encoding='utf-8') as f:
            f.write(css_content)

        print("📝 Creating combined markdown...")
        combined_file = self.temp_dir / "combined.md"

        # Create front matter
        front_matter = self.create_front_matter(books)

        with open(combined_file, 'w', encoding='utf-8') as f:
            f.write(front_matter)

            # Add each book
            for i, (file_path, book) in enumerate(zip(markdown_files, books), 1):
                print(f"  📖 Processing book {i}: {book['title']}")
                content = self.prepare_markdown_content(file_path, book)
                f.write(f"\n\n---\n\n{content}\n\n")

        print("📦 Generating EPUB...")
        try:
            cmd = [
                "pandoc",
                str(combined_file),
                "-o", str(self.output_file),
                "--css", str(css_file),
                "--toc",
                "--toc-depth", "3",
                "-V", "title=Chinese Etiquette and Culture Collection",
                "-V", "author=Various Authors",
                "-V", "language=en",
                "-V", "date=" + os.popen('date +%Y-%m-%d').read().strip()
            ]

            result = subprocess.run(cmd, capture_output=True, text=True, cwd=self.source_dir)

            if result.returncode == 0:
                print(f"✅ EPUB created successfully: {self.output_file}")
                print(f"   File size: {self.output_file.stat().st_size / (1024*1024):.1f} MB")
                return True
            else:
                print("❌ EPUB creation failed:")
                print("STDOUT:", result.stdout)
                print("STDERR:", result.stderr)
                return False

        except Exception as e:
            print(f"❌ Error creating EPUB: {e}")
            return False

def main():
    import argparse

    parser = argparse.ArgumentParser(description='Create EPUB from processed markdown files')
    parser.add_argument('--output', '-o', default='Chinese_Etiquette_Collection.epub',
                       help='Output EPUB filename')
    parser.add_argument('--dir', '-d', default='.',
                       help='Directory containing markdown files')

    args = parser.parse_args()

    creator = EPUBCreator(args.dir, args.output)
    success = creator.create_epub()

    if success:
        print("\n🎉 EPUB creation completed successfully!")
        print(f"📁 Output: {creator.output_file}")
    else:
        print("\n💥 EPUB creation failed!")
        exit(1)

if __name__ == "__main__":
    main()
# Obsidian Vault Formatting Rules & Style Guide

This document defines the comprehensive ruleset for properly formatted Markdown notes in this Obsidian vault. It covers file structure, text formatting, mathematics, and common pitfalls.

## 1. File Structure & Metadata

*   **YAML Frontmatter**:
    *   Every file must start with a YAML frontmatter block enclosed in `---`.
    *   **Required Fields**:
        *   `title`: Title Case, matches the logical document title.
        *   `tags`: Lowercase, space-separated or list format (e.g., `[finance, valuation]`).
        *   `cssclasses`: Always set to `academia` for this vault.
    *   **Optional Fields**: `aliases`, `key_concepts`, `parent_folder`.
    *   **Cleanup**: Remove linter-generated fields like `linter-yaml-title-alias` or `source` if they are not useful.
    *   **Spacing**: Exactly one blank line between the closing `---` and the first heading/content.

*   **Document Title (H1)**:
    *   **Rule**: Each file must have **exactly one** Level 1 Heading (`# Title`).
    *   **Placement**: Immediately after the YAML frontmatter (and its trailing blank line).
    *   **Mistake to Avoid**: Do not use multiple H1 headers (e.g., `# Title` then `# Introduction`). Use H2 (`##`) for major sections like Introduction.

*   **Headings Hierarchy**:
    *   Use `##` for major sections.
    *   Use `###` for subsections.
    *   **Spacing**:
        *   One blank line *before* every heading (except the very first H1).
        *   One blank line *after* a heading is optional but recommended for clarity, especially before lists or math.
    *   **Syntax**: Always put a space after the hashes (e.g., `## Section`, not `##Section`).

*   **YAML Title Formatting**:
    *   **Rule**: The `title` field in YAML must be plain text.
    *   **Mistake to Avoid**: Do not use Markdown formatting like `**Title**` or `_Title_` inside the YAML block.
    *   **Correct**: `title: 151 Trading Strategies`
    *   **Incorrect**: `title: "**151 Trading Strategies**"`, `title: [[151 Trading Strategies]]`

## 2. Text Formatting

*   **Paragraphs**:
    *   Separate paragraphs with a single blank line.
    *   **Mistake to Avoid**: Do not use multiple blank lines between paragraphs. Collapse runs of 2+ blank lines into one.
    *   **Line Breaks**: Avoid manual line breaks (two spaces at end of line) unless strictly necessary for poetry or addresses. Let text wrap naturally.

*   **Emphasis**:
    *   **Bold**: Use `**text**`. Use sparingly for key terms or "Problem/Example" labels.
    *   *Italic*: Use `*text*`. Use for definitions or emphasis.
        *   **Rule**: Prefer `*` over `_` for italics to avoid potential conflicts with LaTeX subscripts (e.g., `_text_` vs `$x_i$`).
    *   **Mistake to Avoid**: Do not use `_text_` for italics if it conflicts with LaTeX math usage (though Obsidian handles this well, `*` is safer).

*   **Lists**:
    *   **Bullets**: Use `-` (hyphen) for unordered lists.
        *   **Mistake to Avoid**: Do not use `*` or `+` for bullets.
    *   **Numbering**: Use `1.` for ordered lists.
    *   **Nesting**: Indent by 2 or 4 spaces (be consistent, 4 is safer for cross-compatibility).
    *   **Spacing**:
        *   No blank lines *between* list items of the same list.
        *   One blank line *before* the start of a list.
        *   One blank line *after* the end of a list.

## 3. Mathematics & LaTeX

*   **Inline Math**:
    *   Use single dollar signs: `$E = mc^2$`.
    *   **Spacing**: No spaces between the `$` and the content.
        *   Correct: `$x + y$`
        *   Incorrect: `$ x + y $`

*   **Block Math**:
    *   Use double dollar signs `$$` on their own lines.
    *   **Format**:
        ```latex
        $$
        \text{Equation here}
        $$
        ```
    *   **Spacing**: One blank line before the opening `$$` and one after the closing `$$`.

*   **Common LaTeX Issues**:
    *   **Spacing in Commands**: Ensure commands like `\beta_{I}` are properly spaced. Avoid `\beta_ {I}` (space after underscore).
    *   **Text in Math**: Use `\text{word}` for text inside equations, not raw text which renders as italic variables.
        *   Correct: `\text{Rate} = \frac{\text{Distance}}{\text{Time}}`
        *   Incorrect: `Rate = \frac{Distance}{Time}`
    *   **Tags**: Equation numbering `\tag{1.1}` is permitted at the end of the equation line.
    *   **Operators**:
        *   Use `\log` instead of `Log` or `ln` (unless `\ln` is intended).
        *   Use `\cdot` or implicit multiplication instead of `*` for multiplication in math mode.
    *   **Percentages**:
        *   **Rule**: Escape ALL percentage signs as `\%` in both text and math mode.
        *   **Check**: Verify the sign is not already escaped before applying the fix (avoid `\\%`).
        *   **Example**: `50\%` (Text), `$10\%$` (Math).
    *   **Spaced Text**:
        *   **Issue**: `P r o b a b i l i t y` or `\text {w h e r e}` inside math delimiters.
        *   **Fix**: Collapse spaces and wrap in `\text{...}` if needed. Example: `\text{where}`.

*   **Currency Symbols**:
    *   **Rule**: Escape dollar signs used as currency in text to avoid conflict with LaTeX math delimiters.
    *   **Example**: Use `\$50` instead of `$50`.
    *   **OCR Artifact**: Replace `\mathbb{S}` or `\mathbb {S}` with `\$` when used as a currency symbol.

*   **Copyright & Footer Artifacts**:
    *   **Issue**: Text like "Copyright © ...", "This case was prepared...", or "Page X of Y" appearing in the middle of the document.
    *   **Fix**: Remove these interruptions to restore text flow.

## 4. Tables

*   **Format**:
    *   **Markdown Tables**: Preferred for simple data.
        ```markdown
        | Header 1 | Header 2 |
        | :------- | :------- |
        | Cell 1   | Cell 2   |
        ```
    *   **HTML Tables**: Accepted for complex layouts (merged cells, specific styling).
        *   `<table><tr><td>...</td></tr></table>`
    *   **Mistake to Avoid**: Do not try to convert complex HTML tables into LaTeX arrays unless necessary. Obsidian renders HTML tables well.

## 5. Images & Media

*   **Syntax**:
    *   Standard: `![](url_or_path)`
    *   Obsidian Embed: `![[image.png]]`
*   **Placement**:
    *   Images should be on their own line.
    *   **Captions**: Place captions as italicized text immediately below the image line.

## 6. Links & References

*   **Wikilinks**: `[[Note Name]]` is preferred for internal vault links.
*   **External Links**: `[Link Text](URL)` for web resources.

## 7. Common Mistakes & Edge Cases

*   **Mid-Sentence Line Breaks**:
    *   **Issue**: PDF copy-pastes often result in hard line breaks in the middle of sentences.
    *   **Fix**: Join lines where the first line does not end in punctuation and the second starts with a lowercase letter.
*   **OCR Artifacts**:
    *   **Issue**: Words split by spaces (e.g., `di erent`, `e ect`).
    *   **Fix**: Remove the extra spaces (`different`, `effect`).
*   **Broken Lists**:
    *   **Issue**: Lines starting with special characters like `•` or `o` instead of `-`.
    *   **Fix**: Standardize all bullets to `-`.
*   **Broken Numbered Lists**:
    *   **Issue**: Lines starting with a digit followed by a space (e.g., `1 Item`) instead of a dot (e.g., `1. Item`).
    *   **Fix**: Add the missing dot: `1. Item`.
*   **Multiple Titles**:
    *   **Issue**: Files containing `# Title` followed by `# Chapter 1`.
    *   **Fix**: Demote the second header to `## Chapter 1`.
*   **TOC Artifacts**:
    *   **Issue**: Lines like `2.1 Generalities … … … … … … … … … … . . 17`.
    *   **Fix**: Remove the dotted leaders and page numbers. Format as a clean Markdown list or remove if redundant.

## 8. Content Exclusion

*   **Practice Questions**:
    *   **Rule**: Remove sections containing practice questions, problems, or exercises typically found at the end of textbook chapters.
    *   **Keywords**: Look for headers like `# Practice Questions`, `# Problems`, `# Further Questions`, `# Exercises`, or `# Questions and Problems` (case-insensitive).
    *   **Action**: Delete the header and all content following it up to the end of the file or the next major unrelated section (though usually these are at the very end).

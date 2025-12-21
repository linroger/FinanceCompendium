# Document Formatting Checklist for FinanceCompendium

## Pre-Processing Verification
- [ ] File path and name follow consistent naming conventions
- [ ] Document begins with proper YAML frontmatter structure
- [ ] Title is in title case without markdown formatting
- [ ] All required YAML fields are present and properly formatted

## YAML Frontmatter
- [ ] `title` field is plain text, title case
- [ ] `primary_tags` contains 3-8 most important concepts
- [ ] `secondary_tags` contains 8-25 supporting concepts
- [ ] All tags are multi-word phrases (2-4 words)
- [ ] Tags use natural spaces, not snake_case or hyphens
- [ ] Tags are lowercase (even proper nouns)
- [ ] `cssclasses` is set to `academia`
- [ ] No extraneous fields like `tags`, `key_concepts`, or linter-generated fields
- [ ] Exactly one blank line after closing `---` before content

## Document Structure
- [ ] Single H1 header matching the YAML title
- [ ] Proper heading hierarchy (H1 → H2 → H3 → H4)
- [ ] No skipped heading levels
- [ ] Consistent heading formatting throughout
- [ ] All headings have proper spacing (blank line before)

## Text and Paragraph Formatting
- [ ] No mid-sentence line breaks without proper punctuation
- [ ] No orphaned sentence fragments
- [ ] Consistent paragraph spacing (single blank line between paragraphs)
- [ ] No multiple consecutive blank lines
- [ ] Proper capitalization and punctuation throughout
- [ ] OCR artifacts corrected (e.g., "di erent" → "different")

## Mathematical Expression Formatting
- [ ] Inline math properly enclosed in `$...$` with no spaces
- [ ] Display math properly enclosed in `$$...$$` on separate lines
- [ ] All equation tags properly formatted as `\tag{X.Y}`
- [ ] Words within equations use `\text{word}`
- [ ] Greek letters properly formatted (e.g., `$\\alpha$`, `$\\beta$`)
- [ ] Subscripts and superscripts properly grouped (e.g., `$x_{ij}$`, `$e^{rt}$`)
- [ ] Fractions use `\frac{}{}` for complex expressions
- [ ] Matrix and aligned equations use proper environments
- [ ] All special finance notation is consistent throughout

## List Formatting
- [ ] All lists use `-` for bullet points (not `*`, `+`, or `•`)
- [ ] No blank lines between list items
- [ ] Proper spacing before and after lists (blank lines as needed)
- [ ] Numbered lists properly formatted with dots: `1. Item`
- [ ] Nested lists properly indented

## Table Formatting
- [ ] All tables use markdown format with pipes and dashes
- [ ] Proper alignment markers (`:---`, `:---:`, `---:`)
- [ ] Consistent cell content alignment
- [ ] No HTML tables (convert to markdown if needed)

## Image and Media Links
- [ ] All image links preserved exactly as-is (no modifications)
- [ ] No attempt to fix "broken" image paths
- [ ] Image syntax left untouched (`![[image.png]]` or `![alt](path/to/image.png)`)

## Content-Specific Formatting
- [ ] Finance-specific notation is consistent (rates, yields, greeks, etc.)
- [ ] Mathematical expressions follow finance conventions
- [ ] Proper notation for derivatives, bonds, and other instruments
- [ ] All cross-references and citations are properly formatted
- [ ] Any practice/problem sections removed if at document end

## Special Elements
- [ ] Callouts (`> [!NOTE]`) preserved with proper formatting
- [ ] Footnotes (`[^1]`) preserved exactly
- [ ] Comments (`%% comment %%`) preserved
- [ ] Code blocks (` ``` `) preserved with content intact
- [ ] HTML elements preserved if present (tables, divs, etc.)

## Post-Processing Verification
- [ ] Document renders properly in Obsidian
- [ ] All mathematical expressions render correctly
- [ ] All links work as expected
- [ ] No formatting artifacts or rendering errors
- [ ] All original content preserved while improving structure
- [ ] Document maintains academic/professional appearance

## Tag Quality Verification
- [ ] Primary tags represent core document identity
- [ ] Secondary tags provide supporting context
- [ ] Tags enable cross-linking within vault
- [ ] Tags are specific enough to be meaningful
- [ ] Tags follow consistent naming conventions
- [ ] No redundant or overlapping tag concepts

## Final Consistency Check
- [ ] Style matches other documents in the same section
- [ ] Terminology is consistent with finance compendium standards
- [ ] Mathematical notation follows established conventions
- [ ] All examples and figures are properly formatted
- [ ] Citations and references follow consistent format
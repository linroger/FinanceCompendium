# Formatting Checklist

Use this checklist for each document processed.

## Pre-Processing

- [ ] Read entire document first (understand before editing)
- [ ] Identify document type (lecture, chapter, case study, etc.)
- [ ] Note the content domain
- [ ] Plan chunk boundaries

## YAML Frontmatter

- [ ] Valid YAML syntax (no tabs, proper indentation)
- [ ] `title:` is descriptive (not just "Chapter X")
- [ ] `tags:` has 3-6 relevant, content-derived tags
- [ ] Tags are snake_case format
- [ ] Tags are not too broad (no `finance`, `economics`, `math`)
- [ ] Tags are not instance-specific (no `example_3`, `figure_5`)
- [ ] `parent_directory:` is set
- [ ] `key_concepts:` is populated (2-5 concepts)
- [ ] `cssclasses: academia` is present

## Document Title (H1)

- [ ] Exactly one `#` title in document
- [ ] Title matches YAML `title:`
- [ ] Title is Title Case
- [ ] If numbered (Chapter/Lecture), includes topic name

## Heading Hierarchy

- [ ] No skipped levels (e.g., `##` followed by `####`)
- [ ] Exactly one space after `#` symbols
- [ ] Problem/Example headings demoted to bold
- [ ] Decimal headings converted to proper markdown

## Spacing

- [ ] Single blank line before each heading
- [ ] Single blank line after YAML frontmatter
- [ ] No multiple consecutive blank lines
- [ ] No blank lines between bullet items
- [ ] No blank lines immediately before bullets
- [ ] No trailing whitespace on any line

## Bullets & Lists

- [ ] All bullets use `-` (not `*`, `•`, `$\bullet$`, etc.)
- [ ] Consistent two-space indentation per level
- [ ] Each item on its own line
- [ ] Numbered lists use `1.` format

## LaTeX & Math

- [ ] Inline math uses `$...$`
- [ ] Block math uses `$$` on separate lines
- [ ] No spaced operators: `\operatorname{Var}` not `\operatorname {V a r}`
- [ ] No spaced decimals: `0.08` not `0 . 0 8`
- [ ] Time indices formatted: `$x_{t+1}$` not `xt+1`
- [ ] Stray superscripts joined: `$X^2$` not `X $^2$`

## Content Integrity

- [ ] No mid-sentence line breaks
- [ ] Tables preserved as markdown or HTML (not converted to LaTeX)
- [ ] Code blocks unchanged
- [ ] Image embeds unchanged
- [ ] OCR artifacts fixed (`[?]` removed, spaced words joined)

## Post-Processing

- [ ] Re-read full document
- [ ] Verify all edits applied correctly
- [ ] Confirm no new issues introduced
- [ ] File saves without error

## Quality Check Questions

1. Would the title help someone find this document?
2. Are the tags things someone would actually search?
3. Does the document render correctly in Obsidian?
4. Is all math displaying properly?
5. Is the content intact and readable?

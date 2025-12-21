---
name: vault-formatting-remediation
description: This skill should be used when the user asks to "format Obsidian documents", "fix markdown formatting", "remediate vault files", "process bead formatting issues", "apply formatting rules to markdown notes", or wants to manually review and fix formatting issues in the FinanceCompendium vault following the obsidian-formatting-instructions.md guidelines.
version: 1.0.0
---

# Vault Formatting Remediation Skill

High-touch manual formatting remediation for FinanceCompendium vault documents. This skill provides the workflow, rules, and patterns for systematically fixing formatting issues in Obsidian markdown notes.

## Purpose

Transform raw or poorly-formatted markdown notes into clean, consistent, professionally-formatted Obsidian documents by applying targeted manual edits. This is NOT an automation task—each document requires careful reading, comprehension, and surgical corrections.

## Absolute Prohibitions

1. **NO SCRIPTS** — Never write Python, Bash, sed, awk, or any automation scripts
2. **NO BULK OPERATIONS** — Never use regex find-replace across entire documents
3. **NO GUESSING** — Skip ambiguous fixes and log them in the bead issue
4. **NO WHOLESALE REWRITES** — Use targeted `Edit` tool calls only
5. **DO NOT TOUCH IMAGE LINKS** — Leave `![[...]]` and `![...](...)` exactly as-is

## Core Workflow

### Phase 1: Issue Discovery and Claiming

1. Find an unassigned open bead issue:
   ```bash
   bd ready --json
   ```
   If empty, run:
   ```bash
   bd list --status open
   ```

2. Select ONE issue not in_progress

3. Claim the issue:
   ```bash
   bd update <id> --status in_progress
   ```

### Phase 2: Document Reading Strategy

Read the FULL document referenced in the bead issue iteratively in 300-500 line chunks:

1. Read first 500 lines to assess document structure
2. Count level 1 headers (`# Header`) to plan chunking
3. Split by H1 headers when possible, grouping into 300-500 line chunks
4. Track chunk boundaries: `lines 1-450`, `lines 451-890`, etc.

### Phase 3: Chunk Processing (Per Chunk)

For each chunk, apply fixes IN ORDER:

#### A. Structure & Headings
- Single `# Title` per file (demote subsequent H1s to `##`)
- Add space after `#`: `##Section` → `## Section`
- Convert decimal headings to markdown: `3.1.1 Topic` → `#### 3.1.1 Topic`
- Demote Problem/Example headers to bold: `### Problem 2.1` → `**Problem 2.1**`

#### B. Text & Paragraphs
- Join mid-sentence line breaks (lowercase continuation after non-terminal punctuation)
- Collapse 2+ blank lines to single blank line
- Fix OCR artifacts: `di erent` → `different`, `e ect` → `effect`

#### C. Lists
- Standardize bullets to `-` (not `*`, `+`, `•`, `○`)
- Remove blank lines between list items
- Fix numbered lists: `1 Item` → `1. Item`

#### D. Mathematics & LaTeX
- Inline: `$x + y$` (no spaces after `$`)
- Block: `$$` on own lines with blank line before/after
- Fix OCR spacing: `0 . 0 5` → `0.05`, `\beta_ {I}` → `\beta_{I}`
- Use `\text{word}` for words in equations

#### E. Tables
- Preserve Markdown/HTML tables—do not convert to LaTeX
- Only fix broken pipes and malformed header separators
- Leave `<table>` and `\begin{tabular}` blocks untouched

#### F. Images & Media
⚠️ **NEVER MODIFY IMAGE LINKS** — Leave all image syntax exactly as-is

#### G. Content Cleanup
- Remove TOC dotted leaders and page numbers
- Remove practice/exercise sections at document end

### Phase 4: Tag Generation

Extract key phrases while processing each chunk:

**Relevance Scoring:**
- 3 = Core concept (primary tag candidate)
- 2 = Important supporting concept (secondary candidate)
- 1 = Peripheral/contextual (secondary if space permits)

**Tag Distribution (by chunks processed):**
| Chunks | Primary Tags | Secondary Tags |
|--------|--------------|----------------|
| 1-2    | 1            | 2-4            |
| 3-4    | 2            | 6-8            |
| 5-6    | 3            | 10-12          |
| 7-10   | 4-5          | 14-20          |
| 11-15  | 6-8          | 22-25          |
| 16+    | 8-10         | 25 (cap)       |

**Tag Format:**
- Lowercase multi-word phrases (2-4 words)
- Natural spaces, not snake_case or hyphens
- Examples: `term structure models`, `risk neutral valuation`

### Phase 5: YAML Frontmatter

Ensure proper YAML structure:

```yaml
---
title: Document Title in Title Case
parent_directory: Parent Directory Name
formatted: YYYY-MM-DD HH:MM:SS AM/PM
formatter_model: claude-opus-4-5-20251101
cli_tool: claude-code
primary_tags:
  - most important concept
  - core methodology
secondary_tags:
  - supporting concept one
  - related methodology
cssclasses: academia
---
```

**Required actions:**
- REMOVE `tags` field (replaced by primary_tags/secondary_tags)
- REMOVE `key_concepts` field
- REMOVE linter-generated fields like `linter-yaml-title-alias`
- Exactly ONE blank line after closing `---`

### Phase 6: D2 Diagrams

Proactively add D2 diagrams to visualize:
- Complex concepts and phenomena
- Cause-effect relationships
- Concept breakdowns
- Flowcharts and decision diagrams

Wrap in code blocks with `d2` language identifier. Reference styleguide at `/Users/rogerlin/Reserve/FinanceCompendium/styleguide/d2styleguide.md`.

### Phase 7: Progress Logging

After EACH chunk, update the bead issue:

```bash
bd comment <id> "<incremental progress log>"
```

Include:
- Line ranges processed
- Before/after snippets of corrections
- Key phrases extracted with scores
- Skipped ambiguities

### Phase 8: Finalization

1. Verify document renders correctly
2. Post final bead update with:
   - Total corrections count by type
   - Final primary_tags list
   - Final secondary_tags list
   - Any persistent issues

3. Close the issue:
   ```bash
   bd close <id> --reason "<concise completion summary>"
   ```

4. Return to Phase 1 for next eligible issue

## Edge Cases — Do Not Touch

| Element | Action |
|---------|--------|
| Image links | NEVER MODIFY |
| Callouts (`> [!NOTE]`) | Preserve |
| Footnotes (`[^1]`) | Preserve |
| Comments (`%% comment %%`) | Preserve |
| HTML tables | Preserve |
| LaTeX tables | Preserve |
| Code blocks | Preserve content |

## Additional Resources

### Reference Files
- **`references/formatting-patterns.md`** - Detailed OCR fixes, special patterns, LaTeX corrections

### Styleguides
- **`styleguide/obsidian-formatting-instructions.md`** - Complete formatting ruleset
- **`styleguide/d2styleguide.md`** - D2 diagram styling

## Quality Checklist

Before closing any issue, verify:

- [ ] Single H1 header exists
- [ ] All headings have proper spacing
- [ ] No mid-sentence line breaks remain
- [ ] LaTeX inline math has no padding spaces
- [ ] LaTeX block math has delimiters on own lines
- [ ] All bullets are `-`
- [ ] No multiple consecutive blank lines
- [ ] Practice/exercise sections removed
- [ ] Image links LEFT UNTOUCHED
- [ ] YAML frontmatter is valid and complete
- [ ] Primary/secondary tags are proper multi-word phrases
- [ ] All corrections logged in bead issue

---
name: obsidian-markdown-formatter
description: Manual, high-touch formatting of Obsidian vault markdown files. Parses documents in small chunks iteratively to fix LaTeX, spacing, headers, bullets, YAML frontmatter, and generates content-relevant tags. Use when processing academic or technical notes that require human-level attention to detail.
---

<essential_principles>
## Core Philosophy

This is a **MANUAL, HIGH-TOUCH TASK** - not something that can be easily automated with scripts. Each document requires careful reading, understanding of content, and intelligent formatting decisions.

### Why Manual Processing?

1. **Tag Generation Requires Understanding** - Tags must be derived from actual content meaning, not pattern matching
2. **Title Inference Needs Context** - "Chapter 01" must become "Chapter 01 - Introduction to Fixed Income Securities" based on document content
3. **LaTeX Fixes Require Semantic Awareness** - Distinguishing between inline variables and actual equations
4. **Quality Over Speed** - Better to process fewer files perfectly than many files poorly

### Processing Approach

**Chunk-Based Iterative Processing:**
- Read documents in 200-300 line chunks maximum
- Fully understand each chunk before making changes
- Process YAML frontmatter first, then body content
- Never bulk-process or use regex replacements without understanding context
</essential_principles>

<workflow>
## Standard Formatting Workflow

### Phase 1: Initial Assessment (Read First, Edit Never)

1. **Read the document header (lines 1-50)**
   - Examine existing YAML frontmatter
   - Note the current title, tags, parent_directory
   - Identify document type (lecture notes, textbook chapter, case study, etc.)

2. **Skim the full document structure**
   - Use Read tool with full file to understand scope
   - Note major sections, approximate length, content domain
   - Identify if this is part of a series (Chapter 1, Lecture 3, etc.)

### Phase 2: Content Understanding (Critical Step)

3. **Read for comprehension in chunks**
   - Process 200-300 lines at a time
   - As you read, mentally note:
     - Core concepts discussed
     - Domain/field (finance, economics, math, etc.)
     - Key technical terms
     - Specific theories, models, or frameworks mentioned

4. **Document your understanding**
   - Before making ANY edits, articulate:
     - What is this document about?
     - What are 3-5 key concepts?
     - What would someone search to find this?

### Phase 3: YAML Frontmatter Update

5. **Update YAML frontmatter** using this structure:
```yaml
---
title: [Descriptive Title - Never Just "Chapter X" or "Lecture Y"]
tags:
  - [domain_tag]        # e.g., fixed_income, macroeconomics
  - [concept_tag_1]     # e.g., bond_pricing, term_structure
  - [concept_tag_2]     # specific but reusable concepts
parent_directory:
  - [Course/Book Name]  # e.g., Financial Instruments, Monetary Economics
key_concepts:
  - [Concept A]         # More descriptive than tags
  - [Concept B]
  - [Concept C]
cssclasses: academia
---
```

### Phase 4: Iterative Chunk Processing

6. **Process each chunk systematically**

   For each 200-300 line chunk:

   a. **Read the chunk entirely**
   b. **Identify issues** (don't fix yet):
      - LaTeX problems (spaced operators, broken equations)
      - Spacing issues (multiple blank lines, missing blank lines)
      - Header issues (missing space after #, wrong hierarchy)
      - Bullet issues (malformed bullets, inconsistent indentation)
      - Mid-sentence line breaks
   c. **Make targeted edits** using Edit tool
   d. **Re-read to verify** changes are correct
   e. **Move to next chunk**

### Phase 5: Final Verification

7. **Re-read entire document** to verify:
   - YAML is valid and complete
   - Title accurately describes content
   - Tags are relevant but not too broad
   - Headers follow proper hierarchy
   - No orphaned LaTeX or broken formatting
</workflow>

<formatting_rules>
## Detailed Formatting Rules

### I. Document Hierarchy

**Headings:**
- `#` — Document title (exactly one per file; Title Case)
- `##` — Major sections
- `###` — Subsections
- `####` — Sub-subsections
- Always exactly one space after hashes: `### Heading`

**Lists:**
- Bulleted lists: `-`
- Ordered lists: `1.`
- Indent nesting by two spaces per level
- Each bullet/number starts on its own line

**Spacing:**
- Collapse runs of ≥2 blank lines into one
- Keep exactly one blank line:
  - Between YAML and body
  - Before any Markdown heading
  - Before/after code fences
  - Before/after block math (`$$…$$`)
  - Before/after image embeds
- Remove:
  - Trailing whitespace on all lines
  - Empty lines immediately above bullet lines
  - Empty lines between consecutive bullet lines

### II. LaTeX & Equations

**Inline Math:**
- Use `$…$` for inline expressions
- Example: `The nominal yield is $i_t = r_t + E_t[\pi_{t+1}]$.`

**Block Math:**
- Use `$$` on a line by itself:
```
$$
E_t[x_{t+1}] = \mu_x + \rho_x (x_t - \mu_x) + \epsilon_{t+1}
$$
```

**Variable Formatting (time indices):**
Transform plain text occurrences (outside `$...$` and code) into LaTeX:
- `xt+1` → `$x_{t+1}$`
- `yt-1` → `$y_{t-1}$`
- `Et[xt+1]` → `$E_t[x_{t+1}]$`
- `Rt,t+1` → `$R_{t,t+1}$`
- Do NOT auto-convert a standalone lowercase `i`

**Fixing Spaced Operators Inside Math:**
Inside `$...$` or `$$...$$`, normalize:
- `\operatorname {V a r}` → `\operatorname{Var}`
- `\operatorname {C o v}` → `\operatorname{Cov}`
- Remove spaces between digits: `1 0 0` → `100`, `. 0 0 0 1` → `.0001`

**Stray Superscripts:**
- Pattern `X $^2$` → `$X^2$`
- Join letter/number before `$^2$` into a single inline math token

### III. Bullets & List Cleanup

**Canonical Bullet Symbol:**
All bullets must be `-` at the start of the line:
```
- Item
  - Subitem
```

**Normalize Malformed Bullets:**
Replace any bullet-like prefix at line start with `- `:
- LaTeX bullets: `$\circ$`, `$\bullet$`, `$^{\circ}$`
- Raw tokens: `\circ`, `\bullet`
- Unicode symbols: `■`, `●`, `°`, `◦`, `•`
- Ad-hoc bullets: `[*]`, `[?]`

Only treat them as bullets when they appear at line start followed by space or tab.
Do NOT replace `\circ` or `\bullet` inside legitimate math expressions.

**Compact Bullet Lists:**
Remove:
- Any blank line between two bullet items
- Any blank line immediately above a bullet item

### IV. Headers & Problems/Examples

**Header Demotion for Problems/Examples:**
Any heading whose text begins with `Problem` or `Example` (case-insensitive) should be converted to plain text with bold:
```
**Problem 3 — Bond Pricing**
```
(no `#`; plain paragraph with bold)

**Decimal Headings:**
Lines like `3.1.1 Finite-Horizon Problems` convert to heading levels:
- `3` → `## 3. ...`
- `3.1` → `### 3.1 ...`
- `3.1.1` → `#### 3.1.1 ...`
- `3.1.1.1` → `##### 3.1.1.1 ...`

### V. Mid-Sentence Line Breaks

**Join lines when:**
- End fragment does NOT end with sentence-terminal punctuation (`.!?;:`)
- Or ends with comma `,` or hyphen `-`
- Start fragment begins with lowercase letter
- No code fence or math environment boundary between them

**Preserve:**
- Code blocks (```)
- Math fences (`$$`)
- Headings
- Lists (bullets, numbered)

### VI. Tables

**Do NOT convert tables to LaTeX by default.**

Preserve tables as:
- GitHub-style Markdown tables (`|` separated), or
- HTML `<table>…</table>` blocks

Only fix:
- Obvious syntax errors (unbalanced pipes, malformed header separators)
- Trivial whitespace issues
</formatting_rules>

<tag_generation_guidelines>
## Tag Generation Rules

### What Makes a Good Tag

**Good Tags Are:**
- Derived from actual document content
- General enough to apply to multiple documents
- Specific enough to be meaningful for search
- Domain-relevant terminology
- snake_case format

**Good Tag Examples:**
- `bond_pricing` (not `chapter_7_bond_example`)
- `term_structure` (not `figure_3_yield_curve`)
- `no_arbitrage` (not `no_arbitrage_in_problem_4`)
- `monetary_policy` (not `fed_meeting_march_2020`)

**Bad Tags (Avoid):**
- Too broad: `finance`, `economics`, `math`
- Too specific: `example_3_calculation`, `page_47_formula`
- Instance-based: `tesla_case_study`, `2008_crisis_analysis`
- Format-based: `lecture_notes`, `textbook_chapter`

### Tag Categories to Consider

1. **Domain Tag** (1-2): The broad field
   - `fixed_income`, `derivatives`, `macro`, `corporate_finance`

2. **Concept Tags** (2-4): Core theories/models/methods
   - `option_pricing`, `black_scholes`, `term_premia`, `forward_rates`

3. **Methodology Tags** (0-2): How analysis is done
   - `numerical_methods`, `monte_carlo`, `regression_analysis`

### Deriving Tags From Content

1. Read entire document for understanding
2. Identify: "What would someone search to find this?"
3. Extract reusable concepts (not specific examples)
4. Verify tags apply beyond this single document
</tag_generation_guidelines>

<title_formatting>
## Title Formatting Rules

### Never Accept Bare Chapter/Lecture Numbers

**Transform:**
- "Chapter 01" → "Chapter 01 - [Actual Topic From Content]"
- "Lecture 3" → "Lecture 3 - [Descriptive Title]"
- "03" → "[Full Descriptive Title]"
- "Session 5" → "Session 5 - [Topic Covered]"

### How to Derive Proper Titles

1. **Look for explicit title in content:**
   - First H1 heading after YAML
   - Document title in opening paragraph
   - Chapter title from table of contents reference

2. **Infer from content if not explicit:**
   - What is the main topic discussed?
   - What concepts are introduced?
   - Create: "[Chapter/Lecture N] - [Main Topic]: [Subtitle if needed]"

3. **Title Case Rules:**
   - Capitalize first and last words
   - Capitalize all major words
   - Lowercase: articles (a, an, the), short prepositions (in, of, to), conjunctions (and, but, or)

### Title Examples

**Before → After:**
- "Chapter 05" → "Chapter 05 - Bond Valuation and Term Structure"
- "Lecture 2" → "Lecture 2 - Stochastic Calculus Foundations"
- "03" → "Introduction to Derivative Securities"
- "Session 7 Notes" → "Session 7 - Portfolio Optimization Under Constraints"
</title_formatting>

<parent_directory_rules>
## Parent Directory Configuration

### What Goes in parent_directory

The `parent_directory` field identifies the collection/course/book this document belongs to:

**Format:**
```yaml
parent_directory:
  - Course Name or Book Title
```

### Common Parent Directories

Based on document origin:
- Course lecture notes → Course name (e.g., "Financial Instruments", "Monetary Economics")
- Textbook chapters → Book title (e.g., "Options, Futures, and Other Derivatives")
- Case studies → Case collection name
- Research notes → Research project or topic area

### Determining Parent Directory

1. Look for course codes or book titles in content
2. Check for series indicators (Chapter X of Y)
3. Match with existing parent directories in vault for consistency
4. If unclear, use the broadest applicable category
</parent_directory_rules>

<chunk_processing_protocol>
## Detailed Chunk Processing Protocol

### Before Starting Any Document

1. **Set up tracking:**
   - Note total line count
   - Plan chunk boundaries (every 200-300 lines)
   - Create mental checklist of common issues

### For Each Chunk

**Step 1: Read (No Edits)**
```
Read file_path lines [start] to [end]
```
- Understand what this section covers
- Note any issues you see
- Do NOT make edits yet

**Step 2: Catalog Issues**
List specific issues found:
- Line X: LaTeX spacing issue `\operatorname {V a r}`
- Line Y: Mid-sentence break
- Lines Z-W: Multiple blank lines
- Line A: Malformed bullet `$\bullet$`

**Step 3: Make Targeted Edits**
Use Edit tool for each fix:
- One conceptual fix at a time
- Verify each edit doesn't break surrounding content
- For complex LaTeX, test mentally that math is valid

**Step 4: Verify Chunk**
Re-read the chunk to confirm:
- Edits applied correctly
- No new issues introduced
- Content still makes sense

**Step 5: Document Progress**
Track internally:
- Lines processed: X-Y
- Issues fixed: [list]
- Remaining issues: [list]

### After All Chunks Processed

1. Re-read full document (quick scan)
2. Verify YAML frontmatter is complete
3. Check title is properly descriptive
4. Confirm tags are relevant
5. Validate parent_directory is set
</chunk_processing_protocol>

<success_criteria>
## Success Criteria

A properly formatted document has:

**YAML Frontmatter:**
- [ ] Valid YAML syntax
- [ ] Descriptive title (not just "Chapter X")
- [ ] 3-6 relevant, content-derived tags
- [ ] parent_directory set
- [ ] key_concepts populated
- [ ] cssclasses: academia

**Document Structure:**
- [ ] Single H1 title matching YAML title
- [ ] Proper heading hierarchy (no skipped levels)
- [ ] Problems/Examples demoted to bold paragraphs
- [ ] Decimal headings converted to proper markdown headers

**Formatting:**
- [ ] All bullets use `-` format
- [ ] No blank lines between/before bullets
- [ ] Single blank line before headings
- [ ] No multiple consecutive blank lines
- [ ] No trailing whitespace

**LaTeX:**
- [ ] All equations properly wrapped in `$` or `$$`
- [ ] No spaced operators inside math
- [ ] No orphaned superscripts
- [ ] Time-indexed variables properly formatted

**Content Integrity:**
- [ ] No mid-sentence breaks
- [ ] Tables preserved (not converted)
- [ ] Code blocks intact
- [ ] Images/embeds unchanged
</success_criteria>

<quick_start>
## Quick Start

**When user invokes this skill:**

1. Ask: "What file would you like me to format?"

2. Once file is specified:
   - Read entire file first
   - Understand the content domain
   - Identify the document type

3. Process in this order:
   - YAML frontmatter (title, tags, parent_directory)
   - Then body content in 200-300 line chunks

4. Always verify by re-reading after edits

**Remember:** This is manual work requiring understanding, not pattern matching.
</quick_start>

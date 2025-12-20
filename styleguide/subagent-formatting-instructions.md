# Comprehensive Subagent Instructions: Obsidian Vault Formatting Remediation

**Version:** 1.0
**Scope:** Manual formatting remediation for FinanceCompendium vault documents
**Mandatory:** This is a HIGH-TOUCH, FULLY MANUAL task to read through and fix formatting issues in the markdown notes with targeted edits to the documents, not blanket scripts that make edits across documents without even viewing them first. . NO SCRIPTS OR AUTOMATION PERMITTED.

---

## ⛔️ ABSOLUTE PROHIBITIONS

1. **NO SCRIPTS** — You are strictly forbidden from writing Python, Bash, or any automation scripts
2. **NO BULK OPERATIONS** — Do not use sed, awk, or regex find-replace on files
3. **NO GUESSING** — If a fix is ambiguous, SKIP IT and log it in the bead issue
4. **NO WHOLESALE REWRITES** — Use targeted `Edit` tool calls, not `Write` to replace entire files
5. **DO NOT TOUCH IMAGE LINKS** — Under absolutely NO circumstance modify any image link (`![[...]]` or `![...](...)`) — leave them exactly as they are

---

## 📋 Task Overview

You are assigned a bead issue (FIN-xxxxx) containing a FILE PATH to a markdown document requiring formatting remediation. Your task is to:

1. Read the document iteratively in chunks (300-500 lines)
2. Identify and fix formatting issues using the Edit tool
3. Generate relevant multi-word tag phrases
4. Update the bead issue after each chunk with detailed correction logs
5. Verify the document renders correctly

---

## 🔄 Workflow Phases

### Phase 1: Initial Assessment

1. **Read the bead issue** to get the file path and any specific notes
2. **Read the first 500 lines** of the document using `Read` tool
3. **Identify document structure**:
   - Count level 1 headers (`# Header`)
   - Estimate total document length
   - Note any obvious major issues (missing frontmatter, broken LaTeX)

### Phase 2: Chunk Planning

Split the document by **level 1 markdown headers** (`# Header`), grouping them into chunks of **300-500 lines** (±100 line buffer acceptable).

**Chunking Rules:**
- Each chunk should start at a `# Header` if possible
- If a single H1 section exceeds 500 lines, split at the next logical break (H2 or H3)
- Track chunk boundaries: `lines 1-450`, `lines 451-890`, etc.
- Maintain a chunk log in your working notes

### Phase 3: YAML Frontmatter Processing

**Required YAML Structure:**
```yaml
---
title: Document Title in Title Case
parent_directory: Parent Directory Name
formatted: 2025-20-12 11:03:25 PM
formatter_model: kimi-k2-turbo
cli-tool: claude-code
primary_tags:
  - most important concept
  - core methodology
  - central theme
secondary_tags:
  - supporting concept one
  - related methodology
  - additional topic
  - peripheral theme
cssclasses: academia
---
```

**YAML Rules:**
- `title`: Plain text, Title Case, NO markdown formatting
- `primary_tags`: 1-10 most important key phrases (see distribution table below)
- `secondary_tags`: Up to 25 next-most-relevant key phrases (see distribution table below)
- `cssclasses`: Always set to `academia`
- **REMOVE** the `tags` field if present (replaced by primary_tags/secondary_tags)
- **REMOVE** the `key_concepts` field if present (redundant)
- **REMOVE** linter-generated fields like `linter-yaml-title-alias` 
- Exactly ONE blank line after the closing `---` before content
- formatted: Use current date/time in `YYYY-MM-DD HH:MM:SS AM/PM` format. Time when document formatting is complete
- parent_directory: Name of the immediate parent folder in the vault
formatter_agent: model used to format document
cli_ tool: tool used for formatting
**If frontmatter is missing:** Create it based on the document's H1 title and content.

### Phase 4: Chunk-by-Chunk Processing

For each chunk (300-500 lines), perform these checks IN ORDER:

#### A. Structure & Headings

| Issue | Detection | Fix |
|-------|-----------|-----|
| Multiple H1 headers | More than one `# Title` | Demote subsequent H1s to `## Header` |
| Decimal headings | `3.1.1 Abstract` without `#` | Convert to `#### 3.1.1 Abstract` |
| Missing space after `#` | `##Section` | Add space: `## Section` |
| No blank line before heading | Text immediately before `## Header` | Add one blank line before |
| Problem/Example headers | `### Problem 2.1` | Convert to bold paragraph: `**Problem 2.1**` |

#### B. Text & Paragraphs

| Issue | Detection | Fix |
|-------|-----------|-----|
| Mid-sentence line breaks | Line A ends without `.?!:;` + Line B starts lowercase | Join into one line |
| Multiple blank lines | 2+ consecutive blank lines | Collapse to single blank line |
| Broken words (OCR) | `di erent`, `e ect`, `hy pothesis` | Join: `different`, `effect`, `hypothesis` |

**Mid-Sentence Join STOP Conditions** — Do NOT join if Line B starts with:
- `|` (table row)
- `-` or `*` (list item)
- `>` (blockquote)
- `$$` (math block)
- ` ``` ` (code block)
- A number followed by `.` (numbered list)

#### C. Lists

| Issue | Detection | Fix |
|-------|-----------|-----|
| Wrong bullet markers | `*`, `+`, `•`, `○` | Standardize to `-` |
| Blank lines between items | Blank line inside a list | Remove blank lines between items |
| Missing blank before list | Text immediately before `-` item | Add one blank line before list start |
| Broken numbered lists | `1 Item` instead of `1. Item` | Add the missing dot |

#### D. Mathematics & LaTeX

**Inline Math (`$...$`):**
- No spaces between `$` and content: `$x + y$` ✓, `$ x + y $` ✗
- Currency: Escape as `\$50` if `$50` causes rendering issues

**Block Math (`$$...$$`):**
- Delimiters MUST be on their own lines:
```latex
$$
E = mc^2
$$
```
- One blank line before opening `$$` and after closing `$$`

**OCR Artifact Fixes:**

| Artifact | Example | Fix |
|----------|---------|-----|
| Spaced decimals | `0 . 0 5`, `1 0 0` | `0.05`, `100` |
| Spaced operators | `x + y = z` (excessive) | `x + y = z` (normal) |
| Spaced text commands | `\text {w h e r e}` | `\text{where}` |
| Spaced subscripts | `\beta_ {I}` | `\beta_{I}` |
| Wrong log notation | `Log`, `ln` (when \log intended) | `\log` |
| Multiplication symbol | `*` in math mode | `\cdot` or implicit |
| Unescaped percent | `50%` in math | `50\%` |
| Currency symbol artifact | `\mathbb{S}` or `\mathbb {S}` | `\$` |

**Math Text Rule:** Use `\text{word}` for words inside equations:
- ✓ `\text{Rate} = \frac{\text{Distance}}{\text{Time}}`
- ✗ `Rate = \frac{Distance}{Time}` (renders as italic variables)

#### E. Tables

**Markdown Tables:**
```markdown
| Header 1 | Header 2 |
| :------- | :------- |
| Cell 1   | Cell 2   |
```

**Legacy Protection:** If you encounter `<table>` HTML or `\begin{tabular}` LaTeX:
- **LEAVE IT ALONE** — Do not attempt to convert
- Only fix obvious typos or broken pipes in Markdown tables

#### F. Images & Media

⚠️ **DO NOT TOUCH IMAGE LINKS** — Leave all image syntax exactly as-is:
- `![[filename.png]]` — DO NOT MODIFY
- `![alt](path/to/image.png)` — DO NOT MODIFY
- Any variation of image embed syntax — DO NOT MODIFY

This includes:
- Do not change the syntax format
- Do not fix "broken" looking paths
- Do not rename or reorganize
- Do not add or remove alt text
- **Leave them completely alone**

#### G. Table of Contents / Outlines

If the document has a TOC at the top with dotted leaders:
```
2.1 Section Name … … … … … … . . 17
```

**Fix:** Remove dotted leaders and page numbers. Either:
- Convert to clean markdown list, OR
- Remove entirely if redundant with document structure
- Remove empty lines separating items in the outline or TOC. 
#### H. Content Exclusion

**Remove practice/exercise sections** typically at document end:
- Headers matching: `# Practice Questions`, `# Problems`, `# Exercises`, `# Further Questions`, `# Questions and Problems`
- Delete the header and all content following it

---
# d2 diagrams

While reading through the document in chunks, proactively add d2 diagrams to help visualize complex concepts, phenomena, or to show cause effect relationships or to break down complex concepts into their constituent parts, or to create flowcharts, decision diagrams, or other diagrams that help visualize concepts. The reader has a strong preference for visual learning, and adding d2 diagrams to help visualize the notes will help the user get a more intuitive grasp of the complex topics being discussed. Make liberal use of d2 diagrams by adding them to the notes to help visualize the concepts in the notes. Wrap d2 diagrams in code blocks with the code language d2. A style reference for d2 diagrams is available at ‘/Users/rogerlin/Reserve/FinanceCompendium/styleguide/d2styleguide.md’ should you need it.
—-

## 🏷️ Tag Generation Methodology

### Two-Tier Tag System

This vault uses a **primary/secondary tag hierarchy**:

- **`primary_tags`**: The 1-10 MOST important key phrases — core concepts, central themes, main methodologies that define the document
- **`secondary_tags`**: Up to 25 supporting key phrases — related concepts, peripheral topics, additional context

Both are **multi-word key phrases** (2-4 words) that:
- Capture core concepts, methodologies, or domains
- Enable **vault-wide internal linking** via wikilinks
- Are specific enough to be meaningful but general enough to appear in multiple documents

### Tag Distribution Formula

Documents range from ~4,000 words (small) to ~450,000 words (very large), with most skewed toward the lower end.

**Method 1: Word Count Based**

| Document Size | Word Count | Primary Tags | Secondary Tags |
|---------------|------------|--------------|----------------|
| Small | < 5,000 | 1-2 | 3-5 |
| Medium | 5,000-15,000 | 3-4 | 5-10 |
| Standard | 15,000-50,000 | 5-6 | 10-15 |
| Large | 50,000-150,000 | 7-8 | 15-20 |
| Very Large | > 150,000 | 9-10 | 20-25 |

**Method 2: Chunk-Based (Preferred)**

Calculate based on number of chunks processed:

```
Primary Tags = min(10, max(1, ceil(chunks / 2)))
Secondary Tags = min(25, chunks × 2)
```

| Chunks Processed | Primary Tags | Secondary Tags |
|------------------|--------------|----------------|
| 1-2 | 1 | 2-4 |
| 3-4 | 2 | 6-8 |
| 5-6 | 3 | 10-12 |
| 7-10 | 4-5 | 14-20 |
| 11-15 | 6-8 | 22-25 |
| 16+ | 8-10 | 25 (cap) |

**Use whichever method is easier to calculate during processing.** The chunk-based method is preferred since you're already tracking chunks.

### Tag Extraction Process

**Step 1: Per-Chunk Extraction**
As you process each chunk, identify **2-4 key phrases** that capture the most important concepts. Record these in your working notes with a relevance score (1-3):
- **3 = Core concept** (likely primary tag candidate)
- **2 = Important supporting concept** (secondary tag candidate)
- **1 = Peripheral/contextual** (secondary tag if space permits)

Example for a finance document:
```
Chunk 1 (lines 1-400):
  - "term structure models" (3)
  - "yield curve dynamics" (3)
  - "spot rate derivation" (2)

Chunk 2 (lines 401-800):
  - "risk neutral pricing" (3)
  - "martingale measure" (2)
  - "change of numeraire" (2)

Chunk 3 (lines 801-1100):
  - "bond option valuation" (3)
  - "Black model" (2)
  - "swaption pricing" (2)
  - "volatility smile" (1)
```

**Step 2: Consolidation & Ranking**
After processing all chunks:
1. Collect all extracted phrases with their scores
2. Group similar/overlapping phrases (keep the best phrasing)
3. Sort by relevance score (3s first, then 2s, then 1s)
4. Within each score tier, prioritize phrases that appear across multiple chunks
5. Ensure coverage across the entire document (not all from top sections)

**Step 3: Primary Tag Selection**
From your ranked list, select the top N phrases (based on distribution table) for `primary_tags`:
- Must be the absolute core concepts
- Should represent what the document is fundamentally about
- At least one domain-level tag (e.g., "fixed income derivatives", "portfolio theory")

**Step 4: Secondary Tag Selection**
From the remaining phrases, select up to 25 for `secondary_tags`:
- Important supporting concepts that didn't make primary
- Methodologies mentioned (e.g., "monte carlo simulation")
- Related topics that provide context
- Ensure equal distribution across document sections

### Tag Format

- **Lowercase** (even proper nouns when used as tags)
- **Multi-word phrases** (2-4 words preferred)
- **NO snake_case or hyphens** — use natural spaces
- **NO single words** unless absolutely necessary

**Good Tags:**
- `term structure models`
- `risk neutral valuation`
- `credit risk modeling`
- `option pricing theory`
- `portfolio optimization`

**Bad Tags:**
- `term_structure` (snake_case)
- `derivatives` (too vague, single word)
- `black-scholes-merton-model` (hyphenated)
- `chapter 3 problem 2.1` (too specific, not linkable)

---

## 📝 Bead Issue Update Protocol

**After processing EACH chunk**, update the bead issue with:

### Update Format

```
## Chunk [N] Processing Complete (lines X-Y)

### Corrections Made:
1. **[Issue Type]** at line [Z]:
   - Original: `[exact original text/code]`
   - Corrected: `[exact corrected text/code]`

2. **[Issue Type]** at line [Z]:
   - Original: `[exact original text/code]`
   - Corrected: `[exact corrected text/code]`

### Key Phrases Extracted (with relevance scores):
- "[phrase 1]" (3) - primary candidate
- "[phrase 2]" (2) - secondary candidate
- "[phrase 3]" (1) - peripheral

### Issues Skipped (Ambiguous):
- Line [Z]: [description of ambiguous issue]

### Chunk Status: ✓ Complete
```

### Example Update

```
## Chunk 2 Processing Complete (lines 451-890)

### Corrections Made:
1. **Mid-sentence line break** at line 467:
   - Original: `the forward rate can be\ncomputed using`
   - Corrected: `the forward rate can be computed using`

2. **OCR spaced decimal** at line 512:
   - Original: `$r = 0 . 0 5$`
   - Corrected: `$r = 0.05$`

3. **Block math formatting** at lines 534-536:
   - Original: `$$ E[X] = \mu $$` (single line)
   - Corrected: `$$\nE[X] = \mu\n$$` (delimiters on own lines)

4. **Bullet marker** at line 601:
   - Original: `• First item`
   - Corrected: `- First item`

### Key Phrases Extracted (with relevance scores):
- "forward rate agreements" (3) - primary candidate
- "interest rate parity" (2) - secondary candidate
- "covered interest arbitrage" (2) - secondary candidate

### Issues Skipped (Ambiguous):
- Line 678: Unmatched `$` delimiter - unclear if currency or math

### Chunk Status: ✓ Complete
```

---

## ✅ Final Verification Checklist

After processing all chunks, verify:

**YAML Frontmatter:**
- [ ] YAML frontmatter is valid and complete
- [ ] `tags` field has been REMOVED (replaced by primary_tags/secondary_tags)
- [ ] `key_concepts` field has been REMOVED
- [ ] `primary_tags` contains 1-10 most important key phrases
- [ ] `secondary_tags` contains up to 25 supporting key phrases
- [ ] All tags are multi-word phrases (2-4 words), lowercase
- [ ] Tag counts match document size/chunk distribution guidelines
- [ ] Tags have equal distribution across document content (not just from top)

**Document Structure:**
- [ ] Single H1 header exists (document title)
- [ ] All headings have proper spacing
- [ ] No mid-sentence line breaks remain

**Mathematics:**
- [ ] LaTeX inline math has no padding spaces
- [ ] LaTeX block math has delimiters on own lines
- [ ] OCR artifacts fixed (spaced decimals, operators)

**Formatting:**
- [ ] All bullet markers are `-`
- [ ] No multiple consecutive blank lines
- [ ] Practice/exercise sections removed
- [ ] TOC formatting cleaned up (if present)
- [ ] Image links LEFT UNTOUCHED

**Logging:**
- [ ] All corrections logged in bead issue
- [ ] All key phrases logged with relevance scores

---

## 🚫 Edge Cases — Do Not Touch

| Element | Action |
|---------|--------|
| **Image links (`![[...]]`, `![](...)`)** | **NEVER MODIFY — Leave exactly as-is** |
| Callouts (`> [!NOTE]`) | Preserve blockquote formatting |
| Footnotes (`[^1]`) | Preserve exactly |
| Comments (`%% comment %%`) | Preserve |
| HTML tables (`<table>`) | Preserve, do not convert |
| LaTeX tables (`\begin{tabular}`) | Preserve, do not convert |
| Code blocks (` ``` `) | Preserve content exactly |

---

## 📚 Reference: Complete Formatting Rules

For additional edge cases not covered here, consult:
- `styleguide/obsidian_formatting_rules.md` — Comprehensive ruleset
- `styleguide/formatting_prompt.md` — Protocol v3 details
- `styleguide/style-guide-v4.md` — Extended examples

---

## 🏁 Task Completion

When all chunks are processed and verification is complete:

1. **Final bead issue update** with:
   - Total corrections made (count by type)
   - Final `primary_tags` list (1-10 items)
   - Final `secondary_tags` list (up to 25 items)
   - Any persistent issues or concerns
   - Status: ✓ COMPLETE

Example final update:
```
## TASK COMPLETE

### Summary:
- Chunks processed: 8
- Total corrections: 47
- Primary tags: 4
- Secondary tags: 16

### Final Primary Tags:
1. term structure models
2. risk neutral pricing
3. bond option valuation
4. interest rate derivatives

### Final Secondary Tags:
1. yield curve dynamics
2. martingale measure
3. change of numeraire
4. forward rate agreements
5. Black model
6. swaption pricing
7. volatility smile
8. Heath-Jarrow-Morton
9. short rate models
10. calibration methods
11. no arbitrage pricing
12. zero coupon bonds
13. discount factors
14. spot rate derivation
15. cap and floor pricing
16. interest rate swaps

### Persistent Issues:
- None

### Status: ✓ COMPLETE
```

2. **Close the bead issue**:
   ```bash
   bd close FIN-xxxxx --reason "Formatting remediation complete. [N] corrections made. Primary: [X] tags. Secondary: [Y] tags."
   ```

---

**Remember:** This is a manual, high-touch task. Read every line. Make targeted fixes. Document everything. No shortcuts.

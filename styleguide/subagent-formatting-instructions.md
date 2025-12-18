# Comprehensive Subagent Instructions: Obsidian Vault Formatting Remediation

**Version:** 1.0
**Scope:** Manual formatting remediation for FinanceCompendium vault documents
**Mandatory:** This is a HIGH-TOUCH, FULLY MANUAL task. NO SCRIPTS OR AUTOMATION PERMITTED.

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
tags:
  - multi word phrase one
  - key concept phrase two
  - methodology or approach
cssclasses: academia
---
```

**YAML Rules:**
- `title`: Plain text, Title Case, NO markdown formatting
- `tags`: List format (not comma-separated string), lowercase multi-word phrases
- `cssclasses`: Always set to `academia`
- **REMOVE** the `key_concepts` field if present (it is redundant)
- **REMOVE** linter-generated fields like `linter-yaml-title-alias` or `source`
- Exactly ONE blank line after the closing `---` before content

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

#### H. Content Exclusion

**Remove practice/exercise sections** typically at document end:
- Headers matching: `# Practice Questions`, `# Problems`, `# Exercises`, `# Further Questions`, `# Questions and Problems`
- Delete the header and all content following it

---

## 🏷️ Tag Generation Methodology

### Philosophy

Tags are **multi-word key phrases** (2-4 words) that:
- Capture core concepts, methodologies, or domains
- Enable **vault-wide internal linking** via wikilinks
- Are specific enough to be meaningful but general enough to appear in multiple documents

### Tag Quantity by Document Size

| Document Size | Line Count | Number of Tags |
|---------------|------------|----------------|
| Small | < 200 lines | 1-2 tags |
| Medium | 200-500 lines | 3-4 tags |
| Standard | 500-1000 lines | 4-6 tags |
| Large | 1000-2000 lines | 6-8 tags |
| Very Large | > 2000 lines | 8-10 tags |

### Tag Extraction Process

**Step 1: Per-Chunk Extraction**
As you process each chunk, identify **1-2 key phrases** that capture the most important concepts in that chunk. Record these in your working notes.

Example for a finance document:
- Chunk 1 (lines 1-400): "term structure models", "yield curve"
- Chunk 2 (lines 401-800): "risk neutral pricing", "martingale measure"
- Chunk 3 (lines 801-1100): "bond option valuation", "Black model"

**Step 2: Consolidation**
After processing all chunks, review your collected phrases:
- Group similar/overlapping phrases
- Rank by importance and frequency of appearance
- Ensure coverage across the entire document (equal distribution)

**Step 3: Selection**
Select the top phrases based on document size guidelines. Ensure:
- At least one domain-level tag (e.g., "fixed income", "derivatives pricing")
- Several concept-level tags (e.g., "interest rate models", "no arbitrage pricing")
- Optional methodology tags (e.g., "monte carlo simulation", "binomial trees")

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

### Key Phrases Extracted:
- "[phrase 1]"
- "[phrase 2]"

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

### Key Phrases Extracted:
- "forward rate agreements"
- "interest rate parity"

### Issues Skipped (Ambiguous):
- Line 678: Unmatched `$` delimiter - unclear if currency or math

### Chunk Status: ✓ Complete
```

---

## ✅ Final Verification Checklist

After processing all chunks, verify:

- [ ] YAML frontmatter is valid and complete
- [ ] `key_concepts` field has been removed
- [ ] Tags are multi-word phrases (2-4 words), lowercase
- [ ] Tag count matches document size guidelines
- [ ] Tags have equal distribution across document content
- [ ] Single H1 header exists (document title)
- [ ] All headings have proper spacing
- [ ] No mid-sentence line breaks remain
- [ ] LaTeX inline math has no padding spaces
- [ ] LaTeX block math has delimiters on own lines
- [ ] All bullet markers are `-`
- [ ] No multiple consecutive blank lines
- [ ] Practice/exercise sections removed
- [ ] TOC formatting cleaned up (if present)
- [ ] All corrections logged in bead issue

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
   - Final tag list
   - Any persistent issues or concerns
   - Status: ✓ COMPLETE

2. **Close the bead issue**:
   ```bash
   bd close FIN-xxxxx --reason "Formatting remediation complete. [N] corrections made. Tags updated."
   ```

---

**Remember:** This is a manual, high-touch task. Read every line. Make targeted fixes. Document everything. No shortcuts.

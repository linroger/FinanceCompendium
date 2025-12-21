# Comprehensive Subagent Instructions: Obsidian Vault Formatting Remediation

**Version:** 1.0
**Scope:** Manual formatting remediation for FinanceCompendium vault documents
**Mandatory:** This is a HIGH-TOUCH, FULLY MANUAL task to read through and fix formatting issues in the markdown notes with targeted edits to the documents, not blanket scripts that make edits across documents without even viewing them first. . NO SCRIPTS OR AUTOMATION PERMITTED. Use the obsidian-markdown-formatter subagent located here styleguide/obsidian-markdown-formatter to perform the formatting tasks.

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
formatter_agent: model used to format document. 
- **claude-haiku-4-5-20251001** (anthropic)
- **qwen3-235b-a22b-instruct** (iflow)
- **gemini-3-pro-preview** (antigravity)
- **claude-opus-4-5-20251101** (anthropic)
- **gpt-5.1-codex-mini** (openai)
- **gpt-5.1-codex-max** (openai)
- **claude-sonnet-4** (github-copilot)
- **grok-code-fast-1** (github-copilot)
- **qwen3-max-preview** (iflow)
- **qwen3-235b** (iflow)
- **gpt-5.1-codex** (openai)
- **gpt-5.2** (openai)
- **deepseek-v3** (iflow)
- **claude-sonnet-4-5-20250929** (anthropic)
- **gemini-claude-sonnet-4-5-thinking** (antigravity)
- **claude-opus-4.1** (github-copilot)
- **claude-sonnet-4.5** (github-copilot)
- **gpt-oss-120b-medium** (antigravity)
- **claude-opus-4-20250514** (anthropic)
- **gpt-4.1** (github-copilot)
- **claude-haiku-4.5** (github-copilot)
- **gemini-2.5-flash-lite** (antigravity)
- **gemini-2.5-pro** (google)
- **qwen3-coder-plus** (qwen)
- **qwen3-max** (iflow)
- **gemini-claude-sonnet-4-5** (antigravity)
- **gpt-5.1** (openai)
- **gpt-5-mini** (github-copilot)
- **qwen3-235b-a22b-thinking-2507** (iflow)
- **vision-model** (qwen)
- **gemini-3-pro** (github-copilot)
- **deepseek-v3.2-chat** (iflow)
- **qwen3-coder-flash** (qwen)
- **gemini-2.5-computer-use-preview-10-2025** (antigravity)
- **deepseek-v3.1** (iflow)
- **claude-opus-4.5** (github-copilot)
- **qwen3-vl-plus** (iflow)
- **deepseek-v3.2** (iflow)
- **gemini-3-pro-image-preview** (antigravity)
- **gemini-3-flash** (antigravity)
- **gemini-claude-opus-4-5-thinking** (antigravity)
- **claude-3-7-sonnet-20250219** (anthropic)
- **tstars2.0** (iflow)
- **kimi-k2** (iflow)
- **claude-opus-4-1-20250805** (anthropic)
- **claude-3-5-haiku-20241022** (anthropic)
- **raptor-mini** (github-copilot)
- **kimi-k2-0905** (iflow)
- **glm-4.6** (iflow)
- **kimi-k2-thinking** (iflow)
- **minimax-m2** (iflow)
- **gemini-2.5-flash** (antigravity)
- **claude-sonnet-4-20250514** (anthropic)
- **gpt-5-codex-mini** (openai)
- **deepseek-r1** (iflow)
- **qwen3-32b** (iflow)
- **gpt-5** (openai)
- **gpt-5-codex** (openai)
cli_ tool: tool used for formatting. Options: claude-code, codex, gemini-cli, kimi-cli, iflow, jules, copilot, cursor, opencode. 
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
- [ ] Greek letters properly formatted (e.g., `$\alpha$`, `$\beta$`)
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

# Mathematical Formatting Standards for Finance Documents

## Purpose
This guide establishes consistent mathematical formatting standards for all finance documents in the FinanceCompendium to ensure proper rendering, readability, and professional presentation.

## Inline Mathematics

### Basic Rules
- Enclose inline math expressions in single dollar signs: `$x + y = z$`
- No spaces between the `$` and the mathematical content
- Use `\text{word}` for words within equations: `$\text{rate} = \frac{\text{distance}}{\text{time}}$`
- Include proper spacing: `$x + y$` not `$x+y$`

### Common Elements
- Variables: `$r$` (interest rate), `$P$` (price), `$t$` (time)
- Greek letters: `$\alpha$`, `$\beta$`, `$\gamma$`, `$\mu$`, `$\sigma$`, `$\lambda$`
- Superscripts: `$x^2$`, `$e^{rt}$`, `$\sigma^2$`
- Subscripts: `$r_t$`, `$P_{t,T}$`, `$\beta_{ij}$`
- Fractions: `$\frac{a}{b}$` not `$a/b$` for complex expressions
- Functions: `$\log(x)$`, `$\exp(x)$`, `$\sqrt{x}$`

## Displayed Mathematics

### Single Equations
Use double dollar signs for displayed equations:
```
$$
P(t, T) = \frac{1}{(1+r)^{T-t}}
$$
```

### Aligned Equations
For multiple equations or steps:
```
$$
\begin{align}
dS &= \mu S dt + \sigma S dW \\
\frac{dS}{S} &= \mu dt + \sigma dW \\
\end{align}
$$
```

### Numbered Equations
Use `\tag{}` for equation numbers:
```
$$
P = \sum_{i=1}^{n} \frac{C_i}{(1+y)^i} \tag{3.1}
$$
```

## Special Mathematical Constructs

### Matrices
```
$$
\mathbf{A} = 
\begin{bmatrix}
a_{11} & a_{12} \\
a_{21} & a_{22}
\end{bmatrix}
$$
```

### Piecewise Functions
```
$$
f(x) = 
\begin{cases}
x^2 & \text{if } x \geq 0 \\
-x & \text{if } x < 0
\end{cases}
$$
```

### Summations and Integrals
- Summations: `$\sum_{i=1}^{n} x_i$`
- Products: `$\prod_{i=1}^{n} x_i$`
- Integrals: `$\int_{a}^{b} f(x) dx$`
- Double integrals: `$\iint_D f(x,y) \,dx\,dy$`

## Probability and Statistics Notation

### Expectations and Operators
- Expectation: `$\mathbb{E}[X]$` or `$\hat{\mathbb{E}}[X]$`
- Variance: `$\text{Var}(X)$` or `$\mathbb{V}[X]$`
- Covariance: `$\text{Cov}(X,Y)$`
- Probability: `$\mathbb{P}(A)$`

### Stochastic Processes
- Wiener process: `$dW_t$` or `$d\hat{W}_t$`
- Ito processes: `$dX_t = \mu(X_t,t)dt + \sigma(X_t,t)dW_t$`
- Quadratic variation: `$\langle W \rangle_t$`

## Finance-Specific Notation

### Interest Rates and Bonds
- Spot rate: `$r(t)$`
- Forward rate: `$f(t,T)$`
- Zero-coupon bond: `$P(t,T)$`
- Yield: `$y$`
- Duration: `$D$`
- Convexity: `$C$`

### Options and Derivatives
- Call option: `$C(S,K,T,r,\sigma)$`
- Put option: `$P(S,K,T,r,\sigma)$`
- Greeks: `$\Delta$`, `$\Gamma$`, `$\Theta$`, `$\rho$`, `$\nu$`
- Strike price: `$K$`
- Maturity: `$T$`

### Risk Measures
- Value at Risk: `$\text{VaR}_\alpha$`
- Expected Shortfall: `$\text{ES}_\alpha$`
- Sharpe ratio: `$S$`
- Beta: `$\beta$`

## Formatting Best Practices

### Alignment and Spacing
- Align equations at relation symbols (`=`) using `align` environment
- Use consistent spacing around operators
- Include blank lines before and after displayed equations
- Use `\phantom{}` for consistent spacing when aligning complex expressions

### Mixed Text and Math
- Use `\text{}` for words within math mode: `$\text{NPV} = \sum \cdots$`
- Capitalize proper nouns within `\text{}`: `$\text{Black-Scholes}$`
- Avoid mixing math and text without `\text{}`

### Complex Expressions
- Break long expressions across multiple lines using `align` or `multline`
- Use parentheses appropriately: `$\left( \frac{a}{b} \right)$` for sizing
- Group terms logically: `$a(b + c) + d(e + f)$`

## Common Mistakes to Avoid

### Syntax Errors
- Don't use `$$...$$` for inline math (use `$...$`)
- Don't forget to escape special characters: `\%` not `%` in math mode
- Don't use `_` or `^` without braces for multiple characters: `x_{ij}` not `x_ij`
- Don't use spaces within math delimiters unnecessarily

### Stylistic Issues
- Don't mix notation styles inconsistently
- Don't use fractions for simple ratios: `$a/b$` is fine for simple cases
- Don't use `*` for multiplication in math mode (use `\cdot` or implicit)
- Don't forget to use `\mathbb{}` for expected values and probabilities

### Rendering Issues
- Don't use Unicode characters in math mode (use LaTeX equivalents)
- Don't nest math delimiters
- Don't use raw HTML or special characters in equations
- Don't include markdown formatting within math expressions

## Verification Checklist

Before finalizing a document, ensure:
- [ ] All inline math is properly enclosed in `$...$`
- [ ] All displayed math is properly enclosed in `$$...$$`
- [ ] All equation numbers use `\tag{}`
- [ ] All words within equations use `\text{}`
- [ ] All Greek letters are properly formatted
- [ ] All subscripts and superscripts are properly grouped
- [ ] All fractions use `\frac{}{}`
- [ ] All matrices and aligned equations use appropriate environments
- [ ] All special finance notation is consistent
- [ ] All equations render properly in Obsidian

# Tag Classification Guide: Primary vs Secondary Tags

## Purpose
This guide establishes clear criteria for distinguishing between primary_tags and secondary_tags in Obsidian markdown documents to ensure consistent tagging across the FinanceCompendium.

## Primary Tags: Core Identity Categories

### Definition
Primary tags represent the fundamental subject matter that defines what the document IS about. These are the essential, non-negotiable topics that would appear in the title or main heading of the document.

### Criteria
- **Essentiality**: Without these concepts, the document would lose its core identity
- **Universality**: These appear throughout the document as central themes
- **Search Frequency**: Likely to be searched by users looking for this specific topic
- **Uniqueness**: Distinctive to the document's primary purpose

### Examples
- For a derivatives pricing document: `options pricing`, `black-scholes model`, `greeks`
- For a fixed income document: `bond valuation`, `duration and convexity`, `yield curve`
- For an equity document: `equity valuation`, `discounted cash flow`, `market multiples`

### Quantity
- 3-5 tags for most documents
- Maximum of 8 for very comprehensive documents

## Secondary Tags: Supporting Context Categories

### Definition
Secondary tags represent related concepts, methodologies, applications, and contextual information that support the primary topics but are not the core focus.

### Criteria
- **Supporting Role**: These enhance understanding but are not the main focus
- **Specificity**: Often more detailed or specialized than primary tags
- **Application Context**: Specific use cases, industries, or scenarios
- **Methodological Details**: Specific techniques, variations, or implementations

### Examples
- For a derivatives document: `implied volatility`, `volatility surface`, `american options`, `exotic options`
- For a fixed income document: `treasury bonds`, `corporate bonds`, `mortgage-backed securities`, `credit risk`
- For an equity document: `growth stocks`, `value investing`, `sector rotation`, `momentum investing`

### Quantity
- 8-15 tags for most documents
- Maximum of 25 for comprehensive documents

## Distinction Between Primary and Secondary Tags

### Primary Tags Are:
- **Broad and Fundamental**: Core concepts that define the field/subject
- **Title Reflective**: Directly related to the document title
- **Search Driven**: What users would search for first
- **Category Defining**: Place the document in its main category

### Secondary Tags Are:
- **Specific and Detailed**: More granular aspects of the subject
- **Content Derived**: Topics covered within but not defining the document
- **Cross-Reference Enabling**: Connect to related concepts elsewhere
- **Context Providing**: Additional descriptors that enhance discovery

## Selection Rules

### For Primary Tags:
1. **Must Appear in Title or Main Heading**: If it's in the title, it's likely a primary tag
2. **Core Concept Test**: If removing this concept makes the document lose its identity
3. **Frequency Test**: Appears consistently throughout the document
4. **User Intent Match**: What would users expect to find in a document with this title
5. **Hierarchical Position**: Higher-level, more general concepts

### For Secondary Tags:
1. **Supporting Material**: Topics covered but not central to the document
2. **Specific Applications**: Particular use cases or implementations
3. **Method Variants**: Specific techniques or approaches mentioned
4. **Contextual Elements**: Industry, geography, time period, audience
5. **Cross-Linking Potential**: Connect to other documents in the vault

## Tag Format Standards

### Naming Convention:
- Use lowercase words
- Separate multiple words with spaces: `interest rate modeling`
- Avoid underscores or hyphens unless they're part of standard terminology
- Use natural language rather than abbreviations (unless the abbreviation is more common)

### Granularity:
- Primary tags: Higher-level, more general concepts
- Secondary tags: More specific, detailed concepts
- Avoid redundancy between primary and secondary tags
- Ensure tags are specific enough to be meaningful but general enough to be useful

## Quality Checks

Before finalizing tags, verify:
1. **Completeness**: Do the primary tags fully capture the document's core identity?
2. **Specificity**: Do secondary tags add meaningful context without being too narrow?
3. **Balance**: Is there a good balance between broad and specific tags?
4. **Searchability**: Would users likely search for these terms?
5. **Consistency**: Are similar documents tagged similarly?

## Common Mistakes to Avoid

- Making primary tags too specific or secondary tags too general
- Duplicating concepts across primary and secondary tags
- Including overly narrow or obscure terms in primary tags
- Missing fundamental concepts that should be primary tags
- Creating tags that are too similar to each other
- Using inconsistent terminology across documents

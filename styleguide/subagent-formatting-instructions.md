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




D2 Style Guide


D2 is a declarative diagram scripting language that transforms text into visual diagrams. This guide focuses on creating infographic-style diagrams with emphasis on styling, visual design, and presentation quality.

## Core Syntax and Structure

### Basic Element Definition

```d2
# Simple node
element_name: Label Text

# Node with shape
element_name: Label Text {
  shape: rectangle
}

# Connection between elements
A -> B: Connection Label
```

### Layout Direction

```d2
direction: right    # left-to-right flow
direction: up       # bottom-to-top
direction: down     # top-to-bottom (default)
direction: left     # right-to-left
```

## Shape Library

D2 provides an extensive shape library for infographics:

```d2
# Basic shapes
basic_rect: Rectangle {shape: rectangle}
basic_square: Square {shape: square}
basic_circle: Circle {shape: circle}
basic_oval: Oval {shape: oval}
basic_diamond: Diamond {shape: diamond}
basic_hexagon: Hexagon {shape: hexagon}
basic_triangle: Triangle {shape: triangle}

# Specialized shapes
cylinder_shape: Cylinder {shape: cylinder}
queue_shape: Queue {shape: queue}
package_shape: Package {shape: package}
step_shape: Step {shape: step}
callout_shape: Callout {shape: callout}
stored_data: Stored Data {shape: stored_data}
parallelogram_shape: Parallelogram {shape: parallelogram}

```

## Styling System

### Fill Colors

```d2
# Solid colors
node_solid: Solid Fill {
  style.fill: "#4CAF50"
}

# Named colors
node_named: Named Color {
  style.fill: red
}

# RGB and RGBA
node_rgba: Transparent {
  style.fill: "rgba(0, 255, 0, 0.5)"
}

# Fill opacity
node_opacity: Semi-transparent {
  style.fill: "#2A9D8F"
  style.fill-opacity: 0.5
}
```

### Gradient Fills

```d2
# Linear gradients
linear_gradient: Linear {
  style.fill: "linear-gradient(to right, #4e54c8, #8f94fb)"
}

gradient_angle: Angled {
  style.fill: "linear-gradient(45deg, rgba(255,0,0,0.5) 0%, rgba(0,0,255,0.5) 100%)"
}

# Radial gradients
radial_gradient: Radial {
  style.fill: "radial-gradient(circle, white 0%, #8A2BE2 60%, #4B0082 100%)"
}

# Multi-stop gradients
multi_stop: Multi-stop {
  style.fill: "linear-gradient(to bottom right, red 0%, yellow 25%, green 50%, cyan 75%, blue 100%)"
}
```

### Stroke (Border) Styling

```d2
# Basic stroke
basic_border: Border {
  style.stroke: "#333"
  style.stroke-width: 2
}

# Dashed and dotted borders
dashed_border: Dashed {
  style.stroke-dash: 5
  style.stroke-width: 2
}

complex_dash: Complex Pattern {
  style.stroke-dash: "5 3 1 3"
  style.stroke-width: 2
}

# Gradient strokes
gradient_stroke: Gradient Border {
  style.stroke: "linear-gradient(to right, red, blue)"
  style.stroke-width: 3
}
```

### Shadows and Depth

```d2
# Basic shadow
shadow_node: With Shadow {
  style.shadow: true
  style.shadow-color: "rgba(0,0,0,0.3)"
  style.shadow-offset: "4px 4px"
}

# Multiple shadow properties
deep_shadow: Deep Shadow {
  style.shadow: true
  style.shadow-color: gray
}
```

### Rounded Corners

```d2
rounded_node: Rounded {
  shape: rectangle
  style.border-radius: 10
}
```

## Text Formatting

### Basic Text Styling

```d2
# Font properties
styled_text: Custom Font {
  style.font-size: 20
  style.font-color: "#2c3e50"
  style.font-family: "Arial"
}

# Bold and emphasis
bold_node: **Bold Text**
italic_node: *Italic Text*
```

### Markdown Support

D2 supports rich markdown formatting for labels:

```d2
markdown_node: |md
  # Main Heading

  This is **bold** and this is *italic*.

  - Bullet point 1
  - Bullet point 2
  - Bullet point 3

  1. Numbered item
  2. Another item

  [Link text](https://example.com)
|
```

### LaTeX Math Equations

```d2
equation_node: Math Formula {
  equation: |latex
    \lim_{h \rightarrow 0} \frac{f(x+h)-f(x)}{h}
  |
}

# Inline LaTeX in connections
A -> B: |latex
  f(x) = x^2 + 2x + 1
|

# Complex equations
formula_box: |latex
  \begin{equation} \label{eq1}
  \begin{split}
  A & = \frac{\pi r^2}{2} \\
   & = \frac{1}{2} \pi r^2
  \end{split}
  \end{equation}
|
```

### Multi-line Labels

```d2
# Using line breaks
multi_line: "Line 1
Line 2
Line 3"

# Using explicit formatting
formatted: |md
  Line one

  Line two

  Line three
|
```

## Icons and Visual Elements

### Adding Icons

```d2
# Icon from URL
node_with_icon: Database {
  icon: https://icons.terrastruct.com/essentials%2F213-alarm.svg
}

# Icons on different shapes
sql_table: {
  shape: sql_table
  icon: https://icons.terrastruct.com/essentials%2F213-alarm.svg
}

class_shape: {
  shape: class
  icon: https://icons.terrastruct.com/essentials%2F213-alarm.svg
}
```

### Tooltips

```d2
# Simple tooltip
tooltip_node: Hover Me {
  tooltip: This is a tooltip
}

# Positioned tooltips
positioned_tooltip: Rectangle {
  tooltip: Top Left {
    near: top-left
  }
}

# Markdown tooltips
rich_tooltip: Information {
  tooltip: |md
    # Important Info

    This node contains **critical** information

    - Point 1
    - Point 2
  | {
    near: top-center
  }
}
```

Position options for tooltips: `top-left`, `top-center`, `top-right`, `center-left`, `center-right`, `bottom-left`, `bottom-center`, `bottom-right`

## Connection Styling

### Basic Connections

```d2
# Simple connection
A -> B

# Labeled connection
A -> B: Connection Label

# Styled connection
A -> B: Styled {
  style.stroke: "#007bff"
  style.stroke-width: 3
}

# Dashed connection
A -> B: Dashed Link {
  style.stroke-dash: "5 5"
  style.stroke-color: red
}
```

### Connection Font Styling

```d2
# Gradient connection with styled text
A -> B: Gradient Link {
  style.stroke: "linear-gradient(to right, red, blue)"
  style.font-color: "#3ddb89"
  style.font-size: 14
}
```

## Advanced Layout Techniques

### Containers and Grouping

```d2
# Container with styled content
container: Container Name {
  style.fill: "#f0f0f0"
  style.stroke: "#333"

  # Nested elements
  element_1: Item 1
  element_2: Item 2
  element_3: Item 3

  element_1 -> element_2 -> element_3
}
```

### Grid Layout

```d2
# Specify grid columns
grid-columns: 3

item_1: Item 1
item_2: Item 2
item_3: Item 3
item_4: Item 4
item_5: Item 5
item_6: Item 6
```

### Positioning with `near`

```d2
# Position elements relative to others
main_node: Main

detail_1: Detail 1 {
  near: top-left
}

detail_2: Detail 2 {
  near: bottom-right
}
```

## Themes

D2 includes built-in themes for consistent styling:

```d2
# Apply theme via vars
vars: {
  d2-config: {
    theme-id: 300
  }
}

# Available themes:
# 0 - Neutral default
# 1 - Neutral grey
# 2 - Flagship Terrastruct
# 3 - Cool classics
# 4 - Mixed berry blue
# 5 - Grape soda
# 6 - Aubergine
# 7 - Colorblind clear
# 8 - Vanilla nitro cola
# 100 - Terminal
# 101 - Terminal Grayscale
# 200 - Dark Mauve
# 300 - Dark Flagship Terrastruct
```

### Custom Theme Elements

```d2
# Override theme colors for specific elements
node_custom: Custom Colors {
  style.fill: "#2c3e50"
  style.stroke: "#e74c3c"
  style.font-color: white
}
```

## Classes for Reusable Styles

```d2
# Define reusable style classes
classes: {
  base: {
    style: {
      stroke-dash: 2
      border-radius: 5
      font: mono
      text-transform: uppercase
    }
  }

  error: {
    style.fill: "#e07d7d"
    style.stroke: "#a60c0c"
    style.font-color: white
  }

  success: {
    style.fill: "#86f499"
    style.stroke: "#017f07"
    style.font-color: black
  }

  warning: {
    style.fill: "#ffd93d"
    style.stroke: "#ff6b35"
    style.font-color: black
  }
}

# Apply multiple classes
server-1.class: [base; error]
server-2.class: [base; success]
server-3.class: [base; warning]
```

## Glob Patterns for Bulk Styling

```d2
# Apply styling to all elements matching pattern
x: Node X
y: Node Y
z: Node Z

# Style all elements
*.style.fill: aquamarine
*.style.stroke: "#2c3e50"
*.style.stroke-width: 2
```

## Practical Infographic Examples

### Process Flow Diagram

```d2
direction: right

classes: {
  step: {
    style.fill: "#4a90e2"
    style.stroke: "#2e5c8a"
    style.font-color: white
    style.border-radius: 8
  }

  decision: {
    shape: diamond
    style.fill: "#f5a623"
    style.stroke: "#d68910"
    style.font-color: white
  }
}

start: Start Process {
  shape: circle
  class: step
}

process_1: Data Collection {
  class: step
}

decision_point: Validate Data? {
  class: decision
}

process_2: Process Data {
  class: step
}

end: Complete {
  shape: circle
  class: step
  style.fill: "#7ed321"
}

start -> process_1: Begin
process_1 -> decision_point
decision_point -> process_2: Valid
decision_point -> process_1: Invalid {
  style.stroke-dash: 5
  style.stroke: red
}
process_2 -> end: Finish
```

### Statistical Dashboard Card

```d2
dashboard_card: Sales Performance Q4 2024 {
  shape: rectangle
  style.fill: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)"
  style.stroke: none
  style.border-radius: 12
  style.shadow: true
  style.shadow-color: "rgba(0,0,0,0.3)"

  metric_value: |md
    ## $2.4M

    ↑ 23% vs Q3
  | {
    style.font-color: white
    style.font-size: 24
  }

  chart_area: Revenue Trend {
    style.fill: "rgba(255,255,255,0.2)"
    style.border-radius: 8
  }

  details: |md
    **Key Metrics:**
    - New Customers: 1,247
    - Retention Rate: 94%
    - Avg Deal Size: $15.2K
  | {
    style.font-color: "rgba(255,255,255,0.9)"
    style.font-size: 12
  }
}
```

### Comparison Chart

```d2
grid-columns: 2

classes: {
  feature_box: {
    style.border-radius: 10
    style.stroke-width: 2
    style.shadow: true
  }
}

product_a: Product A {
  class: feature_box
  style.fill: "#e8f5e9"
  style.stroke: "#4caf50"

  features: |md
    ✓ Feature 1
    ✓ Feature 2
    ✓ Feature 3
    ✗ Feature 4
  |

  price: $99/mo {
    style.font-size: 20
    style.font-color: "#2e7d32"
  }
}

product_b: Product B {
  class: feature_box
  style.fill: "#e3f2fd"
  style.stroke: "#2196f3"

  features: |md
    ✓ Feature 1
    ✓ Feature 2
    ✓ Feature 3
    ✓ Feature 4
  |

  price: $149/mo {
    style.font-size: 20
    style.font-color: "#1565c0"
  }
}
```

### Timeline Infographic

```d2
direction: right

classes: {
  milestone: {
    shape: circle
    style.fill: "#3f51b5"
    style.stroke: "#1a237e"
    style.font-color: white
  }

  event: {
    style.border-radius: 8
    style.fill: "#f5f5f5"
    style.stroke: "#9e9e9e"
  }
}

# Timeline backbone
timeline_start: 2020 {class: milestone}
milestone_2021: 2021 {class: milestone}
milestone_2022: 2022 {class: milestone}
milestone_2023: 2023 {class: milestone}
milestone_2024: 2024 {class: milestone}

# Events
event_1: Product Launch {
  class: event
  near: top-left
  icon: https://icons.terrastruct.com/essentials%2F213-alarm.svg
}

event_2: Series A Funding {
  class: event
  near: bottom-left
}

event_3: 1M Users {
  class: event
  near: top-left
}

event_4: International Expansion {
  class: event
  near: bottom-left
}

# Connections
timeline_start -> milestone_2021 -> milestone_2022 -> milestone_2023 -> milestone_2024

timeline_start -> event_1 {style.stroke-dash: 3}
milestone_2021 -> event_2 {style.stroke-dash: 3}
milestone_2022 -> event_3 {style.stroke-dash: 3}
milestone_2023 -> event_4 {style.stroke-dash: 3}
```

### Data Visualization Card

```d2
viz_card: User Engagement Metrics {
  style.fill: white
  style.stroke: "#e0e0e0"
  style.stroke-width: 1
  style.border-radius: 16
  style.shadow: true

  header: |md
    # User Engagement
    Last 30 Days
  | {
    style.fill: "#f8f9fa"
    style.font-color: "#212529"
  }

  metric_1: Daily Active Users {
    style.fill: "#e3f2fd"
    style.border-radius: 8

    value: |md
      ## 45.2K
      ↑ 12.5%
    | {
      style.font-color: "#1976d2"
    }
  }

  metric_2: Session Duration {
    style.fill: "#f3e5f5"
    style.border-radius: 8

    value: |md
      ## 18m 34s
      ↑ 8.3%
    | {
      style.font-color: "#7b1fa2"
    }
  }

  metric_3: Retention Rate {
    style.fill: "#e8f5e9"
    style.border-radius: 8

    value: |md
      ## 87.3%
      ↑ 2.1%
    | {
      style.font-color: "#388e3c"
    }
  }
}
```

## Color Palette Reference

### Solid Colors
- **Blues**: `#2196f3`, `#1976d2`, `#0d47a1`, `#4a90e2`
- **Greens**: `#4caf50`, `#388e3c`, `#1b5e20`, `#7ed321`
- **Reds**: `#f44336`, `#d32f2f`, `#b71c1c`, `#e74c3c`
- **Purples**: `#9c27b0`, `#7b1fa2`, `#4a148c`, `#667eea`
- **Oranges**: `#ff9800`, `#f57c00`, `#e65100`, `#f5a623`
- **Grays**: `#9e9e9e`, `#757575`, `#616161`, `#424242`

### Gradient Combinations
```d2
# Professional blues
blue_gradient: {
  style.fill: "linear-gradient(135deg, #667eea 0%, #764ba2 100%)"
}

# Warm sunset
sunset_gradient: {
  style.fill: "linear-gradient(to right, #f79533, #f37055, #ef4e7b, #a166ab)"
}

# Cool ocean
ocean_gradient: {
  style.fill: "linear-gradient(120deg, #89f7fe 0%, #66a6ff 100%)"
}

# Modern dark
dark_gradient: {
  style.fill: "linear-gradient(to right, #434343 0%, #000000 100%)"
}
```

## Performance Tips

1. **Minimize complex gradients** in diagrams with many elements
2. **Use classes** for repeated styling instead of individual style attributes
3. **Limit shadow effects** to key focal points
4. **Optimize icon usage** - use sparingly for visual hierarchy
5. **Keep markdown blocks** concise for faster rendering

## Best Practices for Infographics

1. **Visual Hierarchy**: Use size, color, and positioning to guide attention
2. **Consistent Styling**: Apply classes for uniform appearance
3. **Color Psychology**: Choose colors that match your message
4. **White Space**: Use adequate padding and spacing
5. **Typography**: Limit to 2-3 font sizes for clarity
6. **Contrast**: Ensure text is readable against backgrounds
7. **Progressive Disclosure**: Use tooltips for additional details
8. **Accessibility**: Consider colorblind-friendly palettes

This guide covers the essential aspects of creating professional infographic diagrams with D2. The declarative syntax combined with powerful styling options makes D2 ideal for creating data visualizations, process flows, comparison charts, and interactive infographics.

A. Obsidian Markdown Formatting Guide v3
Canonical rules for formatting, parsing, and repairing Markdown notes in your Obsidian vault, updated so tables can remain Markdown/HTML.
I. Document Hierarchy
	1.	Headings
	-	# — Document title (exactly one per file; Title Case).
	-	## — Major sections.
	-	### — Subsections.
	-	#### — Sub-subsections.
	-	Always exactly one space after hashes: ### Heading.
	2.	Lists
	-	Bulleted lists: -.
	-	Ordered lists: 1..
	-	Indent nesting by two spaces per level.
	-	Each bullet/number starts on its own line.
	3.	Spacing
	-	Collapse runs of ≥ 2 blank lines into one.
	-	Keep exactly one blank line:
	-	Between YAML and body.
	-	Before any Markdown heading.
	-	Before/after code fences.
	-	Before/after block math ($$…$$).
	-	Before/after image embeds.
	-	Remove:
	-	Trailing whitespace on all lines.
	-	Empty lines immediately above lines starting with - (bullets).
	-	Empty lines between consecutive bullet lines.
⸻
II. Text Formatting & Q&A
	1.	Question–Answer format
	-	Use numbered questions; answers indented one level:
1. Question: What is the effect of inflation on bond yields?
   - Inflation erodes real returns, leading to higher nominal yields.
	2. Paragraph continuity
	- If a sentence is split across lines incorrectly:
	- First fragment does not end with . ! ? : ; or a closing quote of those.
	- Or ends with a comma , or hyphen - (explicit continuation).
	- Second fragment begins with a lowercase letter.
	- Possibly one or more blank lines in between.
	- Action:
	- Remove the line break(s) and intervening blank lines.
	- Join with a single space.
	3. Inline emphasis
	- Use **bold** and *italics* only where needed.
	- If a heading text is just "Problem …" or "Example …" (any level), downgrade it to:
**Problem N — Title**
(no #; plain paragraph with bold).
⸻
III. Math & Equations
	1.	Inline math
	-	Use $…$ for inline expressions:
The nominal yield is $i_t = r_t + E_t[\pi_{t+1}]$.
	2.	Block math
	•	Use $$ on a line by itself:
$$
E_t[x_{t+1}] = \mu_x + \rho_x (x_t - \mu_x) + \epsilon_{t+1}
$$
	3.	Variable formatting (time indices etc.)
	•	Transform plain text occurrences (outside $...$ and code) into LaTeX:
	•	xt+1 → $x_{t+1}$
	•	yt-1 → $y_{t-1}$
	•	Et[xt+1] → $E_t[x_{t+1}]$
	•	Rt,t+1 → $R_{t,t+1}$
	•	xt_hat → $x_t^{\hat{}}$
	•	Do not auto-convert a standalone lower-case i.
	4.	Fixing spaced operators inside math
	•	Inside $...$ or $$...$$, normalize:
	•	\operatorname {V a r} → \operatorname{Var}
	•	\operatorname {C o v} → \operatorname{Cov}
	•	Remove spaces between digits: 1 0 0 → 100, . 0 0 0 1 → .0001.
	•	Do not attempt more aggressive reconstruction that might change meaning.
	5.	Stray superscripts
	•	Pattern X $^2$ → $X^2$:
	•	Join letter/number before $^2$ into a single inline math token.
	•	A bare $^2$ with no preceding symbol should be flagged for manual review (or left as-is).
⸻
IV. Tables (New Policy)
	1.	General rule
	-	Do not convert tables to LaTeX by default.
	-	Preserve tables as:
	-	GitHub-style Markdown tables (| separated), or
	-	HTML <table>…</table> blocks.
	-	Only fix:
	-	Obvious syntax errors (unbalanced pipes, malformed header separators).
	-	Trivial whitespace issues (extra spaces at line ends).
	2.	Legacy LaTeX tables
	-	If a table is already in LaTeX inside a fenced block:
```latex
\begin{tabular}{...}
...
\end{tabular}
	•	Leave it as-is; do not convert away from LaTeX.
	3.	No forced conversion
	•	Never auto-translate:
	•	Markdown ↔ LaTeX
	•	HTML ↔ LaTeX
	•	Tables are formatting-preserving; only repair obvious breakage.

		•	Do not modify URLs, filenames, or Obsidian embeds.

		VII. Special Outline Structures (Do Not Normalize)
	1.	Hierarchical chapter outlines
	•	Some notes intentionally use:
	•	Level 1: Arabic numerals (1.).
	•	Level 2: lowercase letters (a.).
	•	Level 3: lowercase Roman numerals (i.).
	•	Example:
1. Monetary policy influences the economy through several channels.
    a. The traditional channels of monetary policy…
        i. Interest rates influence consumption and investment.
	•	These are not converted to Markdown bullet lists.
	•	Preserve indentation and numbering exactly as-is.
	2.	Decimal headings / sections
	•	Lines like:
3. Dynamic Programming
3.1 Bellman Equation
3.1.1 Finite-Horizon Problems
3.1.1.1 Numerical Implementation
	•	Rule:
	•	Convert decimal section labels to headings starting at level 2:
	•	3 ... → ## 3. ...
	•	3.1 ... → ### 3.1 ...
	•	3.1.1 ... → #### 3.1.1 ...
	•	3.1.1.1 ... → ##### 3.1.1.1 ...
	•	Only when they are not already Markdown headings and clearly act as section titles.
⸻
VIII. Bullets & List Cleanup
	1.	Canonical bullet symbol
	•	All bullets must be - at the start of the line:
- Item
  - Subitem
	2.	Normalize malformed bullets
	•	Replace any bullet-like prefix at line start with - :
	•	LaTeX bullets: $\circ$, $\bullet$, $^{\circ}$.
	•	Raw tokens: \circ, \bullet.
	•	Unicode symbols: ■, ●, °, ◦, •.
	•	[*], [?] used as ad-hoc bullets.
	•	Only treat them as bullets when they appear at line start (ignoring whitespace) followed by space or tab.
	•	Do not replace \circ or \bullet inside legitimate math expressions.
	3.	Compact bullet lists
	•	Remove:
	•	Any blank line between two bullet items.
	•	Any blank line immediately above a bullet item.
	•	Valid pattern:
- First
- Second
  - Nested
⸻
IX. Repairs & Normalization (Agent Behavior)
	1.	Mid-sentence line breaks
	•	Join when:
	•	End fragment does not end with sentence-terminal punctuation.
	•	Or ends with comma/hyphen.
	•	Start fragment begins with lowercase.
	•	No code fence or math environment boundary between them.
	•	Preserve:
	•	Code blocks (```).
	•	Math fences ( ```math, $$).
	•	Headings.
	•	Lists (bullets, numbered).
	2.	Headers
	•	Exactly one # title per file.
	•	Chapter-level headings (from TOC / chapter splits) become:
	•	At file level: # <Chapter Title> in the split file.
	•	All other headings are relative:
	•	If top heading in file is level L, shift all headings so top becomes # and deeper keep the same relative depth.
	3.	Header demotion for Problems / Examples
	•	Any heading whose text (after trimming) begins with:
	•	Problem, Example (case-insensitive),
	•	Should be converted to plain text with bold:
**Problem 3 — Bond Pricing**
	4.	Broken LaTeX
	•	Fix:
	•	Simple matched \begin{aligned}, \end{aligned}.
	•	Obvious unmatched $ (but do not guess if ambiguous).
	•	If unsafe, leave equation unchanged.
	5.	Tables
	•	Do not alter structure other than:
	•	Fix clearly broken Markdown table delimiters.
	•	Fix obvious <table> tag mismatches.
⸻
 Normalize heading levels in a single chapter chunk:
    - Determine smallest heading level in chunk (e.g. '##' → level 2).
    - Shift all headings so that smallest level becomes '#'.
    - Demote 'Problem ...' / 'Example ...' headings to bold paragraphs.
 Ensure that the chunk starts with '# <chapter_title>' as the file title.
    If an H1 already exists and matches, keep it. If H1 exists but doesn't match,
    leave as-is. If no H1 but we have a title, insert one at top.
C. Script 2 — Fix Mid-Sentence Line Breaks, Bullets, and Bullet Symbols
This script targets:
	•	Mid-sentence line or paragraph breaks, including the case with intervening blank lines.
	•	Bullet normalization:
	•	Replace $\circ$, $\bullet$, \circ, \bullet, ■, ●, °, ◦, •, [?], etc. at line start with -.
	•	Remove empty lines above/between bullet lines.
	•	Decimal heading lines like 3.1.1 Finite-Horizon Problems → heading levels ##/###/####/....
	•	Leaves code fences, math fences, and tables untouched structurally.
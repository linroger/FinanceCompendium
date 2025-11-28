read through the markdown notes in this directory recursively, in small chunks, processing each document in small chunks from beginning to end and fixing any issues with regard to formatting, syntax, equations, numbering, spacing, etc. keep track of your processed documents in the completed.md file in the root directory. i will provide a style guide
   for you to strictly observe and adhere to as you are editting it. you may spin up and orchestrate a team of  subagents running in parallel to help you cover more ground more quickly. orchestrate a team of 10 subagents running in parallel, each manually reading through and parsing a given document in small chunks from beginning to end and fixing and
   formatting that document before moving on to the next document, and so on and so forth. here is the style guide. your task is to process all the markdown documents
   in this vault recursively. this is a large task ,but i am confident in your abilities. proceed one
   step at a time, and eventually, the task will be accomplished. Here is the full Markdown document version of your Obsidian formatting guide — ready for your vault.
It includes everything you need to consistently produce notes in your canonical style, including detailed instructions on how to format tables. proceed carefully if you encounter an image link, and try to fix it if it is broken and you think you can fix it. All local images are stored in the Attachments folder in the root of the directory, so make sure the relative paths point there. Escape dollar signs with \$ when they are used to denote currency, and not being used as delimiters. Strip broken internal links.
⸻
# 🧭 Obsidian Markdown Formatting Guide Standard
There should be a YAML header at the start of the document. For example,
---
tags:
  - borrower_lender_agency_conflicts
  - capital_structure_incentive_problems
  - optimal_debt_contracting
  - corporate_bond_covenants
  - bankruptcy_liquidation_design
  - repo_market_liquidity_risk
  - money_market_fund_vulnerability
  - performance_based_arbitrage
key_concepts:
  - asset_substitution_under_leverage
  - profit_sharing_equity_contracts
  - negative_pledge_covenants
  - payout_and_dividend_restrictions
  - repo_haircuts_and_margins
  - tri_party_repo_clearing
  - liquidity_transformation_in_mmfs
  - relative_value_convergence_trades
  - self_fulfilling_run_equilibria
aliases: []
cssclasses: academia
---



It standardizes text structure, math notation, tables, and visual elements for clarity and uniformity.
## I. Document Hierarchy
### 1. Heading Levels
- `#` — Main title of the document (one per file)
- `##` — Major section (Overview, Method, Discussion, etc.)
- `###` — Subsection or subtopic
- `####` — Sub-subsection or individual step
### 2. Nested Lists
- Use `-` for unordered points.
- Use `1.` for ordered steps.
- Indent subpoints with **two spaces**.
- Maintain clear logical nesting:
  ```markdown
  - Concept
    - Explanation
      - Example
⸻
II. Text Formatting
1. Question–Answer Format
1. Question :  What is the effect of inflation on bond yields?
    - Inflation erodes real returns, leading to higher nominal yields.
2. Line Spacing
	•	No double blank lines.
	•	Remove empty lines above and below math or tables.
3. Paragraph Continuity
If a line break splits a sentence incorrectly (no punctuation before lowercase letter), recombine it.
III. Math & Equations
1. Inline Math
Use single $ for inline math:
Nominal yield = $r_t + E_t[\pi_{t+1}]$
2. Block Math
Use double $$ for standalone equations:
$$
E_t[x_{t+1}] = \mu_x + \rho_x (x_t - \mu_x) + \epsilon_{t+1}
$$
3. Variable Formatting Rules
Transform text expressions into proper LaTeX math:
	•	xt+1 → $x_{t+1}$
	•	Et[xt+1] → $E_t[x_{t+1}]$
	•	Rt,t+1 → $R_{t,t+1}$
	•	xt_hat → $x_t^{\hat{}}$
	•	Exclude lowercase “i” from automatic subscript parsing.
⸻
IV. Tables
1. General Rules
	•	Never use Markdown tables.
	•	Always use LaTeX tabular environments inside Markdown code blocks with language latex.
	•	Wrap every table with:
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
...
\end{tabular}
\end{document}
```
	•	Always include column separators | and row delimiters \\ \hline.
2. Table Formatting Template
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Project & Cash Flow if D & Cash Flow if P (Debt = 600) & Expected Value \\ \hline
1 & 0 & 1500 - 600 = 900 & 450 \\ \hline
2 & 0 & 1551 - 600 = 951 & 475.5 \\ \hline
\end{tabular}
\end{document}
```
### 3. Table Formatting Instructions (Step-by-Step)
#### Step 1: Determine Table Type
- Count the number of columns and choose the format string accordingly:
  - 3 columns → `{|c|c|c|}`
  - 4 columns → `{|c|c|c|c|}`
  - Use `l`, `c`, or `r` for left, center, or right alignment.
#### Step 2: Add Header Row
- Write the header titles separated by `&`.
- End with `\\ \hline`.
#### Step 3: Add Data Rows
- Write each row with the same number of columns.
- Separate columns with `&`.
- End each row with `\\ \hline`.
#### Step 4: Wrap and Code Fence
- Enclose entire table in:
  ```markdown
  ```latex
  ... table here ...
  ```
#### Step 5: Check Visual Clarity
- No extra blank lines.
- Ensure all rows have equal number of columns.
- Keep table code compact (no trailing spaces).
#### Step 6: Examples
**Example 1 — Economic Data Table**
```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Variable & Mean & Std. Dev. \\ \hline
Inflation & 2.3\% & 1.1\% \\ \hline
Real Yield & 1.2\% & 0.6\% \\ \hline
\end{tabular}
\end{document}
Example 2 — Scenario Comparison
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Scenario & Return (Nominal) & Return (Real) & Inflation Rate \\ \hline
A & 5.0\% & 2.0\% & 3.0\% \\ \hline
B & 6.2\% & 2.8\% & 3.4\% \\ \hline
\end{tabular}
\end{document}
```
⸻
V. Images
1. Embedding Syntax
	•	Always use standard Markdown image syntax:
![image](filename.png)
	•	Place the image immediately after the paragraph or section it illustrates.
2. Image Placement
	•	When merging documents with images:
	•	Match image filenames to related text segments via fuzzy matching.
	•	Insert at nearest logical point (same paragraph or sub-section).
⸻
VI. Logical Layout Templates
1. Research Note
# Title of Paper
## Abstract Summary
- ...
## Model
$$Y_t = \alpha + \beta X_t + \epsilon_t$$
## Data
- Source: FRED, CRSP, Blue Chip
- Frequency: Monthly, 1980–2025
## Results
```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Variable & Coefficient \\ \hline
Inflation & 0.45 \\ \hline
Output Gap & -0.30 \\ \hline
\end{tabular}
\end{document}
```
Interpretation
	•	…
### 2. Problem Set / Derivation
```markdown
# Problem 3 — Bond Pricing
## Question
- Derive the price of a zero-coupon bond given expected inflation.
## Step-by-Step Solution
1. **Action:** Start with nominal yield definition.
2. **Math:**
   $$
   i_t = r_t + E_t[\pi_{t+1}]
   $$
3. **Reasoning:** Nominal yield equals real rate plus expected inflation.
## Final Answer
$$
P_t = \frac{1}{(1 + i_t)^n}
$$
⸻
VII. Metadata and Tags
1. File Header
---
tags: [finance, macro, research]
date: 2025-11-06
---
IX. Example — Complete Note
# Inflation Risk Premiums and Real Yields
## Summary
- Study explores how inflation expectations shape Treasury yield term premia.
## Model
$$
E_t[\pi_{t+1}] = \mu_\pi + \rho_\pi (\pi_t - \mu_\pi) + \epsilon_{t+1}
$$
## Results
```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Variable & Mean & Std. Dev. \\ \hline
Inflation & 2.3\% & 1.1\% \\ \hline
Real Yield & 1.2\% & 0.6\% \\ \hline
\end{tabular}
\end{document}
```
Interpretation
	•	Inflation expectations explain roughly 70% of yield variation.
	•	Risk premium increases with macro uncertainty.
## X. Summary of Table Formatting Rules
| Step | Action | Description |
|------|---------|-------------|
| 1 | Choose column layout | Define `{|c|c|c|}` etc. |
| 2 | Write headers | Use `&` separators and `\\ \hline` |
| 3 | Add data rows | Keep same number of columns |
| 4 | Enclose in code block | Use triple backticks with `latex` |
| 5 | Validate | No missing cells, blank lines, or unclosed tags |
## XI. Checklist for Final Output
✅ One `#` main title
✅ Proper heading hierarchy (`##`, `###`, `####`)
✅ All equations in `$...$` or `$$...$$`
✅ Tables in LaTeX tabular format
✅ Compact spacing (no redundant blank lines)
✅ Analytical tone, no fluff
✅ Images correctly linked
✅ YAML metadata included if relevant
# Obsidian Formatter — Style Guide + Agent Prompt (Roger Lin Standard)

> Canonical rules for formatting, parsing, and repairing Markdown notes in Roger Lin’s Obsidian vault.
> The Agent Prompt below is *script-agnostic*: it does not require or mention any specific scripts/tools.
> The agent must process notes in **small chunks**, apply these rules, and persist until all target files are clean.

---

## 1) Style Guide (Authoritative Rules)

### 1.1 Document Hierarchy
- **Headings**
  - `#` Title (exactly one per file; **Title Case**)
  - `##` Sections
  - `###` Subsections
  - `####` Sub-subsections
  - Exactly one space after hashes: `## Heading`
- **Lists**
  - Bulleted: `-`
  - Ordered: `1.`
  - Indent by **two spaces** per nesting level
  - Each bullet/number begins on its own line (see §1.6.2)
- **Spacing**
  - Collapse runs of ≥2 blank lines into **one**
  - Keep exactly **one** blank line:
    - Between YAML and body
    - Before any Markdown heading
    - Around **code fences**, **LaTeX environments** (`\begin{…} … \end{…}`), **LaTeX tables**, and **image embeds**
  - Trim trailing whitespace everywhere

### 1.2 YAML Frontmatter
- Keys lower-case: `title`, `aliases`, `key_concepts`, `tags`
- Ensure `title` exists and is **Title Case**
- **Enrichment rule**:
  - If generic, refine to **2–4** specific, content-driven entries
  - Example: “options” → “european-options”, “binomial-option-pricing-model”
- If metadata is already sufficient and specific, leave it unchanged

### 1.3 Links & Media
- Preserve:
  - Obsidian internal links: `[[Note Name]]`
  - Images: `![[file.png]]` or `![](file.png)`
  - External: `[text](url)`
- If an internal link appears as Markdown (`[text](Note Name.md)`), convert to wikilink: `[[Note Name|text]]`
- No nested wikilinks (disallow `[[... [[...]] ...]]`)

### 1.4 Math & LaTeX
- **Inline math**: `$...$`
- **Block math**: `$$ ... $$` on dedicated lines
- **Do not** wrap code-fenced LaTeX (tables/TikZ) in `$` or `$$`
- **Automatic math normalization** (exclude standalone lowercase `i`):
  - `xt+1` → `$x_{t+1}$`
  - `yt-1` → `$y_{t-1}$`
  - `Et[xt+1]` → `$E_t[x_{t+1}]$`
  - `Rt,t+1` → `$R_{t,t+1}$`
  - `xt_hat` → `$x_t^{\hat{}}$`
- Fix common issues: unmatched braces, missing escapes, malformed `aligned`, broken `\left`/`\right`

### 1.5 **Tables — Always LaTeX (never Markdown)**
- Convert any Markdown/HTML tables to **LaTeX tabular** inside a fenced block:
  - Fences:  ```latex … ```
  - Wrapper required:
All tables MUST take the format below. No {multicolumn} if you can avoid it. Try to avoid “\begin{tabular}{|c|c|c|c|c|}”, or anything like this if possible.
- Each data row ends with `\\ \hline`
- Keep compact; no extra blank lines inside the fence; no trailing spaces
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
Description & Price & Change & Open Interest & Volume \\ \hline
JunY1 & 2.615 & +.033 & 9,781 & 2,311 \\ \hline
JulY1 & 2.620 & +.036 & 353,254 & 22,906 \\ \hline
AugY1 & 2.627 & +.034 & 92,888 & 4,108 \\ \hline
SepY1 & 2.618 & +.031 & 177,123 & 2,905 \\ \hline
OctY1 & 2.651 & +.030 & 122,641 & 2,001 \\ \hline
NovY1 & 2.727 & +.027 & 81,686 & 1,057 \\ \hline
DecY1 & 2.896 & +.026 & 99,738 & 878 \\ \hline
\end{tabular}
\end{document}
```

- Column spec uses `l`/`c`/`r` and **vertical bars**; header row has `\hline` above and below
- Each data row ends with `\\ \hline`
- Keep compact; no extra blank lines inside the fence; no trailing spaces

**Table Templates**

**3-col (standard)**
```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Variable & Mean & Std. Dev. \\ \hline
Inflation & 2.3\% & 1.1\% \\ \hline
Real Yield & 1.2\% & 0.6\% \\ \hline
\end{tabular}
\end{document}
```
4-col (standard)
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Project & Cash Flow if D & Cash Flow if P (Debt = 600) & Expected Value \\ \hline
1 & 0 & 1500 - 600 = 900 & 450 \\ \hline
2 & 0 & 1551 - 600 = 951 & 475.5 \\ \hline
\end{tabular}
\end{document}
```
1.6 Text Repairs the Agent Must Perform

1.6.1 Mid-Sentence Line Break Join
	•	Detect a break where:
	•	Previous line does not end with . ! ? : ; ,
	•	Next line begins with lowercase and is not a list item
	•	Action:
	•	Remove the break(s) and join with a single space
	•	Move any intervening blanks/images/footnotes after the rejoined sentence

1.6.2 Missing Line Breaks in Lists
	•	Detect: multiple bullets/numbers on one line (e.g., - A - B, 1. One 2. Two)
	•	Action: insert a newline before each marker so each item starts a new line

1.6.3 Spelling/Grammar
	•	Fix typos/punctuation; preserve technical meaning

1.7 Images
	•	Use ![[file.png]] or ![](file.png), or ![500](file.png) for specifying the size of the image.
		•	Place images next to the referenced text; preserve filenames/paths

1.8 Ready-Made Templates

Research Note

# Paper Title

## Abstract Summary
- …

## Model
$$
Y_t = \alpha + \beta X_t + \epsilon_t
$$

## Data
- Source(s): …
- Frequency/Period: …

## Results
```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Variable & Coefficient \\ \hline
Inflation & 0.45 \\ \hline
Output Gap & -0.30 \\ \hline
\end{tabular}
\end{document}

Interpretation
	•	…

**Problem / Derivation**
```markdown
# Problem N — Title

## Question
- …

## Step-by-Step Solution
1. **Action:** …
2. **Math:**
   $$
   …
   $$
3. **Reasoning:** …

## Final Answer
$$ … $$


⸻

2) Agent System Prompt (Script-Agnostic, Chunked Parsing)

2.1 Role & Objective

You are ObsidianFormatterAgent, responsible for cleaning and formatting Markdown (.md) files in a specified Obsidian directory tree. Your job is to parse files in small chunks, detect and repair formatting issues, normalize LaTeX and tables, correct lists and headings, and refine YAML metadata strictly following the Style Guide above. Continue until the target directory’s Markdown files are fully processed.

2.2 Operating Constraints
	•	No assumptions about scripts or tools. Do not reference any particular executable, script, or library by name.
	•	Chunked processing. Load and process documents incrementally (e.g., file sections, headings, or fixed-size text windows). Avoid large in-memory loads; keep edits localized.
	•	Idempotence. If a file has already been processed to conform to the Style Guide, make no changes.
	•	In-place updates. Overwrite the original Markdown file with corrected content.
	•	Safety. If an ambiguity could cause corruption (e.g., uncertain math transformation), preserve the original and skip that fragment with a note in comments at the end of the file under <!-- FORMATTER-NOTES: ... -->.

2.3 Core Workflow (Per Run)
	1.	Target Selection
	•	Use the assigned root directory (e.g., /Users/rogerlin/Reserve/VoyageLemma/International Finance).
	•	Include only files with extension .md; ignore others.
	2.	Enumerate Markdown Files
	•	Recursively discover Markdown files.
	•	(Optional) Maintain a simple text log (parsing_log.md) at a known path; append relative paths when successfully processed to enable skipping next time. If this file is absent, proceed without it.
	3.	Process Each File in Small Chunks
	•	Chunking strategy (pick one, be consistent):
	•	By section: split on headings (^#{1,6}\s).
	•	By window: fixed character windows with overlap (e.g., 3–5k chars, 200–400 char overlap).
	•	For each chunk:
	•	Normalize whitespace & spacing rules.
	•	Fix headings: correct # depth and spacing.
	•	Mid-sentence joins and list splits (see §1.6).
	•	Math normalization (inline/block; variable/time-index transforms).
	•	Tables: convert Markdown/HTML to LaTeX tabular per §1.5 and embed inside ```latex fences.
	•	YAML: ensure lower-case keys; Title Case title; enrich aliases, key_concepts, tags only if they are obviously generic or incomplete (4–8 specific entries).
	•	Preserve internal/external links and image embeds; convert internal Markdown links to wikilinks while preserving display text.
	•	Correct spelling/grammar/punctuation.
	4.	File-Level Consolidation
	•	Reassemble cleaned chunks → complete document.
	•	Ensure global rules: single title #, one blank line after YAML, spacing around code/LaTeX/image blocks, no trailing whitespace.
	5.	Write Back
	•	Save the corrected Markdown over the original.
	•	If using a log file, append an ISO-8601 timestamp and relative path.
	6.	Continue
	•	Repeat until all Markdown files under the target directory are processed.

2.4 LaTeX/Table/TikZ Reference (copy-paste)
	•	Inline: $E_t[x_{t+1}]$, $x_{t+1}$, $R_{t,t+1}$, $x_t^{\hat{}}$
	•	Block:

$$
\begin{aligned}
a &= b + c \\
d &= e - f
\end{aligned}
$$

Or
```latex
\begin{document}
\begin{tabular}{|l|r|r|}
\hline
Portfolio & Return (\%) & Vol (\%) \\ \hline
A & 6.25 & 12.40 \\ \hline
B & 7.10 & 15.05 \\ \hline
C & 5.85 & 10.33 \\ \hline
\end{tabular}
\end{document}
```

	•	Tables: use the Table Templates from §1.5 verbatim (wrapper + fences); never Markdown tables.
	•	TikZ (kept code-fenced, never wrapped in $/$$):
```tikzdiagram
\usepackage{tikz}
\begin{document}
\begin{tikzpicture}
  \node {$S_{0}=1502.39$};
\end{tikzpicture}
\end{document}
```
2.6 Prohibitions
	•	Do not introduce placeholders like TODO or …
	•	Do not delete whole sections; only format/correct
	•	Do not alter or break links; preserve intent and targets

2.7 Completion

When all Markdown files in the target directory conform to the Style Guide:
	•	Stop.
⸻

3) Quick Table Formatting Instructions
	1.	Choose columns: {|l|c|r|}, etc., matching the number of columns.
	2.	Header row with \hline above and below.
	3.	Data rows: columns separated by &, each row ends \\ \hline.
	4.	Fence with latex and wrap in:
```latex
\begin{document}
\begin{tabular}{|...|}
...
\end{tabular}
\end{document}
```
	5.	No Markdown tables. Convert HTML/Markdown tables to this LaTeX form.

⸻
Fix errors like these:
Replace $\bullet$ with -

Remove empty lines separating bullet lists, ie if two lines begin with a hyphen but there is an empty line in between, then remove it. If there’s an empty line above a line beginning with a hyphen, remove it.

Fix unwanted spaces between letters in equations, ie C o v should be Cov and V a r should be Var in $$
\begin{array}{l} \sigma_ {2} ^ {2} = \operatorname {V a r} \left(r  *{t + 1} + r*  {t + 2}\right), \ = \operatorname {V a r} \left(r  *{t + 1}\right) + 2 \operatorname {C o v} \left(r*  {t + 1}, r  *{t + 2}\right) + \operatorname {V a r} \left(r*  {t + 2}\right) \ = \sigma_ {1} ^ {2} + 2 \rho \sigma_ {1} ^ {2} + \sigma_ {1} ^ {2} \ = 2 (1 + \rho) \sigma_ {1} ^ {2} \ \end{array}
$$

Or

Thus, the contract design allows participants to trade directly on the LIBOR rate. The contract multiplier is (1 million, but the LIBOR rate on which the contract is written is a 3-month (quarterly) rate; for each basis point that the (annualized) LIBOR increases, the quarterly interest rate increases by only (\frac{1}{4}) of a basis point, and the profit to the buyer decreases by

$$
. 0 0 0 1 \times \frac {1}{4} \times $ 1, 0 0 0, 0 0 0 = $ 2 5
$$

Remove unwanted paragraph breaks and line breaks separating/ splitting sentences partway through, with the first half not ending with a period, and the second half beginning with a lowercase letter. Remove the intervening line break/ paragraph break and any empty lines in between. Ie:

Both the SOFIR and Eurodollar contracts provide profits (or losses) proportional to the difference between the relevant short-term interest rate at contract maturity and the rate agreed to in the contract. However, the listing conventions for these contracts are a bit peculiar. Consider, for example, the first contract listed in Figure 23.7, which

matures in October 2021. The settlement price is presented as  $F_{0} = 99.87$ . However, this value is not really a price. In effect, participants in the contract negotiate over the contract interest rate, and the so-called futures price is actually set equal to  $100 -$  Contract rate. Because the futures price is 99.87, the contract rate is  $100 - 99.87$ , or  $0.13%$ . Similarly, the final futures price on the contract maturity date will be marked to  $F_{T} = 100 -$  LIBOR. Thus, profits to the buyer of the contract will be proportional to

$$
F  *{T} - F*  {0} = (1 0 0 - \operatorname {L I B O R}  *{T}) - (1 0 0 - \text {C o n t r a c t r a t e}) = \text {C o n t r a c t r a t e} - \operatorname {L I B O R}*  {T}
$$
- Fix broken LaTeX equations (both inline $)
1. Add dollar signs around variables that are missing them
2. Fix formatting errors, misspellings, and style mistakes
3. Standardize headers with proper title case
4. Fix mid-sentence line breaks
5. Standardize list formatting with dashes
6. Fix malformed tables


Dealing with issues like these:
---
cssclasses: academia
title: Rho - Interest Rate Sensitivity
tags:
  - options_greeks
  - interest_rate_sensitivity
  - derivatives_pricing
  - risk_management
  - options_valuation
aliases:
  - Interest Rate Sensitivity
<<<<<<< HEAD
  - � - Greek Letter
=======
  - � - Greek Letter
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b
key_concepts:
  - Rho option greek measurement
  - Interest rate sensitivity of options
  - Black-Scholes derivative with respect to interest rate
  - Call option value increase with interest rates
  - Put option value decrease with interest rates
  - Forward price relationship with interest rates
  - Quantifying option interest rate risk
  - Interest rate effects on option premium
---

# Rho - Interest Rate Sensitivity

## Definition and Overview

<<<<<<< HEAD
Rho (�) is one of the "Greeks" used in options pricing and risk management. It measures the sensitivity of an option's price to changes in the risk-free interest rate. Specifically, rho represents the expected change in an option's price for a 1 percentage point (100 basis points) change in interest rates.
=======
Rho (�) is one of the "Greeks" used in options pricing and risk management. It measures the sensitivity of an option's price to changes in the risk-free interest rate. Specifically, rho represents the expected change in an option's price for a 1 percentage point (100 basis points) change in interest rates.
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b

Here’s a set of plain-English instructions you can give an AI whose job is to clean and fix situations like this in Obsidian Markdown files.

⸻

1. Detect and clean Git merge conflict markers
	1.	Look for standard Git merge conflict markers:
	•	<<<<<<< HEAD
	•	=======
	•	>>>>>>> <commit hash or branch>
	2.	Assume that any text between these markers is part of a conflicted region.
	3.	For each conflicted region:
	•	Compare the “HEAD” version (between <<<<<<< HEAD and =======) and the “other” version (between ======= and >>>>>>> ...).
	•	If the two sides are identical or only differ by trivial whitespace:
	•	Keep a single clean copy of the content.
	•	Remove all conflict markers.
	•	If they differ slightly but are clearly meant to be the same sentence/paragraph (e.g., one has a small typo or encoding issue):
	•	Prefer the version that:
	•	Has valid characters (no � replacement characters).
	•	Is grammatically correct.
	•	Matches the context of the title, tags, and surrounding content.
	•	Remove the other version and all conflict markers.
	•	If they genuinely differ in substance:
	•	Try to merge the differences into a single coherent version if possible.
	•	If they can’t be merged safely, prefer the version that is:
	•	More complete and precise.
	•	More consistent with the rest of the file and existing metadata.
	•	Remove the unused version and all conflict markers.
	4.	After resolving all conflict regions:
	•	Ensure there are no remaining <<<<<<<, =======, or >>>>>>> lines anywhere in the file.

⸻

2. Repair YAML frontmatter safely
	1.	Treat everything from the first --- at the top of the file down to the next --- as YAML frontmatter.
	2.	Within this frontmatter:
	•	Resolve merge conflicts using the rules above, but be extra careful to preserve valid YAML syntax.
	•	Make sure keys like cssclasses, title, tags, aliases, and key_concepts appear only once.
	3.	For list fields such as tags, aliases, and key_concepts:
	•	Combine items from both conflict sides into a single list.
	•	Remove exact duplicates.
	•	Normalize obvious near-duplicates:
	•	If the only difference is a mojibake character or encoding issue, keep the corrected version and drop the broken one.
	•	Keep list items in a clean, consistent format:
	•	Each item on its own line.
	•	Prefixed with - .
	•	Strings written as plain text unless YAML requires quoting.
	4.	Ensure that after you are done:
	•	YAML is syntactically valid.
	•	There are no stray conflict markers inside the frontmatter.
	•	Required keys for this vault convention (e.g., title, tags, key_concepts) are present and not duplicated.

⸻

3. Fix mojibake and corrupted characters (like �)
	1.	Identify occurrences of the Unicode replacement character � or other obviously broken glyphs.
	2.	Use nearby context (title, heading, other aliases, and the main text) to infer what the character should be.
	•	Example: If the title is “Rho - Interest Rate Sensitivity” and you see an alias "� - Greek Letter", infer that � should be the Greek letter rho (ρ) or the word “Rho”.
	3.	Replace � with the correct character or spelling:
	•	Prefer the actual symbol (ρ) if the rest of the note uses Greek symbols.
	•	Otherwise, use a clear ASCII equivalent (e.g., Rho) if that matches the file’s style better.
	4.	Do this consistently for:
	•	Frontmatter fields (title, aliases, key_concepts).
	•	Headings and body text.
	5.	After replacement, re-check that:
	•	YAML remains valid (no unescaped characters that break parsing).
	•	There are no remaining � characters.

⸻

4. Deduplicate and normalize metadata
	1.	For aliases:
	•	Merge both sides from any conflict.
	•	Remove duplicates and near-duplicates (e.g., "Rho - Interest Rate Sensitivity" appearing twice, or the same phrase with and without the corrupted character).
	•	Ensure aliases remain semantically distinct and useful for search.
	2.	For tags:
	•	Keep tags that are consistent with the note’s subject.
	•	If both conflict sides add compatible tags, keep the union.
	•	Remove tags that are exact duplicates.
	3.	For key_concepts:
	•	Combine lists from both sides.
	•	Remove exact duplicates.
	•	If there are near-duplicates (very similar wording), prefer the clearer, more general phrasing that will be reusable in other notes.

⸻

5. Clean up the body content
	1.	Resolve merge conflicts in the main body exactly as in step 1.
	•	If both sides have the same paragraph, keep a single copy.
	•	If one side adds a small clarification that does not contradict the other, merge them into a single, clean paragraph.
	2.	Ensure that headings and structure are not duplicated:
	•	You should not end up with two copies of the same # or ## heading due to a conflict resolution.
	3.	After cleaning:
	•	The body should read smoothly, with no repeated paragraphs that differ only by encoding or whitespace.
	•	There should be no leftover conflict markers or corrupted characters.

⸻

6. Apply these rules to the specific example

For the specific “Rho - Interest Rate Sensitivity” note, the AI should:
	1.	Remove the merge conflict markers from aliases and keep a single, corrected entry:
	•	Replace "� - Greek Letter" with "ρ - Greek Letter" or "Rho - Greek Letter" based on the preferred style.
	•	Ensure aliases is a clean list with no duplicate entries.
	2.	In the body under “Definition and Overview”:
	•	Remove the conflict markers around the duplicate definition paragraph.
	•	Keep one clean copy of the definition.
	3.	Verify there are no remaining <<<<<<<, =======, or >>>>>>> lines.
	4.	Confirm that the YAML frontmatter is valid and the rest of the document renders correctly in Obsidian.

⸻

You can hand this text directly to an AI agent as its “cleanup policy” for resolving merge conflicts and encoding issues in Markdown/Obsidian notes.

Here is a set of concrete, natural-language instructions you can give an AI whose job is to “repair” passages like the one you pasted (garbled binomial-option text with broken equations, footnote markers, and tables). The goal is: recover the intended standard binomial model exposition and option pricing formulas, without inventing new content.

⸻

1. Overall objective
	1.	Preserve the original meaning and mathematical structure of the text.
	2.	Fix:
	•	Garbled words and sentences.
	•	Broken or malformed LaTeX.
	•	Corrupted symbols (e.g., [^2], 7 L, 71, JL, etc.).
	•	Misrendered tables (e.g., Pascal’s triangle, end-value tables).
	3.	Use standard binomial option pricing theory and probability theory as the reference when reconstructing formulas and terminology.

If you are not highly confident in a particular fix, do not silently guess. Instead, keep the original fragment and append a clear “CHECK: …” note.

⸻

2. Structure the text before editing
	1.	First, detect and classify segments:
	•	Paragraphs of plain text.
	•	Inline math ($...$) and display math ($$...$$).
	•	Lists.
	•	Tables (HTML <table> or malformed tables).
	•	Headings (#, ##, etc.).
	2.	Do not change the logical order of sections (e.g. “Risk-neutral valuation”, “American options”, “Pascal’s triangle”, “Binomial coefficients”, “Binomial variable”, “Distribution of end values”, “Pricing the call option”). Only repair content inside them.
	3.	Keep the original section and subsection titles unless they are obviously corrupted; then fix them minimally (e.g. “Binomial Mode” → “Binomial Model”).

⸻

3. Fix plain English text and obvious typos
	1.	Correct obvious word corruptions:
	•	“probabiliof” → “probability of”.
	•	“7 L”/“7l”/“7 T” when used in “7 L periods”, “7l-period” etc. → map to “n” or “n-period” when context clearly refers to an n-period binomial model.
	•	“71” / “7 T” when used as parameter names in binomial probability definitions → map to the symbol already used in context (usually \pi or p).
	2.	Preserve domain terms:
	•	Keep “risk-neutral probability”, “state prices”, “American option”, “European option”, “Pascal’s triangle”, “binomial coefficients”, etc.
	3.	When you see duplicated phrases with small noise (e.g. repeated sentence with minor corruption), keep a single, clean version and delete the noisy duplicate.

⸻

4. Normalize and repair math expressions

4.1 General LaTeX cleanup rules
	1.	Ensure each formula is valid LaTeX:
	•	Parentheses and braces are balanced.
	•	Fractions use \frac{...}{...}.
	•	Powers use ^ with braces if multi-character: x^2, x^{n-k}.
	2.	Remove spurious closing symbols and stray characters at the end of equations:
	•	Delete trailing [^2], stray ) or ] when they clearly do not match an opening symbol.
	•	Example: =q_{du}=\frac{8}{25})[^2]}=43.$$ should become a clean equation like = q_{du} = \frac{8}{25}, \quad C_0 = 43. (if that is consistent with context).
	3.	Replace inline misuses of [^2], [^3], etc.:
	•	If \pi[^2] is clearly intended as $\pi^2$, turn it into \pi^2.
	•	If [2] is clearly not a footnote but an exponent, convert it into a proper power.
	4.	Normalize notation:
	•	Use one symbol consistently for the “up-move probability”: either p or \pi. Choose the one the text introduces first (e.g. \pi).
	•	Use n for the number of periods and k for the number of up states, as standard.
	•	Use R = 1 + r, U = 1 + u, D = 1 + d consistently.

4.2 Risk-neutral valuation and state prices (local to your example)

When repairing the early paragraph:

“Thus the value of the call option can also be evaluated directly as$(1+r)^{2}=\frac{25}{16}$)+\frac{4}{25}(31.25)}=q_{du}=\frac{8}{25})[^2]}=43.$$ .”

do the following:
	1.	Recognize the intended structure:
	•	Risk-neutral probabilities: $\mathbb{Q}(\text{UU})$, $\mathbb{Q}(\text{UD})$, $\mathbb{Q}(\text{DD})$.
	•	Discount factor $(1 + r)^2 = \frac{25}{16}$.
	•	State prices: $q_{uu}$, $q_{ud} = q_{du}$, $q_{dd}$.
	•	Option value: discounted expected payoff.
	2.	Reconstruct a standard, coherent statement:
	•	Write the call price as:
C_0 = \frac{1}{(1 + r)^2}\left[ \tfrac{1}{4} \cdot 112.5 + \tfrac{1}{2} \cdot 31.25 + \tfrac{1}{4} \cdot 0 \right] = 43.
or an equivalent standard formula consistent with the numbers given.
	•	Define state prices cleanly:
q_{uu} = \frac{1/4}{(1 + r)^2} = \frac{4}{25},\quad
q_{ud} = q_{du} = \frac{1/2}{(1 + r)^2} = \frac{8}{25},\quad
q_{dd} = \frac{1/4}{(1 + r)^2} = \frac{4}{25}.
	•	Then show:
C_0 = q_{uu} \cdot 206.25 + q_{ud} \cdot 31.25 = 43.
	3.	Replace the corrupted text where necessary with this logically consistent structure, but only to the extent needed to make the equations correct and standard. Do not change numerical values unless they are obviously impossible or inconsistent within the same paragraph.

4.3 Binomial coefficients and Pascal’s triangle
	1.	The standard binomial coefficient definition is:
\binom{n}{k} = \frac{n!}{k! (n-k)!}.
Ensure the text matches this exactly; fix any OCR noise.
	2.	For the example n = 4, k = 2, ensure:
\binom{4}{2} = \frac{4!}{2! 2!} = 6.
Correct any arithmetic or formatting errors in this illustrative computation.
	3.	For Pascal’s triangle for $n = 5$, reconstruct the correct rows instead of retaining a corrupted table:
	•	Row 0: 1
	•	Row 1: 1 1
	•	Row 2: 1 2 1
	•	Row 3: 1 3 3 1
	•	Row 4: 1 4 6 4 1
	•	Row 5: 1 5 10 10 5 1

If the given HTML table is badly corrupted, replace it entirely with a clean representation that matches the description in the surrounding text.

4.4 Binomial random variable and tail probability
	1.	Standard binomial pmf:
\pi(k) = \binom{n}{k} \pi^k (1-\pi)^{n-k}.
Make sure this appears exactly with consistent symbols.
	2.	Standard binomial tail:
B_\pi(x) = \sum_{k = x}^{n} \binom{n}{k} \pi^k (1-\pi)^{n-k}.
Replace garbled versions (with 71, 7 T, JL, etc.) by this clean formula, using the same symbols defined earlier in the text.

4.5 Call option pricing in n-period binomial model

When you see the corrupted final call-price formula, reconstruct the standard form:
	1.	Recognize intent:
	•	Risk-neutral probability $\rho = \frac{R - D}{U - D}$.
	•	Call price as discounted expected payoff over $n$ periods.
	2.	Clean formula:
c_0 = \frac{1}{R^n} \sum_{k=0}^{n}
\binom{n}{k} \rho^k (1-\rho)^{n-k}
\max\left(S_0 U^k D^{n-k} - X, 0\right).
	3.	If the text introduces a threshold $x$ (minimum number of up moves for the option to finish in the money), rewrite as:
c_0 = \frac{1}{R^n} \sum_{k=x}^{n}
\binom{n}{k} \rho^k (1-\rho)^{n-k}
\left(S_0 U^k D^{n-k} - X\right).
	4.	Then, when the text wants to express it using binomial tail probabilities:
	•	Define $s = \rho U / R$ (if that is what the author intends and is consistent with earlier text).
	•	Use:
c_0 = S_0 B_s(x) - \frac{X}{R^n} B_\rho(x),
ensuring $B_s$ and $B_\rho$ are correctly defined as binomial tails.

If the original symbols are too corrupted to infer confidently (e.g., “$7 t$,  and the risk-free interest rate $ 7$”), keep the cleaned structure but flag ambiguous symbols with a “CHECK” comment.

⸻

5. Repair tables and convert them into your target format
	1.	If you encounter HTML tables:
	•	Infer the intended logical table (e.g., columns: “Period”, “Coefficients”; or “End value”, “Returns”, “Probability”).
	•	Ignore obviously nonsensical fragments like $r\boldsymbol{l}$, 7 {:}(1 一 T, etc., if you can reconstruct the correct quantity from context.
	•	Rebuild the table with clean, standard entries for the binomial model:
	•	End values: $S_0 U^n D^0$, $S_0 U^{n-1} D^1$, …, $S_0 U^0 D^n$.
	•	Returns: “$n$ ups, 0 downs”, “$n-1$ ups, 1 down”, …, “0 ups, $n$ downs”.
	•	Probabilities: $\pi^n (1-\pi)^0$, $\binom{n}{1} \pi^{n-1} (1-\pi)^1$, …, $\pi^0 (1-\pi)^n$.
	2.	Convert the cleaned table to your preferred representation (e.g., LaTeX tabular) following your vault’s conventions, rather than preserving a broken HTML artifact.

⸻

6. Handling ambiguous OCR artifacts (7 L, JL, weird fragments)
	1.	Treat combinations like 7 L, JL, TL, 71 as likely OCR errors, not literal variables.
	2.	Map them to the most plausible existing symbol based on immediate context:
	•	If the sentence is talking about “the $n$-period binomial model” and you see “7 L-period”, convert “7 L” → n.
	•	If the sentence is defining a binomial variable with parameter $\pi$ and you see “parameter 71”, convert “71” → \pi.
	3.	If you cannot identify a clear mapping from context and from standard formulas, do not guess:
	•	Keep the original token.
	•	Add a comment: CHECK: unclear OCR here, not repaired.

⸻

7. Check internal consistency at the end

After all fixes:
	1.	Verify that:
	•	All formulas compile as LaTeX.
	•	Symbols are used consistently (n, k, \pi/p, U, D, R, \rho).
	•	The narrative flows logically from one section to the next.
	2.	For key numerical formulas, do a quick sanity check:
	•	If you keep \frac{4}{25}(206.25)+\frac{8}{25}(31.25)=43, quickly verify numerically that the equality holds.
	3.	Ensure there are no leftover garbled fragments such as [^2], 7 L, JL, 一 T, stray commas, or unmatched parentheses.

⸻

You can give these instructions directly to a “math-and-finance text repair” agent. Its mandate is: use standard binomial option pricing theory and binomial probability formulae as a reference, minimally adjust the text until it is mathematically correct, readable, and internally consistent, and flag any remaining genuinely ambiguous pieces.

Handling Broken Image Links and Figure References

1. Goal

When you see broken, partial, or nonsensical image markup (e.g. !500 or - ! | 500) and nearby figure captions, your job is to:
	1.	Recover a valid Obsidian-friendly image reference if possible. All attachments are in the Attachments folder
	2.	Preserve the semantic information:
	•	the fact that there was a figure,
	•	its logical position in the text,
	•	and the figure description (“FOUR-PERIOD BINOMIAL EXAMPLE”).
	3.	Avoid fabricating actual filenames if you cannot infer them from the vault context.
	4. If you are unable to recover the image that was there, remove the !500 and nearby figure captions.

⸻

2. Recognize broken / suspect image patterns

Treat the following as “broken or incomplete image references” that require repair:
	1.	Lone exclamation lines or tokens such as:
	•	!500
	•	! 500
	•	![]
	•	![[ ]]
	2.	Partial Obsidian embed syntax where size is present but the filename is missing:
	•	![[|500]]
	•	![[ | 500]]
	3.	Corrupted Markdown image syntax:
	•	![500]
	•	![Figure 1]()
(empty URL)
	4.	HTML <img> tags with missing or empty src:
	•	<img src="">
	•	<img width="500"> with no src.

Also treat as related if immediately nearby (same paragraph or next line) you see a caption line such as:
	•	Figure 1: FOUR-PERIOD BINOMIAL EXAMPLE
	•	Figure 2 – Binomial tree for n=4
	•	Table 1: Pascal’s Triangle


⸻
Here’s a policy you can hand to a “vault cleaner” AI for dealing with broken internal links like the ones you showed, with the special rule that it must not touch the main title:

⸻

1. Preserve the canonical note title
	1.	Treat the first level-1 heading (# ...) in the file as the canonical note title.
	•	Example here:
# Teaching Note 7 A Rundown On Continuous Time Models
	2.	Never delete or modify this first # heading as part of internal-link cleanup, even if it resembles link text or appears similar to other lines.

If the same title appears later as a plain line (without #), you may remove that later duplicate (see section 4).

⸻

2. Understand valid vs broken Obsidian links

In Obsidian, a valid internal link has one of these forms:
	•	[[Page Name]]
	•	[[Page Name|Alias Text]]

Anything involving [[ or ]] that does not match one of those patterns is considered broken and a cleanup candidate. Examples:
	•	Overview of the Vasicek Short Rate Model | Vasicek Model]] (missing [[)
	•	Fixed Income Lecture Notes]] (missing [[)
	•	[[Term Structure (missing ]])
	•	[[Risk Management And Factors] (missing one closing ])
	•	[[Risk Neutral Pricing followed by a separate ]] on the next line

⸻

3. General rule: remove broken link markup, keep human-readable text when it’s part of prose

When you see broken link syntax:
	1.	If the broken link appears inside a sentence or paragraph that otherwise has useful text:
	•	Remove the link markup and keep the human-readable text.
	•	Example:
	•	Before: See Overview of the Vasicek Short Rate Model | Vasicek Model]] for details.
	•	After (choose a display string, typically the alias part after | if it exists):
See Vasicek Model for details.
	•	Specific transforms:
	•	Remove all [[ and ]].
	•	If there is a | inside what was meant to be a link, take only the part after | as the display text, because that’s the alias.
	•	"Overview of the Vasicek Short Rate Model | Vasicek Model]]"
→ keep "Vasicek Model" in prose.
	•	"[[Fixed Income Lecture Notes|Fixed Income]]" (broken)
→ keep "Fixed Income".
	2.	Make sure the resulting sentence is grammatically correct and free of leftover [ or ].

⸻

4. Remove standalone broken links that are just navigation stubs

When a broken link line is clearly just a navigation entry and not part of a real sentence, you can safely remove the whole line.

Examples:
	•	Line is only the broken link text (plus whitespace), like:
	•	Fixed Income Lecture Notes]]
	•	Introduction to Fixed Income Asset Pricing]]
	•	Risk Management And Factors]]
	•	Term Structure]]
	•	Derivatives]]
	•	Risk Neutral Pricing]]
	•	Overview of the Vasicek Short Rate Model | Vasicek Model]]
	•	There is no surrounding punctuation or additional prose, and the line is clearly serving as an index or table-of-contents entry.

For these:
	1.	Strip whitespace.
	2.	If the remaining content contains ]] or a dangling [[ and the entire line is just that broken link (no other prose):
	•	Delete the entire line.
	3.	Exception: if the cleaned line text (after removing [[, ]], and any obvious link markup) is exactly equal to the canonical note title from the first # heading, then:
	•	Keep the canonical # heading.
	•	Remove the later duplicate plain line.

Applied to your example:

# Teaching Note 7 A Rundown On Continuous Time Models

Fixed Income Lecture Notes]]

 Introduction to Fixed Income Asset Pricing]]

 Risk Management And Factors]]

 Term Structure]]

 Derivatives]]

 Risk Neutral Pricing]]

Teaching Note 6 Mortgage Backed Securities

Teaching Note 7 A Rundown On Continuous Time Models

The AI should:
	•	Keep:
# Teaching Note 7 A Rundown On Continuous Time Models
	•	Remove these lines entirely (standalone broken navigation links):
Fixed Income Lecture Notes]]
Introduction to Fixed Income Asset Pricing]]
Risk Management And Factors]]
Term Structure]]
Derivatives]]
Risk Neutral Pricing]]
	•	Keep (for now) plain, non-linked references to other notes, such as:
Teaching Note 6 Mortgage Backed Securities
	•	Remove the duplicate plain title line:
Teaching Note 7 A Rundown On Continuous Time Models
because it repeats the canonical # heading.

⸻

5. Handling partially broken links with [[ but no ]]

If you see something like:
	•	[[Term Structure
	•	[[Risk Neutral Pricing
	•	Some text [[Fixed Income Lecture Notes|Fixed Income

then:
	1.	If it’s a standalone line and clearly a navigation entry:
	•	Treat it like the previous section: delete the whole line.
	2.	If it appears within a real sentence, convert it to plain text:
	•	Remove the [[.
	•	If there is a |, keep only the alias part after the |.
	•	Example:
	•	We study [[Term Structure in detail.
→ We study Term Structure in detail.
	•	Refer to [[Fixed Income Lecture Notes|Fixed Income] for background.
→ Refer to Fixed Income for background.

Do not try to repair the link into a functioning [[...]] unless you are explicitly in “link-rebuilding mode”. In this policy, you are only removing broken internal links, not reconstructing them.

⸻

6. Do not touch valid internal links (unless explicitly instructed)

If you encounter a well-formed link:
	•	[[Vasicek Model]]
	•	[[Teaching Note 7 A Rundown On Continuous Time Models]]
	•	[[Fixed Income Lecture Notes|Fixed Income]]

you should:
	•	Leave it as-is.
	•	This cleanup mode is only for broken links; it should not strip or modify working ones unless you are explicitly told to de-link everything.

⸻

7. Summary of actions for broken internal links

For each line in the note:
	1.	Identify the canonical # heading at the top; never delete or modify it.
	2.	If the line is a standalone broken link (navigation stub) that is not the canonical title:
	•	Delete the line.
	3.	If the line is a sentence that includes broken link markup:
	•	Remove the link syntax [[, ]], and any |... prefix as needed.
	•	Keep a clean, human-readable text (usually the alias part after |).
	4.	If a later line’s cleaned text is exactly the canonical title:
	•	Remove the later duplicate.
	5.	Leave valid, well-formed [[...]] links untouched.

Applied consistently, this will strip stray, broken Obsidian links like your examples while preserving (a) the main title and (b) any meaningful prose that happens to surround a broken link.


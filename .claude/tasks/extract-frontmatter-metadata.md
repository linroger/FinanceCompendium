# Task: Extract and Add YAML Frontmatter Metadata

## Objective

Recursively process all markdown files in the FinanceCompendium vault, carefully reading through each document to extract main ideas, key concepts, and generate appropriate tags, then add or update YAML frontmatter metadata.

---

## Scope

- **Directory**: `/Users/rogerlin/Reserve/FinanceCompendium/`
- **File Pattern**: `**/*.md` (all markdown files recursively)
- **Exclusions**: Skip files in `.claude/`, `.obsidian/`, `.beads/`, `.git/`, and `Attachments/` directories

---

## Workflow

### Phase 1: Discovery

1. Use `Glob` to find all markdown files recursively
2. Filter out excluded directories
3. Create a processing queue ordered by directory structure

### Phase 2: Processing Each File

For each markdown file:

#### Step 1: Read and Analyze

1. **Read the first 150-200 lines** of the file to understand:
   - Document type (lecture notes, textbook chapter, research paper, case study, etc.)
   - Subject domain (fixed income, derivatives, corporate finance, economics, etc.)
   - Level of complexity (introductory, intermediate, advanced)
   - Key topics covered

2. **Skim the full document** (if large) by reading:
   - All headings (##, ###, ####)
   - First paragraph of each major section
   - Any existing tags or metadata

#### Step 2: Extract Metadata

From your analysis, extract:

**1. Main Ideas (2-5 bullet points)**
- The core thesis or purpose of the document
- What problem it addresses or what it teaches
- Key conclusions or takeaways

**2. Key Concepts (5-15 terms)**
- Technical terms, theories, models, or frameworks discussed
- Named concepts (e.g., "Black-Scholes Model", "Modigliani-Miller Theorem")
- Mathematical concepts if applicable

**3. Tags (3-8 tags)**
Select from the taxonomy below and add specific tags as needed.

---

## Tag Taxonomy

### Domain Tags (Primary - use 1-2)
```
#finance/fixed-income
#finance/derivatives
#finance/corporate-finance
#finance/asset-pricing
#finance/portfolio-management
#finance/credit
#finance/equity
#finance/risk-management
#economics/macroeconomics
#economics/international
#economics/monetary-policy
#economics/cycles-crises
#mathematics/stochastic-calculus
#mathematics/probability
#mathematics/statistics
#mathematics/optimization
#quantitative/monte-carlo
#quantitative/numerical-methods
#quantitative/machine-learning
```

### Content Type Tags (use 1)
```
#type/lecture-notes
#type/textbook-chapter
#type/case-study
#type/research-paper
#type/reference
#type/tutorial
#type/problem-set
#type/summary
```

### Topic Tags (use 2-5 specific to content)
```
#topic/bond-pricing
#topic/yield-curves
#topic/duration-convexity
#topic/interest-rate-models
#topic/options-pricing
#topic/futures-forwards
#topic/swaps
#topic/credit-default-swaps
#topic/valuation
#topic/dcf
#topic/capm
#topic/factor-models
#topic/arbitrage
#topic/no-arbitrage
#topic/martingales
#topic/brownian-motion
#topic/ito-calculus
#topic/black-scholes
#topic/risk-neutral-pricing
#topic/hedging
#topic/var
#topic/debt-cycles
#topic/monetary-systems
#topic/central-banking
#topic/inflation
#topic/exchange-rates
#topic/capital-structure
#topic/dividend-policy
#topic/mergers-acquisitions
#topic/corporate-governance
#topic/financial-statements
#topic/ratio-analysis
```

### Level Tags (use 1)
```
#level/introductory
#level/intermediate
#level/advanced
#level/graduate
```

---

## YAML Frontmatter Format

### Standard Template
```yaml
---
title: "Document Title - Clear and Descriptive"
aliases:
  - Alternative Name 1
  - Alternative Name 2
tags:
  - finance/fixed-income
  - type/lecture-notes
  - topic/bond-pricing
  - level/intermediate
key_concepts:
  - Duration
  - Convexity
  - Yield to Maturity
  - Term Structure
  - Zero-Coupon Bonds
main_ideas:
  - >-
    First main idea written as a complete sentence
    explaining the core concept.
  - >-
    Second main idea describing another key
    takeaway from the document.
  - Third main idea in brief form.
parent_directory: "IV. Fixed Income/Asset Pricing"
cssclasses: academia
---
```

---

## Processing Rules

### Rule 1: Preserve Existing Data
- If frontmatter exists, **merge** new data with existing
- Never delete existing `aliases` or other custom fields
- Update empty fields (`tags:`, `key_concepts:`) but don't overwrite populated ones unless clearly incorrect

### Rule 2: Title Generation
- Use the document's H1 heading if available
- If no H1, derive from filename (convert `kebab-case` or `snake_case` to Title Case)
- Prefix chapter numbers if applicable: "Chapter 05 - Mean-Variance Approach"

### Rule 3: Parent Directory
- Set `parent_directory` to the relative path from vault root
- Example: `II. Economics/Cycles and Crises/Bridgewater Associates`

### Rule 4: Tag Selection
- Always include at least one domain tag
- Always include one content type tag
- Add topic tags that reflect specific content
- Add level tag based on mathematical complexity and assumed prerequisites

### Rule 5: Key Concepts
- List proper nouns and named theories capitalized
- Use standard finance terminology
- Include mathematical concepts if relevant (e.g., "Itô's Lemma", "Risk-Neutral Measure")

### Rule 6: Main Ideas
- Write as complete sentences
- Focus on what makes this document valuable
- Capture the "so what" - why someone would read this

---

## Example Processing

### Before (No Frontmatter)
```markdown
# Chapter 1 Company Business Model Analysis

Abstract This first step of the company analysis focuses on the business model...
```

### After (With Frontmatter)
```markdown
---
title: "Chapter 01 - Company Business Model Analysis"
aliases:
  - Company Business Model Analysis
  - CSF Analysis
tags:
  - finance/corporate-finance
  - type/textbook-chapter
  - topic/valuation
  - topic/corporate-governance
  - level/intermediate
key_concepts:
  - Company Strategic Formula (CSF)
  - Internal Strategic Front
  - External Strategic Front
  - Corporate Governance
  - Organizational Architecture
  - Strategic Resources
main_ideas:
  - >-
    Company analysis requires both qualitative business model
    analysis and quantitative financial dynamics analysis.
  - >-
    The Company Strategic Formula (CSF) defines how a company
    organizes internally and manages external relationships.
  - >-
    CSF must be simultaneously stable and dynamic to maintain
    competitive advantage over time.
parent_directory: "VII. Corporate Finance/Valuation/Analytical Corporate Valuation/Part I"
cssclasses: academia
---

# Chapter 1 Company Business Model Analysis

Abstract This first step of the company analysis focuses on the business model...
```

---

## Validation Checklist

Before saving each file, verify:

- [ ] YAML syntax is valid (proper indentation, no tabs)
- [ ] `title` field is present and descriptive
- [ ] At least 3 tags are present
- [ ] At least 3 key_concepts are listed
- [ ] At least 2 main_ideas are written
- [ ] `parent_directory` matches actual file location
- [ ] `cssclasses: academia` is set
- [ ] No trailing spaces in YAML values
- [ ] Multi-line strings use `>-` for proper formatting

---

## Progress Tracking

Use the bd (beads) issue tracker or TodoWrite to track progress:

1. Create an issue for each major directory section
2. Update status as files are processed
3. Log any problematic files that need manual review

### Batch Processing Strategy

Process files in batches by directory:
1. `I. Foundations/` - Mathematics, Statistics, ML foundations
2. `II. Economics/` - Macro, cycles, international
3. `III. Markets and Institutions/` - Credit markets, market structure
4. `IV. Fixed Income/` - Bonds, rates, pricing
5. `V. Derivatives and Structured Products/` - Options, futures, structured
6. `VI. Asset Management/` - Portfolio theory, investing
7. `VII. Corporate Finance/` - Valuation, strategy, statements

---

## Error Handling

If a file cannot be processed:
1. Log the file path and error
2. Skip to next file
3. Create a `needs-review.md` file listing problematic files
4. Common issues:
   - Binary files mistakenly with .md extension
   - Extremely large files (>50KB) - process in chunks
   - Malformed existing YAML - fix manually

---

## Final Notes

- **Be conservative**: When uncertain about a tag or concept, omit rather than guess
- **Be consistent**: Use the same terminology across similar documents
- **Be thorough**: Every document deserves careful attention
- **Be efficient**: Don't over-process - capture the essence, not every detail

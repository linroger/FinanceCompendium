# YAML Frontmatter Template

## Standard Template

```yaml
---
title: [Descriptive Title Here]
tags:
  - [domain_tag]
  - [concept_tag_1]
  - [concept_tag_2]
  - [concept_tag_3]
parent_directory:
  - [Parent Folder]
key_concepts:
  - [Key Concept A]
  - [Key Concept B]
  - [Key Concept C]
cssclasses: academia
---
```

## Field Descriptions

### title
- **Required:** Yes
- **Format:** Title Case
- **Rules:**
  - Must be descriptive, not just "Chapter X" or "Lecture Y"
  - Include topic/subject matter
  - For numbered documents: "Chapter 03 - Bond Valuation Methods"

### tags
- **Required:** Yes
- **Format:** snake_case, lowercase
- **Count:** 3-6 tags
- **Rules:**
  - Derived from content, not document structure
  - General enough to apply to multiple documents
  - Specific enough to be meaningful
  - No instance-specific tags

### parent_directory
- **Required:** Yes
- **Format:** Name of folder containing document
- **Rules:**
  - Identifies the immediate folder where the document is stored



### key_concepts
- **Required:** Recommended
- **Format:** Descriptive phrases
- **Count:** 2-5 concepts
- **Rules:**
  - More descriptive than tags
  - Can include specific applications
  - Helps with understanding document scope

### cssclasses
- **Required:** Yes
- **Value:** `academia` (always)

## Examples

### Lecture Notes

```yaml
---
title: "Lecture 05 - Stochastic Processes and Ito's Lemma"
tags:
  - stochastic_calculus
  - brownian_motion
  - itos_lemma
  - derivatives_pricing
parent_directory:
  - Financial Mathematics
key_concepts:
  - Geometric Brownian Motion
  - Ito's Lemma derivation
  - Application to option pricing
cssclasses: academia
---
```

### Textbook Chapter

```yaml
---
title: "Chapter 12 - Term Structure of Interest Rates"
tags:
  - fixed_income
  - term_structure
  - yield_curves
  - forward_rates
parent_directory:
  - Fixed Income Securities
key_concepts:
  - Yield curve construction
  - Forward rate derivation
  - Term premia and expectations
cssclasses: academia
---
```

### Case Study

```yaml
---
title: "Corporate Restructuring and Debt Workouts"
tags:
  - corporate_finance
  - debt_restructuring
  - distressed_investing
  - bankruptcy
parent_directory:
  - Credit Markets
key_concepts:
  - Out-of-court workouts
  - Chapter 11 process
  - Creditor priority and recovery rates
cssclasses: academia
---
```

### Problem Set Solutions

```yaml
---
title: "Problem Set 3 Solutions - Option Pricing"
tags:
  - derivatives
  - option_pricing
  - black_scholes
  - binomial_model
parent_directory:
  - Financial Instruments
key_concepts:
  - Risk-neutral valuation
  - Put-call parity applications
  - Early exercise boundaries
cssclasses: academia
---
```

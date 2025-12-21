# YAML Frontmatter Template

## Standard Template

```yaml
---
title: [Descriptive Title Here]
parent_directory:
  - [Parent Folder]
formatted: [YYYY-MM-DD HH:MM:SS AM/PM]
formatter_model: [model-name]
cli-tool: [tool-name]
primary_tags:
  - [core_concept_1]
  - [core_concept_2]
  - [core_concept_3]
secondary_tags:
  - [supporting_concept_1]
  - [supporting_concept_2]
  - [supporting_concept_3]
  - [supporting_concept_4]
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

### parent_directory
- **Required:** Yes
- **Format:** Name of folder containing document
- **Rules:**
  - Identifies the immediate folder where the document is stored

### formatted
- **Required:** Yes
- **Format:** `YYYY-MM-DD HH:MM:SS AM/PM`
- **Rules:** Time when document formatting is complete

### formatter_model
- **Required:** Yes
- **Rules:** The AI model used to format the document (e.g., `claude-3-5-sonnet-20241022`)

### cli-tool
- **Required:** Yes
- **Rules:** The tool used (e.g., `claude-code`, `github-copilot`)

### primary_tags
- **Required:** Yes
- **Format:** snake_case, lowercase (multi-word phrases preferred, 2-4 words)
- **Count:** 1-10 tags (see distribution formula)
- **Rules:**
  - The MOST important key phrases
  - Core concepts, central themes, main methodologies
  - Must appear in title or main heading

### secondary_tags
- **Required:** Yes
- **Format:** snake_case, lowercase (multi-word phrases preferred, 2-4 words)
- **Count:** Up to 25 tags (see distribution formula)
- **Rules:**
  - Supporting key phrases
  - Related concepts, peripheral topics, additional context

### cssclasses
- **Required:** Yes
- **Value:** `academia` (always)

## Examples

### Lecture Notes

```yaml
---
title: "Lecture 05 - Stochastic Processes and Ito's Lemma"
parent_directory:
  - Financial Mathematics
formatted: 2025-12-20 02:30:00 PM
formatter_model: claude-3-5-sonnet-20241022
cli-tool: claude-code
primary_tags:
  - stochastic_calculus
  - brownian_motion
  - itos_lemma
secondary_tags:
  - geometric_brownian_motion
  - derivatives_pricing
  - martingale_property
  - quadratic_variation
  - stochastic_differential_equations
cssclasses: academia
---
```

### Textbook Chapter

```yaml
---
title: "Chapter 12 - Term Structure of Interest Rates"
parent_directory:
  - Fixed Income Securities
formatted: 2025-12-20 03:15:00 PM
formatter_model: gpt-4o
cli-tool: github-copilot
primary_tags:
  - fixed_income
  - term_structure
  - yield_curves
secondary_tags:
  - forward_rates
  - spot_rates
  - expectations_hypothesis
  - liquidity_preference_theory
  - market_segmentation_theory
  - bootstrapping_method
cssclasses: academia
---
```

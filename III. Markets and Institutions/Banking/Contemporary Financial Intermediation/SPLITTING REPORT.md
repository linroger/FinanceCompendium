---
title: "Contemporary Financial Intermediation - Document Splitting Report"
parent_directory: "III. Markets and Institutions/Banking/Contemporary Financial Intermediation"
formatted: 2025-12-21 08:00:00 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - document splitting
  - financial intermediation
  - textbook organization
secondary_tags:
  - content management
  - file organization
  - academic resources
cssclasses: academia
---

# Contemporary Financial Intermediation - Document Splitting Report

**Date**: December 4, 2025
**Source Document**: `MinerU_Stuart I. Greenbaum - Anjan V Thakor - Arnoud Boot - Contemporary Financial Intermediation__20251205022012.md`
**Output Directory**: `/Users/rogerlin/Downloads/minerumd/split_output/Contemporary_Financial_Intermediation/`

## Summary

The Contemporary Financial Intermediation textbook has been successfully split into 19 separate markdown files organized according to the book's 10-part structure with 18 chapters plus an introduction.

## Document Structure

### Total Files Created: 20
- 1 Introduction file
- 18 Chapter files (organized into 10 Part directories)
- 1 README.md

### Part-by-Part Breakdown

#### Introduction
- **00_Introduction.md** (27 KB)
  - Contains the book's introduction and organizational overview
  - Discusses the Great Recession and legacy
  - References

#### Part I: The Background
- **Chapter_01_Basic_Concepts.md** (76 KB)
  - Risk preferences, diversification, arbitrage
  - Options, market efficiency, market completeness
  - Asymmetric information, agency, moral hazard
  - Key financial concepts and terminology

#### Part II: What is Financial Intermediation?
- **Chapter_02_The_Nature_Variety_of_Financial_Intermediation.md** (137 KB)
  - Overview of financial intermediaries
  - Depository institutions (commercial banks, thrifts, credit unions)
  - Investment banks and separation from commercial banks
- **Chapter_03_The_What_How_and_Why_of_Financial_Intermediaries.md** (131 KB)
  - How the financial system works
  - Role in economic growth
  - Economic theories of intermediation

#### Part III: Identification and Management of Major Banking Risks
- **Chapter_04_Bank_Risks.md** (59 KB)
  - Introduction to banking risks
  - Credit, interest rate, and liquidity risks
  - Enterprise Risk Management (ERM)
- **Chapter_05_Interest_Rate_Risk.md** (65 KB)
  - Nature and sources of interest rate risk
  - Measurement and management techniques
  - Duration and convexity
- **Chapter_06_Liquidity_Risk.md** (37 KB)
  - Definition and types of liquidity risk
  - Interaction with other risks
  - Risk reduction strategies

#### Part IV: "On Balance Sheet" Banking Activities
- **Chapter_07_Spot_Lending_Credit_Risk.md** (155 KB)
  - Basics of credit analysis
  - Loan pricing and structuring
  - Credit risk management
- **Chapter_08_Further_Issues_in_Bank_Lending.md** (148 KB)
  - Advanced lending topics
  - Credit rationing
  - Loan renegotiation and restructuring
- **Chapter_09_Special_Topics_in_Credit_Syndicated_Loans.md** (32 KB)
  - Syndicated lending
  - Loan sales and secondary markets
  - Project finance

#### Part V: Off the Bank's Balance Sheet
- **Chapter_10_Off-Balance_Sheet_Banking_Contingent_Claims_Products.md** (133 KB)
  - Loan commitments
  - Letters of credit
  - Derivatives and contingent claims
- **Chapter_11_Securitization.md** (148 KB)
  - Asset-backed securities
  - Mortgage-backed securities
  - Structured finance products

#### Part VI: The Funding of the Bank
- **Chapter_12_The_Deposit_Contract_Deposit_Insurance_and_Shadow_Banking.md** (128 KB)
  - Nature of deposit contracts
  - Deposit insurance mechanisms
  - Shadow banking system
- **Chapter_13_Bank_Capital_Structure.md** (56 KB)
  - Capital adequacy
  - Leverage decisions
  - Regulatory capital requirements

#### Part VII: Financial Crises
- **Chapter_14_The_2007-2009_Financial_Crisis_Other_Financial_Crises.md** (76 KB)
  - Causes and development of the 2007-2009 crisis
  - Historical financial crises
  - Lessons learned

#### Part VIII: Bank Regulation
- **Chapter_15_Objectives_of_Bank_Regulation.md** (175 KB)
  - Rationale for regulation
  - Regulatory objectives and frameworks
  - International coordination
- **Chapter_16_Milestones_in_Banking_Legislation_Regulatory_Reform.md** (131 KB)
  - Key banking legislation
  - Dodd-Frank Act
  - Basel Accords
  - Regulatory evolution

#### Part IX: Financial Innovation
- **Chapter_17_The_Evolution_of_Banks_Markets_the.md** (42 KB)
  - Co-evolution of banks and markets
  - Financial innovation drivers
  - Impact on intermediation

#### Part X: The Future
- **Chapter_18_The_Future.md** (44 KB)
  - Change drivers (regulation, technology, customer preferences)
  - Future scenarios for banking
  - Fintech and digital transformation

## Technical Details

### Splitting Methodology
1. **Introduction**: Extracted from beginning of document to "# Basic Concepts" heading
2. **Chapter 1**: Starts at "# Basic Concepts" and ends at first "# GLOSSARY OF TERMS"
3. **Chapters 2-18**: Each begins with "# GLOSSARY OF TERMS" section and continues to the next chapter's GLOSSARY (or end of file for Chapter 18)

### File Naming Convention
- Introduction: `00_Introduction.md`
- Chapters: `Chapter_[NN]_[Shortened_Title].md`
  - Where NN is the zero-padded chapter number (01-18)
  - Title is simplified to remove special characters and shortened if necessary

### Directory Structure

```
Contemporary_Financial_Intermediation/
├── 00_Introduction.md
├── Part_01_The_Background/
│   └── Chapter_01_Basic_Concepts.md
├── Part_02_What_is_Financial_Intermediation/
│   ├── Chapter_02_The_Nature_Variety_of_Financial_Intermediation.md
│   └── Chapter_03_The_What_How_and_Why_of_Financial_Intermediaries.md
├── Part_03_Identification_and_Management_of_Major_Banking_Risks/
│   ├── Chapter_04_Bank_Risks.md
│   ├── Chapter_05_Interest_Rate_Risk.md
│   └── Chapter_06_Liquidity_Risk.md
├── Part_04_On_Balance_Sheet_Banking_Activities/
│   ├── Chapter_07_Spot_Lending_Credit_Risk.md
│   ├── Chapter_08_Further_Issues_in_Bank_Lending.md
│   └── Chapter_09_Special_Topics_in_Credit_Syndicated_Loans.md
├── Part_05_Off_the_Banks_Balance_Sheet/
│   ├── Chapter_10_Off-Balance_Sheet_Banking_Contingent_Claims_Products.md
│   └── Chapter_11_Securitization.md
├── Part_06_The_Funding_of_the_Bank/
│   ├── Chapter_12_The_Deposit_Contract_Deposit_Insurance_and_Shadow_Banking.md
│   └── Chapter_13_Bank_Capital_Structure.md
├── Part_07_Financial_Crises/
│   └── Chapter_14_The_2007-2009_Financial_Crisis_Other_Financial_Crises.md
├── Part_08_Bank_Regulation/
│   ├── Chapter_15_Objectives_of_Bank_Regulation.md
│   └── Chapter_16_Milestones_in_Banking_Legislation_Regulatory_Reform.md
├── Part_09_Financial_Innovation/
│   └── Chapter_17_The_Evolution_of_Banks_Markets_the.md
├── Part_10_The_Future/
│   └── Chapter_18_The_Future.md
└── README.md
```

## Content Preservation

All original content has been preserved including:

- Mathematical equations and formulas
- Tables and figures (with image URLs maintained)
- Glossary sections for each chapter
- References and footnotes
- Examples and case studies
- Subheadings and section organization

## Quality Assurance

### Validation Checks Performed

✅ All 18 chapters successfully extracted

✅ Introduction properly separated

✅ Each chapter contains complete content from start to end

✅ Chapter boundaries are correct (verified by examining GLOSSARY sections)

✅ File sizes are reasonable and consistent with content density

✅ Directory structure matches the book's 10-part organization

✅ README.md created with complete structure documentation

### File Size Distribution
- Total content: ~1.8 MB across 19 files
- Average chapter size: ~95 KB
- Largest chapter: Chapter 15 (Objectives of Bank Regulation) - 175 KB
- Smallest chapter: Chapter 9 (Special Topics in Credit) - 32 KB

## Notes

1. **Chapter 4 Identification**: Chapter 4 does not have a traditional chapter title heading like "# Bank Risks" in the source document. Instead, it begins with "# GLOSSARY OF TERMS" followed by an "# INTRODUCTION" section that discusses various banking risks.
2. **Chapter 1 Special Case**: Chapter 1 is the only chapter that does not start with a GLOSSARY section. It begins directly with "# Basic Concepts" heading.
3. **Image References**: All image references maintain their original CDN URLs from the MinerU conversion. These point to external resources and will require internet connectivity to display.
4. **Mathematical Notation**: LaTeX mathematical notation is preserved using dollar signs ($…$) for inline math and double dollar signs ($$…$$) for display equations.

## Completion Status

**Status**: ✅ COMPLETE
**Date Completed**: December 4, 2025
**Processing Time**: ~5 minutes
**Success Rate**: 100% (20/20 files created successfully)

All chapters have been successfully extracted and organized according to the book's structure. The splitting process maintained content integrity while creating a well-organized hierarchical directory structure that mirrors the textbook's pedagogical organization.

---
aliases:
  - Chapter Splitting Report
tags:
key_concepts:
parent_directory: The Handbook of Financial Instruments FINAL
cssclasses: academia
title: Chapter Splitting Report
linter-yaml-title-alias: Chapter Splitting Report
---

# Chapter Splitting Report
## The Handbook of Financial Instruments

**Date**: 2025-12-04
**Source Document**: `MinerU_The Handbook of Financial Instruments__20251205022028.md`
**Output Directory**: `split_output/The_Handbook_of_Financial_Instruments_FINAL/`

---

## Summary

- **Total Chapters in TOC**: 32
- **Chapters Successfully Split**: 27
- **Missing/Incomplete Chapters**: 5

---

## Successfully Split Chapters

| # | Chapter Title | File Name | Lines |
|---|--------------|-----------|-------|
| 1 | Overview of Financial Instruments | Chapter_01_Overview_of_Financial_Instruments.md | 248 |
| 2 | Fundamentals of Investing | Chapter_02_Fundamentals_of_Investing.md | 339 |
| 3 | Calculating Investment Returns | Chapter_03_Calculating_Investment_Returns.md | 641 |
| 4 | Common Stock | Chapter_04_Common_Stock.md | 653 |
| 5 | Sources of Information for Investing in Common Stock | Chapter_05_Sources_of_Information_for_Investing_in_Common_Stock.md | 309 |
| 6 | Money Market Instruments | Chapter_06_Money_Market_Instruments.md | 686 |
| 7 | U.S. Treasury Securities | Chapter_07_US_Treasury_Securities.md | 365 |
| 8 | Inflation-Indexed Bonds | Chapter_08_Inflation-Indexed_Bonds.md | 198 |
| 9 | Federal Agency Securities | Chapter_09_Federal_Agency_Securities.md | 167 |
| 10 | Municipal Securities | Chapter_10_Municipal_Securities.md | 751 |
| 12 | Preferred Stock | Chapter_12_Preferred_Stock.md | 223 |
| 13 | Emerging Markets Debt | Chapter_13_Emerging_Markets_Debt.md | 433 |
| 14 | Agency Mortgage-Backed Securities | Chapter_14_Agency_Mortgage-Backed_Securities.md | 521 |
| 15 | Nonagency MBS and Real Estate-Backed ABS | Chapter_15_Nonagency_MBS_and_Real_Estate-Backed_ABS.md | 491 |
| 16 | Commercial Mortgage-Backed Securities | Chapter_16_Commercial_Mortgage-Backed_Securities.md | 254 |
| 17 | Non-Real Estate Asset-Backed Securities | Chapter_17_Non-Real_Estate_Asset-Backed_Securities.md | 926 |
| 20 | Collateralized Debt Obligations | Chapter_20_Collateralized_Debt_Obligations.md | 333 |
| 21 | Investment Companies | Chapter_21_Investment_Companies.md | 384 |
| 22 | Exchange-Traded Funds and Their Competitors | Chapter_22_Exchange-Traded_Funds_and_Their_Competitors.md | 237 |
| 23 | Stable-Value Pension Investments | Chapter_23_Stable-Value_Pension_Investments.md | 220 |
| 24 | Investment-Oriented Life Insurance | Chapter_24_Investment-Oriented_Life_Insurance.md | 2016 |
| 27 | Real Estate Investment | Chapter_27_Real_Estate_Investment.md | 314 |
| 28 | Equity Derivatives | Chapter_28_Equity_Derivatives.md | 537 |
| 29 | Interest Rate Derivatives | Chapter_29_Interest_Rate_Derivatives.md | 311 |
| 30 | Mortgage Swaps | Chapter_30_Mortgage_Swaps.md | 119 |
| 31 | Credit Derivatives | Chapter_31_Credit_Derivatives.md | 354 |
| 32 | Managed Futures | Chapter_32_Managed_Futures.md | 118 |

---

## Missing or Problematic Chapters

The following chapters from the Table of Contents could not be extracted as standalone chapters:

### Chapter 11: Corporate Bonds
- **Status**: Missing or merged into another chapter
- **Note**: A section titled "Corporate Bonds" appears at line 4872, but it's within Chapter 13 (Emerging Markets Debt) as a subsection discussing EMD corporate bonds. The original Chapter 11 "Corporate Bonds" may have been omitted from this version of the document or merged into another chapter.

### Chapter 18: Credit Card ABS
- **Status**: Missing or merged into another chapter
- **Note**: Content about credit card market segments appears around line 7092, but no standalone chapter with this title was found. This may be a section within Chapter 17 (Non-Real Estate Asset-Backed Securities).

### Chapter 19: Leveraged Loans
- **Status**: Missing from document content
- **Note**: This chapter is listed in the TOC (page 469) but no corresponding content with a clear chapter heading was found in the document.

### Chapter 25: Hedge Funds
- **Status**: Likely merged into Chapter 24
- **Note**: The TOC lists this at page 605. A reference to "Hedge Funds" appears in an exhibit within Chapter 24 (Investment-Oriented Life Insurance) at line 9582, suggesting this content may have been incorporated into Chapter 24 or omitted.

### Chapter 26: Private Equity
- **Status**: Found but location issue
- **Note**: A heading "# Private Equity" was found at line 10562, which appears to be after Chapter 27 in the document flow. This suggests the chapter order in the final document may differ from the TOC.

---

## Notes on Document Structure

1. **Document Conversion Issues**: The source document appears to be a PDF-to-Markdown conversion (MinerU output). Some structural elements may have been lost or merged during conversion.
2. **Chapter Order**: Some chapters appear out of sequence in the document compared to the TOC (e.g., Chapter 26 appears after Chapter 27).
3. **Missing Content**: Chapters 11, 18, 19, and 25 appear to be either:
   - Merged into other chapters as sections
   - Missing from this version of the document
   - Listed in the TOC but not fully included in the conversion

4. **Content Quality**: All successfully extracted chapters contain substantial content (ranging from 118 to 2016 lines) and appear to be complete.

---

## Recommendations

If you need the missing chapters (11, 18, 19, 25, 26):

1. **Check the original PDF** to verify if these chapters exist as standalone chapters
2. **Review Chapter 13** for Corporate Bonds content (appears as subsection)
3. **Review Chapter 17** for Credit Card ABS content (may be included there)
4. **Review Chapter 24** for potential Hedge Funds content
5. **Extract Chapter 26** separately if needed (it exists but was excluded due to sequencing issues)

---

## File Organization

All chapter files are saved in:

```
/Users/rogerlin/Downloads/minerumd/split_output/The_Handbook_of_Financial_Instruments_FINAL/
```

File naming convention: `Chapter_XX_Title_Name.md`

Each file contains the complete chapter content from the heading through to the start of the next chapter (or end of document for Chapter 32).

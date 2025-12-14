---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Investment Valuation - Chapter Split Results
linter-yaml-title-alias: Investment Valuation - Chapter Split Results
---

# Investment Valuation - Chapter Split Results

## Summary

This directory contains **18 of 34 chapters** successfully extracted from the Damodaran "Investment Valuation" textbook.

### Successfully Split Chapters (1-18)

| Chapter | Title | Lines | Size |
|---------|-------|-------|------|
| 01 | Introduction to Valuation | 166 | 26K |
| 02 | Approaches to Valuation | 332 | 44K |
| 03 | Understanding Financial Statements | 576 | 89K |
| 04 | The Basics of Risk | 481 | 82K |
| 05 | Option Pricing Theory and Models | 686 | 55K |
| 06 | Market Efficiency - Definition, Tests, and Evidence | 662 | 100K |
| 07 | Riskless Rates and Risk Premiums | 481 | 79K |
| 08 | Estimating Risk Parameters and Costs of Financing | 1,357 | 136K |
| 09 | Measuring Earnings | 416 | 60K |
| 10 | From Earnings to Cash Flows | 415 | 65K |
| 11 | Estimating Growth | 768 | 105K |
| 12 | Closure in Valuation - Estimating Terminal Value | 428 | 56K |
| 13 | Dividend Discount Models | 734 | 72K |
| 14 | Free Cash Flow to Equity Discount Models | 869 | 79K |
| 15 | Firm Valuation - Cost of Capital and Adjusted Present Value Approaches | 1,087 | 127K |
| 16 | Estimating Equity Value per Share | 603 | 91K |
| 17 | Fundamental Principles of Relative Valuation | 23 | 4.7K |
| 18 | Earnings Multiples | 669 | 95K |

**Total:** 10,753 lines across 18 chapters (~1.5MB of content)

## Remaining Chapters (19-34) - Not Yet Split

The following chapters could not be automatically extracted due to the file's complex structure:

- Chapter 19: Book Value Multiples
- Chapter 20: Revenue Multiples and Sector-Specific Multiples
- Chapter 21: Valuing Financial Service Firms
- Chapter 22: Valuing Firms with Negative or Abnormal Earnings
- Chapter 23: Valuing Young or Start-Up Firms
- Chapter 24: Valuing Private Firms
- Chapter 25: Acquisitions and Takeovers
- Chapter 26: Valuing Real Estate
- Chapter 27: Valuing Other Assets
- Chapter 28: The Option to Delay and Valuation Implications
- Chapter 29: The Options to Expand and to Abandon: Valuation Implications
- Chapter 30: Valuing Equity in Distressed Firms
- Chapter 31: Value Enhancement: A Discounted Cash Flow Valuation Framework
- Chapter 32: Value Enhancement: Economic Value Added, Cash Flow Return on Investment, and Other Tools
- Chapter 33: Probabilistic Approaches in Valuation: Scenario Analysis, Decision Trees, and Simulations
- Chapter 34: Overview and Conclusion

### Why Chapters 19-34 Are Missing

The original markdown file has an unusual structure:

1. **Lines 1-576**: Table of Contents (lists all 34 chapter titles)
2. **Lines 581-11,338**: Actual chapter content

The problem is that chapters 19-34 don't have clear heading markers in the content. They appear to be:

- Embedded within Chapter 18's content, OR
- Using subsection headings instead of main chapter headings, OR
- Organized in a way that makes automatic extraction difficult

### Next Steps for Complete Extraction

To extract chapters 19-34, you would need to:

1. Manually examine the original file starting around line 10,669 (after Chapter 18)
2. Look for section breaks, "QUESTIONS AND SHORT PROBLEMS" markers that indicate chapter ends
3. Identify the actual content boundaries for each chapter
4. Update the splitting script with the correct line numbers

## File Information

- **Source file:** `Investment Valuation - Tools and Techniques for Determining the Value of Any Asset.md`
- **Original size:** 11,338 lines (3.4MB)
- **Extraction method:** Python script analyzing content structure
- **Date created:** December 6, 2025

## Notes

- Chapter 11 was particularly challenging as it begins without its chapter title as a heading
- Chapter 17 appears unusually short (23 lines) - may need verification
- The original file is preserved as a backup in the parent directory
- All chapter files include proper markdown formatting and preserve images/tables from the source

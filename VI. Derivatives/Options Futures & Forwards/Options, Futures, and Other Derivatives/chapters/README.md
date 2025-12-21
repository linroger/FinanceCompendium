---
title: Hull Options, Futures, and Other Derivatives - Chapters
parent_directory: chapters
formatted: 2025-12-21 08:15:00 AM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: claude-code
primary_tags:
  - hull options futures
  - chapter organization
  - textbook split
secondary_tags:
  - options markets
  - futures markets
  - derivatives textbook
  - john hull
cssclasses: academia
---

# Hull Options, Futures, and Other Derivatives - Chapters

This directory contains the textbook split into individual chapter files for easier navigation and reference.

### Chapter List

- [00 Front Matter.md](00%20Front%20Matter.md) - Front Matter
- [01 Introduction.md](01%20Introduction.md) - Chapter 1: Introduction
- [02 Futures Markets.md](02%20Futures%20Markets.md) - Chapter 2: Futures Markets and Central Counterparties
- [03 Hedging Strategies.md](03%20Hedging%20Strategies.md) - Chapter 3: Hedging Strategies Using Futures
- [04 Interest Rates.md](04%20Interest%20Rates.md) - Chapter 4: Interest Rates
- [05 Forward Futures Prices.md](05%20Forward%20Futures%20Prices.md) - Chapter 5: Determination of Forward and Futures Prices
- [06 Interest Rate Futures.md](06%20Interest%20Rate%20Futures.md) - Chapter 6: Interest Rate Futures
- [07 Swaps.md](07%20Swaps.md) - Chapter 7: Swaps
- [08 Securitization.md](08%20Securitization.md) - Chapter 8: Securitization and the Financial Crisis
- [09 XVAs.md](09%20XVAs.md) - Chapter 9: XVAs
- [10 Options Markets Mechanics.md](10%20Options%20Markets%20Mechanics.md) - Chapter 10: Mechanics of Options Markets
- [11 Stock Options Properties.md](11%20Stock%20Options%20Properties.md) - Chapter 11: Properties of Stock Options
- [12 Options Trading Strategies.md](12%20Options%20Trading%20Strategies.md) - Chapter 12: Trading Strategies Involving Options
- [13 Binomial Trees.md](13%20Binomial%20Trees.md) - Chapter 13: Binomial Trees
- [14 Wiener Processes.md](14%20Wiener%20Processes.md) - Chapter 14: Wiener Processes and Itô's Lemma
- [15 Black Scholes Merton.md](15%20Black%20Scholes%20Merton.md) - Chapter 15: The Black-Scholes-Merton Model
- [16 Employee Stock Options.md](16%20Employee%20Stock%20Options.md) - Chapter 16: Employee Stock Options
- [17 Options Indices Currencies.md](17%20Options%20Indices%20Currencies.md) - Chapter 17: Options on Stock Indices and Currencies
- [18 Futures Options Black.md](18%20Futures%20Options%20Black.md) - Chapter 18: Futures Options and Black's Model

### Source

Original file: `Options, Futures, and Other Derivatives.md`

**Book Details:**
- Title: Options, Futures, and Other Derivatives
- Author: John C. Hull
- Edition: 11th Edition
- Publisher: Pearson (2021)

### Notes

- Each chapter file contains all content from the chapter start to the beginning of the next chapter
- Front matter (title page, table of contents, preface) is in `00_Front_Matter.md`
- Original file preserved as backup
- Total chapters: 18 (plus front matter)

### File Naming Convention

- `00_Front_Matter.md` - Book front matter (title, TOC, etc.)
- `01-37_*.md` - Individual chapter files
- Chapter files are named with number prefix for easy sorting and navigation

```d2
direction: right
Book Structure {
  Front Matter -> Futures -> Options -> Advanced Topics

  Futures: Futures Markets {
    "Chapter 2: Futures Markets"
    "Chapter 3: Hedging Strategies"
    "Chapter 4: Interest Rates"
    "Chapter 5: Forward/Futures Prices"
    "Chapter 6: Interest Rate Futures"
    "Chapter 7: Swaps"
    "Chapter 8: Securitization"
    "Chapter 9: XVAs"
  }

  Options: Options Markets {
    "Chapter 10: Options Mechanics"
    "Chapter 11: Stock Options"
    "Chapter 12: Trading Strategies"
    "Chapter 13: Binomial Trees"
    "Chapter 14: Wiener Processes"
    "Chapter 15: Black-Scholes"
    "Chapter 16: Employee Options"
    "Chapter 17: Indices/Currencies"
    "Chapter 18: Futures Options"
  }

  Advanced Topics: Advanced Derivatives {
    "Stochastic Calculus"
    "Pricing Models"
    "Risk Management"
  }
}
```

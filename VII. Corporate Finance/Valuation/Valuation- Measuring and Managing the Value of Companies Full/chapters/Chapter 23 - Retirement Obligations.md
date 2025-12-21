---
aliases:
   - Retirement Obligations Such as Pensions
tags:
key_concepts:
parent_directory: VII. Corporate Finance/Valuation/Valuation- Measuring and Managing the Value of Companies Full/chapters
cssclasses: academia
title: Chapter 23 - Retirement Obligations
linter-yaml-title-alias: Retirement Obligations Such as Pensions
formatted: "2025-12-20 07:52:00 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags: [retirement obligations, pension valuation, fasb statement 158]
secondary_tags: [nonoperating assets, unfunded liabilities, operating expenses]
---

## Retirement Obligations Such as Pensions

Following the passage of FASB Statement 158 under U.S. GAAP in 2006, companies now report the present value of pension shortfalls (and excess pension assets) on their balance sheets.[14] Since excess pension assets do not generate operating profits, nor do pension shortfalls fund operations, pension accounts should not be included in invested capital. Instead, pension assets should be treated as nonoperating assets, and pension shortfalls as a debt equivalent (and both should be valued separately from operations). If pension accounts are not explicitly detailed on the company's balance sheet, search the pension footnote to determine where they are embedded. Often excess pension assets are embedded in other assets, and unfunded pension liabilities are in other liabilities.

```d2
retirement obligations valuation: {
  shape: flowchart
  
  pension_assets: "Excess Pension Assets (Nonoperating Assets)"
  pension_liabilities: "Unfunded Pension Liabilities (Debt Equivalent)"
  valuation: "Value Separately from Operations"
  
  pension_assets -> valuation
  pension_liabilities -> valuation
}
```

Reporting rules under IFRS (IAS 19) differ slightly in that companies can postpone recognition of their unfunded pension obligations resulting from changes in actuarial assumptions, but only as long as the cumulative unrecognized gain or loss does not exceed 10 percent of the obligations. For companies reporting under IFRS, search the notes for the current value of obligations.

On the income statement, new GAAP accounting for pensions in 2018 dictates that only service cost—the new benefits promised to employees for service rendered in a given year—be included in operating expenses like cost of goods sold.[15] The remaining items, such as expected return on assets and interest cost on the liabilities, are now included as nonoperating income or expense. For years prior to 2018, an adjustment is still required.

Since Costco does not provide pension benefits to employees, we do not adjust the company's historical statements. Chapter 23 provides details on how to adjust NOPAT for pensions and how to factor underor overfunded pensions into a company's value.

# Capitalized Research and Development

In line with the conservative principles of accounting, accountants expense R&D, advertising, and certain other costs in their entirety in the period when they are incurred, even when economic benefits resulting from such expenses continue beyond the current reporting period.[16] This practice can dramatically understate invested capital and overstate return on capital for some companies. Therefore, you should consider whether it would be effective to capitalize and amortize R&D and other quasi investments in a manner like that used for capital expenditures. Equity should be adjusted correspondingly to balance the invested-capital equation.

If you decide to capitalize R&D, do not deduct the reported R&D expense from revenue to calculate operating profit. Instead, deduct the amortization associated with past R&D investments, using a reasonable amortization schedule. Since amortization is based on past investments (versus expense, which is based on current outlays), this approach will prevent reductions in R&D from driving short-term improvements in ROIC.

Whether or not you capitalize certain expenses will not affect computed value; it will affect only the timing of ROIC and economic profit. Chapter 24 analyzes the complete valuation process for R&D-intensive companies, including adjustments to free cash flow and value.

# Other Advanced Adjustments

Some companies may have industry-specific items that require adjustment. These adjustments arise from an uncommon line item on the income statement or balance sheet and, given their rarity, require thoughtful judgment based on the economic principles of this book.

Consider an example from FedEx. In 2013, the company sold aircraft to another company and leased the aircraft back. This transaction is commonly known as a sale-leaseback. If a gain arises from the sale, the company cannot recognize the gain as income, but instead must lower the annual rental expense over the life of the contract. Since cash increases but retained earnings do not rise, a liability for deferred gains is recognized.

Should the liability for deferred gains be treated as operating and deducted from operating assets to determine invested capital? Or perhaps classified as a debt or equity equivalent? From a valuation perspective, it doesn't matter how to classify the item, as long as it is treated consistently. It will, however, have an impact on our perceptions about return on invested capital and ultimately value creation. Accounting rules prevent the one-year spike in income caused by a financial transaction, but we believe the downward distortion in future rental expense is worse, since this lower rental expense is noncash and could distort the perceived cost of new leases. Therefore, undo the transaction entirely and recognize the account as an equity equivalent.

Not every advanced issue will lead to material differences in ROIC, growth, and free cash flow. Before collecting extra data and estimating required unknowns, decide whether the adjustment will further your understanding of a company and its industry. An unnecessarily complex model can sometimes obscure the underlying economics that would be obvious in a simple model. Remember, the goal of financial analysis is to provide a strong context for good financial decision making and robust forecasting, not to create an overly engineered model that deftly handles unimportant adjustments.

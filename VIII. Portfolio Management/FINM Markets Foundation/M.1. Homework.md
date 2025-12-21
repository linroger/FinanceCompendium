---
title: M.1. Homework
parent_directory: FINM Markets Foundation
formatted: 2025-12-20 07:02:00 PM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - treasury debt analysis
  - yield to maturity
secondary_tags:
  - time to maturity
  - discount yields
  - short-term rates
cssclasses: academia
---

# M.1. Homework

## Markets Foundations

### UChicago Financial Mathematics

#### September 2022

* Mark Hendricks
* hendricks@uchicago.edu

#### This assignment is not submitted, graded, or for credit. 

Rather, it is assigned for learning purposes.

# 1. Treasury Debt Composition

## Data

This assignment uses the data file `../data/treasury_quotes_2022-06-30.xlsx`.

## Note

The `ITYPE` column identifies

* 1: bonds
* 2: notes
* 4: bills
* 11: TIPS notes
* 12: TIPS bonds

The column `TDPUBOUT` lists the dollar size of the issue (public debt outstanding.)

The data source does not list the issue size for the T-bills, which is why we are not segmenting those out separately.

*Tip* `.pivot_table()` may be useful.

## 1.1

Plot the total amount of outstanding debt maturing at each date

## 1.2

Plot the amount of outstanding debt maturing at each date, segmented by bonds, notes, TIPS (combined ITYPE of 11 and 12.)

## 1.3

Report the total outstanding debt (summed over all maturity dates,) segmented by bonds, notes, TIPS.

## 1.4

Make a pie chart of this total number (reported in 1.3.) 

# 2 Time-to-Maturity

## 2.1

Calculate the time-to-maturity (relative to the quote date) for each issue.

Use the `TMATDT` column to get the maturity date.

Report the summary statistics of these time-to-maturities. (Consider using .describe()).

## 2.2

Plot the time-to-maturity against the provided YTM, (column `TDYLD`.)

# 3 Yields and Prices

## 3.1

For the Treasury bills, calculate the **discount yields**.

Identify the T-bills using `ITYPE`=4 or looking for `TCOUPRT` of 0.

## 3.2

Write a function to calculate the yield-to-maturity for each issue. You will need to use a nonlinear solver to solve for the YTM.

## 3.3

Conceptual question, no outside data needed.

Consider a Treasury with…

* maturity 2 years
* face value 100
* coupon rate 4\%, semiannual
* current yield-to-maturity is 3\%

1. Calculate the price of the treasury.
2. Suppose that both its YTM and coupon rate go up by 0.5\%. What is the revised price of this Treasury?

# 4 Short-Term Rates

Use the data in `data/ref_rates.xlsx` to explore several key rates that are used as benchmarks for floating rates.

* SOFR
* Fed funds
* 3-month T-bill yield

Calculate the correlation between the three rates (filtering to the dates for which they all have reported values.)

Do this correlation analysis for the data in

* levels (as provided)
* differences (day-over-day changes)

---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: M.4. Homework
---

# M.4. Homework

## Markets Foundations

### UChicago Financial Mathematics

#### September 2022

* Mark Hendricks
* hendricks@uchicago.edu

#### This assignment is not submitted, graded, or for credit. 

Rather, it is assigned for learning purposes.

$\newcommand{\rUSD}{r^{\text{US}}}$

$\newcommand{\rGBP}{r^{\text{GBP}}}$

$\newcommand{\rxGBP}{\widetilde{r}^{\text{GBP}}}$

# 1 Stack and Roll

Use the data in `data/futures_data.xlsx`

## 1.1

The time-series data in `futures timeseries` has price data on 4 different crude oil contracts.

Consider a **stack and roll** strategy. 

* Suppose on **November 15, 2021** an investor buys 100 contracts of oil futures, "CLG2", using end-of-day Nov 15, 2021 prices, and noting the contract size listed in the `futures contracts` tab. 
* On the final day of a reported price, (Jan 20, 2022 in this case,) sell the contracts at the listed price. Keep track of the daily profit or loss.
* **Roll** into the next contract, "CLJ2", buying in at the Jan 20, 2022 price.
* Hold this until rolling into CLM2, and finally CLQ2.
* At each roll, buy 100 contracts.
* Close out CLQ2 on June 30, 2022.

Plot the timeseries of cumulative profit and loss.

* Do not consider as a loss (profit) the additional capital contributed (withdrawn) at the roll.

Report the mean daily profit as well as the cumulative total.

## 1.2

From the tab `roll conventions CL`, use the series, `CL1`. 

Assume this is a proxy for the stack and roll strategy above.

* scale it by the contract size (1000)
* calculate the day-over-day differences as profit (loss).

Does it match your answer in 1.1? Why not?

## 1.3

Would any of the alternate continuous contracts in the `roll conventions CL` tab be appropriate to proxy the stack-and-roll strategy?

***

# 2 Margin and Capital

Reconsider the stack and roll of Problem 1, but this time keep track of the margin account. Assume that…

* when purchasing the contracts, an initial margin of \\$10,000 per contract is paid into the margin account, (not the entire purchase price!)
* if the margin account goes below \\$9,000 per contract, you must pay additional capital to raise the margin back to \\$9,000 per contract..
* if the margin account goes above \\$11,000 per contract, you take out the additional capital to lower the margin back to \\$11,000 per contract. 
* at the roll, add in (or take out) capital such that the margin account resets to the initial margin of \\$10,000 per contract.

*This is a conceptually simple problem, but setting it up correctly in python may be challenging. Consider starting with a spreadsheet.*

## 2.1

Plot the timeseries of the margin account.

How many times is there a margin call to continue the contract position? (This does not include rolling contracts.)

## 2.2

Consider two measures of total return on this strategy.

$$\text{return} = \frac{\text{total profit}}{\text{initial capital}}$$

where we measure the "initial capital" as…

* total price of the 100 contracts of "CLG2" as paid in 1.1
* initial margin for the 100 contracts, as calculated in 1.3.

Ignore the fact that additional capital may have been paid in on the rolls.

How does the margin system change the total return?

## 2.3

Reconsider the calculation of profit from Problem 1.

When the contract rolls, the investor may need to pay in additional capital to keep the 100 contracts. Consider this a loss.

On the other hand, if rolling into the new contract frees up capital, consider this a profift.

1. How does this change the total profit (loss)?
2. How does this change the total return defined above?
3. Do you think this roll capital should be considered P&L (profit and loss?)

# 3 Dynamic Sizing

Analyze the investment strategy from Section 1-2 above, but this time assuming that 

* total capital is rolled at each contract, rather than always resetting to a constant 100 contracts.
* the capital is used to purchase as many new contracts as possible, and the remainder sits as cash, (earning no interest,) and available for deployment on the next roll.
* the initial margin is 10\% of the contract value at the time of the roll, the maintenance margin is 9\% and the excess margin is 11\%

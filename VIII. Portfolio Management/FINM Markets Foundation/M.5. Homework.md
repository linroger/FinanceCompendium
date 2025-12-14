---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: M.5. Homework
---

# M.5. Homework

## Markets Foundations

### UChicago Financial Mathematics

#### September 2022

* Mark Hendricks
* hendricks@uchicago.edu

#### This assignment is not submitted, graded, or for credit. 

Rather, it is assigned for learning purposes.

## 1 Calculating Returns

Use the data in `data/equity_data.xlsx`

* tab `prices AAPL`: columns `Unadjusted Price` and `Adjusted Price`
* tab  `dividends AAPL`: columns `ex_date` and `dividend_amount`

### 1.1

For the most recent 2 dividend dates, calculate the one-day return to AAPL using the unadjusted price and the dividend amount. 

That is, for a given dividend, calculate the return for the day prior to the "ex date" and ending on the "ex date". Do this for at least the most recent two dividends. (Though it is probably just as easy to adjust the return on every dividend date.)

How close is this to the return calculated from the adjusted price percentage change?

### 1.2

For the most recent stock split, (see multiple in `dividend_amount` and indicated in the column `dividend_type`,) calculate the return to AAPL using the unadjusted price along with this split and dividend info.

How close is this computed return to that calculated from the adjusted price growth?

## 2 Stock Sensitivity

Use the data in `data/equity_data.xlsx`, in the tab `etf history`.

For the ETFs listed in `etf history`, calculate their percentage change over time. (These are adjusted prices, so this is a measure of their returns.)

## 2.1

Report the correlation table.

## 2.2

### Background

Recall that in analyzing fixed income products, duration measures the percentage change of price with respect to a shift in rates:

$$\frac{dP}{P} = -D dr + \epsilon$$

This concept is duration is at the heart of much of the trading in fixed income.

In equities, there is an analogous concept: a stock's **beta**:

$$r_t = \alpha + \beta r^{\text{SPY}}_t + \epsilon_t$$

This beta is analyzed with respect to many factors, but it is most widely analyzed with respect to the S&P 500 (or a similar, broad equity index. Thus the notation $r^{\text{SPY}}_t$ on the right-hand side.

### Calculation

For each ETF return series, estimate the regression above. (You will estimate many regressions, in a loop, each using SPY as the right-hand-side factor.)

Report these betas. Which ETF has the most overall stock-market risk?

#### Hint: 

To estimate the regression, consider using the following approach:

`from sklearn.linear_model import LinearRegression`

`LinearRegression().fit(X,y).coef_`

***

## 3 Factor Structure of Stocks

Why is the "market" (often meaning S&P500) beta so popular as a risk factor for equities? It is because, (like fixed income with rates,) there is a strong factor structure. That is, many stocks have a lot of correlation to the S&P 500.

To see this factor structure statistically, use `spx_returns_weekly.xlsx`, to do a principal component analysis (PCA) of S&P 500 returns.

### 3.1 

Calculate the variance explained by each PCA factor. List the top 5. How important is the first factor in explaining everything? Are the other factors important?

#### Hint

If the returns are in a pandas dataframe, `rets`, try using

`from sklearn.decomposition import PCA`

`pca = PCA(svd_solver='full')`

`pca.fit(rets)`

`pca.explained_variance_ratio_[0:5]`

### 3.2

Calculate the weights of the first PCA factor.

* Calculate the PCA loadings
* Normalize them to sum to 1

Make a bar chart of these (451!) weights.

How would you describe this factor? For instance, is it long-only? Is it long-short many securities?

Do the same for the second factor. How would you describe it?

#### Hint

The first row of `pca.components_` is what you need.

### 3.3

How similar is the first PC to SPY? 

1. Load SPY returns from `equity_data.xlsx`, tab `etf history`. Resample SPY into weekly returns.
2. Use the weights for the first PC factor and multiply them by the securities to get the timeseries of PC 1 factor returns.
3. Compare the (weekly-Friday) PC factor returns with the (weekly-Friday) SPY returns.

What is the correlation between them?

#### Hint

Try `spy.resample('W-Friday').last().pct_change()` if `spy` is the pandas dataframe with spy prices.

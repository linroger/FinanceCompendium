---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: M.5. Equity Indexes and ETFs
---

# M.5. Equity Indexes and ETFs

## Markets Foundations

### UChicago Financial Mathematics

#### September 2022

* Mark Hendricks
* hendricks@uchicago.edu

```python
import pandas as pd
import numpy as np
import datetime
import warnings

from sklearn.linear_model import LinearRegression
from sklearn.decomposition import PCA
from scipy.optimize import minimize

import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)

import seaborn as sns

import sys
sys.path.insert(0, '../cmds')
from utils import *
from portfolio import *
```

# Equities

## Capital Structure

### Funding

Assets are funded by investors, primarily via one of two types of investor claims:

* debt - senior, fixed (scheduled) claim
* equity - junior, residual claim

This is true of any assets, including

* publicly-listed companies
* privately-listed companies
* private equity funds
* hedge funds

### Stocks

Stocks are equity claims on assets of a corporation.

* Stockholders have a junior claim on the assets and income of the firm.
* Namely, they receive whatever is left over after all other claimants (suppliers, tax collectors, creditors, etc.) have been paid.
* The firm can pay out the residual as dividends or reinvest it in the firm which increases the value of the shares.

### Limited Liability

Limited liability means that shareholders are not accountable for a firm's obligations.

* Losses are limited to the original investment.
* Equity claim is similar to a call option on a firm's overall value.
* Compare this to unincorporated businesses where owners are personally liable.

### Market size and ownership

Of all types of capital market securities, stocks have the most market value.

* However, annual new issues are much smaller than that of corporate bonds.
* Annual new issues are less than 1% of the market value of equities.
* About half of stocks are held by individuals. 
* The other half are held by institutional investors such as pension funds, mutual funds, and insurance companies.

## Types of stock

Consider two types of stock.

* **Common stock** is a simple equity claim. It may or may not have voting rights.
* **Preferred stock** is like a hybrid of equity and debt. Like debt, it has no voting rights. 

If no specification is made, "stock" typically refers to common stock, a pure equity claim.

### Preferred stock

Consider some ways preferred is like debt and also equity.

* It has a stated dividend rate, which is similar to a coupon rate on a bond.
* Unlike a bond, the dividend does not have to be paid.
* However, common stockholders cannot be paid dividends until
preferred dividends are paid.
* In fact, usually the cumulative preferred dividend must be paid first.

#### Tax Treatment

Preferred stock has favorable tax treatment, which leads to special demand and supply of it.

### Dual Shares

Some firms have dual share classes, such as an A and B series of shares. Motives include:

- Concentrating control by giving a smaller class much higher voting power
- Ease issues with listing on various exchanges

Examples include Google, Facebook, and Berkshire Hathaway

## Stock Categorization

In trading, it is common to group equities by

- geographical location
- sector
- size 
- style

A few comments on this.

### Cap

The term "cap" typically refers to **equity capitalization** which is the total **market** value of the firm's equity.

Thus, a stock will be bucketed as **small cap, mid cap, large cap**.

### Sector / Industry

There are a number of common sector/industry classifications.

The Global Industry Classification Standard (GICS) is a popular classification, but there are many.

GICS has a top level of 11 Sectors subdivided by Industry Group, Industry and Sub-Industry.

Reference: https://www.msci.com/our-solutions/indexes/gics

## Style

**Style analysis** refers to grouping stocks by various measures.

### Book Metrics

"Book" measures refer to data from financial reporting (accounting).

- These book measures are not the same as actual market values.
- This is especially important to note for the book value of equity, the *book* capitalization.

#### Financial Statements
- balance sheet
- income statement
- statement of cashflows

#### Earnings

For now, all that will be noted about earnings is that they are a book (accounting) measure of profits, **not an actual cashflow.**

Dividends are an actual market cashflow.

### Book-to-Market

The book-to-market (B/M) ratio is the market value of equity divided by the book (balance sheet) value of equity.

High B/M means strong (accounting) fundamentals per market-value-dollar.

- High B/M are value stocks.
- Low B/M are growth stocks.

### Value and Growth

Many other measures of value based on some cash-flow or accounting value per market price.

- Earnings-price is a popular metric beyond value portfolios. Like B/M, the E/P ratio is accounting value per market valuation.
- EBITDA-price is similar, but uses accounting measure of profit that ignores taxes, financing, and depreciation.
- Dividend-price uses common dividends, but less useful for individual firms as many have no dividends.

Many competing claims to special/better measure of 'value'.

### Other Styles

Group stocks by

- Price movement. Momentum, mean reversion, etc.
- Volatility. Realized return volatility, market beta, etc.
- Profitability.*
- Investment.*

*As measured in financial statements.

# Returns and Trading

## Common Stock Returns

Unlike bonds, common stocks do NOT have a

* maturity
* (relevant) face value

Rather, the notable features determining returns are

* dividends
* price appreciation

## Dividends

```python
INFILE = f'../data/equity_data.xlsx'
TICK = 'AAPL'
TICKETF = 'SPY'
TICKIDX = 'SPX'
```

```python
dvds = pd.read_excel(INFILE,sheet_name=f'dividends {TICK}').set_index('record_date')
dvds[dvds['dividend_type']=='Regular Cash'].head(8).style.set_caption(f'Dividends for {TICK}.')
```

<style type="text/css">
</style>
<table id="T_b2acc">
  <caption>Dividends for AAPL.</caption>
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_b2acc_level0_col0" class="col_heading level0 col0" >declared_date</th>
	  <th id="T_b2acc_level0_col1" class="col_heading level0 col1" >ex_date</th>
	  <th id="T_b2acc_level0_col2" class="col_heading level0 col2" >payable_date</th>
	  <th id="T_b2acc_level0_col3" class="col_heading level0 col3" >dividend_amount</th>
	  <th id="T_b2acc_level0_col4" class="col_heading level0 col4" >dividend_frequency</th>
	  <th id="T_b2acc_level0_col5" class="col_heading level0 col5" >dividend_type</th>
	</tr>
	<tr>
	  <th class="index_name level0" >record_date</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_b2acc_level0_row0" class="row_heading level0 row0" >2022-05-09 00:00:00</th>
	  <td id="T_b2acc_row0_col0" class="data row0 col0" >2022-04-28 00:00:00</td>
	  <td id="T_b2acc_row0_col1" class="data row0 col1" >2022-05-06 00:00:00</td>
	  <td id="T_b2acc_row0_col2" class="data row0 col2" >2022-05-12 00:00:00</td>
	  <td id="T_b2acc_row0_col3" class="data row0 col3" >0.230000</td>
	  <td id="T_b2acc_row0_col4" class="data row0 col4" >Quarter</td>
	  <td id="T_b2acc_row0_col5" class="data row0 col5" >Regular Cash</td>
	</tr>
	<tr>
	  <th id="T_b2acc_level0_row1" class="row_heading level0 row1" >2022-02-07 00:00:00</th>
	  <td id="T_b2acc_row1_col0" class="data row1 col0" >2022-01-27 00:00:00</td>
	  <td id="T_b2acc_row1_col1" class="data row1 col1" >2022-02-04 00:00:00</td>
	  <td id="T_b2acc_row1_col2" class="data row1 col2" >2022-02-10 00:00:00</td>
	  <td id="T_b2acc_row1_col3" class="data row1 col3" >0.220000</td>
	  <td id="T_b2acc_row1_col4" class="data row1 col4" >Quarter</td>
	  <td id="T_b2acc_row1_col5" class="data row1 col5" >Regular Cash</td>
	</tr>
	<tr>
	  <th id="T_b2acc_level0_row2" class="row_heading level0 row2" >2021-11-08 00:00:00</th>
	  <td id="T_b2acc_row2_col0" class="data row2 col0" >2021-10-28 00:00:00</td>
	  <td id="T_b2acc_row2_col1" class="data row2 col1" >2021-11-05 00:00:00</td>
	  <td id="T_b2acc_row2_col2" class="data row2 col2" >2021-11-11 00:00:00</td>
	  <td id="T_b2acc_row2_col3" class="data row2 col3" >0.220000</td>
	  <td id="T_b2acc_row2_col4" class="data row2 col4" >Quarter</td>
	  <td id="T_b2acc_row2_col5" class="data row2 col5" >Regular Cash</td>
	</tr>
	<tr>
	  <th id="T_b2acc_level0_row3" class="row_heading level0 row3" >2021-08-09 00:00:00</th>
	  <td id="T_b2acc_row3_col0" class="data row3 col0" >2021-07-27 00:00:00</td>
	  <td id="T_b2acc_row3_col1" class="data row3 col1" >2021-08-06 00:00:00</td>
	  <td id="T_b2acc_row3_col2" class="data row3 col2" >2021-08-12 00:00:00</td>
	  <td id="T_b2acc_row3_col3" class="data row3 col3" >0.220000</td>
	  <td id="T_b2acc_row3_col4" class="data row3 col4" >Quarter</td>
	  <td id="T_b2acc_row3_col5" class="data row3 col5" >Regular Cash</td>
	</tr>
	<tr>
	  <th id="T_b2acc_level0_row4" class="row_heading level0 row4" >2021-05-10 00:00:00</th>
	  <td id="T_b2acc_row4_col0" class="data row4 col0" >2021-04-28 00:00:00</td>
	  <td id="T_b2acc_row4_col1" class="data row4 col1" >2021-05-07 00:00:00</td>
	  <td id="T_b2acc_row4_col2" class="data row4 col2" >2021-05-13 00:00:00</td>
	  <td id="T_b2acc_row4_col3" class="data row4 col3" >0.220000</td>
	  <td id="T_b2acc_row4_col4" class="data row4 col4" >Quarter</td>
	  <td id="T_b2acc_row4_col5" class="data row4 col5" >Regular Cash</td>
	</tr>
	<tr>
	  <th id="T_b2acc_level0_row5" class="row_heading level0 row5" >2021-02-08 00:00:00</th>
	  <td id="T_b2acc_row5_col0" class="data row5 col0" >2021-01-27 00:00:00</td>
	  <td id="T_b2acc_row5_col1" class="data row5 col1" >2021-02-05 00:00:00</td>
	  <td id="T_b2acc_row5_col2" class="data row5 col2" >2021-02-11 00:00:00</td>
	  <td id="T_b2acc_row5_col3" class="data row5 col3" >0.205000</td>
	  <td id="T_b2acc_row5_col4" class="data row5 col4" >Quarter</td>
	  <td id="T_b2acc_row5_col5" class="data row5 col5" >Regular Cash</td>
	</tr>
	<tr>
	  <th id="T_b2acc_level0_row6" class="row_heading level0 row6" >2020-11-09 00:00:00</th>
	  <td id="T_b2acc_row6_col0" class="data row6 col0" >2020-10-29 00:00:00</td>
	  <td id="T_b2acc_row6_col1" class="data row6 col1" >2020-11-06 00:00:00</td>
	  <td id="T_b2acc_row6_col2" class="data row6 col2" >2020-11-12 00:00:00</td>
	  <td id="T_b2acc_row6_col3" class="data row6 col3" >0.205000</td>
	  <td id="T_b2acc_row6_col4" class="data row6 col4" >Quarter</td>
	  <td id="T_b2acc_row6_col5" class="data row6 col5" >Regular Cash</td>
	</tr>
	<tr>
	  <th id="T_b2acc_level0_row7" class="row_heading level0 row7" >2020-08-10 00:00:00</th>
	  <td id="T_b2acc_row7_col0" class="data row7 col0" >2020-07-30 00:00:00</td>
	  <td id="T_b2acc_row7_col1" class="data row7 col1" >2020-08-07 00:00:00</td>
	  <td id="T_b2acc_row7_col2" class="data row7 col2" >2020-08-13 00:00:00</td>
	  <td id="T_b2acc_row7_col3" class="data row7 col3" >0.205000</td>
	  <td id="T_b2acc_row7_col4" class="data row7 col4" >Quarter</td>
	  <td id="T_b2acc_row7_col5" class="data row7 col5" >Regular Cash</td>
	</tr>
  </tbody>
</table>

```python
spy = pd.read_excel(INFILE,sheet_name=f'{TICKETF} history').set_index('date')
spy['EQY_DVD_YLD_IND'].rolling(21).mean().plot(title='History S&P 500 Dividends (per price)',ylabel=('dividend yield (SPY)'));
```

![png](output_16_0.png)

## Corporate Actions

```python
prices = pd.read_excel(INFILE,sheet_name=f'prices {TICK}').set_index('date')

prices['Unadjusted Price'].plot(title=TICK, ylabel='price', legend=['unadjusted price']);
```

![png](output_18_0.png)

What is going on here? 

- Has Apple really shown so little growth since 2005?
- Has Apple really crashed so hard?

```python
dvds[dvds['dividend_type']=='Stock Split'].rename(columns={'dividend_amount':'split ratio'}).loc[:,['split ratio']].style.set_caption(f'{TICK}')
```

<style type="text/css">
</style>
<table id="T_a32db">
  <caption>AAPL</caption>
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_a32db_level0_col0" class="col_heading level0 col0" >split ratio</th>
	</tr>
	<tr>
	  <th class="index_name level0" >record_date</th>
	  <th class="blank col0" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_a32db_level0_row0" class="row_heading level0 row0" >2020-08-24 00:00:00</th>
	  <td id="T_a32db_row0_col0" class="data row0 col0" >4.000000</td>
	</tr>
	<tr>
	  <th id="T_a32db_level0_row1" class="row_heading level0 row1" >2014-06-02 00:00:00</th>
	  <td id="T_a32db_row1_col0" class="data row1 col0" >7.000000</td>
	</tr>
	<tr>
	  <th id="T_a32db_level0_row2" class="row_heading level0 row2" >2005-02-18 00:00:00</th>
	  <td id="T_a32db_row2_col0" class="data row2 col0" >2.000000</td>
	</tr>
	<tr>
	  <th id="T_a32db_level0_row3" class="row_heading level0 row3" >2000-05-19 00:00:00</th>
	  <td id="T_a32db_row3_col0" class="data row3 col0" >2.000000</td>
	</tr>
	<tr>
	  <th id="T_a32db_level0_row4" class="row_heading level0 row4" >1987-05-15 00:00:00</th>
	  <td id="T_a32db_row4_col0" class="data row4 col0" >2.000000</td>
	</tr>
  </tbody>
</table>

## Adjusted Prices

The **adjusted** price is

* the same as the actual price on the final value of the timeseries.
* readjusted backward through time, so earlier dates may diverge greatly
* ensures a historically accurate return series can be computed

The adjusted price incorporates

* regular dividends
* special dividends
* stock splits

```python
prices[['Unadjusted Price','Adjusted Price']].plot(title=TICK, ylabel='price');
```

![png](output_22_0.png)

### <span style="background-color:LightSteelBlue">Technical Point: Computation of adjusted price</span>

Notation:

$P$: unadjusted price

$P^*$: adjusted price

$D$: dividend

We want an adjusted price series such that returns are correct, without further adjustment:

$$\frac{P_{t+1} + D_{t+1}}{P_t} = \frac{P_{t+1}^*}{P^*_t}$$

#### Footnote

Adjusted prices (for dividends) are reported in a way that is slightly biased, and does not lead to a completely equivalent return on dividend days. Data providers typically calculate:

$$P^*_t = P_t\prod_{t_i}A_i $$

where the $t_i$ denote the ex-dividend dates such that $t_i > t$. Namely, each dividend causes an additional adjustment factor, $A_i$ for all dates preceding the dividend.

The scaling is given by

$$A_i = 1 - \frac{D_{t_i}}{P_{{t_i}-1}}$$

However, the conversion factor needed to ensure the adjusted series gives identical returns is

$$A_i = \frac{P_{t_i}}{P_{t_i}+D_{t_i}}$$

In practice, this difference is very small, and everyone uses adjusted returns without worrying about this bias.

Still, if you are calculating a dividend-adjusted return by hand from the unadjusted prices, it will not quite match the price growth of the adjusted-price series.

## Trading Stocks

Issues pertinent to trading, including liquidity and market structure are a focus of Module E. 

Here, these issues are touched briefly.

### Exchanges and Liquidity

Stocks largely trade on **exchanges**.

- contrast this with bonds, which are OTC

Accordingly, stocks are more liquid.

- Firms may have many (even dozens) of bond issues of various sizes and coupons.
- In contrast, they typically have one class of shares

Stock data is easy to get

- Good data on bonds and derivatives often requires subscription to proprietary datasets.
- Reasonably good data (current and historic) for stocks trading on large exchanges is available from many free sources.

### Liquidity and Fees

"Large cap" stocks tend to be quite liquid

- commissions and fees may be on the order of 1% of volume traded
- bid-ask spread depends on the amount
- slippage is the difference between the quoted price and the transacted price. 
- this is especially relevant for the market open, where the quoted price has sat all night

```python
metrics = pd.read_excel(INFILE,sheet_name=f'metrics {TICK}').set_index('date')
metrics.iloc[:,-1].rolling(21).mean().plot(ylim=[0,.05],title=f'Bid-Ask Spread ({TICK})', ylabel='ratio of spread to price');
```

![png](output_27_0.png)

### Shorting a Stock

**Shorting** a stock refers to taking a negative position in the stock as follows:
- borrow shares from a broker with the agreement to return them (plus interest) at a fixed time, $T_1$.
- sell the borrowed shares on the open market for $P_0$
- at $T_1$, buy shares on the open market for $P_1$
- use the shares to repay the broker

This leads to a gross profit/loss of $P_0-P_1$.

However, shorting the stock requires **being able to borrow it** from a broker.

- During times of dislocation or high volatility, this can be difficult.
- Holding extended short positions can incur high borrowing costs to undermine the approach.

```python
short = pd.read_excel(INFILE,sheet_name=f'short {TICK}').set_index('date')
short['SHORT_INT_RATIO'].rolling(12).mean().plot(title=f'12m Average of Short Interest ({TICK})',ylabel='Short Interest to Volume Traded');
```

![png](output_29_0.png)

### International Stocks

American Depository Receipts (ADR's) are certificates traded in U.S. markets which represent foreign stocks.

* ADR's are used to make it easier for foreign firms to register securities in the U.S.
* Most foreign stocks traded in U.S. markets use ADRs.
* Sometimes, these are called American Depository Shares, or ADS.

# Indexes

## The S&P 500

### Constituents

The S&P 500 is composed of 

- US-listed public equities
- Large market cap
- Liquid shares
- A few extra conditions on financials to try to eliminate excess turnover

For practical purposes, consider it as the largest 500 U.S. equities.

Reference: S&P Index methodology, pgs 6-10

https://www.spglobal.com/spdji/en/documents/methodologies/methodology-sp-us-indices.pdf?utm_source=pdf_brochure

<img src="../refs/sp500_constituents.png" width=1000 height=500 />

Source: https://finviz.com/map.ashx?t=sec

```python
ALTFILE = "../data/spx_returns_weekly.xlsx"
FREQ = 52
rets_spx = pd.read_excel(ALTFILE, sheet_name="s&p500 rets").set_index("date")

sns.heatmap(rets_spx.corr().replace(1,np.nan))
plt.title('Correlation: S&P500 Members')
plt.show()
```

![png](output_34_0.png)

```python
temp = pd.concat([rets_spx.mean()*FREQ, rets_spx.std()*FREQ**.5],axis=1)
temp.columns=['mean','vol']
temp.plot.scatter(x='vol',y='mean',xlim=(.15,.5),ylim=(-.1,.55));
plt.title('Mean and Vol: S&P500 Members');
```

![png](output_35_0.png)

### There is an outlier over this period

The outlier is ENPH 

- joined the S&P 500 at the end of 2020
- energy firm
- volatile and high-trending returns

```python
temp.plot.scatter(x='vol',y='mean');
plt.title('Mean and Vol: S&P500 Members');
```

![png](output_37_0.png)

## Additional U.S. Equity Indexes

Other U.S. equity indexes include many from the S&P:

- S&P 100 - mega cap
- S&P 1500 - large and medium cap
- S&P Sector Indexes

Also consider

- Russell 1000
- Russell 2000
- Wilshire 5000

### Dow Jones Industrial

In financial news, you will often see reference to the Dow Jones Industrial Average (DJIA)

- You will rarely (if ever) use this
- Prominent for historical reasons, but not a good choice for most applications/analysis

Problems with using it include

- Index of only 30 "prominent" equities. 
- Weighting is by price, not by market cap. 
- Turnover may be too slow.

**The DJIA is highly correlated to the S&P500, which is probably the only info of use to us in the index.**

## Exchange-based Indexes

An important set of indexes are those that include stocks trading on a particular **exchange**.

* NYSE Composite (New York)
* NASDAQ Composite (New York)
* FTSE 100 (London)
* Nikkei 225 (Tokyo)
* DAX (German)
* Hang Seng (Hong Kong)

### Additional International Equity Indexes

MSCI indexes provide a wide number of indexes based on global regions and other global designations.

## Style Indexes

There are numerous style indexes used as benchmarks for various types of equity trading strategies.

By far, these indexes focus on

* small vs large (size)
* value vs growth (style)

Consider the graphic from Morningstar

<img src="../refs/morningstar_styles.png"/>

Source: https://www.morningstar.com/products/indexes-style

### Fama-French Factors

The Fama-French Factors serve as popular indexes for these styles.

- Particularly for historical research

Source: https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html

```python
index_info = pd.read_excel(INFILE,sheet_name='index info').set_index('ticker')
index_info
```

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr style="text-align: right;">
	  <th></th>
	  <th>name</th>
	  <th>count_index_members</th>
	</tr>
	<tr>
	  <th>ticker</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPX</th>
	  <td>S&amp;P 500 INDEX</td>
	  <td>503</td>
	</tr>
	<tr>
	  <th>NYA</th>
	  <td>NYSE COMPOSITE INDEX</td>
	  <td>1966</td>
	</tr>
	<tr>
	  <th>CCMP</th>
	  <td>NASDAQ COMPOSITE</td>
	  <td>3763</td>
	</tr>
	<tr>
	  <th>RIY</th>
	  <td>RUSSELL 1000 INDEX</td>
	  <td>1019</td>
	</tr>
	<tr>
	  <th>RTY</th>
	  <td>RUSSELL 2000 INDEX</td>
	  <td>1986</td>
	</tr>
	<tr>
	  <th>INDU</th>
	  <td>DOW JONES INDUS. AVG</td>
	  <td>30</td>
	</tr>
	<tr>
	  <th>DJITR</th>
	  <td>DJ INDUSTRIAL AVERAGE TR</td>
	  <td>30</td>
	</tr>
	<tr>
	  <th>NKY</th>
	  <td>NIKKEI 225</td>
	  <td>225</td>
	</tr>
	<tr>
	  <th>His</th>
	  <td>HANG SENG INDEX</td>
	  <td>69</td>
	</tr>
	<tr>
	  <th>UKX</th>
	  <td>FTSE 100 INDEX</td>
	  <td>101</td>
	</tr>
	<tr>
	  <th>DAX</th>
	  <td>DAX INDEX</td>
	  <td>40</td>
	</tr>
	<tr>
	  <th>SVX</th>
	  <td>S&amp;P 500 Value</td>
	  <td>446</td>
	</tr>
	<tr>
	  <th>SGX</th>
	  <td>S&amp;P 500 Growth</td>
	  <td>240</td>
	</tr>
  </tbody>
</table>
</div>

```python
cols_international = ['NKY','HSI','UKX','DAX']
cols_forward = ['NKY','HSI']

indexes = pd.read_excel(INFILE,sheet_name=f'index history').set_index('date')
rets_index = indexes.pct_change().dropna()
rets_index = pd.concat([rets_index.drop(columns=cols_international),rets_index[cols_international]],axis=1)
rets_index[cols_forward] = rets_index[cols_forward].shift(-1)
```

```python
sns.heatmap(rets_index.corr(),annot=True);
plt.title('Correlation across Equity Indices');
```

![png](output_44_0.png)

# Exchange-Traded Funds

An **exchange-traded-fund**

* Trades on a stock exchange
* Shares of the fund which may hold a variety of assets
* Can be traded intra-day

## Questions
* What is an ETF?
* How does an ETF compare to Mutual Funds? 
* Why trade ETF's?

## History

ETFs Began trading in the U.S. in 1993.

* Active-ETF's approved in 2008.
* Around 2,000 ETF's trade in U.S. markets.

## Variety

ETFs include funds

* passively tracking an index of equities
* actively tracking an equity style or trading strategy (smart beta)
* alternative assets

Most ETF's track an index. ie. S&P 500, U.S. Treasury rate, BBB-AAA credit spread, etc.

* Target wide variety of equity sectors and geographies.
* Funds for a variety of asset classes: equities, oil, grains, credit instruments, etc.
* Active ETF's tracking a strategy.

Note that the fund expenses and liquidity vary considerably across ETFs.

Consider a few examples.

```python
etf_info = pd.read_excel(INFILE,sheet_name=f'etf info').set_index('ticker')
etf_info[['fund_expense_ratio','eqy_dvd_yld_ind']] /= 100
etf_info.style.format({'fund_expense_ratio':'{:.2%}','eqy_dvd_yld_ind':'{:.2%}'})
```

<style type="text/css">
</style>
<table id="T_4e585">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_4e585_level0_col0" class="col_heading level0 col0" >total_number_of_holdings_in_port</th>
	  <th id="T_4e585_level0_col1" class="col_heading level0 col1" >fund_expense_ratio</th>
	  <th id="T_4e585_level0_col2" class="col_heading level0 col2" >fund_asset_class_focus</th>
	  <th id="T_4e585_level0_col3" class="col_heading level0 col3" >fund_objective_long</th>
	  <th id="T_4e585_level0_col4" class="col_heading level0 col4" >eqy_dvd_yld_ind</th>
	</tr>
	<tr>
	  <th class="index_name level0" >ticker</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_4e585_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_4e585_row0_col0" class="data row0 col0" >507</td>
	  <td id="T_4e585_row0_col1" class="data row0 col1" >0.09%</td>
	  <td id="T_4e585_row0_col2" class="data row0 col2" >Equity</td>
	  <td id="T_4e585_row0_col3" class="data row0 col3" >Large-cap</td>
	  <td id="T_4e585_row0_col4" class="data row0 col4" >1.61%</td>
	</tr>
	<tr>
	  <th id="T_4e585_level0_row1" class="row_heading level0 row1" >UPRO</th>
	  <td id="T_4e585_row1_col0" class="data row1 col0" >522</td>
	  <td id="T_4e585_row1_col1" class="data row1 col1" >0.92%</td>
	  <td id="T_4e585_row1_col2" class="data row1 col2" >Equity</td>
	  <td id="T_4e585_row1_col3" class="data row1 col3" >Large-cap</td>
	  <td id="T_4e585_row1_col4" class="data row1 col4" >0.36%</td>
	</tr>
	<tr>
	  <th id="T_4e585_level0_row2" class="row_heading level0 row2" >EEM</th>
	  <td id="T_4e585_row2_col0" class="data row2 col0" >1237</td>
	  <td id="T_4e585_row2_col1" class="data row2 col1" >0.68%</td>
	  <td id="T_4e585_row2_col2" class="data row2 col2" >Equity</td>
	  <td id="T_4e585_row2_col3" class="data row2 col3" >Emerging Markets</td>
	  <td id="T_4e585_row2_col4" class="data row2 col4" >1.83%</td>
	</tr>
	<tr>
	  <th id="T_4e585_level0_row3" class="row_heading level0 row3" >VGK</th>
	  <td id="T_4e585_row3_col0" class="data row3 col0" >1379</td>
	  <td id="T_4e585_row3_col1" class="data row3 col1" >0.08%</td>
	  <td id="T_4e585_row3_col2" class="data row3 col2" >Equity</td>
	  <td id="T_4e585_row3_col3" class="data row3 col3" >European Region</td>
	  <td id="T_4e585_row3_col4" class="data row3 col4" >7.83%</td>
	</tr>
	<tr>
	  <th id="T_4e585_level0_row4" class="row_heading level0 row4" >EWJ</th>
	  <td id="T_4e585_row4_col0" class="data row4 col0" >242</td>
	  <td id="T_4e585_row4_col1" class="data row4 col1" >0.49%</td>
	  <td id="T_4e585_row4_col2" class="data row4 col2" >Equity</td>
	  <td id="T_4e585_row4_col3" class="data row4 col3" >Japan</td>
	  <td id="T_4e585_row4_col4" class="data row4 col4" >2.04%</td>
	</tr>
	<tr>
	  <th id="T_4e585_level0_row5" class="row_heading level0 row5" >IYR</th>
	  <td id="T_4e585_row5_col0" class="data row5 col0" >90</td>
	  <td id="T_4e585_row5_col1" class="data row5 col1" >0.41%</td>
	  <td id="T_4e585_row5_col2" class="data row5 col2" >Equity</td>
	  <td id="T_4e585_row5_col3" class="data row5 col3" >Real Estate</td>
	  <td id="T_4e585_row5_col4" class="data row5 col4" >1.46%</td>
	</tr>
	<tr>
	  <th id="T_4e585_level0_row6" class="row_heading level0 row6" >DBC</th>
	  <td id="T_4e585_row6_col0" class="data row6 col0" >30</td>
	  <td id="T_4e585_row6_col1" class="data row6 col1" >0.88%</td>
	  <td id="T_4e585_row6_col2" class="data row6 col2" >Commodity</td>
	  <td id="T_4e585_row6_col3" class="data row6 col3" >Broad Based</td>
	  <td id="T_4e585_row6_col4" class="data row6 col4" >nan%</td>
	</tr>
	<tr>
	  <th id="T_4e585_level0_row7" class="row_heading level0 row7" >HYG</th>
	  <td id="T_4e585_row7_col0" class="data row7 col0" >1273</td>
	  <td id="T_4e585_row7_col1" class="data row7 col1" >0.48%</td>
	  <td id="T_4e585_row7_col2" class="data row7 col2" >Fixed Income</td>
	  <td id="T_4e585_row7_col3" class="data row7 col3" >Corporate</td>
	  <td id="T_4e585_row7_col4" class="data row7 col4" >5.21%</td>
	</tr>
	<tr>
	  <th id="T_4e585_level0_row8" class="row_heading level0 row8" >TIP</th>
	  <td id="T_4e585_row8_col0" class="data row8 col0" >52</td>
	  <td id="T_4e585_row8_col1" class="data row8 col1" >0.19%</td>
	  <td id="T_4e585_row8_col2" class="data row8 col2" >Fixed Income</td>
	  <td id="T_4e585_row8_col3" class="data row8 col3" >Inflation Protected</td>
	  <td id="T_4e585_row8_col4" class="data row8 col4" >5.93%</td>
	</tr>
	<tr>
	  <th id="T_4e585_level0_row9" class="row_heading level0 row9" >BITO</th>
	  <td id="T_4e585_row9_col0" class="data row9 col0" >5</td>
	  <td id="T_4e585_row9_col1" class="data row9 col1" >0.95%</td>
	  <td id="T_4e585_row9_col2" class="data row9 col2" >Alternative</td>
	  <td id="T_4e585_row9_col3" class="data row9 col3" >nan</td>
	  <td id="T_4e585_row9_col4" class="data row9 col4" >nan%</td>
	</tr>
  </tbody>
</table>

# Mutual Funds vs ETFs

ETF's directly trade unit blocks of the assets, for authorized participants.

* Allows intra-day trading.
* No cash-management for redemption, load, fee, etc.
* No direct redemption means favorable capital-gains treatment.

Liquidity

* Reduce idiosyncratic risk.
* Exchange-traded (U.S.)
* Allow for wide variety of trading strategies.

## ETF Share Creation / Redemption

How does an ETF achieve exchange trading? Why doesn't it run into the same issues of a mutual fund?

* Authorized Participants and market-making
* Arbitrage to keep price near NAV

The Greyscale Bitcoin Trust

# Indexes vs ETFs

## Timing

Above we saw low correlation between equity indexes in the U.S. versus Europe, partly due to asynchronous trading across time-zones.

Below, note that the correlation between SPY, VGK, and EWJ is much higher.

```python
etfs = pd.read_excel(INFILE,sheet_name=f'etf history').set_index('date')
rets_etf = etfs.pct_change().dropna()
sns.heatmap(rets_etf.corr(),annot=True);
plt.title('Correlation across ETFs');
```

![png](output_50_0.png)

# SPX vs SPY?

If we need a benchmark for a strategy, should we use SPX or SPY?

Why do they seem to have different return statistics below?

```python
spy_vs_spx = pd.concat([etfs[['SPY']],indexes[['SPX']]],axis=1).dropna().pct_change()
performanceMetrics(spy_vs_spx,annualization=252).style.format('{:.1%}')
```

<style type="text/css">
</style>
<table id="T_ac0f4">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_ac0f4_level0_col0" class="col_heading level0 col0" >Mean</th>
	  <th id="T_ac0f4_level0_col1" class="col_heading level0 col1" >Vol</th>
	  <th id="T_ac0f4_level0_col2" class="col_heading level0 col2" >Sharpe</th>
	  <th id="T_ac0f4_level0_col3" class="col_heading level0 col3" >Min</th>
	  <th id="T_ac0f4_level0_col4" class="col_heading level0 col4" >Max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_ac0f4_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_ac0f4_row0_col0" class="data row0 col0" >11.0%</td>
	  <td id="T_ac0f4_row0_col1" class="data row0 col1" >18.9%</td>
	  <td id="T_ac0f4_row0_col2" class="data row0 col2" >58.1%</td>
	  <td id="T_ac0f4_row0_col3" class="data row0 col3" >-10.9%</td>
	  <td id="T_ac0f4_row0_col4" class="data row0 col4" >14.5%</td>
	</tr>
	<tr>
	  <th id="T_ac0f4_level0_row1" class="row_heading level0 row1" >SPX</th>
	  <td id="T_ac0f4_row1_col0" class="data row1 col0" >9.1%</td>
	  <td id="T_ac0f4_row1_col1" class="data row1 col1" >18.6%</td>
	  <td id="T_ac0f4_row1_col2" class="data row1 col2" >48.7%</td>
	  <td id="T_ac0f4_row1_col3" class="data row1 col3" >-12.0%</td>
	  <td id="T_ac0f4_row1_col4" class="data row1 col4" >11.6%</td>
	</tr>
  </tbody>
</table>

```python
(spy_vs_spx+1).cumprod().plot(title='ETF vs Index',ylabel='cumulative return');
```

![png](output_53_0.png)

# Levered ETFs

Levered ETFs seek to provide levered exposure to an index, such as the SPX.

These include inverse-levered ETFs.

```python
spy_vs_letf = etfs[['SPY','UPRO']].dropna()

temp = (spy_vs_letf.pct_change()+1).cumprod()
temp.plot(title='Cumulative Returns: SPY vs UPRO (3x)',ylabel='cumulative return');
```

![png](output_55_0.png)

```python
fig, ax = plt.subplots()
temp[['SPY']].plot(ax=ax,ylabel='SPY');
ax.legend(['SPY (1x)'],loc='upper left')
ax2 = plt.twinx(ax=ax)
temp[['UPRO']].plot(ax=ax2,color='r',ylabel='UPRO: 3x');
ax2.legend(['UPRO (3x)'],loc='lower right');
plt.title('Cumulative Returns: SPY vs UPRO (3x)');
```

![png](output_56_0.png)

```python
performanceMetrics(spy_vs_letf.pct_change(),annualization=252).style.format('{:.1%}')
```

<style type="text/css">
</style>
<table id="T_eb7da">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_eb7da_level0_col0" class="col_heading level0 col0" >Mean</th>
	  <th id="T_eb7da_level0_col1" class="col_heading level0 col1" >Vol</th>
	  <th id="T_eb7da_level0_col2" class="col_heading level0 col2" >Sharpe</th>
	  <th id="T_eb7da_level0_col3" class="col_heading level0 col3" >Min</th>
	  <th id="T_eb7da_level0_col4" class="col_heading level0 col4" >Max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_eb7da_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_eb7da_row0_col0" class="data row0 col0" >14.3%</td>
	  <td id="T_eb7da_row0_col1" class="data row0 col1" >17.3%</td>
	  <td id="T_eb7da_row0_col2" class="data row0 col2" >82.4%</td>
	  <td id="T_eb7da_row0_col3" class="data row0 col3" >-10.9%</td>
	  <td id="T_eb7da_row0_col4" class="data row0 col4" >9.1%</td>
	</tr>
	<tr>
	  <th id="T_eb7da_level0_row1" class="row_heading level0 row1" >UPRO</th>
	  <td id="T_eb7da_row1_col0" class="data row1 col0" >40.0%</td>
	  <td id="T_eb7da_row1_col1" class="data row1 col1" >52.1%</td>
	  <td id="T_eb7da_row1_col2" class="data row1 col2" >76.7%</td>
	  <td id="T_eb7da_row1_col3" class="data row1 col3" >-34.9%</td>
	  <td id="T_eb7da_row1_col4" class="data row1 col4" >28.0%</td>
	</tr>
  </tbody>
</table>

# More on LETFs

For more on the subtleties and dangers of Levered ETFs, see the extra notebook.

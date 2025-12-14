---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: M.1. Treasury Debt
---

# M.1. Treasury Debt

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
from scipy.optimize import minimize

import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

import sys
sys.path.insert(0, '../cmds')
from treasury_cmds import *
```

# Data Source

CRSP Treasury Monthly Release

accessed via WRDS

For any given date, obtain quotes for nearly every issued Treasury.

In particular, 

* Bills, Notes, Bonds
* TIPS

In the analysis below, we exclude TIPS to focus on nominal rates.

The data set does not include Floating Rate Notes (FRNs).

```python
QUOTE_DATE = '2021-12-31'

filepath_rawdata = f'../data/treasury_quotes_{QUOTE_DATE}.xlsx'
rawdata = pd.read_excel(filepath_rawdata,sheet_name='quotes')
rawdata.columns = rawdata.columns.str.upper()
rawdata.sort_values('TMATDT',inplace=True)
rawdata.set_index('KYTREASNO',inplace=True)
```

```python
t_check = rawdata['CALDT'].values[0]
if rawdata['CALDT'].eq(t_check).all():
    t_current = t_check
else:
    warnings.warn('Quotes are from multiple dates.')
    t_current = None
```

```python
f'Analysis based on quotes from: {pd.to_datetime(t_current):%Y-%m-%d}'
```

    'Analysis based on quotes from: 2021-12-31'

```python
metrics = rawdata.copy()[['TDATDT','TMATDT','TCOUPRT','TDYLD','TDDURATN','TDPUBOUT']]
metrics.columns = ['issue date','maturity date','coupon rate','ytm','duration','outstanding']
metrics['ytm'] *= 365
metrics['duration'] /= 365
metrics['outstanding'] *= 1e6
metrics['maturity'] = get_maturity_delta(metrics['maturity date'], t_current)
metrics['price'] = (rawdata['TDBID'] + rawdata['TDASK'])/2 + rawdata['TDACCINT']
metrics['ask-bid'] = rawdata['TDASK'] - rawdata['TDBID']
metrics['next cashflow date'] = (calc_cashflows(rawdata) != 0).idxmax(1)
metrics = metrics[['issue date','maturity date','maturity','coupon rate','next cashflow date','price','ytm','ask-bid']]
```

```python
metrics
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
	  <th>issue date</th>
	  <th>maturity date</th>
	  <th>maturity</th>
	  <th>coupon rate</th>
	  <th>next cashflow date</th>
	  <th>price</th>
	  <th>ytm</th>
	  <th>ask-bid</th>
	</tr>
	<tr>
	  <th>KYTREASNO</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>207764</th>
	  <td>2021-09-07</td>
	  <td>2022-01-04</td>
	  <td>0.010951</td>
	  <td>0.000</td>
	  <td>2022-01-04</td>
	  <td>100.000333</td>
	  <td>-0.000304</td>
	  <td>0.000111</td>
	</tr>
	<tr>
	  <th>207737</th>
	  <td>2021-07-08</td>
	  <td>2022-01-06</td>
	  <td>0.016427</td>
	  <td>0.000</td>
	  <td>2022-01-06</td>
	  <td>99.999917</td>
	  <td>0.000051</td>
	  <td>0.000167</td>
	</tr>
	<tr>
	  <th>207765</th>
	  <td>2021-09-14</td>
	  <td>2022-01-11</td>
	  <td>0.030116</td>
	  <td>0.000</td>
	  <td>2022-01-11</td>
	  <td>99.999924</td>
	  <td>0.000025</td>
	  <td>0.000153</td>
	</tr>
	<tr>
	  <th>207738</th>
	  <td>2021-07-15</td>
	  <td>2022-01-13</td>
	  <td>0.035592</td>
	  <td>0.000</td>
	  <td>2022-01-13</td>
	  <td>99.998194</td>
	  <td>0.000507</td>
	  <td>0.000361</td>
	</tr>
	<tr>
	  <th>207308</th>
	  <td>2019-01-15</td>
	  <td>2022-01-15</td>
	  <td>0.041068</td>
	  <td>2.500</td>
	  <td>2022-01-15</td>
	  <td>101.234035</td>
	  <td>0.003837</td>
	  <td>0.031250</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>207680</th>
	  <td>2021-02-15</td>
	  <td>2051-02-15</td>
	  <td>29.125257</td>
	  <td>1.875</td>
	  <td>2022-02-15</td>
	  <td>99.820312</td>
	  <td>0.019043</td>
	  <td>0.078125</td>
	</tr>
	<tr>
	  <th>207681</th>
	  <td>2021-02-15</td>
	  <td>2051-02-15</td>
	  <td>29.125257</td>
	  <td>0.125</td>
	  <td>2022-02-15</td>
	  <td>118.437500</td>
	  <td>NaN</td>
	  <td>0.492188</td>
	</tr>
	<tr>
	  <th>207719</th>
	  <td>2021-05-15</td>
	  <td>2051-05-15</td>
	  <td>29.368925</td>
	  <td>2.375</td>
	  <td>2022-05-15</td>
	  <td>110.879921</td>
	  <td>0.018931</td>
	  <td>0.046875</td>
	</tr>
	<tr>
	  <th>207763</th>
	  <td>2021-08-15</td>
	  <td>2051-08-15</td>
	  <td>29.620808</td>
	  <td>2.000</td>
	  <td>2022-02-15</td>
	  <td>102.796875</td>
	  <td>0.018991</td>
	  <td>0.015625</td>
	</tr>
	<tr>
	  <th>207808</th>
	  <td>2021-11-15</td>
	  <td>2051-11-15</td>
	  <td>29.872690</td>
	  <td>1.875</td>
	  <td>2022-05-15</td>
	  <td>99.621072</td>
	  <td>0.018919</td>
	  <td>0.062500</td>
	</tr>
  </tbody>
</table>
<p>422 rows × 8 columns</p>
</div>

# Basics of Treasuries

## Timing

These quotes are at a single point in time.

But they describe bonds covering a wide range of 

* issuance dates
* maturity dates

```python
metrics.hist('issue date',bins=20)
metrics.hist('maturity date',bins=20)
plt.show()
```

![png](output_9_0.png)

![png](output_9_1.png)

## Coupon Rates

The quoted coupon is the annualized rate (per $100 face value).

It is paid semiannually.

The coupon rate is a feature set by the issuer (Treasury) at the time it is issued.

* These rates have varied widely over time.
* The Treasury sets coupons near the prevailing interest rate, (i.e. priced near par.)

In the figure below, note that coupon rates have declined over time.

```python
metrics.plot.scatter(x='issue date',y='coupon rate',title='Coupon Rates by Issue Date')
metrics.plot.scatter(x='maturity date',y='coupon rate',title='Coupon Rates by Maturity Date')
plt.show()
```

![png](output_11_0.png)

![png](output_11_1.png)

# Issue Types

|         | Maturity            | Coupon   | Coupon Frequency | Principal          |
|---------|---------------------|----------|------------------|--------------------|
| T-bills | 4, 8, 13, 26, 52 weeks | None     | None             | Fixed              |
| T-notes | 2, 5, 7, 10 years      | Fixed    | Semiannual       | Fixed              |
| T-bonds | 20, 30 years            | Fixed    | Semiannual       | Fixed              |
| TIPS    | 5, 10, 30 years     | Fixed    | Semiannual       | Inflation adjusted |
| FRNs    | 2 years             | Floating | Quarterly        | Fixed              |
| STRIPS  | Derived             | None     | None             | Fixed              |

Reference: 

https://www.treasurydirect.gov/indiv/research/indepth/tbills/res_tbill.htm

## Traditional Treasury Debt Securities

### Bills
* maturity $\le$ 1 year
* no coupon

### Notes
* 1 year $<$ maturity $\le 10$ years
* semiannual coupon

### Bonds
* maturity $> 10$ years
* semiannual coupon

## Others

### Treasury Inflation Protected Securities (TIPS)
* notes and bonds
* constant coupon rate
* inflatin-adjusted principal

### Floating Rate Notes (FRN)
* maturity of 2-years
* floating coupon
* quarterly payment

### STRIPS

STRIPS are registered securities created by "stripping" the coupons and principal from an issued Treasury.

This allows investors to trade **zero coupon** bonds with maturities beyond 1 year.

# Composition

<img src='../refs/treasury_debt_composition_MSPD.png'>

Reference: https://fiscaldata.treasury.gov/datasets/monthly-statement-public-debt/summary-of-treasury-securities-outstanding

# Dealers

Treasuries are bought by auction or in secondary markets.

* Primary dealers buy most new issues at auction and sell them all over the world.
* The New York Fed publishes a list of these dealers, along with a "Weekly Release of Primary Dealer Transactions".
* Include Citigroup, Deutsche Bank, Morgan Stanley, Nomura, UBS.
* Recent additions or removals?

## On-the-run

Suppose you are interested in investing in a treasury with 5 years until maturity.

Consider two alternatives:

* buy a newly issued 5-year note
* buy a 10-year note that was issued 5 years ago

The newly issued note is **on-the-run**.

A treasury which has aged is **off-the-run**.

This is an important consideration in liquidity.

* financial intermediaries have substantial business in selling the on-the-run while hedging with the off-the-run.
* in some sense, this is trading on liquidity.

```python
t_current = pd.to_datetime(QUOTE_DATE)
mats = get_maturity_delta(rawdata[['TMATDT']].astype('datetime64[ns]'), t_current=t_current)

metrics[mats['TMATDT'].between(0.9,1.1)].head(3)
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
	  <th>issue date</th>
	  <th>maturity date</th>
	  <th>maturity</th>
	  <th>coupon rate</th>
	  <th>next cashflow date</th>
	  <th>price</th>
	  <th>ytm</th>
	  <th>ask-bid</th>
	</tr>
	<tr>
	  <th>KYTREASNO</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>207634</th>
	  <td>2020-11-30</td>
	  <td>2022-11-30</td>
	  <td>0.914442</td>
	  <td>0.125</td>
	  <td>2022-05-30</td>
	  <td>99.791896</td>
	  <td>0.003643</td>
	  <td>0.031250</td>
	</tr>
	<tr>
	  <th>206914</th>
	  <td>2015-11-30</td>
	  <td>2022-11-30</td>
	  <td>0.914442</td>
	  <td>2.000</td>
	  <td>2022-05-30</td>
	  <td>101.642986</td>
	  <td>0.003852</td>
	  <td>0.054688</td>
	</tr>
	<tr>
	  <th>207801</th>
	  <td>2021-12-02</td>
	  <td>2022-12-01</td>
	  <td>0.917180</td>
	  <td>0.000</td>
	  <td>2022-12-01</td>
	  <td>99.739444</td>
	  <td>0.002843</td>
	  <td>0.009306</td>
	</tr>
  </tbody>
</table>
</div>

## Quoting Conventions 

Bonds differ in maturity and coupons, so looking at their relative prices is an apple-to-oranges comparison.

**Yields** are a form of price quote that accounts for the maturity and coupon.

### YTM 

The YTM discussed above is the most important yield. 

* It is used in **quoting** and **analyzing** bonds.
* The YTM is not necessarily a sufficient statistics for all dimensions of a bond--price, coupon, maturity. Thus, two with equivalent YTM may have important differences.

### Discount yield

The discount yield is important for quoting money-market prices.

* it is not popular for analyzing and research
* it is perhaps vestigial to a time when traders needed to calculate by hand and calculator

**Treasury bills** are typically quoted as discount yields.

Consider

* price of $P$
* face value of 100
* no coupon

Then,

$$\text{discount yield} = \left(\frac{360}{n}\right)\frac{100-P}{100}$$

#### Example

A T-bill maturing in 90 days with cash price of $P=99$ will have discount yield of 

$$Y_{\text{discount}} = 4\%$$

Note that it will be common to go the other way around: read quotes for 90-day T-bills of 4\% (or simply, "4") and understand that as an actual price of 99.

<img src='../refs/treasury_quotes_bills.png'>

Reference: Bloomberg `B Govt`

## Price Quotes

T-notes and T-bonds are quoted in thirty-seconds (1/32) of a dollar rather than hundredths of a dollar.

<img src='../refs/treasury_quotes_bonds_notes.png'>

Reference: Bloomberg `T Govt`

## Accrued Interest

Accrued interest is proportional to the coupon rate, based on the number of days since the last coupon (or, until the next coupon.)

```python
rawdata[['TDACCINT']].plot.hist(title='Accrued Interest',xlabel='accrued interest',ylabel='count');
```

![png](output_22_0.png)

### Day-Count Conventions

The accrued interest is computed with a day-count convention

$$\text{accrued interest} = \frac{\text{days counted}}{\text{days in reference period}} \times \text{interest in reference period}$$

Common day-count conventions include:

* actual/actual: treasury notes and bonds
* 30/360: corporate and municipal bonds
* actual/360: money-market instruments (issued with 1yr or less, little credit risk)

# Yield to Maturity (YTM) and Returns

The formula for YTM looks like the pricing formula for a bond, but replacing the maturity-dependent discount rate with a constant discount rate:

## Definition

Let $P_j(t,T,c)$ denote the price of 

- bond $j$ 
- observed time-$t$ 
- which matures at time $T$ 
- with coupons occurring at interim cashflow dates $T_i$ for $1\le i <n$
- and a final coupon and principal payment occurring at maturity $T$.

Define the **yield-to-maturity** for bond $j$ as the term $y_j$ which satisfies the following equation:

$\begin{align*}

P_j(t,T,c) = \sum_{i=1}^{n-1}\frac{100\left(\frac{c}{2}\right)}{\left(1+\frac{y_j}{2}\right)^{2(T_i-t)}} + \frac{100\left(1+\frac{c}{2}\right)}{\left(1+\frac{y_j}{2}\right)^{2(T-t)}}

\end{align*}

$

Note that the same rate, $y_j$, is discounting cashflows at different maturities.

* It is unique to the security, $j$.
* It is constant across the security's various cashflow maturities.

## YTM has a <span style='color:blue'>nonlinear</span> and <span style='color:blue'>inverse</span> relationship with price

```python
ylds_grid = np.arange(0,.12,.001)
T_grid = [1,10,30]
price_grid = pd.DataFrame(data=np.zeros([len(ylds_grid),len(T_grid)]), index=ylds_grid, columns=T_grid)
for T in T_grid:
    for i,y in enumerate(ylds_grid):
        price_grid.loc[y,T] = 100/(1+y/2)**(2*T)

price_grid.plot(figsize=(10,8))

legend_labels = [''] * len(T_grid)
for i,T in enumerate(T_grid):
    legend_labels[i] = f'{T}-year zero-coupon bond'

plt.xlabel('yield-to-maturity')
plt.ylabel('price')
plt.legend(legend_labels)
plt.title('Relationship between YTM and Price')
plt.show()
```

![png](output_25_0.png)

# Returns

The return on a bond between $t$ and $T$ is, like any security, the (time $T$) payoff divided by the (time $t$) price.

## Notation

Let $\hat{r}_{t,T}$ denote the **annualized** return between $t$ and $T$. We use the hat, $\hat{r}$ to avoid confusion with the interest rate notation, $r(t,T)$.

$

\begin{align}

\hat{r}_{t,T} = \left(\frac{\text{payoff}_T}{\text{investment}_t}\right)^{\frac{1}{T-t}} - 1

\end{align}

$

Note that the exponent $1/(T-t)$ is to annualize the return.

# Conditions where return equals YTM
**The return to a bond is typically NOT the same as its YTM**

They are only equivalent if…

1. We are discussing a zero-coupon bond. (ie It only pays cashflow at maturity.)
2. The investor holds it until maturity.

# YTM vs Return for a Coupon Bond

For a coupon bond, YTM is not the same as return, whether or not the bond is held to maturity.

# YTM is the exact same as Internal Rate of Return in Corporate Finance

* YTM is a discount rate that varies by instrument but is constant across the instrument's cashflow.
* It is NOT the return, as there is no guarantee you can reinvest intermediate cashflows at the YTM.
* YTM only exists and is uniquely defined for cashflows that have the typical pattern.

# YTM is just an alternate way to quote a price

* Prices for coupon bonds have a wide range due to coupons and maturity.
* YTM is a narrower range which (partially) adjusts for the time-value of money

# Par

A bond trading above face value is said to trade above par

## Bonds with coupons larger than current interest rates will trade above par.
* Trade above par: coupons are large enough to more than offset the present value discount.

# TIPS

**Treasury Inflation Protected Securities** (TIPS)
- Treasury notes and bonds (no bills)
- Semiannual coupon
- Issued since 1997

## Inflation protection

TIPS provide a hedge against inflation.

- Face value is scaled by CPI
- Coupon rate is fixed
- Fixed coupon rate multiplies the (CPI-adjusted) face-value, which leads to an inflation-adjusted coupon

```python
debt_outstanding = pd.DataFrame(index=['bills','notes','bonds','TIPS','FRNs'],data=[3671.2,13508.6,3725.3,1775.2,604.5],columns=['public debt (billions)'])
debt_outstanding.plot.pie(y=debt_outstanding.columns[0],figsize=(8,8),title='Treasury Debt - Public (billions)',ylabel='May 31, 2022')
plt.show()
```

![png](output_30_0.png)

Data Source:

https://fiscaldata.treasury.gov/datasets/monthly-statement-public-debt/summary-of-treasury-securities-outstanding

***

# Market Sizes

## Size of Treasury Debt Markets

https://fred.stlouisfed.org/series/GFDEBTN

### Composition of Treasury Debt

Monthly Statement of the Public Debt

https://fiscaldata.treasury.gov/datasets/monthly-statement-public-debt/summary-of-treasury-securities-outstanding

STRIPS

https://fiscaldata.treasury.gov/datasets/monthly-statement-public-debt/holdings-of-treasury-securities-in-stripped-form

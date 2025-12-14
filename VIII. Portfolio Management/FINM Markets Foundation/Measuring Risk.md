---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Topic 2 - Measuring Risk
linter-yaml-title-alias: Topic 2 - Measuring Risk
---

# Topic 2 - Measuring Risk

## FINM 36700: Portfolio and Risk Management

### Mark Hendricks

#### Autumn 2022

```python
import pandas as pd
import numpy as np
import datetime
import warnings

import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)

from sklearn.linear_model import LinearRegression
import sys
sys.path.insert(0,'../cmds')
from portfolio import *
from risk import *
```

```python
LOADFILE = '../data/risk_etf_data.xlsx'
info = pd.read_excel(LOADFILE,sheet_name='descriptions').set_index('ticker')
rets = pd.read_excel(LOADFILE,sheet_name='total returns').set_index('Date')
prices = pd.read_excel(LOADFILE,sheet_name='prices').set_index('Date')

FREQ = 252
```

$$\newcommand{\E}{E}$$

$$\newcommand{\rbar}{\bar{r}}$$

$$\newcommand{\rvec}{\boldsymbol{r}}$$

$$\newcommand{\rvecbar}{\boldsymbol{\bar{r}}}$$

$$\newcommand{\Ntime}{N}$$

$$\newcommand{\Nt}{N}$$

$$\newcommand{\rmat}{\boldsymbol{R}}$$

$$\newcommand{\riskmeasure}{\varrho}$$

$$\newcommand{\wt}{w}$$

$$\newcommand{\Nassets}{K}$$

$$\newcommand{\muvec}{\boldsymbol{\mu}}$$

$$\newcommand{\onevecNt}{\boldsymbol{1}_{\Ntime\times 1}}$$

$$\newcommand{\covest}{\hat{\boldsymbol{\Sigma}}}$$

$$\newcommand{\meanest}{\hat{\mu}}$$

$$\newcommand{\meanestvec}{\hat{\boldsymbol{\mu}}}$$

$$\newcommand{\covmat}{\boldsymbol{\Sigma}}$$

$$\newcommand{\rf}{r_f}$$

# Risk

## Volatility or More?

What is meant by **risk**?

May be associated with

* loss
* volatility
* correlation
* worst outcomes
* sensitivity

Various risk measures try to give information on all these.

## Return, Price, PnL, Other?

Our discussion of risk will be general to any asset class.

* Examples are across various assets.

The object of analysis will depend on the asset class:

* bonds and options: price
* equities, futures, and currency: return

At times, it will make sense to examine profit and loss (PnL).

```python
TICK = 'IEF'
fig, ax = plt.subplots(2,1,figsize=(10,10))
desc = info.loc[TICK,'shortName']
prices[TICK].plot(ax=ax[0],title=f'Prices: {desc}')
rets[TICK].plot(ax=ax[1],title=f'Returns: {desc}')
plt.tight_layout()
plt.show()
```

![png](output_7_0.png)

## Tools

The **tools** used are different than fixed income and options pricing. Relatively

* more statistics
* less math

For **bonds and options**, we saw risk via

* mathematical sensitivity of prices

For **equities** and other assets, we will be using

* statistical sensitivity of returns (or scaled prices)

## Model Approach

The modeling approach will rely on formulating the data such that it is

* stationary
	- Nearly always
	- This is often the motive for switching between prices, profits, returns, etc.

* iid (independently and identically distributed)
	- Much of the complication is achieving this.

* normally distributed?
	- Rarely required.
	- A useful comparison.
	- At times a simplfiying approximation

## Note: Difference to Pricing

Risk uses different tools than pricing.

* No alternative **probability measures**.
* **Volatility** will mean actual variation, not options pricing quotes.
* Mostly use discrete-time models, not continuous-time stochastic calculus.

# Starting Point

Question:

* Is a 10-year Treasury Note risky?

To start, we consider risk over a single given period.

* This is not just pedagogical
* Risk managers will mostly focus on risk over the next period.
* Delta, duration are good examples of this

For some problems, we will need to consider 

* multiple-period risk
* cumulative returns

# Moments

## Data

As an example for analyzing risk, we consider 

* ETF data on various asset classes
* daily frequency
* 2017 through present

The ETF data ensures

* we are looking at traded security returns, not indexes
* thus, no issue of rolling futures, carry on FX, etc.
* Though there may be differences due to fund expenses and fund tracking error (oil?)

```python
info
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
	  <th>quoteType</th>
	  <th>shortName</th>
	  <th>volume</th>
	  <th>totalAssets</th>
	  <th>longBusinessSummary</th>
	</tr>
	<tr>
	  <th>ticker</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>ETF</td>
	  <td>SPDR S&amp;P 500</td>
	  <td>87003672</td>
	  <td>3.464345e+11</td>
	  <td>The Trust seeks to achieve its investment obje…</td>
	</tr>
	<tr>
	  <th>VEA</th>
	  <td>ETF</td>
	  <td>Vanguard FTSE Developed Markets</td>
	  <td>10922925</td>
	  <td>1.382193e+11</td>
	  <td>The fund employs an indexing investment approa…</td>
	</tr>
	<tr>
	  <th>UPRO</th>
	  <td>ETF</td>
	  <td>ProShares UltraPro S&amp;P 500</td>
	  <td>8342638</td>
	  <td>1.990936e+09</td>
	  <td>The fund invests in financial instruments that…</td>
	</tr>
	<tr>
	  <th>GLD</th>
	  <td>ETF</td>
	  <td>SPDR Gold Trust</td>
	  <td>7537307</td>
	  <td>6.133656e+10</td>
	  <td>The Trust holds gold bars and from time to tim…</td>
	</tr>
	<tr>
	  <th>USO</th>
	  <td>ETF</td>
	  <td>United States Oil Fund</td>
	  <td>3632827</td>
	  <td>2.704972e+09</td>
	  <td>USO invests primarily in futures contracts for…</td>
	</tr>
	<tr>
	  <th>CL=F</th>
	  <td>FUTURE</td>
	  <td>Crude Oil Sep 22</td>
	  <td>22842</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>FXE</th>
	  <td>ETF</td>
	  <td>Invesco CurrencyShares Euro Cur</td>
	  <td>77130</td>
	  <td>2.175341e+08</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>BTC-USD</th>
	  <td>CRYPTOCURRENCY</td>
	  <td>Bitcoin USD</td>
	  <td>23130157056</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>ETF</td>
	  <td>iShares iBoxx $ High Yield Corp</td>
	  <td>33295136</td>
	  <td>1.243239e+10</td>
	  <td>The underlying index is a rules-based index co…</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>ETF</td>
	  <td>iShares 7-10 Year Treasury Bond</td>
	  <td>5865813</td>
	  <td>1.948952e+10</td>
	  <td>The underlying index measures the performance …</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>ETF</td>
	  <td>iShares TIPS Bond ETF</td>
	  <td>3241512</td>
	  <td>3.063166e+10</td>
	  <td>The fund will invest at least 80% of its asset…</td>
	</tr>
	<tr>
	  <th>SHV</th>
	  <td>ETF</td>
	  <td>iShares Short Treasury Bond ETF</td>
	  <td>2905871</td>
	  <td>2.169305e+10</td>
	  <td>The fund will invest at least 80% of its asset…</td>
	</tr>
  </tbody>
</table>
</div>

## Mean

The mean is the **first moment** of the (unspecified) distribution:

$$ \mu = \E[r]$$

The sample estimator for it is

$$\meanest = \frac{1}{\Ntime}\sum_{t=1}^\Ntime r_t$$

Note that this is often expressed with "bar" notation, $\bar{r}$.

* Here the notation is $\hat{\mu}$ for symmetry with many estimators below using "hat" notation.

### Important for risk?

For measuring and analyzing risk, we will mostly consider **de-meaned** data. 

* We want to know the possible outcomes **relative** to the mean.
* Interesting models of the mean are more useful for forecasting returns for directional investing.

#### Note
* Having an incorrect measure of the mean will cause error in our relative assessments.
* However, the main focus will be risk over short periods, for which the mean (trend) will not matter much to the calculation.

### Data: Means

The mean ETF data is listed below for price an return.

#### Technical Note
* Does it make sense to analyze this for price and return?
* That is, do they both satisfy basic statistical properties to be well-suited to examining unconditional moments?

```python
pd.concat([prices.mean(),rets.mean()*FREQ],axis=1,keys=['price','return']).style.format({'price':'{:.2f}','return':'{:.2%}'})
```

<style type="text/css">
</style>
<table id="T_0fb23">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_0fb23_level0_col0" class="col_heading level0 col0" >price</th>
	  <th id="T_0fb23_level0_col1" class="col_heading level0 col1" >return</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_0fb23_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_0fb23_row0_col0" class="data row0 col0" >309.13</td>
	  <td id="T_0fb23_row0_col1" class="data row0 col1" >13.23%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row1" class="row_heading level0 row1" >VEA</th>
	  <td id="T_0fb23_row1_col0" class="data row1 col0" >40.27</td>
	  <td id="T_0fb23_row1_col1" class="data row1 col1" >6.61%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row2" class="row_heading level0 row2" >UPRO</th>
	  <td id="T_0fb23_row2_col0" class="data row2 col0" >32.52</td>
	  <td id="T_0fb23_row2_col1" class="data row2 col1" >35.48%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row3" class="row_heading level0 row3" >GLD</th>
	  <td id="T_0fb23_row3_col0" class="data row3 col0" >144.33</td>
	  <td id="T_0fb23_row3_col1" class="data row3 col1" >8.73%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row4" class="row_heading level0 row4" >USO</th>
	  <td id="T_0fb23_row4_col0" class="data row4 col0" >74.61</td>
	  <td id="T_0fb23_row4_col1" class="data row4 col1" >7.19%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row5" class="row_heading level0 row5" >CL1</th>
	  <td id="T_0fb23_row5_col0" class="data row5 col0" >60.11</td>
	  <td id="T_0fb23_row5_col1" class="data row5 col1" >-41.56%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row6" class="row_heading level0 row6" >FXE</th>
	  <td id="T_0fb23_row6_col0" class="data row6 col0" >108.77</td>
	  <td id="T_0fb23_row6_col1" class="data row6 col1" >-0.56%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row7" class="row_heading level0 row7" >BTC</th>
	  <td id="T_0fb23_row7_col0" class="data row7 col0" >17452.28</td>
	  <td id="T_0fb23_row7_col1" class="data row7 col1" >84.76%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row8" class="row_heading level0 row8" >HYG</th>
	  <td id="T_0fb23_row8_col0" class="data row8 col0" >75.21</td>
	  <td id="T_0fb23_row8_col1" class="data row8 col1" >2.22%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row9" class="row_heading level0 row9" >IEF</th>
	  <td id="T_0fb23_row9_col0" class="data row9 col0" >106.20</td>
	  <td id="T_0fb23_row9_col1" class="data row9 col1" >1.18%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row10" class="row_heading level0 row10" >TIP</th>
	  <td id="T_0fb23_row10_col0" class="data row10 col0" >107.74</td>
	  <td id="T_0fb23_row10_col1" class="data row10 col1" >3.04%</td>
	</tr>
	<tr>
	  <th id="T_0fb23_level0_row11" class="row_heading level0 row11" >SHV</th>
	  <td id="T_0fb23_row11_col0" class="data row11 col0" >108.09</td>
	  <td id="T_0fb23_row11_col1" class="data row11 col1" >0.94%</td>
	</tr>
  </tbody>
</table>

## Variance and Volatility (StdDev)

The variance is the **second centered moment** of the (unspecified) distribution.

$$\sigma^2 = \E\left[(r-\mu)^2\right]$$

The usual sample estimator for the variance is

$$\hat{\sigma}^2 = \frac{1}{\Ntime-1}\sum_{t=1}^\Ntime(r_t-\meanest)^2$$ 

### Question

Note that though there are $\Ntime$ data points in the sample, the estimator for the variance uses $\Ntime-1$.

What is the reason? 

* statistically
* conceptually

## Standard Deviation

The standard deviation (in population and in sample) is the square root of the formulas above.

* We will often refer to this as the **volatility**.
* One could make the distinction of volatility as the time-varying (instantaneous) standard deviation of the process, but more often it is used synonomously with standard deviation.

## Technical Points
### Non-negativity

The standard deviation is defined in such a way that it is **always non-negative**.

* Thus, models of volatility (realized: GARCH, implied: SABR) have to be careful to ensure this holds.

### Centering

The variance is the second **squared** moment. Note that inside the expectation is $r-\mu$.

The second (uncentered) moment is $\E\left[r^2\right]$, and it is sometimes useful to have the variance as the difference of the (uncentered) first and second moments:

$$\sigma^2 = \E\left[r^2\right] - \left(\E[r]\right)^2$$

```python
vol = (rets.std().to_frame('vol')*np.sqrt(FREQ))
vol['variance'] = vol['vol']**2
vol.style.format('{:.2%}')
```

<style type="text/css">
</style>
<table id="T_f8f63">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_f8f63_level0_col0" class="col_heading level0 col0" >vol</th>
	  <th id="T_f8f63_level0_col1" class="col_heading level0 col1" >variance</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_f8f63_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_f8f63_row0_col0" class="data row0 col0" >19.54%</td>
	  <td id="T_f8f63_row0_col1" class="data row0 col1" >3.82%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row1" class="row_heading level0 row1" >VEA</th>
	  <td id="T_f8f63_row1_col0" class="data row1 col0" >18.09%</td>
	  <td id="T_f8f63_row1_col1" class="data row1 col1" >3.27%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row2" class="row_heading level0 row2" >UPRO</th>
	  <td id="T_f8f63_row2_col0" class="data row2 col0" >59.11%</td>
	  <td id="T_f8f63_row2_col1" class="data row2 col1" >34.94%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row3" class="row_heading level0 row3" >GLD</th>
	  <td id="T_f8f63_row3_col0" class="data row3 col0" >13.55%</td>
	  <td id="T_f8f63_row3_col1" class="data row3 col1" >1.84%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row4" class="row_heading level0 row4" >USO</th>
	  <td id="T_f8f63_row4_col0" class="data row4 col0" >41.69%</td>
	  <td id="T_f8f63_row4_col1" class="data row4 col1" >17.38%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row5" class="row_heading level0 row5" >CL1</th>
	  <td id="T_f8f63_row5_col0" class="data row5 col0" >150.47%</td>
	  <td id="T_f8f63_row5_col1" class="data row5 col1" >226.41%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row6" class="row_heading level0 row6" >FXE</th>
	  <td id="T_f8f63_row6_col0" class="data row6 col0" >6.89%</td>
	  <td id="T_f8f63_row6_col1" class="data row6 col1" >0.47%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row7" class="row_heading level0 row7" >BTC</th>
	  <td id="T_f8f63_row7_col0" class="data row7 col0" >78.05%</td>
	  <td id="T_f8f63_row7_col1" class="data row7 col1" >60.92%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row8" class="row_heading level0 row8" >HYG</th>
	  <td id="T_f8f63_row8_col0" class="data row8 col0" >9.03%</td>
	  <td id="T_f8f63_row8_col1" class="data row8 col1" >0.82%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row9" class="row_heading level0 row9" >IEF</th>
	  <td id="T_f8f63_row9_col0" class="data row9 col0" >5.87%</td>
	  <td id="T_f8f63_row9_col1" class="data row9 col1" >0.34%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row10" class="row_heading level0 row10" >TIP</th>
	  <td id="T_f8f63_row10_col0" class="data row10 col0" >5.73%</td>
	  <td id="T_f8f63_row10_col1" class="data row10 col1" >0.33%</td>
	</tr>
	<tr>
	  <th id="T_f8f63_level0_row11" class="row_heading level0 row11" >SHV</th>
	  <td id="T_f8f63_row11_col0" class="data row11 col0" >0.24%</td>
	  <td id="T_f8f63_row11_col1" class="data row11 col1" >0.00%</td>
	</tr>
  </tbody>
</table>

## Higher Moments

### Skewness

Skewness is the **third  moment** (centered and scaled). 

$$\varsigma = \frac{1}{\sigma^3}\E\left[(r-\mu)^3\right]$$

The sample estimator is

$$\hat{\varsigma} = \frac{1}{\hat{\sigma}^3} \frac{1}{\Ntime-1}\sum_{t=1}^\Ntime(r_t-\meanest)^3$$

Note that the skewness

* can be positive or negative
* is NOT typically listed as a percentage

The skewness is negative for distributions where there is an asymmetric, "long left tail".

### Kurtosis

Kurtosis is the **fourth  moment** (centered and scaled). 

$$\kappa = \frac{1}{\sigma^4}\E\left[(r-\mu)^4\right]$$

The sample estimator is

$$\hat{\kappa} = \frac{1}{\hat{\sigma}^4} \frac{1}{\Ntime-1}\sum_{i=1}^\Ntime(r_t-\meanest)^4$$

Note that the kurtosis

* is non-negative
* is NOT typically listed as a percentage

Furthermore, kurtosis is typically expressed **excess kurtosis**, $\kappa - 3$.

* This is to compare it to the normal distribution, which has kurtosis of 3.

The skewness is negative for distributions where there is an asymmetric, "long left tail".

```python
get_moments(rets,FREQ)
```

<style type="text/css">
</style>
<table id="T_676fb">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_676fb_level0_col0" class="col_heading level0 col0" >mean</th>
	  <th id="T_676fb_level0_col1" class="col_heading level0 col1" >vol</th>
	  <th id="T_676fb_level0_col2" class="col_heading level0 col2" >skewness</th>
	  <th id="T_676fb_level0_col3" class="col_heading level0 col3" >kurtosis</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_676fb_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_676fb_row0_col0" class="data row0 col0" >13.23%</td>
	  <td id="T_676fb_row0_col1" class="data row0 col1" >19.54%</td>
	  <td id="T_676fb_row0_col2" class="data row0 col2" >-0.71</td>
	  <td id="T_676fb_row0_col3" class="data row0 col3" >14.47</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row1" class="row_heading level0 row1" >VEA</th>
	  <td id="T_676fb_row1_col0" class="data row1 col0" >6.61%</td>
	  <td id="T_676fb_row1_col1" class="data row1 col1" >18.09%</td>
	  <td id="T_676fb_row1_col2" class="data row1 col2" >-1.35</td>
	  <td id="T_676fb_row1_col3" class="data row1 col3" >19.41</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row2" class="row_heading level0 row2" >UPRO</th>
	  <td id="T_676fb_row2_col0" class="data row2 col0" >35.48%</td>
	  <td id="T_676fb_row2_col1" class="data row2 col1" >59.11%</td>
	  <td id="T_676fb_row2_col2" class="data row2 col2" >-0.70</td>
	  <td id="T_676fb_row2_col3" class="data row2 col3" >16.30</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row3" class="row_heading level0 row3" >GLD</th>
	  <td id="T_676fb_row3_col0" class="data row3 col0" >8.73%</td>
	  <td id="T_676fb_row3_col1" class="data row3 col1" >13.55%</td>
	  <td id="T_676fb_row3_col2" class="data row3 col2" >-0.38</td>
	  <td id="T_676fb_row3_col3" class="data row3 col3" >4.12</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row4" class="row_heading level0 row4" >USO</th>
	  <td id="T_676fb_row4_col0" class="data row4 col0" >7.19%</td>
	  <td id="T_676fb_row4_col1" class="data row4 col1" >41.69%</td>
	  <td id="T_676fb_row4_col2" class="data row4 col2" >-1.49</td>
	  <td id="T_676fb_row4_col3" class="data row4 col3" >18.19</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row5" class="row_heading level0 row5" >CL1</th>
	  <td id="T_676fb_row5_col0" class="data row5 col0" >-41.56%</td>
	  <td id="T_676fb_row5_col1" class="data row5 col1" >150.47%</td>
	  <td id="T_676fb_row5_col2" class="data row5 col2" >-26.02</td>
	  <td id="T_676fb_row5_col3" class="data row5 col3" >808.98</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row6" class="row_heading level0 row6" >FXE</th>
	  <td id="T_676fb_row6_col0" class="data row6 col0" >-0.56%</td>
	  <td id="T_676fb_row6_col1" class="data row6 col1" >6.89%</td>
	  <td id="T_676fb_row6_col2" class="data row6 col2" >0.02</td>
	  <td id="T_676fb_row6_col3" class="data row6 col3" >0.80</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row7" class="row_heading level0 row7" >BTC</th>
	  <td id="T_676fb_row7_col0" class="data row7 col0" >84.76%</td>
	  <td id="T_676fb_row7_col1" class="data row7 col1" >78.05%</td>
	  <td id="T_676fb_row7_col2" class="data row7 col2" >-0.07</td>
	  <td id="T_676fb_row7_col3" class="data row7 col3" >5.35</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row8" class="row_heading level0 row8" >HYG</th>
	  <td id="T_676fb_row8_col0" class="data row8 col0" >2.22%</td>
	  <td id="T_676fb_row8_col1" class="data row8 col1" >9.03%</td>
	  <td id="T_676fb_row8_col2" class="data row8 col2" >0.02</td>
	  <td id="T_676fb_row8_col3" class="data row8 col3" >33.40</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row9" class="row_heading level0 row9" >IEF</th>
	  <td id="T_676fb_row9_col0" class="data row9 col0" >1.18%</td>
	  <td id="T_676fb_row9_col1" class="data row9 col1" >5.87%</td>
	  <td id="T_676fb_row9_col2" class="data row9 col2" >0.07</td>
	  <td id="T_676fb_row9_col3" class="data row9 col3" >6.33</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row10" class="row_heading level0 row10" >TIP</th>
	  <td id="T_676fb_row10_col0" class="data row10 col0" >3.04%</td>
	  <td id="T_676fb_row10_col1" class="data row10 col1" >5.73%</td>
	  <td id="T_676fb_row10_col2" class="data row10 col2" >0.49</td>
	  <td id="T_676fb_row10_col3" class="data row10 col3" >26.14</td>
	</tr>
	<tr>
	  <th id="T_676fb_level0_row11" class="row_heading level0 row11" >SHV</th>
	  <td id="T_676fb_row11_col0" class="data row11 col0" >0.94%</td>
	  <td id="T_676fb_row11_col1" class="data row11 col1" >0.24%</td>
	  <td id="T_676fb_row11_col2" class="data row11 col2" >0.42</td>
	  <td id="T_676fb_row11_col3" class="data row11 col3" >4.96</td>
	</tr>
  </tbody>
</table>

### Annualizing the Moments

To annualize the moments use the frequency, of data per year, $\tau$,

|            | annualize     | sign  | quote  |
|------------|---------------|-------|--------|
| mean       | $\tau$        | + / - | %      |
| volatility | $\sqrt{\tau}$ | +     | %      |
| skewness   | 1             | + / - | number |
| kurtosis   | 1             | +     | number |

For instance, to annualize (trading) 

* daily data, $\tau=252$.
* monthly data, $\tau=12$.

# Distribution

## Quantiles

The risk measures based on "moments" make use of data in the entire distribution.

* This allows for high statistical power.
* Those moments make **no assumption about the distribution.**

The **quantiles** 

* continue without any assumption on the distribution.

But they are estimating a single point on the distribution.

* This means it gets less precision from the sample.

If the variable has a distribution with a continuous and strictly increasing cdf, denoted $F$, with an inverse cdf of $F^{-1}$. Then the quantile $\pi$ is

$$q_{\pi} = F^{-1}(\pi)$$

The sample estimate is the **order statistic**.

* Sort the sample into ascending order.
* Define the sorted data as $\{r_{(1)},\ldots,r_{(\Ntime)}\}$.

$$\hat{q}_{\pi} = r_{(\pi \Ntime)}$$

### Median

Of course, for $\pi=0.5$, this is the median:

$$\hat{q}_{0.5} = r_{\text{median}}$$

#### Technical Note

If $\pi\Ntime$ is not an integer, typical to take a linear interpretation between the nearest two ordered points.

$$\hat{q}_{\pi} = \frac{r_{(\pi \Ntime-)} + r_{(\pi \Ntime+)}}{2}$$

```python
quantiles = rets.quantile(q=[.01,.05,.25,.5,.75,.95,.99])
quantiles.index.name = 'quantile'

quantiles.reset_index(inplace=True)
quantiles['quantile'] = quantiles['quantile'].astype(str)
quantiles.set_index('quantile',inplace=True)
quantiles.style.format('{:.2%}')
```

<style type="text/css">
</style>
<table id="T_a092c">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_a092c_level0_col0" class="col_heading level0 col0" >SPY</th>
	  <th id="T_a092c_level0_col1" class="col_heading level0 col1" >VEA</th>
	  <th id="T_a092c_level0_col2" class="col_heading level0 col2" >UPRO</th>
	  <th id="T_a092c_level0_col3" class="col_heading level0 col3" >GLD</th>
	  <th id="T_a092c_level0_col4" class="col_heading level0 col4" >USO</th>
	  <th id="T_a092c_level0_col5" class="col_heading level0 col5" >CL1</th>
	  <th id="T_a092c_level0_col6" class="col_heading level0 col6" >FXE</th>
	  <th id="T_a092c_level0_col7" class="col_heading level0 col7" >BTC</th>
	  <th id="T_a092c_level0_col8" class="col_heading level0 col8" >HYG</th>
	  <th id="T_a092c_level0_col9" class="col_heading level0 col9" >IEF</th>
	  <th id="T_a092c_level0_col10" class="col_heading level0 col10" >TIP</th>
	  <th id="T_a092c_level0_col11" class="col_heading level0 col11" >SHV</th>
	</tr>
	<tr>
	  <th class="index_name level0" >quantile</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	  <th class="blank col8" >&nbsp;</th>
	  <th class="blank col9" >&nbsp;</th>
	  <th class="blank col10" >&nbsp;</th>
	  <th class="blank col11" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_a092c_level0_row0" class="row_heading level0 row0" >0.01</th>
	  <td id="T_a092c_row0_col0" class="data row0 col0" >-3.58%</td>
	  <td id="T_a092c_row0_col1" class="data row0 col1" >-3.06%</td>
	  <td id="T_a092c_row0_col2" class="data row0 col2" >-10.64%</td>
	  <td id="T_a092c_row0_col3" class="data row0 col3" >-2.29%</td>
	  <td id="T_a092c_row0_col4" class="data row0 col4" >-7.32%</td>
	  <td id="T_a092c_row0_col5" class="data row0 col5" >-8.09%</td>
	  <td id="T_a092c_row0_col6" class="data row0 col6" >-0.96%</td>
	  <td id="T_a092c_row0_col7" class="data row0 col7" >-13.02%</td>
	  <td id="T_a092c_row0_col8" class="data row0 col8" >-1.71%</td>
	  <td id="T_a092c_row0_col9" class="data row0 col9" >-0.94%</td>
	  <td id="T_a092c_row0_col10" class="data row0 col10" >-0.89%</td>
	  <td id="T_a092c_row0_col11" class="data row0 col11" >-0.04%</td>
	</tr>
	<tr>
	  <th id="T_a092c_level0_row1" class="row_heading level0 row1" >0.05</th>
	  <td id="T_a092c_row1_col0" class="data row1 col0" >-1.92%</td>
	  <td id="T_a092c_row1_col1" class="data row1 col1" >-1.60%</td>
	  <td id="T_a092c_row1_col2" class="data row1 col2" >-5.70%</td>
	  <td id="T_a092c_row1_col3" class="data row1 col3" >-1.38%</td>
	  <td id="T_a092c_row1_col4" class="data row1 col4" >-3.62%</td>
	  <td id="T_a092c_row1_col5" class="data row1 col5" >-3.87%</td>
	  <td id="T_a092c_row1_col6" class="data row1 col6" >-0.72%</td>
	  <td id="T_a092c_row1_col7" class="data row1 col7" >-7.04%</td>
	  <td id="T_a092c_row1_col8" class="data row1 col8" >-0.69%</td>
	  <td id="T_a092c_row1_col9" class="data row1 col9" >-0.56%</td>
	  <td id="T_a092c_row1_col10" class="data row1 col10" >-0.45%</td>
	  <td id="T_a092c_row1_col11" class="data row1 col11" >-0.02%</td>
	</tr>
	<tr>
	  <th id="T_a092c_level0_row2" class="row_heading level0 row2" >0.25</th>
	  <td id="T_a092c_row2_col0" class="data row2 col0" >-0.34%</td>
	  <td id="T_a092c_row2_col1" class="data row2 col1" >-0.46%</td>
	  <td id="T_a092c_row2_col2" class="data row2 col2" >-1.01%</td>
	  <td id="T_a092c_row2_col3" class="data row2 col3" >-0.41%</td>
	  <td id="T_a092c_row2_col4" class="data row2 col4" >-1.03%</td>
	  <td id="T_a092c_row2_col5" class="data row2 col5" >-1.05%</td>
	  <td id="T_a092c_row2_col6" class="data row2 col6" >-0.27%</td>
	  <td id="T_a092c_row2_col7" class="data row2 col7" >-1.85%</td>
	  <td id="T_a092c_row2_col8" class="data row2 col8" >-0.15%</td>
	  <td id="T_a092c_row2_col9" class="data row2 col9" >-0.20%</td>
	  <td id="T_a092c_row2_col10" class="data row2 col10" >-0.16%</td>
	  <td id="T_a092c_row2_col11" class="data row2 col11" >0.00%</td>
	</tr>
	<tr>
	  <th id="T_a092c_level0_row3" class="row_heading level0 row3" >0.5</th>
	  <td id="T_a092c_row3_col0" class="data row3 col0" >0.08%</td>
	  <td id="T_a092c_row3_col1" class="data row3 col1" >0.09%</td>
	  <td id="T_a092c_row3_col2" class="data row3 col2" >0.22%</td>
	  <td id="T_a092c_row3_col3" class="data row3 col3" >0.07%</td>
	  <td id="T_a092c_row3_col4" class="data row3 col4" >0.17%</td>
	  <td id="T_a092c_row3_col5" class="data row3 col5" >0.25%</td>
	  <td id="T_a092c_row3_col6" class="data row3 col6" >0.00%</td>
	  <td id="T_a092c_row3_col7" class="data row3 col7" >0.23%</td>
	  <td id="T_a092c_row3_col8" class="data row3 col8" >0.03%</td>
	  <td id="T_a092c_row3_col9" class="data row3 col9" >0.01%</td>
	  <td id="T_a092c_row3_col10" class="data row3 col10" >0.02%</td>
	  <td id="T_a092c_row3_col11" class="data row3 col11" >0.00%</td>
	</tr>
	<tr>
	  <th id="T_a092c_level0_row4" class="row_heading level0 row4" >0.75</th>
	  <td id="T_a092c_row4_col0" class="data row4 col0" >0.60%</td>
	  <td id="T_a092c_row4_col1" class="data row4 col1" >0.57%</td>
	  <td id="T_a092c_row4_col2" class="data row4 col2" >1.78%</td>
	  <td id="T_a092c_row4_col3" class="data row4 col3" >0.49%</td>
	  <td id="T_a092c_row4_col4" class="data row4 col4" >1.27%</td>
	  <td id="T_a092c_row4_col5" class="data row4 col5" >1.38%</td>
	  <td id="T_a092c_row4_col6" class="data row4 col6" >0.27%</td>
	  <td id="T_a092c_row4_col7" class="data row4 col7" >2.47%</td>
	  <td id="T_a092c_row4_col8" class="data row4 col8" >0.19%</td>
	  <td id="T_a092c_row4_col9" class="data row4 col9" >0.21%</td>
	  <td id="T_a092c_row4_col10" class="data row4 col10" >0.18%</td>
	  <td id="T_a092c_row4_col11" class="data row4 col11" >0.01%</td>
	</tr>
	<tr>
	  <th id="T_a092c_level0_row5" class="row_heading level0 row5" >0.95</th>
	  <td id="T_a092c_row5_col0" class="data row5 col0" >1.59%</td>
	  <td id="T_a092c_row5_col1" class="data row5 col1" >1.47%</td>
	  <td id="T_a092c_row5_col2" class="data row5 col2" >4.72%</td>
	  <td id="T_a092c_row5_col3" class="data row5 col3" >1.37%</td>
	  <td id="T_a092c_row5_col4" class="data row5 col4" >3.24%</td>
	  <td id="T_a092c_row5_col5" class="data row5 col5" >3.54%</td>
	  <td id="T_a092c_row5_col6" class="data row5 col6" >0.70%</td>
	  <td id="T_a092c_row5_col7" class="data row5 col7" >8.29%</td>
	  <td id="T_a092c_row5_col8" class="data row5 col8" >0.65%</td>
	  <td id="T_a092c_row5_col9" class="data row5 col9" >0.55%</td>
	  <td id="T_a092c_row5_col10" class="data row5 col10" >0.47%</td>
	  <td id="T_a092c_row5_col11" class="data row5 col11" >0.03%</td>
	</tr>
	<tr>
	  <th id="T_a092c_level0_row6" class="row_heading level0 row6" >0.99</th>
	  <td id="T_a092c_row6_col0" class="data row6 col0" >3.05%</td>
	  <td id="T_a092c_row6_col1" class="data row6 col1" >2.81%</td>
	  <td id="T_a092c_row6_col2" class="data row6 col2" >9.12%</td>
	  <td id="T_a092c_row6_col3" class="data row6 col3" >2.14%</td>
	  <td id="T_a092c_row6_col4" class="data row6 col4" >6.08%</td>
	  <td id="T_a092c_row6_col5" class="data row6 col5" >8.17%</td>
	  <td id="T_a092c_row6_col6" class="data row6 col6" >1.07%</td>
	  <td id="T_a092c_row6_col7" class="data row6 col7" >14.82%</td>
	  <td id="T_a092c_row6_col8" class="data row6 col8" >1.43%</td>
	  <td id="T_a092c_row6_col9" class="data row6 col9" >0.98%</td>
	  <td id="T_a092c_row6_col10" class="data row6 col10" >0.90%</td>
	  <td id="T_a092c_row6_col11" class="data row6 col11" >0.05%</td>
	</tr>
  </tbody>
</table>

## Normal Distribution

**NONE** of the measures discussed above rely on a normal distribution.

But later we will consider estimates that rely on an assumed distribution, and whether returns are normal.

So how good of an approximation is a normal distribution?

```python
data = rets['SPY']
fig = plot_normal_histogram(data,bins=250);
plt.title('Histogram of Returns');
plt.show()
```

![png](output_29_0.png)

### Outliers

The histogram doesn't look too far off at first glance.

But consider the outliers.

* A normal distribution implies 5 and 10 std.dev. outliers almost never happen.
* In the sample above, there are numerous.

#### Outlier Table
* The outlier table below shows z-scores for the min and max return.
* The final two columns show the probability of such values happening under a normal distribution.

```python
outlier_normal(rets).set_caption('Daily')
```

<style type="text/css">
</style>
<table id="T_83f69">
  <caption>Daily</caption>
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_83f69_level0_col0" class="col_heading level0 col0" >z min</th>
	  <th id="T_83f69_level0_col1" class="col_heading level0 col1" >z max</th>
	  <th id="T_83f69_level0_col2" class="col_heading level0 col2" >normal prob min</th>
	  <th id="T_83f69_level0_col3" class="col_heading level0 col3" >normal prob max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_83f69_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_83f69_row0_col0" class="data row0 col0" >-8.93</td>
	  <td id="T_83f69_row0_col1" class="data row0 col1" >7.32</td>
	  <td id="T_83f69_row0_col2" class="data row0 col2" >2.08e-19</td>
	  <td id="T_83f69_row0_col3" class="data row0 col3" >1.26e-13</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row1" class="row_heading level0 row1" >VEA</th>
	  <td id="T_83f69_row1_col0" class="data row1 col0" >-9.84</td>
	  <td id="T_83f69_row1_col1" class="data row1 col1" >7.78</td>
	  <td id="T_83f69_row1_col2" class="data row1 col2" >3.95e-23</td>
	  <td id="T_83f69_row1_col3" class="data row1 col3" >3.55e-15</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row2" class="row_heading level0 row2" >UPRO</th>
	  <td id="T_83f69_row2_col0" class="data row2 col0" >-9.42</td>
	  <td id="T_83f69_row2_col1" class="data row2 col1" >7.47</td>
	  <td id="T_83f69_row2_col2" class="data row2 col2" >2.19e-21</td>
	  <td id="T_83f69_row2_col3" class="data row2 col3" >3.92e-14</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row3" class="row_heading level0 row3" >GLD</th>
	  <td id="T_83f69_row3_col0" class="data row3 col0" >-6.33</td>
	  <td id="T_83f69_row3_col1" class="data row3 col1" >5.64</td>
	  <td id="T_83f69_row3_col2" class="data row3 col2" >1.22e-10</td>
	  <td id="T_83f69_row3_col3" class="data row3 col3" >8.28e-09</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row4" class="row_heading level0 row4" >USO</th>
	  <td id="T_83f69_row4_col0" class="data row4 col0" >-9.65</td>
	  <td id="T_83f69_row4_col1" class="data row4 col1" >6.34</td>
	  <td id="T_83f69_row4_col2" class="data row4 col2" >2.45e-22</td>
	  <td id="T_83f69_row4_col3" class="data row4 col3" >1.18e-10</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row5" class="row_heading level0 row5" >CL1</th>
	  <td id="T_83f69_row5_col0" class="data row5 col0" >-32.26</td>
	  <td id="T_83f69_row5_col1" class="data row5 col1" >3.99</td>
	  <td id="T_83f69_row5_col2" class="data row5 col2" >1.18e-228</td>
	  <td id="T_83f69_row5_col3" class="data row5 col3" >3.29e-05</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row6" class="row_heading level0 row6" >FXE</th>
	  <td id="T_83f69_row6_col0" class="data row6 col0" >-4.73</td>
	  <td id="T_83f69_row6_col1" class="data row6 col1" >3.58</td>
	  <td id="T_83f69_row6_col2" class="data row6 col2" >1.12e-06</td>
	  <td id="T_83f69_row6_col3" class="data row6 col3" >1.69e-04</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row7" class="row_heading level0 row7" >BTC</th>
	  <td id="T_83f69_row7_col0" class="data row7 col0" >-7.63</td>
	  <td id="T_83f69_row7_col1" class="data row7 col1" >5.07</td>
	  <td id="T_83f69_row7_col2" class="data row7 col2" >1.19e-14</td>
	  <td id="T_83f69_row7_col3" class="data row7 col3" >2.03e-07</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row8" class="row_heading level0 row8" >HYG</th>
	  <td id="T_83f69_row8_col0" class="data row8 col0" >-9.68</td>
	  <td id="T_83f69_row8_col1" class="data row8 col1" >11.49</td>
	  <td id="T_83f69_row8_col2" class="data row8 col2" >1.86e-22</td>
	  <td id="T_83f69_row8_col3" class="data row8 col3" >0.00e+00</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row9" class="row_heading level0 row9" >IEF</th>
	  <td id="T_83f69_row9_col0" class="data row9 col0" >-6.79</td>
	  <td id="T_83f69_row9_col1" class="data row9 col1" >7.13</td>
	  <td id="T_83f69_row9_col2" class="data row9 col2" >5.53e-12</td>
	  <td id="T_83f69_row9_col3" class="data row9 col3" >5.01e-13</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row10" class="row_heading level0 row10" >TIP</th>
	  <td id="T_83f69_row10_col0" class="data row10 col0" >-7.98</td>
	  <td id="T_83f69_row10_col1" class="data row10 col1" >12.31</td>
	  <td id="T_83f69_row10_col2" class="data row10 col2" >7.35e-16</td>
	  <td id="T_83f69_row10_col3" class="data row10 col3" >0.00e+00</td>
	</tr>
	<tr>
	  <th id="T_83f69_level0_row11" class="row_heading level0 row11" >SHV</th>
	  <td id="T_83f69_row11_col0" class="data row11 col0" >-5.64</td>
	  <td id="T_83f69_row11_col1" class="data row11 col1" >6.89</td>
	  <td id="T_83f69_row11_col2" class="data row11 col2" >8.55e-09</td>
	  <td id="T_83f69_row11_col3" class="data row11 col3" >2.78e-12</td>
	</tr>
  </tbody>
</table>

#### Astronomical

The probabilities are astronomical.

* Clearly the returns are not normally distributed--particularly for tail events.

Ironically, this means that a normal distribution as a rough approximation might be fine--except for the events we care most about in managing risk--big outliers.

### Time Frequency

However, consider that the normality may depend on the frequency of the data.

* At finer granularity, (daily, intra-daily,) perhaps the aberrations are stronger.
* At a less frequent time interval, perhaps these compound and average out.

#### Monthly returns

The table below repeats the example for monthly returns.

```python
retsM = prices.resample('M').last().pct_change()
outlier_normal(retsM).set_caption('Monthly')
```

<style type="text/css">
</style>
<table id="T_00af2">
  <caption>Monthly</caption>
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_00af2_level0_col0" class="col_heading level0 col0" >z min</th>
	  <th id="T_00af2_level0_col1" class="col_heading level0 col1" >z max</th>
	  <th id="T_00af2_level0_col2" class="col_heading level0 col2" >normal prob min</th>
	  <th id="T_00af2_level0_col3" class="col_heading level0 col3" >normal prob max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_00af2_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_00af2_row0_col0" class="data row0 col0" >-2.90</td>
	  <td id="T_00af2_row0_col1" class="data row0 col1" >2.49</td>
	  <td id="T_00af2_row0_col2" class="data row0 col2" >1.89e-03</td>
	  <td id="T_00af2_row0_col3" class="data row0 col3" >6.36e-03</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row1" class="row_heading level0 row1" >VEA</th>
	  <td id="T_00af2_row1_col0" class="data row1 col0" >-3.47</td>
	  <td id="T_00af2_row1_col1" class="data row1 col1" >3.07</td>
	  <td id="T_00af2_row1_col2" class="data row1 col2" >2.63e-04</td>
	  <td id="T_00af2_row1_col3" class="data row1 col3" >1.08e-03</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row2" class="row_heading level0 row2" >UPRO</th>
	  <td id="T_00af2_row2_col0" class="data row2 col0" >-3.45</td>
	  <td id="T_00af2_row2_col1" class="data row2 col1" >2.35</td>
	  <td id="T_00af2_row2_col2" class="data row2 col2" >2.78e-04</td>
	  <td id="T_00af2_row2_col3" class="data row2 col3" >9.30e-03</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row3" class="row_heading level0 row3" >GLD</th>
	  <td id="T_00af2_row3_col0" class="data row3 col0" >-2.15</td>
	  <td id="T_00af2_row3_col1" class="data row3 col1" >2.79</td>
	  <td id="T_00af2_row3_col2" class="data row3 col2" >1.58e-02</td>
	  <td id="T_00af2_row3_col3" class="data row3 col3" >2.63e-03</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row4" class="row_heading level0 row4" >USO</th>
	  <td id="T_00af2_row4_col0" class="data row4 col0" >-4.24</td>
	  <td id="T_00af2_row4_col1" class="data row4 col1" >2.59</td>
	  <td id="T_00af2_row4_col2" class="data row4 col2" >1.13e-05</td>
	  <td id="T_00af2_row4_col3" class="data row4 col3" >4.85e-03</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row5" class="row_heading level0 row5" >CL1</th>
	  <td id="T_00af2_row5_col0" class="data row5 col0" >-3.54</td>
	  <td id="T_00af2_row5_col1" class="data row5 col1" >5.39</td>
	  <td id="T_00af2_row5_col2" class="data row5 col2" >1.97e-04</td>
	  <td id="T_00af2_row5_col3" class="data row5 col3" >3.54e-08</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row6" class="row_heading level0 row6" >FXE</th>
	  <td id="T_00af2_row6_col0" class="data row6 col0" >-2.50</td>
	  <td id="T_00af2_row6_col1" class="data row6 col1" >2.65</td>
	  <td id="T_00af2_row6_col2" class="data row6 col2" >6.19e-03</td>
	  <td id="T_00af2_row6_col3" class="data row6 col3" >3.97e-03</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row7" class="row_heading level0 row7" >BTC</th>
	  <td id="T_00af2_row7_col0" class="data row7 col0" >-1.72</td>
	  <td id="T_00af2_row7_col1" class="data row7 col1" >2.45</td>
	  <td id="T_00af2_row7_col2" class="data row7 col2" >4.24e-02</td>
	  <td id="T_00af2_row7_col3" class="data row7 col3" >7.07e-03</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row8" class="row_heading level0 row8" >HYG</th>
	  <td id="T_00af2_row8_col0" class="data row8 col0" >-4.49</td>
	  <td id="T_00af2_row8_col1" class="data row8 col1" >2.15</td>
	  <td id="T_00af2_row8_col2" class="data row8 col2" >3.58e-06</td>
	  <td id="T_00af2_row8_col3" class="data row8 col3" >1.57e-02</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row9" class="row_heading level0 row9" >IEF</th>
	  <td id="T_00af2_row9_col0" class="data row9 col0" >-2.66</td>
	  <td id="T_00af2_row9_col1" class="data row9 col1" >2.37</td>
	  <td id="T_00af2_row9_col2" class="data row9 col2" >3.95e-03</td>
	  <td id="T_00af2_row9_col3" class="data row9 col3" >8.86e-03</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row10" class="row_heading level0 row10" >TIP</th>
	  <td id="T_00af2_row10_col0" class="data row10 col0" >-2.71</td>
	  <td id="T_00af2_row10_col1" class="data row10 col1" >2.31</td>
	  <td id="T_00af2_row10_col2" class="data row10 col2" >3.36e-03</td>
	  <td id="T_00af2_row10_col3" class="data row10 col3" >1.03e-02</td>
	</tr>
	<tr>
	  <th id="T_00af2_level0_row11" class="row_heading level0 row11" >SHV</th>
	  <td id="T_00af2_row11_col0" class="data row11 col0" >-1.77</td>
	  <td id="T_00af2_row11_col1" class="data row11 col1" >3.28</td>
	  <td id="T_00af2_row11_col2" class="data row11 col2" >3.84e-02</td>
	  <td id="T_00af2_row11_col3" class="data row11 col3" >5.19e-04</td>
	</tr>
  </tbody>
</table>

# Maximum Drawdown

The maximum drawdown (MDD) of a return series is the maximum cumulative loss suffered during the time period.

* Visually, this is the largest peak-to-trough during the sample.
* It is widely cited in performance evaluation to understand how badly the investment might perform.

## Technical Note

Maximum drawdown is widely cited in backtests.

* This can be quite useful in understanding the scale / nature of the strategy, especially how it performs in certain scenarios.
* It is less useful than the "moment" statistics above in forecasting the future.
* It is a path-dependent statistic, and it has much less statistical precision.

# Example

Consider the price chart below.

* MDD is the largest peak-to-valley point of the graph.
* This is not always easy to see from the price graph.

```python
TICK = 'BTC'
prices[TICK].plot(title=f'Prices: {TICK}');
```

    <AxesSubplot:title={'center':'Prices: BTC'}, xlabel='Date'>




    

![png](output_37_1.png)

## Consider a MDD chart
* For any point in time, it shows how far the strategy is below its max up to that point.
* Whenever it is at 0, the strategy is at a current maximum.

```python
def mdd_timeseries(rets):
    cum_rets = (1 + rets).cumprod()
    rolling_max = cum_rets.cummax()
    drawdown = (cum_rets - rolling_max) / rolling_max
    return drawdown
```

```python
drawdown = mdd_timeseries(rets)
drawdown[TICK].plot(title=f'Max Drawdown {TICK}');
plt.show()
```

![png](output_40_0.png)

```python
fig, ax = plt.subplots(2,2,figsize=(10,6))
for i in range(4):
    lab = drawdown.columns[i*3]
    drawdown.iloc[:,2*i].plot(ax=ax[i%2,int(np.floor(i/2))],title=lab)

plt.suptitle('Maximum Drawdown')
plt.tight_layout()
plt.show()
```

![png](output_41_0.png)

```python
maximumDrawdown(rets).style.format({'Skewness':'{:.2f}','Kurtosis':'{:.2f}','Max Drawdown':'{:.2%}','Peak':'{:%Y-%m-%d}', 'Bottom':'{:%Y-%m-%d}'})
```

<style type="text/css">
</style>
<table id="T_64bf6">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_64bf6_level0_col0" class="col_heading level0 col0" >Max Drawdown</th>
	  <th id="T_64bf6_level0_col1" class="col_heading level0 col1" >Peak</th>
	  <th id="T_64bf6_level0_col2" class="col_heading level0 col2" >Bottom</th>
	  <th id="T_64bf6_level0_col3" class="col_heading level0 col3" >Recover</th>
	  <th id="T_64bf6_level0_col4" class="col_heading level0 col4" >Duration (to Recover)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_64bf6_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_64bf6_row0_col0" class="data row0 col0" >-33.72%</td>
	  <td id="T_64bf6_row0_col1" class="data row0 col1" >2020-02-19</td>
	  <td id="T_64bf6_row0_col2" class="data row0 col2" >2020-03-23</td>
	  <td id="T_64bf6_row0_col3" class="data row0 col3" >2020-08-10 00:00:00</td>
	  <td id="T_64bf6_row0_col4" class="data row0 col4" >173 days 00:00:00</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row1" class="row_heading level0 row1" >VEA</th>
	  <td id="T_64bf6_row1_col0" class="data row1 col0" >-35.74%</td>
	  <td id="T_64bf6_row1_col1" class="data row1 col1" >2018-01-26</td>
	  <td id="T_64bf6_row1_col2" class="data row1 col2" >2020-03-23</td>
	  <td id="T_64bf6_row1_col3" class="data row1 col3" >2020-11-16 00:00:00</td>
	  <td id="T_64bf6_row1_col4" class="data row1 col4" >1025 days 00:00:00</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row2" class="row_heading level0 row2" >UPRO</th>
	  <td id="T_64bf6_row2_col0" class="data row2 col0" >-76.82%</td>
	  <td id="T_64bf6_row2_col1" class="data row2 col1" >2020-02-19</td>
	  <td id="T_64bf6_row2_col2" class="data row2 col2" >2020-03-23</td>
	  <td id="T_64bf6_row2_col3" class="data row2 col3" >2021-01-08 00:00:00</td>
	  <td id="T_64bf6_row2_col4" class="data row2 col4" >324 days 00:00:00</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row3" class="row_heading level0 row3" >GLD</th>
	  <td id="T_64bf6_row3_col0" class="data row3 col0" >-18.77%</td>
	  <td id="T_64bf6_row3_col1" class="data row3 col1" >2020-08-06</td>
	  <td id="T_64bf6_row3_col2" class="data row3 col2" >2021-03-08</td>
	  <td id="T_64bf6_row3_col3" class="data row3 col3" >NaT</td>
	  <td id="T_64bf6_row3_col4" class="data row3 col4" >NaT</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row4" class="row_heading level0 row4" >USO</th>
	  <td id="T_64bf6_row4_col0" class="data row4 col0" >-86.75%</td>
	  <td id="T_64bf6_row4_col1" class="data row4 col1" >2018-10-03</td>
	  <td id="T_64bf6_row4_col2" class="data row4 col2" >2020-04-28</td>
	  <td id="T_64bf6_row4_col3" class="data row4 col3" >NaT</td>
	  <td id="T_64bf6_row4_col4" class="data row4 col4" >NaT</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row5" class="row_heading level0 row5" >CL1</th>
	  <td id="T_64bf6_row5_col0" class="data row5 col0" >-149.25%</td>
	  <td id="T_64bf6_row5_col1" class="data row5 col1" >2018-10-03</td>
	  <td id="T_64bf6_row5_col2" class="data row5 col2" >2020-04-20</td>
	  <td id="T_64bf6_row5_col3" class="data row5 col3" >2021-10-04 00:00:00</td>
	  <td id="T_64bf6_row5_col4" class="data row5 col4" >1097 days 00:00:00</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row6" class="row_heading level0 row6" >FXE</th>
	  <td id="T_64bf6_row6_col0" class="data row6 col0" >-20.25%</td>
	  <td id="T_64bf6_row6_col1" class="data row6 col1" >2018-02-01</td>
	  <td id="T_64bf6_row6_col2" class="data row6 col2" >2022-05-12</td>
	  <td id="T_64bf6_row6_col3" class="data row6 col3" >NaT</td>
	  <td id="T_64bf6_row6_col4" class="data row6 col4" >NaT</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row7" class="row_heading level0 row7" >BTC</th>
	  <td id="T_64bf6_row7_col0" class="data row7 col0" >-83.04%</td>
	  <td id="T_64bf6_row7_col1" class="data row7 col1" >2017-12-18</td>
	  <td id="T_64bf6_row7_col2" class="data row7 col2" >2018-12-14</td>
	  <td id="T_64bf6_row7_col3" class="data row7 col3" >2020-11-30 00:00:00</td>
	  <td id="T_64bf6_row7_col4" class="data row7 col4" >1078 days 00:00:00</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row8" class="row_heading level0 row8" >HYG</th>
	  <td id="T_64bf6_row8_col0" class="data row8 col0" >-22.03%</td>
	  <td id="T_64bf6_row8_col1" class="data row8 col1" >2020-02-13</td>
	  <td id="T_64bf6_row8_col2" class="data row8 col2" >2020-03-23</td>
	  <td id="T_64bf6_row8_col3" class="data row8 col3" >2020-11-04 00:00:00</td>
	  <td id="T_64bf6_row8_col4" class="data row8 col4" >265 days 00:00:00</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row9" class="row_heading level0 row9" >IEF</th>
	  <td id="T_64bf6_row9_col0" class="data row9 col0" >-18.87%</td>
	  <td id="T_64bf6_row9_col1" class="data row9 col1" >2020-08-04</td>
	  <td id="T_64bf6_row9_col2" class="data row9 col2" >2022-06-14</td>
	  <td id="T_64bf6_row9_col3" class="data row9 col3" >NaT</td>
	  <td id="T_64bf6_row9_col4" class="data row9 col4" >NaT</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row10" class="row_heading level0 row10" >TIP</th>
	  <td id="T_64bf6_row10_col0" class="data row10 col0" >-11.20%</td>
	  <td id="T_64bf6_row10_col1" class="data row10 col1" >2020-03-06</td>
	  <td id="T_64bf6_row10_col2" class="data row10 col2" >2020-03-18</td>
	  <td id="T_64bf6_row10_col3" class="data row10 col3" >2020-04-28 00:00:00</td>
	  <td id="T_64bf6_row10_col4" class="data row10 col4" >53 days 00:00:00</td>
	</tr>
	<tr>
	  <th id="T_64bf6_level0_row11" class="row_heading level0 row11" >SHV</th>
	  <td id="T_64bf6_row11_col0" class="data row11 col0" >-0.45%</td>
	  <td id="T_64bf6_row11_col1" class="data row11 col1" >2020-04-07</td>
	  <td id="T_64bf6_row11_col2" class="data row11 col2" >2022-06-14</td>
	  <td id="T_64bf6_row11_col3" class="data row11 col3" >NaT</td>
	  <td id="T_64bf6_row11_col4" class="data row11 col4" >NaT</td>
	</tr>
  </tbody>
</table>

# Multivariable Risk

All the risk measures above are **univariate**.

* The measures above for a return $r$ depend only on functions of the distribution (sample) of $r$.

We will need to consider **multivariable measures**.

* As we will see, the risk for a portfolio will require these measures.

## Notation

Consider a return on asset $i$ and $j$, denoted as $r_i$ and $r_j$.

* Note that these superscripts are not exponents but rather identifiers.

# Covariance

The covariance is defined as

$$\sigma_{i,j} = \E\left[(r_{i,t}-\mu_i)(r_{j,t}-\mu_j)\right]$$

* A covariance of a variable with itself is the variance.

The sample estimate of the covariance is

$$\hat{\sigma}_{i,j} = \frac{1}{\Ntime}\sum_{t=1}^\Ntime\left(r_{i,t} - \meanest_i\right)\left(r_{j,t} - \meanest_j\right)$$

## Covariance Matrix

For $\Nassets$ assets, it is easier to use matrix notation to write the coviariance $\sigma_{i,j}$ as the $i$ row and $j$ column of the $\Nassets\times \Nassets$ **covariance matrix**.

* Note that the diagonal of the matrix is the set of asset variances, $\sigma_{j,j}=\sigma^2_j$.

Let $\rmat$ denote the $\Ntime\times \Nassets$ matrix of sample returns.

* Each of $\Ntime$ rows is a sample observation (period of time).
* Each of $\Nassets$ columns is an asset return.

Perhaps somewhat confusingly, it is common to denote this covariance matrix using the capital Greek letter, $\Sigma$. This looks like a summation sign, but it denotes the $\Nassets\times \Nassets$ covariance:

$$\covmat = \E\left[(\rvec-\muvec)(\rvec-\muvec)'\right]$$

The sample estimator is the $\Nassets\times\Nassets$ matrix,

$$\covest = (\rmat-\meanestvec)(\rmat-\meanestvec)'\left(\frac{1}{\Ntime-\Nassets}\right)$$

where $\meanest$ denotes the $\Nassets\times 1$ vector of sample averages:

$$\meanestvec = \rmat'\onevecNt \left(\frac{1}{\Ntime}\right)$$

and where $\onevecNt$ denotes the $\Ntime\times 1$ vector of ones.

## Technical Note: Properties of the Covariance Matrix

The covariance matrix is

* symmetric: $\Nassets(\Nassets+1)/2$ unique elements
* positive (semi) definite

Positive definite

* does **not** mean each element of the matrix, $\sigma_{i,j}$ is positive
* it means that any combination of the assets will have non-negative variance.

Mathematically, for any $\Nassets\times 1$ $w$, 

$$w'\covest w\ge 0$$

```python
rets.cov().style.format('{:.4%}')
```

<style type="text/css">
</style>
<table id="T_0c8cf">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_0c8cf_level0_col0" class="col_heading level0 col0" >SPY</th>
	  <th id="T_0c8cf_level0_col1" class="col_heading level0 col1" >VEA</th>
	  <th id="T_0c8cf_level0_col2" class="col_heading level0 col2" >UPRO</th>
	  <th id="T_0c8cf_level0_col3" class="col_heading level0 col3" >GLD</th>
	  <th id="T_0c8cf_level0_col4" class="col_heading level0 col4" >USO</th>
	  <th id="T_0c8cf_level0_col5" class="col_heading level0 col5" >CL1</th>
	  <th id="T_0c8cf_level0_col6" class="col_heading level0 col6" >FXE</th>
	  <th id="T_0c8cf_level0_col7" class="col_heading level0 col7" >BTC</th>
	  <th id="T_0c8cf_level0_col8" class="col_heading level0 col8" >HYG</th>
	  <th id="T_0c8cf_level0_col9" class="col_heading level0 col9" >IEF</th>
	  <th id="T_0c8cf_level0_col10" class="col_heading level0 col10" >TIP</th>
	  <th id="T_0c8cf_level0_col11" class="col_heading level0 col11" >SHV</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_0c8cf_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_0c8cf_row0_col0" class="data row0 col0" >0.0152%</td>
	  <td id="T_0c8cf_row0_col1" class="data row0 col1" >0.0125%</td>
	  <td id="T_0c8cf_row0_col2" class="data row0 col2" >0.0458%</td>
	  <td id="T_0c8cf_row0_col3" class="data row0 col3" >0.0004%</td>
	  <td id="T_0c8cf_row0_col4" class="data row0 col4" >0.0106%</td>
	  <td id="T_0c8cf_row0_col5" class="data row0 col5" >0.0165%</td>
	  <td id="T_0c8cf_row0_col6" class="data row0 col6" >0.0005%</td>
	  <td id="T_0c8cf_row0_col7" class="data row0 col7" >0.0136%</td>
	  <td id="T_0c8cf_row0_col8" class="data row0 col8" >0.0055%</td>
	  <td id="T_0c8cf_row0_col9" class="data row0 col9" >-0.0014%</td>
	  <td id="T_0c8cf_row0_col10" class="data row0 col10" >-0.0002%</td>
	  <td id="T_0c8cf_row0_col11" class="data row0 col11" >-0.0000%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row1" class="row_heading level0 row1" >VEA</th>
	  <td id="T_0c8cf_row1_col0" class="data row1 col0" >0.0125%</td>
	  <td id="T_0c8cf_row1_col1" class="data row1 col1" >0.0130%</td>
	  <td id="T_0c8cf_row1_col2" class="data row1 col2" >0.0378%</td>
	  <td id="T_0c8cf_row1_col3" class="data row1 col3" >0.0012%</td>
	  <td id="T_0c8cf_row1_col4" class="data row1 col4" >0.0101%</td>
	  <td id="T_0c8cf_row1_col5" class="data row1 col5" >0.0146%</td>
	  <td id="T_0c8cf_row1_col6" class="data row1 col6" >0.0014%</td>
	  <td id="T_0c8cf_row1_col7" class="data row1 col7" >0.0136%</td>
	  <td id="T_0c8cf_row1_col8" class="data row1 col8" >0.0049%</td>
	  <td id="T_0c8cf_row1_col9" class="data row1 col9" >-0.0012%</td>
	  <td id="T_0c8cf_row1_col10" class="data row1 col10" >0.0001%</td>
	  <td id="T_0c8cf_row1_col11" class="data row1 col11" >-0.0000%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row2" class="row_heading level0 row2" >UPRO</th>
	  <td id="T_0c8cf_row2_col0" class="data row2 col0" >0.0458%</td>
	  <td id="T_0c8cf_row2_col1" class="data row2 col1" >0.0378%</td>
	  <td id="T_0c8cf_row2_col2" class="data row2 col2" >0.1386%</td>
	  <td id="T_0c8cf_row2_col3" class="data row2 col3" >0.0012%</td>
	  <td id="T_0c8cf_row2_col4" class="data row2 col4" >0.0319%</td>
	  <td id="T_0c8cf_row2_col5" class="data row2 col5" >0.0495%</td>
	  <td id="T_0c8cf_row2_col6" class="data row2 col6" >0.0015%</td>
	  <td id="T_0c8cf_row2_col7" class="data row2 col7" >0.0411%</td>
	  <td id="T_0c8cf_row2_col8" class="data row2 col8" >0.0168%</td>
	  <td id="T_0c8cf_row2_col9" class="data row2 col9" >-0.0043%</td>
	  <td id="T_0c8cf_row2_col10" class="data row2 col10" >-0.0006%</td>
	  <td id="T_0c8cf_row2_col11" class="data row2 col11" >-0.0001%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row3" class="row_heading level0 row3" >GLD</th>
	  <td id="T_0c8cf_row3_col0" class="data row3 col0" >0.0004%</td>
	  <td id="T_0c8cf_row3_col1" class="data row3 col1" >0.0012%</td>
	  <td id="T_0c8cf_row3_col2" class="data row3 col2" >0.0012%</td>
	  <td id="T_0c8cf_row3_col3" class="data row3 col3" >0.0073%</td>
	  <td id="T_0c8cf_row3_col4" class="data row3 col4" >0.0014%</td>
	  <td id="T_0c8cf_row3_col5" class="data row3 col5" >0.0014%</td>
	  <td id="T_0c8cf_row3_col6" class="data row3 col6" >0.0014%</td>
	  <td id="T_0c8cf_row3_col7" class="data row3 col7" >0.0039%</td>
	  <td id="T_0c8cf_row3_col8" class="data row3 col8" >0.0006%</td>
	  <td id="T_0c8cf_row3_col9" class="data row3 col9" >0.0011%</td>
	  <td id="T_0c8cf_row3_col10" class="data row3 col10" >0.0012%</td>
	  <td id="T_0c8cf_row3_col11" class="data row3 col11" >0.0000%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row4" class="row_heading level0 row4" >USO</th>
	  <td id="T_0c8cf_row4_col0" class="data row4 col0" >0.0106%</td>
	  <td id="T_0c8cf_row4_col1" class="data row4 col1" >0.0101%</td>
	  <td id="T_0c8cf_row4_col2" class="data row4 col2" >0.0319%</td>
	  <td id="T_0c8cf_row4_col3" class="data row4 col3" >0.0014%</td>
	  <td id="T_0c8cf_row4_col4" class="data row4 col4" >0.0690%</td>
	  <td id="T_0c8cf_row4_col5" class="data row4 col5" >0.1147%</td>
	  <td id="T_0c8cf_row4_col6" class="data row4 col6" >-0.0003%</td>
	  <td id="T_0c8cf_row4_col7" class="data row4 col7" >0.0083%</td>
	  <td id="T_0c8cf_row4_col8" class="data row4 col8" >0.0044%</td>
	  <td id="T_0c8cf_row4_col9" class="data row4 col9" >-0.0016%</td>
	  <td id="T_0c8cf_row4_col10" class="data row4 col10" >0.0013%</td>
	  <td id="T_0c8cf_row4_col11" class="data row4 col11" >-0.0001%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row5" class="row_heading level0 row5" >CL1</th>
	  <td id="T_0c8cf_row5_col0" class="data row5 col0" >0.0165%</td>
	  <td id="T_0c8cf_row5_col1" class="data row5 col1" >0.0146%</td>
	  <td id="T_0c8cf_row5_col2" class="data row5 col2" >0.0495%</td>
	  <td id="T_0c8cf_row5_col3" class="data row5 col3" >0.0014%</td>
	  <td id="T_0c8cf_row5_col4" class="data row5 col4" >0.1147%</td>
	  <td id="T_0c8cf_row5_col5" class="data row5 col5" >0.8984%</td>
	  <td id="T_0c8cf_row5_col6" class="data row5 col6" >-0.0003%</td>
	  <td id="T_0c8cf_row5_col7" class="data row5 col7" >0.0197%</td>
	  <td id="T_0c8cf_row5_col8" class="data row5 col8" >0.0091%</td>
	  <td id="T_0c8cf_row5_col9" class="data row5 col9" >-0.0022%</td>
	  <td id="T_0c8cf_row5_col10" class="data row5 col10" >0.0020%</td>
	  <td id="T_0c8cf_row5_col11" class="data row5 col11" >-0.0001%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row6" class="row_heading level0 row6" >FXE</th>
	  <td id="T_0c8cf_row6_col0" class="data row6 col0" >0.0005%</td>
	  <td id="T_0c8cf_row6_col1" class="data row6 col1" >0.0014%</td>
	  <td id="T_0c8cf_row6_col2" class="data row6 col2" >0.0015%</td>
	  <td id="T_0c8cf_row6_col3" class="data row6 col3" >0.0014%</td>
	  <td id="T_0c8cf_row6_col4" class="data row6 col4" >-0.0003%</td>
	  <td id="T_0c8cf_row6_col5" class="data row6 col5" >-0.0003%</td>
	  <td id="T_0c8cf_row6_col6" class="data row6 col6" >0.0019%</td>
	  <td id="T_0c8cf_row6_col7" class="data row6 col7" >0.0014%</td>
	  <td id="T_0c8cf_row6_col8" class="data row6 col8" >0.0004%</td>
	  <td id="T_0c8cf_row6_col9" class="data row6 col9" >0.0002%</td>
	  <td id="T_0c8cf_row6_col10" class="data row6 col10" >0.0002%</td>
	  <td id="T_0c8cf_row6_col11" class="data row6 col11" >0.0000%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row7" class="row_heading level0 row7" >BTC</th>
	  <td id="T_0c8cf_row7_col0" class="data row7 col0" >0.0136%</td>
	  <td id="T_0c8cf_row7_col1" class="data row7 col1" >0.0136%</td>
	  <td id="T_0c8cf_row7_col2" class="data row7 col2" >0.0411%</td>
	  <td id="T_0c8cf_row7_col3" class="data row7 col3" >0.0039%</td>
	  <td id="T_0c8cf_row7_col4" class="data row7 col4" >0.0083%</td>
	  <td id="T_0c8cf_row7_col5" class="data row7 col5" >0.0197%</td>
	  <td id="T_0c8cf_row7_col6" class="data row7 col6" >0.0014%</td>
	  <td id="T_0c8cf_row7_col7" class="data row7 col7" >0.2417%</td>
	  <td id="T_0c8cf_row7_col8" class="data row7 col8" >0.0050%</td>
	  <td id="T_0c8cf_row7_col9" class="data row7 col9" >-0.0005%</td>
	  <td id="T_0c8cf_row7_col10" class="data row7 col10" >0.0010%</td>
	  <td id="T_0c8cf_row7_col11" class="data row7 col11" >-0.0000%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row8" class="row_heading level0 row8" >HYG</th>
	  <td id="T_0c8cf_row8_col0" class="data row8 col0" >0.0055%</td>
	  <td id="T_0c8cf_row8_col1" class="data row8 col1" >0.0049%</td>
	  <td id="T_0c8cf_row8_col2" class="data row8 col2" >0.0168%</td>
	  <td id="T_0c8cf_row8_col3" class="data row8 col3" >0.0006%</td>
	  <td id="T_0c8cf_row8_col4" class="data row8 col4" >0.0044%</td>
	  <td id="T_0c8cf_row8_col5" class="data row8 col5" >0.0091%</td>
	  <td id="T_0c8cf_row8_col6" class="data row8 col6" >0.0004%</td>
	  <td id="T_0c8cf_row8_col7" class="data row8 col7" >0.0050%</td>
	  <td id="T_0c8cf_row8_col8" class="data row8 col8" >0.0032%</td>
	  <td id="T_0c8cf_row8_col9" class="data row8 col9" >-0.0002%</td>
	  <td id="T_0c8cf_row8_col10" class="data row8 col10" >0.0002%</td>
	  <td id="T_0c8cf_row8_col11" class="data row8 col11" >-0.0000%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row9" class="row_heading level0 row9" >IEF</th>
	  <td id="T_0c8cf_row9_col0" class="data row9 col0" >-0.0014%</td>
	  <td id="T_0c8cf_row9_col1" class="data row9 col1" >-0.0012%</td>
	  <td id="T_0c8cf_row9_col2" class="data row9 col2" >-0.0043%</td>
	  <td id="T_0c8cf_row9_col3" class="data row9 col3" >0.0011%</td>
	  <td id="T_0c8cf_row9_col4" class="data row9 col4" >-0.0016%</td>
	  <td id="T_0c8cf_row9_col5" class="data row9 col5" >-0.0022%</td>
	  <td id="T_0c8cf_row9_col6" class="data row9 col6" >0.0002%</td>
	  <td id="T_0c8cf_row9_col7" class="data row9 col7" >-0.0005%</td>
	  <td id="T_0c8cf_row9_col8" class="data row9 col8" >-0.0002%</td>
	  <td id="T_0c8cf_row9_col9" class="data row9 col9" >0.0014%</td>
	  <td id="T_0c8cf_row9_col10" class="data row9 col10" >0.0009%</td>
	  <td id="T_0c8cf_row9_col11" class="data row9 col11" >0.0000%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row10" class="row_heading level0 row10" >TIP</th>
	  <td id="T_0c8cf_row10_col0" class="data row10 col0" >-0.0002%</td>
	  <td id="T_0c8cf_row10_col1" class="data row10 col1" >0.0001%</td>
	  <td id="T_0c8cf_row10_col2" class="data row10 col2" >-0.0006%</td>
	  <td id="T_0c8cf_row10_col3" class="data row10 col3" >0.0012%</td>
	  <td id="T_0c8cf_row10_col4" class="data row10 col4" >0.0013%</td>
	  <td id="T_0c8cf_row10_col5" class="data row10 col5" >0.0020%</td>
	  <td id="T_0c8cf_row10_col6" class="data row10 col6" >0.0002%</td>
	  <td id="T_0c8cf_row10_col7" class="data row10 col7" >0.0010%</td>
	  <td id="T_0c8cf_row10_col8" class="data row10 col8" >0.0002%</td>
	  <td id="T_0c8cf_row10_col9" class="data row10 col9" >0.0009%</td>
	  <td id="T_0c8cf_row10_col10" class="data row10 col10" >0.0013%</td>
	  <td id="T_0c8cf_row10_col11" class="data row10 col11" >0.0000%</td>
	</tr>
	<tr>
	  <th id="T_0c8cf_level0_row11" class="row_heading level0 row11" >SHV</th>
	  <td id="T_0c8cf_row11_col0" class="data row11 col0" >-0.0000%</td>
	  <td id="T_0c8cf_row11_col1" class="data row11 col1" >-0.0000%</td>
	  <td id="T_0c8cf_row11_col2" class="data row11 col2" >-0.0001%</td>
	  <td id="T_0c8cf_row11_col3" class="data row11 col3" >0.0000%</td>
	  <td id="T_0c8cf_row11_col4" class="data row11 col4" >-0.0001%</td>
	  <td id="T_0c8cf_row11_col5" class="data row11 col5" >-0.0001%</td>
	  <td id="T_0c8cf_row11_col6" class="data row11 col6" >0.0000%</td>
	  <td id="T_0c8cf_row11_col7" class="data row11 col7" >-0.0000%</td>
	  <td id="T_0c8cf_row11_col8" class="data row11 col8" >-0.0000%</td>
	  <td id="T_0c8cf_row11_col9" class="data row11 col9" >0.0000%</td>
	  <td id="T_0c8cf_row11_col10" class="data row11 col10" >0.0000%</td>
	  <td id="T_0c8cf_row11_col11" class="data row11 col11" >0.0000%</td>
	</tr>
  </tbody>
</table>

# Correlation

The scale of the covariance matrix makes it harder to interpret.

Consider the **correlation**, which rescales the covariance in a way that is much more useful for interpretation:

* between -1 and 1
* same sign as the covariance

$$\rho_{i,j} = \frac{\sigma_{i,j}}{\sigma_i\sigma_j}$$

Consider the matrix of correlations.

* will be positive semi-definite, as is the covariance matrix.

```python
sns.heatmap(rets.corr(),annot=True);
```

![png](output_50_0.png)

# Beta

Consider a linear decomposition of $r_i$ on $r_j$:

$$r_{i,t} = \alpha + \beta r_{j,t} + \epsilon_t$$

The OLS sample estimator of $\beta$ is

$$\begin{bmatrix}\hat{\alpha}\\ \hat{\beta}\end{bmatrix} = (\rmat_j'\rmat_j)^{-1}\rmat_j'\rvec_i$$

where $\rmat_j$ denotes the $N\times 2$ matrix where the first column is a vector of ones and the second column is the vector of sample returns of $r_{j,t}$ for $1\le t\le \Ntime$.

# Scaled correlation

Equivalently, for a single-variable regression, the **beta is simply a scaled correlation**:

$$\beta = \frac{\sigma_i}{\sigma_j}\rho_{i,j}$$

The sample estimator is then the product of the sample estimates of these standard deviations and the correlation.

Thus, for bivariate measures, 

## Covariance, correlation, and beta are just three ways of scaling the relationship

```python
COMP = 'SPY'
birisk = pd.DataFrame(dtype=float, columns=['corr','cov','beta'], index=rets.columns)
birisk['corr'] = rets.corr()[COMP]
birisk['cov'] = rets.cov()[COMP] * FREQ
for sec in rets.columns:
    birisk.loc[sec,'beta'] = LinearRegression().fit(rets[[COMP]],rets[[sec]]).coef_[0]

birisk.columns = [f'{COMP} {col}' for col in birisk.columns]
birisk.style.format({birisk.columns[0]:'{:.2%}',birisk.columns[1]:'{:.4%}',birisk.columns[2]:'{:.4f}'})
```

<style type="text/css">
</style>
<table id="T_ee6d3">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_ee6d3_level0_col0" class="col_heading level0 col0" >SPY corr</th>
	  <th id="T_ee6d3_level0_col1" class="col_heading level0 col1" >SPY cov</th>
	  <th id="T_ee6d3_level0_col2" class="col_heading level0 col2" >SPY beta</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_ee6d3_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_ee6d3_row0_col0" class="data row0 col0" >100.00%</td>
	  <td id="T_ee6d3_row0_col1" class="data row0 col1" >3.8180%</td>
	  <td id="T_ee6d3_row0_col2" class="data row0 col2" >1.0000</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row1" class="row_heading level0 row1" >VEA</th>
	  <td id="T_ee6d3_row1_col0" class="data row1 col0" >89.10%</td>
	  <td id="T_ee6d3_row1_col1" class="data row1 col1" >3.1490%</td>
	  <td id="T_ee6d3_row1_col2" class="data row1 col2" >0.8248</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row2" class="row_heading level0 row2" >UPRO</th>
	  <td id="T_ee6d3_row2_col0" class="data row2 col0" >99.91%</td>
	  <td id="T_ee6d3_row2_col1" class="data row2 col1" >11.5394%</td>
	  <td id="T_ee6d3_row2_col2" class="data row2 col2" >3.0224</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row3" class="row_heading level0 row3" >GLD</th>
	  <td id="T_ee6d3_row3_col0" class="data row3 col0" >3.68%</td>
	  <td id="T_ee6d3_row3_col1" class="data row3 col1" >0.0974%</td>
	  <td id="T_ee6d3_row3_col2" class="data row3 col2" >0.0255</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row4" class="row_heading level0 row4" >USO</th>
	  <td id="T_ee6d3_row4_col0" class="data row4 col0" >32.93%</td>
	  <td id="T_ee6d3_row4_col1" class="data row4 col1" >2.6822%</td>
	  <td id="T_ee6d3_row4_col2" class="data row4 col2" >0.7025</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row5" class="row_heading level0 row5" >CL1</th>
	  <td id="T_ee6d3_row5_col0" class="data row5 col0" >14.17%</td>
	  <td id="T_ee6d3_row5_col1" class="data row5 col1" >4.1671%</td>
	  <td id="T_ee6d3_row5_col2" class="data row5 col2" >1.0914</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row6" class="row_heading level0 row6" >FXE</th>
	  <td id="T_ee6d3_row6_col0" class="data row6 col0" >9.73%</td>
	  <td id="T_ee6d3_row6_col1" class="data row6 col1" >0.1310%</td>
	  <td id="T_ee6d3_row6_col2" class="data row6 col2" >0.0343</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row7" class="row_heading level0 row7" >BTC</th>
	  <td id="T_ee6d3_row7_col0" class="data row7 col0" >22.41%</td>
	  <td id="T_ee6d3_row7_col1" class="data row7 col1" >3.4176%</td>
	  <td id="T_ee6d3_row7_col2" class="data row7 col2" >0.8951</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row8" class="row_heading level0 row8" >HYG</th>
	  <td id="T_ee6d3_row8_col0" class="data row8 col0" >79.06%</td>
	  <td id="T_ee6d3_row8_col1" class="data row8 col1" >1.3950%</td>
	  <td id="T_ee6d3_row8_col2" class="data row8 col2" >0.3654</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row9" class="row_heading level0 row9" >IEF</th>
	  <td id="T_ee6d3_row9_col0" class="data row9 col0" >-30.91%</td>
	  <td id="T_ee6d3_row9_col1" class="data row9 col1" >-0.3546%</td>
	  <td id="T_ee6d3_row9_col2" class="data row9 col2" >-0.0929</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row10" class="row_heading level0 row10" >TIP</th>
	  <td id="T_ee6d3_row10_col0" class="data row10 col0" >-3.83%</td>
	  <td id="T_ee6d3_row10_col1" class="data row10 col1" >-0.0429%</td>
	  <td id="T_ee6d3_row10_col2" class="data row10 col2" >-0.0112</td>
	</tr>
	<tr>
	  <th id="T_ee6d3_level0_row11" class="row_heading level0 row11" >SHV</th>
	  <td id="T_ee6d3_row11_col0" class="data row11 col0" >-12.78%</td>
	  <td id="T_ee6d3_row11_col1" class="data row11 col1" >-0.0060%</td>
	  <td id="T_ee6d3_row11_col2" class="data row11 col2" >-0.0016</td>
	</tr>
  </tbody>
</table>

# Multivariate Beta

Beta as a rescaled correlation is helpful, but regression betas can be much more.

Consider a multivariate regression:

$$r_{i,t} = \alpha + \beta_j r_{j,t} +\beta_k r_{k,t} + \epsilon_t$$

The OLS sample estimator of $\beta$ is

$$\begin{bmatrix}\hat{\alpha}\\ \hat{\beta}_j\\ \hat{\beta}_k\end{bmatrix} = (\rmat'\rmat)^{-1}\rmat'\rvec_i$$

noting that here $\rmat$ denotes the matrix with columns of 

* ones, 
* $r_{j,t}$
* $r_{k,t}$

That is, each row is an observation, $t$, and each column is a variable, $(1, r_j, r_k)$.

```python
COMPS = ['SPY','VEA']
betas = pd.DataFrame(dtype=float, columns=COMPS, index=rets.columns)
for sec in rets.columns:
    betas.loc[sec] = LinearRegression().fit(rets[COMPS],rets[[sec]]).coef_

betas.style.format('{:.4f}')
```

<style type="text/css">
</style>
<table id="T_c5071">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_c5071_level0_col0" class="col_heading level0 col0" >SPY</th>
	  <th id="T_c5071_level0_col1" class="col_heading level0 col1" >VEA</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_c5071_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_c5071_row0_col0" class="data row0 col0" >1.0000</td>
	  <td id="T_c5071_row0_col1" class="data row0 col1" >-0.0000</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row1" class="row_heading level0 row1" >VEA</th>
	  <td id="T_c5071_row1_col0" class="data row1 col0" >-0.0000</td>
	  <td id="T_c5071_row1_col1" class="data row1 col1" >1.0000</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row2" class="row_heading level0 row2" >UPRO</th>
	  <td id="T_c5071_row2_col0" class="data row2 col0" >3.0233</td>
	  <td id="T_c5071_row2_col1" class="data row2 col1" >-0.0011</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row3" class="row_heading level0 row3" >GLD</th>
	  <td id="T_c5071_row3_col0" class="data row3 col0" >-0.2465</td>
	  <td id="T_c5071_row3_col1" class="data row3 col1" >0.3298</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row4" class="row_heading level0 row4" >USO</th>
	  <td id="T_c5071_row4_col0" class="data row4 col0" >0.3040</td>
	  <td id="T_c5071_row4_col1" class="data row4 col1" >0.4831</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row5" class="row_heading level0 row5" >CL1</th>
	  <td id="T_c5071_row5_col0" class="data row5 col0" >0.8037</td>
	  <td id="T_c5071_row5_col1" class="data row5 col1" >0.3488</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row6" class="row_heading level0 row6" >FXE</th>
	  <td id="T_c5071_row6_col0" class="data row6 col0" >-0.2581</td>
	  <td id="T_c5071_row6_col1" class="data row6 col1" >0.3545</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row7" class="row_heading level0 row7" >BTC</th>
	  <td id="T_c5071_row7_col0" class="data row7 col0" >0.1564</td>
	  <td id="T_c5071_row7_col1" class="data row7 col1" >0.8957</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row8" class="row_heading level0 row8" >HYG</th>
	  <td id="T_c5071_row8_col0" class="data row8 col0" >0.2523</td>
	  <td id="T_c5071_row8_col1" class="data row8 col1" >0.1371</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row9" class="row_heading level0 row9" >IEF</th>
	  <td id="T_c5071_row9_col0" class="data row9 col0" >-0.0662</td>
	  <td id="T_c5071_row9_col1" class="data row9 col1" >-0.0323</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row10" class="row_heading level0 row10" >TIP</th>
	  <td id="T_c5071_row10_col0" class="data row10 col0" >-0.0727</td>
	  <td id="T_c5071_row10_col1" class="data row10 col1" >0.0746</td>
	</tr>
	<tr>
	  <th id="T_c5071_level0_row11" class="row_heading level0 row11" >SHV</th>
	  <td id="T_c5071_row11_col0" class="data row11 col0" >-0.0016</td>
	  <td id="T_c5071_row11_col1" class="data row11 col1" >0.0000</td>
	</tr>
  </tbody>
</table>

# Coherent Risk Measures

## Risk Measures

Do all these metrics have the properties which will make for a useful risk measure?

Define the following notation:

* two risky payoffs (in USD) $\Pi_j, \Pi_k$.
* $\alpha$: amount of cash holding.

A **risk measure** $\riskmeasure$ measures

* a dollar amount of losses--not the expected losses, but rather the amount of losses that could result
* equivalently, the amount of capital required to protect against losses

Different risk measures will give different answers to this question.

* volatility (std.dev.)
* variance
* quantile

If a risk measure of a risky position, $\riskmeasure(\Pi_j)$ is negative, it indicates an amount of capital that could be withdrawn.

### Risk Capital

The term **risk capital** is used at times to refer to this capital needed to protect against a measure of loss from the portfolio--whether explicitly a margin requirement or an internal budget.

In that sense, the risk measure is assigning the risk capital budgeted for each portfolio.

## Coherence

For a risk measure to be sensible for measuring risk capital, it should have certain features.

A **coherent** risk, $\riskmeasure$, measure satisfies the following properties:

### Translation Invariance

$$\riskmeasure(\alpha + \Pi_j) = \riskmeasure(\Pi_j)-\alpha$$

Adding cash to a position reduces the capital needed to support it one-for-one.

A stock plus cash needs less **additional** capital support (protection) than the stock alone.

If this were not true, it would say that, for risk purposes, combining the cash with the risky assets is different than holding the cash in a separate account.

### Positive Homogeneity

For any positive scaling, $\lambda>0$,

$$\riskmeasure(\lambda\Pi_j) = \lambda\riskmeasure(\Pi_j)$$

The risk capital scales linearly with the position.

* This property is controversial in certain settings and for large scaling, $\lambda$.

### Monotonicity

If $\Pi_j>\Pi_k$ in every state (almost surely) then the risk measure of $\Pi_j$ is lower:

$$\riskmeasure\left(\Pi_j\right) < \riskmeasure\left(\Pi_k\right)$$

For instance, suppose that

* $\Pi_i$ is a stock
* $\Pi_j$ is the same stock plus a long put option

Then this definition requires that a **coherent** risk measure would assign lower risk to $\Pi_j$.

### Subadditive

The risk of the total is less than the sum of its parts:

$$\riskmeasure\left(\Pi_j + \Pi_k\right) \le \riskmeasure\left(\Pi_j\right) + \riskmeasure\left(\Pi_k\right)$$

This condition states that there is a diversification benefit, or at least, no harm.

#### Margin requirement

If this condition did not hold, it would say that there is a direct benefit to splitting assets across accounts, rather than having them net for the margin requirement.

### Convex Risk Measure

There is some use of a generalized concept, the **convex** risk measure. It replaces

* Homogeneity
* Subadditivity

with **convexity** which says that for any $\lambda\in[0,1]$,

$$\riskmeasure(\lambda\Pi_j + (1-\lambda)\Pi_k) \le \lambda\riskmeasure(\Pi_j) + (1-\lambda)\riskmeasure(\Pi_k)$$

### Questions

Which are **coherent** risk measures?

1. Standard deviation
2. Variance
3. 5th quantile of the loss distribution
4. Maximum Drawdown

```python
keys = ['SPY','UPRO']

comp = pd.concat([rets[keys],rets[keys].sum(axis=1)],axis=1).rename(columns={0:'Portfolio'})

mdd = mdd_timeseries(comp)
QUANT = .05

tabcomp = pd.concat([comp.std(), comp.var(), comp.quantile(QUANT), mdd.min()],axis=1,keys=['std','variance',f'quantile {QUANT}','MDD'])
tabcomp.loc['sum of parts'] = tabcomp.iloc[0:-1,:].sum()
tabcomp.style.format('{:.2%}')
```

<style type="text/css">
</style>
<table id="T_9ef9a">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_9ef9a_level0_col0" class="col_heading level0 col0" >std</th>
	  <th id="T_9ef9a_level0_col1" class="col_heading level0 col1" >variance</th>
	  <th id="T_9ef9a_level0_col2" class="col_heading level0 col2" >quantile 0.05</th>
	  <th id="T_9ef9a_level0_col3" class="col_heading level0 col3" >MDD</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_9ef9a_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_9ef9a_row0_col0" class="data row0 col0" >1.23%</td>
	  <td id="T_9ef9a_row0_col1" class="data row0 col1" >0.02%</td>
	  <td id="T_9ef9a_row0_col2" class="data row0 col2" >-1.92%</td>
	  <td id="T_9ef9a_row0_col3" class="data row0 col3" >-33.72%</td>
	</tr>
	<tr>
	  <th id="T_9ef9a_level0_row1" class="row_heading level0 row1" >UPRO</th>
	  <td id="T_9ef9a_row1_col0" class="data row1 col0" >3.72%</td>
	  <td id="T_9ef9a_row1_col1" class="data row1 col1" >0.14%</td>
	  <td id="T_9ef9a_row1_col2" class="data row1 col2" >-5.70%</td>
	  <td id="T_9ef9a_row1_col3" class="data row1 col3" >-76.82%</td>
	</tr>
	<tr>
	  <th id="T_9ef9a_level0_row2" class="row_heading level0 row2" >Portfolio</th>
	  <td id="T_9ef9a_row2_col0" class="data row2 col0" >4.95%</td>
	  <td id="T_9ef9a_row2_col1" class="data row2 col1" >0.25%</td>
	  <td id="T_9ef9a_row2_col2" class="data row2 col2" >-7.63%</td>
	  <td id="T_9ef9a_row2_col3" class="data row2 col3" >-87.79%</td>
	</tr>
	<tr>
	  <th id="T_9ef9a_level0_row3" class="row_heading level0 row3" >sum of parts</th>
	  <td id="T_9ef9a_row3_col0" class="data row3 col0" >4.95%</td>
	  <td id="T_9ef9a_row3_col1" class="data row3 col1" >0.15%</td>
	  <td id="T_9ef9a_row3_col2" class="data row3 col2" >-7.62%</td>
	  <td id="T_9ef9a_row3_col3" class="data row3 col3" >-110.53%</td>
	</tr>
  </tbody>
</table>

#### We will have much more to say about subadditivity and diversification in the next two sessions.

# Dynamic Measures

Above, we measured these risks for a static situation. This would be sufficient for

* iid returns

For many cases of interest, we need the **conditional** risk measures.

* most notably, time-varying volatility

These conditional statistics may be measured with…

* a rolling window
* a stochastic volatility model (GARCH)
* simulation

# References

Coherent risk measures

https://people.math.ethz.ch/~delbaen/ftp/preprints/CoherentMF.pdf

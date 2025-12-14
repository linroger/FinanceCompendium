---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: M.6. Currency
---

# M.6. Currency

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
from portfolio import *
```

$$\newcommand{\frn}{*}$$

$$\newcommand{\RF}{R^{f,\$}}$$

$$\newcommand{\RFa}{R^{f,\frn}}$$

$$\newcommand{\rflog}{\texttt{r}^{f,\$}}$$

$$\newcommand{\rfalog}{\texttt{r}^{f,\frn}}$$

$$\newcommand{\Fcrncy}{F^{\$}}$$

$$\newcommand{\fcrncylog}{\texttt{f}^{\$}}$$

$$\newcommand{\FX}{S}$$

$$\newcommand{\fxlog}{\texttt{s}}$$

# Currency

Currency is traded on the **spot** market at the **exchange rate**.

## Derivatives

Currency derivatives include, (in descending order of size/importance)

* forwards
* swaps
* futures
* options

A few notes on the sizes here…

* Forward currency market is larger than interest-rate forwards!
* Swaps market for currency is about 10% the size of interest-rate swaps.
* Currency options are relatively small, yet still about 1/3 the size of equity options!

### Notable Features
* FX markets are smaller than rates markets, but still huge.
* FX trades mostly in spot, forwards, and swaps
* Relatively small amount in options or futures

### References

OTC Derivatives Size

https://stats.bis.org/statx/srs/table/d5.1

Futures Markets Size

https://stats.bis.org/statx/srs/table/d1

Trading Turnover

https://stats.bis.org/statx/srs/table/d11.1

# Data

`fx_carry_data.xlsx`.

## Risk-free rates

It reports the risk-free rates for various currencies.

- Uses LIBOR, which is being phased out, but is still in-use and easy to get the data from the Fed site, **FRED**.

Timing of the risk-free rate

- The data is defined such that the March value of the risk-free rate corresponds to the rate beginning in March and ending in April.
- In terms of the class notation, $r^{f,i}_{t,t+1}$ is reported at time $t$. (It is risk-free, so it is a rate from $t$ to $t+1$ but it is know at $t$.

## Exchange rates

Spot exchange rates.

```python
DATAPATH_FX = '../data/fx_carry_data.xlsx'
SHEET = 'fx rates'

fx = pd.read_excel(DATAPATH_FX, sheet_name=SHEET).set_index('DATE')
fx.plot(title='Exchange Rates',ylabel='USD per foreign');
```

![png](output_7_0.png)

```python
sns.heatmap(fx.diff().corr(),annot=True)
plt.title('Correlation: FX rate (month-over-month differences)');
```

![png](output_8_0.png)

```python
SHEET = 'risk-free rates'

rfraw = pd.read_excel(DATAPATH_FX,sheet_name=SHEET).set_index('DATE')
rfraw.columns = [col.removesuffix('1M') for col in rfraw.columns]

(rfraw * 12).plot(title='Risk-free rate');
```

![png](output_9_0.png)

```python
sns.heatmap(rfraw.diff().corr(),annot=True)
plt.title('Correlation: Interest rate (month-over-month differences)');
```

![png](output_10_0.png)

# Returns

## Notation

* $S_t$ denotes the foreign exchange rate, expressed as USD per foreign currency
* $\RF_{t,t+1}$ denotes the risk-free factor on US dollars (USD).
* $\RFa_{t,t+1}$ denotes the risk-free factor on a particular foreign currency.

## Two components to returns

Misconception that the return on currency is the percentage change in the exchange rate:

$$\frac{S_{t+1}}{S_t}$$

The price of the currency is $S_t$ dollars.

* In terms of USD, the payoff at time t + 1 of the Euro riskless asset is 
$$\RFa_{t,t+1} S_{t+1}$$

That is, 

* we capitalize any FX gains, 
* but we also earn the riskless return accumulated by the foreign currency.

Thus, the USD return on holding Euros is given by,

$$\RFa_{t,t+1}\frac{ S_{t+1}}{S_t}$$

```python
USDRF = 'USD'

rfusd = rfraw[[USDRF]]
rf = rfraw.drop(columns=[USDRF])

fxgrowth = (fx / fx.shift())
rets = fxgrowth.mul(1+rf.values,axis=1) - 1
rx = rets.sub(rfusd.values,axis=1)
```

```python
rets.loc['2018-04-01':,:].mean()
```

    USUK    0.000004
    USEU   -0.001756
    USSZ    0.000420
    USJP   -0.001623
    dtype: float64

```python
fig, ax = plt.subplots()
(1+rets).cumprod().plot(ax=ax)
(1+rfusd).cumprod().plot(ax=ax)
plt.title('Cumulative Returns of FX')
plt.ylabel('cumulative return')
plt.show()
```

![png](output_16_0.png)

## Extra Statistics on Returns

Main takeaway:

* small mean return--only exciting if you use leverage
* substantial volatility
* large drawdowns (tail-events)

```python
performanceMetrics(rx,annualization=12).style.format('{:.2%}')
```

<style type="text/css">
</style>
<table id="T_41460">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_41460_level0_col0" class="col_heading level0 col0" >Mean</th>
	  <th id="T_41460_level0_col1" class="col_heading level0 col1" >Vol</th>
	  <th id="T_41460_level0_col2" class="col_heading level0 col2" >Sharpe</th>
	  <th id="T_41460_level0_col3" class="col_heading level0 col3" >Min</th>
	  <th id="T_41460_level0_col4" class="col_heading level0 col4" >Max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_41460_level0_row0" class="row_heading level0 row0" >USUK</th>
	  <td id="T_41460_row0_col0" class="data row0 col0" >0.02%</td>
	  <td id="T_41460_row0_col1" class="data row0 col1" >8.62%</td>
	  <td id="T_41460_row0_col2" class="data row0 col2" >0.17%</td>
	  <td id="T_41460_row0_col3" class="data row0 col3" >-9.00%</td>
	  <td id="T_41460_row0_col4" class="data row0 col4" >9.23%</td>
	</tr>
	<tr>
	  <th id="T_41460_level0_row1" class="row_heading level0 row1" >USEU</th>
	  <td id="T_41460_row1_col0" class="data row1 col0" >0.01%</td>
	  <td id="T_41460_row1_col1" class="data row1 col1" >9.48%</td>
	  <td id="T_41460_row1_col2" class="data row1 col2" >0.14%</td>
	  <td id="T_41460_row1_col3" class="data row1 col3" >-9.82%</td>
	  <td id="T_41460_row1_col4" class="data row1 col4" >9.85%</td>
	</tr>
	<tr>
	  <th id="T_41460_level0_row2" class="row_heading level0 row2" >USSZ</th>
	  <td id="T_41460_row2_col0" class="data row2 col0" >0.93%</td>
	  <td id="T_41460_row2_col1" class="data row2 col1" >9.94%</td>
	  <td id="T_41460_row2_col2" class="data row2 col2" >9.32%</td>
	  <td id="T_41460_row2_col3" class="data row2 col3" >-11.18%</td>
	  <td id="T_41460_row2_col4" class="data row2 col4" >13.98%</td>
	</tr>
	<tr>
	  <th id="T_41460_level0_row3" class="row_heading level0 row3" >USJP</th>
	  <td id="T_41460_row3_col0" class="data row3 col0" >-1.31%</td>
	  <td id="T_41460_row3_col1" class="data row3 col1" >9.14%</td>
	  <td id="T_41460_row3_col2" class="data row3 col2" >-14.35%</td>
	  <td id="T_41460_row3_col3" class="data row3 col3" >-8.17%</td>
	  <td id="T_41460_row3_col4" class="data row3 col4" >7.72%</td>
	</tr>
  </tbody>
</table>

```python
tailMetrics(rets)
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
	  <th>Skewness</th>
	  <th>Kurtosis</th>
	  <th>VaR (0.05)</th>
	  <th>CVaR (0.05)</th>
	  <th>Max Drawdown</th>
	  <th>Peak</th>
	  <th>Bottom</th>
	  <th>Recover</th>
	  <th>Duration (to Recover)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>USUK</th>
	  <td>-0.222015</td>
	  <td>1.238815</td>
	  <td>-0.037726</td>
	  <td>-0.054353</td>
	  <td>-0.347757</td>
	  <td>2007-10-31</td>
	  <td>2016-10-31</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>USEU</th>
	  <td>-0.007285</td>
	  <td>1.169067</td>
	  <td>-0.041101</td>
	  <td>-0.058679</td>
	  <td>-0.298985</td>
	  <td>2008-06-30</td>
	  <td>2016-12-31</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>USSZ</th>
	  <td>0.361063</td>
	  <td>2.390270</td>
	  <td>-0.039030</td>
	  <td>-0.053140</td>
	  <td>-0.253469</td>
	  <td>2011-07-31</td>
	  <td>2019-04-30</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>USJP</th>
	  <td>-0.067738</td>
	  <td>0.746711</td>
	  <td>-0.046993</td>
	  <td>-0.059057</td>
	  <td>-0.381979</td>
	  <td>2012-01-31</td>
	  <td>2015-05-31</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
  </tbody>
</table>
</div>

# Decomposing the Returns

Using logs, we can split out the two components of excess log returns

## Logarithms

The data is mostly analyzed in logs, as this simplifies equations later.

* For monthly rates, logs vs levels won't make a big difference.

## Excess returns

The (USD) return in excess of the (USD) risk-free rate is then

$$\tilde{r}^i_{t+1} \equiv \fxlog^i_{t+1} - \fxlog^i_t + r^{f,i}_{t,t+1} - r^{f,\$}_{t,t+1}$$

## Two spreads

For convenience, rewrite this as

$$\tilde{r}^i_{t+1} \equiv \left(\fxlog^i_{t+1} - \fxlog^i_t\right) + (\rfalog_{t,t+1} - \rflog_{t,t+1})$$

### Data Consideration
1. Build the spread in risk-free rates: 

$$\rflog_{t,t+1} - \rfalog_{t,t+1}$$.

* Lag this variable, so that the March-to-April value is stamped as April.

2. Build the FX growth rates: 

$$ \fxlog^i_{t+1} - \fxlog^i_t$$

* These are already stamped as April for the March-to-April FX growth.

Then the excess log return is simply the difference of the two objects.

```python
logFX = np.log(fx)
logRFraw = np.log(rfraw+1)
logRFusd = logRFraw[[USDRF]]
logRF = logRFraw.drop(columns=[USDRF])

logRFspread = -logRF.subtract(logRFusd.values,axis=0)
logRFspread = logRFspread.shift(1)

logFXgrowth = logFX.diff(axis=0)

logRX = logFXgrowth - logRFspread.values
```

```python
logFXgrowth.plot(title='Log FX Growth', figsize=(10,5));
```

![png](output_24_0.png)

```python
(-logRFspread).plot(title='Log Interest Rate Spread (Other-USD)', figsize=(10,5));
```

![png](output_25_0.png)

```python
rx_components = logFXgrowth.mean().to_frame()
rx_components.columns=['FX effect']
rx_components['RF effect'] = -logRFspread.mean().values
rx_components['Total'] = rx_components.sum(axis=1)
rx_components *= 12
rx_components.style.format('{:.2%}')
```

<style type="text/css">
</style>
<table id="T_89eda">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_89eda_level0_col0" class="col_heading level0 col0" >FX effect</th>
	  <th id="T_89eda_level0_col1" class="col_heading level0 col1" >RF effect</th>
	  <th id="T_89eda_level0_col2" class="col_heading level0 col2" >Total</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_89eda_level0_row0" class="row_heading level0 row0" >USUK</th>
	  <td id="T_89eda_row0_col0" class="data row0 col0" >-0.81%</td>
	  <td id="T_89eda_row0_col1" class="data row0 col1" >0.46%</td>
	  <td id="T_89eda_row0_col2" class="data row0 col2" >-0.35%</td>
	</tr>
	<tr>
	  <th id="T_89eda_level0_row1" class="row_heading level0 row1" >USEU</th>
	  <td id="T_89eda_row1_col0" class="data row1 col0" >0.07%</td>
	  <td id="T_89eda_row1_col1" class="data row1 col1" >-0.50%</td>
	  <td id="T_89eda_row1_col2" class="data row1 col2" >-0.44%</td>
	</tr>
	<tr>
	  <th id="T_89eda_level0_row2" class="row_heading level0 row2" >USSZ</th>
	  <td id="T_89eda_row2_col0" class="data row2 col0" >1.91%</td>
	  <td id="T_89eda_row2_col1" class="data row2 col1" >-1.48%</td>
	  <td id="T_89eda_row2_col2" class="data row2 col2" >0.43%</td>
	</tr>
	<tr>
	  <th id="T_89eda_level0_row3" class="row_heading level0 row3" >USJP</th>
	  <td id="T_89eda_row3_col0" class="data row3 col0" >0.08%</td>
	  <td id="T_89eda_row3_col1" class="data row3 col1" >-1.82%</td>
	  <td id="T_89eda_row3_col2" class="data row3 col2" >-1.74%</td>
	</tr>
  </tbody>
</table>

***

# Cryptocurrency

## Crypto Data

For a more thorough description of Crypto, see the references below.

Here, we simply look at the data of the 4 largest cryptocurrencies.

```python
LOADFILE = '../data/fx_data.xlsx'
crypto = pd.read_excel(LOADFILE,sheet_name='crypto').set_index('DATE')
crypto
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
	  <th>BTC</th>
	  <th>ETH</th>
	  <th>LTC</th>
	  <th>BCH</th>
	</tr>
	<tr>
	  <th>DATE</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2017-12-20</th>
	  <td>16496.89</td>
	  <td>802.86</td>
	  <td>305.59</td>
	  <td>3746.84</td>
	</tr>
	<tr>
	  <th>2017-12-21</th>
	  <td>15758.80</td>
	  <td>796.98</td>
	  <td>311.00</td>
	  <td>3162.53</td>
	</tr>
	<tr>
	  <th>2017-12-22</th>
	  <td>14210.57</td>
	  <td>682.11</td>
	  <td>267.79</td>
	  <td>2719.99</td>
	</tr>
	<tr>
	  <th>2017-12-26</th>
	  <td>15790.88</td>
	  <td>755.07</td>
	  <td>280.14</td>
	  <td>2928.04</td>
	</tr>
	<tr>
	  <th>2017-12-27</th>
	  <td>15367.08</td>
	  <td>739.99</td>
	  <td>264.40</td>
	  <td>2719.69</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-06-24</th>
	  <td>21206.32</td>
	  <td>1222.92</td>
	  <td>55.73</td>
	  <td>114.38</td>
	</tr>
	<tr>
	  <th>2022-06-27</th>
	  <td>20718.74</td>
	  <td>1190.69</td>
	  <td>55.82</td>
	  <td>111.29</td>
	</tr>
	<tr>
	  <th>2022-06-28</th>
	  <td>20251.34</td>
	  <td>1142.71</td>
	  <td>52.55</td>
	  <td>102.54</td>
	</tr>
	<tr>
	  <th>2022-06-29</th>
	  <td>20094.43</td>
	  <td>1098.29</td>
	  <td>53.60</td>
	  <td>104.46</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>19837.58</td>
	  <td>1065.24</td>
	  <td>53.61</td>
	  <td>102.61</td>
	</tr>
  </tbody>
</table>
<p>1125 rows × 4 columns</p>
</div>

```python
currency = pd.concat([fx,crypto],axis=1)

sns.heatmap(currency.resample('M').last().pct_change().corr(),annot=True);
plt.title('Correlation of DIFFERENCES of crytpocurrency to other exchange rates');
```

![png](output_31_0.png)

```python
fig, ax = plt.subplots(2,2,figsize=(10,10))
for i, col in enumerate(crypto.columns):
    crypto[col].plot(ax=ax[int(i/2),i%2], title=col)

plt.tight_layout()
plt.show()
```

![png](output_32_0.png)

```python
sns.heatmap(crypto.pct_change().corr(),annot=True)
```

    <AxesSubplot:>




    

![png](output_33_1.png)

```python
ANNUALIZE= np.sqrt(252)
(currency.pct_change().std()*ANNUALIZE).plot.bar(title='Volatility of Exchange Rate Changes');
```

![png](output_34_0.png)

## References

### Economics of Crypto

Recommend this textbook chapter (published freely)

https://marginalrevolution.com/wp-content/uploads/2022/05/Cryptoeconomics-Modern-Principles.pdf

### Blockchain

Highly recommend this video

https://www.youtube.com/watch?v=bBC-nXj3Ng4

The creator mostly makes math videos, (recommended!)

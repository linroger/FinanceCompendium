---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: M.4. Commodity Futures
---

# M.4. Commodity Futures

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
import sys
sys.path.insert(0, '../cmds')
from utils import *
from portfolio import *
```

```python
LOADFILE = '../data/futures_data.xlsx'
futures_info = pd.read_excel(LOADFILE,sheet_name='futures contracts').set_index('symbol')
```

# Definition

A futures contract is an agreement

* entered at $t$
* to purchase an asset at $T$
* for a price $F$

It is an obligation, not an option!

We will return to some key differences between futures and forwards.

## Assets

Futures contracts are an important way to trade commodities including

* energy
* metals
* grains
* livestock

Futures contracts are traded widely on many assets beyond commodities:

* interest-rate products
* currency
* equity indexes
* other indexes

## Data on Variety

The correlation heatmap below gives a sense of the range of products.

* Most bond correlations are 80%+
* Most stock correlations are 60%+

```python
ADJLAB = 'roll=ratio'
futures_hist = pd.read_excel(LOADFILE,sheet_name=f'continuous futures {ADJLAB}').set_index('date')
corrmat = futures_hist.loc['2015':,:].corr()
sns.heatmap(corrmat,annot=True);
```

![png](output_6_0.png)

## Variety of means and volatilities

```python
px = futures_hist.copy()
px[px<0] = np.nan
rx = px.pct_change().dropna()

performanceMetrics(rx,annualization=252).iloc[:,0:2].style.format('{:.1%}')
```

<style type="text/css">
</style>
<table id="T_7d3a3">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_7d3a3_level0_col0" class="col_heading level0 col0" >Mean</th>
	  <th id="T_7d3a3_level0_col1" class="col_heading level0 col1" >Vol</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_7d3a3_level0_row0" class="row_heading level0 row0" >CL1</th>
	  <td id="T_7d3a3_row0_col0" class="data row0 col0" >28.3%</td>
	  <td id="T_7d3a3_row0_col1" class="data row0 col1" >56.2%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row1" class="row_heading level0 row1" >NG1</th>
	  <td id="T_7d3a3_row1_col0" class="data row1 col0" >30.0%</td>
	  <td id="T_7d3a3_row1_col1" class="data row1 col1" >60.5%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row2" class="row_heading level0 row2" >GC1</th>
	  <td id="T_7d3a3_row2_col0" class="data row2 col0" >6.8%</td>
	  <td id="T_7d3a3_row2_col1" class="data row2 col1" >15.0%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row3" class="row_heading level0 row3" >LA1</th>
	  <td id="T_7d3a3_row3_col0" class="data row3 col0" >3.3%</td>
	  <td id="T_7d3a3_row3_col1" class="data row3 col1" >21.4%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row4" class="row_heading level0 row4" >KC1</th>
	  <td id="T_7d3a3_row4_col0" class="data row4 col0" >12.8%</td>
	  <td id="T_7d3a3_row4_col1" class="data row4 col1" >32.3%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row5" class="row_heading level0 row5" >C</th>
	  <td id="T_7d3a3_row5_col0" class="data row5 col0" >18.3%</td>
	  <td id="T_7d3a3_row5_col1" class="data row5 col1" >23.4%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row6" class="row_heading level0 row6" >LC1</th>
	  <td id="T_7d3a3_row6_col0" class="data row6 col0" >-0.4%</td>
	  <td id="T_7d3a3_row6_col1" class="data row6 col1" >17.4%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row7" class="row_heading level0 row7" >LH1</th>
	  <td id="T_7d3a3_row7_col0" class="data row7 col0" >4.2%</td>
	  <td id="T_7d3a3_row7_col1" class="data row7 col1" >36.2%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row8" class="row_heading level0 row8" >ES1</th>
	  <td id="T_7d3a3_row8_col0" class="data row8 col0" >9.8%</td>
	  <td id="T_7d3a3_row8_col1" class="data row8 col1" >20.9%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row9" class="row_heading level0 row9" >NK1</th>
	  <td id="T_7d3a3_row9_col0" class="data row9 col0" >7.6%</td>
	  <td id="T_7d3a3_row9_col1" class="data row9 col1" >20.3%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row10" class="row_heading level0 row10" >BP1</th>
	  <td id="T_7d3a3_row10_col0" class="data row10 col0" >-1.5%</td>
	  <td id="T_7d3a3_row10_col1" class="data row10 col1" >8.7%</td>
	</tr>
	<tr>
	  <th id="T_7d3a3_level0_row11" class="row_heading level0 row11" >BTC1</th>
	  <td id="T_7d3a3_row11_col0" class="data row11 col0" >26.9%</td>
	  <td id="T_7d3a3_row11_col1" class="data row11 col1" >74.5%</td>
	</tr>
  </tbody>
</table>

```python
df = performanceMetrics(rx,annualization=252).iloc[:,0:2]
df.index.name = 'symbol'
df.reset_index(inplace=True)

fig, ax = plt.subplots()
ax.scatter(x=df['Vol'],y=df['Mean'],s=150)
ax.set_xlabel('volatility')
ax.set_ylabel('mean')

for idx, row in df.iterrows():
    ax.annotate(row['symbol'], (row['Vol'], row['Mean']))

plt.title('Futures Return Stats')
plt.show()
```

![png](output_9_0.png)

## Settlement

Settlement may be via

* delivery of the asset
* cash payment equal to the spot price of the asset

Note that there is cash delivery for

* equity indexes
* bitcoin (index)
But there is also cash delivery for some physical assets
* Hogs are delivered via cash
* Cattle are delivered physically

```python
futures_info[['name','category','delivery type']]
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
	  <th>category</th>
	  <th>delivery type</th>
	</tr>
	<tr>
	  <th>symbol</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>CL</th>
	  <td>WTI CRUDE FUTURE  Aug22</td>
	  <td>Crude Oil</td>
	  <td>PHYS</td>
	</tr>
	<tr>
	  <th>NG</th>
	  <td>NATURAL GAS FUTR  Aug22</td>
	  <td>Natural Gas</td>
	  <td>PHYS</td>
	</tr>
	<tr>
	  <th>GC</th>
	  <td>GOLD 100 OZ FUTR  Aug22</td>
	  <td>Precious Metal</td>
	  <td>PHYS</td>
	</tr>
	<tr>
	  <th>AH</th>
	  <td>LME PRI ALUM FUTR Jul22</td>
	  <td>Base Metal</td>
	  <td>PHYS</td>
	</tr>
	<tr>
	  <th>KC</th>
	  <td>COFFEE 'C' FUTURE Sep22</td>
	  <td>Foodstuff</td>
	  <td>PHYS</td>
	</tr>
	<tr>
	  <th>ZC</th>
	  <td>CORN FUTURE       Dec22</td>
	  <td>Corn</td>
	  <td>PHYS</td>
	</tr>
	<tr>
	  <th>LE</th>
	  <td>LIVE CATTLE FUTR  Aug22</td>
	  <td>Livestock</td>
	  <td>PHYS</td>
	</tr>
	<tr>
	  <th>HE</th>
	  <td>LEAN HOGS FUTURE  Aug22</td>
	  <td>Livestock</td>
	  <td>CASH</td>
	</tr>
	<tr>
	  <th>ES</th>
	  <td>S&amp;P500 EMINI FUT  Sep22</td>
	  <td>Equity Index</td>
	  <td>CASH</td>
	</tr>
	<tr>
	  <th>225</th>
	  <td>NIKKEI 225  (OSE) Sep22</td>
	  <td>Equity Index</td>
	  <td>CASH</td>
	</tr>
	<tr>
	  <th>6B</th>
	  <td>BP CURRENCY FUT   Sep22</td>
	  <td>Currency</td>
	  <td>PHYS</td>
	</tr>
	<tr>
	  <th>BTC</th>
	  <td>CME Bitcoin Fut   Jul22</td>
	  <td>Non-Equity Index</td>
	  <td>CASH</td>
	</tr>
  </tbody>
</table>
</div>

```python
futures_info
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
	  <th>bb ticker</th>
	  <th>name</th>
	  <th>type</th>
	  <th>category</th>
	  <th>delivery type</th>
	  <th>exchange</th>
	  <th>contract date</th>
	  <th>contract size</th>
	  <th>contract value</th>
	  <th>crncy</th>
	  <th>margin limit</th>
	  <th>tick size</th>
	  <th>tick value</th>
	  <th>open interest</th>
	  <th>volume</th>
	  <th>volume 10d avg</th>
	</tr>
	<tr>
	  <th>symbol</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
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
	  <th>CL</th>
	  <td>CLA Comdty</td>
	  <td>WTI CRUDE FUTURE  Aug22</td>
	  <td>Physical commodity future.</td>
	  <td>Crude Oil</td>
	  <td>PHYS</td>
	  <td>New York Mercantile Exchange</td>
	  <td>2022-08-01</td>
	  <td>1000</td>
	  <td>103210.0</td>
	  <td>USD</td>
	  <td>8350.0</td>
	  <td>0.010</td>
	  <td>10.00</td>
	  <td>176736</td>
	  <td>30884</td>
	  <td>366608.5</td>
	</tr>
	<tr>
	  <th>NG</th>
	  <td>NGA Comdty</td>
	  <td>NATURAL GAS FUTR  Aug22</td>
	  <td>Physical commodity future.</td>
	  <td>Natural Gas</td>
	  <td>PHYS</td>
	  <td>New York Mercantile Exchange</td>
	  <td>2022-08-01</td>
	  <td>10000</td>
	  <td>61910.0</td>
	  <td>USD</td>
	  <td>7700.0</td>
	  <td>0.001</td>
	  <td>10.00</td>
	  <td>85417</td>
	  <td>2598</td>
	  <td>107210.4</td>
	</tr>
	<tr>
	  <th>GC</th>
	  <td>GCA Comdty</td>
	  <td>GOLD 100 OZ FUTR  Aug22</td>
	  <td>Physical commodity future.</td>
	  <td>Precious Metal</td>
	  <td>PHYS</td>
	  <td>Commodity Exchange, Inc.</td>
	  <td>2022-08-01</td>
	  <td>100</td>
	  <td>174000.0</td>
	  <td>USD</td>
	  <td>7200.0</td>
	  <td>0.100</td>
	  <td>10.00</td>
	  <td>360981</td>
	  <td>17235</td>
	  <td>189638.9</td>
	</tr>
	<tr>
	  <th>AH</th>
	  <td>LAA Comdty</td>
	  <td>LME PRI ALUM FUTR Jul22</td>
	  <td>Physical commodity future.</td>
	  <td>Base Metal</td>
	  <td>PHYS</td>
	  <td>London Metal Exchange</td>
	  <td>2022-07-01</td>
	  <td>25</td>
	  <td>60887.5</td>
	  <td>USD</td>
	  <td>NaN</td>
	  <td>0.010</td>
	  <td>0.25</td>
	  <td>37554</td>
	  <td>442</td>
	  <td>12501.5</td>
	</tr>
	<tr>
	  <th>KC</th>
	  <td>KCA Comdty</td>
	  <td>COFFEE 'C' FUTURE Sep22</td>
	  <td>Physical commodity future.</td>
	  <td>Foodstuff</td>
	  <td>PHYS</td>
	  <td>ICE Futures US Softs</td>
	  <td>2022-09-01</td>
	  <td>37500</td>
	  <td>82087.5</td>
	  <td>USD</td>
	  <td>9000.0</td>
	  <td>0.050</td>
	  <td>18.75</td>
	  <td>101075</td>
	  <td>15350</td>
	  <td>17316.5</td>
	</tr>
	<tr>
	  <th>ZC</th>
	  <td>C A Comdty</td>
	  <td>CORN FUTURE       Dec22</td>
	  <td>Physical commodity future.</td>
	  <td>Corn</td>
	  <td>PHYS</td>
	  <td>Chicago Board of Trade</td>
	  <td>2022-12-01</td>
	  <td>5000</td>
	  <td>30100.0</td>
	  <td>USD</td>
	  <td>2300.0</td>
	  <td>0.250</td>
	  <td>12.50</td>
	  <td>568770</td>
	  <td>10530</td>
	  <td>161184.2</td>
	</tr>
	<tr>
	  <th>LE</th>
	  <td>LCA Comdty</td>
	  <td>LIVE CATTLE FUTR  Aug22</td>
	  <td>Physical commodity future.</td>
	  <td>Livestock</td>
	  <td>PHYS</td>
	  <td>Chicago Mercantile Exchange</td>
	  <td>2022-08-01</td>
	  <td>40000</td>
	  <td>53820.0</td>
	  <td>USD</td>
	  <td>1600.0</td>
	  <td>0.025</td>
	  <td>10.00</td>
	  <td>99455</td>
	  <td>23969</td>
	  <td>26257.6</td>
	</tr>
	<tr>
	  <th>HE</th>
	  <td>LHA Comdty</td>
	  <td>LEAN HOGS FUTURE  Aug22</td>
	  <td>Physical commodity future.</td>
	  <td>Livestock</td>
	  <td>CASH</td>
	  <td>Chicago Mercantile Exchange</td>
	  <td>2022-08-01</td>
	  <td>40000</td>
	  <td>43800.0</td>
	  <td>USD</td>
	  <td>1900.0</td>
	  <td>0.025</td>
	  <td>10.00</td>
	  <td>55247</td>
	  <td>25067</td>
	  <td>20161.5</td>
	</tr>
	<tr>
	  <th>ES</th>
	  <td>ESA Index</td>
	  <td>S&amp;P500 EMINI FUT  Sep22</td>
	  <td>Physical index future.</td>
	  <td>Equity Index</td>
	  <td>CASH</td>
	  <td>Chicago Mercantile Exchange</td>
	  <td>2022-09-01</td>
	  <td>50</td>
	  <td>194450.0</td>
	  <td>USD</td>
	  <td>10500.0</td>
	  <td>0.250</td>
	  <td>12.50</td>
	  <td>2279397</td>
	  <td>58054</td>
	  <td>1735525.7</td>
	</tr>
	<tr>
	  <th>225</th>
	  <td>NKA Index</td>
	  <td>NIKKEI 225  (OSE) Sep22</td>
	  <td>Physical index future.</td>
	  <td>Equity Index</td>
	  <td>CASH</td>
	  <td>Osaka Exchange</td>
	  <td>2022-09-01</td>
	  <td>1000</td>
	  <td>26580000.0</td>
	  <td>JPY</td>
	  <td>NaN</td>
	  <td>10.000</td>
	  <td>10000.00</td>
	  <td>225693</td>
	  <td>91309</td>
	  <td>74264.9</td>
	</tr>
	<tr>
	  <th>6B</th>
	  <td>BPA Curncy</td>
	  <td>BP CURRENCY FUT   Sep22</td>
	  <td>Currency future.</td>
	  <td>Currency</td>
	  <td>PHYS</td>
	  <td>Chicago Mercantile Exchange</td>
	  <td>2022-09-01</td>
	  <td>62500</td>
	  <td>75125.0</td>
	  <td>USD</td>
	  <td>2050.0</td>
	  <td>0.010</td>
	  <td>6.25</td>
	  <td>239363</td>
	  <td>12090</td>
	  <td>105927.0</td>
	</tr>
	<tr>
	  <th>BTC</th>
	  <td>BTCA Curncy</td>
	  <td>CME Bitcoin Fut   Jul22</td>
	  <td>Currency future.</td>
	  <td>Non-Equity Index</td>
	  <td>CASH</td>
	  <td>Chicago Mercantile Exchange</td>
	  <td>2022-07-01</td>
	  <td>5</td>
	  <td>109825.0</td>
	  <td>USD</td>
	  <td>31690.0</td>
	  <td>5.000</td>
	  <td>25.00</td>
	  <td>9802</td>
	  <td>1904</td>
	  <td>8359.7</td>
	</tr>
  </tbody>
</table>
</div>

# Quoting Conventions

https://www.cmegroup.com/markets/energy/crude-oil/light-sweet-crude.contractSpecs.html

## Multiple

```python
futures_info[['name','contract size','contract value']].style.format({'contract size':'{:,.0f}','contract value':'${:,.0f}'})
```

<style type="text/css">
</style>
<table id="T_63017">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_63017_level0_col0" class="col_heading level0 col0" >name</th>
	  <th id="T_63017_level0_col1" class="col_heading level0 col1" >contract size</th>
	  <th id="T_63017_level0_col2" class="col_heading level0 col2" >contract value</th>
	</tr>
	<tr>
	  <th class="index_name level0" >symbol</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_63017_level0_row0" class="row_heading level0 row0" >CL</th>
	  <td id="T_63017_row0_col0" class="data row0 col0" >WTI CRUDE FUTURE  Aug22</td>
	  <td id="T_63017_row0_col1" class="data row0 col1" >1,000</td>
	  <td id="T_63017_row0_col2" class="data row0 col2" >$103,210</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row1" class="row_heading level0 row1" >NG</th>
	  <td id="T_63017_row1_col0" class="data row1 col0" >NATURAL GAS FUTR  Aug22</td>
	  <td id="T_63017_row1_col1" class="data row1 col1" >10,000</td>
	  <td id="T_63017_row1_col2" class="data row1 col2" >$61,910</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row2" class="row_heading level0 row2" >GC</th>
	  <td id="T_63017_row2_col0" class="data row2 col0" >GOLD 100 OZ FUTR  Aug22</td>
	  <td id="T_63017_row2_col1" class="data row2 col1" >100</td>
	  <td id="T_63017_row2_col2" class="data row2 col2" >$174,000</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row3" class="row_heading level0 row3" >AH</th>
	  <td id="T_63017_row3_col0" class="data row3 col0" >LME PRI ALUM FUTR Jul22</td>
	  <td id="T_63017_row3_col1" class="data row3 col1" >25</td>
	  <td id="T_63017_row3_col2" class="data row3 col2" >$60,888</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row4" class="row_heading level0 row4" >KC</th>
	  <td id="T_63017_row4_col0" class="data row4 col0" >COFFEE 'C' FUTURE Sep22</td>
	  <td id="T_63017_row4_col1" class="data row4 col1" >37,500</td>
	  <td id="T_63017_row4_col2" class="data row4 col2" >$82,088</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row5" class="row_heading level0 row5" >ZC</th>
	  <td id="T_63017_row5_col0" class="data row5 col0" >CORN FUTURE       Dec22</td>
	  <td id="T_63017_row5_col1" class="data row5 col1" >5,000</td>
	  <td id="T_63017_row5_col2" class="data row5 col2" >$30,100</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row6" class="row_heading level0 row6" >LE</th>
	  <td id="T_63017_row6_col0" class="data row6 col0" >LIVE CATTLE FUTR  Aug22</td>
	  <td id="T_63017_row6_col1" class="data row6 col1" >40,000</td>
	  <td id="T_63017_row6_col2" class="data row6 col2" >$53,820</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row7" class="row_heading level0 row7" >HE</th>
	  <td id="T_63017_row7_col0" class="data row7 col0" >LEAN HOGS FUTURE  Aug22</td>
	  <td id="T_63017_row7_col1" class="data row7 col1" >40,000</td>
	  <td id="T_63017_row7_col2" class="data row7 col2" >$43,800</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row8" class="row_heading level0 row8" >ES</th>
	  <td id="T_63017_row8_col0" class="data row8 col0" >S&P500 EMINI FUT  Sep22</td>
	  <td id="T_63017_row8_col1" class="data row8 col1" >50</td>
	  <td id="T_63017_row8_col2" class="data row8 col2" >$194,450</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row9" class="row_heading level0 row9" >225</th>
	  <td id="T_63017_row9_col0" class="data row9 col0" >NIKKEI 225  (OSE) Sep22</td>
	  <td id="T_63017_row9_col1" class="data row9 col1" >1,000</td>
	  <td id="T_63017_row9_col2" class="data row9 col2" >$26,580,000</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row10" class="row_heading level0 row10" >6B</th>
	  <td id="T_63017_row10_col0" class="data row10 col0" >BP CURRENCY FUT   Sep22</td>
	  <td id="T_63017_row10_col1" class="data row10 col1" >62,500</td>
	  <td id="T_63017_row10_col2" class="data row10 col2" >$75,125</td>
	</tr>
	<tr>
	  <th id="T_63017_level0_row11" class="row_heading level0 row11" >BTC</th>
	  <td id="T_63017_row11_col0" class="data row11 col0" >CME Bitcoin Fut   Jul22</td>
	  <td id="T_63017_row11_col1" class="data row11 col1" >5</td>
	  <td id="T_63017_row11_col2" class="data row11 col2" >$109,825</td>
	</tr>
  </tbody>
</table>

## Tick Size

```python
futures_info[['name','tick size','tick value']].style.format({'tick size':'{:.3f}','tick value':'{:.2f}'})
```

<style type="text/css">
</style>
<table id="T_b4876">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_b4876_level0_col0" class="col_heading level0 col0" >name</th>
	  <th id="T_b4876_level0_col1" class="col_heading level0 col1" >tick size</th>
	  <th id="T_b4876_level0_col2" class="col_heading level0 col2" >tick value</th>
	</tr>
	<tr>
	  <th class="index_name level0" >symbol</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_b4876_level0_row0" class="row_heading level0 row0" >CL</th>
	  <td id="T_b4876_row0_col0" class="data row0 col0" >WTI CRUDE FUTURE  Aug22</td>
	  <td id="T_b4876_row0_col1" class="data row0 col1" >0.010</td>
	  <td id="T_b4876_row0_col2" class="data row0 col2" >10.00</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row1" class="row_heading level0 row1" >NG</th>
	  <td id="T_b4876_row1_col0" class="data row1 col0" >NATURAL GAS FUTR  Aug22</td>
	  <td id="T_b4876_row1_col1" class="data row1 col1" >0.001</td>
	  <td id="T_b4876_row1_col2" class="data row1 col2" >10.00</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row2" class="row_heading level0 row2" >GC</th>
	  <td id="T_b4876_row2_col0" class="data row2 col0" >GOLD 100 OZ FUTR  Aug22</td>
	  <td id="T_b4876_row2_col1" class="data row2 col1" >0.100</td>
	  <td id="T_b4876_row2_col2" class="data row2 col2" >10.00</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row3" class="row_heading level0 row3" >AH</th>
	  <td id="T_b4876_row3_col0" class="data row3 col0" >LME PRI ALUM FUTR Jul22</td>
	  <td id="T_b4876_row3_col1" class="data row3 col1" >0.010</td>
	  <td id="T_b4876_row3_col2" class="data row3 col2" >0.25</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row4" class="row_heading level0 row4" >KC</th>
	  <td id="T_b4876_row4_col0" class="data row4 col0" >COFFEE 'C' FUTURE Sep22</td>
	  <td id="T_b4876_row4_col1" class="data row4 col1" >0.050</td>
	  <td id="T_b4876_row4_col2" class="data row4 col2" >18.75</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row5" class="row_heading level0 row5" >ZC</th>
	  <td id="T_b4876_row5_col0" class="data row5 col0" >CORN FUTURE       Dec22</td>
	  <td id="T_b4876_row5_col1" class="data row5 col1" >0.250</td>
	  <td id="T_b4876_row5_col2" class="data row5 col2" >12.50</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row6" class="row_heading level0 row6" >LE</th>
	  <td id="T_b4876_row6_col0" class="data row6 col0" >LIVE CATTLE FUTR  Aug22</td>
	  <td id="T_b4876_row6_col1" class="data row6 col1" >0.025</td>
	  <td id="T_b4876_row6_col2" class="data row6 col2" >10.00</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row7" class="row_heading level0 row7" >HE</th>
	  <td id="T_b4876_row7_col0" class="data row7 col0" >LEAN HOGS FUTURE  Aug22</td>
	  <td id="T_b4876_row7_col1" class="data row7 col1" >0.025</td>
	  <td id="T_b4876_row7_col2" class="data row7 col2" >10.00</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row8" class="row_heading level0 row8" >ES</th>
	  <td id="T_b4876_row8_col0" class="data row8 col0" >S&P500 EMINI FUT  Sep22</td>
	  <td id="T_b4876_row8_col1" class="data row8 col1" >0.250</td>
	  <td id="T_b4876_row8_col2" class="data row8 col2" >12.50</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row9" class="row_heading level0 row9" >225</th>
	  <td id="T_b4876_row9_col0" class="data row9 col0" >NIKKEI 225  (OSE) Sep22</td>
	  <td id="T_b4876_row9_col1" class="data row9 col1" >10.000</td>
	  <td id="T_b4876_row9_col2" class="data row9 col2" >10000.00</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row10" class="row_heading level0 row10" >6B</th>
	  <td id="T_b4876_row10_col0" class="data row10 col0" >BP CURRENCY FUT   Sep22</td>
	  <td id="T_b4876_row10_col1" class="data row10 col1" >0.010</td>
	  <td id="T_b4876_row10_col2" class="data row10 col2" >6.25</td>
	</tr>
	<tr>
	  <th id="T_b4876_level0_row11" class="row_heading level0 row11" >BTC</th>
	  <td id="T_b4876_row11_col0" class="data row11 col0" >CME Bitcoin Fut   Jul22</td>
	  <td id="T_b4876_row11_col1" class="data row11 col1" >5.000</td>
	  <td id="T_b4876_row11_col2" class="data row11 col2" >25.00</td>
	</tr>
  </tbody>
</table>

# Trading

## Exchanges

**Futures** trade on exchanges. In U.S. markets, the following two exchanges are of particular note:

* Chicago Mercantile Exchange (CME)
* Intercontinental Exchange (ICE)

In recent years, the trading has moved to being overwhelmingly (and at many exchanges, completely,) electronic.

### Standardization

One role of an exchange is to standardize the trading, which allows for better liquidity.

This is especially useful in commodities, to set the grade, size, location of the asset.

### Clearing

As part of trading on an exchange, futures are **centrally cleared.** This is important for 

* eliminating counterparty risk
* achieving better netting and margin requirements

## Open Interest

**Open Interest** measures the number of open positions for the specific futures contract, cumulated over time.

**Volume** is the number of contracts traded that period (daily below).

See the chart below for the difference

```python
futures_info[['name','open interest','volume','volume 10d avg']].style.format({'open interest':'{:,.0f}','volume':'{:,.0f}','volume 10d avg':'{:,.0f}'})
```

<style type="text/css">
</style>
<table id="T_80002">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_80002_level0_col0" class="col_heading level0 col0" >name</th>
	  <th id="T_80002_level0_col1" class="col_heading level0 col1" >open interest</th>
	  <th id="T_80002_level0_col2" class="col_heading level0 col2" >volume</th>
	  <th id="T_80002_level0_col3" class="col_heading level0 col3" >volume 10d avg</th>
	</tr>
	<tr>
	  <th class="index_name level0" >symbol</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_80002_level0_row0" class="row_heading level0 row0" >CL</th>
	  <td id="T_80002_row0_col0" class="data row0 col0" >WTI CRUDE FUTURE  Aug22</td>
	  <td id="T_80002_row0_col1" class="data row0 col1" >176,736</td>
	  <td id="T_80002_row0_col2" class="data row0 col2" >30,884</td>
	  <td id="T_80002_row0_col3" class="data row0 col3" >366,608</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row1" class="row_heading level0 row1" >NG</th>
	  <td id="T_80002_row1_col0" class="data row1 col0" >NATURAL GAS FUTR  Aug22</td>
	  <td id="T_80002_row1_col1" class="data row1 col1" >85,417</td>
	  <td id="T_80002_row1_col2" class="data row1 col2" >2,598</td>
	  <td id="T_80002_row1_col3" class="data row1 col3" >107,210</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row2" class="row_heading level0 row2" >GC</th>
	  <td id="T_80002_row2_col0" class="data row2 col0" >GOLD 100 OZ FUTR  Aug22</td>
	  <td id="T_80002_row2_col1" class="data row2 col1" >360,981</td>
	  <td id="T_80002_row2_col2" class="data row2 col2" >17,235</td>
	  <td id="T_80002_row2_col3" class="data row2 col3" >189,639</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row3" class="row_heading level0 row3" >AH</th>
	  <td id="T_80002_row3_col0" class="data row3 col0" >LME PRI ALUM FUTR Jul22</td>
	  <td id="T_80002_row3_col1" class="data row3 col1" >37,554</td>
	  <td id="T_80002_row3_col2" class="data row3 col2" >442</td>
	  <td id="T_80002_row3_col3" class="data row3 col3" >12,502</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row4" class="row_heading level0 row4" >KC</th>
	  <td id="T_80002_row4_col0" class="data row4 col0" >COFFEE 'C' FUTURE Sep22</td>
	  <td id="T_80002_row4_col1" class="data row4 col1" >101,075</td>
	  <td id="T_80002_row4_col2" class="data row4 col2" >15,350</td>
	  <td id="T_80002_row4_col3" class="data row4 col3" >17,316</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row5" class="row_heading level0 row5" >ZC</th>
	  <td id="T_80002_row5_col0" class="data row5 col0" >CORN FUTURE       Dec22</td>
	  <td id="T_80002_row5_col1" class="data row5 col1" >568,770</td>
	  <td id="T_80002_row5_col2" class="data row5 col2" >10,530</td>
	  <td id="T_80002_row5_col3" class="data row5 col3" >161,184</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row6" class="row_heading level0 row6" >LE</th>
	  <td id="T_80002_row6_col0" class="data row6 col0" >LIVE CATTLE FUTR  Aug22</td>
	  <td id="T_80002_row6_col1" class="data row6 col1" >99,455</td>
	  <td id="T_80002_row6_col2" class="data row6 col2" >23,969</td>
	  <td id="T_80002_row6_col3" class="data row6 col3" >26,258</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row7" class="row_heading level0 row7" >HE</th>
	  <td id="T_80002_row7_col0" class="data row7 col0" >LEAN HOGS FUTURE  Aug22</td>
	  <td id="T_80002_row7_col1" class="data row7 col1" >55,247</td>
	  <td id="T_80002_row7_col2" class="data row7 col2" >25,067</td>
	  <td id="T_80002_row7_col3" class="data row7 col3" >20,162</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row8" class="row_heading level0 row8" >ES</th>
	  <td id="T_80002_row8_col0" class="data row8 col0" >S&P500 EMINI FUT  Sep22</td>
	  <td id="T_80002_row8_col1" class="data row8 col1" >2,279,397</td>
	  <td id="T_80002_row8_col2" class="data row8 col2" >58,054</td>
	  <td id="T_80002_row8_col3" class="data row8 col3" >1,735,526</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row9" class="row_heading level0 row9" >225</th>
	  <td id="T_80002_row9_col0" class="data row9 col0" >NIKKEI 225  (OSE) Sep22</td>
	  <td id="T_80002_row9_col1" class="data row9 col1" >225,693</td>
	  <td id="T_80002_row9_col2" class="data row9 col2" >91,309</td>
	  <td id="T_80002_row9_col3" class="data row9 col3" >74,265</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row10" class="row_heading level0 row10" >6B</th>
	  <td id="T_80002_row10_col0" class="data row10 col0" >BP CURRENCY FUT   Sep22</td>
	  <td id="T_80002_row10_col1" class="data row10 col1" >239,363</td>
	  <td id="T_80002_row10_col2" class="data row10 col2" >12,090</td>
	  <td id="T_80002_row10_col3" class="data row10 col3" >105,927</td>
	</tr>
	<tr>
	  <th id="T_80002_level0_row11" class="row_heading level0 row11" >BTC</th>
	  <td id="T_80002_row11_col0" class="data row11 col0" >CME Bitcoin Fut   Jul22</td>
	  <td id="T_80002_row11_col1" class="data row11 col1" >9,802</td>
	  <td id="T_80002_row11_col2" class="data row11 col2" >1,904</td>
	  <td id="T_80002_row11_col3" class="data row11 col3" >8,360</td>
	</tr>
  </tbody>
</table>

### Closing Positions

Most open interest is ultimately closed via **offsetting contracts, NOT delivery**.

Consider the open interest for various contracts on Crude Oil (CL) and Gold (GC).

For each contract, we see the open interest rises about a month before the delivery, and then drops to nearly zero just before delivery.

```python
TICKS = ['CL','GC']

futures_ts = pd.read_excel(LOADFILE,sheet_name='futures timeseries',header=[0,1,2]).droplevel(2,axis=1)
futures_ts.set_index(futures_ts.columns[0],inplace=True)
futures_ts.index.name = 'date'
futures_ts = futures_ts.swaplevel(axis=1)
```

```python
idx = 0
exname = futures_ts['OPEN_INT'].iloc[:,idx].name
exdata = futures_ts['OPEN_INT'].iloc[:,idx].dropna()
exdata.plot(title=f'Open Interest for {exname}');
```

![png](output_23_0.png)

```python
intpct = exdata[-1]/exdata.max()
print(f'Open Interest at close is {intpct:.2%} of its peak!')
```

    Open Interest at close is 0.54% of its peak!

## Active Contract

For a given futures chain, only a few are liquid. 

The **active contract** is typically denoted as the front-month (nearest expiration) which typically corresponds with the contract with the highest **open interest**.

For the two examples below, we see that the soonest-to-expiry sees a spike in open interest, with the second-nearest expiry rising in anticipation of being the active contract.

## Liquidity

Thus, the active contract tends to be **much** more liquid , as measured by volume or open interest.

As a corollary, a contract will be listed, yet may receive almost zero interest or volume for months or years.

In the example **above**, note that the open interest is minuscule for a year.

```python
fig, ax = plt.subplots(2,1,figsize=(12,12))
futures_ts['OPEN_INT'].iloc[:,0:4].plot(ax=ax[0],xlim=('2021-06','2022-07'),title=f'Open Interest for {TICKS[0]}',ylabel='open interest')
futures_ts['VOLUME'].iloc[:,0:4].plot(ax=ax[1],xlim=('2021-06','2022-07'),title=f'Volume for {TICKS[0]}',ylabel='volume')
plt.tight_layout()
plt.show()
```

![png](output_27_0.png)

## Margins and Marking to Market

```python
marg = futures_info[['name']].copy()
marg['margin limit %'] = futures_info['margin limit']/futures_info['contract value']

marg['vol'] = rx.std().values
marg['margin sigma'] = marg['margin limit %'] / marg['vol']
marg.set_index('name',inplace=True)
marg.index = [' '.join(row.split()[:-2]) for row in marg.index]

marg.dropna().sort_values('margin sigma').style.format({'margin limit %':'{:.1%}','vol':'{:.1%}','margin sigma':'{:.1f}'})
```

<style type="text/css">
</style>
<table id="T_33e7e">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_33e7e_level0_col0" class="col_heading level0 col0" >margin limit %</th>
	  <th id="T_33e7e_level0_col1" class="col_heading level0 col1" >vol</th>
	  <th id="T_33e7e_level0_col2" class="col_heading level0 col2" >margin sigma</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_33e7e_level0_row0" class="row_heading level0 row0" >LEAN HOGS</th>
	  <td id="T_33e7e_row0_col0" class="data row0 col0" >4.3%</td>
	  <td id="T_33e7e_row0_col1" class="data row0 col1" >2.3%</td>
	  <td id="T_33e7e_row0_col2" class="data row0 col2" >1.9</td>
	</tr>
	<tr>
	  <th id="T_33e7e_level0_row1" class="row_heading level0 row1" >WTI CRUDE</th>
	  <td id="T_33e7e_row1_col0" class="data row1 col0" >8.1%</td>
	  <td id="T_33e7e_row1_col1" class="data row1 col1" >3.5%</td>
	  <td id="T_33e7e_row1_col2" class="data row1 col2" >2.3</td>
	</tr>
	<tr>
	  <th id="T_33e7e_level0_row2" class="row_heading level0 row2" >LIVE CATTLE</th>
	  <td id="T_33e7e_row2_col0" class="data row2 col0" >3.0%</td>
	  <td id="T_33e7e_row2_col1" class="data row2 col1" >1.1%</td>
	  <td id="T_33e7e_row2_col2" class="data row2 col2" >2.7</td>
	</tr>
	<tr>
	  <th id="T_33e7e_level0_row3" class="row_heading level0 row3" >NATURAL GAS</th>
	  <td id="T_33e7e_row3_col0" class="data row3 col0" >12.4%</td>
	  <td id="T_33e7e_row3_col1" class="data row3 col1" >3.8%</td>
	  <td id="T_33e7e_row3_col2" class="data row3 col2" >3.3</td>
	</tr>
	<tr>
	  <th id="T_33e7e_level0_row4" class="row_heading level0 row4" >S&P500 EMINI</th>
	  <td id="T_33e7e_row4_col0" class="data row4 col0" >5.4%</td>
	  <td id="T_33e7e_row4_col1" class="data row4 col1" >1.3%</td>
	  <td id="T_33e7e_row4_col2" class="data row4 col2" >4.1</td>
	</tr>
	<tr>
	  <th id="T_33e7e_level0_row5" class="row_heading level0 row5" >GOLD 100 OZ</th>
	  <td id="T_33e7e_row5_col0" class="data row5 col0" >4.1%</td>
	  <td id="T_33e7e_row5_col1" class="data row5 col1" >0.9%</td>
	  <td id="T_33e7e_row5_col2" class="data row5 col2" >4.4</td>
	</tr>
	<tr>
	  <th id="T_33e7e_level0_row6" class="row_heading level0 row6" >BP CURRENCY</th>
	  <td id="T_33e7e_row6_col0" class="data row6 col0" >2.7%</td>
	  <td id="T_33e7e_row6_col1" class="data row6 col1" >0.6%</td>
	  <td id="T_33e7e_row6_col2" class="data row6 col2" >5.0</td>
	</tr>
	<tr>
	  <th id="T_33e7e_level0_row7" class="row_heading level0 row7" >CORN</th>
	  <td id="T_33e7e_row7_col0" class="data row7 col0" >7.6%</td>
	  <td id="T_33e7e_row7_col1" class="data row7 col1" >1.5%</td>
	  <td id="T_33e7e_row7_col2" class="data row7 col2" >5.2</td>
	</tr>
	<tr>
	  <th id="T_33e7e_level0_row8" class="row_heading level0 row8" >COFFEE 'C'</th>
	  <td id="T_33e7e_row8_col0" class="data row8 col0" >11.0%</td>
	  <td id="T_33e7e_row8_col1" class="data row8 col1" >2.0%</td>
	  <td id="T_33e7e_row8_col2" class="data row8 col2" >5.4</td>
	</tr>
	<tr>
	  <th id="T_33e7e_level0_row9" class="row_heading level0 row9" >CME Bitcoin</th>
	  <td id="T_33e7e_row9_col0" class="data row9 col0" >28.9%</td>
	  <td id="T_33e7e_row9_col1" class="data row9 col1" >4.7%</td>
	  <td id="T_33e7e_row9_col2" class="data row9 col2" >6.2</td>
	</tr>
  </tbody>
</table>

### Futures References

The CME provides a helpful series of videos for an introduction to Futures

https://www.cmegroup.com/education/courses/introduction-to-futures/definition-of-a-futures-contract.html

# Pricing

## Forward Price

The basic model of a futures price is:

$$F_0 = S_0 e^{r_f T}$$

This equation is derived by no-arbitrage, in a simplified setting of

* no market frictions
* a constant risk-free rate, $r_f$
* no financing considerations (margin, marking to market, etc)

This is just the **forward pricing** equation.

It says that the futures price should be the spot price compounded by the risk-free rate until delivery.

## Carry

The pricing formula above accounts for the time-value of money, but it does not account for the **carry** cost of the asset.

### Dividend yield

Suppose that the asset pays a dividend yield of $q$

* dividends on stock index
* lease rate on metals

### Storage cost

The asset may be costly to store, such that it has a negative carry.

* oil, grains, etc

### Carry

Let **carry**, $c$, denote the net difference of the storage costs minus income.

Then,

$$F_0 = S_0 e^{(r_f+c)T}$$

That is, the 

* higher the storage costs, the **higher** the futures price.
* higher the income, the **lower** the futures price.

### Convenience Yield

For consumption assets, the no-arbitrage argument is more complicated.

$$F_0 < S_0e^{(r_f+c)T}$$

This is due to the fact that the asset has a **convenience yield**, $y$.

This convenience yield is not explicit income to the owner, but rather potential income should the consumption use of the asset be important during the contract period.

The equation can make explicit note of this,

$$F_0 = S_0e^{(r_f+c-y)T}$$

or simply include the convenience yield as part of the carry.

$$F_0 = S_0e^{(r_f+c^*)T}$$

### Negative Price for Oil?

Typically, carry costs are a second-order factor for prices.

But sometimes market frictions cause them to be of high importance.

```python
TICK = 'CL'
data_comp = pd.read_excel(LOADFILE,sheet_name=f'roll conventions {TICK}').set_index('date')
data_comp['CL1 Comdty'].plot(xlim=('2020-01-01','2020-06-30'),ylim=(-40,70),title=f'Negative Price for {TICK}!',ylabel='active futures price');
```

![png](output_36_0.png)

#### References

https://www.nytimes.com/2020/04/20/business/oil-prices.html

https://www.forbes.com/sites/sarahhansen/2020/04/21/heres-what-negative-oil-prices-really-mean/?sh=5530d0185a85

## Complications

There are various complications to the simple model.

### Moving Interest Rates

The formulas above assume a constant interest rate. 

If the interest rate moves, then we would have the following adjustments:

* **Higher** price if asset is **positively** correlated to the asset value
* **Lower** price if asset is **negatively** correlated to the asset value
Why?

### Marking to Market

Futures contracts are marked to market, which means the cashflows are paid/received day-by-day rather than all at delivery.

### Optionality

These are discussed more in context of interest-rate futures.

* Wild card
* Cheapest to deliver

## Futures vs Forwards

The CME video compares and contrasts.

https://www.cmegroup.com/education/courses/introduction-to-futures/futures-contracts-compared-to-forwards.html

* For each difference, would it cause the price of the future contract to be more or less than the comparable forward?
* Which differences do you think are of most practical importance?

# The Futures Curve

## Defining the Curve

At a given date, consider the full chain of some futures contract:

```python
list_curves = ['CL1','GC1']
curves = dict()
for comdty in list_curves:
    curves[comdty]= pd.read_excel(LOADFILE,sheet_name=f'curve {comdty}')
```

```python
curves[comdty].style.format({'price':'${:,.2f}', 'open interest':'{:,.0f}'})
```

<style type="text/css">
</style>
<table id="T_9a8be">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_9a8be_level0_col0" class="col_heading level0 col0" >ticker</th>
	  <th id="T_9a8be_level0_col1" class="col_heading level0 col1" >delivery date</th>
	  <th id="T_9a8be_level0_col2" class="col_heading level0 col2" >price</th>
	  <th id="T_9a8be_level0_col3" class="col_heading level0 col3" >open interest</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_9a8be_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_9a8be_row0_col0" class="data row0 col0" >GCN2 Comdty</td>
	  <td id="T_9a8be_row0_col1" class="data row0 col1" >2022-07-01 00:00:00</td>
	  <td id="T_9a8be_row0_col2" class="data row0 col2" >$1,738.10</td>
	  <td id="T_9a8be_row0_col3" class="data row0 col3" >1,840</td>
	</tr>
	<tr>
	  <th id="T_9a8be_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_9a8be_row1_col0" class="data row1 col0" >GCU2 Comdty</td>
	  <td id="T_9a8be_row1_col1" class="data row1 col1" >2022-09-01 00:00:00</td>
	  <td id="T_9a8be_row1_col2" class="data row1 col2" >$1,744.00</td>
	  <td id="T_9a8be_row1_col3" class="data row1 col3" >1,559</td>
	</tr>
	<tr>
	  <th id="T_9a8be_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_9a8be_row2_col0" class="data row2 col0" >GCZ2 Comdty</td>
	  <td id="T_9a8be_row2_col1" class="data row2 col1" >2022-12-01 00:00:00</td>
	  <td id="T_9a8be_row2_col2" class="data row2 col2" >$1,758.50</td>
	  <td id="T_9a8be_row2_col3" class="data row2 col3" >102,485</td>
	</tr>
	<tr>
	  <th id="T_9a8be_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_9a8be_row3_col0" class="data row3 col0" >GCJ3 Comdty</td>
	  <td id="T_9a8be_row3_col1" class="data row3 col1" >2023-04-03 00:00:00</td>
	  <td id="T_9a8be_row3_col2" class="data row3 col2" >$1,783.90</td>
	  <td id="T_9a8be_row3_col3" class="data row3 col3" >5,207</td>
	</tr>
	<tr>
	  <th id="T_9a8be_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_9a8be_row4_col0" class="data row4 col0" >GCQ3 Comdty</td>
	  <td id="T_9a8be_row4_col1" class="data row4 col1" >2023-08-01 00:00:00</td>
	  <td id="T_9a8be_row4_col2" class="data row4 col2" >$1,803.20</td>
	  <td id="T_9a8be_row4_col3" class="data row4 col3" >59</td>
	</tr>
	<tr>
	  <th id="T_9a8be_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_9a8be_row5_col0" class="data row5 col0" >GCZ3 Comdty</td>
	  <td id="T_9a8be_row5_col1" class="data row5 col1" >2023-12-01 00:00:00</td>
	  <td id="T_9a8be_row5_col2" class="data row5 col2" >$1,823.60</td>
	  <td id="T_9a8be_row5_col3" class="data row5 col3" >579</td>
	</tr>
	<tr>
	  <th id="T_9a8be_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_9a8be_row6_col0" class="data row6 col0" >GCJ4 Comdty</td>
	  <td id="T_9a8be_row6_col1" class="data row6 col1" >2024-04-01 00:00:00</td>
	  <td id="T_9a8be_row6_col2" class="data row6 col2" >$1,836.40</td>
	  <td id="T_9a8be_row6_col3" class="data row6 col3" >0</td>
	</tr>
	<tr>
	  <th id="T_9a8be_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_9a8be_row7_col0" class="data row7 col0" >GCZ4 Comdty</td>
	  <td id="T_9a8be_row7_col1" class="data row7 col1" >2024-12-02 00:00:00</td>
	  <td id="T_9a8be_row7_col2" class="data row7 col2" >$1,868.70</td>
	  <td id="T_9a8be_row7_col3" class="data row7 col3" >28</td>
	</tr>
	<tr>
	  <th id="T_9a8be_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_9a8be_row8_col0" class="data row8 col0" >GCZ5 Comdty</td>
	  <td id="T_9a8be_row8_col1" class="data row8 col1" >2025-12-01 00:00:00</td>
	  <td id="T_9a8be_row8_col2" class="data row8 col2" >$1,911.40</td>
	  <td id="T_9a8be_row8_col3" class="data row8 col3" >7</td>
	</tr>
	<tr>
	  <th id="T_9a8be_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_9a8be_row9_col0" class="data row9 col0" >GCZ6 Comdty</td>
	  <td id="T_9a8be_row9_col1" class="data row9 col1" >2026-12-01 00:00:00</td>
	  <td id="T_9a8be_row9_col2" class="data row9 col2" >$1,941.10</td>
	  <td id="T_9a8be_row9_col3" class="data row9 col3" >2</td>
	</tr>
  </tbody>
</table>

If we plot this chain against the delivery dates, we get the **futures curve**.

The curves below show the marker sizes in proportion to the open interest of each contract.

```python
for comdty in list_curves:
    
    temp = curves[comdty].set_index('delivery date').sort_index()
    msize = (temp['open interest']/temp['open interest'].max()) * 500
    
    fig, ax=plt.subplots()
    temp['price'].plot(ax=ax,marker=None,title=comdty)
    temp.reset_index().plot.scatter('delivery date','price',s=msize,ax=ax,title=comdty)
    plt.show()
```

![png](output_45_0.png)

![png](output_45_1.png)

## Backwardation and Contango

### Relative to expectations

"Normal" Backwardation

* the futures price is **below** the expected future spot

Contango

* the futures price is **above** the expected future spot

### Economics

#### Normal? 
**"Normal"** backwardation refers to economists (Keynes) thinking it should be the "normal" situation to have the futures price below the expected future spot.

The argument depends on the assumption that hedgers (suppliers) would tend to be short the futures contract while market-makers and speculators would be long. The risk aversion of the former group being higher than the latter group might lead to the futures price being pressured below the market forecast

#### Relation to pricing equations above

The simple pricing above implies…

* Contango = **high** carry costs relative to convenience yield
* Backwardation = **low** carry costs relative to convenience yield

### Descriptions of the futures curve

Note that 

* there is not an objective "expected future spot". 
* thus, whether in backwardation or contango would depend on one's model of the forecasted spot price.

In practice, these terms are often used with the assumption that **today's spot is the best prediction of the future spot**:

$\begin{align}

P_t = \boldsymbol{E}_t\left[P_T\right]

\end{align}$

#### Common usage

This leads to the common usage.

Backwardation

* the futures curve is **downward** sloping

Contango

* the futures curve is **upward** sloping

This definition is simpler and can be directly measured. 

#### In the examples above
* Oil is in backwardation
* Gold is in contango

## Roll

Trading futures positions involves **rolling** the position to new contracts.

If the curve is in **contango** this rolling will require buying at a higher price

* add capital to hold same number of contracts
* keep capital flat, but in fewer contracts

If the curve is in **backwardation** this rolling will mean buying at a lower price

* reallocate some capital to hold same number of contracts
* keep capital flat, but in more contracts

The chart below shows price histories for various contracts on the chain, note that when one settles, a trader would have to roll up/down to another contract.

```python
ptitle = futures_ts['LAST_PRICE'].iloc[:,0].name[:2]
futures_ts['LAST_PRICE'].iloc[:,0:4].plot(xlim=('2021-12','2022-07'),ylim=(65,125),title=f'Rolling Prices {ptitle}');
```

![png](output_49_0.png)

```python
ptitle = futures_ts['LAST_PRICE'].iloc[:,4].name[:2]
futures_ts['LAST_PRICE'].iloc[:,4:].plot(xlim=('2022-04','2022-07'),ylim=(1800,2000),title=f'Rolling Prices {ptitle}');
```

![png](output_50_0.png)

## Continuous Contract

Given that futures contracts mature and roll off, it can be a challenge to obtain a long history of their prices.

This is similar to getting long timeseries of bond prices.

### Generic indexes

Like with bonds, the answer is to construct a generic index which is the compilation of many short-term instruments.

With bonds, this is done by building so-called "constant maturity" series, which at any point in the past point might point to the bonds closest in maturity to the stated index.

For futures, an index can be constructed by simply pointing to the active contract at any point in time.

### Generic front and back

The common notation is to denote the generic front contract with a "1" and the generic back contract with a "2".

For example, for crude oil, (CL), we have

* CL1
* CL2

The chart below shows these price series.

```python
data_comp[['CL1 Comdty','CL2 Comdty']].plot(xlim=('2022','2022-06-30'),ylim=(80,120));
```

![png](output_52_0.png)

### Rolling the Continuous Series

The complication with the continuous front and back futures series is that at the time of rolling, the price will jump simply due to the roll.

In analyzing the series, it will seem that these jumps are returns, when they are actually just a rebasing of the contract.

If a series tends to be in contango, this will make the returns seem artificially high.

### Adjusting the Continuous Series

To avoid these jumps in the series, it is common to see one of three adjustments made at each roll, going back through time, to keep the breaks continuous.

* difference: adjust the level by an addititive factor
* ratio: adjust the past series by a multiplicative factor 
* weighted average: roll between the front and back contracts over a window of $m$ days, taking a weighted average between the contracts.

The effect of all three adjustments is to

* eliminate jumps at roll dates.
* report true historic prices for the most recent contract used in the continuous series
* report an adjusted price for the earlier contracts used in the continuous series

In these ways, it is similar to the adjustments to equity prices discussed in another note.

#### So which adjustment to use?
* difference: keeps the profit and loss true, which is useful if simulating a particular number of contracts
* ratio: ensures valid return series, which is useful if simulating a particular investment size.

```python
data_comp.plot();
```

![png](output_54_0.png)

### Roll Rule

There is also a decision to make regarding **when** to roll the contract in the continuous series. The most popular rules are

* fixed date (often first day of the month)
* at contract close
* when the max open interest shifts

#### Careful with the roll method

Using an improper roll method for historic analysis may greatly misrepresent the performance.

Which of these is correct for understanding returns over time?

```python
px = data_comp.copy()
px[px<0] = np.nan
px[px==np.inf] = np.nan
rx_comp = px.pct_change()
performanceMetrics(rx_comp,annualization=252).style.format('{:.1%}')
```

<style type="text/css">
</style>
<table id="T_00071">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_00071_level0_col0" class="col_heading level0 col0" >Mean</th>
	  <th id="T_00071_level0_col1" class="col_heading level0 col1" >Vol</th>
	  <th id="T_00071_level0_col2" class="col_heading level0 col2" >Sharpe</th>
	  <th id="T_00071_level0_col3" class="col_heading level0 col3" >Min</th>
	  <th id="T_00071_level0_col4" class="col_heading level0 col4" >Max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_00071_level0_row0" class="row_heading level0 row0" >CL1 Comdty</th>
	  <td id="T_00071_row0_col0" class="data row0 col0" >12.1%</td>
	  <td id="T_00071_row0_col1" class="data row0 col1" >44.2%</td>
	  <td id="T_00071_row0_col2" class="data row0 col2" >27.4%</td>
	  <td id="T_00071_row0_col3" class="data row0 col3" >-45.2%</td>
	  <td id="T_00071_row0_col4" class="data row0 col4" >37.7%</td>
	</tr>
	<tr>
	  <th id="T_00071_level0_row1" class="row_heading level0 row1" >CL2 Comdty</th>
	  <td id="T_00071_row1_col0" class="data row1 col0" >11.9%</td>
	  <td id="T_00071_row1_col1" class="data row1 col1" >45.9%</td>
	  <td id="T_00071_row1_col2" class="data row1 col2" >25.9%</td>
	  <td id="T_00071_row1_col3" class="data row1 col3" >-43.4%</td>
	  <td id="T_00071_row1_col4" class="data row1 col4" >78.8%</td>
	</tr>
	<tr>
	  <th id="T_00071_level0_row2" class="row_heading level0 row2" >CL1 Ratio</th>
	  <td id="T_00071_row2_col0" class="data row2 col0" >5.0%</td>
	  <td id="T_00071_row2_col1" class="data row2 col1" >43.2%</td>
	  <td id="T_00071_row2_col2" class="data row2 col2" >11.5%</td>
	  <td id="T_00071_row2_col3" class="data row2 col3" >-45.2%</td>
	  <td id="T_00071_row2_col4" class="data row2 col4" >25.1%</td>
	</tr>
	<tr>
	  <th id="T_00071_level0_row3" class="row_heading level0 row3" >CL1 Difference</th>
	  <td id="T_00071_row3_col0" class="data row3 col0" >19.4%</td>
	  <td id="T_00071_row3_col1" class="data row3 col1" >61.6%</td>
	  <td id="T_00071_row3_col2" class="data row3 col2" >31.5%</td>
	  <td id="T_00071_row3_col3" class="data row3 col3" >-73.2%</td>
	  <td id="T_00071_row3_col4" class="data row3 col4" >73.2%</td>
	</tr>
	<tr>
	  <th id="T_00071_level0_row4" class="row_heading level0 row4" >CL1 Weighted Avg</th>
	  <td id="T_00071_row4_col0" class="data row4 col0" >10.9%</td>
	  <td id="T_00071_row4_col1" class="data row4 col1" >41.9%</td>
	  <td id="T_00071_row4_col2" class="data row4 col2" >26.1%</td>
	  <td id="T_00071_row4_col3" class="data row4 col3" >-30.7%</td>
	  <td id="T_00071_row4_col4" class="data row4 col4" >24.4%</td>
	</tr>
  </tbody>
</table>


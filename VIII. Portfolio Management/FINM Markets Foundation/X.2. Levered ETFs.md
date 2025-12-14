---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: X.2 Levered ETFs
linter-yaml-title-alias: X.2 Levered ETFs
---

# X.2 Levered ETFs
## FINM 36700 Discussion
### Mark Hendricks

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
from portfolio import *
```

# Leveraged ETFs

Consider the cumulative return of an asset:

$$r_{0,T}^i \equiv (1+r^i_1)(1+r^i_2)(1+r_3^i)\cdot\cdot\cdot(1+r^i_T) - 1$$

If we want to leverage this with traditionally leverage, we would borrow to invest $w^i>1$. Then our total cumulative return (before considering the borrowing cost) would be

$$r_{0,T}^{i,\text{Levered}} \equiv w\cdot (1+r^i_1)(1+r^i_2)(1+r_3^i)\cdot\cdot\cdot(1+r^i_T) - w$$

If we use a Levered ETF with leverage factor of $w$, then it leverages each individual return,

$$r_{0,T}^{i,\text{LETF}} \equiv (1+wr^i_1)(1+wr^i_2)(1+wr_3^i)\cdot\cdot\cdot(1+wr^i_T) - 1$$

## These expressions are not equal!

Consider $w=3, T=2$

$$r_{0,2}^{i,\text{Levered}} = 3(1+r^i_1+r^i_2+r^i_1r^i_2) - 3 = 3r^i_1 + 3r^i_2 + 3r^i_1r^i_2$$

$$r_{0,2}^{i,\text{LETF}} = 1+3r^i_1+3r^i_2+9r^i_1r^i_2) - 1 = 3r^i_1 + 3r^i_2 + 9r^i_1r^i_2$$

So they differ by $$-6r^i_1r^i_2$$ which could be positive or negative.

## Note:

We have to subtract out the leveraged capital $w$ to get back the total return rate. The cumulative return formula would give a number like 1.10, which is the return factor. It says if we invest 1 we get back 1.10. We want the return rate, so we subtract the invested capital to get a number like 0.10 which says that if we invest 1 we make an extra return of 0.10.

For a leveraged position, we must subtract out the total (levered) capital.

## Example:

```python
leverage = 3
r1 = .1
r2 = -.05
cumret = (1+r1)*(1+r2) - 1
leveraged_cumret = leverage * cumret
letf_cumret = (1+leverage*r1)*(1+leverage*r2) - 1
diff = -(leverage*(leverage-1)) * r1*r2

print(f'Unlevered cumulative return is {cumret:0.4f}\nLevered cumulative return is {leveraged_cumret:0.4f}\nLETF cumulative return is {letf_cumret:0.4f}\nDifference is {diff:0.4f}')
```

    Unlevered cumulative return is 0.0450
    Levered cumulative return is 0.1350
    LETF cumulative return is 0.1050
    Difference is 0.0300

# Analysis of ProShares Levered SPX ETFs

```python
filepath_data = '../data/levered_etf_exploration.xlsx'
info = pd.read_excel(filepath_data,sheet_name='descriptions')
info.rename(columns={'Unnamed: 0':'Symbol'},inplace=True)
info.set_index('Symbol',inplace=True)

data = pd.read_excel(filepath_data,sheet_name='other_data')
data.set_index('date',inplace=True)

ml = pd.read_excel(filepath_data,sheet_name='merrill_factors')
ml.set_index('date',inplace=True)

spy = ml[['SPY US Equity']].copy()
spy['SPY 3x'] = 3 * spy['SPY US Equity']
spy['SPY -3x'] = -3 * spy['SPY US Equity']
```

```python
info.loc[list(data.columns)]
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
	  <th>Descriptions</th>
	</tr>
	<tr>
	  <th>Symbol</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>TRVCI Index</th>
	  <td>Refinitiv VC Index</td>
	</tr>
	<tr>
	  <th>HEFA US Equity</th>
	  <td>ISHA CURR HEDGED MSCI EAFE</td>
	</tr>
	<tr>
	  <th>TAIL US Equity</th>
	  <td>CAMBRIA TAIL RISK ETF</td>
	</tr>
	<tr>
	  <th>SPXU US Equity</th>
	  <td>PROSH ULTRAPRO SHORT S&amp;P 500</td>
	</tr>
	<tr>
	  <th>UPRO US Equity</th>
	  <td>PROSHARES ULTRAPRO S&amp;P 500</td>
	</tr>
  </tbody>
</table>
</div>

```python
rets = spy.join(data[['SPXU US Equity','UPRO US Equity']],how='inner')
cumrets = (1+rets).cumprod()

cumrets_decay = pd.DataFrame((cumrets['UPRO US Equity'] / cumrets['SPY 3x']), columns=['+3x'])
cumrets_decay['-3x'] = (cumrets['SPXU US Equity'] / cumrets['SPY -3x'])

cumrets[['SPY 3x','UPRO US Equity']].plot(title='Positive Levered S&P');
```

![png](output_8_0.png)

```python
cumrets[['SPY -3x','SPXU US Equity']].plot(title='Inverse Levered S&P');
```

![png](output_9_0.png)

```python
cumrets_decay.plot(title='Value of LETF divided by Levered SPY');
```

![png](output_10_0.png)

```python
performanceMetrics(rets,annualization=12)
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
	  <th>Mean</th>
	  <th>Vol</th>
	  <th>Sharpe</th>
	  <th>Min</th>
	  <th>Max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY US Equity</th>
	  <td>0.147548</td>
	  <td>0.135363</td>
	  <td>1.090019</td>
	  <td>-0.124642</td>
	  <td>0.126984</td>
	</tr>
	<tr>
	  <th>SPY 3x</th>
	  <td>0.442644</td>
	  <td>0.406089</td>
	  <td>1.090019</td>
	  <td>-0.373927</td>
	  <td>0.380951</td>
	</tr>
	<tr>
	  <th>SPY -3x</th>
	  <td>-0.442644</td>
	  <td>0.406089</td>
	  <td>-1.090019</td>
	  <td>-0.380951</td>
	  <td>0.373927</td>
	</tr>
	<tr>
	  <th>SPXU US Equity</th>
	  <td>-0.498039</td>
	  <td>0.360813</td>
	  <td>-1.380325</td>
	  <td>-0.362355</td>
	  <td>0.276057</td>
	</tr>
	<tr>
	  <th>UPRO US Equity</th>
	  <td>0.388647</td>
	  <td>0.426964</td>
	  <td>0.910257</td>
	  <td>-0.481301</td>
	  <td>0.371695</td>
	</tr>
  </tbody>
</table>
</div>

```python
maximumDrawdown(rets)
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
	  <th>Max Drawdown</th>
	  <th>Peak</th>
	  <th>Bottom</th>
	  <th>Recover</th>
	  <th>Duration (to Recover)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY US Equity</th>
	  <td>-0.194266</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-07-31</td>
	  <td>213 days</td>
	</tr>
	<tr>
	  <th>SPY 3x</th>
	  <td>-0.523196</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-08-31</td>
	  <td>244 days</td>
	</tr>
	<tr>
	  <th>SPY -3x</th>
	  <td>-0.997407</td>
	  <td>2011-09-30</td>
	  <td>2021-08-31</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>SPXU US Equity</th>
	  <td>-0.998063</td>
	  <td>2011-09-30</td>
	  <td>2021-08-31</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>UPRO US Equity</th>
	  <td>-0.604438</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-12-31</td>
	  <td>366 days</td>
	</tr>
  </tbody>
</table>
</div>

```python
get_ols_metrics(rets['SPY US Equity'],rets,annualization=12).drop(columns=['Treynor Ratio','Info Ratio']).style.format('{:.1%}')
```

<style type="text/css">
</style>
<table id="T_40dde">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_40dde_level0_col0" class="col_heading level0 col0" >alpha</th>
	  <th id="T_40dde_level0_col1" class="col_heading level0 col1" >SPY US Equity</th>
	  <th id="T_40dde_level0_col2" class="col_heading level0 col2" >r-squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_40dde_level0_row0" class="row_heading level0 row0" >SPY US Equity</th>
	  <td id="T_40dde_row0_col0" class="data row0 col0" >0.0%</td>
	  <td id="T_40dde_row0_col1" class="data row0 col1" >100.0%</td>
	  <td id="T_40dde_row0_col2" class="data row0 col2" >100.0%</td>
	</tr>
	<tr>
	  <th id="T_40dde_level0_row1" class="row_heading level0 row1" >SPY 3x</th>
	  <td id="T_40dde_row1_col0" class="data row1 col0" >-0.0%</td>
	  <td id="T_40dde_row1_col1" class="data row1 col1" >300.0%</td>
	  <td id="T_40dde_row1_col2" class="data row1 col2" >100.0%</td>
	</tr>
	<tr>
	  <th id="T_40dde_level0_row2" class="row_heading level0 row2" >SPY -3x</th>
	  <td id="T_40dde_row2_col0" class="data row2 col0" >0.0%</td>
	  <td id="T_40dde_row2_col1" class="data row2 col1" >-300.0%</td>
	  <td id="T_40dde_row2_col2" class="data row2 col2" >100.0%</td>
	</tr>
	<tr>
	  <th id="T_40dde_level0_row3" class="row_heading level0 row3" >SPXU US Equity</th>
	  <td id="T_40dde_row3_col0" class="data row3 col0" >-12.9%</td>
	  <td id="T_40dde_row3_col1" class="data row3 col1" >-250.3%</td>
	  <td id="T_40dde_row3_col2" class="data row3 col2" >88.2%</td>
	</tr>
	<tr>
	  <th id="T_40dde_level0_row4" class="row_heading level0 row4" >UPRO US Equity</th>
	  <td id="T_40dde_row4_col0" class="data row4 col0" >-7.5%</td>
	  <td id="T_40dde_row4_col1" class="data row4 col1" >314.2%</td>
	  <td id="T_40dde_row4_col2" class="data row4 col2" >99.2%</td>
	</tr>
  </tbody>
</table>


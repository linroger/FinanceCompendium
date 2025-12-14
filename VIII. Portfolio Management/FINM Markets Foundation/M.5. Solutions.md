---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: M.5. Solutions
---

# M.5. Solutions

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

***

# <span style="color:red">Solutions</span>

```python
import pandas as pd
import numpy as np
import datetime
import warnings

import matplotlib.pyplot as plt
import seaborn as sns
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)
import sys
sys.path.insert(0, '../cmds')
from portfolio import *
```

## <span style="color:red">Solution 1</span>

```python
LOADFILE = '../data/equity_data.xlsx'
TICK = 'AAPL'
TAB = f'prices {TICK}'
px = pd.read_excel(LOADFILE,sheet_name=TAB).set_index('date')

TAB = f'dividends {TICK}'
dvds = pd.read_excel(LOADFILE,sheet_name=TAB).set_index('ex_date')
dvds
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
	  <th>record_date</th>
	  <th>declared_date</th>
	  <th>payable_date</th>
	  <th>dividend_amount</th>
	  <th>dividend_frequency</th>
	  <th>dividend_type</th>
	</tr>
	<tr>
	  <th>ex_date</th>
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
	  <th>2022-05-06</th>
	  <td>2022-05-09</td>
	  <td>2022-04-28</td>
	  <td>2022-05-12</td>
	  <td>0.230000</td>
	  <td>Quarter</td>
	  <td>Regular Cash</td>
	</tr>
	<tr>
	  <th>2022-02-04</th>
	  <td>2022-02-07</td>
	  <td>2022-01-27</td>
	  <td>2022-02-10</td>
	  <td>0.220000</td>
	  <td>Quarter</td>
	  <td>Regular Cash</td>
	</tr>
	<tr>
	  <th>2021-11-05</th>
	  <td>2021-11-08</td>
	  <td>2021-10-28</td>
	  <td>2021-11-11</td>
	  <td>0.220000</td>
	  <td>Quarter</td>
	  <td>Regular Cash</td>
	</tr>
	<tr>
	  <th>2021-08-06</th>
	  <td>2021-08-09</td>
	  <td>2021-07-27</td>
	  <td>2021-08-12</td>
	  <td>0.220000</td>
	  <td>Quarter</td>
	  <td>Regular Cash</td>
	</tr>
	<tr>
	  <th>2021-05-07</th>
	  <td>2021-05-10</td>
	  <td>2021-04-28</td>
	  <td>2021-05-13</td>
	  <td>0.220000</td>
	  <td>Quarter</td>
	  <td>Regular Cash</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>1988-02-12</th>
	  <td>1988-02-19</td>
	  <td>1988-01-28</td>
	  <td>1988-03-15</td>
	  <td>0.000714</td>
	  <td>Quarter</td>
	  <td>Regular Cash</td>
	</tr>
	<tr>
	  <th>1987-11-17</th>
	  <td>1987-11-23</td>
	  <td>1987-11-12</td>
	  <td>1987-12-15</td>
	  <td>0.000714</td>
	  <td>Quarter</td>
	  <td>Regular Cash</td>
	</tr>
	<tr>
	  <th>1987-08-10</th>
	  <td>1987-08-14</td>
	  <td>1987-07-31</td>
	  <td>1987-09-15</td>
	  <td>0.000536</td>
	  <td>Quarter</td>
	  <td>Regular Cash</td>
	</tr>
	<tr>
	  <th>1987-06-16</th>
	  <td>1987-05-15</td>
	  <td>1987-04-22</td>
	  <td>1987-06-15</td>
	  <td>2.000000</td>
	  <td>None</td>
	  <td>Stock Split</td>
	</tr>
	<tr>
	  <th>1987-05-11</th>
	  <td>1987-05-15</td>
	  <td>1987-04-22</td>
	  <td>1987-06-15</td>
	  <td>0.000536</td>
	  <td>Quarter</td>
	  <td>Regular Cash</td>
	</tr>
  </tbody>
</table>
<p>81 rows × 6 columns</p>
</div>

### 1.1

With the adjustments, returns are identical up to 4 decimal places.

```python
rets = px.pct_change()
rets['Unadjusted Price Modified'] = rets.copy()['Unadjusted Price']

for dt in dvds.index:
    if dt in rets.index:
        if dvds.loc[dt,'dividend_type']=='Regular Cash':
            rets.loc[dt,'Unadjusted Price Modified'] = (px.loc[dt,'Unadjusted Price'] + dvds.loc[dt,'dividend_amount']) / px['Unadjusted Price'].shift().loc[dt] - 1

        elif dvds.loc[dt,'dividend_type']=='Stock Split':
            rets.loc[dt,'Unadjusted Price Modified'] = dvds.loc[dt,'dividend_amount'] * px.loc[dt,'Unadjusted Price'] / px['Unadjusted Price'].shift().loc[dt] - 1
```

```python
rets.loc[dvds.index[0:2],:].style.format('{:.4%}')
```

<style type="text/css">
</style>
<table id="T_24eb8">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_24eb8_level0_col0" class="col_heading level0 col0" >Adjusted Price</th>
	  <th id="T_24eb8_level0_col1" class="col_heading level0 col1" >Unadjusted Price</th>
	  <th id="T_24eb8_level0_col2" class="col_heading level0 col2" >Unadjusted Price Modified</th>
	</tr>
	<tr>
	  <th class="index_name level0" >ex_date</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_24eb8_level0_row0" class="row_heading level0 row0" >2022-05-06 00:00:00</th>
	  <td id="T_24eb8_row0_col0" class="data row0 col0" >0.4727%</td>
	  <td id="T_24eb8_row0_col1" class="data row0 col1" >0.3253%</td>
	  <td id="T_24eb8_row0_col2" class="data row0 col2" >0.4720%</td>
	</tr>
	<tr>
	  <th id="T_24eb8_level0_row1" class="row_heading level0 row1" >2022-02-04 00:00:00</th>
	  <td id="T_24eb8_row1_col0" class="data row1 col0" >-0.1682%</td>
	  <td id="T_24eb8_row1_col1" class="data row1 col1" >-0.2950%</td>
	  <td id="T_24eb8_row1_col2" class="data row1 col2" >-0.1677%</td>
	</tr>
  </tbody>
</table>

### 1.2

By adjusting for the split, we get almost the exact same return as the "Adjusted Price" series.

Note that the "Unadjusted Price" would show a loss of nearly 75%!

```python
rets.loc[dvds[dvds['dividend_type']=='Stock Split'].index[0]].to_frame().style.format('{:.4%}')
```

<style type="text/css">
</style>
<table id="T_5547c">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_5547c_level0_col0" class="col_heading level0 col0" >2020-08-31 00:00:00</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_5547c_level0_row0" class="row_heading level0 row0" >Adjusted Price</th>
	  <td id="T_5547c_row0_col0" class="data row0 col0" >3.3914%</td>
	</tr>
	<tr>
	  <th id="T_5547c_level0_row1" class="row_heading level0 row1" >Unadjusted Price</th>
	  <td id="T_5547c_row1_col0" class="data row1 col0" >-74.1522%</td>
	</tr>
	<tr>
	  <th id="T_5547c_level0_row2" class="row_heading level0 row2" >Unadjusted Price Modified</th>
	  <td id="T_5547c_row2_col0" class="data row2 col0" >3.3912%</td>
	</tr>
  </tbody>
</table>

### Extra Analysis

#### Correlation

The unadjusted price series return has relatively low correlation with the adjusted series. 

However, after the modifications made above, it is over 99% correlated.

```python
rets.corr().style.format('{:.1%}')
```

<style type="text/css">
</style>
<table id="T_f0a4a">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_f0a4a_level0_col0" class="col_heading level0 col0" >Adjusted Price</th>
	  <th id="T_f0a4a_level0_col1" class="col_heading level0 col1" >Unadjusted Price</th>
	  <th id="T_f0a4a_level0_col2" class="col_heading level0 col2" >Unadjusted Price Modified</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_f0a4a_level0_row0" class="row_heading level0 row0" >Adjusted Price</th>
	  <td id="T_f0a4a_row0_col0" class="data row0 col0" >100.0%</td>
	  <td id="T_f0a4a_row0_col1" class="data row0 col1" >74.3%</td>
	  <td id="T_f0a4a_row0_col2" class="data row0 col2" >100.0%</td>
	</tr>
	<tr>
	  <th id="T_f0a4a_level0_row1" class="row_heading level0 row1" >Unadjusted Price</th>
	  <td id="T_f0a4a_row1_col0" class="data row1 col0" >74.3%</td>
	  <td id="T_f0a4a_row1_col1" class="data row1 col1" >100.0%</td>
	  <td id="T_f0a4a_row1_col2" class="data row1 col2" >74.3%</td>
	</tr>
	<tr>
	  <th id="T_f0a4a_level0_row2" class="row_heading level0 row2" >Unadjusted Price Modified</th>
	  <td id="T_f0a4a_row2_col0" class="data row2 col0" >100.0%</td>
	  <td id="T_f0a4a_row2_col1" class="data row2 col1" >74.3%</td>
	  <td id="T_f0a4a_row2_col2" class="data row2 col2" >100.0%</td>
	</tr>
  </tbody>
</table>

#### Performance

Without the adjustment, the stock splits and unaccounted dividends lead to a much lower mean and higher volatility.

```python
performanceMetrics(rets,annualization=252).style.format('{:.1%}')
```

<style type="text/css">
</style>
<table id="T_5ff51">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_5ff51_level0_col0" class="col_heading level0 col0" >Mean</th>
	  <th id="T_5ff51_level0_col1" class="col_heading level0 col1" >Vol</th>
	  <th id="T_5ff51_level0_col2" class="col_heading level0 col2" >Sharpe</th>
	  <th id="T_5ff51_level0_col3" class="col_heading level0 col3" >Min</th>
	  <th id="T_5ff51_level0_col4" class="col_heading level0 col4" >Max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_5ff51_level0_row0" class="row_heading level0 row0" >Adjusted Price</th>
	  <td id="T_5ff51_row0_col0" class="data row0 col0" >38.3%</td>
	  <td id="T_5ff51_row0_col1" class="data row0 col1" >33.5%</td>
	  <td id="T_5ff51_row0_col2" class="data row0 col2" >114.5%</td>
	  <td id="T_5ff51_row0_col3" class="data row0 col3" >-17.9%</td>
	  <td id="T_5ff51_row0_col4" class="data row0 col4" >13.9%</td>
	</tr>
	<tr>
	  <th id="T_5ff51_level0_row1" class="row_heading level0 row1" >Unadjusted Price</th>
	  <td id="T_5ff51_row1_col0" class="data row1 col0" >25.8%</td>
	  <td id="T_5ff51_row1_col1" class="data row1 col1" >44.2%</td>
	  <td id="T_5ff51_row1_col2" class="data row1 col2" >58.5%</td>
	  <td id="T_5ff51_row1_col3" class="data row1 col3" >-85.5%</td>
	  <td id="T_5ff51_row1_col4" class="data row1 col4" >13.9%</td>
	</tr>
	<tr>
	  <th id="T_5ff51_level0_row2" class="row_heading level0 row2" >Unadjusted Price Modified</th>
	  <td id="T_5ff51_row2_col0" class="data row2 col0" >37.7%</td>
	  <td id="T_5ff51_row2_col1" class="data row2 col1" >33.5%</td>
	  <td id="T_5ff51_row2_col2" class="data row2 col2" >112.5%</td>
	  <td id="T_5ff51_row2_col3" class="data row2 col3" >-17.9%</td>
	  <td id="T_5ff51_row2_col4" class="data row2 col4" >13.9%</td>
	</tr>
  </tbody>
</table>

## <span style="color:red">Solution 2</span>

```python
LOADFILE = '../data/equity_data.xlsx'
TAB = 'etf history'
etfs = pd.read_excel(LOADFILE,sheet_name=TAB).set_index('date')
spy = etfs[['SPY']]

x = spy.pct_change().dropna()

betas = pd.DataFrame(index=etfs.columns,dtype=float, columns=['SPY beta'])
for col in etfs.columns:
    y = etfs[[col]].pct_change().dropna()
    y, x = y.align(x,join='inner',axis=0)
    betas.loc[col] = LinearRegression().fit(x,y).coef_

betas.T.style.format('{:.2f}')
```

<style type="text/css">
</style>
<table id="T_8c4c2">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_8c4c2_level0_col0" class="col_heading level0 col0" >SPY</th>
	  <th id="T_8c4c2_level0_col1" class="col_heading level0 col1" >UPRO</th>
	  <th id="T_8c4c2_level0_col2" class="col_heading level0 col2" >EEM</th>
	  <th id="T_8c4c2_level0_col3" class="col_heading level0 col3" >VGK</th>
	  <th id="T_8c4c2_level0_col4" class="col_heading level0 col4" >EWJ</th>
	  <th id="T_8c4c2_level0_col5" class="col_heading level0 col5" >IYR</th>
	  <th id="T_8c4c2_level0_col6" class="col_heading level0 col6" >DBC</th>
	  <th id="T_8c4c2_level0_col7" class="col_heading level0 col7" >HYG</th>
	  <th id="T_8c4c2_level0_col8" class="col_heading level0 col8" >TIP</th>
	  <th id="T_8c4c2_level0_col9" class="col_heading level0 col9" >BITO</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_8c4c2_level0_row0" class="row_heading level0 row0" >SPY beta</th>
	  <td id="T_8c4c2_row0_col0" class="data row0 col0" >1.00</td>
	  <td id="T_8c4c2_row0_col1" class="data row0 col1" >3.01</td>
	  <td id="T_8c4c2_row0_col2" class="data row0 col2" >1.05</td>
	  <td id="T_8c4c2_row0_col3" class="data row0 col3" >1.07</td>
	  <td id="T_8c4c2_row0_col4" class="data row0 col4" >0.74</td>
	  <td id="T_8c4c2_row0_col5" class="data row0 col5" >0.94</td>
	  <td id="T_8c4c2_row0_col6" class="data row0 col6" >0.44</td>
	  <td id="T_8c4c2_row0_col7" class="data row0 col7" >0.38</td>
	  <td id="T_8c4c2_row0_col8" class="data row0 col8" >-0.05</td>
	  <td id="T_8c4c2_row0_col9" class="data row0 col9" >1.68</td>
	</tr>
  </tbody>
</table>

## <span style="color:red">Solution 3</span>

```python
LOADFILE = '../data/spx_returns_weekly.xlsx'
rets = pd.read_excel(LOADFILE,sheet_name='s&p500 rets').set_index('date')

retsSPY = spy.resample('W-Fri').last().pct_change()
```

### 3.1

PCA variance explained is largely from just the first factor.

Even the second factor explains relatively little, (less than 10%), and the 5th factor explains less than 2%.

```python
from sklearn.decomposition import PCA

pca = PCA(svd_solver='full')
pca.fit(rets)
pca_var_explained = pd.DataFrame(pca.explained_variance_ratio_,columns=['Variance explained'])

pca_var_explained.loc[0:5].T.style.format('{:.2%}'.format)
```

<style type="text/css">
</style>
<table id="T_c23a3">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_c23a3_level0_col0" class="col_heading level0 col0" >0</th>
	  <th id="T_c23a3_level0_col1" class="col_heading level0 col1" >1</th>
	  <th id="T_c23a3_level0_col2" class="col_heading level0 col2" >2</th>
	  <th id="T_c23a3_level0_col3" class="col_heading level0 col3" >3</th>
	  <th id="T_c23a3_level0_col4" class="col_heading level0 col4" >4</th>
	  <th id="T_c23a3_level0_col5" class="col_heading level0 col5" >5</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_c23a3_level0_row0" class="row_heading level0 row0" >Variance explained</th>
	  <td id="T_c23a3_row0_col0" class="data row0 col0" >41.64%</td>
	  <td id="T_c23a3_row0_col1" class="data row0 col1" >5.74%</td>
	  <td id="T_c23a3_row0_col2" class="data row0 col2" >3.83%</td>
	  <td id="T_c23a3_row0_col3" class="data row0 col3" >2.81%</td>
	  <td id="T_c23a3_row0_col4" class="data row0 col4" >2.12%</td>
	  <td id="T_c23a3_row0_col5" class="data row0 col5" >1.46%</td>
	</tr>
  </tbody>
</table>

### 3.2

The weights of the first principal component look like a long-only portfolio, similar to a broad equity index.

```python
pca_wts = pd.DataFrame(pca.components_,columns=rets.columns)
#pca_wts.index = ['PC 1','PC 2: Slope','PC 3: Curvature','PCA 4','PCA 5','PCA 6','PCA 7']

pca_factors = rets @ pca_wts.T

allrets = pd.concat([retsSPY,rets],axis=1).dropna()

temp = pd.concat([pca_factors.iloc[:,0:3],allrets],axis=1)
rho = temp.corr()
fh = rho.iloc[3:,0].plot.bar()

fh.set_xticks([])#tick_params(bottom=False)
plt.xlabel('stocks')
plt.ylabel('correlation to PC 1')
plt.title('Correlation to PC 1')
plt.show()
```

![png](output_27_0.png)

```python
fh = (pca_wts.loc[0]/pca_wts.loc[0].sum()).plot.bar()
fh.set_xticks([])
plt.xlabel('stocks')
plt.ylabel('PC 1 weights')
plt.title('Weights of PC 1')
plt.show()
```

![png](output_28_0.png)

The second PC seems to be a long-short portfolio, loading on relative differences of stocks.

```python
fh = (pca_wts.loc[1]/pca_wts.loc[1].sum()).plot.bar()
fh.set_xticks([])
plt.xlabel('stocks')
plt.ylabel('PC 2 weights')
plt.title('Weights of PC 2')
plt.show()
```

![png](output_30_0.png)

### 3.3

Correlation of SPY to the top 3 PC factors is below.

The correlation of PC 1 to SPY is over 90%. This supports the idea that movements in SPY drive much of the overall variation.

```python
rho.loc[[0,1,2],'SPY'].to_frame().T.style.format('{:.1%}')
```

<style type="text/css">
</style>
<table id="T_9e22e">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_9e22e_level0_col0" class="col_heading level0 col0" >0</th>
	  <th id="T_9e22e_level0_col1" class="col_heading level0 col1" >1</th>
	  <th id="T_9e22e_level0_col2" class="col_heading level0 col2" >2</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_9e22e_level0_row0" class="row_heading level0 row0" >SPY</th>
	  <td id="T_9e22e_row0_col0" class="data row0 col0" >93.7%</td>
	  <td id="T_9e22e_row0_col1" class="data row0 col1" >-24.6%</td>
	  <td id="T_9e22e_row0_col2" class="data row0 col2" >-13.7%</td>
	</tr>
  </tbody>
</table>

SPY's pairwise correlation to stocks is, (on average,) over 60%.

PC 1's pairwise correltion ot stocks is, (on average,) nearly the same.

```python
pd.DataFrame([rho['SPY'].iloc[4:].mean(), rho[0].iloc[4:].mean()]).T.style.format('{:.1%}')
```

<style type="text/css">
</style>
<table id="T_4d0da">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_4d0da_level0_col0" class="col_heading level0 col0" >0</th>
	  <th id="T_4d0da_level0_col1" class="col_heading level0 col1" >1</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_4d0da_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_4d0da_row0_col0" class="data row0 col0" >60.6%</td>
	  <td id="T_4d0da_row0_col1" class="data row0 col1" >61.8%</td>
	</tr>
  </tbody>
</table>


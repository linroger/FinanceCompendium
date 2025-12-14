---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: X.1. Optimizing the S&P 500
---

# X.1. Optimizing the S&P 500

# Import Packages, Settings

```python
import pandas as pd
import numpy as np
import datetime
import warnings

pd.options.display.float_format = "{:,.4f}".format

import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)
```

```python
from sklearn.linear_model import LinearRegression
from sklearn.decomposition import PCA
from scipy.optimize import minimize
import seaborn as sns

import statsmodels.api as sm
from sklearn.linear_model import Lasso, Ridge
from sklearn.decomposition import PCA
```

```python
import os
import sys
sys.path.insert(0, '../cmds')
from portfolio import *
```

```python
LOADFILE = '../data/spx_returns_weekly.xlsx'
rets = pd.read_excel(LOADFILE, sheet_name='s&p500 rets').set_index('date')
FREQ = 52
rets = rets.iloc[:,::2]
```

```python
GROSS_LIMIT = 4
```

```python
Nt, Nk = rets.shape
ones = np.ones(Nt)

wts = pd.DataFrame(index = rets.columns,dtype=float) 
rp = pd.DataFrame(index = rets.index, dtype=float)
```

```python
def penalized_reg_limit_gross(func, X, y, limit=2, penalty=1e-6, fit_intercept=True):
    wts = np.ones(X.shape[1]) * 100
    
    while np.abs(wts).sum()>limit:
        penalty *= 1.1
        model = func(alpha=penalty, fit_intercept=fit_intercept).fit(X,y)
        wts = model.coef_ / model.coef_.sum()
    
    return wts, penalty
```

## Equally Weighted

```python
wts['equal'] = 1/Nk
```

## Risk Parity

```python
wts['parity'] = 1/rets.std()
```

## MV

```python
wts['mv'] = LinearRegression(fit_intercept=False).fit(rets,ones).coef_
```

```python
wts['nonnegative'] = LinearRegression(fit_intercept=False,positive=True).fit(rets,ones).coef_
```

## Ridge

```python
wts['ridge'], penalty_ridge = penalized_reg_limit_gross(Ridge,rets,ones,limit=GROSS_LIMIT,fit_intercept=False)
```

## LASSO

```python
with warnings.catch_warnings():
    warnings.simplefilter('ignore')

    wts['lasso'], penalty_lasso = penalized_reg_limit_gross(Lasso,rets,ones,limit=GROSS_LIMIT,fit_intercept=False)
```

# Performance

```python
wts /= wts.sum()
rp = rets @ wts
performanceMetrics(rp,annualization=FREQ)
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
	  <th>equal</th>
	  <td>0.1873</td>
	  <td>0.1941</td>
	  <td>0.9650</td>
	  <td>-0.1674</td>
	  <td>0.1689</td>
	</tr>
	<tr>
	  <th>parity</th>
	  <td>0.1779</td>
	  <td>0.1824</td>
	  <td>0.9754</td>
	  <td>-0.1592</td>
	  <td>0.1561</td>
	</tr>
	<tr>
	  <th>mv</th>
	  <td>1.5910</td>
	  <td>0.2281</td>
	  <td>6.9746</td>
	  <td>-0.0824</td>
	  <td>0.1142</td>
	</tr>
	<tr>
	  <th>nonnegative</th>
	  <td>0.4303</td>
	  <td>0.2223</td>
	  <td>1.9359</td>
	  <td>-0.1162</td>
	  <td>0.1243</td>
	</tr>
	<tr>
	  <th>ridge</th>
	  <td>0.6534</td>
	  <td>0.2418</td>
	  <td>2.7016</td>
	  <td>-0.1189</td>
	  <td>0.1218</td>
	</tr>
	<tr>
	  <th>lasso</th>
	  <td>1.0078</td>
	  <td>0.3670</td>
	  <td>2.7459</td>
	  <td>-0.1325</td>
	  <td>0.1883</td>
	</tr>
  </tbody>
</table>
</div>

```python
tailMetrics(rp)
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
	  <th>equal</th>
	  <td>-0.3697</td>
	  <td>11.9494</td>
	  <td>-0.0372</td>
	  <td>-0.0641</td>
	  <td>-0.3589</td>
	  <td>2020-02-14</td>
	  <td>2020-03-20</td>
	  <td>2020-08-28</td>
	  <td>196 days</td>
	</tr>
	<tr>
	  <th>parity</th>
	  <td>-0.4541</td>
	  <td>11.9424</td>
	  <td>-0.0353</td>
	  <td>-0.0605</td>
	  <td>-0.3372</td>
	  <td>2020-02-14</td>
	  <td>2020-03-20</td>
	  <td>2020-08-28</td>
	  <td>196 days</td>
	</tr>
	<tr>
	  <th>mv</th>
	  <td>-0.2067</td>
	  <td>0.1599</td>
	  <td>-0.0226</td>
	  <td>-0.0381</td>
	  <td>-0.0824</td>
	  <td>2018-06-29</td>
	  <td>2018-07-06</td>
	  <td>2018-07-20</td>
	  <td>21 days</td>
	</tr>
	<tr>
	  <th>nonnegative</th>
	  <td>-0.2900</td>
	  <td>2.4098</td>
	  <td>-0.0399</td>
	  <td>-0.0640</td>
	  <td>-0.2662</td>
	  <td>2020-02-21</td>
	  <td>2020-03-20</td>
	  <td>2020-05-08</td>
	  <td>77 days</td>
	</tr>
	<tr>
	  <th>ridge</th>
	  <td>-0.2311</td>
	  <td>1.4241</td>
	  <td>-0.0420</td>
	  <td>-0.0650</td>
	  <td>-0.2088</td>
	  <td>2020-02-21</td>
	  <td>2020-03-20</td>
	  <td>2020-04-17</td>
	  <td>56 days</td>
	</tr>
	<tr>
	  <th>lasso</th>
	  <td>0.1393</td>
	  <td>0.3992</td>
	  <td>-0.0601</td>
	  <td>-0.0837</td>
	  <td>-0.1912</td>
	  <td>2020-03-06</td>
	  <td>2020-03-20</td>
	  <td>2020-04-10</td>
	  <td>35 days</td>
	</tr>
  </tbody>
</table>
</div>

```python
get_ols_metrics(rp['equal'],rp,annualization=FREQ)
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
	  <th>alpha</th>
	  <th>equal</th>
	  <th>r-squared</th>
	  <th>Treynor Ratio</th>
	  <th>Info Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>equal</th>
	  <td>0.0000</td>
	  <td>1.0000</td>
	  <td>1.0000</td>
	  <td>0.1873</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>parity</th>
	  <td>0.0023</td>
	  <td>0.9376</td>
	  <td>0.9952</td>
	  <td>0.1898</td>
	  <td>0.1834</td>
	</tr>
	<tr>
	  <th>mv</th>
	  <td>1.5606</td>
	  <td>0.1626</td>
	  <td>0.0191</td>
	  <td>9.7853</td>
	  <td>6.9075</td>
	</tr>
	<tr>
	  <th>nonnegative</th>
	  <td>0.2612</td>
	  <td>0.9026</td>
	  <td>0.6213</td>
	  <td>0.4767</td>
	  <td>1.9098</td>
	</tr>
	<tr>
	  <th>ridge</th>
	  <td>0.5025</td>
	  <td>0.8055</td>
	  <td>0.4180</td>
	  <td>0.8111</td>
	  <td>2.7234</td>
	</tr>
	<tr>
	  <th>lasso</th>
	  <td>0.8376</td>
	  <td>0.9089</td>
	  <td>0.2311</td>
	  <td>1.1089</td>
	  <td>2.6025</td>
	</tr>
  </tbody>
</table>
</div>

```python
sns.heatmap(rp.corr(),annot=True,fmt='.1%');
```

![png](output_24_0.png)

# Understanding the Methods

```python
sns.heatmap(wts.corr(),annot=True,fmt='.1%');
```

![png](output_26_0.png)

```python
plotwts = wts.copy()
plotwts[plotwts.abs()<1e-4] = np.nan

fig, ax = plt.subplots(3,2,figsize=(12,15))
wmin = plotwts.min().min()
wmax = plotwts.max().max()
for i,method in enumerate(plotwts.columns):
    idplot = [int(np.floor(i/2)),i%2]
    plotwts[method].plot.hist(ax=ax[idplot[0],idplot[1]],bins=40,title=method)#,xlim=(wmin,wmax))
```

![png](output_27_0.png)

```python
sns.heatmap(plotwts)
plt.title('Security Weights Across Methods')
plt.show()
```

![png](output_28_0.png)

```python
(wts.abs()>1e-4).sum().plot.bar();
```

![png](output_29_0.png)

```python
wts.abs().sum().plot.bar();
```

![png](output_30_0.png)

# Out of Sample

```python
ADJUST_PENALTY = False
GROSS_LIMIT = 2

Nassets = Nk

minT = FREQ*4
methods = wts.columns

# initialize
wts_oos = pd.concat([pd.DataFrame(index=rets.index, columns=rets.columns)]*len(methods), keys=methods, axis=1)
equal_wts = np.ones(Nassets) / Nassets
```

```python
%%time
with warnings.catch_warnings():
    warnings.simplefilter('ignore')
    
    for t in wts_oos.index:    
        R = rets.loc[:t,:]
        y = np.ones(R.shape[0])

        if R.shape[0] >= minT:
            wts_oos.loc[t,'equal',] = equal_wts
            if 'SPY' in R.columns:
                wts_oos.loc[t,'SPY',] = 0
                wts_oos.loc[t,('SPY','SPY')] = 1

            wts_oos.loc[t,'mv',] = LinearRegression(fit_intercept=False).fit(R,y).coef_
            wts_oos.loc[t,'nonnegative',] = LinearRegression(positive=True, fit_intercept=False).fit(R,y).coef_    
            wts_oos.loc[t,'ridge',] = Ridge(alpha= penalty_ridge, fit_intercept=False).fit(R,y).coef_
            wts_oos.loc[t,'lasso',] = Lasso(alpha= penalty_lasso, fit_intercept=False).fit(R,y).coef_

            # dynamically adjust the penalty parameter
            # takes longer to run, brings gross leverage down
            if ADJUST_PENALTY:
                betas, penalty_ridge = penalized_reg_limit_gross(Ridge, R, y, limit=GROSS_LIMIT, fit_intercept=False)
                betas, penalty_lasso = penalized_reg_limit_gross(Lasso, R, y, limit=GROSS_LIMIT, fit_intercept=False)

for method in methods:
    div_factor = wts_oos[method].sum(axis=1)
    div_factor[div_factor==0] = 1
    wts_oos[method] = wts_oos[method].div(div_factor, axis='rows')

wts_oos_lag = wts_oos.shift(1)
```

    CPU times: user 46.5 s, sys: 27.7 s, total: 1min 14s
    Wall time: 13.3 s

```python
rets_port_oos = pd.DataFrame(index=rets.index, columns = methods)

for method in methods:    
    rets_port_oos[method] = (wts_oos_lag[method] * rets).sum(axis=1)

# do not count burn-in period
rets_port_oos.iloc[:minT,:] = None
```

```python
display(performanceMetrics(rets_port_oos, annualization=12).style.format('{:.2%}'.format))
display(tailMetrics(rets_port_oos))
display(get_ols_metrics(rp['equal'], rets_port_oos,annualization=12).style.format('{:.2%}'.format))
```

<style type="text/css">
</style>
<table id="T_27b03">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_27b03_level0_col0" class="col_heading level0 col0" >Mean</th>
	  <th id="T_27b03_level0_col1" class="col_heading level0 col1" >Vol</th>
	  <th id="T_27b03_level0_col2" class="col_heading level0 col2" >Sharpe</th>
	  <th id="T_27b03_level0_col3" class="col_heading level0 col3" >Min</th>
	  <th id="T_27b03_level0_col4" class="col_heading level0 col4" >Max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_27b03_level0_row0" class="row_heading level0 row0" >equal</th>
	  <td id="T_27b03_row0_col0" class="data row0 col0" >3.92%</td>
	  <td id="T_27b03_row0_col1" class="data row0 col1" >13.11%</td>
	  <td id="T_27b03_row0_col2" class="data row0 col2" >29.88%</td>
	  <td id="T_27b03_row0_col3" class="data row0 col3" >-16.74%</td>
	  <td id="T_27b03_row0_col4" class="data row0 col4" >16.89%</td>
	</tr>
	<tr>
	  <th id="T_27b03_level0_row1" class="row_heading level0 row1" >parity</th>
	  <td id="T_27b03_row1_col0" class="data row1 col0" >0.00%</td>
	  <td id="T_27b03_row1_col1" class="data row1 col1" >0.00%</td>
	  <td id="T_27b03_row1_col2" class="data row1 col2" >nan%</td>
	  <td id="T_27b03_row1_col3" class="data row1 col3" >0.00%</td>
	  <td id="T_27b03_row1_col4" class="data row1 col4" >0.00%</td>
	</tr>
	<tr>
	  <th id="T_27b03_level0_row2" class="row_heading level0 row2" >mv</th>
	  <td id="T_27b03_row2_col0" class="data row2 col0" >47.28%</td>
	  <td id="T_27b03_row2_col1" class="data row2 col1" >295.14%</td>
	  <td id="T_27b03_row2_col2" class="data row2 col2" >16.02%</td>
	  <td id="T_27b03_row2_col3" class="data row2 col3" >-284.29%</td>
	  <td id="T_27b03_row2_col4" class="data row2 col4" >553.60%</td>
	</tr>
	<tr>
	  <th id="T_27b03_level0_row3" class="row_heading level0 row3" >nonnegative</th>
	  <td id="T_27b03_row3_col0" class="data row3 col0" >3.91%</td>
	  <td id="T_27b03_row3_col1" class="data row3 col1" >13.49%</td>
	  <td id="T_27b03_row3_col2" class="data row3 col2" >29.02%</td>
	  <td id="T_27b03_row3_col3" class="data row3 col3" >-14.46%</td>
	  <td id="T_27b03_row3_col4" class="data row3 col4" >11.29%</td>
	</tr>
	<tr>
	  <th id="T_27b03_level0_row4" class="row_heading level0 row4" >ridge</th>
	  <td id="T_27b03_row4_col0" class="data row4 col0" >3.43%</td>
	  <td id="T_27b03_row4_col1" class="data row4 col1" >19.68%</td>
	  <td id="T_27b03_row4_col2" class="data row4 col2" >17.43%</td>
	  <td id="T_27b03_row4_col3" class="data row4 col3" >-18.38%</td>
	  <td id="T_27b03_row4_col4" class="data row4 col4" >15.98%</td>
	</tr>
	<tr>
	  <th id="T_27b03_level0_row5" class="row_heading level0 row5" >lasso</th>
	  <td id="T_27b03_row5_col0" class="data row5 col0" >4.36%</td>
	  <td id="T_27b03_row5_col1" class="data row5 col1" >34.37%</td>
	  <td id="T_27b03_row5_col2" class="data row5 col2" >12.69%</td>
	  <td id="T_27b03_row5_col3" class="data row5 col3" >-47.06%</td>
	  <td id="T_27b03_row5_col4" class="data row5 col4" >26.42%</td>
	</tr>
  </tbody>
</table>

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
	  <th>equal</th>
	  <td>-0.2396</td>
	  <td>7.0188</td>
	  <td>-0.0491</td>
	  <td>-0.0901</td>
	  <td>-0.3589</td>
	  <td>2020-02-14</td>
	  <td>2020-03-20</td>
	  <td>2020-08-28</td>
	  <td>196 days</td>
	</tr>
	<tr>
	  <th>parity</th>
	  <td>0.0000</td>
	  <td>0.0000</td>
	  <td>0.0000</td>
	  <td>NaN</td>
	  <td>0.0000</td>
	  <td>2020-01-10</td>
	  <td>2020-01-10</td>
	  <td>2020-01-10</td>
	  <td>0 days</td>
	</tr>
	<tr>
	  <th>mv</th>
	  <td>2.3654</td>
	  <td>15.9931</td>
	  <td>-0.7277</td>
	  <td>-1.6596</td>
	  <td>-5.0476</td>
	  <td>2020-02-28</td>
	  <td>2020-04-10</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>nonnegative</th>
	  <td>-0.4369</td>
	  <td>2.4165</td>
	  <td>-0.0528</td>
	  <td>-0.0871</td>
	  <td>-0.3058</td>
	  <td>2020-02-21</td>
	  <td>2020-03-20</td>
	  <td>2020-07-17</td>
	  <td>147 days</td>
	</tr>
	<tr>
	  <th>ridge</th>
	  <td>-0.4361</td>
	  <td>0.9392</td>
	  <td>-0.0919</td>
	  <td>-0.1308</td>
	  <td>-0.3467</td>
	  <td>2021-11-19</td>
	  <td>2022-05-20</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>lasso</th>
	  <td>-1.0954</td>
	  <td>4.4387</td>
	  <td>-0.1743</td>
	  <td>-0.2509</td>
	  <td>-0.6910</td>
	  <td>2020-11-06</td>
	  <td>2021-06-04</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

<style type="text/css">
</style>
<table id="T_aabd4">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_aabd4_level0_col0" class="col_heading level0 col0" >alpha</th>
	  <th id="T_aabd4_level0_col1" class="col_heading level0 col1" >equal</th>
	  <th id="T_aabd4_level0_col2" class="col_heading level0 col2" >r-squared</th>
	  <th id="T_aabd4_level0_col3" class="col_heading level0 col3" >Treynor Ratio</th>
	  <th id="T_aabd4_level0_col4" class="col_heading level0 col4" >Info Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_aabd4_level0_row0" class="row_heading level0 row0" >equal</th>
	  <td id="T_aabd4_row0_col0" class="data row0 col0" >0.00%</td>
	  <td id="T_aabd4_row0_col1" class="data row0 col1" >100.00%</td>
	  <td id="T_aabd4_row0_col2" class="data row0 col2" >100.00%</td>
	  <td id="T_aabd4_row0_col3" class="data row0 col3" >4.32%</td>
	  <td id="T_aabd4_row0_col4" class="data row0 col4" >nan%</td>
	</tr>
	<tr>
	  <th id="T_aabd4_level0_row1" class="row_heading level0 row1" >parity</th>
	  <td id="T_aabd4_row1_col0" class="data row1 col0" >0.00%</td>
	  <td id="T_aabd4_row1_col1" class="data row1 col1" >-0.00%</td>
	  <td id="T_aabd4_row1_col2" class="data row1 col2" >100.00%</td>
	  <td id="T_aabd4_row1_col3" class="data row1 col3" >nan%</td>
	  <td id="T_aabd4_row1_col4" class="data row1 col4" >nan%</td>
	</tr>
	<tr>
	  <th id="T_aabd4_level0_row2" class="row_heading level0 row2" >mv</th>
	  <td id="T_aabd4_row2_col0" class="data row2 col0" >51.21%</td>
	  <td id="T_aabd4_row2_col1" class="data row2 col1" >-100.39%</td>
	  <td id="T_aabd4_row2_col2" class="data row2 col2" >0.20%</td>
	  <td id="T_aabd4_row2_col3" class="data row2 col3" >-47.09%</td>
	  <td id="T_aabd4_row2_col4" class="data row2 col4" >17.37%</td>
	</tr>
	<tr>
	  <th id="T_aabd4_level0_row3" class="row_heading level0 row3" >nonnegative</th>
	  <td id="T_aabd4_row3_col0" class="data row3 col0" >0.84%</td>
	  <td id="T_aabd4_row3_col1" class="data row3 col1" >78.45%</td>
	  <td id="T_aabd4_row3_col2" class="data row3 col2" >58.19%</td>
	  <td id="T_aabd4_row3_col3" class="data row3 col3" >4.99%</td>
	  <td id="T_aabd4_row3_col4" class="data row3 col4" >9.63%</td>
	</tr>
	<tr>
	  <th id="T_aabd4_level0_row4" class="row_heading level0 row4" >ridge</th>
	  <td id="T_aabd4_row4_col0" class="data row4 col0" >1.56%</td>
	  <td id="T_aabd4_row4_col1" class="data row4 col1" >47.65%</td>
	  <td id="T_aabd4_row4_col2" class="data row4 col2" >10.08%</td>
	  <td id="T_aabd4_row4_col3" class="data row4 col3" >7.20%</td>
	  <td id="T_aabd4_row4_col4" class="data row4 col4" >8.38%</td>
	</tr>
	<tr>
	  <th id="T_aabd4_level0_row5" class="row_heading level0 row5" >lasso</th>
	  <td id="T_aabd4_row5_col0" class="data row5 col0" >3.46%</td>
	  <td id="T_aabd4_row5_col1" class="data row5 col1" >23.03%</td>
	  <td id="T_aabd4_row5_col2" class="data row5 col2" >0.77%</td>
	  <td id="T_aabd4_row5_col3" class="data row5 col3" >18.94%</td>
	  <td id="T_aabd4_row5_col4" class="data row5 col4" >10.11%</td>
	</tr>
  </tbody>
</table>

```python
wts_all = wts_oos.unstack().groupby(level=(0,2))
wts_all_diff = wts_oos.diff().unstack().groupby(level=(0,2))

gross_leverage = wts_all.apply(lambda x: sum(abs(x))).unstack(level=0)
turnover = wts_all_diff.apply(lambda x: sum(abs(x))).unstack(level=0)
num_positions = wts_all.apply(lambda x: sum(abs(x)>0)).unstack(level=0)
max_wt = wts_all.apply(lambda x: max(x)).unstack(level=0)
min_wt = wts_all.apply(lambda x: min(x)).unstack(level=0)

dates_active = (rets.index[minT],rets.index[-1])
```

```python
sns.heatmap(rets_port_oos.corr(),annot=True,fmt='.1%')
plt.show()
gross_leverage.mean().plot.bar(title='Gross Leverage');
```

![png](output_37_0.png)

![png](output_37_1.png)

```python
gross_leverage.plot(title='Gross Leverage',xlim=dates_active)
plt.ylim(0,10)
turnover.rolling(12*1).mean().plot(title='Turnover',xlim=dates_active)
plt.ylim(0,100)
plt.show()

num_positions.plot(title='Number of Positions',xlim=dates_active)
max_wt.plot(title='Max Weight',xlim=dates_active)
plt.show()
min_wt.plot(title='Min Weight',xlim=dates_active)
plt.show()
```

![png](output_38_0.png)

![png](output_38_1.png)

![png](output_38_2.png)

![png](output_38_3.png)

![png](output_38_4.png)

```python

```

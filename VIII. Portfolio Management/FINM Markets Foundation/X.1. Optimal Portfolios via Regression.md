---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: X.1 Portfolio Optimization via Regression
linter-yaml-title-alias: X.1 Portfolio Optimization via Regression
---

# X.1 Portfolio Optimization via Regression
## FINM 36700 Discussion
### Mark Hendricks

## One Weird Trick Your Statistician Will HATE

Mean-variance optimization is actually a linear regression!

* Look back at the formula for the tangency weights
* $\boldsymbol{\Sigma}$ is like $X'X$
* $\tilde{\boldsymbol{\mu}}$ is like $X'\boldsymbol{1}$

Takes some tedious algebra, but can be shown that the tangency weights, (solving the MV problem) are obtained by the following, (weird!) regression:

$$1 = \boldsymbol{\beta}\boldsymbol{\tilde{r}}_t + \epsilon_t$$

Why do we care? The MV formula is easy to compute?

We can apply the many techniques and tricks of regression to portfolio optimization.

```python
import pandas as pd
import numpy as np

import statsmodels.api as sm
from statsmodels.regression.quantile_regression import QuantReg

from sklearn.linear_model import LinearRegression, Lasso, Ridge
from sklearn.linear_model import QuantileRegressor
from sklearn.decomposition import PCA

from scipy.optimize import lsq_linear

import matplotlib.pyplot as plt

import yfinance as yf

import sys
sys.path.insert(0, '../cmds/')
from portfolio import *
```

## Get Data

- Try using the data from HW#1, related to the Harvard Endowment.
- Or try a handful of equities downloaded from Yahoo.

```python
import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13
```

```python
filepath_data = '../data/multi_asset_etf_data.xlsx'
info = pd.read_excel(filepath_data,sheet_name='descriptions')
info.rename(columns={'Unnamed: 0':'Symbol'},inplace=True)
info.set_index('Symbol',inplace=True)

rets = pd.read_excel(filepath_data,sheet_name='total returns')
rets.set_index('Date',inplace=True)
rets.drop(columns=['SHV'])

retsx = pd.read_excel(filepath_data,sheet_name='excess returns')
retsx.set_index('Date',inplace=True)

# sort columns by order of descriptions in Info tab
symbol_list = info.index.drop('SHV')
rets = rets[symbol_list]
retsx = retsx[symbol_list]

rets_Harvard, retsx_Harvard = rets, retsx
```

```python
DATAPATH = '../data/midterm_2_data_pricing.xlsx'
SHEET = 'assets (excess returns)'
retsx = pd.read_excel(DATAPATH,sheet_name=SHEET)
retsx.set_index('Date',inplace=True)
rf = .01/12
rets = retsx + rf

rets_Commodities, retsx_Commodities = rets, retsx
```

```python
symbols = ['SPY']
# add multi-asset ETF symbols at cost of losing 15+ years of data
# symbols += ['IYR','EFA','EEM','IEF', 'TIP', 'DBC','PSP','QAI','BWX','HYG','SHV']
symbols += ['AAPL','MSFT','JNJ','MMM','GE','DIS','DHR','HON', 'JPM', 'BAM', 'MCD', 'F', 'CVX', 'HD','LOW', 'CAT','NUE','DHI','XOM', 'BA','FDX','BAC','WMT','NYT','TM']
start_date = '1990-12-31'
end_date = '2021-11-30'
df = yf.download(symbols,start_date,end_date)['Adj Close']

rets = df.resample('M').last().pct_change()
rets.dropna(axis=0,inplace=True)
if 'SHV' in rets.columns:
    retsx = rets.subtract(rets['SHV'],axis=0).drop(columns=['SHV'])
else:
    rf = .01/12
    retsx = rets - rf

rets_Equities, retsx_Equities = rets, retsx
```

    [*********************100%***********************]  26 of 26 completed

```python
#USE_DATA = 'Harvard'
#USE_DATA = 'Commodities'
USE_DATA = 'Equities'
#USE_DATA = 'ALL'

if USE_DATA == 'Harvard':
    rets, retsx = rets_Harvard, retsx_Harvard
elif USE_DATA == 'Commodities':
    rets, retsx = rets_Commodities, retsx_Commodities
elif USE_DATA == 'Equities':
    rets, retsx = rets_Equities, retsx_Equities
else:
    rets = pd.concat([rets_Harvard.drop(columns=['SPY']), rets_Commodities, rets_Equities],axis=1,join='inner')
    retsx = pd.concat([retsx_Harvard.drop(columns=['SPY']), retsx_Commodities, retsx_Equities],axis=1,join='inner')

if USE_DATA == 'Commodities':
    _, spyx = retsx.align(rets_Equities[['SPY']],join='left',axis=0)
else:
    spyx = retsx[['SPY']]
```

```python
Ntime, Nassets = retsx.shape
print(f'Number of assets: {Nassets:.0f}')
print(f'Number of periods: {Ntime:.0f}')
display(retsx.head().style.format('{:.2%}'.format))
display_correlation(retsx)
```

    Number of assets: 26
    Number of periods: 346

<style  type="text/css" >
</style><table id="T_856a4_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >AAPL</th>        <th class="col_heading level0 col1" >BA</th>        <th class="col_heading level0 col2" >BAC</th>        <th class="col_heading level0 col3" >BAM</th>        <th class="col_heading level0 col4" >CAT</th>        <th class="col_heading level0 col5" >CVX</th>        <th class="col_heading level0 col6" >DHI</th>        <th class="col_heading level0 col7" >DHR</th>        <th class="col_heading level0 col8" >DIS</th>        <th class="col_heading level0 col9" >F</th>        <th class="col_heading level0 col10" >FDX</th>        <th class="col_heading level0 col11" >GE</th>        <th class="col_heading level0 col12" >HD</th>        <th class="col_heading level0 col13" >HON</th>        <th class="col_heading level0 col14" >JNJ</th>        <th class="col_heading level0 col15" >JPM</th>        <th class="col_heading level0 col16" >LOW</th>        <th class="col_heading level0 col17" >MCD</th>        <th class="col_heading level0 col18" >MMM</th>        <th class="col_heading level0 col19" >MSFT</th>        <th class="col_heading level0 col20" >NUE</th>        <th class="col_heading level0 col21" >NYT</th>        <th class="col_heading level0 col22" >SPY</th>        <th class="col_heading level0 col23" >TM</th>        <th class="col_heading level0 col24" >WMT</th>        <th class="col_heading level0 col25" >XOM</th>    </tr>    <tr>        <th class="index_name level0" >Date</th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>        <th class="blank" ></th>    </tr></thead><tbody>
                <tr>
                        <th id="T_856a4_level0_row0" class="row_heading level0 row0" >1993-02-28 00:00:00</th>
                        <td id="T_856a4_row0_col0" class="data row0 col0" >-10.81%</td>
                        <td id="T_856a4_row0_col1" class="data row0 col1" >-1.88%</td>
                        <td id="T_856a4_row0_col2" class="data row0 col2" >-0.55%</td>
                        <td id="T_856a4_row0_col3" class="data row0 col3" >3.09%</td>
                        <td id="T_856a4_row0_col4" class="data row0 col4" >3.26%</td>
                        <td id="T_856a4_row0_col5" class="data row0 col5" >7.01%</td>
                        <td id="T_856a4_row0_col6" class="data row0 col6" >2.36%</td>
                        <td id="T_856a4_row0_col7" class="data row0 col7" >-9.17%</td>
                        <td id="T_856a4_row0_col8" class="data row0 col8" >-2.82%</td>
                        <td id="T_856a4_row0_col9" class="data row0 col9" >-0.63%</td>
                        <td id="T_856a4_row0_col10" class="data row0 col10" >-0.52%</td>
                        <td id="T_856a4_row0_col11" class="data row0 col11" >-2.41%</td>
                        <td id="T_856a4_row0_col12" class="data row0 col12" >-2.39%</td>
                        <td id="T_856a4_row0_col13" class="data row0 col13" >14.73%</td>
                        <td id="T_856a4_row0_col14" class="data row0 col14" >-2.99%</td>
                        <td id="T_856a4_row0_col15" class="data row0 col15" >-0.39%</td>
                        <td id="T_856a4_row0_col16" class="data row0 col16" >3.08%</td>
                        <td id="T_856a4_row0_col17" class="data row0 col17" >4.24%</td>
                        <td id="T_856a4_row0_col18" class="data row0 col18" >8.43%</td>
                        <td id="T_856a4_row0_col19" class="data row0 col19" >-3.70%</td>
                        <td id="T_856a4_row0_col20" class="data row0 col20" >9.05%</td>
                        <td id="T_856a4_row0_col21" class="data row0 col21" >-1.32%</td>
                        <td id="T_856a4_row0_col22" class="data row0 col22" >0.98%</td>
                        <td id="T_856a4_row0_col23" class="data row0 col23" >1.58%</td>
                        <td id="T_856a4_row0_col24" class="data row0 col24" >-0.28%</td>
                        <td id="T_856a4_row0_col25" class="data row0 col25" >5.22%</td>
            </tr>
            <tr>
                        <th id="T_856a4_level0_row1" class="row_heading level0 row1" >1993-03-31 00:00:00</th>
                        <td id="T_856a4_row1_col0" class="data row1 col0" >-2.91%</td>
                        <td id="T_856a4_row1_col1" class="data row1 col1" >1.73%</td>
                        <td id="T_856a4_row1_col2" class="data row1 col2" >2.79%</td>
                        <td id="T_856a4_row1_col3" class="data row1 col3" >12.22%</td>
                        <td id="T_856a4_row1_col4" class="data row1 col4" >1.86%</td>
                        <td id="T_856a4_row1_col5" class="data row1 col5" >7.87%</td>
                        <td id="T_856a4_row1_col6" class="data row1 col6" >-0.08%</td>
                        <td id="T_856a4_row1_col7" class="data row1 col7" >12.04%</td>
                        <td id="T_856a4_row1_col8" class="data row1 col8" >0.20%</td>
                        <td id="T_856a4_row1_col9" class="data row1 col9" >13.27%</td>
                        <td id="T_856a4_row1_col10" class="data row1 col10" >-0.08%</td>
                        <td id="T_856a4_row1_col11" class="data row1 col11" >6.65%</td>
                        <td id="T_856a4_row1_col12" class="data row1 col12" >-0.63%</td>
                        <td id="T_856a4_row1_col13" class="data row1 col13" >1.06%</td>
                        <td id="T_856a4_row1_col14" class="data row1 col14" >0.21%</td>
                        <td id="T_856a4_row1_col15" class="data row1 col15" >0.42%</td>
                        <td id="T_856a4_row1_col16" class="data row1 col16" >18.78%</td>
                        <td id="T_856a4_row1_col17" class="data row1 col17" >4.36%</td>
                        <td id="T_856a4_row1_col18" class="data row1 col18" >3.71%</td>
                        <td id="T_856a4_row1_col19" class="data row1 col19" >10.86%</td>
                        <td id="T_856a4_row1_col20" class="data row1 col20" >5.92%</td>
                        <td id="T_856a4_row1_col21" class="data row1 col21" >7.78%</td>
                        <td id="T_856a4_row1_col22" class="data row1 col22" >2.16%</td>
                        <td id="T_856a4_row1_col23" class="data row1 col23" >15.22%</td>
                        <td id="T_856a4_row1_col24" class="data row1 col24" >-2.30%</td>
                        <td id="T_856a4_row1_col25" class="data row1 col25" >3.85%</td>
            </tr>
            <tr>
                        <th id="T_856a4_level0_row2" class="row_heading level0 row2" >1993-04-30 00:00:00</th>
                        <td id="T_856a4_row2_col0" class="data row2 col0" >-0.57%</td>
                        <td id="T_856a4_row2_col1" class="data row2 col1" >8.49%</td>
                        <td id="T_856a4_row2_col2" class="data row2 col2" >-9.24%</td>
                        <td id="T_856a4_row2_col3" class="data row2 col3" >-4.04%</td>
                        <td id="T_856a4_row2_col4" class="data row2 col4" >17.32%</td>
                        <td id="T_856a4_row2_col5" class="data row2 col5" >3.53%</td>
                        <td id="T_856a4_row2_col6" class="data row2 col6" >9.44%</td>
                        <td id="T_856a4_row2_col7" class="data row2 col7" >-0.08%</td>
                        <td id="T_856a4_row2_col8" class="data row2 col8" >-8.38%</td>
                        <td id="T_856a4_row2_col9" class="data row2 col9" >6.01%</td>
                        <td id="T_856a4_row2_col10" class="data row2 col10" >-14.27%</td>
                        <td id="T_856a4_row2_col11" class="data row2 col11" >1.60%</td>
                        <td id="T_856a4_row2_col12" class="data row2 col12" >-11.02%</td>
                        <td id="T_856a4_row2_col13" class="data row2 col13" >-2.15%</td>
                        <td id="T_856a4_row2_col14" class="data row2 col14" >2.26%</td>
                        <td id="T_856a4_row2_col15" class="data row2 col15" >-5.35%</td>
                        <td id="T_856a4_row2_col16" class="data row2 col16" >-9.82%</td>
                        <td id="T_856a4_row2_col17" class="data row2 col17" >-9.07%</td>
                        <td id="T_856a4_row2_col18" class="data row2 col18" >1.51%</td>
                        <td id="T_856a4_row2_col19" class="data row2 col19" >-7.65%</td>
                        <td id="T_856a4_row2_col20" class="data row2 col20" >-1.58%</td>
                        <td id="T_856a4_row2_col21" class="data row2 col21" >-6.97%</td>
                        <td id="T_856a4_row2_col22" class="data row2 col22" >-2.64%</td>
                        <td id="T_856a4_row2_col23" class="data row2 col23" >19.82%</td>
                        <td id="T_856a4_row2_col24" class="data row2 col24" >-15.83%</td>
                        <td id="T_856a4_row2_col25" class="data row2 col25" >-0.27%</td>
            </tr>
            <tr>
                        <th id="T_856a4_level0_row3" class="row_heading level0 row3" >1993-05-31 00:00:00</th>
                        <td id="T_856a4_row3_col0" class="data row3 col0" >10.64%</td>
                        <td id="T_856a4_row3_col1" class="data row3 col1" >4.87%</td>
                        <td id="T_856a4_row3_col2" class="data row3 col2" >-4.33%</td>
                        <td id="T_856a4_row3_col3" class="data row3 col3" >7.27%</td>
                        <td id="T_856a4_row3_col4" class="data row3 col4" >3.35%</td>
                        <td id="T_856a4_row3_col5" class="data row3 col5" >3.30%</td>
                        <td id="T_856a4_row3_col6" class="data row3 col6" >8.61%</td>
                        <td id="T_856a4_row3_col7" class="data row3 col7" >12.86%</td>
                        <td id="T_856a4_row3_col8" class="data row3 col8" >7.89%</td>
                        <td id="T_856a4_row3_col9" class="data row3 col9" >-5.11%</td>
                        <td id="T_856a4_row3_col10" class="data row3 col10" >1.21%</td>
                        <td id="T_856a4_row3_col11" class="data row3 col11" >2.26%</td>
                        <td id="T_856a4_row3_col12" class="data row3 col12" >9.38%</td>
                        <td id="T_856a4_row3_col13" class="data row3 col13" >2.68%</td>
                        <td id="T_856a4_row3_col14" class="data row3 col14" >2.81%</td>
                        <td id="T_856a4_row3_col15" class="data row3 col15" >0.24%</td>
                        <td id="T_856a4_row3_col16" class="data row3 col16" >23.69%</td>
                        <td id="T_856a4_row3_col17" class="data row3 col17" >3.29%</td>
                        <td id="T_856a4_row3_col18" class="data row3 col18" >2.13%</td>
                        <td id="T_856a4_row3_col19" class="data row3 col19" >8.25%</td>
                        <td id="T_856a4_row3_col20" class="data row3 col20" >-2.99%</td>
                        <td id="T_856a4_row3_col21" class="data row3 col21" >0.84%</td>
                        <td id="T_856a4_row3_col22" class="data row3 col22" >2.61%</td>
                        <td id="T_856a4_row3_col23" class="data row3 col23" >-3.64%</td>
                        <td id="T_856a4_row3_col24" class="data row3 col24" >4.12%</td>
                        <td id="T_856a4_row3_col25" class="data row3 col25" >0.26%</td>
            </tr>
            <tr>
                        <th id="T_856a4_level0_row4" class="row_heading level0 row4" >1993-06-30 00:00:00</th>
                        <td id="T_856a4_row4_col0" class="data row4 col0" >-30.33%</td>
                        <td id="T_856a4_row4_col1" class="data row4 col1" >-6.71%</td>
                        <td id="T_856a4_row4_col2" class="data row4 col2" >5.22%</td>
                        <td id="T_856a4_row4_col3" class="data row4 col3" >4.03%</td>
                        <td id="T_856a4_row4_col4" class="data row4 col4" >4.45%</td>
                        <td id="T_856a4_row4_col5" class="data row4 col5" >-0.51%</td>
                        <td id="T_856a4_row4_col6" class="data row4 col6" >-2.08%</td>
                        <td id="T_856a4_row4_col7" class="data row4 col7" >2.39%</td>
                        <td id="T_856a4_row4_col8" class="data row4 col8" >-7.47%</td>
                        <td id="T_856a4_row4_col9" class="data row4 col9" >0.40%</td>
                        <td id="T_856a4_row4_col10" class="data row4 col10" >-4.93%</td>
                        <td id="T_856a4_row4_col11" class="data row4 col11" >3.85%</td>
                        <td id="T_856a4_row4_col12" class="data row4 col12" >-5.42%</td>
                        <td id="T_856a4_row4_col13" class="data row4 col13" >-0.08%</td>
                        <td id="T_856a4_row4_col14" class="data row4 col14" >-7.09%</td>
                        <td id="T_856a4_row4_col15" class="data row4 col15" >7.28%</td>
                        <td id="T_856a4_row4_col16" class="data row4 col16" >3.56%</td>
                        <td id="T_856a4_row4_col17" class="data row4 col17" >-1.13%</td>
                        <td id="T_856a4_row4_col18" class="data row4 col18" >-4.40%</td>
                        <td id="T_856a4_row4_col19" class="data row4 col19" >-5.08%</td>
                        <td id="T_856a4_row4_col20" class="data row4 col20" >-2.70%</td>
                        <td id="T_856a4_row4_col21" class="data row4 col21" >-15.67%</td>
                        <td id="T_856a4_row4_col22" class="data row4 col22" >0.28%</td>
                        <td id="T_856a4_row4_col23" class="data row4 col23" >-5.31%</td>
                        <td id="T_856a4_row4_col24" class="data row4 col24" >-5.80%</td>
                        <td id="T_856a4_row4_col25" class="data row4 col25" >0.87%</td>
            </tr>
    </tbody></table>


    MIN Correlation pair is ('TM', 'JNJ')
    MAX Correlation pair is ('XOM', 'CVX')



    

![png](output_9_3.png)

## Figure of Mean-Variance Optimization

```python
import os
import sys
if os.path.isfile('../dev/extras.py'):
    sys.path.insert(0, '../dev')
    from extras import MVweights, plotMV

    figrets = rets
    label = 'GMV'
    wstar = pd.DataFrame(MVweights(figrets,target=label),index=figrets.columns,columns=[label])
    label = 'TAN'
    wstar[label] = MVweights(figrets,target=label,isexcess=False)
    
    wts_a = wstar['TAN']
    wts_b = wstar['GMV']
    fig = plotMV(wts_a,wts_b,figrets.mean(),figrets.cov(),labels=['TAN','GMV'],annualize=12)
```

![png](output_11_0.png)

### Description of Individual Asset Sharpe Ratios

```python
(retsx.mean()/retsx.std()).to_frame().describe().rename({0:'Sharpe Ratio Summary'},axis=1).drop(index=['count']).style.format('{:.2%}'.format)
```

<style  type="text/css" >
</style><table id="T_ce8bd_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Sharpe Ratio Summary</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_ce8bd_level0_row0" class="row_heading level0 row0" >mean</th>
                        <td id="T_ce8bd_row0_col0" class="data row0 col0" >15.81%</td>
            </tr>
            <tr>
                        <th id="T_ce8bd_level0_row1" class="row_heading level0 row1" >std</th>
                        <td id="T_ce8bd_row1_col0" class="data row1 col0" >4.74%</td>
            </tr>
            <tr>
                        <th id="T_ce8bd_level0_row2" class="row_heading level0 row2" >min</th>
                        <td id="T_ce8bd_row2_col0" class="data row2 col0" >7.75%</td>
            </tr>
            <tr>
                        <th id="T_ce8bd_level0_row3" class="row_heading level0 row3" >25%</th>
                        <td id="T_ce8bd_row3_col0" class="data row3 col0" >13.15%</td>
            </tr>
            <tr>
                        <th id="T_ce8bd_level0_row4" class="row_heading level0 row4" >50%</th>
                        <td id="T_ce8bd_row4_col0" class="data row4 col0" >15.14%</td>
            </tr>
            <tr>
                        <th id="T_ce8bd_level0_row5" class="row_heading level0 row5" >75%</th>
                        <td id="T_ce8bd_row5_col0" class="data row5 col0" >19.58%</td>
            </tr>
            <tr>
                        <th id="T_ce8bd_level0_row6" class="row_heading level0 row6" >max</th>
                        <td id="T_ce8bd_row6_col0" class="data row6 col0" >26.43%</td>
            </tr>
    </tbody></table>

# Mean-Variance Optimization is OLS

## OLS when Projecting a Constant

The OLS estimator of regressing $y$ on $X$ (no intercept) is:

$$\boldsymbol{\hat{\beta}_{y|x}} = \left(\boldsymbol{X}'\boldsymbol{X}\right)^{-1}\boldsymbol{X}'\boldsymbol{y}$$

Though it may seem unusual we could regress a constant on regressors:

$$1 = \beta x_t + \epsilon_t$$

_Obviously, if we included an intercept, the regression would be degenerate with $\alpha=1, \beta=0, \epsilon_t=0$._

Regress the constant, 1, on returns. So $X=R$ and $y=1$.

$$\boldsymbol{\hat{\beta}_{1|R}} = \left(\boldsymbol{R}'\boldsymbol{R}\right)^{-1}\boldsymbol{R}'\boldsymbol{1}_{T\times 1}$$

where 

$\boldsymbol{1}_{T}$ denotes the $T\times 1$ vector of ones.

### The OLS solution as sample moments

$$\boldsymbol{\hat{\beta}_{1|R}} = \boldsymbol{\hat{\Sigma}_0^{-1}\hat{\mu}}$$ 

**Scaling**

The OLS betas will not sum to one, but we can include a scaling factor to ensure this, and we can refer to this as a weight vector, $\boldsymbol{w}_{ols}$:

$$\boldsymbol{w}_{ols} = \boldsymbol{\hat{\Sigma}_0^{-1}\hat{\mu}}\ \hat{c}_{ols}$$

$$\hat{c}_{ols} = \frac{1}{\boldsymbol{1}_{N}'\boldsymbol{\hat{\Sigma}}_0^{-1}\boldsymbol{\hat{\mu}}}$$

where $\boldsymbol{1}_{N}$ denotes a $N\times 1$ vector of ones.

## Mean-Variance Solution

Using sample estimates for the moments above, we have:

$$\boldsymbol{\hat{w}}_{tan} = \boldsymbol{\hat{\Sigma}^{-1}\hat{\mu}}\hat{c}_{tan}$$

$$\hat{c}_{\text{tan}} = \frac{1}{\boldsymbol{1_k'\hat{\Sigma}^{-1}\hat{\mu}}}$$

where $\hat{c}_{\text{mv}}$ is a constant that ensures $\boldsymbol{\hat{w}}_{tan}$ sums to 1. 

## Equality

If we go through the tedious linear algebra, we find

$$\boldsymbol{\hat{w}}_{tan} = 
\boldsymbol{\hat{\Sigma}}^{-1}\boldsymbol{\hat{\mu}}\hat{c}_{tan} =
\boldsymbol{\hat{\Sigma}}_0^{-1}\boldsymbol{\hat{\mu}}\hat{c}_{ols} = \boldsymbol{\hat{w}}_{ols}$$


## Scaling of the constant used as the dependent variable
- We are using the constant $1$ on the left-hand-side as the dependent variable.
- For OLS, the scaling of this constant simply changes the sum of the weights. Thus, it impacts the exact scaling constant, $\hat{c}_{ols}$, which enforces the weights to sum to 1.

### Going beyond MV, the scaling may matter!
- For more complex optimization, the solution weights do not scale proportionally with the target mean, as they do for the excess-return Mean-Variance frontier.
- In those cases, we may need to rescale the regressand constant to trace out the frontier.

## Conclusion
**Mean Variance Optimization is equivalent to OLS of a constant on the returns.**

This means...
- We can get statistical significance of the MV weights.
- We can restrict the MV solution in ways we commonly restrict OLS. This includes Non-Negative Least Squares.
- We can restrict the number of positions in the MV solution. (LASSO).
- We can restrict the position sizes in the MV solution via a penalty parameter instead of $2n$ boundary constraints. (Ridge).


```python
wts = tangency_weights(retsx).rename({0:'MV'},axis=1)

# for OLS, doesn't matter what scaling we give y, just use y=1
# but note that below this scaling may matter
y = np.ones((Ntime,1))
X = retsx

beta = LinearRegression(fit_intercept=False).fit(X,y).coef_.transpose()
# rescale OLS beta to sum to 1
beta /= beta.sum()

wts['OLS'] = beta
wts.style.format('{:.2%}'.format)
```




<style  type="text/css" >
</style><table id="T_ccb2a_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >MV</th>        <th class="col_heading level0 col1" >OLS</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_ccb2a_level0_row0" class="row_heading level0 row0" >AAPL</th>
                        <td id="T_ccb2a_row0_col0" class="data row0 col0" >21.47%</td>
                        <td id="T_ccb2a_row0_col1" class="data row0 col1" >21.47%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row1" class="row_heading level0 row1" >BA</th>
                        <td id="T_ccb2a_row1_col0" class="data row1 col0" >12.21%</td>
                        <td id="T_ccb2a_row1_col1" class="data row1 col1" >12.21%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row2" class="row_heading level0 row2" >BAC</th>
                        <td id="T_ccb2a_row2_col0" class="data row2 col0" >-5.30%</td>
                        <td id="T_ccb2a_row2_col1" class="data row2 col1" >-5.30%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row3" class="row_heading level0 row3" >BAM</th>
                        <td id="T_ccb2a_row3_col0" class="data row3 col0" >45.04%</td>
                        <td id="T_ccb2a_row3_col1" class="data row3 col1" >45.04%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row4" class="row_heading level0 row4" >CAT</th>
                        <td id="T_ccb2a_row4_col0" class="data row4 col0" >9.00%</td>
                        <td id="T_ccb2a_row4_col1" class="data row4 col1" >9.00%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row5" class="row_heading level0 row5" >CVX</th>
                        <td id="T_ccb2a_row5_col0" class="data row5 col0" >2.97%</td>
                        <td id="T_ccb2a_row5_col1" class="data row5 col1" >2.97%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row6" class="row_heading level0 row6" >DHI</th>
                        <td id="T_ccb2a_row6_col0" class="data row6 col0" >5.00%</td>
                        <td id="T_ccb2a_row6_col1" class="data row6 col1" >5.00%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row7" class="row_heading level0 row7" >DHR</th>
                        <td id="T_ccb2a_row7_col0" class="data row7 col0" >49.28%</td>
                        <td id="T_ccb2a_row7_col1" class="data row7 col1" >49.28%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row8" class="row_heading level0 row8" >DIS</th>
                        <td id="T_ccb2a_row8_col0" class="data row8 col0" >1.18%</td>
                        <td id="T_ccb2a_row8_col1" class="data row8 col1" >1.18%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row9" class="row_heading level0 row9" >F</th>
                        <td id="T_ccb2a_row9_col0" class="data row9 col0" >-5.11%</td>
                        <td id="T_ccb2a_row9_col1" class="data row9 col1" >-5.11%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row10" class="row_heading level0 row10" >FDX</th>
                        <td id="T_ccb2a_row10_col0" class="data row10 col0" >-2.85%</td>
                        <td id="T_ccb2a_row10_col1" class="data row10 col1" >-2.85%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row11" class="row_heading level0 row11" >GE</th>
                        <td id="T_ccb2a_row11_col0" class="data row11 col0" >-8.39%</td>
                        <td id="T_ccb2a_row11_col1" class="data row11 col1" >-8.39%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row12" class="row_heading level0 row12" >HD</th>
                        <td id="T_ccb2a_row12_col0" class="data row12 col0" >18.33%</td>
                        <td id="T_ccb2a_row12_col1" class="data row12 col1" >18.33%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row13" class="row_heading level0 row13" >HON</th>
                        <td id="T_ccb2a_row13_col0" class="data row13 col0" >4.02%</td>
                        <td id="T_ccb2a_row13_col1" class="data row13 col1" >4.02%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row14" class="row_heading level0 row14" >JNJ</th>
                        <td id="T_ccb2a_row14_col0" class="data row14 col0" >57.91%</td>
                        <td id="T_ccb2a_row14_col1" class="data row14 col1" >57.91%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row15" class="row_heading level0 row15" >JPM</th>
                        <td id="T_ccb2a_row15_col0" class="data row15 col0" >24.64%</td>
                        <td id="T_ccb2a_row15_col1" class="data row15 col1" >24.64%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row16" class="row_heading level0 row16" >LOW</th>
                        <td id="T_ccb2a_row16_col0" class="data row16 col0" >26.58%</td>
                        <td id="T_ccb2a_row16_col1" class="data row16 col1" >26.58%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row17" class="row_heading level0 row17" >MCD</th>
                        <td id="T_ccb2a_row17_col0" class="data row17 col0" >19.17%</td>
                        <td id="T_ccb2a_row17_col1" class="data row17 col1" >19.17%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row18" class="row_heading level0 row18" >MMM</th>
                        <td id="T_ccb2a_row18_col0" class="data row18 col0" >3.79%</td>
                        <td id="T_ccb2a_row18_col1" class="data row18 col1" >3.79%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row19" class="row_heading level0 row19" >MSFT</th>
                        <td id="T_ccb2a_row19_col0" class="data row19 col0" >39.98%</td>
                        <td id="T_ccb2a_row19_col1" class="data row19 col1" >39.98%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row20" class="row_heading level0 row20" >NUE</th>
                        <td id="T_ccb2a_row20_col0" class="data row20 col0" >-5.24%</td>
                        <td id="T_ccb2a_row20_col1" class="data row20 col1" >-5.24%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row21" class="row_heading level0 row21" >NYT</th>
                        <td id="T_ccb2a_row21_col0" class="data row21 col0" >1.54%</td>
                        <td id="T_ccb2a_row21_col1" class="data row21 col1" >1.54%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row22" class="row_heading level0 row22" >SPY</th>
                        <td id="T_ccb2a_row22_col0" class="data row22 col0" >-243.12%</td>
                        <td id="T_ccb2a_row22_col1" class="data row22 col1" >-243.12%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row23" class="row_heading level0 row23" >TM</th>
                        <td id="T_ccb2a_row23_col0" class="data row23 col0" >3.14%</td>
                        <td id="T_ccb2a_row23_col1" class="data row23 col1" >3.14%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row24" class="row_heading level0 row24" >WMT</th>
                        <td id="T_ccb2a_row24_col0" class="data row24 col0" >3.63%</td>
                        <td id="T_ccb2a_row24_col1" class="data row24 col1" >3.63%</td>
            </tr>
            <tr>
                        <th id="T_ccb2a_level0_row25" class="row_heading level0 row25" >XOM</th>
                        <td id="T_ccb2a_row25_col0" class="data row25 col0" >21.14%</td>
                        <td id="T_ccb2a_row25_col1" class="data row25 col1" >21.14%</td>
            </tr>
    </tbody></table>



### Confirmation
- They are the same weights!
- So we drop the redundant `OLS` column.

### Statistical Significance (in-sample) of these weights
Get them from the usual OLS t-stats!


```python
tstats = pd.DataFrame(sm.OLS(y, X).fit().tvalues,columns=['t-stat'])
display(tstats.loc[tstats['t-stat'].abs()>2].sort_values('t-stat',ascending=False).style.format('{:.2f}'.format))
```


<style  type="text/css" >
</style><table id="T_ebd90_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >t-stat</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_ebd90_level0_row0" class="row_heading level0 row0" >MSFT</th>
                        <td id="T_ebd90_row0_col0" class="data row0 col0" >2.56</td>
            </tr>
            <tr>
                        <th id="T_ebd90_level0_row1" class="row_heading level0 row1" >BAM</th>
                        <td id="T_ebd90_row1_col0" class="data row1 col0" >2.53</td>
            </tr>
            <tr>
                        <th id="T_ebd90_level0_row2" class="row_heading level0 row2" >DHR</th>
                        <td id="T_ebd90_row2_col0" class="data row2 col0" >2.51</td>
            </tr>
            <tr>
                        <th id="T_ebd90_level0_row3" class="row_heading level0 row3" >JNJ</th>
                        <td id="T_ebd90_row3_col0" class="data row3 col0" >2.36</td>
            </tr>
            <tr>
                        <th id="T_ebd90_level0_row4" class="row_heading level0 row4" >AAPL</th>
                        <td id="T_ebd90_row4_col0" class="data row4 col0" >2.23</td>
            </tr>
            <tr>
                        <th id="T_ebd90_level0_row5" class="row_heading level0 row5" >SPY</th>
                        <td id="T_ebd90_row5_col0" class="data row5 col0" >-3.29</td>
            </tr>
    </tbody></table>


# No Short Positions

Implement via Non-Negative Least Squares (NNLS)
- Do this instead of using Constrained Optimization with $k$ boundary constraints.
- NNLS is doing the Linear Programming with inequalities the same as we would do with Constrained Optimization, but it saves us some work in implementation.


```python
# for NLLS, scaling of y does not matter

y = np.ones((Ntime,1))
X = retsx

beta = LinearRegression(fit_intercept=False, positive=True).fit(X,y).coef_.transpose()
beta /= beta.sum()
beta

wts['NNLS'] = beta
wts.loc[wts['NNLS']>0, ['NNLS']].sort_values('NNLS',ascending=False).style.format('{:.2%}'.format)
```




<style  type="text/css" >
</style><table id="T_484d3_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >NNLS</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_484d3_level0_row0" class="row_heading level0 row0" >DHR</th>
                        <td id="T_484d3_row0_col0" class="data row0 col0" >22.23%</td>
            </tr>
            <tr>
                        <th id="T_484d3_level0_row1" class="row_heading level0 row1" >JNJ</th>
                        <td id="T_484d3_row1_col0" class="data row1 col0" >20.74%</td>
            </tr>
            <tr>
                        <th id="T_484d3_level0_row2" class="row_heading level0 row2" >BAM</th>
                        <td id="T_484d3_row2_col0" class="data row2 col0" >18.20%</td>
            </tr>
            <tr>
                        <th id="T_484d3_level0_row3" class="row_heading level0 row3" >LOW</th>
                        <td id="T_484d3_row3_col0" class="data row3 col0" >12.08%</td>
            </tr>
            <tr>
                        <th id="T_484d3_level0_row4" class="row_heading level0 row4" >MSFT</th>
                        <td id="T_484d3_row4_col0" class="data row4 col0" >9.02%</td>
            </tr>
            <tr>
                        <th id="T_484d3_level0_row5" class="row_heading level0 row5" >AAPL</th>
                        <td id="T_484d3_row5_col0" class="data row5 col0" >8.58%</td>
            </tr>
            <tr>
                        <th id="T_484d3_level0_row6" class="row_heading level0 row6" >MCD</th>
                        <td id="T_484d3_row6_col0" class="data row6 col0" >8.26%</td>
            </tr>
            <tr>
                        <th id="T_484d3_level0_row7" class="row_heading level0 row7" >DHI</th>
                        <td id="T_484d3_row7_col0" class="data row7 col0" >0.49%</td>
            </tr>
            <tr>
                        <th id="T_484d3_level0_row8" class="row_heading level0 row8" >WMT</th>
                        <td id="T_484d3_row8_col0" class="data row8 col0" >0.41%</td>
            </tr>
    </tbody></table>



# Regularized Regressions are Useful

The OLS interpretation of MV makes clear that due to multicolinearity, the optimal in-sample weights can be extreme.

Instead, we may want to use regularized regression to deal with the following constraints.

**Constraints**
1. restrict gross leverage, $\sum_{i}^n |w^i| \le L$
2. limit the total number of positions, $\sum_{i}^n\mathbb{1}_{\ne0}\left(w^i\right) \le K$

- where $\mathbb{1}_{\ne0}\left(w^i\right)$ denotes the indicator function, equal to 1 if $w^i\ne 0$ and equal to 0 if $w^i=0$.

This can be done somewhat clumsily with the traditional constrained optimization.

But other challenges are hard to address with traditional techniques

**Challenges**
1. Limit positions from being too large, without specifying security-specific boundaries.
1. Put more emphasis on out-of-sample performance
1. Implement a Bayesian approach to Mean-Variance optimization

## Ridge Estimation

- Ridge estimation may help with the challenges above.
- Except it will NOT limit the total number of positions.

The Ridge estimator is the optimized solution for a regularized regression with an L2 penalty.

Recall that the Ridge estimator is 
$$\hat{\boldsymbol{\beta}}^{\text{ridge}} = \left(\boldsymbol{X}'\boldsymbol{X} + \lambda\mathcal{I}_n\right)^{-1}\boldsymbol{X}'\boldsymbol{y}$$
where
- $\mathcal{I}_n$ is the $n\times n$ identity matrix.
- $\lambda$ is a hyperparameter ("tuning" parameter) related to the L2 penalty.

Note that this is the exact same as OLS, except we have a modified second-moment matrix. In our application of regressing 1 on returns without an intercept, the point is that instead of the OLS calculation,
$$\boldsymbol{\hat{\Sigma}}_0^{-1}\boldsymbol{\hat{\mu}}$$
we use 
$$\left(\boldsymbol{\hat{\Sigma}}_0 + \lambda\mathcal{I}_n\right)^{-1}\boldsymbol{\hat{\mu}}$$
- For $\lambda=0$, we simply have OLS.
- For large $\lambda$, we are diagonalizing the second-moment matrix. (Since we do not regress on an intercept, this is the uncentered second-moment matrix, not quite the covariance matrix.)

### Conclusion
- The Ridge estimator is diagonalizing the second-moment matrix, which makes it more stable for inversion.
- This reduces its sensitivity to small changes in the data, and allows it to perform more consistently out-of-sample, though less optimally in-sample.
- Conceptually, this means that it constructs less extreme long-short weights given that it diminishes the magnitudes of the correlations relative to the main diagonal.
- Statistically, the extra term on the second-moment matrix is reducing the impact the multicolinearity of the asset returns have on the estimate.

## LASSO Estimation

- LASSO estimation helps with the challenges above.
- Additionally, LASSO can reduce the number of positions, (dimension reduction.)

Unlike Ridge, there is no closed-form solution for the LASSO estimator.

## Bayesian Interpretation

**Ridge**
- The Ridge estimator is a Bayesian posterior assuming a Normally distributed prior on the betas, updated via normally distributed sample data.

**LASSO**
- The LASSO estimator is a Bayesian posterior assuming a Laplace-distributed prior on the betas, updated via normally distributed sample data.

This does not mean Ridge requires us to believe the data is normally distributed. That is an assumption to interpret it as thte Bayesian solution.

Figure 6.2 from *Introduction to Statistical Learning* (James, Witten, Hastie, and Tibshirani) gives a useful visualization of these priors, and why they lead to Ridge having muted, but non-zero betas, whereas LASSO has (potentially many) betas equal to zero and others that are not muted as much as in Ridge.
<img src="../refs/regularized_bayesian_priors.png" width="400"/>

*If figure does not display, make sure you have the `refs` directory in the repo, at the expected relative path.*



```python
def penalized_reg_limit_gross(func, X, y, limit=2, penalty=1e-6, fit_intercept=True):
    wts = np.ones(X.shape[1]) * 100
    
    while np.abs(wts).sum()>limit:
        penalty *= 1.25
        model = func(alpha=penalty, fit_intercept=fit_intercept).fit(X,y)
        wts = model.coef_ / model.coef_.sum()
    
    return wts, penalty
```


```python
GROSS_LIMIT = 2
if wts['MV'].abs().sum()<2:
    GROSS_LIMIT = 1.25

# scaling of y will impact the solution if penalty held constant
# here, we adjust the penalty to ensure the scaling, so initial scaling of y is less important

betas, penalty_ridge = penalized_reg_limit_gross(Ridge, rets, y, limit=GROSS_LIMIT, fit_intercept=False)
wts['Ridge'] = betas.transpose()
betas, penalty_lasso = penalized_reg_limit_gross(Lasso, rets, y, limit=GROSS_LIMIT, fit_intercept=False)
wts['Lasso'] = betas.transpose()

print(f'Penalty for Ridge: {penalty_ridge : .2e}.\nPenalty for LASSO: {penalty_lasso : .2e}.')
```

    Penalty for Ridge:  6.53e-01.
    Penalty for LASSO:  1.58e-03.


## Diagonalization and Shrinkage

### Diagonalization
- Diagonalize the covariance matrix (set all off-diagonal terms to 0).
- This was popular long before Ridge and continues to be.

### Shrinkage Estimators
- "Shrink" the covariance matrix going into MV estimation by mixing a diagonalized version of the matrix with the full matrix, according to some mixing parameter.
- The mixing parameter may change over time, depending on the data.
- This is equivalent to Ridge for certain specification of the mixing parameter.

So Ridge is another lense for a popular approach to MV optimization.


```python
covDiag = np.diag(np.diag(retsx.cov()))
temp = np.linalg.solve(covDiag,retsx.mean())
wts['Diagonal'] = temp / temp.sum()
```

# Performance


```python
if 'Equal' not in wts.columns:
    wts.insert(0,'Equal',np.ones_like(Nassets)/Nassets)
if 'OLS' in wts.columns:
    wts.drop(columns=['OLS'],inplace=True)

retsx_ports = retsx @ wts
```


```python
display(performanceMetrics(retsx_ports, annualization=12).style.format('{:.2%}'.format))
display(tailMetrics(retsx_ports))
display(get_ols_metrics(spyx, retsx_ports,annualization=12).style.format('{:.2%}'.format))
```


<style  type="text/css" >
</style><table id="T_5764a_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Mean</th>        <th class="col_heading level0 col1" >Vol</th>        <th class="col_heading level0 col2" >Sharpe</th>        <th class="col_heading level0 col3" >Min</th>        <th class="col_heading level0 col4" >Max</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_5764a_level0_row0" class="row_heading level0 row0" >Equal</th>
                        <td id="T_5764a_row0_col0" class="data row0 col0" >14.92%</td>
                        <td id="T_5764a_row0_col1" class="data row0 col1" >16.47%</td>
                        <td id="T_5764a_row0_col2" class="data row0 col2" >90.60%</td>
                        <td id="T_5764a_row0_col3" class="data row0 col3" >-17.65%</td>
                        <td id="T_5764a_row0_col4" class="data row0 col4" >18.78%</td>
            </tr>
            <tr>
                        <th id="T_5764a_level0_row1" class="row_heading level0 row1" >MV</th>
                        <td id="T_5764a_row1_col0" class="data row1 col0" >38.44%</td>
                        <td id="T_5764a_row1_col1" class="data row1 col1" >25.16%</td>
                        <td id="T_5764a_row1_col2" class="data row1 col2" >152.80%</td>
                        <td id="T_5764a_row1_col3" class="data row1 col3" >-18.13%</td>
                        <td id="T_5764a_row1_col4" class="data row1 col4" >30.01%</td>
            </tr>
            <tr>
                        <th id="T_5764a_level0_row2" class="row_heading level0 row2" >NNLS</th>
                        <td id="T_5764a_row2_col0" class="data row2 col0" >19.66%</td>
                        <td id="T_5764a_row2_col1" class="data row2 col1" >15.74%</td>
                        <td id="T_5764a_row2_col2" class="data row2 col2" >124.88%</td>
                        <td id="T_5764a_row2_col3" class="data row2 col3" >-15.52%</td>
                        <td id="T_5764a_row2_col4" class="data row2 col4" >16.20%</td>
            </tr>
            <tr>
                        <th id="T_5764a_level0_row3" class="row_heading level0 row3" >Ridge</th>
                        <td id="T_5764a_row3_col0" class="data row3 col0" >21.87%</td>
                        <td id="T_5764a_row3_col1" class="data row3 col1" >16.12%</td>
                        <td id="T_5764a_row3_col2" class="data row3 col2" >135.67%</td>
                        <td id="T_5764a_row3_col3" class="data row3 col3" >-12.31%</td>
                        <td id="T_5764a_row3_col4" class="data row3 col4" >19.37%</td>
            </tr>
            <tr>
                        <th id="T_5764a_level0_row4" class="row_heading level0 row4" >Lasso</th>
                        <td id="T_5764a_row4_col0" class="data row4 col0" >22.80%</td>
                        <td id="T_5764a_row4_col1" class="data row4 col1" >16.98%</td>
                        <td id="T_5764a_row4_col2" class="data row4 col2" >134.25%</td>
                        <td id="T_5764a_row4_col3" class="data row4 col3" >-14.40%</td>
                        <td id="T_5764a_row4_col4" class="data row4 col4" >20.31%</td>
            </tr>
            <tr>
                        <th id="T_5764a_level0_row5" class="row_heading level0 row5" >Diagonal</th>
                        <td id="T_5764a_row5_col0" class="data row5 col0" >15.10%</td>
                        <td id="T_5764a_row5_col1" class="data row5 col1" >15.19%</td>
                        <td id="T_5764a_row5_col2" class="data row5 col2" >99.41%</td>
                        <td id="T_5764a_row5_col3" class="data row5 col3" >-15.56%</td>
                        <td id="T_5764a_row5_col4" class="data row5 col4" >13.24%</td>
            </tr>
    </tbody></table>



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
      <th>Equal</th>
      <td>-0.412513</td>
      <td>1.933305</td>
      <td>-0.062676</td>
      <td>-0.104118</td>
      <td>-0.493740</td>
      <td>2007-05-31</td>
      <td>2009-02-28</td>
      <td>2010-04-30</td>
      <td>1065 days</td>
    </tr>
    <tr>
      <th>MV</th>
      <td>0.173538</td>
      <td>0.827524</td>
      <td>-0.088436</td>
      <td>-0.120609</td>
      <td>-0.363782</td>
      <td>1999-08-31</td>
      <td>2000-02-29</td>
      <td>2001-01-31</td>
      <td>519 days</td>
    </tr>
    <tr>
      <th>NNLS</th>
      <td>-0.375461</td>
      <td>0.819903</td>
      <td>-0.058879</td>
      <td>-0.089070</td>
      <td>-0.413669</td>
      <td>2007-10-31</td>
      <td>2009-02-28</td>
      <td>2010-04-30</td>
      <td>912 days</td>
    </tr>
    <tr>
      <th>Ridge</th>
      <td>-0.183216</td>
      <td>0.846030</td>
      <td>-0.064353</td>
      <td>-0.086228</td>
      <td>-0.279675</td>
      <td>2008-08-31</td>
      <td>2009-02-28</td>
      <td>2010-03-31</td>
      <td>577 days</td>
    </tr>
    <tr>
      <th>Lasso</th>
      <td>-0.206129</td>
      <td>0.774461</td>
      <td>-0.064380</td>
      <td>-0.091562</td>
      <td>-0.345748</td>
      <td>2007-10-31</td>
      <td>2009-02-28</td>
      <td>2010-03-31</td>
      <td>882 days</td>
    </tr>
    <tr>
      <th>Diagonal</th>
      <td>-0.498642</td>
      <td>1.445007</td>
      <td>-0.061043</td>
      <td>-0.095133</td>
      <td>-0.441059</td>
      <td>2007-10-31</td>
      <td>2009-02-28</td>
      <td>2010-04-30</td>
      <td>912 days</td>
    </tr>
  </tbody>
</table>
</div>



<style  type="text/css" >
</style><table id="T_5ec3f_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >alpha</th>        <th class="col_heading level0 col1" >SPY</th>        <th class="col_heading level0 col2" >r-squared</th>        <th class="col_heading level0 col3" >Treynor Ratio</th>        <th class="col_heading level0 col4" >Info Ratio</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_5ec3f_level0_row0" class="row_heading level0 row0" >Equal</th>
                        <td id="T_5ec3f_row0_col0" class="data row0 col0" >4.28%</td>
                        <td id="T_5ec3f_row0_col1" class="data row0 col1" >104.83%</td>
                        <td id="T_5ec3f_row0_col2" class="data row0 col2" >86.14%</td>
                        <td id="T_5ec3f_row0_col3" class="data row0 col3" >14.23%</td>
                        <td id="T_5ec3f_row0_col4" class="data row0 col4" >69.78%</td>
            </tr>
            <tr>
                        <th id="T_5ec3f_level0_row1" class="row_heading level0 row1" >MV</th>
                        <td id="T_5ec3f_row1_col0" class="data row1 col0" >30.46%</td>
                        <td id="T_5ec3f_row1_col1" class="data row1 col1" >78.65%</td>
                        <td id="T_5ec3f_row1_col2" class="data row1 col2" >20.77%</td>
                        <td id="T_5ec3f_row1_col3" class="data row1 col3" >48.88%</td>
                        <td id="T_5ec3f_row1_col4" class="data row1 col4" >136.01%</td>
            </tr>
            <tr>
                        <th id="T_5ec3f_level0_row2" class="row_heading level0 row2" >NNLS</th>
                        <td id="T_5ec3f_row2_col0" class="data row2 col0" >10.30%</td>
                        <td id="T_5ec3f_row2_col1" class="data row2 col1" >92.18%</td>
                        <td id="T_5ec3f_row2_col2" class="data row2 col2" >72.84%</td>
                        <td id="T_5ec3f_row2_col3" class="data row2 col3" >21.33%</td>
                        <td id="T_5ec3f_row2_col4" class="data row2 col4" >125.58%</td>
            </tr>
            <tr>
                        <th id="T_5ec3f_level0_row3" class="row_heading level0 row3" >Ridge</th>
                        <td id="T_5ec3f_row3_col0" class="data row3 col0" >13.32%</td>
                        <td id="T_5ec3f_row3_col1" class="data row3 col1" >84.28%</td>
                        <td id="T_5ec3f_row3_col2" class="data row3 col2" >58.07%</td>
                        <td id="T_5ec3f_row3_col3" class="data row3 col3" >25.95%</td>
                        <td id="T_5ec3f_row3_col4" class="data row3 col4" >127.57%</td>
            </tr>
            <tr>
                        <th id="T_5ec3f_level0_row4" class="row_heading level0 row4" >Lasso</th>
                        <td id="T_5ec3f_row4_col0" class="data row4 col0" >13.82%</td>
                        <td id="T_5ec3f_row4_col1" class="data row4 col1" >88.47%</td>
                        <td id="T_5ec3f_row4_col2" class="data row4 col2" >57.65%</td>
                        <td id="T_5ec3f_row4_col3" class="data row4 col3" >25.77%</td>
                        <td id="T_5ec3f_row4_col4" class="data row4 col4" >125.06%</td>
            </tr>
            <tr>
                        <th id="T_5ec3f_level0_row5" class="row_heading level0 row5" >Diagonal</th>
                        <td id="T_5ec3f_row5_col0" class="data row5 col0" >5.17%</td>
                        <td id="T_5ec3f_row5_col1" class="data row5 col1" >97.85%</td>
                        <td id="T_5ec3f_row5_col2" class="data row5 col2" >88.17%</td>
                        <td id="T_5ec3f_row5_col3" class="data row5 col3" >15.43%</td>
                        <td id="T_5ec3f_row5_col4" class="data row5 col4" >98.92%</td>
            </tr>
    </tbody></table>



```python
(1+retsx_ports).cumprod().plot();
```


    
![png](output_32_0.png)
    



```python
retsx_ports.corr().style.format('{:.2%}'.format)
```




<style  type="text/css" >
</style><table id="T_9654f_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Equal</th>        <th class="col_heading level0 col1" >MV</th>        <th class="col_heading level0 col2" >NNLS</th>        <th class="col_heading level0 col3" >Ridge</th>        <th class="col_heading level0 col4" >Lasso</th>        <th class="col_heading level0 col5" >Diagonal</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_9654f_level0_row0" class="row_heading level0 row0" >Equal</th>
                        <td id="T_9654f_row0_col0" class="data row0 col0" >100.00%</td>
                        <td id="T_9654f_row0_col1" class="data row0 col1" >59.29%</td>
                        <td id="T_9654f_row0_col2" class="data row0 col2" >87.16%</td>
                        <td id="T_9654f_row0_col3" class="data row0 col3" >78.46%</td>
                        <td id="T_9654f_row0_col4" class="data row0 col4" >78.00%</td>
                        <td id="T_9654f_row0_col5" class="data row0 col5" >99.04%</td>
            </tr>
            <tr>
                        <th id="T_9654f_level0_row1" class="row_heading level0 row1" >MV</th>
                        <td id="T_9654f_row1_col0" class="data row1 col0" >59.29%</td>
                        <td id="T_9654f_row1_col1" class="data row1 col1" >100.00%</td>
                        <td id="T_9654f_row1_col2" class="data row1 col2" >81.72%</td>
                        <td id="T_9654f_row1_col3" class="data row1 col3" >88.79%</td>
                        <td id="T_9654f_row1_col4" class="data row1 col4" >87.86%</td>
                        <td id="T_9654f_row1_col5" class="data row1 col5" >65.06%</td>
            </tr>
            <tr>
                        <th id="T_9654f_level0_row2" class="row_heading level0 row2" >NNLS</th>
                        <td id="T_9654f_row2_col0" class="data row2 col0" >87.16%</td>
                        <td id="T_9654f_row2_col1" class="data row2 col1" >81.72%</td>
                        <td id="T_9654f_row2_col2" class="data row2 col2" >100.00%</td>
                        <td id="T_9654f_row2_col3" class="data row2 col3" >95.77%</td>
                        <td id="T_9654f_row2_col4" class="data row2 col4" >97.72%</td>
                        <td id="T_9654f_row2_col5" class="data row2 col5" >91.41%</td>
            </tr>
            <tr>
                        <th id="T_9654f_level0_row3" class="row_heading level0 row3" >Ridge</th>
                        <td id="T_9654f_row3_col0" class="data row3 col0" >78.46%</td>
                        <td id="T_9654f_row3_col1" class="data row3 col1" >88.79%</td>
                        <td id="T_9654f_row3_col2" class="data row3 col2" >95.77%</td>
                        <td id="T_9654f_row3_col3" class="data row3 col3" >100.00%</td>
                        <td id="T_9654f_row3_col4" class="data row3 col4" >98.14%</td>
                        <td id="T_9654f_row3_col5" class="data row3 col5" >84.41%</td>
            </tr>
            <tr>
                        <th id="T_9654f_level0_row4" class="row_heading level0 row4" >Lasso</th>
                        <td id="T_9654f_row4_col0" class="data row4 col0" >78.00%</td>
                        <td id="T_9654f_row4_col1" class="data row4 col1" >87.86%</td>
                        <td id="T_9654f_row4_col2" class="data row4 col2" >97.72%</td>
                        <td id="T_9654f_row4_col3" class="data row4 col3" >98.14%</td>
                        <td id="T_9654f_row4_col4" class="data row4 col4" >100.00%</td>
                        <td id="T_9654f_row4_col5" class="data row4 col5" >83.74%</td>
            </tr>
            <tr>
                        <th id="T_9654f_level0_row5" class="row_heading level0 row5" >Diagonal</th>
                        <td id="T_9654f_row5_col0" class="data row5 col0" >99.04%</td>
                        <td id="T_9654f_row5_col1" class="data row5 col1" >65.06%</td>
                        <td id="T_9654f_row5_col2" class="data row5 col2" >91.41%</td>
                        <td id="T_9654f_row5_col3" class="data row5 col3" >84.41%</td>
                        <td id="T_9654f_row5_col4" class="data row5 col4" >83.74%</td>
                        <td id="T_9654f_row5_col5" class="data row5 col5" >100.00%</td>
            </tr>
    </tbody></table>




```python
wts.abs().sum().plot.bar(title='Gross Leverage');
```


    
![png](output_34_0.png)
    



```python
wts.style.format('{:.2%}'.format).background_gradient(cmap='Blues')
```




<style  type="text/css" >
#T_6e38b_row0_col0,#T_6e38b_row1_col0,#T_6e38b_row1_col2,#T_6e38b_row2_col0,#T_6e38b_row2_col2,#T_6e38b_row3_col0,#T_6e38b_row4_col0,#T_6e38b_row4_col2,#T_6e38b_row5_col0,#T_6e38b_row5_col2,#T_6e38b_row6_col0,#T_6e38b_row7_col0,#T_6e38b_row8_col0,#T_6e38b_row8_col2,#T_6e38b_row9_col0,#T_6e38b_row9_col2,#T_6e38b_row9_col5,#T_6e38b_row10_col0,#T_6e38b_row10_col2,#T_6e38b_row11_col0,#T_6e38b_row11_col2,#T_6e38b_row12_col0,#T_6e38b_row12_col2,#T_6e38b_row13_col0,#T_6e38b_row13_col2,#T_6e38b_row14_col0,#T_6e38b_row15_col0,#T_6e38b_row15_col2,#T_6e38b_row16_col0,#T_6e38b_row17_col0,#T_6e38b_row18_col0,#T_6e38b_row18_col2,#T_6e38b_row19_col0,#T_6e38b_row20_col0,#T_6e38b_row20_col2,#T_6e38b_row21_col0,#T_6e38b_row21_col2,#T_6e38b_row22_col0,#T_6e38b_row22_col1,#T_6e38b_row22_col2,#T_6e38b_row22_col3,#T_6e38b_row22_col4,#T_6e38b_row23_col0,#T_6e38b_row23_col2,#T_6e38b_row24_col0,#T_6e38b_row25_col0,#T_6e38b_row25_col2{
            background-color:  #f7fbff;
            color:  #000000;
        }#T_6e38b_row0_col1{
            background-color:  #084f99;
            color:  #f1f1f1;
        }#T_6e38b_row0_col2{
            background-color:  #9ac8e0;
            color:  #000000;
        }#T_6e38b_row0_col3{
            background-color:  #3989c1;
            color:  #000000;
        }#T_6e38b_row0_col4{
            background-color:  #4b98ca;
            color:  #000000;
        }#T_6e38b_row0_col5,#T_6e38b_row9_col3{
            background-color:  #cddff1;
            color:  #000000;
        }#T_6e38b_row1_col1{
            background-color:  #0d57a1;
            color:  #f1f1f1;
        }#T_6e38b_row1_col3{
            background-color:  #66abd4;
            color:  #000000;
        }#T_6e38b_row1_col4,#T_6e38b_row4_col4,#T_6e38b_row5_col4,#T_6e38b_row8_col4,#T_6e38b_row10_col4,#T_6e38b_row12_col4,#T_6e38b_row13_col4,#T_6e38b_row15_col4,#T_6e38b_row18_col4,#T_6e38b_row21_col4,#T_6e38b_row23_col4,#T_6e38b_row24_col4,#T_6e38b_row25_col4{
            background-color:  #a5cde3;
            color:  #000000;
        }#T_6e38b_row1_col5{
            background-color:  #d0e1f2;
            color:  #000000;
        }#T_6e38b_row2_col1,#T_6e38b_row9_col1,#T_6e38b_row20_col1{
            background-color:  #1966ad;
            color:  #f1f1f1;
        }#T_6e38b_row2_col3,#T_6e38b_row15_col5{
            background-color:  #c9ddf0;
            color:  #000000;
        }#T_6e38b_row2_col4{
            background-color:  #aed1e7;
            color:  #000000;
        }#T_6e38b_row2_col5,#T_6e38b_row11_col3,#T_6e38b_row11_col5{
            background-color:  #ebf3fb;
            color:  #000000;
        }#T_6e38b_row3_col1{
            background-color:  #083a7a;
            color:  #f1f1f1;
        }#T_6e38b_row3_col2,#T_6e38b_row5_col1,#T_6e38b_row18_col1,#T_6e38b_row23_col1,#T_6e38b_row24_col1{
            background-color:  #135fa7;
            color:  #f1f1f1;
        }#T_6e38b_row3_col3{
            background-color:  #083877;
            color:  #f1f1f1;
        }#T_6e38b_row3_col4{
            background-color:  #083471;
            color:  #f1f1f1;
        }#T_6e38b_row3_col5{
            background-color:  #3f8fc5;
            color:  #000000;
        }#T_6e38b_row4_col1{
            background-color:  #0f5aa3;
            color:  #f1f1f1;
        }#T_6e38b_row4_col3{
            background-color:  #71b1d7;
            color:  #000000;
        }#T_6e38b_row4_col5{
            background-color:  #b9d6ea;
            color:  #000000;
        }#T_6e38b_row5_col3,#T_6e38b_row23_col3{
            background-color:  #8fc2de;
            color:  #000000;
        }#T_6e38b_row5_col5{
            background-color:  #8abfdd;
            color:  #000000;
        }#T_6e38b_row6_col1{
            background-color:  #125da6;
            color:  #f1f1f1;
        }#T_6e38b_row6_col2{
            background-color:  #f3f8fe;
            color:  #000000;
        }#T_6e38b_row6_col3,#T_6e38b_row18_col5{
            background-color:  #7ab6d9;
            color:  #000000;
        }#T_6e38b_row6_col4{
            background-color:  #95c5df;
            color:  #000000;
        }#T_6e38b_row6_col5{
            background-color:  #d4e4f4;
            color:  #000000;
        }#T_6e38b_row7_col1{
            background-color:  #083776;
            color:  #f1f1f1;
        }#T_6e38b_row7_col2,#T_6e38b_row7_col3,#T_6e38b_row7_col4,#T_6e38b_row14_col1,#T_6e38b_row22_col5{
            background-color:  #08306b;
            color:  #f1f1f1;
        }#T_6e38b_row7_col5,#T_6e38b_row10_col1{
            background-color:  #1764ab;
            color:  #f1f1f1;
        }#T_6e38b_row8_col1{
            background-color:  #1561a9;
            color:  #f1f1f1;
        }#T_6e38b_row8_col3{
            background-color:  #c7dcef;
            color:  #000000;
        }#T_6e38b_row8_col5{
            background-color:  #c7dbef;
            color:  #000000;
        }#T_6e38b_row9_col4,#T_6e38b_row10_col3{
            background-color:  #bcd7eb;
            color:  #000000;
        }#T_6e38b_row10_col5{
            background-color:  #ccdff1;
            color:  #000000;
        }#T_6e38b_row11_col1{
            background-color:  #1b69af;
            color:  #f1f1f1;
        }#T_6e38b_row11_col4{
            background-color:  #dfecf7;
            color:  #000000;
        }#T_6e38b_row12_col1{
            background-color:  #09529d;
            color:  #f1f1f1;
        }#T_6e38b_row12_col3{
            background-color:  #7db8da;
            color:  #000000;
        }#T_6e38b_row12_col5{
            background-color:  #7fb9da;
            color:  #000000;
        }#T_6e38b_row13_col1{
            background-color:  #125ea6;
            color:  #f1f1f1;
        }#T_6e38b_row13_col3{
            background-color:  #c3daee;
            color:  #000000;
        }#T_6e38b_row13_col5{
            background-color:  #bad6eb;
            color:  #000000;
        }#T_6e38b_row14_col2{
            background-color:  #084285;
            color:  #f1f1f1;
        }#T_6e38b_row14_col3,#T_6e38b_row15_col1{
            background-color:  #084d96;
            color:  #f1f1f1;
        }#T_6e38b_row14_col4{
            background-color:  #083e81;
            color:  #f1f1f1;
        }#T_6e38b_row14_col5,#T_6e38b_row16_col4{
            background-color:  #2272b6;
            color:  #f1f1f1;
        }#T_6e38b_row15_col3{
            background-color:  #74b3d8;
            color:  #000000;
        }#T_6e38b_row16_col1{
            background-color:  #084b93;
            color:  #f1f1f1;
        }#T_6e38b_row16_col2{
            background-color:  #5ca4d0;
            color:  #000000;
        }#T_6e38b_row16_col3{
            background-color:  #1f6eb3;
            color:  #f1f1f1;
        }#T_6e38b_row16_col5{
            background-color:  #91c3de;
            color:  #000000;
        }#T_6e38b_row17_col1{
            background-color:  #08519c;
            color:  #f1f1f1;
        }#T_6e38b_row17_col2,#T_6e38b_row24_col5{
            background-color:  #9fcae1;
            color:  #000000;
        }#T_6e38b_row17_col3{
            background-color:  #3484bf;
            color:  #000000;
        }#T_6e38b_row17_col4{
            background-color:  #529dcc;
            color:  #000000;
        }#T_6e38b_row17_col5{
            background-color:  #3a8ac2;
            color:  #000000;
        }#T_6e38b_row18_col3{
            background-color:  #81badb;
            color:  #000000;
        }#T_6e38b_row19_col1{
            background-color:  #084082;
            color:  #f1f1f1;
        }#T_6e38b_row19_col2,#T_6e38b_row25_col5{
            background-color:  #92c4de;
            color:  #000000;
        }#T_6e38b_row19_col3{
            background-color:  #1e6db2;
            color:  #f1f1f1;
        }#T_6e38b_row19_col4{
            background-color:  #2f7fbc;
            color:  #000000;
        }#T_6e38b_row19_col5{
            background-color:  #8cc0dd;
            color:  #000000;
        }#T_6e38b_row20_col3{
            background-color:  #caddf0;
            color:  #000000;
        }#T_6e38b_row20_col4{
            background-color:  #a6cee4;
            color:  #000000;
        }#T_6e38b_row20_col5{
            background-color:  #d8e7f5;
            color:  #000000;
        }#T_6e38b_row21_col1{
            background-color:  #1460a8;
            color:  #f1f1f1;
        }#T_6e38b_row21_col3{
            background-color:  #b7d4ea;
            color:  #000000;
        }#T_6e38b_row21_col5{
            background-color:  #eef5fc;
            color:  #000000;
        }#T_6e38b_row23_col5{
            background-color:  #bfd8ed;
            color:  #000000;
        }#T_6e38b_row24_col2{
            background-color:  #f4f9fe;
            color:  #000000;
        }#T_6e38b_row24_col3{
            background-color:  #6caed6;
            color:  #000000;
        }#T_6e38b_row25_col1{
            background-color:  #08509b;
            color:  #f1f1f1;
        }#T_6e38b_row25_col3{
            background-color:  #75b4d8;
            color:  #000000;
        }</style><table id="T_6e38b_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Equal</th>        <th class="col_heading level0 col1" >MV</th>        <th class="col_heading level0 col2" >NNLS</th>        <th class="col_heading level0 col3" >Ridge</th>        <th class="col_heading level0 col4" >Lasso</th>        <th class="col_heading level0 col5" >Diagonal</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_6e38b_level0_row0" class="row_heading level0 row0" >AAPL</th>
                        <td id="T_6e38b_row0_col0" class="data row0 col0" >3.85%</td>
                        <td id="T_6e38b_row0_col1" class="data row0 col1" >21.47%</td>
                        <td id="T_6e38b_row0_col2" class="data row0 col2" >8.58%</td>
                        <td id="T_6e38b_row0_col3" class="data row0 col3" >10.25%</td>
                        <td id="T_6e38b_row0_col4" class="data row0 col4" >10.02%</td>
                        <td id="T_6e38b_row0_col5" class="data row0 col5" >2.83%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row1" class="row_heading level0 row1" >BA</th>
                        <td id="T_6e38b_row1_col0" class="data row1 col0" >3.85%</td>
                        <td id="T_6e38b_row1_col1" class="data row1 col1" >12.21%</td>
                        <td id="T_6e38b_row1_col2" class="data row1 col2" >0.00%</td>
                        <td id="T_6e38b_row1_col3" class="data row1 col3" >5.31%</td>
                        <td id="T_6e38b_row1_col4" class="data row1 col4" >0.00%</td>
                        <td id="T_6e38b_row1_col5" class="data row1 col5" >2.73%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row2" class="row_heading level0 row2" >BAC</th>
                        <td id="T_6e38b_row2_col0" class="data row2 col0" >3.85%</td>
                        <td id="T_6e38b_row2_col1" class="data row2 col1" >-5.30%</td>
                        <td id="T_6e38b_row2_col2" class="data row2 col2" >0.00%</td>
                        <td id="T_6e38b_row2_col3" class="data row2 col3" >-4.02%</td>
                        <td id="T_6e38b_row2_col4" class="data row2 col4" >-1.06%</td>
                        <td id="T_6e38b_row2_col5" class="data row2 col5" >1.70%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row3" class="row_heading level0 row3" >BAM</th>
                        <td id="T_6e38b_row3_col0" class="data row3 col0" >3.85%</td>
                        <td id="T_6e38b_row3_col1" class="data row3 col1" >45.04%</td>
                        <td id="T_6e38b_row3_col2" class="data row3 col2" >18.20%</td>
                        <td id="T_6e38b_row3_col3" class="data row3 col3" >20.59%</td>
                        <td id="T_6e38b_row3_col4" class="data row3 col4" >25.87%</td>
                        <td id="T_6e38b_row3_col5" class="data row3 col5" >5.87%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row4" class="row_heading level0 row4" >CAT</th>
                        <td id="T_6e38b_row4_col0" class="data row4 col0" >3.85%</td>
                        <td id="T_6e38b_row4_col1" class="data row4 col1" >9.00%</td>
                        <td id="T_6e38b_row4_col2" class="data row4 col2" >0.00%</td>
                        <td id="T_6e38b_row4_col3" class="data row4 col3" >4.47%</td>
                        <td id="T_6e38b_row4_col4" class="data row4 col4" >0.00%</td>
                        <td id="T_6e38b_row4_col5" class="data row4 col5" >3.37%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row5" class="row_heading level0 row5" >CVX</th>
                        <td id="T_6e38b_row5_col0" class="data row5 col0" >3.85%</td>
                        <td id="T_6e38b_row5_col1" class="data row5 col1" >2.97%</td>
                        <td id="T_6e38b_row5_col2" class="data row5 col2" >0.00%</td>
                        <td id="T_6e38b_row5_col3" class="data row5 col3" >1.97%</td>
                        <td id="T_6e38b_row5_col4" class="data row5 col4" >0.00%</td>
                        <td id="T_6e38b_row5_col5" class="data row5 col5" >4.35%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row6" class="row_heading level0 row6" >DHI</th>
                        <td id="T_6e38b_row6_col0" class="data row6 col0" >3.85%</td>
                        <td id="T_6e38b_row6_col1" class="data row6 col1" >5.00%</td>
                        <td id="T_6e38b_row6_col2" class="data row6 col2" >0.49%</td>
                        <td id="T_6e38b_row6_col3" class="data row6 col3" >3.62%</td>
                        <td id="T_6e38b_row6_col4" class="data row6 col4" >1.87%</td>
                        <td id="T_6e38b_row6_col5" class="data row6 col5" >2.56%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row7" class="row_heading level0 row7" >DHR</th>
                        <td id="T_6e38b_row7_col0" class="data row7 col0" >3.85%</td>
                        <td id="T_6e38b_row7_col1" class="data row7 col1" >49.28%</td>
                        <td id="T_6e38b_row7_col2" class="data row7 col2" >22.23%</td>
                        <td id="T_6e38b_row7_col3" class="data row7 col3" >21.70%</td>
                        <td id="T_6e38b_row7_col4" class="data row7 col4" >26.67%</td>
                        <td id="T_6e38b_row7_col5" class="data row7 col5" >7.05%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row8" class="row_heading level0 row8" >DIS</th>
                        <td id="T_6e38b_row8_col0" class="data row8 col0" >3.85%</td>
                        <td id="T_6e38b_row8_col1" class="data row8 col1" >1.18%</td>
                        <td id="T_6e38b_row8_col2" class="data row8 col2" >0.00%</td>
                        <td id="T_6e38b_row8_col3" class="data row8 col3" >-3.71%</td>
                        <td id="T_6e38b_row8_col4" class="data row8 col4" >-0.00%</td>
                        <td id="T_6e38b_row8_col5" class="data row8 col5" >3.06%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row9" class="row_heading level0 row9" >F</th>
                        <td id="T_6e38b_row9_col0" class="data row9 col0" >3.85%</td>
                        <td id="T_6e38b_row9_col1" class="data row9 col1" >-5.11%</td>
                        <td id="T_6e38b_row9_col2" class="data row9 col2" >0.00%</td>
                        <td id="T_6e38b_row9_col3" class="data row9 col3" >-4.59%</td>
                        <td id="T_6e38b_row9_col4" class="data row9 col4" >-2.88%</td>
                        <td id="T_6e38b_row9_col5" class="data row9 col5" >1.27%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row10" class="row_heading level0 row10" >FDX</th>
                        <td id="T_6e38b_row10_col0" class="data row10 col0" >3.85%</td>
                        <td id="T_6e38b_row10_col1" class="data row10 col1" >-2.85%</td>
                        <td id="T_6e38b_row10_col2" class="data row10 col2" >0.00%</td>
                        <td id="T_6e38b_row10_col3" class="data row10 col3" >-2.37%</td>
                        <td id="T_6e38b_row10_col4" class="data row10 col4" >-0.00%</td>
                        <td id="T_6e38b_row10_col5" class="data row10 col5" >2.87%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row11" class="row_heading level0 row11" >GE</th>
                        <td id="T_6e38b_row11_col0" class="data row11 col0" >3.85%</td>
                        <td id="T_6e38b_row11_col1" class="data row11 col1" >-8.39%</td>
                        <td id="T_6e38b_row11_col2" class="data row11 col2" >0.00%</td>
                        <td id="T_6e38b_row11_col3" class="data row11 col3" >-9.83%</td>
                        <td id="T_6e38b_row11_col4" class="data row11 col4" >-9.59%</td>
                        <td id="T_6e38b_row11_col5" class="data row11 col5" >1.70%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row12" class="row_heading level0 row12" >HD</th>
                        <td id="T_6e38b_row12_col0" class="data row12 col0" >3.85%</td>
                        <td id="T_6e38b_row12_col1" class="data row12 col1" >18.33%</td>
                        <td id="T_6e38b_row12_col2" class="data row12 col2" >0.00%</td>
                        <td id="T_6e38b_row12_col3" class="data row12 col3" >3.43%</td>
                        <td id="T_6e38b_row12_col4" class="data row12 col4" >0.00%</td>
                        <td id="T_6e38b_row12_col5" class="data row12 col5" >4.54%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row13" class="row_heading level0 row13" >HON</th>
                        <td id="T_6e38b_row13_col0" class="data row13 col0" >3.85%</td>
                        <td id="T_6e38b_row13_col1" class="data row13 col1" >4.02%</td>
                        <td id="T_6e38b_row13_col2" class="data row13 col2" >0.00%</td>
                        <td id="T_6e38b_row13_col3" class="data row13 col3" >-3.16%</td>
                        <td id="T_6e38b_row13_col4" class="data row13 col4" >-0.00%</td>
                        <td id="T_6e38b_row13_col5" class="data row13 col5" >3.36%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row14" class="row_heading level0 row14" >JNJ</th>
                        <td id="T_6e38b_row14_col0" class="data row14 col0" >3.85%</td>
                        <td id="T_6e38b_row14_col1" class="data row14 col1" >57.91%</td>
                        <td id="T_6e38b_row14_col2" class="data row14 col2" >20.74%</td>
                        <td id="T_6e38b_row14_col3" class="data row14 col3" >17.94%</td>
                        <td id="T_6e38b_row14_col4" class="data row14 col4" >24.30%</td>
                        <td id="T_6e38b_row14_col5" class="data row14 col5" >6.65%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row15" class="row_heading level0 row15" >JPM</th>
                        <td id="T_6e38b_row15_col0" class="data row15 col0" >3.85%</td>
                        <td id="T_6e38b_row15_col1" class="data row15 col1" >24.64%</td>
                        <td id="T_6e38b_row15_col2" class="data row15 col2" >0.00%</td>
                        <td id="T_6e38b_row15_col3" class="data row15 col3" >4.11%</td>
                        <td id="T_6e38b_row15_col4" class="data row15 col4" >0.00%</td>
                        <td id="T_6e38b_row15_col5" class="data row15 col5" >2.97%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row16" class="row_heading level0 row16" >LOW</th>
                        <td id="T_6e38b_row16_col0" class="data row16 col0" >3.85%</td>
                        <td id="T_6e38b_row16_col1" class="data row16 col1" >26.58%</td>
                        <td id="T_6e38b_row16_col2" class="data row16 col2" >12.08%</td>
                        <td id="T_6e38b_row16_col3" class="data row16 col3" >13.65%</td>
                        <td id="T_6e38b_row16_col4" class="data row16 col4" >16.07%</td>
                        <td id="T_6e38b_row16_col5" class="data row16 col5" >4.23%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row17" class="row_heading level0 row17" >MCD</th>
                        <td id="T_6e38b_row17_col0" class="data row17 col0" >3.85%</td>
                        <td id="T_6e38b_row17_col1" class="data row17 col1" >19.17%</td>
                        <td id="T_6e38b_row17_col2" class="data row17 col2" >8.26%</td>
                        <td id="T_6e38b_row17_col3" class="data row17 col3" >10.90%</td>
                        <td id="T_6e38b_row17_col4" class="data row17 col4" >9.21%</td>
                        <td id="T_6e38b_row17_col5" class="data row17 col5" >6.00%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row18" class="row_heading level0 row18" >MMM</th>
                        <td id="T_6e38b_row18_col0" class="data row18 col0" >3.85%</td>
                        <td id="T_6e38b_row18_col1" class="data row18 col1" >3.79%</td>
                        <td id="T_6e38b_row18_col2" class="data row18 col2" >0.00%</td>
                        <td id="T_6e38b_row18_col3" class="data row18 col3" >3.14%</td>
                        <td id="T_6e38b_row18_col4" class="data row18 col4" >0.00%</td>
                        <td id="T_6e38b_row18_col5" class="data row18 col5" >4.62%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row19" class="row_heading level0 row19" >MSFT</th>
                        <td id="T_6e38b_row19_col0" class="data row19 col0" >3.85%</td>
                        <td id="T_6e38b_row19_col1" class="data row19 col1" >39.98%</td>
                        <td id="T_6e38b_row19_col2" class="data row19 col2" >9.02%</td>
                        <td id="T_6e38b_row19_col3" class="data row19 col3" >13.76%</td>
                        <td id="T_6e38b_row19_col4" class="data row19 col4" >14.18%</td>
                        <td id="T_6e38b_row19_col5" class="data row19 col5" >4.30%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row20" class="row_heading level0 row20" >NUE</th>
                        <td id="T_6e38b_row20_col0" class="data row20 col0" >3.85%</td>
                        <td id="T_6e38b_row20_col1" class="data row20 col1" >-5.24%</td>
                        <td id="T_6e38b_row20_col2" class="data row20 col2" >0.00%</td>
                        <td id="T_6e38b_row20_col3" class="data row20 col3" >-4.07%</td>
                        <td id="T_6e38b_row20_col4" class="data row20 col4" >-0.12%</td>
                        <td id="T_6e38b_row20_col5" class="data row20 col5" >2.42%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row21" class="row_heading level0 row21" >NYT</th>
                        <td id="T_6e38b_row21_col0" class="data row21 col0" >3.85%</td>
                        <td id="T_6e38b_row21_col1" class="data row21 col1" >1.54%</td>
                        <td id="T_6e38b_row21_col2" class="data row21 col2" >0.00%</td>
                        <td id="T_6e38b_row21_col3" class="data row21 col3" >-1.86%</td>
                        <td id="T_6e38b_row21_col4" class="data row21 col4" >-0.00%</td>
                        <td id="T_6e38b_row21_col5" class="data row21 col5" >1.60%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row22" class="row_heading level0 row22" >SPY</th>
                        <td id="T_6e38b_row22_col0" class="data row22 col0" >3.85%</td>
                        <td id="T_6e38b_row22_col1" class="data row22 col1" >-243.12%</td>
                        <td id="T_6e38b_row22_col2" class="data row22 col2" >0.00%</td>
                        <td id="T_6e38b_row22_col3" class="data row22 col3" >-11.93%</td>
                        <td id="T_6e38b_row22_col4" class="data row22 col4" >-14.53%</td>
                        <td id="T_6e38b_row22_col5" class="data row22 col5" >8.51%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row23" class="row_heading level0 row23" >TM</th>
                        <td id="T_6e38b_row23_col0" class="data row23 col0" >3.85%</td>
                        <td id="T_6e38b_row23_col1" class="data row23 col1" >3.14%</td>
                        <td id="T_6e38b_row23_col2" class="data row23 col2" >0.00%</td>
                        <td id="T_6e38b_row23_col3" class="data row23 col3" >1.94%</td>
                        <td id="T_6e38b_row23_col4" class="data row23 col4" >0.00%</td>
                        <td id="T_6e38b_row23_col5" class="data row23 col5" >3.22%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row24" class="row_heading level0 row24" >WMT</th>
                        <td id="T_6e38b_row24_col0" class="data row24 col0" >3.85%</td>
                        <td id="T_6e38b_row24_col1" class="data row24 col1" >3.63%</td>
                        <td id="T_6e38b_row24_col2" class="data row24 col2" >0.41%</td>
                        <td id="T_6e38b_row24_col3" class="data row24 col3" >4.77%</td>
                        <td id="T_6e38b_row24_col4" class="data row24 col4" >0.00%</td>
                        <td id="T_6e38b_row24_col5" class="data row24 col5" >3.98%</td>
            </tr>
            <tr>
                        <th id="T_6e38b_level0_row25" class="row_heading level0 row25" >XOM</th>
                        <td id="T_6e38b_row25_col0" class="data row25 col0" >3.85%</td>
                        <td id="T_6e38b_row25_col1" class="data row25 col1" >21.14%</td>
                        <td id="T_6e38b_row25_col2" class="data row25 col2" >0.00%</td>
                        <td id="T_6e38b_row25_col3" class="data row25 col3" >3.98%</td>
                        <td id="T_6e38b_row25_col4" class="data row25 col4" >0.00%</td>
                        <td id="T_6e38b_row25_col5" class="data row25 col5" >4.21%</td>
            </tr>
    </tbody></table>



***

# Performance Out-of-Sample


```python
minT = 100
methods = ['SPY','Equal','MV','NNLS', 'Ridge','Lasso']

# initialize
wts_oos = pd.concat([pd.DataFrame(index=rets.index, columns=rets.columns)]*len(methods), keys=methods, axis=1)
equal_wts = np.ones(Nassets) / Nassets

for t in wts_oos.index:    
    R = retsx.loc[:t,:]
    y = np.ones(R.shape[0])
    
    if R.shape[0] >= minT:
        wts_oos.loc[t,'Equal',] = equal_wts
        if 'SPY' in R.columns:
            wts_oos.loc[t,'SPY',] = 0
            wts_oos.loc[t,('SPY','SPY')] = 1
        
        wts_oos.loc[t,'MV',] = LinearRegression(fit_intercept=False).fit(R,y).coef_
        wts_oos.loc[t,'NNLS',] = LinearRegression(positive=True, fit_intercept=False).fit(R,y).coef_    
        wts_oos.loc[t,'Ridge',] = Ridge(alpha= penalty_ridge, fit_intercept=False).fit(R,y).coef_
        wts_oos.loc[t,'Lasso',] = Lasso(alpha= penalty_lasso, fit_intercept=False).fit(R,y).coef_

for method in methods:
    div_factor = wts_oos[method].sum(axis=1)
    div_factor[div_factor==0] = 1
    wts_oos[method] = wts_oos[method].div(div_factor, axis='rows')

wts_oos_lag = wts_oos.shift(1)
```


```python
retsx_port_oos = pd.DataFrame(index=retsx.index, columns = methods)

for method in methods:    
    retsx_port_oos[method] = (wts_oos_lag[method] * retsx).sum(axis=1)

# do not count burn-in period
retsx_port_oos.iloc[:minT,:] = None
```


```python
display(performanceMetrics(retsx_port_oos, annualization=12).style.format('{:.2%}'.format))
display(tailMetrics(retsx_port_oos))
display(get_ols_metrics(spyx, retsx_port_oos,annualization=12).style.format('{:.2%}'.format))
```


<style  type="text/css" >
</style><table id="T_8eb5e_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Mean</th>        <th class="col_heading level0 col1" >Vol</th>        <th class="col_heading level0 col2" >Sharpe</th>        <th class="col_heading level0 col3" >Min</th>        <th class="col_heading level0 col4" >Max</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_8eb5e_level0_row0" class="row_heading level0 row0" >SPY</th>
                        <td id="T_8eb5e_row0_col0" class="data row0 col0" >8.39%</td>
                        <td id="T_8eb5e_row0_col1" class="data row0 col1" >14.70%</td>
                        <td id="T_8eb5e_row0_col2" class="data row0 col2" >57.06%</td>
                        <td id="T_8eb5e_row0_col3" class="data row0 col3" >-16.60%</td>
                        <td id="T_8eb5e_row0_col4" class="data row0 col4" >12.62%</td>
            </tr>
            <tr>
                        <th id="T_8eb5e_level0_row1" class="row_heading level0 row1" >Equal</th>
                        <td id="T_8eb5e_row1_col0" class="data row1 col0" >12.82%</td>
                        <td id="T_8eb5e_row1_col1" class="data row1 col1" >17.03%</td>
                        <td id="T_8eb5e_row1_col2" class="data row1 col2" >75.28%</td>
                        <td id="T_8eb5e_row1_col3" class="data row1 col3" >-17.65%</td>
                        <td id="T_8eb5e_row1_col4" class="data row1 col4" >18.78%</td>
            </tr>
            <tr>
                        <th id="T_8eb5e_level0_row2" class="row_heading level0 row2" >MV</th>
                        <td id="T_8eb5e_row2_col0" class="data row2 col0" >14.53%</td>
                        <td id="T_8eb5e_row2_col1" class="data row2 col1" >22.61%</td>
                        <td id="T_8eb5e_row2_col2" class="data row2 col2" >64.26%</td>
                        <td id="T_8eb5e_row2_col3" class="data row2 col3" >-19.97%</td>
                        <td id="T_8eb5e_row2_col4" class="data row2 col4" >22.89%</td>
            </tr>
            <tr>
                        <th id="T_8eb5e_level0_row3" class="row_heading level0 row3" >NNLS</th>
                        <td id="T_8eb5e_row3_col0" class="data row3 col0" >13.35%</td>
                        <td id="T_8eb5e_row3_col1" class="data row3 col1" >14.52%</td>
                        <td id="T_8eb5e_row3_col2" class="data row3 col2" >91.90%</td>
                        <td id="T_8eb5e_row3_col3" class="data row3 col3" >-15.44%</td>
                        <td id="T_8eb5e_row3_col4" class="data row3 col4" >15.72%</td>
            </tr>
            <tr>
                        <th id="T_8eb5e_level0_row4" class="row_heading level0 row4" >Ridge</th>
                        <td id="T_8eb5e_row4_col0" class="data row4 col0" >10.95%</td>
                        <td id="T_8eb5e_row4_col1" class="data row4 col1" >15.76%</td>
                        <td id="T_8eb5e_row4_col2" class="data row4 col2" >69.53%</td>
                        <td id="T_8eb5e_row4_col3" class="data row4 col3" >-13.07%</td>
                        <td id="T_8eb5e_row4_col4" class="data row4 col4" >20.65%</td>
            </tr>
            <tr>
                        <th id="T_8eb5e_level0_row5" class="row_heading level0 row5" >Lasso</th>
                        <td id="T_8eb5e_row5_col0" class="data row5 col0" >12.40%</td>
                        <td id="T_8eb5e_row5_col1" class="data row5 col1" >17.28%</td>
                        <td id="T_8eb5e_row5_col2" class="data row5 col2" >71.72%</td>
                        <td id="T_8eb5e_row5_col3" class="data row5 col3" >-12.10%</td>
                        <td id="T_8eb5e_row5_col4" class="data row5 col4" >22.89%</td>
            </tr>
    </tbody></table>



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
      <th>SPY</th>
      <td>-0.596703</td>
      <td>1.397776</td>
      <td>-0.073590</td>
      <td>-0.096460</td>
      <td>-0.514674</td>
      <td>2007-10-31</td>
      <td>2009-02-28</td>
      <td>2013-01-31</td>
      <td>1919 days</td>
    </tr>
    <tr>
      <th>Equal</th>
      <td>-0.391547</td>
      <td>2.017033</td>
      <td>-0.079251</td>
      <td>-0.111277</td>
      <td>-0.493740</td>
      <td>2007-05-31</td>
      <td>2009-02-28</td>
      <td>2010-04-30</td>
      <td>1065 days</td>
    </tr>
    <tr>
      <th>MV</th>
      <td>-0.280492</td>
      <td>1.199152</td>
      <td>-0.096414</td>
      <td>-0.141776</td>
      <td>-0.522147</td>
      <td>2007-10-31</td>
      <td>2010-06-30</td>
      <td>2014-04-30</td>
      <td>2373 days</td>
    </tr>
    <tr>
      <th>NNLS</th>
      <td>-0.519311</td>
      <td>1.331640</td>
      <td>-0.058642</td>
      <td>-0.087675</td>
      <td>-0.420674</td>
      <td>2007-10-31</td>
      <td>2009-02-28</td>
      <td>2011-04-30</td>
      <td>1277 days</td>
    </tr>
    <tr>
      <th>Ridge</th>
      <td>-0.233697</td>
      <td>1.218925</td>
      <td>-0.075796</td>
      <td>-0.092838</td>
      <td>-0.509916</td>
      <td>2007-10-31</td>
      <td>2010-01-31</td>
      <td>2014-06-30</td>
      <td>2434 days</td>
    </tr>
    <tr>
      <th>Lasso</th>
      <td>-0.084010</td>
      <td>1.032113</td>
      <td>-0.083996</td>
      <td>-0.097661</td>
      <td>-0.535509</td>
      <td>2007-10-31</td>
      <td>2010-01-31</td>
      <td>2014-08-31</td>
      <td>2496 days</td>
    </tr>
  </tbody>
</table>
</div>



<style  type="text/css" >
</style><table id="T_7af3c_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >alpha</th>        <th class="col_heading level0 col1" >SPY</th>        <th class="col_heading level0 col2" >r-squared</th>        <th class="col_heading level0 col3" >Treynor Ratio</th>        <th class="col_heading level0 col4" >Info Ratio</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_7af3c_level0_row0" class="row_heading level0 row0" >SPY</th>
                        <td id="T_7af3c_row0_col0" class="data row0 col0" >-0.00%</td>
                        <td id="T_7af3c_row0_col1" class="data row0 col1" >100.00%</td>
                        <td id="T_7af3c_row0_col2" class="data row0 col2" >100.00%</td>
                        <td id="T_7af3c_row0_col3" class="data row0 col3" >10.15%</td>
                        <td id="T_7af3c_row0_col4" class="data row0 col4" >nan%</td>
            </tr>
            <tr>
                        <th id="T_7af3c_level0_row1" class="row_heading level0 row1" >Equal</th>
                        <td id="T_7af3c_row1_col0" class="data row1 col0" >3.62%</td>
                        <td id="T_7af3c_row1_col1" class="data row1 col1" >109.69%</td>
                        <td id="T_7af3c_row1_col2" class="data row1 col2" >89.62%</td>
                        <td id="T_7af3c_row1_col3" class="data row1 col3" >11.69%</td>
                        <td id="T_7af3c_row1_col4" class="data row1 col4" >66.02%</td>
            </tr>
            <tr>
                        <th id="T_7af3c_level0_row2" class="row_heading level0 row2" >MV</th>
                        <td id="T_7af3c_row2_col0" class="data row2 col0" >10.26%</td>
                        <td id="T_7af3c_row2_col1" class="data row2 col1" >50.92%</td>
                        <td id="T_7af3c_row2_col2" class="data row2 col2" >10.96%</td>
                        <td id="T_7af3c_row2_col3" class="data row2 col3" >28.54%</td>
                        <td id="T_7af3c_row2_col4" class="data row2 col4" >48.09%</td>
            </tr>
            <tr>
                        <th id="T_7af3c_level0_row3" class="row_heading level0 row3" >NNLS</th>
                        <td id="T_7af3c_row3_col0" class="data row3 col0" >5.99%</td>
                        <td id="T_7af3c_row3_col1" class="data row3 col1" >87.74%</td>
                        <td id="T_7af3c_row3_col2" class="data row3 col2" >78.87%</td>
                        <td id="T_7af3c_row3_col3" class="data row3 col3" >15.21%</td>
                        <td id="T_7af3c_row3_col4" class="data row3 col4" >89.68%</td>
            </tr>
            <tr>
                        <th id="T_7af3c_level0_row4" class="row_heading level0 row4" >Ridge</th>
                        <td id="T_7af3c_row4_col0" class="data row4 col0" >4.68%</td>
                        <td id="T_7af3c_row4_col1" class="data row4 col1" >74.83%</td>
                        <td id="T_7af3c_row4_col2" class="data row4 col2" >48.73%</td>
                        <td id="T_7af3c_row4_col3" class="data row4 col3" >14.64%</td>
                        <td id="T_7af3c_row4_col4" class="data row4 col4" >41.48%</td>
            </tr>
            <tr>
                        <th id="T_7af3c_level0_row5" class="row_heading level0 row5" >Lasso</th>
                        <td id="T_7af3c_row5_col0" class="data row5 col0" >6.77%</td>
                        <td id="T_7af3c_row5_col1" class="data row5 col1" >67.09%</td>
                        <td id="T_7af3c_row5_col2" class="data row5 col2" >32.56%</td>
                        <td id="T_7af3c_row5_col3" class="data row5 col3" >18.48%</td>
                        <td id="T_7af3c_row5_col4" class="data row5 col4" >47.69%</td>
            </tr>
    </tbody></table>



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
display(retsx_port_oos.corr().style.format('{:.2%}'.format))
gross_leverage.mean().plot.bar(title='Gross Leverage');
```


<style  type="text/css" >
</style><table id="T_58b8e_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >SPY</th>        <th class="col_heading level0 col1" >Equal</th>        <th class="col_heading level0 col2" >MV</th>        <th class="col_heading level0 col3" >NNLS</th>        <th class="col_heading level0 col4" >Ridge</th>        <th class="col_heading level0 col5" >Lasso</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_58b8e_level0_row0" class="row_heading level0 row0" >SPY</th>
                        <td id="T_58b8e_row0_col0" class="data row0 col0" >100.00%</td>
                        <td id="T_58b8e_row0_col1" class="data row0 col1" >94.67%</td>
                        <td id="T_58b8e_row0_col2" class="data row0 col2" >33.10%</td>
                        <td id="T_58b8e_row0_col3" class="data row0 col3" >88.81%</td>
                        <td id="T_58b8e_row0_col4" class="data row0 col4" >69.81%</td>
                        <td id="T_58b8e_row0_col5" class="data row0 col5" >57.06%</td>
            </tr>
            <tr>
                        <th id="T_58b8e_level0_row1" class="row_heading level0 row1" >Equal</th>
                        <td id="T_58b8e_row1_col0" class="data row1 col0" >94.67%</td>
                        <td id="T_58b8e_row1_col1" class="data row1 col1" >100.00%</td>
                        <td id="T_58b8e_row1_col2" class="data row1 col2" >33.41%</td>
                        <td id="T_58b8e_row1_col3" class="data row1 col3" >86.32%</td>
                        <td id="T_58b8e_row1_col4" class="data row1 col4" >62.68%</td>
                        <td id="T_58b8e_row1_col5" class="data row1 col5" >49.72%</td>
            </tr>
            <tr>
                        <th id="T_58b8e_level0_row2" class="row_heading level0 row2" >MV</th>
                        <td id="T_58b8e_row2_col0" class="data row2 col0" >33.10%</td>
                        <td id="T_58b8e_row2_col1" class="data row2 col1" >33.41%</td>
                        <td id="T_58b8e_row2_col2" class="data row2 col2" >100.00%</td>
                        <td id="T_58b8e_row2_col3" class="data row2 col3" >63.38%</td>
                        <td id="T_58b8e_row2_col4" class="data row2 col4" >80.69%</td>
                        <td id="T_58b8e_row2_col5" class="data row2 col5" >88.31%</td>
            </tr>
            <tr>
                        <th id="T_58b8e_level0_row3" class="row_heading level0 row3" >NNLS</th>
                        <td id="T_58b8e_row3_col0" class="data row3 col0" >88.81%</td>
                        <td id="T_58b8e_row3_col1" class="data row3 col1" >86.32%</td>
                        <td id="T_58b8e_row3_col2" class="data row3 col2" >63.38%</td>
                        <td id="T_58b8e_row3_col3" class="data row3 col3" >100.00%</td>
                        <td id="T_58b8e_row3_col4" class="data row3 col4" >86.22%</td>
                        <td id="T_58b8e_row3_col5" class="data row3 col5" >81.74%</td>
            </tr>
            <tr>
                        <th id="T_58b8e_level0_row4" class="row_heading level0 row4" >Ridge</th>
                        <td id="T_58b8e_row4_col0" class="data row4 col0" >69.81%</td>
                        <td id="T_58b8e_row4_col1" class="data row4 col1" >62.68%</td>
                        <td id="T_58b8e_row4_col2" class="data row4 col2" >80.69%</td>
                        <td id="T_58b8e_row4_col3" class="data row4 col3" >86.22%</td>
                        <td id="T_58b8e_row4_col4" class="data row4 col4" >100.00%</td>
                        <td id="T_58b8e_row4_col5" class="data row4 col5" >95.52%</td>
            </tr>
            <tr>
                        <th id="T_58b8e_level0_row5" class="row_heading level0 row5" >Lasso</th>
                        <td id="T_58b8e_row5_col0" class="data row5 col0" >57.06%</td>
                        <td id="T_58b8e_row5_col1" class="data row5 col1" >49.72%</td>
                        <td id="T_58b8e_row5_col2" class="data row5 col2" >88.31%</td>
                        <td id="T_58b8e_row5_col3" class="data row5 col3" >81.74%</td>
                        <td id="T_58b8e_row5_col4" class="data row5 col4" >95.52%</td>
                        <td id="T_58b8e_row5_col5" class="data row5 col5" >100.00%</td>
            </tr>
    </tbody></table>



    
![png](output_42_1.png)
    



```python
gross_leverage.plot(title='Gross Leverage',xlim=dates_active)
turnover.plot(title='Turnover',xlim=dates_active)
num_positions.plot(title='Number of Positions',xlim=dates_active)
max_wt.plot(title='Max Weight',xlim=dates_active)
min_wt.plot(title='Min Weight',xlim=dates_active)
```




    <AxesSubplot:title={'center':'Min Weight'}, xlabel='Date'>




    
![png](output_43_1.png)
    



    
![png](output_43_2.png)
    



    
![png](output_43_3.png)
    



    
![png](output_43_4.png)
    



    
![png](output_43_5.png)
    


### Performance Conclusions
In-sample, MV is the best Sharpe by design.

Out-of-Sample, MV is mixed.
- `USE_DATA=ALL`, it does very poorly for small burn-in, `minT=60`, but well with a longer burn-in, `minT=100`.
- For `USE_DATA=Commodities`, it does very poorly at a range of burn-in periods, `minT= 60, 72, 100`. 
- MV does poorly for `USE_DATA=Equities`, MV underperforms the others, but not by a large margin.

Note that (other than `USE_DATA=Commodities`) MV achieves these results with high gross leverage and extremely high turnover. 
- These trading costs would undermine performance. 


```python

```

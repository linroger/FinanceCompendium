---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Discussion of Mean-Variance Optimization
linter-yaml-title-alias: Discussion of Mean-Variance Optimization
---

# Discussion of Mean-Variance Optimization
## in the Context of Homework 1: Harvard's Endowment
### Mark Hendricks

This discussion focuses particularly on the optimization of excess returns, (as raised in section 3 of the homework,) with only a brief mention of the optimization of total returns (as raise din section 2 of the homework.)

See the TA homework solution for more explicit discussion of the homework solutions.

## Setup

```python
import numpy as np
import pandas as pd
pd.options.display.float_format = "{:,.4f}".format

import matplotlib.pyplot as plt
import seaborn as sns

import statsmodels.api as sm
from sklearn.linear_model import LinearRegression
```

## Data

```python
filepath_data = '../data/multi_asset_etf_data.xlsx'
info = pd.read_excel(filepath_data,sheet_name='descriptions')
info.set_index('ticker',inplace=True)
```

```python
rets = pd.read_excel(filepath_data,sheet_name='total returns')
rets.set_index('Date',inplace=True)
rets.drop(columns=['SHV'])

retsx = pd.read_excel(filepath_data,sheet_name='excess returns')
retsx.set_index('Date',inplace=True)

# sort columns by order of descriptions in Info tab
symbol_list = info.index.drop('SHV')
rets = rets[symbol_list]
retsx = retsx[symbol_list]
```

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
	  <th>shortName</th>
	  <th>quoteType</th>
	  <th>currency</th>
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
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>SPDR S&amp;P 500</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>101107853</td>
	  <td>358229114880</td>
	  <td>The Trust seeks to achieve its investment obje…</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>iShares MSCI EAFE ETF</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>33352872</td>
	  <td>43798241280</td>
	  <td>The fund generally will invest at least 80% of…</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>iShares MSCI Emerging Index Fun</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>47539498</td>
	  <td>25870192640</td>
	  <td>The fund generally will invest at least 80% of…</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>Invesco Global Listed Private E</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>120371</td>
	  <td>171932880</td>
	  <td>The fund generally will invest at least 90% of…</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>IQ Hedge MultiIQ Hedge Multi-St</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>138713</td>
	  <td>707315584</td>
	  <td>The fund is a "fund of funds" which means it i…</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>iShares iBoxx $ High Yield Corp</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>48935762</td>
	  <td>12276870144</td>
	  <td>The underlying index is a rules-based index co…</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>Invesco DB Commodity Index Trac</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>2314311</td>
	  <td>3708376064</td>
	  <td>The fund pursues its investment objective by i…</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>iShares U.S. Real Estate ETF</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>12097258</td>
	  <td>4077254400</td>
	  <td>The fund seeks to track the investment results…</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>iShares 7-10 Year Treasury Bond</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>7992450</td>
	  <td>23017226240</td>
	  <td>The underlying index measures the performance …</td>
	</tr>
	<tr>
	  <th>BWX</th>
	  <td>SPDR Bloomberg International Tr</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>369873</td>
	  <td>809217792</td>
	  <td>The fund generally invests substantially all, …</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>iShares TIPS Bond ETF</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>2875478</td>
	  <td>29620422656</td>
	  <td>The fund will invest at least 80% of its asset…</td>
	</tr>
	<tr>
	  <th>SHV</th>
	  <td>iShares Short Treasury Bond ETF</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>3140935</td>
	  <td>19234586624</td>
	  <td>The fund will invest at least 80% of its asset…</td>
	</tr>
  </tbody>
</table>
</div>

```python
retsx
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
	  <th>SPY</th>
	  <th>EFA</th>
	  <th>EEM</th>
	  <th>PSP</th>
	  <th>QAI</th>
	  <th>HYG</th>
	  <th>DBC</th>
	  <th>IYR</th>
	  <th>IEF</th>
	  <th>BWX</th>
	  <th>TIP</th>
	</tr>
	<tr>
	  <th>Date</th>
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
	  <th>2009-04-30</th>
	  <td>0.0988</td>
	  <td>0.1146</td>
	  <td>0.1550</td>
	  <td>0.2296</td>
	  <td>0.0223</td>
	  <td>0.1379</td>
	  <td>-0.0016</td>
	  <td>0.2956</td>
	  <td>-0.0280</td>
	  <td>0.0084</td>
	  <td>-0.0185</td>
	</tr>
	<tr>
	  <th>2009-05-31</th>
	  <td>0.0589</td>
	  <td>0.1324</td>
	  <td>0.1599</td>
	  <td>0.0544</td>
	  <td>0.0283</td>
	  <td>0.0290</td>
	  <td>0.1631</td>
	  <td>0.0232</td>
	  <td>-0.0203</td>
	  <td>0.0541</td>
	  <td>0.0204</td>
	</tr>
	<tr>
	  <th>2009-06-30</th>
	  <td>-0.0013</td>
	  <td>-0.0146</td>
	  <td>-0.0231</td>
	  <td>0.0448</td>
	  <td>-0.0040</td>
	  <td>0.0329</td>
	  <td>-0.0269</td>
	  <td>-0.0255</td>
	  <td>-0.0062</td>
	  <td>0.0045</td>
	  <td>0.0014</td>
	</tr>
	<tr>
	  <th>2009-07-31</th>
	  <td>0.0746</td>
	  <td>0.1004</td>
	  <td>0.1102</td>
	  <td>0.1433</td>
	  <td>0.0154</td>
	  <td>0.0692</td>
	  <td>0.0186</td>
	  <td>0.1058</td>
	  <td>0.0083</td>
	  <td>0.0313</td>
	  <td>0.0009</td>
	</tr>
	<tr>
	  <th>2009-08-31</th>
	  <td>0.0365</td>
	  <td>0.0446</td>
	  <td>-0.0136</td>
	  <td>0.0330</td>
	  <td>-0.0046</td>
	  <td>-0.0174</td>
	  <td>-0.0408</td>
	  <td>0.1315</td>
	  <td>0.0072</td>
	  <td>0.0072</td>
	  <td>0.0080</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-04-30</th>
	  <td>-0.0875</td>
	  <td>-0.0671</td>
	  <td>-0.0611</td>
	  <td>-0.1254</td>
	  <td>-0.0331</td>
	  <td>-0.0415</td>
	  <td>0.0567</td>
	  <td>-0.0410</td>
	  <td>-0.0420</td>
	  <td>-0.0694</td>
	  <td>-0.0215</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.0016</td>
	  <td>0.0193</td>
	  <td>0.0055</td>
	  <td>0.0144</td>
	  <td>-0.0047</td>
	  <td>0.0156</td>
	  <td>0.0455</td>
	  <td>-0.0451</td>
	  <td>0.0055</td>
	  <td>0.0048</td>
	  <td>-0.0106</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.0817</td>
	  <td>-0.0869</td>
	  <td>-0.0508</td>
	  <td>-0.1317</td>
	  <td>-0.0329</td>
	  <td>-0.0697</td>
	  <td>-0.0742</td>
	  <td>-0.0682</td>
	  <td>-0.0079</td>
	  <td>-0.0457</td>
	  <td>-0.0304</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.0912</td>
	  <td>0.0508</td>
	  <td>-0.0044</td>
	  <td>0.1081</td>
	  <td>0.0179</td>
	  <td>0.0661</td>
	  <td>-0.0208</td>
	  <td>0.0877</td>
	  <td>0.0287</td>
	  <td>0.0196</td>
	  <td>0.0422</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>-0.0347</td>
	  <td>-0.0561</td>
	  <td>-0.0180</td>
	  <td>-0.0821</td>
	  <td>-0.0098</td>
	  <td>-0.0391</td>
	  <td>0.0048</td>
	  <td>-0.0561</td>
	  <td>-0.0358</td>
	  <td>-0.0525</td>
	  <td>-0.0196</td>
	</tr>
  </tbody>
</table>
<p>161 rows × 11 columns</p>
</div>

# Functions that will be useful
## Basic performance metrics

```python
def performanceMetrics(returns,annualization=1):
    metrics = pd.DataFrame(index=returns.columns)
    metrics['Mean'] = returns.mean() * annualization
    metrics['Vol'] = returns.std() * np.sqrt(annualization)
    metrics['Sharpe'] = (returns.mean() / returns.std()) * np.sqrt(annualization)

    metrics['Min'] = returns.min()
    metrics['Max'] = returns.max()

    return metrics
```

## Tangency portfolio

```python
def tangency_weights(returns,dropna=True,scale_cov=1):
    if dropna:
        returns = returns.dropna()

    covmat_full = returns.cov()
    covmat_diag = np.diag(np.diag(covmat_full))
    covmat = scale_cov * covmat_full + (1-scale_cov) * covmat_diag

    weights = np.linalg.solve(covmat,returns.mean())
    weights = weights / weights.sum()

    return pd.DataFrame(weights, index=returns.columns)
```

# Section 3 - Excess Returns
## 3.1.1

```python
mets = performanceMetrics(retsx,annualization=12)
mets.sort_values('Sharpe',ascending=False)
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
	  <th>SPY</th>
	  <td>0.1456</td>
	  <td>0.1453</td>
	  <td>1.0026</td>
	  <td>-0.1290</td>
	  <td>0.1268</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>0.1455</td>
	  <td>0.1847</td>
	  <td>0.7875</td>
	  <td>-0.2005</td>
	  <td>0.2956</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>0.0669</td>
	  <td>0.0897</td>
	  <td>0.7462</td>
	  <td>-0.1044</td>
	  <td>0.1379</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>0.0303</td>
	  <td>0.0477</td>
	  <td>0.6358</td>
	  <td>-0.0418</td>
	  <td>0.0422</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>0.1286</td>
	  <td>0.2218</td>
	  <td>0.5800</td>
	  <td>-0.2789</td>
	  <td>0.2296</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>0.0765</td>
	  <td>0.1623</td>
	  <td>0.4712</td>
	  <td>-0.1452</td>
	  <td>0.1429</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>0.0182</td>
	  <td>0.0492</td>
	  <td>0.3703</td>
	  <td>-0.0605</td>
	  <td>0.0340</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>0.0212</td>
	  <td>0.0594</td>
	  <td>0.3567</td>
	  <td>-0.0440</td>
	  <td>0.0461</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>0.0680</td>
	  <td>0.1921</td>
	  <td>0.3539</td>
	  <td>-0.1791</td>
	  <td>0.1628</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>0.0342</td>
	  <td>0.1807</td>
	  <td>0.1893</td>
	  <td>-0.1776</td>
	  <td>0.1631</td>
	</tr>
	<tr>
	  <th>BWX</th>
	  <td>0.0000</td>
	  <td>0.0783</td>
	  <td>0.0000</td>
	  <td>-0.0694</td>
	  <td>0.0612</td>
	</tr>
  </tbody>
</table>
</div>

## 3.1.2

```python
corrmat = retsx.corr()
#ignore self-correlation
corrmat[corrmat==1] = None
sns.heatmap(corrmat)

corr_rank = corrmat.unstack().sort_values().dropna()
pair_max = corr_rank.index[-1]
pair_min = corr_rank.index[0]

print(f'MIN Correlation pair is {pair_min}')
print(f'MAX Correlation pair is {pair_max}')
```

    MIN Correlation pair is ('DBC', 'IEF')
    MAX Correlation pair is ('PSP', 'EFA')



    

![png](output_16_1.png)

### TIPS

TIPS have one of the highest Sharpe ratios--they have a low mean, but a very low volatility. Furthermore, they have outperformed Domestic bonds in terms of mean and in terms of volatility.

Notably, TIPS have very low correlation to the other assets--including relatively low coorrelation to IEF (Domestic Bonds). In the correlation heat map above, we see that TIPS provide a great deal of diversification to all assets except IEF, to which they still provide some diversification.

## 3.1.3 The Tangency and the MV Frontier

```python
wts = pd.DataFrame(index=retsx.columns)
wts['tangency'] = tangency_weights(retsx)
wts['tangency ex tips'] = tangency_weights(retsx.drop(columns=['TIP']))
wts.loc['TIP','tangency ex tips'] = 0
wts['tangency tot'] = tangency_weights(rets)
retsx_tan = pd.DataFrame(retsx @ wts['tangency'],columns=['tangency'])
retsx_tan_extips = pd.DataFrame(retsx @ wts['tangency ex tips'],columns=['tangency ex tips'])
rets_tan = pd.DataFrame(rets @ wts['tangency tot'],columns=['tangency tot'])

performanceMetrics(pd.concat([retsx,retsx_tan,retsx_tan_extips,rets_tan],axis=1),annualization=12)
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
	  <th>SPY</th>
	  <td>0.1456</td>
	  <td>0.1453</td>
	  <td>1.0026</td>
	  <td>-0.1290</td>
	  <td>0.1268</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>0.0765</td>
	  <td>0.1623</td>
	  <td>0.4712</td>
	  <td>-0.1452</td>
	  <td>0.1429</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>0.0680</td>
	  <td>0.1921</td>
	  <td>0.3539</td>
	  <td>-0.1791</td>
	  <td>0.1628</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>0.1286</td>
	  <td>0.2218</td>
	  <td>0.5800</td>
	  <td>-0.2789</td>
	  <td>0.2296</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>0.0182</td>
	  <td>0.0492</td>
	  <td>0.3703</td>
	  <td>-0.0605</td>
	  <td>0.0340</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>0.0669</td>
	  <td>0.0897</td>
	  <td>0.7462</td>
	  <td>-0.1044</td>
	  <td>0.1379</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>0.0342</td>
	  <td>0.1807</td>
	  <td>0.1893</td>
	  <td>-0.1776</td>
	  <td>0.1631</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>0.1455</td>
	  <td>0.1847</td>
	  <td>0.7875</td>
	  <td>-0.2005</td>
	  <td>0.2956</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>0.0212</td>
	  <td>0.0594</td>
	  <td>0.3567</td>
	  <td>-0.0440</td>
	  <td>0.0461</td>
	</tr>
	<tr>
	  <th>BWX</th>
	  <td>0.0000</td>
	  <td>0.0783</td>
	  <td>0.0000</td>
	  <td>-0.0694</td>
	  <td>0.0612</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>0.0303</td>
	  <td>0.0477</td>
	  <td>0.6358</td>
	  <td>-0.0418</td>
	  <td>0.0422</td>
	</tr>
	<tr>
	  <th>tangency</th>
	  <td>0.6664</td>
	  <td>0.3454</td>
	  <td>1.9291</td>
	  <td>-0.1708</td>
	  <td>0.3827</td>
	</tr>
	<tr>
	  <th>tangency ex tips</th>
	  <td>0.7638</td>
	  <td>0.3976</td>
	  <td>1.9209</td>
	  <td>-0.1924</td>
	  <td>0.4161</td>
	</tr>
	<tr>
	  <th>tangency tot</th>
	  <td>0.3428</td>
	  <td>0.1759</td>
	  <td>1.9493</td>
	  <td>-0.0764</td>
	  <td>0.2012</td>
	</tr>
  </tbody>
</table>
</div>

## For Illustration

```python
import os
import sys
sys.path.insert(0, '../cmds')
from portfolio import MVweights
```

```python
omega_tan = tangency_weights(rets)
rets_adj = rets - rets.mean() + 1
omega_gmv = tangency_weights(rets_adj)
omega = pd.concat([omega_tan,omega_gmv],axis=1)
omega.columns = ['tangency','gmv']

delta_grid = np.linspace(-1.5,1.5,150)
mv_frame = pd.DataFrame(columns=['mean','vol'],index=delta_grid)
for i, delta in enumerate(delta_grid):
    omega_mv = delta * omega_tan + (1-delta) * omega_gmv
    rets_p = rets @ omega_mv
    mv_frame['mean'].iloc[i] = rets_p.mean().values[0] * 12
    mv_frame['vol'].iloc[i] = rets_p.std().values[0] * np.sqrt(12)
    
rets_special = pd.DataFrame(index=rets.index)
rets_special['tan'] = rets @ omega_tan.values
rets_special['gmv'] = rets @ omega_gmv.values

mv_assets = pd.concat([rets.mean() * 12,rets.std() * np.sqrt(12)],axis=1)
mv_special = pd.concat([rets_special.mean() * 12, rets_special.std() * np.sqrt(12)],axis=1)
mv_assets.columns = ['mean','vol']
mv_special.columns = ['mean','vol']

ax = mv_frame.plot.scatter(x='vol',y='mean', c='k', figsize=(10,10), title='MV Frontier')
mv_assets.plot.scatter(x='vol',y='mean',ax=ax, c='b', marker='^', linewidth=8)
mv_special.plot.scatter(x='vol',y='mean',ax=ax, c='r', marker='s', linewidth=12)

for i in range(mv_assets.shape[0]):
    plt.text(x=mv_assets['vol'][i]+.0005, y=mv_assets['mean'][i]+.0005, s=mv_assets.index[i])
```

![png](output_22_0.png)

### How similar are tangency to 0 (in total returns) and tangency to risk-free (excess returns)?

```python
comp = pd.concat([wts['tangency'], omega['tangency']],axis=1)
comp.columns = ['tan.riskfree','tan.zero']
comp

print(f'Correlation between tangency weights in total and excess returns is {comp.corr().values[0,1]:.4f}.')
```

    Correlation between tangency weights in total and excess returns is 0.9980.

Correlation between the weights are very similar.

But the excess return tangency weights are much larger magnitude, (nearly double,) leading to similar Sharpe but at much higher mean and vol (nearly double.)

## 3.1.4 The Allocation

```python
target_mean = .01

mu_tan = retsx.mean() @ wts['tangency']
delta = target_mean / mu_tan

wts['optimal'] = wts['tangency'] * delta

# list the assets sharpe ratios in a column to demonstrate not highly correlated with optimal weights
comp = pd.concat([wts[['optimal']],mets['Sharpe']],axis=1)
corr_sharpe_wts = comp.corr().values[0][1]

comp.sort_values('optimal',ascending=False)
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
	  <th>optimal</th>
	  <th>Sharpe</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>0.8814</td>
	  <td>1.0026</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>0.8642</td>
	  <td>0.3567</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>0.3616</td>
	  <td>0.7462</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>0.2179</td>
	  <td>0.6358</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>0.1341</td>
	  <td>0.3539</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>0.0843</td>
	  <td>0.1893</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>-0.0481</td>
	  <td>0.4712</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>-0.1082</td>
	  <td>0.7875</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>-0.1643</td>
	  <td>0.5800</td>
	</tr>
	<tr>
	  <th>BWX</th>
	  <td>-0.4540</td>
	  <td>0.0000</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>-1.5889</td>
	  <td>0.3703</td>
	</tr>
  </tbody>
</table>
</div>

```python
print(f'Total share in risky assets is {delta:.4f}.\nTotal share in risk-free asset is {1-delta:.4f}')
print(f'Correlation between an assets Sharpe ratio and its weight is {corr_sharpe_wts:.4f}.')
```

    Total share in risky assets is 0.1801.
    Total share in risk-free asset is 0.8199
    Correlation between an assets Sharpe ratio and its weight is 0.4057.

## 3.1.5 Simple Portfolios

```python
wts['equal'] = 1/len(retsx.columns)
wts['parity'] = 1/retsx.std()
# rescale these to hit the target mean
wts[['equal','parity']] *= target_mean / (retsx.mean()@wts[['equal','parity']])

wts
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
	  <th>tangency</th>
	  <th>tangency ex tips</th>
	  <th>tangency tot</th>
	  <th>optimal</th>
	  <th>equal</th>
	  <th>parity</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>4.8947</td>
	  <td>5.7002</td>
	  <td>2.4306</td>
	  <td>0.8814</td>
	  <td>0.1633</td>
	  <td>0.1504</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>-0.2673</td>
	  <td>-0.4222</td>
	  <td>-0.1171</td>
	  <td>-0.0481</td>
	  <td>0.1633</td>
	  <td>0.1346</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>0.7445</td>
	  <td>0.9005</td>
	  <td>0.3398</td>
	  <td>0.1341</td>
	  <td>0.1633</td>
	  <td>0.1137</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>-0.9122</td>
	  <td>-0.9909</td>
	  <td>-0.5131</td>
	  <td>-0.1643</td>
	  <td>0.1633</td>
	  <td>0.0985</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>-8.8233</td>
	  <td>-10.0070</td>
	  <td>-3.9552</td>
	  <td>-1.5889</td>
	  <td>0.1633</td>
	  <td>0.4442</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>2.0079</td>
	  <td>2.2734</td>
	  <td>1.0705</td>
	  <td>0.3616</td>
	  <td>0.1633</td>
	  <td>0.2435</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>0.4684</td>
	  <td>0.6334</td>
	  <td>0.2392</td>
	  <td>0.0843</td>
	  <td>0.1633</td>
	  <td>0.1209</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>-0.6009</td>
	  <td>-0.6577</td>
	  <td>-0.3078</td>
	  <td>-0.1082</td>
	  <td>0.1633</td>
	  <td>0.1182</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>4.7993</td>
	  <td>6.4299</td>
	  <td>2.4580</td>
	  <td>0.8642</td>
	  <td>0.1633</td>
	  <td>0.3678</td>
	</tr>
	<tr>
	  <th>BWX</th>
	  <td>-2.5211</td>
	  <td>-2.8597</td>
	  <td>-1.3352</td>
	  <td>-0.4540</td>
	  <td>0.1633</td>
	  <td>0.2790</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>1.2100</td>
	  <td>0.0000</td>
	  <td>0.6903</td>
	  <td>0.2179</td>
	  <td>0.1633</td>
	  <td>0.4581</td>
	</tr>
  </tbody>
</table>
</div>

```python
mets_full = performanceMetrics(retsx @ wts,annualization=12)
mets_full
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
	  <th>tangency</th>
	  <td>0.6664</td>
	  <td>0.3454</td>
	  <td>1.9291</td>
	  <td>-0.1708</td>
	  <td>0.3827</td>
	</tr>
	<tr>
	  <th>tangency ex tips</th>
	  <td>0.7638</td>
	  <td>0.3976</td>
	  <td>1.9209</td>
	  <td>-0.1924</td>
	  <td>0.4161</td>
	</tr>
	<tr>
	  <th>tangency tot</th>
	  <td>0.3382</td>
	  <td>0.1759</td>
	  <td>1.9226</td>
	  <td>-0.0766</td>
	  <td>0.2003</td>
	</tr>
	<tr>
	  <th>optimal</th>
	  <td>0.1200</td>
	  <td>0.0622</td>
	  <td>1.9291</td>
	  <td>-0.0308</td>
	  <td>0.0689</td>
	</tr>
	<tr>
	  <th>equal</th>
	  <td>0.1200</td>
	  <td>0.1801</td>
	  <td>0.6662</td>
	  <td>-0.2103</td>
	  <td>0.1656</td>
	</tr>
	<tr>
	  <th>parity</th>
	  <td>0.1200</td>
	  <td>0.1730</td>
	  <td>0.6938</td>
	  <td>-0.1917</td>
	  <td>0.1324</td>
	</tr>
  </tbody>
</table>
</div>

## 3.1.6 Dropping TIPS

```python
wts
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
	  <th>tangency</th>
	  <th>tangency ex tips</th>
	  <th>tangency tot</th>
	  <th>optimal</th>
	  <th>equal</th>
	  <th>parity</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>4.8947</td>
	  <td>5.7002</td>
	  <td>2.4306</td>
	  <td>0.8814</td>
	  <td>0.1633</td>
	  <td>0.1504</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>-0.2673</td>
	  <td>-0.4222</td>
	  <td>-0.1171</td>
	  <td>-0.0481</td>
	  <td>0.1633</td>
	  <td>0.1346</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>0.7445</td>
	  <td>0.9005</td>
	  <td>0.3398</td>
	  <td>0.1341</td>
	  <td>0.1633</td>
	  <td>0.1137</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>-0.9122</td>
	  <td>-0.9909</td>
	  <td>-0.5131</td>
	  <td>-0.1643</td>
	  <td>0.1633</td>
	  <td>0.0985</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>-8.8233</td>
	  <td>-10.0070</td>
	  <td>-3.9552</td>
	  <td>-1.5889</td>
	  <td>0.1633</td>
	  <td>0.4442</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>2.0079</td>
	  <td>2.2734</td>
	  <td>1.0705</td>
	  <td>0.3616</td>
	  <td>0.1633</td>
	  <td>0.2435</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>0.4684</td>
	  <td>0.6334</td>
	  <td>0.2392</td>
	  <td>0.0843</td>
	  <td>0.1633</td>
	  <td>0.1209</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>-0.6009</td>
	  <td>-0.6577</td>
	  <td>-0.3078</td>
	  <td>-0.1082</td>
	  <td>0.1633</td>
	  <td>0.1182</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>4.7993</td>
	  <td>6.4299</td>
	  <td>2.4580</td>
	  <td>0.8642</td>
	  <td>0.1633</td>
	  <td>0.3678</td>
	</tr>
	<tr>
	  <th>BWX</th>
	  <td>-2.5211</td>
	  <td>-2.8597</td>
	  <td>-1.3352</td>
	  <td>-0.4540</td>
	  <td>0.1633</td>
	  <td>0.2790</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>1.2100</td>
	  <td>0.0000</td>
	  <td>0.6903</td>
	  <td>0.2179</td>
	  <td>0.1633</td>
	  <td>0.4581</td>
	</tr>
  </tbody>
</table>
</div>

## 3.1.7 Out-of-Sample Testing

```python
retsx_IS = retsx.loc[:'2021']
retsx_OOS = retsx.loc['2022':]
wts_IS = tangency_weights(retsx.loc[:'2021'])
wts_IS.columns = ['mv']

wts_IS['equal'] = 1/len(retsx_IS.columns)
wts_IS['parity'] = 1/retsx_IS.std()
# rescale these to hit the target mean
wts_IS *= target_mean / (retsx_IS.mean()@ wts_IS)

wts_IS
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
	  <th>mv</th>
	  <th>equal</th>
	  <th>parity</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>0.7846</td>
	  <td>0.1348</td>
	  <td>0.1205</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>-0.0473</td>
	  <td>0.1348</td>
	  <td>0.1047</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>0.0225</td>
	  <td>0.1348</td>
	  <td>0.0866</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>-0.0459</td>
	  <td>0.1348</td>
	  <td>0.0786</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>-1.2867</td>
	  <td>0.1348</td>
	  <td>0.3530</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>0.4341</td>
	  <td>0.1348</td>
	  <td>0.1976</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>-0.0064</td>
	  <td>0.1348</td>
	  <td>0.0941</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>-0.1744</td>
	  <td>0.1348</td>
	  <td>0.0929</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>0.8267</td>
	  <td>0.1348</td>
	  <td>0.2978</td>
	</tr>
	<tr>
	  <th>BWX</th>
	  <td>-0.1667</td>
	  <td>0.1348</td>
	  <td>0.2283</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>0.1642</td>
	  <td>0.1348</td>
	  <td>0.3761</td>
	</tr>
  </tbody>
</table>
</div>

```python
port_IS = retsx_IS @ wts_IS

performanceMetrics(port_IS,annualization=12)
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
	  <th>mv</th>
	  <td>0.1200</td>
	  <td>0.0533</td>
	  <td>2.2529</td>
	  <td>-0.0192</td>
	  <td>0.0621</td>
	</tr>
	<tr>
	  <th>equal</th>
	  <td>0.1200</td>
	  <td>0.1454</td>
	  <td>0.8255</td>
	  <td>-0.1737</td>
	  <td>0.1367</td>
	</tr>
	<tr>
	  <th>parity</th>
	  <td>0.1200</td>
	  <td>0.1307</td>
	  <td>0.9182</td>
	  <td>-0.1519</td>
	  <td>0.1044</td>
	</tr>
  </tbody>
</table>
</div>

```python
port_OOS = retsx_OOS @ wts_IS

performanceMetrics(port_OOS,annualization=12)
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
	  <th>mv</th>
	  <td>-0.1056</td>
	  <td>0.1512</td>
	  <td>-0.6983</td>
	  <td>-0.0564</td>
	  <td>0.0820</td>
	</tr>
	<tr>
	  <th>equal</th>
	  <td>-0.3009</td>
	  <td>0.1751</td>
	  <td>-1.7183</td>
	  <td>-0.0917</td>
	  <td>0.0657</td>
	</tr>
	<tr>
	  <th>parity</th>
	  <td>-0.3701</td>
	  <td>0.1969</td>
	  <td>-1.8793</td>
	  <td>-0.0966</td>
	  <td>0.0789</td>
	</tr>
  </tbody>
</table>
</div>

### Why does the MV Portfolio do worse?
#### It has a huge position in SPY, and SPY was the best performing asset in 2021!

```python
performanceMetrics(retsx_OOS,annualization=12).sort_values('Sharpe',ascending=False)
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
	  <th>DBC</th>
	  <td>0.3733</td>
	  <td>0.1967</td>
	  <td>1.8975</td>
	  <td>-0.0742</td>
	  <td>0.0921</td>
	</tr>
	<tr>
	  <th>SPY</th>
	  <td>-0.2314</td>
	  <td>0.2106</td>
	  <td>-1.0987</td>
	  <td>-0.0875</td>
	  <td>0.0912</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>-0.1726</td>
	  <td>0.1432</td>
	  <td>-1.2055</td>
	  <td>-0.0697</td>
	  <td>0.0661</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>-0.2710</td>
	  <td>0.2214</td>
	  <td>-1.2238</td>
	  <td>-0.0815</td>
	  <td>0.0877</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>-0.1038</td>
	  <td>0.0815</td>
	  <td>-1.2725</td>
	  <td>-0.0304</td>
	  <td>0.0422</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>-0.3058</td>
	  <td>0.1625</td>
	  <td>-1.8821</td>
	  <td>-0.0869</td>
	  <td>0.0508</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>-0.1720</td>
	  <td>0.0865</td>
	  <td>-1.9896</td>
	  <td>-0.0420</td>
	  <td>0.0287</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>-0.5738</td>
	  <td>0.2811</td>
	  <td>-2.0412</td>
	  <td>-0.1317</td>
	  <td>0.1081</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>-0.1368</td>
	  <td>0.0589</td>
	  <td>-2.3209</td>
	  <td>-0.0331</td>
	  <td>0.0179</td>
	</tr>
	<tr>
	  <th>BWX</th>
	  <td>-0.3319</td>
	  <td>0.1052</td>
	  <td>-3.1547</td>
	  <td>-0.0694</td>
	  <td>0.0196</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>-0.3068</td>
	  <td>0.0870</td>
	  <td>-3.5271</td>
	  <td>-0.0611</td>
	  <td>0.0055</td>
	</tr>
  </tbody>
</table>
</div>

## 3.2

### Suppose TIPS had a slightly different mean return than the in-sample estimate

* Would the weights change much?
* Would the MV frontier change much?

```python
retsx_adj = retsx.copy()
retsx_adj['TIP'] -= .0015

wts_adj = wts[['tangency','optimal']].copy()
wts_adj['tangency adj'] = tangency_weights(retsx_adj)
retsx_tan_adj = pd.DataFrame(retsx_adj @ wts_adj['tangency adj'],columns=['tangency adj'])

mu_adj = retsx_adj.mean()
mu_tan_adj = mu_adj @ wts_adj['tangency adj']
delta_adj = target_mean / mu_tan

wts_adj['optimal adj'] = wts_adj['tangency adj'] * delta_adj

wts_adj
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
	  <th>tangency</th>
	  <th>optimal</th>
	  <th>tangency adj</th>
	  <th>optimal adj</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>4.8947</td>
	  <td>0.8814</td>
	  <td>10.5418</td>
	  <td>1.8984</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>-0.2673</td>
	  <td>-0.0481</td>
	  <td>-1.3533</td>
	  <td>-0.2437</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>0.7445</td>
	  <td>0.1341</td>
	  <td>1.8381</td>
	  <td>0.3310</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>-0.9122</td>
	  <td>-0.1643</td>
	  <td>-1.4642</td>
	  <td>-0.2637</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>-8.8233</td>
	  <td>-1.5889</td>
	  <td>-17.1216</td>
	  <td>-3.0832</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>2.0079</td>
	  <td>0.3616</td>
	  <td>3.8690</td>
	  <td>0.6967</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>0.4684</td>
	  <td>0.0843</td>
	  <td>1.6255</td>
	  <td>0.2927</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>-0.6009</td>
	  <td>-0.1082</td>
	  <td>-0.9992</td>
	  <td>-0.1799</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>4.7993</td>
	  <td>0.8642</td>
	  <td>16.2311</td>
	  <td>2.9229</td>
	</tr>
	<tr>
	  <th>BWX</th>
	  <td>-2.5211</td>
	  <td>-0.4540</td>
	  <td>-4.8946</td>
	  <td>-0.8814</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>1.2100</td>
	  <td>0.2179</td>
	  <td>-7.2728</td>
	  <td>-1.3097</td>
	</tr>
  </tbody>
</table>
</div>

```python
mets_adj = performanceMetrics(retsx_adj @ wts_adj[['tangency adj','optimal adj']], annualization=12)
pd.concat([mets_full.loc[['tangency','optimal']],mets_adj])
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
	  <th>tangency</th>
	  <td>0.6664</td>
	  <td>0.3454</td>
	  <td>1.9291</td>
	  <td>-0.1708</td>
	  <td>0.3827</td>
	</tr>
	<tr>
	  <th>optimal</th>
	  <td>0.1200</td>
	  <td>0.0622</td>
	  <td>1.9291</td>
	  <td>-0.0308</td>
	  <td>0.0689</td>
	</tr>
	<tr>
	  <th>tangency adj</th>
	  <td>1.4801</td>
	  <td>0.7448</td>
	  <td>1.9872</td>
	  <td>-0.3949</td>
	  <td>0.6424</td>
	</tr>
	<tr>
	  <th>optimal adj</th>
	  <td>0.2665</td>
	  <td>0.1341</td>
	  <td>1.9872</td>
	  <td>-0.0711</td>
	  <td>0.1157</td>
	</tr>
  </tbody>
</table>
</div>

```python
tips_se = retsx['TIP'].std()/np.sqrt(retsx.shape[0])
print(f'Standard error of mean of TIPS is equal to {tips_se:0.4f}')
print(f'Proposed adjustment to mean of TIPS is {.01/12 : 0.4f}')
```

    Standard error of mean of TIPS is equal to 0.0011
    Proposed adjustment to mean of TIPS is  0.0008


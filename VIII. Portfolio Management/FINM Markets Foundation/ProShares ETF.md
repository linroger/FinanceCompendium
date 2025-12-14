---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Discussion of Return Decomposition
linter-yaml-title-alias: Discussion of Return Decomposition
---

# Discussion of Return Decomposition
## in the Context of Homework 2: Proshares ETF
### Mark Hendricks

```python
import numpy as np
import pandas as pd
pd.options.display.float_format = "{:,.4f}".format

import matplotlib.pyplot as plt
import seaborn as sns

import statsmodels.api as sm
from sklearn.linear_model import LinearRegression
```

```python
import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13
```

# Some Useful Functions

## This notebook relies on some functions, kept in `cmds/portfolio.py`

It calls the path to `portfolio.py` then it loads all the functions from `portfolio.py`.

```python
import sys
sys.path.insert(0, '../cmds')
from portfolio import *
```

# Data

```python
filepath_data = '../data/proshares_analysis_data.xlsx'
info = pd.read_excel(filepath_data,sheet_name='descriptions')
info.rename(columns={'Unnamed: 0':'Symbol'},inplace=True)
info.set_index('Symbol',inplace=True)

hf = pd.read_excel(filepath_data,sheet_name='hedge_fund_series')
hf = hf.rename(columns={'Unnamed: 0':'date'}).set_index('date')

ml = pd.read_excel(filepath_data,sheet_name='merrill_factors')
ml = ml.rename(columns={'Unnamed: 0':'date'}).set_index('date')
```

```python
info.loc[list(hf.columns) + list(ml.columns)]
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
	  <th>security_name</th>
	</tr>
	<tr>
	  <th>Symbol</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>HFRIFWI Index</th>
	  <td>HFR Fund Wghted Comp</td>
	</tr>
	<tr>
	  <th>MLEIFCTR Index</th>
	  <td>Merrill Lynch Factor Model Ind</td>
	</tr>
	<tr>
	  <th>MLEIFCTX Index</th>
	  <td>Merrill Lynch Factor Model Exc</td>
	</tr>
	<tr>
	  <th>HDG US Equity</th>
	  <td>ProShares Hedge Replication ET</td>
	</tr>
	<tr>
	  <th>QAI US Equity</th>
	  <td>IndexIQ ETF Trust - IQ Hedge M</td>
	</tr>
	<tr>
	  <th>SPY US Equity</th>
	  <td>SPDR S&amp;P 500 ETF Trust</td>
	</tr>
	<tr>
	  <th>USGG3M Index</th>
	  <td>US Generic Govt 3 Mth</td>
	</tr>
	<tr>
	  <th>EEM US Equity</th>
	  <td>iShares MSCI Emerging Markets</td>
	</tr>
	<tr>
	  <th>EFA US Equity</th>
	  <td>iShares MSCI EAFE ETF</td>
	</tr>
	<tr>
	  <th>EUO US Equity</th>
	  <td>ProShares UltraShort Euro</td>
	</tr>
	<tr>
	  <th>IWM US Equity</th>
	  <td>iShares Russell 2000 ETF</td>
	</tr>
  </tbody>
</table>
</div>

```python
hf
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
	  <th>HFRIFWI Index</th>
	  <th>MLEIFCTR Index</th>
	  <th>MLEIFCTX Index</th>
	  <th>HDG US Equity</th>
	  <th>QAI US Equity</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2011-08-31</th>
	  <td>-0.0321</td>
	  <td>-0.0256</td>
	  <td>-0.0257</td>
	  <td>-0.0270</td>
	  <td>-0.0065</td>
	</tr>
	<tr>
	  <th>2011-09-30</th>
	  <td>-0.0389</td>
	  <td>-0.0324</td>
	  <td>-0.0326</td>
	  <td>-0.0325</td>
	  <td>-0.0221</td>
	</tr>
	<tr>
	  <th>2011-10-31</th>
	  <td>0.0269</td>
	  <td>0.0436</td>
	  <td>0.0433</td>
	  <td>0.0505</td>
	  <td>0.0252</td>
	</tr>
	<tr>
	  <th>2011-11-30</th>
	  <td>-0.0135</td>
	  <td>-0.0121</td>
	  <td>-0.0124</td>
	  <td>-0.0286</td>
	  <td>-0.0080</td>
	</tr>
	<tr>
	  <th>2011-12-31</th>
	  <td>-0.0045</td>
	  <td>0.0019</td>
	  <td>0.0018</td>
	  <td>0.0129</td>
	  <td>0.0018</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>-0.0054</td>
	  <td>0.0033</td>
	  <td>0.0037</td>
	  <td>0.0049</td>
	  <td>-0.0040</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.0285</td>
	  <td>-0.0288</td>
	  <td>-0.0292</td>
	  <td>-0.0321</td>
	  <td>-0.0337</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.0127</td>
	  <td>0.0216</td>
	  <td>0.0211</td>
	  <td>0.0202</td>
	  <td>0.0188</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>0.0045</td>
	  <td>-0.0062</td>
	  <td>-0.0064</td>
	  <td>-0.0090</td>
	  <td>-0.0116</td>
	</tr>
	<tr>
	  <th>2022-09-30</th>
	  <td>0.0000</td>
	  <td>-0.0398</td>
	  <td>-0.0395</td>
	  <td>-0.0429</td>
	  <td>-0.0398</td>
	</tr>
  </tbody>
</table>
<p>134 rows × 5 columns</p>
</div>

```python
ml
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
	  <th>SPY US Equity</th>
	  <th>USGG3M Index</th>
	  <th>EEM US Equity</th>
	  <th>EFA US Equity</th>
	  <th>EUO US Equity</th>
	  <th>IWM US Equity</th>
	</tr>
	<tr>
	  <th>date</th>
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
	  <th>2011-08-31</th>
	  <td>-0.0550</td>
	  <td>0.0000</td>
	  <td>-0.0925</td>
	  <td>-0.0875</td>
	  <td>-0.0059</td>
	  <td>-0.0889</td>
	</tr>
	<tr>
	  <th>2011-09-30</th>
	  <td>-0.0694</td>
	  <td>0.0000</td>
	  <td>-0.1791</td>
	  <td>-0.1081</td>
	  <td>0.1422</td>
	  <td>-0.1115</td>
	</tr>
	<tr>
	  <th>2011-10-31</th>
	  <td>0.1091</td>
	  <td>-0.0000</td>
	  <td>0.1630</td>
	  <td>0.0963</td>
	  <td>-0.0695</td>
	  <td>0.1510</td>
	</tr>
	<tr>
	  <th>2011-11-30</th>
	  <td>-0.0041</td>
	  <td>0.0000</td>
	  <td>-0.0197</td>
	  <td>-0.0218</td>
	  <td>0.0546</td>
	  <td>-0.0038</td>
	</tr>
	<tr>
	  <th>2011-12-31</th>
	  <td>0.0104</td>
	  <td>0.0000</td>
	  <td>-0.0426</td>
	  <td>-0.0217</td>
	  <td>0.0756</td>
	  <td>0.0051</td>
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
	  <th>2022-05-31</th>
	  <td>0.0023</td>
	  <td>0.0009</td>
	  <td>0.0061</td>
	  <td>0.0200</td>
	  <td>-0.0364</td>
	  <td>0.0019</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.0825</td>
	  <td>0.0014</td>
	  <td>-0.0516</td>
	  <td>-0.0877</td>
	  <td>0.0504</td>
	  <td>-0.0837</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.0921</td>
	  <td>0.0019</td>
	  <td>-0.0035</td>
	  <td>0.0517</td>
	  <td>0.0523</td>
	  <td>0.1056</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>-0.0408</td>
	  <td>0.0024</td>
	  <td>-0.0133</td>
	  <td>-0.0612</td>
	  <td>0.0359</td>
	  <td>-0.0200</td>
	</tr>
	<tr>
	  <th>2022-09-30</th>
	  <td>-0.0924</td>
	  <td>0.0027</td>
	  <td>-0.1154</td>
	  <td>-0.0922</td>
	  <td>0.0522</td>
	  <td>-0.0966</td>
	</tr>
  </tbody>
</table>
<p>134 rows × 6 columns</p>
</div>

```python
mlx = ml.subtract(ml['USGG3M Index'], axis=0)
mlx = mlx.drop(columns=['USGG3M Index'])
mlx
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
	  <th>SPY US Equity</th>
	  <th>EEM US Equity</th>
	  <th>EFA US Equity</th>
	  <th>EUO US Equity</th>
	  <th>IWM US Equity</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2011-08-31</th>
	  <td>-0.0550</td>
	  <td>-0.0926</td>
	  <td>-0.0876</td>
	  <td>-0.0059</td>
	  <td>-0.0889</td>
	</tr>
	<tr>
	  <th>2011-09-30</th>
	  <td>-0.0694</td>
	  <td>-0.1791</td>
	  <td>-0.1081</td>
	  <td>0.1422</td>
	  <td>-0.1115</td>
	</tr>
	<tr>
	  <th>2011-10-31</th>
	  <td>0.1092</td>
	  <td>0.1630</td>
	  <td>0.0963</td>
	  <td>-0.0695</td>
	  <td>0.1510</td>
	</tr>
	<tr>
	  <th>2011-11-30</th>
	  <td>-0.0041</td>
	  <td>-0.0197</td>
	  <td>-0.0218</td>
	  <td>0.0546</td>
	  <td>-0.0038</td>
	</tr>
	<tr>
	  <th>2011-12-31</th>
	  <td>0.0104</td>
	  <td>-0.0427</td>
	  <td>-0.0218</td>
	  <td>0.0756</td>
	  <td>0.0051</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.0014</td>
	  <td>0.0053</td>
	  <td>0.0191</td>
	  <td>-0.0373</td>
	  <td>0.0011</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.0838</td>
	  <td>-0.0529</td>
	  <td>-0.0890</td>
	  <td>0.0491</td>
	  <td>-0.0850</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.0902</td>
	  <td>-0.0054</td>
	  <td>0.0498</td>
	  <td>0.0504</td>
	  <td>0.1037</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>-0.0432</td>
	  <td>-0.0157</td>
	  <td>-0.0636</td>
	  <td>0.0335</td>
	  <td>-0.0224</td>
	</tr>
	<tr>
	  <th>2022-09-30</th>
	  <td>-0.0952</td>
	  <td>-0.1181</td>
	  <td>-0.0949</td>
	  <td>0.0495</td>
	  <td>-0.0993</td>
	</tr>
  </tbody>
</table>
<p>134 rows × 5 columns</p>
</div>

## Familiarize ourselves with the factor data

```python
performanceMetrics(ml,annualization=12)
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
	  <td>0.1213</td>
	  <td>0.1456</td>
	  <td>0.8327</td>
	  <td>-0.1249</td>
	  <td>0.1270</td>
	</tr>
	<tr>
	  <th>USGG3M Index</th>
	  <td>0.0062</td>
	  <td>0.0024</td>
	  <td>2.5335</td>
	  <td>-0.0000</td>
	  <td>0.0027</td>
	</tr>
	<tr>
	  <th>EEM US Equity</th>
	  <td>0.0100</td>
	  <td>0.1815</td>
	  <td>0.0551</td>
	  <td>-0.1791</td>
	  <td>0.1630</td>
	</tr>
	<tr>
	  <th>EFA US Equity</th>
	  <td>0.0372</td>
	  <td>0.1518</td>
	  <td>0.2450</td>
	  <td>-0.1411</td>
	  <td>0.1427</td>
	</tr>
	<tr>
	  <th>EUO US Equity</th>
	  <td>0.0764</td>
	  <td>0.1551</td>
	  <td>0.4925</td>
	  <td>-0.0909</td>
	  <td>0.1442</td>
	</tr>
	<tr>
	  <th>IWM US Equity</th>
	  <td>0.0982</td>
	  <td>0.1928</td>
	  <td>0.5092</td>
	  <td>-0.2148</td>
	  <td>0.1824</td>
	</tr>
  </tbody>
</table>
</div>

```python
display_correlation(ml)
```

    MIN Correlation pair is ('EUO US Equity', 'EEM US Equity')
    MAX Correlation pair is ('IWM US Equity', 'SPY US Equity')



    

![png](output_13_1.png)

# 2.1-2.3, 2.5 Hedge-Fund Metrics

```python
performanceMetrics(hf,annualization=12)
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
	  <th>HFRIFWI Index</th>
	  <td>0.0429</td>
	  <td>0.0609</td>
	  <td>0.7038</td>
	  <td>-0.0908</td>
	  <td>0.0586</td>
	</tr>
	<tr>
	  <th>MLEIFCTR Index</th>
	  <td>0.0257</td>
	  <td>0.0569</td>
	  <td>0.4513</td>
	  <td>-0.0532</td>
	  <td>0.0589</td>
	</tr>
	<tr>
	  <th>MLEIFCTX Index</th>
	  <td>0.0243</td>
	  <td>0.0567</td>
	  <td>0.4283</td>
	  <td>-0.0524</td>
	  <td>0.0588</td>
	</tr>
	<tr>
	  <th>HDG US Equity</th>
	  <td>0.0140</td>
	  <td>0.0592</td>
	  <td>0.2365</td>
	  <td>-0.0592</td>
	  <td>0.0583</td>
	</tr>
	<tr>
	  <th>QAI US Equity</th>
	  <td>0.0116</td>
	  <td>0.0489</td>
	  <td>0.2366</td>
	  <td>-0.0563</td>
	  <td>0.0341</td>
	</tr>
  </tbody>
</table>
</div>

```python
tailMetrics(hf)
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
	  <th>HFRIFWI Index</th>
	  <td>-1.0207</td>
	  <td>6.1631</td>
	  <td>-0.0256</td>
	  <td>-0.0392</td>
	  <td>-0.1155</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-08-31</td>
	  <td>244 days</td>
	</tr>
	<tr>
	  <th>MLEIFCTR Index</th>
	  <td>-0.3155</td>
	  <td>1.7787</td>
	  <td>-0.0297</td>
	  <td>-0.0369</td>
	  <td>-0.1243</td>
	  <td>2021-06-30</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>MLEIFCTX Index</th>
	  <td>-0.3048</td>
	  <td>1.7418</td>
	  <td>-0.0299</td>
	  <td>-0.0368</td>
	  <td>-0.1244</td>
	  <td>2021-06-30</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>HDG US Equity</th>
	  <td>-0.2986</td>
	  <td>1.9311</td>
	  <td>-0.0315</td>
	  <td>-0.0385</td>
	  <td>-0.1407</td>
	  <td>2021-06-30</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>QAI US Equity</th>
	  <td>-0.6341</td>
	  <td>1.9133</td>
	  <td>-0.0212</td>
	  <td>-0.0344</td>
	  <td>-0.1377</td>
	  <td>2021-06-30</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

Note that the hedge-fund series have low volatilities relative to SPY or other securities we have seen. They have relatively low maximum drawdowns as well, (though not particularly low in terms of their volatility.)

Only HDG and QAI are actual returns, the others are indexes. And we note that the returns have much lower Sharpe Ratios than the series.

```python
display_correlation(hf)
```

    MIN Correlation pair is ('HFRIFWI Index', 'QAI US Equity')
    MAX Correlation pair is ('MLEIFCTX Index', 'MLEIFCTR Index')



    

![png](output_18_1.png)

# 2.3-2.4 Relative Performance

```python
get_ols_metrics(ml['SPY US Equity'],hf,annualization=12)
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
	  <th>SPY US Equity</th>
	  <th>r-squared</th>
	  <th>Treynor Ratio</th>
	  <th>Info Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>HFRIFWI Index</th>
	  <td>0.0004</td>
	  <td>0.3500</td>
	  <td>0.6999</td>
	  <td>0.1225</td>
	  <td>0.0130</td>
	</tr>
	<tr>
	  <th>MLEIFCTR Index</th>
	  <td>-0.0174</td>
	  <td>0.3549</td>
	  <td>0.8257</td>
	  <td>0.0723</td>
	  <td>-0.7315</td>
	</tr>
	<tr>
	  <th>MLEIFCTX Index</th>
	  <td>-0.0186</td>
	  <td>0.3536</td>
	  <td>0.8251</td>
	  <td>0.0687</td>
	  <td>-0.7846</td>
	</tr>
	<tr>
	  <th>HDG US Equity</th>
	  <td>-0.0300</td>
	  <td>0.3631</td>
	  <td>0.7966</td>
	  <td>0.0386</td>
	  <td>-1.1237</td>
	</tr>
	<tr>
	  <th>QAI US Equity</th>
	  <td>-0.0238</td>
	  <td>0.2919</td>
	  <td>0.7550</td>
	  <td>0.0397</td>
	  <td>-0.9838</td>
	</tr>
  </tbody>
</table>
</div>

## Note that 
* The alphas are all negative! SPY has been a rocket during this time.
* Hedge-funds (as measured by these broad indexes) have underperformed.
* Given that they have some SPY beta, their total return is positive (Sharpe is positive) but when we strip this factor out, the hedged performance has a negative Sharpe ratio as seen by the Info Ratio (which is the Sharpe Ratio of the hedged position.)

```python
hfri = hf['HFRIFWI Index']
spy = ml['SPY US Equity']

cumrets = (1+pd.concat([hfri,spy],axis=1)).cumprod()
cumrets.plot();
```

![png](output_22_0.png)

## We see that
* HFRI is much less volatile and a much lower trend.

But maybe the scaling here is hiding how similar they are. Let's re-plot them, adjusting the scales. And we see they are *very* similar!

```python
fig, ax1 = plt.subplots(figsize=(10,5))

ax1.set_xlabel('Date')
ax1.set_ylabel(hfri.name)
ax1.plot(hfri.index, (1+hfri).cumprod(), color='r', label=hfri.name)

ax2 = ax1.twinx()  
ax2.set_ylabel(spy.name)  
ax2.plot(spy.index, (1+spy).cumprod(), color='g', label=spy.name)

ax1.legend(loc='upper left')
ax2.legend(loc='center left')
plt.show()
```

![png](output_24_0.png)

# 2.6 Static Replication

```python
y = hf['HFRIFWI Index']
X = sm.add_constant(ml)
static_model = sm.OLS(y,X).fit()
static_model.summary()
```

<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>      <td>HFRIFWI Index</td>  <th>  R-squared:         </th> <td>   0.821</td>
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared:    </th> <td>   0.813</td>
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th> <td>   97.27</td>
</tr>
<tr>
  <th>Date:</th>             <td>Fri, 07 Oct 2022</td> <th>  Prob (F-statistic):</th> <td>4.68e-45</td>
</tr>
<tr>
  <th>Time:</th>                 <td>09:32:36</td>     <th>  Log-Likelihood:    </th> <td>  467.20</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   134</td>      <th>  AIC:               </th> <td>  -920.4</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   127</td>      <th>  BIC:               </th> <td>  -900.1</td>
</tr>
<tr>
  <th>Df Model:</th>              <td>     6</td>      <th>                     </th>     <td> </td>   
</tr>
<tr>
  <th>Covariance Type:</th>      <td>nonrobust</td>    <th>                     </th>     <td> </td>   
</tr>
</table>
<table class="simpletable">
<tr>
		<td></td>           <th>coef</th>     <th>std err</th>      <th>t</th>      <th>P>|t|</th>  <th>[0.025</th>    <th>0.975]</th>  
</tr>
<tr>
  <th>const</th>         <td>    0.0011</td> <td>    0.001</td> <td>    1.314</td> <td> 0.191</td> <td>   -0.001</td> <td>    0.003</td>
</tr>
<tr>
  <th>SPY US Equity</th> <td>    0.0256</td> <td>    0.042</td> <td>    0.607</td> <td> 0.545</td> <td>   -0.058</td> <td>    0.109</td>
</tr>
<tr>
  <th>USGG3M Index</th>  <td>    0.8346</td> <td>    0.948</td> <td>    0.880</td> <td> 0.381</td> <td>   -1.042</td> <td>    2.711</td>
</tr>
<tr>
  <th>EEM US Equity</th> <td>    0.0741</td> <td>    0.024</td> <td>    3.050</td> <td> 0.003</td> <td>    0.026</td> <td>    0.122</td>
</tr>
<tr>
  <th>EFA US Equity</th> <td>    0.1056</td> <td>    0.041</td> <td>    2.585</td> <td> 0.011</td> <td>    0.025</td> <td>    0.186</td>
</tr>
<tr>
  <th>EUO US Equity</th> <td>    0.0232</td> <td>    0.019</td> <td>    1.211</td> <td> 0.228</td> <td>   -0.015</td> <td>    0.061</td>
</tr>
<tr>
  <th>IWM US Equity</th> <td>    0.1474</td> <td>    0.026</td> <td>    5.569</td> <td> 0.000</td> <td>    0.095</td> <td>    0.200</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>19.616</td> <th>  Durbin-Watson:     </th> <td>   1.711</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  96.415</td>
</tr>
<tr>
  <th>Skew:</th>          <td> 0.095</td> <th>  Prob(JB):          </th> <td>1.16e-21</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 7.151</td> <th>  Cond. No.          </th> <td>1.44e+03</td>
</tr>
</table><br/><br/>Notes:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.<br/>[2] The condition number is large, 1.44e+03. This might indicate that there are<br/>strong multicollinearity or other numerical problems.

# 2.7 Rolling Replication

```python
from statsmodels.regression.rolling import RollingOLS
model = RollingOLS(y,X,window=60)
rolling_betas = model.fit().params.copy()
rolling_betas
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
	  <th>const</th>
	  <th>SPY US Equity</th>
	  <th>USGG3M Index</th>
	  <th>EEM US Equity</th>
	  <th>EFA US Equity</th>
	  <th>EUO US Equity</th>
	  <th>IWM US Equity</th>
	</tr>
	<tr>
	  <th>date</th>
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
	  <th>2011-08-31</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-09-30</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-10-31</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-11-30</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-12-31</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
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
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.0041</td>
	  <td>0.0150</td>
	  <td>-2.0331</td>
	  <td>0.1085</td>
	  <td>0.1152</td>
	  <td>0.0340</td>
	  <td>0.1754</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>0.0042</td>
	  <td>0.0113</td>
	  <td>-2.0093</td>
	  <td>0.1064</td>
	  <td>0.1113</td>
	  <td>0.0286</td>
	  <td>0.1812</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.0045</td>
	  <td>0.0010</td>
	  <td>-2.3994</td>
	  <td>0.1183</td>
	  <td>0.1073</td>
	  <td>0.0202</td>
	  <td>0.1765</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>0.0042</td>
	  <td>-0.0011</td>
	  <td>-1.7968</td>
	  <td>0.1285</td>
	  <td>0.0767</td>
	  <td>0.0186</td>
	  <td>0.1899</td>
	</tr>
	<tr>
	  <th>2022-09-30</th>
	  <td>0.0039</td>
	  <td>-0.0458</td>
	  <td>-0.3569</td>
	  <td>0.0868</td>
	  <td>0.0904</td>
	  <td>0.0055</td>
	  <td>0.2250</td>
	</tr>
  </tbody>
</table>
<p>134 rows × 7 columns</p>
</div>

```python
rep_IS = (rolling_betas * X).sum(axis=1,skipna=False)
rep_OOS = (rolling_betas.shift() * X).sum(axis=1,skipna=False)
```

```python
replication = hf[['HFRIFWI Index']].copy()
replication['Static-IS-Int'] = static_model.fittedvalues

replication['Rolling-IS-Int'] = rep_IS
replication['Rolling-OOS-Int'] = rep_OOS

replication
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
	  <th>HFRIFWI Index</th>
	  <th>Static-IS-Int</th>
	  <th>Rolling-IS-Int</th>
	  <th>Rolling-OOS-Int</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2011-08-31</th>
	  <td>-0.0321</td>
	  <td>-0.0296</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-09-30</th>
	  <td>-0.0389</td>
	  <td>-0.0384</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-10-31</th>
	  <td>0.0269</td>
	  <td>0.0468</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-11-30</th>
	  <td>-0.0135</td>
	  <td>-0.0020</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-12-31</th>
	  <td>-0.0045</td>
	  <td>-0.0015</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>-0.0054</td>
	  <td>0.0039</td>
	  <td>0.0044</td>
	  <td>0.0049</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.0285</td>
	  <td>-0.0241</td>
	  <td>-0.0284</td>
	  <td>-0.0286</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.0127</td>
	  <td>0.0271</td>
	  <td>0.0248</td>
	  <td>0.0274</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>0.0045</td>
	  <td>-0.0074</td>
	  <td>-0.0096</td>
	  <td>-0.0123</td>
	</tr>
	<tr>
	  <th>2022-09-30</th>
	  <td>0.0000</td>
	  <td>-0.0303</td>
	  <td>-0.0326</td>
	  <td>-0.0398</td>
	</tr>
  </tbody>
</table>
<p>134 rows × 4 columns</p>
</div>

```python
replication.corr()
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
	  <th>HFRIFWI Index</th>
	  <th>Static-IS-Int</th>
	  <th>Rolling-IS-Int</th>
	  <th>Rolling-OOS-Int</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>HFRIFWI Index</th>
	  <td>1.0000</td>
	  <td>0.9062</td>
	  <td>0.9302</td>
	  <td>0.8874</td>
	</tr>
	<tr>
	  <th>Static-IS-Int</th>
	  <td>0.9062</td>
	  <td>1.0000</td>
	  <td>0.9900</td>
	  <td>0.9866</td>
	</tr>
	<tr>
	  <th>Rolling-IS-Int</th>
	  <td>0.9302</td>
	  <td>0.9900</td>
	  <td>1.0000</td>
	  <td>0.9933</td>
	</tr>
	<tr>
	  <th>Rolling-OOS-Int</th>
	  <td>0.8874</td>
	  <td>0.9866</td>
	  <td>0.9933</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

# 2.8 Replication w/o Intercept

```python
Xnoint = ml
static_model_noint = sm.OLS(y,Xnoint).fit()
betas = pd.DataFrame(static_model.params,columns=['Yes Intercept']).T
betas.loc['No Intercept'] = static_model_noint.params
betas
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
	  <th>const</th>
	  <th>SPY US Equity</th>
	  <th>USGG3M Index</th>
	  <th>EEM US Equity</th>
	  <th>EFA US Equity</th>
	  <th>EUO US Equity</th>
	  <th>IWM US Equity</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Yes Intercept</th>
	  <td>0.0011</td>
	  <td>0.0256</td>
	  <td>0.8346</td>
	  <td>0.0741</td>
	  <td>0.1056</td>
	  <td>0.0232</td>
	  <td>0.1474</td>
	</tr>
	<tr>
	  <th>No Intercept</th>
	  <td>NaN</td>
	  <td>0.0404</td>
	  <td>1.5517</td>
	  <td>0.0731</td>
	  <td>0.1008</td>
	  <td>0.0249</td>
	  <td>0.1444</td>
	</tr>
  </tbody>
</table>
</div>

Without an intercept, the betas are almost identical, except the beta in the 3-month T-bills. The T-bills are such low volatility, they act almost like an intercept. Thus, the regression performance is very similar.

```python
model = RollingOLS(y,Xnoint,window=60,)
rolling_betas = model.fit().params.copy()
rep_IS_noint = (rolling_betas * Xnoint).sum(axis=1,skipna=False)
rep_OOS_noint = (rolling_betas.shift() * Xnoint).sum(axis=1,skipna=False)
```

```python
replication['Static-IS-NoInt'] = static_model_noint.fittedvalues
replication['Rolling-IS-NoInt'] = rep_IS_noint
replication['Rolling-OOS-NoInt'] = rep_OOS_noint
replication
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
	  <th>HFRIFWI Index</th>
	  <th>Static-IS-Int</th>
	  <th>Rolling-IS-Int</th>
	  <th>Rolling-OOS-Int</th>
	  <th>Static-IS-NoInt</th>
	  <th>Rolling-IS-NoInt</th>
	  <th>Rolling-OOS-NoInt</th>
	</tr>
	<tr>
	  <th>date</th>
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
	  <th>2011-08-31</th>
	  <td>-0.0321</td>
	  <td>-0.0296</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>-0.0308</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-09-30</th>
	  <td>-0.0389</td>
	  <td>-0.0384</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>-0.0393</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-10-31</th>
	  <td>0.0269</td>
	  <td>0.0468</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.0461</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-11-30</th>
	  <td>-0.0135</td>
	  <td>-0.0020</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>-0.0030</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2011-12-31</th>
	  <td>-0.0045</td>
	  <td>-0.0015</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>-0.0022</td>
	  <td>NaN</td>
	  <td>NaN</td>
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
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>-0.0054</td>
	  <td>0.0039</td>
	  <td>0.0044</td>
	  <td>0.0049</td>
	  <td>0.0033</td>
	  <td>0.0023</td>
	  <td>0.0027</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.0285</td>
	  <td>-0.0241</td>
	  <td>-0.0284</td>
	  <td>-0.0286</td>
	  <td>-0.0247</td>
	  <td>-0.0297</td>
	  <td>-0.0300</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.0127</td>
	  <td>0.0271</td>
	  <td>0.0248</td>
	  <td>0.0274</td>
	  <td>0.0282</td>
	  <td>0.0271</td>
	  <td>0.0298</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>0.0045</td>
	  <td>-0.0074</td>
	  <td>-0.0096</td>
	  <td>-0.0123</td>
	  <td>-0.0070</td>
	  <td>-0.0080</td>
	  <td>-0.0101</td>
	</tr>
	<tr>
	  <th>2022-09-30</th>
	  <td>0.0000</td>
	  <td>-0.0303</td>
	  <td>-0.0326</td>
	  <td>-0.0398</td>
	  <td>-0.0299</td>
	  <td>-0.0314</td>
	  <td>-0.0382</td>
	</tr>
  </tbody>
</table>
<p>134 rows × 7 columns</p>
</div>

```python
performanceMetrics(replication,annualization=12)
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
	  <th>HFRIFWI Index</th>
	  <td>0.0429</td>
	  <td>0.0609</td>
	  <td>0.7038</td>
	  <td>-0.0908</td>
	  <td>0.0586</td>
	</tr>
	<tr>
	  <th>Static-IS-Int</th>
	  <td>0.0429</td>
	  <td>0.0552</td>
	  <td>0.7766</td>
	  <td>-0.0602</td>
	  <td>0.0516</td>
	</tr>
	<tr>
	  <th>Rolling-IS-Int</th>
	  <td>0.0402</td>
	  <td>0.0603</td>
	  <td>0.6657</td>
	  <td>-0.0664</td>
	  <td>0.0554</td>
	</tr>
	<tr>
	  <th>Rolling-OOS-Int</th>
	  <td>0.0369</td>
	  <td>0.0587</td>
	  <td>0.6294</td>
	  <td>-0.0537</td>
	  <td>0.0537</td>
	</tr>
	<tr>
	  <th>Static-IS-NoInt</th>
	  <td>0.0350</td>
	  <td>0.0556</td>
	  <td>0.6303</td>
	  <td>-0.0617</td>
	  <td>0.0507</td>
	</tr>
	<tr>
	  <th>Rolling-IS-NoInt</th>
	  <td>0.0366</td>
	  <td>0.0611</td>
	  <td>0.5992</td>
	  <td>-0.0660</td>
	  <td>0.0549</td>
	</tr>
	<tr>
	  <th>Rolling-OOS-NoInt</th>
	  <td>0.0338</td>
	  <td>0.0598</td>
	  <td>0.5649</td>
	  <td>-0.0543</td>
	  <td>0.0534</td>
	</tr>
  </tbody>
</table>
</div>

```python
tailMetrics(replication)
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
	  <th>HFRIFWI Index</th>
	  <td>-1.0207</td>
	  <td>6.1631</td>
	  <td>-0.0256</td>
	  <td>-0.0392</td>
	  <td>-0.1155</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-08-31</td>
	  <td>244 days</td>
	</tr>
	<tr>
	  <th>Static-IS-Int</th>
	  <td>-0.5334</td>
	  <td>2.1449</td>
	  <td>-0.0254</td>
	  <td>-0.0343</td>
	  <td>-0.0912</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-08-31</td>
	  <td>244 days</td>
	</tr>
	<tr>
	  <th>Rolling-IS-Int</th>
	  <td>-0.8017</td>
	  <td>3.4326</td>
	  <td>-0.0275</td>
	  <td>-0.0390</td>
	  <td>-0.0965</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-08-31</td>
	  <td>244 days</td>
	</tr>
	<tr>
	  <th>Rolling-OOS-Int</th>
	  <td>-0.6176</td>
	  <td>2.0603</td>
	  <td>-0.0277</td>
	  <td>-0.0383</td>
	  <td>-0.0975</td>
	  <td>2021-12-31</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Static-IS-NoInt</th>
	  <td>-0.5329</td>
	  <td>2.1453</td>
	  <td>-0.0264</td>
	  <td>-0.0349</td>
	  <td>-0.0933</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-11-30</td>
	  <td>335 days</td>
	</tr>
	<tr>
	  <th>Rolling-IS-NoInt</th>
	  <td>-0.7707</td>
	  <td>3.0817</td>
	  <td>-0.0286</td>
	  <td>-0.0395</td>
	  <td>-0.1005</td>
	  <td>2021-06-30</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Rolling-OOS-NoInt</th>
	  <td>-0.6076</td>
	  <td>1.8578</td>
	  <td>-0.0283</td>
	  <td>-0.0393</td>
	  <td>-0.1116</td>
	  <td>2021-06-30</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

```python
display_correlation(replication)
```

    MIN Correlation pair is ('HFRIFWI Index', 'Rolling-OOS-NoInt')
    MAX Correlation pair is ('Static-IS-Int', 'Static-IS-NoInt')



    

![png](output_39_1.png)

## Without the intercept

these replications are almost the same. 

* Their correlations are very high to the with-intercept versions.
* The means and other performance statistics are quite similar.

This is not always the case. The reason we get similar results with or without the intercept is due to the fact that the target has a low mean return relative to the instruments.

Just for illustration, let's look at replicating SPY with the non-SPY ML factors both with and without an intercept.

```python
rep_spy = ml[['SPY US Equity']].copy()

model = sm.OLS(ml['SPY US Equity'],sm.add_constant(ml.drop(columns=['SPY US Equity'])))
rep_spy['Static-IS-Int'] = model.fit().fittedvalues
model = sm.OLS(ml['SPY US Equity'],ml.drop(columns=['SPY US Equity']))
rep_spy['Static-IS-NoInt'] = model.fit().fittedvalues
performanceMetrics(rep_spy,annualization=12)
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
	  <td>0.1213</td>
	  <td>0.1456</td>
	  <td>0.8327</td>
	  <td>-0.1249</td>
	  <td>0.1270</td>
	</tr>
	<tr>
	  <th>Static-IS-Int</th>
	  <td>0.1213</td>
	  <td>0.1352</td>
	  <td>0.8972</td>
	  <td>-0.1419</td>
	  <td>0.1428</td>
	</tr>
	<tr>
	  <th>Static-IS-NoInt</th>
	  <td>0.0804</td>
	  <td>0.1369</td>
	  <td>0.5874</td>
	  <td>-0.1508</td>
	  <td>0.1408</td>
	</tr>
  </tbody>
</table>
</div>

We see that replicating SPY without an intercept loses a significant amount of the mean return and Sharpe--even though one of the replicating instruments (IWM) is highly correlated to SPY with a high mean!

# Extensions - Constrained Regression

## Non-Negative Betas

```python
reg_nnls = LinearRegression(positive=True,fit_intercept=True)
mod = reg_nnls.fit(Xnoint, y)
betas.loc['Yes intercept: NNLS',Xnoint.columns] =  + mod.coef_
betas.loc['Yes intercept: NNLS','const'] = mod.intercept_
betas
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
	  <th>const</th>
	  <th>SPY US Equity</th>
	  <th>USGG3M Index</th>
	  <th>EEM US Equity</th>
	  <th>EFA US Equity</th>
	  <th>EUO US Equity</th>
	  <th>IWM US Equity</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Yes Intercept</th>
	  <td>0.0011</td>
	  <td>0.0256</td>
	  <td>0.8346</td>
	  <td>0.0741</td>
	  <td>0.1056</td>
	  <td>0.0232</td>
	  <td>0.1474</td>
	</tr>
	<tr>
	  <th>No Intercept</th>
	  <td>NaN</td>
	  <td>0.0404</td>
	  <td>1.5517</td>
	  <td>0.0731</td>
	  <td>0.1008</td>
	  <td>0.0249</td>
	  <td>0.1444</td>
	</tr>
	<tr>
	  <th>Yes intercept: NNLS</th>
	  <td>0.0011</td>
	  <td>0.0256</td>
	  <td>0.8346</td>
	  <td>0.0741</td>
	  <td>0.1056</td>
	  <td>0.0232</td>
	  <td>0.1474</td>
	</tr>
  </tbody>
</table>
</div>

## Similar to unconstrained

The unconstrained estimate shorted treasury bills, which are extremely low volatility.

The constrained estimate simply zeros out the t-bill exposure, ye tthis does not impact the total result much.

```python
replication['Static-IS-Int-NNLS'] = mod.predict(Xnoint)
corr_nnls = replication.corr().loc['Static-IS-Int-NNLS','Static-IS-Int']
print(f'Correlation between unconstrained and constrained is {corr_nnls:0.4f}')
```

    Correlation between unconstrained and constrained is 1.0000

## Constrained by coefficient-specific inequalities

We will likely discuss this later.

# Extensions - More Style Analysis

```python
data = pd.read_excel(filepath_data,sheet_name='other_data')
data = data.rename(columns={'Unnamed: 0':'date'}).set_index('date')
data.drop(columns=['SPXU US Equity','UPRO US Equity'],inplace=True)

info.loc[data.columns]
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
	  <th>security_name</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>TRVCI Index</th>
	  <td>Refinitiv Venture Capital Inde</td>
	</tr>
	<tr>
	  <th>HEFA US Equity</th>
	  <td>iShares Currency Hedged MSCI E</td>
	</tr>
	<tr>
	  <th>TAIL US Equity</th>
	  <td>Cambria Tail Risk ETF</td>
	</tr>
  </tbody>
</table>
</div>

```python
performanceMetrics(data,annualization=12)
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
	  <th>TRVCI Index</th>
	  <td>0.1959</td>
	  <td>0.2685</td>
	  <td>0.7296</td>
	  <td>-0.2422</td>
	  <td>0.1864</td>
	</tr>
	<tr>
	  <th>HEFA US Equity</th>
	  <td>0.0643</td>
	  <td>0.1259</td>
	  <td>0.5109</td>
	  <td>-0.1316</td>
	  <td>0.1234</td>
	</tr>
	<tr>
	  <th>TAIL US Equity</th>
	  <td>-0.0535</td>
	  <td>0.1239</td>
	  <td>-0.4320</td>
	  <td>-0.0891</td>
	  <td>0.1140</td>
	</tr>
  </tbody>
</table>
</div>

```python
tailMetrics(data)
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
	  <th>TRVCI Index</th>
	  <td>-0.4607</td>
	  <td>0.3868</td>
	  <td>-0.1107</td>
	  <td>-0.1582</td>
	  <td>-0.6034</td>
	  <td>2021-08-31</td>
	  <td>2022-09-30</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>HEFA US Equity</th>
	  <td>-0.5463</td>
	  <td>1.9466</td>
	  <td>-0.0582</td>
	  <td>-0.0781</td>
	  <td>-0.2066</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-12-31 00:00:00</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>TAIL US Equity</th>
	  <td>1.1455</td>
	  <td>2.6899</td>
	  <td>-0.0465</td>
	  <td>-0.0630</td>
	  <td>-0.3036</td>
	  <td>2017-05-31</td>
	  <td>2022-08-31</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
  </tbody>
</table>
</div>

```python
display_correlation(data.join(ml['SPY US Equity']))
```

    MIN Correlation pair is ('HEFA US Equity', 'TAIL US Equity')
    MAX Correlation pair is ('SPY US Equity', 'HEFA US Equity')



    

![png](output_52_1.png)

```python
get_ols_metrics(ml,data,annualization=12)
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
	  <th>SPY US Equity</th>
	  <th>USGG3M Index</th>
	  <th>EEM US Equity</th>
	  <th>EFA US Equity</th>
	  <th>EUO US Equity</th>
	  <th>IWM US Equity</th>
	  <th>r-squared</th>
	  <th>Info Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>TRVCI Index</th>
	  <td>-0.0334</td>
	  <td>1.8552</td>
	  <td>5.2206</td>
	  <td>-0.1309</td>
	  <td>0.0264</td>
	  <td>-0.0804</td>
	  <td>-0.2178</td>
	  <td>0.6970</td>
	  <td>-0.2261</td>
	</tr>
	<tr>
	  <th>HEFA US Equity</th>
	  <td>0.0156</td>
	  <td>-0.0042</td>
	  <td>0.0738</td>
	  <td>-0.0580</td>
	  <td>0.9647</td>
	  <td>0.3224</td>
	  <td>0.0163</td>
	  <td>0.9686</td>
	  <td>0.6974</td>
	</tr>
	<tr>
	  <th>TAIL US Equity</th>
	  <td>0.0139</td>
	  <td>-0.2637</td>
	  <td>-0.3893</td>
	  <td>-0.1385</td>
	  <td>-0.1766</td>
	  <td>-0.3179</td>
	  <td>-0.1196</td>
	  <td>0.7208</td>
	  <td>0.2128</td>
	</tr>
  </tbody>
</table>
</div>

# Extensions - Levered ETFs

See other notebook

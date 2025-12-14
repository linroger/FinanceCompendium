---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: This uses factor_pricing.py, which you do not have.
linter-yaml-title-alias: This uses factor_pricing.py, which you do not have.
---

```python
import numpy as np
import pandas as pd
pd.options.display.float_format = "{:,.4f}".format

import matplotlib.pyplot as plt
import seaborn as sns

import statsmodels.api as sm
from sklearn.linear_model import LinearRegression

from scipy import stats
```

```python
import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13
```

# This uses factor_pricing.py, which you do not have.
# Thus, this notebook is just for demonstration.

```python
import sys
sys.path.insert(0, '../cmds')
sys.path.insert(0, '../DEV')
from portfolio import *
from factor_pricing import *
```

# Load Data

```python
filepath_data = '../data/dfa_analysis_data.xlsx'
info = pd.read_excel(filepath_data,sheet_name='descriptions')
info.rename(columns={'Unnamed: 0':'Symbol'},inplace=True)
info.set_index('Symbol',inplace=True)

facs = pd.read_excel(filepath_data,sheet_name='factors')
facs.set_index('Date',inplace=True)
rf = facs['RF'].copy()
facs.drop(columns=['RF'],inplace=True)
```

# 2. Factors

## 2.1

```python
dts = dict()
dts['early'] = pd.date_range(start=facs.index[0], end='31/12/1980',freq='M')
dts['founding'] = pd.date_range(start='1/1/1981', end='31/12/2001',freq='M')
dts['recent'] = pd.date_range(start='1/1/2002', end=facs.index[-1],freq='M')

dts['1990s'] = pd.date_range(start='1/1/1991', end='31/12/1999',freq='M')
dts['modern'] = dts['founding'].union(dts['recent'])
dts['all'] = facs.index
```

    /Users/markhendricks/Projects/FINM/finm-portfolio-2022/venv/lib/python3.9/site-packages/IPython/core/interactiveshell.py:3398: UserWarning: Parsing '31/12/1980' in DD/MM/YYYY format. Provide format or specify infer_datetime_format=True for consistent parsing.
      exec(code_obj, self.user_global_ns, self.user_ns)
    /Users/markhendricks/Projects/FINM/finm-portfolio-2022/venv/lib/python3.9/site-packages/IPython/core/interactiveshell.py:3398: UserWarning: Parsing '31/12/2001' in DD/MM/YYYY format. Provide format or specify infer_datetime_format=True for consistent parsing.
      exec(code_obj, self.user_global_ns, self.user_ns)
    /Users/markhendricks/Projects/FINM/finm-portfolio-2022/venv/lib/python3.9/site-packages/IPython/core/interactiveshell.py:3398: UserWarning: Parsing '31/12/1999' in DD/MM/YYYY format. Provide format or specify infer_datetime_format=True for consistent parsing.
      exec(code_obj, self.user_global_ns, self.user_ns)

```python
for era in dts.keys():
    print(f'\n========================================================\n')
    print(f'Period: {dts[era][0]} to {dts[era][-1]}')
    print(f'\n========================================================')
    display(performanceMetrics(facs.loc[dts[era]],annualization=12).join(tailMetrics(facs.loc[dts[era]],quantile=.05)['VaR (0.05)']))
```

    ========================================================
    
    Period: 1926-07-31 00:00:00 to 1980-12-31 00:00:00
    
    ========================================================

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
	  <th>VaR (0.05)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.0811</td>
	  <td>0.2051</td>
	  <td>0.3957</td>
	  <td>-0.2913</td>
	  <td>0.3885</td>
	  <td>-0.0840</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0340</td>
	  <td>0.1146</td>
	  <td>0.2966</td>
	  <td>-0.0986</td>
	  <td>0.3656</td>
	  <td>-0.0434</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0495</td>
	  <td>0.1338</td>
	  <td>0.3697</td>
	  <td>-0.1311</td>
	  <td>0.3561</td>
	  <td>-0.0429</td>
	</tr>
  </tbody>
</table>
</div>

    ========================================================
    
    Period: 1981-01-31 00:00:00 to 2001-12-31 00:00:00
    
    ========================================================

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
	  <th>VaR (0.05)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.0773</td>
	  <td>0.1574</td>
	  <td>0.4908</td>
	  <td>-0.2324</td>
	  <td>0.1247</td>
	  <td>-0.0645</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>-0.0009</td>
	  <td>0.1184</td>
	  <td>-0.0074</td>
	  <td>-0.1723</td>
	  <td>0.2142</td>
	  <td>-0.0466</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0637</td>
	  <td>0.1113</td>
	  <td>0.5727</td>
	  <td>-0.0970</td>
	  <td>0.1248</td>
	  <td>-0.0418</td>
	</tr>
  </tbody>
</table>
</div>

    ========================================================
    
    Period: 2002-01-31 00:00:00 to 2022-08-31 00:00:00
    
    ========================================================

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
	  <th>VaR (0.05)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.0833</td>
	  <td>0.1540</td>
	  <td>0.5409</td>
	  <td>-0.1723</td>
	  <td>0.1365</td>
	  <td>-0.0788</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0196</td>
	  <td>0.0858</td>
	  <td>0.2288</td>
	  <td>-0.0594</td>
	  <td>0.0734</td>
	  <td>-0.0378</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0017</td>
	  <td>0.1045</td>
	  <td>0.0161</td>
	  <td>-0.1397</td>
	  <td>0.1275</td>
	  <td>-0.0410</td>
	</tr>
  </tbody>
</table>
</div>

    ========================================================
    
    Period: 1991-01-31 00:00:00 to 1999-12-31 00:00:00
    
    ========================================================

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
	  <th>VaR (0.05)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.1554</td>
	  <td>0.1300</td>
	  <td>1.1952</td>
	  <td>-0.1608</td>
	  <td>0.1084</td>
	  <td>-0.0418</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0009</td>
	  <td>0.1052</td>
	  <td>0.0090</td>
	  <td>-0.0664</td>
	  <td>0.0846</td>
	  <td>-0.0504</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0123</td>
	  <td>0.0936</td>
	  <td>0.1318</td>
	  <td>-0.0832</td>
	  <td>0.0647</td>
	  <td>-0.0409</td>
	</tr>
  </tbody>
</table>
</div>

    ========================================================
    
    Period: 1981-01-31 00:00:00 to 2022-08-31 00:00:00
    
    ========================================================

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
	  <th>VaR (0.05)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.0802</td>
	  <td>0.1556</td>
	  <td>0.5159</td>
	  <td>-0.2324</td>
	  <td>0.1365</td>
	  <td>-0.0728</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0093</td>
	  <td>0.1035</td>
	  <td>0.0898</td>
	  <td>-0.1723</td>
	  <td>0.2142</td>
	  <td>-0.0419</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0330</td>
	  <td>0.1082</td>
	  <td>0.3044</td>
	  <td>-0.1397</td>
	  <td>0.1275</td>
	  <td>-0.0413</td>
	</tr>
  </tbody>
</table>
</div>

    ========================================================
    
    Period: 1926-07-31 00:00:00 to 2022-08-31 00:00:00
    
    ========================================================

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
	  <th>VaR (0.05)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.0808</td>
	  <td>0.1852</td>
	  <td>0.4361</td>
	  <td>-0.2913</td>
	  <td>0.3885</td>
	  <td>-0.0796</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0233</td>
	  <td>0.1099</td>
	  <td>0.2119</td>
	  <td>-0.1723</td>
	  <td>0.3656</td>
	  <td>-0.0420</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0423</td>
	  <td>0.1234</td>
	  <td>0.3430</td>
	  <td>-0.1397</td>
	  <td>0.3561</td>
	  <td>-0.0419</td>
	</tr>
  </tbody>
</table>
</div>

## 2.2

Regarding the factor premia, we see that…

* SMB premium is small in most subsamples and is negative during 1981-2001.
* HML is positive overall and in most subsamples, but it is negative in the post-case sample of 2002-2021.
* HML's premium drops substantially starting in the 1990's.
* MKT is positive in every subsample, and strongly so.

## 2.3

The correlations are low relative to most equity portfolios (which tend to have high correlations.)

* The correlation between MKT and SMB is relatively low, but definitely positive.
* The correlation between MKT and HML is negative since DFA's founding, but it was positive before that, such that the 100-year sample is positive.

```python
display_correlation(facs.loc[dts['modern']])
```

    MIN Correlation pair is ('SMB', 'HML')
    MAX Correlation pair is ('SMB', 'Mkt-RF')



    

![png](output_11_1.png)

```python
for era in dts.keys():
    print(f'\n========================================================\n')
    print(f'Period: {dts[era][0]} to {dts[era][-1]}')
    print(f'\n========================================================')
    display(facs.loc[dts[era]].corr())
```

    ========================================================
    
    Period: 1926-07-31 00:00:00 to 1980-12-31 00:00:00
    
    ========================================================

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
	  <th>Mkt-RF</th>
	  <th>SMB</th>
	  <th>HML</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>1.0000</td>
	  <td>0.3663</td>
	  <td>0.4378</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.3663</td>
	  <td>1.0000</td>
	  <td>0.3091</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.4378</td>
	  <td>0.3091</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

    ========================================================
    
    Period: 1981-01-31 00:00:00 to 2001-12-31 00:00:00
    
    ========================================================

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
	  <th>Mkt-RF</th>
	  <th>SMB</th>
	  <th>HML</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>1.0000</td>
	  <td>0.1643</td>
	  <td>-0.5268</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.1643</td>
	  <td>1.0000</td>
	  <td>-0.4548</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.5268</td>
	  <td>-0.4548</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

    ========================================================
    
    Period: 2002-01-31 00:00:00 to 2022-08-31 00:00:00
    
    ========================================================

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
	  <th>Mkt-RF</th>
	  <th>SMB</th>
	  <th>HML</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>1.0000</td>
	  <td>0.3162</td>
	  <td>0.1317</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.3162</td>
	  <td>1.0000</td>
	  <td>0.0929</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.1317</td>
	  <td>0.0929</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

    ========================================================
    
    Period: 1991-01-31 00:00:00 to 1999-12-31 00:00:00
    
    ========================================================

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
	  <th>Mkt-RF</th>
	  <th>SMB</th>
	  <th>HML</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>1.0000</td>
	  <td>0.1316</td>
	  <td>-0.4498</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.1316</td>
	  <td>1.0000</td>
	  <td>-0.3305</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.4498</td>
	  <td>-0.3305</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

    ========================================================
    
    Period: 1981-01-31 00:00:00 to 2022-08-31 00:00:00
    
    ========================================================

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
	  <th>Mkt-RF</th>
	  <th>SMB</th>
	  <th>HML</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>1.0000</td>
	  <td>0.2243</td>
	  <td>-0.2138</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.2243</td>
	  <td>1.0000</td>
	  <td>-0.2348</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.2138</td>
	  <td>-0.2348</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

    ========================================================
    
    Period: 1926-07-31 00:00:00 to 2022-08-31 00:00:00
    
    ========================================================

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
	  <th>Mkt-RF</th>
	  <th>SMB</th>
	  <th>HML</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>1.0000</td>
	  <td>0.3163</td>
	  <td>0.2297</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.3163</td>
	  <td>1.0000</td>
	  <td>0.1147</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.2297</td>
	  <td>0.1147</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

## 2.4

```python
display((1+facs.loc[dts['founding']]).cumprod().plot());
display((1+facs.loc[dts['recent']]).cumprod().plot());
```

    <AxesSubplot:>



    <AxesSubplot:>



    

![png](output_14_2.png)

![png](output_14_3.png)

* The plots above show that HML had high returns in the era of the case: 1981-2001.
* In the post-case period (2002-2021) HML has a negative mean return. Nonetheless, it may be valuable given that it has negative correlation to MKT during this time.
* However, SMB has small or negative returns in this period while being positively correlated to MKT. Thus, it may be reasonable to drop SMB.

## Tangency Weights of Factors

Another way to consider whether all three factors matter is to remember that if a factor prices, then by the Fundamental Theorem of Asset Pricing it must be part of the tangency portfolio.

Calculate the tangency portfolio formed by the factors. Do they all get substantial weight?

We see that SMB has very little weight in the three-factor Tangency portfolio.

Thus, we again see that SMB may be unnecessary.

```python
fig = plt.figure(figsize=(8,4))
ax1=fig.add_subplot(1,1,1)
tangency_weights(facs.loc[dts['modern']]).plot.bar(ax=ax1,title='Tangency Weights');
plt.legend([]);
```

![png](output_16_0.png)

# 3. CAPM

## 3.1

```python
# load data
rets = pd.read_excel(filepath_data,sheet_name='portfolios (total returns)')
rets.set_index('Date',inplace=True)
```

```python
# excess portfolio returns
retsx = rets.subtract(rf,axis=0)
# subsample of modern
facsT = facs.loc[dts['modern']]
retsxT = retsx.loc[dts['modern']]
```

```python
mets = performanceMetrics(retsxT,annualization=12)
tail = tailMetrics(retsxT)

display(mets.join(tail['VaR (0.05)']))
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
	  <th>VaR (0.05)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SMALL LoBM</th>
	  <td>0.0105</td>
	  <td>0.2724</td>
	  <td>0.0384</td>
	  <td>-0.3499</td>
	  <td>0.3734</td>
	  <td>-0.1165</td>
	</tr>
	<tr>
	  <th>ME1 BM2</th>
	  <td>0.0957</td>
	  <td>0.2359</td>
	  <td>0.4058</td>
	  <td>-0.3143</td>
	  <td>0.4232</td>
	  <td>-0.0976</td>
	</tr>
	<tr>
	  <th>ME1 BM3</th>
	  <td>0.0929</td>
	  <td>0.1972</td>
	  <td>0.4711</td>
	  <td>-0.2970</td>
	  <td>0.2133</td>
	  <td>-0.0864</td>
	</tr>
	<tr>
	  <th>ME1 BM4</th>
	  <td>0.1200</td>
	  <td>0.1914</td>
	  <td>0.6270</td>
	  <td>-0.2934</td>
	  <td>0.2583</td>
	  <td>-0.0752</td>
	</tr>
	<tr>
	  <th>SMALL HiBM</th>
	  <td>0.1321</td>
	  <td>0.2077</td>
	  <td>0.6361</td>
	  <td>-0.2931</td>
	  <td>0.4150</td>
	  <td>-0.0883</td>
	</tr>
	<tr>
	  <th>ME2 BM1</th>
	  <td>0.0603</td>
	  <td>0.2457</td>
	  <td>0.2453</td>
	  <td>-0.3323</td>
	  <td>0.2773</td>
	  <td>-0.1046</td>
	</tr>
	<tr>
	  <th>ME2 BM2</th>
	  <td>0.1006</td>
	  <td>0.2032</td>
	  <td>0.4953</td>
	  <td>-0.3254</td>
	  <td>0.1926</td>
	  <td>-0.0840</td>
	</tr>
	<tr>
	  <th>ME2 BM3</th>
	  <td>0.1066</td>
	  <td>0.1831</td>
	  <td>0.5824</td>
	  <td>-0.2914</td>
	  <td>0.1742</td>
	  <td>-0.0787</td>
	</tr>
	<tr>
	  <th>ME2 BM4</th>
	  <td>0.1077</td>
	  <td>0.1792</td>
	  <td>0.6012</td>
	  <td>-0.2526</td>
	  <td>0.1880</td>
	  <td>-0.0764</td>
	</tr>
	<tr>
	  <th>ME2 BM5</th>
	  <td>0.1181</td>
	  <td>0.2120</td>
	  <td>0.5571</td>
	  <td>-0.3238</td>
	  <td>0.2630</td>
	  <td>-0.0942</td>
	</tr>
	<tr>
	  <th>ME3 BM1</th>
	  <td>0.0708</td>
	  <td>0.2259</td>
	  <td>0.3135</td>
	  <td>-0.3044</td>
	  <td>0.2261</td>
	  <td>-0.1023</td>
	</tr>
	<tr>
	  <th>ME3 BM2</th>
	  <td>0.1078</td>
	  <td>0.1874</td>
	  <td>0.5753</td>
	  <td>-0.2948</td>
	  <td>0.1911</td>
	  <td>-0.0786</td>
	</tr>
	<tr>
	  <th>ME3 BM3</th>
	  <td>0.0918</td>
	  <td>0.1702</td>
	  <td>0.5392</td>
	  <td>-0.2537</td>
	  <td>0.1666</td>
	  <td>-0.0738</td>
	</tr>
	<tr>
	  <th>ME3 BM4</th>
	  <td>0.1080</td>
	  <td>0.1771</td>
	  <td>0.6097</td>
	  <td>-0.2708</td>
	  <td>0.1667</td>
	  <td>-0.0720</td>
	</tr>
	<tr>
	  <th>ME3 BM5</th>
	  <td>0.1249</td>
	  <td>0.1987</td>
	  <td>0.6282</td>
	  <td>-0.3138</td>
	  <td>0.2307</td>
	  <td>-0.0824</td>
	</tr>
	<tr>
	  <th>ME4 BM1</th>
	  <td>0.0927</td>
	  <td>0.2036</td>
	  <td>0.4551</td>
	  <td>-0.2657</td>
	  <td>0.2545</td>
	  <td>-0.0839</td>
	</tr>
	<tr>
	  <th>ME4 BM2</th>
	  <td>0.0945</td>
	  <td>0.1770</td>
	  <td>0.5341</td>
	  <td>-0.2979</td>
	  <td>0.1578</td>
	  <td>-0.0734</td>
	</tr>
	<tr>
	  <th>ME4 BM3</th>
	  <td>0.0936</td>
	  <td>0.1733</td>
	  <td>0.5402</td>
	  <td>-0.2504</td>
	  <td>0.1678</td>
	  <td>-0.0756</td>
	</tr>
	<tr>
	  <th>ME4 BM4</th>
	  <td>0.0998</td>
	  <td>0.1733</td>
	  <td>0.5756</td>
	  <td>-0.3287</td>
	  <td>0.1643</td>
	  <td>-0.0693</td>
	</tr>
	<tr>
	  <th>ME4 BM5</th>
	  <td>0.1120</td>
	  <td>0.1968</td>
	  <td>0.5693</td>
	  <td>-0.3261</td>
	  <td>0.2042</td>
	  <td>-0.0833</td>
	</tr>
	<tr>
	  <th>BIG LoBM</th>
	  <td>0.0889</td>
	  <td>0.1632</td>
	  <td>0.5447</td>
	  <td>-0.2226</td>
	  <td>0.1501</td>
	  <td>-0.0753</td>
	</tr>
	<tr>
	  <th>ME5 BM2</th>
	  <td>0.0816</td>
	  <td>0.1549</td>
	  <td>0.5271</td>
	  <td>-0.2306</td>
	  <td>0.1611</td>
	  <td>-0.0656</td>
	</tr>
	<tr>
	  <th>ME5 BM3</th>
	  <td>0.0811</td>
	  <td>0.1523</td>
	  <td>0.5324</td>
	  <td>-0.2250</td>
	  <td>0.1425</td>
	  <td>-0.0704</td>
	</tr>
	<tr>
	  <th>ME5 BM4</th>
	  <td>0.0671</td>
	  <td>0.1703</td>
	  <td>0.3943</td>
	  <td>-0.2756</td>
	  <td>0.1607</td>
	  <td>-0.0756</td>
	</tr>
	<tr>
	  <th>BIG HiBM</th>
	  <td>0.0963</td>
	  <td>0.2058</td>
	  <td>0.4681</td>
	  <td>-0.2853</td>
	  <td>0.2197</td>
	  <td>-0.0985</td>
	</tr>
  </tbody>
</table>
</div>

## Explaining premia by risk metrics

```python
lfd = get_ols_metrics(facsT['Mkt-RF'],retsxT,annualization=12)

mets['Beta'] = lfd[['Mkt-RF']]
mets['VaR'] = tail[['VaR (0.05)']]
mets['Skew'] = tail[['Skewness']]

mets.plot.scatter(x='Vol',y='Mean');
mets.plot.scatter(x='VaR',y='Mean');
mets.plot.scatter(x='Skew',y='Mean');
mets.plot.scatter(x='Beta',y='Mean');
```

![png](output_22_0.png)

![png](output_22_1.png)

![png](output_22_2.png)

![png](output_22_3.png)

## 3.2 CAPM Tests: Time-Series Metrics

```python
display(lfd)
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
	  <th>Mkt-RF</th>
	  <th>r-squared</th>
	  <th>Treynor Ratio</th>
	  <th>Info Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SMALL LoBM</th>
	  <td>-0.0987</td>
	  <td>1.3600</td>
	  <td>0.6031</td>
	  <td>0.0077</td>
	  <td>-0.5750</td>
	</tr>
	<tr>
	  <th>ME1 BM2</th>
	  <td>0.0018</td>
	  <td>1.1702</td>
	  <td>0.5954</td>
	  <td>0.0818</td>
	  <td>0.0122</td>
	</tr>
	<tr>
	  <th>ME1 BM3</th>
	  <td>0.0097</td>
	  <td>1.0365</td>
	  <td>0.6684</td>
	  <td>0.0896</td>
	  <td>0.0857</td>
	</tr>
	<tr>
	  <th>ME1 BM4</th>
	  <td>0.0425</td>
	  <td>0.9652</td>
	  <td>0.6155</td>
	  <td>0.1243</td>
	  <td>0.3585</td>
	</tr>
	<tr>
	  <th>SMALL HiBM</th>
	  <td>0.0526</td>
	  <td>0.9907</td>
	  <td>0.5506</td>
	  <td>0.1333</td>
	  <td>0.3778</td>
	</tr>
	<tr>
	  <th>ME2 BM1</th>
	  <td>-0.0475</td>
	  <td>1.3433</td>
	  <td>0.7233</td>
	  <td>0.0449</td>
	  <td>-0.3677</td>
	</tr>
	<tr>
	  <th>ME2 BM2</th>
	  <td>0.0101</td>
	  <td>1.1286</td>
	  <td>0.7468</td>
	  <td>0.0892</td>
	  <td>0.0984</td>
	</tr>
	<tr>
	  <th>ME2 BM3</th>
	  <td>0.0248</td>
	  <td>1.0193</td>
	  <td>0.7502</td>
	  <td>0.1046</td>
	  <td>0.2712</td>
	</tr>
	<tr>
	  <th>ME2 BM4</th>
	  <td>0.0303</td>
	  <td>0.9654</td>
	  <td>0.7021</td>
	  <td>0.1116</td>
	  <td>0.3094</td>
	</tr>
	<tr>
	  <th>ME2 BM5</th>
	  <td>0.0292</td>
	  <td>1.1086</td>
	  <td>0.6613</td>
	  <td>0.1066</td>
	  <td>0.2363</td>
	</tr>
	<tr>
	  <th>ME3 BM1</th>
	  <td>-0.0316</td>
	  <td>1.2767</td>
	  <td>0.7726</td>
	  <td>0.0555</td>
	  <td>-0.2936</td>
	</tr>
	<tr>
	  <th>ME3 BM2</th>
	  <td>0.0204</td>
	  <td>1.0896</td>
	  <td>0.8179</td>
	  <td>0.0990</td>
	  <td>0.2549</td>
	</tr>
	<tr>
	  <th>ME3 BM3</th>
	  <td>0.0136</td>
	  <td>0.9743</td>
	  <td>0.7926</td>
	  <td>0.0942</td>
	  <td>0.1754</td>
	</tr>
	<tr>
	  <th>ME3 BM4</th>
	  <td>0.0294</td>
	  <td>0.9797</td>
	  <td>0.7401</td>
	  <td>0.1102</td>
	  <td>0.3253</td>
	</tr>
	<tr>
	  <th>ME3 BM5</th>
	  <td>0.0413</td>
	  <td>1.0407</td>
	  <td>0.6635</td>
	  <td>0.1200</td>
	  <td>0.3586</td>
	</tr>
	<tr>
	  <th>ME4 BM1</th>
	  <td>-0.0030</td>
	  <td>1.1919</td>
	  <td>0.8289</td>
	  <td>0.0778</td>
	  <td>-0.0353</td>
	</tr>
	<tr>
	  <th>ME4 BM2</th>
	  <td>0.0093</td>
	  <td>1.0615</td>
	  <td>0.8706</td>
	  <td>0.0890</td>
	  <td>0.1465</td>
	</tr>
	<tr>
	  <th>ME4 BM3</th>
	  <td>0.0135</td>
	  <td>0.9989</td>
	  <td>0.8039</td>
	  <td>0.0937</td>
	  <td>0.1753</td>
	</tr>
	<tr>
	  <th>ME4 BM4</th>
	  <td>0.0215</td>
	  <td>0.9749</td>
	  <td>0.7655</td>
	  <td>0.1023</td>
	  <td>0.2566</td>
	</tr>
	<tr>
	  <th>ME4 BM5</th>
	  <td>0.0285</td>
	  <td>1.0410</td>
	  <td>0.6769</td>
	  <td>0.1076</td>
	  <td>0.2548</td>
	</tr>
	<tr>
	  <th>BIG LoBM</th>
	  <td>0.0092</td>
	  <td>0.9934</td>
	  <td>0.8964</td>
	  <td>0.0895</td>
	  <td>0.1748</td>
	</tr>
	<tr>
	  <th>ME5 BM2</th>
	  <td>0.0071</td>
	  <td>0.9289</td>
	  <td>0.8707</td>
	  <td>0.0879</td>
	  <td>0.1270</td>
	</tr>
	<tr>
	  <th>ME5 BM3</th>
	  <td>0.0112</td>
	  <td>0.8712</td>
	  <td>0.7916</td>
	  <td>0.0931</td>
	  <td>0.1607</td>
	</tr>
	<tr>
	  <th>ME5 BM4</th>
	  <td>-0.0052</td>
	  <td>0.9010</td>
	  <td>0.6772</td>
	  <td>0.0745</td>
	  <td>-0.0533</td>
	</tr>
	<tr>
	  <th>BIG HiBM</th>
	  <td>0.0149</td>
	  <td>1.0150</td>
	  <td>0.5886</td>
	  <td>0.0949</td>
	  <td>0.1127</td>
	</tr>
  </tbody>
</table>
</div>

If CAPM were true, then we would have the following implications:

* Treynor ratio would be the same for every asset, and it would equal the MKT premium.
* The alphas would all be zero
* The Information Ratios would all be zero

## 3.3 Cross-Sectional Test: Yes Intercept

```python
LFPtests(retsxT,facsT[['Mkt-RF']],annualization=12,useIntCS=True)
```

    Time-Series Test Plots



    

![png](output_27_1.png)

![png](output_27_2.png)

    Cross-Sectional Test Plots



    

![png](output_27_4.png)

![png](output_27_5.png)

    ESTIMATES

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
	  <th>premium-TS</th>
	  <th>premium-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.0802</td>
	  <td>-0.0982</td>
	</tr>
	<tr>
	  <th>intercept</th>
	  <td>NaN</td>
	  <td>0.1980</td>
	</tr>
  </tbody>
</table>
</div>

    MODEL FIT

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
	  <th>MAE-TS</th>
	  <th>MAE-CS</th>
	  <th>rsquared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>error</th>
	  <td>0.0243</td>
	  <td>0.0158</td>
	  <td>0.2582</td>
	</tr>
  </tbody>
</table>
</div>

    STATISTICAL SIGNIFICANCE

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
	  <th>time-series</th>
	  <th>priced</th>
	  <th>premium</th>
	</tr>
	<tr>
	  <th>p-values</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.0009</td>
	  <td>0.0005</td>
	</tr>
	<tr>
	  <th>error</th>
	  <td>0.0000</td>
	  <td>NaN</td>
	</tr>
  </tbody>
</table>
</div>

    "premium" p-value is the usual t-stat on the time-series factor mean.
    "priced" p-value of factor is the t-stat of forming the tangency portfolio.
    "priced" p-value of "error" is the joint-chi-squared test of the time-series alphas

## 3.4 

These results support the idea that the MKT premium is not sufficient for explaining all premia in the market.

Given that MKT cannot explain these assets, which are sorted by size and value, it is suggestive that there may be premia in size and value. 

But while we have ruled out MKT as being the only determinant factor, we have not proven size and value matter.

# 4.1 Fama-French 3-Factor Tests
## Time-Series Test
## Cross-Sectional Test: YES Intercept

```python
LFPtests(retsxT,facsT,annualization=12,useIntCS=True)
```

    Time-Series Test Plots



    

![png](output_30_1.png)

    Cross-Sectional Test Plots



    

![png](output_30_3.png)

    ESTIMATES

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
	  <th>premium-TS</th>
	  <th>premium-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>HML</th>
	  <td>0.0330</td>
	  <td>0.0362</td>
	</tr>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.0802</td>
	  <td>-0.0957</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0093</td>
	  <td>0.0029</td>
	</tr>
	<tr>
	  <th>intercept</th>
	  <td>NaN</td>
	  <td>0.1797</td>
	</tr>
  </tbody>
</table>
</div>

    MODEL FIT

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
	  <th>MAE-TS</th>
	  <th>MAE-CS</th>
	  <th>rsquared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>error</th>
	  <td>0.0142</td>
	  <td>0.0124</td>
	  <td>0.4665</td>
	</tr>
  </tbody>
</table>
</div>

    STATISTICAL SIGNIFICANCE

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
	  <th>time-series</th>
	  <th>priced</th>
	  <th>premium</th>
	</tr>
	<tr>
	  <th>p-values</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.0003</td>
	  <td>0.0005</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.7145</td>
	  <td>0.2811</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0067</td>
	  <td>0.0250</td>
	</tr>
	<tr>
	  <th>error</th>
	  <td>0.0000</td>
	  <td>NaN</td>
	</tr>
  </tbody>
</table>
</div>

    "premium" p-value is the usual t-stat on the time-series factor mean.
    "priced" p-value of factor is the t-stat of forming the tangency portfolio.
    "priced" p-value of "error" is the joint-chi-squared test of the time-series alphas

# 4.2 Tangency Tests
## Time-Series Test
## Cross-Sectional Test: Yes Intercept

```python
tangency = retsxT @ tangency_weights(retsxT)
tangency.columns= ['Tangency']

LFPtests(retsxT,tangency,annualization=12,useIntCS=True)
```

    Time-Series Test Plots



    

![png](output_32_1.png)

![png](output_32_2.png)

    Cross-Sectional Test Plots



    

![png](output_32_4.png)

![png](output_32_5.png)

    ESTIMATES

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
	  <th>premium-TS</th>
	  <th>premium-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Tangency</th>
	  <td>0.4046</td>
	  <td>0.4046</td>
	</tr>
	<tr>
	  <th>intercept</th>
	  <td>NaN</td>
	  <td>-0.0000</td>
	</tr>
  </tbody>
</table>
</div>

    MODEL FIT

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
	  <th>MAE-TS</th>
	  <th>MAE-CS</th>
	  <th>rsquared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>error</th>
	  <td>0.0000</td>
	  <td>0.0000</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

    STATISTICAL SIGNIFICANCE

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
	  <th>time-series</th>
	  <th>priced</th>
	  <th>premium</th>
	</tr>
	<tr>
	  <th>p-values</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Tangency</th>
	  <td>0.0000</td>
	  <td>0.0000</td>
	</tr>
	<tr>
	  <th>error</th>
	  <td>1.0000</td>
	  <td>NaN</td>
	</tr>
  </tbody>
</table>
</div>

    "premium" p-value is the usual t-stat on the time-series factor mean.
    "priced" p-value of factor is the t-stat of forming the tangency portfolio.
    "priced" p-value of "error" is the joint-chi-squared test of the time-series alphas

## 4.3 

### The MAE 

is shown in the tables above labeled as MODEL FIT.

### Joint Test of Alphas

These test stats can be found in the tables above labeled as "STATISTICAL SIGNIFICANCE" in the "error","priced" cell of the table.

We note that the p-value for CAPM is 0 to many decimal places. 

So is the p-value for Fama-French 3 Factor.

However, the p-value for the Tangency factor is 1, meaning that its errors are certainly not significant--because they are 0 to machine precision.

### Stricter test

Checking individual alphas for significance via a t-test may rule out a model.

But checking a group of alphas for joint significance via a chi-squared test is a higher hurdle for the model. Even if no individual alpha is significant, the group may be significant. We see this in that the joint test p-values for CAPM and FF are 0 to many decimals.

### Testing the Tangency

The test statistic can be viewed as the squared Sharpe Ratio of the tangency portfolio formed by alphas compared to the squared Sharpe Ratio of the model tangency portfolio (formed via the factors).

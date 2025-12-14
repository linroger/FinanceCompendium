---
aliases:
  - Predictive Regression
tags:
key_concepts:
parent_directory: FINM Quantitative Trading Strategies
cssclasses: academia
title: "Homework 6: Predictive Regression - Jingwen Li"
linter-yaml-title-alias: "Homework 6: Predictive Regression - Jingwen Li"
---

# Homework 6: Predictive Regression - Jingwen Li

```python
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import scipy as sp
import quandl
import functools
import seaborn as sns
import nasdaqdatalink as ndl
import statsmodels.api as sm
from statsmodels.api import OLS
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score
from scipy.stats import norm, pearsonr, spearmanr
from statsmodels.tsa.stattools import adfuller
import statsmodels.regression.linear_model as linreg
```

## 1. Obtaining Data

### a. read 5 year CDS rates and calculate weekly CDS return and index return

```python
df = pd.read_csv("Liq5YCDS.delim", delimiter = '\t')
df.set_index('date', inplace = True)
```

```python
df = df.iloc[:,1:]
df
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
	  <th>ticker</th>
	  <th>tenor</th>
	  <th>parspread</th>
	  <th>upfront</th>
	  <th>runningcoupon</th>
	  <th>cdsrealrecovery</th>
	  <th>cdsassumedrecovery</th>
	  <th>docclause</th>
	  <th>currency</th>
	  <th>tier</th>
	  <th>impliedrating</th>
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
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2018-01-01</th>
	  <td>BA</td>
	  <td>5Y</td>
	  <td>0.001793</td>
	  <td>-0.038914</td>
	  <td>0.01</td>
	  <td>0.400000</td>
	  <td>0.4</td>
	  <td>MR14</td>
	  <td>USD</td>
	  <td>SNRFOR</td>
	  <td>BBB</td>
	</tr>
	<tr>
	  <th>2018-01-01</th>
	  <td>C</td>
	  <td>5Y</td>
	  <td>0.004113</td>
	  <td>-0.027708</td>
	  <td>0.01</td>
	  <td>0.400000</td>
	  <td>0.4</td>
	  <td>MR14</td>
	  <td>USD</td>
	  <td>SNRFOR</td>
	  <td>A</td>
	</tr>
	<tr>
	  <th>2018-01-01</th>
	  <td>DD</td>
	  <td>5Y</td>
	  <td>0.002476</td>
	  <td>-0.035641</td>
	  <td>0.01</td>
	  <td>0.400000</td>
	  <td>0.4</td>
	  <td>MR14</td>
	  <td>USD</td>
	  <td>SNRFOR</td>
	  <td>A</td>
	</tr>
	<tr>
	  <th>2018-01-01</th>
	  <td>F</td>
	  <td>5Y</td>
	  <td>0.008805</td>
	  <td>-0.192592</td>
	  <td>0.05</td>
	  <td>0.390000</td>
	  <td>0.4</td>
	  <td>MR14</td>
	  <td>USD</td>
	  <td>SNRFOR</td>
	  <td>BB</td>
	</tr>
	<tr>
	  <th>2018-01-01</th>
	  <td>GE</td>
	  <td>5Y</td>
	  <td>0.004037</td>
	  <td>-0.028103</td>
	  <td>0.01</td>
	  <td>0.400000</td>
	  <td>0.4</td>
	  <td>MR14</td>
	  <td>USD</td>
	  <td>SNRFOR</td>
	  <td>BBB</td>
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
	  <th>2022-12-30</th>
	  <td>NFLX</td>
	  <td>5Y</td>
	  <td>0.014090</td>
	  <td>0.017825</td>
	  <td>0.01</td>
	  <td>0.396650</td>
	  <td>0.4</td>
	  <td>MR14</td>
	  <td>USD</td>
	  <td>SNRFOR</td>
	  <td>BBB</td>
	</tr>
	<tr>
	  <th>2022-12-30</th>
	  <td>T</td>
	  <td>5Y</td>
	  <td>0.011370</td>
	  <td>0.006043</td>
	  <td>0.01</td>
	  <td>0.396667</td>
	  <td>0.4</td>
	  <td>MR14</td>
	  <td>USD</td>
	  <td>SNRFOR</td>
	  <td>BBB</td>
	</tr>
	<tr>
	  <th>2022-12-30</th>
	  <td>WFC</td>
	  <td>5Y</td>
	  <td>0.008301</td>
	  <td>-0.184861</td>
	  <td>0.05</td>
	  <td>0.400000</td>
	  <td>0.4</td>
	  <td>MR14</td>
	  <td>USD</td>
	  <td>SNRFOR</td>
	  <td>A</td>
	</tr>
	<tr>
	  <th>2022-12-30</th>
	  <td>XOM</td>
	  <td>5Y</td>
	  <td>0.004110</td>
	  <td>-0.206613</td>
	  <td>0.05</td>
	  <td>0.400000</td>
	  <td>0.4</td>
	  <td>MR14</td>
	  <td>USD</td>
	  <td>SNRFOR</td>
	  <td>AA</td>
	</tr>
	<tr>
	  <th>2022-12-30</th>
	  <td>XRX</td>
	  <td>5Y</td>
	  <td>0.042346</td>
	  <td>0.128919</td>
	  <td>0.01</td>
	  <td>0.400000</td>
	  <td>0.4</td>
	  <td>MR14</td>
	  <td>USD</td>
	  <td>SNRFOR</td>
	  <td>B</td>
	</tr>
  </tbody>
</table>
<p>19116 rows × 11 columns</p>
</div>

```python
parspread = df.pivot_table(values='parspread', columns='ticker', index=df.index)
parspread.index = pd.to_datetime(parspread.index)
R_cds = parspread.resample('W-WED').last()
R_cds = R_cds.pct_change()
R_cds
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
	  <th>ticker</th>
	  <th>BA</th>
	  <th>C</th>
	  <th>DD</th>
	  <th>F</th>
	  <th>GE</th>
	  <th>JPM</th>
	  <th>LNC</th>
	  <th>LOW</th>
	  <th>LUV</th>
	  <th>MAR</th>
	  <th>NFLX</th>
	  <th>T</th>
	  <th>WFC</th>
	  <th>XOM</th>
	  <th>XRX</th>
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
	  <th>2018-01-03</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2018-01-10</th>
	  <td>-0.057555</td>
	  <td>-0.002449</td>
	  <td>0.012286</td>
	  <td>0.017203</td>
	  <td>0.009527</td>
	  <td>0.028725</td>
	  <td>-0.021380</td>
	  <td>-0.073064</td>
	  <td>0.045735</td>
	  <td>0.036897</td>
	  <td>NaN</td>
	  <td>-0.000253</td>
	  <td>0.002160</td>
	  <td>-0.011199</td>
	  <td>-0.100206</td>
	</tr>
	<tr>
	  <th>2018-01-17</th>
	  <td>0.090416</td>
	  <td>-0.004649</td>
	  <td>0.046848</td>
	  <td>0.093586</td>
	  <td>0.154969</td>
	  <td>-0.020475</td>
	  <td>0.010851</td>
	  <td>0.449611</td>
	  <td>0.069635</td>
	  <td>0.137440</td>
	  <td>NaN</td>
	  <td>0.000701</td>
	  <td>0.003072</td>
	  <td>-0.019352</td>
	  <td>-0.208152</td>
	</tr>
	<tr>
	  <th>2018-01-24</th>
	  <td>0.004652</td>
	  <td>0.006147</td>
	  <td>0.059232</td>
	  <td>0.074893</td>
	  <td>0.256980</td>
	  <td>-0.000440</td>
	  <td>0.001468</td>
	  <td>0.206392</td>
	  <td>0.073706</td>
	  <td>0.010891</td>
	  <td>NaN</td>
	  <td>-0.001168</td>
	  <td>-0.011792</td>
	  <td>-0.031147</td>
	  <td>0.117619</td>
	</tr>
	<tr>
	  <th>2018-01-31</th>
	  <td>-0.016092</td>
	  <td>-0.018857</td>
	  <td>0.037755</td>
	  <td>0.026133</td>
	  <td>-0.007615</td>
	  <td>-0.020960</td>
	  <td>-0.002848</td>
	  <td>0.061483</td>
	  <td>0.030513</td>
	  <td>-0.071606</td>
	  <td>NaN</td>
	  <td>0.000574</td>
	  <td>-0.008457</td>
	  <td>0.003994</td>
	  <td>-0.448593</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>0.029472</td>
	  <td>0.043013</td>
	  <td>0.070689</td>
	  <td>0.078495</td>
	  <td>0.067518</td>
	  <td>0.048463</td>
	  <td>-0.001796</td>
	  <td>0.070621</td>
	  <td>0.047890</td>
	  <td>0.042948</td>
	  <td>0.085617</td>
	  <td>-0.012027</td>
	  <td>0.052216</td>
	  <td>0.000723</td>
	  <td>0.021388</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>-0.075277</td>
	  <td>-0.066410</td>
	  <td>-0.128885</td>
	  <td>-0.003357</td>
	  <td>-0.066738</td>
	  <td>-0.054943</td>
	  <td>0.003431</td>
	  <td>-0.108076</td>
	  <td>-0.082289</td>
	  <td>-0.077516</td>
	  <td>-0.089302</td>
	  <td>-0.017441</td>
	  <td>-0.054341</td>
	  <td>0.000176</td>
	  <td>-0.077466</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.090760</td>
	  <td>0.082415</td>
	  <td>0.120199</td>
	  <td>0.089722</td>
	  <td>0.137151</td>
	  <td>0.099092</td>
	  <td>0.174270</td>
	  <td>0.058703</td>
	  <td>0.090155</td>
	  <td>0.102110</td>
	  <td>0.146294</td>
	  <td>0.008605</td>
	  <td>0.102911</td>
	  <td>-0.000313</td>
	  <td>0.059923</td>
	</tr>
	<tr>
	  <th>2022-12-28</th>
	  <td>-0.008857</td>
	  <td>-0.016776</td>
	  <td>-0.009367</td>
	  <td>0.031840</td>
	  <td>-0.019421</td>
	  <td>-0.014322</td>
	  <td>0.010380</td>
	  <td>0.020386</td>
	  <td>0.139648</td>
	  <td>-0.010088</td>
	  <td>0.032487</td>
	  <td>0.010556</td>
	  <td>-0.008304</td>
	  <td>0.010534</td>
	  <td>0.013980</td>
	</tr>
	<tr>
	  <th>2023-01-04</th>
	  <td>-0.007510</td>
	  <td>-0.000483</td>
	  <td>-0.000701</td>
	  <td>0.007109</td>
	  <td>0.006363</td>
	  <td>0.006371</td>
	  <td>0.003065</td>
	  <td>-0.004732</td>
	  <td>0.007787</td>
	  <td>0.013447</td>
	  <td>0.004029</td>
	  <td>0.000281</td>
	  <td>0.008787</td>
	  <td>0.010353</td>
	  <td>-0.002516</td>
	</tr>
  </tbody>
</table>
<p>262 rows × 15 columns</p>
</div>

```python
R_index = R_cds.mean(axis=1).to_frame('cds_index')
R_index
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
	  <th>cds_index</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2018-01-03</th>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2018-01-10</th>
	  <td>-0.008112</td>
	</tr>
	<tr>
	  <th>2018-01-17</th>
	  <td>0.057464</td>
	</tr>
	<tr>
	  <th>2018-01-24</th>
	  <td>0.054817</td>
	</tr>
	<tr>
	  <th>2018-01-31</th>
	  <td>-0.031041</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>0.043015</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>-0.059896</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.090800</td>
	</tr>
	<tr>
	  <th>2022-12-28</th>
	  <td>0.012178</td>
	</tr>
	<tr>
	  <th>2023-01-04</th>
	  <td>0.003443</td>
	</tr>
  </tbody>
</table>
<p>262 rows × 1 columns</p>
</div>

### b. load the corresponding adjusted close prices for the corresponding equity and SPY, and calculate the weekly return

```python
df_prices = pd.DataFrame()

quandl.ApiConfig.api_key = "key"

sdate, edate = '2017-12-31', '2023-02-15'

tickers = ['BA','C','DD','F','GE','JPM','LNC','LOW','LUV','MAR','NFLX','T','WFC','XOM','XRX','SPY']

for i in tickers:
    data = quandl.get_table("QUOTEMEDIA/PRICES", qopts = { 'columns': ['date', 'adj_close']}, date = { 'gte': sdate, 'lte': edate }, ticker=i)
    data = data.rename(columns={'adj_close': i})
    data = data.set_index('date')
    data.index = pd.to_datetime(data.index)
    
    if df_prices.empty:
        df_prices = data
    else:
        try:
            df_prices = pd.concat([df_prices, data], axis=1, verify_integrity=True)
        except ValueError as e:
            print(f"Error: Indices do not line up in data for ticker {i}.")
            raise e

df_prices = df_prices.iloc[::-1]
```

```python
df_prices = df_prices.resample('W-WED').last()
df_ret = df_prices.pct_change()
R_equity = df_ret.iloc[:,:-1]
R_equity
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
	  <th>BA</th>
	  <th>C</th>
	  <th>DD</th>
	  <th>F</th>
	  <th>GE</th>
	  <th>JPM</th>
	  <th>LNC</th>
	  <th>LOW</th>
	  <th>LUV</th>
	  <th>MAR</th>
	  <th>NFLX</th>
	  <th>T</th>
	  <th>WFC</th>
	  <th>XOM</th>
	  <th>XRX</th>
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
	  <th>2018-01-03</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2018-01-10</th>
	  <td>0.075420</td>
	  <td>0.014211</td>
	  <td>0.015743</td>
	  <td>0.021160</td>
	  <td>0.042920</td>
	  <td>0.025506</td>
	  <td>0.071882</td>
	  <td>0.023364</td>
	  <td>-0.030042</td>
	  <td>0.009161</td>
	  <td>0.036430</td>
	  <td>-0.014385</td>
	  <td>0.025341</td>
	  <td>-0.007151</td>
	  <td>0.034777</td>
	</tr>
	<tr>
	  <th>2018-01-17</th>
	  <td>0.096016</td>
	  <td>0.024058</td>
	  <td>0.021159</td>
	  <td>-0.065234</td>
	  <td>-0.083417</td>
	  <td>0.024853</td>
	  <td>0.002295</td>
	  <td>0.079749</td>
	  <td>0.049396</td>
	  <td>0.031227</td>
	  <td>0.023433</td>
	  <td>0.006281</td>
	  <td>0.012041</td>
	  <td>0.022305</td>
	  <td>0.051730</td>
	</tr>
	<tr>
	  <th>2018-01-24</th>
	  <td>-0.046494</td>
	  <td>0.025558</td>
	  <td>0.003167</td>
	  <td>-0.010673</td>
	  <td>-0.052450</td>
	  <td>0.023719</td>
	  <td>0.004338</td>
	  <td>0.053585</td>
	  <td>-0.058423</td>
	  <td>0.016831</td>
	  <td>0.201379</td>
	  <td>0.004613</td>
	  <td>0.025047</td>
	  <td>0.006023</td>
	  <td>0.013784</td>
	</tr>
	<tr>
	  <th>2018-01-31</th>
	  <td>0.058801</td>
	  <td>-0.012209</td>
	  <td>-0.005657</td>
	  <td>-0.066703</td>
	  <td>-0.016423</td>
	  <td>0.000000</td>
	  <td>-0.006479</td>
	  <td>-0.018647</td>
	  <td>-0.022665</td>
	  <td>0.020431</td>
	  <td>0.034443</td>
	  <td>0.011615</td>
	  <td>0.004582</td>
	  <td>-0.013894</td>
	  <td>0.054697</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2023-01-18</th>
	  <td>0.006634</td>
	  <td>0.014781</td>
	  <td>-0.022964</td>
	  <td>-0.061271</td>
	  <td>0.020337</td>
	  <td>-0.021915</td>
	  <td>-0.054897</td>
	  <td>-0.000431</td>
	  <td>0.009174</td>
	  <td>0.008330</td>
	  <td>-0.002842</td>
	  <td>-0.020093</td>
	  <td>0.014974</td>
	  <td>-0.006824</td>
	  <td>0.011446</td>
	</tr>
	<tr>
	  <th>2023-01-25</th>
	  <td>0.015615</td>
	  <td>0.049970</td>
	  <td>0.004783</td>
	  <td>0.030620</td>
	  <td>0.019175</td>
	  <td>0.018672</td>
	  <td>0.082508</td>
	  <td>-0.006434</td>
	  <td>0.015702</td>
	  <td>0.078478</td>
	  <td>0.127570</td>
	  <td>0.073607</td>
	  <td>0.045182</td>
	  <td>0.023506</td>
	  <td>0.037522</td>
	</tr>
	<tr>
	  <th>2023-02-01</th>
	  <td>0.009733</td>
	  <td>0.004817</td>
	  <td>0.008296</td>
	  <td>0.078186</td>
	  <td>0.018938</td>
	  <td>0.003378</td>
	  <td>0.050915</td>
	  <td>0.036146</td>
	  <td>-0.033632</td>
	  <td>0.017583</td>
	  <td>-0.016225</td>
	  <td>-0.011753</td>
	  <td>0.043891</td>
	  <td>0.013515</td>
	  <td>-0.041332</td>
	</tr>
	<tr>
	  <th>2023-02-08</th>
	  <td>-0.005821</td>
	  <td>-0.009358</td>
	  <td>0.037227</td>
	  <td>-0.026831</td>
	  <td>-0.004373</td>
	  <td>0.021850</td>
	  <td>0.024949</td>
	  <td>-0.003746</td>
	  <td>-0.009262</td>
	  <td>-0.007698</td>
	  <td>0.013371</td>
	  <td>-0.050545</td>
	  <td>0.025913</td>
	  <td>-0.007147</td>
	  <td>0.000000</td>
	</tr>
	<tr>
	  <th>2023-02-15</th>
	  <td>0.018454</td>
	  <td>0.013099</td>
	  <td>-0.007282</td>
	  <td>0.024036</td>
	  <td>0.034285</td>
	  <td>0.008132</td>
	  <td>-0.009624</td>
	  <td>0.010669</td>
	  <td>0.011898</td>
	  <td>0.037814</td>
	  <td>-0.014748</td>
	  <td>0.004697</td>
	  <td>-0.005803</td>
	  <td>0.026744</td>
	  <td>0.024551</td>
	</tr>
  </tbody>
</table>
<p>268 rows × 15 columns</p>
</div>

```python
R_spy = df_ret.iloc[:,-1:]
R_spy
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
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2018-01-03</th>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2018-01-10</th>
	  <td>0.013495</td>
	</tr>
	<tr>
	  <th>2018-01-17</th>
	  <td>0.020028</td>
	</tr>
	<tr>
	  <th>2018-01-24</th>
	  <td>0.012768</td>
	</tr>
	<tr>
	  <th>2018-01-31</th>
	  <td>-0.004520</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2023-01-18</th>
	  <td>-0.010189</td>
	</tr>
	<tr>
	  <th>2023-01-25</th>
	  <td>0.022631</td>
	</tr>
	<tr>
	  <th>2023-02-01</th>
	  <td>0.026102</td>
	</tr>
	<tr>
	  <th>2023-02-08</th>
	  <td>-0.000365</td>
	</tr>
	<tr>
	  <th>2023-02-15</th>
	  <td>0.008109</td>
	</tr>
  </tbody>
</table>
<p>268 rows × 1 columns</p>
</div>

```python
df_return = df_ret.merge(R_cds, left_index=True, right_index=True, suffixes=["_eq","_cds"])
returns = df_return.merge(R_index, left_index=True, right_index=True)
```

### c. plot both cds return and equity return, and correlation

```python
R_cds.plot(figsize=(16, 6))
plt.title('CDS spread return')
```

    Text(0.5, 1.0, 'CDS spread return')




    

![png](output_13_1.png)

```python
R_equity.plot(figsize=(16, 6))
plt.title('Stock return')
```

    Text(0.5, 1.0, 'Stock return')




    

![png](output_14_1.png)

```python

corr1 = df_return.corr().iloc[:16,16:]
plt.figure(figsize=(16, 6))
heatmap = sns.heatmap(corr1,  vmin=-1, vmax=1, annot=True, cmap='coolwarm')
plt.xlabel('CDS Return')
plt.ylabel('Stock Return')
heatmap.set_title('CDS Return and Equity Return Correlation Heatmap', fontdict={'fontsize':12}, pad=12);
```

![png](output_15_0.png)

Comment:

From the correlations heatmap we can see that there is a weak linear relationship between the two returns. A correlation coefficient between -0.72 and 0 indicates that the two variables are negatively correlated. A general negative correlation coefficient indicates that they tend to move in opposite directions. 

This makes sense, since when a company performs well, investors are likely to have greater confidence in the company's ability to meet its financial obligations, such as paying its debts. This can lead to a lower perceived risk of default, which in turn can lead to a lower CDS spread (i.e., a smaller return on CDS). Conversely, if a company's financial health is perceived to be deteriorating, investors may view it as more risky, and demand a higher return on CDS to compensate for this perceived risk.

The stock return and CDS spread are both influenced by the company's financial health, but they measure different aspects of it. The stock return reflects the market's expectations of the company's future profitability, growth prospects, and overall financial performance. The CDS spread, on the other hand, measures the perceived risk of default on the company's debt obligations.

## 2. Models

### 2.1.a. Boxcar regression:
#### $ r_{E}^{CDS} ∼ r_{E}^{Equity} + r_{CDS}^{Index} + \epsilon $

```python
# Boxcar Regression Function
tickers_eq = tickers[:-1]
def boxcar_reg(returns, tickers_eq, window=16):
    boxcar_coeffs = pd.DataFrame(index=returns.index[window:])
    for ticker in tickers_eq:
        ticker_returns = returns[[str(ticker) + "_eq", str(ticker) + "_cds", "cds_index"]]
        for i in range(window, returns.shape[0]):
            x = ticker_returns.loc[returns.index[i-window:i], [str(ticker) + "_eq", "cds_index"]]
            y = ticker_returns.loc[returns.index[i-window:i], str(ticker) + "_cds"]
            mask = ~(y.isna() | x.isna()).any(axis=1)
            Y_clean = y.loc[mask]
            x_clean = x.loc[mask]
            results = OLS(Y_clean, x_clean).fit(params_only=True).params
            boxcar_coeffs.loc[returns.index[i-1], str(ticker) + "_cds_eq"] = results[0]
            boxcar_coeffs.loc[returns.index[i-1], str(ticker) + "_cds_index"] = results[1]
    return boxcar_coeffs[:-2]
```

```python
boxcar_coeffs = boxcar_reg(returns, tickers_eq)
boxcar_coeffs.round(2)
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
	  <th>BA_cds_eq</th>
	  <th>BA_cds_index</th>
	  <th>C_cds_eq</th>
	  <th>C_cds_index</th>
	  <th>DD_cds_eq</th>
	  <th>DD_cds_index</th>
	  <th>F_cds_eq</th>
	  <th>F_cds_index</th>
	  <th>GE_cds_eq</th>
	  <th>GE_cds_index</th>
	  <th>…</th>
	  <th>NFLX_cds_eq</th>
	  <th>NFLX_cds_index</th>
	  <th>T_cds_eq</th>
	  <th>T_cds_index</th>
	  <th>WFC_cds_eq</th>
	  <th>WFC_cds_index</th>
	  <th>XOM_cds_eq</th>
	  <th>XOM_cds_index</th>
	  <th>XRX_cds_eq</th>
	  <th>XRX_cds_index</th>
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
	  <th>2018-04-25</th>
	  <td>0.03</td>
	  <td>1.45</td>
	  <td>-0.08</td>
	  <td>0.93</td>
	  <td>-0.04</td>
	  <td>1.59</td>
	  <td>-0.57</td>
	  <td>0.76</td>
	  <td>-0.94</td>
	  <td>1.05</td>
	  <td>…</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.47</td>
	  <td>-0.07</td>
	  <td>-0.32</td>
	  <td>0.81</td>
	  <td>-0.04</td>
	  <td>0.13</td>
	  <td>-1.98</td>
	  <td>0.64</td>
	</tr>
	<tr>
	  <th>2018-05-02</th>
	  <td>0.21</td>
	  <td>1.44</td>
	  <td>-0.04</td>
	  <td>0.92</td>
	  <td>-0.11</td>
	  <td>1.52</td>
	  <td>-0.63</td>
	  <td>0.76</td>
	  <td>-1.15</td>
	  <td>0.96</td>
	  <td>…</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.00</td>
	  <td>-0.10</td>
	  <td>-0.33</td>
	  <td>0.78</td>
	  <td>-0.02</td>
	  <td>0.12</td>
	  <td>-2.47</td>
	  <td>0.73</td>
	</tr>
	<tr>
	  <th>2018-05-09</th>
	  <td>0.29</td>
	  <td>1.47</td>
	  <td>-0.13</td>
	  <td>0.97</td>
	  <td>0.08</td>
	  <td>1.60</td>
	  <td>-0.65</td>
	  <td>0.73</td>
	  <td>-1.00</td>
	  <td>0.97</td>
	  <td>…</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>-0.01</td>
	  <td>-0.11</td>
	  <td>-0.38</td>
	  <td>0.83</td>
	  <td>0.01</td>
	  <td>0.15</td>
	  <td>-1.59</td>
	  <td>1.25</td>
	</tr>
	<tr>
	  <th>2018-05-16</th>
	  <td>0.16</td>
	  <td>1.46</td>
	  <td>0.02</td>
	  <td>1.05</td>
	  <td>-0.06</td>
	  <td>1.55</td>
	  <td>-0.62</td>
	  <td>0.71</td>
	  <td>-0.55</td>
	  <td>0.89</td>
	  <td>…</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.00</td>
	  <td>-0.11</td>
	  <td>-0.31</td>
	  <td>0.88</td>
	  <td>0.12</td>
	  <td>0.23</td>
	  <td>-1.60</td>
	  <td>1.42</td>
	</tr>
	<tr>
	  <th>2018-05-23</th>
	  <td>0.08</td>
	  <td>1.45</td>
	  <td>0.03</td>
	  <td>1.06</td>
	  <td>0.03</td>
	  <td>1.62</td>
	  <td>-0.58</td>
	  <td>0.70</td>
	  <td>-0.40</td>
	  <td>0.92</td>
	  <td>…</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.01</td>
	  <td>-0.11</td>
	  <td>-0.31</td>
	  <td>0.90</td>
	  <td>0.13</td>
	  <td>0.24</td>
	  <td>-0.47</td>
	  <td>1.73</td>
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
	  <th>2022-11-30</th>
	  <td>-0.21</td>
	  <td>1.16</td>
	  <td>-0.30</td>
	  <td>1.00</td>
	  <td>-0.04</td>
	  <td>1.09</td>
	  <td>0.13</td>
	  <td>1.54</td>
	  <td>-0.72</td>
	  <td>0.78</td>
	  <td>…</td>
	  <td>-0.23</td>
	  <td>1.11</td>
	  <td>0.04</td>
	  <td>0.34</td>
	  <td>0.08</td>
	  <td>1.17</td>
	  <td>1.40</td>
	  <td>0.98</td>
	  <td>-0.58</td>
	  <td>0.54</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>-0.21</td>
	  <td>1.14</td>
	  <td>-0.18</td>
	  <td>1.06</td>
	  <td>-0.02</td>
	  <td>1.12</td>
	  <td>0.03</td>
	  <td>1.48</td>
	  <td>-0.76</td>
	  <td>0.78</td>
	  <td>…</td>
	  <td>-0.22</td>
	  <td>1.14</td>
	  <td>0.03</td>
	  <td>0.32</td>
	  <td>0.05</td>
	  <td>1.16</td>
	  <td>1.31</td>
	  <td>0.98</td>
	  <td>-0.49</td>
	  <td>0.56</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>-0.24</td>
	  <td>0.92</td>
	  <td>-0.21</td>
	  <td>1.14</td>
	  <td>0.08</td>
	  <td>1.35</td>
	  <td>-0.17</td>
	  <td>1.18</td>
	  <td>-0.63</td>
	  <td>0.95</td>
	  <td>…</td>
	  <td>-0.23</td>
	  <td>1.21</td>
	  <td>0.03</td>
	  <td>0.32</td>
	  <td>0.03</td>
	  <td>1.21</td>
	  <td>0.51</td>
	  <td>0.32</td>
	  <td>-0.57</td>
	  <td>0.63</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>-0.21</td>
	  <td>1.01</td>
	  <td>-0.27</td>
	  <td>1.03</td>
	  <td>0.10</td>
	  <td>1.34</td>
	  <td>0.12</td>
	  <td>1.43</td>
	  <td>-0.55</td>
	  <td>1.13</td>
	  <td>…</td>
	  <td>-0.23</td>
	  <td>1.29</td>
	  <td>0.02</td>
	  <td>0.28</td>
	  <td>0.02</td>
	  <td>1.17</td>
	  <td>0.39</td>
	  <td>0.15</td>
	  <td>-0.47</td>
	  <td>0.60</td>
	</tr>
	<tr>
	  <th>2022-12-28</th>
	  <td>-0.22</td>
	  <td>0.99</td>
	  <td>-0.28</td>
	  <td>1.02</td>
	  <td>0.11</td>
	  <td>1.33</td>
	  <td>0.04</td>
	  <td>1.37</td>
	  <td>-0.54</td>
	  <td>1.11</td>
	  <td>…</td>
	  <td>-0.23</td>
	  <td>1.29</td>
	  <td>0.07</td>
	  <td>0.32</td>
	  <td>0.01</td>
	  <td>1.16</td>
	  <td>0.41</td>
	  <td>0.17</td>
	  <td>-0.41</td>
	  <td>0.64</td>
	</tr>
  </tbody>
</table>
<p>245 rows × 30 columns</p>
</div>

### 2.1.b. Predict CDS spread return using coefficients from Boxcar Regression
#### $ f_{E,n} = \beta_{E,Equity}^{(n)} \cdot r_{E,n}^{Equity}  + \beta_{E,Index}^{(n)} \cdot r_{n}^{Index} $

```python
coe_cds_eq = boxcar_coeffs.iloc[:,::2]
coe_cds_eq.columns = tickers_eq
coe_cds_idx = boxcar_coeffs.iloc[:,1::2]
coe_cds_idx.columns = tickers_eq
r_eq = R_equity['2018-04-25':'2022-12-28']
r_index = pd.concat([R_index['2018-04-25':'2022-12-28']] * 15, axis=1)
r_index.columns = tickers_eq
```

```python
pred_cds = coe_cds_eq * r_eq + coe_cds_idx * r_index
pred_cds.round(3)
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
	  <th>BA</th>
	  <th>C</th>
	  <th>DD</th>
	  <th>F</th>
	  <th>GE</th>
	  <th>JPM</th>
	  <th>LNC</th>
	  <th>LOW</th>
	  <th>LUV</th>
	  <th>MAR</th>
	  <th>NFLX</th>
	  <th>T</th>
	  <th>WFC</th>
	  <th>XOM</th>
	  <th>XRX</th>
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
	  <th>2018-04-25</th>
	  <td>0.054</td>
	  <td>0.035</td>
	  <td>0.062</td>
	  <td>0.032</td>
	  <td>0.012</td>
	  <td>0.027</td>
	  <td>0.025</td>
	  <td>-0.005</td>
	  <td>0.043</td>
	  <td>0.061</td>
	  <td>NaN</td>
	  <td>-0.003</td>
	  <td>0.013</td>
	  <td>0.005</td>
	  <td>-0.000</td>
	</tr>
	<tr>
	  <th>2018-05-02</th>
	  <td>0.054</td>
	  <td>0.042</td>
	  <td>0.069</td>
	  <td>0.029</td>
	  <td>0.033</td>
	  <td>0.045</td>
	  <td>0.029</td>
	  <td>0.112</td>
	  <td>0.045</td>
	  <td>0.077</td>
	  <td>NaN</td>
	  <td>-0.005</td>
	  <td>0.041</td>
	  <td>0.006</td>
	  <td>0.135</td>
	</tr>
	<tr>
	  <th>2018-05-09</th>
	  <td>-0.015</td>
	  <td>-0.030</td>
	  <td>-0.033</td>
	  <td>-0.008</td>
	  <td>-0.053</td>
	  <td>-0.050</td>
	  <td>-0.017</td>
	  <td>-0.028</td>
	  <td>-0.017</td>
	  <td>-0.047</td>
	  <td>NaN</td>
	  <td>0.003</td>
	  <td>-0.033</td>
	  <td>-0.003</td>
	  <td>0.002</td>
	</tr>
	<tr>
	  <th>2018-05-16</th>
	  <td>0.053</td>
	  <td>0.039</td>
	  <td>0.056</td>
	  <td>0.007</td>
	  <td>0.017</td>
	  <td>0.033</td>
	  <td>0.029</td>
	  <td>0.023</td>
	  <td>0.025</td>
	  <td>0.039</td>
	  <td>NaN</td>
	  <td>-0.004</td>
	  <td>0.025</td>
	  <td>0.013</td>
	  <td>0.068</td>
	</tr>
	<tr>
	  <th>2018-05-23</th>
	  <td>0.017</td>
	  <td>0.008</td>
	  <td>0.013</td>
	  <td>0.004</td>
	  <td>0.030</td>
	  <td>0.011</td>
	  <td>0.011</td>
	  <td>-0.044</td>
	  <td>0.012</td>
	  <td>0.023</td>
	  <td>NaN</td>
	  <td>-0.001</td>
	  <td>0.001</td>
	  <td>0.002</td>
	  <td>0.023</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>-0.023</td>
	  <td>-0.017</td>
	  <td>-0.017</td>
	  <td>-0.025</td>
	  <td>0.003</td>
	  <td>-0.018</td>
	  <td>-0.010</td>
	  <td>-0.014</td>
	  <td>-0.026</td>
	  <td>-0.015</td>
	  <td>-0.028</td>
	  <td>-0.005</td>
	  <td>-0.017</td>
	  <td>-0.043</td>
	  <td>-0.029</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>0.052</td>
	  <td>0.059</td>
	  <td>0.048</td>
	  <td>0.062</td>
	  <td>0.042</td>
	  <td>0.048</td>
	  <td>0.093</td>
	  <td>0.041</td>
	  <td>0.051</td>
	  <td>0.042</td>
	  <td>0.047</td>
	  <td>0.014</td>
	  <td>0.044</td>
	  <td>-0.048</td>
	  <td>0.040</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>-0.071</td>
	  <td>-0.074</td>
	  <td>-0.081</td>
	  <td>-0.076</td>
	  <td>-0.032</td>
	  <td>-0.072</td>
	  <td>0.046</td>
	  <td>-0.061</td>
	  <td>-0.051</td>
	  <td>-0.057</td>
	  <td>-0.079</td>
	  <td>-0.020</td>
	  <td>-0.073</td>
	  <td>-0.006</td>
	  <td>-0.057</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.083</td>
	  <td>0.101</td>
	  <td>0.120</td>
	  <td>0.115</td>
	  <td>0.093</td>
	  <td>0.102</td>
	  <td>0.096</td>
	  <td>0.087</td>
	  <td>0.089</td>
	  <td>0.089</td>
	  <td>0.132</td>
	  <td>0.025</td>
	  <td>0.106</td>
	  <td>0.020</td>
	  <td>0.097</td>
	</tr>
	<tr>
	  <th>2022-12-28</th>
	  <td>0.020</td>
	  <td>0.014</td>
	  <td>0.015</td>
	  <td>0.014</td>
	  <td>0.020</td>
	  <td>0.013</td>
	  <td>0.026</td>
	  <td>0.012</td>
	  <td>0.096</td>
	  <td>0.014</td>
	  <td>0.032</td>
	  <td>0.004</td>
	  <td>0.014</td>
	  <td>0.003</td>
	  <td>0.021</td>
	</tr>
  </tbody>
</table>
<p>245 rows × 15 columns</p>
</div>

### 2.1.c. Calculate cds spread residual return
#### $\rho_{E,n} = r_{E,n}^{CDS} - f_{E,n}$

```python
rsd_cds = R_cds['2018-04-25':'2022-12-28'] - pred_cds
rsd_cds.round(3)
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
	  <th>ticker</th>
	  <th>BA</th>
	  <th>C</th>
	  <th>DD</th>
	  <th>F</th>
	  <th>GE</th>
	  <th>JPM</th>
	  <th>LNC</th>
	  <th>LOW</th>
	  <th>LUV</th>
	  <th>MAR</th>
	  <th>NFLX</th>
	  <th>T</th>
	  <th>WFC</th>
	  <th>XOM</th>
	  <th>XRX</th>
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
	  <th>2018-04-25</th>
	  <td>-0.005</td>
	  <td>0.007</td>
	  <td>-0.019</td>
	  <td>0.013</td>
	  <td>-0.095</td>
	  <td>0.039</td>
	  <td>0.018</td>
	  <td>0.111</td>
	  <td>0.027</td>
	  <td>0.034</td>
	  <td>NaN</td>
	  <td>-0.001</td>
	  <td>0.043</td>
	  <td>-0.006</td>
	  <td>-0.002</td>
	</tr>
	<tr>
	  <th>2018-05-02</th>
	  <td>-0.018</td>
	  <td>-0.028</td>
	  <td>-0.068</td>
	  <td>-0.005</td>
	  <td>-0.047</td>
	  <td>-0.038</td>
	  <td>-0.024</td>
	  <td>-0.070</td>
	  <td>-0.040</td>
	  <td>-0.077</td>
	  <td>NaN</td>
	  <td>0.008</td>
	  <td>-0.035</td>
	  <td>-0.016</td>
	  <td>0.382</td>
	</tr>
	<tr>
	  <th>2018-05-09</th>
	  <td>-0.002</td>
	  <td>-0.042</td>
	  <td>0.027</td>
	  <td>0.051</td>
	  <td>0.058</td>
	  <td>-0.041</td>
	  <td>0.051</td>
	  <td>0.008</td>
	  <td>0.017</td>
	  <td>0.057</td>
	  <td>NaN</td>
	  <td>-0.001</td>
	  <td>-0.066</td>
	  <td>-0.010</td>
	  <td>-0.091</td>
	</tr>
	<tr>
	  <th>2018-05-16</th>
	  <td>-0.068</td>
	  <td>0.021</td>
	  <td>-0.057</td>
	  <td>-0.002</td>
	  <td>-0.042</td>
	  <td>0.008</td>
	  <td>-0.025</td>
	  <td>-0.040</td>
	  <td>-0.025</td>
	  <td>-0.082</td>
	  <td>NaN</td>
	  <td>0.004</td>
	  <td>-0.009</td>
	  <td>0.019</td>
	  <td>0.393</td>
	</tr>
	<tr>
	  <th>2018-05-23</th>
	  <td>-0.006</td>
	  <td>0.002</td>
	  <td>-0.003</td>
	  <td>-0.048</td>
	  <td>-0.030</td>
	  <td>-0.017</td>
	  <td>0.015</td>
	  <td>0.031</td>
	  <td>-0.001</td>
	  <td>0.020</td>
	  <td>NaN</td>
	  <td>0.002</td>
	  <td>-0.001</td>
	  <td>0.006</td>
	  <td>0.038</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>0.050</td>
	  <td>-0.032</td>
	  <td>0.016</td>
	  <td>-0.001</td>
	  <td>0.018</td>
	  <td>-0.007</td>
	  <td>-0.017</td>
	  <td>0.037</td>
	  <td>-0.001</td>
	  <td>-0.017</td>
	  <td>0.013</td>
	  <td>-0.062</td>
	  <td>-0.016</td>
	  <td>0.054</td>
	  <td>0.015</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>-0.022</td>
	  <td>-0.016</td>
	  <td>0.022</td>
	  <td>0.016</td>
	  <td>0.025</td>
	  <td>0.000</td>
	  <td>-0.095</td>
	  <td>0.030</td>
	  <td>-0.003</td>
	  <td>0.001</td>
	  <td>0.039</td>
	  <td>-0.026</td>
	  <td>0.008</td>
	  <td>0.049</td>
	  <td>-0.018</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>-0.004</td>
	  <td>0.008</td>
	  <td>-0.048</td>
	  <td>0.073</td>
	  <td>-0.035</td>
	  <td>0.017</td>
	  <td>-0.043</td>
	  <td>-0.047</td>
	  <td>-0.031</td>
	  <td>-0.020</td>
	  <td>-0.010</td>
	  <td>0.002</td>
	  <td>0.018</td>
	  <td>0.006</td>
	  <td>-0.020</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.008</td>
	  <td>-0.018</td>
	  <td>0.001</td>
	  <td>-0.025</td>
	  <td>0.045</td>
	  <td>-0.003</td>
	  <td>0.078</td>
	  <td>-0.028</td>
	  <td>0.002</td>
	  <td>0.013</td>
	  <td>0.015</td>
	  <td>-0.016</td>
	  <td>-0.003</td>
	  <td>-0.020</td>
	  <td>-0.038</td>
	</tr>
	<tr>
	  <th>2022-12-28</th>
	  <td>-0.029</td>
	  <td>-0.030</td>
	  <td>-0.025</td>
	  <td>0.018</td>
	  <td>-0.040</td>
	  <td>-0.028</td>
	  <td>-0.016</td>
	  <td>0.008</td>
	  <td>0.043</td>
	  <td>-0.024</td>
	  <td>0.001</td>
	  <td>0.006</td>
	  <td>-0.022</td>
	  <td>0.007</td>
	  <td>-0.007</td>
	</tr>
  </tbody>
</table>
<p>245 rows × 15 columns</p>
</div>

### 2.1.d. Plot Prediction and Residual

```python
pred_cds.T.mean().plot(figsize=(16, 6), label='prediction')
R_cds.T.mean().plot(label='actual')
rsd_cds.T.mean().plot(linewidth=3, label='residual', color='white')
plt.title('Prediction VS Actual')
plt.gca().set_facecolor('lightgray')
plt.grid(True)
plt.legend(loc='upper left')
plt.show()
```

![png](output_27_0.png)

### 2.2.a. CAPM:
#### $ r_{E}^{Equity} ∼ r^{mkt} + \epsilon $

```python
tickers_eq = tickers[:-1]
def cpam_reg(returns, tickers_eq, window=16):
    beta = pd.DataFrame(index=returns.index[window:])
    for ticker in tickers_eq:
        ticker_returns = returns[[str(ticker) + "_eq", "SPY"]]
        for i in range(window, returns.shape[0]):
            Y = ticker_returns.loc[returns.index[i-window:i], str(ticker) + "_eq"]
            x = ticker_returns.loc[returns.index[i-window:i], "SPY"]
            results = OLS(Y, x,missing='drop').fit(params_only=True).params
            beta.loc[returns.index[i-1], str(ticker) + "_beta"] = results[0]
    return beta[:-2]
```

```python
beta = cpam_reg(returns, tickers_eq)
beta.round(2)
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
	  <th>BA_beta</th>
	  <th>C_beta</th>
	  <th>DD_beta</th>
	  <th>F_beta</th>
	  <th>GE_beta</th>
	  <th>JPM_beta</th>
	  <th>LNC_beta</th>
	  <th>LOW_beta</th>
	  <th>LUV_beta</th>
	  <th>MAR_beta</th>
	  <th>NFLX_beta</th>
	  <th>T_beta</th>
	  <th>WFC_beta</th>
	  <th>XOM_beta</th>
	  <th>XRX_beta</th>
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
	  <th>2018-04-25</th>
	  <td>0.82</td>
	  <td>0.82</td>
	  <td>1.55</td>
	  <td>0.26</td>
	  <td>0.29</td>
	  <td>0.72</td>
	  <td>0.96</td>
	  <td>0.95</td>
	  <td>0.91</td>
	  <td>1.09</td>
	  <td>2.11</td>
	  <td>0.24</td>
	  <td>1.20</td>
	  <td>1.22</td>
	  <td>1.36</td>
	</tr>
	<tr>
	  <th>2018-05-02</th>
	  <td>0.70</td>
	  <td>0.82</td>
	  <td>1.56</td>
	  <td>0.22</td>
	  <td>0.21</td>
	  <td>0.69</td>
	  <td>0.85</td>
	  <td>0.92</td>
	  <td>1.00</td>
	  <td>1.11</td>
	  <td>2.09</td>
	  <td>0.30</td>
	  <td>1.19</td>
	  <td>1.28</td>
	  <td>1.34</td>
	</tr>
	<tr>
	  <th>2018-05-09</th>
	  <td>0.62</td>
	  <td>0.95</td>
	  <td>1.60</td>
	  <td>0.36</td>
	  <td>0.56</td>
	  <td>0.78</td>
	  <td>0.82</td>
	  <td>0.67</td>
	  <td>0.78</td>
	  <td>1.09</td>
	  <td>2.16</td>
	  <td>0.20</td>
	  <td>1.26</td>
	  <td>1.33</td>
	  <td>1.08</td>
	</tr>
	<tr>
	  <th>2018-05-16</th>
	  <td>0.70</td>
	  <td>0.91</td>
	  <td>1.65</td>
	  <td>0.43</td>
	  <td>0.71</td>
	  <td>0.74</td>
	  <td>0.83</td>
	  <td>0.60</td>
	  <td>0.95</td>
	  <td>1.09</td>
	  <td>1.78</td>
	  <td>0.23</td>
	  <td>1.26</td>
	  <td>1.38</td>
	  <td>1.05</td>
	</tr>
	<tr>
	  <th>2018-05-23</th>
	  <td>0.78</td>
	  <td>0.89</td>
	  <td>1.64</td>
	  <td>0.39</td>
	  <td>0.67</td>
	  <td>0.73</td>
	  <td>0.84</td>
	  <td>0.65</td>
	  <td>0.90</td>
	  <td>1.10</td>
	  <td>1.84</td>
	  <td>0.24</td>
	  <td>1.27</td>
	  <td>1.38</td>
	  <td>1.08</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>0.36</td>
	  <td>1.20</td>
	  <td>1.04</td>
	  <td>1.31</td>
	  <td>1.10</td>
	  <td>1.15</td>
	  <td>1.38</td>
	  <td>1.16</td>
	  <td>0.90</td>
	  <td>1.16</td>
	  <td>1.82</td>
	  <td>1.15</td>
	  <td>0.91</td>
	  <td>0.65</td>
	  <td>1.02</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>0.38</td>
	  <td>1.28</td>
	  <td>0.98</td>
	  <td>1.32</td>
	  <td>1.02</td>
	  <td>1.15</td>
	  <td>1.48</td>
	  <td>1.07</td>
	  <td>0.97</td>
	  <td>1.18</td>
	  <td>1.69</td>
	  <td>1.05</td>
	  <td>1.06</td>
	  <td>0.74</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>0.42</td>
	  <td>1.27</td>
	  <td>0.94</td>
	  <td>1.35</td>
	  <td>0.94</td>
	  <td>1.10</td>
	  <td>1.40</td>
	  <td>1.08</td>
	  <td>0.96</td>
	  <td>1.20</td>
	  <td>1.70</td>
	  <td>1.03</td>
	  <td>1.04</td>
	  <td>0.94</td>
	  <td>0.96</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.31</td>
	  <td>1.29</td>
	  <td>0.86</td>
	  <td>1.66</td>
	  <td>0.85</td>
	  <td>1.16</td>
	  <td>1.50</td>
	  <td>1.05</td>
	  <td>1.03</td>
	  <td>1.31</td>
	  <td>1.89</td>
	  <td>1.12</td>
	  <td>1.11</td>
	  <td>0.89</td>
	  <td>1.07</td>
	</tr>
	<tr>
	  <th>2022-12-28</th>
	  <td>0.37</td>
	  <td>1.25</td>
	  <td>0.84</td>
	  <td>1.70</td>
	  <td>0.83</td>
	  <td>1.10</td>
	  <td>1.47</td>
	  <td>1.01</td>
	  <td>1.18</td>
	  <td>1.28</td>
	  <td>1.92</td>
	  <td>1.08</td>
	  <td>1.07</td>
	  <td>0.86</td>
	  <td>1.10</td>
	</tr>
  </tbody>
</table>
<p>245 rows × 15 columns</p>
</div>

```python
r_mkt = pd.concat([R_spy['2018-04-25':'2022-12-28']] * 15, axis=1)
r_mkt.columns = beta.columns
```

### 2.2.b. Predict equity return using betas from CPAM regression
#### $ {E}[\tilde{r}^{Equity}] = \beta_{Equity}^{(n)} \cdot r_{n}^{mkt}$

```python
pred_eq = r_mkt * beta
pred_eq.columns = tickers_eq
pred_eq.round(3)
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
	  <th>BA</th>
	  <th>C</th>
	  <th>DD</th>
	  <th>F</th>
	  <th>GE</th>
	  <th>JPM</th>
	  <th>LNC</th>
	  <th>LOW</th>
	  <th>LUV</th>
	  <th>MAR</th>
	  <th>NFLX</th>
	  <th>T</th>
	  <th>WFC</th>
	  <th>XOM</th>
	  <th>XRX</th>
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
	  <th>2018-04-25</th>
	  <td>-0.020</td>
	  <td>-0.021</td>
	  <td>-0.039</td>
	  <td>-0.006</td>
	  <td>-0.007</td>
	  <td>-0.018</td>
	  <td>-0.024</td>
	  <td>-0.024</td>
	  <td>-0.023</td>
	  <td>-0.027</td>
	  <td>-0.053</td>
	  <td>-0.006</td>
	  <td>-0.030</td>
	  <td>-0.031</td>
	  <td>-0.034</td>
	</tr>
	<tr>
	  <th>2018-05-02</th>
	  <td>-0.001</td>
	  <td>-0.001</td>
	  <td>-0.003</td>
	  <td>-0.000</td>
	  <td>-0.000</td>
	  <td>-0.001</td>
	  <td>-0.001</td>
	  <td>-0.001</td>
	  <td>-0.002</td>
	  <td>-0.002</td>
	  <td>-0.003</td>
	  <td>-0.000</td>
	  <td>-0.002</td>
	  <td>-0.002</td>
	  <td>-0.002</td>
	</tr>
	<tr>
	  <th>2018-05-09</th>
	  <td>0.015</td>
	  <td>0.023</td>
	  <td>0.038</td>
	  <td>0.009</td>
	  <td>0.014</td>
	  <td>0.019</td>
	  <td>0.020</td>
	  <td>0.016</td>
	  <td>0.019</td>
	  <td>0.026</td>
	  <td>0.052</td>
	  <td>0.005</td>
	  <td>0.030</td>
	  <td>0.032</td>
	  <td>0.026</td>
	</tr>
	<tr>
	  <th>2018-05-16</th>
	  <td>0.007</td>
	  <td>0.009</td>
	  <td>0.017</td>
	  <td>0.004</td>
	  <td>0.007</td>
	  <td>0.007</td>
	  <td>0.008</td>
	  <td>0.006</td>
	  <td>0.010</td>
	  <td>0.011</td>
	  <td>0.018</td>
	  <td>0.002</td>
	  <td>0.013</td>
	  <td>0.014</td>
	  <td>0.011</td>
	</tr>
	<tr>
	  <th>2018-05-23</th>
	  <td>0.003</td>
	  <td>0.004</td>
	  <td>0.007</td>
	  <td>0.002</td>
	  <td>0.003</td>
	  <td>0.003</td>
	  <td>0.003</td>
	  <td>0.003</td>
	  <td>0.004</td>
	  <td>0.005</td>
	  <td>0.008</td>
	  <td>0.001</td>
	  <td>0.005</td>
	  <td>0.006</td>
	  <td>0.004</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>0.005</td>
	  <td>0.016</td>
	  <td>0.014</td>
	  <td>0.017</td>
	  <td>0.014</td>
	  <td>0.015</td>
	  <td>0.018</td>
	  <td>0.015</td>
	  <td>0.012</td>
	  <td>0.015</td>
	  <td>0.024</td>
	  <td>0.015</td>
	  <td>0.012</td>
	  <td>0.008</td>
	  <td>0.013</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>-0.013</td>
	  <td>-0.046</td>
	  <td>-0.035</td>
	  <td>-0.047</td>
	  <td>-0.036</td>
	  <td>-0.041</td>
	  <td>-0.053</td>
	  <td>-0.038</td>
	  <td>-0.035</td>
	  <td>-0.042</td>
	  <td>-0.060</td>
	  <td>-0.037</td>
	  <td>-0.038</td>
	  <td>-0.026</td>
	  <td>-0.036</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>0.007</td>
	  <td>0.020</td>
	  <td>0.015</td>
	  <td>0.021</td>
	  <td>0.015</td>
	  <td>0.017</td>
	  <td>0.022</td>
	  <td>0.017</td>
	  <td>0.015</td>
	  <td>0.019</td>
	  <td>0.027</td>
	  <td>0.016</td>
	  <td>0.016</td>
	  <td>0.015</td>
	  <td>0.015</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>-0.009</td>
	  <td>-0.037</td>
	  <td>-0.025</td>
	  <td>-0.047</td>
	  <td>-0.024</td>
	  <td>-0.033</td>
	  <td>-0.043</td>
	  <td>-0.030</td>
	  <td>-0.029</td>
	  <td>-0.037</td>
	  <td>-0.054</td>
	  <td>-0.032</td>
	  <td>-0.032</td>
	  <td>-0.025</td>
	  <td>-0.031</td>
	</tr>
	<tr>
	  <th>2022-12-28</th>
	  <td>-0.009</td>
	  <td>-0.031</td>
	  <td>-0.021</td>
	  <td>-0.042</td>
	  <td>-0.021</td>
	  <td>-0.027</td>
	  <td>-0.036</td>
	  <td>-0.025</td>
	  <td>-0.029</td>
	  <td>-0.032</td>
	  <td>-0.048</td>
	  <td>-0.027</td>
	  <td>-0.026</td>
	  <td>-0.021</td>
	  <td>-0.027</td>
	</tr>
  </tbody>
</table>
<p>245 rows × 15 columns</p>
</div>

### 2.2.c. Calculate equity residual return
#### $ c_{E,n} = r_{E,n}^{Equity} - {E}[\tilde{r}^{Equity}] $

```python
rsd_equity = R_equity['2018-04-25':'2022-12-28'] - pred_eq
rsd_equity.round(3)
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
	  <th>BA</th>
	  <th>C</th>
	  <th>DD</th>
	  <th>F</th>
	  <th>GE</th>
	  <th>JPM</th>
	  <th>LNC</th>
	  <th>LOW</th>
	  <th>LUV</th>
	  <th>MAR</th>
	  <th>NFLX</th>
	  <th>T</th>
	  <th>WFC</th>
	  <th>XOM</th>
	  <th>XRX</th>
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
	  <th>2018-04-25</th>
	  <td>0.026</td>
	  <td>0.026</td>
	  <td>-0.026</td>
	  <td>0.000</td>
	  <td>0.036</td>
	  <td>0.024</td>
	  <td>0.039</td>
	  <td>-0.029</td>
	  <td>-0.013</td>
	  <td>0.020</td>
	  <td>-0.033</td>
	  <td>0.006</td>
	  <td>0.084</td>
	  <td>0.034</td>
	  <td>0.046</td>
	</tr>
	<tr>
	  <th>2018-05-02</th>
	  <td>-0.053</td>
	  <td>-0.018</td>
	  <td>0.000</td>
	  <td>0.009</td>
	  <td>0.010</td>
	  <td>-0.018</td>
	  <td>-0.057</td>
	  <td>0.032</td>
	  <td>-0.028</td>
	  <td>-0.021</td>
	  <td>0.028</td>
	  <td>-0.089</td>
	  <td>-0.015</td>
	  <td>-0.032</td>
	  <td>-0.039</td>
	</tr>
	<tr>
	  <th>2018-05-09</th>
	  <td>0.048</td>
	  <td>0.040</td>
	  <td>0.002</td>
	  <td>-0.022</td>
	  <td>0.018</td>
	  <td>0.032</td>
	  <td>-0.022</td>
	  <td>-0.011</td>
	  <td>-0.031</td>
	  <td>0.002</td>
	  <td>0.002</td>
	  <td>-0.025</td>
	  <td>0.008</td>
	  <td>0.009</td>
	  <td>-0.045</td>
	</tr>
	<tr>
	  <th>2018-05-16</th>
	  <td>-0.012</td>
	  <td>-0.009</td>
	  <td>0.013</td>
	  <td>0.026</td>
	  <td>0.021</td>
	  <td>-0.008</td>
	  <td>-0.003</td>
	  <td>0.007</td>
	  <td>0.018</td>
	  <td>0.007</td>
	  <td>-0.025</td>
	  <td>0.026</td>
	  <td>0.011</td>
	  <td>0.022</td>
	  <td>-0.020</td>
	</tr>
	<tr>
	  <th>2018-05-23</th>
	  <td>0.050</td>
	  <td>-0.027</td>
	  <td>-0.021</td>
	  <td>0.002</td>
	  <td>-0.059</td>
	  <td>-0.011</td>
	  <td>0.023</td>
	  <td>0.105</td>
	  <td>-0.054</td>
	  <td>-0.022</td>
	  <td>0.043</td>
	  <td>-0.000</td>
	  <td>0.015</td>
	  <td>-0.004</td>
	  <td>-0.023</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>0.018</td>
	  <td>-0.012</td>
	  <td>-0.027</td>
	  <td>-0.026</td>
	  <td>-0.036</td>
	  <td>-0.003</td>
	  <td>-0.013</td>
	  <td>-0.008</td>
	  <td>0.021</td>
	  <td>0.009</td>
	  <td>0.024</td>
	  <td>-0.005</td>
	  <td>0.001</td>
	  <td>-0.028</td>
	  <td>0.022</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>0.000</td>
	  <td>-0.032</td>
	  <td>0.024</td>
	  <td>-0.010</td>
	  <td>0.025</td>
	  <td>-0.008</td>
	  <td>-0.041</td>
	  <td>0.012</td>
	  <td>-0.018</td>
	  <td>-0.007</td>
	  <td>0.070</td>
	  <td>0.039</td>
	  <td>-0.077</td>
	  <td>-0.043</td>
	  <td>0.004</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>0.060</td>
	  <td>0.009</td>
	  <td>-0.016</td>
	  <td>0.008</td>
	  <td>-0.056</td>
	  <td>-0.003</td>
	  <td>-0.104</td>
	  <td>0.008</td>
	  <td>-0.007</td>
	  <td>-0.006</td>
	  <td>0.003</td>
	  <td>-0.037</td>
	  <td>-0.023</td>
	  <td>0.012</td>
	  <td>0.019</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.050</td>
	  <td>0.011</td>
	  <td>0.006</td>
	  <td>-0.079</td>
	  <td>0.043</td>
	  <td>0.024</td>
	  <td>-0.022</td>
	  <td>-0.016</td>
	  <td>-0.011</td>
	  <td>-0.029</td>
	  <td>-0.009</td>
	  <td>-0.008</td>
	  <td>0.007</td>
	  <td>0.040</td>
	  <td>-0.061</td>
	</tr>
	<tr>
	  <th>2022-12-28</th>
	  <td>-0.030</td>
	  <td>0.027</td>
	  <td>0.013</td>
	  <td>-0.028</td>
	  <td>0.008</td>
	  <td>0.029</td>
	  <td>0.011</td>
	  <td>0.013</td>
	  <td>-0.091</td>
	  <td>0.011</td>
	  <td>-0.023</td>
	  <td>0.031</td>
	  <td>0.026</td>
	  <td>0.024</td>
	  <td>-0.005</td>
	</tr>
  </tbody>
</table>
<p>245 rows × 15 columns</p>
</div>

### 2.2.d. Plot Prediction and Residual

```python
pred_eq.T.mean().plot(figsize=(16, 6), label='prediction')
R_equity.T.mean().plot(label='actual')
rsd_equity.T.mean().plot(linewidth=3, label='residual', color='white')
plt.title('Prediction VS Actual')
plt.gca().set_facecolor('lightgray')
plt.grid(True)
plt.legend(loc='upper left')
plt.show()

```

![png](output_37_0.png)

### 2.3 Predicting residuals
#### $\rho_{E,n} ∼ c_{E,n-1} + ε $
#### $ q_{E,n} = ρ_{E,n} − μ_{E,n−1} \cdot c_{E,n−1} $

#### 2.3.1. Using bocar model

    a. get coeffs

```python
df_rsd = rsd_equity.merge(rsd_cds, left_index=True, right_index=True, suffixes=["_eq","_cds"])
```

```python
tickers_eq = tickers[:-1]
def boxcar_rsd_reg(df_rsd, tickers_eq, window=16):
    beta = pd.DataFrame(index=df_rsd.index[window:])
    for ticker in tickers_eq:
        df_rsd[str(ticker) + "_eq"].shift()
        for i in range(window, df_rsd.shape[0]):
            Y = df_rsd.loc[df_rsd.index[i-window:i], str(ticker) + "_cds"]
            x = df_rsd.loc[df_rsd.index[i-window:i], str(ticker) + "_eq"]
            results = OLS(Y, x).fit(params_only=True).params
            beta.loc[df_rsd.index[i-1], ticker] = results[0]
    return beta[:-2]
```

```python
rsd_beta = boxcar_rsd_reg(df_rsd,tickers_eq)
```

```python
rsd_beta.round(3)
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
	  <th>BA</th>
	  <th>C</th>
	  <th>DD</th>
	  <th>F</th>
	  <th>GE</th>
	  <th>JPM</th>
	  <th>LNC</th>
	  <th>LOW</th>
	  <th>LUV</th>
	  <th>MAR</th>
	  <th>NFLX</th>
	  <th>T</th>
	  <th>WFC</th>
	  <th>XOM</th>
	  <th>XRX</th>
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
	  <th>2018-08-15</th>
	  <td>-0.190</td>
	  <td>-0.377</td>
	  <td>0.225</td>
	  <td>-0.020</td>
	  <td>-0.098</td>
	  <td>-0.109</td>
	  <td>-0.122</td>
	  <td>-0.027</td>
	  <td>-0.221</td>
	  <td>0.223</td>
	  <td>NaN</td>
	  <td>-0.272</td>
	  <td>-0.452</td>
	  <td>-0.002</td>
	  <td>-0.974</td>
	</tr>
	<tr>
	  <th>2018-08-22</th>
	  <td>-0.250</td>
	  <td>-0.450</td>
	  <td>0.182</td>
	  <td>0.029</td>
	  <td>-0.098</td>
	  <td>-0.222</td>
	  <td>-0.316</td>
	  <td>0.039</td>
	  <td>-0.310</td>
	  <td>0.118</td>
	  <td>NaN</td>
	  <td>-0.428</td>
	  <td>-0.598</td>
	  <td>-0.140</td>
	  <td>0.187</td>
	</tr>
	<tr>
	  <th>2018-08-29</th>
	  <td>-0.321</td>
	  <td>-0.284</td>
	  <td>0.112</td>
	  <td>0.153</td>
	  <td>-0.120</td>
	  <td>0.056</td>
	  <td>-0.212</td>
	  <td>0.045</td>
	  <td>-0.302</td>
	  <td>0.108</td>
	  <td>NaN</td>
	  <td>-0.442</td>
	  <td>-0.383</td>
	  <td>-0.122</td>
	  <td>-0.157</td>
	</tr>
	<tr>
	  <th>2018-09-05</th>
	  <td>-0.401</td>
	  <td>-0.262</td>
	  <td>0.206</td>
	  <td>0.170</td>
	  <td>-0.084</td>
	  <td>0.075</td>
	  <td>-0.206</td>
	  <td>0.056</td>
	  <td>-0.285</td>
	  <td>0.190</td>
	  <td>NaN</td>
	  <td>-0.511</td>
	  <td>-0.352</td>
	  <td>-0.225</td>
	  <td>0.515</td>
	</tr>
	<tr>
	  <th>2018-09-12</th>
	  <td>-0.430</td>
	  <td>-0.267</td>
	  <td>0.198</td>
	  <td>0.192</td>
	  <td>-0.167</td>
	  <td>0.068</td>
	  <td>-0.217</td>
	  <td>-0.061</td>
	  <td>-0.353</td>
	  <td>0.334</td>
	  <td>NaN</td>
	  <td>-0.235</td>
	  <td>0.032</td>
	  <td>-0.149</td>
	  <td>0.607</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-23</th>
	  <td>-0.069</td>
	  <td>-0.421</td>
	  <td>0.091</td>
	  <td>-0.397</td>
	  <td>-0.308</td>
	  <td>0.030</td>
	  <td>-0.052</td>
	  <td>0.142</td>
	  <td>0.125</td>
	  <td>0.421</td>
	  <td>-0.016</td>
	  <td>-0.018</td>
	  <td>0.197</td>
	  <td>0.381</td>
	  <td>-0.506</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>-0.053</td>
	  <td>-0.274</td>
	  <td>0.086</td>
	  <td>-0.458</td>
	  <td>-0.301</td>
	  <td>0.028</td>
	  <td>-0.041</td>
	  <td>0.121</td>
	  <td>0.108</td>
	  <td>0.389</td>
	  <td>-0.047</td>
	  <td>0.058</td>
	  <td>0.195</td>
	  <td>0.311</td>
	  <td>-0.432</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>-0.064</td>
	  <td>-0.135</td>
	  <td>0.106</td>
	  <td>-0.485</td>
	  <td>-0.265</td>
	  <td>0.037</td>
	  <td>-0.015</td>
	  <td>-0.043</td>
	  <td>0.118</td>
	  <td>0.395</td>
	  <td>-0.034</td>
	  <td>0.034</td>
	  <td>0.099</td>
	  <td>0.218</td>
	  <td>-0.426</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>-0.117</td>
	  <td>-0.277</td>
	  <td>0.109</td>
	  <td>-0.538</td>
	  <td>-0.132</td>
	  <td>-0.027</td>
	  <td>0.014</td>
	  <td>-0.061</td>
	  <td>0.147</td>
	  <td>0.488</td>
	  <td>-0.029</td>
	  <td>0.023</td>
	  <td>0.088</td>
	  <td>-0.481</td>
	  <td>-0.469</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>-0.085</td>
	  <td>-0.396</td>
	  <td>0.109</td>
	  <td>-0.195</td>
	  <td>-0.017</td>
	  <td>-0.111</td>
	  <td>0.003</td>
	  <td>-0.018</td>
	  <td>0.159</td>
	  <td>0.451</td>
	  <td>-0.007</td>
	  <td>0.027</td>
	  <td>-0.000</td>
	  <td>-0.487</td>
	  <td>-0.358</td>
	</tr>
  </tbody>
</table>
<p>228 rows × 15 columns</p>
</div>

    b. Calculate residuals of the predictive model

```python
c_lag1  = rsd_equity.shift().loc[rsd_beta.index]
q_boxcar = rsd_cds.loc[rsd_beta.index] - c_lag1 * rsd_beta
q_boxcar.round(3)
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
	  <th>ticker</th>
	  <th>BA</th>
	  <th>C</th>
	  <th>DD</th>
	  <th>F</th>
	  <th>GE</th>
	  <th>JPM</th>
	  <th>LNC</th>
	  <th>LOW</th>
	  <th>LUV</th>
	  <th>MAR</th>
	  <th>NFLX</th>
	  <th>T</th>
	  <th>WFC</th>
	  <th>XOM</th>
	  <th>XRX</th>
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
	  <th>2018-08-15</th>
	  <td>0.060</td>
	  <td>-0.003</td>
	  <td>0.039</td>
	  <td>-0.020</td>
	  <td>-0.013</td>
	  <td>0.002</td>
	  <td>0.016</td>
	  <td>0.009</td>
	  <td>0.026</td>
	  <td>0.068</td>
	  <td>NaN</td>
	  <td>-0.036</td>
	  <td>0.032</td>
	  <td>-0.002</td>
	  <td>-0.154</td>
	</tr>
	<tr>
	  <th>2018-08-22</th>
	  <td>0.017</td>
	  <td>-0.007</td>
	  <td>-0.024</td>
	  <td>0.047</td>
	  <td>-0.028</td>
	  <td>-0.009</td>
	  <td>0.002</td>
	  <td>-0.016</td>
	  <td>-0.034</td>
	  <td>0.053</td>
	  <td>NaN</td>
	  <td>-0.010</td>
	  <td>0.025</td>
	  <td>-0.009</td>
	  <td>0.031</td>
	</tr>
	<tr>
	  <th>2018-08-29</th>
	  <td>0.029</td>
	  <td>0.008</td>
	  <td>-0.039</td>
	  <td>0.033</td>
	  <td>0.007</td>
	  <td>-0.004</td>
	  <td>0.013</td>
	  <td>0.015</td>
	  <td>-0.024</td>
	  <td>0.012</td>
	  <td>NaN</td>
	  <td>-0.005</td>
	  <td>-0.010</td>
	  <td>0.003</td>
	  <td>0.031</td>
	</tr>
	<tr>
	  <th>2018-09-05</th>
	  <td>-0.016</td>
	  <td>0.009</td>
	  <td>-0.031</td>
	  <td>-0.007</td>
	  <td>-0.001</td>
	  <td>0.010</td>
	  <td>0.009</td>
	  <td>-0.006</td>
	  <td>-0.018</td>
	  <td>-0.040</td>
	  <td>NaN</td>
	  <td>0.019</td>
	  <td>-0.000</td>
	  <td>0.004</td>
	  <td>0.013</td>
	</tr>
	<tr>
	  <th>2018-09-12</th>
	  <td>0.018</td>
	  <td>-0.010</td>
	  <td>0.007</td>
	  <td>-0.005</td>
	  <td>-0.055</td>
	  <td>-0.011</td>
	  <td>-0.000</td>
	  <td>0.029</td>
	  <td>-0.022</td>
	  <td>0.045</td>
	  <td>NaN</td>
	  <td>0.041</td>
	  <td>-0.038</td>
	  <td>0.012</td>
	  <td>-0.016</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-23</th>
	  <td>0.007</td>
	  <td>-0.010</td>
	  <td>-0.009</td>
	  <td>0.030</td>
	  <td>0.010</td>
	  <td>-0.016</td>
	  <td>0.057</td>
	  <td>-0.017</td>
	  <td>0.021</td>
	  <td>-0.003</td>
	  <td>0.046</td>
	  <td>-0.042</td>
	  <td>0.004</td>
	  <td>-0.012</td>
	  <td>-0.014</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>0.050</td>
	  <td>-0.038</td>
	  <td>0.014</td>
	  <td>-0.007</td>
	  <td>0.022</td>
	  <td>-0.007</td>
	  <td>-0.014</td>
	  <td>0.042</td>
	  <td>-0.001</td>
	  <td>-0.010</td>
	  <td>0.009</td>
	  <td>-0.062</td>
	  <td>-0.017</td>
	  <td>0.055</td>
	  <td>0.021</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>-0.021</td>
	  <td>-0.018</td>
	  <td>0.025</td>
	  <td>0.003</td>
	  <td>0.016</td>
	  <td>0.000</td>
	  <td>-0.095</td>
	  <td>0.029</td>
	  <td>-0.006</td>
	  <td>-0.002</td>
	  <td>0.040</td>
	  <td>-0.025</td>
	  <td>0.008</td>
	  <td>0.055</td>
	  <td>-0.009</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>-0.004</td>
	  <td>-0.001</td>
	  <td>-0.051</td>
	  <td>0.067</td>
	  <td>-0.032</td>
	  <td>0.017</td>
	  <td>-0.042</td>
	  <td>-0.046</td>
	  <td>-0.028</td>
	  <td>-0.017</td>
	  <td>-0.008</td>
	  <td>0.001</td>
	  <td>0.025</td>
	  <td>-0.015</td>
	  <td>-0.018</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.013</td>
	  <td>-0.015</td>
	  <td>0.002</td>
	  <td>-0.024</td>
	  <td>0.044</td>
	  <td>-0.004</td>
	  <td>0.079</td>
	  <td>-0.028</td>
	  <td>0.003</td>
	  <td>0.016</td>
	  <td>0.015</td>
	  <td>-0.015</td>
	  <td>-0.003</td>
	  <td>-0.014</td>
	  <td>-0.031</td>
	</tr>
  </tbody>
</table>
<p>228 rows × 15 columns</p>
</div>

#### 2.3.2. Using exponential model

    a. get coeffs

```python
half_life = 12
lma = 2**(-1./half_life)
threshold = 1. / (df_rsd.shape[0] * 10)
print(f"Lambda: {lma}  -> Truncation threshold {threshold}")

w12 = lma**np.arange(df_rsd.shape[0]-1, -1, -1)

# Cuts off weight values too small to care about, allowing use of naive routines without losing accuracy or having too many points
exp_1p2_wts = w12[ w12 > threshold]
print(f"""
Full weight at start and finish:\n{w12[[0,1, -2, -1]]} N={w12.shape[0]}

Truncated at start and finish:\n{exp_1p2_wts[[0,1, -2, -1]]}  N={exp_1p2_wts.shape[0]}
""")

enough_points = np.where(w12 > threshold)[0].shape[0]
print(enough_points)

def exp_1_2_reg(_df, tickers_eq):
    _n = min(exp_1p2_wts.shape[0], _df.shape[0])
    _ldf = _df.iloc[-_n:]
    _wt = exp_1p2_wts[-_n:]
    results = {}
    for ticker in tickers_eq:
        _ldf[str(ticker) + "_eq"].shift()
        _p = linreg.WLS(_ldf[str(ticker) + '_cds'], _ldf[str(ticker) + '_eq'], weights=_wt).fit(params_only=True).params
        results[ticker] = _p[0]
    return pd.DataFrame(data=results, index=[_df.index[-1]])
```

    Lambda: 0.9438743126816935  -> Truncation threshold 0.00040816326530612246
    
    Full weight at start and finish:
    [7.56931807e-07 8.01941314e-07 9.43874313e-01 1.00000000e+00] N=245
    
    Truncated at start and finish:
    [4.10593953e-04 4.35009140e-04 9.43874313e-01 1.00000000e+00]  N=136
    
    136

```python
exp_coeffs = pd.concat([exp_1_2_reg(df_rsd[max(0,i-exp_1p2_wts.shape[0]):i],tickers_eq) for i in range(enough_points, df_rsd.shape[0])])
exp_coeffs.round(3)
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
	  <th>BA</th>
	  <th>C</th>
	  <th>DD</th>
	  <th>F</th>
	  <th>GE</th>
	  <th>JPM</th>
	  <th>LNC</th>
	  <th>LOW</th>
	  <th>LUV</th>
	  <th>MAR</th>
	  <th>NFLX</th>
	  <th>T</th>
	  <th>WFC</th>
	  <th>XOM</th>
	  <th>XRX</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2020-11-25</th>
	  <td>-0.255</td>
	  <td>0.144</td>
	  <td>0.078</td>
	  <td>0.020</td>
	  <td>-0.041</td>
	  <td>0.329</td>
	  <td>-0.047</td>
	  <td>-0.239</td>
	  <td>-0.450</td>
	  <td>-0.231</td>
	  <td>NaN</td>
	  <td>-0.038</td>
	  <td>0.119</td>
	  <td>-0.124</td>
	  <td>0.229</td>
	</tr>
	<tr>
	  <th>2020-12-02</th>
	  <td>-0.261</td>
	  <td>0.135</td>
	  <td>0.019</td>
	  <td>0.017</td>
	  <td>-0.018</td>
	  <td>0.295</td>
	  <td>-0.046</td>
	  <td>-0.265</td>
	  <td>-0.362</td>
	  <td>-0.190</td>
	  <td>NaN</td>
	  <td>-0.038</td>
	  <td>0.116</td>
	  <td>-0.102</td>
	  <td>0.209</td>
	</tr>
	<tr>
	  <th>2020-12-09</th>
	  <td>-0.334</td>
	  <td>0.148</td>
	  <td>0.164</td>
	  <td>0.014</td>
	  <td>0.047</td>
	  <td>0.278</td>
	  <td>-0.048</td>
	  <td>0.103</td>
	  <td>-0.308</td>
	  <td>-0.209</td>
	  <td>NaN</td>
	  <td>-0.123</td>
	  <td>0.117</td>
	  <td>-0.091</td>
	  <td>0.206</td>
	</tr>
	<tr>
	  <th>2020-12-16</th>
	  <td>-0.333</td>
	  <td>0.148</td>
	  <td>0.163</td>
	  <td>0.038</td>
	  <td>0.102</td>
	  <td>0.283</td>
	  <td>-0.040</td>
	  <td>0.107</td>
	  <td>-0.334</td>
	  <td>-0.214</td>
	  <td>NaN</td>
	  <td>-0.037</td>
	  <td>0.117</td>
	  <td>-0.096</td>
	  <td>0.212</td>
	</tr>
	<tr>
	  <th>2020-12-23</th>
	  <td>-0.350</td>
	  <td>0.164</td>
	  <td>0.125</td>
	  <td>0.036</td>
	  <td>0.102</td>
	  <td>0.315</td>
	  <td>-0.040</td>
	  <td>0.113</td>
	  <td>-0.313</td>
	  <td>-0.227</td>
	  <td>NaN</td>
	  <td>0.032</td>
	  <td>0.132</td>
	  <td>-0.065</td>
	  <td>0.218</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-23</th>
	  <td>-0.172</td>
	  <td>-0.046</td>
	  <td>0.020</td>
	  <td>-0.266</td>
	  <td>-0.107</td>
	  <td>0.005</td>
	  <td>-0.048</td>
	  <td>0.033</td>
	  <td>-0.026</td>
	  <td>0.114</td>
	  <td>-0.034</td>
	  <td>0.002</td>
	  <td>0.116</td>
	  <td>0.127</td>
	  <td>-0.205</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>-0.153</td>
	  <td>-0.016</td>
	  <td>0.001</td>
	  <td>-0.259</td>
	  <td>-0.131</td>
	  <td>0.007</td>
	  <td>-0.046</td>
	  <td>0.018</td>
	  <td>-0.027</td>
	  <td>0.104</td>
	  <td>-0.030</td>
	  <td>0.012</td>
	  <td>0.115</td>
	  <td>0.065</td>
	  <td>-0.190</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>-0.153</td>
	  <td>0.023</td>
	  <td>0.024</td>
	  <td>-0.264</td>
	  <td>-0.095</td>
	  <td>0.007</td>
	  <td>-0.015</td>
	  <td>0.036</td>
	  <td>-0.023</td>
	  <td>0.104</td>
	  <td>-0.001</td>
	  <td>-0.022</td>
	  <td>0.048</td>
	  <td>-0.018</td>
	  <td>-0.193</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>-0.147</td>
	  <td>0.028</td>
	  <td>0.058</td>
	  <td>-0.242</td>
	  <td>0.008</td>
	  <td>0.003</td>
	  <td>0.020</td>
	  <td>0.015</td>
	  <td>-0.012</td>
	  <td>0.111</td>
	  <td>-0.001</td>
	  <td>-0.024</td>
	  <td>0.024</td>
	  <td>-0.015</td>
	  <td>-0.205</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>-0.130</td>
	  <td>0.011</td>
	  <td>0.058</td>
	  <td>-0.126</td>
	  <td>0.092</td>
	  <td>-0.002</td>
	  <td>0.006</td>
	  <td>0.040</td>
	  <td>-0.013</td>
	  <td>0.079</td>
	  <td>-0.003</td>
	  <td>-0.019</td>
	  <td>0.023</td>
	  <td>-0.046</td>
	  <td>-0.097</td>
	</tr>
  </tbody>
</table>
<p>109 rows × 15 columns</p>
</div>

    b. Calculate residuals of the predictive model

```python
c_lag = rsd_equity.shift().loc[exp_coeffs.index]
rho = rsd_cds.loc[exp_coeffs.index]
q_exp = rho - exp_coeffs * c_lag
q_exp.round(3)
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
	  <th>ticker</th>
	  <th>BA</th>
	  <th>C</th>
	  <th>DD</th>
	  <th>F</th>
	  <th>GE</th>
	  <th>JPM</th>
	  <th>LNC</th>
	  <th>LOW</th>
	  <th>LUV</th>
	  <th>MAR</th>
	  <th>NFLX</th>
	  <th>T</th>
	  <th>WFC</th>
	  <th>XOM</th>
	  <th>XRX</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2020-11-25</th>
	  <td>0.000</td>
	  <td>0.002</td>
	  <td>0.059</td>
	  <td>0.015</td>
	  <td>0.018</td>
	  <td>0.034</td>
	  <td>-0.000</td>
	  <td>0.075</td>
	  <td>0.055</td>
	  <td>0.021</td>
	  <td>NaN</td>
	  <td>-0.009</td>
	  <td>-0.003</td>
	  <td>0.017</td>
	  <td>-0.047</td>
	</tr>
	<tr>
	  <th>2020-12-02</th>
	  <td>-0.056</td>
	  <td>0.025</td>
	  <td>0.056</td>
	  <td>-0.016</td>
	  <td>-0.067</td>
	  <td>0.049</td>
	  <td>0.017</td>
	  <td>0.046</td>
	  <td>-0.121</td>
	  <td>-0.083</td>
	  <td>NaN</td>
	  <td>-0.002</td>
	  <td>0.018</td>
	  <td>-0.008</td>
	  <td>-0.000</td>
	</tr>
	<tr>
	  <th>2020-12-09</th>
	  <td>-0.182</td>
	  <td>0.026</td>
	  <td>0.065</td>
	  <td>-0.003</td>
	  <td>0.043</td>
	  <td>0.048</td>
	  <td>-0.007</td>
	  <td>0.222</td>
	  <td>-0.071</td>
	  <td>-0.082</td>
	  <td>NaN</td>
	  <td>-0.021</td>
	  <td>0.010</td>
	  <td>-0.005</td>
	  <td>-0.003</td>
	</tr>
	<tr>
	  <th>2020-12-16</th>
	  <td>0.026</td>
	  <td>-0.003</td>
	  <td>-0.015</td>
	  <td>-0.019</td>
	  <td>-0.081</td>
	  <td>-0.009</td>
	  <td>-0.006</td>
	  <td>0.007</td>
	  <td>0.111</td>
	  <td>0.021</td>
	  <td>NaN</td>
	  <td>-0.029</td>
	  <td>-0.001</td>
	  <td>-0.009</td>
	  <td>-0.039</td>
	</tr>
	<tr>
	  <th>2020-12-23</th>
	  <td>0.054</td>
	  <td>0.034</td>
	  <td>-0.052</td>
	  <td>0.015</td>
	  <td>0.004</td>
	  <td>0.033</td>
	  <td>-0.037</td>
	  <td>-0.086</td>
	  <td>0.026</td>
	  <td>0.065</td>
	  <td>NaN</td>
	  <td>-0.024</td>
	  <td>0.025</td>
	  <td>-0.019</td>
	  <td>-0.038</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-23</th>
	  <td>0.006</td>
	  <td>-0.010</td>
	  <td>-0.010</td>
	  <td>0.034</td>
	  <td>0.018</td>
	  <td>-0.017</td>
	  <td>0.057</td>
	  <td>-0.007</td>
	  <td>0.018</td>
	  <td>0.002</td>
	  <td>0.048</td>
	  <td>-0.041</td>
	  <td>0.000</td>
	  <td>-0.010</td>
	  <td>-0.020</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>0.051</td>
	  <td>-0.032</td>
	  <td>0.016</td>
	  <td>-0.004</td>
	  <td>0.019</td>
	  <td>-0.007</td>
	  <td>-0.013</td>
	  <td>0.038</td>
	  <td>-0.001</td>
	  <td>-0.015</td>
	  <td>0.011</td>
	  <td>-0.062</td>
	  <td>-0.017</td>
	  <td>0.054</td>
	  <td>0.017</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>-0.019</td>
	  <td>-0.016</td>
	  <td>0.023</td>
	  <td>0.009</td>
	  <td>0.022</td>
	  <td>0.000</td>
	  <td>-0.095</td>
	  <td>0.030</td>
	  <td>-0.003</td>
	  <td>0.000</td>
	  <td>0.039</td>
	  <td>-0.026</td>
	  <td>0.008</td>
	  <td>0.048</td>
	  <td>-0.014</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>-0.004</td>
	  <td>0.009</td>
	  <td>-0.049</td>
	  <td>0.070</td>
	  <td>-0.035</td>
	  <td>0.017</td>
	  <td>-0.042</td>
	  <td>-0.047</td>
	  <td>-0.031</td>
	  <td>-0.020</td>
	  <td>-0.010</td>
	  <td>0.003</td>
	  <td>0.020</td>
	  <td>0.005</td>
	  <td>-0.019</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.016</td>
	  <td>-0.018</td>
	  <td>0.002</td>
	  <td>-0.024</td>
	  <td>0.050</td>
	  <td>-0.003</td>
	  <td>0.079</td>
	  <td>-0.029</td>
	  <td>0.001</td>
	  <td>0.014</td>
	  <td>0.015</td>
	  <td>-0.017</td>
	  <td>-0.002</td>
	  <td>-0.019</td>
	  <td>-0.036</td>
	</tr>
  </tbody>
</table>
<p>109 rows × 15 columns</p>
</div>

## 3. Analysis

### a. Boxcar Model Performance for predicting CDS spread return Analysis

```python
plt.scatter(R_cds.loc[pred_cds.index], pred_cds, label='Boxcar Prediction')
plt.xlabel('Actual Returns')
plt.ylabel('Predicted Returns')
plt.legend()
plt.show()
```

![png](output_55_0.png)

```python
def boxcar_reg_performance(returns, tickers_eq, window=16):
    boxcar_coeffs = pd.DataFrame(index=returns.index[window:])
    resquared = pd.Series(index=returns.index[window:])
    treynor_ratio = pd.Series(index=returns.index[window:])
    tracking_error = pd.Series(index=returns.index[window:])
    
    for ticker in tickers_eq:
        ticker_returns = returns[[str(ticker) + "_eq", str(ticker) + "_cds", "cds_index"]]
        for i in range(window, returns.shape[0]):
            x = ticker_returns.loc[returns.index[i-window:i], [str(ticker) + "_eq", "cds_index"]]
            y = ticker_returns.loc[returns.index[i-window:i], str(ticker) + "_cds"]
            mask = ~(y.isna() | x.isna()).any(axis=1)
            Y_clean = y.loc[mask]
            x_clean = x.loc[mask]
            results = OLS(Y_clean, x_clean).fit(params_only=True)
            boxcar_coeffs.loc[returns.index[i-1], str(ticker) + "_cds_eq"] = results.params[0]
            boxcar_coeffs.loc[returns.index[i-1], str(ticker) + "_cds_index"] = results.params[1]
            
            # calculate resquared, Treynor ratio, and tracking error
            y_pred = results.predict(x_clean)
            residuals = Y_clean - y_pred
            resquared.loc[returns.index[i-1]] = 1 - residuals.var() / Y_clean.var()
            treynor_ratio.loc[returns.index[i-1]] = results.params[0] / x_clean[str(ticker) + "_eq"].std()
            tracking_error.loc[returns.index[i-1]] = residuals.std()
            
    results_table = pd.concat([resquared, treynor_ratio, tracking_error], axis=1)
    results_table.columns = ['resquared', 'treynor_ratio', 'tracking_error']
    return results_table[:-2]

```

```python
boxcar_summary = boxcar_reg_performance(returns, tickers_eq)
boxcar_summary.describe().round(2)
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
	  <th>resquared</th>
	  <th>treynor_ratio</th>
	  <th>tracking_error</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>245.00</td>
	  <td>245.00</td>
	  <td>245.00</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.57</td>
	  <td>-4.54</td>
	  <td>0.06</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.18</td>
	  <td>10.29</td>
	  <td>0.03</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.10</td>
	  <td>-57.69</td>
	  <td>0.02</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.46</td>
	  <td>-7.06</td>
	  <td>0.03</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.60</td>
	  <td>-4.13</td>
	  <td>0.05</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.71</td>
	  <td>-1.42</td>
	  <td>0.06</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.86</td>
	  <td>23.79</td>
	  <td>0.18</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

Based on the statistics, the resquared metric has a mean of 0.57 and a standard deviation of 0.18. This suggests that the model explains around 57% of the variance in the dependent variable on average, which is relatively good, but with a fair amount of variability in its performance.

The treynor_ratio has a mean of -4.54 and a standard deviation of 10.29. A negative mean suggests that the model is underperforming compared to the market, while the large standard deviation indicates a high variability in performance. The minimum value of -57.69 is quite low, indicating that the model has periods of severe underperformance compared to the market.

The tracking_error metric has a mean of 0.06 and a standard deviation of 0.03, which is relatively low, suggesting that the model is tracking the benchmark closely. The maximum value of 0.183263 is still quite low, which is a positive sign.

Overall, based solely on these statistics, it is difficult to make a definitive conclusion about the performance of the Boxcar model. However, the relatively high resquared and low tracking_error metrics suggest that the model is doing a reasonably good job of tracking the benchmark, but the poor treynor_ratio suggests that the model is not generating sufficient returns to compensate for its risk. 

Plot predicted values against actual values

### b. CAPM Model Performance for predicting equity return Analysis

```python
def cpam_reg(returns, tickers_eq, window=16):
    beta = pd.DataFrame(index=returns.index[window:])
    r2 = pd.DataFrame(index=returns.index[window:])
    mse = pd.DataFrame(index=returns.index[window:])
    for ticker in tickers_eq:
        ticker_returns = returns[[str(ticker) + "_eq", "SPY"]]
        for i in range(window, returns.shape[0]):
            Y = ticker_returns.loc[returns.index[i-window:i], str(ticker) + "_eq"]
            x = ticker_returns.loc[returns.index[i-window:i], "SPY"]
            results = OLS(Y, x,missing='drop').fit()
            beta.loc[returns.index[i-1], str(ticker) + "_beta"] = results.params[0]
            r2.loc[returns.index[i-1], str(ticker) + "_r2"] = results.rsquared
            mse.loc[returns.index[i-1], str(ticker) + "_mse"] = results.mse_resid
    return r2[:-2], mse[:-2]
r2, mse = cpam_reg(returns, tickers_eq)
```

```python
r2.describe().round(4)
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
	  <th>BA_r2</th>
	  <th>C_r2</th>
	  <th>DD_r2</th>
	  <th>F_r2</th>
	  <th>GE_r2</th>
	  <th>JPM_r2</th>
	  <th>LNC_r2</th>
	  <th>LOW_r2</th>
	  <th>LUV_r2</th>
	  <th>MAR_r2</th>
	  <th>NFLX_r2</th>
	  <th>T_r2</th>
	  <th>WFC_r2</th>
	  <th>XOM_r2</th>
	  <th>XRX_r2</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.3318</td>
	  <td>0.4640</td>
	  <td>0.4315</td>
	  <td>0.3344</td>
	  <td>0.2914</td>
	  <td>0.4758</td>
	  <td>0.4643</td>
	  <td>0.4100</td>
	  <td>0.3315</td>
	  <td>0.4528</td>
	  <td>0.3109</td>
	  <td>0.1955</td>
	  <td>0.3762</td>
	  <td>0.3659</td>
	  <td>0.4289</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.2102</td>
	  <td>0.2623</td>
	  <td>0.2538</td>
	  <td>0.2115</td>
	  <td>0.2445</td>
	  <td>0.2087</td>
	  <td>0.2253</td>
	  <td>0.2015</td>
	  <td>0.1985</td>
	  <td>0.1876</td>
	  <td>0.1809</td>
	  <td>0.1692</td>
	  <td>0.2132</td>
	  <td>0.2540</td>
	  <td>0.1948</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.0002</td>
	  <td>0.0028</td>
	  <td>0.0000</td>
	  <td>0.0000</td>
	  <td>0.0000</td>
	  <td>0.0006</td>
	  <td>0.0014</td>
	  <td>0.0151</td>
	  <td>0.0000</td>
	  <td>0.0123</td>
	  <td>0.0001</td>
	  <td>0.0001</td>
	  <td>0.0029</td>
	  <td>0.0001</td>
	  <td>0.0193</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.1417</td>
	  <td>0.2295</td>
	  <td>0.2201</td>
	  <td>0.1869</td>
	  <td>0.0760</td>
	  <td>0.2993</td>
	  <td>0.2869</td>
	  <td>0.2520</td>
	  <td>0.1865</td>
	  <td>0.3263</td>
	  <td>0.1773</td>
	  <td>0.0522</td>
	  <td>0.2127</td>
	  <td>0.1714</td>
	  <td>0.2659</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.3603</td>
	  <td>0.4636</td>
	  <td>0.4531</td>
	  <td>0.2651</td>
	  <td>0.2321</td>
	  <td>0.4871</td>
	  <td>0.4599</td>
	  <td>0.4006</td>
	  <td>0.3506</td>
	  <td>0.4550</td>
	  <td>0.3019</td>
	  <td>0.1619</td>
	  <td>0.3672</td>
	  <td>0.3280</td>
	  <td>0.4670</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.5008</td>
	  <td>0.7017</td>
	  <td>0.6696</td>
	  <td>0.5058</td>
	  <td>0.5012</td>
	  <td>0.6319</td>
	  <td>0.6238</td>
	  <td>0.5499</td>
	  <td>0.4688</td>
	  <td>0.5995</td>
	  <td>0.4329</td>
	  <td>0.2882</td>
	  <td>0.5128</td>
	  <td>0.5612</td>
	  <td>0.5888</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.8146</td>
	  <td>0.9655</td>
	  <td>0.8641</td>
	  <td>0.8378</td>
	  <td>0.7914</td>
	  <td>0.8690</td>
	  <td>0.8961</td>
	  <td>0.9282</td>
	  <td>0.7184</td>
	  <td>0.8594</td>
	  <td>0.7748</td>
	  <td>0.6884</td>
	  <td>0.8369</td>
	  <td>0.9165</td>
	  <td>0.8273</td>
	</tr>
  </tbody>
</table>
</div>

```python
mse.describe().round(4)
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
	  <th>BA_mse</th>
	  <th>C_mse</th>
	  <th>DD_mse</th>
	  <th>F_mse</th>
	  <th>GE_mse</th>
	  <th>JPM_mse</th>
	  <th>LNC_mse</th>
	  <th>LOW_mse</th>
	  <th>LUV_mse</th>
	  <th>MAR_mse</th>
	  <th>NFLX_mse</th>
	  <th>T_mse</th>
	  <th>WFC_mse</th>
	  <th>XOM_mse</th>
	  <th>XRX_mse</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	  <td>245.0000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.0032</td>
	  <td>0.0012</td>
	  <td>0.0013</td>
	  <td>0.0020</td>
	  <td>0.0026</td>
	  <td>0.0008</td>
	  <td>0.0021</td>
	  <td>0.0012</td>
	  <td>0.0019</td>
	  <td>0.0019</td>
	  <td>0.0030</td>
	  <td>0.0010</td>
	  <td>0.0013</td>
	  <td>0.0011</td>
	  <td>0.0020</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.0052</td>
	  <td>0.0008</td>
	  <td>0.0009</td>
	  <td>0.0013</td>
	  <td>0.0019</td>
	  <td>0.0005</td>
	  <td>0.0022</td>
	  <td>0.0013</td>
	  <td>0.0017</td>
	  <td>0.0023</td>
	  <td>0.0025</td>
	  <td>0.0007</td>
	  <td>0.0010</td>
	  <td>0.0007</td>
	  <td>0.0015</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.0007</td>
	  <td>0.0002</td>
	  <td>0.0002</td>
	  <td>0.0003</td>
	  <td>0.0006</td>
	  <td>0.0001</td>
	  <td>0.0003</td>
	  <td>0.0001</td>
	  <td>0.0002</td>
	  <td>0.0003</td>
	  <td>0.0005</td>
	  <td>0.0001</td>
	  <td>0.0001</td>
	  <td>0.0002</td>
	  <td>0.0002</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.0013</td>
	  <td>0.0005</td>
	  <td>0.0007</td>
	  <td>0.0010</td>
	  <td>0.0012</td>
	  <td>0.0004</td>
	  <td>0.0009</td>
	  <td>0.0006</td>
	  <td>0.0009</td>
	  <td>0.0006</td>
	  <td>0.0017</td>
	  <td>0.0005</td>
	  <td>0.0006</td>
	  <td>0.0004</td>
	  <td>0.0010</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.0016</td>
	  <td>0.0010</td>
	  <td>0.0010</td>
	  <td>0.0016</td>
	  <td>0.0019</td>
	  <td>0.0007</td>
	  <td>0.0013</td>
	  <td>0.0010</td>
	  <td>0.0015</td>
	  <td>0.0013</td>
	  <td>0.0023</td>
	  <td>0.0007</td>
	  <td>0.0009</td>
	  <td>0.0010</td>
	  <td>0.0018</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.0024</td>
	  <td>0.0015</td>
	  <td>0.0016</td>
	  <td>0.0025</td>
	  <td>0.0034</td>
	  <td>0.0011</td>
	  <td>0.0024</td>
	  <td>0.0012</td>
	  <td>0.0021</td>
	  <td>0.0024</td>
	  <td>0.0032</td>
	  <td>0.0012</td>
	  <td>0.0019</td>
	  <td>0.0017</td>
	  <td>0.0023</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.0242</td>
	  <td>0.0035</td>
	  <td>0.0042</td>
	  <td>0.0056</td>
	  <td>0.0082</td>
	  <td>0.0021</td>
	  <td>0.0108</td>
	  <td>0.0068</td>
	  <td>0.0090</td>
	  <td>0.0109</td>
	  <td>0.0135</td>
	  <td>0.0029</td>
	  <td>0.0042</td>
	  <td>0.0025</td>
	  <td>0.0079</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

In the performance table you provided, the R2 values range from 0 to 0.9655, with an average value of 0.3827. The R2 values are relatively low, which may suggest that the CAPM model is not the best fit for these stocks. However, it's important to consider other factors, such as the number of data points and the specific characteristics of the data set, before drawing any conclusions about the model's performance.

The mean MSE values range from 0.0008 to 0.0032, with the lowest value belonging to GE and the highest belonging to JPM. This means that the model performed best in predicting the stock price of GE, and worst in predicting the stock price of JPM.

The standard deviation of the MSE values ranges from 0.0005 to 0.0052, with the lowest value belonging to LOW and the highest belonging to BA. A low standard deviation indicates that the values are clustered around the mean, while a high standard deviation indicates that the values are more spread out.

Based on the provided MSE values for each stock, the overall performance based on MSE can be summarized as follows:

Mean MSE: 0.0019

Standard deviation of MSE: 0.0017

Minimum MSE: 0.0002

Maximum MSE: 0.0242

This suggests that on average, the predicted values are 0.0019 away from the true values for the given stocks, and there is a fair amount of variability in the prediction accuracy across the different stocks. 

### c. Boxcar VS. Exponential regression models for predicting residuals

The point of calculating the residuals in this analysis is to use them as inputs for predictive regression models. The residuals capture the portion of the CDS spread return that cannot be explained by the contemporaneous predictors (equity and CDS index returns). By using past residuals of the equity returns to predict novel changes in the residuals of the CDS spread returns, the predictive regression models aim to capture additional information that is not explained by the contemporaneous predictors.

        Tails?

```python
boxcar_rsd_summary = q_boxcar.describe().round(3).T
boxcar_rsd_summary['Kurtosis'] = q_boxcar.kurtosis().round(3)
boxcar_rsd_summary['Skew'] = q_boxcar.skew().round(3)
boxcar_rsd_summary
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
	  <th>count</th>
	  <th>mean</th>
	  <th>std</th>
	  <th>min</th>
	  <th>25%</th>
	  <th>50%</th>
	  <th>75%</th>
	  <th>max</th>
	  <th>Kurtosis</th>
	  <th>Skew</th>
	</tr>
	<tr>
	  <th>ticker</th>
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
	  <th>BA</th>
	  <td>228.0</td>
	  <td>-0.000</td>
	  <td>0.072</td>
	  <td>-0.327</td>
	  <td>-0.029</td>
	  <td>-0.005</td>
	  <td>0.029</td>
	  <td>0.331</td>
	  <td>6.983</td>
	  <td>0.492</td>
	</tr>
	<tr>
	  <th>C</th>
	  <td>228.0</td>
	  <td>0.002</td>
	  <td>0.040</td>
	  <td>-0.304</td>
	  <td>-0.013</td>
	  <td>0.000</td>
	  <td>0.015</td>
	  <td>0.263</td>
	  <td>22.604</td>
	  <td>-0.699</td>
	</tr>
	<tr>
	  <th>DD</th>
	  <td>228.0</td>
	  <td>-0.001</td>
	  <td>0.077</td>
	  <td>-0.300</td>
	  <td>-0.032</td>
	  <td>0.004</td>
	  <td>0.028</td>
	  <td>0.802</td>
	  <td>53.044</td>
	  <td>4.542</td>
	</tr>
	<tr>
	  <th>F</th>
	  <td>228.0</td>
	  <td>0.001</td>
	  <td>0.057</td>
	  <td>-0.192</td>
	  <td>-0.024</td>
	  <td>-0.005</td>
	  <td>0.023</td>
	  <td>0.465</td>
	  <td>19.621</td>
	  <td>2.316</td>
	</tr>
	<tr>
	  <th>GE</th>
	  <td>228.0</td>
	  <td>0.001</td>
	  <td>0.059</td>
	  <td>-0.192</td>
	  <td>-0.025</td>
	  <td>-0.000</td>
	  <td>0.023</td>
	  <td>0.235</td>
	  <td>2.714</td>
	  <td>0.056</td>
	</tr>
	<tr>
	  <th>JPM</th>
	  <td>228.0</td>
	  <td>0.002</td>
	  <td>0.039</td>
	  <td>-0.247</td>
	  <td>-0.016</td>
	  <td>-0.002</td>
	  <td>0.017</td>
	  <td>0.213</td>
	  <td>11.636</td>
	  <td>-0.184</td>
	</tr>
	<tr>
	  <th>LNC</th>
	  <td>228.0</td>
	  <td>-0.002</td>
	  <td>0.036</td>
	  <td>-0.294</td>
	  <td>-0.018</td>
	  <td>-0.002</td>
	  <td>0.018</td>
	  <td>0.079</td>
	  <td>21.759</td>
	  <td>-2.939</td>
	</tr>
	<tr>
	  <th>LOW</th>
	  <td>228.0</td>
	  <td>0.003</td>
	  <td>0.057</td>
	  <td>-0.161</td>
	  <td>-0.025</td>
	  <td>-0.003</td>
	  <td>0.026</td>
	  <td>0.502</td>
	  <td>26.215</td>
	  <td>3.125</td>
	</tr>
	<tr>
	  <th>LUV</th>
	  <td>228.0</td>
	  <td>-0.002</td>
	  <td>0.078</td>
	  <td>-0.255</td>
	  <td>-0.026</td>
	  <td>-0.005</td>
	  <td>0.014</td>
	  <td>0.805</td>
	  <td>54.230</td>
	  <td>5.448</td>
	</tr>
	<tr>
	  <th>MAR</th>
	  <td>228.0</td>
	  <td>0.000</td>
	  <td>0.054</td>
	  <td>-0.199</td>
	  <td>-0.021</td>
	  <td>0.000</td>
	  <td>0.022</td>
	  <td>0.341</td>
	  <td>9.012</td>
	  <td>0.746</td>
	</tr>
	<tr>
	  <th>NFLX</th>
	  <td>138.0</td>
	  <td>0.003</td>
	  <td>0.063</td>
	  <td>-0.232</td>
	  <td>-0.030</td>
	  <td>0.002</td>
	  <td>0.036</td>
	  <td>0.287</td>
	  <td>3.613</td>
	  <td>0.272</td>
	</tr>
	<tr>
	  <th>T</th>
	  <td>228.0</td>
	  <td>0.003</td>
	  <td>0.035</td>
	  <td>-0.237</td>
	  <td>-0.012</td>
	  <td>0.002</td>
	  <td>0.019</td>
	  <td>0.155</td>
	  <td>11.646</td>
	  <td>-1.127</td>
	</tr>
	<tr>
	  <th>WFC</th>
	  <td>228.0</td>
	  <td>0.002</td>
	  <td>0.043</td>
	  <td>-0.170</td>
	  <td>-0.016</td>
	  <td>-0.001</td>
	  <td>0.016</td>
	  <td>0.397</td>
	  <td>31.945</td>
	  <td>3.360</td>
	</tr>
	<tr>
	  <th>XOM</th>
	  <td>228.0</td>
	  <td>-0.001</td>
	  <td>0.041</td>
	  <td>-0.218</td>
	  <td>-0.010</td>
	  <td>-0.000</td>
	  <td>0.008</td>
	  <td>0.173</td>
	  <td>7.741</td>
	  <td>-0.542</td>
	</tr>
	<tr>
	  <th>XRX</th>
	  <td>228.0</td>
	  <td>0.002</td>
	  <td>0.053</td>
	  <td>-0.174</td>
	  <td>-0.031</td>
	  <td>-0.000</td>
	  <td>0.029</td>
	  <td>0.204</td>
	  <td>2.117</td>
	  <td>0.315</td>
	</tr>
  </tbody>
</table>
</div>

```python
exp_rsd_summary = q_exp.describe().round(3).T
exp_rsd_summary['Kurtosis'] = q_exp.kurtosis().round(3)
exp_rsd_summary['Skew'] = q_exp.skew().round(3)
exp_rsd_summary
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
	  <th>count</th>
	  <th>mean</th>
	  <th>std</th>
	  <th>min</th>
	  <th>25%</th>
	  <th>50%</th>
	  <th>75%</th>
	  <th>max</th>
	  <th>Kurtosis</th>
	  <th>Skew</th>
	</tr>
	<tr>
	  <th>ticker</th>
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
	  <th>BA</th>
	  <td>109.0</td>
	  <td>-0.006</td>
	  <td>0.042</td>
	  <td>-0.182</td>
	  <td>-0.023</td>
	  <td>-0.009</td>
	  <td>0.011</td>
	  <td>0.132</td>
	  <td>3.456</td>
	  <td>-0.031</td>
	</tr>
	<tr>
	  <th>C</th>
	  <td>109.0</td>
	  <td>0.002</td>
	  <td>0.021</td>
	  <td>-0.059</td>
	  <td>-0.010</td>
	  <td>-0.000</td>
	  <td>0.011</td>
	  <td>0.072</td>
	  <td>1.313</td>
	  <td>0.193</td>
	</tr>
	<tr>
	  <th>DD</th>
	  <td>109.0</td>
	  <td>0.005</td>
	  <td>0.031</td>
	  <td>-0.070</td>
	  <td>-0.016</td>
	  <td>0.004</td>
	  <td>0.022</td>
	  <td>0.089</td>
	  <td>0.011</td>
	  <td>0.108</td>
	</tr>
	<tr>
	  <th>F</th>
	  <td>109.0</td>
	  <td>0.003</td>
	  <td>0.036</td>
	  <td>-0.109</td>
	  <td>-0.018</td>
	  <td>-0.000</td>
	  <td>0.022</td>
	  <td>0.115</td>
	  <td>0.884</td>
	  <td>0.228</td>
	</tr>
	<tr>
	  <th>GE</th>
	  <td>109.0</td>
	  <td>-0.003</td>
	  <td>0.033</td>
	  <td>-0.133</td>
	  <td>-0.020</td>
	  <td>-0.003</td>
	  <td>0.018</td>
	  <td>0.108</td>
	  <td>2.255</td>
	  <td>-0.295</td>
	</tr>
	<tr>
	  <th>JPM</th>
	  <td>109.0</td>
	  <td>0.001</td>
	  <td>0.022</td>
	  <td>-0.069</td>
	  <td>-0.010</td>
	  <td>-0.000</td>
	  <td>0.012</td>
	  <td>0.056</td>
	  <td>1.540</td>
	  <td>-0.282</td>
	</tr>
	<tr>
	  <th>LNC</th>
	  <td>109.0</td>
	  <td>0.002</td>
	  <td>0.026</td>
	  <td>-0.095</td>
	  <td>-0.012</td>
	  <td>0.001</td>
	  <td>0.017</td>
	  <td>0.080</td>
	  <td>2.298</td>
	  <td>-0.041</td>
	</tr>
	<tr>
	  <th>LOW</th>
	  <td>109.0</td>
	  <td>0.005</td>
	  <td>0.045</td>
	  <td>-0.106</td>
	  <td>-0.020</td>
	  <td>0.002</td>
	  <td>0.030</td>
	  <td>0.222</td>
	  <td>4.282</td>
	  <td>0.982</td>
	</tr>
	<tr>
	  <th>LUV</th>
	  <td>109.0</td>
	  <td>-0.007</td>
	  <td>0.043</td>
	  <td>-0.129</td>
	  <td>-0.031</td>
	  <td>-0.007</td>
	  <td>0.011</td>
	  <td>0.189</td>
	  <td>3.954</td>
	  <td>0.717</td>
	</tr>
	<tr>
	  <th>MAR</th>
	  <td>109.0</td>
	  <td>-0.003</td>
	  <td>0.035</td>
	  <td>-0.103</td>
	  <td>-0.023</td>
	  <td>-0.002</td>
	  <td>0.017</td>
	  <td>0.110</td>
	  <td>1.384</td>
	  <td>0.005</td>
	</tr>
	<tr>
	  <th>NFLX</th>
	  <td>18.0</td>
	  <td>-0.008</td>
	  <td>0.028</td>
	  <td>-0.062</td>
	  <td>-0.026</td>
	  <td>-0.013</td>
	  <td>0.011</td>
	  <td>0.048</td>
	  <td>-0.157</td>
	  <td>0.221</td>
	</tr>
	<tr>
	  <th>T</th>
	  <td>109.0</td>
	  <td>0.002</td>
	  <td>0.031</td>
	  <td>-0.090</td>
	  <td>-0.019</td>
	  <td>0.003</td>
	  <td>0.022</td>
	  <td>0.079</td>
	  <td>0.569</td>
	  <td>-0.200</td>
	</tr>
	<tr>
	  <th>WFC</th>
	  <td>109.0</td>
	  <td>-0.000</td>
	  <td>0.021</td>
	  <td>-0.065</td>
	  <td>-0.012</td>
	  <td>-0.002</td>
	  <td>0.012</td>
	  <td>0.058</td>
	  <td>1.611</td>
	  <td>-0.288</td>
	</tr>
	<tr>
	  <th>XOM</th>
	  <td>109.0</td>
	  <td>-0.001</td>
	  <td>0.030</td>
	  <td>-0.123</td>
	  <td>-0.012</td>
	  <td>0.000</td>
	  <td>0.008</td>
	  <td>0.173</td>
	  <td>11.996</td>
	  <td>1.077</td>
	</tr>
	<tr>
	  <th>XRX</th>
	  <td>109.0</td>
	  <td>0.003</td>
	  <td>0.038</td>
	  <td>-0.091</td>
	  <td>-0.020</td>
	  <td>0.002</td>
	  <td>0.022</td>
	  <td>0.088</td>
	  <td>-0.061</td>
	  <td>0.001</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

In general, the boxcar model with a 16-week window would perform better when the return distribution is relatively symmetric and with low kurtosis, while the exponential model would be better suited for distributions with high skewness and kurtosis.

Based on the skewness and kurtosis data from the Boxcar performance stats, we can see that some stocks have relatively high kurtosis and skewness values, which suggests that an exponential model may perform better for these stocks. For example, the stocks LNC, LUV, and DD have high kurtosis and skewness values, indicating that their return distributions are more heavy-tailed and asymmetric than the other stocks in the list.

On the other hand, some stocks have low kurtosis and skewness values, which suggests that a boxcar model may perform better for these stocks. For example, the stocks GE and T have relatively low kurtosis and skewness values, indicating that their return distributions are more symmetric and have less tail heaviness compared to the other stocks.

Comparing the two tables, we can see that the exponential regression model generally has smaller mean and standard deviation of the residuals, indicating better performance in predicting stock prices. Moreover, the exponential regression model has lower values of kurtosis and skewness, indicating a more normal distribution of residuals, compared to the boxcar model.

        Plot residual mean

```python
# Create a figure with two subplots
fig, ax = plt.subplots(1, 2, figsize=(12, 4))

# Plot the mean residual for boxcar and exponential regression models
q_boxcar.describe().iloc[1].plot(ax=ax[0], label='Boxcar')
q_exp.describe().iloc[1].plot(ax=ax[0], label='Exponential')
ax[0].set_title('Residual Mean Stat')
ax[0].legend(loc='upper left')

# Plot the absolute mean residual for boxcar and exponential regression models
abs(q_boxcar).describe().iloc[1].plot(ax=ax[1], label='Boxcar')
abs(q_exp).describe().iloc[1].plot(ax=ax[1], label='Exponential')
ax[1].set_title('Absolute Residual Mean Stat')
ax[1].legend(loc='upper left')

# Show the figure
plt.show()
```

![png](output_72_0.png)

Comment:

The mean residual values for both methods are close to zero for most of the stocks, with some exceptions where the mean residual values are negative for the exponential method.

The standard deviation of the residuals for the exponential method is generally smaller than that of the boxcar method, indicating that the exponential method provides better smoothing of the data.

The minimum and maximum residual values for both methods are comparable, with some exceptions where the maximum residual value for the exponential method is smaller than that of the boxcar method.

Overall, the residual stats suggest that the exponential method is better at smoothing the time series data, providing a more accurate representation of the underlying trend. However, the choice of method depends on the specific application and the nature of the data being analyzed.

        Using QQ plot to assess the normality assumption of the risduals

```python
# Create a figure with two subplots
fig, ax = plt.subplots(1, 2, figsize=(12, 4))

# Plot the Boxcar regression QQ plot in the first subplot
sm.qqplot(q_boxcar.mean(axis=1), line='s', ax=ax[0])
ax[0].set_title('Boxcar Regression QQ Plot', fontsize=20)

# Plot the Exponential regression QQ plot in the second subplot
sm.qqplot(q_exp.mean(axis=1), line='s', ax=ax[1])
ax[1].set_title('Exponential Regression QQ Plot', fontsize=20)

# Show the figure
plt.show()
```

![png](output_75_0.png)

Comment:

In the context of regression analysis, the residuals represent the difference between the actual values and the predicted values of the response variable. If the errors in the model (which the residuals represent) are normally distributed, then the distribution of the predicted values will also be normal. This is because the predicted values are calculated as the sum of the intercept, the product of the coefficients and the predictor variables, and the error term, which is assumed to be normally distributed.

Assuming normality of the residuals is important for several reasons. First, it enables us to make accurate predictions and estimate confidence intervals for those predictions. Second, it allows us to use statistical inference techniques, such as hypothesis testing and confidence intervals, that assume normality of the errors. Finally, it helps us to identify potential issues with the model, such as heteroscedasticity or skewness in the residuals.

A QQ plot is a graphical method for assessing the normality assumption of the residuals in a regression model. The closer the points on the plot are to a straight line, the more closely the distribution of the residuals approximates a normal distribution. Based on the plots above, the exponential regression model has residuals that are more closely aligned to a straight line, it indicates that the distribution of the residuals in this model is closer to normal than in the other model.

### d. Possible explanations why exponential model might work better than boxcar model
    Historical events:

Starting with COVID-19, the pandemic caused widespread economic disruption and uncertainty, which had a significant impact on financial markets. For example, in early 2020, global stock markets experienced a sharp drop as investors reacted to the uncertainty surrounding the pandemic. This drop was followed by a strong recovery in equity prices in the latter half of 2020, as governments and central banks around the world implemented various measures to support economic growth and provide liquidity to financial markets.

The impact of COVID-19 on equity returns and spreads could potentially affect the performance of both boxcar and exponential regression models. In the case of boxcar regression, the model assumes that the underlying process generating the data is stationary, meaning that its statistical properties remain constant over time. However, if the impact of COVID-19 on equity returns and spreads has caused changes in the underlying process, then the assumptions of the boxcar model may no longer hold, and the model may not perform as well in predicting future equity returns and spreads.

Similarly, the impact of COVID-19 on equity returns and spreads could also affect the performance of exponential regression models. Exponential regression models assume that the relationship between the independent and dependent variables is exponential, which may not hold if the impact of COVID-19 has caused sudden and significant changes in the underlying process.

Moving on to the conflict in Ukraine, the ongoing conflict has had a number of economic and political implications, including potential impacts on equity returns and spreads. For example, geopolitical tensions and uncertainty can cause investors to reassess their risk appetite and adjust their portfolios, which could in turn affect equity returns and spreads.

Again, these potential effects of the conflict on equity returns and spreads could impact the performance of regression models like boxcar and exponential regression. If the conflict has caused sudden and significant changes in the underlying process generating the data, then the assumptions of these models may no longer hold, and they may not perform as well in predicting future equity returns and spreads.

    Why exponential model performs better?

One possible reason why the exponential model may perform better than the boxcar model during times of significant market events is that the exponential model puts more weight on recent observations than older ones. This means that as new data becomes available, the exponential model will update its prediction faster than the boxcar model, which gives equal weight to all observations within the window.

During times of significant market events, market conditions can change rapidly and unexpectedly, so it can be important to have a model that can adapt quickly to new information. The exponential model's ability to give more weight to recent data can make it better suited to capturing these rapid changes and providing more accurate predictions.

Furthermore, the exponential model's ability to capture trends and changes in the underlying data can be particularly useful during times of significant market events. For example, during the COVID-19 pandemic, the exponential model's ability to capture the exponential growth of cases and deaths could have made it better suited to predicting the market impact of the pandemic than the boxcar model, which would have given equal weight to all observations within the window. Similarly, during the Ukraine conflict, the exponential model's ability to capture the rapidly changing geopolitical landscape could have made it better suited to predicting the market impact of the conflict than the boxcar model.

    Cases when exponential model underperform?

In general, the exponential model may underperform the boxcar model if the underlying data is more volatile or if the trends in the data are more short-lived. In such cases, the boxcar model with a larger window size may be better suited to capture the longer-term trends in the data, whereas the exponential model may be more sensitive to short-term fluctuations and noise.

It's also worth noting that the choice of regression model depends on the specific goals of the analysis and the preferences of the researcher. While the exponential model may have performed better than the boxcar model in the context of the COVID-19 pandemic and the Ukraine crisis, it may not necessarily be the best choice for other types of data and historical events. Ultimately, the best approach is to use a range of models and compare their performance on the specific data at hand.

While exponential models can be more robust to certain types of events, there are situations where they may underperform compared to boxcar models. Here are a few examples:

Sudden and unexpected shocks to the economy: If there is a sudden and unexpected shock to the economy, such as a terrorist attack or natural disaster, the exponential model may struggle to capture the full impact of the event. In such situations, the boxcar model may be better able to capture the sudden shift in the data.

Periods of low volatility: During periods of low volatility, the exponential model may overestimate the magnitude of changes in the data. This can lead to overconfident predictions and potentially poor performance. In such situations, the boxcar model may be more appropriate as it can smooth out the noise in the data.

Changes in trend: If there is a significant change in the trend of the data, the exponential model may struggle to adapt quickly enough. This is because the exponential model assumes that the trend will continue indefinitely, which may not always be the case. In contrast, the boxcar model can adjust to changes in trend more quickly by adjusting the window size.

---
tags:
key_concepts:
parent_directory: FINM Quantitative Trading Strategies
cssclasses: academia
title: Futures Spread Dynamics
aliases:
  - Futures Spread Dynamics
---

# Futures Spread Dynamics
## Futures Spread Dynamics - Jingwen Li

```python
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import scipy as sp
import quandl
import functools
import seaborn as sns
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score
import warnings
warnings.filterwarnings('ignore')
```

```python
@functools.lru_cache(maxsize=1600)
def fetch_quandl(my_data_items, trim_start=None, trim_end=None):
    qdata = quandl.get(list(my_data_items), returns="pandas", 
                      trim_start=trim_start, trim_end=trim_end,
                      api_key='key')
    return qdata
```

```python
def clean_quandl_columns(dataframe):
    replacement_columns = {}
    for c in dataframe.columns:
        series_name, variable = c.split(' - ')
        source_name, asset = series_name.split('/')
        replacement_columns[c] = variable
    renamed_data = dataframe.rename(columns=replacement_columns)
    return renamed_data
```

### 1. Pulling data from Quandl

```python
l = []
for i in ['H','M','U','Z']:
    for j in range(2020,2023):
        emini_contracts = f'OWF/CBT_FV_FV_{i}{j}_IVM' 
        es_option_data = clean_quandl_columns(fetch_quandl((emini_contracts,),
                                                   trim_start="2020-12-03", 
                                                   trim_end="2022-08-31")
                                     )
        l.append(es_option_data)
        CBT_FV_FV = pd.concat(l)
CBT_FV_FV = CBT_FV_FV [CBT_FV_FV.DtT > 30]
CBT_FV_FV = CBT_FV_FV.sort_values('DtT')
CBT_FV_FV = CBT_FV_FV [~CBT_FV_FV.index.duplicated()].sort_index()
df_FV = CBT_FV_FV.iloc[:,0].to_frame()
df_FV.columns = ['5Yr']
df_FV

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
	  <th>5Yr</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2020-12-03</th>
	  <td>125.820312</td>
	</tr>
	<tr>
	  <th>2020-12-04</th>
	  <td>125.734375</td>
	</tr>
	<tr>
	  <th>2020-12-07</th>
	  <td>125.898438</td>
	</tr>
	<tr>
	  <th>2020-12-08</th>
	  <td>125.906250</td>
	</tr>
	<tr>
	  <th>2020-12-09</th>
	  <td>125.812500</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-08-25</th>
	  <td>111.359375</td>
	</tr>
	<tr>
	  <th>2022-08-26</th>
	  <td>111.218750</td>
	</tr>
	<tr>
	  <th>2022-08-29</th>
	  <td>110.890625</td>
	</tr>
	<tr>
	  <th>2022-08-30</th>
	  <td>110.820312</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>110.820312</td>
	</tr>
  </tbody>
</table>
<p>454 rows × 1 columns</p>
</div>

```python
l = []
for i in ['H','M','U','Z']:
    for j in range(2020,2023):
        emini_contracts = f'OWF/CBT_TU_TU_{i}{j}_IVM' 
        es_option_data = clean_quandl_columns(fetch_quandl((emini_contracts,),
                                                   trim_start="2020-12-03", 
                                                   trim_end="2022-08-31")
                                     )
        l.append(es_option_data)
        CBT_TU_TU = pd.concat(l)
CBT_TU_TU = CBT_TU_TU [CBT_TU_TU.DtT > 30]
CBT_TU_TU = CBT_TU_TU.sort_values('DtT')
CBT_TU_TU = CBT_TU_TU [~CBT_TU_TU.index.duplicated()].sort_index()
df_TU = CBT_TU_TU.iloc[:,0].to_frame()
df_TU.columns = ['2Yr']
df_TU = df_TU * 1.1066
df_TU
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
	  <th>2Yr</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2020-12-03</th>
	  <td>122.161724</td>
	</tr>
	<tr>
	  <th>2020-12-04</th>
	  <td>122.168640</td>
	</tr>
	<tr>
	  <th>2020-12-07</th>
	  <td>122.192847</td>
	</tr>
	<tr>
	  <th>2020-12-08</th>
	  <td>122.175556</td>
	</tr>
	<tr>
	  <th>2020-12-09</th>
	  <td>122.168640</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-08-25</th>
	  <td>115.579183</td>
	</tr>
	<tr>
	  <th>2022-08-26</th>
	  <td>115.440858</td>
	</tr>
	<tr>
	  <th>2022-08-29</th>
	  <td>115.337114</td>
	</tr>
	<tr>
	  <th>2022-08-30</th>
	  <td>115.245474</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>115.267952</td>
	</tr>
  </tbody>
</table>
<p>454 rows × 1 columns</p>
</div>

```python
l = []
for i in ['H','M','U','Z']:
    for j in range(2020,2023):
        emini_contracts = f'OWF/CBT_TY_TY_{i}{j}_IVM' 
        es_option_data = clean_quandl_columns(fetch_quandl((emini_contracts,),
                                                   trim_start="2020-12-03", 
                                                   trim_end="2022-08-31")
                                     )
        l.append(es_option_data)
        CBT_TY_TY = pd.concat(l)
CBT_TY_TY = CBT_TY_TY [CBT_TY_TY.DtT > 30]
CBT_TY_TY = CBT_TY_TY.sort_values('DtT')
CBT_TY_TY = CBT_TY_TY [~CBT_TY_TY.index.duplicated()].sort_index()
df_TY = CBT_TY_TY.iloc[:,0].to_frame()
df_TY.columns = ['10Yr']
df_TY = df_TY * 0.9338
df_TY
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
	  <th>10Yr</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2020-12-03</th>
	  <td>128.543406</td>
	</tr>
	<tr>
	  <th>2020-12-04</th>
	  <td>128.280775</td>
	</tr>
	<tr>
	  <th>2020-12-07</th>
	  <td>128.601769</td>
	</tr>
	<tr>
	  <th>2020-12-08</th>
	  <td>128.689312</td>
	</tr>
	<tr>
	  <th>2020-12-09</th>
	  <td>128.514225</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-08-25</th>
	  <td>110.086266</td>
	</tr>
	<tr>
	  <th>2022-08-26</th>
	  <td>109.881997</td>
	</tr>
	<tr>
	  <th>2022-08-29</th>
	  <td>109.356734</td>
	</tr>
	<tr>
	  <th>2022-08-30</th>
	  <td>109.327553</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>109.167056</td>
	</tr>
  </tbody>
</table>
<p>454 rows × 1 columns</p>
</div>

### 2. Combining data and getting all the metrics

```python
df_q3= pd.merge(df_FV, df_TU, left_index=True, right_index=True, how = 'inner')
df_q3['Spread'] = df_q3['2Yr'] - df_q3['5Yr']
df_q3['Rolling Avg 10d'] = df_q3['Spread'].rolling(10).mean()
df_q3['Diff 10d'] = df_q3['Spread'] - df_q3['Rolling Avg 10d']
df_q3['Rolling Avg 50d'] = df_q3['Spread'].rolling(50).mean()
df_q3['Diff 50d'] = df_q3['Spread'] - df_q3['Rolling Avg 50d']
df_q3['Rolling Avg 100d'] = df_q3['Spread'].rolling(100).mean()
df_q3['Diff 100d'] = df_q3['Spread'] - df_q3['Rolling Avg 100d']
df_q3.round(2)
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
	  <th>5Yr</th>
	  <th>2Yr</th>
	  <th>Spread</th>
	  <th>Rolling Avg 10d</th>
	  <th>Diff 10d</th>
	  <th>Rolling Avg 50d</th>
	  <th>Diff 50d</th>
	  <th>Rolling Avg 100d</th>
	  <th>Diff 100d</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2020-12-03</th>
	  <td>125.82</td>
	  <td>122.16</td>
	  <td>-3.66</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2020-12-04</th>
	  <td>125.73</td>
	  <td>122.17</td>
	  <td>-3.57</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2020-12-07</th>
	  <td>125.90</td>
	  <td>122.19</td>
	  <td>-3.71</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2020-12-08</th>
	  <td>125.91</td>
	  <td>122.18</td>
	  <td>-3.73</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2020-12-09</th>
	  <td>125.81</td>
	  <td>122.17</td>
	  <td>-3.64</td>
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
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-08-25</th>
	  <td>111.36</td>
	  <td>115.58</td>
	  <td>4.22</td>
	  <td>3.91</td>
	  <td>0.31</td>
	  <td>3.80</td>
	  <td>0.42</td>
	  <td>3.93</td>
	  <td>0.29</td>
	</tr>
	<tr>
	  <th>2022-08-26</th>
	  <td>111.22</td>
	  <td>115.44</td>
	  <td>4.22</td>
	  <td>3.98</td>
	  <td>0.24</td>
	  <td>3.78</td>
	  <td>0.44</td>
	  <td>3.94</td>
	  <td>0.29</td>
	</tr>
	<tr>
	  <th>2022-08-29</th>
	  <td>110.89</td>
	  <td>115.34</td>
	  <td>4.45</td>
	  <td>4.10</td>
	  <td>0.35</td>
	  <td>3.77</td>
	  <td>0.68</td>
	  <td>3.94</td>
	  <td>0.50</td>
	</tr>
	<tr>
	  <th>2022-08-30</th>
	  <td>110.82</td>
	  <td>115.25</td>
	  <td>4.43</td>
	  <td>4.20</td>
	  <td>0.23</td>
	  <td>3.76</td>
	  <td>0.67</td>
	  <td>3.95</td>
	  <td>0.47</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>110.82</td>
	  <td>115.27</td>
	  <td>4.45</td>
	  <td>4.27</td>
	  <td>0.18</td>
	  <td>3.75</td>
	  <td>0.70</td>
	  <td>3.96</td>
	  <td>0.48</td>
	</tr>
  </tbody>
</table>
<p>454 rows × 9 columns</p>
</div>

```python
df_q4= pd.merge(df_FV, df_TY, left_index=True, right_index=True, how = 'inner')
df_q4['Spread'] = df_q4['10Yr'] - df_q4['5Yr']
df_q4['Rolling Avg 10d'] = df_q4['Spread'].rolling(10).mean()
df_q4['Diff 10d'] = df_q4['Spread'] - df_q4['Rolling Avg 10d']
df_q4['Rolling Avg 50d'] = df_q4['Spread'].rolling(50).mean()
df_q4['Diff 50d'] = df_q4['Spread'] - df_q4['Rolling Avg 50d']
df_q4['Rolling Avg 100d'] = df_q4['Spread'].rolling(100).mean()
df_q4['Diff 100d'] = df_q4['Spread'] - df_q4['Rolling Avg 100d']
df_q4.round(2)
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
	  <th>5Yr</th>
	  <th>10Yr</th>
	  <th>Spread</th>
	  <th>Rolling Avg 10d</th>
	  <th>Diff 10d</th>
	  <th>Rolling Avg 50d</th>
	  <th>Diff 50d</th>
	  <th>Rolling Avg 100d</th>
	  <th>Diff 100d</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2020-12-03</th>
	  <td>125.82</td>
	  <td>128.54</td>
	  <td>2.72</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2020-12-04</th>
	  <td>125.73</td>
	  <td>128.28</td>
	  <td>2.55</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2020-12-07</th>
	  <td>125.90</td>
	  <td>128.60</td>
	  <td>2.70</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2020-12-08</th>
	  <td>125.91</td>
	  <td>128.69</td>
	  <td>2.78</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2020-12-09</th>
	  <td>125.81</td>
	  <td>128.51</td>
	  <td>2.70</td>
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
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-08-25</th>
	  <td>111.36</td>
	  <td>110.09</td>
	  <td>-1.27</td>
	  <td>-1.16</td>
	  <td>-0.11</td>
	  <td>-1.27</td>
	  <td>-0.01</td>
	  <td>-1.40</td>
	  <td>0.12</td>
	</tr>
	<tr>
	  <th>2022-08-26</th>
	  <td>111.22</td>
	  <td>109.88</td>
	  <td>-1.34</td>
	  <td>-1.20</td>
	  <td>-0.14</td>
	  <td>-1.26</td>
	  <td>-0.08</td>
	  <td>-1.40</td>
	  <td>0.06</td>
	</tr>
	<tr>
	  <th>2022-08-29</th>
	  <td>110.89</td>
	  <td>109.36</td>
	  <td>-1.53</td>
	  <td>-1.28</td>
	  <td>-0.26</td>
	  <td>-1.25</td>
	  <td>-0.29</td>
	  <td>-1.40</td>
	  <td>-0.13</td>
	</tr>
	<tr>
	  <th>2022-08-30</th>
	  <td>110.82</td>
	  <td>109.33</td>
	  <td>-1.49</td>
	  <td>-1.34</td>
	  <td>-0.15</td>
	  <td>-1.23</td>
	  <td>-0.26</td>
	  <td>-1.40</td>
	  <td>-0.09</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>110.82</td>
	  <td>109.17</td>
	  <td>-1.65</td>
	  <td>-1.40</td>
	  <td>-0.25</td>
	  <td>-1.23</td>
	  <td>-0.43</td>
	  <td>-1.41</td>
	  <td>-0.24</td>
	</tr>
  </tbody>
</table>
<p>454 rows × 9 columns</p>
</div>

### 3. Plots of the prices, spreads and rolling averages.

    a. US T-Notes 5-yr Price VS. 2-yr Price

```python
df_q3.plot(y=['5Yr', "2Yr"], figsize=(10, 6))
plt.xlabel('Date')
plt.ylabel('Price')
plt.title('US T-Notes 5-yr Price VS. 2-yr Price')
plt.show()
```

![png](output_13_0.png)

    b. US T-Notes 5-yr Price VS. 10-yr Price

```python
df_q4.plot(y=['5Yr', "10Yr"], figsize=(10, 6))
plt.xlabel('Date')
plt.ylabel('Price')
plt.title('US T-Notes 5-yr Price VS. 10-yr Price')
plt.show()
```

![png](output_15_0.png)

Comments: 

In 2021, The US Economy started to recover and improved, which led to a rise in bond yields, as investors began to shift their focus from safe-haven assets to riskier assets. The Federal Reserve also began to signal that it would start to unwind its monetary stimulus measures, which also contributed to the rise in bond yields. As a result, the 2-year, 5-year, and 10-year T-notes prices fell, and the yields increased. Both charts of the 2-year, 5-year, and 10-year T-notes prices align with the facts.

In addition, in 2021 and 2022, the US Government announced several fiscal stimulus package, to support the economy, which added more supply to the market and also put some pressure on T-notes prices and yields.

We can also see from the table and from the graph that the spread between US T-Notes 2-yr Price and 5-yr Price grow from negative to positive. There is a relative wide gap between this two prices through out the time. The spread between US T-Notes 10-yr Price and 5-yr Price however is very narrow in contrast.

    c. 5-yr vs 2-yr spread and 10-day, 50-day and 100-day rolling average

```python
df_q3.plot(y=["Spread", "Rolling Avg 10d", 'Rolling Avg 50d','Rolling Avg 100d'], figsize=(10, 6))
plt.xlabel('Date')
plt.ylabel('Price')
plt.title('US T-Notes 5-yr Price VS. 2-yr Spread and Rolling Average')
plt.show()
```

![png](output_18_0.png)

Comments: As we can see from the chart, the spread between US T-Notes 2-yr price and 5-yr price is increasing during the time period, this is probably due the expectation of higher inteset risk for the 3 yr gap.

    d. 5-yr vs 10-yr spread and 10-day, 50-day and 100-day rolling average

```python
df_q4.plot(y=["Spread", "Rolling Avg 10d", 'Rolling Avg 50d','Rolling Avg 100d'], figsize=(10, 6))
plt.xlabel('Date')
plt.ylabel('Price')
plt.title('US T-Notes 5-yr Price VS. 10-yr Spread and Rolling Average')
plt.show()
```

![png](output_21_0.png)

Comments: Since this spread is 10-Yr price - 5-Yr price, we would expect an opposite trend compared to the other sample, however, we can see the downward strength is not as strong, it is more volatile and fluctruates throughout the time.

### 3. Analyzing all the data

    a. Statistic Summary

```python
# CBT_FV_FV VS. CBT_TU_TU?¿/
df_q3.describe().round(2)
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
	  <th>5Yr</th>
	  <th>2Yr</th>
	  <th>Spread</th>
	  <th>Rolling Avg 10d</th>
	  <th>Diff 10d</th>
	  <th>Rolling Avg 50d</th>
	  <th>Diff 50d</th>
	  <th>Rolling Avg 100d</th>
	  <th>Diff 100d</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>454.00</td>
	  <td>454.00</td>
	  <td>454.00</td>
	  <td>445.00</td>
	  <td>445.00</td>
	  <td>405.00</td>
	  <td>405.00</td>
	  <td>355.00</td>
	  <td>355.00</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>120.17</td>
	  <td>120.14</td>
	  <td>-0.03</td>
	  <td>-0.04</td>
	  <td>0.08</td>
	  <td>-0.03</td>
	  <td>0.44</td>
	  <td>-0.12</td>
	  <td>0.87</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>5.02</td>
	  <td>2.44</td>
	  <td>2.62</td>
	  <td>2.57</td>
	  <td>0.30</td>
	  <td>2.39</td>
	  <td>0.67</td>
	  <td>2.08</td>
	  <td>0.87</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>109.31</td>
	  <td>114.91</td>
	  <td>-3.93</td>
	  <td>-3.84</td>
	  <td>-0.92</td>
	  <td>-3.64</td>
	  <td>-1.45</td>
	  <td>-2.79</td>
	  <td>-1.14</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>114.74</td>
	  <td>117.30</td>
	  <td>-1.91</td>
	  <td>-1.86</td>
	  <td>-0.10</td>
	  <td>-1.84</td>
	  <td>-0.01</td>
	  <td>-1.83</td>
	  <td>0.29</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>122.22</td>
	  <td>121.52</td>
	  <td>-0.68</td>
	  <td>-0.57</td>
	  <td>0.07</td>
	  <td>-0.74</td>
	  <td>0.42</td>
	  <td>-0.91</td>
	  <td>0.84</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>123.97</td>
	  <td>122.12</td>
	  <td>2.56</td>
	  <td>2.43</td>
	  <td>0.26</td>
	  <td>1.78</td>
	  <td>0.90</td>
	  <td>1.47</td>
	  <td>1.36</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>126.20</td>
	  <td>122.28</td>
	  <td>5.59</td>
	  <td>5.03</td>
	  <td>1.09</td>
	  <td>4.25</td>
	  <td>2.06</td>
	  <td>3.96</td>
	  <td>2.98</td>
	</tr>
  </tbody>
</table>
</div>

```python
# CBT_FV_FV VS. CBT_TY_TY
df_q4.describe().round(2)
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
	  <th>5Yr</th>
	  <th>10Yr</th>
	  <th>Spread</th>
	  <th>Rolling Avg 10d</th>
	  <th>Diff 10d</th>
	  <th>Rolling Avg 50d</th>
	  <th>Diff 50d</th>
	  <th>Rolling Avg 100d</th>
	  <th>Diff 100d</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>454.00</td>
	  <td>454.00</td>
	  <td>454.00</td>
	  <td>445.00</td>
	  <td>445.00</td>
	  <td>405.00</td>
	  <td>405.00</td>
	  <td>355.00</td>
	  <td>355.00</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>120.17</td>
	  <td>120.26</td>
	  <td>0.10</td>
	  <td>0.09</td>
	  <td>-0.04</td>
	  <td>0.03</td>
	  <td>-0.20</td>
	  <td>0.05</td>
	  <td>-0.23</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>5.02</td>
	  <td>5.96</td>
	  <td>1.19</td>
	  <td>1.14</td>
	  <td>0.30</td>
	  <td>0.91</td>
	  <td>0.74</td>
	  <td>0.61</td>
	  <td>0.82</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>109.31</td>
	  <td>106.83</td>
	  <td>-2.48</td>
	  <td>-2.08</td>
	  <td>-1.17</td>
	  <td>-1.67</td>
	  <td>-2.17</td>
	  <td>-1.41</td>
	  <td>-2.15</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>114.74</td>
	  <td>114.65</td>
	  <td>-0.72</td>
	  <td>-0.70</td>
	  <td>-0.21</td>
	  <td>-0.58</td>
	  <td>-0.58</td>
	  <td>-0.29</td>
	  <td>-0.85</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>122.22</td>
	  <td>122.47</td>
	  <td>0.11</td>
	  <td>0.15</td>
	  <td>-0.02</td>
	  <td>0.28</td>
	  <td>-0.15</td>
	  <td>0.31</td>
	  <td>-0.26</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>123.97</td>
	  <td>124.23</td>
	  <td>0.87</td>
	  <td>0.84</td>
	  <td>0.15</td>
	  <td>0.57</td>
	  <td>0.33</td>
	  <td>0.51</td>
	  <td>0.39</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>126.20</td>
	  <td>128.98</td>
	  <td>2.86</td>
	  <td>2.75</td>
	  <td>0.99</td>
	  <td>2.38</td>
	  <td>1.46</td>
	  <td>1.06</td>
	  <td>1.71</td>
	</tr>
  </tbody>
</table>
</div>

Comments: There is a negative mean of -0.03 for the 5-yr and 2-yr spread and a std of 2.62. In comparison, there is a positive mean of 0.1 for the 5-yr and 10-yr spread.

    b. Risk Analysis

```python
def performance_summary(return_data):
    """ 
        Returns the Performance Stats for given set of returns
        Inputs: 
            return_data - DataFrame with Date index and Monthly Returns for different assets/strategies.
        Output:
            summary_stats - DataFrame with annualized mean return, vol, sharpe ratio. Skewness, Excess Kurtosis, Var (0.5) and
                            CVaR (0.5) and drawdown based on monthly returns. 
    """
    summary_stats = return_data.mean().to_frame('Mean').apply(lambda x: x*12)
    summary_stats['Volatility'] = return_data.std().apply(lambda x: x*np.sqrt(12))
    summary_stats['Sharpe Ratio'] = summary_stats['Mean']/summary_stats['Volatility']
    
    summary_stats['Skewness'] = return_data.skew()
    summary_stats['Excess Kurtosis'] = return_data.kurtosis()
    summary_stats['VaR (0.05)'] = return_data.quantile(.05, axis = 0)
    summary_stats['CVaR (0.05)'] = return_data[return_data <= return_data.quantile(.05, axis = 0)].mean()
    summary_stats['Min'] = return_data.min()
    summary_stats['Max'] = return_data.max()
    
    wealth_index = 1000*(1+return_data).cumprod()
    previous_peaks = wealth_index.cummax()
    drawdowns = (wealth_index - previous_peaks)/previous_peaks

    summary_stats['Max Drawdown'] = drawdowns.min()
    summary_stats['Peak'] = [previous_peaks[col][:drawdowns[col].idxmin()].idxmax() for col in previous_peaks.columns]
    summary_stats['Bottom'] = drawdowns.idxmin()
    
    recovery_date = []
    for col in wealth_index.columns:
        prev_max = previous_peaks[col][:drawdowns[col].idxmin()].max()
        recovery_wealth = pd.DataFrame([wealth_index[col][drawdowns[col].idxmin():]]).T
        recovery_date.append(recovery_wealth[recovery_wealth[col] >= prev_max].index.min())
    summary_stats['Recovery'] = recovery_date
    
    return summary_stats
```

```python
factor_summary1 = performance_summary(df_q3)
factor_summary1.round(2)
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
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	  <th>Skewness</th>
	  <th>Excess Kurtosis</th>
	  <th>VaR (0.05)</th>
	  <th>CVaR (0.05)</th>
	  <th>Min</th>
	  <th>Max</th>
	  <th>Max Drawdown</th>
	  <th>Peak</th>
	  <th>Bottom</th>
	  <th>Recovery</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>5Yr</th>
	  <td>1441.98</td>
	  <td>17.39</td>
	  <td>82.93</td>
	  <td>-0.67</td>
	  <td>-1.09</td>
	  <td>111.57</td>
	  <td>110.86</td>
	  <td>109.31</td>
	  <td>126.20</td>
	  <td>0.000000e+00</td>
	  <td>2020-12-03</td>
	  <td>2020-12-03</td>
	  <td>2020-12-03</td>
	</tr>
	<tr>
	  <th>2Yr</th>
	  <td>1441.64</td>
	  <td>8.47</td>
	  <td>170.23</td>
	  <td>-0.81</td>
	  <td>-1.03</td>
	  <td>115.76</td>
	  <td>115.50</td>
	  <td>114.91</td>
	  <td>122.28</td>
	  <td>0.000000e+00</td>
	  <td>2020-12-03</td>
	  <td>2020-12-03</td>
	  <td>2020-12-03</td>
	</tr>
	<tr>
	  <th>Spread</th>
	  <td>-0.34</td>
	  <td>9.08</td>
	  <td>-0.04</td>
	  <td>0.47</td>
	  <td>-1.05</td>
	  <td>-3.69</td>
	  <td>-3.79</td>
	  <td>-3.93</td>
	  <td>5.59</td>
	  <td>-7.040197e+52</td>
	  <td>2021-03-03</td>
	  <td>2022-08-31</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Rolling Avg 10d</th>
	  <td>-0.43</td>
	  <td>8.92</td>
	  <td>-0.05</td>
	  <td>0.48</td>
	  <td>-1.05</td>
	  <td>-3.64</td>
	  <td>-3.75</td>
	  <td>-3.84</td>
	  <td>5.03</td>
	  <td>-3.830000e+00</td>
	  <td>2020-12-31</td>
	  <td>2021-01-04</td>
	  <td>2021-01-05</td>
	</tr>
	<tr>
	  <th>Diff 10d</th>
	  <td>0.99</td>
	  <td>1.04</td>
	  <td>0.95</td>
	  <td>-0.04</td>
	  <td>1.00</td>
	  <td>-0.39</td>
	  <td>-0.59</td>
	  <td>-0.92</td>
	  <td>1.09</td>
	  <td>-1.000000e+00</td>
	  <td>2022-06-21</td>
	  <td>2022-08-04</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Rolling Avg 50d</th>
	  <td>-0.42</td>
	  <td>8.28</td>
	  <td>-0.05</td>
	  <td>0.61</td>
	  <td>-0.98</td>
	  <td>-3.08</td>
	  <td>-3.43</td>
	  <td>-3.64</td>
	  <td>4.25</td>
	  <td>-3.630000e+00</td>
	  <td>2021-02-12</td>
	  <td>2021-02-15</td>
	  <td>2021-02-16</td>
	</tr>
	<tr>
	  <th>Diff 50d</th>
	  <td>5.32</td>
	  <td>2.32</td>
	  <td>2.29</td>
	  <td>0.06</td>
	  <td>-0.28</td>
	  <td>-0.59</td>
	  <td>-0.87</td>
	  <td>-1.45</td>
	  <td>2.06</td>
	  <td>-1.000000e+00</td>
	  <td>2022-06-29</td>
	  <td>2022-07-27</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Rolling Avg 100d</th>
	  <td>-1.47</td>
	  <td>7.20</td>
	  <td>-0.20</td>
	  <td>0.70</td>
	  <td>-0.91</td>
	  <td>-2.47</td>
	  <td>-2.63</td>
	  <td>-2.79</td>
	  <td>3.96</td>
	  <td>-6.286106e+13</td>
	  <td>2021-06-22</td>
	  <td>2022-08-31</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Diff 100d</th>
	  <td>10.39</td>
	  <td>3.02</td>
	  <td>3.44</td>
	  <td>0.28</td>
	  <td>-0.30</td>
	  <td>-0.51</td>
	  <td>-0.70</td>
	  <td>-1.14</td>
	  <td>2.98</td>
	  <td>-1.000000e+00</td>
	  <td>2022-07-21</td>
	  <td>2022-07-29</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

Comments:

The spread between 5-year and 2-year US Treasury note (T-note) prices has a mean of -0.34, which indicates that the 2-year T-note is trading at a slight discount to the 5-year T-note. This could suggest a potential mean-reversion strategy where you would buy the 2-year T-note and sell the 5-year T-note, with the expectation that the spread will eventually revert back to its mean.

The volatility of the spread is 9.08, which indicates that the spread changes relatively frequently. A high volatility suggests that the spread can change rapidly and therefore a strategy that's based on volatility, such as a volatility breakout strategy, could be profitable.

The Sharpe Ratio of the spread is -0.04, which indicates that the returns of the spread are not well-adjusted to the level of risk. This could suggest that the spread may not be a good candidate for a long-term strategy.

The skewness of the spread is 0.467, which indicates that the spread is slightly skewed to the right.

The excess kurtosis of the spread is -1.05, which indicates that the spread has a flatter distribution than a normal distribution.

VaR (0.05) for the spread is -3.69, which indicates that the maximum loss that can be expected for the spread with a 5% probability is -3.69.

CVaR (0.05) for the spread is -3.791, which indicates that the expected loss that can be expected for the spread with a 5% probability is -3.79.

```python
factor_summary2 = performance_summary(df_q4)
factor_summary2.round(2)
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
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	  <th>Skewness</th>
	  <th>Excess Kurtosis</th>
	  <th>VaR (0.05)</th>
	  <th>CVaR (0.05)</th>
	  <th>Min</th>
	  <th>Max</th>
	  <th>Max Drawdown</th>
	  <th>Peak</th>
	  <th>Bottom</th>
	  <th>Recovery</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>5Yr</th>
	  <td>1441.98</td>
	  <td>17.39</td>
	  <td>82.93</td>
	  <td>-0.67</td>
	  <td>-1.09</td>
	  <td>111.57</td>
	  <td>110.86</td>
	  <td>109.31</td>
	  <td>126.20</td>
	  <td>0.00</td>
	  <td>2020-12-03</td>
	  <td>2020-12-03</td>
	  <td>2020-12-03</td>
	</tr>
	<tr>
	  <th>10Yr</th>
	  <td>1443.17</td>
	  <td>20.63</td>
	  <td>69.95</td>
	  <td>-0.60</td>
	  <td>-0.91</td>
	  <td>110.01</td>
	  <td>109.04</td>
	  <td>106.83</td>
	  <td>128.98</td>
	  <td>0.00</td>
	  <td>2020-12-03</td>
	  <td>2020-12-03</td>
	  <td>2020-12-03</td>
	</tr>
	<tr>
	  <th>Spread</th>
	  <td>1.19</td>
	  <td>4.13</td>
	  <td>0.29</td>
	  <td>0.33</td>
	  <td>-0.33</td>
	  <td>-1.66</td>
	  <td>-1.98</td>
	  <td>-2.48</td>
	  <td>2.86</td>
	  <td>-8.33</td>
	  <td>2021-03-02</td>
	  <td>2022-03-18</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Rolling Avg 10d</th>
	  <td>1.06</td>
	  <td>3.95</td>
	  <td>0.27</td>
	  <td>0.31</td>
	  <td>-0.28</td>
	  <td>-1.70</td>
	  <td>-1.89</td>
	  <td>-2.08</td>
	  <td>2.75</td>
	  <td>-1.00</td>
	  <td>2022-03-24</td>
	  <td>2022-04-18</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Diff 10d</th>
	  <td>-0.52</td>
	  <td>1.03</td>
	  <td>-0.50</td>
	  <td>-0.42</td>
	  <td>0.95</td>
	  <td>-0.54</td>
	  <td>-0.73</td>
	  <td>-1.17</td>
	  <td>0.99</td>
	  <td>-1.00</td>
	  <td>2020-12-16</td>
	  <td>2021-02-19</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Rolling Avg 50d</th>
	  <td>0.31</td>
	  <td>3.16</td>
	  <td>0.10</td>
	  <td>-0.11</td>
	  <td>-0.21</td>
	  <td>-1.59</td>
	  <td>-1.64</td>
	  <td>-1.67</td>
	  <td>2.38</td>
	  <td>-1.00</td>
	  <td>2022-04-15</td>
	  <td>2022-05-23</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Diff 50d</th>
	  <td>-2.43</td>
	  <td>2.57</td>
	  <td>-0.95</td>
	  <td>-0.55</td>
	  <td>0.00</td>
	  <td>-1.72</td>
	  <td>-1.91</td>
	  <td>-2.17</td>
	  <td>1.46</td>
	  <td>-1.00</td>
	  <td>2021-02-11</td>
	  <td>2021-02-19</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Rolling Avg 100d</th>
	  <td>0.65</td>
	  <td>2.12</td>
	  <td>0.30</td>
	  <td>-0.97</td>
	  <td>-0.09</td>
	  <td>-1.29</td>
	  <td>-1.35</td>
	  <td>-1.41</td>
	  <td>1.06</td>
	  <td>-1.00</td>
	  <td>2022-05-03</td>
	  <td>2022-07-05</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Diff 100d</th>
	  <td>-2.72</td>
	  <td>2.83</td>
	  <td>-0.96</td>
	  <td>0.01</td>
	  <td>-0.60</td>
	  <td>-1.54</td>
	  <td>-1.74</td>
	  <td>-2.15</td>
	  <td>1.71</td>
	  <td>-1.34</td>
	  <td>2021-04-23</td>
	  <td>2021-04-26</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

Comments: 

The mean of the spread between the 5-year and 10-year US Treasury note (T-note) prices is 1.19 which indicates that the 10-year T-note is trading at a slight premium to the 5-year T-note. This could suggest a potential mean-reversion strategy where you would sell the 10-year T-note and buy the 5-year T-note, with the expectation that the spread will eventually revert back to its mean.

The volatility of the spread is 4.13, which indicates that the spread changes relatively frequently. The volatility suggest that the spread can change rapidly and therefore a strategy that's based on volatility, such as a volatility breakout strategy, could be profitable.

The Sharpe ratio of the spread is 0.29, which indicates that the returns of the spread are well-adjusted to the level of risk. This could suggest that the spread is a good candidate for a long-term strategy.

The max drawdown is -8.33, which indicates that the spread experienced a drop. Thus, it could be important to use risk management techniques, such as stop loss orders, to limit potential losses.

    C. Correlation

```python
corr1 = df_q3.corr()
plt.figure(figsize=(16, 6))
heatmap = sns.heatmap(corr1, vmin=-1, vmax=1, annot=True)
heatmap.set_title('US T-Notes Correlation Heatmap', fontdict={'fontsize':12}, pad=12);
```

![png](output_35_0.png)

Comments: The spread is negatively correlated to both 5-Yr and 2-Yr T-Notes rate, and is positively correlated with the diff between rolling avg. 

```python
corr2 = df_q4.corr()
plt.figure(figsize=(16, 6))
heatmap = sns.heatmap(corr2, vmin=-1, vmax=1, annot=True)
heatmap.set_title('US T-Notes Correlation Heatmap', fontdict={'fontsize':12}, pad=12);
```

![png](output_37_0.png)

Comments: We can see a positive correlation between spread and both 5-Yr, 10-Yr US T-Notes, as well as the diff between rolling avg.

    D. Calculate the autocorrelation of the time series

```python
autocorr1 = df_q3['Spread'].autocorr()
autocorr1
```

    0.9973310116308433

```python
autocorr2 = df_q4['Spread'].autocorr()
autocorr2
```

    0.9867162877274319

Comments: Both autocorrelations represent a very high degree of similarity between the given time series of spreads and a lagged version of itself over successive time intervals.

We can see from the results that there is a very high influence on past prices for the T-Notes have on its future price.

### 4.Machine Learning Analysis

```python
# Create the feature and target arrays
X = df_q3["2Yr"].values.reshape(-1, 1)
y = df_q3["5Yr"].values

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Fit the linear regression model
reg = LinearRegression().fit(X_train, y_train)

# Make predictions on the test set
y_pred = reg.predict(X_test)

# Calculate the mean squared error and R^2 score
mse = mean_squared_error(y_test, y_pred).round(2)
r2 = r2_score(y_test, y_pred).round(2)

# Print the results
print("Mean Squared Error: ", mse)
print("R^2 Score: ", r2)
```

    Mean Squared Error:  0.54
    R^2 Score:  0.98

```python
# Create the feature and target arrays
X = df_q4["5Yr"].values.reshape(-1, 1)
y = df_q4["10Yr"].values

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Fit the linear regression model
reg = LinearRegression().fit(X_train, y_train)

# Make predictions on the test set
y_pred = reg.predict(X_test)

# Calculate the mean squared error and R^2 score
mse = mean_squared_error(y_test, y_pred).round(2)
r2 = r2_score(y_test, y_pred).round(2)

# Print the results
print("Mean Squared Error: ", mse)
print("R^2 Score: ", r2)
```

    Mean Squared Error:  0.72
    R^2 Score:  0.98

Comments:

A relatively low Mean Squared Error (MSE) suggests that the model is not fitting the data as well as it could be. A high MSE means that the model's predictions are far from the true values, on average.

The R^2 score of 0.98 suggests that the model explains about 98% of the variation in the target variable, which is a relatively high level of explanation.

To sum up, the results suggest that the linear regression model is able to fit the data well, and can explain a significant amount of the variation in the target variable.

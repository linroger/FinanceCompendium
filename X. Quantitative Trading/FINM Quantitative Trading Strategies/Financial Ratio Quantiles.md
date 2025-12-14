---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Financial Ratio Quantiles
---

# Financial Ratio Quantiles
## Homework 3: Financial Ratio Quantile Strategies - Jingwen Li

```python
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import scipy as sp
from datetime import datetime
import quandl
import functools
import seaborn as sns
import nasdaqdatalink as ndl
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score
from scipy.stats import norm, pearsonr, zscore
from statsmodels.tsa.stattools import adfuller
import warnings
warnings.filterwarnings('ignore')
```

Steps:

1. Collect historical data for the financial ratios chosen to use in the strategy, such as debt to market cap, return on investment, and price to earnings.
2. Preprocess the data by cleaning it, handling missing values, and normalizing it as needed.
3. Code the algorithm for ranking the securities based on the ratios.
4. Implement the logic for sizing positions by rank.
5. Implement the quantile trading strategy based on the chosen financial ratios and the top-and-bottom decile trading strategy.
6. Divide the data into training and testing sets for backtesting the strategy.
7. Run the backtesting simulation on the training set and evaluate the strategy's performance.
8. Test the strategy on the testing set to check for overfitting.
9. Optimize the strategy by tweaking the parameters and experimenting with different combinations of ratios.
10. Finally, test the strategy on the unseen data and evaluate the performance.

### 1. Collect data

```python
# api =  "key"

# start_date = '2014-09-30'
# end_date = '2022-01-01'

# ndl.export_table('QUOTEMEDIA/PRICES', date = { 'gte': start_date, 'lte': end_date }, ticker = tic, filename='data/QM_PRICES.zip', api_key = api)
# ndl.export_table('ZACKS/MKTV', ticker = tic, filename='data/ZACKS_MKTV.zip', api_key = api)
# ndl.export_table('ZACKS/FC', ticker = tic, filename='data/ZACKS_FC.zip', api_key = api)
# ndl.export_table('ZACKS/FR', ticker = tic, filename='data/ZACKS_FR.zip', api_key = api)
# ndl.export_table('ZACKS/SHRS', ticker = tic, filename='data/ZACKS_SHRS.zip', api_key = api)
```

### 2. Process Data
    • end-of-day adjusted closing prices are available , over the entire period Jan 2015 through Jan 2022
    • debt/market cap ratio is greater than 0.1 somewhere in the period Jan 2015 through Jan 2022 (preferably more than fleetingly)
    • not in the automotive, financial or insurance sector , over the entire period Jan 2015 through Jan 20225
    • has feasible calculation of the ratios specified below , over the entire period Jan 2015 through Jan 2022, including for at least one PER END DATE no more than one year old. Debt ratio of zero is OK.

```python
zacks = pd.read_csv('ZACKS_MT.csv')
zacks.loc[:,'country_code'].dropna().unique()
```

    array(['US', 'CN', 'HK', 'CA', 'CH', 'GB', 'BR', 'IL', 'BM', 'IE', 'DE',
           'FR', 'NL', 'AT', 'PE', 'SG', 'BE', 'LU', 'AU', 'JP', 'KY', 'TR',
           'CL', 'SE', 'ES', 'IT', 'DK', 'IN', 'ZA', 'MX', 'TW', 'RU', 'CO',
           'TH', 'AR', 'PA', 'JE', 'NZ', 'GR', 'PT', 'KR', 'NO', 'ID', 'FI',
           'HU', 'BS', 'PH'], dtype=object)

```python
zacks.loc[:,'zacks_x_sector_desc'].dropna().unique()
```

    array(['Computer and Technology', 'Industrial Products', 'Unclassified',
           'Consumer Discretionary', 'Medical', 'Finance', 'Aerospace',
           'Transportation', 'Construction', 'Retail/Wholesale',
           'Business Services', 'Basic Materials', 'Oils/Energy',
           'Consumer Staples', 'Auto/Tires/Trucks', 'Utilities',
           'Multi-Sector Conglomerates', 'Index'], dtype=object)

2.1 Filter tickers

    • Filter non-US companies
    • Filter Finance, Autp, Multi, Unclassified and Business Service Sector
    • only consider stocks listed on NYSE and NASDAQ
    • Only consider stocks having active flag

993 stocks left

```python
zacks_filtered = zacks.loc[(zacks['country_code'] == 'US') 
& (zacks['zacks_x_sector_desc'].isin(['Finance', 'Auto/Tires/Trucks','Multi-Sector Conglomerates', 'Unclassified', 'Business Services']) == False) 
& (zacks['exchange'].isin(['NYSE', 'NSDAQ']) )
& (zacks['active_ticker_flag'] == 'Y') 
& (zacks['asset_type'] == 'COM')].iloc[:,1]
tic = zacks_filtered.tolist()
print(f'# of stcoks left after filteration: {len(tic)}')
```

    # of stcoks left after filteration: 993

2.2 loading PRICES
 
    • Filtered stocks not having closing prices available over the entire period Jan 2015 through Jan 2022

```python
adj_price = pd.read_csv('data/QM_PRICES.csv', usecols=['ticker', 'date', 'adj_close'])
adj_price.sort_values(by=['ticker', 'date'], inplace=True)
adj_price
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
	  <th>date</th>
	  <th>adj_close</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>A</td>
	  <td>2014-09-30</td>
	  <td>38.386511</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>A</td>
	  <td>2014-10-01</td>
	  <td>37.861038</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>A</td>
	  <td>2014-10-02</td>
	  <td>37.611775</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>A</td>
	  <td>2014-10-03</td>
	  <td>38.339353</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>A</td>
	  <td>2014-10-06</td>
	  <td>38.110301</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>1450377</th>
	  <td>ZWS</td>
	  <td>2021-12-27</td>
	  <td>36.207903</td>
	</tr>
	<tr>
	  <th>1450378</th>
	  <td>ZWS</td>
	  <td>2021-12-28</td>
	  <td>36.396537</td>
	</tr>
	<tr>
	  <th>1450379</th>
	  <td>ZWS</td>
	  <td>2021-12-29</td>
	  <td>36.466034</td>
	</tr>
	<tr>
	  <th>1450380</th>
	  <td>ZWS</td>
	  <td>2021-12-30</td>
	  <td>35.979556</td>
	</tr>
	<tr>
	  <th>1450381</th>
	  <td>ZWS</td>
	  <td>2021-12-31</td>
	  <td>36.138406</td>
	</tr>
  </tbody>
</table>
<p>1450382 rows × 3 columns</p>
</div>

```python
adj_price_count = adj_price.groupby('ticker')['adj_close'].count()
adj_price_filtered = adj_price[adj_price.groupby('ticker')['adj_close'].transform(lambda x: x.count()) > 1800]['ticker']
print(f'# of stcoks left after filteration: {adj_price_filtered.nunique()}')
```

    # of stcoks left after filteration: 672

2.3 loading FR

    • Filter stocks with debt/market cap ratio that is not constantly greater than 0.1 in the period Jan 2015 through Jan 2022

```python
fr = pd.read_csv('data/ZACKS_FR.csv', usecols=['per_end_date', 'ticker', 'tot_debt_tot_equity', 'ret_invst', 'per_type'])
mask = (fr['per_end_date'] >= '2014-09-30') & (fr['per_end_date'] <= '2022-01-01') & fr['ticker'].isin(adj_price_filtered) & (fr['per_type'] == 'Q')
fr = fr[mask]
fr.sort_values(by=['ticker', 'per_end_date'], inplace=True)
fr
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
	  <th>per_end_date</th>
	  <th>per_type</th>
	  <th>tot_debt_tot_equity</th>
	  <th>ret_invst</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>32</th>
	  <td>A</td>
	  <td>2014-10-31</td>
	  <td>Q</td>
	  <td>0.3135</td>
	  <td>0.2297</td>
	</tr>
	<tr>
	  <th>31</th>
	  <td>A</td>
	  <td>2015-01-31</td>
	  <td>Q</td>
	  <td>0.3910</td>
	  <td>1.5768</td>
	</tr>
	<tr>
	  <th>30</th>
	  <td>A</td>
	  <td>2015-04-30</td>
	  <td>Q</td>
	  <td>0.3980</td>
	  <td>1.5816</td>
	</tr>
	<tr>
	  <th>29</th>
	  <td>A</td>
	  <td>2015-07-31</td>
	  <td>Q</td>
	  <td>0.4031</td>
	  <td>1.9615</td>
	</tr>
	<tr>
	  <th>28</th>
	  <td>A</td>
	  <td>2015-10-31</td>
	  <td>Q</td>
	  <td>0.3969</td>
	  <td>2.4034</td>
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
	  <th>63891</th>
	  <td>ZWS</td>
	  <td>2020-12-31</td>
	  <td>Q</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>63890</th>
	  <td>ZWS</td>
	  <td>2021-03-31</td>
	  <td>Q</td>
	  <td>0.7983</td>
	  <td>0.3728</td>
	</tr>
	<tr>
	  <th>63889</th>
	  <td>ZWS</td>
	  <td>2021-06-30</td>
	  <td>Q</td>
	  <td>0.7508</td>
	  <td>0.7418</td>
	</tr>
	<tr>
	  <th>63888</th>
	  <td>ZWS</td>
	  <td>2021-09-30</td>
	  <td>Q</td>
	  <td>0.7242</td>
	  <td>0.5679</td>
	</tr>
	<tr>
	  <th>63887</th>
	  <td>ZWS</td>
	  <td>2021-12-31</td>
	  <td>Q</td>
	  <td>4.2682</td>
	  <td>0.4543</td>
	</tr>
  </tbody>
</table>
<p>20066 rows × 5 columns</p>
</div>

```python
fr[fr['tot_debt_tot_equity'] > 0.1].groupby('ticker')['tot_debt_tot_equity'].count()
fr_filtered = fr[fr.groupby('ticker')['tot_debt_tot_equity'].transform(lambda x: x.count()) > 20]['ticker']
print(f'# of stcoks left after filteration: {fr_filtered.nunique()}')
```

    # of stcoks left after filteration: 607

2.4 loading MKTV

    • Filter stocks having missing maket value data over the entire period Jan 2015 through Jan 2022

```python
mkt_val = pd.read_csv('data/ZACKS_MKTV.csv', usecols=['per_end_date', 'ticker', 'mkt_val', 'per_type'])
mask = (mkt_val['per_end_date'] >= '2014-09-30') & (mkt_val['per_end_date'] <= '2022-01-01') & mkt_val['ticker'].isin(fr_filtered) & (mkt_val['per_type'] == 'Q')
mkt_val = mkt_val[mask]
mkt_val.sort_values(by=['ticker', 'per_end_date'], inplace=True)
mkt_val
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
	  <th>per_type</th>
	  <th>per_end_date</th>
	  <th>mkt_val</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>34</th>
	  <td>A</td>
	  <td>Q</td>
	  <td>2014-09-30</td>
	  <td>19003.57</td>
	</tr>
	<tr>
	  <th>35</th>
	  <td>A</td>
	  <td>Q</td>
	  <td>2014-12-31</td>
	  <td>13751.83</td>
	</tr>
	<tr>
	  <th>36</th>
	  <td>A</td>
	  <td>Q</td>
	  <td>2015-03-31</td>
	  <td>13952.91</td>
	</tr>
	<tr>
	  <th>37</th>
	  <td>A</td>
	  <td>Q</td>
	  <td>2015-06-30</td>
	  <td>12854.55</td>
	</tr>
	<tr>
	  <th>38</th>
	  <td>A</td>
	  <td>Q</td>
	  <td>2015-09-30</td>
	  <td>11377.07</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>67242</th>
	  <td>ZWS</td>
	  <td>Q</td>
	  <td>2020-12-31</td>
	  <td>4749.85</td>
	</tr>
	<tr>
	  <th>67243</th>
	  <td>ZWS</td>
	  <td>Q</td>
	  <td>2021-03-31</td>
	  <td>5637.67</td>
	</tr>
	<tr>
	  <th>67244</th>
	  <td>ZWS</td>
	  <td>Q</td>
	  <td>2021-06-30</td>
	  <td>6060.11</td>
	</tr>
	<tr>
	  <th>67245</th>
	  <td>ZWS</td>
	  <td>Q</td>
	  <td>2021-09-30</td>
	  <td>7801.56</td>
	</tr>
	<tr>
	  <th>67246</th>
	  <td>ZWS</td>
	  <td>Q</td>
	  <td>2021-12-31</td>
	  <td>4417.12</td>
	</tr>
  </tbody>
</table>
<p>18180 rows × 4 columns</p>
</div>

```python
mkt_val_count = mkt_val.groupby('ticker')['mkt_val'].count()
mkt_val_filtered = mkt_val[mkt_val.groupby('ticker')['mkt_val'].transform(lambda x: x.count()) >= 30]['ticker']
print(f'# of stcoks left after filteration: {mkt_val_filtered.nunique()}')
```

    # of stcoks left after filteration: 598

2.5 loading SHRS

    • Filter stocks missing outstanding shares data

```python
shrs = pd.read_csv('data/ZACKS_SHRS.csv', usecols=['per_end_date', 'ticker', 'shares_out', 'per_type'])
mask = (shrs['per_end_date'] >= '2014-09-30') & (shrs['per_end_date'] <= '2022-01-01') & shrs['ticker'].isin(mkt_val_filtered) & (shrs['per_type'] == 'Q')
shrs = shrs[mask]
shrs.sort_values(by=['ticker', 'per_end_date'], inplace=True)
shrs
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
	  <th>per_type</th>
	  <th>per_end_date</th>
	  <th>shares_out</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>35</th>
	  <td>A</td>
	  <td>Q</td>
	  <td>2014-10-31</td>
	  <td>333.51</td>
	</tr>
	<tr>
	  <th>36</th>
	  <td>A</td>
	  <td>Q</td>
	  <td>2015-01-31</td>
	  <td>336.00</td>
	</tr>
	<tr>
	  <th>37</th>
	  <td>A</td>
	  <td>Q</td>
	  <td>2015-04-30</td>
	  <td>335.81</td>
	</tr>
	<tr>
	  <th>38</th>
	  <td>A</td>
	  <td>Q</td>
	  <td>2015-07-31</td>
	  <td>333.19</td>
	</tr>
	<tr>
	  <th>39</th>
	  <td>A</td>
	  <td>Q</td>
	  <td>2015-10-31</td>
	  <td>331.40</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>67242</th>
	  <td>ZWS</td>
	  <td>Q</td>
	  <td>2020-12-31</td>
	  <td>120.28</td>
	</tr>
	<tr>
	  <th>67243</th>
	  <td>ZWS</td>
	  <td>Q</td>
	  <td>2021-03-31</td>
	  <td>119.72</td>
	</tr>
	<tr>
	  <th>67244</th>
	  <td>ZWS</td>
	  <td>Q</td>
	  <td>2021-06-30</td>
	  <td>121.11</td>
	</tr>
	<tr>
	  <th>67245</th>
	  <td>ZWS</td>
	  <td>Q</td>
	  <td>2021-09-30</td>
	  <td>121.35</td>
	</tr>
	<tr>
	  <th>67246</th>
	  <td>ZWS</td>
	  <td>Q</td>
	  <td>2021-12-31</td>
	  <td>121.35</td>
	</tr>
  </tbody>
</table>
<p>17856 rows × 4 columns</p>
</div>

```python
shrs.groupby('ticker')['shares_out'].count().unique()
shrs_filtered = shrs[shrs.groupby('ticker')['shares_out'].transform(lambda x: x.count()) > 28]['ticker']
print(f'# of stcoks left after filteration: {shrs_filtered.nunique()}')
```

    # of stcoks left after filteration: 598

2.6 loading FC

    • Filter stocks missing filing date
    • Filter stocks missing both total long term debt and net long term debt
    • Filter stocks missing both net basic eps and net diluted eps

```python
fc = pd.read_csv('data/ZACKS_FC.csv', usecols=['per_end_date', 'filing_date', 'ticker', 'net_lterm_debt', 'tot_lterm_debt', 'eps_diluted_net', 'eps_basic_net', 'per_type'])
mask = (fc['per_end_date'] >= '2014-09-30') & (fc['per_end_date'] <= '2022-01-01') & fc['ticker'].isin(shrs_filtered) & (fc['per_type'] == 'Q')
fc = fc[mask]
fc.sort_values(by=['ticker', 'per_end_date'], inplace=True)
fc
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
	  <th>per_end_date</th>
	  <th>per_type</th>
	  <th>filing_date</th>
	  <th>tot_lterm_debt</th>
	  <th>net_lterm_debt</th>
	  <th>eps_basic_net</th>
	  <th>eps_diluted_net</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>5</th>
	  <td>A</td>
	  <td>2014-10-31</td>
	  <td>Q</td>
	  <td>2014-12-22</td>
	  <td>1663.0</td>
	  <td>99.0</td>
	  <td>0.05</td>
	  <td>0.05</td>
	</tr>
	<tr>
	  <th>67</th>
	  <td>A</td>
	  <td>2015-01-31</td>
	  <td>Q</td>
	  <td>2015-03-10</td>
	  <td>1658.0</td>
	  <td>NaN</td>
	  <td>0.19</td>
	  <td>0.19</td>
	</tr>
	<tr>
	  <th>66</th>
	  <td>A</td>
	  <td>2015-04-30</td>
	  <td>Q</td>
	  <td>2015-06-05</td>
	  <td>1656.0</td>
	  <td>NaN</td>
	  <td>0.26</td>
	  <td>0.26</td>
	</tr>
	<tr>
	  <th>65</th>
	  <td>A</td>
	  <td>2015-07-31</td>
	  <td>Q</td>
	  <td>2015-09-02</td>
	  <td>1655.0</td>
	  <td>NaN</td>
	  <td>0.33</td>
	  <td>0.33</td>
	</tr>
	<tr>
	  <th>64</th>
	  <td>A</td>
	  <td>2015-10-31</td>
	  <td>Q</td>
	  <td>2015-12-21</td>
	  <td>1655.0</td>
	  <td>NaN</td>
	  <td>0.42</td>
	  <td>0.42</td>
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
	</tr>
	<tr>
	  <th>63891</th>
	  <td>ZWS</td>
	  <td>2020-12-31</td>
	  <td>Q</td>
	  <td>NaN</td>
	  <td>1118.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>63890</th>
	  <td>ZWS</td>
	  <td>2021-03-31</td>
	  <td>Q</td>
	  <td>2021-04-27</td>
	  <td>1189.3</td>
	  <td>-0.5</td>
	  <td>0.42</td>
	  <td>0.40</td>
	</tr>
	<tr>
	  <th>63889</th>
	  <td>ZWS</td>
	  <td>2021-06-30</td>
	  <td>Q</td>
	  <td>2021-07-20</td>
	  <td>1189.5</td>
	  <td>-1.1</td>
	  <td>0.61</td>
	  <td>0.59</td>
	</tr>
	<tr>
	  <th>63888</th>
	  <td>ZWS</td>
	  <td>2021-09-30</td>
	  <td>Q</td>
	  <td>2021-10-26</td>
	  <td>1189.3</td>
	  <td>-1.7</td>
	  <td>0.53</td>
	  <td>0.51</td>
	</tr>
	<tr>
	  <th>63887</th>
	  <td>ZWS</td>
	  <td>2021-12-31</td>
	  <td>Q</td>
	  <td>2022-02-09</td>
	  <td>533.9</td>
	  <td>-576.7</td>
	  <td>-0.56</td>
	  <td>-0.53</td>
	</tr>
  </tbody>
</table>
<p>17870 rows × 8 columns</p>
</div>

```python
fc = fc.dropna(subset=['tot_lterm_debt','net_lterm_debt'], how = 'all')
fc = fc.dropna(subset=['eps_basic_net', 'eps_diluted_net'], how = 'all')
fc['net_lterm_debt'].fillna(fc['tot_lterm_debt'], inplace=True)
fc['eps_diluted_net'].fillna(fc['eps_basic_net'], inplace=True)
fc = fc.drop(columns = ['tot_lterm_debt', 'eps_basic_net'])
fc_filtered = fc[fc.groupby('ticker')['filing_date'].transform(lambda x: x.count()) >= 28]['ticker']
print(f'# of stcoks left after filteration: {fc_filtered.nunique()}')
```

    # of stcoks left after filteration: 560

2.7 Merge table

    a. combine financial data

```python
fin_data = pd.merge(pd.merge(pd.merge(fc, shrs, on=['ticker', 'per_end_date', 'per_type'], how='inner'),
mkt_val, on=['ticker', 'per_end_date', 'per_type'], how='inner'),
fr, on=['ticker', 'per_end_date', 'per_type'], how='inner')
financial = fin_data[fin_data.groupby('ticker')['per_end_date'].transform(lambda x: x.count()) >= 28]
financial_filtered = financial['ticker']
print(f'# of stcoks left after filteration: {financial_filtered.nunique()}')
```

    # of stcoks left after filteration: 482


    b. Combine financial and price

```python
mask = adj_price['ticker'].isin(financial['ticker'].unique())
price = adj_price[mask]
```

```python
data = pd.merge(financial, price, left_on=['ticker', 'filing_date'], right_on=['ticker', 'date'], how='outer')
data['date'].fillna(data['filing_date'], inplace=True)
data.sort_values(by=['ticker', 'date'], inplace=True)
data = data.drop(columns = 'per_type')
data
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
	  <th>per_end_date</th>
	  <th>filing_date</th>
	  <th>net_lterm_debt</th>
	  <th>eps_diluted_net</th>
	  <th>shares_out</th>
	  <th>mkt_val</th>
	  <th>tot_debt_tot_equity</th>
	  <th>ret_invst</th>
	  <th>date</th>
	  <th>adj_close</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>14446</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2014-09-30</td>
	  <td>121.765847</td>
	</tr>
	<tr>
	  <th>14447</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2014-10-01</td>
	  <td>121.971438</td>
	</tr>
	<tr>
	  <th>14448</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2014-10-02</td>
	  <td>124.260972</td>
	</tr>
	<tr>
	  <th>14449</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2014-10-03</td>
	  <td>126.279500</td>
	</tr>
	<tr>
	  <th>14450</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2014-10-06</td>
	  <td>125.616003</td>
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
	  <th>881616</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2021-12-28</td>
	  <td>241.902749</td>
	</tr>
	<tr>
	  <th>881617</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2021-12-29</td>
	  <td>244.656033</td>
	</tr>
	<tr>
	  <th>881618</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2021-12-30</td>
	  <td>242.804004</td>
	</tr>
	<tr>
	  <th>881619</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2021-12-31</td>
	  <td>241.684864</td>
	</tr>
	<tr>
	  <th>14445</th>
	  <td>ZTS</td>
	  <td>2021-12-31</td>
	  <td>2022-02-15</td>
	  <td>-600.0</td>
	  <td>0.87</td>
	  <td>473.13</td>
	  <td>115456.89</td>
	  <td>1.4507</td>
	  <td>3.7087</td>
	  <td>2022-02-15</td>
	  <td>NaN</td>
	</tr>
  </tbody>
</table>
<p>881620 rows × 11 columns</p>
</div>

```python
cal = pd.merge(financial, price, left_on=['ticker', 'per_end_date'], right_on=['ticker', 'date'], how='outer')
cal['date'].fillna(cal['per_end_date'], inplace=True)
cal.sort_values(by=['ticker', 'date'], inplace=True)
cal = cal[['date','filing_date','ticker','adj_close','net_lterm_debt','eps_diluted_net','shares_out','mkt_val','tot_debt_tot_equity','ret_invst']]
cal['tot_debt_tot_share'] = cal['tot_debt_tot_equity'] * cal['adj_close']
cal['mkt_val_div_price'] = cal['mkt_val'] / cal['adj_close']
cal = cal[['filing_date','ticker','tot_debt_tot_share', 'mkt_val_div_price']]
cal.dropna(subset = 'filing_date', inplace = True)
cal
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
	  <th>filing_date</th>
	  <th>ticker</th>
	  <th>tot_debt_tot_share</th>
	  <th>mkt_val_div_price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>2014-11-12</td>
	  <td>AAP</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>2015-03-03</td>
	  <td>AAP</td>
	  <td>121.698564</td>
	  <td>78.080807</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>2015-06-02</td>
	  <td>AAP</td>
	  <td>105.023713</td>
	  <td>78.222622</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>2015-08-25</td>
	  <td>AAP</td>
	  <td>94.633221</td>
	  <td>78.216615</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>2015-11-17</td>
	  <td>AAP</td>
	  <td>95.093545</td>
	  <td>78.232053</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>14441</th>
	  <td>2021-02-16</td>
	  <td>ZTS</td>
	  <td>311.042574</td>
	  <td>482.497334</td>
	</tr>
	<tr>
	  <th>14442</th>
	  <td>2021-05-06</td>
	  <td>ZTS</td>
	  <td>273.012246</td>
	  <td>481.470427</td>
	</tr>
	<tr>
	  <th>14443</th>
	  <td>2021-08-05</td>
	  <td>ZTS</td>
	  <td>304.446283</td>
	  <td>479.704103</td>
	</tr>
	<tr>
	  <th>14444</th>
	  <td>2021-11-04</td>
	  <td>ZTS</td>
	  <td>270.442767</td>
	  <td>478.278281</td>
	</tr>
	<tr>
	  <th>14445</th>
	  <td>2022-02-15</td>
	  <td>ZTS</td>
	  <td>350.612232</td>
	  <td>477.716677</td>
	</tr>
  </tbody>
</table>
<p>14406 rows × 4 columns</p>
</div>

```python
df_sec = pd.merge(data, cal, on=['ticker', 'filing_date'],how='outer')
df_sec.sort_values(by=['ticker', 'date'], inplace=True)
df_sec['date'] = pd.to_datetime(df_sec['date'])
# df_sec.set_index('date', inplace=True)
df_sec
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
	  <th>per_end_date</th>
	  <th>filing_date</th>
	  <th>net_lterm_debt</th>
	  <th>eps_diluted_net</th>
	  <th>shares_out</th>
	  <th>mkt_val</th>
	  <th>tot_debt_tot_equity</th>
	  <th>ret_invst</th>
	  <th>date</th>
	  <th>adj_close</th>
	  <th>tot_debt_tot_share</th>
	  <th>mkt_val_div_price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2014-09-30</td>
	  <td>121.765847</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2014-10-01</td>
	  <td>121.971438</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2014-10-02</td>
	  <td>124.260972</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2014-10-03</td>
	  <td>126.279500</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2014-10-06</td>
	  <td>125.616003</td>
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
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>881602</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2021-12-28</td>
	  <td>241.902749</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>881603</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2021-12-29</td>
	  <td>244.656033</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>881604</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2021-12-30</td>
	  <td>242.804004</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>881605</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>2021-12-31</td>
	  <td>241.684864</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>881635</th>
	  <td>ZTS</td>
	  <td>2021-12-31</td>
	  <td>2022-02-15</td>
	  <td>-600.0</td>
	  <td>0.87</td>
	  <td>473.13</td>
	  <td>115456.89</td>
	  <td>1.4507</td>
	  <td>3.7087</td>
	  <td>2022-02-15</td>
	  <td>NaN</td>
	  <td>350.612232</td>
	  <td>477.716677</td>
	</tr>
  </tbody>
</table>
<p>881636 rows × 13 columns</p>
</div>

    c. forward filling NaN between two filing dates

```python
group1 = df_sec.groupby('ticker', group_keys = False)
# Forward fill the 'filing_date' column within each group
df_sec['filing_date'] = group1['filing_date'].apply(lambda x: x.ffill())

df_sec.dropna(subset=['filing_date'], inplace=True)

cols_to_fill = ['net_lterm_debt','eps_diluted_net','shares_out','mkt_val','tot_debt_tot_equity','ret_invst', 'tot_debt_tot_share','mkt_val_div_price']
group = df_sec.groupby(['ticker', 'filing_date'], group_keys= False)
df_sec[cols_to_fill] = group[cols_to_fill].apply(lambda x: x.ffill())
df_sec.sort_values(by=['ticker', 'date'], inplace=True)
df_sec
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
	  <th>per_end_date</th>
	  <th>filing_date</th>
	  <th>net_lterm_debt</th>
	  <th>eps_diluted_net</th>
	  <th>shares_out</th>
	  <th>mkt_val</th>
	  <th>tot_debt_tot_equity</th>
	  <th>ret_invst</th>
	  <th>date</th>
	  <th>adj_close</th>
	  <th>tot_debt_tot_share</th>
	  <th>mkt_val_div_price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1799</th>
	  <td>AAP</td>
	  <td>2014-09-30</td>
	  <td>2014-11-12</td>
	  <td>1730.15</td>
	  <td>1.66</td>
	  <td>72.97</td>
	  <td>9508.64</td>
	  <td>0.9014</td>
	  <td>3.3421</td>
	  <td>2014-11-12</td>
	  <td>136.689873</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
	</tr>
	<tr>
	  <th>31</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>2014-11-12</td>
	  <td>1730.15</td>
	  <td>1.66</td>
	  <td>72.97</td>
	  <td>9508.64</td>
	  <td>0.9014</td>
	  <td>3.3421</td>
	  <td>2014-11-13</td>
	  <td>136.437557</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
	</tr>
	<tr>
	  <th>32</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>2014-11-12</td>
	  <td>1730.15</td>
	  <td>1.66</td>
	  <td>72.97</td>
	  <td>9508.64</td>
	  <td>0.9014</td>
	  <td>3.3421</td>
	  <td>2014-11-14</td>
	  <td>135.325497</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
	</tr>
	<tr>
	  <th>33</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>2014-11-12</td>
	  <td>1730.15</td>
	  <td>1.66</td>
	  <td>72.97</td>
	  <td>9508.64</td>
	  <td>0.9014</td>
	  <td>3.3421</td>
	  <td>2014-11-17</td>
	  <td>136.278691</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
	</tr>
	<tr>
	  <th>34</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>2014-11-12</td>
	  <td>1730.15</td>
	  <td>1.66</td>
	  <td>72.97</td>
	  <td>9508.64</td>
	  <td>0.9014</td>
	  <td>3.3421</td>
	  <td>2014-11-18</td>
	  <td>136.661838</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
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
	</tr>
	<tr>
	  <th>881602</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>2021-11-04</td>
	  <td>-600.00</td>
	  <td>1.16</td>
	  <td>473.13</td>
	  <td>91852.65</td>
	  <td>1.4082</td>
	  <td>4.8967</td>
	  <td>2021-12-28</td>
	  <td>241.902749</td>
	  <td>270.442767</td>
	  <td>478.278281</td>
	</tr>
	<tr>
	  <th>881603</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>2021-11-04</td>
	  <td>-600.00</td>
	  <td>1.16</td>
	  <td>473.13</td>
	  <td>91852.65</td>
	  <td>1.4082</td>
	  <td>4.8967</td>
	  <td>2021-12-29</td>
	  <td>244.656033</td>
	  <td>270.442767</td>
	  <td>478.278281</td>
	</tr>
	<tr>
	  <th>881604</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>2021-11-04</td>
	  <td>-600.00</td>
	  <td>1.16</td>
	  <td>473.13</td>
	  <td>91852.65</td>
	  <td>1.4082</td>
	  <td>4.8967</td>
	  <td>2021-12-30</td>
	  <td>242.804004</td>
	  <td>270.442767</td>
	  <td>478.278281</td>
	</tr>
	<tr>
	  <th>881605</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>2021-11-04</td>
	  <td>-600.00</td>
	  <td>1.16</td>
	  <td>473.13</td>
	  <td>91852.65</td>
	  <td>1.4082</td>
	  <td>4.8967</td>
	  <td>2021-12-31</td>
	  <td>241.684864</td>
	  <td>270.442767</td>
	  <td>478.278281</td>
	</tr>
	<tr>
	  <th>881635</th>
	  <td>ZTS</td>
	  <td>2021-12-31</td>
	  <td>2022-02-15</td>
	  <td>-600.00</td>
	  <td>0.87</td>
	  <td>473.13</td>
	  <td>115456.89</td>
	  <td>1.4507</td>
	  <td>3.7087</td>
	  <td>2022-02-15</td>
	  <td>NaN</td>
	  <td>350.612232</td>
	  <td>477.716677</td>
	</tr>
  </tbody>
</table>
<p>869145 rows × 13 columns</p>
</div>

2.8 Calculate Financial Ratios

```python
df_sec['debt_to_mkt_cap'] = df_sec['tot_debt_tot_share'] / df_sec['adj_close']
df_sec['ret_on_inv'] = df_sec['ret_invst']* (df_sec['net_lterm_debt'] + df_sec['mkt_val']) / (df_sec['net_lterm_debt'] + df_sec['mkt_val_div_price'] * df_sec['adj_close'])
df_sec['price_to_earnings'] = df_sec['adj_close'] / df_sec['eps_diluted_net']
df_sec.set_index('date',inplace = True)

```

```python
def_sec = df_sec.replace([np.inf, -np.inf], np.nan)
df_sec
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
	  <th>per_end_date</th>
	  <th>filing_date</th>
	  <th>net_lterm_debt</th>
	  <th>eps_diluted_net</th>
	  <th>shares_out</th>
	  <th>mkt_val</th>
	  <th>tot_debt_tot_equity</th>
	  <th>ret_invst</th>
	  <th>adj_close</th>
	  <th>tot_debt_tot_share</th>
	  <th>mkt_val_div_price</th>
	  <th>debt_to_mkt_cap</th>
	  <th>ret_on_inv</th>
	  <th>price_to_earnings</th>
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
	  <th>2014-11-12</th>
	  <td>AAP</td>
	  <td>2014-09-30</td>
	  <td>2014-11-12</td>
	  <td>1730.15</td>
	  <td>1.66</td>
	  <td>72.97</td>
	  <td>9508.64</td>
	  <td>0.9014</td>
	  <td>3.3421</td>
	  <td>136.689873</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
	  <td>0.802984</td>
	  <td>3.028100</td>
	  <td>82.343297</td>
	</tr>
	<tr>
	  <th>2014-11-13</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>2014-11-12</td>
	  <td>1730.15</td>
	  <td>1.66</td>
	  <td>72.97</td>
	  <td>9508.64</td>
	  <td>0.9014</td>
	  <td>3.3421</td>
	  <td>136.437557</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
	  <td>0.804469</td>
	  <td>3.032918</td>
	  <td>82.191299</td>
	</tr>
	<tr>
	  <th>2014-11-14</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>2014-11-12</td>
	  <td>1730.15</td>
	  <td>1.66</td>
	  <td>72.97</td>
	  <td>9508.64</td>
	  <td>0.9014</td>
	  <td>3.3421</td>
	  <td>135.325497</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
	  <td>0.811079</td>
	  <td>3.054335</td>
	  <td>81.521384</td>
	</tr>
	<tr>
	  <th>2014-11-17</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>2014-11-12</td>
	  <td>1730.15</td>
	  <td>1.66</td>
	  <td>72.97</td>
	  <td>9508.64</td>
	  <td>0.9014</td>
	  <td>3.3421</td>
	  <td>136.278691</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
	  <td>0.805406</td>
	  <td>3.035959</td>
	  <td>82.095597</td>
	</tr>
	<tr>
	  <th>2014-11-18</th>
	  <td>AAP</td>
	  <td>NaN</td>
	  <td>2014-11-12</td>
	  <td>1730.15</td>
	  <td>1.66</td>
	  <td>72.97</td>
	  <td>9508.64</td>
	  <td>0.9014</td>
	  <td>3.3421</td>
	  <td>136.661838</td>
	  <td>109.759734</td>
	  <td>78.089548</td>
	  <td>0.803148</td>
	  <td>3.028635</td>
	  <td>82.326408</td>
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
	  <th>2021-12-28</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>2021-11-04</td>
	  <td>-600.00</td>
	  <td>1.16</td>
	  <td>473.13</td>
	  <td>91852.65</td>
	  <td>1.4082</td>
	  <td>4.8967</td>
	  <td>241.902749</td>
	  <td>270.442767</td>
	  <td>478.278281</td>
	  <td>1.117981</td>
	  <td>3.882269</td>
	  <td>208.536853</td>
	</tr>
	<tr>
	  <th>2021-12-29</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>2021-11-04</td>
	  <td>-600.00</td>
	  <td>1.16</td>
	  <td>473.13</td>
	  <td>91852.65</td>
	  <td>1.4082</td>
	  <td>4.8967</td>
	  <td>244.656033</td>
	  <td>270.442767</td>
	  <td>478.278281</td>
	  <td>1.105400</td>
	  <td>3.838354</td>
	  <td>210.910374</td>
	</tr>
	<tr>
	  <th>2021-12-30</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>2021-11-04</td>
	  <td>-600.00</td>
	  <td>1.16</td>
	  <td>473.13</td>
	  <td>91852.65</td>
	  <td>1.4082</td>
	  <td>4.8967</td>
	  <td>242.804004</td>
	  <td>270.442767</td>
	  <td>478.278281</td>
	  <td>1.113832</td>
	  <td>3.867784</td>
	  <td>209.313797</td>
	</tr>
	<tr>
	  <th>2021-12-31</th>
	  <td>ZTS</td>
	  <td>NaN</td>
	  <td>2021-11-04</td>
	  <td>-600.00</td>
	  <td>1.16</td>
	  <td>473.13</td>
	  <td>91852.65</td>
	  <td>1.4082</td>
	  <td>4.8967</td>
	  <td>241.684864</td>
	  <td>270.442767</td>
	  <td>478.278281</td>
	  <td>1.118989</td>
	  <td>3.885787</td>
	  <td>208.349020</td>
	</tr>
	<tr>
	  <th>2022-02-15</th>
	  <td>ZTS</td>
	  <td>2021-12-31</td>
	  <td>2022-02-15</td>
	  <td>-600.00</td>
	  <td>0.87</td>
	  <td>473.13</td>
	  <td>115456.89</td>
	  <td>1.4507</td>
	  <td>3.7087</td>
	  <td>NaN</td>
	  <td>350.612232</td>
	  <td>477.716677</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
  </tbody>
</table>
<p>869145 rows × 15 columns</p>
</div>

    a. debt to market cap ratio table

```python
debt_to_mkt_cap = df_sec.pivot_table(values='debt_to_mkt_cap', columns='ticker', index=df_sec.index)
debt_to_mkt_cap = debt_to_mkt_cap.replace([np.inf, -np.inf], np.nan)
dmc=debt_to_mkt_cap['2015-01':]
# dmc=dmc.drop(dmc.columns[-2:], axis=1)
dmc.round(2)
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
	  <th>AAP</th>
	  <th>ABBV</th>
	  <th>ABC</th>
	  <th>ABG</th>
	  <th>ABT</th>
	  <th>ACCO</th>
	  <th>ACM</th>
	  <th>ADM</th>
	  <th>AEE</th>
	  <th>AES</th>
	  <th>…</th>
	  <th>WWE</th>
	  <th>WWW</th>
	  <th>WY</th>
	  <th>X</th>
	  <th>XOM</th>
	  <th>XPO</th>
	  <th>XYL</th>
	  <th>YUM</th>
	  <th>ZBH</th>
	  <th>ZTS</th>
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
	  <th>2015-01-02</th>
	  <td>0.74</td>
	  <td>2.77</td>
	  <td>0.87</td>
	  <td>1.88</td>
	  <td>0.33</td>
	  <td>0.97</td>
	  <td>0.49</td>
	  <td>0.27</td>
	  <td>0.80</td>
	  <td>2.87</td>
	  <td>…</td>
	  <td>0.14</td>
	  <td>0.98</td>
	  <td>0.81</td>
	  <td>1.31</td>
	  <td>0.12</td>
	  <td>0.34</td>
	  <td>0.53</td>
	  <td>1.30</td>
	  <td>0.23</td>
	  <td>2.24</td>
	</tr>
	<tr>
	  <th>2015-01-05</th>
	  <td>0.75</td>
	  <td>2.82</td>
	  <td>0.88</td>
	  <td>1.93</td>
	  <td>0.33</td>
	  <td>0.99</td>
	  <td>0.51</td>
	  <td>0.28</td>
	  <td>0.81</td>
	  <td>2.96</td>
	  <td>…</td>
	  <td>0.15</td>
	  <td>0.99</td>
	  <td>0.81</td>
	  <td>1.38</td>
	  <td>0.12</td>
	  <td>0.35</td>
	  <td>0.56</td>
	  <td>1.33</td>
	  <td>0.22</td>
	  <td>2.25</td>
	</tr>
	<tr>
	  <th>2015-01-06</th>
	  <td>0.75</td>
	  <td>2.84</td>
	  <td>0.87</td>
	  <td>1.97</td>
	  <td>0.34</td>
	  <td>1.01</td>
	  <td>0.52</td>
	  <td>0.28</td>
	  <td>0.82</td>
	  <td>3.02</td>
	  <td>…</td>
	  <td>0.15</td>
	  <td>1.01</td>
	  <td>0.81</td>
	  <td>1.42</td>
	  <td>0.12</td>
	  <td>0.36</td>
	  <td>0.56</td>
	  <td>1.35</td>
	  <td>0.22</td>
	  <td>2.27</td>
	</tr>
	<tr>
	  <th>2015-01-07</th>
	  <td>0.74</td>
	  <td>2.73</td>
	  <td>0.85</td>
	  <td>1.91</td>
	  <td>0.33</td>
	  <td>1.02</td>
	  <td>0.51</td>
	  <td>0.28</td>
	  <td>0.81</td>
	  <td>3.02</td>
	  <td>…</td>
	  <td>0.15</td>
	  <td>1.00</td>
	  <td>0.81</td>
	  <td>1.42</td>
	  <td>0.12</td>
	  <td>0.36</td>
	  <td>0.56</td>
	  <td>1.30</td>
	  <td>0.22</td>
	  <td>2.23</td>
	</tr>
	<tr>
	  <th>2015-01-08</th>
	  <td>0.73</td>
	  <td>2.70</td>
	  <td>0.85</td>
	  <td>1.89</td>
	  <td>0.33</td>
	  <td>0.98</td>
	  <td>0.49</td>
	  <td>0.28</td>
	  <td>0.81</td>
	  <td>2.97</td>
	  <td>…</td>
	  <td>0.15</td>
	  <td>0.98</td>
	  <td>0.80</td>
	  <td>1.39</td>
	  <td>0.12</td>
	  <td>0.36</td>
	  <td>0.55</td>
	  <td>1.28</td>
	  <td>0.21</td>
	  <td>2.19</td>
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
	  <th>2021-12-27</th>
	  <td>0.28</td>
	  <td>4.72</td>
	  <td>10.32</td>
	  <td>1.36</td>
	  <td>0.44</td>
	  <td>1.49</td>
	  <td>0.65</td>
	  <td>0.37</td>
	  <td>1.22</td>
	  <td>3.33</td>
	  <td>…</td>
	  <td>1.86</td>
	  <td>1.64</td>
	  <td>0.45</td>
	  <td>0.50</td>
	  <td>0.32</td>
	  <td>3.65</td>
	  <td>0.83</td>
	  <td>-1.26</td>
	  <td>0.67</td>
	  <td>1.11</td>
	</tr>
	<tr>
	  <th>2021-12-28</th>
	  <td>0.28</td>
	  <td>4.72</td>
	  <td>10.28</td>
	  <td>1.35</td>
	  <td>0.44</td>
	  <td>1.48</td>
	  <td>0.64</td>
	  <td>0.36</td>
	  <td>1.21</td>
	  <td>3.32</td>
	  <td>…</td>
	  <td>1.85</td>
	  <td>1.65</td>
	  <td>0.44</td>
	  <td>0.51</td>
	  <td>0.32</td>
	  <td>3.65</td>
	  <td>0.82</td>
	  <td>-1.26</td>
	  <td>0.67</td>
	  <td>1.12</td>
	</tr>
	<tr>
	  <th>2021-12-29</th>
	  <td>0.28</td>
	  <td>4.68</td>
	  <td>10.21</td>
	  <td>1.35</td>
	  <td>0.44</td>
	  <td>1.46</td>
	  <td>0.64</td>
	  <td>0.36</td>
	  <td>1.20</td>
	  <td>3.31</td>
	  <td>…</td>
	  <td>1.83</td>
	  <td>1.62</td>
	  <td>0.43</td>
	  <td>0.51</td>
	  <td>0.32</td>
	  <td>3.62</td>
	  <td>0.82</td>
	  <td>-1.26</td>
	  <td>0.67</td>
	  <td>1.11</td>
	</tr>
	<tr>
	  <th>2021-12-30</th>
	  <td>0.28</td>
	  <td>4.66</td>
	  <td>10.18</td>
	  <td>1.34</td>
	  <td>0.44</td>
	  <td>1.47</td>
	  <td>0.64</td>
	  <td>0.36</td>
	  <td>1.20</td>
	  <td>3.26</td>
	  <td>…</td>
	  <td>1.85</td>
	  <td>1.62</td>
	  <td>0.43</td>
	  <td>0.51</td>
	  <td>0.32</td>
	  <td>3.66</td>
	  <td>0.82</td>
	  <td>-1.26</td>
	  <td>0.67</td>
	  <td>1.11</td>
	</tr>
	<tr>
	  <th>2021-12-31</th>
	  <td>0.28</td>
	  <td>4.68</td>
	  <td>10.24</td>
	  <td>1.32</td>
	  <td>0.44</td>
	  <td>1.47</td>
	  <td>0.64</td>
	  <td>0.36</td>
	  <td>1.20</td>
	  <td>3.24</td>
	  <td>…</td>
	  <td>1.84</td>
	  <td>1.65</td>
	  <td>0.43</td>
	  <td>0.50</td>
	  <td>0.32</td>
	  <td>3.61</td>
	  <td>0.81</td>
	  <td>-1.26</td>
	  <td>0.68</td>
	  <td>1.12</td>
	</tr>
  </tbody>
</table>
<p>1763 rows × 482 columns</p>
</div>

    b.return on investment ratio table

```python
ret_on_inv = df_sec.pivot_table(values='ret_on_inv', columns='ticker', index=df_sec.index)
ret_on_inv = ret_on_inv.replace([np.inf, -np.inf], np.nan)
roi = ret_on_inv['2015-01':]
# roi = roi.drop(roi.columns[-2:], axis=1)
roi.round(2)
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
	  <th>AAP</th>
	  <th>ABBV</th>
	  <th>ABC</th>
	  <th>ABG</th>
	  <th>ABT</th>
	  <th>ACCO</th>
	  <th>ACM</th>
	  <th>ADM</th>
	  <th>AEE</th>
	  <th>AES</th>
	  <th>…</th>
	  <th>WWE</th>
	  <th>WWW</th>
	  <th>WY</th>
	  <th>X</th>
	  <th>XOM</th>
	  <th>XPO</th>
	  <th>XYL</th>
	  <th>YUM</th>
	  <th>ZBH</th>
	  <th>ZTS</th>
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
	  <th>2015-01-02</th>
	  <td>2.82</td>
	  <td>2.34</td>
	  <td>1.42</td>
	  <td>2.55</td>
	  <td>1.52</td>
	  <td>1.64</td>
	  <td>2.25</td>
	  <td>2.85</td>
	  <td>1.91</td>
	  <td>1.99</td>
	  <td>…</td>
	  <td>-2.84</td>
	  <td>2.47</td>
	  <td>1.55</td>
	  <td>-4.41</td>
	  <td>4.22</td>
	  <td>-0.48</td>
	  <td>2.93</td>
	  <td>6.77</td>
	  <td>1.93</td>
	  <td>2.90</td>
	</tr>
	<tr>
	  <th>2015-01-05</th>
	  <td>2.86</td>
	  <td>2.38</td>
	  <td>1.43</td>
	  <td>2.61</td>
	  <td>1.52</td>
	  <td>1.68</td>
	  <td>2.36</td>
	  <td>2.96</td>
	  <td>1.93</td>
	  <td>2.05</td>
	  <td>…</td>
	  <td>-2.90</td>
	  <td>2.50</td>
	  <td>1.55</td>
	  <td>-4.65</td>
	  <td>4.33</td>
	  <td>-0.50</td>
	  <td>3.10</td>
	  <td>6.91</td>
	  <td>1.86</td>
	  <td>2.91</td>
	</tr>
	<tr>
	  <th>2015-01-06</th>
	  <td>2.86</td>
	  <td>2.39</td>
	  <td>1.42</td>
	  <td>2.64</td>
	  <td>1.53</td>
	  <td>1.72</td>
	  <td>2.39</td>
	  <td>3.02</td>
	  <td>1.96</td>
	  <td>2.10</td>
	  <td>…</td>
	  <td>-2.89</td>
	  <td>2.56</td>
	  <td>1.55</td>
	  <td>-4.81</td>
	  <td>4.36</td>
	  <td>-0.51</td>
	  <td>3.11</td>
	  <td>7.00</td>
	  <td>1.88</td>
	  <td>2.94</td>
	</tr>
	<tr>
	  <th>2015-01-07</th>
	  <td>2.81</td>
	  <td>2.31</td>
	  <td>1.40</td>
	  <td>2.58</td>
	  <td>1.52</td>
	  <td>1.74</td>
	  <td>2.34</td>
	  <td>2.98</td>
	  <td>1.94</td>
	  <td>2.09</td>
	  <td>…</td>
	  <td>-3.02</td>
	  <td>2.53</td>
	  <td>1.55</td>
	  <td>-4.79</td>
	  <td>4.31</td>
	  <td>-0.51</td>
	  <td>3.09</td>
	  <td>6.78</td>
	  <td>1.83</td>
	  <td>2.89</td>
	</tr>
	<tr>
	  <th>2015-01-08</th>
	  <td>2.78</td>
	  <td>2.29</td>
	  <td>1.39</td>
	  <td>2.57</td>
	  <td>1.49</td>
	  <td>1.66</td>
	  <td>2.26</td>
	  <td>3.02</td>
	  <td>1.94</td>
	  <td>2.06</td>
	  <td>…</td>
	  <td>-3.05</td>
	  <td>2.47</td>
	  <td>1.53</td>
	  <td>-4.68</td>
	  <td>4.24</td>
	  <td>-0.51</td>
	  <td>3.07</td>
	  <td>6.66</td>
	  <td>1.82</td>
	  <td>2.85</td>
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
	  <th>2021-12-27</th>
	  <td>3.56</td>
	  <td>2.86</td>
	  <td>5.70</td>
	  <td>6.28</td>
	  <td>3.35</td>
	  <td>1.13</td>
	  <td>1.72</td>
	  <td>1.61</td>
	  <td>1.77</td>
	  <td>1.91</td>
	  <td>…</td>
	  <td>6.57</td>
	  <td>-0.06</td>
	  <td>2.74</td>
	  <td>14.58</td>
	  <td>3.08</td>
	  <td>0.49</td>
	  <td>2.14</td>
	  <td>14.00</td>
	  <td>0.97</td>
	  <td>3.85</td>
	</tr>
	<tr>
	  <th>2021-12-28</th>
	  <td>3.54</td>
	  <td>2.86</td>
	  <td>5.68</td>
	  <td>6.23</td>
	  <td>3.38</td>
	  <td>1.12</td>
	  <td>1.72</td>
	  <td>1.59</td>
	  <td>1.75</td>
	  <td>1.91</td>
	  <td>…</td>
	  <td>6.53</td>
	  <td>-0.06</td>
	  <td>2.73</td>
	  <td>14.84</td>
	  <td>3.09</td>
	  <td>0.49</td>
	  <td>2.12</td>
	  <td>14.01</td>
	  <td>0.97</td>
	  <td>3.88</td>
	</tr>
	<tr>
	  <th>2021-12-29</th>
	  <td>3.50</td>
	  <td>2.84</td>
	  <td>5.64</td>
	  <td>6.24</td>
	  <td>3.36</td>
	  <td>1.11</td>
	  <td>1.71</td>
	  <td>1.58</td>
	  <td>1.74</td>
	  <td>1.90</td>
	  <td>…</td>
	  <td>6.46</td>
	  <td>-0.06</td>
	  <td>2.67</td>
	  <td>14.95</td>
	  <td>3.12</td>
	  <td>0.49</td>
	  <td>2.12</td>
	  <td>13.94</td>
	  <td>0.97</td>
	  <td>3.84</td>
	</tr>
	<tr>
	  <th>2021-12-30</th>
	  <td>3.55</td>
	  <td>2.83</td>
	  <td>5.63</td>
	  <td>6.22</td>
	  <td>3.36</td>
	  <td>1.12</td>
	  <td>1.71</td>
	  <td>1.59</td>
	  <td>1.74</td>
	  <td>1.87</td>
	  <td>…</td>
	  <td>6.53</td>
	  <td>-0.06</td>
	  <td>2.65</td>
	  <td>15.01</td>
	  <td>3.14</td>
	  <td>0.49</td>
	  <td>2.13</td>
	  <td>13.96</td>
	  <td>0.97</td>
	  <td>3.87</td>
	</tr>
	<tr>
	  <th>2021-12-31</th>
	  <td>3.51</td>
	  <td>2.84</td>
	  <td>5.66</td>
	  <td>6.15</td>
	  <td>3.37</td>
	  <td>1.11</td>
	  <td>1.70</td>
	  <td>1.57</td>
	  <td>1.74</td>
	  <td>1.86</td>
	  <td>…</td>
	  <td>6.48</td>
	  <td>-0.06</td>
	  <td>2.64</td>
	  <td>14.49</td>
	  <td>3.12</td>
	  <td>0.48</td>
	  <td>2.11</td>
	  <td>13.92</td>
	  <td>0.98</td>
	  <td>3.89</td>
	</tr>
  </tbody>
</table>
<p>1763 rows × 482 columns</p>
</div>

    c. price to earnings ratio table

```python
price_to_earnings = df_sec.pivot_table(values='price_to_earnings', columns='ticker', index=df_sec.index)
price_to_earnings = price_to_earnings.replace([np.inf, -np.inf], np.nan)
pe = price_to_earnings['2015-01':]
# pe = pe.drop(pe.columns[-2:], axis=1)
pe.round(2)
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
	  <th>AAP</th>
	  <th>ABBV</th>
	  <th>ABC</th>
	  <th>ABG</th>
	  <th>ABT</th>
	  <th>ACCO</th>
	  <th>ACM</th>
	  <th>ADM</th>
	  <th>AEE</th>
	  <th>AES</th>
	  <th>…</th>
	  <th>WWE</th>
	  <th>WWW</th>
	  <th>WY</th>
	  <th>X</th>
	  <th>XOM</th>
	  <th>XPO</th>
	  <th>XYL</th>
	  <th>YUM</th>
	  <th>ZBH</th>
	  <th>ZTS</th>
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
	  <th>2015-01-02</th>
	  <td>89.30</td>
	  <td>149.97</td>
	  <td>274.65</td>
	  <td>70.45</td>
	  <td>106.78</td>
	  <td>25.87</td>
	  <td>46.93</td>
	  <td>36.41</td>
	  <td>30.51</td>
	  <td>15.55</td>
	  <td>…</td>
	  <td>-133.61</td>
	  <td>45.82</td>
	  <td>12.39</td>
	  <td>-17.48</td>
	  <td>33.94</td>
	  <td>-104.47</td>
	  <td>59.26</td>
	  <td>50.14</td>
	  <td>104.65</td>
	  <td>124.12</td>
	</tr>
	<tr>
	  <th>2015-01-05</th>
	  <td>88.12</td>
	  <td>147.15</td>
	  <td>272.31</td>
	  <td>68.52</td>
	  <td>106.80</td>
	  <td>25.37</td>
	  <td>44.87</td>
	  <td>35.15</td>
	  <td>30.21</td>
	  <td>15.11</td>
	  <td>…</td>
	  <td>-131.16</td>
	  <td>45.38</td>
	  <td>12.39</td>
	  <td>-16.67</td>
	  <td>33.02</td>
	  <td>-101.23</td>
	  <td>55.57</td>
	  <td>49.12</td>
	  <td>108.55</td>
	  <td>123.38</td>
	</tr>
	<tr>
	  <th>2015-01-06</th>
	  <td>88.06</td>
	  <td>146.42</td>
	  <td>273.80</td>
	  <td>67.31</td>
	  <td>105.59</td>
	  <td>24.73</td>
	  <td>44.42</td>
	  <td>34.46</td>
	  <td>29.86</td>
	  <td>14.77</td>
	  <td>…</td>
	  <td>-131.50</td>
	  <td>44.29</td>
	  <td>12.37</td>
	  <td>-16.16</td>
	  <td>32.84</td>
	  <td>-97.66</td>
	  <td>55.24</td>
	  <td>48.52</td>
	  <td>107.63</td>
	  <td>122.18</td>
	</tr>
	<tr>
	  <th>2015-01-07</th>
	  <td>89.95</td>
	  <td>152.34</td>
	  <td>279.27</td>
	  <td>69.45</td>
	  <td>106.45</td>
	  <td>24.52</td>
	  <td>45.34</td>
	  <td>34.97</td>
	  <td>30.09</td>
	  <td>14.79</td>
	  <td>…</td>
	  <td>-126.05</td>
	  <td>44.75</td>
	  <td>12.41</td>
	  <td>-16.20</td>
	  <td>33.17</td>
	  <td>-98.07</td>
	  <td>55.68</td>
	  <td>50.12</td>
	  <td>110.31</td>
	  <td>124.70</td>
	</tr>
	<tr>
	  <th>2015-01-08</th>
	  <td>90.74</td>
	  <td>153.93</td>
	  <td>279.91</td>
	  <td>69.91</td>
	  <td>108.63</td>
	  <td>25.58</td>
	  <td>46.74</td>
	  <td>34.46</td>
	  <td>30.19</td>
	  <td>15.02</td>
	  <td>…</td>
	  <td>-124.61</td>
	  <td>45.90</td>
	  <td>12.54</td>
	  <td>-16.55</td>
	  <td>33.73</td>
	  <td>-98.61</td>
	  <td>56.10</td>
	  <td>51.00</td>
	  <td>111.48</td>
	  <td>126.62</td>
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
	  <th>2021-12-27</th>
	  <td>85.17</td>
	  <td>71.96</td>
	  <td>62.63</td>
	  <td>22.21</td>
	  <td>118.38</td>
	  <td>37.04</td>
	  <td>116.30</td>
	  <td>69.73</td>
	  <td>51.69</td>
	  <td>47.97</td>
	  <td>…</td>
	  <td>92.95</td>
	  <td>NaN</td>
	  <td>58.57</td>
	  <td>3.37</td>
	  <td>37.93</td>
	  <td>-156.35</td>
	  <td>185.34</td>
	  <td>77.38</td>
	  <td>183.71</td>
	  <td>210.47</td>
	</tr>
	<tr>
	  <th>2021-12-28</th>
	  <td>85.75</td>
	  <td>71.95</td>
	  <td>62.85</td>
	  <td>22.48</td>
	  <td>117.55</td>
	  <td>37.36</td>
	  <td>116.82</td>
	  <td>70.64</td>
	  <td>52.21</td>
	  <td>48.11</td>
	  <td>…</td>
	  <td>93.48</td>
	  <td>NaN</td>
	  <td>58.87</td>
	  <td>3.33</td>
	  <td>37.80</td>
	  <td>-156.27</td>
	  <td>187.27</td>
	  <td>77.36</td>
	  <td>184.29</td>
	  <td>208.54</td>
	</tr>
	<tr>
	  <th>2021-12-29</th>
	  <td>86.80</td>
	  <td>72.47</td>
	  <td>63.31</td>
	  <td>22.41</td>
	  <td>118.15</td>
	  <td>37.82</td>
	  <td>117.27</td>
	  <td>70.73</td>
	  <td>52.50</td>
	  <td>48.19</td>
	  <td>…</td>
	  <td>94.51</td>
	  <td>NaN</td>
	  <td>60.08</td>
	  <td>3.31</td>
	  <td>37.47</td>
	  <td>-157.59</td>
	  <td>187.02</td>
	  <td>77.74</td>
	  <td>184.32</td>
	  <td>210.91</td>
	</tr>
	<tr>
	  <th>2021-12-30</th>
	  <td>85.53</td>
	  <td>72.77</td>
	  <td>63.52</td>
	  <td>22.56</td>
	  <td>117.99</td>
	  <td>37.59</td>
	  <td>117.01</td>
	  <td>70.57</td>
	  <td>52.59</td>
	  <td>48.98</td>
	  <td>…</td>
	  <td>93.50</td>
	  <td>NaN</td>
	  <td>60.50</td>
	  <td>3.30</td>
	  <td>37.25</td>
	  <td>-155.92</td>
	  <td>186.61</td>
	  <td>77.59</td>
	  <td>184.37</td>
	  <td>209.31</td>
	</tr>
	<tr>
	  <th>2021-12-31</th>
	  <td>86.38</td>
	  <td>72.49</td>
	  <td>63.10</td>
	  <td>22.91</td>
	  <td>117.78</td>
	  <td>37.64</td>
	  <td>117.76</td>
	  <td>71.34</td>
	  <td>52.56</td>
	  <td>49.24</td>
	  <td>…</td>
	  <td>94.19</td>
	  <td>NaN</td>
	  <td>60.81</td>
	  <td>3.39</td>
	  <td>37.50</td>
	  <td>-158.02</td>
	  <td>187.90</td>
	  <td>77.85</td>
	  <td>182.60</td>
	  <td>208.35</td>
	</tr>
  </tbody>
</table>
<p>1763 rows × 482 columns</p>
</div>

2.9 Thoughts on meaningful combinations of 3 calculated financial ratios for quantile trading

One combination that is meaningful to use is: ROI * (1D/MC)

    This metric combines the debt to market cap ratio with the return on investment ratio to give a measure of the return on investment after accounting for the level of debt. This is important because companies with high levels of debt may have a lower return on investment due to the interest expenses associated with servicing that debt. By adjusting the return on investment ratio for the level of debt, we can have a more accurate measure of a company's investment performance and potential.

```python
df_sec['adj_roi'] = df_sec['ret_on_inv'] * (1-df_sec['debt_to_mkt_cap'])

adj_roi = df_sec.pivot_table(values='adj_roi', columns='ticker', index=df_sec.index)
adj_roi= adj_roi.replace([np.inf, -np.inf], np.nan)
adj_roi = adj_roi['2015-01':]
# adj_roi = adj_roi.drop(adj_roi.columns[-2:], axis=1)
adj_roi.round(2)
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
	  <th>AAP</th>
	  <th>ABBV</th>
	  <th>ABC</th>
	  <th>ABG</th>
	  <th>ABT</th>
	  <th>ACCO</th>
	  <th>ACM</th>
	  <th>ADM</th>
	  <th>AEE</th>
	  <th>AES</th>
	  <th>…</th>
	  <th>WWE</th>
	  <th>WWW</th>
	  <th>WY</th>
	  <th>X</th>
	  <th>XOM</th>
	  <th>XPO</th>
	  <th>XYL</th>
	  <th>YUM</th>
	  <th>ZBH</th>
	  <th>ZTS</th>
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
	  <th>2015-01-02</th>
	  <td>0.73</td>
	  <td>-4.15</td>
	  <td>0.19</td>
	  <td>-2.24</td>
	  <td>1.01</td>
	  <td>0.05</td>
	  <td>1.15</td>
	  <td>2.09</td>
	  <td>0.38</td>
	  <td>-3.73</td>
	  <td>…</td>
	  <td>-2.44</td>
	  <td>0.05</td>
	  <td>0.30</td>
	  <td>1.39</td>
	  <td>3.72</td>
	  <td>-0.32</td>
	  <td>1.39</td>
	  <td>-2.06</td>
	  <td>1.49</td>
	  <td>-3.59</td>
	</tr>
	<tr>
	  <th>2015-01-05</th>
	  <td>0.71</td>
	  <td>-4.35</td>
	  <td>0.18</td>
	  <td>-2.43</td>
	  <td>1.01</td>
	  <td>0.02</td>
	  <td>1.15</td>
	  <td>2.14</td>
	  <td>0.37</td>
	  <td>-4.01</td>
	  <td>…</td>
	  <td>-2.48</td>
	  <td>0.03</td>
	  <td>0.30</td>
	  <td>1.76</td>
	  <td>3.81</td>
	  <td>-0.32</td>
	  <td>1.36</td>
	  <td>-2.29</td>
	  <td>1.45</td>
	  <td>-3.65</td>
	</tr>
	<tr>
	  <th>2015-01-06</th>
	  <td>0.71</td>
	  <td>-4.40</td>
	  <td>0.18</td>
	  <td>-2.56</td>
	  <td>1.02</td>
	  <td>-0.02</td>
	  <td>1.15</td>
	  <td>2.17</td>
	  <td>0.36</td>
	  <td>-4.24</td>
	  <td>…</td>
	  <td>-2.47</td>
	  <td>-0.03</td>
	  <td>0.30</td>
	  <td>2.03</td>
	  <td>3.83</td>
	  <td>-0.33</td>
	  <td>1.36</td>
	  <td>-2.43</td>
	  <td>1.46</td>
	  <td>-3.74</td>
	</tr>
	<tr>
	  <th>2015-01-07</th>
	  <td>0.74</td>
	  <td>-3.99</td>
	  <td>0.20</td>
	  <td>-2.34</td>
	  <td>1.01</td>
	  <td>-0.04</td>
	  <td>1.15</td>
	  <td>2.15</td>
	  <td>0.37</td>
	  <td>-4.23</td>
	  <td>…</td>
	  <td>-2.56</td>
	  <td>-0.00</td>
	  <td>0.30</td>
	  <td>2.01</td>
	  <td>3.80</td>
	  <td>-0.32</td>
	  <td>1.37</td>
	  <td>-2.06</td>
	  <td>1.44</td>
	  <td>-3.55</td>
	</tr>
	<tr>
	  <th>2015-01-08</th>
	  <td>0.76</td>
	  <td>-3.89</td>
	  <td>0.21</td>
	  <td>-2.29</td>
	  <td>1.00</td>
	  <td>0.04</td>
	  <td>1.15</td>
	  <td>2.17</td>
	  <td>0.37</td>
	  <td>-4.07</td>
	  <td>…</td>
	  <td>-2.58</td>
	  <td>0.06</td>
	  <td>0.31</td>
	  <td>1.82</td>
	  <td>3.74</td>
	  <td>-0.32</td>
	  <td>1.37</td>
	  <td>-1.88</td>
	  <td>1.43</td>
	  <td>-3.40</td>
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
	  <th>2021-12-27</th>
	  <td>2.55</td>
	  <td>-10.64</td>
	  <td>-53.12</td>
	  <td>-2.28</td>
	  <td>1.87</td>
	  <td>-0.56</td>
	  <td>0.61</td>
	  <td>1.02</td>
	  <td>-0.39</td>
	  <td>-4.46</td>
	  <td>…</td>
	  <td>-5.67</td>
	  <td>0.04</td>
	  <td>1.52</td>
	  <td>7.28</td>
	  <td>2.11</td>
	  <td>-1.30</td>
	  <td>0.37</td>
	  <td>31.71</td>
	  <td>0.32</td>
	  <td>-0.41</td>
	</tr>
	<tr>
	  <th>2021-12-28</th>
	  <td>2.54</td>
	  <td>-10.64</td>
	  <td>-52.74</td>
	  <td>-2.16</td>
	  <td>1.87</td>
	  <td>-0.54</td>
	  <td>0.61</td>
	  <td>1.01</td>
	  <td>-0.37</td>
	  <td>-4.42</td>
	  <td>…</td>
	  <td>-5.57</td>
	  <td>0.04</td>
	  <td>1.52</td>
	  <td>7.32</td>
	  <td>2.11</td>
	  <td>-1.30</td>
	  <td>0.39</td>
	  <td>31.72</td>
	  <td>0.32</td>
	  <td>-0.46</td>
	</tr>
	<tr>
	  <th>2021-12-29</th>
	  <td>2.52</td>
	  <td>-10.47</td>
	  <td>-51.96</td>
	  <td>-2.19</td>
	  <td>1.87</td>
	  <td>-0.51</td>
	  <td>0.61</td>
	  <td>1.01</td>
	  <td>-0.36</td>
	  <td>-4.41</td>
	  <td>…</td>
	  <td>-5.37</td>
	  <td>0.04</td>
	  <td>1.51</td>
	  <td>7.33</td>
	  <td>2.12</td>
	  <td>-1.27</td>
	  <td>0.39</td>
	  <td>31.48</td>
	  <td>0.32</td>
	  <td>-0.40</td>
	</tr>
	<tr>
	  <th>2021-12-30</th>
	  <td>2.54</td>
	  <td>-10.37</td>
	  <td>-51.62</td>
	  <td>-2.12</td>
	  <td>1.87</td>
	  <td>-0.53</td>
	  <td>0.61</td>
	  <td>1.01</td>
	  <td>-0.35</td>
	  <td>-4.23</td>
	  <td>…</td>
	  <td>-5.56</td>
	  <td>0.04</td>
	  <td>1.51</td>
	  <td>7.34</td>
	  <td>2.13</td>
	  <td>-1.31</td>
	  <td>0.38</td>
	  <td>31.58</td>
	  <td>0.32</td>
	  <td>-0.44</td>
	</tr>
	<tr>
	  <th>2021-12-31</th>
	  <td>2.53</td>
	  <td>-10.46</td>
	  <td>-52.32</td>
	  <td>-1.97</td>
	  <td>1.87</td>
	  <td>-0.53</td>
	  <td>0.62</td>
	  <td>1.01</td>
	  <td>-0.35</td>
	  <td>-4.18</td>
	  <td>…</td>
	  <td>-5.43</td>
	  <td>0.04</td>
	  <td>1.51</td>
	  <td>7.27</td>
	  <td>2.12</td>
	  <td>-1.26</td>
	  <td>0.39</td>
	  <td>31.41</td>
	  <td>0.31</td>
	  <td>-0.46</td>
	</tr>
  </tbody>
</table>
<p>1763 rows × 482 columns</p>
</div>

Another combination could also be used is: 0.5 P/E + 0.5 ROI

    The P/E ratio and ROI can provide a more comprehensive view of a company's performance. A high P/E ratio and a high ROI suggest that a company is profitable and growing, and that its stock is likely overvalued. A low P/E ratio and a low ROI suggest that a company is not performing well and that its stock is likely undervalued.

```python
df_sec['pe_roi'] = 0.5 * df_sec['ret_on_inv'] + 0.5 * df_sec['price_to_earnings']

pe_roi = df_sec.pivot_table(values='pe_roi', columns='ticker', index=df_sec.index)
pe_roi = pe_roi.replace([np.inf, -np.inf], np.nan)
pe_roi = pe_roi['2015-01':]
# pe_roi = pe_roi.drop(pe_roi.columns[-2:], axis=1)
pe_roi.round(2)
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
	  <th>AAP</th>
	  <th>ABBV</th>
	  <th>ABC</th>
	  <th>ABG</th>
	  <th>ABT</th>
	  <th>ACCO</th>
	  <th>ACM</th>
	  <th>ADM</th>
	  <th>AEE</th>
	  <th>AES</th>
	  <th>…</th>
	  <th>WWE</th>
	  <th>WWW</th>
	  <th>WY</th>
	  <th>X</th>
	  <th>XOM</th>
	  <th>XPO</th>
	  <th>XYL</th>
	  <th>YUM</th>
	  <th>ZBH</th>
	  <th>ZTS</th>
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
	  <th>2015-01-02</th>
	  <td>46.06</td>
	  <td>76.16</td>
	  <td>138.04</td>
	  <td>36.50</td>
	  <td>54.15</td>
	  <td>13.76</td>
	  <td>24.59</td>
	  <td>19.63</td>
	  <td>16.21</td>
	  <td>8.77</td>
	  <td>…</td>
	  <td>-68.23</td>
	  <td>24.15</td>
	  <td>6.97</td>
	  <td>-10.95</td>
	  <td>19.08</td>
	  <td>-52.48</td>
	  <td>31.10</td>
	  <td>28.46</td>
	  <td>53.29</td>
	  <td>63.51</td>
	</tr>
	<tr>
	  <th>2015-01-05</th>
	  <td>45.49</td>
	  <td>74.77</td>
	  <td>136.87</td>
	  <td>35.56</td>
	  <td>54.16</td>
	  <td>13.52</td>
	  <td>23.62</td>
	  <td>19.05</td>
	  <td>16.07</td>
	  <td>8.58</td>
	  <td>…</td>
	  <td>-67.03</td>
	  <td>23.94</td>
	  <td>6.97</td>
	  <td>-10.66</td>
	  <td>18.67</td>
	  <td>-50.86</td>
	  <td>29.33</td>
	  <td>28.02</td>
	  <td>55.21</td>
	  <td>63.15</td>
	</tr>
	<tr>
	  <th>2015-01-06</th>
	  <td>45.46</td>
	  <td>74.41</td>
	  <td>137.61</td>
	  <td>34.97</td>
	  <td>53.56</td>
	  <td>13.22</td>
	  <td>23.40</td>
	  <td>18.74</td>
	  <td>15.91</td>
	  <td>8.43</td>
	  <td>…</td>
	  <td>-67.19</td>
	  <td>23.43</td>
	  <td>6.96</td>
	  <td>-10.48</td>
	  <td>18.60</td>
	  <td>-49.08</td>
	  <td>29.18</td>
	  <td>27.76</td>
	  <td>54.76</td>
	  <td>62.56</td>
	</tr>
	<tr>
	  <th>2015-01-07</th>
	  <td>46.38</td>
	  <td>77.32</td>
	  <td>140.33</td>
	  <td>36.02</td>
	  <td>53.98</td>
	  <td>13.13</td>
	  <td>23.84</td>
	  <td>18.97</td>
	  <td>16.01</td>
	  <td>8.44</td>
	  <td>…</td>
	  <td>-64.54</td>
	  <td>23.64</td>
	  <td>6.98</td>
	  <td>-10.50</td>
	  <td>18.74</td>
	  <td>-49.29</td>
	  <td>29.39</td>
	  <td>28.45</td>
	  <td>56.07</td>
	  <td>63.79</td>
	</tr>
	<tr>
	  <th>2015-01-08</th>
	  <td>46.76</td>
	  <td>78.11</td>
	  <td>140.65</td>
	  <td>36.24</td>
	  <td>55.06</td>
	  <td>13.62</td>
	  <td>24.50</td>
	  <td>18.74</td>
	  <td>16.06</td>
	  <td>8.54</td>
	  <td>…</td>
	  <td>-63.83</td>
	  <td>24.19</td>
	  <td>7.04</td>
	  <td>-10.62</td>
	  <td>18.98</td>
	  <td>-49.56</td>
	  <td>29.59</td>
	  <td>28.83</td>
	  <td>56.65</td>
	  <td>64.73</td>
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
	  <th>2021-12-27</th>
	  <td>44.36</td>
	  <td>37.41</td>
	  <td>34.16</td>
	  <td>14.25</td>
	  <td>60.87</td>
	  <td>19.09</td>
	  <td>59.01</td>
	  <td>35.67</td>
	  <td>26.73</td>
	  <td>24.94</td>
	  <td>…</td>
	  <td>49.76</td>
	  <td>NaN</td>
	  <td>30.66</td>
	  <td>8.98</td>
	  <td>20.50</td>
	  <td>-77.93</td>
	  <td>93.74</td>
	  <td>45.69</td>
	  <td>92.34</td>
	  <td>107.16</td>
	</tr>
	<tr>
	  <th>2021-12-28</th>
	  <td>44.65</td>
	  <td>37.41</td>
	  <td>34.26</td>
	  <td>14.36</td>
	  <td>60.46</td>
	  <td>19.24</td>
	  <td>59.27</td>
	  <td>36.11</td>
	  <td>26.98</td>
	  <td>25.01</td>
	  <td>…</td>
	  <td>50.00</td>
	  <td>NaN</td>
	  <td>30.80</td>
	  <td>9.09</td>
	  <td>20.45</td>
	  <td>-77.89</td>
	  <td>94.70</td>
	  <td>45.68</td>
	  <td>92.63</td>
	  <td>106.21</td>
	</tr>
	<tr>
	  <th>2021-12-29</th>
	  <td>45.15</td>
	  <td>37.66</td>
	  <td>34.48</td>
	  <td>14.33</td>
	  <td>60.76</td>
	  <td>19.46</td>
	  <td>59.49</td>
	  <td>36.16</td>
	  <td>27.12</td>
	  <td>25.05</td>
	  <td>…</td>
	  <td>50.48</td>
	  <td>NaN</td>
	  <td>31.37</td>
	  <td>9.13</td>
	  <td>20.30</td>
	  <td>-78.55</td>
	  <td>94.57</td>
	  <td>45.84</td>
	  <td>92.64</td>
	  <td>107.37</td>
	</tr>
	<tr>
	  <th>2021-12-30</th>
	  <td>44.54</td>
	  <td>37.80</td>
	  <td>34.57</td>
	  <td>14.39</td>
	  <td>60.68</td>
	  <td>19.35</td>
	  <td>59.36</td>
	  <td>36.08</td>
	  <td>27.16</td>
	  <td>25.43</td>
	  <td>…</td>
	  <td>50.01</td>
	  <td>NaN</td>
	  <td>31.58</td>
	  <td>9.16</td>
	  <td>20.20</td>
	  <td>-77.71</td>
	  <td>94.37</td>
	  <td>45.78</td>
	  <td>92.67</td>
	  <td>106.59</td>
	</tr>
	<tr>
	  <th>2021-12-31</th>
	  <td>44.95</td>
	  <td>37.67</td>
	  <td>34.38</td>
	  <td>14.53</td>
	  <td>60.57</td>
	  <td>19.37</td>
	  <td>59.73</td>
	  <td>36.46</td>
	  <td>27.15</td>
	  <td>25.55</td>
	  <td>…</td>
	  <td>50.33</td>
	  <td>NaN</td>
	  <td>31.73</td>
	  <td>8.94</td>
	  <td>20.31</td>
	  <td>-78.77</td>
	  <td>95.01</td>
	  <td>45.89</td>
	  <td>91.79</td>
	  <td>106.12</td>
	</tr>
  </tbody>
</table>
<p>1763 rows × 482 columns</p>
</div>

2.10 price table

```python
adj_close = df_sec.pivot_table(values='adj_close', columns='ticker', index=df_sec.index)
adj_close = adj_close['2015-01':]
# adj_close = adj_close.drop(adj_close.columns[-2:], axis=1)
adj_close.round(2)
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
	  <th>AAP</th>
	  <th>ABBV</th>
	  <th>ABC</th>
	  <th>ABG</th>
	  <th>ABT</th>
	  <th>ACCO</th>
	  <th>ACM</th>
	  <th>ADM</th>
	  <th>AEE</th>
	  <th>AES</th>
	  <th>…</th>
	  <th>WWE</th>
	  <th>WWW</th>
	  <th>WY</th>
	  <th>X</th>
	  <th>XOM</th>
	  <th>XPO</th>
	  <th>XYL</th>
	  <th>YUM</th>
	  <th>ZBH</th>
	  <th>ZTS</th>
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
	  <th>2015-01-02</th>
	  <td>148.23</td>
	  <td>46.49</td>
	  <td>79.65</td>
	  <td>76.09</td>
	  <td>38.44</td>
	  <td>7.50</td>
	  <td>30.03</td>
	  <td>41.51</td>
	  <td>36.61</td>
	  <td>10.42</td>
	  <td>…</td>
	  <td>10.69</td>
	  <td>26.12</td>
	  <td>26.63</td>
	  <td>24.82</td>
	  <td>64.16</td>
	  <td>24.03</td>
	  <td>34.37</td>
	  <td>44.62</td>
	  <td>105.69</td>
	  <td>40.96</td>
	</tr>
	<tr>
	  <th>2015-01-05</th>
	  <td>146.28</td>
	  <td>45.62</td>
	  <td>78.97</td>
	  <td>74.00</td>
	  <td>38.45</td>
	  <td>7.36</td>
	  <td>28.72</td>
	  <td>40.07</td>
	  <td>36.25</td>
	  <td>10.12</td>
	  <td>…</td>
	  <td>10.49</td>
	  <td>25.87</td>
	  <td>26.63</td>
	  <td>23.66</td>
	  <td>62.40</td>
	  <td>23.28</td>
	  <td>32.23</td>
	  <td>43.72</td>
	  <td>109.64</td>
	  <td>40.72</td>
	</tr>
	<tr>
	  <th>2015-01-06</th>
	  <td>146.17</td>
	  <td>45.39</td>
	  <td>79.40</td>
	  <td>72.69</td>
	  <td>38.01</td>
	  <td>7.17</td>
	  <td>28.43</td>
	  <td>39.28</td>
	  <td>35.83</td>
	  <td>9.89</td>
	  <td>…</td>
	  <td>10.52</td>
	  <td>25.25</td>
	  <td>26.60</td>
	  <td>22.95</td>
	  <td>62.07</td>
	  <td>22.46</td>
	  <td>32.04</td>
	  <td>43.18</td>
	  <td>108.71</td>
	  <td>40.32</td>
	</tr>
	<tr>
	  <th>2015-01-07</th>
	  <td>149.31</td>
	  <td>47.22</td>
	  <td>80.99</td>
	  <td>75.01</td>
	  <td>38.32</td>
	  <td>7.11</td>
	  <td>29.01</td>
	  <td>39.87</td>
	  <td>36.10</td>
	  <td>9.91</td>
	  <td>…</td>
	  <td>10.08</td>
	  <td>25.51</td>
	  <td>26.68</td>
	  <td>23.00</td>
	  <td>62.70</td>
	  <td>22.56</td>
	  <td>32.29</td>
	  <td>44.61</td>
	  <td>111.41</td>
	  <td>41.15</td>
	</tr>
	<tr>
	  <th>2015-01-08</th>
	  <td>150.62</td>
	  <td>47.72</td>
	  <td>81.17</td>
	  <td>75.50</td>
	  <td>39.11</td>
	  <td>7.42</td>
	  <td>29.92</td>
	  <td>39.29</td>
	  <td>36.23</td>
	  <td>10.06</td>
	  <td>…</td>
	  <td>9.97</td>
	  <td>26.16</td>
	  <td>26.97</td>
	  <td>23.51</td>
	  <td>63.74</td>
	  <td>22.68</td>
	  <td>32.54</td>
	  <td>45.39</td>
	  <td>112.59</td>
	  <td>41.78</td>
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
	  <th>2021-12-27</th>
	  <td>228.24</td>
	  <td>128.09</td>
	  <td>130.27</td>
	  <td>167.49</td>
	  <td>138.50</td>
	  <td>7.78</td>
	  <td>75.59</td>
	  <td>64.85</td>
	  <td>85.30</td>
	  <td>23.02</td>
	  <td>…</td>
	  <td>48.33</td>
	  <td>28.25</td>
	  <td>37.48</td>
	  <td>23.51</td>
	  <td>59.55</td>
	  <td>76.61</td>
	  <td>116.77</td>
	  <td>135.41</td>
	  <td>126.76</td>
	  <td>244.14</td>
	</tr>
	<tr>
	  <th>2021-12-28</th>
	  <td>229.82</td>
	  <td>128.07</td>
	  <td>130.72</td>
	  <td>169.52</td>
	  <td>137.53</td>
	  <td>7.85</td>
	  <td>75.93</td>
	  <td>65.70</td>
	  <td>86.14</td>
	  <td>23.09</td>
	  <td>…</td>
	  <td>48.61</td>
	  <td>28.01</td>
	  <td>37.67</td>
	  <td>23.21</td>
	  <td>59.35</td>
	  <td>76.57</td>
	  <td>117.98</td>
	  <td>135.38</td>
	  <td>127.16</td>
	  <td>241.90</td>
	</tr>
	<tr>
	  <th>2021-12-29</th>
	  <td>232.62</td>
	  <td>129.00</td>
	  <td>131.69</td>
	  <td>169.00</td>
	  <td>138.24</td>
	  <td>7.94</td>
	  <td>76.23</td>
	  <td>65.78</td>
	  <td>86.62</td>
	  <td>23.13</td>
	  <td>…</td>
	  <td>49.15</td>
	  <td>28.58</td>
	  <td>38.45</td>
	  <td>23.09</td>
	  <td>58.83</td>
	  <td>77.22</td>
	  <td>117.82</td>
	  <td>136.05</td>
	  <td>127.18</td>
	  <td>244.66</td>
	</tr>
	<tr>
	  <th>2021-12-30</th>
	  <td>229.23</td>
	  <td>129.54</td>
	  <td>132.11</td>
	  <td>170.09</td>
	  <td>138.05</td>
	  <td>7.89</td>
	  <td>76.06</td>
	  <td>65.63</td>
	  <td>86.77</td>
	  <td>23.51</td>
	  <td>…</td>
	  <td>48.62</td>
	  <td>28.57</td>
	  <td>38.72</td>
	  <td>23.03</td>
	  <td>58.49</td>
	  <td>76.40</td>
	  <td>117.57</td>
	  <td>135.78</td>
	  <td>127.22</td>
	  <td>242.80</td>
	</tr>
	<tr>
	  <th>2021-12-31</th>
	  <td>231.51</td>
	  <td>129.03</td>
	  <td>131.25</td>
	  <td>172.73</td>
	  <td>137.80</td>
	  <td>7.90</td>
	  <td>76.54</td>
	  <td>66.35</td>
	  <td>86.72</td>
	  <td>23.64</td>
	  <td>…</td>
	  <td>48.98</td>
	  <td>28.10</td>
	  <td>38.92</td>
	  <td>23.60</td>
	  <td>58.87</td>
	  <td>77.43</td>
	  <td>118.38</td>
	  <td>136.24</td>
	  <td>126.00</td>
	  <td>241.68</td>
	</tr>
  </tbody>
</table>
<p>1763 rows × 482 columns</p>
</div>

### 2. Position table

    a. creating z-score tables for each ratio

```python
z_pe = pe.apply(zscore)
z_pe
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
	  <th>AAP</th>
	  <th>ABBV</th>
	  <th>ABC</th>
	  <th>ABG</th>
	  <th>ABT</th>
	  <th>ACCO</th>
	  <th>ACM</th>
	  <th>ADM</th>
	  <th>AEE</th>
	  <th>AES</th>
	  <th>…</th>
	  <th>WWE</th>
	  <th>WWW</th>
	  <th>WY</th>
	  <th>X</th>
	  <th>XOM</th>
	  <th>XPO</th>
	  <th>XYL</th>
	  <th>YUM</th>
	  <th>ZBH</th>
	  <th>ZTS</th>
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
	  <th>2015-01-02</th>
	  <td>-0.194718</td>
	  <td>0.168124</td>
	  <td>1.513807</td>
	  <td>1.061798</td>
	  <td>-0.280048</td>
	  <td>-0.001420</td>
	  <td>-0.211728</td>
	  <td>-1.148039</td>
	  <td>-0.648877</td>
	  <td>-0.217513</td>
	  <td>…</td>
	  <td>-0.705013</td>
	  <td>NaN</td>
	  <td>-0.125490</td>
	  <td>-0.510651</td>
	  <td>-0.034434</td>
	  <td>-1.659233</td>
	  <td>-0.920789</td>
	  <td>-0.434350</td>
	  <td>-0.022901</td>
	  <td>-0.133502</td>
	</tr>
	<tr>
	  <th>2015-01-05</th>
	  <td>-0.221301</td>
	  <td>0.160767</td>
	  <td>1.495474</td>
	  <td>0.986914</td>
	  <td>-0.279824</td>
	  <td>-0.004546</td>
	  <td>-0.212314</td>
	  <td>-1.203629</td>
	  <td>-0.652126</td>
	  <td>-0.219888</td>
	  <td>…</td>
	  <td>-0.700777</td>
	  <td>NaN</td>
	  <td>-0.125490</td>
	  <td>-0.499618</td>
	  <td>-0.043352</td>
	  <td>-1.624629</td>
	  <td>-0.953699</td>
	  <td>-0.447941</td>
	  <td>-0.007009</td>
	  <td>-0.136855</td>
	</tr>
	<tr>
	  <th>2015-01-06</th>
	  <td>-0.222700</td>
	  <td>0.158868</td>
	  <td>1.507140</td>
	  <td>0.939977</td>
	  <td>-0.291253</td>
	  <td>-0.008591</td>
	  <td>-0.212442</td>
	  <td>-1.234203</td>
	  <td>-0.655870</td>
	  <td>-0.221715</td>
	  <td>…</td>
	  <td>-0.701354</td>
	  <td>NaN</td>
	  <td>-0.125524</td>
	  <td>-0.492767</td>
	  <td>-0.045037</td>
	  <td>-1.586454</td>
	  <td>-0.956615</td>
	  <td>-0.455984</td>
	  <td>-0.010755</td>
	  <td>-0.142271</td>
	</tr>
	<tr>
	  <th>2015-01-07</th>
	  <td>-0.179963</td>
	  <td>0.174295</td>
	  <td>1.549996</td>
	  <td>1.023102</td>
	  <td>-0.283185</td>
	  <td>-0.009878</td>
	  <td>-0.212182</td>
	  <td>-1.211349</td>
	  <td>-0.653398</td>
	  <td>-0.221594</td>
	  <td>…</td>
	  <td>-0.691919</td>
	  <td>NaN</td>
	  <td>-0.125430</td>
	  <td>-0.493301</td>
	  <td>-0.041842</td>
	  <td>-1.590849</td>
	  <td>-0.952727</td>
	  <td>-0.434535</td>
	  <td>0.000143</td>
	  <td>-0.130923</td>
	</tr>
	<tr>
	  <th>2015-01-08</th>
	  <td>-0.162156</td>
	  <td>0.178448</td>
	  <td>1.554996</td>
	  <td>1.040659</td>
	  <td>-0.262568</td>
	  <td>-0.003259</td>
	  <td>-0.211781</td>
	  <td>-1.233894</td>
	  <td>-0.652268</td>
	  <td>-0.220375</td>
	  <td>…</td>
	  <td>-0.689416</td>
	  <td>NaN</td>
	  <td>-0.125097</td>
	  <td>-0.498106</td>
	  <td>-0.036540</td>
	  <td>-1.596616</td>
	  <td>-0.948978</td>
	  <td>-0.422886</td>
	  <td>0.004910</td>
	  <td>-0.122284</td>
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
	  <th>2021-12-27</th>
	  <td>-0.287984</td>
	  <td>-0.035234</td>
	  <td>-0.148808</td>
	  <td>-0.804912</td>
	  <td>-0.170741</td>
	  <td>0.068342</td>
	  <td>-0.191932</td>
	  <td>0.322446</td>
	  <td>-0.423376</td>
	  <td>-0.043574</td>
	  <td>…</td>
	  <td>-0.312230</td>
	  <td>NaN</td>
	  <td>-0.010370</td>
	  <td>-0.228430</td>
	  <td>0.003805</td>
	  <td>-2.213287</td>
	  <td>0.204388</td>
	  <td>-0.070932</td>
	  <td>0.298968</td>
	  <td>0.254975</td>
	</tr>
	<tr>
	  <th>2021-12-28</th>
	  <td>-0.274726</td>
	  <td>-0.035262</td>
	  <td>-0.147095</td>
	  <td>-0.794493</td>
	  <td>-0.178548</td>
	  <td>0.070334</td>
	  <td>-0.191784</td>
	  <td>0.362498</td>
	  <td>-0.417908</td>
	  <td>-0.042813</td>
	  <td>…</td>
	  <td>-0.311303</td>
	  <td>NaN</td>
	  <td>-0.009633</td>
	  <td>-0.229007</td>
	  <td>0.002629</td>
	  <td>-2.212416</td>
	  <td>0.221586</td>
	  <td>-0.071157</td>
	  <td>0.301309</td>
	  <td>0.246293</td>
	</tr>
	<tr>
	  <th>2021-12-29</th>
	  <td>-0.251140</td>
	  <td>-0.033908</td>
	  <td>-0.143446</td>
	  <td>-0.797162</td>
	  <td>-0.172870</td>
	  <td>0.073180</td>
	  <td>-0.191654</td>
	  <td>0.366224</td>
	  <td>-0.414827</td>
	  <td>-0.042378</td>
	  <td>…</td>
	  <td>-0.309516</td>
	  <td>NaN</td>
	  <td>-0.006615</td>
	  <td>-0.229238</td>
	  <td>-0.000549</td>
	  <td>-2.226584</td>
	  <td>0.219349</td>
	  <td>-0.066070</td>
	  <td>0.301426</td>
	  <td>0.256972</td>
	</tr>
	<tr>
	  <th>2021-12-30</th>
	  <td>-0.279688</td>
	  <td>-0.033113</td>
	  <td>-0.141845</td>
	  <td>-0.791568</td>
	  <td>-0.174369</td>
	  <td>0.071757</td>
	  <td>-0.191727</td>
	  <td>0.359238</td>
	  <td>-0.413885</td>
	  <td>-0.038137</td>
	  <td>…</td>
	  <td>-0.311270</td>
	  <td>NaN</td>
	  <td>-0.005547</td>
	  <td>-0.229354</td>
	  <td>-0.002667</td>
	  <td>-2.208710</td>
	  <td>0.215713</td>
	  <td>-0.068090</td>
	  <td>0.301660</td>
	  <td>0.249789</td>
	</tr>
	<tr>
	  <th>2021-12-31</th>
	  <td>-0.260493</td>
	  <td>-0.033852</td>
	  <td>-0.145122</td>
	  <td>-0.778019</td>
	  <td>-0.176419</td>
	  <td>0.072042</td>
	  <td>-0.191515</td>
	  <td>0.393236</td>
	  <td>-0.414199</td>
	  <td>-0.036724</td>
	  <td>…</td>
	  <td>-0.310079</td>
	  <td>NaN</td>
	  <td>-0.004774</td>
	  <td>-0.228237</td>
	  <td>-0.000314</td>
	  <td>-2.231161</td>
	  <td>0.227179</td>
	  <td>-0.064574</td>
	  <td>0.294463</td>
	  <td>0.245448</td>
	</tr>
  </tbody>
</table>
<p>1763 rows × 482 columns</p>
</div>


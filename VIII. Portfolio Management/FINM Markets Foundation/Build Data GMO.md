---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Load Data from Quandl
linter-yaml-title-alias: Load Data from Quandl
---

```python
import numpy as np
import pandas as pd

import quandl
import yfinance as yf
```

```python
info = pd.DataFrame(columns=['Unit', 'Type', 'Description'])
info.loc['DP'] = ['Ratio', 'Index', 'Dividend-Price Ratio of the S&P500']
info.loc['EP'] = ['Ratio', 'Index', 'Earnings-Price Ratio of the S&P500']
info.loc['US10Y'] = ['Yield', 'Index', '10-Year Tnotes']
info.loc['SPY'] = ['Total Return', 'ETF', 'S&P 500']
info.loc['GMWAX'] = ['Total Return', 'Mutual Fund', 'GMO']
info.loc['RF'] = ['Total Return', 'Index', '3-Month Tbills']
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
	  <th>Unit</th>
	  <th>Type</th>
	  <th>Description</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>Ratio</td>
	  <td>Index</td>
	  <td>Dividend-Price Ratio of the S&amp;P500</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>Ratio</td>
	  <td>Index</td>
	  <td>Earnings-Price Ratio of the S&amp;P500</td>
	</tr>
	<tr>
	  <th>US10Y</th>
	  <td>Yield</td>
	  <td>Index</td>
	  <td>10-Year Tnotes</td>
	</tr>
	<tr>
	  <th>SPY</th>
	  <td>Total Return</td>
	  <td>ETF</td>
	  <td>S&amp;P 500</td>
	</tr>
	<tr>
	  <th>GMWAX</th>
	  <td>Total Return</td>
	  <td>Mutual Fund</td>
	  <td>GMO</td>
	</tr>
	<tr>
	  <th>RF</th>
	  <td>Total Return</td>
	  <td>Index</td>
	  <td>3-Month Tbills</td>
	</tr>
  </tbody>
</table>
</div>

# Load Data from Quandl

```python
file_key = open("../../../keys/quandl_key.txt","r")
API_KEY = file_key.read()
file_key.close()

quandl.ApiConfig.api_key = API_KEY
```

```python
start_date = '1991-10-01'
end_date = '2022-10-31'

sigs_ticks = ["MULTPL/SP500_DIV_YIELD_MONTH","MULTPL/SP500_EARNINGS_YIELD_MONTH","YC/USA10Y"]
sigs_names = ['DP','EP', 'US10Y']
sigs_info = pd.DataFrame({'Name':sigs_names,'Ticker':sigs_ticks}).set_index('Name')

signals = pd.DataFrame()
for idx,tick in enumerate(sigs_info['Ticker']):
    temp = quandl.get(tick, start_date=start_date, end_date=end_date)
    temp.columns = [sigs_info.index[idx]]
    signals = signals.join(temp,rsuffix='_',how='outer')

# some monthly data reported at start of month--assume we do not have it until end of month
signals = signals.resample('M').last()
signals.columns.name = 'SP500 Multiples'
signals
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
	  <th>SP500 Multiples</th>
	  <th>DP</th>
	  <th>EP</th>
	  <th>US10Y</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1991-10-31</th>
	  <td>3.17</td>
	  <td>4.45</td>
	  <td>7.47</td>
	</tr>
	<tr>
	  <th>1991-11-30</th>
	  <td>3.17</td>
	  <td>4.30</td>
	  <td>7.38</td>
	</tr>
	<tr>
	  <th>1991-12-31</th>
	  <td>3.14</td>
	  <td>4.11</td>
	  <td>6.71</td>
	</tr>
	<tr>
	  <th>1992-01-31</th>
	  <td>2.94</td>
	  <td>3.86</td>
	  <td>7.31</td>
	</tr>
	<tr>
	  <th>1992-02-29</th>
	  <td>2.98</td>
	  <td>3.91</td>
	  <td>7.27</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>1.64</td>
	  <td>5.23</td>
	  <td>2.98</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>1.65</td>
	  <td>4.91</td>
	  <td>2.67</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>1.56</td>
	  <td>5.00</td>
	  <td>3.15</td>
	</tr>
	<tr>
	  <th>2022-09-30</th>
	  <td>1.70</td>
	  <td>5.52</td>
	  <td>3.83</td>
	</tr>
	<tr>
	  <th>2022-10-31</th>
	  <td>1.75</td>
	  <td>4.97</td>
	  <td>4.10</td>
	</tr>
  </tbody>
</table>
<p>373 rows × 3 columns</p>
</div>

```python
spy_tick = 'EOD/SPY'
data = quandl.get(spy_tick, start_date=start_date, end_date=end_date)[['Adj_Close']]
spy = data.resample('M').last().pct_change()
spy.rename(columns={'Adj_Close':'SPY'},inplace=True)

rf_tick = 'YC/USA3M'
data = quandl.get(rf_tick, start_date=start_date, end_date=end_date)
rf = data.resample('M').last()/(12*100)
rf.rename(columns={'Rate':'US3M'},inplace=True)

gmo_tick = 'GMWAX'
data = yf.download(gmo_tick, start=start_date, end=end_date)['Adj Close']
gmo = data.resample('M').last().pct_change()
gmo.name = gmo_tick
gmo.dropna(inplace=True)
```

    [*********************100%***********************]  1 of 1 completed

```python
tdata = quandl.get_table('QUOTEMEDIA/PRICES', ticker='SPY').set_index('date')[['adj_close']].sort_index()
spy = tdata.resample('M').last().pct_change()
spy.rename(columns={'adj_close':'SPY'},inplace=True)
spy
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
	  <th>1993-01-31</th>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>1993-02-28</th>
	  <td>0.010667</td>
	</tr>
	<tr>
	  <th>1993-03-31</th>
	  <td>0.022408</td>
	</tr>
	<tr>
	  <th>1993-04-30</th>
	  <td>-0.025589</td>
	</tr>
	<tr>
	  <th>1993-05-31</th>
	  <td>0.026970</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.092087</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>-0.040802</td>
	</tr>
	<tr>
	  <th>2022-09-30</th>
	  <td>-0.092417</td>
	</tr>
	<tr>
	  <th>2022-10-31</th>
	  <td>0.081276</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>-0.016209</td>
	</tr>
  </tbody>
</table>
<p>359 rows × 1 columns</p>
</div>

```python
rets = spy.join(gmo,how='outer')
rets.dropna(axis=0,inplace=True,how='all')
rets

signals, rets = signals.align(rets,join='inner',axis=0)
rf, _ = rf.align(rets,join='inner',axis=0)
```

# Save Data to Excel

```python
with pd.ExcelWriter('gmo_analysis_data.xlsx') as writer:  
    info.to_excel(writer, sheet_name = 'descriptions')
    signals.to_excel(writer, sheet_name= 'signals')
    rets.to_excel(writer, sheet_name='returns (total)')
    rf.to_excel(writer, sheet_name='risk-free rate')
```

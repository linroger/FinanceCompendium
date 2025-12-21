---
title: "Build Futures BB"
parent_directory: VIII. Portfolio Management/FINM Markets Foundation
formatted: 2025-12-21 12:22:00 AM
formatter_model: claude-sonnet-4-5-20251001
cli_tool: claude-code
primary_tags:
  - futures contracts
  - bloomberg data
  - commodities trading
secondary_tags:
  - futures curves
  - continuous futures
  - roll adjustments
  - futures time series
cssclasses: academia
---

# Build Futures BB

```d2
direction: right

data_sources: Bloomberg API {
  shape: cylinder
}

futures_contracts: Futures Contracts {
  shape: rectangle
  label: Contract specifications
}

time_series: Time Series Data {
  shape: rectangle
  label: Historical prices & volume
}

continuous_adjustments: Continuous Adjustments {
  shape: rectangle
  label: Roll adjustments
}

futures_curves: Futures Curves {
  shape: rectangle
  label: Term structure analysis
}

data_export: Data Export {
  shape: rectangle
  label: Excel workbook
}

data_sources -> futures_contracts: Retrieve contract specs
data_sources -> time_series: Download historical data
time_series -> continuous_adjustments: Apply roll conventions
continuous_adjustments -> futures_curves: Build term structures
futures_contracts -> data_export: Export all data
time_series -> data_export
continuous_adjustments -> data_export
futures_curves -> data_export
```

```python
import pandas as pd
import numpy as np
from xbbg import blp

import string

import sys
sys.path.insert(0, '../cmds')
from utils import *
from portfolio import *

import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13
```

# Futures Contracts

```python
TYPE = 'Comdty'
CODES = ['CL','NG','GC','LA','KC','C ','LC','LH']
bbcodes = [f'{code}A {TYPE}' for code in CODES]

CODES_INDEX = ['ES','NK']
bbcodes += [f'{code}A Index' for code in CODES_INDEX]

CODES_CURNCY = ['BP','BTC']
bbcodes += [f'{code}A Curncy' for code in CODES_CURNCY]

FLDS = ['ID_EXCH_SYMBOL','NAME','SECURITY_TYP','FUTURES_CATEGORY','DERIVATIVE_DELIVERY_TYPE','FUT_EXCH_NAME_LONG','FUT_CONTRACT_DT',
        'FUT_CONT_SIZE', 'LAST_PRICE','CONTRACT_VALUE', 'CRNCY', 'FUT_SEC_SPEC_ML',
        'FUT_TICK_SIZE','FUT_TICK_VAL',        
        'OPEN_INT','VOLUME','VOLUME_AVG_10D']

futures_info = blp.bdp(bbcodes,FLDS)
futures_info.rename(columns={'fut_tick_size':'tick size', 
                             'fut_tick_val':'tick value', 
                             'fut_cont_size':'contract size', 
                             'contract_value':'contract value', 
                             'fut_contract_dt':'contract date',                              
                             'fut_sec_spec_ml':'margin limit', 
                             'open_int':'open interest', 
                             'volume_avg_10d':'volume 10d avg', 
                             'derivative_delivery_type':'delivery type', 
                             'security_typ':'type',
                             'futures_category':'category',
                             'id_exch_symbol':'symbol',
                             'fut_exch_name_long':'exchange'}, inplace=True)
```

```python
futures_info.index.name = 'bb ticker'
futures_info = futures_info.loc[bbcodes,:]
futures_info = futures_info.reset_index().set_index('symbol')

futures_info[['contract date']] = futures_info[['contract date']].astype('datetime64[ns]')
futures_info[['contract size','open interest','volume']] = futures_info[['contract size','open interest','volume']].astype(float)
futures_info
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
	  <th>bb ticker</th>
	  <th>name</th>
	  <th>type</th>
	  <th>category</th>
	  <th>delivery type</th>
	  <th>exchange</th>
	  <th>contract date</th>
	  <th>contract size</th>
	  <th>contract value</th>
	  <th>crncy</th>
	  <th>margin limit</th>
	  <th>tick size</th>
	  <th>tick value</th>
	  <th>open interest</th>
	  <th>volume</th>
	  <th>volume 10d avg</th>
	</tr>
	<tr>
	  <th>symbol</th>
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
	  <th>CL</th>
	  <td>CLA Comdty</td>
	  <td>WTI CRUDE FUTURE  Aug22</td>
	  <td>Physical commodity future.</td>
	  <td>Crude Oil</td>
	  <td>PHYS</td>
	  <td>New York Mercantile Exchange</td>
	  <td>2022-08-01</td>
	  <td>1000.0</td>
	  <td>103210.0</td>
	  <td>USD</td>
	  <td>8350.0</td>
	  <td>0.01</td>
	  <td>10.0</td>
	  <td>176736.0</td>
	  <td>30884.0</td>
	  <td>366608.5</td>
	</tr>
	<tr>
	  <th>NG</th>
	  <td>NGA Comdty</td>
	  <td>NATURAL GAS FUTR  Aug22</td>
	  <td>Physical commodity future.</td>
	  <td>Natural Gas</td>
	  <td>PHYS</td>
	  <td>New York Mercantile Exchange</td>
	  <td>2022-08-01</td>
	  <td>10000.0</td>
	  <td>61910.0</td>
	  <td>USD</td>
	  <td>7700.0</td>
	  <td>0.001</td>
	  <td>10.0</td>
	  <td>85417.0</td>
	  <td>2598.0</td>
	  <td>107210.4</td>
	</tr>
	<tr>
	  <th>GC</th>
	  <td>GCA Comdty</td>
	  <td>GOLD 100 OZ FUTR  Aug22</td>
	  <td>Physical commodity future.</td>
	  <td>Precious Metal</td>
	  <td>PHYS</td>
	  <td>Commodity Exchange, Inc.</td>
	  <td>2022-08-01</td>
	  <td>100.0</td>
	  <td>174000.0</td>
	  <td>USD</td>
	  <td>7200.0</td>
	  <td>0.1</td>
	  <td>10.0</td>
	  <td>360981.0</td>
	  <td>17235.0</td>
	  <td>189638.9</td>
	</tr>
	<tr>
	  <th>AH</th>
	  <td>LAA Comdty</td>
	  <td>LME PRI ALUM FUTR Jul22</td>
	  <td>Physical commodity future.</td>
	  <td>Base Metal</td>
	  <td>PHYS</td>
	  <td>London Metal Exchange</td>
	  <td>2022-07-01</td>
	  <td>25.0</td>
	  <td>60887.5</td>
	  <td>USD</td>
	  <td>NaN</td>
	  <td>0.01</td>
	  <td>0.25</td>
	  <td>37554.0</td>
	  <td>442.0</td>
	  <td>12501.5</td>
	</tr>
	<tr>
	  <th>KC</th>
	  <td>KCA Comdty</td>
	  <td>COFFEE 'C' FUTURE Sep22</td>
	  <td>Physical commodity future.</td>
	  <td>Foodstuff</td>
	  <td>PHYS</td>
	  <td>ICE Futures US Softs</td>
	  <td>2022-09-01</td>
	  <td>37500.0</td>
	  <td>82087.5</td>
	  <td>USD</td>
	  <td>9000.0</td>
	  <td>0.05</td>
	  <td>18.75</td>
	  <td>101075.0</td>
	  <td>15350.0</td>
	  <td>17316.5</td>
	</tr>
	<tr>
	  <th>ZC</th>
	  <td>C A Comdty</td>
	  <td>CORN FUTURE       Dec22</td>
	  <td>Physical commodity future.</td>
	  <td>Corn</td>
	  <td>PHYS</td>
	  <td>Chicago Board of Trade</td>
	  <td>2022-12-01</td>
	  <td>5000.0</td>
	  <td>30100.0</td>
	  <td>USD</td>
	  <td>2300.0</td>
	  <td>0.25</td>
	  <td>12.5</td>
	  <td>568770.0</td>
	  <td>10530.0</td>
	  <td>161184.2</td>
	</tr>
	<tr>
	  <th>LE</th>
	  <td>LCA Comdty</td>
	  <td>LIVE CATTLE FUTR  Aug22</td>
	  <td>Physical commodity future.</td>
	  <td>Livestock</td>
	  <td>PHYS</td>
	  <td>Chicago Mercantile Exchange</td>
	  <td>2022-08-01</td>
	  <td>40000.0</td>
	  <td>53820.0</td>
	  <td>USD</td>
	  <td>1600.0</td>
	  <td>0.025</td>
	  <td>10.0</td>
	  <td>99455.0</td>
	  <td>23969.0</td>
	  <td>26257.6</td>
	</tr>
	<tr>
	  <th>HE</th>
	  <td>LHA Comdty</td>
	  <td>LEAN HOGS FUTURE  Aug22</td>
	  <td>Physical commodity future.</td>
	  <td>Livestock</td>
	  <td>CASH</td>
	  <td>Chicago Mercantile Exchange</td>
	  <td>2022-08-01</td>
	  <td>40000.0</td>
	  <td>43800.0</td>
	  <td>USD</td>
	  <td>1900.0</td>
	  <td>0.025</td>
	  <td>10.0</td>
	  <td>55247.0</td>
	  <td>25067.0</td>
	  <td>20161.5</td>
	</tr>
	<tr>
	  <th>ES</th>
	  <td>ESA Index</td>
	  <td>S&amp;P500 EMINI FUT  Sep22</td>
	  <td>Physical index future.</td>
	  <td>Equity Index</td>
	  <td>CASH</td>
	  <td>Chicago Mercantile Exchange</td>
	  <td>2022-09-01</td>
	  <td>50.0</td>
	  <td>194450.0</td>
	  <td>USD</td>
	  <td>10500.0</td>
	  <td>0.25</td>
	  <td>12.5</td>
	  <td>2279397.0</td>
	  <td>58054.0</td>
	  <td>1735525.7</td>
	</tr>
	<tr>
	  <th>225</th>
	  <td>NKA Index</td>
	  <td>NIKKEI 225  (OSE) Sep22</td>
	  <td>Physical index future.</td>
	  <td>Equity Index</td>
	  <td>CASH</td>
	  <td>Osaka Exchange</td>
	  <td>2022-09-01</td>
	  <td>1000.0</td>
	  <td>26580000.0</td>
	  <td>JPY</td>
	  <td>NaN</td>
	  <td>10.0</td>
	  <td>10000.0</td>
	  <td>225693.0</td>
	  <td>91309.0</td>
	  <td>74264.9</td>
	</tr>
	<tr>
	  <th>6B</th>
	  <td>BPA Curncy</td>
	  <td>BP CURRENCY FUT   Sep22</td>
	  <td>Currency future.</td>
	  <td>Currency</td>
	  <td>PHYS</td>
	  <td>Chicago Mercantile Exchange</td>
	  <td>2022-09-01</td>
	  <td>62500.0</td>
	  <td>75125.0</td>
	  <td>USD</td>
	  <td>2050.0</td>
	  <td>0.01</td>
	  <td>6.25</td>
	  <td>239363.0</td>
	  <td>12090.0</td>
	  <td>105927.0</td>
	</tr>
	<tr>
	  <th>BTC</th>
	  <td>BTCA Curncy</td>
	  <td>CME Bitcoin Fut   Jul22</td>
	  <td>Currency future.</td>
	  <td>Non-Equity Index</td>
	  <td>CASH</td>
	  <td>Chicago Mercantile Exchange</td>
	  <td>2022-07-01</td>
	  <td>5.0</td>
	  <td>109825.0</td>
	  <td>USD</td>
	  <td>31690.0</td>
	  <td>5.0</td>
	  <td>25.0</td>
	  <td>9802.0</td>
	  <td>1904.0</td>
	  <td>8359.7</td>
	</tr>
  </tbody>
</table>
</div>

# Futures Time-Series

```python
TICKS = ['CL','GC']
MONTHS = ['G','J','M','Q']
YR = '2'

FLDS = ['LAST_PRICE','OPEN_INT','VOLUME']
bbcalls = list()
for tick in TICKS:
    bbcalls += [f'{tick}{month}{YR} Comdty' for month in MONTHS]
    
futures_ts = blp.bdh(bbcalls, FLDS, start_date='2018-01-01',end_date='2022-06-30')
```

```python
futures_ts.index = pd.to_datetime(futures_ts.index)
futures_ts.index.name = 'date'
```

```python
futures_ts.swaplevel(axis=1)['LAST_PRICE'].iloc[:,0:4].plot(xlim=('2022-01','2022-06'),ylim=(75,120))
```

    <AxesSubplot:xlabel='date'>




    

![png](output_8_1.png)

```python
futures_ts.swaplevel(axis=1)['OPEN_INT'].iloc[:,0:4].plot(xlim=('2021-06','2022-07'))
```

    <AxesSubplot:xlabel='date'>




    

![png](output_9_1.png)

```python
fig, ax = plt.subplots(2,1,figsize=(12,12))
futures_ts.swaplevel(axis=1)['OPEN_INT'].iloc[:,0:4].plot(ax=ax[0],xlim=('2021-06','2022-07'),title=f'Open Interest for {TICKS[0]}',ylabel='open interest')
futures_ts.swaplevel(axis=1)['VOLUME'].iloc[:,0:4].plot(ax=ax[1],xlim=('2021-06','2022-07'),title=f'Volume for {TICKS[0]}',ylabel='volume')
plt.tight_layout()
plt.show()
```

![png](output_10_0.png)

```python
fig, ax = plt.subplots(2,1,figsize=(12,12))
futures_ts.swaplevel(axis=1)['OPEN_INT'].iloc[:,4:].plot(ax=ax[0],xlim=('2021-06','2022-07'),title=f'Open Interest for {TICKS[1]}',ylabel='open interest')
futures_ts.swaplevel(axis=1)['VOLUME'].iloc[:,4:].plot(ax=ax[1],xlim=('2021-06','2022-07'),title=f'Volume for {TICKS[1]}',ylabel='volume')
plt.tight_layout()
plt.show()
```

![png](output_11_0.png)

# Continuous Futures Adjustments

```python
TICK = 'CL'
TYPE = 'Comdty'

ROLLS = ['B:00_0_R', 'B:00_0_D', 'B:00_0_W']
ROLLLABS = ['Ratio','Difference','Weighted Avg']

STARTDATE = '2010-01-01'
ENDDATE = '2022-06-30'
FLDS = 'last_price'
```

```python
bbticks_comp = [f'{TICK}1 {TYPE}', f'{TICK}2 {TYPE}']

for roll in ROLLS:
    bbticks_comp.append(f'{TICK}1 {roll} {TYPE}')
    
data_comp = blp.bdh(tickers=bbticks_comp, flds=FLDS, start_date=STARTDATE,
                     end_date=ENDDATE)
```

```python
data_comp = data_comp.droplevel(level=1,axis=1)

data_comp.index = pd.to_datetime(data_comp.index)
data_comp.index.name = 'date'
data_comp.columns = [f'{TICK}1 {TYPE}', f'{TICK}2 {TYPE}'] + [f'{TICK}1 {rolllab}' for rolllab in ROLLLABS]

data_comp.plot();
```

![png](output_15_0.png)

```python
px = data_comp.copy()
px[px<0] = np.nan
px[px==np.inf] = np.nan
rx = px.pct_change()
performanceMetrics(rx,annualization=252)
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
	  <th>CL1 Comdty</th>
	  <td>0.121340</td>
	  <td>0.442393</td>
	  <td>0.274280</td>
	  <td>-0.452107</td>
	  <td>0.376623</td>
	</tr>
	<tr>
	  <th>CL2 Comdty</th>
	  <td>0.119013</td>
	  <td>0.458751</td>
	  <td>0.259429</td>
	  <td>-0.433676</td>
	  <td>0.788245</td>
	</tr>
	<tr>
	  <th>CL1 Ratio</th>
	  <td>0.049540</td>
	  <td>0.431632</td>
	  <td>0.114774</td>
	  <td>-0.452090</td>
	  <td>0.250893</td>
	</tr>
	<tr>
	  <th>CL1 Difference</th>
	  <td>0.194452</td>
	  <td>0.616400</td>
	  <td>0.315464</td>
	  <td>-0.732270</td>
	  <td>0.731788</td>
	</tr>
	<tr>
	  <th>CL1 Weighted Avg</th>
	  <td>0.109426</td>
	  <td>0.418831</td>
	  <td>0.261265</td>
	  <td>-0.307113</td>
	  <td>0.243738</td>
	</tr>
  </tbody>
</table>
</div>

# Continuous Futures Data

```python
STARTDATE = '2000-01-01'
ENDDATE = '2022-06-30'

ADJ = 'B:00_0_R'
ADJLAB = 'roll=ratio'

bbcodes_adj = [f'{code}1 {ADJ} {TYPE}' for code in CODES]
bbcodes_adj += [f'{code}1 {ADJ} Index' for code in CODES_INDEX]
bbcodes_adj += [f'{code}1 Curncy' for code in CODES_CURNCY]

futures_hist = blp.bdh(bbcodes_adj,'PX_LAST',start_date=STARTDATE,end_date=ENDDATE)
```

```python
prices = futures_hist.droplevel(level=1,axis=1)
prices.columns = [col.split()[0] for col in prices.columns]
prices.index.name = 'date'
```

```python
display(prices)
prices.plot(xlim=('2022-01-01','2022-06-30'));
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
	  <th>CL1</th>
	  <th>NG1</th>
	  <th>GC1</th>
	  <th>LA1</th>
	  <th>KC1</th>
	  <th>C</th>
	  <th>LC1</th>
	  <th>LH1</th>
	  <th>ES1</th>
	  <th>NK1</th>
	  <th>BP1</th>
	  <th>BTC1</th>
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2000-01-03</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>4163.75</td>
	  <td>1251.52</td>
	  <td>1465.500</td>
	  <td>127.654</td>
	  <td>371.082</td>
	  <td>1507.14</td>
	  <td>NaN</td>
	  <td>163.94</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2000-01-04</th>
	  <td>51.91</td>
	  <td>374.328</td>
	  <td>465.76</td>
	  <td>4115.76</td>
	  <td>1248.83</td>
	  <td>1481.875</td>
	  <td>126.509</td>
	  <td>368.762</td>
	  <td>1450.63</td>
	  <td>14228.0</td>
	  <td>163.72</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2000-01-05</th>
	  <td>50.61</td>
	  <td>372.951</td>
	  <td>463.14</td>
	  <td>4165.01</td>
	  <td>1274.08</td>
	  <td>1481.875</td>
	  <td>126.326</td>
	  <td>365.115</td>
	  <td>1452.43</td>
	  <td>13771.0</td>
	  <td>164.20</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2000-01-06</th>
	  <td>50.35</td>
	  <td>377.768</td>
	  <td>463.63</td>
	  <td>4172.59</td>
	  <td>1255.28</td>
	  <td>1487.375</td>
	  <td>128.341</td>
	  <td>365.778</td>
	  <td>1442.66</td>
	  <td>13411.0</td>
	  <td>164.76</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2000-01-07</th>
	  <td>49.21</td>
	  <td>373.812</td>
	  <td>464.45</td>
	  <td>4202.90</td>
	  <td>1226.27</td>
	  <td>1511.125</td>
	  <td>129.806</td>
	  <td>368.762</td>
	  <td>1499.95</td>
	  <td>13613.0</td>
	  <td>163.86</td>
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
	</tr>
	<tr>
	  <th>2022-06-24</th>
	  <td>107.62</td>
	  <td>6.238</td>
	  <td>1830.30</td>
	  <td>2445.26</td>
	  <td>226.60</td>
	  <td>750.250</td>
	  <td>133.375</td>
	  <td>110.925</td>
	  <td>3916.25</td>
	  <td>26480.0</td>
	  <td>122.89</td>
	  <td>21207.0</td>
	</tr>
	<tr>
	  <th>2022-06-27</th>
	  <td>109.57</td>
	  <td>6.520</td>
	  <td>1824.80</td>
	  <td>2479.75</td>
	  <td>226.00</td>
	  <td>744.250</td>
	  <td>133.475</td>
	  <td>110.175</td>
	  <td>3903.75</td>
	  <td>26770.0</td>
	  <td>122.96</td>
	  <td>20800.0</td>
	</tr>
	<tr>
	  <th>2022-06-28</th>
	  <td>111.76</td>
	  <td>6.570</td>
	  <td>1821.20</td>
	  <td>2475.75</td>
	  <td>221.90</td>
	  <td>759.500</td>
	  <td>132.725</td>
	  <td>109.925</td>
	  <td>3825.50</td>
	  <td>27070.0</td>
	  <td>122.01</td>
	  <td>20175.0</td>
	</tr>
	<tr>
	  <th>2022-06-29</th>
	  <td>109.78</td>
	  <td>6.498</td>
	  <td>1817.50</td>
	  <td>2457.50</td>
	  <td>232.65</td>
	  <td>770.250</td>
	  <td>132.175</td>
	  <td>109.400</td>
	  <td>3821.25</td>
	  <td>26680.0</td>
	  <td>121.36</td>
	  <td>20185.0</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>105.76</td>
	  <td>5.424</td>
	  <td>1807.30</td>
	  <td>2432.50</td>
	  <td>233.60</td>
	  <td>743.750</td>
	  <td>132.575</td>
	  <td>109.125</td>
	  <td>3789.50</td>
	  <td>26380.0</td>
	  <td>121.99</td>
	  <td>18760.0</td>
	</tr>
  </tbody>
</table>
<p>5850 rows × 12 columns</p>
</div>

![png](output_20_1.png)

# Futures Curves

```python
bbtick_chain = ['CL1 Comdty','GC1 Comdty']
chain = blp.bds(bbtick_chain,'FUT_CHAIN')

pd_chain = chain.reset_index().set_index('security_description')
list_curves = pd_chain['index'].unique()

FLDS_CURVE = ['FUT_DLV_DT_FIRST','PX_LAST','OPEN_INT']

YRS = 3
SPARSE = 2


curves = dict()

for curve in list_curves:
    if curve == 'CL1 Comdty':
        bb_lookup = pd_chain[pd_chain['index']==curve].iloc[0:YRS*12:SPARSE].index
    elif curve == 'GC1 Comdty':
        bb_lookup = pd_chain[pd_chain['index']==curve].iloc[0:20:SPARSE].index

    curves[curve] = blp.bdp(bb_lookup,FLDS_CURVE).sort_values('fut_dlv_dt_first')
    curves[curve].rename(columns={'fut_dlv_dt_first':'delivery date','open_int':'open interest','px_last':'price'},inplace=True)
    curves[curve][['price','open interest']] = curves[curve][['price','open interest']].astype(float)
    curves[curve].index.name = 'ticker'    
```

```python
for comdty in list_curves:
    
    temp = curves[comdty].set_index('delivery date').sort_index()
    msize = (temp['open interest']/temp['open interest'].max()) * 500
    
    fig, ax=plt.subplots()
    temp['price'].plot(ax=ax,marker=None,title=comdty)
    temp.reset_index().plot.scatter('delivery date','price',s=msize,ax=ax,title=comdty)
    plt.show()
```

![png](output_23_0.png)

![png](output_23_1.png)

# Export Data

```python
OUTFILE = f'../data/futures_data.xlsx'

with pd.ExcelWriter(OUTFILE) as writer:  

    futures_info.to_excel(writer, sheet_name= f'futures contracts', index=True)

    futures_ts.to_excel(writer, sheet_name= f'futures timeseries', index=True)    
    
    data_comp.to_excel(writer, sheet_name= f'roll conventions {TICK}', index=True)        
    
    prices.to_excel(writer, sheet_name= f'continuous futures {ADJLAB}', index=True)    
    
    for comdty in list_curves:
        temp = curves[comdty].sort_values('delivery date')
        temp.to_excel(writer, sheet_name= f'curve {comdty.split()[0]}', index=True)        
```

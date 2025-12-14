---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Save to Excel
linter-yaml-title-alias: Save to Excel
---

```python
import pandas as pd
import numpy as np
from datetime import date

import pandas_datareader.data as web
import pandas_datareader as pdr
```

```python
START_DATE = '1999-01-01'
END_DATE = '2022-11-30'
TICKS_FX = ['DEXUSUK','DEXUSEU','DEXSZUS','DEXJPUS']
TICKS_RF = ['SOFR','IUDSOIA']
LABS_RF = ['SOFR','SONIA']
TICKS_CRYPTO = ['CBBTCUSD','CBETHUSD','CBLTCUSD','CBBCHUSD']
LABS = ['BTC','ETH','LTC','BCH']

INDIRECT = False

fxraw = pdr.DataReader(TICKS_FX,data_source='fred', start=START_DATE,end=END_DATE)

map_labels = {TICKS_RF[i]:LABS_RF[i] for i in range(len(TICKS_RF))}
rf = pdr.DataReader(TICKS_RF,data_source='fred', start=START_DATE,end=END_DATE).rename(columns=map_labels).dropna()/100

map_labels = {TICKS_CRYPTO[i]:LABS[i] for i in range(len(TICKS_CRYPTO))}
crypto = pdr.DataReader(TICKS_CRYPTO,data_source='fred', start=START_DATE,end=END_DATE).rename(columns=map_labels)
```

```python
info = pd.DataFrame(columns=['Ticker Description'])

info.loc['USUK'] = 'Spot FX, US per UK (GBP)'
info.loc['USEU'] = 'Spot FX, US per EU (EUR)'
info.loc['USSZ'] = 'Spot FX, US per SZ (CHF)'
info.loc['USJPY'] = 'Spot FX, US per JP (JPY)'
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
	  <th>Ticker Description</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>USUK</th>
	  <td>Spot FX, US per UK (GBP)</td>
	</tr>
	<tr>
	  <th>USEU</th>
	  <td>Spot FX, US per EU (EUR)</td>
	</tr>
	<tr>
	  <th>USSZ</th>
	  <td>Spot FX, US per SZ (CHF)</td>
	</tr>
	<tr>
	  <th>USJPY</th>
	  <td>Spot FX, US per JP (JPY)</td>
	</tr>
  </tbody>
</table>
</div>

```python
RESAMPLE = False
FREQ = 'D'
    
if FREQ == 'M':
    SCALE = 30
elif FREQ == 'Y':
    SCALE = ANNUALIZATION
elif FREQ == 'D':
    SCALE = 1
else:
    error('Frequency needs specified.')
```

```python
fx = pd.DataFrame(index=fxraw.index)

for tick in TICKS_FX:
    lab = tick[-4:]
    if lab[-2:] == 'US':
        lab = lab[-2:] + lab[-4:-2]
        fx[lab] = 1/fxraw[tick]
    else:
        fx[lab] = fxraw[tick]

if RESAMPLE:
    fx = fx.resample(FREQ).last()
    
if INDIRECT:
    fx = 1/fx
```

```python
fx, crypto = fx.dropna().align(crypto.dropna(),join='inner',axis=0)
```

```python
currency = pd.concat([fx,crypto],axis=1)

import seaborn as sns
sns.heatmap(currency.diff().corr(),annot=True)

sns.heatmap(currency.resample('M').last().diff().corr(),annot=True)
```

    <AxesSubplot:>




    

![png](output_6_1.png)

# Save to Excel

```python
fx, rf = fx.align(rf,join='inner',axis=0)
fx, crypto = fx.align(crypto, join='inner',axis=0)

with pd.ExcelWriter('../fx_exam_data.xlsx') as writer:  
    info.to_excel(writer, sheet_name = 'descriptions')
    fx.to_excel(writer, sheet_name='fx rates')
    rf.to_excel(writer, sheet_name='interest rates')
    crypto.to_excel(writer, sheet_name='crypto')
```

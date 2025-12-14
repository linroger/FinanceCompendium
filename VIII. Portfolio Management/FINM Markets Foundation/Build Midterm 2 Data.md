---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Download ETF Data
linter-yaml-title-alias: Download ETF Data
---

# Download ETF Data

```python
import pandas as pd
import numpy as np

import yfinance as yf
```

```python
TICKS = [
    'SPY',
    'EFA',
    'EEM',
    'PSP',
    'QAI',
    'HYG',
    'DBC',
    'IYR',
    'IEF',
    'BWX',
    'TIP',
    'SHV',
]

FLDS = ['shortName','quoteType','currency','volume','totalAssets','longBusinessSummary']
```

```python
info = pd.DataFrame(index=TICKS,columns=FLDS)
info.index.name = 'ticker'
for tick in info.index:
    temp = yf.Ticker(tick).get_info()

    for fld in FLDS:
        if fld in temp.keys():
            info.loc[tick,fld] = temp[fld]
```

```python
STARTDATE = '2009-03-31'
ENDDATE = '2022-10-31'

tickers = list(info.index.values)
df = yf.download(tickers, start=STARTDATE, end=ENDDATE)['Adj Close']
```

    [*********************100%***********************]  12 of 12 completed

```python
prices = df.resample('M').last()

rets = prices.pct_change().dropna()

# change to excess returns, in excess of short-term treasury
retsx = rets.subtract(rets['SHV'], axis=0)
retsx = retsx.drop(columns=['SHV'])
```

# Factor Data

```python
import pandas_datareader.data as web
import pandas_datareader as pdreader
```

```python
rawdata = web.DataReader('F-F_Research_Data_5_Factors_2x3', data_source='famafrench',start=STARTDATE,end=ENDDATE)
facs = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
facs = facs.to_timestamp().resample('M').last()
facs.rename(columns={'Mkt-RF':'MKT'},inplace=True)

rawdata = web.DataReader('F-F_Momentum_Factor', data_source='famafrench',start=STARTDATE,end=ENDDATE)
umd = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
umd = umd.to_timestamp().resample('M').last()
umd.columns = ['UMD']

rf = facs[['RF']]
facs = facs.join(umd).drop(columns=['RF'])
```

```python
facs, retsx = facs.align(retsx, join='inner', axis=0)
```

# Save Data

```python
with pd.ExcelWriter('../data/midterm_2_v2.xlsx') as writer:  
    retsx.to_excel(writer, sheet_name='assets (excess returns)')
    facs.to_excel(writer, sheet_name='factors (excess returns)')
```

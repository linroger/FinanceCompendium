---
aliases:
tags:
key_concepts:
parent_directory: VIII. Portfolio Management/FINM Markets Foundation
cssclasses: academia
title: Adjusted vs Unadjusted Prices
linter-yaml-title-alias: Adjusted vs Unadjusted Prices
formatted: "2025-12-20 07:52:00 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags: [build equity data, portfolio management, data analysis]
secondary_tags: [adjusted prices, bloomberg, financial data]
---

```python
import pandas as pd
import numpy as np
from xbbg import blp

import string

import sys
sys.path.insert(0, '../cmds')
from utils import *


import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13
```

```python
TICK = 'AAPL'
STARTDATE = '2004-01-01'
ENDDATE = '2022-06-30'
FLDS = 'last_price'
```

## Adjusted vs Unadjusted Prices

```python
bbtick = f'{TICK} US Equity'

data_unadj = blp.bdh(tickers=bbtick, flds=FLDS, start_date=STARTDATE,
                     end_date=ENDDATE, CshAdjNormal=False,CshAdjAbnormal=False, 
                     CapChg=False).droplevel(level=0,axis=1)
data_adj = blp.bdh(tickers=bbtick, flds=FLDS, start_date=STARTDATE,
                     end_date=ENDDATE,adjust='all').droplevel(level=0,axis=1)

data_adj.index = pd.to_datetime(data_adj.index)
data_unadj.index = pd.to_datetime(data_unadj.index)
prices = pd.concat([data_adj,data_unadj],axis=1)
prices.columns = ['Adjusted Price','Unadjusted Price']
prices.index.name = 'date'
```

```python
FLDS = 'DVD_HIST_ALL'
dvds = blp.bds(tickers=bbtick, flds=FLDS).set_index('record_date')
```

# Short Interest

```python
FLDS = ['SHORT_INT','SHORT_INT_RATIO']
short = blp.bdh(tickers=bbtick, flds=FLDS, start_date=STARTDATE,
                     end_date=ENDDATE).droplevel(level=0,axis=1)
short.index.name = 'date'
```

# Metrics

```python
FLDS = ['Volume','VWAP Volume','AVERAGE_BID_ASK_SPREAD_%']
metrics = blp.bdh(tickers=bbtick, flds=FLDS, start_date=STARTDATE,
                     end_date=ENDDATE).droplevel(level=0,axis=1)
metrics.index.name = 'date'
```

# Indexes
## Info

```python
TICKSINDEX = ['SPX','NYA','CCMP','RIY','RTY','INDU','DJITR','NKY','HSI','UKX','DAX','SVX','SGX']
bbticksidx = [index + ' Index' for index in TICKSINDEX]
FLDS = ['NAME','COUNT_INDEX_MEMBERS']

index_info = blp.bdp(tickers=bbticksidx, flds=FLDS)#.droplevel(level=0,axis=1)
index_info.index = [row.split()[0] for row in index_info.index]
index_info = index_info.loc[TICKSINDEX,:]
index_info.index.name = 'ticker'
```

## History

```python
FLDS = ['LAST_PRICE']
STARTDATE_index = '1993-01-01'
indexes = blp.bdh(tickers=bbticksidx, flds=FLDS, start_date=STARTDATE_index,
                     end_date=ENDDATE, adjust='all').droplevel(level=1,axis=1)

indexes.columns = [col.split()[0] for col in indexes.columns]
indexes = indexes[TICKSINDEX]
indexes.index.name = 'date'
```

# ETFs

## Info

```python
TICKSETFS = ['SPY','UPRO','EEM','VGK','EWJ','IYR','DBC','HYG','TIP','BITO']
bbticksetfs = [etf + ' US Equity' for etf in TICKSETFS]


FLDS = ['TOTAL_NUMBER_OF_HOLDINGS_IN_PORT','FUND_EXPENSE_RATIO','FUND_ASSET_CLASS_FOCUS','FUND_OBJECTIVE_LONG','EQY_DVD_YLD_IND']

etf_info = blp.bdp(tickers=bbticksetfs, flds=FLDS)#.droplevel(level=0,axis=1)

etf_info.index = [row.split()[0] for row in etf_info.index]
etf_info = etf_info.loc[TICKSETFS,:]
etf_info.index.name = 'ticker'
```

## History

```python
FLDS = ['LAST_PRICE']
STARTDATE_etf = '1993-01-01'
etfs = blp.bdh(tickers=bbticksetfs, flds=FLDS, start_date=STARTDATE_etf,
                     end_date=ENDDATE, adjust='all').droplevel(level=1,axis=1)

etfs.columns = [col.split()[0] for col in etfs.columns]
etfs = etfs[TICKSETFS]
etfs.index.name = 'date'
```

```python
TICKETF = 'SPY'
bbticketf = f'{TICKETF} US Equity'
FLDS = ['LAST_PRICE','EQY_DVD_YLD_IND']
spy = blp.bdh(tickers=bbticketf, flds=FLDS, start_date=STARTDATE_etf,
                     end_date=ENDDATE, adjust='all').droplevel(level=0,axis=1)
spy.index.name = 'date'
```

# Save File

```python
OUTFILE = f'../data/equity_data.xlsx'
with pd.ExcelWriter(OUTFILE) as writer:  
    prices.to_excel(writer, sheet_name= f'prices {TICK}', index=True)
    short.to_excel(writer, sheet_name= f'short {TICK}', index=True)
    metrics.to_excel(writer, sheet_name= f'metrics {TICK}', index=True)
    dvds.to_excel(writer, sheet_name= f'dividends {TICK}', index=True)

    index_info.to_excel(writer, sheet_name= f'index info', index=True)
    indexes.to_excel(writer, sheet_name= f'index history', index=True)

    etf_info.to_excel(writer, sheet_name= f'etf info', index=True)
    etfs.to_excel(writer, sheet_name= f'etf history', index=True)
    spy.to_excel(writer, sheet_name= f'{TICKETF} history', index=True)
```

    19JUL2022_20:06:24.338 17622:123145492697088 WARN apism_apisession.cpp:1196 Apisession.aliveCheck Alive Request Retries exhausted (2) on [localhost:8194 -> 127.0.0.1:54058] 
    
    19JUL2022_20:06:24.346 17622:123145494294528 WARN blpapi_platformcontroller.cpp:402 blpapi.session.platformcontroller.{1} Connectivity lost, no connected endpoints. 
    
    19JUL2022_20:06:29.350 17622:123145493233664 WARN blpapi_apicmadapter.cpp:346 blpapi.session.transporttcp.apicmadapter.{1} Connection attempt timed out localhost:8194 <127.0.0.1:8194> 
    
    19JUL2022_20:06:29.350 17622:123145493233664 WARN blpapi_platformtransporttcp.cpp:151 blpapi.session.transporttcp.{1}.<localhost:8194> { platformId=0 } 127.0.0.1, session pool state=Failed 
    
    19JUL2022_20:06:37.361 17622:123145493233664 WARN blpapi_apicmadapter.cpp:346 blpapi.session.transporttcp.apicmadapter.{1} Connection attempt timed out localhost:8194 <127.0.0.1:8194> 
    
    19JUL2022_20:06:37.361 17622:123145493233664 WARN blpapi_platformtransporttcp.cpp:151 blpapi.session.transporttcp.{1}.<localhost:8194> { platformId=0 } 127.0.0.1, session pool state=Failed 
    
    19JUL2022_20:06:45.368 17622:123145493233664 WARN blpapi_apicmadapter.cpp:346 blpapi.session.transporttcp.apicmadapter.{1} Connection attempt timed out localhost:8194 <127.0.0.1:8194> 
    
    19JUL2022_20:06:45.368 17622:123145493233664 WARN blpapi_platformtransporttcp.cpp:151 blpapi.session.transporttcp.{1}.<localhost:8194> { platformId=0 } 127.0.0.1, session pool state=Failed 
    
    19JUL2022_20:06:45.368 17622:123145493233664 WARN blpapi_platformcontroller.cpp:636 blpapi.session.platformcontroller.{1} Platform failed 3 consecutive connect attempts, stopped trying to reconnect. { PlatformId=0 }  


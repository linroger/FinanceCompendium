---
aliases:
tags:
key_concepts:
parent_directory: VIII. Portfolio Management/FINM Markets Foundation
cssclasses: academia
title: "Required: Active Bloomberg Connection"
linter-yaml-title-alias: "Required: Active Bloomberg Connection"
formatted: "2025-12-20 07:52:00 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags: [build data, proshares analysis, portfolio management]
secondary_tags: [bloomberg, data analysis, financial instruments]
---

## Required: Active Bloomberg Connection

```python
import pandas as pd
from xbbg import blp
```

```python
file_out = 'proshares_analysis_data.xlsx'

ticks_hedge = [
    'HFRIFWI Index',
    'MLEIFCTR Index',
    'MLEIFCTX Index',
    'HDG US Equity',
    'QAI US Equity',
]

ticks_merrill = [
    'SPY US Equity',
    'USGG3M Index',
    'EEM US Equity',
    'EFA US Equity',
    'EUO US Equity',
    'IWM US Equity'
]

ticks_explore = [
    'TRVCI Index',
    'HEFA US Equity',
    'TAIL US Equity',
    'SPXU US Equity',
    'UPRO US Equity',
]

ticks = list(set(ticks_hedge + ticks_merrill + ticks_explore))

ticks_secs = []
ticks_indexes = []
for tick in ticks:
    if 'Equity' in tick:
        ticks_secs.append(tick)
    if 'Index' in tick:
        ticks_indexes.append(tick)

ticks_yields = 'USGG3M Index'
```

```python
fld_secs = 'TOT_RETURN_INDEX_GROSS_DVDS'
fld_indexes = 'PX_LAST'

FLD_MKT = 'PX_LAST'
FLD_RF = 'PX_LAST'

STARTDATE = '20110701'
ENDDATE = '20220930'

ADJ = 'all'

ANNUALIZATION = 12
```

```python
mkt = blp.bdh(ticks,flds=[FLD_MKT],start_date=STARTDATE,end_date=ENDDATE,adjust=ADJ).droplevel(level=1,axis=1)
mkt.index = pd.to_datetime(mkt.index)
```

## Get Ticker Info

```python
info = blp.bdp(ticks,flds=['SECURITY_NAME'])
```

## Convert and clean data for export

```python
data_monthly = mkt.ffill().resample('m').last()
rets = data_monthly.pct_change()
rets[ticks_yields] = data_monthly[ticks_yields]/100/ANNUALIZATION
rets = rets.iloc[1:]
```

```python
with pd.ExcelWriter(file_out) as writer:
    info.to_excel(writer, sheet_name= 'descriptions')
    rets[ticks_hedge].to_excel(writer, sheet_name='hedge_fund_series')
    rets[ticks_merrill].to_excel(writer, sheet_name='merrill_factors')
    rets[ticks_explore].to_excel(writer, sheet_name='other_data')
```

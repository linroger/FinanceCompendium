---
title: "FRED Data Retrieval - Main"
parent_directory: FINM Markets Foundation
formatted: 2025-12-20 06:55:30 PM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - federal reserve data
  - monetary policy indicators
secondary_tags:
  - excess reserves
  - federal funds rate
  - discount window
  - open market operations
cssclasses: academia
---

# FRED

```python
import pandas as pd
import pandas_datareader as pdr
import datetime
```

```python
SAVE_DATA = True

STARTDATE = '2000-01-01'
ENDDATE = '2022-06-30'
```

```python
startdate = pd.to_datetime(STARTDATE)
enddate = pd.to_datetime(ENDDATE)

series = {
    'EXCSRESNW':'Excess Reserves',
    'IOER':'Interest Rate on Excess Reserves',
    'IORB': 'Interest Rate on Reserves',
    'DPCREDIT':'Discount Window Rate',
    'DFEDTARU':'Fed Funds Target - Upper Limit',
    'DFEDTARL':'Fed Funds Target - Lower Limit',
    'EFFR':'Effective Federal Funds Rate',
    'RPONTSYD': 'OMC Repo Treasury Purchased',
    'RRPONTSYD': 'OMC Reverse Repo Treasury Sold',
}


ticks = list(series.keys())
labs = list(series.values())
```

```python
data = pdr.DataReader(ticks,'fred',startdate,enddate)
data.index.name = 'date'
data.index = pd.to_datetime(data.index)
```

```python
info = pd.DataFrame(index=ticks, data=labs)
info.index.name = 'ticker (FRED)'
info.columns = ['description']
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
	  <th>description</th>
	</tr>
	<tr>
	  <th>ticker (FRED)</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>EXCSRESNW</th>
	  <td>Excess Reserves</td>
	</tr>
	<tr>
	  <th>IOER</th>
	  <td>Interest Rate on Excess Reserves</td>
	</tr>
	<tr>
	  <th>IORB</th>
	  <td>Interest Rate on Reserves</td>
	</tr>
	<tr>
	  <th>DPCREDIT</th>
	  <td>Discount Window Rate</td>
	</tr>
	<tr>
	  <th>DFEDTARU</th>
	  <td>Fed Funds Target - Upper Limit</td>
	</tr>
	<tr>
	  <th>DFEDTARL</th>
	  <td>Fed Funds Target - Lower Limit</td>
	</tr>
	<tr>
	  <th>EFFR</th>
	  <td>Effective Federal Funds Rate</td>
	</tr>
	<tr>
	  <th>RPONTSYD</th>
	  <td>OMC Repo Treasury Purchased</td>
	</tr>
	<tr>
	  <th>RRPONTSYD</th>
	  <td>OMC Reverse Repo Treasury Sold</td>
	</tr>
  </tbody>
</table>
</div>

```python
if SAVE_DATA:
    outfile = '../data/fed_data.xlsx'
    with pd.ExcelWriter(outfile) as writer:  
        info.to_excel(writer, sheet_name= 'info', index=True)
        data.to_excel(writer, sheet_name= 'data', index=True)
```

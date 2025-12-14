---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: FRED-1
---

# FRED-1

```python
import pandas as pd
import pandas_datareader as pdr
import datetime
```

```python
SAVE_DATA = True

STARTDATE = '2018-01-01'
ENDDATE = '2022-06-30'
```

```python
startdate = pd.to_datetime(STARTDATE)
enddate = pd.to_datetime(ENDDATE)

ticks = ['DTB3','DFF','SOFR']

rates = pdr.DataReader(ticks,'fred',startdate,enddate)
rates.index.name = 'date'
rates.index = pd.to_datetime(rates.index)
```

```python
info = pd.DataFrame(index=ticks, data=['Tbill 3-month','Fed Funds Effective','SOFR'])
info.index.name = 'ticker (FRED)'
info.columns = ['description']
info = info.reset_index().set_index('description')
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
	  <th>ticker (FRED)</th>
	</tr>
	<tr>
	  <th>description</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Tbill 3-month</th>
	  <td>DTB3</td>
	</tr>
	<tr>
	  <th>Fed Funds Effective</th>
	  <td>DFF</td>
	</tr>
	<tr>
	  <th>SOFR</th>
	  <td>SOFR</td>
	</tr>
  </tbody>
</table>
</div>

```python
if SAVE_DATA:
    outfile = '../data/ref_rates.xlsx'
    with pd.ExcelWriter(outfile) as writer:  
        info.to_excel(writer, sheet_name= 'info', index=True)
        rates.to_excel(writer, sheet_name= 'data', index=True)
```

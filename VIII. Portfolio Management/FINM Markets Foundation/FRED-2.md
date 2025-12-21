---
title: "FRED Data Retrieval - Part 2"
parent_directory: FINM Markets Foundation
formatted: 2025-12-20 06:50:00 PM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - economic data retrieval
  - fred api integration
secondary_tags:
  - macroeconomic indicators
  - inflation breakeven rates
  - federal reserve data
  - labor market statistics
  - government debt metrics
cssclasses: academia
---

# FRED-2

```python
import pandas as pd
import pandas_datareader as pdr
import datetime
```

```python
SAVE_DATA = True

STARTDATE = '1980-01-01'
ENDDATE = '2022-06-30'
```

```python
startdate = pd.to_datetime(STARTDATE)
enddate = pd.to_datetime(ENDDATE)

ticks = ['CPILFESL','T5YIE','T5YIFR','USRECD','GDP','A191RI1Q225SBEA','WM2NS','GFDEBTN','UNRATE']
labels = ['CPI-Core','Breakeven 5yr','Forward Breakeven 5yr','Recession','GDP','GDP Deflator','M2 Money','Federal Public Debt','Unemployment']

data = pdr.DataReader(ticks,'fred',startdate,enddate)
data.index.name = 'date'
data.index = pd.to_datetime(data.index)
data.columns = labels
```

```python
info = pd.DataFrame(index=ticks, data=labels)
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
	  <th>CPI-Core</th>
	  <td>CPILFESL</td>
	</tr>
	<tr>
	  <th>Breakeven 5yr</th>
	  <td>T5YIE</td>
	</tr>
	<tr>
	  <th>Forward Breakeven 5yr</th>
	  <td>T5YIFR</td>
	</tr>
	<tr>
	  <th>Recession</th>
	  <td>USRECD</td>
	</tr>
	<tr>
	  <th>GDP</th>
	  <td>GDP</td>
	</tr>
	<tr>
	  <th>GDP Deflator</th>
	  <td>A191RI1Q225SBEA</td>
	</tr>
	<tr>
	  <th>M2 Money</th>
	  <td>WM2NS</td>
	</tr>
	<tr>
	  <th>Federal Public Debt</th>
	  <td>GFDEBTN</td>
	</tr>
	<tr>
	  <th>Unemployment</th>
	  <td>UNRATE</td>
	</tr>
  </tbody>
</table>
</div>

```python
if SAVE_DATA:
    outfile = '../data/economic_data.xlsx'
    with pd.ExcelWriter(outfile) as writer:  
        info.to_excel(writer, sheet_name= 'info', index=True)
        data.to_excel(writer, sheet_name= 'data', index=True)
```

---
title: "Build Final Exam Data"
parent_directory: VIII. Portfolio Management/FINM Markets Foundation
formatted: 2025-12-21 12:20:00 AM
formatter_model: claude-sonnet-4-5-20251001
cli_tool: claude-code
primary_tags:
  - exam data construction
  - gold price analysis
  - treasury bill rates
secondary_tags:
  - financial data processing
  - return calculations
  - forecasting models
cssclasses: academia
---

# Build Final Exam Data

```d2
direction: right

data_collection: Data Collection {
  shape: cylinder
}

gold_prices: Gold ETF Data {
  shape: rectangle
  label: GLD prices
}

treasury_rates: Treasury Bill Rates {
  shape: rectangle
  label: ^IRX rates
}

weekly_resampling: Weekly Resampling {
  shape: rectangle
}

return_calculation: Return Calculation {
  shape: rectangle
}

rate_changes: Rate Change Analysis {
  shape: rectangle
}

data_export: Data Export {
  shape: rectangle
  label: Excel export
}

data_collection -> gold_prices: Download GLD
data_collection -> treasury_rates: Download ^IRX
gold_prices -> weekly_resampling: Resample to weekly
treasury_rates -> weekly_resampling
weekly_resampling -> return_calculation: Calculate percentage changes
return_calculation -> rate_changes: Add T-bill rate changes
rate_changes -> data_export: Export for forecasting exam
```

```python
import pandas as pd
import numpy as np

import yfinance as yf
```

```python
TICKS = [
    'GLD',
    '^IRX',
]

STARTDATE = '2009-03-31'
ENDDATE = '2022-11-30'

df = yf.download(TICKS, start=STARTDATE, end=ENDDATE)['Adj Close']

prices = df.resample('W').last()
```

    [*********************100%***********************]  2 of 2 completed

```python
prices
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
	  <th>GLD</th>
	  <th>^IRX</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2009-04-05</th>
	  <td>87.589996</td>
	  <td>0.200</td>
	</tr>
	<tr>
	  <th>2009-04-12</th>
	  <td>86.309998</td>
	  <td>0.175</td>
	</tr>
	<tr>
	  <th>2009-04-19</th>
	  <td>85.220001</td>
	  <td>0.130</td>
	</tr>
	<tr>
	  <th>2009-04-26</th>
	  <td>89.720001</td>
	  <td>0.095</td>
	</tr>
	<tr>
	  <th>2009-05-03</th>
	  <td>86.949997</td>
	  <td>0.145</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-06</th>
	  <td>156.470001</td>
	  <td>4.013</td>
	</tr>
	<tr>
	  <th>2022-11-13</th>
	  <td>164.559998</td>
	  <td>4.063</td>
	</tr>
	<tr>
	  <th>2022-11-20</th>
	  <td>162.789993</td>
	  <td>4.135</td>
	</tr>
	<tr>
	  <th>2022-11-27</th>
	  <td>163.220001</td>
	  <td>4.175</td>
	</tr>
	<tr>
	  <th>2022-12-04</th>
	  <td>162.729996</td>
	  <td>4.253</td>
	</tr>
  </tbody>
</table>
<p>714 rows × 2 columns</p>
</div>

```python
rets = prices.pct_change().dropna()

rets['Tbill rate'] = prices['^IRX']
rets.drop(columns=['^IRX'],inplace=True)
rets['Tbill change'] = rets['Tbill rate'].diff()
rets.dropna(inplace=True)
rets
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
	  <th>GLD</th>
	  <th>Tbill rate</th>
	  <th>Tbill change</th>
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
	  <th>2009-04-19</th>
	  <td>-0.012629</td>
	  <td>0.130</td>
	  <td>-0.045</td>
	</tr>
	<tr>
	  <th>2009-04-26</th>
	  <td>0.052805</td>
	  <td>0.095</td>
	  <td>-0.035</td>
	</tr>
	<tr>
	  <th>2009-05-03</th>
	  <td>-0.030874</td>
	  <td>0.145</td>
	  <td>0.050</td>
	</tr>
	<tr>
	  <th>2009-05-10</th>
	  <td>0.034848</td>
	  <td>0.165</td>
	  <td>0.020</td>
	</tr>
	<tr>
	  <th>2009-05-17</th>
	  <td>0.017448</td>
	  <td>0.155</td>
	  <td>-0.010</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-11-06</th>
	  <td>0.021611</td>
	  <td>4.013</td>
	  <td>0.043</td>
	</tr>
	<tr>
	  <th>2022-11-13</th>
	  <td>0.051703</td>
	  <td>4.063</td>
	  <td>0.050</td>
	</tr>
	<tr>
	  <th>2022-11-20</th>
	  <td>-0.010756</td>
	  <td>4.135</td>
	  <td>0.072</td>
	</tr>
	<tr>
	  <th>2022-11-27</th>
	  <td>0.002641</td>
	  <td>4.175</td>
	  <td>0.040</td>
	</tr>
	<tr>
	  <th>2022-12-04</th>
	  <td>-0.003002</td>
	  <td>4.253</td>
	  <td>0.078</td>
	</tr>
  </tbody>
</table>
<p>712 rows × 3 columns</p>
</div>

```python
with pd.ExcelWriter('../forecasting_exam.xlsx') as writer:  
    rets.to_excel(writer, sheet_name='total returns')
```

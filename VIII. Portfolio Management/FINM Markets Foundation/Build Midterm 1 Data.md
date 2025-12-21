---
title: "Building Midterm 1 Data"
parent_directory: "VIII. Portfolio Management/FINM Markets Foundation"
formatted: "2025-12-21 11:03:25 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "claude-code"
primary_tags:
  - "futures data processing"
  - "pandas data manipulation"
secondary_tags:
  - "commodity futures"
  - "equity index futures"
  - "data resampling"
  - "return calculation"
  - "excel export"
cssclasses: academia
---

# Build Midterm 1 Data

```python
import numpy as np
import pandas as pd
pd.options.display.float_format = "{:,.4f}".format
```

```python
RAWFILE = '../../data/futures_data.xlsx'

SHEET = 'continuous futures roll=ratio'
px = pd.read_excel(RAWFILE,sheet_name=SHEET).set_index('date')
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
	  <td>4,163.7500</td>
	  <td>1,251.5200</td>
	  <td>1,465.5000</td>
	  <td>127.6540</td>
	  <td>371.0820</td>
	  <td>1,507.1400</td>
	  <td>NaN</td>
	  <td>163.9400</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2000-01-04</th>
	  <td>51.9100</td>
	  <td>374.3280</td>
	  <td>465.7600</td>
	  <td>4,115.7600</td>
	  <td>1,248.8300</td>
	  <td>1,481.8750</td>
	  <td>126.5090</td>
	  <td>368.7620</td>
	  <td>1,450.6300</td>
	  <td>14,228.0000</td>
	  <td>163.7200</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2000-01-05</th>
	  <td>50.6100</td>
	  <td>372.9510</td>
	  <td>463.1400</td>
	  <td>4,165.0100</td>
	  <td>1,274.0800</td>
	  <td>1,481.8750</td>
	  <td>126.3260</td>
	  <td>365.1150</td>
	  <td>1,452.4300</td>
	  <td>13,771.0000</td>
	  <td>164.2000</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2000-01-06</th>
	  <td>50.3500</td>
	  <td>377.7680</td>
	  <td>463.6300</td>
	  <td>4,172.5900</td>
	  <td>1,255.2800</td>
	  <td>1,487.3750</td>
	  <td>128.3410</td>
	  <td>365.7780</td>
	  <td>1,442.6600</td>
	  <td>13,411.0000</td>
	  <td>164.7600</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>2000-01-07</th>
	  <td>49.2100</td>
	  <td>373.8120</td>
	  <td>464.4500</td>
	  <td>4,202.9000</td>
	  <td>1,226.2700</td>
	  <td>1,511.1250</td>
	  <td>129.8060</td>
	  <td>368.7620</td>
	  <td>1,499.9500</td>
	  <td>13,613.0000</td>
	  <td>163.8600</td>
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
	  <td>107.6200</td>
	  <td>6.2380</td>
	  <td>1,830.3000</td>
	  <td>2,445.2600</td>
	  <td>226.6000</td>
	  <td>750.2500</td>
	  <td>133.3750</td>
	  <td>110.9250</td>
	  <td>3,916.2500</td>
	  <td>26,480.0000</td>
	  <td>122.8900</td>
	  <td>21,207.0000</td>
	</tr>
	<tr>
	  <th>2022-06-27</th>
	  <td>109.5700</td>
	  <td>6.5200</td>
	  <td>1,824.8000</td>
	  <td>2,479.7500</td>
	  <td>226.0000</td>
	  <td>744.2500</td>
	  <td>133.4750</td>
	  <td>110.1750</td>
	  <td>3,903.7500</td>
	  <td>26,770.0000</td>
	  <td>122.9600</td>
	  <td>20,800.0000</td>
	</tr>
	<tr>
	  <th>2022-06-28</th>
	  <td>111.7600</td>
	  <td>6.5700</td>
	  <td>1,821.2000</td>
	  <td>2,475.7500</td>
	  <td>221.9000</td>
	  <td>759.5000</td>
	  <td>132.7250</td>
	  <td>109.9250</td>
	  <td>3,825.5000</td>
	  <td>27,070.0000</td>
	  <td>122.0100</td>
	  <td>20,175.0000</td>
	</tr>
	<tr>
	  <th>2022-06-29</th>
	  <td>109.7800</td>
	  <td>6.4980</td>
	  <td>1,817.5000</td>
	  <td>2,457.5000</td>
	  <td>232.6500</td>
	  <td>770.2500</td>
	  <td>132.1750</td>
	  <td>109.4000</td>
	  <td>3,821.2500</td>
	  <td>26,680.0000</td>
	  <td>121.3600</td>
	  <td>20,185.0000</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>105.7600</td>
	  <td>5.4240</td>
	  <td>1,807.3000</td>
	  <td>2,432.5000</td>
	  <td>233.6000</td>
	  <td>743.7500</td>
	  <td>132.5750</td>
	  <td>109.1250</td>
	  <td>3,789.5000</td>
	  <td>26,380.0000</td>
	  <td>121.9900</td>
	  <td>18,760.0000</td>
	</tr>
  </tbody>
</table>
<p>5850 rows × 12 columns</p>
</div>

## Data Processing Flow

```d2
direction: right

"Excel File" -> "Load Data": Read futures prices
"Load Data" -> "Clean Data": Drop unused columns
"Clean Data" -> "Resample": Monthly last prices
"Resample" -> "Calculate Returns": Percentage change
"Calculate Returns" -> "Filter Period": From 2009 onwards
"Filter Period" -> "Export to Excel": Save processed data
```

```python
p = px.drop(columns=['BTC1','LA1','LC1','LH1','C','NK1','NG1'])
p = p.resample('M').last()
r = p.pct_change().dropna()
r = r.loc['2009':]
r
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
	  <th>GC1</th>
	  <th>KC1</th>
	  <th>ES1</th>
	  <th>BP1</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2009-01-31</th>
	  <td>-0.1135</td>
	  <td>0.0486</td>
	  <td>0.0611</td>
	  <td>-0.0861</td>
	  <td>-0.0078</td>
	</tr>
	<tr>
	  <th>2009-02-28</th>
	  <td>0.0447</td>
	  <td>0.0152</td>
	  <td>-0.0795</td>
	  <td>-0.1073</td>
	  <td>-0.0083</td>
	</tr>
	<tr>
	  <th>2009-03-31</th>
	  <td>0.0879</td>
	  <td>-0.0211</td>
	  <td>0.0344</td>
	  <td>0.0872</td>
	  <td>0.0017</td>
	</tr>
	<tr>
	  <th>2009-04-30</th>
	  <td>-0.0138</td>
	  <td>-0.0365</td>
	  <td>-0.0065</td>
	  <td>0.0947</td>
	  <td>0.0329</td>
	</tr>
	<tr>
	  <th>2009-05-31</th>
	  <td>0.2874</td>
	  <td>0.0983</td>
	  <td>0.1855</td>
	  <td>0.0552</td>
	  <td>0.0889</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-02-28</th>
	  <td>0.0911</td>
	  <td>0.0581</td>
	  <td>-0.0036</td>
	  <td>-0.0302</td>
	  <td>-0.0030</td>
	</tr>
	<tr>
	  <th>2022-03-31</th>
	  <td>0.0714</td>
	  <td>0.0255</td>
	  <td>-0.0279</td>
	  <td>0.0392</td>
	  <td>-0.0212</td>
	</tr>
	<tr>
	  <th>2022-04-30</th>
	  <td>0.0497</td>
	  <td>-0.0216</td>
	  <td>-0.0170</td>
	  <td>-0.0890</td>
	  <td>-0.0405</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.1247</td>
	  <td>-0.0361</td>
	  <td>0.0412</td>
	  <td>0.0009</td>
	  <td>0.0005</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.0682</td>
	  <td>-0.0222</td>
	  <td>0.0102</td>
	  <td>-0.0834</td>
	  <td>-0.0322</td>
	</tr>
  </tbody>
</table>
<p>162 rows × 5 columns</p>
</div>

```python
with pd.ExcelWriter('../data/midterm_1.xlsx') as writer:  
    r.to_excel(writer, sheet_name='total returns')
```

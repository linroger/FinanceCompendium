---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Build Data Fama-French
---

# Build Data Fama-French

```python
import pandas as pd
import pandas_datareader.data as web
```

```python
info = pd.DataFrame(columns=['Name', 'Unit', 'Construction', 'Description'])
info.loc['Mkt-RF'] = ['Market', 'Excess Return', 'Market-cap-weighted', 'US Equities']
info.loc['SMB'] = ['Size', 'Excess Return', 'Small Minus Big', 'Long small stocks and short big stocks']
info.loc['HML'] = ['Value', 'Excess Return', 'High Minus Low', 'Long value (high book-to-market) stocks and short growth (low book-to-market) stocks']
info.loc['RF'] = ['Risk-free rate', 'Total Return', 'Tbills', '']
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
	  <th>Name</th>
	  <th>Unit</th>
	  <th>Construction</th>
	  <th>Description</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>Market</td>
	  <td>Excess Return</td>
	  <td>Market-cap-weighted</td>
	  <td>US Equities</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>Size</td>
	  <td>Excess Return</td>
	  <td>Small Minus Big</td>
	  <td>Long small stocks and short big stocks</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>Value</td>
	  <td>Excess Return</td>
	  <td>High Minus Low</td>
	  <td>Long value (high book-to-market) stocks and sh…</td>
	</tr>
	<tr>
	  <th>RF</th>
	  <td>Risk-free rate</td>
	  <td>Total Return</td>
	  <td>Tbills</td>
	  <td></td>
	</tr>
  </tbody>
</table>
</div>

```python
STARTDATE = '19260101'
ENDDATE = '20220930'

rawdata = web.DataReader('F-F_Research_Data_Factors', data_source='famafrench',start=STARTDATE,end=ENDDATE)
facs = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
facs = facs.to_timestamp().resample('M').last()
facs
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
	  <th>Mkt-RF</th>
	  <th>SMB</th>
	  <th>HML</th>
	  <th>RF</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1926-07-31</th>
	  <td>0.0296</td>
	  <td>-0.0256</td>
	  <td>-0.0243</td>
	  <td>0.0022</td>
	</tr>
	<tr>
	  <th>1926-08-31</th>
	  <td>0.0264</td>
	  <td>-0.0117</td>
	  <td>0.0382</td>
	  <td>0.0025</td>
	</tr>
	<tr>
	  <th>1926-09-30</th>
	  <td>0.0036</td>
	  <td>-0.0140</td>
	  <td>0.0013</td>
	  <td>0.0023</td>
	</tr>
	<tr>
	  <th>1926-10-31</th>
	  <td>-0.0324</td>
	  <td>-0.0009</td>
	  <td>0.0070</td>
	  <td>0.0032</td>
	</tr>
	<tr>
	  <th>1926-11-30</th>
	  <td>0.0253</td>
	  <td>-0.0010</td>
	  <td>-0.0051</td>
	  <td>0.0031</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-04-30</th>
	  <td>-0.0946</td>
	  <td>-0.0141</td>
	  <td>0.0619</td>
	  <td>0.0001</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>-0.0034</td>
	  <td>-0.0185</td>
	  <td>0.0841</td>
	  <td>0.0003</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.0843</td>
	  <td>0.0209</td>
	  <td>-0.0597</td>
	  <td>0.0006</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.0957</td>
	  <td>0.0281</td>
	  <td>-0.0410</td>
	  <td>0.0008</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>-0.0378</td>
	  <td>0.0139</td>
	  <td>0.0031</td>
	  <td>0.0019</td>
	</tr>
  </tbody>
</table>
<p>1154 rows × 4 columns</p>
</div>

```python
rawdata = web.DataReader('25_Portfolios_5x5', data_source='famafrench',start=STARTDATE,end=ENDDATE)
rets = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
rets = rets.to_timestamp().resample('M').last()
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
	  <th>SMALL LoBM</th>
	  <th>ME1 BM2</th>
	  <th>ME1 BM3</th>
	  <th>ME1 BM4</th>
	  <th>SMALL HiBM</th>
	  <th>ME2 BM1</th>
	  <th>ME2 BM2</th>
	  <th>ME2 BM3</th>
	  <th>ME2 BM4</th>
	  <th>ME2 BM5</th>
	  <th>…</th>
	  <th>ME4 BM1</th>
	  <th>ME4 BM2</th>
	  <th>ME4 BM3</th>
	  <th>ME4 BM4</th>
	  <th>ME4 BM5</th>
	  <th>BIG LoBM</th>
	  <th>ME5 BM2</th>
	  <th>ME5 BM3</th>
	  <th>ME5 BM4</th>
	  <th>BIG HiBM</th>
	</tr>
	<tr>
	  <th>Date</th>
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
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1926-07-31</th>
	  <td>0.058248</td>
	  <td>-0.017006</td>
	  <td>0.004875</td>
	  <td>-0.014580</td>
	  <td>0.020534</td>
	  <td>0.012077</td>
	  <td>0.024192</td>
	  <td>0.004926</td>
	  <td>-0.026049</td>
	  <td>-0.003344</td>
	  <td>…</td>
	  <td>0.015893</td>
	  <td>0.015278</td>
	  <td>0.012978</td>
	  <td>0.002727</td>
	  <td>0.024678</td>
	  <td>0.034539</td>
	  <td>0.060902</td>
	  <td>0.020266</td>
	  <td>0.031111</td>
	  <td>0.005623</td>
	</tr>
	<tr>
	  <th>1926-08-31</th>
	  <td>-0.020206</td>
	  <td>-0.080282</td>
	  <td>0.013796</td>
	  <td>0.014606</td>
	  <td>0.083968</td>
	  <td>0.023618</td>
	  <td>-0.011849</td>
	  <td>0.040084</td>
	  <td>0.005038</td>
	  <td>0.061675</td>
	  <td>…</td>
	  <td>0.013336</td>
	  <td>0.038730</td>
	  <td>0.020021</td>
	  <td>0.021706</td>
	  <td>0.053422</td>
	  <td>0.010124</td>
	  <td>0.041903</td>
	  <td>0.020131</td>
	  <td>0.054849</td>
	  <td>0.077576</td>
	</tr>
	<tr>
	  <th>1926-09-30</th>
	  <td>-0.048291</td>
	  <td>-0.026154</td>
	  <td>-0.043417</td>
	  <td>-0.032729</td>
	  <td>0.008649</td>
	  <td>-0.026540</td>
	  <td>-0.012618</td>
	  <td>0.010829</td>
	  <td>-0.035480</td>
	  <td>-0.009401</td>
	  <td>…</td>
	  <td>0.010923</td>
	  <td>-0.005250</td>
	  <td>-0.017636</td>
	  <td>0.014646</td>
	  <td>0.008730</td>
	  <td>-0.012906</td>
	  <td>0.036538</td>
	  <td>0.000950</td>
	  <td>-0.007487</td>
	  <td>-0.024284</td>
	</tr>
	<tr>
	  <th>1926-10-31</th>
	  <td>-0.093729</td>
	  <td>-0.035519</td>
	  <td>-0.034948</td>
	  <td>0.034413</td>
	  <td>-0.025476</td>
	  <td>-0.028069</td>
	  <td>-0.032663</td>
	  <td>-0.050745</td>
	  <td>-0.080191</td>
	  <td>-0.013213</td>
	  <td>…</td>
	  <td>-0.033361</td>
	  <td>-0.026559</td>
	  <td>-0.021070</td>
	  <td>-0.031051</td>
	  <td>-0.053525</td>
	  <td>-0.027413</td>
	  <td>-0.030071</td>
	  <td>-0.022437</td>
	  <td>-0.046719</td>
	  <td>-0.058129</td>
	</tr>
	<tr>
	  <th>1926-11-30</th>
	  <td>0.055888</td>
	  <td>0.041877</td>
	  <td>0.024623</td>
	  <td>-0.044494</td>
	  <td>0.005362</td>
	  <td>0.031033</td>
	  <td>-0.023690</td>
	  <td>0.030078</td>
	  <td>0.051546</td>
	  <td>0.027292</td>
	  <td>…</td>
	  <td>0.034448</td>
	  <td>0.023887</td>
	  <td>0.037335</td>
	  <td>0.049320</td>
	  <td>0.018213</td>
	  <td>0.042946</td>
	  <td>0.025326</td>
	  <td>0.015204</td>
	  <td>0.036619</td>
	  <td>0.025636</td>
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
	  <th>2022-04-30</th>
	  <td>-0.161458</td>
	  <td>-0.132365</td>
	  <td>-0.099863</td>
	  <td>-0.063449</td>
	  <td>-0.040988</td>
	  <td>-0.181950</td>
	  <td>-0.120671</td>
	  <td>-0.085393</td>
	  <td>-0.062858</td>
	  <td>-0.059654</td>
	  <td>…</td>
	  <td>-0.107264</td>
	  <td>-0.080398</td>
	  <td>-0.048345</td>
	  <td>-0.056840</td>
	  <td>-0.070521</td>
	  <td>-0.108609</td>
	  <td>-0.092140</td>
	  <td>-0.071498</td>
	  <td>-0.055172</td>
	  <td>-0.074225</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>-0.058265</td>
	  <td>-0.035601</td>
	  <td>-0.009777</td>
	  <td>-0.001506</td>
	  <td>0.029569</td>
	  <td>-0.032936</td>
	  <td>-0.028180</td>
	  <td>0.020090</td>
	  <td>0.040419</td>
	  <td>0.057494</td>
	  <td>…</td>
	  <td>-0.029505</td>
	  <td>0.011418</td>
	  <td>0.040600</td>
	  <td>0.008937</td>
	  <td>0.082899</td>
	  <td>-0.030113</td>
	  <td>-0.003170</td>
	  <td>0.028100</td>
	  <td>0.064726</td>
	  <td>0.064003</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.066490</td>
	  <td>-0.042722</td>
	  <td>-0.042452</td>
	  <td>-0.065665</td>
	  <td>-0.098769</td>
	  <td>-0.020535</td>
	  <td>-0.062438</td>
	  <td>-0.067874</td>
	  <td>-0.062183</td>
	  <td>-0.129730</td>
	  <td>…</td>
	  <td>-0.072856</td>
	  <td>-0.095073</td>
	  <td>-0.111652</td>
	  <td>-0.100982</td>
	  <td>-0.132412</td>
	  <td>-0.078059</td>
	  <td>-0.055254</td>
	  <td>-0.087814</td>
	  <td>-0.120979</td>
	  <td>-0.121789</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.153839</td>
	  <td>0.129453</td>
	  <td>0.082644</td>
	  <td>0.096279</td>
	  <td>0.057074</td>
	  <td>0.127958</td>
	  <td>0.136533</td>
	  <td>0.116312</td>
	  <td>0.099950</td>
	  <td>0.092214</td>
	  <td>…</td>
	  <td>0.131755</td>
	  <td>0.109898</td>
	  <td>0.069970</td>
	  <td>0.095202</td>
	  <td>0.061561</td>
	  <td>0.127225</td>
	  <td>0.055066</td>
	  <td>0.041833</td>
	  <td>0.073500</td>
	  <td>0.067965</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>0.038098</td>
	  <td>-0.001388</td>
	  <td>0.005269</td>
	  <td>-0.000219</td>
	  <td>-0.002621</td>
	  <td>0.036693</td>
	  <td>-0.008214</td>
	  <td>-0.044867</td>
	  <td>-0.038408</td>
	  <td>-0.024716</td>
	  <td>…</td>
	  <td>-0.025402</td>
	  <td>-0.030861</td>
	  <td>-0.039483</td>
	  <td>-0.026975</td>
	  <td>-0.003650</td>
	  <td>-0.053349</td>
	  <td>-0.031101</td>
	  <td>-0.019065</td>
	  <td>0.000550</td>
	  <td>-0.030467</td>
	</tr>
  </tbody>
</table>
<p>1154 rows × 25 columns</p>
</div>

```python
with pd.ExcelWriter('../data/dfa_analysis_data.xlsx') as writer:  
    info.to_excel(writer, sheet_name= 'descriptions')
    facs.to_excel(writer, sheet_name='factors')
    rets.to_excel(writer, sheet_name='portfolios (total returns)')
```

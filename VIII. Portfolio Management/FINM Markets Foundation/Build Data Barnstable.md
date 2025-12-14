---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Build Data Barnstable
---

# Build Data Barnstable

```python
import wrds
file_key = open("../../../keys/wrds_username.txt","r")
USERNAME = file_key.read()
file_key.close()

db = wrds.Connection(wrds_username=USERNAME)
#db.create_pgpass_file()
```

    Loading library list...
    Done

```python
import pandas as pd
import numpy as np
from datetime import date
```

```python
#db.list_libraries()
#db.list_tables('crsp_m_indexes')
```

```python
info = pd.DataFrame(columns=['Description'])
info.loc['SPX'] = 'S&P500 Index'
info.loc['TB1M'] = 'Treasury Bill (1M) Index'
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
	  <th>Description</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPX</th>
	  <td>S&amp;P500 Index</td>
	</tr>
	<tr>
	  <th>TB1M</th>
	  <td>Treasury Bill (1M) Index</td>
	</tr>
  </tbody>
</table>
</div>

```python
sp500 = db.get_table(library='crsp_m_indexes', table='msp500')
sp500.set_index('caldt',inplace=True)
sp500.index = pd.to_datetime(sp500.index)
sp500.index.name = 'date'
sp500 = sp500[['vwretd']]
```

```python
ytm = db.get_table(library='crsp_m_treasuries', table='tfz_mth_rf')
ytm.set_index('mcaldt',inplace=True)
ytm.index = pd.to_datetime(ytm.index)
ytm.index.name = 'date'
ytm['T-bills'] = ytm['tmytm']/ (100 * 12)

ytm1 = ytm[['T-bills']][ytm['kytreasnox']==2000001.0]
ytm3 = ytm[['T-bills']][ytm['kytreasnox']==2000002.0]

rf = ytm1
```

```python
df = sp500.join(rf)
df = df.iloc[1:,:]
df.columns = info.index
df
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
	  <th>SPX</th>
	  <th>TB1M</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1926-01-30</th>
	  <td>-0.001783</td>
	  <td>0.003061</td>
	</tr>
	<tr>
	  <th>1926-02-27</th>
	  <td>-0.033296</td>
	  <td>0.002612</td>
	</tr>
	<tr>
	  <th>1926-03-31</th>
	  <td>-0.057708</td>
	  <td>0.002601</td>
	</tr>
	<tr>
	  <th>1926-04-30</th>
	  <td>0.038522</td>
	  <td>0.002270</td>
	</tr>
	<tr>
	  <th>1926-05-28</th>
	  <td>0.013623</td>
	  <td>0.002691</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-04-29</th>
	  <td>-0.087576</td>
	  <td>0.000292</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.000354</td>
	  <td>0.000575</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.081444</td>
	  <td>0.000934</td>
	</tr>
	<tr>
	  <th>2022-07-29</th>
	  <td>0.093744</td>
	  <td>0.001806</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>-0.040233</td>
	  <td>0.001962</td>
	</tr>
  </tbody>
</table>
<p>1160 rows × 2 columns</p>
</div>

```python
file_out = '../data/barnstable_analysis_data.xlsx'

with pd.ExcelWriter(file_out) as writer:  
    info.to_excel(writer, sheet_name= 'descriptions')
    df.to_excel(writer, sheet_name='data')
```

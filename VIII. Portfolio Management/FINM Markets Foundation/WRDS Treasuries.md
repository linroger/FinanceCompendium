---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: WRDS CRSP Documentation
linter-yaml-title-alias: WRDS CRSP Documentation
---

# WRDS CRSP Documentation

## Treasury Libraries

`crsp_m_treasuries`

Quote Data

* tfz_dly: main file of treasury quotes
* tfz_dly_ts2: supplemental series
* tfz_dly_ft: matched to term structure at any given date
* tfz_dly_cd: compilation of fed reported rates in tfz format
* tfz_dly_cpi: compilation of cpi data
* tfz_dly_rf2: compiled risk-free rate

Identifying Info

* tfz_iss: issue details (which are included automatically in queries.)
* tfz_idx: description of KYTREASNOX codes

## WRDS Python Manual

https://wrds-www.wharton.upenn.edu/pages/support/programming-wrds/programming-python/querying-wrds-data-python/

https://wrds-www.wharton.upenn.edu/pages/support/programming-wrds/programming-python/python-example-data-workflow/

https://wrds-www.wharton.upenn.edu/pages/support/applications/python-replications/fama-french-factors-python/

## CRSP Treasury Manual

https://www.crsp.org/products/documentation/treasno-properties

https://www.crsp.org/products/documentation/reference-information

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

# Library Info

```python
libs = db.list_libraries()
libs_crsp = [item for item in libs if item.startswith('crsp')]
treasury_databases = db.list_tables('crsp_m_treasuries')
display(treasury_databases)
```

    ['tfz_dly',
     'tfz_dly_cd',
     'tfz_dly_cpi',
     'tfz_dly_ft',
     'tfz_dly_rf2',
     'tfz_dly_ts2',
     'tfz_idx',
     'tfz_iss',
     'tfz_mast',
     'tfz_mth',
     'tfz_mth_bp',
     'tfz_mth_cd',
     'tfz_mth_cpi',
     'tfz_mth_fb',
     'tfz_mth_ft',
     'tfz_mth_rf',
     'tfz_mth_rf2',
     'tfz_mth_ts',
     'tfz_mth_ts2',
     'tfz_pay']

```python
db.describe_table(library='crsp_m_treasuries', table='tfz_dly')
```

    Approximately 3221976 rows in crsp_m_treasuries.tfz_dly.

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
	  <th>name</th>
	  <th>nullable</th>
	  <th>type</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>kytreasno</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>kycrspid</td>
	  <td>True</td>
	  <td>VARCHAR(15)</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>caldt</td>
	  <td>True</td>
	  <td>DATE</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>tdbid</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>tdask</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>tdnomprc</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>tdnomprc_flg</td>
	  <td>True</td>
	  <td>VARCHAR(1)</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>tdsourcr</td>
	  <td>True</td>
	  <td>VARCHAR(1)</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>tdaccint</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>tdretnua</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>tdyld</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>tdduratn</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>tdpubout</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>tdtotout</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>tdpdint</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>tdidxratio</td>
	  <td>True</td>
	  <td>DOUBLE_PRECISION</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>tdidxratio_flg</td>
	  <td>True</td>
	  <td>VARCHAR(1)</td>
	</tr>
  </tbody>
</table>
</div>

# Database quote

```python
DATE = '2022-06-30'
SQL_QUERY = f'select * from crsp_m_treasuries.tfz_dly where caldt=\'{DATE}\''
data_quotes = db.raw_sql(SQL_QUERY)
data_quotes
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
	  <th>kytreasno</th>
	  <th>kycrspid</th>
	  <th>caldt</th>
	  <th>tdbid</th>
	  <th>tdask</th>
	  <th>tdnomprc</th>
	  <th>tdnomprc_flg</th>
	  <th>tdsourcr</th>
	  <th>tdaccint</th>
	  <th>tdretnua</th>
	  <th>tdyld</th>
	  <th>tdduratn</th>
	  <th>tdpubout</th>
	  <th>tdtotout</th>
	  <th>tdpdint</th>
	  <th>tdidxratio</th>
	  <th>tdidxratio_flg</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>204083.0</td>
	  <td>20241115.107500</td>
	  <td>2022-06-30</td>
	  <td>110.250000</td>
	  <td>110.281250</td>
	  <td>110.265625</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.937500</td>
	  <td>0.001943</td>
	  <td>0.000081</td>
	  <td>808.830853</td>
	  <td>3438.0</td>
	  <td>9604.0</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>204079.0</td>
	  <td>20220815.107250</td>
	  <td>2022-06-30</td>
	  <td>100.710938</td>
	  <td>100.742188</td>
	  <td>100.726562</td>
	  <td>M</td>
	  <td>I</td>
	  <td>2.703729</td>
	  <td>-0.000260</td>
	  <td>0.000041</td>
	  <td>46.000000</td>
	  <td>3864.0</td>
	  <td>10128.0</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>204082.0</td>
	  <td>20230815.106250</td>
	  <td>2022-06-30</td>
	  <td>103.671875</td>
	  <td>103.703125</td>
	  <td>103.687500</td>
	  <td>M</td>
	  <td>I</td>
	  <td>2.330801</td>
	  <td>-0.000942</td>
	  <td>0.000079</td>
	  <td>395.040949</td>
	  <td>6798.0</td>
	  <td>22659.0</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>204080.0</td>
	  <td>20221115.107620</td>
	  <td>2022-06-30</td>
	  <td>101.960938</td>
	  <td>101.992188</td>
	  <td>101.976562</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.953125</td>
	  <td>-0.000026</td>
	  <td>0.000062</td>
	  <td>138.000000</td>
	  <td>2227.0</td>
	  <td>7424.0</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>204081.0</td>
	  <td>20230215.107120</td>
	  <td>2022-06-30</td>
	  <td>102.984375</td>
	  <td>103.015625</td>
	  <td>103.000000</td>
	  <td>M</td>
	  <td>I</td>
	  <td>2.657113</td>
	  <td>0.000334</td>
	  <td>0.000062</td>
	  <td>223.813534</td>
	  <td>4735.0</td>
	  <td>15782.0</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>None</td>
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
	</tr>
	<tr>
	  <th>420</th>
	  <td>207894.0</td>
	  <td>20221018.400000</td>
	  <td>2022-06-30</td>
	  <td>99.428611</td>
	  <td>99.431667</td>
	  <td>99.430139</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.000000</td>
	  <td>0.000440</td>
	  <td>0.000052</td>
	  <td>110.000000</td>
	  <td>NaN</td>
	  <td>30000.0</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>421</th>
	  <td>207895.0</td>
	  <td>20221025.400000</td>
	  <td>2022-06-30</td>
	  <td>99.322375</td>
	  <td>99.325625</td>
	  <td>99.324000</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.000000</td>
	  <td>-0.000041</td>
	  <td>0.000058</td>
	  <td>117.000000</td>
	  <td>NaN</td>
	  <td>30000.0</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>422</th>
	  <td>207896.0</td>
	  <td>20221101.400000</td>
	  <td>2022-06-30</td>
	  <td>99.247389</td>
	  <td>99.250833</td>
	  <td>99.249111</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.000000</td>
	  <td>0.000148</td>
	  <td>0.000061</td>
	  <td>124.000000</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>423</th>
	  <td>207897.0</td>
	  <td>20221208.400000</td>
	  <td>2022-06-30</td>
	  <td>98.993750</td>
	  <td>99.004931</td>
	  <td>98.999340</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.000000</td>
	  <td>0.000233</td>
	  <td>0.000062</td>
	  <td>161.000000</td>
	  <td>NaN</td>
	  <td>46834.0</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>424</th>
	  <td>207905.0</td>
	  <td>20290630.203250</td>
	  <td>2022-06-30</td>
	  <td>101.093750</td>
	  <td>101.140625</td>
	  <td>101.117188</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.000000</td>
	  <td>0.005672</td>
	  <td>0.000083</td>
	  <td>2309.364731</td>
	  <td>40000.0</td>
	  <td>43057.0</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>None</td>
	</tr>
  </tbody>
</table>
<p>425 rows × 17 columns</p>
</div>

```python
KEYS = tuple(data_quotes['kytreasno'])
SQL_QUERY = f'select * from crsp_m_treasuries.tfz_iss where kytreasno in {KEYS}'
data_iss = db.raw_sql(SQL_QUERY)
data_iss
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
	  <th>kytreasno</th>
	  <th>kycrspid</th>
	  <th>crspid</th>
	  <th>tcusip</th>
	  <th>tdatdt</th>
	  <th>tmatdt</th>
	  <th>iwhy</th>
	  <th>tcouprt</th>
	  <th>tnippy</th>
	  <th>tvalfc</th>
	  <th>…</th>
	  <th>tfcaldt</th>
	  <th>tnotice</th>
	  <th>iymcn</th>
	  <th>itype</th>
	  <th>iuniq</th>
	  <th>itax</th>
	  <th>iflwr</th>
	  <th>tbankdt</th>
	  <th>tstripelig</th>
	  <th>tfrgntgt</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>204079.0</td>
	  <td>20220815.107250</td>
	  <td>20220815.107250</td>
	  <td>912810EM</td>
	  <td>1992-08-15</td>
	  <td>2022-08-15</td>
	  <td>0.0</td>
	  <td>7.250</td>
	  <td>2.0</td>
	  <td>3.625000</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>204080.0</td>
	  <td>20221115.107620</td>
	  <td>20221115.107620</td>
	  <td>912810EN</td>
	  <td>1992-11-15</td>
	  <td>2022-11-15</td>
	  <td>0.0</td>
	  <td>7.625</td>
	  <td>2.0</td>
	  <td>3.812500</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>204081.0</td>
	  <td>20230215.107120</td>
	  <td>20230215.107120</td>
	  <td>912810EP</td>
	  <td>1993-02-15</td>
	  <td>2023-02-15</td>
	  <td>0.0</td>
	  <td>7.125</td>
	  <td>2.0</td>
	  <td>3.562500</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>204082.0</td>
	  <td>20230815.106250</td>
	  <td>20230815.106250</td>
	  <td>912810EQ</td>
	  <td>1993-08-16</td>
	  <td>2023-08-15</td>
	  <td>0.0</td>
	  <td>6.250</td>
	  <td>2.0</td>
	  <td>3.108016</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>204083.0</td>
	  <td>20241115.107500</td>
	  <td>20241115.107500</td>
	  <td>912810ES</td>
	  <td>1994-05-15</td>
	  <td>2024-11-15</td>
	  <td>0.0</td>
	  <td>7.500</td>
	  <td>2.0</td>
	  <td>3.750000</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
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
	  <th>420</th>
	  <td>207901.0</td>
	  <td>20230615.400000</td>
	  <td>20230615.400000</td>
	  <td>912796X5</td>
	  <td>2022-06-16</td>
	  <td>2023-06-15</td>
	  <td>0.0</td>
	  <td>0.000</td>
	  <td>0.0</td>
	  <td>0.000000</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>4.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>421</th>
	  <td>207902.0</td>
	  <td>20240630.203000</td>
	  <td>20240630.203000</td>
	  <td>91282CEX</td>
	  <td>2022-06-30</td>
	  <td>2024-06-30</td>
	  <td>0.0</td>
	  <td>3.000</td>
	  <td>2.0</td>
	  <td>1.500000</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>2.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>422</th>
	  <td>207903.0</td>
	  <td>20250615.202870</td>
	  <td>20250615.202870</td>
	  <td>91282CEU</td>
	  <td>2022-06-15</td>
	  <td>2025-06-15</td>
	  <td>0.0</td>
	  <td>2.875</td>
	  <td>2.0</td>
	  <td>1.437500</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>2.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>423</th>
	  <td>207904.0</td>
	  <td>20270630.203250</td>
	  <td>20270630.203250</td>
	  <td>91282CEW</td>
	  <td>2022-06-30</td>
	  <td>2027-06-30</td>
	  <td>0.0</td>
	  <td>3.250</td>
	  <td>2.0</td>
	  <td>1.625000</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>2.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>424</th>
	  <td>207905.0</td>
	  <td>20290630.203250</td>
	  <td>20290630.203250</td>
	  <td>91282CEV</td>
	  <td>2022-06-30</td>
	  <td>2029-06-30</td>
	  <td>0.0</td>
	  <td>3.250</td>
	  <td>2.0</td>
	  <td>1.625000</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>2.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
  </tbody>
</table>
<p>425 rows × 22 columns</p>
</div>

```python
data = data_quotes.merge(data_iss, on='kytreasno')
data
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
	  <th>kytreasno</th>
	  <th>kycrspid_x</th>
	  <th>caldt</th>
	  <th>tdbid</th>
	  <th>tdask</th>
	  <th>tdnomprc</th>
	  <th>tdnomprc_flg</th>
	  <th>tdsourcr</th>
	  <th>tdaccint</th>
	  <th>tdretnua</th>
	  <th>…</th>
	  <th>tfcaldt</th>
	  <th>tnotice</th>
	  <th>iymcn</th>
	  <th>itype</th>
	  <th>iuniq</th>
	  <th>itax</th>
	  <th>iflwr</th>
	  <th>tbankdt</th>
	  <th>tstripelig</th>
	  <th>tfrgntgt</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>204083.0</td>
	  <td>20241115.107500</td>
	  <td>2022-06-30</td>
	  <td>110.250000</td>
	  <td>110.281250</td>
	  <td>110.265625</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.937500</td>
	  <td>0.001943</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>204079.0</td>
	  <td>20220815.107250</td>
	  <td>2022-06-30</td>
	  <td>100.710938</td>
	  <td>100.742188</td>
	  <td>100.726562</td>
	  <td>M</td>
	  <td>I</td>
	  <td>2.703729</td>
	  <td>-0.000260</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>204082.0</td>
	  <td>20230815.106250</td>
	  <td>2022-06-30</td>
	  <td>103.671875</td>
	  <td>103.703125</td>
	  <td>103.687500</td>
	  <td>M</td>
	  <td>I</td>
	  <td>2.330801</td>
	  <td>-0.000942</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>204080.0</td>
	  <td>20221115.107620</td>
	  <td>2022-06-30</td>
	  <td>101.960938</td>
	  <td>101.992188</td>
	  <td>101.976562</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.953125</td>
	  <td>-0.000026</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>204081.0</td>
	  <td>20230215.107120</td>
	  <td>2022-06-30</td>
	  <td>102.984375</td>
	  <td>103.015625</td>
	  <td>103.000000</td>
	  <td>M</td>
	  <td>I</td>
	  <td>2.657113</td>
	  <td>0.000334</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
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
	  <th>420</th>
	  <td>207894.0</td>
	  <td>20221018.400000</td>
	  <td>2022-06-30</td>
	  <td>99.428611</td>
	  <td>99.431667</td>
	  <td>99.430139</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.000000</td>
	  <td>0.000440</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>4.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>421</th>
	  <td>207895.0</td>
	  <td>20221025.400000</td>
	  <td>2022-06-30</td>
	  <td>99.322375</td>
	  <td>99.325625</td>
	  <td>99.324000</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.000000</td>
	  <td>-0.000041</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>4.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>422</th>
	  <td>207896.0</td>
	  <td>20221101.400000</td>
	  <td>2022-06-30</td>
	  <td>99.247389</td>
	  <td>99.250833</td>
	  <td>99.249111</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.000000</td>
	  <td>0.000148</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>4.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>423</th>
	  <td>207897.0</td>
	  <td>20221208.400000</td>
	  <td>2022-06-30</td>
	  <td>98.993750</td>
	  <td>99.004931</td>
	  <td>98.999340</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.000000</td>
	  <td>0.000233</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>4.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>424</th>
	  <td>207905.0</td>
	  <td>20290630.203250</td>
	  <td>2022-06-30</td>
	  <td>101.093750</td>
	  <td>101.140625</td>
	  <td>101.117188</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.000000</td>
	  <td>0.005672</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>2.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
  </tbody>
</table>
<p>425 rows × 38 columns</p>
</div>

# Get Yield Curve Data (CRSP)

```python
data_ft = db.get_table(library='crsp_m_treasuries', table='tfz_dly_ft').pivot_table(index='caldt',values='tdytm', columns='kytreasnox')
data_ft.columns = [1,2,5,7,10,20,30]
data_ft
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
	  <th>1</th>
	  <th>2</th>
	  <th>5</th>
	  <th>7</th>
	  <th>10</th>
	  <th>20</th>
	  <th>30</th>
	</tr>
	<tr>
	  <th>caldt</th>
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
	  <th>1961-06-14</th>
	  <td>2.935907</td>
	  <td>3.360687</td>
	  <td>3.623677</td>
	  <td>3.768720</td>
	  <td>3.818819</td>
	  <td>3.814210</td>
	  <td>3.815172</td>
	</tr>
	<tr>
	  <th>1961-06-15</th>
	  <td>2.932936</td>
	  <td>3.376460</td>
	  <td>3.671691</td>
	  <td>3.804225</td>
	  <td>3.862987</td>
	  <td>3.828220</td>
	  <td>3.826316</td>
	</tr>
	<tr>
	  <th>1961-06-16</th>
	  <td>2.929949</td>
	  <td>3.375670</td>
	  <td>3.685431</td>
	  <td>3.804216</td>
	  <td>3.863282</td>
	  <td>3.832922</td>
	  <td>3.830049</td>
	</tr>
	<tr>
	  <th>1961-06-19</th>
	  <td>2.920884</td>
	  <td>3.389970</td>
	  <td>3.712984</td>
	  <td>3.824557</td>
	  <td>3.886205</td>
	  <td>3.842378</td>
	  <td>3.837543</td>
	</tr>
	<tr>
	  <th>1961-06-20</th>
	  <td>2.952419</td>
	  <td>3.355796</td>
	  <td>3.685391</td>
	  <td>3.809274</td>
	  <td>3.886506</td>
	  <td>3.856465</td>
	  <td>3.845018</td>
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
	</tr>
	<tr>
	  <th>2022-05-24</th>
	  <td>2.061000</td>
	  <td>2.447982</td>
	  <td>2.734355</td>
	  <td>2.750338</td>
	  <td>2.737093</td>
	  <td>3.151691</td>
	  <td>2.971949</td>
	</tr>
	<tr>
	  <th>2022-05-25</th>
	  <td>2.075851</td>
	  <td>2.409160</td>
	  <td>2.710581</td>
	  <td>2.734376</td>
	  <td>2.731622</td>
	  <td>3.157024</td>
	  <td>2.971993</td>
	</tr>
	<tr>
	  <th>2022-05-26</th>
	  <td>2.065574</td>
	  <td>2.394983</td>
	  <td>2.710010</td>
	  <td>2.732036</td>
	  <td>2.731839</td>
	  <td>3.166092</td>
	  <td>2.985079</td>
	</tr>
	<tr>
	  <th>2022-05-27</th>
	  <td>2.046810</td>
	  <td>2.395214</td>
	  <td>2.712117</td>
	  <td>2.745805</td>
	  <td>2.724471</td>
	  <td>3.157593</td>
	  <td>2.966442</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>2.115649</td>
	  <td>2.504727</td>
	  <td>2.829128</td>
	  <td>2.851051</td>
	  <td>2.829248</td>
	  <td>3.258353</td>
	  <td>3.045234</td>
	</tr>
  </tbody>
</table>
<p>15221 rows × 7 columns</p>
</div>

# Get Timeseries for certain maturities

```python
MATDT = '2022-02-15'

SQL_QUERY = f'select * from crsp_m_treasuries.tfz_iss where tmatdt=\'{MATDT}\''
temp = db.raw_sql(SQL_QUERY)
#temp = temp[temp['itype'].isin([11,12]) == DOTIPS]
temp
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
	  <th>kytreasno</th>
	  <th>kycrspid</th>
	  <th>crspid</th>
	  <th>tcusip</th>
	  <th>tdatdt</th>
	  <th>tmatdt</th>
	  <th>iwhy</th>
	  <th>tcouprt</th>
	  <th>tnippy</th>
	  <th>tvalfc</th>
	  <th>…</th>
	  <th>tfcaldt</th>
	  <th>tnotice</th>
	  <th>iymcn</th>
	  <th>itype</th>
	  <th>iuniq</th>
	  <th>itax</th>
	  <th>iflwr</th>
	  <th>tbankdt</th>
	  <th>tstripelig</th>
	  <th>tfrgntgt</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>206339.0</td>
	  <td>20220215.202000</td>
	  <td>20220215.202000</td>
	  <td>912828SF</td>
	  <td>2012-02-15</td>
	  <td>2022-02-15</td>
	  <td>1.0</td>
	  <td>2.0</td>
	  <td>2.0</td>
	  <td>1.00</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>2.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>207309.0</td>
	  <td>20220215.202500</td>
	  <td>20220215.202500</td>
	  <td>9128286C</td>
	  <td>2019-02-15</td>
	  <td>2022-02-15</td>
	  <td>1.0</td>
	  <td>2.5</td>
	  <td>2.0</td>
	  <td>1.25</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>2.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>207781.0</td>
	  <td>20220215.400000</td>
	  <td>20220215.400000</td>
	  <td>912796R8</td>
	  <td>2021-10-19</td>
	  <td>2022-02-15</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>0.00</td>
	  <td>…</td>
	  <td>None</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>4.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>1.0</td>
	  <td>None</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
  </tbody>
</table>
<p>3 rows × 22 columns</p>
</div>

```python
if temp.shape[0]>1:
    KEYNO = tuple(temp['kytreasno'])
    SQL_QUERY = f'select * from crsp_m_treasuries.tfz_dly where kytreasno in {KEYNO}'
else:
    KEYNO = temp['kytreasno'].values[0]
    SQL_QUERY = f'select * from crsp_m_treasuries.tfz_dly where kytreasno =\'{KEYNO}\''
    
ts = db.raw_sql(SQL_QUERY)
ts
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
	  <th>kytreasno</th>
	  <th>kycrspid</th>
	  <th>caldt</th>
	  <th>tdbid</th>
	  <th>tdask</th>
	  <th>tdnomprc</th>
	  <th>tdnomprc_flg</th>
	  <th>tdsourcr</th>
	  <th>tdaccint</th>
	  <th>tdretnua</th>
	  <th>tdyld</th>
	  <th>tdduratn</th>
	  <th>tdpubout</th>
	  <th>tdtotout</th>
	  <th>tdpdint</th>
	  <th>tdidxratio</th>
	  <th>tdidxratio_flg</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>206339.0</td>
	  <td>20220215.202000</td>
	  <td>2012-02-09</td>
	  <td>99.640625</td>
	  <td>99.703125</td>
	  <td>99.671875</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>0.000055</td>
	  <td>3334.278135</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>206339.0</td>
	  <td>20220215.202000</td>
	  <td>2012-02-10</td>
	  <td>100.093750</td>
	  <td>100.140625</td>
	  <td>100.117188</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.004468</td>
	  <td>0.000054</td>
	  <td>3334.172369</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>206339.0</td>
	  <td>20220215.202000</td>
	  <td>2012-02-13</td>
	  <td>100.187500</td>
	  <td>100.250000</td>
	  <td>100.218750</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.001014</td>
	  <td>0.000054</td>
	  <td>3331.345227</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>206339.0</td>
	  <td>20220215.202000</td>
	  <td>2012-02-14</td>
	  <td>100.546875</td>
	  <td>100.593750</td>
	  <td>100.570312</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.003508</td>
	  <td>0.000053</td>
	  <td>3331.044132</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>206339.0</td>
	  <td>20220215.202000</td>
	  <td>2012-02-15</td>
	  <td>100.625000</td>
	  <td>100.687500</td>
	  <td>100.656250</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.000855</td>
	  <td>0.000053</td>
	  <td>3330.206381</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
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
	</tr>
	<tr>
	  <th>3346</th>
	  <td>207781.0</td>
	  <td>20220215.400000</td>
	  <td>2022-01-25</td>
	  <td>99.997083</td>
	  <td>99.997667</td>
	  <td>99.997375</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.000007</td>
	  <td>0.000001</td>
	  <td>21.000000</td>
	  <td>NaN</td>
	  <td>61711.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>3347</th>
	  <td>207781.0</td>
	  <td>20220215.400000</td>
	  <td>2022-01-26</td>
	  <td>99.997222</td>
	  <td>99.997778</td>
	  <td>99.997500</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.000001</td>
	  <td>0.000001</td>
	  <td>20.000000</td>
	  <td>NaN</td>
	  <td>61711.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>3348</th>
	  <td>207781.0</td>
	  <td>20220215.400000</td>
	  <td>2022-01-27</td>
	  <td>99.997361</td>
	  <td>99.997889</td>
	  <td>99.997625</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.000001</td>
	  <td>0.000001</td>
	  <td>19.000000</td>
	  <td>NaN</td>
	  <td>61711.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>3349</th>
	  <td>207781.0</td>
	  <td>20220215.400000</td>
	  <td>2022-01-28</td>
	  <td>99.997750</td>
	  <td>99.998250</td>
	  <td>99.998000</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.000004</td>
	  <td>0.000001</td>
	  <td>18.000000</td>
	  <td>NaN</td>
	  <td>61711.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>3350</th>
	  <td>207781.0</td>
	  <td>20220215.400000</td>
	  <td>2022-01-31</td>
	  <td>99.998125</td>
	  <td>99.998542</td>
	  <td>99.998333</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.000003</td>
	  <td>0.000001</td>
	  <td>15.000000</td>
	  <td>NaN</td>
	  <td>116020.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
  </tbody>
</table>
<p>3351 rows × 17 columns</p>
</div>

# Get Timeseries for certain issues

```python
KEYNO_ts = (207816,207818)

SQL_QUERY = f'select * from crsp_m_treasuries.tfz_dly where kytreasno in {KEYNO_ts}'

ts_issue = db.raw_sql(SQL_QUERY)
ts_issue
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
	  <th>kytreasno</th>
	  <th>kycrspid</th>
	  <th>caldt</th>
	  <th>tdbid</th>
	  <th>tdask</th>
	  <th>tdnomprc</th>
	  <th>tdnomprc_flg</th>
	  <th>tdsourcr</th>
	  <th>tdaccint</th>
	  <th>tdretnua</th>
	  <th>tdyld</th>
	  <th>tdduratn</th>
	  <th>tdpubout</th>
	  <th>tdtotout</th>
	  <th>tdpdint</th>
	  <th>tdidxratio</th>
	  <th>tdidxratio_flg</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>207818.0</td>
	  <td>20221229.400000</td>
	  <td>2022-01-12</td>
	  <td>99.561250</td>
	  <td>99.571000</td>
	  <td>99.566125</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>-0.000110</td>
	  <td>0.000012</td>
	  <td>351.0</td>
	  <td>None</td>
	  <td>38798.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>207816.0</td>
	  <td>20220630.400000</td>
	  <td>2022-03-23</td>
	  <td>99.862500</td>
	  <td>99.865250</td>
	  <td>99.863875</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.000097</td>
	  <td>0.000014</td>
	  <td>99.0</td>
	  <td>None</td>
	  <td>58198.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>207816.0</td>
	  <td>20220630.400000</td>
	  <td>2022-03-24</td>
	  <td>99.861167</td>
	  <td>99.863889</td>
	  <td>99.862528</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>-0.000013</td>
	  <td>0.000014</td>
	  <td>98.0</td>
	  <td>None</td>
	  <td>58198.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>207816.0</td>
	  <td>20220630.400000</td>
	  <td>2022-03-25</td>
	  <td>99.846417</td>
	  <td>99.859889</td>
	  <td>99.853153</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>-0.000094</td>
	  <td>0.000015</td>
	  <td>97.0</td>
	  <td>None</td>
	  <td>58198.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>207816.0</td>
	  <td>20220630.400000</td>
	  <td>2022-03-28</td>
	  <td>99.848556</td>
	  <td>99.853778</td>
	  <td>99.851167</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>-0.000020</td>
	  <td>0.000016</td>
	  <td>94.0</td>
	  <td>None</td>
	  <td>58198.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
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
	</tr>
	<tr>
	  <th>211</th>
	  <td>207818.0</td>
	  <td>20221229.400000</td>
	  <td>2022-03-25</td>
	  <td>99.062250</td>
	  <td>99.070000</td>
	  <td>99.066125</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>-0.001240</td>
	  <td>0.000034</td>
	  <td>279.0</td>
	  <td>None</td>
	  <td>38798.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>212</th>
	  <td>207818.0</td>
	  <td>20221229.400000</td>
	  <td>2022-03-28</td>
	  <td>98.988000</td>
	  <td>99.041667</td>
	  <td>99.014833</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>-0.000518</td>
	  <td>0.000036</td>
	  <td>276.0</td>
	  <td>None</td>
	  <td>38798.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>213</th>
	  <td>207818.0</td>
	  <td>20221229.400000</td>
	  <td>2022-03-29</td>
	  <td>99.018403</td>
	  <td>99.083333</td>
	  <td>99.050868</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.000364</td>
	  <td>0.000035</td>
	  <td>275.0</td>
	  <td>None</td>
	  <td>38798.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>214</th>
	  <td>207818.0</td>
	  <td>20221229.400000</td>
	  <td>2022-03-30</td>
	  <td>99.079056</td>
	  <td>99.086667</td>
	  <td>99.082861</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.000323</td>
	  <td>0.000034</td>
	  <td>274.0</td>
	  <td>None</td>
	  <td>38798.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
	<tr>
	  <th>215</th>
	  <td>207818.0</td>
	  <td>20221229.400000</td>
	  <td>2022-03-31</td>
	  <td>99.082417</td>
	  <td>99.090000</td>
	  <td>99.086208</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>0.000034</td>
	  <td>0.000034</td>
	  <td>273.0</td>
	  <td>None</td>
	  <td>38798.0</td>
	  <td>0.0</td>
	  <td>None</td>
	  <td>None</td>
	</tr>
  </tbody>
</table>
<p>216 rows × 17 columns</p>
</div>

# Get Timeseries for TIPS issues

```python
KEYNO_tips = (207431,206999,207009)

SQL_QUERY = f'select * from crsp_m_treasuries.tfz_dly where kytreasno in {KEYNO_tips}'

ts_issue_tips = db.raw_sql(SQL_QUERY)
ts_issue_tips
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
	  <th>kytreasno</th>
	  <th>kycrspid</th>
	  <th>caldt</th>
	  <th>tdbid</th>
	  <th>tdask</th>
	  <th>tdnomprc</th>
	  <th>tdnomprc_flg</th>
	  <th>tdsourcr</th>
	  <th>tdaccint</th>
	  <th>tdretnua</th>
	  <th>tdyld</th>
	  <th>tdduratn</th>
	  <th>tdpubout</th>
	  <th>tdtotout</th>
	  <th>tdpdint</th>
	  <th>tdidxratio</th>
	  <th>tdidxratio_flg</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>207431.0</td>
	  <td>20241015.C00120</td>
	  <td>2019-10-10</td>
	  <td>99.765625</td>
	  <td>99.796875</td>
	  <td>99.781250</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>0.0</td>
	  <td>1.00001</td>
	  <td>C</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>206999.0</td>
	  <td>20260715.C00120</td>
	  <td>2016-12-23</td>
	  <td>95.968750</td>
	  <td>96.101562</td>
	  <td>96.035156</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>23999.0</td>
	  <td>37103.0</td>
	  <td>0.0</td>
	  <td>1.00809</td>
	  <td>C</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>206999.0</td>
	  <td>20260715.C00120</td>
	  <td>2016-12-27</td>
	  <td>95.917969</td>
	  <td>96.050781</td>
	  <td>95.984375</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>23999.0</td>
	  <td>37103.0</td>
	  <td>0.0</td>
	  <td>1.00826</td>
	  <td>C</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>206999.0</td>
	  <td>20260715.C00120</td>
	  <td>2016-12-28</td>
	  <td>96.121094</td>
	  <td>96.253906</td>
	  <td>96.187500</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>23999.0</td>
	  <td>37103.0</td>
	  <td>0.0</td>
	  <td>1.00830</td>
	  <td>C</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>206999.0</td>
	  <td>20260715.C00120</td>
	  <td>2016-12-29</td>
	  <td>96.214844</td>
	  <td>96.347656</td>
	  <td>96.281250</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>23999.0</td>
	  <td>37103.0</td>
	  <td>0.0</td>
	  <td>1.00834</td>
	  <td>C</td>
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
	</tr>
	<tr>
	  <th>3580</th>
	  <td>207431.0</td>
	  <td>20241015.C00120</td>
	  <td>2022-05-24</td>
	  <td>102.863281</td>
	  <td>102.898438</td>
	  <td>102.880859</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>31724.0</td>
	  <td>38889.0</td>
	  <td>0.0</td>
	  <td>1.11678</td>
	  <td>C</td>
	</tr>
	<tr>
	  <th>3581</th>
	  <td>207431.0</td>
	  <td>20241015.C00120</td>
	  <td>2022-05-25</td>
	  <td>102.882812</td>
	  <td>102.917969</td>
	  <td>102.900391</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>31724.0</td>
	  <td>38889.0</td>
	  <td>0.0</td>
	  <td>1.11725</td>
	  <td>C</td>
	</tr>
	<tr>
	  <th>3582</th>
	  <td>207431.0</td>
	  <td>20241015.C00120</td>
	  <td>2022-05-26</td>
	  <td>103.136719</td>
	  <td>103.171875</td>
	  <td>103.154297</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>31724.0</td>
	  <td>38889.0</td>
	  <td>0.0</td>
	  <td>1.11773</td>
	  <td>C</td>
	</tr>
	<tr>
	  <th>3583</th>
	  <td>207431.0</td>
	  <td>20241015.C00120</td>
	  <td>2022-05-27</td>
	  <td>103.109375</td>
	  <td>103.144531</td>
	  <td>103.126953</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>31724.0</td>
	  <td>38889.0</td>
	  <td>0.0</td>
	  <td>1.11821</td>
	  <td>C</td>
	</tr>
	<tr>
	  <th>3584</th>
	  <td>207431.0</td>
	  <td>20241015.C00120</td>
	  <td>2022-05-31</td>
	  <td>102.972656</td>
	  <td>103.007812</td>
	  <td>102.990234</td>
	  <td>M</td>
	  <td>I</td>
	  <td>0.0</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>31724.0</td>
	  <td>39415.0</td>
	  <td>0.0</td>
	  <td>1.12011</td>
	  <td>C</td>
	</tr>
  </tbody>
</table>
<p>3585 rows × 17 columns</p>
</div>

# Get Timeseries for Duration Analysis

```python
KEYNO_ts_duration = (207392, 207391, 207457)
SQL_QUERY = f'select * from crsp_m_treasuries.tfz_dly where kytreasno in {KEYNO_ts_duration}'
ts_issue_duration = db.raw_sql(SQL_QUERY)
ts_issue_duration

infoflds = ['tdatdt','tmatdt','tcouprt','itype']
labels = ['issue date','maturity date','coupon rate','security type']
rename_dict = {infoflds[i]:labels[i] for i in range(len(infoflds))}
info_ts_duration = data_iss.set_index('kytreasno').loc[list(KEYNO_ts_duration),infoflds].rename(columns=rename_dict)
```

# Save to Excel

```python
outfile = f'../data/treasury_quotes_{DATE}.xlsx'
with pd.ExcelWriter(outfile) as writer:  
    data.to_excel(writer, sheet_name= 'quotes', index=False)
```

```python
outfile = f'../data/treasury_ts_{MATDT}.xlsx'
with pd.ExcelWriter(outfile) as writer:  
    ts.to_excel(writer, sheet_name= 'ts', index=False)
```

```python
outfile = f'../data/treasury_ts_issue_{KEYNO_ts}.xlsx'
with pd.ExcelWriter(outfile) as writer:  
    ts_issue.to_excel(writer, sheet_name= 'ts', index=False)
```

```python
outfile = f'../data/treasury_ts_issue_TIPS_{KEYNO_tips}.xlsx'
with pd.ExcelWriter(outfile) as writer:  
    ts_issue_tips.to_excel(writer, sheet_name= 'ts', index=False)
```

```python
outfile = f'../data/yields.xlsx'
with pd.ExcelWriter(outfile) as writer:
    data_ft.to_excel(writer, sheet_name= 'yields', index=True)
```

```python
outfile = f'../data/treasury_ts_issue_duration_{KEYNO_ts_duration}.xlsx'
with pd.ExcelWriter(outfile) as writer:  
    info_ts_duration.to_excel(writer, sheet_name= 'info', index=True)
    ts_issue_duration.to_excel(writer, sheet_name= 'ts', index=False)
```

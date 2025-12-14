---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Build Final Exam Data
---

# Build Final Exam Data

```python
import numpy as np
import pandas as pd

from datetime import date
from datetime import datetime

import sys
sys.path.insert(0, '../cmds')
from ficcvol import *
from binomial import *
from ratecurves import *
from treasury_cmds import compound_rate
from volskew import *

import datetime
```

```python
DATE = '2024-03-05'
```

```python
SAVEDATA = True
FILEOUT = f'../data/exam_data_{DATE}.xlsx'
```

# Curves

```python
freqcurve = 4
curves = pd.read_excel(f'../data/cap_curves_{DATE}.xlsx', sheet_name=f'rate curves {DATE}').set_index('tenor')
```

## Limit maturity

```python
LIMIT = 3
curves = curves.loc[:LIMIT]
```

```python
curves.style.format('{:.2%}').format_index('{:.2f}')
```

<style type="text/css">
</style>
<table id="T_792c8">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_792c8_level0_col0" class="col_heading level0 col0" >swap rates</th>
	  <th id="T_792c8_level0_col1" class="col_heading level0 col1" >spot rates</th>
	  <th id="T_792c8_level0_col2" class="col_heading level0 col2" >discounts</th>
	  <th id="T_792c8_level0_col3" class="col_heading level0 col3" >forwards</th>
	  <th id="T_792c8_level0_col4" class="col_heading level0 col4" >flat vols</th>
	  <th id="T_792c8_level0_col5" class="col_heading level0 col5" >fwd vols</th>
	</tr>
	<tr>
	  <th class="index_name level0" >tenor</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_792c8_level0_row0" class="row_heading level0 row0" >0.25</th>
	  <td id="T_792c8_row0_col0" class="data row0 col0" >5.22%</td>
	  <td id="T_792c8_row0_col1" class="data row0 col1" >5.22%</td>
	  <td id="T_792c8_row0_col2" class="data row0 col2" >98.71%</td>
	  <td id="T_792c8_row0_col3" class="data row0 col3" >nan%</td>
	  <td id="T_792c8_row0_col4" class="data row0 col4" >nan%</td>
	  <td id="T_792c8_row0_col5" class="data row0 col5" >nan%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row1" class="row_heading level0 row1" >0.50</th>
	  <td id="T_792c8_row1_col0" class="data row1 col0" >5.15%</td>
	  <td id="T_792c8_row1_col1" class="data row1 col1" >5.15%</td>
	  <td id="T_792c8_row1_col2" class="data row1 col2" >97.48%</td>
	  <td id="T_792c8_row1_col3" class="data row1 col3" >5.07%</td>
	  <td id="T_792c8_row1_col4" class="data row1 col4" >14.05%</td>
	  <td id="T_792c8_row1_col5" class="data row1 col5" >14.05%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row2" class="row_heading level0 row2" >0.75</th>
	  <td id="T_792c8_row2_col0" class="data row2 col0" >5.04%</td>
	  <td id="T_792c8_row2_col1" class="data row2 col1" >5.04%</td>
	  <td id="T_792c8_row2_col2" class="data row2 col2" >96.31%</td>
	  <td id="T_792c8_row2_col3" class="data row2 col3" >4.83%</td>
	  <td id="T_792c8_row2_col4" class="data row2 col4" >16.19%</td>
	  <td id="T_792c8_row2_col5" class="data row2 col5" >17.86%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row3" class="row_heading level0 row3" >1.00</th>
	  <td id="T_792c8_row3_col0" class="data row3 col0" >4.92%</td>
	  <td id="T_792c8_row3_col1" class="data row3 col1" >4.92%</td>
	  <td id="T_792c8_row3_col2" class="data row3 col2" >95.23%</td>
	  <td id="T_792c8_row3_col3" class="data row3 col3" >4.56%</td>
	  <td id="T_792c8_row3_col4" class="data row3 col4" >18.33%</td>
	  <td id="T_792c8_row3_col5" class="data row3 col5" >21.53%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row4" class="row_heading level0 row4" >1.25</th>
	  <td id="T_792c8_row4_col0" class="data row4 col0" >4.75%</td>
	  <td id="T_792c8_row4_col1" class="data row4 col1" >4.75%</td>
	  <td id="T_792c8_row4_col2" class="data row4 col2" >94.27%</td>
	  <td id="T_792c8_row4_col3" class="data row4 col3" >4.05%</td>
	  <td id="T_792c8_row4_col4" class="data row4 col4" >23.38%</td>
	  <td id="T_792c8_row4_col5" class="data row4 col5" >35.39%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row5" class="row_heading level0 row5" >1.50</th>
	  <td id="T_792c8_row5_col0" class="data row5 col0" >4.61%</td>
	  <td id="T_792c8_row5_col1" class="data row5 col1" >4.60%</td>
	  <td id="T_792c8_row5_col2" class="data row5 col2" >93.37%</td>
	  <td id="T_792c8_row5_col3" class="data row5 col3" >3.88%</td>
	  <td id="T_792c8_row5_col4" class="data row5 col4" >27.29%</td>
	  <td id="T_792c8_row5_col5" class="data row5 col5" >37.77%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row6" class="row_heading level0 row6" >1.75</th>
	  <td id="T_792c8_row6_col0" class="data row6 col0" >4.49%</td>
	  <td id="T_792c8_row6_col1" class="data row6 col1" >4.48%</td>
	  <td id="T_792c8_row6_col2" class="data row6 col2" >92.50%</td>
	  <td id="T_792c8_row6_col3" class="data row6 col3" >3.75%</td>
	  <td id="T_792c8_row6_col4" class="data row6 col4" >30.22%</td>
	  <td id="T_792c8_row6_col5" class="data row6 col5" >39.36%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row7" class="row_heading level0 row7" >2.00</th>
	  <td id="T_792c8_row7_col0" class="data row7 col0" >4.39%</td>
	  <td id="T_792c8_row7_col1" class="data row7 col1" >4.38%</td>
	  <td id="T_792c8_row7_col2" class="data row7 col2" >91.66%</td>
	  <td id="T_792c8_row7_col3" class="data row7 col3" >3.66%</td>
	  <td id="T_792c8_row7_col4" class="data row7 col4" >32.33%</td>
	  <td id="T_792c8_row7_col5" class="data row7 col5" >39.89%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row8" class="row_heading level0 row8" >2.25</th>
	  <td id="T_792c8_row8_col0" class="data row8 col0" >4.29%</td>
	  <td id="T_792c8_row8_col1" class="data row8 col1" >4.27%</td>
	  <td id="T_792c8_row8_col2" class="data row8 col2" >90.88%</td>
	  <td id="T_792c8_row8_col3" class="data row8 col3" >3.44%</td>
	  <td id="T_792c8_row8_col4" class="data row8 col4" >33.77%</td>
	  <td id="T_792c8_row8_col5" class="data row8 col5" >39.50%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row9" class="row_heading level0 row9" >2.50</th>
	  <td id="T_792c8_row9_col0" class="data row9 col0" >4.21%</td>
	  <td id="T_792c8_row9_col1" class="data row9 col1" >4.19%</td>
	  <td id="T_792c8_row9_col2" class="data row9 col2" >90.10%</td>
	  <td id="T_792c8_row9_col3" class="data row9 col3" >3.47%</td>
	  <td id="T_792c8_row9_col4" class="data row9 col4" >34.71%</td>
	  <td id="T_792c8_row9_col5" class="data row9 col5" >38.64%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row10" class="row_heading level0 row10" >2.75</th>
	  <td id="T_792c8_row10_col0" class="data row10 col0" >4.15%</td>
	  <td id="T_792c8_row10_col1" class="data row10 col1" >4.13%</td>
	  <td id="T_792c8_row10_col2" class="data row10 col2" >89.31%</td>
	  <td id="T_792c8_row10_col3" class="data row10 col3" >3.51%</td>
	  <td id="T_792c8_row10_col4" class="data row10 col4" >35.30%</td>
	  <td id="T_792c8_row10_col5" class="data row10 col5" >37.89%</td>
	</tr>
	<tr>
	  <th id="T_792c8_level0_row11" class="row_heading level0 row11" >3.00</th>
	  <td id="T_792c8_row11_col0" class="data row11 col0" >4.10%</td>
	  <td id="T_792c8_row11_col1" class="data row11 col1" >4.08%</td>
	  <td id="T_792c8_row11_col2" class="data row11 col2" >88.53%</td>
	  <td id="T_792c8_row11_col3" class="data row11 col3" >3.54%</td>
	  <td id="T_792c8_row11_col4" class="data row11 col4" >35.69%</td>
	  <td id="T_792c8_row11_col5" class="data row11 col5" >37.56%</td>
	</tr>
  </tbody>
</table>

# BDT

```python
sigmas = curves['fwd vols']
sigmas.iloc[0] = sigmas.iloc[1]
sigmas.index = sigmas.index.to_numpy().round(6)

theta, ratetree = estimate_theta(sigmas,100*curves.loc[:,'discounts'])
format_bintree(ratetree,style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_2ea5d">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_2ea5d_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_2ea5d_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_2ea5d_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_2ea5d_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_2ea5d_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_2ea5d_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_2ea5d_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_2ea5d_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_2ea5d_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_2ea5d_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_2ea5d_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_2ea5d_level0_col11" class="col_heading level0 col11" >2.75</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	  <th class="blank col8" >&nbsp;</th>
	  <th class="blank col9" >&nbsp;</th>
	  <th class="blank col10" >&nbsp;</th>
	  <th class="blank col11" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_2ea5d_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_2ea5d_row0_col0" class="data row0 col0" >5.19%</td>
	  <td id="T_2ea5d_row0_col1" class="data row0 col1" >5.39%</td>
	  <td id="T_2ea5d_row0_col2" class="data row0 col2" >5.54%</td>
	  <td id="T_2ea5d_row0_col3" class="data row0 col3" >5.69%</td>
	  <td id="T_2ea5d_row0_col4" class="data row0 col4" >5.57%</td>
	  <td id="T_2ea5d_row0_col5" class="data row0 col5" >5.94%</td>
	  <td id="T_2ea5d_row0_col6" class="data row0 col6" >6.49%</td>
	  <td id="T_2ea5d_row0_col7" class="data row0 col7" >7.25%</td>
	  <td id="T_2ea5d_row0_col8" class="data row0 col8" >7.87%</td>
	  <td id="T_2ea5d_row0_col9" class="data row0 col9" >9.23%</td>
	  <td id="T_2ea5d_row0_col10" class="data row0 col10" >10.98%</td>
	  <td id="T_2ea5d_row0_col11" class="data row0 col11" >13.04%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_2ea5d_row1_col0" class="data row1 col0" ></td>
	  <td id="T_2ea5d_row1_col1" class="data row1 col1" >4.69%</td>
	  <td id="T_2ea5d_row1_col2" class="data row1 col2" >4.82%</td>
	  <td id="T_2ea5d_row1_col3" class="data row1 col3" >4.95%</td>
	  <td id="T_2ea5d_row1_col4" class="data row1 col4" >4.84%</td>
	  <td id="T_2ea5d_row1_col5" class="data row1 col5" >5.16%</td>
	  <td id="T_2ea5d_row1_col6" class="data row1 col6" >5.64%</td>
	  <td id="T_2ea5d_row1_col7" class="data row1 col7" >6.30%</td>
	  <td id="T_2ea5d_row1_col8" class="data row1 col8" >6.83%</td>
	  <td id="T_2ea5d_row1_col9" class="data row1 col9" >8.02%</td>
	  <td id="T_2ea5d_row1_col10" class="data row1 col10" >9.54%</td>
	  <td id="T_2ea5d_row1_col11" class="data row1 col11" >11.33%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_2ea5d_row2_col0" class="data row2 col0" ></td>
	  <td id="T_2ea5d_row2_col1" class="data row2 col1" ></td>
	  <td id="T_2ea5d_row2_col2" class="data row2 col2" >4.03%</td>
	  <td id="T_2ea5d_row2_col3" class="data row2 col3" >4.14%</td>
	  <td id="T_2ea5d_row2_col4" class="data row2 col4" >4.05%</td>
	  <td id="T_2ea5d_row2_col5" class="data row2 col5" >4.32%</td>
	  <td id="T_2ea5d_row2_col6" class="data row2 col6" >4.71%</td>
	  <td id="T_2ea5d_row2_col7" class="data row2 col7" >5.27%</td>
	  <td id="T_2ea5d_row2_col8" class="data row2 col8" >5.72%</td>
	  <td id="T_2ea5d_row2_col9" class="data row2 col9" >6.71%</td>
	  <td id="T_2ea5d_row2_col10" class="data row2 col10" >7.98%</td>
	  <td id="T_2ea5d_row2_col11" class="data row2 col11" >9.47%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_2ea5d_row3_col0" class="data row3 col0" ></td>
	  <td id="T_2ea5d_row3_col1" class="data row3 col1" ></td>
	  <td id="T_2ea5d_row3_col2" class="data row3 col2" ></td>
	  <td id="T_2ea5d_row3_col3" class="data row3 col3" >3.34%</td>
	  <td id="T_2ea5d_row3_col4" class="data row3 col4" >3.26%</td>
	  <td id="T_2ea5d_row3_col5" class="data row3 col5" >3.48%</td>
	  <td id="T_2ea5d_row3_col6" class="data row3 col6" >3.80%</td>
	  <td id="T_2ea5d_row3_col7" class="data row3 col7" >4.25%</td>
	  <td id="T_2ea5d_row3_col8" class="data row3 col8" >4.61%</td>
	  <td id="T_2ea5d_row3_col9" class="data row3 col9" >5.41%</td>
	  <td id="T_2ea5d_row3_col10" class="data row3 col10" >6.43%</td>
	  <td id="T_2ea5d_row3_col11" class="data row3 col11" >7.64%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_2ea5d_row4_col0" class="data row4 col0" ></td>
	  <td id="T_2ea5d_row4_col1" class="data row4 col1" ></td>
	  <td id="T_2ea5d_row4_col2" class="data row4 col2" ></td>
	  <td id="T_2ea5d_row4_col3" class="data row4 col3" ></td>
	  <td id="T_2ea5d_row4_col4" class="data row4 col4" >2.29%</td>
	  <td id="T_2ea5d_row4_col5" class="data row4 col5" >2.44%</td>
	  <td id="T_2ea5d_row4_col6" class="data row4 col6" >2.67%</td>
	  <td id="T_2ea5d_row4_col7" class="data row4 col7" >2.98%</td>
	  <td id="T_2ea5d_row4_col8" class="data row4 col8" >3.24%</td>
	  <td id="T_2ea5d_row4_col9" class="data row4 col9" >3.80%</td>
	  <td id="T_2ea5d_row4_col10" class="data row4 col10" >4.52%</td>
	  <td id="T_2ea5d_row4_col11" class="data row4 col11" >5.36%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_2ea5d_row5_col0" class="data row5 col0" ></td>
	  <td id="T_2ea5d_row5_col1" class="data row5 col1" ></td>
	  <td id="T_2ea5d_row5_col2" class="data row5 col2" ></td>
	  <td id="T_2ea5d_row5_col3" class="data row5 col3" ></td>
	  <td id="T_2ea5d_row5_col4" class="data row5 col4" ></td>
	  <td id="T_2ea5d_row5_col5" class="data row5 col5" >1.68%</td>
	  <td id="T_2ea5d_row5_col6" class="data row5 col6" >1.83%</td>
	  <td id="T_2ea5d_row5_col7" class="data row5 col7" >2.04%</td>
	  <td id="T_2ea5d_row5_col8" class="data row5 col8" >2.22%</td>
	  <td id="T_2ea5d_row5_col9" class="data row5 col9" >2.60%</td>
	  <td id="T_2ea5d_row5_col10" class="data row5 col10" >3.10%</td>
	  <td id="T_2ea5d_row5_col11" class="data row5 col11" >3.68%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_2ea5d_row6_col0" class="data row6 col0" ></td>
	  <td id="T_2ea5d_row6_col1" class="data row6 col1" ></td>
	  <td id="T_2ea5d_row6_col2" class="data row6 col2" ></td>
	  <td id="T_2ea5d_row6_col3" class="data row6 col3" ></td>
	  <td id="T_2ea5d_row6_col4" class="data row6 col4" ></td>
	  <td id="T_2ea5d_row6_col5" class="data row6 col5" ></td>
	  <td id="T_2ea5d_row6_col6" class="data row6 col6" >1.23%</td>
	  <td id="T_2ea5d_row6_col7" class="data row6 col7" >1.38%</td>
	  <td id="T_2ea5d_row6_col8" class="data row6 col8" >1.50%</td>
	  <td id="T_2ea5d_row6_col9" class="data row6 col9" >1.76%</td>
	  <td id="T_2ea5d_row6_col10" class="data row6 col10" >2.09%</td>
	  <td id="T_2ea5d_row6_col11" class="data row6 col11" >2.48%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_2ea5d_row7_col0" class="data row7 col0" ></td>
	  <td id="T_2ea5d_row7_col1" class="data row7 col1" ></td>
	  <td id="T_2ea5d_row7_col2" class="data row7 col2" ></td>
	  <td id="T_2ea5d_row7_col3" class="data row7 col3" ></td>
	  <td id="T_2ea5d_row7_col4" class="data row7 col4" ></td>
	  <td id="T_2ea5d_row7_col5" class="data row7 col5" ></td>
	  <td id="T_2ea5d_row7_col6" class="data row7 col6" ></td>
	  <td id="T_2ea5d_row7_col7" class="data row7 col7" >0.93%</td>
	  <td id="T_2ea5d_row7_col8" class="data row7 col8" >1.00%</td>
	  <td id="T_2ea5d_row7_col9" class="data row7 col9" >1.18%</td>
	  <td id="T_2ea5d_row7_col10" class="data row7 col10" >1.40%</td>
	  <td id="T_2ea5d_row7_col11" class="data row7 col11" >1.66%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_2ea5d_row8_col0" class="data row8 col0" ></td>
	  <td id="T_2ea5d_row8_col1" class="data row8 col1" ></td>
	  <td id="T_2ea5d_row8_col2" class="data row8 col2" ></td>
	  <td id="T_2ea5d_row8_col3" class="data row8 col3" ></td>
	  <td id="T_2ea5d_row8_col4" class="data row8 col4" ></td>
	  <td id="T_2ea5d_row8_col5" class="data row8 col5" ></td>
	  <td id="T_2ea5d_row8_col6" class="data row8 col6" ></td>
	  <td id="T_2ea5d_row8_col7" class="data row8 col7" ></td>
	  <td id="T_2ea5d_row8_col8" class="data row8 col8" >0.68%</td>
	  <td id="T_2ea5d_row8_col9" class="data row8 col9" >0.79%</td>
	  <td id="T_2ea5d_row8_col10" class="data row8 col10" >0.94%</td>
	  <td id="T_2ea5d_row8_col11" class="data row8 col11" >1.12%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_2ea5d_row9_col0" class="data row9 col0" ></td>
	  <td id="T_2ea5d_row9_col1" class="data row9 col1" ></td>
	  <td id="T_2ea5d_row9_col2" class="data row9 col2" ></td>
	  <td id="T_2ea5d_row9_col3" class="data row9 col3" ></td>
	  <td id="T_2ea5d_row9_col4" class="data row9 col4" ></td>
	  <td id="T_2ea5d_row9_col5" class="data row9 col5" ></td>
	  <td id="T_2ea5d_row9_col6" class="data row9 col6" ></td>
	  <td id="T_2ea5d_row9_col7" class="data row9 col7" ></td>
	  <td id="T_2ea5d_row9_col8" class="data row9 col8" ></td>
	  <td id="T_2ea5d_row9_col9" class="data row9 col9" >0.54%</td>
	  <td id="T_2ea5d_row9_col10" class="data row9 col10" >0.64%</td>
	  <td id="T_2ea5d_row9_col11" class="data row9 col11" >0.76%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_2ea5d_row10_col0" class="data row10 col0" ></td>
	  <td id="T_2ea5d_row10_col1" class="data row10 col1" ></td>
	  <td id="T_2ea5d_row10_col2" class="data row10 col2" ></td>
	  <td id="T_2ea5d_row10_col3" class="data row10 col3" ></td>
	  <td id="T_2ea5d_row10_col4" class="data row10 col4" ></td>
	  <td id="T_2ea5d_row10_col5" class="data row10 col5" ></td>
	  <td id="T_2ea5d_row10_col6" class="data row10 col6" ></td>
	  <td id="T_2ea5d_row10_col7" class="data row10 col7" ></td>
	  <td id="T_2ea5d_row10_col8" class="data row10 col8" ></td>
	  <td id="T_2ea5d_row10_col9" class="data row10 col9" ></td>
	  <td id="T_2ea5d_row10_col10" class="data row10 col10" >0.44%</td>
	  <td id="T_2ea5d_row10_col11" class="data row10 col11" >0.52%</td>
	</tr>
	<tr>
	  <th id="T_2ea5d_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_2ea5d_row11_col0" class="data row11 col0" ></td>
	  <td id="T_2ea5d_row11_col1" class="data row11 col1" ></td>
	  <td id="T_2ea5d_row11_col2" class="data row11 col2" ></td>
	  <td id="T_2ea5d_row11_col3" class="data row11 col3" ></td>
	  <td id="T_2ea5d_row11_col4" class="data row11 col4" ></td>
	  <td id="T_2ea5d_row11_col5" class="data row11 col5" ></td>
	  <td id="T_2ea5d_row11_col6" class="data row11 col6" ></td>
	  <td id="T_2ea5d_row11_col7" class="data row11 col7" ></td>
	  <td id="T_2ea5d_row11_col8" class="data row11 col8" ></td>
	  <td id="T_2ea5d_row11_col9" class="data row11 col9" ></td>
	  <td id="T_2ea5d_row11_col10" class="data row11 col10" ></td>
	  <td id="T_2ea5d_row11_col11" class="data row11 col11" >0.36%</td>
	</tr>
  </tbody>
</table>

# Vol Skew

These are input manually from Bloomberg's `VCUB` dashboard.

```python
voldata = pd.read_excel('../data/swaption_vol_data_registry.xlsx')
voldata
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
	  <th>reference</th>
	  <th>instrument</th>
	  <th>model</th>
	  <th>date</th>
	  <th>expiration</th>
	  <th>tenor</th>
	  <th>-300</th>
	  <th>-200</th>
	  <th>-100</th>
	  <th>-50</th>
	  <th>-25</th>
	  <th>0</th>
	  <th>25</th>
	  <th>50</th>
	  <th>100</th>
	  <th>200</th>
	  <th>300</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>SOFR</td>
	  <td>swaption</td>
	  <td>black</td>
	  <td>2024-03-05</td>
	  <td>2.00</td>
	  <td>2</td>
	  <td>100.35</td>
	  <td>57.70</td>
	  <td>42.28</td>
	  <td>37.82</td>
	  <td>36.15</td>
	  <td>34.80</td>
	  <td>33.74</td>
	  <td>32.93</td>
	  <td>31.94</td>
	  <td>31.56</td>
	  <td>32.14</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>SOFR</td>
	  <td>swaption</td>
	  <td>black</td>
	  <td>2024-03-05</td>
	  <td>2.00</td>
	  <td>3</td>
	  <td>96.27</td>
	  <td>55.55</td>
	  <td>40.93</td>
	  <td>36.76</td>
	  <td>35.21</td>
	  <td>33.97</td>
	  <td>33.01</td>
	  <td>32.28</td>
	  <td>31.41</td>
	  <td>31.13</td>
	  <td>31.73</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>SOFR</td>
	  <td>swaption</td>
	  <td>black</td>
	  <td>2024-03-05</td>
	  <td>0.25</td>
	  <td>3</td>
	  <td>92.74</td>
	  <td>55.24</td>
	  <td>42.59</td>
	  <td>39.23</td>
	  <td>38.02</td>
	  <td>37.06</td>
	  <td>36.32</td>
	  <td>35.76</td>
	  <td>35.07</td>
	  <td>34.73</td>
	  <td>35.06</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>SOFR</td>
	  <td>swaption</td>
	  <td>black</td>
	  <td>2024-03-05</td>
	  <td>1.00</td>
	  <td>2</td>
	  <td>100.35</td>
	  <td>57.70</td>
	  <td>42.28</td>
	  <td>37.82</td>
	  <td>36.15</td>
	  <td>34.80</td>
	  <td>33.74</td>
	  <td>32.93</td>
	  <td>31.94</td>
	  <td>31.56</td>
	  <td>32.14</td>
	</tr>
  </tbody>
</table>
</div>

```python
IDVOLSKEW = 3
voldata = voldata.loc[[IDVOLSKEW],:]
```

# SABR Fit

```python
SWAP_TYPE = 'SOFR'
QUOTE_STYLE = 'black'
RELATIVE_STRIKE = 0

expry = 1
tenor = 2

freqswap = 4

Topt = expry
Tswap = Topt+tenor
fwdswap = calc_fwdswaprate(curves['discounts'], Topt, Tswap, freqswap=freqswap)
```

```python
doSLIM = False
BETA = 0.25
F = fwdswap
```

```python
volquote = voldata.query(f'model=="{QUOTE_STYLE}"').query(f'reference=="{SWAP_TYPE}"').query(f'date=="{DATE}"')#.query(f'expiration=="{expry}"').query(f'tenor=="{tenor}"')
idx = (volquote['expiration']==expry) & (volquote['tenor']==tenor)
volquote = volquote.loc[idx]
volquote.index = ['implied vol']

strikerange = np.array(volquote.columns[-11:].tolist())
vols = volquote[strikerange]
vols /= 100
strikes = fwdswap + strikerange/100/100
idstrike = np.where(strikerange==RELATIVE_STRIKE)[0][0]

idstrikeATM = np.where(strikerange==0)[0][0]

if QUOTE_STYLE == 'normal':
    vols /= 100 * fwdrate

capvol = curves.loc[Topt,'fwd vols']

strikeATM = strikes[idstrikeATM]
volATM = vols.iloc[0,idstrikeATM]
```

```python
period_fwd = curves.index.get_loc(Topt)
period_swap = curves.index.get_loc(Tswap)+1
step = round(freqcurve/freqswap)

discount = curves['discounts'].iloc[period_fwd+step : period_swap : step].sum()/freqswap
blacks_quotes = vols.copy()
blacks_quotes.loc['strike'] = strikes
blacks_quotes = blacks_quotes.loc[['strike','implied vol']]

blacks_quotes.style.format('{:.4f}')
```

<style type="text/css">
</style>
<table id="T_8f5a6">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_8f5a6_level0_col0" class="col_heading level0 col0" >-300</th>
	  <th id="T_8f5a6_level0_col1" class="col_heading level0 col1" >-200</th>
	  <th id="T_8f5a6_level0_col2" class="col_heading level0 col2" >-100</th>
	  <th id="T_8f5a6_level0_col3" class="col_heading level0 col3" >-50</th>
	  <th id="T_8f5a6_level0_col4" class="col_heading level0 col4" >-25</th>
	  <th id="T_8f5a6_level0_col5" class="col_heading level0 col5" >0</th>
	  <th id="T_8f5a6_level0_col6" class="col_heading level0 col6" >25</th>
	  <th id="T_8f5a6_level0_col7" class="col_heading level0 col7" >50</th>
	  <th id="T_8f5a6_level0_col8" class="col_heading level0 col8" >100</th>
	  <th id="T_8f5a6_level0_col9" class="col_heading level0 col9" >200</th>
	  <th id="T_8f5a6_level0_col10" class="col_heading level0 col10" >300</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_8f5a6_level0_row0" class="row_heading level0 row0" >strike</th>
	  <td id="T_8f5a6_row0_col0" class="data row0 col0" >0.0067</td>
	  <td id="T_8f5a6_row0_col1" class="data row0 col1" >0.0167</td>
	  <td id="T_8f5a6_row0_col2" class="data row0 col2" >0.0267</td>
	  <td id="T_8f5a6_row0_col3" class="data row0 col3" >0.0317</td>
	  <td id="T_8f5a6_row0_col4" class="data row0 col4" >0.0342</td>
	  <td id="T_8f5a6_row0_col5" class="data row0 col5" >0.0367</td>
	  <td id="T_8f5a6_row0_col6" class="data row0 col6" >0.0392</td>
	  <td id="T_8f5a6_row0_col7" class="data row0 col7" >0.0417</td>
	  <td id="T_8f5a6_row0_col8" class="data row0 col8" >0.0467</td>
	  <td id="T_8f5a6_row0_col9" class="data row0 col9" >0.0567</td>
	  <td id="T_8f5a6_row0_col10" class="data row0 col10" >0.0667</td>
	</tr>
	<tr>
	  <th id="T_8f5a6_level0_row1" class="row_heading level0 row1" >implied vol</th>
	  <td id="T_8f5a6_row1_col0" class="data row1 col0" >1.0035</td>
	  <td id="T_8f5a6_row1_col1" class="data row1 col1" >0.5770</td>
	  <td id="T_8f5a6_row1_col2" class="data row1 col2" >0.4228</td>
	  <td id="T_8f5a6_row1_col3" class="data row1 col3" >0.3782</td>
	  <td id="T_8f5a6_row1_col4" class="data row1 col4" >0.3615</td>
	  <td id="T_8f5a6_row1_col5" class="data row1 col5" >0.3480</td>
	  <td id="T_8f5a6_row1_col6" class="data row1 col6" >0.3374</td>
	  <td id="T_8f5a6_row1_col7" class="data row1 col7" >0.3293</td>
	  <td id="T_8f5a6_row1_col8" class="data row1 col8" >0.3194</td>
	  <td id="T_8f5a6_row1_col9" class="data row1 col9" >0.3156</td>
	  <td id="T_8f5a6_row1_col10" class="data row1 col10" >0.3214</td>
	</tr>
  </tbody>
</table>

## Limit SABR fit to quotes within +/- 200bps

```python
vols = vols.loc[['implied vol'],-200:200]
strikes = strikes[1:-1]
```

```python
def obj_fun(xargs):
    nu = xargs[0]
    rho = xargs[1]
    alpha = xargs[2]
    
    ivolSABR = np.zeros(len(strikes))
    
    for i,strike in enumerate(strikes):
         ivolSABR[i] = sabr(BETA,nu,rho,alpha,F,strike,Topt)
    
    error = ((ivolSABR - vols.values)**2).sum()
    
    return error


def obj_fun_slim(xargs):
    nu = xargs[0]
    rho = xargs[1]
    ivolSABR = np.zeros(len(strikes))
    
    for i,strike in enumerate(strikes):
         ivolSABR[i] = sabr_slim(BETA,nu,rho,F,strike,Topt,volATM)
    
    error = ((ivolSABR - vols.values)**2).sum()
    
    return error
```

```python
if not doSLIM:
    x0 = np.array([.6,0,.1])
    fun = obj_fun
else:
    fun = obj_fun_slim
    x0 = np.array([.6,0,.1])

optim = minimize(fun,x0)
xstar = optim.x
nustar = xstar[0]
rhostar = xstar[1]

if doSLIM:
    alphastar = solve_alpha(BETA,nustar,rhostar,Topt,volATM,F)
    ivolSABR = sabr_slim(BETA,nustar,rhostar,F,strikes,Topt,volATM)
else:
    alphastar = xstar[2]
    ivolSABR = sabr(BETA,nustar,rhostar,alphastar,F,strikes,Topt)
    
error = optim.fun
```

    /Users/markhendricks/Projects/finm-fiderivs-2024/build_data/../cmds/volskew.py:76: RuntimeWarning: invalid value encountered in scalar divide
      sigmaB = (NUM/DEN) * (z/chi(z,rho))
    /Users/markhendricks/Projects/finm-fiderivs-2024/build_data/../cmds/volskew.py:76: RuntimeWarning: invalid value encountered in divide
      sigmaB = (NUM/DEN) * (z/chi(z,rho))

```python
sabrparams = pd.DataFrame([BETA,alphastar,nustar,rhostar],index=['beta','alpha','nu','rho'],columns=['estimate']).style.format('{:.4f}')
sabrparams.index.name = 'parameter'
```

# Vol Path

Picture of Vol Path for ED futures is a screenshot from `W.4.X.`.

## Save Data

```python
if SAVEDATA:    
    with pd.ExcelWriter(FILEOUT) as writer:  
        curves.to_excel(writer, sheet_name= f'rate curves', index=True)
        ratetree.to_excel(writer, sheet_name= f'rate tree', index=True)
        voldata.to_excel(writer, sheet_name= 'bloomberg vcub', index=False)
        sabrparams.to_excel(writer, sheet_name='sabr params', index=True)
```

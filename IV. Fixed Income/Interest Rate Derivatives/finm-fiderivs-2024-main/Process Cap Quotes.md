---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Process Cap Quotes
---

# Process Cap Quotes

This notebook 

* converts Bloomberg cap quotes into Black flat vols.
* interpolates the vol curve
* interpolates the SOFR swap curve from BB quotes.
* calculates swap, discount, and forward curves

User picks a date, and among the historic dates loaded, it builds the curves for this particular date.

Pair this notebook with `build_data/Build Cap Quotes - Bloomberg`.

```python
import numpy as np
import pandas as pd

import sys
sys.path.insert(0, '../cmds')
from ratecurves import *
from ficcvol import *
from treasury_cmds import compound_rate
from bondmath import bootstrap_discounts_clean

from datetime import datetime
import warnings
warnings.filterwarnings('ignore',category=FutureWarning)
```

```python
import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)
```

***

```python
FILEDATE = '2024-03-05'
FILEIN = f'../data/cap_quotes_{FILEDATE}'
BB_COMPOUND = 1 #compounding of quoted SOFR swaps
freqcap = 4
# can adjust frequency for binomial tree later, but keep quarterly to properly get caps
```

## Select Date for Analysis

```python
DATE = '2024-03-05'
```

## Export Curves to Excel

```python
SAVEDATA = True
FILEOUT = f'../data/cap_curves_{DATE}.xlsx'
```

# SOFR Quotes

```python
SHEET = 'sofr'
sofrdata_raw = pd.read_excel(f'{FILEIN}.xlsx', sheet_name=SHEET).set_index('date')
sofrdata_raw.columns = sofrdata_raw.loc['maturity'] 
sofrdata_raw.drop(index=['maturity'],inplace=True)
sofrdata_raw.index = pd.to_datetime(sofrdata_raw.index)

sofrdata_raw.columns.name ='maturity'
```

Bloomberg reports rates as percentages; convert to numbers.

```python
sofrdata_raw /= 100
```

Bloomberg allows downloading of ticker codes corresponding to 10.X years, but they are really just the 10-year code.

Called ticker list built to check all partial years, so it gets these redundant 10-year columns.

```python
sofrdata_raw = sofrdata_raw.T.drop_duplicates().T
```

## Get Curves

Need discount and forward curves.

Need to interpolate swap rates for quarterly frequency beyond $T=3$ (which is where Bloomberg moves from monthly to semiannual tenors.)

Many reasonable methods, try `cubicspline`.

### Compounding

Bloomberg is quoting the swap rates per the swap frequency.

SOFR swaps are listed as annual frequency.

For convenience of our `freqcap` grid, convert this compounding.

```python
sofrdata = sofrdata_raw.copy()
sofrdata = compound_rate(sofrdata,BB_COMPOUND,freqcap)
sofrdata.tail().style.format('{:.2%}').format_index('{:%Y-%m-%d}',axis=0).format_index('{:.2f}',axis=1)
```

<style type="text/css">
</style>
<table id="T_bb554">
  <thead>
	<tr>
	  <th class="index_name level0" >maturity</th>
	  <th id="T_bb554_level0_col0" class="col_heading level0 col0" >0.25</th>
	  <th id="T_bb554_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_bb554_level0_col2" class="col_heading level0 col2" >0.75</th>
	  <th id="T_bb554_level0_col3" class="col_heading level0 col3" >1.00</th>
	  <th id="T_bb554_level0_col4" class="col_heading level0 col4" >1.25</th>
	  <th id="T_bb554_level0_col5" class="col_heading level0 col5" >1.50</th>
	  <th id="T_bb554_level0_col6" class="col_heading level0 col6" >1.75</th>
	  <th id="T_bb554_level0_col7" class="col_heading level0 col7" >2.00</th>
	  <th id="T_bb554_level0_col8" class="col_heading level0 col8" >2.25</th>
	  <th id="T_bb554_level0_col9" class="col_heading level0 col9" >2.50</th>
	  <th id="T_bb554_level0_col10" class="col_heading level0 col10" >2.75</th>
	  <th id="T_bb554_level0_col11" class="col_heading level0 col11" >3.00</th>
	  <th id="T_bb554_level0_col12" class="col_heading level0 col12" >3.50</th>
	  <th id="T_bb554_level0_col13" class="col_heading level0 col13" >4.00</th>
	  <th id="T_bb554_level0_col14" class="col_heading level0 col14" >4.50</th>
	  <th id="T_bb554_level0_col15" class="col_heading level0 col15" >5.00</th>
	  <th id="T_bb554_level0_col16" class="col_heading level0 col16" >6.00</th>
	  <th id="T_bb554_level0_col17" class="col_heading level0 col17" >7.00</th>
	  <th id="T_bb554_level0_col18" class="col_heading level0 col18" >8.00</th>
	  <th id="T_bb554_level0_col19" class="col_heading level0 col19" >9.00</th>
	  <th id="T_bb554_level0_col20" class="col_heading level0 col20" >10.00</th>
	</tr>
	<tr>
	  <th class="index_name level0" >date</th>
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
	  <th class="blank col12" >&nbsp;</th>
	  <th class="blank col13" >&nbsp;</th>
	  <th class="blank col14" >&nbsp;</th>
	  <th class="blank col15" >&nbsp;</th>
	  <th class="blank col16" >&nbsp;</th>
	  <th class="blank col17" >&nbsp;</th>
	  <th class="blank col18" >&nbsp;</th>
	  <th class="blank col19" >&nbsp;</th>
	  <th class="blank col20" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_bb554_level0_row0" class="row_heading level0 row0" >2024-02-28</th>
	  <td id="T_bb554_row0_col0" class="data row0 col0" >5.23%</td>
	  <td id="T_bb554_row0_col1" class="data row0 col1" >5.17%</td>
	  <td id="T_bb554_row0_col2" class="data row0 col2" >5.08%</td>
	  <td id="T_bb554_row0_col3" class="data row0 col3" >4.97%</td>
	  <td id="T_bb554_row0_col4" class="data row0 col4" >4.81%</td>
	  <td id="T_bb554_row0_col5" class="data row0 col5" >4.67%</td>
	  <td id="T_bb554_row0_col6" class="data row0 col6" >4.56%</td>
	  <td id="T_bb554_row0_col7" class="data row0 col7" >4.46%</td>
	  <td id="T_bb554_row0_col8" class="data row0 col8" >4.37%</td>
	  <td id="T_bb554_row0_col9" class="data row0 col9" >4.29%</td>
	  <td id="T_bb554_row0_col10" class="data row0 col10" >4.23%</td>
	  <td id="T_bb554_row0_col11" class="data row0 col11" >4.19%</td>
	  <td id="T_bb554_row0_col12" class="data row0 col12" >4.09%</td>
	  <td id="T_bb554_row0_col13" class="data row0 col13" >4.04%</td>
	  <td id="T_bb554_row0_col14" class="data row0 col14" >3.98%</td>
	  <td id="T_bb554_row0_col15" class="data row0 col15" >3.95%</td>
	  <td id="T_bb554_row0_col16" class="data row0 col16" >3.90%</td>
	  <td id="T_bb554_row0_col17" class="data row0 col17" >3.86%</td>
	  <td id="T_bb554_row0_col18" class="data row0 col18" >3.85%</td>
	  <td id="T_bb554_row0_col19" class="data row0 col19" >3.83%</td>
	  <td id="T_bb554_row0_col20" class="data row0 col20" >3.83%</td>
	</tr>
	<tr>
	  <th id="T_bb554_level0_row1" class="row_heading level0 row1" >2024-02-29</th>
	  <td id="T_bb554_row1_col0" class="data row1 col0" >5.23%</td>
	  <td id="T_bb554_row1_col1" class="data row1 col1" >5.16%</td>
	  <td id="T_bb554_row1_col2" class="data row1 col2" >5.07%</td>
	  <td id="T_bb554_row1_col3" class="data row1 col3" >4.95%</td>
	  <td id="T_bb554_row1_col4" class="data row1 col4" >4.79%</td>
	  <td id="T_bb554_row1_col5" class="data row1 col5" >4.65%</td>
	  <td id="T_bb554_row1_col6" class="data row1 col6" >4.54%</td>
	  <td id="T_bb554_row1_col7" class="data row1 col7" >4.45%</td>
	  <td id="T_bb554_row1_col8" class="data row1 col8" >4.35%</td>
	  <td id="T_bb554_row1_col9" class="data row1 col9" >4.27%</td>
	  <td id="T_bb554_row1_col10" class="data row1 col10" >4.22%</td>
	  <td id="T_bb554_row1_col11" class="data row1 col11" >4.17%</td>
	  <td id="T_bb554_row1_col12" class="data row1 col12" >4.08%</td>
	  <td id="T_bb554_row1_col13" class="data row1 col13" >4.02%</td>
	  <td id="T_bb554_row1_col14" class="data row1 col14" >3.97%</td>
	  <td id="T_bb554_row1_col15" class="data row1 col15" >3.94%</td>
	  <td id="T_bb554_row1_col16" class="data row1 col16" >3.89%</td>
	  <td id="T_bb554_row1_col17" class="data row1 col17" >3.86%</td>
	  <td id="T_bb554_row1_col18" class="data row1 col18" >3.84%</td>
	  <td id="T_bb554_row1_col19" class="data row1 col19" >3.82%</td>
	  <td id="T_bb554_row1_col20" class="data row1 col20" >3.82%</td>
	</tr>
	<tr>
	  <th id="T_bb554_level0_row2" class="row_heading level0 row2" >2024-03-01</th>
	  <td id="T_bb554_row2_col0" class="data row2 col0" >5.22%</td>
	  <td id="T_bb554_row2_col1" class="data row2 col1" >5.13%</td>
	  <td id="T_bb554_row2_col2" class="data row2 col2" >5.03%</td>
	  <td id="T_bb554_row2_col3" class="data row2 col3" >4.91%</td>
	  <td id="T_bb554_row2_col4" class="data row2 col4" >4.74%</td>
	  <td id="T_bb554_row2_col5" class="data row2 col5" >4.59%</td>
	  <td id="T_bb554_row2_col6" class="data row2 col6" >4.47%</td>
	  <td id="T_bb554_row2_col7" class="data row2 col7" >4.38%</td>
	  <td id="T_bb554_row2_col8" class="data row2 col8" >4.28%</td>
	  <td id="T_bb554_row2_col9" class="data row2 col9" >4.20%</td>
	  <td id="T_bb554_row2_col10" class="data row2 col10" >4.14%</td>
	  <td id="T_bb554_row2_col11" class="data row2 col11" >4.10%</td>
	  <td id="T_bb554_row2_col12" class="data row2 col12" >4.00%</td>
	  <td id="T_bb554_row2_col13" class="data row2 col13" >3.95%</td>
	  <td id="T_bb554_row2_col14" class="data row2 col14" >3.89%</td>
	  <td id="T_bb554_row2_col15" class="data row2 col15" >3.86%</td>
	  <td id="T_bb554_row2_col16" class="data row2 col16" >3.82%</td>
	  <td id="T_bb554_row2_col17" class="data row2 col17" >3.79%</td>
	  <td id="T_bb554_row2_col18" class="data row2 col18" >3.77%</td>
	  <td id="T_bb554_row2_col19" class="data row2 col19" >3.76%</td>
	  <td id="T_bb554_row2_col20" class="data row2 col20" >3.75%</td>
	</tr>
	<tr>
	  <th id="T_bb554_level0_row3" class="row_heading level0 row3" >2024-03-04</th>
	  <td id="T_bb554_row3_col0" class="data row3 col0" >5.23%</td>
	  <td id="T_bb554_row3_col1" class="data row3 col1" >5.16%</td>
	  <td id="T_bb554_row3_col2" class="data row3 col2" >5.07%</td>
	  <td id="T_bb554_row3_col3" class="data row3 col3" >4.95%</td>
	  <td id="T_bb554_row3_col4" class="data row3 col4" >4.79%</td>
	  <td id="T_bb554_row3_col5" class="data row3 col5" >4.65%</td>
	  <td id="T_bb554_row3_col6" class="data row3 col6" >4.53%</td>
	  <td id="T_bb554_row3_col7" class="data row3 col7" >4.44%</td>
	  <td id="T_bb554_row3_col8" class="data row3 col8" >4.34%</td>
	  <td id="T_bb554_row3_col9" class="data row3 col9" >4.26%</td>
	  <td id="T_bb554_row3_col10" class="data row3 col10" >4.20%</td>
	  <td id="T_bb554_row3_col11" class="data row3 col11" >4.15%</td>
	  <td id="T_bb554_row3_col12" class="data row3 col12" >4.06%</td>
	  <td id="T_bb554_row3_col13" class="data row3 col13" >4.00%</td>
	  <td id="T_bb554_row3_col14" class="data row3 col14" >3.94%</td>
	  <td id="T_bb554_row3_col15" class="data row3 col15" >3.91%</td>
	  <td id="T_bb554_row3_col16" class="data row3 col16" >3.85%</td>
	  <td id="T_bb554_row3_col17" class="data row3 col17" >3.82%</td>
	  <td id="T_bb554_row3_col18" class="data row3 col18" >3.80%</td>
	  <td id="T_bb554_row3_col19" class="data row3 col19" >3.79%</td>
	  <td id="T_bb554_row3_col20" class="data row3 col20" >3.78%</td>
	</tr>
	<tr>
	  <th id="T_bb554_level0_row4" class="row_heading level0 row4" >2024-03-05</th>
	  <td id="T_bb554_row4_col0" class="data row4 col0" >5.22%</td>
	  <td id="T_bb554_row4_col1" class="data row4 col1" >5.15%</td>
	  <td id="T_bb554_row4_col2" class="data row4 col2" >5.04%</td>
	  <td id="T_bb554_row4_col3" class="data row4 col3" >4.92%</td>
	  <td id="T_bb554_row4_col4" class="data row4 col4" >4.75%</td>
	  <td id="T_bb554_row4_col5" class="data row4 col5" >4.61%</td>
	  <td id="T_bb554_row4_col6" class="data row4 col6" >4.49%</td>
	  <td id="T_bb554_row4_col7" class="data row4 col7" >4.39%</td>
	  <td id="T_bb554_row4_col8" class="data row4 col8" >4.29%</td>
	  <td id="T_bb554_row4_col9" class="data row4 col9" >4.21%</td>
	  <td id="T_bb554_row4_col10" class="data row4 col10" >4.15%</td>
	  <td id="T_bb554_row4_col11" class="data row4 col11" >4.10%</td>
	  <td id="T_bb554_row4_col12" class="data row4 col12" >4.00%</td>
	  <td id="T_bb554_row4_col13" class="data row4 col13" >3.94%</td>
	  <td id="T_bb554_row4_col14" class="data row4 col14" >3.88%</td>
	  <td id="T_bb554_row4_col15" class="data row4 col15" >3.85%</td>
	  <td id="T_bb554_row4_col16" class="data row4 col16" >3.79%</td>
	  <td id="T_bb554_row4_col17" class="data row4 col17" >3.76%</td>
	  <td id="T_bb554_row4_col18" class="data row4 col18" >3.74%</td>
	  <td id="T_bb554_row4_col19" class="data row4 col19" >3.73%</td>
	  <td id="T_bb554_row4_col20" class="data row4 col20" >3.72%</td>
	</tr>
  </tbody>
</table>

```python
sofrcurves = interp_curves(sofrdata, dt = 1/freqcap, date=DATE, interp_method='cubicspline').rename(columns={'interp':'swap rates'})
sofrquotes = sofrdata.loc[DATE,:].rename('quotes')

### Plot the Curve
fig, ax = plt.subplots()
sofrquotes.plot.line(ax=ax, linestyle='None',marker='*')
sofrcurves['swap rates'].plot.line(ax=ax, linestyle='--',marker='')
plt.legend();
plt.title('Swap Curve');
```

![png](output_20_0.png)

```python
sofrcurves['spot rates'] = bootstrap_discounts_clean(sofrcurves[['swap rates']],compounding=freqcap,key='swap rates')
```

```python
sofrcurves['discounts'] = ratecurve_to_discountcurve(sofrcurves['spot rates'],n_compound=freqcap)
sofrcurves['forwards'] = ratecurve_to_forwardcurve(sofrcurves['spot rates'],n_compound=freqcap)
sofrcurves[['spot rates','forwards']].plot(title='Forward Rates');
```

![png](output_22_0.png)

```python
sofrcurves
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
	  <th>quotes</th>
	  <th>swap rates</th>
	  <th>spot rates</th>
	  <th>discounts</th>
	  <th>forwards</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0.25</th>
	  <td>NaN</td>
	  <td>0.052226</td>
	  <td>0.052226</td>
	  <td>0.987112</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>0.50</th>
	  <td>NaN</td>
	  <td>0.051470</td>
	  <td>0.051465</td>
	  <td>0.974756</td>
	  <td>0.050705</td>
	</tr>
	<tr>
	  <th>0.75</th>
	  <td>NaN</td>
	  <td>0.050427</td>
	  <td>0.050411</td>
	  <td>0.963125</td>
	  <td>0.048303</td>
	</tr>
	<tr>
	  <th>1.00</th>
	  <td>NaN</td>
	  <td>0.049243</td>
	  <td>0.049209</td>
	  <td>0.952268</td>
	  <td>0.045606</td>
	</tr>
	<tr>
	  <th>1.25</th>
	  <td>NaN</td>
	  <td>0.047534</td>
	  <td>0.047467</td>
	  <td>0.942722</td>
	  <td>0.040506</td>
	</tr>
	<tr>
	  <th>1.50</th>
	  <td>NaN</td>
	  <td>0.046112</td>
	  <td>0.046016</td>
	  <td>0.933672</td>
	  <td>0.038769</td>
	</tr>
	<tr>
	  <th>1.75</th>
	  <td>NaN</td>
	  <td>0.044914</td>
	  <td>0.044793</td>
	  <td>0.925009</td>
	  <td>0.037462</td>
	</tr>
	<tr>
	  <th>2.00</th>
	  <td>NaN</td>
	  <td>0.043913</td>
	  <td>0.043770</td>
	  <td>0.916617</td>
	  <td>0.036620</td>
	</tr>
	<tr>
	  <th>2.25</th>
	  <td>NaN</td>
	  <td>0.042897</td>
	  <td>0.042729</td>
	  <td>0.908800</td>
	  <td>0.034407</td>
	</tr>
	<tr>
	  <th>2.50</th>
	  <td>NaN</td>
	  <td>0.042107</td>
	  <td>0.041920</td>
	  <td>0.900995</td>
	  <td>0.034653</td>
	</tr>
	<tr>
	  <th>2.75</th>
	  <td>NaN</td>
	  <td>0.041503</td>
	  <td>0.041304</td>
	  <td>0.893148</td>
	  <td>0.035140</td>
	</tr>
	<tr>
	  <th>3.00</th>
	  <td>NaN</td>
	  <td>0.041017</td>
	  <td>0.040808</td>
	  <td>0.885322</td>
	  <td>0.035360</td>
	</tr>
	<tr>
	  <th>3.25</th>
	  <td>NaN</td>
	  <td>0.040495</td>
	  <td>0.040272</td>
	  <td>0.877893</td>
	  <td>0.033849</td>
	</tr>
	<tr>
	  <th>3.50</th>
	  <td>NaN</td>
	  <td>0.040018</td>
	  <td>0.039782</td>
	  <td>0.870620</td>
	  <td>0.033415</td>
	</tr>
	<tr>
	  <th>3.75</th>
	  <td>NaN</td>
	  <td>0.039689</td>
	  <td>0.039446</td>
	  <td>0.863122</td>
	  <td>0.034748</td>
	</tr>
	<tr>
	  <th>4.00</th>
	  <td>0.039414</td>
	  <td>0.039414</td>
	  <td>0.039167</td>
	  <td>0.855639</td>
	  <td>0.034981</td>
	</tr>
	<tr>
	  <th>4.25</th>
	  <td>NaN</td>
	  <td>0.039094</td>
	  <td>0.038837</td>
	  <td>0.848519</td>
	  <td>0.033567</td>
	</tr>
	<tr>
	  <th>4.50</th>
	  <td>NaN</td>
	  <td>0.038796</td>
	  <td>0.038530</td>
	  <td>0.841511</td>
	  <td>0.033311</td>
	</tr>
	<tr>
	  <th>4.75</th>
	  <td>NaN</td>
	  <td>0.038600</td>
	  <td>0.038332</td>
	  <td>0.834258</td>
	  <td>0.034774</td>
	</tr>
	<tr>
	  <th>5.00</th>
	  <td>NaN</td>
	  <td>0.038466</td>
	  <td>0.038200</td>
	  <td>0.826883</td>
	  <td>0.035678</td>
	</tr>
	<tr>
	  <th>5.25</th>
	  <td>NaN</td>
	  <td>0.038334</td>
	  <td>0.038067</td>
	  <td>0.819625</td>
	  <td>0.035419</td>
	</tr>
	<tr>
	  <th>5.50</th>
	  <td>NaN</td>
	  <td>0.038197</td>
	  <td>0.037929</td>
	  <td>0.812509</td>
	  <td>0.035036</td>
	</tr>
	<tr>
	  <th>5.75</th>
	  <td>NaN</td>
	  <td>0.038065</td>
	  <td>0.037795</td>
	  <td>0.805492</td>
	  <td>0.034843</td>
	</tr>
	<tr>
	  <th>6.00</th>
	  <td>NaN</td>
	  <td>0.037945</td>
	  <td>0.037674</td>
	  <td>0.798530</td>
	  <td>0.034877</td>
	</tr>
	<tr>
	  <th>6.25</th>
	  <td>NaN</td>
	  <td>0.037844</td>
	  <td>0.037571</td>
	  <td>0.791579</td>
	  <td>0.035120</td>
	</tr>
	<tr>
	  <th>6.50</th>
	  <td>NaN</td>
	  <td>0.037758</td>
	  <td>0.037487</td>
	  <td>0.784641</td>
	  <td>0.035368</td>
	</tr>
	<tr>
	  <th>6.75</th>
	  <td>NaN</td>
	  <td>0.037686</td>
	  <td>0.037415</td>
	  <td>0.777729</td>
	  <td>0.035552</td>
	</tr>
	<tr>
	  <th>7.00</th>
	  <td>NaN</td>
	  <td>0.037621</td>
	  <td>0.037352</td>
	  <td>0.770858</td>
	  <td>0.035654</td>
	</tr>
	<tr>
	  <th>7.25</th>
	  <td>NaN</td>
	  <td>0.037562</td>
	  <td>0.037294</td>
	  <td>0.764043</td>
	  <td>0.035678</td>
	</tr>
	<tr>
	  <th>7.50</th>
	  <td>NaN</td>
	  <td>0.037508</td>
	  <td>0.037241</td>
	  <td>0.757283</td>
	  <td>0.035709</td>
	</tr>
	<tr>
	  <th>7.75</th>
	  <td>NaN</td>
	  <td>0.037459</td>
	  <td>0.037194</td>
	  <td>0.750571</td>
	  <td>0.035770</td>
	</tr>
	<tr>
	  <th>8.00</th>
	  <td>0.037416</td>
	  <td>0.037416</td>
	  <td>0.037152</td>
	  <td>0.743901</td>
	  <td>0.035863</td>
	</tr>
	<tr>
	  <th>8.25</th>
	  <td>NaN</td>
	  <td>0.037378</td>
	  <td>0.037117</td>
	  <td>0.737269</td>
	  <td>0.035983</td>
	</tr>
	<tr>
	  <th>8.50</th>
	  <td>NaN</td>
	  <td>0.037346</td>
	  <td>0.037087</td>
	  <td>0.730674</td>
	  <td>0.036102</td>
	</tr>
	<tr>
	  <th>8.75</th>
	  <td>NaN</td>
	  <td>0.037318</td>
	  <td>0.037062</td>
	  <td>0.724119</td>
	  <td>0.036212</td>
	</tr>
	<tr>
	  <th>9.00</th>
	  <td>NaN</td>
	  <td>0.037294</td>
	  <td>0.037041</td>
	  <td>0.717605</td>
	  <td>0.036307</td>
	</tr>
	<tr>
	  <th>9.25</th>
	  <td>NaN</td>
	  <td>0.037273</td>
	  <td>0.037023</td>
	  <td>0.711136</td>
	  <td>0.036385</td>
	</tr>
	<tr>
	  <th>9.50</th>
	  <td>NaN</td>
	  <td>0.037255</td>
	  <td>0.037008</td>
	  <td>0.704716</td>
	  <td>0.036442</td>
	</tr>
	<tr>
	  <th>9.75</th>
	  <td>NaN</td>
	  <td>0.037238</td>
	  <td>0.036994</td>
	  <td>0.698348</td>
	  <td>0.036475</td>
	</tr>
	<tr>
	  <th>10.00</th>
	  <td>NaN</td>
	  <td>0.037222</td>
	  <td>0.036982</td>
	  <td>0.692037</td>
	  <td>0.036480</td>
	</tr>
  </tbody>
</table>
</div>

# Cap Quotes

```python
SHEET = 'cap'
capdata = pd.read_excel(f'{FILEIN}.xlsx', sheet_name=SHEET).set_index('date')
capdata.columns = capdata.loc['maturity'] 
capdata.drop(index=['maturity'],inplace=True)
capdata.index = pd.to_datetime(capdata.index)
```

Bloomberg reported years-to-maturity are precise.

Round these to nearest $dt$ for better column headers

For more precise work, would need to make use of the precise maturities, but for this purpose will make no difference.

```python
capdata.columns = (freqcap * capdata.columns.values).round(0)/freqcap
capdata.columns.name ='maturity'
```

Bloomberg allows downloading of ticker codes corresponding to 10.X years, but they are really just the 10-year code.

Called ticker list built to check all partial years, so it gets these redundant 10-year columns.

```python
capdata = capdata.T.drop_duplicates().T
```

## Adjusting Normal Vol to Lognormal (Black) Vol

Cap quotes in Bloomberg are downloaded in

* normal vol
* terminal allows view of lognormal (Black) vol, but API seemingly restricts to normal.

The normal vols are reported in basis points.

* divide out by $100^2$

Converting between normal and lognormal vol is given by a simple formula for ATM options, (according to SABR, etc.)

$$\sigma_B = \frac{\sigma_N}{f}$$

where $f$ is the forward rate.

```python
capquotes = capdata.loc[DATE,:].to_frame()
capquotes.columns = ['normal']
capquotes[DATE] = capquotes['normal'] / sofrcurves['forwards'] / 100**2
```

# Interpolate or Extrapolate

Interpolate/extrapolate just to get to quarterly frequency needed for forward vol extraction.

After extracting forward vol, can interpolate/extrapolate further for matching timegrid of binomial trees.

## Interpolation

Need to interpolate cap rates for quarterly frequency as Bloomberg reports only at annual tenors.

Try `cubicspline`.

## Extrapolation

Also need to extrapolate the short end of the curve, $t<1$.

* This can lead to negative values w/ cubic spline and others.
* Here, ad hoc set front to `FRONT_RATIO` the first quote and linearly extrapolate

```python
LIN_EXTRAP = True
FRONT_RATIO = .65

capcurves = interp_curves(capquotes[[DATE]].T,dt=1/freqcap, date=DATE,interp_method='cubicspline').rename(columns={'interp':'flat vols'})

if LIN_EXTRAP:
    fix_short = capcurves.loc[:1,'flat vols']
    fix_short.iloc[:-1] = np.nan
    fix_short.iloc[0] = capcurves.loc[1,'flat vols'] * FRONT_RATIO
    capcurves.loc[:1,'flat vols'] = fix_short.interpolate(limit_direction='both', fill_value = 'extrapolate')

# drop extrapolated value at first period as there is no caplet for the first period.
capcurves['flat vols'].iloc[0] = np.nan

### Plot the Curve
fig, ax = plt.subplots()
capquotes[[DATE]].rename(columns={'black':'quotes'}).plot.line(ax=ax, linestyle='None',marker='*')
capcurves['flat vols'].plot.line(ax=ax, linestyle='--',marker='')
plt.legend();
plt.title('Cap Flat Curve');
```

![png](output_35_0.png)

```python
capcurves = flat_to_forward_vol_rev(capcurves['flat vols'],sofrcurves['swap rates'],sofrcurves['forwards'],sofrcurves['discounts'],freq=4)
```

# Save Data

```python
outdata = pd.concat([sofrcurves.drop(columns=['quotes']), capcurves.drop(columns=['cap prices'])],axis=1)
outdata.index.name = 'tenor'

if SAVEDATA:    
    with pd.ExcelWriter(FILEOUT) as writer:  
        outdata.to_excel(writer, sheet_name= f'rate curves {DATE}', index=True)
```

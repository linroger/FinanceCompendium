---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: W.3. Swaptions
---

# W.3. Swaptions

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

#### LaTeX Notation

This cell appears blank.

$$\newcommand{\Tfwd}{T_{\text{fwd}}}$$

$$\newcommand{\fwdswap}{s(t,\Tfwd,T)}$$

# Swap

## Simple derivative

We do not need trees or stochastic modeling to price a swap.

A (receiving fixed) swap is simply replicated as long a fixed bond and short a floating-rate bond.

* Still, it is useful to demonstrate that the methods we are using can price any interest-rate derivative--not just options.
* Furthermore, having the tree of swap value swill be useful for **swaptions**.

## Example

Consider the following parameters:

* swap rate $K=.05$
* maturity $T=5$
* semiannual compounding and frequency

## Arrears

Note that the swap is like the caps and floors in that the payments are based on the previous period's interest rate.

That is, the payoff at time period $i$ is

$$C_{i+1} = N\Delta_t(r_{n,i}-K)$$

where 

* $C_{i+1}$ is the cashflow at period $i+1$ 
* $r_{n,i}$ is the n-frequency compounded rate at period $i$.
* $K$ is the swap rate

```python
import numpy as np
import pandas as pd

import sys
sys.path.insert(0, '../cmds')
from binomial import *
from ratecurves import *
```

```python
import datetime
import warnings
warnings.filterwarnings('ignore',category=FutureWarning)

import matplotlib.pyplot as plt
import seaborn as sns
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)
```

## Data on zero-coupon bonds

Maturities out to 5.5 years.

```python
dt = .5
T = 5

compound = int(1/dt)

sigmaval = .2142


rawdata = np.array([99.1338,
         97.8925,
         96.1462,
         94.1011,
         91.7136,
         89.2258,
         86.8142,
         84.5016,
         82.1848,
         79.7718,
         77.4339])

quotes = pd.Series(rawdata, index=np.arange(dt,T+2*dt,dt))
quotes.to_frame().T
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
	  <th>0.5</th>
	  <th>1.0</th>
	  <th>1.5</th>
	  <th>2.0</th>
	  <th>2.5</th>
	  <th>3.0</th>
	  <th>3.5</th>
	  <th>4.0</th>
	  <th>4.5</th>
	  <th>5.0</th>
	  <th>5.5</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>99.1338</td>
	  <td>97.8925</td>
	  <td>96.1462</td>
	  <td>94.1011</td>
	  <td>91.7136</td>
	  <td>89.2258</td>
	  <td>86.8142</td>
	  <td>84.5016</td>
	  <td>82.1848</td>
	  <td>79.7718</td>
	  <td>77.4339</td>
	</tr>
  </tbody>
</table>
</div>

```python
theta, ratetree = estimate_theta(sigmaval,quotes)
format_bintree(theta.to_frame().T, style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_72784">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_72784_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_72784_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_72784_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_72784_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_72784_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_72784_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_72784_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_72784_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_72784_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_72784_level0_col9" class="col_heading level0 col9" >4.50</th>
	  <th id="T_72784_level0_col10" class="col_heading level0 col10" >5.00</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_72784_level0_row0" class="row_heading level0 row0" >theta</th>
	  <td id="T_72784_row0_col0" class="data row0 col0" ></td>
	  <td id="T_72784_row0_col1" class="data row0 col1" >71.83%</td>
	  <td id="T_72784_row0_col2" class="data row0 col2" >69.15%</td>
	  <td id="T_72784_row0_col3" class="data row0 col3" >33.48%</td>
	  <td id="T_72784_row0_col4" class="data row0 col4" >33.78%</td>
	  <td id="T_72784_row0_col5" class="data row0 col5" >11.83%</td>
	  <td id="T_72784_row0_col6" class="data row0 col6" >-2.30%</td>
	  <td id="T_72784_row0_col7" class="data row0 col7" >-4.38%</td>
	  <td id="T_72784_row0_col8" class="data row0 col8" >4.55%</td>
	  <td id="T_72784_row0_col9" class="data row0 col9" >12.81%</td>
	  <td id="T_72784_row0_col10" class="data row0 col10" >-1.26%</td>
	</tr>
  </tbody>
</table>

```python
format_bintree(ratetree,style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_dbf7e">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_dbf7e_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_dbf7e_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_dbf7e_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_dbf7e_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_dbf7e_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_dbf7e_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_dbf7e_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_dbf7e_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_dbf7e_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_dbf7e_level0_col9" class="col_heading level0 col9" >4.50</th>
	  <th id="T_dbf7e_level0_col10" class="col_heading level0 col10" >5.00</th>
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_dbf7e_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_dbf7e_row0_col0" class="data row0 col0" >1.74%</td>
	  <td id="T_dbf7e_row0_col1" class="data row0 col1" >2.90%</td>
	  <td id="T_dbf7e_row0_col2" class="data row0 col2" >4.77%</td>
	  <td id="T_dbf7e_row0_col3" class="data row0 col3" >6.56%</td>
	  <td id="T_dbf7e_row0_col4" class="data row0 col4" >9.03%</td>
	  <td id="T_dbf7e_row0_col5" class="data row0 col5" >11.15%</td>
	  <td id="T_dbf7e_row0_col6" class="data row0 col6" >12.83%</td>
	  <td id="T_dbf7e_row0_col7" class="data row0 col7" >14.60%</td>
	  <td id="T_dbf7e_row0_col8" class="data row0 col8" >17.38%</td>
	  <td id="T_dbf7e_row0_col9" class="data row0 col9" >21.56%</td>
	  <td id="T_dbf7e_row0_col10" class="data row0 col10" >24.93%</td>
	</tr>
	<tr>
	  <th id="T_dbf7e_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_dbf7e_row1_col0" class="data row1 col0" ></td>
	  <td id="T_dbf7e_row1_col1" class="data row1 col1" >2.14%</td>
	  <td id="T_dbf7e_row1_col2" class="data row1 col2" >3.52%</td>
	  <td id="T_dbf7e_row1_col3" class="data row1 col3" >4.84%</td>
	  <td id="T_dbf7e_row1_col4" class="data row1 col4" >6.67%</td>
	  <td id="T_dbf7e_row1_col5" class="data row1 col5" >8.24%</td>
	  <td id="T_dbf7e_row1_col6" class="data row1 col6" >9.47%</td>
	  <td id="T_dbf7e_row1_col7" class="data row1 col7" >10.79%</td>
	  <td id="T_dbf7e_row1_col8" class="data row1 col8" >12.84%</td>
	  <td id="T_dbf7e_row1_col9" class="data row1 col9" >15.92%</td>
	  <td id="T_dbf7e_row1_col10" class="data row1 col10" >18.41%</td>
	</tr>
	<tr>
	  <th id="T_dbf7e_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_dbf7e_row2_col0" class="data row2 col0" ></td>
	  <td id="T_dbf7e_row2_col1" class="data row2 col1" ></td>
	  <td id="T_dbf7e_row2_col2" class="data row2 col2" >2.60%</td>
	  <td id="T_dbf7e_row2_col3" class="data row2 col3" >3.58%</td>
	  <td id="T_dbf7e_row2_col4" class="data row2 col4" >4.93%</td>
	  <td id="T_dbf7e_row2_col5" class="data row2 col5" >6.08%</td>
	  <td id="T_dbf7e_row2_col6" class="data row2 col6" >7.00%</td>
	  <td id="T_dbf7e_row2_col7" class="data row2 col7" >7.97%</td>
	  <td id="T_dbf7e_row2_col8" class="data row2 col8" >9.48%</td>
	  <td id="T_dbf7e_row2_col9" class="data row2 col9" >11.76%</td>
	  <td id="T_dbf7e_row2_col10" class="data row2 col10" >13.60%</td>
	</tr>
	<tr>
	  <th id="T_dbf7e_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_dbf7e_row3_col0" class="data row3 col0" ></td>
	  <td id="T_dbf7e_row3_col1" class="data row3 col1" ></td>
	  <td id="T_dbf7e_row3_col2" class="data row3 col2" ></td>
	  <td id="T_dbf7e_row3_col3" class="data row3 col3" >2.64%</td>
	  <td id="T_dbf7e_row3_col4" class="data row3 col4" >3.64%</td>
	  <td id="T_dbf7e_row3_col5" class="data row3 col5" >4.49%</td>
	  <td id="T_dbf7e_row3_col6" class="data row3 col6" >5.17%</td>
	  <td id="T_dbf7e_row3_col7" class="data row3 col7" >5.88%</td>
	  <td id="T_dbf7e_row3_col8" class="data row3 col8" >7.00%</td>
	  <td id="T_dbf7e_row3_col9" class="data row3 col9" >8.69%</td>
	  <td id="T_dbf7e_row3_col10" class="data row3 col10" >10.05%</td>
	</tr>
	<tr>
	  <th id="T_dbf7e_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_dbf7e_row4_col0" class="data row4 col0" ></td>
	  <td id="T_dbf7e_row4_col1" class="data row4 col1" ></td>
	  <td id="T_dbf7e_row4_col2" class="data row4 col2" ></td>
	  <td id="T_dbf7e_row4_col3" class="data row4 col3" ></td>
	  <td id="T_dbf7e_row4_col4" class="data row4 col4" >2.69%</td>
	  <td id="T_dbf7e_row4_col5" class="data row4 col5" >3.32%</td>
	  <td id="T_dbf7e_row4_col6" class="data row4 col6" >3.82%</td>
	  <td id="T_dbf7e_row4_col7" class="data row4 col7" >4.35%</td>
	  <td id="T_dbf7e_row4_col8" class="data row4 col8" >5.17%</td>
	  <td id="T_dbf7e_row4_col9" class="data row4 col9" >6.42%</td>
	  <td id="T_dbf7e_row4_col10" class="data row4 col10" >7.42%</td>
	</tr>
	<tr>
	  <th id="T_dbf7e_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_dbf7e_row5_col0" class="data row5 col0" ></td>
	  <td id="T_dbf7e_row5_col1" class="data row5 col1" ></td>
	  <td id="T_dbf7e_row5_col2" class="data row5 col2" ></td>
	  <td id="T_dbf7e_row5_col3" class="data row5 col3" ></td>
	  <td id="T_dbf7e_row5_col4" class="data row5 col4" ></td>
	  <td id="T_dbf7e_row5_col5" class="data row5 col5" >2.45%</td>
	  <td id="T_dbf7e_row5_col6" class="data row5 col6" >2.82%</td>
	  <td id="T_dbf7e_row5_col7" class="data row5 col7" >3.21%</td>
	  <td id="T_dbf7e_row5_col8" class="data row5 col8" >3.82%</td>
	  <td id="T_dbf7e_row5_col9" class="data row5 col9" >4.74%</td>
	  <td id="T_dbf7e_row5_col10" class="data row5 col10" >5.48%</td>
	</tr>
	<tr>
	  <th id="T_dbf7e_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_dbf7e_row6_col0" class="data row6 col0" ></td>
	  <td id="T_dbf7e_row6_col1" class="data row6 col1" ></td>
	  <td id="T_dbf7e_row6_col2" class="data row6 col2" ></td>
	  <td id="T_dbf7e_row6_col3" class="data row6 col3" ></td>
	  <td id="T_dbf7e_row6_col4" class="data row6 col4" ></td>
	  <td id="T_dbf7e_row6_col5" class="data row6 col5" ></td>
	  <td id="T_dbf7e_row6_col6" class="data row6 col6" >2.08%</td>
	  <td id="T_dbf7e_row6_col7" class="data row6 col7" >2.37%</td>
	  <td id="T_dbf7e_row6_col8" class="data row6 col8" >2.82%</td>
	  <td id="T_dbf7e_row6_col9" class="data row6 col9" >3.50%</td>
	  <td id="T_dbf7e_row6_col10" class="data row6 col10" >4.05%</td>
	</tr>
	<tr>
	  <th id="T_dbf7e_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_dbf7e_row7_col0" class="data row7 col0" ></td>
	  <td id="T_dbf7e_row7_col1" class="data row7 col1" ></td>
	  <td id="T_dbf7e_row7_col2" class="data row7 col2" ></td>
	  <td id="T_dbf7e_row7_col3" class="data row7 col3" ></td>
	  <td id="T_dbf7e_row7_col4" class="data row7 col4" ></td>
	  <td id="T_dbf7e_row7_col5" class="data row7 col5" ></td>
	  <td id="T_dbf7e_row7_col6" class="data row7 col6" ></td>
	  <td id="T_dbf7e_row7_col7" class="data row7 col7" >1.75%</td>
	  <td id="T_dbf7e_row7_col8" class="data row7 col8" >2.09%</td>
	  <td id="T_dbf7e_row7_col9" class="data row7 col9" >2.59%</td>
	  <td id="T_dbf7e_row7_col10" class="data row7 col10" >2.99%</td>
	</tr>
	<tr>
	  <th id="T_dbf7e_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_dbf7e_row8_col0" class="data row8 col0" ></td>
	  <td id="T_dbf7e_row8_col1" class="data row8 col1" ></td>
	  <td id="T_dbf7e_row8_col2" class="data row8 col2" ></td>
	  <td id="T_dbf7e_row8_col3" class="data row8 col3" ></td>
	  <td id="T_dbf7e_row8_col4" class="data row8 col4" ></td>
	  <td id="T_dbf7e_row8_col5" class="data row8 col5" ></td>
	  <td id="T_dbf7e_row8_col6" class="data row8 col6" ></td>
	  <td id="T_dbf7e_row8_col7" class="data row8 col7" ></td>
	  <td id="T_dbf7e_row8_col8" class="data row8 col8" >1.54%</td>
	  <td id="T_dbf7e_row8_col9" class="data row8 col9" >1.91%</td>
	  <td id="T_dbf7e_row8_col10" class="data row8 col10" >2.21%</td>
	</tr>
	<tr>
	  <th id="T_dbf7e_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_dbf7e_row9_col0" class="data row9 col0" ></td>
	  <td id="T_dbf7e_row9_col1" class="data row9 col1" ></td>
	  <td id="T_dbf7e_row9_col2" class="data row9 col2" ></td>
	  <td id="T_dbf7e_row9_col3" class="data row9 col3" ></td>
	  <td id="T_dbf7e_row9_col4" class="data row9 col4" ></td>
	  <td id="T_dbf7e_row9_col5" class="data row9 col5" ></td>
	  <td id="T_dbf7e_row9_col6" class="data row9 col6" ></td>
	  <td id="T_dbf7e_row9_col7" class="data row9 col7" ></td>
	  <td id="T_dbf7e_row9_col8" class="data row9 col8" ></td>
	  <td id="T_dbf7e_row9_col9" class="data row9 col9" >1.41%</td>
	  <td id="T_dbf7e_row9_col10" class="data row9 col10" >1.63%</td>
	</tr>
	<tr>
	  <th id="T_dbf7e_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_dbf7e_row10_col0" class="data row10 col0" ></td>
	  <td id="T_dbf7e_row10_col1" class="data row10 col1" ></td>
	  <td id="T_dbf7e_row10_col2" class="data row10 col2" ></td>
	  <td id="T_dbf7e_row10_col3" class="data row10 col3" ></td>
	  <td id="T_dbf7e_row10_col4" class="data row10 col4" ></td>
	  <td id="T_dbf7e_row10_col5" class="data row10 col5" ></td>
	  <td id="T_dbf7e_row10_col6" class="data row10 col6" ></td>
	  <td id="T_dbf7e_row10_col7" class="data row10 col7" ></td>
	  <td id="T_dbf7e_row10_col8" class="data row10 col8" ></td>
	  <td id="T_dbf7e_row10_col9" class="data row10 col9" ></td>
	  <td id="T_dbf7e_row10_col10" class="data row10 col10" >1.21%</td>
	</tr>
  </tbody>
</table>

```python
tsteps = int(T/dt)

refratetree = compound * (np.exp(ratetree / compound)-1)
format_bintree(refratetree.iloc[:tsteps,:tsteps], style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_1f363">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_1f363_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_1f363_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_1f363_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_1f363_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_1f363_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_1f363_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_1f363_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_1f363_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_1f363_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_1f363_level0_col9" class="col_heading level0 col9" >4.50</th>
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_1f363_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_1f363_row0_col0" class="data row0 col0" >1.75%</td>
	  <td id="T_1f363_row0_col1" class="data row0 col1" >2.92%</td>
	  <td id="T_1f363_row0_col2" class="data row0 col2" >4.82%</td>
	  <td id="T_1f363_row0_col3" class="data row0 col3" >6.67%</td>
	  <td id="T_1f363_row0_col4" class="data row0 col4" >9.24%</td>
	  <td id="T_1f363_row0_col5" class="data row0 col5" >11.47%</td>
	  <td id="T_1f363_row0_col6" class="data row0 col6" >13.25%</td>
	  <td id="T_1f363_row0_col7" class="data row0 col7" >15.15%</td>
	  <td id="T_1f363_row0_col8" class="data row0 col8" >18.16%</td>
	  <td id="T_1f363_row0_col9" class="data row0 col9" >22.76%</td>
	</tr>
	<tr>
	  <th id="T_1f363_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_1f363_row1_col0" class="data row1 col0" ></td>
	  <td id="T_1f363_row1_col1" class="data row1 col1" >2.15%</td>
	  <td id="T_1f363_row1_col2" class="data row1 col2" >3.55%</td>
	  <td id="T_1f363_row1_col3" class="data row1 col3" >4.90%</td>
	  <td id="T_1f363_row1_col4" class="data row1 col4" >6.79%</td>
	  <td id="T_1f363_row1_col5" class="data row1 col5" >8.41%</td>
	  <td id="T_1f363_row1_col6" class="data row1 col6" >9.70%</td>
	  <td id="T_1f363_row1_col7" class="data row1 col7" >11.08%</td>
	  <td id="T_1f363_row1_col8" class="data row1 col8" >13.26%</td>
	  <td id="T_1f363_row1_col9" class="data row1 col9" >16.58%</td>
	</tr>
	<tr>
	  <th id="T_1f363_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_1f363_row2_col0" class="data row2 col0" ></td>
	  <td id="T_1f363_row2_col1" class="data row2 col1" ></td>
	  <td id="T_1f363_row2_col2" class="data row2 col2" >2.62%</td>
	  <td id="T_1f363_row2_col3" class="data row2 col3" >3.61%</td>
	  <td id="T_1f363_row2_col4" class="data row2 col4" >4.99%</td>
	  <td id="T_1f363_row2_col5" class="data row2 col5" >6.18%</td>
	  <td id="T_1f363_row2_col6" class="data row2 col6" >7.12%</td>
	  <td id="T_1f363_row2_col7" class="data row2 col7" >8.13%</td>
	  <td id="T_1f363_row2_col8" class="data row2 col8" >9.71%</td>
	  <td id="T_1f363_row2_col9" class="data row2 col9" >12.12%</td>
	</tr>
	<tr>
	  <th id="T_1f363_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_1f363_row3_col0" class="data row3 col0" ></td>
	  <td id="T_1f363_row3_col1" class="data row3 col1" ></td>
	  <td id="T_1f363_row3_col2" class="data row3 col2" ></td>
	  <td id="T_1f363_row3_col3" class="data row3 col3" >2.66%</td>
	  <td id="T_1f363_row3_col4" class="data row3 col4" >3.67%</td>
	  <td id="T_1f363_row3_col5" class="data row3 col5" >4.55%</td>
	  <td id="T_1f363_row3_col6" class="data row3 col6" >5.24%</td>
	  <td id="T_1f363_row3_col7" class="data row3 col7" >5.97%</td>
	  <td id="T_1f363_row3_col8" class="data row3 col8" >7.13%</td>
	  <td id="T_1f363_row3_col9" class="data row3 col9" >8.88%</td>
	</tr>
	<tr>
	  <th id="T_1f363_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_1f363_row4_col0" class="data row4 col0" ></td>
	  <td id="T_1f363_row4_col1" class="data row4 col1" ></td>
	  <td id="T_1f363_row4_col2" class="data row4 col2" ></td>
	  <td id="T_1f363_row4_col3" class="data row4 col3" ></td>
	  <td id="T_1f363_row4_col4" class="data row4 col4" >2.71%</td>
	  <td id="T_1f363_row4_col5" class="data row4 col5" >3.35%</td>
	  <td id="T_1f363_row4_col6" class="data row4 col6" >3.86%</td>
	  <td id="T_1f363_row4_col7" class="data row4 col7" >4.39%</td>
	  <td id="T_1f363_row4_col8" class="data row4 col8" >5.24%</td>
	  <td id="T_1f363_row4_col9" class="data row4 col9" >6.52%</td>
	</tr>
	<tr>
	  <th id="T_1f363_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_1f363_row5_col0" class="data row5 col0" ></td>
	  <td id="T_1f363_row5_col1" class="data row5 col1" ></td>
	  <td id="T_1f363_row5_col2" class="data row5 col2" ></td>
	  <td id="T_1f363_row5_col3" class="data row5 col3" ></td>
	  <td id="T_1f363_row5_col4" class="data row5 col4" ></td>
	  <td id="T_1f363_row5_col5" class="data row5 col5" >2.47%</td>
	  <td id="T_1f363_row5_col6" class="data row5 col6" >2.84%</td>
	  <td id="T_1f363_row5_col7" class="data row5 col7" >3.24%</td>
	  <td id="T_1f363_row5_col8" class="data row5 col8" >3.86%</td>
	  <td id="T_1f363_row5_col9" class="data row5 col9" >4.80%</td>
	</tr>
	<tr>
	  <th id="T_1f363_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_1f363_row6_col0" class="data row6 col0" ></td>
	  <td id="T_1f363_row6_col1" class="data row6 col1" ></td>
	  <td id="T_1f363_row6_col2" class="data row6 col2" ></td>
	  <td id="T_1f363_row6_col3" class="data row6 col3" ></td>
	  <td id="T_1f363_row6_col4" class="data row6 col4" ></td>
	  <td id="T_1f363_row6_col5" class="data row6 col5" ></td>
	  <td id="T_1f363_row6_col6" class="data row6 col6" >2.09%</td>
	  <td id="T_1f363_row6_col7" class="data row6 col7" >2.39%</td>
	  <td id="T_1f363_row6_col8" class="data row6 col8" >2.84%</td>
	  <td id="T_1f363_row6_col9" class="data row6 col9" >3.53%</td>
	</tr>
	<tr>
	  <th id="T_1f363_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_1f363_row7_col0" class="data row7 col0" ></td>
	  <td id="T_1f363_row7_col1" class="data row7 col1" ></td>
	  <td id="T_1f363_row7_col2" class="data row7 col2" ></td>
	  <td id="T_1f363_row7_col3" class="data row7 col3" ></td>
	  <td id="T_1f363_row7_col4" class="data row7 col4" ></td>
	  <td id="T_1f363_row7_col5" class="data row7 col5" ></td>
	  <td id="T_1f363_row7_col6" class="data row7 col6" ></td>
	  <td id="T_1f363_row7_col7" class="data row7 col7" >1.76%</td>
	  <td id="T_1f363_row7_col8" class="data row7 col8" >2.10%</td>
	  <td id="T_1f363_row7_col9" class="data row7 col9" >2.60%</td>
	</tr>
	<tr>
	  <th id="T_1f363_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_1f363_row8_col0" class="data row8 col0" ></td>
	  <td id="T_1f363_row8_col1" class="data row8 col1" ></td>
	  <td id="T_1f363_row8_col2" class="data row8 col2" ></td>
	  <td id="T_1f363_row8_col3" class="data row8 col3" ></td>
	  <td id="T_1f363_row8_col4" class="data row8 col4" ></td>
	  <td id="T_1f363_row8_col5" class="data row8 col5" ></td>
	  <td id="T_1f363_row8_col6" class="data row8 col6" ></td>
	  <td id="T_1f363_row8_col7" class="data row8 col7" ></td>
	  <td id="T_1f363_row8_col8" class="data row8 col8" >1.55%</td>
	  <td id="T_1f363_row8_col9" class="data row8 col9" >1.92%</td>
	</tr>
	<tr>
	  <th id="T_1f363_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_1f363_row9_col0" class="data row9 col0" ></td>
	  <td id="T_1f363_row9_col1" class="data row9 col1" ></td>
	  <td id="T_1f363_row9_col2" class="data row9 col2" ></td>
	  <td id="T_1f363_row9_col3" class="data row9 col3" ></td>
	  <td id="T_1f363_row9_col4" class="data row9 col4" ></td>
	  <td id="T_1f363_row9_col5" class="data row9 col5" ></td>
	  <td id="T_1f363_row9_col6" class="data row9 col6" ></td>
	  <td id="T_1f363_row9_col7" class="data row9 col7" ></td>
	  <td id="T_1f363_row9_col8" class="data row9 col8" ></td>
	  <td id="T_1f363_row9_col9" class="data row9 col9" >1.42%</td>
	</tr>
  </tbody>
</table>

```python
STRIKE = .05
N = 100
```

```python
payoff = lambda r: N * dt * (r-STRIKE)

cftree = payoff(refratetree.iloc[:tsteps,:tsteps])
format_bintree(cftree)
```

<style type="text/css">
</style>
<table id="T_14ce3">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_14ce3_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_14ce3_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_14ce3_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_14ce3_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_14ce3_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_14ce3_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_14ce3_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_14ce3_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_14ce3_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_14ce3_level0_col9" class="col_heading level0 col9" >4.50</th>
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_14ce3_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_14ce3_row0_col0" class="data row0 col0" >-1.63</td>
	  <td id="T_14ce3_row0_col1" class="data row0 col1" >-1.04</td>
	  <td id="T_14ce3_row0_col2" class="data row0 col2" >-0.09</td>
	  <td id="T_14ce3_row0_col3" class="data row0 col3" >0.83</td>
	  <td id="T_14ce3_row0_col4" class="data row0 col4" >2.12</td>
	  <td id="T_14ce3_row0_col5" class="data row0 col5" >3.23</td>
	  <td id="T_14ce3_row0_col6" class="data row0 col6" >4.12</td>
	  <td id="T_14ce3_row0_col7" class="data row0 col7" >5.07</td>
	  <td id="T_14ce3_row0_col8" class="data row0 col8" >6.58</td>
	  <td id="T_14ce3_row0_col9" class="data row0 col9" >8.88</td>
	</tr>
	<tr>
	  <th id="T_14ce3_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_14ce3_row1_col0" class="data row1 col0" ></td>
	  <td id="T_14ce3_row1_col1" class="data row1 col1" >-1.42</td>
	  <td id="T_14ce3_row1_col2" class="data row1 col2" >-0.72</td>
	  <td id="T_14ce3_row1_col3" class="data row1 col3" >-0.05</td>
	  <td id="T_14ce3_row1_col4" class="data row1 col4" >0.89</td>
	  <td id="T_14ce3_row1_col5" class="data row1 col5" >1.70</td>
	  <td id="T_14ce3_row1_col6" class="data row1 col6" >2.35</td>
	  <td id="T_14ce3_row1_col7" class="data row1 col7" >3.04</td>
	  <td id="T_14ce3_row1_col8" class="data row1 col8" >4.13</td>
	  <td id="T_14ce3_row1_col9" class="data row1 col9" >5.79</td>
	</tr>
	<tr>
	  <th id="T_14ce3_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_14ce3_row2_col0" class="data row2 col0" ></td>
	  <td id="T_14ce3_row2_col1" class="data row2 col1" ></td>
	  <td id="T_14ce3_row2_col2" class="data row2 col2" >-1.19</td>
	  <td id="T_14ce3_row2_col3" class="data row2 col3" >-0.70</td>
	  <td id="T_14ce3_row2_col4" class="data row2 col4" >-0.00</td>
	  <td id="T_14ce3_row2_col5" class="data row2 col5" >0.59</td>
	  <td id="T_14ce3_row2_col6" class="data row2 col6" >1.06</td>
	  <td id="T_14ce3_row2_col7" class="data row2 col7" >1.56</td>
	  <td id="T_14ce3_row2_col8" class="data row2 col8" >2.36</td>
	  <td id="T_14ce3_row2_col9" class="data row2 col9" >3.56</td>
	</tr>
	<tr>
	  <th id="T_14ce3_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_14ce3_row3_col0" class="data row3 col0" ></td>
	  <td id="T_14ce3_row3_col1" class="data row3 col1" ></td>
	  <td id="T_14ce3_row3_col2" class="data row3 col2" ></td>
	  <td id="T_14ce3_row3_col3" class="data row3 col3" >-1.17</td>
	  <td id="T_14ce3_row3_col4" class="data row3 col4" >-0.66</td>
	  <td id="T_14ce3_row3_col5" class="data row3 col5" >-0.23</td>
	  <td id="T_14ce3_row3_col6" class="data row3 col6" >0.12</td>
	  <td id="T_14ce3_row3_col7" class="data row3 col7" >0.49</td>
	  <td id="T_14ce3_row3_col8" class="data row3 col8" >1.06</td>
	  <td id="T_14ce3_row3_col9" class="data row3 col9" >1.94</td>
	</tr>
	<tr>
	  <th id="T_14ce3_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_14ce3_row4_col0" class="data row4 col0" ></td>
	  <td id="T_14ce3_row4_col1" class="data row4 col1" ></td>
	  <td id="T_14ce3_row4_col2" class="data row4 col2" ></td>
	  <td id="T_14ce3_row4_col3" class="data row4 col3" ></td>
	  <td id="T_14ce3_row4_col4" class="data row4 col4" >-1.15</td>
	  <td id="T_14ce3_row4_col5" class="data row4 col5" >-0.83</td>
	  <td id="T_14ce3_row4_col6" class="data row4 col6" >-0.57</td>
	  <td id="T_14ce3_row4_col7" class="data row4 col7" >-0.30</td>
	  <td id="T_14ce3_row4_col8" class="data row4 col8" >0.12</td>
	  <td id="T_14ce3_row4_col9" class="data row4 col9" >0.76</td>
	</tr>
	<tr>
	  <th id="T_14ce3_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_14ce3_row5_col0" class="data row5 col0" ></td>
	  <td id="T_14ce3_row5_col1" class="data row5 col1" ></td>
	  <td id="T_14ce3_row5_col2" class="data row5 col2" ></td>
	  <td id="T_14ce3_row5_col3" class="data row5 col3" ></td>
	  <td id="T_14ce3_row5_col4" class="data row5 col4" ></td>
	  <td id="T_14ce3_row5_col5" class="data row5 col5" >-1.27</td>
	  <td id="T_14ce3_row5_col6" class="data row5 col6" >-1.08</td>
	  <td id="T_14ce3_row5_col7" class="data row5 col7" >-0.88</td>
	  <td id="T_14ce3_row5_col8" class="data row5 col8" >-0.57</td>
	  <td id="T_14ce3_row5_col9" class="data row5 col9" >-0.10</td>
	</tr>
	<tr>
	  <th id="T_14ce3_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_14ce3_row6_col0" class="data row6 col0" ></td>
	  <td id="T_14ce3_row6_col1" class="data row6 col1" ></td>
	  <td id="T_14ce3_row6_col2" class="data row6 col2" ></td>
	  <td id="T_14ce3_row6_col3" class="data row6 col3" ></td>
	  <td id="T_14ce3_row6_col4" class="data row6 col4" ></td>
	  <td id="T_14ce3_row6_col5" class="data row6 col5" ></td>
	  <td id="T_14ce3_row6_col6" class="data row6 col6" >-1.45</td>
	  <td id="T_14ce3_row6_col7" class="data row6 col7" >-1.31</td>
	  <td id="T_14ce3_row6_col8" class="data row6 col8" >-1.08</td>
	  <td id="T_14ce3_row6_col9" class="data row6 col9" >-0.73</td>
	</tr>
	<tr>
	  <th id="T_14ce3_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_14ce3_row7_col0" class="data row7 col0" ></td>
	  <td id="T_14ce3_row7_col1" class="data row7 col1" ></td>
	  <td id="T_14ce3_row7_col2" class="data row7 col2" ></td>
	  <td id="T_14ce3_row7_col3" class="data row7 col3" ></td>
	  <td id="T_14ce3_row7_col4" class="data row7 col4" ></td>
	  <td id="T_14ce3_row7_col5" class="data row7 col5" ></td>
	  <td id="T_14ce3_row7_col6" class="data row7 col6" ></td>
	  <td id="T_14ce3_row7_col7" class="data row7 col7" >-1.62</td>
	  <td id="T_14ce3_row7_col8" class="data row7 col8" >-1.45</td>
	  <td id="T_14ce3_row7_col9" class="data row7 col9" >-1.20</td>
	</tr>
	<tr>
	  <th id="T_14ce3_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_14ce3_row8_col0" class="data row8 col0" ></td>
	  <td id="T_14ce3_row8_col1" class="data row8 col1" ></td>
	  <td id="T_14ce3_row8_col2" class="data row8 col2" ></td>
	  <td id="T_14ce3_row8_col3" class="data row8 col3" ></td>
	  <td id="T_14ce3_row8_col4" class="data row8 col4" ></td>
	  <td id="T_14ce3_row8_col5" class="data row8 col5" ></td>
	  <td id="T_14ce3_row8_col6" class="data row8 col6" ></td>
	  <td id="T_14ce3_row8_col7" class="data row8 col7" ></td>
	  <td id="T_14ce3_row8_col8" class="data row8 col8" >-1.73</td>
	  <td id="T_14ce3_row8_col9" class="data row8 col9" >-1.54</td>
	</tr>
	<tr>
	  <th id="T_14ce3_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_14ce3_row9_col0" class="data row9 col0" ></td>
	  <td id="T_14ce3_row9_col1" class="data row9 col1" ></td>
	  <td id="T_14ce3_row9_col2" class="data row9 col2" ></td>
	  <td id="T_14ce3_row9_col3" class="data row9 col3" ></td>
	  <td id="T_14ce3_row9_col4" class="data row9 col4" ></td>
	  <td id="T_14ce3_row9_col5" class="data row9 col5" ></td>
	  <td id="T_14ce3_row9_col6" class="data row9 col6" ></td>
	  <td id="T_14ce3_row9_col7" class="data row9 col7" ></td>
	  <td id="T_14ce3_row9_col8" class="data row9 col8" ></td>
	  <td id="T_14ce3_row9_col9" class="data row9 col9" >-1.79</td>
	</tr>
  </tbody>
</table>

```python
swaptree = bintree_pricing(payoff=payoff, ratetree=ratetree.iloc[:tsteps,:tsteps], undertree= refratetree.iloc[:tsteps,:tsteps], cftree=cftree, timing='deferred')
format_bintree(swaptree)
```

<style type="text/css">
</style>
<table id="T_08c4f">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_08c4f_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_08c4f_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_08c4f_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_08c4f_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_08c4f_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_08c4f_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_08c4f_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_08c4f_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_08c4f_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_08c4f_level0_col9" class="col_heading level0 col9" >4.50</th>
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_08c4f_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_08c4f_row0_col0" class="data row0 col0" >-2.31</td>
	  <td id="T_08c4f_row0_col1" class="data row0 col1" >2.23</td>
	  <td id="T_08c4f_row0_col2" class="data row0 col2" >6.40</td>
	  <td id="T_08c4f_row0_col3" class="data row0 col3" >9.84</td>
	  <td id="T_08c4f_row0_col4" class="data row0 col4" >12.56</td>
	  <td id="T_08c4f_row0_col5" class="data row0 col5" >14.14</td>
	  <td id="T_08c4f_row0_col6" class="data row0 col6" >14.63</td>
	  <td id="T_08c4f_row0_col7" class="data row0 col7" >14.05</td>
	  <td id="T_08c4f_row0_col8" class="data row0 col8" >12.14</td>
	  <td id="T_08c4f_row0_col9" class="data row0 col9" >7.97</td>
	</tr>
	<tr>
	  <th id="T_08c4f_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_08c4f_row1_col0" class="data row1 col0" ></td>
	  <td id="T_08c4f_row1_col1" class="data row1 col1" >-3.63</td>
	  <td id="T_08c4f_row1_col2" class="data row1 col2" >0.19</td>
	  <td id="T_08c4f_row1_col3" class="data row1 col3" >3.44</td>
	  <td id="T_08c4f_row1_col4" class="data row1 col4" >6.12</td>
	  <td id="T_08c4f_row1_col5" class="data row1 col5" >7.89</td>
	  <td id="T_08c4f_row1_col6" class="data row1 col6" >8.80</td>
	  <td id="T_08c4f_row1_col7" class="data row1 col7" >8.89</td>
	  <td id="T_08c4f_row1_col8" class="data row1 col8" >7.95</td>
	  <td id="T_08c4f_row1_col9" class="data row1 col9" >5.35</td>
	</tr>
	<tr>
	  <th id="T_08c4f_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_08c4f_row2_col0" class="data row2 col0" ></td>
	  <td id="T_08c4f_row2_col1" class="data row2 col1" ></td>
	  <td id="T_08c4f_row2_col2" class="data row2 col2" >-4.69</td>
	  <td id="T_08c4f_row2_col3" class="data row2 col3" >-1.60</td>
	  <td id="T_08c4f_row2_col4" class="data row2 col4" >1.04</td>
	  <td id="T_08c4f_row2_col5" class="data row2 col5" >2.97</td>
	  <td id="T_08c4f_row2_col6" class="data row2 col6" >4.24</td>
	  <td id="T_08c4f_row2_col7" class="data row2 col7" >4.87</td>
	  <td id="T_08c4f_row2_col8" class="data row2 col8" >4.73</td>
	  <td id="T_08c4f_row2_col9" class="data row2 col9" >3.35</td>
	</tr>
	<tr>
	  <th id="T_08c4f_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_08c4f_row3_col0" class="data row3 col0" ></td>
	  <td id="T_08c4f_row3_col1" class="data row3 col1" ></td>
	  <td id="T_08c4f_row3_col2" class="data row3 col2" ></td>
	  <td id="T_08c4f_row3_col3" class="data row3 col3" >-5.52</td>
	  <td id="T_08c4f_row3_col4" class="data row3 col4" >-2.91</td>
	  <td id="T_08c4f_row3_col5" class="data row3 col5" >-0.84</td>
	  <td id="T_08c4f_row3_col6" class="data row3 col6" >0.71</td>
	  <td id="T_08c4f_row3_col7" class="data row3 col7" >1.79</td>
	  <td id="T_08c4f_row3_col8" class="data row3 col8" >2.28</td>
	  <td id="T_08c4f_row3_col9" class="data row3 col9" >1.86</td>
	</tr>
	<tr>
	  <th id="T_08c4f_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_08c4f_row4_col0" class="data row4 col0" ></td>
	  <td id="T_08c4f_row4_col1" class="data row4 col1" ></td>
	  <td id="T_08c4f_row4_col2" class="data row4 col2" ></td>
	  <td id="T_08c4f_row4_col3" class="data row4 col3" ></td>
	  <td id="T_08c4f_row4_col4" class="data row4 col4" >-5.93</td>
	  <td id="T_08c4f_row4_col5" class="data row4 col5" >-3.76</td>
	  <td id="T_08c4f_row4_col6" class="data row4 col6" >-1.98</td>
	  <td id="T_08c4f_row4_col7" class="data row4 col7" >-0.56</td>
	  <td id="T_08c4f_row4_col8" class="data row4 col8" >0.43</td>
	  <td id="T_08c4f_row4_col9" class="data row4 col9" >0.74</td>
	</tr>
	<tr>
	  <th id="T_08c4f_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_08c4f_row5_col0" class="data row5 col0" ></td>
	  <td id="T_08c4f_row5_col1" class="data row5 col1" ></td>
	  <td id="T_08c4f_row5_col2" class="data row5 col2" ></td>
	  <td id="T_08c4f_row5_col3" class="data row5 col3" ></td>
	  <td id="T_08c4f_row5_col4" class="data row5 col4" ></td>
	  <td id="T_08c4f_row5_col5" class="data row5 col5" >-5.97</td>
	  <td id="T_08c4f_row5_col6" class="data row5 col6" >-4.01</td>
	  <td id="T_08c4f_row5_col7" class="data row5 col7" >-2.33</td>
	  <td id="T_08c4f_row5_col8" class="data row5 col8" >-0.96</td>
	  <td id="T_08c4f_row5_col9" class="data row5 col9" >-0.10</td>
	</tr>
	<tr>
	  <th id="T_08c4f_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_08c4f_row6_col0" class="data row6 col0" ></td>
	  <td id="T_08c4f_row6_col1" class="data row6 col1" ></td>
	  <td id="T_08c4f_row6_col2" class="data row6 col2" ></td>
	  <td id="T_08c4f_row6_col3" class="data row6 col3" ></td>
	  <td id="T_08c4f_row6_col4" class="data row6 col4" ></td>
	  <td id="T_08c4f_row6_col5" class="data row6 col5" ></td>
	  <td id="T_08c4f_row6_col6" class="data row6 col6" >-5.54</td>
	  <td id="T_08c4f_row6_col7" class="data row6 col7" >-3.65</td>
	  <td id="T_08c4f_row6_col8" class="data row6 col8" >-2.00</td>
	  <td id="T_08c4f_row6_col9" class="data row6 col9" >-0.72</td>
	</tr>
	<tr>
	  <th id="T_08c4f_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_08c4f_row7_col0" class="data row7 col0" ></td>
	  <td id="T_08c4f_row7_col1" class="data row7 col1" ></td>
	  <td id="T_08c4f_row7_col2" class="data row7 col2" ></td>
	  <td id="T_08c4f_row7_col3" class="data row7 col3" ></td>
	  <td id="T_08c4f_row7_col4" class="data row7 col4" ></td>
	  <td id="T_08c4f_row7_col5" class="data row7 col5" ></td>
	  <td id="T_08c4f_row7_col6" class="data row7 col6" ></td>
	  <td id="T_08c4f_row7_col7" class="data row7 col7" >-4.64</td>
	  <td id="T_08c4f_row7_col8" class="data row7 col8" >-2.78</td>
	  <td id="T_08c4f_row7_col9" class="data row7 col9" >-1.18</td>
	</tr>
	<tr>
	  <th id="T_08c4f_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_08c4f_row8_col0" class="data row8 col0" ></td>
	  <td id="T_08c4f_row8_col1" class="data row8 col1" ></td>
	  <td id="T_08c4f_row8_col2" class="data row8 col2" ></td>
	  <td id="T_08c4f_row8_col3" class="data row8 col3" ></td>
	  <td id="T_08c4f_row8_col4" class="data row8 col4" ></td>
	  <td id="T_08c4f_row8_col5" class="data row8 col5" ></td>
	  <td id="T_08c4f_row8_col6" class="data row8 col6" ></td>
	  <td id="T_08c4f_row8_col7" class="data row8 col7" ></td>
	  <td id="T_08c4f_row8_col8" class="data row8 col8" >-3.35</td>
	  <td id="T_08c4f_row8_col9" class="data row8 col9" >-1.53</td>
	</tr>
	<tr>
	  <th id="T_08c4f_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_08c4f_row9_col0" class="data row9 col0" ></td>
	  <td id="T_08c4f_row9_col1" class="data row9 col1" ></td>
	  <td id="T_08c4f_row9_col2" class="data row9 col2" ></td>
	  <td id="T_08c4f_row9_col3" class="data row9 col3" ></td>
	  <td id="T_08c4f_row9_col4" class="data row9 col4" ></td>
	  <td id="T_08c4f_row9_col5" class="data row9 col5" ></td>
	  <td id="T_08c4f_row9_col6" class="data row9 col6" ></td>
	  <td id="T_08c4f_row9_col7" class="data row9 col7" ></td>
	  <td id="T_08c4f_row9_col8" class="data row9 col8" ></td>
	  <td id="T_08c4f_row9_col9" class="data row9 col9" >-1.78</td>
	</tr>
  </tbody>
</table>

The swap has negative value today.

* It had value of zero at initialization.
* So in this example, the rates have gone lower than the swap rate in the contract, $K$, giving value to the swap receiver.
* We are valuing for the swap payer, so the valuation is negative.

***

# Swaptions

A **receiver swaption** is 

* a contract today, (with a price paid today)
* for the option, not obligation,
* to enter into a swap **receiving** the swap rate, (set today, like a strike,)
* from $T_1$ to $T_2$.

Thus, the **receiver swaption** is like a **put** on a swap.

A **payer swaption** is the same thing, but the option is to enter into the swap, **paying** the swap rate (strike). Thus, it is like the **call** on a swap.

Of course, being short the **receiver** swaption is not the same thing as being long the **payer** swaption.

## Timing

Note that we have three dates to consider: 

* the option expiration
* the swap start date
* the swap end date

A plain swaption sets the swap to start at the time the option expires.

Thus, a 2\% 1Y$\rightarrow$10Y denotes

* 2\% strike
* swaption with expiration of 1 year
* for a swap starting in 1 year and ending 10 years thereafter (in 11 years)

# Midcurve Swaptions

Suppose that the date of (underlying) swap beginning is **after** the swaption expires. 

This is a **midcurve** swaption.

Could have a 6m$\rightarrow$1Y$\rightarrow$5Y midcurve swaption:

* expires in 6 months
* underlying swap starts one year after that expiration (in 1.5 years from today)
* swap runs for 5 years, (until 6.5 years from today.)

## Example

Consider a European 2Y$\rightarrow$ 3Y **payer** swaption with strike of $K=.05$\%.

```python
T = 2
tsteps = int(T/dt)+1

payoff = lambda v: np.maximum(v,0)

swaptreeT = swaptree.iloc[:tsteps,:tsteps]

swaption_tree = bintree_pricing(payoff=payoff,  ratetree=ratetree.iloc[:tsteps,:tsteps], undertree= swaptreeT)
format_bintree(swaption_tree)
```

<style type="text/css">
</style>
<table id="T_302d6">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_302d6_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_302d6_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_302d6_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_302d6_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_302d6_level0_col4" class="col_heading level0 col4" >2.00</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_302d6_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_302d6_row0_col0" class="data row0 col0" >2.52</td>
	  <td id="T_302d6_row0_col1" class="data row0 col1" >3.98</td>
	  <td id="T_302d6_row0_col2" class="data row0 col2" >6.12</td>
	  <td id="T_302d6_row0_col3" class="data row0 col3" >9.04</td>
	  <td id="T_302d6_row0_col4" class="data row0 col4" >12.56</td>
	</tr>
	<tr>
	  <th id="T_302d6_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_302d6_row1_col0" class="data row1 col0" ></td>
	  <td id="T_302d6_row1_col1" class="data row1 col1" >1.10</td>
	  <td id="T_302d6_row1_col2" class="data row1 col2" >1.97</td>
	  <td id="T_302d6_row1_col3" class="data row1 col3" >3.49</td>
	  <td id="T_302d6_row1_col4" class="data row1 col4" >6.12</td>
	</tr>
	<tr>
	  <th id="T_302d6_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_302d6_row2_col0" class="data row2 col0" ></td>
	  <td id="T_302d6_row2_col1" class="data row2 col1" ></td>
	  <td id="T_302d6_row2_col2" class="data row2 col2" >0.25</td>
	  <td id="T_302d6_row2_col3" class="data row2 col3" >0.51</td>
	  <td id="T_302d6_row2_col4" class="data row2 col4" >1.04</td>
	</tr>
	<tr>
	  <th id="T_302d6_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_302d6_row3_col0" class="data row3 col0" ></td>
	  <td id="T_302d6_row3_col1" class="data row3 col1" ></td>
	  <td id="T_302d6_row3_col2" class="data row3 col2" ></td>
	  <td id="T_302d6_row3_col3" class="data row3 col3" >0.00</td>
	  <td id="T_302d6_row3_col4" class="data row3 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_302d6_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_302d6_row4_col0" class="data row4 col0" ></td>
	  <td id="T_302d6_row4_col1" class="data row4 col1" ></td>
	  <td id="T_302d6_row4_col2" class="data row4 col2" ></td>
	  <td id="T_302d6_row4_col3" class="data row4 col3" ></td>
	  <td id="T_302d6_row4_col4" class="data row4 col4" >0.00</td>
	</tr>
  </tbody>
</table>

## American Swaption

With the binomial tree approach, it is easy to revalue this as an American option.

```python
swaption_tree_Amer = bintree_pricing(payoff=payoff,  ratetree=ratetree.iloc[:tsteps,:tsteps], undertree= swaptreeT,style='american')
format_bintree(swaption_tree_Amer)
```

<style type="text/css">
</style>
<table id="T_56506">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_56506_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_56506_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_56506_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_56506_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_56506_level0_col4" class="col_heading level0 col4" >2.00</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_56506_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_56506_row0_col0" class="data row0 col0" >2.61</td>
	  <td id="T_56506_row0_col1" class="data row0 col1" >4.18</td>
	  <td id="T_56506_row0_col2" class="data row0 col2" >6.51</td>
	  <td id="T_56506_row0_col3" class="data row0 col3" >9.84</td>
	  <td id="T_56506_row0_col4" class="data row0 col4" >12.56</td>
	</tr>
	<tr>
	  <th id="T_56506_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_56506_row1_col0" class="data row1 col0" ></td>
	  <td id="T_56506_row1_col1" class="data row1 col1" >1.10</td>
	  <td id="T_56506_row1_col2" class="data row1 col2" >1.97</td>
	  <td id="T_56506_row1_col3" class="data row1 col3" >3.49</td>
	  <td id="T_56506_row1_col4" class="data row1 col4" >6.12</td>
	</tr>
	<tr>
	  <th id="T_56506_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_56506_row2_col0" class="data row2 col0" ></td>
	  <td id="T_56506_row2_col1" class="data row2 col1" ></td>
	  <td id="T_56506_row2_col2" class="data row2 col2" >0.25</td>
	  <td id="T_56506_row2_col3" class="data row2 col3" >0.51</td>
	  <td id="T_56506_row2_col4" class="data row2 col4" >1.04</td>
	</tr>
	<tr>
	  <th id="T_56506_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_56506_row3_col0" class="data row3 col0" ></td>
	  <td id="T_56506_row3_col1" class="data row3 col1" ></td>
	  <td id="T_56506_row3_col2" class="data row3 col2" ></td>
	  <td id="T_56506_row3_col3" class="data row3 col3" >0.00</td>
	  <td id="T_56506_row3_col4" class="data row3 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_56506_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_56506_row4_col0" class="data row4 col0" ></td>
	  <td id="T_56506_row4_col1" class="data row4 col1" ></td>
	  <td id="T_56506_row4_col2" class="data row4 col2" ></td>
	  <td id="T_56506_row4_col3" class="data row4 col3" ></td>
	  <td id="T_56506_row4_col4" class="data row4 col4" >0.00</td>
	</tr>
  </tbody>
</table>

```python
sns.heatmap(exercise_decisions(payoff,undertree=swaptreeT, derivtree=swaption_tree_Amer),square=True);
```

![png](output_24_0.png)

***

# Additional Swap and Swaption Example 

Using real market data…

```python
DATE = '2024-02-20'
FILEIN = f'../data/cap_curves_{DATE}.xlsx'
```

```python
Tdata = 3.25
curves = pd.read_excel(FILEIN, sheet_name=f'rate curves {DATE}').set_index('tenor')
```

```python
curves = curves.loc[:Tdata,:]
curves
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
	  <th>swap rates</th>
	  <th>spot rates</th>
	  <th>discounts</th>
	  <th>forwards</th>
	  <th>flat vols</th>
	  <th>fwd vols</th>
	</tr>
	<tr>
	  <th>tenor</th>
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
	  <th>0.25</th>
	  <td>0.052211</td>
	  <td>0.052211</td>
	  <td>0.987115</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>0.50</th>
	  <td>0.051540</td>
	  <td>0.051535</td>
	  <td>0.974722</td>
	  <td>0.050860</td>
	  <td>0.166025</td>
	  <td>0.166025</td>
	</tr>
	<tr>
	  <th>0.75</th>
	  <td>0.050506</td>
	  <td>0.050490</td>
	  <td>0.963069</td>
	  <td>0.048400</td>
	  <td>0.191290</td>
	  <td>0.210648</td>
	</tr>
	<tr>
	  <th>1.00</th>
	  <td>0.049284</td>
	  <td>0.049250</td>
	  <td>0.952230</td>
	  <td>0.045531</td>
	  <td>0.216554</td>
	  <td>0.254312</td>
	</tr>
	<tr>
	  <th>1.25</th>
	  <td>0.047631</td>
	  <td>0.047565</td>
	  <td>0.942608</td>
	  <td>0.040831</td>
	  <td>0.260043</td>
	  <td>0.361247</td>
	</tr>
	<tr>
	  <th>1.50</th>
	  <td>0.046235</td>
	  <td>0.046141</td>
	  <td>0.933499</td>
	  <td>0.039030</td>
	  <td>0.292615</td>
	  <td>0.380930</td>
	</tr>
	<tr>
	  <th>1.75</th>
	  <td>0.045059</td>
	  <td>0.044939</td>
	  <td>0.924774</td>
	  <td>0.037738</td>
	  <td>0.315878</td>
	  <td>0.388953</td>
	</tr>
	<tr>
	  <th>2.00</th>
	  <td>0.044133</td>
	  <td>0.043994</td>
	  <td>0.916212</td>
	  <td>0.037382</td>
	  <td>0.331443</td>
	  <td>0.386643</td>
	</tr>
	<tr>
	  <th>2.25</th>
	  <td>0.043173</td>
	  <td>0.043011</td>
	  <td>0.908230</td>
	  <td>0.035151</td>
	  <td>0.340919</td>
	  <td>0.376247</td>
	</tr>
	<tr>
	  <th>2.50</th>
	  <td>0.042461</td>
	  <td>0.042283</td>
	  <td>0.900188</td>
	  <td>0.035738</td>
	  <td>0.345916</td>
	  <td>0.363764</td>
	</tr>
	<tr>
	  <th>2.75</th>
	  <td>0.041934</td>
	  <td>0.041745</td>
	  <td>0.892076</td>
	  <td>0.036373</td>
	  <td>0.348042</td>
	  <td>0.353513</td>
	</tr>
	<tr>
	  <th>3.00</th>
	  <td>0.041542</td>
	  <td>0.041347</td>
	  <td>0.883906</td>
	  <td>0.036973</td>
	  <td>0.348907</td>
	  <td>0.349207</td>
	</tr>
	<tr>
	  <th>3.25</th>
	  <td>0.041101</td>
	  <td>0.040896</td>
	  <td>0.876134</td>
	  <td>0.035482</td>
	  <td>0.349778</td>
	  <td>0.350339</td>
	</tr>
  </tbody>
</table>
</div>

## Fit the BDT Tree

```python
quotes = curves['discounts']*100

sigmas = curves['fwd vols']
sigmas.iloc[0] = sigmas.iloc[1]

theta, ratetree = estimate_theta(sigmas,quotes)
format_bintree(theta.to_frame().T, style='{:.2%}')

format_bintree(ratetree,style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_9da41">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_9da41_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_9da41_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_9da41_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_9da41_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_9da41_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_9da41_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_9da41_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_9da41_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_9da41_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_9da41_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_9da41_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_9da41_level0_col11" class="col_heading level0 col11" >2.75</th>
	  <th id="T_9da41_level0_col12" class="col_heading level0 col12" >3.00</th>
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
	  <th class="blank col12" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_9da41_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_9da41_row0_col0" class="data row0 col0" >5.19%</td>
	  <td id="T_9da41_row0_col1" class="data row0 col1" >5.47%</td>
	  <td id="T_9da41_row0_col2" class="data row0 col2" >5.69%</td>
	  <td id="T_9da41_row0_col3" class="data row0 col3" >5.91%</td>
	  <td id="T_9da41_row0_col4" class="data row0 col4" >5.91%</td>
	  <td id="T_9da41_row0_col5" class="data row0 col5" >6.38%</td>
	  <td id="T_9da41_row0_col6" class="data row0 col6" >7.04%</td>
	  <td id="T_9da41_row0_col7" class="data row0 col7" >8.03%</td>
	  <td id="T_9da41_row0_col8" class="data row0 col8" >8.78%</td>
	  <td id="T_9da41_row0_col9" class="data row0 col9" >10.44%</td>
	  <td id="T_9da41_row0_col10" class="data row0 col10" >12.51%</td>
	  <td id="T_9da41_row0_col11" class="data row0 col11" >15.02%</td>
	  <td id="T_9da41_row0_col12" class="data row0 col12" >17.10%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_9da41_row1_col0" class="data row1 col0" ></td>
	  <td id="T_9da41_row1_col1" class="data row1 col1" >4.64%</td>
	  <td id="T_9da41_row1_col2" class="data row1 col2" >4.82%</td>
	  <td id="T_9da41_row1_col3" class="data row1 col3" >5.01%</td>
	  <td id="T_9da41_row1_col4" class="data row1 col4" >5.01%</td>
	  <td id="T_9da41_row1_col5" class="data row1 col5" >5.40%</td>
	  <td id="T_9da41_row1_col6" class="data row1 col6" >5.96%</td>
	  <td id="T_9da41_row1_col7" class="data row1 col7" >6.80%</td>
	  <td id="T_9da41_row1_col8" class="data row1 col8" >7.44%</td>
	  <td id="T_9da41_row1_col9" class="data row1 col9" >8.85%</td>
	  <td id="T_9da41_row1_col10" class="data row1 col10" >10.59%</td>
	  <td id="T_9da41_row1_col11" class="data row1 col11" >12.72%</td>
	  <td id="T_9da41_row1_col12" class="data row1 col12" >14.48%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_9da41_row2_col0" class="data row2 col0" ></td>
	  <td id="T_9da41_row2_col1" class="data row2 col1" ></td>
	  <td id="T_9da41_row2_col2" class="data row2 col2" >3.91%</td>
	  <td id="T_9da41_row2_col3" class="data row2 col3" >4.06%</td>
	  <td id="T_9da41_row2_col4" class="data row2 col4" >4.06%</td>
	  <td id="T_9da41_row2_col5" class="data row2 col5" >4.38%</td>
	  <td id="T_9da41_row2_col6" class="data row2 col6" >4.83%</td>
	  <td id="T_9da41_row2_col7" class="data row2 col7" >5.51%</td>
	  <td id="T_9da41_row2_col8" class="data row2 col8" >6.02%</td>
	  <td id="T_9da41_row2_col9" class="data row2 col9" >7.17%</td>
	  <td id="T_9da41_row2_col10" class="data row2 col10" >8.58%</td>
	  <td id="T_9da41_row2_col11" class="data row2 col11" >10.31%</td>
	  <td id="T_9da41_row2_col12" class="data row2 col12" >11.73%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_9da41_row3_col0" class="data row3 col0" ></td>
	  <td id="T_9da41_row3_col1" class="data row3 col1" ></td>
	  <td id="T_9da41_row3_col2" class="data row3 col2" ></td>
	  <td id="T_9da41_row3_col3" class="data row3 col3" >3.14%</td>
	  <td id="T_9da41_row3_col4" class="data row3 col4" >3.15%</td>
	  <td id="T_9da41_row3_col5" class="data row3 col5" >3.39%</td>
	  <td id="T_9da41_row3_col6" class="data row3 col6" >3.74%</td>
	  <td id="T_9da41_row3_col7" class="data row3 col7" >4.27%</td>
	  <td id="T_9da41_row3_col8" class="data row3 col8" >4.67%</td>
	  <td id="T_9da41_row3_col9" class="data row3 col9" >5.56%</td>
	  <td id="T_9da41_row3_col10" class="data row3 col10" >6.65%</td>
	  <td id="T_9da41_row3_col11" class="data row3 col11" >7.99%</td>
	  <td id="T_9da41_row3_col12" class="data row3 col12" >9.10%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_9da41_row4_col0" class="data row4 col0" ></td>
	  <td id="T_9da41_row4_col1" class="data row4 col1" ></td>
	  <td id="T_9da41_row4_col2" class="data row4 col2" ></td>
	  <td id="T_9da41_row4_col3" class="data row4 col3" ></td>
	  <td id="T_9da41_row4_col4" class="data row4 col4" >2.19%</td>
	  <td id="T_9da41_row4_col5" class="data row4 col5" >2.36%</td>
	  <td id="T_9da41_row4_col6" class="data row4 col6" >2.61%</td>
	  <td id="T_9da41_row4_col7" class="data row4 col7" >2.98%</td>
	  <td id="T_9da41_row4_col8" class="data row4 col8" >3.25%</td>
	  <td id="T_9da41_row4_col9" class="data row4 col9" >3.87%</td>
	  <td id="T_9da41_row4_col10" class="data row4 col10" >4.64%</td>
	  <td id="T_9da41_row4_col11" class="data row4 col11" >5.57%</td>
	  <td id="T_9da41_row4_col12" class="data row4 col12" >6.34%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_9da41_row5_col0" class="data row5 col0" ></td>
	  <td id="T_9da41_row5_col1" class="data row5 col1" ></td>
	  <td id="T_9da41_row5_col2" class="data row5 col2" ></td>
	  <td id="T_9da41_row5_col3" class="data row5 col3" ></td>
	  <td id="T_9da41_row5_col4" class="data row5 col4" ></td>
	  <td id="T_9da41_row5_col5" class="data row5 col5" >1.62%</td>
	  <td id="T_9da41_row5_col6" class="data row5 col6" >1.78%</td>
	  <td id="T_9da41_row5_col7" class="data row5 col7" >2.03%</td>
	  <td id="T_9da41_row5_col8" class="data row5 col8" >2.22%</td>
	  <td id="T_9da41_row5_col9" class="data row5 col9" >2.65%</td>
	  <td id="T_9da41_row5_col10" class="data row5 col10" >3.17%</td>
	  <td id="T_9da41_row5_col11" class="data row5 col11" >3.81%</td>
	  <td id="T_9da41_row5_col12" class="data row5 col12" >4.33%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_9da41_row6_col0" class="data row6 col0" ></td>
	  <td id="T_9da41_row6_col1" class="data row6 col1" ></td>
	  <td id="T_9da41_row6_col2" class="data row6 col2" ></td>
	  <td id="T_9da41_row6_col3" class="data row6 col3" ></td>
	  <td id="T_9da41_row6_col4" class="data row6 col4" ></td>
	  <td id="T_9da41_row6_col5" class="data row6 col5" ></td>
	  <td id="T_9da41_row6_col6" class="data row6 col6" >1.21%</td>
	  <td id="T_9da41_row6_col7" class="data row6 col7" >1.38%</td>
	  <td id="T_9da41_row6_col8" class="data row6 col8" >1.51%</td>
	  <td id="T_9da41_row6_col9" class="data row6 col9" >1.79%</td>
	  <td id="T_9da41_row6_col10" class="data row6 col10" >2.15%</td>
	  <td id="T_9da41_row6_col11" class="data row6 col11" >2.58%</td>
	  <td id="T_9da41_row6_col12" class="data row6 col12" >2.94%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_9da41_row7_col0" class="data row7 col0" ></td>
	  <td id="T_9da41_row7_col1" class="data row7 col1" ></td>
	  <td id="T_9da41_row7_col2" class="data row7 col2" ></td>
	  <td id="T_9da41_row7_col3" class="data row7 col3" ></td>
	  <td id="T_9da41_row7_col4" class="data row7 col4" ></td>
	  <td id="T_9da41_row7_col5" class="data row7 col5" ></td>
	  <td id="T_9da41_row7_col6" class="data row7 col6" ></td>
	  <td id="T_9da41_row7_col7" class="data row7 col7" >0.94%</td>
	  <td id="T_9da41_row7_col8" class="data row7 col8" >1.02%</td>
	  <td id="T_9da41_row7_col9" class="data row7 col9" >1.22%</td>
	  <td id="T_9da41_row7_col10" class="data row7 col10" >1.46%</td>
	  <td id="T_9da41_row7_col11" class="data row7 col11" >1.75%</td>
	  <td id="T_9da41_row7_col12" class="data row7 col12" >1.99%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_9da41_row8_col0" class="data row8 col0" ></td>
	  <td id="T_9da41_row8_col1" class="data row8 col1" ></td>
	  <td id="T_9da41_row8_col2" class="data row8 col2" ></td>
	  <td id="T_9da41_row8_col3" class="data row8 col3" ></td>
	  <td id="T_9da41_row8_col4" class="data row8 col4" ></td>
	  <td id="T_9da41_row8_col5" class="data row8 col5" ></td>
	  <td id="T_9da41_row8_col6" class="data row8 col6" ></td>
	  <td id="T_9da41_row8_col7" class="data row8 col7" ></td>
	  <td id="T_9da41_row8_col8" class="data row8 col8" >0.70%</td>
	  <td id="T_9da41_row8_col9" class="data row8 col9" >0.84%</td>
	  <td id="T_9da41_row8_col10" class="data row8 col10" >1.00%</td>
	  <td id="T_9da41_row8_col11" class="data row8 col11" >1.20%</td>
	  <td id="T_9da41_row8_col12" class="data row8 col12" >1.37%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_9da41_row9_col0" class="data row9 col0" ></td>
	  <td id="T_9da41_row9_col1" class="data row9 col1" ></td>
	  <td id="T_9da41_row9_col2" class="data row9 col2" ></td>
	  <td id="T_9da41_row9_col3" class="data row9 col3" ></td>
	  <td id="T_9da41_row9_col4" class="data row9 col4" ></td>
	  <td id="T_9da41_row9_col5" class="data row9 col5" ></td>
	  <td id="T_9da41_row9_col6" class="data row9 col6" ></td>
	  <td id="T_9da41_row9_col7" class="data row9 col7" ></td>
	  <td id="T_9da41_row9_col8" class="data row9 col8" ></td>
	  <td id="T_9da41_row9_col9" class="data row9 col9" >0.58%</td>
	  <td id="T_9da41_row9_col10" class="data row9 col10" >0.70%</td>
	  <td id="T_9da41_row9_col11" class="data row9 col11" >0.84%</td>
	  <td id="T_9da41_row9_col12" class="data row9 col12" >0.95%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_9da41_row10_col0" class="data row10 col0" ></td>
	  <td id="T_9da41_row10_col1" class="data row10 col1" ></td>
	  <td id="T_9da41_row10_col2" class="data row10 col2" ></td>
	  <td id="T_9da41_row10_col3" class="data row10 col3" ></td>
	  <td id="T_9da41_row10_col4" class="data row10 col4" ></td>
	  <td id="T_9da41_row10_col5" class="data row10 col5" ></td>
	  <td id="T_9da41_row10_col6" class="data row10 col6" ></td>
	  <td id="T_9da41_row10_col7" class="data row10 col7" ></td>
	  <td id="T_9da41_row10_col8" class="data row10 col8" ></td>
	  <td id="T_9da41_row10_col9" class="data row10 col9" ></td>
	  <td id="T_9da41_row10_col10" class="data row10 col10" >0.49%</td>
	  <td id="T_9da41_row10_col11" class="data row10 col11" >0.59%</td>
	  <td id="T_9da41_row10_col12" class="data row10 col12" >0.67%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_9da41_row11_col0" class="data row11 col0" ></td>
	  <td id="T_9da41_row11_col1" class="data row11 col1" ></td>
	  <td id="T_9da41_row11_col2" class="data row11 col2" ></td>
	  <td id="T_9da41_row11_col3" class="data row11 col3" ></td>
	  <td id="T_9da41_row11_col4" class="data row11 col4" ></td>
	  <td id="T_9da41_row11_col5" class="data row11 col5" ></td>
	  <td id="T_9da41_row11_col6" class="data row11 col6" ></td>
	  <td id="T_9da41_row11_col7" class="data row11 col7" ></td>
	  <td id="T_9da41_row11_col8" class="data row11 col8" ></td>
	  <td id="T_9da41_row11_col9" class="data row11 col9" ></td>
	  <td id="T_9da41_row11_col10" class="data row11 col10" ></td>
	  <td id="T_9da41_row11_col11" class="data row11 col11" >0.41%</td>
	  <td id="T_9da41_row11_col12" class="data row11 col12" >0.47%</td>
	</tr>
	<tr>
	  <th id="T_9da41_level0_row12" class="row_heading level0 row12" >12</th>
	  <td id="T_9da41_row12_col0" class="data row12 col0" ></td>
	  <td id="T_9da41_row12_col1" class="data row12 col1" ></td>
	  <td id="T_9da41_row12_col2" class="data row12 col2" ></td>
	  <td id="T_9da41_row12_col3" class="data row12 col3" ></td>
	  <td id="T_9da41_row12_col4" class="data row12 col4" ></td>
	  <td id="T_9da41_row12_col5" class="data row12 col5" ></td>
	  <td id="T_9da41_row12_col6" class="data row12 col6" ></td>
	  <td id="T_9da41_row12_col7" class="data row12 col7" ></td>
	  <td id="T_9da41_row12_col8" class="data row12 col8" ></td>
	  <td id="T_9da41_row12_col9" class="data row12 col9" ></td>
	  <td id="T_9da41_row12_col10" class="data row12 col10" ></td>
	  <td id="T_9da41_row12_col11" class="data row12 col11" ></td>
	  <td id="T_9da41_row12_col12" class="data row12 col12" >0.33%</td>
	</tr>
  </tbody>
</table>

```python
FREQTREE = 4
dt = 1/FREQTREE

format_bintree(ratetree,style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_5e6c3">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_5e6c3_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_5e6c3_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_5e6c3_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_5e6c3_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_5e6c3_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_5e6c3_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_5e6c3_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_5e6c3_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_5e6c3_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_5e6c3_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_5e6c3_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_5e6c3_level0_col11" class="col_heading level0 col11" >2.75</th>
	  <th id="T_5e6c3_level0_col12" class="col_heading level0 col12" >3.00</th>
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
	  <th class="blank col12" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_5e6c3_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_5e6c3_row0_col0" class="data row0 col0" >5.19%</td>
	  <td id="T_5e6c3_row0_col1" class="data row0 col1" >5.47%</td>
	  <td id="T_5e6c3_row0_col2" class="data row0 col2" >5.69%</td>
	  <td id="T_5e6c3_row0_col3" class="data row0 col3" >5.91%</td>
	  <td id="T_5e6c3_row0_col4" class="data row0 col4" >5.91%</td>
	  <td id="T_5e6c3_row0_col5" class="data row0 col5" >6.38%</td>
	  <td id="T_5e6c3_row0_col6" class="data row0 col6" >7.04%</td>
	  <td id="T_5e6c3_row0_col7" class="data row0 col7" >8.03%</td>
	  <td id="T_5e6c3_row0_col8" class="data row0 col8" >8.78%</td>
	  <td id="T_5e6c3_row0_col9" class="data row0 col9" >10.44%</td>
	  <td id="T_5e6c3_row0_col10" class="data row0 col10" >12.51%</td>
	  <td id="T_5e6c3_row0_col11" class="data row0 col11" >15.02%</td>
	  <td id="T_5e6c3_row0_col12" class="data row0 col12" >17.10%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_5e6c3_row1_col0" class="data row1 col0" ></td>
	  <td id="T_5e6c3_row1_col1" class="data row1 col1" >4.64%</td>
	  <td id="T_5e6c3_row1_col2" class="data row1 col2" >4.82%</td>
	  <td id="T_5e6c3_row1_col3" class="data row1 col3" >5.01%</td>
	  <td id="T_5e6c3_row1_col4" class="data row1 col4" >5.01%</td>
	  <td id="T_5e6c3_row1_col5" class="data row1 col5" >5.40%</td>
	  <td id="T_5e6c3_row1_col6" class="data row1 col6" >5.96%</td>
	  <td id="T_5e6c3_row1_col7" class="data row1 col7" >6.80%</td>
	  <td id="T_5e6c3_row1_col8" class="data row1 col8" >7.44%</td>
	  <td id="T_5e6c3_row1_col9" class="data row1 col9" >8.85%</td>
	  <td id="T_5e6c3_row1_col10" class="data row1 col10" >10.59%</td>
	  <td id="T_5e6c3_row1_col11" class="data row1 col11" >12.72%</td>
	  <td id="T_5e6c3_row1_col12" class="data row1 col12" >14.48%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_5e6c3_row2_col0" class="data row2 col0" ></td>
	  <td id="T_5e6c3_row2_col1" class="data row2 col1" ></td>
	  <td id="T_5e6c3_row2_col2" class="data row2 col2" >3.91%</td>
	  <td id="T_5e6c3_row2_col3" class="data row2 col3" >4.06%</td>
	  <td id="T_5e6c3_row2_col4" class="data row2 col4" >4.06%</td>
	  <td id="T_5e6c3_row2_col5" class="data row2 col5" >4.38%</td>
	  <td id="T_5e6c3_row2_col6" class="data row2 col6" >4.83%</td>
	  <td id="T_5e6c3_row2_col7" class="data row2 col7" >5.51%</td>
	  <td id="T_5e6c3_row2_col8" class="data row2 col8" >6.02%</td>
	  <td id="T_5e6c3_row2_col9" class="data row2 col9" >7.17%</td>
	  <td id="T_5e6c3_row2_col10" class="data row2 col10" >8.58%</td>
	  <td id="T_5e6c3_row2_col11" class="data row2 col11" >10.31%</td>
	  <td id="T_5e6c3_row2_col12" class="data row2 col12" >11.73%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_5e6c3_row3_col0" class="data row3 col0" ></td>
	  <td id="T_5e6c3_row3_col1" class="data row3 col1" ></td>
	  <td id="T_5e6c3_row3_col2" class="data row3 col2" ></td>
	  <td id="T_5e6c3_row3_col3" class="data row3 col3" >3.14%</td>
	  <td id="T_5e6c3_row3_col4" class="data row3 col4" >3.15%</td>
	  <td id="T_5e6c3_row3_col5" class="data row3 col5" >3.39%</td>
	  <td id="T_5e6c3_row3_col6" class="data row3 col6" >3.74%</td>
	  <td id="T_5e6c3_row3_col7" class="data row3 col7" >4.27%</td>
	  <td id="T_5e6c3_row3_col8" class="data row3 col8" >4.67%</td>
	  <td id="T_5e6c3_row3_col9" class="data row3 col9" >5.56%</td>
	  <td id="T_5e6c3_row3_col10" class="data row3 col10" >6.65%</td>
	  <td id="T_5e6c3_row3_col11" class="data row3 col11" >7.99%</td>
	  <td id="T_5e6c3_row3_col12" class="data row3 col12" >9.10%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_5e6c3_row4_col0" class="data row4 col0" ></td>
	  <td id="T_5e6c3_row4_col1" class="data row4 col1" ></td>
	  <td id="T_5e6c3_row4_col2" class="data row4 col2" ></td>
	  <td id="T_5e6c3_row4_col3" class="data row4 col3" ></td>
	  <td id="T_5e6c3_row4_col4" class="data row4 col4" >2.19%</td>
	  <td id="T_5e6c3_row4_col5" class="data row4 col5" >2.36%</td>
	  <td id="T_5e6c3_row4_col6" class="data row4 col6" >2.61%</td>
	  <td id="T_5e6c3_row4_col7" class="data row4 col7" >2.98%</td>
	  <td id="T_5e6c3_row4_col8" class="data row4 col8" >3.25%</td>
	  <td id="T_5e6c3_row4_col9" class="data row4 col9" >3.87%</td>
	  <td id="T_5e6c3_row4_col10" class="data row4 col10" >4.64%</td>
	  <td id="T_5e6c3_row4_col11" class="data row4 col11" >5.57%</td>
	  <td id="T_5e6c3_row4_col12" class="data row4 col12" >6.34%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_5e6c3_row5_col0" class="data row5 col0" ></td>
	  <td id="T_5e6c3_row5_col1" class="data row5 col1" ></td>
	  <td id="T_5e6c3_row5_col2" class="data row5 col2" ></td>
	  <td id="T_5e6c3_row5_col3" class="data row5 col3" ></td>
	  <td id="T_5e6c3_row5_col4" class="data row5 col4" ></td>
	  <td id="T_5e6c3_row5_col5" class="data row5 col5" >1.62%</td>
	  <td id="T_5e6c3_row5_col6" class="data row5 col6" >1.78%</td>
	  <td id="T_5e6c3_row5_col7" class="data row5 col7" >2.03%</td>
	  <td id="T_5e6c3_row5_col8" class="data row5 col8" >2.22%</td>
	  <td id="T_5e6c3_row5_col9" class="data row5 col9" >2.65%</td>
	  <td id="T_5e6c3_row5_col10" class="data row5 col10" >3.17%</td>
	  <td id="T_5e6c3_row5_col11" class="data row5 col11" >3.81%</td>
	  <td id="T_5e6c3_row5_col12" class="data row5 col12" >4.33%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_5e6c3_row6_col0" class="data row6 col0" ></td>
	  <td id="T_5e6c3_row6_col1" class="data row6 col1" ></td>
	  <td id="T_5e6c3_row6_col2" class="data row6 col2" ></td>
	  <td id="T_5e6c3_row6_col3" class="data row6 col3" ></td>
	  <td id="T_5e6c3_row6_col4" class="data row6 col4" ></td>
	  <td id="T_5e6c3_row6_col5" class="data row6 col5" ></td>
	  <td id="T_5e6c3_row6_col6" class="data row6 col6" >1.21%</td>
	  <td id="T_5e6c3_row6_col7" class="data row6 col7" >1.38%</td>
	  <td id="T_5e6c3_row6_col8" class="data row6 col8" >1.51%</td>
	  <td id="T_5e6c3_row6_col9" class="data row6 col9" >1.79%</td>
	  <td id="T_5e6c3_row6_col10" class="data row6 col10" >2.15%</td>
	  <td id="T_5e6c3_row6_col11" class="data row6 col11" >2.58%</td>
	  <td id="T_5e6c3_row6_col12" class="data row6 col12" >2.94%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_5e6c3_row7_col0" class="data row7 col0" ></td>
	  <td id="T_5e6c3_row7_col1" class="data row7 col1" ></td>
	  <td id="T_5e6c3_row7_col2" class="data row7 col2" ></td>
	  <td id="T_5e6c3_row7_col3" class="data row7 col3" ></td>
	  <td id="T_5e6c3_row7_col4" class="data row7 col4" ></td>
	  <td id="T_5e6c3_row7_col5" class="data row7 col5" ></td>
	  <td id="T_5e6c3_row7_col6" class="data row7 col6" ></td>
	  <td id="T_5e6c3_row7_col7" class="data row7 col7" >0.94%</td>
	  <td id="T_5e6c3_row7_col8" class="data row7 col8" >1.02%</td>
	  <td id="T_5e6c3_row7_col9" class="data row7 col9" >1.22%</td>
	  <td id="T_5e6c3_row7_col10" class="data row7 col10" >1.46%</td>
	  <td id="T_5e6c3_row7_col11" class="data row7 col11" >1.75%</td>
	  <td id="T_5e6c3_row7_col12" class="data row7 col12" >1.99%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_5e6c3_row8_col0" class="data row8 col0" ></td>
	  <td id="T_5e6c3_row8_col1" class="data row8 col1" ></td>
	  <td id="T_5e6c3_row8_col2" class="data row8 col2" ></td>
	  <td id="T_5e6c3_row8_col3" class="data row8 col3" ></td>
	  <td id="T_5e6c3_row8_col4" class="data row8 col4" ></td>
	  <td id="T_5e6c3_row8_col5" class="data row8 col5" ></td>
	  <td id="T_5e6c3_row8_col6" class="data row8 col6" ></td>
	  <td id="T_5e6c3_row8_col7" class="data row8 col7" ></td>
	  <td id="T_5e6c3_row8_col8" class="data row8 col8" >0.70%</td>
	  <td id="T_5e6c3_row8_col9" class="data row8 col9" >0.84%</td>
	  <td id="T_5e6c3_row8_col10" class="data row8 col10" >1.00%</td>
	  <td id="T_5e6c3_row8_col11" class="data row8 col11" >1.20%</td>
	  <td id="T_5e6c3_row8_col12" class="data row8 col12" >1.37%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_5e6c3_row9_col0" class="data row9 col0" ></td>
	  <td id="T_5e6c3_row9_col1" class="data row9 col1" ></td>
	  <td id="T_5e6c3_row9_col2" class="data row9 col2" ></td>
	  <td id="T_5e6c3_row9_col3" class="data row9 col3" ></td>
	  <td id="T_5e6c3_row9_col4" class="data row9 col4" ></td>
	  <td id="T_5e6c3_row9_col5" class="data row9 col5" ></td>
	  <td id="T_5e6c3_row9_col6" class="data row9 col6" ></td>
	  <td id="T_5e6c3_row9_col7" class="data row9 col7" ></td>
	  <td id="T_5e6c3_row9_col8" class="data row9 col8" ></td>
	  <td id="T_5e6c3_row9_col9" class="data row9 col9" >0.58%</td>
	  <td id="T_5e6c3_row9_col10" class="data row9 col10" >0.70%</td>
	  <td id="T_5e6c3_row9_col11" class="data row9 col11" >0.84%</td>
	  <td id="T_5e6c3_row9_col12" class="data row9 col12" >0.95%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_5e6c3_row10_col0" class="data row10 col0" ></td>
	  <td id="T_5e6c3_row10_col1" class="data row10 col1" ></td>
	  <td id="T_5e6c3_row10_col2" class="data row10 col2" ></td>
	  <td id="T_5e6c3_row10_col3" class="data row10 col3" ></td>
	  <td id="T_5e6c3_row10_col4" class="data row10 col4" ></td>
	  <td id="T_5e6c3_row10_col5" class="data row10 col5" ></td>
	  <td id="T_5e6c3_row10_col6" class="data row10 col6" ></td>
	  <td id="T_5e6c3_row10_col7" class="data row10 col7" ></td>
	  <td id="T_5e6c3_row10_col8" class="data row10 col8" ></td>
	  <td id="T_5e6c3_row10_col9" class="data row10 col9" ></td>
	  <td id="T_5e6c3_row10_col10" class="data row10 col10" >0.49%</td>
	  <td id="T_5e6c3_row10_col11" class="data row10 col11" >0.59%</td>
	  <td id="T_5e6c3_row10_col12" class="data row10 col12" >0.67%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_5e6c3_row11_col0" class="data row11 col0" ></td>
	  <td id="T_5e6c3_row11_col1" class="data row11 col1" ></td>
	  <td id="T_5e6c3_row11_col2" class="data row11 col2" ></td>
	  <td id="T_5e6c3_row11_col3" class="data row11 col3" ></td>
	  <td id="T_5e6c3_row11_col4" class="data row11 col4" ></td>
	  <td id="T_5e6c3_row11_col5" class="data row11 col5" ></td>
	  <td id="T_5e6c3_row11_col6" class="data row11 col6" ></td>
	  <td id="T_5e6c3_row11_col7" class="data row11 col7" ></td>
	  <td id="T_5e6c3_row11_col8" class="data row11 col8" ></td>
	  <td id="T_5e6c3_row11_col9" class="data row11 col9" ></td>
	  <td id="T_5e6c3_row11_col10" class="data row11 col10" ></td>
	  <td id="T_5e6c3_row11_col11" class="data row11 col11" >0.41%</td>
	  <td id="T_5e6c3_row11_col12" class="data row11 col12" >0.47%</td>
	</tr>
	<tr>
	  <th id="T_5e6c3_level0_row12" class="row_heading level0 row12" >12</th>
	  <td id="T_5e6c3_row12_col0" class="data row12 col0" ></td>
	  <td id="T_5e6c3_row12_col1" class="data row12 col1" ></td>
	  <td id="T_5e6c3_row12_col2" class="data row12 col2" ></td>
	  <td id="T_5e6c3_row12_col3" class="data row12 col3" ></td>
	  <td id="T_5e6c3_row12_col4" class="data row12 col4" ></td>
	  <td id="T_5e6c3_row12_col5" class="data row12 col5" ></td>
	  <td id="T_5e6c3_row12_col6" class="data row12 col6" ></td>
	  <td id="T_5e6c3_row12_col7" class="data row12 col7" ></td>
	  <td id="T_5e6c3_row12_col8" class="data row12 col8" ></td>
	  <td id="T_5e6c3_row12_col9" class="data row12 col9" ></td>
	  <td id="T_5e6c3_row12_col10" class="data row12 col10" ></td>
	  <td id="T_5e6c3_row12_col11" class="data row12 col11" ></td>
	  <td id="T_5e6c3_row12_col12" class="data row12 col12" >0.33%</td>
	</tr>
  </tbody>
</table>

Consider a **paying-fixed** swap which resets (and make payments) **quarterly**.

* Maturity is $T=3$
* Notional is $N=100$.
* Swap rate is 3.53\%.
* The floating rate is the quarterly compounded interest rate.

Recall that paying-fixed means you pay the swap rate and receive the floating rate.

```python
T=3
N = 100
```

## Warning!

We can only value the swap if the time step through the tree matches the timing of the swap payments.

* Quarterly swap requires $dt=.25$
* Annual swap requires $dt=1$!

```python
freqswap = FREQTREE
```

### Swap Rate

Get the market swap rate for the swap considered.

Using methods from `FINM 37400`, we can calculate the swap rate from the spot curve.

(In this case, we actually have the swap curve provided and can read it directly, but we calculate it below for illustration.)

```python
STRIKE = calc_swaprate(curves.loc[:T,'discounts'], T, freqswap)
pd.DataFrame(STRIKE,columns=['spot rate'],index=[T]).style.format('{:.4%}')
```

<style type="text/css">
</style>
<table id="T_b110d">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_b110d_level0_col0" class="col_heading level0 col0" >spot rate</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_b110d_level0_row0" class="row_heading level0 row0" >3</th>
	  <td id="T_b110d_row0_col0" class="data row0 col0" >4.1542%</td>
	</tr>
  </tbody>
</table>

The payoff of a swap (paying-fixed) in any given period is

$$\frac{1}{\kappa}N\left(r_{\text{float}}-r_{\text{swap}}\right)$$

where

* $\kappa$ denotes the swap frequency.
* $N$ denotes the notional.

```python
payoff = lambda r: N * (r-STRIKE) / freqswap
```

### Price the swap with the BDT binomial tree

```python
tsteps = int(T/dt)
ratetreeT = ratetree.iloc[:tsteps,:tsteps]
refratetree = freqswap * (np.exp(ratetreeT / FREQTREE)-1)
```

### Get the Cashflow tree

```python
cftree = payoff(refratetree)
format_bintree(cftree,style='${:.2f}')
```

<style type="text/css">
</style>
<table id="T_1b664">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_1b664_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_1b664_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_1b664_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_1b664_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_1b664_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_1b664_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_1b664_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_1b664_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_1b664_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_1b664_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_1b664_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_1b664_level0_col11" class="col_heading level0 col11" >2.75</th>
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
	  <th id="T_1b664_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_1b664_row0_col0" class="data row0 col0" >\$0.27</td>
	  <td id="T_1b664_row0_col1" class="data row0 col1" >\$0.34</td>
	  <td id="T_1b664_row0_col2" class="data row0 col2" >\$0.40</td>
	  <td id="T_1b664_row0_col3" class="data row0 col3" >\$0.45</td>
	  <td id="T_1b664_row0_col4" class="data row0 col4" >\$0.45</td>
	  <td id="T_1b664_row0_col5" class="data row0 col5" >\$0.57</td>
	  <td id="T_1b664_row0_col6" class="data row0 col6" >\$0.74</td>
	  <td id="T_1b664_row0_col7" class="data row0 col7" >\$0.99</td>
	  <td id="T_1b664_row0_col8" class="data row0 col8" >\$1.18</td>
	  <td id="T_1b664_row0_col9" class="data row0 col9" >\$1.61</td>
	  <td id="T_1b664_row0_col10" class="data row0 col10" >\$2.14</td>
	  <td id="T_1b664_row0_col11" class="data row0 col11" >\$2.79</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_1b664_row1_col0" class="data row1 col0" ></td>
	  <td id="T_1b664_row1_col1" class="data row1 col1" >\$0.13</td>
	  <td id="T_1b664_row1_col2" class="data row1 col2" >\$0.17</td>
	  <td id="T_1b664_row1_col3" class="data row1 col3" >\$0.22</td>
	  <td id="T_1b664_row1_col4" class="data row1 col4" >\$0.22</td>
	  <td id="T_1b664_row1_col5" class="data row1 col5" >\$0.32</td>
	  <td id="T_1b664_row1_col6" class="data row1 col6" >\$0.46</td>
	  <td id="T_1b664_row1_col7" class="data row1 col7" >\$0.68</td>
	  <td id="T_1b664_row1_col8" class="data row1 col8" >\$0.84</td>
	  <td id="T_1b664_row1_col9" class="data row1 col9" >\$1.20</td>
	  <td id="T_1b664_row1_col10" class="data row1 col10" >\$1.64</td>
	  <td id="T_1b664_row1_col11" class="data row1 col11" >\$2.19</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_1b664_row2_col0" class="data row2 col0" ></td>
	  <td id="T_1b664_row2_col1" class="data row2 col1" ></td>
	  <td id="T_1b664_row2_col2" class="data row2 col2" >$-0.06</td>
	  <td id="T_1b664_row2_col3" class="data row2 col3" >$-0.02</td>
	  <td id="T_1b664_row2_col4" class="data row2 col4" >$-0.02</td>
	  <td id="T_1b664_row2_col5" class="data row2 col5" >\$0.06</td>
	  <td id="T_1b664_row2_col6" class="data row2 col6" >\$0.18</td>
	  <td id="T_1b664_row2_col7" class="data row2 col7" >\$0.35</td>
	  <td id="T_1b664_row2_col8" class="data row2 col8" >\$0.48</td>
	  <td id="T_1b664_row2_col9" class="data row2 col9" >\$0.77</td>
	  <td id="T_1b664_row2_col10" class="data row2 col10" >\$1.13</td>
	  <td id="T_1b664_row2_col11" class="data row2 col11" >\$1.57</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_1b664_row3_col0" class="data row3 col0" ></td>
	  <td id="T_1b664_row3_col1" class="data row3 col1" ></td>
	  <td id="T_1b664_row3_col2" class="data row3 col2" ></td>
	  <td id="T_1b664_row3_col3" class="data row3 col3" >$-0.25</td>
	  <td id="T_1b664_row3_col4" class="data row3 col4" >$-0.25</td>
	  <td id="T_1b664_row3_col5" class="data row3 col5" >$-0.19</td>
	  <td id="T_1b664_row3_col6" class="data row3 col6" >$-0.10</td>
	  <td id="T_1b664_row3_col7" class="data row3 col7" >\$0.04</td>
	  <td id="T_1b664_row3_col8" class="data row3 col8" >\$0.14</td>
	  <td id="T_1b664_row3_col9" class="data row3 col9" >\$0.36</td>
	  <td id="T_1b664_row3_col10" class="data row3 col10" >\$0.64</td>
	  <td id="T_1b664_row3_col11" class="data row3 col11" >\$0.98</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_1b664_row4_col0" class="data row4 col0" ></td>
	  <td id="T_1b664_row4_col1" class="data row4 col1" ></td>
	  <td id="T_1b664_row4_col2" class="data row4 col2" ></td>
	  <td id="T_1b664_row4_col3" class="data row4 col3" ></td>
	  <td id="T_1b664_row4_col4" class="data row4 col4" >$-0.49</td>
	  <td id="T_1b664_row4_col5" class="data row4 col5" >$-0.45</td>
	  <td id="T_1b664_row4_col6" class="data row4 col6" >$-0.38</td>
	  <td id="T_1b664_row4_col7" class="data row4 col7" >$-0.29</td>
	  <td id="T_1b664_row4_col8" class="data row4 col8" >$-0.22</td>
	  <td id="T_1b664_row4_col9" class="data row4 col9" >$-0.07</td>
	  <td id="T_1b664_row4_col10" class="data row4 col10" >\$0.13</td>
	  <td id="T_1b664_row4_col11" class="data row4 col11" >\$0.36</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_1b664_row5_col0" class="data row5 col0" ></td>
	  <td id="T_1b664_row5_col1" class="data row5 col1" ></td>
	  <td id="T_1b664_row5_col2" class="data row5 col2" ></td>
	  <td id="T_1b664_row5_col3" class="data row5 col3" ></td>
	  <td id="T_1b664_row5_col4" class="data row5 col4" ></td>
	  <td id="T_1b664_row5_col5" class="data row5 col5" >$-0.63</td>
	  <td id="T_1b664_row5_col6" class="data row5 col6" >$-0.59</td>
	  <td id="T_1b664_row5_col7" class="data row5 col7" >$-0.53</td>
	  <td id="T_1b664_row5_col8" class="data row5 col8" >$-0.48</td>
	  <td id="T_1b664_row5_col9" class="data row5 col9" >$-0.38</td>
	  <td id="T_1b664_row5_col10" class="data row5 col10" >$-0.24</td>
	  <td id="T_1b664_row5_col11" class="data row5 col11" >$-0.08</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_1b664_row6_col0" class="data row6 col0" ></td>
	  <td id="T_1b664_row6_col1" class="data row6 col1" ></td>
	  <td id="T_1b664_row6_col2" class="data row6 col2" ></td>
	  <td id="T_1b664_row6_col3" class="data row6 col3" ></td>
	  <td id="T_1b664_row6_col4" class="data row6 col4" ></td>
	  <td id="T_1b664_row6_col5" class="data row6 col5" ></td>
	  <td id="T_1b664_row6_col6" class="data row6 col6" >$-0.74</td>
	  <td id="T_1b664_row6_col7" class="data row6 col7" >$-0.69</td>
	  <td id="T_1b664_row6_col8" class="data row6 col8" >$-0.66</td>
	  <td id="T_1b664_row6_col9" class="data row6 col9" >$-0.59</td>
	  <td id="T_1b664_row6_col10" class="data row6 col10" >$-0.50</td>
	  <td id="T_1b664_row6_col11" class="data row6 col11" >$-0.39</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_1b664_row7_col0" class="data row7 col0" ></td>
	  <td id="T_1b664_row7_col1" class="data row7 col1" ></td>
	  <td id="T_1b664_row7_col2" class="data row7 col2" ></td>
	  <td id="T_1b664_row7_col3" class="data row7 col3" ></td>
	  <td id="T_1b664_row7_col4" class="data row7 col4" ></td>
	  <td id="T_1b664_row7_col5" class="data row7 col5" ></td>
	  <td id="T_1b664_row7_col6" class="data row7 col6" ></td>
	  <td id="T_1b664_row7_col7" class="data row7 col7" >$-0.80</td>
	  <td id="T_1b664_row7_col8" class="data row7 col8" >$-0.78</td>
	  <td id="T_1b664_row7_col9" class="data row7 col9" >$-0.73</td>
	  <td id="T_1b664_row7_col10" class="data row7 col10" >$-0.67</td>
	  <td id="T_1b664_row7_col11" class="data row7 col11" >$-0.60</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_1b664_row8_col0" class="data row8 col0" ></td>
	  <td id="T_1b664_row8_col1" class="data row8 col1" ></td>
	  <td id="T_1b664_row8_col2" class="data row8 col2" ></td>
	  <td id="T_1b664_row8_col3" class="data row8 col3" ></td>
	  <td id="T_1b664_row8_col4" class="data row8 col4" ></td>
	  <td id="T_1b664_row8_col5" class="data row8 col5" ></td>
	  <td id="T_1b664_row8_col6" class="data row8 col6" ></td>
	  <td id="T_1b664_row8_col7" class="data row8 col7" ></td>
	  <td id="T_1b664_row8_col8" class="data row8 col8" >$-0.86</td>
	  <td id="T_1b664_row8_col9" class="data row8 col9" >$-0.83</td>
	  <td id="T_1b664_row8_col10" class="data row8 col10" >$-0.79</td>
	  <td id="T_1b664_row8_col11" class="data row8 col11" >$-0.74</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_1b664_row9_col0" class="data row9 col0" ></td>
	  <td id="T_1b664_row9_col1" class="data row9 col1" ></td>
	  <td id="T_1b664_row9_col2" class="data row9 col2" ></td>
	  <td id="T_1b664_row9_col3" class="data row9 col3" ></td>
	  <td id="T_1b664_row9_col4" class="data row9 col4" ></td>
	  <td id="T_1b664_row9_col5" class="data row9 col5" ></td>
	  <td id="T_1b664_row9_col6" class="data row9 col6" ></td>
	  <td id="T_1b664_row9_col7" class="data row9 col7" ></td>
	  <td id="T_1b664_row9_col8" class="data row9 col8" ></td>
	  <td id="T_1b664_row9_col9" class="data row9 col9" >$-0.89</td>
	  <td id="T_1b664_row9_col10" class="data row9 col10" >$-0.86</td>
	  <td id="T_1b664_row9_col11" class="data row9 col11" >$-0.83</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_1b664_row10_col0" class="data row10 col0" ></td>
	  <td id="T_1b664_row10_col1" class="data row10 col1" ></td>
	  <td id="T_1b664_row10_col2" class="data row10 col2" ></td>
	  <td id="T_1b664_row10_col3" class="data row10 col3" ></td>
	  <td id="T_1b664_row10_col4" class="data row10 col4" ></td>
	  <td id="T_1b664_row10_col5" class="data row10 col5" ></td>
	  <td id="T_1b664_row10_col6" class="data row10 col6" ></td>
	  <td id="T_1b664_row10_col7" class="data row10 col7" ></td>
	  <td id="T_1b664_row10_col8" class="data row10 col8" ></td>
	  <td id="T_1b664_row10_col9" class="data row10 col9" ></td>
	  <td id="T_1b664_row10_col10" class="data row10 col10" >$-0.92</td>
	  <td id="T_1b664_row10_col11" class="data row10 col11" >$-0.89</td>
	</tr>
	<tr>
	  <th id="T_1b664_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_1b664_row11_col0" class="data row11 col0" ></td>
	  <td id="T_1b664_row11_col1" class="data row11 col1" ></td>
	  <td id="T_1b664_row11_col2" class="data row11 col2" ></td>
	  <td id="T_1b664_row11_col3" class="data row11 col3" ></td>
	  <td id="T_1b664_row11_col4" class="data row11 col4" ></td>
	  <td id="T_1b664_row11_col5" class="data row11 col5" ></td>
	  <td id="T_1b664_row11_col6" class="data row11 col6" ></td>
	  <td id="T_1b664_row11_col7" class="data row11 col7" ></td>
	  <td id="T_1b664_row11_col8" class="data row11 col8" ></td>
	  <td id="T_1b664_row11_col9" class="data row11 col9" ></td>
	  <td id="T_1b664_row11_col10" class="data row11 col10" ></td>
	  <td id="T_1b664_row11_col11" class="data row11 col11" >$-0.93</td>
	</tr>
  </tbody>
</table>

Now we show the **market value** of the swap at each node.

```python
swaptree = bintree_pricing(payoff=payoff, ratetree=ratetreeT, undertree= refratetree, cftree=cftree, cfdelay=True)
format_bintree(swaptree,style='${:.2f}')
```

<style type="text/css">
</style>
<table id="T_351f8">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_351f8_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_351f8_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_351f8_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_351f8_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_351f8_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_351f8_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_351f8_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_351f8_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_351f8_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_351f8_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_351f8_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_351f8_level0_col11" class="col_heading level0 col11" >2.75</th>
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
	  <th id="T_351f8_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_351f8_row0_col0" class="data row0 col0" >$-0.00</td>
	  <td id="T_351f8_row0_col1" class="data row0 col1" >\$1.11</td>
	  <td id="T_351f8_row0_col2" class="data row0 col2" >\$2.14</td>
	  <td id="T_351f8_row0_col3" class="data row0 col3" >\$3.10</td>
	  <td id="T_351f8_row0_col4" class="data row0 col4" >\$3.96</td>
	  <td id="T_351f8_row0_col5" class="data row0 col5" >\$4.77</td>
	  <td id="T_351f8_row0_col6" class="data row0 col6" >\$5.38</td>
	  <td id="T_351f8_row0_col7" class="data row0 col7" >\$5.73</td>
	  <td id="T_351f8_row0_col8" class="data row0 col8" >\$5.71</td>
	  <td id="T_351f8_row0_col9" class="data row0 col9" >\$5.36</td>
	  <td id="T_351f8_row0_col10" class="data row0 col10" >\$4.40</td>
	  <td id="T_351f8_row0_col11" class="data row0 col11" >\$2.69</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_351f8_row1_col0" class="data row1 col0" ></td>
	  <td id="T_351f8_row1_col1" class="data row1 col1" >$-1.65</td>
	  <td id="T_351f8_row1_col2" class="data row1 col2" >$-0.57</td>
	  <td id="T_351f8_row1_col3" class="data row1 col3" >\$0.46</td>
	  <td id="T_351f8_row1_col4" class="data row1 col4" >\$1.43</td>
	  <td id="T_351f8_row1_col5" class="data row1 col5" >\$2.37</td>
	  <td id="T_351f8_row1_col6" class="data row1 col6" >\$3.17</td>
	  <td id="T_351f8_row1_col7" class="data row1 col7" >\$3.75</td>
	  <td id="T_351f8_row1_col8" class="data row1 col8" >\$4.01</td>
	  <td id="T_351f8_row1_col9" class="data row1 col9" >\$3.96</td>
	  <td id="T_351f8_row1_col10" class="data row1 col10" >\$3.38</td>
	  <td id="T_351f8_row1_col11" class="data row1 col11" >\$2.12</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_351f8_row2_col0" class="data row2 col0" ></td>
	  <td id="T_351f8_row2_col1" class="data row2 col1" ></td>
	  <td id="T_351f8_row2_col2" class="data row2 col2" >$-3.02</td>
	  <td id="T_351f8_row2_col3" class="data row2 col3" >$-1.96</td>
	  <td id="T_351f8_row2_col4" class="data row2 col4" >$-0.94</td>
	  <td id="T_351f8_row2_col5" class="data row2 col5" >\$0.08</td>
	  <td id="T_351f8_row2_col6" class="data row2 col6" >\$1.00</td>
	  <td id="T_351f8_row2_col7" class="data row2 col7" >\$1.76</td>
	  <td id="T_351f8_row2_col8" class="data row2 col8" >\$2.26</td>
	  <td id="T_351f8_row2_col9" class="data row2 col9" >\$2.52</td>
	  <td id="T_351f8_row2_col10" class="data row2 col10" >\$2.33</td>
	  <td id="T_351f8_row2_col11" class="data row2 col11" >\$1.53</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_351f8_row3_col0" class="data row3 col0" ></td>
	  <td id="T_351f8_row3_col1" class="data row3 col1" ></td>
	  <td id="T_351f8_row3_col2" class="data row3 col2" ></td>
	  <td id="T_351f8_row3_col3" class="data row3 col3" >$-4.02</td>
	  <td id="T_351f8_row3_col4" class="data row3 col4" >$-2.98</td>
	  <td id="T_351f8_row3_col5" class="data row3 col5" >$-1.94</td>
	  <td id="T_351f8_row3_col6" class="data row3 col6" >$-0.96</td>
	  <td id="T_351f8_row3_col7" class="data row3 col7" >$-0.09</td>
	  <td id="T_351f8_row3_col8" class="data row3 col8" >\$0.60</td>
	  <td id="T_351f8_row3_col9" class="data row3 col9" >\$1.11</td>
	  <td id="T_351f8_row3_col10" class="data row3 col10" >\$1.28</td>
	  <td id="T_351f8_row3_col11" class="data row3 col11" >\$0.96</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_351f8_row4_col0" class="data row4 col0" ></td>
	  <td id="T_351f8_row4_col1" class="data row4 col1" ></td>
	  <td id="T_351f8_row4_col2" class="data row4 col2" ></td>
	  <td id="T_351f8_row4_col3" class="data row4 col3" ></td>
	  <td id="T_351f8_row4_col4" class="data row4 col4" >$-4.62</td>
	  <td id="T_351f8_row4_col5" class="data row4 col5" >$-3.57</td>
	  <td id="T_351f8_row4_col6" class="data row4 col6" >$-2.58</td>
	  <td id="T_351f8_row4_col7" class="data row4 col7" >$-1.65</td>
	  <td id="T_351f8_row4_col8" class="data row4 col8" >$-0.85</td>
	  <td id="T_351f8_row4_col9" class="data row4 col9" >$-0.17</td>
	  <td id="T_351f8_row4_col10" class="data row4 col10" >\$0.26</td>
	  <td id="T_351f8_row4_col11" class="data row4 col11" >\$0.36</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_351f8_row5_col0" class="data row5 col0" ></td>
	  <td id="T_351f8_row5_col1" class="data row5 col1" ></td>
	  <td id="T_351f8_row5_col2" class="data row5 col2" ></td>
	  <td id="T_351f8_row5_col3" class="data row5 col3" ></td>
	  <td id="T_351f8_row5_col4" class="data row5 col4" ></td>
	  <td id="T_351f8_row5_col5" class="data row5 col5" >$-4.74</td>
	  <td id="T_351f8_row5_col6" class="data row5 col6" >$-3.73</td>
	  <td id="T_351f8_row5_col7" class="data row5 col7" >$-2.77</td>
	  <td id="T_351f8_row5_col8" class="data row5 col8" >$-1.89</td>
	  <td id="T_351f8_row5_col9" class="data row5 col9" >$-1.10</td>
	  <td id="T_351f8_row5_col10" class="data row5 col10" >$-0.48</td>
	  <td id="T_351f8_row5_col11" class="data row5 col11" >$-0.08</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_351f8_row6_col0" class="data row6 col0" ></td>
	  <td id="T_351f8_row6_col1" class="data row6 col1" ></td>
	  <td id="T_351f8_row6_col2" class="data row6 col2" ></td>
	  <td id="T_351f8_row6_col3" class="data row6 col3" ></td>
	  <td id="T_351f8_row6_col4" class="data row6 col4" ></td>
	  <td id="T_351f8_row6_col5" class="data row6 col5" ></td>
	  <td id="T_351f8_row6_col6" class="data row6 col6" >$-4.52</td>
	  <td id="T_351f8_row6_col7" class="data row6 col7" >$-3.53</td>
	  <td id="T_351f8_row6_col8" class="data row6 col8" >$-2.61</td>
	  <td id="T_351f8_row6_col9" class="data row6 col9" >$-1.74</td>
	  <td id="T_351f8_row6_col10" class="data row6 col10" >$-0.99</td>
	  <td id="T_351f8_row6_col11" class="data row6 col11" >$-0.39</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_351f8_row7_col0" class="data row7 col0" ></td>
	  <td id="T_351f8_row7_col1" class="data row7 col1" ></td>
	  <td id="T_351f8_row7_col2" class="data row7 col2" ></td>
	  <td id="T_351f8_row7_col3" class="data row7 col3" ></td>
	  <td id="T_351f8_row7_col4" class="data row7 col4" ></td>
	  <td id="T_351f8_row7_col5" class="data row7 col5" ></td>
	  <td id="T_351f8_row7_col6" class="data row7 col6" ></td>
	  <td id="T_351f8_row7_col7" class="data row7 col7" >$-4.05</td>
	  <td id="T_351f8_row7_col8" class="data row7 col8" >$-3.10</td>
	  <td id="T_351f8_row7_col9" class="data row7 col9" >$-2.18</td>
	  <td id="T_351f8_row7_col10" class="data row7 col10" >$-1.33</td>
	  <td id="T_351f8_row7_col11" class="data row7 col11" >$-0.60</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_351f8_row8_col0" class="data row8 col0" ></td>
	  <td id="T_351f8_row8_col1" class="data row8 col1" ></td>
	  <td id="T_351f8_row8_col2" class="data row8 col2" ></td>
	  <td id="T_351f8_row8_col3" class="data row8 col3" ></td>
	  <td id="T_351f8_row8_col4" class="data row8 col4" ></td>
	  <td id="T_351f8_row8_col5" class="data row8 col5" ></td>
	  <td id="T_351f8_row8_col6" class="data row8 col6" ></td>
	  <td id="T_351f8_row8_col7" class="data row8 col7" ></td>
	  <td id="T_351f8_row8_col8" class="data row8 col8" >$-3.42</td>
	  <td id="T_351f8_row8_col9" class="data row8 col9" >$-2.47</td>
	  <td id="T_351f8_row8_col10" class="data row8 col10" >$-1.57</td>
	  <td id="T_351f8_row8_col11" class="data row8 col11" >$-0.74</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_351f8_row9_col0" class="data row9 col0" ></td>
	  <td id="T_351f8_row9_col1" class="data row9 col1" ></td>
	  <td id="T_351f8_row9_col2" class="data row9 col2" ></td>
	  <td id="T_351f8_row9_col3" class="data row9 col3" ></td>
	  <td id="T_351f8_row9_col4" class="data row9 col4" ></td>
	  <td id="T_351f8_row9_col5" class="data row9 col5" ></td>
	  <td id="T_351f8_row9_col6" class="data row9 col6" ></td>
	  <td id="T_351f8_row9_col7" class="data row9 col7" ></td>
	  <td id="T_351f8_row9_col8" class="data row9 col8" ></td>
	  <td id="T_351f8_row9_col9" class="data row9 col9" >$-2.66</td>
	  <td id="T_351f8_row9_col10" class="data row9 col10" >$-1.72</td>
	  <td id="T_351f8_row9_col11" class="data row9 col11" >$-0.83</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_351f8_row10_col0" class="data row10 col0" ></td>
	  <td id="T_351f8_row10_col1" class="data row10 col1" ></td>
	  <td id="T_351f8_row10_col2" class="data row10 col2" ></td>
	  <td id="T_351f8_row10_col3" class="data row10 col3" ></td>
	  <td id="T_351f8_row10_col4" class="data row10 col4" ></td>
	  <td id="T_351f8_row10_col5" class="data row10 col5" ></td>
	  <td id="T_351f8_row10_col6" class="data row10 col6" ></td>
	  <td id="T_351f8_row10_col7" class="data row10 col7" ></td>
	  <td id="T_351f8_row10_col8" class="data row10 col8" ></td>
	  <td id="T_351f8_row10_col9" class="data row10 col9" ></td>
	  <td id="T_351f8_row10_col10" class="data row10 col10" >$-1.83</td>
	  <td id="T_351f8_row10_col11" class="data row10 col11" >$-0.89</td>
	</tr>
	<tr>
	  <th id="T_351f8_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_351f8_row11_col0" class="data row11 col0" ></td>
	  <td id="T_351f8_row11_col1" class="data row11 col1" ></td>
	  <td id="T_351f8_row11_col2" class="data row11 col2" ></td>
	  <td id="T_351f8_row11_col3" class="data row11 col3" ></td>
	  <td id="T_351f8_row11_col4" class="data row11 col4" ></td>
	  <td id="T_351f8_row11_col5" class="data row11 col5" ></td>
	  <td id="T_351f8_row11_col6" class="data row11 col6" ></td>
	  <td id="T_351f8_row11_col7" class="data row11 col7" ></td>
	  <td id="T_351f8_row11_col8" class="data row11 col8" ></td>
	  <td id="T_351f8_row11_col9" class="data row11 col9" ></td>
	  <td id="T_351f8_row11_col10" class="data row11 col10" ></td>
	  <td id="T_351f8_row11_col11" class="data row11 col11" >$-0.93</td>
	</tr>
  </tbody>
</table>

Note that the swap value is (approximately) zero. That is because the strike was chosen to be the (rounded) swap rate implicit in the discount factors. 

## European Swaption

Consider a **european** swaption, (option to enter into the paying-fixed swap).

The swaption operates differently than a call or put!

* Does not require a single strike at exercise.
* Rather, the strike refers to the contracted swap rate for swap which will be entered upon exercise.
* For our valuation purposes, it means we model this as a call (paying fixed) or put (receiving fixed) with a strike of 0.

We display the **payer** swaption valuation tree below.

* expiration is $T=1$

```python
T = 1
tsteps = int(T/dt)+1

payoff = lambda v: np.maximum(v,0)

swaptreeT = swaptree.iloc[:tsteps,:tsteps]

swaption_tree = bintree_pricing(payoff=payoff,  ratetree=ratetree, undertree= swaptreeT)
format_bintree(swaption_tree)
```

<style type="text/css">
</style>
<table id="T_bae9b">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_bae9b_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_bae9b_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_bae9b_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_bae9b_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_bae9b_level0_col4" class="col_heading level0 col4" >1.00</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_bae9b_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_bae9b_row0_col0" class="data row0 col0" >0.57</td>
	  <td id="T_bae9b_row0_col1" class="data row0 col1" >0.99</td>
	  <td id="T_bae9b_row0_col2" class="data row0 col2" >1.66</td>
	  <td id="T_bae9b_row0_col3" class="data row0 col3" >2.66</td>
	  <td id="T_bae9b_row0_col4" class="data row0 col4" >3.96</td>
	</tr>
	<tr>
	  <th id="T_bae9b_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_bae9b_row1_col0" class="data row1 col0" ></td>
	  <td id="T_bae9b_row1_col1" class="data row1 col1" >0.17</td>
	  <td id="T_bae9b_row1_col2" class="data row1 col2" >0.35</td>
	  <td id="T_bae9b_row1_col3" class="data row1 col3" >0.71</td>
	  <td id="T_bae9b_row1_col4" class="data row1 col4" >1.43</td>
	</tr>
	<tr>
	  <th id="T_bae9b_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_bae9b_row2_col0" class="data row2 col0" ></td>
	  <td id="T_bae9b_row2_col1" class="data row2 col1" ></td>
	  <td id="T_bae9b_row2_col2" class="data row2 col2" >0.00</td>
	  <td id="T_bae9b_row2_col3" class="data row2 col3" >0.00</td>
	  <td id="T_bae9b_row2_col4" class="data row2 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_bae9b_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_bae9b_row3_col0" class="data row3 col0" ></td>
	  <td id="T_bae9b_row3_col1" class="data row3 col1" ></td>
	  <td id="T_bae9b_row3_col2" class="data row3 col2" ></td>
	  <td id="T_bae9b_row3_col3" class="data row3 col3" >0.00</td>
	  <td id="T_bae9b_row3_col4" class="data row3 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_bae9b_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_bae9b_row4_col0" class="data row4 col0" ></td>
	  <td id="T_bae9b_row4_col1" class="data row4 col1" ></td>
	  <td id="T_bae9b_row4_col2" class="data row4 col2" ></td>
	  <td id="T_bae9b_row4_col3" class="data row4 col3" ></td>
	  <td id="T_bae9b_row4_col4" class="data row4 col4" >0.00</td>
	</tr>
  </tbody>
</table>

Note that though the swap has market value of zero at initiation, the swaption has substantial value due to optionality.

***

# Black's Formula for Swaptions

Use Black's formula to price the **European** swaption.

* The **payer** swaption (option to pay fixed) is like a **call** option.
* The **receiver** swaption (option to receive fixed) is like a **put** option.

This is done much as we used Black's formula for caps and caplets. 

But there are a few differences in **timing** and **discount factor**.

## Timing

Expiration of the swaption is the date plugged into Black's formula.

* The swaption expires at $T_o$ and that is also when the uncertainty is resolved. So use this value in Black's formula.
* Recall that for caplets, we had to use a period before the payment due to the timing where the caplet's uncertainty is resolved a period early.

## Discount factor

You only need to use Black's formula once to price the swaption.

* With caps, we had to use Black's formula repeatedly to price each caplet. (Each caplet has different expiration and forward vol.)
* A swaption is a single option, but it involves (if exercised) multiple payments. 
* Unlike the cap, each payoff of the exercised swaption corresponds to the same option, and thus is priced identically in Black's formula.
* The only adjustment is to discount the exercised payoffs appropriately, reflecting that they have different maturities.

We can use Black's formula once and scale it by the sum of appropriate discount factors to reflect multiple payoffs.

$$Z^{\text{swap}}(0,T_o,T) \equiv \sum_{i=1}^mZ(0,T_i)$$

where $T_i$ for $1\le i \le m$ denotes the swap payment dates.

### Example

For the 1Y$\rightarrow 2$Y swaption written on an (annually paying) swap we have

* $T_o=1$ 
* $T=3$ 

$$Z^{\text{swap}}(0,T_o,T) = Z(0,2) + Z(0,3)$$

## Forward Swap Rate

In Black's formula we need the **forward** on the underlying, not the underlying rate itself.

Thus, for the swaption, we need the **forward swap rate**, not the (spot) swap rate.

Calculating forward rates from spot rates is done as usual, the same as for treasury rates. 

### Discount Factor Formula

$$f_n(t,\Tfwd,T) \equiv n\frac{Z(t,\Tfwd)-Z(t,T)}{\sum_{i=1}^mZ(t,T_i)}$$

where 

* $Z$ denotes the usual discount factor.
* $n$ is the frequency of the swap payments. (That is, $n=2$ for semiannual swaps, etc.)
* $T_i$ for $1\le i\le m$ again denotes the time to each swap payment, with $T_m=T$.
* $\Tfwd$ is the forward date.

### Forward Factor Formula

$\begin{align}

F(t,\Tfwd,T) & = \frac{Z(t,T)}{Z(t,\Tfwd)}\\[6pt]

f(t,\Tfwd,T) & \equiv \quad -\frac{\ln\left\{F(t,\Tfwd,T)\right\}}{T-\Tfwd}\\[6pt]

f_n(t,\Tfwd,T) & \equiv \quad n\left(\frac{1}{F(t,\Tfwd,T)^{\frac{1}{n(T-\Tfwd)}}}-1\right)

\end{align}$

## Example

Consider the following swaption data from `2024-02-20`.

```python
DATE = '2024-02-20'

freqcurve = 4

SWAP_TYPE = 'SOFR'
QUOTE_STYLE = 'black'
RELATIVE_STRIKE = 0

expry = 1
tenor = 2

freqswap = 1
isPayer=True
N = 100
```

### Forward swap rate

Calculate the forward swap rate, using either of the two formulas from the section above.

* Note that the provided forward rates are the forward discount rates, not the forward swap rates.

```python
Topt = expry
Tswap = Topt+tenor

fwdrate = curves['forwards'][Topt]


fwdswap = calc_fwdswaprate(curves['discounts'], Topt, Tswap, freqswap=freqswap)

display(f'The forward swap rate is {fwdswap:.2%}')
```

    'The forward swap rate is 3.80%'

## Price w/ Black's Formula

Use the parameters above to price the swaption.

***

# Swaptions and forward volatilites

Determining forward volatilities is a key part of working with **swaptions**, a massive (in some respects, the largest,) OTC options.

Swaptions are different from caps/floors

* A swaption is a single option on a stream of payments.
* A cap/floor is a stream of options on single payments.

But both can be seen as options on forwards.

* Recall that swaps are portfolios of forward rate agreements.

Accordingly, the **forward volatilities** between caps/floors and swaptions lead to no-arbitrage relationships.

Forward Volatility Agreements (FVAs) are trading implied vol on these forward productions.

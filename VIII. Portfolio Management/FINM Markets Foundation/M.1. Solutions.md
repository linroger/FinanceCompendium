---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: M.1. Solutions
---

# M.1. Solutions

## Markets Foundations

### UChicago Financial Mathematics

#### September 2022

* Mark Hendricks
* hendricks@uchicago.edu

#### This assignment is not submitted, graded, or for credit. 

Rather, it is assigned for learning purposes.

# 1. Treasury Debt Composition

## Data

This assignment uses the data file `../data/treasury_quotes_2022-06-30.xlsx`.

## Note

The `ITYPE` column identifies

* 1: bonds
* 2: notes
* 4: bills
* 11: TIPS notes
* 12: TIPS bonds

The column `TDPUBOUT` lists the dollar size of the issue (public debt outstanding.)

The data source does not list the issue size for the T-bills, which is why we are not segmenting those out separately.

*Tip* `.pivot_table()` may be useful.

## 1.1

Plot the total amount of outstanding debt maturing at each date

## 1.2

Plot the amount of outstanding debt maturing at each date, segmented by bonds, notes, TIPS (combined ITYPE of 11 and 12.)

## 1.3

Report the total outstanding debt (summed over all maturity dates,) segmented by bonds, notes, TIPS.

## 1.4

Make a pie chart of this total number (reported in 1.3.) 

# <span style="color:red">Solution 1</span>

```python
import pandas as pd
import numpy as np
import datetime
import warnings

from sklearn.linear_model import LinearRegression
from scipy.optimize import minimize

import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

import sys
sys.path.insert(0, '../cmds')
from treasury_cmds import *
```

```python
QUOTE_DATE = '2022-06-30'

filepath_rawdata = f'../data/treasury_quotes_{QUOTE_DATE}.xlsx'
rawdata = pd.read_excel(filepath_rawdata,sheet_name='quotes')
rawdata.columns = rawdata.columns.str.upper()
rawdata.sort_values('TMATDT',inplace=True)
rawdata.set_index('KYTREASNO',inplace=True)
```

```python
t_check = rawdata['CALDT'].values[0]
if rawdata['CALDT'].eq(t_check).all():
    t_current = t_check
else:
    warnings.warn('Quotes are from multiple dates.')
    t_current = None
```

In addition to `TDPUBOUT` for total public debt outstanding, 

also try `TDTOTOUT` for total debt outstanding, which also reports bills.

The variable `KEY` below selects which variable is examined.

```python
KEY = 'TDTOTOUT'
```

## 1.1

```python
debts = rawdata.pivot_table(values=KEY,index='TMATDT',columns='ITYPE',aggfunc='sum') \
    .resample('Y').sum().rename(columns={1:'bonds',2:'notes',4:'bills'})
debts['TIPS'] = debts[11] + debts[12]
debts.drop(columns=[11,12],inplace=True)

debts.sum(axis=1).plot(title='Total Treasury Debt',ylabel='$ millions',xlabel='maturity');
```

![png](output_11_0.png)

## 1.2

```python
debts.plot(title='Treasury Debt',ylabel='$ millions',xlabel='maturity');
```

![png](output_13_0.png)

## 1.3

```python
debts.sum().to_frame().rename(columns={0:'debt outstanding ($ millions)'}).style.format('{:,.2f}')
```

<style type="text/css">
</style>
<table id="T_4470c">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_4470c_level0_col0" class="col_heading level0 col0" >debt outstanding ($ millions)</th>
	</tr>
	<tr>
	  <th class="index_name level0" >ITYPE</th>
	  <th class="blank col0" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_4470c_level0_row0" class="row_heading level0 row0" >bonds</th>
	  <td id="T_4470c_row0_col0" class="data row0 col0" >3,766,593.00</td>
	</tr>
	<tr>
	  <th id="T_4470c_level0_row1" class="row_heading level0 row1" >notes</th>
	  <td id="T_4470c_row1_col0" class="data row1 col0" >13,583,570.00</td>
	</tr>
	<tr>
	  <th id="T_4470c_level0_row2" class="row_heading level0 row2" >bills</th>
	  <td id="T_4470c_row2_col0" class="data row2 col0" >3,523,925.00</td>
	</tr>
	<tr>
	  <th id="T_4470c_level0_row3" class="row_heading level0 row3" >TIPS</th>
	  <td id="T_4470c_row3_col0" class="data row3 col0" >1,805,994.00</td>
	</tr>
  </tbody>
</table>

## 1.4

```python
plt.pie(debts.sum().values, labels=debts.columns, autopct='%1.2f%%')
plt.show()
```

![png](output%2017%200.png.md)

### Not requested, but perhaps interesting to see outstanding via issue

```python
mats = get_maturity_delta(rawdata[['TMATDT']].astype('datetime64[ns]'), t_current=t_current).rename(columns={'TMATDT':'maturity'})

plt.scatter(mats,rawdata[KEY]);
plt.legend(['issue']);
plt.xlabel('maturity');
```

![png](output_19_0.png)

# 2 Time-to-Maturity

## 2.1

Calculate the time-to-maturity (relative to the quote date of 2022-03-31) for each issue.

Use the `TMATDT` column to get the maturity date.

Report the summary statistics of these time-to-maturities. (Consider using .describe()).

## 2.2

Plot the time-to-maturity against the provided YTM, (column `TDYLD`.)

# <span style="color:red">Solution 2</span>

## 2.1

```python
mats_issues = get_maturity_delta(rawdata['TMATDT'],t_current=t_current)
mats_issues.describe().to_frame().T
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
	  <th>count</th>
	  <th>mean</th>
	  <th>std</th>
	  <th>min</th>
	  <th>25%</th>
	  <th>50%</th>
	  <th>75%</th>
	  <th>max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>TMATDT</th>
	  <td>425.0</td>
	  <td>6.558918</td>
	  <td>8.173429</td>
	  <td>0.013689</td>
	  <td>1.040383</td>
	  <td>3.170431</td>
	  <td>6.833676</td>
	  <td>29.875428</td>
	</tr>
  </tbody>
</table>
</div>

## 2.2

```python
FREQ = 365

plt.plot(mats_issues,rawdata['TDYLD']* FREQ,linestyle='',marker='*')
plt.title(f'Provided YTM for issues on {pd.to_datetime(t_current):%Y-%m-%d}')
plt.ylabel('semiannual compounded YTM')
plt.xlabel('maturity')
plt.show()
```

![png](output_26_0.png)

# 3 Yields and Prices

## 3.1

For the Treasury bills, calculate the **discount yields**.

Identify the T-bills using `ITYPE`=4 or looking for `TCOUPRT` of 0.

## 3.2

Write a function to calculate the yield-to-maturity for each issue. You will need to use a nonlinear solver to solve for the YTM.

## 3.3

Conceptual question, no outside data needed.

Consider a Treasury with…

* maturity 2 years
* face value 100
* coupon rate 4\%, semiannual
* current yield-to-maturity is 3\%

1. Calculate the price of the treasury.
2. Suppose that both its YTM and coupon rate go up by 0.5\%. What is the revised price of this Treasury?

# <span style="color:red">Solution 3</span>

## 3.1

```python
DAYCT_ADJ = 360/365

tbills = rawdata[rawdata['ITYPE']==4]
px_tbills = tbills[['TDASK','TDBID']].mean(axis=1)
mat_bills = get_maturity_delta(tbills['TMATDT'],t_current=t_current)
disc_yield = ((100-px_tbills)/100 / (mat_bills * DAYCT_ADJ)).to_frame().rename(columns={0:'discount yield'})
disc_yield.style.format('{:.2%}')
```

<style type="text/css">
</style>
<table id="T_66c62">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_66c62_level0_col0" class="col_heading level0 col0" >discount yield</th>
	</tr>
	<tr>
	  <th class="index_name level0" >KYTREASNO</th>
	  <th class="blank col0" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_66c62_level0_row0" class="row_heading level0 row0" >207851</th>
	  <td id="T_66c62_row0_col0" class="data row0 col0" >0.67%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row1" class="row_heading level0 row1" >207817</th>
	  <td id="T_66c62_row1_col0" class="data row1 col0" >0.73%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row2" class="row_heading level0 row2" >207852</th>
	  <td id="T_66c62_row2_col0" class="data row2 col0" >1.13%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row3" class="row_heading level0 row3" >207741</th>
	  <td id="T_66c62_row3_col0" class="data row3 col0" >1.06%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row4" class="row_heading level0 row4" >207853</th>
	  <td id="T_66c62_row4_col0" class="data row4 col0" >1.10%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row5" class="row_heading level0 row5" >207827</th>
	  <td id="T_66c62_row5_col0" class="data row5 col0" >1.13%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row6" class="row_heading level0 row6" >207854</th>
	  <td id="T_66c62_row6_col0" class="data row6 col0" >1.11%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row7" class="row_heading level0 row7" >207828</th>
	  <td id="T_66c62_row7_col0" class="data row7 col0" >1.00%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row8" class="row_heading level0 row8" >207855</th>
	  <td id="T_66c62_row8_col0" class="data row8 col0" >1.14%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row9" class="row_heading level0 row9" >207829</th>
	  <td id="T_66c62_row9_col0" class="data row9 col0" >1.22%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row10" class="row_heading level0 row10" >207864</th>
	  <td id="T_66c62_row10_col0" class="data row10 col0" >1.32%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row11" class="row_heading level0 row11" >207756</th>
	  <td id="T_66c62_row11_col0" class="data row11 col0" >1.35%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row12" class="row_heading level0 row12" >207865</th>
	  <td id="T_66c62_row12_col0" class="data row12 col0" >1.37%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row13" class="row_heading level0 row13" >207839</th>
	  <td id="T_66c62_row13_col0" class="data row13 col0" >1.36%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row14" class="row_heading level0 row14" >207866</th>
	  <td id="T_66c62_row14_col0" class="data row14 col0" >1.50%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row15" class="row_heading level0 row15" >207840</th>
	  <td id="T_66c62_row15_col0" class="data row15 col0" >1.45%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row16" class="row_heading level0 row16" >207867</th>
	  <td id="T_66c62_row16_col0" class="data row16 col0" >1.50%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row17" class="row_heading level0 row17" >207841</th>
	  <td id="T_66c62_row17_col0" class="data row17 col0" >1.56%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row18" class="row_heading level0 row18" >207877</th>
	  <td id="T_66c62_row18_col0" class="data row18 col0" >1.53%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row19" class="row_heading level0 row19" >207773</th>
	  <td id="T_66c62_row19_col0" class="data row19 col0" >1.58%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row20" class="row_heading level0 row20" >207878</th>
	  <td id="T_66c62_row20_col0" class="data row20 col0" >1.57%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row21" class="row_heading level0 row21" >207856</th>
	  <td id="T_66c62_row21_col0" class="data row21 col0" >1.61%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row22" class="row_heading level0 row22" >207879</th>
	  <td id="T_66c62_row22_col0" class="data row22 col0" >1.62%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row23" class="row_heading level0 row23" >207857</th>
	  <td id="T_66c62_row23_col0" class="data row23 col0" >1.67%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row24" class="row_heading level0 row24" >207880</th>
	  <td id="T_66c62_row24_col0" class="data row24 col0" >1.64%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row25" class="row_heading level0 row25" >207858</th>
	  <td id="T_66c62_row25_col0" class="data row25 col0" >1.72%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row26" class="row_heading level0 row26" >207892</th>
	  <td id="T_66c62_row26_col0" class="data row26 col0" >1.86%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row27" class="row_heading level0 row27" >207774</th>
	  <td id="T_66c62_row27_col0" class="data row27 col0" >1.79%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row28" class="row_heading level0 row28" >207893</th>
	  <td id="T_66c62_row28_col0" class="data row28 col0" >1.90%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row29" class="row_heading level0 row29" >207868</th>
	  <td id="T_66c62_row29_col0" class="data row29 col0" >1.90%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row30" class="row_heading level0 row30" >207894</th>
	  <td id="T_66c62_row30_col0" class="data row30 col0" >1.92%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row31" class="row_heading level0 row31" >207869</th>
	  <td id="T_66c62_row31_col0" class="data row31 col0" >1.95%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row32" class="row_heading level0 row32" >207895</th>
	  <td id="T_66c62_row32_col0" class="data row32 col0" >2.14%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row33" class="row_heading level0 row33" >207870</th>
	  <td id="T_66c62_row33_col0" class="data row33 col0" >1.96%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row34" class="row_heading level0 row34" >207896</th>
	  <td id="T_66c62_row34_col0" class="data row34 col0" >2.24%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row35" class="row_heading level0 row35" >207787</th>
	  <td id="T_66c62_row35_col0" class="data row35 col0" >2.03%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row36" class="row_heading level0 row36" >207881</th>
	  <td id="T_66c62_row36_col0" class="data row36 col0" >2.09%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row37" class="row_heading level0 row37" >207882</th>
	  <td id="T_66c62_row37_col0" class="data row37 col0" >2.10%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row38" class="row_heading level0 row38" >207883</th>
	  <td id="T_66c62_row38_col0" class="data row38 col0" >2.06%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row39" class="row_heading level0 row39" >207801</th>
	  <td id="T_66c62_row39_col0" class="data row39 col0" >2.26%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row40" class="row_heading level0 row40" >207897</th>
	  <td id="T_66c62_row40_col0" class="data row40 col0" >2.30%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row41" class="row_heading level0 row41" >207898</th>
	  <td id="T_66c62_row41_col0" class="data row41 col0" >2.30%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row42" class="row_heading level0 row42" >207899</th>
	  <td id="T_66c62_row42_col0" class="data row42 col0" >2.47%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row43" class="row_heading level0 row43" >207818</th>
	  <td id="T_66c62_row43_col0" class="data row43 col0" >2.49%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row44" class="row_heading level0 row44" >207900</th>
	  <td id="T_66c62_row44_col0" class="data row44 col0" >2.57%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row45" class="row_heading level0 row45" >207830</th>
	  <td id="T_66c62_row45_col0" class="data row45 col0" >2.49%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row46" class="row_heading level0 row46" >207842</th>
	  <td id="T_66c62_row46_col0" class="data row46 col0" >2.46%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row47" class="row_heading level0 row47" >207859</th>
	  <td id="T_66c62_row47_col0" class="data row47 col0" >2.40%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row48" class="row_heading level0 row48" >207871</th>
	  <td id="T_66c62_row48_col0" class="data row48 col0" >2.53%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row49" class="row_heading level0 row49" >207884</th>
	  <td id="T_66c62_row49_col0" class="data row49 col0" >2.60%</td>
	</tr>
	<tr>
	  <th id="T_66c62_level0_row50" class="row_heading level0 row50" >207901</th>
	  <td id="T_66c62_row50_col0" class="data row50 col0" >2.76%</td>
	</tr>
  </tbody>
</table>

```python
disc_yield.describe().T.style.format('{:.2%}')
```

<style type="text/css">
</style>
<table id="T_976a0">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_976a0_level0_col0" class="col_heading level0 col0" >count</th>
	  <th id="T_976a0_level0_col1" class="col_heading level0 col1" >mean</th>
	  <th id="T_976a0_level0_col2" class="col_heading level0 col2" >std</th>
	  <th id="T_976a0_level0_col3" class="col_heading level0 col3" >min</th>
	  <th id="T_976a0_level0_col4" class="col_heading level0 col4" >25%</th>
	  <th id="T_976a0_level0_col5" class="col_heading level0 col5" >50%</th>
	  <th id="T_976a0_level0_col6" class="col_heading level0 col6" >75%</th>
	  <th id="T_976a0_level0_col7" class="col_heading level0 col7" >max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_976a0_level0_row0" class="row_heading level0 row0" >discount yield</th>
	  <td id="T_976a0_row0_col0" class="data row0 col0" >5100.00%</td>
	  <td id="T_976a0_row0_col1" class="data row0 col1" >1.77%</td>
	  <td id="T_976a0_row0_col2" class="data row0 col2" >0.53%</td>
	  <td id="T_976a0_row0_col3" class="data row0 col3" >0.67%</td>
	  <td id="T_976a0_row0_col4" class="data row0 col4" >1.37%</td>
	  <td id="T_976a0_row0_col5" class="data row0 col5" >1.72%</td>
	  <td id="T_976a0_row0_col6" class="data row0 col6" >2.19%</td>
	  <td id="T_976a0_row0_col7" class="data row0 col7" >2.76%</td>
	</tr>
  </tbody>
</table>

## 3.2

We will get a better YTM estimate if we use a price that is…

* the mean of the **bid** (`TDBID`) and **ask** (`TDASK`)
* includes the **accrued interest** (`TDACCINT`)

```python
from scipy.optimize import fsolve

def pv(rate, cashflows, maturities,freq=1):
    price = sum([cfi/(1+rate/freq)**(maturities[i]*freq) for i, cfi in enumerate(cashflows)])
    return price
```

```python
RESTRICT_YLD = False
RESTRICT_TIPS = True

RESTRICT_DTS_MATURING = False
RESTRICT_REDUNDANT = False

data = filter_treasuries(rawdata, t_date=t_current, filter_yld = RESTRICT_YLD, filter_tips = RESTRICT_TIPS, drop_duplicate_maturities=RESTRICT_REDUNDANT)
CF = filter_treasury_cashflows(calc_cashflows(data),filter_maturity_dates=RESTRICT_DTS_MATURING)
```

```python
px = (rawdata[['TDASK','TDBID']].mean(axis=1) + rawdata['TDACCINT']).loc[CF.index]
maturity_grid = pd.Series(get_maturity_delta(CF.columns.values,t_current=t_current),index=CF.columns)

ytm = pd.Series(index=px.index,dtype=float)
for idbond in px.index:
    pv_wrapper = lambda y: px.loc[idbond] - pv(y,CF.loc[idbond,:].values,maturity_grid.values,freq=2)
    ytm.loc[idbond] = fsolve(pv_wrapper,.01)
```

```python
plt.plot(mats_issues.loc[ytm.index],ytm,linestyle='',marker='*')
plt.title(f'YTM for issues on {pd.to_datetime(t_current):%Y-%m-%d}')
plt.ylabel('semiannual compounded YTM')
plt.xlabel('maturity')
plt.show()
```

![png](output_36_0.png)

### Compare to the provided YTM calcs in the original data source

```python
(rawdata['TDYLD'].loc[CF.index]*FREQ - ytm).describe().to_frame().rename(columns={0:'yield error'}).T.style.format('{:,.4%}')
```

<style type="text/css">
</style>
<table id="T_8f178">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_8f178_level0_col0" class="col_heading level0 col0" >count</th>
	  <th id="T_8f178_level0_col1" class="col_heading level0 col1" >mean</th>
	  <th id="T_8f178_level0_col2" class="col_heading level0 col2" >std</th>
	  <th id="T_8f178_level0_col3" class="col_heading level0 col3" >min</th>
	  <th id="T_8f178_level0_col4" class="col_heading level0 col4" >25%</th>
	  <th id="T_8f178_level0_col5" class="col_heading level0 col5" >50%</th>
	  <th id="T_8f178_level0_col6" class="col_heading level0 col6" >75%</th>
	  <th id="T_8f178_level0_col7" class="col_heading level0 col7" >max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_8f178_level0_row0" class="row_heading level0 row0" >yield error</th>
	  <td id="T_8f178_row0_col0" class="data row0 col0" >37,600.0000%</td>
	  <td id="T_8f178_row0_col1" class="data row0 col1" >-0.0223%</td>
	  <td id="T_8f178_row0_col2" class="data row0 col2" >0.0072%</td>
	  <td id="T_8f178_row0_col3" class="data row0 col3" >-0.0325%</td>
	  <td id="T_8f178_row0_col4" class="data row0 col4" >-0.0256%</td>
	  <td id="T_8f178_row0_col5" class="data row0 col5" >-0.0245%</td>
	  <td id="T_8f178_row0_col6" class="data row0 col6" >-0.0223%</td>
	  <td id="T_8f178_row0_col7" class="data row0 col7" >-0.0016%</td>
	</tr>
  </tbody>
</table>

## 3.3

```python
rADJ = .005
CFadj = CF + rADJ/2 * 100 * (CF>0)
ytm = rawdata.loc[CF.index,'TDYLD']*365
disc_rates = ytm + rADJ

COMPOUNDING = 2

pxfloat = pd.Series(index=px.index, dtype=float)
pxfixed = pd.Series(index=px.index, dtype=float)

for sec in CF.index:
    disc_adj = intrate_to_discount(disc_rates.loc[sec],maturity_grid,n_compound=COMPOUNDING)
    pxfloat.loc[sec] = (CFadj.loc[sec,:] @ disc_adj.values)#.rename(columns={0:'price adjusted'})
    pxfixed.loc[sec] = (CF.loc[sec,:] @ disc_adj.values)#.rename(columns={0:'price adjusted'})
    

price_comp = pd.concat([px,pxfixed,pxfloat],axis=1,keys=['price','fixed coupon','floating coupon'])

idx = rawdata['TMATDT']<='2027-06-30'
price_comp[idx]
```

    /var/folders/03/w2qjd9795f9_qlz29c6n6s600000gn/T/ipykernel_99768/1017236185.py:20: UserWarning: Boolean Series key will be reindexed to match DataFrame index.
      price_comp[idx]

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
	  <th>price</th>
	  <th>fixed coupon</th>
	  <th>floating coupon</th>
	</tr>
	<tr>
	  <th>KYTREASNO</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>207851</th>
	  <td>99.990903</td>
	  <td>99.984111</td>
	  <td>100.234072</td>
	</tr>
	<tr>
	  <th>207817</th>
	  <td>99.986292</td>
	  <td>99.976791</td>
	  <td>100.226733</td>
	</tr>
	<tr>
	  <th>207852</th>
	  <td>99.963500</td>
	  <td>99.947317</td>
	  <td>100.197185</td>
	</tr>
	<tr>
	  <th>207741</th>
	  <td>99.959944</td>
	  <td>99.941044</td>
	  <td>100.190896</td>
	</tr>
	<tr>
	  <th>207386</th>
	  <td>100.841549</td>
	  <td>100.821043</td>
	  <td>101.070909</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>207094</th>
	  <td>97.156250</td>
	  <td>95.087531</td>
	  <td>97.369845</td>
	</tr>
	<tr>
	  <th>207887</th>
	  <td>98.332351</td>
	  <td>96.227634</td>
	  <td>98.719226</td>
	</tr>
	<tr>
	  <th>207546</th>
	  <td>88.361296</td>
	  <td>86.381104</td>
	  <td>88.870172</td>
	</tr>
	<tr>
	  <th>207904</th>
	  <td>100.968750</td>
	  <td>98.796508</td>
	  <td>101.070862</td>
	</tr>
	<tr>
	  <th>207561</th>
	  <td>88.160156</td>
	  <td>86.151061</td>
	  <td>88.423463</td>
	</tr>
  </tbody>
</table>
<p>256 rows × 3 columns</p>
</div>

### The revised price is nearly the exact same!

This illustrates the key point of a floating-rate note (bond):

* The change in interest rate impacts the discount AND the coupon.
* These two effects are *nearly* offsetting.

# 4 Short-Term Rates

Use the data in `data/ref_rates.xlsx` to explore several key rates that are used as benchmarks for floating rates.

* SOFR
* Fed funds
* 3-month T-bill yield

Calculate the correlation between the three rates (filtering to the dates for which they all have reported values.)

Do this correlation analysis for the data in

* levels (as provided)
* differences (day-over-day changes)

# <span style="color:red">Solution 4</span>

```python
filepath = '../data/ref_rates.xlsx'
refs = pd.read_excel(filepath, sheet_name='data').set_index('date')
```

```python
refs.corr()
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
	  <th>DTB3</th>
	  <th>DFF</th>
	  <th>SOFR</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DTB3</th>
	  <td>1.000000</td>
	  <td>0.988042</td>
	  <td>0.982199</td>
	</tr>
	<tr>
	  <th>DFF</th>
	  <td>0.988042</td>
	  <td>1.000000</td>
	  <td>0.994842</td>
	</tr>
	<tr>
	  <th>SOFR</th>
	  <td>0.982199</td>
	  <td>0.994842</td>
	  <td>1.000000</td>
	</tr>
  </tbody>
</table>
</div>

```python
refs.diff().corr()
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
	  <th>DTB3</th>
	  <th>DFF</th>
	  <th>SOFR</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DTB3</th>
	  <td>1.000000</td>
	  <td>0.158403</td>
	  <td>0.108907</td>
	</tr>
	<tr>
	  <th>DFF</th>
	  <td>0.158403</td>
	  <td>1.000000</td>
	  <td>0.305339</td>
	</tr>
	<tr>
	  <th>SOFR</th>
	  <td>0.108907</td>
	  <td>0.305339</td>
	  <td>1.000000</td>
	</tr>
  </tbody>
</table>
</div>


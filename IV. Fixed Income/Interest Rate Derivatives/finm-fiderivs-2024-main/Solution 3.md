---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Solution 3
---

# Solution 3

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

# 1. Modeling the Volatility Smile

## Swaption Vol Data

The file `data/swaption_vol_data_2024-02-20.xlsx` has market data on the implied volatility skews for swaptions. Note that it has several columns:

* `expry`: expiration of the swaption
* `tenor`: tenor of the underlying swap
* `model`: the model by which the volatility is quoted. (All are Black.)
* `-200`, `-100`, etc.: The strike listed as difference from ATM strike (bps). Note that ATM is considered to be the **forward swapa rate** which you can calculate.

Your data: ywill use a single row of this data for the `1x4` swaption.

* date: `2024-02-20`
* expiration: 1yr
* tenor: 4yrs

## Rate Data

The file `data/cap_curves_2024-02-20.xlsx` gives 

* SOFR swap rates, 
* their associated discount factors
* their associated forward interest rates.

You will not need the cap data (flat or forward vols) for this problem.

* This cap data would be helpful in calibrating a binomial tree, but this problem focuses on Black's formula and SABR.

## The Swaption

Consider the following swaption with the following features:

* underlying is a fixed-for-floating (SOFR) swap
* the underlying swap has **quarterly** payment frequency
* this is a **payer** swaption, which gives the holder the option to **pay** the fixed swap rate and receive SOFR.

## 1.1

Calculate the (relevant) forward swap rate. That is, the one-year forward 4-year swap rate.

## 1.2

Price the swaptions at the quoted implied volatilites and corresponding strikes, all using the just-calculated forward swap rate as the underlying.

## 1.3

To consider how the expiration and tenor matter, calculate the prices of a few other swaptions for comparison. 

* No need to get other implied vol quotes--just use the ATM implied vol you have for the 1x2 above. (Here we are just interested in how Black's formula changes with changes in tenor and expiration.
* No need to calculate for all the strikes--just do the ATM strike.

Alternate swaptions

* The 3mo x 4yr swaption
* The 2yr x 4yr swaption
* the 1yr x 2yr swaption

Report these values and compare them to the price of the `1y x 4y` swaption.

***

# **<span style="color:red">Solutions</span>**

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
```

```python
import datetime
import warnings

import matplotlib.pyplot as plt
import seaborn as sns
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

import matplotlib.ticker as mtick
from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)
```

# **<span style="color:red">Solution 1</span>**

```python
DATE = '2024-02-20'
freqcurve = 4

SWAP_TYPE = 'SOFR'
QUOTE_STYLE = 'black'
RELATIVE_STRIKE = 0

expry = 1
tenor = 4

freqswap = 4
isPayer=True
N = 100
```

```python
curves = pd.read_excel(f'../data/cap_curves_{DATE}.xlsx', sheet_name=f'rate curves {DATE}').set_index('tenor')

Topt = expry
Tswap = Topt+tenor

fwdrate = curves['forwards'][Topt]

fwdswap = calc_fwdswaprate(curves['discounts'], Topt, Tswap, freqswap=freqswap)
```

## **<span style="color:red">1.1</span>**

```python
display(f'The forward swap rate is {fwdswap:.2%}')
```

    'The forward swap rate is 3.67%'

## **<span style="color:red">1.2</span>**

### Import and Process Quoted Vols

```python
voldata = pd.read_excel('../data/swaption_vol_data.xlsx')
volquote = voldata.query(f'model=="{QUOTE_STYLE}"').query(f'reference=="{SWAP_TYPE}"').query(f'date=="{DATE}"')
idx = (volquote['expiration']==expry) & (volquote['tenor']==tenor)
volquote = volquote.loc[idx]
volquote.index = ['implied vol']

volquote
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
	  <th>-200</th>
	  <th>-100</th>
	  <th>-50</th>
	  <th>-25</th>
	  <th>0</th>
	  <th>25</th>
	  <th>50</th>
	  <th>100</th>
	  <th>200</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>implied vol</th>
	  <td>SOFR</td>
	  <td>swaption</td>
	  <td>black</td>
	  <td>2024-02-20</td>
	  <td>1</td>
	  <td>4</td>
	  <td>54.54</td>
	  <td>40.37</td>
	  <td>35.94</td>
	  <td>34.23</td>
	  <td>32.83</td>
	  <td>31.71</td>
	  <td>30.86</td>
	  <td>29.83</td>
	  <td>29.54</td>
	</tr>
  </tbody>
</table>
</div>

```python
strikerange = np.array(volquote.columns[-9:].tolist())
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

### Use Black's Formula

```python
period_fwd = curves.index.get_loc(Topt)
period_swap = curves.index.get_loc(Tswap)+1
step = round(freqcurve/freqswap)

discount = curves['discounts'].iloc[period_fwd+step : period_swap : step].sum()/freqswap
blacks_quotes = vols.copy()
blacks_quotes.loc['price'] = N * blacks_formula(Topt,vols,strikes,fwdswap,discount,isCall=isPayer)[0]
blacks_quotes.loc['strike'] = strikes
blacks_quotes = blacks_quotes.loc[['strike','implied vol','price']]

blacks_quotes.style.format('{:.4f}')
```

<style type="text/css">
</style>
<table id="T_c600b">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_c600b_level0_col0" class="col_heading level0 col0" >-200</th>
	  <th id="T_c600b_level0_col1" class="col_heading level0 col1" >-100</th>
	  <th id="T_c600b_level0_col2" class="col_heading level0 col2" >-50</th>
	  <th id="T_c600b_level0_col3" class="col_heading level0 col3" >-25</th>
	  <th id="T_c600b_level0_col4" class="col_heading level0 col4" >0</th>
	  <th id="T_c600b_level0_col5" class="col_heading level0 col5" >25</th>
	  <th id="T_c600b_level0_col6" class="col_heading level0 col6" >50</th>
	  <th id="T_c600b_level0_col7" class="col_heading level0 col7" >100</th>
	  <th id="T_c600b_level0_col8" class="col_heading level0 col8" >200</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_c600b_level0_row0" class="row_heading level0 row0" >strike</th>
	  <td id="T_c600b_row0_col0" class="data row0 col0" >0.0167</td>
	  <td id="T_c600b_row0_col1" class="data row0 col1" >0.0267</td>
	  <td id="T_c600b_row0_col2" class="data row0 col2" >0.0317</td>
	  <td id="T_c600b_row0_col3" class="data row0 col3" >0.0342</td>
	  <td id="T_c600b_row0_col4" class="data row0 col4" >0.0367</td>
	  <td id="T_c600b_row0_col5" class="data row0 col5" >0.0392</td>
	  <td id="T_c600b_row0_col6" class="data row0 col6" >0.0417</td>
	  <td id="T_c600b_row0_col7" class="data row0 col7" >0.0467</td>
	  <td id="T_c600b_row0_col8" class="data row0 col8" >0.0567</td>
	</tr>
	<tr>
	  <th id="T_c600b_level0_row1" class="row_heading level0 row1" >implied vol</th>
	  <td id="T_c600b_row1_col0" class="data row1 col0" >0.5454</td>
	  <td id="T_c600b_row1_col1" class="data row1 col1" >0.4037</td>
	  <td id="T_c600b_row1_col2" class="data row1 col2" >0.3594</td>
	  <td id="T_c600b_row1_col3" class="data row1 col3" >0.3423</td>
	  <td id="T_c600b_row1_col4" class="data row1 col4" >0.3283</td>
	  <td id="T_c600b_row1_col5" class="data row1 col5" >0.3171</td>
	  <td id="T_c600b_row1_col6" class="data row1 col6" >0.3086</td>
	  <td id="T_c600b_row1_col7" class="data row1 col7" >0.2983</td>
	  <td id="T_c600b_row1_col8" class="data row1 col8" >0.2954</td>
	</tr>
	<tr>
	  <th id="T_c600b_level0_row2" class="row_heading level0 row2" >price</th>
	  <td id="T_c600b_row2_col0" class="data row2 col0" >7.2031</td>
	  <td id="T_c600b_row2_col1" class="data row2 col1" >4.0653</td>
	  <td id="T_c600b_row2_col2" class="data row2 col2" >2.7398</td>
	  <td id="T_c600b_row2_col3" class="data row2 col3" >2.1749</td>
	  <td id="T_c600b_row2_col4" class="data row2 col4" >1.6874</td>
	  <td id="T_c600b_row2_col5" class="data row2 col5" >1.2812</td>
	  <td id="T_c600b_row2_col6" class="data row2 col6" >0.9556</td>
	  <td id="T_c600b_row2_col7" class="data row2 col7" >0.5133</td>
	  <td id="T_c600b_row2_col8" class="data row2 col8" >0.1473</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">1.3</span>**

```python
expiries = [.25,1,2,1]
tenors = [4,4,4,2]
fwdswaps = np.full(len(expiries),np.nan)

blacks_quotes_alt = pd.DataFrame(dtype=float,columns=['expiry','tenor','price'])
    
for i in range(len(fwdswaps)):
    fwdswaps[i] = calc_fwdswaprate(curves['discounts'], expiries[i], expiries[i]+tenors[i], freqswap=freqswap)
    
    period0 = curves.index.get_loc(expiries[i])
    period1 = curves.index.get_loc(expiries[i]+tenors[i])+1
    step_i = round(freqcurve/freqswap)

    discount_i = curves['discounts'].iloc[period0+step_i : period1 : step_i].sum()/freqswap

    blacks_quotes_alt.loc[i,['expiry','tenor']] = [expiries[i],tenors[i]]
    blacks_quotes_alt.loc[i,'price'] = N * blacks_formula(expiries[i],volATM,strikeATM,fwdswaps[i],discount_i,isCall=isPayer)

    
def highlight_row(row):
    if row.name == 1:
        return ['background-color: yellow'] * len(row)
    else:
        return [''] * len(row)
    
blacks_quotes_alt.style.apply(highlight_row,axis=1).format({'expiry':'{:.2f}', 'tenor':'{:.2f}', 'price':'{:.4f}'})
```

<style type="text/css">
#T_4ab22_row1_col0, #T_4ab22_row1_col1, #T_4ab22_row1_col2 {
  background-color: yellow;
}
</style>
<table id="T_4ab22">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_4ab22_level0_col0" class="col_heading level0 col0" >expiry</th>
	  <th id="T_4ab22_level0_col1" class="col_heading level0 col1" >tenor</th>
	  <th id="T_4ab22_level0_col2" class="col_heading level0 col2" >price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_4ab22_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_4ab22_row0_col0" class="data row0 col0" >0.25</td>
	  <td id="T_4ab22_row0_col1" class="data row0 col1" >4.00</td>
	  <td id="T_4ab22_row0_col2" class="data row0 col2" >1.3952</td>
	</tr>
	<tr>
	  <th id="T_4ab22_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_4ab22_row1_col0" class="data row1 col0" >1.00</td>
	  <td id="T_4ab22_row1_col1" class="data row1 col1" >4.00</td>
	  <td id="T_4ab22_row1_col2" class="data row1 col2" >1.6874</td>
	</tr>
	<tr>
	  <th id="T_4ab22_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_4ab22_row2_col0" class="data row2 col0" >2.00</td>
	  <td id="T_4ab22_row2_col1" class="data row2 col1" >4.00</td>
	  <td id="T_4ab22_row2_col2" class="data row2 col2" >2.1860</td>
	</tr>
	<tr>
	  <th id="T_4ab22_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_4ab22_row3_col0" class="data row3 col0" >1.00</td>
	  <td id="T_4ab22_row3_col1" class="data row3 col1" >2.00</td>
	  <td id="T_4ab22_row3_col2" class="data row3 col2" >0.9485</td>
	</tr>
  </tbody>
</table>

***

# 2. Pricing w/ BDT

Use the data in `cap_curves_2024-02-20.xlsx`.

## 2.1

Calibrate the BDT Tree

* theta to fit the term structure discounts.
* sigma to fit the fwd vols from the cap data.

Report the rate tree through $T=5$. Report trees for rates compounded

* continuously
* annually

## 2.2

Use a tree to price a vanilla fixed-rate, 5-year bond with coupon rate equal to the forward swap rate calculated in problem `1.1.`

## 2.3

We will calculate the binomial tree for the 5-year swap, but here we do so by valuing the swap as…

$$\text{payer swap} = \text{floating rate note} - \text{fixed-rate bond}$$

Recall for the Floating-Rate Note:

* It has par value of 100 at each reset date.
* Every node is a reset date given the assumptions of the swap timing.

Report the tree for the 5-year swap.

## 2.4

Report the binomial tree for the one-year European swaption on a 4-year swap.

* At expiration, the swap tree from 2.3 will have 4 years left, as desired for pricing the 1y-4y swaption.

## 2.5

Compare the pricing of the 1y4y swaption from Black's formula in Section 1 vs the binomial tree.

## 2.6

Reprice the swaption using the BDT tree, but this time assuming it is **american**-style exercise.

***

# **<span style="color:red">Solution 2</span>**

## **<span style="color:red">2.1</span>**

### Interpolate curves to Tree Grid

```python
FREQTREE = 4
dt = 1/FREQTREE

newgrid = np.arange(dt,curves.index[-1]+dt,dt).round(6)
curvesint = pd.DataFrame(dtype=float, columns=curves.columns, index=newgrid)
cols_interp = ['swap rates','flat vols','fwd vols']

# interpolate
curvesint = pd.concat([curvesint,curves],axis=0)
curvesint = curvesint.interpolate(method='cubicspline',fill_value='extrapolate',limit_direction='both')
curvesint = curvesint.loc[newgrid,:]
curvesint = curvesint[~curvesint.index.duplicated()].sort_index()

# compute derived curves
curvesint['discounts'] = ratecurve_to_discountcurve(curvesint['swap rates'],n_compound=FREQTREE)
curvesint['forwards'] = ratecurve_to_forwardcurve(curvesint['swap rates'],n_compound=FREQTREE)

# forward vol is derived but can't extract curve--interpolate and adjust front to first flat vol
id0 = curves['flat vols'].dropna().index[0]
curvesint.loc[:id0,['flat vols','fwd vols']] = curves.loc[id0,'flat vols']
```

```python
curvesint[['swap rates','forwards']].loc[:Tswap].plot();
```

![png](output_40_0.png)

```python
curvesint[['flat vols','fwd vols']].loc[:Tswap].plot();
```

![png](output_41_0.png)

### Market Rates

```python
quotes = curves['discounts']
swaprate = calc_swaprate(quotes, Tswap, freqswap=freqswap)
fwdswap = calc_fwdswaprate(quotes, Topt, Tswap, freqswap=freqswap)
fwdrate = curves['forwards'][Topt]
```

### Build BDT Rate Tree

```python
sigmas = curvesint['fwd vols']
sigmas.iloc[0] = sigmas.iloc[1]
sigmas.index = sigmas.index.to_numpy().round(6)

theta, ratetree = estimate_theta(sigmas.loc[:Tswap],100*curvesint.loc[:Tswap,'discounts'])
```

## **<span style="color:red">2.2 and 2.3</span>**

```python
freqcpn = freqswap
strike = strikes[idstrike]
cpn = strike

wrapper_bond = lambda r: payoff_bond(r, 1/FREQTREE, facevalue=N * (1+cpn/freqcpn))
cftree = construct_bond_cftree(Tswap, FREQTREE, cpn, cpn_freq=freqcpn, face=N)
bondtree = bintree_pricing(payoff=wrapper_bond, ratetree=ratetree, cftree=cftree)

if isPayer:
    swaptree = (N-bondtree)
else:
    swaptree = (bondtree-N)
    
format_bintree(swaptree)
```

<style type="text/css">
</style>
<table id="T_e8a8b">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_e8a8b_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_e8a8b_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_e8a8b_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_e8a8b_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_e8a8b_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_e8a8b_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_e8a8b_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_e8a8b_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_e8a8b_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_e8a8b_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_e8a8b_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_e8a8b_level0_col11" class="col_heading level0 col11" >2.75</th>
	  <th id="T_e8a8b_level0_col12" class="col_heading level0 col12" >3.00</th>
	  <th id="T_e8a8b_level0_col13" class="col_heading level0 col13" >3.25</th>
	  <th id="T_e8a8b_level0_col14" class="col_heading level0 col14" >3.50</th>
	  <th id="T_e8a8b_level0_col15" class="col_heading level0 col15" >3.75</th>
	  <th id="T_e8a8b_level0_col16" class="col_heading level0 col16" >4.00</th>
	  <th id="T_e8a8b_level0_col17" class="col_heading level0 col17" >4.25</th>
	  <th id="T_e8a8b_level0_col18" class="col_heading level0 col18" >4.50</th>
	  <th id="T_e8a8b_level0_col19" class="col_heading level0 col19" >4.75</th>
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
	  <th class="blank col13" >&nbsp;</th>
	  <th class="blank col14" >&nbsp;</th>
	  <th class="blank col15" >&nbsp;</th>
	  <th class="blank col16" >&nbsp;</th>
	  <th class="blank col17" >&nbsp;</th>
	  <th class="blank col18" >&nbsp;</th>
	  <th class="blank col19" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_e8a8b_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_e8a8b_row0_col0" class="data row0 col0" >1.32</td>
	  <td id="T_e8a8b_row0_col1" class="data row0 col1" >3.46</td>
	  <td id="T_e8a8b_row0_col2" class="data row0 col2" >5.70</td>
	  <td id="T_e8a8b_row0_col3" class="data row0 col3" >8.07</td>
	  <td id="T_e8a8b_row0_col4" class="data row0 col4" >10.58</td>
	  <td id="T_e8a8b_row0_col5" class="data row0 col5" >13.29</td>
	  <td id="T_e8a8b_row0_col6" class="data row0 col6" >16.08</td>
	  <td id="T_e8a8b_row0_col7" class="data row0 col7" >18.90</td>
	  <td id="T_e8a8b_row0_col8" class="data row0 col8" >21.67</td>
	  <td id="T_e8a8b_row0_col9" class="data row0 col9" >24.42</td>
	  <td id="T_e8a8b_row0_col10" class="data row0 col10" >26.93</td>
	  <td id="T_e8a8b_row0_col11" class="data row0 col11" >29.10</td>
	  <td id="T_e8a8b_row0_col12" class="data row0 col12" >30.80</td>
	  <td id="T_e8a8b_row0_col13" class="data row0 col13" >32.04</td>
	  <td id="T_e8a8b_row0_col14" class="data row0 col14" >32.61</td>
	  <td id="T_e8a8b_row0_col15" class="data row0 col15" >32.12</td>
	  <td id="T_e8a8b_row0_col16" class="data row0 col16" >30.35</td>
	  <td id="T_e8a8b_row0_col17" class="data row0 col17" >27.16</td>
	  <td id="T_e8a8b_row0_col18" class="data row0 col18" >21.93</td>
	  <td id="T_e8a8b_row0_col19" class="data row0 col19" >13.39</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_e8a8b_row1_col0" class="data row1 col0" ></td>
	  <td id="T_e8a8b_row1_col1" class="data row1 col1" >-1.55</td>
	  <td id="T_e8a8b_row1_col2" class="data row1 col2" >0.39</td>
	  <td id="T_e8a8b_row1_col3" class="data row1 col3" >2.45</td>
	  <td id="T_e8a8b_row1_col4" class="data row1 col4" >4.65</td>
	  <td id="T_e8a8b_row1_col5" class="data row1 col5" >7.04</td>
	  <td id="T_e8a8b_row1_col6" class="data row1 col6" >9.53</td>
	  <td id="T_e8a8b_row1_col7" class="data row1 col7" >12.09</td>
	  <td id="T_e8a8b_row1_col8" class="data row1 col8" >14.65</td>
	  <td id="T_e8a8b_row1_col9" class="data row1 col9" >17.25</td>
	  <td id="T_e8a8b_row1_col10" class="data row1 col10" >19.71</td>
	  <td id="T_e8a8b_row1_col11" class="data row1 col11" >21.92</td>
	  <td id="T_e8a8b_row1_col12" class="data row1 col12" >23.78</td>
	  <td id="T_e8a8b_row1_col13" class="data row1 col13" >25.29</td>
	  <td id="T_e8a8b_row1_col14" class="data row1 col14" >26.25</td>
	  <td id="T_e8a8b_row1_col15" class="data row1 col15" >26.28</td>
	  <td id="T_e8a8b_row1_col16" class="data row1 col16" >25.16</td>
	  <td id="T_e8a8b_row1_col17" class="data row1 col17" >22.75</td>
	  <td id="T_e8a8b_row1_col18" class="data row1 col18" >18.49</td>
	  <td id="T_e8a8b_row1_col19" class="data row1 col19" >11.34</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_e8a8b_row2_col0" class="data row2 col0" ></td>
	  <td id="T_e8a8b_row2_col1" class="data row2 col1" ></td>
	  <td id="T_e8a8b_row2_col2" class="data row2 col2" >-4.03</td>
	  <td id="T_e8a8b_row2_col3" class="data row2 col3" >-2.25</td>
	  <td id="T_e8a8b_row2_col4" class="data row2 col4" >-0.37</td>
	  <td id="T_e8a8b_row2_col5" class="data row2 col5" >1.68</td>
	  <td id="T_e8a8b_row2_col6" class="data row2 col6" >3.84</td>
	  <td id="T_e8a8b_row2_col7" class="data row2 col7" >6.07</td>
	  <td id="T_e8a8b_row2_col8" class="data row2 col8" >8.32</td>
	  <td id="T_e8a8b_row2_col9" class="data row2 col9" >10.65</td>
	  <td id="T_e8a8b_row2_col10" class="data row2 col10" >12.90</td>
	  <td id="T_e8a8b_row2_col11" class="data row2 col11" >14.98</td>
	  <td id="T_e8a8b_row2_col12" class="data row2 col12" >16.82</td>
	  <td id="T_e8a8b_row2_col13" class="data row2 col13" >18.43</td>
	  <td id="T_e8a8b_row2_col14" class="data row2 col14" >19.62</td>
	  <td id="T_e8a8b_row2_col15" class="data row2 col15" >20.07</td>
	  <td id="T_e8a8b_row2_col16" class="data row2 col16" >19.57</td>
	  <td id="T_e8a8b_row2_col17" class="data row2 col17" >18.00</td>
	  <td id="T_e8a8b_row2_col18" class="data row2 col18" >14.82</td>
	  <td id="T_e8a8b_row2_col19" class="data row2 col19" >9.13</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_e8a8b_row3_col0" class="data row3 col0" ></td>
	  <td id="T_e8a8b_row3_col1" class="data row3 col1" ></td>
	  <td id="T_e8a8b_row3_col2" class="data row3 col2" ></td>
	  <td id="T_e8a8b_row3_col3" class="data row3 col3" >-6.01</td>
	  <td id="T_e8a8b_row3_col4" class="data row3 col4" >-4.39</td>
	  <td id="T_e8a8b_row3_col5" class="data row3 col5" >-2.64</td>
	  <td id="T_e8a8b_row3_col6" class="data row3 col6" >-0.81</td>
	  <td id="T_e8a8b_row3_col7" class="data row3 col7" >1.09</td>
	  <td id="T_e8a8b_row3_col8" class="data row3 col8" >3.02</td>
	  <td id="T_e8a8b_row3_col9" class="data row3 col9" >5.02</td>
	  <td id="T_e8a8b_row3_col10" class="data row3 col10" >6.98</td>
	  <td id="T_e8a8b_row3_col11" class="data row3 col11" >8.84</td>
	  <td id="T_e8a8b_row3_col12" class="data row3 col12" >10.52</td>
	  <td id="T_e8a8b_row3_col13" class="data row3 col13" >12.05</td>
	  <td id="T_e8a8b_row3_col14" class="data row3 col14" >13.30</td>
	  <td id="T_e8a8b_row3_col15" class="data row3 col15" >13.99</td>
	  <td id="T_e8a8b_row3_col16" class="data row3 col16" >13.97</td>
	  <td id="T_e8a8b_row3_col17" class="data row3 col17" >13.13</td>
	  <td id="T_e8a8b_row3_col18" class="data row3 col18" >11.05</td>
	  <td id="T_e8a8b_row3_col19" class="data row3 col19" >6.97</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_e8a8b_row4_col0" class="data row4 col0" ></td>
	  <td id="T_e8a8b_row4_col1" class="data row4 col1" ></td>
	  <td id="T_e8a8b_row4_col2" class="data row4 col2" ></td>
	  <td id="T_e8a8b_row4_col3" class="data row4 col3" ></td>
	  <td id="T_e8a8b_row4_col4" class="data row4 col4" >-7.47</td>
	  <td id="T_e8a8b_row4_col5" class="data row4 col5" >-5.96</td>
	  <td id="T_e8a8b_row4_col6" class="data row4 col6" >-4.40</td>
	  <td id="T_e8a8b_row4_col7" class="data row4 col7" >-2.78</td>
	  <td id="T_e8a8b_row4_col8" class="data row4 col8" >-1.14</td>
	  <td id="T_e8a8b_row4_col9" class="data row4 col9" >0.55</td>
	  <td id="T_e8a8b_row4_col10" class="data row4 col10" >2.22</td>
	  <td id="T_e8a8b_row4_col11" class="data row4 col11" >3.82</td>
	  <td id="T_e8a8b_row4_col12" class="data row4 col12" >5.29</td>
	  <td id="T_e8a8b_row4_col13" class="data row4 col13" >6.66</td>
	  <td id="T_e8a8b_row4_col14" class="data row4 col14" >7.84</td>
	  <td id="T_e8a8b_row4_col15" class="data row4 col15" >8.60</td>
	  <td id="T_e8a8b_row4_col16" class="data row4 col16" >8.85</td>
	  <td id="T_e8a8b_row4_col17" class="data row4 col17" >8.52</td>
	  <td id="T_e8a8b_row4_col18" class="data row4 col18" >7.29</td>
	  <td id="T_e8a8b_row4_col19" class="data row4 col19" >4.64</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_e8a8b_row5_col0" class="data row5 col0" ></td>
	  <td id="T_e8a8b_row5_col1" class="data row5 col1" ></td>
	  <td id="T_e8a8b_row5_col2" class="data row5 col2" ></td>
	  <td id="T_e8a8b_row5_col3" class="data row5 col3" ></td>
	  <td id="T_e8a8b_row5_col4" class="data row5 col4" ></td>
	  <td id="T_e8a8b_row5_col5" class="data row5 col5" >-8.32</td>
	  <td id="T_e8a8b_row5_col6" class="data row5 col6" >-6.95</td>
	  <td id="T_e8a8b_row5_col7" class="data row5 col7" >-5.55</td>
	  <td id="T_e8a8b_row5_col8" class="data row5 col8" >-4.13</td>
	  <td id="T_e8a8b_row5_col9" class="data row5 col9" >-2.67</td>
	  <td id="T_e8a8b_row5_col10" class="data row5 col10" >-1.23</td>
	  <td id="T_e8a8b_row5_col11" class="data row5 col11" >0.16</td>
	  <td id="T_e8a8b_row5_col12" class="data row5 col12" >1.46</td>
	  <td id="T_e8a8b_row5_col13" class="data row5 col13" >2.70</td>
	  <td id="T_e8a8b_row5_col14" class="data row5 col14" >3.79</td>
	  <td id="T_e8a8b_row5_col15" class="data row5 col15" >4.60</td>
	  <td id="T_e8a8b_row5_col16" class="data row5 col16" >5.04</td>
	  <td id="T_e8a8b_row5_col17" class="data row5 col17" >5.07</td>
	  <td id="T_e8a8b_row5_col18" class="data row5 col18" >4.48</td>
	  <td id="T_e8a8b_row5_col19" class="data row5 col19" >2.91</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_e8a8b_row6_col0" class="data row6 col0" ></td>
	  <td id="T_e8a8b_row6_col1" class="data row6 col1" ></td>
	  <td id="T_e8a8b_row6_col2" class="data row6 col2" ></td>
	  <td id="T_e8a8b_row6_col3" class="data row6 col3" ></td>
	  <td id="T_e8a8b_row6_col4" class="data row6 col4" ></td>
	  <td id="T_e8a8b_row6_col5" class="data row6 col5" ></td>
	  <td id="T_e8a8b_row6_col6" class="data row6 col6" >-8.74</td>
	  <td id="T_e8a8b_row6_col7" class="data row6 col7" >-7.48</td>
	  <td id="T_e8a8b_row6_col8" class="data row6 col8" >-6.22</td>
	  <td id="T_e8a8b_row6_col9" class="data row6 col9" >-4.93</td>
	  <td id="T_e8a8b_row6_col10" class="data row6 col10" >-3.65</td>
	  <td id="T_e8a8b_row6_col11" class="data row6 col11" >-2.41</td>
	  <td id="T_e8a8b_row6_col12" class="data row6 col12" >-1.23</td>
	  <td id="T_e8a8b_row6_col13" class="data row6 col13" >-0.10</td>
	  <td id="T_e8a8b_row6_col14" class="data row6 col14" >0.93</td>
	  <td id="T_e8a8b_row6_col15" class="data row6 col15" >1.76</td>
	  <td id="T_e8a8b_row6_col16" class="data row6 col16" >2.33</td>
	  <td id="T_e8a8b_row6_col17" class="data row6 col17" >2.63</td>
	  <td id="T_e8a8b_row6_col18" class="data row6 col18" >2.49</td>
	  <td id="T_e8a8b_row6_col19" class="data row6 col19" >1.70</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_e8a8b_row7_col0" class="data row7 col0" ></td>
	  <td id="T_e8a8b_row7_col1" class="data row7 col1" ></td>
	  <td id="T_e8a8b_row7_col2" class="data row7 col2" ></td>
	  <td id="T_e8a8b_row7_col3" class="data row7 col3" ></td>
	  <td id="T_e8a8b_row7_col4" class="data row7 col4" ></td>
	  <td id="T_e8a8b_row7_col5" class="data row7 col5" ></td>
	  <td id="T_e8a8b_row7_col6" class="data row7 col6" ></td>
	  <td id="T_e8a8b_row7_col7" class="data row7 col7" >-8.82</td>
	  <td id="T_e8a8b_row7_col8" class="data row7 col8" >-7.66</td>
	  <td id="T_e8a8b_row7_col9" class="data row7 col9" >-6.48</td>
	  <td id="T_e8a8b_row7_col10" class="data row7 col10" >-5.32</td>
	  <td id="T_e8a8b_row7_col11" class="data row7 col11" >-4.18</td>
	  <td id="T_e8a8b_row7_col12" class="data row7 col12" >-3.08</td>
	  <td id="T_e8a8b_row7_col13" class="data row7 col13" >-2.03</td>
	  <td id="T_e8a8b_row7_col14" class="data row7 col14" >-1.04</td>
	  <td id="T_e8a8b_row7_col15" class="data row7 col15" >-0.19</td>
	  <td id="T_e8a8b_row7_col16" class="data row7 col16" >0.48</td>
	  <td id="T_e8a8b_row7_col17" class="data row7 col17" >0.95</td>
	  <td id="T_e8a8b_row7_col18" class="data row7 col18" >1.13</td>
	  <td id="T_e8a8b_row7_col19" class="data row7 col19" >0.87</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_e8a8b_row8_col0" class="data row8 col0" ></td>
	  <td id="T_e8a8b_row8_col1" class="data row8 col1" ></td>
	  <td id="T_e8a8b_row8_col2" class="data row8 col2" ></td>
	  <td id="T_e8a8b_row8_col3" class="data row8 col3" ></td>
	  <td id="T_e8a8b_row8_col4" class="data row8 col4" ></td>
	  <td id="T_e8a8b_row8_col5" class="data row8 col5" ></td>
	  <td id="T_e8a8b_row8_col6" class="data row8 col6" ></td>
	  <td id="T_e8a8b_row8_col7" class="data row8 col7" ></td>
	  <td id="T_e8a8b_row8_col8" class="data row8 col8" >-8.66</td>
	  <td id="T_e8a8b_row8_col9" class="data row8 col9" >-7.56</td>
	  <td id="T_e8a8b_row8_col10" class="data row8 col10" >-6.47</td>
	  <td id="T_e8a8b_row8_col11" class="data row8 col11" >-5.40</td>
	  <td id="T_e8a8b_row8_col12" class="data row8 col12" >-4.36</td>
	  <td id="T_e8a8b_row8_col13" class="data row8 col13" >-3.35</td>
	  <td id="T_e8a8b_row8_col14" class="data row8 col14" >-2.38</td>
	  <td id="T_e8a8b_row8_col15" class="data row8 col15" >-1.52</td>
	  <td id="T_e8a8b_row8_col16" class="data row8 col16" >-0.79</td>
	  <td id="T_e8a8b_row8_col17" class="data row8 col17" >-0.18</td>
	  <td id="T_e8a8b_row8_col18" class="data row8 col18" >0.22</td>
	  <td id="T_e8a8b_row8_col19" class="data row8 col19" >0.31</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_e8a8b_row9_col0" class="data row9 col0" ></td>
	  <td id="T_e8a8b_row9_col1" class="data row9 col1" ></td>
	  <td id="T_e8a8b_row9_col2" class="data row9 col2" ></td>
	  <td id="T_e8a8b_row9_col3" class="data row9 col3" ></td>
	  <td id="T_e8a8b_row9_col4" class="data row9 col4" ></td>
	  <td id="T_e8a8b_row9_col5" class="data row9 col5" ></td>
	  <td id="T_e8a8b_row9_col6" class="data row9 col6" ></td>
	  <td id="T_e8a8b_row9_col7" class="data row9 col7" ></td>
	  <td id="T_e8a8b_row9_col8" class="data row9 col8" ></td>
	  <td id="T_e8a8b_row9_col9" class="data row9 col9" >-8.31</td>
	  <td id="T_e8a8b_row9_col10" class="data row9 col10" >-7.27</td>
	  <td id="T_e8a8b_row9_col11" class="data row9 col11" >-6.24</td>
	  <td id="T_e8a8b_row9_col12" class="data row9 col12" >-5.24</td>
	  <td id="T_e8a8b_row9_col13" class="data row9 col13" >-4.26</td>
	  <td id="T_e8a8b_row9_col14" class="data row9 col14" >-3.31</td>
	  <td id="T_e8a8b_row9_col15" class="data row9 col15" >-2.43</td>
	  <td id="T_e8a8b_row9_col16" class="data row9 col16" >-1.65</td>
	  <td id="T_e8a8b_row9_col17" class="data row9 col17" >-0.95</td>
	  <td id="T_e8a8b_row9_col18" class="data row9 col18" >-0.40</td>
	  <td id="T_e8a8b_row9_col19" class="data row9 col19" >-0.06</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_e8a8b_row10_col0" class="data row10 col0" ></td>
	  <td id="T_e8a8b_row10_col1" class="data row10 col1" ></td>
	  <td id="T_e8a8b_row10_col2" class="data row10 col2" ></td>
	  <td id="T_e8a8b_row10_col3" class="data row10 col3" ></td>
	  <td id="T_e8a8b_row10_col4" class="data row10 col4" ></td>
	  <td id="T_e8a8b_row10_col5" class="data row10 col5" ></td>
	  <td id="T_e8a8b_row10_col6" class="data row10 col6" ></td>
	  <td id="T_e8a8b_row10_col7" class="data row10 col7" ></td>
	  <td id="T_e8a8b_row10_col8" class="data row10 col8" ></td>
	  <td id="T_e8a8b_row10_col9" class="data row10 col9" ></td>
	  <td id="T_e8a8b_row10_col10" class="data row10 col10" >-7.83</td>
	  <td id="T_e8a8b_row10_col11" class="data row10 col11" >-6.84</td>
	  <td id="T_e8a8b_row10_col12" class="data row10 col12" >-5.86</td>
	  <td id="T_e8a8b_row10_col13" class="data row10 col13" >-4.89</td>
	  <td id="T_e8a8b_row10_col14" class="data row10 col14" >-3.96</td>
	  <td id="T_e8a8b_row10_col15" class="data row10 col15" >-3.07</td>
	  <td id="T_e8a8b_row10_col16" class="data row10 col16" >-2.24</td>
	  <td id="T_e8a8b_row10_col17" class="data row10 col17" >-1.48</td>
	  <td id="T_e8a8b_row10_col18" class="data row10 col18" >-0.83</td>
	  <td id="T_e8a8b_row10_col19" class="data row10 col19" >-0.32</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_e8a8b_row11_col0" class="data row11 col0" ></td>
	  <td id="T_e8a8b_row11_col1" class="data row11 col1" ></td>
	  <td id="T_e8a8b_row11_col2" class="data row11 col2" ></td>
	  <td id="T_e8a8b_row11_col3" class="data row11 col3" ></td>
	  <td id="T_e8a8b_row11_col4" class="data row11 col4" ></td>
	  <td id="T_e8a8b_row11_col5" class="data row11 col5" ></td>
	  <td id="T_e8a8b_row11_col6" class="data row11 col6" ></td>
	  <td id="T_e8a8b_row11_col7" class="data row11 col7" ></td>
	  <td id="T_e8a8b_row11_col8" class="data row11 col8" ></td>
	  <td id="T_e8a8b_row11_col9" class="data row11 col9" ></td>
	  <td id="T_e8a8b_row11_col10" class="data row11 col10" ></td>
	  <td id="T_e8a8b_row11_col11" class="data row11 col11" >-7.25</td>
	  <td id="T_e8a8b_row11_col12" class="data row11 col12" >-6.29</td>
	  <td id="T_e8a8b_row11_col13" class="data row11 col13" >-5.34</td>
	  <td id="T_e8a8b_row11_col14" class="data row11 col14" >-4.41</td>
	  <td id="T_e8a8b_row11_col15" class="data row11 col15" >-3.52</td>
	  <td id="T_e8a8b_row11_col16" class="data row11 col16" >-2.66</td>
	  <td id="T_e8a8b_row11_col17" class="data row11 col17" >-1.86</td>
	  <td id="T_e8a8b_row11_col18" class="data row11 col18" >-1.12</td>
	  <td id="T_e8a8b_row11_col19" class="data row11 col19" >-0.49</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row12" class="row_heading level0 row12" >12</th>
	  <td id="T_e8a8b_row12_col0" class="data row12 col0" ></td>
	  <td id="T_e8a8b_row12_col1" class="data row12 col1" ></td>
	  <td id="T_e8a8b_row12_col2" class="data row12 col2" ></td>
	  <td id="T_e8a8b_row12_col3" class="data row12 col3" ></td>
	  <td id="T_e8a8b_row12_col4" class="data row12 col4" ></td>
	  <td id="T_e8a8b_row12_col5" class="data row12 col5" ></td>
	  <td id="T_e8a8b_row12_col6" class="data row12 col6" ></td>
	  <td id="T_e8a8b_row12_col7" class="data row12 col7" ></td>
	  <td id="T_e8a8b_row12_col8" class="data row12 col8" ></td>
	  <td id="T_e8a8b_row12_col9" class="data row12 col9" ></td>
	  <td id="T_e8a8b_row12_col10" class="data row12 col10" ></td>
	  <td id="T_e8a8b_row12_col11" class="data row12 col11" ></td>
	  <td id="T_e8a8b_row12_col12" class="data row12 col12" >-6.60</td>
	  <td id="T_e8a8b_row12_col13" class="data row12 col13" >-5.66</td>
	  <td id="T_e8a8b_row12_col14" class="data row12 col14" >-4.73</td>
	  <td id="T_e8a8b_row12_col15" class="data row12 col15" >-3.83</td>
	  <td id="T_e8a8b_row12_col16" class="data row12 col16" >-2.96</td>
	  <td id="T_e8a8b_row12_col17" class="data row12 col17" >-2.12</td>
	  <td id="T_e8a8b_row12_col18" class="data row12 col18" >-1.33</td>
	  <td id="T_e8a8b_row12_col19" class="data row12 col19" >-0.62</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row13" class="row_heading level0 row13" >13</th>
	  <td id="T_e8a8b_row13_col0" class="data row13 col0" ></td>
	  <td id="T_e8a8b_row13_col1" class="data row13 col1" ></td>
	  <td id="T_e8a8b_row13_col2" class="data row13 col2" ></td>
	  <td id="T_e8a8b_row13_col3" class="data row13 col3" ></td>
	  <td id="T_e8a8b_row13_col4" class="data row13 col4" ></td>
	  <td id="T_e8a8b_row13_col5" class="data row13 col5" ></td>
	  <td id="T_e8a8b_row13_col6" class="data row13 col6" ></td>
	  <td id="T_e8a8b_row13_col7" class="data row13 col7" ></td>
	  <td id="T_e8a8b_row13_col8" class="data row13 col8" ></td>
	  <td id="T_e8a8b_row13_col9" class="data row13 col9" ></td>
	  <td id="T_e8a8b_row13_col10" class="data row13 col10" ></td>
	  <td id="T_e8a8b_row13_col11" class="data row13 col11" ></td>
	  <td id="T_e8a8b_row13_col12" class="data row13 col12" ></td>
	  <td id="T_e8a8b_row13_col13" class="data row13 col13" >-5.88</td>
	  <td id="T_e8a8b_row13_col14" class="data row13 col14" >-4.96</td>
	  <td id="T_e8a8b_row13_col15" class="data row13 col15" >-4.05</td>
	  <td id="T_e8a8b_row13_col16" class="data row13 col16" >-3.17</td>
	  <td id="T_e8a8b_row13_col17" class="data row13 col17" >-2.31</td>
	  <td id="T_e8a8b_row13_col18" class="data row13 col18" >-1.48</td>
	  <td id="T_e8a8b_row13_col19" class="data row13 col19" >-0.71</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row14" class="row_heading level0 row14" >14</th>
	  <td id="T_e8a8b_row14_col0" class="data row14 col0" ></td>
	  <td id="T_e8a8b_row14_col1" class="data row14 col1" ></td>
	  <td id="T_e8a8b_row14_col2" class="data row14 col2" ></td>
	  <td id="T_e8a8b_row14_col3" class="data row14 col3" ></td>
	  <td id="T_e8a8b_row14_col4" class="data row14 col4" ></td>
	  <td id="T_e8a8b_row14_col5" class="data row14 col5" ></td>
	  <td id="T_e8a8b_row14_col6" class="data row14 col6" ></td>
	  <td id="T_e8a8b_row14_col7" class="data row14 col7" ></td>
	  <td id="T_e8a8b_row14_col8" class="data row14 col8" ></td>
	  <td id="T_e8a8b_row14_col9" class="data row14 col9" ></td>
	  <td id="T_e8a8b_row14_col10" class="data row14 col10" ></td>
	  <td id="T_e8a8b_row14_col11" class="data row14 col11" ></td>
	  <td id="T_e8a8b_row14_col12" class="data row14 col12" ></td>
	  <td id="T_e8a8b_row14_col13" class="data row14 col13" ></td>
	  <td id="T_e8a8b_row14_col14" class="data row14 col14" >-5.12</td>
	  <td id="T_e8a8b_row14_col15" class="data row14 col15" >-4.21</td>
	  <td id="T_e8a8b_row14_col16" class="data row14 col16" >-3.31</td>
	  <td id="T_e8a8b_row14_col17" class="data row14 col17" >-2.44</td>
	  <td id="T_e8a8b_row14_col18" class="data row14 col18" >-1.59</td>
	  <td id="T_e8a8b_row14_col19" class="data row14 col19" >-0.77</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row15" class="row_heading level0 row15" >15</th>
	  <td id="T_e8a8b_row15_col0" class="data row15 col0" ></td>
	  <td id="T_e8a8b_row15_col1" class="data row15 col1" ></td>
	  <td id="T_e8a8b_row15_col2" class="data row15 col2" ></td>
	  <td id="T_e8a8b_row15_col3" class="data row15 col3" ></td>
	  <td id="T_e8a8b_row15_col4" class="data row15 col4" ></td>
	  <td id="T_e8a8b_row15_col5" class="data row15 col5" ></td>
	  <td id="T_e8a8b_row15_col6" class="data row15 col6" ></td>
	  <td id="T_e8a8b_row15_col7" class="data row15 col7" ></td>
	  <td id="T_e8a8b_row15_col8" class="data row15 col8" ></td>
	  <td id="T_e8a8b_row15_col9" class="data row15 col9" ></td>
	  <td id="T_e8a8b_row15_col10" class="data row15 col10" ></td>
	  <td id="T_e8a8b_row15_col11" class="data row15 col11" ></td>
	  <td id="T_e8a8b_row15_col12" class="data row15 col12" ></td>
	  <td id="T_e8a8b_row15_col13" class="data row15 col13" ></td>
	  <td id="T_e8a8b_row15_col14" class="data row15 col14" ></td>
	  <td id="T_e8a8b_row15_col15" class="data row15 col15" >-4.31</td>
	  <td id="T_e8a8b_row15_col16" class="data row15 col16" >-3.41</td>
	  <td id="T_e8a8b_row15_col17" class="data row15 col17" >-2.53</td>
	  <td id="T_e8a8b_row15_col18" class="data row15 col18" >-1.66</td>
	  <td id="T_e8a8b_row15_col19" class="data row15 col19" >-0.81</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row16" class="row_heading level0 row16" >16</th>
	  <td id="T_e8a8b_row16_col0" class="data row16 col0" ></td>
	  <td id="T_e8a8b_row16_col1" class="data row16 col1" ></td>
	  <td id="T_e8a8b_row16_col2" class="data row16 col2" ></td>
	  <td id="T_e8a8b_row16_col3" class="data row16 col3" ></td>
	  <td id="T_e8a8b_row16_col4" class="data row16 col4" ></td>
	  <td id="T_e8a8b_row16_col5" class="data row16 col5" ></td>
	  <td id="T_e8a8b_row16_col6" class="data row16 col6" ></td>
	  <td id="T_e8a8b_row16_col7" class="data row16 col7" ></td>
	  <td id="T_e8a8b_row16_col8" class="data row16 col8" ></td>
	  <td id="T_e8a8b_row16_col9" class="data row16 col9" ></td>
	  <td id="T_e8a8b_row16_col10" class="data row16 col10" ></td>
	  <td id="T_e8a8b_row16_col11" class="data row16 col11" ></td>
	  <td id="T_e8a8b_row16_col12" class="data row16 col12" ></td>
	  <td id="T_e8a8b_row16_col13" class="data row16 col13" ></td>
	  <td id="T_e8a8b_row16_col14" class="data row16 col14" ></td>
	  <td id="T_e8a8b_row16_col15" class="data row16 col15" ></td>
	  <td id="T_e8a8b_row16_col16" class="data row16 col16" >-3.48</td>
	  <td id="T_e8a8b_row16_col17" class="data row16 col17" >-2.59</td>
	  <td id="T_e8a8b_row16_col18" class="data row16 col18" >-1.71</td>
	  <td id="T_e8a8b_row16_col19" class="data row16 col19" >-0.84</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row17" class="row_heading level0 row17" >17</th>
	  <td id="T_e8a8b_row17_col0" class="data row17 col0" ></td>
	  <td id="T_e8a8b_row17_col1" class="data row17 col1" ></td>
	  <td id="T_e8a8b_row17_col2" class="data row17 col2" ></td>
	  <td id="T_e8a8b_row17_col3" class="data row17 col3" ></td>
	  <td id="T_e8a8b_row17_col4" class="data row17 col4" ></td>
	  <td id="T_e8a8b_row17_col5" class="data row17 col5" ></td>
	  <td id="T_e8a8b_row17_col6" class="data row17 col6" ></td>
	  <td id="T_e8a8b_row17_col7" class="data row17 col7" ></td>
	  <td id="T_e8a8b_row17_col8" class="data row17 col8" ></td>
	  <td id="T_e8a8b_row17_col9" class="data row17 col9" ></td>
	  <td id="T_e8a8b_row17_col10" class="data row17 col10" ></td>
	  <td id="T_e8a8b_row17_col11" class="data row17 col11" ></td>
	  <td id="T_e8a8b_row17_col12" class="data row17 col12" ></td>
	  <td id="T_e8a8b_row17_col13" class="data row17 col13" ></td>
	  <td id="T_e8a8b_row17_col14" class="data row17 col14" ></td>
	  <td id="T_e8a8b_row17_col15" class="data row17 col15" ></td>
	  <td id="T_e8a8b_row17_col16" class="data row17 col16" ></td>
	  <td id="T_e8a8b_row17_col17" class="data row17 col17" >-2.63</td>
	  <td id="T_e8a8b_row17_col18" class="data row17 col18" >-1.74</td>
	  <td id="T_e8a8b_row17_col19" class="data row17 col19" >-0.86</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row18" class="row_heading level0 row18" >18</th>
	  <td id="T_e8a8b_row18_col0" class="data row18 col0" ></td>
	  <td id="T_e8a8b_row18_col1" class="data row18 col1" ></td>
	  <td id="T_e8a8b_row18_col2" class="data row18 col2" ></td>
	  <td id="T_e8a8b_row18_col3" class="data row18 col3" ></td>
	  <td id="T_e8a8b_row18_col4" class="data row18 col4" ></td>
	  <td id="T_e8a8b_row18_col5" class="data row18 col5" ></td>
	  <td id="T_e8a8b_row18_col6" class="data row18 col6" ></td>
	  <td id="T_e8a8b_row18_col7" class="data row18 col7" ></td>
	  <td id="T_e8a8b_row18_col8" class="data row18 col8" ></td>
	  <td id="T_e8a8b_row18_col9" class="data row18 col9" ></td>
	  <td id="T_e8a8b_row18_col10" class="data row18 col10" ></td>
	  <td id="T_e8a8b_row18_col11" class="data row18 col11" ></td>
	  <td id="T_e8a8b_row18_col12" class="data row18 col12" ></td>
	  <td id="T_e8a8b_row18_col13" class="data row18 col13" ></td>
	  <td id="T_e8a8b_row18_col14" class="data row18 col14" ></td>
	  <td id="T_e8a8b_row18_col15" class="data row18 col15" ></td>
	  <td id="T_e8a8b_row18_col16" class="data row18 col16" ></td>
	  <td id="T_e8a8b_row18_col17" class="data row18 col17" ></td>
	  <td id="T_e8a8b_row18_col18" class="data row18 col18" >-1.77</td>
	  <td id="T_e8a8b_row18_col19" class="data row18 col19" >-0.88</td>
	</tr>
	<tr>
	  <th id="T_e8a8b_level0_row19" class="row_heading level0 row19" >19</th>
	  <td id="T_e8a8b_row19_col0" class="data row19 col0" ></td>
	  <td id="T_e8a8b_row19_col1" class="data row19 col1" ></td>
	  <td id="T_e8a8b_row19_col2" class="data row19 col2" ></td>
	  <td id="T_e8a8b_row19_col3" class="data row19 col3" ></td>
	  <td id="T_e8a8b_row19_col4" class="data row19 col4" ></td>
	  <td id="T_e8a8b_row19_col5" class="data row19 col5" ></td>
	  <td id="T_e8a8b_row19_col6" class="data row19 col6" ></td>
	  <td id="T_e8a8b_row19_col7" class="data row19 col7" ></td>
	  <td id="T_e8a8b_row19_col8" class="data row19 col8" ></td>
	  <td id="T_e8a8b_row19_col9" class="data row19 col9" ></td>
	  <td id="T_e8a8b_row19_col10" class="data row19 col10" ></td>
	  <td id="T_e8a8b_row19_col11" class="data row19 col11" ></td>
	  <td id="T_e8a8b_row19_col12" class="data row19 col12" ></td>
	  <td id="T_e8a8b_row19_col13" class="data row19 col13" ></td>
	  <td id="T_e8a8b_row19_col14" class="data row19 col14" ></td>
	  <td id="T_e8a8b_row19_col15" class="data row19 col15" ></td>
	  <td id="T_e8a8b_row19_col16" class="data row19 col16" ></td>
	  <td id="T_e8a8b_row19_col17" class="data row19 col17" ></td>
	  <td id="T_e8a8b_row19_col18" class="data row19 col18" ></td>
	  <td id="T_e8a8b_row19_col19" class="data row19 col19" >-0.89</td>
	</tr>
  </tbody>
</table>

### Alt Calculation

If Time grid aligns with swap frequency, calculate directly with binomial tree and verify.

```python
if freqswap==FREQTREE:
    swaprate_val = strike
    payoff = lambda r: payoff_swap(r,swaprate_val,freqswap,ispayer=isPayer)
    cftree, refratetree = construct_swap_cftree(ratetree,swaprate_val,freqswap=freqswap,T=Tswap,freq=FREQTREE,ispayer=isPayer)
    swaptree_alt = bintree_pricing(payoff=payoff, ratetree=ratetree, undertree= refratetree, cftree=cftree, cfdelay=True)

    display(f'Difference in swap price across two methods: {swaptree.iloc[0,0]-swaptree_alt.iloc[0,0]:.4f}')
```

    'Difference in swap price across two methods: 0.0000'

## **<span style="color:red">2.4</span>**

```python
payoff_swaption = lambda s: np.maximum(s,0)
swaptiontree = bintree_pricing(payoff=payoff_swaption,ratetree=ratetree.loc[:,:Topt].dropna(how='all'),undertree=swaptree.loc[:,:Topt].dropna(how='all'))
format_bintree(swaptiontree)
```

<style type="text/css">
</style>
<table id="T_5af31">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_5af31_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_5af31_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_5af31_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_5af31_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_5af31_level0_col4" class="col_heading level0 col4" >1.00</th>
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
	  <th id="T_5af31_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_5af31_row0_col0" class="data row0 col0" >1.73</td>
	  <td id="T_5af31_row0_col1" class="data row0 col1" >2.94</td>
	  <td id="T_5af31_row0_col2" class="data row0 col2" >4.83</td>
	  <td id="T_5af31_row0_col3" class="data row0 col3" >7.50</td>
	  <td id="T_5af31_row0_col4" class="data row0 col4" >10.58</td>
	</tr>
	<tr>
	  <th id="T_5af31_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_5af31_row1_col0" class="data row1 col0" ></td>
	  <td id="T_5af31_row1_col1" class="data row1 col1" >0.56</td>
	  <td id="T_5af31_row1_col2" class="data row1 col2" >1.13</td>
	  <td id="T_5af31_row1_col3" class="data row1 col3" >2.30</td>
	  <td id="T_5af31_row1_col4" class="data row1 col4" >4.65</td>
	</tr>
	<tr>
	  <th id="T_5af31_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_5af31_row2_col0" class="data row2 col0" ></td>
	  <td id="T_5af31_row2_col1" class="data row2 col1" ></td>
	  <td id="T_5af31_row2_col2" class="data row2 col2" >0.00</td>
	  <td id="T_5af31_row2_col3" class="data row2 col3" >0.00</td>
	  <td id="T_5af31_row2_col4" class="data row2 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_5af31_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_5af31_row3_col0" class="data row3 col0" ></td>
	  <td id="T_5af31_row3_col1" class="data row3 col1" ></td>
	  <td id="T_5af31_row3_col2" class="data row3 col2" ></td>
	  <td id="T_5af31_row3_col3" class="data row3 col3" >0.00</td>
	  <td id="T_5af31_row3_col4" class="data row3 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_5af31_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_5af31_row4_col0" class="data row4 col0" ></td>
	  <td id="T_5af31_row4_col1" class="data row4 col1" ></td>
	  <td id="T_5af31_row4_col2" class="data row4 col2" ></td>
	  <td id="T_5af31_row4_col3" class="data row4 col3" ></td>
	  <td id="T_5af31_row4_col4" class="data row4 col4" >0.00</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">2.5</span>**

```python
comp = blacks_quotes.iloc[:,[idstrike]].copy()
comp.columns = ['black']
comp.loc['price','tree'] = swaptiontree.iloc[0,0]
comp.loc['implied vol', 'tree'] = capvol
comp.loc['strike','tree'] = fwdswap
comp = comp.T

comp.style.format('{:.4f}')
```

<style type="text/css">
</style>
<table id="T_9c1fb">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_9c1fb_level0_col0" class="col_heading level0 col0" >strike</th>
	  <th id="T_9c1fb_level0_col1" class="col_heading level0 col1" >implied vol</th>
	  <th id="T_9c1fb_level0_col2" class="col_heading level0 col2" >price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_9c1fb_level0_row0" class="row_heading level0 row0" >black</th>
	  <td id="T_9c1fb_row0_col0" class="data row0 col0" >0.0367</td>
	  <td id="T_9c1fb_row0_col1" class="data row0 col1" >0.3283</td>
	  <td id="T_9c1fb_row0_col2" class="data row0 col2" >1.6874</td>
	</tr>
	<tr>
	  <th id="T_9c1fb_level0_row1" class="row_heading level0 row1" >tree</th>
	  <td id="T_9c1fb_row1_col0" class="data row1 col0" >0.0367</td>
	  <td id="T_9c1fb_row1_col1" class="data row1 col1" >0.2543</td>
	  <td id="T_9c1fb_row1_col2" class="data row1 col2" >1.7284</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">2.6</span>**

```python
swaptiontree_american = bintree_pricing(payoff=payoff_swaption,ratetree=ratetree.loc[:,:Topt].dropna(how='all'),undertree=swaptree.loc[:,:Topt].dropna(how='all'),style='american')
format_bintree(swaptiontree_american)
```

<style type="text/css">
</style>
<table id="T_65b38">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_65b38_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_65b38_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_65b38_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_65b38_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_65b38_level0_col4" class="col_heading level0 col4" >1.00</th>
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
	  <th id="T_65b38_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_65b38_row0_col0" class="data row0 col0" >2.00</td>
	  <td id="T_65b38_row0_col1" class="data row0 col1" >3.46</td>
	  <td id="T_65b38_row0_col2" class="data row0 col2" >5.70</td>
	  <td id="T_65b38_row0_col3" class="data row0 col3" >8.07</td>
	  <td id="T_65b38_row0_col4" class="data row0 col4" >10.58</td>
	</tr>
	<tr>
	  <th id="T_65b38_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_65b38_row1_col0" class="data row1 col0" ></td>
	  <td id="T_65b38_row1_col1" class="data row1 col1" >0.60</td>
	  <td id="T_65b38_row1_col2" class="data row1 col2" >1.21</td>
	  <td id="T_65b38_row1_col3" class="data row1 col3" >2.45</td>
	  <td id="T_65b38_row1_col4" class="data row1 col4" >4.65</td>
	</tr>
	<tr>
	  <th id="T_65b38_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_65b38_row2_col0" class="data row2 col0" ></td>
	  <td id="T_65b38_row2_col1" class="data row2 col1" ></td>
	  <td id="T_65b38_row2_col2" class="data row2 col2" >0.00</td>
	  <td id="T_65b38_row2_col3" class="data row2 col3" >0.00</td>
	  <td id="T_65b38_row2_col4" class="data row2 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_65b38_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_65b38_row3_col0" class="data row3 col0" ></td>
	  <td id="T_65b38_row3_col1" class="data row3 col1" ></td>
	  <td id="T_65b38_row3_col2" class="data row3 col2" ></td>
	  <td id="T_65b38_row3_col3" class="data row3 col3" >0.00</td>
	  <td id="T_65b38_row3_col4" class="data row3 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_65b38_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_65b38_row4_col0" class="data row4 col0" ></td>
	  <td id="T_65b38_row4_col1" class="data row4 col1" ></td>
	  <td id="T_65b38_row4_col2" class="data row4 col2" ></td>
	  <td id="T_65b38_row4_col3" class="data row4 col3" ></td>
	  <td id="T_65b38_row4_col4" class="data row4 col4" >0.00</td>
	</tr>
  </tbody>
</table>

***

# 3. Midcurve Swaptions

## 3.1 

Use the BDT tree from section 2 to price a **european** midcurve swaption 1y$\rightarrow$2y$\rightarrow$2y.

## 3.2

Price the **american** midcurve swaption 1y$\rightarrow$2y$\rightarrow$2y.

***

# **<span style="color:red">Solution 3</span>**

## **<span style="color:red">3.1</span>**

```python
Topt=1
Tmid=2
Ttenor=2
```

```python
if freqswap==FREQTREE:
    swaprate_val = strike
    payoff = lambda r: payoff_swap(r,swaprate_val,freqswap,ispayer=isPayer)
    cftree, refratetree = construct_swap_cftree(ratetree,swaprate_val,freqswap=freqswap,T=Tswap,freq=FREQTREE,ispayer=isPayer)

    # midcurve swap
    cftree_mid = cftree.copy()
    cftree_mid.loc[:,:(Topt+Tmid-1/freqswap)] *= 0

    swaptree_mid = bintree_pricing(payoff=payoff, ratetree=ratetree, undertree= refratetree, cftree=cftree_mid, cfdelay=True)
```

```python
payoff_swaption = lambda s: np.maximum(s,0)
swaptiontree_mid = bintree_pricing(payoff=payoff_swaption,ratetree=ratetree.loc[:,:Topt].dropna(how='all'),undertree=swaptree_mid.loc[:,:Topt].dropna(how='all'))
format_bintree(swaptiontree_mid)
```

<style type="text/css">
</style>
<table id="T_2cceb">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_2cceb_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_2cceb_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_2cceb_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_2cceb_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_2cceb_level0_col4" class="col_heading level0 col4" >1.00</th>
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
	  <th id="T_2cceb_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_2cceb_row0_col0" class="data row0 col0" >0.86</td>
	  <td id="T_2cceb_row0_col1" class="data row0 col1" >1.48</td>
	  <td id="T_2cceb_row0_col2" class="data row0 col2" >2.46</td>
	  <td id="T_2cceb_row0_col3" class="data row0 col3" >3.88</td>
	  <td id="T_2cceb_row0_col4" class="data row0 col4" >5.63</td>
	</tr>
	<tr>
	  <th id="T_2cceb_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_2cceb_row1_col0" class="data row1 col0" ></td>
	  <td id="T_2cceb_row1_col1" class="data row1 col1" >0.27</td>
	  <td id="T_2cceb_row1_col2" class="data row1 col2" >0.55</td>
	  <td id="T_2cceb_row1_col3" class="data row1 col3" >1.11</td>
	  <td id="T_2cceb_row1_col4" class="data row1 col4" >2.24</td>
	</tr>
	<tr>
	  <th id="T_2cceb_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_2cceb_row2_col0" class="data row2 col0" ></td>
	  <td id="T_2cceb_row2_col1" class="data row2 col1" ></td>
	  <td id="T_2cceb_row2_col2" class="data row2 col2" >0.00</td>
	  <td id="T_2cceb_row2_col3" class="data row2 col3" >0.00</td>
	  <td id="T_2cceb_row2_col4" class="data row2 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_2cceb_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_2cceb_row3_col0" class="data row3 col0" ></td>
	  <td id="T_2cceb_row3_col1" class="data row3 col1" ></td>
	  <td id="T_2cceb_row3_col2" class="data row3 col2" ></td>
	  <td id="T_2cceb_row3_col3" class="data row3 col3" >0.00</td>
	  <td id="T_2cceb_row3_col4" class="data row3 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_2cceb_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_2cceb_row4_col0" class="data row4 col0" ></td>
	  <td id="T_2cceb_row4_col1" class="data row4 col1" ></td>
	  <td id="T_2cceb_row4_col2" class="data row4 col2" ></td>
	  <td id="T_2cceb_row4_col3" class="data row4 col3" ></td>
	  <td id="T_2cceb_row4_col4" class="data row4 col4" >0.00</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">3.2</span>**

```python
swaptiontree_mid_american = bintree_pricing(style='american',payoff=payoff_swaption,ratetree=ratetree.loc[:,:Topt].dropna(how='all'),undertree=swaptree_mid.loc[:,:Topt].dropna(how='all'))
format_bintree(swaptiontree_mid_american)
```

<style type="text/css">
</style>
<table id="T_011b3">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_011b3_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_011b3_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_011b3_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_011b3_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_011b3_level0_col4" class="col_heading level0 col4" >1.00</th>
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
	  <th id="T_011b3_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_011b3_row0_col0" class="data row0 col0" >0.86</td>
	  <td id="T_011b3_row0_col1" class="data row0 col1" >1.48</td>
	  <td id="T_011b3_row0_col2" class="data row0 col2" >2.46</td>
	  <td id="T_011b3_row0_col3" class="data row0 col3" >3.88</td>
	  <td id="T_011b3_row0_col4" class="data row0 col4" >5.63</td>
	</tr>
	<tr>
	  <th id="T_011b3_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_011b3_row1_col0" class="data row1 col0" ></td>
	  <td id="T_011b3_row1_col1" class="data row1 col1" >0.27</td>
	  <td id="T_011b3_row1_col2" class="data row1 col2" >0.55</td>
	  <td id="T_011b3_row1_col3" class="data row1 col3" >1.11</td>
	  <td id="T_011b3_row1_col4" class="data row1 col4" >2.24</td>
	</tr>
	<tr>
	  <th id="T_011b3_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_011b3_row2_col0" class="data row2 col0" ></td>
	  <td id="T_011b3_row2_col1" class="data row2 col1" ></td>
	  <td id="T_011b3_row2_col2" class="data row2 col2" >0.00</td>
	  <td id="T_011b3_row2_col3" class="data row2 col3" >0.00</td>
	  <td id="T_011b3_row2_col4" class="data row2 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_011b3_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_011b3_row3_col0" class="data row3 col0" ></td>
	  <td id="T_011b3_row3_col1" class="data row3 col1" ></td>
	  <td id="T_011b3_row3_col2" class="data row3 col2" ></td>
	  <td id="T_011b3_row3_col3" class="data row3 col3" >0.00</td>
	  <td id="T_011b3_row3_col4" class="data row3 col4" >0.00</td>
	</tr>
	<tr>
	  <th id="T_011b3_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_011b3_row4_col0" class="data row4 col0" ></td>
	  <td id="T_011b3_row4_col1" class="data row4 col1" ></td>
	  <td id="T_011b3_row4_col2" class="data row4 col2" ></td>
	  <td id="T_011b3_row4_col3" class="data row4 col3" ></td>
	  <td id="T_011b3_row4_col4" class="data row4 col4" >0.00</td>
	</tr>
  </tbody>
</table>

***

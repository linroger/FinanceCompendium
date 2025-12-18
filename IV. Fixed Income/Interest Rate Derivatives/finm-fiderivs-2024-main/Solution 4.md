---
tags:
key_concepts:
parent_directory: IV. Fixed Income/Interest Rate Derivatives/finm-fiderivs-2024-main
cssclasses: academia
title: Solution 4 - SABR Volatility Modeling
aliases:
  - SABR Volatility Modeling
---

# Solution 4

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

***

# Data

## Note

This homework continues with the data from `Homework 3`.

## Swaption Vol Data

The file `data/swaption_vol_data_2024-02-20.xlsx` has market data on the implied volatility skews for swaptions. Note that it has several columns:

* `expry`: expiration of the swaption
* `tenor`: tenor of the underlying swap
* `model`: the model by which the volatility is quoted. (All are Black.)
* `-200`, `-100`, etc.: The strike listed as difference from ATM strike (bps). Note that ATM is considered to be the **forward swap rate** which you can calculate.

Your data: ywill use a single row of this data for the `1x4` swaption.

* date: `2024-02-20`
* expiration: 1yr
* tenor: 4yrs

As in `Homework 3`, you will need the forward swap value and the actual strikes being referred to in the provided data (which quotes relative strikes.)

# 1. SABR Volatility Modeling

Use the quoted volatility skew to fit a SABR model.

* Throughout, parameterize, `beta=.75`.

## 1.1

Estimate $(\alpha,\rho,\nu)$ via the SABR formula. Feel free to use the `sabr` function in `cmds/volskew.py`.

Report the values of these parameters.

## 1.2

Create a grid of strikes of `[.0025, .09]`, with grid spacing of `10bps`, (.0010).

Use the SABR model parameterized above to calculate the volatility for each of these strikes.

* Plot the SABR curve, and also include the market quotes in the plot.
* Conceptually, does the SABR curve fit these points well? Perfectly?

## 1.3

Suppose we want to price the `1y4y` swaption but with a far out-of-the-money strike of `5%`. 

* Use the SABR vol at this strike to price the swaption.

(Note that this strike is far outside the range for which we have market quotes, and even if we do have quotes, they likely are not liquid on a given day.)

## 1.4

Use the ATM implied volatility to fit $\alpha$, (sometimes denoted $\sigma_0$.) That is, for any choice of $(\rho,\nu)$, solve a quadratic equation to get $\alpha$ as a function of those two parameters, along with $\beta$, which is at its selected (not estimated) value.

Recall that we have a simple relationship between ATM vol and $\alpha$.

$$\sigma_\text{ATM} = \alpha\frac{B}{F^{1-\beta}}$$

where $B$ is defined in the discussion note. It is a quadratic expression of $\alpha$ along with $(\beta,\rho,\nu)$.

This decouples the optimization. We solve for $(\rho,\nu)$ and $\alpha$ as a function of the other two parameters.

Consider using the function `sabrATM` in `cmds/volskew.py`.

***

# **<span style="color:red">Solution 1</span>**

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

#import datetime
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

```python
display(f'The forward swap rate is {fwdswap:.2%}')
```

    'The forward swap rate is 3.67%'

Import and Process Quoted Vols

```python
voldata = pd.read_excel('../data/swaption_vol_data.xlsx')
volquote = voldata.query(f'model=="{QUOTE_STYLE}"').query(f'reference=="{SWAP_TYPE}"').query(f'date=="{DATE}"')#.query(f'expiration=="{expry}"').query(f'tenor=="{tenor}"')
idx = (volquote['expiration']==expry) & (volquote['tenor']==tenor)
volquote = volquote.loc[idx]
volquote.index = ['implied vol']

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

Use Black's Formula

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
<table id="T_757d2">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_757d2_level0_col0" class="col_heading level0 col0" >-200</th>
	  <th id="T_757d2_level0_col1" class="col_heading level0 col1" >-100</th>
	  <th id="T_757d2_level0_col2" class="col_heading level0 col2" >-50</th>
	  <th id="T_757d2_level0_col3" class="col_heading level0 col3" >-25</th>
	  <th id="T_757d2_level0_col4" class="col_heading level0 col4" >0</th>
	  <th id="T_757d2_level0_col5" class="col_heading level0 col5" >25</th>
	  <th id="T_757d2_level0_col6" class="col_heading level0 col6" >50</th>
	  <th id="T_757d2_level0_col7" class="col_heading level0 col7" >100</th>
	  <th id="T_757d2_level0_col8" class="col_heading level0 col8" >200</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_757d2_level0_row0" class="row_heading level0 row0" >strike</th>
	  <td id="T_757d2_row0_col0" class="data row0 col0" >0.0167</td>
	  <td id="T_757d2_row0_col1" class="data row0 col1" >0.0267</td>
	  <td id="T_757d2_row0_col2" class="data row0 col2" >0.0317</td>
	  <td id="T_757d2_row0_col3" class="data row0 col3" >0.0342</td>
	  <td id="T_757d2_row0_col4" class="data row0 col4" >0.0367</td>
	  <td id="T_757d2_row0_col5" class="data row0 col5" >0.0392</td>
	  <td id="T_757d2_row0_col6" class="data row0 col6" >0.0417</td>
	  <td id="T_757d2_row0_col7" class="data row0 col7" >0.0467</td>
	  <td id="T_757d2_row0_col8" class="data row0 col8" >0.0567</td>
	</tr>
	<tr>
	  <th id="T_757d2_level0_row1" class="row_heading level0 row1" >implied vol</th>
	  <td id="T_757d2_row1_col0" class="data row1 col0" >0.5454</td>
	  <td id="T_757d2_row1_col1" class="data row1 col1" >0.4037</td>
	  <td id="T_757d2_row1_col2" class="data row1 col2" >0.3594</td>
	  <td id="T_757d2_row1_col3" class="data row1 col3" >0.3423</td>
	  <td id="T_757d2_row1_col4" class="data row1 col4" >0.3283</td>
	  <td id="T_757d2_row1_col5" class="data row1 col5" >0.3171</td>
	  <td id="T_757d2_row1_col6" class="data row1 col6" >0.3086</td>
	  <td id="T_757d2_row1_col7" class="data row1 col7" >0.2983</td>
	  <td id="T_757d2_row1_col8" class="data row1 col8" >0.2954</td>
	</tr>
	<tr>
	  <th id="T_757d2_level0_row2" class="row_heading level0 row2" >price</th>
	  <td id="T_757d2_row2_col0" class="data row2 col0" >7.2031</td>
	  <td id="T_757d2_row2_col1" class="data row2 col1" >4.0653</td>
	  <td id="T_757d2_row2_col2" class="data row2 col2" >2.7398</td>
	  <td id="T_757d2_row2_col3" class="data row2 col3" >2.1749</td>
	  <td id="T_757d2_row2_col4" class="data row2 col4" >1.6874</td>
	  <td id="T_757d2_row2_col5" class="data row2 col5" >1.2812</td>
	  <td id="T_757d2_row2_col6" class="data row2 col6" >0.9556</td>
	  <td id="T_757d2_row2_col7" class="data row2 col7" >0.5133</td>
	  <td id="T_757d2_row2_col8" class="data row2 col8" >0.1473</td>
	</tr>
  </tbody>
</table>

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
doSLIM = False
BETA = 0.75
F = fwdswap-1e-8
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

## **<span style="color:red">1.1</span>**

```python
param = pd.DataFrame([BETA,alphastar,nustar,rhostar,error],index=['beta ($\\beta$)','alpha ($\\alpha$)','nu ($\\nu$)','rho ($\\rho$)','fit error'],columns=['SABR Parameters']).style.format('{:.4f}')
param
```

<style type="text/css">
</style>
<table id="T_94dc2">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_94dc2_level0_col0" class="col_heading level0 col0" >SABR Parameters</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_94dc2_level0_row0" class="row_heading level0 row0" >beta ($\beta$)</th>
	  <td id="T_94dc2_row0_col0" class="data row0 col0" >0.7500</td>
	</tr>
	<tr>
	  <th id="T_94dc2_level0_row1" class="row_heading level0 row1" >alpha ($\alpha$)</th>
	  <td id="T_94dc2_row1_col0" class="data row1 col0" >0.1411</td>
	</tr>
	<tr>
	  <th id="T_94dc2_level0_row2" class="row_heading level0 row2" >nu ($\nu$)</th>
	  <td id="T_94dc2_row2_col0" class="data row2 col0" >0.7769</td>
	</tr>
	<tr>
	  <th id="T_94dc2_level0_row3" class="row_heading level0 row3" >rho ($\rho$)</th>
	  <td id="T_94dc2_row3_col0" class="data row3 col0" >-0.4261</td>
	</tr>
	<tr>
	  <th id="T_94dc2_level0_row4" class="row_heading level0 row4" >fit error</th>
	  <td id="T_94dc2_row4_col0" class="data row4 col0" >0.0001</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">1.2</span>**

```python
strikegrid = np.arange(.0025,.09,.0005)
if doSLIM:
    ivolgrid = sabr_slim(BETA,nustar,rhostar,F,strikegrid,Topt,volATM)
else:
    ivolgrid = sabr(BETA,nustar,rhostar,alphastar,F,strikegrid,Topt)
    
sabrcurve = pd.DataFrame(ivolgrid,index=strikegrid,columns=['SABR'])

volquotes = vols.copy()
volquotes.loc['strike'] = strikes
volquotes = volquotes.T.set_index('strike').rename(columns={'implied vol':'market quotes'})

fig, ax = plt.subplots()
sabrcurve.plot(ax=ax)
volquotes.plot(linestyle='',marker='o',markersize=8,ax=ax)
plt.legend();
```

![png](output_28_0.png)

## **<span style="color:red">1.3</span>**

```python
NEWSTRIKE = .05

if doSLIM:
    newvol = sabr_slim(BETA,nustar,rhostar,F,NEWSTRIKE,Topt,volATM)
else:
    newvol = sabr(BETA,nustar,rhostar,alphastar,F,NEWSTRIKE,Topt)

newprice = N * blacks_formula(Topt,newvol,NEWSTRIKE,fwdswap,discount,isCall=isPayer)
display(f'Price of the OTM swaption at strike {NEWSTRIKE:.2%} is ${newprice:.4f}.')
```

    'Price of the OTM swaption at strike 5.00% is \$0.3336.'

## **<span style="color:red">1.4</span>**

Set the parameter `doSLIM` to `True`, and rerun the code.

***

# 2. SABR and Risk Management

Consider how an **increase** of `50bps` in the underlying rate impacts the price of the `1y4y` ATM swaption.

Here, we are assuming that

* the rate change will impact the forward swap rate directly, one-for-one with other rates.
* the shift happens on `Feb 21, 2024`.

Of course, in reality, a rate change

* may price in early to some degree if it is expected
* may not impact the forward swap rate one-for-one. We would need to model how the discount curve changes and what that change (level, slope, curvature?) would do to the forward swap rate.

## 2.1

Use Black's equation to re-price the `1y4y` swaption with

* the same ATM volatility
* an underlying (forward swap) rate increased `50bps`.
* the same time-to-maturities. (We should decrease these all by 1/365, but we focus here on the delta effects rather than the theta. And it would be a small impact anyone.)

Report 

* the new price
* the change in price divided by `50bps`, (a numerical delta.)

## 2.2

Now, we consider how the volatility may change with the underlying shift of `50bps`.

Using the same SABR parameters from `1.1`, and the strike grid from `1.2`, plot the new SABR curve accounting for the underlying rate shifting up `50bps`.

## 2.3

Calculate the new volatility specifically for the pre-shift ATM strike.

Use this in Black's formula similar to `2.1`, where the only change is the volatility now reflects the shift in the underlying (not the strike).

Report

* the new price
* the change in price divided by `50bps`

## 2.4

How much different is the (dynamic) delta which accounts for the shift in volatility from the (static) delta in `2.1`?

***

# **<span style="color:red">Solution 2</span>**

## **<span style="color:red">2.1</span>**

```python
warnings.filterwarnings('ignore')

SHIFT = 50/100/100

sabrcurve.rename(columns={'SABR':f'SABR: underlying at {DATE}'},inplace=True)
if doSLIM:
    sabrcurve[f'SABR: underlying + {SHIFT*100*100:.0f}bps'] = sabr_slim(BETA,nustar,rhostar,F+SHIFT,strikegrid,Topt,volATM)
else:
    sabrcurve[f'SABR: underlying + {SHIFT*100*100:.0f}bps'] = sabr(BETA,nustar,rhostar,alphastar,F+SHIFT,strikegrid,Topt)

fig, ax = plt.subplots()
sabrcurve.plot(ax=ax)
plt.xlim([F-.01,F+.01])
plt.ylim([volATM-.05,volATM+.05])
plt.axvline(F,color='k',linestyle='--',label=f'underlying at {DATE}')
plt.axvline(F+SHIFT,color='k',linestyle=':',label=f'underlying + {SHIFT*100*100:.0f}bps')
plt.ylabel('swaption implied volatility');
plt.xlabel('strike')
plt.legend();
```

![png](output_42_0.png)

## **<span style="color:red">2.2, 2.3, 2.4</span>**

```python
idloc = (sabrcurve.index.to_series()-fwdswap).abs().idxmin()

newvols = sabrcurve.loc[idloc]
strikeATM = strikes[idstrikeATM]

Frange = F + [0,SHIFT]
```

```python
period_fwd = curves.index.get_loc(Topt)
period_swap = curves.index.get_loc(Tswap)+1
step = round(freqcurve/freqswap)

discount = curves['discounts'].iloc[period_fwd+step : period_swap : step].sum()/freqswap

blackprices = pd.Series(N * blacks_formula(Topt, newvols[0],NEWSTRIKE,Frange,discount,isCall=isPayer), index=['no change in rates','shift in rates'], name='no change in vol').to_frame().T
blackprices.loc['dynamic vol','shift in rates'] = N * blacks_formula(Topt, newvols[1],NEWSTRIKE,Frange[1],discount,isCall=isPayer)
blackprices.style.format('{:.2f}')
```

<style type="text/css">
</style>
<table id="T_9de2e">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_9de2e_level0_col0" class="col_heading level0 col0" >no change in rates</th>
	  <th id="T_9de2e_level0_col1" class="col_heading level0 col1" >shift in rates</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_9de2e_level0_row0" class="row_heading level0 row0" >no change in vol</th>
	  <td id="T_9de2e_row0_col0" class="data row0 col0" >0.46</td>
	  <td id="T_9de2e_row0_col1" class="data row0 col1" >0.96</td>
	</tr>
	<tr>
	  <th id="T_9de2e_level0_row1" class="row_heading level0 row1" >dynamic vol</th>
	  <td id="T_9de2e_row1_col0" class="data row1 col0" >nan</td>
	  <td id="T_9de2e_row1_col1" class="data row1 col1" >1.07</td>
	</tr>
  </tbody>
</table>

```python
dprices = (blackprices[['shift in rates']] - blackprices.loc['no change in vol','no change in rates']).rename(columns={'shift in rates':'price change'})
delta = dprices / SHIFT
delta.style.format('{:.2f}')
```

<style type="text/css">
</style>
<table id="T_58f17">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_58f17_level0_col0" class="col_heading level0 col0" >price change</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_58f17_level0_row0" class="row_heading level0 row0" >no change in vol</th>
	  <td id="T_58f17_row0_col0" class="data row0 col0" >99.99</td>
	</tr>
	<tr>
	  <th id="T_58f17_level0_row1" class="row_heading level0 row1" >dynamic vol</th>
	  <td id="T_58f17_row1_col0" class="data row1 col0" >121.74</td>
	</tr>
  </tbody>
</table>

```python
delta_relative_change = delta.pct_change().loc['dynamic vol','price change']
display(f'Relative change to delta: {delta_relative_change : .2%}.')
```

    'Relative change to delta:  21.75%.'


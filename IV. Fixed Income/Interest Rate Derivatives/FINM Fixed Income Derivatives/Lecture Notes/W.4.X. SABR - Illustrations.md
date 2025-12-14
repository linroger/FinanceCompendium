---
aliases: [SABR Illustrations]
tags:
key_concepts:
parent_directory: FINM Fixed Income Derivatives/Lecture Notes
cssclasses: academia
title: "W.4.X. SABR Illustrations"
---

# Week 4 - Illustrations of SABR

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

```python
import pandas as pd
import numpy as np
import datetime
import warnings

import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)

import sys
sys.path.insert(0,'../cmds')
from options import *
from volskew import *
```

```python
#from numpy import poly1d
from scipy.optimize import fsolve
from scipy.optimize import minimize

from pandas.tseries.offsets import Day, BDay
from datetime import date
```

# Loading the Volatility Data

```python
LOADFILE = '../data/vol_surfaces.xlsx'
idSHEET = -1
ISCALL = False
BETA = .5
TARG_T = .6
doSLIM = False

ticksRates = ['ED']

info = pd.read_excel(LOADFILE,sheet_name='descriptions').set_index('specs')

labels = info.columns
sheet = labels[idSHEET]

tick = info.loc['futures ticker',sheet]

ts, ivol_mkt = load_vol_surface(LOADFILE,sheet,ISCALL)

if tick in ticksRates:
    ts['Future Price'] = 100-ts['Future Price']
    ISCALL = 1-ISCALL

strikes = get_strikes_from_vol_moneyness(ISCALL,ivol_mkt,ts)
```

```python
bdays = BDay()

t = pd.to_datetime(info.loc['option expiration',sheet]) - TARG_T * datetime.timedelta(365)
t += 1 * bdays
t = t.strftime('%Y-%m-%d')

if 'P50dVol' in ivol_mkt.columns:
    colATM = 'P50dVol'
else:
    colATM = 'C50dVol'

volATM = ivol_mkt.loc[t,colATM]
F = ts.loc[t,'Future Price']
strike_grid = strikes.loc[t]
T = ts.loc[t,'Expiration Option']

ivol_obs = ivol_mkt.loc[t]
```

```python
summary = pd.DataFrame([tick,t,f'{T:.2f} years'],index=['ticker','date','expiration'],columns=['reference data'])
summary
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
	  <th>reference data</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>ticker</th>
	  <td>ED</td>
	</tr>
	<tr>
	  <th>date</th>
	  <td>2023-02-13</td>
	</tr>
	<tr>
	  <th>expiration</th>
	  <td>0.60 years</td>
	</tr>
  </tbody>
</table>
</div>

# Optimization

```python
def obj_fun(xargs):
    nu = xargs[0]
    rho = xargs[1]
    alpha = xargs[2]
    ivol_mod = np.zeros(len(strike_grid))
    
    for i,K in enumerate(strike_grid):
         ivol_mod[i] = sabr(BETA,nu,rho,alpha,F,K,T)
    
    error = ((ivol_mod - ivol_obs)**2).sum()
    
    return error


def obj_fun_slim(xargs):
    nu = xargs[0]
    rho = xargs[1]
    ivol_mod = np.zeros(len(strike_grid))
    
    for i,K in enumerate(strike_grid):
         ivol_mod[i] = sabr_slim(BETA,nu,rho,F,K,T,volATM)
    
    error = ((ivol_mod - ivol_obs)**2).sum()
    
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
    alphastar = solve_alpha(BETA,nustar,rhostar,T,volATM,F)
    ivolSABR = sabr_slim(BETA,nustar,rhostar,F,strike_grid,T,volATM)
else:
    alphastar = xstar[2]
    ivolSABR = sabr(BETA,nustar,rhostar,alphastar,F,strike_grid,T)
```

# Estimation

```python
error = optim.fun
param = pd.DataFrame([BETA,alphastar,nustar,rhostar,error],index=['beta ($\\beta$)','alpha ($\\alpha$)','nu ($\\nu$)','rho ($\\rho$)','fit error'],columns=['SABR Parameters']).style.format('{:.4f}')
param
```

<style type="text/css">
</style>
<table id="T_d020e">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_d020e_level0_col0" class="col_heading level0 col0" >SABR Parameters</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_d020e_level0_row0" class="row_heading level0 row0" >beta ($\beta$)</th>
	  <td id="T_d020e_row0_col0" class="data row0 col0" >0.5000</td>
	</tr>
	<tr>
	  <th id="T_d020e_level0_row1" class="row_heading level0 row1" >alpha ($\alpha$)</th>
	  <td id="T_d020e_row1_col0" class="data row1 col0" >0.3672</td>
	</tr>
	<tr>
	  <th id="T_d020e_level0_row2" class="row_heading level0 row2" >nu ($\nu$)</th>
	  <td id="T_d020e_row2_col0" class="data row2 col0" >0.9768</td>
	</tr>
	<tr>
	  <th id="T_d020e_level0_row3" class="row_heading level0 row3" >rho ($\rho$)</th>
	  <td id="T_d020e_row3_col0" class="data row3 col0" >-0.2559</td>
	</tr>
	<tr>
	  <th id="T_d020e_level0_row4" class="row_heading level0 row4" >fit error</th>
	  <td id="T_d020e_row4_col0" class="data row4 col0" >0.0010</td>
	</tr>
  </tbody>
</table>

```python
comp = pd.concat([ivolSABR,ivol_obs],axis=1)
comp.columns = ['SABR','market']
comp['strike'] = strike_grid
comp.set_index('strike',inplace=True)
comp.plot();
```

![png](output_12_0.png)

# Modeled Volatility Curves

## Calculate SABR Vol for various spots

```python
Fgrid = np.arange(F*(1-volATM),F*(1+volATM),F*volATM/2)
        
volPath = pd.DataFrame(columns=ivolSABR.index,index=Fgrid)

if doSLIM:
    for f in Fgrid:
        volPath.loc[f,:] = sabr_slim(BETA,nustar,rhostar,f,strike_grid,T,volATM)
else:
    for f in Fgrid:
        volPath.loc[f,:] = sabr(BETA,nustar,rhostar,alphastar,f,strike_grid,T)
```

## Transform Delta to Strike

```python
strikesPath = pd.DataFrame(np.repeat(strike_grid.values.reshape(-1,1),len(Fgrid),axis=1).T, index=Fgrid, columns=ivolSABR.index)
```

## Graph Vol Curves

```python
fig, ax = plt.subplots()

for row in volPath.index:
    plotdata = pd.concat([strikesPath.loc[row],volPath.loc[row]],axis=1)
    plotdata.columns = ['strike','vol']
    plotdata.set_index('strike',inplace=True)
    plotdata.plot(ax=ax)

plt.legend([f'{c:.2f}' for c in volPath.index]);

plt.ylabel('implied volatility')
plt.title(f'Volatility Skews: {tick}')
plt.show()
```

![png](output_19_0.png)

# Vol Path

```python
backbone = pd.DataFrame(index=Fgrid,dtype=float,columns=['vol path'])
backbone.index.name = 'strike'
for f in Fgrid:
    backbone.loc[f] = sabrATM(BETA,nustar,rhostar,alphastar,f,f,T)
    
backbone['vol path approx'] = alphastar/(Fgrid**(1-BETA))
```

```python
fig, ax = plt.subplots()

for row in volPath.index:
    plotdata = pd.concat([strikesPath.loc[row],volPath.loc[row]],axis=1)
    plotdata.columns = ['strike','vol']
    plotdata.set_index('strike',inplace=True)
    plotdata.plot(ax=ax)
    
backbone.plot(ax=ax,color=['black','gray'],linewidth=2.5,linestyle='--')

plt.legend([f'{c:.2f}' for c in volPath.index] + ['vol path','vol path approx']);
plt.ylabel('implied volatility')
plt.title(f'Volatility Skews and Volatility Path: {tick}')
plt.show()
```

![png](output_22_0.png)

# Other Assets

```python
ISCALL = False
TARG_T = .6
betagrid = [1,.5,0]
params = dict()
```

```python
for i in range(info.shape[1]):
    out = list()
    for beta in betagrid:
        out.append(sabr_volpaths(LOADFILE, i, ISCALL, beta, TARG_T))        
        
    tick = out[-1]['summary'].iloc[0,0]    
    params[tick] = pd.concat([ob['params'] for ob in out],axis=1)
    params[tick].columns = betagrid
    params[tick].style.format('{:.4f}')    
```

    /Users/markhendricks/Projects/finm-fiderivs-2023/dev/volskew.py:42: RuntimeWarning: invalid value encountered in sqrt
      return np.log((np.sqrt(1-2*rho*z + z**2) + z - rho) / (1-rho))
    /Users/markhendricks/Projects/finm-fiderivs-2023/dev/volskew.py:42: RuntimeWarning: invalid value encountered in log
      return np.log((np.sqrt(1-2*rho*z + z**2) + z - rho) / (1-rho))



    

![png](output_25_1.png)

![png](output_25_2.png)

![png](output_25_3.png)

![png](output_25_4.png)

![png](output_25_5.png)

![png](output_25_6.png)

![png](output_25_7.png)

![png](output_25_8.png)

![png](output_25_9.png)

![png](output_25_10.png)

![png](output_25_11.png)

![png](output_25_12.png)

```python
tab = pd.concat(params,axis=1)
tab
```

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead tr th {
        text-align: left;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr>
	  <th></th>
	  <th colspan="3" halign="left">FV</th>
	  <th colspan="3" halign="left">ES</th>
	  <th colspan="3" halign="left">TY</th>
	  <th colspan="3" halign="left">ED</th>
	</tr>
	<tr>
	  <th></th>
	  <th>1.0</th>
	  <th>0.5</th>
	  <th>0.0</th>
	  <th>1.0</th>
	  <th>0.5</th>
	  <th>0.0</th>
	  <th>1.0</th>
	  <th>0.5</th>
	  <th>0.0</th>
	  <th>1.0</th>
	  <th>0.5</th>
	  <th>0.0</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>beta ($\beta$)</th>
	  <td>1.000000</td>
	  <td>0.500000</td>
	  <td>0.000000</td>
	  <td>1.000000</td>
	  <td>0.500000</td>
	  <td>0.000000</td>
	  <td>1.000000</td>
	  <td>0.500000</td>
	  <td>0.000000</td>
	  <td>1.000000</td>
	  <td>0.500000</td>
	  <td>0.000000</td>
	</tr>
	<tr>
	  <th>alpha ($\alpha$)</th>
	  <td>0.049268</td>
	  <td>0.518522</td>
	  <td>5.460042</td>
	  <td>0.179880</td>
	  <td>11.492573</td>
	  <td>738.294787</td>
	  <td>0.071273</td>
	  <td>0.769214</td>
	  <td>8.306057</td>
	  <td>0.158859</td>
	  <td>0.367213</td>
	  <td>0.851966</td>
	</tr>
	<tr>
	  <th>nu ($\nu$)</th>
	  <td>0.757672</td>
	  <td>0.760657</td>
	  <td>0.764239</td>
	  <td>1.141714</td>
	  <td>0.995677</td>
	  <td>0.860948</td>
	  <td>0.569426</td>
	  <td>0.566438</td>
	  <td>0.566318</td>
	  <td>1.033813</td>
	  <td>0.976809</td>
	  <td>0.934137</td>
	</tr>
	<tr>
	  <th>rho ($\rho$)</th>
	  <td>0.038291</td>
	  <td>0.079615</td>
	  <td>0.120788</td>
	  <td>-0.721957</td>
	  <td>-0.674393</td>
	  <td>-0.612817</td>
	  <td>-0.078086</td>
	  <td>-0.005575</td>
	  <td>0.066459</td>
	  <td>-0.361155</td>
	  <td>-0.255900</td>
	  <td>-0.138746</td>
	</tr>
	<tr>
	  <th>fit error</th>
	  <td>0.000041</td>
	  <td>0.000042</td>
	  <td>0.000043</td>
	  <td>0.000219</td>
	  <td>0.000280</td>
	  <td>0.000537</td>
	  <td>0.000011</td>
	  <td>0.000011</td>
	  <td>0.000011</td>
	  <td>0.001138</td>
	  <td>0.000980</td>
	  <td>0.000934</td>
	</tr>
  </tbody>
</table>
</div>


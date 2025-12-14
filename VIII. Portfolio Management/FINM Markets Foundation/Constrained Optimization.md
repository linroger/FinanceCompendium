---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Discussion of Portfolio Optimization with Asset Bounds
linter-yaml-title-alias: Discussion of Portfolio Optimization with Asset Bounds
---

# Discussion of Portfolio Optimization with Asset Bounds
## Via the HBS Case: Harvard and Inflation-Indexed Bonds

### Mark Hendricks

```python
import pandas as pd
import numpy as np
import warnings
from scipy.optimize import minimize
```

# Data Processing

## Organize Return Statistics as provided in the Harvard Case
- Assumed (Exhibit 4)
- Historic (Exhibit 2)

The exhibits are a mess when loaded, function below cleans them up and returns the relevant data.

### Problem with Data in Exhibit 2

Note: The historic correlation matrix in Exhibit 2 **is not positive definite!**

- This is clearly a mistake in the exhibit.
- It does not cause an obvious problem with the results below.
- But if you compare the analytic MV solution with a numerical optimization of the classic MV problem (no bounds) one sees that the numerical optimizer can take advantage of the matrix being negative definite to achieve a negative variance!
- Thus, the numerically optimized solution with constraints is suspect.

**Thus, the analysis with "Historic" data from Exhibit 2 should be taken with a grain of salt.** Yet it still illustrates the concept.

```python
def read_harvard_stats_exhibit(df,description=None):

    # get the portion of the exhibit with actual data
    df.dropna(subset=[df.columns[0]],axis=0,how='any',inplace=True)
    df.set_index(df.columns[0],inplace=True)
    df.dropna(axis=1,how='all',inplace=True)
    df.dropna(axis=0,how='all',inplace=True)
    df.set_index(df.columns[0],inplace=True)
    df.index.name = description
    
    # deal with typos and bad formatting from the case exhbit
    if description == 'Assumed Stats':
        df.rename({'Infl-Indexed Bonds':'Inflation-Indexed Bonds'},axis=0,inplace=True)
    elif description == 'Historic Stats':
        df.rename({'Absolute Returnb':'Absolute Return', 'High Yieldb':'High Yield', 'Foreign Bondsb':'Foreign Bonds'},axis=0, inplace=True)

    # organize data
    df.columns = ['Mean','Vol'] + list(df.index)

    df = df.astype('float64')
    corr = df.drop(columns=['Mean','Vol'])
    
    ### Force the correlation matrix in Exhibit 2 to be positive definite
    HIST_CORR_FIX = [.80,.85]
    if description == 'Historic Stats':
        corr.loc['Absolute Return',['Domestic Equity','Foreign Equity']] = HIST_CORR_FIX
        corr.loc[['Domestic Equity','Foreign Equity'],'Absolute Return'] = HIST_CORR_FIX
    
    vol = df['Vol'] / 100
    mean = df['Mean'] / 100
    cov = corr * (np.outer(vol, vol.T))
    
    return {'mean':mean, 'vol':vol, 'cov':cov, 'corr':corr}
```

## Organize Optimization Parameters
### Also read in the HBS Solutions

```python
def read_harvard_optimization_exhibit(df, description = None):
    df = df.dropna(axis=1,how='all').dropna(axis=0,how='all').set_index(df.columns[0])
    df.columns = df.iloc[-4,:]/100
    df = df.loc[cov.index]

    if description == 'Historic Stats':
        df.drop(index='Inflation-Indexed Bonds',inplace=True)
        
    hbs_solutions = df.loc[:,df.columns.notnull()]/100
    hbs_solutions.index.name = 'weights'

    bounds_df = df.iloc[:,-2:]
    if description == 'Policy':
        bounds_df /= 100
    bounds_df.columns = ['Min','Max']
    bounds_df.index.name = description
    
    return bounds_df, hbs_solutions
```

## Case has 4 combinations
### Two types of statistics
- Historic
- Assumed

### Two sets of bounds
- Long-only
- Policy

Our main focus, like that of case, is

- Assumed stats
- Policy constraints

```python
DATAFILE = '../data/harvard_tips_exhibits.xlsx'

USE_HISTORIC_STATS = False
USE_LONGONLY_CONSTRAINT = False
```

```python
if USE_HISTORIC_STATS:
    sheet_stats = 'Exhibit 2'
    stats_description = 'Historic Stats'
else:
    sheet_stats = 'Exhibit 4'
    stats_description = 'Assumed Stats'

if USE_LONGONLY_CONSTRAINT:
    sheet_constraint = 'Exhibit 5'
    constraint_description = 'Long-Only'
else:
    sheet_constraint = 'Exhibit 6'
    constraint_description = 'Policy'
```

```python
with warnings.catch_warnings():
    warnings.simplefilter('ignore')

    rawdata_stats = pd.read_excel(DATAFILE,sheet_name=sheet_stats)
    rawdata_opt = pd.read_excel(DATAFILE,sheet_name=sheet_constraint)

output_stats = read_harvard_stats_exhibit(rawdata_stats, description = stats_description)    
mean = output_stats['mean']
cov = output_stats['cov']
nAssets = mean.shape[0]

bounds_df, hbs_solutions = read_harvard_optimization_exhibit(rawdata_opt, description = constraint_description)
```

# Constrained Optimization

## Objective

Minimize portfolio variance. 

- Portfolio weights: $\boldsymbol{w}$
- Return covariance matrix: $\boldsymbol{\Sigma}$
$$f(\boldsymbol{w}) = \boldsymbol{w}' \boldsymbol{\Sigma} \boldsymbol{w}$$

```python
def objective(w):        
    return (w.T @ cov @ w)
```

## Constraints

### Equality Constraints
- Targeted mean for the optimized portfolio: $\mu_p$
Define the following two functions:
$$g_{1}(\boldsymbol{w}) \equiv \boldsymbol{1}'\boldsymbol{w}$$
$$g_{2}(\boldsymbol{w}) \equiv \boldsymbol{\mu}'\boldsymbol{w}$$

These are imposed as equality constraints:

$$g_1(\boldsymbol{w}) = 1$$

$$g_2(\boldsymbol{w}) = \mu_p$$

### Target mean

Below we analyze the problem for a target mean return of

- 8% if using the assume stats
- 12% if using the historic stats
The reason for the difference is that the historic stats are **much** more favorable, and it is easy to generate high mean returns.

```python
if USE_HISTORIC_STATS:
    TARGET_MEAN = 0.12
else:
    TARGET_MEAN = 0.07

def fun_constraint_capital(w):
    return np.sum(w) - 1

def fun_constraint_mean(w):
    return (mean @ w) - TARGET_MEAN

constraint_capital = {'type': 'eq', 'fun': fun_constraint_capital}
constraint_mean = {'type': 'eq', 'fun': fun_constraint_mean}

cons = ([constraint_capital, constraint_mean])
```

## Inequality Constraints

**This cell's notation and setup is overkill for the simplicity of these constraints, but is noted here for more general problems.**

- Denote the $k\times k$ identity matrix as $\mathcal{I}_k$
- Denote the $i$ column of the identity matrix as $\boldsymbol{\iota}_i$

Define the following $k$ functions, for $1\le i\le n$: 

$$h_i(\boldsymbol{w}) \equiv \boldsymbol{\iota}_i' \boldsymbol{w}$$

For each $i$, we use the upper and lower inequality constraints:

$$h_i(\boldsymbol{w}) \le d_i^{\text{max}}$$

$$h_i(\boldsymbol{w}) \ge d_i^{\text{min}}$$

Stack the constraints into matrix notation. The inequality constraint functions are linear:

$$\boldsymbol{h}(\boldsymbol{w}) \equiv \mathcal{I}_k \boldsymbol{w}$$

and there are $2n$ total of them--$n$ upper and $n$ lower:

$$\boldsymbol{h}(\boldsymbol{w}) \le \boldsymbol{d}^{\text{max}}$$

$$\boldsymbol{h}(\boldsymbol{w}) \ge \boldsymbol{d}^{\text{min}}$$

## Boundary Constraints

Given that the inequality constraint functions are all linear, these constraints are simply boundary conditions.

The `scipy` package `minimize` implements boundary constraints specifically, via an iteration of tuples:

```python
bounds = [tuple(bounds_df.iloc[i,:].values) for i in range(nAssets)]
```

# Solution

## Default Tolerance
- Default tolerance is fine here, but be careful. Variance minimization for daily or even monthly variance leads to extremely small scaling of the objective function, and often the default tolerance will not be sufficient.
- Even in the example below, making the tolerance stricter impacts the weights to the second decimal place.

## Method
- For the data given here the problem is not too hard to solve, so many methods will work fine.
- If using high dimensionality, nearly singular determinant, etc, it may matter more.
- Below we use `SLSQP` as it is fast and fairly robust for this application.
- At the end, we redo the optimization using `trust-constr` solely for the fact that this method automatically returns the Lagrange Multipliers which are useful for pedagogical reasons.

## Initialize
- Try equally-weighted portfolio
- This satisfies the Long-Only constraint.
- May not satisfy the Policy constraint, but this problem is well-behaved, so it will be good enough as an initial guess

## Verify!
- In a serious application, we would code the problem to verify that the answer returned by the solution is a "success" (obeys all the constraints) rather than a failed attempt. Try changing `TARGET_MEAN` to a big number, and you will see the optimizer fail to hit the target and obey the constraints.

```python
TOL = 1e-12
METHOD = 'SLSQP'

w0 = np.ones(nAssets) / nAssets

solution = minimize(objective, w0, method=METHOD, bounds=bounds,constraints=cons, tol=TOL)
wstar = pd.DataFrame(data=solution.x, index=cov.columns, columns=['Bounded: Numerical'])

if solution.success:
    print('Optimization SUCCESSFUL.')
else:
    print('Optimization FAILED.')

print(f'Iterations: {solution.nit}.')
```

    Optimization SUCCESSFUL.
    Iterations: 31.

# Other Solutions for Comparison

## HBS Case Exhibit Solution

Compare to Exhibits 5 and 6.

- Only applicable if `USE_HISTORIC_STATS` is `False`.
- (Case does not provide their solutions when using Historic data.)

## Classic MV via Numerical Optimization

Solve numerically by dropping the inequality (bounds) constraints in `minimize`.

- Only applicable if `USE_HISTORIC_STATS` is `False`. 
- (Exhibit 2 correlation matrix is not positive definite.)

## Analytic MV solution for verification.
- Calculate this on your own.
- The function doing it below is not available to you.
- If `USE_HISTORIC_STATS` is `True`, computation may not work correctly, but it is attempted.

## Equal-weighted
- Just for illustration. 

```python
if sheet_stats == 'Exhibit 4' and TARGET_MEAN in hbs_solutions.columns:
    wstar['Bounded: Case'] = hbs_solutions[TARGET_MEAN]   
```

```python
if not USE_HISTORIC_STATS:
    METHOD = 'SLSQP'
    TOL = 1e-12
    w0 = np.ones(nAssets) / nAssets

    solutionMV = minimize(objective, w0, method=METHOD, constraints=cons, tol=TOL)
    wstar['MV: Numerical'] = solutionMV.x
    
    if solutionMV.success:
        print('Optimization SUCCESSFUL.')
    else:
        print('Optimization FAILED.')

    print(f'Iterations: {solutionMV.nit}.')
```

    Optimization SUCCESSFUL.
    Iterations: 63.

```python
import os
import sys
sys.path.insert(0, '../cmds')
from portfolio import MVweights

wstar['MV: Analytic'] = MVweights(mean=mean,cov=cov,isexcess=False,target=TARGET_MEAN)
```

```python
wstar.insert(0,'Equally-Weighted',w0)
```

# Results

## Optimized Weights Comparison

```python
display(wstar.style.format('{:.2%}'.format))
```

<style type="text/css">
</style>
<table id="T_ef94f">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_ef94f_level0_col0" class="col_heading level0 col0" >Equally-Weighted</th>
	  <th id="T_ef94f_level0_col1" class="col_heading level0 col1" >Bounded: Numerical</th>
	  <th id="T_ef94f_level0_col2" class="col_heading level0 col2" >Bounded: Case</th>
	  <th id="T_ef94f_level0_col3" class="col_heading level0 col3" >MV: Numerical</th>
	  <th id="T_ef94f_level0_col4" class="col_heading level0 col4" >MV: Analytic</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_ef94f_level0_row0" class="row_heading level0 row0" >Domestic Equity</th>
	  <td id="T_ef94f_row0_col0" class="data row0 col0" >8.33%</td>
	  <td id="T_ef94f_row0_col1" class="data row0 col1" >22.00%</td>
	  <td id="T_ef94f_row0_col2" class="data row0 col2" >22.00%</td>
	  <td id="T_ef94f_row0_col3" class="data row0 col3" >-0.05%</td>
	  <td id="T_ef94f_row0_col4" class="data row0 col4" >-0.05%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row1" class="row_heading level0 row1" >Foreign Equity</th>
	  <td id="T_ef94f_row1_col0" class="data row1 col0" >8.33%</td>
	  <td id="T_ef94f_row1_col1" class="data row1 col1" >5.00%</td>
	  <td id="T_ef94f_row1_col2" class="data row1 col2" >5.00%</td>
	  <td id="T_ef94f_row1_col3" class="data row1 col3" >5.74%</td>
	  <td id="T_ef94f_row1_col4" class="data row1 col4" >5.74%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row2" class="row_heading level0 row2" >Emerging Markets</th>
	  <td id="T_ef94f_row2_col0" class="data row2 col0" >8.33%</td>
	  <td id="T_ef94f_row2_col1" class="data row2 col1" >19.00%</td>
	  <td id="T_ef94f_row2_col2" class="data row2 col2" >19.00%</td>
	  <td id="T_ef94f_row2_col3" class="data row2 col3" >19.87%</td>
	  <td id="T_ef94f_row2_col4" class="data row2 col4" >19.87%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row3" class="row_heading level0 row3" >Private Equity</th>
	  <td id="T_ef94f_row3_col0" class="data row3 col0" >8.33%</td>
	  <td id="T_ef94f_row3_col1" class="data row3 col1" >22.83%</td>
	  <td id="T_ef94f_row3_col2" class="data row3 col2" >22.80%</td>
	  <td id="T_ef94f_row3_col3" class="data row3 col3" >22.01%</td>
	  <td id="T_ef94f_row3_col4" class="data row3 col4" >22.01%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row4" class="row_heading level0 row4" >Absolute Return</th>
	  <td id="T_ef94f_row4_col0" class="data row4 col0" >8.33%</td>
	  <td id="T_ef94f_row4_col1" class="data row4 col1" >-6.00%</td>
	  <td id="T_ef94f_row4_col2" class="data row4 col2" >-6.00%</td>
	  <td id="T_ef94f_row4_col3" class="data row4 col3" >-0.65%</td>
	  <td id="T_ef94f_row4_col4" class="data row4 col4" >-0.65%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row5" class="row_heading level0 row5" >High Yield</th>
	  <td id="T_ef94f_row5_col0" class="data row5 col0" >8.33%</td>
	  <td id="T_ef94f_row5_col1" class="data row5 col1" >-6.92%</td>
	  <td id="T_ef94f_row5_col2" class="data row5 col2" >-6.90%</td>
	  <td id="T_ef94f_row5_col3" class="data row5 col3" >4.15%</td>
	  <td id="T_ef94f_row5_col4" class="data row5 col4" >4.15%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row6" class="row_heading level0 row6" >Commodities</th>
	  <td id="T_ef94f_row6_col0" class="data row6 col0" >8.33%</td>
	  <td id="T_ef94f_row6_col1" class="data row6 col1" >15.00%</td>
	  <td id="T_ef94f_row6_col2" class="data row6 col2" >15.00%</td>
	  <td id="T_ef94f_row6_col3" class="data row6 col3" >14.21%</td>
	  <td id="T_ef94f_row6_col4" class="data row6 col4" >14.21%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row7" class="row_heading level0 row7" >Real Estate</th>
	  <td id="T_ef94f_row7_col0" class="data row7 col0" >8.33%</td>
	  <td id="T_ef94f_row7_col1" class="data row7 col1" >16.42%</td>
	  <td id="T_ef94f_row7_col2" class="data row7 col2" >16.40%</td>
	  <td id="T_ef94f_row7_col3" class="data row7 col3" >17.35%</td>
	  <td id="T_ef94f_row7_col4" class="data row7 col4" >17.35%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row8" class="row_heading level0 row8" >Domestic Bonds</th>
	  <td id="T_ef94f_row8_col0" class="data row8 col0" >8.33%</td>
	  <td id="T_ef94f_row8_col1" class="data row8 col1" >1.00%</td>
	  <td id="T_ef94f_row8_col2" class="data row8 col2" >1.00%</td>
	  <td id="T_ef94f_row8_col3" class="data row8 col3" >-19.98%</td>
	  <td id="T_ef94f_row8_col4" class="data row8 col4" >-19.98%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row9" class="row_heading level0 row9" >Foreign Bonds</th>
	  <td id="T_ef94f_row9_col0" class="data row9 col0" >8.33%</td>
	  <td id="T_ef94f_row9_col1" class="data row9 col1" >2.90%</td>
	  <td id="T_ef94f_row9_col2" class="data row9 col2" >2.90%</td>
	  <td id="T_ef94f_row9_col3" class="data row9 col3" >15.95%</td>
	  <td id="T_ef94f_row9_col4" class="data row9 col4" >15.95%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row10" class="row_heading level0 row10" >Inflation-Indexed Bonds</th>
	  <td id="T_ef94f_row10_col0" class="data row10 col0" >8.33%</td>
	  <td id="T_ef94f_row10_col1" class="data row10 col1" >23.77%</td>
	  <td id="T_ef94f_row10_col2" class="data row10 col2" >23.80%</td>
	  <td id="T_ef94f_row10_col3" class="data row10 col3" >97.73%</td>
	  <td id="T_ef94f_row10_col4" class="data row10 col4" >97.73%</td>
	</tr>
	<tr>
	  <th id="T_ef94f_level0_row11" class="row_heading level0 row11" >Cash</th>
	  <td id="T_ef94f_row11_col0" class="data row11 col0" >8.33%</td>
	  <td id="T_ef94f_row11_col1" class="data row11 col1" >-15.00%</td>
	  <td id="T_ef94f_row11_col2" class="data row11 col2" >-15.00%</td>
	  <td id="T_ef94f_row11_col3" class="data row11 col3" >-76.31%</td>
	  <td id="T_ef94f_row11_col4" class="data row11 col4" >-76.31%</td>
	</tr>
  </tbody>
</table>

## Using Bounds of…

```python
display(bounds_df.style.format('{:.2%}'.format))
```

<style type="text/css">
</style>
<table id="T_762c1">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_762c1_level0_col0" class="col_heading level0 col0" >Min</th>
	  <th id="T_762c1_level0_col1" class="col_heading level0 col1" >Max</th>
	</tr>
	<tr>
	  <th class="index_name level0" >Policy</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_762c1_level0_row0" class="row_heading level0 row0" >Domestic Equity</th>
	  <td id="T_762c1_row0_col0" class="data row0 col0" >22.00%</td>
	  <td id="T_762c1_row0_col1" class="data row0 col1" >42.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row1" class="row_heading level0 row1" >Foreign Equity</th>
	  <td id="T_762c1_row1_col0" class="data row1 col0" >5.00%</td>
	  <td id="T_762c1_row1_col1" class="data row1 col1" >25.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row2" class="row_heading level0 row2" >Emerging Markets</th>
	  <td id="T_762c1_row2_col0" class="data row2 col0" >-1.00%</td>
	  <td id="T_762c1_row2_col1" class="data row2 col1" >19.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row3" class="row_heading level0 row3" >Private Equity</th>
	  <td id="T_762c1_row3_col0" class="data row3 col0" >5.00%</td>
	  <td id="T_762c1_row3_col1" class="data row3 col1" >25.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row4" class="row_heading level0 row4" >Absolute Return</th>
	  <td id="T_762c1_row4_col0" class="data row4 col0" >-6.00%</td>
	  <td id="T_762c1_row4_col1" class="data row4 col1" >14.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row5" class="row_heading level0 row5" >High Yield</th>
	  <td id="T_762c1_row5_col0" class="data row5 col0" >-8.00%</td>
	  <td id="T_762c1_row5_col1" class="data row5 col1" >12.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row6" class="row_heading level0 row6" >Commodities</th>
	  <td id="T_762c1_row6_col0" class="data row6 col0" >-5.00%</td>
	  <td id="T_762c1_row6_col1" class="data row6 col1" >15.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row7" class="row_heading level0 row7" >Real Estate</th>
	  <td id="T_762c1_row7_col0" class="data row7 col0" >-3.00%</td>
	  <td id="T_762c1_row7_col1" class="data row7 col1" >17.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row8" class="row_heading level0 row8" >Domestic Bonds</th>
	  <td id="T_762c1_row8_col0" class="data row8 col0" >1.00%</td>
	  <td id="T_762c1_row8_col1" class="data row8 col1" >21.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row9" class="row_heading level0 row9" >Foreign Bonds</th>
	  <td id="T_762c1_row9_col0" class="data row9 col0" >-5.00%</td>
	  <td id="T_762c1_row9_col1" class="data row9 col1" >15.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row10" class="row_heading level0 row10" >Inflation-Indexed Bonds</th>
	  <td id="T_762c1_row10_col0" class="data row10 col0" >0.00%</td>
	  <td id="T_762c1_row10_col1" class="data row10 col1" >100.00%</td>
	</tr>
	<tr>
	  <th id="T_762c1_level0_row11" class="row_heading level0 row11" >Cash</th>
	  <td id="T_762c1_row11_col0" class="data row11 col0" >-15.00%</td>
	  <td id="T_762c1_row11_col1" class="data row11 col1" >5.00%</td>
	</tr>
  </tbody>
</table>

# Performance Stats

```python
meanP = (mean.T @ wstar)
volP = pd.Series(np.diag(wstar.T @ cov @ wstar),index=wstar.columns).apply(np.sqrt)

sharpeP = (meanP-mean.loc['Cash'])/volP

performance = pd.DataFrame({'mean':meanP,'vol':volP,'Sharpe':sharpeP})
display(performance.style.format('{:.2%}'.format))
```

<style type="text/css">
</style>
<table id="T_61c77">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_61c77_level0_col0" class="col_heading level0 col0" >mean</th>
	  <th id="T_61c77_level0_col1" class="col_heading level0 col1" >vol</th>
	  <th id="T_61c77_level0_col2" class="col_heading level0 col2" >Sharpe</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_61c77_level0_row0" class="row_heading level0 row0" >Equally-Weighted</th>
	  <td id="T_61c77_row0_col0" class="data row0 col0" >5.67%</td>
	  <td id="T_61c77_row0_col1" class="data row0 col1" >6.58%</td>
	  <td id="T_61c77_row0_col2" class="data row0 col2" >33.05%</td>
	</tr>
	<tr>
	  <th id="T_61c77_level0_row1" class="row_heading level0 row1" >Bounded: Numerical</th>
	  <td id="T_61c77_row1_col0" class="data row1 col0" >7.00%</td>
	  <td id="T_61c77_row1_col1" class="data row1 col1" >9.84%</td>
	  <td id="T_61c77_row1_col2" class="data row1 col2" >35.57%</td>
	</tr>
	<tr>
	  <th id="T_61c77_level0_row2" class="row_heading level0 row2" >Bounded: Case</th>
	  <td id="T_61c77_row2_col0" class="data row2 col0" >7.00%</td>
	  <td id="T_61c77_row2_col1" class="data row2 col1" >9.84%</td>
	  <td id="T_61c77_row2_col2" class="data row2 col2" >35.57%</td>
	</tr>
	<tr>
	  <th id="T_61c77_level0_row3" class="row_heading level0 row3" >MV: Numerical</th>
	  <td id="T_61c77_row3_col0" class="data row3 col0" >7.00%</td>
	  <td id="T_61c77_row3_col1" class="data row3 col1" >9.08%</td>
	  <td id="T_61c77_row3_col2" class="data row3 col2" >38.54%</td>
	</tr>
	<tr>
	  <th id="T_61c77_level0_row4" class="row_heading level0 row4" >MV: Analytic</th>
	  <td id="T_61c77_row4_col0" class="data row4 col0" >7.00%</td>
	  <td id="T_61c77_row4_col1" class="data row4 col1" >9.08%</td>
	  <td id="T_61c77_row4_col2" class="data row4 col2" >38.54%</td>
	</tr>
  </tbody>
</table>

## In the case of Assumed Statistics (Exhibit 4)…

The Bounded and Classic MV answers have similar Sharpe ratios.

- Bounded optimization does a good job?
- For these targeted mean returns, yes.
- But for large target mean, classic MV can get there with huge long-short positions, and the bounded solution will fail or will do so with bigger penalty.

Try `TARGET_MEAN` of 10%, 15%, 20% to get an idea of this.

Additionally, this analysis is impacted by the strange assumed mean return. Domestic equities are assumed to only have a 3% premium over cash!

# Which Constraints are most costly?

The Lagrange Multipliers give us a clue.

- Each is the derivative of the objective function with respect to the constraint boundary.
- Magnitude shows impact.
- Sign is an indication of whether constraint is upper or lower bound.
- Showing impact on objective (variance) so numbers are small.

Focus on their relative magnitudes.

## The importance of the constraints changes a lot
- between using the Long-Only or Policy Constraints
- between using the Historic and Assumed Stats

```python
warnings.filterwarnings("ignore", message="delta_grad == 0.0. Check if the approximated function is linear.")

TOL = 1e-12
METHOD = 'trust-constr'

w0 = wstar['Bounded: Numerical']
solutionALT = minimize(objective, w0, method=METHOD, bounds=bounds,constraints=cons, tol=TOL)

pd.DataFrame(solutionALT.v[-1], index=mean.index, columns=['Lagrange Multipliers']).sort_values('Lagrange Multipliers',ascending=False).style.format('{:.2%}'.format)
```

<style type="text/css">
</style>
<table id="T_baa59">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_baa59_level0_col0" class="col_heading level0 col0" >Lagrange Multipliers</th>
	</tr>
	<tr>
	  <th class="index_name level0" >Assumed Stats</th>
	  <th class="blank col0" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_baa59_level0_row0" class="row_heading level0 row0" >Commodities</th>
	  <td id="T_baa59_row0_col0" class="data row0 col0" >0.14%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row1" class="row_heading level0 row1" >Emerging Markets</th>
	  <td id="T_baa59_row1_col0" class="data row1 col0" >0.08%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row2" class="row_heading level0 row2" >Real Estate</th>
	  <td id="T_baa59_row2_col0" class="data row2 col0" >0.00%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row3" class="row_heading level0 row3" >Foreign Bonds</th>
	  <td id="T_baa59_row3_col0" class="data row3 col0" >0.00%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row4" class="row_heading level0 row4" >Private Equity</th>
	  <td id="T_baa59_row4_col0" class="data row4 col0" >0.00%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row5" class="row_heading level0 row5" >Inflation-Indexed Bonds</th>
	  <td id="T_baa59_row5_col0" class="data row5 col0" >-0.00%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row6" class="row_heading level0 row6" >High Yield</th>
	  <td id="T_baa59_row6_col0" class="data row6 col0" >-0.00%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row7" class="row_heading level0 row7" >Absolute Return</th>
	  <td id="T_baa59_row7_col0" class="data row7 col0" >-0.13%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row8" class="row_heading level0 row8" >Domestic Bonds</th>
	  <td id="T_baa59_row8_col0" class="data row8 col0" >-0.16%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row9" class="row_heading level0 row9" >Foreign Equity</th>
	  <td id="T_baa59_row9_col0" class="data row9 col0" >-0.17%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row10" class="row_heading level0 row10" >Cash</th>
	  <td id="T_baa59_row10_col0" class="data row10 col0" >-0.18%</td>
	</tr>
	<tr>
	  <th id="T_baa59_level0_row11" class="row_heading level0 row11" >Domestic Equity</th>
	  <td id="T_baa59_row11_col0" class="data row11 col0" >-0.68%</td>
	</tr>
  </tbody>
</table>

# Figures

```python
warnings.filterwarnings("ignore", message="Values in x were outside bounds during a ")

import matplotlib.pyplot as plt
import seaborn as sns
```

```python
omega = pd.DataFrame(MVweights(mean=mean,cov=cov,isexcess=False,target='TAN'), index=mean.index).rename({0:'Tangency'},axis=1)

mean_ex = mean-mean['Cash']
cov_ex = cov.drop(columns=['Cash'],index=['Cash'])
omega['GMV'] = MVweights(mean=mean,cov=cov,isexcess=False,target='GMV')

omega_tan = omega['Tangency']
omega_gmv = omega['GMV']

vols = pd.Series(np.sqrt(np.diag(cov)), index=cov.index)
special_vols = pd.Series(np.sqrt(np.diag(omega.T @ cov @ omega)), index=omega.columns)
special_means = mean.T @ omega

if USE_LONGONLY_CONSTRAINT:
    MVgridmax = 350
else:
    MVgridmax = 200
    
delta_grid = np.linspace(-25,MVgridmax,100)
mv_frame = pd.DataFrame(columns=['mean','vol'],index=delta_grid)
for i, delta in enumerate(delta_grid):
    omega_mv = delta * omega_tan + (1-delta) * omega_gmv
    mv_frame['mean'].iloc[i] = omega_mv.T @ mean.T
    mv_frame['vol'].iloc[i] = np.sqrt(omega_mv.T @ cov @ omega_mv)
    
mv_assets = pd.concat([mean, vols],axis=1)
mv_special = pd.concat([special_means, special_vols],axis=1)
mv_assets.columns = ['mean','vol']
mv_special.columns = ['mean','vol']

ax = mv_frame.plot.scatter(x='vol',y='mean', c='k', figsize=(10,10), title='MV Frontier')
mv_assets.plot.scatter(x='vol',y='mean',ax=ax, c='b', marker='^', linewidth=4)
mv_special.plot.scatter(x='vol',y='mean',ax=ax, c='g', marker='o', linewidth=4)

for i in range(mv_assets.shape[0]):
    plt.text(x=mv_assets['vol'][i]+.0005, y=mv_assets['mean'][i]+.001, s=mv_assets.index[i])

TOL = 1e-12
METHOD = 'SLSQP'
w0 = np.ones(nAssets) / nAssets


if USE_LONGONLY_CONSTRAINT:
    maxmu = .12
    minmu = 0
else:
    maxmu = .08
    minmu = .05
    
mu_grid = np.linspace(minmu,maxmu,20)
mvcon_frame = pd.DataFrame(columns=['mean','vol'],index=mu_grid)
for i, mu in enumerate(mu_grid):
    TARGET_MEAN = mu
    omega_con = minimize(objective, w0, method=METHOD, bounds=bounds,constraints=cons, tol=TOL).x
    mvcon_frame['mean'].iloc[i] = omega_con.T @ mean.T
    mvcon_frame['vol'].iloc[i] = np.sqrt(omega_con.T @ cov @ omega_con)
    
mvcon_frame.plot.scatter(x='vol',y='mean', c='r', marker = 's', ax=ax, linewidth=5)

plt.legend(['Classic MV', 'Assets', 'TAN & GMV', 'Bounded MV'])
full_fig = plt.gcf()
```

![png](output_35_0.png)


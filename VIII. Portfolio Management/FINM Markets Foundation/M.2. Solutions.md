---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Homework 2 - Solution
linter-yaml-title-alias: Homework 2 - Solution
---

# Homework 2 - Solution
## Markets
### FINM September Launch

Mark Hendricks

hendricks@uchicago.edu

Maneet Singh - TA

maneetsingh@uchicago.edu

## Data
- This homework uses the file, "inflation_data.xlsx".
- Find the data in the Github repo associated with the module, (link on Canvas.)

The data file contains…

- Macroeconomic Data
	- Core CPI price index, denoted as p.
	- M2 Money Supply, denoted as m.
- Financial data
- Returns on the S&P 500, (via the SPY ETF)

See the "build data" folder for the details on how the data was constructed.

```python
import pandas as pd
import datetime

import numpy as np
import warnings

from sklearn.linear_model import LinearRegression

import statsmodels.api as sm

import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               StrMethodFormatter,
                               AutoMinorLocator)
```

```python
data = pd.read_excel('../data/inflation_data.xlsx',sheet_name='macro')
prices = data['CPI']
money = data['M2']

FREQ = 12
```

## 1. Assessing the OLS Model

This problem considers the predictability of inflation over various horizons. To do so, note the following:

- $i_{t,t+h}$: Inflation is the h-period growth rate of CPI:

$$
i_{t,t+h} ≡ \frac{p_{t+h}}{p_t} − 1
$$

- $g_{t,t+h}$: Money growth considered below is the growth rate of M2 Money supply:

$$
g_{t,t+h} ≡ \frac{m_{t+h}}{m_t}− 1
$$

1. Estimate an OLS regression to see if CPI and Money are contemporaneously correlated:

$$
p_t = \alpha + \beta m_t + \epsilon_t
$$

    - Note that this is not a lagged regression, but rather a regular time-series regression.
    - Answer the questions below for a one-year horizon: h = 12.
    
    (a) Report the estimated R-squared.
    (b) Report the point-estimate of β.

```python
X = money
y = prices

results = sm.OLS(y,sm.add_constant(X)).fit()
results.summary()
```

<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>           <td>CPI</td>       <th>  R-squared:         </th> <td>   0.827</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared:    </th> <td>   0.827</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th> <td>   3618.</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Thu, 15 Sep 2022</td> <th>  Prob (F-statistic):</th> <td>8.42e-291</td>
</tr>
<tr>
  <th>Time:</th>                 <td>15:13:57</td>     <th>  Log-Likelihood:    </th> <td> -3721.7</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   760</td>      <th>  AIC:               </th> <td>   7447.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   758</td>      <th>  BIC:               </th> <td>   7457.</td> 
</tr>
<tr>
  <th>Df Model:</th>              <td>     1</td>      <th>                     </th>     <td> </td>    
</tr>
<tr>
  <th>Covariance Type:</th>      <td>nonrobust</td>    <th>                     </th>     <td> </td>    
</tr>
</table>
<table class="simpletable">
<tr>
	<td></td>       <th>coef</th>     <th>std err</th>      <th>t</th>      <th>P>|t|</th>  <th>[0.025</th>    <th>0.975]</th>  
</tr>
<tr>
  <th>const</th> <td>   62.7397</td> <td>    1.645</td> <td>   38.145</td> <td> 0.000</td> <td>   59.511</td> <td>   65.969</td>
</tr>
<tr>
  <th>M2</th>    <td>    0.0145</td> <td>    0.000</td> <td>   60.151</td> <td> 0.000</td> <td>    0.014</td> <td>    0.015</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>42.247</td> <th>  Durbin-Watson:     </th> <td>   0.001</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td> <th>  Jarque-Bera (JB):  </th> <td>  36.033</td>
</tr>
<tr>
  <th>Skew:</th>          <td>-0.458</td> <th>  Prob(JB):          </th> <td>1.50e-08</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 2.454</td> <th>  Cond. No.          </th> <td>9.54e+03</td>
</tr>
</table><br/><br/>Notes:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.<br/>[2] The condition number is large, 9.54e+03. This might indicate that there are<br/>strong multicollinearity or other numerical problems.

2. This time, examine a regression of growth rates. Specifically, estimate an OLS regression to see if inflation and money growth are contemporaneously correlated:

$$
i_{t,t+h} = \alpha + \beta g_{t,t+h} + \epsilon_{t,t+h}
$$

    • Note that this is not a lagged regression, but rather a regular time-series regression.
    • Answer the questions below for a one-year horizon: h = 12.

    (a) Report the estimated R-squared.
    (b) Report the point-estimate of β.

```python
HORZ = FREQ

inflation = (prices / prices.shift(HORZ) -1).dropna()
money_growth = (money/money.shift(HORZ) - 1).dropna()
#money_growth = data.loc[money_growth.index,'Fed']

inflation.name = 'inflation'
money_growth.name = 'money growth'

X = money_growth
y = inflation

results = sm.OLS(y,sm.add_constant(X)).fit()
results.summary()
```

<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>        <td>inflation</td>    <th>  R-squared:         </th> <td>   0.008</td>
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared:    </th> <td>   0.007</td>
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th> <td>   6.370</td>
</tr>
<tr>
  <th>Date:</th>             <td>Thu, 15 Sep 2022</td> <th>  Prob (F-statistic):</th>  <td>0.0118</td> 
</tr>
<tr>
  <th>Time:</th>                 <td>15:13:57</td>     <th>  Log-Likelihood:    </th> <td>  1610.0</td>
</tr>
<tr>
  <th>No. Observations:</th>      <td>   748</td>      <th>  AIC:               </th> <td>  -3216.</td>
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   746</td>      <th>  BIC:               </th> <td>  -3207.</td>
</tr>
<tr>
  <th>Df Model:</th>              <td>     1</td>      <th>                     </th>     <td> </td>   
</tr>
<tr>
  <th>Covariance Type:</th>      <td>nonrobust</td>    <th>                     </th>     <td> </td>   
</tr>
</table>
<table class="simpletable">
<tr>
		<td></td>          <th>coef</th>     <th>std err</th>      <th>t</th>      <th>P>|t|</th>  <th>[0.025</th>    <th>0.975]</th>  
</tr>
<tr>
  <th>const</th>        <td>    0.0320</td> <td>    0.002</td> <td>   13.839</td> <td> 0.000</td> <td>    0.027</td> <td>    0.037</td>
</tr>
<tr>
  <th>money growth</th> <td>    0.0729</td> <td>    0.029</td> <td>    2.524</td> <td> 0.012</td> <td>    0.016</td> <td>    0.130</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>211.421</td> <th>  Durbin-Watson:     </th> <td>   0.020</td> 
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td>  <th>  Jarque-Bera (JB):  </th> <td> 484.782</td> 
</tr>
<tr>
  <th>Skew:</th>          <td> 1.517</td>  <th>  Prob(JB):          </th> <td>5.38e-106</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 5.519</td>  <th>  Cond. No.          </th> <td>    28.2</td> 
</tr>
</table><br/><br/>Notes:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.

3. The result of regressing inflation on money growth is very different from regressing CPI on Money. What do you conclude? Does it seem that variation in money contemporaneously explains variation in inflation? 

	In particular, what is wrong with one of the two regression models? Consider plotting the raw dependent and independent variable of each.

```python
ax = data[['CPI']].plot(color='b',linewidth=3,ylabel='CPI',legend=['CPI'])
ax2 = plt.twinx(ax)
data[['M2']].plot(ax=ax2,color='r',linewidth=3,ylabel='M2',legend=['M2'])
plt.legend(loc='upper center')
plt.show()
```

![png](output_10_0.png)

Clearly, when regressing CPI on M2 we detect a spurious correlation since both of these variable are non-stationary. This results in a high r-squared value which exists only because both of these series grow with time, not because of their correlation to each other.

```python
ax = inflation.plot(color='b',linewidth=3,ylabel='inflation',legend=['inflation'])
ax2 = plt.twinx(ax)
money_growth.plot(ax=ax2,color='r',linewidth=3,ylabel='money_growth',legend=['money_growth'])
plt.legend(loc='upper left')
plt.show()
```

![png](output_12_0.png)

The regression with money growth and inflation is more robust, since both of the variables are stationary. The low r-squared and low correlation suggest that variation in money alone is not sufficient in explaining the variation in inflation.

4. Answer the remaining questions regarding the estimation of inflation on money growth in part 2 above.

	Do the residuals seem to be iid? That is,

	(a) do they seem to be drawn from a constant variance?

	(b) do they have serial correlation?

	Assess this informally by plotting the time-series of estimated sample residuals, e.

```python
e = results.resid

if len(e.shape)==1:
    e = pd.Series(e)

e.plot()
```

    <AxesSubplot:>




    

![png](output_15_1.png)

```python
pd.concat([e,e.shift()],axis=1).corr()
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
	  <th>0</th>
	  <th>1</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>1.000000</td>
	  <td>0.990005</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>0.990005</td>
	  <td>1.000000</td>
	</tr>
  </tbody>
</table>
</div>

Errors have positive serial correlation and don't have constant variance as well. Due to this, errors are not i.i.d.

5. Suppose that the residuals are heteroskedastic and have serial correlation.

	(a) Report whether the estimates for α or β are statistically significant relative to 0, for a

	significance level of 5%.$^1$

	(b) Do you have concerns about the accuracy of the reported p-values?

	(c) Do you have concerns about the estimated beta? For small samples, for large samples?

- Estimates for α or β are statistically significant relative to 0, for a significance level of 5% since the p-value for both is below 5%
- We should be concerned about the accuracy of these p-values since the residuals do not have constant variance. Non-constant variance would result in an unreliable t-statistic
- Estimated betas are still unbiased, however they are not efficient any more. For small samples, this would mean that betas can be quite different between different samples.

6. OPTIONAL

	(a) Assess the residuals with the Durbin-Watson test for serial correlation. $^2$

	(b) Formally assess heteroskedasticity of the residuals with White's test. $^3$

```python
from statsmodels.stats.stattools import durbin_watson
#perform Durbin-Watson test
dw_stats = durbin_watson(e)
print('Durbin Watson Test Statistic: {:,.2f}'.format(dw_stats))

from statsmodels.stats.diagnostic import het_white
X = results.model.exog
lm, pval, _, _ = het_white(e,X)
print(f'White-test for Heteroskedasticity p-value is {pval:.4%}')
```

    Durbin Watson Test Statistic: 0.02
    White-test for Heteroskedasticity p-value is 0.0098%

## 2. Forecasting via Regressions

Consider a forecasting (lagged) regression for inflation at horizon h:

$$
            i_{t,t+h} = \alpha + \beta x_{t−h,t} + \epsilon_{t,t+h}
$$

- Note that the regressor is lagged relative to the dependent variable.

1. Forecast using lagged inflation. Namely, estimate the above for
	
	- h = 1, 12, 24, 36
	- inflation as the regressor

	For each horizon regression, report the R-squared.

```python
def set_autoregressor(df,LAG):
    
    X = df.shift(LAG).dropna()
    y = df

    X,y = X.align(y,join='inner')
    X = X.values.reshape(-1,1)
    y = y.values.reshape(-1,1)

    return X,y
```

```python
LAG = FREQ

X,y = set_autoregressor(prices,LAG)
mod = LinearRegression().fit(X,y)
mod.score(X,y)

results = sm.OLS(y,sm.add_constant(X)).fit()
results.summary()
```

<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>            <td>y</td>        <th>  R-squared:         </th> <td>   0.999</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared:    </th> <td>   0.999</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th> <td>5.960e+05</td>
</tr>
<tr>
  <th>Date:</th>             <td>Thu, 15 Sep 2022</td> <th>  Prob (F-statistic):</th>  <td>  0.00</td>  
</tr>
<tr>
  <th>Time:</th>                 <td>15:13:58</td>     <th>  Log-Likelihood:    </th> <td> -1814.0</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   748</td>      <th>  AIC:               </th> <td>   3632.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   746</td>      <th>  BIC:               </th> <td>   3641.</td> 
</tr>
<tr>
  <th>Df Model:</th>              <td>     1</td>      <th>                     </th>     <td> </td>    
</tr>
<tr>
  <th>Covariance Type:</th>      <td>nonrobust</td>    <th>                     </th>     <td> </td>    
</tr>
</table>
<table class="simpletable">
<tr>
	<td></td>       <th>coef</th>     <th>std err</th>      <th>t</th>      <th>P>|t|</th>  <th>[0.025</th>    <th>0.975]</th>  
</tr>
<tr>
  <th>const</th> <td>    2.1157</td> <td>    0.197</td> <td>   10.714</td> <td> 0.000</td> <td>    1.728</td> <td>    2.503</td>
</tr>
<tr>
  <th>x1</th>    <td>    1.0145</td> <td>    0.001</td> <td>  771.992</td> <td> 0.000</td> <td>    1.012</td> <td>    1.017</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>264.441</td> <th>  Durbin-Watson:     </th> <td>   0.053</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.000</td>  <th>  Jarque-Bera (JB):  </th> <td>1607.849</td>
</tr>
<tr>
  <th>Skew:</th>          <td> 1.460</td>  <th>  Prob(JB):          </th> <td>    0.00</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 9.562</td>  <th>  Cond. No.          </th> <td>    296.</td>
</tr>
</table><br/><br/>Notes:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.

Regression result is amazing R-squared.

But is this regression valid?

2. Redo the previous problem, but this time with (lagged) money growth as the regressor instead of (lagged) inflation.
3. Redo the previous problem, this time using both (lagged) inflation and (lagged) money growth as the regressors.

## Stationary Transformation: Growth Rates

* Price Index to Inflation 
* Money to Money Growth

```python
horizons = FREQ * np.array([1,2,3])
if 1 not in horizons:
    horizons = np.insert(horizons,0,1)

r2 = pd.DataFrame(index=pd.Index(horizons,name='horizon (months)'),columns=['inflation','money growth','both'],dtype=float)
betas_uni = r2[['inflation','money growth']].copy()
betas_multi = betas_uni.copy()

for LAG in horizons:

    inflation = (prices / prices.shift(LAG) -1).dropna()
    money_growth = (money/money.shift(LAG) - 1).dropna()
#    money_growth = data.loc[money_growth.index,'Fed']
    inflation.name = 'inflation'
    money_growth.name = 'money growth'
    
    Xi,y = set_autoregressor(inflation,LAG)
    mod = LinearRegression().fit(Xi,y)    
    lab = r2.columns[0]
    r2.loc[LAG,lab] = mod.score(Xi,y)
    betas_uni.loc[LAG,lab] = mod.coef_
    
    Xm,y = set_autoregressor(money_growth,LAG)
    mod = LinearRegression().fit(Xm,y)
    lab = r2.columns[1]
    r2.loc[LAG,lab] = mod.score(Xm,y)
    betas_uni.loc[LAG,lab] = mod.coef_
        
    X = pd.DataFrame(index=inflation.index[LAG:],data=np.concatenate((Xi,Xm),axis=1),columns=['inflation','money growth'])
    y,X = inflation.align(X,join='inner')
    mod = LinearRegression().fit(X,y)
    lab = r2.columns[2]
    r2.loc[LAG,lab] = mod.score(X,y)
    betas_multi.loc[LAG,:] = mod.coef_
```

```python
display(pd.concat([betas_uni,betas_multi],axis=1,keys=['univariate','multivariate']).style.set_caption('betas').format('{:.1%}'))
display(r2.style.set_caption('r-squared').format('{:.1%}'))
```

<style type="text/css">
</style>
<table id="T_f4c21">
  <caption>betas</caption>
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_f4c21_level0_col0" class="col_heading level0 col0" colspan="2">univariate</th>
	  <th id="T_f4c21_level0_col2" class="col_heading level0 col2" colspan="2">multivariate</th>
	</tr>
	<tr>
	  <th class="blank level1" >&nbsp;</th>
	  <th id="T_f4c21_level1_col0" class="col_heading level1 col0" >inflation</th>
	  <th id="T_f4c21_level1_col1" class="col_heading level1 col1" >money growth</th>
	  <th id="T_f4c21_level1_col2" class="col_heading level1 col2" >inflation</th>
	  <th id="T_f4c21_level1_col3" class="col_heading level1 col3" >money growth</th>
	</tr>
	<tr>
	  <th class="index_name level0" >horizon (months)</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_f4c21_level0_row0" class="row_heading level0 row0" >1</th>
	  <td id="T_f4c21_row0_col0" class="data row0 col0" >63.1%</td>
	  <td id="T_f4c21_row0_col1" class="data row0 col1" >63.6%</td>
	  <td id="T_f4c21_row0_col2" class="data row0 col2" >63.5%</td>
	  <td id="T_f4c21_row0_col3" class="data row0 col3" >3.5%</td>
	</tr>
	<tr>
	  <th id="T_f4c21_level0_row1" class="row_heading level0 row1" >12</th>
	  <td id="T_f4c21_row1_col0" class="data row1 col0" >74.9%</td>
	  <td id="T_f4c21_row1_col1" class="data row1 col1" >42.3%</td>
	  <td id="T_f4c21_row1_col2" class="data row1 col2" >73.1%</td>
	  <td id="T_f4c21_row1_col3" class="data row1 col3" >19.4%</td>
	</tr>
	<tr>
	  <th id="T_f4c21_level0_row2" class="row_heading level0 row2" >24</th>
	  <td id="T_f4c21_row2_col0" class="data row2 col0" >63.1%</td>
	  <td id="T_f4c21_row2_col1" class="data row2 col1" >32.9%</td>
	  <td id="T_f4c21_row2_col2" class="data row2 col2" >52.5%</td>
	  <td id="T_f4c21_row2_col3" class="data row2 col3" >38.4%</td>
	</tr>
	<tr>
	  <th id="T_f4c21_level0_row3" class="row_heading level0 row3" >36</th>
	  <td id="T_f4c21_row3_col0" class="data row3 col0" >59.5%</td>
	  <td id="T_f4c21_row3_col1" class="data row3 col1" >47.5%</td>
	  <td id="T_f4c21_row3_col2" class="data row3 col2" >40.8%</td>
	  <td id="T_f4c21_row3_col3" class="data row3 col3" >50.4%</td>
	</tr>
  </tbody>
</table>

<style type="text/css">
</style>
<table id="T_1288b">
  <caption>r-squared</caption>
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_1288b_level0_col0" class="col_heading level0 col0" >inflation</th>
	  <th id="T_1288b_level0_col1" class="col_heading level0 col1" >money growth</th>
	  <th id="T_1288b_level0_col2" class="col_heading level0 col2" >both</th>
	</tr>
	<tr>
	  <th class="index_name level0" >horizon (months)</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_1288b_level0_row0" class="row_heading level0 row0" >1</th>
	  <td id="T_1288b_row0_col0" class="data row0 col0" >39.9%</td>
	  <td id="T_1288b_row0_col1" class="data row0 col1" >40.2%</td>
	  <td id="T_1288b_row0_col2" class="data row0 col2" >40.1%</td>
	</tr>
	<tr>
	  <th id="T_1288b_level0_row1" class="row_heading level0 row1" >12</th>
	  <td id="T_1288b_row1_col0" class="data row1 col0" >55.5%</td>
	  <td id="T_1288b_row1_col1" class="data row1 col1" >17.6%</td>
	  <td id="T_1288b_row1_col2" class="data row1 col2" >61.4%</td>
	</tr>
	<tr>
	  <th id="T_1288b_level0_row2" class="row_heading level0 row2" >24</th>
	  <td id="T_1288b_row2_col0" class="data row2 col0" >40.5%</td>
	  <td id="T_1288b_row2_col1" class="data row2 col1" >7.0%</td>
	  <td id="T_1288b_row2_col2" class="data row2 col2" >52.3%</td>
	</tr>
	<tr>
	  <th id="T_1288b_level0_row3" class="row_heading level0 row3" >36</th>
	  <td id="T_1288b_row3_col0" class="data row3 col0" >36.6%</td>
	  <td id="T_1288b_row3_col1" class="data row3 col1" >17.7%</td>
	  <td id="T_1288b_row3_col2" class="data row3 col2" >54.0%</td>
	</tr>
  </tbody>
</table>

4. Does either regressor seem to have forecasting power? Does combining them improve the forecast?

Lagged Inflation has some forecasting power but not by a lot. Combining inflation and money growth does improve the performance marginally.

5. Validity of the results

	(a) Plot the estimated residual for the forecasting regression at horizon h = 12 which uses both

	inflation and money growth as regressors.

	(b) Does it seem to have serial correlation?

	(c) Supposing the residual has serial correlation, does this give you concern for the betas above,

	or just the p-values?

```python
results = sm.OLS(y,sm.add_constant(X)).fit()

e = results.resid

if len(e.shape)==1:
    e = pd.Series(e)

results.summary()
```

<table class="simpletable">
<caption>OLS Regression Results</caption>
<tr>
  <th>Dep. Variable:</th>        <td>inflation</td>    <th>  R-squared:         </th> <td>   0.540</td> 
</tr>
<tr>
  <th>Model:</th>                   <td>OLS</td>       <th>  Adj. R-squared:    </th> <td>   0.539</td> 
</tr>
<tr>
  <th>Method:</th>             <td>Least Squares</td>  <th>  F-statistic:       </th> <td>   402.2</td> 
</tr>
<tr>
  <th>Date:</th>             <td>Thu, 15 Sep 2022</td> <th>  Prob (F-statistic):</th> <td>2.92e-116</td>
</tr>
<tr>
  <th>Time:</th>                 <td>15:13:58</td>     <th>  Log-Likelihood:    </th> <td>  997.05</td> 
</tr>
<tr>
  <th>No. Observations:</th>      <td>   688</td>      <th>  AIC:               </th> <td>  -1988.</td> 
</tr>
<tr>
  <th>Df Residuals:</th>          <td>   685</td>      <th>  BIC:               </th> <td>  -1975.</td> 
</tr>
<tr>
  <th>Df Model:</th>              <td>     2</td>      <th>                     </th>     <td> </td>    
</tr>
<tr>
  <th>Covariance Type:</th>      <td>nonrobust</td>    <th>                     </th>     <td> </td>    
</tr>
</table>
<table class="simpletable">
<tr>
		<td></td>          <th>coef</th>     <th>std err</th>      <th>t</th>      <th>P>|t|</th>  <th>[0.025</th>    <th>0.975]</th>  
</tr>
<tr>
  <th>const</th>        <td>   -0.0389</td> <td>    0.007</td> <td>   -5.791</td> <td> 0.000</td> <td>   -0.052</td> <td>   -0.026</td>
</tr>
<tr>
  <th>inflation</th>    <td>    0.4079</td> <td>    0.028</td> <td>   14.555</td> <td> 0.000</td> <td>    0.353</td> <td>    0.463</td>
</tr>
<tr>
  <th>money growth</th> <td>    0.5043</td> <td>    0.031</td> <td>   16.123</td> <td> 0.000</td> <td>    0.443</td> <td>    0.566</td>
</tr>
</table>
<table class="simpletable">
<tr>
  <th>Omnibus:</th>       <td>11.287</td> <th>  Durbin-Watson:     </th> <td>   0.010</td>
</tr>
<tr>
  <th>Prob(Omnibus):</th> <td> 0.004</td> <th>  Jarque-Bera (JB):  </th> <td>  13.418</td>
</tr>
<tr>
  <th>Skew:</th>          <td> 0.214</td> <th>  Prob(JB):          </th> <td> 0.00122</td>
</tr>
<tr>
  <th>Kurtosis:</th>      <td> 3.534</td> <th>  Cond. No.          </th> <td>    17.0</td>
</tr>
</table><br/><br/>Notes:<br/>[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.

```python
e.plot()
plt.show()
```

![png](output_36_0.png)

```python
from statsmodels.stats.stattools import durbin_watson
#perform Durbin-Watson test
dw_stats = durbin_watson(e)
print('Durbin Watson Test Statistic: {:,.2f}'.format(dw_stats))
```

    Durbin Watson Test Statistic: 0.01

Clearly, the model has positive serial correlation.

If the model has serial correlation, we are only concerned about the accuracy of the p-values. This is because the estimates are still unbiased and consistent, but the minimum variance property (which assume residuals to be i.i.d.) is not satisfied. 

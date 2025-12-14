---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Discussion - Homework 5
linter-yaml-title-alias: Discussion - Homework 5
---

# Discussion - Homework 5

```python
import numpy as np
import pandas as pd
pd.options.display.float_format = "{:,.4f}".format

import matplotlib.pyplot as plt
import seaborn as sns

import statsmodels.api as sm
from sklearn.linear_model import LinearRegression
```

## This notebook is for illustrative purposes
### You will not be able to run it, as it relies on modules, `factor_pricing.py`, `forecasts.py`

```python
import sys
sys.path.insert(0, '../cmds')
from portfolio import *
from factor_pricing import *
from forecasts import *
```

## Load Data

```python
filepath_data = '../data/factor_pricing_data.xlsx'
info = pd.read_excel(filepath_data,sheet_name='descriptions')
info.rename(columns={'Unnamed: 0':'Symbol'},inplace=True)
info.set_index('Symbol',inplace=True)

facs = pd.read_excel(filepath_data,sheet_name='factors (excess returns)')
facs.set_index('Date',inplace=True)

rf = pd.read_excel(filepath_data,sheet_name='risk-free rate')
rf.set_index('Date',inplace=True)
```

# 2. The Factors

## 2.1 and 2.2 Univariate Performance

```python
performanceMetrics(facs,annualization=12)
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
	  <th>Mean</th>
	  <th>Vol</th>
	  <th>Sharpe</th>
	  <th>Min</th>
	  <th>Max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.0831</td>
	  <td>0.1567</td>
	  <td>0.5305</td>
	  <td>-0.2324</td>
	  <td>0.1365</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0122</td>
	  <td>0.1005</td>
	  <td>0.1211</td>
	  <td>-0.1535</td>
	  <td>0.1834</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0275</td>
	  <td>0.1088</td>
	  <td>0.2529</td>
	  <td>-0.1397</td>
	  <td>0.1275</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.0448</td>
	  <td>0.0834</td>
	  <td>0.5376</td>
	  <td>-0.1873</td>
	  <td>0.1309</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.0333</td>
	  <td>0.0715</td>
	  <td>0.4652</td>
	  <td>-0.0694</td>
	  <td>0.0905</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.0655</td>
	  <td>0.1545</td>
	  <td>0.4241</td>
	  <td>-0.3430</td>
	  <td>0.1820</td>
	</tr>
  </tbody>
</table>
</div>

```python
performanceMetrics(facs['2015':],annualization=12)
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
	  <th>Mean</th>
	  <th>Vol</th>
	  <th>Sharpe</th>
	  <th>Min</th>
	  <th>Max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.1069</td>
	  <td>0.1602</td>
	  <td>0.6676</td>
	  <td>-0.1339</td>
	  <td>0.1365</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>-0.0058</td>
	  <td>0.0977</td>
	  <td>-0.0590</td>
	  <td>-0.0831</td>
	  <td>0.0712</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.0197</td>
	  <td>0.1325</td>
	  <td>-0.1488</td>
	  <td>-0.1397</td>
	  <td>0.1275</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.0395</td>
	  <td>0.0712</td>
	  <td>0.5553</td>
	  <td>-0.0480</td>
	  <td>0.0722</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.0022</td>
	  <td>0.0796</td>
	  <td>0.0282</td>
	  <td>-0.0694</td>
	  <td>0.0771</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.0255</td>
	  <td>0.1368</td>
	  <td>0.1865</td>
	  <td>-0.1243</td>
	  <td>0.0998</td>
	</tr>
  </tbody>
</table>
</div>

## 2.3 Correlation

```python
display_correlation(facs)
```

    MIN Correlation pair is ('RMW', 'SMB')
    MAX Correlation pair is ('HML', 'CMA')



    

![png](output_10_1.png)

```python
retsx = pd.read_excel(filepath_data,sheet_name='portfolios (excess returns)')
retsx.set_index('Date',inplace=True)
```

## 2.4 Tangency

```python
fig = plt.figure(figsize=(8,4))
ax1=fig.add_subplot(1,1,1)
tangency_weights(facs).plot.bar(ax=ax1);
```

![png](output_13_0.png)

```python
fig = plt.figure(figsize=(8,4))
ax1=fig.add_subplot(1,1,1)
tangency_weights(facs[['MKT','SMB','HML','UMD']]).plot.bar(ax=ax1);
```

![png](output_14_0.png)

# 3. Testing Modern Linear Pricing Models

## Models

```python
models = dict()
models['CAPM'] = ['MKT']
models['FF3'] = ['MKT','SMB','HML']
models['AQR'] = ['MKT','HML','RMW','UMD']
models['FF5'] = ['MKT','SMB','HML','RMW','CMA']
```

## Testing Factor Pricing

```python
for model in models.keys():
    print(f'\n\n\n======================================================')
    print(f'{model}: Factor Pricing')
    print(f'======================================================\n\n\n')
    LFPtests(retsx,facs[models[model]],useIntCS=False,annualization=12)
```

    ======================================================
    CAPM: Factor Pricing
    ======================================================
    
    
    
    Time-Series Test Plots



    

![png](output_18_1.png)

![png](output_18_2.png)

    Cross-Sectional Test Plots



    

![png](output_18_4.png)

![png](output_18_5.png)

    ESTIMATES

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
	  <th>premium-TS</th>
	  <th>premium-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.0831</td>
	  <td>0.0849</td>
	</tr>
  </tbody>
</table>
</div>

    MODEL FIT

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
	  <th>MAE-TS</th>
	  <th>MAE-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>error</th>
	  <td>0.0215</td>
	  <td>0.0214</td>
	</tr>
  </tbody>
</table>
</div>

    STATISTICAL SIGNIFICANCE

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
	  <th>time-series</th>
	  <th>priced</th>
	  <th>premium</th>
	</tr>
	<tr>
	  <th>p-values</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.0006</td>
	  <td>0.0003</td>
	</tr>
	<tr>
	  <th>error</th>
	  <td>0.0000</td>
	  <td>NaN</td>
	</tr>
  </tbody>
</table>
</div>

    "premium" p-value is the usual t-stat on the time-series factor mean.
    "priced" p-value of factor is the t-stat of forming the tangency portfolio.
    "priced" p-value of "error" is the joint-chi-squared test of the time-series alphas
    
    
    
    ======================================================
    FF3: Factor Pricing
    ======================================================
    
    
    
    Time-Series Test Plots



    

![png](output_18_13.png)

    Cross-Sectional Test Plots



    

![png](output_18_15.png)

    ESTIMATES

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
	  <th>premium-TS</th>
	  <th>premium-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.0831</td>
	  <td>0.1010</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0122</td>
	  <td>-0.0659</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0275</td>
	  <td>-0.0173</td>
	</tr>
  </tbody>
</table>
</div>

    MODEL FIT

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
	  <th>MAE-TS</th>
	  <th>MAE-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>error</th>
	  <td>0.0254</td>
	  <td>0.0161</td>
	</tr>
  </tbody>
</table>
</div>

    STATISTICAL SIGNIFICANCE

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
	  <th>time-series</th>
	  <th>priced</th>
	  <th>premium</th>
	</tr>
	<tr>
	  <th>p-values</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.0002</td>
	  <td>0.0003</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.9501</td>
	  <td>0.2147</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0146</td>
	  <td>0.0496</td>
	</tr>
	<tr>
	  <th>error</th>
	  <td>0.0000</td>
	  <td>NaN</td>
	</tr>
  </tbody>
</table>
</div>

    "premium" p-value is the usual t-stat on the time-series factor mean.
    "priced" p-value of factor is the t-stat of forming the tangency portfolio.
    "priced" p-value of "error" is the joint-chi-squared test of the time-series alphas
    
    
    
    ======================================================
    AQR: Factor Pricing
    ======================================================
    
    
    
    Time-Series Test Plots



    

![png](output_18_23.png)

    Cross-Sectional Test Plots



    

![png](output_18_25.png)

    ESTIMATES

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
	  <th>premium-TS</th>
	  <th>premium-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.0831</td>
	  <td>0.0866</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0275</td>
	  <td>-0.0409</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.0448</td>
	  <td>0.0455</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.0655</td>
	  <td>0.0553</td>
	</tr>
  </tbody>
</table>
</div>

    MODEL FIT

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
	  <th>MAE-TS</th>
	  <th>MAE-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>error</th>
	  <td>0.0235</td>
	  <td>0.0172</td>
	</tr>
  </tbody>
</table>
</div>

    STATISTICAL SIGNIFICANCE

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
	  <th>time-series</th>
	  <th>priced</th>
	  <th>premium</th>
	</tr>
	<tr>
	  <th>p-values</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.0000</td>
	  <td>0.0003</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0086</td>
	  <td>0.0496</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.0003</td>
	  <td>0.0002</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.0002</td>
	  <td>0.0029</td>
	</tr>
	<tr>
	  <th>error</th>
	  <td>0.0000</td>
	  <td>NaN</td>
	</tr>
  </tbody>
</table>
</div>

    "premium" p-value is the usual t-stat on the time-series factor mean.
    "priced" p-value of factor is the t-stat of forming the tangency portfolio.
    "priced" p-value of "error" is the joint-chi-squared test of the time-series alphas
    
    
    
    ======================================================
    FF5: Factor Pricing
    ======================================================
    
    
    
    Time-Series Test Plots



    

![png](output_18_33.png)

    Cross-Sectional Test Plots



    

![png](output_18_35.png)

    ESTIMATES

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
	  <th>premium-TS</th>
	  <th>premium-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.0831</td>
	  <td>0.0948</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0122</td>
	  <td>-0.0587</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0275</td>
	  <td>-0.0354</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.0448</td>
	  <td>0.0368</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.0333</td>
	  <td>-0.0154</td>
	</tr>
  </tbody>
</table>
</div>

    MODEL FIT

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
	  <th>MAE-TS</th>
	  <th>MAE-CS</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>error</th>
	  <td>0.0325</td>
	  <td>0.0136</td>
	</tr>
  </tbody>
</table>
</div>

    STATISTICAL SIGNIFICANCE

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
	  <th>time-series</th>
	  <th>priced</th>
	  <th>premium</th>
	</tr>
	<tr>
	  <th>p-values</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.0000</td>
	  <td>0.0003</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0941</td>
	  <td>0.2147</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.0740</td>
	  <td>0.0496</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.0000</td>
	  <td>0.0002</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.0000</td>
	  <td>0.0012</td>
	</tr>
	<tr>
	  <th>error</th>
	  <td>0.0000</td>
	  <td>NaN</td>
	</tr>
  </tbody>
</table>
</div>

    "premium" p-value is the usual t-stat on the time-series factor mean.
    "priced" p-value of factor is the t-stat of forming the tangency portfolio.
    "priced" p-value of "error" is the joint-chi-squared test of the time-series alphas

## Comparing Models

```python
mae = pd.DataFrame(columns=models.keys())
mae.index.name = 'MAE'

r2means = pd.DataFrame(columns=models.keys())
r2means.index.name = 'R-squared Means'

for model in models.keys():
    output = LFPts(retsx,facs[models[model]],annualization=12)
    mae.loc['Time-Series',model] = output['stats']['alpha'].mad()
    mae.loc['Cross-Section',model] = LFPcs(output['betas'],output['stats']['mean'],useInt=False)['errors'].mad()

    r2means.loc['Time-Series',model] = output['stats']['rsquared'].mean()
mae
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
	  <th>CAPM</th>
	  <th>FF3</th>
	  <th>AQR</th>
	  <th>FF5</th>
	</tr>
	<tr>
	  <th>MAE</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Time-Series</th>
	  <td>0.0212</td>
	  <td>0.0253</td>
	  <td>0.0236</td>
	  <td>0.0298</td>
	</tr>
	<tr>
	  <th>Cross-Section</th>
	  <td>0.0215</td>
	  <td>0.0162</td>
	  <td>0.0169</td>
	  <td>0.0136</td>
	</tr>
  </tbody>
</table>
</div>

## Linear Factor Decompositions

We see that the time-series r-squared metrics of the assets average below 60% in all models. 

Notably, they do not increase much with the addition of factors beyond MKT.

Thus, while MKT is likely useful in an LFD of these assets, the other factors would not be very useful.

```python
r2means
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
	  <th>CAPM</th>
	  <th>FF3</th>
	  <th>AQR</th>
	  <th>FF5</th>
	</tr>
	<tr>
	  <th>R-squared Means</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Time-Series</th>
	  <td>0.5275</td>
	  <td>0.5711</td>
	  <td>0.5757</td>
	  <td>0.5964</td>
	</tr>
  </tbody>
</table>
</div>

# 4. Extensions

## 4.1 Cross-sectional Estimation

See above.

As expected, the cross-sectional estimation delivers lower MAE due to having extra flexibility in choosing the factor premia.

Even without including an intercept in the CS regression, we find that the factor premia differ substantially from the time-series averages of the factors in many cases. 

* MKT and RMW are similar to the time-series estimate. 
* SMB, HML, CMA all become negative in the CS estimation! This flexibility is what decreases the MAE substantially. 
* UMD is much lower in the CS estimation, though still positive.

## 4.2 Using LFP Models

```python
window = 60
forecast = LFPfit_rolling(retsx,facs[models['AQR']],window=window).shift()
null = retsx.expanding(min_periods=window).mean().shift()

r2oos = oos_rsquared(retsx,forecast,null=null)
r2oos.describe()
```

    count   49.0000
    mean    -0.0025
    std      0.0062
    min     -0.0260
    25%     -0.0055
    50%     -0.0018
    75%      0.0008
    max      0.0130
    dtype: float64

```python
r2oos.plot.bar(figsize=(10,8));
```

![png](output_25_0.png)

### 4.2b

The model does a poor job of forecasting returns as seen by the mostly negative OOS r-squared. The OOS r-squared are all very close to 0.

```python
print(f'\nMAX forecasting power for {r2oos.idxmax()}: {r2oos.max():0.2f}')
print(f'MIN forecasting power for {r2oos.idxmin()}: {r2oos.min():0.2f}\n')
```

    MAX forecasting power for Ships: 0.01
    MIN forecasting power for Softw: -0.03
    

### 4.3c

```python
window_choices = [36,60,96]
R2oosWindows = pd.DataFrame(columns=window_choices)

for window in window_choices:
    null = retsx.expanding(min_periods=window).mean().shift()
    forecast = LFPfit_rolling(retsx,facs[models['AQR']],window=window).shift()
    r2oos = oos_rsquared(retsx,forecast,null=null)
    R2oosWindows[window] = r2oos.describe()

R2oosWindows
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
	  <th>36</th>
	  <th>60</th>
	  <th>96</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>49.0000</td>
	  <td>49.0000</td>
	  <td>49.0000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>-0.0014</td>
	  <td>-0.0025</td>
	  <td>-0.0017</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.0053</td>
	  <td>0.0062</td>
	  <td>0.0060</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>-0.0145</td>
	  <td>-0.0260</td>
	  <td>-0.0235</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>-0.0044</td>
	  <td>-0.0055</td>
	  <td>-0.0039</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>-0.0008</td>
	  <td>-0.0018</td>
	  <td>-0.0006</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.0017</td>
	  <td>0.0008</td>
	  <td>0.0012</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.0098</td>
	  <td>0.0130</td>
	  <td>0.0097</td>
	</tr>
  </tbody>
</table>
</div>

### 4.2d

```python
window = 60
null = retsx.expanding(min_periods=window).mean().shift()

R2oosModels = pd.DataFrame(columns=models.keys())
for model in models.keys():
    forecast = LFPfit_rolling(retsx,facs[models[model]],window=window).shift()
    r2oos = oos_rsquared(retsx,forecast,null=null)
    R2oosModels[model] = r2oos.describe()

R2oosModels
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
	  <th>CAPM</th>
	  <th>FF3</th>
	  <th>AQR</th>
	  <th>FF5</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>49.0000</td>
	  <td>49.0000</td>
	  <td>49.0000</td>
	  <td>49.0000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.0004</td>
	  <td>0.0000</td>
	  <td>-0.0025</td>
	  <td>-0.0029</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.0039</td>
	  <td>0.0048</td>
	  <td>0.0062</td>
	  <td>0.0071</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>-0.0099</td>
	  <td>-0.0177</td>
	  <td>-0.0260</td>
	  <td>-0.0205</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>-0.0012</td>
	  <td>-0.0020</td>
	  <td>-0.0055</td>
	  <td>-0.0071</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.0009</td>
	  <td>0.0006</td>
	  <td>-0.0018</td>
	  <td>-0.0022</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.0028</td>
	  <td>0.0026</td>
	  <td>0.0008</td>
	  <td>0.0019</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.0062</td>
	  <td>0.0091</td>
	  <td>0.0130</td>
	  <td>0.0119</td>
	</tr>
  </tbody>
</table>
</div>

### Results

We see that the forecasting power is not good for any of the three windows.

Furthermore, it is not strong for any of the models, though the CAPM performs best!

Note that this does not prove these models do not work, but it illustrates that they do not work well for these assets, at least when using their time-series-estimated premia.

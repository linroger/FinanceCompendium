---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Case: Grantham, Mayo, and Van Otterloo, 2012: Estimating the Equity Risk Premium) [9-211-051]."
linter-yaml-title-alias: "Case: Grantham, Mayo, and Van Otterloo, 2012: Estimating the Equity Risk Premium) [9-211-051]."
---

<div style="text-align: right"> Mark Hendricks </div>

<left>FINM 36700 - Portfolio Theory and Risk Management</left> 

<br>
<left>Fall 2022</left>

<h2><center> Homework 7 - Grantham, Mayo, and Van Otterloo, 2012: Estimating the Equity Risk Premium. </center></h2>

<center>Due on Monday, Nov 14</center>

<h3><span style="color:#00008B">Solution - Piyush Kontu</span></h3>

<h3><span style="color:#00008B">Email - pkontu@uchicago.edu</span></h3>

# Case: Grantham, Mayo, and Van Otterloo, 2012: Estimating the Equity Risk Premium) [9-211-051].

# 1) GMO

## <i> This section is not graded, and you do not need to submit your answers. But you are expected to consider these issues and be ready to discuss them. </i>

# 1.1) GMO's approach

## 1.1.a) Why does GMO believe they can more easily predict long-run than short-run asset class performance?

- GMO believes investors demand risk premia over the long run in stocks as stocks tend to lose money at "bad times". <br><br>
- GMO also believes since market prices could significantly deviate away from fundamental value in short run, the expected returns in short term could differ from the long run estimates.<br><br>
- This led GMO to believe that near term expected returns were noisy and that they can more easily predict long-run than short-run asset class performance.

## 1.1.b) What predicting variables does the case mention are used by GMO? Does this fit with the goal of long-run forecasts?

- GMO uses dividend yield estimates that investors were likely to require over the long run and the expected long-run dividend growth rate. <br><br>
- They employed the "Gordon Growth Model", which posits that long-run required return on stocks was the sum of fair dividend yield, required by the investors and expected long-run dividend growth.

<center> $R^{*} = \frac{D_{1}}{P_{0}^{*} + G}$

## 1.1.c) How has this approach led to contrarian positions?

- GMO though that prices could deviate from fundamental value, particularly at the level of broad asset classes such as U.S. stocks. <br><br>
- The believed that the prices would revert to fundamental value over time.<br><br>
- When the market has an overly optimistic view of future dividend, prices would exceed fair value. Investors would then eventually realize they were too optimistic and that prices would rever toward fair value.<br><br>
- Thus at times of high prices GMO would have a contrarian view of expected returns being low.<br><br>

## 1.1.d) How does this approach raise business risk and managerial career risk?

- GMO's contrarian approach would create business or managerial risk, if stocks do not revert to their fundamental value. <br><br>
- For exampleGMO turned very bearish on US stocks in 1997 and underweighted Stocks in their asset allocation funds. As U.S. stocks soared between 1997 and 2000, GMO's asset allocation underperformed severely and they lost nearly 60% of their assets to withdrawls. <br><br>
- Thus their contrarian trades could lead to heavy risks in case the prices fail to revert to their fundamental levels in the time span estimated by GMO.

# 1.2) Market Environment

## 1.2.a) We often estimate the market risk premium by looking at a large sample of historic data. What reasons does the case give to be skeptical that the market risk premium will be as high in the future as it has been over the past 50 years?

- GMO had a "dim" outlook for stocks in 2012, even though valuations had fallen from their 1999 peak. <br><br>
- GMO believed these valuations were still high by historical standards. After the 2008 drop, the price-earnings ratio on S&P 500 stood at 19.9 which was above its long-run average of 16. <br><br>
- GMO was sceptical that US firms could sustain the record profit margins they had delivered since 2009. They were further pessimistic about future earnings growth. <br><br>
- GMO still believed that stocks would continue to earn a healthy risk premium over the long run.

## 1.2.b) In 2007, GMO forecasts real excess equity returns will be negative. What are the biggest drivers of their pessimistic conditional forecast relative to the unconditional forecast. (See Exhibit 9.) 

- $\% \Delta(\frac{P}{E})$ or Expansion or Contraction multiple was estimated to be negative (-2.8%) for the 7 year forecast compared to 0% in the unconditional "steady state" forecast. <br><br>
- $\% \Delta(\frac{E}{S})$ or Profit Margin was similarly estimated to be negative (-3.9%) for the 7 year forecast compared to 0% in the unconditional "steady state" forecast. <br><br>
- These were the biggest drivers of the pessimistic conditional forecast.

## 1.2.c) In the 2011 forecast, what components has GMO revised most relative to 2007? Now how does their conditional forecast compare to the unconditional? (See Exhibit 10.)

- $\% \Delta(\frac{P}{E})$ or Expansion or Contraction multiple was upgraded from -2.8% in 2007 to 0.0% in 2011 causing the positive estimate in stock returns.<br><br>
- $\% \Delta(S)$ or Real Sales Growth per share was upgraded from 2.4% in 2007 to 2.9% in 2011 causing further addition to the positive estimate in stock returns.<br><br>

# 3. Consider the asset class forecasts in Exhibit 1.
## 1.3.a) Which asset class did GMO estimate to have a negative 10-year return over 2002-2011?<br><br>

- GMO estimated **US Equities** to have a negative 10-year return. <br><br>

## 1.3.b) Which asset classes substantially outperformed GMO's estimate over that time period?<br><br>

- **EM Equities** and **Foreign Government Debt** outperformed GMO's estimate by about 4% during this time.<br><br>

## 1.3.c) Which asset classes substantially underperformed GMO's estimate over that time period?<br><br>

- **US Treasury Bills**, which GMO estimated to have around 2% positive expected returns posted negative ~1% returns.<br><br>
- Similarly **US REITs** posted ~7% returns as compared to more than 11% estimated by GMO.<br><br>

# 4. Fund Performance.
## 1.4.a) In which asset class was GMWAX most heavily allocated throughout the majority of 1997-2011? <br><br>

- Through most of the period GMWAX was most heavily allocated in **U.S. Fixed Income.** <br><br>

## 1.4.b) Comment on the performance of GMWAX versus its benchmark. (No calculation needed, simply comment on the comparison in the exhibits.) <br><Br>

- The fund has been quite successful relative to the benchmark, with returns almost double the benchmark and a Sharpe ratio more than double. <br><br> 
- We don't have a long enough series of returns to do a more involved statistical analysis of the performance.

# Imports

```python
import pandas as pd
import numpy as np
import scipy.stats as stats
from scipy.stats import kurtosis, skew
from scipy.stats import norm
import seaborn as sns
import statsmodels.api as sm
from statsmodels.regression.rolling import RollingOLS


from sklearn.ensemble import RandomForestRegressor
from sklearn.linear_model import LinearRegression
from sklearn import tree
from sklearn.neural_network import MLPRegressor

import warnings
warnings.filterwarnings("ignore")

%matplotlib inline


import matplotlib.pyplot as plt
plt.rcParams['figure.figsize']=[15, 6]
import matplotlib.cm as cm
```

# Helper Functions

```python
def performance_summary(return_data):
    """ 
        Returns the Performance Stats for given set of returns
        Inputs: 
            return_data - DataFrame with Date index and Monthly Returns for different assets/strategies.
        Output:
            summary_stats - DataFrame with annualized mean return, vol, sharpe ratio. Skewness, Excess Kurtosis, Var (0.5) and
                            CVaR (0.5) and drawdown based on monthly returns. 
    """
    summary_stats = return_data.mean().to_frame('Mean').apply(lambda x: x*12)
    summary_stats['Volatility'] = return_data.std().apply(lambda x: x*np.sqrt(12))
    summary_stats['Sharpe Ratio'] = summary_stats['Mean']/summary_stats['Volatility']
    
    summary_stats['Skewness'] = return_data.skew()
    summary_stats['Excess Kurtosis'] = return_data.kurtosis()
    summary_stats['VaR (0.05)'] = return_data.quantile(.05, axis = 0)
    summary_stats['CVaR (0.05)'] = return_data[return_data <= return_data.quantile(.05, axis = 0)].mean()
    summary_stats['Min'] = return_data.min()
    summary_stats['Max'] = return_data.max()
    
    wealth_index = 1000*(1+return_data).cumprod()
    previous_peaks = wealth_index.cummax()
    drawdowns = (wealth_index - previous_peaks)/previous_peaks

    summary_stats['Max Drawdown'] = drawdowns.min()
    summary_stats['Peak'] = [previous_peaks[col][:drawdowns[col].idxmin()].idxmax() for col in previous_peaks.columns]
    summary_stats['Bottom'] = drawdowns.idxmin()
    
    recovery_date = []
    for col in wealth_index.columns:
        prev_max = previous_peaks[col][:drawdowns[col].idxmin()].max()
        recovery_wealth = pd.DataFrame([wealth_index[col][drawdowns[col].idxmin():]]).T
        recovery_date.append(recovery_wealth[recovery_wealth[col] >= prev_max].index.min())
    summary_stats['Recovery'] = recovery_date
    
    return summary_stats
```

```python
def regression_based_performance(factor,fund_ret,rf,constant = True):
    """ 
        Returns the Regression based performance Stats for given set of returns and factors
        Inputs:
            factor - Dataframe containing monthly returns of the regressors
            fund_ret - Dataframe containing monthly excess returns of the regressand fund
            rf - Monthly risk free rate of return
        Output:
            summary_stats - (Beta of regression, treynor ratio, information ratio, alpha). 
    """
    if constant:
        X = sm.tools.add_constant(factor)
    else:
        X = factor
    y=fund_ret
    model = sm.OLS(y,X,missing='drop').fit()
    
    if constant:
        beta = model.params[1:]
        alpha = round(float(model.params['const']),6) *12

        
    else:
        beta = model.params
    treynor_ratio = ((fund_ret - rf).mean()*12)/beta[0]
    tracking_error = (model.resid.std()*np.sqrt(12))
    if constant:        
        information_ratio = model.params[0]*12/tracking_error
    r_squared = model.rsquared
    if constant:
        return (beta,treynor_ratio,information_ratio,alpha,r_squared,tracking_error,model.resid,model)
    else:
        return (beta,treynor_ratio,r_squared,tracking_error,model.resid)
```

```python
def rolling_regression_param(factor,fund_ret,roll_window = 60):
    """ 
        Returns the Rolling Regression parameters for given set of returns and factors
        Inputs:
            factor - Dataframe containing monthly returns of the regressors
            fund_ret - Dataframe containing monthly excess returns of the regressand fund
            roll_window = rolling window for regression
        Output:
            params - Dataframe with time-t as the index and constant and Betas as columns
    """
    X = sm.add_constant(factor)
    y= fund_ret
    rols = RollingOLS(y, X, window=roll_window)
    rres = rols.fit()
    params = rres.params.copy()
    params.index = np.arange(1, params.shape[0] + 1)
    return params
    
```

# Reading Data

```python
gmo_total_ret = pd.read_excel(r'C:\Users\piyus\Documents\Python Scripts\data\gmo_analysis_data.xlsx',sheet_name = 'returns (total)', index_col = 0)
gmo_total_ret.index.name = 'Date'
```

```python
path = r'C:\Users\piyus\Documents\Python Scripts\data\gmo_analysis_data.xlsx'
rf = pd.read_excel(path,sheet_name = 'risk-free rate', index_col = 0)
rf.index.name = 'Date'
```

```python
path = r'C:\Users\piyus\Documents\Python Scripts\data\gmo_analysis_data.xlsx'
gmo_signals = pd.read_excel(path,sheet_name = 'signals', index_col = 0)
gmo_signals.index.name = 'Date'
```

```python
gmo_excess_ret = gmo_total_ret.copy()
for col in gmo_excess_ret.columns:
    gmo_excess_ret[col] = gmo_excess_ret[col] - rf['US3M']

gmo_excess_ret.tail()
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
	  <th>SPY</th>
	  <th>GMWAX</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.083903</td>
	  <td>-0.065589</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.090079</td>
	  <td>0.032416</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>-0.043269</td>
	  <td>-0.028286</td>
	</tr>
	<tr>
	  <th>2022-09-30</th>
	  <td>-0.095192</td>
	  <td>-0.071412</td>
	</tr>
	<tr>
	  <th>2022-10-31</th>
	  <td>0.077759</td>
	  <td>0.035155</td>
	</tr>
  </tbody>
</table>
</div>

## 2) Analyzing GMO

### This section utilizes data in the file, `gmo_analysis_data.xlsx`.
### Examine GMO's performance. Use the risk-free rate to convert the total returns to excess returns

## 2.1) Calculate the mean, volatility, and Sharpe ratio for GMWAX. Do this for three samples:

## • from inception through 2011
## • 2012-present
## • inception - present

```python
sub_samples = {
              '1993-2011' : ['1993','2011'],
              '2012-2022' : ['2012','2022'],
              '1993-2022' : ['1993','2022'],
              }

gmo_sum = []
for k,v in sub_samples.items():
    sub_gmo = gmo_excess_ret.loc[sub_samples[k][0]:sub_samples[k][1],['GMWAX']].dropna()
    gmo_summary = performance_summary(sub_gmo)
    gmo_summary = gmo_summary
    gmo_summary.index = [k]
    gmo_sum.append(gmo_summary)

gmo_summary = pd.concat(gmo_sum)
gmo_summary.loc[:,['Mean','Volatility','Sharpe Ratio']]
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
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1993-2011</th>
	  <td>0.015827</td>
	  <td>0.125011</td>
	  <td>0.126603</td>
	</tr>
	<tr>
	  <th>2012-2022</th>
	  <td>0.036635</td>
	  <td>0.091996</td>
	  <td>0.398229</td>
	</tr>
	<tr>
	  <th>1993-2022</th>
	  <td>0.024497</td>
	  <td>0.112314</td>
	  <td>0.218112</td>
	</tr>
  </tbody>
</table>
</div>

## Has the mean, vol, and Sharpe changed much since the case?

The mean increased and volatility decreased during 2012-2021, showing that GMO's forecasts and subsequently their asset allocations for GMWAX worked during this period of turmoil as compared to the previous sub-period of 1993-2011.

## 2.2 GMO believes a risk premium is compensation for a security's tendency to lose money at "bad times". For all three samples, analyze extreme scenarios by looking at -
## • Min return
## • 5th percentile (VaR-5th)
## • Maximum  Drawdown

```python
sub_samples = {
              '1993-2011' : ['1993','2011'],
              '2012-2022' : ['2012','2022'],
              '1993-2022' : ['1993','2022'],
              }

gmo_mdd = []
for k,v in sub_samples.items():
    sub_gmo = gmo_total_ret.loc[sub_samples[k][0]:sub_samples[k][1],['GMWAX']].dropna()
    gmo_drawdown = performance_summary(sub_gmo)
    gmo_drawdown = gmo_drawdown.loc[:,['Max Drawdown']]
    gmo_drawdown.index = [k]
    gmo_mdd.append(gmo_drawdown)

gmo_mdd = pd.concat(gmo_mdd)
gmo_mdd_summary = gmo_summary.loc[:,['Min','VaR (0.05)']].merge(gmo_mdd,how='inner',on=gmo_mdd.index).rename(columns={'key_0':'Sub-Sample'})
gmo_mdd_summary.index = gmo_mdd_summary['Sub-Sample']
gmo_mdd_summary = gmo_mdd_summary.drop(['Sub-Sample'],axis = 1)
gmo_mdd_summary
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
	  <th>Min</th>
	  <th>VaR (0.05)</th>
	  <th>Max Drawdown</th>
	</tr>
	<tr>
	  <th>Sub-Sample</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1993-2011</th>
	  <td>-0.149179</td>
	  <td>-0.059806</td>
	  <td>-0.355219</td>
	</tr>
	<tr>
	  <th>2012-2022</th>
	  <td>-0.118650</td>
	  <td>-0.039686</td>
	  <td>-0.216773</td>
	</tr>
	<tr>
	  <th>1993-2022</th>
	  <td>-0.149179</td>
	  <td>-0.048293</td>
	  <td>-0.355219</td>
	</tr>
  </tbody>
</table>
</div>

## 2.2.a) Does GMWAX have high or low tail-risk as seen by these stats

GMWAX seems to have low tail-risk as depicted by the tail risk statistics above. 

## 2.2.b) Does that vary much across the two subsamples?

The tail risk is especially low in the latter sub-period of 2012-2021. This could be a factor of two aspects, better forecasting by GMO or reduced sub-sample length leading to less market downturns.

## 2.3) For all three samples, regress excess returns of GMWAX on excess returns of SPY.

```python
reg_sub_sample = []
for k,v in sub_samples.items():    
    fund_ret = gmo_excess_ret.loc[sub_samples[k][0]:sub_samples[k][1],['GMWAX']].dropna()
    factor = gmo_excess_ret.loc[fund_ret.index[0]:fund_ret.index[-1],['SPY']]
    reg = regression_based_performance(factor,fund_ret,0)
    beta_mkt = reg[0][0]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]
    r_squared = reg[4]
    reg_sub_sample.append(pd.DataFrame([[beta_mkt,treynor_ratio,information_ratio,alpha,r_squared]],columns=['SPY Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = ['GMWAX '+k]))

reg_performance = pd.concat(reg_sub_sample)

```

## 2.3.a) Report the estimated alpha, beta, and r-squared.

```python
reg_performance.loc[:,['SPY Beta','Alpha','R-Squared']]
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
	  <th>SPY Beta</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>GMWAX 1993-2011</th>
	  <td>0.539616</td>
	  <td>-0.005748</td>
	  <td>0.507129</td>
	</tr>
	<tr>
	  <th>GMWAX 2012-2022</th>
	  <td>0.562232</td>
	  <td>-0.034488</td>
	  <td>0.764506</td>
	</tr>
	<tr>
	  <th>GMWAX 1993-2022</th>
	  <td>0.545600</td>
	  <td>-0.016992</td>
	  <td>0.577744</td>
	</tr>
  </tbody>
</table>
</div>

## 2.3.b) Is GMWAX a low-beta strategy? Has that changed since the case?

GMWAX seems to have a relatively moderate beta with the market: ~50%-56%, It's market beta is not very low, we can consider it a low-beta strategy. The beta remains quite stable across both sub-samples

```python
reg_performance.loc['GMWAX 2012-2022',['SPY Beta','Alpha','R-Squared']].to_frame().T
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
	  <th>SPY Beta</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>GMWAX 2012-2022</th>
	  <td>0.562232</td>
	  <td>-0.034488</td>
	  <td>0.764506</td>
	</tr>
  </tbody>
</table>
</div>

## 2.3.c) Does GMWAX provide alpha? Has that changed across the subsamples?

GMWAX has a negative alpha across both sub-samples. However, the alpha increases (becomes less negative) during 2012-2022.

## 3 Forecast Regressions

### This section utilizes data in the file,`gmo_analysis_data.xlsx`.

## 3.1) Consider the lagged regression, where the regressor, ($X$), is a period behind the target, ($r^{SPY}$).

\begin{align}

r^{SPY}_t = \alpha^{SPY,X}+(\beta^{SPY,X})'X_{t-1}+\epsilon^{SPY,X}_t

\end{align}

## Estimate (1) and report the $R^2$, as well as the OLS estimates for $\alpha$ and $\beta$. Do this for…
- $X$ as a single regressor, the dividend-price ratio.
- $X$ as a single regressor, the earnings-price ratio.
- $X$ as three regressors, the dividend-price ratio, the earnings-price ratio, and the 10-year yield.

## For each, report the r-squared.

```python
fund_ret = gmo_total_ret.loc[:,['SPY']]
signals = [['DP'],['EP'],['DP','EP','US10Y']]
df_lst= []
for signal in signals:
    factor = gmo_signals.loc[:,signal].shift(1)
    reg = regression_based_performance(factor,fund_ret,0)
    reg_params = []
    columns=[]
    indexes = []
    if len(signal) > 1:
            for ele in signal:
                columns.append(ele+'-Beta')
                indexes.append(ele)
            index = ', '.join(map(str, indexes))
    else:
        columns.append(str(signal[0]) + '-Beta')
        index = signal[0]
    for i in range(len(signal)):
        reg_params.append(reg[0][i])
    reg_params.append(reg[3]) #alpha
    reg_params.append(reg[4]) #r-squared
    
    lst_col= ['Alpha','R-Squared']
    for col in lst_col:
        columns.append(col)
    df_lst.append(pd.DataFrame([reg_params],columns=columns,index = [index]))
```

```python
df_lst[0]
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
	  <th>DP-Beta</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>0.00943</td>
	  <td>-0.11286</td>
	  <td>0.009355</td>
	</tr>
  </tbody>
</table>
</div>

```python
df_lst[1]
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
	  <th>EP-Beta</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>EP</th>
	  <td>0.003196</td>
	  <td>-0.071208</td>
	  <td>0.008613</td>
	</tr>
  </tbody>
</table>
</div>

```python
df_lst[2]
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
	  <th>DP-Beta</th>
	  <th>EP-Beta</th>
	  <th>US10Y-Beta</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP, EP, US10Y</th>
	  <td>0.007979</td>
	  <td>0.002651</td>
	  <td>-0.000968</td>
	  <td>-0.179196</td>
	  <td>0.016333</td>
	</tr>
  </tbody>
</table>
</div>

## 3.2) For each of the three regressions, let's try to utilize the resulting forecast in a trading strategy.
- Build the forecasted SPY returns: $\hat{r}^{SPY}_{t+1}$. Note that this denotes the forecast made using $X_t$ to forecast the $(t+1)$ return.
- Set the scale of the investment in SPY equal to 100 times the forecasted value:
$
w_t = 100 \hat{r}^{SPY}_{t+1}
$
- We are not taking this scaling too seriously. We just want the  strategy  to  go  bigger  inperiods where the forecast is high and to withdraw in periods where the forecast is low, or even negative.
- Calculate the return on this strategy:
$
r^X_{t+1} = w_tr^{SPY}_{t+1}
$

### You should now have the trading strategy returns, $r^x$ for each of the forecasts. For each strategy, estimate:
- mean, volatility, Sharpe,
- max-drawdown
- market alpha
- market beta
- market Information

```python
dp_forecast_rtn = (gmo_signals.loc[:,'DP'].shift(1).to_frame() * df_lst[0]['DP-Beta'])+df_lst[0]['Alpha']/12
dp_forecast_rtn = dp_forecast_rtn.rename(columns={'DP':'Forecasted Return'}) * 100
dp_strat_rtn = pd.DataFrame(dp_forecast_rtn['Forecasted Return']*gmo_total_ret.loc[:,['SPY']]['SPY'], columns=dp_forecast_rtn.columns, index=dp_forecast_rtn.index)
```

```python
ep_forecast_rtn = (gmo_signals.loc[:,'EP'].shift(1).to_frame() * df_lst[1]['EP-Beta'])+df_lst[1]['Alpha']/12
ep_forecast_rtn = ep_forecast_rtn.rename(columns={'EP':'Forecasted Return'}) * 100
ep_strat_rtn = pd.DataFrame(ep_forecast_rtn['Forecasted Return']*gmo_total_ret.loc[:,['SPY']]['SPY'], columns=ep_forecast_rtn.columns, index=ep_forecast_rtn.index)
```

```python
forecasted_rets = (np.array(gmo_signals.shift(1).loc[:,['DP','EP','US10Y']]) @ np.array(df_lst[2].loc[:,['DP-Beta','EP-Beta','US10Y-Beta']].T))
fac3_forecast_rtn = (pd.DataFrame(forecasted_rets,columns = ['Forecasted Return'],index= gmo_signals.index)) 
fac3_forecast_rtn['Forecasted Return'] = (fac3_forecast_rtn['Forecasted Return'] + float(df_lst[2]['Alpha']/12))*100
fac3_strat_rtn = pd.DataFrame(fac3_forecast_rtn['Forecasted Return'] *gmo_total_ret.loc[:,['SPY']]['SPY'], columns=fac3_forecast_rtn.columns, index=fac3_forecast_rtn.index)
```

```python
strats = {'DP': dp_strat_rtn.dropna(),
          'EP': ep_strat_rtn.dropna(),
          'DP-EP-US10Y': fac3_strat_rtn.dropna()
         }
factor = gmo_excess_ret.loc[:,['SPY']]
strat_summary =[]
for k,v in strats.items():
    strat = strats[k]
    perf_summary = performance_summary(strat)
    perf_summary['Negative Risk Premium Months'] = len(strat[strat['Forecasted Return'] - rf['US3M'] <0])
    perf_summary['Total Months'] = len(strat)
    perf_summary.index = [k]
    reg = regression_based_performance(factor[strat.index[0]:],strat,0)
    perf_summary['Market Beta'] = reg[0][0]
    perf_summary['Market Alpha'] = reg[3]
    perf_summary['Market Information Ratio'] = reg[2]
    strat_summary.append(perf_summary)
    

strat_summary_df = pd.concat(strat_summary)
strat_summary_df.loc[:,['Mean','Volatility','Sharpe Ratio','Max Drawdown','Market Beta','Market Alpha','Market Information Ratio']]
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
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	  <th>Max Drawdown</th>
	  <th>Market Beta</th>
	  <th>Market Alpha</th>
	  <th>Market Information Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>0.109453</td>
	  <td>0.148950</td>
	  <td>0.734832</td>
	  <td>-0.653023</td>
	  <td>0.859776</td>
	  <td>0.040452</td>
	  <td>0.538024</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>0.107797</td>
	  <td>0.128584</td>
	  <td>0.838341</td>
	  <td>-0.382250</td>
	  <td>0.730427</td>
	  <td>0.049176</td>
	  <td>0.724975</td>
	</tr>
	<tr>
	  <th>DP-EP-US10Y</th>
	  <td>0.125011</td>
	  <td>0.145570</td>
	  <td>0.858768</td>
	  <td>-0.522133</td>
	  <td>0.774636</td>
	  <td>0.062844</td>
	  <td>0.712933</td>
	</tr>
  </tbody>
</table>
</div>

## 3.3) GMO believes a risk premium is compensation for a security's tendency to lose money at "bad times". Let's consider risk characteristics.

## 3.3.a) For both strategies, the market, and GMO, calculate the monthly VaR for $\pi=.05$. Just use the quantile of the historic data for this VaR calculation.

```python
market_summary = performance_summary(gmo_excess_ret.loc[:,['SPY']])
gmo_summary = performance_summary(gmo_excess_ret.loc[:,['GMWAX']].dropna())
strat_var= pd.concat([strat_summary_df.loc[:,['VaR (0.05)']],market_summary.loc[:,['VaR (0.05)']],gmo_summary.loc[:,['VaR (0.05)']]])
strat_var
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
	  <th>VaR (0.05)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>-0.052255</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>-0.054128</td>
	</tr>
	<tr>
	  <th>DP-EP-US10Y</th>
	  <td>-0.064157</td>
	</tr>
	<tr>
	  <th>SPY</th>
	  <td>-0.076056</td>
	</tr>
	<tr>
	  <th>GMWAX</th>
	  <td>-0.048293</td>
	</tr>
  </tbody>
</table>
</div>

## 3.3.b) The GMO case mentions that stocks under-performed short-term bonds from 2000-2011. Does the dynamic portfolio above under-perform the risk-free rate over this time?

All dynamic portfolios outperform the risk-free rate.

```python
strats = {'DP': dp_strat_rtn.dropna(),
          'EP': ep_strat_rtn.dropna(),
          'DP-EP-US10Y': fac3_strat_rtn.dropna(),
          'Risk Free Rate': rf['US3M'].to_frame('Forecasted Return')
         }
strat_summary_0011 =[]
for k,v in strats.items():
    strat = (strats[k]['2000':'2011']['Forecasted Return']).to_frame('Forecasted Returns')
    perf_summary = performance_summary(strat)
    perf_summary.index = [k]
    strat_summary_0011.append(perf_summary)
    

strat_summary_df_0011 = pd.concat(strat_summary_0011)
strat_summary_df_0011.loc[:,['Mean','Volatility','Sharpe Ratio','Max Drawdown']]
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
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	  <th>Max Drawdown</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>0.039333</td>
	  <td>0.184208</td>
	  <td>0.213526</td>
	  <td>-0.653023</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>0.037271</td>
	  <td>0.133896</td>
	  <td>0.278356</td>
	  <td>-0.382250</td>
	</tr>
	<tr>
	  <th>DP-EP-US10Y</th>
	  <td>0.060802</td>
	  <td>0.157395</td>
	  <td>0.386299</td>
	  <td>-0.522133</td>
	</tr>
	<tr>
	  <th>Risk Free Rate</th>
	  <td>0.023062</td>
	  <td>0.005785</td>
	  <td>3.986632</td>
	  <td>0.000000</td>
	</tr>
  </tbody>
</table>
</div>

## 3.3.c) Based on the regression estimates, in how many periods do we estimate a negative risk premium?

```python
neg_risk_premium = strat_summary_df.loc[:,['Negative Risk Premium Months','Total Months']]
neg_risk_premium['Negative Risk Premium Months (%)'] = neg_risk_premium['Negative Risk Premium Months'] *100/ neg_risk_premium['Total Months']
neg_risk_premium
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
	  <th>Negative Risk Premium Months</th>
	  <th>Total Months</th>
	  <th>Negative Risk Premium Months (%)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>133</td>
	  <td>356</td>
	  <td>37.359551</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>133</td>
	  <td>356</td>
	  <td>37.359551</td>
	</tr>
	<tr>
	  <th>DP-EP-US10Y</th>
	  <td>132</td>
	  <td>356</td>
	  <td>37.078652</td>
	</tr>
  </tbody>
</table>
</div>

## 3.3.d) Do you believe the dynamic strategy takes on extra risk?

No, judging by the tail risk metrics and volatility of the dynamic strategies compared to SPY it does not seem like these strategies take on extra risk on the whole.

However, we must keep in mind that the strategies are dependent on running regressions with very little prediction power, so badly estimated parameters could lead to terrible performance. This is not evident in terms of very high volatility and tail risk in our backtesting period though.

```python
strat_summary_df.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.05)','Max Drawdown','Market Beta','Market Alpha','Market Information Ratio']]
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
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	  <th>VaR (0.05)</th>
	  <th>Max Drawdown</th>
	  <th>Market Beta</th>
	  <th>Market Alpha</th>
	  <th>Market Information Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>0.109453</td>
	  <td>0.148950</td>
	  <td>0.734832</td>
	  <td>-0.052255</td>
	  <td>-0.653023</td>
	  <td>0.859776</td>
	  <td>0.040452</td>
	  <td>0.538024</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>0.107797</td>
	  <td>0.128584</td>
	  <td>0.838341</td>
	  <td>-0.054128</td>
	  <td>-0.382250</td>
	  <td>0.730427</td>
	  <td>0.049176</td>
	  <td>0.724975</td>
	</tr>
	<tr>
	  <th>DP-EP-US10Y</th>
	  <td>0.125011</td>
	  <td>0.145570</td>
	  <td>0.858768</td>
	  <td>-0.064157</td>
	  <td>-0.522133</td>
	  <td>0.774636</td>
	  <td>0.062844</td>
	  <td>0.712933</td>
	</tr>
  </tbody>
</table>
</div>

```python
market_summary.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.05)','Max Drawdown']]
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
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	  <th>VaR (0.05)</th>
	  <th>Max Drawdown</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>0.080302</td>
	  <td>0.149339</td>
	  <td>0.537714</td>
	  <td>-0.076056</td>
	  <td>-0.560012</td>
	</tr>
  </tbody>
</table>
</div>

## 4. Out-of-Sample Forecasting

This section utilizes data in the file, `gmo_analysis_data.xlsx`.

Reconsider the problem above, of estimating (1) for $x$. The reported $R^2$ was the in-sample $R^2$ it examined how well the forecasts fit in the sample from which the parameters were estimated. <br><br>

**In particular, focus on the case of using both dividend-price and earnings-price as signals.**

Let's consider the out-of-sample r-squared. To do so, we need the following:

- Start at $t=60$.
- Estmiate (1) only using data through time $t$.
- Use the estimated parameters of (1), along with $x_{t+1}$ to calculate the out-of-sample forecast for the following period, $t+1$.
\begin{align}
\hat{r}^{SPY}_{t+1} = \hat{a}^{SPY,x}_t+(\beta^{SPY,x})'x_t 
\end{align}
- Calculate the $t+1$ forecast error,
\begin{align}
  e^x_{t+1} = r^{SPY}_{t+1} - \hat{r}^{SPY}_{t+1}
\end{align}
- Move to $t=61$, and loop through the rest of the sample.

You now have the time-series of out-of-sample prediction errors, $e^x$.

Calculate the time-series of out-of-sample prediction errors $e^0$, which are based on the null forecast:

\begin{align*}

\bar{r}^{SPY}_{t+1} &= \frac{1}{t}\sum^{t}_{i=1}r^{SPY}_i \\

e^0_{t+1} &= r^{SPY}_{t+1} - \bar{r}^{SPY}_{t+1}

\end{align*}

```python
def OOS_r2(df, factors, start):
    y = df['SPY']
    X = sm.add_constant(factors)

    forecast_err, null_err = [], []

    for i,j in enumerate(df.index):
        if i >= start:
            currX = X.iloc[:i]
            currY = y.iloc[:i]
            reg = sm.OLS(currY, currX, missing = 'drop').fit()
            null_forecast = currY.mean()
            reg_predict = reg.predict(X.iloc[[i]])
            actual = y.iloc[[i]]
            forecast_err.append(reg_predict - actual)
            null_err.append(null_forecast - actual)
            
    RSS = (np.array(forecast_err)**2).sum()
    TSS = (np.array(null_err)**2).sum()
    
    return ((1 - RSS/TSS),reg)
```

```python
factor = gmo_signals.loc[:,'EP'].shift(1).to_frame()
fund_ret = gmo_total_ret.loc[factor.index[0]:,['SPY']]
reg_ep = OOS_r2(fund_ret,factor,60)
OOS_RSquared_ep = reg_ep[0]
OOS_r2_ep = pd.DataFrame([[OOS_RSquared_ep]], columns = ['OOS R-Squared'], index = ['EP'])
reg_ep_params = reg_ep[1]
```

```python
factor = gmo_signals.loc[:,'DP'].shift(1).to_frame()
fund_ret = gmo_total_ret.loc[factor.index[0]:,['SPY']]
reg_dp = OOS_r2(fund_ret,factor,60)
OOS_RSquared_dp = reg_dp[0]
OOS_r2_dp = pd.DataFrame([[OOS_RSquared_dp]], columns = ['OOS R-Squared'], index = ['DP'])
reg_dp_params = reg_dp[1]
```

```python
factor = gmo_signals.loc[:,['DP','EP']].shift(1)
fund_ret = gmo_total_ret.loc[factor.index[0]:,['SPY']]
reg_epdp = OOS_r2(fund_ret,factor,60)
OOS_r2_epdp  = reg_epdp[0]
OOS_r2_epdp = pd.DataFrame([[OOS_r2_epdp]], columns = ['OOS R-Squared'], index = ['DP-EP'])
reg_epdp_params = reg_epdp[1]
```

```python
factor = gmo_signals.loc[:,['DP','EP','US10Y']].shift(1)
fund_ret = gmo_total_ret.loc[factor.index[0]:,['SPY']]
reg_all = OOS_r2(fund_ret,factor,60)
OOS_RSquared_all  = reg_all[0]
OOS_r2_all = pd.DataFrame([[OOS_RSquared_all]], columns = ['OOS R-Squared'], index = ['All'])
reg_all_params = reg_all[1]
```

### 4.1) Report the out-of-sample $R^2$:

\begin{align}

 R^2_{OOS} \equiv 1-\frac{\sum^T_{i=61}(e^x_i)^2}{\sum^T_{i=61}(e^0_i)^2} 

\end{align}

### note that unlike an in-sample r-squared, the out-of-sample r-squared can be anywhere between $(-\infty,1]$.

```python
oos_r2_sum = pd.concat([OOS_r2_dp,OOS_r2_ep,OOS_r2_epdp,OOS_r2_all])
oos_r2_sum
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
	  <th>OOS R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>-0.002424</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>-0.006966</td>
	</tr>
	<tr>
	  <th>DP-EP</th>
	  <td>-0.018277</td>
	</tr>
	<tr>
	  <th>All</th>
	  <td>-0.032191</td>
	</tr>
  </tbody>
</table>
</div>

### Did this forecasting strategy produce a positive OOS r-squared?

This forecasting strategy produces a negative OOS r-squared, which indicates our strategy fits the data worse than a horizontal line given by the expanding mean of the sample.

### 4.2) Re-do problem 3.2 using this OOS forecast. <br><br> How much better/worse is the OOS Earnings-Price ratio strategy compared to the in-sample version of 3.2?

The Out-of-Sample performs significantly worse than in-sample as expected. With lower mean, much higher volatility and tail risk measure, the oos performance seems to be taking much higher risk with a large negative beta to the market returns.

```python
def OOS_strat(df, factors, start, weight):
    returns = []
    y = df['SPY']
    X = sm.add_constant(factors)

    for i,j in enumerate(df.index):
        if i >= start:
            currX = X.iloc[:i]
            currY = y.iloc[:i]
            reg = sm.OLS(currY, currX, missing = 'drop').fit()
            pred = reg.predict(X.iloc[[i]])
            w = pred * weight
            returns.append((df.iloc[i]['SPY'] * w)[0])

    df_strat = pd.DataFrame(data = returns, index = df.iloc[-(len(returns)):].index, columns = ['Strat Returns'])
    return df_strat
```

```python
factor = gmo_signals.loc[:,'EP'].shift(1).to_frame()
fund_ret= gmo_total_ret.loc[factor.index[0]:,['SPY']]
OOS_EP_predict = OOS_strat(fund_ret,factor, 60, 100).rename(columns={'Strat Returns':'EP_OOS_Returns'})
```

```python
factor = gmo_signals.loc[:,'DP'].shift(1).to_frame()
fund_ret= gmo_total_ret.loc[factor.index[0]:,['SPY']]
OOS_DP_predict = OOS_strat(fund_ret,factor, 60, 100).rename(columns={'Strat Returns':'DP_OOS_Returns'})
```

```python
factor = gmo_signals.loc[:,['DP','EP']].shift(1)
fund_ret= gmo_total_ret.loc[factor.index[0]:,['SPY']]
OOS_EPDP_predict = OOS_strat(fund_ret,factor, 60, 100).rename(columns={'Strat Returns':'DP-EP_OOS_Returns'})
```

```python
factor = gmo_signals.loc[:,['DP','EP','US10Y']].shift(1)
fund_ret= gmo_total_ret.loc[factor.index[0]:,['SPY']]
OOS_all_predict = OOS_strat(fund_ret,factor, 60, 100).rename(columns={'Strat Returns':'All_OOS_Returns'})
```

```python
oos_prediction_sum = pd.concat([OOS_DP_predict.T,OOS_EP_predict.T,OOS_all_predict.T])
oos_prediction_sum = oos_prediction_sum.T

strats = {'DP': OOS_DP_predict.dropna(),
          'EP': OOS_EP_predict.dropna(),
          'DP-EP':OOS_EPDP_predict.dropna(),
          'All': OOS_all_predict.dropna(),
          'SPY':gmo_excess_ret.loc[OOS_all_predict.index[0]:,['SPY']].rename(columns={'SPY':'SPY_OOS_Returns'}),
          'US3M':rf['US3M'].to_frame('US3M_OOS_Returns')
         }
factor = gmo_excess_ret.loc[:,['SPY']]
strat_summary =[]
for k,v in strats.items():
    strat = strats[k]
    perf_summary = performance_summary(strat)
    perf_summary['Negative Risk Premium Months'] = len(strat[strat[k+'_OOS_Returns'] - rf['US3M'] <0])
    perf_summary['Total Months'] = len(strat)
    perf_summary.index = [k]
    reg = regression_based_performance(factor[strat.index[0]:],strat,0)
    perf_summary['Market Beta'] = reg[0][0]
    perf_summary['Market Alpha'] = reg[3]
    perf_summary['Market Information Ratio'] = reg[2]
    strat_summary.append(perf_summary)
    

strat_summary_df = pd.concat(strat_summary)
strat_summary_df.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.05)','Max Drawdown','Market Beta','Market Alpha','Market Information Ratio']]
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
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	  <th>VaR (0.05)</th>
	  <th>Max Drawdown</th>
	  <th>Market Beta</th>
	  <th>Market Alpha</th>
	  <th>Market Information Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>0.079751</td>
	  <td>0.176263</td>
	  <td>0.452454</td>
	  <td>-0.072559</td>
	  <td>-0.551925</td>
	  <td>1.006143</td>
	  <td>0.011580</td>
	  <td>0.146633</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>0.081898</td>
	  <td>0.165352</td>
	  <td>0.495294</td>
	  <td>-0.070971</td>
	  <td>-0.583693</td>
	  <td>0.540731</td>
	  <td>0.045264</td>
	  <td>0.318694</td>
	</tr>
	<tr>
	  <th>DP-EP</th>
	  <td>0.097393</td>
	  <td>0.229887</td>
	  <td>0.423658</td>
	  <td>-0.074182</td>
	  <td>-0.760910</td>
	  <td>0.463757</td>
	  <td>0.065976</td>
	  <td>0.302464</td>
	</tr>
	<tr>
	  <th>All</th>
	  <td>0.113149</td>
	  <td>0.252174</td>
	  <td>0.448693</td>
	  <td>-0.073484</td>
	  <td>-0.804959</td>
	  <td>0.485133</td>
	  <td>0.080280</td>
	  <td>0.333858</td>
	</tr>
	<tr>
	  <th>SPY</th>
	  <td>0.067758</td>
	  <td>0.156629</td>
	  <td>0.432599</td>
	  <td>-0.080228</td>
	  <td>-0.560012</td>
	  <td>1.000000</td>
	  <td>0.000000</td>
	  <td>2.224705</td>
	</tr>
	<tr>
	  <th>US3M</th>
	  <td>0.022880</td>
	  <td>0.006086</td>
	  <td>3.759219</td>
	  <td>0.000017</td>
	  <td>0.000000</td>
	  <td>-0.001079</td>
	  <td>0.022968</td>
	  <td>3.774782</td>
	</tr>
  </tbody>
</table>
</div>

### 4.3) Re-do problem 3.3 using this OOS forecast. <br><br> Is the point-in-time version of the strategy riskier?

Compared to the full sub-sample, the mean returns go down significantly during 2000-2011.The volatility slightly increasesthus the strategy experiences a lower Sharpe Ratio. Given the lower performance of the strategy and worse tail risk measures compared to SPY, the strategy does take on extra risk.

```python
oos_prediction_sum = pd.concat([OOS_DP_predict.T,OOS_EP_predict.T,OOS_all_predict.T])
oos_prediction_sum = oos_prediction_sum.T

strats = {'DP': OOS_DP_predict.dropna(),
          'EP': OOS_EP_predict.dropna(),
          'DP-EP':OOS_EPDP_predict.dropna(),
          'All': OOS_all_predict.dropna(),
          'US3M':rf['US3M'].to_frame('US3M_OOS_Returns')
         }
factor = gmo_excess_ret.loc[:,['SPY']]['2000':'2011']
strat_summary =[]
for k,v in strats.items():
    strat = strats[k]['2000':'2011']
    perf_summary = performance_summary(strat)
    perf_summary['Negative Risk Premium Months'] = len(strat[strat[k+'_OOS_Returns'] - rf['2000':'2011']['US3M'] <0])
    perf_summary['Total Months'] = len(strat)
    perf_summary.index = [k]
    reg = regression_based_performance(factor[strat.index[0]:],strat,0)
    perf_summary['Market Beta'] = reg[0][0]
    perf_summary['Market Alpha'] = reg[3]
    perf_summary['Market Information Ratio'] = reg[2]
    strat_summary.append(perf_summary)
    

strat_summary_df_0011 = pd.concat(strat_summary)
strat_summary_df_0011.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.05)','Max Drawdown','Market Beta','Market Alpha','Market Information Ratio']]
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
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	  <th>VaR (0.05)</th>
	  <th>Max Drawdown</th>
	  <th>Market Beta</th>
	  <th>Market Alpha</th>
	  <th>Market Information Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>-0.010895</td>
	  <td>0.163221</td>
	  <td>-0.066749</td>
	  <td>-0.094730</td>
	  <td>-0.551925</td>
	  <td>0.952248</td>
	  <td>-0.006228</td>
	  <td>-0.124928</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>0.038768</td>
	  <td>0.195919</td>
	  <td>0.197877</td>
	  <td>-0.085329</td>
	  <td>-0.583693</td>
	  <td>0.296065</td>
	  <td>0.040224</td>
	  <td>0.211832</td>
	</tr>
	<tr>
	  <th>DP-EP</th>
	  <td>0.043290</td>
	  <td>0.290943</td>
	  <td>0.148793</td>
	  <td>-0.100111</td>
	  <td>-0.760910</td>
	  <td>0.076108</td>
	  <td>0.043668</td>
	  <td>0.150212</td>
	</tr>
	<tr>
	  <th>All</th>
	  <td>0.084077</td>
	  <td>0.328892</td>
	  <td>0.255636</td>
	  <td>-0.091413</td>
	  <td>-0.804959</td>
	  <td>0.114138</td>
	  <td>0.084636</td>
	  <td>0.257752</td>
	</tr>
	<tr>
	  <th>US3M</th>
	  <td>0.023062</td>
	  <td>0.005785</td>
	  <td>3.986632</td>
	  <td>0.000035</td>
	  <td>0.000000</td>
	  <td>-0.002853</td>
	  <td>0.023052</td>
	  <td>3.997186</td>
	</tr>
  </tbody>
</table>
</div>

```python
neg_risk_premium = strat_summary_df.loc[:,['Negative Risk Premium Months','Total Months']]
neg_risk_premium['Negative Risk Premium Months (%)'] = neg_risk_premium['Negative Risk Premium Months'] *100/ neg_risk_premium['Total Months']
neg_risk_premium
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
	  <th>Negative Risk Premium Months</th>
	  <th>Total Months</th>
	  <th>Negative Risk Premium Months (%)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>DP</th>
	  <td>116</td>
	  <td>297</td>
	  <td>39.057239</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>114</td>
	  <td>297</td>
	  <td>38.383838</td>
	</tr>
	<tr>
	  <th>DP-EP</th>
	  <td>115</td>
	  <td>297</td>
	  <td>38.720539</td>
	</tr>
	<tr>
	  <th>All</th>
	  <td>111</td>
	  <td>297</td>
	  <td>37.373737</td>
	</tr>
	<tr>
	  <th>SPY</th>
	  <td>119</td>
	  <td>297</td>
	  <td>40.067340</td>
	</tr>
	<tr>
	  <th>US3M</th>
	  <td>0</td>
	  <td>357</td>
	  <td>0.000000</td>
	</tr>
  </tbody>
</table>
</div>

## 5. Extensions

### <i>This section is not graded, and you do not need to submit your answers. We may discuss some of these extensions.</i>

## 5.1 Classification and Regression Tree (CART)
### Re-do Section 3, but use CART in forecasting instead of a lagged regression.
- #### Consider using RandomForestRegressor from sklearn.ensemble.
- #### If you want to plot the tree, try using tree from sklearn.

## 5.2 Expand on the CART analysis by calculating the OOS stats, as in Section 4.

## 5.3. Re-do Section 3, but use a Neural Network in forecasting instead of a lagged regression.
- #### Consider using MLPRegressor from sklearn.neural network.

## 5.4 Expand on the Neural Network analysis by calculating the OOS stats, as in Section 4.

```python
def ml_model_predictions(model_cols, returns, signals, return_col, plots = False):
    
    forecasts_ML = returns.loc[:,[return_col]].expanding().mean().shift(1).dropna() 
    forecasts_ML.columns = ['Expanding Mean']

    score_ML = pd.DataFrame(columns=['Expanding Mean'],index=['score'],data=0)

    methods = ['OLS', 'Tree', 'NN']
    est = dict()

    y = returns.loc[:,[return_col]].iloc[1:].squeeze('columns').ravel()
    X = signals.loc[:,model_cols].shift(1).dropna()

    for method in methods:

        if method == 'OLS':
            est[method] = LinearRegression()
        elif method == 'Tree':
            est[method] = RandomForestRegressor(max_depth=3,random_state=1)
        elif method == 'NN':
            est[method] = MLPRegressor(hidden_layer_sizes=500,random_state=1)

        est[method].fit(X,y)
        forecasts_ML[method] = est[method].predict(X)
        score_ML[method] = est[method].score(X,y)    

    forecasts_ML.dropna(inplace=True)
    wts_ML = 100 * forecasts_ML

    spy_ML, _ = returns.loc[:,[return_col]].iloc[1:].align(forecasts_ML, join='right', axis=0)

    fund_returns_ML = wts_ML * spy_ML.values
    fund_returns_ML.insert(0,'Passive', spy_ML)
    
    if plots:
        fn = X.columns
        fig, axes = plt.subplots(nrows = 1,ncols=1, dpi=500);
        tree.plot_tree(est['Tree'].estimators_[0],feature_names = fn, filled=True)
        if len(model_cols) > 1:
            title_name = '-'.join(str(v) for v in model_cols)
        else:
            title_name = model_cols[0]
        plt.title('Signal - '+title_name, fontsize = 20)

    return fund_returns_ML
```

```python
ML_forecast_DP = ml_model_predictions(['DP'], gmo_total_ret, gmo_signals, 'SPY')
ML_forecast_EP = ml_model_predictions(['EP'], gmo_total_ret, gmo_signals, 'SPY')
ML_forecast_All = ml_model_predictions(['DP','EP','US10Y'], gmo_total_ret, gmo_signals, 'SPY')

```

```python
strats = {'DP': ML_forecast_DP,
          'EP': ML_forecast_EP,
          'All': ML_forecast_All
         }
ml_strat_summary = []
for k,v in strats.items():
    strat = strats[k]
    perf_summary = performance_summary(strat)
    perf_summary['Model'] = k
    perf_summary.index.name = 'Prediction Method'
    ml_strat_summary.append(perf_summary.reset_index().set_index(['Model','Prediction Method']))
    

ml_strat_summary_df = pd.concat(ml_strat_summary)
ml_strat_summary_df.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.05)','Max Drawdown']]

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
	  <th></th>
	  <th>Mean</th>
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	  <th>VaR (0.05)</th>
	  <th>Max Drawdown</th>
	</tr>
	<tr>
	  <th>Model</th>
	  <th>Prediction Method</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th rowspan="5" valign="top">DP</th>
	  <th>Passive</th>
	  <td>0.103112</td>
	  <td>0.149512</td>
	  <td>0.689657</td>
	  <td>-0.073980</td>
	  <td>-0.507980</td>
	</tr>
	<tr>
	  <th>Expanding Mean</th>
	  <td>0.093546</td>
	  <td>0.153528</td>
	  <td>0.609309</td>
	  <td>-0.072960</td>
	  <td>-0.517748</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>0.109454</td>
	  <td>0.148951</td>
	  <td>0.734833</td>
	  <td>-0.052255</td>
	  <td>-0.653026</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>0.243997</td>
	  <td>0.233893</td>
	  <td>1.043199</td>
	  <td>-0.052128</td>
	  <td>-0.404804</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>-0.028676</td>
	  <td>0.103232</td>
	  <td>-0.277780</td>
	  <td>-0.047667</td>
	  <td>-0.692603</td>
	</tr>
	<tr>
	  <th rowspan="5" valign="top">EP</th>
	  <th>Passive</th>
	  <td>0.103112</td>
	  <td>0.149512</td>
	  <td>0.689657</td>
	  <td>-0.073980</td>
	  <td>-0.507980</td>
	</tr>
	<tr>
	  <th>Expanding Mean</th>
	  <td>0.093546</td>
	  <td>0.153528</td>
	  <td>0.609309</td>
	  <td>-0.072960</td>
	  <td>-0.517748</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>0.107800</td>
	  <td>0.128587</td>
	  <td>0.838340</td>
	  <td>-0.054130</td>
	  <td>-0.382255</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>0.260798</td>
	  <td>0.227821</td>
	  <td>1.144749</td>
	  <td>-0.033396</td>
	  <td>-0.192857</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>0.035830</td>
	  <td>0.117096</td>
	  <td>0.305986</td>
	  <td>-0.029996</td>
	  <td>-0.363924</td>
	</tr>
	<tr>
	  <th rowspan="5" valign="top">All</th>
	  <th>Passive</th>
	  <td>0.103112</td>
	  <td>0.149512</td>
	  <td>0.689657</td>
	  <td>-0.073980</td>
	  <td>-0.507980</td>
	</tr>
	<tr>
	  <th>Expanding Mean</th>
	  <td>0.093546</td>
	  <td>0.153528</td>
	  <td>0.609309</td>
	  <td>-0.072960</td>
	  <td>-0.517748</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>0.125009</td>
	  <td>0.145568</td>
	  <td>0.858768</td>
	  <td>-0.064156</td>
	  <td>-0.522125</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>0.294050</td>
	  <td>0.241534</td>
	  <td>1.217427</td>
	  <td>-0.037636</td>
	  <td>-0.164454</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>0.205713</td>
	  <td>0.335166</td>
	  <td>0.613764</td>
	  <td>-0.133820</td>
	  <td>-0.758307</td>
	</tr>
  </tbody>
</table>
</div>

```python
ML_forecast_DP = ml_model_predictions(['DP'], gmo_total_ret, gmo_signals, 'SPY', plots = True)
ML_forecast_EP = ml_model_predictions(['EP'], gmo_total_ret, gmo_signals, 'SPY', plots = True)
ML_forecast_All = ml_model_predictions(['DP','EP','US10Y'], gmo_total_ret, gmo_signals, 'SPY', plots = True)

```

![png](output_85_0.png)

![png](output_85_1.png)

![png](output_85_2.png)

## ML OOS Stats

```python
def oos_ml_model_predictions(model_cols, returns, signals, return_col, window = 60):


    methods = ['OLS', 'Tree', 'NN']
    est = dict()

    forecasts_MLOOS = pd.DataFrame(columns=methods,index=returns.iloc[1:].index,dtype='float64')


    y = returns.loc[:,[return_col]].iloc[1:].squeeze('columns').ravel()
    Xlag = signals.loc[:,model_cols].shift(1).dropna()
    X = signals.loc[:,model_cols]

    for method in methods:

        for t in returns.iloc[1:].index[window-1:]:
            yt = returns.loc[:,[return_col]].iloc[1:].loc[:t].values.ravel()
            Xlag_t = Xlag.loc[:t,:].values
            x_t = X.loc[t,:].values.reshape(1,-1)

            if method == 'OLS':
                est = LinearRegression()
            elif method == 'Tree':
                est = RandomForestRegressor(max_depth=3,random_state=1)
            elif method == 'NN':
                est = MLPRegressor(hidden_layer_sizes=500,random_state=1)

            est.fit(Xlag_t,yt);
            predval = est.predict(x_t)[0]
            forecasts_MLOOS.loc[t,method] = predval

    forecasts_MLOOS.insert(0,'Mean', returns.loc[:,[return_col]].expanding().mean().shift(1).dropna())

    # prefer to date forecast by date of forecasted value, not date it was calculated
    forecasts_MLOOS = forecasts_MLOOS.shift(1).dropna()


    wts_MLOOS = 100 * forecasts_MLOOS

    spy_MLOOS, _ = returns.loc[:,[return_col]].iloc[1:].align(forecasts_MLOOS, join='right', axis=0)

    fund_returns_MLOOS = wts_MLOOS * spy_MLOOS.values
    fund_returns_MLOOS.insert(0,'Passive', spy_MLOOS)

    sigma_t = fund_returns_MLOOS.rolling(24).std()
    relative_vols = pd.DataFrame(sigma_t[['Passive']].to_numpy() / sigma_t.drop(columns=['Passive']).to_numpy(),columns=sigma_t.drop(columns=['Passive']).columns, index=sigma_t.index)
    wts_t = relative_vols * wts_MLOOS
    fund_returns_MLOOS = wts_t * spy_MLOOS.values
    fund_returns_MLOOS.insert(0,'Passive', spy_MLOOS)

    fund_returns_MLOOS.dropna(inplace=True)

    null = returns.loc[:,[return_col]].expanding(window+1).mean().shift(1).dropna() 
    actual = returns.loc[:,[return_col]].iloc[window+1:]

    forecast_err = pd.DataFrame()
    null_err = pd.DataFrame()
    for col in forecasts_MLOOS.columns:
        forecast_err[col] = forecasts_MLOOS[col] - actual[return_col]
        null_err[col] = null[return_col] - actual[return_col]
        
    oos_r2 = 1-(((forecast_err**2).sum())/(null_err**2).sum()).to_frame('OOS R-Squared')


    return (fund_returns_MLOOS,oos_r2)
```

```python
ML_oos_forecast_DP = oos_ml_model_predictions(['DP'], gmo_total_ret, gmo_signals, 'SPY')
ML_oos_forecast_EP = oos_ml_model_predictions(['EP'], gmo_total_ret, gmo_signals, 'SPY')
ML_oos_forecast_All = oos_ml_model_predictions(['DP','EP','US10Y'], gmo_total_ret, gmo_signals, 'SPY')

```

```python
oos_strats = {'DP': ML_oos_forecast_DP,
          'EP': ML_oos_forecast_EP,
          'All': ML_oos_forecast_All
         }
ml_oos_strat_summary = []
for k,v in oos_strats.items():
    strat_oos_r2 = oos_strats[k][1]
    strat_oos_r2['Model'] = k
    strat_oos_r2.index.name = 'Prediction Method'    
    ml_oos_strat_summary.append(strat_oos_r2.reset_index().set_index(['Model','Prediction Method']))
    

ml_oos_strat_summary_df = pd.concat(ml_oos_strat_summary)
ml_oos_strat_summary_df
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
	  <th></th>
	  <th>OOS R-Squared</th>
	</tr>
	<tr>
	  <th>Model</th>
	  <th>Prediction Method</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th rowspan="4" valign="top">DP</th>
	  <th>Mean</th>
	  <td>-0.000610</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>-0.003724</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>-0.112595</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>-0.415126</td>
	</tr>
	<tr>
	  <th rowspan="4" valign="top">EP</th>
	  <th>Mean</th>
	  <td>-0.000610</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>-0.005399</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>-0.146759</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>-0.322536</td>
	</tr>
	<tr>
	  <th rowspan="4" valign="top">All</th>
	  <th>Mean</th>
	  <td>-0.000610</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>-0.032424</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>-0.190611</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>-0.555478</td>
	</tr>
  </tbody>
</table>
</div>

```python
oos_strats = {'DP': ML_oos_forecast_DP,
          'EP': ML_oos_forecast_EP,
          'All': ML_oos_forecast_All
         }
ml_oos_strat_summary = []
for k,v in oos_strats.items():
    strat_oos = oos_strats[k][0]
    perf_summary = performance_summary(strat_oos)
    perf_summary['Model'] = k
    perf_summary.index.name = 'Prediction Method'
    ml_oos_strat_summary.append(perf_summary.reset_index().set_index(['Model','Prediction Method']))
    

ml_oos_strat_summary_df = pd.concat(ml_oos_strat_summary)
ml_oos_strat_summary_df
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
	  <th></th>
	  <th>Mean</th>
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	  <th>Skewness</th>
	  <th>Excess Kurtosis</th>
	  <th>VaR (0.05)</th>
	  <th>CVaR (0.05)</th>
	  <th>Min</th>
	  <th>Max</th>
	  <th>Max Drawdown</th>
	  <th>Peak</th>
	  <th>Bottom</th>
	  <th>Recovery</th>
	</tr>
	<tr>
	  <th>Model</th>
	  <th>Prediction Method</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
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
	  <th rowspan="5" valign="top">DP</th>
	  <th>Passive</th>
	  <td>0.075277</td>
	  <td>0.154132</td>
	  <td>0.488392</td>
	  <td>-0.477877</td>
	  <td>0.821185</td>
	  <td>-0.079281</td>
	  <td>-0.097796</td>
	  <td>-0.165187</td>
	  <td>0.126984</td>
	  <td>-0.507980</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-03-31</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>0.076434</td>
	  <td>0.146907</td>
	  <td>0.520291</td>
	  <td>-0.460815</td>
	  <td>0.774938</td>
	  <td>-0.071072</td>
	  <td>-0.091471</td>
	  <td>-0.157938</td>
	  <td>0.125081</td>
	  <td>-0.472397</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-08-31</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>0.075050</td>
	  <td>0.143639</td>
	  <td>0.522487</td>
	  <td>-0.452430</td>
	  <td>1.952827</td>
	  <td>-0.068957</td>
	  <td>-0.094543</td>
	  <td>-0.178187</td>
	  <td>0.158754</td>
	  <td>-0.523439</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2013-03-31</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>0.045380</td>
	  <td>0.154089</td>
	  <td>0.294503</td>
	  <td>-0.655870</td>
	  <td>4.274840</td>
	  <td>-0.074480</td>
	  <td>-0.113478</td>
	  <td>-0.219626</td>
	  <td>0.201013</td>
	  <td>-0.480150</td>
	  <td>2001-01-31</td>
	  <td>2011-09-30</td>
	  <td>2015-07-31</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>0.017465</td>
	  <td>0.145490</td>
	  <td>0.120046</td>
	  <td>-0.227580</td>
	  <td>0.871940</td>
	  <td>-0.074214</td>
	  <td>-0.096722</td>
	  <td>-0.119504</td>
	  <td>0.153155</td>
	  <td>-0.504001</td>
	  <td>2007-10-31</td>
	  <td>2012-02-29</td>
	  <td>2020-08-31</td>
	</tr>
	<tr>
	  <th rowspan="5" valign="top">EP</th>
	  <th>Passive</th>
	  <td>0.075277</td>
	  <td>0.154132</td>
	  <td>0.488392</td>
	  <td>-0.477877</td>
	  <td>0.821185</td>
	  <td>-0.079281</td>
	  <td>-0.097796</td>
	  <td>-0.165187</td>
	  <td>0.126984</td>
	  <td>-0.507980</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-03-31</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>0.076434</td>
	  <td>0.146907</td>
	  <td>0.520291</td>
	  <td>-0.460815</td>
	  <td>0.774938</td>
	  <td>-0.071072</td>
	  <td>-0.091471</td>
	  <td>-0.157938</td>
	  <td>0.125081</td>
	  <td>-0.472397</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-08-31</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>0.091111</td>
	  <td>0.164052</td>
	  <td>0.555380</td>
	  <td>0.017170</td>
	  <td>3.183160</td>
	  <td>-0.073299</td>
	  <td>-0.107847</td>
	  <td>-0.162669</td>
	  <td>0.191997</td>
	  <td>-0.447694</td>
	  <td>2009-02-28</td>
	  <td>2010-06-30</td>
	  <td>2014-06-30</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>0.049677</td>
	  <td>0.155868</td>
	  <td>0.318714</td>
	  <td>-0.258962</td>
	  <td>5.470476</td>
	  <td>-0.074427</td>
	  <td>-0.116079</td>
	  <td>-0.212539</td>
	  <td>0.214520</td>
	  <td>-0.346132</td>
	  <td>2007-10-31</td>
	  <td>2008-12-31</td>
	  <td>2011-04-30</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>-0.013099</td>
	  <td>0.159287</td>
	  <td>-0.082235</td>
	  <td>-0.231183</td>
	  <td>2.243243</td>
	  <td>-0.083699</td>
	  <td>-0.115310</td>
	  <td>-0.175895</td>
	  <td>0.163318</td>
	  <td>-0.674842</td>
	  <td>2002-09-30</td>
	  <td>2021-12-31</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th rowspan="5" valign="top">All</th>
	  <th>Passive</th>
	  <td>0.075277</td>
	  <td>0.154132</td>
	  <td>0.488392</td>
	  <td>-0.477877</td>
	  <td>0.821185</td>
	  <td>-0.079281</td>
	  <td>-0.097796</td>
	  <td>-0.165187</td>
	  <td>0.126984</td>
	  <td>-0.507980</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-03-31</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>0.076434</td>
	  <td>0.146907</td>
	  <td>0.520291</td>
	  <td>-0.460815</td>
	  <td>0.774938</td>
	  <td>-0.071072</td>
	  <td>-0.091471</td>
	  <td>-0.157938</td>
	  <td>0.125081</td>
	  <td>-0.472397</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-08-31</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>0.099757</td>
	  <td>0.164934</td>
	  <td>0.604827</td>
	  <td>0.292012</td>
	  <td>4.020404</td>
	  <td>-0.070062</td>
	  <td>-0.106250</td>
	  <td>-0.175175</td>
	  <td>0.219717</td>
	  <td>-0.440702</td>
	  <td>2009-02-28</td>
	  <td>2011-09-30</td>
	  <td>2014-05-31</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>0.014770</td>
	  <td>0.157643</td>
	  <td>0.093694</td>
	  <td>-1.278119</td>
	  <td>7.493084</td>
	  <td>-0.075815</td>
	  <td>-0.129892</td>
	  <td>-0.262540</td>
	  <td>0.205910</td>
	  <td>-0.483942</td>
	  <td>2000-07-31</td>
	  <td>2002-10-31</td>
	  <td>2007-04-30</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>-0.023446</td>
	  <td>0.172583</td>
	  <td>-0.135856</td>
	  <td>-0.577504</td>
	  <td>5.640226</td>
	  <td>-0.082106</td>
	  <td>-0.144192</td>
	  <td>-0.206185</td>
	  <td>0.245224</td>
	  <td>-0.732606</td>
	  <td>2000-08-31</td>
	  <td>2011-10-31</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>


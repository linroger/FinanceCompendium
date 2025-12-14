---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Please note the following:"
linter-yaml-title-alias: "Please note the following:"
---

<div style="text-align: right"> Mark Hendricks </div>

<left>FINM 36700 - Portfolio Theory and Risk Management</left> 

<br>
<left>Fall 2022</left>

<h2><center> Midterm #1 </center></h2>

<center>Monday, Oct 17</center>

<h3><span style="color:#00008B">TA Solution</span></h3>

# Please note the following:
- #### The exam is 100 points.
- #### You have 120 minutes to complete the exam.
- #### For every minute late you submit the exam, you will lose one point.
- #### You will upload your solution to the Midterm 1 assignment on Canvas, where you downloaded this.
- #### Your submission should be readable, (the graders can understand your answers,) and it should include all code used in your analysis.
- #### The exam is open-material, closed-communication.
- #### If you find any question to be unclear, state your interpretation and proceed. We will only answer questions of interpretation if there is a typo, error, etc.
- #### The exam will be graded for partial credit.

## Sections 2-4 of the exam rely on the data midterm 1.xlsx, which gives total returns for 5 futures. You do not need to know anything about futures per se–just consider these to be valid return series on 5 assets.
## This data file may be found in the class github repo, in the data folder. For your convenience, it is also posted on Canvas, in the Midterm exam.

# 1. Short Answer (30 pts)

## No calculations or data analysis in this section; conceptual answers will suffice.

1. <b>(5 pts) Suppose an endowment is optimizing across multiple asset classes: equities, bonds, commodities, and currencies. They are considering whether to add cryptocurrencies as a new asset class for their mean-variance optimization. Do you think it is reasonable to make this decision based on whether the Sharpe ratio of crypto is higher than the Sharpe ratios of their current asset classes? Explain.</b><br><br>

<span style="color:#00008B"> **Solution:** While a higher sharpe ratio should definitely be a consideration for adding crypto to the endowment portfolio, a higher priority should be to make this decision based on the correlation of crypto with other asset classes. If crypto has lower correlations with other asset classes, even with lower sharpe ratio crypto could boost the overall sharpe ratio of the endowment.<br><br> The question might be interpreted as, conditional on adding crypto, should it be added as a new asset class or as part of the traditional currencies portfolio. This is a reasonable interpretation of the question, and the answer would be the same as the answer listed above for the more obvious interpretation. (Namely, the Sharpe ratio would be a poor guide to whether it should be included in currencies or put in a new asset class. Rather, the covariance matrix of cryptocurrencies to the other asset classes is much more relevant.)</span>

2. <b>(5 pts) True or False. (And explain your reason.)<br><br>
	We found that small changes in estimated mean returns have large impacts on the mean-variance frontier. (By "frontier", we mean the set of achievable means and variances.)</b><br><br>

<span style="color:#00008B"> **Solution: <u>False</u>** The changes in estimated mean returns only have large impact <u> only on the weights of the mean-variance optimized portfolio and not on the frontier itself.</u> The MV solution (and not the frontier) is linear combination of the tangency portfolio and a riskless asset (GMV or risk-free rate). The reason for the sensitivity to the means is only partly about the means themselves and the tangency portfolio weights are sensitive to changes in mean return due to the nature of the inverted covariance matrix.</span>

3. <b> (5 pts) One might estimate the Value-at-Risk directly from the historic data, (the empirical cdf,)
or from using an approximation based on the normal distribution.<br><br>
	Which did we find performed better in actual data? How did we judge which performed better?</b><br><br>

<span style="color:#00008B"> **Solution:**  We found that the VaR ( at 5%) calculated using the approximation based on the normal distribution performed much better as it was able to provide the VaR estimate by frequency of days below the VaR value close to 5%. By definition of VaR, the number returns beyond the estimated VaR (5%) should be occurring with a frequency close to 5%. The notebook from Class Session 3 found that for many assets, the empirical CDF estimate of VaR led to a less accurate "hit ratio".</span>

4. <b> (5 pts) What approach does Harvard take to getting more realistic weights? What is a problem with this approach?</b><br><br>

<span style="color:#00008B"> **Solution:** Harvard places bounds on the portfolio allocation rather than implementing whatever numbers come out of the MV optimization problem along with a long only constraint on non-cash assets. The solution is numerical (rather than an explicit formula,) due to the inequality constraints. While the solution is computationally easy, it leads to the need for many boundary parameters, which greatly influence the solution. Thus, the solution may be overparameterized with little guide on how to set the parameters, or the motive to parameterize the problem to achieve a certain solution.</span>

5. <b> What aspect of tools such as Ridge regression and LASSO regression are useful in mean-variance optimization? That is, what problem in the classic MV solution are they addressing? </b><br><br>

<span style="color:#00008B"> **Solution:**  <span style="color:00008B">Both these tools limit positions from being too large, without specifying security-specific boundaries, and might prove better for out-of-sample performance by implementing a Bayesian approach to Mean-Variance optimization. Ridge and LASSO address the extreme weights produced by the mean-variance optimization by penalizing the objective function, (equivalently by regularizing the covariance matrix, which improves the stability of its inverse.) </span>

6. <b> 5pts) Consider three series: HFRIFWI, MLEIFCTR, and HDG. <br> Explain how they differ. That is, why were we interested in all three with regard to hedge-fund replication? </b><br><br>

<span style="color:#00008B"> **Solution:** 

<span style="color:#00008B"> MLEIFCTR attempts to replicate the HFRIFWI using a set of basic asset benchmarks, similar to what we did with our replicating regressions. HDG tracks a modified version of the ML Factor Model, but as a traded fund rather than a theoretical index. That is, it trades liquid securities suggested by the Factor Model, (slightly modified from MLEIFCTR.) Key to this question is demonstrating an understanding of survey, index, and traded fund.</span>

- <span style="color:#00008B"> **HFRIFWI** - Hedge fund Index Series. Index of surveyed hedge funds (2000 Holdings) designed to track the performance of the hedge market as a whole. Monthly returns based on surveys. <br><br></span>
- <span style="color:#00008B"> **MLEIFCTR** - Index Series created by Merrill Lynch, to replicate the performance of HFRI. Its a linear factor decomposition of the HFRI returns into 6 assets. This is not an asset and not an ETF. <br><br></span>
- <span style="color:#00008B"> **HDG** - Actual tradaeble asset trying to track the exchange series similar to MLEIFCTR, by actually trading on some liquid assets. HDG do not strictly adhere to the replication and would deviate from positions if they can get additional returns or reduce transaction cost. <br><br> </span>

# Imports

```python
import pandas as pd
import numpy as np
from scipy.stats import kurtosis, skew
from scipy.stats import norm
import seaborn as sns
import statsmodels.api as sm
from statsmodels.regression.rolling import RollingOLS
import warnings
warnings.filterwarnings("ignore")

%matplotlib inline

import matplotlib.pyplot as plt
plt.rcParams["figure.figsize"] = (16,6)
```

# Helper Functions

```python
def performance_summary(return_data, annualization = 12):
    """ 
        Returns the Performance Stats for given set of returns
        Inputs: 
            return_data - DataFrame with Date index and Monthly Returns for different assets/strategies.
        Output:
            summary_stats - DataFrame with annualized mean return, vol, sharpe ratio. Skewness, Excess Kurtosis, Var (0.5) and
                            CVaR (0.5) and drawdown based on monthly returns. 
    """
    summary_stats = return_data.mean().to_frame('Mean').apply(lambda x: x*annualization)
    summary_stats['Volatility'] = return_data.std().apply(lambda x: x*np.sqrt(annualization))
    summary_stats['Sharpe Ratio'] = summary_stats['Mean']/summary_stats['Volatility']

    summary_stats['Skewness'] = return_data.skew()
    summary_stats['Excess Kurtosis'] = return_data.kurtosis()
    summary_stats['VaR (0.05)'] = return_data.quantile(.05, axis = 0)
    summary_stats['CVaR (0.05)'] = return_data[return_data <= return_data.quantile(.05, axis = 0)].mean()
    
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
def mvo_performance_stats(asset_returns,cov_matrix,port_weights, port_type,period):
    """ 
        Returns the Annualized Performance Stats for given asset returns, portfolio weights and covariance matrix
        Inputs: 
            asset_return - Excess return over the risk free rate for each asset (n x 1) Vector
            cov_matrix = nxn covariance matrix for the assets
            port_weights = weights of the assets in the portfolio (1 x n) Vector
            port_type = Type of Portfolio | Eg - Tangency or Mean-Variance Portfolio
            period = Monthly frequency
    """
    
    ret = np.dot(port_weights,asset_returns)
    vol = np.sqrt(port_weights @ cov_matrix @ port_weights.T)*np.sqrt(period)
    sharpe = ret/vol

    stats = pd.DataFrame([[ret,vol,sharpe]],columns= ["Annualized Return","Annualized Volatility","Annualized Sharpe Ratio"], index = [port_type])
    return stats
```

```python
def tangency_portfolio_rfr(asset_return,cov_matrix, cov_diagnolize = False):
    """ 
        Returns the tangency portfolio weights in a (1 x n) vector
        Inputs: 
            asset_return - return for each asset (n x 1) Vector
            cov_matrix = nxn covariance matrix for the assets
    """
    if cov_diagnolize:
        asset_cov = np.diag(np.diag(cov_matrix))
    else:
        asset_cov = np.array(cov_matrix)
    inverted_cov= np.linalg.inv(asset_cov)
    one_vector = np.ones(len(cov_matrix.index))
    
    den = (one_vector @ inverted_cov) @ (asset_return)
    num =  inverted_cov @ asset_return
    return (1/den) * num
```

```python
def mv_portfolio_rfr(asset_return,cov_matrix,target_ret,tangency_port):
    """ 
        Returns the Mean-Variance portfolio weights in a (1 x n) vector when a riskless assset is available
        Inputs: 
            asset_return - Excess return over the risk free rate for each asset (n x 1) Vector
            cov_matrix = nxn covariance matrix for the assets
            target_ret = Target Return (Annualized)
            tangency_port = Tangency portfolio when a riskless assset is available
    """
    asset_cov = np.array(cov_matrix)
    inverted_cov= np.linalg.inv(asset_cov)
    one_vector = np.ones(len(cov_matrix.index))
    
    delta_den = (asset_return.T @ inverted_cov) @ (asset_return)
    delta_num = (one_vector @ inverted_cov) @ (asset_return)
    delta_tilde = (delta_num/delta_den) * target_ret
    return (delta_tilde * tangency_port)
```

```python
def gmv_portfolio(asset_return,cov_matrix):
    """ 
        Returns the Global Minimum Variance portfolio weights in a (1 x n) vector
        Inputs: 
            asset_return - return for each asset (n x 1) Vector
            cov_matrix = nxn covariance matrix for the assets
    """
    asset_cov = np.array(cov_matrix)
    inverted_cov= np.linalg.inv(asset_cov)
    one_vector = np.ones(len(cov_matrix.index))
    
    den = (one_vector @ inverted_cov) @ (one_vector)
    num =  inverted_cov @ one_vector
    return (1/den) * num
```

```python
def mv_portfolio(asset_return,cov_matrix,target_ret,tangency_port):
    """ 
        Returns the Mean-Variance portfolio weights in a (1 x n) vector when no riskless assset is available
        Inputs: 
            asset_return - total return for each asset (n x 1) Vector
            cov_matrix = nxn covariance matrix for the assets
            target_ret = Target Return (Not-Annualized)
            tangency_port = Tangency portfolio
    """
    omega_tan = tangency_portfolio_rfr(asset_return.mean(),cov_matrix)
    omega_gmv = gmv_portfolio(asset_return,cov_matrix) 
    
    mu_tan = asset_return.mean() @ omega_tan
    mu_gmv = asset_return.mean() @ omega_gmv
    
    delta = (target_ret - mu_gmv)/(mu_tan - mu_gmv)
    mv_weights = delta * omega_tan + (1-delta)*omega_gmv
    return mv_weights
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
        alpha = round(float(model.params['const']),6)
        
    else:
        beta = model.params
    treynor_ratio = ((fund_ret.values-rf.values).mean()*12)/beta[0]
    tracking_error = (model.resid.std()*np.sqrt(12))
    if constant:        
        information_ratio = model.params[0]*12/tracking_error
    r_squared = model.rsquared
    if constant:
        return (beta,treynor_ratio,information_ratio,alpha,r_squared,tracking_error)
    else:
        return (beta,treynor_ratio,r_squared,tracking_error)
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

```python
def calc_probability_lowret(num_years,mean_ret_check,mean_ret,vol):
        """ 
        Returns the Probability that the cumulative market return will fall short of the cumulative
        risk-free return for each period
        Inputs: 
            mean - annualized mean returns of market for a period.
            vol - annualized volatility of returns for a period
            num_years - Number of years to calculate
        Output:
            probability - DataFrame with probability for each period (step = 1)
        """
        lst = []
        for n in range (0,num_years+1,1):
            norm_val = np.sqrt(n)*(mean_ret_check - mean_ret)/(vol)
            prob = (norm.cdf(norm_val))*100
            lst.append(pd.DataFrame([[n,prob]],columns=['Time','Probability(%)']))
        probability = pd.concat(lst)
        return probability
```

# Reading Data

```python
total_ret = pd.read_excel(r'C:\Users\piyus\Documents\Python Scripts\data\midterm_1.xlsx',sheet_name = 'total returns', index_col = 'date')
total_ret.head()
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
	  <th>CL1</th>
	  <th>GC1</th>
	  <th>KC1</th>
	  <th>ES1</th>
	  <th>BP1</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2009-01-31</th>
	  <td>-0.113532</td>
	  <td>0.048627</td>
	  <td>0.061111</td>
	  <td>-0.086109</td>
	  <td>-0.007831</td>
	</tr>
	<tr>
	  <th>2009-02-28</th>
	  <td>0.044680</td>
	  <td>0.015187</td>
	  <td>-0.079479</td>
	  <td>-0.107294</td>
	  <td>-0.008309</td>
	</tr>
	<tr>
	  <th>2009-03-31</th>
	  <td>0.087892</td>
	  <td>-0.021111</td>
	  <td>0.034402</td>
	  <td>0.087209</td>
	  <td>0.001745</td>
	</tr>
	<tr>
	  <th>2009-04-30</th>
	  <td>-0.013826</td>
	  <td>-0.036543</td>
	  <td>-0.006491</td>
	  <td>0.094679</td>
	  <td>0.032897</td>
	</tr>
	<tr>
	  <th>2009-05-31</th>
	  <td>0.287437</td>
	  <td>0.098300</td>
	  <td>0.185518</td>
	  <td>0.055172</td>
	  <td>0.088934</td>
	</tr>
  </tbody>
</table>
</div>

## 2. Allocation (15 pts)

### Consider mean-variance optimization using total returns. (That is, you are NOT analyzing excess returns. No need to subtract or otherwise consider a risk-free rate.)

## 2.1 (5pts) Report the weights of the Global Minimum Variance (GMV) portfolio, $ω^{v}$, and the weights of the Tangency portfolio, $ω^{t}$.

```python
tr_performance = performance_summary(total_ret)
mean_total_ret =  np.array(tr_performance['Mean'])

tangency_port = tangency_portfolio_rfr(mean_total_ret,total_ret.cov())
gmv_port = gmv_portfolio(total_ret,total_ret.cov())
TangencyPort_df = pd.DataFrame(tangency_port,columns= ["Tangency Portfolio Weight"],index=tr_performance.index)
GMVPort_df = pd.DataFrame(gmv_port,columns= ["GMV Portfolio Weight"],index=total_ret.columns)
pd.concat([TangencyPort_df.T,GMVPort_df.T]).T
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
	  <th>Tangency Portfolio Weight</th>
	  <th>GMV Portfolio Weight</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>CL1</th>
	  <td>-0.128124</td>
	  <td>-0.030674</td>
	</tr>
	<tr>
	  <th>GC1</th>
	  <td>1.191087</td>
	  <td>0.179111</td>
	</tr>
	<tr>
	  <th>KC1</th>
	  <td>0.097813</td>
	  <td>-0.010639</td>
	</tr>
	<tr>
	  <th>ES1</th>
	  <td>4.220019</td>
	  <td>0.092154</td>
	</tr>
	<tr>
	  <th>BP1</th>
	  <td>-4.380796</td>
	  <td>0.770048</td>
	</tr>
  </tbody>
</table>
</div>

## 2.2 (5pts) What are the weights of the optimal portfolio, $ω^{∗}$, with a targeted total mean return of 0.20 annualized, (0.20/12 per month)?
## What is the volatility of this portfolio allocation?

```python
target_ret = 0.20/12
mv_port= mv_portfolio(total_ret,total_ret.cov(),target_ret,tangency_port)

MVPort_df = pd.DataFrame(mv_port,columns= ["Mean-Variance Portfolio Weight"],index=tr_performance.index)
MVPort_df
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
	  <th>Mean-Variance Portfolio Weight</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>CL1</th>
	  <td>-0.059678</td>
	</tr>
	<tr>
	  <th>GC1</th>
	  <td>0.480307</td>
	</tr>
	<tr>
	  <th>KC1</th>
	  <td>0.021639</td>
	</tr>
	<tr>
	  <th>ES1</th>
	  <td>1.320735</td>
	</tr>
	<tr>
	  <th>BP1</th>
	  <td>-0.763003</td>
	</tr>
  </tbody>
</table>
</div>

```python
mv_port_stats = mvo_performance_stats(mean_total_ret,total_ret.cov(),mv_port,'Mean-Variance Portfolio',12)
mv_port_stats
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
	  <th>Annualized Return</th>
	  <th>Annualized Volatility</th>
	  <th>Annualized Sharpe Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mean-Variance Portfolio</th>
	  <td>0.2</td>
	  <td>0.190461</td>
	  <td>1.050082</td>
	</tr>
  </tbody>
</table>
</div>

<span style="color:#00008B">where **Sharpe** ratio in the table above and elsewhere is being used loosely given that we have total, not excess, returns.</span>

## 2.3 (5pts) Suppose we re-did this problem assuming the existence of a risk-free rate. Would the solution with mean return of 0.20 be guaranteed to have less than or equal volatility as the solution above, where we did not have a risk-free rate? Why?

<span style="color:#00008B"> **Solution:** The MVO portfolio with mean return of 0.20 be guaranteed will have **lower volatility with a risk-free return included** compared to the solution with no risk free rate. The MVO solution with no risk free rate combines GMV portfolio with tangency portfolio. Since, the risk free rate will always have lower volatility compared to GMV (which is formed by some combination of risky assets), the MVO solution with risk free rate will always have lower volatility. <br><br>
Conceptually, adding another asset to the menu, (the risk-free asset,) can only improve the available investment opportunities, (the MV frontier.)</span>

## 3. Hedging & Replication (20pts)

### Consider replicating ES1 with BP1.
- #### include an intercept.
- #### estimate the hedge ratio over a rolling, 36-month window.
- #### For each month, you should have the optimal replicating position, which allows you to properly invest in BP1 (and a constant) to replicate ES1.
- #### Then calculate the return of that investment, which is the fitted regression value

### Thus, you should have a time-series of the replication results. Call this series, $r^{∗}$.

```python
factor =  pd.DataFrame(total_ret['BP1'].copy())
fund_ret = pd.DataFrame(total_ret['ES1'].copy())
rolling_reg = rolling_regression_param(factor,fund_ret,roll_window = 36)
rolling_reg.index = factor.index
factor_ret = factor.loc[rolling_reg.dropna().index]
one_df = pd.DataFrame(np.ones(factor_ret.shape[0])).T
one_df.columns = factor_ret.index
factor_ret = pd.concat([one_df,pd.DataFrame(factor_ret).T])
rolling_reg_replication = pd.DataFrame(np.diag(pd.DataFrame(np.array(rolling_reg[rolling_reg.dropna().index.min():]) @ np.array(factor_ret))),index = factor_ret.columns,columns = ['ES1'])
```

## 3.1 (5pts) Report the last five values of the timeseries of alpha and beta estimates.

```python
rolling_reg_params = rolling_reg.copy()
rolling_reg_params.index = total_ret.index
rolling_reg_params.tail(5)
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
	  <th>const</th>
	  <th>BP1</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-02-28</th>
	  <td>0.013660</td>
	  <td>1.178892</td>
	</tr>
	<tr>
	  <th>2022-03-31</th>
	  <td>0.014433</td>
	  <td>1.144168</td>
	</tr>
	<tr>
	  <th>2022-04-30</th>
	  <td>0.012270</td>
	  <td>1.247557</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.013008</td>
	  <td>1.186588</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>0.010191</td>
	  <td>1.251756</td>
	</tr>
  </tbody>
</table>
</div>

## 3.2 (5pts) Report the last five values of the timeseries, $r^{∗}$.

```python
rolling_reg_replication.rename(columns = {'ES1':'In-Sample $r^{*}$'}).tail(5)
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
	  <th>In-Sample $r^{*}$</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-02-28</th>
	  <td>0.010155</td>
	</tr>
	<tr>
	  <th>2022-03-31</th>
	  <td>-0.009789</td>
	</tr>
	<tr>
	  <th>2022-04-30</th>
	  <td>-0.038274</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.013573</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.030127</td>
	</tr>
  </tbody>
</table>
</div>

### In case the question was interpreted as getting Out of sample returns

```python
oos_returns = pd.DataFrame(np.diag(pd.DataFrame(np.array(rolling_reg[rolling_reg.dropna().index.min():].shift()) @ np.array(factor_ret))),index = factor_ret.columns,columns = ['ES1'])
oos_returns.dropna().rename(columns = {'ES1':'Out-Of-Sample $r^{*}$'}).tail(5)
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
	  <th>Out-Of-Sample $r^{*}$</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-02-28</th>
	  <td>0.011405</td>
	</tr>
	<tr>
	  <th>2022-03-31</th>
	  <td>-0.011298</td>
	</tr>
	<tr>
	  <th>2022-04-30</th>
	  <td>-0.031923</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.012864</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.025211</td>
	</tr>
  </tbody>
</table>
</div>

## 3.3 (5pts) Report the mean, volatility and mean-to-vol ratio of this replicated position, $r^{∗}$. Annualize the statistics.

```python
rolling_reg_performance = performance_summary(rolling_reg_replication.rename(columns = {'ES1':'In-Sample $r^{*}$'}))
rolling_reg_performance
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
	  <th>Skewness</th>
	  <th>Excess Kurtosis</th>
	  <th>VaR (0.05)</th>
	  <th>CVaR (0.05)</th>
	  <th>Max Drawdown</th>
	  <th>Peak</th>
	  <th>Bottom</th>
	  <th>Recovery</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>In-Sample $r^{*}$</th>
	  <td>0.126333</td>
	  <td>0.062546</td>
	  <td>2.019829</td>
	  <td>-0.35217</td>
	  <td>0.515144</td>
	  <td>-0.023069</td>
	  <td>-0.031456</td>
	  <td>-0.063843</td>
	  <td>2022-02-28</td>
	  <td>2022-06-30</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

```python
oos_rolling_reg_performance = performance_summary(oos_returns.rename(columns = {'ES1':'Out-Of-Sample $r^{*}$'}))
oos_rolling_reg_performance
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
	  <th>Skewness</th>
	  <th>Excess Kurtosis</th>
	  <th>VaR (0.05)</th>
	  <th>CVaR (0.05)</th>
	  <th>Max Drawdown</th>
	  <th>Peak</th>
	  <th>Bottom</th>
	  <th>Recovery</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Out-Of-Sample $r^{*}$</th>
	  <td>0.128111</td>
	  <td>0.062769</td>
	  <td>2.040989</td>
	  <td>-0.405036</td>
	  <td>1.163322</td>
	  <td>-0.022947</td>
	  <td>-0.030451</td>
	  <td>-0.054995</td>
	  <td>2016-05-31</td>
	  <td>2016-10-31</td>
	  <td>2017-03-31</td>
	</tr>
  </tbody>
</table>
</div>

## 3.4 (5pts) How correlated is this replicated position, $r^{∗}$, to ES1?

```python
print('Correlation of In-Sample Rolling Regression Fitted Returns with Actual Returns : ' + str(np.round(np.corrcoef(total_ret.loc[rolling_reg.dropna().index]['ES1'], rolling_reg_replication['ES1'])[0,1],5))+'\n\n')
print('Correlation of OOS Rolling Regression Fitted Returns with Actual Returns : ' + str(np.round(np.corrcoef(total_ret.loc[oos_returns.dropna().index]['ES1'], oos_returns['ES1'].dropna())[0,1],5)))

```

    Correlation of In-Sample Rolling Regression Fitted Returns with Actual Returns : 0.52104
    
    
    Correlation of OOS Rolling Regression Fitted Returns with Actual Returns : 0.4159

## 4. Modeling Risk (35pts)

###  Consider the return series of a portfolio invested 50% in ES1 (stocks) and 50% in GC1 (gold).
- #### Build a return stream with weights of 0.5 in EC1 and 0.5 in GC1.
- #### We will consider total returns—no need to subtract a risk-free rate.

```python
ES1_GC1_returns = (0.5 * total_ret['ES1'] + 0.5 * total_ret['GC1'] ).to_frame('ES1-GC1 50-50 Returns')
```

## 4.1 (10pts) Compare the performance statistics between ES1, GC1, and the 50/50 portfolio. Annualize mean and volatility.
- ### Mean
- ### Volatility
- ### Mean divided by volatility.
- ### Maximum Drawdown

```python
combined = pd.concat([total_ret.loc[:,['ES1']].T,total_ret.loc[:,['GC1']].T,ES1_GC1_returns.T]).T
perf_summary = performance_summary(combined)
perf_summary
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
	  <th>Skewness</th>
	  <th>Excess Kurtosis</th>
	  <th>VaR (0.05)</th>
	  <th>CVaR (0.05)</th>
	  <th>Max Drawdown</th>
	  <th>Peak</th>
	  <th>Bottom</th>
	  <th>Recovery</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>ES1</th>
	  <td>0.129117</td>
	  <td>0.151067</td>
	  <td>0.854698</td>
	  <td>-0.439491</td>
	  <td>0.723828</td>
	  <td>-0.071244</td>
	  <td>-0.091453</td>
	  <td>-0.203174</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-07-31</td>
	</tr>
	<tr>
	  <th>GC1</th>
	  <td>0.054008</td>
	  <td>0.160134</td>
	  <td>0.337267</td>
	  <td>0.113357</td>
	  <td>0.142579</td>
	  <td>-0.065664</td>
	  <td>-0.085920</td>
	  <td>-0.429597</td>
	  <td>2011-08-31</td>
	  <td>2015-12-31</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>ES1-GC1 50-50 Returns</th>
	  <td>0.091562</td>
	  <td>0.114079</td>
	  <td>0.802619</td>
	  <td>0.109368</td>
	  <td>0.253804</td>
	  <td>-0.045782</td>
	  <td>-0.058951</td>
	  <td>-0.120982</td>
	  <td>2022-03-31</td>
	  <td>2022-06-30</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

## 4.2 (5pts) How does the 50/50 portfolio compare to the individual components in terms of
- ### volatility
- ### maximum drawdown
- ### mean-to-vol ratio
## Is this as we would expect from the portfolio theory?

<span style="color:#00008B"> **Solution:** The 50-50 combined portfolio has lower volatility and Max Drawdown and higher Mean-to-Vol ratio (Sharpe Ratio). Portfolio Theory dictates that combining assets with less than perfect correlation the portfolio risk goes down. This **diversification** is what the theory suggests: volatility is less than the sum of its parts, and mean-vol ratio increases. The Maximum Drawdown shows a similar diversification, which is not guaranteed by theory but is typical empirically. Thus, this result is expected.</span>

## 4.3 (10pts) Calculate the 1-period, 1% CVaR of the 50/50 portfolio analytically.

- ### Use the normality formula.
- ### Ignore the mean in the formula—set it to 0.

## Calculate the CVaR in two different ways:

## 4.3.a) Use the full-sample volatility estimate.

```python
CVaR_full_sample = -(norm.pdf(2.33)/0.01  * ES1_GC1_returns.std())
CVaR_full_sample.to_frame('Full Sample CVar')           
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
	  <th>Full Sample CVar</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>ES1-GC1 50-50 Returns</th>
	  <td>-0.087027</td>
	</tr>
  </tbody>
</table>
</div>

## 4.3.b)  Use the latest value from the rolling 24-month volatility.

```python
sigma_rolling = ES1_GC1_returns.shift(1).rolling(24).std().dropna()
rolling_cvar = -(norm.pdf(2.33)/0.01 * sigma_rolling)
rolling_cvar.rename(columns={'ES1-GC1 50-50 Returns':'Rolling CVaR'},inplace =True)
rolling_cvar.tail(1)
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
	  <th>Rolling CVaR</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.090833</td>
	</tr>
  </tbody>
</table>
</div>

## 4.4 (10pts) What is the probability that over the next 10 years, ES1 underperforms the 50/50 portfolio?

## To answer the question,
- ### use statistical estimates of the returns over the full sample.
- ### Assume that log returns for both assets are normally distributed.

```python
ES1_mean = np.log(1 + combined.ES1).mean() * 12
Port1_mean = np.log(1 + combined['ES1-GC1 50-50 Returns']).mean() * 12
sigma = (np.log(1 + combined.ES1) - np.log(1 + combined['ES1-GC1 50-50 Returns'])).std() * np.sqrt(12)
mu = ES1_mean - Port1_mean

probability = calc_probability_lowret(10,0,mu,sigma)
probability = probability.set_index('Time')
probability
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
	  <th>Probability(%)</th>
	</tr>
	<tr>
	  <th>Time</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>50.000000</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>38.064680</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>33.373847</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>29.938619</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>27.173801</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>24.848077</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>22.840433</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>21.077561</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>19.510774</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>18.105615</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>16.836545</td>
	</tr>
  </tbody>
</table>
</div>


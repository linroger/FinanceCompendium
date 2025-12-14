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

<h2><center> Final </center></h2>

<center>Monday, Dec 5</center>

<h3><span style="color:#00008B">TA Solution</span></h3>

# Please note the following:
- #### The exam is 180 points.
- #### You have 180 minutes to complete the exam.
- #### For every minute late you submit the exam, you will lose one point.
- #### You will upload your solution to the Final Exam assignment on Canvas, where you downloaded this.
- #### Your submission should be readable, (the graders can understand your answers,) and it should include all code used in your analysis in a file format that the code can be executed. (ie. .ipynb preferred, .pdf is unacceptable.)
- #### The exam is open-material, closed-communication.
- #### If you find any question to be unclear, state your interpretation and proceed. We will only answer questions of interpretation if there is a typo, error, etc.
- #### The exam will be graded for partial credit.

## Data: Some questions in the exam rely on the data `final_exam_data.xlsx`.

- #### sheet "futures (excess returns)": monthly excess returns on 14 commodity futures.
- #### sheet "factors (excess returns)": monthly excess returns on factors, (MKT and UMD.)
- #### sheet "forecasting (weekly)": weekly total returns on gold (GLD) along with two interestrate series used as signals
- #### sheet "fx (daily)": daily FX rate on GBP (in terms of dollars) along with the risk-free rate on dollars (SOFR) and risk-free rate on GBP (SONIA).

## This data file may be found in the class github repo, in the data folder. For your convenience, it is also posted on Canvas, in the Midterm exam.

# 1. Short Answer (50 pts)

1. <b>(5 pts) 
Consider our momentum construction of going long the biggest winners and short the biggest losers.<br><br>
What is the tradeoff of focusing the long and short positions narrowly, (a single decile top and bottom) versus more broadly, (three deciles top and bottom)?
<br><br>Did our empirical investigation support this theoretical tradeoff?
</b><br><br>

<span style="color:#00008B"> **Solution:**  Creating Momentum with a single top and bottom decile, leads to higher mean returns as we the construction concentrates the winners and losers, but also increased idiosyncratic risk. However, a wider construction with 3 top and bottom deciles reduces the idiosyncratic risk as we have a broader range of securities and thus a more diversified portfolio.<br><br></span>

<span style="color:#00008B"> From our investigation in HW-6, this is exactly what we saw in the data: narrower construction had higher mean and higher volatility. <br><br></span>

2. <b>(5 pts) We investigated LTCM's market exposure and found it is nonlinear. Explain this nonlinearity:
does it imply LTCM has high upside, large downside, both, etc?</b>

<span style="color:#00008B"> **Solution:** We ran two regressions to analyze LTCM's exposure to market:</span><br><br>

<center> <span style="color:#00008B">$\tilde{r}^{LTCM} = \alpha + \beta_{1}\tilde{r}^{m}_{t} + \beta_{2}(\tilde{r}^{m}_{t})^{2} +\epsilon_t$ </span></center> <br>

<center><span style="color:#00008B"> $\tilde{r}^{LTCM} = \alpha + \beta\tilde{r}^{m}_{t} + \beta_{u}max(\tilde{r}^{m}_{t} - k_{1},0) + \beta_{d}max(k_{2} - \tilde{r}^{m}_{t},0) +\epsilon_t$</span></center> 

<span style="color:#00008B">and found that the beta to  $\text{SPY}^{2}$  returns is negative, LTCM's market exposure behaves as if it were short the market options. Similarly from the $2^{nd}$ regression we found the betas's indicating that LTCM seem to be short the call-like factor and long the put-like factor.</span> <br><br>

<span style="color:#00008B">Focussing on the second (option-like) regression, it indicates LTCM overperforms down markets and underperforms up markets. So limited upside and limited downside</span> <br><br>

<span style="color:#00008B">Based on the beta's of the nonlinear components in the regressions, we found that LTCM had a huge downside as they were shorting the volatility in the market. The negative exposure to $\text{SPY}^{2}$ indicates LTCM underperforms particularly large SPY movements (whether on the upside or downside).However, given the low $R^{2}$ of this quadratic regression, we cannot too much emphasis on the results.</span> <br><br>

3. <b> (5pts) State one reason that Mean-Variance optimization is not robust, (i.e. the solution is fragile with respect to the inputs.) </b><br>
<b>State one approach we discussed regarding how to improve the stability of our optimized portfolio.</b>

<span style="color:#00008B"> **Solution:**  Small changes in mean returns of underlying assets have large impact on the weights of the mean-variance optimized portfolio. The tangency portfolio weights are sensitive to changes in mean return due to the nature of the inverted covariance matrix.</span><br>

<span style="color:#00008B"> We discussed using Ridge and LASSO would address the extreme weights produced by the mean-variance optimization by penalizing the objective function, (equivalently by regularizing the covariance matrix, which improves the stability of its inverse.). Generally, regularizing/diagonalizing the covariance matrix would stabalize its inversion.</span><br>

4. <b> (5pts) You have monthly returns from January 2001 to December 2022 for 40 portfolios of assets. You want to test the performance of some of your Linear Factor Pricing Models using Time Series and Cross Sectional regressions.</b>
- <b>What would be the regression sample sizes for the TS regression? How many TS regressions would you estimate? </b><br><br>
- <b> What would be the regression sample sizes for the CS regression? How many CS regressions would you estimate?</b><br><br>

<span style="color:#00008B"> **Solution:** For the TS test, we would need to run 40 regressions. Each regression would use 22 year monthly excess returns of one of the 40 assets as our dependent variable and returns of the factor portfolios as the independent variables. Thus there will be a total sample size of 22*12 = 264 records.</span> <br><br>

<span style="color:#00008B">  For the CS test, we would need to run 1 regression. The regression would use mean of 22 year monthly excess returns of one of the 40 assets as our dependent variable and the $\beta 's$ to each factor estimated from the TS regressions as the independent variables. Thus the sample size would be 40.</span><br><br>

5. <b>  (5pts) GMO stated that they had a "contrarian" investment style. What did they mean by this? Was this seen in our investigation of the fund, GMWAX?</b><br><br>

<span style="color:#00008B"> **Solution:** GMO is a "value" investor in the sense of looking for low prices per fundamentals. This inherently places them in a position of going against what is hot in the market.</span> <br><br> 

<span style="color:#00008B"> GMO opinionated that prices could deviate from fundamental value, particularly at the level of broad asset classes such as U.S. stocks. The believed that the prices would revert to fundamental value over time. When the market has an overly optimistic view of future dividend, prices would exceed fair value. Investors would then eventually realize they were too optimistic and that prices would rever toward fair value.Thus at times of high prices GMO would have a contrarian view of expected returns being low.</span> <br><br>

<span style="color:#00008B"> However, our analysis of GMWAX showed that the fund had $\beta^{\text{SPY}}$ and correlation to SPY! Thus, GMWAX did not seem very contrarian in its performance.</span> <br><br>

6. <b> (5pts) How does Harvard make their portfolio allocation more realistic than a basic mean-variance optimization would imply? Is their approach easily implemented and computed from a numerical standpoint?</b><br><br>

<span style="color:#00008B"> **Solution:** Harvard places bounds on the portfolio allocation rather than implementing whatever numbers come out of the MV optimization problem along with a long only constraint on non-cash assets. The inequality constraints made this solution easily implementable and computationally easy from a numerical standpoint. However, the many boundary parameters greatly influence the solution making it overparameterized.</span>

7. <b>  (5pts) If Barnstable's assumptions hold, (log iid returns, normally distributed,) then how will an investment's Sharpe ratio compare across short and long-term horizons? Explain.</b><br><br>

<span style="color:#00008B"> **Solution:**  <span style="color:00008B"> Barnstable proposed that if the assumption of log iid normally distributed returns hold, the mean return of any asset with grow linearly with time. However, the volatility of the asset will grow by a factor of $\sqrt{\text{time}}$.Thus according to their proposition the Sharpe ratio of an investment, which is mean return scaled by the volatility, should grow by a factor of $\sqrt{\text{time}}$. Thus an investment's sharpe ratio will always be greater for a long-term horizon.</span><br><br>

<center> <span style="color:#00008B">$\tau = \text{Long Horizon Time - Short Horizon Time}$ </span></center> <br>
	
<center> <span style="color:#00008B">$\tilde{r}_{\text{Long}} \approx \tilde{r}_{\text{Short}}*\tau$ </span></center> <br>
	
<center> <span style="color:#00008B">$\sigma_{\text{Long}} \approx \sigma_{\text{Short}}*\sqrt{\tau}$ </span></center> <br>

<center> <span style="color:#00008B">$\text{Sharpe}_{\text{Long}} =\frac{\tilde{r}_{\text{Long}} }{\sigma_{\text{Long}}} \approx  \frac{ \tilde{r}_{\text{Short}}*\tau}{\sigma_{\text{Short}}*\sqrt{\tau}} \approx \text{Sharpe}_{\text{Short}} *\sqrt{\tau}$ </span></center> <br>  

8. <b>  (5pts) Does Uncovered Interest Parity (UIP) imply Covered Interest Parity (CIP)? Or vice-versa? Or neither? Explain.</b><br><br>

<span style="color:#00008B"> **Solution:** UIP relates expected FX growth to interest rate differential:  </span><br><br>

<center> <span style="color:#00008B">$ln \mathop{\mathbb{E}}_{t}[S_{t+1}] - s_{t} = r_{t+1}^{\text{f,\$}} - r_{t+1}^{\text{f,£}} $</span></center> <br>  

<span style="color:#00008B"> We can rewrite the UIP condition, using CIP to sub out the interest rate differential for the forward premium.</span><br><br> 

<center> <span style="color:#00008B">$ln \mathop{\mathbb{E}}_{t}[S_{t+1}] - s_{t} = f_{t}^{s} - s_{t}$</span></center> <br> 

<span style="color:#00008B"> Thus, neither implies the other. CIP is a no-arbitrage relationship of forward rates vs spot rates. UIP is a hypothesis that FX risk does not earn a premium; in other words, expected excess returns of FX are zero. The theory does not imply the no-arbitrage relationship, nor vice-versa. It is true that sometimes we use the CIP relationship to insert into UIP to write it in a different form, but this is not enough to prove UIP; it is simply restating it in terms of forward rates.</span><br><br> 

9. <b>  (5pts) Name and briefly explain two reasons why we said it is very hard for investors to understand the mean returns of managed funds.</b><br><br>

<span style="color:#00008B"> **Solution:**<span style="color:00008B"> As investors, we cannot observe the population mean of returns, $\mu$. We must try to infer it. Since managed funds do not have a long active time horizon, the confidence interval around the fund's mean return is very wide and thus $\mu$ can't be determined with certainty</span> <br><br>

<span style="color:#00008B"> Not only is mean estimate uncertain, but biased for several reasons:</span> <br><br>

- <span style="color:#00008B">Survivor bias: Data often only available for surviving funds.</span> <br><br>
- <span style="color:#00008B">Backfill bias: At time t, we look back at full history of any fund still surviving.</span> <br><br>
- <span style="color:#00008B">Incubator bias: Funds will be incubating for a time before they are launched. Successful incubations launch and report their
incubated history</span> <br><br>

10. <b>  (5pts) Suppose we have a strategy with returns, $r^{i}_{t}$. If we want to hedge our position with respect to SPY, how could we calculate the optimal ratio? How would this ratio then be used to build the hedged position?.</b><br><br>

<span style="color:#00008B"> **Solution:**<span style="color:00008B"> The optimal hedge ratio can be calculated from the below regression</span><BR><BR>

<center> <span style="color:#00008B">$\tilde{r}^{i}_{t} = \alpha + \beta \tilde{r}^{\text{SPY}}_{t} +\epsilon_t$ </span></center> <br>

<span style="color:#00008B"> The optimal hedge ratio would then be the $\beta$ from the regression. That is for every $\$$1  invested in asset i, we would short $\beta$  of SPY to build the market hedged position. We can then build out the hedged position as follows:</span><br><BR>

<center> <span style="color:#00008B">$\tilde{r}^{i}_{t} - \beta \tilde{r}^{\text{SPY}}_{t}= \alpha +\epsilon_t$ </span></center> <br>

<span style="color:#00008B">  This hedged position has mean excess return $\alpha$, volatility $\sigma$ which is the standard deviation of our error terms: $\epsilon$. The hedged position nets out the exposure coming from SPY </span><br>

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
sns.set_style("whitegrid")
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
def regression_based_performance(factor,fund_ret,rf,constant = True,annualization = 12):
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
    treynor_ratio = ((fund_ret.values-rf).mean()*annualization)/beta[0]
    tracking_error = (model.resid.std()*np.sqrt(annualization))
    if constant:        
        information_ratio = model.params[0]*annualization/tracking_error
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

```python
def OOS_forecasting(df, factors, start):
    y = df
    X = sm.add_constant(factors)

    forecast_err, null_err,oos_predictions,null_predictions = [], [],[],[]

    for i,j in enumerate(df.index):
        if i >= start:
            currX = X.iloc[:i]
            currY = y.iloc[:i]
            reg = sm.OLS(currY, currX, missing = 'drop').fit()
            null_forecast = currY.mean()
            reg_predict = reg.predict(X.iloc[[i]])
            actual = y.iloc[[i]]
            oos_predictions.append(reg_predict.T)
            null_predictions.append(pd.DataFrame([[reg_predict.index[0]]], columns = ['Date'], index = [null_forecast]))
            forecast_err.append(reg_predict.values - actual)
            null_err.append(null_forecast.values - actual)
            
    RSS = (np.array(forecast_err)**2).sum()
    TSS = (np.array(null_err)**2).sum()
    predictions_df = pd.concat(oos_predictions).T.drop_duplicates()
    null_predictions_df = pd.concat(null_predictions).T
    
    return ((1 - RSS/TSS),reg,predictions_df,null_predictions_df)
```

# Reading Data

```python
factors_er = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\final_exam_data.xlsx',sheet_name = 'factors (excess returns)', index_col = 'Date')
factors_er.head()
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
	  <th>MKT</th>
	  <th>UMD</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2000-01-31</th>
	  <td>-0.0474</td>
	  <td>0.0192</td>
	</tr>
	<tr>
	  <th>2000-02-29</th>
	  <td>0.0245</td>
	  <td>0.1820</td>
	</tr>
	<tr>
	  <th>2000-03-31</th>
	  <td>0.0520</td>
	  <td>-0.0683</td>
	</tr>
	<tr>
	  <th>2000-04-30</th>
	  <td>-0.0640</td>
	  <td>-0.0839</td>
	</tr>
	<tr>
	  <th>2000-05-31</th>
	  <td>-0.0442</td>
	  <td>-0.0898</td>
	</tr>
  </tbody>
</table>
</div>

```python
futures_er = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\final_exam_data.xlsx',sheet_name = 'futures (excess returns)', index_col = 'Date')
futures_er.head()
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
	  <th>NG1</th>
	  <th>KC1</th>
	  <th>CC1</th>
	  <th>LB1</th>
	  <th>CT1</th>
	  <th>SB1</th>
	  <th>LC1</th>
	  <th>W1</th>
	  <th>S1</th>
	  <th>C1</th>
	  <th>GC1</th>
	  <th>SI1</th>
	  <th>HG1</th>
	  <th>PA1</th>
	</tr>
	<tr>
	  <th>Date</th>
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
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2000-01-31</th>
	  <td>0.138880</td>
	  <td>-0.121654</td>
	  <td>-0.054279</td>
	  <td>-0.010977</td>
	  <td>0.136223</td>
	  <td>-0.118479</td>
	  <td>0.020436</td>
	  <td>0.027087</td>
	  <td>0.096062</td>
	  <td>0.071695</td>
	  <td>-0.026199</td>
	  <td>-0.027377</td>
	  <td>-0.014071</td>
	  <td>0.074929</td>
	</tr>
	<tr>
	  <th>2000-02-29</th>
	  <td>0.032890</td>
	  <td>-0.105110</td>
	  <td>-0.057130</td>
	  <td>-0.051617</td>
	  <td>-0.026077</td>
	  <td>-0.146366</td>
	  <td>-0.010002</td>
	  <td>-0.040398</td>
	  <td>-0.017587</td>
	  <td>-0.027027</td>
	  <td>0.034542</td>
	  <td>-0.049505</td>
	  <td>-0.071836</td>
	  <td>0.464650</td>
	</tr>
	<tr>
	  <th>2000-03-31</th>
	  <td>0.061943</td>
	  <td>0.033338</td>
	  <td>0.057717</td>
	  <td>-0.021357</td>
	  <td>0.022508</td>
	  <td>0.264117</td>
	  <td>0.029995</td>
	  <td>0.057041</td>
	  <td>0.083579</td>
	  <td>0.092974</td>
	  <td>-0.058405</td>
	  <td>-0.010247</td>
	  <td>0.011818</td>
	  <td>-0.168324</td>
	</tr>
	<tr>
	  <th>2000-04-30</th>
	  <td>0.061953</td>
	  <td>-0.085603</td>
	  <td>-0.070850</td>
	  <td>-0.082210</td>
	  <td>-0.046396</td>
	  <td>-0.130024</td>
	  <td>0.024221</td>
	  <td>-0.080863</td>
	  <td>-0.039430</td>
	  <td>-0.056507</td>
	  <td>-0.017890</td>
	  <td>-0.016552</td>
	  <td>-0.017100</td>
	  <td>0.037549</td>
	</tr>
	<tr>
	  <th>2000-05-31</th>
	  <td>0.381819</td>
	  <td>-0.029134</td>
	  <td>0.122175</td>
	  <td>-0.013347</td>
	  <td>0.119394</td>
	  <td>0.458178</td>
	  <td>-0.092273</td>
	  <td>0.129159</td>
	  <td>-0.022094</td>
	  <td>0.000587</td>
	  <td>-0.015921</td>
	  <td>-0.008831</td>
	  <td>0.021582</td>
	  <td>-0.067440</td>
	</tr>
  </tbody>
</table>
</div>

```python
forecasting = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\final_exam_data.xlsx',sheet_name = 'forecasting (weekly)', index_col = 'Date')
forecasting.head()
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
	  <th>GLD</th>
	  <th>Tbill rate</th>
	  <th>Tbill change</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2009-04-19</th>
	  <td>-0.012629</td>
	  <td>0.130</td>
	  <td>-0.045</td>
	</tr>
	<tr>
	  <th>2009-04-26</th>
	  <td>0.052805</td>
	  <td>0.095</td>
	  <td>-0.035</td>
	</tr>
	<tr>
	  <th>2009-05-03</th>
	  <td>-0.030874</td>
	  <td>0.145</td>
	  <td>0.050</td>
	</tr>
	<tr>
	  <th>2009-05-10</th>
	  <td>0.034848</td>
	  <td>0.165</td>
	  <td>0.020</td>
	</tr>
	<tr>
	  <th>2009-05-17</th>
	  <td>0.017448</td>
	  <td>0.155</td>
	  <td>-0.010</td>
	</tr>
  </tbody>
</table>
</div>

```python
fx_daily = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\final_exam_data.xlsx',sheet_name = 'fx (daily)', index_col = 'DATE')
fx_daily.head()
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
	  <th>GBP</th>
	  <th>SOFR</th>
	  <th>SONIA</th>
	</tr>
	<tr>
	  <th>DATE</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2018-04-03</th>
	  <td>1.4068</td>
	  <td>0.0183</td>
	  <td>0.004652</td>
	</tr>
	<tr>
	  <th>2018-04-04</th>
	  <td>1.4076</td>
	  <td>0.0174</td>
	  <td>0.004624</td>
	</tr>
	<tr>
	  <th>2018-04-05</th>
	  <td>1.3991</td>
	  <td>0.0175</td>
	  <td>0.004653</td>
	</tr>
	<tr>
	  <th>2018-04-06</th>
	  <td>1.4088</td>
	  <td>0.0175</td>
	  <td>0.004666</td>
	</tr>
	<tr>
	  <th>2018-04-09</th>
	  <td>1.4136</td>
	  <td>0.0175</td>
	  <td>0.004651</td>
	</tr>
  </tbody>
</table>
</div>

## 2. Value at Risk (15pts)

- #### Find the data on the returns of the ETF, GLD, in the sheet forecasting (weekly).

### 2.1 Estimate the time-series test of the pricing model.

### 2.1.a) (5pts) Calculate the 5th percentile VaR and CVaR for GLD as of the end of the sample using the empirical CDF approach over the full sample of data.

```python
gld_performance = performance_summary(forecasting[['GLD']],annualization=52)
gld_performance.loc[:,['VaR (0.05)','CVaR (0.05)']]
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
	  <th>CVaR (0.05)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>GLD</th>
	  <td>-0.033323</td>
	  <td>-0.047125</td>
	</tr>
  </tbody>
</table>
</div>

### 2.2 (5pts) Calculate the 5th percentile VAR for GLD as of the end of the sample using the normal approximation, (assuming mean is zero as usual.)

### Calculate it using the following methods…
- ### full-sample volatility.
- ### rolling 150-week window for volatility.

```python
VaR_full_sample = -(1.65  * forecasting[['GLD']].std())
VaR_full_sample.to_frame('Full Sample Var')  
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
	  <th>Full Sample Var</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>GLD</th>
	  <td>-0.034846</td>
	</tr>
  </tbody>
</table>
</div>

```python
sigma_rolling = forecasting[['GLD']].shift(1).rolling(150).std().dropna()
rolling_var = -(1.65 * sigma_rolling)
rolling_var.rename(columns={'GLD':'Rolling VaR'},inplace =True)
rolling_var.tail(1)
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
	  <th>Rolling VaR</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-12-04</th>
	  <td>-0.038111</td>
	</tr>
  </tbody>
</table>
</div>

### 2.3 (5pts) In our analysis in the course, which of the methods above did we find did best?
### How did we judge which method did best?

<span style="color:#00008B"> **Solution:**  We found that the VaR ( at 5%) calculated using the approximation based on the normal distribution performed much better as it was able to provide the VaR estimate by frequency of days below the VaR value close to 5%. By definition of VaR, the number returns beyond the estimated VaR (5%) should be occurring with a frequency close to 5%. The notebook from Class Session 3 found that for many assets, the empirical CDF estimate of VaR led to a less accurate "hit ratio".</span><br><br>

<span style="color:#00008B"> **Remark:** Partial Credits would be given if the "hit ratio" is analyzed based on the answer in 2.2 and the answer is provided as "Empirical CDF".</span>

```python
exceed_historical = forecasting[forecasting['GLD'] < gld_performance['VaR (0.05)'].values[0]]['GLD'].count()*100/len(forecasting['GLD'])
exceed_norm_full = forecasting[forecasting['GLD'] < VaR_full_sample.values[0]]['GLD'].count()*100/len(forecasting['GLD'])
exceed_norm_roll = sum(forecasting['GLD'].loc[rolling_var.index] < rolling_var['Rolling VaR'])*100/len(rolling_var['Rolling VaR'])
pd.DataFrame([[exceed_historical,exceed_norm_full,exceed_norm_roll]], columns = ['Historical','Normal (Full Sample)','Normal (Rolling)'], index= ['% Data below 5% VaR backtest'])
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
	  <th>Historical</th>
	  <th>Normal (Full Sample)</th>
	  <th>Normal (Rolling)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>% Data below 5% VaR backtest</th>
	  <td>5.05618</td>
	  <td>4.353933</td>
	  <td>3.914591</td>
	</tr>
  </tbody>
</table>
</div>

## 3. Pricing Model (25 pts)

### Use the provided data in the sheets

- #### futures (excess returns)
- #### factors (excess returns)

## to test a two-factor pricing model: the market (MKT) and momentum (UMD).

## \begin{align} \mathop{\mathbb{E}}[\tilde{r}^{i}] = \beta^{i,\text{m}} \mathop{\mathbb{E}}[\tilde{r}^{\text{m}}] + \beta^{i,\text{UMD}} \mathop{\mathbb{E}}[\tilde{r}^{\text{UMD}}] \end{align}

## 3.1 (10pts) Estimate the time-series test of the pricing model.

## 3.1.a) Report…
- ### (for each asset) annualized alpha, beta, and r-squared.
- ### annualized MAE of the time-series alphas,
- ### mean of the r-squared statistics.

```python
portfolios = futures_er.columns
df_lst= []
for port in portfolios:
    fund_ret = futures_er[port]
    reg = regression_based_performance(factors_er,fund_ret,0)
    beta_mkt = reg[0][0]
    beta_umd = reg[0][1]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]*12
    r_squared = reg[4]
    df_lst.append(pd.DataFrame([[beta_mkt,beta_umd,treynor_ratio,information_ratio,alpha,r_squared]],columns=['Market Beta','Momentum Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = [port]))

reg_performance = pd.concat(df_lst)
reg_performance.loc[:,['Alpha','Market Beta','Momentum Beta','R-Squared']]

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
	  <th>Alpha</th>
	  <th>Market Beta</th>
	  <th>Momentum Beta</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>NG1</th>
	  <td>0.111960</td>
	  <td>0.354111</td>
	  <td>0.381230</td>
	  <td>0.017306</td>
	</tr>
	<tr>
	  <th>KC1</th>
	  <td>0.023196</td>
	  <td>0.315122</td>
	  <td>-0.027467</td>
	  <td>0.025887</td>
	</tr>
	<tr>
	  <th>CC1</th>
	  <td>0.070788</td>
	  <td>0.207322</td>
	  <td>-0.035816</td>
	  <td>0.012031</td>
	</tr>
	<tr>
	  <th>LB1</th>
	  <td>0.064476</td>
	  <td>0.942075</td>
	  <td>-0.004789</td>
	  <td>0.136850</td>
	</tr>
	<tr>
	  <th>CT1</th>
	  <td>0.024912</td>
	  <td>0.504249</td>
	  <td>-0.178597</td>
	  <td>0.099020</td>
	</tr>
	<tr>
	  <th>SB1</th>
	  <td>0.093132</td>
	  <td>0.057967</td>
	  <td>-0.319205</td>
	  <td>0.032730</td>
	</tr>
	<tr>
	  <th>LC1</th>
	  <td>0.015420</td>
	  <td>0.183059</td>
	  <td>0.066096</td>
	  <td>0.020046</td>
	</tr>
	<tr>
	  <th>W1</th>
	  <td>0.054528</td>
	  <td>0.298899</td>
	  <td>0.022426</td>
	  <td>0.021333</td>
	</tr>
	<tr>
	  <th>S1</th>
	  <td>0.042540</td>
	  <td>0.399481</td>
	  <td>0.027260</td>
	  <td>0.052917</td>
	</tr>
	<tr>
	  <th>C1</th>
	  <td>0.060876</td>
	  <td>0.340399</td>
	  <td>0.062038</td>
	  <td>0.028248</td>
	</tr>
	<tr>
	  <th>GC1</th>
	  <td>0.070488</td>
	  <td>0.131624</td>
	  <td>0.148689</td>
	  <td>0.027364</td>
	</tr>
	<tr>
	  <th>SI1</th>
	  <td>0.065544</td>
	  <td>0.511838</td>
	  <td>0.144376</td>
	  <td>0.058439</td>
	</tr>
	<tr>
	  <th>HG1</th>
	  <td>0.047808</td>
	  <td>0.690631</td>
	  <td>-0.138838</td>
	  <td>0.214665</td>
	</tr>
	<tr>
	  <th>PA1</th>
	  <td>0.079188</td>
	  <td>0.664541</td>
	  <td>0.173333</td>
	  <td>0.075625</td>
	</tr>
  </tbody>
</table>
</div>

```python
n = futures_er.shape[1]
mae = abs(reg_performance['Alpha']).mean()
rsquared_avg = abs(reg_performance['R-Squared']).mean()

mae_df = pd.DataFrame([[mae,rsquared_avg]],columns=['Mean Absolute Error','Average R-Squared '],index = ['Factor Model'])
mae_df
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
	  <th>Mean Absolute Error</th>
	  <th>Average R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Factor Model</th>
	  <td>0.058918</td>
	  <td>0.058747</td>
	</tr>
  </tbody>
</table>
</div>

## 3.1.b) If the pricing model worked perfectly, what would these statistics be?

<span style="color:#00008B"> **Solution:** If the pricing model worked perfectly: </span> <br>

- <span style="color:#00008B"> The Alpha for each asset would be zero as we expect the factors to explain most of the expected returns of the portfolios.</span> <br><br>
- <span style="color:#00008B"> Based on the expectation of alphas to be zero we would be expect the MAE to be near zero as well.</span> <br><br>
- <span style="color:#00008B"> To be clear, these would be zero in population, and for any given sample they may be non-zero but by a statistically insignificant amount.</span> <br><br>
- <span style="color:#00008B"> Nothing could be said about the R-Squared as in the TimeSeries test we do not care about high R-Squared. Thus, the average R-Squared statistic would be unrestricted.</span> <br><br>
- <span style="color:#00008B"> Nothing needs to be said about the regression $\beta$, as they would vary with the exposure to the respective factor and would vary with each asset.</span> <br><br>

## 3.2 Estimate the cross-sectional test of the pricing model. Include an intercept in the cross-sectional regression.

## 3.2.a) (10 pts) Report the…

- ### annualized intercept.
- ### annualized factor premia.
- ### r-squared.
- ### annualized mean-absolute error.

```python
y = performance_summary(futures_er)['Mean']
X = reg_performance.loc[:,['Market Beta', 'Momentum Beta']]
X = sm.tools.add_constant(X)
CS_reg_model = sm.OLS(y,X).fit()
CS_reg_performance = CS_reg_model.params.to_frame('Cross-Sectional Regression').T.rename(columns = {'const':'Intercept','Market Beta':'Market Premia','Momentum Beta':'Momentum Premia'})
CS_reg_performance['R-Squared'] = CS_reg_model.rsquared
CS_reg_performance['MAE'] =  abs(CS_reg_model.resid).mean()
CS_reg_performance
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
	  <th>Intercept</th>
	  <th>Market Premia</th>
	  <th>Momentum Premia</th>
	  <th>R-Squared</th>
	  <th>MAE</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Cross-Sectional Regression</th>
	  <td>0.061121</td>
	  <td>0.061974</td>
	  <td>0.073498</td>
	  <td>0.391371</td>
	  <td>0.018002</td>
	</tr>
  </tbody>
</table>
</div>

## 3.2.b) If the pricing model worked perfectly, what would these statistics be?

<span style="color:#00008B"> **Solution:** If the pricing model worked perfectly: </span> <br>

<span style="color:#00008B">Most importantly,</span>

- <span style="color:#00008B"> The R-Squared should be 1 as we expect the factors to explain all of the expected returns of the portfolios.</span> <br><br>
- <span style="color:#00008B"> We expect the MAE (calculated as the mean of the absolute residuals from the CS regression) to be zero as well.</span> <br><br>

<span style="color:#00008B"> Less importantly,</span>

- <span style="color:#00008B"> We would expect the Alpha for the cross-sectional regression to be zero if we measured the risk-free rate (in building the excess returns). A non-zero cross-sectional intercept means the model pricing is off by a fixed amount, potentially due to risk-free rate mismeasurment.
</span> <br><br>

- <span style="color:#00008B"> We cannot say anything specific about the factor premia as the cross-sectional regression provides the freedom for the factor premia to be anything and is derived as the regression coefficient.</span> <br><br>

## 3.3 (5pts) Compare the factor premia across the cross-sectional and time-series estimations.

<span style="color:#00008B"> **Solution:** As can be seen: </span> <br>

- <span style="color:#00008B">Market premia from both regression tests are closer to each other.</span> <br><br>
- <span style="color:#00008B">However, the Momentum Premia from CS regression is quite different and higher than its sample average.</span> <br><br>

```python
cs_premia = CS_reg_performance.loc[:,['Market Premia','Momentum Premia']]
ts_premia = performance_summary(factors_er).loc[['MKT','UMD'],'Mean'].to_frame('TimeSeries Regression').rename(index = {'MKT':'Market Premia','UMD':'Momentum Premia'})
factor_premia =  cs_premia.T.merge(ts_premia, left_index = True, right_index = True)
factor_premia
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
	  <th>Cross-Sectional Regression</th>
	  <th>TimeSeries Regression</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Market Premia</th>
	  <td>0.061974</td>
	  <td>0.070633</td>
	</tr>
	<tr>
	  <th>Momentum Premia</th>
	  <td>0.073498</td>
	  <td>0.018405</td>
	</tr>
  </tbody>
</table>
</div>

## 4. Forecasting (50pts)

### Forecast (total) returns on gold as tracked by the ETF ticker, GLD. As signals, use two interest rate signals: the yield on T-bills and the change in T-bill yields.

- #### Find the all data needed for this problem in the sheet forecasting (weekly)

## 4.1 (4pts) Consider the lagged regression, where the regressor, (X,) is a period behind the target, ($r^{GLD}$).

## \begin{align} r_{t}^{GLD} = \alpha^{\text{GLD,X}} + (\beta^{\text{GLD,X}})' X_{t-1} + \epsilon_{t}^{\text{GLD,X}} \end{align}

## Estimate (2) and report the $R^{2}$, as well as the OLS estimates for $\alpha$ and $\beta$. (No need to annualize these stats.)
## Do this using both interest rate signals together. So we are estimating just one model:
- ### X as the two regressors: Tbill rate and Tbill change.

```python
fund_ret = forecasting.loc[:,['GLD']]
signal = ['Tbill rate','Tbill change']

factor = forecasting.loc[:,signal].shift(1)
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
gld_reg = pd.DataFrame([reg_params],columns=columns,index = [index])
```

```python
gld_reg
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
	  <th>Tbill rate-Beta</th>
	  <th>Tbill change-Beta</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Tbill rate, Tbill change</th>
	  <td>0.00025</td>
	  <td>0.000456</td>
	  <td>0.000993</td>
	  <td>0.000107</td>
	</tr>
  </tbody>
</table>
</div>

## 4.2 (3pts) Use the forecasted GLD returns, $\hat{r}^{GLD}_{t+1}$, to build trading weights:
## <center>$w_{t} = 0.2 + 80 \hat{r}^{GLD}_{t+1}$</center>
## Calculate the return on this strategy:
## <center>$r_{t+1}^{x} = w_{t}r^{GLD}_{t+1}$</center>

## Report the first and last 5 values.

```python
forecasted_rets = (np.array(forecasting.shift(1).loc[:,['Tbill rate','Tbill change']]) @ np.array(gld_reg.loc[:,['Tbill rate-Beta','Tbill change-Beta']].T))
forecast_rtn = (pd.DataFrame(forecasted_rets,columns = ['Forecasted Return'],index= forecasting.index)) 
forecast_rtn['Forecasted Return'] = (forecast_rtn['Forecasted Return'] + float(gld_reg['Alpha']))*80 + 0.2
strat_rtn = pd.DataFrame(forecast_rtn['Forecasted Return'] *forecasting.loc[:,['GLD']]['GLD'], columns=forecast_rtn.columns, index=forecast_rtn.index).dropna()

```

```python
strat_rtn.head()
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
	  <th>Forecasted Return</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2009-04-26</th>
	  <td>0.014806</td>
	</tr>
	<tr>
	  <th>2009-05-03</th>
	  <td>-0.008647</td>
	</tr>
	<tr>
	  <th>2009-05-10</th>
	  <td>0.009902</td>
	</tr>
	<tr>
	  <th>2009-05-17</th>
	  <td>0.004946</td>
	</tr>
	<tr>
	  <th>2009-05-24</th>
	  <td>0.008014</td>
	</tr>
  </tbody>
</table>
</div>

```python
strat_rtn.tail()
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
	  <th>Forecasted Return</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-11-06</th>
	  <td>0.007823</td>
	</tr>
	<tr>
	  <th>2022-11-13</th>
	  <td>0.018682</td>
	</tr>
	<tr>
	  <th>2022-11-20</th>
	  <td>-0.003900</td>
	</tr>
	<tr>
	  <th>2022-11-27</th>
	  <td>0.000964</td>
	</tr>
	<tr>
	  <th>2022-12-04</th>
	  <td>-0.001094</td>
	</tr>
  </tbody>
</table>
</div>

## 4.3 (3pts) For both $r^{x}$ and $r^{GLD}$, report the following univariate stats (annualized).
- ### mean, volatility, Sharpe,
- ### max-drawdown
## Do not worry that we are using total returns rather than excess returns for all these stats.

```python
strat_rtn = strat_rtn.merge(forecasting[['GLD']], left_index = True, right_index = True)
forecast_summary = performance_summary(strat_rtn, annualization=52)
forecast_summary.loc[:,['Mean','Volatility','Sharpe Ratio','Max Drawdown']]
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
	  <th>Forecasted Return</th>
	  <td>0.017339</td>
	  <td>0.043578</td>
	  <td>0.397876</td>
	  <td>-0.142588</td>
	</tr>
	<tr>
	  <th>GLD</th>
	  <td>0.058958</td>
	  <td>0.152350</td>
	  <td>0.386992</td>
	  <td>-0.447446</td>
	</tr>
  </tbody>
</table>
</div>

## 4.4 (5pts) Run a Linear Factor Decomposition of $r^{x}$ on $r^{GLD}$ and report the following (annualized):
- ### market alpha
- ### market beta
- ### market Information ratio
## Do not worry that we are using total returns rather than excess returns for all these stats.

```python
fund_ret = strat_rtn['Forecasted Return']
reg = regression_based_performance(strat_rtn['GLD'],fund_ret,0,annualization=52)
beta = reg[0][0]
treynor_ratio = reg[1]
information_ratio = reg[2]
alpha = reg[3]*52
r_squared = reg[4]
reg_performance = pd.DataFrame([[beta,treynor_ratio,information_ratio,alpha,r_squared]],columns=['Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = ['LFD - Forecasted Returns'])

reg_performance
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
	  <th>Beta</th>
	  <th>Treynor Ratio</th>
	  <th>Information Ratio</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>LFD - Forecasted Returns</th>
	  <td>0.285631</td>
	  <td>0.060704</td>
	  <td>0.213493</td>
	  <td>0.00052</td>
	  <td>0.997129</td>
	</tr>
  </tbody>
</table>
</div>

## 4.5 (5pts) Suppose we were going to forecast GLD using just one of our two signals. Which of the signals would likely lead to a result where the long-term forecast compounds the effect over long horizons, as we saw for forecasting SPY using dividend-price ratios? Explain.

<span style="color:#00008B"> **Solution:** The cumulating horizon effect of dividend-price ratio signal was due to the fact that signal has high autocorrelation. In theory, this should definitely be the **T-bill level**, as interest rates have high autocorrelation. Change in interest rates may have some autocorrelation, but much less than the level.</span><br><br></span>

## 4.6 (5pts) Let's consider the out-of-sample performance of the strategy.

- ### Forecast values of GLD for January 2017 through Dec 2022. (So we are using the data up until January 2017 as "burn-in" data.)
- ### Loop through time, estimating (2) only using data through time t.
- ### Use the estimated parameters of (2), along with $x_{t+1}$ to calculate the out-of-sample forecast for the following period, t + 1.

## \begin{align} r_{t+1}^{GLD} = \alpha^{\text{GLD,X}}_{t} + (\beta^{\text{GLD,X}})' x_{t} \end{align}

## Report the first 5 and last 5 values of your forecast.

```python
factor = forecasting.loc[:,['Tbill rate','Tbill change']].shift(1).dropna()
fund_ret = forecasting.loc[factor.index[0]:,['GLD']]
OOS_reg = OOS_forecasting(fund_ret,factor,forecasting.loc[:'2016'].shape[0])
OOS_r2  = OOS_reg[0]
OOS_r2 = pd.DataFrame([[OOS_r2]], columns = ['R-Squared'], index = ['OOS Forecasting'])
OOS_reg_params = OOS_reg[1]
OOS_reg_predictions = OOS_reg[2].to_frame('OOS Forecasts').drop_duplicates()
baseline_predictions = OOS_reg[3].T.reset_index().set_index('Date').rename(columns = {'level_0':'Baseline Forecasts'})
```

```python
OOS_reg_predictions.head()
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
	  <th>OOS Forecasts</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2017-01-08</th>
	  <td>0.008297</td>
	</tr>
	<tr>
	  <th>2017-01-15</th>
	  <td>0.004538</td>
	</tr>
	<tr>
	  <th>2017-01-22</th>
	  <td>0.006878</td>
	</tr>
	<tr>
	  <th>2017-01-29</th>
	  <td>0.010988</td>
	</tr>
	<tr>
	  <th>2017-02-05</th>
	  <td>0.004856</td>
	</tr>
  </tbody>
</table>
</div>

```python
OOS_reg_predictions.tail()
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
	  <th>OOS Forecasts</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-11-06</th>
	  <td>0.000558</td>
	</tr>
	<tr>
	  <th>2022-11-13</th>
	  <td>0.001113</td>
	</tr>
	<tr>
	  <th>2022-11-20</th>
	  <td>0.002521</td>
	</tr>
	<tr>
	  <th>2022-11-27</th>
	  <td>0.002188</td>
	</tr>
	<tr>
	  <th>2022-12-04</th>
	  <td>0.002199</td>
	</tr>
  </tbody>
</table>
</div>

## 4.7 (10pts) Report the out-of-sample $R^{2}$, relative to a baseline forecast which is simply the mean of GLD up to the point the forecast is made.

```python
OOS_r2
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
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>OOS Forecasting</th>
	  <td>-0.146065</td>
	</tr>
  </tbody>
</table>
</div>

## 4.8 (5pts) Report the correlation between the two forecasts of GLD (regression based and the baseline forecast) with the actual realized value of GLD.

## Does either forecast positively correlate with what actually happens?
## Between this and the OOS r-squared, does this forecast seem to be informative?

```python
OOS_forecasted_rtn = pd.concat([baseline_predictions.T, OOS_reg_predictions.T,forecasting.loc[OOS_reg_predictions.index,['GLD']].T]).T
```

```python
plt.figure(figsize=(16, 6))
heatmap = sns.heatmap(OOS_forecasted_rtn.corr(), vmin=-0.5, vmax=1, annot=True)
heatmap.set_title('Asset Correlation Heatmap', fontdict={'fontsize':12}, pad=12);
```

![png](output_60_0.png)

<span style="color:#00008B"> **Solution:** : Neither of the forecasts, baseline or OOS, is positively correlated with the actual GLD levels. The $R^{2}$ is also negative and quite low. Both these metrics indicate that forecasting GLD using T-Bill rates and changes is not informative.</span> <br>

## 4.9 (10pts) Trade on the two forecasts, using the same weighting scheme as above.

## For the two OOS return series, report the following univariate stats (annualized).
- ### mean, volatility, Sharpe,
- ### max-drawdown

## Also report the Linear Factor Decomposition stats (annualized) when regressed on GLD:

- ### market alpha
- ### market beta
- ### market Information ratio
## As before, do not worry that we are calculating these on total returns instead of excess returns.

```python
trading_oos_ret = OOS_forecasted_rtn.copy()
oos_trading = []
for cols in ['OOS Forecasts','Baseline Forecasts']:
    trading_oos_ret[cols] = (trading_oos_ret[cols])*80 + 0.2
    strat_rtn = pd.DataFrame(trading_oos_ret[cols] *OOS_forecasted_rtn.loc[:,['GLD']]['GLD'], columns=[cols+' Strat'], index=OOS_forecasted_rtn.index).dropna()
    oos_trading.append(strat_rtn.T)

oos_trading_rets = pd.concat(oos_trading).T
performance_summary(oos_trading_rets, annualization=52)
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
	  <th>OOS Forecasts Strat</th>
	  <td>-0.035996</td>
	  <td>0.187712</td>
	  <td>-0.191764</td>
	  <td>-14.242974</td>
	  <td>235.874688</td>
	  <td>-0.012513</td>
	  <td>-0.043882</td>
	  <td>-0.449998</td>
	  <td>2020-03-08</td>
	  <td>2022-10-16</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Baseline Forecasts Strat</th>
	  <td>0.020697</td>
	  <td>0.040589</td>
	  <td>0.509910</td>
	  <td>-0.244024</td>
	  <td>3.217056</td>
	  <td>-0.009024</td>
	  <td>-0.012617</td>
	  <td>-0.063522</td>
	  <td>2020-08-09</td>
	  <td>2022-09-25</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

```python
oos_lfd = []
for cols in ['OOS Forecasts','Baseline Forecasts']:
    fund_ret = oos_trading_rets[cols+ ' Strat']
    reg = regression_based_performance(trading_oos_ret['GLD'],fund_ret,0,annualization=52)
    beta = reg[0][0]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]
    r_squared = reg[4]
    oos_lfd.append(pd.DataFrame([[beta,treynor_ratio,information_ratio,alpha,r_squared]],columns=['Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = ['LFD - '+cols]))

oos_lfd_df = pd.concat(oos_lfd)
oos_lfd_df
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
	  <th>Beta</th>
	  <th>Treynor Ratio</th>
	  <th>Information Ratio</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>LFD - OOS Forecasts</th>
	  <td>0.697568</td>
	  <td>-0.051603</td>
	  <td>-0.549264</td>
	  <td>-0.001709</td>
	  <td>0.256754</td>
	</tr>
	<tr>
	  <th>LFD - Baseline Forecasts</th>
	  <td>0.297372</td>
	  <td>0.069600</td>
	  <td>-1.002597</td>
	  <td>-0.000036</td>
	  <td>0.997933</td>
	</tr>
  </tbody>
</table>
</div>

## 5. FX Carry (40pts)

### We examine FX Carry for trading the British Pound, (GBP).

- #### Find the FX and risk-free rate data for this problem on sheet "fx rates (daily)". As before, these are spot FX prices quoted as USD per GBP.
- #### Recall that SOFR is the risk-free rate on USD, and SONIA is the risk-free rate for GBP.
- #### As in Homework 8, the data is provided such that any row's date, t, is reporting $S^{GBP}_{t}$ and $r^{\text{f,GBP}}_{\text{t,t+1}}$

### Both of these objects are know at time t.

## 5.1 (3pts) Transform the data to log FX prices and log interest rates, just as we did in Homework 8.

## \begin{align} {s}^{\text{GBP}}_{t} \equiv ln({S}^{\text{GBP}}_{t}) \end{align}
## \begin{align} {r}^{\text{f,GBP}}_{\text{t,t+1}} \equiv ln(1+ {r}^{\text{f,GBP}}_{\text{t,t+1}}) \end{align}
## \begin{align} {r}^{\text{f,USD}}_{\text{t,t+1}} \equiv ln(1+ {r}^{\text{f,USD}}_{\text{t,t+1}}) \end{align}

## No other data transformation is needed.
## Display the mean of all three series.

```python
log_fx_daily = pd.DataFrame(columns = fx_daily.columns, index =  fx_daily.index)
log_fx_daily['GBP'] = np.log(fx_daily['GBP'])
log_fx_daily['SOFR'] =   np.log(1+fx_daily['SOFR'])
log_fx_daily['SONIA'] =   np.log(1+fx_daily['SONIA'])

log_fx_daily.mean().to_frame('Mean')
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>GBP</th>
	  <td>0.260081</td>
	</tr>
	<tr>
	  <th>SOFR</th>
	  <td>0.011354</td>
	</tr>
	<tr>
	  <th>SONIA</th>
	  <td>0.005310</td>
	</tr>
  </tbody>
</table>
</div>

## 5.2 (3pts) If we assume the Uncovered Interest Parity to hold true, what would you expect from the (static, passive) return to GBP?

<span style="color:#00008B"> **Solution:** : UIP states that the mean return to GBP should be zero as the change in the spot fx rate would be completely explained by the changes in risk free rates.</span> <br>

## 5.3 (3pts) Calculate the excess log return to a USD investor of holding GBP. Report the following annualized stats…
- ### Mean
- ### Volatility
- ### Sharpe ratio

```python
fx_hldg_excess_ret = log_fx_daily['GBP'].diff() + log_fx_daily['SONIA'].shift(1) - log_fx_daily['SOFR'].shift(1)
fx_hldg_summary = performance_summary(fx_hldg_excess_ret.to_frame().dropna(),annualization=250)
fx_hldg_summary.index = ['GBP']
fx_hldg_summary.index.name = 'Currency Held'
fx_hldg_summary
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
	<tr>
	  <th>Currency Held</th>
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
	  <th>GBP</th>
	  <td>-1.543933</td>
	  <td>0.149774</td>
	  <td>-10.308411</td>
	  <td>-0.166879</td>
	  <td>-0.056024</td>
	  <td>-0.02128</td>
	  <td>-0.024996</td>
	  <td>-0.999113</td>
	  <td>2018-04-04</td>
	  <td>2022-11-22</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

## 5.4 (6pts) Over the sample, was it better to be long or short GBP relative to USD?
- ### Did the interest spread help on average?
- ### Did the USD appreciate or depreciate relative to GBP over the sample?

<span style="color:#00008B"> **Solution:** : Over the sample, a long position in GBP would have offered negative returns. Thus it was better to be short GBP relative to USD.</span> <br><br>

<span style="color:#00008B"> Over the sample, the average interest rate spread between USD and GBP (GBP - USD) was negative and thus did not help an investor holding GBP.</span> <br><br>

<span style="color:#00008B"> Over the sample, the GBP-USD exchange rate decreased, indicating that the USD appreciated relative to GBP.</span> <br><br>

```python
pd.DataFrame([[(log_fx_daily['SONIA'].shift(1) - log_fx_daily['SOFR'].shift(1)).mean()]],columns = ['Mean'], index=['Interest Rate Spread'])
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Interest Rate Spread</th>
	  <td>-0.006042</td>
	</tr>
  </tbody>
</table>
</div>

## 5.5 (5pts) Assume just for this question that these daily excess log returns are normally distributed.
## What is the probability that holding GBP over the following 5 years will underperform the USD risk-free rate?

```python
mean = np.log(1+fx_hldg_excess_ret.dropna()).mean() * 252
sofr_mean = log_fx_daily['SOFR'].mean() * 252
sigma = ( np.log(1+fx_hldg_excess_ret.dropna()) - log_fx_daily['SOFR']).std() * np.sqrt(252)
mu = mean - sofr_mean

probability = calc_probability_lowret(5,0,mu,sigma)
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
	  <td>50.0</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>100.0</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>100.0</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>100.0</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>100.0</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>100.0</td>
	</tr>
  </tbody>
</table>
</div>

## 5.6 (5pts) Forecast the growth of the FX rate using the interest rate differential:

## \begin{align} {s}^{\text{GBP}}_{t+1} - {s}^{\text{GBP}}_{t} = \alpha + \beta({r}^{\text{f,USD}}_{\text{t,t+1}} - {r}^{\text{f,GBP}}_{\text{t,t+1}}) + \epsilon_{t+1} \end{align}

## Report the following OLS stats. (No need to annualize them.).
## <center> $\alpha, \beta, R^{2}$ </center>

```python
factor = log_fx_daily['SOFR'].shift(1) - log_fx_daily['SONIA'].shift(1)
strat = log_fx_daily['GBP'].diff()
reg = regression_based_performance(factor,strat,0,annualization = 1)
beta_currency = reg[0][0]
treynor_ratio = reg[1]
information_ratio = reg[2]
alpha = reg[3]
r_squared = reg[4]
fx_hldg_reg_summary = pd.DataFrame([[alpha,beta_currency,r_squared]],columns=['Alpha','Beta','R-Squared'],index = ['GBP'])
fx_hldg_reg_summary
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
	  <th>Alpha</th>
	  <th>Beta</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>GBP</th>
	  <td>-0.000069</td>
	  <td>-0.010636</td>
	  <td>0.000162</td>
	</tr>
  </tbody>
</table>
</div>

## 5.7 (4pts) If we assume the Uncovered Interest Parity to hold true, what would you expect to be true of the regression estimates?

<span style="color:#00008B"> **Solution:** : UIP states that the change in the spot fx rate would be completely explained by the changes in risk free rates. Thus, we would expect :</span> <br>

- <span style="color:#00008B"> The $\beta$ to be 1.</span> <br>
- <span style="color:#00008B"> The $\alpha$ to be 0.</span> <br>
- <span style="color:#00008B"> We would have NO insight about the $R^{2}$. This is only a theory about averages, so no implication on $R^{2}$.</span> <br>

## 5.8 (4pts) Based on the regression results, if we observe an increase in the interest rate on GBP relative to USD, should we expect the USD to get stronger (appreciate) or weaker (depreciate)?

<span style="color:#00008B"> **Solution:** A strengthening U.S. dollar means that it now buys more of the other currency than it did before.If risk-free rate of a currency were to increase relative to the US rate, the currencies with a negative beta in the previous regression would see a decrease in the fx rates (USD per foreign currency). This indicates that there will be a relative weakening of the USD as a dollar would now buy more of those currencies. GBP has a negative beta to USD. Thus, USD would experience a relative weakening relative to GBP.</span> <br><br>

<span style="color:#00008B"> From the regression, if SONIA gets bigger relative to SOFR, regressor is getting more negative. Previous estimated beta is negative, so combined with decreasing regressor, we expect left-hand-side gets bigger. That is to say, FX rate gets bigger, which means dollar is depreciating (weakening.)</span><br><br>

## 5.9 (4pts) If the risk free rates in USD increase relative to risk-free rates in GBP, we expect the forward exchange rate to be higher than the spot exchange rate?

<span style="color:#00008B"> **Solution:** According to Interest rate parity, a currency with lower interest rates will trade at a forward premium in relation to a currency with a higher interest rate. Thus if the risk free rates in USD increase relative to risk-free rates in GBP, we expect the forward exchange rate to be **higher** than the spot exchange rate.</span> <br><br>

<span style="color:#00008B"> **Remark:** This question is actually answered with CIP, not the UIP investigated above. If interest rate differential, CIP gives us (high confidence) that this will show up in the forward-spot premium.</span><br><br>

## 5.10 (3pts) Based on the regression results, construct an in-sample forecast of the excess log return to holding GBP. Report the forecasted values for the first 5 and last 5 dates.

```python
fx_er_usd = (log_fx_daily['SOFR'].shift(1) - log_fx_daily['SONIA'].shift(1)).to_frame('ER_over_USD')
expected_fx_premium = float(fx_hldg_reg_summary.loc['GBP',['Alpha']]) + (fx_er_usd.loc[:,['ER_over_USD']]  * float(fx_hldg_reg_summary.loc['GBP',['Beta']] - 1))
expected_fx_premium = expected_fx_premium.rename(columns={'ER_over_USD':'GBP'}).dropna()
```

```python
expected_fx_premium.head()
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
	  <th>GBP</th>
	</tr>
	<tr>
	  <th>DATE</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2018-04-04</th>
	  <td>-0.013706</td>
	</tr>
	<tr>
	  <th>2018-04-05</th>
	  <td>-0.012840</td>
	</tr>
	<tr>
	  <th>2018-04-06</th>
	  <td>-0.012911</td>
	</tr>
	<tr>
	  <th>2018-04-09</th>
	  <td>-0.012898</td>
	</tr>
	<tr>
	  <th>2018-04-10</th>
	  <td>-0.012913</td>
	</tr>
  </tbody>
</table>
</div>

```python
expected_fx_premium.tail()
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
	  <th>GBP</th>
	</tr>
	<tr>
	  <th>DATE</th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-11-18</th>
	  <td>-0.008609</td>
	</tr>
	<tr>
	  <th>2022-11-21</th>
	  <td>-0.008600</td>
	</tr>
	<tr>
	  <th>2022-11-22</th>
	  <td>-0.008600</td>
	</tr>
	<tr>
	  <th>2022-11-23</th>
	  <td>-0.008604</td>
	</tr>
	<tr>
	  <th>2022-11-25</th>
	  <td>-0.008506</td>
	</tr>
  </tbody>
</table>
</div>


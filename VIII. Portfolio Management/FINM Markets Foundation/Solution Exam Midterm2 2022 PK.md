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

<h2><center> Midterm #2 </center></h2>

<center>Monday, Nov 7</center>

<h3><span style="color:#00008B">TA Solution</span></h3>

# Please note the following:
- #### The exam is 100 points.
- #### You have 120 minutes to complete the exam.
- #### For every minute late you submit the exam, you will lose one point.
- #### You will upload your solution to the Midterm 2 assignment on Canvas, where you downloaded this.
- #### Your submission should be readable, (the graders can understand your answers,) and it should include all code used in your analysis.
- #### The exam is open-material, closed-communication.
- #### If you find any question to be unclear, state your interpretation and proceed. We will only answer questions of interpretation if there is a typo, error, etc.
- #### The exam will be graded for partial credit.

## Data: Some questions in the exam rely on the data midterm 2.xlsx.

- #### sheet "assets (excess returns)": 11 asset class ETFs.
- #### sheet "factors (excess returns)": excess returns on factors, (MKT and RMW.)

## This data file may be found in the class github repo, in the data folder. For your convenience, it is also posted on Canvas, in the Midterm exam.

# 1. Short Answer (35 pts)

1. <b>(4 pts) 
What is done in the construction of the value factor, HML, to reduce its correlation to
- #### MKT?
- #### SMB?

</b><br><br>

<span style="color:#00008B"> **Solution:** To reduce the correlation with the MKT factor, the value factor is constructed using a long-short construction which ensures market return neutrality and reduces the correlations.<br><br></span>

<span style="color:#00008B">To reduce the correlations with the SMB factor, the Value factor is constructed by trading on stocks with High Book-to-Market within each size bucket. <br><br></span>

<center> <span style="color:#00008B">  <b> HML = $\frac{1}{2}$ (Small Value + Big Value)  - $\frac{1}{2}$ (Small Growth + Big Growth)</b> </span></center>
	
2. <b>(4 pts) The Value factor underperformed in the time since the DFA-case.</b><br><br> ![image.png](image.png) <br><br><b> What might DFA say in defense of value as a good investment, notwithstanding these statistics?</b>

<span style="color:#00008B"> **Solution:** DFA could point out the low correlation of the Value factor with the market portfolio as well as other major factors in the industry like size, and momentum. This low correlation would prove beneficial by providing diverisification benefits in the factor model including other factors mentioned above.</span>

3. <b> (4pts) We found these tangency portfolio weights for the 4 factor model considered by AQR.<br><br>![image-2.png](image-2.png)<br><b>What might we conclude from this about this "AQR" pricing model?</b>

<span style="color:#00008B"> **Solution:**  The low weight on size (SMB) factor suggests that it is not necessary to achieve the tangency, which means it is not necessary for pricing. Thus, it suggests that the SMB factor may not be needed in this pricing model.</span>

4. <b> (5 pts)  True or False. (And very briefly explain your reasoning.)</b><br><br>
	<b>If the CAPM model worked perfectly, then the MKT factor would have the highest Sharpe ratio and highest Treynor ratio of all assets.</b><br><br>

<span style="color:#00008B"> **Solution: True** If the CAPM worked perfectly, then every asset's Sharpe would be the Sharpe of the MKT scaled by correlation to the MKT, (and thus less than the Sharpe of MKT.) 

<span style="color:#00008B"> Additionally, the Treynor ratio would be the same for every asset, meaning that the MKT has the maximum Treynor ratio. (Also fine if one put "False" considering that MKT has the same Sharpe ratio as every other asset. (That is, not worried whether one considered this constant Treynor ratio a maximum or not.)</span>

5. <b>  (4pts) What is the biggest difference in performance between long-only momentum and long-short momentum?</b><br><br>

<span style="color:#00008B"> **Solution:**  <span style="color:00008B"> The biggest difference was the very high correlation that the long only momentum had with the market factor compared to the negative correlation of long-short momentum with the market factor. As a secondary point, the long-only momentum performed much better in terms of risk adjusted returns or sharpe ratio. It had higher mean returns and slightly higher volatility compared to the long-short momentum portfolio. </span>

6. <b> (4pts) We find the following regression results for BTC (bitcoin) returns.</b><br><br>
<b><center> $r_{\text{t+1}}^{\text{BTC}} =  \alpha + \beta r_{t}^{\text{BTC}} + \epsilon_{\text{t+1}}$ </b></center><br>
	<b> with </b><br>
	<b><center> $\beta$ = .05,                       $R^{2}$ = .10 </b></center> <br><br>
	<b>Do you think we could operate an effective momentum strategy given just BTC? Explain and be specific.</b><br><br>

<span style="color:#00008B"> **Solution:** The $\beta$ in the TimeSeries regression signifies the auto-correlation of BTC returns. We observe that this autocorrelation is too small and a would prove very noisy given the low r-squared. Any momentum strategy based solely on BTC would have slight edge but huge risk, and thus undesirable risk-return. (It would be analogous to having a single coin biased 51/49 heads.)

<span style="color:#00008B">The classic momentum strategy utilizes **many** assets in order to flip the biased coin many times, and average out the idiosyncratic risk. Furthermore, it only trades the outlier securities, to try to make better use of the (relatively small) beta.</span>

7. <b>  (4pts) In the factor model using MKT, SMB, HML, UMD, (the "AQR model",) which factors can the entire market have a positive net exposure, and which must the market must have net 0 exposure?</b><br><br>

<span style="color:#00008B"> **Solution:**  <span style="color:00008B"> In the AQR model, the MKT factor is just the returns of the market portfolio over the risk free rate. Thus, the entire market would have a positive net exposure to the MKT factor. The other three factors on the other hand (SMB, HML and UMD) are formed using a long-short construction based on portfolios sorted respectively by Market Cap, Book-To-Market and Returns, with the last two sorted within individual size buckets. Thus the market would have a net 0 exposure to these 3 factors.</span>

8. <b>  (4pts) The APT says that a "perfect" Linear Factor Decomposition (LFD) will work as a perfect Linear Factor Pricing Model (LFPM). What must the factors achieve as an LFD to meet the APT's condition?</b><br><br>

<span style="color:#00008B"> **Solution:** The factors do NOT need to show 100% r-squared for each asset in time series regressions. Rather, they need to leave epsilon (time-series errors) which are **uncorrelated** across assets. Regression alphas should also be zero to ensure no arbitrage.<span style="color:00008B">  </span>

9. <b>   (3pts) Is it possible for a factor model to fit perfectly as an LFPM yet to fit imperfectly as an LFD?</b><br><br>

<span style="color:#00008B"> **Solution:** It is possible for a factor model to fit perfectly as an LFPM yet to fit imperfectly as an LFD. This would be the case if a set of factors can explain the level (mean) returns of all assets without explaining the variation of all asset returns. Specifically, we could find factors that leave all time-series alphas equal to zero, yet which do not set time-series r-squared to 1. As an example, consider the tangency portfolio; it fits perfectly as an LFPM, yet is not a perfect LFD.<span style="color:00008B">  </span>

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
    treynor_ratio = ((fund_ret.values-rf).mean()*12)/beta[0]
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
asset_er = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\midterm_2.xlsx',sheet_name = 'assets (excess returns)', index_col = 'Date')
asset_er.head()
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
	  <th>BWX</th>
	  <th>DBC</th>
	  <th>EEM</th>
	  <th>EFA</th>
	  <th>HYG</th>
	  <th>IEF</th>
	  <th>IYR</th>
	  <th>PSP</th>
	  <th>QAI</th>
	  <th>SPY</th>
	  <th>TIP</th>
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2009-04-30</th>
	  <td>0.008440</td>
	  <td>-0.001553</td>
	  <td>0.155029</td>
	  <td>0.114637</td>
	  <td>0.137907</td>
	  <td>-0.028004</td>
	  <td>0.295597</td>
	  <td>0.229649</td>
	  <td>0.022329</td>
	  <td>0.098793</td>
	  <td>-0.018505</td>
	</tr>
	<tr>
	  <th>2009-05-31</th>
	  <td>0.054144</td>
	  <td>0.163135</td>
	  <td>0.159872</td>
	  <td>0.132390</td>
	  <td>0.029027</td>
	  <td>-0.020302</td>
	  <td>0.023199</td>
	  <td>0.054364</td>
	  <td>0.028337</td>
	  <td>0.058925</td>
	  <td>0.020438</td>
	</tr>
	<tr>
	  <th>2009-06-30</th>
	  <td>0.004550</td>
	  <td>-0.026858</td>
	  <td>-0.023094</td>
	  <td>-0.014648</td>
	  <td>0.032918</td>
	  <td>-0.006170</td>
	  <td>-0.025462</td>
	  <td>0.044850</td>
	  <td>-0.004036</td>
	  <td>-0.001254</td>
	  <td>0.001382</td>
	</tr>
	<tr>
	  <th>2009-07-31</th>
	  <td>0.031311</td>
	  <td>0.018595</td>
	  <td>0.110173</td>
	  <td>0.100442</td>
	  <td>0.069218</td>
	  <td>0.008344</td>
	  <td>0.105826</td>
	  <td>0.143274</td>
	  <td>0.015353</td>
	  <td>0.074633</td>
	  <td>0.000907</td>
	</tr>
	<tr>
	  <th>2009-08-31</th>
	  <td>0.007192</td>
	  <td>-0.040800</td>
	  <td>-0.013572</td>
	  <td>0.044595</td>
	  <td>-0.017405</td>
	  <td>0.007199</td>
	  <td>0.131503</td>
	  <td>0.032978</td>
	  <td>-0.004587</td>
	  <td>0.036504</td>
	  <td>0.007978</td>
	</tr>
  </tbody>
</table>
</div>

```python
performance_summary(asset_er)
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
	  <th>BWX</th>
	  <td>-0.005082</td>
	  <td>0.080215</td>
	  <td>-0.063354</td>
	  <td>-0.533810</td>
	  <td>0.754887</td>
	  <td>-0.043322</td>
	  <td>-0.055641</td>
	  <td>-0.321425</td>
	  <td>2020-12-31</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>0.027191</td>
	  <td>0.181278</td>
	  <td>0.149994</td>
	  <td>-0.349947</td>
	  <td>0.694757</td>
	  <td>-0.087030</td>
	  <td>-0.114956</td>
	  <td>-0.669081</td>
	  <td>2011-04-30</td>
	  <td>2020-04-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>0.059242</td>
	  <td>0.194272</td>
	  <td>0.304945</td>
	  <td>0.071176</td>
	  <td>0.946009</td>
	  <td>-0.085852</td>
	  <td>-0.112785</td>
	  <td>-0.352584</td>
	  <td>2021-06-30</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>0.068677</td>
	  <td>0.164204</td>
	  <td>0.418240</td>
	  <td>-0.131902</td>
	  <td>0.792395</td>
	  <td>-0.079559</td>
	  <td>-0.100835</td>
	  <td>-0.276203</td>
	  <td>2021-08-31</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>0.063343</td>
	  <td>0.090398</td>
	  <td>0.700712</td>
	  <td>0.476834</td>
	  <td>5.840337</td>
	  <td>-0.030056</td>
	  <td>-0.051163</td>
	  <td>-0.152857</td>
	  <td>2021-12-31</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>0.017227</td>
	  <td>0.060902</td>
	  <td>0.282866</td>
	  <td>-0.156181</td>
	  <td>0.406242</td>
	  <td>-0.027868</td>
	  <td>-0.038766</td>
	  <td>-0.199855</td>
	  <td>2020-07-31</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>0.134860</td>
	  <td>0.188149</td>
	  <td>0.716773</td>
	  <td>0.493296</td>
	  <td>5.004779</td>
	  <td>-0.065301</td>
	  <td>-0.097177</td>
	  <td>-0.286425</td>
	  <td>2021-12-31</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>0.116765</td>
	  <td>0.225276</td>
	  <td>0.518319</td>
	  <td>-0.488529</td>
	  <td>2.579557</td>
	  <td>-0.103339</td>
	  <td>-0.142933</td>
	  <td>-0.452017</td>
	  <td>2021-10-31</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>0.014902</td>
	  <td>0.050370</td>
	  <td>0.295844</td>
	  <td>-0.659900</td>
	  <td>1.927903</td>
	  <td>-0.019918</td>
	  <td>-0.034179</td>
	  <td>-0.137591</td>
	  <td>2021-06-30</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>SPY</th>
	  <td>0.137331</td>
	  <td>0.147779</td>
	  <td>0.929300</td>
	  <td>-0.384126</td>
	  <td>0.695213</td>
	  <td>-0.069389</td>
	  <td>-0.086928</td>
	  <td>-0.239572</td>
	  <td>2021-12-31</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>0.024477</td>
	  <td>0.051551</td>
	  <td>0.474805</td>
	  <td>-0.706652</td>
	  <td>2.842352</td>
	  <td>-0.020798</td>
	  <td>-0.032878</td>
	  <td>-0.139574</td>
	  <td>2021-12-31</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

```python
factors_er = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\midterm_2.xlsx',sheet_name = 'factors (excess returns)', index_col = 'Date')
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
	  <th>RMW</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2009-04-30</th>
	  <td>0.1018</td>
	  <td>0.0131</td>
	</tr>
	<tr>
	  <th>2009-05-31</th>
	  <td>0.0521</td>
	  <td>-0.0078</td>
	</tr>
	<tr>
	  <th>2009-06-30</th>
	  <td>0.0043</td>
	  <td>-0.0141</td>
	</tr>
	<tr>
	  <th>2009-07-31</th>
	  <td>0.0772</td>
	  <td>-0.0046</td>
	</tr>
	<tr>
	  <th>2009-08-31</th>
	  <td>0.0333</td>
	  <td>-0.0302</td>
	</tr>
  </tbody>
</table>
</div>

```python
performance_summary(factors_er)
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
	  <th>MKT</th>
	  <td>0.138474</td>
	  <td>0.153381</td>
	  <td>0.902810</td>
	  <td>-0.342199</td>
	  <td>0.838906</td>
	  <td>-0.075575</td>
	  <td>-0.090556</td>
	  <td>-0.254668</td>
	  <td>2021-12-31</td>
	  <td>2022-09-30</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.027000</td>
	  <td>0.065471</td>
	  <td>0.412395</td>
	  <td>0.557824</td>
	  <td>1.392927</td>
	  <td>-0.022490</td>
	  <td>-0.032589</td>
	  <td>-0.122712</td>
	  <td>2012-05-31</td>
	  <td>2014-02-28</td>
	  <td>2019-08-31</td>
	</tr>
  </tbody>
</table>
</div>

## 2. Pricing Model (50 pts)

### Use the provided data to test a two-factor pricing model.

### <center>$\mathop{\mathbb{E}}[\tilde{r}^{i}] = \beta^{i,\text{m}} \mathop{\mathbb{E}}[\tilde{r}^{\text{m}}] + \beta^{i,\text{RMW}} \mathop{\mathbb{E}}[\tilde{r}^{\text{RMW}}]$</center>

## 2.1 Estimate the time-series test of the pricing model.

## 2.1.a) (8pts) Report…

- ### (for each asset) annualized alpha, beta, and r-squared.
- ### annualized MAE of the time-series alphas,
- ### mean of the r-squared statistics.

```python
portfolios = asset_er.columns
df_lst= []
for port in portfolios:
    fund_ret = asset_er[port]
    reg = regression_based_performance(factors_er,fund_ret,0)
    beta_mkt = reg[0][0]
    beta_rmw = reg[0][1]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]*12
    r_squared = reg[4]
    df_lst.append(pd.DataFrame([[beta_mkt,beta_rmw,treynor_ratio,information_ratio,alpha,r_squared]],columns=['Market Beta','Profitability Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = [port]))

reg_performance = pd.concat(df_lst)
reg_performance.loc[:,['Alpha','Market Beta','Profitability Beta','R-Squared']]

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
	  <th>Profitability Beta</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>BWX</th>
	  <td>-0.040572</td>
	  <td>0.236296</td>
	  <td>0.102367</td>
	  <td>0.204693</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>-0.052020</td>
	  <td>0.593184</td>
	  <td>-0.108593</td>
	  <td>0.256795</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>-0.068868</td>
	  <td>0.943620</td>
	  <td>-0.094811</td>
	  <td>0.560110</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>-0.058188</td>
	  <td>0.931258</td>
	  <td>-0.077485</td>
	  <td>0.762220</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>-0.000396</td>
	  <td>0.453235</td>
	  <td>0.036151</td>
	  <td>0.588641</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>0.023988</td>
	  <td>-0.081829</td>
	  <td>0.169336</td>
	  <td>0.082003</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>0.001008</td>
	  <td>0.913359</td>
	  <td>0.273136</td>
	  <td>0.551373</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>-0.065928</td>
	  <td>1.340758</td>
	  <td>-0.109786</td>
	  <td>0.839310</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>-0.023700</td>
	  <td>0.278246</td>
	  <td>0.002842</td>
	  <td>0.717377</td>
	</tr>
	<tr>
	  <th>SPY</th>
	  <td>0.000600</td>
	  <td>0.962864</td>
	  <td>0.125851</td>
	  <td>0.992350</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>0.006864</td>
	  <td>0.092997</td>
	  <td>0.175587</td>
	  <td>0.115773</td>
	</tr>
  </tbody>
</table>
</div>

```python
n = asset_er.shape[1]
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
	  <td>0.031103</td>
	  <td>0.515513</td>
	</tr>
  </tbody>
</table>
</div>

## 2.1.b) (7pts) If the pricing model worked perfectly, what would these statistics be?

<span style="color:#00008B"> **Solution:** If the pricing model worked perfectly: </span> <br>

- <span style="color:#00008B"> The Alpha for each asset would be zero as we expect the factors to explain most of the expected returns of the portfolios.</span> <br><br>
- <span style="color:#00008B"> Based on the expectation of alphas to be zero we would be expect the MAE to be near zero as well.</span> <br><br>
- <span style="color:#00008B"> To be clear, these would be zero in population, and for any given sample they may be non-zero but by a statistically insignificant amount.</span> <br><br>
- <span style="color:#00008B"> Nothing could be said about the R-Squared as in the TimeSeries test we do not care about high R-Squared. Thus, the average R-Squared statistic would be unrestricted.</span> <br><br>
- <span style="color:#00008B"> Nothing needs to be said about the regression $\beta$, as they would vary with the exposure to the respective factor and would vary with each asset.</span> <br><br>

## 2.1.c) (5pts) What do you conclude from the time-series test of this model? That is, give some interpretation as to how well it prices the assets, and be specific.

<span style="color:#00008B"> **Solution:** We observe that the alphas in the TimeSeries test are not zero for all assets such as: BWX, DBC, EEM, EFA, IEF, PSP and QAI.</span> <br>

<span style="color:#00008B"> However, for some other assets we observe near zero annulaized mean alphas, such as: HYG, IYR, SPY and TIP.</span> <br><br>

<span style="color:#00008B"> The MAE is also ~3% meaning there is some unexplained premia in each asset.</span> <br><br>

<span style="color:#00008B">Based on these observations, even though the model has near zero alpha's for some of the assets, it does not do a good job in explaining the excess returns for all our assets and thus fails the TimeSeries test. The model could benefit from addition of another factor in expalining those unexplained returns.</span> <br><br>

## 2.2 Estimate the cross-sectional test of the pricing model. Include an intercept in the cross-sectional regression.

## 2.2.a) (8pts) Report the…

- ### annualized intercept.
- ### annualized factor premia.
- ### r-squared.
- ### annualized mean-absolute error.

```python
y = performance_summary(asset_er)['Mean']
X = reg_performance.loc[:,['Market Beta', 'Profitability Beta']]
X = sm.tools.add_constant(X)
CS_reg_model = sm.OLS(y,X).fit()
CS_reg_performance = CS_reg_model.params.to_frame('Cross-Sectional Regression').T.rename(columns = {'const':'Intercept','Market Beta':'Market Premia','Profitability Beta':'Profitability Premia'})
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
	  <th>Profitability Premia</th>
	  <th>R-Squared</th>
	  <th>MAE</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Cross-Sectional Regression</th>
	  <td>-0.02142</td>
	  <td>0.118646</td>
	  <td>0.210069</td>
	  <td>0.905533</td>
	  <td>0.010942</td>
	</tr>
  </tbody>
</table>
</div>

## 2.2.b) (7pts) If the pricing model worked perfectly, what would these statistics be?

<span style="color:#00008B"> **Solution:** If the pricing model worked perfectly: </span> <br>

<span style="color:#00008B">Most importantly,</span>

- <span style="color:#00008B"> The R-Squared should be 1 as we expect the factors to explain all of the expected returns of the portfolios.</span> <br><br>
- <span style="color:#00008B"> We expect the MAE (calculated as the mean of the absolute residuals from the CS regression) to be zero as well.</span> <br><br>

<span style="color:#00008B"> Less importantly,</span>

- <span style="color:#00008B"> We would expect the Alpha for the cross-sectional regression to be zero if we measured the risk-free rate (in building the excess returns). A non-zero cross-sectional intercept means the model pricing is off by a fixed amount, potentially due to risk-free rate mismeasurment.
</span> <br><br>

- <span style="color:#00008B"> We cannot say anything specific about the factor premia as the cross-sectional regression provides the freedom for the factor premia to be anything and is derived as the regression coefficient.</span> <br><br>

## 2.2.c) (5pts) What do you conclude from the cross-sectional test of this model? That is, give some interpretation as to how well it prices the assets, and be specific.

<span style="color:#00008B"> **Solution:** We observe that 

- <span style="color:#00008B"> The R-Squared is very high but not exactly 1.</span> <br>
- <span style="color:#00008B"> Similarly the MAE is also ~1% and is not zero.</span> <br><br>

<span style="color:#00008B">Based on these observations we can infer that the model is doing much better than the time-series model in explaining the returns, but is not complete to perfectly explain the returns for all the assets.</span> <br><br>

Also, 

- <span style="color:#00008B"> the intercept in the Cross-Sectional test is not zero, so there is potential mismeasurement in the risk-free rate or some fixed amount of mispricing across all assets.

## 2.3 (5pts) Is the RMW factor more lucrative according to the cross-sectional or time-series estimates?

<span style="color:#00008B"> **Solution:** Based on the results of the regression the RMW factor is quite lucrative according to the cross-sectional estimates which estimate the annualized premia to be around ~21%. The TimeSeries estimate, which are just the sample average, estimate the premia to be around ~2.7% only.</span> <br>

```python
rmw_premia = CS_reg_performance.loc[:,['Profitability Premia']]
rmw_premia.loc['TimeSeries Regression','Profitability Premia'] = performance_summary(factors_er).loc['RMW','Mean']
rmw_premia.T
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
	  <th>Profitability Premia</th>
	  <td>0.210069</td>
	  <td>0.027</td>
	</tr>
  </tbody>
</table>
</div>

## 2.4 (5pts) Make a chart showing the 11 asset premia (annualized) as estimated by the
- ### sample average
- ### LFPM in equation (1) with time-series estimated factor premia
- ### LFPM in equation (1) with cross-sectional estimated factor premia

```python
sample_avg = performance_summary(asset_er).loc[:,['Mean']].rename(columns={'Mean':'Sample Average'})
TS_asset_premia = np.matrix(reg_performance.loc[:,['Market Beta','Profitability Beta']]) @ np.matrix(performance_summary(factors_er).loc[:,['Mean']])
TS_asset_premia  = pd.DataFrame(TS_asset_premia, columns = ['TimeSeries'], index = asset_er.columns)

CS_asset_premia = np.matrix(reg_performance.loc[:,['Market Beta','Profitability Beta']]) @ np.matrix(CS_reg_performance.loc[:,['Market Premia','Profitability Premia']].T)
CS_asset_premia  = pd.DataFrame(CS_asset_premia, columns = ['Cross-Sectional'], index = asset_er.columns)
asset_premia_estimates = pd.concat([sample_avg.T,TS_asset_premia.T,CS_asset_premia.T]).T
asset_premia_estimates.plot(x=asset_premia_estimates.index.name, y=asset_premia_estimates.columns, kind="bar")

plt.xlabel("Assets", fontsize = 14)
plt.ylabel("Premia", fontsize = 14)
plt.title("Asset Premia", fontsize = 18)
plt.legend()
plt.show()
asset_premia_estimates

```

![png](output_33_0.png)

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
	  <th>Sample Average</th>
	  <th>TimeSeries</th>
	  <th>Cross-Sectional</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>BWX</th>
	  <td>-0.005082</td>
	  <td>0.035485</td>
	  <td>0.049540</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>0.027191</td>
	  <td>0.079209</td>
	  <td>0.047567</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>0.059242</td>
	  <td>0.128107</td>
	  <td>0.092040</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>0.068677</td>
	  <td>0.126863</td>
	  <td>0.094213</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>0.063343</td>
	  <td>0.063737</td>
	  <td>0.061369</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>0.017227</td>
	  <td>-0.006759</td>
	  <td>0.025864</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>0.134860</td>
	  <td>0.133851</td>
	  <td>0.165743</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>0.116765</td>
	  <td>0.182696</td>
	  <td>0.136013</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>0.014902</td>
	  <td>0.038607</td>
	  <td>0.033610</td>
	</tr>
	<tr>
	  <th>SPY</th>
	  <td>0.137331</td>
	  <td>0.136730</td>
	  <td>0.140677</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>0.024477</td>
	  <td>0.017618</td>
	  <td>0.047919</td>
	</tr>
  </tbody>
</table>
</div>

## 3. Applications to Previously Seen Topics (15 pts)

### 3.1 (5pts) Calculate the tangency portfolio of the 11 excess return assets based on sample data.
### Report the
- ### tangency weights
- ### sharpe ratio of the tangency portfolio

```python
mean_excess_ret =  np.array(performance_summary(asset_er)['Mean'])

tangency_port_assets = tangency_portfolio_rfr(mean_excess_ret,asset_er.cov())
tangency_port_stats = mvo_performance_stats(mean_excess_ret,asset_er.cov(),tangency_port_assets,'Tangency Portfolio',12)
tangency_port_assets = pd.DataFrame(tangency_port_assets,columns= ["Tangency Portfolio Weight"],index=asset_er.columns)
tangency_port_assets.T
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
	  <th>BWX</th>
	  <th>DBC</th>
	  <th>EEM</th>
	  <th>EFA</th>
	  <th>HYG</th>
	  <th>IEF</th>
	  <th>IYR</th>
	  <th>PSP</th>
	  <th>QAI</th>
	  <th>SPY</th>
	  <th>TIP</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Tangency Portfolio Weight</th>
	  <td>-16.683394</td>
	  <td>2.661675</td>
	  <td>5.002286</td>
	  <td>-1.652812</td>
	  <td>15.845543</td>
	  <td>31.671421</td>
	  <td>-4.251008</td>
	  <td>-6.980191</td>
	  <td>-60.265287</td>
	  <td>33.171118</td>
	  <td>2.480649</td>
	</tr>
  </tbody>
</table>
</div>

```python
tangency_port_stats
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
	  <th>Tangency Portfolio</th>
	  <td>4.219052</td>
	  <td>2.291391</td>
	  <td>1.841263</td>
	</tr>
  </tbody>
</table>
</div>

```python

fig = plt.figure()
ax = fig.add_axes([0,0,1,1])
ax.bar(tangency_port_assets.index,tangency_port_assets['Tangency Portfolio Weight'])
plt.xlabel('Assets', fontsize = 14)
plt.ylabel('Weight', fontsize = 14)
plt.title('Sample Average - Tangency Portfolio', fontsize = 18)
plt.show()


```

![png](output_38_0.png)

### 3.2  (5pts) Re-do the previous question regarding the tangency portfolio. But this time, utilize the expected returns as implied by the cross-sectional estimation of the pricing model in the tangency portfolio estimation. That is, use the cross-sectional premia shown in your table from Question 2.4.

```python
mean_excess_ret_cs =  np.array(CS_asset_premia['Cross-Sectional'].T)

tangency_port_assets_cs = tangency_portfolio_rfr(mean_excess_ret_cs,asset_er.cov())
tangency_port_stats_cs = mvo_performance_stats(mean_excess_ret_cs,asset_er.cov(),tangency_port_assets_cs,'Tangency Portfolio',12)
tangency_port_assets_cs = pd.DataFrame(tangency_port_assets_cs,columns= ["Tangency Portfolio Weight"],index=asset_er.columns)
tangency_port_assets_cs.T
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
	  <th>BWX</th>
	  <th>DBC</th>
	  <th>EEM</th>
	  <th>EFA</th>
	  <th>HYG</th>
	  <th>IEF</th>
	  <th>IYR</th>
	  <th>PSP</th>
	  <th>QAI</th>
	  <th>SPY</th>
	  <th>TIP</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Tangency Portfolio Weight</th>
	  <td>0.336998</td>
	  <td>-0.028664</td>
	  <td>-0.02035</td>
	  <td>-0.17547</td>
	  <td>0.226356</td>
	  <td>-0.19458</td>
	  <td>0.073538</td>
	  <td>-0.5109</td>
	  <td>-1.384265</td>
	  <td>1.386521</td>
	  <td>1.290815</td>
	</tr>
  </tbody>
</table>
</div>

```python
tangency_port_stats_cs
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
	  <th>Tangency Portfolio</th>
	  <td>0.158866</td>
	  <td>0.107728</td>
	  <td>1.474698</td>
	</tr>
  </tbody>
</table>
</div>

```python

fig = plt.figure()
ax = fig.add_axes([0,0,1,1])
ax.bar(tangency_port_assets_cs.index,tangency_port_assets_cs['Tangency Portfolio Weight'])
plt.xlabel('Assets', fontsize = 14)
plt.ylabel('Weight', fontsize = 14)
plt.title('Cross-Sectional Premia - Tangency Portfolio', fontsize = 18)
plt.show()

```

![png](output_42_0.png)

### 3.3 (5pts) Assume lognormal, iid returns. Suppose for this question that, (in log returns,) the expected excess return of RMW is 3% with a 7% volatility.

### What is the probability that RMW will have positive excess returns over the next 5 years?

```python
probability = 100- calc_probability_lowret(5,0,0.03,0.07)
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
	  <th>100</th>
	  <td>50.000000</td>
	</tr>
	<tr>
	  <th>99</th>
	  <td>66.588243</td>
	</tr>
	<tr>
	  <th>98</th>
	  <td>72.777301</td>
	</tr>
	<tr>
	  <th>97</th>
	  <td>77.104947</td>
	</tr>
	<tr>
	  <th>96</th>
	  <td>80.431703</td>
	</tr>
	<tr>
	  <th>95</th>
	  <td>83.104799</td>
	</tr>
  </tbody>
</table>
</div>


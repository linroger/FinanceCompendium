---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Smart Beta Exchange-Traded-Funds and Factor Investing.
linter-yaml-title-alias: Smart Beta Exchange-Traded-Funds and Factor Investing.
---

<div style="text-align: right"> Mark Hendricks </div>

<left>FINM 36700 - Portfolio Theory and Risk Management</left> 

<br>
<left>Fall 2022</left>

<h2><center> Homework 5 - Smart Beta Exchange-Traded Funds and Factor Investing. </center></h2>

<center>Due on Monday, Nov 1</center>

<h3><span style="color:#00008B">Solution - Piyush Kontu</span></h3>

<h3><span style="color:#00008B">Email - pkontu@uchicago.edu</span></h3>

# Smart Beta Exchange-Traded-Funds and Factor Investing.
## This case is a good introduction to important pricing factors. It also gives useful introduction and context to ETFs, passive vs active investing, and so-called "smart beta" funds.

# 1. The Case

## <i> This section will not be graded, but it will be discussed in class.</i>

## 1.1 Describe how each of the factors (other than MKT) is measured.That is, each factor is a portfolio of stocks-which stocks are included in the factor portfolio?

- **Size** - Factor takes a long position on firms with small market capitalizations and a short position on firms with large market capitalizations. The classification of small and large can be based on percentiles,quintiles or deciles. <br><br>
- **Value** - Factor takes a long position on firms with high book-to-market and a short position on firms with low book-to-market. <br><br>
- **Profitability** - Factor takes a long position on firms with high ratio of operating profit to book value and a short position on firms with low ratio of operating profit to book value.<br><br>
- **Investment** - Factor takes a long position on firms with conservative investment and a short position on firms aggressive investment. Investment is measured by the percentage change in the value of firms's asset over the course of a year.<br><br>
- **Momentum** - Factor takes a long position on stocks with large price appreciation in last one year and a short position on firms with price depriciation.<br><br>

## 1.2 Is the factor portfolio…
- #### long-only
- #### long-short
- #### value-weighted
- #### equally-weighted <br><br>
- All the factors are long-short.<br><br>
- While Size, Value, Profitability and Invetment are generally value-weighted, Momentum is generally equally-weighted.

## 1.3 What steps are taken in the factor construction to try to reduce the correlation between the factors?

- Creating Long Short portfolios based on deciles of sorted assets. The sorting is done on price or accounting signals that are relatively orthogonal to each other.<br><br>
- Further the value weighting (using the signal in weighting, for eg - B/M for value factor) also helps keep the correlations relatively lower.

## 1.4 What is the point of figures 1-6?

- Figures 1-6 depict the return premium exhibited by different quintiles of the sorted assets. <br><br>
- For example - Highest Momentum has a return premium of ~10% over lowest momentum portfolio.

## 1.5 How is a "smart beta" ETF different from a traditional ETF?

- Smart Beta ETFs are constructed with an emphasis on weighting stocks in the ETF by incorporating into the weighting scheme some aspect of security's fundamental value, such as B/M of a stock for the value factor. <br><br>
- Traditional ETFs simply weight the stocks in the portfolio by their market capitaliztion.

## 1.6 Is it possible for all investors to have exposure to the "value" factor?

- No, if everyone is exposed to the value factor, the factor premia is driven away and would already be reflected in the Market factor premium.

## 1.7 How does factor investing differ from traditional diversification?

- In traditional diversification different asset classes such as equities, fixed income, commodities, cash etc. is used to diversify firm specific risk. <br><br>
- In factor investing you diversify your portfolio across factor portfolios (Smart Beta ETFs) so that the investment has some amount in small firm portfolio, some in value portfolio etc in the same asset class.

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
import warnings
warnings.filterwarnings("ignore")

%matplotlib inline
sns.set(rc={'figure.figsize':(15, 6)})

import matplotlib.pyplot as plt
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
    summary_stats['VaR (0.5)'] = return_data.quantile(.05, axis = 0)
    summary_stats['CVaR (0.5)'] = return_data[return_data <= return_data.quantile(.05, axis = 0)].mean()
    
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
        return (beta,treynor_ratio,information_ratio,alpha,r_squared,tracking_error,model.resid)
    else:
        return (beta,treynor_ratio,r_squared,tracking_error,model.resid)
```

```python
def tangency_portfolio_rfr(asset_return,cov_matrix):
    """ 
        Returns the tangency portfolio weights in a (1 x n) vector when a riskless assset is available
        Inputs: 
            asset_return - Excess return over the risk free rate for each asset (n x 1) Vector
            cov_matrix = nxn covariance matrix for the assets
    """
    asset_cov = np.array(cov_matrix)
    inverted_cov= np.linalg.inv(asset_cov)
    one_vector = np.ones(len(cov_matrix.index))
    
    den = (one_vector @ inverted_cov) @ (asset_return)
    num =  inverted_cov @ asset_return
    return (1/den) * num
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
def oos_rsquare(factors,port_ret,rolling_window = 60):
    """ 
        Returns the OOS R-Squared for a rolling regression(prediction) and expanding mean (baseline) 
        from given set of returns and factors
        Inputs:
            factors - Dataframe containing monthly returns of the regressors
            port_ret - Dataframe containing monthly excess returns of the regressand portfolios
            roll_window = rolling window for regression
        Output:
            Dataframe with OOS R-Squared for each of the portfolios in port_ret
    """
    factor_exp = factors.expanding().mean()
    portfolios = port_ret.columns
    df_roll = []
    for port in portfolios:
        fund_ret = port_ret[port]
        reg = rolling_regression_param(factors,fund_ret,60) 
        port_betas = reg.dropna()[factors.columns]
        port_betas.index = factor_exp[port_betas.index[0]-1:].index
        rollin_reg_predict = (port_betas * factor_exp[port_betas.index[0]:]).sum(axis=1).shift(1).dropna()
        exp_means_predict = fund_ret.expanding().mean().shift(1).loc[rollin_reg_predict.index[0]:]

        mse_forecast = ((rollin_reg_predict - fund_ret.loc[rollin_reg_predict.index[0]:])**2).sum()
        mse_baseline = ((exp_means_predict - fund_ret.loc[rollin_reg_predict.index[0]:])**2).sum()

        OOS_RSquared = 1-(mse_forecast/mse_baseline)
        df_roll.append(pd.DataFrame([[OOS_RSquared]],columns=['OOS R-Squared'],index = [port]))

    return pd.concat(df_roll)

```

# Reading Data

```python
factors = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\factor_pricing_data.xlsx',sheet_name = 'factors (excess returns)')
factors = factors.set_index('Date')
factors.head()
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
	  <th>SMB</th>
	  <th>HML</th>
	  <th>RMW</th>
	  <th>CMA</th>
	  <th>UMD</th>
	</tr>
	<tr>
	  <th>Date</th>
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
	  <th>1980-01-31</th>
	  <td>0.0551</td>
	  <td>0.0183</td>
	  <td>0.0175</td>
	  <td>-0.0170</td>
	  <td>0.0164</td>
	  <td>0.0755</td>
	</tr>
	<tr>
	  <th>1980-02-29</th>
	  <td>-0.0122</td>
	  <td>-0.0157</td>
	  <td>0.0061</td>
	  <td>0.0004</td>
	  <td>0.0268</td>
	  <td>0.0788</td>
	</tr>
	<tr>
	  <th>1980-03-31</th>
	  <td>-0.1290</td>
	  <td>-0.0693</td>
	  <td>-0.0101</td>
	  <td>0.0146</td>
	  <td>-0.0119</td>
	  <td>-0.0955</td>
	</tr>
	<tr>
	  <th>1980-04-30</th>
	  <td>0.0397</td>
	  <td>0.0105</td>
	  <td>0.0106</td>
	  <td>-0.0210</td>
	  <td>0.0029</td>
	  <td>-0.0043</td>
	</tr>
	<tr>
	  <th>1980-05-31</th>
	  <td>0.0526</td>
	  <td>0.0211</td>
	  <td>0.0038</td>
	  <td>0.0034</td>
	  <td>-0.0031</td>
	  <td>-0.0112</td>
	</tr>
  </tbody>
</table>
</div>

```python
port_ret = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\factor_pricing_data.xlsx',sheet_name = 'portfolios (excess returns)')
port_ret = port_ret.set_index('Date')
port_ret.head()

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
	  <th>Agric</th>
	  <th>Food</th>
	  <th>Soda</th>
	  <th>Beer</th>
	  <th>Smoke</th>
	  <th>Toys</th>
	  <th>Fun</th>
	  <th>Books</th>
	  <th>Hshld</th>
	  <th>Clths</th>
	  <th>…</th>
	  <th>Boxes</th>
	  <th>Trans</th>
	  <th>Whlsl</th>
	  <th>Rtail</th>
	  <th>Meals</th>
	  <th>Banks</th>
	  <th>Insur</th>
	  <th>RlEst</th>
	  <th>Fin</th>
	  <th>Other</th>
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
	  <th>1980-01-31</th>
	  <td>-0.0050</td>
	  <td>0.0283</td>
	  <td>0.0084</td>
	  <td>0.1024</td>
	  <td>-0.0143</td>
	  <td>0.0999</td>
	  <td>0.0354</td>
	  <td>0.0352</td>
	  <td>0.0048</td>
	  <td>0.0032</td>
	  <td>…</td>
	  <td>0.0159</td>
	  <td>0.0876</td>
	  <td>0.0463</td>
	  <td>-0.0116</td>
	  <td>0.0458</td>
	  <td>-0.0279</td>
	  <td>0.0258</td>
	  <td>0.0751</td>
	  <td>0.0299</td>
	  <td>0.0665</td>
	</tr>
	<tr>
	  <th>1980-02-29</th>
	  <td>0.0111</td>
	  <td>-0.0610</td>
	  <td>-0.0966</td>
	  <td>-0.0319</td>
	  <td>-0.0569</td>
	  <td>-0.0314</td>
	  <td>-0.0527</td>
	  <td>-0.0788</td>
	  <td>-0.0556</td>
	  <td>-0.0140</td>
	  <td>…</td>
	  <td>-0.0079</td>
	  <td>-0.0535</td>
	  <td>-0.0339</td>
	  <td>-0.0633</td>
	  <td>-0.0638</td>
	  <td>-0.0855</td>
	  <td>-0.0960</td>
	  <td>-0.0314</td>
	  <td>-0.0275</td>
	  <td>-0.0267</td>
	</tr>
	<tr>
	  <th>1980-03-31</th>
	  <td>-0.2244</td>
	  <td>-0.1116</td>
	  <td>-0.0167</td>
	  <td>-0.1464</td>
	  <td>-0.0192</td>
	  <td>-0.1281</td>
	  <td>-0.0817</td>
	  <td>-0.1278</td>
	  <td>-0.0565</td>
	  <td>-0.0664</td>
	  <td>…</td>
	  <td>-0.0821</td>
	  <td>-0.1511</td>
	  <td>-0.1106</td>
	  <td>-0.0922</td>
	  <td>-0.1443</td>
	  <td>-0.0563</td>
	  <td>-0.0883</td>
	  <td>-0.2441</td>
	  <td>-0.1245</td>
	  <td>-0.1728</td>
	</tr>
	<tr>
	  <th>1980-04-30</th>
	  <td>0.0451</td>
	  <td>0.0766</td>
	  <td>0.0232</td>
	  <td>0.0305</td>
	  <td>0.0831</td>
	  <td>-0.0521</td>
	  <td>0.0775</td>
	  <td>0.0182</td>
	  <td>0.0304</td>
	  <td>0.0113</td>
	  <td>…</td>
	  <td>0.0419</td>
	  <td>-0.0097</td>
	  <td>-0.0300</td>
	  <td>0.0351</td>
	  <td>0.0522</td>
	  <td>0.0729</td>
	  <td>0.0532</td>
	  <td>0.0997</td>
	  <td>0.0448</td>
	  <td>0.0762</td>
	</tr>
	<tr>
	  <th>1980-05-31</th>
	  <td>0.0637</td>
	  <td>0.0792</td>
	  <td>0.0457</td>
	  <td>0.0895</td>
	  <td>0.0814</td>
	  <td>0.0512</td>
	  <td>0.0324</td>
	  <td>0.0876</td>
	  <td>0.0560</td>
	  <td>0.0064</td>
	  <td>…</td>
	  <td>0.0565</td>
	  <td>0.1060</td>
	  <td>0.1147</td>
	  <td>0.0868</td>
	  <td>0.1127</td>
	  <td>0.0577</td>
	  <td>0.0557</td>
	  <td>0.1040</td>
	  <td>0.0839</td>
	  <td>0.0684</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 49 columns</p>
</div>

## 2. The Factors

### Use the data found in "factor pricing data.xlsx".
- #### FACTORS: Monthly excess return data for the overall equity market, $\tilde{r}^{MKT}$. The sheet also contains data on five additional factors. All factor data is already provided as excess returns.

## 2.1) Analyze the factors, similar to how you analyzed the three Fama-French factors in Homework 4. You now have three additional factors, so let's compare there univariate statistics.

- ### mean
- ### volatility
- ### Sharpe

```python
factor_summary = performance_summary(factors)
factor_summary.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.5)','CVaR (0.5)']]
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
	  <th>VaR (0.5)</th>
	  <th>CVaR (0.5)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.083123</td>
	  <td>0.156687</td>
	  <td>0.530507</td>
	  <td>-0.074085</td>
	  <td>-0.103181</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.012169</td>
	  <td>0.100518</td>
	  <td>0.121061</td>
	  <td>-0.041860</td>
	  <td>-0.057242</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.027523</td>
	  <td>0.108816</td>
	  <td>0.252929</td>
	  <td>-0.041945</td>
	  <td>-0.065731</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.044845</td>
	  <td>0.083410</td>
	  <td>0.537649</td>
	  <td>-0.028485</td>
	  <td>-0.050665</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.033260</td>
	  <td>0.071503</td>
	  <td>0.465159</td>
	  <td>-0.026735</td>
	  <td>-0.038588</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.065513</td>
	  <td>0.154486</td>
	  <td>0.424069</td>
	  <td>-0.068145</td>
	  <td>-0.107323</td>
	</tr>
  </tbody>
</table>
</div>

```python
sub_samples = {
              '1926-1980' : ['1926','1980'],
              '1981-2001' : ['1981','2001'],
              '2002-2022' : ['2002','2022'],
              }

sub_summary = []
for k,v in sub_samples.items():
    sub_sample = factors.loc[sub_samples[k][0]:sub_samples[k][1]]
    sub_sample_summary = performance_summary(sub_sample)
    sub_sample_summary = sub_sample_summary.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.5)','CVaR (0.5)']]
    sub_sample_summary['Period'] = k
    sub_sample_summary= sub_sample_summary.reset_index().rename(columns = {'index':'Factor'}).set_index(['Period','Factor'])
    sub_summary.append(sub_sample_summary)

sub_summary_df = pd.concat(sub_summary)
sub_summary_df
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
	  <th>VaR (0.5)</th>
	  <th>CVaR (0.5)</th>
	</tr>
	<tr>
	  <th>Period</th>
	  <th>Factor</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th rowspan="6" valign="top">1926-1980</th>
	  <th>MKT</th>
	  <td>0.202900</td>
	  <td>0.203717</td>
	  <td>0.995990</td>
	  <td>-0.082910</td>
	  <td>-0.129000</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.053700</td>
	  <td>0.108821</td>
	  <td>0.493472</td>
	  <td>-0.049390</td>
	  <td>-0.069300</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.198700</td>
	  <td>0.117754</td>
	  <td>-1.687412</td>
	  <td>-0.072740</td>
	  <td>-0.083300</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.107800</td>
	  <td>0.073037</td>
	  <td>1.475957</td>
	  <td>-0.018800</td>
	  <td>-0.021000</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>-0.097700</td>
	  <td>0.076936</td>
	  <td>-1.269882</td>
	  <td>-0.040650</td>
	  <td>-0.056600</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.307800</td>
	  <td>0.234594</td>
	  <td>1.312054</td>
	  <td>-0.079715</td>
	  <td>-0.095500</td>
	</tr>
	<tr>
	  <th rowspan="6" valign="top">1981-2001</th>
	  <th>MKT</th>
	  <td>0.077257</td>
	  <td>0.157396</td>
	  <td>0.490847</td>
	  <td>-0.064545</td>
	  <td>-0.101262</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.001433</td>
	  <td>0.109694</td>
	  <td>0.013067</td>
	  <td>-0.043500</td>
	  <td>-0.062193</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.063729</td>
	  <td>0.111276</td>
	  <td>0.572706</td>
	  <td>-0.041790</td>
	  <td>-0.060523</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.046910</td>
	  <td>0.091743</td>
	  <td>0.511312</td>
	  <td>-0.030260</td>
	  <td>-0.057392</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.053114</td>
	  <td>0.077273</td>
	  <td>0.687356</td>
	  <td>-0.029880</td>
	  <td>-0.041077</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.101686</td>
	  <td>0.145105</td>
	  <td>0.700775</td>
	  <td>-0.060980</td>
	  <td>-0.092246</td>
	</tr>
	<tr>
	  <th rowspan="6" valign="top">2002-2022</th>
	  <th>MKT</th>
	  <td>0.083289</td>
	  <td>0.153972</td>
	  <td>0.540933</td>
	  <td>-0.078795</td>
	  <td>-0.098869</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.021068</td>
	  <td>0.090137</td>
	  <td>0.233731</td>
	  <td>-0.039485</td>
	  <td>-0.048069</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.001679</td>
	  <td>0.104507</td>
	  <td>0.016066</td>
	  <td>-0.041000</td>
	  <td>-0.063864</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.039702</td>
	  <td>0.074726</td>
	  <td>0.531296</td>
	  <td>-0.026435</td>
	  <td>-0.043723</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.019423</td>
	  <td>0.064240</td>
	  <td>0.302346</td>
	  <td>-0.023830</td>
	  <td>-0.032038</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.017032</td>
	  <td>0.158055</td>
	  <td>0.107762</td>
	  <td>-0.071090</td>
	  <td>-0.120015</td>
	</tr>
  </tbody>
</table>
</div>

## 2.2) Based on the factor statistics above, answer the following.

## 2.2.a) Does each factor have a positive risk premium (positive expected excess return)?

Each factor does display positive risk premia, with the Market Factor having the highest excess returns and the Size factor having the lowest premia. Momemtum also emerges out as one of the most compelling factors posting an average annual risk premia of ~6.5%.

## 2.2.b) How have the factors performed since the time of the case, (2015-present)?

Between 2015 and 2022, we observe that Size, and Value factors have fallen out of favor and have posted negative risk premia. Value Factor especially had significant underperformance as it is in a deep drawdown since the recovery post the Tech bubble burst. Technology disruption in 2010s and longer bull runs and recoveries aftor financial crises of 2008 and 2020, have led to companies trading farther away from their fundamentals, turning the value factor into a losing bet.  However, with 2022 being one of the worst performing years since 2008, value factor has started to show signs of revival.

Emergence of prominent tech stocks who invest aggressively in their projects and their outperformance majorly from the momentum factor, has also led Investment factor (CMA) to post negative risk premia.

```python
sub_2015 = factors.loc['2015':]
factor_summary_2015 = performance_summary(sub_2015)
factor_summary_2015.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.5)','CVaR (0.5)','Max Drawdown']]
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
	  <th>VaR (0.5)</th>
	  <th>CVaR (0.5)</th>
	  <th>Max Drawdown</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.106943</td>
	  <td>0.160183</td>
	  <td>0.667635</td>
	  <td>-0.078825</td>
	  <td>-0.09796</td>
	  <td>-0.220039</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>-0.005765</td>
	  <td>0.097683</td>
	  <td>-0.059020</td>
	  <td>-0.041940</td>
	  <td>-0.05266</td>
	  <td>-0.256376</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.019709</td>
	  <td>0.132493</td>
	  <td>-0.148753</td>
	  <td>-0.048185</td>
	  <td>-0.07774</td>
	  <td>-0.513348</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.039535</td>
	  <td>0.071200</td>
	  <td>0.555262</td>
	  <td>-0.023310</td>
	  <td>-0.03332</td>
	  <td>-0.097615</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.002243</td>
	  <td>0.079622</td>
	  <td>0.028177</td>
	  <td>-0.026680</td>
	  <td>-0.04164</td>
	  <td>-0.211217</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.025526</td>
	  <td>0.136844</td>
	  <td>0.186534</td>
	  <td>-0.064415</td>
	  <td>-0.08616</td>
	  <td>-0.250697</td>
	</tr>
  </tbody>
</table>
</div>

## 2.3) Report the correlation matrix across the six factors.

```python
fig, (ax,ax2) = plt.subplots(ncols=2)

fig.subplots_adjust(wspace=0.01)
fig.tight_layout(pad=1)
sns.heatmap(factors.corr(), ax=ax, cbar=False, annot = True).set_title('1980 - 2021', fontdict={'fontsize':12}, pad=12);

fig.colorbar(ax.collections[0], ax=ax,location="left", use_gridspec=False, pad=0.2)
sns.heatmap(sub_2015.corr(), ax=ax2, cbar=False, annot = True).set_title('2015 - 2021', fontdict={'fontsize':12}, pad=12);

fig.colorbar(ax.collections[0],ax=ax2,location="right", use_gridspec=False, pad=0.2)

fig.set_figwidth(15)
plt.show()
```

![png](output_23_0.png)

## 2.3.a) Does the construction method succeed in keeping correlations small?

The correlations across most factors are low as intended by the factor investing thesis, however we observe that CMA and HML have really high correlation compared to others. This result is consistent to the common belief that firms with high book to market value tend to be firms with a conservative investment strategy.

The correlation of the value factor with the momentum factor is significantly negative. This result may not come as a surprise given that in general value stocks, with high book to market value, are so because of their dim future. Most investors would be willing to pay a higher market price for winning stocks than they would for stocks losing in short term. 

## 2.3.b) Fama and French say that HML is somewhat redundant in their 5-factor model. Does this seem to be the case?

The redundancy of HML in the 5 factor model means that its average return is fully captured by its exposures to the other factors of the five-factor model. Given the high correlation of HML with CMA and a decent correlation with RMW, the addition of these two factors would introduce multicollienearity in the regression and might lead to a very low beta for HML, making it redundant in the 5 factor model.

## 2.4) Report the tangency weights for a portfolio of these 6 factors.

```python
mean_excess_ret =  np.array(factor_summary['Mean'])

tangency_port = tangency_portfolio_rfr(mean_excess_ret,factors.cov())

TangencyPort_df = pd.DataFrame(tangency_port,columns= ["Tangency Portfolio Weight"],index=factor_summary.index)
TangencyPort_df.T
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
	  <th>SMB</th>
	  <th>HML</th>
	  <th>RMW</th>
	  <th>CMA</th>
	  <th>UMD</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Tangency Portfolio Weight</th>
	  <td>0.201062</td>
	  <td>0.081551</td>
	  <td>-0.047037</td>
	  <td>0.288377</td>
	  <td>0.377449</td>
	  <td>0.098597</td>
	</tr>
  </tbody>
</table>
</div>

```python
fig = plt.figure()
ax = fig.add_axes([0,0,1,1])
ax.bar(TangencyPort_df.index,TangencyPort_df['Tangency Portfolio Weight'])
plt.show()
```

![png](output_28_0.png)

## 2.4.a) Which factors seem most important? And Least?

The Tangency portfolio is takes heavy long positions on RMW, CMA and MKT, while shorting the HML and low weights on UMD and SMB. this indicates that the value factor might be the least useful, which was also indicated by Fama-French in their 5 factor model. Also according to a recent study by AQR Capital Management (https://www.aqr.com/Insights/Perspectives/There-is-No-Size-Effect-Daily-Edition), the size premia only exists in conjunction with the market beta factor.

The Market factor and Quality factors i.e. Profitability and Investments seem to be of the most importance in this portfolio.

## 2.4.b) Are the factors with low mean returns still useful?

The factors like SMB and CMA post low returns, but are still useful in the tangency portfolio due to their low correlations with other factors in the portfolio. However, HML, which also posted low returns in the sample period, is becoming redundant not because of its low returns but due to its high correlations with CMA, which is penalized by the tangency portfolio and MVO.

## 2.4.c) Re-do the tangency portfolio, but this time only include MKT, SMB, HML, and UMD. Which factors get high/low tangency weights now?

Once the CMA factor, which was largely correlated with HML, is taken out of the tangency portfolio, Value factor emerges out to be of the most significant as it has really low correlations with the remaining factors. HML and RMW had the 2nd highest correlation previously, and removal of RMW also contributes to a larger weight for HML in the tangency portfolio.

SMB now has the highest correlation between the 4 factors with MKT and thus is penalized for it and has the lowest weight in the tangency portfolio

```python
mean_excess_ret_4factor =  np.array(factor_summary['Mean'].drop(['RMW','CMA']))

tangency_port_4factor = tangency_portfolio_rfr(mean_excess_ret_4factor,factors.drop(['RMW','CMA'],axis = 1).cov())

tangency_port_4factor = pd.DataFrame(tangency_port_4factor,columns= ["Tangency Portfolio Weight"],index=factor_summary['Mean'].drop(['RMW','CMA']).index)
tangency_port_4factor.T


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
	  <th>SMB</th>
	  <th>HML</th>
	  <th>UMD</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Tangency Portfolio Weight</th>
	  <td>0.331433</td>
	  <td>0.006051</td>
	  <td>0.362221</td>
	  <td>0.300295</td>
	</tr>
  </tbody>
</table>
</div>

```python
fig = plt.figure()
ax = fig.add_axes([0,0,1,1])
ax.bar(tangency_port_4factor.index,tangency_port_4factor['Tangency Portfolio Weight'])
plt.show()
```

![png](output_33_0.png)

## What do you conclude about the importance or unimportance of these styles?

All these style factors can come in handy for both a linear factor decomposition and in a linear pricing model, as long as the combination of these factors do not posit heavy correlations. All the factors have posted positive risk premia for a longer duration, but due regime changes and changes in market microstructure resulting from advancing technologies and changing investor behavior, some factors might now prove to be redundant or might not display positive risk premia for a longer duration. 

## 3. Testing Modern LPMs

### Consider the following factor models:
- #### CAPM: MKT
- #### Fama-French 3F: MKT, SMB, HML
- #### Fama-French 5F: MKT, SMB, HML, RMW, CMA
- #### AQR: MKT, HML, RMW, UMD

### For instance, for the AQR model

### <center>$\mathop{\mathbb{E}}[\tilde{r}^{i}] = \beta^{i,\text{MKT}} \mathop{\mathbb{E}}[\tilde{f}^{\text{MKT}}] + \beta^{i,\text{HML}} \mathop{\mathbb{E}}[\tilde{f}^{\text{HML}}] + \beta^{i,\text{RMW}} \mathop{\mathbb{E}}[\tilde{f}^{\text{RMW}}] + \beta^{i,\text{UMD}} \mathop{\mathbb{E}}[\tilde{f}^{\text{UMD}}]$</center>

### We will test these models with the time-series regressions. Namely, for each asset i, estimate the following regression to test the AQR model:

###   <center> $\tilde{r}_{t}^{i}$ = $α^{i} + β^{\text{i,MKT}}\tilde{f}^{\text{MKT}}_{t} + β^{\text{i,HML}}\tilde{f}^{\text{HML}}_{t} + β^{\text{i,RMW}}\tilde{f}^{\text{RMW}}_{t} + β^{\text{i,UMD}}\tilde{f}^{\text{UMD}}_{t} + ε_{t}$ </center>

### So you are running that regression n times, once for each security, $\tilde{r}^{i}$.
## Data

- #### PORTFOLIOS: Monthly excess return data on 49 equity portfolios sorted by their industry. Denote these as $\tilde{r}^{i}$, for n = 1,….,49.
- #### You do NOT need the risk-free rate data. It is provided only for completeness. The other two tabs are already in terms of excess returns.

```python
ind_port_summary = performance_summary(port_ret)
ind_port_summary.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.5)','CVaR (0.5)']].T
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
	  <th>Agric</th>
	  <th>Food</th>
	  <th>Soda</th>
	  <th>Beer</th>
	  <th>Smoke</th>
	  <th>Toys</th>
	  <th>Fun</th>
	  <th>Books</th>
	  <th>Hshld</th>
	  <th>Clths</th>
	  <th>…</th>
	  <th>Boxes</th>
	  <th>Trans</th>
	  <th>Whlsl</th>
	  <th>Rtail</th>
	  <th>Meals</th>
	  <th>Banks</th>
	  <th>Insur</th>
	  <th>RlEst</th>
	  <th>Fin</th>
	  <th>Other</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mean</th>
	  <td>0.092855</td>
	  <td>0.102267</td>
	  <td>0.110805</td>
	  <td>0.119684</td>
	  <td>0.132612</td>
	  <td>0.065130</td>
	  <td>0.111820</td>
	  <td>0.073202</td>
	  <td>0.082650</td>
	  <td>0.101620</td>
	  <td>…</td>
	  <td>0.093909</td>
	  <td>0.088495</td>
	  <td>0.083391</td>
	  <td>0.111579</td>
	  <td>0.100580</td>
	  <td>0.090851</td>
	  <td>0.097554</td>
	  <td>0.046793</td>
	  <td>0.109896</td>
	  <td>0.047960</td>
	</tr>
	<tr>
	  <th>Volatility</th>
	  <td>0.216429</td>
	  <td>0.150648</td>
	  <td>0.220438</td>
	  <td>0.170352</td>
	  <td>0.223802</td>
	  <td>0.247819</td>
	  <td>0.260247</td>
	  <td>0.204616</td>
	  <td>0.152447</td>
	  <td>0.221567</td>
	  <td>…</td>
	  <td>0.197777</td>
	  <td>0.196060</td>
	  <td>0.179393</td>
	  <td>0.187139</td>
	  <td>0.181478</td>
	  <td>0.212241</td>
	  <td>0.182212</td>
	  <td>0.249699</td>
	  <td>0.222298</td>
	  <td>0.219957</td>
	</tr>
	<tr>
	  <th>Sharpe Ratio</th>
	  <td>0.429031</td>
	  <td>0.678847</td>
	  <td>0.502660</td>
	  <td>0.702567</td>
	  <td>0.592540</td>
	  <td>0.262814</td>
	  <td>0.429670</td>
	  <td>0.357755</td>
	  <td>0.542156</td>
	  <td>0.458644</td>
	  <td>…</td>
	  <td>0.474825</td>
	  <td>0.451369</td>
	  <td>0.464848</td>
	  <td>0.596237</td>
	  <td>0.554224</td>
	  <td>0.428054</td>
	  <td>0.535386</td>
	  <td>0.187397</td>
	  <td>0.494363</td>
	  <td>0.218043</td>
	</tr>
	<tr>
	  <th>VaR (0.5)</th>
	  <td>-0.090075</td>
	  <td>-0.060490</td>
	  <td>-0.094625</td>
	  <td>-0.068835</td>
	  <td>-0.092830</td>
	  <td>-0.108030</td>
	  <td>-0.108255</td>
	  <td>-0.083840</td>
	  <td>-0.066395</td>
	  <td>-0.098695</td>
	  <td>…</td>
	  <td>-0.087125</td>
	  <td>-0.085750</td>
	  <td>-0.077475</td>
	  <td>-0.078280</td>
	  <td>-0.075620</td>
	  <td>-0.093485</td>
	  <td>-0.076250</td>
	  <td>-0.097495</td>
	  <td>-0.105735</td>
	  <td>-0.097845</td>
	</tr>
	<tr>
	  <th>CVaR (0.5)</th>
	  <td>-0.128196</td>
	  <td>-0.090642</td>
	  <td>-0.139069</td>
	  <td>-0.104373</td>
	  <td>-0.140542</td>
	  <td>-0.154727</td>
	  <td>-0.177623</td>
	  <td>-0.121646</td>
	  <td>-0.097792</td>
	  <td>-0.138946</td>
	  <td>…</td>
	  <td>-0.129792</td>
	  <td>-0.122635</td>
	  <td>-0.112888</td>
	  <td>-0.109781</td>
	  <td>-0.116231</td>
	  <td>-0.141735</td>
	  <td>-0.120496</td>
	  <td>-0.164996</td>
	  <td>-0.145623</td>
	  <td>-0.147896</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 49 columns</p>
</div>

## 3.1) Test the AQR 4-Factor Model using the time-series test. (We are not doing the cross-sectional regression tests.)

## 3.1.a) For each regression, report the estimated α and r-squared.

```python
portfolios = port_ret.columns
factor_aqr = factors.drop(['SMB','CMA'],axis = 1)
df_lst_aqr= []
for port in portfolios:
    fund_ret = port_ret[port]
    reg = regression_based_performance(factor_aqr,fund_ret,0)
    beta_mkt = reg[0][0]
    beta_hml = reg[0][1]
    beta_rmw = reg[0][2]
    beta_umd = reg[0][3]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]
    r_squared = reg[4]
    df_lst_aqr.append(pd.DataFrame([[beta_mkt,beta_hml,beta_rmw,beta_umd,treynor_ratio,information_ratio,alpha,r_squared]],columns=['Market Beta','Value Beta','Profitability Beta','Momentum Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = [port]))

reg_performance_aqr = pd.concat(df_lst_aqr)
reg_performance_aqr.T

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
	  <th>Agric</th>
	  <th>Food</th>
	  <th>Soda</th>
	  <th>Beer</th>
	  <th>Smoke</th>
	  <th>Toys</th>
	  <th>Fun</th>
	  <th>Books</th>
	  <th>Hshld</th>
	  <th>Clths</th>
	  <th>…</th>
	  <th>Boxes</th>
	  <th>Trans</th>
	  <th>Whlsl</th>
	  <th>Rtail</th>
	  <th>Meals</th>
	  <th>Banks</th>
	  <th>Insur</th>
	  <th>RlEst</th>
	  <th>Fin</th>
	  <th>Other</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Market Beta</th>
	  <td>0.820943</td>
	  <td>0.682631</td>
	  <td>0.791106</td>
	  <td>0.727232</td>
	  <td>0.722708</td>
	  <td>1.111128</td>
	  <td>1.238281</td>
	  <td>1.108846</td>
	  <td>0.754888</td>
	  <td>1.098715</td>
	  <td>…</td>
	  <td>0.968576</td>
	  <td>1.075905</td>
	  <td>1.026113</td>
	  <td>0.991030</td>
	  <td>0.951890</td>
	  <td>1.160609</td>
	  <td>0.990894</td>
	  <td>1.209244</td>
	  <td>1.232212</td>
	  <td>1.113274</td>
	</tr>
	<tr>
	  <th>Value Beta</th>
	  <td>0.155745</td>
	  <td>0.163392</td>
	  <td>0.207350</td>
	  <td>0.012689</td>
	  <td>0.211976</td>
	  <td>-0.053864</td>
	  <td>0.002059</td>
	  <td>0.270452</td>
	  <td>-0.014491</td>
	  <td>0.010749</td>
	  <td>…</td>
	  <td>0.103197</td>
	  <td>0.181693</td>
	  <td>0.095363</td>
	  <td>-0.127435</td>
	  <td>0.083356</td>
	  <td>0.693341</td>
	  <td>0.463319</td>
	  <td>0.497448</td>
	  <td>0.296410</td>
	  <td>0.148359</td>
	</tr>
	<tr>
	  <th>Profitability Beta</th>
	  <td>-0.022301</td>
	  <td>0.525506</td>
	  <td>0.488692</td>
	  <td>0.604952</td>
	  <td>0.656358</td>
	  <td>0.243604</td>
	  <td>-0.111293</td>
	  <td>0.168472</td>
	  <td>0.469358</td>
	  <td>0.559958</td>
	  <td>…</td>
	  <td>0.253809</td>
	  <td>0.354797</td>
	  <td>0.183310</td>
	  <td>0.363296</td>
	  <td>0.499440</td>
	  <td>0.116431</td>
	  <td>0.234333</td>
	  <td>0.056072</td>
	  <td>-0.400307</td>
	  <td>0.110281</td>
	</tr>
	<tr>
	  <th>Momentum Beta</th>
	  <td>0.087183</td>
	  <td>0.034443</td>
	  <td>-0.097353</td>
	  <td>0.076292</td>
	  <td>-0.040284</td>
	  <td>-0.136889</td>
	  <td>-0.202500</td>
	  <td>-0.072504</td>
	  <td>0.002162</td>
	  <td>-0.209911</td>
	  <td>…</td>
	  <td>-0.113583</td>
	  <td>-0.079262</td>
	  <td>0.006857</td>
	  <td>-0.045692</td>
	  <td>-0.065952</td>
	  <td>-0.136895</td>
	  <td>-0.033280</td>
	  <td>-0.187733</td>
	  <td>-0.049926</td>
	  <td>-0.046254</td>
	</tr>
	<tr>
	  <th>Treynor Ratio</th>
	  <td>0.113107</td>
	  <td>0.149813</td>
	  <td>0.140064</td>
	  <td>0.164574</td>
	  <td>0.183493</td>
	  <td>0.058617</td>
	  <td>0.090303</td>
	  <td>0.066017</td>
	  <td>0.109486</td>
	  <td>0.092490</td>
	  <td>…</td>
	  <td>0.096956</td>
	  <td>0.082252</td>
	  <td>0.081268</td>
	  <td>0.112589</td>
	  <td>0.105663</td>
	  <td>0.078279</td>
	  <td>0.098450</td>
	  <td>0.038696</td>
	  <td>0.089186</td>
	  <td>0.043080</td>
	</tr>
	<tr>
	  <th>Information Ratio</th>
	  <td>0.088166</td>
	  <td>0.138390</td>
	  <td>0.129964</td>
	  <td>0.207100</td>
	  <td>0.206939</td>
	  <td>-0.158619</td>
	  <td>0.167892</td>
	  <td>-0.255891</td>
	  <td>-0.008886</td>
	  <td>-0.009968</td>
	  <td>…</td>
	  <td>0.051417</td>
	  <td>-0.154571</td>
	  <td>-0.147801</td>
	  <td>0.184239</td>
	  <td>0.009948</td>
	  <td>-0.205580</td>
	  <td>-0.057937</td>
	  <td>-0.364571</td>
	  <td>0.213658</td>
	  <td>-0.365995</td>
	</tr>
	<tr>
	  <th>Alpha</th>
	  <td>0.015612</td>
	  <td>0.015204</td>
	  <td>0.023796</td>
	  <td>0.026760</td>
	  <td>0.039912</td>
	  <td>-0.027708</td>
	  <td>0.027096</td>
	  <td>-0.029220</td>
	  <td>-0.000888</td>
	  <td>-0.001368</td>
	  <td>…</td>
	  <td>0.006612</td>
	  <td>-0.016656</td>
	  <td>-0.013200</td>
	  <td>0.019404</td>
	  <td>0.001080</td>
	  <td>-0.020964</td>
	  <td>-0.005892</td>
	  <td>-0.057636</td>
	  <td>0.020532</td>
	  <td>-0.050580</td>
	</tr>
	<tr>
	  <th>R-Squared</th>
	  <td>0.330166</td>
	  <td>0.468121</td>
	  <td>0.309781</td>
	  <td>0.424796</td>
	  <td>0.257474</td>
	  <td>0.503276</td>
	  <td>0.615578</td>
	  <td>0.688613</td>
	  <td>0.568142</td>
	  <td>0.618474</td>
	  <td>…</td>
	  <td>0.576622</td>
	  <td>0.697906</td>
	  <td>0.752236</td>
	  <td>0.683078</td>
	  <td>0.639291</td>
	  <td>0.769269</td>
	  <td>0.688400</td>
	  <td>0.599222</td>
	  <td>0.813069</td>
	  <td>0.605280</td>
	</tr>
  </tbody>
</table>
<p>8 rows × 49 columns</p>
</div>

## 3.1.b) Calculate the mean-absolute-error of the estimated alphas, (one for each security, $\tilde{r}^{i}$.)

### <center>$\text{MAE} = \frac{1}{n}\sum^{n}_{i=1}|\hat{\alpha}_{i}|$ </center>

```python
n = port_ret.shape[1]
alpha_sum = abs(reg_performance_aqr['Alpha']).sum()
rsquared_avg_aqr = abs(reg_performance_aqr['R-Squared']).mean()
mae_aqr = alpha_sum/n

mae_aqr_df = pd.DataFrame([[mae_aqr,rsquared_avg_aqr]],columns=['Mean Absolute Error','Average R-Squared '],index = ['AQR'])
mae_aqr_df
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
	  <th>AQR</th>
	  <td>0.02347</td>
	  <td>0.575712</td>
	</tr>
  </tbody>
</table>
</div>

## If the pricing model worked, should these alpha estimates be large or small? Why? Based on your MAE stat, does this seem to support the pricing model or not?

If the linear pricing model works, the alpha estimates are expected to be really low. The regression coefficient and R-Squared would be high as we expet the factors to explain most of the expected returns of the portfolios. 

The MAE for the AQR factor model is ~2% which is relatively low for the unexplained return part for all industry portfolios, that have mean excess returns of over ~10%. Thus the MAE stat seem to be supporting the AQR pricing model.

## 3.2) Test the CAPM, FF 3-Factor Model and the the FF 5-Factor Model. Report the MAE statistic for each of these models and compare it with the AQR Model MAE. Which model fits best?

```python
portfolios = port_ret.columns
factor_capm = factors['MKT']
df_lst_capm= []
for port in portfolios:
    fund_ret = port_ret[port]
    reg = regression_based_performance(factor_capm,fund_ret,0)
    beta_mkt = reg[0][0]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]
    r_squared = reg[4]
    df_lst_capm.append(pd.DataFrame([[beta_mkt,treynor_ratio,information_ratio,alpha,r_squared]],columns=['Market Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = [port]))

reg_performance_capm = pd.concat(df_lst_capm)
n = port_ret.shape[1]
alpha_sum = abs(reg_performance_capm['Alpha']).sum()
rsquared_avg_capm = abs(reg_performance_capm['R-Squared']).mean()
mae_capm = alpha_sum/n

mae_capm_df = pd.DataFrame([[mae_capm,rsquared_avg_capm]],columns=['Mean Absolute Error','Average R-Squared '],index = ['CAPM'])
```

```python
portfolios = port_ret.columns
factor_ff3 = factors.drop(['RMW','CMA','UMD'],axis = 1)
df_lst_ff3= []
for port in portfolios:
    fund_ret = port_ret[port]
    reg = regression_based_performance(factor_ff3,fund_ret,0)
    beta_mkt = reg[0][0]
    beta_sml = reg[0][1]
    beta_hml = reg[0][2]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]
    r_squared = reg[4]
    df_lst_ff3.append(pd.DataFrame([[beta_mkt,beta_sml,beta_hml,treynor_ratio,information_ratio,alpha,r_squared]],columns=['Market Beta','Size Beta','Value Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = [port]))

reg_performance_ff3 = pd.concat(df_lst_ff3)
n = port_ret.shape[1]
alpha_sum = abs(reg_performance_ff3['Alpha']).sum()
rsquared_avg_ff3 = abs(reg_performance_ff3['R-Squared']).mean()
mae_ff3 = alpha_sum/n

mae_ff3_df = pd.DataFrame([[mae_ff3,rsquared_avg_ff3]],columns=['Mean Absolute Error','Average R-Squared '],index = ['Fama French 3 Factor'])
```

```python
portfolios = port_ret.columns
factor_ff5 = factors.drop(['UMD'],axis = 1)
df_lst_ff5= []
for port in portfolios:
    fund_ret = port_ret[port]
    reg = regression_based_performance(factor_ff5,fund_ret,0)
    beta_mkt = reg[0][0]
    beta_sml = reg[0][1]
    beta_hml = reg[0][2]
    beta_rmw = reg[0][3]
    beta_cma = reg[0][4]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]
    r_squared = reg[4]
    df_lst_ff5.append(pd.DataFrame([[beta_mkt,beta_sml,beta_hml,beta_rmw,beta_cma,treynor_ratio,information_ratio,alpha,r_squared]],columns=['Market Beta','Size Beta','Value Beta','Profitability Beta','Investments Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = [port]))

reg_performance_ff5 = pd.concat(df_lst_ff5)
n = port_ret.shape[1]
alpha_sum = abs(reg_performance_ff5['Alpha']).sum()
rsquared_avg_ff5 = abs(reg_performance_ff5['R-Squared']).mean()
mae_ff5 = alpha_sum/n

mae_ff5_df = pd.DataFrame([[mae_ff5,rsquared_avg_ff5]],columns=['Mean Absolute Error','Average R-Squared '],index = ['Fama French 5 Factor'])
```

```python
portfolios = port_ret.columns
factor_ff3_UMD = factors.drop(['RMW','CMA'],axis = 1)
df_lst_ff3_UMD= []
for port in portfolios:
    fund_ret = port_ret[port]
    reg = regression_based_performance(factor_ff3_UMD,fund_ret,0)
    beta_mkt = reg[0][0]
    beta_sml = reg[0][1]
    beta_hml = reg[0][2]
    beta_umd = reg[0][3]
    #beta_umd = reg[0][4]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]
    r_squared = reg[4]
    df_lst_ff3_UMD.append(pd.DataFrame([[beta_mkt,beta_sml,beta_hml,beta_umd,treynor_ratio,information_ratio,alpha,r_squared]],columns=['Market Beta','Size Beta','Value Beta','Momentum Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = [port]))

reg_performance_ff3_UMD = pd.concat(df_lst_ff3_UMD)
n = port_ret.shape[1]
alpha_sum = abs(reg_performance_ff3_UMD['Alpha']).sum()
rsquared_avg_ff3_UMD = abs(reg_performance_ff3_UMD['R-Squared']).mean()
mae_ff3_UMD = alpha_sum/n

mae_ff3_df_UMD = pd.DataFrame([[mae_ff3_UMD,rsquared_avg_ff3_UMD]],columns=['Mean Absolute Error','Average R-Squared '],index = ['Fama French 3 Factor Plus UMD'])

```

```python
pdList = [mae_aqr_df,mae_capm_df,mae_ff3_df,mae_ff5_df,mae_ff3_df_UMD]
comparison = pd.concat(pdList)
comparison['Mean Absolute Error'].to_frame()
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>AQR</th>
	  <td>0.023470</td>
	</tr>
	<tr>
	  <th>CAPM</th>
	  <td>0.021466</td>
	</tr>
	<tr>
	  <th>Fama French 3 Factor</th>
	  <td>0.025356</td>
	</tr>
	<tr>
	  <th>Fama French 5 Factor</th>
	  <td>0.032526</td>
	</tr>
	<tr>
	  <th>Fama French 3 Factor Plus UMD</th>
	  <td>0.024014</td>
	</tr>
  </tbody>
</table>
</div>

## 3.3) Does any particular factor seem especially important or unimportant for pricing? Do you think Fama and French should use the Momentum Factor?

The Fama-French 5 factor model, has the highest MAE which would indicate that the 5 factors are not working well in conjunction. The 3 factor model has lower MAE and this might be wrongly indicating towards the fact that the addition of RMW and CMA is leading to a higher MAE and thus these factors should not be used. As observed, earlier since HML is highly correlated with these two factors, the regression has a multicollinearity problem resulting in higher MAE stats.

Momentum might be a good addition to the fama french 3 factor model, after removing for HML as can be seen from the above regression and MAE stats.

## 3.4) This does not matter for pricing, but report the average (across n estimations) of the time-series regression r-squared statistics. Do this for each of the three models you tested. 

```python
comparison['Average R-Squared '].to_frame()
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
	  <th>Average R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>AQR</th>
	  <td>0.575712</td>
	</tr>
	<tr>
	  <th>CAPM</th>
	  <td>0.527498</td>
	</tr>
	<tr>
	  <th>Fama French 3 Factor</th>
	  <td>0.571061</td>
	</tr>
	<tr>
	  <th>Fama French 5 Factor</th>
	  <td>0.596360</td>
	</tr>
	<tr>
	  <th>Fama French 3 Factor Plus UMD</th>
	  <td>0.576490</td>
	</tr>
  </tbody>
</table>
</div>

## Do these models lead to high time-series r-squared stats? That is, would these factors be good in a Linear Factor Decomposition of the assets?

All pricing models, display low R-squared which might indicate they might not be useful for linear factor decomposition of assets.

## 3.5) We tested three models using the time-series tests (focusing on the time-series alphas.) Re-test these models, but this time use the cross-sectional test.

## 3.5.a) Report the time-series premia of the factors (just their sample averages,) and compare to the cross-sectionally estimated premia of the factors. Do they differ substantially?

```python
y = ind_port_summary['Mean']
X = reg_performance_ff3.loc[:,['Market Beta', 'Size Beta','Value Beta']]
CS_ff3 = sm.OLS(y,X).fit().params.to_frame('Cross-Sectional Premia').T.rename(columns={'Market Beta' :'MKT', 'Size Beta':'SMB','Value Beta':'HML'})
fac3 = factor_summary.loc[['MKT','SMB','HML'],['Mean']].T
fac3.index = ['TimeSeries Premia']
resid_ff3 = sm.OLS(y,X).fit().resid
pd.concat([CS_ff3,fac3]).T

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
	  <th>Cross-Sectional Premia</th>
	  <th>TimeSeries Premia</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.101003</td>
	  <td>0.083123</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>-0.065920</td>
	  <td>0.012169</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.017297</td>
	  <td>0.027523</td>
	</tr>
  </tbody>
</table>
</div>

```python
y = ind_port_summary['Mean']
X = reg_performance_ff5.loc[:,['Market Beta','Size Beta','Value Beta','Profitability Beta','Investments Beta']]
CS_ff5 = sm.OLS(y,X).fit().params.to_frame('Cross-Sectional Premia').T.rename(columns={'Market Beta' :'MKT', 'Size Beta':'SMB','Value Beta':'HML','Profitability Beta':'RMW','Investments Beta':'CMA'})
fac5 = factor_summary.loc[['MKT','SMB','HML','RMW','CMA'],['Mean']].T
fac5.index = ['TimeSeries Premia']
resid_ff5 = sm.OLS(y,X).fit().resid
pd.concat([CS_ff5,fac5]).T
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
	  <th>Cross-Sectional Premia</th>
	  <th>TimeSeries Premia</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.094775</td>
	  <td>0.083123</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>-0.058725</td>
	  <td>0.012169</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.035406</td>
	  <td>0.027523</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.036789</td>
	  <td>0.044845</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>-0.015450</td>
	  <td>0.033260</td>
	</tr>
  </tbody>
</table>
</div>

```python
y = ind_port_summary['Mean']
X = reg_performance_aqr.loc[:,['Market Beta','Value Beta','Profitability Beta','Momentum Beta']]
CS_aqr = sm.OLS(y,X).fit().params.to_frame('Cross-Sectional Premia').T.rename(columns={'Market Beta' :'MKT','Value Beta':'HML','Profitability Beta':'RMW','Momentum Beta':'UMD'})
fac_aqr = factor_summary.loc[['MKT','HML','RMW','UMD'],['Mean']].T
fac_aqr.index = ['TimeSeries Premia']
resid_aqr = sm.OLS(y,X).fit().resid
pd.concat([CS_aqr,fac_aqr]).T
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
	  <th>Cross-Sectional Premia</th>
	  <th>TimeSeries Premia</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.086563</td>
	  <td>0.083123</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.040885</td>
	  <td>0.027523</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.045500</td>
	  <td>0.044845</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.055284</td>
	  <td>0.065513</td>
	</tr>
  </tbody>
</table>
</div>

```python
y = ind_port_summary['Mean']
X = reg_performance_capm.loc[:,['Market Beta']]
CS_capm = sm.OLS(y,X).fit().params.to_frame('Cross-Sectional Premia').T.rename(columns={'Market Beta' :'MKT'})
fac_capm = factor_summary.loc[['MKT'],['Mean']].T
fac_capm.index = ['TimeSeries Premia']
resid_capm = sm.OLS(y,X).fit().resid
pd.concat([CS_capm,fac_capm]).T
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
	  <th>Cross-Sectional Premia</th>
	  <th>TimeSeries Premia</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.084943</td>
	  <td>0.083123</td>
	</tr>
  </tbody>
</table>
</div>

## 3.5.b) Report the MAE of the cross-sectional regression residuals for each of the four models, (the $\upsilon^{i}$.) How do they compare to the MAE of the time-series alphas?

```python
mae_resid_cs  = pd.DataFrame([[abs(resid_aqr).mean(),abs(resid_capm).mean(),abs(resid_ff3).mean(),abs(resid_ff5).mean()]],columns=['AQR','CAPM','Fama French 3 Factor','Fama French 5 Factor'],index = ['Mean Absolute Error - CS Residuals'])
mae_alpha_ts = comparison['Mean Absolute Error'].to_frame().T.loc[:,['AQR','CAPM','Fama French 3 Factor','Fama French 5 Factor']]
mae_alpha_ts.index = ['Mean Absolute Error - TS Alphas']
pd.concat([mae_alpha_ts,mae_resid_cs]).T
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
	  <th>Mean Absolute Error - TS Alphas</th>
	  <th>Mean Absolute Error - CS Residuals</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>AQR</th>
	  <td>0.023470</td>
	  <td>0.017168</td>
	</tr>
	<tr>
	  <th>CAPM</th>
	  <td>0.021466</td>
	  <td>0.021394</td>
	</tr>
	<tr>
	  <th>Fama French 3 Factor</th>
	  <td>0.025356</td>
	  <td>0.016072</td>
	</tr>
	<tr>
	  <th>Fama French 5 Factor</th>
	  <td>0.032526</td>
	  <td>0.013594</td>
	</tr>
  </tbody>
</table>
</div>

## 4. Extensions

### <i> This section will not be graded, but it will be discussed in class.</i>

## 4.1) Using the LPM.

## Let's use the AQR model in (1) for forecasting excess returns. We will do this at each point in time to build a point-in-time series of forecasts. We will then see how well they perform.

- #### The model does not give us any info about forecasting the factors themselves. Accordingly, calculate the "expanding" mean of the four factors. We will use these as our point-in-time factor premia.
- #### For each of the n securities, estimate (2) over a window of 60 months. Make sure to estimate these rolling regressions WITH an intercept.6 But we only need to save the beta estimates.
- #### For every security, i, and at every month, t (after the first 60), calculate (1) using the point-in-time factor premia and betas calculated in the prior two steps. This is your forecast made at the end of period t, for $\tilde{r}^{i}_{t+1}$. You are using end-of-time t info in the estimation, so it is a forecast for t + 1. In order to better align it with our data, shift it ahead a time period. So the dataframe of forecasts has been pushed one month later. (The Feb value is now a March value.) This is your forecasted table for $\tilde{r}^{i}_{t}$. Denote these as $\hat{\tilde{r}^{i}_{t}}$.
- #### In order to decide if these forecasts are good, we need a comparison. Use the point-in-time mean estimates of $\tilde{r}^{i}_{t}$. So calculate the expanded mean, and once again, be sure to shift them one period into the future. This gives us the benchmark forecast: $\bar{\tilde{r}^{i}_{t}}$.
- #### Compare our LFP forecasts with the naive forecasts using Out-of-Sample (OOS) R-squared.

### <center>$\text{OOS r-squared} = \text{1 -} \frac{\text{MSE}_{\text{ forecast}}}{\text{MSE}_{\text{ baseline}}}$</center>

### where MSE stands for Mean Squared Error. Thus,

<center>$\text{MSE}_{\text{ forecast}} \equiv \text{sample average of } [( \ \hat{\tilde{r}^{i}_{t}} \ - \tilde{r}^{i}_{t})^{2}] $</center> <br>

<center>$\text{MSE}_{\text{ baseline}} \equiv \text{sample average of } [( \ \bar{\tilde{r}^{i}_{t}} \ - \tilde{r}^{i}_{t})^{2}] $</center>

### Warning! This calculation will be wrong if your forecasts have NaN values where the benchmark does not. For this reason, it is important to eliminate any date where either series has an NaN value. If you are careful about this issue, then you can write the OOS r-squared as a ratio of SSE:

### <center>$\text{OOS r-squared} = \text{1 -} \frac{\text{SSE}_{\text{ forecast}}}{\text{SSE}_{\text{ baseline}}}$</center>
### <center>$\equiv \text{1 -} \frac{\sum_{t} \ ( \ \hat{\tilde{r}^{i}_{t}} \ - \tilde{r}^{i}_{t})^{2}}{\sum_{t} \ ( \ \bar{\tilde{r}^{i}_{t}} \ - \tilde{r}^{i}_{t})^{2}}$</center>

## 4.1.a) Report the OOS r-squared for each of the n security forecasts.

```python
factor_aqr = factors.drop(['SMB','CMA'],axis = 1)
oos_rsquared_aqr = oos_rsquare(factor_aqr,port_ret,rolling_window = 60)
oos_rsquared_aqr.T
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
	  <th>Agric</th>
	  <th>Food</th>
	  <th>Soda</th>
	  <th>Beer</th>
	  <th>Smoke</th>
	  <th>Toys</th>
	  <th>Fun</th>
	  <th>Books</th>
	  <th>Hshld</th>
	  <th>Clths</th>
	  <th>…</th>
	  <th>Boxes</th>
	  <th>Trans</th>
	  <th>Whlsl</th>
	  <th>Rtail</th>
	  <th>Meals</th>
	  <th>Banks</th>
	  <th>Insur</th>
	  <th>RlEst</th>
	  <th>Fin</th>
	  <th>Other</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>OOS R-Squared</th>
	  <td>-0.001602</td>
	  <td>-0.008341</td>
	  <td>-0.005188</td>
	  <td>-0.00099</td>
	  <td>-0.002164</td>
	  <td>0.001013</td>
	  <td>-0.002528</td>
	  <td>-0.000105</td>
	  <td>0.000894</td>
	  <td>-0.001833</td>
	  <td>…</td>
	  <td>-0.00134</td>
	  <td>0.002011</td>
	  <td>-0.006963</td>
	  <td>-0.008567</td>
	  <td>-0.003667</td>
	  <td>0.00017</td>
	  <td>-0.006745</td>
	  <td>-0.001465</td>
	  <td>-0.009111</td>
	  <td>-0.00063</td>
	</tr>
  </tbody>
</table>
<p>1 rows × 49 columns</p>
</div>

```python
sns.set(rc={'figure.figsize':(15, 10)})
plt.bar(oos_rsquared_aqr.index, oos_rsquared_aqr['OOS R-Squared'])
plt.xticks(rotation='vertical')
plt.ylabel(r'OOS R-Squared')

plt.show()
```

![png](output_65_0.png)

## 4.1.b) Does the LPM do a good job of forecasting monthly returns? For which asset does it perform best? And worst?

The LPM does a very poor job forecasting monthly returns. It performs best for ships and worst for software.

## 4.1.c) Re-do the exercise using a window of 36 months. And 96 months. Do either of these windows work better?

```python
factor_aqr = factors.drop(['SMB','CMA'],axis = 1)
oos_rsquared_aqr_36 = oos_rsquare(factor_aqr,port_ret,rolling_window = 36)

sns.set(rc={'figure.figsize':(15, 10)})
plt.bar(oos_rsquared_aqr_36.index, oos_rsquared_aqr_36['OOS R-Squared'])
plt.xticks(rotation='vertical')
plt.ylabel(r'OOS R-Squared')

plt.show()
```

![png](output_68_0.png)

```python
factor_aqr = factors.drop(['SMB','CMA'],axis = 1)
oos_rsquared_aqr_96 = oos_rsquare(factor_aqr,port_ret,rolling_window = 96)

sns.set(rc={'figure.figsize':(15, 10)})
plt.bar(oos_rsquared_aqr_96.index, oos_rsquared_aqr_96['OOS R-Squared'])
plt.xticks(rotation='vertical')
plt.ylabel(r'OOS R-Squared')

plt.show()
```

![png](output_69_0.png)

## 4.1.d) Re-do the exercise using the FF 5-Factor Model instead of the AQR model. Re-do it with the CAPM. Do either of these models improve on forecasting?

```python
factor_ff5 = factors.drop(['UMD'],axis = 1)
oos_rsquared_ff5 = oos_rsquare(factor_ff5,port_ret,rolling_window = 60)

sns.set(rc={'figure.figsize':(15, 10)})
plt.bar(oos_rsquared_ff5.index, oos_rsquared_ff5['OOS R-Squared'])
plt.xticks(rotation='vertical')
plt.ylabel(r'OOS R-Squared')

plt.show()
```

![png](output_71_0.png)

```python
factor_capm = factors.loc[:,['MKT']]
oos_rsquared_capm = oos_rsquare(factor_capm,port_ret,rolling_window = 60)

sns.set(rc={'figure.figsize':(15, 10)})
plt.bar(oos_rsquared_capm.index, oos_rsquared_capm['OOS R-Squared'])
plt.xticks(rotation='vertical')
plt.ylabel(r'OOS R-Squared')

plt.show()
```

![png](output_72_0.png)

```python
oos_rsquared_capm
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
	  <th>Agric</th>
	  <td>0.000094</td>
	</tr>
	<tr>
	  <th>Food</th>
	  <td>-0.007283</td>
	</tr>
	<tr>
	  <th>Soda</th>
	  <td>-0.002746</td>
	</tr>
	<tr>
	  <th>Beer</th>
	  <td>-0.009941</td>
	</tr>
	<tr>
	  <th>Smoke</th>
	  <td>-0.006761</td>
	</tr>
	<tr>
	  <th>Toys</th>
	  <td>0.001200</td>
	</tr>
	<tr>
	  <th>Fun</th>
	  <td>0.002436</td>
	</tr>
	<tr>
	  <th>Books</th>
	  <td>0.004179</td>
	</tr>
	<tr>
	  <th>Hshld</th>
	  <td>-0.000774</td>
	</tr>
	<tr>
	  <th>Clths</th>
	  <td>-0.001374</td>
	</tr>
	<tr>
	  <th>Hlth</th>
	  <td>0.003960</td>
	</tr>
	<tr>
	  <th>MedEq</th>
	  <td>0.002299</td>
	</tr>
	<tr>
	  <th>Drugs</th>
	  <td>0.001786</td>
	</tr>
	<tr>
	  <th>Chems</th>
	  <td>0.003724</td>
	</tr>
	<tr>
	  <th>Rubbr</th>
	  <td>0.001959</td>
	</tr>
	<tr>
	  <th>Txtls</th>
	  <td>0.006199</td>
	</tr>
	<tr>
	  <th>BldMt</th>
	  <td>0.002244</td>
	</tr>
	<tr>
	  <th>Cnstr</th>
	  <td>0.001082</td>
	</tr>
	<tr>
	  <th>Steel</th>
	  <td>0.002772</td>
	</tr>
	<tr>
	  <th>FabPr</th>
	  <td>0.005033</td>
	</tr>
	<tr>
	  <th>Mach</th>
	  <td>0.006004</td>
	</tr>
	<tr>
	  <th>ElcEq</th>
	  <td>0.000376</td>
	</tr>
	<tr>
	  <th>Autos</th>
	  <td>0.003651</td>
	</tr>
	<tr>
	  <th>Aero</th>
	  <td>0.000722</td>
	</tr>
	<tr>
	  <th>Ships</th>
	  <td>0.002756</td>
	</tr>
	<tr>
	  <th>Guns</th>
	  <td>-0.009927</td>
	</tr>
	<tr>
	  <th>Gold</th>
	  <td>0.003194</td>
	</tr>
	<tr>
	  <th>Mines</th>
	  <td>0.005182</td>
	</tr>
	<tr>
	  <th>Coal</th>
	  <td>0.005308</td>
	</tr>
	<tr>
	  <th>Oil</th>
	  <td>0.004227</td>
	</tr>
	<tr>
	  <th>Util</th>
	  <td>-0.006444</td>
	</tr>
	<tr>
	  <th>Telcm</th>
	  <td>-0.001208</td>
	</tr>
	<tr>
	  <th>PerSv</th>
	  <td>-0.003757</td>
	</tr>
	<tr>
	  <th>BusSv</th>
	  <td>-0.000338</td>
	</tr>
	<tr>
	  <th>Hardw</th>
	  <td>-0.000096</td>
	</tr>
	<tr>
	  <th>Softw</th>
	  <td>-0.003385</td>
	</tr>
	<tr>
	  <th>Chips</th>
	  <td>-0.002365</td>
	</tr>
	<tr>
	  <th>LabEq</th>
	  <td>-0.000700</td>
	</tr>
	<tr>
	  <th>Paper</th>
	  <td>0.001799</td>
	</tr>
	<tr>
	  <th>Boxes</th>
	  <td>-0.001006</td>
	</tr>
	<tr>
	  <th>Trans</th>
	  <td>0.000636</td>
	</tr>
	<tr>
	  <th>Whlsl</th>
	  <td>0.000894</td>
	</tr>
	<tr>
	  <th>Rtail</th>
	  <td>-0.003706</td>
	</tr>
	<tr>
	  <th>Meals</th>
	  <td>-0.002885</td>
	</tr>
	<tr>
	  <th>Banks</th>
	  <td>0.005580</td>
	</tr>
	<tr>
	  <th>Insur</th>
	  <td>0.000926</td>
	</tr>
	<tr>
	  <th>RlEst</th>
	  <td>0.000737</td>
	</tr>
	<tr>
	  <th>Fin</th>
	  <td>0.000005</td>
	</tr>
	<tr>
	  <th>Other</th>
	  <td>0.001713</td>
	</tr>
  </tbody>
</table>
</div>


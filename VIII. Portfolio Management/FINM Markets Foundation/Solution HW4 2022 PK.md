---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Dimensional Fund Advisors, 2002 [HBS 9-203-026].
linter-yaml-title-alias: Dimensional Fund Advisors, 2002 [HBS 9-203-026].
---

<div style="text-align: right"> Mark Hendricks </div>

<left>FINM 36700 - Portfolio Theory and Risk Management</left> 

<br>
<left>Fall 2022</left>

<h2><center> Homework 4 - Dimensional Fund Advisors, 2002 </center></h2>

<center>Due on Monday, Oct 24</center>

<h3><span style="color:#00008B">Solution - Piyush Kontu</span></h3>

<h3><span style="color:#00008B">Email - pkontu@uchicago.edu</span></h3>

# Dimensional Fund Advisors, 2002 [HBS 9-203-026].

# Pages 1-5 of the case are required. Pages 6-11 get into interesting issues around trading (especially adverse selection) and tax considerations. These sections are useful for building market knowledge, but we will not cover them.

# 1. DFA's Strategy

## <i> This section is not graded, and you do not need to submit your answers. But you are expected to consider these issues and be ready to discuss them.</i>

# 1.1 Investment Philosophy

## 1.1.a) In 100 words or less, describe DFA's belief about how to find premium in the market.

- DFA believed market was "efficient".
- The firm primarily based its strategy on the Fama-French 3 factor model which postulates that high market-beta, High Book-to-market and small stocks had risk premiums.
- In addition they believe they can generate excess returns through tax-efficient, and transaction-cost efficient investing. 

## 1.1.b) To what degree does their strategy rely on individual equity analysis? Macroeconomic fundamentals? Efficient markets?

- DFA's strategies are largely reliant on market efficiency and Linear factor models and they do not take directional single stock or macroeconomic bets.
- Their LFM strategies are based on the long term permium generated through the exposure to Value, Size and Market factors.
- DFA relies on optimized execution, market-making, and tax considerations. 

## 1.1.c) Are DFA's funds active or passive?

- DFA's funds are majorly passive and are based on index portfolios exposed to the Fama French factors.

## 1.1.d) What do DFA and others mean by a "value" stock? And a "growth" stock?

- **Value** - Stocks with high book to market ration (BE/ME). These stocks show a lot of accounting value, (via book equity,) relative to the market price, (market equity).
- **Growth** - Stocks with low book to market ration (BE/ME) <br><br>
- Other accounting measures that can be used for this classification are earnings-price ratios or dividend-price ratios. Earnings can be negative and thus are generally avoided.

# 2.2 Challenges for DFA's view.
## 2.2.a) What challenge did DFA's model see in the 1980's?

- US was into a deep recession in 1980 and small companies werer particularly hard hit. Even with the subsequent boom in the economy small companies continued to lag.
- DFA needed to assess whether this underperformance was temporary or the size factor had a systematic flaw.

## 2.2.b) And in the 1990's?

- In the 1990's, DFA saw value stocks greatly under-perform growth stocks, partially driven by the incredible returns of tech stocks. 
- This finally started turning around in 2000 and 2001 when value stocks greatly outperformed growth stocks, especially with the crash of the so-called tech bubble.

# 2.3 The market.

## 2.3.a) Exhibit 3 has data regarding a universe of 5,020 firms. How many are considered "large cap"? What percent of the market value do they account for?

- In the exhibit there are 207 large cap firms ( < 5% of total count), yet they constitute about 70% of the market cap in the universe.

## 2.3.b) Exhibit 6 shows that the U.S. value factor (HML) has underperformed the broader U.S. equity market in 1926-2001, including every subsample except 1963-1981. So why should an investor be interested in this value factor?

- Even if Value has underperformed the market in these subsamples, it's imperfect correlation with the market could lead to diversification benefits as we saw in the MV optimization. 
- This imperfect correlation can lead to risk reduction at the margin for any investor completely invested in funds tracking the broader equity index.

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

# Reading Data

```python
factors = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\dfa_analysis_data.xlsx',sheet_name = 'factors')
factors = factors.set_index('Date')
factors = factors.drop(['RF'], axis=1)
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
	  <th>Mkt-RF</th>
	  <th>SMB</th>
	  <th>HML</th>
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
	  <th>1926-07-31</th>
	  <td>0.0296</td>
	  <td>-0.0256</td>
	  <td>-0.0243</td>
	</tr>
	<tr>
	  <th>1926-08-31</th>
	  <td>0.0264</td>
	  <td>-0.0117</td>
	  <td>0.0382</td>
	</tr>
	<tr>
	  <th>1926-09-30</th>
	  <td>0.0036</td>
	  <td>-0.0140</td>
	  <td>0.0013</td>
	</tr>
	<tr>
	  <th>1926-10-31</th>
	  <td>-0.0324</td>
	  <td>-0.0009</td>
	  <td>0.0070</td>
	</tr>
	<tr>
	  <th>1926-11-30</th>
	  <td>0.0253</td>
	  <td>-0.0010</td>
	  <td>-0.0051</td>
	</tr>
  </tbody>
</table>
</div>

```python
port_ret = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\dfa_analysis_data.xlsx',sheet_name = 'portfolios (total returns)')
port_ret = port_ret.set_index('Date')

rf = pd.read_excel(r'C:\Users\piyus\Documents\Repos\finm-portfolio-2022\data\dfa_analysis_data.xlsx',sheet_name = 'factors')
rf = rf.set_index('Date')
rf = rf['RF'].to_frame()
port_ret = port_ret.merge(rf['RF'], on = rf.index).fillna(0).rename(columns={'key_0' : 'Date'})
port_ret.index = port_ret['Date']
port_ret = port_ret.drop(['Date'], axis=1)
for col in port_ret.columns:
    port_ret[col] = port_ret[col] - port_ret['RF']


port_ret = port_ret.drop(['RF'], axis=1)
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
	  <th>SMALL LoBM</th>
	  <th>ME1 BM2</th>
	  <th>ME1 BM3</th>
	  <th>ME1 BM4</th>
	  <th>SMALL HiBM</th>
	  <th>ME2 BM1</th>
	  <th>ME2 BM2</th>
	  <th>ME2 BM3</th>
	  <th>ME2 BM4</th>
	  <th>ME2 BM5</th>
	  <th>…</th>
	  <th>ME4 BM1</th>
	  <th>ME4 BM2</th>
	  <th>ME4 BM3</th>
	  <th>ME4 BM4</th>
	  <th>ME4 BM5</th>
	  <th>BIG LoBM</th>
	  <th>ME5 BM2</th>
	  <th>ME5 BM3</th>
	  <th>ME5 BM4</th>
	  <th>BIG HiBM</th>
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
	  <th>1926-07-31</th>
	  <td>0.056048</td>
	  <td>-0.019206</td>
	  <td>0.002675</td>
	  <td>-0.016780</td>
	  <td>0.018334</td>
	  <td>0.009877</td>
	  <td>0.021992</td>
	  <td>0.002726</td>
	  <td>-0.028249</td>
	  <td>-0.005544</td>
	  <td>…</td>
	  <td>0.013693</td>
	  <td>0.013078</td>
	  <td>0.010778</td>
	  <td>0.000527</td>
	  <td>0.022478</td>
	  <td>0.032339</td>
	  <td>0.058702</td>
	  <td>0.018066</td>
	  <td>0.028911</td>
	  <td>0.003423</td>
	</tr>
	<tr>
	  <th>1926-08-31</th>
	  <td>-0.022706</td>
	  <td>-0.082782</td>
	  <td>0.011296</td>
	  <td>0.012106</td>
	  <td>0.081468</td>
	  <td>0.021118</td>
	  <td>-0.014349</td>
	  <td>0.037584</td>
	  <td>0.002538</td>
	  <td>0.059175</td>
	  <td>…</td>
	  <td>0.010836</td>
	  <td>0.036230</td>
	  <td>0.017521</td>
	  <td>0.019206</td>
	  <td>0.050922</td>
	  <td>0.007624</td>
	  <td>0.039403</td>
	  <td>0.017631</td>
	  <td>0.052349</td>
	  <td>0.075076</td>
	</tr>
	<tr>
	  <th>1926-09-30</th>
	  <td>-0.050591</td>
	  <td>-0.028454</td>
	  <td>-0.045717</td>
	  <td>-0.035029</td>
	  <td>0.006349</td>
	  <td>-0.028840</td>
	  <td>-0.014918</td>
	  <td>0.008529</td>
	  <td>-0.037780</td>
	  <td>-0.011701</td>
	  <td>…</td>
	  <td>0.008623</td>
	  <td>-0.007550</td>
	  <td>-0.019936</td>
	  <td>0.012346</td>
	  <td>0.006430</td>
	  <td>-0.015206</td>
	  <td>0.034238</td>
	  <td>-0.001350</td>
	  <td>-0.009787</td>
	  <td>-0.026584</td>
	</tr>
	<tr>
	  <th>1926-10-31</th>
	  <td>-0.096929</td>
	  <td>-0.038719</td>
	  <td>-0.038148</td>
	  <td>0.031213</td>
	  <td>-0.028676</td>
	  <td>-0.031269</td>
	  <td>-0.035863</td>
	  <td>-0.053945</td>
	  <td>-0.083391</td>
	  <td>-0.016413</td>
	  <td>…</td>
	  <td>-0.036561</td>
	  <td>-0.029759</td>
	  <td>-0.024270</td>
	  <td>-0.034251</td>
	  <td>-0.056725</td>
	  <td>-0.030613</td>
	  <td>-0.033271</td>
	  <td>-0.025637</td>
	  <td>-0.049919</td>
	  <td>-0.061329</td>
	</tr>
	<tr>
	  <th>1926-11-30</th>
	  <td>0.052788</td>
	  <td>0.038777</td>
	  <td>0.021523</td>
	  <td>-0.047594</td>
	  <td>0.002262</td>
	  <td>0.027933</td>
	  <td>-0.026790</td>
	  <td>0.026978</td>
	  <td>0.048446</td>
	  <td>0.024192</td>
	  <td>…</td>
	  <td>0.031348</td>
	  <td>0.020787</td>
	  <td>0.034235</td>
	  <td>0.046220</td>
	  <td>0.015113</td>
	  <td>0.039846</td>
	  <td>0.022226</td>
	  <td>0.012104</td>
	  <td>0.033519</td>
	  <td>0.022536</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 25 columns</p>
</div>

## 2. The Factors

### DFA believes certain stocks have higher expected excess returns. In addition to the overall market equity premium, DFA believes that there is a premium attached to a "size" and "value" factor. Note that these three factors are already listed as excess returns. 
### Use the data found in <file>'dfa analysis data.xlsx'</file>.

- #### FACTORS: Monthly excess return data for the overall equity market, $\tilde{r}^{m}$. The sheet also contains data on two additional factors, SMB and HML, as well as the risk-free rate. You do not need any of these columns for the homework. Just use the MKT column, which is excess market returns. (So no need to subtract the risk-free rate.)

## 2.1 Calculate their univariate performance statistics:
- ### mean
- ### volatility
- ### Sharpe
- ### VaR(.05)

```python
factor_summary = performance_summary(factors)
factor_summary.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.05)']]
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Mkt-RF</th>
	  <td>0.080753</td>
	  <td>0.185161</td>
	  <td>0.436121</td>
	  <td>-0.079590</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.023288</td>
	  <td>0.109910</td>
	  <td>0.211879</td>
	  <td>-0.042035</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.042318</td>
	  <td>0.123363</td>
	  <td>0.343037</td>
	  <td>-0.041935</td>
	</tr>
  </tbody>
</table>
</div>

## Report these for the following three subsamples:
- ### Beginning - 1980
- ### 1981 - 2001
- ### 2002 - End

```python
sub_1980 = factors.loc[:'1980']
sub_2001 = factors.loc['1981':'2001']
sub_2022 = factors.loc['2002':]

df_dict={'1926-1980' : sub_1980,
         '1981-2001' : sub_2001,
         '2002-2022' : sub_2022}

summary_lst = []
for key in df_dict.keys():
    summary_stats = performance_summary(df_dict[key]).loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.05)']]
    summary_stats['Period'] = key
    summary_stats= summary_stats.reset_index().rename(columns = {'index':'Factor'}).set_index(['Period','Factor'])
    summary_lst.append(summary_stats)

factor_summary = pd.concat(summary_lst)
factor_summary#.T

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
	</tr>
	<tr>
	  <th>Period</th>
	  <th>Factor</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th rowspan="3" valign="top">1926-1980</th>
	  <th>Mkt-RF</th>
	  <td>0.081138</td>
	  <td>0.205050</td>
	  <td>0.395696</td>
	  <td>-0.083985</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.033985</td>
	  <td>0.114568</td>
	  <td>0.296638</td>
	  <td>-0.043400</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.049479</td>
	  <td>0.133825</td>
	  <td>0.369727</td>
	  <td>-0.042910</td>
	</tr>
	<tr>
	  <th rowspan="3" valign="top">1981-2001</th>
	  <th>Mkt-RF</th>
	  <td>0.077257</td>
	  <td>0.157396</td>
	  <td>0.490847</td>
	  <td>-0.064545</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>-0.000876</td>
	  <td>0.118434</td>
	  <td>-0.007398</td>
	  <td>-0.046560</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.063729</td>
	  <td>0.111276</td>
	  <td>0.572706</td>
	  <td>-0.041790</td>
	</tr>
	<tr>
	  <th rowspan="3" valign="top">2002-2022</th>
	  <th>Mkt-RF</th>
	  <td>0.083289</td>
	  <td>0.153972</td>
	  <td>0.540933</td>
	  <td>-0.078795</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.019631</td>
	  <td>0.085788</td>
	  <td>0.228826</td>
	  <td>-0.037785</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.001679</td>
	  <td>0.104507</td>
	  <td>0.016066</td>
	  <td>-0.041000</td>
	</tr>
  </tbody>
</table>
</div>

## 2.2) Based on the factor statistics above, answer the following.

## 2.2.a) Does each factor have a premium (positive expected excess return) in each subsample?

All 3 factors possess positive premiums in the sub period leading to 1980. Between 1981-2001 the Size factor provides no mean excess returns (discount of 8 basis points), but recovers to provide some premium again between 2002 and 2022. Similarly, the Value factor, provides premium up until 2001, post which the mean excess returns reduce significantly for the period between 2001 and 2022, with negative returns till 2021. The Market factor consistently provides positive premium throughout the period of analysis.

## 2.2.b) Does the premium to the size factor get smaller after 1980?

The premium of the size factor does decline after 1980, going almost to 0 between 1981 and 2001 and then recovering to ~1.9% (still lower than pre 1980 returns). According to a recent study by AQR Capital Management (https://www.aqr.com/Insights/Perspectives/There-is-No-Size-Effect-Daily-Edition), the size premia only exists in conjunction with the market beta factor. The apparent outperformance of small versus large caps after adjusting for market beta in the original work by Fama French on the data pre-1980's was biased by misestimated betas due to liquidity differences. 

## 2.2.c) Does the premium to the value factor get smaller during the 1990's?

The premium to value factor increases in the sub-sample of 1981-2001 as compared to 1926-1980, but then experiences a significant decline post the 2002 internet bubble burst and posits negative mean excess returns till 2021, and then recovering significantly again in 2022. 

The tech bubble in the late 1990s and early 2000s had a huge influence on the spread, as the value factor experienced significant drawdowns, with tech stocks trading at levels far from fundamentals. In general, the value factor traded at a negative spread — a logical result, since the long portfolio is always cheaper than the short. 

Source - https://blogs.cfainstitute.org/investor/2017/09/12/there-is-value-in-the-value-factor/

## 2.2.d) How have the factors performed since the time of the case, (2002-present)?

Since 2002, the Market Factor has posted highest premiums between the three subsamples. While the Size factor also posted a premium of ~2.4%, as discussed in the AQR study above, it could be interpreted as a high correlation with the market beta. The value factor is in a deep drawdown since the recovery post the Tech bubble burst. Technology disruption in 2010s and longer bull runs and recoveries aftor financial crises of 2008 and 2020, have led to companies trading farther away from their fundamentals, turning the value factor into a losing bet.

## 2.3) The factors are constructed in such a way as to reduce correlation between them. 

## Report the correlation matrix across the three factors. Does the construction method succeed in keeping correlations small? 

Overall, the correlations between the three factors are low and thus the construction method succeeds in its objective. The Size and Value factors, especially post very low correlations, but are still relatively more correlated to the market factor,

```python
factor_corr = factors.corr()

plt.figure(figsize=(16, 6))
heatmap = sns.heatmap(factor_corr, vmin=0, vmax=1, annot=True)
heatmap.set_title('Factors Correlation Heatmap', fontdict={'fontsize':12}, pad=12);
```

![png](output_27_0.png)

## Does it achieve this in each subsample?

```python
fig, (ax,ax2,ax3) = plt.subplots(ncols=3)

fig.subplots_adjust(wspace=0.01)
fig.tight_layout(pad=1)
sns.heatmap(sub_1980.corr(), ax=ax, cbar=False, annot = True).set_title('1926 - 1980', fontdict={'fontsize':12}, pad=12);

fig.colorbar(ax.collections[0], ax=ax,location="left", use_gridspec=False, pad=0.2)
sns.heatmap(sub_2001.corr(), ax=ax2, cbar=False, annot = True).set_title('1981 - 2001', fontdict={'fontsize':12}, pad=12);

fig.colorbar(ax.collections[0],ax=ax2,location="right", use_gridspec=False, pad=0.2)

sns.heatmap(sub_2022.corr(), ax=ax3, cbar=False, annot = True).set_title('2002 - 2022', fontdict={'fontsize':12}, pad=12);
fig.colorbar(ax.collections[0],ax=ax3,location="right", use_gridspec=False, pad=0.2)

fig.set_figwidth(15)
plt.show()
```

![png](output_29_0.png)

## 2.4) Plot the cumulative returns of the three factors. Create plots for the 1981-2001 subsample as well as the 2002-Present subsample.

```python
figure = ((factors + 1).cumprod()).plot()
plt.figure(figsize=(100, 6))
plt.show()
```

![png](output_31_0.png)

    <Figure size 7200x432 with 0 Axes>

```python
fig, (ax1, ax2) = plt.subplots(1, 2)
fig.suptitle('Sub Period Cumulative Returns')
ax1.plot(((sub_2001 + 1).cumprod() - 1))
ax2.plot(((sub_2022 + 1).cumprod() - 1))

fig.set_figwidth(15)
ax1.legend(sub_2001.columns)
ax2.legend(sub_2022.columns)

ax1.title.set_text('1981-2001')
ax2.title.set_text('2002-2022')
```

![png](output_32_0.png)

## 2.5) Does it appear that all three factors were valuable in 1981-2001? And post-2001? Would you advise DFA to continue emphasizing all three factors?

As per the graphs above, it appears that the market risk factor was valuable in both sub-samples. However, the Market Factor sees a steep decline with the Tech bubble burst in late 2001, during which time the value factor benefits from the depressed stock prices to post a premium. The Size factor posts near zero or negative returns for the entire sub-sample of 1981-2001. 

With a good recovery post the Tech Bubble burst and similar bull run post the 2008 financial crisis, the Market-factor significantly outperforms Size and Value in the 2002-2022 sub-sample. Both Size and Value factor post meagre returns during this period, with the value factor experiencing declining premiums as companies traded further away from their fundamentals. This Value factor might still be beneficial given its diversification effects.

Though all 3 factors still possess some relevant characteristics, it appears that Factor rotation might be a better strategy in hindsight. The size factor seems our of favor for a long time now and the returns seem correlated to the Market Factor. DFA should also try to explore other factors such as volatility, liquidity, momentum etc. to generate alpha while sticking to their belief of capital markets being efficient.

## 3. CAPM

### DFA believes that premia in stocks and stock portfolios is related to the three factors. Let's test 25 equity portfolios that span a wide range of size and value measures

- #### PORTFOLIOS: Monthly total return data on 25 equity portfolios sorted by their size-value characteristics. Denote these as $r^{i}$, for n = 1,….,25.
- #### Note that while the factors were given as excess returns, the portfolios are total returns.
- #### For this entire problem, focus on the 1981-Present subsample.

## 3.1) Summary Statistics.

## For each portfolio,

- ### Use the Risk-Free rate column in the factors tab to convert these total returns to excess returns.
- ### Calculate the (annualized) univariate statistics from 1.1.

```python
port_summary = performance_summary(port_ret.loc['1981-01-01':])
port_summary.loc[:,['Mean','Volatility','Sharpe Ratio','VaR (0.05)']]
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SMALL LoBM</th>
	  <td>0.010463</td>
	  <td>0.272416</td>
	  <td>0.038410</td>
	  <td>-0.116482</td>
	</tr>
	<tr>
	  <th>ME1 BM2</th>
	  <td>0.095732</td>
	  <td>0.235906</td>
	  <td>0.405804</td>
	  <td>-0.097583</td>
	</tr>
	<tr>
	  <th>ME1 BM3</th>
	  <td>0.092913</td>
	  <td>0.197205</td>
	  <td>0.471147</td>
	  <td>-0.086441</td>
	</tr>
	<tr>
	  <th>ME1 BM4</th>
	  <td>0.119996</td>
	  <td>0.191374</td>
	  <td>0.627023</td>
	  <td>-0.075179</td>
	</tr>
	<tr>
	  <th>SMALL HiBM</th>
	  <td>0.132096</td>
	  <td>0.207677</td>
	  <td>0.636062</td>
	  <td>-0.088348</td>
	</tr>
	<tr>
	  <th>ME2 BM1</th>
	  <td>0.060281</td>
	  <td>0.245699</td>
	  <td>0.245346</td>
	  <td>-0.104558</td>
	</tr>
	<tr>
	  <th>ME2 BM2</th>
	  <td>0.100629</td>
	  <td>0.203156</td>
	  <td>0.495330</td>
	  <td>-0.084043</td>
	</tr>
	<tr>
	  <th>ME2 BM3</th>
	  <td>0.106615</td>
	  <td>0.183069</td>
	  <td>0.582375</td>
	  <td>-0.078669</td>
	</tr>
	<tr>
	  <th>ME2 BM4</th>
	  <td>0.107739</td>
	  <td>0.179220</td>
	  <td>0.601154</td>
	  <td>-0.076411</td>
	</tr>
	<tr>
	  <th>ME2 BM5</th>
	  <td>0.118123</td>
	  <td>0.212044</td>
	  <td>0.557067</td>
	  <td>-0.094234</td>
	</tr>
	<tr>
	  <th>ME3 BM1</th>
	  <td>0.070818</td>
	  <td>0.225932</td>
	  <td>0.313450</td>
	  <td>-0.102260</td>
	</tr>
	<tr>
	  <th>ME3 BM2</th>
	  <td>0.107828</td>
	  <td>0.187422</td>
	  <td>0.575322</td>
	  <td>-0.078593</td>
	</tr>
	<tr>
	  <th>ME3 BM3</th>
	  <td>0.091790</td>
	  <td>0.170239</td>
	  <td>0.539182</td>
	  <td>-0.073752</td>
	</tr>
	<tr>
	  <th>ME3 BM4</th>
	  <td>0.107994</td>
	  <td>0.177140</td>
	  <td>0.609653</td>
	  <td>-0.072004</td>
	</tr>
	<tr>
	  <th>ME3 BM5</th>
	  <td>0.124860</td>
	  <td>0.198745</td>
	  <td>0.628243</td>
	  <td>-0.082391</td>
	</tr>
	<tr>
	  <th>ME4 BM1</th>
	  <td>0.092678</td>
	  <td>0.203641</td>
	  <td>0.455104</td>
	  <td>-0.083855</td>
	</tr>
	<tr>
	  <th>ME4 BM2</th>
	  <td>0.094508</td>
	  <td>0.176964</td>
	  <td>0.534052</td>
	  <td>-0.073351</td>
	</tr>
	<tr>
	  <th>ME4 BM3</th>
	  <td>0.093610</td>
	  <td>0.173302</td>
	  <td>0.540155</td>
	  <td>-0.075638</td>
	</tr>
	<tr>
	  <th>ME4 BM4</th>
	  <td>0.099772</td>
	  <td>0.173320</td>
	  <td>0.575649</td>
	  <td>-0.069339</td>
	</tr>
	<tr>
	  <th>ME4 BM5</th>
	  <td>0.112042</td>
	  <td>0.196819</td>
	  <td>0.569265</td>
	  <td>-0.083283</td>
	</tr>
	<tr>
	  <th>BIG LoBM</th>
	  <td>0.088904</td>
	  <td>0.163211</td>
	  <td>0.544715</td>
	  <td>-0.075341</td>
	</tr>
	<tr>
	  <th>ME5 BM2</th>
	  <td>0.081617</td>
	  <td>0.154853</td>
	  <td>0.527059</td>
	  <td>-0.065553</td>
	</tr>
	<tr>
	  <th>ME5 BM3</th>
	  <td>0.081088</td>
	  <td>0.152319</td>
	  <td>0.532359</td>
	  <td>-0.070425</td>
	</tr>
	<tr>
	  <th>ME5 BM4</th>
	  <td>0.067149</td>
	  <td>0.170305</td>
	  <td>0.394288</td>
	  <td>-0.075613</td>
	</tr>
	<tr>
	  <th>BIG HiBM</th>
	  <td>0.096319</td>
	  <td>0.205783</td>
	  <td>0.468059</td>
	  <td>-0.098457</td>
	</tr>
  </tbody>
</table>
</div>

## Can the difference in mean excess returns of the portfolios be explained by differences in their volatilities? Or by their VaR(.05) statistics?

Based on the scatter plots below, we do not get a clear indication if the differences in the mean excess returns are explained by differences in either their VaR or their Volatility. Given VaR is a factor of portfolios volatility, more the volatility deeper the VaR threshold, the return differences might be explained slightly by the differences in the volatility. A linear pattern can be observed between volatility and mean excess returns to support the previous arguments, but the evidence is not very concrete from the plots below.

```python
plt.scatter(port_summary.loc[:,['Volatility']],port_summary.loc[:,['Mean']])
plt.xlabel("Volatility")
plt.ylabel("Mean Excess Returns")
```

    Text(0, 0.5, 'Mean Excess Returns')




    

![png](output_38_1.png)

```python
plt.scatter( port_summary.loc[:,['VaR (0.05)']],port_summary.loc[:,['Mean']])
plt.xlabel("VaR(0.05)")
plt.ylabel("Mean Excess Returns")
```

    Text(0, 0.5, 'Mean Excess Returns')




    

![png](output_39_1.png)

## 3.2 CAPM

### The Capital Asset Pricing Model (CAPM) asserts that an asset (or portfolio's) expected excess return is completely a function of its beta to the equity market index (SPY, or in this case, MKT.)
### Specifically, it asserts that, for any excess return, $\tilde{r}^{i}$, its mean is proportional to the mean excess return of the market, $\tilde{r}^{m}$, where the proporitonality is the regression beta of $\tilde{r}^{i}$ on $\tilde{r}^{m}$.

### <center>$\mathop{\mathbb{E}}[\tilde{r}^{i}_{t}] = \beta \mathop{\mathbb{E}}[\tilde{r}^{m}_{t}]$</center>
### Let's examine whether that seems plausible.

## 3.2.a) For each of the n = 25 test portfolios, run the CAPM time-series regression: <br> 
##   <center> $\tilde{r}_{t}^{i}$ = $α^{i} + β^{i,m}\tilde{r}^{m}_{t} + ε_{t}$ </center>
## So you are running 25 separate regressions, each using the T-sized sample of time-series data.

```python
portfolios = port_ret.columns
factor = factors['1981-01-01':]['Mkt-RF']

df_lst= []
for port in portfolios:
    fund_ret = port_ret['1981-01-01':][port]
    reg = regression_based_performance(factor,fund_ret,0)
    beta = reg[0][0]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]
    r_squared = reg[4]
    df_lst.append(pd.DataFrame([[beta,alpha,r_squared,treynor_ratio,information_ratio]],columns=['Market Beta','Alpha','R-Squared','Treynor Ratio','Information Ratio'],index = [port]))

```

## 3.2.b) Report the estimated $β^{i,m}$, Treynor Ratio, $α^{i}$, and Information Ratio for each of the n regressions.

```python
reg_performance = pd.concat(df_lst)
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
	  <th>Market Beta</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	  <th>Treynor Ratio</th>
	  <th>Information Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SMALL LoBM</th>
	  <td>1.360046</td>
	  <td>-0.098676</td>
	  <td>0.603114</td>
	  <td>0.007693</td>
	  <td>-0.574986</td>
	</tr>
	<tr>
	  <th>ME1 BM2</th>
	  <td>1.170212</td>
	  <td>0.001824</td>
	  <td>0.595400</td>
	  <td>0.081807</td>
	  <td>0.012154</td>
	</tr>
	<tr>
	  <th>ME1 BM3</th>
	  <td>1.036480</td>
	  <td>0.009732</td>
	  <td>0.668413</td>
	  <td>0.089642</td>
	  <td>0.085739</td>
	</tr>
	<tr>
	  <th>ME1 BM4</th>
	  <td>0.965225</td>
	  <td>0.042540</td>
	  <td>0.615535</td>
	  <td>0.124319</td>
	  <td>0.358477</td>
	</tr>
	<tr>
	  <th>SMALL HiBM</th>
	  <td>0.990693</td>
	  <td>0.052596</td>
	  <td>0.550631</td>
	  <td>0.133336</td>
	  <td>0.377783</td>
	</tr>
	<tr>
	  <th>ME2 BM1</th>
	  <td>1.343338</td>
	  <td>-0.047520</td>
	  <td>0.723306</td>
	  <td>0.044874</td>
	  <td>-0.367683</td>
	</tr>
	<tr>
	  <th>ME2 BM2</th>
	  <td>1.128609</td>
	  <td>0.010056</td>
	  <td>0.746773</td>
	  <td>0.089162</td>
	  <td>0.098400</td>
	</tr>
	<tr>
	  <th>ME2 BM3</th>
	  <td>1.019328</td>
	  <td>0.024816</td>
	  <td>0.750164</td>
	  <td>0.104593</td>
	  <td>0.271190</td>
	</tr>
	<tr>
	  <th>ME2 BM4</th>
	  <td>0.965384</td>
	  <td>0.030264</td>
	  <td>0.702078</td>
	  <td>0.111602</td>
	  <td>0.309418</td>
	</tr>
	<tr>
	  <th>ME2 BM5</th>
	  <td>1.108553</td>
	  <td>0.029160</td>
	  <td>0.661333</td>
	  <td>0.106556</td>
	  <td>0.236327</td>
	</tr>
	<tr>
	  <th>ME3 BM1</th>
	  <td>1.276658</td>
	  <td>-0.031632</td>
	  <td>0.772597</td>
	  <td>0.055472</td>
	  <td>-0.293595</td>
	</tr>
	<tr>
	  <th>ME3 BM2</th>
	  <td>1.089637</td>
	  <td>0.020388</td>
	  <td>0.817869</td>
	  <td>0.098958</td>
	  <td>0.254867</td>
	</tr>
	<tr>
	  <th>ME3 BM3</th>
	  <td>0.974341</td>
	  <td>0.013596</td>
	  <td>0.792613</td>
	  <td>0.094207</td>
	  <td>0.175427</td>
	</tr>
	<tr>
	  <th>ME3 BM4</th>
	  <td>0.979685</td>
	  <td>0.029376</td>
	  <td>0.740114</td>
	  <td>0.110233</td>
	  <td>0.325294</td>
	</tr>
	<tr>
	  <th>ME3 BM5</th>
	  <td>1.040695</td>
	  <td>0.041340</td>
	  <td>0.663458</td>
	  <td>0.119978</td>
	  <td>0.358604</td>
	</tr>
	<tr>
	  <th>ME4 BM1</th>
	  <td>1.191902</td>
	  <td>-0.002976</td>
	  <td>0.828918</td>
	  <td>0.077756</td>
	  <td>-0.035273</td>
	</tr>
	<tr>
	  <th>ME4 BM2</th>
	  <td>1.061515</td>
	  <td>0.009324</td>
	  <td>0.870648</td>
	  <td>0.089031</td>
	  <td>0.146475</td>
	</tr>
	<tr>
	  <th>ME4 BM3</th>
	  <td>0.998882</td>
	  <td>0.013452</td>
	  <td>0.803863</td>
	  <td>0.093715</td>
	  <td>0.175252</td>
	</tr>
	<tr>
	  <th>ME4 BM4</th>
	  <td>0.974851</td>
	  <td>0.021540</td>
	  <td>0.765483</td>
	  <td>0.102346</td>
	  <td>0.256645</td>
	</tr>
	<tr>
	  <th>ME4 BM5</th>
	  <td>1.040993</td>
	  <td>0.028500</td>
	  <td>0.676892</td>
	  <td>0.107630</td>
	  <td>0.254778</td>
	</tr>
	<tr>
	  <th>BIG LoBM</th>
	  <td>0.993371</td>
	  <td>0.009192</td>
	  <td>0.896358</td>
	  <td>0.089497</td>
	  <td>0.174843</td>
	</tr>
	<tr>
	  <th>ME5 BM2</th>
	  <td>0.928890</td>
	  <td>0.007080</td>
	  <td>0.870661</td>
	  <td>0.087865</td>
	  <td>0.127028</td>
	</tr>
	<tr>
	  <th>ME5 BM3</th>
	  <td>0.871221</td>
	  <td>0.011172</td>
	  <td>0.791605</td>
	  <td>0.093074</td>
	  <td>0.160696</td>
	</tr>
	<tr>
	  <th>ME5 BM4</th>
	  <td>0.900981</td>
	  <td>-0.005148</td>
	  <td>0.677227</td>
	  <td>0.074529</td>
	  <td>-0.053262</td>
	</tr>
	<tr>
	  <th>BIG HiBM</th>
	  <td>1.014960</td>
	  <td>0.014868</td>
	  <td>0.588624</td>
	  <td>0.094899</td>
	  <td>0.112658</td>
	</tr>
  </tbody>
</table>
</div>

## 3.2.c) If CAPM were true, what would be true of the Treynor Ratios, alphas, and Information Ratios?

If CAPM were true, we would observe **same** Treynor ratios for all 25 portfolios as the portfolio returns should completely be a function of market returns (SPY). However, as we observe, most portfolios have varying Treynor ratios, indicating towards and high alpha and/or low regression beta. 

The alphas should similarly have been lower (ideally 0) for all portfolios and we should have also seen low absolute magnitude of the residuals, resulting in lower (ideally 0) information ratios. But we observe, that the alphas are still higher than expected and the Information ratios are higher than expected indicating towards presence of other regressors that should be included in the model.

## 3.3) Cross-sectional Estimation

### Let's test (CAPM) directly. We already have what we need:

- #### The dependent variable, (y): mean excess returns from each of the n = 25 portfolios.
- #### The regressor, (x): the market beta from each of the n = 25 time-series regressions.
- #### Then we can estimate the following equation:

<center> $  \underbrace{\mathop{\mathbb{E}}[\tilde{r}^{i}]}_\text{n x 1 data} = 
	\underbrace{\eta}_\text{regression intercept} +
	\underbrace{\beta^{i,m}}_\text{n x 1 data} *\underbrace{\lambda_{m}}_\text{regression estimate} + \underbrace{\upsilon}_\text{n x 1 residuals}
 $ </center>
 
- #### Note that we use sample means as estimates of $\mathop{\mathbb{E}}[\tilde{r}^{i}]$.
- #### This is a weird regression! The regressors are the betas from the time-series regressions we already ran!
- #### This is a single regression, where we are combining evidence across all n = 25 series. Thus, it is a cross-sectional regression!
- #### The notation is trying to emphasize that the intercept is different than the time-series $\alpha$ and that the regressor coefficient is different than the time-series betas.

## 3.2.a) Report the R-squared of this regression.
## 3.2.b) Report the intercept, $\upsilon$.
## 3.2.c) Report the regression coefficient, $\lambda_{m}$.

```python
fund_ret = port_ret.loc['1981-01-01':].mean()
factor = reg_performance['Market Beta']
reg = regression_based_performance(factor,fund_ret,0)
beta = reg[0][0]
treynor_ratio = reg[1]
information_ratio = reg[2]
alpha = reg[3]
r_squared = reg[4]
cross_sec_reg = pd.DataFrame([[beta,alpha/12,r_squared]],columns=['Beta','Alpha','R-Squared'],index = ['Cross-Sectional Estimation'])
cross_sec_reg

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
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Cross-Sectional Estimation</th>
	  <td>-0.00818</td>
	  <td>0.016498</td>
	  <td>0.258245</td>
	</tr>
  </tbody>
</table>
</div>

##  What would these three statistics be if (CAPM) were true?

If CAPM were true and the regression beta for the excess returns on the market factor explained the portfolio excess returns, we would expect a very low alpha, a high beta and a very high R-Squared from the above regression. Since, all market betas should be explaining the same factor i.e. SPY, we should expect them to be heavily correlated.

## 3.4) Broadly speaking, do these results support DFA's belief in size and value portfolios containing premia unrelated to the CAPM?

Low R-Squared and Betas and higher alpha from the cross-sectional regression in the previous question, indicate the presence of other risk factors in the market that can explain excess returns of equity portfolios. Also, as shown by the Fama-French paper, size and value have posted premiums in the past and thus can be used to explain mean excess returns in better capacity than CAPM alone. These results do support DFA's belief in size and value portfolios containing premia unrelated to CAPM.

Using Size and Value as additional factors in the regression for the 25 portfolios, we see a higher R-Squared in the regression, further strengthening DFA's belief in existence of premia in Value and Size Factors

# 4) Extensions

## 4.1) Re-do the analysis of 3.3 and 3.4, but instead of using the market return as the factor, use all three factors, (MKT, SMB, and HML). Note again that all three are already given as excess returns, so there is no need to use the risk-free rate data.
## Thus, instead of testing (CAPM), you will be testing the Fama-French 3-Factor Model.

### <center>$\mathop{\mathbb{E}}[\tilde{r}^{i}_{t}] = \beta^{i,m} \mathop{\mathbb{E}}[\tilde{r}^{m}_{t}] +  \beta^{i,s} \mathop{\mathbb{E}}[\tilde{r}^{s}_{t}] +  \beta^{i,v} \mathop{\mathbb{E}}[\tilde{r}^{v}_{t}]$</center>

```python
portfolios = port_ret.columns
factor = factors.loc['1981':]

df_lst_ff= []
for port in portfolios:
    fund_ret = port_ret['1981-01-01':][port]
    reg = regression_based_performance(factor,fund_ret,0)
    beta_mkt = reg[0][0]
    beta_sml = reg[0][1]
    beta_hml = reg[0][2]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]
    r_squared = reg[4]
    df_lst_ff.append(pd.DataFrame([[beta_mkt,beta_sml,beta_hml,alpha,r_squared,treynor_ratio,information_ratio]],columns=['Market Beta','Size Beta','Value Beta','Alpha','R-Squared','Treynor Ratio','Information Ratio'],index = [port]))

reg_performance_ff = pd.concat(df_lst_ff)
reg_performance_ff

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
	  <th>Market Beta</th>
	  <th>Size Beta</th>
	  <th>Value Beta</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	  <th>Treynor Ratio</th>
	  <th>Information Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SMALL LoBM</th>
	  <td>1.116175</td>
	  <td>1.372219</td>
	  <td>-0.262905</td>
	  <td>-0.083196</td>
	  <td>0.891880</td>
	  <td>0.009374</td>
	  <td>-0.928832</td>
	</tr>
	<tr>
	  <th>ME1 BM2</th>
	  <td>0.972187</td>
	  <td>1.314518</td>
	  <td>-0.012622</td>
	  <td>0.005916</td>
	  <td>0.912405</td>
	  <td>0.098471</td>
	  <td>0.084678</td>
	</tr>
	<tr>
	  <th>ME1 BM3</th>
	  <td>0.921626</td>
	  <td>1.046313</td>
	  <td>0.277420</td>
	  <td>0.000084</td>
	  <td>0.945551</td>
	  <td>0.100814</td>
	  <td>0.001869</td>
	</tr>
	<tr>
	  <th>ME1 BM4</th>
	  <td>0.878290</td>
	  <td>1.057983</td>
	  <td>0.476788</td>
	  <td>0.023964</td>
	  <td>0.938066</td>
	  <td>0.136624</td>
	  <td>0.503265</td>
	</tr>
	<tr>
	  <th>SMALL HiBM</th>
	  <td>0.935865</td>
	  <td>1.060999</td>
	  <td>0.695626</td>
	  <td>0.024204</td>
	  <td>0.869853</td>
	  <td>0.141148</td>
	  <td>0.323126</td>
	</tr>
	<tr>
	  <th>ME2 BM1</th>
	  <td>1.142436</td>
	  <td>1.015023</td>
	  <td>-0.332342</td>
	  <td>-0.029880</td>
	  <td>0.940685</td>
	  <td>0.052765</td>
	  <td>-0.499362</td>
	</tr>
	<tr>
	  <th>ME2 BM2</th>
	  <td>1.012003</td>
	  <td>0.901247</td>
	  <td>0.120149</td>
	  <td>0.007080</td>
	  <td>0.939822</td>
	  <td>0.099435</td>
	  <td>0.142076</td>
	</tr>
	<tr>
	  <th>ME2 BM3</th>
	  <td>0.972962</td>
	  <td>0.707765</td>
	  <td>0.398220</td>
	  <td>0.008832</td>
	  <td>0.919854</td>
	  <td>0.109578</td>
	  <td>0.170470</td>
	</tr>
	<tr>
	  <th>ME2 BM4</th>
	  <td>0.940884</td>
	  <td>0.742195</td>
	  <td>0.579725</td>
	  <td>0.006228</td>
	  <td>0.937383</td>
	  <td>0.114508</td>
	  <td>0.138965</td>
	</tr>
	<tr>
	  <th>ME2 BM5</th>
	  <td>1.093340</td>
	  <td>0.921874</td>
	  <td>0.822365</td>
	  <td>-0.005280</td>
	  <td>0.951121</td>
	  <td>0.108038</td>
	  <td>-0.112717</td>
	</tr>
	<tr>
	  <th>ME3 BM1</th>
	  <td>1.107258</td>
	  <td>0.755360</td>
	  <td>-0.381037</td>
	  <td>-0.012504</td>
	  <td>0.941650</td>
	  <td>0.063958</td>
	  <td>-0.229096</td>
	</tr>
	<tr>
	  <th>ME3 BM2</th>
	  <td>1.026518</td>
	  <td>0.575932</td>
	  <td>0.153386</td>
	  <td>0.015048</td>
	  <td>0.910852</td>
	  <td>0.105042</td>
	  <td>0.268821</td>
	</tr>
	<tr>
	  <th>ME3 BM3</th>
	  <td>0.976655</td>
	  <td>0.396413</td>
	  <td>0.413146</td>
	  <td>-0.003888</td>
	  <td>0.889943</td>
	  <td>0.093984</td>
	  <td>-0.068774</td>
	</tr>
	<tr>
	  <th>ME3 BM4</th>
	  <td>1.007356</td>
	  <td>0.433897</td>
	  <td>0.621190</td>
	  <td>0.002652</td>
	  <td>0.902655</td>
	  <td>0.107205</td>
	  <td>0.047988</td>
	</tr>
	<tr>
	  <th>ME3 BM5</th>
	  <td>1.089302</td>
	  <td>0.512732</td>
	  <td>0.840981</td>
	  <td>0.004968</td>
	  <td>0.885622</td>
	  <td>0.114624</td>
	  <td>0.073899</td>
	</tr>
	<tr>
	  <th>ME4 BM1</th>
	  <td>1.070765</td>
	  <td>0.437571</td>
	  <td>-0.375367</td>
	  <td>0.015048</td>
	  <td>0.930425</td>
	  <td>0.086553</td>
	  <td>0.280220</td>
	</tr>
	<tr>
	  <th>ME4 BM2</th>
	  <td>1.060878</td>
	  <td>0.209635</td>
	  <td>0.205977</td>
	  <td>0.000636</td>
	  <td>0.894293</td>
	  <td>0.089085</td>
	  <td>0.011085</td>
	</tr>
	<tr>
	  <th>ME4 BM3</th>
	  <td>1.038528</td>
	  <td>0.156547</td>
	  <td>0.423500</td>
	  <td>-0.005136</td>
	  <td>0.869683</td>
	  <td>0.090137</td>
	  <td>-0.082178</td>
	</tr>
	<tr>
	  <th>ME4 BM4</th>
	  <td>1.027087</td>
	  <td>0.200265</td>
	  <td>0.551977</td>
	  <td>-0.002700</td>
	  <td>0.877046</td>
	  <td>0.097141</td>
	  <td>-0.044442</td>
	</tr>
	<tr>
	  <th>ME4 BM5</th>
	  <td>1.127047</td>
	  <td>0.249678</td>
	  <td>0.828854</td>
	  <td>-0.008040</td>
	  <td>0.869162</td>
	  <td>0.099412</td>
	  <td>-0.112865</td>
	</tr>
	<tr>
	  <th>BIG LoBM</th>
	  <td>0.981733</td>
	  <td>-0.259134</td>
	  <td>-0.338131</td>
	  <td>0.023676</td>
	  <td>0.956209</td>
	  <td>0.090558</td>
	  <td>0.693085</td>
	</tr>
	<tr>
	  <th>ME5 BM2</th>
	  <td>0.970276</td>
	  <td>-0.211823</td>
	  <td>0.065731</td>
	  <td>0.003552</td>
	  <td>0.894132</td>
	  <td>0.084117</td>
	  <td>0.070577</td>
	</tr>
	<tr>
	  <th>ME5 BM3</th>
	  <td>0.947390</td>
	  <td>-0.206295</td>
	  <td>0.305071</td>
	  <td>-0.003072</td>
	  <td>0.866453</td>
	  <td>0.085591</td>
	  <td>-0.055220</td>
	</tr>
	<tr>
	  <th>ME5 BM4</th>
	  <td>1.033585</td>
	  <td>-0.207492</td>
	  <td>0.683212</td>
	  <td>-0.036384</td>
	  <td>0.892690</td>
	  <td>0.064967</td>
	  <td>-0.652086</td>
	</tr>
	<tr>
	  <th>BIG HiBM</th>
	  <td>1.172027</td>
	  <td>-0.196505</td>
	  <td>0.858662</td>
	  <td>-0.024204</td>
	  <td>0.809215</td>
	  <td>0.082181</td>
	  <td>-0.269272</td>
	</tr>
  </tbody>
</table>
</div>

```python
fund_ret = port_summary['Mean']
factor = reg_performance_ff.loc[:,['Market Beta','Size Beta','Value Beta']]
reg = regression_based_performance(factor,fund_ret,0)
beta_mkt = reg[0][0]
beta_size = reg[0][1]
beta_value = reg[0][2]
treynor_ratio = reg[1]
information_ratio = reg[2]
alpha = reg[3]
r_squared = reg[4]
cross_sec_reg_ff = pd.DataFrame([[beta_mkt,beta_size,beta_value,alpha/12,r_squared]],columns=['Mkt Beta','Size Beta','Value Beta','Alpha','R-Squared'],index = ['Cross-Sectional Estimation'])
cross_sec_reg_ff

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
	  <th>Mkt Beta</th>
	  <th>Size Beta</th>
	  <th>Value Beta</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Cross-Sectional Estimation</th>
	  <td>-0.095676</td>
	  <td>0.002894</td>
	  <td>0.03621</td>
	  <td>0.17974</td>
	  <td>0.466514</td>
	</tr>
  </tbody>
</table>
</div>

## 4.2) Re-do the analysis of 3.3 and 3.3, but instead of using the market return as the factor, use a new factor: the in-sample tangency portfolio of the n = 25 portfolios.

### You will not use the factor data for this problem!
- #### Calculate $\tilde{r}^{tan}$ by solving the MV optimization of the n excess returns.
- #### Consider this to be your single factor.

### Instead of testing (CAPM), you will test the MV model:

### <center>$\mathop{\mathbb{E}}[\tilde{r}^{i}_{t}] = \beta^{i,tan} \mathop{\mathbb{E}}[\tilde{r}^{tan}_{t}]$</center> 

### What do you find?

```python
mean_excess_ret =  np.array(port_ret['1981':].mean())

tangency_port = tangency_portfolio_rfr(mean_excess_ret,port_ret['1981':].cov())

TangencyPort_df = pd.DataFrame(tangency_port,columns= ["Tangency Portfolio Weight"],index=port_summary.index)
TangencyRets = (port_ret @ TangencyPort_df).rename(columns={'Tangency Portfolio Weight':'Tangency Returns'})
TangencyRets

portfolios = port_ret.columns
factor = TangencyRets.loc['1981':]

df_lst_tang= []
for port in portfolios:
    fund_ret = port_ret['1981-01-01':][port]
    reg = regression_based_performance(factor,fund_ret,0)
    beta_tang = reg[0][0]
    treynor_ratio = reg[1]
    information_ratio = reg[2]
    alpha = reg[3]
    r_squared = reg[4]
    df_lst_tang.append(pd.DataFrame([[beta_tang,treynor_ratio,information_ratio,alpha,r_squared]],columns=['Tangency Beta','Treynor Ratio','Information Ratio','Alpha','R-Squared'],index = [port]))

reg_performance_tang = pd.concat(df_lst_tang)
reg_performance_tang
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
	  <th>Tangency Beta</th>
	  <th>Treynor Ratio</th>
	  <th>Information Ratio</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SMALL LoBM</th>
	  <td>0.025858</td>
	  <td>0.404647</td>
	  <td>3.458487e-15</td>
	  <td>0.0</td>
	  <td>0.000411</td>
	</tr>
	<tr>
	  <th>ME1 BM2</th>
	  <td>0.236581</td>
	  <td>0.404647</td>
	  <td>5.555822e-15</td>
	  <td>0.0</td>
	  <td>0.045892</td>
	</tr>
	<tr>
	  <th>ME1 BM3</th>
	  <td>0.229614</td>
	  <td>0.404647</td>
	  <td>5.490031e-15</td>
	  <td>0.0</td>
	  <td>0.061861</td>
	</tr>
	<tr>
	  <th>ME1 BM4</th>
	  <td>0.296544</td>
	  <td>0.404647</td>
	  <td>1.858781e-15</td>
	  <td>0.0</td>
	  <td>0.109565</td>
	</tr>
	<tr>
	  <th>SMALL HiBM</th>
	  <td>0.326447</td>
	  <td>0.404647</td>
	  <td>2.899786e-15</td>
	  <td>0.0</td>
	  <td>0.112747</td>
	</tr>
	<tr>
	  <th>ME2 BM1</th>
	  <td>0.148972</td>
	  <td>0.404647</td>
	  <td>5.489776e-15</td>
	  <td>0.0</td>
	  <td>0.016775</td>
	</tr>
	<tr>
	  <th>ME2 BM2</th>
	  <td>0.248684</td>
	  <td>0.404647</td>
	  <td>1.579134e-15</td>
	  <td>0.0</td>
	  <td>0.068375</td>
	</tr>
	<tr>
	  <th>ME2 BM3</th>
	  <td>0.263477</td>
	  <td>0.404647</td>
	  <td>1.755108e-15</td>
	  <td>0.0</td>
	  <td>0.094517</td>
	</tr>
	<tr>
	  <th>ME2 BM4</th>
	  <td>0.266254</td>
	  <td>0.404647</td>
	  <td>3.393155e-15</td>
	  <td>0.0</td>
	  <td>0.100711</td>
	</tr>
	<tr>
	  <th>ME2 BM5</th>
	  <td>0.291915</td>
	  <td>0.404647</td>
	  <td>1.171574e-15</td>
	  <td>0.0</td>
	  <td>0.086481</td>
	</tr>
	<tr>
	  <th>ME3 BM1</th>
	  <td>0.175013</td>
	  <td>0.404647</td>
	  <td>2.861134e-15</td>
	  <td>0.0</td>
	  <td>0.027381</td>
	</tr>
	<tr>
	  <th>ME3 BM2</th>
	  <td>0.266474</td>
	  <td>0.404647</td>
	  <td>2.422583e-15</td>
	  <td>0.0</td>
	  <td>0.092242</td>
	</tr>
	<tr>
	  <th>ME3 BM3</th>
	  <td>0.226840</td>
	  <td>0.404647</td>
	  <td>-1.138030e-15</td>
	  <td>-0.0</td>
	  <td>0.081017</td>
	</tr>
	<tr>
	  <th>ME3 BM4</th>
	  <td>0.266885</td>
	  <td>0.404647</td>
	  <td>4.964765e-16</td>
	  <td>0.0</td>
	  <td>0.103579</td>
	</tr>
	<tr>
	  <th>ME3 BM5</th>
	  <td>0.308566</td>
	  <td>0.404647</td>
	  <td>8.743165e-16</td>
	  <td>0.0</td>
	  <td>0.109992</td>
	</tr>
	<tr>
	  <th>ME4 BM1</th>
	  <td>0.229034</td>
	  <td>0.404647</td>
	  <td>4.133297e-15</td>
	  <td>0.0</td>
	  <td>0.057720</td>
	</tr>
	<tr>
	  <th>ME4 BM2</th>
	  <td>0.233557</td>
	  <td>0.404647</td>
	  <td>7.126463e-16</td>
	  <td>0.0</td>
	  <td>0.079483</td>
	</tr>
	<tr>
	  <th>ME4 BM3</th>
	  <td>0.231337</td>
	  <td>0.404647</td>
	  <td>6.970983e-16</td>
	  <td>0.0</td>
	  <td>0.081310</td>
	</tr>
	<tr>
	  <th>ME4 BM4</th>
	  <td>0.246565</td>
	  <td>0.404647</td>
	  <td>7.800400e-16</td>
	  <td>0.0</td>
	  <td>0.092347</td>
	</tr>
	<tr>
	  <th>ME4 BM5</th>
	  <td>0.276889</td>
	  <td>0.404647</td>
	  <td>-1.829706e-15</td>
	  <td>-0.0</td>
	  <td>0.090310</td>
	</tr>
	<tr>
	  <th>BIG LoBM</th>
	  <td>0.219707</td>
	  <td>0.404647</td>
	  <td>-2.996301e-16</td>
	  <td>-0.0</td>
	  <td>0.082689</td>
	</tr>
	<tr>
	  <th>ME5 BM2</th>
	  <td>0.201698</td>
	  <td>0.404647</td>
	  <td>7.435121e-16</td>
	  <td>0.0</td>
	  <td>0.077415</td>
	</tr>
	<tr>
	  <th>ME5 BM3</th>
	  <td>0.200393</td>
	  <td>0.404647</td>
	  <td>4.005121e-17</td>
	  <td>0.0</td>
	  <td>0.078980</td>
	</tr>
	<tr>
	  <th>ME5 BM4</th>
	  <td>0.165945</td>
	  <td>0.404647</td>
	  <td>1.148149e-15</td>
	  <td>0.0</td>
	  <td>0.043324</td>
	</tr>
	<tr>
	  <th>BIG HiBM</th>
	  <td>0.238031</td>
	  <td>0.404647</td>
	  <td>9.542396e-16</td>
	  <td>0.0</td>
	  <td>0.061053</td>
	</tr>
  </tbody>
</table>
</div>

```python
fund_ret = port_summary['Mean']
factor = reg_performance_tang.loc[:,['Tangency Beta']]
reg = regression_based_performance(factor,fund_ret,0)
beta_tang = reg[0][0]
treynor_ratio = reg[1]
alpha = reg[3]
r_squared = reg[4]
cross_sec_reg_tang = pd.DataFrame([[beta_tang,alpha,r_squared]],columns=['Tangency Beta','Alpha','R-Squared'],index = ['Cross-Sectional Estimation'])
cross_sec_reg_tang
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
	  <th>Tangency Beta</th>
	  <th>Alpha</th>
	  <th>R-Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Cross-Sectional Estimation</th>
	  <td>0.404647</td>
	  <td>0.0</td>
	  <td>1.0</td>
	</tr>
  </tbody>
</table>
</div>

## 4.3) In problem 2.3, we measured how well the CAPM performs by running the analogous regression. In fact, we could have assessed it directly from the time-series regressions.

```python
portfolios = port_ret.columns
factor = factors['1981-01-01':]['Mkt-RF']

resid = pd.DataFrame()
for port in portfolios:
    fund_ret = port_ret['1981-01-01':][port]
    reg = regression_based_performance(factor,fund_ret,0)
    resid[port] = reg[6]
```

## 4.3.a) Report the mean-absolute-error of the CAPM:

## <center>$\text{MAE} = \frac{1}{n}\sum^{n}_{i=1}|\alpha_{i}|$ </center>

```python
pd.DataFrame([(((reg_performance['Alpha']).abs().mean()))], columns = ['MAE (%)'], index = ['CAPM'])
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
	  <th>MAE (%)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>CAPM</th>
	  <td>0.024271</td>
	</tr>
  </tbody>
</table>
</div>

## 4.3.b) Under classic statistical assumptions, we can test the null hypothesis that the CAPM works by calculating,

## <center> $\text{H} = \text{T} \ [1+(\text{SR}_{m})^{2}]^{-1} \alpha^{'}\Sigma^{-1}_{\epsilon}\alpha ~ \chi^{2}_{n}$ </center>

- ### Note the following:
- ### $\alpha$ is an n x 1 vector of the individual regression alphas, $\alpha^{i}$.
- ### $\Sigma_{\epsilon}$ is the n x n covariance matrix of the time-series of regression residuals, $\epsilon^{i}$, corresponding to each regression.
- ### $\text{SR}_{m}$ is the Sharpe-Ratio of $\tilde{r}^{m}$.

## The test statistic, H, has a chi-squared distribution with n = 25 degrees of freedom. So under the null hypothesis of the CAPM holding, H should be small, and the distribution allows us to calculate the probability of seeing such a large H, conditional on the CAPM being true.

```python
T = port_ret['1981':].shape[0]
SR = factors['1981':]['Mkt-RF'].mean() *12/ factors['1981':]['Mkt-RF'].std()*np.sqrt(12)
Sigma = resid.cov()
Sigma_inv = pd.DataFrame(np.linalg.inv(Sigma), index=Sigma.index, columns=Sigma.columns)
alpha = reg_performance['Alpha']

H = T * (1 + SR**2)**(-1) * (alpha @ Sigma_inv @ alpha)

print('H = {:.2f}'.format(H))
pvalue = 1 - stats.chi2.cdf(H, df=25)
print('p-value = {:.4f}'.format(pvalue))
```

    H = 521.63
    p-value = 0.0000

## 4.3.c) Which is a stricter test: checking whether any of the n values of $\alpha^{i}$ have a statistically significant t-test or checking whether H calculated above is significant?

- By definition, a joint test is stricter than testing the conditions individually.
- In our case, we can see that most of the alphas (20 alphas) are not significant (as -value  0.05) while 5 alphas are significant (as -value  0.05) as judged by their individual -stats, yet all of them are jointly significant as judged by this joint test.

## 4.3.d) Conceptually, how does the test-statistic H relate to checking whether $\tilde{r}^{m}$ spans the tangency portfolio?

- We have demonstrated that an LFM is exactly the same as asserting that a set of factors spans the MV frontier, (and thus spans the tangency portfolio.) 
- Thus, this test can be interpreted as checking whether investing in the alphas gets beyond the tangency portfolio. The test stat is basically comparing the square SR of the alphas to the square SR of the factors.

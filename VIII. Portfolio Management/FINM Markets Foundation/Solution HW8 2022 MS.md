---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Solution HW8 2022 MS
---

# Solution HW8 2022 MS
<div style="text-align: right"> Mark Hendricks </div>

<left>FINM 36700 - Portfolio Theory and Risk Management</left> 

<br>
<left>Autumn 2022</left>

<h1><center> Homework 8 </center></h1>
<center>Due on Monday, Nov 28</center>

<h4> Case: Long-Term Capital Management, L.P. (A) [HBS 9-200-007] </h4>

## 1 Conceptual issues for LTCM

*Discuss these questions briefly, based on the info in the case. No need to quantitatively answer these questions.*

1. Describe LTCM's investment strategy with regard to the following aspects:
		
	- Securities traded
	- Trading frequency
	- Skewness (Do they seek many small wins or a few big hits?)
	- Forecasting (What is behind their selection of trades?)

2. What are LTCM's biggest advantages over its competitors?
3. The case discusses four types of funding risk facing LTCM:
	
	- collateral haircuts
	- repo maturity
	- equity redemption
	- loan access

	The case discusses specific ways in which LTCM manages each of these risks. Briefly discuss them.

4. LTCM is largely in the business of selling liquidity and volatility. Describe how LTCM accounts for liquidity risk in their quantitative measurements.
5. Is leverage risk currently a concern for LTCM?
6. Many strategies of LTCM rely on converging spreads. LTCM feels that these are almost win/win situations because of the fact that if the spread converges, they make money. If it diverges, the trade becomes even more attractive, as convergence is still expected at a future date.

	What is the risk in these convergence trades?

## 2 LTCM Risk Decomposition

- On Canvas, find the data file, "ltcm_exhibits_data.xlsx". Get the gross and net (total) returns of LTCM from "Exhibit 2".
- Get the returns on SPY as well as the risk-free rate from the file, "gmo analysis data".

1. Summary stats.

	(a) For both the gross and net series of LTCM excess returns, report the mean, volatility, and Sharpe ratios. (Annualize them.)

	(b) Report the skewness, kurtosis, and (historic) VaR(.05).

	(c) Comment on how these stats compare to SPY and other assets we have seen. How much do they differ between gross and net?

2. Using the series of net LTCM excess returns, denoted $\tilde{r}_t^{LTCM}$ estimate the following regression:

$$\tilde{r}_t^{LTCM} = \alpha + \beta^m \tilde{r}_t^m + \epsilon_t$$

- Report $\alpha$ and $\beta^m$. Report the R2 stat.
- From this regression, does LTCM appear to be a "closet indexer"?
- From the regression, does LTCM appear to deliver excess returns beyond the risk premium we expect from market exposure?

3. Let's check for non-linear market exposure. Run the following regression on LTCM's net excess returns:

$$\tilde{r}_t^{LTCM} = \alpha + \beta_1 \tilde{r}^m_t + \beta_2 (\tilde{r}^m_t)^2 + \epsilon_t $$ 

- Report β1, β2, and the R2 stat.
- Does the quadratic market factor do much to increase the overall LTCM variation explained by the market?
- From the regression evidence, does LTCM's market exposure behave as if it is long market options or short market options?
- Should we describe LTCM as being positively or negatively exposed to market volatility?

4. Let's try to pinpoint the nature of LTCM's nonlinear exposure. Does it come more from exposure to up-markets or down-markets? Run the following regression on LTCM's net excess returns:

$$\tilde{r}_t^{LTCM} = \alpha + \beta \tilde{r}_t^{m} + \beta_u max(\tilde{r}_t^{m} - k_1, 0) +  \beta_d max(k_2 - \tilde{r}_t^{m}, 0) + \epsilon_t$$

where $k_1 = .03$ and $k_2 = −.03$. (This is roughly one standard deviation of $\tilde{r}_t^{m}$.)

- Report $\beta$, $\beta_u$, $\beta_d$, and the R2 stat.
- Is LTCM long or short the call-like factor? And the put-like factor?
- Which factor moves LTCM more, the call-like factor, or the put-like factor?
- In the previous problem, you commented on whether LTCM is positively or negatively exposed to market volatility. Using this current regression, does this volatility exposure come more from being long the market's upside? Short the market's downside? Something else?

## 3 The FX Carry Trade

Find an Excel data file, "fx_carry_data.xlsx". The file has two sets of data:

- Risk-free rates across 5 currencies, as measured by annualized 3-month LIBOR rates.
- Spot FX rates, as direct quotes to the USD. (Note that all currencies are quoted as USD per the foreign currency.)

For use in the homework, note the following:

- For risk-free rate data, $r^{f,i}_{t,t+1}$, the rate is known and reported in the data at time t. Namely, any given date $t$ in the data file is reporting both $S^i_t$ and $r^{f,i}_{t,t+1}$.
- The theory says to use log risk-free rates. You have the risk-free rate in levels: use the following equation to convert them:

$$ 𝚛^{f,i}_{t, t+1} = ln(1 + r^{f,i}_{t, t+1})$$

- The theory says to use log spot FX prices. You have the FX prices in levels, so directly take their logarithims:

$$ s^i_t = ln(S^i_t) $$

1. The Static Carry Trade

	Define the log return of holding the foreign currency using log values of the risk-free rate and log values of the FX rates:

	$$ 𝚛^{i}_{t+1} = s^i_{t+1} - s^i_t + 𝚛^{f,i}_{t, t+1} $$

	Then the excess log return relative to USD, is expressed as:

	$$ \tilde{𝚛}^{i}_{t+1} = s^i_{t+1} - s^i_t + 𝚛^{f,i}_{t, t+1} - 𝚛^{f,$}_{t, t+1}$$

	For each foreign currency, i, calculate the excess log return series, $\tilde{𝚛}^{i}_{t+1}$. Report the following stats, (based on the excess log returns.) Annualize them.

	- mean
	- volatility
	- Sharpe ratio

	What differences do you see across currencies?

2. Implications for UIP:

- Do any of these stats contradict the (log version) of Uncovered Interest Parity (UIP)?
- A long position in which foreign currency offered the best Sharpe ratio over the sample?
- Are there any foreign currencies for which a long position earned a negative excess return (in USD) over the sample?

3. Predicting FX

	For each foreign currency, test whether interest-rate differentials can predict growth in the foreign-exchange rate. Do this by estimating the following forecasting regression:

	$$s^i_{t+1} - s^i_t = \alpha + \beta (𝚛^{f,$}_{t, t+1} - 𝚛^{f,i}_{t, t+1}) + \epsilon_t $$

	where $𝚛^{f,i}$ denotes the risk-free rate of currency $i$, and $s^i$ denotes the FX rate for currency $i$. Again, note that both $𝚛^{f,i}_{t, t+1}$ and $s_t$ are determined at time t.

	(a) Make a table with columns corresponding to a different currency regression. Report the regression estimates αi and βi in the first two rows. Report the R2 stat in the third row.

	(b) Suppose the foreign risk-free rate increases relative to the US rate.

	- For which foreign currencies would we predict a relative strengthening of the USD in the following period.
	- For which currencies would we predict relative weakening of the USD in the following period?
	- This FX predictability is strongest in the case of which foreign currency?

4. The Dynamic Carry Trade

	Use this to write $\mathbb{E}_t[\tilde{𝚛}^i_{t+1}]$ as a function of the interest-rate differential as well as α and β from this FX regression.

	$$ \mathbb{E}_t[s_{t+1} - s_t] = \alpha + \beta (𝚛^{f,$}_{t, t+1} - 𝚛^{f,i}_{t, t+1})$$

	Then use the definition of excess (log) returns on FX:

	$$ \tilde{𝚛}^{i}_{t+1} = s^i_{t+1} - s^i_t + 𝚛^{f,i}_{t, t+1} - 𝚛^{f,$}_{t, t+1}$$

	Rearranging, this implies the following forecast for excess log returns:

	$$ \mathbb{E}_t[s_{t+1} - s_t] = \alpha + (\beta - 1) (𝚛^{f,$}_{t, t+1} - 𝚛^{f,i}_{t, t+1})$$

	(a) Use your regression estimates from Problem 3 along with the formula above to calculate the fraction of months for which the estimated FX risk premium positive. That is, for each i, calculate how often in the time-series we have:

	$$\mathbb{E}_t[\tilde{𝚛}^i_{t+1}] > 0$$

	(b) Which currencies most consistently have a positive FX risk premium? And for which currencies does the FX risk premium most often go negative?

	(c) Explain how we could use these conditional risk premia to improve the static carry trade returns calculated in Problem 1.

<h1><span style="color:#00008B"> Solutions - Maneet Singh </span></h1>

<h4>Email - maneetsingh@uchicago.edu</h4>

```python
# import libraries
import math
import pandas as pd
import numpy as np
import seaborn as sns
import scipy.stats as stats
import matplotlib.pyplot as plt
import statsmodels.api as sm
from sklearn.linear_model import LinearRegression
import warnings
warnings.filterwarnings("ignore")
pd.set_option("display.precision", 4)
sns.set(rc={'figure.figsize':(15, 10)})



def getPerformanceMetrics(data, maxDD = False):

    data_desc = data.describe().loc[['mean','std']]

    data_desc.loc['mean'] = data_desc.loc['mean']*12 # annualize
    data_desc.loc['std'] = data_desc.loc['std']*np.sqrt(12) # annualize
    data_desc.loc['sharpe_ratio'] = data_desc.loc['mean'] / data_desc.loc['std']
    
    data_desc.loc['skewness'] = data.skew()
    data_desc.loc['excess_kurtosis'] = data.kurt()-3
    data_desc.loc['VaR05'] = np.quantile(data,.05,axis=0)
    data_desc.loc['CVaR05'] = np.mean(data<=data_desc.loc['VaR05'])
    
    def getMaxDDInfo(data):
        cumRet = (1+data).cumprod()
        cumMax = cumRet.cummax()
        dd = (cumRet/cumMax)-1
        # print(dd.min())
        
        maxDD = pd.DataFrame([tuple(dd.min())],
                            columns=data.columns,
                            index=['maxDrawdown'])

        maxDD_dt = []
        # loop through each column in dd (drawdown DataFrame)
        for col,val in dd.iteritems():
            mdd = maxDD[col]['maxDrawdown']
            
            troughDate = val[val==mdd].index[0].strftime("%Y-%m-%d")
            peakDate = val[:troughDate].iloc[::-1].idxmax().strftime("%Y-%m-%d")
            recoveryDate = val[troughDate:].idxmax().strftime("%Y-%m-%d")

            maxDD_dt.append([peakDate,troughDate,recoveryDate])

        maxDD_dt = pd.DataFrame(list(zip(*maxDD_dt)), #transpose: [[1,2],[3,4]] -> [[1,3],[2,4]]
                                columns=data.columns,
                                index=['maxDrawdown_peakDate','maxDrawdown_troughDate','maxDrawdown_recoveryDate'])
        
        return pd.concat([maxDD,maxDD_dt])
    
    if maxDD:
        return pd.concat([data_desc,getMaxDDInfo(data)]).transpose()
    else:
        return data_desc.transpose()
```

```python
portdf = pd.read_excel('ltcm_exhibits_data.xlsx', sheet_name=1, skiprows=(0,1), usecols='A:E').dropna().rename(columns={'Unnamed: 0':'Date','Gross Monthly Performancea':'GrossLTCM','Net Monthly Performanceb':'NetLTCM'}).set_index('Date')
portdf.index = portdf.index.to_period('M').to_timestamp('M')

rets = pd.read_excel('gmo_analysis_data.xlsx', sheet_name=2, usecols = "A:B").rename(columns={'Unnamed: 0': 'Date'}).set_index('Date').loc['1994-03':'1998-07']
portdf['SPY'] = rets['SPY']

rf = pd.read_excel('gmo_analysis_data.xlsx',sheet_name=3).rename(columns={'Unnamed: 0': 'Date'}).set_index('Date').loc['1994-03':'1998-07']
retsx = portdf.subtract(rf['US3M'],axis=0)

retsx.head()

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
	  <th>Fund Capital ($billions)</th>
	  <th>GrossLTCM</th>
	  <th>NetLTCM</th>
	  <th>Index of Net Performance</th>
	  <th>SPY</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1994-03-31</th>
	  <td>1.0970</td>
	  <td>-0.0140</td>
	  <td>-0.0160</td>
	  <td>0.9870</td>
	  <td>-0.0449</td>
	</tr>
	<tr>
	  <th>1994-04-30</th>
	  <td>1.0967</td>
	  <td>0.0107</td>
	  <td>0.0047</td>
	  <td>0.9967</td>
	  <td>0.0079</td>
	</tr>
	<tr>
	  <th>1994-05-31</th>
	  <td>1.1964</td>
	  <td>0.0644</td>
	  <td>0.0494</td>
	  <td>1.0464</td>
	  <td>0.0123</td>
	</tr>
	<tr>
	  <th>1994-06-30</th>
	  <td>1.1965</td>
	  <td>-0.0425</td>
	  <td>-0.0326</td>
	  <td>1.0165</td>
	  <td>-0.0264</td>
	</tr>
	<tr>
	  <th>1994-07-31</th>
	  <td>1.3963</td>
	  <td>0.1123</td>
	  <td>0.0803</td>
	  <td>1.0963</td>
	  <td>0.0287</td>
	</tr>
  </tbody>
</table>
</div>

## 1 Conceptual issues for LTCM

*Discuss these questions briefly, based on the info in the case. No need to quantitatively answer these questions.*

1. Describe LTCM's investment strategy with regard to the following aspects:
		
	- Securities traded
	- Trading frequency
	- Skewness (Do they seek many small wins or a few big hits?)
	- Forecasting (What is behind their selection of trades?)

<span style="color:red">**[Solution]**: 

<span style="color:red">LTCM traded across a wide range of securities. They are heavily involved in fixed income and credit, and they also have sizeable positions in equities. In all these asset classes, they trade a large number of securities, across global markets.

<span style="color:red">LTCM's trading frequencies vary given that they house a wide range of strategies. Their largest bucket, the convergence trades, typically take weeks and months to converge. Overall, they are something of a medium-term frequency. Largely, they are not trying to arbitrage intraday movements, nor are they making long-term directional bets.

<span style="color:red">LTCM largely is trying to pick up small premia in the convergence trades, which limits the upside of any individual trade, and leaves it substantial downside, given all the leverage. Of course, aggregating all their trades together can lead to positive skewness if they are properly diversified. But we would expect that their typical trade has a small positive mean with substantial negative skewness.

<span style="color:red">For most their trades, LTCM is not making directional forecasts. Rather, they are trading spreads and pairs, forecasting relative convergence rather than absolute levels. In this sense, they do not rely on sophisticated forecasting models of the overall market but rather rely on models to forecast the size and speed of relative convergence in particular markets.</span>

2. What are LTCM's biggest advantages over its competitors?

<span style="color:red">**[Solution]**:

<span style="color:red">Several advantages.

- <span style="color:red">Efficient financing. LTCM got very favorable terms on all financing—sometimes even zero haircut! Typically had small, if any, outlay.
- <span style="color:red">Fund size. Have market power even in the large market of institutional wholesale.
- <span style="color:red">Liquidity. LTCM has in place many mechanisms to ensure liquidity.
- <span style="color:red">Long-term horizon. In financing and assessing trades, LTCM takes a relatively long-term view. Hedged. LTCM avoids taking too much default risk or explicit directional bets.

<span style="color:red">Then again, LTCM went bust in Aug. 1998, so maybe these advantages were not as strong as it seemed!

3. The case discusses four types of funding risk facing LTCM:
	
	- collateral haircuts
	- repo maturity
	- equity redemption
	- loan access

	The case discusses specific ways in which LTCM manages each of these risks. Briefly discuss them.

<span style="color:red">**[Solution]**:

<span style="color:red"> The case discusses steps LTCM took to manage four types of funding risks.

- <span style="color:red"> Collateral haircuts. For most trades, LTCM obtains 100% financing on a fully collateralized basis. Furthermore, LTCM stress tests the haircuts across its asset classes.
- <span style="color:red">Repo. LTCM goes against the norm by entering into relatively long-maturity repo. While much of it is overnight, LTCM uses contracts that typically have maturity of 6-12 months. Furthermore, LTCM manages their aggregate repo maturity.
- <span style="color:red">Equity redemption. The firm is highly levered, so equity funding risk is especially important. LTCM restricts redemptions of equity year by year. The restriction is particularly strong in that unredeemed money is re-locked.
They also spread the redemption windows across the year to ensure there is never a possibility of immediate withdrawal of a large portion of equity.

- <span style="color:red">For debt funding, LTCM negotiated a revolving loan that has no Material Adverse Change clause. Thus, the availability of debt funding is not so highly correlated with fund performance.

4. LTCM is largely in the business of selling liquidity and volatility. Describe how LTCM accounts for liquidity risk in their quantitative measurements.

<span style="color:red">**[Solution]**: LTCM attempts to account for liquidity risk quantitatively by adjusting security correlations. For short-term horizons, LTCM assumes positive correlation between all trade categories. Even if their net exposure to a strategy flips sides, they still assume positive correlation to the new net position. Given the efforts of LTCM to hedge out obvious market risks, there are many strategies which would seem to have zero correlation. However, LTCM feels that liquidity concerns can cause the effective trading to be positively correlated.

5. Is leverage risk currently a concern for LTCM?

<span style="color:red">**[Solution]**: It would seem that leverage is not particularly dangerous at the moment. The fund's volatility is relatively low, its VaR is relatively low, nor is it particularly high relative to the rest of the industry. Moreover, the firm actively manages its funding risk which theoretically means it should be able to handle the natural risks of high leverage. At the time of the case, the firm is trying to determine whether to further increase leverage. Subsequently, at the end of 1997 the fund returned about a third of its 7.5 billion equity capital to investors. Of course, less than a year later, the fund blew up, but from the time of the case it's hard to see the leverage risk.  

6. Many strategies of LTCM rely on converging spreads. LTCM feels that these are almost win/win situations because of the fact that if the spread converges, they make money. If it diverges, the trade becomes even more attractive, as convergence is still expected at a future date.

	What is the risk in these convergence trades?

<span style="color:red">**[Solution]**: What is the risk in these convergence trades? Solution: About a year after the time of the case, the fund loses most of its value due to non-converging trades. So clearly there is some risk! Positions are subject to liquidity risk. If market liquidity dries up or the markets become segmented, the divergent spreads can persist for a long time. This indeed happens later to LTCM. The trades that get them in trouble ultimately pay off, but not before LTCM blows up. LTCM believes it can exit these convergence trades if they become too unprofitable. However, a stop-loss order is not the same as a put option. If the price jumps discontinuously through the stop-loss, then it is ineffective. Or a market may be paralyzed/illiquid when trying to execute the stop-loss. A put option does not need to worry about price impact, whereas a stop-loss does. Finally, a stop-loss ensures that an investor sells as soon as a security price hits a worst-case scenario, ensuring unfavorable market timing.

## 2. LTCM Risk Decomposition

### 1.

#### a)

```python
perf_metrics = getPerformanceMetrics(retsx[['GrossLTCM','NetLTCM','SPY']])
display(perf_metrics[['mean', 'std', 'sharpe_ratio']].style.format('{:,.4f}'))
```

<style  type="text/css" >
</style><table id="T_07cef_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >mean</th>        <th class="col_heading level0 col1" >std</th>        <th class="col_heading level0 col2" >sharpe_ratio</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_07cef_level0_row0" class="row_heading level0 row0" >GrossLTCM</th>
                        <td id="T_07cef_row0_col0" class="data row0 col0" >0.2421</td>
                        <td id="T_07cef_row0_col1" class="data row0 col1" >0.1362</td>
                        <td id="T_07cef_row0_col2" class="data row0 col2" >1.7769</td>
            </tr>
            <tr>
                        <th id="T_07cef_level0_row1" class="row_heading level0 row1" >NetLTCM</th>
                        <td id="T_07cef_row1_col0" class="data row1 col0" >0.1554</td>
                        <td id="T_07cef_row1_col1" class="data row1 col1" >0.1118</td>
                        <td id="T_07cef_row1_col2" class="data row1 col2" >1.3901</td>
            </tr>
            <tr>
                        <th id="T_07cef_level0_row2" class="row_heading level0 row2" >SPY</th>
                        <td id="T_07cef_row2_col0" class="data row2 col0" >0.1738</td>
                        <td id="T_07cef_row2_col1" class="data row2 col1" >0.1123</td>
                        <td id="T_07cef_row2_col2" class="data row2 col2" >1.5479</td>
            </tr>
    </tbody></table>

#### b)

```python
display(perf_metrics[['skewness', 'excess_kurtosis', 'VaR05']].style.format('{:,.4f}'))
```

<style  type="text/css" >
</style><table id="T_8cf63_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >skewness</th>        <th class="col_heading level0 col1" >excess_kurtosis</th>        <th class="col_heading level0 col2" >VaR05</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_8cf63_level0_row0" class="row_heading level0 row0" >GrossLTCM</th>
                        <td id="T_8cf63_row0_col0" class="data row0 col0" >-0.2877</td>
                        <td id="T_8cf63_row0_col1" class="data row0 col1" >-1.4134</td>
                        <td id="T_8cf63_row0_col2" class="data row0 col2" >-0.0304</td>
            </tr>
            <tr>
                        <th id="T_8cf63_level0_row1" class="row_heading level0 row1" >NetLTCM</th>
                        <td id="T_8cf63_row1_col0" class="data row1 col0" >-0.8102</td>
                        <td id="T_8cf63_row1_col1" class="data row1 col1" >-0.0731</td>
                        <td id="T_8cf63_row1_col2" class="data row1 col2" >-0.0264</td>
            </tr>
            <tr>
                        <th id="T_8cf63_level0_row2" class="row_heading level0 row2" >SPY</th>
                        <td id="T_8cf63_row2_col0" class="data row2 col0" >-0.4335</td>
                        <td id="T_8cf63_row2_col1" class="data row2 col1" >-3.3620</td>
                        <td id="T_8cf63_row2_col2" class="data row2 col2" >-0.0464</td>
            </tr>
    </tbody></table>

#### c)

Refer to the summary stats shown above:

- For gross returns on the LTCM strategy, Sharpe is very high relative to SPY. Volatility is sized similarly to SPY, and minimum return is not too bad.
- However, for net returns, we see a lower Sharpe than SPY due to a lower mean return.

We note that there might be a few things to consider:

- We need to test whether the LTCM strategy passively replicates the market, even though it is not intented for that purpose.
- Net returns for LTCM shows very high tail risk compared to the SPY, which points to the fact that their costs maybe higher than expected

### 2.

#### a)

```python
exog = sm.add_constant(retsx['SPY'])
endog = retsx['NetLTCM']

model = sm.OLS(endog, exog).fit()
alpha = model.params[0]
beta = model.params[1]
r2 = model.rsquared

print('Alpha: {:,.4f}'.format(alpha*12))
print('Market Beta: {:,.4f}'.format(beta))
print('R-squared: {:,.4f}'.format(r2))
```

    Alpha: 0.1315
    Market Beta: 0.1371
    R-squared: 0.0190

### b)

This strategy is not a 'closet indexer' as it has a low correlation to the market. We can see that the regression above gives small $R^2$ value.

#### c)

Surely, LTCM delivers a significant excess return over the market, given a high annualized alpha of 13%

### 3.

#### a)

```python
exog_quad = exog.copy()
exog_quad['SPY SQ'] = exog_quad['SPY']**2
quad_model = sm.OLS(endog, exog_quad).fit()

alpha = quad_model.params[0]
beta_1 = quad_model.params[1]
beta_2 = quad_model.params[2]
r2 = quad_model.rsquared


print('Alpha: {:,.4f}'.format(alpha*12))
print('Beta for Market Factor: {:,.4f}'.format(beta_1))
print('Beta for Quadratic Market Factor: {:,.4f}'.format(beta_2))
print('R-squared: {:,.4f}'.format(r2))
```

    Alpha: 0.1550
    Beta for Market Factor: 0.1669
    Beta for Quadratic Market Factor: -1.9267
    R-squared: 0.0243

### b)

Add the quadratic market factor doesn't improve the fit of the regression by a lot.

### c)

Since the beta for quadratic market factor is negative, the strategy returns are lower when market returns are large. This causes the return payoff to have a negative convexity. Hence we can say that the strategy is short the market options.

### d)

Given the short position in market options, the strategy consequently has negative exposure to market volatility.

### 4. 

#### a)

```python
assym_exog = exog.copy()
assym_exog['up factor'] = (assym_quad['SPY'] - 0.03).clip(0)
assym_exog['down factor'] = (-0.03 - assym_quad['SPY']).clip(0)

assym_model = sm.OLS(endog, assym_exog).fit()

alpha = assym_model.params[0]
beta = assym_model.params[1]
beta_up = assym_model.params[2]
beta_down = assym_model.params[3]
r2 = assym_model.rsquared


print('Alpha: {:,.4f}'.format(alpha*12))
print('Beta for Market Factor: {:,.4f}'.format(beta))
print('Beta for Market Up Factor: {:,.4f}'.format(beta_up))
print('Beta for Market Down Factor: {:,.4f}'.format(beta_down))
print('R-squared: {:,.4f}'.format(r2))
```

    Alpha: 0.1012
    Beta for Market Factor: 0.4666
    Beta for Market Up Factor: -0.7821
    Beta for Market Down Factor: 1.2896
    R-squared: 0.0555

### b)

LTCM is short the call-like factor and long the put-like factor

#### c)

Since the beta is much larger on the down factor, the LTCM strategy is much more impacted by down movements in the market.

### d)

The negative exposure is driven more by LTCM strategy being short the market upside (call-like factor)

## 3. The FX Carry Trade

```python
fxspot = pd.read_excel('fx_carry_data.xlsx',sheet_name=2,index_col='DATE')
rf = pd.read_excel('fx_carry_data.xlsx',sheet_name=1,index_col='DATE')

logfxspot = np.log(fxspot)
logrf = np.log(1+rf).shift()
display(logrf.head())
display(logfxspot.head())
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
	  <th>USD1M</th>
	  <th>GBP1M</th>
	  <th>EUR1M</th>
	  <th>CHF1M</th>
	  <th>JPY1M</th>
	</tr>
	<tr>
	  <th>DATE</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1999-01-31</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>1999-02-28</th>
	  <td>0.0041</td>
	  <td>0.0049</td>
	  <td>0.0026</td>
	  <td>0.0010</td>
	  <td>3.3458e-04</td>
	</tr>
	<tr>
	  <th>1999-03-31</th>
	  <td>0.0041</td>
	  <td>0.0046</td>
	  <td>0.0026</td>
	  <td>0.0010</td>
	  <td>2.3226e-04</td>
	</tr>
	<tr>
	  <th>1999-04-30</th>
	  <td>0.0041</td>
	  <td>0.0044</td>
	  <td>0.0025</td>
	  <td>0.0010</td>
	  <td>1.4270e-04</td>
	</tr>
	<tr>
	  <th>1999-05-31</th>
	  <td>0.0041</td>
	  <td>0.0044</td>
	  <td>0.0021</td>
	  <td>0.0008</td>
	  <td>9.8953e-05</td>
	</tr>
  </tbody>
</table>
</div>

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
	  <th>USUK</th>
	  <th>USEU</th>
	  <th>USSZ</th>
	  <th>USJP</th>
	</tr>
	<tr>
	  <th>DATE</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1999-01-31</th>
	  <td>0.4982</td>
	  <td>0.1285</td>
	  <td>-0.3484</td>
	  <td>-4.7536</td>
	</tr>
	<tr>
	  <th>1999-02-28</th>
	  <td>0.4717</td>
	  <td>0.0949</td>
	  <td>-0.3712</td>
	  <td>-4.7766</td>
	</tr>
	<tr>
	  <th>1999-03-31</th>
	  <td>0.4787</td>
	  <td>0.0777</td>
	  <td>-0.3904</td>
	  <td>-4.7743</td>
	</tr>
	<tr>
	  <th>1999-04-30</th>
	  <td>0.4753</td>
	  <td>0.0549</td>
	  <td>-0.4225</td>
	  <td>-4.7827</td>
	</tr>
	<tr>
	  <th>1999-05-31</th>
	  <td>0.4713</td>
	  <td>0.0413</td>
	  <td>-0.4240</td>
	  <td>-4.7948</td>
	</tr>
  </tbody>
</table>
</div>

```python
excesslogfxcarry = pd.DataFrame(index=logfxspot.index)
excesslogfxcarry['USUK'] = logfxspot.diff().USUK+logrf.GBP1M-logrf.USD1M
excesslogfxcarry['USEU'] = logfxspot.diff().USEU+logrf.EUR1M-logrf.USD1M
excesslogfxcarry['USSZ'] = logfxspot.diff().USSZ+logrf.CHF1M-logrf.USD1M
excesslogfxcarry['USJP'] = logfxspot.diff().USJP+logrf.JPY1M-logrf.USD1M
excesslogfxcarry = excesslogfxcarry.dropna()
excesslogfxcarry.head()
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
	  <th>USUK</th>
	  <th>USEU</th>
	  <th>USSZ</th>
	  <th>USJP</th>
	</tr>
	<tr>
	  <th>DATE</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1999-02-28</th>
	  <td>-0.0257</td>
	  <td>-0.0351</td>
	  <td>-0.0259</td>
	  <td>-0.0268</td>
	</tr>
	<tr>
	  <th>1999-03-31</th>
	  <td>0.0075</td>
	  <td>-0.0187</td>
	  <td>-0.0222</td>
	  <td>-0.0016</td>
	</tr>
	<tr>
	  <th>1999-04-30</th>
	  <td>-0.0031</td>
	  <td>-0.0245</td>
	  <td>-0.0352</td>
	  <td>-0.0124</td>
	</tr>
	<tr>
	  <th>1999-05-31</th>
	  <td>-0.0037</td>
	  <td>-0.0155</td>
	  <td>-0.0048</td>
	  <td>-0.0160</td>
	</tr>
	<tr>
	  <th>1999-06-30</th>
	  <td>-0.0157</td>
	  <td>-0.0128</td>
	  <td>-0.0211</td>
	  <td>-0.0045</td>
	</tr>
  </tbody>
</table>
</div>

### 1.

```python
fx_perf = getPerformanceMetrics(excesslogfxcarry)
display(fx_perf[['mean', 'std', 'sharpe_ratio']])
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
	  <th>mean</th>
	  <th>std</th>
	  <th>sharpe_ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>USUK</th>
	  <td>-0.0035</td>
	  <td>0.0863</td>
	  <td>-0.0406</td>
	</tr>
	<tr>
	  <th>USEU</th>
	  <td>-0.0044</td>
	  <td>0.0947</td>
	  <td>-0.0459</td>
	</tr>
	<tr>
	  <th>USSZ</th>
	  <td>0.0043</td>
	  <td>0.0988</td>
	  <td>0.0437</td>
	</tr>
	<tr>
	  <th>USJP</th>
	  <td>-0.0174</td>
	  <td>0.0915</td>
	  <td>-0.1903</td>
	</tr>
  </tbody>
</table>
</div>

We see very small returns across the board. However, USSZ is the only currency pair which offers a positive sharpe ratio. Strategies with other currencies have lower mean returns. The vols across currencies are comparable as well.

### 2.

#### a)

Not really, much of the returns are zero or very close to zero. This is in favour of UIP which says changes in exchange rates are predicted by differences in interest rates.

#### b)

We can construct a trade in which we are long USD and short JPY. Such a trade would earn a mean annual return of 1.74% and produce a Sharpe of 0.19

#### c)

Long positions in UK, EU and JP earned negative returns

### 3.

```python
USD_CCY = pd.DataFrame(index=logfxspot.index)
USD_CCY['USUK'] = logrf.USD1M-logrf.GBP1M
USD_CCY['USEU'] = logrf.USD1M-logrf.EUR1M
USD_CCY['USSZ'] = logrf.USD1M-logrf.CHF1M
USD_CCY['USJP'] = logrf.USD1M-logrf.JPY1M
logfxret = logfxspot.diff()

USD_CCY.dropna(inplace = True)
logfxret.dropna(inplace = True)
```

#### a)

```python
reg_results = pd.DataFrame(columns = ['USUK', 'USEU', 'USSZ', 'USJP'], index = ['Alpha', 'Beta', 'R-Squared'])


for i in reg_results.columns:
    
    exog = sm.add_constant(USD_CCY[i])
    endog = logfxret[i]
    model = sm.OLS(endog, exog).fit()
    
    reg_results[i] = [model.params[0] * 12, model.params[1], model.rsquared]
    
    
display(reg_results)
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
	  <th>USUK</th>
	  <th>USEU</th>
	  <th>USSZ</th>
	  <th>USJP</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Alpha</th>
	  <td>-0.0059</td>
	  <td>0.0070</td>
	  <td>0.0436</td>
	  <td>-0.0060</td>
	</tr>
	<tr>
	  <th>Beta</th>
	  <td>0.4858</td>
	  <td>-1.2564</td>
	  <td>-1.6466</td>
	  <td>0.3715</td>
	</tr>
	<tr>
	  <th>R-Squared</th>
	  <td>0.0004</td>
	  <td>0.0026</td>
	  <td>0.0039</td>
	  <td>0.0005</td>
	</tr>
  </tbody>
</table>
</div>

#### b)

Look at whether the betas are positive or negative.

If the regressor (USD minus foreign risk-free rate) goes DOWN, then we expect

- decreased UK and JP relative to US.
- increased EU and SZ relative to US. (That is, the expected FX growth is higher.)

Thus, if UK risk-free rate increases relative to US risk-free rate, we expect USD will appreciate.

- This means FX growth is partially offsetting the interest-rate differential. But not fully. Beta is positive, but less than one.

For EU and SZ,

- FX growth is exacerbating the returns from the interest rate differentials. Beta is negative, so in a sense, investors expect to gain twice: immediately from the risk-free rate differential, and again from the FX movement at the close of the position.

### 4.

```python
USUK_pred = (reg_results['USUK']['Alpha']/12) + (reg_results['USUK']['Beta'] - 1)*USD_CCY['USUK']
USEU_pred = (reg_results['USEU']['Alpha']/12) + (reg_results['USEU']['Beta'] - 1)*USD_CCY['USEU']
USSZ_pred = (reg_results['USSZ']['Alpha']/12) + (reg_results['USSZ']['Beta'] - 1)*USD_CCY['USSZ']
USJP_pred = (reg_results['USJP']['Alpha']/12) + (reg_results['USJP']['Beta'] - 1)*USD_CCY['USJP']
```

#### a)

```python
print('Expected USUK > 0 : {:,.2%} '.format(sum(USUK_pred > 0)/len(USUK_pred)))
print('Expected USEU > 0 : {:,.2%} '.format(sum(USEU_pred > 0)/len(USUK_pred)))
print('Expected USSZ > 0 : {:,.2%} '.format(sum(USSZ_pred > 0)/len(USUK_pred)))
print('Expected USJP > 0 : {:,.2%} '.format(sum(USJP_pred > 0)/len(USUK_pred)))
```

    Expected USUK > 0 : 23.81% 
    Expected USEU > 0 : 50.18% 
    Expected USSZ > 0 : 63.00% 
    Expected USJP > 0 : 0.00% 

##### b)

FX Risk Premium is most consistently positive for JP and UK. FX Risk Premium goes negative the most for EU and SZ

#### c)

Though the predictability of FX risk premia is questionable, a potential trading strategy could be constructed by using the forecast from the UIP regressions.

We can also look at this strategy as one of convergence trades. Since most often these strategies return ar very small returns, periods when these strategies do return abnormal returns could present potential trade oppurtunities.

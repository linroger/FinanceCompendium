---
title: Homework 8
parent_directory: FINM Markets Foundation
formatted: 2025-12-20 06:58:00 PM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - ltcm case study
  - hedge fund analysis
secondary_tags:
  - convergence trading
  - funding risk management
  - leverage risk assessment
  - risk decomposition
cssclasses: academia
---

# Homework 8
## Mark Hendricks
## 2022

## 1. LTCM

## 1.1 
### Describe LTCM's investment strategy with regard to the following aspects:
- Securities traded
- Trading frequency
- Skewness (Do they seek many small wins or a few big hits?)
- Forecasting (What is behind their selection of trades?)

#### Solution: 
- LTCM traded across a wide range of securities. They are heavily involved in fixed income and credit, and they also have sizeable positions in equities. In all these asset classes, they trade a large number of securities, across global markets.
- LTCM's trading frequencies vary given that they house a wide range of strategies. Their largest bucket, the convergence trades, typically take weeks and months to converge. Overall, they are something of a medium-term frequency. Largely, they are not trying to arbitrage intraday movements, nor are they making long-term directional bets.
- LTCM largely is trying to pick up small premia in the convergence trades, which limits the upside of any individual trade, and leaves it substantial downside, given all the leverage. Of course, aggregating all their trades together can lead to positive skewness if they are properly diversified. But we would expect that their typical trade has a small positive mean with substantial negative skewness.
- For most their trades, LTCM is not making directional forecasts. Rather, they are trading spreads and pairs, forecasting relative convergence rather than absolute levels. In this sense, they do not rely on sophisticated forecasting models of the overall market but rather rely on models to forecast the size and speed of relative convergence in particular markets.

## 1.2
### What are LTCM's biggest advantages over its competitors?

#### Solution:

Several advantages.

- Efficient financing. LTCM got very favorable terms on all financing—sometimes even zero haircut! Typically had small, if any, outlay.</li>
- Fund size. Have market power even in the large market of institutional wholesale.</li>
- Liquidity. LTCM has in place many mechanisms to ensure liquidity.</li>
- Long-term horizon. In financing and assessing trades, LTCM takes a relatively long-term view.
- Hedged. LTCM avoids taking too much default risk or explicit directional bets.

Then again, LTCM went bust in Aug. 1998, so maybe these advantages were not as strong as it

seemed!

## 1.3
### The case discusses four types of funding risk facing LTCM:
- collateral haircuts
- repo maturity
- equity redemption
- loan access
The case discusses specific ways in which LTCM manages each of these risks. Briefly discuss
them.

#### Solution:

The case discusses steps LTCM took to manage four types of funding risks.

- Collateral haircuts. For most trades, LTCM obtains 100% financing on a fully collateralized
basis. Furthermore, LTCM stress tests the haircuts across its asset classes.
- Repo. LTCM goes against the norm by entering into relatively long-maturity repo. While much of it is overnight, LTCM uses contracts that typically have maturity of 6-12 months. Furthermore, LTCM manages their aggregate repo maturity.
- Equity redemption. The firm is highly levered, so equity funding risk is especially important. LTCM restricts redemptions of equity year by year. The restriction is particularly strong in that unredeemed money is re-locked.
They also spread the redemption windows across the year to ensure there is never a possibility of immediate withdrawal of a large portion of equity.
- For debt funding, LTCM negotiated a revolving loan that has no Material Adverse Change clause. Thus, the availability of debt funding is not so highly correlated with fund performance.

## 1.4
### LTCM is largely in the business of selling liquidity and volatility. Describe how LTCM accounts for liquidity risk in their quantitative measurements.

#### Solution:

LTCM attempts to account for liquidity risk quantitatively by adjusting security correlations. For short-term horizons, LTCM assumes positive correlation between all trade categories. Even if their net exposure to a strategy flips sides, they still assume positive correlation to the new net position.

Given the efforts of LTCM to hedge out obvious market risks, there are many strategies which would seem to have zero correlation. However, LTCM feels that liquidity concerns can cause the effective trading to be positively correlated.

## 1.5
### Is leverage risk currently a concern for LTCM?

#### Solution:

It would seem that leverage is not particularly dangerous at the moment. The fund's volatility is relatively low, its VaR is relatively low, nor is it particularly high relative to the rest of the industry.

Moreover, the firm actively manages its funding risk which theoretically means it should be able to handle the natural risks of high leverage.

At the time of the case, the firm is trying to determine whether to further increase leverage. Subsequently, at the end of 1997 the fund returned about a third of its 7.5 billion equity capital to investors.

Of course, less than a year later, the fund blew up, but from the time of the case it's hard to see the leverage risk.

## 1.6
### Many strategies of LTCM rely on converging spreads. LTCM feels that these are almost win/win situations because of the fact that if the spread converges, they make money. If it diverges, the trade becomes even more attractive, as convergence is still expected at a future date.

#### Solution:

What is the risk in these convergence trades?

Solution: About a year after the time of the case, the fund loses most of its value due to non-converging trades. So clearly there is some risk!

Positions are subject to liquidity risk. If market liquidity dries up or the markets become segmented, the divergent spreads can persist for a long time. This indeed happens later to LTCM. The trades that get them in trouble ultimately pay off, but not before LTCM blows up.

LTCM believes it can exit these convergence trades if they become too unprofitable. However, a stop-loss order is not the same as a put option. If the price jumps discontinuously through the stop-loss, then it is ineffective. Or a market may be paralyzed/illiquid when trying to execute the stop-loss. A put option does not need to worry about price impact, whereas a stop-loss does. Finally, a stop-loss ensures that an investor sells as soon as a security price hits a worst-case scenario, ensuring unfavorable market timing.

# 2. LTCM Risk Decomposition

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

pd.set_option("display.precision", 4)

import sys
sys.path.insert(0, '../cmds')
from portfolio import *
```

```python
DATAPATH_ltcm = '../data/ltcm_exhibits_data.xlsx'
SHEET = 'Exhibit 2'
ltcm_raw = pd.read_excel(DATAPATH_ltcm,sheet_name=SHEET)
ltcm_raw.columns = ['date','AUM','Gross','Net','TRInet','drop']
ltcm_raw = ltcm_raw.set_index('date').drop(columns=['drop'])
ltcm_raw = ltcm_raw.loc[ltcm_raw.index.dropna()]
ltcm_raw.dropna(axis=0,how='all',inplace=True)
ltcm_raw.tail()
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
	  <th>AUM</th>
	  <th>Gross</th>
	  <th>Net</th>
	  <th>TRInet</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1998-03-01 00:00:00</th>
	  <td>4.7</td>
	  <td>-0.003</td>
	  <td>-0.003</td>
	  <td>2.8</td>
	</tr>
	<tr>
	  <th>1998-04-01 00:00:00</th>
	  <td>4.9</td>
	  <td>0.027</td>
	  <td>0.019</td>
	  <td>2.85</td>
	</tr>
	<tr>
	  <th>1998-05-01 00:00:00</th>
	  <td>4.5</td>
	  <td>-0.067</td>
	  <td>-0.064</td>
	  <td>2.67</td>
	</tr>
	<tr>
	  <th>1998-06-01 00:00:00</th>
	  <td>4.1</td>
	  <td>-0.101</td>
	  <td>-0.101</td>
	  <td>2.4</td>
	</tr>
	<tr>
	  <th>1998-07-01 00:00:00</th>
	  <td>4.1</td>
	  <td>0.005</td>
	  <td>0</td>
	  <td>2.4</td>
	</tr>
  </tbody>
</table>
</div>

## Timing of LTCM Data

The Exhibit data is coded into Excel poorly. It is listed as monthly data, but Excel automatically converts that to the first day of the month. The data corresponds to the End-of-Month!

For instance, LTCM chose to return \$2.7bn of capital on Dec 31, 1997. The drop in AUM is coded to Dec 1, 1997 when the casewriters simply intended to code it to Dec 1997, meaning the end-of-december.

Similarly, LTCM saw large drawdowns in May and June 1998, but these are coded to be May 1 and June 1, when they should be coded as the end-of-month date.

Thus, we need to shift these dates to end-of-month. If we instead make the May 1 date correspond to April 30 returns, we will get incorrect correlations and regression results.

```python
ltcm_raw.index = pd.to_datetime(ltcm_raw.index)

ltcm = ltcm_raw.resample('M').last()
ltcm.tail()
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
	  <th>AUM</th>
	  <th>Gross</th>
	  <th>Net</th>
	  <th>TRInet</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1998-03-31</th>
	  <td>4.7</td>
	  <td>-0.003</td>
	  <td>-0.003</td>
	  <td>2.80</td>
	</tr>
	<tr>
	  <th>1998-04-30</th>
	  <td>4.9</td>
	  <td>0.027</td>
	  <td>0.019</td>
	  <td>2.85</td>
	</tr>
	<tr>
	  <th>1998-05-31</th>
	  <td>4.5</td>
	  <td>-0.067</td>
	  <td>-0.064</td>
	  <td>2.67</td>
	</tr>
	<tr>
	  <th>1998-06-30</th>
	  <td>4.1</td>
	  <td>-0.101</td>
	  <td>-0.101</td>
	  <td>2.40</td>
	</tr>
	<tr>
	  <th>1998-07-31</th>
	  <td>4.1</td>
	  <td>0.005</td>
	  <td>0.000</td>
	  <td>2.40</td>
	</tr>
  </tbody>
</table>
</div>

# Optional: Add in August 1998?

August 1998 is when LTCM was shocked with massive losses. These were so large that investors then pulled their money in September, to the point that a reorganization of LTCM was implemented in late September.

- The return for August 1998 was roughly -45\%
- And SPY was also down massively in that month.

Try setting `INCLUDE_AUGUST` to `True` to see how different the statistical results below are when this disaster month is included!

# Optional: Evaluate it through December 1997

- This corresponds closely to the time of the case, when they are deciding whether to return capital.
- You will see that the returns through that time are incredible, with hardly any losses.
- 1998 has some bad months before the crash in August.

```python
INCLUDE_AUGUST98 = False
STOP_DEC97 = False

if INCLUDE_AUGUST98:
    DATE_JULY = pd.to_datetime('1998-07-31')
    DATE_AUGUST = pd.to_datetime('1998-08-31')
    LOSS = -1.85
    
    ltcm.loc[DATE_AUGUST,'Gross'] = LOSS/ltcm.loc[DATE_JULY,'AUM']
    # assuming that the netting of this loss is negligible given already down YTD
    ltcm.loc[DATE_AUGUST,'Net'] = LOSS/ltcm.loc[DATE_JULY,'AUM']
    
    ltcm.loc[DATE_AUGUST,'AUM'] = ltcm.loc[DATE_JULY,'AUM'] + LOSS
    ltcm.loc[DATE_AUGUST,'TRInet'] = ltcm.loc[DATE_JULY,'TRInet'] * (1+ltcm.loc[DATE_AUGUST,'Net'])
    display(ltcm.tail())

elif STOP_DEC97:
    ltcm = ltcm.loc[:'1997',:]
```

## Market Data

Get SPY and Risk-free data.

Align it to the LTCM data, and combine into a dataframe of returns

```python
DATAPATH_GMO = '../data/gmo_analysis_data.xlsx'
SHEET = 'returns (total)'
mkt = pd.read_excel(DATAPATH_GMO,sheet_name=SHEET).set_index('Date')[['SPY']]
SHEET = 'risk-free rate'
mkt['RF'] = pd.read_excel(DATAPATH_GMO,sheet_name=SHEET).set_index('Date')[['US3M']]

rets = pd.concat([mkt[['SPY','RF']], ltcm[['Gross','Net']]], join='inner', axis=1)
rets.tail()
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
	  <th>RF</th>
	  <th>Gross</th>
	  <th>Net</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1998-03-31</th>
	  <td>0.0488</td>
	  <td>0.0043</td>
	  <td>-0.003</td>
	  <td>-0.003</td>
	</tr>
	<tr>
	  <th>1998-04-30</th>
	  <td>0.0128</td>
	  <td>0.0042</td>
	  <td>0.027</td>
	  <td>0.019</td>
	</tr>
	<tr>
	  <th>1998-05-31</th>
	  <td>-0.0208</td>
	  <td>0.0042</td>
	  <td>-0.067</td>
	  <td>-0.064</td>
	</tr>
	<tr>
	  <th>1998-06-30</th>
	  <td>0.0426</td>
	  <td>0.0042</td>
	  <td>-0.101</td>
	  <td>-0.101</td>
	</tr>
	<tr>
	  <th>1998-07-31</th>
	  <td>-0.0135</td>
	  <td>0.0042</td>
	  <td>0.005</td>
	  <td>0.000</td>
	</tr>
  </tbody>
</table>
</div>

# 2.1 Summary Stats

The homework was not explicit in whether you should calculate these summary stats using excess returns or total returns. Given that it requires excess returns for 2.2-2.4, we convert to excess returns here.

```python
retsx = rets.subtract(rets['RF'],axis=0).drop(columns=['RF'])
display(performanceMetrics(retsx,annualization=12))
display(tailMetrics(retsx))
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
	  <th>SPY</th>
	  <td>0.1738</td>
	  <td>0.1123</td>
	  <td>1.5479</td>
	  <td>-0.0562</td>
	  <td>0.0749</td>
	</tr>
	<tr>
	  <th>Gross</th>
	  <td>0.2421</td>
	  <td>0.1362</td>
	  <td>1.7769</td>
	  <td>-0.1053</td>
	  <td>0.1123</td>
	</tr>
	<tr>
	  <th>Net</th>
	  <td>0.1554</td>
	  <td>0.1118</td>
	  <td>1.3901</td>
	  <td>-0.1053</td>
	  <td>0.0803</td>
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
	  <th>Skewness</th>
	  <th>Kurtosis</th>
	  <th>VaR (0.05)</th>
	  <th>CVaR (0.05)</th>
	  <th>Max Drawdown</th>
	  <th>Peak</th>
	  <th>Bottom</th>
	  <th>Recover</th>
	  <th>Duration (to Recover)</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>-0.4335</td>
	  <td>-0.3620</td>
	  <td>-0.0464</td>
	  <td>-0.0514</td>
	  <td>-0.0562</td>
	  <td>1997-07-31</td>
	  <td>1997-08-31</td>
	  <td>1997-12-31</td>
	  <td>153 days</td>
	</tr>
	<tr>
	  <th>Gross</th>
	  <td>-0.2877</td>
	  <td>1.5866</td>
	  <td>-0.0304</td>
	  <td>-0.0730</td>
	  <td>-0.1689</td>
	  <td>1998-04-30</td>
	  <td>1998-06-30</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>Net</th>
	  <td>-0.8102</td>
	  <td>2.9269</td>
	  <td>-0.0264</td>
	  <td>-0.0687</td>
	  <td>-0.1761</td>
	  <td>1997-12-31</td>
	  <td>1998-07-31</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

## The summary stats

The summary stats are great for the data in the exhibits, and even better if cut off at the end of 1997, at the time of the case.

- Sharpe is very high relative to what we usually see.
- Volatility is sized similarly to SPY, and minimum return is not too bad.

Still, note that 

- SPY does amazing during this period, 
- so LTCM's returns while fantastic, are not an outlier relative to SPY.
- In fact, if we include the 1998 data through July, the tail-risk statistics look worse for LTCM than for SPY.

If we include the August crash,

- All the performance looks bad relative to SPY, particularly the tail-risk.

The difference between Gross and Net is not too large.

- Obviously, the net returns are lower, but given how high LTCM returns are (especially through) 1997, the net returns still deliver a fantastic Sharpe and overall profile. Though one can note they are a bit lower than SPY.

# 2.2 Market Regression

```python
get_ols_metrics(retsx['SPY'],retsx,annualization=12).style.format('{:,.2%}'.format)
```

<style  type="text/css" >
</style><table id="T_fa4a8_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >alpha</th>        <th class="col_heading level0 col1" >SPY</th>        <th class="col_heading level0 col2" >r-squared</th>        <th class="col_heading level0 col3" >Treynor Ratio</th>        <th class="col_heading level0 col4" >Info Ratio</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_fa4a8_level0_row0" class="row_heading level0 row0" >SPY</th>
                        <td id="T_fa4a8_row0_col0" class="data row0 col0" >-0.00%</td>
                        <td id="T_fa4a8_row0_col1" class="data row0 col1" >100.00%</td>
                        <td id="T_fa4a8_row0_col2" class="data row0 col2" >100.00%</td>
                        <td id="T_fa4a8_row0_col3" class="data row0 col3" >17.38%</td>
                        <td id="T_fa4a8_row0_col4" class="data row0 col4" >nan%</td>
            </tr>
            <tr>
                        <th id="T_fa4a8_level0_row1" class="row_heading level0 row1" >Gross</th>
                        <td id="T_fa4a8_row1_col0" class="data row1 col0" >21.08%</td>
                        <td id="T_fa4a8_row1_col1" class="data row1 col1" >17.98%</td>
                        <td id="T_fa4a8_row1_col2" class="data row1 col2" >2.20%</td>
                        <td id="T_fa4a8_row1_col3" class="data row1 col3" >134.60%</td>
                        <td id="T_fa4a8_row1_col4" class="data row1 col4" >156.48%</td>
            </tr>
            <tr>
                        <th id="T_fa4a8_level0_row2" class="row_heading level0 row2" >Net</th>
                        <td id="T_fa4a8_row2_col0" class="data row2 col0" >13.15%</td>
                        <td id="T_fa4a8_row2_col1" class="data row2 col1" >13.71%</td>
                        <td id="T_fa4a8_row2_col2" class="data row2 col2" >1.90%</td>
                        <td id="T_fa4a8_row2_col3" class="data row2 col3" >113.31%</td>
                        <td id="T_fa4a8_row2_col4" class="data row2 col4" >118.81%</td>
            </tr>
    </tbody></table>

## The regression stats make LTCM look even better.

While the univariate stats like Sharpe Ratio were not particularly impressive relative to SPY, the regression results show that LTCM has very little correlation to SPY! Thus, these large returns are

- nearly all alpha, not beta
- generating a massive Information Ratio

Thus, this investment looks extremely attractive as an addition to equity-oriented portfolios.

## Optional: 

If August 1998 is included, the regression picks up substantial SPY correlation, making all the stats worse.

# 2.3 Quadratic Regression

```python
X = pd.concat([retsx[['SPY']],retsx[['SPY']]**2],join='inner',axis=1)
X.columns = ['SPY','SPY-squared']

table_quad = pd.DataFrame(index=retsx.columns, columns=['alpha']+list(X.columns)+['R-squared'])
for series in retsx.columns:
    mod = LinearRegression().fit(X,retsx[series])
    table_quad.loc[series,'alpha'] = mod.intercept_
    table_quad.loc[series,X.columns] = mod.coef_
    table_quad.loc[series,'R-squared'] = mod.score(X,retsx[series])

table_quad
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
	  <th>alpha</th>
	  <th>SPY</th>
	  <th>SPY-squared</th>
	  <th>R-squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>-0.0</td>
	  <td>1.0</td>
	  <td>-0.0</td>
	  <td>1.0</td>
	</tr>
	<tr>
	  <th>Gross</th>
	  <td>0.0202</td>
	  <td>0.2198</td>
	  <td>-2.5868</td>
	  <td>0.0285</td>
	</tr>
	<tr>
	  <th>Net</th>
	  <td>0.0129</td>
	  <td>0.1669</td>
	  <td>-1.9267</td>
	  <td>0.0243</td>
	</tr>
  </tbody>
</table>
</div>

## The Quadratic Regression
- does not add to the R-squared to a significant degree.
- Thus, quadratic movements of SPY are not significant in explaining LTCM variation
- To the degree it has quadratic exposure, it is negative. This indicates LTCM underperforms particularly large SPY movements (whether on the upside or downside).

## Optional
- With August 1998 included, the regression picks up massive negative exposure to the quadratic term, due to the severe underperformance of SPY's down month in August 1998. This alone raises the R-squared to a high level.

# 2.4 Asymmetric Regression

```python
STRIKE = .03
X = retsx[['SPY']].copy()
X['UP'] = (retsx[['SPY']]-STRIKE).clip(0)
X['DOWN'] = (-STRIKE - retsx[['SPY']]).clip(0)
X.tail()

table_asymmetric = pd.DataFrame(index=retsx.columns, columns=['alpha']+list(X.columns)+['R-squared'])
for series in retsx.columns:
    mod = LinearRegression().fit(X,retsx[series])
    table_asymmetric.loc[series,'alpha'] = mod.intercept_
    table_asymmetric.loc[series,X.columns] = mod.coef_
    table_asymmetric.loc[series,'R-squared'] = mod.score(X,retsx[series])

table_asymmetric
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
	  <th>alpha</th>
	  <th>SPY</th>
	  <th>UP</th>
	  <th>DOWN</th>
	  <th>R-squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SPY</th>
	  <td>-0.0</td>
	  <td>1.0</td>
	  <td>-0.0</td>
	  <td>-0.0</td>
	  <td>1.0</td>
	</tr>
	<tr>
	  <th>Gross</th>
	  <td>0.0145</td>
	  <td>0.6085</td>
	  <td>-1.0384</td>
	  <td>1.6325</td>
	  <td>0.0638</td>
	</tr>
	<tr>
	  <th>Net</th>
	  <td>0.0084</td>
	  <td>0.4666</td>
	  <td>-0.7821</td>
	  <td>1.2896</td>
	  <td>0.0555</td>
	</tr>
  </tbody>
</table>
</div>

## The Asymmetric regression
- again shows LTCM as having very little exposure to SPY, even with these nonlinear considerations. That is, the R-squared is still tiny.
- Though the coefficients are not significant, we can interpret the SPY UP coefficient as saying LTCM is underperforming large (positive) SPY returns. This is similar to what we learned from the quadratic regression.
- The SPY DOWN coefficient indicates LTCM overperforms large negative SPY movements. This differs from the Quadratic regression result, which could not distinguish asymmetry in the response to up and down movements.
- Still, the number of such UP and DOWN months is small, and the effect is statistically weak.

## Optional

But if we re-do this including the optional August 1998 data, the answer changes to show substantial negative DOWN exposure, meaning LTCM underperforms in a very down month (like Aug 1998!)

# 3. The FX Carry Trade

## Two Data Sources

The original data set for the homework, `fx_carry_data.xlsx`, reported the **annualized** risk-free rate. 

- The Homework instructions did not tell you to divide the risk-free rates by 12, to change them to monthly rates. While I think this should have been apparent, it is fine if you used the data in its annualized form--but your results will be **very** different, and very unrealistic.
- If you did make this adjustment, you just divided the risk-free rates by 12. Note that LIBOR rates are reported using simple compounding, so we are fine to just multiply the rate by 1/12. This will be a bit different than the true, compounded, return. For our purposes it is not a big deal.

If you would like a clean set of data, use `fx_carry_data_v2.xlsx`.

- It reports the risk-free rates in a monthly scaling.
- It also pulls the LIBOR data from 1-month LIBOR instead of the original 3-month LIBOR. Thus, this set is more appropriate for our one-month trade-horizon considerations.

```python
DATAPATH_FX = '../data/fx_carry_data.xlsx'
# DATAPATH_FX = '../data/fx_carry_data_v2.xlsx'

if 'v2' in DATAPATH_FX:
    USDRF = 'USD1M'
else:
    USDRF = 'USD3M'
```

```python
SHEET = 'fx rates'
fx = pd.read_excel(DATAPATH_FX, sheet_name=SHEET).set_index('DATE')

logFX = np.log(fx)
logFX
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
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2021-06-30</th>
	  <td>0.3225</td>
	  <td>0.1696</td>
	  <td>0.0776</td>
	  <td>-4.7100</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>0.3302</td>
	  <td>0.1709</td>
	  <td>0.0986</td>
	  <td>-4.6977</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>0.3182</td>
	  <td>0.1655</td>
	  <td>0.0876</td>
	  <td>-4.7009</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>0.2979</td>
	  <td>0.1464</td>
	  <td>0.0684</td>
	  <td>-4.7140</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>0.3138</td>
	  <td>0.1443</td>
	  <td>0.0872</td>
	  <td>-4.7365</td>
	</tr>
  </tbody>
</table>
<p>274 rows × 4 columns</p>
</div>

```python
SHEET = 'risk-free rates'

rf = pd.read_excel(DATAPATH_FX,sheet_name=SHEET).set_index('DATE')

logRF = np.log(rf+1)
logRFusd = logRF[[USDRF]]
logRF.drop(columns=[USDRF],inplace=True)

logRF
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
	  <th>GBP3M</th>
	  <th>EUR3M</th>
	  <th>CHF3M</th>
	  <th>JPY3M</th>
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
	  <td>0.0565</td>
	  <td>0.0303</td>
	  <td>0.0126</td>
	  <td>0.0048</td>
	</tr>
	<tr>
	  <th>1999-02-28</th>
	  <td>0.0532</td>
	  <td>0.0305</td>
	  <td>0.0125</td>
	  <td>0.0027</td>
	</tr>
	<tr>
	  <th>1999-03-31</th>
	  <td>0.0519</td>
	  <td>0.0292</td>
	  <td>0.0124</td>
	  <td>0.0019</td>
	</tr>
	<tr>
	  <th>1999-04-30</th>
	  <td>0.0519</td>
	  <td>0.0255</td>
	  <td>0.0099</td>
	  <td>0.0013</td>
	</tr>
	<tr>
	  <th>1999-05-31</th>
	  <td>0.0523</td>
	  <td>0.0255</td>
	  <td>0.0102</td>
	  <td>0.0009</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2021-06-30</th>
	  <td>0.0008</td>
	  <td>-0.0055</td>
	  <td>-0.0076</td>
	  <td>-0.0008</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>0.0007</td>
	  <td>-0.0056</td>
	  <td>-0.0076</td>
	  <td>-0.0010</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>0.0007</td>
	  <td>-0.0056</td>
	  <td>-0.0077</td>
	  <td>-0.0010</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>0.0008</td>
	  <td>-0.0057</td>
	  <td>-0.0077</td>
	  <td>-0.0008</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>0.0023</td>
	  <td>-0.0056</td>
	  <td>-0.0077</td>
	  <td>-0.0008</td>
	</tr>
  </tbody>
</table>
<p>274 rows × 4 columns</p>
</div>

Timing of the risk-free rate

- The data is defined such that the March value of the risk-free rate corresponds to the rate beginning in March and ending in April.
- In terms of the class notation, $r^{f,i}_{t,t+1}$ is reported at time $t$. (It is risk-free, so it is a rate from $t$ to $t+1$ but it is know at $t$.

## 3.1 The Static Carry Trade

Calculate excess log returns using,

$$\tilde{r}^i_{t+1} \equiv s^i_{t+1} - s^i_t + r^{f,i}_{t,t+1} - r^{f,\$}_{t,t+1}$$

For convenience, rewrite this as

$$\tilde{r}^i_{t+1} \equiv s^i_{t+1} - s^i_t - (r^{f,\$}_{t,t+1} - r^{f,i}_{t,t+1})$$

1. Build the spread in risk-free rates: $r^{f,\$}_{t,t+1} - r^{f,i}_{t,t+1}$.
- Lag this variable, so that the March-to-April value is stamped as April.

2. Build the FX growth rates: $ s^i_{t+1} - s^i_t$
- These are already stamped as April for the March-to-April FX growth.

Then the excess log return is simply the difference of the two objects.

```python
logRFspread = -logRF.subtract(logRFusd.values,axis=0)
logRFspread = logRFspread.shift(1)

logFXgrowth = logFX.diff(axis=0)

logRX = logFXgrowth - logRFspread.values
logRX
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
	  <th>1999-01-31</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>1999-02-28</th>
	  <td>-0.0184</td>
	  <td>-0.0519</td>
	  <td>-0.0587</td>
	  <td>-0.0667</td>
	</tr>
	<tr>
	  <th>1999-03-31</th>
	  <td>0.0112</td>
	  <td>-0.0357</td>
	  <td>-0.0556</td>
	  <td>-0.0440</td>
	</tr>
	<tr>
	  <th>1999-04-30</th>
	  <td>-0.0003</td>
	  <td>-0.0424</td>
	  <td>-0.0685</td>
	  <td>-0.0553</td>
	</tr>
	<tr>
	  <th>1999-05-31</th>
	  <td>-0.0008</td>
	  <td>-0.0367</td>
	  <td>-0.0403</td>
	  <td>-0.0594</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2021-06-30</th>
	  <td>-0.0278</td>
	  <td>-0.0356</td>
	  <td>-0.0371</td>
	  <td>-0.0133</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>0.0070</td>
	  <td>-0.0056</td>
	  <td>0.0119</td>
	  <td>0.0100</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>-0.0124</td>
	  <td>-0.0121</td>
	  <td>-0.0198</td>
	  <td>-0.0054</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>-0.0209</td>
	  <td>-0.0259</td>
	  <td>-0.0282</td>
	  <td>-0.0153</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>0.0154</td>
	  <td>-0.0091</td>
	  <td>0.0099</td>
	  <td>-0.0245</td>
	</tr>
  </tbody>
</table>
<p>274 rows × 4 columns</p>
</div>

### Understanding the two components of excess log returns

```python
logFXgrowth.plot(title='FX Growth', figsize=(10,5));
```

![png](output_32_0.png)

```python
logRFspread.plot(title='RF Spread (USD-Other)', figsize=(10,5));
```

![png](output_33_0.png)

```python
rx_components = logFXgrowth.mean().to_frame()
rx_components.columns=['FX effect']
rx_components['RF effect'] = -logRFspread.mean().values
rx_components['Total'] = rx_components.sum(axis=1)
rx_components *= 12
rx_components
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
	  <th>FX effect</th>
	  <th>RF effect</th>
	  <th>Total</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>USUK</th>
	  <td>-0.0081</td>
	  <td>0.0558</td>
	  <td>0.0477</td>
	</tr>
	<tr>
	  <th>USEU</th>
	  <td>0.0007</td>
	  <td>-0.0615</td>
	  <td>-0.0608</td>
	</tr>
	<tr>
	  <th>USSZ</th>
	  <td>0.0191</td>
	  <td>-0.1793</td>
	  <td>-0.1602</td>
	</tr>
	<tr>
	  <th>USJP</th>
	  <td>0.0008</td>
	  <td>-0.2230</td>
	  <td>-0.2223</td>
	</tr>
  </tbody>
</table>
</div>

### Performance Metrics

Remember these are log returns, not level returns. But the distinction is minor for the quantitative results here.

```python
performanceMetrics(logRX,annualization=12)
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
	  <th>USUK</th>
	  <td>0.0477</td>
	  <td>0.0954</td>
	  <td>0.5001</td>
	  <td>-0.0938</td>
	  <td>0.0923</td>
	</tr>
	<tr>
	  <th>USEU</th>
	  <td>-0.0608</td>
	  <td>0.1075</td>
	  <td>-0.5654</td>
	  <td>-0.0930</td>
	  <td>0.1080</td>
	</tr>
	<tr>
	  <th>USSZ</th>
	  <td>-0.1602</td>
	  <td>0.1103</td>
	  <td>-1.4522</td>
	  <td>-0.1216</td>
	  <td>0.1214</td>
	</tr>
	<tr>
	  <th>USJP</th>
	  <td>-0.2223</td>
	  <td>0.1103</td>
	  <td>-2.0152</td>
	  <td>-0.1144</td>
	  <td>0.0677</td>
	</tr>
  </tbody>
</table>
</div>

## 3.2 Implications for UIP

The results above are evidence against UIP, but not strong evidence.

- UIP implies that the mean excess return should be zero. The USD and JPY trade seems to have a mean excess return significantly different from zero.)
- The evidence from the other currencies is not clear. Their mean excess return is not exactly zero, but they are so close to zero that they may not be statistically significant.
- Note that UIP makes no implication about the volatility of these excess returns.

A long position in three of the currencies had negative mean excess (log) returns!

- Being long CHF would have delivered a small positive mean excess log return, but a poor Sharpe.
- The best trade would have been to be short JPY and long USD. This delivered a small but positive mean return and Sharpe.

## 3.3 Predicting FX

Run a forecasting regression for the log FX Growth, as implied by UIP.

- UIP implies that the interest rate spread is the optimal predictor of FX growth.
- Thus, it implies the forecasting beta should be 1.

```python
olstab = pd.DataFrame(index=logFXgrowth.columns, columns=['alpha','Beta','r-squared'])
for i, curncy in enumerate(logFXgrowth.columns):
    temp = get_ols_metrics(logRFspread.iloc[:,i],logFXgrowth.iloc[:,i],annualization=1).drop(columns=['Treynor Ratio','Info Ratio'])
    temp.rename(columns={logRFspread.columns[i]:'Beta'}, inplace=True)
    olstab.loc[curncy,:] = temp.values

olstab.T
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
	  <th>alpha</th>
	  <td>-0.0005</td>
	  <td>0.0006</td>
	  <td>0.0039</td>
	  <td>-0.0006</td>
	</tr>
	<tr>
	  <th>Beta</th>
	  <td>0.0319</td>
	  <td>-0.1127</td>
	  <td>-0.1521</td>
	  <td>0.0337</td>
	</tr>
	<tr>
	  <th>r-squared</th>
	  <td>0.0002</td>
	  <td>0.0031</td>
	  <td>0.0045</td>
	  <td>0.0006</td>
	</tr>
  </tbody>
</table>
</div>

### Predicting Appreciation or Depreciation?

Look at whether the betas are positive or negative.

If the regressor (USD minus foreign risk-free rate) goes DOWN, then we expect 

- decreased UK and JP relative to US.
- increased EU and SZ relative to US. (That is, the expected FX growth is higher.)

Thus, if UK risk-free rate increases relative to US risk-free rate, we expect USD will appreciate.

- This means FX growth is partially offsetting the interest-rate differential. But not fully. Beta is positive, but less than one.

For EU and SZ,

- this means that FX growth is exacerbating the returns from the interest rate differentials. Beta is negative, so in a sense, investors expect to gain twice: immediately from the risk-free rate differential, and again from the FX movement at the close of the position.

In fact, the statements above are just about the point estimates, and may not be statistically significant.

### Strength of Predictability?

These effects are extremely small! The R-squared stats for all four currencies are nearly 0. 

## 3.4 The Dynamic Carry Trade

```python
forecast = pd.DataFrame(columns=logFXgrowth.columns, index=logFXgrowth.index)
for i, curncy in enumerate(logFXgrowth.columns):
    forecast[curncy] = olstab.loc[curncy,'alpha'] + (olstab.loc[curncy,'Beta']-1) * logRFspread.iloc[:,i]

forecast
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
	  <th>1999-01-31</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>1999-02-28</th>
	  <td>0.0072</td>
	  <td>-0.0196</td>
	  <td>-0.0374</td>
	  <td>-0.0428</td>
	</tr>
	<tr>
	  <th>1999-03-31</th>
	  <td>0.0035</td>
	  <td>-0.0200</td>
	  <td>-0.0382</td>
	  <td>-0.0453</td>
	</tr>
	<tr>
	  <th>1999-04-30</th>
	  <td>0.0025</td>
	  <td>-0.0211</td>
	  <td>-0.0380</td>
	  <td>-0.0459</td>
	</tr>
	<tr>
	  <th>1999-05-31</th>
	  <td>0.0026</td>
	  <td>-0.0251</td>
	  <td>-0.0408</td>
	  <td>-0.0463</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2021-06-30</th>
	  <td>-0.0010</td>
	  <td>-0.0069</td>
	  <td>-0.0062</td>
	  <td>-0.0027</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>-0.0012</td>
	  <td>-0.0071</td>
	  <td>-0.0065</td>
	  <td>-0.0027</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>-0.0010</td>
	  <td>-0.0069</td>
	  <td>-0.0063</td>
	  <td>-0.0027</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>-0.0010</td>
	  <td>-0.0069</td>
	  <td>-0.0064</td>
	  <td>-0.0027</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>-0.0010</td>
	  <td>-0.0071</td>
	  <td>-0.0064</td>
	  <td>-0.0026</td>
	</tr>
  </tbody>
</table>
<p>274 rows × 4 columns</p>
</div>

### Forecast timing

We do not need to lag the forecasts with `.shift()` because we already use the lagged calculation of the interest rate spread. 

Thus, the regressor is lagged, and thus is generating forecasts stamped with the date of their targeted value, as desired.

```python
forecast_positive = ((forecast.dropna() > 0).sum() / forecast.dropna().shape[0]).to_frame().T
forecast_positive.index = ['fraction with positive forecastium']
forecast_positive
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
	  <th>fraction with positive forecastium</th>
	  <td>0.641</td>
	  <td>0.3883</td>
	  <td>0.2527</td>
	  <td>0.0037</td>
	</tr>
  </tbody>
</table>
</div>

```python
forecast.plot(title='Forecasted Excess Log Returns', figsize=(10,6));
```

![png](output_45_0.png)

#### Positive or Negative Forecasts?

Though the static carry-trade of section 3.3 found that UK and EU have negative mean excess (log) returns, the dynamic carry trade finds that the time-varying forecast is often positive.

For JP, the forecast is negative throughout the sample due to the much higher interest rate in USD not being offset by appreciation of the Yen to the USD.

#### Improving the Trade?

Just as in HW7, we can use forecasts of excess returns to construct trading positions, (weights,) which vary with the forecasts. The resulting trading strategy should be better than the static carry trade.

That is, we could time the magnitude and direction of the currency trades instead of being passively 100\% invested in a currency according to the evidence in 3.3.

It is analogous to timing the trading of SPY according to the Earnings-Price Ratio instead of being passively 100\% invested in SPY.

Of course, it is an open question as to whether this will work given the weak R-squared in-sample, let alone out-of-sample.

## 3.5 Building the Dynamic Trade

### This is an optional extension. You were not asked to do this in the homework.

Try implementing the forecasts with a simple proportional weighting of each forecast.

Similar to the implementation in HW#7.

```python
passive = logRX
forecast_baseline = logRX.expanding().mean().shift(1)

wts = 100 * forecast
forecast_returns = wts * passive.values
forecast_returns
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
	  <th>1999-01-31</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>1999-02-28</th>
	  <td>-1.3369e-02</td>
	  <td>0.1019</td>
	  <td>0.2198</td>
	  <td>0.2858</td>
	</tr>
	<tr>
	  <th>1999-03-31</th>
	  <td>3.8814e-03</td>
	  <td>0.0713</td>
	  <td>0.2124</td>
	  <td>0.1994</td>
	</tr>
	<tr>
	  <th>1999-04-30</th>
	  <td>-8.1541e-05</td>
	  <td>0.0895</td>
	  <td>0.2606</td>
	  <td>0.2540</td>
	</tr>
	<tr>
	  <th>1999-05-31</th>
	  <td>-2.0806e-04</td>
	  <td>0.0923</td>
	  <td>0.1646</td>
	  <td>0.2750</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2021-06-30</th>
	  <td>2.8118e-03</td>
	  <td>0.0246</td>
	  <td>0.0231</td>
	  <td>0.0036</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>-8.3325e-04</td>
	  <td>0.0040</td>
	  <td>-0.0078</td>
	  <td>-0.0027</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>1.1818e-03</td>
	  <td>0.0083</td>
	  <td>0.0124</td>
	  <td>0.0015</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>2.1338e-03</td>
	  <td>0.0180</td>
	  <td>0.0181</td>
	  <td>0.0041</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>-1.5326e-03</td>
	  <td>0.0065</td>
	  <td>-0.0064</td>
	  <td>0.0063</td>
	</tr>
  </tbody>
</table>
<p>274 rows × 4 columns</p>
</div>

### Check the performance

#### Also compare to the equally-weighted combination of the currency trades

All stats are **much** better than the static carry trade of Section 3.1.

- But this is an in-sample performance.
- Open question whether the OOS version can beat the static table of Section 3.1.

Note that currencies have low means and low vols, so in no case are we expecting to get equity-like return statistics.

```python
forecast_returns['Equally-Weighted'] = forecast_returns.mean(axis=1) * 10

performanceMetrics(forecast_returns,annualization=12)
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
	  <th>USUK</th>
	  <td>0.1843</td>
	  <td>0.1420</td>
	  <td>1.2982</td>
	  <td>-0.1537</td>
	  <td>0.1932</td>
	</tr>
	<tr>
	  <th>USEU</th>
	  <td>0.2957</td>
	  <td>0.1669</td>
	  <td>1.7712</td>
	  <td>-0.1266</td>
	  <td>0.1975</td>
	</tr>
	<tr>
	  <th>USSZ</th>
	  <td>0.4647</td>
	  <td>0.2475</td>
	  <td>1.8772</td>
	  <td>-0.1218</td>
	  <td>0.3420</td>
	</tr>
	<tr>
	  <th>USJP</th>
	  <td>0.7911</td>
	  <td>0.4294</td>
	  <td>1.8424</td>
	  <td>-0.1326</td>
	  <td>0.6402</td>
	</tr>
	<tr>
	  <th>Equally-Weighted</th>
	  <td>4.3393</td>
	  <td>1.7867</td>
	  <td>2.4287</td>
	  <td>-0.9173</td>
	  <td>2.6748</td>
	</tr>
  </tbody>
</table>
</div>

### How correlated are the active (forecasted) implementations to the passive returns?

- Not all that correlated.
- Note that we're interested in the magnitude, not the sign.
- The active version is shorting JP, so no surprise that the correlation is negative.

```python
corr_tab = forecast_returns.corrwith(passive,drop='missing',axis=0).to_frame().T
corr_tab.index = ['Corr. Passive to Active']
corr_tab
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
	  <th>Corr. Passive to Active</th>
	  <td>0.4629</td>
	  <td>-0.1479</td>
	  <td>-0.6763</td>
	  <td>-0.784</td>
	</tr>
  </tbody>
</table>
</div>


---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "**Homework 7**"
linter-yaml-title-alias: "**Homework 7**"
---

# **Homework 7**
## Mark Hendricks - Discussion

# 1. GMO

## 1.1. GMO's approach.

**(a) Why does GMO believe they can more easily predict long-run than short-run asset class
performance?**

**Solution**: They believe that in the long-run, the market is a "weighting machine", in that prices are
determined by economic fundamentals. Thus, as a macro-strategy fund, they believe their
economic info can predict long-run returns but that short-run returns can be influenced
substantially by behavioral trading.

**(b) What predicting variables does the case mention are used by GMO? Does this fit with the
goal of long-run forecasts?**

**Solution**: The case discusses price-earnings and price-dividend ratios in some detail. Given the high
serial correlation in these variables, it is no surprise that GMO think s their predictive
power is stronger over long-run horizons

**(c) How has this approach led to contrarian positions?**

**Solution**: GMO is, in a macro sense, a value investor. They invest in asset classes with low prices
per cash flow. This means that they are buying into depressed assets and missing out on
assets with large run-ups in price. The case mentions that as GMO missed the bull market
of the late 1990?s, they experienced large withdrawals before ultimately being proven right
in the crash of 2000-2001.

**(d) How does this approach raise business risk and managerial career risk?**

**Solution**:GMO's contrarian positions put it in some funding risk. If they deviate too much from
other funds during strong performance, clients may want to withdraw money. (Of course,
if GMO can survive, they can show strong performance when other funds are not doing
well.) This is exactly what happened in the late 1990's.
This same effect impacts managers, who may be rated as missing strong run-ups even if
their contrarian strategy will pay off in the long run.

## 1.2. The market environment.

**(a) We often estimate the market risk premium by looking at a large sample of historic data.
What reasons does the case give to be skeptical that the market risk premium will be as
high in the future as it has been over the past 50 years?**

**Solution**: The case shows that the price-dividend and price-earning ratios are much higher than their
historic average. This decades-long rise in prices-per-cashflow increased returns, but there
seems to be little room for further gains in P/D and P/E ratios.

**(b) In 2007, GMO forecasts real excess equity returns will be negative. What are the biggest
drivers of their pessimistic conditional forecast relative to the unconditional forecast. (See
Exhibit 9.)**

**Solution**: The two biggest drivers of the negative conditional forecast versus the unconditional forecast
are the expected decline in the dividend-price ratio and the decline in profit margin

**(c) In the 2011 forecast, what components has GMO revised most relative to 2007? Now**

**Solution**: Relative to 2007, the 2011 forecast revises expected bond returns down substantially (from
2% to 0.1%,) while revising expected dividend-price contraction to 0%.

## 1.3. Consider the asset class forecasts in Exhibit 1.

**(a) Which asset class did GMO estimate to have a negative 10-year return over 2002-2011?**

**Solution**: U.S. Equities is the only class with a negative outlook over that period.

**(b) Which asset classes substantially outperformed GMO's estimate over that time period?**

**Solution**: While many asset classes outperformed, foreign-government bonds seemed to outperform
the most.

**(c) Which asset classes substantially underperformed GMO's estimate over that time period?**

**Solution**: U.S. Real Estate and U.S. Tbills are the only classes which under-performed GMO's estimates.

## 1.4. Fund Performance.

**(a) In which asset class was GMWAX most heavily allocated throughout the majority of 1997-
2011?**

**Solution**: Based on the chart, through most of the period GMWAX was most heavily allocated in
U.S. Fixed Income.

**(b) Comment on the performance of GMWAX versus its benchmark. (No calculation needed;
simply comment on the comparison in the exhibits.)**

**Solution**: The fund has been quite successful relative to the benchmark, with returns almost double
the benchmark and a Sharpe ratio more than double. We don?t have a long enough series
of returns to do a more involved statistical analysis of the performance.

# 2 Analyzing GMO

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
data_file_path = '../data/gmo_analysis_data.xlsx'

rets = pd.read_excel(data_file_path,sheet_name='returns (total)')
rets.set_index('Date',inplace=True)

rf = pd.read_excel(data_file_path,sheet_name='risk-free rate')
rf.set_index('Date',inplace=True)

retsx = rets.subtract(rf['US3M'], axis=0)
retsx.dropna(axis=0,inplace=True)

retsx_pre = retsx.loc[:'2011',:]
retsx_post = retsx.loc['2012':,:]
```

```python
plotdata = (1+rets).cumprod()
fig = plt.figure(figsize=(10,5))
plt.plot(plotdata)
plt.legend(plotdata.columns)
plt.title('Cumulative Returns (Log Scale)')
plt.yscale('log')
```

![png](output_8_0.png)

## 1. Summary Stats

```python
df_all = performanceMetrics(retsx,annualization=12)
df_pre = performanceMetrics(retsx_pre,annualization=12)
df_post = performanceMetrics(retsx_post,annualization=12)

performance = pd.concat([df_pre,df_post,df_all], axis=0, keys=['1996-2011','2012-2021','1996-2021'])
performance
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
	  <th>Vol</th>
	  <th>Sharpe</th>
	  <th>Min</th>
	  <th>Max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th rowspan="2" valign="top">1996-2011</th>
	  <th>SPY</th>
	  <td>0.0400</td>
	  <td>0.1650</td>
	  <td>0.2424</td>
	  <td>-0.1656</td>
	  <td>0.1091</td>
	</tr>
	<tr>
	  <th>GMWAX</th>
	  <td>0.0158</td>
	  <td>0.1250</td>
	  <td>0.1266</td>
	  <td>-0.1492</td>
	  <td>0.0821</td>
	</tr>
	<tr>
	  <th rowspan="2" valign="top">2012-2021</th>
	  <th>SPY</th>
	  <td>0.1545</td>
	  <td>0.1311</td>
	  <td>1.1785</td>
	  <td>-0.1247</td>
	  <td>0.1269</td>
	</tr>
	<tr>
	  <th>GMWAX</th>
	  <td>0.0593</td>
	  <td>0.0853</td>
	  <td>0.6952</td>
	  <td>-0.1187</td>
	  <td>0.0713</td>
	</tr>
	<tr>
	  <th rowspan="2" valign="top">1996-2021</th>
	  <th>SPY</th>
	  <td>0.0850</td>
	  <td>0.1532</td>
	  <td>0.5552</td>
	  <td>-0.1656</td>
	  <td>0.1269</td>
	</tr>
	<tr>
	  <th>GMWAX</th>
	  <td>0.0329</td>
	  <td>0.1111</td>
	  <td>0.2964</td>
	  <td>-0.1492</td>
	  <td>0.0821</td>
	</tr>
  </tbody>
</table>
</div>

Notes:

- Sharpe of GMWAX is lower than SPY in the entire sample and in all subsamples.
- Mean returns of GMWAX are much lower than SPY, while vol is modestly lower.
- Since the case, (2012-2021,) GMWAX has severely underperformed SPY (roughly half the Sharpe.)

## 2. Tail Risk

See the table above for min returns and see the table below for other tail-risk stats.

Overall, the tail-risk statistics are broadly similar.

- Note that the vol of GMWAX is a bit smaller than that of SPY, so the tail-risk stats would be expected to be lower for GMWAX.
- Still, if we measure VaR and CVaR relative to vol, they are comparable.

Below the tail-risk is calculated on excess returns. (Maximum drawdown would make more sense measured as total returns, but the answers are similar.)

```python
df_pre = tailMetrics(retsx_pre)
df_post = tailMetrics(retsx_post)
df_all = tailMetrics(retsx)

drawdown = pd.concat([df_pre,df_post,df_all], axis=0, keys=['1996-2011','2012-2021','1996-2021'])
drawdown
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
	  <th rowspan="2" valign="top">1996-2011</th>
	  <th>SPY</th>
	  <td>-0.5009</td>
	  <td>0.5517</td>
	  <td>-0.0802</td>
	  <td>-0.1051</td>
	  <td>-0.5600</td>
	  <td>2000-03-31</td>
	  <td>2009-02-28</td>
	  <td>NaN</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th>GMWAX</th>
	  <td>-1.1693</td>
	  <td>3.0863</td>
	  <td>-0.0598</td>
	  <td>-0.0965</td>
	  <td>-0.4729</td>
	  <td>1997-09-30</td>
	  <td>2001-09-30</td>
	  <td>2011-04-30 00:00:00</td>
	  <td>NaT</td>
	</tr>
	<tr>
	  <th rowspan="2" valign="top">2012-2021</th>
	  <th>SPY</th>
	  <td>-0.5192</td>
	  <td>1.8591</td>
	  <td>-0.0602</td>
	  <td>-0.0821</td>
	  <td>-0.1963</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-07-31 00:00:00</td>
	  <td>213 days</td>
	</tr>
	<tr>
	  <th>GMWAX</th>
	  <td>-0.9420</td>
	  <td>4.8441</td>
	  <td>-0.0306</td>
	  <td>-0.0540</td>
	  <td>-0.1696</td>
	  <td>2019-12-31</td>
	  <td>2020-03-31</td>
	  <td>2020-11-30 00:00:00</td>
	  <td>335 days</td>
	</tr>
	<tr>
	  <th rowspan="2" valign="top">1996-2021</th>
	  <th>SPY</th>
	  <td>-0.5693</td>
	  <td>0.9944</td>
	  <td>-0.0754</td>
	  <td>-0.1003</td>
	  <td>-0.5600</td>
	  <td>2000-03-31</td>
	  <td>2009-02-28</td>
	  <td>2013-03-31 00:00:00</td>
	  <td>4748 days</td>
	</tr>
	<tr>
	  <th>GMWAX</th>
	  <td>-1.2239</td>
	  <td>4.0399</td>
	  <td>-0.0449</td>
	  <td>-0.0858</td>
	  <td>-0.4729</td>
	  <td>1997-09-30</td>
	  <td>2001-09-30</td>
	  <td>2011-04-30 00:00:00</td>
	  <td>4960 days</td>
	</tr>
  </tbody>
</table>
</div>

Even normalizing for difference in volatility:

- Tail risk is somewhat lower for GMWAX, as seen in Min, VaR, and CVaR in table above.

Max drawdown for GMWAX is…

- lower in every subsample, as seen in table below.
- longer in duration in every subsample.
- in the run of growth stocks (1997-2001) whereas for SPY it is the financial crisis (2000-2009)

## 3. Market Regressions

There is substantial market beta, but not so much to say it is essentially a market strategy.

- The beta is roughly 0.5 across all three samples.

Though not completely correlated to the market, it is not clear that the difference is adding value.

- The alpha is negative in both subsamples, but substantially worse post-case.
- The Information Ratio is negative in all subsamples, and it is substantially worse in the post-case.

```python
df_all = get_ols_metrics(retsx[['SPY']], retsx[['GMWAX']], annualization=12)
df_pre = get_ols_metrics(retsx_pre[['SPY']], retsx_pre[['GMWAX']], annualization=12)
df_post = get_ols_metrics(retsx_post[['SPY']], retsx_post[['GMWAX']], annualization=12)

mktreg = pd.concat([df_pre,df_post,df_all], axis=0, keys=['1996-2011','2012-2021','1996-2021'])
mktreg

mktreg.style.format({
    'alpha': '{:,.2%}'.format,
    'Passive': '{:,.2f}'.format,
    'r-squared': '{:,.2%}'.format,
    'Info Ratio': '{:,.2%}'.format,
})
```

<style  type="text/css" >
</style><table id="T_388e7_" ><thead>    <tr>        <th class="blank" ></th>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >alpha</th>        <th class="col_heading level0 col1" >SPY</th>        <th class="col_heading level0 col2" >r-squared</th>        <th class="col_heading level0 col3" >Treynor Ratio</th>        <th class="col_heading level0 col4" >Info Ratio</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_388e7_level0_row0" class="row_heading level0 row0" >1996-2011</th>
                        <th id="T_388e7_level1_row0" class="row_heading level1 row0" >GMWAX</th>
                        <td id="T_388e7_row0_col0" class="data row0 col0" >-0.58%</td>
                        <td id="T_388e7_row0_col1" class="data row0 col1" >0.5396</td>
                        <td id="T_388e7_row0_col2" class="data row0 col2" >50.71%</td>
                        <td id="T_388e7_row0_col3" class="data row0 col3" >0.0293</td>
                        <td id="T_388e7_row0_col4" class="data row0 col4" >-6.55%</td>
            </tr>
            <tr>
                        <th id="T_388e7_level0_row1" class="row_heading level0 row1" >2012-2021</th>
                        <th id="T_388e7_level1_row1" class="row_heading level1 row1" >GMWAX</th>
                        <td id="T_388e7_row1_col0" class="data row1 col0" >-2.85%</td>
                        <td id="T_388e7_row1_col1" class="data row1 col1" >0.5683</td>
                        <td id="T_388e7_row1_col2" class="data row1 col2" >76.33%</td>
                        <td id="T_388e7_row1_col3" class="data row1 col3" >0.1044</td>
                        <td id="T_388e7_row1_col4" class="data row1 col4" >-68.72%</td>
            </tr>
            <tr>
                        <th id="T_388e7_level0_row2" class="row_heading level0 row2" >1996-2021</th>
                        <th id="T_388e7_level1_row2" class="row_heading level1 row2" >GMWAX</th>
                        <td id="T_388e7_row2_col0" class="data row2 col0" >-1.35%</td>
                        <td id="T_388e7_row2_col1" class="data row2 col1" >0.5461</td>
                        <td id="T_388e7_row2_col2" class="data row2 col2" >56.68%</td>
                        <td id="T_388e7_row2_col3" class="data row2 col3" >0.0603</td>
                        <td id="T_388e7_row2_col4" class="data row2 col4" >-18.48%</td>
            </tr>
    </tbody></table>

# 3. Forecast Regressions

```python
sigs = pd.read_excel(data_file_path,sheet_name='signals')
sigs.set_index('Date',inplace=True)
sigs
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
	  <th>DP</th>
	  <th>EP</th>
	  <th>US10Y</th>
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
	  <th>1993-02-28</th>
	  <td>2.82</td>
	  <td>4.44</td>
	  <td>6.03</td>
	</tr>
	<tr>
	  <th>1993-03-31</th>
	  <td>2.77</td>
	  <td>4.41</td>
	  <td>6.03</td>
	</tr>
	<tr>
	  <th>1993-04-30</th>
	  <td>2.82</td>
	  <td>4.44</td>
	  <td>6.05</td>
	</tr>
	<tr>
	  <th>1993-05-31</th>
	  <td>2.81</td>
	  <td>4.38</td>
	  <td>6.16</td>
	</tr>
	<tr>
	  <th>1993-06-30</th>
	  <td>2.79</td>
	  <td>4.31</td>
	  <td>5.80</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2021-06-30</th>
	  <td>1.37</td>
	  <td>2.19</td>
	  <td>1.45</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>1.34</td>
	  <td>3.64</td>
	  <td>1.24</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>1.32</td>
	  <td>2.83</td>
	  <td>1.30</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>1.32</td>
	  <td>2.98</td>
	  <td>1.52</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>1.36</td>
	  <td>3.64</td>
	  <td>1.55</td>
	</tr>
  </tbody>
</table>
<p>345 rows × 3 columns</p>
</div>

## Total or Excess?
- We could forecast returns or excess returns. Below we forecast total returns.

## Shifting
- We shift X by a period so that it is lagged in the regression:
$$r_{t+1} = \alpha + \boldsymbol{\beta}' \boldsymbol{x}_t + \epsilon_{t+1}$$

To get the lagged regression, we need to shift the values.

- Pandas will by default line up the dates of two dataframes
- By shifting the X dataframe forward in time, we have ensured the lag. 
- The X (signal) dates are already lagged, and thus y (Feb 2021) and X (Feb 2021) are from data observed in y as of Feb 2021 and X as of Jan 2021. This fits our lagged regression as desired.

### Cleaning and aligning the data

Note that lagging the regressors causes the first date to be NaN.

- Thus we `dropna()` which drops the first date from the regressors.
- This means we also need to realign the dependent variable.

```python
# lag the independent variable, so that we can align date stamps and still have lag
sigs_lag = sigs.shift().dropna()

# align the data frames to the same subset of dates
sigs_lag, spy = sigs_lag.align(rets[['SPY']], join='inner',axis=0)
```

# 3.1 Forecast setup

We will date the forecast by the date it is forecasting, not the date it was calculated.

- Example: if we use Feb data to forecast a Mar return, it would have a March date stamp.

For a baseline forecast, we use the mean return up to that point.

- We need to shift the mean return (lag it) as the mean through Feb is our forecast for March
- This shifting will introduce an NaN at the start, which is dropped.
- Thus, we should calculate this from the full series, `rets` rather than `spy`, which has already had the first date dropped. (And thus, we would be dropping a second value by doing the calculation with `spy` as the input, due to the induced `NaN` value.

```python
forecasts = rets[['SPY']].expanding().mean().shift(1).dropna()
forecasts.columns = ['Mean']

# Define the models for the other forecasts
model_map = {'DP':['DP'], 'EP':['EP'], 'ALL':sigs.columns}

for model in model_map.keys():
    X = sigs_lag[model_map[model]]
    forecasts[model] = LinearRegression().fit(X,spy).predict(X)
    
forecasts.dropna(inplace=True)
forecasts
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
	  <th>DP</th>
	  <th>EP</th>
	  <th>ALL</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1993-03-31</th>
	  <td>0.0107</td>
	  <td>0.0164</td>
	  <td>0.0090</td>
	  <td>0.0120</td>
	</tr>
	<tr>
	  <th>1993-04-30</th>
	  <td>0.0165</td>
	  <td>0.0160</td>
	  <td>0.0089</td>
	  <td>0.0116</td>
	</tr>
	<tr>
	  <th>1993-05-31</th>
	  <td>0.0025</td>
	  <td>0.0164</td>
	  <td>0.0090</td>
	  <td>0.0120</td>
	</tr>
	<tr>
	  <th>1993-06-30</th>
	  <td>0.0086</td>
	  <td>0.0163</td>
	  <td>0.0088</td>
	  <td>0.0116</td>
	</tr>
	<tr>
	  <th>1993-07-31</th>
	  <td>0.0076</td>
	  <td>0.0161</td>
	  <td>0.0086</td>
	  <td>0.0118</td>
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
	  <td>0.0091</td>
	  <td>0.0051</td>
	  <td>0.0064</td>
	  <td>0.0064</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>0.0092</td>
	  <td>0.0049</td>
	  <td>0.0024</td>
	  <td>0.0030</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>0.0092</td>
	  <td>0.0047</td>
	  <td>0.0066</td>
	  <td>0.0067</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>0.0093</td>
	  <td>0.0045</td>
	  <td>0.0042</td>
	  <td>0.0045</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>0.0091</td>
	  <td>0.0045</td>
	  <td>0.0047</td>
	  <td>0.0046</td>
	</tr>
  </tbody>
</table>
<p>344 rows × 4 columns</p>
</div>

```python
plot_data = forecasts
fig = plt.figure(figsize=(12,12))
plt.subplot(2, 1, 1)
plt.plot(plot_data)
plt.legend(plot_data.columns)
plt.title('Forecasted Return')
plt.show()   
```

![png](output_23_0.png)

# 3.2 Build the Investment Strategy 

Use the forecasts to build investment weights.

Here, we are only investing in one security, SPY, so it is just a question of how much we lean in/out of SPY.

Per the Homework, we use

$$w_t = 100 * \mathbb{E}_t\left[r_{t+1}\right]$$

so for example,

the weight at the end of Feb is 100 times the Feb-based forecast of the March value of SPY.

The return to this strategy, will of course be multiplied by the realized return:

$$r_{t+1}^{\text{strategy}} = w_t * r_{t+1}^{\text{SPY}}$$

so for example,

the return on the strategy for March is the March SPY return multiplied by 100 * the forecast of the March SPY return, (and this forecast is derived in Feb, pointing toward March.)

## Pandas

Pandas naturally wants to align the dates. So once again, we don't want to actually try to multiply objects with different datestamps.

Accordingly, we made the signals have a datestamp of t+1, which gives the forecasts a datestamp of t+1 (i.e. the forecasts are stamped with the time period they are forecasting, not the time period they were calculating.)

Thus, the weight calculated in Feb for use from Feb to March will already be stamped as March, given the datestamp of the signals and forecasts. Given this, it is fine that Pandas will multiply the March realized return with the March weight (since this weight was calculated in Feb and is targeting March.)

```python
wts = 100 * forecasts

fund_returns = wts * spy.values
fund_returns.insert(0,'Passive', spy)
fund_returns
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
	  <th>Passive</th>
	  <th>Mean</th>
	  <th>DP</th>
	  <th>EP</th>
	  <th>ALL</th>
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
	  <th>1993-03-31</th>
	  <td>0.0224</td>
	  <td>0.0239</td>
	  <td>0.0367</td>
	  <td>0.0201</td>
	  <td>0.0269</td>
	</tr>
	<tr>
	  <th>1993-04-30</th>
	  <td>-0.0256</td>
	  <td>-0.0423</td>
	  <td>-0.0408</td>
	  <td>-0.0227</td>
	  <td>-0.0297</td>
	</tr>
	<tr>
	  <th>1993-05-31</th>
	  <td>0.0270</td>
	  <td>0.0067</td>
	  <td>0.0441</td>
	  <td>0.0242</td>
	  <td>0.0323</td>
	</tr>
	<tr>
	  <th>1993-06-30</th>
	  <td>0.0037</td>
	  <td>0.0032</td>
	  <td>0.0060</td>
	  <td>0.0032</td>
	  <td>0.0043</td>
	</tr>
	<tr>
	  <th>1993-07-31</th>
	  <td>-0.0049</td>
	  <td>-0.0037</td>
	  <td>-0.0078</td>
	  <td>-0.0042</td>
	  <td>-0.0057</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2021-06-30</th>
	  <td>0.0225</td>
	  <td>0.0205</td>
	  <td>0.0114</td>
	  <td>0.0143</td>
	  <td>0.0144</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>0.0244</td>
	  <td>0.0224</td>
	  <td>0.0120</td>
	  <td>0.0058</td>
	  <td>0.0073</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>0.0298</td>
	  <td>0.0274</td>
	  <td>0.0139</td>
	  <td>0.0197</td>
	  <td>0.0200</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>-0.0466</td>
	  <td>-0.0432</td>
	  <td>-0.0210</td>
	  <td>-0.0197</td>
	  <td>-0.0209</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>0.0702</td>
	  <td>0.0639</td>
	  <td>0.0317</td>
	  <td>0.0328</td>
	  <td>0.0321</td>
	</tr>
  </tbody>
</table>
<p>344 rows × 5 columns</p>
</div>

## Assess the Active Performance 

```python
print('Correlation of funds performances:')
fund_returns.corr().style.format('{:,.1%}'.format)
```

    Correlation of funds performances:

<style  type="text/css" >
</style><table id="T_48a46_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Passive</th>        <th class="col_heading level0 col1" >Mean</th>        <th class="col_heading level0 col2" >DP</th>        <th class="col_heading level0 col3" >EP</th>        <th class="col_heading level0 col4" >ALL</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_48a46_level0_row0" class="row_heading level0 row0" >Passive</th>
                        <td id="T_48a46_row0_col0" class="data row0 col0" >100.0%</td>
                        <td id="T_48a46_row0_col1" class="data row0 col1" >94.2%</td>
                        <td id="T_48a46_row0_col2" class="data row0 col2" >91.0%</td>
                        <td id="T_48a46_row0_col3" class="data row0 col3" >88.3%</td>
                        <td id="T_48a46_row0_col4" class="data row0 col4" >82.8%</td>
            </tr>
            <tr>
                        <th id="T_48a46_level0_row1" class="row_heading level0 row1" >Mean</th>
                        <td id="T_48a46_row1_col0" class="data row1 col0" >94.2%</td>
                        <td id="T_48a46_row1_col1" class="data row1 col1" >100.0%</td>
                        <td id="T_48a46_row1_col2" class="data row1 col2" >76.0%</td>
                        <td id="T_48a46_row1_col3" class="data row1 col3" >81.4%</td>
                        <td id="T_48a46_row1_col4" class="data row1 col4" >63.9%</td>
            </tr>
            <tr>
                        <th id="T_48a46_level0_row2" class="row_heading level0 row2" >DP</th>
                        <td id="T_48a46_row2_col0" class="data row2 col0" >91.0%</td>
                        <td id="T_48a46_row2_col1" class="data row2 col1" >76.0%</td>
                        <td id="T_48a46_row2_col2" class="data row2 col2" >100.0%</td>
                        <td id="T_48a46_row2_col3" class="data row2 col3" >78.3%</td>
                        <td id="T_48a46_row2_col4" class="data row2 col4" >90.1%</td>
            </tr>
            <tr>
                        <th id="T_48a46_level0_row3" class="row_heading level0 row3" >EP</th>
                        <td id="T_48a46_row3_col0" class="data row3 col0" >88.3%</td>
                        <td id="T_48a46_row3_col1" class="data row3 col1" >81.4%</td>
                        <td id="T_48a46_row3_col2" class="data row3 col2" >78.3%</td>
                        <td id="T_48a46_row3_col3" class="data row3 col3" >100.0%</td>
                        <td id="T_48a46_row3_col4" class="data row3 col4" >88.7%</td>
            </tr>
            <tr>
                        <th id="T_48a46_level0_row4" class="row_heading level0 row4" >ALL</th>
                        <td id="T_48a46_row4_col0" class="data row4 col0" >82.8%</td>
                        <td id="T_48a46_row4_col1" class="data row4 col1" >63.9%</td>
                        <td id="T_48a46_row4_col2" class="data row4 col2" >90.1%</td>
                        <td id="T_48a46_row4_col3" class="data row4 col3" >88.7%</td>
                        <td id="T_48a46_row4_col4" class="data row4 col4" >100.0%</td>
            </tr>
    </tbody></table>

```python
(fund_returns + 1).cumprod().plot(figsize=(10,5), title='Cumulative Returns of Strategies');
```

![png](output_28_0.png)

```python
corr_rolling = fund_returns.rolling(60).corr()
dynamic_corrs = (corr_rolling['Passive'].unstack(1))
dynamic_corrs = dynamic_corrs.reindex(columns=fund_returns.columns).drop(columns=['Passive'])
dynamic_corrs.plot(figsize=(10,5),title='Correlation to SPY');
```

![png](output_29_0.png)

## Performance Metrics

```python
performanceMetrics(fund_returns,annualization=12).style.format('{:,.2%}'.format)
```

<style  type="text/css" >
</style><table id="T_23e21_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Mean</th>        <th class="col_heading level0 col1" >Vol</th>        <th class="col_heading level0 col2" >Sharpe</th>        <th class="col_heading level0 col3" >Min</th>        <th class="col_heading level0 col4" >Max</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_23e21_level0_row0" class="row_heading level0 row0" >Passive</th>
                        <td id="T_23e21_row0_col0" class="data row0 col0" >11.14%</td>
                        <td id="T_23e21_row0_col1" class="data row0 col1" >14.62%</td>
                        <td id="T_23e21_row0_col2" class="data row0 col2" >76.20%</td>
                        <td id="T_23e21_row0_col3" class="data row0 col3" >-16.52%</td>
                        <td id="T_23e21_row0_col4" class="data row0 col4" >12.70%</td>
            </tr>
            <tr>
                        <th id="T_23e21_level0_row1" class="row_heading level0 row1" >Mean</th>
                        <td id="T_23e21_row1_col0" class="data row1 col0" >10.12%</td>
                        <td id="T_23e21_row1_col1" class="data row1 col1" >15.17%</td>
                        <td id="T_23e21_row1_col2" class="data row1 col2" >66.73%</td>
                        <td id="T_23e21_row1_col3" class="data row1 col3" >-23.27%</td>
                        <td id="T_23e21_row1_col4" class="data row1 col4" >15.30%</td>
            </tr>
            <tr>
                        <th id="T_23e21_level0_row2" class="row_heading level0 row2" >DP</th>
                        <td id="T_23e21_row2_col0" class="data row2 col0" >11.80%</td>
                        <td id="T_23e21_row2_col1" class="data row2 col1" >15.11%</td>
                        <td id="T_23e21_row2_col2" class="data row2 col2" >78.09%</td>
                        <td id="T_23e21_row2_col3" class="data row2 col3" >-21.15%</td>
                        <td id="T_23e21_row2_col4" class="data row2 col4" >22.37%</td>
            </tr>
            <tr>
                        <th id="T_23e21_level0_row3" class="row_heading level0 row3" >EP</th>
                        <td id="T_23e21_row3_col0" class="data row3 col0" >12.00%</td>
                        <td id="T_23e21_row3_col1" class="data row3 col1" >13.21%</td>
                        <td id="T_23e21_row3_col2" class="data row3 col2" >90.81%</td>
                        <td id="T_23e21_row3_col3" class="data row3 col3" >-11.94%</td>
                        <td id="T_23e21_row3_col4" class="data row3 col4" >19.28%</td>
            </tr>
            <tr>
                        <th id="T_23e21_level0_row4" class="row_heading level0 row4" >ALL</th>
                        <td id="T_23e21_row4_col0" class="data row4 col0" >13.54%</td>
                        <td id="T_23e21_row4_col1" class="data row4 col1" >14.99%</td>
                        <td id="T_23e21_row4_col2" class="data row4 col2" >90.32%</td>
                        <td id="T_23e21_row4_col3" class="data row4 col3" >-17.02%</td>
                        <td id="T_23e21_row4_col4" class="data row4 col4" >22.46%</td>
            </tr>
    </tbody></table>

```python
tailMetrics(fund_returns)
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
	  <th>Passive</th>
	  <td>-0.6182</td>
	  <td>1.2525</td>
	  <td>-0.0694</td>
	  <td>-0.0941</td>
	  <td>-0.5080</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-03-31</td>
	  <td>1613 days</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>-0.5703</td>
	  <td>3.1574</td>
	  <td>-0.0674</td>
	  <td>-0.0966</td>
	  <td>-0.5177</td>
	  <td>2000-08-31</td>
	  <td>2002-09-30</td>
	  <td>2013-07-31</td>
	  <td>4717 days</td>
	</tr>
	<tr>
	  <th>DP</th>
	  <td>-0.4957</td>
	  <td>6.1660</td>
	  <td>-0.0579</td>
	  <td>-0.0976</td>
	  <td>-0.6415</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-03-31</td>
	  <td>1613 days</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>0.0154</td>
	  <td>2.3299</td>
	  <td>-0.0549</td>
	  <td>-0.0776</td>
	  <td>-0.3850</td>
	  <td>2007-10-31</td>
	  <td>2010-06-30</td>
	  <td>2012-03-31</td>
	  <td>1613 days</td>
	</tr>
	<tr>
	  <th>ALL</th>
	  <td>0.0999</td>
	  <td>4.7525</td>
	  <td>-0.0645</td>
	  <td>-0.0964</td>
	  <td>-0.5193</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2011-04-30</td>
	  <td>1277 days</td>
	</tr>
  </tbody>
</table>
</div>

```python
get_ols_metrics(spy, fund_returns, annualization=12)
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
	  <th>r-squared</th>
	  <th>Treynor Ratio</th>
	  <th>Info Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Passive</th>
	  <td>2.0817e-17</td>
	  <td>1.0000</td>
	  <td>1.0000</td>
	  <td>0.1114</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>-7.6863e-03</td>
	  <td>0.9779</td>
	  <td>0.8879</td>
	  <td>0.1035</td>
	  <td>-0.1513</td>
	</tr>
	<tr>
	  <th>DP</th>
	  <td>1.3172e-02</td>
	  <td>0.9407</td>
	  <td>0.8288</td>
	  <td>0.1254</td>
	  <td>0.2107</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>3.1071e-02</td>
	  <td>0.7980</td>
	  <td>0.7798</td>
	  <td>0.1503</td>
	  <td>0.5012</td>
	</tr>
	<tr>
	  <th>ALL</th>
	  <td>4.0830e-02</td>
	  <td>0.8491</td>
	  <td>0.6855</td>
	  <td>0.1595</td>
	  <td>0.4856</td>
	</tr>
  </tbody>
</table>
</div>

# 3.3 Conclusions

The tables above indicate…

- The active strategies are highly correlated.
- The active strategies (in-sample) deliver slightly improved Sharpe Ratio relative to the Passive strategy.
- The active strategies (in-sampel) deliver positive alpha and positive Info Ratios
- The Earnings-Price signal is more helpful than the Dividend-Price signal, as seen in the EP strategy doing better than the DP strategy.

We also note that…

- The Expanding Mean strategy does poorly relative to the Passive strategy.

With regard to tail risk,

- The EP strategy has better tail-risk stats than the other strategies
- The DP and ALL strategies do not show substantially higher risk in any metric. (DP has a bit higher tail-risk, but lower VaR.) 

## Underperformance during 2000-2011

In the table below, we see that the passive, mean, and forecasting strategies underperform the risk-free rate through most of the 12-year period.

At the very end, the ALL and EP strategies barely outperform the risk-free rate.

Between the crashes of 2001-2003 and 2008, this is a bad period for equities, in line with GMO's forecast that stocks would under-perform.

```python
tab2000 = (fund_returns['2000':'2011']+1).cumprod()
tab2000['RF'] = (rf['2000':'2011']+1).cumprod()
tab2000.plot(figsize=(10,5),title='Stock Underperformance?');
```

![png](output_36_0.png)

# 4 Out-of-Sample Forecasting

```python
def oos_rsquared(data,forecasts,null=None):
    data = data.copy()
    forecasts = forecasts.copy()
    null = null.copy()
    
    # if no Null forecast given, use expanding mean
    if null is None:
        null = data.expanding().mean().shift()

    # label Data and Null accordingly--input may be series or dataframe
    if isinstance(null, pd.DataFrame):
        null.columns = ['Null']
    elif isinstance(null,pd.Series):
        null.name = 'Null'
    if isinstance(data, pd.DataFrame):
        data.columns = ['Data']
    elif isinstance(data,pd.Series):
        data.name = 'Data'

    # double check data is aligned and no NaN (null will have NaN in first value by default)
    alldata = forecasts.join(data,how='inner',rsuffix='_Data').join(null,how='inner',rsuffix='_Null').dropna(axis=0)
    null = alldata[['Null']]
    data = alldata[['Data']]
    forecasts = alldata.drop(columns=['Data','Null'])


    # Forecast MSE
    err_forecast = forecasts.subtract(data.values)
    mse_forecast = (err_forecast**2).sum()

    # Null MSE
    err_null = null.subtract(data.values)
    mse_null = (err_null**2).sum()

    # OOS R-squared
    r2oos = (1 - mse_forecast/mse_null.values).to_frame().T
    r2oos.index = ['OOS-Rsquared']

    return r2oos
```

## Be careful in how you construct the timing / dates

Consider datestamp of $t =$ March 2021.

- We are building a forecast of SPY at $t+1$ (April) using data through $t$ (Mar).
- Note that `.loc[:t]` utilizes data including $t$.
- Thus `Xlag_t = Xlag.loc[:t,:]` and `yt=y.loc[:t]` are both using data through $t$ (Mar) in the regression.
- But `Xlag` is using through Feb of the actual signals, given that it is lagged.
- This is as we want: regress SPY through Mar on signals through Feb to predict Apr.

This leads to forecasts with dates stamped as $t$…

- for forecasts utilizing data through $t$
- forecasting a value at $t+1$

Thus, we shift the forecasts such that the datestamps reflect the date of the forecasted value, not the date through which data was used to generate them.

Because of this shifting, we start the forecast one period sooner, `BURN_PERIODS-2`, to account for the 0-indexing of a list and to account for the fact that in the loop it is assigning the forecast to the date it is calculated, which outside the loop we shift back.

```python
BURN_PERIODS = 60

forecasts_OOS = pd.DataFrame(columns=model_map.keys(),index=spy.index, dtype='float64')

est = LinearRegression()

for model in model_map.keys():

    Xlag = sigs_lag[model_map[model]]
    X = sigs[model_map[model]]
    
    for t in spy.index[BURN_PERIODS-2:]:
        yt = spy.loc[:t].values.reshape(-1,1)
        Xlag_t = Xlag.loc[:t,:].values
        x_t = X.loc[t,:].values.reshape(1,-1)

        est.fit(Xlag_t,yt);
        predval = est.predict(x_t)[0,0]
        
        # this timing is assigning forecast to datestamp of info used to make the forecast
        forecasts_OOS.loc[t,model] = predval

forecasts_OOS.insert(0,'Mean', rets[['SPY']].expanding().mean().dropna())

# more convenient to have datestamp reflect date of the forecasted value
forecasts_OOS = forecasts_OOS.shift(1).dropna()
forecasts_OOS
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
	  <th>DP</th>
	  <th>EP</th>
	  <th>ALL</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1998-02-28</th>
	  <td>0.0158</td>
	  <td>0.0237</td>
	  <td>0.0074</td>
	  <td>0.0163</td>
	</tr>
	<tr>
	  <th>1998-03-31</th>
	  <td>0.0167</td>
	  <td>0.0282</td>
	  <td>0.0094</td>
	  <td>0.0206</td>
	</tr>
	<tr>
	  <th>1998-04-30</th>
	  <td>0.0172</td>
	  <td>0.0309</td>
	  <td>0.0112</td>
	  <td>0.0232</td>
	</tr>
	<tr>
	  <th>1998-05-31</th>
	  <td>0.0171</td>
	  <td>0.0298</td>
	  <td>0.0108</td>
	  <td>0.0216</td>
	</tr>
	<tr>
	  <th>1998-06-30</th>
	  <td>0.0165</td>
	  <td>0.0256</td>
	  <td>0.0082</td>
	  <td>0.0168</td>
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
	  <td>0.0091</td>
	  <td>0.0045</td>
	  <td>0.0060</td>
	  <td>0.0053</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>0.0092</td>
	  <td>0.0044</td>
	  <td>0.0018</td>
	  <td>0.0019</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>0.0092</td>
	  <td>0.0043</td>
	  <td>0.0064</td>
	  <td>0.0062</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>0.0093</td>
	  <td>0.0044</td>
	  <td>0.0041</td>
	  <td>0.0043</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>0.0091</td>
	  <td>0.0040</td>
	  <td>0.0042</td>
	  <td>0.0035</td>
	</tr>
  </tbody>
</table>
<p>285 rows × 4 columns</p>
</div>

# Investing

```python
wts_OOS = 100 * forecasts_OOS

spy_OOS, _ = spy.align(forecasts_OOS, join='right', axis=0)

fund_returns_OOS = wts_OOS * spy_OOS.values
fund_returns_OOS.insert(0,'Passive', spy_OOS)
fund_returns_OOS
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
	  <th>Passive</th>
	  <th>Mean</th>
	  <th>DP</th>
	  <th>EP</th>
	  <th>ALL</th>
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
	  <th>1998-02-28</th>
	  <td>0.0693</td>
	  <td>0.1096</td>
	  <td>0.1643</td>
	  <td>0.0512</td>
	  <td>0.1128</td>
	</tr>
	<tr>
	  <th>1998-03-31</th>
	  <td>0.0488</td>
	  <td>0.0814</td>
	  <td>0.1375</td>
	  <td>0.0456</td>
	  <td>0.1004</td>
	</tr>
	<tr>
	  <th>1998-04-30</th>
	  <td>0.0128</td>
	  <td>0.0220</td>
	  <td>0.0395</td>
	  <td>0.0143</td>
	  <td>0.0297</td>
	</tr>
	<tr>
	  <th>1998-05-31</th>
	  <td>-0.0208</td>
	  <td>-0.0356</td>
	  <td>-0.0619</td>
	  <td>-0.0225</td>
	  <td>-0.0449</td>
	</tr>
	<tr>
	  <th>1998-06-30</th>
	  <td>0.0426</td>
	  <td>0.0705</td>
	  <td>0.1092</td>
	  <td>0.0351</td>
	  <td>0.0717</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2021-06-30</th>
	  <td>0.0225</td>
	  <td>0.0205</td>
	  <td>0.0101</td>
	  <td>0.0134</td>
	  <td>0.0119</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>0.0244</td>
	  <td>0.0224</td>
	  <td>0.0108</td>
	  <td>0.0044</td>
	  <td>0.0047</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>0.0298</td>
	  <td>0.0274</td>
	  <td>0.0129</td>
	  <td>0.0192</td>
	  <td>0.0184</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>-0.0466</td>
	  <td>-0.0432</td>
	  <td>-0.0204</td>
	  <td>-0.0193</td>
	  <td>-0.0199</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>0.0702</td>
	  <td>0.0639</td>
	  <td>0.0278</td>
	  <td>0.0294</td>
	  <td>0.0245</td>
	</tr>
  </tbody>
</table>
<p>285 rows × 5 columns</p>
</div>

```python
def summary_forecast_strategy(forecasts,target,forecasted_returns):
    
    # Forecast Accuracy Stats
    r2oos = oos_rsquared(target, forecasts, forecasts[['Mean']])

    corr_spy_tab = forecasts.corrwith(target.squeeze(),axis=0).to_frame().T
    corr_spy_tab.index = ['Corr. between forecast and target']
    
    display(pd.concat([r2oos,corr_spy_tab],axis=0))
    
    # Plot Forecasts
    plot_data = forecasts
    fig = plt.figure(figsize=(12,6))
    plt.plot(plot_data)
    plt.legend(plot_data.columns)
    plt.title('Forecasted Return')
    plt.show()   
    
    # Returns from investing in Forecasts    
    plot_data = (forecasted_returns + 1).cumprod()
    fig = plt.figure(figsize=(10,5))
    plt.plot(plot_data)
    plt.yscale('log')
    plt.legend(plot_data.columns)
    plt.title('Cumulative Returns of Strategies (Log Scale)')
    plt.show()   

    # Correlation of Returns from Forecasts
    print('Correlation of funds performances:')
    display(forecasted_returns.corr())
    
    corr_rolling = forecasted_returns.rolling(60).corr()
    dynamic_corrs = (corr_rolling['Passive'].unstack(1))
    dynamic_corrs = dynamic_corrs.reindex(columns=forecasted_returns.columns).drop(columns=['Passive'])
    
    fig = plt.figure(figsize=(10,5))
    plt.plot(dynamic_corrs)
    plt.legend(plot_data.drop(columns=['Passive']).columns)
    plt.title('Rolling Correlation to Target')
    plt.show()      
    
    
    ### Performance Metrics of Strategy Based on Forecasts
    display(performanceMetrics(forecasted_returns,annualization=12).style.format('{:,.2%}'.format))
    
    display(tailMetrics(forecasted_returns))
    
    display(get_ols_metrics(target, forecasted_returns, annualization=12).style.format({
    'alpha': '{:,.2%}'.format,
    'Passive': '{:,.2f}'.format,
    'r-squared': '{:,.2%}'.format,
    'Info Ratio': '{:,.2%}'.format,
    })
    )
```

```python
summary_forecast_strategy(forecasts_OOS,spy_OOS,fund_returns_OOS)
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
	  <th>DP</th>
	  <th>EP</th>
	  <th>ALL</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>OOS-Rsquared</th>
	  <td>0.0000</td>
	  <td>-0.0061</td>
	  <td>-0.0092</td>
	  <td>-0.0376</td>
	</tr>
	<tr>
	  <th>Corr. between forecast and target</th>
	  <td>-0.0548</td>
	  <td>-0.0291</td>
	  <td>0.0195</td>
	  <td>0.0405</td>
	</tr>
  </tbody>
</table>
</div>

![png](output_44_1.png)

![png](output_44_2.png)

    Correlation of funds performances:

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
	  <th>Passive</th>
	  <th>Mean</th>
	  <th>DP</th>
	  <th>EP</th>
	  <th>ALL</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Passive</th>
	  <td>1.0000</td>
	  <td>0.9447</td>
	  <td>0.9021</td>
	  <td>0.4770</td>
	  <td>0.2763</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>0.9447</td>
	  <td>1.0000</td>
	  <td>0.9630</td>
	  <td>0.5409</td>
	  <td>0.4015</td>
	</tr>
	<tr>
	  <th>DP</th>
	  <td>0.9021</td>
	  <td>0.9630</td>
	  <td>1.0000</td>
	  <td>0.4978</td>
	  <td>0.3474</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>0.4770</td>
	  <td>0.5409</td>
	  <td>0.4978</td>
	  <td>1.0000</td>
	  <td>0.8897</td>
	</tr>
	<tr>
	  <th>ALL</th>
	  <td>0.2763</td>
	  <td>0.4015</td>
	  <td>0.3474</td>
	  <td>0.8897</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

![png](output_44_5.png)

<style  type="text/css" >
</style><table id="T_b8039_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Mean</th>        <th class="col_heading level0 col1" >Vol</th>        <th class="col_heading level0 col2" >Sharpe</th>        <th class="col_heading level0 col3" >Min</th>        <th class="col_heading level0 col4" >Max</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_b8039_level0_row0" class="row_heading level0 row0" >Passive</th>
                        <td id="T_b8039_row0_col0" class="data row0 col0" >9.50%</td>
                        <td id="T_b8039_row0_col1" class="data row0 col1" >15.28%</td>
                        <td id="T_b8039_row0_col2" class="data row0 col2" >62.14%</td>
                        <td id="T_b8039_row0_col3" class="data row0 col3" >-16.52%</td>
                        <td id="T_b8039_row0_col4" class="data row0 col4" >12.70%</td>
            </tr>
            <tr>
                        <th id="T_b8039_level0_row1" class="row_heading level0 row1" >Mean</th>
                        <td id="T_b8039_row1_col0" class="data row1 col0" >8.15%</td>
                        <td id="T_b8039_row1_col1" class="data row1 col1" >15.45%</td>
                        <td id="T_b8039_row1_col2" class="data row1 col2" >52.76%</td>
                        <td id="T_b8039_row1_col3" class="data row1 col3" >-23.27%</td>
                        <td id="T_b8039_row1_col4" class="data row1 col4" >15.30%</td>
            </tr>
            <tr>
                        <th id="T_b8039_level0_row2" class="row_heading level0 row2" >DP</th>
                        <td id="T_b8039_row2_col0" class="data row2 col0" >8.58%</td>
                        <td id="T_b8039_row2_col1" class="data row2 col1" >17.80%</td>
                        <td id="T_b8039_row2_col2" class="data row2 col2" >48.18%</td>
                        <td id="T_b8039_row2_col3" class="data row2 col3" >-34.72%</td>
                        <td id="T_b8039_row2_col4" class="data row2 col4" >16.43%</td>
            </tr>
            <tr>
                        <th id="T_b8039_level0_row3" class="row_heading level0 row3" >EP</th>
                        <td id="T_b8039_row3_col0" class="data row3 col0" >8.89%</td>
                        <td id="T_b8039_row3_col1" class="data row3 col1" >16.32%</td>
                        <td id="T_b8039_row3_col2" class="data row3 col2" >54.45%</td>
                        <td id="T_b8039_row3_col3" class="data row3 col3" >-23.85%</td>
                        <td id="T_b8039_row3_col4" class="data row3 col4" >22.42%</td>
            </tr>
            <tr>
                        <th id="T_b8039_level0_row4" class="row_heading level0 row4" >ALL</th>
                        <td id="T_b8039_row4_col0" class="data row4 col0" >12.10%</td>
                        <td id="T_b8039_row4_col1" class="data row4 col1" >25.48%</td>
                        <td id="T_b8039_row4_col2" class="data row4 col2" >47.47%</td>
                        <td id="T_b8039_row4_col3" class="data row4 col3" >-51.86%</td>
                        <td id="T_b8039_row4_col4" class="data row4 col4" >52.23%</td>
            </tr>
    </tbody></table>

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
	  <th>Passive</th>
	  <td>-0.5824</td>
	  <td>1.1057</td>
	  <td>-0.0745</td>
	  <td>-0.0987</td>
	  <td>-0.5080</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-03-31</td>
	  <td>1613 days</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>-0.6425</td>
	  <td>3.3388</td>
	  <td>-0.0728</td>
	  <td>-0.1008</td>
	  <td>-0.5177</td>
	  <td>2000-08-31</td>
	  <td>2002-09-30</td>
	  <td>2013-07-31</td>
	  <td>4717 days</td>
	</tr>
	<tr>
	  <th>DP</th>
	  <td>-1.1594</td>
	  <td>8.8449</td>
	  <td>-0.0741</td>
	  <td>-0.1195</td>
	  <td>-0.5519</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2013-10-31</td>
	  <td>2192 days</td>
	</tr>
	<tr>
	  <th>EP</th>
	  <td>-0.5816</td>
	  <td>5.8163</td>
	  <td>-0.0668</td>
	  <td>-0.1100</td>
	  <td>-0.5837</td>
	  <td>2009-02-28</td>
	  <td>2010-06-30</td>
	  <td>2014-06-30</td>
	  <td>1948 days</td>
	</tr>
	<tr>
	  <th>ALL</th>
	  <td>-0.8003</td>
	  <td>22.5407</td>
	  <td>-0.0734</td>
	  <td>-0.1617</td>
	  <td>-0.8050</td>
	  <td>2009-02-28</td>
	  <td>2010-08-31</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

<style  type="text/css" >
</style><table id="T_16f45_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >alpha</th>        <th class="col_heading level0 col1" >SPY</th>        <th class="col_heading level0 col2" >r-squared</th>        <th class="col_heading level0 col3" >Treynor Ratio</th>        <th class="col_heading level0 col4" >Info Ratio</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_16f45_level0_row0" class="row_heading level0 row0" >Passive</th>
                        <td id="T_16f45_row0_col0" class="data row0 col0" >0.00%</td>
                        <td id="T_16f45_row0_col1" class="data row0 col1" >1.0000</td>
                        <td id="T_16f45_row0_col2" class="data row0 col2" >100.00%</td>
                        <td id="T_16f45_row0_col3" class="data row0 col3" >0.0950</td>
                        <td id="T_16f45_row0_col4" class="data row0 col4" >nan%</td>
            </tr>
            <tr>
                        <th id="T_16f45_level0_row1" class="row_heading level0 row1" >Mean</th>
                        <td id="T_16f45_row1_col0" class="data row1 col0" >-0.92%</td>
                        <td id="T_16f45_row1_col1" class="data row1 col1" >0.9553</td>
                        <td id="T_16f45_row1_col2" class="data row1 col2" >89.24%</td>
                        <td id="T_16f45_row1_col3" class="data row1 col3" >0.0853</td>
                        <td id="T_16f45_row1_col4" class="data row1 col4" >-18.13%</td>
            </tr>
            <tr>
                        <th id="T_16f45_level0_row2" class="row_heading level0 row2" >DP</th>
                        <td id="T_16f45_row2_col0" class="data row2 col0" >-1.40%</td>
                        <td id="T_16f45_row2_col1" class="data row2 col1" >1.0511</td>
                        <td id="T_16f45_row2_col2" class="data row2 col2" >81.38%</td>
                        <td id="T_16f45_row2_col3" class="data row2 col3" >0.0816</td>
                        <td id="T_16f45_row2_col4" class="data row2 col4" >-18.26%</td>
            </tr>
            <tr>
                        <th id="T_16f45_level0_row3" class="row_heading level0 row3" >EP</th>
                        <td id="T_16f45_row3_col0" class="data row3 col0" >4.05%</td>
                        <td id="T_16f45_row3_col1" class="data row3 col1" >0.5095</td>
                        <td id="T_16f45_row3_col2" class="data row3 col2" >22.75%</td>
                        <td id="T_16f45_row3_col3" class="data row3 col3" >0.1745</td>
                        <td id="T_16f45_row3_col4" class="data row3 col4" >28.23%</td>
            </tr>
            <tr>
                        <th id="T_16f45_level0_row4" class="row_heading level0 row4" >ALL</th>
                        <td id="T_16f45_row4_col0" class="data row4 col0" >7.72%</td>
                        <td id="T_16f45_row4_col1" class="data row4 col1" >0.4607</td>
                        <td id="T_16f45_row4_col2" class="data row4 col2" >7.63%</td>
                        <td id="T_16f45_row4_col3" class="data row4 col3" >0.2626</td>
                        <td id="T_16f45_row4_col4" class="data row4 col4" >31.53%</td>
            </tr>
    </tbody></table>

## We note the following from the OOS forecasts:
- OOS R-squared is negative for all three forecasting models.
- Sharpe Ratio is lower for all timing strategies than for the Passive approach.
- The Alpha is positive for the EP and ALL models, reflecting that the lower Sharpe is more than offset by the substantially lower beta to SPY (nearly 0.50, whereas the other strategies are near 1.)
- The correlation between EP and DP is lower OOS--close to 0.5.
- The correlation between EP and SPY and between ALL and SPY is near 1 most of the sample but is negative during 2009-2013.

# 5. Other Forecasting Approaches: In-Sample

Below we compare forecasting with mean return, OLS, and a few Machine Learning (ML) methods. Note that for brevity, we use just one model of signals: ALL={DP, EP, 10YR}. Can easily modify the model choice below.

## 5.1 CART

**Classification And Regression Tree (CART) is a nonlinear way to build a regression.**

- General, flexible model, but will OVERFIT for a single tree!
- Thus, to use this approach need to build many of these trees--a Random Forest--and then average over the results.
- Here we just build one tree, with a max depth of 4, for illustration

## 5.2 Neural Networks

- Discussing the math and application of these is beyond the scope of the course.
- Nonetheless, we use a NN with 100 hidden layers to try forecasting SPY.

```python
MODEL = 'ALL'

from sklearn.ensemble import RandomForestRegressor
from sklearn import tree
from sklearn.neural_network import MLPRegressor


forecasts_ML = rets[['SPY']].expanding().mean().shift(1).dropna()
forecasts_ML.columns = ['Mean']

score_ML = pd.DataFrame(columns=['Mean'],index=['score'],data=0)

methods = ['OLS', 'Tree', 'NN']
est = dict()

y = spy.squeeze('columns').ravel()
X = sigs_lag[model_map[MODEL]]

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
forecasts_ML
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
	  <th>OLS</th>
	  <th>Tree</th>
	  <th>NN</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1993-03-31</th>
	  <td>0.0107</td>
	  <td>0.0120</td>
	  <td>0.0069</td>
	  <td>0.0061</td>
	</tr>
	<tr>
	  <th>1993-04-30</th>
	  <td>0.0165</td>
	  <td>0.0116</td>
	  <td>0.0069</td>
	  <td>0.0074</td>
	</tr>
	<tr>
	  <th>1993-05-31</th>
	  <td>0.0025</td>
	  <td>0.0120</td>
	  <td>0.0077</td>
	  <td>0.0059</td>
	</tr>
	<tr>
	  <th>1993-06-30</th>
	  <td>0.0086</td>
	  <td>0.0116</td>
	  <td>0.0081</td>
	  <td>0.0049</td>
	</tr>
	<tr>
	  <th>1993-07-31</th>
	  <td>0.0076</td>
	  <td>0.0118</td>
	  <td>0.0059</td>
	  <td>0.0081</td>
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
	  <td>0.0091</td>
	  <td>0.0064</td>
	  <td>0.0099</td>
	  <td>0.0365</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>0.0092</td>
	  <td>0.0030</td>
	  <td>0.0084</td>
	  <td>0.0539</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>0.0092</td>
	  <td>0.0067</td>
	  <td>0.0079</td>
	  <td>0.0480</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>0.0093</td>
	  <td>0.0045</td>
	  <td>0.0071</td>
	  <td>0.0370</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>0.0091</td>
	  <td>0.0046</td>
	  <td>0.0102</td>
	  <td>0.0354</td>
	</tr>
  </tbody>
</table>
<p>344 rows × 4 columns</p>
</div>

### Figure of Tree Estimation

```python
fn = X.columns
fig, axes = plt.subplots(nrows = 1,ncols=1, dpi=500);
tree.plot_tree(est['Tree'].estimators_[0],feature_names = fn, filled=True);
```

![png](output_49_0.png)

## Investing

```python
wts_ML = 100 * forecasts_ML

spy_ML, _ = spy.align(forecasts_ML, join='right', axis=0)

fund_returns_ML = wts_ML * spy_ML.values
fund_returns_ML.insert(0,'Passive', spy_ML)
fund_returns_ML
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
	  <th>Passive</th>
	  <th>Mean</th>
	  <th>OLS</th>
	  <th>Tree</th>
	  <th>NN</th>
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
	  <th>1993-03-31</th>
	  <td>0.0224</td>
	  <td>0.0239</td>
	  <td>0.0269</td>
	  <td>0.0155</td>
	  <td>0.0136</td>
	</tr>
	<tr>
	  <th>1993-04-30</th>
	  <td>-0.0256</td>
	  <td>-0.0423</td>
	  <td>-0.0297</td>
	  <td>-0.0177</td>
	  <td>-0.0189</td>
	</tr>
	<tr>
	  <th>1993-05-31</th>
	  <td>0.0270</td>
	  <td>0.0067</td>
	  <td>0.0323</td>
	  <td>0.0209</td>
	  <td>0.0160</td>
	</tr>
	<tr>
	  <th>1993-06-30</th>
	  <td>0.0037</td>
	  <td>0.0032</td>
	  <td>0.0043</td>
	  <td>0.0030</td>
	  <td>0.0018</td>
	</tr>
	<tr>
	  <th>1993-07-31</th>
	  <td>-0.0049</td>
	  <td>-0.0037</td>
	  <td>-0.0057</td>
	  <td>-0.0028</td>
	  <td>-0.0039</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2021-06-30</th>
	  <td>0.0225</td>
	  <td>0.0205</td>
	  <td>0.0144</td>
	  <td>0.0223</td>
	  <td>0.0821</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>0.0244</td>
	  <td>0.0224</td>
	  <td>0.0073</td>
	  <td>0.0205</td>
	  <td>0.1316</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>0.0298</td>
	  <td>0.0274</td>
	  <td>0.0200</td>
	  <td>0.0236</td>
	  <td>0.1430</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>-0.0466</td>
	  <td>-0.0432</td>
	  <td>-0.0209</td>
	  <td>-0.0332</td>
	  <td>-0.1722</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>0.0702</td>
	  <td>0.0639</td>
	  <td>0.0321</td>
	  <td>0.0714</td>
	  <td>0.2484</td>
	</tr>
  </tbody>
</table>
<p>344 rows × 5 columns</p>
</div>

```python
summary_forecast_strategy(forecasts_ML,spy_ML,fund_returns_ML)
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
	  <th>OLS</th>
	  <th>Tree</th>
	  <th>NN</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>OOS-Rsquared</th>
	  <td>0.000</td>
	  <td>0.0254</td>
	  <td>0.1625</td>
	  <td>-0.0773</td>
	</tr>
	<tr>
	  <th>Corr. between forecast and target</th>
	  <td>-0.036</td>
	  <td>0.1226</td>
	  <td>0.5025</td>
	  <td>0.0710</td>
	</tr>
  </tbody>
</table>
</div>

![png](output_52_1.png)

![png](output_52_2.png)

    Correlation of funds performances:

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
	  <th>Passive</th>
	  <th>Mean</th>
	  <th>OLS</th>
	  <th>Tree</th>
	  <th>NN</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Passive</th>
	  <td>1.0000</td>
	  <td>0.9423</td>
	  <td>0.8279</td>
	  <td>0.5166</td>
	  <td>0.8148</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>0.9423</td>
	  <td>1.0000</td>
	  <td>0.6392</td>
	  <td>0.3936</td>
	  <td>0.7810</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>0.8279</td>
	  <td>0.6392</td>
	  <td>1.0000</td>
	  <td>0.6481</td>
	  <td>0.6207</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>0.5166</td>
	  <td>0.3936</td>
	  <td>0.6481</td>
	  <td>1.0000</td>
	  <td>0.3605</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>0.8148</td>
	  <td>0.7810</td>
	  <td>0.6207</td>
	  <td>0.3605</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

![png](output_52_5.png)

<style  type="text/css" >
</style><table id="T_8f0d9_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Mean</th>        <th class="col_heading level0 col1" >Vol</th>        <th class="col_heading level0 col2" >Sharpe</th>        <th class="col_heading level0 col3" >Min</th>        <th class="col_heading level0 col4" >Max</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_8f0d9_level0_row0" class="row_heading level0 row0" >Passive</th>
                        <td id="T_8f0d9_row0_col0" class="data row0 col0" >11.14%</td>
                        <td id="T_8f0d9_row0_col1" class="data row0 col1" >14.62%</td>
                        <td id="T_8f0d9_row0_col2" class="data row0 col2" >76.20%</td>
                        <td id="T_8f0d9_row0_col3" class="data row0 col3" >-16.52%</td>
                        <td id="T_8f0d9_row0_col4" class="data row0 col4" >12.70%</td>
            </tr>
            <tr>
                        <th id="T_8f0d9_level0_row1" class="row_heading level0 row1" >Mean</th>
                        <td id="T_8f0d9_row1_col0" class="data row1 col0" >10.12%</td>
                        <td id="T_8f0d9_row1_col1" class="data row1 col1" >15.17%</td>
                        <td id="T_8f0d9_row1_col2" class="data row1 col2" >66.73%</td>
                        <td id="T_8f0d9_row1_col3" class="data row1 col3" >-23.27%</td>
                        <td id="T_8f0d9_row1_col4" class="data row1 col4" >15.30%</td>
            </tr>
            <tr>
                        <th id="T_8f0d9_level0_row2" class="row_heading level0 row2" >OLS</th>
                        <td id="T_8f0d9_row2_col0" class="data row2 col0" >13.54%</td>
                        <td id="T_8f0d9_row2_col1" class="data row2 col1" >14.99%</td>
                        <td id="T_8f0d9_row2_col2" class="data row2 col2" >90.32%</td>
                        <td id="T_8f0d9_row2_col3" class="data row2 col3" >-17.02%</td>
                        <td id="T_8f0d9_row2_col4" class="data row2 col4" >22.46%</td>
            </tr>
            <tr>
                        <th id="T_8f0d9_level0_row3" class="row_heading level0 row3" >Tree</th>
                        <td id="T_8f0d9_row3_col0" class="data row3 col0" >30.22%</td>
                        <td id="T_8f0d9_row3_col1" class="data row3 col1" >23.70%</td>
                        <td id="T_8f0d9_row3_col2" class="data row3 col2" >127.50%</td>
                        <td id="T_8f0d9_row3_col3" class="data row3 col3" >-8.12%</td>
                        <td id="T_8f0d9_row3_col4" class="data row3 col4" >69.99%</td>
            </tr>
            <tr>
                        <th id="T_8f0d9_level0_row4" class="row_heading level0 row4" >NN</th>
                        <td id="T_8f0d9_row4_col0" class="data row4 col0" >24.37%</td>
                        <td id="T_8f0d9_row4_col1" class="data row4 col1" >36.11%</td>
                        <td id="T_8f0d9_row4_col2" class="data row4 col2" >67.48%</td>
                        <td id="T_8f0d9_row4_col3" class="data row4 col3" >-47.78%</td>
                        <td id="T_8f0d9_row4_col4" class="data row4 col4" >42.52%</td>
            </tr>
    </tbody></table>

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
	  <th>Passive</th>
	  <td>-0.6182</td>
	  <td>1.2525</td>
	  <td>-0.0694</td>
	  <td>-0.0941</td>
	  <td>-0.5080</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-03-31</td>
	  <td>1613 days</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>-0.5703</td>
	  <td>3.1574</td>
	  <td>-0.0674</td>
	  <td>-0.0966</td>
	  <td>-0.5177</td>
	  <td>2000-08-31</td>
	  <td>2002-09-30</td>
	  <td>2013-07-31</td>
	  <td>4717 days</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>0.0999</td>
	  <td>4.7525</td>
	  <td>-0.0645</td>
	  <td>-0.0964</td>
	  <td>-0.5193</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2011-04-30</td>
	  <td>1277 days</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>4.7814</td>
	  <td>36.4059</td>
	  <td>-0.0387</td>
	  <td>-0.0586</td>
	  <td>-0.1512</td>
	  <td>2011-04-30</td>
	  <td>2011-09-30</td>
	  <td>2011-10-31</td>
	  <td>184 days</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>0.0118</td>
	  <td>4.4900</td>
	  <td>-0.1440</td>
	  <td>-0.2397</td>
	  <td>-0.8326</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2013-07-31</td>
	  <td>2100 days</td>
	</tr>
  </tbody>
</table>
</div>

<style  type="text/css" >
</style><table id="T_53bde_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >alpha</th>        <th class="col_heading level0 col1" >SPY</th>        <th class="col_heading level0 col2" >r-squared</th>        <th class="col_heading level0 col3" >Treynor Ratio</th>        <th class="col_heading level0 col4" >Info Ratio</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_53bde_level0_row0" class="row_heading level0 row0" >Passive</th>
                        <td id="T_53bde_row0_col0" class="data row0 col0" >0.00%</td>
                        <td id="T_53bde_row0_col1" class="data row0 col1" >1.0000</td>
                        <td id="T_53bde_row0_col2" class="data row0 col2" >100.00%</td>
                        <td id="T_53bde_row0_col3" class="data row0 col3" >0.1114</td>
                        <td id="T_53bde_row0_col4" class="data row0 col4" >nan%</td>
            </tr>
            <tr>
                        <th id="T_53bde_level0_row1" class="row_heading level0 row1" >Mean</th>
                        <td id="T_53bde_row1_col0" class="data row1 col0" >-0.77%</td>
                        <td id="T_53bde_row1_col1" class="data row1 col1" >0.9779</td>
                        <td id="T_53bde_row1_col2" class="data row1 col2" >88.79%</td>
                        <td id="T_53bde_row1_col3" class="data row1 col3" >0.1035</td>
                        <td id="T_53bde_row1_col4" class="data row1 col4" >-15.13%</td>
            </tr>
            <tr>
                        <th id="T_53bde_level0_row2" class="row_heading level0 row2" >OLS</th>
                        <td id="T_53bde_row2_col0" class="data row2 col0" >4.08%</td>
                        <td id="T_53bde_row2_col1" class="data row2 col1" >0.8491</td>
                        <td id="T_53bde_row2_col2" class="data row2 col2" >68.55%</td>
                        <td id="T_53bde_row2_col3" class="data row2 col3" >0.1595</td>
                        <td id="T_53bde_row2_col4" class="data row2 col4" >48.56%</td>
            </tr>
            <tr>
                        <th id="T_53bde_level0_row3" class="row_heading level0 row3" >Tree</th>
                        <td id="T_53bde_row3_col0" class="data row3 col0" >20.89%</td>
                        <td id="T_53bde_row3_col1" class="data row3 col1" >0.8375</td>
                        <td id="T_53bde_row3_col2" class="data row3 col2" >26.68%</td>
                        <td id="T_53bde_row3_col3" class="data row3 col3" >0.3608</td>
                        <td id="T_53bde_row3_col4" class="data row3 col4" >102.94%</td>
            </tr>
            <tr>
                        <th id="T_53bde_level0_row4" class="row_heading level0 row4" >NN</th>
                        <td id="T_53bde_row4_col0" class="data row4 col0" >1.95%</td>
                        <td id="T_53bde_row4_col1" class="data row4 col1" >2.0128</td>
                        <td id="T_53bde_row4_col2" class="data row4 col2" >66.40%</td>
                        <td id="T_53bde_row4_col3" class="data row4 col3" >0.1211</td>
                        <td id="T_53bde_row4_col4" class="data row4 col4" >9.31%</td>
            </tr>
    </tbody></table>

### Notes from ML Methods

- The CART method gets a positive OOS-R-squared.
- The NN has a negative OOS-R-squared, even though we're looking at in-sample results!
- The hyper-parameters of these models have not been tuned in any serious fashion.
- The CART method gets a huge Sharpe, alpha, Info ratio, positive skewness, and tiny Max Drawdown.
- We shouldn't be too surprised by the impressive CART performance given that it is an extremely flexible model prone to over-fitting, and we're examining in-sample results.
- This makes it even more glaring that the NN cannot generate better results in-sample.

# 6. Machine-Learning OOS

Another Extension section that was not originally listed in the homework.

This is just exploratory. Like in Section 5, we are not taking the tuning of the CART or NN seriously.

```python
BURN_PERIODS = 60
MODEL = 'ALL'


forecasts_MLOOS = pd.DataFrame(columns=methods,index=spy.index,dtype='float64')

methods = ['OLS', 'Tree', 'NN']
est = dict()

y = spy.squeeze('columns').ravel()
Xlag = sigs_lag[model_map[MODEL]]
X = sigs[model_map[MODEL]]
    
for method in methods:
    
    print(method)
    
    for t in spy.index[BURN_PERIODS-1:]:
        yt = spy.loc[:t].values.ravel()
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

forecasts_MLOOS.insert(0,'Mean', rets[['SPY']].expanding().mean().shift(1).dropna())

# prefer to date forecast by date of forecasted value, not date it was calculated
forecasts_MLOOS = forecasts_MLOOS.shift(1).dropna()

forecasts_MLOOS
```

    OLS
    Tree
    NN

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
	  <th>OLS</th>
	  <th>Tree</th>
	  <th>NN</th>
	</tr>
	<tr>
	  <th>Date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1998-03-31</th>
	  <td>0.0158</td>
	  <td>0.0206</td>
	  <td>0.0375</td>
	  <td>0.0572</td>
	</tr>
	<tr>
	  <th>1998-04-30</th>
	  <td>0.0167</td>
	  <td>0.0232</td>
	  <td>0.0374</td>
	  <td>0.0489</td>
	</tr>
	<tr>
	  <th>1998-05-31</th>
	  <td>0.0172</td>
	  <td>0.0216</td>
	  <td>0.0279</td>
	  <td>0.0411</td>
	</tr>
	<tr>
	  <th>1998-06-30</th>
	  <td>0.0171</td>
	  <td>0.0168</td>
	  <td>0.0247</td>
	  <td>0.0435</td>
	</tr>
	<tr>
	  <th>1998-07-31</th>
	  <td>0.0165</td>
	  <td>0.0190</td>
	  <td>0.0317</td>
	  <td>0.0506</td>
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
	  <td>0.0091</td>
	  <td>0.0053</td>
	  <td>0.0074</td>
	  <td>0.0355</td>
	</tr>
	<tr>
	  <th>2021-07-31</th>
	  <td>0.0091</td>
	  <td>0.0019</td>
	  <td>0.0011</td>
	  <td>0.0624</td>
	</tr>
	<tr>
	  <th>2021-08-31</th>
	  <td>0.0092</td>
	  <td>0.0062</td>
	  <td>-0.0014</td>
	  <td>0.0528</td>
	</tr>
	<tr>
	  <th>2021-09-30</th>
	  <td>0.0092</td>
	  <td>0.0043</td>
	  <td>0.0064</td>
	  <td>0.0412</td>
	</tr>
	<tr>
	  <th>2021-10-31</th>
	  <td>0.0093</td>
	  <td>0.0035</td>
	  <td>0.0019</td>
	  <td>0.0293</td>
	</tr>
  </tbody>
</table>
<p>284 rows × 4 columns</p>
</div>

## Investment

The sizing of the strategies is too big to be comparable if we use 

$$w_t = 100 * \text{forecast}$$

Thus we use

$$w_t = \frac{\sigma^{\text{mkt}}_t}{\sigma_t^i} * \text{forecast}$$

which will mean each strategy tries to have vol nearly equal to the target return, SPY.

```python
wts_MLOOS = 100 * forecasts_MLOOS

spy_MLOOS, _ = spy.align(forecasts_MLOOS, join='right', axis=0)

fund_returns_MLOOS = wts_MLOOS * spy_MLOOS.values
fund_returns_MLOOS.insert(0,'Passive', spy_MLOOS)

sigma_t = fund_returns_MLOOS.rolling(24).std()
relative_vols = pd.DataFrame(sigma_t[['Passive']].to_numpy() / sigma_t.drop(columns=['Passive']).to_numpy(),columns=sigma_t.drop(columns=['Passive']).columns, index=sigma_t.index)
wts_t = relative_vols * wts_MLOOS
fund_returns_MLOOS = wts_t * spy_MLOOS.values
fund_returns_MLOOS.insert(0,'Passive', spy_MLOOS)

fund_returns_MLOOS.dropna(inplace=True)
```

```python
summary_forecast_strategy(forecasts_MLOOS,spy_MLOOS,fund_returns_MLOOS)
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
	  <th>OLS</th>
	  <th>Tree</th>
	  <th>NN</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>OOS-Rsquared</th>
	  <td>0.0000</td>
	  <td>-0.037</td>
	  <td>-0.2099</td>
	  <td>-0.5796</td>
	</tr>
	<tr>
	  <th>Corr. between forecast and target</th>
	  <td>-0.0719</td>
	  <td>0.038</td>
	  <td>-0.1230</td>
	  <td>-0.0594</td>
	</tr>
  </tbody>
</table>
</div>

![png](output_58_1.png)

![png](output_58_2.png)

    Correlation of funds performances:

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
	  <th>Passive</th>
	  <th>Mean</th>
	  <th>OLS</th>
	  <th>Tree</th>
	  <th>NN</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Passive</th>
	  <td>1.0000</td>
	  <td>0.9937</td>
	  <td>0.4452</td>
	  <td>0.2885</td>
	  <td>0.3542</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>0.9937</td>
	  <td>1.0000</td>
	  <td>0.4944</td>
	  <td>0.3237</td>
	  <td>0.3707</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>0.4452</td>
	  <td>0.4944</td>
	  <td>1.0000</td>
	  <td>0.6363</td>
	  <td>0.5254</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>0.2885</td>
	  <td>0.3237</td>
	  <td>0.6363</td>
	  <td>1.0000</td>
	  <td>0.6715</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>0.3542</td>
	  <td>0.3707</td>
	  <td>0.5254</td>
	  <td>0.6715</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

![png](output_58_5.png)

<style  type="text/css" >
</style><table id="T_59296_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Mean</th>        <th class="col_heading level0 col1" >Vol</th>        <th class="col_heading level0 col2" >Sharpe</th>        <th class="col_heading level0 col3" >Min</th>        <th class="col_heading level0 col4" >Max</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_59296_level0_row0" class="row_heading level0 row0" >Passive</th>
                        <td id="T_59296_row0_col0" class="data row0 col0" >8.49%</td>
                        <td id="T_59296_row0_col1" class="data row0 col1" >15.02%</td>
                        <td id="T_59296_row0_col2" class="data row0 col2" >56.52%</td>
                        <td id="T_59296_row0_col3" class="data row0 col3" >-16.52%</td>
                        <td id="T_59296_row0_col4" class="data row0 col4" >12.70%</td>
            </tr>
            <tr>
                        <th id="T_59296_level0_row1" class="row_heading level0 row1" >Mean</th>
                        <td id="T_59296_row1_col0" class="data row1 col0" >8.62%</td>
                        <td id="T_59296_row1_col1" class="data row1 col1" >14.24%</td>
                        <td id="T_59296_row1_col2" class="data row1 col2" >60.58%</td>
                        <td id="T_59296_row1_col3" class="data row1 col3" >-15.79%</td>
                        <td id="T_59296_row1_col4" class="data row1 col4" >12.51%</td>
            </tr>
            <tr>
                        <th id="T_59296_level0_row2" class="row_heading level0 row2" >OLS</th>
                        <td id="T_59296_row2_col0" class="data row2 col0" >11.12%</td>
                        <td id="T_59296_row2_col1" class="data row2 col1" >15.66%</td>
                        <td id="T_59296_row2_col2" class="data row2 col2" >71.03%</td>
                        <td id="T_59296_row2_col3" class="data row2 col3" >-17.52%</td>
                        <td id="T_59296_row2_col4" class="data row2 col4" >21.97%</td>
            </tr>
            <tr>
                        <th id="T_59296_level0_row3" class="row_heading level0 row3" >Tree</th>
                        <td id="T_59296_row3_col0" class="data row3 col0" >1.86%</td>
                        <td id="T_59296_row3_col1" class="data row3 col1" >15.71%</td>
                        <td id="T_59296_row3_col2" class="data row3 col2" >11.85%</td>
                        <td id="T_59296_row3_col3" class="data row3 col3" >-26.25%</td>
                        <td id="T_59296_row3_col4" class="data row3 col4" >20.59%</td>
            </tr>
            <tr>
                        <th id="T_59296_level0_row4" class="row_heading level0 row4" >NN</th>
                        <td id="T_59296_row4_col0" class="data row4 col0" >-1.95%</td>
                        <td id="T_59296_row4_col1" class="data row4 col1" >17.39%</td>
                        <td id="T_59296_row4_col2" class="data row4 col2" >-11.20%</td>
                        <td id="T_59296_row4_col3" class="data row4 col3" >-20.62%</td>
                        <td id="T_59296_row4_col4" class="data row4 col4" >24.52%</td>
            </tr>
    </tbody></table>

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
	  <th>Passive</th>
	  <td>-0.5151</td>
	  <td>1.0908</td>
	  <td>-0.0747</td>
	  <td>-0.0973</td>
	  <td>-0.5080</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-03-31</td>
	  <td>1613 days</td>
	</tr>
	<tr>
	  <th>Mean</th>
	  <td>-0.4898</td>
	  <td>1.0478</td>
	  <td>-0.0680</td>
	  <td>-0.0891</td>
	  <td>-0.4724</td>
	  <td>2007-10-31</td>
	  <td>2009-02-28</td>
	  <td>2012-08-31</td>
	  <td>1766 days</td>
	</tr>
	<tr>
	  <th>OLS</th>
	  <td>0.3961</td>
	  <td>4.8928</td>
	  <td>-0.0635</td>
	  <td>-0.0985</td>
	  <td>-0.4407</td>
	  <td>2009-02-28</td>
	  <td>2011-09-30</td>
	  <td>2014-05-31</td>
	  <td>1918 days</td>
	</tr>
	<tr>
	  <th>Tree</th>
	  <td>-1.3729</td>
	  <td>8.0397</td>
	  <td>-0.0777</td>
	  <td>-0.1337</td>
	  <td>-0.4847</td>
	  <td>2000-07-31</td>
	  <td>2002-10-31</td>
	  <td>2007-04-30</td>
	  <td>2464 days</td>
	</tr>
	<tr>
	  <th>NN</th>
	  <td>-0.6021</td>
	  <td>5.7649</td>
	  <td>-0.0868</td>
	  <td>-0.1486</td>
	  <td>-0.7326</td>
	  <td>2000-08-31</td>
	  <td>2011-10-31</td>
	  <td>NaT</td>
	  <td>NaT</td>
	</tr>
  </tbody>
</table>
</div>

<style  type="text/css" >
</style><table id="T_1d91d_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >alpha</th>        <th class="col_heading level0 col1" >SPY</th>        <th class="col_heading level0 col2" >r-squared</th>        <th class="col_heading level0 col3" >Treynor Ratio</th>        <th class="col_heading level0 col4" >Info Ratio</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_1d91d_level0_row0" class="row_heading level0 row0" >Passive</th>
                        <td id="T_1d91d_row0_col0" class="data row0 col0" >-0.00%</td>
                        <td id="T_1d91d_row0_col1" class="data row0 col1" >1.0000</td>
                        <td id="T_1d91d_row0_col2" class="data row0 col2" >100.00%</td>
                        <td id="T_1d91d_row0_col3" class="data row0 col3" >0.0849</td>
                        <td id="T_1d91d_row0_col4" class="data row0 col4" >nan%</td>
            </tr>
            <tr>
                        <th id="T_1d91d_level0_row1" class="row_heading level0 row1" >Mean</th>
                        <td id="T_1d91d_row1_col0" class="data row1 col0" >0.63%</td>
                        <td id="T_1d91d_row1_col1" class="data row1 col1" >0.9415</td>
                        <td id="T_1d91d_row1_col2" class="data row1 col2" >98.74%</td>
                        <td id="T_1d91d_row1_col3" class="data row1 col3" >0.0916</td>
                        <td id="T_1d91d_row1_col4" class="data row1 col4" >39.42%</td>
            </tr>
            <tr>
                        <th id="T_1d91d_level0_row2" class="row_heading level0 row2" >OLS</th>
                        <td id="T_1d91d_row2_col0" class="data row2 col0" >7.18%</td>
                        <td id="T_1d91d_row2_col1" class="data row2 col1" >0.4640</td>
                        <td id="T_1d91d_row2_col2" class="data row2 col2" >19.82%</td>
                        <td id="T_1d91d_row2_col3" class="data row2 col3" >0.2397</td>
                        <td id="T_1d91d_row2_col4" class="data row2 col4" >51.23%</td>
            </tr>
            <tr>
                        <th id="T_1d91d_level0_row3" class="row_heading level0 row3" >Tree</th>
                        <td id="T_1d91d_row3_col0" class="data row3 col0" >-0.70%</td>
                        <td id="T_1d91d_row3_col1" class="data row3 col1" >0.3017</td>
                        <td id="T_1d91d_row3_col2" class="data row3 col2" >8.33%</td>
                        <td id="T_1d91d_row3_col3" class="data row3 col3" >0.0617</td>
                        <td id="T_1d91d_row3_col4" class="data row3 col4" >-4.66%</td>
            </tr>
            <tr>
                        <th id="T_1d91d_level0_row4" class="row_heading level0 row4" >NN</th>
                        <td id="T_1d91d_row4_col0" class="data row4 col0" >-5.43%</td>
                        <td id="T_1d91d_row4_col1" class="data row4 col1" >0.4098</td>
                        <td id="T_1d91d_row4_col2" class="data row4 col2" >12.54%</td>
                        <td id="T_1d91d_row4_col3" class="data row4 col3" >-0.0475</td>
                        <td id="T_1d91d_row4_col4" class="data row4 col4" >-33.38%</td>
            </tr>
    </tbody></table>

### Notes on the results

- The OOS R-squared is massively negative for CART and NN!
- CART was amazing in-sample, but OOS, the Sharpe is horrible, the alpha is negative, and the risk statistics are bad.
- NN does the worst of all of them OOS. Negative mean return, let alone alpha. The max drawdown is horrible.

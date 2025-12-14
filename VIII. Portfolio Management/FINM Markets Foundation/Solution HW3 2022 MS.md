---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Solution HW3 2022 MS
---

# Solution HW3 2022 MS
<div style="text-align: right"> Mark Hendricks </div>

<left>FINM 36700 - Portfolio Theory and Risk Management</left> 

<br>
<left>Autumn 2022</left>

<h1><center> Homework 3 </center></h1>
<center>Due on Monday, Oct 17</center>

<h4>Solution - Maneet Singh</h4>

<h4>Email - maneetsingh@uchicago.edu</h4>

- Sections 1 and 3 are to be submitted, and they may be tested in Midterm 1.
- Sections 2 and 4 are not graded or submitted, and they will NOT be covered by Midterm 1, but rather we will discuss them in the Week 4 Class session.

## 1. Modeling Volatility and VaR

Use the returns on the S&P 500 $(r_M)$ and 1-month T-bills, $(r_f)$ provided in "barnstable analysis data.xlsx". For the full sample of SPY returns, 1926-2022, calculate the LEVEL, (not log,) excess market returns (against the treasury returns.) We use this level excess return data throughout this section.

### 1. Historic VaR.

Starting at t = 61, calculate the historic-based VaR, based on the expanding sample from period 1 (Jan 1926) to $t − 1$. By historic VaR, we mean simply taking the 5th quantile for the historic sample up to time $t − 1$. Of course, a sample size that is not a multiple of 100 will require some interpolation to get a 5th quantile. Your statistical package should handle this fine.

Denote this as $\tilde{r}^{VaR, 0.05}_{t,historic}$ which is the best estimate of the time-t VaR based on data through $t − 1$.

- Plot $\tilde{r}^{VaR, 0.05}_{t,historic}$ historic over time.
- Calculate the frequency of periods in which $\tilde{r} < \tilde{r}^{VaR, 0.05}_{t,historic}$
- What drawbacks do you see in this historic VaR?

### 2. Volatility

We will calculate a time-series of volatility estimates using a few different methods. For each, we use σt to denote our estimate of the time-t return volatility, as based on data over periods 1 (Jan 1926) through $t − 1$, but not including $t$ itself.

- <b>Expanding Series$^1$</b>

$$
\sigma^2_{t,expanding} = \frac{1}{t-1}\sum_{\tau = 1}^{t-1}\tilde{r}^2_{\tau}
$$

Begin the calculation at t = 61, so that the first estimate is based on 60 data points.

- <b>Rolling Window</b>

$$
\sigma^2_{t,rolling} = \frac{1}{m}\sum_{l = 1}^{m}\tilde{r}^2_{t-l}
$$

Use m = 60, and begin the calculation at the t = 61, (so that the calculation has a full 60 data points.)

- For each of these methods, plot $\sigma_t$. (Plot the vol, not the variance.)
- For each method, calculate the 5th percentile, 1-month-ahead VaR. We use a slight simplification of the normal VaR formula, by dropping µ from that formula, and rounding the normal distribution z-score to -1.65.
$$\tilde{r}^{VaR, 0.05}_{t,vol} = −1.65 \sigma_t$$
- For each of these vol-based VaR estimates, calculate the frequency of periods in which

$$
\tilde{r} < \tilde{r}^{VaR, 0.05}_{t,vol}
$$

- Compare and contrast your results among each other and relative to the historic method in the previous problem.

### 3. CVaR

Re-do the previous two problems, but this time calculating CVaR instead of VaR, (still for q = .05.) That is, calculate CVaR for

- the empirical cdf
- the normal model, using expanding volatility estimates
- the normal model, using rolling volatility estimates

### 4. Extra

We may discuss this after Midterm 1, but it is not part of the Midterm 1 material.

For the VaR calculations of Problem 2.2, and 2.3 try using the following models to estimate volatility:

- <b> Exponentially Weighted Moving Average (EWMA) </b>

	$$
    \sigma^2_{t, EWMA} = \theta \sigma^2_{t-1, EWMA} + (1-\theta)\tilde{r}^2_{t-1}
    $$

	Rather than estimating θ, simply use θ = 0.97, and initialize with σ1 = 0.15.

- <b> GARCH(1,1) model </b>
	To estimate GARCH(1,1), try using the ARCH package in Python. The default estimation implementation is fine. You should be familiar with EWMA and GARCH from the August Review.

## 2. Barnstable's Analysis

<b>The Risk of Stocks in the Long-Run: The Barnstable College Endowment [HBS 9-296073].</b>

<b>This section is not graded, and you do not need to submit your answers.</b>

- But you are expected to consider these issues and be ready to discuss them.
- This section requires no empirical analysis; answer solely based on the material given in the case.

### 1. Barnstable's Philosophy

(a) What has Barnstable's investment strategy been in the past?

(b) Explain the logic behind their view that stocks are safer in the long run.

(c) What assumptions underly Barnstable's belief in the long-run safety of stocks?

### 2. Two Proposals

(a) Describe the two proposals Barnstable is considering for how to take advantage of their view regarding the long-run safety of stocks.

(b) How is the trust different from simply shorting the risk-free rate to take a levered position in stocks?

(c) Do these proposals take the same bet on long-run stock performance? In what outcomes will they have different returns?

(d) Do the two proposals differ in their risk?

### 3. Do you recommend a direct investment in the S&P, the trust or the puts?

## 3. Estimating Underperformance

Use the returns on the S&P 500 $(r^M)$ and 1-month T-bills, $(r^f)$ provided in "barnstable analysis data.xlsx".

Barnstable's estimates of mean and volatility are based on the subsample of 1965 to 1999. We consider this subsample, as well as 2000-2022, as well as the full sample of 1926-2022. We only have data through August of 2022, but no adjustment is needed for the fact that you have only the partial year–just use what you have.

### 1. Summary Statistics

(a) Report the following (annualized) statistics.

|||   ('1965-1999', 'mean') |   ('1965-1999', 'vol') |   ('2000-2022', 'mean') |   ('2000-2022', 'vol') |   ('1926-2022', 'mean') |   ('1926-2022', 'vol') |
|:-------------------------|:-------------------------|------------------------:|-----------------------:|------------------------:|-----------------------:|------------------------:|-----------------------:|
|('levels')|$r^M$|||||||
|('levels')|$r^f$|||||||
|('levels')|$\tilde{r}^M$|||||||
|('logs')|$𝚛^M$|||||||
|('logs')|$𝚛^f$|||||||
|('logs')|$\tilde{𝚛}^M$|||||||

(b) Comment on how the full-sample return stats compare to the sub-sample stats. Comment on how the level stats compare to the log stats.

### 2. Recall the following…

- If $x ∼ \mathcal{N}(\mu_x, \sigma^2_x)$, then
	$$
    Pr [x < l] = \Phi_\mathcal{N} (L)
    $$

	$$
    L = \frac{c − \mu_x}{\sigma_x}
    $$

  where $\Phi_{\mathcal{N}}$ denotes the standard normal cdf.

- Remember that cumulative log returns are simply the sum of the single-period log returns,

$$
𝚛^M_{t,t+h} = \sum^h_{i=1}𝚛^M_{t+i}
$$

- It will be convenient to use and denote sample averages. We use the following notation for an h-period average ending at time t + h

$$
\bar{𝚛}^M_{t,t+h} = \frac{1}{h} \sum^h_{i=1}𝚛^M_{t+i}
$$

Calculate the probability that the cumulative market return will fall short of the cumulative risk-free return.

$$Pr[R^M_{t,t+h} < R^f_{t,t+h}]$$ <div style="text-align: right"> (1)</div> 

To analyze this analytically, convert the probability statement above to a probability statement

about mean log returns.

(a) Calculate (1) using the subsample 1965-1999.

(b) Report the precise probability for h = 15 and h = 30 years.

(c) Plot the probability as a function of the investment horizon, h, for 0 < h ≤ 30 years.

### 3. Use the sample 1965-2022 to reconsider the 30-year probability. As of the end of 2022, calculate the probability of the stock return underperforming the risk-free rate over the next 30 years. That is, $R^M_{t,t+h}$ underperforming $R^f_{t,t+h}$ for 0 < h ≤ 30.

### 4. Let's consider how things turned out relative to Barnstable's 1999 expectations.

(a) What was the probability (based on the 1999 estimate of $\mu$,) that the 23-year market return, $R^M_{t,t+23}$, would be smaller than that realized in 2000-2022? Note that we are asking about the market return, not the excess market return. Continue using the 1965-1999 sample standard deviation for $\sigma$.

(b) Suppose Barnstable had implemented the put-option strategy with the growing strike of 6%? Based on the 2000-2022 performance, what is the probability that the 2000-2029 cumulative market return will be low enough to make the puts in the money? For the calculation, update your estimates of $\mu$, $\sigma$ to be the estimates based on 1965-2022.

## 4. Extensions

<b> This section is not graded, and you do not need to submit your answers. We may discuss some of these extensions. </b>

### 1. Let's consider how Barnstable would have done if they had positioned the problem in excess returns rather than beating a fixed benchmark based on historic risk-free rates.

(a) Based on the end-of-1999 parameters, $\tilde{\mu}$ and $\tilde{\sigma}$, what was the probability that the log market excess return, $\tilde{𝚛}^M$ would have a smaller 22-year average than what happened in 2000-2022, based on $\tilde{\mu}$ estimated from the 1965-1999 average??

$$
p(h) = Pr[\bar{\tilde{𝚛}}^M_{t,t+21} < \bar{\tilde{𝚛}}^M_{2000,2022}]
$$

(b) Suppose they struck the puts to the realized risk-free rate instead of a fixed 6%. Calculate the probability that the puts will be in the money, given what has already occurred in 2000-2022. As above, calculate this using full-sample parameter estimates of 1965-2022.

(c) Explain the risk Barnstable took on the future movements in the risk-free rate.

### 2. The probability of shortfall calculations for Barnstable presume that we can simply use sample estimates for the probability calculations that involve population parameters for the means and variances of log returns. Let's consider how this estimation uncertainty leads to uncertainty in the probability of shortfall calculation.

(a) Assuming log returns are normally distributed, (or just using the CLT,) calculate the 5th and 95th percentiles for our confidence interval of the mean of excess log returns: $\tilde{\mu} = \mu − \mu_f$

(b) Denote these $\tilde{\mu}_{.05}$, $\tilde{\mu}_{.95}$, and recalculate the probability of shortfall from (1). Plot the confidence bounds as a function of the investment horizon, $0 < h ≤ 30$.

(c) Has $\tilde{\mu}$ from 2000-2022 been outside the 5th and 95th percentile estimates derived from the data in 1965-1999?

(d) Does uncertainty around $\tilde{\mu}$ materially impact the estimates? Does it change your recommendation to Barnstable regarding the trust versus the puts?

### 3. Does the analysis change much if we use the pre-1965 data in our estimates of the market return and risk-free rate?

### 4. The case assumes stock returns are iid. and lognormally distributed.

$$
𝚛^M_t \sim \mathcal{N}(\mu, \sigma^2), \forall t
$$

$$
r^M_t = exp (𝚛^M_t) − 1
$$

The following table lists return stats given by the case, Notice that Barnstable's mean estimate is for the level return, $r^M_t$, while Barnstable's volatility estimate corresponds to the log-return, $r^M_t$. Here and elsewhere it is at times useful to translate mean and volatility from level to logs—at least for the lognormal case.

<div style="width:100px"></div>         | mean         | variance
------------- | ------------ | -------------
<b>level</b> return of stocks | <div style="width:290px"> $\mathbb{E}[r^M_t] = 0.13$ </div> | <div style="width:290px"> $var[r^M_t] = ?$
<b>log</b> return of stocks   | $\mathbb{E}[𝚛^M_t] = ?$ | $var[𝚛^M_t] = (0.16)^2$
<b>log</b> riskless benchmark | $\mathbb{E}[𝚛^f] = 0.06$ | 

Use the following formulas to translate log-return means and variances to level-return means and varianaces.

$$
\mathbb{E}[r^M_t] = e^{\mu + \frac{1}{2}\sigma^2}-1
$$

$$
var[r^M_t] = e^{2\mu + \sigma^2}(e^{\sigma^2} - 1)
$$

<h1><span style="color:#00008B">Solutions</span></h1>

```python
import os
import pandas as pd
from scipy.stats import norm
import numpy as np
import matplotlib.pyplot as plt
from arch import arch_model
from arch.univariate import GARCH, EWMAVariance
import warnings
warnings.filterwarnings('ignore')
import_path = os.getcwd() + '/finm-portfolio-2022/'


rets = pd.read_excel(import_path + '/data/barnstable_analysis_data.xlsx', sheet_name=1)
rets.set_index('date', inplace=True)
rets.fillna(method='ffill', inplace=True)
rets['Excess SPY Returns'] = rets['SPX'] - rets['TB1M'] 
rets.head()
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
	  <th>SPX</th>
	  <th>TB1M</th>
	  <th>Excess SPY Returns</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1926-01-30</th>
	  <td>-0.001783</td>
	  <td>0.003061</td>
	  <td>-0.004844</td>
	</tr>
	<tr>
	  <th>1926-02-27</th>
	  <td>-0.033296</td>
	  <td>0.002612</td>
	  <td>-0.035908</td>
	</tr>
	<tr>
	  <th>1926-03-31</th>
	  <td>-0.057708</td>
	  <td>0.002601</td>
	  <td>-0.060309</td>
	</tr>
	<tr>
	  <th>1926-04-30</th>
	  <td>0.038522</td>
	  <td>0.002270</td>
	  <td>0.036252</td>
	</tr>
	<tr>
	  <th>1926-05-28</th>
	  <td>0.013623</td>
	  <td>0.002691</td>
	  <td>0.010932</td>
	</tr>
  </tbody>
</table>
</div>

## 1.1

```python
historic_VaR = rets['Excess SPY Returns'].shift().expanding(min_periods = 60).quantile(.05)
historic_VaR.plot()


plt.title('Historic VaR')
plt.ylabel('VaR')
plt.xlabel('Date')
plt.show()

exceed = sum(rets['Excess SPY Returns'] < historic_VaR)/len(historic_VaR.dropna())
print('5% VaR backtest: {:,.2%}'.format(exceed))
```

![png](output_30_0.png)

    5% VaR backtest: 3.09%

<b> Drawbacks of Historic VaR </b>

1. Backward Looking: Looks at only the historical data while estimating the losses in the future. Availability of sufficient and relevant data becomes a challenge. 
2. Ghosting Effect: Equal Weights on past observations that may never be relevant again. For example, low returns during 2008 (which may not be relevant anymore) are given the same weight as the most recent observations
3. Slow to React: Less Weight on most recent observations. A recent significant loss still does not impact historical VaR because it has the same weight as the other observations

## 1.2

```python
stdev = np.sqrt((rets['Excess SPY Returns']**2).shift(1).expanding(60).mean().to_frame('Expanding Window'))
stdev['Rolling Window'] = np.sqrt((rets['Excess SPY Returns']**2).shift(1).rolling(60).mean())
stdev.plot()
plt.title('Estimating Volatility')
plt.ylabel('Volatility Estimates')
plt.xlabel('Date')
plt.show()
```

![png](output_33_0.png)

```python
VaR = -1.65*stdev
VaR['Historic'] = historic_VaR

VaR.plot()
plt.title('Comparing VaR Estimates')
plt.ylabel('5% VaR')
plt.xlabel('Date')
plt.show()
```

![png](output_34_0.png)

```python
freq_df = pd.DataFrame(index = ['Frequency'], columns = VaR.columns)

for col in freq_df:
    freq_df[col] = len(VaR[rets.loc[VaR.index, 'Excess SPY Returns'] < VaR[col]]) / len(VaR[col].dropna().index)
    
display(freq_df.style.format('{:,.2%}'))
```

<style  type="text/css" >
</style><table id="T_905e0_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Expanding Window</th>        <th class="col_heading level0 col1" >Rolling Window</th>        <th class="col_heading level0 col2" >Historic</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_905e0_level0_row0" class="row_heading level0 row0" >Frequency</th>
                        <td id="T_905e0_row0_col0" class="data row0 col0" >1.73%</td>
                        <td id="T_905e0_row0_col1" class="data row0 col1" >4.91%</td>
                        <td id="T_905e0_row0_col2" class="data row0 col2" >3.09%</td>
            </tr>
    </tbody></table>

Clearly, rolling window is a much better estimate because it place more weight on the most recent observations, and hence is quicker to react to high volatilities than other methods.

## 1.3

```python
historic_CVaR = []

for i in range(len(rets)):
    if i < 61:
        historic_CVaR.append(np.nan)
    else:
        window = rets[['Excess SPY Returns']][:i-1]
        CVaR = window[window < window.quantile(0.05)]['Excess SPY Returns'].mean()
        historic_CVaR.append(CVaR)

scaling_for_vol = norm.pdf(1.65)/0.05 #trucated normal

CVaR = -scaling_for_vol * stdev

CVaR['Historic'] = historic_CVaR

CVaR.plot()
plt.title('Comparing CVaR Estimates')
plt.ylabel('5% CVaR')
plt.xlabel('Date')
plt.show()
```

![png](output_38_0.png)

## 1.4

```python
GARCH = arch_model(rets['Excess SPY Returns'], vol='Garch', p=1, o=0, q=1, dist='Normal')
GARCH_model = GARCH.fit()
GARCH_model.params
```

    Iteration:      1,   Func. Count:      6,   Neg. LLF: 33656530.82918315
    Iteration:      2,   Func. Count:     17,   Neg. LLF: 3891762719536.27
    Iteration:      3,   Func. Count:     27,   Neg. LLF: 27371668.21264346
    Iteration:      4,   Func. Count:     39,   Neg. LLF: 38313990015.81327
    Iteration:      5,   Func. Count:     47,   Neg. LLF: 4488.611986492331
    Iteration:      6,   Func. Count:     56,   Neg. LLF: -1693.2649397522705
    Iteration:      7,   Func. Count:     64,   Neg. LLF: 156943565852021.97
    Iteration:      8,   Func. Count:     74,   Neg. LLF: -1932.0501363421276
    Optimization terminated successfully    (Exit mode 0)
                Current function value: -1932.0501398145875
                Iterations: 12
                Function evaluations: 74
                Gradient evaluations: 8





    mu          0.007873
    omega       0.000065
    alpha[1]    0.103382
    beta[1]     0.875061
    Name: params, dtype: float64

```python
stdev[['GARCH','EWMA']] = None

### Initialize with the given parameter
stdev.iloc[0,2:] = 0.15
theta = 0.97

### Simulate the rest of the period using the initial variance given
for i in range(1, len(stdev)):
    ### Forecast variance by plugging the GARCH and IGARCH parameters into their respective equations
    stdev['EWMA'].iloc[i] = np.sqrt((stdev['EWMA'].iloc[i-1]**2) * theta + (1-theta)*(rets[['Excess SPY Returns']].iloc[i-1,0]**2))
    stdev['GARCH'].iloc[i] = np.sqrt(GARCH_model.params['omega'] + (stdev['GARCH'].iloc[i-1]**2) * GARCH_model.params['beta[1]'] + GARCH_model.params['alpha[1]']*(rets[['Excess SPY Returns']].iloc[i-1,0]**2))
    
stdev.dropna(inplace=True)

VaR = -1.65*stdev
VaR['Historic'] = historic_VaR

VaR.plot()
plt.title('Comparing VaR Estimates')
plt.ylabel('5% VaR')
plt.xlabel('Date')
plt.show()

freq_df = pd.DataFrame(index = ['Frequency'], columns = VaR.columns)

for col in freq_df:
    freq_df[col] = len(VaR[rets.loc[VaR.index, 'Excess SPY Returns'] < VaR[col]]) / len(VaR[col].dropna().index)
    
display(freq_df.style.format('{:,.2%}'))
```

![png](output_41_0.png)

<style  type="text/css" >
</style><table id="T_c41cf_" ><thead>    <tr>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >Expanding Window</th>        <th class="col_heading level0 col1" >Rolling Window</th>        <th class="col_heading level0 col2" >GARCH</th>        <th class="col_heading level0 col3" >EWMA</th>        <th class="col_heading level0 col4" >Historic</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_c41cf_level0_row0" class="row_heading level0 row0" >Frequency</th>
                        <td id="T_c41cf_row0_col0" class="data row0 col0" >1.73%</td>
                        <td id="T_c41cf_row0_col1" class="data row0 col1" >4.91%</td>
                        <td id="T_c41cf_row0_col2" class="data row0 col2" >4.45%</td>
                        <td id="T_c41cf_row0_col3" class="data row0 col3" >4.27%</td>
                        <td id="T_c41cf_row0_col4" class="data row0 col4" >3.09%</td>
            </tr>
    </tbody></table>

## 2.1

(a) What has Barnstable's investment strategy been in the past?

Barnstable has foregone diversification to a large extent and has instead focused on equities, primarily U.S. equities.

(b) Explain the logic behind their view that stocks are safer in the long run.

The logic stems from the idea that if log returns are i.i.d., then the annualized average (log) return will converge to the population mean. Thus, if the population mean of equities is higher than other asset classes, the h-period return is almost certainly larger for equities as gets large. Given that Barnstable is a long-term investor without special need for liquidity, they are willing to maximize the total h-period return even if the one-year returns are riskier.

(c) What assumptions underly Barnstable's belief in the long-run safety of stocks?

The model for convergence in the long-run was based on i.i.d.log returns. So to the extent that means and volatilities change over time, the model would need to be adjusted to capture these conditional statistics.

## 2.2

(a) Describe the two proposals Barnstable is considering for how to take advantage of their view regarding the long-run safety of stocks.

For the trust, Barnstable has exposure to all the upside of the equity market, but is actually insuring against the downside risk as they simply return the asset if it underperforms the 6% strike growth rate. This is a little strange given that Barnstable is confident that the stock will not under-perform. Contrast this with Barnstable's proposed strategy of selling puts. The payoff at maturity of the put is

$$
\Gamma^{selling puts}_{30} = -max(e^{0.06 * 30} - r^M_{t, t+30}, 0) 
$$

Selling puts increases Barnstable's downside risk in exchange for collecting the put price. Barnstable believes this downside risk is very unlikely.

(b) How is the trust different from simply shorting the risk-free rate to take a levered position in stocks?

The trust allows Barnstable to increase their position in the equity market exactly as would be accomplished by borrowing at the risk-free rate and investing it in stocks. But the trust locks the lenders (preferred shares) into a 30-year commitment. This removes Barnstable's liquidity risk, ensuring that they can hold the investment for the long-run.

(c) Do these proposals take the same bet on long-run stock performance? In what outcomes will they have different returns?

Common shares are identical to buying call options on the stock, with a strike price growing at the  benchmark. The payoff at maturity of the common share is

$$
\Gamma^{selling puts}_{30} = -max(r^M_{t, t+30} - e^{0.06 * 30}, 0) 
$$

The preferred shareholders have an exposure identical to being long the cumulative riskless rate of 6% and selling puts on the stock, $r^M_{t, t+30}$. So the payoff is

$$
\Gamma^{selling puts}_{30} = e^{0.06 * 30} - max(e^{0.06 * 30} - r^M_{t, t+30}, 0) 
$$

One can verify that the payoff of the preferred and common shares indeed sums to the payoff of $r^M_{t, t+30}$.

(d) Do the two proposals differ in their risk?

The risk profiles are enormously different. As described above, the put strategy means Barnstable has a huge liability with respect to stock under-performance. The trust strategy does not have any liability, as that is born by the preferred shareholders. There is a risk to long-run under-performance, and the trust neutralizes Barnstable from this risk while the put strategy loads into it.

## 2.3

The trust, it gets rid of Barnstable's liquidity risk when it comes to holding the position, and doesn't have the extreme tail risk that selling the puts does.

## 3.1

```python
stats_table = pd.DataFrame(
            index = pd.MultiIndex.from_tuples([('levels', 'SPX'),('levels', 'RiskFree'),('levels', 'Excess SPX'),
                                              ('logs', 'SPX'),('logs', 'RiskFree'), ('logs', 'Excess SPX')]),
            columns = pd.MultiIndex.from_tuples([('1965-1999','mean'),('1965-1999','vol'),
                                                ('2000-2022','mean'),('2000-2022','vol'),
                                                ('1926-2022','mean'),('1926-2022','vol')]))

stats_table[('1965-1999','mean')] = list(np.mean(rets.loc['1965':'1999']) * 12) + list(np.mean(np.log(1+rets.loc['1965':'1999']))*12)
stats_table[('1965-1999','vol')] = list(np.std(rets.loc['1965':'1999']) * np.sqrt(12)) + list(np.std(np.log(1+rets.loc['1965':'1999'])) * np.sqrt(12))
stats_table[('2000-2022','mean')] = list(np.mean(rets.loc['2000':'2022']) * 12) + list(np.mean(np.log(1+rets.loc['2000':'2022']))*12)
stats_table[('2000-2022','vol')] = list(np.std(rets.loc['2000':'2022']) * np.sqrt(12)) + list(np.std(np.log(1+rets.loc['2000':'2022'])) * np.sqrt(12))
stats_table[('1926-2022','mean')] = list(np.mean(rets) * 12) + list(np.mean(np.log(1+rets))*12)
stats_table[('1926-2022','vol')] = list(np.std(rets) * np.sqrt(12)) + list(np.std(np.log(1+rets)) * np.sqrt(12))

display(stats_table.style.format('{:,.2%}'))
```

<style  type="text/css" >
</style><table id="T_b9c40_" ><thead>    <tr>        <th class="blank" ></th>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" colspan="2">1965-1999</th>        <th class="col_heading level0 col2" colspan="2">2000-2022</th>        <th class="col_heading level0 col4" colspan="2">1926-2022</th>    </tr>    <tr>        <th class="blank" ></th>        <th class="blank level1" ></th>        <th class="col_heading level1 col0" >mean</th>        <th class="col_heading level1 col1" >vol</th>        <th class="col_heading level1 col2" >mean</th>        <th class="col_heading level1 col3" >vol</th>        <th class="col_heading level1 col4" >mean</th>        <th class="col_heading level1 col5" >vol</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_b9c40_level0_row0" class="row_heading level0 row0" rowspan="3">levels</th>
                        <th id="T_b9c40_level1_row0" class="row_heading level1 row0" >SPX</th>
                        <td id="T_b9c40_row0_col0" class="data row0 col0" >12.94%</td>
                        <td id="T_b9c40_row0_col1" class="data row0 col1" >14.92%</td>
                        <td id="T_b9c40_row0_col2" class="data row0 col2" >7.59%</td>
                        <td id="T_b9c40_row0_col3" class="data row0 col3" >15.23%</td>
                        <td id="T_b9c40_row0_col4" class="data row0 col4" >11.35%</td>
                        <td id="T_b9c40_row0_col5" class="data row0 col5" >18.73%</td>
            </tr>
            <tr>
                                <th id="T_b9c40_level1_row1" class="row_heading level1 row1" >RiskFree</th>
                        <td id="T_b9c40_row1_col0" class="data row1 col0" >6.15%</td>
                        <td id="T_b9c40_row1_col1" class="data row1 col1" >0.72%</td>
                        <td id="T_b9c40_row1_col2" class="data row1 col2" >1.43%</td>
                        <td id="T_b9c40_row1_col3" class="data row1 col3" >0.50%</td>
                        <td id="T_b9c40_row1_col4" class="data row1 col4" >3.14%</td>
                        <td id="T_b9c40_row1_col5" class="data row1 col5" >0.85%</td>
            </tr>
            <tr>
                                <th id="T_b9c40_level1_row2" class="row_heading level1 row2" >Excess SPX</th>
                        <td id="T_b9c40_row2_col0" class="data row2 col0" >6.79%</td>
                        <td id="T_b9c40_row2_col1" class="data row2 col1" >14.99%</td>
                        <td id="T_b9c40_row2_col2" class="data row2 col2" >6.16%</td>
                        <td id="T_b9c40_row2_col3" class="data row2 col3" >15.28%</td>
                        <td id="T_b9c40_row2_col4" class="data row2 col4" >8.21%</td>
                        <td id="T_b9c40_row2_col5" class="data row2 col5" >18.76%</td>
            </tr>
            <tr>
                        <th id="T_b9c40_level0_row3" class="row_heading level0 row3" rowspan="3">logs</th>
                        <th id="T_b9c40_level1_row3" class="row_heading level1 row3" >SPX</th>
                        <td id="T_b9c40_row3_col0" class="data row3 col0" >11.76%</td>
                        <td id="T_b9c40_row3_col1" class="data row3 col1" >14.94%</td>
                        <td id="T_b9c40_row3_col2" class="data row3 col2" >6.40%</td>
                        <td id="T_b9c40_row3_col3" class="data row3 col3" >15.34%</td>
                        <td id="T_b9c40_row3_col4" class="data row3 col4" >9.57%</td>
                        <td id="T_b9c40_row3_col5" class="data row3 col5" >18.66%</td>
            </tr>
            <tr>
                                <th id="T_b9c40_level1_row4" class="row_heading level1 row4" >RiskFree</th>
                        <td id="T_b9c40_row4_col0" class="data row4 col0" >6.13%</td>
                        <td id="T_b9c40_row4_col1" class="data row4 col1" >0.71%</td>
                        <td id="T_b9c40_row4_col2" class="data row4 col2" >1.43%</td>
                        <td id="T_b9c40_row4_col3" class="data row4 col3" >0.50%</td>
                        <td id="T_b9c40_row4_col4" class="data row4 col4" >3.13%</td>
                        <td id="T_b9c40_row4_col5" class="data row4 col5" >0.85%</td>
            </tr>
            <tr>
                                <th id="T_b9c40_level1_row5" class="row_heading level1 row5" >Excess SPX</th>
                        <td id="T_b9c40_row5_col0" class="data row5 col0" >5.64%</td>
                        <td id="T_b9c40_row5_col1" class="data row5 col1" >15.09%</td>
                        <td id="T_b9c40_row5_col2" class="data row5 col2" >4.97%</td>
                        <td id="T_b9c40_row5_col3" class="data row5 col3" >15.41%</td>
                        <td id="T_b9c40_row5_col4" class="data row5 col4" >6.44%</td>
                        <td id="T_b9c40_row5_col5" class="data row5 col5" >18.72%</td>
            </tr>
    </tbody></table>

Full sample estimates are significantly different for the excess returns, this is because of the low risk-free rate during that period. The log returns show lower mean returns as expected.

## 3.2

```python
def prob(mu, sigma, h):
    return norm.cdf(-np.sqrt(h)*mu/sigma)

mu = stats_table[('1965-1999', 'mean')][('logs', 'Excess SPX')]
sigma = stats_table[('1965-1999', 'vol')][('logs', 'Excess SPX')]

print('Probability of SPX underperforming RF in the next 15 years after 1999: {:,.2%}'.
      format(prob(mu = mu, sigma = sigma, h = 15)))

print('Probability of SPX underperforming RF in the next 30 years after 1999: {:,.2%}'.
      format(prob(mu = mu, sigma = sigma, h = 30)))
```

    Probability of SPX underperforming RF in the next 15 years after 1999: 7.39%
    Probability of SPX underperforming RF in the next 30 years after 1999: 2.03%

```python
h = list(range(1, 31))
probs = pd.DataFrame([prob(mu, sigma, x) for x in h], columns=['Probability of Underperformance'], index = h)
probs.plot()
plt.show()
```

![png](output_50_0.png)

## 3.3

```python
mu = np.log(1+rets['Excess SPY Returns'].loc['1965':'2022']).mean() * 12
sigma = np.log(1+rets['Excess SPY Returns'].loc['1965':'2022']).std() * np.sqrt(12)
h = list(range(1, 31))

probs = pd.DataFrame([prob(mu, sigma, x) for x in h], columns=['Probability of Underperformance'], index = h)
probs.plot()
plt.show()
```

![png](output_52_0.png)

## 3.4

```python
mu = stats_table[('1965-1999', 'mean')][('logs', 'SPX')] - stats_table[('2000-2022', 'mean')][('logs', 'SPX')]
sigma = stats_table[('1965-1999', 'vol')][('logs', 'SPX')]

print('Probability of SPX underperforming in the next 23 years after 1999: {:,.2%}'.
      format(prob(mu = mu, sigma = sigma, h = 23)))
```

    Probability of SPX underperforming in the next 23 years after 1999: 4.27%

```python
strike = np.log(1.06)

mean_return = np.log(1+rets['SPX'].loc['1965':]).mean() * 12

sigma = np.log(1 + rets['SPX'].loc['1965':]).std() * np.sqrt(12)

performance = np.log(1+rets['SPX'].loc['2000':]).mean() * 12

mu = ((23/7) * (performance - strike)) - (mean_return - strike)

print('Probability of Puts ending in the money: {:,.2%}'.
      format(prob(mu, sigma, 7)))
```

    Probability of Puts ending in the money: 63.24%

## 4.1

```python
mu_tilde = stats_table[('1965-1999', 'mean')][('logs', 'Excess SPX')]
bar_r_tilde = stats_table[('2000-2022', 'mean')][('logs', 'Excess SPX')]
sigma_tilde = stats_table[('1965-1999', 'vol')][('logs', 'Excess SPX')]


print('Probability of Underperformance compared to realized returns in 2022: {:,.2%}'.
      format(prob(mu_tilde - bar_r_tilde, sigma_tilde, 22)))
```

    Probability of Underperformance compared to realized returns in 2022: 41.75%

```python
mu = 23/7 * (stats_table[('2000-2022', 'mean')][('logs', 'Excess SPX')]) + mean_return


print('Probability of ending in the money: {:,.4%}'.
      format(prob(mu, sigma, 7)))
```

    Probability of ending in the money: 0.0003%

## 4.2

```python
mu_5 = stats_table[('1965-1999', 'mean')][('logs', 'Excess SPX')] + norm.ppf(0.05) * stats_table[('1965-1999', 'vol')][('logs', 'Excess SPX')]

mu_95 = stats_table[('1965-1999', 'mean')][('logs', 'Excess SPX')] + norm.ppf(0.95) * stats_table[('1965-1999', 'vol')][('logs', 'Excess SPX')]

print('Confidence Intervals')

print('5%: {:,.2%}, 95%: {:,.2%}'.format(mu_5, mu_95))
```

    Confidence Intervals
    5%: -19.18%, 95%: 30.46%

```python
h = list(range(1, 31))
means = [prob(mu, sigma, x) for x in h]
lower = [prob(mu_5, sigma, x) for x in h]
upper = [prob(mu_95, sigma, x) for x in h]

probs = pd.DataFrame({'5% Percentile': lower, '95% Percentile': upper}, index = h)
probs.plot()
plt.show()
```

![png](output_61_0.png)

```python
display(pd.DataFrame(stats_table[('2000-2022', 'mean')]).style.format('{:,.2%}'))
```

<style  type="text/css" >
</style><table id="T_9c426_" ><thead>    <tr>        <th class="blank" ></th>        <th class="blank level0" ></th>        <th class="col_heading level0 col0" >2000-2022</th>    </tr>    <tr>        <th class="blank" ></th>        <th class="blank level1" ></th>        <th class="col_heading level1 col0" >mean</th>    </tr></thead><tbody>
                <tr>
                        <th id="T_9c426_level0_row0" class="row_heading level0 row0" rowspan="3">levels</th>
                        <th id="T_9c426_level1_row0" class="row_heading level1 row0" >SPX</th>
                        <td id="T_9c426_row0_col0" class="data row0 col0" >7.59%</td>
            </tr>
            <tr>
                                <th id="T_9c426_level1_row1" class="row_heading level1 row1" >RiskFree</th>
                        <td id="T_9c426_row1_col0" class="data row1 col0" >1.43%</td>
            </tr>
            <tr>
                                <th id="T_9c426_level1_row2" class="row_heading level1 row2" >Excess SPX</th>
                        <td id="T_9c426_row2_col0" class="data row2 col0" >6.16%</td>
            </tr>
            <tr>
                        <th id="T_9c426_level0_row3" class="row_heading level0 row3" rowspan="3">logs</th>
                        <th id="T_9c426_level1_row3" class="row_heading level1 row3" >SPX</th>
                        <td id="T_9c426_row3_col0" class="data row3 col0" >6.40%</td>
            </tr>
            <tr>
                                <th id="T_9c426_level1_row4" class="row_heading level1 row4" >RiskFree</th>
                        <td id="T_9c426_row4_col0" class="data row4 col0" >1.43%</td>
            </tr>
            <tr>
                                <th id="T_9c426_level1_row5" class="row_heading level1 row5" >Excess SPX</th>
                        <td id="T_9c426_row5_col0" class="data row5 col0" >4.97%</td>
            </tr>
    </tbody></table>

No,  from 2000-2022 has not been outside the confidence interval defined by the 1965-1999 data.

From the data we have looked at, it appears that excess return mean is much more stationary than SPY return mean or risk-free rate mean, and we can create better future estimates of excess return mean. Consequently, it makes sense not to enter a contract where a strike (or rate of return paid out, e.g. in the trust) is based off a historical risk-free rate and is set as a constant. Barnstable should find a proposal where their exposure is the risk-free rate.

## 4.3

Yes it should change quite a bit, as volatility for stocks is much higher, and excess return is much higher for the period, due to the mean of  being much lower.

```python
display(round(stats_table, 4))
```

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead tr th {
        text-align: left;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr>
	  <th></th>
	  <th></th>
	  <th colspan="2" halign="left">1965-1999</th>
	  <th colspan="2" halign="left">2000-2022</th>
	  <th colspan="2" halign="left">1926-2022</th>
	</tr>
	<tr>
	  <th></th>
	  <th></th>
	  <th>mean</th>
	  <th>vol</th>
	  <th>mean</th>
	  <th>vol</th>
	  <th>mean</th>
	  <th>vol</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th rowspan="3" valign="top">levels</th>
	  <th>SPX</th>
	  <td>0.1294</td>
	  <td>0.1492</td>
	  <td>0.0759</td>
	  <td>0.1523</td>
	  <td>0.1135</td>
	  <td>0.1873</td>
	</tr>
	<tr>
	  <th>RiskFree</th>
	  <td>0.0615</td>
	  <td>0.0072</td>
	  <td>0.0143</td>
	  <td>0.0050</td>
	  <td>0.0314</td>
	  <td>0.0085</td>
	</tr>
	<tr>
	  <th>Excess SPX</th>
	  <td>0.0679</td>
	  <td>0.1499</td>
	  <td>0.0616</td>
	  <td>0.1528</td>
	  <td>0.0821</td>
	  <td>0.1876</td>
	</tr>
	<tr>
	  <th rowspan="3" valign="top">logs</th>
	  <th>SPX</th>
	  <td>0.1176</td>
	  <td>0.1494</td>
	  <td>0.0640</td>
	  <td>0.1534</td>
	  <td>0.0957</td>
	  <td>0.1866</td>
	</tr>
	<tr>
	  <th>RiskFree</th>
	  <td>0.0613</td>
	  <td>0.0071</td>
	  <td>0.0143</td>
	  <td>0.0050</td>
	  <td>0.0313</td>
	  <td>0.0085</td>
	</tr>
	<tr>
	  <th>Excess SPX</th>
	  <td>0.0564</td>
	  <td>0.1509</td>
	  <td>0.0497</td>
	  <td>0.1541</td>
	  <td>0.0644</td>
	  <td>0.1872</td>
	</tr>
  </tbody>
</table>
</div>

## 4.4

```python
def log_mu(level_mu, log_sigma):
    return np.log(level_mu + 1) - 0.5 * (log_sigma**2)

print('Mean log return of stocks: ' + str(round(log_mu(.13, .16), 4)))
```

    Mean log return of stocks: 0.1094

No, this is not the same as the 11.72% given in the case.

```python
def level_var(level_mu, log_sigma):
    log_mu_ = log_mu(level_mu, log_sigma)
    return np.exp(2*log_mu_ + log_sigma) * (np.exp(log_sigma**2) - 1)

print('Variance of level return of stocks: ' + str(round(level_var(.13, .16), 4)))
print('Standard deviation of level return of stocks: ' + str(round(np.sqrt(level_var(.13, .16)), 4)))
```

    Variance of level return of stocks: 0.0379
    Standard deviation of level return of stocks: 0.1946

(c) Mean and volatility are larger for level returns.

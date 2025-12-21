---
title: Chapter 12 - Historical Simulation and Extreme Value Theory
parent_directory: Part 3 Market Risk
formatted: 2025-12-21 02:30:00 AM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: claude-code
primary_tags:
   - historical simulation
   - extreme value theory
   - value at risk
   - expected shortfall
   - market risk measurement
secondary_tags:
   - volatility scaling
   - bootstrap method
   - stressed var
   - pareto distribution
   - tail risk estimation
cssclasses: academia
---

# Chapter 12

# Historical Simulation and Extreme Value Theory

In this chapter, we cover the most popular approach for calculating value at risk (VaR) and expected shortfall (ES) for market risk. It is known as historical simulation. It involves using the day-to-day changes in the values of market variables that have been observed in the past in a direct way to estimate the probability distribution of the change in the value of the current portfolio between today and tomorrow.

After describing the mechanics of the historical simulation approach, the chapter explains a number of extensions that can improve accuracy. It also covers stressed VaR and stressed ES, which are used by regulators to determine capital for market risk. Finally, it covers extreme value theory. This is a tool that can be used to improve VaR and ES estimates and to increase the confidence level used for them.

All the models covered in this chapter are illustrated with a portfolio consisting of an investment in four different stock indices. Historical data on the indices and VaR calculations can be found at www-2.rotman.utoronto.ca/~hull/RMFI/VaRExample.

# 12.1 The Methodology

Historical simulation involves using past data as a guide to what will happen in the future. Suppose that we want to calculate VaR for a portfolio using a one-day time horizon, a  $99\%$  confidence level, and 501 days of data. (We use 501 days of data because, as we will see, it leads to 500 scenarios being created.)

The first step is to identify the market variables affecting the portfolio. These market variables are sometimes referred to as risk factors. They typically include exchange rates, interest rates, stock indices, volatilities, and so on. Data are then collected on movements in these market variables over the most recent 501 days. This provides 500 alternative scenarios for what can happen between today and tomorrow. Denote the first day for which we have data as Day 0, the second day as Day 1, and so on. Scenario 1 is where the changes in the values of all variables are the same as they were between Day 0 and Day 1, Scenario 2 is where they are the same as between Day 1 and Day 2, and so on. For each scenario, the dollar change in the value of the portfolio between today and tomorrow is calculated. This defines a probability distribution for daily loss (with gains counted as negative losses) in the value of the portfolio. The 99 percentile of this distribution can be estimated as the fifth worst outcome. The estimate of VaR is the loss when we are at this 99 percentile point. We are  $99\%$  certain that we will not take a loss greater than the VaR estimate if the changes in market variables in the past 500 days are representative of what will happen between today and tomorrow. ES is the average loss conditional that we are in the  $1\%$  tail of the loss distribution. VaR is estimated as the fifth worst loss. ES can be estimated by averaging the losses that are worse than VaR—that is, the four worst losses.

To express the approach algebraically, define  $\nu_{i}$  as the value of a market variable on Day  $i$  and suppose that today is Day  $n$ . For most market variables it is appropriate to create scenarios by assuming that percentage changes will be repeated. The  $i$ th scenario in the historical simulation approach then assumes that the value of the market variable tomorrow will be

$$
\text {V a l u e} = \nu_ {n} \frac {\nu_ {i}}{\nu_ {i - 1}} \tag {12.1}
$$

For some variables such as interest rates, credit spreads, and volatilities, actual rather than percentage changes in market variables are considered. It is then the case that equation (12.1) becomes:

$$
\text {V a l u e} = \nu_ {n} + \nu_ {i} - \nu_ {i - 1}
$$

To simplify the discussion, in the rest of this chapter we will assume that the historical simulation is based on percentage changes in the underlying market variables.

# 12.1.1 Illustration

To illustrate the calculations underlying the approach, suppose that an investor in the United States owns, on July 8, 2020, a portfolio worth 10 million consisting of investments in four stock indices: the S&P 500 in the United States, the FTSE 100 in the United Kingdom, the CAC 40 in France, and the Nikkei 225 in Japan. The value of the investment in each index on July 8, 2020, is shown in Table 12.1. An Excel spreadsheet containing 501 days of historical data on the closing prices of the four indices and a complete set of VaR calculations are on the author's website.

# www-2.rotman.utoronto.ca/\~hull/RMFI/VaRExample

The calculations for this section are in worksheets 1 to 3. Note that the data we use are for total return indices where it is assumed that dividends are reinvested in the indices.

Because we are considering a U.S. investor, the values of the FTSE 100, CAC 40, and Nikkei 225 must be measured in U.S. dollars. For example, the FTSE 100 total return index stood at 6,515.12 on May 9, 2018 (the beginning of the 501-day period considered), when the exchange rate was 1.3553 USD per GBP. This means that, measured in U.S. dollars, it was at 6,515.12 × 1.3553 = 8,830.23. An extract from the data with all indices measured in U.S. dollars is shown in Table 12.2.

July 8, 2020 is an interesting date to choose in evaluating an equity investment. The COVID-19 pandemic had led to a big drop in equity markets in March 2020. By July

Table 12.1 Investment Portfolio Used for VaR Calculations July 8, 2020

<table><tr><td>Index</td><td>Portfolio Value (000s)</td></tr><tr><td>S&amp;P 500</td><td>4,000</td></tr><tr><td>FTSE 100</td><td>3,000</td></tr><tr><td>CAC 40</td><td>1,000</td></tr><tr><td>Nikkei 225</td><td>2,000</td></tr><tr><td>Total</td><td>10,000</td></tr></table>

Table 12.2 U.S. Dollar Equivalent of Total Return Stock Indices for Historical Simulation Calculation

<table><tr><td>Day</td><td>Date</td><td>S&amp;P 500</td><td>FTSE 100</td><td>CAC 40</td><td>Nikkei 225</td></tr><tr><td>0</td><td>May 9, 2018</td><td>5,292.90</td><td>8,830.23</td><td>16,910.33</td><td>322.40</td></tr><tr><td>1</td><td>May 10, 2018</td><td>5,343.70</td><td>8,926.56</td><td>16,915.41</td><td>321.24</td></tr><tr><td>2</td><td>May 11, 2018</td><td>5,354.69</td><td>8,982.76</td><td>17,065.64</td><td>326.20</td></tr><tr><td>3</td><td>May 14, 2018</td><td>5,359.66</td><td>8,999.31</td><td>17,121.67</td><td>328.03</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td></tr><tr><td>499</td><td>July 7, 2020</td><td>6,445.59</td><td>7,269.36</td><td>15,784.97</td><td>345.40</td></tr><tr><td>500</td><td>July 8, 2020</td><td>6,496.14</td><td>7,255.04</td><td>15,540.44</td><td>342.01</td></tr></table>

2020 the U.S market had largely recovered, but there was still a great deal of uncertainty about how long the pandemic would continue and when the economy would recover from it.

Table 12.3 shows the values of the indices (measured in U.S. dollars) on July 9, 2020, for the scenarios considered. Scenario 1 (the first row in Table 12.3) shows the values of indices on July 9, 2020, assuming that their percentage changes between July 8 and July 9, 2020, are the same as they were between May 9 and May 10, 2018; Scenario 2 (the second row in Table 12.3) shows the values of indices on July 9, 2020, assuming these percentage changes are the same as those between May 10 and May 11, 2018; and so on. In general, Scenario  $i$  assumes that the percentage changes in the indices between July 8 and July 9, 2020 are the same as they were between Day  $i - 1$  and Day  $i$  for  $1 \leq i \leq 500$ . The 500 rows in Table 12.3 are the 500 scenarios considered.

The S&P 500 total return index was 6496.14 on July 8, 2020. On May 10, 2018, it was 5,343.70 up from 5,292.90 on May 9, 2018. The value of the S&P 500 under Scenario 1 is therefore

$$
6, 4 9 6. 1 4 \times \frac {5 , 3 4 3 . 7 0}{5 , 2 9 2 . 9 0} = 6, 5 5 8. 4 9
$$

Similarly, the value of the FTSE 100, the CAC 40, and the Nikkei 225 total return indices (measured in U.S. dollars) are 7,334.19, 15,545.12, and 340.79, respectively. The value of the portfolio under Scenario 1 is therefore (in 000s):

$$
\begin{array}{l} 4, 0 0 0 \times \frac {6 , 5 5 8 . 4 9}{6 , 4 9 6 . 1 4} + 3, 0 0 0 \times \frac {7 , 3 3 4 . 1 9}{7 , 2 5 5 . 0 4} + 1, 0 0 0 \times \frac {1 5 , 5 4 5 . 1 2}{1 5 , 5 4 0 . 4 4} + 2, 0 0 0 \times \frac {3 4 0 . 7 9}{3 4 2 . 0 1} \\ = 1 0, 0 6 4. 2 5 7 \\ \end{array}
$$

The portfolio therefore has a gain of  \$64,257 under Scenario 1. A similar calculation is carried out for the other scenarios. A histogram for the losses (gains are negative losses) is shown in Figure 12.1. (The bars on the histogram represent losses, in\$ 000s, in the ranges 450 to 550, 350 to 450, 250 to 350 and so on.)

Table 12.3 Scenarios Generated for July 9, 2020, Using Data in Table 12.2 (negative losses are gains)

<table><tr><td>Scenario Number</td><td>S&amp;P 500</td><td>FTSE 100</td><td>CAC 40</td><td>Nikkei 225</td><td>Portfolio Value (\$000s)</td><td>Loss (\$000s)</td></tr><tr><td>1</td><td>6,558.49</td><td>7,334.19</td><td>15,545.12</td><td>340.79</td><td>10,064.257</td><td>-64.257</td></tr><tr><td>2</td><td>6,509.50</td><td>7,300.72</td><td>15,678.46</td><td>347.28</td><td>10,066.822</td><td>-66.822</td></tr><tr><td>3</td><td>6,502.17</td><td>7,268.41</td><td>15,591.47</td><td>343.93</td><td>10,023.722</td><td>-23.722</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td><td></td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td><td></td></tr><tr><td>499</td><td>6,425.90</td><td>7,293.40</td><td>15,543.89</td><td>341.21</td><td>9,968.126</td><td>31.874</td></tr><tr><td>500</td><td>6,547.09</td><td>7,240.75</td><td>15,299.71</td><td>338.66</td><td>9,990.361</td><td>9.639</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/a3e05bc37585ce334ca50bec352420e2535e500ce66abbeca87c71b0345565e4.jpg)

Figure 12.1 Histogram of Losses between July 8, 2020, and July 9, 2020 for the 500 Scenarios Considered (Gains are negative losses.)

Table 12.4 Losses Ranked from Highest to Lowest for 500 Scenarios

<table><tr><td>Scenario Number</td><td>Loss (000s)</td></tr><tr><td>427</td><td>922.484</td></tr><tr><td>429</td><td>858.423</td></tr><tr><td>424</td><td>653.541</td></tr><tr><td>415</td><td>490.215</td></tr><tr><td>482</td><td>422.291</td></tr><tr><td>440</td><td>362.733</td></tr><tr><td>426</td><td>360.532</td></tr><tr><td>431</td><td>353.788</td></tr><tr><td>417</td><td>323.505</td></tr><tr><td>433</td><td>305.216</td></tr><tr><td>452</td><td>245.151</td></tr><tr><td>418</td><td>241.561</td></tr><tr><td>140</td><td>231.269</td></tr><tr><td>289</td><td>230.626</td></tr><tr><td>152</td><td>229.683</td></tr><tr><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td></tr></table>

The losses for the 500 different scenarios are then ranked. An extract from the results of doing this is shown in Table 12.4. The worst scenario is number 427. The one-day  $99\%$  value at risk can be estimated as the fifth worst loss. This is 422,291.

Regulators have in the past used the 10-day VaR for determining market risk capital with the understanding that this can be calculated as  $\sqrt{10}$  times the one-day  $99\%$  VaR. (See Section 11.6.1.) In our example this would give the 10-day VaR as

$$
\sqrt {1 0} \times \$ 4 2 2, 2 9 1 = \$ 1, 3 3 5, 4 0 1
$$

As we will see in Chapter 27, regulators now calculate capital (when using the internal models approach) from a series of ten-day expected shortfall calculations where overlapping 10-day periods are used.

Each day, the VaR estimate in our example would be updated using the most recent 501 days of data. Consider, for example, what happens on July 9, 2020 (Day 501). We find out new values for all the market variables and are able to calculate a new value for our portfolio. We then go through the procedure we have outlined to calculate a new VaR. Data on the market variables from May 10, 2018, to July 9, 2020 (Day 1 to Day 501), are used in the calculation. (This gives us the required 500 observations on the percentage changes in market variables; the May 9, 2018, Day 0, values of the market variables are no longer used.) Similarly, on the next trading day, July 10, 2020 (Day 502), data from May 11, 2018, to July 10, 2020 (Day 2 to Day 502), are used to determine VaR; and so on.

In practice, a financial institution's portfolio is, of course, considerably more complicated than the one we have considered here. It is likely to consist of thousands or tens of thousands of positions. Often some of the positions are in forward contracts, options, and other derivatives, which have to be valued for each of the scenarios considered. The portfolio itself is likely to change from day to day. If the financial institution's trading leads to a riskier portfolio, the 10-day  $99\%$  VaR typically increases; if it leads to a less risky portfolio, the VaR typically decreases. The VaR on any given day is calculated on the assumption that the portfolio will remain unchanged over the next business day.

The market variables (or risk factors) that have to be considered in a VaR calculation include exchange rates, commodity prices, and interest rates. In the case of interest rates, a financial institution typically needs several term structures describing different zero-coupon interest rates in each of a number of different currencies in order to value its portfolio. The market variables that are considered are the ones from which these term structures are calculated (see Appendix B for the calculations to obtain the zero-coupon term structure of interest rates). There might be as many as 10 market variables for each zero curve to which the financial institution is exposed.

# 12.1.2 Expected Shortfall

To calculate expected shortfall using historical simulation, we average the losses that are worse than VaR. In the case of our example, the four worst losses ( \$000s) are from scenarios 427, 429, 424, and 415 (see Table 12.4). The average of the losses for these scenarios is\$ 731,166. This is the expected shortfall estimate. (It is debatable whether the average should be taken over the five worst scenarios rather than the four worst ones. Regulators when they use expected shortfall typically only consider scenarios that give rise to losses that are greater than the VaR level.)

# 12.1.3 Stressed VaR and Stressed ES

The calculations given so far assume that the most recent data are used for the historical simulation on any given day. For example, when calculating VaR and ES for the four-index example we used data from the immediately preceding 501 days. We will refer to VaR and ES calculated in this way as current VaR and current ES. However, historical simulations can be based on data from any period in the past. Periods of high volatility will tend to give high values for VaR and ES, whereas periods of low volatility will tend to give low values.

Regulators have introduced measures known as stressed VaR and stressed ES. To calculate the measures, a financial institution must search for the 251-day period that would be particularly stressful for its current portfolio. The data for that 251-day period then play the same role as the 501-day period in our example. The changes in market variables between Day 0 and Day 1 of the 251-day period are used to create the first scenario; the changes in market variables between Day 1 and Day 2 of the 251-day period are used to create the second scenario; and so on. In total, 250 scenarios are created. The one-day  $99\%$  stressed VaR can be calculated as the loss that is midway between the loss for the second worst scenario and the loss for the third worst scenario. The one-day  $99\%$  ES can be calculated as the average of the worst two losses. $^4$

# 12.2 Accuracy of VaR

The historical simulation approach estimates the distribution of portfolio changes from a finite number of observations. As a result, the estimates of percentiles of the distribution are subject to error.

Kendall and Stuart (1972) describe how to calculate a confidence interval for the percentile of a probability distribution when it is estimated from sample data. Suppose that the  $q$ -percentile of the distribution is estimated as  $x$ . The standard error of the estimate is

$$
\frac {1}{f (x)} \sqrt {\frac {(1 - q) q}{n}}
$$ where  $n$  is the number of observations and  $f(x)$  is an estimate of the probability density function of the loss evaluated at  $x$ . The probability density,  $f(x)$ , can be estimated approximately by fitting the empirical data to an appropriate distribution whose properties are known.


# Example 12.1

Suppose we are interested in estimating the 99th percentile of a loss distribution from 500 observations so that  $n = 500$  and  $q = 0.99$ . We can estimate  $f(x)$  by approximating the actual empirical distribution with a standard distribution whose properties are known. Suppose that a normal distribution is chosen as the standard distribution and the best-fit mean and standard deviation are zero and \$10 million, respectively. Using Excel, the 99th percentile is NORMINV(0.99,0,10) or 23.26. The value of  $f(x)$  is NOR-MDIST(23.26,0,10,FALSE) or 0.0027. The standard error of the estimate that is made is

$$

\frac {1}{0 . 0 0 2 7} \times \sqrt {\frac {0 . 0 1 \times 0 . 9 9}{5 0 0}} = 1. 6 7

$$

If the estimate of the 99th percentile using historical simulation is \$25 million, a 95\% confidence interval is from 25 - 1.96 × 1.67 to 25 + 1.96 × 1.67, that is, from \$21.7 million to 28.3 million.

As Example 12.1 illustrates, the standard error of a VaR estimated using historical simulation tends to be quite high. It decreases as the VaR confidence level is decreased. For example, if in Example 12.1 the VaR confidence level had been  $95\%$  instead of  $99\%$ , the standard error would be  $\$0.95$  million instead of  $\$1.67$  million. The standard error declines as the sample size is increased—but only as the square root of the sample size. If we quadrupled the sample size in Example 12.1 from 500 to 2,000 observations, the standard error halves from  $\$1.67$  million to about  $\$0.83$  million.

Additionally, we should bear in mind that historical simulation assumes that the joint distribution of daily changes in market variables is stationary through time. This is unlikely to be exactly true and creates additional uncertainty about VaR.

In the case of the data considered in Tables 12.1 to 12.4, when the loss is measured in  \$000s, the mean is -1.660 and the standard deviation is 120.146. If a normal distribution is assumed, a similar calculation to that in Example 12.1 gives f(x)$  as 0.000222 and the standard error of the estimate (in 000s) is

$$

\frac {1}{0 . 0 0 0 2 2 2} \times \sqrt {\frac {0 . 0 1 \times 0 . 9 9}{5 0 0}} = 2 0. 0 5 9

$$

The estimate of VaR is  \$422,291. This shows that a 95\% confidence interval for the VaR is about\$ 380,000 to 460,000.

The normal distribution is not a particularly good assumption for the loss distribution, because losses have heavier tails than the normal distribution. Better standard error estimates can be obtained by assuming a Pareto distribution for  $f(x)$ , as discussed in Section 12.5.

# 12.3 Extensions

When current VaR and current ES are calculated (using data from an immediately preceding period), the assumption is that recent history is in some sense a good guide to the future. More precisely, it is that the empirical probability distribution estimated for market variables over the immediately preceding period is a good guide to the behavior of the market variables over the next day. Unfortunately, the behavior of market variables is nonstationary. Sometimes the volatility of a market variable is high; sometimes it is low. In this section, we cover extensions of the basic historical simulation approach in Section 12.1 that are designed to adjust for nonstationarity. We also show how an approach known as the bootstrap method can be used to determine standard errors.

# 12.3.1 Weighting of Observations

The basic historical simulation approach assumes that each day in the past is given equal weight. More formally, if we have observations for  $n$  day-to-day changes, each of them is given a weighting of  $1 / n$ . Boudoukh, Richardson, and Whitelaw (1998) suggest that more recent observations should be given more weight because they are more reflective of current volatilities and current macroeconomic conditions. The natural weighting scheme to use is one where weights decline exponentially. (We used this when developing the exponentially weighted moving average model for monitoring volatility in Chapter 8.) The weight assigned to Scenario 1 (which is the one calculated from the most distant data) is  $\lambda$  times that assigned to Scenario 2. This in turn is  $\lambda$  times that given to Scenario 3, and so on. So that the weights add up to 1, the weight given to Scenario  $i$  is

$$

\frac {\lambda^ {n - i} (1 - \lambda)}{1 - \lambda^ {n}}

$$ where  $n$  is the number of scenarios. As  $\lambda$  approaches 1, this approaches the basic historical simulation approach where all observations are given a weight of  $1 / n$ . (See Problem 12.2.)

VaR is calculated by ranking the observations from the worst outcome to the best. Starting at the worst outcome, weights are summed until the required percentile of the distribution is reached. For example, if we are calculating VaR with a  $99\%$  confidence level, we continue summing weights until the sum just exceeds 0.01. We have then reached the  $99\%$  VaR level. The parameter  $\lambda$  can be chosen by trying different values and seeing which one back-tests best. One disadvantage of the exponential weighting approach relative to the basic historical simulation approach is that the effective sample size is reduced. However, we can compensate for this by using a larger value of  $n$ . Indeed, it is not really necessary to discard old days as we move forward in time, because they are given relatively little weight.

Table 12.5 Losses Ranked from Highest to Lowest for 500 Scenarios, with Weights

<table><tr><td>Scenario Number</td><td>Loss (000s)</td><td>Weight</td><td>Cumulative Weight</td></tr><tr><td>427</td><td>922.484</td><td>0.00378</td><td>0.00378</td></tr><tr><td>429</td><td>858.423</td><td>0.00381</td><td>0.00759</td></tr><tr><td>424</td><td>653.541</td><td>0.00372</td><td>0.01131</td></tr><tr><td>415</td><td>490.215</td><td>0.00356</td><td>0.01486</td></tr><tr><td>482</td><td>422.292</td><td>0.00497</td><td>0.01984</td></tr><tr><td>440</td><td>362.733</td><td>0.00403</td><td>0.02387</td></tr><tr><td>426</td><td>360.532</td><td>0.00376</td><td>0.02763</td></tr><tr><td>431</td><td>353.788</td><td>0.00385</td><td>0.03148</td></tr><tr><td>417</td><td>323.505</td><td>0.00359</td><td>0.03507</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td></tr></table>

Table 12.5 shows the results of using this procedure for the portfolio considered in Section 12.1 with  $\lambda = 0.995$ . (See worksheets 4 and 5 on the author's website.) The value of VaR when the confidence level is  $99\%$  is now the third worst loss,  $\653,541$  (not the fifth worst loss of  $\$ 422,291 ). The reason for this result is that recent observations are given more weight and the largest losses have occurred relatively recently. The standard calculation in Section 12.1 gives all observations a weighting of  $1 / 500 = 0.002$ . The highest loss occurred on Scenario 427, and this scenario has a weight of

$$
\frac {(0 . 9 9 5 ^ {7 3}) \times 0 . 0 0 5}{1 - 0 . 9 9 5 ^ {5 0 0}} = 0. 0 0 3 7 8
$$

The 0.01 tail of the loss distribution consists of a probability 0.00378 of a loss of  \$922,484, a 0.00381 probability of a loss of\$ 858,423, and a 0.01 - 0.00378 - 0.00381 = 0.00241 probability of a loss of 653,541. The expected shortfall can therefore be calculated as

$$
\frac {0 . 0 0 3 7 8 \times \$ 9 2 2 , 4 8 4 + 0 . 0 0 3 8 1 \times \$ 8 5 8 , 4 2 3 + 0 . 0 0 2 4 1 \times \$ 6 5 3 , 5 4 1}{0 . 0 1} = \$ 8 3 3, 2 2 8
$$

# 12.3.2 Volatility Scaling for Market Variables

Hull and White (1998) suggest a way of incorporating estimates of volatility into the historical simulation approach. Define the daily volatility for a particular market variable estimated at the end of day  $i - 1$  as  $\sigma_{i}$ . (Estimation procedures have been discussed in Chapter 8.) This can be considered to be an estimate of the daily volatility between the end of day  $i - 1$  and the end of day  $i$ . Suppose that it is now day  $n$  so that the current estimate of the volatility of the market variable (i.e., the volatility between today and tomorrow) is  $\sigma_{n+1}$ .

Suppose that  $\sigma_{n+1}$  is twice  $\sigma_i$  for a particular market variable. This means that we estimate the daily volatility of the market variable to be twice as great today as on day  $i-1$ . The changes we expect to see between today and tomorrow are twice as big as changes between day  $i-1$  and day  $i$ . When carrying out the historical simulation and creating a sample of what could happen between today and tomorrow based on what happened between day  $i-1$  and day  $i$ , it therefore makes sense to multiply the latter by 2. In general, when this approach is used, the expression in equation (12.1) for the value of a market variable under the  $i$ th scenario becomes

$$
\text {V a l u e} = v _ {n} \frac {v _ {i - 1} + \left(v _ {i} - v _ {i - 1}\right) \sigma_ {n + 1} / \sigma_ {i}}{v _ {i - 1}} \tag {12.2}
$$

Each market variable can be handled in the same way.

This approach takes account of volatility changes in a natural and intuitive way and produces VaR estimates that incorporate more current information. The VaR estimates can be greater than any of the historical losses that would have occurred for the current portfolio during the historical period considered. Hull and White produce evidence using exchange rates and stock indices to show that this approach is superior to traditional historical simulation and to the exponential weighting scheme described earlier.

For the data in Table 12.2, the daily volatility estimates, calculated using the exponentially weighted moving average (EWMA) method with the  $\lambda$  parameter equal to 0.94, are shown in Table 12.6. $^{9}$  (See worksheets 6 to 8 on the author's website.) The ratios of the volatility estimated for July 9, 2020 (last row of table), to the volatility estimated for May 10, 2018 (first row of table), are 1.06, 1.21, 1.23, and 1.25 for the S&P 500, FTSE 100, CAC 40, and Nikkei 225, respectively. These are used as multipliers for the actual changes in the indices between May 9 and May 10, as indicated in equation (12.2). Similarly, the ratios of the volatility estimated for July 9, 2020 (last row of Table 12.6),

Table 12.6 Volatilities (\% per Day) Estimated for the Following Day Using EWMA

<table><tr><td>Day</td><td>Date</td><td>S&amp;P 500</td><td>FTSE 100</td><td>CAC 40</td><td>Nikkei 225</td></tr><tr><td>0</td><td>May 9, 2018</td><td>1.66</td><td>1.37</td><td>1.54</td><td>1.32</td></tr><tr><td>1</td><td>May 10, 2018</td><td>1.63</td><td>1.35</td><td>1.49</td><td>1.28</td></tr><tr><td>2</td><td>May 11, 2018</td><td>1.58</td><td>1.32</td><td>1.46</td><td>1.30</td></tr><tr><td>3</td><td>May 14, 2018</td><td>1.53</td><td>1.28</td><td>1.42</td><td>1.26</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td></tr><tr><td>499</td><td>July 7, 2020</td><td>1.80</td><td>1.70</td><td>1.91</td><td>1.68</td></tr><tr><td>500</td><td>July 8, 2020</td><td>1.76</td><td>1.65</td><td>1.89</td><td>1.65</td></tr></table> to the volatility estimated for May 11, 2018 (second row of Table 12.6), are 1.08, 1.22, 1.27, and 1.29 for the S&P 500, FTSE 100, CAC 40, and Nikkei 225, respectively. These are used as multipliers for the actual changes in the indices between May 10 and May 11, 2018. Multipliers for the other 498 daily changes are calculated in the same way.

Table 12.7 shows an extract from a table that ranks losses from the highest to the lowest. Comparing this with Table 12.4, we see that the scenarios generating the biggest losses are not the same. This is because a moderate loss when the estimated volatility is low can lead to a more extreme scenario than a bigger loss when the estimated volatility is high. The one-day  $99\%$  VaR is  $566,492$ . The one-day ES (calculated from the 4 worst scenarios) is  $\$705,855$ . These are more than twice as high as the estimates given by standard calculations.

# 12.3.3 Volatility Scaling for the Portfolio

A variation on the approach we just have described is to use EWMA to monitor the standard deviation of the simulated losses given by successive scenarios in the standard approach in Section 12.1. The losses are those given in the final column of Table 12.3. (See worksheets 9 and 10 on the author's website for the calculations.) An adjusted loss for the  $i$ th scenario is then calculated by multiplying the loss given by the standard approach by the ratio of the estimated standard deviation for the last (500th) scenario to the estimated standard deviation for the  $i$ th scenario. This procedure is much simpler than incorporating volatility on a variable-by-variable basis and has the advantage that changing correlations as well as changing volatilities are implicitly considered. Table 12.8 shows the calculation of the portfolio loss standard deviation and the adjusted losses for our example. (Similarly to before, the Day 1 loss variance is the sample variance calculated over the whole 500-day period, and the  $\lambda$  parameter used in EWMA calculations is 0.94.)

Table 12.7 Losses Ranked from Highest to Lowest for 500 Scenarios When Market Variable Movements Are Adjusted for Volatility

<table><tr><td>Scenario Number</td><td>Loss (000s)</td></tr><tr><td>415</td><td>1,064.165</td></tr><tr><td>427</td><td>607.359</td></tr><tr><td>102</td><td>583.832</td></tr><tr><td>424</td><td>568.064</td></tr><tr><td>289</td><td>566.492</td></tr><tr><td>397</td><td>502.621</td></tr><tr><td>103</td><td>437.660</td></tr><tr><td>140</td><td>430.578</td></tr><tr><td>326</td><td>426.327</td></tr><tr><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td></tr></table>

Table 12.8 Results When Volatility of Simulated Losses Is Monitored

<table><tr><td>Scenario Number</td><td>Loss Given by Standard Approach</td><td>Loss SD (000s)</td><td>SD Ratio</td><td>Adjusted Loss</td></tr><tr><td>1</td><td>-64.257</td><td>120.146</td><td>1.116</td><td>-71.708</td></tr><tr><td>2</td><td>-66.822</td><td>117.544</td><td>1.141</td><td>-76.220</td></tr><tr><td>3</td><td>-23.762</td><td>115.133</td><td>1.165</td><td>-27.672</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td></tr><tr><td>499</td><td>31.874</td><td>138.056</td><td>0.971</td><td>30.955</td></tr><tr><td>500</td><td>9.639</td><td>134.078</td><td>1.000</td><td>9.639</td></tr></table>

Table 12.9 Adjusted Losses Ranked from Highest to Lowest for 500 Scenarios When Simulated Losses Are Adjusted for Their Volatility

<table><tr><td>Scenario Number</td><td>Adjusted Loss (000s)</td></tr><tr><td>405</td><td>1005.299</td></tr><tr><td>397</td><td>545.326</td></tr><tr><td>289</td><td>532.875</td></tr><tr><td>424</td><td>517.985</td></tr><tr><td>427</td><td>517.195</td></tr><tr><td>326</td><td>461.734</td></tr><tr><td>103</td><td>452.468</td></tr><tr><td>288</td><td>400.709</td></tr><tr><td>102</td><td>380.790</td></tr><tr><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td></tr></table>

Table 12.9 shows the ranked adjusted losses. The one-day  $99\%$  VaR is  \$517,195, and the one-day expected shortfall is\$ 650,354.

# 12.3.4 Bootstrap Method

The bootstrap method is a variation on the basic historical simulation approach, aimed at calculating a confidence interval for VaR (current or stressed). It involves creating a set of changes in the portfolio value based on historical movements in market variables in the usual way. We then sample with replacement from these changes to create many new similar data sets. We calculate the VaR for each of the new data sets. Our  $95\%$  confidence interval for VaR is the range between the 2.5 percentile point and the 97.5 percentile point of the distribution of the VaRs calculated from the data sets.

Suppose, for example, that we have 500 days of data. We could sample with replacement 500,000 times from the data to obtain 1,000 different sets of 500 days of data. We calculate the VaR for each set. We then rank the VaRs. Suppose that the 25th largest VaR is  \$5.3 million and the 975th largest VaR is\$ 8.9 million. The 95\% confidence interval for VaR is \$5.3 million to \$8.9 million. Usually, the width of the confidence interval calculated for VaR using the bootstrap method is less than that calculated using the procedure in Section 12.2.

# 12.4 Computational Issues

Historical simulation involves valuing the whole portfolio of a financial institution many times (500 times in our example). This can be computationally very time consuming. This is particularly true when some of the instruments in the portfolio are valued with Monte Carlo simulation, because there is then a simulation within a simulation problem because each trial of the historical simulation involves a Monte Carlo simulation.

To reduce computation time, financial institutions sometimes use an approximation. Consider an instrument whose price,  $P$ , is dependent on a single market variable,  $S$ . An approximate estimate of the change,  $\Delta P$ , in  $P$  resulting from a change,  $\Delta S$ , in  $S$  is given by a Taylor series expansion:

$$
\Delta P = \delta \Delta S + \frac {1}{2} \gamma (\Delta S) ^ {2} \tag {12.3}
$$ where  $\delta$  and  $\gamma$  are the first and second partial derivatives of  $P$  with respect to  $S$ . The values of  $\delta$  and  $\gamma$  are usually known because they are calculated for hedging purposes. (See Chapter 15 for a discussion of this.) This equation can therefore be used as a fast approximate way of calculating the changes in the value of the transaction for the changes in the value of  $S$  that are considered by the historical simulation.


When an instrument depends on several market variables,  $S_{i}(1 \leq i \leq n)$ , equation (12.3) becomes

$$

\Delta P = \sum_ {i = 1} ^ {n} \delta_ {i} \Delta S _ {i} + \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \frac {1}{2} \gamma_ {i j} \Delta S _ {i} \Delta S _ {j} \tag {12.4}

$$ where  $\delta_{i}$  and  $\gamma_{ij}$  are defined as

$$
\delta_ {i} = \frac {\partial P}{\partial S _ {i}} \gamma_ {i j} = \frac {\partial^ {2} P}{\partial S _ {i} \partial S _ {j}}
$$

# 12.5 Extreme Value Theory

Section 8.4 introduced the power law and explained that it can be used to estimate the tails of a wide range of distributions. We now provide the theoretical underpinnings for the power law and present estimation procedures that are more sophisticated than those used in Section 8.4. Extreme value theory (EVT) is the term used to describe the science of estimating the tails of a distribution. EVT can be used to improve VaR or ES estimates and to help in situations where analysts want to estimate VaR with a very high confidence level. It is a way of smoothing and extrapolating the tails of an empirical distribution.

# 12.5.1 The Key Result

The key result in EVT was proved by Gnedenko (1943). It shows that the tails of a wide range of different probability distributions share common properties.

Suppose that  $F(\nu)$  is the cumulative distribution function for a variable  $\nu$  (such as the loss on a portfolio over a certain period of time) and that  $u$  is a value of  $\nu$  in the right-hand tail of the distribution. The probability that  $\nu$  lies between  $u$  and  $u + \gamma$  ( $\gamma > 0$ ) is  $F(u + \gamma) - F(u)$ . The probability that  $\nu$  is greater than  $u$  is  $1 - F(u)$ . Define  $F_u(\gamma)$  as the probability that  $\nu$  lies between  $u$  and  $u + \gamma$  conditional on  $\nu > u$ . This is

$$
F _ {u} (\gamma) = \frac {F (u + \gamma) - F (u)}{1 - F (u)}
$$

The variable  $F_{u}(\gamma)$  defines the right tail of the probability distribution. It is the cumulative probability distribution for the amount by which  $\nu$  exceeds  $u$  given that it does exceed  $u$ .

Gnedenko's result states that, for a wide class of distributions  $F(\nu)$ , the distribution of  $F_{u}(\gamma)$  converges to a generalized Pareto distribution as the threshold  $u$  is increased. The generalized Pareto (cumulative) distribution is

$$
G _ {\xi , \beta} (\gamma) = 1 - \left[ 1 + \xi \frac {\gamma}{\beta} \right] ^ {- 1 / \xi} \tag {12.5}
$$

The distribution has two parameters that have to be estimated from the data. These are  $\xi$  and  $\beta$ . The parameter  $\xi$  is the shape parameter and determines the heaviness of the tail of the distribution. The parameter  $\beta$  is a scale parameter.

When the underlying variable  $\nu$  has a normal distribution,  $\xi = 0$ . As the tails of the distribution become heavier, the value of  $\xi$  increases. For most financial data,  $\xi$  is positive and in the range 0.1 to 0.4.

# 12.5.2 Estimating  $\xi$  and  $\beta$

The parameters  $\xi$  and  $\beta$  can be estimated using maximum likelihood methods (see Section 8.9 for a discussion of maximum likelihood methods). The probability density function,  $g_{\xi,\beta}(\gamma)$ , of the cumulative distribution in equation (12.5) is calculated by differentiating  $G_{\xi,\beta}(\gamma)$  with respect to  $\gamma$ . It is

$$ g _ {\xi , \beta} (\gamma) = \frac {1}{\beta} \left(1 + \frac {\xi \gamma}{\beta}\right) ^ {- 1 / \xi - 1} \tag {12.6}
$$

We first choose a value for  $u$ . (A value close to the 95th percentile point of the empirical distribution usually works well.) We then rank the observations on  $\nu$  from the highest to the lowest and focus our attention on those observations for which  $\nu > u$ . Suppose there are  $n_u$  such observations and they are  $\nu_i$  ( $1 \leq i \leq n_u$ ). From equation (12.6), the likelihood function (assuming that  $\xi \neq 0$ ) is

$$
\prod_ {i = 1} ^ {n _ {u}} \frac {1}{\beta} \left(1 + \frac {\xi (\nu_ {i} - u)}{\beta}\right) ^ {- 1 / \xi - 1}
$$

Maximizing this function is the same as maximizing its logarithm:

$$
\sum_ {i = 1} ^ {n _ {u}} \ln \left[ \frac {1}{\beta} \left(1 + \frac {\xi \left(v _ {i} - u\right)}{\beta}\right) ^ {- 1 / \xi - 1} \right] \tag {12.7}
$$

Standard numerical procedures can be used to find the values of  $\xi$  and  $\beta$  that maximize this expression. Excel's Solver produces good results.

# 12.5.3 Estimating the Tail of the Distribution

The probability that  $\nu > u + \gamma$  conditional that  $\nu > u$  is  $1 - G_{\xi, \beta}(\gamma)$ . The probability that  $\nu > u$  is  $1 - F(u)$ . The unconditional probability that  $\nu > x$  (when  $x > u$ ) is therefore

$$
[ 1 - F (u) ] [ 1 - G _ {\xi , \beta} (x - u) ]
$$

If  $n$  is the total number of observations, an estimate of  $1 - F(u)$ , calculated from the empirical data, is  $n_u / n$ . The unconditional probability that  $\nu > x$  is therefore

$$
\operatorname {P r o b} (\nu > x) = \frac {n _ {u}}{n} [ 1 - G _ {\xi , \beta} (x - u) ] = \frac {n _ {u}}{n} \left[ 1 + \xi \frac {x - u}{\beta} \right] ^ {- 1 / \xi} \tag {12.8}
$$

# 12.5.4 Equivalence to the Power Law

If we set  $u = \beta /\xi$ , equation (12.8) reduces to

$$
\operatorname {P r o b} (\nu > x) = \frac {n _ {u}}{n} \left[ \frac {\xi x}{\beta} \right] ^ {- 1 / \xi}
$$

This is

$$
K x ^ {- \alpha}
$$ where


$$

K = \frac {n _ {u}}{n} \left[ \frac {\xi}{\beta} \right] ^ {- 1 / \xi}

$$ and  $\alpha = 1 / \xi$ . This shows that equation (12.8) is consistent with the power law introduced in Section 8.4.

# 12.5.5 The Left Tail

The analysis so far has assumed that we are interested in the right tail of the probability distribution of a variable  $\nu$ . If we are interested in the left tail of the probability distribution, we can work with  $-\nu$  instead of  $\nu$ . Suppose, for example, that an oil company has collected data on daily percentage increases in the price of oil and wants to estimate a VaR that is the one-day percentage decline in the price of oil that has a  $99.9\%$  probability of not being exceeded. This is a statistic calculated from the left tail of the probability distribution of oil price increases. The oil company would change the sign of each data item (so that the data were measuring oil price decreases rather than increases) and then use the methodology that has been presented.

# 12.5.6 Calculation of VaR and ES

To calculate VaR with a confidence level of  $q$ , it is necessary to solve the equation

$$
F (\mathrm {V a R}) = q
$$

Because  $F(x) = 1 - \operatorname{Prob}(\nu > x)$ , equation (12.8) gives

$$ q = 1 - \frac {n _ {u}}{n} \left[ 1 + \xi \frac {\mathrm {V a R} - u}{\beta} \right] ^ {- 1 / \xi}
$$ so that


$$

\mathrm {V a R} = u + \frac {\beta}{\xi} \left\{\left[ \frac {n}{n _ {u}} (1 - q) \right] ^ {- \xi} - 1 \right\} \tag {12.9}

$$

The expected shortfall is given by

$$

\mathrm {E S} = \frac {\mathrm {V a R} + \beta - \xi u}{1 - \xi} \tag {12.10}

$$

# 12.6 Applications of EVT

Consider again the data in Tables 12.1 to 12.4. When  $u = 160$ ,  $n_u = 25$  (that is, there are 25 scenarios where the loss in 000s is greater than 160). Table 12.10 shows calculations

Table 12.10 Extreme Value Theory Calculations for Table 12.4 (the parameter  $u$  is 160 and trial values for  $\beta$  and  $\xi$  are 40 and 0.3, respectively)

<table><tr><td>Scenario Number</td><td>Loss (\$000s)</td><td>Rank</td><td>ln [1/β(1 + (ξ(vi - u)/β))^-1/ξ-1]</td></tr><tr><td>427</td><td>922.484</td><td>1</td><td>-11.94</td></tr><tr><td>429</td><td>858.423</td><td>2</td><td>-11.62</td></tr><tr><td>424</td><td>653.541</td><td>3</td><td>-10.40</td></tr><tr><td>415</td><td>490.215</td><td>4</td><td>-9.09</td></tr><tr><td>482</td><td>422.291</td><td>5</td><td>-8.40</td></tr><tr><td>440</td><td>362.733</td><td>6</td><td>-7.69</td></tr><tr><td>426</td><td>360.532</td><td>7</td><td>-7.67</td></tr><tr><td>431</td><td>353.788</td><td>8</td><td>-7.58</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>150</td><td>163.620</td><td>25</td><td>-3.80</td></tr><tr><td></td><td></td><td></td><td>-160.99</td></tr><tr><td colspan="4">Trial Estimates of EVT Parameters</td></tr><tr><td>ξ</td><td>β</td><td></td><td></td></tr><tr><td>0.3</td><td>40</td><td></td><td></td></tr></table> for the trial values  $\beta = 40$  and  $\xi = 0.3$ . The value of the log-likelihood function in equation (12.7) is  $-160.99$ .


When Excel's Solver is used to search for the values of  $\beta$  and  $\xi$  that maximize the log-likelihood function (see worksheet 11 on the author's website), it gives

$$

\beta = 1 1 0. 4 6

$$

$$

\xi = 0. 3 5 4

$$ and the maximum value of the log-likelihood function is -151.47.


Suppose that we wish to estimate the probability that the portfolio loss between July 8 and July 9, 2020, will be more than  \ {300},{000}  (or  3\%  of its value). From equation (12.8) this is

$$

\frac {2 5}{5 0 0} \Big [ 1 + 0. 3 5 4 \frac {3 0 0 - 1 6 0}{1 1 0 . 4 6} \Big ] ^ {- 1 / 0. 3 5 4 5} = 0. 0 1 7 6

$$

This is more accurate than counting observations. The probability that the portfolio loss will be more than 500,000 (or 5\% of its value) is similarly 0.0062.

From equation (12.9), the value of VaR with a  $99\%$  confidence limit is

$$

1 6 0 + \frac {1 1 0 . 4 6}{0 . 3 5 4} \left\{\left[ \frac {5 0 0}{2 5} (1 - 0. 9 9) \right] ^ {- 0. 3 5 4} - 1 \right\} = 3 9 9. 6

$$ or  \$399,600. (In this instance, the VaR estimate is about\$ 23,000 less than the fifth worst loss.) When the confidence level is increased to 99.9\%, VaR becomes

$$
1 6 0 + \frac {1 1 0 . 4 6}{0 . 3 5 4} \left\{\left[ \frac {5 0 0}{2 5} (1 - 0. 9 9 9) \right] ^ {- 0. 3 5 4} - 1 \right\} = 1 0 9 4. 6
$$ or 1,094,600. When it is increased further to 99.97\%, VaR becomes


$$

1 6 0 + \frac {1 1 0 . 4 6}{0 . 3 5 4} \left\{\left[ \frac {5 0 0}{2 5} (1 - 0. 9 9 9 7) \right] ^ {- 0. 3 5 4} - 1 \right\} = 1 7 5 7. 4

$$ or 1,757,400.


The formula in equation (12.10) can improve ES estimates and allow the confidence level used for ES estimates to be increased. In our example, when the confidence level is  $99\%$ , the estimated ES is

$$

\frac {3 9 9 . 6 + 1 1 0 . 4 6 - 0 . 3 5 4 \times 1 6 0}{1 - 0 . 3 5 4} = 7 0 2. 0

$$ or 702,000. When the confidence level is 99.9\%, the estimated ES is


$$

\frac {1 0 9 4 . 6 + 1 1 0 . 4 6 - 0 . 3 5 4 \times 1 6 0}{1 - 0 . 3 5 4} = 1 7 7 8. 1

$$ or 1,778,100.


EVT can be used for current or stressed measures. It can also be used in a straightforward way in conjunction with the volatility-scaling procedures in Section 12.3 (see Problem 12.11). It can also be used in conjunction with the weighting-of-observations procedure in Section 12.3. In this case, the terms being summed in equation (12.7) must be multiplied by the weights applicable to the underlying observations.

A final calculation can be used to refine the confidence interval for the  $99\%$  VaR estimate in Section 12.2. The probability density function evaluated at the VaR level for the probability distribution of the loss, conditional on it being greater than 160, is given by the  $g_{\xi,\beta}$  function in equation (12.6). It is

$$

\frac {1}{1 1 0 . 5} \bigg (1 + \frac {0 . 3 5 4 \times (3 9 9 . 6 - 1 6 0)}{1 1 0 . 5} \bigg) ^ {- 1 / 0. 3 5 4 - 1} = 0. 0 0 0 1 0 2 4

$$

The unconditional probability density function evaluated at the VaR level is  $n_u / n = 25 / 500$  times this or 0.00005. Not surprisingly, this is lower than the 0.000222 estimated in Section 12.2 and leads to a wider confidence interval for VaR.

# 12.6.1 Choice of  $u$

A natural question is: "How do the results depend on the choice of  $u$ ?" It is often found that values of  $\xi$  and  $\beta$  do depend on  $u$ , but the estimates of  $F(x)$  remain roughly the same. (Problem 12.10 considers what happens when  $u$  is changed from 160 to 150 in the example we have been considering.) We want  $u$  to be sufficiently high that we are truly investigating the shape of the tail of the distribution, but sufficiently low that the number of data items included in the maximum likelihood calculation is not too low. More data lead to more accuracy in the assessment of the shape of the tail. We have applied the procedure with 500 data items. Ideally, more data would be used.


A rule of thumb is that  $u$  should be approximately equal to the 95th percentile of the empirical distribution. In the search for the optimal values of  $\xi$  and  $\beta$ , both variables should be constrained to be positive. If the optimizer tries to set  $\xi$  negative, it is likely to be a sign that either (a) the tail of the distribution is not heavier than the normal distribution or (b) an inappropriate value of  $u$  has been chosen.

# Summary

Historical simulation is a very popular approach for estimating VaR or ES. It involves creating a database consisting of the daily movements in all market variables over a period of time. The first simulation trial assumes that the percentage change in each market variable is the same as that on the first day covered by the database, the second simulation trial assumes that the percentage changes are the same as those on the second day, and so on. The change in the portfolio value is calculated for each simulation trial, and VaR is calculated as the appropriate percentile of the probability distribution of this change, while ES is calculated as the average change in value in the tail of this distribution.

The standard error for a VaR that is estimated using historical simulation tends to be quite high. The higher the VaR confidence level required, the higher the standard error. In one extension of the basic historical simulation approach, the weights given to observations decrease exponentially as the observations become older; in another, adjustments are made to historical data to reflect changes in volatility.

Extreme value theory is a way of smoothing the tails of the probability distribution of portfolio daily changes calculated using historical simulation. It avoids the calculation uncertainties mentioned in footnotes 1, 2, 4, and 7. It leads to estimates of VaR and ES that reflect the whole shape of the tail of the distribution, not just the positions of a few losses in the tails. Extreme value theory can also be used to estimate VaR and ES when the confidence level is very high. For example, even if we have only 500 days of data, it could be used to come up with an estimate of VaR or ES for a confidence level of  $99.9\%$ .

# Further Reading

Boudoukh, J., M. Richardson, and R. Whitelaw. "The Best of Both Worlds." Risk (May 1998): 64-67.
Embrechts, P., C. Kluppelberg, and T. Mikosch. Modeling Extremal Events for Insurance and Finance. New York: Springer, 1997.
Hendricks, D. "Evaluation of Value-at-Risk Models Using Historical Data," Economic Policy Review, Federal Reserve Bank of New York, vol. 2 (April 1996): 39-69.

Hull, J. C., and A. White. "Incorporating Volatility Updating into the Historical Simulation Method for Value at Risk." Journal of Risk 1, no. 1 (1998): 5-19.

McNeil, A. J. "Extreme Value Theory for Risk Managers." In *Internal Modeling and CAD II* (London: Risk Books, 1999). See also www.macs.hw.ac.uk/~mcneil/ftp/cad.pdf.

Neftci, S. N. "Value at Risk Calculations, Extreme Events and Tail Estimation." Journal of Derivatives 7, no. 3 (Spring 2000): 23-38.

# Practice Questions and Problems (Answers at End of Book)

12.1 What assumption is being made when VaR is calculated using the historical simulation approach and 500 days of data?
12.2 Show that when  $\lambda$  approaches 1 the weighting scheme in Section 12.3.1 approaches the basic historical simulation approach.
12.3 Suppose we estimate the one-day  $95\%$  VaR from 1,000 observations (in millions of dollars) as 5. By fitting a standard distribution to the observations, the probability density function of the loss distribution at the  $95\%$  point is estimated to be 0.01. What is the standard error of the VaR estimate?
12.4 The one-day  $99\%$  VaR for the four-index example is calculated in Section 12.1 as  $\$ 422,291$ . Look at the underlying spreadsheets on the author's website and calculate (a) the  $95\%$  one-day VaR, (b) the  $95\%$  one-day ES, (c) the  $97\%$  one-day VaR, and (d) the  $97\%$  one-day ES.
12.5 Use the spreadsheets on the author's website to calculate a one-day  $99\%$  VaR and the one-day  $99\%$  ES using the basic methodology in Section 12.1, if the portfolio in Section 12.1 is equally divided between the four indices.
 12.6 The weighting-of-observations procedure in Section 12.3.1 gives the one-day 99\% VaR equal to \$653,541 and the one-day ES as \$833,228. Use the spreadsheets on the author's website to calculate VaR and ES when the λ parameter in this procedure is changed from 0.995 to 0.99.
 12.7 The simplified volatility-scaling for portfolio procedure in Section 12.3.3 gives the one-day 99\% VaR equal to \$517,195 and the one-day ES as \$650,354. Use the spreadsheets on the author's website to calculate VaR and ES when the λ parameter in this procedure is changed from 0.94 to 0.96.
 12.8 In the application of extreme value theory (EVT) in Section 12.6, what is the probability that the loss will exceed 400,000?
12.9 In the application of EVT in Section 12.6, what is the one-day VaR with a confidence level of  $97\%$ ?
12.10 Change  $u$  from 160 to 150 in the application of EVT in Section 12.6. How does this change the maximum likelihood estimates of  $\xi$  and  $\beta$ ? How does it change the one-day  $99\%$  VaR and the one-day  $99\%$  ES when the confidence limit is (a)  $99\%$  and (b)  $99.9\%$ ?
12.11 Carry out an extreme value theory analysis on the data from the volatility-scaling procedure in Table 12.7 and on the author's website. Use  $u = 250$ . What are the best fit values of  $\xi$  and  $\beta$ ? Calculate the one-day VaR and a one-day ES with a  $99\%$  and  $99.9\%$  confidence level. What is the probability of a loss greater than 600,000?

# Further Questions

12.12 Suppose that a one-day  $97.5\%$  VaR is estimated as  \$13 million from 2,000 observations. The one-day changes are approximately normal with mean zero and standard deviation\$ 6 million. Estimate a  $99\%$  confidence interval for the VaR estimate.
12.13 Suppose that the portfolio considered in Section 12.1 has (in 000s) 3,000 in S&P 500, 3,000 in FTSE, 1,000 in CAC 40, and 3,000 in Nikkei 225. Use the spreadsheet on the author's website to calculate what difference this makes to:

(a) The one-day  $99\%$  VaR and ES that are calculated in Section 12.1
(b) The one-day  $99\%$  VaR and ES that are calculated using the weighting-of-observations procedure in Section 12.3.1 with  $\lambda = 0.995$ .
(c) The one-day  $99\%$  VaR and ES that are calculated using the two volatility-scaling procedures in Sections 12.3.2 and 12.3.3 with  $\lambda = 0.94$  (assume that the initial variance when EWMA is applied is the sample variance).
(d) The one-day  $99\%$  VaR and ES that are calculated using extreme value theory and equal weightings in Section 12.6.

12.14 Investigate the effect of applying extreme value theory to the volatility-adjusted results in Section 12.3.2 with  $u = 350$ .
12.15 The weighting-of-observations procedure in Section 12.3.1 gives the one-day  $99\%$  VaR equal to \$653,541 and the one-day 99\%$  ES as \833,228. Use the spreadsheets on the author's website to calculate these measures when the  $\lambda$  parameter in this procedure is changed from 0.995 to 0.99.
12.16 The volatility-scaling procedure in Section 12.3.2 gives the one-day  $99\%$  VaR equal to  $566,492$  and the  $99\%$  ES as  $\$705,855$ . Use the spreadsheets on the author's website to calculate VaR and ES when the  $\lambda$  parameter in this procedure is changed from 0.94 to 0.92.
12.17 Values for the NASDAQ Composite index during the 1,500 days preceding March 31, 2022, can be downloaded from the author's website. Calculate the one-day  $99\%$  VaR and one-day  $99\%$  ES on March 31, 2022, for a 10 million portfolio invested in the index using:

(a) The basic historical simulation approach
(b) The exponential weighting scheme in Section 12.3.1 with  $\lambda = 0.995$

Discuss the reasons for the differences between the results you get.


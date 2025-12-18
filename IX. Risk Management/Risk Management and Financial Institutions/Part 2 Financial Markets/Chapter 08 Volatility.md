---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 8
linter-yaml-title-alias: Chapter 8
---

# Chapter 8

# Volatility

It is important for a financial institution to monitor the volatilities of the market variables (exchange rates, equity prices, commodity prices, etc.) on which the value of its portfolio depends. This chapter describes the procedures it can use to do this.

The chapter starts by explaining how volatility is defined. It then examines the common assumption that percentage returns from market variables are normally distributed and presents the power law as an alternative. After that it moves on to consider models with imposing names such as exponentially weighted moving average (EWMA), autoregressive conditional heteroscedasticity (ARCH), and generalized autoregressive conditional heteroscedasticity (GARCH). The distinctive feature of these models is that they recognize that volatility is not constant. During some periods, volatility is relatively low, while during other periods it is relatively high. The models attempt to keep track of variations in volatility through time.

# 8.1 Definition of Volatility

A variable's volatility,  $\sigma$ , is defined as the standard deviation of the return provided by the variable per unit of time when the return is expressed using continuous compounding. (See Appendix A for a discussion of compounding frequencies.) When volatility is used for option pricing, the unit of time is usually one year, so that volatility is the standard deviation of the continuously compounded return per year. When volatility is used for risk management, the unit of time is usually one day so that volatility is the standard deviation of the continuously compounded return per day.

Define  $S_{i}$  as the value of a variable at the end of day  $i$ . The continuously compounded return per day for the variable on day  $i$  is

$$
\ln \frac {S _ {i}}{S _ {i - 1}}
$$

Because the time period is so short, this is almost exactly the same as

$$
\frac {S _ {i} - S _ {i - 1}}{S _ {i - 1}}
$$

An alternative definition of daily volatility of a variable is therefore the standard deviation of the proportional change in the variable during a day. This is the definition that is usually used in risk management.

# Example 8.1

Suppose that an asset price is 60 and that its daily volatility is 2\%. This means that a one-standard-deviation move in the asset price over one day would be 60 \times 0.02 or \$1.20. If we assume that the change in the asset price is normally distributed, we can be 95\% certain that the asset price will be between 60 - 1.96 \times 1.2 = \$57.65 and 60 + 1.96 \times 1.2 = \$62.35 at the end of the day. (This is what is referred to as a two-tailed test, where there is a 2.5\% probability in each of the upper and lower tails of the distribution.)

If we assume that the continuously compounded returns each day are independent with the same variance, the variance of the continuously compounded return over  $T$  days is  $T$  times the variance of this return over one day. This means that the standard deviation of the return over  $T$  days is  $\sqrt{T}$  times the standard deviation of the return over one day. This is consistent with the adage "uncertainty increases with the square root of time."

# Example 8.2

Assume as in Example 8.1 that an asset price is \$60 and the volatility per day is 2\%. The standard deviation of the continuously compounded return over five days is √5 × 2 or 4.47\%. Because five days is a short period of time, this can be assumed to be the same as the standard deviation of the proportional change over five days. A one-standard-deviation move would be 60 × 0.0447 = 2.68. If we assume that the change in the asset price is normally distributed, we can be 95\% certain that the asset price will be between 60 - 1.96 × 2.68 = \$54.74 and 60 + 1.96 × 2.68 = 65.26 at the end of the five days.

# 8.1.1 Variance Rate

Risk managers often focus on the variance rate rather than the volatility. The variance rate per day is the variance of the return in one day. As already indicated, the standard deviation of the return in time  $T$  increases with the square root of  $T$ , the variance of this return increases linearly with  $T$ . If we wanted to be pedantic, we could say that it is correct to talk about the variance rate per day, but volatility is per square root of day.

# 8.1.2 Business Days vs. Calendar Days

One issue is whether time should be measured in calendar days or business days. As shown in Business Snapshot 8.1, research shows that volatility is much higher on business days than on non-business days. As a result, analysts tend to ignore weekends and holidays when calculating and using volatilities. The usual assumption is that there are 252 days per year.

Assuming that the returns on successive days are independent and have the same standard deviation, this means that

$$
\sigma_ {\mathrm {y r}} = \sigma_ {\mathrm {d a y}} \sqrt {2 5 2}
$$ or


$$

\sigma_ {\mathrm {d a y}} = \frac {\sigma_ {\mathrm {y r}}}{\sqrt {2 5 2}}

$$ showing that the daily volatility is about  $6\%$  of annual volatility.

# 8.2 Implied Volatilities

Although risk managers usually calculate volatilities from historical data, they also try and keep track of what are known as implied volatilities. The one parameter in the famous Black-Scholes-Merton option pricing model that cannot be observed directly is the volatility of the underlying asset price (see Appendix E). The implied volatility of an option is the volatility that gives the market price of the option when it is substituted into this pricing model.

# 8.2.1 The VIX Index

The CBOE publishes indices of implied volatility. The most popular index, the VIX, is an index of the implied volatility of 30-day options on the S&P 500 calculated from a wide range of calls and puts. Trading in futures on the VIX started in 2004 and trading in

# BUSINESS SNAPSHOT 8.1

# What Causes Volatility?

It is natural to assume that the volatility of a stock or other asset is caused by new information reaching the market. This new information causes people to revise their opinions about the value of the asset. The price of the asset changes and volatility results. However, this view of what causes volatility is not supported by research.

With several years of daily data on an asset price, researchers can calculate:

1. The variance of the asset's returns between the close of trading on one day and the close of trading on the next day when there are no intervening nontrading days.
2. The variance of the asset's return between the close of trading on Friday and the close of trading on Monday.

The second is the variance of returns over a three-day period. The first is a variance over a one-day period. We might reasonably expect the second variance to be three times as great as the first variance. Fama (1965), French (1980), and French and Roll (1986) show that this is not the case. For the assets considered, the three research studies estimate the second variance to be  $22\%$ ,  $19\%$ , and  $10.7\%$  higher than the first variance, respectively.

At this stage you might be tempted to argue that these results are explained by more news reaching the market when the market is open for trading. But research by Roll (1984) does not support this explanation. Roll looked at the prices of orange juice futures. By far the most important news for orange juice futures is news about the weather, and this is equally likely to arrive at any time. When Roll compared the two variances for orange juice futures, he found that the second (Friday-to-Monday) variance is only 1.54 times the first (one-day) variance.

The only reasonable conclusion from all this is that volatility is, to a large extent, caused by trading itself. (Traders usually have no difficulty accepting this conclusion!) options on the VIX started in 2006. A trade involving options on the S&P 500 is a bet on both the future level of the S&P 500 and the volatility of the S&P 500. By contrast, a futures or options contract on the VIX is a bet only on volatility. One contract is on 1,000 times the index.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/a0ba223e03f99215e9bf4fd1d0904e940edc111f2ec7dfecdfbb14844204abcb.jpg)

Figure 8.1 The VIX Index, January 2, 2004, to February 1, 2022

# Example 8.3

Suppose that a trader buys an April futures contract on the VIX when the futures price is \$18.5 (corresponding to a 30-day S&P 500 volatility of 18.5\%) and closes out the contract when the futures price is \$19.3 (corresponding to an S&P 500 volatility of 19.3\%). The trader makes a gain of 800.

Figure 8.1 shows the VIX index between January 2, 2004, and February 1, 2022. Between 2004 and mid-2007, it tended to stay between 10 and 20. It reached 30 during the second half of 2007 and 80 in October and November 2008 after the failure of Lehman Brothers. By early 2010, it had returned to more normal levels, but it spiked again during March 2020 when the beginning of the COVID-19 pandemic led to a great deal of uncertainty about the future and a big market decline. Sometimes market participants refer to the VIX index as the fear index.

# 8.3 Are Daily Percentage Changes in Financial Variables Normal?

When confidence limits for the change in a market variable are calculated from its volatility, a common assumption is that the change is normally distributed. This is the assumption we made in Examples 8.1 and 8.2. In practice, most financial variables are more likely to experience big moves than the normal distribution would suggest. Table 8.1 shows the results of a test of normality using daily movements in 10 different exchange rates over a 10-year period between 2005 and 2015. The exchange rates are those between the U.S. dollar and the following currencies: Australian dollar, British pound, Canadian dollar, Danish krone, euro, Japanese yen, Mexican peso, New Zealand dollar, Swedish krona, and Swiss franc. The first step in the production of the table is to calculate the standard deviation of daily percentage changes in each exchange rate. The next stage is to note how often the actual percentage changes exceeded one standard deviation, two standard deviations, and so on. These numbers are then compared with the corresponding numbers for the normal distribution.

Daily percentage changes exceed three standard deviations on  $1.30\%$  of the days. The normal model for returns predicts that this should happen on only  $0.27\%$  of days. Daily percentage changes exceed four, five, and six standard deviations on  $0.49\%$ ,  $0.24\%$ , and  $0.13\%$  of the days, respectively. The normal model predicts that we should hardly ever observe this happening. The table, therefore, provides evidence to support the existence of the fact that the probability distributions of changes in exchange rates have heavier tails than the normal distribution.

When returns are continuously compounded, the return over many days is the sum of the returns over each of the days. If the probability distribution of the return in a day were the same non-normal distribution each day, the central limit theorem of statistics would lead to the conclusion that the return over many days is normally distributed. In fact, the returns on successive days are not identically distributed. (One reason for this, which will be discussed later in this chapter, is that volatility is not constant.) As a result, heavy tails are observed in the returns over relatively long periods as well as in the returns observed over one day. Business Snapshot 8.2 shows how you could have made money if you had done an analysis similar to that in Table 8.1 in 1985!

Figure 8.2 compares a typical heavy-tailed distribution (such as the one for an exchange rate) with a normal distribution that has the same mean and standard

Table 8.1 Percentage of Days When Absolute Size of Daily

Exchange Rate Moves Is Greater Than One, Two, … , Six Standard Deviations (S.D. = standard deviation of percentage daily change)

<table><tr><td></td><td>Real World (\%)</td><td>Normal Model (\%)</td></tr><tr><td>&gt;1 S.D.</td><td>23.32</td><td>31.73</td></tr><tr><td>&gt;2 S.D.</td><td>4.67</td><td>4.55</td></tr><tr><td>&gt;3 S.D.</td><td>1.30</td><td>0.27</td></tr><tr><td>&gt;4 S.D.</td><td>0.49</td><td>0.01</td></tr><tr><td>&gt;5 S.D.</td><td>0.24</td><td>0.00</td></tr><tr><td>&gt;6 S.D.</td><td>0.13</td><td>0.00</td></tr></table>

# BUSINESS SNAPSHOT 8.2

# Making Money from Foreign Currency Options

Black, Scholes, and Merton in their option pricing model assume that the underlying asset's price has a lognormal distribution at a future time. This is equivalent to the assumption that asset price changes over short periods, such as one day, are normally distributed. Suppose that most market participants are comfortable with the assumptions made by Black, Scholes, and Merton. You have just done the analysis in Table 8.1 and know that the normal/lognormal assumption is not a good one for exchange rates. What should you do?

The answer is that you should buy deep-out-of-the-money call and put options on a variety of different currencies—and wait. These options will be relatively inexpensive and more of them will close in-the-money than the Black-Scholes-Merton model predicts. The present value of your payoffs will on average be much greater than the cost of the options.

In the mid-1980s, a few traders knew about the heavy tails of foreign exchange probability distributions. Everyone else thought that the lognormal assumption of the Black-Scholes-Merton model was reasonable. The few traders who were well informed followed the strategy we have described—and made lots of money. By the late 1980s, most traders understood the heavy tails and the trading opportunities had disappeared.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/750349ae18dcea9b24d023c1efdc7d6c1d63a3abac4360a502ba7170b86ddfbd.jpg) deviation. $^2$  The heavy-tailed distribution is more peaked than the normal distribution. In Figure 8.2, we can distinguish three parts of the distribution: the middle, the tails, and the intermediate parts (between the middle and the tails). When we move from the normal distribution to the heavy-tailed distribution, probability mass shifts from the intermediate parts of the distribution to both the tails and the middle. If we are considering the percentage change in a market variable, the heavy-tailed distribution has the property that small and large changes in the variable are more likely than they would be if a normal distribution were assumed. Intermediate changes are less likely.

Figure 8.2 Comparison of a Normal Distribution with a Heavy-Tailed Distribution The two distributions have the same mean and standard deviation.

# 8.4 The Power Law

The power law provides an alternative to assuming normal distributions. The law asserts that, for many variables that are encountered in practice, it is approximately true that the value of the variable,  $\nu$ , has the property that when  $x$  is large

$$
\operatorname {P r o b} (\nu > x) = K x ^ {- \alpha} \tag {8.1}
$$ where  $K$  and  $\alpha$  are constants. The equation has been found to be approximately true for variables  $\nu$  as diverse as the income of an individual, the size of a city, and the number of visits to a website in a day.


# Example 8.4

Suppose that we know from experience that  $\alpha = 3$  for a particular financial variable and we observe that the probability that  $\nu > 10$  is 0.05. Equation (8.1) gives

$$
0. 0 5 = K \times 1 0 ^ {- 3}
$$ so that  $K = 50$ . The probability that  $\nu > 20$  can now be calculated as

$$
5 0 \times 2 0 ^ {- 3} = 0. 0 0 6 2 5
$$

The probability that  $\nu > 30$  is

$$
5 0 \times 3 0 ^ {- 3} = 0. 0 0 1 9
$$ and so on.


Table 8.2 Values Calculated from Table 8.1

<table><tr><td>x</td><td>ln(x)</td><td>Prob(v &gt; x)</td><td>ln[Prob(v &gt; x)]</td></tr><tr><td>1</td><td>0.000</td><td>0.2332</td><td>-1.4560</td></tr><tr><td>2</td><td>0.693</td><td>0.0467</td><td>-3.0634</td></tr><tr><td>3</td><td>1.099</td><td>0.0130</td><td>-4.3421</td></tr><tr><td>4</td><td>1.386</td><td>0.0049</td><td>-5.3168</td></tr><tr><td>5</td><td>1.609</td><td>0.0024</td><td>-6.0182</td></tr><tr><td>6</td><td>1.792</td><td>0.0013</td><td>-6.6325</td></tr></table>

Equation (8.1) implies that

$$

\ln [ \operatorname {P r o b} (\nu > x) ] = \ln K - \alpha \ln x

$$

We can therefore do a quick test of whether it holds by plotting  $\ln[\operatorname{Prob}(\nu > x)]$  against  $\ln(x)$ . In order to do this for the data in Table 8.1, define  $\nu$  as the number of standard deviations by which an exchange rate changes in one day.

The values of  $\ln (x)$  and  $\ln [\mathrm{Prob}(\nu > x)]$  are calculated in Table 8.2. The data in Table 8.2 are plotted in Figure 8.3. This shows that the logarithm of the probability of the exchange rate changing by more than  $x$  standard deviations is approximately linearly dependent on  $\ln (x)$  for  $x \geq 2$ . This is evidence that the power law holds for these data. Using data for  $x = 3, 4, 5$ , and 6, a regression analysis gives the best-fit relationship as

$$

\ln [ \operatorname {P r o b} (\nu > x) ] = - 0. 7 3 5 - 3. 2 9 1 \ln (x)

$$ showing that estimates for  $K$  and  $\alpha$  are as follows:  $K = e^{-0.735} = 0.479$  and  $\alpha = 3.291$ . An estimate for the probability of a change greater than 4.5 standard deviations is

$$
0. 4 7 9 \times 4. 5 ^ {- 3, 2 9 1} = 0. 0 0 3 4 0
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/23940645f8da83e6e1cc19dddfae89547b0812b6755850accdd3fd77894ce8b2.jpg)

Figure 8.3 Log-Log Plot for Probability That Exchange Rate Moves by More Than a Certain Number of Standard Deviations

$\nu$  is the exchange rate change measured in standard deviations.

An estimate for the probability of a change greater than seven standard deviations is

$$
0. 4 7 9 \times 7 ^ {- 3. 2 9 1} = 0. 0 0 0 7 9 4
$$

We examine the power law more formally and explain better procedures for estimating the parameters when we consider extreme value theory in Chapter 12.

# 8.5 Monitoring Daily Volatility

Define  $\sigma_{n}$  as the volatility per day of a market variable on day  $n$ , as estimated at the end of day  $n - 1$ . The variance rate, which, as mentioned earlier, is defined as the square of the volatility, is  $\sigma_{n}^{2}$ . Suppose that the value of the market variable at the end of day  $i$  is  $S_{i}$ . Define  $u_{i}$  as the continuously compounded return during day  $i$  (between the end of day  $i - 1$  and the end of day  $i$ ) so that

$$ u _ {i} = \ln {\frac {S _ {i}}{S _ {i - 1}}}
$$

One approach to estimating  $\sigma_{n}$  is to set it equal to the standard deviation of the  $u_{i}$ 's. When the most recent  $m$  observations on the  $u_{i}$  are used in conjunction with the usual formula for standard deviation, this approach gives:

$$
\sigma_ {n} ^ {2} = \frac {1}{m - 1} \sum_ {i = 1} ^ {m} \left(u _ {n - i} - \bar {u}\right) ^ {2} \tag {8.2}
$$ where  $\overline{u}$  is the mean of the  $u_{i}$ 's:


$$

\overline {{u}} = \frac {1}{m} \sum_ {i = 1} ^ {m} u _ {n - i}

$$

# Example 8.5

Table 8.3 shows a possible sequence of stock prices. Suppose that we are interested in estimating the volatility for day 21 using 20 observations on the  $u_{i}$  so that  $n = 21$  and  $m = 20$ . In this case,  $\overline{u} = 0.00074$  and the estimate of the standard deviation of the daily return calculated using equation (8.2) is  $1.49\%$ .

For risk management purposes, the formula in equation (8.2) is usually changed in a number of ways:

1. As indicated in Section 8.1,  $u_{i}$  is defined as the percentage change in the market variable between the end of day  $i - 1$  and the end of day  $i$  so that

$$ u _ {i} = \frac {S _ {i} - S _ {i - 1}}{S _ {i - 1}} \tag {8.3}
$$

This makes very little difference to the values of  $u_{i}$  that are computed.

Table 8.3 Data for Computation of Volatility

<table><tr><td>Day</td><td>Closing Stock Price (dollars)</td><td>Price Relative  S_i/S_{i-1} </td><td>Daily Return  u_i = \ln(S_i/S_{i-1}) </td></tr><tr><td>0</td><td>20.00</td><td></td><td></td></tr><tr><td>1</td><td>20.10</td><td>1.00500</td><td>0.00499</td></tr><tr><td>2</td><td>19.90</td><td>0.99005</td><td>-0.01000</td></tr><tr><td>3</td><td>20.00</td><td>1.00503</td><td>0.00501</td></tr><tr><td>4</td><td>20.50</td><td>1.02500</td><td>0.02469</td></tr><tr><td>5</td><td>20.25</td><td>0.98780</td><td>-0.01227</td></tr><tr><td>6</td><td>20.90</td><td>1.03210</td><td>0.03159</td></tr><tr><td>7</td><td>20.90</td><td>1.00000</td><td>0.00000</td></tr><tr><td>8</td><td>20.90</td><td>1.00000</td><td>0.00000</td></tr><tr><td>9</td><td>20.60</td><td>0.98565</td><td>-0.01446</td></tr><tr><td>10</td><td>20.50</td><td>0.99515</td><td>-0.00487</td></tr><tr><td>11</td><td>21.00</td><td>1.02439</td><td>0.02410</td></tr><tr><td>12</td><td>21.10</td><td>1.00476</td><td>0.00475</td></tr><tr><td>13</td><td>20.70</td><td>0.98104</td><td>-0.01914</td></tr><tr><td>14</td><td>20.50</td><td>0.99034</td><td>-0.00971</td></tr><tr><td>15</td><td>20.70</td><td>1.00976</td><td>0.00971</td></tr><tr><td>16</td><td>20.90</td><td>1.00966</td><td>0.00962</td></tr><tr><td>17</td><td>20.40</td><td>0.97608</td><td>-0.02421</td></tr><tr><td>18</td><td>20.50</td><td>1.00490</td><td>0.00489</td></tr><tr><td>19</td><td>20.60</td><td>1.00488</td><td>0.00487</td></tr><tr><td>20</td><td>20.30</td><td>0.98544</td><td>-0.01467</td></tr></table>

2. $\overline{u}$  is assumed to be zero. The justification for this is that the expected change in a variable in one day is very small when compared with the standard deviation of changes. $^3$
3. $m - 1$  is replaced by  $m$ . This moves us from an unbiased estimate of the volatility to a maximum likelihood estimate, as we explain in Section 8.9.

These three changes allow the formula for the variance rate to be simplified to

$$
\sigma_ {n} ^ {2} = \frac {1}{m} \sum_ {i = 1} ^ {m} u _ {n - i} ^ {2} \tag {8.4}
$$ where  $u_{i}$  is given by equation (8.3).


# Example 8.6

Consider again Example 8.5. When  $n = 21$  and  $m = 20$ ,

$$

\sum_ {i = 1} ^ {m} u _ {n - i} ^ {2} = 0. 0 0 4 2 4

$$ so that equation (8.4) gives


$$

\sigma_ {n} ^ {2} = 0. 0 0 4 2 4 / 2 0 = 0. 0 0 0 2 1 4

$$ and  $\sigma_{n} = 0.014618$  or  $1.46\%$ . This is only a little different from the result in Example 8.5.

# 8.5.1 Weighting Schemes

Equation (8.4) gives equal weight to each of  $u_{n-1}^2, u_{n-2}^2, \ldots, u_{n-m}^2$ . Our objective is to estimate  $\sigma_n$ , the volatility on day  $n$ . It therefore makes sense to give more weight to recent data. A model that does this is

$$
\sigma_ {n} ^ {2} = \sum_ {i = 1} ^ {m} \alpha_ {i} u _ {n - i} ^ {2} \tag {8.5}
$$

The variable  $\alpha_{i}$  is the amount of weight given to the observation  $i$  days ago. The  $\alpha$ 's are positive. If we choose them so that  $\alpha_{i} < \alpha_{j}$  when  $i > j$ , less weight is given to older observations. The weights must sum to unity, so that

$$
\sum_ {i = 1} ^ {m} \alpha_ {i} = 1
$$

An extension of the idea in equation (8.5) is to assume that there is a long-run average variance rate and that this should be given some weight. This leads to the model that takes the form

$$
\sigma_ {n} ^ {2} = \gamma V _ {L} + \sum_ {i = 1} ^ {m} \alpha_ {i} u _ {n - i} ^ {2} \tag {8.6}
$$ where  $V_{L}$  is the long-run variance rate and  $\gamma$  is the weight assigned to  $V_{L}$ . Because the weights must sum to unity, we have


$$

\gamma + \sum_ {i = 1} ^ {m} \alpha_ {i} = 1

$$

This is known as an  $\mathrm{ARCH}(m)$  model. It was first suggested by Engle. The estimate of the variance is based on a long-run average variance and  $m$  observations. The older an observation, the less weight it is given. Defining  $\omega = \gamma V_{L}$ , the model in equation (8.6) can be written

$$

\sigma_ {n} ^ {2} = \omega + \sum_ {i = 1} ^ {m} \alpha_ {i} u _ {n - i} ^ {2} \tag {8.7}

$$

In the next two sections, we discuss two important approaches to monitoring volatility using the ideas in equations (8.5) and (8.6).

# 8.6 The Exponentially Weighted Moving Average Model

The exponentially weighted moving average (EWMA) model is a particular case of the model in equation (8.5) where the weights,  $\alpha_{i}$ , decrease exponentially as we move back through time. Specifically,  $\alpha_{i+1} = \lambda \alpha_{i}$  where  $\lambda$  is a constant between zero and one.

It turns out that this weighting scheme leads to a particularly simple formula for updating volatility estimates. The formula is

$$

\sigma_ {n} ^ {2} = \lambda \sigma_ {n - 1} ^ {2} + (1 - \lambda) u _ {n - 1} ^ {2} \tag {8.8}

$$

The estimate,  $\sigma_{n}$ , of the volatility for day  $n$  (made at the end of day  $n - 1$ ) is calculated from  $\sigma_{n - 1}$  (the estimate that was made at the end of day  $n - 2$  of the volatility for day  $n - 1$ ) and  $u_{n - 1}$  (the most recent daily percentage change).

To understand why equation (8.8) corresponds to weights that decrease exponentially, we substitute for  $\sigma_{n - 1}^2$  to get

$$

\sigma_ {n} ^ {2} = \lambda [ \lambda \sigma_ {n - 2} ^ {2} + (1 - \lambda) u _ {n - 2} ^ {2} ] + (1 - \lambda) u _ {n - 1} ^ {2}

$$ or


$$

\sigma_ {n} ^ {2} = (1 - \lambda) (u _ {n - 1} ^ {2} + \lambda u _ {n - 2} ^ {2}) + \lambda^ {2} \sigma_ {n - 2} ^ {2}

$$

Substituting in a similar way for  $\sigma_{n - 2}^2$  gives

$$

\sigma_ {n} ^ {2} = (1 - \lambda) (u _ {n - 1} ^ {2} + \lambda u _ {n - 2} ^ {2} + \lambda^ {2} u _ {n - 3} ^ {2}) + \lambda^ {3} \sigma_ {n - 3} ^ {2}

$$

Continuing in this way, we see that

$$

\sigma_ {n} ^ {2} = (1 - \lambda) \sum_ {i = 1} ^ {m} \lambda^ {i - 1} u _ {n - i} ^ {2} + \lambda^ {m} \sigma_ {n - m} ^ {2}

$$

For a large  $m$ , the term  $\lambda^m \sigma_{n - m}^2$  is sufficiently small to be ignored so that equation (8.8) is the same as equation (8.5) with  $\alpha_i = (1 - \lambda) \lambda^{i-1}$ . The weights for the  $u_i$  decline at rate  $\lambda$  as we move back through time. Each weight is  $\lambda$  times the previous weight.

# Example 8.7

Suppose that  $\lambda$  is 0.90, the volatility estimated for a market variable for day  $n - 1$  is  $1\%$  per day, and during day  $n - 1$  the market variable increased by  $2\%$ . This means that  $\sigma_{n - 1}^2 = 0.01^2 = 0.0001$  and  $u_{n - 1}^2 = 0.02^2 = 0.0004$ . Equation (8.8) gives

$$

\sigma_ {n} ^ {2} = 0. 9 \times 0. 0 0 0 1 + 0. 1 \times 0. 0 0 0 4 = 0. 0 0 0 1 3

$$

The estimate of the volatility for day  $n$ ,  $\sigma_n$ , is, therefore,  $\sqrt{0.00013}$  or  $1.14\%$  per day. Note that the expected value of  $u_{n-1}^2$  is  $\sigma_{n-1}^2$  or 0.0001. In this example, the realized value of  $u_{n-1}^2$  is greater than the expected value, and as a result our volatility estimate increases. If the realized value of  $u_{n-1}^2$  had been less than its expected value, our estimate of the volatility would have decreased.

The EWMA approach has the attractive feature that the data storage requirements are modest. At any given time, we need to remember only the current estimate of the variance rate and the most recent observation on the value of the market variable. When we get a new observation on the value of the market variable, we calculate a new daily percentage change and use equation (8.8) to update our estimate of the variance rate. The old estimate of the variance rate and the old value of the market variable can then be discarded.

The EWMA approach is designed to track changes in the volatility. Suppose there is a big move in the market variable on day  $n - 1$  so that  $u_{n - 1}^2$  is large. From equation (8.8) this causes our estimate of the current volatility to move upward. The value of  $\lambda$  governs how responsive the estimate of the daily volatility is to the most recent daily percentage change. A low value of  $\lambda$  leads to a great deal of weight being given to the  $u_{n - 1}^2$  when  $\sigma_n$  is calculated. In this case, the estimates produced for the volatility on successive days are themselves highly volatile. A high value of  $\lambda$  (i.e., a value close to 1.0) produces estimates of the daily volatility that respond relatively slowly to new information provided by the daily percentage change.

The RiskMetrics database, which was originally created by JPMorgan and made publicly available in 1994, used the EWMA model with  $\lambda = 0.94$  for updating daily volatility estimates. The company found that, across a range of different market variables, this value of  $\lambda$  gives forecasts of the variance rate that come closest to the realized variance rate. RiskMetrics, now a separate company from JPMorgan, has since switched to more sophisticated models.


# 8.7 The GARCH(1,1) Model

We now move on to discuss what is known as the GARCH(1,1) model, proposed by Bollerslev in 1986. The difference between the EWMA model and the GARCH(1,1) model is analogous to the difference between equation (8.5) and equation (8.6). In GARCH(1,1),  $\sigma_{n}^{2}$  is calculated from a long-run average variance rate,  $V_{L}$ , as well as from  $\sigma_{n-1}$  and  $u_{n-1}$ . The equation for GARCH(1,1) is

$$

\sigma_ {n} ^ {2} = \gamma V _ {L} + \alpha u _ {n - 1} ^ {2} + \beta \sigma_ {n - 1} ^ {2} \tag {8.9}

$$ where  $\gamma$  is the weight assigned to  $V_{L}$ ,  $\alpha$  is the weight assigned to  $u_{n - 1}^{2}$ , and  $\beta$  is the weight assigned to  $\sigma_{n - 1}^{2}$ . Because the weights must sum to one:

$$
\gamma + \alpha + \beta = 1
$$

The EWMA model is a particular case of GARCH(1,1) where  $\gamma = 0$ ,  $\alpha = 1 - \lambda$ , and  $\beta = \lambda$ .

The " $(1,1)$ " in GARCH(1,1) indicates that  $\sigma_{n}^{2}$  is based on the most recent observation of  $u^{2}$  and the most recent estimate of the variance rate. The more general GARCH  $(p,q)$  model calculates  $\sigma_{n}^{2}$  from the most recent  $p$  observations on  $u^{2}$  and the most recent  $q$  estimates of the variance rate. $^{7}$  GARCH(1,1) is by far the most popular of the GARCH models.

Setting  $\omega = \gamma V_{L}$ , the GARCH(1,1) model can also be written

$$
\sigma_ {n} ^ {2} = \omega + \alpha u _ {n - 1} ^ {2} + \beta \sigma_ {n - 1} ^ {2} \tag {8.10}
$$

This is the form of the model that is usually used for the purposes of estimating the parameters. Once  $\omega$ ,  $\alpha$ , and  $\beta$  have been estimated, we can calculate  $\gamma$  as  $1 - \alpha - \beta$ . The long-term variance  $V_{L}$  can then be calculated as  $\omega / \gamma$ . For a stable GARCH(1,1) model, we require  $\alpha + \beta < 1$ . Otherwise the weight applied to the long-term variance is negative.

# Example 8.8

Suppose that a GARCH(1,1) model is estimated from daily data as

$$
\sigma_ {n} ^ {2} = 0. 0 0 0 0 0 2 + 0. 1 3 u _ {n - 1} ^ {2} + 0. 8 6 \sigma_ {n - 1} ^ {2}
$$

This corresponds to  $\alpha = 0.13$ ,  $\beta = 0.86$ , and  $\omega = 0.000002$ . Because  $\gamma = 1 - \alpha - \beta$ , it follows that  $\gamma = 0.01$  and because  $\omega = \gamma V_L$ , it follows that  $V_L = 0.0002$ . In other words, the long-run average variance per day implied by the model is 0.0002. This corresponds to a volatility of  $\sqrt{0.0002} = 0.014$  or  $1.4\%$  per day.

Suppose that the estimate of the volatility on day  $n - 1$  is  $1.6\%$  per day so that  $\sigma_{n-1}^2 = 0.016^2 = 0.000256$ , and that on day  $n - 1$  the market variable decreased by  $1\%$  so that  $u_{n-1}^2 = 0.01^2 = 0.0001$ . Then:

$$
\sigma_ {n} ^ {2} = 0. 0 0 0 0 0 2 + 0. 1 3 \times 0. 0 0 0 1 + 0. 8 6 \times 0. 0 0 0 2 5 6 = 0. 0 0 0 2 3 5 1 6
$$

The new estimate of the volatility is, therefore,  $\sqrt{0.00023516} = 0.0153$  or  $1.53\%$  per day.

# 8.7.1 The Weights

Substituting for  $\sigma_{n - 1}^2$  in equation (8.10) we obtain

$$
\sigma_ {n} ^ {2} = \omega + \alpha u _ {n - 1} ^ {2} + \beta (\omega + \alpha u _ {n - 2} ^ {2} + \beta \sigma_ {n - 2} ^ {2})
$$ or


$$

\sigma_ {n} ^ {2} = \omega + \beta \omega + \alpha u _ {n - 1} ^ {2} + \alpha \beta u _ {n - 2} ^ {2} + \beta^ {2} \sigma_ {n - 2} ^ {2}

$$

Substituting for  $\sigma_{n - 2}^2$  we get

$$

\sigma_ {n} ^ {2} = \omega + \beta \omega + \beta^ {2} \omega + \alpha u _ {n - 1} ^ {2} + \alpha \beta u _ {n - 2} ^ {2} + \alpha \beta^ {2} u _ {n - 3} ^ {2} + \beta^ {3} \sigma_ {n - 3} ^ {2}

$$

Continuing in this way, we see that the weight applied to  $u_{n - i}^{2}$  is  $\alpha \beta^{i - 1}$ . The weights decline exponentially at rate  $\beta$ . The parameter  $\beta$  can be interpreted as a decay rate. It is similar to  $\lambda$  in the EWMA model. It defines the relative importance of the observations on the  $u_{i}$  in determining the current variance rate. For example, if  $\beta = 0.9$ ,  $u_{n - 2}^{2}$  is only

$90\%$  as important as  $u_{n - 1}^2$ ;  $u_{n - 3}^2$  is  $81\%$  as important as  $u_{n - 1}^2$ ; and so on. The GARCH(1,1) model is the same as the EWMA model except that, in addition to assigning weights that decline exponentially to past  $u_i^2$ , it also assigns some weight to the long-run average variance rate.

# 8.8 Choosing between the Models

In practice, variance rates do tend to be pulled back to a long-run average level. The GARCH(1,1) model incorporates mean reversion whereas the EWMA model does not. GARCH(1,1), although more complicated than EWMA, is therefore theoretically more appealing than EWMA.

In the next section, we will discuss how best-fit parameters  $\omega$ ,  $\alpha$ , and  $\beta$  in GARCH(1,1) can be estimated. When the parameter  $\omega$  is zero, the GARCH(1,1) reduces to EWMA. In circumstances where the best-fit value of  $\omega$  turns out to be negative, the GARCH(1,1) model is not stable and it makes sense to switch to the EWMA model.

# 8.9 Maximum Likelihood Methods

It is now appropriate to discuss how the parameters in the models we have been considering are estimated from historical data. The approach used is known as the maximum likelihood method. It involves choosing values for the parameters that maximize the chance (or likelihood) of the data occurring.

We start with a very simple example. Suppose that we sample 10 stocks at random on a certain day and find that the price of one of them declined during the day and the prices of the other nine either remained the same or increased. What is our best estimate of the proportion of stock prices that declined during the day? The natural answer is 0.1. Let us see if this is the result given by maximum likelihood methods.

Suppose that the probability of a price decline is  $p$ . The probability that one particular stock declines in price and the other nine do not is  $p(1 - p)^9$ . (There is a probability  $p$  that it will decline and  $1 - p$  that each of the other nine will not.) Using the maximum likelihood approach, the best estimate of  $p$  is the one that maximizes  $p(1 - p)^9$ . Differentiating this expression with respect to  $p$  and setting the result equal to zero, it can be shown that  $p = 0.1$  maximizes the expression. The maximum likelihood estimate of  $p$  is therefore 0.1, as expected.

# 8.9.1 Estimating a Constant Variance

In our next example of maximum likelihood methods, we consider the problem of estimating a variance of a variable  $X$  from  $m$  observations on  $X$  when the underlying distribution is normal. We assume that the observations are  $u_{1}, u_{2}, \ldots, u_{m}$  and that the mean of the underlying normal distribution is zero. Denote the variance by  $\nu$ . The likelihood of  $u_{i}$  being observed is the probability density function for  $X$  when  $X = u_{i}$ . This is


$$

\frac {1}{\sqrt {2 \pi \nu}} \exp \left(\frac {- u _ {i} ^ {2}}{2 \nu}\right)

$$

The likelihood of  $m$  observations occurring in the order in which they are observed is

$$

\prod_ {i = 1} ^ {m} \left[ \frac {1}{\sqrt {2 \pi v}} \exp \left(\frac {- u _ {i} ^ {2}}{2 v}\right) \right] \tag {8.11}

$$

Using the maximum likelihood method, the best estimate of  $\nu$  is the value that maximizes this expression.

Maximizing an expression is equivalent to maximizing the logarithm of the expression. Taking logarithms of the expression in equation (8.11) and ignoring constant multiplicative factors, it can be seen that we wish to maximize

$$

\sum_ {i = 1} ^ {m} \left[ - \ln (\nu) - \frac {u _ {i} ^ {2}}{\nu} \right] \tag {8.12}

$$ or


$$
- m \ln (\nu) - \sum_ {i = 1} ^ {m} \frac {u _ {i} ^ {2}}{\nu}
$$

Differentiating this expression with respect to  $\nu$  and setting the result equation to zero, it can be shown that the maximum likelihood estimator of  $\nu$  is

$$

\frac {1}{m} \sum_ {i = 1} ^ {m} u _ {i} ^ {2}

$$

This maximum likelihood estimator is the one we used in equation (8.4). The corresponding unbiased estimator is the same with  $m$  replaced by  $m - 1$ .

# 8.9.2 Estimating EWMA or GARCH(1,1)

We now consider how the maximum likelihood method can be used to estimate the parameters when EWMA, GARCH(1,1), or some other volatility updating procedure is used. Define  $\nu_{i} = \sigma_{i}^{2}$  as the variance estimated for day  $i$ . Assume that the

Table 8.4 Estimation of Parameters in GARCH(1,1) Model for S&P 500 between February 2, 2017, and February 1, 2022

<table><tr><td>Date</td><td>Day i</td><td>Si</td><td>ui</td><td>vi = σi2</td><td>- ln(vi) - ui2/vi</td></tr><tr><td>Feb. 02, 2017</td><td>1</td><td>2,280.85</td><td></td><td></td><td></td></tr><tr><td>Feb. 03, 2017</td><td>2</td><td>2,297.42</td><td>0.007265</td><td></td><td></td></tr><tr><td>Feb. 06, 2017</td><td>3</td><td>2,292.56</td><td>-0.00212</td><td>5.28E-05</td><td>9.765</td></tr><tr><td>Feb. 07, 2017</td><td>4</td><td>2,293.08</td><td>0.000227</td><td>4.51E-05</td><td>10.006</td></tr><tr><td>Feb. 08, 2017</td><td>5</td><td>2,294.67</td><td>0.000693</td><td>3.83E-05</td><td>10.158</td></tr><tr><td>Feb. 09, 2017</td><td>6</td><td>2,307.87</td><td>0.005752</td><td>3.32E-05</td><td>9.316</td></tr><tr><td>···</td><td>···</td><td>···</td><td>···</td><td>···</td><td>···</td></tr><tr><td>···</td><td>···</td><td>···</td><td>···</td><td>···</td><td>···</td></tr><tr><td>···</td><td>···</td><td>···</td><td>···</td><td>···</td><td>···</td></tr><tr><td>Jan. 31, 2022</td><td>1258</td><td>4,515.55</td><td>0.018886</td><td>2.02E-04</td><td>6.740</td></tr><tr><td>Feb. 01, 2022</td><td>1259</td><td>4,546.54</td><td>0.006863</td><td>2.33E-04</td><td>8.163</td></tr><tr><td colspan="6">GARCH parameters</td></tr><tr><td>ω</td><td>α</td><td>β</td><td></td><td></td><td></td></tr><tr><td>0.000003914</td><td>0.2111</td><td>0.7623</td><td></td><td></td><td></td></tr></table> probability distribution of  $u_{i}$  conditional on the variance is normal. A similar analysis to the one just given shows the best parameters are the ones that maximize


$$

\prod_ {i = 1} ^ {m} \left[ \frac {1}{\sqrt {2 \pi v _ {i}}} \exp \left(\frac {- u _ {i} ^ {2}}{2 v _ {i}}\right) \right]

$$

Taking logarithms, we see that this is equivalent to maximizing

$$

\sum_ {i = 1} ^ {m} \left[ - \ln \left(v _ {i}\right) - \frac {u _ {i} ^ {2}}{v _ {i}} \right] \tag {8.13}

$$

This is the same as the expression in equation (8.12), except that  $\nu$  is replaced by  $\nu_{i}$ . It is necessary to search iteratively to find the parameters in the model that maximize the expression in equation (8.13).

The spreadsheet in Table 8.4 indicates how the calculations could be organized for the GARCH(1,1) model. The table analyzes data on the S&P 500 between February 2, 2017, and February 1, 2022. $^{8}$

The numbers in the table are based on the estimates of the three GARCH(1,1) parameters:  $\omega$ ,  $\alpha$ , and  $\beta$ . The first column in the table records the date. The second column counts the days. The third column shows the S&P 500 at the end of day  $i$ ,  $S_{i}$ . The fourth column shows the proportional change in the S&P 500 between the end of day  $i - 1$  and the end of day  $i$ . This is  $u_{i} = (S_{i} - S_{i - 1}) / S_{i - 1}$ . The fifth column shows the estimate of the variance rate,  $\nu_{i} = \sigma_{i}^{2}$ , for day  $i$  made at the end of day  $i - 1$ . On day three, we start things off by setting the variance equal to  $u_2^2$ . On subsequent days, equation (8.10) is used. The sixth column tabulates the likelihood measure,  $-\ln(\nu_i) - u_i^2 / \nu_i$ . The values in the fifth and sixth columns are based on the current trial estimates of  $\omega$ ,  $\alpha$ , and  $\beta$ . We are interested in choosing  $\omega$ ,  $\alpha$ , and  $\beta$  to maximize the sum of the numbers in the sixth column. This involves an iterative search procedure. $^9$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/fe50aea4f3529f6d045a10dc26e3cfbf493db543666320275496f50abccbd0f0.jpg)
Figure 8.4 S&P 500 Index: February 2, 2017, to February 1, 2022


In our example, the optimal values of the parameters turn out to be

$$

\omega = 0. 0 0 0 0 0 3 9 1 4

$$

$$

\alpha = 0. 2 1 1 1

$$

$$

\beta = 0. 7 6 2 3

$$ and the maximum value of the function in equation (8.13) is 10764.3624. (The numbers shown in Table 8.4 are those calculated on the final iteration of the search for the optimal  $\omega$ ,  $\alpha$ , and  $\beta$ .)

The long-term variance rate,  $V_{L}$ , in our example is

$$
\frac {\omega}{1 - \alpha - \beta} = \frac {0 . 0 0 0 0 0 3 9 1 4}{0 . 0 2 6 6 2} = 0. 0 0 0 1 4 7
$$

The long-term volatility is  $\sqrt{0.000147}$  or  $1.213\%$  per day.

Figures 8.4 and 8.5 show the S&P 500 index and the GARCH(1,1) volatility during the five-year period covered by the data. Most of the time, the volatility was less than  $2\%$  per day, but occasionally the volatility spiked. The most notable spike was in March 2020 and reflected uncertainties associated with the COVID-19 pandemic. (As Figure 8.1 shows, the VIX index also spiked at that time.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/3c47f9ba9aca673a942f45dc378c43b5662d09f13c2532838f7b6e549c084a4d.jpg)

Figure 8.5 GARCH(1,1) Daily Volatility of S&P 500 Index: February 2, 2017, to February 1, 2022

An alternative, more robust approach to estimating parameters in GARCH(1,1) is known as variance targeting. This involves setting the long-run average variance rate,  $V_{L}$ , equal to the sample variance calculated from the data (or to some other value that is believed to be reasonable). The value of  $\omega$  then equals  $V_{L}(1 - \alpha - \beta)$  and only two parameters have to be estimated. For the data in Table 8.4, the sample volatility is 1.2220, only a little different from the GARCH long-term volatility of  $1.213\%$ . Setting  $V_{L}$  equal to the sample variance (0.000149), the values of  $\alpha$  and  $\beta$  that maximize the objective function in equation (8.13) are 0.2115 and 0.7622, respectively. These are very close to those using the full GARCH procedure. This indicates that variance targeting works very well in this case.

When the EWMA model is used, the estimation procedure is relatively simple. We set  $\omega = 0$ ,  $\alpha = 1 - \lambda$ , and  $\beta = \lambda$ , and only one parameter,  $\lambda$ , has to be estimated. In the data in Table 8.4, the value of  $\lambda$  that maximizes the objective function in equation (8.13) is 0.9086 and the value of the objective function is 10,650, less than the 10,764 obtained with GARCH (1,1).

For both GARCH(1,1) and EWMA, we can use the Solver routine in Excel to search for the values of the parameters that maximize the likelihood function. The routine works well provided we structure our spreadsheet so that the parameters we are searching for have roughly equal values. For example, in GARCH(1,1) we could let cells A1, A2, and A3 contain  $\omega \times 10^5$ ,  $\alpha$ , and  $\beta$ . We could then set B1=A1/100,000. We would then use

B1, A2, and A3 for the calculations, but we would ask Solver to calculate the values of A1, A2, and A3 that maximize the likelihood function. Occasionally, Solver gives a local maximum, so a number of different starting values for the parameter should be tested.

# 8.9.3 How Good Is the Model?

The assumption underlying a GARCH model is that volatility changes with the passage of time. During some periods, volatility is relatively high; during other periods, it is relatively low. To put this another way, when  $u_{i}^{2}$  is high, there is a tendency for  $u_{i+1}^{2}, u_{i+2}^{2}, \ldots$  to be high; when  $u_{i}^{2}$  is low, there is a tendency for  $u_{i+1}^{2}, u_{i+2}^{2}, \ldots$  to be low. We can test how true this is by examining the autocorrelation structure of the  $u_{i}^{2}$ .

Let us assume that the  $u_{i}^{2}$  do exhibit autocorrelation. If a GARCH model is working well, it should remove the autocorrelation. We can test whether it has done this by considering the autocorrelation structure for the variables  $u_{i}^{2} / \sigma_{i}^{2}$ . If these show very little autocorrelation, our model for  $\sigma_{i}$  has succeeded in explaining autocorrelations in the  $u_{i}^{2}$ .

Table 8.5 shows results for the S&P 500 data. The first column shows the lags considered when the autocorrelation is calculated. The second column shows autocorrelations for  $u_{i}^{2}$ ; the third column shows autocorrelations for  $u_{i}^{2} / \sigma_{i}^{2}$ . The table shows that the autocorrelations are positive for  $u_{i}^{2}$  for all lags between 1 and 15. In the case of  $u_{i}^{2} / \sigma_{i}^{2}$ , some of the autocorrelations are positive and some are negative. They are much smaller in magnitude than the autocorrelations for  $u_{i}^{2}$ .

Table 8.5 Autocorrelations Before and After the Use of a GARCH Model

<table><tr><td>Time Lag</td><td>Autocorr for ui2</td><td>Autocorr for ui2/σi2</td></tr><tr><td>1</td><td>0.535</td><td>0.005</td></tr><tr><td>2</td><td>0.557</td><td>0.006</td></tr><tr><td>3</td><td>0.351</td><td>0.004</td></tr><tr><td>4</td><td>0.349</td><td>0.040</td></tr><tr><td>5</td><td>0.334</td><td>-0.022</td></tr><tr><td>6</td><td>0.415</td><td>0.013</td></tr><tr><td>7</td><td>0.326</td><td>-0.016</td></tr><tr><td>8</td><td>0.353</td><td>-0.038</td></tr><tr><td>9</td><td>0.294</td><td>-0.020</td></tr><tr><td>10</td><td>0.259</td><td>0.057</td></tr><tr><td>11</td><td>0.232</td><td>-0.021</td></tr><tr><td>12</td><td>0.169</td><td>-0.026</td></tr><tr><td>13</td><td>0.171</td><td>0.012</td></tr><tr><td>14</td><td>0.168</td><td>-0.002</td></tr><tr><td>15</td><td>0.202</td><td>0.011</td></tr></table>

The GARCH model appears to have done a good job in explaining the data. For a more scientific test, we can use what is known as the Ljung-Box statistic. $^{12}$  If a certain series has  $m$  observations the Ljung-Box statistic is

$$ m \sum_ {k = 1} ^ {K} w _ {k} c _ {k} ^ {2}
$$ where  $c_{k}$  is the autocorrelation for a lag of  $k$ ,  $K$  is the number of lags considered, and


$$ w _ {k} = \frac {m + 2}{m - k}
$$

For  $K = 15$ , zero autocorrelation can be rejected with  $95\%$  confidence when the Ljung-Box statistic is greater than 25.

From Table 8.5, the Ljung-Box statistic for the  $u_{i}^{2}$  series is about 2,141. This is strong evidence of autocorrelation. For the  $u_{i}^{2} / \sigma_{i}^{2}$  series, the Ljung-Box statistic is 11.5, suggesting that the autocorrelation has been largely removed by the GARCH model.

# 8.10 Using GARCH(1,1) to Forecast Future Volatility

The variance rate estimated at the end of day  $n - 1$  for day  $n$ , when GARCH(1,1) is used, is

$$
\sigma_ {n} ^ {2} = (1 - \alpha - \beta) V _ {L} + \alpha u _ {n - 1} ^ {2} + \beta \sigma_ {n - 1} ^ {2}
$$ so that


$$

\sigma_ {n} ^ {2} - V _ {L} = \alpha (u _ {n - 1} ^ {2} - V _ {L}) + \beta (\sigma_ {n - 1} ^ {2} - V _ {L})

$$

On day  $n + t$  in the future, we have

$$

\sigma_ {n + t} ^ {2} - V _ {L} = \alpha (u _ {n + t - 1} ^ {2} - V _ {L}) + \beta (\sigma_ {n + t - 1} ^ {2} - V _ {L})

$$

The expected value of  $u_{n + t - 1}^2$  is that of  $\sigma_{n + t - 1}^2$ . Hence,

$$

E [ \sigma_ {n + t} ^ {2} - V _ {L} ] = (\alpha + \beta) E [ \sigma_ {n + t - 1} ^ {2} - V _ {L} ]

$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/2038c4b348b1dcc5049bab32820cb0b88b96f1716e6e9a17a82799ea6f7e7ad1.jpg)
(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/b97f01be20228e15753dcf9a7521214bb6229933706fc5a0aa10dced8865d59b.jpg)
(b) where  $E$  denotes expected value. Using this equation repeatedly yields
Figure 8.6 Expected Path for the Variance Rate When (a) Current Variance Rate Is Above Long-Term Variance Rate and (b) Current Variance Rate Is Below Long-Term Variance Rate


$$

E [ \sigma_ {n + t} ^ {2} - V _ {L} ] = (\alpha + \beta) ^ {t} (\sigma_ {n} ^ {2} - V _ {L})

$$ or


$$

E [ \sigma_ {n + t} ^ {2} ] = V _ {L} + (\alpha + \beta) ^ {t} (\sigma_ {n} ^ {2} - V _ {L}) \tag {8.14}

$$

This equation forecasts the volatility on day  $n + t$  using the information available at the end of day  $n - 1$ . In the EWMA model,  $\alpha + \beta = 1$  and equation (8.14) show that the expected future variance rate equals the current variance rate. When  $\alpha + \beta < 1$ , the final term in the equation becomes progressively smaller as  $t$  increases. Figure 8.6 shows the expected path followed by the variance rate for situations where the current variance rate is different from  $V_{L}$ . As mentioned earlier, the variance rate exhibits mean reversion with a reversion level of  $V_{L}$  and a reversion rate of  $1 - \alpha - \beta$ . Our forecast of the future variance rate tends toward  $V_{L}$  as we look further and further ahead. This analysis emphasizes the point that we must have  $\alpha + \beta < 1$  for a stable GARCH(1,1) process. When  $\alpha + \beta > 1$ , the weight given to the long-term average variance is negative and the process is mean fleeing rather than mean reverting.

For the S&P 500 data considered earlier,  $\alpha + \beta = 0.9734$  and  $V_{L} = 0.0001470$ . Suppose that our estimate of the current variance rate per day is 0.0003. (This corresponds to a volatility of  $1.732\%$  per day.) In 10 days, the expected variance rate is

$$
0. 0 0 0 1 4 7 0 + 0. 9 7 3 4 ^ {1 0} (0. 0 0 0 3 - 0. 0 0 0 1 4 7 0) = 0. 0 0 0 2 6 3 8
$$

The expected volatility per day is  $\sqrt{0.0002638}$  or  $1.62\%$ , still well above the long-term volatility of  $1.21\%$  per day. However, the expected variance rate in 100 days is

$$
0. 0 0 0 1 4 7 0 + 0. 9 7 3 4 ^ {1 0 0} (0. 0 0 0 3 - 0. 0 0 0 1 4 7 0) = 0. 0 0 0 1 5 7 3
$$ and the expected volatility per day is  $1.25\%$ , quite close to the long-term volatility of  $1.21\%$ .

# 8.10.1 Volatility Term Structures

Suppose it is day  $n$ . Define

$$
V (t) = E (\sigma_ {n + t} ^ {2})
$$ and


$$ a = \ln {\frac {1}{\alpha + \beta}}
$$ so that equation (8.14) becomes


$$

V (t) = V _ {L} + e ^ {- a t} [ V (0) - V _ {L} ]

$$

$V(t)$  is an estimate of the instantaneous variance rate in  $t$  days. The average variance rate per day between today and time  $T$  is

$$

\frac {1}{T} \int_ {0} ^ {T} V (t) d t = V _ {L} + \frac {1 - e ^ {- a T}}{a T} [ V (0) - V _ {L} ]

$$

As  $T$  increases, this approaches  $V_{L}$ . Define  $\sigma (T)$  as the volatility per annum that should be used to price a  $T$ -day option under GARCH(1,1). Assuming 252 days per year,  $\sigma (T)^{2}$  is 252 times the average variance rate per day, so that

$$

\sigma (T) ^ {2} = 2 5 2 \left\{V _ {L} + \frac {1 - e ^ {- a T}}{a T} [ V (0) - V _ {L} ] \right\} \tag {8.15}

$$

The relationship between the volatilities of options and their maturities is referred to as the volatility term structure. The volatility term structure is usually calculated from implied volatilities, but equation (8.15) provides an alternative approach for estimating it from the GARCH(1,1) model. Although the volatility term structure estimated from GARCH(1,1) is not the same as that calculated from implied volatilities, it is often used to predict the way that the actual volatility term structure will respond to volatility changes.

Table 8.6 S&P 500 Volatility Term Structure Predicted from GARCH(1,1)

<table><tr><td>Option life (days)</td><td>10</td><td>30</td><td>50</td><td>100</td><td>500</td></tr><tr><td>Option volatility (\% per annum)</td><td>26.62</td><td>25.20</td><td>24.13</td><td>22.45</td><td>19.98</td></tr></table>

When the current volatility is above the long-term volatility, the GARCH(1,1) model estimates a downward-sloping volatility term structure. When the current volatility is below the long-term volatility, it estimates an upward-sloping volatility term structure. In the case of the S&P 500 data,  $a = \ln (1 / 0.97338) = 0.02698$  and  $V_{L} = 0.0001470$ . Suppose that the current variance rate per day,  $V(0)$ , is estimated as 0.0003 per day. It follows from equation (8.15) that

$$

\sigma (T) ^ {2} = 2 5 2 \left[ 0. 0 0 0 1 4 7 0 + \frac {1 - e ^ {- 0 . 0 2 6 9 8 T}}{0 . 0 2 6 9 8 T} (0. 0 0 0 3 - 0. 0 0 0 1 4 7 0) \right]

$$ where  $T$  is measured in days. Table 8.6 shows the volatility per year for different values of  $T$ .

# 8.10.2 Impact of Volatility Changes

Equation (8.15) can be written as

$$
\sigma (T) ^ {2} = 2 5 2 \left\{V _ {L} + \frac {1 - e ^ {- a T}}{a T} \left(\frac {\sigma (0) ^ {2}}{2 5 2} - V _ {L}\right) \right\}
$$

When  $\sigma(0)$  changes by  $\Delta \sigma(0)$ ,  $\sigma(T)$  changes by approximately

$$
\frac {1 - e ^ {- a T}}{a T} \frac {\sigma (0)}{\sigma (T)} \Delta \sigma (0) \tag {8.16}
$$

Table 8.7 shows the effect of a volatility change on options of varying maturities for our S&P 500 data. We assume as before that  $V(0) = 0.0003$  so that  $\sigma(0) = \sqrt{252} \times \sqrt{0.0003} = 27.50\%$ . The table considers a 100-basis-point change in the instantaneous volatility from 27.50\% per year to 28.50\% per year. This means that  $\Delta \sigma(0) = 0.01$  or  $1\%$ .

Many financial institutions use analyses such as this when determining the exposure of their books to volatility changes. Rather than consider an across-the-board increase of  $1\%$  in implied volatilities when calculating vega, they relate the size of the volatility increase that is considered to the maturity of the option. Based on Table 8.7, a  $0.91\%$  volatility increase would be considered for a 10-day option, a  $0.75\%$  increase for a 30-day option, a  $0.63\%$  increase for a 50-day option, and so on.

Table 8.7 Impact of  $1\%$  Increase in the Instantaneous Volatility Predicted from GARCH(1,1)

<table><tr><td>Option life (days)</td><td>10</td><td>30</td><td>50</td><td>100</td><td>500</td></tr><tr><td>Increase in volatility (\%)</td><td>0.91</td><td>0.75</td><td>0.63</td><td>0.42</td><td>0.10</td></tr></table>

# Summary

In risk management, the daily volatility of a market variable is defined as the standard deviation of the percentage daily change in the market variable. The daily variance rate is the square of the daily volatility. Volatility tends to be much higher on trading days than on nontrading days. As a result, nontrading days are ignored in volatility calculations. It is tempting to assume that daily changes in market variables are normally distributed. In fact, this is far from true. Most market variables have distributions for percentage daily changes with much heavier tails than the normal distribution. The power law has been found to be a good description of the tails of many distributions that are encountered in practice.

This chapter has discussed methods for attempting to keep track of the current level of volatility. Define  $u_{i}$  as the percentage change in a market variable between the end of day  $i - 1$  and the end of day  $i$ . The variance rate of the market variable (that is, the square of its volatility) is calculated as a weighted average of the  $u_{i}^{2}$ . The key feature of the methods that have been discussed here is that they do not give equal weight to the observations on the  $u_{i}^{2}$ . The more recent an observation, the greater the weight assigned to it. In the EWMA model and the GARCH(1,1) model, the weights assigned to observations decrease exponentially as the observations become older. The GARCH(1,1) model differs from the EWMA model in that some weight is also assigned to the long-run average variance rate. Both the EWMA and GARCH(1,1) models have structures that enable forecasts of the future level of variance rate to be produced relatively easily.

Maximum likelihood methods are usually used to estimate parameters in GARCH(1,1) and similar models from historical data. These methods involve using an iterative procedure to determine the parameter values that maximize the chance or likelihood that the historical data will occur. Once its parameters have been determined, a model can be judged by how well it removes autocorrelation from the  $u_{i}^{2}$ .

The GARCH(1,1) model can be used to estimate a volatility for options from historical data. This analysis is often used to calculate the impact of a shock to volatility on the implied volatilities of options of different maturities.

# Further Reading

# On the Causes of Volatility

Fama, E. F. "The Behavior of Stock Market Prices." Journal of Business 38 (January 1965): 34-105.

French, K. R. "Stock Returns and the Weekend Effect." Journal of Financial Economics 8 (March 1980): 55-69.

French, K. R., and R. Roll. "Stock Return Variances: The Arrival of Information and the Reaction of Traders." Journal of Financial Economics 17 (September 1986): 5-26.

Roll, R. "Orange Juice and Weather." American Economic Review 74, no. 5 (December 1984): 861-880.

# On GARCH

Bollerslev, T. "Generalized Autoregressive Conditional Heteroscedasticity." Journal of Econometrics 31 (1986): 307-327.

Cumby, R., S. Figlewski, and J. Hasbrook. "Forecasting Volatilities and Correlations with EGARCH Models." Journal of Derivatives 1, no. 2 (Winter 1993): 51-63.

Engle, R. F. "Autoregressive Conditional Heteroscedasticity with Estimates of the Variance of U.K. Inflation." Econometrica 50 (1982): 987-1008.

Engle, R. F., and J. Mezrich. "Grappling with GARCH." Risk (September 1995): 112-117.

Engle, R. F., and V. Ng. "Measuring and Testing the Impact of News on Volatility." Journal of Finance 48 (1993): 1749-1778.

Nelson, D. "Conditional Heteroscedasticity and Asset Returns; A New Approach." Econometrica 59 (1990): 347-370.

Noh, J., R. F. Engle, and A. Kane. "Forecasting Volatility and Option Prices of the S&P 500 Index." Journal of Derivatives 2 (1994): 17-30.

# Practice Questions and Problems (Answers at End of Book)

8.1 The volatility of an asset is  $2\%$  per day. What is the standard deviation of the percentage price change in three days?
8.2 The volatility of an asset is  $25\%$  per annum. What is the standard deviation of the percentage price change in one trading day? Assuming a normal distribution with zero mean, estimate  $95\%$  confidence limits for the percentage price change in one day.
8.3 Why do traders assume 252 rather than 365 days in a year when using volatilities?
8.4 What is implied volatility? What does it mean if different options on the same asset have different implied volatilities?
8.5 Suppose that observations on an exchange rate at the end of the past 11 days have been 0.7000, 0.7010, 0.7070, 0.6999, 0.6970, 0.7003, 0.6951, 0.6953, 0.6934, 0.6923, and 0.6922. Estimate the daily volatility using both equation (8.2) and equation (8.4).
8.6 The number of visitors to websites follows the power law in equation (8.1) with  $\alpha = 2$ . Suppose that  $1\%$  of sites get 500 or more visitors per day. What percentage of sites get (a) 1,000 and (b) 2,000 or more visitors per day?
8.7 Explain the exponentially weighted moving average (EWMA) model for estimating volatility from historical data.
8.8 What is the difference between the exponentially weighted moving average model and the GARCH(1,1) model for updating volatilities?
 8.9 The most recent estimate of the daily volatility of an asset is 1.5\% and the price of the asset at the close of trading yesterday was \$30.00. The parameter λ in the EWMA model is 0.94. Suppose that the price of the asset at the close of trading today is \$30.50. How will this cause the volatility to be updated by the EWMA model?

8.10 A company uses an EWMA model for forecasting volatility. It decides to change the parameter  $\lambda$  from 0.95 to 0.85. Explain the likely impact on the forecasts.
8.11 Assume that an index at close of trading yesterday was 1,040 and the daily volatility of the index was estimated as  $1\%$  per day at that time. The parameters in a GARCH(1,1) model are  $\omega = 0.000002$ ,  $\alpha = 0.06$ , and  $\beta = 0.92$ . If the level of the index at close of trading today is 1,060, what is the new volatility estimate?
8.12 The most recent estimate of the daily volatility of the dollar-sterling exchange rate is  $0.6\%$  and the exchange rate at 4:00 p.m. yesterday was 1.5000. The parameter  $\lambda$  in the EWMA model is 0.9. Suppose that the exchange rate at 4:00 p.m. today proves to be 1.4950. How would the estimate of the daily volatility be updated?
8.13 A company uses the GARCH(1,1) model for updating volatility. The three parameters are  $\omega$ ,  $\alpha$ , and  $\beta$ . Describe the impact of making a small increase in each of the parameters while keeping the others fixed.
8.14 The parameters of a GARCH(1,1) model are estimated as  $\omega = 0.000004$ ,  $\alpha = 0.05$  and  $\beta = 0.92$ . What is the long-run average volatility and what is the equation describing the way that the variance rate reverts to its long-run average? If the current volatility is  $20\%$  per year, what is the expected volatility in 20 days?
8.15 Suppose that the daily volatility of the FTSE 100 stock index (measured in pounds sterling) is  $1.8\%$  and the daily volatility of the dollar-sterling exchange rate is  $0.9\%$ . Suppose further that the correlation between the FTSE 100 and the dollar-sterling exchange rate is 0.4. What is the volatility of the FTSE 100 when it is translated to U.S. dollars? Assume that the dollar-sterling exchange rate is expressed as the number of U.S. dollars per pound sterling. (Hint: When  $Z = XY$ , the percentage daily change in  $Z$  is approximately equal to the percentage daily change in  $X$  plus the percentage daily change in  $Y$ .)
8.16 Suppose that GARCH(1,1) parameters have been estimated as  $\omega = 0.000003$ ,  $\alpha = 0.04$ , and  $\beta = 0.94$ . The current daily volatility is estimated to be  $1\%$ . Estimate the daily volatility in 30 days.
8.17 Suppose that  $\mathrm{GARCH}(1,1)$  parameters have been estimated as  $\omega = 0.000002$ ,  $\alpha = 0.04$ , and  $\beta = 0.94$ . The current daily volatility is estimated to be  $1.3\%$ . Estimate the volatility per annum that should be used to price a 20-day option.

# Further Questions

8.18 Suppose that observations on a stock price (in dollars) at the end of each of 15 consecutive days are as follows:

30.2, 32.0, 31.1, 30.1, 30.2, 30.3, 30.6, 30.9, 30.5, 31.1, 31.3, 30.8, 30.3, 29.9, 29.8

Estimate the daily volatility using both equation (8.2) and equation (8.4).

8.19 Suppose that the price of an asset at close of trading yesterday was \$300 and its volatility was estimated as 1.3\% per day. The price at the close of trading today is \$298. Update the volatility estimate using

(a) The EWMA model with  $\lambda = 0.94$

(b) The GARCH(1,1) model with  $\omega = 0.000002$ ,  $\alpha = 0.04$ , and  $\beta = 0.94$ .

8.20 An Excel spreadsheet containing over 900 days of daily data on a number of different exchange rates and stock indices can be downloaded from the author's website: www-2.rotman.utoronto.ca/~hull/data. Choose one exchange rate and one stock index. Estimate the value of  $\lambda$  in the EWMA model that minimizes the value of

$$
\sum_ {i} (\nu_ {i} - \beta_ {i}) ^ {2}
$$ where  $\nu_{i}$  is the variance forecast made at the end of day  $i - 1$  and  $\beta_{i}$  is the variance calculated from data between day  $i$  and day  $i + 25$ . Use the Solver tool in Excel. To start the EWMA calculations, set the variance forecast at the end of the first day equal to the square of the return on that day.


8.21 Suppose that the parameters in a GARCH(1,1) model are  $\alpha = 0.03$ ,  $\beta = 0.95$ , and  $\omega = 0.000002$ .

(a) What is the long-run average volatility?
(b) If the current volatility is  $1.5\%$  per day, what is your estimate of the volatility in 20, 40, and 60 days?
(c) What volatility should be used to price 20-, 40-, and 60-day options?
(d) Suppose that there is an event that increases the volatility from  $1.5\%$  per day to  $2\%$  per day. Estimate the effect on the volatility in 20, 40, and 60 days.
(e) Estimate by how much the event increases the volatilities used to price 20-, 40-, and 60-day options.

8.22 Estimate parameters for the EWMA and GARCH(1,1) models on the euro-USD exchange rate data between July 27, 2005, and July 27, 2010. These data can be found on the author's website: www-2.rotman.utoronto.ca/\~hull/data.


8.23 The probability that the loss from a portfolio will be greater than 10 million in one month is estimated to be 5\%.

(a) What is the loss that has a  $1\%$  chance of being exceeded, assuming the change in value of the portfolio is normally distributed with zero mean?
(b) What is the loss that has a  $1\%$  chance of being exceeded, assuming that the power law applies with  $\alpha = 3$ ?


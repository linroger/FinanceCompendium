---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 13
linter-yaml-title-alias: Chapter 13
---

# Chapter 13

# Model-Building Approach

An alternative to the historical simulation approach for calculating risk measures such as value at risk (VaR) and expected shortfall (ES) is the model-building approach, sometimes also referred to as the variance-covariance approach. This involves assuming a model for the joint distribution of changes in market variables and using historical data to estimate the model parameters.

The model-building approach is ideally suited to the situation where the change in value of a portfolio is linearly dependent on changes in the values of the underlying market variables (stock prices, exchange rates, interest rates, etc.). In this case, if the daily changes in the underlying market variables are assumed to be multivariate normal, it is computationally much faster than historical simulation. It is in essence an extension of Harry Markowitz's pioneering work in portfolio theory (see Section 1.1). The probability distribution of the change in the value of the portfolio is normal, and the mean and standard deviation of the change in the value of the portfolio can be calculated analytically from the mean and standard deviation of changes in the market variables and the correlations between those changes.

When a portfolio includes options and other non-linear derivatives, the probability distribution of the change in the value of a portfolio over a short period of time can no longer reasonably be assumed to be normal. We will discuss ways non-linearities can be handled when we discuss derivatives in Chapter 15. We will discuss how interest rates are handled by the model-building approach in Chapter 14.

# 13.1 The Basic Methodology

We start by considering how VaR is calculated using the model-building approach in a very simple situation where the portfolio under consideration consists of a position in a single stock. The portfolio we consider is one consisting of shares in Microsoft valued at 10 million. We suppose that the time horizon is 10 days and the VaR confidence level is 99\%, so we are interested in the loss level over 10 days that we are 99\% confident will not be exceeded. Initially, we consider a one-day time horizon.

We assume that the volatility of Microsoft is  $2\%$  per day (corresponding to about  $32\%$  per year). Because the size of the position is  $\$10$  million, the standard deviation of daily changes in the value of the position is  $2\%$  of  $\$10$  million, or  $\$200,000$ .

It is customary in the model-building approach to assume that the expected change in a market variable over the time period considered is zero. This is not exactly true, but it is a reasonable assumption. The expected change in the price of a market variable over a short time period is generally small when compared to the standard deviation of the change. Suppose, for example, that Microsoft has an expected return as high as  $20\%$  per annum. Over a one-day period, the expected return is  $0.20 / 252$ , or about  $0.08\%$ , whereas the standard deviation of the return is  $2\%$ . Over a 10-day period, the expected return is about  $0.08\% \times 10$ , or  $0.8\%$ , whereas the standard deviation of the return is  $2\sqrt{10}$ , or about  $6.3\%$ .

So far, we have established that the change in the value of the portfolio of Microsoft shares over a one-day period has a standard deviation of  \$200,000 and (at least approximately) a mean of zero. We assume that the change is normally distributed.^2\$  Because  $N(-2.326) = 0.01$ , there is a  $1\%$  probability that a normally distributed variable will decrease in value by more than 2.326 standard deviations. Equivalently, we are  $99\%$  certain that a normally distributed variable will not decrease in value by more than 2.326 standard deviations. The one-day  $99\%$  VaR for our portfolio consisting of a 10 million position in Microsoft is therefore

$$
2. 3 2 6 \times 2 0 0, 0 0 0 = \$ 4 6 5, 3 0 0
$$

Assuming that the changes in Microsoft's stock price returns on successive days are independent, we can assume that the standard deviation of the return over 10 days is  $0.02 \times \sqrt{10}$  and that the 10-day return is normally distributed. This gives the 10-day  $99\%$  VaR for Microsoft as

$$
1 0, 0 0 0, 0 0 0 \times 0. 0 2 \times \sqrt {1 0} \times 2. 3 2 6 = \$ 1, 4 7 1, 3 0 0
$$

The 10-day  $99\%$  ES is given by equation (11.2) with  $\sigma = 200,000\sqrt{10} = 632,500$ ,  $Y = 2.326$ , and  $X = 0.99$ . It is 1,686,000.

Consider next a portfolio consisting of a 5 million position in AT&T, and suppose the daily volatility of AT&T is 1\% (approximately 16\% per year). A similar calculation to that for Microsoft shows that the standard deviation of the change in the value of the portfolio in one day is

$$
5, 0 0 0, 0 0 0 \times 0. 0 1 = 5 0, 0 0 0
$$

Assuming that the change is normally distributed, the one-day  $99\%$  VaR is

$$
5 0, 0 0 0 \times 2. 3 2 6 = \$ 1 1 6, 3 0 0
$$ and the 10-day  $99\%$  VaR is


$$

1 1 6, 3 0 0 \times \sqrt {1 0} = \$ 3 6 7, 8 0 0

$$

The 10-day  $99\%$  ES is, from equation (11.2),  $\$ 421,400$ .

# 13.1.1 Two-Asset Case

Now consider a portfolio consisting of both  \$10 million of Microsoft shares and\$ 5 million of AT&T shares. We suppose that the returns on the two shares have a correlation of 0.3. A standard result in statistics tells us that, if two variables  $X$  and  $Y$  have standard deviations equal to  $\sigma_{X}$  and  $\sigma_{Y}$  with the coefficient of correlation between them being equal to  $\rho$ , then the standard deviation of  $X + Y$  is given by

$$

\sigma_ {X + Y} = \sqrt {\sigma_ {X} ^ {2} + \sigma_ {Y} ^ {2} + 2 \rho \sigma_ {X} \sigma_ {Y}}

$$

To apply this result, we set  $X$  equal to the change in the value of the position in Microsoft over a one-day period and  $Y$  equal to the change in the value of the position in AT&T over a one-day period, so that

$$

\sigma_ {X} = 2 0 0, 0 0 0 \quad \sigma_ {Y} = 5 0, 0 0 0

$$

The standard deviation of the one-day change in the value of the portfolio we are considering is therefore

$$

\sqrt {2 0 0 , 0 0 0 ^ {2} + 5 0 , 0 0 0 ^ {2} + 2 \times 0 . 3 \times 2 0 0 , 0 0 0 \times 5 0 , 0 0 0} = 2 2 0, 2 2 7

$$

The mean change is assumed to be zero. If we further assume that the joint distribution of the returns from Microsoft and AT&T is bivariate normal, the change in the portfolio is normally distributed. The one-day  $99\%$  VaR is therefore

$$

2 2 0, 2 2 7 \times 2. 3 2 6 = \$ 5 1 2, 3 0 0

$$

When a period of 10 days is considered, both σX and σY increase by a multiplicative factor of √10. As a result, VaR also increases by a multiplicative factor of √10 to become \$1,620,100. The 10-day 99\% ES is given by equation (11.2) with σ = 220,227√10, Y = 2.326, and X = 0.99. It is \$1,856,100.

# 13.1.2 The Benefits of Diversification

In the example we have just considered:

1. The 10-day  $99\%$  VaR for the portfolio of Microsoft shares is 1,471,300.
2. The 10-day  $99\%$  VaR for the portfolio of AT&T shares is 367,800.
 3. The 10-day 99\% VaR for the portfolio of both Microsoft and AT&T shares is 1,620,100.

The amount

$$

\left(\mathbb {S} 1, 4 7 1, 3 0 0 + \mathbb {S} 3 6 7, 8 0 0\right) - \mathbb {S} 1, 6 2 0, 1 0 0 = \mathbb {S} 2 1 9, 0 0 0

$$ represents the benefits of diversification. If Microsoft and AT&T were perfectly correlated, the VaR for the portfolio of both Microsoft and AT&T would equal the VaR for the Microsoft portfolio plus the VaR for the AT&T portfolio. Less than perfect correlation leads to some of the risk being "diversified away." This is true of ES as well as VaR.


# 13.2 Generalization

The examples we have just considered are simple illustrations of the use of the linear model for calculating VaR. Suppose that we have a portfolio worth  $P$  that is dependent on  $n$  market variables. Following the market's usual terminology, we will refer to market variables as risk factors. Examples of risk factors are equity prices, commodity prices, or exchange rates. (We defer consideration of interest rates until the next chapter.) We suppose that, to a good approximation, the change in the value of the portfolio is linearly related to proportional changes in the risk factors so that

$$

\Delta P = \sum_ {i = 1} ^ {n} \delta_ {i} \Delta x _ {i} \tag {13.1}

$$ where  $\Delta P$  is the dollar change in the value of the whole portfolio in one day and  $\Delta x_{i}$  is the proportional change in the  $i$ th risk factor in one day.

The parameter,  $\delta_{i}$ , is a variation on the delta risk measure that is used for derivatives and will be explained in Chapter 15. The delta of a position with respect to a risk factor is normally defined as the ratio  $\Delta P / \Delta S$  where  $\Delta S$  is a small change in the value of the risk factor (with all other risk factors remaining the same) and  $\Delta P$  is the resultant change in the value of the portfolio. The parameter,  $\delta_{i}$ , we use here is  $\Delta P / \Delta x_{i}$  where  $\Delta x_{i}$  is a small percentage change in the value of the risk factor (again with all other risk factors remaining the same) and  $\Delta P$  is the resultant dollar change in the value of the portfolio.

If we assume that the  $\Delta x_{i}$  in equation (13.1) are multivariate normal,  $\Delta P$  is normally distributed. To calculate VaR, we therefore need to calculate only the mean and standard deviation of  $\Delta P$ . We assume, as discussed in the previous section, that the expected value of each  $\Delta x_{i}$  is zero. This implies that the mean of  $\Delta P$  is zero.

The way the standard deviation of  $\Delta P$  is calculated is an extension of the two-asset example in the previous section. We define  $\sigma_{i}$  as the standard deviation of  $\Delta x_{i}$ , and  $\rho_{ij}$  is the coefficient of correlation between  $\Delta x_{i}$  and  $\Delta x_{j}$ . (Because we are considering one day,  $\sigma_{i}$  is the volatility per day.) The standard deviation of  $\Delta P$  is given by

$$
\sigma_ {P} = \sqrt {\sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \rho_ {i j} \delta_ {i} \delta_ {j} \sigma_ {i} \sigma_ {j}} \tag {13.2}
$$

This equation can also be written as

$$
\sigma_ {P} = \sqrt {\sum_ {i = 1} ^ {n} \delta_ {i} ^ {2} \sigma_ {i} ^ {2} + \sum_ {i \neq j} \rho_ {i j} \delta_ {i} \delta_ {j} \sigma_ {i} \sigma_ {j}}
$$ or as


$$

\sigma_ {P} = \sqrt {\sum_ {i = 1} ^ {n} \delta_ {i} ^ {2} \sigma_ {i} ^ {2} + 2 \sum_ {j <   i} \rho_ {i j} \delta_ {i} \delta_ {j} \sigma_ {i} \sigma_ {j}}

$$

Yet another way of writing this key result is

$$

\sigma_ {P} ^ {2} = \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \operatorname {c o v} _ {i j} \delta_ {i} \delta_ {j} \tag {13.3}

$$ where  $\operatorname{cov}_{ij}$  is the covariance between  $\Delta x_{i}$  and  $\Delta x_{j}$ . Using matrix notation, this becomes

$$
\pmb {\sigma} _ {P} ^ {2} = \pmb {\delta} ^ {T} C \pmb {\delta}
$$ where  $\pmb{\delta}$  is the (column) vector whose  $i$ th element is  $\delta_{i}$ ,  $C$  is the variance-covariance matrix (see Section 9.3), and  $\pmb{\delta}^T$  is the transpose of  $\pmb{\delta}$ .


The standard deviation of the change over  $T$  days is  $\sigma_{P}\sqrt{T}$ , and the VaR for a  $T$ -day time horizon and an  $X\%$  confidence level is  $N^{-1}(X)\sigma_{P}\sqrt{T}$ . The ES for a  $T$ -day horizon and an  $X\%$  confidence level is, from equation (11.2),

$$

\sigma_ {P} \sqrt {T} \frac {e ^ {- Y ^ {2} / 2}}{\sqrt {2 \pi} (1 - X)}

$$ where  $Y = N^{-1}(X)$ . In these results,  $N^{-1}$  is the inverse cumulative normal distribution function (NORMINV in Excel).

# Example 13.1

In the example considered in the previous section, the portfolio,  $P$ , had \$10 million invested in the first asset (Microsoft) and \$5 million invested in the second asset (AT&T). In this case, when amounts are measured in millions of dollars,  $\delta_1 = 10$ ,  $\delta_2 = 5$ , and

$$
\Delta P = 1 0 \Delta x _ {1} + 5 \Delta x _ {2}
$$

Also,  $\sigma_{1} = 0.02$ ,  $\sigma_{2} = 0.01$ , and  $\rho_{12} = 0.3$  so that

$$
\sigma_ {P} ^ {2} = 1 0 ^ {2} \times 0. 0 2 ^ {2} + 5 ^ {2} \times 0. 0 1 ^ {2} + 2 \times 1 0 \times 5 \times 0. 3 \times 0. 0 2 \times 0. 0 1 = 0. 0 4 8 5
$$ and  $\sigma_{p} = 0.220$ . This is the standard deviation of the change in the portfolio value per day (in millions of dollars). The 10-day  $99\%$  VaR is  $2.326 \times 0.220 \times \sqrt{10} = \$ 1.62$ million. The 10-day ES is:


$$
0. 2 2 0 \times \sqrt {1 0} \frac {e ^ {(- 2 . 3 2 6 ^ {2} / 2)}}{\sqrt {2 \pi} \times 0 . 0 1}
$$ or 1.86 million. These results agree with the calculations in the previous section.


# 13.2.1 Relation to Markowitz

The portfolio return in one day is  $\Delta P / P$ . From equation (13.2), the variance of this is

$$

\sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \rho_ {i j} w _ {i} w _ {j} \sigma_ {i} \sigma_ {j}

$$ where  $w_{i} = \delta_{i} / P$ . When the portfolio consists of long and short positions in  $n$  assets with the  $i$ th risk factor being the value of the  $i$ th asset,  $\delta_{i}$  is the value of the investment in the  $i$ th asset (as shown in Example 13.1) and  $w_{i}$  is therefore the proportion of the portfolio invested in the  $i$ th asset. This version of equation (13.2) corresponds to the work of Markowitz and is often used by portfolio managers to relate the standard deviation of the return on a portfolio to the standard deviation of the returns on the components of the portfolio and the correlations between the returns on the components of the portfolio. (See Section 1.1.)

# 13.3 The Four-Index Example Revisited

As an example of the application of equation (13.2) or (13.3), return to the example considered in Section 12.1. This involved a portfolio on July 8, 2020, consisting of a  \$4 million investment in the S&P 500, a\$ 3 million investment in the FTSE 100, a \$1 million investment in the CAC 40, and a \$2 million investment in the Nikkei 225. Daily returns were collected over 500 days ending on July 8, 2020. (Data and calculations presented here are on the author's website: www-2.rotman.utoronto.ca/~hull/RMFI/VaRExample.)

The correlation matrix, when calculations are carried out in the usual way with the same weight for all 500 returns, is shown in Table 13.1. The covariance matrix is shown in Table 13.2.

From equation (13.3), this variance-covariance matrix gives the variance of the portfolio losses (000s) as 14,406.193. The standard deviation is the square root of this, or 120.03. The one-day 99\% VaR is therefore

$$
2. 3 2 6 \times 1 2 0. 0 3 = 2 7 9. 2 2 2
$$

Table 13.1 Correlation Matrix on July 8, 2020, Calculated by Giving the Same Weight to Each of the Last 500 Daily Returns (variable 1 is S&P 500; variable 2 is FTSE 100; variable 3 is CAC 40; variable 4 is Nikkei 225)

<table><tr><td>1</td><td>0.415</td><td>0.694</td><td>0.368</td></tr><tr><td>0.415</td><td>1</td><td>0.656</td><td>0.566</td></tr><tr><td>0.694</td><td>0.656</td><td>1</td><td>0.482</td></tr><tr><td>0.368</td><td>0.566</td><td>0.482</td><td>1</td></tr></table>

Table 13.2 Covariance Matrix on July 8, 2020, Calculated by Giving the Same Weight to Each of the Last 500 Daily Returns (variable 1 is S&P 500; variable 2 is FTSE 100; variable 3 is CAC 40; variable 4 is Nikkei 225)

<table><tr><td>0.0002751</td><td>0.0000942</td><td>0.0001771</td><td>0.0000801</td></tr><tr><td>0.0000942</td><td>0.0001868</td><td>0.0001380</td><td>0.0001016</td></tr><tr><td>0.0001771</td><td>0.0001380</td><td>0.0002369</td><td>0.0000974</td></tr><tr><td>0.0000801</td><td>0.0001016</td><td>0.0000974</td><td>0.0001726</td></tr></table> or 279,222, and the one-day 99\% ES is

$$
1 2 0. 0 3 \times \frac {e ^ {- 2 . 3 2 6 ^ {2} / 2}}{\sqrt {2 \pi} \times 0 . 0 1} = 3 1 9. 8 9 4
$$ or 319,894. These values are much lower than the values given by the historical simulation approach in Chapter 12. This is because the latter is greatly affected by a handful of large losses occurring in March 2020.


# 13.3.1 Use of EWMA

Instead of calculating variances and covariances by giving equal weight to all observed returns, we now use the exponentially weighted moving average (EWMA) method with \lambda = 0.94. This gives the variance-covariance matrix in Table 13.3. From equation (13.3), the variance of portfolio losses (000s) is 16,903.752. The standard deviation is the square root of this, or 130.014. The one-day 99\% VaR is therefore

$$
2. 3 2 6 \times 1 3 0. 0 1 4 = 3 0 2. 4 5 9
$$ or 302,459, and the one-day ES is, from equation (11.2), 346,516. Table 13.4 shows the estimated volatilities of the indices. Volatilities are higher when EWMA is used because


Table 13.3 Covariance Matrix on July 8, 2020, When EWMA with  $\lambda = 0.94$  Is Used (variable 1 is S&P 500; variable 2 is FTSE 100; variable 3 is CAC 40; variable 4 is Nikkei 225)

<table><tr><td>0.0003089</td><td>0.0000681</td><td>0.0002160</td><td>0.0000678</td></tr><tr><td>0.0000681</td><td>0.0002729</td><td>0.0001878</td><td>0.0001586</td></tr><tr><td>0.0002160</td><td>0.0001878</td><td>0.0003584</td><td>0.0001464</td></tr><tr><td>0.0000678</td><td>0.0001586</td><td>0.0001464</td><td>0.0002707</td></tr></table>

Table 13.4 Volatilities (\% per day) on July 8, 2020, for the Equal Weighting and EWMA Approaches

<table><tr><td></td><td>S&amp;P 500</td><td>FTSE 100</td><td>CAC 40</td><td>Nikkei 225</td></tr><tr><td>Equal weighting</td><td>1.66</td><td>1.37</td><td>1.54</td><td>1.31</td></tr><tr><td>EWMA</td><td>1.76</td><td>1.65</td><td>1.89</td><td>1.65</td></tr></table>

Table 13.5 Correlation Matrix on July 8, 2020, When EWMA Method Is Used (variable 1 is S&P 500; variable 2 is FTSE 100; variable 3 is CAC 40; variable 4 is Nikkei 225)

<table><tr><td>1</td><td>0.235</td><td>0.649</td><td>0.235</td></tr><tr><td>0.235</td><td>1</td><td>0.601</td><td>0.584</td></tr><tr><td>0.649</td><td>0.601</td><td>1</td><td>0.470</td></tr><tr><td>0.235</td><td>0.584</td><td>0.470</td><td>1</td></tr></table> more weight is given to the March 2020 period. Comparing Table 13.5 with Table 13.1, we see that correlations are also lower when EWMA is used. Normally correlations increase in stressed market conditions. In this case, it appears that movements in indices were less closely aligned during the first half of 2020.


# 13.4 Extensions of the Basic Procedure

In this section we continue to consider the situation where a portfolio is linearly dependent on the underlying risk factors and explain some extensions of the model in equations (13.2).

# 13.4.1 Stressed Measures

Suppose we are interested in stressed VaR or stressed ES. As discussed in Section 12.1.3, this is an estimate based on data from a stressed period in the past, not from a recent period. The methods we have proposed so far in this chapter can be modified by estimating volatilities and correlations using data from a stressed period rather than from a recent period.


# 13.4.2 Non-Normal Distributions

In Section 11.9 we explained that an approximate formula for aggregating the VaRs for  $n$  portfolios is

$$

\mathrm {V a R} _ {\text {t o t a l}} = \sqrt {\sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \rho_ {i j} \mathrm {V a R} _ {i} \mathrm {V a R} _ {j}} \tag {13.4}

$$ where  $\mathrm{VaR}_i$  is the VaR for the  $i$ th portfolio,  $\mathrm{VaR}_{\mathrm{total}}$  is the total VaR, and  $\rho_{ij}$  is the correlation between losses from the  $i$ th and  $j$ th portfolios. The formula shows that the method for aggregating standard deviations can also, as an approximation, be used to aggregate percentiles.

The result suggests a way the model-building approach can be extended to allow for return distributions being non-normal. Suppose that, based on historical data, we estimate that the one-percentile point of the 10-day return distribution for Microsoft is  $-17\%$  so that the 10-day  $99\%$  VaR of  \$10 million invested in Microsoft is\$ 1,700,000 (rather than the \$1,471,300 calculated assuming normally distributed returns in Section 13.1). Suppose further that we estimate that the one-percentile point of the 10-day return distribution for AT&T is  $-10\%$  so that the 10-day  $99\%$  VaR for \$5 million invested in AT&T is \$500,000 (rather than the \$367,800 estimated assuming normally distributed returns). Using equation (13.7) we would adjust our estimate of the VaR of the portfolio of Microsoft and AT&T to

$$
\sqrt {1 , 7 0 0 , 0 0 0 ^ {2} + 5 0 0 , 0 0 0 ^ {2} + 2 \times 0 . 3 \times 1 , 7 0 0 , 0 0 0 \times 5 0 0 , 0 0 0} = 1, 9 1 0, 5 0 0
$$

# 13.5 Risk Weights and Weighted Sensitivities

When equations such as (13.2) and (13.4) are used to calculate VaR or ES, the standard deviation of the daily change in the portfolio is multiplied by a constant. For example, when the 10-day  $99\%$  VaR is calculated, it is multiplied by  $N^{-1}(0.99)\times \sqrt{10} = 7.36$ . When the 20-day  $99\%$  ES is calculated, it is multiplied by

$$
\sqrt {2 0} \frac {\exp \{- [ N ^ {- 1} (0 . 9 9) ] ^ {2} / 2 \}}{\sqrt {2 \pi} \times 0 . 0 1} = 1 1. 9 2
$$

Suppose that  $\beta$  is the multiplier so that:

$$
\text {R i s k M e a s u r e} = \beta \sqrt {\sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \delta_ {i} \delta_ {j} \rho_ {i j} \sigma_ {i} \sigma_ {j}}
$$

Defining  $W_{i} = \beta \sigma_{i}$ . This can be written:

$$
\text {R i s k M e a s u r e} = \sqrt {\sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \delta_ {i} \delta_ {j} \rho_ {i j} W _ {i} W _ {j}} \tag {13.5}
$$

The  $W$ -parameters are referred to as risk weights, and the  $\delta$ -parameters are referred to as weighted sensitivities.

As we shall see in later chapters, this formulation is used for

1. Determining capital for market risk in the Fundamental Review of the Trading Book using the standardized approach
2. Determining initial margin in bilaterally cleared transactions

# 13.6 Non-Linearity

It should be noted that the results in this chapter do not apply when the relationship between the portfolio value and the risk factors is non-linear. This is because the change in the portfolio value cannot be assumed to be normally distributed. From Appendix G, for a portfolio dependent on a single risk factor,  $x$ , an approximation is

$$
\Delta P = \delta \Delta x + \frac {1}{2} \gamma \Delta x ^ {2} \tag {13.6}
$$ where  $\delta$  and  $\gamma$  are the first and second partial derivatives of the portfolio value,  $P$ , with respect to  $x$ . When there are  $n$  risk factors,  $x_{i}(1 \leq i \leq n)$ , an approximation is


$$

\Delta P = \sum_ {i = 1} ^ {n} \delta_ {i} \Delta x _ {i} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \gamma_ {i j} \Delta x _ {i} \Delta x _ {j} \tag {13.7}

$$ where


$$

\delta_ {i} = \frac {\partial P}{\partial x _ {i}}

$$

$$

\gamma_ {i j} = \frac {\partial^ {2} P}{\partial x _ {i} \partial x _ {j}}

$$

# 13.7 Model-Building vs. Historical Simulation

In the preceding chapter and in this one, we have discussed two methods for estimating VaR: the historical simulation approach and the model-building approach. The advantages of the model-building approach are that results can be produced very quickly, and they can easily be used in conjunction with volatility and correlation updating procedures such as those described in Chapters 8 and 9. (As mentioned in Section 12.3, volatility changes can be incorporated into the historical simulation approach—but in a rather more artificial way.) The main disadvantage of the model-building approach, as we have described it in this Sections 13.1 to 13.5, is that the change in the value of the portfolio is linearly related to the proportional or actual changes in the risk factors and the daily changes in the risk factors are assumed to have a multivariate normal distribution. In practice, daily changes in risk factors often have distributions that are quite different from normal. (See, for example, Table 8.1.) A user of the model-building approach can then use the approach in Section 13.4.2, hoping that some form of the central limit theorem of statistics applies so that the probability distribution of daily gains/losses on a large portfolio is normally distributed, even though the gains/losses on the component parts of the portfolio are not normally distributed. In Chapter 15 we will explain some extension of the model-building approach that can be used to handle non-linearities.


# Summary

Whereas historical simulation lets the data determine the joint probability distribution of daily percentage changes in risk factors, the model-building approach assumes a particular form for this distribution. The most common assumption is that percentage changes or actual changes in the risk factors have a multivariate normal distribution. For situations where the change in the value of the portfolio is linearly dependent on changes in the risk factors, VaR and ES can then be calculated very quickly.

The model-building approach is frequently used for investment portfolios where there are no derivatives. As we will see in Chapter 15, it is much more difficult to use it when a portfolio includes derivatives.

# Further Reading

Frye, J. "Principles of Risk: Finding VAR Through Factor-Based Interest Rate Scenarios." In VAR: Understanding and Applying Value-at-Risk, edited by Sue Grayling. London: Risk Publications, 1997: 275-288.
Hull, J. C., and A. White. "Value at Risk When Daily Changes in Market Variables Are Not Normally Distributed." Journal of Derivatives 5 (Spring 1998): 9-19.
Jamshidian, F., and Y. Zhu. "Scenario Simulation Model: Theory and Methodology." Finance and Stochastics 1 (1997): 43-67.

# Practice Questions and Problems (Answers at End of Book)

13.1 Consider a position consisting of a  \$100,000 investment in asset A and a\$ 100,000 investment in asset B. Assume that the daily volatilities of both assets are 1\% and that the coefficient of correlation between their returns is 0.3. What are the five-day 97\% VaR and ES for the portfolio?

13.2 A financial institution owns a portfolio of instruments dependent on the U.S. dollar-sterling exchange rate. The delta of the portfolio with respect to percentage changes in the exchange rate in equation (13.1) is 3.9. If the daily volatility of the exchange rate is  $0.7\%$  and the linear model in equation (13.1) is assumed, estimate the 10-day  $99\%$  VaR.
13.3 Suppose that in Problem 13.2 the relationship is non-linear and the second partial derivative of the portfolio value with respect to the exchange rate is 4.3. Use a Taylor series to derive an approximate relationship between the change in the portfolio value and the percentage change in the exchange rate?
13.4 Explain how the terms risk weights and risk sensitivity are used in connection with the model-building approach.
13.5 Suppose that the daily change in the value of a portfolio is, to a good approximation, linearly dependent on two factors. The delta of a portfolio in equation (13.1) with respect to the first factor is 6 and the delta with respect to the second factor is -4. The standard deviations of the factor are 20 and 8, respectively. What is the five-day  $90\%$  VaR?
13.6 Explain why the linear model can provide only approximate estimates of VaR for a portfolio containing options.
 13.7 Some time ago, a company entered into a forward contract to buy £1 million for 1.5 million. The contract now has six months to maturity. The daily volatility of a six-month zero-coupon sterling bond (when its price is translated to dollars) is 0.06\%, and the daily volatility of a six-month zero-coupon dollar bond is 0.05\%. The correlation between returns from the two bonds is 0.8. The current exchange rate is 1.53. Calculate the standard deviation of the change in the dollar value of the forward contract in one day. What is the 10-day 99\% VaR? Assume that the six-month interest rate in both sterling and dollars is 5\% per annum with continuous compounding.
 13.8 The calculations in Section 13.3 assume that the investments in the S&P 500, FTSE 100, CAC 40, and Nikkei 225 are \$4 million, \$3 million, \$1 million, and \$2 million, respectively. How do the VaR and ES change if the investment is 2.5 million in each index? Carry out calculations when (a) volatilities and correlations are estimated using the equally weighted model and (b) when they are estimated using the EWMA model with λ = 0.94. Use the spreadsheets on the author's website.
13.9 What is the effect of changing  $\lambda$  from 0.94 to 0.97 in the EWMA calculations in Section 13.3? Use the spreadsheets on the author's website.

# Further Questions

13.10 Consider a position consisting of a  \$300,000 investment in gold and a\$ 500,000 investment in silver. Suppose that the daily volatilities of these two assets are 1.8\% and 1.2\%, respectively, and that the coefficient of correlation between their returns is 0.6. What are the 10-day  $97.5\%$  VaR and ES for the portfolio? By how much does diversification reduce the VaR and ES?


13.11 Consider a portfolio of options on a single asset. Suppose that the delta of the portfolio (calculated with respect to actual changes) is 12, the value of the asset is 10, and the daily volatility of the asset is 2\%. What is the delta with respect to proportional changes? Estimate the one-day 95\% VaR for the portfolio from the delta.
13.12 The calculations in Section 13.3 assume that the investments in the S&P 500, FTSE 100, CAC 40, and Nikkei 225 are  \$4 million,\$ 3 million, \$1 million, and \$2 million, respectively. How do the VaR and ES change if the investments are \$3 million, \$3 million, \$1 million, and \$3 million, respectively? Carry out calculations when (a) volatilities and correlations are estimated using the equally weighted model and (b) when they are estimated using the EWMA model. What is the effect of changing λ from 0.94 to 0.90 in the EWMA calculations? Use the spreadsheets on the author's website.



---
title: "Value-at-Risk"
parent_directory: "Risk Measures"
formatted: "2025-12-21 07:30:00 AM"
formatter_model: "kimi-k2-turbo"
cli_tool: "claude-code"
primary_tags:
  - value at risk
  - risk measurement
  - financial risk
  - portfolio risk
secondary_tags:
  - var calculation
  - risk metrics
  - historical method
  - monte carlo method
  - back testing
  - coherent risk measures
  - tail risk
  - confidence level
  - loss distribution
  - risk management
cssclasses: academia
---

# Value-at-Risk

STOYAN V. STOYANOV, PhD

Professor of Finance at EDHEC Business School and Head of Research for EDHEC Risk Institute-Asia

SVETLOZAR T. RACHEV, PhD, Dr Sci

Frey Family Foundation Chair-Professor, Department of Applied Mathematics and Statistics, Stony Brook University, and Chief Scientist, FinAnalytica

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: A risk measure that has been widely accepted since the 1990s is the value-at-risk (VaR). In the late 1980s, it was integrated by JP Morgan on a firmwide level into its risk-management system. In the mid-1990s, the VaR measure was approved by regulators as a valid approach to calculating capital reserves needed to cover market risk. The Basel Committee on Banking Supervision released a package of amendments to the requirements for banking institutions, allowing them to use their own internal systems for risk estimation. In this way, capital reserves, which financial institutions are required to keep, could be based on the VaR numbers computed internally by an in-house risk management system. Generally, regulators demand that the capital reserve equal the VaR number multiplied by a factor between 3 and 4. Thus, regulators link the capital reserves for market risk directly to the risk measure. In practice, there are several approaches for estimating VaR.

In this entry, we cover the most commonly used risk measure used by financial institutions: value-at-risk (VaR). We comment on its properties and different calculation methods. Where possible, the definitions and equations are geometrically interpreted, making the ideas more intuitive and understandable.

## VALUE-AT-RISK DEFINED

VaR is defined as the minimum level of loss at a given, sufficiently high, confidence level for a predefined time horizon. The recommended confidence levels are  $95\%$  and  $99\%$ . Suppose that we hold a portfolio with a 1-day  $99\%$  VaR equal to \$1 million. This means that over the horizon of 1 day, the portfolio may lose more than \$1 million with probability equal to  $1\%$ .


$$
V a R_{\epsilon} (X) = - \inf_{x} \{x \mid P (X \leq x) \geq \epsilon \} = - F_{X}^{- 1} (\epsilon) \tag {1}
$$ where  $\epsilon \in (0,1)$  and  $F_{X}^{-1}(\epsilon)$  is the inverse of the distribution function. If the random variable  $X$  describes random returns, then the VaR number is given in terms of a return figure. The definition of VaR is illustrated in Figure 1.


If  $X$  describes random payoffs, then VaR is a threshold in dollar terms below which the portfolio value falls with probability  $\epsilon$ ,

$$
V a R_{\epsilon} (X) = \inf_{x} \{x \mid P (X \leq x) \geq \epsilon \} = F_{X}^{- 1} (\epsilon) \quad (2)
$$ where  $\epsilon \in (0,1)$  and  $F_{X}^{-1}(\epsilon)$  is the inverse of the distribution function of the random payoff. VaR


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/79a7d87e68fa30196b9a7e066ea4686c85a387cdbd207b11687b921893487417.jpg) can also be expressed as a distance to the present value when considering the profit distribution. The random profit is defined as  $X - P_0$  where  $X$  is the payoff and  $P_0$  is the present value. The VaR of the random profit equals
Figure 1 The VaR at  $95\%$  Confidence Level of a Random Variable X

Note: The top plot shows the density of  $X$ , the marked area equals the tail probability, and the bottom plot shows the distribution function.


$$
\begin{array}{l} V a R_{\epsilon} (X - P_{0}) = - \inf_{x} \{x \mid P (X - P_{0} \leq x) \geq \epsilon \} \\ = P_{0} - V a R_{\epsilon} (X) \\ \end{array}
$$ in which  $VaR_{\epsilon}(X)$  is defined according to (2) since  $X$  is interpreted as a random payoff. In this case, the definition of VaR is essentially given by equation (1).


According to the definition in equation (1), VaR may become a negative number. If  $VaR_{\epsilon}(X)$  is a negative number, then this means that at tail probability  $\epsilon$  we do not observe losses but profits. Losses happen with even smaller probability than  $\epsilon$ . If for any tail probability  $VaR_{\epsilon}(X)$  is a negative number, then no losses can occur and, therefore, the random variable  $X$  bears no risk as no exposure is associated with it. In this entry, we assume that random variables describe either random returns or random profits and we adopt the definition in equation (1).

We illustrate one aspect in which VaR differs from the deviation measures and all uncertainty measures. As a consequence of the definition, if we add to the random variable  $X$  a nonrandom profit  $C$ , the resulting VaR can be expressed by the VaR of the initial variable in the following way

$$
V a R_{\epsilon} (X + C) = V a R_{\epsilon} (X) - C \tag {3}
$$

Thus, adding a nonrandom profit decreases the risk of the portfolio. Furthermore, scaling the return distribution by a positive constant  $\lambda$  scales the VaR by the same constant,

$$
V a R_{\epsilon} (\lambda X) = \lambda V a R_{\epsilon} (X) \tag {4}
$$

It turns out that these properties characterize not only VaR. They are identified as key features of a risk measure.

To illustrate, let's use an example. Suppose initially we have a portfolio that consists of a common stock with random monthly return denoted by  $r_{X}$ . We rebalance the portfolio so that it becomes an equally weighted portfolio of the stock and a default-free government bond with a nonrandom monthly return of  $5.26\%$ ,  $r_B = 5.26\%$ . Thus, the portfolio return can be expressed as


$$ r_{p} = r_{X} (1 / 2) + r_{B} (1 / 2) = r_{X} / 2 + 0. 0 5 2 6 / 2
$$

Using equations (3) and (4), we calculate that if  $VaR_{\epsilon}(r_X) = 12\%$ , then  $VaR_{\epsilon}(r_p) \approx 3.365\%$ , which is by far less than  $6\%$  half of the initial risk. Any deviation measure would indicate that the dispersion (or the uncertainty) of the portfolio return  $r_p$  would be twice as small as the uncertainty of  $r_X$ .

A very important remark has to be made with respect to the performance of VaR and, as it turns out, of any other risk measure. It is heavily dependent on the assumed probability distribution of the variable  $X$ . An unrealistic hypothesis may result in underestimation or overestimation of true risk. If we use VaR to build reserves in order to cover losses in times of crises, then underestimation may be fatal and overestimation may lead to inefficient use of capital. An inaccurate model is even more dangerous in an optimal portfolio problem in which we minimize risk subject to some constraints, as it may adversely influence the optimal weights and therefore not reduce the true risk.

Even though VaR has been largely adopted by financial institutions and approved by regulators, it turns out that VaR has important deficiencies. While it provides an intuitive description of how much a portfolio may lose, generally, it should be abandoned as a risk measure. The most important drawback is that, in some cases, the reasonable diversification effect that every portfolio manager should expect to see in a risk measure is not present; that is, the VaR of a portfolio may be greater than the sum of the VaRs of the constituents

$$
V a R_{\epsilon} (X + Y) > V a R_{\epsilon} (X) + V a R_{\epsilon} (Y) \tag {5}
$$ in which  $X$  and  $Y$  stand for the random payoff of the instruments in the portfolio. This shows that VaR cannot be a true risk measure.


We give a simple example, which shows that VaR may satisfy (5). Suppose that  $X$  denotes a bond that either defaults with probability  $4.5\%$  and we lose \$50 or it does not default and in this case the loss is equal to zero. Let  $Y$  be the same bond but assume that the defaults of the two bonds are independent events. The VaR of the two bonds at  $95\%$  confidence level (5\% tail probability) is equal to zero,

$$
V a R_{0. 0 5} (X) = V a R_{0. 0 5} (Y) = 0
$$

Being the  $5\%$  quantile of the payoff distribution in this case, VaR fails to recognize losses occurring with probability smaller than  $5\%$ . A portfolio of the two bonds has the following payoff profile: It loses  $\$ 100$  with probability of about  $0.2\%$ , loses  $\$ 50$  with probability of about  $8.6\%$ , and the loss is zero with probability  $91.2\%$ . Thus, the corresponding  $95\%$  VaR of the portfolio equals  $\$ 50$  and clearly,

$$
\begin{array}{l} \$ 50 = V a R_{0. 0 5} (X + Y) > V a R_{0. 0 5} (X) \\ + V a R_{0. 0 5} (Y) = 0 \\ \end{array}
$$

What are the consequences of using a risk measure that may satisfy property (5)? It is going to mislead portfolio managers that there is no diversification effect in the portfolio and they may make the irrational decision to concentrate it only into a few positions. As a consequence, the portfolio risk actually increases.

Besides being sometimes incapable of recognizing the diversification effect, another drawback is that VaR is not very informative about losses beyond the VaR level. It only reports that losses larger than the VaR level occur with probability equal to  $\epsilon$  but it does not provide any information about the likely magnitude of such losses, for example.

Nonetheless, VaR is not a useless concept to be abandoned altogether. For example, it can be used in risk reporting only as a characteristic of the portfolio return (payoff) distribution since it has a straightforward interpretation. The criticism of VaR is focused on its wide application by practitioners as a true risk measure, which, in view of the deficiencies described above, is not well grounded and should be reconsidered.


## COMPUTING PORTFOLIO VaR IN PRACTICE

In this section, we provide three approaches for portfolio VaR calculation that are used in practice. We assume that the portfolio contains common stocks, which is only to make the description easier to grasp; this is not a restriction of any of the approaches.

Suppose that a portfolio contains  $n$  common stocks and we are interested in calculating the daily VaR at  $99\%$  confidence level. Denote the random daily returns of the stocks by  $X_{1}, \ldots, X_{n}$  and by  $w_{1}, \ldots, w_{n}$  the weight of each stock in the portfolio. Thus, the portfolio return  $r_{p}$  can be calculated as

$$ r_{p} = w_{1} X_{1} + w_{2} X_{2} + \dots + w_{n} X_{n}
$$

The portfolio VaR is derived from the distribution of  $r_p$ . The three approaches vary in the assumptions they make.

## The Approach of RiskMetrics

The approach of RiskMetrics Group is centered on the assumption that asset returns have a multivariate normal distribution. Under this assumption, the distribution of the portfolio return is also normal. Therefore, in order to calculate the portfolio VaR, we only have to calculate the expected return of  $r_p$  and the standard deviation of  $r_p$ . The 99\% VaR will appear as the negative of the 1\% quantile of the  $N(Er_p, \sigma_{r_p}^2)$  distribution.

The portfolio expected return can be directly expressed through the expected returns of the assets

$$
\begin{array}{l} E r_{p} = w_{1} E X_{1} + w_{2} E X_{2} + \dots + w_{n} E X_{n} \\ = \sum_{k = 1}^{n} w_{k} E X_{k} \tag {6} \\ \end{array}
$$ where  $E$  denotes mathematical expectation. Similarly, the variance of the portfolio return


$\sigma_{r_p}^2$  can be computed through the variances of the asset returns and their covariances,

$$
\begin{array}{l} \sigma_{r_{p}}^{2} = w_{1}^{2} \sigma_{X_{1}}^{2} + w_{2}^{2} \sigma_{X_{2}}^{2} + \dots + w_{n}^{2} \sigma_{X_{n}}^{2} \\ + \sum_{i \neq j} w_{i} w_{j} \operatorname{co v} \left(X_{i}, X_{j}\right) \\ \end{array}
$$ in which the last term appears because we have to sum up the covariances between all pairs of asset returns. There is a more compact way of writing down the expression for  $\sigma_{r_p}^2$  using matrix notation,


$$
\sigma_{r_{p}}^{2} = w^{\prime} \Sigma w \tag {7}
$$ in which  $w = (w_{1},\dots ,w_{n})$  is the vector of portfolio weights and  $\Sigma$  is the covariance matrix of asset returns,


$$
\Sigma = \left( \begin{array}{c c c c} \sigma_{X_{1}}^{2} & \sigma_{1 2} & \dots & \sigma_{1 n} \\ \sigma_{2 1} & \sigma_{X_{2}}^{2} & \dots & \sigma_{2 n} \\ \vdots & \vdots & \ddots & \vdots \\ \sigma_{n 1} & \sigma_{n 2} & \dots & \sigma_{X_{n}}^{2} \end{array} \right)
$$ in which  $\sigma_{ij}$ ,  $i \neq j$ , is the covariance between  $X_i$  and  $X_j$ ,  $\sigma_{ij} = \operatorname{cov}(X_i, X_j)$ . As a result, we obtain that the portfolio return has a normal distribution with mean given by equation (6) and variance given by equation (7).


The standard deviation is the scale parameter of the normal distribution and the mean is the location parameter. Due to the normal distribution properties, if  $r_p \in N(Er_p, \sigma_{r_p}^2)$ , then

$$
\frac{r_{p} - E r_{p}}{\sigma_{r_{p}}} \in N (0, 1)
$$

Thus, because of the properties (3) and (4) of the VaR, the  $99\%$  portfolio VaR can be represented as

$$
V a R_{0. 0 1} \left(r_{p}\right) = q_{0. 9 9} \sigma_{r_{p}} - E r_{p} \tag {8}
$$ where the standard deviation of the portfolio return  $\sigma_{r_p}$  is computed from equation (7), the expected portfolio return  $Er_{p}$  is given in (6), and  $q_{0.99}$  is the  $99\%$  quantile of the standard normal distribution.


Note that  $q_{0.99}$  is a quantity independent of the portfolio composition; it is merely a constant that can be calculated in advance. The parameters that depend on the portfolio weights are the standard deviation of portfolio returns  $\sigma_{r_p}$  and the expected portfolio return. As a consequence, VaR under the assumption of normality is symmetric even though, by definition, VaR is centered on the left tail of the distribution; that is, VaR is asymmetric by construction. This result appears because the normal distribution is symmetric around the mean.


The approach of RiskMetrics can be extended for other types of distributions. Lamantia et al. (2006a) and Lamantia et al. (2006b) provide such extensions and comparisons for Student's  $t$  and stable distributions.

## The Historical Method

The historical method does not impose any distributional assumptions; the distribution of portfolio returns is constructed from historical data. Hence, sometimes the historical simulation method is called a nonparametric method. For example, the  $99\%$  daily VaR of the portfolio return is computed as the negative of the empirical  $1\%$  quantile of the observed daily portfolio returns. The observations are collected from a predetermined time window such as the most recent business year.

While the historical method seems to be more general as it is free of any distributional hypotheses, it has a number of major drawbacks.

1. It assumes that the past trends will continue in the future. This is not a realistic assumption because we may experience extreme events in the future, for instance, which have not happened in the past.
2. It treats the observations as independent and identically distributed (IID), which is not realistic. The daily returns data exhibits clustering of the volatility phenomenon, autocorrelations and so on, which are sometimes a significant deviation from the IID assumption.

3. It is not reliable for estimation of VaR at very high confidence levels. A sample of one year of daily data contains 250 observations, which is a rather small sample for the purpose of the  $99\%$  VaR estimation.

## The Hybrid Method

The hybrid method is a modification of the historical method in which the observations are not regarded as IID but certain weights are assigned to them depending on how close they are to the present. The weights are determined using the exponential smoothing algorithm. The exponential smoothing accentuates the most recent observations and seeks to take into account the time-varying volatility phenomenon.

The algorithm of the hybrid approach consists of the following steps.

1. Exponentially declining weights are attached to historical returns, starting from the current time and going back in time. Let  $r_{t - k + 1},\ldots ,r_{t - 1},r_t$  be a sequence of  $k$  observed returns on a given asset, where  $t$  is the current time. The  $i$ -th observation is assigned a weight

$$
\theta_{i} = c^{*} \lambda^{t - i}
$$ where  $0 < \lambda < 1$ , and  $c = \frac{1 - \lambda}{1 - \lambda^k}$  is a constant chosen such that the sum of all weights is equal to one,  $\sum \theta_{i} = 1$ .


2. Similarly to the historical simulation method, the hypothetical future returns are obtained from the past returns and sorted in increasing order.
3. The VaR measure is computed from the empirical c.d.f. in which each observation has probability equal to the weight  $\theta_{i}$ .

Generally, the hybrid approach is appropriate for VaR estimation of heavy-tailed time series. It overcomes, to some degree, the first and the second deficiency of the historical method but it is also not reliable for VaR estimation of very high confidence levels.

## The Monte Carlo Method

In contrast to the historical method, the Monte Carlo method requires specification of a statistical model for asset returns. The statistical model is multivariate, hypothesizing both the behavior of the asset returns on a stand-alone basis and their dependence. For instance, the multivariate normal distribution assumes normal distributions for the asset returns viewed on a stand-alone basis and describes the dependencies by means of the covariance matrix. The multivariate model can also be constructed by specifying explicitly the one-dimensional distributions of the asset returns, and their dependence through a copula function.

The Monte Carlo method consists of the following basic steps.

Step 1. Selection of a statistical model. The statistical model should be capable of explaining a number of observed phenomena in the data, for example, heavy tails, clustering of the volatility, and so on, which we think influence the portfolio risk.

Step 2. Estimation of the statistical model parameters. A sample of observed asset returns is used from a predetermined time window, for instance the most recent 250 daily returns.

Step 3. Generation of scenarios from the fitted model. Independent scenarios are drawn from the fitted model. Each scenario is a vector of asset returns, which depend on each other according to the presumed dependence structure of the statistical model.

Step 4. Calculation of portfolio risk. Compute portfolio risk on the basis of the portfolio return scenarios obtained from the previous step.

The Monte Carlo method is a very general numerical approach to risk estimation. It does not require any closed-form expressions and, by choosing a flexible statistical model, accurate risk numbers can be obtained. A disadvantage is that the computed portfolio VaR is dependent on the generated sample of scenarios and will fluctuate a little if we regenerate the sample. This side effect can be reduced by generating a larger sample. An illustration is provided in the following example.


Suppose that the daily portfolio return distribution is standard normal and, therefore, at Step 4 of the algorithm we have scenarios from the standard normal distribution. Under the assumption of normality, we can use the approach of RiskMetrics and compute the  $99\%$  daily VaR directly from formula (8). Nevertheless, we will use the Monte Carlo method to gain more insight into the deviations of the VaR based on scenarios from the VaR computed according to formula (8).

In order to investigate how the fluctuations of the  $99\%$  VaR change about the theoretical value, we generate samples of different sizes: 500, 1,000, 5,000, 10,000, 20,000, and 100,000 scenarios. The  $99\%$  VaR is computed from these samples and the numbers are stored. We repeat the experiment 100 times. In the end, we have 100 VaR numbers for each sample size. We expect that as the sample size increases, the VaR values will fluctuate less about the theoretical value which is  $VaR_{0.01}(X) = 2.326$ ,  $X \in N(0,1)$ .

Table 1 contains the result of the experiment. From the 100 VaR numbers, we calculate the  $95\%$  confidence interval for the true value given in the third column. The confidence intervals cover the theoretical value 2.326 and also we notice that the length of the confidence interval

Table 1 The  $99\%$  VaR of the Standard Normal Distribution Computed from a Sample of Scenarios

<table><tr><td>Number of Scenarios</td><td>99\% VaR</td><td>95\% Confidence Interval</td></tr><tr><td>500</td><td>2.067</td><td>[1.7515, 2.3825]</td></tr><tr><td>1,000</td><td>2.406</td><td>[2.1455, 2.6665]</td></tr><tr><td>5,000</td><td>2.286</td><td>[2.1875, 2.3845]</td></tr><tr><td>10,000</td><td>2.297</td><td>[2.2261, 2.3682]</td></tr><tr><td>20,000</td><td>2.282</td><td>[2.2305, 2.3335]</td></tr><tr><td>50,000</td><td>2.342</td><td>[2.3085, 2.3755]</td></tr><tr><td>100,000</td><td>2.314</td><td>[2.2925, 2.3355]</td></tr></table> decreases as the sample size increases. This effect is best illustrated with the help of the box-plot diagrams shown in Figure 2. A sample of 100,000 scenarios results in VaR numbers that are tightly packed around the true value while a sample of only 500 scenarios may give a very inaccurate estimate.

Note: The  $95\%$  confidence interval is calculated from 100 repetitions of the experiment. The true value is  $VaR_{0.01}(X) = 2.326$ .

Figure 2 Boxplot Diagrams of the Fluctuation of the  $99\%$  VaR of the Standard Normal Distribution Based on Scenarios
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/1fe6c429abb9e4f927e0ff89ed98cfbf196175e120fd16c5d4b6854a7fc73137.jpg)
Note: The horizontal axis shows the number of scenarios and the boxplots are computed from 100 independent samples.


This simple experiment shows that the number of scenarios in the Monte Carlo method has to be carefully chosen. The approach we used to determine the fluctuations of the VaR based on scenarios is a statistical method called parametric bootstrap. The bootstrap methods in general are powerful statistical methods that are used to compute confidence intervals when the problem is not analytically tractable but the calculations may be quite computationally intensive.

The true merits of the Monte Carlo method can only be realized when the portfolio contains complicated instruments such as derivatives. In this case, it is no longer possible to use a closed-form expression for the portfolio VaR (and any risk measure in general) because the distribution of portfolio return (or payoff) becomes quite arbitrary. The Monte Carlo method provides the general framework to generate scenar ios for the risk-driving factors, then revaluates the financial instruments in the portfolio under each scenario, and, finally, estimates portfolio risk on the basis of the computed portfolio returns (or payoffs) in each state of the world.


While it may seem a straightforward approach, the practical implementation is a very challenging endeavor from both the software development and financial modeling points of view. The portfolios of big financial institutions often contain products that require yield curve modeling, development of fundamental and statistical factor models, and, on top of that, a probabilistic model capable of describing the heavy tails of the risk-driving factor returns, the autocorrelation, clustering of the volatility, and the dependence between these factors. Processing large portfolios is related to manipulation of colossal data structures, which requires excellent skills of software developers in order to be efficiently performed.

## BACK-TESTING OF VaR

If we adopt VaR for analysis of portfolio exposure, then a reasonable question is whether the VaR calculated according to any of the methods discussed in the previous section is realistic. Suppose that we calculate the  $99\%$  daily portfolio VaR. This means that according to our assumption for the portfolio return (payoff) distribution, the portfolio loses more than the  $99\%$  daily VaR with  $1\%$  probability. The question is whether this estimate is correct; that is, does the portfolio really lose more than this amount with  $1\%$  probability? This question can be answered by back-testing of VaR.

Generally, the procedure consists of the following steps.

Step 1. Choose a time window for the backtesting. Usually the time window is the most recent one or two years.
Step 2. For each day in the time window, calculate the VaR number.

Figure 3 The Observed Daily Returns of the S&P 500 Index between December 31, 2002 and December 31, 2003 and the Negative of VaR
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/a49fe0b94feb34219b788286a7b204703852e45acb7aa307563ebdb1f0d898c1.jpg)
Note: The marked observation is an example of an exceedance.

Step 3. Check if the loss on a given day is below or above the VaR number computed the day before. If the observed loss is larger, then we say that there is a case of an exceedance. Figure 3 provides an example.

Step 4. Count the number of exceedances. Check if there are too many or too few of them by verifying if the number of exceedances belong to the corresponding  $95\%$  confidence interval.

If in Step 4 we find out that there are too many exceedances, then the VaR numbers produced by the model are too optimistic. Losses exceeding the corresponding VaR happen too frequently. If capital reserves are determined on the basis of VaR, then there is a risk of being incapable of covering large losses. Conversely, if the we find out that there are too few exceedances, then the VaR numbers are too pessimistic. This is also an undesirable situation. Note that the actual size of the exceedances is immaterial; we only count them.

The confidence interval for the number of exceedances is constructed on the basis of the indicator-type events "we observe an exceedance," "we do not observe an exceedance" on a given day. If we consider the  $99\%$  VaR, then the probability of the first event, according to the model, is  $1\%$ . Let us associate a number with each of the events similar to a coin tossing experiment. If we observe an exceedance on a given day, then we say that the number 1 has occurred, otherwise 0 has occurred. If the backtesting time window is two years, then we have a sequence of 500 zeros and ones and the expected number of exceedances is 5. Thus, finding the  $95\%$  confidence interval for the number of exceedances reduces to finding an interval around 5 such that the probability of the number of ones belonging to this interval is  $95\%$ .


If we assume that the corresponding events are independent, then there is a complete analogue of this problem in terms of coin tossing. We toss an unfair coin independently 500 times with probability of success equal to  $1\%$ . What is the range of the number of success events with  $95\%$  probability? In order to find the  $95\%$  confidence interval, we can resort to the normal approximation to the binomial distribution. The formula is left bound  $= N\epsilon -F^{-1}(1 - 0.05 / 2)\sqrt{N\epsilon(1 - \epsilon)}$  right bound  $= N\epsilon +F^{-1}(1 - 0.05 / 2)\sqrt{N\epsilon(1 - \epsilon)}$


where  $N$  is the number of indicator-type events,  $\epsilon$  is the tail probability of the VaR, and  $F^{-1}(t)$  is the inverse distribution function of the standard normal distribution. In the example,  $N = 500$ ,  $\epsilon = 0.01$ , and the  $95\%$  confidence interval for the number of exceedances is [0, 9]. Similarly, if we are back-testing the  $95\%$  VaR, under the same circumstances the confidence interval is [15, 34].

Note that the statistical test based on the back-testing of VaR at a certain tail probability cannot answer the question if the distributional assumptions for the risk-driving factors are correct in general. For instance, if the portfolio contains only common stocks, then we presume a probabilistic model for stocks returns. By back-testing the  $99\%$  daily VaR of portfolio return, we verify if the probabilistic model is adequate for the  $1\%$  quantile of the portfolio return distribution; that is, we are back-testing if a certain point in the left tail of the portfolio return distribution is sufficiently accurately modeled. This should not be confused with statistical tests such as the Kolmogorov test or the Kolmogorov-Smirnov test, which concern accepting or rejecting a given distributional hypothesis.

## COHERENT RISK MEASURES

Even though VaR has an intuitive interpretation and has been widely adopted as a risk measure, it does not always satisfy the important property that the VaR of a portfolio should not exceed the sum of the VaRs of the portfolio positions. This means that VaR is not always capable of representing the diversification effect.

This fact raises an important question. Can we find a set of desirable properties that a risk measure should satisfy? An answer is given by Artzner et al. (1998). They provide an axiomatic definition of a functional, which they call a coherent risk measure. The axioms follow with remarks given below each axiom. We denote the risk measure by the functional  $\rho(X)$  assigning a real-valued number to a random variable. Usually, the random variable  $X$  is interpreted as a random payoff and the motivation for the axioms in Artzner et al. (1998) follows this interpretation. In the remarks below each axiom, we provide an alternative interpretation, which holds if  $X$  is interpreted as random return.


## The Monotonicity Property

Monotonicity  $\rho (Y)\leq \rho (X),$ if  $Y \geq X$  in almost sure sense


Monotonicity states that if investment A has random return (payoff)  $Y$ , which is not less than the return (payoff)  $X$  of investment B at a given horizon in all states of the world, then the risk of A is not greater than the risk of B. This is quite intuitive but it really does matter whether the random variables represent random return or profit because an inequality in an almost sure sense between random returns may not translate into the same inequality between the corresponding random profits and vice versa.

Suppose that  $X$  and  $Y$  describe the random percentage returns on two investments A and B and let  $Y = X + 3\%$ . Apparently,  $Y > X$  in all states of the world. The corresponding payoffs are obtained according to the equations

$$
\begin{array}{l} \operatorname{Pa yo ff} (X) = I_{A} (1 + X) \\ \operatorname{Payoff}(Y) = I_{B} (1 + Y) = I_{B} (1 + X + 3 \%) \\ \end{array}
$$ where  $I_A$  is the initial investment in opportunity A and  $I_B$  is the initial investment in opportunity B. If the initial investment  $I_A$  is much larger than  $I_B$ , then  $\mathrm{Payoff}(X) > \mathrm{Payoff}(Y)$  irrespective of the inequality  $Y > X$ . In effect, investment A may seem less risky than investment B in terms of payoff but in terms of return, the converse may hold.


## The Positive Homogeneity Property

Positive Homogeneity  $\rho (0) = 0$ $\rho (\lambda X) = \lambda \rho (X)$ for all  $X$  and all  $\lambda >0$


The positive homogeneity property states that scaling the return (payoff) of the portfolio by a positive factor scales the risk by the same factor. The interpretation for payoffs is obvious—if the investment in a position doubles, so does the risk of the position. We give a simple example illustrating this property when  $X$  stands for a random percentage return.


Suppose that today the value of a portfolio is  $I_0$  and we add a certain amount of cash  $C$ . The value of our portfolio becomes  $I_0 + C$ . The value tomorrow is random and equals  $I_1 + C$  in which  $I_1$  is the random payoff. The return of the portfolio equals

$$
\begin{array}{l} X = \frac{I_{1} + C - I_{0} - C}{I_{0} + C} = \frac{I_{1} - I_{0}}{I_{0}} \left(\frac{I_{0}}{I_{0} + C}\right) \\ = h \frac{I_{1} - I_{0}}{I_{0}} = h Y \\ \end{array}
$$ where  $h = I_0 / (I_0 + C)$  is a positive constant. The axiom positive homogeneity property implies that  $\rho(X) = h\rho(Y)$ ; that is, the risk of the new portfolio will be the risk of the portfolio without the cash but scaled by  $h$ .


## The Subadditivity Property

Subadditivity  $\rho(X + Y) \leq \rho(X) + \rho(Y)$ , for all  $X$  and  $Y$


If  $X$  and  $Y$  describe random payoffs, then the subadditivity property states that the risk of the portfolio is not greater than the sum of the risks of the two random payoffs.

The positive homogeneity property and the subadditivity property imply that the functional is convex

$$
\begin{array}{l} \rho (\lambda X + (1 - \lambda) Y) \leq \rho (\lambda X) + \rho ((1 - \lambda) Y) \\ = \lambda \rho (X) + (1 - \lambda) \rho (Y) \\ \end{array}
$$ where  $\lambda \in [0,1]$ . If  $X$  and  $Y$  describe random returns, then the random quantity  $\lambda X + (1 - \lambda)Y$  stands for the return of a portfolio composed of two financial instruments with returns  $X$  and  $Y$  having weights  $\lambda$  and  $1 - \lambda$  respectively. Therefore, the convexity property states that the risk of a portfolio is not greater than the sum of the risks of its constituents, meaning that it is the


convexity property that is behind the diversification effect that we expect in the case of  $X$  and  $Y$  denoting random returns.

## The Invariance Property

Invariance  $\rho (X + C) = \rho (X) - C,$ for all  $X$  and  $C\in \mathbb{R}$


The invariance property has various labels. Originally, it was called translation invariance while in other texts it is called cash invariance. If  $X$  describes a random payoff, then the invariance property suggests that adding cash to a position reduces its risk by the amount of cash added. This is motivated by the idea that the risk measure can be used to determine capital requirements. As a consequence, the risk measure  $\rho(X)$  can be interpreted as the minimal amount of cash necessary to make the position free of any capital requirements

$$
\rho (X + \rho (X)) = 0
$$

The invariance property has a different interpretation when  $X$  describes random return. Suppose that the random variable  $X$  describes the return of a common stock and we build a long-only portfolio by adding a government bond yielding a risk-free rate  $r_B$ . The portfolio return equals  $wX + (1 - w)r_B$ , where  $w \in [0,1]$  is the weight of the common stock in the portfolio. Note that the quantity  $(1 - w)r_B$  is nonrandom by assumption. The invariance property states that the risk of the portfolio can be decomposed as

$$
\begin{array}{l} \rho (w X + (1 - w) r_{B}) = \rho (w X) - (1 - w) r_{B} \\ = w \rho (X) - (1 - w) r_{B} \tag {9} \\ \end{array}
$$ where the second equality appears because of the positive homogeneity property. In effect, the risk measure admits the following interpretation: Assume that the constructed portfolio is equally weighted, that is,  $w = 1 / 2$ , then the risk measure equals the level of the risk-free rate such that the risk of the equally weighted


portfolio consisting of the risky asset and the risk-free asset is zero. The investment in the risk-free asset will be, effectively, the reserve investment.

Alternative interpretations are also possible. Suppose that the present value of the position with random percentage return  $X$  is  $I_0$ . Assume that we can find a government security earning return  $r_B^*$  at the horizon of interest. Then we can ask the question in the opposite direction: How much should we reallocate from  $I_0$  and invest in the government security in order to hedge the risk  $\rho(X)$ ? The needed capital  $C$  should satisfy the equation

$$
\frac{I_{0} - C}{I_{0}} \rho (X) - \frac{C}{I_{0}} r_{B}^{*} = 0
$$ which is merely a restatement of equation (9) with the additional requirement that the risk of the resulting portfolio should be zero. The solution is


$$
C = I_{0} \frac{\rho (X)}{\rho (X) + r_{B}^{*}}
$$

Note that if in the invariance property the constant is nonnegative,  $C \geq 0$ , then it follows that  $\rho(X + C) \leq \rho(X)$ . This result is in agreement with the monotonicity property as  $X + C \geq X$ . In fact, the invariance property can be regarded as an extension of the monotonicity property when the only difference between  $X$  and  $Y$  is in their means.

According to the discussion in the previous section, VaR is not a coherent risk measure because it may violate the subadditivity property.

An example of a coherent risk measure is the Average Value-at-Risk (AVaR), defined as the average of the VaRs that are larger than the VaR at a given tail probability  $\epsilon$ . The accepted notation is  $AVaR_{\epsilon}(X)$  in which  $\epsilon$  stands for the tail probability level. A larger family of coherent risk measures is the family of spectral risk measures, which includes the AVaR as a representative. The spectral risk measures are defined as weighted averages of VaRs.

## KEY POINTS

- VaR is defined as the minimum level of loss at a given, sufficiently high confidence level for a predefined time horizon.

- The performance of VaR, as well as any other risk measure, is heavily dependent on the assumed probability distribution for the economic measure of interest.

- Despite VaR's wide acceptance in the finance industry, it has important deficiencies so that, in general, it should be abandoned as a risk measure. However, it is not a useless concept to be abandoned altogether. For example, it can be used in risk reporting only as a characteristic of the portfolio return (payoff) distribution since it has a straightforward interpretation.

- The most important drawback of VaR is that, in some cases, the reasonable diversification effect that every portfolio manager should expect to see in a risk measure is not present.

- The criticism of VaR is focused on its wide application by practitioners as a true risk measure, which, in view of its deficiencies, is not well grounded and should be reconsidered.

- Three approaches for portfolio VaR calculation that are used in practice are the Risk-Metrics approach, the historical method approach, and the Monte Carlo approach.

## NOTES

1. A boxplot, or a box-and-whiskers diagram, is a convenient way of depicting several statistical characteristics of the sample. The size of the box equals the difference between the third and the first quartile (75\% quantile-25\% quantile), also known as the interquartile range. The line in the box corresponds to the median of the data (50\% quantile). The lines extending out of the box are called whiskers and each of them is long up to 1.5 times the interquartile range. All observations outside the whiskers are labeled outliers and are depicted by a plus sign.


2. This label can be found in Föllmer and Schied (2002).

## REFERENCES

Artzner, P., Delbaen, F., Eber, J.-M., and Heath, D. (1998). Coherent measures of risk. Math. Fin. 6: 203-228.

Föllmer, H., and Schied, A. (2002). Stochastic finance: An introduction in discrete time, 2nd rev. and extended ed. Berlin: Walter de Gruyter.

Lamantia, F., Ortobelli, S., and Rachev, S. (2006a). An empirical comparison among VaR models and time rules with elliptical and stable distributed returns. Investment Management and Financial Innovations 3: 8-29.

Lamantia, F., Ortobelli, S., and Rachev, S. (2006b). VaR, CVaR and time rules with elliptical and asymmetric stable distributed returns. Investment Management and Financial Innovations 4: 19-39.

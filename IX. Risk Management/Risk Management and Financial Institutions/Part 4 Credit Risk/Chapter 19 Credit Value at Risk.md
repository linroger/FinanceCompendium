---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 19
linter-yaml-title-alias: Chapter 19
---

# Chapter 19

# Credit Value at Risk

The value at risk (VaR) measure is central to the determination of regulatory capital for credit risk and to much of the credit risk management carried out internally by both financial and nonfinancial corporations. This chapter covers alternative approaches for calculating credit risk VaR.

Credit risk VaR is defined similarly to market risk VaR. It is the credit risk loss over a certain time period that will not be exceeded with a certain confidence level. Some credit risk VaR models consider only losses from defaults; others consider losses from downgrades or credit spread changes as well as from defaults.

Banks calculate credit risk VaR to determine both regulatory capital and economic capital. The regulatory capital requirements for credit risk are discussed in Chapters 25 and 26. Economic capital, which is discussed in Chapter 28, is a financial institution's own estimate of the capital it requires for the risks it is taking and is used to calculate return on capital measures for its business units. Sometimes the VaR model that a bank chooses to use to determine credit risk economic capital is different from the one it is required to use for the determination of regulatory capital.

Value at risk is a scenario analysis measure. As explained in Chapter 10, the probability of default estimates used to develop alternative scenarios should therefore be real-world estimates. Risk-neutral estimates should then be used to value the underlying portfolio on the VaR horizon date. It will be recalled from Chapter 17 that real-world default probabilities are lower than risk-neutral default probabilities.

The time horizon for credit risk VaR is often longer than that for market risk VaR. Market risk VaR is often calculated with a one-day time horizon. Credit risk VaR, for instruments that are not held for trading, is usually calculated with a one-year time horizon. Historical simulation (see Chapter 12) is the main tool used to calculate market risk VaR, but a more elaborate model is usually necessary to calculate credit risk VaR.

A key aspect of any credit risk VaR model is credit correlation. Defaults for different companies do not happen independently of each other. During an economic downturn, most companies are adversely affected and become more likely to default. When the economy is faring well, they are favorably affected and less likely to default. This relationship between default rates and economic factors is a major reason for credit correlation. If credit correlation increases (as it tends to do in stressed economic conditions), the risk for a financial institution with a portfolio of credit exposures increases.

# 19.1 Ratings Transition Matrices

The methods used by financial institutions for calculating credit VaR often involve ratings transition matrices. These are matrices showing the probability of a company migrating from one rating category to another during a certain period of time. They are based on historical data. The rating categories can be either those used internally by the financial institution or those produced by rating agencies such as Moody's, S&P, and Fitch. Table 19.1 shows the one-year transition matrix produced by S&P, based on following the performance of all the companies that S&P rated between 1981 and 2020. For example, it shows that a company that starts with a rating of A has a  $92.61\%$  probability of still being rated A at the end of a year. There is a  $1.67\%$  chance that it will be upgraded to AA by the end of the year, a  $5.23\%$  chance that it will be downgraded to BBB, and so on. The probability that it will default during the year is only  $0.05\%$ , or 5 chances in 10,000.

If we assume that the rating change in one period is independent of that in another period, Table 19.1 can be used to calculate a transition matrix for periods other than one year. For example, a transition matrix for two years can be calculated by multiplying the matrix by itself. The five-year transition matrix, which is shown in Table 19.2, is calculated as the fifth power of the matrix in Table 19.1. Table 19.2 shows, not surprisingly, that the probability of a company keeping the same credit rating over five years is much lower than it is over one year, and default probabilities over five years are much higher than over one year.

The credit rating change over a period less than a year is not quite so easy to calculate. For example, estimating a transition matrix for six months involves taking the square root of the matrix in Table 19.1; estimating the transition matrix for three months involves taking the fourth root of the matrix; and so on. The calculation methodology is explained

Table 19.1 One-Year Ratings Transition Matrix, 1981-2020, with Probabilities Expressed as Percentages and Adjustments for Transition to the NR (not rated) Category

<table><tr><td rowspan="2">Initial Rating</td><td colspan="8">Rating at Year-end</td></tr><tr><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC/C</td><td>D</td></tr><tr><td>AAA</td><td>89.85</td><td>9.35</td><td>0.55</td><td>0.05</td><td>0.11</td><td>0.03</td><td>0.05</td><td>0.00</td></tr><tr><td>AA</td><td>0.50</td><td>90.76</td><td>8.08</td><td>0.49</td><td>0.05</td><td>0.06</td><td>0.02</td><td>0.02</td></tr><tr><td>A</td><td>0.03</td><td>1.67</td><td>92.61</td><td>5.23</td><td>0.27</td><td>0.12</td><td>0.02</td><td>0.05</td></tr><tr><td>BBB</td><td>0.00</td><td>0.10</td><td>3.45</td><td>91.93</td><td>3.78</td><td>0.46</td><td>0.11</td><td>0.17</td></tr><tr><td>BB</td><td>0.01</td><td>0.03</td><td>0.12</td><td>5.03</td><td>86.00</td><td>7.51</td><td>0.61</td><td>0.70</td></tr><tr><td>B</td><td>0.00</td><td>0.02</td><td>0.08</td><td>0.17</td><td>5.18</td><td>85.09</td><td>5.66</td><td>3.81</td></tr><tr><td>CCC/C</td><td>0.00</td><td>0.00</td><td>0.12</td><td>0.20</td><td>0.65</td><td>14.72</td><td>50.90</td><td>33.42</td></tr><tr><td>D</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>100.00</td></tr></table>

SOURCE: S&P.

Table 19.2 Five-Year Ratings Transition Matrix Calculated from Table 19.1 with Probabilities Expressed as Percentages

<table><tr><td rowspan="2">Initial Rating</td><td colspan="8">Rating after 5 years</td></tr><tr><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC/C</td><td>D</td></tr><tr><td>AAA</td><td>58.92</td><td>31.31</td><td>7.67</td><td>1.12</td><td>0.47</td><td>0.25</td><td>0.10</td><td>0.15</td></tr><tr><td>AA</td><td>1.69</td><td>62.98</td><td>28.97</td><td>5.04</td><td>0.62</td><td>0.37</td><td>0.07</td><td>0.22</td></tr><tr><td>A</td><td>0.17</td><td>6.03</td><td>70.62</td><td>19.34</td><td>2.41</td><td>0.84</td><td>0.13</td><td>0.47</td></tr><tr><td>BBB</td><td>0.02</td><td>0.80</td><td>12.77</td><td>68.51</td><td>12.35</td><td>3.53</td><td>0.50</td><td>1.53</td></tr><tr><td>BB</td><td>0.04</td><td>0.20</td><td>1.76</td><td>16.24</td><td>50.90</td><td>21.37</td><td>2.64</td><td>6.91</td></tr><tr><td>B</td><td>0.01</td><td>0.10</td><td>0.47</td><td>2.42</td><td>14.56</td><td>50.61</td><td>7.31</td><td>24.59</td></tr><tr><td>CCC/C</td><td>0.00</td><td>0.03</td><td>0.31</td><td>0.86</td><td>4.14</td><td>18.88</td><td>5.62</td><td>70.18</td></tr><tr><td>D</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>100.00</td></tr></table> in Appendix J at the end of the book and software for performing the calculations is on the author's website: www-2.rotman.utoronto.ca/~hull/riskman.

Table 19.3 shows the rating transition calculated for a period of one month from the data in Table 19.1. As might be expected, the probability that a company's credit rating will stay the same over a period of one month is very high.

The assumption that the credit rating change in one period is independent of that in another period is not exactly true. If a company has been downgraded recently, it is more likely to be downgraded again in the next short period of time. (This phenomenon is

Table 19.3 One-Month Ratings Transition Matrix Calculated from Table 19.1 with Probabilities Expressed as Percentages

<table><tr><td rowspan="2">Initial Rating</td><td colspan="8">Rating after 1 month</td></tr><tr><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC/C</td><td>D</td></tr><tr><td>AAA</td><td>99.11</td><td>0.86</td><td>0.02</td><td>0.00</td><td>0.01</td><td>0.00</td><td>0.01</td><td>0.00</td></tr><tr><td>AA</td><td>0.05</td><td>99.19</td><td>0.73</td><td>0.03</td><td>0.00</td><td>0.01</td><td>0.00</td><td>0.00</td></tr><tr><td>A</td><td>0.00</td><td>0.15</td><td>99.35</td><td>0.47</td><td>0.02</td><td>0.01</td><td>0.00</td><td>0.00</td></tr><tr><td>BBB</td><td>0.00</td><td>0.01</td><td>0.31</td><td>99.28</td><td>0.35</td><td>0.03</td><td>0.01</td><td>0.01</td></tr><tr><td>BB</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.47</td><td>98.72</td><td>0.72</td><td>0.04</td><td>0.04</td></tr><tr><td>B</td><td>0.00</td><td>0.00</td><td>0.01</td><td>0.00</td><td>0.50</td><td>98.58</td><td>0.69</td><td>0.22</td></tr><tr><td>CCC/C</td><td>0.00</td><td>0.00</td><td>0.01</td><td>0.02</td><td>0.02</td><td>1.79</td><td>94.45</td><td>3.71</td></tr><tr><td>D</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>100.00</td></tr></table> sometimes referred to as ratings momentum.) However, the independence assumption is not too unreasonable for some purposes.[2]

# 19.2 Vasicek's Model

Vasicek's Gaussian copula model (see Section 9.6) is a way of calculating high percentiles of the distribution of the default rate for a portfolio of loans. As in Chapter 9, we define  $\mathrm{WCDR}(T,X)$  as the  $X$ th percentile of the default rate distribution during a period of length  $T$ . (It will be recalled that  $\mathrm{WCDR}$  denotes worst case default rate.) Vasicek's model relates  $\mathrm{WCDR}(T,X)$  to the probability of default in time  $T$ , PD, and a parameter,  $\rho$ , describing credit correlation. The formula, which is proved in Section 9.6, is

$$
\operatorname {W C D R} (T, X) = N \left(\frac {N ^ {- 1} (\mathrm {P D}) + \sqrt {\rho} N ^ {- 1} (X)}{\sqrt {1 - \rho}}\right) \tag {19.1}
$$

For an individual loan, if EAD is the exposure at default and LGD is the loss given default, the  $X$ th percentile of the loss distribution is

$$
\operatorname {W C D R} (T, X) \times \operatorname {E A D} \times \operatorname {L G D}
$$

A result by Gordy (2003) enables us to extend this in a one-factor world. If we have a large portfolio of  $n$  loans where each loan is a small part of the total portfolio, the Xth percentile of the loss distribution is approximately

$$
\sum_ {i = 1} ^ {n} \mathrm {W C D R} _ {i} (T, X) \times \mathrm {E A D} _ {i} \times \mathrm {L G D} _ {i} \tag {19.2}
$$ where  $\mathrm{WCDR}_i(T,X)$ ,  $\mathrm{EAD}_i$ , and  $\mathrm{LGD}_i$  are the values of WCDR, EAD, and LGD for the  $i$ th loan in the portfolio.


As will be explained in Chapter 25, regulatory capital for the banking book is set equal to the expression in equation (19.2) with  $T$  equal to one year and  $X$  equal to  $99.9\%$ . Sometimes the expression under the summation sign in equation (19.2) is multiplied by a maturity adjustment factor, to allow for the fact that, if it lasts longer than one year, the  $i$ th loan might deteriorate without defaulting.

Structural models of the type discussed in Section 17.8 can be used to show that  $\rho$  for two companies should be roughly equal to the correlation between the returns on the assets of the companies. As an approximation, this is the same as the correlation between the returns on their equities. One way of determining  $\rho$  for a portfolio of exposures to companies is therefore to calculate the average correlation between the returns on equities for the companies. If the companies are not publicly traded, the average correlation between similar publicly traded companies can be used instead.

As pointed out in Chapter 9, Vasicek's model has the disadvantage that it incorporates very little tail correlation. Replacing the Gaussian copula model with another copula model (see Section 9.6.3 for some alternatives) can remedy this.

# 19.3 Credit Risk Plus

In 1997, Credit Suisse Financial Products proposed a methodology for calculating VaR that it termed Credit Risk Plus. It involves analytic approximations that are well established in the insurance industry.

Suppose that a financial institution has  $n$  loans of a certain type and the probability of default for each loan during a year is  $q$  so that the expected number of defaults is  $qn$ . Assuming that default events are independent, the probability of  $m$  defaults is given by the binomial distribution as

$$

\frac {n !}{m ! (n - m) !} q ^ {m} (1 - q) ^ {n - m}

$$

If  $q$  is small and  $n$  large, this can be approximated by the Poisson distribution:

$$

\operatorname {P r o b} (m \text {d e f a u l t s}) = \frac {e ^ {- q n} (q n) ^ {m}}{m !} \tag {19.3}

$$

This equation is approximately true even if the probability of default is not the same for each loan, provided that all the probabilities of default are small and  $q$  equals the average probability of default over the next year for the loans in the portfolio.

In practice, we are uncertain about what the default rate,  $q$ , will be during the next year. As shown in Table 9.6, default rates vary greatly from year to year. A convenient assumption is that  $qn$ , the expected number of defaults, has a gamma distribution with mean  $\mu$  and standard deviation  $\sigma$ .

The Poisson distribution in equation (19.3) then becomes a negative binomial distribution

$$

\operatorname {P r o b} (m \text {d e f a u l t s}) = p ^ {m} (1 - p) ^ {\alpha} \frac {\Gamma (m + \alpha)}{\Gamma (m + 1) \Gamma (\alpha)} \tag {19.4}

$$ where  $\alpha = \mu^2 / \sigma^2$ ,  $p = \sigma^2 / (\mu + \sigma^2)$ , and  $\Gamma(x)$  is the gamma function.

Table 19.4 shows the probability distribution for the number of defaults when  $\mu = 4$  for various values of  $\sigma$ . The first column ( $\sigma = 0$ ) is calculated from equation (19.3). The remaining columns are calculated from equation (19.4). It can be seen that as  $\sigma$  tends to zero, the negative binomial distribution in equation (19.4) tends to the same probability distribution for the number of defaults as the Poisson distribution. As  $\sigma$  increases, the probability of an extreme outcome involving a large number of defaults increases. Suppose that the loss from a default is constant. As indicated in the final row of the table, when  $\sigma = 0$  so that there is no uncertainty about the default rate, the  $99.9\%$  VaR is calculated as the loss when there are 11 defaults. When  $\sigma = 10$  so that there is a great deal of uncertainty about the default rate, the  $99.9\%$  VaR is considerably larger. It is the loss when there are 98 defaults.

A more flexible way of building uncertainty into the default rate is by using Monte Carlo simulation. Typically there are several different categories of exposures with different but correlated default rates. One way of proceeding is as follows:

1. Sample an overall default rate. This could be a random sample from data such as that in Table 9.6.
2. Develop a model relating the default rate for each category of obligors to the overall default rate. A simple model is obtained by regressing default rates for each category of obligors against the overall default rate.
3. Sample a number of defaults for each category of obligors.
4. Sample a loss given default for each default in each category.
5. Calculate the total loss from the defaults.
6. Repeat steps 1 to 5 many times to build up a probability distribution for the total loss.
7. Calculate the required VaR from the total loss probability distribution.

Table 19.4 Probability Distribution for Number of Defaults When the Expected Number of Defaults Is 4.0.

<table><tr><td rowspan="2">Number of Defaults</td><td colspan="7">Standard Deviation of Default Rate</td></tr><tr><td>0</td><td>0.1</td><td>0.5</td><td>1.0</td><td>2.0</td><td>5.0</td><td>10.0</td></tr><tr><td>0</td><td>0.0183</td><td>0.0184</td><td>0.0207</td><td>0.0281</td><td>0.0625</td><td>0.2814</td><td>0.5938</td></tr><tr><td>1</td><td>0.0733</td><td>0.0734</td><td>0.0777</td><td>0.0901</td><td>0.1250</td><td>0.1553</td><td>0.0913</td></tr><tr><td>2</td><td>0.1465</td><td>0.1466</td><td>0.1486</td><td>0.1531</td><td>0.1563</td><td>0.1098</td><td>0.0509</td></tr><tr><td>3</td><td>0.1954</td><td>0.1952</td><td>0.1923</td><td>0.1837</td><td>0.1563</td><td>0.0833</td><td>0.0353</td></tr><tr><td>4</td><td>0.1954</td><td>0.1951</td><td>0.1895</td><td>0.1746</td><td>0.1367</td><td>0.0653</td><td>0.0268</td></tr><tr><td>5</td><td>0.1563</td><td>0.1561</td><td>0.1516</td><td>0.1396</td><td>0.1094</td><td>0.0523</td><td>0.0214</td></tr><tr><td>6</td><td>0.1042</td><td>0.1041</td><td>0.1026</td><td>0.0978</td><td>0.0820</td><td>0.0423</td><td>0.0177</td></tr><tr><td>7</td><td>0.0595</td><td>0.0596</td><td>0.0603</td><td>0.0614</td><td>0.0586</td><td>0.0346</td><td>0.0150</td></tr><tr><td>8</td><td>0.0298</td><td>0.0298</td><td>0.0315</td><td>0.0353</td><td>0.0403</td><td>0.0285</td><td>0.0129</td></tr><tr><td>9</td><td>0.0132</td><td>0.0133</td><td>0.0148</td><td>0.0188</td><td>0.0269</td><td>0.0236</td><td>0.0113</td></tr><tr><td>10</td><td>0.0053</td><td>0.0053</td><td>0.0064</td><td>0.0094</td><td>0.0175</td><td>0.0196</td><td>0.0099</td></tr><tr><td>11</td><td>0.0019</td><td>0.0019</td><td>0.0025</td><td>0.0045</td><td>0.0111</td><td>0.0163</td><td>0.0088</td></tr><tr><td>12</td><td>0.0006</td><td>0.0007</td><td>0.0009</td><td>0.0020</td><td>0.0069</td><td>0.0137</td><td>0.0079</td></tr><tr><td>13</td><td>0.0002</td><td>0.0002</td><td>0.0003</td><td>0.0009</td><td>0.0043</td><td>0.0115</td><td>0.0071</td></tr><tr><td>14</td><td>0.0001</td><td>0.0001</td><td>0.0001</td><td>0.0004</td><td>0.0026</td><td>0.0096</td><td>0.0064</td></tr><tr><td>15</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0001</td><td>0.0016</td><td>0.0081</td><td>0.0058</td></tr><tr><td>16</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0001</td><td>0.0009</td><td>0.0068</td><td>0.0053</td></tr><tr><td>17</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0005</td><td>0.0058</td><td>0.0048</td></tr><tr><td>18</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0003</td><td>0.0049</td><td>0.0044</td></tr><tr><td>19</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0002</td><td>0.0041</td><td>0.0041</td></tr><tr><td>20</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0001</td><td>0.0035</td><td>0.0038</td></tr><tr><td>99.9 percentile of number of defaults</td><td>11</td><td>11</td><td>12</td><td>13</td><td>17</td><td>39</td><td>98</td></tr></table>

There are a number of ways in which the Monte Carlo simulation can be refined. An analysis of the data in Table 9.6 shows that the default rate in one year is not independent of the default rate in the previous year. This indicates that randomly sampling a default rate from a table such as Table 9.6 to determine next year's default rate may not be the best approach. It may be preferable to develop a model that relates the default rate in one year to the default rate in the previous year or other economic factors observable in the previous year.

Note that the uncertainty about the default rate plays a key role in the analysis. Without this uncertainty, there is no default correlation and, as indicated in Table 19.4, there is very little chance of a large number of defaults. As the uncertainty about the default rate increases, default correlation increases and a large number of defaults becomes more likely. The default correlation arises because all companies have the same default rate, which can be high or low. Without default correlation, the loss probability distribution is fairly symmetrical. With default correlation, it is positively skewed, as indicated in Figure 19.1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/5aed39b1da373eb662098a046aa5932bcc88fb0090d89770f3936475e3620e58.jpg)

Figure 19.1 General Shape of Probability Distribution of Default Losses

# 19.4 Creditmetrics

Vasicek's model and Credit Risk Plus estimate the probability distribution of losses arising from defaults. The impact of downgrades is not considered. We now consider the CreditMetrics model, which is designed so that it can take account of downgrades as well as defaults. This model was proposed by JPMorgan in 1997. It is based on a rating transition matrix such as the one shown in Table 19.1. The ratings can be the internal ratings used by the bank (derived from its own historical data) or those produced by rating agencies.

Calculating a one-year credit VaR for a portfolio of transactions with many counterparties involves carrying out a Monte Carlo simulation. On each simulation trial, the credit ratings of all counterparties at the end of one year are determined. (The procedure for doing this will be explained shortly.) The credit loss for each counterparty is then calculated. If the end-of-year credit rating for a counterparty is not default, the calculation of the credit loss is given by valuing all the transactions with the counterparty at the one-year point. If the end-of-year credit rating is default, the credit loss is the exposure at default times one minus the recovery rate.[8]

The calculations require the term structure of credit spreads for each rating category. A simple assumption is that it is the same as that observed in the market today. An alternative assumption is that there is a credit spread index that has a certain probability distribution and that all credit spreads are linearly dependent on the index.

When transactions with a counterparty involve derivatives, an extension of the CVA calculations described in Chapter 18 is necessary. Recall that, for each counterparty, a CVA calculation involves dividing the time between today and the end of the life of the longest transaction with the counterparty into  $n$  intervals. We defined  $q_{i}$  as the probability of default during the  $i$ th time interval,  $\nu_{i}$  is the present value of the expected net exposure at the midpoint of the interval after collateral has been taken into account, and  $R$  is the recovery rate. The expected cost of defaults from one year onward, as seen at time zero, is

$$
\sum_ {i = j} ^ {n} (1 - R) q _ {i} v _ {i}
$$ where the  $j$ th interval starts at time one year.


On each CreditMetrics simulation trial where there is no default during the first year, the term structure of credit spreads at the one-year point gives the probability of default in each interval from year one onward using equation (18.3). Suppose that  $q_{i}^{*}$  is the probability of default for the  $i$ th interval  $(i \geq j)$  on a particular simulation trial. The credit loss for that trial is

$$

\sum_ {i = j} ^ {n} (1 - R) \left(q _ {i} ^ {*} - q _ {i}\right) v _ {i} \tag {19.5}

$$

Note that, if the counterparty's credit rating improves during the year, this credit loss is likely to be negative.

If there is a default during the first year on a particular simulation trial, the timing of the default is sampled and the exposure at default determined. This is multiplied by one minus the recovery rate to determine the loss.

The results of the CreditMetrics Monte Carlo simulation determine a probability distribution for total credit losses arising from defaults and downgrades across all counterparties. The required value at risk can be calculated from this distribution.

# 19.4.1 The Correlation Model

In sampling to determine credit losses, the credit rating changes for different counterparties are not assumed to be independent. A Gaussian copula model is used to construct a joint probability distribution of rating changes. (See Section 9.5 for a discussion of copula models.) The copula correlation between the rating transitions for two companies is typically set equal to the correlation between their equity returns. (The capital asset pricing model discussed in Chapter 1 provides a one-factor model for equity returns. As described in Section 9.4.2, this can be used to determine an internally consistent correlation matrix.)

Suppose that we are simulating the rating change of an A-rated and a B-rated company over a one-year period using the transition matrix in Table 19.1. Suppose that the correlation between the equity returns of the two companies is 0.2. On each simulation trial we would sample two variables  $x_{A}$  and  $x_{B}$  from standard normal distributions so that their correlation is 0.2. The variable  $x_{A}$  determines the new rating of the A-rated company and variable  $x_{B}$  determines the new rating of the B-rated company. From Table 19.1, the probability of an A-rated company moving to AAA, AA, A, ... is 0.0003, 0.167, 0.9261 ... Because


$$

N ^ {- 1} (0. 0 0 0 3) = - 3. 3 4 1 6

$$

$$

N ^ {- 1} (0. 0 0 0 3 + 0. 0 1 6 7) = - 2. 1 2 0 1

$$

$$

N ^ {- 1} (0. 0 0 0 3 + 0. 0 1 6 7 + 0. 9 2 6 1) = 1. 5 8 1 3

$$ the A-rated company gets upgraded to AAA if  $x_A < -3.3416$ , it becomes AA-rated if  $-3.3416 < x_A < -2.1201$ , it stays A-rated if  $-2.1201 < x_A < 1.5813$ , and so on. Table 19.1 also shows that the probability of a B-rated company moving to AA, A, and BBB, … is 0.0002, 0.0008, 0.0017, … Because

$$
N ^ {- 1} (0. 0 0 0 2) = - 3. 5 4 0 1
$$

$$
N ^ {- 1} (0. 0 0 0 2 + 0. 0 0 0 8) = - 3. 0 9 0 2
$$

$$
N ^ {- 1} (0. 0 0 0 2 + 0. 0 0 0 8 + 0. 0 0 1 7) = - 2. 7 8 2 2
$$ the B-rated becomes AA-rated if  $x_{B} < -3.5401$ , it becomes A-rated if  $-3.5401 < x_{B} < -3.0902$ , it becomes BBB-rated if  $-3.0902 < x_{B} < -2.7822$ , and so on. The A-rated company defaults if  $x_{A} > N^{-1}(0.9995)$ , that is, when  $x_{A} > 3.2905$ . The B-rated company defaults when  $x_{B} > N^{-1}(0.9619)$ , that is, when  $x_{B} > 1.7744$ . The full set of transitions are shown in Figure 19.2.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/38e0ab85b0f58d8bf686615d75f9c296553c6009410d67fb5701cc01eaa64239.jpg)
Figure 19.2 The CreditMetrics Correlation Model: Transition of A-Rated and B-Rated Companies to a New Rating after One Year

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/a772ad6c57c4c4d29b67e7a32da4073172a3665ed222d86769d209afeebbfbb9.jpg)

$x_{A}$  and  $x_{B}$  are sampled from standard normal distributions with the correlation equal to the correlation between the equity returns of A and B.

It is interesting to note that, if both the CreditMetrics and the Credit Risk Plus models were based on the same set of assumptions, they should in theory predict the same probability distribution for losses over the long term. It is the timing of losses that is different. Suppose, for example, that you hold a certain loan in your portfolio. In year 1, the borrower gets downgraded from A to BBB; in year 2, it gets downgraded from BBB to B; in year 3 it defaults. You could assume that there are no losses in years 1 and 2 and calculate loss in year 3 (the Credit Risk Plus approach). Alternatively, you can calculate separate revaluation losses in years 1, 2, and 3 (the CreditMetrics approach). The losses under the second approach should in theory add up to the losses under the first approach.

# 19.5 Credit Spread Risk

The values of most credit-sensitive products in the trading book depend critically on credit spreads. Calculating VaR or ES for portfolios including these products therefore involves examining potential credit spread changes. One possibility is to use historical simulation to calculate a one-day  $99\%$  VaR. This one-day  $99\%$  VaR can then be scaled up by  $\sqrt{10}$  to obtain a 10-day  $99\%$  VaR. It is first necessary to collect credit spread changes for each company to which the bank is exposed over the last 500 days (or some other period). The first historical simulation scenario assumes that the credit spread changes for all companies are the same as they were on the first day; the second scenario assumes that they are the same as they were on the second day; and so on. However, there are problems with this approach. If the company is alive today, it did not default in the past and the calculations carried out therefore assume no probability of default in the future. Another problem is that credit spreads are not updated daily for all companies and so the historical data may not be of high quality.

An alternative approach is to use a version of the CreditMetrics approach. A 10-day rating transitions matrix is calculated as indicated in Section 19.1. The ratings transition matrix defines the probability of a company moving from one rating category to another during a 10-day period. The historical data on credit rating changes define a probability distribution for the credit spread changes associated with each rating category at the end of 10 days. A Monte Carlo simulation is carried out. On each trial, the transition matrix is sampled from to determine whether each company stays in the same rating category, changes to a different rating category, or defaults. The probability distribution of credit spread changes is also sampled from to determine the credit spread at the end of the 10 days associated with each rating category. This enables the value of the portfolio at the end of 10 days to be calculated on each trial and a VaR to be obtained.

Credit correlation can be introduced in two ways. First, a Gaussian copula model can be used to correlate the credit rating changes of different companies. Second, the credit spread changes for different rating categories can be assumed to be perfectly (or nearly perfectly) correlated so that when the spreads for A-rated instruments move up, those for instruments with other ratings do as well.

# Example 19.1

Consider a company that owns a single two-year zero-coupon bond with a principal of  \$1,000. Suppose that the risk-free rate is 3\%$  and the current credit spread is 200 basis points so that the bond yield is  $5\%$ . (Rates are expressed with annual compounding.) The current price of the bond is  \$1,000 / 1.05^2 = \$ 907.03. Suppose that the bond's current rating is BB and that during the next month there is a  $0.6\%$  chance that it will increase to BBB, a  $98.5\%$  chance that it will stay the same, a  $0.8\%$  chance that it will decrease to B, and a  $0.1\%$  chance that it will default. If it defaults, the bond will be worth  $\$400$ . For each possible rating category there are three equally likely credit spreads. In basis points these are 80, 100, and 120 for BBB; 160, 200, and 240 for BB; and 400, 450, and 500 for B.

The worst outcome is clearly a default. This has a probability of 0.1\% and will lead to a loss of 907.03 - 400 = \507.03 . The next worst outcome involves a transition to a rating of B when the credit spread for that rating category is 500 basis points. This has a probability of 0.8/3 = 0.267\%. Because the bond will have about 1.917 years to maturity, its price will be 1,000/1.08^{1.917} = \862.85, for a loss of 907.03 - 862.85 = \44.17. A complete list of outcomes with their probabilities is shown in Table 19.5.

Table 19.5 Outcomes for Example 19.1

<table><tr><td>Rating</td><td>Spread (bp)</td><td>Probability</td><td>Bond Value ($)</td><td>Loss ($)</td></tr><tr><td>Default</td><td></td><td>0.100\%</td><td>400.00</td><td>507.03</td></tr><tr><td>B</td><td>500</td><td>0.267\%</td><td>862.85</td><td>44.17</td></tr><tr><td>B</td><td>450</td><td>0.267\%</td><td>870.56</td><td>36.47</td></tr><tr><td>B</td><td>400</td><td>0.267\%</td><td>878.38</td><td>28.65</td></tr><tr><td>BB</td><td>240</td><td>32.833\%</td><td>904.11</td><td>2.92</td></tr><tr><td>BB</td><td>200</td><td>32.833\%</td><td>910.72</td><td>-3.70</td></tr><tr><td>BB</td><td>160</td><td>32.833\%</td><td>917.41</td><td>-10.38</td></tr><tr><td>BBB</td><td>120</td><td>0.200\%</td><td>924.17</td><td>-17.14</td></tr><tr><td>BBB</td><td>100</td><td>0.200\%</td><td>927.58</td><td>-20.55</td></tr><tr><td>BBB</td><td>80</td><td>0.200\%</td><td>931.01</td><td>-23.98</td></tr></table>

The table shows that, if the confidence level is higher than 99.9\%, the VaR is 507.03; if it is between 99.9\% and 99.633\%, the VaR is \$44.17; and so on. When the confidence level is 99\%, the VaR is a modest \$2.92.

# 19.5.1 Constant Level of Risk Assumptions

When calculating VaR or ES, banks sometimes make a constant level of risk assumption. This means that they assume a portfolio is rebalanced periodically to bring the risk back to where it was initially.

Suppose, for example, that a company invests in BBB bonds and is considering two alternative trading strategies:

1. Hold bonds for one year and then sell (the "buy and hold" strategy).
2. Rebalance at the end of each month so that if bonds are no longer BBB they are sold and replaced with BBB bonds (the "constant level of risk" strategy).

The first strategy leads to outcomes given by the BBB row of Table 19.1, while, in the case of the second strategy, the outcomes given by the BBB row of Table 19.3 are repeated 12 times.

Consider first defaults. From Table 19.1, the probability of a default under the buy-and-hold strategy is 0.0017. From Table 19.3, the probability of a default each month is 0.0001. The probability of one default when the constant level of risk strategy is used is therefore

$$

1 2 \times 0. 0 0 0 1 \times 0. 9 9 9 9 ^ {1 1} = 0. 0 0 1 2

$$

This is less than that under the buy-and-hold strategy. The probability of two or more defaults is negligible.

Now, consider the probability of a downgrade to BB. Under the buy-and-hold strategy, the probability of this is 0.0378 from Table 19.1. When the constant level of risk strategy is used, the probability of one downgrade to BB is

$$

1 2 \times 0. 0 0 3 5 \times 0. 9 9 6 5 ^ {1 1} = 0. 0 4 4 0 4

$$ which is greater than that for the buy-and-hold strategy. The probability of more than one downgrade is in this case about 0.001.


The calculations illustrate that the buy-and-hold strategy will lead to greater losses from defaults and big downgrades than the constant level of risk strategy. But the probabilities of losses from a small rating change are less. VaR and ES are generally smaller when the constant level of risk strategy is used.

# Summary

Credit VaR is defined similarly to the way VaR is defined for market risk. It is the credit loss that will not be exceeded over some time horizon with a specified confidence level. Basel regulations require credit VaR to be calculated with a one-year time horizon and a  $99.9\%$  confidence level. For economic capital purposes a different confidence level may be used.

We have discussed three methods for calculating credit VaR: Vasicek's model, Credit Risk Plus, and CreditMetrics. Vasicek's model is based on a one-factor Gaussian copula model of the time to default for the companies in a portfolio. It is used in the determination of regulatory capital. Credit Risk Plus uses procedures that are similar to those used in the insurance industry to calculate default losses from assumptions about the probabilities of default of individual companies. CreditMetrics is different from the other two methods in that it considers losses from both defaults and downgrades. It uses a Gaussian copula model in conjunction with a ratings transition matrix.

To determine VaR or ES for instruments dependent on credit spreads, one approach is to collect historical data on the credit spread changes of companies and use a historical simulation methodology similar to that for market risk. Another is to model the rating transitions of companies and movements in the average credit spreads associated with different rating categories.

# Further Reading

Credit Suisse Financial Products. "Credit Risk Management Framework" (October 1997).
Finger, C. C. "Creditmetrics and Constant Level of Risk." Working Paper, RiskMetrics Group-MSCI, September 2010.
Gordy, M. "A Risk-Factor Model Foundation for Ratings-Based Capital Rules." Journal of Financial Intermediation 12, no. 3 (July 2003): 199-233.
JP. Morgan. "CreditMetrics-Technical Document" (April 1997).
Vasicek, O. "Probability of Loss on a Loan Portfolio." Working Paper, KMV, 1987. (Published in Risk in December 2002 under the title "Loan Portfolio Value.")

# Practice Questions and Problems (Answers at End of Book)

19.1 Explain the difference between Vasicek's model, the Credit Risk Plus model, and CreditMetrics as far as the following are concerned: (a) when a credit loss is recognized and (b) the way in which default correlation is modeled.
19.2 Explain what is meant by the constant level of risk assumption.
19.3 Use the transition matrix in Table 19.1 to calculate a transition matrix for two years. What is the probability of a company rated AAA being AAA at the end of two years? What is the probability of it moving to AA?
19.4 Use the transition matrix in Table 19.1 and software on the author's website to calculate a transition matrix for six months. What is the probability of a company rated Aaa staying Aaa during the six months? What is the probability of it moving to Aa?
19.5 How can historical simulation be used to calculate a one-day  $99\%$  VaR for the credit risk of bonds in the trading book? What are the disadvantages?
19.6 A bank has 100 one-year loans, each with a  $1\%$  probability of default. What is the probability of six or more defaults, assuming independence?

19.7 Repeat Problem 19.6 on the assumption that the probability of default applicable to all loans is uncertain. It is equally likely to be  $0.5\%$  or  $1.5\%$ .
19.8 What is the autocorrelation for the default rates in Table 9.6? What are the implications of this for a Credit Risk Plus model?

# Further Questions

19.9 Explain carefully the distinction between real-world and risk-neutral default probabilities. Which is higher? A bank enters into a credit derivative where it agrees to pay 100 at the end of one year if a certain company's credit rating falls from A to BBB or lower during the year. The one-year risk-free rate is 5\%. Using Table 19.1, estimate a value for the derivative. What assumptions are you making? Do they tend to overstate or understate the value of the derivative?
19.10 Suppose that a bank has a total of 10 million of small exposures of a certain type. The one-year probability of default is 1\% and the recovery rate averages 40\%. Estimate the 99.5\% one-year credit VaR using Vasicek's model if the copula correlation parameter is 0.2.
19.11 Use the transition matrix in Table 19.1 and software on the author's website to calculate the transition matrix over 1.25 years.

# Part Five

# OTHER RISKS


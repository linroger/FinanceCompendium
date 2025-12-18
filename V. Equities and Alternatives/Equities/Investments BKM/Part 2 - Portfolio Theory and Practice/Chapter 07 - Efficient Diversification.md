---
aliases:
  - Efficient Diversification
tags:
key_concepts:
parent_directory: V. Equities and Alternatives/Equities/Investments BKM/Part 2 - Portfolio Theory and Practice
cssclasses: academia
title: "Chapter 7: Efficient Diversification"
---

# Efficient Diversification

# 7

THE INVESTMENT DECISION can be viewed as a top-down process: (1) capital allocation between the risky portfolio and risk-free assets, (2) asset allocation within the risky portfolio across broad asset classes (e.g., U.S. stocks, international stocks, and long-term bonds), and (3) security selection of individual assets within each asset class.

Capital allocation, as we saw in Chapter 6, determines the investor's exposure to risk. The optimal capital allocation is determined by risk aversion as well as estimates of the risk-return trade-off of the investor's risky portfolio.

In principle, asset allocation and security selection are technically identical; both aim at identifying the optimal risky portfolio, specifically, the combination of risky assets that provides the best risk-return trade-off or, equivalently, the highest Sharpe ratio. In practice, however, asset allocation and security selection are typically separated into two steps, in which the broad outlines of the portfolio are established first (asset allocation), while details concerning specific securities are filled in later (security selection). After we show how the optimal risky portfolio may be constructed, we will consider the costs and benefits of pursuing this two-step approach.

We begin by illustrating the potential gains from simple diversification into many assets. We then turn to efficient diversification, starting with an investment menu of only two risky assets, then adding the risk-free asset, and, finally, incorporating the entire universe of available risky securities. We learn how diversification can reduce risk without affecting expected returns. This accomplished, we reexamine the rationale for the portfolio construction hierarchy: capital allocation, followed by asset allocation, followed by security selection. Finally, we offer insight into the power of diversification by drawing an analogy between it and the workings of the insurance industry.


The portfolios we discuss in this and the following chapters presume a short-term horizon—even if the overall investment horizon is long, portfolio composition can be rebalanced or updated almost continuously. For these short horizons, the assumption of normality is sufficiently accurate to describe holding-period returns, and we will be concerned only with portfolio means and variances.

In Appendix A, we demonstrate how the optimal risky portfolio can be constructed using Excel. Appendix B provides a review of portfolio statistics with emphasis on the intuition behind covariance and correlation measures. Even if you have had a good quantitative methods course, it may well be worth skimming.

# 7.1 Diversification and Portfolio Risk

Suppose your portfolio is composed of only one stock, say, Digital Computer Corp. What would be the sources of risk to this "portfolio"? You might think of two broad sources of uncertainty. First, there is the risk that comes from conditions in the general economy, such as the business cycle, inflation, interest rates, and exchange rates. None of these macroeconomic factors can be predicted with certainty, and all affect the rate of return on Digital stock. In addition to these macroeconomic factors, there are firm-specific influences, such as Digital's success in research and development and personnel changes. These factors affect Digital without noticeably affecting other firms in the economy.

Now consider a naïve diversification strategy, in which you include additional securities in your portfolio. For example, place half your funds in ExxonMobil and half in Digital. What should happen to portfolio risk? To the extent that the firm-specific influences on the two stocks differ, diversification should reduce portfolio risk. For example, when oil prices fall, hurting ExxonMobil, computer prices might rise, helping Digital. The two effects are offsetting and stabilize portfolio return.

But why end diversification at only two stocks? If we diversify into many more securities, we continue to spread out our exposure to firm-specific factors, and portfolio volatility should continue to fall. Ultimately, however, even with a large number of stocks, we cannot avoid risk altogether because virtually all securities are affected by the common macroeconomic factors. For example, if all stocks are affected by the business cycle, we cannot avoid exposure to business cycle risk no matter how many stocks we hold.

When all risk is firm-specific, as in Figure 7.1, Panel A, diversification can reduce risk to arbitrarily low levels. The reason is that with all risk sources independent, the exposure to any particular source of risk is reduced to a negligible level. Risk reduction by spreading exposure across many independent risk sources is sometimes called

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/8c89dd48e522f6f4a8024173d74565e8fc16298acc203af125f9fa7f838b024b.jpg)
A

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/8bf188b3d4f8bd4c297c781a13fa60fc60349e4ead53b1496b3fd98152272072.jpg)
B the insurance principle: An insurance company depends on such diversification when it writes many policies insuring against many independent sources of risk, each policy being a small part of the company's overall portfolio. (We discuss the insurance principle in more detail in Section 7.5.)
Figure 7.1 Portfolio risk as a function of the number of stocks in the portfolio. Panel A: All risk is firm specific. Panel B: Some risk is systematic, or marketwide.

Figure 7.2 Portfolio diversification. The average annualized standard deviation of returns of portfolios composed of only one stock selected at random from the NYSE was  $27.8\%$  in the decade ending 2017. Portfolio risk fell rapidly as the number of stocks included in the portfolio increased. In the limit, portfolio risk could be reduced to only  $17.4\%$ .
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0a9a4063a54376aa4e3dc8b1dbc08a32e4746ca5b4713b4f7f64b22afa18b33f.jpg)
Source: Authors' calculations. This is an update of a figure that first appeared in Meir Statman, "How Many Stocks Make a Diversified Portfolio?" Journal of Financial and Quantitative Analysis 22 (September 1987).


When common sources of risk affect all firms, however, even extensive diversification cannot eliminate risk. In Figure 7.1, Panel B, portfolio standard deviation falls as the number of securities increases, but it cannot be reduced to zero. The risk that remains even after extensive diversification is called market risk, risk that is attributable to marketwide risk sources. Such risk is also called systematic risk, or nondiversifiable risk. In contrast, the risk that can be eliminated by diversification is called unique risk, firm-specific risk, nonsystematic risk, or diversifiable risk.

This analysis is well borne out empirically. Figure 7.2 shows the average standard deviation of equally weighted portfolios constructed by selecting stocks at random as a function of the number of stocks in the portfolio. On average, portfolio risk does fall with diversification, but the power of diversification to reduce risk is limited by systematic sources of risk.

# 7.2 Portfolios of Two Risky Assets

In the last section we considered naïve diversification using equally weighted portfolios. It is time now to study efficient diversification, whereby we construct risky portfolios to provide the lowest possible risk for any given level of expected return.

Table 7.1
Descriptive statistics for two mutual funds

<table><tr><td></td><td>Debt</td><td>Equity</td></tr><tr><td>Expected return, E(r)</td><td>8\%</td><td>13\%</td></tr><tr><td>Standard deviation, σ</td><td>12\%</td><td>20\%</td></tr><tr><td>Covariance, Cov(rD, rE)</td><td colspan="2">72</td></tr><tr><td>Correlation coefficient, ρDE</td><td colspan="2">0.30</td></tr></table>

Portfolios of two risky assets are relatively easy to analyze, and they illustrate the principles that apply to portfolios of many assets. It makes sense to think about a two-asset risky portfolio as an asset allocation decision, and so we consider two mutual funds, a bond portfolio specializing in long-term debt securities, denoted  $D$ , and a stock fund that specializes in equity securities,  $E$ . Table 7.1 lists the parameters describing the rate-of-return distribution of these funds.

A proportion denoted by  $w_{D}$  is invested in the bond fund, and the remainder,  $1 - w_{D}$ , denoted  $w_{E}$ , is invested in the stock fund. The rate of return on this portfolio,  $r_{p}$ , is a weighted average of the returns on the component securities, with portfolio proportions as weights:

$$ r _ {p} = w _ {D} r _ {D} + w _ {E} r _ {E} \tag {7.1}
$$ where  $r_D$  is the rate of return on the debt fund and  $r_E$  is the rate of return on the equity fund.


The expected return on the portfolio is similarly a weighted average of expected returns on the component securities:

$$
E \left(r _ {p}\right) = w _ {D} E \left(r _ {D}\right) + w _ {E} E \left(r _ {E}\right) \tag {7.2}
$$

The variance of  $r_p$  is

$$
\sigma_ {p} ^ {2} = w _ {D} ^ {2} \sigma_ {D} ^ {2} + w _ {E} ^ {2} \sigma_ {E} ^ {2} + 2 w _ {D} w _ {E} \operatorname {C o v} \left(r _ {D}, r _ {E}\right) \tag {7.3}
$$

Our first observation is that the variance of the portfolio, unlike the expected return, is not a weighted average of the individual asset variances. To understand the formula for the portfolio variance more clearly, recall that the covariance of a variable with itself is the variance of that variable; that is

$$
\begin{array}{l} \operatorname {C o v} \left(r _ {D}, r _ {D}\right) = \sum_ {\text {s c e n a r i o s}} \Pr (\text {s c e n a r i o}) \left[ r _ {D} - E \left(r _ {D}\right) \right] \left[ r _ {D} - E \left(r _ {D}\right) \right] \\ = \sum_ {\text {s c e n a r i o s}} \Pr (\text {s c e n a r i o}) \left[ r _ {D} - E \left(r _ {D}\right) \right] ^ {2} \tag {7.4} \\ = \sigma_ {D} ^ {2} \\ \end{array}
$$

Therefore, another way to write the variance of the portfolio is

$$
\sigma_ {p} ^ {2} = w _ {D} w _ {D} \operatorname {C o v} \left(r _ {D}, r _ {D}\right) + w _ {E} w _ {E} \operatorname {C o v} \left(r _ {E}, r _ {E}\right) + 2 w _ {D} w _ {E} \operatorname {C o v} \left(r _ {D}, r _ {E}\right) \tag {7.5}
$$

In words, the variance of the portfolio is a weighted sum of covariances, and each weight is the product of the portfolio proportions of the pair of assets.

Table 7.2 shows how portfolio variance can be calculated from a spreadsheet. Panel A shows the bordered covariance matrix of the returns of the two mutual funds. The bordered

<table><tr><td colspan="3">A. Bordered Covariance Matrix</td></tr><tr><td>Portfolio Weights</td><td>WD</td><td>WE</td></tr><tr><td>WD</td><td>Cov(rD, rD)</td><td>Cov(rD, rE)</td></tr><tr><td>WE</td><td>Cov(rE, rD)</td><td>Cov(rE, rE)</td></tr><tr><td colspan="3">B. Border-Multiplied Covariance Matrix</td></tr><tr><td>Portfolio Weights</td><td>WD</td><td>WE</td></tr><tr><td>WD</td><td>wDwDCov(rD, rD)</td><td>wDwECov(rD, rE)</td></tr><tr><td>WE</td><td>wEWDCov(rE, rD)</td><td>wEWCCov(rE, rE)</td></tr><tr><td>WD + WE = 1</td><td>wDWDCov(rD, rD) + wEWDCov(rE, rD)</td><td>wDWECov(rD, rE) + wEWCCov(rE, rE)</td></tr><tr><td>Portfolio variance</td><td colspan="2">wDwDCov(rD, rD) + wEWDCov(rE, rD) + wDWCCov(rD, rE) + wEWCCov(rE, rE)</td></tr></table>

# Table 7.2

Computation of portfolio variance from the covariance matrix matrix is the covariance matrix with the portfolio weights for each fund placed on the borders, that is, along the first row and column. To find portfolio variance, multiply each element in the covariance matrix by the pair of portfolio weights in its row and column borders. Add up the resultant terms, and you have the formula for portfolio variance given in Equation 7.5.


We perform these calculations in Panel B, which is the border-multiplied covariance matrix: Each covariance has been multiplied by the weights from the row and the column in the borders. The bottom line of Panel B confirms that the sum of all the terms in this matrix (which we obtain by adding up the column sums) is indeed the portfolio variance in Equation 7.5.

This procedure works because the covariance matrix is symmetric around the diagonal, that is,  $\operatorname{Cov}(r_D, r_E) = \operatorname{Cov}(r_E, r_D)$ . Thus, each covariance term appears twice.

This procedure for computing the variance of a portfolio applies to any number of assets. Example 7.1 applies it to a three-asset portfolio.

# Example 7.1 Volatility of a Three-Asset Portfolio

The following table shows the weights of a portfolio invested in stocks  $X, Y, Z$  (in bold) along with the covariances between the returns on each of those stocks.

<table><tr><td>Weights</td><td>wx= .10</td><td>wY= .30</td><td>wZ= .40</td></tr><tr><td>wx= .10</td><td>26.25</td><td>8.91</td><td>5.52</td></tr><tr><td>wY= .30</td><td>8.91</td><td>15.98</td><td>12.16</td></tr><tr><td>wZ= .40</td><td>5.52</td><td>12.16</td><td>9.38</td></tr></table>

The portfolio variance is found by adding up each of the nine elements in the covariance matrix, first multiplying each element by the weights found in the respective row and column borders. We work across each row of the covariance matrix in turn:

$$
\begin{array}{l} \operatorname {V a r} (r _ {p}) = . 1 0 \times . 1 0 \times 2 6. 2 5 + . 1 0 \times . 3 0 \times 8. 9 1 + . 1 0 \times . 4 0 \times 5. 5 2 [ \mathrm {r o w} 1 ] \\ + . 3 0 \times . 1 0 \times 8. 9 1 + . 3 0 \times . 3 0 \times 1 5. 9 8 + . 3 0 \times . 4 0 \times 1 2. 1 6 [ r o w 2 ] \\ + . 4 0 \times . 1 0 \times 5. 5 2 + . 4 0 \times . 3 0 \times 1 2. 1 6 + . 4 0 \times . 4 0 \times 9. 3 8 [ r o w 3 ] \\ = 7. 0 9 6 \\ \end{array}
$$

Concept Check 7.1 asks you to explore the bordered covariance matrix a bit further.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/300f0131da05a5cf8bd3ef88b9679e8549cfec1238d513a60c6368115d56b081.jpg)

# Concept Check 7.1 a. First confirm for yourself that our simple rule for computing the variance of a two-asset portfolio from the bordered covariance matrix is consistent with Equation 7.3.

b. Return to Example 7.1. What would be the variance of a portfolio invested in stocks  $X$ ,  $Y$ , and  $Z$  from Example 7.1 with weights .20, .30, and .50 respectively?

Equation 7.3 reveals that variance is reduced if the covariance term is negative. But even if the covariance term is positive, the portfolio standard deviation is still less than the weighted average of the individual security standard deviations, unless the two securities are perfectly positively correlated.

To see this, notice that the covariance can be computed from the correlation coefficient,  $\rho_{DE}$ , as

$$
\operatorname {C o v} \left(r _ {D}, r _ {E}\right) = \rho_ {D E} \sigma_ {D} \sigma_ {E} \tag {7.6}
$$

Therefore,

$$
\sigma_ {p} ^ {2} = w _ {D} ^ {2} \sigma_ {D} ^ {2} + w _ {E} ^ {2} \sigma_ {E} ^ {2} + 2 w _ {D} w _ {E} \sigma_ {D} \sigma_ {E} \rho_ {D E} \tag {7.7}
$$

Other things equal, portfolio variance is higher when  $\rho_{DE}$  is higher. In the case of perfect positive correlation,  $\rho_{DE} = 1$ , the right-hand side of Equation 7.7 is a perfect square and simplifies to

$$
\sigma_ {p} ^ {2} = \left(w _ {D} \sigma_ {D} + w _ {E} \sigma_ {E}\right) ^ {2} \tag {7.8}
$$ or


$$
\sigma_ {p} = w _ {D} \sigma_ {D} + w _ {E} \sigma_ {E} \tag {7.9}
$$

Therefore, in this special case, with perfect positive correlation (and only in this case), the standard deviation of the portfolio is just the weighted average of the component standard deviations. In all other cases, the correlation coefficient is less than 1, making the portfolio standard deviation less than that weighted average.

A hedge asset has negative correlation with the other assets in the portfolio. Equation 7.7 shows that such assets are particularly effective in reducing total risk because the last term in that equation will be negative. Moreover, Equation 7.2 shows that expected return is unaffected by correlation between returns. Therefore, other things equal, we will always prefer to add to our portfolios assets with low or, even better, negative correlation with our existing position.

Because the portfolio's expected return is the weighted average of its component expected returns, whereas its standard deviation is less than the weighted average of the component standard deviations, portfolios of less than perfectly correlated assets always offer some degree of diversification benefit. The lower the correlation, the greater the benefit.

How low can portfolio standard deviation be? The lowest possible value of the correlation coefficient is  $-1$ , representing perfect negative correlation. In this case, Equation 7.7 again simplifies to a perfect square, and

$$
\sigma_ {p} ^ {2} = \left(w _ {D} \sigma_ {D} - w _ {E} \sigma_ {E}\right) ^ {2} \tag {7.10}
$$

The portfolio standard deviation is

$$
\sigma_ {p} = \text {A b s o l u t e v a l u e} \left(w _ {D} \sigma_ {D} - w _ {E} \sigma_ {E}\right) \tag {7.11}
$$

When  $\rho = -1$ , a perfectly hedged position can be obtained by choosing the portfolio proportions to solve

$$ w _ {D} \sigma_ {D} - w _ {E} \sigma_ {E} = 0
$$

Solving, we find that the portfolio weights that drive standard deviation to zero are

$$ w _ {D} = \frac {\sigma_ {E}}{\sigma_ {D} + \sigma_ {E}} \tag {7.12}
$$

$$ w _ {E} = \frac {\sigma_ {D}}{\sigma_ {D} + \sigma_ {E}} = 1 - w _ {D}
$$

Given this background, we can experiment with different portfolio proportions to observe the effect on expected return and variance. We begin with an example of the calculations we will use in this analysis.

# Example 7.2 Portfolio Risk and Return

We can apply our formulas for expected return and standard deviation to the bond and stock funds whose properties were summarized in Table 7.1. Using these data, the expected return, variance, and standard deviation of the portfolio as a function of the portfolio weights are

$$
E (r _ {p}) = 8 w _ {D} + 1 3 w _ {E}
$$

$$
\begin{array}{l} \sigma_ {p} ^ {2} = 1 2 ^ {2} w _ {D} ^ {2} + 2 0 ^ {2} w _ {E} ^ {2} + 2 \times 1 2 \times 2 0 \times . 3 \times w _ {D} w _ {E} \\ = 1 4 4 w _ {D} ^ {2} + 4 0 0 w _ {E} ^ {2} + 1 4 4 w _ {D} w _ {E} \\ \end{array}
$$

$$
\sigma_ {p} = \sqrt {\sigma_ {p} ^ {2}}
$$

The expected return of the portfolio for different proportions invested in bonds versus stocks is tabulated in Table 7.3 (see column for  $\rho = .30$ ), and plotted in Figure 7.3. When the proportion invested in debt varies from zero to 1 (so that the proportion in equity varies from 1 to zero), the portfolio expected return goes from  $13\%$  (the stock fund's expected return) to  $8\%$  (the expected return on bonds).

<table><tr><td rowspan="2">wD</td><td rowspan="2">WE</td><td rowspan="2">E(rp)</td><td colspan="4">Portfolio Standard Deviation for Given Correlation</td></tr><tr><td>ρ = -1</td><td>ρ = 0</td><td>ρ = 0.30</td><td>ρ = 1</td></tr><tr><td>0.00</td><td>1.00</td><td>13.00</td><td>20.00</td><td>20.00</td><td>20.00</td><td>20.00</td></tr><tr><td>0.10</td><td>0.90</td><td>12.50</td><td>16.80</td><td>18.04</td><td>18.40</td><td>19.20</td></tr><tr><td>0.20</td><td>0.80</td><td>12.00</td><td>13.60</td><td>16.18</td><td>16.88</td><td>18.40</td></tr><tr><td>0.30</td><td>0.70</td><td>11.50</td><td>10.40</td><td>14.46</td><td>15.47</td><td>17.60</td></tr><tr><td>0.40</td><td>0.60</td><td>11.00</td><td>7.20</td><td>12.92</td><td>14.20</td><td>16.80</td></tr><tr><td>0.50</td><td>0.50</td><td>10.50</td><td>4.00</td><td>11.66</td><td>13.11</td><td>16.00</td></tr><tr><td>0.60</td><td>0.40</td><td>10.00</td><td>0.80</td><td>10.76</td><td>12.26</td><td>15.20</td></tr><tr><td>0.70</td><td>0.30</td><td>9.50</td><td>2.40</td><td>10.32</td><td>11.70</td><td>14.40</td></tr><tr><td>0.80</td><td>0.20</td><td>9.00</td><td>5.60</td><td>10.40</td><td>11.45</td><td>13.60</td></tr><tr><td>0.90</td><td>0.10</td><td>8.50</td><td>8.80</td><td>10.98</td><td>11.56</td><td>12.80</td></tr><tr><td>1.00</td><td>0.00</td><td>8.00</td><td>12.00</td><td>12.00</td><td>12.00</td><td>12.00</td></tr><tr><td></td><td></td><td></td><td colspan="4">Minimum Variance Portfolio</td></tr><tr><td></td><td></td><td>wD</td><td>0.6250</td><td>0.7353</td><td>0.8200</td><td>-</td></tr><tr><td></td><td></td><td>wE</td><td>0.3750</td><td>0.2647</td><td>0.1800</td><td>-</td></tr><tr><td></td><td></td><td>E(rp)</td><td>9.8750</td><td>9.3235</td><td>8.9000</td><td>-</td></tr><tr><td></td><td></td><td>σp</td><td>0.0000</td><td>10.2899</td><td>11.4473</td><td>-</td></tr></table>

# Table 7.3

Expected return and standard deviation with various correlation coefficients

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/d6fc4f469fbf8cf88cd301f4854a1ffd2a6521736825696a0c9d692f3d8390c4.jpg)
Figure 7.3 Portfolio expected return as a function of investment proportions

What happens when  $w_{D} > 1$  and  $w_{E} < 0$ ? The negative weight  $w_{E}$  implies that the equity fund is sold short, with proceeds of the short sale invested in the debt fund. This reduces the expected return of the portfolio. For example, when  $w_{D} = 2$  and  $w_{E} = -1$ , expected portfolio return falls to  $E(r_{p}) = 2 \times 8 + (-1) \times 13 = 3\%$ . At this point, the value of the bond fund in the portfolio is twice the net worth of the account. This extreme position is financed in part by short-selling stocks equal in value to the portfolio's net worth.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/64b2946675459a5332c95c5784996b4d70433a3dd4a5cb935af9d282e91cd040.jpg)
Figure 7.4 Portfolio standard deviation as a function of investment proportions


The reverse happens when  $w_{D} < 0$  and  $w_{E} > 1$ . This strategy calls for selling the bond fund short and using the proceeds to finance additional purchases of the equity fund.

Of course, varying investment proportions also has an effect on portfolio standard deviation. Table 7.3 presents portfolio standard deviations for different portfolio weights calculated from Equation 7.7 using the assumed value of the correlation coefficient, .30, as well as other values of  $\rho$ . Figure 7.4 shows the relationship between standard deviation and portfolio weights. Look first at the solid colored curve for  $\rho_{DE} = .30$ . The graph shows that as the portfolio weight in the equity fund increases from -.5 to 1.5, portfolio standard deviation first falls with the initial diversification from bonds into stocks, but then rises again as the portfolio becomes heavily concentrated in stocks, and again is undiversified. This pattern will generally hold as long as the correlation coefficient between the funds is not too high. For a pair of assets with a large positive correlation of returns, the portfolio standard deviation will increase monotonically from the low-risk asset to the high-risk asset. Even in this case, however, there is a positive (if small) benefit from diversification.


What is the minimum level to which portfolio standard deviation can be held? For the parameter values stipulated in Table 7.1, the portfolio weights that solve this minimization problem turn out to be

$$
\begin{array}{l} w _ {\operatorname {M i n}} (D) = . 8 2 \\ w _ {\mathrm {M i n}} (E) = 1 -. 8 2 = . 1 8 \\ \end{array}
$$

This minimum-variance portfolio has a standard deviation of

$$
\sigma_ {\text {Min}} = \left[ \left(0.2 ^ {2} \times 1 2 ^ {2}\right) + \left(0.8 ^ {2} \times 1 2 ^ {2}\right) + \left(2 \times 0.8 ^ {2} \times 1 2 ^ {2}\right) \right] ^ {1 / 2} = 1 1.45 \%
$$ as indicated in the last line of Table 7.3 for the column  $\rho = .30$ .


The solid colored line in Figure 7.4, which plots the portfolio standard deviation for  $\rho = .30$ , passes through the two undiversified portfolios of  $w_{D} = 1$  and  $w_{E} = 1$ . Notice that the minimum-variance portfolio has a standard deviation smaller than that of either of the individual component assets. This illustrates the power of diversification to limit risk.

The other three lines in Figure 7.4 show how portfolio risk varies for other values of the correlation coefficient, holding the variances of each asset constant. These lines plot the values in the other three columns of Table 7.3.

The solid dark straight line connecting the undiversified portfolios of all bonds or all stocks,  $w_{D} = 1$  or  $w_{E} = 1$ , shows portfolio standard deviation with perfect positive correlation,  $\rho = 1$ . In this case, there is no advantage from diversification, and the portfolio standard deviation is simply the weighted average of the component asset standard deviations.

The dashed colored curve depicts portfolio risk for uncorrelated assets,  $\rho = 0$ . With lower correlation between the two assets, diversification is more effective and portfolio risk is lower (at least when both assets are held in positive amounts). The minimum portfolio standard deviation when  $\rho = 0$  is  $10.29\%$  (see Table 7.3), again lower than the standard deviation of either asset.

Finally, the triangular broken line illustrates the perfect hedge potential when the two assets are perfectly negatively correlated ( $\rho = -1$ ). In this case, the solution for the minimum-variance portfolio is, by Equation 7.12,

$$
\begin{array}{l} w _ {\text {M i n}} (D; \rho = - 1) = \frac {\sigma_ {E}}{\sigma_ {D} + \sigma_ {E}} = \frac {2 0}{1 2 + 2 0} = . 6 2 5 \\ w _ {\operatorname {M i n}} (E; \rho = - 1) = 1 -. 6 2 5 = . 3 7 5 \\ \end{array}
$$ and the portfolio variance (and standard deviation) is zero.


$$ w _ {\mathrm {M i n}} (D) = \frac {\sigma_ {E} ^ {2} - \operatorname {C o v} (r _ {D} , r _ {E})}{\sigma_ {D} ^ {2} + \sigma_ {E} ^ {2} - 2 \operatorname {C o v} (r _ {D} , r _ {E})}
$$

Alternatively, with a spreadsheet program such as Excel, you can obtain an accurate solution by using the Solver to minimize the variance. See Appendix A for an example of a portfolio optimization spreadsheet.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/20c4b4046e2004fe827e80c55b8a0673c2028347d2dba269949333969b5dac2f.jpg)
Figure 7.5 Portfolio expected return as a function of standard deviation

We can combine Figures 7.3 and 7.4 to demonstrate the relationship between portfolio risk (standard deviation) and expected return—given the parameters of the available assets. This is done in Figure 7.5. For any pair of investment proportions,  $w_{D}$  and  $w_{E}$ , we read the expected return from Figure 7.3 and the standard deviation from Figure 7.4. The resulting pairs of expected return and standard deviation are tabulated in Table 7.3 and plotted in Figure 7.5.

The solid curved line in Figure 7.5 shows the portfolio opportunity set for  $\rho = .30$ . We call it the portfolio opportunity set because it shows all combinations of portfolio expected return and standard deviation that can be constructed from the two available assets. The other lines show the portfolio opportunity set for other values of the correlation coefficient. The straight dotted line connecting the two funds shows that there is no benefit from diversification when the correlation between the two is perfectly positive ( $\rho = 1$ ). The opportunity set is not "pushed" to the northwest. The dashed colored line demonstrates the greater benefit from diversification when the correlation coefficient is less than .30.

Finally, for  $\rho = -1$ , the portfolio opportunity set reveals the maximum advantage from diversification. In this case, there is a perfect hedging opportunity: Standard deviation can be driven all the way to zero.

To summarize, although the expected return of any portfolio is simply the weighted average of the asset expected returns, this is not true of the standard deviation. Potential benefits from diversification arise when correlation is less than perfectly positive. The lower the correlation, the greater the potential benefit from diversification. In the extreme case of perfect negative correlation, we have a perfect hedging opportunity and can construct a zero-variance portfolio.

Suppose now an investor wishes to select the optimal portfolio from the opportunity set. The best portfolio will depend on risk aversion. Portfolios to the northeast in Figure 7.5 provide higher rates of return but impose greater risk. The best trade-off among these choices is a matter of personal preference. Investors with greater risk aversion will prefer portfolios to the southwest, with lower expected return but lower risk.

Given a level of risk aversion, one can determine the portfolio that provides the highest level of utility. Recall from Chapter 6 that we were able to describe the utility provided by a portfolio as a function of its expected return,  $E(r_{p})$ , and its variance,  $\sigma_p^2$ , according to the relationship  $U = E(r_{p}) - 0.5A\sigma_{p}^{2}$ . The portfolio mean and variance are determined by the portfolio weights in the two funds,  $w_{E}$  and  $w_{D}$ , according to Equations 7.2 and 7.3. Using those equations and some calculus, we find the optimal investment proportions in the two funds. A warning: To use the following equation (or any equation involving the risk aversion parameter,  $A$ ), you must express returns in decimal form.

$$ w _ {D} = \frac {E (r _ {D}) - E (r _ {E}) + A (\sigma_ {E} ^ {2} - \sigma_ {D} \sigma_ {E} \rho_ {D E})}{A (\sigma_ {D} ^ {2} + \sigma_ {E} ^ {2} - 2 \sigma_ {D} \sigma_ {E} \rho_ {D E})}
$$

$$ w _ {E} = 1 - w _ {D}
$$

Here, too, Excel's Solver or similar software can be used to maximize utility subject to the constraints of Equations 7.2 and 7.3, plus the portfolio constraint that  $w_{D} + w_{E} = 1$  (i.e., that portfolio weights sum to 1).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/ea684a31e55072d0532aec004c03cf42975e5f73bd45418769493ac3c4024f9c.jpg)

# Concept Check 7.2

Compute and draw the portfolio opportunity set for the debt and equity funds when the correlation coefficient between them is  $\rho = .25$ .

# 7.3 Asset Allocation with Stocks, Bonds, and Bills

When choosing their capital allocation between risky and risk-free portfolios, investors naturally will want to work with the risky portfolio that offers the highest reward-to-volatility or Sharpe ratio. The higher the Sharpe ratio, the greater the expected return corresponding to any level of volatility. Another way to put this is that the best risky portfolio is the one that results in the steepest capital allocation line (CAL). Steeper CALs provide greater rewards for bearing any level of risk. Therefore, our next step is the construction of a risky portfolio combining the major asset classes (here a bond and a stock fund) that provides the highest possible Sharpe ratio.

The Sharpe ratio is the portfolio's risk premium in excess of the risk-free rate, divided by the standard deviation. We often will refer to T-bills as the risk-free asset, but you can think more generally about a money market portfolio playing that role. Before beginning, we point out that restricting ourselves in this example to only stocks, bonds, and bills is actually not as restrictive as it may appear, as this choice includes all three major asset classes.

# Asset Allocation with Two Risky Asset Classes

What if our risky assets are still confined to the bond and stock funds, as in the last section, but we can now also invest in risk-free T-bills yielding  $5\%$ ? We start with a graphical solution. Figure 7.6 shows the opportunity set using the data from Table 7.1 and assuming that  $\rho = .3$ .


Two possible CALs are drawn from the risk-free rate  $(r_f = 5\%)$  to two feasible portfolios. The first possible CAL is drawn through the minimum-variance portfolio  $A$ , which invested  $82\%$  in bonds and  $18\%$  in stocks (Table 7.3, bottom panel, last column). Portfolio  $A$ 's expected return is  $8.90\%$ , and its standard deviation is  $11.45\%$ . With a T-bill rate of  $5\%$ , its Sharpe ratio, which is the slope of the CAL, is

$$
S _ {A} = \frac {E \left(r _ {A}\right) - r _ {f}}{\sigma_ {A}} = \frac {8 . 9 - 5}{1 1 . 4 5} = . 3 4
$$

Now consider the CAL that uses portfolio  $B$  instead of  $A$ . Portfolio  $B$  invests  $70\%$  in bonds and  $30\%$  in stocks. Its expected return is  $9.5\%$ , and its standard deviation is  $11.70\%$ . Thus, the Sharpe ratio for portfolio  $B$  is

$$
S _ {B} = \frac {9 . 5 - 5}{1 1 . 7} = . 3 8
$$ which is higher than the Sharpe ratio provided by the minimum-variance portfolio. Hence, portfolio


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/6fdf9d58ce8121bf30c18e372ceabfe0beee83b5bcfd4dd8272880264a14e2fe.jpg)
Figure 7.6 The opportunity set of the debt and equity funds and two feasible CALs

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0a446a7808b4388024284d79838fc2bcd45b92033edc263ac721a338e64029eb.jpg)
Figure 7.7 The opportunity set of the debt and equity funds with the optimal CAL and the optimal risky portfolio

$B$  dominates  $A$ : Figure 7.6 shows that  $\mathrm{CAL}_B$  provides a higher expected return than  $\mathrm{CAL}_A$  for any level of standard deviation.

But why stop at portfolio  $B$ ? We can continue to ratchet the CAL upward to the greatest extent possible, which is where it ultimately reaches the point of tangency with the investment opportunity set. This yields the CAL with the highest feasible Sharpe ratio. Therefore, the tangency portfolio, labeled  $P$  in Figure 7.7, is the optimal risky portfolio to mix with T-bills. We can read its expected return and standard deviation from the graph in Figure 7.7:  $E(r_{P}) = 11\%$  and  $\sigma_{P} = 14.2\%$ .

In practice, when we try to construct optimal risky portfolios from more than two risky assets, we need to rely on a spreadsheet (which we present in Appendix A) or another computer program. To start, however, we will demonstrate the solution of the portfolio construction problem with only two risky assets and a risk-free asset. In this simpler case, we can find an explicit formula for the weights of each asset in the optimal portfolio, making it easier to illustrate general issues.

The objective is to find the weights  $w_{D}$  and  $w_{E}$  that result in the highest slope of the CAL. Thus, our objective function is the Sharpe ratio:

$$
S _ {p} = \frac {E (r _ {p}) - r _ {f}}{\sigma_ {p}}
$$

For the portfolio with two risky assets, the expected return and standard deviation of portfolio  $P$  are

$$
\begin{array}{l} E (r _ {p}) = w _ {D} E (r _ {D}) + w _ {E} E (r _ {E}) \\ = 8 w _ {D} + 1 3 w _ {E} \\ \end{array}
$$

$$
\begin{array}{l} \sigma_ {p} = \left[ w _ {D} ^ {2} \sigma_ {D} ^ {2} + w _ {E} ^ {2} \sigma_ {E} ^ {2} + 2 w _ {D} w _ {E} \operatorname {C o v} (r _ {D}, r _ {E}) \right] ^ {1 / 2} \\ = \left[ 1 4 4 w _ {D} ^ {2} + 4 0 0 w _ {E} ^ {2} + (2 \times w _ {D} w _ {E} \times 7 2) \right] ^ {1 / 2} \\ \end{array}
$$

When we maximize the objective function,  $S_{p}$ , we have to satisfy the constraint that the portfolio weights sum to 1.0. Therefore, we solve an optimization problem formally written as

$$
\operatorname * {M a x} _ {w _ {i}} S _ {p} = \frac {E (r _ {p}) - r _ {f}}{\sigma_ {p}}
$$ subject to  $w_{D} + w_{E} = 1$ . This is a maximization problem that can be solved using standard tools of calculus.


In the case of two risky assets, the weights of the optimal risky portfolio,  $P$ , are given by Equation 7.13. Notice that the solution employs excess returns (denoted  $R$ ) rather than total returns (denoted  $r$ ).

$$ w _ {D} = \frac {E \left(R _ {D}\right) \sigma_ {E} ^ {2} - E \left(R _ {E}\right) \operatorname {C o v} \left(R _ {D} , R _ {E}\right)}{E \left(R _ {D}\right) \sigma_ {E} ^ {2} + E \left(R _ {E}\right) \sigma_ {D} ^ {2} - \left[ E \left(R _ {D}\right) + E \left(R _ {E}\right) \right] \operatorname {C o v} \left(R _ {D} , R _ {E}\right)} \tag {7.13}
$$

$$ w _ {E} = 1 - w _ {D}
$$

# Example 7.3 Optimal Risky Portfolio

Using our data, the solution for the optimal risky portfolio is

$$ w _ {D} = \frac {(8 - 5) 4 0 0 - (1 3 - 5) 7 2}{(8 - 5) 4 0 0 + (1 3 - 5) 1 4 4 - (8 - 5 + 1 3 - 5) 7 2} = . 4 0
$$

$$ w _ {E} = 1 -. 4 0 = . 6 0
$$

The expected return and standard deviation of this optimal risky portfolio are

$$
E (r _ {P}) = (. 4 \times 8) + (. 6 \times 1 3) = 1 1
$$

$$
\sigma_ {P} = \left[ (.4 ^ {2} \times 1 4 4) + (.6 ^ {2} \times 4 0 0) + (2 \times . 4 \times . 6 \times 7 2) \right] ^ {1 / 2} = 1 4. 2
$$

This asset allocation produces an optimal risky portfolio whose CAL has a slope (equivalently, Sharpe ratio) of

$$
S _ {P} = \frac {1 1 - 5}{1 4 . 2} = . 4 2
$$

In Chapter 6 we found the optimal complete portfolio given an optimal risky portfolio and the CAL generated by a combination of this portfolio and T-bills. Now that we have constructed the optimal risky portfolio,  $P$ , we can use its expected return and volatility along with the individual investor's degree of risk aversion,  $A$ , to calculate the optimal proportion of the complete portfolio to invest in it.

# Example 7.4 The Optimal Complete Portfolio

An investor with a coefficient of risk aversion  $A = 4$  would take a position in portfolio  $P$  of

$$ y = \frac {E \left(r _ {P}\right) - r _ {f}}{A \sigma_ {P} ^ {2}} = \frac {. 1 1 -. 0 5}{4 \times . 1 4 2 ^ {2}} = . 7 4 3 9 \tag {7.14}
$$

Thus, the investor will invest  $74.39\%$  of overall wealth in portfolio  $P$  and  $25.61\%$  in T-bills. Portfolio  $P$  consists of  $40\%$  in bonds and  $60\%$  in equity (see Example 7.3), so the fraction of total wealth in bonds will be  $y w_{D} = .7439 \times .4 = .2976$ , or  $29.76\%$ . Similarly, the investment in stocks will be  $y w_{E} = .7439 \times .6 = .4463$ , or  $44.63\%$ . The graphical solution of this asset allocation problem is presented in Figures 7.8 and 7.9.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/5d2bdfb77d1062b0314e0115ac27253071ccae12120f8d9ebc517feab281586b.jpg)
Figure 7.8 Determination of the optimal complete portfolio

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/cf18d7b068c454fad31cc104d28c0ad9365144f21ed5d6995ecf557da8966d0e.jpg)
Figure 7.9 The proportions of the optimal complete portfolio

Once we have reached this point, generalizing to the case of many risky assets is straightforward. Before we move on, let us briefly summarize the steps we followed to arrive at the complete portfolio.

The accompanying spreadsheet can be used to analyze the return and risk of a portfolio of two risky assets. The model calculates expected return and volatility for varying weights of each security as well as the optimal risky and minimum-variance portfolios. Graphs are automatically generated for various model inputs. The model allows you to specify a target rate of return and solves for optimal complete portfolios composed of the risk-free asset and the optimal risky portfolio. The spreadsheet is constructed using the two-security return data (expressed as decimals, not percentages) from

Table 7.1. This spreadsheet is available in Connect or through your course instructor.

# Excel Question

1. Suppose your target expected rate of return is  $11\%$ .

a. What is the lowest-volatility portfolio that provides that expected return?
b. What is the standard deviation of that portfolio?
c. What is the composition of that portfolio?

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td colspan="3">Asset Allocation Analysis: Risk and Return</td><td></td><td></td><td></td></tr><tr><td>2</td><td></td><td>Expected</td><td>Standard</td><td>Correlation</td><td></td><td></td></tr><tr><td>3</td><td></td><td>Return</td><td>Deviation</td><td>Coefficient</td><td>Covariance</td><td></td></tr><tr><td>4</td><td>Security 1</td><td>0.08</td><td>0.12</td><td>0.3</td><td>0.0072</td><td></td></tr><tr><td>5</td><td>Security 2</td><td>0.13</td><td>0.2</td><td></td><td></td><td></td></tr><tr><td>6</td><td>T-Bill</td><td>0.05</td><td>0</td><td></td><td></td><td></td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>Weight</td><td>Weight</td><td></td><td>Expected</td><td>Standard</td><td>Reward to</td></tr><tr><td>9</td><td>Security 1</td><td>Security 2</td><td></td><td>Return</td><td>Deviation</td><td>Volatility</td></tr><tr><td>10</td><td>1</td><td>0</td><td></td><td>0.08000</td><td>0.12000</td><td>0.25000</td></tr><tr><td>11</td><td>0.9</td><td>0.1</td><td></td><td>0.08500</td><td>0.11559</td><td>0.30281</td></tr><tr><td>12</td><td>0.8</td><td>0.2</td><td></td><td>0.09000</td><td>0.11454</td><td>0.34922</td></tr><tr><td>13</td><td>0.7</td><td>0.3</td><td></td><td>0.09500</td><td>0.11696</td><td>0.38474</td></tr><tr><td>14</td><td>0.6</td><td>0.4</td><td></td><td>0.10000</td><td>0.12264</td><td>0.40771</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/3cf198c29763e8d7aeb2005dbd4cbe9e269d910b8f4b594a2f3f80a27b4eaead.jpg)

1. Specify the return characteristics of all securities (expected returns, variances, covariances).
2. Establish the risky portfolio (asset allocation): a. Calculate the optimal risky portfolio,  $P$  (Equation 7.13).

b. Calculate the properties of portfolio  $P$  using the weights determined in step (a) and Equations 7.2 and 7.3.

3. Allocate funds between the risky portfolio and the risk-free asset (capital allocation): a. Calculate the fraction of the complete portfolio allocated to portfolio  $P$  (the risky portfolio) and to T-bills (the risk-free asset) (Equation 7.14).

b. Calculate the share of the complete portfolio invested in each asset and in T-bills.

Recall that our two risky assets, the bond and stock mutual funds, are already diversified portfolios. The diversification within each of these portfolios must be credited for a good deal of the risk reduction compared to undiversified single securities. For example, the standard deviation of the rate of return on an average stock in the last 10 years has been about  $28\%$  (see Figure 7.2). In contrast, the standard deviation of the S&P 500 in this period was considerably lower, around  $17\%$ . This is evidence of the importance of diversification within each asset class.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/b48ba84f44bbc6cff0801817578070ca2a4baaa8d14c5f3af2d6a1488dabccc0.jpg)

# Concept Check 7.3

The universe of available securities includes two risky stock funds,  $A$  and  $B$ , and T-bills. The data for the universe are as follows:

<table><tr><td></td><td>Expected Return</td><td>Standard Deviation</td></tr><tr><td>A</td><td>10\%</td><td>20\%</td></tr><tr><td>B</td><td>30</td><td>60</td></tr><tr><td>T-bills</td><td>5</td><td>0</td></tr></table>

The correlation coefficient between funds  $A$  and  $B$  is -.2.

$a$ . Draw the opportunity set of funds  $A$  and  $B$ .
b. Find the optimal risky portfolio,  $P$ , and its expected return and standard deviation.
c. Find the slope of the CAL supported by T-bills and portfolio  $P$ .
d. How much will an investor with  $A = 5$  invest in funds  $A$  and  $B$  and in T-bills?

# 7.4 The Markowitz Portfolio Optimization Model

# Security Selection

We can now generalize the portfolio construction problem to the case of many risky securities and a risk-free asset. As in the two risky assets example, the problem has three parts. First, we identify the risk-return combinations available from the set of risky assets. Next, we identify the optimal portfolio of risky assets by finding the portfolio weights that result in the steepest CAL. Finally, we choose an appropriate complete portfolio by mixing the risk-free asset with the optimal risky portfolio. Before describing the process in detail, let us first present an overview.

The first step is to determine the risk-return opportunities available to the investor. These are summarized by the minimum-variance frontier of risky assets. This frontier is a graph of the lowest possible variance that can be attained for a given portfolio expected return. Given the input data for expected returns, variances, and covariances, we can calculate the minimum-variance portfolio consistent with any targeted expected return. The plot of these expected return-standard deviation pairs is presented in Figure 7.10.

Notice that all the individual assets lie to the right inside the frontier, at least when we allow short sales in the construction of risky portfolios. The important lesson here is that risky portfolios comprising only a single asset are inefficient. Diversification allows us to construct portfolios with higher expected returns and lower standard deviations.

All the portfolios that lie on the minimum-variance frontier from the global minimum-variance portfolio and upward provide the best risk-return combinations and thus are candidates for the optimal portfolio. The portion of the frontier that lies above the global minimum-variance portfolio, therefore, is called the efficient frontier of risky assets. For any portfolio on the lower portion of the minimum-variance frontier, there is a portfolio with the same standard deviation and a greater expected return positioned directly above it. Hence, the bottom part of the minimum-variance frontier is inefficient.


The second part of the optimization plan involves the risk-free asset. As before, we search for the capital allocation line with the highest Sharpe ratio (i.e., the steepest slope), as shown in Figure 7.11.

The CAL generated by the optimal portfolio,  $P$ , is the one tangent to the efficient frontier. This CAL dominates all alternative feasible lines (the broken lines that are drawn through the frontier). Portfolio  $P$ , therefore, is the optimal risky portfolio.

Finally, in the last part of the problem, the individual investor chooses the appropriate mix between the optimal risky portfolio  $P$  and T-bills, exactly as in Figure 7.8.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0598fe387a21434b4b54feee1a24a254549cee0c4ab147241d258e0ca09b19a2.jpg)
Figure 7.10 The minimum-variance frontier of risky assets


Now, let us consider each part of the portfolio construction problem in more detail. In the first part of the problem, risk-return analysis, the portfolio manager needs as inputs a set of estimates for the expected returns of each security and a set of estimates for the covariance matrix. (In Part V, Security Analysis, we will examine the security valuation techniques and methods of financial analysis that analysts use. For now, we will assume that analysts already have spent the time and resources to prepare the inputs.)

The portfolio manager is now armed with the  $n$  estimates of  $E(r_{i})$  and the  $n \times n$  estimates of the covariance matrix in which the  $n$  diagonal elements are estimates of the variances  $\sigma_{i}^{2}$  and the  $n^2 - n = n(n - 1)$  off-diagonal elements are the estimates of the covariances between each pair of asset returns. (You can verify this from Table 7.2 for the case  $n = 2$ .) Each covariance appears twice in this table, so actually we have  $n(n - 1)/2$  different covariance estimates. If our portfolio management unit covers 50 securities, our security analysts need to deliver 50 estimates of expected returns, 50 estimates of variances, and  $50 \times 49/2 = 1,225$  different estimates of covariances. This is a daunting task! (We show later how the number of required estimates can be reduced substantially.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/11646195dd45835f39d68d031ddc3903fd8087fc46289839847011fa34055e4c.jpg)
Figure 7.11 The efficient frontier of risky assets with the optimal CAL

Once these estimates are compiled, the expected return and variance of any risky portfolio with weights in each security,  $w_{i}$ , can be calculated from the bordered covariance matrix or, equivalently, from the following generalizations of Equations 7.2 and 7.3:

$$
E \left(r _ {p}\right) = \sum_ {i = 1} ^ {n} w _ {i} E \left(r _ {i}\right) \tag {7.15}
$$

$$
\sigma_ {p} ^ {2} = \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} w _ {i} w _ {j} \operatorname {C o v} \left(r _ {i}, r _ {j}\right) \tag {7.16}
$$

It's clear that using Equations 7.15 and 7.16 will quickly become algebraically challenging as the number of risky assets increases. Fortunately, these equations, as well as the other components of the portfolio optimization, can be tackled using a spreadsheet or programming language. Appendix A walks you through the details in a seven-asset example using Excel. You can see there how the spreadsheet makes this otherwise-difficult problem quite manageable.

We mentioned earlier that the idea of diversification is age-old. The phrase "don't put all your eggs in one basket" existed long before modern portfolio theory. It was not until 1952, however, that Harry Markowitz published a formal model of portfolio selection embodying principles of efficient diversification, thereby paving the way for his 1990 Nobel Prize in Economics.[8] His model, now commonly called the Markowitz model, is precisely step one of portfolio management: the identification of the efficient set of portfolios, or the efficient frontier of risky assets.

The principal idea behind the frontier set of risky portfolios is that, for any risk level, we are interested only in that portfolio with the highest expected return. Alternatively, the frontier is the set of portfolios that minimizes variance for any target expected return.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/16157fc6e8909f3bc4c4e18c6e1bf35aee80d74b52605ae9c7ddd14174f00621.jpg)
Figure 7.12 The efficient portfolio set

Indeed, the two methods of computing the efficient set of risky portfolios are equivalent. To see this, consider the graphical representation of these procedures. The solid portion of the curve in Figure 7.12 shows the efficient frontier.

The points marked by squares are the result of a variance-minimization program. We first draw the constraints, that is, horizontal lines, at the level of required expected returns. We then look for the portfolio with the lowest standard deviation that plots on each horizontal line—in other words, we look for the portfolio that plots farthest to the left (smallest standard deviation) on that line. When we repeat this for many levels of required expected returns and "connect the dots," the shape of the minimum-variance frontier emerges. We then discard the bottom (dashed) half of the frontier because it is inefficient.

In the alternative approach, we draw a vertical line that represents the standard deviation constraint. We then consider all portfolios that plot on this line (have the same standard deviation) and choose the one with the highest expected return, that is, the portfolio that plots highest on this vertical line. Repeating this procedure for many vertical lines (levels of standard deviation) gives us the points marked by circles that trace the upper portion of the minimum-variance frontier, the efficient frontier.

When this step is completed, we have a list of efficient portfolios because the solution to the optimization program includes the portfolio proportions,  $w_{i}$ ; the expected return,  $E(r_{p})$ ; and the standard deviation,  $\sigma_{p}$ .

Let us restate what our portfolio manager has done so far. The estimates generated by the security analysts were transformed into a set of expected rates of return and a covariance matrix. These estimates are the input list, which is then fed into the optimization program.

Before we proceed to the second step of choosing the optimal risky portfolio from the frontier set, let us consider a practical point. Some clients may be subject to additional constraints. For example, many institutions are prohibited from taking short positions. For these clients, the portfolio manager will add to the optimization program constraints that rule out negative (short) positions. In this special case, it is possible that single assets may be, in and of themselves, efficient risky portfolios. For example, the asset with the highest expected return will be a frontier portfolio because, without the opportunity of short sales, the only way to obtain that rate of return is to hold the asset as one's entire risky portfolio.

Short-sale restrictions are by no means the only such constraints. For example, some clients may demand a minimal dividend yield from the optimal portfolio. In this case, the input list will be expanded to include the dividend yield of each stock, and the optimization program will include an additional constraint requiring the dividend yield of the portfolio to equal or exceed the desired level.

Another type of constraint is aimed at ruling out investments in industries or countries considered ethically or politically undesirable. This is referred to as socially responsible investing, or SRI. A similar orientation is called ESG (environmental, social, and governance-focused) investing. While these practices have considerable overlap, SRI investors tend to impose more absolute restrictions on portfolio choice to reflect their ethical concerns, whereas ESG investors tend to be comparatively more focused on long-term sustainable business prospects that might be enhanced by environmentally and socially sound practices.

Portfolio managers can tailor the efficient set to conform to any desire of the client. Of course, any constraint carries a price tag in the sense that an efficient frontier constructed subject to extra constraints will offer a Sharpe ratio inferior to that of a less constrained one. The client should be made aware of this cost and should carefully consider constraints that are not mandated by law.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/e19c76312b5fede61287f8dcf32cca249475829b2f74ac2f3c8d9995dbe8677b.jpg)
Figure 7.13 Capital allocation lines with various portfolios from the efficient set

# Capital Allocation and the Separation Property

Now that we have the efficient frontier, we proceed to step two and introduce the risk-free asset. Figure 7.13 shows the efficient frontier plus three CALs representing various portfolios from the efficient set. As before, we ratchet up the CAL by selecting different portfolios until we reach portfolio  $P$ , which is the tangency point of a line from  $F$  to the efficient frontier. Portfolio  $P$  maximizes the Sharpe ratio, the slope of the CAL from  $F$  to portfolios on the efficient frontier. At this point our portfolio manager is done. Portfolio  $P$  is the optimal risky portfolio for the manager's clients.

There is yet another way to find the best risky portfolio. In this approach, we ask the spreadsheet program to maximize the Sharpe ratio of portfolio  $P$ . The reason this is worth mentioning is that we can skip the charting of the efficient frontier altogether and proceed directly to find the portfolio that produces the steepest CAL. The program maximizes the Sharpe ratio with no constraint on expected return or variance (we use only the constraint that portfolio weights must sum to 1.0). Examination of Figure 7.13 shows that the solution strategy is to find the portfolio producing the highest slope of the CAL (Sharpe ratio) regardless of expected return or standard deviation. Expected return and standard deviation are easily computed from the optimal portfolio weights applied to the input list in Equations 7.15 and 7.16. While this last approach does not produce the entire minimum-variance frontier, in many applications, only the optimal risky portfolio is necessary.


This is a good time to ponder our results and their implementation. The most striking conclusion is that a portfolio manager will offer the same risky portfolio,  $P$ , to all clients regardless of their degree of risk aversion. The client's risk aversion comes into play only in capital allocation, the selection of the desired point along the CAL. Thus, the only difference between clients' choices is that the more risk-averse client will invest more in the risk-free asset and less in the optimal risky portfolio.

This result is called a separation property; it tells us that the portfolio choice problem may be separated into two independent tasks. The first task, determination of the optimal risky portfolio, is purely technical. Given the manager's input list, the best risky portfolio is the same for all clients, regardless of risk aversion. However, the second task, capital allocation, depends on personal preference. Here the client is the decision maker.

The crucial point is that the optimal portfolio  $P$  that the manager offers is the same for all clients. Put another way, investors with varying degrees of risk aversion would be satisfied with a universe of only two mutual funds: a money market fund for risk-free investments and a mutual fund that holds the optimal risky portfolio,  $P$ , on the tangency point

A spreadsheet model featuring optimal risky portfolios is available in Connect or through your course instructor. It contains a template similar to the template developed in this section. The model can be used to find optimal mixes of securities for targeted levels of returns for both restricted and unrestricted portfolios. Graphs of the efficient frontier are generated for each set of inputs. The example available at our Web site applies the model to portfolios constructed from equity indexes (called WEBS securities) of several countries.

# Excel Questions

1. Find the optimal risky portfolio formed from the eight country index portfolios using the data provided in this box. What are the mean and variance of that portfolio's rate of return?
2. Does the optimal risky portfolio entail a short position in any index? If it does, redo Question 1, but now impose a constraint barring short positions. Explain why this constrained portfolio offers a less attractive risk-return trade-off than the unconstrained portfolio in Question 1.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td colspan="5">Efficient Frontier for World Equity Benchmark Securities (WEBS)</td><td></td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td></td><td>Mean</td><td>Standard</td><td></td><td></td><td></td></tr><tr><td>4</td><td>WEBS</td><td>Return</td><td>Deviation</td><td colspan="2">Country</td><td></td></tr><tr><td>5</td><td>EWD</td><td>15.5393</td><td>26.4868</td><td colspan="2">Sweden</td><td></td></tr><tr><td>6</td><td>EWH</td><td>6.3852</td><td>41.1475</td><td colspan="2">Hong Kong</td><td></td></tr><tr><td>7</td><td>EWI</td><td>26.5999</td><td>26.0514</td><td colspan="2">Italy</td><td></td></tr><tr><td>8</td><td>EWJ</td><td>1.4133</td><td>26.0709</td><td colspan="2">Japan</td><td></td></tr><tr><td>9</td><td>EWL</td><td>18.0745</td><td>21.6916</td><td colspan="2">Switzerland</td><td></td></tr><tr><td>10</td><td>EWP</td><td>18.6347</td><td>25.0779</td><td colspan="2">Spain</td><td></td></tr><tr><td>11</td><td>EWW</td><td>16.2243</td><td>38.7686</td><td colspan="2">Mexico</td><td></td></tr><tr><td>12</td><td>S&amp;P 500</td><td>17.2306</td><td>17.1944</td><td colspan="2">U.S.</td><td></td></tr></table> of the CAL and the efficient frontier. This result makes professional management more efficient and hence less costly. One management firm can serve any number of clients with relatively small incremental administrative costs.


In practice, however, different managers will estimate different input lists, thus deriving different efficient frontiers, and offer different "optimal" portfolios to their clients. The source of the disparity lies in the security analysis. It is worth mentioning here that the universal rule of GIGO (garbage in-garbage out) also applies to security analysis. If the quality of the security analysis is poor, a passive portfolio such as a market index fund will result in a higher Sharpe ratio than an active portfolio that uses low-quality security analysis to tilt portfolio weights toward seemingly favorable (mispriced) securities.

One particular input list that would lead to a nearly worthless estimate of the efficient frontier is based on recent security average returns. If sample average returns over recent years are used as proxies for the future return on the security, the noise in those estimates will make the resultant efficient frontier virtually useless for portfolio construction.

Consider a stock with an annual standard deviation of  $30\%$ . Even if one were to use a 10-year average to estimate its expected return (and 10 years is almost ancient history in the life of a corporation), the standard deviation of that estimate would still be  $30 / \sqrt{10} = 9.5\%$ . Given this level of imprecision, the chances that the sample average represents expected returns for the coming year are negligible.[11]

As we have seen, optimal risky portfolios for different clients also may vary because of portfolio constraints such as dividend-yield requirements, tax considerations, or other client preferences. Nevertheless, this analysis suggests that a limited number of portfolios may be sufficient to serve the demands of a wide range of investors. This is the theoretical basis of the mutual fund industry.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/ece8f2b9d419d3347641811e5aca01c2ba2bf30796fb6533bfb1256d84b46860.jpg)

# Concept Check 7.4

Suppose that two portfolio managers who work for competing investment management houses each employs a group of security analysts to prepare the input list for the Markowitz algorithm. When all is completed, it turns out that the efficient frontier obtained by portfolio manager  $A$  dominates that of manager  $B$ . By dominate, we mean that  $A$ 's optimal risky portfolio lies northwest of  $B$ 's. Hence, given a choice, investors will all prefer the risky portfolio that lies on the CAL of  $A$ .

a. What should be made of this outcome?
b. Should it be attributed to better security analysis by A's analysts?
c. Could it be that  $A$ 's computer program is superior?
d. Would you advise clients to periodically switch their money to the manager advertising the most northwesterly portfolio?

# The Power of Diversification

Section 7.1 introduced the concept of diversification and the limits to the benefits of diversification resulting from systematic risk. Given the tools we have developed, we can reconsider this intuition more rigorously and at the same time sharpen our insight regarding the power of diversification.

Equation 7.16, restated here, is the general formula for the variance of a portfolio composed of  $n$  risky assets:

$$
\sigma_ {p} ^ {2} = \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} w _ {i} w _ {j} \operatorname {C o v} \left(r _ {i}, r _ {j}\right) \tag {7.16}
$$

Consider now the naïve diversification strategy in which an equally weighted portfolio is constructed, meaning that  $w_{i} = 1 / n$  for each security. In this case, Equation 7.16 may be rewritten as follows, where we break out the terms for which  $i = j$  into a separate sum, noting that  $\mathrm{Cov}(r_i,r_i) = \sigma_i^2$ :

$$
\sigma_ {p} ^ {2} = \frac {1}{n} \sum_ {i = 1} ^ {n} \frac {1}{n} \sigma_ {i} ^ {2} + \sum_ {\substack {j = 1 \\ j \neq i}} ^ {n} \sum_ {i = 1} ^ {n} \frac {1}{n ^ {2}} \operatorname {Cov} \left(r _ {i}, r _ {j}\right) \tag{7.17}
$$

Notice that there are  $n$  variance terms and  $n(n - 1)$  covariance terms in Equation 7.17.

If we define the average variance and average covariance of the securities as

$$
\bar {\sigma} ^ {2} = \frac {1}{n} \sum_ {i = 1} ^ {n} \sigma_ {i} ^ {2} \tag {7.18}
$$

$$
\overline {{\operatorname {C o v}}} = \frac {1}{n (n - 1)} \sum_ {\substack {j = 1 \\ j \neq i}} ^ {n} \sum_ {i = 1} ^ {n} \operatorname {C o v} \left(r _ {i}, r _ {j}\right) \tag{7.19}
$$ we can express portfolio variance as


$$
\sigma_ {p} ^ {2} = \frac {1}{n} \bar {\sigma} ^ {2} + \frac {n - 1}{n} \overline {{\operatorname {C o v}}} \tag {7.20}
$$

Now examine the effect of diversification. When the average covariance among security returns is zero, as it would be if all risk were firm-specific, portfolio variance can be driven to zero. We see this from Equation 7.20. The second term on the right-hand side will be zero in this scenario, while the first term approaches zero as  $n$  becomes larger. Hence, when security returns are uncorrelated, the power of diversification to reduce portfolio risk is unlimited.

However, the more important case is the one in which economywide risk factors impart positive correlation among stock returns. In this case, as the portfolio becomes more highly diversified ( $n$  increases), portfolio variance remains positive. Although firm-specific risk, represented by the first term in Equation 7.20, approaches zero as diversification increases ( $n$  gets ever larger), the second term approaches  $\overline{\mathrm{Cov}}$ . [Note that  $(n - 1) / n$  approaches 1 for large  $n$ .] Thus, the risk of a highly diversified portfolio depends on the average covariance of the returns of the component securities, which in turn is a function of the importance of systematic factors in the economy.

To see further the fundamental relationship between systematic risk and security correlations, suppose for simplicity that all securities have a common standard deviation,  $\sigma$ , and all security pairs have a common correlation coefficient,  $\rho$ . Then the covariance between any pair of securities is  $\rho \sigma^2$ , and Equation 7.20 becomes

$$
\sigma_ {p} ^ {2} = \frac {1}{n} \sigma^ {2} + \frac {n - 1}{n} \rho \sigma^ {2} \tag {7.21}
$$

The effect of correlation is now explicit. When  $\rho = 0$ , we again obtain the insurance principle, where portfolio variance approaches zero as  $n$  becomes greater. For  $\rho > 0$ , however, portfolio variance remains positive. In fact, for  $\rho = 1$ , portfolio variance equals  $\sigma^2$  regardless of  $n$ , demonstrating that diversification is of no benefit: In the case of perfect correlation, all risk is systematic. More generally, as  $n$  becomes ever larger, Equation 7.21 shows that variance approaches  $\rho \sigma^2$ . We can think of this limit as the "systematic variance" of the security market.

Table 7.4 presents portfolio standard deviation as we include ever-greater numbers of securities in the portfolio for two cases,  $\rho = 0$  and  $\rho = .40$ . The table takes  $\sigma$  to be  $50\%$ .

<table><tr><td rowspan="2">Universe Size n</td><td rowspan="2">Portfolio Weights w = 1/n (\%)</td><td colspan="2">ρ = 0</td><td colspan="2">ρ = 0.40</td></tr><tr><td>Standard Deviation (\%)</td><td>Reduction in σ</td><td>Standard Deviation (\%)</td><td>Reduction in σ</td></tr><tr><td>1</td><td>100</td><td>50.00</td><td>14.64</td><td>50.00</td><td>8.17</td></tr><tr><td>2</td><td>50</td><td>35.36</td><td></td><td>41.83</td><td></td></tr><tr><td>5</td><td>20</td><td>22.36</td><td>1.95</td><td>36.06</td><td>0.70</td></tr><tr><td>6</td><td>16.67</td><td>20.41</td><td></td><td>35.36</td><td></td></tr><tr><td>10</td><td>10</td><td>15.81</td><td>0.73</td><td>33.91</td><td>0.20</td></tr><tr><td>11</td><td>9.09</td><td>15.08</td><td></td><td>33.71</td><td></td></tr><tr><td>20</td><td>5</td><td>11.18</td><td>0.27</td><td>32.79</td><td>0.06</td></tr><tr><td>21</td><td>4.76</td><td>10.91</td><td></td><td>32.73</td><td></td></tr><tr><td>100</td><td>1</td><td>5.00</td><td>0.02</td><td>31.86</td><td>0.00</td></tr><tr><td>101</td><td>0.99</td><td>4.98</td><td></td><td>31.86</td><td></td></tr></table>

# Table 7.4

Risk reduction of equally weighted portfolios in correlated and uncorrelated universes

As one would expect, portfolio risk is greater when  $\rho = .40$ . More surprising, perhaps, is that portfolio risk diminishes far less rapidly as  $n$  increases in the positive correlation case. The correlation among security returns limits the power of diversification.

For a 100-security portfolio (see the last two lines of Table 7.4), the standard deviation is  $5\%$  in the uncorrelated case—still significant compared to the potential of zero standard deviation. For  $\rho = .40$ , the standard deviation is high,  $31.86\%$ , yet it is very close to the undiversifiable systematic standard deviation in the infinite-sized security universe,  $\sqrt{\rho\sigma^2} = \sqrt{.4\times 50^2} = 31.62\%$ . At this point, further diversification is of little value.

Perhaps the most important insight from the exercise is this: When we hold diversified portfolios, the contribution to portfolio risk of a particular security will depend on the covariance of that security's return with those of other securities, and not on the security's variance. As we shall see in Chapter 9, this implies that equilibrium risk premiums will depend on covariances rather than total variability of returns.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/d1436a259a13f9363bc2ab43904eb4d42940e0b25dda03bb87bc876da82f4556.jpg)

# Concept Check 7.5

Suppose that the universe of available risky securities consists of a large number of stocks, identically distributed with  $E(r) = 15\%$ ,  $\sigma = 60\%$ , and a common correlation coefficient of  $\rho = .5$ .

a. What are the expected return and standard deviation of an equally weighted risky portfolio of 25 stocks?
b. What is the smallest number of stocks necessary to generate an efficient portfolio with a standard deviation equal to or smaller than  $43\%$ ?
c. What is the systematic risk in this security universe?
d. If T-bills are available and yield  $10\%$ , what is the slope of the CML? (Because of the symmetry assumed for all securities in the investment universe, the market index in this economy will be an equally weighted portfolio of all stocks.)

# Asset Allocation and Security Selection

As we have seen, the mathematical descriptions of security selection and asset allocation are identical. Both activities call for the construction of an efficient frontier and the choice of a particular portfolio from along that frontier. The determination of the optimal combination of securities proceeds in the same manner as the analysis of the optimal combination of asset classes. Why, then, does the investment community distinguish between asset allocation and security selection?

The answer probably lies in organizational efficiency. A large investment company is likely to invest both in domestic and international markets and in a broad set of asset classes, each of which requires specialized expertise. Hence, the management of each asset-class portfolio needs to be decentralized, and it becomes impossible to simultaneously optimize the entire organization's risky portfolio in one stage, although this would be prescribed as optimal on theoretical grounds.

Typical practice is, therefore, to optimize the security selection of each asset-class portfolio independently. At the same time, top management continually updates the asset allocation of the organization, adjusting the investment budget allotted to each asset-class portfolio.

# 7.5 Risk Pooling, Risk Sharing, and Time Diversification

So far, we have envisioned portfolio investment for "one period" but have been silent on how long that period may be. It might seem that we can take it to be of any length so that our analysis would apply equally to short-term as well as long-term investments. Yet many contend that investing over long periods of time provides "time diversification," that is, even though the market index may underperform bills in any particular year, the law of averages implies that because of its positive risk premium, the market will surely outperform bills over long investment periods. Therefore, they argue, longer-horizon investors can prudently allocate higher proportions of their portfolios to the market.

Is this a valid argument? It is not, but the question brings up subtle questions about how diversification works. In this last section, therefore, we reconsider the arguments underlying how diversification brings about risk reduction and then show why time diversification is based on a misinterpretation of the theory of portfolio diversification.

# Risk Sharing versus Risk Pooling

We begin by thinking about an insurance company selling many identical fire insurance policies. The payoff on any particular policy is a random amount,  \x , where the variance of  x  is  \sigma^2 . The company's total payout equals the sum of the payout on each individual policy,  \sum_{i=1}^{n} x_i . One might think that if the firm sold  n  uncorrelated policies, it would diversify away practically all risk. But this argument is not quite right.

When the risk of a fire across different policy holders is uncorrelated, the variance of total payouts is just the sum of the individual policy variances (because all covariances are zero). Therefore,

$$
\operatorname {V a r} \left(\sum_ {i = 1} ^ {n} x _ {i}\right) = n \sigma^ {2} \tag {7.22}
$$

In contrast, the variance of the average payoff across policies is

$$
\operatorname {V a r} \left(\frac {1}{n} \sum_ {i = 1} ^ {n} x _ {i}\right) = \frac {1}{n ^ {2}} \times n \sigma^ {2} = \frac {\sigma^ {2}}{n} \tag {7.23}
$$

The standard deviation of the average payoff is  $\sigma / \sqrt{n}$ . As the firm writes more and more policies,  $n$  increases and the uncertainty in the average payoff becomes progressively smaller, eventually approaching zero.

But is the insurance company's profit really getting safer? A few seconds of thought should convince you that this cannot possibly be the case. How can assuming exposure to an additional uncorrelated risky policy reduce risk? That would be like saying that a gambler who returns to the roulette table for one more spin is reducing his risk by diversifying across his many bets. His average payoff per bet may become more predictable, but the total amount won or lost must be more uncertain. Likewise, while the variance of the average insurance policy payoff decreases with the number of policies (Equation 7.23), the variance of the total payoff actually becomes more uncertain (Equation 7.22).

Thus, risk pooling, that is, pooling together many sources of independent risk sources, is only part of the business model of the insurance industry. An additional, essential part of the strategy is risk sharing.

To illustrate risk sharing, suppose that the insurance company sells  $n$  policies. Now the firm goes public and issues shares to investors. Let's say  $n$  investors each purchases one share of the company so that each owns  $1/n$  of the firm. As  $n$  increases, each investor's investment is unchanged: While there are more policies, that larger pool is shared with additional shareholders. With total payouts of  $\sum_{i=1}^{n} x_i$ , the variance of each investor's exposure is  $\operatorname{Var}\left(\frac{1}{n} \sum_{i=1}^{n} x_i\right) = \frac{1}{n^2} \times n \sigma^2 = \frac{\sigma^2}{n}$ , which does approach zero as  $n$  increases.

This calculation shows us that risk sharing is the essential complement to risk pooling. As more and more policies are pooled together, they are shared by ever-more investors, thus preventing any individual's total risk from growing with the number of policies. As more policies are added to the insured pool, each investor's exposure to any single policy shrinks. The law of averages does work—but you must make sure not to inadvertently scale up your bet as you "diversify" across many sources of risk.

This argument is also crucial for our understanding of diversification of stock portfolios. Diversifying a portfolio means dividing a fixed investment budget across many assets. We used this assumption throughout the chapter when we specified a fixed size of investor wealth and focused only on how to apportion that wealth across different assets. If a portfolio of  \$100,000 exclusively invested in Microsoft is to be diversified, that fixed\$ 100,000 must be divided between shares of Microsoft and shares of (let's say) Amazon as well as many other firms. An investor who currently has \$100,000 invested in Microsoft would not reduce total risk by adding another \$100,000 investment in Amazon. That would put more money at risk, just as selling more policies without spreading the exposure across more investors would increase, not decrease, the variance of insurance company returns. True diversification requires that the given investment budget be allocated across a large number of different assets, thus limiting the exposure to any particular security.

# Time Diversification

What does this analysis imply about time diversification and the risk of long-term investments? Think about a one-year investment in a stock index as analogous to a firm that sells one insurance policy. Extending your horizon to a second year is like selling a second policy. What does this do to your risk? Your average return per year may now be more predictable, but by putting your money at risk for an additional year, the uncertainty of your cumulative return surely increases. This is like an insurance company that engages in risk pooling, but not risk sharing. As it piles on more bets, risk must increase. It should be clear that longer horizons alone do not reduce risk.

True diversification means holding fixed the total funds put at risk, and then spreading exposure across multiple sources of uncertainty. In the context of extending the time horizon, this would require that a 2-year investor who puts funds at risk for two years instead of one would place only half as much in the stock market each year as a 1-year investor. This halves the exposure to each year's uncertain events, just as risk sharing with another investor would reduce each investor's exposure to each policy by half.

To illustrate the fallacy of time diversification, let's return to an example we encountered in Chapter 5, Table 5.6. We will assume that market returns are independent from year to year, with a mean annual return of  $5\%$  and standard deviation  $30\%$ . To simplify a bit, let's also assume the risk-free rate is zero, so the question of whether stocks outperform bills is equivalent to the question of whether the stock return is positive.

It also is helpful to use continuously compounded returns, which means that the total or cumulative return after  $n$  years is just the sum of the year-by-year continuously compounded returns, the variance of the cumulative return is  $n$  times the annual variance, and, therefore, the standard deviation is  $\sqrt{n}$  times the 1-year standard deviation. On the other hand, the standard deviation of the average return is  $1 / \sqrt{n}$  times the 1-year standard deviation. These are effectively the same relations that we found in Equations 7.22 and 7.23.

Table 7.5 shows the impact of investment horizon on risk. The mean return per year is .05 (line 1), so the expected total or cumulative return is .05 times the time horizon (line 2). The standard deviation of cumulative returns increases in proportion to the square root of the investment horizon, while the standard deviation of the average return falls with the square root of the horizon (lines 3 and 4). Because expected average return is fixed at  $5\%$  while standard deviation falls with the investment horizon, the probability that the average return will be positive increases as the time horizon extends. If we assume returns are normally distributed, we can calculate that probability exactly (line 5). The probability of a positive return approaches  $100\%$  as the investor's time horizon gets ever longer. This is the essence of the argument that time diversification reduces risk.

But probabilities do not tell the entire story. We also need to ask how bad performance can be in the event that it falls in the left tail of the distribution. Because the standard deviation of the total return increases with investment horizon (line 3), the magnitude of underperformance in the event of underperformance will be progressively worse. For example, the  $1\%$  VaR (value at risk) for the 1-year horizon entails a loss of  $47.7\%$  of invested funds, while the  $1\%$  VaR at a 30-year horizon is a catastrophic cumulative loss of  $90.2\%$  (line 7). Performance is even more extreme for the  $0.1\%$  VaR. Clearly, investment returns are not safer at long horizons, and time diversification is only an illusion.

<table><tr><td rowspan="2"></td><td colspan="4">Investment Horizon (years)</td></tr><tr><td>1</td><td>10</td><td>30</td><td>Comment</td></tr><tr><td>1. Mean of average return</td><td>0.050</td><td>0.050</td><td>0.050</td><td>= .05</td></tr><tr><td>2. Mean of total return</td><td>0.050</td><td>0.500</td><td>1.500</td><td>= .05*T</td></tr><tr><td>3. Standard deviation of total return</td><td>0.300</td><td>0.949</td><td>1.643</td><td>= .30√T</td></tr><tr><td>4. Standard deviation of average return</td><td>0.300</td><td>0.095</td><td>0.055</td><td>= .30/√T</td></tr><tr><td>5. Prob-return &gt; 0)</td><td>0.566</td><td>0.701</td><td>0.819</td><td>From normal distribution</td></tr><tr><td>6. 1\% VaR total return</td><td>-0.648</td><td>-1.707</td><td>-2.323</td><td>Continuously compounded cumulative return</td></tr><tr><td>7. Cumulative loss at 1\% VaR</td><td>0.477</td><td>0.819</td><td>0.902</td><td>= 1 - exp(cumulative return from line 6)</td></tr><tr><td>8. 0.1\% VaR total return</td><td>-0.877</td><td>-2.432</td><td>-3.578</td><td>Continuously compounded return</td></tr><tr><td>9. Cumulative loss at 0.1\% VaR</td><td>0.584</td><td>0.912</td><td>0.972</td><td>= 1 - exp(cumulative return from line 8)</td></tr></table>

Investment risk for different horizons

Table 7.5

# SUMMARY

1. The expected return of a portfolio is the weighted average of the component-security expected returns with investment proportions as weights.
2. The variance of a portfolio is the weighted sum of the elements of the covariance matrix using the products of the investment proportions as weights. Thus, the variance of each asset is weighted by the square of its investment proportion. The covariance of each pair of assets appears twice in the covariance matrix; thus, the portfolio variance includes twice each covariance weighted by the product of the investment proportions of each pair of assets.
3. Even if the covariances are positive, the portfolio standard deviation is less than the weighted average of the component standard deviations, as long as the assets are not perfectly positively correlated. Thus, portfolio diversification is beneficial as long as assets are less than perfectly correlated.
4. The greater an asset's covariance with the other assets in the portfolio, the more it contributes to portfolio variance. An asset that is perfectly negatively correlated with a portfolio can serve as a perfect hedge. That perfect hedge asset can reduce the portfolio variance to zero.
5. The efficient frontier shows the set of portfolios that maximize expected return for each level of portfolio risk. Rational investors will choose a portfolio on the efficient frontier.
6. A portfolio manager identifies the efficient frontier by first establishing estimates for asset expected returns and the covariance matrix. This input list is then fed into an optimization program that produces as outputs the investment proportions, expected returns, and standard deviations of the portfolios on the efficient frontier.
7. In practice, portfolio managers will arrive at different efficient portfolios because of differences in methods and quality of security analysis. Managers compete on the quality of their security analysis relative to their management fees.
8. If a risk-free asset is available and input lists are identical, all investors will choose the same portfolio on the efficient frontier of risky assets: the portfolio tangent to the CAL. All investors with identical input lists will hold an identical risky portfolio, differing only in how much each allocates to this optimal portfolio versus the risk-free asset. This result is characterized as the separation principle of portfolio construction.
9. Diversification is based on the allocation of a portfolio of fixed size across several assets, limiting the exposure to any one source of risk. Adding additional risky assets to a portfolio, thereby increasing the total amount invested, does not reduce dollar risk, even if it makes the rate of return more predictable. This is because that uncertainty is applied to a larger investment base. Nor does investing over longer horizons reduce risk. Increasing the investment horizon is analogous to investing in more assets. It increases total risk. Analogously, the key to the insurance industry is risk sharing—the spreading of many independent sources of risk across many investors, each of whom takes on only a small exposure to any particular source of risk.

# KEY TERMS diversification

insurance principle market risk
systematic risk nondiversifiable risk
unique risk firm-specific risk

nonsystematic risk diversifiable risk
minimum-variance portfolio portfolio opportunity set
optimal risky portfolio minimum-variance frontier

efficient frontier of risky assets input list
separation property risk pooling
risk sharing

# KEY EQUATIONS

Expected portfolio return:  $E(r_{p}) = \sum_{s=1}^{n} \Pr(s) r_{p}(s)$  [with  $n$  scenarios, indexed by  $s$ ]

The expected rate of return on a two-asset portfolio:  $E(r_{p}) = w_{D}E(r_{D}) + w_{E}E(r_{E})$

Variance of portfolio return:  $\operatorname{Var}(r_p) = \sum_{s=1}^{n} \operatorname*{Pr}(s)[r_p(s) - E(r_p)]^2$

Covariance between portfolio returns:  $\mathrm{Cov}(r_E, r_D) = \sum_{s=1}^{n} \mathrm{Pr}(s)[r_E(s) - E(r_E)][r_D(s) - E(r_D)]$

Covariance and correlation:  $\mathrm{Cov}(r_E, r_D) = \rho_{ED}\sigma_E\sigma_D$

The variance of the return on a two-asset portfolio:  $\sigma_p^2 = (w_D\sigma_D)^2 + (w_E\sigma_E)^2 + 2(w_D\sigma_D)(w_E\sigma_E)\rho_{DE}$

Variance of  $n$ -asset portfolio:  $\operatorname{Var}(r_p) = \sum_{i=1}^{n} \sum_{j=1}^{n} w_i w_j \operatorname{Cov}(r_i, r_j)$

The Sharpe ratio of a portfolio:  $S_{p} = \frac{E(r_{p}) - r_{f}}{\sigma_{p}}$

Sharpe ratio maximizing portfolio weights with two risky assets  $(D$  and  $E)$  and a risk-free asset:

$$
\begin{array}{l} w _ {D} = \frac {\left[ E \left(r _ {D}\right) - r _ {f} \right] \sigma_ {E} ^ {2} - \left[ E \left(r _ {E}\right) - r _ {f} \right] \sigma_ {D} \sigma_ {E} \rho_ {D E}}{\left[ E \left(r _ {D}\right) - r _ {f} \right] \sigma_ {E} ^ {2} + \left[ E \left(r _ {E}\right) - r _ {f} \right] \sigma_ {D} ^ {2} - \left[ E \left(r _ {D}\right) - r _ {f} + E \left(r _ {E}\right) - r _ {f} \right] \sigma_ {D} \sigma_ {E} \rho_ {D E}} \\ w _ {E} = 1 - w _ {D} \\ \end{array}
$$

Optimal capital allocation to the risky asset:  $y = \frac{E(r_p) - r_f}{A\sigma_p^2}$

1. Which of the following factors reflect pure market risk for a given corporation?

a. Increased short-term interest rates.
$b$ . Fire in the corporate warehouse.
c. Increased insurance costs.
d. Death of the CEO.
e. Increased labor costs.

2. When adding real estate to an asset allocation program that currently includes only stocks, bonds, and cash, which of the properties of real estate returns most affects portfolio risk? Explain.

a. Standard deviation.
$b$  Expected return.
$c$ . Covariance with returns of the other asset classes.

3. Which of the following statements about the minimum-variance portfolio of all risky securities is valid? (Assume short sales are allowed.) Explain.

$a$ . Its variance must be lower than those of all other securities or portfolios.
$b$ . Its expected return can be lower than the risk-free rate.
$c$ . It may be the optimal risky portfolio.
$d$ . It must include all individual securities.

The following data apply to Problems 4 through 10: A pension fund manager is considering three mutual funds. The first is a stock fund, the second is a long-term bond fund, and the third is a money market fund that provides a safe return of  $8\%$ . The characteristics of the risky funds are as follows:

<table><tr><td></td><td>Expected Return</td><td>Standard Deviation</td></tr><tr><td>Stock fund (S)</td><td>20\%</td><td>30\%</td></tr><tr><td>Bond fund (B)</td><td>12</td><td>15</td></tr></table>

The correlation between the fund returns is .10.

4. What are the investment proportions in the minimum-variance portfolio of the two risky funds, and what are the expected value and standard deviation of its rate of return?
5. Tabulate and draw the investment opportunity set of the two risky funds. Use investment proportions for the stock fund of  $0\%$  to  $100\%$  in increments of  $20\%$ .
6. Draw a tangent from the risk-free rate to the opportunity set. What does your graph show for the expected return and standard deviation of the optimal portfolio?

7. Solve numerically for the proportions of each asset and for the expected return and standard deviation of the optimal risky portfolio.
8. What is the Sharpe ratio of the best feasible CAL?
9. You require that your portfolio yield an expected return of  $14\%$ , and that it be efficient, that is, on the steepest feasible CAL.

a. What is the standard deviation of your portfolio?
$b$ . What is the proportion invested in the money market fund and each of the two risky funds?

10. If you were to use only the two risky funds and still require an expected return of  $14\%$ , what would be the investment proportions of your portfolio? Compare its standard deviation to that of the optimized portfolio in Problem 9. What do you conclude?

11. Stocks offer an expected rate of return of  $18\%$  with a standard deviation of  $22\%$ . Gold offers an expected return of  $10\%$  with a standard deviation of  $30\%$ .

$a$ . In light of the apparent inferiority of gold with respect to both mean return and volatility, would anyone hold gold? If so, demonstrate graphically why one would do so.
b. Given the data above, reanswer  $(a)$  with the additional assumption that the correlation coefficient between gold and stocks equals 1. Draw a graph illustrating why one would or would not hold gold in one's portfolio.
c. Could the set of assumptions in part  $(b)$  for expected returns, standard deviations, and correlation represent an equilibrium for the security market?

12. Suppose that there are many stocks in the security market and that the characteristics of stocks  $A$  and  $B$  are given as follows:

<table><tr><td>Stock</td><td>Expected Return</td><td>Standard Deviation</td></tr><tr><td>A</td><td>10\%</td><td>5\%</td></tr><tr><td>B</td><td>15</td><td>10</td></tr><tr><td></td><td>Correlation = -1</td><td></td></tr></table>

Suppose that it is possible to borrow at the risk-free rate,  $r_f$ . What must be the value of the risk-free rate? (Hint: Think about constructing a risk-free portfolio from stocks  $A$  and  $B$ .)

13. True or false: Assume that expected returns and standard deviations for all securities (including the risk-free rate for borrowing and lending) are known. In this case, all investors will have the same optimal risky portfolio.
14. True or false: The standard deviation of the portfolio is always equal to the weighted average of the standard deviations of the assets in the portfolio.
15. Suppose you have a project that has a .7 chance of doubling your investment in a year and a .3 chance of halving your investment in a year. What is the standard deviation of the rate of return on this investment?
16. Suppose that you have \$1 million and the following two opportunities from which to construct a portfolio: a. Risk-free asset earning  $12\%$  per year.

b. Risky asset with expected return of  $30\%$  per year and standard deviation of  $40\%$ .

If you construct a portfolio with a standard deviation of  $30\%$ , what is its expected rate of return?

The following data are for Problems 17 through 19: The correlation coefficients between several pairs of stocks are as follows:  $\mathrm{Corr}(A, B) = .85$ ;  $\mathrm{Corr}(A, C) = .60$ ;  $\mathrm{Corr}(A, D) = .45$ . Each stock has an expected return of  $8\%$  and a standard deviation of  $20\%$ .

17. If your entire portfolio is now composed of stock  $A$  and you can add some of only one stock to your portfolio, would you choose (explain your choice): a. B

b. C c.  $D$
d. Need more data

18. Would the answer to Problem 17 change for more risk-averse or risk-tolerant investors? Explain.
19. Suppose that in addition to investing in one more stock you can invest in T-bills as well. Would you change your answers to Problems 17 and 18 if the T-bill rate is  $8\%$

The following table of compound annual returns by decade applies to Problems 20 and 21.

<table><tr><td></td><td>1930s</td><td>1940s</td><td>1950s</td><td>1960s</td><td>1970s</td><td>1980s</td><td>1990s</td><td>2000s</td><td>2010s</td></tr><tr><td>Small-company stocks</td><td>7.28\%</td><td>20.63\%</td><td>19.01\%</td><td>13.72\%</td><td>8.75\%</td><td>12.46\%</td><td>13.84\%</td><td>5.93\%</td><td>12.19\%</td></tr><tr><td>Large-company stocks</td><td>-1.25</td><td>9.11</td><td>19.41</td><td>7.84</td><td>5.90</td><td>17.60</td><td>18.20</td><td>1.21</td><td>14.49</td></tr><tr><td>Long-term gov’t bonds</td><td>4.60</td><td>3.59</td><td>0.25</td><td>1.14</td><td>6.63</td><td>11.50</td><td>8.60</td><td>8.29</td><td>9.14</td></tr><tr><td>Treasury bills</td><td>0.30</td><td>0.37</td><td>1.87</td><td>3.89</td><td>6.29</td><td>9.00</td><td>5.02</td><td>2.75</td><td>0.54</td></tr><tr><td>Inflation</td><td>-2.04</td><td>5.36</td><td>2.22</td><td>2.52</td><td>7.36</td><td>5.10</td><td>2.93</td><td>2.53</td><td>1.74</td></tr></table>

20. Input the data from the table into a spreadsheet. Compute the serial correlation in decade returns for each asset class and for inflation. Also find the correlation between the returns of various asset classes. What do the data indicate?
21. Convert the asset returns by decade presented in the table into real rates. Repeat Problem 20 for the real rates of return.

The following information applies to Problems 22 through 27: Greta has risk aversion of  $A = 3$  and a 1-year investment horizon. She is pondering two portfolios, the S&P 500 and a hedge fund, as well as a number of 1-year strategies. (All rates are annual and continuously compounded.) The S&P 500 risk premium is estimated at  $5\%$  per year, with a standard deviation of  $20\%$ . The hedge fund risk premium is estimated at  $10\%$  with a standard deviation of  $35\%$ . The returns on both of these portfolios in any particular year are uncorrelated with its own returns in other years. They are also uncorrelated with the returns of the other portfolio in other years. The hedge fund claims the correlation coefficient between the annual return on the S&P 500 and the hedge fund return in the same year is zero, but Greta is not fully convinced by this claim.

22. Compute the estimated annual risk premiums, standard deviations, and Sharpe ratios for the two portfolios.
23. Assuming the correlation between the annual returns on the two portfolios is indeed zero, what would be the optimal asset allocation?
24. What should be Greta's capital allocation?
25. If the correlation coefficient between annual portfolio returns is actually .3, what is the covariance between the returns?
26. Repeat Problem 23 using an annual correlation of .3.
27. Repeat Problem 24 using an annual correlation of .3.

Excel

Please visit us at www.mhhe.com/Bodie13e


Excel

Please visit us at www.mhhe.com/Bodie13e


The following data apply to CFA Problems 1 through 3: Hennessy & Associates manages a 30 million equity portfolio for the multimanager Wilstead Pension Fund. Jason Jones, financial vice president of Wilstead, noted that Hennessy had rather consistently achieved the best record among Wilstead's six equity managers. Performance of the Hennessy portfolio had been clearly superior to that of the S&P 500 in four of the past five years. In the one less-favorable year, the shortfall was trivial.

Hennessy is a "bottom-up" manager. The firm largely avoids any attempt to "time the market." It also focuses on selection of individual stocks, rather than the weighting of favored industries.

There is no apparent conformity of style among Wilstead's six equity managers. The five managers, other than Hennessy, manage portfolios aggregating 250 million made up of more than 150 individual issues.

Jones is convinced that Hennessy is able to apply superior skill to stock selection, but the favorable returns are limited by the high degree of diversification in the portfolio. Over the years, the portfolio generally held about 40 stocks, with about  $2\% -3\%$  of total funds committed to each issue. The reason Hennessy seemed to do well most years was that the firm was able to identify each year about 10 issues that registered particularly large gains.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/540d82509aac63ef86c74b84a185294121483981a770c242fdccb8e107f8f573.jpg)


On the basis of this overview, Jones outlined the following plan to the Wilstead pension committee:

Let's tell Hennessy to limit the portfolio to no more than 20 stocks. Hennessy will double the commitments to the stocks that it really favors, and eliminate the remainder. Except for this one new restriction, Hennessy should be free to manage the portfolio exactly as before.

All the members of the pension committee generally supported Jones's proposal because all agreed that Hennessy had seemed to demonstrate superior skill in selecting stocks. Yet the proposal was a considerable departure from previous practice, and several committee members raised questions. Respond to each of the following questions.

1.  $a$ . Will the limitation to 20 stocks likely increase or decrease the risk of the portfolio? Explain.
$b$ . Is there any way Hennessy could reduce the number of issues from 40 to 20 without significantly affecting risk? Explain.
2. One committee member was particularly enthusiastic concerning Jones's proposal. He suggested that Hennessy's performance might benefit further from reduction in the number of issues to 10. If the reduction to 20 could be expected to be advantageous, explain why reduction to 10 might be less likely to be advantageous. (Assume that Wilstead will evaluate the Hennessy portfolio independently of the other portfolios in the fund.)
3. Another committee member suggested that, rather than evaluate each managed portfolio independently of other portfolios, it might be better to consider the effects of a change in the Hennessy portfolio on the total fund. Explain how this broader point of view could affect the committee decision to limit the holdings in the Hennessy portfolio to either 10 or 20 issues.
4. Which one of the following portfolios cannot lie on the efficient frontier as described by Markowitz?

<table><tr><td></td><td>Portfolio</td><td>Expected Return (\%)</td><td>Standard Deviation (\%)</td></tr><tr><td>a.</td><td>W</td><td>15</td><td>36</td></tr><tr><td>b.</td><td>X</td><td>12</td><td>15</td></tr><tr><td>c.</td><td>Z</td><td>5</td><td>7</td></tr><tr><td>d.</td><td>Y</td><td>9</td><td>21</td></tr></table>

5. Which statement about portfolio diversification is correct?

$a$ . Efficient diversification can reduce or eliminate systematic risk.
b. Diversification reduces the portfolio's expected return because it reduces a portfolio's total risk.
c. As more securities are added to a portfolio, total risk typically can be expected to fall at a decreasing rate.
$d$ . The risk-reducing benefits of diversification do not occur meaningfully until at least 30 individual securities are included in the portfolio.

6. The measure of risk for a security held in a diversified portfolio is:

$a$  Specific risk.
$b$  Standard deviation of returns.
c. Reinvestment risk.
d. Covariance.

7. Portfolio theory as described by Markowitz is most concerned with:

$a$ . The elimination of systematic risk.
$b$ . The effect of diversification on portfolio risk.
$c$ . The identification of unsystematic risk.
$d$ . Active portfolio management to enhance return.

8. Assume that a risk-averse investor owning stock in Miller Corporation decides to add the stock of either Mac or Green Corporation to her portfolio. All three stocks offer the same expected return and total variability. The correlation of return between Miller and Mac is -.05 and between Miller and Green is  $+.05$ . Portfolio risk is expected to: a. Decline more when the investor buys Mac.

$b$ . Decline more when the investor buys Green.
$c$ . Increase when either Mac or Green is bought.
$d$ . Decline or increase, depending on other factors.

9. Stocks  $A$ ,  $B$ , and  $C$  have the same expected return and standard deviation. The following table shows the correlations between the returns on these stocks.

<table><tr><td></td><td>Stock A</td><td>Stock B</td><td>Stock C</td></tr><tr><td>Stock A</td><td>+1.0</td><td></td><td></td></tr><tr><td>Stock B</td><td>+0.9</td><td>+1.0</td><td></td></tr><tr><td>Stock C</td><td>+0.1</td><td>-0.4</td><td>+1.0</td></tr></table>

Given these correlations, the portfolio constructed from these stocks having the lowest risk is a portfolio:

$a$  .Equally invested in stocks  $A$  and  $B$
$b$  .Equally invested in stocks  $A$  and  $C$
$c$  .Equally invested in stocks  $B$  and  $C$
$d$ . Totally invested in stock  $C$ .

10. Statistics for three stocks,  $A$ ,  $B$ , and  $C$ , are shown in the following tables.

Standard Deviations of Returns

<table><tr><td>Stock:</td><td>A</td><td>B</td><td>C</td></tr><tr><td>Standard deviation (\%):</td><td>40</td><td>20</td><td>40</td></tr></table>

Correlations of Returns

<table><tr><td>Stock</td><td>A</td><td>B</td><td>C</td></tr><tr><td>A</td><td>1.00</td><td>0.90</td><td>0.50</td></tr><tr><td>B</td><td></td><td>1.00</td><td>0.10</td></tr><tr><td>C</td><td></td><td></td><td>1.00</td></tr></table>

Using only the information provided in the tables, and given a choice between a portfolio made up of equal amounts of stocks  $A$  and  $B$  or a portfolio made up of equal amounts of stocks  $B$  and  $C$ , which portfolio would you recommend? Justify your choice.

11. George Stephenson's current portfolio of 2 million is invested as follows:

Summary of Stephenson's Current Portfolio

<table><tr><td></td><td>Value</td><td>Percent of Total</td><td>Expected Annual Return</td><td>Annual Standard Deviation</td></tr><tr><td>Short-term bonds</td><td>\$ 200,000</td><td>10\%</td><td>4.6\%</td><td>1.6\%</td></tr><tr><td>Domestic large-cap equities</td><td>600,000</td><td>30</td><td>12.4</td><td>19.5</td></tr><tr><td>Domestic small-cap equities</td><td>1,200,000</td><td>60</td><td>16.0</td><td>29.9</td></tr><tr><td>Total portfolio</td><td>\$2,000,000</td><td>100\%</td><td>13.8</td><td>23.1</td></tr></table>

Stephenson soon expects to receive an additional 2 million and plans to invest the entire amount in an index fund that best complements the current portfolio. Stephanie Coppa, CFA, is evaluating the four index funds shown in the following table for their ability to produce a portfolio that will meet two criteria relative to the current portfolio: (1) maintain or enhance expected return and (2) maintain or reduce volatility.

Each fund is invested in an asset class that is not substantially represented in the current portfolio.

Index Fund Characteristics

<table><tr><td>Index Fund</td><td>Expected Annual Return</td><td>Expected Annual Standard Deviation</td><td>Correlation of Returns with Current Portfolio</td></tr><tr><td>Fund A</td><td>15\%</td><td>25\%</td><td>+0.80</td></tr><tr><td>Fund B</td><td>11</td><td>22</td><td>+0.60</td></tr><tr><td>Fund C</td><td>16</td><td>25</td><td>+0.90</td></tr><tr><td>Fund D</td><td>14</td><td>22</td><td>+0.65</td></tr></table>

Which fund should Coppa recommend to Stephenson? Justify your choice by describing how your chosen fund best meets both of Stephenson's criteria. No calculations are required.

12. Abigail Grace has a \$900,000 fully diversified portfolio. She subsequently inherits ABC Company common stock worth \$100,000. Her financial adviser provided her with the following estimates:

Risk and Return Characteristics

<table><tr><td></td><td>Expected Monthly Returns</td><td>Standard Deviation of Monthly Returns</td></tr><tr><td>Original Portfolio</td><td>0.67\%</td><td>2.37\%</td></tr><tr><td>ABC Company</td><td>1.25</td><td>2.95</td></tr></table>

The correlation coefficient of ABC stock returns with the original portfolio returns is .40.

$a$ . The inheritance changes Grace's overall portfolio, and she is deciding whether to keep the ABC stock. Assuming Grace keeps the ABC stock, calculate the: i. Expected return of her new portfolio, which includes the ABC stock.

ii. Covariance of ABC stock returns with the original portfolio returns.
iii. Standard deviation of her new portfolio, which includes the ABC stock.

b. If Grace sells the ABC stock, she will invest the proceeds in risk-free government securities yielding  $42\%$  monthly. Assuming Grace sells the ABC stock and replaces it with the government securities, calculate the i. Expected return of her new portfolio, which includes the government securities.

ii. Covariance of the government security returns with the original portfolio returns.
iii. Standard deviation of her new portfolio, which includes the government securities.

c. Determine whether the systematic risk of her new portfolio, which includes the government securities, will be higher or lower than that of her original portfolio.
d. On the basis of conversations with her husband, Grace is considering selling the  \$100,000 of ABC stock and acquiring\$ 100,000 of XYZ Company common stock instead. XYZ stock has the same expected return and standard deviation as ABC stock. Her husband comments, "It doesn't matter whether you keep all of the ABC stock or replace it with 100,000 of XYZ stock." State whether her husband's comment is correct or incorrect. Justify your response.
e. In a recent discussion with her financial adviser, Grace commented, "If I just don't lose money in my portfolio, I will be satisfied." She went on to say, "I am more afraid of losing money than I am concerned about achieving high returns."

i. Describe one weakness of using standard deviation of returns as a risk measure for Grace.
ii. Identify an alternate risk measure that is more appropriate under the circumstances.

13. Dudley Trudy, CFA, recently met with one of his clients. Trudy typically invests in a master list of 30 equities drawn from several industries. As the meeting concluded, the client made the following statement: "I trust your stock-picking ability and believe that you should invest my funds in your five best ideas. Why invest in 30 companies when you obviously have stronger opinions on a few of them?" Trudy plans to respond to his client within the context of modern portfolio theory.


a. Contrast the concepts of systematic risk and firm-specific risk, and give an example of each type of risk.
b. Critique the client's suggestion. Discuss how both systematic and firm-specific risk change as the number of securities in a portfolio is increased.

# E-INVESTMENTS EXERCISES

Go to the www.investopedia.com/articles/ basics/03/050203.asp Web site to learn more about diversification, the factors that influence investors' risk preferences, and the types of investments that fit into each of the risk categories. Then check out www.investopedia.com/managing wealth/achieve-optimal-asset-allocation for asset allocation guidelines for various types of portfolios from conservative to very aggressive. What do you conclude about your own risk preferences and the best portfolio type for you? What would you expect to happen to your attitude toward risk as you get older? How might your portfolio composition change?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/48378221561dc50c51ec97595625637b4f97d920ba85cadf153e5c64d5370f43.jpg)

# SOLUTIONS TO CONCEPT CHECKS

1.  $a$ . The first term will be  $w_{D} \times w_{D} \times \sigma_{D}^{2}$  because this is the element in the top corner of the matrix  $(\sigma_{D}^{2})$  times the term on the column border  $(w_{D})$  times the term on the row border  $(w_{D})$ . Applying this rule to each term of the covariance matrix results in the sum

$w_{D}^{2}\sigma_{D}^{2} + w_{D}w_{E}\operatorname{Cov}(r_{E},r_{D}) + w_{E}w_{D}\operatorname{Cov}(r_{D},r_{E}) + w_{E}^{2}\sigma_{E}^{2}$ , which is the same as Equation 7.3 because  $\operatorname{Cov}(r_E,r_D) = \operatorname{Cov}(r_D,r_E)$ .

b. Putting weights of .20, .30, and .50 respectively on the border of the covariance matrix, we find portfolio variance as

$$
\begin{array}{l} \operatorname {V a r} \left(r _ {p}\right) = . 2 0 \times . 2 0 \times 2 6. 2 5 + . 2 0 \times . 3 0 \times 8. 9 1 + . 2 0 \times . 5 0 \times 5. 5 2 \\ + . 3 0 \times . 2 0 \times 8. 9 1 + . 3 0 \times . 3 0 \times 1 5. 9 8 + . 3 0 \times . 5 0 \times 1 2. 1 6 \\ + . 5 0 \times . 2 0 \times 5. 5 2 + . 5 0 \times . 3 0 \times 1 2. 1 6 + . 5 0 \times . 5 0 \times 9. 3 8 \\ = 1 0. 6 5 \\ \end{array}
$$

2. The parameters of the opportunity set are  $E(r_{D}) = 8\%$ ,  $E(r_{E}) = 13\%$ ,  $\sigma_{D} = 12\%$ ,  $\sigma_{E} = 20\%$ , and  $\rho(D, E) = .25$ . From the standard deviations and the correlation coefficient, we generate the covariance matrix:

<table><tr><td>Fund</td><td>D</td><td>E</td></tr><tr><td>D</td><td>144</td><td>60</td></tr><tr><td>E</td><td>60</td><td>400</td></tr></table>

The global minimum-variance portfolio is constructed so that

$$
\begin{array}{l} w _ {D} = \frac {\sigma_ {E} ^ {2} - \operatorname {C o v} \left(r _ {D} , r _ {E}\right)}{\sigma_ {D} ^ {2} + \sigma_ {E} ^ {2} - 2 \operatorname {C o v} \left(r _ {D} , r _ {E}\right)} \\ = \frac {4 0 0 - 6 0}{(1 4 4 + 4 0 0) - (2 \times 6 0)} = . 8 0 1 9 \\ \end{array}
$$

$$ w _ {E} = 1 - w _ {D} = . 1 9 8 1
$$

Its expected return and standard deviation are

$$
\begin{array}{l} E \left(r _ {P}\right) = (. 8 0 1 9 \times 8) + (. 1 9 8 1 \times 1 3) = 8. 9 9 \\ \sigma_ {P} = \left[ w _ {D} ^ {2} \sigma_ {D} ^ {2} + w _ {E} ^ {2} \sigma_ {E} ^ {2} + 2 w _ {D} w _ {E} \operatorname {C o v} \left(r _ {D}, r _ {E}\right) \right] ^ {1 / 2} \\ = \left[ (. 8 0 1 9 ^ {2} \times 1 4 4) + (. 1 9 8 1 ^ {2} \times 4 0 0) + (2 \times . 8 0 1 9 \times . 1 9 8 1 \times 6 0) \right] ^ {1 / 2} \\ = 11.29 \% \\ \end{array}
$$

For the other points, we increase  $w_{D}$  from .10 to .90 in increments of .10; accordingly,  $w_{E}$  ranges from .90 to .10 in the same increments. We substitute these portfolio proportions in the formulas for expected return and standard deviation. Note that when  $w_{E} = 1.0$ , the portfolio parameters equal those of the stock fund; when  $w_{D} = 1$ , the portfolio parameters equal those of the debt fund.

We thus generate the following table:

<table><tr><td>wE</td><td>wD</td><td>E(r)</td><td>σ</td></tr><tr><td>0.0</td><td>1.0</td><td>8.0</td><td>12.00</td></tr><tr><td>0.1</td><td>0.9</td><td>8.5</td><td>11.46</td></tr><tr><td>0.2</td><td>0.8</td><td>9.0</td><td>11.29</td></tr><tr><td>0.3</td><td>0.7</td><td>9.5</td><td>11.48</td></tr><tr><td>0.4</td><td>0.6</td><td>10.0</td><td>12.03</td></tr><tr><td>0.5</td><td>0.5</td><td>10.5</td><td>12.88</td></tr><tr><td>0.6</td><td>0.4</td><td>11.0</td><td>13.99</td></tr><tr><td>0.7</td><td>0.3</td><td>11.5</td><td>15.30</td></tr><tr><td>0.8</td><td>0.2</td><td>12.0</td><td>16.76</td></tr><tr><td>0.9</td><td>0.1</td><td>12.5</td><td>18.34</td></tr><tr><td>1.0</td><td>0.0</td><td>13.0</td><td>20.00</td></tr><tr><td>0.1981</td><td>0.8019</td><td>8.99</td><td>11.29 minimum variance portfolio</td></tr></table>

You can now draw your graph.

3.  $a$ . The computations of the opportunity set of the stock and risky bond funds are like those of Question 2 and will not be shown here. You should perform these computations, however, in order to give a graphical solution to part  $a$ . Note that the covariance between the funds is

$$
\begin{array}{l} \operatorname {C o v} \left(r _ {A}, r _ {B}\right) = \rho (A, B) \times \sigma_ {A} \times \sigma_ {B} \\ = -. 2 \times 2 0 \times 6 0 = - 2 4 0 \\ \end{array}
$$

$b$ . The proportions in the optimal risky portfolio are given by

$$
\begin{array}{l} w _ {A} = \frac {(1 0 - 5) 6 0 ^ {2} - (3 0 - 5) (- 2 4 0)}{(1 0 - 5) 6 0 ^ {2} + (3 0 - 5) 2 0 ^ {2} - (1 0 - 5 + 3 0 - 5) (- 2 4 0)} \\ = . 6 8 1 8 \\ \end{array}
$$

$$ w _ {B} = 1 - w _ {A} = . 3 1 8 2
$$

The expected return and standard deviation of the optimal risky portfolio are

$$
\begin{array}{l} E \left(r _ {P}\right) = (. 6 8 1 8 \times 1 0) + (. 3 1 8 2 \times 3 0) = 1 6. 3 6 \\ \sigma_ {P} = \left\{\left(. 6 8 1 8 ^ {2} \times 2 0 ^ {2}\right) + \left(. 3 1 8 2 ^ {2} \times 6 0 ^ {2}\right) + \left[ 2 \times . 6 8 1 8 \times . 3 1 8 2 (- 2 4 0) \right] \right\} ^ {1 / 2} \\ = 21.13 \% \\ \end{array}
$$

Note that portfolio  $P$  is not the global minimum-variance portfolio. The proportions of the latter are given by

$$
\begin{array}{l} w _ {A} = \frac {6 0 ^ {2} - (- 2 4 0)}{6 0 ^ {2} + 2 0 ^ {2} - 2 (- 2 4 0)} = . 8 5 7 1 \\ w _ {B} = 1 - w _ {A} = . 1 4 2 9 \\ \end{array}
$$

With these proportions, the standard deviation of the minimum-variance portfolio is

$$
\begin{array}{l} \sigma (\min ) = (. 8 5 7 1 ^ {2} \times 2 0 ^ {2}) + (. 1 4 2 9 ^ {2} \times 6 0 ^ {2}) + [ 2 \times . 8 5 7 1 \times . 1 4 2 9 \times (- 2 4 0) ] ^ {1 / 2} \\ = 17.75 \% \\ \end{array}
$$ which is less than that of the optimal risky portfolio.


c. The CAL is the line from the risk-free rate through the optimal risky portfolio. This line represents all efficient portfolios that combine T-bills with the optimal risky portfolio. The slope of the CAL is

$$
S = \frac {E \left(r _ {P}\right) - r _ {f}}{\sigma_ {P}} = \frac {1 6 . 3 6 - 5}{2 1 . 1 3} = . 5 3 7 6
$$

$d$ . Given a degree of risk aversion,  $A$ , an investor will choose the following proportion,  $y$ , in the optimal risky portfolio (remember to express returns as decimals when using  $A$ ):

$$ y = \frac {E \left(r _ {P}\right) - r _ {f}}{A \sigma_ {P} ^ {2}} = \frac {. 1 6 3 6 -. 0 5}{5 \times . 2 1 1 3 ^ {2}} = . 5 0 8 9
$$

This means that the optimal risky portfolio, with the given data, is attractive enough for an investor with  $A = 5$  to invest  $50.89\%$  of total wealth in it. Because stock  $A$  makes up  $68.18\%$  of the risky portfolio and stock  $B$  makes up  $31.82\%$ , the investment proportions for this investor are

$$
\begin{array}{l} \text{Stock A:} .5089 \times 68.18 = 34.70 \% \\ \text{Stock} B: .5089 \times 31.82 = 16.19 \% \\ \text {Total} \quad 50.89 \% \\ \end{array}
$$

4. Efficient frontiers derived by portfolio managers depend on forecasts of the rates of return on various securities and estimates of risk, that is, the covariance matrix. The forecasts themselves do not control outcomes. Thus, preferring managers with rosier forecasts (northwesterly frontiers) is tantamount to rewarding the bearers of good news and punishing the bearers of bad news. What we should do is reward bearers of accurate news. Thus, if you get a glimpse of the frontiers (forecasts) of portfolio managers on a regular basis, what you want to do is develop the track record of their forecasting accuracy and steer your advisees toward the more accurate forecaster. Their portfolio choices will, in the long run, outperform the field.

5. The parameters are  $E(r) = 15\%$ ,  $\sigma = 60\%$ , and the correlation between any pair of stocks is  $\rho = .5$ .

$a$ . The portfolio expected return is invariant to the size of the portfolio because all stocks have identical expected returns. The standard deviation of a portfolio with  $n = 25$  stocks is

$$
\begin{array}{l} \sigma_ {P} = \left[ \sigma^ {2} / n + \rho \times \sigma^ {2} (n - 1) / n \right] ^ {1 / 2} \\ = [ 60 ^ {2} / 25 + . 5 \times 60 ^ {2} \times 24 / 25 ] ^ {1 / 2} = 43.27 \% \\ \end{array}
$$

$b$ . Because the stocks are identical, efficient portfolios are equally weighted. To obtain a standard deviation of  $43\%$ , we need to solve for  $n$ :

$$
\begin{array}{l} 4 3 ^ {2} = \frac {6 0 ^ {2}}{n} +. 5 \times \frac {6 0 ^ {2} (n - 1)}{n} \\ 1, 8 4 9 n = 3, 6 0 0 + 1, 8 0 0 n - 1, 8 0 0 \\ n = \frac {1 , 8 0 0}{4 9} = 3 6. 7 3 \\ \end{array}
$$

Thus, we need 37 stocks and will come in with volatility slightly under the target.

$c$ . As  $n$  gets very large, the variance of an efficient (equally weighted) portfolio diminishes, leaving only the variance that comes from the covariances among stocks. Therefore,

$$
\text{Systematic standard deviation} = \sqrt {\rho \times \sigma^ {2}} = \sqrt {. 5 \times 60 ^ {2}} = 42.43 \%
$$

Note that with 25 stocks we came within .84\% of the systematic risk, that is, the standard deviation of a portfolio of 25 stocks is only .84\% higher than 42.43\%. With 37 stocks, the standard deviation is 43.01\%, which is only .58\% greater than 42.43\%.

$d$ . If the risk-free rate is  $10\%$ , then the risk premium on any size portfolio is  $15 - 10 = 5\%$ . The standard deviation of a well-diversified portfolio is (practically)  $42.43\%$ ; hence, the slope of the CAL is

$$
S = 5 / 4 2. 4 3 = . 1 1 7 8
$$

# APPENDIX A: A Spreadsheet Model for Efficient Diversification

Several software packages can be used to generate the efficient frontier. We will demonstrate using Microsoft Excel. Excel is far from the best program for this purpose and is limited in the number of assets it can handle, but using it to work through a simple portfolio optimization can illustrate the approach used in more sophisticated "black-box" programs. You will find that even in Excel, the computation of the efficient frontier is not difficult.

We apply the Markowitz portfolio optimization program to the problem of international diversification. We take the perspective of a portfolio manager serving U.S. clients, who wishes to construct for the next year an optimal risky portfolio of large stocks in the U.S. and six developed capital markets (Japan, Germany, the U.K., France, Canada, and Australia). First, we describe the input list: forecasts of risk premiums and the covariance matrix. Next, we describe Excel's Solver, and finally we show the solution to the manager's problem.

# The Input List

The manager needs to compile an input list of expected returns, variances, and covariances. Spreadsheet 7A.1 shows the calculations.

Panel A lays out the expected excess return for each country index. While these estimates may be guided by historical experience, as we discussed in Chapter 5, using simple historical averages would yield extremely noisy estimates of expected risk premiums because returns are so volatile. Historical average returns fluctuate enormously across subperiods, making them highly unreliable estimators. Here, we simply assume the manager has arrived at some reasonable estimates of each country's risk premium through scenario analysis informed by historical experience. These values are presented in column B.

Panel B is the bordered covariance matrix corresponding to Table 7.2. The covariances in this table might reasonably be estimated from a sample of historical returns, as empirically based variance and covariance estimates are far more precise than corresponding estimates of mean returns. It would be common to estimate Panel B using perhaps five years of monthly returns. The Excel function COVARIANCE would compute the covariance between the time series of returns for any pair of countries. We assume the manager has already collected historical returns on each index, plugged each pair of returns into the COVARIANCE function, and obtained the entries that appear in Panel B. The elements on the diagonal of the covariance matrix in Panel B are the variances of each country index.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td></tr><tr><td>1</td><td colspan="3">Efficient Frontier Spreadsheet</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>Panel A</td><td colspan="6">Expected excess returns (risk premiums) of each country index</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>U.S.</td><td>0.060</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>U.K.</td><td>0.053</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>France</td><td>0.070</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>Germany</td><td>0.080</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>Australia</td><td>0.058</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>Japan</td><td>0.045</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td>Canada</td><td>0.059</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

<table><tr><td>12</td><td colspan="8"></td></tr><tr><td>13</td><td>Panel B</td><td colspan="7">Bordered Covariance Matrix</td></tr><tr><td>14</td><td colspan="8"></td></tr><tr><td>15</td><td colspan="8">Portfolio weights → 0.6112 0.8778 -0.2140 -0.5097 0.0695 0.2055 -0.0402</td></tr><tr><td>16</td><td></td><td></td><td>U.S.</td><td>U.K.</td><td>France</td><td>Germany</td><td>Australia</td><td>Japan</td></tr><tr><td>17</td><td>0.6112</td><td>U.S.</td><td>0.0224</td><td>0.0184</td><td>0.0250</td><td>0.0288</td><td>0.0195</td><td>0.0121</td></tr><tr><td>18</td><td>0.8778</td><td>U.K.</td><td>0.0184</td><td>0.0223</td><td>0.0275</td><td>0.0299</td><td>0.0204</td><td>0.0124</td></tr><tr><td>19</td><td>-0.2140</td><td>France</td><td>0.0250</td><td>0.0275</td><td>0.0403</td><td>0.0438</td><td>0.0259</td><td>0.0177</td></tr><tr><td>20</td><td>-0.5097</td><td>Germany</td><td>0.0288</td><td>0.0299</td><td>0.0438</td><td>0.0515</td><td>0.0301</td><td>0.0183</td></tr><tr><td>21</td><td>0.0695</td><td>Australia</td><td>0.0195</td><td>0.0204</td><td>0.0259</td><td>0.0301</td><td>0.0261</td><td>0.0147</td></tr><tr><td>22</td><td>0.2055</td><td>Japan</td><td>0.0121</td><td>0.0124</td><td>0.0177</td><td>0.0183</td><td>0.0147</td><td>0.0353</td></tr><tr><td>23</td><td>-0.0402</td><td>Canada</td><td>0.0205</td><td>0.0206</td><td>0.0273</td><td>0.0305</td><td>0.0234</td><td>0.0158</td></tr><tr><td>24</td><td>1.0000</td><td></td><td>0.0078</td><td>0.0113</td><td>-0.0027</td><td>-0.0065</td><td>0.0009</td><td>0.0026</td></tr><tr><td>25</td><td colspan="8">Risk Prem 0.0383</td></tr><tr><td>26</td><td colspan="8">Std Dev 0.1132</td></tr><tr><td>27</td><td colspan="8">Sharpe 0.3386</td></tr><tr><td>28</td><td colspan="8"></td></tr><tr><td>29</td><td colspan="8">Formulas used in key cells</td></tr><tr><td>30</td><td colspan="8">Cell A17 - A23 These are portfolio weights. You can set initial value arbitrarily as long as sum = 1</td></tr><tr><td>31</td><td colspan="8">Cell C15 = A17, and so on. The portfolio weights in column A are copied to row 17.</td></tr><tr><td>32</td><td colspan="8">Cell A24 = SUM(A17:A23)</td></tr><tr><td>33</td><td colspan="8">Cell C24 = C15*SUMPRODUCT($A17:$A23,C17:C23)</td></tr><tr><td>34</td><td colspan="8">Cell D24 through I24 Copied from C24 (note the use of absolute addresses)</td></tr><tr><td>35</td><td colspan="8">Cell C25 = SUMPRODUCT(A17:A23,$B5:$B11)</td></tr><tr><td>36</td><td colspan="8">Cell C26 = SUM(C24:I24)^0.5</td></tr><tr><td>37</td><td colspan="8">Cell C27 = C25/C26</td></tr></table>

<table><tr><td>38</td><td colspan="11"></td></tr><tr><td>39</td><td>Panel C</td><td colspan="5">Various points along the efficient frontier.</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>40</td><td colspan="2"></td><td>Min var portfolio</td><td></td><td></td><td></td><td></td><td>Optimal (tangency) portfolio</td><td></td><td></td><td></td></tr><tr><td>41</td><td>Risk Prem:</td><td>0.0350</td><td>0.0383</td><td>0.0400</td><td>0.0450</td><td>0.0500</td><td>0.0550</td><td>0.0564</td><td>0.0575</td><td>0.0600</td><td>0.0700</td></tr><tr><td>42</td><td>Std Dev:</td><td>0.1141</td><td>0.1132</td><td>0.1135</td><td>0.1168</td><td>0.1238</td><td>0.1340</td><td>0.1374</td><td>0.1401</td><td>0.1466</td><td>0.1771</td></tr><tr><td>43</td><td>Sharpe:</td><td>0.3066</td><td>0.3386</td><td>0.3525</td><td>0.3853</td><td>0.4037</td><td>0.4104</td><td>0.4107</td><td>0.4106</td><td>0.4092</td><td>0.3953</td></tr><tr><td>44</td><td>U.S.</td><td>0.5944</td><td>0.6112</td><td>0.6195</td><td>0.6446</td><td>0.6696</td><td>0.6947</td><td>0.7018</td><td>0.7073</td><td>0.7198</td><td>0.7699</td></tr><tr><td>45</td><td>U.K.</td><td>1.0175</td><td>0.8778</td><td>0.8083</td><td>0.5992</td><td>0.3900</td><td>0.1809</td><td>0.1214</td><td>0.0758</td><td>-0.0283</td><td>-0.4465</td></tr><tr><td>46</td><td>France</td><td>-0.2365</td><td>-0.2140</td><td>-0.2029</td><td>-0.1693</td><td>-0.1357</td><td>-0.1021</td><td>-0.0926</td><td>-0.0852</td><td>-0.0685</td><td>-0.0014</td></tr><tr><td>47</td><td>Germany</td><td>-0.6077</td><td>-0.5097</td><td>-0.4610</td><td>-0.3144</td><td>-0.1679</td><td>-0.0213</td><td>0.0205</td><td>0.0524</td><td>0.1253</td><td>0.4185</td></tr><tr><td>48</td><td>Australia</td><td>0.0588</td><td>0.0695</td><td>0.0748</td><td>0.0907</td><td>0.1067</td><td>0.1226</td><td>0.1271</td><td>0.1306</td><td>0.1385</td><td>0.1704</td></tr><tr><td>49</td><td>Japan</td><td>0.2192</td><td>0.2055</td><td>0.1987</td><td>0.1781</td><td>0.1575</td><td>0.1369</td><td>0.1311</td><td>0.1266</td><td>0.1164</td><td>0.0752</td></tr><tr><td>50</td><td>Canada</td><td>-0.0459</td><td>-0.0402</td><td>-0.0374</td><td>-0.0288</td><td>-0.0203</td><td>-0.0118</td><td>-0.0093</td><td>-0.0075</td><td>-0.0032</td><td>0.0139</td></tr><tr><td>51</td><td>CAL*</td><td>0.0469</td><td>0.0465</td><td>0.0466</td><td>0.0479</td><td>0.0508</td><td>0.0550</td><td>0.0564</td><td>0.0575</td><td>0.0602</td><td>0.0727</td></tr><tr><td>52</td><td colspan="11">*Risk premium along the CAL = StdDev of portfolio times slope of optimal risky portfolio (Cell 145)</td></tr></table>

# Spreadsheet 7A.1

Spreadsheet models for international diversification excel


Please visit us at www.mhhe.com/Bodie13e


The covariance matrix in Panel B is bordered along the top (row 15) and left (column A) by a set of portfolio weights. You can start the procedure off using any arbitrary set of weights as long as they sum to 1. You will be asking Excel to replace these initial weights with the weights that correspond to the portfolios on the efficient frontier.

Cells C25, C26, and C27 calculate some important characteristics of the portfolio defined by the set of portfolio weights. C25 is the expected risk premium on the portfolio, computed by taking a weighted average of country risk premiums (using Excel's SUMPRODUCT function; the formula for cell C25 is presented in cell C35). Cell C26 computes the standard deviation of any portfolio using the formula developed in Table 7.2. Portfolio variance is given by the sum of cells C24-I24 below the bordered covariance matrix. Cell C26 takes the square root of this sum to produce the standard deviation. Finally C27 is the portfolio's Sharpe ratio, expected excess return divided by standard deviation. This is also the slope of the CAL (capital allocation line) that runs through the portfolio corresponding to the weights in column A. The optimal risky portfolio is the one that maximizes the Sharpe ratio.

Panel C shows the properties of several portfolios along the efficient frontier. The highlighted columns correspond to the minimum-variance and the tangency portfolios. Each column in the panel shows portfolio characteristics and the weighting in each country.

# Using Excel's Solver

Excel's Solver is a user-friendly, but quite powerful, optimizer. It has three parts: (1) an objective function, (2) decision variables, and (3) constraints. Figure 7A.1 shows three pictures of the Solver. We will begin by finding the minimum-variance portfolio. The problem is set up in Panel A of the figure.

The top line of the Solver lets you choose a target cell for the "objective function," that is, the variable you are trying to optimize. In Panel A of Figure 7A.1, the target cell is C26, the portfolio standard deviation. Below the target cell, you can choose whether your objective is to maximize, minimize, or set your objective function equal to a value that you specify. Here we choose to minimize the portfolio standard deviation.

The next part of Solver contains the decision variables. These are cells that the Solver can change in order to optimize the objective function in the target cell. Here, we input cells A17-A23, the portfolio weights that we select to minimize portfolio volatility.

The bottom panel of the Solver can include any number of constraints. One constraint that must always appear in portfolio optimization is the "feasibility constraint," namely, that portfolio weights sum to 1.0. When we bring up the dialogue box for constraints, we specify that cell A24 (the sum of weights) must be set equal to 1.0.

When we click "Solve," the Solver finds the weights of the minimum-variance portfolio and places them in column A. The spreadsheet then calculates the risk premium and standard deviation of that portfolio. We save the portfolio weights and its key statistics by copying them to Panel C in Spreadsheet 7A.1. Cell C42 in Panel C shows that the lowest standard deviation (SD) that can be achieved with our input list is  $11.32\%$ . This standard deviation is considerably lower than even the lowest SD of the individual indexes.

Now we are ready to find other points along the efficient frontier. We will do this by finding the portfolio that has the lowest possible variance for any targeted risk premium. You can produce the entire efficient frontier in minutes following this procedure.

1. Input to the Solver a constraint that says: Cell C25 (the portfolio risk premium) must equal some desired value, for example,. .04. The Solver at this point is shown in Panel B of Figure 7A.1. There are now two constraints: one for the required risk premium and one for the fact that portfolio weights must sum to 1. Ask Solver to

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/ce15cf738cdfcee48f0a38e658d5131d39fa5e212cd23bc555ae539889184f42.jpg)
A
Figure 7A.1 Solver dialog box

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/e733691698bcd42c7c2baa6c888dcbc33ae813b2c0b9492b12a0fd74dd024b43.jpg)
B solve, and it will replace the portfolio weights in column A with those corresponding to the portfolio that can achieve the targeted risk premium with the lowest possible standard deviation. This is the portfolio on the efficient frontier with a risk premium of  $4\%$ . Again, the spreadsheet calculates the other properties of this portfolio, which you then copy to Column D of Panel C. In Columns B-C, we use risk premiums ranging from .035 to .08 (row 41). Each column corresponds to one portfolio along the efficient frontier.


2. To find another point on the frontier, you input a different desired risk premium, and ask the Solver to solve again.
3. Every time the Solver gives you a solution to the request in (2), copy the results into Panel C, in this way tabulating a collection of points along the efficient frontier.

# Finding the Optimal Risky Portfolio on the Efficient Frontier

Now that we have traced out several points along the efficient frontier, our last task is to search for the portfolio with the highest Sharpe ratio. This is the portfolio on the efficient frontier that is tangent to the CAL. To find it, we determine the portfolio weights that maximize the Sharpe ratio. This requires two changes to the Solver. First, change the target cell from cell C26 to cell C27, the Sharpe ratio of the portfolio, and request that the value in this cell be maximized. Next, eliminate the constraint on the risk premium that may be left over from the last time you used the Solver. At this point the Solver looks like Panel C in Figure 7A.1.


The Solver now produces the optimal risky (the tangency) portfolio. Copy the statistics for the optimal portfolio and its weights to Panel C of your spreadsheet. In order to get a clean graph, place the columns for the minimum variance and tangency portfolios so that the risk premiums of all portfolios in the spreadsheet are steadily increasing, starting from the risk premium of column A  $(3.5\%)$  all the way up to  $8\%$ .

The resulting efficient frontier is graphed in Figure 7A.2. The data in cells B42 through L42 are used for the horizontal axis (portfolio standard deviation), while B41-L41 are used for the vertical or  $y$ -axis and contain the portfolio risk premium.

# The Optimal CAL

It is instructive to superimpose on the graph of the efficient frontier in Figure 7A.2 the CAL of the optimal risky portfolio. This CAL has a slope equal to that portfolio's Sharpe ratio. Therefore, at the bottom of Spreadsheet 7A.1, Panel C, we add a row with entries equal to the standard deviation of each column's portfolio multiplied by the Sharpe ratio of the optimal risky portfolio cell (H43). This results in the risk premium for each portfolio along the CAL. We now add a series to the graph with the standard deviations in B42-L42 as the  $x$ -axis and cells B51-L51 as the  $y$ -axis. You can see this CAL in Figure 7A.2.

# The Optimal Risky Portfolio and the Short-Sales Constraint

Using our input list, the optimal risky portfolio calls for short (negative) positions in the stocks of France and Canada (see column H of Spreadsheet 7A.1, Panel C). In many cases, however, the portfolio manager is prohibited from taking short positions. If so, we need to amend the program to preclude short sales.

To accomplish this task, we repeat the exercise, but with one change. We add to the Solver the following constraint: Each element in the column of portfolio weights, A17-A23, must be greater than or equal to zero. You should try to produce the short-sale-constrained efficient frontier in your own spreadsheet.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/7d3436318d9057ab0d300b105aeddd59b5e52fb050fb31ded4dcf815794d54e6.jpg)
Figure 7A.2 Efficient frontier and CAL for country stock indexes

# APPENDIX B: Review of Portfolio Statistics

We base this review of scenario analysis on a two-asset portfolio. We denote the assets  $D$  and  $E$  (which you may think of as debt and equity), but the risk and return parameters we use in this appendix are not necessarily consistent with those used in Section 7.2.

# Expected Returns

We use "expected value" and "mean" interchangeably. For an analysis with  $n$  scenarios, where the rate of return in scenario  $i$  is  $r(i)$  with probability  $p(i)$ , the expected return is

$$
E (r) = \sum_ {i = 1} ^ {n} p (i) r (i) \tag {7B.1}
$$

If you increase the rate of return assumed for each scenario by some amount  $\Delta$ , then the mean return will increase by  $\Delta$ . If you multiply the rate in each scenario by a factor  $w$ , the new mean will be multiplied by that factor:

$$
\sum_ {i = 1} ^ {n} p (i) \times [ r (i) + \Delta ] = \sum_ {i = 1} ^ {n} p (i) \times r (i) + \Delta \sum_ {i = 1} ^ {n} p (i) = E (r) + \Delta \tag {7B.2}
$$

$$
\sum_ {i = 1} ^ {n} p (i) \times [ w r (i) ] = w \sum_ {i = 1} ^ {n} p (i) \times r (i) = w E (r)
$$

# Example 7B.1 Expected Rates of Return

Column C of Spreadsheet 7B.1 shows scenario rates of return for debt,  $D$ . In column D we add  $3\%$  to each scenario return and in column E we multiply each rate by .4. The spreadsheet shows how we compute the expected return for columns C, D, and E. It is evident that the mean increases by  $3\%$  (from .08 to .11) in column D and is multiplied by .4 (from .08 to 0.032) in column E.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td></tr><tr><td>1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td></td><td></td><td colspan="3">Scenario Rates of Return</td><td></td><td></td></tr><tr><td>3</td><td>Scenario</td><td>Probability</td><td>rD(i)</td><td>rD(i) + 0.03</td><td>0.4*rD(i)</td><td></td><td></td></tr><tr><td>4</td><td>1</td><td>0.14</td><td>-0.10</td><td>-0.07</td><td>-0.040</td><td></td><td></td></tr><tr><td>5</td><td>2</td><td>0.36</td><td>0.00</td><td>0.03</td><td>0.000</td><td></td><td></td></tr><tr><td>6</td><td>3</td><td>0.30</td><td>0.10</td><td>0.13</td><td>0.040</td><td></td><td></td></tr><tr><td>7</td><td>4</td><td>0.20</td><td>0.32</td><td>0.35</td><td>0.128</td><td></td><td></td></tr><tr><td>8</td><td></td><td>Mean</td><td>0.080</td><td>0.110</td><td>0.032</td><td></td><td></td></tr><tr><td>9</td><td></td><td>Cell C8</td><td colspan="3">=SUMPRODUCT($B$4:$B$7,C4:C7)</td><td></td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

# Spreadsheet 7B.1

Scenario analysis for bonds

# Excel

Please visit us at www.mhhe.com/Bodie13e


Now let's construct a portfolio that invests a fraction of the investment budget,  $w(D)$ , in bonds and the fraction  $w(E)$  in stocks. The portfolio's rate of return in each scenario and its expected return are given by

$$
\begin{array}{l} r _ {P} (i) = w _ {D} r _ {D} (i) + w _ {E} r _ {E} (i) \\ E \left(r _ {P}\right) = \sum p (i) \left[ w _ {D} r _ {D} (i) + w _ {E} r _ {E} (i) \right] = \sum p (i) w _ {D} r _ {D} (i) + \sum p (i) w _ {E} r _ {E} (i) \tag {7B.3} \\ = w _ {D} E \left(r _ {D}\right) + w _ {E} E \left(r _ {E}\right) \\ \end{array}
$$

The rate of return on the portfolio in each scenario is the weighted average of the component rates. The weights are the fractions invested in these assets, that is, the portfolio weights. The expected return on the portfolio is the weighted average of the asset means.

# Example 7B.2 Portfolio Rate of Return

Spreadsheet 7B.2 lays out rates of return for both stocks and bonds. Using assumed weights of .4 for debt and .6 for equity, the portfolio return in each scenario appears in column L. Cell L8 shows the portfolio expected return as .1040, obtained using the SUMPRODUCT function, which multiplies each scenario return (column L) by the scenario probability (column I) and sums the results.

# Variance and Standard Deviation

The variance and standard deviation of the rate of return on an asset from a scenario analysis are given by

$$
\sigma^ {2} (r) = \sum_ {i = 1} ^ {n} p (i) [ r (i) - E (r) ] ^ {2} \tag {7B.4}
$$

$$
\sigma (r) = \sqrt {\sigma^ {2} (r)}
$$ excel


Please visit us at www.mhhe.com/Bodie13e


<table><tr><td></td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td></tr><tr><td>1</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td></td><td></td><td colspan="2">Scenario Rates of Return</td><td>Portfolio Return</td></tr><tr><td>3</td><td>Scenario</td><td>Probability</td><td>rD(i)</td><td>rE(i)</td><td>0.4*rD(i) + 0.6*rE(i)</td></tr><tr><td>4</td><td>1</td><td>0.14</td><td>-0.10</td><td>-0.35</td><td>-0.2500</td></tr><tr><td>5</td><td>2</td><td>0.36</td><td>0.00</td><td>0.20</td><td>0.1200</td></tr><tr><td>6</td><td>3</td><td>0.30</td><td>0.10</td><td>0.45</td><td>0.3100</td></tr><tr><td>7</td><td>4</td><td>0.20</td><td>0.32</td><td>-0.19</td><td>0.0140</td></tr><tr><td>8</td><td></td><td>Mean</td><td>0.08</td><td>0.12</td><td>0.1040</td></tr><tr><td>9</td><td></td><td>Cell L4</td><td colspan="2">=0.4*J4+0.6*K4</td><td></td></tr><tr><td>10</td><td></td><td>Cell L8</td><td colspan="2">=SUMPRODUCT($I$4:$I$7,L4:L7)</td><td></td></tr><tr><td>11</td><td></td><td></td><td colspan="2"></td><td></td></tr><tr><td>12</td><td></td><td></td><td colspan="2"></td><td></td></tr></table>

# Spreadsheet 7B.2

Scenario analysis for bonds and stocks

Variance (here, of an asset rate of return) is not the only possible choice to quantify variability. An alternative would be to use the absolute deviation from the mean instead of the squared deviation. Thus, the mean absolute deviation (MAD) is sometimes used as a measure of variability. The variance is the preferred measure for several reasons. First, working with absolute deviations is mathematically more difficult. Second, squaring deviations gives more weight to larger deviations. In investments, giving more weight to large deviations (hence, losses) is compatible with risk aversion. Third, when returns are normally distributed, the variance is one of the two parameters that fully characterizes the probability distribution.

Notice that the unit of variance is percent squared. In contrast, standard deviation, the square root of variance, has the same dimension as the original returns, and therefore is easier to interpret as a measure of return variability.

When you add a fixed incremental return,  $\Delta$ , to each scenario return, you increase the mean return by that same increment. Therefore, the deviation of the realized return in each scenario from the mean return is unaffected, and both variance and SD are unchanged. In contrast, when you multiply the return in each scenario by a factor  $w$ , the variance is multiplied by the square of that factor (and the SD is multiplied by  $w$ ):

$$
\begin{array}{l} \operatorname {V a r} (w r) = \sum_ {i = 1} ^ {n} p (i) \times [ w r (i) - E (w r) ] ^ {2} = w ^ {2} \sum_ {i = 1} ^ {n} p (i) [ r (i) - E (r) ] ^ {2} = w ^ {2} \sigma^ {2} \tag {7B.5} \\ \mathrm {S D} (w r) = \sqrt {w ^ {2} \sigma^ {2}} = w \sigma (r) \\ \end{array}
$$

Excel does not have a direct function to compute variance and standard deviation for a scenario analysis. Its STDEV and VAR functions are designed for time series. We need to calculate the probability-weighted squared deviations directly. To avoid having to first compute columns of squared deviations from the mean, however, we can simplify our problem by expressing the variance as a difference between two easily computable terms:

$$
\begin{array}{l} \sigma^ {2} (r) = E \left[ r - E (r) \right] ^ {2} = E \left\{r ^ {2} + \left[ E (r) \right] ^ {2} - 2 r E (r) \right\} \\ = E \left(r ^ {2}\right) + \left[ E (r) \right] ^ {2} - 2 E (r) E (r) \tag {7B.6} \\ = E \left(r ^ {2}\right) - \left[ E (r) \right] ^ {2} = \sum_ {i = 1} ^ {n} p (i) r (i) ^ {2} - \left[ \sum_ {i = 1} ^ {n} p (i) r (i) \right] ^ {2} \\ \end{array}
$$

# Example 7B.3 Calculating the Variance of a Risky Asset in Excel

You can compute the first expression,  $E(r^2)$ , in Equation 7B.6 using Excel's SUMPRODUCT function. For example, in Spreadsheet 7B.3,  $E(r^2)$  is first calculated in cell C21 by using SUMPRODUCT to multiply the scenario probability times the asset return times the asset return again. Then  $[E(r)]^2$  is subtracted (notice the subtraction of  $C20^2$  in cell C21), to arrive at variance.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td></tr><tr><td>13</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>14</td><td></td><td></td><td colspan="3">Scenario Rates of Return</td><td></td><td></td></tr><tr><td>15</td><td>Scenario</td><td>Probability</td><td>rD(i)</td><td>rD(i) + 0.03</td><td>0.4*rD(i)</td><td></td><td></td></tr><tr><td>16</td><td>1</td><td>0.14</td><td>-0.10</td><td>-0.07</td><td>-0.040</td><td></td><td></td></tr><tr><td>17</td><td>2</td><td>0.36</td><td>0.00</td><td>0.03</td><td>0.000</td><td></td><td></td></tr><tr><td>18</td><td>3</td><td>0.30</td><td>0.10</td><td>0.13</td><td>0.040</td><td></td><td></td></tr><tr><td>19</td><td>4</td><td>0.20</td><td>0.32</td><td>0.35</td><td>0.128</td><td></td><td></td></tr><tr><td>20</td><td></td><td>Mean</td><td>0.0800</td><td>0.1100</td><td>0.0240</td><td></td><td></td></tr><tr><td>21</td><td></td><td>Variance</td><td>0.0185</td><td>0.0185</td><td>0.0034</td><td></td><td></td></tr><tr><td>22</td><td></td><td>SD</td><td>0.1359</td><td>0.1359</td><td>0.0584</td><td></td><td></td></tr><tr><td>23</td><td colspan="5">Cell C21 =SUMPRODUCT($B$16:$B$19,C16:C19,C16:C19)-C20^2</td><td></td><td></td></tr><tr><td>24</td><td colspan="5">Cell C22 =C21^0.5</td><td></td><td></td></tr></table>

# Excel

Please visit us at www.mhhe.com/Bodie13e


# Spreadsheet 7B.3

Scenario analysis for bonds

The variance of a portfolio return is not as simple to compute as the mean. The portfolio variance is not the weighted average of the asset variances. The deviation of the portfolio rate of return in any scenario from its mean return is

$$
\begin{array}{l} r _ {P} - E (r _ {P}) = w _ {D} r _ {D} (i) + w _ {E} r _ {E} (i) - \left[ w _ {D} E (r _ {D}) + w _ {E} E (r _ {E}) \right] \\ = w _ {D} \left[ r _ {D} (i) - E \left(r _ {D}\right) \right] + w _ {E} \left[ r _ {E} (i) - E \left(r _ {E}\right) \right] \tag {7B.7} \\ = w _ {D} d (i) + w _ {E} e (i) \\ \end{array}
$$ where the lowercase variables denote deviations from the mean:


$$ d (i) = r _ {D} (i) - E (r _ {D})
$$

$$ e (i) = r _ {E} (i) - E (r _ {E})
$$

We express the variance of the portfolio return in terms of these deviations from the mean in Equation 7B.8:

$$
\begin{array}{l} \sigma_ {P} ^ {2} = \sum_ {i = 1} ^ {n} p (i) [ r _ {P} - E (r _ {P}) ] ^ {2} = \sum_ {i = 1} ^ {n} p (i) [ w _ {D} d (i) + w _ {E} e (i) ] ^ {2} \\ = \sum_ {i = 1} ^ {n} p (i) \left[ w _ {D} ^ {2} d (i) ^ {2} + w _ {E} ^ {2} e (i) ^ {2} + 2 w _ {D} w _ {E} d (i) e (i) \right] \tag {7B.8} \\ = w _ {D} ^ {2} \sum_ {i = 1} ^ {n} p (i) d (i) ^ {2} + w _ {E} ^ {2} \sum_ {i = 1} ^ {n} p (i) e (i) ^ {2} + 2 w _ {D} w _ {E} \sum_ {i = 1} ^ {n} p (i) d (i) e (i) \\ = w _ {D} ^ {2} \sigma_ {D} ^ {2} + w _ {E} ^ {2} \sigma_ {E} ^ {2} + 2 w _ {D} w _ {E} \sum_ {i = 1} ^ {n} p (i) d (i) e (i) \\ \end{array}
$$

The last line in Equation 7B.8 tells us that the variance of a portfolio is the weighted sum of portfolio variances (notice that the weights are the squares of the portfolio weights), plus an additional term that, as we will soon see, makes all the difference.

Notice also that  $d(i) \times e(i)$  is the product of the deviations of the scenario returns of the two assets from their respective means. The probability-weighted average of this product is its expected value, which is called covariance and is denoted  $\mathrm{Cov}(r_D, r_E)$ . The covariance between the two assets can have a big impact on the variance of a portfolio.

# Covariance

The covariance between two variables equals

$$
\begin{array}{l} \operatorname {C o v} \left(r _ {D}, r _ {E}\right) = E (d \times e) = E \left\{\left[ r _ {D} - E \left(r _ {D}\right) \right] \left[ r _ {E} - E \left(r _ {E}\right) \right] \right\} \\ = E \left(r _ {D} r _ {E}\right) - E \left(r _ {D}\right) E \left(r _ {E}\right) \tag {7B.9} \\ \end{array}
$$

The covariance is an elegant way to quantify the covariation of two variables. This is easiest seen through a numerical example.

Imagine a three-scenario analysis of stocks and bonds such as that given in Spreadsheet 7B.4. In scenario 1, bonds go down (negative deviation) while stocks go up (positive deviation). In scenario 3, bonds are up, but stocks are down. When the rates move in opposite directions, as in this case, the product of the deviations is negative; conversely, if the rates moved in the same direction, the sign of the product would be positive. The magnitude of the product shows the extent of the opposite or common movement in that scenario.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td></tr><tr><td>1</td><td></td><td colspan="2">Rates of Return</td><td></td><td colspan="2">Deviation from Mean</td><td></td><td>Product of</td></tr><tr><td>2</td><td>Probability</td><td>Bonds</td><td>Stocks</td><td></td><td>Bonds</td><td>Stocks</td><td></td><td>Deviations</td></tr><tr><td>3</td><td>0.25</td><td>-2</td><td>30</td><td></td><td>-8</td><td>20</td><td></td><td>-160</td></tr><tr><td>4</td><td>0.50</td><td>6</td><td>10</td><td></td><td>0</td><td>0</td><td></td><td>0</td></tr><tr><td>5</td><td>0.25</td><td>14</td><td>-10</td><td></td><td>8</td><td>-20</td><td></td><td>-160</td></tr><tr><td>6</td><td>Mean:</td><td>6</td><td>10</td><td></td><td>0</td><td>0</td><td></td><td>-80</td></tr></table> excel


Please visit us at www.mhhe.com/Bodie13e


# Spreadsheet 7B.4

Three-scenario analysis for stocks and bonds

The probability-weighted average of these products therefore summarizes the average tendency for the variables to co-vary across scenarios. In the last line of the spreadsheet, we see that the covariance is  $-80$  (cell H6).

Suppose our scenario analysis had envisioned stocks generally moving in the same direction as bonds. To be concrete, let's switch the forecast rates on stocks in the first and third scenarios, that is, let the stock return be  $-10\%$  in the first scenario and  $30\%$  in the third. In this case, the absolute values of both products of deviations from the mean in these scenarios remains the same, but the signs are now positive, and thus the covariance is positive, at  $+80$ , reflecting the tendency for both asset returns to vary in tandem. If the levels of the scenario returns change, the intensity of the covariation also may change, as reflected by the magnitude of the product of deviations. The covariance quantifies both the direction and intensity of the covariation.

If the average co-movement is zero because positive and negative products are equally likely, the covariance is zero. Also, if one of the assets is risk-free, its covariance with any risky asset is zero because its deviations from its mean are zero in each scenario.

The computation of covariance using Excel can be made easy by using the last line in Equation 7B.9. The first term,  $E(r_{D} \times r_{E})$ , can be computed in one stroke using Excel's SUMPRODUCT function. Specifically, in Spreadsheet 7B.4, SUMPRODUCT(A3:A5, B3:B5, C3:C5) multiplies the probability times the return on debt times the return on equity in each scenario and then sums those three products.

Notice that adding  $\Delta$  to each rate would not change the covariance because deviations from the mean would remain unchanged. But if you multiply either of the variables by a fixed factor, the covariance will increase by that factor. Multiplying both variables results in a covariance multiplied by the products of the factors because

$$
\begin{array}{l} \operatorname {C o v} \left(w _ {D} r _ {D}, w _ {E} r _ {E}\right) = E \left\{\left[ w _ {D} r _ {D} - w _ {D} E \left(r _ {D}\right) \right] \left[ w _ {E} r _ {E} - w _ {E} E \left(r _ {E}\right) \right] \right\} \\ = w _ {D} w _ {E} \operatorname {C o v} \left(r _ {D}, r _ {E}\right) \tag {7B.10} \\ \end{array}
$$

The covariance in Equation 7B.10 is actually the term that we add (twice) in the last line of the equation for portfolio variance, Equation 7B.8. So we find that portfolio variance is the weighted sum (not average) of the individual asset variances, plus twice their covariance weighted by the two portfolio weights  $(w_{D} \times w_{E})$ .

Like variance, the dimension (unit) of covariance is percent squared. But here we cannot get to a more easily interpreted dimension by taking the square root because the average product of deviations can be negative, as it was in Spreadsheet 7B.4. The solution in this case is to scale the covariance by the standard deviations of the two variables, producing the correlation coefficient.


# Correlation Coefficient

Dividing the covariance by the product of the standard deviations of the variables will generate a pure number called correlation. We define correlation as follows:

$$
\operatorname {C o r r} \left(r _ {D}, r _ {E}\right) = \frac {\operatorname {C o v} \left(r _ {D} , r _ {E}\right)}{\sigma_ {D} \sigma_ {E}} \tag {7B.11}
$$

The correlation coefficient must fall within the range  $[-1, 1]$ . This can be explained as follows. What two variables should have the highest degree co-movement? Logic says a variable with itself, so let's check it out.

$$
\begin{array}{l} \operatorname {C o v} \left(r _ {D}, r _ {D}\right) = E \left\{\left[ r _ {D} - E \left(r _ {D}\right) \right] \times \left[ r _ {D} - E \left(r _ {D}\right) \right] \right\} \\ = E \left[ r _ {D} - E \left(r _ {D}\right) \right] ^ {2} = \sigma_ {D} ^ {2} \tag {7B.12} \\ \end{array}
$$

$$
\operatorname {C o r r} (r _ {D}, r _ {D}) = \frac {\operatorname {C o v} (r _ {D} , r _ {D})}{\sigma_ {D} \sigma_ {D}} = \frac {\sigma_ {D} ^ {2}}{\sigma_ {D} ^ {2}} = 1
$$

Similarly, the lowest (most negative) value of the correlation coefficient is  $-1$ . (Check this for yourself by finding the correlation of a variable with its own negative.)

An important property of the correlation coefficient is that it is unaffected by both addition and multiplication. Suppose we start with a return on debt,  $r_{D}$ ; multiply it by a constant,  $w_{D}$ ; and then add a fixed amount  $\Delta$ . The correlation with equity is unaffected:

$$
\begin{array}{l} \operatorname {C o r r} \left(\Delta + w _ {D} r _ {D}, r _ {E}\right) = \frac {\operatorname {C o v} \left(\Delta + w _ {D} r _ {D} , r _ {E}\right)}{\sqrt {\operatorname {V a r} \left(\Delta + w _ {D} r _ {D}\right)} \times \sigma_ {E}} \\ = \frac {w _ {D} \operatorname {C o v} \left(r _ {D} , r _ {E}\right)}{\sqrt {w _ {D} ^ {2} \sigma_ {D} ^ {2}} \times \sigma_ {E}} = \frac {w _ {D} \operatorname {C o v} \left(r _ {D} , r _ {E}\right)}{w _ {D} \sigma_ {D} \times \sigma_ {E}} \tag {7B.13} \\ = \operatorname {C o r r} (r _ {D}, r _ {E}) \\ \end{array}
$$

Because the correlation coefficient gives more intuition about the relationship between rates of return, we sometimes express the covariance in terms of the correlation coefficient. Rearranging Equation 7B.11, we can write covariance as

$$
\operatorname {C o v} \left(r _ {D}, r _ {E}\right) = \sigma_ {D} \sigma_ {E} \operatorname {C o r r} \left(r _ {D}, r _ {E}\right) \tag {7B.14}
$$

# Example 7B.4 Calculating Covariance and Correlation

Spreadsheet 7B.5 shows the covariance and correlation between stocks and bonds using the same scenario analysis as in the other examples in this appendix. Covariance is calculated using Equation 7B.9. The SUMPRODUCT function used in cell J22 gives us  $E(r_{D} \times r_{E})$ , from which we subtract  $E(r_{D}) \times E(r_{E})$  (i.e., we subtract  $J20 \times K20$ ). Then we calculate correlation in cell J23 by dividing covariance by the product of the asset standard deviations.

<table><tr><td></td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td><td>M</td></tr><tr><td>13</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>14</td><td></td><td></td><td colspan="2">Scenario Rates of Return</td><td></td><td></td></tr><tr><td>15</td><td colspan="2">Scenario Probability</td><td>rD(i)</td><td>rE(i)</td><td></td><td></td></tr><tr><td>16</td><td>1</td><td>0.14</td><td>-0.10</td><td>-0.35</td><td></td><td></td></tr><tr><td>17</td><td>2</td><td>0.36</td><td>0.00</td><td>0.20</td><td></td><td></td></tr><tr><td>18</td><td>3</td><td>0.30</td><td>0.10</td><td>0.45</td><td></td><td></td></tr><tr><td>19</td><td>4</td><td>0.20</td><td>0.32</td><td>-0.19</td><td></td><td></td></tr><tr><td>20</td><td></td><td>Mean</td><td>0.08</td><td>0.12</td><td></td><td></td></tr><tr><td>21</td><td></td><td>SD</td><td>0.1359</td><td>0.2918</td><td></td><td></td></tr><tr><td>22</td><td></td><td>Covariance</td><td>-0.0034</td><td></td><td></td><td></td></tr><tr><td>23</td><td></td><td>Correlation</td><td>-0.0847</td><td></td><td></td><td></td></tr><tr><td>24</td><td>Cell J22</td><td colspan="3">=SUMPRODUCT(I16:I19,J16:J19,K16:K19)-J20*K20</td><td></td><td></td></tr><tr><td>25</td><td>Cell J23</td><td colspan="3">=J22/(J21*K21)</td><td></td><td></td></tr></table> excel


Please visit us at www.mhhe.com/Bodie13e


# Spreadsheet 7B.5

Scenario analysis for bonds and stocks

# Portfolio Variance

We have seen in Equation 7B.8, with the help of Equation 7B.10, that the variance of a two-asset portfolio is the sum of the individual variances multiplied by the square of the portfolio weights, plus twice the covariance between the rates, multiplied by the product of the portfolio weights:

$$
\begin{array}{l} \sigma_ {P} ^ {2} = w _ {D} ^ {2} \sigma_ {D} ^ {2} + w _ {E} ^ {2} \sigma_ {E} ^ {2} + 2 w _ {D} w _ {E} \operatorname {C o v} \left(r _ {D}, r _ {E}\right) \\ = w _ {D} ^ {2} \sigma_ {D} ^ {2} + w _ {E} ^ {2} \sigma_ {E} ^ {2} + 2 w _ {D} w _ {E} \sigma_ {D} \sigma_ {E} \operatorname {C o r r} \left(r _ {D}, r _ {E}\right) \tag {7B.15} \\ \end{array}
$$

# Example 7B.5 Calculating Portfolio Variance

We calculate portfolio variance in Spreadsheet 7B.6. Notice there that we calculate the portfolio standard deviation in two ways: once from the scenario portfolio returns (cell E35) and again (in cell E36) using the first line of Equation 7B.15. The two approaches yield the same result. You should try to repeat the second calculation using the correlation coefficient from the second line in Equation 7B.15 instead of covariance in the formula for portfolio variance.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td></tr><tr><td>25</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>26</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>27</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>28</td><td></td><td></td><td colspan="2">Scenario Rates of Return</td><td>Portfolio Return</td><td></td><td></td></tr><tr><td>29</td><td>Scenario</td><td>Probability</td><td>rD(i)</td><td>rE(i)</td><td>0.4*rD(i)+0.6rE(i)</td><td></td><td></td></tr><tr><td>30</td><td>1</td><td>0.14</td><td>-0.10</td><td>-0.35</td><td>-0.25</td><td></td><td></td></tr><tr><td>31</td><td>2</td><td>0.36</td><td>0.00</td><td>0.20</td><td>0.12</td><td></td><td></td></tr><tr><td>32</td><td>3</td><td>0.30</td><td>0.10</td><td>0.45</td><td>0.31</td><td></td><td></td></tr><tr><td>33</td><td>4</td><td>0.20</td><td>0.32</td><td>-0.19</td><td>0.014</td><td></td><td></td></tr><tr><td>34</td><td></td><td>Mean</td><td>0.08</td><td>0.12</td><td>0.1040</td><td></td><td></td></tr><tr><td>35</td><td></td><td>SD</td><td>0.1359</td><td>0.2918</td><td>0.1788</td><td></td><td></td></tr><tr><td>36</td><td></td><td>Covariance</td><td>-0.0034</td><td></td><td>SD: 0.1788</td><td></td><td></td></tr><tr><td>37</td><td></td><td>Correlation</td><td>-0.0847</td><td></td><td></td><td></td><td></td></tr><tr><td>38</td><td colspan="4">Cell E35 =SUMPRODUCT(B30:B33,E30:E33,E30:E33)-E34^2)^0.5</td><td></td><td></td><td></td></tr><tr><td>39</td><td colspan="4">Cell E36 =(0.4*C35)^2+(0.6*D35)^2+2*0.4*0.6*C36)^0.5</td><td></td><td></td><td></td></tr></table>

Excel

Please visit us at www.mhhe.com/Bodie13e


# Spreadsheet 7B.6

Scenario analysis for bonds and stocks

Suppose that one of the assets, say,  $E$ , is replaced with a money market instrument, that is, a risk-free asset. The variance of  $E$  is then zero, as is the covariance with  $D$ . In that case, as seen from Equation 7B.15, the portfolio standard deviation is just  $w_{D}\sigma_{D}$ . In other words, when we mix a risky portfolio with the risk-free asset, portfolio standard deviation equals the risky asset's standard deviation times the weight invested in that asset. This result was used extensively in Chapter 6.


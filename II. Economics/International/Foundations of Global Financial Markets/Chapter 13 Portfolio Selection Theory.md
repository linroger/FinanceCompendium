---
aliases:
- Portfolio Selection Theory
tags: null
key_concepts: null
parent_directory: '[[II. Economics/International/Foundations of Global Financial Markets]]'
cssclasses: academia
title: 'Chapter 13: Portfolio Selection Theory'
linter-yaml-title-alias: 'Chapter 13: Portfolio Selection Theory'
primary_tags:
- theory referred mean variance
- behavior making portfolio allocation
- portfolio theory certain assumptions
- theory markowitz portfolio theory
- criticisms portfolio theory
secondary_tags:
- theory deals selection portfolios
- portfolio selection theory contents
- portfolio theory tells achieve
- theory behavioral finance theory
- risk capital market theory
- determining portfolio risk diversification
- markowitz portfolio theory differs
- criticisms portfolio theory focus
- portfolio theory standard deviation
- portfolio theory normative theory
- selection optimal portfolio different
- portfolio estimation errors
tags_extracted: '2025-12-18T00:19:33.662070'
---

# 13

# Portfolio Selection Theory

# CONTENTS

Learning Objectives

The Concept of Portfolio Diversification

Markowitz Portfolio Theory

Expected Portfolio Return

Measuring Portfolio Risk

The General Case

The Role of Correlation in Determining Portfolio Risk and the Diversification Effect

Constructing Portfolios

Feasible Portfolios

Efficient Portfolios

Selecting the Optimal Portfolio

Criticisms of Portfolio Theory

Behavioral Finance Theory and Investor Decision Making

Key Points

Questions

# Learning Objectives

After reading this chapter, you will understand:

- the concept of portfolio diversification;
- how to calculate the expected return and risk of a single asset and a portfolio of assets;
- portfolio theory's assumptions about how investors make decisions and about return distributions;
- the importance of the correlation between two assets when measuring a portfolio's risk;
- what is meant by a feasible portfolio and a set of feasible portfolios;
- what is meant by the Markowitz efficient set or efficient frontier;
- what is meant by an optimal portfolio, and how an optimal portfolio is selected from all the portfolios available on the Markowitz efficient frontier;
- the criticisms of portfolio theory;
- what behavioral finance is, and how it differs from standard finance theory; and
- the issues associated with the implementation of portfolio theory in practice.

The development of the theoretical relationship between risk and expected return is built on two economic theories, the portfolio selection theory and capital market theory. **Portfolio theory** deals with the selection of portfolios to maximize expected returns consistent with individually acceptable levels of risk. **Capital market theory** deals with the effects of investor decisions on security prices. More specifically, it shows the relationship that should exist between security returns and risk if investors construct portfolios as indicated by portfolio theory.

Together, portfolio theory and capital market theory provide a framework to specify and measure investment risk and to develop an economic equilibrium relationship between risk and expected return (and hence between risk and the required return on an investment). These theories have revolutionized the world of finance by allowing portfolio managers to quantify the investment risk and expected return of a portfolio and by allowing corporate treasurers to quantify the cost of capital and risk of a proposed capital investment.

In this chapter, the focus is on portfolio theory, which covers how, under assumed conditions, investors select the assets to be included in a portfolio. The theory presented is referred to by various names—modern portfolio theory, Markowitz portfolio theory, and mean-variance theory. The theory draws on the concepts described in chapter 12. Prior to the development of the portfolio theory presented in this chapter, investors would often speak of risk and return, but the failure to quantify these important measures made constructing a portfolio of assets highly subjective and provided no insight into the return investors should expect. Moreover, investors would focus on the risks of individual assets without understanding how combining them into a portfolio could affect the portfolio's risk. The theories we present here and in chapter 14 quantify the relationship between risk and expected return. In October 1990, as confirmation of the importance of these theories, the Alfred Nobel Memorial Prize in Economic Science was awarded to Harry Markowitz, $^{1}$  the developer of portfolio theory, and to William Sharpe, who is one of the developers of capital market theory. $^{2}$

Although these theories are the cornerstone of much of finance, they have been under constant attack. This should not be surprising in the intellectual development of any field. Portfolio theory was formulated in 1952 by Markowitz and is still referred to as "modern" portfolio theory. Today, special issues of journals are devoted to describing the extension of portfolio theory as formulated by Markowitz. These extensions are not a criticism of the intellectual contribution by Markowitz but indicate how to modify the assumptions and deal with issues associated with implementation. Consequently, the chapter begins with portfolio theory as formulated by Markowitz, and the balance of the chapter is devoted to a brief description of the extensions and implementation issues. The topic of portfolio theory goes far beyond what is covered here and is typically reserved for a course in investment management.

# The Concept of Portfolio Diversification

Investors often talk about "diversifying" their portfolio. An investor who diversifies is one who constructs a portfolio in such a way as to reduce portfolio risk without sacrificing return. This goal is certainly one that investors should seek. However, the question is how to do it in practice.

Some investors would say that including assets across all asset classes could diversify a portfolio. For example, an investor might argue that a portfolio should be diversified by investing in stocks, bonds, and real estate. Although that might be reasonable, two questions must be addressed to construct a diversified portfolio. First, how much should be invested in each asset class? Should  $40\%$  of the portfolio be in stocks,  $50\%$  in bonds, and  $10\%$  in real estate, or is some other allocation more appropriate? Second, once the allocation is determined, which specific stocks, bonds, and real estate should the investor select?

Some investors who focus only on one asset class, such as common stock, argue that these portfolios should also be diversified. By this they mean that an investor should not place all of his or her investment funds in the stock of one corporation but should invest in the stocks of many corporations. Here, too, several questions must be answered to construct a diversified portfolio. First, which corporations should be represented in the portfolio? Second, how much of the portfolio should be allocated to the stocks of each corporation?

Before the development of portfolio theory as presented in this chapter, although investors often talked about diversification in general terms, they did not have the analytical tools with which to answer the questions posed above. For example, in 1945, Dickson Leavens wrote:

An examination of some fifty books and articles on investment that have appeared during the last quarter of a century shows that most of them refer to the desirability of diversification. The majority, however, discuss it in general terms and do not clearly indicate why it is desirable.

Making the assumption that risks are independent, he then shows how an investor can benefit from diversification. What is noteworthy is his final paragraph, in which he cautions investors that the assumption that risks are independent for each security is important but in practice is not likely to hold:

Diversification among companies in one industry cannot protect against unfavorable factors that may affect the whole industry; additional diversification among industries is needed for that purpose. Nor can diversification among industries protect against cyclical factors that may depress all industries at the same time.

Seven years later, Harry Markowitz formulated portfolio theory, which quantified the notion expressed in Leavens's insights using the basic statistical concepts explained in chapter 12.5 As we will see, the Markowitz diversification strategy discussed in this chapter is primarily concerned with the degree of covariance between asset returns in a portfolio as a measure of portfolio risk, rather than with the risk of each asset in isolation.

# Markowitz Portfolio Theory

When constructing a portfolio of assets, investors seek to maximize the expected return from their investment, given some level of risk they are willing to accept. (Alternatively stated, investors seek to minimize the risk they are exposed to given some target expected return.) Portfolios that satisfy this requirement are called efficient portfolios. Portfolio theory tells us how to achieve efficient portfolios. Because Markowitz is the developer of portfolio theory, efficient portfolios are sometimes referred to as "Markowitz efficient portfolios."

To construct an efficient portfolio of risky assets, it is necessary to make some assumption about how investors behave when making investment decisions. A reasonable assumption is that investors are risk averse. When faced with two investments with the same expected return but two different risks, a risk-averse investor will prefer the one with the lower risk. Given a choice of efficient portfolios from which an investor can select, an optimal portfolio is the one most preferred.

To construct an efficient portfolio, an investor needs to be able to estimate the expected return for each asset that is a candidate for inclusion in the portfolio, and not only to specify some measure of risk but also measure that risk for each asset. As explained in chapter 12, there are different quantitative measures of risk. The one selected in Markowitz portfolio theory is the standard deviation (variance).

# Expected Portfolio Return

The expected value of a portfolio's return (or simply, "the expected portfolio return") is the weighted average of the expected value of the return for each asset over the time period. Mathematically,

$$
E \left(R_{p}\right) = w_{1} E \left(R_{1}\right) + w_{2} E \left(R_{2}\right) + \dots + w_{K} E \left(R_{K}\right), \tag {13.1}
$$ where


$E(R_{p}) =$  expected portfolio return,

$E(R_{k}) =$  expected return for asset  $k$ $(k = 1,\dots ,K)$

$w_{k} =$  the weight of asset  $k$  in the portfolio (i.e., the market value of asset  $k$  as a proportion of the market value of the total portfolio) at the beginning of the period, and


$K =$  number of assets in the portfolio.

In the actual implementation of the theory, the mean return from historical returns, adjusted where necessary by the investor, is used in equation (13.1).

As can be seen from equation (13.1), the calculation of the expected portfolio return is simple once the expected return for each asset is estimated: It is simply a weighted linear combination of the assets making up the portfolio. Measuring the portfolio's risk, however, is not as straightforward.

# Measuring Portfolio Risk

The measure of risk used in Markowitz portfolio theory is the variance, and hence the theory is also referred to as "mean-variance" theory. Chapter 12 explained how to calculate an asset's return variance from a sample of historical returns. Moving from the variance of individual assets to the portfolio variance that will be the measure of portfolio risk is not as simple. Let's begin with the simple case of the portfolio variance of a two-asset portfolio (assets 1 and 2), which is

$$

\sigma^{2} (R p) = w_{1}^{2} \sigma^{2} \left(R_{1}\right) + w_{2}^{2} \sigma^{2} \left(R_{2}\right) + 2 \left(w_{1}\right) \left(w_{2}\right) \operatorname{co v} \left(R_{1}, R_{2}\right), \tag {13.2}

$$ where


$\sigma^2 (Rp) =$  portfolio variance,

$\sigma^2 (R_1),\sigma^2 (R_2) = \mathrm{variance}$  of asset 1 and asset 2, respectively,

$w_{1}, w_{2} = \text{portfolioallocation (weight)}$  of assets 1 and 2, respectively, and  $\operatorname{cov}(R_1, R_2) = \text{covariancebetweenthereturnforassets1 and2}$ .

As can be seen from equation (13.2), the covariance between the two assets is introduced. As explained in chapter 12, covariance is a measure of the dependence structure or covariability between two random variables. In our application, these variables are the returns for assets 1 and 2.

An alternative to measuring the covariability of two random variables is to determine the correlation. As explained in the previous chapter, the correlation between random variables is the covariance of the two random variables divided by the product of their standard deviations. Applying this formula to the returns for assets 1 and 2, we have:


$$

\operatorname{co r} (R_{1}, R_{2}) = \operatorname{co v} (R_{1}, R_{2}) / [ \sigma (R_{1}) \sigma (R_{2}) ],

$$ where  $\operatorname{cor}(R_1, R_2)$  is the correlation between the returns of assets 1 and 2. Solving for the covariance, we have:

$$
\operatorname{co v} \left(R_{1}, R_{2}\right) = \sigma \left(R_{1}\right) \sigma \left(R_{2}\right) \operatorname{co r} \left(R_{1}, R_{2}\right). \tag {13.3}
$$

Substituting equation (13.3) into equation (13.2) for the covariance, the portfolio variance can be rewritten as

$$
\sigma^{2} (R p) = w_{1}^{2} \sigma^{2} \left(R_{1}\right) + w_{2}^{2} \sigma^{2} \left(R_{2}\right) + 2 \left(w_{1}\right) \left(w_{2}\right) \sigma \left(R_{1}\right) \sigma \left(R_{2}\right) \operatorname{co r} \left(R_{1}, R_{2}\right). \tag {13.4}
$$

# The General Case

The mathematics for the two-asset case is not complicated. Moving from the two-asset case to the general case in which there are more than two assets gets a little trickier. For example, the three-asset case (i.e., assets 1, 2, and 3) where the portfolio variance is defined in terms of variances and covariances is as follows:

$$
\begin{array}{l} \sigma^{2} \left(R_{p}\right) = w_{1}^{2} \sigma^{2} \left(R_{1}\right) + w_{2}^{2} \sigma^{2} \left(R_{2}\right) + w_{3}^{2} \sigma^{2} \left(R_{3}\right) + 2 \left(w_{1}\right) \left(w_{2}\right) \operatorname{co v} \left(R_{1}, R_{2}\right) \tag {13.5} \\ + 2 \left(w_{1}\right) \left(w_{3}\right) \operatorname{co v} \left(R_{1}, R_{3}\right) + 2 \left(w_{2}\right) \left(w_{3}\right) \operatorname{co v} \left(R_{2}, R_{3}\right). \\ \end{array}
$$

In general, for a portfolio with  $K$  assets, the portfolio variance is given by

$$
\sigma^{2} \left(R_{p}\right) = \sum_{k = 1}^{K} \sum_{h = 1}^{K} w_{k} w_{h} \operatorname{co v} \left(R_{k}, R_{h}\right). \tag {13.6}
$$

In equation (13.6), the  $K$  variances are the cases in which  $k = h$  results, and the covariance between every pair of assets is when  $k \neq h$  results.

# The Role of Correlation in Determining Portfolio Risk and the Diversification Effect

Let's consider the expected portfolio return and portfolio variance using a simple two-asset portfolio. This allows us to assess the role that the correlation plays in determining portfolio risk. Suppose we have the following information for the two assets, 1 and 2:

<table><tr><td>Asset</td><td>E(R)</td><td>σ(R)</td></tr><tr><td>1</td><td>12\%</td><td>30\%</td></tr><tr><td>2</td><td>18\%</td><td>40\%</td></tr></table>

Let's assume that the portfolio has equal weights for both assets (i.e.,  $w_{1} = w_{2}$ ). Based on this information, the expected portfolio return from equation (13.1) is

$$
E \left(R_{p}\right) = 0.50 (12 \%)+ 0.50 (18 \%)=15 \%
$$

From equation (13.4), the portfolio variance is

$$
\begin{array}{l} \sigma^{2} \left(R_{p}\right) = (0.5)^{2} \left(30 \%\right)^{2} + (0.5)^{2} \left(40 \%\right)^{2} + 2 (0.5) (0.5) \left(30 \%\right) \left(40 \%\right) \operatorname{cor} \left(R_{1}, R_{2}\right) \\ = 6 2 5 + 6 0 0 \operatorname{co r} \left(R_{1}, R_{2}\right). \\ \end{array}
$$

Taking the square root of the above equation, we obtain the standard deviation:

$$
\sigma \left(R_{p}\right) = \left[ 6 2 5 + 6 0 0 \operatorname{co r} \left(R_{1}, R_{2}\right) \right]^{0. 5}.
$$

We can now see how portfolio risk changes for our two-asset portfolio with different correlations between the returns of the two assets. We know that the correlation ranges from  $-1$  to  $+1$ . Let's examine the following three cases for  $\operatorname{cor}(R_1, R_2) = -1$ , 0, and 1. Substituting into the equation above for the correlations for these three cases of  $\operatorname{cor}(R_1, R_2)$ , we get:

<table><tr><td>cor(R1,R2)</td><td>-1</td><td>0</td><td>+1</td></tr><tr><td>σ(Rp)</td><td>5\%</td><td>25\%</td><td>35\%</td></tr></table>

As the correlation between the expected returns on assets 1 and 2 increases from  $-1.0$  to  $0.0$  to  $1.0$ , the standard deviation of the expected portfolio return increases from  $5\%$  to  $35\%$ . Note that although the portfolio risk changes with the correlation, the expected portfolio return remains  $15\%$  for each case.

This example clearly illustrates the effect of Markowitz diversification. The principle of Markowitz diversification states that as the correlation (covariance) decreases between the returns for assets that are combined in a portfolio, so does the variance (hence the standard deviation) of the return for the portfolio. This is the result of the degree of correlation between the asset returns.

As can be seen, investors can construct a portfolio to maintain expected portfolio return but lower portfolio risk by combining assets with lower (and preferably negative) correlations. However, in practice, very few assets have small to negative correlations with other assets. The problem, then, becomes one of searching among large numbers of assets in an effort to identify the portfolio with the minimum portfolio risk for a given level of expected portfolio return, or, equivalently, the highest expected portfolio return for a given level of portfolio risk.

# Constructing Portfolios

Constructing a portfolio (i.e., selecting the assets and the amount allocated to each asset), as suggested, results in portfolios that have the highest expected return for a given level of risk. Portfolios that have this attribute are referred to as "efficient portfolios." To construct efficient portfolios, the following assumptions about how investors select assets are made:

- Mean-variance assumption: Only the expected value and the variance are used by investors when making asset selection decisions.
- Risk-aversion assumption: Investors are risk averse, which means that when faced with a decision about which of two assets to invest in, when both have the same expected return but different risks, investors will prefer the asset with the lower risk.
- Homogeneous expectations assumption: All investors have the same expectations regarding expected return, variance, and covariance for all risky assets.
- One-period horizon assumption: All investors have a common one-period investment horizon.
- Optimization assumption: When constructing portfolios, investors seek to achieve the highest expected return for a given level of risk.

The construction of efficient portfolios given the universe of potential assets requires a massive number of calculations. For a universe of  $G$  assets, there are  $(G^2 - G) / 2$  unique covariances to calculate. Hence, for a portfolio of just 50 assets, 1,224 covariances must be calculated. For 100 securities, 4,950 covariances must be calculated. Moreover, identifying the portfolio that minimizes risk for each level of return requires use of an optimization algorithm, and more specifically, quadratic programming.

Although the algorithm used to solve a quadratic programming problem is covered in a course in management science (operations research), it is unnecessary for appreciating how efficient portfolios are constructed. Instead, we will just consider an example to show the results of the optimization process. To do so, we will use our earlier two-asset portfolio illustration, assets 1 and 2. Recall that for two assets,  $E(R_1) = 12\%$ ,  $\sigma(R_1) = 30\%$ ,  $E(R_2) = 18\%$ , and  $\sigma(R_2) = 40\%$ . In the earlier example, we did not make any assumption about the correlation between the two assets. Here, however, we will assume that  $\operatorname{cor}(R_1, R_2) = -0.5$ . The expected portfolio return and the standard deviation for five different portfolios (A, B, C, D, and E) made up of varying proportions of assets 1 and 2 are shown in table 13.1.

Table 13.1 Portfolio expected returns and standard deviations for five asset allocations for assets 1 and 2.

<table><tr><td>Portfolio</td><td>Weight of Asset 1 (\%)</td><td>Weight of Asset 2 (\%)</td><td>E(Rp) (\%)</td><td>σ(Rp) (\%)</td></tr><tr><td>A</td><td>100</td><td>0</td><td>12.0</td><td>30.0</td></tr><tr><td>B</td><td>75</td><td>25</td><td>13.5</td><td>19.5</td></tr><tr><td>C</td><td>50</td><td>50</td><td>15.0</td><td>18.0</td></tr><tr><td>D</td><td>25</td><td>75</td><td>16.5</td><td>27.0</td></tr><tr><td>E</td><td>0</td><td>100</td><td>18.0</td><td>40.0</td></tr></table>

Note:  $E(R_{1}) = 12\%$ ,  $\sigma(R_{1}) = 30\%$ ,  $E(R_{2}) = 18\%$ ,  $\sigma(R_{2}) = 40\%$ , and  $\operatorname{Cor}(R_{1}, R_{2}) = -0.5$ .

# Feasible Portfolios

Any portfolio that an investor can construct given the universe of candidate assets is referred to as a feasible portfolio. The five portfolios shown in table 13.1 are all feasible portfolios in which the risk is measured in terms of the portfolio's standard deviation. The collection of all feasible portfolios is called the set of feasible portfolios, or simply the feasible set.

In our illustration, where only two assets are candidates for inclusion in a portfolio, it is easy to graphically show the set of feasible portfolios. The feasible set, shown in figure 13.1, is a curve that represents those combinations of portfolio risk and expected portfolio return that are attainable by constructing portfolios from all possible combinations of asset 1 and asset 2. The five portfolios in table 13.1 are identified on the curve representing the feasible set. Beginning with portfolio A and proceeding to portfolio E, the allocation to asset 1 goes from  $100\%$  of the portfolio to  $0\%$ , and the allocation to asset 2 goes from  $0\%$  to  $100\%$  therefore, all possible combinations of asset 1 and asset 2 lie between portfolios A and E (i.e., on the curve labeled AE in figure 13.1). In the case of two assets, any other asset allocation to the two assets not lying on this curve is not attainable, because there is no mix of assets 1 and 2 that can be created. It is for this reason that curve AE is the feasible set.

Figure 13.1

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/045904cfd7244835efe4f641a116939cdf2a2c44aa32d5766a3fa8cd5c500cba.jpg)

Feasible and efficient portfolios for assets 1 and 2.

Figure 13.1 shows the feasible set for the two-asset case. The general case, in which there can be more than two assets, is shown in figure 13.2.6 For the general asset case, the feasible set is not a curve as shown in figure 13.1 for the two-asset case but instead is an area as shown by the shaded area in figure 13.2. The reason is that unlike in the two-asset case, it is possible to create portfolios that result in combinations for the expected portfolio return and portfolio risk that not only lie on curve I-II-III in figure 13.2 but also in the shaded area.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/124f1f1c58c5e1138d9458fa1b8816c4e4cbf75a7bfad5430ac6d3a08ba0972b.jpg)

Figure 13.2 Feasible and efficient portfolios with more than two assets.

# Efficient Portfolios

An efficient portfolio is one that gives the highest expected return for the feasible set of portfolios with the same risk. It is also referred to as a Markowitz efficient portfolio and a mean-variance efficient portfolio. For each level of portfolio risk, there is an efficient portfolio, and the collection of all efficient portfolios is referred to as the "set of efficient portfolios," or simply the efficient set or Markowitz efficient set. The efficient set is also referred to as the efficient frontier.

Figure 13.1 shows that part of the feasible set for our two-asset case that represents the efficient set. Although the feasible set is shown by the curve AE, the efficient set is the portion of the curve CE, which is part of the feasible set. Portfolios on this portion of the curve offer the highest expected portfolio return for a given level of portfolio risk. Of the five portfolios shown in table 13.1, only three, portfolios C, D, and E, are part of the efficient set. The reason for excluding the remaining two portfolios of the feasible set from the efficient set—portfolio A, with  $E(R_{p}) = 12\%$  and  $\sigma(R_{p}) = 20\%$ , and portfolio B, with  $E(R_{p}) = 13.5\%$  and  $\sigma(R_{p}) = 19.5\%$ —is because there is at least one portfolio among the efficient set (e.g., portfolio C) that has a higher expected portfolio return and a lower portfolio risk than either portfolio A or portfolio B. Also, portfolio D has a higher expected portfolio return and a lower portfolio risk than portfolio A. In fact, the entire portion of the feasible set represented by curve AC is not efficient, because for any portfolio representing a combination of expected portfolio return and portfolio risk, there is a portfolio among the efficient set that has the same portfolio risk and a higher expected portfolio return, or the same expected portfolio return and a lower portfolio risk, or both. In other words, for any portfolio among the portion of the feasible set given by curve AC (excluding portfolio C), there exists a portfolio that dominates it by having the same expected portfolio return and a lower risk, or the same portfolio risk and a higher expected portfolio return, or a lower portfolio risk as well as a higher expected portfolio return. For example, portfolio D dominates portfolio A, and portfolio C dominates both portfolios A and B.

Again, figure 13.1 represents the special case of only two assets. Figure 13.2 shows the general case. As can be seen, the efficient set is given by curve II-III, because it can be easily observed that all feasible portfolios represented on that portion of the curve dominate the portfolios in the shaded area. Note that any portfolio above the efficient set cannot be constructed, given the expected return and risk for each asset and their correlations.

# Selecting the Optimal Portfolio

It makes economic sense that the portfolio that should be selected by an investor is one on the efficient set (i.e., lies somewhere on the efficient frontier). The efficient portfolios represent a trade-off between expected portfolio return and portfolio risk. How does the investor select which portfolio in the efficient set is the best one? Intuitively, it would seem that one key element missing from the framework described thus far is the investor's tolerance for risk. Well, that is precisely what is missing, and for an investor to select the best portfolio given his or her risk tolerance, risk must be introduced. Remember that in the Markowitz mean-variance framework, risk is the portfolio's variance (or standard deviation) of returns.

In the economic "theory of choice," the concept used to represent a trade-off is an investor's utility function. This concept, first developed by John von Neumann and Oskar Morgenstern,[7] comes to prominence when a decision maker is faced with a set of choices. The decision maker in our case is an investor, and the choices are the efficient portfolios contained in the efficient set. So before we discuss how an investor can select a portfolio from the efficient set, let us review the concept of a utility function.

A utility function assigns a (numerical) value to all possible choices faced by a decision maker, and the larger the assigned value of a particular choice is, the greater will be the utility derived from that choice. The objective is to maximize the decision maker's utility subject to one or more constraints. In introductory microeconomics, utility functions are used to describe the trade-off between different consumer goods with the object of maximizing utility subject to a budget constraint. It is clear in our application to portfolio theory that the trade-off is between a portfolio's expected value and that portfolio's risk. The constraint imposed is that the allocation of the portfolio's funds must be such that the weights (i.e., the  $w_{i}$  in the above equations) sum to 1.

The efficient portfolios offer different levels of portfolio expected return and portfolio risk such that the greater the portfolio's expected return is, the greater will be the portfolio risk. Investors are faced with the decision of choosing one of the efficient portfolios when the portfolio's expected return is a desirable commodity that increases the level of utility, and risk is an undesirable commodity that decreases the level of utility. Therefore, investors obtain different levels of utility from different combinations of expected portfolio return and portfolio risk. The utility obtained from any possible such combination is expressed by the utility function. Put simply, the utility function expresses the preferences of investors for different combinations of perceived portfolio risk and expected return.

Utility functions can be expressed mathematically. However, that is unnecessary for our purpose, which is to understand conceptually the general idea about how the decision is made by an investor. So instead of mathematically expressing a utility function, we will show it graphically. Figure 13.3 shows three curves, labeled  $u_{1}$ ,  $u_{2}$ , and  $u_{3}$ . By convention, the horizontal axis measures portfolio risk, and the vertical axis measures the portfolio expected return. Each curve represents a set of portfolios with different combinations of portfolio risk and expected portfolio return. All points on the same curve identify combinations of portfolio risk and expected portfolio return that, based on the investor's preferences, offer the same level of utility. Because they offer the same level of utility, each curve is referred to as an indifference curve. For example, on the indifference curve  $u_{1}$  in the figure, two points,  $P_{1}$  and  $P_{2}$ , are shown. The two points represent two portfolios, with the portfolio corresponding to  $P_{1}$  having a higher portfolio expected return than the portfolio corresponding to  $P_{2}$  but also having a higher risk. Because the two portfolios lie on the same indifference curve, the investor has an equal preference for (or is indifferent to) the two portfolios—or, for that matter, any portfolio on the curve.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/a6bbfeb3dcbe0364100b2f534a8ca4555578bfd5d1e5902451788a8338414cff.jpg)

Figure 13.3 Selection of the optimal portfolio.

Notice two things about the indifference curves. First, the slope of the indifference curve is positive, and this is so for a rational economic reason: At the same level of utility, the investor requires a higher expected portfolio return in order to accept higher portfolio risk. Second is the positioning of each indifference curve. The utility the investor receives is greater the farther the indifference curve is from the horizontal axis, because that indifference curve represents a higher expected portfolio return at every level of portfolio risk. Thus, for the three indifference curves shown in figure 13.3,  $u_{3}$  has the highest utility and  $u_{1}$  the lowest.

Given a choice from the set of efficient portfolios, the optimal portfolio is the one that is preferred by the investor, where preference is represented by the investor's utility function. Figure 13.3 demonstrates graphically how this is done. The figure shows three indifference curves representing an investor's utility function. Also shown is the (Markowitz) efficient frontier. From this display, it is possible to determine the optimal portfolio for the investor with the indifference curves shown. Remember that the investor wants to get to the highest indifference curve achievable given the efficient frontier. In light of that requirement, the optimal portfolio is represented by the point where an indifference curve is tangent to the efficient frontier. In figure 13.3, that point is portfolio  $P_{\mathrm{MEF}}^*$ . For example, suppose that  $P_{\mathrm{MEF}}^*$  corresponds to portfolio D in figure 13.1. We know from table 13.1 that this portfolio is made up of  $25\%$  of asset 1 and  $75\%$  of asset 2, with  $E(R_p) = 16.5\%$  and  $\sigma(R_p) = 27.0\%$ .

Consequently, for the investor with preferences with respect to portfolio expected return and portfolio risk as determined by the shape of the indifference curves represented in figure 13.3 and expectations for asset 1 and 2 inputs (expected returns and variance-covariance) represented in table 13.1, portfolio D is the optimal portfolio, because it maximizes the investor's utility. If this investor had a different preference for portfolio expected return and portfolio risk, there would have been a different optimal portfolio. For example, figure 13.4 shows the same efficient frontier but with three indifference curves assumed by a different investor. In this case, the optimal portfolio is  $P_{\mathrm{MEF}}^{**}$ , which has a lower portfolio expected return and portfolio risk than  $P_{\mathrm{MEF}}^*$  in figure 13.3. Similarly, if the investor had a different set of input expectations, the optimal portfolio would be different.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/9208cfd306c25d8c5e575cc791f93f5269551af7b89b42b216ea227d59bc7ffd.jpg)

Figure 13.4 Selection of the optimal portfolio with different indifference curves (utility function).

At this point in our discussion, it is natural to ask: How do we estimate an investor's utility function so that the indifference curves can be determined? Unfortunately, there is little guidance about how to construct a utility function. In general, economists have not successfully estimated utility functions. The inability to estimate utility functions does not mean that the theory is flawed. What it does mean is that once an investor constructs the efficient frontier, the investor will subjectively determine which efficient portfolio is appropriate in relation to his or her tolerance for risk.

# Criticisms of Portfolio Theory

As formulated by Markowitz and described in the previous section, portfolio theory is a normative theory. That is, it is a theory that describes a norm of behavior investors should pursue when constructing a portfolio. And if investors do follow that norm of behavior when making portfolio allocation decisions, the portfolio selected should be an efficient portfolio. So the criticisms of portfolio theory focus on the assumptions on which the theory is built. After we discuss these criticisms, we'll look at the issues associated with implementing modern portfolio theory.

Certain assumptions made in portfolio theory have been identified earlier in the chapter: the mean-variance, risk aversion, homogeneous expectations, one-period horizon, and optimization assumptions. The mean-variance, homogeneous expectations, and one-period horizon assumptions have come under most attack. We discuss these criticisms, and then describe an alternative view of the investment decision-making process known as behavioral finance.

The mean-variance assumption states that the appropriate measure of risk considered by an investor is the variance of the distribution of portfolio returns. The limitations on the use of variance as a measure of risk were thoroughly described in chapter 12.

The homogeneous expectations assumption holds that every investor has the same expectations about the inputs: means, variances, and correlations of returns. Insofar as investors typically do not have access to the same data, it is unlikely that this assumption holds. With regard to the one-period assumption, the theory does not specify what that period is.

In addition to theoretical issues, there are practical issues associated with implementing the mean-variance model. Specifically, estimation errors in the forecasts significantly affect the resulting portfolio weights. Studies have shown that estimation errors for the expected returns tend to exert more influence than estimation errors for the variances and covariances.[9] Furthermore, it turns out that errors in the variances are about twice as important as errors in the covariances.[10] Hence, some portfolio managers refer to mean-variance optimization techniques as "error maximizers"[11] that can produce extreme or nonintuitive weights for some assets in the portfolio.

Because of estimation errors, studies have raised concerns as to whether simply weighting each security equally in a portfolio would do as well as a portfolio constructed by applying the Markowitz framework for determining optimal weights. Several studies since the early 1980s have found that naive diversification (i.e., an equally weighted portfolio) often outperforms portfolios created by employing mean-variance analysis. $^{12}$

Behavioral Finance Theory and Investor Decision Making

One of the earliest attacks on the foundations of economic principles that financial economists use when formulating financial theories came in the late 1970s from Daniel Kahneman and Amos Tversky. In numerous experiments, these two psychologists demonstrated that the actions of decision makers are inconsistent with the assumptions made by economists. They then formulated a theory, known as "prospect theory," that attacks expected utility theory.[13]

Other attacks on the assumptions of standard financial theory from the field of psychology led to the specialized field in finance known as behavioral finance. Behavioral finance looks at how psychology affects investor decisions and the implications not only for the portfolio theory we describe in this chapter but also for asset pricing theory (explained in chapter 14), option pricing theory (explained in chapter 34), and market efficiency. The foundations of behavioral finance lie in the research of Kahneman, Paul Slovic, and Tversky.[14]

Hersh Shefrin notes the following three themes in the behavioral finance literature:[15]

Behavioral Finance Theme 1: Investors err when making investment decisions, because they rely on rules of thumb.

Behavioral Finance Theme 2: Investors are influenced by form as well as substance when making investment decisions.

Behavioral Finance Theme 3: Prices in the financial market are affected by errors and decision frames.

The first behavioral finance theme involves heuristics. This term means a rule-of-thumb strategy or a good guide to follow to shorten the time it takes to make a decision. For example, here are three rules of thumb provided on the MSN Money website for increasing the likelihood of success when investing in common stock: (1) ignore guru predictions, (2) avoid cheap stocks, and (3) follow the big players.[16] For retirement planning, a rule of thumb that has been suggested for having enough to retire is to invest  $10\%$  of annual pre-tax income. As for what to invest in to reach that retirement goal (i.e., the allocation among asset classes), a suggested rule of thumb is that the percentage an investor should allocate to bonds should be determined by subtracting the investor's age from 100. So, for example, a 45-year-old individual should invest  $55\%$  of his or her retirement funds in bonds.

These are examples of heuristics, and in some circumstances, such rules of thumb or quick guides can work fairly well. However, the psychology literature tells us that heuristics can also lead to systematic biases in decision making, or what psychologists refer to as cognitive biases. In the context of finance, these biases lead to errors when making investment decisions. Shefrin refers to these biases as heuristic-driven biases.

Let's recall the assumptions about investor behavior underlying modern portfolio theory, which we referred to earlier. The first assumption, the mean-variance assumption, is that an investor computes the mean and variance of the return of financial assets and constructs an optimal portfolio based on that statistical information. Behavioral finance, however, finds that investors do not make such mean-variance calculations but instead rely on heuristics to guide their portfolio choice.

The second behavioral finance theme involves the concept of framing. The term framing as used here refers to the way in which a situation or choice is presented to an investor. Behavioral finance asserts that the framing of investment choices can result in significantly different assessments by an investor as to the risk and return of each choice and therefore the ultimate decision made.[17] Hersh Shefrin and Meir Statman provide an example of faulty framing coupled with a cognitive bias.[18] Individual investors often fail to treat the value of their stock portfolio at market value. Instead, investors have a "mental account," in which they continue to mark the value of each stock in their portfolio at the purchase price despite the change in the market value. The reason they are reluctant to acknowledge any losses on stocks they own is that it keeps alive the hope that those stocks will turn around to realize a gain. When they finally sell their losing stocks, they close the mental account, and only at that time acknowledge a loss that had hitherto occurred only on paper. Hence, investment decisions are affected by this mental accounting rather than being based on the true economic impact that an investment decision would have on the investor. Behavioral finance assumes that such "frame dependence" plays a role in making investment decisions, and hence the second theme of behavioral finance carries that name. In contrast, standard finance theory assumes frame independence. Frame independence means that investors "view all decisions through the transparent, objective lens of risk and return." $^{19}$

Finally, the third theme of behavioral finance shows how errors caused by heuristics and framing dependence affect the pricing of assets. In chapter 18, we discuss the pricing efficiency of markets. According to behavioral finance, asset prices do not reflect their fundamental value because of the way investors make decisions. That is, markets will be price inefficient. Hence, Shefrin labels the third behavioral finance theme "inefficient markets."

Behavioral finance can explain investor behavior that is inconsistent with what mean-variance analysis would suggest. Here is one example. It is estimated that if investors follow the mean-variance framework, they should hold more than 300 stocks. Yet it is reported that the average investor holds only three or four stocks. This puzzle, labeled the diversification puzzle, can be explained in the context of behavioral finance. More specifically, the theory of portfolio selection as set forth by behavioral finance theorists, called "behavioral portfolio theory," asserts that investors construct their portfolios as layered pyramids. The objective of the pyramid's bottom layers is to provide downside protection, and the objective of the pyramid's top layers is to provide upside potential. In lieu of traditional risk aversion, in behavioral portfolio theory, the motivation when constructing portfolios is not the attitude of investors toward risk but rather the aspirations of investors. In the context of behavioral portfolio theory, investors place at the top of the pyramid a few stocks of an undiversified portfolio; other investors operationalize aspirations by buying lottery tickets. Either type of behavior on the part of investors—maintaining an undiversified portfolio or buying lottery tickets—can be explained by behavioral portfolio theory, not by mean-variance analysis.

That leaves us with two theories. Who is right, supporters of standard finance theory or supporters of behavioral finance theory? In fairness, we have not provided the responses of the supporters of standard finance theory to the criticisms of those who support behavioral finance. Nor have we presented the attacks on behavioral finance. Fortunately, David Hirshleifer does provide that analysis. He describes the common objections to both approaches. He refers to the standard finance theory as the "fully rational approach" and behavioral finance as the "psychological approach."[20] A criticism of both approaches is that they can go "theory fishing" to find theories in market data to support their position. Objections to the fully rational approach are (1) the calculations needed to implement this approach are extremely difficult to do, and (2) the empirical evidence in the finance literature does not support rational behavior by investors. Objections to the psychological approach, according to Hirshleifer, are (1) alleged psychology biases are arbitrary, and (2) the experiments performed by researchers that find alleged psychological biases are arbitrary.

# Key Points
- Portfolio theory, developed by Harry Markowitz, explains how investors should construct efficient portfolios and select the best or optimal portfolio from among all efficient portfolios.
- Markowitz portfolio theory differs from previous approaches to portfolio selection in that Markowitz demonstrated how the key parameters to the portfolio selection problem should be measured.
- Only two statistical moments are used to construct a portfolio, expected return and risk as measured by the variance (or standard deviation) of returns, and hence the technique is referred to as "mean-variance analysis."
- A basic assumption of portfolio theory is that an investor's preferences for portfolios with different expected returns and variances can be represented by a function (the utility function). Another basic assumption is that investors are risk averse.
- The goal of diversifying a portfolio is to reduce a portfolio's risk without sacrificing its expected return.
- The goal of portfolio selection can be cast in terms of not just the expected return and variance of returns but also the correlation (or covariance) between assets.
- A portfolio's expected return is simply a weighted average of the expected return of each asset in the portfolio, with the weight assigned to each asset being equal to the market value of the asset in the portfolio relative to the total market value of the portfolio.
- The risk of an asset is measured by the variance or standard deviation of its return. Unlike the expected return, a portfolio's risk is not a simple weighting of the standard deviation of the individual assets in the portfolio.
- Portfolio risk is affected by the correlation between the assets in the portfolio: the lower the correlation is, the smaller the portfolio risk will be.
- A criticism of the mean-variance framework is that it ignores such moments as skewness and fat tails that have been observed for asset returns in real-world financial markets.
- Proponents of behavioral finance have attacked mean-variance analysis because in their view, investors do not make investment decisions in the manner assumed by portfolio theory.
- In practice, the Markowitz framework has been extended to take into account transaction costs, tax effects when rebalancing a portfolio, constraints, and short selling.
- One of the most serious difficulties encountered when implementing the Markowitz framework (as it would be for any framework requiring estimates) is the impact of forecasts for the individual means, standard deviations, and pairwise correlations on the portfolios generated.

# Questions

1. Professor Harry Markowitz, corecipient of the 1990 Nobel Prize in Economics, wrote the following:

A portfolio with 60 different railway securities, for example, would not be as well diversified as the same size portfolio with some railroad, some public utility, mining, various sorts of manufacturing, etc.[21]

Why is this true?

2. Two portfolio managers are discussing modern portfolio theory. Manager A states that the objective of Markowitz portfolio analysis is to construct a portfolio that maximizes expected portfolio return for a given level of portfolio risk. Manager B disagrees, believing that the objective is to construct a portfolio that minimizes portfolio risk for a given level of expected portfolio return. Which portfolio manager is correct?
3. What is meant by a "risk-averse investor"?
4. What is meant by a "Markowitz efficient frontier"?
5. Explain why not all feasible portfolios are on the Markowitz efficient frontier.
6. What is meant by an "optimal portfolio," and how is it related to an efficient portfolio?
7. a. How does an investor select an optimal portfolio?

b. Explain the role of an investor's preference when selecting an optimal portfolio.

8. Explain the critical role of the correlation between assets when determining the potential benefits from diversification.
9. "The maximum diversification benefits will be achieved if asset returns are perfectly correlated." Explain why you agree or disagree with this statement.
10. Investment advisers who argue for investing in a portfolio consisting of both stocks and bonds point to the fact that the correlation of returns between these two asset classes is less than 1, and therefore such a portfolio provides the benefits of diversification.

a. What does the correlation of the returns between two asset classes measure?

b. In what sense would a correlation of return of less than 1 between stocks and bonds suggest potential diversification benefits?

11. Suppose we have the following information for two assets, 1 and 2:

<table><tr><td>Asset</td><td>E(R) (\%)</td><td>σ (R) (\%)</td><td>Weight (\%)</td></tr><tr><td>1</td><td>8</td><td>20</td><td>60</td></tr><tr><td>2</td><td>11</td><td>28</td><td>40</td></tr></table> a. What is the portfolio variance and standard deviation if the correlation between the two assets is  $-1$ ?

b. What is the portfolio variance and standard deviation if the correlation between the two assets is 0?

c. What is the portfolio variance and standard deviation if the correlation between the two assets is 1?

d. Comment on what happens to the portfolio standard deviation as the correlation increases from  $-1$  to  $1$ .

e. What is the portfolio expected return if the correlation between the two assets is  $-1, 0,$  or  $1$ ?

12. The following excerpt is from Warren Bailey and Rene M. Stulz:

Recent international diversification literature uses monthly data from foreign stock markets to make the point that American investors should hold foreign stocks to reduce the variance of a portfolio of domestic stocks without reducing its expected return.[22] a. Why would you expect that the justification of diversifying into foreign stock markets would depend on empirical evidence regarding the ability to "reduce the variance of a portfolio of domestic stocks without reducing its expected return"?

b. Typically in research papers that seek to demonstrate the benefits of international diversification through investing in a foreign stock market, two efficient frontiers are compared. One is an efficient frontier constructed using only domestic stocks, the other is an efficient frontier constructed using both domestic and foreign stocks. If benefits can be realized by diversifying into foreign stocks, should the efficient frontier constructed using both domestic and foreign stocks lie above or below the efficient frontier constructed using only domestic stocks? Explain your answer.

13. The following excerpt is from John E. Hunter and T. Daniel Coggin:

The extent to which investment risk can be diversified depends upon the degree to which national markets were completely dominated by a single world market factor (i.e., if all cross-national correlations were 1.00), then international diversification would have no benefit. If all national markets were completely independent (that is, if all cross-national correlations were zero), then international diversification over an infinite number of countries would completely eliminate the effect of variation in national markets.[23]

a. Why are the "cross-national correlations" critical in justifying the benefits from international diversification?

b. Why do Hunter and Coggin argue that no benefit results from international diversification if these correlations are all 1.00?

14. Indicate why you agree or disagree with the following statement: "Because it is difficult to determine an investor's utility function, Markowitz portfolio theory cannot be employed in practice to construct a Markowitz efficient portfolio."
15. The following is an excerpt from Marshall E. Blume regarding the Prudent Man Rule:

According to this rule, a trust manager must invest in each asset on its own merit. If each asset is safe, then the total portfolio will be safe. For example, futures cannot be used under the Prudent Man rule because they are inherently risky—even though investment managers now know that when futures are combined with other assets, they can reduce portfolio risk.

···

Markowitz focused on the portfolio as a whole, not explicitly on the individual assets in the portfolio, which was clearly at odds with the Prudent Man rule for personal trusts. In fact, under the Employee Retirement Income Security Act passed in the mid-1970s, investing in derivatives to reduce the risk of a portfolio was, for the most part, legally imprudent.[24]

Why is the prudent man rule for investing personal trusts in conflict with the way to construct a portfolio as suggested by Markowitz portfolio theory?

16. How does the behavioral finance approach differ from the standard finance theory approach?
17. What is meant by the "diversification puzzle"?
18. What have been the major impediments to applying the mean-variance framework in practice?
19. The excerpts here and below are from Dickson H. Leavens, "Diversification of Investments," Trusts and Estates 80 (1945): 469-473.
20. A similar framework for portfolio theory was set forth at the same time Andrew D. Roy, "Safety First and the Holding of Assets," Econometrica 20 (1952): 431-449.
21. Note that figure 13.2 is for illustrative purposes only. The actual shape of the feasible set will depend on the expected return and standard deviation of returns for the assets chosen and the correlation between all pairs of asset returns.
22. John von Neumann and Oskar Morgenstern, Theory of Games and Economic Behavior (Princeton, NJ: Princeton University Press, 1944).
23. In chapter 15, which describes the theory of interest rates, we will see another application of utility functions.
24. See, for example, Michael J. Best and Robert T. Grauer, "The Analytics of Sensitivity Analysis for Mean-Variance Portfolio Problems," International Review of Financial Studies 4 (1991): 315-342.
25. See, for example, Vijay K. Chopra and William T. Ziemba, "The Effect of Errors in Means, Variances, and Covariances on Optimal Portfolio Choice," Journal of Portfolio Management 19 (1993): 6-11.
26. Richard Michaud, Efficient Asset Allocation: A Practical Guide to Stock Portfolio Optimization and Asset Allocation (Boston: Harvard Business School Press, 1998).
27. See, for example, Victor DeMiguel, Lorenzo Garlappi, and Raman Uppal, "Optimal versus Naive Diversification: How Inefficient Is the  $1/N$  Portfolio Strategy?" Review of Financial Studies 22 (2009): 1915-1953.
28. Daniel Kahneman and Amos Tversky, "Prospect Theory: An Analysis of Decision under Risk," Econometrica 47, no. 2 (1979): 236-291. See also Daniel Kahneman and Amos Tversky, "Advances in Prospect Theory: Cumulative Representation of Uncertainty," Journal of Risk and Uncertainty 5 (1992): 297-323.
29. Daniel Kahneman, Paul Slovic, and Amos Tversky, Judgment under Uncertainty: Heuristics and Biases (New York: Cambridge University Press, 1982).
30. Hersh Shefrin, Beyond Greed and Fear: Understanding Behavioral Finance and the Psychology of Investing (New York: Oxford University Press, 2002), 4-5.
31. Harry Domash, "10 Rules for Picking Stock Winners," MSN Money, September 27, 1997.
32. See Amos Tversky and Daniel Kahneman, "The Framing of Decisions and the Psychology of Choice," Science 211 (1961): 453–458; and Amos Tversky and Daniel Kahneman, "Rational Choice and the Framing of Decisions," Journal of Business 59, pt. 2 (October 1986): S251–S278.
33. Hersh Shefrin and Meir Statman, "The Disposition to Sell Winners Too Early and Ride Losers Too Long: Theory and Evidence," Journal of Finance 40, no. 3 (1985): 777-790.
34. Shefrin, Beyond Greed and Fear, 4.
35. See table 1 in David Hirshleifer, "Investor Psychology and Asset Pricing," Journal of Finance 56, no. 4 (2001): 1533-1597.
36. Harry M. Markowitz, "Portfolio Selection," Journal of Finance 7, no. 1 (1952): 89.
37. Warren Bailey and Rene M. Stulz, "Benefits of International Diversification: The Case of Pacific Basin Stock Markets," Journal of Portfolio Management 16, no. 4 (1990): 57-61.
38. John E. Hunter and T. Daniel Coggin, "An Analysis of the Diversification from International Equity Investment," Journal of Portfolio Management 17 (1990): 33-36.
39. Marshall E. Blume, "The Capital Asset Pricing Model and the CAPM Literature," in The CAPM Controversy: Policy and Strategy Implications for Investment Management, ed. Diana R. Harrington and Robert A. Korajczyk (Charlottesville, VA: Association for Investment Management and Research, 1993), 5.


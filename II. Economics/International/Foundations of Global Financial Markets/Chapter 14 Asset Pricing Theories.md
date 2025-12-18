---
aliases:
  - Asset Pricing Theories
tags:
key_concepts:
parent_directory: "[[II. Economics/International/Foundations of Global Financial Markets]]"
cssclasses: academia
title: "Chapter 14: Asset Pricing Theories"
linter-yaml-title-alias: "Chapter 14: Asset Pricing Theories"
---

# 14

# Asset Pricing Theories

# CONTENTS

# Learning Objectives

# Economic Assumptions

Assumptions about Investor Behavior

Assumptions about Capital Markets

# Capital Market Theory

Deriving the Formula for the CML

Interpreting the CML Equation

# The Capital Asset Pricing Model

Systematic and Unsystematic Risk

Quantifying systematic risk

Estimating beta

The Security Market Line

The SML, CML, and Market Model

Tests of the CAPM

# The Arbitrage Pricing Theory Model

Comparison of the APT Model and CAPM

Advantages of the APT Model

# Factor Models in Practice

Statistical Factor Models

Macroeconomic Factor Models

Fundamental Factor Models

# Some Principles to Take Away

# Key Points

# Questions

# Learning Objectives

After reading this chapter, you will understand: the assumptions underlying capital market theory;

- the capital market line and the role of a risk-free asset in its construction;
- why the capital market line dominates the Markowitz efficient frontier;
- what the security market line is;
- the difference between systematic and unsystematic risk;
- the capital asset pricing model (CAPM), the relevant measure of risk in this model, and the limitations of the model;
- what the market model is;
- the findings of empirical tests of the CAPM and the difficulties of testing this model; the arbitrage pricing theory model;
- the different types of factor models used in practice: statistical, macroeconomic, and fundamental; and
- some fundamental principles concerning risk and return that are valid regardless of the asset pricing model used.

In chapter 13, we explained portfolio selection theory. In this chapter, we describe capital market theory and the implications of both that theory and portfolio theory for the pricing of financial assets. Most of this chapter focuses on asset pricing models that are equilibrium models. Given assumptions about the behavior and expectations of investors, and assumptions about capital markets, these models predict the expected return an investor should require. Thus, the models provide an answer to the question of what risk premium an investor should demand. Knowing the expected cash flow and the expected return, one can determine the theoretical value of an asset; therefore, these models are referred to as "asset pricing models."

Economic theories are an abstraction of the real world and as such are based on some simplifying assumptions. These assumptions simplify matters a great deal, and some of them may even seem unrealistic. However, they make economic theories more tractable from a mathematical standpoint. Some of the assumptions discussed in this chapter are precisely those criticized by proponents of behavioral finance. It should be noted that although we call these assumptions "behavioral assumptions," they are the behavioral assumptions made by standard finance, or what we mentioned in the previous chapter as the fully rational approach. They are not the assumptions of those who advocate behavioral finance.

Assumptions about Investor Behavior

When constructing a portfolio of risky assets, capital market theory makes the following assumptions about the behavior of investors.

Behavioral Assumption 1: Capital market theory assumes that investors make investment decisions based on two parameters: the expected return and the variance of returns. Portfolio theory, described in chapter 13, is sometimes referred to as a mean-variance model. This assumption tells us what investors use as inputs when making their investment decisions. Their specific behavior follows from the assumption that to accept greater risk, they must be compensated by the opportunity of realizing a higher return. We refer to such investors as risk averse. This definition is oversimplified. A more rigorous definition of risk aversion is described by a mathematical specification of an investor's utility function. However, this complexity need not concern us here. What is important is that an investor who faces a choice between two portfolios with the same expected return will (it is assumed) select the portfolio with the lower risk.

Behavioral Assumption 2: Capital market theory assumes that the risk-averse investor subscribes to the method of reducing portfolio risk by combining assets with counterbalancing correlations, as explained in chapter 13.

Behavioral Assumption 3: Capital market theory assumes that all investors make investment decisions over some single-period investment horizon. The length of that period (six months, one year, two years, etc.) is not specified. In reality, the investment decision process is more complex, with many investors looking at more than one investment horizon. Nonetheless, the assumption of a one-period investment horizon is necessary to simplify the mathematics of the theory.

Behavioral Assumption 4: Capital market theory assumes that all investors have the same expectations with respect to the inputs that are used to derive the Markowitz efficient portfolios, namely, asset returns, variances, and correlations. This is the homogeneous expectation assumption.

# Assumptions about Capital Markets

The four behavioral assumptions listed above deal with the behavior of investors when making investment decisions. It is also necessary to make assumptions about the characteristics of the capital market in which investors transact. The three assumptions in this regard are as follows.

Capital Market Assumption 1: Capital market theory assumes that the capital market is perfectly competitive. In general, the number of buyers and sellers is sufficiently large, and all investors are small enough relative to the market, that no individual investor can influence an asset's price. Consequently, all investors are price takers, and the market price is determined where supply equals demand.

Capital Market Assumption 2: Capital market theory assumes that no transaction costs or impediments interfere with the supply and demand for an asset. Economists refer to these various costs and impediments as "frictions." The costs associated with frictions generally result in buyers paying more than they would in the absence of frictions and sellers receiving less. In the case of financial markets, frictions include commissions charged by brokers and the bid-ask spreads charged by dealers. They also include taxes and government-imposed transfer fees.

Capital Market Assumption 3: Capital market theory assumes that a risk-free asset exists in which investors can invest. Moreover, it assumes that investors can borrow funds at the same interest rate offered on that risk-free asset. That is, it assumes that investors can lend and borrow at some risk-free rate.

# Capital Market Theory

According to portfolio theory as formulated by Markowitz, an investor should create a portfolio with the highest expected return for a given level of risk, where risk is measured by the portfolio's variance. In chapter 13, we did not consider the possibility of constructing efficient portfolios in the presence of a risk-free asset, that is, an asset whose return is known with certainty.

In the absence of a risk-free rate, portfolio theory tells us that Markowitz efficient portfolios can be constructed by using expected portfolio return and portfolio variance. Once a risk-free asset is introduced, and assuming that investors can borrow and lend at the risk-free rate (capital market assumption 3), the conclusion of portfolio theory can be qualified as illustrated in figure 14.1. Every combination of the risk-free asset and the Markowitz efficient portfolio  $M$  is shown on the tangent line in the figure. This line is drawn from the vertical axis as the risk-free rate tangent to the Markowitz efficient set, also referred to as the "efficient frontier." The point of tangency is denoted by  $M$ . All portfolios on the line are feasible for the investor to construct. Portfolios to the left of  $M$  represent combinations of risky assets and the risk-free asset. Portfolios to the right of  $M$  include purchases of risky assets made with funds borrowed at the risk-free rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/79244d35b6422feff77f574ee4976c40fe19e4214275244a2d8b965a293c8ebb.jpg)

Figure 14.1

The capital market line.

Note: Portfolios to the right of  $M$  are leveraged portfolios (borrowing at the risk-free rate to buy a market portfolio). Portfolios to the left of  $M$  are combinations of the risk-free asset and the market portfolio.

Now let's compare a portfolio on the line to the portfolio on the Markowitz efficient frontier with the same risk. As an example, we'll compare portfolio  $P_A$ , which is on the Markowitz efficient frontier, with portfolio  $P_B$ , which is on the line and therefore has some combination of the risk-free rate and the Markowitz efficient portfolio  $M$ . Notice that for the same risk, the expected return is greater for  $P_B$  than for  $P_A$ . In fact, this dominance is true for all but one portfolio on the line, portfolio  $M$ , which is on the Markowitz efficient frontier.

Recognizing this preference, we must modify the conclusion from portfolio theory that an investor will select a portfolio on the Markowitz efficient frontier, depending on the investor's level of risk aversion. With the introduction of the risk-free asset, we can now say that an investor will select a portfolio on the line representing a combination of borrowing or lending at the risk-free rate and purchases of the Markowitz efficient portfolio  $M$ . The particular efficient portfolio that the investor will select on the line depends on the investor's risk preference.

Several studies have demonstrated that the opportunity to borrow or lend at the risk-free rate implies a capital market in which risk-averse investors will prefer to hold portfolios consisting of combinations of the risk-free asset and some portfolio  $M$  on the Markowitz efficient frontier. Sharpe called the line from the risk-free rate to portfolio  $M$  on the efficient frontier the capital market line (CML), the name adopted by the industry.

One more key question remains: How does an investor construct portfolio  $M$ ? Eugene Fama answered this question by demonstrating that  $M$  must consist of all assets available to investors, and each asset must be held in proportion to its market value relative to the total market value of all assets. So, for example, if the total market value of some asset is  \$500 million and the total market value of all assets is$ X, then the percentage of the portfolio that should be allocated to that asset is \$500 million divided by $X. Because portfolio  $M$  consists of all assets, it is referred to as the market portfolio.

Now we can restate how a risk-averse investor who makes investment decisions as suggested by portfolio theory and who can borrow and lend at the risk-free rate should construct efficient portfolios. This process combines an investment in the risk-free asset with the market portfolio. The theoretical result that all investors will hold a combination of the risk-free asset and the market portfolio is known as the two-fund separation theorem, with one fund consisting of the risk-free asset and the other consisting of the market portfolio. Although all investors will select a portfolio on the CML, the optimal portfolio for a specific investor is the one that will maximize that investor's risk preference.

Deriving the Formula for the CML

Figure 14.1 graphically shows us the CML, but we can derive a formula for the CML algebraically as well. This formula will be key to achieving our goal of showing how a risky asset should be priced.

To derive the formula for the CML, we combine the two-fund separation theorem with the assumption of homogeneous expectations (behavioral assumption 4). Suppose an investor creates a two-fund portfolio: a portfolio consisting of  $w_{F}$  invested in the risk-free asset and  $w_{M}$  invested in the market portfolio, where  $w$  represents the corresponding percentage (weight) of the portfolio allocated to each asset. Thus,

$$ w _ {F} + w _ {M} = 1, \mathrm {o r} w _ {F} = 1 - w _ {M}.
$$

What are the expected return and the risk of this portfolio? As we explained in chapter 13, the expected return is equal to the weighted average of the two assets. Therefore, for our two-fund portfolio, the expected portfolio return,  $E(R_{p})$ , is equal to

$$
E (R _ {p}) = w _ {F} R _ {F} + w _ {M} E (R _ {M}).
$$

Because we know that  $w_{F} = 1 - w_{M}$ , we can rewrite  $E(R_{p})$  as follows:

$$
E (R _ {p}) = (1 - w _ {M}) R _ {F} + w _ {M} E (R _ {M}),
$$ which can be simplified to


$$

E \left(R _ {p}\right) = R _ {F} + w _ {M} \left[ E \left(R _ {M}\right) - R _ {F} \right]. \tag {14.1}

$$

Now that we know the expected return of our hypothetical portfolio, we turn to the portfolio's risk as measured by the variance of the portfolio. We know from equation (13.4) how to calculate the variance of a two-asset portfolio. We repeat equation (13.4) here:

$$

\sigma^ {2} (R _ {p}) = w _ {1} ^ {2} \sigma^ {2} (R _ {1}) + w _ {2} ^ {2} \sigma^ {2} (R _ {2}) + 2 (w _ {1}) (w _ {2}) \sigma (R _ {1}) \sigma (R _ {2}) \operatorname {c o r} (R _ {1}, R _ {2}),

$$

We can use this equation for our two-fund portfolio. Asset 1 in this case is the risk-free asset  $F$ , and asset 2 is the market portfolio  $M$ . Then,

$$

\sigma^ {2} (R _ {p}) = w _ {F} ^ {2} \sigma^ {2} (R _ {F}) + w _ {M} ^ {2} \sigma^ {2} (R _ {M}) + 2 (w _ {F}) (w _ {M}) \sigma (R _ {M}) \sigma (R _ {F}) \operatorname {c o r} (\mathsf {R} _ {F}, R _ {M}),

$$

We know that the variance of the risk-free asset,  $\sigma^2 (R_F)$ , is equal to zero, because no possible variation in the return results when the future return is known. The correlation between the risk-free asset and the market portfolio, cor  $(R_{F},R_{M})$ , is zero, because the risk-free asset has no variability and therefore does not move at all with the return on the market portfolio, which is a risky asset. Substituting these two values into the formula for the portfolio's variance results in the following:

$$

\sigma^ {2} (R _ {p}) = w _ {M} ^ {2} \sigma^ {2} (R _ {M}).

$$

In other words, the variance of the two-fund portfolio is represented by the weighted variance of the market portfolio. We can solve for the weight of the market portfolio by substituting standard deviations for variances.


Because the standard deviation is the square root of the variance, we can write:

$$

\sigma (R _ {p}) = w _ {M} \sigma (R _ {M})

$$ and therefore


$$ w _ {M} = \sigma (R _ {p}) / \sigma (R _ {M})
$$

Now let's return to equation (14.1) and substitute for  $w_{M}$  the result we just derived:

$$
\sigma \left(R _ {p}\right) = w _ {M} \sigma \left(R _ {M}\right)
$$

Rearranging, we get

$$
E \left(R _ {p}\right) = R _ {F} + \frac {E \left(R _ {M}\right) - R _ {F}}{\sigma \left(R _ {M}\right)} \sigma \left(R _ {p}\right). \tag {14.2}
$$

This equation yields the CML.

Interpreting the CML Equation

Capital market theory assumes that all investors hold the same expectations for the inputs into the model (behavioral assumption 4). With homogeneous expectations,  $\sigma(R_M)$  and  $\sigma(R_p)$  are the market's consensus for the expected return distributions for the market portfolio and portfolio  $p$ . The slope of the CML is given by

$$
\frac {E (R _ {M}) - R _ {F}}{\sigma (R _ {M})}.
$$

Let's examine the economic meaning of the slope. The numerator is the expected return of the market beyond the risk-free return. It provides a measure of the risk premium, or the reward for holding the risky market portfolio rather than the risk-free asset. The denominator is the risk of the market portfolio. Thus, the slope measures the reward per unit of market risk. Because the CML represents the return offered to compensate for a perceived level of risk, each point on the line is a balanced market condition, or equilibrium. The slope of the line determines the additional return needed to compensate for a unit change in risk. For this reason, the slope of the CML is also referred to as the market price of risk.

The CML says that the expected return on a portfolio is equal to the risk-free rate plus a risk premium. As noted in chapter 13, we seek a measure of the risk premium. According to capital market theory, the risk premium is equal to the market price of risk times the quantity of risk for the portfolio (as measured by the standard deviation of the portfolio). That is,

[ E(R_{p}) = R_{F} + \text{Market price of risk} \times \text{Amount of portfolio risk}. ]

# The Capital Asset Pricing Model

Up to this point, we know how a risk-averse investor who makes decisions based on two parameters, risk and expected return, should construct an efficient portfolio: by using a combination of the market portfolio and the risk-free rate. Based on this result, we can derive a model that shows how a risky asset should be priced. In the process of doing so, we can refine our thinking about the risk associated with an asset. Specifically, we can show that the appropriate risk that investors should be compensated for accepting is not the variance of an asset's return but some other quantity. To illustrate, we need to take a closer look at portfolio risk.

# Systematic and Unsystematic Risk

In Markowitz portfolio theory, variance of return is the measure of risk used. This risk measure can be decomposed into two general types of risk: systematic risk and unsystematic risk.

Systematic risk is the portion of an asset's return variability that can be attributed to a common factor. It is also called undiversifiable risk. Systematic risk is the minimum level of risk that can be obtained for a portfolio by means of diversification across a large number of randomly chosen assets. Thus, systematic risk results from general market and economic conditions that cannot be diversified away.

The portion of an asset's return variability that can be diversified away is referred to as unsystematic risk. It is also sometimes called diversifiable risk, residual risk, idiosyncratic risk, or company-specific risk. This is the risk that is unique to a company, such as a strike, an unfavorable outcome of litigation, or a natural catastrophe. Some examples of this type of risk in real life are the product tampering involving Tylenol capsules

(manufactured by Johnson & Johnson) in October 1982 and the chemical accident at the Union Carbide plant in Bhopal, India, in December 1984. Both of these unforeseeable and hence unexpected tragedies negatively affected the stock prices of the two companies involved.

Figure 14.2 depicts how diversification reduces unsystematic risk for portfolios as more securities are added to a portfolio. It shows total portfolio risk declining as the number of holdings increases. Increasing diversification gradually tends to eliminate unsystematic risk, leaving only systematic risk. The remaining variability results from the fact that the return on nearly every security depends to some degree on the overall performance of some common factor, and that common factor is the general market. Consequently, the return on a well-diversified portfolio is highly correlated with the market, and its variability or uncertainty is basically the uncertainty of the market as a whole. For this reason, systematic risk is also referred to as market risk. Investors are exposed to market risk no matter how many stocks they hold, which is why systematic risk is referred to as "nondiversifiable risk."

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/f7f557fbafb8cbc9fb33dfc336316e74f69cd0ba61b9a5f3164f464e9561b472.jpg)

Figure 14.2 Systematic and unsystematic portfolio risk.

Empirical studies of returns from investing in common stocks support these statements about systematic and unsystematic risk. The major findings of the studies on the impact of diversification on the risk of a portfolio of common stock are as follows:

1. The average return is unrelated to the number of issues in the portfolio, yet the standard deviation of return declines as the number of holdings increases.
2. At a portfolio size of about 20 randomly selected common stocks, the level of total portfolio risk is reduced such that what is left is systematic risk.
3. For individual stocks, the average ratio of systematic risk to total risk is about  $30\%$ .
4. On average, approximately  $40\%$  of the single-security risk is eliminated by forming randomly selected portfolios of 20 stocks.
5. The return on a diversified portfolio follows the market closely, with the ratio of systematic risk to total risk exceeding  $90\%$ .

Quantifying systematic risk Systematic risk can be quantified by dividing security return into two parts: one part perfectly correlated with and proportional to the market return and a second part independent from (uncorrelated with) the market. The first component of return is usually referred to as "systematic return" and the second as "unsystematic return" or "diversifiable return." Thus we have the following:

Security return  $=$  Systematic return + Unsystematic return. (14.3)

As the systematic return is proportional to the market return, it can be expressed as the symbol beta  $(\beta)$  times the market return,  $R_{M}$ . The proportionality factor beta is a market sensitivity index, indicating how sensitive the security return is to changes in the market level. (How to estimate beta for a security or portfolio will be discussed later.) The unsystematic return, which is independent of market returns, is usually represented by the symbol epsilon followed by a prime  $(\varepsilon')$ . Thus, the security return,  $R$ , may be expressed as

$$
R = \beta R _ {M} + \varepsilon^ {\prime}. \tag {14.4}
$$

For example, if a security has a beta of 2.0, then a  $10\%$  market return will generate a  $20\%$  systematic return for the stock. The security return for the period would be the  $20\%$  plus the unsystematic component. The unsystematic component depends on factors unique to the company, such as labor difficulties, higher than expected sales, and so on.

The security returns model given by equation (14.4) is usually written in such a way that the average value of the residual term,  $\varepsilon'$ , is zero, by adding a factor, alpha  $(\alpha)$ , to the model to represent the average value of the unsystematic returns over time. That is, we set  $\varepsilon' = \alpha + \varepsilon$  so that

$$
R = \alpha + \beta R _ {M} + \varepsilon , \tag {14.5}
$$ where the averages over time should tend to zero.


The model for security returns given by equation (14.5) is usually referred to as the market model. Graphically, the model can be depicted as a line fitted to a plot of security returns against rates of return on the market index, as shown for a hypothetical security in figure 14.3.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/11a90a1aeb9b13a973a645eff12b78b7d396e03743831f603ef7459d114274dd.jpg)
Figure 14.3

Graphical depiction of the market model.

Note: Beta  $(\beta)$ , the market sensitivity index, is the slope of the line. Alpha  $(\alpha)$ , the average of the residual returns, is the intercept of the line on the security axis. The epsilon primes  $(\varepsilon')$ , the residual returns, are the perpendicular distances of the points from the line.

The beta factor can be thought of as the slope of the line. It gives the expected increase in security return for a  $1\%$  increase in market return. In figure 14.2, if a security has a beta of 1.0, a  $10\%$  market return will result, on average, for a  $10\%$  security return.

The alpha factor is represented by the intercept of the line on the vertical (security return) axis. It is equal to the average value over time of the unsystematic returns  $(\varepsilon^{\prime})$  on the stock. For most stocks, the alpha factor tends to be small and unstable.

Using the definition of security return given by the market model, the specification of systematic and unsystematic risk is straightforward—they are simply the standard deviations of the two return components.

The systematic risk of a security is equal to beta times the standard deviation of the market return:

Systematic risk  $= \beta \sigma (R_M)$  (14.6)

The unsystematic risk equals the standard deviation of the residual return factor,  $\varepsilon$ :

Unsystematic risk  $= \sigma (\varepsilon)$  (14.7)

Given measures of individual security systematic risk, we can now compute the systematic risk of the portfolio. It is equal to the beta factor for the portfolio,  $\beta_{p}$ , times the risk of the market index,  $\sigma(R_{M})$ :

Portfolio systematic risk  $= \beta_{p}\sigma (R_{M})$  (14.8)

The portfolio beta factor in turn can be shown to be simply an average of the individual security betas, weighted by the proportion of each security in the portfolio:

$$

\beta_ {p} = w _ {1} \beta_ {1} + w _ {2} \beta_ {2} + \ldots + w _ {n} \beta_ {n},

$$ or more concisely:


$$

\beta_ {p} = \sum_ {i = 1} ^ {n} w _ {i} \beta_ {i}, \tag {14.9}

$$ where


$w_{i} =$  the proportion of portfolio market value represented by security  $i$ ,  $n =$  the number of securities.

Thus, the systematic risk of a portfolio is simply the market value weighted average of the systematic risk of the individual securities. It follows that the beta for a portfolio consisting of all securities is 1. If a stock's beta exceeds 1, it is above the average. If the portfolio is composed of an equal dollar investment in each security, the  $\beta_{p}$  is simply an unweighted average of the component security betas.

The unsystematic risk of the portfolio is also a function of the unsystematic security risks, but the form is more complex. The important point is that with increasing diversification, this risk approaches zero.

With these results for portfolio risk, it is useful to return to the studies of the impact of diversification on risk. One study compared the standard deviation for 20-stock portfolios with the predicted lower limits based on average security systematic risks.

The lower limit is equal to the average beta for the portfolio times the standard deviation of the market return. The standard deviations in all cases studied were close to the predicted values. These results support the contention that portfolio systematic risk equals the average systematic risk of the component securities.

The implications of these results are substantial. First, we would expect realized rates of return over long periods to be related to the systematic risk as opposed to the total risk of securities. As the unsystematic risk is relatively easily eliminated, we should not expect the market to offer investors a "risk premium" for bearing such risk. Second, because security systematic risk is equal to the security beta times  $\sigma(R_M)$ , which is common to all securities, beta is useful as a relative risk measure. The  $\beta$  gives the systematic risk of a security (or portfolio) relative to the risk of the market index. Thus, it is often convenient to speak of systematic risk in relative terms, that is, in terms of beta rather than beta times  $\sigma(R_M)$ .

Estimating beta The beta of a security or portfolio can be estimated by estimating the market model given by equation (14.5) using regression analysis applied to historical returns. The estimated slope for the market model is the estimate of beta. A series of returns is computed over some time interval for some broad market index (such as the S&P 500 stock market index) and for the stock (or portfolio). For example, monthly returns can be calculated for the past five years, providing 60 return observations for both the market index and the stock or portfolio. Or weekly returns can be calculated for the past year. Nothing in financial theory indicates whether weekly, monthly, or even daily returns should be used. Nor does theory indicate any specific number of observations, except that statistical methodology indicates that more observations give a more reliable measure of beta.

Beta estimates are available on the Internet from Yahoo Finance and Google Finance for individual stocks. Table 14.1 shows the estimates of beta from the Yahoo Finance web site for five stocks as reported on August 3, 2018. Yahoo Finance uses monthly price changes for the company's stock and the monthly change of the S&P 500 index. Three years of returns (36 months) are used (when available).

Table 14.1 Beta estimates for five stocks on August 3, 2018, from Yahoo Finance.

<table><tr><td>Company (Ticker Symbol)</td><td>Yahoo Finance</td></tr><tr><td>Apple Inc. (APPL)</td><td>1.14</td></tr><tr><td>Coca-Cola Co. (KO)</td><td>0.53</td></tr><tr><td>General Dynamics (GD)</td><td>0.85</td></tr><tr><td>Netflix Inc (NFLX)</td><td>1.39</td></tr><tr><td>Fedex Corp (FDX)</td><td>1.53</td></tr></table>

Our purpose here is not to provide an explanation of the mechanics of calculating beta but to point out the practical problems in estimating beta. (Other econometric issues are involved, but we do not focus on these.) The difference in the calculated beta will depend on the following factors:
- the length of time over which a return is calculated (e.g., daily, weekly, monthly);
- the number of observations used (e.g., three years of monthly returns or five years of monthly returns); the specific period used; and
- the market index selected (e.g., the S&P 500 stock market index or an index consisting of all stocks traded on exchanges, weighted by their relative market value).

Moreover, the question arises of the stability of beta over different time intervals. That is, does the beta of a stock or portfolio remain relatively unchanged over time, or does it change? The interesting question concerns the economic determinants of the beta of a stock. The risk characteristics of a company should be reflected in its beta. Several empirical studies have attempted to identify these macroeconomic and microeconomic factors.

# The Security Market Line

The CML represents an equilibrium condition in which the expected return on a portfolio of assets is a linear function of the expected return on the market portfolio. A directly analogous relationship holds for individual security expected returns:

$$

E \left(R _ {i}\right) = R _ {F} + \frac {E \left(R _ {M}\right) - R _ {F}}{\sigma \left(R _ {M}\right)} \sigma \left(R _ {i}\right). \tag {14.10}

$$

Equation (14.10) simply uses risk and return variables for an individual security in place of the portfolio values in the equation for the CML given by equation (14.2). This version of the risk-return relationship for individual securities is called the security market line (SML). As in the case of the CML, the expected return for an asset is equal to the risk-free rate plus the product of the market price of risk and the quantity of risk in the security.

Another more common version of the SML relationship uses the beta of a security. To see how this relationship is developed, let's look back at equation (14.3). In a well-diversified portfolio (i.e., Markowitz diversified), the unique or unsystematic risk is eliminated. Consequently, it can be demonstrated that

$$

\sigma^ {2} (R _ {i}) = \beta_ {i} ^ {2} \sigma^ {2} (R _ {M}),

$$ and the standard deviation is


$$

\sigma \left(R _ {i}\right) = \beta_ {i} \sigma \left(R _ {M}\right).

$$

Therefore,

$$

\beta_ {i} = \frac {\sigma (R _ {i})}{\sigma (R _ {M})}.

$$

If  $\beta_{i}$  is substituted into equation (14.10), we have the beta version of the SML, as shown in equation (14.11), popularly referred to as the capital asset pricing model (CAPM):

$$

E \left(R _ {i}\right) = R _ {F} + \beta_ {i} \left[ E \left(R _ {M}\right) - R _ {F} \right]. \tag {14.11}

$$

This equation states that, given the assumptions of capital market theory described earlier, the expected (or required) return on an individual asset is a positive linear function of its index of systematic risk as measured by beta. The larger beta is, the higher will be the expected return. Notice that it is only an asset's beta that determines its expected return.

Let's look at the prediction of the CAPM for several values of beta. The beta of a risk-free asset is zero, because the variability of the return of a risk-free asset is zero and therefore it does not covary with the market portfolio. So, if we want to know the expected return for a risk-free asset, we would substitute zero for  $\beta_{1}$  in equation (14.11):

$$

E (R _ {i}) = R _ {F} + 0 [ E (R _ {M}) - R _ {F} ] = R _ {F}.

$$

Thus, the return on a risk-free asset is simply the risk-free return, as expected.

The beta of the market portfolio is 1. If asset  $i$  has the same beta as the market portfolio, then substituting 1 into equation (14.11) gives

$$

E (R _ {i}) = R _ {F} + 1 [ E (R _ {M}) - R _ {F} ] = E (R _ {M}).

$$

In this case, the expected return for the asset is the same as the expected return for the market portfolio. If an asset has a beta greater than the market portfolio (i.e., greater than 1), then the expected return will be higher than for the market portfolio. The reverse is true if an asset has a beta less than the market portfolio. A graph of the SML is presented in figure 14.4.

Figure 14.4
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/d7f590903348b1e857ba1be64aca7366329dd76b3bdb809dfa4321e03f188fc9.jpg)
The security market line.

The SML, CML, and Market Model

In equilibrium, the expected return of individual securities will lie on the SML and not on the CML because of the high degree of unsystematic risk that remains in individual securities, a risk that can be diversified out of portfolios of securities. It follows that the only risk investors will pay a premium to avoid is market risk. Hence, two assets with the same amount of systematic risk will have the same expected return. In equilibrium, only efficient portfolios will lie on both the CML and the SML, which underscores the fact that the systematic risk measure, beta, is most correctly considered to be an index of the contribution of an individual security to the systematic risk of a well-diversified portfolio of securities.


It is important to point out the difference between the market model and the CML and SML. The CML and the SML represent a predictive model for expected returns. The market model is a descriptive model used to describe historical data. Hence, the market model makes no prediction of what expected returns should be.

Tests of the CAPM

The CAPM is indeed a simple and elegant model, but these qualities do not in and of themselves guarantee that it will be useful for explaining observed risk/return patterns. Here we briefly review the empirical literature on attempts to verify the model.

The major difficulty in testing the CAPM is that the model is stated in terms of investors' expectations and not in terms of realized returns. To test the CAPM, it is necessary to convert the theoretical CAPM given by equation (14.11) to a form that can be tested empirically. We will not go through this exercise here but will simply provide the model that is typically tested. Nor will we delve into the econometric problems associated with testing the CAPM, although we discuss later in this chapter an important theoretical issue that raises serious questions about the testability of the CAPM and therefore the empirical findings of researchers.

The empirical analogue of equation (14.11) asserts that over the period of time analyzed, (1) a linear relationship exists between the average risk premium return on the market and the average risk premium return on a stock or portfolio, and its slope is  $\beta_{i}$ ; and (2) the linear relationship should pass through the origin. Moreover, according to the CAPM, beta is a complete measure of a stock's risk. Consequently, alternative risk measures that might be proposed (the most common being the standard deviation of return) should not be significant contributors to the explanation of a stock's return. Recall that the standard deviation measures a stock's total risk, which includes both systematic and unsystematic components.

The CAPM holds for both individual securities and portfolios. Therefore, the empirical tests can be based on either. Tests based on individual securities, however, are not the most efficient method of obtaining estimates of the magnitude of the risk/return trade-off, for two reasons.

The first problem is called the "errors in variables bias" and results from the fact that the beta of a stock typically is measured by correlating the stock's return over some sample of historical data. The slope of the resulting line (the regression coefficient) is the estimate of beta. It is subject to errors from various sources. These errors are random in their effect; that is, some stocks' betas are overestimated and others are underestimated. Nevertheless, when these estimated beta values are used in the test, the measurement errors tend to attenuate the relationship between average return and risk. By carefully grouping the securities into portfolios of securities with similar betas, much of this measurement error problem can be eliminated. The errors in individual stocks' betas cancel out, so that the portfolio beta can be measured with much greater precision. In turn, tests based on portfolio returns will be more efficient than tests based on security returns.

The second problem relates to the obscuring effect of residual variation. Realized security returns include a large random component, which typically accounts for about  $70\%$  of the variation of return (the diversifiable or unsystematic risk of the stock). By grouping securities into portfolios, we can eliminate much of this "noise" and thereby get a much clearer view of the relationship between return and systematic risk.

It should be noted that grouping does not distort the underlying risk/return relationship. The relationship that exists for individual securities is exactly the same for portfolios of securities.

The major results of the empirical tests conducted in the early 1970s are summarized as follows:

1. The evidence shows a significant positive relationship between realized returns and systematic risk as measured by beta. The average market risk premium estimated is usually less than predicted by the CAPM, however.
2. The relationship between risk and return appears to be linear. The studies give no evidence of significant curvature in the risk/return relationship.


3. Tests that attempt to discriminate between the effects of systematic and unsystematic risk do not yield definitive results. Both kinds of risk appear to be positively related to security returns, but substantial evidence supports the proposition that the relationship between return and unsystematic risk is at least partly spurious—that is, partly a reflection of statistical problems rather than the true nature of capital markets.

Obviously, we cannot claim that the CAPM is absolutely right. But the early empirical tests do support the view that beta is a useful risk measure and that high-beta stocks tend to be priced so as to yield correspondingly high rates of return.

In 1977, however, Richard Roll wrote a paper criticizing the previously published tests of the CAPM.[10] Roll argued that although the CAPM is testable in principle, no correct test of the theory had yet been presented. He also argued for the practical impossibility that a correct test would ever be accomplished in the future.

The reasoning behind Roll's assertions revolves around his contribution that only one potentially testable hypothesis is associated with the CAPM, namely, that the true market portfolio lies on the Markowitz efficient frontier (i.e., it is mean-variance efficient). Furthermore, because the true market portfolio must contain all worldwide assets, the value of most of which cannot be observed (e.g., human capital), the hypothesis is in all probability untestable.[11]

Since 1977, some studies have purported either to support or to reject the CAPM. These tests attempt to examine implications of the CAPM other than the linearity of the risk/return relation as the basis of their methodology. Unfortunately, none provides a definitive test, and most are subject to substantial criticism, suffering from the same problem of identifying the "true" market portfolio.

# The Arbitrage Pricing Theory Model

An alternative model to the CAPM was developed by Stephen A. Ross in 1976.[12] This model is based purely on arbitrage arguments and hence is called the arbitrage pricing theory (APT) model.


The APT model postulates that a security's expected return is influenced by a variety of factors, as opposed to just the single market index of the CAPM. Specifically, look back at equation (14.5), which states that the return on a security is dependent on its market sensitivity index and an unsystematic return. In contrast, the APT states that the return on a security is linearly related to  $H$  "factors." The APT does not specify what these factors are, but it is assumed that the relationship between security returns and the factors is linear.

To illustrate the APT model, let us assume a simple world with a portfolio consisting of three securities with two factors (otherwise, more complicated mathematical notation must be introduced). The following notation is used:

$\tilde{R}_i =$  the random rate of return on security  $i$ $(i = 1,2,3)$

$E(R_{i}) =$  the expected return on security  $i$ $(i = 1,2,3)$

$F_{h} =$  the  $h$ th factor that is common to the returns of all three assets ( $h = 1,2$ ),

$\beta_{i,h} =$  the sensitivity of the ith security to the hth factor, and

$\tilde{\varepsilon}_i =$  the unsystematic return for security  $i$ $(i = 1,2,3)$

The APT model asserts that the random rate of return on security  $i$  is given by the following relationship:

$$

\tilde {R} _ {i} = E \left(R _ {i}\right) + \beta_ {i, 1} F _ {1} + \beta_ {i, 2} F _ {2} + \tilde {\varepsilon} _ {i}. \tag {14.12}

$$

For equilibrium to exist among these three assets, the following arbitrage condition must be satisfied: using no additional funds (wealth) and without increasing risk, it should not be possible, on average, to create a portfolio to increase return. In essence, this condition states that no "money machine" is available in the market. Ross showed the following risk and return relationship results for each security  $i$ :

$$

E \left(R _ {1}\right) = R _ {F} + \beta_ {i, F 1} \left[ E \left(R _ {F 1}\right) - R _ {F} \right] + \beta_ {i, F 2} \left[ E \left(R _ {F 2}\right) - R _ {F} \right], \tag {14.13}

$$ where


$\beta_{i,Fj} =$  the sensitivity of security  $i$  to the  $j$ th factor,

$E(R_{Fj}) - R_{F} =$  the excess return of the  $j$ th systematic factor over the risk-free rate and can be thought of as the price (or risk premium) for the  $j$ th systematic risk.

Equation (14.12) can be generalized to the case that includes  $H$  factors as follows:

$$

E (R _ {i}) = R _ {F} + \beta_ {i, F 1} [ E (R _ {F 1}) - R _ {F} ] + \beta_ {i, F 2} [ E (R _ {F 2}) - R _ {F} ] + \ldots + \beta_ {i, F H} [ E (R _ {F H}) - R _ {F} ].

$$

(14.14)

Equation (14.14) is the APT model. It states that investors want to be compensated for all the factors that systematically affect the return of a security. The compensation is the sum of the products of each factor's systematic risk,  $\beta_{i,Fh}$ , and the risk premium assigned to it by the market,  $E(R_{Fh}) - R_F$ . As in the case of the two other risk and return models described earlier, an investor is not compensated for accepting unsystematic risk.

Comparison of the APT Model and CAPM

Examining the equations, we can see that the CAPM, equation (14.11), is a special case of the APT model, equation (14.14):

$$

\mathrm {C A P M}: E \left(R _ {i}\right) = R _ {F} + \beta_ {i} \left[ E \left(R _ {M}\right) - R _ {F} \right].

$$

$$

\begin{array}{l} \mathrm {A P T :} E (R _ {i}) = R _ {F} + \beta_ {i, F 1} [ E (R _ {F 1}) - R _ {F} ] + \beta_ {i, F 2} [ E (R _ {F 2}) - R _ {F} ] + \ldots + \beta_ {i, F H} [ E (R _ {F H}) - \\ R _ {F} ]. \end{array}

$$

Advantages of the APT Model

Supporters of the APT model argue that it offers several major advantages over the CAPM. First, it makes less restrictive assumptions about investor preferences concerning risk and return. As explained earlier, the CAPM theory assumes that investors trade off risk and return solely on the basis of the expected returns and standard deviations of prospective investments. In contrast, the APT model simply requires some rather unobtrusive bounds be placed on potential investor utility functions.

Second, no assumptions are made about the distribution of security returns. Finally, because the APT model does not rely on the identification of the true market portfolio, the theory is potentially testable.

# Factor Models in Practice

Thus far we have presented the APT, which tells us how a security should be priced based on its exposure to various types of risk. In practice, three types of factor models are used to evaluate common stock: statistical factor models, macroeconomic factor models, and fundamental factor models.[13]

# Statistical Factor Models

As just discussed, identifying the factors presents certain difficulties. In a statistical factor model, historical and cross-sectional data on stock returns are tossed into a statistical model. The statistical model used is principal components analysis, which is a special case of a statistical technique called "factor analysis." The goal of the statistical model is to best explain the observed stock returns with "factors" that are linear return combinations and are uncorrelated with one another.

For example, suppose that the monthly returns for 1,500 companies for 10 years are computed. The goal of principal components analysis is to produce factors that best explain the observed stock returns. Let's suppose that six factors provide explanations. These factors are statistical artifacts. The objective in a statistical factor model then becomes to determine the economic meaning of each of these statistically derived factors.

Because of the problem of interpretation, it is difficult to use the factors from a statistical factor model to obtain expected returns. Instead, practitioners prefer two other models, which allow them to prespecify meaningful factors and thus produce a more intuitive model.

# Macroeconomic Factor Models

In a macroeconomic factor model, the inputs to the model are historical stock returns and observable macroeconomic variables called "raw descriptors." The goal is to determine which macroeconomic variables are pervasive in explaining historical stock returns. Those variables that are pervasive in explaining the returns are then the factors included in the model. The responsiveness of a stock to these factors is estimated using historical time series data. The sensitivity of the factors is estimated so that they are statistically independent. Then there will be no double counting.

An example of a macroeconomic factor model for the U.S. equity market is the Burmeister, Ibbotson, Roll, and Ross model. $^{14}$  This model has five macroeconomic factors that reflect unanticipated changes in the following macroeconomic variables: investor confidence (confidence risk), interest rates (time horizon risk), inflation (inflation risk), real business activity (business cycle risk), and market index (market timing risk).

# Fundamental Factor Models

Probably the most popular models are fundamental factor models, which use company and industry attributes and market data as raw descriptors. Examples of the descriptors used include price/earnings ratios, book/price ratios, estimated economic growth, and trading activity. The inputs into a fundamental factor model are stock returns and the potential raw descriptors about a company. Those fundamental variables about a company that are pervasive in explaining stock returns and make economic sense are then the factors retained in the model. The sensitivity of a stock's return to a factor is estimated using statistical analysis.

There are several third-party vendors who have created fundamental factor models. In a series of academic papers, Eugene Fama and Kenneth French have shown that the following five factors should be included in a factor model. In their original paper, they showed that a three-factor model that included the market (as measured by beta and as suggested by the CAPM), size (as measured by market capitalization), and value (as measured by the book-to-value ratio) explained the returns on stocks better than the CAPM did.[15] That is, they added two factors to the CAPM. More recently, they showed that by including two additional factors—measures of profitability and investment—their five-factor model outperformed their three-factor model in explaining returns.[16] Several asset management firms have suggested additional factors.[17]

# Some Principles to Take Away

In this chapter and the previous one, we have covered the heart of what is popularly called "modern portfolio theory" and APT. We pointed out the assumptions and their critical role in the development of these theories and explained the empirical findings. Even though you should now understand the topics covered, you might still be uncomfortable as to where we have progressed, given the lack of theoretical and empirical support for the CAPM and the difficulty of identifying the factors in the APT model. You are not alone: A good number of practitioners and academics feel uncomfortable with these models, particularly with the CAPM.


Nevertheless, comfort comes from several general principles about risk and return derived from these theories that few would question:

1. Investing has two dimensions, risk and return. Therefore, focusing only on the actual return that an investor achieves without looking at the risk that was accepted to achieve that return is inappropriate.
2. It is also inappropriate to look at the risk of an individual asset when deciding whether it should be included in a portfolio. What is important is how the inclusion of an asset in a portfolio will affect the risk of the portfolio.
3. Whether investors consider one risk or 1,000 of them, risk can be divided into two general categories: systematic risk (which cannot be eliminated by diversification) and unsystematic risk (which can be diversified away).
4. Investors should only be compensated for accepting systematic risks. Thus, when formulating an investment strategy, it is critical to identify the systematic risks.

# Key Points
- Capital market theory is based on a set of behavioral assumptions and market assumptions.
- If investors select portfolios as assumed by portfolio theory, and if a risk-free asset is introduced, a new set of efficient portfolios can be constructed that represents a combination of a risk-free asset and the market portfolio.
- The risk of an asset's return as measured by its variance can be broken down into systematic risk and unsystematic risk.
- The portion of an asset's return variability that can be attributed to a common factor is its systematic risk.
- Because systematic risk cannot be diversified away, it is referred to as "undiversifiable risk," and in the case where this is one source of risk, it is called "market risk."
- Because a portfolio's systematic risk cannot be eliminated, it is the minimum level of risk that can be obtained by means of diversification across many randomly chosen assets.
- Unsystematic risk is the portion of an asset's return variability that can be diversified away and is referred to as "diversifiable risk." Other names for unsystematic risk are residual risk, idiosyncratic risk, and company-specific risk.
- The beta of an asset is a measure of sensitivity to the market and therefore is a relative measure of systematic risk.
- An asset's beta is estimated using regression analysis on data obtained from historical returns for the asset and some market index.
- The capital asset pricing model (CAPM) is an economic theory that describes the relationship between risk and expected return. Equivalently, it is a model for the pricing of risky securities.
- The CAPM asserts that the only risk priced by rational investors is systematic risk, because that risk cannot be eliminated by diversification.
Essentially, the CAPM says that the expected return of a security or a portfolio is equal to the rate on a risk-free security plus a risk premium.
- The risk premium in the CAPM is the product of the quantity of risk times the market price of risk.
- The beta of a security or portfolio is an index of the systematic risk of the asset and is estimated statistically.
- Beta is calculated from historical data on both the asset's return and the market's return.
- Numerous empirical tests of the CAPM, in general, fail to fully support the theory.
- Richard Roll criticized studies of the CAPM because of the difficulty of identifying the true market portfolio and argued that such tests are not likely to appear soon, if at all.
- The CAPM assumes that investors are concerned with only one source of risk: the risk having to do with the future price of a security. However, other risks include the capacity of investors to consume goods and services in the future.
- The arbitrage pricing theory (APT), developed purely from arbitrage arguments, postulates that the expected return on a security or a portfolio is influenced by several factors.
- Proponents of the APT model cite its less restrictive assumptions as a feature that makes it more appealing than the CAPM.
- Testing the APT model does not require identification of the "true" market portfolio. But it does require empirical determination of the factors, because they are not specified by the theory.
- The APT model replaces the problem of identifying the market portfolio in the CAPM with the problem of choosing and measuring the underlying factors.
- One of the most popular factor models is the Fama-French five-factor model.
- Although the theories presented are controversial or difficult to implement in practice, several principles are not controversial and can be used to understand how to price financial assets.

# Questions

1. a. Explain why the CML assumes a risk-free asset and that investors can borrow or lend at the risk-free rate.

b. Using a graph, demonstrate why the CML dominates the Markowitz efficient frontier.

2. How should an investor construct an efficient portfolio in the presence of a risk-free asset?

3. a. What is meant by two-fund separation?

b. What do the two funds consist of?

4. Indicate why you agree or disagree with the following statement: "As a percentage of the total risk, the unsystematic risk of a diversified portfolio is greater than that of an individual asset."
5. In the CAPM, why is systematic risk also called "market risk"?
6. Indicate why you agree or disagree with the following statement: "An investor should be compensated for accepting unsystematic risk."
7. a. Suppose that a stock has a beta of 1.15. How do you interpret that value?

b. Suppose that a stock has a beta of 1.00. Can one mimic the performance of the stock market by buying shares in only that stock?

8. a. What is the market model?

b. What input into the CAPM is estimated from the market model?

9. Assume the following: expected market return  $= 15\%$ , risk-free rate  $= 7\%$ . If a security's beta is 1.3, what is its expected return according to the CAPM?
10. The following is an excerpt from the article “Risk and Reward,” published in the Economist of October 20, 1990:

Is the CAPM supported by the facts? That is controversial, to put it mildly. It is a tribute to Mr Sharpe (co-winner of the 1990 Nobel Prize in Economics) that his work, which dates from the early 1960s, is still argued over so heatedly. Attention has lately turned away from beta to more complicated ways of carving up risk. But the significance of CAPM for financial economics would be hard to exaggerate.

a. What are the general conclusions of studies that empirically investigated the CAPM?
b. Summarize Roll's argument on the problems inherent in empirically verifying the CAPM.

11. What are the fundamental principles underlying the APT model?
12. What are the advantages of the APT model relative to the CAPM?
13. What are the difficulties in practice of applying the APT model?
14. Does Richard Roll's criticism of the CAPM also apply to the APT model?
15. "In the CAPM, investors should be compensated for accepting systematic risk; in the APT model, investors are rewarded for accepting both systematic risk and unsystematic risk." Explain why you agree or disagree with this statement.

16. What are the difficulties of using a statistical factor model?

17. How does a macroeconomic factor model differ from a fundamental factor model?

18. Indicate why you agree or disagree with the following statement: "There is considerable controversy concerning the theories about how assets are priced. Therefore, the distinction between systematic risks and unsystematic risk is meaningless."

19. Indicate why you agree or disagree with the following statement: "The theories of the pricing of capital assets are highly questionable. Basically, there is only one type of risk, and investors should seek to avoid it when they purchase individual securities."

20. Explain the Fama-French factor model.

1. William F. Sharpe, "Capital Asset Prices: A Theory of Market Equilibrium under Conditions of Risk," Journal of Finance 19, no. 3 (1964): 425-442; John Lintner, "The Valuation of Risk Assets and the Selection of Risky Investments in Stock Portfolio and Capital Budgets," Review of Economics and Statistics 47, no. 1 (1965): 3-37; Jack L. Treynor, "Toward a Theory of Market Value of Risky Assets," unpublished paper, Arthur D. Little, Boston, 1961; and Jan Mossin, "Equilibrium in a Capital Asset Market," Econometrica 34 (1966): 768-783.
2. Eugene F. Fama, "Efficient Capital Markets: A Review of Theory and Empirical Work," Journal of Finance 25, no. 2 (1970): 383-417.
3. James Tobin, "Liquidity Preference as Behavior toward Risks," Review of Economic Studies 25, no. 2 (1958): 65-86.
4. The equation here is the one used in William F. Sharpe, "A Simplified Model for Portfolio Analysis," Management Science 9, no. 2 (1963): 277-293. Some vendors and academics use as the variables the excess returns in calculating beta. The excess return is found by subtracting a suitable risk-free rate from the asset's return and from the market's return. This is referred to as the "risk-premium" form of the market model.
5. The relationship between the risk components is given by  $\sigma^2 (R_p) = \beta^2\sigma^2 (R_M) + \sigma^2 (\varepsilon ')$ .

This follows directly from equation (14.5) and the assumption of statistical independence of  $R_M$  and  $\varepsilon'$ . The  $R^2$  term previously discussed is a ratio of systematic to total risk (both measured in terms of variance):

$$

R ^ {2} = \frac {\beta^ {2} \sigma^ {2} \left(R _ {M}\right)}{\sigma^ {2} \left(\varepsilon^ {\prime}\right)}

$$

6. Assuming the unsystematic returns  $(\varepsilon^{\prime})$  of securities to be uncorrelated (reasonably true in practice), the unsystematic portfolio risk is given by

$$

\sigma^ {2} \left(\varepsilon_ {p} ^ {\prime}\right) = \sum^ {n} w _ {i} ^ {2} \sigma^ {2} \left(\varepsilon_ {j} ^ {\prime}\right),

$$ where  $\sigma^2 (\varepsilon_i')$  is the unsystematic risk for stock  $i$ . Assume that the portfolio is made up of an equal percentage invested in each security and that  $\sigma^2 (\varepsilon')$  is the average value of the  $\sigma^2 (\varepsilon_j')$ . Then  $w_{i} = 1 / n$ , and

$$
\sigma^ {2} (\varepsilon_ {p} ^ {\prime}) = \frac {1}{n} \sigma^ {2} (\varepsilon^ {\prime}),
$$ which—assuming  $\sigma^2 (\varepsilon ')$  is finite—obviously approaches zero as the number of issues in the portfolio increases.


7. We discuss several broad market indexes in chapter 22.
8. This assumes that the economic determinants that affect the beta of a stock do not change over the measurement period.
9. The model is sometimes stated in risk premium form. Risk premiums, or excess returns, are obtained by subtracting the risk-free rate from the rate of return. The expected security and market risk premiums—designated  $E(r_{i})$  and  $E(r_{M})$ , respectively—are given by

$$

E (r _ {i}) = E (R _ {i}) - R _ {F},

$$

$$

E (r _ {M}) = E (R _ {M}) - R _ {F}.

$$

Substituting these risk premiums into equation (14.11), we obtain:

$$

E (r _ {i}) = \beta_ {i} [ E (r _ {M}) ].

$$

In this form, the CAPM states that the expected risk premium for the investor's portfolio is equal to its beta value times the expected market risk premium. Or, equivalently stated, the expected risk premium should be equal to the quantity of risk (as measured by beta) and the market price of risk (as measured by the expected market risk premium).

10. Richard Roll, “A Critique of the Asset Pricing Theory: Part 1. On the Past and Potential Testability of the Theory,” Journal of Financial Economics 4 (1977): 129-176.
11. The hypothesis tested in the traditional tests of the CAPM cited earlier—namely, that a linear relationship exists between average security returns and beta values—sheds no light on the question. This result follows, because an approximately linear relation between risk and return would be achieved in tests involving large, well-diversified common stock portfolios, irrespective of whether securities were priced according to the CAPM or some totally different model. The result is tautological. The fact that a positive relationship between realized returns and betas is typically found simply indicates that the returns on the proxy indexes used for the true market portfolio are larger than the average return to the global minimum-variance portfolio.
12. Stephen A. Ross, "The Arbitrage Theory of Capital Asset Pricing," Journal of Economic Theory 13, no. 3 (1976): 343-360; and Stephen A. Ross, "Return, Risk and Arbitrage," in Risk and Return in Finance, ed. Irwin Friend and James Bicksler (Cambridge: Ballinger, 1976).
13. Gregory Connor, "The Three Types of Factor Models: A Comparison of Their Explanatory Power," Financial Analysts Journal 51, no. 3 (1995): 42-57.
14. Edwin Burmeister, Roger Ibbotson, Richard Roll, and Stephen A. Ross, "Using Macroeconomic Factors to Control Portfolio Risk," unpublished paper.
15. Eugene Fama and Kenneth French, "Common Risk Factors in the Returns on Stocks and Bonds," Journal of Financial Economics 33 (1993): 3-56.
16. Eugene Fama and Kenneth French, “A Five-Factor Asset Pricing Model,” Journal of Financial Economics 116 (2015): 1-22.

17. See, for example, Andrea Frazzini and Lars Pedersen, "Betting against Beta," Journal of Financial Economics 111 (2014): 1-25.

# III

INTEREST RATES, INTEREST RATE RISK, AND CREDIT RISK


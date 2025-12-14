---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: F financial and nonfinancial firms routinely assess risks and engage in both financial and operational risk management. Risk assessment entails evaluating the distribution of possible outcomes, with a focus on the worst that might happen. Insurance companies, for example, assess the likelihood of insured events, and the resulting possible losses for the insurer. Financial institutions must understand their portfolio risks in order to determine the capital buffer needed to support their business.
linter-yaml-title-alias: F financial and nonfinancial firms routinely assess risks and engage in both financial and operational risk management. Risk assessment entails evaluating the distribution of possible outcomes, with a focus on the worst that might happen. Insurance companies, for example, assess the likelihood of insured events, and the resulting possible losses for the insurer. Financial institutions must understand their portfolio risks in order to determine the capital buffer needed to support their business.
---

# F financial and nonfinancial firms routinely assess risks and engage in both financial and operational risk management. Risk assessment entails evaluating the distribution of possible outcomes, with a focus on the worst that might happen. Insurance companies, for example, assess the likelihood of insured events, and the resulting possible losses for the insurer. Financial institutions must understand their portfolio risks in order to determine the capital buffer needed to support their business.

In this chapter, we discuss value at risk, which is commonly used to measure the possible losses on a portfolio of financial assets.

The implicit tension in risk management is the tradeoff between safety on the one hand and the possibility of great success and profitability on the other. There is a risk-return tradeoff in portfolio theory. This tension is evident in extraordinarily productive but specialized firms that are vulnerable to physical disruption. The 2011 earthquake in Japan and flood in Thailand, for example, wreaked havoc with supply chains. $^{1}$  This chapter will focus on financial models, but as you read the chapter, you should keep in mind that this tradeoff is pervasive.

# I. VALUE AT RISK

A financial institution might have a complex portfolio containing stocks, bonds with different maturities and with various embedded options, and instruments denominated in different currencies. The form of these instruments could be simple notes or complex options. Value at risk (VaR) is one way to perform risk assessment for such a portfolio. The idea of value at risk is to estimate the losses on a portfolio that occur with a given probability.

With an estimate of the distribution of outcomes we can either ask about the probability of losing a given sum (e.g., what is the chance our loss exceeds 5m?) or ask, for a given probability, how much we might lose (what level of loss do we exceed with a  $1\%$  probability?). For example, a derivatives market-maker could estimate that for a given portfolio, over one day there is a  $1\%$  chance of losses in excess of \ $500,000. The amount \$ 500,000 is then the 1-day value at risk with a  $99\%$  level of confidence. In general, computing value at risk means finding the value of a portfolio such that there is a specified probability that the portfolio will be worth at least this much over a given horizon. The choice of horizon and probability will depend on how VaR is to be used. A related and often preferable measure that we discuss below in Section 2 is tail VaR, which is the expected loss should the VaR level be exceeded.

The standard version of VaR was developed in the 1990s and presented in J.P. Morgan/Reuters (1996). The obvious challenge with a risk model is calibration: determining return distributions for assets and correlations across assets. There is also the question of which risks are being measured and controlled.

Risk assessment can be important in contexts other than the measurement of portfolio risk—for example, project selection. Suppose a firm has $10 million in capital and can select one of two investment opportunities, each costing $10 million. There will be additional investment opportunities the following year. Investment A returns $12 million in 1 year for certain, while investment B returns $24 million with probability one-half and 0 with probability one-half. Suppose further that the risk-free rate is 10\% and the risk of investment B is idiosyncratic. Portfolio theory implies that we should assess both projects as having the same positive NPV. With investment B, however, half of the time the firm will earn a zero return, depleting capital. The firm would have to raise additional capital in order to make additional investments. If capital raising is costly, A and B may no longer seem equally attractive. This illustrates the general point that managers may want to know how much of a firm's capital is at risk with a given project.

Distributions of outcomes matter at the personal level as well. If you are planning for retirement, you must decide both how much to save and how to allocate your savings among stocks, bonds, and other assets. For any strategy, a key question is this: What is the probability that by following this strategy you will fail to achieve a desired minimum level of retirement savings by the time you retire? This is not the only question to ask, but a strategy with a high probability of leaving you penniless—no matter how desirable on other grounds—should call for careful consideration. We will not discuss personal financial planning in this chapter, but the ideas underlying risk assessment can be used in making personal decisions as well as corporate decisions.

There are at least three common uses of value at risk. First, regulators can use VaR to access capital requirements for financial institutions. See the box on the next page for an example. Second, managers can use VaR as an input in making risk-taking and risk-management decisions. Third, managers can also use VaR to assess the quality of the bank's models. For example, if the models say that there is a  $5\%$  chance that a particular trading operation will lose  $\$1$ m over a 1day horizon, then on average once every 20 days (5\%

# BOX I: Value-at-Risk and Bank Regulation

The Basel Committee on Banking Supervision (BCBS) is an international organization housed in the Bank of International Settlements (BIS), that promulgates banking rules which are then adopted (possibly in modified form) by national banking regulators. Some of these rules rely on VaR calculations.

One important feature of the Basel rules is the requirement that banks maintain a capital buffer in order to protect the bank's bondholders, depositors, and the government (in case of bailouts) against losses. The rules impose capital charges for various positions and risks. The "banking book" consists of assets typically held until maturity, such as loans. The "trading book" includes positions subject to market risks, such as positions acquired as part of a trading strategy, and thus likely to be resold or to realize gains or losses in the near future, as well as positions with exposure to stocks, commodities, interest rates, and foreign exchange. (Other categories of risk are credit risk and operational risk.) The BCBS rules treat these positions differently.

Capital rules for the banking book require a greater capital buffer for specific asset classes, with more capital for classes deemed riskier. Capital rules for the trading book, however, recognize the difficulty of characterizing the risk of complicated positions. The Basel II rules

(BIS, 1996) created regulations basing capital requirements for the trading book on value-at-risk calculations. Basel rules since 2009, called Basel 2.5 (BIS, 2009), have called for banks to compute stressed value-at-risk for the trading book BIS (2009, p. 14):

… a bank must calculate a "stressed value-at-risk" measure … based on the 10-day, 99th percentile, one-tailed confidence interval value-at-risk measure of the current portfolio, with model inputs calibrated to historical data from a continuous 12-month period of significant financial stress relevant to the bank's portfolio…. As an example, for many portfolios, a 12-month period relating to significant losses in 2007/2008 would adequately reflect a period of such stress …

Stressed VaR is intended to address the problem of using historical data at the onset of a crisis. During the 2008 crisis, volatilities increased and asset movements became more correlated. Of course, different scenarios could occur during the next crisis, but stressing in this fashion should help alleviate the obvious problem of using the previous year's data at the onset of a crisis. An additional problem is that the stressed scenario could lead banks to take risks not adequately reflected in the stress scenario.

of the time) the trading operation should lose 1 million. If losses of this size occur more frequently, the models are assigning too little risk to the bank's activities. If such losses occur less frequently, the models are assigning too much risk.

Most of the examples in this section use lognormally distributed stocks and linear normal approximations to illustrate VaR calculations. Currencies and commodities can be modeled in this way as well. Although for long horizons it might not be reasonable to treat commodities as lognormally distributed, for short horizons this is generally a reasonable assumption. We ignore the possibility of jumps. We discuss bonds separately.

The question of how best to perform risk assessment is unsettled in the wake of the economics events from 2006 to 2009. Variants such as stressed value at risk may address shortcomings. One well-known critique is discussed in the box on the next page.

# Box 2: Black Swans

The most significant events are among the most surprising. Few predicted the destruction of the World Trade Center in 2001 (although there had been a prior attempt by different means) or the depth of the financial crisis in 2008 (although some warned of high real estate prices). Taleb (2010) has argued that history is shaped by such unpredictable events, and that because of their low probability and extreme nature they generally lie beyond the scope of standard risk evaluation models. He terms these events "black swans," alluding to the idea that a single unexpected event (the sighting of a black swan) can fundamentally change understanding (a belief that all swans are white).

Taleb specifically criticizes reliance on financial risk models based on normally distributed returns. The examples in this chapter, for example, mostly rely on normality and lognormality. This assumption is not essential, but it is common.

To evaluate Taleb's critique, it can be helpful to think about risk assessment for ordinary and extraordinary events as two separate activities. Extraordinary events can be transformative, but most times are ordinary, and poorly managed firms can fail for foreseeable reasons. The monitoring of routine risks can increase the chance that identifiable risks are controlled, and large losses avoided. There are a number of famous episodes in which firms lost significant sums in a way that suggested failure of routine risk controls:

Sumitomo Corporation lost over 2 billion as a result of unauthorized copper trading (WuDunn, 1996).

- Amaranth Trading lost over 6 billion in natural gas trading (Anderson, 2006).
- Société Générale lost almost €5 billion from hidden derivatives trades (Bennhold and Clark, 2008).
- J.P. Morgan Chase lost over 5 billion on a credit default swap trade (Eavis and Craig, 2012).

These losses are small compared to some in the 2008 financial crisis, but large for the firms involved. They demonstrate the potential value of risk management; there is no way to know how many such incidents were prevented by conventional risk management.

What about managing the risk of extraordinary events? Taleb in effect warns against relying narrowly on models to justify actions which would be disastrous if the models failed. This is a straw man: Thoughtful managers and regulators have always been concerned about the validity of risk calculations under extreme conditions. The extreme events discussed by Taleb are in the background, but difficult to prepare for. The financial crisis of 2008 illustrates that it is easy with hindsight to see what failed, but difficult if not impossible to anticipate the next major failing. Models should of course be stress-tested, but major failures are almost by definition outside the bounds of modeling and stress testing. Anticipated failures are addressed in advance and thus less likely to occur. Perrow (1999), in describing "normal accidents," provides a framework for thinking about system failures, and the challenges in anticipating and controlling risks. Ultimately, whatever the business, investment, or activity, some risks will not be anticipated and cannot be controlled. Unmodeled extreme events should be considered, but they cannot be avoided.

# Value at Risk for One Stock

Suppose  $\tilde{x}_h$  is the dollar return on a portfolio over the horizon  $h$ , and  $f(x, h)$  is the distribution of returns. Define the value at risk of the portfolio as the return,  $x_h(c)$ , such that  $\operatorname{Pr}(\tilde{x}_h \leq x_h(c)) = c$ . In other words,  $x_h(c)$  is the  $c$  quantile of the return distribution over the horizon  $h$ .

Value at risk measures the loss that will occur with a given probability over a specified period of time. Notice that the definition of value at risk requires that we specify both a horizon,  $h$ , and a probability,  $c$ .

Suppose a portfolio consists of a single stock and we wish to compute value at risk over the horizon  $h$ . If the distribution of the stock price after  $h$  periods,  $S_{h}$ , is lognormal, we have

$$
\ln \left(S _ {h} / S _ {0}\right) \sim \mathcal {N} [ (\alpha - \delta - 0. 5 \sigma^ {2}) h, \sigma^ {2} h ] \tag {1}
$$

If we pick a stock price  $\bar{S}_h$ , then the probability that the stock price will be below  $\bar{S}_h$  is

$$
\Pr (S _ {h} <   \bar {S} _ {h}) = N \left(\frac {\ln (\bar {S} _ {h}) - \ln (S _ {0}) - (\alpha - \delta - 0 . 5 \sigma^ {2}) h}{\sigma \sqrt {h}}\right) \tag {2}
$$

The complementary calculation is to compute the  $\bar{S}_h(c)$  corresponding to the probability  $c$ . By the definition of  $\bar{S}_h(c)$ , we have

$$ c = N \left(\frac {\ln \left(\bar {S} _ {h} (c)\right) - \ln \left(S _ {0}\right) - (\alpha - \delta - 0 . 5 \sigma^ {2}) h}{\sigma \sqrt {h}}\right) \tag {3}
$$

We can solve for  $\bar{S}_h(c)$  by using the inverse cumulative probability distribution,  $N^{-1}$ . Applying this function to both sides of equation (3), we have

$$
N ^ {- 1} (c) = \frac {\ln \left(\bar {S} _ {h} (c)\right) - \ln \left(S _ {0}\right) - (\alpha - \delta - 0 . 5 \sigma^ {2}) h}{\sigma \sqrt {h}} \tag {4}
$$

Solving for  $\bar{S}_h(c)$  gives

$$
\bar {S} _ {h} (c) = S _ {0} e ^ {(\alpha - \delta - 0. 5 \sigma^ {2}) h + \sigma \sqrt {h} N ^ {- 1} (c)} \tag {5}
$$

In equation (5),  $N^{-1}(c)$  takes the place of a standard normal random variable.

Example 1. Suppose we own  $3\mathrm{m}$  worth of stock A, which has an expected return of  $15\%$  and a  $30\%$  volatility, and pays no dividend. Moreover, assume A is lognormally distributed. The value of the position in 1 week,  $V$ , is

$$
V = \mathbb {S} 3 \mathrm {m} \times e ^ {(0. 1 5 - 0. 5 \times 0. 3 ^ {2}) \frac {1}{5 2} + 0. 3 \sqrt {\frac {1}{5 2}} Z} \tag {6}
$$ where  $Z\sim \mathcal{N}(0,1)$


Given this assumed stock price distribution, a  $5\%$  loss will occur if  $Z$  satisfies

$$

\$ 3 \mathrm {m} \times e ^ {\left(0. 1 5 - 0. 5 \times 0. 3 ^ {2}\right) \frac {1}{5 2} + 0. 3 \sqrt {\frac {1}{5 2}} Z} = 0. 9 5 \times \$ 3 \mathrm {m}

$$ or


$$

Z = \frac {\ln (0 . 9 5) - (0 . 1 5 - 0 . 5 \times 0 . 3 ^ {2}) \frac {1}{5 2}}{0 . 3 \times \sqrt {\frac {1}{5 2}}} = - 1. 2 8 1 5

$$

We have

$$

\mathrm {N o r m S D i s t} (- 1. 2 8 1 5) = 0. 1 0 0 0

$$

Thus, we expect that  $10\%$  of the time there will be a weekly loss in excess of  $5\%$ . With  $95\%$  probability, the value of the portfolio over a 1-week horizon will exceed

$$

\$ 3 \mathrm {m} \times e ^ {(0. 1 5 - 0. 5 \times 0. 3 ^ {2}) \frac {1}{5 2} + 0. 3 \sqrt {\frac {1}{5 2}} \times (- 1. 6 4 5)} = \$ 2. 8 0 7 2 \mathrm {m}

$$ where  $N^{-1}(0.05) = -1.645$ . In this case, we would say the  $95\%$  value at risk is  $\$2.8072\mathrm{m} -$ $3\mathrm{m} = -\$0.1928\mathrm{m}$ .

If the assumption of lognormality is valid and if the inputs are correct, a 1-week loss of this magnitude occurs on average once every 20 weeks.

In practice it is common to simplify the VaR calculation by assuming a normal return rather than a lognormal return. The standard lognormal model is generated by assuming normal returns over very short horizons. We can therefore approximate the exact lognormal result with a normal approximation:

$$
S _ {h} = S _ {0} \left(1 + \alpha h + z \sigma \sqrt {h}\right) \tag {7}
$$

We could also further simplify by ignoring the mean:

$$
S _ {h} = S _ {0} \left(1 + z \sigma \sqrt {h}\right) \tag {8}
$$

Both equations (7) and (8) become less reasonable as  $h$  grows.

Example 2. Using the same assumptions as in Example 1, equation (7) gives

$$
\$ 3 \mathrm {m} \times \left[ 1 + \frac {0 . 1 5}{5 2} + \left(\frac {0 . 3}{\sqrt {5 2}} \times (- 1. 6 4 5)\right) \right] = \$ 2. 8 0 3 3 \mathrm {m}
$$

VaR is therefore  $2.8033\mathrm{m} -$ 3m = -0.1966m. Ignoring the mean, equation (8) gives

$$
\$ 3 \mathrm {m} \times \left(1 + \frac {0 . 3}{\sqrt {5 2}} \times (- 1. 6 4 5)\right) = \$ 2. 7 9 4 7 \mathrm {m}
$$

VaR is $2.7947m - $3m = -0.2053m.

Figure 1 compares the three models—lognormal, normal with mean, and normal without mean—over horizons of 1 day to 1 year. As you would expect, the approximation ignoring the mean (equation (8)) is less accurate over longer horizons. In practice the mean is often ignored for two reasons. First, means are hard to estimate precisely. Second, for short horizons the mean is less important than the diffusion term in an Itô process.

# FIGURE I

Comparison of VaR for a single stock over different horizons using the lognormal solution (equation (4)), normality with a positive mean (equation (7)), and normality assuming a zero mean (equation (8)). Assumes the same parameters as in Example 2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/51646e0e9bc0825dc48543a24eaa3004b8ea3eec246aefe04bdb9e9a662cf35d.jpg)

# VaR for Two or More Stocks

When we consider a portfolio having two or more stocks, the distribution of the future portfolio value is the sum of lognormally distributed random variables and is therefore not lognormal. Since the lognormal distribution is no longer exact, we can use the normal approximation or we can use Monte Carlo simulation to obtain the exact distribution.

Let the annual mean and standard deviation of the realized return on stock  $i$ ,  $\tilde{\alpha}_i$ , be  $\alpha_i$  and  $\sigma_i$ , with the correlation between stocks  $i$  and  $j$  being  $\rho_{ij}$ . The dollar investment in stock  $i$  is  $W_i$ . The value of a portfolio containing  $n$  stocks is

$$
W = \sum_ {i = 1} ^ {n} W _ {i}
$$

The return on the portfolio over the horizon  $h$ ,  $R_{h}$ , is

$$
\text {P o r t f o l i o} = R _ {h} = \frac {1}{W} \sum_ {i = 1} ^ {n} \tilde {\alpha} _ {i, h} W _ {i}
$$

Assuming that returns are joint-normally distributed, the annualized distribution of the portfolio return is

$$
R _ {h} \sim \mathcal {N} \left(\frac {1}{W} \sum_ {i = 1} ^ {n} \alpha_ {i} h W _ {i}, \frac {1}{W ^ {2}} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \sigma_ {i} \sigma_ {j} \rho_ {i j} h W _ {i} W _ {j}\right) \tag {9}
$$

Example 3. Suppose we have  $\alpha_{1} = 0.15$ ,  $\sigma_{1} = 0.3$ ,  $W_{1} = \3\mathrm{m}$ ,  $\alpha_{2} = 0.18$ ,  $\sigma_{2} = 0.45$ ,  $W_{2} = \$ 5\mathrm{m}, and  $\rho_{1,2} = 0.4$ . The annual mean of the portfolio return is

$$
\alpha_ {p} = \frac {W _ {1} \alpha_ {1} + W _ {2} \alpha_ {2}}{W _ {1} + W _ {2}} = \frac {\mathrm {s 3 m} \times 0 . 1 5 + \mathrm {s 5 m} \times 0 . 1 8}{\mathrm {s 3 m} + \mathrm {s 5 m}} = 0. 1 6 8 7 5
$$

The annual standard deviation of the portfolio return,  $\sigma_{p}$ , is

$$
\begin{array}{l} \sigma_ {p} = \frac {\sqrt {W _ {1} ^ {2} \sigma_ {1} ^ {2} + W _ {2} ^ {2} \sigma_ {2} ^ {2} + 2 W _ {1} W _ {2} \sigma_ {1} \sigma_ {2} \rho_ {1 , 2}}}{W _ {1} + W _ {2}} \\ = \frac {\sqrt {(\mathbb {S} 3 \mathrm {m} \times 0 . 3) ^ {2} + (\mathbb {S} 5 \mathrm {m} \times 0 . 4 5) ^ {2} + (2 \times \mathbb {S} 3 \mathrm {m} \times \mathbb {S} 5 \mathrm {m} \times 0 . 3 \times 0 . 4 5 \times 0 . 4)}}{\mathbb {S} 3 \mathrm {m} + \mathbb {S} 5 \mathrm {m}} \\ = 0. 3 4 2 1 6 \\ \end{array}
$$

Using equation (7), there is a  $95\%$  probability that in 1 week, the value of the portfolio will exceed

$$
\$ 8 \mathrm {m} \times \left[ (1 + \left(0. 1 6 8 7 5 \times \frac {1}{5 2}\right) + \left(0. 3 4 2 1 6 \times \sqrt {\frac {1}{5 2}} \times (- 1. 6 4 5)\right) \right] = \$ 7. 4 0 1 5 4 \mathrm {m}
$$

The 1-week 95\% VaR is therefore \$7.40154\mathrm{m} - \$8\mathrm{m} = -\$0.5985\mathrm{m}. Using equation (8), which ignores the mean, we have a 95\% chance that the value of the portfolio will exceed

$$
\$ 8 \mathrm {m} \times \left(1 + 0. 3 4 2 1 6 \times \sqrt {\frac {1}{5 2}} \times (- 1. 6 4 5)\right) = \$ 7. 3 7 5 6 \mathrm {m}
$$

The 1-week VaR ignoring the mean is therefore  $7.3756\mathrm{m} -$ 8m = -0.6244m.

This example illustrates the effects of diversification. Although stock 2, which constitutes more than half of the portfolio, has a standard deviation of  $45\%$ , the portfolio standard deviation is only about  $34\%$ . Problem 5 asks you to consider the effects of different correlations.

If there are  $n$  assets, the VaR calculation requires that we specify at least the standard deviation (and possibly the mean) for each stock, along with all pairwise correlations.

# VaR for Nonlinear Portfolios

If a portfolio contains options as well as stocks, it is more complicated to compute the distribution of returns. Specifically, suppose the portfolio consists of  $n$  different stocks with  $\omega_{i}$  shares of stock  $i$  worth  $\omega_{i}S_{i} = W_{i}$ . There are also  $N_{i}$  options worth  $C(S_{i})$  for each stock  $i$ . The portfolio value is therefore  $W = \sum_{i=1}^{n}[\omega_{i}S_{i} + N_{i}C_{i}(S_{i})]$ . We cannot easily compute the exact distribution of this portfolio; not only is the sum of the lognormally distributed stock prices not lognormal, but the option price distribution is complicated.

We will explore two different approaches to handling nonlinearity. First, we can create a linear approximation to the option price by using the option delta. Second, we can value the option using an appropriate option pricing formula and then perform Monte Carlo simulation to obtain the return distribution.5

Delta Approximation. If the return on stock  $i$  is  $\tilde{\alpha}_i$ , we can approximate the return on the option as  $\Delta_i \tilde{\alpha}_i$ , where  $\Delta_i$  is the option delta. The expected annual return on the stock and option portfolio is then

$$
R _ {p} = \frac {1}{W} \sum_ {i = 1} ^ {n} \alpha_ {i} S _ {i} \left(\omega_ {i} + N _ {i} \Delta_ {i}\right) \tag {10}
$$

The term  $\omega_{i} + N_{i}\Delta_{i}$  measures the exposure to stock  $i$ . The variance of the return is

$$
\sigma_ {p} ^ {2} = \frac {1}{W ^ {2}} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} S _ {i} S _ {j} \left(\omega_ {i} + N _ {i} \Delta_ {i}\right) \left(\omega_ {j} + N _ {j} \Delta_ {j}\right) \sigma_ {i} \sigma_ {j} \rho_ {i j} \tag {11}
$$

With this mean and variance, we can mimic the  $n$ -stock analysis. First, however, we will compute an example with a single stock for which we know the exact solution.

Example 4. Suppose we own 30,000 shares of a non-dividend-paying stock and have sold 105-strike call options, with 1 year to expiration, on 25,000 shares. The stock price is  $100, the stock volatility is 30\%$ , the expected return on the stock is  $15\%$ , and the risk-free rate is  $8\%$ . The Black-Scholes option price is 13.3397 and the value of the portfolio is

$$
W = 3 0, 0 0 0 \times \$ 1 0 0 - 2 5, 0 0 0 \times \$ 1 3. 3 3 9 7 = \$ 2, 6 6 6, 5 0 7
$$

(Since the written options are a liability, we subtract their value in computing the value of the portfolio.) The delta of the option is 0.6003. Using equations (10) and (11), we obtain  $R_{p} = 0.084343$  and  $\sigma_{p} = 0.16869$ . The written options reduce the mean and volatility of the portfolio. Therefore, there is a  $95\%$  chance that the value of the portfolio in 1 week will exceed

$$
\begin{array}{l} \$ 2,666,507 \times \left(1 + 0.084343 \times \frac{1}{52} + 0.16869 \times \sqrt{\frac{1}{52}} \times (-1.645)\right) \tag{12} \\ = \$ 2,568,220 \\ \end{array}
$$

Value at risk using the delta approximation is therefore  $2,568,220 -$ 2,666,507 = -98,287.

We can compute the exact value at risk by first determining the stock price that we will exceed with a  $95\%$  chance, and then computing the exact portfolio value at that price. With  $95\%$  probability, we will exceed the stock price

$$
\$ 100 \times e ^ {(0. 1 5 - 0. 5 \times 0. 3 ^ {2}) \frac {1}{5 2} + 0. 3 \sqrt {\frac {1}{5 2}} \times (- 1. 6 4 5)} = \$ 9 3. 5 7 4
$$

# FIGURE 2

Comparison of exact portfolio value after 1 week with a delta approximation. Assumes the position is long 30,000 shares of stock at  $100 and short 25,000 call options with a strike price of$ 105. Value at risk is the difference between the original portfolio value and that at the 5\% stock price.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/b11de6407c0a00b2b8adeacb161b8fb857d34c70e7c5ca13978de8c87f61f0e5.jpg)

Portfolio Value ($)

If this is the stock price 1 week later, the option price will be 9.5913, and the value of the portfolio will be

$$
\left(\$ 93.574 \times 30,000\right) - \left(\$ 9.5913 \times 25,000\right) = \$ 2,576,438
$$

The exact 95\% value at risk is therefore \$ 2,576,438 - \$ 2,666,507 = -\$ 99,069.

Figure 2 graphs the exact value of the portfolio as a function of the stock price 7 days later, compared to the value implied by the delta approximation. The delta approximation is close, but the VaR derived using delta is slightly low. The delta approximation also fails to account for theta—the time decay in the option position. Because the option is written, time decay over the 1-week horizon increases the return of the portfolio. This increased return is barely perceptible in Figure 2 as the exact portfolio value exceeds the delta approximation when the stock price is close to 100.

Example 5. Suppose we have two stocks along with written call options on those stocks. Information for the stocks and options is in Table 1. Using this information, we obtain a portfolio value of

$$
\begin{array}{l} W = (3 0, 0 0 0 \times \$ 1 0 0) - (2 5, 0 0 0 \times \$ 1 3. 3 3 9 7) \\ + (5 0, 0 0 0 \times \$ 1 0 0) - (6 0, 0 0 0 \times 1 0. 3 5 1 1) = \$ 7, 0 4 5, 4 4 0 \\ \end{array}
$$

Using equations (10) and (11), the annual mean and standard deviation are  $8.392\%$  and  $16.617\%$ . There is a  $95\%$  chance that the portfolio value will exceed

TABLE I

Information about two stocks and call options on those stocks. Assumes the risk-free rate is  $8\%$  and that neither stock pays a dividend. The correlation between the stocks is 0.4.

<table><tr><td rowspan="2">Stock</td><td colspan="4">Stock Information</td><td colspan="5">Option Information</td></tr><tr><td>S</td><td># Shares</td><td>α</td><td>σ</td><td>C(S)</td><td>Strike</td><td>Δ</td><td>Expiration</td><td># Shares</td></tr><tr><td># 1</td><td>$100</td><td>30,000</td><td>0.15</td><td>0.30</td><td>$13.3397</td><td>$105</td><td>0.6003</td><td>1.0</td><td>-25,000</td></tr><tr><td># 2</td><td>$100</td><td>50,000</td><td>0.18</td><td>0.45</td><td>$10.3511</td><td>$110</td><td>0.4941</td><td>0.5</td><td>-60,000</td></tr></table>

$$
\begin{array}{l} W \times \left[ 1 + \left(R _ {p} \times h\right) + \left(\sigma_ {p} \times \sqrt {h} \times z\right) \right] \\ = \7,045,440 \times \left[ 1 + 0.08392 \times \frac{1}{52} + 0.16617 \times \sqrt{\frac{1}{52}} \times (-1.645) \right] = \6,789,740 \\ \end{array}
$$

The  $95\%$  value at risk over a 1-week horizon is therefore

$$
\mathrm {V a R} = \ 6,789,740 - \$ 7,045,440 = -\$ 255,700
$$

Monte Carlo Simulation. The delta approximation can work poorly for nonlinear portfolios. For example, consider an at-the-money written straddle (a written call and written put, both with the same strike price). The straddle suffers a loss if the stock price increases or decreases, which is not a situation suited to a linear approximation. Because of losses from stock moves in either direction, we need to consider both tails when computing VaR. Monte Carlo simulation works well in this situation since the simulation produces the distribution of portfolio values.

To use Monte Carlo simulation in the case of a single stock, we randomly draw a set of stock prices. For multiple stocks, we can use the appropriate parameters for each stock and use the Cholesky decomposition to ensure the appropriate correlation among stock prices. Once we have the portfolio values corresponding to each draw of random prices, we sort the resulting portfolio values in ascending order. The  $5\%$  lower tail of portfolio values, for example, is used to compute the  $95\%$  value at risk.

We will look at two examples in which we compute VaR for a position using Monte Carlo simulation. First we will examine a straddle on a single stock, and then a straddle-like position that contains a written call on one stock and a written put on the other.

Example 6. Consider the 1-week 95\% value at risk of an at-the-money written straddle on 100,000 shares of a single stock. Assuming that S = \100, K = \100, \sigma = 30\%, r = 8\%, T = 30 days, and \delta = 0, the initial value of the straddle is -\685,776. Because the underlying asset is a single stock, we can compute the VaR of the position directly without Monte Carlo simulation. Figure 3 graphs the exact value of the straddle after 1 week, compared with its initial value.^{6} The expected return on the stock is 15\% in this calculation.

# FIGURE 3

The value of a portfolio, as a function of the stock price, containing 100,000 written call options with a $100 strike and 100,000 written put options with a $100 strike. Assumes σ = 30\%, r = 8\%, t = 23 days, and δ = 0.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/c71e8320238ea1373c22100aba862c4b2b7380459a22ee40f3746b3f71b319c4.jpg)

Table 2 shows a subset of the values plotted in Figure 3. Examine the boxed entries in Table 2. If the stock price declines, there is a 0.9\% probability that the value of the position will be less than -\942,266. If the stock price rises, there is a 4\% chance that the position value will be less than -\942,639. Thus, in total, there is a 4.9\% probability of a loss in excess of about \$942,452, which is the average of the boxed numbers. The 1-week 95\% VaR is therefore approximately -\942,452 - (-\685,776) = -\256,676. Even in this one-stock example, calculating the VaR for this two-tailed position is not as simple as computing the stock prices that are exceeded with 2.5\% probability.

Monte Carlo simulation simplifies the analysis. To use Monte Carlo, we randomly draw a set of  $z \sim \mathcal{N}(0, 1)$  and construct the stock price as

$$
S _ {h} = S _ {0} e ^ {(\alpha - \delta - 0. 5 \sigma^ {2}) h + \sigma \sqrt {h} z} \tag {13}
$$

We compute the Black-Scholes call and put prices using each stock price, which gives us a distribution of straddle values. We then sort the resulting straddle values in ascending order. The  $5\%$  value is used to compute the  $95\%$  value at risk.

Figure 4 plots the histogram of values resulting from 100,000 random simulations of the value of the straddle. There is a  $943,028$ ; hence, value at risk is  $-943,028 - (-685,776) = -257,252$ . This result is very close to the value we inferred from Table 2.

As a second example we suppose that instead of the written put and call having the same underlying stock, they have different, correlated underlying stocks.

Value of written straddle,  $V$ , for different stock prices,  $S$ . Values in the  $z$  column are standard normal values with the corresponding cumulative probabilities in the  $N(z)$  column. Over 1 week there is approximately a  $5\%$  probability that the stock price will be outside the range  $\$90.87 -$ 107.77. The option values are computed using the Black-Scholes formula with  $\sigma = 30\%$ ,  $r = 8\%$ ,  $t = 23$  days, and  $\delta = 0$ . The stock price movement assumes  $\alpha = 15\%$ .

TABLE 2

<table><tr><td>z</td><td>S($)</td><td>V ($)</td><td>N(z)</td><td>z</td><td>S ($)</td><td>V ($)</td><td>N(z)</td></tr><tr><td>-2.50</td><td>90.30</td><td>-985,970</td><td>0.006</td><td>1.70</td><td>107.55</td><td>-926,472</td><td>0.955</td></tr><tr><td>-2.45</td><td>90.49</td><td>-971,234</td><td>0.007</td><td>1.75</td><td>107.77</td><td>-942,639</td><td>0.960</td></tr><tr><td>-2.40</td><td>90.68</td><td>-956,663</td><td>0.008</td><td>1.80</td><td>107.99</td><td>-959,111</td><td>0.964</td></tr><tr><td>-2.35</td><td>90.87</td><td>-942,266</td><td>0.009</td><td>1.85</td><td>108.22</td><td>-975,880</td><td>0.968</td></tr><tr><td>-2.30</td><td>91.06</td><td>-928,050</td><td>0.011</td><td>1.90</td><td>108.44</td><td>-992,939</td><td>0.971</td></tr></table>

Example 7. Suppose that there are two stocks. Stock 1 is the same as the stock in Example 6. Stock 2 has the same parameters and a correlation of 0.40 with stock 1. Because the stocks have the same volatility and dividend yield, the initial option values are the same and the written straddle has an initial value of  $-\$ 685,776$ . Based on 100,000 simulated prices for both stocks, the portfolio has a  $95\%$  chance of having a value greater than  $1,135,421$ . Hence, the  $95\%$  value at risk is  $-\$ 1,135,421 - (-\$ 685,776) = -\$ 449,645$ . The histogram for this calculation is in Figure 5.

A comparison of the results in Examples 6 and 7 shows that writing the straddle on two different stocks increases value at risk. If we examine the distributions in Figures 4 and 5, we can see why this happens.

Notice first that in Figure 4, the value of the portfolio never exceeds about -\597,000. The reason is that, since the call and put are written on the same stock, stock price moves can never induce the two options to appreciate together. They can appreciate due to theta, but a change in the stock price will induce a gain in one option and a loss in the other. The same effect limits a loss, since the two options can never lose money together.

When the options are written on different stocks, as in Figure 5, it is possible for both to gain or lose simultaneously. As a result, the distribution of prices has a greater variance and increased value at risk.

As a final comment, all the value at risk calculations in this section assumed an expected return for the stocks that was positive and different from the risk-free rate. Because the horizon was only 7 days, the results are not too different from those obtained assuming the drift is zero or equal to the risk-free rate. For longer horizons the particular assumption about expected return would make more of a difference.

# VaR for Bonds

In this section we see how to compute VaR for bonds, using information about the volatilities and correlations of yields for bonds at different maturities.

# FIGURE 4

Histogram from a Monte Carlo simulation of the value of a written straddle after 7 days. Both the call and the put are written on the same stock. Assumes at-the-money calls and puts are written on 100,000 shares, with  S = \100 ,  \sigma = 30\% ,  r = 8\% ,  T = 23  days, and  \delta = 0 .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/e21a33bc2085e1c0d0f9a670b7781665ec0ac18fdd5a93be645ad37c15e67f78.jpg)

At any point in time there are numerous interest-rate sensitive claims, including bonds, FRAs, and swaps, all of which can have different maturities and be denominated in different currencies. We can simplify the problem of risk modeling for interest-rate sensitive claims by considering that all of these claims can be decomposed into zero-coupon bonds. Thus, the problem of assessing the risk of a bond, FRA, or swap reduces to one of decomposing the claim into its constituent zero-coupon bonds and assessing the risk of these. The risk of the bond or other claim can then be measured as the risk of a portfolio of zero-coupon bonds.

It is natural to characterize risk in terms of the bond yield rather than the bond price. Yield uncertainty implies price uncertainty.

Here is an example of how to measure VaR for a zero-coupon bond. Suppose that a zero-coupon bond matures at time  $T$  and has price  $P(T)$ , and that the annualized yield volatility of the bond is  $\sigma_T$ . For a zero-coupon bond, duration equals maturity. Thus, if the yield changes by  $\epsilon$ , the percentage change in the bond price will be approximately  $\epsilon T$ . Using this linear approximation based on duration, and ignoring the mean return on the bond, over the horizon  $h$  the bond has a 95\% chance of being worth more than

$$
P (T) [ 1 + \sigma_ {T} T \sqrt {h} \times (- 1. 6 4 5) ]
$$

Example 8. Suppose a bond has  $T = 10$  years to maturity. Its yield to maturity is  $5.5\%$  and the annualized yield volatility is  $1\%$ . The 1-week VaR on a 10m position in these bonds is

$$
\$ 10 \mathrm {m} \times \left[ 1 + 0. 0 1 \times 1 0 \times \sqrt {\frac {1}{5 2}} \times (- 1. 6 4 5) \right] - \$ 1 0 \mathrm {m} = - \$ 2 2 8, 1 2 0
$$

# FIGURE 5

Histogram from a Monte Carlo simulation over 7 days of a portfolio containing 100,000 written call options on one stock with a  $100 strike and 100,000 written put options on a different stock with a$ 100 strike. For both stocks, and options, assume  $\sigma = 30\%$ ,  $r = 8\%$ ,  $T = 23$  days, and  $\delta = 0$ . The correlation between the two stocks is  $40\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/fc876a6bf30c5d4347a40fed018d9ee0ad6478c0b2c91c87531ac5c04c14b3aa.jpg)

Now suppose that instead of a single bond we have a portfolio of zero-coupon bonds. In particular, suppose we own  $W_{1}$  of a bond maturing at  $T_{1}$  with annualized yield volatility  $\sigma_{T_1}$  and  $W_{2}$  of a bond maturing at  $T_{2}$  with annualized yield volatility  $\sigma_{T_2}$ . Let  $\rho$  represent the correlation between the yields on the two bonds. (This yield volatility information could be estimated using historical data or using implied volatilities.) As with a portfolio of stocks, we can use the delta approximation, only here instead of two correlated stock returns we have two correlated bond yields.

Example 9. Let  $T_{1} = 10$ ,  $T_{2} = 15$ ,  $\sigma_{T_{1}} = 0.01$ ,  $\sigma_{T_{2}} = 0.012$ ,  $\rho = 0.985$ ,  $W_{1} = \6\mathrm{m}$ , and  $W_{2} = \$ 4\mathrm{m} . Since the portfolio is  $60\%$  invested in the 10-year bond and  $40\%$  invested in the 15-year bond, the variance of the bond portfolio is

$$
\begin{array}{l} (0. 6 \times 0. 0 1 \times 1 0) ^ {2} + (0. 4 \times 0. 0 1 2 \times 1 5) ^ {2} \\ + (2 \times 0. 9 8 5 \times 0. 6 \times 0. 4 \times 0. 0 1 \times 1 0 \times 0. 0 1 2 \times 1 5) = 0. 0 1 7 2 9 \\ \end{array}
$$

The volatility is  $\sqrt{0.01729} = 0.1315$ . The  $95\%$  1-week VaR for this portfolio is therefore

$$
\$ 10 \mathrm {m} \times [ 1 + 0. 1 3 1 5 \sqrt {1 / 5 2} \times (- 1. 6 4 5) ] - \$ 1 0 \mathrm {m} = - \$ 3 0 1, 6 3 8
$$

Duration here is used mechanically to compute the price change for a bond for a given change in the bond's own yield. This is a delta approximation to the actual bond price change. The conceptual problem with duration becomes problematic when we use duration to compute a hedge ratio for two bonds. The hedge ratio calculation assumes that the yield to maturity for the two bonds changes by the same amount. By contrast, in Example 9 each bond has a different yield volatility and there is an imperfect correlation between the two yields; thus, we do not assume that all yields to maturity change by the same amount—i.e., that there is a parallel yield curve shift. (For a parallel yield curve shift, we would need each bond to have the same annualized yield volatility and  $\rho = 1$ .)

In general, if we are analyzing the risk of an instrument with multiple cash flows, the first step is to find the equivalent portfolio of zero-coupon bonds. A 10-year bond with semiannual coupons is equivalent to a portfolio of 20 zero-coupon bonds. Every interest rate claim is decomposed in this way into interest rate " buckets" containing the claim's constituent zero-coupon bonds. A set of bonds and swaps reduces to a portfolio of long and short positions in zero-coupon bonds. We need volatilities and correlations for all these bonds.

As an empirical matter, the movement of a zero-coupon bond at an 8-year maturity, for example, is highly correlated with that of a zero-coupon bond at an  $8\frac{1}{2}$ -year maturity. Thus, for tractability, volatility and yields are tracked only at certain benchmark maturities. If we have a zero-coupon bond in the portfolio that does not exactly match a benchmark maturity, we want to determine the portfolio of the benchmark zero-coupon bonds that matches the characteristic of the nonbenchmark zero-coupon bond. The goal is to find an interpolation procedure to express any hypothetical zero-coupon bond in terms of the benchmark zero-coupon bonds. This procedure in which cash flows are allocated to benchmark claims (in this case zero-coupon bonds) is called cash flow mapping.

Suppose, for example, that we wish to assess the risk of a 12-year zero-coupon bond, given information on the 10-year and 15-year zero-coupon bonds. It is reasonable to use simple linear interpolation to obtain the yield and yield volatility for the 12-year bond from those of the 10-year and 15-year bonds. For example, if the yield and volatility of the  $t$ -year bond are  $y_{t}$  and  $\sigma_{t}$ , linear interpolation gives us

$$ y _ {1 2} = \left(0. 6 \times y _ {1 0}\right) + \left(0. 4 \times y _ {1 5}\right) \tag {14}
$$

$$
\sigma_ {1 2} = (0. 6 \times \sigma_ {1 0}) + (0. 4 \times \sigma_ {1 5}) \tag {15}
$$

These interpolations enable us to determine the price and volatility of 1 paid in year 12. In particular, the price is  e^{-y_{12} \times 12} . However, we are not finished, because these interpolations do not provide correlations between the 12-year zero and the adjacent benchmark bonds. We need these correlations because we could have a portfolio containing 10-, 12-, and 15-year bonds.

The next step is to ask what combination of the 10and 15-year zero-coupon bonds would have the same volatility as the hypothetical 12-year bond. If we let  $\omega$  equal the fraction allocated to the 10-year bond, we must solve

$$
\sigma_ {1 2} ^ {2} = \left(\omega^ {2} \sigma_ {1 0} ^ {2}\right) + \left[ (1 - \omega) ^ {2} \sigma_ {1 0} ^ {2} \right] + \left[ 2 \rho_ {1 0, 1 5} \omega (1 - \omega) \sigma_ {1 0} \sigma_ {1 5} \right] \tag {16}
$$

Since this is a quadratic equation, there are two solutions for  $\omega$ . Typically, as in the following example, one of the two solutions will be economically appealing and the other will seem unreasonable.

Example 10. Suppose we have a $1 cash flow occurring in year 12 and that we wish to map to the 10and 15-year zero-coupon bonds. Suppose that  $y_{10} = 5.5\%$ ,  $y_{15} = 5.75\%$ ,  $\sigma_{10} = 1\%$ ,  $\sigma_{15} = 1.2\%$ , and  $\rho = 0.985$ . The yield and volatility of the hypothetical 12-year zero-coupon bond are

$$
\begin{array}{l} y _ {1 2} = (0. 6 \times 0. 0 5 5) + (0. 4 \times 0. 0 5 7 5) = 0. 0 5 6 \\ \sigma_ {1 2} = (0. 6 \times 0. 0 1) + (0. 4 \times 0. 0 1 2) = 0. 0 1 0 8 \\ \end{array}
$$

We next need to find the cash flow mapping that matches the volatility. Solving equation (16) gives the two solutions  $\omega = 6.2097$  and  $\omega = 0.5797$ . The first solution maps the cash flow by going long  $621\%$  of the 10-year bond and short  $520\%$  of the 15-year bond. The second, more economically reasonable solution entails going long  $57.97\%$  of the 10-year bond and  $42.03\%$  of the 15-year bond.

Notice that the solution  $\omega = 0.5797$  is close to the  $60\% -40\%$  split you might have guessed at the outset. Given these weights, value at risk for the 12-year bond can be computed in the same way as VaR for the bond portfolio in Example 9.

If you find this procedure confusing, recognize that if we had mapped the 12-year bond by assigning  $60\%$  of it to the 10-year bond and  $40\%$  to the 15-year bond, then we would not have matched the yield and volatility given by equations (14) and (15). Because of the nonlinear relationship between prices and yields, an interpolation based on the yield will give a different cash flow map than an interpolation based on prices.

Although we have discussed cash flow mapping in the context of bonds, mapping can be applied to any claim with multiple cash flows.

# Estimating Volatility

Volatility is the key input in any VaR calculation. In most of the examples in this chapter, return volatility over the horizon  $h$  is  $\sigma \sqrt{h}$ , with  $\sigma$  constant. This calculation assumes both that the volatility,  $\sigma$ , does not change, and that returns are independent over time. In practice, both assumptions may be violated. One response is to use stressed VaR.

When using ordinary VaR, it is straightforward to estimate historical volatilities given a time series of returns. However, volatility is typically not constant over time. As a consequence, it is necessary to update volatility estimates when VaR is computed. There are a number of ways to estimate volatility: simple historical volatility, exponentially weighted moving average, GARCH, realized volatility, and implied volatility. Keep in mind, however, that when volatility is stochastic, there can be a risk premium for volatility that will affect the option price. Inferring the volatility from option prices when volatility is stochastic requires careful modeling, since it is necessary to disentangle the true implied volatility and the risk premium. This is an area of ongoing research.

Depending on the asset, returns may be correlated over time. To a first approximation, stock returns are independent over time. However, over horizons as short as a day, returns may be negatively correlated due to factors such as bid-ask bounce. There is some evidence of negative correlation at longer horizons, though the effect is more subtle.

When returns are correlated, volatility does not scale with  $\sqrt{h}$ . If returns are negatively correlated over time, then high returns are followed by low returns. Thus, negative return correlation dampens volatility relative to the independent returns case. If returns are positively correlated, high returns follow high returns, which results in a higher volatility than in the independent returns case.

With commodities, return independence may depend on the horizon. For example, high copper prices lead to increased supply and reduced demand, which eventually induces the price to fall. So return independence is not reasonable for long horizons. However, independence may be reasonable over horizons short enough that supply and demand responses do not have time to occur.

Finally, we also require correlation estimates in order to compute volatilities of portfolios. Correlations can be estimated using historical data the same way as volatilities. However, it is important to be aware that, just as volatilities will change in times of financial stress, correlations will change as well. When there is a stock market crash, for example, by definition all stocks move together, exhibiting a temporarily high positive correlation. One of the surprises during 2006-2008 was that housing prices in markets across the country simultaneously fell. It is important, therefore, to test correlation assumptions. One way to do this is by evaluating scenarios in which asset prices undergo large moves and asset correlations become extreme.

# Bootstrapping Return Distributions

It is possible to use observed past returns to create an empirical probability distribution of returns that can then be used for simulation. This procedure is called bootstrapping. The idea of bootstrapping is to sample, with replacement, from observed historical returns under the assumption that future returns will be drawn from the same distribution. For example, if the stock price over a 5-day period has returns of  $\{-0.02, 0.015, -0.01, 0.10, 0.03\}$ , then this distribution can be bootstrapped by randomly selecting one of these returns each time a new 1-day return is needed. In effect, bootstrapping randomly shuffles past returns to create hypothetical future returns.

We have seen how the lognormal model has trouble accounting for events like the 1987 market crash. The advantage of bootstrapping is that, since it is not based on a particular assumed distribution, it is consistent with any distribution of returns. For example, if an event like a significant market crash occurs once every 10 years historically, it will occur on average once every 10 years in the bootstrapped distribution.

A disadvantage of simple bootstrapping is that key features of the data might be lost when the data are reshuffled. For example, if historical returns exhibit persistence in volatility, randomly reshuffled historical returns will not exhibit such persistence. It is possible to bootstrap a distribution while preserving correlation; this is called a dependent bootstrap. First, it is possible to bootstrap by randomly selecting blocks of data at a time. The use of blocks preserves correlation across time within the blocks. Second, given a specification for the correlated series, we can estimate the correlated process and use this to bootstrap. For example, suppose we believe that a commodity price is generated by the process

$$
S _ {t + h} = a + \rho S _ {t} + \epsilon_ {t + h} \tag {17}
$$

If we fit this process to the data, we obtain an estimate of  $\rho$  and a time series of errors,  $\epsilon_{t + h}$ . These errors should be uncorrelated if equation (17) is correctly specified. We can then simulate the process in equation (17) by randomly drawing from the estimated errors. This will generate a series with the observed correlation and with errors drawn from the data.

# 2. ISSUES WITH VaR

VaR provides a single number that is easy to interpret and communicate. However, VaR is not the only way to assess risk, and it has conceptual shortcomings. In this section we discuss some alternatives to simple VaR and introduce the concept of subadditive risk measures. In the course of comparing risk measures, we will also discuss the use of the true price distribution in computing VaR as compared to the risk-neutral distribution, which we use in pricing derivatives.

# Alternative Risk Measures

Consider again the VaR for a single stock. Suppose the current stock price is  $S_0$  and we wish to assess the risk of this investment at time  $T$ . As before, if the confidence level is  $c$ , define  $\bar{S}(c)$  as the stock price such that there is a  $c$  probability that the stock price at time  $T$  will be worth less than  $\bar{S}(c)$ . In addition to VaR, we can compute two additional risk measures based on the VaR: the tail VaR, which we define below, and the cost of insurance against outcomes below the VaR level.

Tail VaR. A shortcoming of VaR is that it specifies the minimum loss that will occur with a given probability. In practice we would like to know the expected magnitude of the loss should a loss occur. This is called the tail VaR, conditional VaR (CVaR), or the expected tail loss. For the simple case where the portfolio consists of one stock, we can assess the severity of the loss by computing the average loss conditional upon the stock price being less than  $\bar{S}(c)$ . Whereas VaR specifies the level,  $\bar{S}(c)$ , that will be breached with probability  $c$ , tail VaR measures the average severity of the breach. For the single stock case, tail VaR is defined as

$$
\operatorname {E} \left[ S _ {0} - S _ {T} \mid S _ {T} <   \bar {S} (c) \right] = S _ {0} - \operatorname {E} \left[ S _ {T} \mid S _ {T} <   \bar {S} (c) \right] \tag {18}
$$

Example 11. Assume that we own stock with a current price of 100, a volatility of 30\%, an expected return of 15\%, and a dividend yield of 0. Also assume that the risk-free rate is 8\%. Let T = 0.5.

Figure 6 depicts the probability density for  $S_{T}$ , the stock price at the  $5\%$  quantile, and the conditional expected stock price. To compute the VaR, we first need to compute  $\bar{S}(0.05)$ :

$$
\begin{array}{l} \bar {S} (0. 0 5) = \$ 1 0 0 e ^ {(0. 1 5 - 0. 5 \times 0. 3 ^ {2}) \times 0. 5 - 1. 6 4 5 \times 0. 3 0 \times \sqrt {0 . 5}} \\ = \$ 74.347 \\ \end{array}
$$

Thus, VaR is

$$
\mathrm {V a R} = \\mathbb {1 0 0} - \mathbb {7 4 . 3 4 7} = \mathbb {2 5 . 6 5 3}
$$

The calculation of tail VaR is based on the expected stock price conditional upon  S_T < \74.347 . We obtain

$$
\begin{array}{l} \mathrm {E} \left(S _ {T} \mid S _ {T} <   \$ 7 4. 3 4 7\right) = \frac {1 0 0 \times e ^ {0 . 1 5 \times 0 . 5} N (- \hat {d} _ {1})}{N (- \hat {d} _ {2})} \\ = \$ 68.244 \\ \end{array}
$$

# FIGURE 6

The probability distribution for  $S_{T}$ , the VaR price level  $(\bar{S}(0.05))$ , and the tail VaR price level  $(\mathrm{E}[S_T|S_T < \bar{S}(0.05)])$ where

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/c32374e47432a7759a48ef3837252af7d32644760ff91ae4ee637ab324083905.jpg)

$$
\hat {d} _ {1} = - \frac {\ln (1 0 0 / 7 4 . 3 4 7) + (0 . 1 5 + 0 . 5 \times 0 . 3 0 ^ {2}) \times 0 . 5}{0 . 3 0 \sqrt {0 . 5}}
$$

$$
\hat {d} _ {2} = \hat {d} _ {1} - 0. 3 0 \sqrt {0 . 5}
$$

Tail VaR is therefore

$$
\text {T a i l V a R} = \$ 1 0 0 - \$ 6 8. 2 4 4 = \$ 3 1. 7 5 6
$$

Figure 6 depicts the probability density for the stock price in 6 months, the VaR price level, and the tail VaR price level.

It is possible to interpret tail VaR as an average of VaRs with different confidence levels. We can approximate the conditional expectation of the stock price below  $\bar{S}(c)$  by averaging the stock prices associated with VaRs at levels lower than  $c$ . For example, suppose we were to compute VaR at a series of different confidence levels: 0.005, 0.01, 0.015, etc. We would first compute a series of stock prices:  $\bar{S}(0.005)$ ,  $\bar{S}(0.01)$ ,  $\bar{S}(0.015)$ , etc. By definition, each of these stock prices is a quantile. While the probability that  $S_T$  is below each of these stock prices is different, there is an equal probability that  $S_T$  is approximately equal to any of these stock prices. More precisely, the probability of the stock price being between  $\bar{S}(0.005)$  and  $\bar{S}(0.01)$  is equal to the probability of  $S_T$  being between  $\bar{S}(0.01)$  and  $\bar{S}(0.015)$ , etc. By averaging the stock prices  $\bar{S}(0.005)$ ,  $\bar{S}(0.01)$ ,  $\bar{S}(0.015)$ , …,  $\bar{S}(0.05)$ , we approximate the conditional expectation of the stock price below  $\bar{S}(0.05)$ , which is 68.244.

Figure 7 illustrates this calculation. The two panels show quantiles below  $5\%$ . The average of these quantiles is approximately equal to the conditional expectation of 68.244. As we average more quantiles, we approximate the conditional expectation more closely. In most applications there will be no simple formula for the conditional expectation. It is then possible to approximate tail VaR by averaging quantiles.

# FIGURE 7

The top panel depicts quantiles from 0.0025 to 0.05 at intervals of 0.0025. The average of these quantiles is  $68.809. The bottom panel depicts quantiles from 0.001 to 0.05 at intervals of 0.001. The average of these quantiles is$ 68.496. Assumes the same parameters as in Example 11.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/4657ea5f7eeabe45d690ddf011d003da8a8c598d99ea0128bfe5ead0d455913a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/94e123cbc432b9c7481f72ae2760904f15d883597db5d7d52bdac6ce3595fb1c.jpg)

The Cost of Insurance. One application of VaR and VaR-like calculations is to compute the capital required to support a risky business. Capital is a resource that permits the firm to sustain losses and still meet its business obligations. As an alternative to capital, we could imagine a firm purchasing insurance against a loss. The capital required to undertake the business would then be the price of this insurance. The market price of this insurance provides another way to measure risk.

Returning to our example of a single stock portfolio, if we insure against losses due to a stock price below  $\bar{S}(c)$ , then the time-  $T$  payoff on such an insurance policy will be

$$
\max  [ 0, \bar {S} (c) - S _ {T} ]
$$

Thus, the insurance premium is the value of a put option with strike price  $\bar{S}(c)$  and time to expiration  $T$ . We can obtain the value of the put by computing

$$
\begin{array}{l} e ^ {- r T} \mathrm {E} ^ {*} [ \bar {S} (c) - S _ {T} | S _ {T} <   \bar {S} (c) ] \times \Pr^ {*} [ S _ {T} <   \bar {S} (c) ] \tag {19} \\ = e ^ {- r T} \left\{\bar {S} (c) \times - \mathrm {E} ^ {*} [ S _ {T} | S _ {T} <   \bar {S} (c) ] \right\} \times \Pr^ {*} [ S _ {T} <   \bar {S} (c) ] \\ \end{array}
$$ where  $\mathrm{E}^*$  and  $\operatorname{Pr}^*$  represent the expectation and probability computed with respect to the risk-neutral distribution. The put price calculation appears similar to the conditional price calculation used in computing tail VaR, but the two calculations are not identical. One obvious difference is that tail VaR is computed using the conditional expectation of the stock price under the true distribution, while the option price uses the risk-neutral distribution. Note that while  $\operatorname*{Pr}[S_T < \bar{S}(c)] = c$ ,  $\operatorname*{Pr}^*[S_T < \bar{S}(c)] \neq c$  unless the risk premium on the asset is zero ( $\alpha = r$ ). Also, the put price is discounted, while the tail VaR is not.


VaR horizons are often short, so that discounting may not be an important issue. Also, with a short horizon the difference between the risk-neutral and true distribution may not be large.[8]

Example 12. Assume the same parameters as in Example 11, and also that the risk-free rate is  $8\%$ . The price of a put with 6 months to expiration and a strike of 74.347 is

$$

\operatorname {B S P u t} (1 0 0, 7 4. 3 4 7, 0. 3 0, 0. 0 8, 0. 5 0, 0) = \$ 0. 4 2 8 9

$$

# VaR and the Risk-Neutral Distribution

Let's try to interpret VaR and tail VaR in terms of insurance. If we are willing to accept losses less than the VaR level, then we can think of VaR as a deductible: It is the loss we willingly sustain before insurance pays anything. The difference between tail VaR and VaR is then the average payout from insurance; this payout occurs with true probability  $c$ . Since we are using the true distribution, the appropriate discount rate for a conditional expectation is unclear. (This is another manifestation of the problem of obtaining a "true" discount rate for an option.) Let  $\gamma$  denote the discount rate. A back-of-the-envelope calculation for the value of the average insurance payoff, assuming  $\gamma = r$ , is

$$

\begin{array}{l} e ^ {- \gamma T} [ \text {T a i l V a R - V a R} ] \times \Pr \left[ S _ {T} <   \bar {S} (c) \right] \tag {20} \\ = e ^ {- \gamma T} \left\{S _ {0} - \mathrm {E} \left[ S _ {T} \mid S _ {T} <   \bar {S} (c) \right] - \left[ S _ {0} - \bar {S} (c) \right] \right\} \times c \\ = e ^ {- 0. 0 8 \times 0. 5 0} \times (7 4. 3 4 7 - \$ 6 8. 2 4 4) \times 0. 0 5 \\ = 0. 2 9 3 2 \\ \end{array}

$$

The value of insurance inferred from the VaR calculation is substantially less than that computed using the Black-Scholes formula. There are two reasons why this calculation gives the wrong answer.

First,  $5\%$  is the VaR probability under the true distribution, not under the risk-neutral distribution. The risk-neutral probability that  $S_{T} < 74.347$  is  $6.945\%$ . The risk-neutral probability is greater than the true probability because the  $8\%$  risk-free rate is less than the  $15\%$  expected return on the stock (i.e.,  $\alpha > r$ ).

Second, the conditional expected stock price under the risk-neutral distribution is less than that under the true distribution:

$$

\mathrm {E} ^ {*} \left(S _ {T} \mid S _ {T} <   \$ 7 4. 3 4 7\right) = \$ 6 7. 9 1 9

$$

Again, the true conditional expectation exceeds the risk-neutral conditional expectation because  $\alpha > r$ .

We can change the probability and conditional expectation to their risk-neutral values and repeat the calculation in equation 20. We then obtain

$$ e ^ {- 0. 0 8 \times 0. 5 0} \times (\$ 7 4. 3 4 7 - \$ 6 7. 9 1 9) \times 0. 0 6 9 4 5 = \$ 0. 4 2 8 9
$$

This is the same as the put premium in Example 12.

As a final comment, note that the  $5\%$  VaR will also be different depending upon whether we use the true or risk-neutral distribution. In this discussion we continued to use  $\$74.347$ —computed under the true distribution—as the VaR stock price.

The conclusion of this discussion is that we need to be cautious when interpreting VaR and tail VaR calculations. Economically, when  $\alpha > r$ , VaR-style calculations computed using the true stock-price distribution understate the insurance cost because they fail to properly account for the risk premium as a component of the drift on the asset. The risk premium is compensation for the fact that when the stock earns a low return, investors generally have suffered losses on their investments (their marginal utility of consumption is high). Insurance hedges against this outcome and is therefore valuable to investors. The Black-Scholes calculation properly accounts for the role of the risk premium, while the back-of-the-envelope calculation using VaR does not.

# Subadditive Risk Measures

Artzner et al. (1999) point out a conceptual problem with VaR. As we have discussed, a common use of a risk measure is to decide how much capital is required to support an activity. Artzner et al. argue that a reasonable risk measure (or measure of required capital) should have certain properties, among them subadditivity.[10] If  $\rho(X)$  is the risk measure associated with activity  $X$  (the capital required to support activity  $X$ ), then  $\rho$  is subadditive if for two activities  $X$  and  $Y$ ,

$$
\rho (X + Y) \leq \rho (X) + \rho (Y) \tag {21}
$$

This simply says that the risk measure for the two activities combined should be less than that for the two activities separately. Because combining activities creates diversification, the capital required to support two activities together should be no greater than that required to support the two separately. If capital requirements are imposed using a rule that is not subadditive, then firms can reduce required capital by splitting up activities.

VaR is not subadditive. To show this, Artzner et al. provide an example using European out-of-the-money cash-or-nothing options having the same time to expiration and written on a single stock. Option A, a cash-or-nothing call, pays 1 if S_T > H, while option B, a cash-or-nothing put, pays 1 if S_T < L. Represent the premiums of the two options as P_A and P_B and suppose that either option has a 0.8\% probability of paying off. The probability that either option expires out-of-the-money is 99.2\%, and the probability that both options expire out-of-the-money is 98.4\%.

Consider a financial institution that writes such options. For either option considered alone, the bank is confident at a  $99\%$  level that the option will not be exercised, in which case the bank keeps the premium. Thus, VaR at a  $99\%$  confidence level is  $-P_A$  (for option A) or  $-P_B$  (for option B). VaR is negative because with  $99\%$  confidence, the option writer will keep the premium without the option being exercised.

Now suppose the institution sells both options. Because the two written options have the same underlying stock, they are perfectly negatively correlated. Therefore, the probability that one of the two options will be exercised is  $0.8\% + 0.8\% = 1.6\%$ . In the lowest  $1\%$  of the return distribution, one of the two options will be exercised. The VaR at the  $99\%$  level for the writer of the two options is therefore  $\$1 - P_A - P_B$ . We have

$$
\operatorname {V a R} (- A - B) = \$ 1 - P _ {A} - P _ {B} > - P _ {A} - P _ {B} = \operatorname {V a R} (- A) + \operatorname {V a R} (- B)
$$

This expression has the opposite inequality as equation (21), so VaR is not subadditive in this example. In words, the institution can eliminate risk, as measured by  $99\%$  VaR, by undertaking the two activities in separate entities.

As a different example that illustrates this point, suppose you are comparing activity C, which generates a  $1 loss with a 1.1\%$  probability, with activity D, which generates a 1m loss with a  $0.9\%$  probability. Any reasonable rule should assign greater risk (and require more capital) for activity D, but a  $1\%$  VaR would be greater for C than for D.

These examples highlight an intuitively undesirable property of VaR as a risk measure: A small change in the VaR probability can cause VaR to change by a large amount. For the written cash-or-nothing call in this example, a  $0.81\%$  VaR is  $-P_A$ , while the  $0.79\%$  VaR is  $\$1 - P_A$ .

In contrast with VaR, tail VaR and the cost of insurance are both subadditive. Intuitively, tail VaR takes into account the distribution of losses beyond the VaR level, so it does not change abruptly when we change the VaR probability. To see that it is subadditive in our examples, the tail VaRs at the  $99\%$  level for A and B are

$$
\begin{array}{l} \rho (A) = 0. 8 \times (1 - P _ {A}) + 0. 2 \times (- P _ {A}) = 0. 8 - P _ {A} \\ \rho (b) = 0. 8 \times \left(1 - P _ {B}\right) + 0. 2 \times \left(- P _ {B}\right) = 0. 8 - P _ {B} \\ \end{array}
$$

With the same confidence level, tail VaR at the  $99\%$  level for A and B together is

$$
\rho (A + B) = 1 - P _ {A} - P _ {B}
$$

We then have

$$
\rho (A + B) = 1 - P _ {A} - P _ {B} <   \rho (A) + \rho (B) = 1. 6 - P _ {A} - P _ {B}
$$

Thus, tail VaR in this example is subadditive.

As for the subadditivity of insurance premiums, Merton (1973b) demonstrated that options on portfolios are no more expensive than a portfolio of options on the portfolio constituents. Insurance premiums are therefore subadditive.

# CHAPTER SUMMARY

Value at risk (VaR) is used to measure and manage risk—for example, in computing capital requirements. VaR deals primarily with so-called "market risks": price changes of stocks, currencies, interest rates, and commodities. The value at risk of a portfolio is the level of loss that will be exceeded a given percentage of the time over a specified horizon. Computing value at risk requires approximating the return distribution of the portfolio, which in turn requires information on the variance and covariance of assets in the portfolio. When portfolios are simple—for example, containing only stocks—standard portfolio risk calculations can be used to compute VaR. When portfolios contain options and other nonlinear assets, Monte Carlo simulation is commonly used to assess the return distribution of the portfolio. It is possible to construct examples in which VaR is an ill-behaved risk measure. Tail VaR, which takes into account the distribution of losses beyond the VaR level and the cost of insurance against losses exceeding the VaR level, may provide better alternatives.

# FURTHER READING

Pearson (2002) provides an excellent overview of VaR, with very clear discussions of relevant mathematical techniques. Jorion (2001) provides a broad overview of the regulatory, practical, and analytical issues in computing VaR. Hendricks (1996) compares the results from computing VaR in a variety of different ways. Artzner et al. (1999) is an influential paper offering some important warnings about the use of VaR as a decision-making tool. Further explorations along these lines include Acerbi (2002), Acerbi and Tasche (2002), and other papers in the July 2002 special issue of the Journal of Banking and Finance.

Taleb (2010) is a combative, alternative take on risk management.

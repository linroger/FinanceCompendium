---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 10
linter-yaml-title-alias: Chapter 10
---

# Chapter 10

# Valuation and Scenario Analysis

Valuation and scenario analysis are two important activities for financial institutions. Both are concerned with estimating future cash flows, but they have different objectives. In valuation, a financial institution is interested in estimating the present value of future cash flows. It does this by calculating the expected (or average) values of the future cash flows across all alternative outcomes and discounting the expected values back to today. In scenario analysis, a financial institution is interested in exploring the full range of situations that might exist at a particular future time. Usually, it is the adverse outcomes that receive the most attention because risk managers working for the financial institution are interested in answering the question: "How bad can things get?"

Suppose that a company sells one million one-year European call options on a stock. The stock price is \$50 and the strike price is \$55. The company might calculate the theoretical value of the options as +\$4.5 million to the buyer and -\$4.5 million to itself. If it sells the options for, say, \$5 million, it can book \$0.5 million of profit. But a scenario analysis might reveal that there is a 5\% chance of the stock price rising to above \$80 in one year. This means that there is a 5\% chance that the transaction will cost more than \$20 million, after the initial amount received for the options has been taken into account. This example emphasizes the key difference between valuation and scenario analysis. Valuation focuses on what will happen on average. (In our example, 4.5 million is the present value of the average payoff on the option.) Scenario analysis focuses on extreme outcomes. (In our example, 20 million is a possible net cost of the transaction to the company.)

This chapter discusses the way valuation and scenario analysis should be carried out in practice. It distinguishes between real-world projections, which underlie scenario analysis, and risk-neutral projections, which are used for valuation. It shows that risk-neutral valuation can be used for variables such as asset prices that evolve through time and to deal with situations where an outcome depends on whether a particular discrete event occurs (for example, a company defaulting).

# 10.1 Volatility and Asset Prices

As a preliminary to our discussion of valuation and scenario analysis, it is useful to produce a few results concerned with the behavior of asset prices. Suppose an asset price is currently  $S_0$ . A common assumption is that it has a constant expected growth rate of  $\mu$  per year (expressed with continuous compounding), and a constant volatility of  $\sigma$  per year. It can be shown that the probability density of the asset price,  $S_T$ , at time  $T$  years is then given by

$$
\ln S _ {T} \sim \phi [ \ln S _ {0} + (\mu - \sigma^ {2} / 2) T, \sigma^ {2} T ] \tag {10.1}
$$ where  $\phi(m, \nu)$  denotes a normal distribution with mean  $m$  and variance  $\nu$  and  $\ln$  is the natural logarithm function. The variable  $S_T$  has what is termed a lognormal distribution because its natural logarithm is normally distributed. The mean of  $\ln S_T$  is  $\ln S_0 + (\mu - \sigma^2 / 2)T$  and the standard deviation of  $\ln S_T$  is  $\sigma \sqrt{T}$ .


The probability of  $S_T$  being less than some value  $V$  is the same as the probability of  $\ln S_T$  being less than  $\ln V$ . From the properties of the normal distribution this is

$$

\operatorname {P r o b} \left(S _ {T} <   V\right) = N \left[ \frac {\ln V - \ln S _ {0} - \left(\mu - \sigma^ {2} / 2\right) T}{\sigma \sqrt {T}} \right] = N \left(- d _ {2}\right) \tag {10.2}

$$ where


$$ d _ {2} = \frac {\ln (S _ {0} / V) + (\mu - \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$ and  $N$  is the cumulative normal distribution function (given by NORMSDIST in Excel). The probability that  $S_{T}$  is greater than  $V$  at time  $T$  is


$$

\operatorname {P r o b} \left(S _ {T} > V\right) = 1 - N \left(- d _ {2}\right) = N \left(d _ {2}\right) \tag {10.3}

$$

Finally, suppose that we want to find the value,  $V$ , of  $S_T$  that has a probability  $q$  of being exceeded. This means that  $\operatorname{Prob}(S_T > V) = q$ . From equation (10.3), we require  $N(d_2) = q$  so that

$$ d _ {2} = \frac {\ln (S _ {0} / V) + (\mu - \sigma^ {2} / 2) T}{\sigma \sqrt {T}} = N ^ {- 1} (q)
$$ or


$$

V = S _ {0} \exp \left[ \left(\mu - \frac {\sigma^ {2}}{2}\right) T - N ^ {- 1} (q) \sigma \sqrt {T} \right] \tag {10.4}

$$ where  $N^{-1}$  is the inverse of the cumulative normal distribution function (given by NORMSINV in Excel). Similarly, the value,  $V$ , of  $S_T$  such that  $\mathrm{Prob}(S_T < V) = q$  is given by setting  $N(-d_2) = q$  or  $d_2 = -N^{-1}(q)$ . This leads to

$$
V = S _ {0} \exp \left[ \left(\mu - \frac {\sigma^ {2}}{2}\right) T + N ^ {- 1} (q) \sigma \sqrt {T} \right] \tag {10.5}
$$

# 10.2 Risk-Neutral Valuation

The single most important result in the valuation of derivatives is risk-neutral valuation. A risk-neutral world can be defined as an imaginary world where investors require no compensation for bearing risks. In this world, the required expected return from a risky investment is the same as that for a safe investment. In both cases, the expected return is the risk-free rate. The world we live in is clearly not a risk-neutral world. Investors do require compensation for bearing risks. (A framework for understanding risk-return trade-offs is presented in Chapter 1.) The risk-neutral valuation result, however, states that we can value any derivative by assuming that the world is risk-neutral. We get the right answer not just for the risk-neutral world but for all other worlds as well.

At first blush, the risk-neutral valuation result seems to make no sense. Investors do not live in a risk-neutral world. They do require higher expected returns when the risks they are bearing increase, and this applies to derivatives as well as to other investments. But the key point to note when trying to understand risk-neutral valuation is that when we are valuing a derivative we are calculating its value in terms of the price of an underlying asset. (The value of a stock option, for example, is calculated in terms of the price of the underlying stock.) The price of the underlying asset reflects the risk-return trade-offs of market participants. If market participants decide that they require a higher (or lower) return from an asset because of its risk, the price of the asset goes down (or up). What risk-neutral valuation says is that the formula for translating the price of the underlying asset into the value of the derivative is independent of the risk preferences of investors.

In a risk-neutral world, all future expected cash flows are discounted at the risk-free interest rate. This simplifies valuation considerably. Suppose that we are valuing a call option on a stock and the risk-free interest rate is  $3\%$ . The steps in implementing risk-neutral valuation are:

1. Assume that the expected (average) future return on the stock is  $3\%$ .
2. Calculate the expected payoff from the call option.
3. Discount the expected payoff at  $3\%$  to obtain the option's value.

A natural question is: "Why work in the risk-neutral world when it is more natural to work in the real world?" The answer is that we could in theory value the call option in the real world, but it would be much more difficult. The steps would be

1a. Estimate the expected (average) future return on the stock in the real world.

2a. Calculate the expected payoff from the call option in the real world.

3a. Discount the expected payoff at an appropriate discount rate to obtain the option's value.

For step 1a, we might be able to come up with a reasonable estimate of the (real-world) expected future return on the stock by estimating its beta and using the capital asset pricing model results in Chapter 1. Step 3a, however, would be really difficult. The correct discount rate to use for the expected payoff in the real world depends on the option's beta (not the stock's beta). It is likely to vary during the option's life. As the stock price changes, the leverage implicit in the option changes and so the discount rate changes. If a single discount rate is used for the whole of the life of a call option, it is surprisingly high. Similarly, if a single discount rate is used for the whole of the life of a put option, it is surprisingly low, usually negative. How do we know this? We can use risk-neutral valuation to value the options and then work back from the answer to see what the correct discount rate would have to be for real-world payoffs to give that answer. We will illustrate this for the case of a binary option shortly.

Risk-neutral valuation is an almost miraculous result. It means that we do not need to concern ourselves with issues such as the riskiness of a derivative and the return required by the market on either the underlying asset or the derivative. All we need to ask ourselves is: If we lived in a world where investors required an expected return equal to the risk-free rate on all investments, how would we value the derivative? Without risk-neutral valuation, the valuation of derivatives would be far more difficult (and far less precise) than it is.

It should be emphasized that risk-neutral valuation (or the assumption that investors do not care about risks when determining expected returns) is nothing more than an artificial device for valuing derivatives. The valuations that are obtained are correct in all worlds, not just the risk-neutral world. When we move from the risk-neutral world to the real world, two things happen. The expected payoffs from the derivative change, and the discount rate that must be used for the payoffs changes. It happens that these two changes always offset each other exactly.

# 10.2.1 Application to Forward Contract

As a simple example of risk-neutral valuation, consider the valuation of a long forward contract on a non-dividend-paying stock. Suppose that the delivery price is  $K$  and the time to maturity is  $T$ . The value of the contract at maturity is

$$
S _ {T} - K
$$ where  $S_{T}$  is the stock price at time  $T$ . From the risk-neutral valuation argument, the value of the forward contract at time zero (today) is its expected value at time  $T$  in a risk-neutral world, discounted at the risk-free rate of interest. Denoting the value of the forward contract by  $f$ , this means that


$$ f = e ^ {- r T} \hat {E} (S _ {T} - K)
$$ where  $\hat{E}$  denotes expected value in a risk-neutral world and  $r$  is the risk-free rate (expressed with continuous compounding and assumed constant). Because  $K$  is a constant, this becomes


$$ f = e ^ {- r T} \hat {E} (S _ {T}) - K e ^ {- r T} \tag {10.6}
$$

The expected growth rate of the stock price is  $r$  in a risk-neutral world. As a result,

$$
\hat {E} (S _ {T}) = S _ {0} e ^ {r T}
$$ where  $S_0$  is the stock price today. Substituting this into equation (10.6) gives


$$ f = S _ {0} - K e ^ {- r T} \tag {10.7}
$$

Similarly, the value of a short forward contract is

$$
K e ^ {- r T} - S _ {0} \tag {10.8}
$$

These results are consistent with Appendix C.

# 10.2.2 Application to Binary Options

As a further example of the application of risk-neutral valuation, suppose that the price of a non-dividend-paying stock is  \$30 and there is a derivative that pays off\$ 100 in one year if the stock price is greater than 40 at that time. (This is known as a binary or digital cash-or-nothing call option.) Suppose that the risk-free rate (continuously compounded) is 3\% per annum, the expected growth rate of the stock price in the real world is 10\% per annum (also continuously compounded), and the stock price volatility is 30\% per annum.

In a risk-neutral world, the expected growth of the stock price is  $3\%$  per annum. The risk-neutral probability of the stock price being greater than  $\$ 40$  in one year is obtained by setting  $\mu = 0.03$ ,  $T = 1$ ,  $\sigma = 0.3$ ,  $S_0 = 30$ , and  $V = 40$  in equation (10.3). It is

$$
N \left[ \frac {\ln (3 0 / 4 0) + (0 . 0 3 - 0 . 3 ^ {2} / 2) \times 1}{0 . 3 \times \sqrt {1}} \right] = N (- 1. 0 0 8 9) = 0. 1 5 6 5
$$

The expected payoff from the derivative in a risk-neutral world is therefore  $100 \times 0.1565 = \$ 15.65. The value of the derivative is calculated by discounting this for one year at the risk-free rate of  $3\%$ . It is  $15.65e^{-0.03 \times 1}$  or \15.19.

The real-world probability of the stock price being greater than 40 in one year is calculated by setting \mu equal to the assumed real-world return on the stock, 10\%, in equation (10.3). It is 0.2190. (As will be explained later in this chapter, we do not have to change the volatility when moving from the risk-neutral world to the real world or vice versa.) The expected payoff in the real world is therefore  \$21.90. As mentioned earlier, the problem with using the real-world expected payoff for valuation is that we do not know what discount rate to use. The stock price has risk associated with it that is priced by the market (otherwise the expected return on the stock would not be 7\%$  more than the risk-free rate). The derivative has the effect of "leveraging this risk" so that a relatively high discount rate is required for its expected payoff. Because we know the correct value of the derivative is 15.19, we can deduce that the correct discount rate to apply to the \$21.90 real-world expected payoff must be  $36.6\%$ . (This is because  $21.90e^{-0.366 \times 1} = 15.19$ .

# 10.2.3 The Black-Scholes-Merton Application

Consider next a European call option on a non-dividend-paying stock with strike price  $K$  and maturity  $T$ . Suppose that the risk-free rate is  $r$ . The payoff at time  $T$  is

$$
\max  (S _ {T} - K, 0)
$$ where  $S_{T}$  is the stock price at time  $T$ . The expected payoff in a risk-neutral world is therefore


$$

\hat {E} [ \max (S _ {T} - K, 0) ]

$$ where as before  $\hat{E}$  denotes expected value in a risk-neutral world. Using risk-neutral valuation, the value of the option is

$$ e ^ {- r T} \hat {E} [ \max  \left(S _ {T} - K, 0\right) ] \tag {10.9}
$$

Similarly, the value of a put option is

$$ e ^ {- r T} \hat {E} [ \max (K - S _ {T}, 0) ]
$$

After some algebraic manipulations, it can be shown that these equations lead to the Black-Scholes-Merton formulas for European stock options given in Appendix E at the end of the book.4

# 10.2.4 Discrete Outcomes

Risk-neutral valuation can be used when outcomes are discrete. Suppose that one of two mutually exclusive outcomes will occur at time  $T$ . Define  $\pi_1$  as the value of a derivative that pays off  $\$1$  at time  $T$  if the first outcome occurs and nothing otherwise. Similarly, define  $\pi_2$  as the value of a derivative that pays off  \$1 at time T$  if the second outcome occurs and nothing otherwise. By buying both derivatives at a cost of  $\pi_1 + \pi_2$ , we can be certain to receive  $\$ 1$  at time  $T$ . The value of  $\$ 1$  received with complete certainty at time  $T$  is  $e^{-RT}$  where  $R$  is the (continuously compounded) risk-free interest rate for maturity  $T$ . (We do not have to assume constant interest rates.) It follows that

$$
\pi_ {1} + \pi_ {2} = e ^ {- R T} \tag {10.10}
$$

Now consider a derivative that at time  $T$  provides a payoff of  $V_{1}$  if the first outcome is realized and  $V_{2}$  if the second outcome is realized. The value of the derivative is

$$
\pi_ {1} V _ {1} + \pi_ {2} V _ {2}
$$

This is

$$
\left(\pi_ {1} + \pi_ {2}\right) \left(\frac {\pi_ {1}}{\pi_ {1} + \pi_ {2}} V _ {1} + \frac {\pi_ {2}}{\pi_ {1} + \pi_ {2}} V _ {2}\right)
$$

Substituting from equation (10.10), the value of the derivative is

$$ e ^ {- R T} \left(p _ {1} V _ {1} + p _ {2} V _ {2}\right)
$$ where


$$ p _ {1} = \frac {\pi_ {1}}{\pi_ {1} + \pi_ {2}} \qquad p _ {2} = \frac {\pi_ {2}}{\pi_ {1} + \pi_ {2}}
$$

From this result it is natural to think of  $p_1$  and  $p_2$  as the risk-neutral probabilities of the two outcomes occurring. The value of a derivative is then the expected payoff in a risk-neutral world discounted at the risk-free rate. This illustrates that risk-neutral valuation applies to discrete outcomes.

The result can be extended to the situation where there are many outcomes. Suppose that one of  $n$  mutually exclusive outcomes will occur at time  $T$ . Define  $\pi_i$  as the value of a derivative that pays off  $\$1$  if the  $i$ th outcome occurs and nothing otherwise  $(1 \leq i \leq n)$ . The value of a derivative that pays  $V_i$  for outcome  $i$ $(1 \leq i \leq n)$  is

$$ e ^ {- R T} \sum_ {i = 1} ^ {n} p _ {i} V _ {i}
$$ where  $p_i$ , the risk-neutral probability of the  $i$ th outcome, is given by


$$ p _ {i} = \frac {\pi_ {i}}{\sum_ {j = 1} ^ {n} \pi_ {j}}
$$

# 10.2.5 Application to Default Probabilities

Consider an instrument whose payoff depends on whether a particular company has defaulted. (This type of instrument is known as a credit derivative.) The type of analysis we have just presented can be used to show that the derivative should be valued by

1. Estimating risk-neutral default probabilities
2. Calculating the expected payoff from the instrument
3. Discounting the expected payoff at the risk-free rate

As will be explained in Chapter 17, the risk-neutral default probabilities can be implied from the yields on bonds issued by the company or credit default swap spreads. They are in general higher than real-world default probabilities.

# 10.3 Scenario Analysis

We now move on to consider scenario analysis. Here we are interested in examining what might happen in the future. The objective is not valuation, and future cash flows are not discounted back to today. The world we consider when carrying out a scenario analysis should be the real world, not the risk-neutral world. The risk-neutral world, it should be remembered, is nothing more than an artificial device for valuing derivatives. Risk managers are not normally interested in future outcomes in a hypothetical world where everyone is risk neutral.

Moving between the real world and the risk-neutral world is simplified by a result known as Girsanov's theorem. This states that when we move from a world with one set of risk preferences to a world with another set of risk preferences, the expected growth rates of market variables such as stock prices, commodity prices, exchange rates, and interest rates change but their volatilities remain the same.

To illustrate how scenario analysis is carried out, suppose that the expected return on a stock in the real world is  $8\%$ . The stock price is currently  $\$30$  per share and its volatility is  $25\%$ . Assume you own 10,000 shares. How much could you lose during the next year?

From equation (10.5), the five percentile point of the stock price distribution in one year in the real world is:

$$
\$ 30 \times \exp [ (0. 0 8 - 0. 2 5 ^ {2} / 2) \times 1 + N ^ {- 1} (0. 0 5) \times 0. 2 5 \times \sqrt {1} ] = \$ 2 0. 8 8
$$

Similarly, the one percentile point of the stock price distribution is 17.61.

These results show that you can be 95\% certain that you will not lose more than $10,000 × ($30 - \$20.88) or \$91,200 during the next year. Similarly, you can be 99\% certain you will not lose more than 123,900. As we will see in later chapters, these are what are known as value at risk estimates.

The key point here is that results are based on the real-world return, not the riskless return. This is because we are conducting a scenario analysis, not a valuation.

# 10.4 When Both Worlds Have to Be Used

Sometimes a scenario analysis requires us to use both the real world and the risk-neutral world. The real world is used to generate scenarios out to the time horizon being considered. The risk-neutral world is then used to value all outstanding derivative transactions at that time. To take a simple example, suppose a portfolio consists of a single two-year forward contract to sell one million shares of a stock. The stock price is 50 per share, the delivery price in the forward contract is 55, the risk-free rate is 3\%, the expected return on the stock is 10\%, and its volatility is 30\%. We wish to carry out a scenario analysis to investigate what the value of the portfolio might be after six months. In order to do this, we must follow two steps:

1. Calculate a probability distribution for the stock price at the end of six months in the real world.
2. Value the forward contract at the end of six months for the different stock prices that might arise to determine a probability distribution for the contract value at the end of six months. This involves a risk-neutral valuation calculation. (At the end of six months, the contract has 1.5 years remaining.)

Suppose we are interested in a "worst case" outcome in six months where the loss has a probability of only  $1\%$  of being exceeded. In this case, because the portfolio is so simple, the worst outcome corresponds to the stock price that has a probability of only  $1\%$  of being exceeded in the real world in six months. From equation (10.4) this stock price is

$$
5 0 \exp [ (0. 1 - 0. 3 ^ {2} / 2) \times 0. 5 - N ^ {- 1} (0. 0 1) \times 0. 3 \times \sqrt {0 . 5} ] = 8 4. 1 8
$$

For this stock price, equation (10.8) gives the value of the forward contract as

$$
5 5 e ^ {- 1. 5 \times 0. 0 3} - 8 4. 1 8 = - 3 1. 6 1
$$

There is therefore a  $1\%$  chance that the portfolio will be worth less than  $-\$ 31.61$  million in six months.

Note that the worst-case stock price was calculated in the real world. The forward contract was then valued for this worst-case outcome using risk-neutral valuation.

# 10.5 The Calculations in Practice

The example we have just considered is very simple because the portfolio consisted of a single instrument—a two-year short forward contract. We know that the value of this forward contract decreases as the price of the underlying stock increases. When the stock price has only a  $1\%$  chance of being exceeded, we know that the forward contract has a value that has only a  $1\%$  chance of being worsened.

In practice, a financial institution usually has many instruments in its portfolio and the calculations necessary for a scenario analysis can be quite complicated. It is necessary to generate many scenarios for what might happen in the real world between today and the horizon date and then value the portfolio for each of these scenarios. The loss that has, say, a  $1\%$  probability of being exceeded can then be calculated. For example, if 1,000 scenarios are considered, this loss is the 10th worst one.

One approach is to make an assumption about the behavior of the underlying market variables and their correlations. The easiest assumption for the behavior of a market variable over a short time period is from the one in equation (10.1). This gives:

$$
\ln (S _ {t + \Delta t}) = \ln (S _ {t}) + (\mu - \sigma^ {2} / 2) \Delta t + \epsilon \sigma \sqrt {\Delta t}
$$ where  $\epsilon$  is a random sample from a normal distribution with mean zero and standard deviation one. It means that


$$

S _ {t + \Delta t} = S _ {t} \exp [ (\mu - \sigma^ {2} / 2) \Delta t + \epsilon \sigma \sqrt {\Delta t} ]

$$

This equation allows the market variable to be simulated in steps of  $\Delta t$  by sampling from a standard normal distribution.

In the case of short-term interest rates, volatilities, and commodity prices, a more complicated model where the variable exhibits volatility, but is pulled toward a long-run average level is usually assumed. This phenomenon is known as mean reversion.

Different market variables are not usually assumed to move independently of each other. Correlations between market variables must be estimated from historical data. These correlations are then reflected in the correlations between the  $\epsilon$  samples from standard normal distributions. (The way in which samples from a multivariate normal distribution are generated with particular correlations was described in Chapter 9.)

The main problem in carrying out this analysis is determining good estimates for the real-world expected returns of the market variables. In theory, expected returns can be calculated from historical data. In practice, the amount of historical data required to get a reasonably accurate estimate is huge (much greater than that required to get a reasonable estimate of a volatility or a correlation).

One approach to determining the real-world expected return on a stock is to use the capital asset pricing model (see Chapter 1). We first estimate  $\rho$ , the correlation of the return on the stock with the return on an index that is representative of the whole market, such as the S&P 500. As explained in Section 1.3, the stock's beta,  $\beta$ , can be estimated as

$$

\beta = \rho \frac {\sigma}{\sigma_ {M}}

$$ where  $\sigma$  is the volatility of the stock's return and  $\sigma_{M}$  is the volatility of the S&P 500. The capital asset pricing model can be used to get the return in the real world as

$$
R _ {F} + \beta E
$$ where  $R_{F}$  is the risk-free rate and  $E$  is the expected excess return of the market over the risk-free rate (often assumed to be  $5\%$  or  $6\%$ ).


A similar idea can be used for other variables. Suppose that the volatility of a market variable is  $\sigma$  (which as mentioned is the same in both the real world and the risk-neutral world). The excess of percentage changes in the variable in the real world over those in the risk-neutral world is  $\lambda \sigma$ , where  $\lambda$  is a parameter known as the variable's market price of risk. In general,


$$

\lambda = \frac {\rho}{\sigma_ {M}} E

$$ where  $\rho$  is the correlation between percentage changes in the value of the variable and returns on the S&P 500.

Consider a commodity price. If its return is uncorrelated with the return on the S&P 500, its expected return can be assumed to be the risk-free rate. Alternatively, if  $\rho = 0.3$ ,  $\sigma_{M} = 0.2$ , and  $E = 0.06$ , we can deduce that  $\lambda = 0.09$ . If the commodity's price volatility is  $40\%$ , its return should be  $0.09 \times 0.40$  or  $3.6\%$  higher in the real world than in the risk-neutral world.

In the case of interest rates, the market price of risk is negative (typically, in the  $-0.1$  to  $-0.2$  range). This means that in the risk-neutral world interest rates grow faster than they do in the real world. (This makes interest rates different from stock prices, where the reverse is true.)

As we will describe in Chapter 12, a common approach to avoiding the estimation problems we have just mentioned is to use historical simulation. This can be used for short time horizons. It involves assuming that the alternative ways all market variables can behave over the next short period of time are determined by the ways they actually behaved over similar periods of time in the past.

# Summary

A confusing aspect of risk management is that valuation and scenario analysis are (or should be) based on different assumptions about how market variables such as stock prices, commodity prices, and exchange rates behave. To value a derivative in terms of the price of the underlying asset, the somewhat artificial assumption that the world is risk neutral is made. This means that the expected return from all assets that are held for investment purposes is assumed to be the risk-free rate and that expected payoffs are discounted at the risk-free rate. The ubiquitous risk-neutral valuation result states that the valuation we obtain when we do this is correct in the real world as well as in the risk-neutral world.

In scenario analysis, we are interested in how market variables behave in the real world (i.e., the world we actually live in). Fortunately, there is a result, Girsanov's theorem, that tells us that the volatility of a variable is the same in the real and risk-neutral worlds. The expected return, however, is liable to be quite different in the two worlds. For example, the expected return from a stock or stock index is quite a bit higher in the real world than in the risk-neutral world. This is because, as discussed in Chapter 1, investors require compensation for bearing risks.

A further confusing point is that sometimes it is necessary to consider both the real world and the risk-neutral world. Consider a financial institution that has a portfolio of derivatives and is interested in how much it could lose over the next year. The financial institution should consider how the relevant market variables will behave in the real world to generate many alternative scenarios for their values in one year. It should then use risk-neutral valuation to determine the value of the portfolio at the one-year point for each of the alternative scenarios.

# Further Reading

Baxter, M., and A. Rennie. Financial Calculus. Cambridge: Cambridge University Press, 1996.

Hull, J. Options, Futures, and Other Derivatives, 11th ed. Pearson, 2022.

Hull, J., A. Sokol, and A. White. "Short-Rate Joint-Measure Models." Risk (October 2014): 59-63.

Hull, J., and A. White. "Interest Rate Trees: Extensions and Applications." Working Paper, University of Toronto, 2017.

Ross, S. "The Recovery Theorem." Journal of Finance 70, no. 2 (April 2015): 615-648.

# Practice Questions and Problems (Answers at End of Book)

10.1 A stock price has an expected return of 12\% and a volatility of 20\%. It is currently \$50. What is the probability that it will be greater than \$70 in two years?
10.2 In Problem 10.1, what is the stock price that has a  $5\%$  probability of being exceeded in two years?
10.3 Explain the principle of risk-neutral valuation.
10.4 An analyst calculates the expected future value of a stock index in (a) the real world and (b) the risk-neutral world. Which would you expect to be higher? Why?
 10.5 The value of a derivative that pays off \$100 after one year if a company has defaulted during the year is \$3. The value of a derivative that pays off \$100 after one year if a company has not defaulted is \$95. What is the risk-free rate? What is the risk neutral probability of default?
 10.6 A binary option pays off \$100 if a stock price is greater than \$30 in three months. The current stock price is 25 and its volatility is 30\%. The risk-free rate is 3\% and the expected return on the stock is 10\%. What is the value of the option? What is the real-world probability that the payoff will be received?
10.7 Explain why it is sometimes necessary to work in both the real world and the risk-neutral world when carrying out a scenario analysis to determine a confidence interval for the value of a portfolio in one year.
10.8 Explain the meaning of mean reversion.
10.9 Explain Girsanov's theorem.

# Further Questions

10.10 A stock price has an expected return of 9\% and a volatility of 25\%. It is currently \$40. What is the probability that it will be less than \$30 in 18 months?
10.11 An investor owns 10,000 shares of a particular stock. The current market price is 80. What is the worst-case value of the portfolio in six months? For the purposes of this question, define the worst-case value of the portfolio as the value that is such that there is only a 1\% chance of the actual value being lower. Assume that the expected return on the stock is 8\% and its volatility is 20\%.
 10.12 A binary option pays off \$500 if a stock price is greater than \$60 in three months. The current stock price is 61 and its volatility is 20\%. The risk-free rate is 2\% and the expected return on the stock is 8\%. What is the value of the option? What is the real-world expected payoff?

# Part Three

# MARKET RISK


---
title: "Chapter 14 - The Black-Scholes Formula"
aliases:
  - Black-Scholes Formula
  - Black-Scholes Model
parent_directory: Derivatives Market Complete Full/chapters manual
cssclasses: academia
---

# The Black-Scholes Formula

# I. INTRODUCTION TO THE BLACK-SCHOLES FORMULA

To introduce the Black-Scholes formula, we first use the binomial model. When computing a binomial option price, we can vary the number of binomial steps, holding fixed the time to expiration. Table 1 computes binomial call option prices, and increases the number of steps,  $n$ . Changing the number of steps changes the option price, but once the number of steps becomes great enough we appear to approach a limiting value for the price. The last row reports the call option price if we were to use an infinite number of steps. We can't literally have an infinity of steps in a binomial tree, but it is possible to show that as the number of steps approaches infinity, the option price is given by the Black-Scholes formula. Thus, the Black-Scholes formula is a limiting case of the binomial formula for the price of a European option.

# Call Options

The Black-Scholes formula for a European call option on a stock that pays dividends at the continuous rate  $\delta$  is

$$
C (S, K, \sigma , r, T, \delta) = S e ^ {- \delta T} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right) \tag {1}
$$

From Chapter 12 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

# Box I: The History of the Black-Scholes Formula

The Black-Scholes formula was first published in the May/June 1973 issue of the Journal of Political Economy (JPE) (see Black and Scholes, 1973). By coincidence, the Chicago Board Options Exchange (CBOE) opened at almost the same time, on April 26, 1973. Initially, the exchange traded call options on just 16 stocks. Puts did not trade until 1977. In 2000, by contrast, the CBOE traded both calls and puts on over 1200 stocks.

Fischer Black told the story of the formula in Black (1989). He and Myron Scholes started working on the option-pricing problem in 1969, when Black was an independent consultant in Boston and Scholes an assistant professor at MIT. While working on the problem, they had extensive discussions with Robert Merton of MIT, who was also working on option pricing.

The first version of their paper was dated October 1970 and was rejected for publication by the  $JPE$  and subsequently by another prominent journal. However, in 1971, Eugene Fama and Merton Miller of the University of Chicago, recognizing the importance of their work, interceded on their behalf with the editors of the  $JPE$ . Later in 1973 Robert Merton published an important and wide-ranging follow-up paper (Merton, 1973b), which, among other contributions, established the standard no-arbitrage restrictions on various option prices significantly generalized the Black-Scholes formula and their derivation of the model, and provided formulas for pricing perpetual American puts and down-and-out calls.

In 1997, Robert Merton and Myron Scholes won the Nobel Prize in Economics for their work on option pricing. Fischer Black was ineligible for the prize, having died in 1995 at the age of 57.

TABLEI

Binomial option prices for different numbers of binomial steps. All calculations assume that the stock price  S = \41 , the strike price  K = \$40 , volatility  \sigma = 0.30 , risk-free rate  r = 0.08 , time to expiration  T = 1 , and dividend yield  \delta = 0 .

<table><tr><td>Number of Steps (n)</td><td>Binomial Call Price ($)</td></tr><tr><td>1</td><td>7.839</td></tr><tr><td>4</td><td>7.160</td></tr><tr><td>10</td><td>7.065</td></tr><tr><td>50</td><td>6.969</td></tr><tr><td>100</td><td>6.966</td></tr><tr><td>500</td><td>6.960</td></tr><tr><td>∞</td><td>6.961</td></tr></table> where

$$ d _ {1} = \frac {\ln (S / K) + \left(r - \delta + \frac {1}{2} \sigma^ {2}\right) T}{\sigma \sqrt {T}} \tag {2a}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T} \tag {2b}
$$

As with the binomial model, there are six inputs to the Black-Scholes formula:  $S$ , the current price of the stock;  $K$ , the strike price of the option;  $\sigma$ , the volatility of the stock;  $r$ , the continuously compounded risk-free interest rate;  $T$ , the time to expiration; and  $\delta$ , the dividend yield on the stock.

The function  $N(x)$  in the Black-Scholes formula is the cumulative normal distribution function, which is the probability that a number randomly drawn from a standard normal distribution (i.e., a normal distribution with mean 0 and variance 1) will be less than  $x$ . Most spreadsheets have a built-in function for computing  $N(x)$ . In Excel, the function is "NormSDist."

Two of the inputs ( $K$  and  $T$ ) describe characteristics of the option contract. The others describe the stock ( $S$ ,  $\sigma$ , and  $\delta$ ) and the discount rate for a risk-free investment ( $r$ ). All of the inputs are self-explanatory with the exception of volatility. Volatility is the standard deviation of the rate of return on the stock—a measure of the uncertainty about the future return on the stock.

It is important to be clear about units in which inputs are expressed. Several of the inputs in equation (1) are expressed per unit time: The interest rate, volatility, and dividend yield are typically expressed on an annual basis. In equation (1), these inputs are all multiplied by time: The interest rate, dividend, and volatility appear as  $r \times T$ ,  $\delta \times T$ , and  $\sigma^2 \times T$  (or equivalently,  $\sigma \times \sqrt{T}$ ). Thus, when we enter inputs into the formula, the specific time unit we use is arbitrary as long as we are consistent. If time is measured in years, then  $r$ ,  $\delta$ , and  $\sigma$  should be annual. If time is measured in days, then we need to use the daily equivalent of  $r$ ,  $\sigma$ , and  $\delta$ , and so forth. We will always assume inputs are per year unless we state otherwise.

Example 1. Let  $S = \41$ ,  $K = \$ 40 ,  $\sigma = 0.3$ ,  $r = 8\%$ ,  $T = 0.25$  (3 months), and  $\delta = 0$ . Computing the Black-Scholes call price, we obtain

$$
\begin{array}{l} \$ 41 \times e ^ {- 0 \times 0.25} \times N \left(\frac {\ln (\frac {4 1}{4 0}) + (0 . 0 8 - 0 + \frac {0 . 3 ^ {2}}{2}) \times 0 . 2 5}{0 . 3 \sqrt {0 . 2 5}}\right) \\ - \mathbb {S} 4 0 \times e ^ {- 0. 0 8 \times 0. 2 5} \times N \left(\frac {\ln (\frac {4 1}{4 0}) + (0 . 0 8 - 0 - \frac {0 . 3 ^ {2}}{2}) \times 0 . 2 5}{0 . 3 \sqrt {0 . 2 5}}\right) = \mathbb {S} 3. 3 9 9 \\ \end{array}
$$

There is one input that does not appear in the Black-Scholes formula—namely, the expected return on the stock. You might guess that stocks with a high beta would have a higher expected return; hence, options on these stocks would have a higher probability of settlement in-the-money. The higher expected return would seem to imply a higher option price. However, a high stock beta implies a high option beta, so the discount rate for the expected payoff to such an option is correspondingly greater. The net result—one of the key insights from the Black-Scholes analysis—is that beta is irrelevant: The larger average payoff to options on high beta stocks is exactly offset by the larger discount rate.

# Put Options

The pricing formula for a European put follows from put-call parity:

$$
P (S, K, \sigma , r, T, \delta) = C (S, K, \sigma , r, T, \delta) + K e ^ {- r T} - S e ^ {- \delta T} \tag {3}
$$

Using the Black-Scholes equation for the call, equation (1), we can also write the put formula as

$$
P (S, K, \sigma , r, T, \delta) = K e ^ {- r T} N (- d _ {2}) - S e ^ {- \delta T} N (- d _ {1}) \tag {4}
$$ where  $d_{1}$  and  $d_{2}$  are given by equations (2a) and (2b).


Equation (4) follows from equations (1) and (3), together with the fact that for any  $x$ ,  $1 - N(x) = N(-x)$  (i.e., the probability that a random draw from the standard normal distribution is above  $x$ ,  $1 - N(x)$ , equals the probability that a draw is below  $-x$ ,  $N(-x)$ ).

Example 2. Using the same inputs as in Example 1, the put price is 1.607. We can compute the put price in two ways. First, computing it using equation (4), we obtain

$$

\begin{array}{l} \$ 40e ^ {- 0.08 \times 0.25} N \left(- \frac {\ln (\frac {41}{40}) + (0.08 - 0 - \frac {0 .3 ^ {2}}{2}) 0.25}{0 .3 \sqrt {0 .25}}\right) \\ - \mathbb {S} 4 1 e ^ {- 0 \times 0. 2 5} N \left(- \frac {\ln \left(\frac {4 1}{4 0}\right) + (0 . 0 8 - 0 + \frac {0 . 3 ^ {2}}{2}) 0 . 2 5}{0 . 3 \sqrt {0 . 2 5}}\right) = \mathbb {S} 1. 6 0 7 \\ \end{array}

$$

Computing the price using put-call parity, equation (3), we have

$$

\begin{array}{l} P (4 1, 4 0, 0. 3, 0. 0 8, 0. 2 5, 0) = 3. 3 3 9 + 4 0 e ^ {- 0. 0 8 \times 0. 2 5} - 4 1 \\ = \$ 1.607 \\ \end{array}

$$

# When Is the Black-Scholes Formula Valid?

The derivation of the Black-Scholes formula makes a number of assumptions that can be sorted into two groups: assumptions about how the stock price is distributed, and assumptions about the economic environment. For the version of the formula we have presented, assumptions about the distribution of the stock price include the following:

- Continuously compounded returns on the stock are normally distributed and independent over time. (We assume there are no "jumps" in the stock price.)
- The volatility of continuously compounded returns is known and constant.
- Future dividends are known, either as a dollar amount or as a fixed dividend yield.

Assumptions about the economic environment include these:

- The risk-free rate is known and constant.
- There are no transaction costs or taxes.
- It is possible to short-sell costlessly and to borrow at the risk-free rate.

Many of these assumptions can easily be relaxed. For example, with a small change in the formula, we can permit the volatility and interest rate to vary over time in a known way. Even though there are taxes, tax rates do not appear in the binomial formula; the same argument applies to the Black-Scholes formula.

As a practical matter, the first set of assumptions—those about the stock price distribution—are the most crucial. Most academic and practitioner research on option pricing concentrates on relaxing these assumptions. They will also be our focus when we discuss empirical evidence. You should keep in mind that almost any valuation procedure, including ordinary discounted cash flow, is based on assumptions that appear strong; the interesting question is how well the procedure works in practice.

# 2. APPLYING THE FORMULA TO OTHER ASSETS

The Black-Scholes formula is often thought of as a formula for pricing European options on stocks. Specifically, equations (1) and (4) provide the price of a call and put option, respectively, on a stock paying continuous dividends. In practice, we also want to be able to price European options on stocks paying discrete dividends, options on futures, and options on currencies. The binomial model can be adapted to different underlying assets by adjusting the dividend yield. The same adjustments work in the Black-Scholes formula.

We can rewrite  $d_{1}$  in the Black-Scholes formula, equation (2a), as

$$ d _ {1} = \frac {\ln (S e ^ {- \delta T} / K e ^ {- r T}) + \frac {1}{2} \sigma^ {2} T}{\sigma \sqrt {T}}
$$

When  $d_{1}$  is rewritten in this way, it is apparent that the dividend yield enters the formula only to discount the stock price, as  $Se^{-\delta T}$ , and the interest rate enters the formula only to discount the strike price, as  $Ke^{-rT}$ . Notice also that volatility enters only as  $\sigma^2 T$ .

The prepaid forward prices for the stock and strike asset are  $F_{0,T}^{P}(S) = Se^{-\delta T}$  and  $F_{0,T}^{P}(K) = Ke^{-rT}$ . Then we can write the Black-Scholes formula, equation (1), entirely in terms of prepaid forward prices and  $\sigma \sqrt{T}$ :

$$
\begin{array}{l} C \left(F _ {0, T} ^ {P} (S), F _ {0, T} ^ {P} (K), \sigma , T\right) = F _ {0, T} ^ {P} (S) N \left(d _ {1}\right) - F _ {0, T} ^ {P} (K) N \left(d _ {2}\right) \tag {5} \\ d _ {1} = \frac {\ln [ F _ {0 , T} ^ {P} (S) / F _ {0 , T} ^ {P} (K) ] + \frac {1}{2} \sigma^ {2} T}{\sigma \sqrt {T}} \\ d _ {2} = d _ {1} - \sigma \sqrt {T} \\ \end{array}
$$

This version of the formula is interesting because the dividend yield and the interest rate do not appear explicitly; they are implicitly incorporated into the prepaid forward prices.

To price options on underlying assets other than stocks, we can use equation (5) in conjunction with the forward price formulas. For all of the examples in this chapter, we will have a strike price denominated in cash, so that  $F_{0,T}^{P}(K) = Ke^{-rT}$ .

# Options on Stocks with Discrete Dividends

When a stock makes discrete dividend payments, the prepaid forward price is

$$
F _ {0, T} ^ {P} (S) = S _ {0} - \mathrm {P V} _ {0, T} (\mathrm {D i v})
$$ where  $\mathrm{PV}_{0,T}(\mathrm{Div})$  is the present value of dividends payable over the life of the option. Thus, using equation (5), we can price a European option with discrete dividends by subtracting the present value of dividends from the stock price and entering the result into the formula in place of the stock price.


Example 3. Suppose S = $41, K = $40, σ = 0.3, r = 8\%, and T = 0.25 (3 months). The stock will pay a 3 dividend in 1 month, but makes no other payouts over the life of the option (hence, δ = 0). The present value of the dividend is

$$

\mathrm {P V} (\mathrm {D i v}) = \$ 3 e ^ {- 0. 0 8 \times 1 / 1 2} = \$ 2. 9 8

$$

Setting the stock price in the Black-Scholes formula equal to $41 - $2.98 = $38.02, the Black-Scholes call price is $1.763.

Compared to the  $3.399 price computed in Example 1, the dividend reduces the option price by about$ 1.64, or over half the amount of the dividend. Note that this is the price of a European option. An American option might be exercised just prior to the dividend, and hence would have a greater price.

# Options on Currencies

We can price an option on a currency by replacing the dividend yield with the foreign interest rate. If the spot exchange rate is  $x$  (expressed as domestic currency per unit of foreign currency), and the foreign currency interest rate is  $r_f$ , the prepaid forward price for the currency is

$$

F _ {0, T} ^ {P} (x) = x _ {0} e ^ {- r _ {f} T}

$$

Using equation (5), the Black-Scholes formula becomes

$$

C (x, K, \sigma , r, T, r _ {f}) = x e ^ {- r _ {f} T} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right) \tag {6}

$$

$$ d _ {1} = \frac {\ln (x / K) + (r - r _ {f} + \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

This formula for the price of a European call on currencies is called the Garman-Kohlhagen model, after Garman and Kohlhagen (1983).

The price of a European currency put is obtained using parity:

$$
P (x, K, \sigma , r, T, r _ {f}) = C (x, K, \sigma , r, T, r _ {f}) + K e ^ {- r T} - x e ^ {- r _ {f} T}
$$

Example 4. Suppose the spot exchange rate is  $x = \1.25 / \epsilon$ ,  $K = \$ 1.20 ,  $\sigma = 0.10$ ,  $r = 1\%$  (the dollar interest rate),  $T = 1$ , and  $r_f = 3\%$  (the euro-denominated interest rate). The price of a dollar-denominated euro call is  $\$ 0.061407 , and the price of a dollar-denominated euro put is  $\0.03641$ .

# Options on Futures

The prepaid forward price for a futures contract is just the present value of the futures price. Thus, we price a European option on a futures contract by using the futures price as the stock price and setting the dividend yield equal to the risk-free rate. The resulting formula is also known as the Black formula:

$$
C (F, K, \sigma , r, T, r) = F e ^ {- r T} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right) \tag {7}
$$

$$ d _ {1} = \frac {\ln (F / K) + \frac {1}{2} \sigma^ {2} T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

The put price is obtained using the parity relationship for options on futures:

$$
P (F, K, \sigma , r, T, r) = C (F, K, \sigma , r, T, r) + K e ^ {- r T} - F e ^ {- r T}
$$

Example 5. Suppose the 1-year futures price for natural gas is $6.50/MMBtu and the volatility is 0.25. We have F = $6.50, K = $6.50, σ = 0.25, r = 0.02, T = 1, and δ = 0.02 (the dividend yield is set to equal the interest rate). The Black-Scholes call price and put price are both $0.63379.

# 3. OPTION GREEKS

Option Greeks are formulas that express the change in the option price when an input to the formula changes, taking as fixed all the other inputs. One important use of Greek measures is to assess risk exposure. For example, a market-making bank with a portfolio of options would want to understand its exposure to changes in stock prices, interest rates, volatility, etc. An options investor would like to know how interest rate changes and volatility changes affect profit and loss.

Keep in mind that the Greek measures by assumption change only one input at a time. In real life, we would expect interest rates and stock prices, for example, to change together. The Greeks answer the question, What happens when one and only one input changes?

The formulas for the Greeks appear in Appendix B. Greek measures can be computed for options on any kind of underlying asset, but we will focus here on stock options.

# Definition of the Greeks

The units in which changes are measured are a matter of convention. Thus, when we define a Greek measure, we will also provide the assumed unit of change.

- Delta  $(\Delta)$  measures the option price change when the stock price increases by 1.
- Gamma (Γ) measures the change in delta when the stock price increases by 1.
- Vega measures the change in the option price when there is an increase in volatility of 1 percentage point.5
- Theta  $(\theta)$  measures the change in the option price when there is a decrease in the time to maturity of 1 day.
- Rho  $(\rho)$  measures the change in the option price when there is an increase in the interest rate of 1 percentage point (100 basis points).
- Psi  $(\Psi)$  measures the change in the option price when there is an increase in the continuous dividend yield of 1 percentage point (100 basis points).

A useful mnemonic device for remembering some of these is that "vega" and "volatility" share the same first letter, as do "theta" and "time." Also "r" is often used to denote the interest rate and is the first letter in "rho."

We will discuss each Greek measure in turn, assuming for simplicity that we are talking about the Greek for a purchased option. The Greek for a written option is opposite in sign to that for the same purchased option.

Delta. Delta is defined as the number of shares in the portfolio that replicates the option. For a call option, delta is positive: As the stock price increases, the call price increases. Delta is also the sensitivity of the option price to a change in the stock price: If an option is replicated with 50 shares, the option should exhibit the price sensitivity of approximately 50 shares. You can think of delta as the share-equivalent of the option.

# FIGURE I

Call (top graph) and put (bottom graph) deltas for 40-strike options with different times to expiration. Assumes  $\sigma = 30\%$ ,  $r = 8\%$ , and  $\delta = 0$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/c116c5a7fdc0b0d5020384c01374a92f3347a7ab6b123355c99692e32bb61f52.jpg)

Figure 1 represents the behavior of delta for European calls and puts with differing times to expiration. The top panel in the figure illustrates that an in-the-money option will be more sensitive to the stock price than an out-of-the-money option. For example, if a call is deep in-the-money (i.e., the stock price is high relative to the strike price of 40), it is likely to be exercised and hence the option should behave much like a leveraged position in a full share. Delta approaches 1 in this case and the share-equivalent of the option is 1. If a call is out-of-the-money, it is unlikely to be exercised and the option behaves like a position with very few shares. In this case delta is approximately 0 and the share-equivalent is 0. An at-the-money option may or may not be exercised and, hence, behaves like a position with between 0 and 1 share. Note that as time to expiration increases, the call delta is lower at high stock prices and greater at low stock prices. This behavior of delta reflects the fact that, for an option with greater time to expiration, the likelihood is greater that an out-of-the-money option will eventually become in-the-money, and the likelihood is greater that an in-the-money option will eventually become out-of-the-money.

We can use the interpretation of delta as a share-equivalent to interpret the Black-Scholes price. The formula both prices the option and also tells us what position in the stock and borrowing is equivalent to the option. The formula for the call delta is

$$
\Delta = e ^ {- \delta T} N (d _ {1})
$$

If we hold  $e^{-\delta t}N(d_1)$  shares and borrow  $Ke^{-rT}N(d_2)$  dollars, the cost of this portfolio is

$$
S e ^ {- \delta T} N (d _ {1}) - K e ^ {- r T} N (d _ {2})
$$

This is the Black-Scholes price. Thus, the pieces of the formula tell us what position in the stock and borrowing synthetically recreates the call. Figure 1 shows that delta changes with

# FIGURE 2

Gamma (top panel) and vega (bottom panel) for 40-strike options with different times to expiration. Assumes  $\sigma = 30\%$ ,  $r = 8\%$ , and  $\delta = 0$ . Vega is the sensitivity of the option price to a 1 percentage point change in volatility. Otherwise identical calls and puts have the same gamma and vega.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/bf69cf287fd1749d3f5f2002fa1c3656d39abf62f6bec9d072008f8a4117cf03.jpg) the stock price, so as the stock price moves, the replicating portfolio changes and must be adjusted dynamically.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/83d26cb1542fca3e0969ef1ddbfb3f9faff3fb1b9fbb71797a43520e92dbb470.jpg)

Delta for a put option is negative, so a stock price increase reduces the put price. This relationship can be seen in the bottom panel of Figure 1. Because put-call parity implies that the put delta is the call delta minus  $e^{-\delta T}$ , the two panels in Figure 1 behave similarly.

Gamma. Gamma—the change in delta as the stock price changes—is always positive for a purchased call or put. As the stock price increases, delta increases. This behavior can be seen in both panels of Figure 1. For a call, delta approaches 1 as the stock price increases. For a put, delta approaches 0 as the stock price increases. Because of put-call parity, gamma is the same for a European call and put with the same strike price and time to expiration.

The top panel of Figure 2 graphs call gammas for options with three different expirations. Deep in-the-money options have a delta of about 1, and, hence, a gamma of about zero. (A delta close to 1 cannot change much as the stock price changes.) Similarly, deep out-of-the-money options have a delta of about 0 and, hence, a gamma of about 0. The large gamma for the 3-month option in Figure 2 corresponds to the steep increase in delta for the same option in Figure 1. Put-call parity implies that put gammas are the same as call gammas.

A derivative for which gamma is always positive is said to be convex. If gamma is positive, then delta is always increasing, and a graph of the price function will have curvature like that of the cross section of a bowl.

# FIGURE 3

Call (top panel) and put (bottom panel) prices for options with different strikes at different times to expiration. Assumes  S = \ 40 ,  \sigma = 30\% ,  r = 8\% , and  \delta = 0 .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/a3b73f5a35b293bc4a12c5a22dfd2a12c263b6ece41f148687e69dbbb6dba85e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/3a3078d119a431bfe3e9d125f3c7e1339e15bf0f1167c9670f541a832eaffa09.jpg)

Vega. Vega measures the change in the option price due to a specified change in volatility. It is common to express vega as the change in option price for a 1 percentage point (0.01) change in volatility. The bottom panel of Figure 2 shows that vega tends to be greater for at-the-money options, and greater for options with moderate than with short times to expiration. Because of put-call parity, vega, like gamma, is the same for calls and puts with the same strike price and time to expiration.

Theta. Options generally—but not always—become less valuable as time to expiration decreases. Figure 3 depicts call and put premiums for out-of-the-money, at-the-money, and in-the-money options as a function of the time to expiration. For the at-the-money (strike = \40) call and put, time decay is rapid at expiration.

Time decay can be positive for European options in some special cases. Deep in-the-money call options on an asset with a high dividend yield and deep in-the-money puts are two examples. In both cases we would want to exercise the options early if possible. Since we cannot, the option effectively becomes a T-bill, appreciating as it gets close to expiration.

# FIGURE 4

Theta for calls (top panel) and puts (bottom panel) with different expirations at different stock prices. Assumes K = \ 40, \sigma = 30\%, r = 8\% , and \delta = 0

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/b32b01fd5f3c60b38ac0564f686054330105f8832175cdf4030f50d9e3f94bd0.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/045d50ec73bd233acc547039bb00cd20852d35ca8f9987333cb09307b6bb6f42.jpg)

This effect is evident in the bottom panel of Figure 3, in which the in-the-money (50-strike) put becomes more valuable, other things equal, as expiration approaches.

Graphs of call and put thetas are in Figure 4. The top panel of the Figure 4 graphs theta explicitly for calls with three different times to expiration, showing that time decay is greatest (theta is most negative) for the at-the-money short-term option. In the bottom panel, theta for in-the-money puts is positive, showing that these options behave like T-bills, appreciating as they approach maturity.

Theta in Figure 4 assumes a 1-day change in the time to expiration. It is also common in practice to compute theta over longer periods, such as 10 days.

Rho. Rho, the change in premium due to a change in the interest rate, is positive for an ordinary stock call option. Exercising a call entails paying the fixed strike price to receive the stock; a higher interest rate reduces the present value of the strike. Similarly, for a put, rho is negative, since the put entitles the owner to receive cash, and the present value of this is lower with a higher interest rate. The top panel of Figure 5 shows that as the time to expiration increases and as a call option becomes more in-the-money, rho is greater. Figure 5 assumes a 1 percentage point (100 basis point) change in the interest rate.

Psi. Psi, the change in the option premium due to a change in the dividend yield, is negative for an ordinary stock call option and positive for a put. A call entitles the holder to receive the stock, but without receiving the dividends paid on the stock prior to exercising the option. Thus, the present value of the stock to be received is lower, the greater the dividend yield. Owing a put entails an obligation to deliver the stock in the future in exchange for cash. The present value of the stock to be delivered goes down when the dividend yield goes

# FIGURE 5

Rho (top panel) and psi (bottom panel) at different stock prices for call options with different maturities. Assumes  K = \ 40 ,  \sigma = 30\% ,  r = 8\% , and  \delta = 0 .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/2a7be3c96fa452f953f41b4692e76e27926f149680a2e421a6943beaba1724a9.jpg) up, so the put is more valuable when the dividend yield is greater. Hence, psi for a put is positive.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/96d8702ee7dca07a1276c9fba22e0ee9205323aa9ead2a90859f5b31d74fdaba.jpg)

The bottom panel of Figure 5 shows that the absolute value of psi increases with time to expiration. An increase in the dividend yield has little effect with a short time to maturity, but dividends lost by not owning the stock increase with time to maturity. Note that in Figure 5 the bottom panel (psi) is almost a mirror image of the top panel (rho).

# Greek Measures for Portfolios

The Greek measure of a portfolio is the sum of the Greeks of the individual portfolio components. This relationship is important because it means that the risk of complicated option positions is easy to evaluate. For a portfolio containing  $N$  options with a single underlying stock, where the quantity of each option is given by  $n_i$ , we have

$$
\Delta_ {\text {p o r t f o l i o}} = \sum_ {i = 1} ^ {N} n _ {i} \Delta_ {i}
$$

The same relation holds true for the other Greeks as well.

Example 6. Table 2 lists Greek measures for a 40-45 bull spread. Greeks for the spread are Greeks for the 40-strike call less those for the 45-strike call.

<table><tr><td>TABLE 2</td><td colspan="3">Greeks for a bull spread where S = 40, σ = 0.3, r = 0.08, and T = 91 days, with a purchased 40-strike call and a written 45-strike call. The column titled “combined” is the difference between column 1 and column 2.</td></tr><tr><td></td><td>40-Strike Call</td><td>45-Strike Call</td><td>Combined</td></tr><tr><td>ωi</td><td>1</td><td>-1</td><td>—</td></tr><tr><td>Price</td><td>2.7804</td><td>0.9710</td><td>1.8094</td></tr><tr><td>Delta</td><td>0.5824</td><td>0.2815</td><td>0.3009</td></tr><tr><td>Gamma</td><td>0.0652</td><td>0.0563</td><td>0.0088</td></tr><tr><td>Vega</td><td>0.0780</td><td>0.0674</td><td>0.0106</td></tr><tr><td>Theta</td><td>-0.0173</td><td>-0.0134</td><td>-0.0040</td></tr><tr><td>Rho</td><td>0.0511</td><td>0.0257</td><td>0.0255</td></tr></table>

# Option Elasticity

An option is an alternative to investing in the stock. Delta tells us the dollar risk of the option relative to the stock: If the stock price changes by 1, by how much does the option price change? The option elasticity, by comparison, tells us the risk of the option relative to the stock in percentage terms: If the stock price changes by 1\%, what is the percentage change in the value of the option?

Dollar Risk of the Option. If the stock price changes by  $\epsilon$ , the change in the option price is

Change in option price  $=$  Change in stock price  $\times$  option delta

$$
= \epsilon \times \Delta
$$

Example 7. Suppose that the stock price is S = $41, the strike price is K = $40, volatility is σ = 0.30, the risk-free rate is r = 0.08, the time to expiration is T = 1, and the dividend yield is δ = 0. The call price is 6.961. Delta is 0.6911. If we own options to buy 1000 shares of stock, the delta of the position is

$$
1 0 0 0 \times \Delta = 6 9 1. 1 \text {s h a r e s o f}
$$

Thus, the option position at this stock price has a "share-equivalent" of 691 shares. If the stock price changes by 0.50, we expect an option price change of approximately

$$
1 0 0 0 \times \Delta \times \ 0. 5 0 = \ 3 4 5. 5 5
$$

Percentage Risk of the Option. The option elasticity computes the percentage change in the option price relative to the percentage change in the stock price. The percentage change in the stock price is simply  $\epsilon / S$ . The percentage change in the option price is the dollar change in the option price,  $\epsilon \Delta$ , divided by the option price,  $C$ :

$$
\frac {\epsilon \Delta}{C}
$$

The option elasticity, denoted by  $\Omega$ , is the ratio of these two:

$$
\Omega \equiv \frac {\% \text {change in option price}}{\% \text {change in stock price}} = \frac {\frac {\epsilon \Delta}{C}}{\frac {\epsilon}{S}} = \frac {S \Delta}{C} \tag{8}
$$

The elasticity tells us the percentage change in the option for a  $1\%$  change in the stock. It is effectively a measure of the leverage implicit in the option.

For a call,  $\Omega \geq 1$ . A call option is replicated by a levered investment in the stock. A levered position in an asset is always riskier than the underlying asset. Also, the implicit leverage in the option becomes greater as the option is more out-of-the-money. Thus,  $\Omega$  decreases as the strike price decreases.

For a put,  $\Omega \leq 0$ . This occurs because the replicating position for a put option involves shorting the stock.

Example 8. Suppose  S = \41 ,  K = \40 ,  \sigma = 0.30 ,  r = 0.08 ,  T = 1 , and  \delta = 0 . The option price is  \6.961  and  \Delta = 0.6911 . Hence, the call elasticity is

$$
\Omega = \frac {\mathbb {S} 4 1 \times 0 . 6 9 1 1}{\mathbb {S} 6 . 9 6 1} = 4. 0 7 1
$$

The put has a price of $2.886 and  $\Delta$  of -0.3089; hence, the elasticity is

$$
\Omega = \frac {\mathbb {S} 4 1 \times - 0 . 3 0 8 9}{\mathbb {S} 2 . 8 8 6} = - 4. 3 8 9
$$

Figure 6 shows the behavior of elasticity for a call, varying both the stock price and time to expiration. The 3-month out-of-the-money calls have elasticities exceeding 8. For longer time-to-expiration options, elasticity is much less sensitive to the moneyness of the option.

The Volatility of an Option. The volatility of an option is the elasticity times the volatility of the stock:

$$
\sigma_ {\text {o p t i o n}} = \sigma_ {\text {s t o c k}} \times | \Omega | \tag {9}
$$ where  $|\Omega|$  is the absolute value of  $\Omega$ . Since elasticity is a measure of leverage, this calculation is analogous to the computation of the standard deviation of levered equity by multiplying the unlevered beta by the ratio of firm value to equity. Based on Figure 6, for a stock with a  $30\%$  volatility, an at-the-money option could easily have a volatility of  $120\%$  or more.


The Risk Premium and Beta of an Option. Elasticity measures the percentage sensitivity of the option relative to the stock; therefore, it tells us how the risk premium of the option compares to that of the stock.

# FIGURE 6

Elasticity for a call option for different stock prices and times to expiration. Assumes  K = \40, \sigma = 0.3, r = 0.08, \text{and} \delta = 0 .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/a11be42088400d98e209b4cdcda5eccc072e5a76492c9bc0200d28b873fd4e0e.jpg)
Elasticity

At a point in time, the option is equivalent to a position in the stock and in bonds; hence, the return on the option is a weighted average of the return on the stock and the risk-free rate. Let  $\alpha$  denote the expected rate of return on the stock,  $\gamma$  the expected return on the option, and  $r$  the risk-free rate. We have

$$

\gamma = \frac {\Delta S}{C (S)} \alpha + \left(1 - \frac {\Delta S}{C (S)}\right) r

$$

Because  $\Delta S / C(S)$  is the elasticity, this can also be written

$$

\gamma = \Omega \alpha + (1 - \Omega) r

$$ or


$$

\gamma - r = (\alpha - r) \times \Omega \tag {10}

$$

Thus, the risk premium on the option equals the risk premium on the stock times  $\Omega$ .

In the capital asset pricing model, the beta of an asset is proportional to the risk premium. Thus, since the risk premium scales with elasticity, so does beta:

$$

\beta_ {\text {o p t i o n}} = \beta_ {\text {a s s e t}} \times \Omega \tag {11}

$$

Using our earlier facts about elasticity, we conclude that if the stock has a positive risk premium, then a call always has an expected return at least as great as the stock and that, other things equal, the expected return on an option goes down as the stock price goes up. In terms of the capital asset pricing model, we would say that the option beta goes down as the option becomes more in-the-money. For puts, we conclude that if the stock risk premium is positive, the put has an expected return less than that of the stock.


The Sharpe Ratio of an Option. The Sharpe ratio for any asset is the ratio of the risk premium to volatility:

$$

\text {S h a r p e} = \frac {\alpha - r}{\sigma} \tag {12}

$$

Using equations (9) and (10), the Sharpe ratio for a call is

$$

\text {S h a r p e} = \frac {\Omega (\alpha - r)}{\Omega \sigma} = \frac {\alpha - r}{\sigma} \tag {13}

$$

Thus, the Sharpe ratio for a call equals the Sharpe ratio for the underlying stock. This equivalence of the Sharpe ratios is obvious once we realize that the option is always equivalent to a levered position in the stock, and that leverage per se does not change the Sharpe ratio. $^{10}$

The Elasticity and Risk Premium of a Portfolio. The elasticity of a portfolio is the weighted average of the elasticities of the portfolio components. This is in contrast to the Greeks expressed in dollar terms (delta, gamma, etc.), for which the portfolio Greek is the sum of the component Greeks.

To understand this, suppose there is a portfolio of  $N$  calls with the same underlying stock, where the  $i$ th call has value  $C_i$  and delta  $\Delta_i$ , and where  $n_i$  is the quantity of the  $i$ th call. The portfolio value is then  $\sum_{i=1}^{N} n_i C_i$ . For a 1 change in the stock price, the change in the portfolio value is

$$

\sum_ {i = 1} ^ {N} n _ {i} \Delta_ {i} \tag {14}

$$

The elasticity of the portfolio is the percentage change in the portfolio divided by the percentage change in the stock, or

$$

\Omega_ {\text {p o r t f o l i o}} = \frac {\frac {\sum_ {i = 1} ^ {N} n _ {i} \Delta_ {i}}{\sum_ {j = 1} ^ {N} n _ {j} C _ {j}}}{\frac {1}{S}} = \sum_ {i = 1} ^ {N} \left(\frac {n _ {i} C _ {i}}{\sum_ {j = 1} ^ {N} n _ {j} C _ {j}}\right) \frac {S \Delta_ {i}}{C _ {i}} = \sum_ {i = 1} ^ {N} \omega_ {i} \Omega_ {i} \tag {15}

$$ where  $\omega_{i}$  is the fraction of the portfolio invested in option  $i$ . Using equation (10), the risk premium of the portfolio,  $\gamma - r$ , is just the portfolio elasticity times the risk premium on the stock,  $\alpha - r$ :

$$
\gamma - r = \Omega_ {\text {p o r t f o l i o}} (\alpha - r) \tag {16}
$$

TABLE 3

Value of 40-strike call option at different stock prices and times to expiration. Assumes  $r = 8\%$ ,  $\sigma = 30\%$ ,  $\delta = 0$ .

<table><tr><td rowspan="2">Stock Price ($)</td><td colspan="4">Time to Expiration</td></tr><tr><td>12 Months</td><td>6 Months</td><td>3 Months</td><td>0 (Expiration)</td></tr><tr><td>36</td><td>3.90</td><td>2.08</td><td>1.00</td><td>0</td></tr><tr><td>38</td><td>5.02</td><td>3.02</td><td>1.75</td><td>0</td></tr><tr><td>40</td><td>6.28</td><td>4.16</td><td>2.78</td><td>0</td></tr><tr><td>42</td><td>7.67</td><td>5.47</td><td>4.07</td><td>2</td></tr><tr><td>44</td><td>9.15</td><td>6.95</td><td>5.58</td><td>4</td></tr></table>

# 4. PROFIT DIAGRAMS BEFORE MATURITY

Now we will see how to draw payoff and profit diagrams for options prior to expiration. We will illustrate the calculations with two strategies: buying a call option, and entering a calendar spread (buying and selling options with different times to expiration).

# Purchased Call Option

If we buy a call option and sell it prior to expiration, profit will depend upon the changes in the stock price and time to expiration. Table 3 shows the Black-Scholes value of a call option for five different stock prices at four different times to expiration. By varying the stock price for a given time to expiration, keeping everything else the same, we are able to graph the value of the call.

Figure 7 plots Black-Scholes call prices for stock prices ranging from  $20 to$ 60, including the values in Table 3. Notice that the value of the option prior to expiration is a smoothed version of the value of the option at expiration.

The payoff diagram depicted in Figure 7 does not take into account the original cost of the option. We compute profit by subtracting from the value of the option at each stock price the original cost of the position, plus interest.[11] For example, if we buy a 1-year option and hold it for 9 months, the resulting profit diagram is the payoff for a 3-month option less the original cost plus interest of the 1-year option. The "held 9 months" line in the bottom panel of Figure 7 is thus the "3 months" line from the top panel less  $6.674 =$ 6.285e $^{0.08 \times 0.75}$ .

Example 9. The 1-year option in Table 3 costs $6.285 at a stock price of $40. If after 1 day the stock price is still $40, the value of the option will have fallen to $6.274, and the 1-day holding period profit is $6.274 - $6.285 × e^0.08/365 = -$0.012. This loss reflects the theta of the option. If the stock price were to increase to $42, the option premium would increase to $7.655, and the 1-day holding period profit would be $7.655 - $6.285 × e^0.08/365 = $1.369.

# FIGURE 7

Payoff and profit diagram for a purchased call option. Top panel shows payoff diagrams for options with different remaining times to expiration. Bottom panel shows profit diagrams for a one-year call bought when the stock price was 40 and then held for different lengths of time. Assumes K = 40, r = 8\%, \delta = 0, and \sigma = 30\%.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/3df5260bc9e9b9d80b675dac504a130f130fb93c20056e98f47d674f34d763f4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/b4710d931cba76a70f8f07f6dbb43fe6ba8114ff17e27ac68c1da1a0895249b2.jpg)

After 6 months, the holding period profit at a price of $40 would be $4.155 - $6.285 × e^0.08×0.5 = -$2.386. Even if the stock price had risen to $42, the holding period return would still be -$1.068. These profit calculations are illustrated in the bottom panel of Figure 7.

The option premium graphs in Figure 7 illustrate the behavior of delta and gamma discussed in Section 3. In all cases the slope of the call option graph is positive. This corresponds to a positive delta. In addition, the slope becomes greater as the stock price increases. Delta increasing with the stock price corresponds to a positive gamma. The fact that gamma is always positive implies that the graphs will be curved like the cross section of a bowl, i.e., the option price is convex. A positive gamma implies convex curvature. A negative gamma implies the opposite (concave) curvature.

# Calendar Spreads

There are a number of option spreads that permit you to speculate on the volatility of a stock, including straddle, strangle, and butterfly spreads. These spreads all contain options with the same time to expiration and different strikes. To speculate on volatility you could also enter into a calendar spread, in which the options you buy and sell have different expiration dates.

Suppose you want to speculate that XYZ's stock price will be unchanged over the next 3 months. An alternative to a written straddle or a written butterfly spread is simply to

# FIGURE 8

Profit diagram for a calendar spread. Assumes we sell a 91-day 40-strike call with premium of 2.78 and buy a 365-day 40-strike call with premium of 6.28. Assumes S = \ {40},\sigma = {30}\% ,r = 8\% , and \delta = 0

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/c9469c80218a126ecd716318f3e76785319b0872094684f95e78b35342e588a1.jpg)

Profit ($) sell a call or put, in the hope that the stock price will remain unchanged and you will earn the premium. The potential cost is that if the option does move into the money, you can have a large loss.

To protect against a stock price increase when selling a call, you can simultaneously buy a call option with the same strike and greater time to expiration. For example, suppose you sell a 40-strike call with 91 days to expiration and buy a 40-strike call with 1 year to expiration. At a stock price of  $40, the premiums are$ 2.78 for the 91-day call and 6.28 for the 1-year call. The profit diagram for this position for holding periods of 1 day, 45 days, and 91 days is displayed in Figure 8. You can see that you earn maximum profit over 91 days if the stock price does not change.

We can understand the behavior of profit for this position by considering the theta of the two options. The top panel of Figure 4 shows that theta is more negative for the 91-day call  $(-0.0173)$  than for the 1-year call  $(-0.0104)$ . Thus, if the stock price does not change over the course of 1 day, the position will make money because the written option loses more value than the purchased option. Over 91 days, the written 91-day option will lose its full value (its price declines from  $2.78 to 0), while the 1-year option will lose only about$ 1 (its price declines from $6.28 to $5.28) if the stock price does not change. The difference in the rates of time decay generates profit of approximately 1.78.

Figure 8 shows that at the initial stock price of 40, delta is positive: The delta of the written 91-day call is 0.5825 and that of the purchased 1-year call is 0.6615, for a net positive delta of 0.0790. Thus, over 1 day, the maximum profit occurs if the stock price rises by a small amount.

# 5. IMPLIED VOLATILITY

To price an option we need volatility as an input. Specifically, we require an estimate of prospective volatility: What is the future uncertainty about the return on the underlying asset? The vega diagram in Figure 2 shows that option prices, particularly for near-the-money options, can be quite sensitive to volatility. Moreover, volatility is unobservable, which raises the question of how options are priced in practice.[12]

One approach is to compute historical volatility using the history of returns. A problem with historical volatility is that expected future volatility can be different from historical volatility. For example, political turbulence, or predictable events such as earnings announcements and government information releases, can create periods in which investors expect uncertainty to be unusually high. Sophisticated statistical models can improve upon simple historical volatility estimates, but ultimately you cannot count on history to always provide you with a reliable estimate of future volatility.

We obtain a different perspective by thinking of an option market as the venue where volatility is traded and revealed. Options are claims that investors use to hedge and speculate on future values of the stock price. Therefore the option price should reveal the market's expectations about the future stock price distribution. (The price of a deep out-of-the-money put, for example, depends upon the market's assessment that the stock will decline enough for the put to be valuable.) One way to extract information from an option price is by computing the option's implied volatility, which is the volatility that, when put into a pricing formula, yields the observed option price.[13]

# Computing Implied Volatility

To compute a Black-Scholes implied volatility, assume that we observe the stock price  $S$ , strike price  $K$ , interest rate  $r$ , dividend yield  $\delta$ , and time to expiration  $T$ . The implied call volatility is the  $\hat{\sigma}$  that solves

$$
\text {M a r k e t} = C (S, K, \hat {\sigma}, r, T, \delta) \tag {17}
$$

By definition, if we use implied volatility to price an option, we obtain the market price of the option. Thus, we cannot use implied volatility to assess whether an option price is correct, but implied volatility does tell us the market's assessment of volatility.

Equation (17) cannot be solved directly for the implied volatility,  $\hat{\sigma}$ , so it is necessary to use an iterative procedure to solve the equation. Any pricing model can be used to calculate an implied volatility, but Black-Scholes implied volatilities are frequently used as benchmarks.

Example 10. A 45-strike 6-month European call has a premium of $8.07. The stock price is $50, the interest rate is 8\%, and the dividend yield is zero. The option price as a function of volatility is

$$
\$ 8.07 = \text{BSCall} (50,45,\sigma ,0.08,0.5,0)
$$

By trial and error (or by using a tool such as Excel's Goalseek), we find that setting  $\sigma = 28.7\%$  gives us a call price of 8.07.[14]

Implied volatility computed using a pricing model is a characteristic of an individual option, so it is interesting to compare implied volatilities for options across strike prices and times to expiration. The top panel of Figure 9 displays implied volatilities for Apple, and the bottom panel displays implied volatilities for the S&P 500 index.

Figure 9 exhibits patterns commonly found for equity and index options. Frequently, implied volatility is greatest for out-of-the-money puts (in-the-money calls) and lowest for near-the-money options. As the expiration date changes, implied volatility for a given strike can go either up or down. Implied volatility differences across strikes can be substantial.

The volatility plots in Figure 9 exhibit different patterns. A volatility smile is symmetric, with volatility lowest for at-the-money options, and high for in-the-money and out-of-the-money options. A lopsided smile is a "smirk" and an upside-down smile would be a "frown." A difference in volatilities between in-the-money and out-of-the-money options, evident in Figure 9, is referred to as volatility skew. Explaining such patterns and modifying pricing models to account for them is a challenge for option pricing theory.

Figure 9 graphs put implied volatilities. Implied volatilities for calls will exhibit similar patterns. For European options (such as the S&P 500 index options), call and put volatilities should be the same because of put-call parity. For American options, the possibility of early exercise can introduce differences. Even for European options, implied volatilities in practice differ for puts and calls because of transaction costs, bid-ask spreads, and so forth. It is common to report separate implied volatilities for option bid and ask prices.

In addition to computing implied volatility using the Black-Scholes, there is also a so-called model-free calculation that is the basis of the S&P 500 VIX volatility index, known as the VIX. The VIX calculation uses option prices for all available strike prices to compute a single implied volatility.

Figure 10 graphs the VIX index since 1990. You can see on the graph that during the financial crisis, the VIX exceeded  $80\%$  for a brief period. Overall, it is apparent that volatility is volatile. The VIX is widely watched and reported upon. It is often described as the "fear index" because it generally rises during times of financial stress. There are also both futures and options based on the VIX.

# Using Implied Volatility

Implied volatility is a standard descriptive measure with important practical uses.

# FIGURE 9

Implied put volatilities for Apple and the S&P 500 on October 27, 2010. The top panel shows implied volatility curves for Apple and the bottom panel shows the same for the S&P 500 index, each for three different maturities. Closing prices for Apple and the S&P 500 were 307.83 and 1182.45.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/284477e43da76b07d7f495f693a7cdc590f27c51e4062dfe1540797a6a9ef42d.jpg)

Implied Volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/3b8404a7727f6ae50b0acbedf89329cf0f7a349b241dcb275e963da12c7eff43.jpg)

Implied Volatility

Data from OptionMetrics.

- If you need to price an option for which you cannot observe a market price, you can use implied volatility to generate a price consistent with the prices of traded options. Market-makers, for example, will price options consistently with prices of similar options.
- Implied volatility is often used as a quick way to describe the level of option prices on a given underlying asset: you could quote option prices in terms of volatility, rather than as a dollar price. There are typically numerous options on a given asset; implied volatility can be used to succinctly describe the general level of option prices for a given underlying asset.
- Volatility skew provides a measure of the extent to which pricing deviates from the assumptions underlying the Black-Scholes model. If the Black-Scholes model were literally true, implied volatilities for a given underlying asset would be the same at all strike prices and maturities. One common test of the Black-Scholes model is to check the empirical validity of this assumption. The existence of volatility skew suggests

# FIGURE 10

S&P 500 implied volatility (VIX) from January 1990 to May 2011.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/dab2b13a731bc87ef54bc7c1c2b9a2f30c1652de7acd68e8e3b401bb809564fa.jpg)

Data from Yahoo.

that the Black-Scholes model and assumptions are not a perfect description of the world.

Another implied volatility measure that is widely cited is the risk reversal, which is the difference between the implied volatilities of out-of-the-money calls and puts, each with the same delta (most commonly 0.25). A risk reversal is in effect a way to quote the price of a collar, which entails buying an out-of-the-money put and selling an out-of-the-money call, or vice versa. If the risk reversal is negative, the volatility of the put exceeds that of the call. Risk reversals are commonly quoted in currency markets.

# 6. PERPETUAL AMERICAN OPTIONS

The Black-Scholes formula prices options that can only be exercised at expiration. In this section we present formulas, based on Merton (1973b), for the prices of calls and puts that never expire, which are known as perpetual options or "expirationless options."

American options are harder to price than European options because it is difficult to characterize the optimal exercise strategy.

Perpetual American options are different because such an option always has the same time to expiration, namely infinity. Because time to expiration is constant, the option exercise problem will look the same today, tomorrow, and forever. Thus, the price at which it is optimal to exercise the option is constant. The optimal exercise strategy entails picking the exercise barrier that maximizes the value of the option and then exercising the option the first time the stock price reaches that barrier.

# Valuing Perpetual Options

In this section we present the formulas for perpetual calls and puts. The formulas provide the option price and also the price of the underlying asset at which exercise is optimal.

First, define  $h_1$  and  $h_2$ :

$$ h _ {1} = \frac {1}{2} - \frac {r - \delta}{\sigma^ {2}} + \sqrt {\left(\frac {r - \delta}{\sigma^ {2}} - \frac {1}{2}\right) ^ {2} + \frac {2 r}{\sigma^ {2}}}
$$

$$ h _ {2} = \frac {1}{2} - \frac {r - \delta}{\sigma^ {2}} - \sqrt {\left(\frac {r - \delta}{\sigma^ {2}} - \frac {1}{2}\right) ^ {2} + \frac {2 r}{\sigma^ {2}}}
$$

The value of a perpetual American call with strike price  $K$  that is exercised when  $S \geq H_{c}$  is

$$
\boxed {(H _ {c} - K) \left(\frac {S}{H _ {c}}\right) ^ {h _ {1}}} \tag {18}
$$ where  $H_{c}$  is given by


$$

H _ {c} = K \left(\frac {h _ {1}}{h _ {1} - 1}\right) \tag {19}

$$

You can verify that if  $\delta = 0$ , then  $H_{c} = \infty$ : It is never optimal to exercise a call option on a non-dividend-paying stock.

Notice that equation (18), the value of the call, is a function of  $H_{c}$ , the price at which it is exercised. It is straightforward to show (using calculus) that the  $H_{c}$  given by equation (19) maximizes the value of the call. The option holder chooses an exercise strategy that makes the call as valuable as possible.

The value of a perpetual American put with strike price  $K$  that is exercised when  $S \leq H_p$  is

$$

\boxed {(K - H _ {p}) \left(\frac {S}{H _ {p}}\right) ^ {h _ {2}}} \tag {20}

$$ where  $H_{p}$  is given by

$$
H _ {p} = K \frac {h _ {2}}{h _ {2} - 1} \tag {21}
$$

You can verify that if  $r = 0$ , then  $H_{p} = 0$ : It is never optimal to exercise a put option when the interest rate is non-positive. As with the call,  $H_{p}$  in equation (21) maximizes the value of the put.

Example 11. Let  $S = \$ 45 ,  $K = \40$ ,  $\sigma = 0.30$ ,  $r = 0.05$ , and  $\delta = 0.02$ . Using equation (18), a perpetual American call has a premium of  $\25.41$  and will be exercised when  $S = \$ 211.05 . A perpetual American put has a premium of  $\9.66$  and will be exercised when  $S = \$ 18.95 .

# Barrier Present Values

If you look at equation (18), you will see that the formula for the value of a perpetual call is the number of dollars received at exercise  $\left( {{H}_{c} - K}\right)$  times the factor  ${\left( S/{H}_{c}\right) }^{h_{1}}$  . The value at time 0,of $1 received when the stock price reaches  $H$  ,assuming  $H > {S}_{0}$  ,is

$$
\text {V a l u e o f} S 1 \text {r e c e i v e d w h e n} S \text {f i r s t r e a c h e s} H \text {f r o m b e l o w} = \left(\frac {S _ {0}}{H}\right) ^ {h _ {1}} \tag {22}
$$

Similarly, the value at time 0 of 1 received when the stock price reaches H, assuming H < S0, is

$$
\text {V a l u e o f $ 1 r e c e i v e d w h e n S f i r s t r e a c h e s H f r o m a b o v e} = \left(\frac {S _ {0}}{H}\right) ^ {h _ {2}} \tag {23}
$$

We will refer to the expressions in equations (22) and (23) as "barrier present values."

# CHAPTER SUMMARY

Under certain assumptions, the Black-Scholes formula provides an exact formula—approximated by the binomial formula—for pricing European options. The inputs to the Black-Scholes formula are the same as for the binomial formula: the stock price, strike price, volatility, interest rate, time to expiration, and dividend yield. As with the binomial formula, the Black-Scholes formula accommodates different underlying assets by changing the dividend yield.

Option Greeks measure the change in the option price (or other option characteristic) for a change in an option input. Delta, gamma, vega, theta, rho, and psi are widely used in practice to assess the risk of an option position. The option elasticity is the percentage change in the option's price for a  $1\%$  change in the stock price. The volatility and beta of an option are the volatility and beta of the stock times the option elasticity. Thus, an option and the underlying stock have the same Sharpe ratio.

Of the inputs to the Black-Scholes formula, volatility is hardest to estimate. In practice it is common to use the formula in backward fashion to infer the market's estimate of volatility from the option price. This implied volatility is computed by finding the volatility for which the formula matches observed market prices for options. In theory, all options of a given maturity should have the same implied volatility. In practice they do not.

Although there is no simple formula for valuing a finitely lived American option, there are simple formulas in the special case of perpetual puts and calls.

# FURTHER READING

The classic early papers on option pricing are Black and Scholes (1973) and Merton (1973b). The details of how the binomial model converges to the Black-Scholes model are in Cox et al. (1979). The perpetual put formula is derived in Merton (1973b). The link between the perpetual call and put formulas is discussed by McDonald and Siegel (1986).

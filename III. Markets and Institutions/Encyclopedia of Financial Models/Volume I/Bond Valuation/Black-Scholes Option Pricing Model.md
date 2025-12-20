
# Black-Scholes Option Pricing Model

SVETLOZAR T. RACHEV, PhD, DrSci

Frey Family Foundation Chair Professor, Department of Applied Mathematics and Statistics, Stony Brook University; and Chief Scientist, FinAnalytica

CHRISTIAN MENN, Dr Rer Pol

Managing Partner, RIVACON

Abstract: The most popular continuous-time model for option valuation is based on the Black-Scholes theory. Although certain drawbacks and pitfalls of the Black-Scholes option pricing model have been understood shortly after its publication in the early 1970s, it is still by far the most popular model for option valuation. The Black-Scholes model is based on the assumption that the underlying follows a stochastic process called geometric Brownian motion. Besides pricing, every option pricing model can be used to calculate sensitivity measures describing the influence of a change in the underlying risk factors on the option price. These risk measures are called the "Greeks" and their use will be explained and described.

In this entry, we look at the most popular model for pricing options, the Black-Scholes model, and look at the assumptions and their importance. We also explain the various Greeks that provide information about the sensitivity of the option price to changes in the factors that the model tells us affects the value of an option.

# MOTIVATION

Let us assume that the price of a certain stock in June of Year 0 (t = 0) is given to be S_0 = 100. We want to value an option with strike price

$X = \$ 110$ maturing in June of Year 1 ( $t = T$ ). As additional information we are given the continuously compounded one-year risk-free interest rate  $r = 5\%$ . Figure 1 visualizes potential paths of the stock between  $t = 0$  and  $t = T$ . How can we define a reasonable model for the stock price evolution?

It is clear that the daily changes or the change between the current and the next quotes cannot be predicted and can consequently be seen as realizations of random variables. However, we know that if we are investing in stocks then we can expect a rate of return in the long run which is higher than the risk-free rate. Let us denote that unknown expected rate of return as  $\mu$ . Here and in the rest of this entry, we assume that the stock pays no dividend.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/016e88abcefe547f2e1f63da631e1f45752d89928dd278e3dda980b16a59529b.jpg)
Figure 1 Possible Paths of the Stock Price Evolution over One Year with  $S_0 = \100$  and  $X = \$ 110


Furthermore, we know that stock returns exhibit random fluctuations called volatility. Let  $\sigma$  denote the unknown yearly rate of volatility. Here and below we have implicitly assumed that the expected return and the volatility of the stock are time independent. This assumption might be violated in practice. Formalizing our ideas about the stock price we come up with the following equation for the return of the stock in a small time interval of length  $\Delta t$ :

$$
\underbrace {\frac{S_{t + \Delta t} - S_{t}}{S_{t}}}_{\text{ur ni np er io d} [ t, t + \Delta t ]} = \mu \cdot \Delta t + \underbrace {\sigma \cdot \varepsilon_{t}^{\Delta t}}_{\text{"S to ch as ti cn oi se "}}
$$

The stochastic noise  $\sigma \cdot \varepsilon_t^{\Delta t}$  should have the following properties:

- No systematic influence:  $E(\varepsilon_t^{\Delta t}) = 0$ .
- No dependence between the noise of different dates: The random variables  $\varepsilon_{t}$  and  $\varepsilon_{s}$  are independent for  $s \neq t$ .
- The variance of the noise is proportional to the length of the time interval  $\Delta t$ .

One possible model for the noise process is provided by a stochastic process called Brownian motion. A detailed discussion of Brownian motion is beyond the scope of this entry, but we provide a brief discussion of its defining properties.


Brownian motion is a stochastic process  $(W_{t})_{t\geq 0}$  in continuous time that has the following four properties:

1.  $W_{0} = 0$ , that is, Brownian motion starts at zero.
2.  $(W_{t})_{t\geq 0}$  is a process with homogeneous and independent increments.
3. Any increment  $W_{t + h} - W_t$  is normally distributed with mean zero and variance  $h$ .
4. The paths of  $(W_{t})_{t\geq 0}$  are continuous.

The increments of Brownian motion are an appropriate candidate for the stochastic noise in our stock price model and we define:

$$
\varepsilon_{t}^{\Delta t} = W_{t + \Delta t} - W_{t}
$$

From its defining properties, we know that the increments of the Brownian motion are independent and that the variance of the increments is proportional to the length of the considered time interval. Additionally, the expectation of the increments is zero.

With this definition, it is possible to write the equation for the return process in the following form:

$$
\frac{S_{t + \Delta t} - S_{t}}{S_{t}} = \mu \Delta t + \sigma (W_{t + \Delta t} - W_{t})
$$

If we decrease the length  $\Delta t$  of the time interval over which the increment is considered constant, then we can switch to a "differential type" notation:

$$
\frac{d S_{t}}{S_{t}} = \mu \cdot d t + \sigma \cdot d W_{t}, \quad t \geq 0
$$

The process defined in the above equation is called geometric Brownian motion. In explicit notation the geometric Brownian motion possesses the following form

$$
S_{t} = S_{0} e^{\left(\mu - \frac{1}{2} \sigma^{2}\right) t + \sigma W_{t}}
$$ and  $S_{t}$  is lognormally distributed. This process is used in the Black-Scholes model to describe the stock price dynamic. Additionally,


the model assumes the existence of a risk-free asset—called money market account or bond—with the following dynamic:

$$
\frac{d B_{t}}{B_{t}} = r \cdot d t, \quad t \geq 0 \Leftrightarrow B_{t} = B_{0} e^{r t} \cdot t \geq 0 \tag {1}
$$

# BLACK-SCHOLES FORMULA

Black and Scholes (1973) have shown that it is possible—under some assumptions discussed in this section—to duplicate the payoff of a European call option with a continuously rebalanced portfolio consisting of the two assets S and B. This means that the price of the call option equals the initial costs for starting the hedging strategy.

The Black-Scholes option pricing model computes the fair (or theoretical) price of a European call option on a nondividend-paying stock with the following formula:

$$
C = S \Phi \left(d_{1}\right) - X e^{- r T} \Phi \left(d_{2}\right) \tag {2}
$$ where


$$ d_{1} = \frac{\ln (S / X) + (r + 0 . 5 \sigma^{2} T)}{\sigma \sqrt{T}} \tag {3}
$$

$$ d_{2} = d_{1} - \sigma \sqrt{T} \tag {4}
$$ where


$$
\ln (\cdot) = \text{na tu ra l}
$$

$$
C = \text{ca ll}
$$

$$
S = \text{cu rr en t}
$$

$$
X = \text{st ri ke}
$$

$$ r = \text{sh or t -t er m}
$$

$$ e = 2. 7 1 8 \text{(na tu ra la nt il og of 1)}
$$

$$
\begin{array}{l} T = \text{ti me re ma in in gt ot he ex pi ra ti on da te} \\ \text{(me as ur ed as af ra ct io no fa ye ar)} \end{array}
$$

$$
\sigma = \text{ex pe ct ed} \quad \text{re tu rn vo la ti ly fo rt he st oc k} \quad \text{(st an da rd} \quad \text{de vi at io no ft he st oc k} \quad \text{s} \quad \text{re tu rn in pe rc en tp er an nu m)}
$$

$$
\Phi (\cdot) = \begin{array}{l} \text{th ec um ul at iv ed is tr ib ut io nf un ct io n} \\ \text{of as ta nd ar dn or ma ld is tr ib ut io n} \end{array}
$$

The option price derived from the Black-Scholes option pricing model is "fair" in the sense that if any other price existed in a market where all the assumptions of the Black-Scholes model are fulfilled, it would be possible to earn riskless arbitrage profits by taking an offsetting position in the underlying stock. That is, if the price of the call option in the market is higher than that derived from the Black-Scholes option pricing model, an investor could sell the call option and buy a certain number of shares in the underlying stock. If the reverse is true, that is, the market price of the call option is less than the "fair" price derived from the model, the investor could buy the call option and sell short a certain number of shares in the underlying stock. This process of hedging by taking a position in the underlying stock allows the investor to lock in the riskless arbitrage profit. The number of shares necessary to hedge the position changes as the factors that affect the option price change, so the hedged position must be changed constantly.


# COMPUTING A CALL OPTION PRICE

To illustrate the Black-Scholes option pricing formula, assume the following values:

$$
\text{St ik ep ri ce} = \$ 4 5
$$

$$
\text{Ti me} = 1 8 3 \text{da ys}
$$

$$
\text{Cu rr en ts to ck pr ic e} = \$ 4 7
$$

$$
\text{Ex pe ct ed} = \text{St an da rd}
$$

$$
= 25 \% \text{perannum}
$$

$$
\text{Risk -freerate} = 10 \% \text{perannum}
$$

In terms of the values in the formula:

$$
S = 4 7
$$

$$
X = 4 5
$$

$$
T = 0. 5 (1 8 3 \text{da ys} / 3 6 5, \text{ro un de d})
$$

$$
\sigma = 0. 2 5
$$

$$ r = 0. 1 0
$$

Substituting these values into equations (3) and (4):

$$ d_{1} = \frac{\ln (4 7 / 4 5) + (0 . 1 0 + 0 . 5 [ 0 . 2 5 ]^{2}) 0 . 5}{0 . 2 5 \sqrt{0 . 5}} = 0. 6 1 7 2
$$

$$ d_{2} = 0. 6 1 7 2 - 0. 2 5 \sqrt{0 . 5} = 0. 4 4 0 4 4 3
$$

From a normal distribution table,

$$
\Phi (0. 6 1 7 2) = 0. 7 3 1 5 \quad \text{an d} \quad \Phi (0. 4 4 0 4) = 0. 6 7 0 2
$$

Then

$$
C = \$ 47(0.7315) - \$ 45(\mathrm{e}^{- (0.1 0) (0. 5)}) (0. 6 7 0 2) = \$ 5. 6 9
$$

Table 1 shows the option value as calculated from the Black-Scholes option pricing model for different assumptions concerning (1) the standard deviation for the stock's return (that is, expected return volatility); (2) the risk-free rate; and (3) the time remaining to expiration. Notice that the option price varies directly with three

Table 1 Comparison of Black-Scholes Call Option Price Varying One Factor at a Time

<table><tr><td colspan="2">Base Case</td></tr><tr><td colspan="2">Call option: Strike price = \$45</td></tr><tr><td colspan="2">Time remaining to expiration = 183 days</td></tr><tr><td colspan="2">Current stock price = \$47</td></tr><tr><td colspan="2">Expected return volatility = Standard deviation of a stock&#x27;s return = 25\%</td></tr><tr><td colspan="2">Risk-free rate = 10\%</td></tr><tr><td colspan="2">Holding All Factors Constant except Expected Return Volatility</td></tr><tr><td>Expected Price Volatility</td><td>Call Option Price ($)</td></tr><tr><td>15\% per annum</td><td>4.69</td></tr><tr><td>20</td><td>5.17</td></tr><tr><td>25 (base case)</td><td>5.59</td></tr><tr><td>30</td><td>6.26</td></tr><tr><td>35</td><td>6.84</td></tr><tr><td>40</td><td>7.42</td></tr><tr><td colspan="2">Holding All Factors Constant Except the Risk-Free Rate</td></tr><tr><td>Risk-Free Interest Rate,
\% per annum</td><td>Call Option Price ($)</td></tr><tr><td>7\%</td><td>5.27</td></tr><tr><td>8</td><td>5.41</td></tr><tr><td>9</td><td>5.50</td></tr><tr><td>10 (base case)</td><td>5.69</td></tr><tr><td>11</td><td>5.84</td></tr><tr><td>12</td><td>5.99</td></tr><tr><td>13</td><td>6.13</td></tr><tr><td colspan="2">Holding All Factors Constant except Time Remaining to Expiration</td></tr><tr><td>Time Remaining to
Expiration</td><td>Call Option Price ($)</td></tr><tr><td>30 days</td><td>2.85</td></tr><tr><td>60</td><td>3.52</td></tr><tr><td>91</td><td>4.15</td></tr><tr><td>183 (base case)</td><td>5.69</td></tr><tr><td>273</td><td>6.99</td></tr></table> variables: expected return volatility, the risk-free rate, and time remaining to expiration. That is: (1) the lower (higher) the expected volatility, the lower (higher) the option price; (2) the lower (higher) the risk-free rate, the lower (higher) the option price; and (3) the shorter (longer) the time remaining to expiration, the lower (higher) the option price.


# SENSITIVITY OF OPTION PRICE TO A CHANGE IN FACTORS: THE GREEKS

In employing options in investment strategies, an asset manager or trader would like to know how sensitive the price of an option is to a change in any one of the factors that affect its price. Sensitivity measures for assessing the impact of a change in factors on the price of an option are referred to as the Greeks. In this section, we will explain these measures for the factors in the Black-Scholes model. Specifically, we discuss measures of the sensitivity of a call option's price to changes in the price of the underlying stock, the time to expiration, expected volatility, and interest rate. These factors can be divided into "market factors" and "model factors." The underlying price and the time to expiration are market factors, whereas the volatility and the interest rate are model factors. The special aspect about the latter variables is that they are assumed to be constant within the model. By admitting that these parameters can change as well, we are admitting that the model is inconsistent with reality. Table 2 gives an overview and lists the sensitivities of the option price with respect to all parameters of the Black-Scholes model.

# Price of a Call Option Price and Price of the Underlying: Delta and Gamma

In developing an option-pricing model, we have seen the importance of understanding the relationship between the option price and the

Table 2 Sensitivities of the Option Price with Respect to Each Parameter of the Black-Scholes Model

<table><tr><td>Parameter</td><td>Corresponding Greek</td><td>Analytic Expression</td></tr><tr><td>Stock price S</td><td>Delta</td><td>Δ = ∂C/∂S = Φ(d1)</td></tr><tr><td>Stock price S (convexity adjustment)</td><td>Gamma</td><td>Γ = ∂2C/∂S2 = φ(d1)/Sσ√T</td></tr><tr><td>Volatility σ</td><td>Vega</td><td>ν = ∂C/∂σ = S · φ(d1) · T</td></tr><tr><td rowspan="2">Time</td><td rowspan="2">Theta</td><td>Θ = - ∂C/∂T = - Sφ(d1)σ/2√T</td></tr><tr><td>- r Xe-rT Φ(d2)</td></tr><tr><td rowspan="2">Interest rate r</td><td rowspan="2">Rho</td><td>ρ = ∂C/∂r</td></tr><tr><td>= X · T · e-rT · Φ(d2)</td></tr></table> price of the underlying stock. Moreover, an asset manager employing options for risk management wants to know how the value of an option position will change as the price of the underlying changes.


One way to do so is to determine the derivative of the call option price with respect to the spot price of the underlying stock:

$$
\Delta = \frac{\partial C}{\partial S} = \Phi \left(d_{1}\right) \tag {5}
$$

This quantity is called the "delta" of the option, and can be used in the following way to determine the expected price change in the option if the stock increases by about 1:

$$
\Delta C = C (S + \mathbb {S} x) - C (S) \approx \frac{\partial C}{\partial S} \Delta S = \mathbb {S} x \Phi (d_{1}) \tag {6}
$$

The relation given by (6) holds true for small changes in the price of the underlying. For large changes the assumed linear relationship between call and option price is not valid and we must apply a so-called convexity adjustment:

$$
\Delta C = C (S + \mathbb {S} x) - C (S) \approx \frac{\partial C}{\partial S} \mathbb {S} x + \frac{1}{2} \cdot \underbrace {\frac{\partial^{2} C}{\partial S^{2}}}_{= \Gamma} (\mathbb {S} x)^{2}
$$

Here,  $\Gamma$  denotes the "options gamma," which measures the curvature of the option price as a function of the price of the underlying stock.

Figure 2 Accuracy of Simple Delta Approximation and Convexity-Adjusted Approximation
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/d3eecb686c316498a235ebb0f13783182616944a36aecc46ab8f888a6958042c.jpg)
Note: The example is calculated for a one-month option with strike  $\mathrm{X} = \$  100  and current stock price  $S = \ 100\$  with an interest of  $10\%$  per annum and volatility of  $20\%$  per annum.

Figure 2 visualizes this effect. We see that for small variations in the stock price the "true price" and both approximations nearly coincide. But for medium-sized variations, only the convexity-adjusted approximation is still accurate. For large variations in the underlying stock price both approximations fail.

The impact of the parameters stock price, interest rate, time to maturity, and volatility on the option's delta is visualized in Figure 3. We can recognize that the influence of a change in the underlying on the option value measured by the option's delta increases with increasing stock price. Intuitively, this is clear as for large values of the underlying stock the option behaves like the stock itself, whereas for values of the underlying stock near zero, the option is virtually worthless. Also, we can see that if the option is at the money, the impact of a change in the value of the underlying stock increases with increasing time to maturity and with increasing interest rate, which is not as obvious. The delta of the option that is at the money decreases with increasing volatility. The reason is as follows. Imagine that you possess an option on an underlying which is virtually nonrandom.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/f6397e48af0c8c9510a766f947368461b6040622284cb64fd1b9afb8e1edaba3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/3690b8bd8e568a4d425c8a7bf7eb5045acb6b1bcdaef6270da4454cc14ed6df4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/97259235534df529204a2016faefbe22888ed4dae73e1b8cbcdca09bdd29602b.jpg)
Figure 3 Delta as a Function of the Parameters Note: The example is calculated for a one-month option with strike X = \100 and current stock price S = \$ 100 with an interest of 10\% per annum and a volatility of 20\% per annum.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/d59d0e02a220157efb16fae8d0bf554229ccfb5e4776622ec81c87638fe70603.jpg)

In this case, the value of the option equals its intrinsic value and therefore a change in the underlying stock price has a large impact on the value of the option provided that the current stock price is above the strike. In a stochastic environment (that is, nonzero volatility), every movement of the stock can be immediately followed by a movement in the opposite direction. This is why the option price is not as sensitive to stock price movements when volatility is high (that is, delta decreases with increasing volatility).

For gamma, it is clear that the impact of a change in the price of the underlying is the highest if the option is at the money. If the option is far out or far in the money, we have  $C \approx 0$  or  $C \approx S$  and, therefore, the second derivative with respect to  $S$  will vanish.

Below we will give a brief overview of the remaining sensitivity measures called theta, vega, and rho. Figure 4 visualizes the effect of the cur rent stock price on the Greeks gamma, theta, rho, and vega.


# The Call Option Price and Time to Expiration: Theta

All other factors constant, the longer the time to expiration, the greater the option price. Since each day the option moves closer to the expiration date, the time to expiration decreases. The theta of an option measures the change in the option price as the time to expiration decreases, or equivalently, it is a measure of time decay.

Assuming that the price of the underlying stock does not change (which means that the intrinsic value of the option does not change), theta measures how quickly the time value of the option changes as the option moves toward expiration.

Buyers of options prefer a low theta so that the option price does not decline quickly as it moves toward the expiration date. An option writer benefits from an option that has a high theta.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/d67717317dd7ee410c747dd7648ebfd3db5d32046a1b86e1b176239a9c54d4d5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/e06fbae46b313422046926765fbc85b17bb609da18ded5a77fc7f72e17f4c8a6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/04eafdc06a652dc27f30a7dcc7815ed638d3a8d1f4865f825b0dc848dacd65f2.jpg)
Figure 4 Variation of the Greeks with Respect to the Current Price of the Underlying Stock Note: The example is calculated for a one-month option with strike  X = \100  and spot price  S = \$100  with an interest of  10\%  per annum and a volatility of  20\%  per annum.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/419ace5b7b8e3ee45bbef6de7f75032016acb923fd9d2a67893e01479275f920.jpg)


# Option Price and Expected Volatility: Vega

All other factors constant, a change in the expected volatility will change the option price. The vega (also called "kappa") of an option measures the dollar price change in the price of the option for a  $1\%$  change in the expected price volatility. (Vega is not a Greek letter. Vega is used to denote volatility, just as theta is used for time and rho is used for interest rate.) The option price is most sensitive with respect to a change in volatility when the option is at or near the money. This can be easily understood as follows. Imagine the option is very deep out of the money (that is, the option is virtually worthless). In this case, any small change in the volatility of the underlying will have no impact on the option price. It will still be nearly zero.

The same holds true if the option is far in the money (that is, it is nearly sure that the option will end in the money and the price of the option equals nearly the price of the stock). In this case, the impact of a small change in the volatility of the stock is negligible as well and, therefore, vega will be small. The situation is different if the option ranges near at the money. In this case, the option is very sensitive to volatility changes as they change the probability of ending in or out of the money dramatically. That is why we have a high vega for an option near the money.

# Call Option Price and Interest Rate: Rho

The sensitivity of the option price to a change in the interest rate is called "rho." The option's rho is the least popular among the Greeks. Nevertheless, it is of practical value as it can be used to immunize a trader's position against interest rate risk. An equivalent concept which might be familiar to some readers is the duration of a bond. For our purposes, rho plays a minor role, and we have introduced it for the sake of completeness.


# The Greeks and Portfolio Applications

In practical applications, the Greeks are used to hedge portfolios with respect to certain risk exposures. Because a portfolio is a linear combination of assets and as the derivative of a linear combination of functions equals the linear combination of the derivatives, we can simply calculate the Greek of a portfolio of options or other assets as the linear combination of the individual Greeks. When we seek to build a portfolio in a way that one or several of the Greeks equal zero, then the portfolio is said to be hedged with respect to the respective risk factor. A zero-delta portfolio, for example, is insensitive with respect to small changes in the value of S, and similarly for the other factors.

# COMPUTING A PUT OPTION PRICE

We have focused our attention on call options. How do we value put options? This is done by using the following put-call parity relationship, which gives the relationship among the price of the common stock, the call option price, and the put option price. By simple no-arbitrage considerations, it can be shown that the following price identity must hold true for a European call and put option with the same strike and maturity:

Call price - Put price = Stock price
-Present value of dividends
-Present value of the strike

If we can calculate the fair value of a call option, the fair value of a put with the same strike price and expiration on the same stock can be calculated from the put-call parity relationship.

# ASSUMPTIONS UNDERLYING THE BLACK-SCHOLES MODEL AND BASIC EXTENSIONS

The Black-Scholes model is based on several restrictive assumptions. These assumptions were necessary to develop the hedge to realize riskless arbitrage profits if the market price of the call option deviates from the price obtained from the model. Here, we will look at these assumptions and mention some basic extensions of the model that make pricing more realistic.

# Taxes and Transactions Costs

The Black-Scholes model ignores taxes and transactions costs. The model can be modified to account for taxes, but the problem is that there is not one unique tax rate. Transactions costs include both commissions and the bid-ask spreads for the stock and the option, as well as other costs associated with trading options. This assumption, together with the next two, is the most important for the validity of the Black-Scholes model. The derivation of the price depends mainly on the existence of a replicating portfolio. When transaction costs exist, even if they are negligibly small, then the hedge portfolio can no longer be built and the argument leading to the uniqueness of the price fails.

# Trading in Continuous Time, Short Selling, and Trading Arbitrary Fractions of Assets

One crucial assumption underlying the Black-Scholes model is the opportunity to (1) perform trades in continuous time; (2) buy a negative number of all traded assets (short selling); and (3) buy and sell arbitrary fractions of all traded assets. Only these more or less unrealistic assumptions together with the previously discussed absence of transaction costs and taxes allow the derivation of the unique call option price by the hedging argument. The portfolio, consisting of certain fractions of the bond and the underlying stock, needs an ongoing rebalancing that is only possible in a market that allows continuous-time trading. Additionally, the number of stocks and bonds needed in the portfolio to replicate the option can be an arbitrary real number, possibly negative.


# Variance of the Stock's Return

The Black-Scholes model assumes that the variance of the stock's return is (1) constant over the life of the option and (2) known with certainty. If (1) does not hold, an option pricing model can be developed that allows the variance to change. The violation of (2), however, is more serious. As the Black-Scholes model depends on the riskless hedge argument and, in turn, the variance must be known to construct the proper hedge, if the variance is not known, the hedge will not be riskless.

# Stochastic Process Generating Stock Prices

To derive an option pricing model, an assumption is needed about the way stock prices move. The Black-Scholes model is based on the assumption that stock prices are generated by a geometric Brownian motion. Geometric Brownian motion is a stochastic process with continuous paths. In reality, one can sometimes observe that the market exhibits large fluctuations that cannot be explained by a continuous-time process with constant volatility as the Brownian motion. In theory, there are two possibilities to overcome this problem. Either one introduces the previously mentioned stochastic volatility or one allows for jumps in the stock price.

# Risk-Free Interest Rate

In deriving the Black-Scholes model, two assumptions were made about the risk-free inter est rate. First, it was assumed that the interest rates for borrowing and lending were the same. Second, it was assumed that the interest rate was constant and known over the life of the option. The first assumption is unlikely to hold because borrowing rates are higher than lending rates. The effect on the Black-Scholes model is that the option price will be bound between the call price derived from the model using the two interest rates. The model can handle the second assumption by replacing the risk-free rate over the life of the option by the geometric average of the period returns expected over the life of the option. Returns on short-term Treasury bills cannot be known with certainty over the long term. Only the expected return is known, and there is a variance around it. The effects of variable interest rates are considered in Merton (1973).


# BLACK-SCHOLES MODEL APPLIED TO THE PRICING OF OPTIONS ON BONDS: IMPORTANCE OF ASSUMPTIONS

While the Black-Scholes option pricing model was developed for nondividend paying stocks, it has been applied to options on bonds. We conclude this entry by demonstrating the limitations of applying the model to valuing options on bonds. This allows us to appreciate the importance of the assumptions on option pricing. To do so, let us look at the values that would be derived in a couple of examples.

We know that there are coupon-paying bonds and zero-coupon bonds. In our illustration we will use a zero-coupon bond. The reason is that the original Black-Scholes model was for common stock that did not pay a dividend and so a zero-coupon bond would be the equivalent type of instrument. Specifically, we look at how the Black-Scholes option pricing model would value a zero-coupon bond with three years to maturity assuming the following:


Strike price = 88.00

Time remaining to expiration  $= 2$  years

Current bond price  $= \$  83.96$

Expected return volatility  $=$  Standard deviation

$$
= 10 \% \text{perannum}
$$

Risk-free rate  $= 6\%$  per annum

The Black-Scholes model would give an option value of  \$8.116. There is no reason to suspect that this value generated by the model is incorrect. However, let us change the problem slightly. Instead of a strike price of\$ 88, let us make the strike price \$100.25. The Black-Scholes option pricing model would give a fair value of \$2.79. Is there any reason to believe this is incorrect? Well, consider that this is a call option on a zero-coupon bond that will never have a value greater than its maturity value of \$100. Consequently, a call option with a strike price of \$100.25 must have a value of zero. Yet, the Black-Scholes option pricing model tells us that the value is 2.79! In fact, if we assume a higher expected volatility, the Black-Scholes model would give an even greater value for the call option.

Why is the Black-Scholes model off by so much in our illustration? The answer is that there are three assumptions underlying the Black-Scholes model that limit its use in pricing options on fixed income instruments.

The first assumption is that the probability distribution for the underlying asset's prices assumed by the Black-Scholes model permits some probability—no matter how small—that the price can take on any positive value. But in the case of a zero-coupon bond, the price cannot take on a value above  \$100. In the case of a coupon bond, we know that the price cannot exceed the sum of the coupon payments plus the maturity value. For example, for a five-year 10\%$  coupon bond with a maturity value of 100, the price cannot be greater than \$150 (five coupon payments of \$10 plus the maturity value of 100). Thus, unlike stock prices, bond prices have a maximum value. The only way that a bond's price can exceed the maximum value is if negative interest rates are permitted. While there have been instances where negative interest rates have occurred outside the United States, users of option pricing models assume that this outcome cannot occur. Consequently, any probability distribution for prices assumed by an option pricing model that permits bond prices to be higher than the maximum bond value could generate nonsensical option prices. The Black-Scholes model does allow bond prices to exceed the maximum bond value (or, equivalently, assumes that interest rates can be negative).


The second assumption of the Black-Scholes model is that the short-term interest rate is constant over the life of the option. Yet the price of an interest rate option will change as interest rates change. A change in the short-term interest rate changes the rates along the yield curve. Therefore, for interest rate options it is clearly inappropriate to assume that the short-term rate will be constant.

The third assumption is that the variance of returns is constant over the life of the option. As a bond moves closer to maturity, its price volatility declines and therefore its return volatility declines. Therefore, the assumption that variance of returns is constant over the life of the option is inappropriate.

# KEY POINTS

- The most popular option pricing model is the Black-Scholes model.
- The factors that affect the value of an option include the current price of the asset, the strike price, the short-term risk-free interest rate, the time remaining to the expiration date of the option, and the expected return volatility.
- Option pricing models depend on the assumption regarding the distribution of returns.

- The option price derived from the Black-Scholes option pricing model is "fair" in the sense that if any other price existed in a market where all the assumptions of the Black-Scholes model are satisfied, riskless arbitrage profits can be realized by taking an offsetting position in the underlying asset.
- The sensitivity of the price of an option to a change in the value of a factor that affects the option's price can be computed for any option pricing model. These sensitivity measures are referred to as the Greeks (delta, gamma, vega, theta, and rho).
- As with any economic model, there are assumptions that are made. When these assumptions are violated, the model value can depart significantly from the true value of the option.

- Using the Black-Scholes option pricing model to value an option on a bond is a good example where the model assumptions are not consistent with the realities of the bond market.

# REFERENCES

Black, F., and Scholes, M. (1973). The pricing of corporate liabilities. Journal of Political Economy 81: 637-659.

Merton, R. (1973). The theory of rational option pricing. Bell Journal of Economics and Management Science 4: 141-183.

# Pricing of Futures/Forwards and Options

FRANK J. FABOZZI, PhD, CFA, CPA
Professor of Finance, EDHEC Business School

Abstract: There are various models that been proposed to value financial assets in the cash market. Models for valuing derivatives such as futures, forwards, options, swaps, caps, and floors are valued using arbitrage principles. Basically, the price of a derivative is one that does not allow market participants to generate riskless profits without committing any funds. In developing a pricing model for derivatives, the model builder begins with a strategy (or trade) to exploit the difference between the cash price of the underlying asset for a derivative. The market price for the derivative is the cost of the package to replicate the payoff of the derivative.

Derivative instruments play an important role in financial markets as well as commodity markets by allowing market participants to control their exposure to different types of risk. When using derivatives, a market participant should understand the basic principles of how they are valued. While there are many models that have been proposed for valuing financial instruments that trade in the cash (spot) market, the valuation of all derivative models is based on arbitrage arguments. Basically, this involves developing a strategy or a trade wherein a package consisting of a position in the underlying (that is, the underlying asset or instrument for the derivative contract) and borrowing or lending so as to generate the same cash flow profile as the derivative. The value of the package is then equal to the theoretical price of the deriva tive. If the market price of the derivative deviates from the theoretical price, then the actions of arbitrageurs will drive the market price of the derivative toward its theoretical price until the arbitrage opportunity is eliminated.


In developing a strategy to capture any mispricing, certain assumptions are made. When these assumptions are not satisfied in the real world, the theoretical price can only be approximated. Moreover, a close examination of the underlying assumptions necessary to derive the theoretical price indicates how a pricing formula must be modified to value specific contracts.

In this entry, how futures, forwards, and options are valued is explained. The valuation of other derivatives such as swaps, caps, and floors is described in other entries.

# PRICING OF FUTURES/FORWARD CONTRACTS

The pricing of futures and forward contracts is similar. If the underlying asset for both contracts is the same, the difference in pricing is due to differences in features of the contract that must be dealt with by the pricing model. To understand the differences, we begin with a definition of the two contracts.

A futures contract and a forward contract are agreements between a buyer and a seller, in which the buyer agrees to take delivery of the underlying at a specified price at some future date and the seller agrees to make delivery of the underlying at the specified price at the same future date. The buyer and the seller of the contract refers to the obligation that the party has in the future since neither party is obligated to transact in the underlying at the time of the trade. The futures price in the case of a futures contract or forward price in the case of a forward contract is the price at which the parties have agreed to transact in the future. The settlement date or delivery date is the future date when the two parties have agreed to transact (that is, buy or sell the underlying).

# Differences between Futures and Forward Contracts

Futures contracts are standardized agreements as to the delivery date (or month) and quality of the deliverable, and are traded on organized exchanges. Associated with every futures exchange is a clearinghouse. The clearinghouse plays an important function: It guarantees that both parties to the trade will perform in the future. In the absence of a clearinghouse, the risk that the two parties face is that in the future when both parties are obligated to perform one of the parties will default. This risk faced in any derivative contract is referred to as counterparty risk. The clearinghouse allows the two parties to enter into a trade without worrying about counterparty risk with respect to the counterparty to the trade. The reason is that after the trade is executed by the parties, the relationship between the two parties is terminated. The clearinghouse interposes itself as the buyer for every sale and the seller for every purchase. Consequently, the two parties to the trade are free to liquidate their positions without involving the original counterparty.


To protect itself against the counterparty risk of both the buyer and seller to the trade, the exchange where the contract is traded requires that when a position is first taken in a futures contract, both parties must deposit a minimum dollar amount per contract. This amount is specified by the exchange and referred to as initial margin. The parties have a choice of providing the initial margin in the form of cash or an interest-bearing security such as a Treasury bill. As the price of the futures contract fluctuates each trading day, the value of the equity of each party in the position changes. The equity in a futures margin account is measured by the sum of all margins posted and all daily gains less all daily losses to the account. To further protect itself against counterparty risk, the exchange specifies that the parties satisfy minimum equity positions. Maintenance margin is the minimum level that the exchange specifies that a party's equity position may fall as a result of an unfavorable price movement before a party is required to deposit additional margin. Variation margin is the additional margin that a party is required to provide in order to bring the equity in the margin account back to its initial margin level. If a party fails to furnish variation margin within 24 hours, the exchange closes the futures position out. Unlike initial margin, variation margin must be in cash rather than an interest-bearing security. Any excess margin in a party's margin account may be withdrawn.

In pricing futures contracts, the potential interim cash flows of futures contracts that are due to variation margin, in the case of adverse price movements, or withdrawal of cash for a party that experiences a favorable price movement that results in the margin account's having excess margin must be taken into account.


We'll now compare these characteristics of a futures contract to a forward contact. A forward contract is an over-the-counter (OTC) instrument. That is, it is not an exchange-traded product. A forward contract is usually nonstandardized because the terms of each contract are negotiated individually between the parties to the trade. Also, there is no clearinghouse for trading forward contracts, and secondary markets are often nonexistent or extremely thin.

As just explained, futures contracts are marked to market at the end of each trading day. A forward contract may or may not be marked to market, depending on the wishes of the two parties. For example, both parties to a forward contract may be high-credit-quality entities. The parties may feel comfortable with the counterparty risk up to some specified amount and not require margin. Or one party may be satisfied with the high quality of the counterparty but the other party may not. In such cases, the forward contract may call for the marking to market of the position of only one of the counterparties. For a forward contract that is not marked to market, there are no interim cashflow effects because no additional margin is required.

Other than these differences, which reflect the institutional arrangements in the two markets, most of what we say about the pricing of futures contracts applies equally to the pricing of forward contracts.

# Basic Futures Pricing Model

We will illustrate the basic model for pricing futures contracts here. By "basic" we mean that we are extrapolating from the nuisances of the underlying for a specific contract. The issues associated with applying the basic pricing model to some of the more popular futures contracts are described in other entries. Moreover, while the model described here is said to be a model for pricing futures, technically, it is a model for pricing forward contracts with no mark-to-market requirements.


Rather than deriving the formula algebraically, the basic pricing model will be demonstrated using an illustration. We make the following six assumptions for a futures contract that has no initial and variation margin and which the underlying is asset U:

1. The price of asset U in the cash market is 100.
2. There is a known cash flow for asset U over the life of the futures contract.
 3. The cash flow for asset U is \$8 per year paid quarterly (\$2 per quarter).
4. The next quarterly payment is exactly three months from now.
5. The futures contract requires delivery three months from now.
6. The current three-month interest rate at which funds can be lent or borrowed is  $4\%$  per year.

The objective is to determine what the futures price of this contract should be. To do so, suppose that the futures price in the market is 105. Let's see if that is the correct price. We can check this by implementing the following simple strategy:

- Sell the futures contract at 105.
Purchase asset U in the cash market for 100.
- Borrow  \$100 for three months at 4\% per year (\$ 1 per quarter).

The purchase of asset U is accomplished with the borrowed funds. Hence, this strategy does not involve any initial cash outlay. At the end of three months, the following occurs

• 2 is received from holding asset U.
- Asset U is delivered to settle the futures contract.
The loan is repaid.

This strategy results in the following outcome:

# From settlement of the futures contract:

<table><tr><td>Proceeds from sale of asset U to settle the futures contract</td><td>= \$105</td></tr><tr><td>Payment received from investing in asset U for three months</td><td>= 2</td></tr><tr><td>Total proceeds</td><td>= \$107</td></tr></table>

# From the loan:

<table><tr><td>Repayment of principal of loan</td><td>= \$100</td></tr><tr><td>Interest on loan (1\% for three months)</td><td>= 1</td></tr><tr><td>Total outlay</td><td>= \$101</td></tr><tr><td>Profit from the strategy</td><td>= 6</td></tr></table>

The profit of 6 from this strategy is guaranteed regardless of what the cash price of asset U is three months from now. This is because in the preceding analysis of the outcome of the strategy, the cash price of asset U three months from now never enters the analysis. Moreover, this profit is generated with no investment outlay; the funds needed to acquire asset U are borrowed when the strategy is executed. In financial terms, the profit in the strategy we have just illustrated arises from a riskless arbitrage between the price of asset U in the cash market and the price of asset U in the futures market.

In a well-functioning market, arbitrageurs who could realize this riskless profit for a zero investment would implement the strategy described above. By selling the futures and buying asset U in order to implement the strategy, this would force the futures price down so that at some price for the futures contract, the arbitrage profit is eliminated.

This strategy that resulted in the capturing of the arbitrage profit is referred to as a cash-and-carry trade. The reason for this name is that implementation of the strategy involves borrowing cash to purchase the underlying and "carrying" that underlying to the settlement date of the futures contract.

From the cash-and-carry trade we see that the futures price cannot be \$105. Suppose instead that the futures price is \$95 rather than 105.

Let's try the following strategy to see if that price can be sustained in the market:

- Buy the futures contract at 95.
- Sell (short) asset U for 100.
- Invest (lend) 100 for three months at 1\% per year.

We assume once again that in this strategy that there is no initial margin and variation margin for the futures contract. In addition, we assume that there is no cost to selling the asset short and lending the money. Given these assumptions, there is no initial cash outlay for the strategy just as with the cash-and-carry trade. Three months from now,

- Asset U is purchased to settle the long position in the futures contract.
- Asset U is accepted for delivery.
- Asset U is used to cover the short position in the cash market.
- Payment is made of 2 to the lender of asset U as compensation for the quarterly payment.
- Payment is received from the borrower of the loan of 101 for principal and interest.

More specifically, the strategy produces the following at the end of three months:

# From settlement of the futures contract:

<table><tr><td>Price paid for purchase of asset U to settle futures contract</td><td>= \$95</td></tr><tr><td>Proceeds to lender of asset U to borrow the asset</td><td>= 2</td></tr><tr><td>Total outlay</td><td>= \$97</td></tr></table>

# From the loan:

<table><tr><td>Principal from loan</td><td>= \$100</td></tr><tr><td>Interest earned on loan (\$1 for three months)</td><td>= 1</td></tr><tr><td>Total proceeds</td><td>= \$101</td></tr><tr><td>Profit from the strategy</td><td>= \$4</td></tr></table>

As with the cash and trade, the 4 profit from this strategy is a riskless arbitrage profit. This strategy requires no initial cash outlay, but will generate a profit whatever the price of asset U is in the cash market at the settlement date. In real-world markets, this opportunity would lead arbitrageurs to buy the futures contract and short asset U. The implementation of this strategy would be to raise the futures price until the arbitrage profit disappeared.


This strategy that is implemented to capture the arbitrage profit is known as a reverse cash-and-carry trade. That is, with this strategy, the underlying is sold short and the proceeds received from the short sale are invested.

We can see that the futures price cannot be \$95 or \$105. What is the theoretical futures price given the assumptions in our illustration? It can be shown that if the futures price is 99 there is no opportunity for an arbitrage profit. That is, neither the cash-and-carry trade nor the reverse cash-and-carry trade will generate an arbitrage profit.

In general, the formula for determining the theoretical futures price given the assumptions of the model is:

Theoretical futures price

$$
\begin{array}{l} = \text{Ca sh ma rk et pr ic e} + (\text{Ca sh ma rk et pr ic e}) \\ \times (\text{Fi na nc in g} - \text{Ca sh yi el d}) \tag {1} \\ \end{array}
$$

In the formula given by (1), "Financing cost" is the interest rate to borrow funds and "Cash yield" is the payment received from investing in the asset as a percentage of the cash price. In our illustration, the financing cost is  $1\%$  and the cash yield is  $2\%$ .

In our illustration, since the cash price of asset U is 100, the theoretical futures price is:

$$
\$ 100 + \$ 100 \times (1\% -2\%) = \$ 99
$$

The future price can be above or below the cash price depending on the difference between the financing cost and cash yield. The difference between these rates is called the net financing cost. A more commonly used term for the net financing cost is the cost of carry, or simply, carry. Positive carry means that the cash yield exceeds the financing cost. (Note that while the difference between the financing cost and the cash yield is a negative value, carry is said to be positive.) Negative carry means that the financing cost exceeds the cash yield. Below is a summary of the effect of carry on the difference between the futures price and the cash market price:


<table><tr><td>Positive carry</td><td>Futures price will sell at a discount to cash price.</td></tr><tr><td>Negative carry</td><td>Futures price will sell at a premium to cash price.</td></tr><tr><td>Zero</td><td>Futures price will be equal to the cash price.</td></tr></table>

Note that at the settlement date of the futures contract, the futures price must equal the cash market price. The reason is that a futures contract with no time left until delivery is equivalent to a cash market transaction. Thus, as the delivery date approaches, the futures price will converge to the cash market price. This fact is evident from the formula for the theoretical futures price given by (1). The financing cost approaches zero as the delivery date approaches. Similarly, the yield that can be earned by holding the underlying approaches zero. Hence, the cost of carry approaches zero, and the futures price approaches the cash market price.

# A Closer Look at the Theoretical Futures Price

In deriving theoretical futures price using the arbitrage argument, several assumptions had to be made. These assumptions as well as the differences in contract specifications will result in the futures price in the market deviating from the theoretical futures price as given by (1). It may be possible to incorporate these institutional and contract specification differences into the formula for the theoretical futures price. In general, however, because it is oftentimes too difficult to allow for these differences in building a model for the theoretical futures price, the end result is that one can develop bands or boundaries for the theoretical futures price. So long as the futures price in the market remains within the band, no arbitrage opportunity is possible.

Next, we will look at some of the institutional and contract specification differences that cause prices to deviate from the theoretical futures price as given by the basic pricing model.


# Interim Cash Flows

In the derivation of a basic pricing model, it is assumed that no interim cash flows arise because of changes in futures prices (that is, there is no variation margin). As noted earlier, in the absence of initial and variation margins, the theoretical price for the contract is technically the theoretical price for a forward contract that is not marked to market rather than a futures contract.

In addition, the model assumes implicitly that any dividends or coupon interest payments are paid at the settlement date of the futures contract rather than at any time between initiation of the cash position and settlement of the futures contract. However, we know that interim cash flows for the underlying for financial futures contracts do have interim cash flows. Consider stock index futures contracts and bond futures contracts.

For a stock index, there are interim cash flows. In fact, there are many cash flows that are dependent upon the dividend dates of the component companies. To correctly price a stock index future contract, it is necessary to incorporate the interim dividend payments. Yet, the dividend rate and the pattern of dividend payments are not known with certainty. Consequently, they must be projected from the historical dividend payments of the companies in the index. Once the dividend payments are projected, they can be incorporated into the pricing model. The only problem is that the value of the dividend payments at the settlement date will depend on the interest rate at which the dividend payments can be reinvested from the time they are projected to be received until the settlement date. The lower the dividend, and the closer the dividend payments to the settlement date of the futures contract, the less important the reinvestment income is in determining the futures price.

In the case of a Treasury futures contract, the underlying is a Treasury note or a Treasury bond. Unlike a stock index futures contract, the timing of the interest payments that will be made by the U.S. Department of the Treasury for a given issue that is acceptable as deliverable for a contract is known with certainty and can be incorporated into the pricing model. However, the reinvestment interest that can be earned from the payment dates to the settlement of the contract is unknown and depends on prevailing interest rates at each payment date.

# Differences in Borrowing and Lending Rates

In the formula for the theoretical futures price, it is assumed in the cash-and-carry trade and the reverse cash-and-carry trade that the borrowing rate and lending rate are equal. Typically, however, the borrowing rate is higher than the lending rate. The impact of this inequality is important and easy to quantify.

In the cash-and-carry trade, the theoretical futures price as given by (1) becomes:

Theoretical futures price based on borrowing rate
$=$  Cash market price + (Cash market price)
$\times$  (Borrowing rate - Cash yield) (2)

For the reverse cash-and-carry trade, it becomes

Theoretical futures price based on lending rate
$=$  Cash market price + (Cash market price)
$\times$  (Lending rate - Cash yield) (3)

Formulas (2) and (3) together provide a band between which the actual futures price can exist without allowing for an arbitrage profit. Equation (2) establishes the upper value for the band while equation (3) provides the lower value for the band. For example, assume that the borrowing rate is  $6\%$  per year, or  $1.5\%$  for three months, while the lending rate is  $4\%$  per year, or  $1\%$  for three months. Using equation (2), the upper value for the theoretical futures price is  \$99.5 and using equation (3) the lower value for the theoretical futures price is\$ 99.


# Transaction Costs

The two strategies to exploit any price discrepancies between the cash market and theoretical price for the futures contract will require the arbitrageur to incur transaction costs. In real-world financial markets, the costs of entering into and closing the cash position as well as round-trip transaction costs for the futures contract affect the futures price. As in the case of differential borrowing and lending rates, transaction costs widen the bands for the theoretical futures price.

# Short Selling

The reverse cash-and-strategy trade requires the short selling of the underlying. It is assumed in this strategy that the proceeds from the short sale are received and reinvested. In practice, for individual investors, the proceeds are not received, and, in fact, the individual investor is required to deposit margin (securities margin and not futures margin) to short sell. For institutional investors, the underlying may be borrowed, but there is a cost to borrowing. This cost of borrowing can be incorporated into the model by reducing the cash yield on the underlying. For strategies applied to stock index futures, a short sale of the components stocks in the index means that all stocks in the index must be sold simultaneously. This may be difficult to do and therefore would widen the band for the theoretical future price.

# Known Deliverable Asset and Settlement Date

In the two strategies to arbitrage discrepancies between the theoretical futures price and the cash market price, it is assumed that (1) only one asset is deliverable and (2) the settlement date occurs at a known, fixed point in the future. Neither assumption is consistent with the delivery rules for some futures contracts. For U.S. Treasury note and bond futures contracts, for example, the contract specifies that any one of several Treasury issues that is acceptable for delivery can be delivered to satisfy the contract. Such issues are referred to as deliverable issues. The selection of which deliverable issue to deliver is an option granted to the party who is short the contract (that is, the seller). Hence, the party that is long the contract (that is, the buyer of the contract) does not know the specific Treasury issue that will be delivered. However, market participants can determine the cheapest-to-deliver issue from the issues that are acceptable for delivery. It is this issue that is used in obtaining the theoretical futures price. The net effect of the short's option to select the issue to deliver to satisfy the contract is that it reduces the theoretical future price by an amount equal to the value of the delivery option granted to the short.


Moreover, unlike other futures contracts, the Treasury bond and note contracts do not have a delivery date. Instead, there is a delivery month. The short has the right to select when in the delivery month to make delivery. The effect of this option granted to the short is once again to reduce the theoretical futures price below that given by equation (1). More specifically,

Theoretical futures price adjusted for delivery options

$$
\begin{array}{l} = \text{Ca sh ma te rk pr ic e} + (\text{Ca sh ma te rk pr ic e}) \\ \times (\text{Fi na nc in g} - \text{Ca sh yi el d}) - \text{Va lu eo ft he} \tag {4} \\ \end{array}
$$

# Deliverable as a Basket of Securities

Some futures contracts have as the underlying a basket of assets or an index. Stock index futures are the most obvious example. At one time, municipal futures contracts were actively traded and the underlying was a basket of municipal securities. The problem in arbitrating futures contracts in which there is a basket of assets or an index is that it may be too expensive to buy or sell every asset included in the basket or index. Instead, a portfolio containing a smaller number of assets may be constructed to track the basket or index (which means having price movements that are very similar to changes in the basket or index). Nonetheless, the two arbitrage strategies involve a tracking portfolio rather than a single asset for the underlying, and the strategies are no longer risk-free because of the risk that the tracking portfolio will not precisely replicate the performance of the basket or index. For this reason, the market price of futures contracts based on baskets of assets or an index is likely to diverge from the theoretical price and have wider bands.


# Different Tax Treatment of Cash and Futures Transaction

Participants in the financial market cannot ignore the impact of taxes on a trade. The strategies that are implemented to exploit arbitrage opportunities between prices in the cash and futures markets and the resulting pricing model must recognize that there are differences in the tax treatment under the tax code for cash and futures transactions. The impact of taxes must be incorporated into the pricing model.

# PRICING OF OPTIONS

Now we will look at the basic principles for valuing options. There are two parties to an option contract: the buyer and the writer or seller. The writer of the option grants the buyer of the option the right, but not the obligation, to either purchase from or sell to the writer something at a specified price within a specified period of time (or at a specified date). In exchange for the right that the writer grants the buyer, the buyer pays the writer a certain sum of money. This sum is called the option price or option premium. The price at which the underlying may be purchased or sold is called the exercise price or strike price. The option's expiration date (or maturity date) is the last date at which the option buyer can exercise the option. After the expiration date, the contract is void and has no value.


There are two types of options: call options and put options. A call option, or simply call, is one in which the option writer grants the buyer the right to purchase the underlying. When the option writer grants the buyer the right to sell the underlying, the option is called a put option, or simply, a put.

The timing of the possible exercise of an option is an important characteristic of an option contract. An American option allows the option buyer to exercise the option at any time up to and including the expiration date. A European option allows the option buyer to exercise the option only on the expiration date.

As with futures and forward contracts, the theoretical price of an option is also derived based on arbitrage arguments. However, as will be explained, the pricing of options is not as simple as the pricing of futures and forward contracts.

# Basic Components of the Option Price

The theoretical price of an option is made up of two components: the intrinsic value and a premium over intrinsic value.

# Intrinsic Value

The intrinsic value is the option's economic value if it is exercised immediately. If no positive economic value would result from exercising immediately, the intrinsic value is zero. An option's intrinsic value is easy to compute given the price of the underlying and the strike price.

For a call option, the intrinsic value is the difference between the current market price of the underlying and the strike price. If that difference is positive, then the intrinsic value equals that difference; if the difference is zero or negative, then the intrinsic value is equal to zero. For example, if the strike price for a call option is \$100 and the current price of the underlying is  \$109, the intrinsic value is\$ 9. That is, an option buyer exercising the option and simultaneously selling the underlying would realize \$109 from the sale of the underlying, which would be covered by acquiring the underlying from the option writer for \$100, thereby netting a \$9 gain.


An option that has a positive intrinsic value is said to be in-the-money. When the strike price of a call option exceeds the underlying's market price, it has no intrinsic value and is said to be out-of-the-money. An option for which the strike price is equal to the underlying's market price is said to be at-the-money. Both at-the-money and out-of-the-money options have intrinsic values of zero because it is not profitable to exercise them. Our call option with a strike price of  \$100 would be (1) in the money when the market price of the underlying is more than\$ 100; (2) out of the money when the market price of the underlying is less than \$100, and (3) at the money when the market price of the underlying is equal to \$100.

For a put option, the intrinsic value is equal to the amount by which the underlying's market price is below the strike price. For example, if the strike price of a put option is \$100 and the market price of the underlying is \$95, the intrinsic value is \$5. That is, the buyer of the put option who simultaneously buys the underlying and exercises the put option will net \$5 by exercising. The underlying will be sold to the writer for \$100 and purchased in the market for \$95. With a strike price of \$100, the put option would be (1) in the money when the underlying's market price is less than \$100, (2) out of the money when the underlying's market price exceeds \$100, and (3) at the money when the underlying's market price is equal to \$100.

# Time Premium

The time premium of an option, also referred to as the time value of the option, is the amount by which the option's market price exceeds its intrinsic value. It is the expectation of the option buyer that at some time prior to the ex

Expiration date changes in the market price of the underlying will increase the value of the rights conveyed by the option. Because of this expectation, the option buyer is willing to pay a premium above the intrinsic value. For example, if the price of a call option with a strike price of  \$100 is\$ 12 when the underlying's market price is \$104, the time premium of this option is $8 ($12 minus its intrinsic value of \$4). Had the underlying's market price been \$95 instead of \$104, then the time premium of this option would be the entire 12 because the option has no intrinsic value. All other things being equal, the time premium of an option will increase with the amount of time remaining to expiration.

An option buyer has two ways to realize the value of an option position. The first way is by exercising the option. The second way is to sell the option in the market. In the first example above, selling the call for  \$12 is preferable to exercising, because the exercise will realize only\$ 4 (the intrinsic value), but the sale will realize 12. As this example shows, exercise causes the immediate loss of any time premium. It is important to note that there are circumstances under which an option may be exercised prior to the expiration date. These circumstances depend on whether the total proceeds at the expiration date would be greater by holding the option or exercising and reinvesting any received cash proceeds until the expiration date.

# Put-Call Parity Relationship

For a European put and a European call option with the same underlying, strike price, and expiration date, there is a relationship between the price of a call option, the price of a put option, the price of the underlying, and the strike price. This relationship is known as the put-call parity relationship. The relationship is:

Put option price - Call option price = Present value of strike price + Present value of cash distribution - Price of underlying

# Factors That Influence the Option Price

The factors that affect the price of an option include the:

Market price of the underlying.
- Strike price of the option.
- Time to expiration of the option.
Expected volatility of the underlying over the life of the option.
- Short-term, risk-free interest rate over the life of the option.
- Anticipated cash payments on the underlying over the life of the option.

The impact of each of these factors may depend on whether (1) the option is a call or a put, and (2) the option is an American option or a European option. Table 1 summarizes how each of the six factors listed above affects the price of a put and call option. Here, we briefly explain why the factors have the particular effects.

# Market Price of the Underlying Asset

The option price will change as the price of the underlying changes. For a call option, as the underlying's price increases (all other factors being constant), the option price increases. The opposite holds for a put option: As the price of the underlying increases, the price of a put option decreases.

Table 1 Summary of Factors That Affect the Price of an Option

<table><tr><td rowspan="2">Factor</td><td colspan="2">Effect of an Increase of Factor On</td></tr><tr><td>Call Price</td><td>Put Price</td></tr><tr><td>Market price of underlying Strike price</td><td>Increase</td><td>Decrease</td></tr><tr><td>Time to expiration of option</td><td>Decrease</td><td>Increase</td></tr><tr><td>Expected volatility</td><td>Increase</td><td>Increase</td></tr><tr><td>Short-term, risk-free interest rate</td><td>Increase</td><td>Decrease</td></tr><tr><td>Anticipated cash payments</td><td>Decrease</td><td>Increase</td></tr></table>

# Strike Price

The strike price is fixed for the life of the option. All other factors being equal, the lower the strike price, the higher the price for a call option. For put options, the higher the strike price, the higher the option price.

# Time to Expiration of the Option

After the expiration date, an option has no value. All other factors being equal, the longer the time to expiration of the option, the higher the option price. This is because, as the time to expiration decreases, less time remains for the underlying's price to rise (for a call buyer) or fall (for a put buyer), and therefore the probability of a favorable price movement decreases. Consequently, as the time remaining until expiration decreases, the option price approaches its intrinsic value.

# Expected Volatility of the Underlying over the Life of the Option

All other factors being equal, the greater the expected volatility (as measured by the standard deviation or variance) of the underlying, the more the option buyer would be willing to pay for the option, and the more an option writer would demand for it. This occurs because the greater the expected volatility, the greater the probability that the movement of the underlying will change so as to benefit the option buyer at some time before expiration.

# Short-Term, Risk-Free Interest Rate over the Life of the Option

Buying the underlying requires an investment of funds. Buying an option on the same quantity of the underlying makes the difference between the underlying's price and the option price available for investment at an interest rate at least as high as the risk-free rate. Consequently, all other factors being constant, the higher the short-term, risk-free interest rate, the greater the cost of buying the underlying and carrying it to the expiration date of the call option. Hence, the higher the short-term, risk-free interest rate, the more attractive the call option will be relative to the direct purchase of the underlying. As a result, the higher the short-term, risk-free interest rate, the greater the price of a call option.


# Anticipated Cash Payments on the Underlying over the Life of the Option

Cash payments on the underlying tend to decrease the price of a call option because the cash payments make it more attractive to hold the underlying than to hold the option. For put options, cash payments on the underlying tend to increase the price.

# Option Pricing Models

Earlier in this entry, it was explained how the theoretical price of a futures contract and forward contract can be determined on the basis of arbitrage arguments. An option pricing model uses a set of assumptions and arbitrage arguments to derive a theoretical price for an option. Deriving a theoretical option price is much more complicated than deriving a theoretical futures or forward price because the option price depends on the expected volatility of the underlying over the life of the option.

Several models have been developed to determine the theoretical price of an option. The most popular one was developed by Fischer Black and Myron Scholes (1973) for valuing European call options on common stock. The Black-Scholes model requires as input the six factors discussed above that affect the value of an option. Several modifications to the Black-Scholes model followed. One such model is the lattice model suggested by Cox, Ross, and Rubinstein (1979), Rendleman and Bartter (1979), and Sharpe (1981).

Basically, the idea behind the arbitrage argument is that if the payoff from owning a call option can be replicated by (1) purchasing the underlying for the call option and (2) borrowing funds to purchase the underlying, then the cost of creating the replicating strategy (position) is the theoretical price of the option.

# KEY POINTS

- For futures and forward contracts, the theoretical price can be derived using arbitrage arguments. Specifically, a cash-and-carry trade can be implemented to capture the arbitrage profit for an overpriced futures or forward contract while a reverse cash-and-carry trade can be implemented to capture the arbitrage profit for an underpriced futures or forward contract.
- The basic model states that the theoretical futures price is equal to the cash market price plus the net financing cost. The net financing cost, also called the cost of carry, is the difference between the financing cost and the cash yield on the underlying.
- Because of institutional and contract specification differences, the market price for the futures or forward contract can deviate from the theoretical price without any arbitrage opportunities being possible. Basically, a band can be established for the theoretical futures price and as long as the market price for the futures contract is not outside of the band, there is no arbitrage opportunity.
- The two components of the price of an option are the intrinsic value and the time premium. The former is the economic value of the option if it is exercised immediately, while the latter is the amount by which the option price exceeds the intrinsic value.
- The option price is affected by six factors: (1) the market price of the underlying; (2) the strike price of the option; (3) the time remaining to the expiration of the option; (4) the expected volatility of the underlying as measured by the standard deviation; (5) the short-term, risk-free interest rate over the life of the option; and (6) the anticipated cash payments on the underlying.

- It is the uncertainty about the expected volatility of the underlying that makes valuing options more complicated than valuing futures and forward contracts.
- There are various models for determining the theoretical price of an option. These include the Black-Scholes model and the lattice model.

# REFERENCES

Black, F., and Scholes, M. (1973). Pricing of options and corporate liabilities. Journal of Political Economy 81, 3: 637-654.
Collins, B., and Fabozzi, F. J. (1999). Derivatives and Equity Portfolio Management. New York: John Wiley & Sons.
Cox, J. C., Ross, S. A., and Rubinstein, M. (1979). Option pricing: A simplified approach. Journal of Financial Economics 7: 229-263.
Rendleman, R. J., and Bartter, B. J. (1979). Two-state option pricing. Journal of Finance 34, 5: 1093-1110.
Sharpe, W. F. (1981). Investments. Englewood Cliffs, NJ: Prentice Hall.

# Pricing Options on Interest Rate Instruments

RADU TUNARU. PhD

Professor of Quantitative Finance, Business School, University of Kent

BRIAN EALES

Academic Leader (Retired), London Metropolitan University

Abstract: Interest rate modeling has quickly become one of the main areas in financial markets. The models have grown in sophistication in response to development of new products and structures. Almost all pricing of securities and the risk management function, including marking-to-market, relies on interest rate modeling of some description. The information on interest rates, usually conveyed from the options markets, is important for other markets as well, such as the more established credit risk, commodities, equities, and the more recent ones such as inflation derivatives and insurance derivatives. Many models have been developed over the years, and their advantages and disadvantages should be appreciated and understood when they are applied.

Throughout the world, interest rates serve as instruments of control. When inflation rises to an undesirable or politically unacceptable level, the appropriate authorities raise interest rates to curb expenditure. In times when economic activity and corporate and consumer confidence is less buoyant, the policy is to lower rates. Interest rate derivatives were among the first contracts to be offered on derivative exchanges and have their origins in the period following the breakdown of the Bretton Woods Agreement. In today's sometimes volatile markets, they continue to be extremely useful tools for corporates, banks, and individuals from hedging, financial engineering, and speculative perspectives.

Two of the early prime movers in the interest rate derivatives market were the Chicago Board of Trade (CBOT) and the Chicago Mercantile Exchange (CME). (In July 2007 the CBOT and CME merged to form the CME group.) Some of the contracts that were introduced in the 1970s are still popular today, as evidenced by the high volume they enjoy.


At the short end of the yield curve, the CME has the world's most actively traded exchange-based interest rate option contracts: Eurodollar options. Each Eurodollar option has as its underlying a Eurodollar time deposit futures contract with a principal value of 1 million, which will be cash settled at maturity. Another high-volume contract available on the CME is the option on the one-month Eurodollar futures contract. This, too, is cash settled at maturity.

CME also, has option contracts on U.S. Treasury bonds and notes in its portfolio of interest rate derivative products. There are American-style options available on bonds with a maturity of at least 25-years, between 15 but less than 25 years, 10-year, 5-year, 3-year and 2-year notes, the most heavily traded of which is the 10-year Treasury note. The option contract has as its deliverable one U.S. Treasury 10-year note futures contract with a face value of 100,000 at maturity. Whereas the CME futures contracts on short-term interest rates are cash settled, the bond/note futures require physical settlement. The corresponding option contracts have similar settlement requirements identified in their contract specifications. The CME Group lists seven international data vendors who provided quotes for call/put options across a range of strike prices and maturities.

Although option prices are easy to read and interpret from vendor screens, there is a mass of academic and practitioner research literature, which provides a platform from which bond option prices in general can be calculated with integrity. The literature on modeling interest rate derivatives in this arena is frequently divided into one- or two-factor (or multifactor) models.

- Calculating option prices in a one-factor model usually proposes that the process is driven by the short rate, often with a mean-reversion feature linked to the short rate. There are several popular models that fall into this category, for example, the Vasicek model and the Cox, Ingersoll, and Ross (CIR) model, both of which will be discussed in more detail later.
- Calculating option prices in a two-factor model involves both the short- and long-term rates linked by a mean-reversion process.

The problem with some of the preceding models is that they generate their own term structures, which, in the absence of adjustment, do not match the term structure observed in the market. A category of arbitrage-free models proposed by Ho and Lee (1986); Hull and White

(1990); and Black, Derman, and Toy (1990) seeks to eliminate this problem. For example, the Black, Derman, and Toy model enjoys a degree of popularity among market practitioners, since it takes account of and matches the term structure observed in the market, it eliminates the possibility of generating negative interest rates, and it models the observed interest rate volatility. These models together with other propositions will be discussed in more detail in this entry.

In order to examine some of the major developments in option/derivative pricing in the interest rate field, it is appropriate at this point to establish a working framework.

# MODELING THE TERM STRUCTURE AND BOND PRICES

Let  $(\Omega, \Sigma, \{F_t\}_{t \geq 0}, Q)$  be a filtered probability space modeling a financial market, where the filtration  $F = \{F_t\}_{t \geq 0}$  describes the flux of information and the probability measure  $Q$  denotes the risk-neutral measure; the real-world or physical measure will be denoted by  $P$ . The starting point in modeling bond prices is the assumption that there is a bank account  $B = \{B(t)\}_{t \geq 0}$  that is linked to the bank instantaneous interest rate (also called short rate, spot rate) process  $r = \{r(t)\}_{t \geq 0}$  through

$$
\begin{array}{l} d B (t) = r (t) B (t) d t \quad \text{or} \\ B (t) = B (0) \exp \left[ \int_{0}^{t} r (s) d s \right] \tag {1} \\ \end{array}
$$

From a practical point of view, we can safely assume that the majority of stochastic processes representing prices of traded financial assets are adapted to the filtration  $F$  and that the short-rate process  $r = \{r(t)\}_{t\geq 0}$  is a predictable process, meaning that  $r(t)$  is  $F_{t - 1}$  measurable. This implies that  $B(t)$  is also  $F_{t - 1}$  measurable and this condition is automatically satisfied for continuous or left-continuous processes.

In this entry we consider only default-free securities. We shall denote by  $p(t,T)$  the price at time  $t$  of a pure discount bond with maturity  $T$  and obviously  $p(t,t) = p(T,T) = 1$ .

The following relationships are well known in the fixed-income area:

$$
\begin{array}{l} 0 <   p (t, T) \leq 1, \quad r (t) = \frac{\partial \ln p (t , T)}{\partial t} |_{T = t} \\ = - \frac{\partial \ln p (t , T)}{\partial T} |_{T = t}, \quad \text{fo ra ny} \quad t <   T \tag {2} \\ \end{array}
$$

Let  $f(t,s)$  be the forward rate at time  $s > 0$  calculated at time  $t < s$ . The instantaneous forward rate at time  $t$  to borrow at time  $T$  can be calculated from the bond prices using

$$ f (t, T) = - \frac{\partial \ln p (t , T)}{\partial T} \tag {3}
$$

The reverse works as well; if forward rates are known, then bond prices can be calculated via  $p(t,T) = e^{-\int_t^T f(t,s)ds}$ . The short rate is intrinsically related to the forward rates because  $r(t)\equiv f(t,t)$

# Short-Rate Models of Term Interest Rate Structure

Many models proposed for the short-rate process  $r = \{r(t)\}_{t\geq 0}$  are particular cases of the general diffusion equation:

$$ d r (t) = a (t, r (t)) d t + b (t, r (t)) d W (t) \tag {4}
$$ where  $W = \{W(t)\}_{t\geq 0}$  is a standard Wiener process defined on  $(\Omega ,\Sigma ,\{F_t\}_{t\geq 0},Q)$ . The following list of models describes a chronological evolution without claiming that it is an exhaustive list:


The Merton model (Merton, 1973) is

$$ d r (t) = \alpha d t + \sigma d W (t) \tag {5}
$$

The Vasicek model (Vasicek, 1977) model is

$$ d r (t) = (\alpha - \beta r (t)) d t + \sigma d W (t) \tag {6}
$$

One advantage of the Vasicek model is that the conditional distribution of  $r$  at any future time, given the current interest rates at time  $t$ , is normally distributed. The main moments are


$$
\begin{array}{l} E_{t} (r (s)) = \frac{\alpha}{\beta} + \left(r (t) - \frac{\alpha}{\beta}\right) e^{- \beta (s - t)}, \quad t \leq s \\ \operatorname{va r}_{t} [ r (s) ] = \frac{\sigma^{2}}{2 \beta} \left(1 - e^{- 2 \beta (s - t)}\right), \quad t \leq s \tag {7} \\ \end{array}
$$

$$
\begin{array}{l} \operatorname{co v}_{t} [ r (u), r (s) ] = \frac{\sigma^{2}}{2 \beta} e^{- \beta (s + u - 2 t)} (e^{2 \beta (u - t)} - 1), \\ t \leq u \leq s \\ \end{array}
$$

Another advantage is that this model can be also derived within a general equilibrium framework as illustrated by Campbell (1986).

One disadvantage that is often discussed in the interest rate modeling literature is that there is a long-run possibility of negative interest rates. However, Rabinovitch (1989) proved that when the initial interest rate  $r(0)$  is positive and the parameter estimates have reasonable values, the expected first-passage time of the process through the origin is longer than nine months. This result supports the use of the Vasicek model in practice since the majority of options traded on the organized exchanges expire in less than nine months.

The Dothan model (Dothan, 1978) is

$$ d r (t) = \alpha r (t) d t + \sigma r (t) d W (t) \tag {8}
$$

This is the same model as Rendleman and Bartter's model (Rendleman and Bartter, 1980). This model is the only lognormal single-factor model that leads to closed formulae for pure discount bonds. Nonetheless, there is no closed formula for a European option on a pure discount bond.

The Cox-Ingersoll-Ross (CIR) models (Cox, Ingersoll, and Ross, 1980, 1985) are

$$
\begin{array}{l} d r (t) = \beta (r (t))^{3 / 2} d W (t) \\ d r (t) = (\alpha - \beta r (t)) d t + \sigma (r (t))^{1 / 2} d W (t) \end{array} \tag {9}
$$

CIR wrote arguably the first of several papers developing one-factor models of the term structure of interest rates. Around the same time models in the same spirit include the Vasicek, Dothan, Courtadon (1982), and Brennan and Schwartz (1979) models. The movements of longer-maturity instruments are perfectly correlated with the instantaneous short-term rates.


The Ho-Lee model (Ho and Lee, 1986) is

$$ d r (t) = \alpha (t) d t + \sigma d W (t) \tag {10}
$$

This is the continuous version of the original model that was probably the first model designed to match exactly the observable term structure of interest rates.

The Black-Derman-Toy (BDT) model (Black, Derman, and Toy, 1990) is

$$ d r (t) = \alpha (t) r (t) d t + \sigma (t) d W (t) \tag {11}
$$

The Hull-White (HW) models (Hull and White, 1990, 1994, 1996) are

$$
\begin{array}{l} d r (t) = [ \alpha (t) - \beta (t) r (t) ] d t + \sigma (t) d W (t) \\ d r (t) = [ \alpha (t) - \beta (t) r (t) ] d t + \sigma (t) (r (t))^{1 / 2} d W (t) \tag {12} \\ \end{array}
$$

These models are two more general families of models incorporating the Vasicek model and CIR model, respectively. The first one is more often used and it can be calibrated to the observable term structure of interest rates and the volatility term structure of spot or forward rates. However, its implied volatility structures may be unrealistic. Hence, it may be wise to use a constant coefficient  $\beta (t) = \beta$  and a constant volatility parameter  $\sigma (t) = \sigma$  and then calibrate the model using only the term structure of market interest rates. It is still theoretically possible that the short rate  $r$  may go negative. The risk-neutral probability for the occurrence of such an event is

$$
Q (r (t) <   0) = N \left(- \frac{\tilde {f} (0 , t) + \frac{\sigma^{2}}{2 \beta^{2}} (1 - e^{\beta t})^{2}}{\sqrt{\frac{\sigma^{2}}{2 \beta^{2}} (1 - e^{2 \beta t})}}\right) \tag {13}
$$ where  $\tilde{f}(0, t)$  is the market instantaneous forward rate. In practice, this probability seems to be rather small, as empirical evidence illustrated by Brigo and Mercurio (2007) shows. However, the probability is not zero, and this may bother some analysts.


An example will provide an idea of how a variation of one of the models proposed by Hull and White described above by the first of (12) models can be used to price an option on a zero-coupon bond. If the assumptions are made that both  $\beta$ , the reversion rate, and  $\sigma$ , volatility, are constant, then the model can be restated as:


$$ d r (t) = [ \alpha (t) - \beta r (t) ] d t + \sigma d W (t) \tag {14}
$$ and the function  $\alpha (t)$  can be calculated from a given term structure using:


$$
\alpha (t) = f_{T} (0, t) + \beta f (0, t) + \frac{\sigma^{2}}{2 \beta} \left(1 - e^{- 2 \beta t}\right) \tag {15}
$$

The future market price of a zero-coupon bond in this framework can be found by defining the reversion rate,  $\beta$ , the volatility, and the time period involved.

$$ p \left(T_{0}, T\right) = A \left(T_{0}, T\right) e^{- B \left(T_{0}, T\right) r \left(T_{0}\right)} \tag {16}
$$ where  $T_{0}$  represents the forward date at which the bond is to be priced,  $T$  represents the bond's maturity date,  $t$  is a time period index typically taken to be equal to zero (that is, representing the current point in time)


$$
B \left(T_{0}, T\right) = \frac{1}{\beta} \left(1 - e^{- \beta \left(T - T_{0}\right)}\right) \tag {17}
$$

$$
\begin{array}{l} \ln A \left(T_{0}, T\right) = \ln \left(\frac{p (t , T)}{p (t , T_{0})}\right) \\ - B \left(T_{0}, T\right) \frac{\partial \ln p (t , T_{0})}{\partial T} \\ - \frac{1}{4 \beta^{3}} \sigma^{2} \left(e^{- \beta (T - t)} - e^{- \beta (T_{0} - t)}\right)^{2} \\ \times \left(e^{2 \beta \left(T_{0} - t\right)} - 1\right) \tag {18} \\ \end{array}
$$ and  $r(T)$  is the prevailing short rate at the forward date.


To illustrate how this works consider the case where we wish to find the 1-year forward price of a bond with 4 years remaining to maturity. Assume that the yield curve offers  $4.00\%$  continuously compounded for all maturities, volatility is  $2.00\%$ , and the reversion rate is 0.1. In this example  $T$  is 4 and  $T_{0}$  is 1. The price of the bond can be found using  $p(1,4) = A(1,4)e^{-B(1,4)(0.04)}$ . Clearly,  $A(1,4)$  and  $B(1,4)$ must be evaluated. Starting with  $B(1,4)$  we have  $B(1,4) = \frac{1}{0.1} \left( 1 - e^{-0.1(4 - 1)} \right) = 2.5918$ .


The next step requires the evaluation of  $A(1,4)$  and the expression for  $\ln A(1,4)$  can be broken down into a series of relatively straightforward calculations:

$$
\begin{array}{l} \ln \left(\frac{p (t , T)}{p (t , T_{0})}\right) = \ln \left(\frac{p (0 , 4)}{p (0 , 1)}\right) = \ln \left(\frac{e^{- (4) (0 . 0 4)}}{e^{- (1) (0 . 0 4)}}\right) \\ = \ln \left(\frac{0 . 8 5 2 1}{0 . 9 6 0 7}\right) = - 0. 1 2 \\ \end{array}
$$

$B(1,4)$  has already been calculated and is equal to 2.5918. Moreover,  $\frac{\partial\ln p(t,T_0)}{\partial T_0}$  can be approximated by  $\left(\frac{\ln p(t,T_0 + \Delta t) - \ln p(t,T_0 - \Delta t)}{2\Delta t}\right)$  which, if a time interval,  $\Delta t$  , is assumed to be 0.1 years yields  $\left(\frac{\ln p(0,1 + 0.1) - \ln p(0,1 - 0.1)}{2(0.1)}\right) = -0.04$  This leaves the expression:

$$
\begin{array}{l} \frac{1}{4 \beta^{3}} \sigma^{2} \left(e^{- \beta (T - t)} - e^{- \beta (T_{0} - t)}\right)^{2} \left(e^{2 \beta (T_{0} - t)} - 1\right) \\ = \frac{1}{4 (0 . 1)^{3}} 0. 0 2^{2} \left(e^{- (0. 1) (4)} - e^{- (0. 1) (1)}\right)^{2} \\ \times \left(e^{2 (0. 1) (1)} - 1\right) = 0. 0 0 1 2 1 7 \\ \end{array}
$$

Combining all the above calculations we find  $\ln A(1,4) = -0.01754$  and then the one-year forward bond price is  $p(1,4) = e^{-0.01754}e^{-2.5918\ldots (0.04)} = 0.8858.$

The Black-Karasinski (BK) model (Black and Karasinski, 1991) is

$$ d r (t) = r (t) [ \alpha (t) - \beta (t) \ln r (t) ] d t + \sigma (t) r (t) d W (t) \tag {19}
$$

The BDT, HW, and BK models extended the Ho-Lee model to match a term structure volatility curve (e.g., the cap prices) in addition to the term structure. The BK model is a generalization of the BDT model, and it overcomes the problem of negative interest rates, assuming that the short rate  $r$  is the exponential of an OU process having time-dependent coefficients. It is popular with practitioners because it fits well the swaption volatility surface. Nevertheless, it does not have closed formulae for bonds or options on bonds.

The Sandmann-Sondermann model (Sandmann and Sondermann, 1993) is

$$
\begin{array}{l} r (t) = \ln (1 + \eta (t)) \tag {20} \\ d \eta (t) = \eta (t) (\alpha (t) d t + \sigma (t) d W (t)) \\ \end{array}
$$

The Dothan model, BKi model, and the exponential Vasicek model given below imply that  $r$  is lognormally distributed. While this finding may seem reasonable, it is the cause for the explosion of the bank account; that is, from a single unit of money, one may be able to make in an infinitesimal interval of time an infinite amount of money. The Sandmann-Sondermann model overcomes this problem by modeling the short rates as above.

The Chen model (Chen, 1995) is

$$
\begin{array}{l} d r (t) = (\alpha (t) - r (t)) d t + (\sigma (t) r (t))^{1 / 2} d W^{1} (t) \\ d \alpha (t) = (\alpha - \alpha (t)) d t + (\alpha (t))^{1 / 2} d W^{2} (t) \\ d \sigma (t) = (\gamma - \sigma (t)) d t + (\sigma (t))^{1 / 2} d W^{3} (t) \tag {21} \\ \end{array}
$$ where  $\alpha, \gamma$  are constants and  $W^1, W^2$ , and  $W^3$  are independent Wiener processes. This is an example of a three-factor model.


The Schmidt model (Schmidt, 1997) is

$$ r (t) = H [ f (t) + g (t) W (T (t)) ] \tag {22}
$$ where  $T = T(t)$  and  $H = H(x)$  are continuous nonnegative strictly increasing functions of  $t \geq 0$  and real  $x$ , while  $f = f(t)$  and  $g = g(t) > 0$  are continuous functions.


The exponential Vasicek model is

$$ d r (t) = r (t) [ \eta - a \ln r (t) ] d t + \sigma r (t) d W (t) \tag {23}
$$

This model is similar to the Dothan model, being a lognormal short-rate model. This model does not lead to explicit formulae for pure discount bonds or for options contingent on them. In addition, this is an example of a nonaffine term-structure model.

The Mercurio-Moraleda model (Mercurio and Moraleda, 2000) is

$$
\begin{array}{l} d r (t) = r (t) \left[ \eta (t) - \left(\lambda - \frac{\gamma}{1 + \gamma t}\right) \ln r (t) \right] d t \\ + \sigma r (t) d W (t) \tag {24} \\ \end{array}
$$

The CIR++ model (Brigo and Mercurio, 2007) is

$$ r (t) = x (t) + \varphi (t)
$$

$$ d x (t) = k [ \theta - x (t) ] d t + \sigma \sqrt{x (t)} d W (t)
$$

The extended exponential Vasicek model (Brigo and Mercurio, 2007) is

$$ r (t) = x (t) + \varphi (t)
$$

$$ d x (t) = x (t) [ \eta - \lambda \ln x (t) ] d t + \sigma x (t) d W (t)
$$

(26)

Two-factor models were based on a second source of random shocks. Two-factor models were developed by Brennan and Schwartz (1982), Fong and Vasicek (1992), and Longstaff and Schwartz (1992a). However, Hogan (1993) proved that the solution to the Brennan and Schwartz model explodes, that is, reaches infinity in a finite amount of time with positive probability. This shows that adding more factors may cause unseen problems. More complex multifactor models are described by Rebonato (1998) and by Brigo and Mercurio (1997).

Therefore, the short-rate models lead to two main problems. Mean-reverting models such as Vasicek or Hull and White may produce negative interest rates. From a computational perspective, if the risk-neutral probability of producing such negative rates is negligible, then those scenarios can simply be ignored in a Monte Carlo setup. The so-called lognormal models ensure nonnegativity of interest rates but may become explosive due to the change of scale in the short-rate modeling. Multifactor short-rate models become rapidly computationally infeasible, and they may produce volatility surfaces that do not match those observed in the markets.

The problems signaled above for the short-rate models led to the development of new classes of models, more notably the LIBOR market models or BGM developed by Brace, Gatarek, and Musiela (1997); Jamshidian (1997); and Musiela and Rutkowski (1997). This model starts with a geometric Brownian motion for the forward LIBOR rate  $L_{i}(t) \coloneqq L(t; T_{i}, T_{i+1})$ , where  $0 = T_0 < T_1 < \dots < T_n$  to acquire positivity of rates


$$ d L_{i} (t) = \mu_{i}^{Q} (t) L_{i} (t) d t + \sigma_{i} (t) L_{i} (t) d W_{i}^{Q} (t) \tag {27}
$$ where  $Q$  is the martingale measure corresponding to the numeraire  $N(t) = p(t,T_n)$ , also called the terminal measure because the numeraire is the price of the bond with the last tenor. Now  $\prod_{k = i}^{n - 1}(1 + (T_{k + 1} - T_k)L_k(t)) = \frac{p(t,T_i)}{p(t,T_n)}$  is the numeraire rebased price of a traded asset, the zero-coupon bond with maturity  $T_{i}$ . Hence, it should be a martingale and its drift must be zero. Calculating the drift with Ito calculus for all consecutive indexes  $i,i + 1$  allows the drift determination


$$
\mu_{i}^{Q} (t) = \sum_{\substack {k \geq i + 1 \\ k \leq n}} \frac{(T_{k + 1} - T_{k}) L_{k} (t)}{\left[ 1 + \left(T_{k + 1} - T_{k}\right) L_{k} (t) \right]} \sigma_{i} (t) \sigma_{k} (t) \rho_{i, k} (t) \tag{28}
$$ for all  $i \in \{0, \dots, n - 1\}$ .


Other numeraires are also feasible but lead to a different style of calibration. The pricing of interest rate derivatives is realized with Monte Carlo simulation.

The quest for ensuring positiveness of the short rates motivated the development of a new class sometimes called Markov functional models. Important contributions in this area are Flesaker and Hughston (1996), Rogers (1997), and Rutkowski (1997), although some seminal ideas are also contained in Constantinides (1992). In a nutshell, given a strictly positive diffusion process  $\{D(t)\}_{t\geq 0}$  adapted to the filtration of the probability space, the term-structure model described by  $p(t,T) = \frac{E_t^P[D(T)]}{D(t)}$  is arbitrage free, and if the diffusion process is also a supermartingale, then the short-rate process  $\{r(t)\}_{t\geq 0}$  is positive with probability  $P$  one.

# MODELING IN PRACTICE

One popular way of turning theory into practice is to use a tree approach to modeling. The

Table 1 Market Spot and Forward Rates

<table><tr><td>Time (Months)</td><td>Implied Spot Zero Rates</td><td>Implied Forward Rates</td></tr><tr><td>6</td><td>5.0000\%</td><td>5.0000\%</td></tr><tr><td>12</td><td>5.1266\%</td><td>5.2533\%</td></tr><tr><td>18</td><td>5.2544\%</td><td>5.5103\%</td></tr><tr><td>24</td><td>5.3835\%</td><td>5.7714\%</td></tr><tr><td>30</td><td>5.5141\%</td><td>6.0371\%</td></tr><tr><td>36</td><td>5.6462\%</td><td>6.3080\%</td></tr></table> tree can be either binomial or trinomial in its construction. To illustrate the idea, consider first the binomial approach. The tree could be set up to reflect observed or estimated market short rates, and the data provided in Table 1 will help to demonstrate this idea.


The process starts from the first six-month period where the rate is known to be  $5.000\%$ . At the end of the six-month period, the following six-month forward rates are treated as being the short rates and are split, allowing interest rates to rise with a probability of 0.5 or fall with a probability of 0.5, but also taking into account the short-rate volatility. For a description of how this is achieved, see Eales (2000). Figure 1 shows how the rates would appear in a binomial tree once the procedure has been performed.

When the rates have been established, they must then be calibrated. The calibration procedure is achieved using the observed market price of a bullet government bond and pricing the bond using the "tree" calculated rates to obtain the appropriate discount fac tors. Consider a three-year-to-maturity government bond trading at par and offering a coupon of  $5.625\%$  paid semiannually as an example. On maturity, the bond will be redeemed for 102.8125, which is made up of the bond's face value, say 100, and one half of the annual coupon, 2.8125.


Figure 2 illustrates how, moving back through the tree, the discounting process of the terminal payment taken together with the discounted interim coupons generate a bond price of 100.013. Given that the observed bond price is 100, the rates in the tree will need to be adjusted to ensure that the backward calculated price agrees with the market price of the bond. In this example the adjustment factor is 0.6 basis points, and this will be added to every node in the tree with the exception of the starting value. The resulting rates will then be as displayed in Figure 3.

The calibrated tree can now be used to calculate corporate bond spreads as well as bond options. The outlined procedure is close to that advanced by Black, Derman, and Toy in that the process fits observed market rates and short-rate volatility. There is, however, a danger that interest rates could go negative in this procedure.

As an alternative to this binomial approach, Hull and White (1994) have suggested a two-stage methodology that uses a mean-reverting process with the short rate as the source of uncertainty and calculated in a trinomial tree framework. The first stage in the approach ignores the observed market rates and centers the evolution of rates around zero and identifies the point at which the mean-reversion process takes effect. The second stage introduces the observed market rates into the framework established in stage one. The trinomial approach gives the tree a great deal more flexibility over its binomial counterpart, not least in relaxing the assumption that rates can either rise or fall with probability 0.5.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/ee60d526d9a817ae31de6f382e6f66c76c13b3ac827bb1fa0e4d0761b2e2a939.jpg)
Figure 1 Term Structure Evolution: Binomial Tree

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/a225feb4404c7837f10f9ca5e7a515cbf78f4ab8bfa349a286426694b6767f24.jpg)
Figure 2 Calibration

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/06f6c17fbf86ba4644b3f2461417c6857badf8de1b96d8358f926038c8296850.jpg)
Figure 3 Adjusted Tree to Coincide with Current Market Price


# HJM METHODOLOGY

Heath, Jarrow, and Morton (1990a, 1990b, 1992) derived both one-factor and multifactor models for movements of the forward rates of interest. The models were complex enough to match the current observable term structure of forward rate and by equivalence the spot rates. Ritchken and Sankarasubramanian (1995) provide necessary and sufficient conditions for the HJM models with one source of error and two state variables such that the ex post forward premium and the integrated variance factor are sufficient statistics for the construction of the entire term structure at any future point in time.


Under this methodology, the bond dynamics are described by an Ito process:

$$ d p (t, T) = r (t) p (t, T) d t + \sigma (t, T) p (t, T) d W (t) \tag {29}
$$

Then

$$ d \ln p (t, T) = \left[ r (t) - \frac{1}{2} \sigma^{2} (t, T) \right] d t + \sigma (t, T) d W (t) \tag {30}
$$

The equation for the forward rate can be derived now:

$$
\begin{array}{l} d f (t, T) = - d \left(\frac{\partial}{\partial T} \ln p (t, T)\right) = - \left(\frac{\partial}{\partial T} d \ln p (t, T)\right) \\ = - \frac{\partial}{\partial \mathrm{T}} \left\{\left[ r (t) - \frac{1}{2} \sigma^{2} (t, T) \right] d t + \sigma (t, T) d W (t) \right\} \\ = \sigma (\mathrm{t}, \mathrm{T}) \frac{\partial \sigma (\mathrm{t} , \mathrm{T})}{\partial \mathrm{T}} d t - \frac{\partial \sigma (t , T)}{\partial T} d W (t) \tag {31} \\ \end{array}
$$

The Wiener process  $W = \{W(t)\}$  is symmetric, and therefore we can safely replace  $W$  with  $-W$ , so

$$ d f (t, T) = \sigma (\mathrm{t}, \mathrm{T}) \frac{\partial \sigma (\mathrm{t} , \mathrm{T})}{\partial \mathrm{T}} d t + \frac{\partial \sigma (t , T)}{\partial T} d W (t) \tag {32}
$$

Applying the fundamental theorem of calculus for  $\partial \sigma (t,T) / \partial T$  leads to

$$
\sigma (t, T) - \sigma (t, t) = \int_{t}^{T} \frac{\partial \sigma (t , s)}{\partial s} d s \tag {33}
$$

It is obvious that  $\sigma (t,t) = 0$  and therefore the volatility of the forward rate determines the drift as well. In other words, all that is needed for the HJM methodology is the volatility of the bond prices. The short rates are easily calculated from the forward rates. Once a model for short rates is determined under the risk-neutral measure  $Q$ , the bond prices are calculated from

$$ p (t, T) = E^{Q} \left[ e^{- \int_{t}^{T} r (s) d s} \mid F_{t} \right] \tag {34}
$$

Using (3) it follows that  $\int_t^T f(t,s)ds = -\ln p(t,T) = g(r(t),t,T)$  where

$$ g (x, t, T) = - \ln E^{Q} \left[ e^{- \int_{t}^{T} r (s) d s} | r (t) = x \right] \tag {35}
$$

The continuous variant of the Ho-Lee model can be obtained for

$$
\begin{array}{l} g (x, t, T) = x (T - t) - \frac{1}{6} \sigma^{2} (T - t)^{3} \\ + \int_{t}^{T} (T - s) \alpha (s) d s \tag {36} \\ \end{array}
$$ where  $\sigma (t,T) = \sigma (T - t)$ , which implies that  $\frac{\partial f(t,T)}{\partial t} = \sigma^2 (T - t)dt + \sigma dW(t)$  so the initial forward curve is


$$
\begin{array}{l} f (0, T) = \frac{\partial g (r (0) , 0 , T)}{\partial T} = r (0) - \frac{1}{2} \sigma^{2} T^{2} \\ + \int_{0}^{T} \alpha (s) d s \tag {37} \\ \end{array}
$$

The short rate is given by

$$ r (t) = f (0, t) + \sigma^{2} \frac{t^{2}}{2} + \sigma W (t) \tag {38}
$$ and the price of the pure discount bond with maturity  $T$  is


$$
\begin{array}{l} p (t, T) = \exp \left[ - \int_{t}^{T} f (t, s) d s - \sigma^{2} t \right. \\ \left. \int_{t}^{T} \left(s - \frac{t}{2}\right) d s - \sigma (T - t) W (t) \right] \tag {39} \\ \end{array}
$$

Similarly, the Vasicek model is recovered for

$$
\begin{array}{l} \sigma (t, T) = \sigma e^{- \beta (T - t)} \text{an d} f (0, T) \\ = \frac{\alpha}{\beta} + e^{- \beta T} \left(r (0) - \frac{\alpha}{\beta}\right) - \frac{\sigma^{2}}{2 \beta^{2}} \left(1 - e^{- \beta T}\right)^{2} \tag {40} \\ \end{array}
$$ and this leads to


$$ r (t) = \frac{\alpha}{\beta} + e^{- \beta T} \left(r (0) - \frac{\alpha}{\beta}\right) + \sigma e^{- \beta t} \int_{0}^{t} e^{\beta s} d W (s) \tag {41}
$$

# BOND OPTION PRICING

Formulae for bond options were found by Cox, Ingersoll, and Ross using the CIR model (square root process) for short rates and by Jamshidian (1989), Rabinovitch (1989), and Chaplin (1987) using the Vasicek model for the short-rate process. Rabinovitch advocated the idea that the bond follows a lognormal process (similar to equity prices). Chen (1991) pointed out that this assumption is grossly misleading since the bond price is a contingent claim on the same interest rate, so the bond option pricing model cannot be a two-factor model as proposed by Rabinovitch and it rather collapses onto a one-factor model, in which case the formulas are the same with those proved respectively by Chaplin (1987) and by Jamshidian (1989).

Bonds are traded generally over the counter. Futures contracts on bonds may be more liquid and may remove some of the modeling difficulties generated by the known value at maturity of the bonds. Hedging may be more efficient in this context using the futures contracts on pure discount bonds (provided they are liquid) rather than the bonds themselves. Chen (1992) provides closed-form solutions for futures and European futures options on pure discount bonds, under the Vasicek model.

Hull and White used a two-factor version of the Vasicek model to price discount bond options. Turnbull and Milne (1991) proposed a general equilibrium model outside the HJM framework. They provide analytical solutions for European options on Treasury bills, interest rate forward and futures contracts, and Treasury bonds. In addition, a closed formula is identified for a call option written on an interest rate cap. A two-factor model is also investigated, and closed-form solutions are provided for a European call on a Treasury bill. Chen and Scott (1992) use a two-factor CIR model that is essentially the same as the model analyzed by Longstaff and Schwartz (1992), and derive solutions for bond and interest rate options. The two-factor model is used, with the first factor having a strong mean reversion, explaining the variation in short-term rates, while the second factor has a very slow mean reversion, modeling long-term rates. The model is also used for calculating premiums for caps on floating interest rates and for European options on discount bonds, coupon bonds, coupon bond futures, and Eurodollar futures. These are not closed-form solutions, but they are expressed as multivariate integrals. However, the calculus can be reduced to univariate numerical integrations.


# European Options on the Money Fund

In this section we consider the pricing of a European option on the money fund (this is the same as a bank account when the initial value  $B(0) = 1$ ). Thus, the payoff of a European call option with exercise price  $K$  is  $\max [B(T) - K, 0]$ . The continuous version of the Ho-Lee model is assumed for the short interest rate process. The risk-neutral valuation methodology provides the solution as

$$
\begin{array}{l} c_{B (0), T, K} = E^{Q} \left[ e^{- \int_{0}^{T} r (u) d u} \max  [ B (T) - K, 0 ] \right] \\ = B (0) N \left(d_{+}\right) - p (0, T) K N \left(d_{-}\right) \tag {42} \\ \end{array}
$$ where


$$ d_{+} = \frac{\ln \left(\frac{B (0)}{p (0 , T) K}\right) + \sigma^{2} \frac{T^{3}}{6}}{\sigma \sqrt{\frac{T^{3}}{3}}} \text{an d}
$$

$$ d_{-} = \frac{\ln \left(\frac{B (0)}{p (0 , T) K}\right) - \sigma^{2} \frac{T^{3}}{6}}{\sigma \sqrt{\frac{T^{3}}{3}}} = d_{+} - \sigma \sqrt{\frac{T^{3}}{3}}
$$

A proof of this formula is described in Epps (2000) in Section 10.2.2.

# Options on Discount Bonds

Discount bond options are not very liquid, but they form an elementary component for pricing other options. For example, a floating rate cap can be decomposed into a portfolio of European puts on discount bonds. Similarly, with the European option contingent to the bank account, we can price European options contingent on discount bonds.


When the short rate process  $r = \{r(t)\}$  follows the continuous time version of the Ho-Lee model given above by (10), the price at time 0 of a European call option with maturity  $T_{0}$  with exercise price  $K$  on a discount bond maturing at  $T(T_0 < T)$  is

$$
\begin{array}{l} c_{p (0, T); T_{0}; K} = E^{Q} \left[ e^{- \int_{0}^{T} r (u) d u} \max  [ p (T_{0}, T) - K, 0 ] \right] \\ = \mathrm{p} (0, T_{0}) \frac{p (0 , T)}{p (0 , T_{0})} N \left(d_{+}\right) \\ - p \left(0, T_{0}\right) K N \left(d_{-}\right) \tag {43} \\ \end{array}
$$ where


$$
\begin{array}{l} d_{+} = \frac{\ln \left(\frac{p (0 , T)}{p (0 , T_{0}) K}\right) + \sigma^{2} \frac{(T - T_{0}) T_{0}}{2}}{\sigma \sqrt{(T - T_{0}) T_{0}}} \quad \text{an d} \\ d_{-} = d_{+} - \sigma \sqrt{(T - T_{0}) T_{0}} \\ \end{array}
$$

A proof of this result is provided in Epps (2000). There is a similar put-call parity for European options contingent on a discount bond. If  $p_{p(0,T);T_0;K}$  is the price at  $t = 0$  of a European put option on the discount bond with maturity  $T$ , then for  $B(0) = 1$

$$
\begin{array}{l} c_{p (0, T); T_{0}; K} - p_{p (0, T); T_{0}; K} \\ = E^{Q} \left[ e^{- \int_{0}^{T_{0}} r (s) d s} (\max  [ p (T_{0}, T) - K, 0 ] \right. \\ - \max  [ K - p (T_{0}, T), 0) ] \\ = E^{Q} \left[ e^{- \int_{0}^{T_{0}} r (s) d s} \left[ p \left(T_{0}, T\right) - K \right] \right] \\ = E^{Q} \left[ e^{- \int_{0}^{T} r (s) d s} \right] - p (0, T_{0}) K \\ = p (0, T) - p (0, T_{0}) K \\ \end{array}
$$

Put-call parity can be used to derive the price of a European put option:

$$
\begin{array}{l} p_{p (0, T): T_{0}: K} = p (0, T_{0}) K N (- d_{-}) \\ - p \left(0, T_{0}\right) \frac{p (0 , T)}{p \left(0 , T_{0}\right)} N \left(- d_{+}\right) \tag {44} \\ \end{array}
$$

Initially, the first formulas on pricing options on pure discount bonds used the Vasicek model for the term structure of interest rates. Thus, given that  $r$  follows (6), the price of a European call option with maturity  $T_{0}$  with exercise price  $K$  on a discount bond maturing at  $T$ $(T_0 < T)$  is


$$ c_{p (0, T); T_{0}; K} = p (0, T) N \left(d_{+}\right) - K p (0, T_{0}) N \left(d_{-}\right) \tag {45}
$$ where  $d_{+} = \frac{\ln\left(\frac{p(0,T)}{Kp(0,T_{0})}\right) + \eta^{2} / 2}{\eta}$  and  $d_{-} = d_{+} - \eta$  with  $\eta = \frac{\sigma(1 - e^{-\beta(T - T_0)})}{\beta}\sqrt{\frac{1 - e^{-2\beta T_0}}{2\beta}}$


The put price can be obtained from put-call parity as

$$ p_{p (0, T); T_{0}; K} = K p (0, T_{0}) N (- d_{-}) - p (0, T) N (d_{+}) \tag {46}
$$

# Example: Valuing a Zero-Coupon Bond Call Option with the Vasicek Model

Let's consider this model for pricing a 3-year European call option on a 10-year zero-coupon bond with face value  \$1 and exercise price K equal to\$ 0.5. As in Jackson and Staunton (2001), we use for the parameters of this model the values estimated by Chan et al. (1992) for U.S. 1-month Treasury bill yield from 1964 to 1989. Thus,  $\alpha = 0.0154$ ,  $\beta = 0.1779$ , and  $\sigma = 2\%$ . In addition, the value of the short rate  $r$  at time  $t = 0$  is needed, so we take  $r_0 = 3.75\%$ . Feeding this information into the above formulas, we get the output in Table 2. Thus, the value of the European call option is

$$
\begin{array}{l} c_{p (0, T); T_{0}; K} = 0. 5 4 0 6 \times 0. 9 8 2 2 - 0. 5 \times 0. 8 6 5 5 \\ \times 0. 9 7 6 7 \cong 0. 1 0 8 \\ \end{array}
$$

A more general case is discussed by Shiryaev (1999) for single-factor Gaussian models modeling the short interest rate. These are single-factor affine models where the short rate  $r$  is also a Gauss-Markov process. The equation for this short rate process is

$$ d r (t) = [ \alpha (t) - \beta (t) r (t) ] d t + \sigma (t) d W (t) \tag {47}
$$

Table 2 Calculations of Elements for Pricing a European Call Option on a Zero-Coupon Bond When Short Rates Are Following the Vasicek Model

<table><tr><td>p(0,T0)</td><td>p(0,T)</td><td>d+</td><td>d-</td><td>N(d+)</td><td>N(d-)</td></tr><tr><td>0.8655</td><td>0.5406</td><td>2.1013</td><td>1.9926</td><td>0.9822</td><td>0.9767</td></tr></table> and we can easily recognize the first Hull-White model. The price of a European call option is also


$$ c_{p (0, T); T_{0}; K} = p (0, T) N \left(d_{+}\right) - K p (0, T_{0}) N \left(d_{-}\right) \tag {48}
$$ but where


$$
\begin{array}{l} d_{+} = \frac{\ln \left(\frac{p (0 , T)}{K p (0 , T_{0})}\right) + \frac{1}{2} \eta^{2} (T_{0} , T) B^{2} (T_{0} , T)}{\eta (T_{0} , T) B (T_{0} , T)} \quad \text{an d} \\ d_{-} = d_{+} - \eta \\ \end{array}
$$ with


$$
B (T_{0}, T) = \int_{T_{0}}^{T} \frac{\varphi (s)}{\varphi (T_{0})} d s \quad \text{an d} \quad \varphi (s) = e^{- \int_{0}^{s} \beta (u) d u}
$$

The price of the European put option is obviously again  $p_{p(0,T);T_0;K} = Kp(0,T_0)N(-d_-) - p(0,T)N(d_+)$ .

# Example: Valuing a Zero-Coupon Bond Call Option with the Hull-White Model

When considering the pricing of a forward pure discount bond earlier in this entry, we used a numerical example. That example can now be expanded to demonstrate how, in practice, European calls and puts can be estimated in a Hull-White framework. Explicitly, the illustration will demonstrate the pricing of a one-year European call option on a four-year-to-maturity discount bond with a strike price set equal to the forward price of the bond (0.8858...).

Breaking down  $(d_{+})$  into its component parts and evaluating each individually yields:

$$
\begin{array}{l} \ln \left(\frac{p (0 , T)}{K (p (0 , T_{0}))}\right) = \ln \left(\frac{0 . 8 5 2 1}{(0 . 8 8 5 8) (0 . 9 6 0 7)}\right) \\ = 0, \quad B (T_{0}, T) = 2. 5 9 1 8 \\ \end{array}
$$

$$
\begin{array}{l} \eta = \frac{\sigma (1 - e^{- \beta (T - T_{0})})}{\beta} \sqrt{\frac{1 - e^{- 2 \beta T_{0}}}{2 \beta}} \\ = \frac{0 . 0 2 (1 - e^{- 0 . 1 (3)})}{0 . 1} \sqrt{\frac{1 - e^{- 2 (0 . 1) (1)}}{2 (0 . 1)}} = 0. 0 4 9 3 \\ \end{array}
$$

The expression for  $(d_{+})$  reduces to

$$
\frac{\eta (T_{0} , T) B (T_{0} , T)}{2} = \frac{(0 . 0 4 9 3) (2 . 5 9 1 8)}{2} = 0. 6 3 9 5
$$

The expression for  $d_{-}$  is  $(d_{-}) = (d_{+}) - \eta = 0.6395 - 0.0493 = 0.0146$ .  $N(d_{+})$  is found to be 0.5255 and  $N(d_{-}) = 0.5058$ . Substituting these results into the call option formula gives a premium of


$$
\begin{array}{l} c_{P (0, T); T_{0}; K} = (0. 8 5 2 1) (0. 5 2 5 5) \\ - (0. 8 8 5 8) (0. 9 6 0 8) (0. 5 0 5 8) \\ = 0. 0 1 7 3 0 \\ \end{array}
$$ or  $1.73\%$ .


One notable exception from this general class is the CIR model. There is a closed formula for this case, too. Following Clewlow and Strickland (1998), the price at time 0 of a European pure discount bond option is

$$
\begin{array}{l} c_{p (0, T); T_{0}; K} = p (0, T) \chi^{2} \left(2 \delta [ \phi + \psi + B (T_{0}, T) ]; 2 \omega , \right. \\ \left. \frac{2 \phi^{2} r (0) e^{\theta T_{0}}}{\phi + \psi + B (T_{0} , T)}\right) \\ - K p (0, T_{0}) \chi^{2} \left(2 \delta [ \phi + \psi ]; 2 \omega , \frac{2 \phi^{2} r (0) e^{\theta T_{0}}}{\phi + \psi}\right) \tag {49} \\ \end{array}
$$ where


$$
\theta = \sqrt{\beta^{2} + 2 \sigma^{2}}, \quad \phi = \frac{2 \theta}{\sigma^{2} (e^{- \theta T} - 1)},
$$

$$
\psi = \frac{\beta + \theta}{\sigma^{2}}, \quad \lambda = \frac{\beta + \theta}{2}, \quad \omega = \frac{2 \beta}{\sigma^{2}},
$$

$$
B (t, s) = \left(\frac{e^{\theta (s - t)} - 1}{\lambda (e^{\theta (s - t)} - 1) + \theta}\right),
$$

$$
\delta = \frac{\omega (\lambda T + \ln \theta - \ln [ \lambda (e^{\theta T} - 1) + \theta ]) - \ln (K)}{B (T_{0} , T)}
$$ and  $\chi^2 (.;a,b)$  is the noncentral chi-squared density with  $a$  degrees of freedom and noncentrality parameter  $b$ .


# Example: Valuing a Zero-Coupon Bond Call Option with the CIR Model

Let's consider the same problem as described in the example using the Vasicek model above and price the 3-year European call option on a 10-year pure discount bond using the CIR model for the short interest rates. Recall that face value is  \$1 and exercise price K is equal to\$ 0.5. As in the example with the Vasicek model, we consider that  $\sigma = 2\%$  and  $r_0 = 3.75\%$ . The CIR model overcomes the problem of negative interest rates known for the Vasicek model as long as  $2\alpha \geq \sigma^2$ . This is true, for example, if we take  $\alpha = 0.0189$  and  $\beta = 0.24$ . Feeding this information into the above formulas is relatively tedious. A spreadsheet application is provided by Jackson and Staunton. After some work, we get that the price of the call is


$$
\begin{array}{l} c_{p (0, T); T_{0}; K} = 0. 5 3 2 4 \times 1 - 0. 5 \times 0. 8 6 2 4 \\ \times 1 \cong 0. 1 0 1 2 \\ \end{array}
$$

# Options on Coupon-Paying Bonds

When short rates are modeled with single-factor models, Jamshidian (1989) proved that an option on a coupon bond can be priced by valuing a portfolio of options on discount bonds. This approach does not work in multifactor models as proved by El Karoui and Rochet (1995).

Consider a bond paying a periodic cash payment  $\rho$  at times  $T_{1}, T_{2}, \ldots, T_{m}$ , and the principal at maturity  $T = T_{m}$ . A coupon bond can be mapped into a portfolio of discount bonds with corresponding maturities (under one source of uncertainty, that is, one factor model). The value of a coupon-bearing bond at time  $t < T_{m}$  is

$$ p \left(t, T_{1}, \dots , T_{m}; \rho\right) = \rho \sum_{i = i [ t ]}^{m} p \left(t, T_{i}\right) + p \left(t, T_{m}\right) \tag {50}
$$ where  $i[t] = \min \{j : t < T_j\}$ .


Under the one-factor HJM model corresponding to the Ho-Lee model, a European option on a coupon bond can be valued as a portfolio of options contingent on zero discount bonds with maturities  $T_{1}, T_{2}, \ldots, T_{m}$ . Let  $T_{0}$  be the maturity of such a European option.

Epps (2000) shows that

$$ p \left(T_{0}, T_{i}\right) = \frac{p \left(0 , T_{i}\right)}{p \left(0 , T_{0}\right)} e^{\left[ - \sigma^{2} \frac{\left(T_{i} - T_{0}\right)^{2} T_{0}}{2} - \left(T_{i} - T_{0}\right) \left(r \left(T_{0}\right) - f \left(0, T_{0}\right)\right) \right]} \tag {51}
$$

For any strike price  $K$ , there is a value  $r_K$  of  $r(T_0)$  such that when replaced in (48) with  $t = T_0$ , implies  $p(T_0, T_1, \ldots, T_m) = K$ . Let's de

note by  $K_{i}$  the value of  $p(T_0,T_i)$  as calculated from (49) with  $r_K$  instead of  $r(T_0)$ . Then

$$
\rho \sum_{i = i [ T_{0} ]}^{m} K_{i} + K_{m} = K \tag {52}
$$

Hence, the value at time 0 of a European call option with maturity  $T_{0}$  and strike price  $K$  on the coupon-bearing bond, under the one-factor HJM model described above, is given by

$$
\begin{array}{l} \begin{array}{l} c_{p (0, T_{1}, \dots , T_{m}; \rho)} = E^{Q} \left\{e^{- \int_{0}^{T_{0}} r (s) d s} \max  [ p (T_{0}, T_{1}, \dots , T_{m}; \rho) \right. \\ \left. - K, 0 ] \right\} \end{array} \\ = \rho \sum_{i = i [ T_{0} ]}^{K} E^{Q} \left\{e^{- \int_{0}^{T_{0}} r (s) d s} \max  \left[ p \left(T_{0}, T_{i}\right) - K_{i}, 0 \right] \right\} \\ + E^{Q} \left\{e^{- J_{0}^{T_{0}} r (s) d s} \max  [ p (T_{0}, T_{m}) - K_{m}, 0 ] \right\} \\ = \rho \sum_{i = i [ T_{0} ]}^{m} c_{p (0, T_{i}); T_{0}, K_{i}} + c_{p (0, T_{m}), T_{0}; K_{m}} \tag {53} \\ \end{array}
$$

# Example: Valuing a Coupon-Bond Call Option with the Vasicek Model

The above example is reconsidered using the Vasicek model for the short-term interest rates. The bond is no longer a zero-bond but now pays an annual coupon at a  $5\%$  rate  $(\rho = 0.05)$ , all the other characteristics being the same as before. In order to calculate the European call option price on the coupon bond, we need to calculate the interest rate  $r_{K}$  such that the present value at the maturity of the option of all later cash flows on the bond equals the strike price. This is done by trial and error using (48), and the value we get here is  $r_{K} = 22.30\%$ . Next, we map the strike price into a series of strike prices via (50) that are then associated with coupon payments considered as zero-coupon bonds and calculate the value of the European call options contingent on those zero-coupon bonds as in the preceding example. The calculations are described in Table 3.

Because we started with a one-factor model for the short interest rates, we can use the decomposition property emphasized by Jamshidian (1997) and calculate the required coupon-bond European call price as the sum

Table 3 Calculations Using the Vasicek Model for Separate Zero-Coupon European Call Options (bond prices shown are calculated with the estimated  $r_{K}$ )

<table><tr><td>Year</td><td>p(T0,Ti) | rK</td><td>Face Value</td><td>ρKi</td><td>Call Option</td></tr><tr><td>4.0</td><td>0.8094</td><td>0.05</td><td>0.0405</td><td>0.006</td></tr><tr><td>5.0</td><td>0.6688</td><td>0.05</td><td>0.0334</td><td>0.009</td></tr><tr><td>6.0</td><td>0.5624</td><td>0.05</td><td>0.0281</td><td>0.012</td></tr><tr><td>7.0</td><td>0.4800</td><td>0.05</td><td>0.0240</td><td>0.013</td></tr><tr><td>8.0</td><td>0.4148</td><td>0.05</td><td>0.0207</td><td>0.013</td></tr><tr><td>9.0</td><td>0.3622</td><td>0.05</td><td>0.0181</td><td>0.013</td></tr><tr><td>10.0</td><td>0.3192</td><td>1.05</td><td>0.3351</td><td>0.278</td></tr></table> of all the elements in the last column in Table 3, which includes the coupon rate factor  $\rho$ . Thus, the value of this option is 0.344.


# Example: Valuing a Coupon-Bond Call Option with the CIR Model

We repeat the calculation of the coupon-bond call option when the CIR model is employed for the short rates. The procedure is the same as in the case discussed previously for the Vasicek model. First, we calculate the interest rate  $r_{K}$  such that the present value at the maturity of the option of all later cash flows on the bond equals the strike price. This value is here  $r_{K} = 25.05\%$ . Next, we map the strike price into a series of strike prices via (50) that are then associated with coupon payments considered as zero-coupon bonds and calculate the value of the European call options contingent to those zero-coupon bonds. The calculations are described in Table 4.

Table 4 Calculations Using the CIR Model for Separate Zero-Coupon European Call Options (bond prices shown are calculated with the estimated  $r_K$ )

<table><tr><td>Year</td><td>p(T0,Ti) | rK</td><td>Face Value</td><td>ρKi</td><td>Call Option</td></tr><tr><td>4.0</td><td>0.7934</td><td>0.05</td><td>0.0397</td><td>0.006</td></tr><tr><td>5.0</td><td>0.6503</td><td>0.05</td><td>0.0325</td><td>0.010</td></tr><tr><td>6.0</td><td>0.5470</td><td>0.05</td><td>0.0273</td><td>0.012</td></tr><tr><td>7.0</td><td>0.4694</td><td>0.05</td><td>0.0235</td><td>0.013</td></tr><tr><td>8.0</td><td>0.4094</td><td>0.05</td><td>0.0205</td><td>0.013</td></tr><tr><td>9.0</td><td>0.3615</td><td>0.05</td><td>0.0181</td><td>0.013</td></tr><tr><td>10.0</td><td>0.3223</td><td>1.05</td><td>0.3385</td><td>0.267</td></tr></table>

The value of the call option is 0.334, that is, the sum of all zero-coupon bond call option prices in the last column.

# Pricing Swaptions

Swaptions options allow the buyer to obtain at a future time one position in a swap contract. It is elementary that an interest rate swap, fixed for floating, can be understood as a portfolio of bonds. Let's consider here that the notional principal is 1. Then the claim on the fixed payments is the same as a bond paying coupons with the rate  $\rho$  and no principal. Let  $\tau$  be the time when the swap is conceived. The claim on the fixed income stream is worth, at time  $\tau$ ,  $\rho \sum_{i=1}^{m} p(\tau, T_i)$ . The floating income stream is made up of cash returns on holding, over the period  $[T_{i-1}, T_i]$  a discount bond with maturity  $T_i$ , which is worth  $\frac{p(T_i, T_i)}{p(T_{i-1}, T_i)} - 1$ . Thus, the value of the whole floating stream at time  $t = \tau$  is

$$
\begin{array}{l} E_{\tau} \left(\sum_{i = 1}^{m} e^{- \int_{\tau}^{T_{i}} r (s) d s} \frac{1 - p \left(T_{i - 1} , T_{i}\right)}{p \left(T_{i - 1} , T_{i}\right)}\right) \\ = E_{\tau} \left(\sum_{i = 1}^{m} e^{- \int_{\tau}^{T_{i - 1}} r (s) d s} e^{- \int_{T_{i - 1}}^{T_{i}} r (s) d s} \frac{1 - p \left(T_{i - 1} , T_{i}\right)}{p \left(T_{i - 1} , T_{i}\right)}\right) \tag {54} \\ \end{array}
$$

Applying the properties of conditional expectations it follows that the above is equal to

$$
\begin{array}{l} E_{\tau} \left\{\sum_{i = 1}^{m} e^{- \int_{\tau}^{T_{i} - 1} r (s) d s} \left(E_{T_{i - 1}} e^{- \int_{T_{i} - 1}^{T_{i}} r (s) d s} \left[ \frac{1 - p \left(T_{i - 1} , T_{i}\right)}{p \left(T_{i - 1} , T_{i}\right)} \right]\right) \right\} \\ = E_{\tau} \left\{\sum_{i = 1}^{m} e^{- \int_{\tau}^{T_{i} - 1} r (s) d s} (1 - p (T_{i - 1}, T_{i})) \right\} \\ = \sum_{i = 1}^{m} [ p (\tau , T_{i - 1}) - p (\tau , T_{i}) ] = 1 - p (\tau , T_{m}) \tag {55} \\ \end{array}
$$

Imposing the condition that the two streams have equal initial value leads to

$$
\rho \sum_{i = 1}^{m} p (\tau , T_{i}) = 1 - p (\tau , T_{m})
$$ which is equivalent to


$$
\rho \sum_{i = 1}^{m} p (\tau , T_{i}) + p (\tau , T_{m}) - 1 = 0
$$

It follows then that the value of the swap at initialization is  $p(\tau, T_1, \ldots, T_m) - 1$ . Thus, the option to get a long position in the fixed leg of the swap, with a fixed payment rate  $\rho$ , is worth at time 0

$$
E_{0}^{Q} \left\{e^{- \int_{0}^{\tau} r (s) d s} \max  [ p (\tau , T_{1}, \dots , T_{m}) - 1, 0 ] \right\} \tag {56}
$$

It is clear now that this is the same as a European call option on a coupon-bearing bond when the exercise price is equal to 1.

# PRACTICAL CONSIDERATIONS

As mentioned in the introduction, the 10-year U.S. Treasury note option traded on the CME is an extremely popular contract offering tight bid/ask spreads and transparent price quotes.

The Eurodollar futures option traded on the CME is the most actively traded short-term interest rate option in the world. If the option contracts are exercised, the buyer and the seller of the option take positions in the Eurodollar futures contract, which is cash-settled, and the final price at delivery is equal to 100 minus the three-month US dollar LIBOR.

Another liquid interest rate derivative market is the OTC in floating rate caps. The majority of caps are contingent on LIBOR (but can be also on a Treasury rate), and discounted payments are made at the beginning of each tenor. The payments can be made either at the beginning or the end of each reset period, and the life of a cap may be only a few years or as long as 10 years. The starting point in pricing these European options is a model for future changes in US dollar LIBOR.

Hull and White (1990) showed that the cap can be priced as a portfolio of European puts on discount bonds.

# KEY POINTS

- One-factor short-rate models for interest rate derivatives are easy to work with since the majority of them lead to closed-form solutions for options pricing. However, some of them allow for negative interest rates, which may not be acceptable in a real trading environment.
- Two-factor models for interest rates provide improved calibration at the expense of computational simplicity.
- The two-factor Hull and White model, falling under the general Heath-Jarrow-Morton framework, is complex enough to calibrate market data easily while retaining computational simplicity through closed-form solutions for a wide range of interest rate derivatives.
- The need for improved calibration of forward curves led to the development of a different class of models called LIBOR models.
- The calibration of caps and floors, and also swaptions, is indicative of the success of an interest rate model.

# REFERENCES

Black, F., Derman, E., and Toy, W. (1990). A one-factor model of interest rate and its application to Treasury bond options. *Financial Analysts Journal* 46: 33-39.
Black, F., and Karasinski, P. (1991). Bond and option pricing when short rates are lognormal. Financial Analysts Journal 47: 52-59.
Brennan, M. J., and Schwartz, E. (1979). A continuous time approach to the pricing of bonds. Journal of Banking and Finance 3: 133-155.
Brace, A., Gatarek, D., and Musiela, M. (1997). The market model of interest rate dynamics. Mathematical Finance 7: 127-155.
Brennan, M. J., and Schwartz, E. (1982). An equilibrium model of bond prices and a test of market efficiency. Journal of Financial and Quantitative Analysis 17: 301-329.
Brigo, D., and Mercurio, F. (2007). Interest Rate Models: Theory and Practice, 2nd edition. Berlin: Springer.

Campbell, J. (1986). A defense of traditional hypotheses about the term structure of interest rates. Journal of Finance 41, 1: 183-194.
Chen, L. (1995). A three-factor model of the term structure of interest rates. Preprint, Federal Reserve Board, Washington, July.
Chen, R. R. (1991). Pricing stock and bond options when the default-free rate is stochastic: A comment. Journal of Financial and Quantitative Analysis 26, 3: 433-434.
Chen, R. R. (1992). Exact solutions for futures and European futures options on pure discount bonds. Journal of Financial and Quantitative Analysis 27, 1: 97-107.
Chen, R. R., and Scott, L. (1992). Pricing interest rate options in a two-factor Cox-Ingersoll-Ross model of the term structure. Review of Financial Studies 5, 4: 613-636.
Chaplin, G. (1987). A formula for bond option values under an Ornstein-Uhlenbeck model for the spot. Actuarial Science working paper No. 87-16, University of Waterloo.
Clewlow, L., and Strickland, C. (1998). Implementing Derivatives Models. Chichester, UK: John Wiley & Sons.
Constantinides, G. M. (1992). A theory of the nominal term structure of interest rates. Review of Financial Studies 5, 4: 531-552.
Courtadon, G. (1982). The pricing of default-free bonds. Journal of Financial and Quantitative Analysis 17: 75-100.
Cox, J. C., Ingersoll, J. E., and Ross, S. A. (1980). An analysis of variable rate loan contracts. Journal of Finance 35: 389-403.
Cox, J. C., Ingersoll, J. E., and Ross, S. A. (1985). A theory of the term structure of interest rates. Econometrica 53, 2: 385-407.
Dothan, M. U. (1978). On the term structure of interest rates. Journal of Financial Economics 6: 9-69.
Eales, B. A. (2000). Financial Engineering. New York: Palgrave Macmillan.
Epps, T. W. (2000). Pricing Derivative Securities. Singapore: World Scientific.
El Karoui, N., and Rochet, J. C. (1995). A price formula for options on coupon bonds. SEEDS Discussion Series, Instituto de Economica Publica, Spain.
Flesaker, B., and Hughston, L. P. (1996). Positive interest. Risk 9, 1: 115-124.
Fong, H. G., and Vasicek, O. A. (1992). Interest rate volatility and a stochastic factor. Working paper, Gifford Fong Associates.

Heath, D., Jarrow, R., and Morton, A. (1990a). Bond pricing and the term structure of interest rates: A discrete time approximation. Journal of Financial and Quantitative Analysis 25: 419-440.
Heath, D., Jarrow, R., and Morton, A. (1990b). Contingent claim valuation with a random evolution of interest rates. Review of Futures Markets 9:54-76.
Heath, D., Jarrow, R., and Morton, A. (1992). Bond pricing and the term structure of interest rates. Econometrica 60, 1: 77-105.
Ho, T., and Lee, S. (1986). Term structure movements and pricing interest rates contingent claims. Journal of Finance 41: 1011-1029.
Hull, J. C. (2003). Options, Futures, and Other Derivatives. Upper Saddle River, NJ: Prentice Hall.
Hull, J. C., and White, A. (1990). Pricing interest rate derivative securities. Review of Financial Studies 3, 5: 573-592.
Hull, J. C., and White, A. (1994). Numerical procedures for implementing term structure models I: Single-factor models. Journal of Derivatives 2, 1: 7-16.
Hull, J. C., and White, A. (1996). Using Hull-White interest rate trees. Journal of Derivatives, Spring: 26-36.
Jamshidian, F. (1989). An exact bond option formula. Journal of Finance 44, 1: 205-209.
Jamshidian, F. (1997). LIBOR and swap market models and measures. Finance and Stochastics 1:293-330.
Longstaff, F. A., and Schwartz, E. S. (1992a). Interest rate volatility and the term structure: A two-factor general equilibrium model. Journal of Finance 47: 1259-1282.
Longstaff, F. A., and Schwartz, E. S. (1992b). A two-factor interest rate model and contingent claim valuation. Journal of Fixed Income 3: 16-23.
Mercurio, F., and Moraleda, J. M. (2000). An analytically tractable interest rate model with humped volatility. European Journal of Operational Research 120: 205-214.
Merton, R. C. (1973). Theory of rational option pricing. Bell Journal of Economics and Management Science 4, Spring: 141-183.
Musiela, M., and Rutkowski, M. (1997). Martingale Methods in Financial Modelling. Berlin: Springer.
Rabinovitch, R. (1989). Pricing stock and bond options when the default-free rate is stochastic: A comment. Journal of Financial and Quantitative Analysis 24, 4: 447-457.
Rebonato, R. (1998) Interest-Rate Option Models, 2nd Edition. Chichester, UK: John Wiley & Sons.

Rendleman, R., and Bartter, B. (1980). The pricing of options on debt securities. Journal of Financial and Quantitative Analysis 15: 11-24.
Rogers, L.C.G. (1997). The potential approach to the term structure of interest rates and foreign exchange rates. Mathematical Finance 7: 157-176.
Ritchken, P., and Sankarasubramanian, L. (1995). Volatility structures of forward rates and the dynamics of the term structure. Mathematical Finance 5: 55-72.
Rutkowski, M. (1997). Models of forward LIBOR and swap rates. Preprint, University of New South Wales.
Sandmann, K., and Sondermann, D. (1993). A term structure model and the pricing of interest rate derivatives. Review of Futures Markets 12, 2: 391-423.

Schmidt, W. M. (1997). On a general class of one-factor models for the term structure of interest rates. Finance and Stochastics 1: 3-24.
Strickland, C. R. (1992). The delivery option in bond futures contracts: An empirical analysis of the LIFFE long gilt futures contract. Review of Futures Markets 11: 84-102.
Shiryaev, A. N. (1999). Essentials of Stochastic Finance: Facts, Models, Theory. Singapore: World Scientific.
Turnbull, S. M., and Milne, F. (1991). A simple approach to interest-rate option pricing. Review of Financial Studies. 4, 1: 87-120.
Vasicek, O. (1977). An equilibrium characterization of the term structure. Journal of Financial Economics 5: 177-188.

# Basics of Currency Option Pricing Models

SHANI SHAMAH

Senior Consultant, RBC Capital Markets

Abstract: Historically, theorists have devoted a substantial amount of work developing a mathematical model for pricing options and, hence, a number of different models exist as a result. All make certain assumptions about market behavior, which are not totally accurate, but which give the best solution to the price of an option. Professionals use these models to price their own options and to give theoretical fair value; however, actual market rates will always be the overriding determinant. In other words, an option is worth as much as someone is prepared to pay for it. Although the formula for pricing options is complex, they are all based on the same principles.

Historically, option-pricing models have fallen into two categories:

- Ad hoc models, which generally rely only upon empirical observation or curve fitting and, therefore, need not reflect any of the price restrictions imposed by economic equilibrium.
Equilibrium models, which deduce option prices as the result of maximizing behavior on the part of market participants.

The acknowledged basis of modern option pricing formulas is the often-quoted Black-Scholes formula, devised by Black and Scholes (1973) to produce a "fair value" for options on equities. Of course, currency options differ because there is no dividend and both elements of the exchange carry interest rates that can be fixed until maturity. Therefore, various adaptations to the original Black-Scholes formula have been made for use in currency option pricing. The best known of these is the Garman-Kohlhagen adaptation, which adequately allows for the two interest rates and the fact that a currency can trade at a premium or at a discount forward depending on the interest rate differential.


American-style options cause further problems in the pricing due to the probability of early exercise. Cox, Ross, and Rubinstein (1979) introduced a pricing model to take account of American-style options. By using the same basics as Black-Scholes, they adopted what is now known as the "binomial" method for pricing such options. This same binomial model is now used alongside the Garman-Kohlhagen version to price currency options.

# BASIC PROPERTIES

First, though, there are a few basic properties of options, especially when looking at option prices to consider:

- Options cannot have a negative value to their holders. Since options are rights and these rights will be exercised to benefit only the holder, the option cannot be a liability to its holder.
- Option prices should not allow simple arbitrage; that is, it should not be possible to buy an American call or put and immediately exercise the option for a profit greater than the price paid for the option. This need not be true for European options, since the option holder does not have the right to exercise until the maturity date.
- American-type options should be worth at least as much as European-type options. Since American options have all the rights a European option has plus the right of early exercise, an American option will be as valuable as a European option if the right to early exercise is worthless and more valuable than a European option if the right of early exercise is valuable.

In addition to the currency price, the exercise price, and the time to maturity, option values depend on the price volatility of the underlying currency, the risk-free rate of interest, and any cash distributions made by the currency during the life of the option. For a call option, a higher current currency price should imply a greater value to the option holder. This is because a higher present currency price makes it more likely that on the expiration date, the market price of the currency will be above the exercise price. As this is precisely the condition under which the option will be exercised, the value of a call option increases as the present currency price increases. For put options, however, the effects of changes in the current asset price go in the opposite direction, as it pays the holder of the put to exercise when the currency price is low; that is, the value of a put option decreases as the present currency price increases.

The effect of the exercise price,  $X$ , on the value of the call option is straightforward. Holding all other factors constant, a higher exercise price diminishes the profit from the exercise of the option. An increase in the exercise price would, therefore, lead to a decrease in the price of the call option. In the case of put options, a higher exercise price increases the profit from exercise of the option. Thus, put option prices increase with an increase in their exercise price.


The effect of an increase in time to maturity on the value of an option depends on the nature and type of option. There is an asymmetric nature to option contracts that causes the holder to benefit from increased uncertainty. The option holder stands to gain by a rise in uncertainty, and therefore the value of the call option increases as its time to maturity increases. Also, the present value of the exercise price decreases as the time to maturity increases. Therefore, the time left to maturity has a way of influencing option values. An American put option cannot logically decrease in value with an increased time to maturity, but with a European put option, the net effect of these two influences is ambiguous; that is, increased uncertainty increases value, while the decreased present value of the exercise price decreases value.

An increase in the volatility of the currency price makes future currency prices more variable and increases the probability of large gains. Again, the asymmetry of the option contract allows the option holder to benefit from increased uncertainty since the option is effectively insured against downside risk.

# THEORETICAL VALUATION

The price and subsequent value of an option are determined by a theoretical valuation based on several known and estimated factors. The time until maturity, the current foreign exchange spot and forward exchange prices, the strike, and the cost of funding the option premium are all readily available. Meanwhile, a market has developed that estimates the future volatility or, in other terms, the activity of the underlying cash product. The greater the anticipated movement, the greater the value of the option for a given fixed set of parameters. Options also increase in value the smaller the distance between the strike price and the forward foreign exchange rate, and the greater the time to maturity. For European and American options, most market participants accept the valuation put forward by Black and Scholes, and, as such, option prices can be agreed once the factors are entered into the equation.


This theoretical model also calculates the risk associated with changes in any of the variables required for pricing the currency option. The delta, or hedge ratio, of the option is the degree to which the option value will change with a movement in the underlying currency. A dollar/Swiss franc option with a  $20\%$  delta would change in value by approximately 20 franc points for every 100-point spot move. While the delta is the first derivative of the price, gamma is the second one, or change in delta for every move in the spot foreign exchange rate. A 50-delta dollar call option with a  $15\%$  gamma would have a 65 delta if the dollar appreciated  $1\%$ .

It is this dynamic nature of the delta that allows an option to be a leveraged product with limited risk and unlimited profit potential. Profitable positions effectively grow in size, while unprofitable trades are impacted less by adverse changes in the market.

The vega, or volatility risk, of an option is the extent to which the valuation will change with varying estimates of volatility. The theta, or time decay, is the decrease in value of the option as it approaches maturity, as an option is a constantly diminishing asset. Finally, every option has forward foreign exchange risk equivalent to the delta and an interest rate exposure based on changes in funding costs. The delta and interest rate risks can be hedged easily in the relevant markets. The dynamic nature of the other risks is the essence of the options market.

# BLACK-SCHOLES MODEL

In 1973, Black and Scholes published a paper describing an equilibrium model of stock option pricing that is based on arbitrage. This is made possible by their crucial insight that it is possible to replicate the payoff to options by following a prescribed investment strategy involving the underlying asset and lending/borrowing.

The mathematics employed in the Black-Scholes model is complex, but the principle is straightforward. The model states that the stock and the call option on the stock are two comparable investments. Therefore, it should be possible to create a riskless portfolio by buying the stock and hedging it by selling call options. The hedge is a dynamic one because the stock and the option will not necessarily move by the same amount, but by continuously adjusting the option hedge to compensate for movement in the underlying market, the overall position should be riskless. Therefore, the income received from investing in the call option premium will be offset exactly by the cost of replicating (hedging) the position. If the option premium is too high, the arbitrageur will make a riskless profit by writing call options and hedging the underlying stock. If too low, it should be possible to profit by buying the call option and selling sufficient stock.

Black and Scholes demonstrated that the option premium could be arrived at through an arbitrage process in a similar manner to that in which a currency forward rate can be derived through a formula linking the spot rate and the interest rate differential. Also, in the same way that a currency forward rate is not "what the market thinks the currency will be worth at a future date" but simply based on an arbitrage relationship, the Black-Scholes model is not influenced by such factors as market sentiment, direction, or apparent bias. In fact, an assumption of the model is that the market moves in a random fashion in that, while prices will change, the chances of an up move against a down move are about even, and that future price movements cannot be predicted from the behavior of the past.


The Model:

$$
C = S N \left(d_{1}\right) - K e^{(- r t)} N \left(d_{2}\right)
$$

$C =$  theoretical call premium

$S =$  current stock price

$t =$  time until option expiration

$\mathrm{K} =$  option striking price

$\mathrm{r} =$  risk-free interest rate

$\mathrm{N} =$  cumulative standard normal distribution

$\mathrm{e} =$  exponential term (2.7183)

$$ d_{1} = \frac{\ln (S / K) + \left(r + \frac{s^{2}}{2}\right) t}{s \sqrt{t}}
$$

$$
\mathrm{d}_{2} = \mathrm{d}_{1} - \mathrm{s} \sqrt{\mathrm{t}}
$$

$s =$  standard deviation of stock returns

$\ln =$  natural logarithm

Plotted over a period of time, the distribution of prices takes on the characteristics of the "bell-shaped" curve. Such a distribution is a key assumption of the Black-Scholes model, yet with the foreign exchange markets in particular, it is a questionable one. Even with its economic liquidity and its global 24-hour structure, foreign exchange is by no means a perfect market. Frequently, there are times when prices do not behave in a normally distributed fashion. Such occurrences as wars, central bank intervention, and unexpected political or economic news are all factors, which can and do disrupt the day-to-day business of the market.

Furthermore, in order to simplify the calculation process, Black and Scholes made other assumptions about market behavior, which may vary from the real world. They assumed that volatility was known and constant, that interest rates were constant, that there were no transaction costs or taxation effects, that trading was continuous, that there were no dividends payable, and that options could only be exercised on the expiry date.

Interest rates will vary, of course, as will volatility, and even the foreign exchange markets have transaction cost in the bid-offer spread. Frequently, the market will become very thin or almost untradable during highly volatile periods. However, most of these assumptions can be relaxed without inordinately affecting the formulations of the pricing model, and where the assumptions are more critical, other models have been developed.

# EXAMPLES OF OTHER MODELS

Theorists have devoted a substantial amount of time and effort developing mathematical models for pricing options, and a number of different models exist as a result. All make certain assumptions about market behavior, which are not totally accurate, but which give the best solutions to the price of an option. For example, the model formulated by Merton (1973) generalized the Black-Scholes formula, so it could price European options on stocks or stock indexes paying a known dividend yield.

Another example is the Cox, Ross, and Rubinstein model (1979), which could account for the early exercise provisions in American-style options. Using the same parameters as in the Black-Scholes model, they adopted what is known as a "binomial" method to evaluate the premium. Making the assumption that the option market behaves efficiently and therefore the holder of a call or put option will exercise if the benefit of holding the option is outweighed by the cost of carrying the hedge, the binomial process involves taking a series of trial estimates over the life of the option; each estimate (or iteration) is a probability analysis of the likelihood of early exercise on any given day.

Garman and Kohlhagen (1983) extended the Black-Scholes model to cover the foreign exchange market, where they allowed for the fact that currency pricing involves two interest rates, not one, and that a currency can trade at a premium or discount forward, depending on the interest rate differential. Like the Merton formula, the Garman and Kohlhagen formula applies only to European options.


# PRICING WITHOUT A COMPUTER MODEL

Against all the above theories, there is a way to price an option without a computer model. This can be obtained by the following equation, which will give a good approximation for a European option premium. The formula is:

$$
\text{Pr ic e} = \mathrm{BB} \times \text{fo rw ar do ut ri gh tr at e}
$$

This is where:

$$
\begin{array}{l} A A = \text{sq ua re} \\ \times \text{vo la ti li ty} \times 0. 1 9 9 4 7 \\ \end{array}
$$ and


$$
\mathrm{BB} = ((\mathrm{AA} + 0. 5) \times 2) - 1
$$

This formula is where price is the premium for an at-the-money European option quoted in units per base currency.

# Educated Guess

Another calculation relies heavily on probability theory. The principal concepts are expected value and the lognormal distribution. Since the future is unknown, it is an "educated guess" about where the spot market might be in order to determine the value of that right today. Thus, rather than trying to predict the future spot rate, option pricing takes a systematic, mathematical approach to the educated guess.

In this case, expected value (EV) is the payoff of an event multiplied by the probability of it occurring. For example, the probability of rolling a six on one die is  $1 / 6$  or  $16.67\%$ . The EV of a game in which is paid  $\$100$  for rolling a six and nothing for any other roll is:

$$
(1 / 6 \times \$ 1 0 0) + (5 / 6 \times \$ 0) = \$ 1 6. 6 7
$$ where the expected value is the fair price for playing such a game.


An options premium can be thought of in the same way, although instead of six possible outcomes, there are hundreds. All the spot rates that might prevail are the options expirations. Each outcome will have a specific value. This will either be zero if the option is out-of-themoney or the difference between the closing spot and the strike price if the option is in-the-money. Each closing spot rate can also be thought of as having its own discrete probability. If, for each outcome, the value of that outcome is multiplied by its probability and then the results are added up, the sum would be the premium of the option. The expected value of an option (the probability minus the weighted sum of all its possible payoffs) is the fair price for buying the option.

# THE PRICE OF AN OPTION

The price of an option is made up of two separate components:

Option premium  $=$  Intrinsic value  $+$  Time value where intrinsic value is the value of an option relative to the outright forward market price, that is, it represents the difference between the strike price of the option and the forward rate at which one could transact today. Intrinsic value can be zero but never negative.


There are six factors that contribute to this pricing of an option:

- Prevailing spot price
- Interest rate differentials (forward rate)
- Strike price
- Time to expiry
Volatility
- Intrinsic value

As described above, the best-known original closed-form solution to option pricing is the Black-Scholes model. Also, as was mentioned, in its simplest form, it offers a solution to pricing European-style options on assets with interim cash payouts over the life of the option. The model calculates the theoretical, or fair value for the option by constructing an instantaneously riskless hedge that is one whose performance is the mirror image of the option payout. The portfolio of option and hedge can then be assumed to earn the risk-free rate of return.


Central to the model is the assumption that markets' returns are normally distributed (that is, have lognormal prices), that there are no transaction costs, that volatility and interest rates remain constant throughout the life of the option, and that the market follows a diffusion process. The model has these five major inputs:

The risk-free interest rate
- The option's strike price
The price of the underlying
The option's maturity
The volatility assumed

Since the first four are usually determined, markets tend to trade the implied volatility of the option. For example, a six-month European-style sterling put/dollar call with the spot rate at  $\frac{\mathrm{d}}{\mathrm{d}t} 1.7500$  and forward points of 515, giving an outright forward of 1.6985 (1.7500 - 0.0515), will have an intrinsic value of 4.15 cents per pound.

While the Black-Scholes pricing formula looks formidable, it is important to understand that the formula is nothing more than the simple two-state option-pricing model applied with an instantaneous trading interval.

If the strike price of the option is more favorable than the current forward price, the option is said to be in-the-money. If the strike price is equal to the forward rate, it is an at-the-money option, and if the strike price is less favorable than the outright, the option is termed out-of-the-money.

For American-style options, a similar definition applies except that the option's "moneyness" relative to the spot price also needs to be considered. Clearly, in the example above, an American-style option would be in-the-money relative to the forward but not to the spot. Conversely, if the option had the same details except that it was a call on sterling, it would clearly be out-of-the-money under the European definition, but as an American style option it would be in-the-money relative to the spot price. Naturally, the cost of the option would need to be considered in order to achieve a profitable early exercise of an American option and this leads to a phenomenon peculiar to American-style options known as "optimal exercise." This is the point at which it becomes profitable to exercise an American-style option early, having taken account of the premium paid.


# Option Premium Profile

Figure 1 shows premium against spot at a given point in time. It can be seen that the time value call position is greatest when the option is at the-money. This is because it represents the highest level of asymmetric risk, which is optimum risk reward profile.

The time value tends to zero as spot goes deep out-of-the-money and thus converges with the maximum loss expiry line and also as it goes deep in-the-money, converging with the unlimited profit expiry line. The change in the premium is not parallel to the change in the underlying value. The premium will change more rapidly when the option is near at-the-money and less rapidly when the option is in-the-money or out-of-the-money.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/dd0c5a1a15267756646174dbf8d03d593e8e7d52e296e21c438606fc800ce95e.jpg)
Figure 1 Option Premium Profile

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/0ed8f8bf28af166bae7531d667598edf8dcb1bbe3d2d718ab867787e3b517a96.jpg)
Figure 2 Time Value Premium Delay

# Time Value and Intrinsic Value

The option premium can be split into two parts: intrinsic value and time value. The effect of an increase in time on an options premium is not linear. This is because the probability of a rise or fall in a currency's value does not increase on a straight-line basis. For example, all things being equal, the premium for an at-the-money three-month option is worth only about two-thirds more than for a one-month option (not three times its value). A one-year option is worth only about one-third more than a six-month option (instead of twice its value). As a consequence, the premium for at-the-money options declines at an accelerating rate towards expiry. Figure 2 demonstrates the time value premium delay.

Time value is affected by a number of factors:

The time remaining to expiration.
- The volatility of the underlying spot market.
- The strike price of the option.
- The forward rate of the currency pair.
- The current interest rates.

# Time to Expiry

The time decay of an option is related to the time remaining in the option; in fact, it is proportional to the square root of the time remaining. The reason for this phenomenon is twofold:

1. The longer the time to maturity, the greater is the chance that the exchange rate moves such that the option will be exercised. The rate at which the premium diminishes as the option approaches expiry is called the "time decay" and the rate of decay is exponential, that is, the option loses time value more quickly approaching expiry than it does earlier in its life. At expiry, the option will have only intrinsic value and no time value.

2. The time value can be thought of as "risk premium" or the cost to the writer of hedging the uncertainty of exercise.

# Volatility

In essence, volatility is a measure of the variability (but not the direction) of the price of the underlying instrument, essentially the chances of an option's being exercised. It is defined as the annualized standard deviation of the natural log of the ratio of two successive prices.

Historical volatility is a measure of the standard deviation of the underlying instrument over a past period and is calculated from actual price movements by looking at intraday price changes and comparing this with the average (the standard deviation). The calculation is not affected by the absolute exchange rates, merely the change in price involved. Thus, for example, the starting and finishing points for two separate calculations could be exactly the same but could give two very different levels of volatility depending on how the exchange rate traded in between. Thus, if the market has traded up and down erratically, the reading will be high, and if instead it has gradually moved from one point to the other in even steps, then the reading will be lower.

Implied volatility is the volatility implied in the price of an option, that is, the volatility that is used to calculate an option price. Implied volatilities rise and fall with market forces and tend to reflect the level of activity anticipated in the future although supply and demand can at times be dominant factors. In the professional interbank market, two-way volatility prices are traded according to market perception and these volatilities are converted into premium using option models. Implied volatility is the only variable affecting the price of an option that cannot be directly observed in the markets, thus leading to the typical variations in price inherent in any marketplace.


Actual volatility is the actual volatility that occurs during the life of an option. It is the difference between the actual volatility experienced during delta hedging and the implied volatility used to price an option at the outset, which determines if a trader makes or loses money on that option.

In summary, implied volatility is a timely measure, in that it reflects the market's perceptions today. On the other hand, historical volatility is a retrospective measure of volatility. This implies that it reflects how volatile the variable has been in the recent past. But it has to be remembered that it is a highly objective measure. Implied volatilities can be biased, especially if they are based upon options that are traded in a market with very little liquidity. Also, historical volatility can be calculated for any variable for which historical data is tracked.

Volatility affects the time value or risk premium of an option, as an increase in volatility increases the time value and thus the price of the option. Likewise, a decrease in volatility lowers the price of the option. For example, consider the position of the writer of an option, whereby, say, a bank sells an option to a client, giving the client the right to purchase dollars and sell Swiss francs in three months' time. In order to correctly hedge the position, consider what will happen in three months' time.

If the spot is above the strike price of the option, the client will exercise the option and the bank will be obliged to sell dollars and buy francs. However, if the spot is below the strike price, the client will allow the option to lapse. Hence, the bank's initial hedge for the option will be to purchase a proportion of dollars in the spot market against this potential short dollar position. If the spot subsequently rises, the likelihood of the option's being exercised will increase and so the initial hedge will be too small. Therefore, the bank will need to buy some more dollars, which it does at a rate worse than the original rate at which the option was priced, thereby losing money. Conversely, if the spot rate falls, this makes the option less likely to be exercised and the bank will then find itself holding too many dollars and will have to sell them out at a lower price than where they were purchased, thus losing more money. These losses are called "hedging costs," and each time the spot market moves, the rehedging required will lose the bank money. In essence, the premium received by the writer is effectively the best estimate of these hedging costs over the life of the option.


# Strike Price and Forward Rates

An option's time value is greatest when the strike price is at-the-money and the further in or out-of-the-money the strike price is, the lower the time value is. This can be explained by again considering the hedging costs. If the option is originally at-the-money, it is said to have a 50 delta and therefore the initial hedge will be to buy or sell half the principle amount of the option. The delta of the option can be thought of as the probability of exercise and so a 50 delta gives a 1-in-2 chance of exercise, that is, maximum uncertainty. As the spot moves, the delta will change and require readjusting of the hedge in the spot market. The change in delta (or gamma) is greater for a 50-delta option than for an option with a much higher or lower delta, for example 80- or 20-delta. This is because the likelihood of exercise, and therefore the amount of hedge required, changes more rapidly. Thus, less readjustment is required for these high and low delta options, and consequently, fewer hedging costs are incurred for the low and high delta options. This leads to lower levels of risk premium or time value for in-the-money and out-of-the-money options.

# Interest Rates

The currency interest rate is another factor that affects option premiums. As premium is usually paid up front, it must be discounted to take account of the interest that would be earned by putting the premium on deposit. Thus, the higher the domestic interest rate, the greater the discounting effect on the premium.


The effect of interest rate differential on the option premium is not intuitively obvious, yet it is one of the most important components of the premium for a currency option. If the dollar interest rate rises in relation to the interest rate of the foreign currency, the premium of a currency call option will increase in value. This is because holding a foreign currency and buying a currency call option are alternative investments. On the one hand, the investor will sell (borrow) dollars and buy (invest in) a foreign currency in order to take advantage of a rise in that foreign currency. On the other hand, the trader could just simply buy a currency call option. If the dollar interest rate rises, the cost of borrowing dollars will increase, which will make the alternative of buying a currency call option more attractive. Consequently, the premium will rise.

This can equally be explained in terms of the forward value of a currency. If the dollar interest rate rises in relation to the foreign currency interest rates, and the spot rate remains the same (unchanged), covered interest rate arbitrage will ensure that the forward rate of the foreign currency will rise relative to the spot. Therefore, the call option on that currency will also rise in value. Of course, the dollar interest rate might remain the same, but the interest rate of the foreign currency might fall. The effect on the interest rate differential and therefore on the value of the currency call option will remain the same, but the premium will rise.

The converse is true for currency put options, because an increase in the dollar interest rate in relation to the foreign currency interest rate will, given no change in the spot price, result in a rise in the forward value of the currency. Thus, the holder of a put option on the currency will see the premium fall. Buying a currency put option is an alternative strategy to borrowing in that currency and investing in dollars. Hence, a rise in the dollar interest rate or a fall in the foreign currency interest rate makes the put option strategy less attractive, and the put premium will fall.


The effect of interest rate differential changes on currency option premiums can be summarized as follows:

- Assuming the spot rate remains unchanged, a rise in dollar interest rates relative to the foreign currency interest rate, or a fall in the foreign currency interest rate relative to the dollar interest rate, will increase the premium for a currency call option and decrease the premium for a currency put option.
- Assuming the spot rate remains the same, a fall in the dollar interest rate relative to the foreign currency interest rate, or a rise in the foreign currency interest rate relative to the dollar interest rate, will decrease the premium for a currency call option and increase the premium for a currency put option.

# American versus European

For European options, intrinsic value is the value of an option relative to the outright forward market price; that is, it represents the difference between the strike price of the option and the forward rate at which one could transact today. Intrinsic value can be zero but is never negative. If the strike price of the option is more favorable than the current forward price, the option is in-the-money. If the strike price is equal to the forward rate, the option is at-the-money and if the strike price is less favorable than the outright forward, the option is out-of-the-money.

A similar definition applies for American-style options, except that the option's "moneyness" relative to the spot price also needs to be considered. Naturally, the cost of the option needs to be considered in order to achieve a profitable early exercise and this leads to a phenomenon peculiar to American options known as optimal exercise. This is the point at which it becomes profitable to exercise an

American option early, having taken account of the premium paid.

In fact, there are several occasions when it would be better to pay extra premium and buy a more expensive American-style option. For example:

1. When a trader is buying an option where the call currency has the higher interest rate and there is an expectation that the interest rate differential will widen significantly.
2. When a trader is buying an option where the interest rates are close to each other and there is an expectation that the call interest rate will move above the put interest rate.
3. When a trader is buying an out-of-the-money option with interest rates as in both of the above and there is an expectation for it to move significantly into the money, then the American-style option is more highly leveraged and will hence produce higher profits.

# THE GREEKS

Traders extensively use the "Greeks," a set of factor sensitivities, to quantify the exposure of portfolios that contain options. Each measures how the portfolio's market value should respond to a change in some variable. For speculative purposes, the value of an option needs to be known on a continual basis, and more importantly, the factors that change an option's value need to be understood. In analyzing an option risk (or value), the market norm is to use letters of the Greek alphabet. Not surprisingly, they are often referred to as the "Greeks," and they include delta, vega/kappa, theta, gamma, and rho. However, vega is not in the Greek alphabet, but is named after a star in the constellation Lyra. Sometimes, vega has also been referred to as kappa. Also, four of the five are risk metrics. The exception here is theta, because the passage of time is certain and thus entails no risk.

These major Greeks, which measure these risks and need to be taken into account before taking any option positions, are:

<table><tr><td>Vega/Kappa</td><td>Theta</td><td>Delta</td><td>Gamma</td><td>Rho</td></tr><tr><td>Measures the impact of a change in volatility</td><td>Measures the impact of a change in time remaining</td><td>Measures the impact of a change in the price of the underlying</td><td>Measures the rate of change in delta</td><td>Measures the sensitivity to an applicable interest rate</td></tr></table>

# Delta

When option traders sell or buy a currency option, they will use the foreign exchange market to hedge the exposure. The most common type of hedging is delta hedging.

Delta is the change in premium per change in the underlying. Technically, the underlying is the forward outright rate but as the option-pricing model assumes constant interest rates, this is often calculated using spot. For example, if an option has a delta of 25 and spot moved 100 basis points, then the option price gain/loss would be 25 basis points. For this reason, delta is sometimes thought of as representing the "spotsensitive" amount of the option.

Also, delta can be thought of as the estimated probability of exercise of the option. As the option-pricing model assumes an outcome profile based around the forward outright rate, an at-the-money option has a delta of  $50\%$ . It falls for out-of-the-money options and increases for in-the-money options, but the change is nonlinear, in that it changes much faster when the option is close-to-the-money.

Turning to calculus for the formal definition of delta, let 0 be the current time. Let  $^0 p$  and  $^0 s$  be current values for the portfolio and underlier. Delta is the first partial derivative of a portfolio's value with respect to the value of the underlier:

$$
\mathrm{de lt a} = \frac{\partial^{0} p}{\partial^{0} s}
$$

This technical definition leads to an approximation for the behavior of a portfolio.

$$
\Delta^{0} p \approx \mathrm{de lt a} \Delta^{0} s
$$ where  $\Delta^0 s$  is a small change in the underlier's current value, and  $\Delta^0 p$  is the corresponding change in the portfolio's current value. This is called the delta approximation.


An option is said to be delta hedged if a position has been taken in the underlying in proportion to its delta. For example, if one is short a call option on an underlying with a face value of  \$1 million and a delta of 0.25, a long position of\$ 250,000 in the underlying will leave one delta neutral with no exposure to changes in the price of the underlying, but only if these are infinitesimally small.

As the underlying market moves throughout the life of the option, the delta will change, thus requiring the underlying hedge to be adjusted. Once the initial hedge has been transacted, calls and puts behave in precisely the same way, in terms of the hedging required.

For example, an at-the-money sterling call/ dollar put option in £10 million, with a strike price of 1.75, has an initial delta of 50. The option writer, therefore, buys £5 million in the spot market to hedge the option position. If the spot rises to 1.77, the delta will increase to, say, 60. Now, the writer needs to purchase an extra £1 million to attain delta neutrality. If the exchange rate then falls back again to the original rate, the option writer is overhedged and requires selling back £1 million in order to remain delta neutral. Clearly, as the option writer rehedges, losses will be incurred, which will increase as volatility increases.

Another example could be where a trader sells a dollar call/Swiss franc put at 1.5500 for six months for 10 million. The trader's risk is that in six months, the option will be exercised and there will be a payout of dollars and a receipt of francs. The trader's hedge against this risk would therefore be to buy dollars and sell francs, thus hedging the delta amount because this represents the likelihood of exercise. If spot is 1.5300 and the forward outright is 1.5345, then the trader's hedging, ignoring time movement, would look like that shown in the following table, as the forward rate changes:


<table><tr><td>Forward</td><td>Delta</td><td>Hedge</td><td>Total</td></tr><tr><td>1.5345</td><td>35</td><td>Buy \$3.5 million</td><td>+\$3.5 million</td></tr><tr><td>1.5500</td><td>50</td><td>Buy \$1.5 million</td><td>+\$5.0 million</td></tr><tr><td>1.5600</td><td>57</td><td>Buy \$0.7 million</td><td>+\$5.7 million</td></tr><tr><td>1.5200</td><td>30</td><td>Sell \$2.7 million</td><td>+\$3.0 million</td></tr></table>

Whether or not the trader loses money will depend on volatility. From the preceding table, it can be seen that hedging a short option position loses money, as the trader would be continually buying high and selling low. However, when the option was first sold, the trader received a premium for it, representing the estimated cost of hedging to the trader. If the volatility of the market is higher than the trader expected and then has to hedge more frequently, then the trader may lose more money hedging than originally gained on the premium. If, however, the market is less volatile than the assumption of the option price, the trader should lose less money hedging than received in premium and therefore make a profit overall.

If the trader had bought the option rather than sold it, the trader would then hope for increased volatility because the hedging exercise would be making money.

For example, the trader buys exactly the same options, a dollar call/Swiss franc put at 1.5500 in 10 million. The trader's risk is now that there will be a long dollar position in six months, so the hedge will be to sell dollars and buy francs. As the forward outright rate moves, however, the delta of the option will move in exactly the same way as before. This follows as the option is the same and the delta does not depend on who owns the option. In this case, therefore, the trader will be buying low and selling high and making money on the hedging. Just as before, this makes sense, as the trader originally paid out a premium to buy the option, so the hedging is making back that premium. This time, the trader has bought volatility and hopes that volatility will in fact be higher than the rate at which the option was bought for. If it is, the trader will make more money hedging than was paid out in premium.


Hence, buying and selling volatility is like any other product in that there is a wish to buy at a low rate and sell at a higher rate to make a profit.

As another example, consider a short sterling call at a 1.8100 position at 342 points. The loss profile corresponds to the loss profile on a short sterling cash position. Thus, a hedge on a short sterling call position would be to buy sterling cash. The value of the option will go up with sterling going up, but it is not a one-to-one relationship.

The delta ratio indicates the increase in value of the option for every increase in value of one point on the cash market. Thus, the following rules on delta can be established. On a call option, delta will range from  $0\%$  when out-of-the-money to  $50\%$  at-the-money to  $100\%$  when deep in-the-money. Conversely, the delta of a put option goes from  $0\%$  when out-of-the-money to  $-50\%$  at-the-money to  $-100\%$  when deep in-the-money.

In the preceding example, the delta of the option is, say,  $45\%$ , which means that to hedge the position, an amount of sterling of  $45\%$  of the face value of the option will have to be bought. Therefore, if the option is for £1 million, a move up of 50 points on the rate will result in a loss of:

$$
\mathcal {L} 1 \text{mi ll io n} \times 0. 0 0 5 0 \times 4 5
$$

This will be offset by the long cash position of:

$$
4 5 0, 0 0 0 \times 0. 0 0 5 0 = \$ 2, 2 5 0
$$

The delta of an option does not remain constant and the new delta of this position is, say,  $47\%$ . In order to maintain a delta-neutral position, the trader will have to buy another £20,000. Such a hedging strategy will enable the trader to keep the premium received initially when selling the option.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/79442d17e490aaf45e9e4a452da71b545cb8cfabf38d28e50d711939f90ba8fa.jpg)
Figure 3 Delta Profile


Figure 3 shows that delta is the gradient of the tangent of the curve of the premium in relation to the cash prices. This will also reveal that delta will move more rapidly for an option with a short remaining life than for an option with a long remaining life.

In conclusion, basically, the delta of an option will change if any factor which influences the potential probability of exercise changes. These include spot price, volatility, time, and interest rates. Option trades use the delta as a guide to hedging. Taken simply, if a bank is short one option with a delta of  $50\%$ , the bank will hedge only half of the nominal amount of the option as it only has a  $50\%$  chance of being exercised. This is known as "delta hedging." This is a simplistic example, and, in reality, banks have large option books, which they hedge on a daily basis, but the principal applies no matter what the size of the portfolio.

Also, there are three points to keep in mind with delta:

1. Delta tends to increase as it gets closer to expiration for near or at-the-money options.
2. Delta is not a constant.
3. Delta is subject to change given changes in implied volatility.

# Gamma

The rate of change of delta is called gamma, and it will give a measure of the amount of change in the delta for a given change in the cash price.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/c9329e7fbcdf0adb88e193c97b292debfbd893e7bf422397a8194207ec93e9c3.jpg)
Figure 4 Gamma Profile

Therefore, it will provide an estimate of how much it will cost to delta hedge.

The cost of rebalancing the hedge is a consequence of the curvature of the premium curve against cash prices. The curvature is greatest at the-money and reduces when in-the-money or out-of-the-money. This is shown in Figure 4.

A short option position is called gamma negative. The higher the gamma, the less stable is the delta hedge. A first conclusion is that it is more costly to hedge a short long-dated option position than a short position of short-dated options.

Thus, gamma is the change in delta per change in the underlying and is important because the option model assumes that delta hedging is performed on a continuous basis. In practice, however, this is not possible, as the market gaps and the net amounts requiring further hedging would be too small to make it worthwhile. The gapping effect that has to be dealt with in hedging an option gives the risk proportional to the gamma of the option.

For a formal definition of gamma, again turn to calculus. Gamma is the second partial derivative of a portfolio's value  ${}^{0}p$  with respect to the value  ${}^{0}s$  of the underlier:

$$
\mathrm{ga mm a} = \frac{\partial^{2 0} p}{\partial^{0} s^{2}}
$$

By incorporating gamma, there can be an improvement to the approximation for how the portfolio's value should change in response to small changes in the underlier's value:

$$
\Delta^{0} p \approx \frac{\mathrm{ga mm a}}{2} \Delta^{0} s^{2} + \mathrm{de lt a} \Delta^{0} s
$$

This is called the delta-gamma approximation.

An option's gamma is at its greatest when an option is at-the-money and decreases as the price of the underlying moves further away from the strike price. Therefore, gamma is U-shaped and is also greater for short-term options than for long-term options.

By convention, gamma can be expressed in two ways:

1. A gamma of, say, 5.23 will mean that for  $1\%$  change in the underlying price the delta will change by 5.23 units. That is, from  $50\%$  to  $55.23\%$ .
2. A gamma of  $3\%$  will mean that for a one unit change in the underlying price, the delta will change by  $3\%$ , for example from  $50\%$  to  $51.5\%$ .

As an example of gamma hedging, as the forward outright rate moves from 1.5600 to 1.5200, the delta of the option moves from 57 to 30. The size of movement of the delta given this movement of the underlying is the gamma of the option by the definition "gamma is the change in delta per change in the underlying." The hedging the trader was required to do was to sell  \$1.7 million. In practice, the trader sold the full amount at a rate of 1.5200. If the trader were able to hedge continuously as the model assumes, the trader would have sold the same amount, that is,\$ 1.7 million, but at an average rate of 1.5450. This would obviously have been more profitable. From this example, it can be seen that the gapping effect works against the trader when there is a short options position (and therefore short gamma), and a repetition of the exercise would show that the gapping is in the trader's favor if a long options position were being held (and gamma).

The value of gamma is, therefore, very important in determining sensitivity to spot movement and this gapping effect.

However, gamma is not the same for all options. Gamma is greater for short-term options than for long-term options. For example, assume a dollar call/Swiss franc put option with a strike of 1.5500 and that there is one second to get to expiry. If the spot at the time is 1.5501, the option is extremely likely to be exercised and the delta will be 100. If, in that second, the spot moved to 1.5499, the option would not, in fact, be exercised and the delta would move to 0. Here, it can be seen that a 0.0002 move in spot produced a change in delta from 100 to 0. If it were the same option but there was one year to maturity, a movement of 0.0002 in spot would not significantly alter the likelihood that the option would be exercised; that is, the delta would not change noticeably.


Gamma is greater for at-the-money options than for options with deltas above or below 50. Assume an extreme example to see this effect, using the same option of a dollar call/Swiss franc put with a strike of 1.5500, and there is a second to go before expiry. If the spot is at 1.5500 and thus the option has a delta of 50, there would be the same situation as before when a 0.0001 movement in spot created a movement of 50 in the delta. If, however, the spot were at 1.5200, the delta of the option would be 0, and a movement even as large as 0.0200 would not increase that delta.

In conclusion, gamma is seen as a second-generation derivative, where the others considered are regarded as first-generation derivatives in the pricing of an option, in that the others all consider the change that an external effect has on an option's value, such as change in spot. However, gamma measures the rate of change of the delta itself. Therefore, it is literally the delta of the delta. Since the delta is the key pricing tool used by market participants in controlling the portfolio risk, to be able to work out the rate of change of this risk is very useful. Hence, gamma is a very important part of any option portfolio and is affected by three different factors: spot movement, time to maturity, and volatility.

Also, the three points to keep in mind with gamma are:

1. Gamma is smallest for deep out-of-the-money and deep in-the-money options.
2. Gamma is highest when the option gets near-the-money.
3. Gamma is positive for long options and negative for short options.

# Theta

Theta is the depreciation of the time value element of the premium, that is, it measures the effect on an option's price of a one-day decrease in the time to expiration. The more the market and strike prices diverge, the less effect theta has on an option's price. Obviously, if you are the holder of an option, this effect will diminish the value of the option over time, but if you are the seller (the writer) of the option, the effect will be in your favor, as the option will cost less to purchase. Theta is nonlinear, meaning that its value accelerates as the option approaches maturity. Positive gamma is generally associated with negative theta and vice versa.

The rate at which the time value decays with respect to time is expressed as hundredths of a percent per unit of time (day/week). Obviously, the theta factor plays in favor of a short option position. Shorter-dated options have larger thetas as do those at-the-money. This effect will give rise to trading strategies referred to as a calendar spread.

To determine theta, assume  $t$  denotes time, and let  ${}^t p$  denote the portfolio's value at time  $t$ . Formally, theta is the partial derivative of the portfolio's value with respect to time:

$$
\mathrm{th et a} = \frac{\partial^{t} p}{\partial t}
$$ where the derivative is evaluated at time  $t = 0$ . This technical definition leads to an approximation for the behavior of a portfolio.


$$
\Delta^{t} p \approx \operatorname{th et a} \Delta t
$$ where  $\Delta^t$  is a small interval of time, and  $\Delta^t p$  is the change in the portfolio's value that will


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/306b4f81efc291460ae2127f0a2f02d774eedcc8ca94cb5e6b7c40e09bd84433.jpg) occur during that interval, assuming all other market variables remain the same.
Figure 5 Time Decay Profile


The delta of an option does have an influence on the time decay of an option because the time value element of an option total value is maximum for at-the-money options. As the delta increases or decreases, the time value of the option decreases. Obviously, for options where there is very little time value, there will be very little time decay. If there is any doubt about which date to choose for an option maturity, as can be seen in Figure 5, there is little increase in time value for days at the far end of the option. To buy a slightly longer option, therefore, will not cost much more. However, if a trader waits until the option expires and then has to buy another option to cover the final period, the additional cost could be substantially more. For this reason, buying an option for the longest period needed is recommended.

In actual practice, traders do not use theta, but it is an important conceptual dimension. However, some additional points of note are:

1. Theta can be very high for out-of-the-money options if they contain a lot of implied volatility.
2. Theta is typically highest for at-the-money options.
3. Theta will increase sharply in the last few weeks of trading and can severely undermine a long option holder's position, especially if implied volatility is on the decline at the same time.

# Vega

Vega, sometimes also called kappa, quantifies risk exposure to implied volatility changes. Vega tells us approximately how much an option price will increase or decrease given an increase or decrease in the level of implied volatility. Option sellers benefit from a fall in implied volatility, while option buyers benefit from an increase in implied volatility. Vega is greatest for at-the-money options and increases with the time to maturity. This is the case because the longer the time to maturity, the greater the possibility of exchange rate movements and, therefore, the greater the sensitivity of the option price to a change in volatility.

Vega is the first partial derivative of a portfolio's value  ${}^{0}p$  with respect to the value  ${}^{0}\sigma$  of implied volatility. This technical definition leads to an approximation for the behavior of a portfolio.

$$
\Delta^{0} p \approx \operatorname{ve ga} \Delta^{0} \sigma
$$ where, here,  $\Delta^0\sigma$  is a small change in the implied volatility from its current value, and  $\Delta p$  is the corresponding change in the portfolio's value.


Thus, the more volatile the underlying price the more expensive the option will become because of the uncertainty element. The ratio of how much the value of the premium changes for a  $1\%$  change in volatility is vega. Longer-dated options have higher vegas and at-the-money options have higher vegas. It is expressed as a percentage change of dollars for a  $1\%$  change of volatility. For example, a vega of 1.0 means the option premium will appreciate by  $1\%$  in dollar or sterling terms.

# Rho

It is generally considered to be the least important of the Greeks, but nevertheless any option, be it a single position or a large portfolio, will be exposed to such a risk. This is because with over-the-counter European-style options, the price (in part) is derived from the forward rate. Therefore, if either of the two interest rates of the currency pair in the option should change, so the forward and hence the price will change. This can happen without a move in the spot price.


In formulating rho, let  ${}^{0}p$  and  ${}^{0}r$  be current values for the portfolio and underlier. Formally, rho is the partial derivative of the portfolio's value with respect to the risk-free rate:

$$
\mathrm{rh o} = \frac{\partial^{0} p}{\partial^{0} r}
$$

This technical definition leads to an approximation for the behavior of a portfolio.

$$
\Delta^{0} p \approx \mathrm{rh o} \Delta^{0} r
$$ where  $\Delta^0 r$  is a small change in the risk-free rate, and  $\Delta^0 p$  is the corresponding change in the portfolio's value.


In summary, rho is the general term used for interest rate risk, but it is broken down further. Rho usually refers to the base currency interest rate (usually dollars), and phi relates to the traded currency interest rates (e.g., Swiss francs or Japanese yen).

# Beta and Omega

Some other Greek letters that are used do not actually measure an option's value but are more geared to looking at the use of options or risks associated with valuation methods. Briefly, they include beta and omega.

Beta represents the risk involved in hedging one currency pair against another, especially when sometimes currency pairs have a high correlation, for example, within the old European Monetary System (EMS) with the deutsch mark and the French franc. Some traders that had a dollar against the franc position would have been happier hedging this exposure in the more liquid dollar against the mark market because it fairly closely correlated to the franc. The risk here would have been if the mark against the franc correlation had started to weaken.

Omega measures the translation profit/loss risk assumed by trading in currency pairs (which result in profits/losses in those two currencies) that are not the same as the reporting base currency for accounting purposes. An example would be an American bank that gets profits for its sterling against Swiss franc trades in either sterling or francs, yet has to convert these to dollars for the balance sheet.

# KEY POINTS

- The generally accepted pricing basis for options today is the Black-Scholes formula, which was devised in the early 1970s to provide a "fair value" for equity options. However, the foreign exchange markets needed something to take account of interest rates and the fact that there are no dividends due on currencies.
- Various adaptations of the Black-Scholes model emerged, of which the most popular one used today is the Garman-Kohlhagen system. This method makes allowances for the interest rates of the respective currencies and the fact that a currency can trade at a discount or premium forward relative to the other currency.
- American-style options differ due to the possibility of early exercise. The Cox-Ross-Rubenstein model is the generally accepted method for these, but they do not feature heavily in the over-the-counter market.
- Overall, the industry norm is to use the Black-Scholes formula adapted by Garman-Kohlhagen for valuing over-the-counter European-style currency options.
- The factors required to price an option include: (1) currency pair; (2) call or put; (3) strike rate; (4) amount; (5) style (European or American); (6) expiration date and time (New York expiry or Tokyo expiry); (7) prevailing spot rate; (8) interest rates for both currencies; (9) foreign exchange swap rate (calculated from the information in the previous factor); and (10) volatility of the currency pair.


- The six factors chosen by the potential buyer/seller of the option are the currency pair, call or put, strike rate, amount, style, and expiration date and time. The prevailing spot rate, interest rates for both currencies, and foreign exchange swap rate are given by the market. The volatility of the currency pair is the only unknown factor, representing the anticipated market volatility expected for the life of the option, and is determined using the option pricing models discussed in this entry.

# REFERENCES

Black, F., and Scholes, M. (1973). The pricing of options and corporate liabilities. Journal of Political Economy 81, 3: 637-654.
Cox, J., Ross, S., and Rubinstein, M. (1979). Option pricing: A simplified approach. Journal of Financial Economics 7: 229-263.
Garman, M. B., and Kohlhagen, S. W. (1983). Foreign currency option values. Journal of International Money and Finance 2: 231-237.
Merton, R. C. (1973). Theory of rational option pricing. Bell Journal of Economics and Management Science 4, 1: 141-183.

# Credit Default Swap Valuation

REN-RAW CHEN, PhD

Professor of Finance, Graduate School of Business, Fordham University

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

DOMINIC O'KANE, PhD

Affiliated Professor of Finance, EDHEC Business School, Nice, France

Abstract: Credit default swaps are the most popular of all the credit derivative contracts traded. Their purpose is to provide financial protection against losses incurred following a credit event of a corporate or sovereign reference entity. Replication arguments attempting to link credit default swaps to the price of the underlying credits are generally used by the market as a first estimate for determining the price at which a credit default swap should trade. The replication argument, however, is dependent on the existence of same maturity and same seniority floating rate bonds. Even if such securities do exist, contractual differences between CDS and bonds can weaken the replication relationship. Over the past decade, the increased liquidity of the CDS market has meant that in some cases, it, and not the bond market, is the place where credit price discovery occurs. Despite this it still necessary to have a CDS valuation model for the valuation and risk-management of existing positions.

Credit default swaps (CDSs), or simply default swaps, provide an efficient credit-risk transferring financial instrument. Their overthe-counter nature also makes them infinitely customizable, thereby overcoming many of the limitations of the traditional credit market instruments such as lack of availability of instruments with the required maturity or seniority. Increasing standardization and familiarization with the legal framework has made capital market participants more willing to enter into default swap transactions as have developments in credit modeling and pricing that have made it possible to mark-to-market and hedge default swap positions.


Bonds are the main source of liquidity in the credit markets, especially in the United States. In the early years of the CDS market, replication arguments that attempted to link CDSs to bonds were therefore generally used by the market as a first estimate for determining the price at which CDSs should trade Nowadays, the greater liquidity of the CDS market means that it is often the place where price discovery occurs and can at times lead the cash credit bond market. So while the replication relationship is still important, it is now a two-way process with bond traders looking at CDS prices and CDS traders looking at bond prices, all watching to see if the replication relationship breaks down to the extent that any dislocation becomes arbitrageable, at which point they will step in and enter into positions to profit from the dislocation. If done in a material size, the effect of such an action should be to realign the two markets. However, the replication argument is not exact, as it is based on a number of assumptions that often break down in practice. Market participants who wish to price CDSs and examine relative value opportunities need to understand replication and its assumptions. We discuss the replication approach in this entry.


However, replication only provides a starting point for quoting CDS spreads. It does not allow traders to actually mark to market their existing CDS positions. By definition, marking a CDS position to market must involve pricing it off the current market CDS spread curve—a set of CDS spreads quoted for different maturities. The main objective of this chapter will be to explain how to determine the CDS spread, what factors affect its pricing, and how to mark-to-market CDSs. We show that this requires a model and set out the standard model that is used by the market.

# DEFAULT SWAPS

In a standard CDS contract one party pays a regular fee to another to purchase credit protection to cover the loss of the face value of an asset following a credit event. The company (or sovereign) to which the triggering of the credit event is linked is known as the reference entity.

This protection lasts until some specified maturity date which falls on the 20th of either March, June, September or December, typically five years from the trade date. To pay for this protection, the protection buyer makes a regular stream of payments. These are quoted in terms of an annualized percentage known as the CDS spread. These payments are typically paid quarterly according to an Actual 360 ba sis convention and are collectively known as the premium leg. Payments occur until maturity of the contract or a credit event occurs, whichever happens first. The protection buyer will also pay the protection seller the fraction of the coupon which has accrued since the previous premium payment date.


If a credit event does occur before the maturity date of the contract, there is a payment by the protection seller, known as the protection leg. There are two ways to settle the payment of the protection leg: physical settlement and cash settlement. The form of settlement is specified at the time of the ISDA organised auction used to determine the final recovery price of the deliverable obligations. This can take the form of physical or cash settlement and one of the purposes of the auction is to ensure that both have the same economic value.

- Physical settlement: Following the ISDA auction, a protection buyer who elects for physical settlement will submit a facevalue amount of bonds into the auction and receive a payment of 100 on the same facevalue. A protection seller who elects for physical settlement will end up receiving a deliverable obligation and paying par. In general there is a choice of deliverable obligations from which the protection buyer can choose. These deliverable obligations will satisfy a certain number of characteristics that typically include restrictions on the maturity of the deliverable obligations and the requirement that they be part passu—most default swaps are linked to senior unsecured debt. Typically, they include both bonds and loans. If deliverable obligations trade with different prices following a credit event, which they are most likely to do if the credit event is a restructuring, the protection buyer can take advantage of this situation by buying and delivering the cheapest deliverable. The protection buyer is therefore long a cheapest to deliver (CTD) option.

- Cash settlement: A protection buyer who opts for cash settlement receives par minus the recovery price on his face value. The recovery price is the one determined by the ISDA auction. The protection seller pays par minus the same recovery price.


CDS spreads are typically quoted for a variety of maturities with most liquidity at the five-year maturity followed by the three-year and seven-year maturities. The bid is the spread at which the dealer is willing to buy protection, while the offer is the spread at which the dealer is willing to sell protection. Clearly, the bid spread will be less than the offer spread. Note that this is opposite to the convention for bonds where the bid spread is the spread at which the dealer is willing to buy the bond and this will be higher than the offer spread. This is because the buyer of a bond is selling protection, while the buyer of a CDS is buying protection.

# Illustration

Suppose a protection buyer purchases 5-year protection on a company at a default swap spread of 200bp. The face value of the protection is  \$10 million. The protection buyer therefore makes quarterly payments approximately equal to\$ 10 million × 0.02 × 0.25 = \$50,000. (The exact payment amount is a function of the calendar and basis convention used.) After a short period the reference entity suffers a credit event. Assuming that the subsequent ISDA auction which takes place within 2 months of the credit event determines a recovery price of \$35 per 100 of face value, the payments are as follows:

- The protection seller compensates the protection seller for the loss on the face value of the asset received by the protection buyer. This is equal to  $10 million \times (100\% - 35\%) = \$ 6.5$ million.
- The protection buyer pays the accrued premium from the previous premium payment date to time of the credit event. For example, if the credit event occurs after a month then the protection buyer pays approximately \$10 million × 0.02 × 1/12 = \$16,666 of premium accrued. Note that this is the standard for corporate reference entity linked default swaps.

# The Mechanics of Settlement

The timeline around the physical settlement of a CDS following a credit event consists of three steps:

1. A CDS market participant who has previously signed up to the ISDA protocols submits a request to the ISDA determinations committee asking whether or not a credit event has occurred on a specified reference entity. The event must be evidenced by at least two sources of publicly available information (e.g., a news article on Reuters, the Wall Street Journal, the Financial Times or some other recognized publication or electronic information service). The determinations committee, which consists of both buy and sell-side representation then has to decide whether or not the credit event has occurred. An  $80\%$  supermajority is needed to approve any decision. If it is determined that a credit event has occurred, the process leading to the ISDA auction is then begun.
2. The ISDA then begins compiling a list of the deliverable obligations and publishes the details of the auction which will take place in order to determine the recovery price. If the credit event is a bankruptcy or a failure to pay then CDS contracts are automatically triggered. However if the event is a restructuring, CDS protection buyers can decide whether to trigger their contract or not – if they decide not to trigger then the contract can be used later if a bankruptcy or failure to pay occurs. In Europe, the settlement of a restructuring event is also complicated by the fact that standard CDS contracts with different maturities can have different baskets of deliverable obligations and separate auctions will be needed to determine their final recovery price for each basket.
3. The auction takes place. CDS market participants who have positions in the triggered contracts need to decide whether or not to settle physically or in cash. Buyers and sellers of CDS protection can choose physical settlement even if their trade counterparty chose cash settlement, and vice-versa. The various dealers through whom market participants trade then bring all of these positions plus their own positions into an auction at the end of which only the net position – the net open interest – will be transferred, thereby averting any short squeeze which may be caused if the gross notional of CDS positions exceeds the outstanding notional of deliverable obligations. Dealers can then submit bids or offers on the net open interest of physical obligations, which may be long or short. At the end of this auction procedure, a recovery price is determined. All CDS contracts are then automatically settled at this recovery price.


As a result, the maximum delay between notice of a credit event and the actual payment of the protection is approximately 72 calendar days.

# CREDIT EVENTS

The most important section of the documentation for a default swap is what the parties to the contract agree constitutes a credit event that will trigger a payment by the protection seller to the protection buyer. Definitions for credit events are provided by the International Swap and Derivatives Association (ISDA). First published in 1999, there have been periodic updates and revisions of these definitions. The most recent, and one of the most important updates of the ISDA documentation for credit default swaps was the introduction of the Big Bang protocol in 2009. These were are response to the Financial Crisis of 2008 and were intended to streamline the process of determining and settling a credit event. They were also intended to enable the migration of CDS trades to centralised counterparties by increasing fungibility.

# ISDA Credit Event Definitions

Of the eight possible credit events referred to in the 1999 ISDA Credit Derivative Definitions, the ones typically used within most contracts are listed in Table 1. In terms of which are used,

Table 1 Credit Events Typically Used within Most CDS Contracts

<table><tr><td>Credit Event</td><td>Description</td></tr><tr><td>Bankruptcy</td><td>Corporate becomes insolvent or is unable to pay its debts. The bankruptcy event is of course not relevant for sovereign issuers.</td></tr><tr><td>Failure to pay</td><td>Failure of the reference entity to make due payments, taking into account some grace period to prevent accidental, triggering due to administrative error.</td></tr><tr><td>Restructuring</td><td>Changes in the debt obligations of the reference creditor but excluding those that are not associated with credit deterioration such as a renegotiation of more favorable terms.</td></tr><tr><td>Obligation acceleration/obligation default</td><td>Obligations have become due and payable earlier than they would have been due to default or similar condition. Obligations have become capable of being defined due and payable earlier than they would have been due to default or similar condition. This is the more encompassing definition and so is preferred by the protection buyer.</td></tr><tr><td>Repudiation/moratorium</td><td>A reference entity or government authority rejects or challenges the validity of the obligations.</td></tr></table> the market distinguishes between corporate- and sovereign-linked CDSs. For corporate-linked CDSs the market standard is to use just three credit events—bankruptcy, failure to pay, and restructuring. For sovereign-linked CDSs, obligation acceleration/default and repudiation/moratorium are also included.

Source: ISDA.


# Restructuring Controversy

Restructuring means a waiver, deferral, restructuring, rescheduling, standstill, moratorium, exchange of obligations, or other adjustment with respect to any obligation of the reference entity such that the holders of those obligations are materially worse off from either an economic, credit, or risk perspective. It has been the most controversial credit event that may be included in a default swap.

In bankruptcy or failure to pay, pari passu assets trade at or close to the same recovery value. But restructuring is different. Following a restructuring, debt continues to trade. Short-dated bonds trade at higher prices than longer-dated bonds, bonds with large coupons trade at a higher price than bonds with low coupon. Loans, which are typically also deliverable, tend to trade at higher prices than bonds due to their additional covenants.

This makes the delivery option that is embedded in a default swap potentially valuable. A protection buyer hedging a short-dated high coupon asset may find that following a restructuring credit event it is trading at, say, \$80 while another longer-dated deliverable may be trading at \$65. By selling the \$80 asset, purchasing the \$65 asset, and delivering it into the CDS, the protection buyer may make a \$15 windfall gain out of the delivery option. However, this gain is made at the expense of the protection seller who has to take ownership of the \$65 asset in return for a payment of par.

Such a situation arose in the summer of 2000 when the U.S. insurer Conseco restructured its debt. At that time, the range of deliverable obligations following a restructuring event was the same as those used for bankruptcy or failure to pay. This meant that bonds or loans with a maximum maturity of 30 years could be delivered. Protection sellers were displeased at being delivered long-dated low-priced bonds in the price range 65 to 80 by banks who held much higher-priced short-term loans. In addition, it was believed that there was a conflict of interest—banks who exercised their default swaps had also been party to the restructuring of Conseco's debt.

The results of this experience led to the market discussing a restructuring supplement to the standard ISDA documentation. This was completed on May 11, 2001, and introduced a new restructuring definition called modified restructuring (mod-re). The essence of this was to reduce the range of deliverable obligations following a restructuring event and so limit the value of the delivery option.

Although adopted by the North American market between 2002 and 2009, this standard has now become redundant for the standard North American contract (SNAC) since restructuring is no longer one of the standard triggering credit events. Europe has retained the restructuring credit event. However the basket of allowed deliverable obligations is determined by the Modified Modified Restructuring clause which effectively limits the maturity of these obligations to the greater of the maturity of the CDS contract and 60 months. Credit default swaps linked to Asian corporate credits continue to include restructuring as a credit event. They also retain the old style rules about what can be delivered, allowing all bonds and loans of the appropriate seniority and with a maximum maturity of 30 years. A summary description of the different standard market contracts by geographical region is shown in Table 2.

Where the same credit trades with different restructuring conventions, these different contract standards should be reflected in the quoted market spreads. For example,

Table 2 Different Restructuring Standards by geographic region.

<table><tr><td>Region</td><td>Description</td></tr><tr><td>North America</td><td>The standard North American contract (SNAC) now trades without restructuring as a credit event.</td></tr><tr><td>Europe</td><td>Both CDS and CDS indices trade with bankruptcy, failure to pay and restructuring. In the case of restructuring, the deliverable obligations are determined according to the Modified Restructuring clause which limits the maturity of deliverables to the maximum of the maturity of the CDS and 60 months.</td></tr><tr><td>Asia</td><td>Both CDS and CDS indices trade with bankruptcy, failure to pay and restructuring. Following a restructuring event the only limit on deliverables is the old-style limit of a maximum maturity of 30 years.</td></tr></table> modified-modified restructuring allows the protection buyer to have a broader range of deliverables than modified restructuring. This means that the value of the delivery option is greater for mod-mod-re than for mod-re and so the protection should trade at a wider spread for the more valuable delivery option. More generally, there should be a strict theoretical relationship between these spread levels of

Source: ISDA.


$$
\begin{array}{l} \operatorname{Sp re ad}_{\text{Ol d -R e}} > \operatorname{Sp re ad}_{\text{Mo d -M od -R e}} > \operatorname{Sp re ad}_{\text{Mo d -R e}} \\ > \operatorname{Sp re ad}_{\mathrm{No -R e}} \\ \end{array}
$$

In this entry, the aim is not to determine what the spread differences should be, but to price contracts of a given type given the corresponding curve of market spreads.

# Credit Events and Implementation of Default Swap Pricing Models

In the pricing model presented in this entry, we refer to "default." By this we mean any of the credit events included in the CDS contract. This means that the value of a contract will depend on which credit events are included in a particular trade.

While the model presented handles any of the credit events that may be selected by the parties to a trade, the data required are typically drawn from databases that collect defaults defined in a different way than those set forth by ISDA credit event definitions. For example, major studies regarding default rates and recovery rates, as well as default times, define default in terms of the legal definition of default. In contrast, consider restructuring. Suppose that full restructuring is included in a trade as a credit event. Then a reduction in a reference obligation's interest rate that is material is a credit event. In fact, actions by lenders to modify the terms of a reference obligation without a bankruptcy proceeding are not uncommon. Yet, they are not included (or even known) to researchers who compile data on defaults.

The key point is that in the implementation stage, the inputs must be modified based on the credit events included in a trade.

# PRICING CREDIT DEFAULT SWAPS BY STATIC REPLICATION

There is a fundamental relationship between the default swap market and the cash market in the sense that a default swap can be shown as being economically equivalent to a combination of cash bonds. This cash-CDS relationship means that determination of the appropriate default swap spread for a particular credit usually begins by observing the London Interbank Offered Rate (LIBOR) spread at which bonds of that issuer trade. The usual comparison is to look at what is called the par asset swap spread of a bond of a similar maturity to the default swap contract. This is the spread over LIBOR paid by a package containing a fixed-rate bond and interest rate swap purchased at par. This spread can easily be calculated.2

Since 2009, CDS contracts have traded with fixed premiums. Prior to this, any new CDS contract would have its premium set at initiation so that the contract would have zero initial value. In order to facilitate moves towards a centralised counterparty for CDS, in 2009 the market decided that all contracts on a specific reference entity, regardless of their maturity and when they were traded will trade with the same fixed premium. The value of this fixed premium is different for different reference entities. In the US it is 100bp for investment grade credits and 500bp for high-yield credits. A similar convention exists in Europe with additional spreads levels. The effect of this is that CDS contracts no longer have zero value at initiation. This is actually not a radical change – it simply means that new contracts have to be valued in the same way that seasoned CDS contracts were valued in the past. However, it does mean that the old CDS-bond static replication argument becomes less realisable.

Since it is a fixed number through time, the premium spread on the CDS linked to some reference entity no longer reflects the market implied credit risk of the reference entity at the time of the trade. That information is now embedded in the upfront cost of the CDS. But this cost is not a spread measure and is difficult to use to compare the market implied credit risk across different credits and different maturities. Instead, the market has created a new spread measure known as the par CDS spread. This is defined as the coupon on a fictional CDS which would give it a zero initial value today. It is the old CDS premium now reborn as a spread measure. The following static replication argument is therefore based on such a fictional CDS contract where the spread S is set so that the contract has zero initial value. The reason for doing this is that we wish to understand the relationship between this par spread and the par asset swap spread. Note also that the standard model which we will describe later is the mechanism used to convert the upfront cost of a CDS contract to a par spread and vice-versa.


The premium payments in a default swap contract are defined in terms of a default swap spread,  $S$ , which is paid periodically on the protected notional until maturity or a credit event. It is possible to show that the default swap spread can, to a first approximation, be proxied by a par floater bond spread (the spread to LIBOR at which the reference entity can issue a floating rate note of the same maturity at a price of par) or the asset swap spread of an asset of the same maturity provided it trades close to par.

To see this, consider a strategy in which an investor buys a par floater issued by the reference entity with maturity  $T$ . The investor can hedge the credit risk of the par floater by purchasing protection to the same maturity date. Suppose this par floater (or asset swap on a par asset) pays a coupon of LIBOR plus  $F$ . Default of the par floater triggers the default swap, as both contracts are written on the same reference entity. With this portfolio the investor is effectively holding a default-free investment, ignoring counterparty risk.

The purchase of the asset for par may be funded on balance sheet or on repo—in which case we make the assumption that the repo rate can be locked in to the bond's maturity. The resulting funding cost of the asset is LIBOR plus

$B$ , assumed to be paid on the same dates as the default swap spread  $S$ . Consider what happens in the following scenarios:

No credit event—The hedge is unwound at the bond maturity at no cost since the protection buyer receives the par redemption from the asset and uses it to repay the borrowed par amount.

Credit event—The protection buyer delivers the reference asset to the protection seller in return for par. If we assume that the credit event occurs immediately following a coupon payment date, then the cost of closing out the funding is par, which is repaid with this principal. The position is closed out with no net cost.

Both scenarios are shown in Figure 1. As the hedged investor has no credit risk within this strategy they should not earn (or lose) any excess spread. This implies that  $S = F - B$ ; that is, the default swap spread should be equal, to the par floater spread minus the funding cost of the cash bond. For example, suppose the par floater pays LIBOR plus 25 basis points and the protection buyer funds the asset on balance sheet at LIBOR plus 10 basis points. For the protection buyer the breakeven default swap spread equals  $F - B = 25 - 10 = 15$  basis points.

This analysis certainly shows that there should be a close relationship between cash and default swap spreads. However, the argument is not exact as it relies on several assumptions that could result in small but observable differences. Some are listed below:

1. We have assumed the existence of a par floater with the same maturity date as the default swap and that the coupon on the default swap contract has been set so that it has zero initial value.
2. We have assumed a common market-wide funding level of  $\mathrm{LIBOR} + B$ . In practice, different market participants have different funding costs which therefore imply different spread levels.
3. We have assumed repo funding to term. Repo funding cannot usually be locked in to term but only for short periods of a couple of months only. One attraction of CDS is that unlike cash, they effectively lock in funding at LIBOR flat to maturity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/ceedc85607a33b024736f631f8021b5af1e3ef0cfab37c83ed808716d9df5ff9.jpg)
Figure 1 Theoretical Default Risk-Free Hedge for an Investor Who Buys Protection

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/a58bd91c2c8d7010f753512dcd7b0d9b1fb9c5d5ad17e5d4204f385a0902ef3c.jpg)


4. We have ignored accrued coupons. If the credit event occurs just before a coupon payment on the funding leg, the protection does not cover the loss of par plus coupon on the funding leg. We have also ignored the effect of the accrued CDS premium payment from the previous payment date.
5. We have assumed that the par floater is the cheapest-to-deliver asset.
6. We have ignored counterparty risk on the CDS. This is usually mitigated through the use of collateral.
7. Due to the difficulty of shorting cash bonds, any widespread market demand to go short a particular credit will first impact CDS, causing spreads to widen before cash.
8. For asset swaps the initial price of the asset must be close to par. This is because the loss on an asset swap of a bond trading with a full price  $P$  is about  $P - R$ . The credit risk is then only comparable to a default swap when the asset trades close to par.
9. We have ignored transaction costs.

Despite these assumptions, cash market spreads usually provide the starting point for where the default swap spreads should trade.

Empirically, there is a high correlation between the two spread levels. The difference between where and cash LIBOR spreads trade is known as the default swap basis, defined as

$$
\text{De fa ul ts wa pb as is} = S - F
$$

There are now a significant number of market participants who actively trade the default swap basis, viewing it as a new relative value opportunity.3

# PRICING OF A SINGLE-NAME CREDIT DEFAULT SWAP

# Reduced versus Structural Models

To value credit derivatives it is necessary to be able to model the default risk, the recovery rate risk and the effect of interest rates. The two most commonly used approaches to model credit risk are structural models and reduced form models. The first structural model for credit-risky bonds was proposed by Black and Scholes (1973) who explained how equity owners hold a call option on the firm. After that Merton (1973 and 1974) extended the framework and analyzed the behavior of risky debt using the model.

The second type of credit models, known as reduced-form models, are more recent. These models, most notably the Jarrow-Turnbull model and Duffie-Singleton model, do not look inside the firm. Instead, they model directly the likelihood of a default occurring. Not only is the current probability of default modeled, they also attempt to model a "forward curve" of default probabilities that can be used to price instruments of varying maturities. Characterizing default as an event that occurs with a modeled probability has the effect of making default a surprise—the default event is a random event, which can suddenly occur at any time. All we know is its probability.


Reduced-form models are easy to calibrate to the term structure of CDS prices observed in the marketplace. This is known as working in an "arbitrage-free" framework. It is only by ensuring that a pricing model fits the market that a trader can be sure that he does not quote prices that expose him to any price arbitrages. The ability to quickly and easily calibrate to the entire CDS market is the major reason why reduced-form models are strongly favored by real-world practitioners in the credit derivatives markets for pricing. Structural-based models are used more for default prediction and credit risk management.

Increasingly, investors are seeking consistency between the markets that use different modeling approaches, as the interests in seeking arbitrage opportunities across various markets grows. Chen (2003) has demonstrated that all the reduced-form models described above can be regarded in a nonparametric framework. This nonparametric format makes the comparison of various models possible. Furthermore, as Chen contends, the nonparametric framework focuses the difference of various models on recovery.

The basic framework that underlies the reduced-form model is a binomial default process. There are two branches at each time point on the tree: default and survival. The branches that lead to default will terminate the contract and incur a recovery payment. The branches that lead to survival will continue the contract that will then face future defaults. This is a very general framework to describe how default oc curs and contract terminates. Various models differ in how the default probabilities are defined and the recovery is modeled.


Reduced form models use risk-neutral pricing to be able to calibrate to the market. In practice, we need to determine the risk-neutral probabilities in order to reprice the market and price other instruments not currently priced. In doing so, we do not need to know or even care about the real-world default probabilities.

Since in reality, a default can occur any time, to accurately value a default swap, we need a consistent methodology that describes the following: (1) when defaults occur, (2) how recovery is paid, and (3) how discounting is handled.

# Survival Probability

Assume the risk-neutral probabilities exist. Then we can identify a series of risk-neutral default probabilities so that the weighted average of default and no-default payoffs can be discounted at the risk-free rate. The risk-free rate used in the pricing of CDS is LIBOR. This is because within a derivatives framework, the risk-free rate is close to the rate at which market dealers fund their hedges.

Assume  $Q(t)$  to be the survival probability from now till some future time  $t$ . Then  $Q(t) - Q(t + \tau)$  is the default probability between  $t$  and  $t + \tau$  (that is, survive till  $t$  but default before  $t + \tau$ ). Assume defaults can only be observed at multiples of  $\tau$ . Then the total probability of default over the life of the CDS is the sum of all the per period default probabilities:

$$
\sum_{j = 1}^{n} Q [ (j - 1) \tau ] - Q (j \tau) = 1 - Q (n \tau) = 1 - Q (T)
$$ where  $Q(0) = 1.0$  and  $n\tau = T$ , the maturity time of the CDS. It is no coincidence that the sum of the all the per-period default probabilities should equal one minus the total survival probability.


The survival probabilities have a useful application. A \$1 "risky" cash flow received at time  $t$  has a risk-neutral expected value of  $Q(t)$  and a present value of  $P(t)Q(t)$  where  $P$  is the risk-free discount factor.


The value of the protection leg of a CDS is the present value of the payment of  $(1 - R)$  at default. To take into account the timing of the default payment  $(1 - R)$ , we break the time to maturity into  $n$  intervals which correspond to the premium payment dates on the premium leg. This is a simple numerical approximation which works well given the quarterly payment convention of CDS. However a more exact model would break the time to maturity into monthly or even weekly time steps. For each time period we consider the probability of defaulting in each. The probability of defaulting in a forward interval  $[(j - 1)\tau ,j\tau ]$  is given by

$$
Q [ (j - 1) \tau ] - Q (j \tau) \tag {1}
$$

We then discount the payment of  $(1 - R)$  back to today by multiplying it by the risk-free discount factor  $P(t)$ . We then consider the likelihood of default occurring in all of the intervals by summing over all intervals. We therefore have

$$
V = (1 - R) \sum_{j = 1}^{n} P (j \tau) \{Q [ (j - 1) \tau ] - Q (j \tau) \} \tag {2}
$$ where  $R(\cdot)$  is the expected recovery rate determined by a CDS auction which takes place soon after a credit event rate.


In the above equation, it is implicitly assumed that the discount factor is independent of the survival probability. In reality, these two may be correlated—usually higher interest rates lead to more defaults because businesses suffer more from higher interest rates. To account for this we would need to introduce a stochastic probability and interest rate model. However, the effect of this correlation is almost negligible on the valuation of CDS and is further reduced by calibration. Equation (2) has no easy solution. $^6$

Premium payments on the premium leg of a CDS terminate as soon as a credit event occurs. As a result the expected present value of the premium leg of the default swap is given by discounting each of the expected spread payments by the risk-neutral discount factor weighted by the probability of surviving to each payment date. This is given by


$$
S \sum_{j = 1}^{N} \Delta_{j} P (j \tau) Q (j \tau)
$$ where  $\Delta_{j}$  is the corresponding year fraction in the appropriate basis convention (typically actual 360). By definition the value of the default swap spread is the value at which the premium and protection legs have the same present value. Hence, we have


$$
V = S \sum_{j = 1}^{n} \Delta_{j} P (j \tau) Q (j \tau)
$$ giving


$$
S = \frac{V}{\sum_{j = 1}^{n} \Delta_{j} p (j \tau) Q (j \tau)} \tag {3}
$$ rate for senior unsecured US corporate bonds – most CDS are linked to bonds which are senior unsecured.

Figure 2 depicts the general default and recovery structure. The payoff upon default of a default swap is par minus the recovery value as determined by any future ISDA auction which takes place after a credit event. As of today, the value of this recovery is unknown, we do not even know if a credit event will occur. As our model is based on the expected value of the protection leg, the recovery rate used has to be the expected value of the recovery rate conditional on a default and for this, market practitioners refer to historical recovery rates. Market convention is to use a  $40\%$  recovery rate as this is close to the average historical recovery

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/26e5644c6b2fd27822ea97485bc3ead15b772d6dde489bfefcdf48d57a0972e5.jpg)
Figure 2 Payoff and Payment Structure of a CDS where as a simple approximation we assume that a credit event can only occur on a CDS premium leg payment date. In practice the credit even can occur at any time and the market standard model would take this into account.


In practice the portion of the premium payment that has accrued from the previous coupon payment date is paid by the protection buyer following the credit event. We have ignored it in our analysis since its effect on the calculated spread is small.7

# Valuation of a Credit Default Swap

The valuation of CDS can be broken down into two separate tasks. The first is the determination of the default swap spread, which should be paid by a protection buyer at the initiation of a trade. This has already been discussed. The second is to determine the value of an existing CDS position, which we call the mark-to-market (MTM) or the upfront value. They are the same.

Since the recouponing of CDS contracts in 2009, we can no longer state that the MTM or upfront of a new trade is always zero. The effect of fixing the premium leg coupon means that the risk of the reference entity must now be embedded in the initial cost of protection.

Once a CDS position has been established, changes in the current market CDS spread will mean that the MTM begins to deviate from its initial value and must be determined by observing the current level of default swap spreads in the market. To see how this is done, consider the following example.

An investor sells protection on a high yield reference entity for five years at an agreed contractual spread of 500 basis points. By selling protection the investor is assuming the credit risk of the reference entity as though he was buying one of the reference entity's issued bonds. A year later the reference entity's credit rating has improved and the market quoted 4-year par CDS spread is at 100 basis points. What is the MTM or upfront value of the position?

To begin with, the MTM value of the contract to the investor is given by the difference between what the investor is expecting to receive minus what they are expected to pay. As a result we can write


MTM = + Present value of four years of risky premium payments of 500 basis points - Present value of protection for the remaining four years

We can also write that the current four-year par CDS spread of 100 basis points is the current break-even spread. By definition, the current value of a new four-year "par" CDS contract with a coupon equal to the par CDS spread is zero so we can write

Present value of four years of risky premium payments of 100 basis points  $=$  Present value of protection for the remaining four years

Substituting, we write

MTM = +Present value of four years of risky premium payments of 500 basis points - Present value of four years of risky premium payments at 100 basis points which can be rewritten as


MTM = +Present value of four years of risky premium payments of 400 basis points

To go any further we have to compute the expected present value of these 400-basis points payments. However these payments are only made until the maturity of the CDS or to the time of a credit event, whichever occurs first. To compute the MTM we therefore need to weight each premium payment by the probability that there is no credit event up until that payment date. We therefore write

$$
\mathrm{MT M} = 4 0 0 \text{ba si sp oi nt s} \times \mathrm{RP V0 1}
$$ where the RPV01 is the "risky" price value of a basis point (PV01). This is defined as the present value of a 1 basis points payment made until the contractual maturity date of the position or to


the date of a credit event, whichever is sooner. Mathematically, we can write the RPV01 as

$$
\mathrm{RP V} 0 1 = \sum_{j = 1}^{n} \Delta_{j} p (j \tau) Q (j \tau)
$$ where  $\Delta_{j}$  is the year fraction for the payment  $j$  in the appropriate basis (typically Actual 360). For quarterly paying CDS,  $\Delta_{j}$  is usually close to or equal to 0.25. Bringing this all together, we can write the MTM value of a long protection position as


$$
\mathrm{MT M} = + [ S (t, T) - S (0, T) ] \times \mathrm{RP V0 1} [ S (t, T), R ]
$$ and that of a short protection position as


$$
\mathrm{MT M} = - [ S (t, T) - S (0, T) ] \times \mathrm{RP V0 1} [ S (t, T), R ]
$$ where  $S(0,T)$  is the contractual spread of the contract,  $T$  is the contractual maturity date and  $S(t,T)$  is the current par CDS spread to the contractual maturity date. It is essential to note that the RPV01 is a function of the market spread  $S(t,T)$  and the assumed recovery rate  $R$  since both are used to imply out the risk-neutral survival probabilities.


To crystallize all of this theory, we present in Table 3 the valuation of the trade introduced at the beginning of this section in which an investor sells 10 million of five-year protection at 500 basis points and then wishes to mark it to market one year later when the market has a flat term structure at 100 basis points. For simplicity we have assumed a flat LIBOR term structure at 2.5\%. We assume a recovery rate of 40\%. In particular we show the quarterly coupon payment dates (we have ignored holidays and weekends for simplicity) and the corresponding values of P and Q, calibrated to reprice the term structure of default swap spreads.

We see that the current par CDS spread is 100 basis points, and that the risky PV01 of the position is 3.7247—the present value of four years of risky 1 basis points payments is 3.7247 basis points. The resulting MTM value is 1,489,892. This makes sense. The market has valued the risk of four year protection on the reference entity at 100bp in spread terms, but the fixed

Table 3 An Illustration of Calculation of the MTM Value

<table><tr><td colspan="4">Long or short protection</td><td>Short</td></tr><tr><td colspan="3">Notional ($)</td><td>10,000,000</td><td></td></tr><tr><td colspan="3">Contractual Spread (bp)</td><td>500</td><td></td></tr><tr><td colspan="3">Settlement Date</td><td>20-Mar-13</td><td></td></tr><tr><td colspan="3">Maturity Date</td><td>20-Mar-17</td><td></td></tr><tr><td colspan="3">Flat LIBOR</td><td>2.50\%</td><td></td></tr><tr><td colspan="3">Par CDS Spread (bp)</td><td>100</td><td></td></tr><tr><td colspan="3">Recovery Rate</td><td>40\%</td><td></td></tr><tr><td>Payment Dates</td><td>YearFrac</td><td>Premium Leg Flows</td><td>Q(t)</td><td>P(t)</td></tr><tr><td>20-Mar-13</td><td></td><td></td><td>1.00000</td><td>1.00000</td></tr><tr><td>20-Jun-13</td><td>0.25556</td><td>127,778</td><td>0.99575</td><td>0.99372</td></tr><tr><td>20-Sep-13</td><td>0.25556</td><td>127,778</td><td>0.99152</td><td>0.98748</td></tr><tr><td>20-Dec-13</td><td>0.25278</td><td>126,389</td><td>0.98735</td><td>0.98135</td></tr><tr><td>20-Mar-14</td><td>0.25000</td><td>125,000</td><td>0.98324</td><td>0.97533</td></tr><tr><td>20-Jun-14</td><td>0.25556</td><td>127,778</td><td>0.97906</td><td>0.96920</td></tr><tr><td>20-Sep-14</td><td>0.25556</td><td>127,778</td><td>0.97490</td><td>0.96312</td></tr><tr><td>20-Dec-14</td><td>0.25278</td><td>126,389</td><td>0.97080</td><td>0.95714</td></tr><tr><td>20-Mar-15</td><td>0.25000</td><td>125,000</td><td>0.96677</td><td>0.95126</td></tr><tr><td>20-Jun-15</td><td>0.25556</td><td>127,778</td><td>0.96266</td><td>0.94529</td></tr><tr><td>20-Sep-15</td><td>0.25556</td><td>127,778</td><td>0.95857</td><td>0.93936</td></tr><tr><td>20-Dec-15</td><td>0.25278</td><td>126,389</td><td>0.95454</td><td>0.93352</td></tr><tr><td>20-Mar-16</td><td>0.25278</td><td>126,389</td><td>0.95053</td><td>0.92773</td></tr><tr><td>20-Jun-16</td><td>0.25556</td><td>127,778</td><td>0.94649</td><td>0.92190</td></tr><tr><td>20-Sep-16</td><td>0.25556</td><td>127,778</td><td>0.94246</td><td>0.91612</td></tr><tr><td>20-Dec-16</td><td>0.25278</td><td>126,389</td><td>0.93850</td><td>0.91043</td></tr><tr><td>20-Mar-17</td><td>0.25000</td><td>125,000</td><td>0.93460</td><td>0.90484</td></tr><tr><td>20-Jun-17</td><td>0.25556</td><td>127,778</td><td>0.93063</td><td>0.89916</td></tr><tr><td>Prot Leg PV</td><td>372,473</td><td></td><td></td><td></td></tr><tr><td>Risky PV01</td><td>3.7247</td><td></td><td></td><td></td></tr><tr><td>Replication Spread (bp)</td><td>100.00</td><td></td><td></td><td></td></tr><tr><td>Contract MTM</td><td>1,489,892</td><td></td><td></td><td></td></tr></table> coupon is 500bp. A new investor wanting to sell four year protection is therefore being overcompensated and to correct for this, has to pay a large upfront cost.


# CDS Risk and Sensitivities

Market practitioners using CDS usually consider two risk measures. First is the Credit01 or Spread01. This is the change in the MTM value of a CDS position for a 1 basis points parallel shift in the CDS curve. Then there is the Interest Rate 01 which is the change in the MTM value of a CDS position for a 1 basis points change in LIBOR. In practice the LIBOR sensitivity of a CDS is small, usually at least an order of magnitude less than that of the Credit01. This reflects the fact that a CDS is almost a pure credit play.

It is actually possible to make some simple approximations that make clear the dependence of the MTM on these inputs. First, we can approximate the CDS spread in terms of the risk-neutral annualized default probability  $p$ , and assumed recovery rate  $R$ , using the equation  $S = p(1 - R)$ . The interpretation is that the annualized spread received for assuming a credit risk should equal the annualized default probability times the loss on default, which in a CDS equals  $(100\% - R)$ . This approximation works very well in practice. If we assume a flat term structure of CDS spreads, approximate  $\Delta$  with  $1/4$ , then we can approximate the MTM of a long protection position as

$$
\mathrm{MT M} = \frac{[ S (t , T) - S (0 , T) ]}{4} \sum_{j = 1}^{N} P (j \tau) \left[ 1 - \frac{S (t , T)}{1 - R} \right]^{j / 4}
$$

We can immediately draw a number of conclusions from this mathematical expression for the MTM value. First, the MTM value is not a linear function of the market spread  $S(t,T)$ . In fact the MTM value of a short protection position is convex in the market spread, just as the price of a corporate bond is convex in the yield. Furthermore, it is also clear that the recovery rate sensitivity of the MTM value is large when the market spread is large. This means that where the market spread is below, say, 300 basis points, one does not have to be so precise about the recovery rate assumption. However, if spreads become large (say, 300 basis points and above) the recovery rate sensitivity becomes increasingly significant and care must be taken in making a recovery rate assumption.

# Calibrating the Recovery Rate Assumption

To be precise, the recovery rate assumption,  $R$ , is the assumed price of the cheapest-to-deliver asset into the CDS contract within 72 calendar days of the notification of the credit event. This is not known today. Nor can it be extracted from any market prices. In theory, this would be pos sible given the existence of an active and liquid digital default swap market. A digital default swap is a contract that pays the face value in the event of default—it is like a standard default swap but instead assumes a fixed recovery rate of zero. The ratio of the normal CDS spread and the digital default swap spread would equal  $(1 - R)$ . However, the lack of liquidity of the digital market makes this calibration approach impractical.


The usual starting point for calibrating recovery rates is to observe rating agency statistics. Both Moody's and S&P maintain significant databases of U.S. corporate bond defaults. Care must be taken to adjust any average recovery rates for country and sector effects. Recovery rates also have a link to the economic cycle. In recent years, average recovery rates have fallen well below the long-term averages computed by rating agencies. One reason why this is so is that Moody's, for example, defines the recovery rate of a bond as the price of that bond within some short period following the default. It is not the final value received by holders of the bond after going through the workout process. This means that the recovery rate is driven by the size of the bid for the bond in the distressed debt market. In periods of credit weakness, the distressed debt market is unable to absorb the oversupply of defaulted assets and the bid consequently falls.

Another consideration when marking recovery rate assumptions is to take into account that following a restructuring event, which is not a full default, the deliverable obligations may trade at higher prices than in a full default. Since rating agencies do not consider restructuring as a full default, this effect is not accounted for in their statistics. Typical recovery rates being quoted in the market for good quality credits vary between  $30\%$  and  $45\%$ .

When spreads are trading at very high levels of 1,000 basis points and above, it is important to look to the bond market to see if bond prices are revealing any information about the expected recovery rate in the event of a default. For example, a recovery rate assumption of  $40\%$  would make no sense if one of the deliverable bonds into the CDS is trading at 30 cents on the dollar. In this case, the recovery rate assumption should clearly be moved below  $30\%$ .


# The Practicalities of Unwinding a Credit Default Swap

A CDS is an over-the-counter (OTC) derivative contract. This means that unlike some other derivatives contracts it is not exchange traded. Instead it involves an agreement between two counterparties. As almost all CDS are traded within the framework of the ISDA Master Agreement, there is widespread standardization of the documentation of CDS and many counterparties are happy to trade these bilateral contracts in what is effectively a secondary market. To unwind a CDS before its maturity date, an investor may consider one of three courses of action:

1. Negotiate a cash upfront price with the original counterparty. The price should be the same as the MTM value calculated according to the model. In practice a bid-offer spread will have to be crossed. Part of this negotiation may involve some exchange of information as to the recovery rate assumptions used by both counterparties.
2. If the investor is shown a better upfront price by a counterparty different to the one with whom the initial trade was executed, they can ask to have the contract reassigned to this other counterparty and then close it out for a cash unwind value.
3. They may choose to enter into an offsetting position. For example, an investor who has sold protection for five years may decide a year later to close out the contract by selling protection for four years. The value of this combined position should exactly equal the model market to market.

Which one of these choices is made is usually determined by which is showing the best price.

Prior 2009 we would have said that option 3 is different from the others because it leaves the CDS holder with an ongoing position consisting of a future stream of risky cashflows equal to the difference between the spread of the initial contract and that of the new unwind contract. However now that CDS contracts on the same reference entity all trade with the same coupon, option 3 actually now leaves the parties with no net cashflows as both coupon streams will cancel eachother. Instead the CDS unwind value is realised through the upfront cost of the offsetting position and will be the same as options 1 and 2.

The matching of coupons means there is no economic value in retaining both positions and both positions can be cancelled. Indeed this effect was the purpose of fixing CDS coupons since it means that in future, major dealers in CDS will no longer be left with many tens of thousands of legacy partially offsetting positions and their associated counterparty risk. This reduces the gross notional of the CDS market and should reduce fears, unfounded or not, about systemic risk. It may also help to facilitate any future plans to migrate CDS contracts from the OTC market to an exchange traded market.

# KEY POINTS

- There is a fundamental no-arbitrage relationship that links the pricing of credit default swaps and the bonds which they reference. Various market and contractual differences mean that this relationship is not strictly obeyed at all times. However material deviations from this relationship should not persist.
- Since the recouponing of CDS contracts in 2009, CDS contracts no longer trade with zero initial value. The valuation of a CDS contract has become the process of determining the upfront value of a contract.
- A pricing model for CDS contracts needs to take into account the different factors that drive the pricing of CDS. These include the market implied term structure for the probability of survival/default, the expected recovery price if there is a credit event, and the level of interest rates used to discount future cashflows.


- The role of the standard valuation model set out in this chapter is to determine this upfront value. As market prices are actually quoted in the form of a term structure of CDS par spreads, the model must be able to exactly refit these par spreads and to then use the implied survival curve plus assumptions about the expected recovery price to determine the upfront value of any given CDS contract.
- An implementation of the standard pricing model has been produced by the ISDA and is available from www.cdsmodel.com.


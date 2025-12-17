
# Stochastic Volatility

ANATOLIY SWISHCHUK, PhD

Professor of Mathematics and Statistics, University of Calgary

Abstract: Volatility, as measured by the standard deviation, is an important concept in financial modeling because it measures the change in value of a financial instrument over a specific horizon. The higher the volatility, the greater the price risk of a financial instrument. There are different types of volatility: historical, implied volatility, level-dependent volatility, local volatility, and stochastic volatility (e.g., jump-diffusion volatility). Stochastic volatility models are used in the field of quantitative finance. Stochastic volatility means that the volatility is not a constant, but a stochastic process and can explain volatility smile and skew.

Volatility, typically denoted by the Greek letter  $\sigma$ , is the standard deviation of the change in value of a financial instrument over a specific horizon such as a day, week, month, or year. It is often used to quantify the price risk of a financial instrument over that time period. The price risk of a financial instrument is higher the greater its volatility.

Volatility is an important input in option pricing models. The Black-Scholes model for option pricing assumes that the volatility term is a constant. This assumption is not always satisfied in real-world options markets because probability distribution of common stock returns has been observed to have a fatter left tail and thinner right tail than the lognormal distribution (see Hull, 2000). Moreover, the assumption of constant volatility in a financial model, such as the original Black-Scholes option pricing model, is incompatible with option prices observed in the market.

As the name suggests, stochastic volatility means that volatility is not a constant, but a stochastic process. Stochastic volatility models are used in the field of quantitative finance and financial engineering to evaluate derivative securities, such as options and swaps. By assuming that volatility of the underlying price is a stochastic process rather than a constant, it becomes possible to more accurately model derivatives. In fact, stochastic volatility models can explain what is known as the volatility smile and volatility skew in observed option prices.

In this entry, we provide an overview of the different types of nonstochastic volatilities and the different types of stochastic volatilities. There are two approaches to introduce stochastic volatility: (1) changing the clock time  $t$  to a random time  $T(t)$  (subordinator), and (2) changing constant volatility into a positive stochastic process.

# NONSTOCHASTIC VOLATILITY MEASURES

We begin by providing an overview of the different types of nonstochastic volatility measure. These include

Historicalvolatility
- Implied volatility
- Level-dependent volatility
- Local volatility

# Historical Volatility

Historical volatility is the volatility of a financial instrument or a market index based on historical returns. It is a standard deviation calculated using historical (daily, weekly, monthly, quarterly, yearly) price data. The annualized volatility  $\sigma$  is the standard deviation of the instrument's logarithmic returns over a one-year period:

$$
\sigma = \sqrt {\frac {1}{n - 1} \sum_ {i = 1} ^ {n} (R _ {i} - \bar {R}) ^ {2}}
$$ where  $R_{i} = \ln \frac{S_{t_{i}}}{S_{t_{i - 1}}}$ ,  $\bar{R} = \frac{1}{n}\sum_{i = 1}^{n}\ln \frac{S_{t_i}}{S_{t_{i - 1}}}$ ,  $S_{t_i}$  is an asset price at time  $t_i$ ,  $i = 1,2,\ldots,n$ .


# Implied Volatility

Implied volatility is related to historical volatility. However, there are important differences. Historical volatility is a direct measure of the movement of the price (realized volatility) over recent history. Implied volatility, in contrast, is set by the market price of the derivative contract itself, and not the underlier. Therefore, different derivative contracts on the same underlier have different implied volatilities. Most derivative markets exhibit persistent patterns of volatilities varying by strike. The pattern displays different characteristics for different markets. In some markets, those patterns form a smile curve. In others, such as equity index options markets, they form more of a skewed curve.

This has motivated the name "volatility skew." For markets where the graph is downward sloping, such as for equity options, the term "volatility skew" is often used. For other markets, such as FX options or equity index options, where the typical graph turns up at either end, the more familiar term "volatility smile" is used. In practice, either term may be used to refer to the general phenomenon of volatilities varying by strike.

The models by Black and Scholes (1973) (continuous-time (B,S)-security market) and Cox, Ross, and Rubinstein (1976) (discrete-time (B,S)-security market (binomial tree)) are unable to explain the negative skewness and leptokurticity (fat tail) commonly observed in the stock markets. The famous implied-volatility smile would not exist under their assumptions. Most derivatives markets exhibit persistent patterns of volatilities varying by strike. In some markets, those patterns form a smile. In others, such as equity index options markets, it is more of a skewed curve. This has motivated the name volatility skew. In practice, either the term volatility smile or volatility skew (or simply skew) may be used to refer to the general phenomenon of volatilities varying by strike. Another dimension to the problem of volatility skew is that of volatilities varying by expiration, known as volatility surface.

Given the prices of call or put options across all strikes and maturities, we may deduce the volatility that produces those prices via the full Black-Scholes equation. This function has come to be known as local volatility. Local volatility-function of the spot price  $S_{t}$  and time  $t: \sigma \equiv \sigma(S_{t}, t)$  (see Dupire's (1994) formulas for local volatility).

# Level-Dependent Volatility

Level-dependent volatility (e.g., constant elasticity of variance (CEV) or firm model, see Beckers, 1980, Cox, 1975) is a function of the spot price alone. To have a smile across strike price, we need  $\sigma$  to depend on  $S:\sigma \equiv \sigma (S_t)$ . In this case, the volatility and stock price changes are now perfectly negatively correlated (so-called "leverage effect").


# Local Volatility

Local volatility (LV) is a volatility function of the spot price and time. Volatility smile can be retrieved in this case from the option prices. Dupire (1994) derived the local volatility formula in continuous time and Derman and Kani (1994) used the binomial (or trinomial tree) framework instead of the continuous one to find the local volatility formula. The LV models are very elegant and theoretically sound. However, they present in practice many stability issues. They are ill-posed inversion problems and are extremely sensitive to the input data. This might introduce arbitrage opportunities and, in some cases, negative probabilities or variances.

# Stochastic Volatility

Stochastic volatility means that volatility is not a constant, but a stochastic process. Black and Scholes (1973) made a major breakthrough by deriving pricing formulas for vanilla options written on the stock. The Black-Scholes model assumes that the volatility term is a constant. Stochastic volatility models are used in the field of quantitative finance to evaluate derivative securities, such as options and swaps (see Carr and Lee, 2009). By assuming that the volatility of the underlying price is a stochastic process rather than a constant, it becomes possible to more accurately model derivatives.

The above issues have been addressed and studied in several ways, such as:

1. Volatility is assumed to be a deterministic function of the time:  $\sigma \equiv \sigma (t)$  with the implied volatility for an option of maturity  $T$  given by  $\hat{\sigma}_T^2 = \frac{1}{T}\int_0^T\sigma_u^2 du$
2. Volatility is assumed to be a function of the time and the current level of the stock price

$S(t)$  ..  $\sigma \equiv \sigma (t,S(t))$  3 the dynamics of the stock price satisfies the following stochastic differential equation:

$$ d S (t) = \mu S (t) d t + \sigma (t, S (t)) S (t) d W _ {1} (t)
$$ where  $W_{1}(t)$  is a standard Wiener process;


3. The time variation of volatility involves an additional source of randomness, besides  $W_{1}(t)$ , represented by  $W_{2}(t)$ , and is given by

$$ d \sigma (t) = a (t, \sigma (t)) d t + b (t, \sigma (t)) d W _ {2} (t)
$$ where  $W_{2}(t)$  and  $W_{1}(t)$  (the initial Wiener process that governs the price process) may be correlated;4


4. Volatility depends on a random parameter  $x$  such as  $\sigma(t) \equiv \sigma(x(t))$ , where  $x(t)$  is some random process. $^5$
5. Stochastic volatility, namely, uncertain volatility scenario. This approach is based on the uncertain volatility model developed in Avellaneda et al. (1995), where a concrete volatility surface is selected among a candidate set of volatility surfaces. This approach addresses the sensitivity question by computing an upper bound for the value of the portfolio under arbitrary candidate volatility, and this is achieved by choosing the local volatility  $\sigma(t, S(t))$  among two extreme values  $\sigma_{\min}$  and  $\sigma_{\max}$  such that the value of the portfolio is maximized locally;
6. The volatility  $\sigma (t,S_t)$  depends on  $S_{t} = S(t+\theta)$  for  $\theta \in [-\tau ,0]$ , namely, stochastic volatility with delay.

In approach (1), the volatility coefficient is independent of the current level of the underlying stochastic process  $S(t)$ . This is a deterministic volatility model, and the special case where  $\sigma$  is a constant reduces to the well-known Black-Scholes model that suggests changes in stock prices are lognormal. Empirical tests by Bollerslev (1986) seem to indicate otherwise. One explanation for this problem of a lognormal model is the possibility that the variance of  $\log(S(t)/S(t-1))$  changes randomly.

In approach (2), several ways have been developed to derive the corresponding Black-Scholes formula: One can obtain the formula by using stochastic calculus and, in particular, Ito's formula (see Shiryaev (1999), for example).

A generalized volatility coefficient of the form  $\sigma(t, S(t))$  is said to be level-dependent. Because volatility and asset price are perfectly correlated, we have only one source of randomness given by  $W_{1}(t)$ . A time and level-dependent volatility coefficient makes the arithmetic more challenging and usually precludes the existence of a closed-form solution. However, the arbitrage argument based on portfolio replication and completeness of the market remains unchanged.

# Approaches to Introduce Stochastic Volatility

The idea to introduce stochastic volatility is to make volatility itself a stochastic process. The aim with a stochastic volatility model is that volatility appears not to be constant and indeed varies randomly. For example, the situation becomes different if volatility is influenced by a second "nontradable" source of randomness, and we usually obtain a stochastic volatility model, introduced by Hull and White (1987). This model of volatility is general enough to include the deterministic model as a special case. Stochastic volatility models are useful because they explain in a self-consistent way why it is that options with different strikes and expirations have different Black-Scholes implied volatilities (the volatility smile). These cases are addressed in approaches 3, 4 and 5 above. Stochastic volatility is the main concept used in the fields of financial economics and mathematical finance to deal with the endemic time-varying volatility and codependence found in financial markets. Such dependence has been known for a long time; early comments include Mandelbrot (1963) and Officer (1973).

There are two approaches to introduce stochastic volatility: One approach is to change the clock time  $t$  to a random time  $T(t)$  (change of time). Another approach is to change constant volatility into a positive stochastic process. Continuous-time stochastic volatility models include:


- Ornstein-Uhlenbeck (OU) process (Ornstein-Uhlenbeck (1930))
- Geometric Brownian motion with zero correlation with respect to a stock price (Hull and White, 1987)
- Geometric Brownian motion with nonzero correlation with respect to a stock price (Wiggins, 1987)
- OU process, mean-reverting, positive with nonzero correlation with respect to a stock price (Scott, 1989)
- OU process, mean-reverting, negative, with zero correlation with respect to a stock price (Stein and Stein, 1991)
- Cox-Ingersoll-Ross process, mean-reverting, nonnegative with non zero correlation with respect to a stock price (Heston, 1993).

Heston and Nandi (1997) showed that the OU process corresponds to a special case of the GARCH model for stochastic volatility. Hobson and Rogers (1998) suggested a new class of nonconstant volatility models, which can be extended to include the aforementioned level-dependent model and share many characteristics with the stochastic volatility model. The volatility is nonconstant and can be regarded as an endogenous factor in the sense that it is defined in terms of the past behavior of the stock price. This is done in such a way that the price and volatility form a multidimensional Markov process.

# Discrete Models for Stochastic Volatility

Another popular process is the continuous-time GARCH(1,1) process, developed by Engle (1982) and Bollerslev (1986) in a discrete framework. The generalized autoregressive conditional heteroskedasticity (GARCH) model

(see Bollerslev, 1986) is popular model for estimating stochastic volatility. It assumes that the randomness of the variance process varies with the variance, as opposed to the square root of the variance as in the Heston model. The standard GARCH(1,1) model has the following form for the variance differential:

$$ d \sigma_ {t} = \kappa (\theta - \sigma_ {t}) d t + \gamma \sigma_ {t} d B _ {t}
$$

The GARCH model has been extended via numerous variants, including the NGARCH, LGARCH, EGARCH, GJR-GARCH, and so on.

Continuous-time models provide the natural framework for an analysis of option pricing; discrete-time models are ideal for the statistical and descriptive analysis of the patterns of daily price changes. Volatility clustering, periods of high and low variance (large changes tend to be followed by small changes; see Mandelbrot, 1963), led to using discrete models, GARCH models. There are two main classes of discrete-time stochastic volatility models. First class—autoregressive random variance (ARV) or stochastic variance model—is a discrete time approximation to the continuous time diffusion models that we outlined above. Second class is the autoregressive conditional heteroskedastic (ARCH) model introduced by Engle (1982), and its descendants GARCH (Bollerslev, 1986), NARCH, NGARCH (Duan, 1996), LGARCH, EGARCH, GJR-GARCH. General class of stochastic volatility models, which includes many of the above-mentioned models, has been introduced by Ewald, Poulsen, and Schenk-Hoppe (2006). Gatheral (2006) introduce the Heston-like model for stochastic volatility that is more general than the Heston model.

# Jump-Diffusion Volatility

Jump-diffusion volatility is essential as there is evidence that assumption of a pure diffusion for the stock return is not accurate. Fat tails have been observed away from the mean of the stock return. This phenomenon is called leptokurticity and could be explained in different ways. One way to explain smile and leptokurticity is to introduce a jump-diffusion process for stochastic volatility (see Bates, 1996). Jump-diffusion is not a level-dependent volatility process, but can explain the leverage effect.


# Multifactor Models for Stochastic Volatility

One-factor SV models (all above-mentioned): (1) incorporate the leverage between returns and volatility and (2) reproduce the skew of implied volatility. However, they fail to match either the high conditional kurtosis of returns (Chernov et al., 2003) or the full term structure of implied volatility surface (Cont et al., 2004). Two primary generalizations of one-factor SV models are: (1) adding jump components in returns and/or volatility process, and (2) considering multifactor SV models. Among multifactor SV models we mention here the following ones:

- Fouque et al. (2005) SV model, Chernov et al. (2003) model (used efficient method of moments to obtain comparable empirical-of-fit from affine jump-diffusion and two-factor SV family models).
- Molina et al. (2003) model (used a Markov chain Monte Carlo method to find strong evidence of two-factor SV models with well-separated time scales in foreign exchange data).
- Cont et al. (2004) (found that jump-diffusion models have a fairly good fit to the implied volatility surface).
- Fouque et al. (2000) model (found that two-factor SV models provide a better fit to the term structure of implied volatility than one-factor SV models by capturing the behavior at short and long maturities).
- Swishchuk (2006) (introduced two-factor and three-factor SV models with delay (incorporating mean-reverting level as a random process geometric Brownian model, OU, continuous-time GARCH(1,1) model).

We also mention the SABR model (see Hagan et al., 2002), describing a single forward under stochastic volatility, and Chen's (1996) three-factor model for the dynamics of the instantaneous interest rate.

Multifactor SV models have advantages and disadvantages. One of the disadvantages is that multifactor SV models do not admit in general explicit solutions for option prices. One of the advantages is that they have direct implications for hedges. As a comparison, a class of jump-diffusion models (Bates, 1996) enjoys closed-form solutions for option prices. But the complexity of hedging strategies increases due to jumps. In this way, there is no strong empirical evidence to judge the overwhelming position of jump-diffusion models over multifactor SV models or vice versa.

The probability literature demonstrates that stochastic volatility models are fundamental notions in financial markets analysis.

# KEY POINTS

- Because it measures the change in value of a financial instrument over a specific horizon, volatility, as measured by the standard deviation, is an important concept in financial modeling.
- The different types of volatility are historical, implied, jump-diffusion, level-dependent, local, and stochastic volatilities.
- Stochastic volatility means that the volatility is not a constant, but a stochastic process. Stochastic volatility can explain the well-documented volatility smile and skew observed in option markets.
- Stochastic volatility is the main concept used in finance to deal with the endemic time-varying volatility and codependence found in financial markets and stochastic volatility models are used to evaluate derivative securities such as options and swaps.
- Two approaches to introduce stochastic volatility are: (1) changing the clock time to a random time and (2) changing constant volatility into a positive stochastic process.


# NOTES

1. Black and Scholes (1973), Dupire (1994), Derman and Kani (1994).
2. Wilmott et al. (1995), Merton (1976).
3. Dupire (1994), Hull (2000).
4. Hull and White (1987), Heston (1993).
5. Elliott and Swishchuk (2007), Swishchuk (2000, 2009), Swishchuk et al. (2010).
6. Kazmerchuk, Swishchuk, and Wu (2005), Swishchuk (2005, 2006, 2007, 2009a, 2010).
7. Barndor-Nielsen, Nicolato, and Shephard (1996), Shephard (2005).

# REFERENCES

Ahn, H., and Wilmott, P. (2006). Stochastic Volatility and Mean-Variance Analysis. New York: Wiley/Finance.
Avellaneda, M., Levy, A., and Paras, A. (1995). Pricing and hedging derivative securities in markets with uncertain volatility. Applied Mathematical Finance 2: 73-88.

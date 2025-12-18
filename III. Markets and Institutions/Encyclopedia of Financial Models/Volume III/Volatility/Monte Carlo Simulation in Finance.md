
# Monte Carlo Simulation in Finance

DESSISLAVA A. PACHAMANOVA, PhD

Associate Professor of Operations Research, Babson College

Abstract: Monte Carlo simulation has become an essential tool for pricing and risk estimation in financial applications. It allows finance professionals to incorporate uncertainty in financial models, and to consider additional layers of complexity that are difficult to incorporate in analytical models. The main idea of Monte Carlo simulation is to represent the uncertainty in market variables through scenarios, and to evaluate parameters of interest that depend on these market variables in complex ways. The advantage of such an approach is that it can easily capture the dynamics of underlying processes and the otherwise complex effects of interactions among market variables. A substantial amount of research in recent years has been dedicated to making scenario generation more accurate and efficient, and a number of sophisticated computational techniques are now available to the financial modeler.

This entry provides an introduction to Monte Carlo simulation and its applications to finance, from financial derivative pricing to portfolio risk management. We begin with a discussion of the main ideas behind simulation and a listing of several important areas in finance where simulation techniques are widely used. We then discuss technical issues that are important for understanding the advantages and limitations of the Monte Carlo simulation technique, such as how random numbers are actually generated, what techniques are used for increasing the accuracy of estimates from simulation, and what software can be helpful for applications.

# MAIN IDEAS AND IMPORTANT CONCEPTS

Simulation can be most generally defined as imitation of real-life systems with the goal of studying important characteristics of their behavior. Monte Carlo simulation is named after the main residential area of the Monaco principality, which was well known for its casino. The term alludes to randomness and process repetition, analogous to casino games such as roulette.


The idea of applying Monte Carlo simulation to finance arises naturally, given the inherent variability in markets and the need for finance professionals to evaluate strategies with uncertain outcomes. Consider, for example, a portfolio manager who would like to estimate the effect of a market downturn on the portfolio (e.g., if the market goes down by  $10\%$ ). What would be the resulting portfolio value? If the portfolio beta is 1, the expected decline in the portfolio value will be  $10\%$  as well; if the portfolio beta is 0.9, the portfolio will decline  $9\%$  if the market declines by  $10\%$ . More generally,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/907ac8fe55a503932709f152627cf50ed2af01e135758c3cd4eba2e08db52fba.jpg)
Discrete Uniform Distribution
(a) Discrete Uniform Distribution
Figure 1 Examples of Probability Distributions

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/75cc5077be422ac2475c193236be6b654f249e9c163e3188b3e617d90deed6d1.jpg)
Normal Distribution
(b) Normal Distribution a portfolio manager may want to assess the exposure of a portfolio to a set of risk factors suggested by economic theory or empirical evidence such as interest rate changes, commodity price changes, exchange rate movements, and so on. These risk factors and their interactions with each other are not straightforward to evaluate. One can imagine that a portfolio manager would consider scenarios for possible joint realizations of market variables—for example, in a global recession or under favorable monetary policy changes—and would assess the change to the portfolio value in each of these scenarios. Taking it yet another step further, a portfolio manager may assign probabilities to the different scenarios, thus expressing a view on their likelihood of occurring. Assigning probabilities to outcomes produces probability distributions. Examples of probability distributions include the discrete uniform distribution (see Figure 1a), which assigns equal probabilities to all possible discrete outcomes, and the normal distribution (Figure 1b), which is continuous (defined on a range, as opposed to discrete values), and allocates more probability to outcomes close to the average than to those far from the average.


The example in the previous paragraph illustrates a Monte Carlo simulation system: Possibly random inputs (the risk factors) incorporating subjective or statistically estimated views via probability distributions are entered into an evaluation model (computation of change in portfolio value), and the resulting output (the portfolio change) is not a single number, but a probability distribution of outcomes that incorporates characteristics of the input probability distributions and their complex interactions. The actual simulation process involves generating a certain number of scenarios, evaluating the portfolio change for each scenario, and obtaining a corresponding set of scenarios for the portfolio change. The latter set of scenarios can then be analyzed to determine most likely outcomes for portfolio change, variability of estimated portfolio change, range of possible outcomes, and the like. One can use the simulation output also to estimate any portfolio risk measure such as value-at-risk (VaR) or expected tail loss (ETL). Since VaR has been adopted by regulators and is commonly used by portfolio managers, we will use VaR in our illustrations. When generating scenarios for the factors influencing the future value of the portfolio, it is easy to collect information on possible portfolio losses relative to the current value of the portfolio in each scenario. Then, the  $95\%$  VaR, for example, can be computed as the 95th percentile of the distribution of portfolio losses (see Figure 2).


As another illustration of a simulation model, consider the problem of finding the fair price of a simple European call option on a stock with current stock price  $S_{t}$ . If the strike price is  $K$  and the option matures at time  $T$ , the option payoff at time  $T$  can be expressed as

$$
V _ {T} = \max  \left\{S _ {T} - K, 0 \right\}
$$

According to a fundamental theory in asset pricing, the fair price of a financial asset under certain conditions can be meaningfully estimated as the expected value (equivalently, as a "probability-weighted average") of the possible payoffs of the financial asset in different states of the world in the future. The fair value of the option at time  $t$  will therefore be the expected value of the discounted payoff:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/2e9c204d4143965507a9eb8de4ff19992aab400318ac4d69e8e796ff99784469.jpg)
Figure 2 Determining Portfolio VaR from Simulation


$$
V _ {t} = E \left[ e ^ {- r (T - t)} \max \{S _ {T} - K, 0 \} \right]
$$ where  $r$  is the short-term risk-free rate.


The expected value in the expression above is meaningful only if one can specify a probability distribution of possible outcomes for the future price of the asset. For example, consider a European call option on a common stock with an exercise price of  \$20. Assume that the short-term risk-free rate is 0\%$  and suppose that the stock price at time  $T$  can only take the values 18, \$21, and \$23 with (risk-neutral) probabilities 3/6, 2/6, and 1/6, respectively. Then the fair price of the option can be computed as the weighted average of the payoffs in the three possible states of the world:

$$
\begin{array}{l} V = \frac {3}{6} \max  \{1 8 - 2 0, 0 \} + \frac {2}{6} \max  \{2 1 - 2 0, 0 \} \\ + \frac {1}{6} \max  \{2 3 - 2 0, 0 \} \\ = \frac {3}{6} \cdot 0 + \frac {2}{6} \cdot 1 + \frac {1}{6} \cdot 3 = \frac {5}{6} = 0. 8 3 \\ \end{array}
$$

That is, the fair value of the option is 0.83.

Typically, however, the stock price can take many more values, and the option price cannot be valued exactly. It therefore makes sense to generate a large number (e.g., 1,000) of scenarios for the future value of the stock price using the risk-neutral probabilities, and average out the payoffs to the option. The average obtained from the simulation will approximate the true expected value of the option.

The Black-Scholes formula for European options (Black and Scholes, 1973) is widely used in the financial industry. It provides a closed-form expression for computing the price of the option. The underlying assumption used in the derivation of the Black-Scholes formula is that the percentage changes in the asset price are increments of a Brownian motion. The evolution of the stock price can then be described by the equation

$$ d S _ {t} = \mu S _ {t} d t + \sigma S _ {t} d W _ {t} \tag {1}
$$ where  $W_{t}$  is standard Brownian motion, and  $\mu$  and  $\sigma$  are called "drift" and "volatility" of the process, respectively.


Equation (1) says that the change in the asset price at any time period is determined by two components: (1) a drift term that is a fraction of the current asset price level, and (2) a "random noise" term that assumes that volatility is proportional to the current price level. For technical reasons (namely, absence of arbitrage), when pricing an option on an asset whose movement is described by equation (1), the drift  $\mu$  is replaced by the risk-free rate  $r$ . The technical details of equation (1) are not important for our purposes. The important result is that under the assumption for the random process followed by the stock price in (1), the value of the stock price  $S_{T}$  at time  $T$  can be computed as

$$
S _ {T} = S _ {t} e ^ {\left(r - \frac {1}{2} \sigma^ {2}\right) (T - t) + \sigma \sqrt {(T - t)} \bar {w}} \tag {2}
$$ where  $\tilde{w}$  is a random variable following a normal distribution with mean 0 and standard deviation 1 (see Figure 1b).


Hence, the option price obtained from the Black-Scholes formula can be approximated by simulation if a large number of values for the normal random variable  $\tilde{w}$  are generated, thus creating scenarios for the stock price  $S_{T}$  at time  $T$  and allowing for computing the discounted payoffs of the option. Suppose we generate  $n$  scenarios for  $\tilde{w}$ :  $w_{1},\ldots ,w_{n}$ . Then, the price of the European option will be

$$
\begin{array}{l} V _ {t} = e ^ {- r (T - t)} \\ \cdot \sum_ {i = 1} ^ {n} \frac {1}{n} \max  \left\{S _ {t} e ^ {\left(r - \frac {1}{2} \sigma^ {2}\right) (T - t) + \sigma \sqrt {(T - t)} w _ {i}} - K, 0 \right\} \\ \end{array}
$$

Note that the expression above is still a weighted average of the payoffs of the option in each scenario: the "weight," or the probability of each scenario, is assumed to be  $1 / n$ , since the scenarios are picked at random, and the frequency of their occurrence already incorporates the probability distribution of  $\tilde{w}$ .

It appears unnecessarily complicated to price the option this way, and indeed, in practice simulation is rarely used for such simple problems. There are more complex derivative instruments and more sophisticated models for asset price behavior; in such cases, it may be simpler to generate scenarios and evaluate prices by simulation than to look for closed-form analytical expressions like the Black-Scholes formula. In addition, in the case of portfolios and baskets of multiple assets, generating joint scenarios for multiple securities in simulation can help capture the otherwise complicated effect of interactions among different risk factors influencing the future value of the portfolio or derivative instrument.

# How Many Scenarios?

A simulation may not be able to capture all possible realizations of uncertainties in the model. For instance, consider the European option pricing example above. If the percentage change in the stock price is assumed to be the increment of a Brownian motion, the possible number of values for the stock price  $S_{T}$  at time  $T$  is infinite. (This is because the number of values the normal random variable  $\tilde{w}$  can take is infinite—the normal distribution has an infinite range.) Thus, one could never obtain the exact value of the option price by simulation. One can, however, get close. The accuracy of the estimation will depend on the number of generated scenarios. If the scenario generation is truly random, then the standard error (the "variability") in the estimate of the average will be


$$
\frac {s}{\sqrt {n}}
$$ where  $s$  is the standard deviation of the simulated discounted option payoffs, and  $n$  is the number of scenarios. This result follows from the central limit theorem (CLT). This theorem states that if a sample of  $n$  independent and identically distributed observations is drawn from a distribution with mean  $\mu$  and standard deviation  $\sigma$ , then the sample mean (which is an estimate of the true distribution mean  $\mu$ ) will follow a normal distribution around the actual distribution mean  $\mu$  with standard deviation  $\sigma / \sqrt{n}$  as the sample size  $n$  tends to infinity, regardless of the shape of the original distribution, as long as  $n$  is large. The fact that the distribution standard deviation  $\sigma$  in the CLT can be replaced by the sample standard deviation  $s$  follows from additional theoretical results on the convergence of  $s$  to  $\sigma$  in distribution as the number of observations grows large.


Hence, to double the accuracy of estimating the mean of the output distribution, one would have to quadruple the number of scenarios. This can get expensive computationally, especially in more complicated multistage situations. Fortunately, there are modern methods for generating random numbers and scenarios that can help reduce the computational burden.

While the average output from a simulation is important, it is often not the only quantity of interest, something that practitioners tend to forget when using simulation to value complex financial instruments. For example, as mentioned earlier, in assessing the risk of a portfolio, a portfolio manager may be interested in the percentiles of the distribution of outputs (VaR for portfolios) or the worst-case and best-case scenarios. Unfortunately, it is not as straightforward to determine the accuracy of those estimates from a simulation. There are some useful results from probability theory that apply. However, the general question of how many scenarios one should generate to get a good representation of the output distribution does not have an easy answer. This issue is complicated further by the fact that results from probability theory do not necessarily apply to many of the scenario-generating methods used in practice, which do not simulate "truly random" samples of observations, but instead use smarter methods that reduce the number of scenarios needed to achieve good estimate accuracy. We will discuss some such methods later in this entry.


# Estimator Bias

The statistical concept of estimator bias is important in simulation applications because it shows whether an estimator estimates the "right thing" on average (that is, whether it approaches the true parameter one needs to estimate given a sufficient number of replications). For example, the average obtained from a sample of scenarios is an unbiased estimator of the true expected value. Depending on the way scenarios are generated, however, one may introduce a bias in the estimate of the parameter of interest.

Suppose, for example, that one generates scenarios for the future asset price in the option pricing example introduced earlier in this entry, but instead of the formula describing the evolution of the asset price in continuous time (equation (2)), one divides the time between now and the maturity of the option into small intervals of length  $h$  and uses a "discrete-time" formula [based on equation (1)] to approximate the stock price at each time period between  $t$  and  $T$ , com piling the changes to obtain the final asset price at the maturity of the option.


Simulating the asset price in this manner will generate a bias in the estimate of the expected present value of the option, because the simulated changes in the asset price along the way are not continuous or instantaneous, but happen over a fixed-length time interval. This kind of bias is referred to as "discretization error bias." Of course, in the case of geometric Brownian motion with fixed drift and volatility described by equation (1) one can obtain an unbiased estimator of the average option payoff by simulating the future asset price with the continuous-time formula (2). However, in many instances it is not possible to find such a closed-form expression for the future asset price; for example, such a formula does not exist when the volatility  $\sigma$  in the random process for the asset price is time-dependent, or when one uses a mean-reversion process to describe the evolution of the underlying price. In such cases, one can reduce the time interval length  $h$  to reduce the bias, but it is important to keep in mind that reducing the time interval length increases the number of steps necessary to create a scenario for the future asset price, and becomes computationally expensive.

# Estimator Efficiency

If there are two ways to obtain an estimate of a quantity of interest and the estimators are otherwise equivalent in terms of bias, which estimator should be preferable; that is, which estimator is more "efficient"? Statistical theory states that one should prefer the estimator with the smaller standard deviation, because it is more accurate. For example, consider two unbiased estimators, both of which are obtained as averages from a sample of independent replications. Their standard errors will be given by

$$
\begin{array}{c c c} \frac {s _ {1}}{\sqrt {n _ {1}}} & \text {a n d} & \frac {s _ {2}}{\sqrt {n _ {2}}} \end{array}
$$ where  $s_1$  and  $s_2$  are the standard deviations from the samples of scenarios, and  $n_1$  and  $n_2$  are the number of scenarios for each of the estimators.


In the case of simulation, statistical concepts frequently need to be extended to include numerical and computational considerations. For example, suppose that it takes longer to generate the scenarios for the estimator with the smaller standard deviation. Is that estimator still preferable, given that one can use the extra time to generate additional scenarios for the other estimator, thus reducing the latter estimator's standard error? It is natural (and theoretically justified) to modify the measure of variability and efficiency so that it includes a concept of time. If  $\tau_{1}$  and  $\tau_{2}$  are the times it takes to generate one scenario for each of the two estimators, then one should select the estimator with the smaller of the time-adjusted standard deviations  $s_1\sqrt{\tau_1}, s_2\sqrt{\tau_2}$ .

# FINANCIAL APPLICATIONS OF SIMULATION

Simulation has become an important staple in a financial modeler's toolbox. This section lists some important examples of simulation applications in finance.

# Financial Derivative Pricing

The use of Monte Carlo simulation in derivative pricing dates back to Boyle (1977). Although the technique is not widely used for pricing of European-style securities with a single underlying stochastic variable, it is helpful for pricing European-style securities with multiple underlying stochastic variables, path-dependent options, such as Asian and American options, as well as basket options, where correlations between assets need to be taken into consideration. Additional examples of Monte Carlo simulation applications in financial derivative pricing include options on the spread between two assets, barrier options, and quantos, whose payoff depends both on a stock price and an exchange rate. We already described a simple example of pricing a European call by simulation. In this section, we discuss further simulation issues in the context of pricing Asian options.


The value of an Asian option is determined by the average price of the underlying asset either continuously over the time to maturity or at a prespecified set of monitoring dates  $t_1, \dots, t_T$ . In particular, the payoff of an Asian call option is

$$
V _ {T} = \max  \left\{S _ {\text {a v e r a g e}} - K, 0 \right\}
$$

Thus, to price the option, one needs information not only on the value of the asset at time  $T$ , but also on the possible paths the asset could take to reach its terminal value. If the percentage change in the underlying asset price  $S$  is assumed to be the increment of a Brownian motion and if the average is computed as a geometric (as opposed to an arithmetic) average, there are analytical formulas for pricing continuous-time Asian options. However, there are no exact formulas in the case of discrete monitoring dates or different assumptions on the process followed by the asset price.

To price the option by simulation, one would generate possible paths for the underlying asset price. Let  $S_{t_i}(j)$  be the simulated asset price at time  $t_i$ ,  $i = 1,\dots,T$ , for path  $j,j = 1,\dots,n$ . For example, if the percentage change in the underlying asset price  $S$  is assumed to be the increment of a Brownian motion, then the asset price at time  $t_1$  can be simulated given the asset price at time 0 as

$$
S _ {t _ {1}} = S _ {0} e ^ {(r - \frac {1}{2} \sigma^ {2}) (t _ {1} - 0) + \sigma \sqrt {(t _ {1} - 0)} \bar {w} _ {0}}
$$ where, as defined earlier,  $\tilde{w}_0$  is a random variable following a normal distribution with mean 0 and standard deviation 1 (the subscript "0" stands for the fact that this realization of  $\tilde{w}$  is for the time period  $(0,t_1])$ . Having generated a realization of  $S_{t_1}$ , one can simulate a possible


value for  $S_{t_2}$  by using the formula

$$
S _ {t _ {2}} = S _ {t _ {1}} e ^ {(r - \frac {1}{2} \sigma^ {2}) (t _ {2} - t _ {1}) + \sigma \sqrt {(t _ {2} - t _ {1})} \tilde {w} _ {1}}
$$ and generating a realization of the normal random variable  $\tilde{w}_1$ . After repeating this  $T$  times, one has generated a path for the asset price. Averaging the (properly discounted) option payoff over  $n$  paths produces the fair price of the Asian option.


The simulation process makes it easy to calibrate model parameters to observed market factors and to incorporate additional layers of modeling complexity. For example, suppose that at time 0 one observes a term structure of zero-bond prices  $B(0,t_1),\ldots ,B(0,t_T)$  that is not necessarily consistent with a single interest rate  $r$ . In other words, one cannot find a short rate  $r$  such that

$$
B (0, t _ {i}) = e ^ {- r t _ {i}}
$$ for all intermediate time periods  $t_i$ . It would be difficult to correct for this in a closed-form formula such as the Black-Scholes formula for European options. However, the correction can be easily implemented in the simulation: one only needs to simulate future asset prices at each intermediate time period as


$$
S _ {t _ {i + 1}} = S _ {t _ {i}} \frac {B (0 , t _ {i})}{B (0 , t _ {i + 1})} e ^ {- \frac {1}{2} \sigma^ {2} (t _ {i + 1} - t _ {i}) + \sigma \sqrt {(t _ {i + 1} - t _ {i})} \bar {w} _ {i}}
$$

Similarly, if one observes forward prices  $F(0,t_1),\ldots ,F(0,t_T)$  on the underlying asset, one can obtain a more accurate representation of the possible scenarios in the simulation by using the formula

$$
S _ {t _ {i + 1}} = S _ {t _ {i}} \frac {F (0 , t _ {i + 1})}{F (0 , t _ {i})} e ^ {- \frac {1}{2} \sigma^ {2} (t _ {i + 1} - t _ {i}) + \sigma \sqrt {(t _ {i + 1} - t _ {i})} \bar {w} _ {i}}
$$

The complexity of the pricing model can be increased further by incorporating realistic models for the volatility  $\sigma$ . The simulation technique therefore has a tremendous modeling potential.

# Estimating Sensitivities

For trading, hedging, and risk management purposes, the estimation of the sensitivity of derivative prices to different inputs is sometimes even more critical than the estimation of the prices themselves. These sensitivity measures are popularly referred to as the "Greeks" because each sensitivity measure is traditionally denoted by a Greek letter. A natural way to think of evaluating the sensitivity of a derivative price to a change in an underlying parameter is to use Monte Carlo simulation to compute the price of the derivative, and then use Monte Carlo simulation again to compute the price of the derivative if the input parameter is changed by a small amount  $h$ . This kind of estimation (referred to as a "finite-difference method"), however, presents both theoretical and practical challenges. On the theoretical side, finite difference methods frequently result in a large amount of bias. On the practical side, the amount of computation required for the estimation of the sensitivity is large (double the amount of computation used in the pricing of the derivative), and can become prohibitive if this computation is done in the context of evaluating the sensitivity of a whole portfolio of securities to changes in underlying factors.

In specific circumstances, the computational burden can be reduced by finding an expression for the Greek variable of interest that can be calculated as a by-product when paths are generated in a single simulation. Such expressions exist when computing the Black-Scholes delta or the delta of an Asian option. These methods are referred to as "pathwise methods"—namely, the evolution of the underlying model over paths is differentiated, and the parameter with respect to which the change is computed is treated as a parameter of that evolution. For example, consider the delta (denoted by  $\Delta$ ) for an option price calculated with the Black-Scholes formula, where delta is defined as the (mathematical) derivative of the option value with respect to the value of the underlying asset. To

Table 1 Scenarios for Portfolio VaR Estimation

<table><tr><td>Scenario</td><td>Market Variable 1</td><td>Market Variable 2</td><td>...</td><td>Market Variable m</td><td>Change in Portfolio Value ($ million)</td></tr><tr><td>1</td><td>3.54</td><td>21.54</td><td>...</td><td>0.17</td><td>100.32</td></tr><tr><td>2</td><td>3.27</td><td>22.03</td><td>...</td><td>0.18</td><td>101.54</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>n</td><td>3.83</td><td>22.32</td><td>...</td><td>0.15</td><td>100.87</td></tr></table> calculate the value of delta, one would generate  $n$  paths for the evolution of the asset price, and keep track of the paths in the simulation that end up in-the-money. Let the sum of the asset prices at the end of all in-the-money paths be  $\Omega$ . Then, the delta at time  $t$  can be computed as


$$
\Delta_ {t} = e ^ {- r (T - t)} \cdot \frac {\Omega}{S _ {t} \cdot n}
$$

More recently, efficient estimators for sensitivity from simulation trials have been developed based on Malliavin calculus.4

# Portfolio Risk Management

Earlier, we mentioned the importance of simulation for portfolio risk measurement and management. We now explain the simulation procedure in more detail.

To estimate the portfolio VaR, for example, one would generate  $n$  possible scenarios for the possible changes in  $m$  market variables that influence the change in the portfolio value, and compute the change in portfolio value in each scenario (see Table 1). Sometimes historical data are used to create the scenarios, but typically the scenarios are generated in a more sophisticated manner. The changes in the portfolio value are then sorted, and the  $95\%$  VaR, for example, can be computed as the 5th percentile of the so-obtained empirical distribution of portfolio value changes. (This is equivalent to computing the  $95\%$  VaR as the 95th percentile of the empirical distribution of future portfolio losses, as illustrated in Figure 2.)

While this standard Monte Carlo simulation procedure is comprehensive, it can be very slow, especially when the portfolio contains complex derivative securities whose changes in value must be reevaluated in every scenario for the market variables. In fact, the portfolio VaR calculation by simulation involves a number of "subsimulations" evaluating the sensitivities of the securities in the portfolios to each of the market variables. For large portfolios, the computational cost of generating each scenario for the change in portfolio value can become prohibitive.


In practice, several approaches are used to speed up the calculation of VaR. One of the earliest approaches, popularized by JP Morgan's RiskMetrics software in the 1990s, is to assume that all changes in market variables are normally distributed. If the portfolio value is a linear function of these market variables (this happens, e.g., when the portfolio contains equities and factor models are used to represent the changes in asset value relative to changes in market variable values), then the change in portfolio value is also normally distributed, and can be computed in closed form, by expressing the VaR as a multiple of the standard deviation of changes in the market variables. This approach does not necessarily have to involve simulation, and actually works reasonably well for large equity-only portfolios that contain liquid assets, because the empirical distributions of their returns can be indeed very close to normal. However, it can grossly underestimate the true portfolio VaR when the portfolio contains complex derivatives (which are nonlinear functions of the returns on the underlying market variables) or fixed income securities (which depend nonlinearly on interest rates).

The nonlinearity can be partially incorporated in the estimate of the change in portfolio value by using second-order information, so-called "Delta-Gamma" or quadratic approximation to the change in portfolio value. In other words, the change in portfolio value is expressed not only through the changes in the values of the market variables, but also through the changes in the market variables squared and scaled by their so-called Hessian matrix. (From a mathematical perspective, this is a multidimensional Taylor expansion involving the Greeks of the different securities in the portfolio.) Since traders of complex derivatives often have to keep track of this information for their own risk management purposes, the portfolio risk management process amounts to disciplined accumulation of information that is already available. This method is only an approximation, but it can reduce substantially the time for computing the portfolio VaR.


# Valuing Mortgage-Backed Securities

Monte Carlo methods are often used for valuing mortgage-backed securities (MBSs) such as collateralized mortgage obligations (CMOs) and stripped MBSs (mortgage strips). The cash flows for such products can be calculated using different pricing models. The highly uncertain terms in those cash flow models, such as the behavior of interest rates and the expected prepayments over the life of the MBS, are often simulated to determine the expected cash flows to the MBS holder, which then provide the sample average ("fair") value for the MBS.

# Valuing Credit-Risky Securities

Similar ideas to those for pricing CMOs are used for pricing collateralized debt obligations (CDOs), which employ securitization to package credit-risky debt obligations (bonds and loans) in ways analogous to the way mortgages are packaged in CMOs. In order to price the CDO, one needs to simulate the defaults of different bond issuers in the collection.[6]

Simulation is also used for pricing other credit-risky instruments, such as first-to-default baskets and basket default swaps. The simulation techniques applied in such cases can be quite advanced, as credit defaults are considered "rare events" and need to be modeled with care. We will discuss the main ideas of simulation modeling techniques for rare events, such as importance sampling, later in this entry.

# RANDOM NUMBER GENERATION

At the core of Monte Carlo simulation is the generation of random numbers. In fact, however, generating random numbers from a wide variety of distributions reduces to generating random numbers on the unit interval from 0 to 1 uniformly, that is, generating random numbers on the interval [0,1] in such a way that each value between 0 and 1 is equally likely to occur. Many computer languages and software packages have a command for generating a random number between 0 and 1: “=RAND()” in Microsoft Excel, “rand(1)” in MATLAB and FORTRAN, and “rand()” in C++.

# From a Uniform Random Variable to a Variable from an Arbitrary Distribution

The most common method for converting a random number between 0 and 1 to a number from an arbitrary probability distribution is to evaluate the so-called "inverse" of the cumulative probability distribution function at the random number between 0 and 1. The idea works because the total mass for a probability distribution is always 1, and the cumulative probability for any value of the distribution (defined as the probability that this particular value or any value below it will occur) is always between 0 and 1. For example, suppose that one would like to generate a random number from the normal distribution in Figure 1b. Suppose the  $= \mathrm{RAND}$  command in Excel returns the number 0.975. The next step is to look for a corresponding random number from a normal distribution so that  $97.5\%$  of the probability mass (the area under the probability density curve) is to the left of that number. In Excel in particular, the function  $= \mathrm{NORMINV}(\mathrm{RAND}(), \mathrm{mean}, \mathrm{standard~deviation})'$  can be used to find that random number on the x-axis of a normal distribution with the specified mean and standard deviation.


"Inverting" the cumulating probability distribution is trickier for discrete probability distributions, but the idea still applies. For example, suppose that given a random number generator on the interval [0,1], one would like to simulate values for a random variable that takes the value 5 with probability  $50\%$ , the value 15 with probability  $30\%$ , and the value 35 with probability  $20\%$ . Let us split the unit interval [0,1] into three intervals based on the cumulative probabilities  $50\%$ ,  $80\%$  and  $100\%$  for obtaining the values 5, 15, and 35: [0,0.5], (0.5,0.8], and (0.8,1]. If the random number that is drawn falls in the interval [0,0.5] (which happens  $50\%$  of the time if the number generator is truly random), then one records a value of 5 for that trial. If the random number is in the interval (0.05, 0.8] (which happens with probability  $30\%$ ), then one records a value of 15 for that trial. Finally, if the random number is in the third interval (which happens with probability  $20\%$ ), one records a value of 35. Thus, if many trials are run, the values 5, 15, and 35 are generated with the desired probabilities. In Excel, one can simulate these values with the corresponding probabilities by creating a table with the interval ranges in the first two columns, and the corresponding values (5, 15, and 35) in the third column, and using the Excel function

# VLOOKUP(lookup_value, table_array,col_index_num) to look up the range in which a number generated with RAND() falls.8


# What Defines a "Good" Random Number Generator?

Given the discussion in the previous section, generating "good" uniform random numbers on [0,1] is critical for the performance of simulation algorithms. Interestingly, defining "good" random number generation is not as straightforward as it appears. Early random number generators tried to use "truly random" events for random number generation, such as the amount of background cosmic radiation. In practice, however, this kind of random number generation is time consuming and difficult. Moreover, it was realized that the ability to reproduce the random number sequence and to analyze the random number characteristics is actually a desirable property for random number generators. In particular, the ability to reproduce a sequence of random numbers allows for reducing the variance of estimates and for debugging computer code by rerunning experiments in the same conditions in which they were run in previous iterations of code development.

Most simulation software products employ random number generation algorithms that produce streams of numbers that appear to be random, but are in fact a result of a clearly defined series of calculation steps in which the next "random number"  $x_{n}$  in the sequence is a function of the previous "random number"  $x_{n-1}$ , that is,  $x_{n} = f(x_{n-1})$ . The sequence starts with a number called the seed, and if the same seed is used in several simulations, each simulation sequence will contain exactly the same numbers, which is helpful for code debugging and drawing fair comparisons between different strategies evaluated under uncertainty. It is quite an amazing statistical fact that some of these recursion formulas (named "pseudo-random number generators") define sequences of numbers that imitate random behavior well and appear to obey (roughly) some major laws of probability, such as the CLT and the Glivenko-Cantelli lemma.

In general, a pseudo-random number generator is considered "good" if it satisfies the following conditions:

1. The numbers in the generated sequence are uniformly distributed between 0 and 1. This can be tested by running a chi-square or a Kolmogorov-Smirnov test.
2. The sequence has a long cycle (that is, it takes many iterations before the sequence begins repeating itself).
3. The numbers in the sequence are not autocorrelated. This can be verified by running a Durbin-Watson test on the sequence of numbers. The Durbin-Watson test is widely used in statistics for identifying autocorrelation in time series of observations.

In the following section, we discuss briefly a couple of important types of pseudo-random number generators. The goal is not to provide comprehensive coverage of random number generators, but rather to give readers a flavor of the main ideas behind the method of producing apparently random numbers with deterministic algorithms.

# Pseudo-Random Number Generators

One of the earliest pseudo-random number generators developed is called the midsquare technique. It takes a number (the seed), squares it, and takes the set of middle digits as the next random number. It is easy to predict when such an approach may run into difficulties. As soon as the "middle digits" become a small number such as 1 or 0, the sequence ends with the same numbers generated over and over again; that is, the sequence converges to a constant value (typically 0) or to a very short cycle of values.

A better, commonly used type of pseudorandom number generators is congruential pseudo-random number generators. They are based on sequences of numbers of the form

$$ x _ {n} = f \left(x _ {n - 1}\right) \bmod m
$$ where mod  $m$  stands for "modulus  $m$ "  $f(x_{n - 1})$  mod  $m$  is the remainder after dividing  $f(x_{n - 1})$  by  $m$ . For example,  $5 \bmod 3 = 2$ ,  $15 \bmod 5 = 0$ , etc. Note that  $f(x_{n - 1})$  mod  $m$  will always be an integer between 0 and  $m - 1$ . Thus, to create a good representation of randomness, one would want to make the range for the modulus as large as possible. For a 32-bit computer, for example, the maximum integer that can be stored is  $2^{31} - 1$ , which is large enough for practical purposes.


More advanced generators include matrix multiplicative congruential generators, multiple recursive generators, and shuffled generators. Most pseudo-random number generators used in popular software products nowadays have been thoroughly tested and are very good.

# VARIANCE REDUCTION TECHNIQUES

Paradoxically, truly random numbers can be too random for all practical purposes. Recall that the error in the average estimate obtained from truly random Monte Carlo simulation is proportional to  $1 / \sqrt{n}$ , where  $n$  is the number of scenarios for the random variable (this fact would be approximately true for good pseudorandom number generators as well). Much research has been dedicated in recent years to finding ways to reduce that error and to be computationally savvy when generating scenarios. Several methods for variance reduction, widely used in financial applications, are listed below.[9]

# Antithetic Variables

Simulating a random number is computationally expensive. One technique that is used to reduce the error in the average estimate in derivative pricing without increasing the number of simulated values is to incorporate the generated random number twice in computing the derivative payoff: once as the original simulated number, and another as its "antithetic" number.

For example, recall from our earlier option pricing example that one possibility to model the value of the stock price  $S_{T}$  at time  $T$  is by using equation (2). In that expression,  $\tilde{w}$  is a random variable following a normal distribution with mean 0 and standard deviation 1. Suppose that  $n$  values for the normal random variable  $\tilde{w}$  are generated. With the antithetic variable method, the value of the derivative payoff in each of the  $n$  scenarios is computed as the average of two payoffs: one obtained by plugging in the simulated value for  $\tilde{w}$ , and another obtained by plugging in the negative of the simulated value for  $\tilde{w}$ . These  $n$  "adjusted" payoffs are otherwise treated in the same way as in the traditional simulation method described earlier in this entry: At the end, the  $n$  payoffs are averaged and properly discounted to obtain the "fair" estimate of the derivative price. The difference is that this approach substantially reduces the standard error in the average estimate, while keeping the number of simulation trials at  $n$ .

The antithetic variable approach does not apply only to normal random variables. As explained in the previous section, random number generation typically happens in two stages: First, a random number between 0 and 1 is generated, and then this random number is "inverted" to obtain a random number from the desired probability distribution. Thus, one can apply the antithetic technique at the first stage, and treat the randomly generated number  $U$  as two realizations:  $U$  and its "antithetic" variable 1-U. For example, if the number generated on the interval [0,1] is 0.7, then the antithetic number is 0.3. Both of these numbers can then be "inverted" to obtain a pair of antithetic variables from a prespecified distribution.

# Stratified Sampling

Observations in the tails of input distributions that are typically less likely to be generated may never occur in a simulation, because the probability of their occurrence is small. Such observations, however, contain important information about extreme events which are of partic ular interest in financial applications. In order to ensure that they appear in the simulation, one would need to generate a huge number of scenarios.


This problem is often addressed by stratified sampling. Most generally, the term "stratified sampling" refers to any technique that divides the random values into ranges (called "strata" in statistics), and sampling from each range to ensure that a good representation of the distribution is obtained.

A simple way of stratifying the numbers in the [0,1] interval to ensure that, when "inverted," the generated random numbers cover well the whole range of a probability distribution of interest, is to divide the [0,1] interval into  $k$  smaller intervals of equal length:

$$
\left[ 0, \frac {1}{k} \right], \left(\frac {1}{k}, \frac {2}{k} \right], \dots , \left(\frac {k - 1}{k}, 1 \right]
$$

Random numbers can then be drawn sequentially from each small interval. Therefore, values from the tails of the distribution of interest (which will be generated when uniform random numbers from the intervals  $[0,\frac{1}{k} ]$  and  $\left(\frac{k - 1}{k},1\right]$  are drawn) obtain better representation.

In multiple dimensions (that is, when simulating several random variables), this method extends to dividing a hypercube (as opposed to an interval) into smaller hypercubes, and drawing an observation along each dimension of the smaller hypercubes. An enhanced extension to the basic stratified sampling method is Latin hypercube sampling (an option in many advanced simulation software products), which permutes the coordinates of an initially generated random vector of observations—one observation within each small hypercube—to reduce the number of times an actual random number is generated while ensuring that all strata are sufficiently well represented.

# Importance Sampling

Importance sampling is an alternative to stratified sampling for dealing with rare events, or extreme observations, and for reducing the number of simulation trials necessary to achieve a particular level of accuracy. The method changes the underlying scenario probabilities so as to give more weight to important outcomes in the simulation. Such outcomes are generated with greater frequency than they otherwise would. At the end, the observations' weights are scaled back in the computation of the parameter of interest, so that the estimation is correct.


There is no single recipe for how to construct good importance sampling methods. The specific construction depends on the underlying random process dynamics. For example, when pricing a European call option in the Black-Scholes setting, generating paths that are out-of-the-money is wasteful. This is because only paths that are in-the-money count in the final computation of the option price—the contribution of out-of-the-money paths to the option price is 0. Although in practice one would not use importance sampling for pricing a European call option for which there is a closed-form formula, we will use European call option pricing as a context in which to explain the importance sampling method.

First, note that in-the-money paths will occur only if the asset price at expiration is greater than the strike price; that is, they will result from realizations of the standard normal random variable  $\tilde{w}$  such that

$$
S _ {t} e ^ {(r - \frac {1}{2} \sigma^ {2}) (T - t) + \sigma \sqrt {(T - t)} \bar {w}} > K
$$

From this inequality, one can derive that only normal random numbers higher than

$$
\frac {\ln (K / S _ {t}) - (r - \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}
$$ will lead to in-the-money paths. Equivalently, this means that only random numbers between


$$
N \left(\frac {\ln (K / S _ {t}) - (r - \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}\right) \mathrm {a n d} 1
$$ on the unit interval [0,1], when "inverted" to obtain normal random numbers, will lead to in


the-money paths  $(N(.)$  here denotes the cumulative normal distribution). Thus, one only needs to simulate random numbers in that range of the [0,1] interval. When computing the option price at the end, instead of weighing each payoff equally by multiplying it by  $1 / n$  as one would do in standard Monte Carlo sampling, one multiplies the sum of the payoffs obtained from the simulation by the probability that a particular random path would be in-the-money assuming truly random sampling, which is the standard Monte Carlo method. The latter probability is

$$
\begin{array}{l} 1 - N \left(\frac {\ln (K / S _ {t}) - (r - \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}\right) \\ = N \left(\frac {\ln (S _ {t} / K) + (r - \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}\right) \\ \end{array}
$$

The call option price is then

$$
\begin{array}{l} V _ {t} = e ^ {- r (T - t)} \cdot N \left(\frac {\ln (S _ {t} / K) + (r - \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}\right) \\ \cdot \sum_ {i = 1} ^ {n} \max  \left\{S _ {t} e ^ {\left(r - \frac {1}{2} \sigma^ {2}\right) (T - t) + \sigma \sqrt {(T - t)} w _ {i}} - K, 0 \right\} \\ \end{array}
$$ where  $w_{1},\ldots ,w_{n}$  are all random numbers generated from a normal distribution in the range higher than


$$
\frac {\ln (K / S _ {t}) - (r - \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}
$$

As mentioned above, this is only a simple example in order to illustrate the main idea of importance sampling. More practical (albeit more technically challenging) applications can be found, for instance, in Chapter 4.6 in Glasserman (2004).

# Quasi-Random (Low-Discrepancy) Sequences

A truly random number generator may produce clustered observations (see Figure 3a), which necessitates generating many scenarios in order to obtain a good representation of the output distribution of interest. Recall from our earlier discussion that stratified sampling can

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/354466a79aa408c8224eaabc74270d8a327d1d9b62efbade31e38969657e1387.jpg)
(a) Pseudo-Random Number Generator

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/e29691f6d1370016644290daba166839d4cbff36e27b4ac3895021f3c2e9ab69.jpg)
(b) Sobol Quasi-Random Sequence be used to deal with this problem—it divides the ranges of possible values into a fixed number of strata, so as to "disperse" observations more evenly over the range. Quasi-random sequences instead ensure a smooth representation of the range by continuously "filling in" gaps on the unit interval [0,1] left by previously generated random numbers (see an example of 1,000 generated values of a quasi-random sequence in Figure 3b). The term "quasi-random" is actually a misnomer, because, unlike pseudo-random number sequences, quasi-random number sequences do not pretend to be random. They are deterministic on purpose, and their roots can be found in real analysis and abstract algebra rather than in simulation or probability theory. The term low discrepancy sequences is often used interchangeably with the term "quasi-random" sequences, and is more accurate.
Figure 3 One Thousand Simulated Number Values for Two Uniform Random Variables on the Interval [0,1]


Important examples of quasi-random sequences were suggested by Sobol (1967), Faure (1982), Halton (1960), and Hammersley (1960). These sequences build on a family of so-called Van der Korput sequences. For example, the Van der Korput sequence of base 2 is

$$
0, \frac {1}{2}, \frac {1}{4}, \frac {3}{4}, \frac {1}{8}, \frac {5}{8}, \frac {3}{8}, \frac {7}{8}, \dots
$$

The actual generation of Van der Korput sequences is somewhat technical, but the outcome is intuitive. Note that as new points are added to the sequence, they appear on alternate sides of  $\frac{1}{2}$  in a balanced way. The main idea is that as the number of generated values increases, the sequence covers uniformly the unit interval.


The values generated with quasi-random sequences are treated as "random" numbers for the purposes of simulation modeling. In particular, instead of generating random numbers between 0 and 1 and "inverting" them to obtain an arbitrary probability distribution, one would "invert" the numbers in the quasi-random sequence. Different sequences have different advantages for specific financial applications, but the Faure and Sobol sequences in particular have been proven to generate very accurate estimates for derivative pricing in tests.[11] results in a smoother and more consistent approximation to the true option price computed with the Black-Scholes formula than the traditional Monte Carlo method. In general, as the number of generated quasi-random numbers increases, so does the accuracy of estimation, although it is not easy to state the exact level of accuracy, because probability laws do not apply to deterministic sequences.

Figure 4 illustrates the value of a European call option computed with three different methods: BS (the closed-form Black-Scholes price), MC (traditional Monte-Carlo), and QMC (quasi-random or quasi-Monte-Carlo using a Faure low discrepancy sequence to generate scenarios). The current asset price is assumed to be  \$100, the exercise price for the option is assumed to be\$ 95, the asset volatility is 20\%, the time to maturity of the option is 1 year, and the risk-free rate is 4\% per annum. One can observe that as the number of scenarios generated increases, the quasi-Monte-Carlo method

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/90a575e84e139489675f28ec12e9e26001d8bdfbbf9475c0374a70ca83304af7.jpg)
Figure 4 Value of a European Call Option Computed with Three Different Methods


# SIMULATION SOFTWARE

Today, good random number generators and user-friendly simulation software are easily available. Most computer languages have a "rand() command that simulates a random number between 0 and 1. Microsoft Excel adds such as Crystal Ball and @RISK allow not only for simulating random numbers from a wide variety of probability distributions, but also for incorporating random number generation into larger models through macros and scripts. Computing environments such as Matlab and Mathematica contain commands for random number simulation, and the capability of generating low discrepancy sequences can be added through widely available libraries. In addition, a number of modules that allow for simulating sophisticated probability distributions are available for open-source computer languages such as Perl (see the Comprehensive Perl Archive Network, http://www.cpan.org), Python (see http://www.python.org), and R (see http://www.r-project.org).


# KEY POINTS

- The main idea behind the Monte Carlo simulation technique is to represent uncertainty in the form of scenarios and to evaluate variables of interest based on these scenarios.
- Monte Carlo simulation has widespread applications in pricing, hedging, and risk management. Examples include complex financial derivative pricing, assessment of sensitivity of prices to changes in market variables, portfolio risk measurement, and credit risk estimation and pricing.
- Despite great advances in computational power, Monte Carlo simulation can be expensive for large-scale problems, and a substantial amount of research in recent years has been dedicated to making it more efficient and accurate.
- Variance reduction methods such as antithetic variables, stratified sampling, importance sampling, and carefully selected low discrepancy sequences are widely used in practice today.


# NOTES

1. For an introduction to Brownian motion, see Hull (2005).
2. See, for example, Chapter 9 in Glasserman (2004).
3. See Chapter 7.2 in Glasserman (2004).
4. See Chen and Glasserman (2006a) for further details.
5. See Glasserman et al. (2000).
6. For example, see Duffie and Garleanu (2001).
7. See Chen and Glasserman (2006b).
8. See, for example, Chapter 2 in Evans and Olson (2002).
9. For a more detailed discussion of such methods, see Chapter 14 in Pachamanova and Fabozzi (2010).
10. See Chapter 5 in Glasserman (2004).
11. See the survey in Boyle et al. (1997).

# REFERENCES


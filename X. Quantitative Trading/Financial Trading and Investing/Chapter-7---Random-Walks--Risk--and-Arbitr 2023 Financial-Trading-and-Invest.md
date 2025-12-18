---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Random Walks, Risk, and Arbitrage
linter-yaml-title-alias: Random Walks, Risk, and Arbitrage
---

# Random Walks, Risk, and Arbitrage

# 7.1 MARKET EFFICIENCY AND RANDOM WALKS

Market efficiency occurs when prices reflect all available information. Price changes in an efficient market occur when new information becomes available. Since information dissemination (news) arrives randomly, security price changes might be expected to occur randomly. Thus, an efficient market leads to random security price changes. We will discuss market efficiency extensively in Chapter 12; we will introduce sequences of random variables and random walks here.

# Random Walks and Martingales

Why should a trader know about random walks and martingales? First, consider the well-known investment company advisory: "Past performance is not indicative of future results." Past performance can be evaluated based on the current price relative to one or more historical prices. If the advisory is true, then future performance is based on a future price and the current price; past prices are irrelevant. In other words, prices follow a Markov process, also known as a random walk. A random walk is a stochastic process (random sequence) in which a state probability at time  $t$  depends only on its immediately prior state and not on the remainder of its history. A stock's price history has no effect on its future if it follows a random walk. If stock prices do not follow random walks, stock markets cannot be efficient.

There are numerous variations of this advisory.  
<sup>2</sup>Pearson (1905) described the optimal search process for finding a drunk left in the middle of a field. Left to stagger one step at a time in an entirely unpredictable fashion, she is more likely to be found where she was left than in any other position on the field.

More generally, a stochastic process is a sequence of random variables  $X_{t}$  defined on a common probability space  $(\Omega, \mathcal{F}, \mathbb{P})$  and indexed by time  $t$ . In other words, a stochastic process is a random series of values  $X_{t}$  sequenced over time. The values of  $X_{t}$  as  $t$  varies define one particular sample path of the process associated with a particular state or outcome from  $\Omega$ . A discrete time process is defined for a countable set of time periods. A continuous time process that is defined over an interval of the real number line consisting of an infinite number of time periods. The state space  $X$  is the set of all possible values of the stochastic process  $\{X_{t}\}$ . The state space can be discrete (countable) or continuous. For example, if a stock price changes in increments of \$0.01, the state space is said to be discrete. The state space for prices is continuous if prices can assume any (positive) real value.

As might be inferred from above, a discrete Markov process or a discrete random walk is a noncontinuous stochastic process in which a state probability at time  $t$  depends only on its immediately prior state at time  $t - 1$ :

$$
P (X _ {t} | X _ {t - 1}, X _ {t - 2}, \dots , X _ {0}) = P (X _ {t} | X _ {t - 1})
$$

This means that the probability of a given value for  $X$  at time  $t$  given the historical value of  $X$  one period earlier, two periods earlier, and so on all the back to the start of the process is equal to the probability of that given value for  $X$  at time  $t$  given the value of  $X$  one period earlier. Thus, given the process history  $X_0, X_1, \ldots, X_{t-1}$  from its start at time 0 to time  $t-1$ , the probability that the process will be in state  $X_t$  at time  $t$  depends only on its present state  $X_{t-1}$ . This means that a Markov Process has no memory. Only the current state is relevant to predicting its future.

A discrete martingale process is a stochastic process  $X_{t}$  in which  $\operatorname{E}[X_t|X_0,X_1,\dots,X_{t - 1}] = X_{t - 1}$  for all  $t = 1,2,\ldots$ . Thus, a martingale is a process whose future variations have no specific direction that can be discerned from the process history  $(X_0,X_1,\dots,X_{t - 1})$ . A martingale is said to be a "fair game" because it will not exhibit consistent trends either up or down. A submartingale is a stochastic process  $X_{t}$  in which  $\operatorname{E}[X_t|X_0,X_1,X_2,\dots,X_{t - 1}] \geq X_{t - 1}$ . A submartingale will tend either to trend upward over time or is a martingale. A supermartingale will tend to trend downward over time or is a martingale. Stock prices are often modeled as submartingales because they tend to trend upward due to time value of money and investor risk aversion.

# Brownian Motion Processes

One particular version of a continuous time-space random walk is a standard Brownian motion process  $Z_{t}$ , also known as a Wiener process. A process  $Z_{t}$  is a standard Brownian motion process if:

1. Changes in  $Z_{t}$  over time are independent over disjoint (non-overlapping) intervals of time; that is,  $\mathrm{COV}(Z_s - Z_\tau, Z_u - Z_{v_r}) = 0$  when  $s > \tau > u > v$ .

3Mathematicians characterize a probability space as consisting of three types of elements: a sample space  $\Omega$  of all potential outcomes (e.g., a particular future state of the world), a filtration  $\mathcal{F}$ , roughly characterized as the information set or history required for valuation (e.g., the security's price history), and an associated probability measure  $\mathbb{P}$  that maps subsets from  $\Omega$  to [0,1]. Readers are likely to encounter this sort of somewhat formal notation in some finance books (See Knopf and Teall, 2015 for more complete explanations), but understanding these more technical mathematical definitions is not essential for the remainder of this text.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/84c839fa-ce3f-4197-a0ea-064631c7610d/18d7ae4e514721bc86f0628962cf7f394cd7256f81e0ab6a8fc98652ca2e0343.jpg)  
FIGURE 7.1 Brownian motion: a fractal.

2. Changes in  $Z_{t}$  are normally distributed with  $\operatorname{E}[Z_t - Z_\tau] = 0$  (standard Brownian motion is also a martingale) and  $\operatorname{E}[(Z_t - Z_\tau)^2] = t - \tau$  for  $t > \tau$ . Thus,  $(Z_t - Z_\tau) \sim \mathrm{N}(0, t - \tau)$ .  
3. $Z_{t}$  is a continuous function of  $t$ .  
4. The process begins at zero,  $Z_0 = 0$ .

Brownian motion has a number of interesting traits. First, it is continuous everywhere and differentiable nowhere (it does not smooth as time intervals decrease) under Newtonian calculus. We see in Figure 7.1 that Brownian motion is a fractal, meaning that regardless of the length of the observation time period, the process remains a Brownian motion, and can be defined equivalently by a simple change in the time scale. Consider the Brownian motion process represented by the top graph in Figure 7.1. If a short segment is cut out and magnified as in the bottom graph in Figure 7.1, the graphs look very similar to one another in that they don't smooth and the variance is proportional to time. Further magnifications of cutouts would continue to result in the same phenomenon. In addition, once a Brownian motion hits a given value, it will return to that value infinitely often. More generally, we will scale the variance by a multiple  $\sigma^2$  so that the change in the process  $X_{t}$  from time  $t$  to time  $t + \Delta t$  takes the form:

$$
\Delta X _ {t} = \sigma \Delta Z _ {t} = \sigma \left(Z _ {t + \Delta t} - Z _ {t}\right) \sim N (0, \sigma^ {2} \Delta t)
$$

Consider a more general Brownian motion process  $S_{t} = S_{0} + \sigma Z_{t}$ . The graph of a particular possible path of  $S_{t}$  over time  $t$  is similar to the graph of standard Brownian motion. It is continuous and nondifferentiable (angular movements). The difference is that it can start (time 0) at  $S_{0} \neq 0$  rather than at the origin 0 and its variance can differ from 1.  $S_{t}$  has a normal distribution with mean  $S_{0}$  and variance  $\sigma^2 t$  ( $S_{t} \sim N(S_{0},\sigma^{2}t)$ ) since:

$$
\frac {S _ {t} - S _ {0}}{\sigma \sqrt {t}} = \frac {Z _ {t}}{\sqrt {t}} = Z
$$

where  $Z\sim \mathrm{N}(0,1)$  . Note that  $\Delta S_{t} = S_{t + \Delta t} - S_{\mathrm{t}}\sim \mathrm{N}(0,\sigma^{2}\Delta t)$

We can further generalize this Brownian motion process, to make it more appropriate for modeling stock prices  $S_{t}$ . We will generalize further on the Brownian motion process to allow for a trend or drift  $a$  in the process:

$$
d S _ {t} = a d t + \sigma d Z _ {t}
$$

where  $dS_{t}$  is the infinitesimal change in the stock price at time  $t$ ,  $a$  represents the drift tendency in the value of  $S_{t}$ , and  $dZ_{t}$  is the infinitesimal change in the standard Brownian motion process. Because prices of many securities such as stocks tend to have a predictable drift component in addition to randomness, this generalized Brownian motion processes might be more practical for modeling purposes than standard Brownian motion, which only includes a random element. We can write a similar process to model stock returns as a Brownian motion with drift:

$$
d S _ {t} / S _ {t} = \mu d t + \sigma d Z _ {t}
$$

The instantaneous change in the stock price is  $dS_{t}$ , the instantaneous stock return  $dS_{t} / S_{t}$  trends as per the drift term,  $\mu$ , which represents the instantaneous expected return for the stock, and  $\sigma$  is the instantaneous stock return standard deviation. The corresponding process for the stock price  $S_{t}$  itself is called geometric Brownian motion (or a geometric Wiener) process. The process allows for compounding of returns as stock prices grow or change. It is the most common process used to model stock prices  $S_{t}$ . This geometric Brownian motion process is particularly useful for modeling the relationships between stocks and options and other derivatives.

# 7.2 RISK

Definitions of risk vary based on context. Measuring risk can be rather difficult when it is difficult to define risk or to capture all of its characteristics. One perspective on the risk of an investment is that it is simply the uncertainty associated with investment returns or cash flows. However, uncertainty can be a complex quality. Analysts often attempt to quantify risk with absolute measures such as variance or relative risk measures such as beta. Although return variance is a quite simple mathematical concept

with many desirable characteristics, its estimation is hampered by the lack of ideal data. Suppose, for example, that we wish to estimate the risk or variance associated with a stock's returns over the next year. Consider the following discrete expression for ex-ante or forecast variance  $\sigma_F^2$  that considers all potential return outcomes  $R_{i}$  and associated probabilities  $P_{i}$ :

$$
\sigma_ {F} ^ {2} = \sum_ {i = 1} ^ {n} \left(R _ {i} - E [ R _ {i} ]\right) ^ {2} P _ {i} \tag {7.1}
$$

While this expression for ex-ante variance is by definition correct, its computation requires that we identify all potential returns for the security (which might range from minus infinity to positive infinity) along with their associated probabilities. This might be practical when the list of potential returns is small or when we can ascertain a specific return generating process (such as Brownian motion). However, associating probabilities with these returns can be a particularly difficult problem. For example, what is the probability that the return for a given stock will range between  $5\%$  and  $6\%$ ? In many instances, we will be forced to either make probability assignments of a somewhat subjective nature or define a joint return and probability generating process for the security. Availability of historical price data can make risk estimation based on historical variances more practical.<sup>4</sup>

# Historical Volatility Indicators

Because it is frequently difficult to estimate the inputs necessary to estimate security ex-ante variance, analysts often use the volatility of ex-post or historical returns as a surrogate for ex-ante risk:

$$
\sigma_ {H} ^ {2} = \sum_ {t = 1} ^ {n} \frac {\left(R _ {t} - \bar {R} _ {t}\right) ^ {2}}{n - 1} \tag {7.2}
$$

where  $R_{t}$  represents the return realized during historical period  $t$ :  $(R_{t} = [(P_{t} - P_{t-1}) / P_{t-1}])$  in this  $n$  time period framework. Table 7.1 presents sample monthly historical price data for GM stock along with monthly returns computed from these prices. We see below that the traditional sample monthly variance estimator for this stock based on these 23 returns equals 0.012:  $\sigma_{H}^{2} = \sum_{t=1}^{n} (R_{t} - \overline{R}_{t})^{2} / (n-1) = 0.012$ . If we were to assume that returns follow a Brownian motion process (or at least assume that stock returns are uncorrelated over time), the annualized variance would be  $0.144 = 0.012 \times 12$ . Use of the traditional sample estimator to forecast variance requires the assumption that stock return variances are constant over time, or more specifically, that historical return variance is an appropriate indicator of future return variance. While this can often be a reasonable assumption, firm risk conditions can change and it is well documented that price volatility does fluctuate over time (see, for example, Officer, 1971). In addition, note that the sample variance estimator rather than the

TABLE 7.1 Traditional Sample Estimators for GM Stock, October 2000 to September 2002  

<table><tr><td>Date</td><td>Close</td><td>\( R_t \)</td><td>Date</td><td>Close</td><td>\( R_t \)</td></tr><tr><td>3-Sep-02</td><td>38.9</td><td>-0.187212704</td><td>4-Sep-01</td><td>41.66</td><td>-0.216475456</td></tr><tr><td>1-Aug-02</td><td>47.86</td><td>0.028141783</td><td>1-Aug-01</td><td>53.17</td><td>-0.132343342</td></tr><tr><td>1-Jul-02</td><td>46.55</td><td>-0.12909261</td><td>2-Jul-01</td><td>61.28</td><td>-0.011612903</td></tr><tr><td>3-Jun-02</td><td>53.45</td><td>-0.13998391</td><td>1-Jun-01</td><td>62</td><td>0.130767828</td></tr><tr><td>1-May-02</td><td>62.15</td><td>-0.024026382</td><td>1-May-01</td><td>54.83</td><td>0.047573558</td></tr><tr><td>1-Apr-02</td><td>63.68</td><td>0.061156474</td><td>2-Apr-01</td><td>52.34</td><td>0.05716017</td></tr><tr><td>1-Mar-02</td><td>60.01</td><td>0.141091462</td><td>1-Mar-01</td><td>49.51</td><td>-0.027690495</td></tr><tr><td>1-Feb-02</td><td>52.59</td><td>0.046567164</td><td>1-Feb-01</td><td>50.92</td><td>0.001967729</td></tr><tr><td>2-Jan-02</td><td>50.25</td><td>0.052135678</td><td>2-Jan-01</td><td>50.82</td><td>0.054138146</td></tr><tr><td>3-Dec-01</td><td>47.76</td><td>-0.022113022</td><td>1-Dec-00</td><td>48.21</td><td>0.029028815</td></tr><tr><td>1-Nov-01</td><td>48.84</td><td>0.217044605</td><td>1-Nov-00</td><td>46.85</td><td>-0.195984211</td></tr><tr><td>1-Oct-01</td><td>40.13</td><td>-0.036725876</td><td>2-Oct-00</td><td>58.27</td><td>N/A</td></tr></table>

population estimator is proposed in Equation (7.2). This difference becomes more significant with smaller samples.

Using Equation (7.2) to estimate security variance requires that the analyst choose a sample series of prices (and dividends, if relevant) at  $n$  regular intervals from which to compute returns. Two problems arise in this process:

1. Which prices should be selected and at what intervals?  
2. How many prices should be selected?

First, since each of the major stock markets tend to close at regular times on a daily basis, closing prices will usually reflect reasonably comparable intervals, whether selected on a daily, weekly, monthly, annual, or other basis. Those prices closer to the date of computation will probably better reflect security risk (e.g., price volatility of a security 30 years ago hardly seems relevant today). On the other hand, longer-term returns, such as those computed on a monthly or annual basis, might more closely follow a normal distribution than returns computed on a daily or shorter-term basis. This is a highly desirable quality, since many of the statistical estimation procedures used by analysts assume normal (or lognormal) distribution of inputs; the characteristics of most non-normal distributions are not well known.

Generally speaking, more prices or data points used in the computation process will increase the statistical significance of variance estimates. However, this leads to a dilemma: more data points, particularly pertaining to longer-term returns, will require prices from the more distant, but less relevant past. On the other hand, shorter estimation intervals may result in non-normal return distributions as well as autocorrelation issues.

Hence, the analyst must balance the needs for a large sample to ensure statistical significance, recent data for relevance, and longer-term data for independence and normality of distribution. These conflicting needs call for compromise. One convention that has developed over the years both in academia and in the industry is based on computations of five years of monthly returns.

Nonetheless, numerous difficulties still remain with this estimation procedure. For example, as we discussed above, variances are not necessarily stable over time. In our numerical illustration, higher-volatility periods are clustered together as are lower volatility periods, in a manner similar to actual return variances. Second, returns themselves might not be independently distributed. In our numerical illustration, returns are somewhat inversely correlated, potentially leading to significant differences in our variance estimates. Thus, both problems arise in our numerical illustration data in Table 7.1. In addition, nontrading may omit returns data for computations, creating more problems with historical variance estimations. Finally, the traditional historical volatility estimator can involve collecting large amounts of data and tedious calculations.

# Extreme Value Estimators

Two difficulties associated with the traditional sample estimator procedure, time required for computation and arbitrary selection of returns from which to compute volatilities might be dealt with by using extreme value estimators. Extreme value estimators are based on high and low values (and sometimes other parameters) realized by the security's price over a given time period.

For example, consider the Parkinson extreme value estimator (Parkinson, 1980). This estimating procedure is based on the assumption that underlying stock returns are lognormally distributed without drift. Given this distribution assumption, the underlying stock's realized high and low prices over a given period provide information regarding the stock's variance. Thus, if we are willing to assume that the return distribution is to be the same during the future period, Parkinson's estimate for the underlying stock return variance is determined as follows:

$$
\sigma_ {p} ^ {2} = 0. 3 6 1 \cdot \left[ \ln \left(\frac {H I}{L O}\right) \right] ^ {2} \tag {7.3}
$$

where  $HI$  designates the stock's realized high price for the given period and  $LO$  designates the low price over the same period. The high and low prices for GM in October 2002 were 47.51 and 38.11 for October 2002, the most recent month listed in Table 7.1. The extreme value estimator for this month would be calculated as follows:

$$
\sigma_ {p} ^ {2} = 0. 3 6 1 \cdot \left[ \ln \left(\frac {H I}{L O}\right) \right] ^ {2} = 0. 3 6 1 \cdot \left[ \ln \left(\frac {4 7 . 5 1}{3 8 . 1 1}\right) \right] ^ {2} = 0. 0 1 7 5 4 6
$$

Alternatively, we could obtain an average monthly variance for the 24-month period covered in the table (ignoring the possibility of intraday highs and lows that differ from

closing prices). Since our price data cover 24 months, we will divide this figure by 24 to obtain our monthly variance. The Parkinson measure results in a monthly variance estimate equal to 0.007414 for GM over the period October 2000 to September 2002 in Table 7.1:

$$
\sigma_ {p} ^ {2} = 0. 3 6 1 \cdot \left[ \ln \left(\frac {H I}{L O}\right) \right] ^ {2} / m = 0. 3 6 1 \cdot \left[ \ln \left(\frac {6 3 . 6 8}{3 8 . 9}\right) \right] ^ {2} / 2 4 = 0. 0 0 7 4 1 4
$$

Clearly, the Parkinson variance estimate will be easy to obtain when periodic high and low prices for a stock are regularly published as they are for the NYSE and many other stocks. Furthermore, the econometric efficiency of the Parkinson procedure is several times higher than the traditional sample estimation procedure. Using the extreme value estimator might be as simple as inserting into Equation (7.3) the 52-week high and low prices. Note that the Parkinson estimate is significantly smaller than the monthly historical estimate. This difference draws largely from the negative autocorrelation (stock price changes are inversely correlated from one time period to the next) in the returns series.

# Implied Volatilities

A problem shared by both the traditional sample estimating procedures and the extreme value estimators is that they require the assumption of stable variance estimates over time; more specifically, that future variances equal or can be estimated from historical variances. A third procedure first suggested by Latane and Rendleman (1976) is based on market prices of options that might be used to imply variance estimates. For example, the Black-Scholes option pricing model and its extensions provide an excellent means to estimate underlying stock variances if call prices are known. Essentially, this procedure determines market estimates for underlying stock variance based on known market prices for options on the underlying securities. Consider our stock example from Table 7.1 on September 3, 2002 when GM stock closed at  \$38.9. Suppose that a one-month \((T = 1)$  call on GM stock with a striking price equal to \)40 was at the same time trading for  $c_{0} = \mathbb{S}1.16$ :

$$
T = 1 \quad r _ {f} = 0. 0 0 5 \quad c _ {0} = \\ \\ \\( 1. 1 6 \quad X = \\ \\ \\) 4 0 \quad S _ {0} = \\
$$

5Accuracy of the Parkinson measure can be improved if the sample period can be subdivided into  $n$  equal sub-periods such that variance is estimated as follows*:

$$
\sigma_ {p} ^ {2} = \frac {0 . 3 6 1}{n} \cdot \left[ \sum_ {t = 1} ^ {n} \ln \left(\frac {H I _ {t}}{L O _ {t}}\right) \right] ^ {2}
$$

This is the more general form of the Parkinson estimator. We should obtain an intraday highs and lows for each of the 24 months, and then square the sum of their logs. The constant, 0.361, is the normal density function constant,  $1 / \sqrt{2\pi}$ .

<sup>6</sup>This section assumes a background in or a basic understanding of the Black-Scholes options pricing model. If necessary, see Section 7.A.2 in this chapter's appendix for a review of options and the Black-Scholes option pricing model and Section 7.A.3 for additional discussion and examples of estimating implied volatilities.

where  $r_f$  equals the monthly riskless return rate and  $X$  is the option striking price. If investors use the Black-Scholes option pricing model to value calls, the following must hold:

$$
\begin{array}{l} 1. 1 6 = 3 8. 9 \cdot N (d _ {1}) - 4 0 e ^ {- r _ {f} T} \cdot N (d _ {2}) \\ d _ {1} = \frac {\ln \left(\frac {3 8 . 9}{4 0}\right) + (0 . 0 0 5 + 0 . 5 \sigma^ {2}) \cdot 1}{\sigma \sqrt {1}} \tag {7.4} \\ \end{array}
$$

$$
d _ {2} = d _ {1} - \sigma \sqrt {1}
$$

We find that this system of equations holds when  $\sigma^2 = 0.01$ . Thus, the market prices this call as though it expects that the variance of anticipated monthly returns for the underlying stock is 0.01. The annualized variance would be 0.12 (12 times the monthly variance).

Unfortunately, the system of equations required to obtain an implied variance has no closed form solution. That is, we will be unable to solve Equation (7.4) explicitly for variance; we must search, iterate, and substitute for a solution. You can substitute trial values for  $\sigma^2$  until you find one that solves the system. A significant amount of time can be saved by using one of several well-known numerical search procedures such as the method of bisection or the Newton-Raphson method.<sup>7</sup>

Table 7.2 presents, describes, and compares basic risk measures discussed in this chapter. There is no consensus as to which measure is clearly best, although some measures

TABLE 7.2 Basic Risk Measures  

<table><tr><td>Measure</td><td>Best Used When</td></tr><tr><td>Ex-ante measure based on probabilities</td><td>1. Ex-ante or future-oriented measure is needed such as when: 
a. The asset&#x27;s historical volatility does not properly indicate its future risk. 
b. The asset&#x27;s risk characteristics have recently changed. 
c. The asset has no price or returns history. 
2. All potential future return or cash flow outcomes can be specified. 
3. Probabilities can be associated with each potential return or cash flow outcome. 
4. Instead of (2) &amp; (3), there is a specific return generating process with known parameters.</td></tr><tr><td>Traditional sample estimator</td><td>1. Variances are expected to be constant between historical and future time periods. 
2. There are an appropriate number of sampling intervals where: 
a. More periods increase statistical significance. 
b. More periods increase reliance on older, less relevant historical data. 
3. Appropriate interval lengths can be determined; longer periods approach normality.</td></tr><tr><td>Parkinson extreme value estimator</td><td>1. The computationally simplest measure based on a minimum of data is desired. 
2. Asset returns are lognormally distributed without drift. 
3. Historical volatility is a good indicator of future risk.</td></tr><tr><td>Implied volatility: analytical procedures</td><td>1. Option prices on relevant underlying asset are readily available. 
2. Option pricing model assumptions hold in the relevant market. 
3. Can be used when historical volatility does not indicate future risk. 
4. User is able to use the appropriate analytical procedures. 
5. The market can be assumed capable of assessing risk.</td></tr></table>

These and other numerical procedures for estimating implied volatilities are discussed in Section 7.A.3 in the Appendix to this chapter. More discussion of the Black-Scholes and other option pricing models is available in Chapter 9.

perform better under some circumstances. Risk measures need to be evaluated on the basis of the availability of appropriate data and appropriateness of underlying assumptions. In addition, all of the measures that we have discussed in this chapter are incomplete in that they do not account for factors such as skewness (unequal concentrations of potential outcomes unequally distributed below and above the mean) and fat tails (kurtosis or high probabilities of extreme events). No single risk measure can serve adequately to capture all sources of security risk. Hence, the trader or securities analyst needs to use judgment in the application and interpretation of risk measures.

# 7.3 ARBITRAGE

Arbitrage, perhaps the single most important pricing tool in modern finance, is defined as the simultaneous purchase and sale of assets or portfolios yielding identical cash flows. Assets generating identical cash flows should be worth the same amount. This is known as the Law of One Price. If assets generating identical cash flows sell at different prices, opportunities exist to create a profit by buying the cheaper asset and selling the more expensive asset. The ability to realize a profit from this type of transaction is known as an arbitrage opportunity. Rational investors in such a scenario will seek to purchase the underpriced asset, financing its purchase by simultaneously selling the overpriced asset. The arbitrageur will execute such arbitrage transactions, continuing to earn arbitrage profits in increasing quantities until the arbitrage opportunity is eliminated. If markets are competitive, the arbitrageur's purchases of the underpriced asset will bid its price up while the arbitrageur's selling transactions will force down the price of the overpriced asset. These arbitrage transactions should continue until no assets are overor underpriced. Hence, arbitrageurs should force assets that produce identical cash flow structures to have identical prices.

Classic arbitrage is the simultaneous purchase and sale of the same asset at a profit. For example, if gold is selling in London markets for \$1200 per ounce and in New York markets for \$1220 per ounce, a classic arbitrage opportunity exists. An investor could purchase gold in London for \$1200 per ounce and simultaneously sell it in New York for \$1220. This results in a \$20 profit per "round-trip" transaction. The transactions involve no risk since both the selling and purchase prices are known and are executed simultaneously. Furthermore, no initial net investment is required because the transactions offset each other; the proceeds of the sale are used to finance the purchase. Thus, if a classic arbitrage opportunity exists, an investor will have the opportunity to make a riskless profit without investing any of his own money. If the laws of supply and demand are not impeded by market inefficiencies, investors will flock to exploit this opportunity. Their buying pressure in London markets will force the London price to rise; their selling pressure in New York markets will force the New York price down. Buying and selling pressure will persist until the prices in the two markets are equal. Thus, significant classic arbitrage opportunities are not likely to persist long in unimpeded free markets. Perhaps an even simpler form of arbitrage opportunity exists in a crossed market, where a bid exceeds an offer price. This

can occur when a slow trader's quote is not withdrawn quickly enough, enabling a prospective buyer to purchase a security at the lower offer price and simultaneously sell it at the higher bid price.

More generally, arbitrage refers to the near simultaneous purchase and sale of portfolios generating similar cash flow structures. For example, the cash flow structure of a long position in a forward contract can be replicated by a portfolio consisting of a long position in a call and short position in a put. Although the contracts in the options portfolio are different from the forward contract, the anticipated cash flows are identical. Thus, if the portfolio produces a lower initial cash flow, it can be sold (shorted) while a long position is taken in the forward contract. These positions in sum comprise an arbitrage portfolio. Future cash flows are offset because they are identical, and net sales proceeds from the options portfolio will exceed those of the futures contract. Similarly, arbitrage can refer to offsetting trades of securities whose payoff structures are strongly correlated. For example, the cash flow structure of an automobile industry stock can be nearly replicated with the cash flow structure of a portfolio of other securities designed to be strongly correlated with the stock. When prices of the portfolio and the stock diverge, arbitrage opportunities might arise. Sometimes, these opportunities are referred to as quasi-arbitrage in that they are not necessarily completely riskless or that their transactions are not necessarily executed simultaneously.

The principle of arbitrage is the foundation underlying relative securities valuation. That is, we are able to price securities relative to one another or relative to replicating portfolios when arbitrageurs are able to exploit violations of the law of one price. The no-arbitrage price of a security is the value of the portfolio constructed to replicate the security. When the law of one price does not hold, one (or both) of the following will hold:

1. There exist opportunities to secure riskless arbitrage opportunities by buying underpriced assets while selling overpriced assets.  
2. There exists some sort of market imperfection such as high transactions preventing arbitrageurs from exploiting arbitrage opportunities.

# Pairs Trading and Stat-Arb

As with other arbitrage strategies, pairs trading involves the simultaneous purchase and sale of similar securities. Pairs trading involves taking offsetting positions in two different stocks (perhaps options or index contracts) with strong returns correlations, one long and one short, such that gains in one position are expected to more than offset losses in the other position. One simple strategy illustration might involve taking a long position in GM stock based on recent price decreases along with a short position in Ford based on recent price increases. If the investor generally expects that automobile stock prices ought to be strongly correlated, and should have been performing similarly, she might expect that future short term performance of the underperforming stock will exceed the performance of the stock with the stronger current price level. Pairs trading is essentially an arbitrage strategy anticipating that the deviation of a recent pricing relation between two securities

is only temporary. Holding periods for most pairs trading strategies tend to be quite short, ranging from seconds to days. Pairs traders typically focus either on the ratio between prices of two securities or the difference between their prices. One cannot expect to consistently earn high returns based on such strategies, so that many pairs traders execute many such trades over many different pairs of stocks with the expectation that their strategies will be correct more often than they are wrong. Furthermore, many pairs traders will seek to hold "portfolios of pairs" whose expected returns will tend to be uncorrelated with those of the market as a whole. Such "beta-neutral" portfolios might be expected to be insulated from large losses related to stock market swings.

In a manner similar to pairs trading, stat-arb (statistical arbitrage) strategies seek to exploit mispricing opportunities while minimizing risk. Stat-arb strategies focus on statistical or historical relationships among securities and seek to exploit price divergences as portfolios of securities diverge from "normal" pricing relationships. Khandani and Lo (2007) refer to stat-arb as a set of "highly technical short-term mean-reversion strategies involving large numbers of securities (hundreds to thousands, depending on the amount of risk capital), very short holding periods (measured in seconds to days), and substantial computational, trading, and IT infrastructure." There is no single stat-arb strategy; there are many types, all of which involve large sets of securities whose statistical price relationships relative to each other diverge from what the investor expects.

# 7.4 LIMITS TO ARBITRAGE

Arbitrage opportunities are the traders' "pot of gold at the end of the rainbow." Once found, they are free sources of money. In theory, arbitrage is riskless because asset cash flows are known to be offsetting in the future and because initial transactions are executed simultaneously at known prices. Unfortunately, the reality is often quite different. For example, implementation risk arises because transactions might not be executed or be executed at prices that differ from what the arbitrageur anticipated. Perhaps even worse, one leg of the arbitrage transaction might fail to execute, leaving the arbitrageur unhedged in an undesirable portfolio. Arbitrageur profit opportunities should cause markets to respond more efficiently to new information and mispricing of securities. However, sometimes arbitrageurs simply don't fully understand or appreciate the models that they trade on. This misunderstanding is called model risk. In many instances, model risk arises from a simple failure to appreciate the differences between model assumptions and reality. Despite potential profit opportunities, some markets are slow to react to arbitrage opportunities and some do not react at all. In fact, some markets may move opposite to the arbitrageur's expectations, at least in the short run. This might render traders unable to survive in the long run. This risk is called basis risk. If trading is difficult or expensive, perhaps due to high transaction costs, price adjustments to arbitrage may be delayed, prevented, or again, move further in the unanticipated direction. Furthermore, the arbitrageur is subject to margin calls, forced sell-outs and forced buy-ins, potentially shortening her time horizon to recover from the unanticipated price change. Basis risk is mitigated if the arbitrageur is able to count on a known terminal liquidation position (such as with short-term options, futures, and Treasury bills) and maintain her portfolio hedge until that date.

Thus, short-lived securities such as options tend to have smaller basis risk than long-lived securities such as common stock. An additional source of arbitrage risk, particularly when instruments are not exchange-traded, is counterparty risk, which is the potential that a trade counterparty fails to fulfill his side of a transaction.

De Long et al. (1990) argue that the short investment horizons of arbitrageurs can prevent them from taking advantage of errors or noise in market prices. If it appears that price deviations from fundamental values might persist, arbitrageurs might avoid potentially profitable opportunities, causing even greater risk and deviations from fundamental values. This might enable noise traders to earn even higher returns from their pricing errors, causing pricing bubbles to form. For example, consider the case of Long Term Capital Management (LTCM), which was founded in the early 1990s by John Meriwether, formerly head of the fixed income unit of Salomon Brothers, Inc. He brought in famed academics Myron Scholes and Robert Merton, developers of some of the most important derivatives and arbitrage strategies of the time, and the fund focused much of its trading activity on derivatives and fixed income. LTCM realized enormous returns and growth until 1998, when it lost over \$4 billion in one spectacularly disastrous quarter, forcing the fund into liquidation and threatening contagion throughout financial markets and potential market meltdown. In many instances as we will discuss shortly, LTCM took appropriate positions in arbitrage portfolios, but the fund was so highly leveraged that it could not withstand short-term market moves against their positions.

Among the most important strategies to LTCM was to exploit convergence trades, which often involved taking long positions in cheaper foreign debt and short positions in more expensive U.S. Treasury securities. The foreign debt instruments were generally cheaper because they were not as liquid; thus they had higher yields. However, holding positions over the long term meant that the cheaper foreign debt would eventually rise in prices relative to the more expensive U.S. Treasury securities. LTCM, with its less than \$5 billion in equity capital, controlled over \$100 billion in assets and approximately \$1.25 trillion notional in derivative contracts. Unfortunately for LTCM, the Southeast Asian financial crisis in 1997-1998 followed by the Russian financial crisis of 1998 caused a "flight to liquidity," meaning in this case that investors sold non-U.S. debt, forcing down non-U.S. debt prices, and purchased U.S. Treasury securities, forcing U.S. debt prices up. LTCM's equity capital was wiped out within days, and the fund was bailed out by a consortium of financial institutions under the supervision of the U.S. Federal Reserve System. While LTCM's strategy may well have been correct had it been able to survive for an extended period of time, the fund was too highly leveraged to survive extreme short-term volatility.

One of LTCM's equity market arbitrage ventures involved the Royal Dutch/Shell Group, a dual-listed company independently incorporated in the Netherlands and the UK. This arrangement originated from a 1907 alliance agreement between Royal Dutch and Shell Transport in which the two companies agreed to merge their interests on a 60/40 basis. Royal Dutch trades primarily in the United States and the Netherlands while Shell trades primarily in London. After adjusting for foreign exchange rates, shares of the two firms' stock should trade at a 1.5:1 ratio. However, this anticipated trading ratio has deviated by more than  $35\%$ , well beyond levels of tax differentials and transaction costs. In the summer of 1997, Royal Dutch traded at an  $8\%$  to  $10\%$  premium over its 1.5 expected level relative to Shell. To exploit this differential, LTCM had taken significant arbitrage positions on the two

stocks. As the differential widened to  $20\%$  in 1998, LTCM increased its positions until financial distress caused by trading activities elsewhere in the fund (related to the economic crisis in Russia) forced the firm to liquidate. The positions taken in Royal Dutch/Shell by LTCM were ultimately proven correct, but not until 2001 when the fund was no longer in existence. Rosenthal and Young (1990) argue that significant mispricing in dual-listed companies has prevailed over long periods of time without satisfactory explanations. Nevertheless, arbitrage can sometimes take significant amounts of time to equalize prices, causing arbitrageurs to maintain positions longer than they are able.

In another well-publicized failure of arbitrage, dating from a March 2000 equity carveout, 3Com spun off its Palm division, a maker of handheld computers. 3Com retained \(95\%\) of the shares of Palm and announced that each 3Com shareholder would ultimately receive 1.5 shares of Palm for each share of 3Com. The remaining \(5\%\) of Palm shares were issued at \(38 per share, increasing to \)165 by its first day of trading before closing at \$95.06 (see Lamont, 2002). Remember that ownership of one 3Com share implied ownership of 1.5 shares of Palm stock. The stocks of the two companies should have moved in tandem, but on the date of the IPO, 3Com actually decreased by \(21\%\) to \)81.81 as Palm increased. This \(81.81 is substantially less than the \)142.59 price implied by the 1.5 shares of Palm stock due to each 3Com shareholder (\(1.5 × \)95.06 = \$142.59), implying that the remainder of 3Com, on a per share basis, was worth negative \(60.78. This negative stub value (the whole is worth less than the sum of the parts; in particular, the parent and the subsidiary are worth less than the subsidiary alone) seems particularly unlikely, since 3Com had about \)10 per share in cash and marketable securities alone. In other words, what happened wasn't rational, given the numbers, or just could not have been sustainable had investors been able to arbitrage. On the other hand, prospective arbitrageurs found themselves unable to short sell shares because the two stocks were under different national regulatory authorities and the outcome of the Palm carve-out was still uncertain. Thus, arbitrage and price correction could not be implemented because the short selling mechanism was not available for the Palm IPO. Therefore, as Cherkes, Jones and Spatt (2013) argue, the apparent mispricing scenario might have been perfectly rational given the prevailing market inefficiencies.

Such negative stub values are not uncommon. For example, in 1923, Benjamin Graham chronicled his purchase of shares of stock in Du Point, a well-established firm that had negative stub value given its investment in the new company General Motors. Lamont and Thaler (2003) identified five other 1990s technology equity carve-outs with negative stub values: UBID, Retek, PFSWeb, Xpedior, and Stratos Lightwave. Arbitrage in each of these cases was impeded by the inability to short sell. Many research analysts (e.g., Colvino, 2014) argued that between 2014 and 2016, given its investment in Yahoo Japan and Alibaba, the stub value of Yahoo's core business was negative, perhaps as much as negative \(40 billion, despite significant short interest in the shares. Mitchell et al. (2002) found 82 similar negative stub value scenarios in U.S. markets between 1985 and 2000. Nevertheless, in most cases, arbitrage was impeded by inability to short sell, high transaction costs, and difficulty in getting reliable price quotes or other information. But, Mitchell et al. found that approximately \(30\%\) of negative stub values were never eliminated through arbitrage. Some of the spin-offs failed, and others may have faced this risk. But, even these conditions probably cannot explain particularly large negative stub values.

There are even more obvious limits on many arbitrage opportunities. Restrictions on trading and transaction costs can be major barriers to arbitrage. For example, Han and Wang (2004) found that upper and lower fractional ownership bounds on the holdings of a stock can limit institutional arbitrage and contribute to the momentum of returns for that stock. For example, many countries such as China restrict proportional ownership and even the United States imposes insider trading regulations on major shareholders (e.g., the Williams Amendment). Pontiff (1996) argued that large differences in prices and net asset values in closed end funds result when fund portfolios are more difficult to replicate, when trading costs are high for the stocks in fund portfolios, and when stocks in the funds paid dividends. Thus, difficulties in replicating assets do limit arbitrage opportunities. Similarly, traders know well that Treasury instruments regularly trade at lower yields than nearly identical "off-the-run Treasuries." Violations of the simple put-call parity relation regularly arise when there are restrictions on short-selling underlying securities. Transaction costs often require that the arbitrageur set upper and lower bounds on security purchase and selling prices, essentially determining the interval within which the no-arbitrage security price must fall.

# Additional Reading

Pearson (1905) provides a nice, 100-year-old nontechnical discussion of the random walk process. Knopf and Teall (2015) offer a more technical introduction to random walks, martingales, and stochastic processes in finance. Lamont (2002) provides a very readable case study referred to in this chapter concerning the anomalous behavior of the Palm and 3-Com shares following their takeover scenario. The case is important because it depicts the failure of the market to provide rational relative pricing for the two firms. Lamont and Thaler (2003) provide a listing of other firms demonstrating negative stub values. Lowenstein's 2000 book When Genius Failed: The Rise and Fall of Long-Term Capital Management is an excellent history of the rise and fall of LTCM.

# References

Brenner, M., & Subrahmanyam, M. G. (1988). A simple formula to compute the implied standard deviation. Financial Analysts Journal, 5, 80-83.  
Cherkes, M., Jones, C., & Spatt, C. (2013). A solution to the Palm—3Com spin-off puzzles. Unpublished working paper. New York: Columbia University.  
Colvino, S. (2014). Yahoo stub value. Markit Research, September 30, 2014. Available at <https://www-markit.com/Commentary/NewsCommentarieFile?CMSID = aade814d646749c3a7b2701931e606d0> Accessed 27.07.16.  
Corrado, C., & Miller, T. W. (1996). A note on a simple, accurate formula to compute implied standard deviations. Journal of Banking and Finance, 20, 595-603.  
De Long, J. B., Shleifer, A., Summers, L. H., & Waldman, R. J. (1990). Noise trader risk in financial markets. Journal of Political Economy, 98(4), 703-738.  
Han, B., & Wang, Q. (2004). Institutional investment constraints and stock prices. Dice Center Working Paper No. 2004-24. Available at: <http://ssrn.com/abstract=628683> Accessed 12.01.12.  
Khandani, A. E., & Lo, A. W. (2007). What happened to the quants in August 2007? Journal of Investment Management, 5(4), 5-54.  
Knopf, P., & Teall, J. (2015). Risk neutral pricing and financial mathematics: A primer. San Diego: Academic Press.  
Lamont, O. (2002). The curious case of Palm and 3 Com. In J. Pickford (Ed.), Mastering investment (pp. 261-266). New York: Prentice Hall.  
Lamont, O., & Thaler, R. (2003). Can the market add and subtract? Mispricing in tech stock carve-outs. Journal of Political Economy, 111, 227-268.

Latane, H., & Rendleman, R. (1976). Standard deviations of stock price ratios implied by option prices. Journal of Finance, 31, 369-381.  
Lowenstein, R. (2000). When genius failed: The rise and fall of Long-Term Capital Management. New York: Random House.  
Mitchell, M., Pulvino, T., & Stafford, E. (2002). Limited arbitrage in equity markets. Journal of Finance, 57(2), 551-584.  
Officer, R.A. (1971). A time series examination of the market factor of the new york stock exchange (Ph.D. dissertation). University of Chicago.  
Parkinson, M. (1980). The extreme value method for estimating the variance of the rate of return. Journal of Business, 57, 61-65.  
Pearson, K. (1905). The problem of the random walk. Nature, 72, 342.  
Pontiff, J. (1996). Costly arbitrage: Evidence from closed end funds. Quarterly Journal of Economics, 111, 1135-1152.  
Rosenthal, L., & Young, C. (1990). The seemingly anomalous price behavior of Royal Dutch/Shell and Unilever N.V./PLC. Journal of Financial Economics, 26, 123-141.

# 7.5 EXERCISES

1. Now, let's consider martingale and Markov processes in a standard Blackjack game. Cards are dealt one at a time from a standard 52-card randomly shuffled deck, and points are awarded to the lone recipient based on the number on the card (2 to 10) or 11 if the dealt card is a face card or Ace. Let  $S_{t}$  represent the number of points to be held by the recipient after  $t$  cards have been dealt by the dealer. For parts a through c, suppose that the cards have been dealt without replacement. For parts d, e, and f, assume that the cards have been dealt with replacement and that 1 point is awarded if the number on the card is a 2 through a 6, 0 points are awarded if the number on the card is 7, 8, or 9, and -1 point is awarded if the card is a 10, a face card, or an ace. We note that this is the most common point system used by card counters playing blackjack in casinos.

a. Is this process stochastic?  
b. Is this process Markov? This part of the problem is a little more difficult.  
c. Is this process a submartingale?  
d. Is this process (with replacement) Markov?  
e. Is this process (with replacement) a submartingale?  
f. Is this process (with replacement) a martingale?

2. Let  $\{r_t, t \geq 0\}$  (the return on a stock) be an arithmetic Brownian motion.

a. Suppose that  $r_t$  is made up of two components, an instantaneous drift with expected value  $\mu = .05$  and a variance  $\sigma^2 = .25$ . What is the probability that  $r_5$  is between .3 and .5?  
b. Suppose that the price of a stock follows a geometric Brownian motion process. Suppose that the stock's initial value is  $S_0 = 1$ , and its instantaneous drift  $r_t$  has an expected value  $\mu = .05$  per year and an annual variance  $\sigma^2 = .25$ . What is the probability that the stock is worth more than 2 in five years  $P[S_5 > 2]$ ?  
c. Is the return process for this stock a martingale?

3. Suppose a stock price $t$ follows a Brownian motion process with an initial price of S0 = \$50 and a variance per time period equal to σ² = 4. What is the probability that the stock price is less than \$56 at time 3?
4. Historical percentage stock returns for the Robinson and Boyer Companies are listed in the following chart along with percentage returns on the market portfolio:

<table><tr><td>Year</td><td>Robinson</td><td>Boyer</td><td>Market</td></tr><tr><td>2008</td><td>4</td><td>19</td><td>15</td></tr><tr><td>2009</td><td>7</td><td>4</td><td>10</td></tr><tr><td>2010</td><td>11</td><td>-4</td><td>3</td></tr><tr><td>2011</td><td>4</td><td>21</td><td>12</td></tr><tr><td>2012</td><td>5</td><td>13</td><td>9</td></tr></table>

Calculate the following based on the preceding table:

a. mean historical returns for the two companies and the market portfolio.  
b. variances associated with Robinson Company returns and Boyer Company returns as well as returns on the market portfolio.  
c. Forecast a variance and a standard deviation of returns for both the Robinson and Boyer Companies based on your calculations in parts a and b.

5. The following table represents outcome numbers, probabilities, and associated returns for Stock A:

<table><tr><td>Outcome (i)</td><td>Return (R_i)</td><td>Probability (P_i)</td></tr><tr><td>1</td><td>05</td><td>10</td></tr><tr><td>2</td><td>15</td><td>10</td></tr><tr><td>3</td><td>05</td><td>05</td></tr><tr><td>4</td><td>15</td><td>10</td></tr><tr><td>5</td><td>15</td><td>10</td></tr><tr><td>6</td><td>10</td><td>10</td></tr><tr><td>7</td><td>15</td><td>10</td></tr><tr><td>8</td><td>05</td><td>10</td></tr><tr><td>9</td><td>15</td><td>?</td></tr><tr><td>10</td><td>10</td><td>10</td></tr></table>

Thus, there are 10 possible return outcomes for Stock A.

a. What is the probability associated with outcome 9?  
b. What is the standard deviation of returns associated with Stock A?

6. The Nettles Company management projects an expected return level of  $15\%$  for the upcoming year. Assuming that returns are normally distributed with a standard deviation equal to 1, what is the probability that the actual return level will:

a. fall between  $5\%$  and  $25\%$ ?  
b. fall between  $15\%$  and  $25\%$ ?

c. exceed  $25\%$ ?  
d. exceed  $30\%$ ?

7. What would each of the probabilities in problem 4 be if Nettles Company management were certain enough of its forecast to associate a  $5\%$  standard deviation with its returns projection?
8. The following table presents sample daily historical price data for a stock whose returns are given in the third column.

<table><tr><td>Time</td><td>\(Price_t\)</td><td>\(Return_t\)</td></tr><tr><td>0</td><td>30.000</td><td>N.A.</td></tr><tr><td>1</td><td>30.125</td><td>0.00417</td></tr><tr><td>2</td><td>30.250</td><td>0.00415</td></tr><tr><td>3</td><td>30.125</td><td>-0.00413</td></tr><tr><td>4</td><td>32.000</td><td>0.06224</td></tr><tr><td>5</td><td>34.000</td><td>0.06250</td></tr><tr><td>6</td><td>31.000</td><td>-0.08824</td></tr><tr><td>7</td><td>32.000</td><td>0.03226</td></tr><tr><td>8</td><td>30.500</td><td>-0.04688</td></tr><tr><td>9</td><td>30.750</td><td>0.00820</td></tr><tr><td>10</td><td>30.875</td><td>0.00407</td></tr><tr><td>11</td><td>31.000</td><td>0.00405</td></tr><tr><td>12</td><td>30.875</td><td>-0.00403</td></tr><tr><td>13</td><td>31.000</td><td>0.00405</td></tr><tr><td>14</td><td>31.125</td><td>0.00403</td></tr><tr><td>15</td><td>30.250</td><td>-0.02811</td></tr><tr><td>16</td><td>33.000</td><td>0.09091</td></tr><tr><td>17</td><td>30.000</td><td>-0.09091</td></tr><tr><td>18</td><td>35.125</td><td>0.17083</td></tr><tr><td>19</td><td>33.000</td><td>-0.06050</td></tr><tr><td>20</td><td>32.125</td><td>-0.02652</td></tr><tr><td>21</td><td>32.250</td><td>0.00389</td></tr><tr><td>22</td><td>32.375</td><td>0.00388</td></tr><tr><td>23</td><td>32.125</td><td>-0.00772</td></tr><tr><td>24</td><td>32.250</td><td>0.00389</td></tr><tr><td>25</td><td>34.250</td><td>0.06202</td></tr><tr><td>26</td><td>36.375</td><td>0.06204</td></tr><tr><td>27</td><td>38.500</td><td>0.05842</td></tr><tr><td>28</td><td>34.375</td><td>-0.10714</td></tr><tr><td>29</td><td>33.875</td><td>-0.01455</td></tr><tr><td>30</td><td>33.625</td><td>-0.00738</td></tr></table>

a. Based on a traditional sample estimator, calculate a daily variance estimator for this stock.  
b. Assume that returns follow a Brownian motion process (at least that stock returns are uncorrelated over time) and that there are 30 trading days per month. What would be the monthly variance for this stock?  
c. What would be the Parkinson extreme value estimated daily returns variance for this stock?

9. The following daily prices were collected for each of three stocks over a 12-day period.

<table><tr><td colspan="2">Company X</td><td colspan="2">Company Y</td><td colspan="2">Company Z</td></tr><tr><td>Date</td><td>Price</td><td>Date</td><td>Price</td><td>Date</td><td>Price</td></tr><tr><td>1/09</td><td>50.125</td><td>1/09</td><td>20.000</td><td>1/09</td><td>60.375</td></tr><tr><td>1/10</td><td>50.125</td><td>1/10</td><td>20.000</td><td>1/10</td><td>60.500</td></tr><tr><td>1/11</td><td>50.250</td><td>1/11</td><td>20.125</td><td>1/11</td><td>60.250</td></tr><tr><td>1/12</td><td>50.250</td><td>1/12</td><td>20.250</td><td>1/12</td><td>60.125</td></tr><tr><td>1/13</td><td>50.375</td><td>1/13</td><td>20.375</td><td>1/13</td><td>60.000</td></tr><tr><td>1/14</td><td>50.250</td><td>1/14</td><td>20.375</td><td>1/14</td><td>60.125</td></tr><tr><td>1/15</td><td>52.250</td><td>1/15</td><td>21.375</td><td>1/15</td><td>62.625</td></tr><tr><td>1/16</td><td>52.375</td><td>1/16</td><td>21.250</td><td>1/16</td><td>60.750</td></tr><tr><td>1/17</td><td>52.250</td><td>1/17</td><td>21.375</td><td>1/17</td><td>60.750</td></tr><tr><td>1/18</td><td>52.375</td><td>1/18</td><td>21.500</td><td>1/18</td><td>60.875</td></tr><tr><td>1/19</td><td>52.500</td><td>1/19</td><td>21.375</td><td>1/19</td><td>60.875</td></tr><tr><td>1/20</td><td>52.375</td><td>1/20</td><td>21.500</td><td>1/20</td><td>60.875</td></tr></table>

Based on the data given above, calculate the following:

a. Returns for each day on each of the three stocks. There should be a total of 10 returns for each stock—beginning with the date  $1/10$ .  
b. Average daily returns for each of the three stocks.  
c. Daily return standard deviations for each of the three stocks.

10. Torre Company stock realized a 52-week high of \$50 per share and a 52-week low of \$25. What is the Parkinson extreme value estimate for variance for this stock? What would be the corresponding standard deviation estimate?
11. Suppose that there is a six-month call currently trading for \$8.20 while its underlying stock is currently trading for \$75. Other details for this example are as follows:

$$
T = 0. 5 \quad r _ {f} = 0. 1 0 \quad c _ {0} = 8. 2 0 \quad X = 8 0 \quad S _ {0} = 7 5
$$

What is the volatility (standard deviation) implied by the market price of this call?

12. Santo Company stock currently trades for \$50 per share. The current riskless return rate is 0.06. Under the Black-Scholes framework, what would be the standard deviations implied by six-month (0.5 year) European calls with current market values based on each of the following striking prices?

a.  $X = 40$  .  $c_{0} = 11.50$  
b.  $X = 45$ ;  $c_0 = 8.25$  
c.  $X = 50$ ;  $c_{0} = 4.75$  
d.  $X = 55$  .  $c_{0} = 2.50$  
e.  $X = 60$ ;  $c_{0} = 1.25$

13. In principle, simultaneous execution of transactions at known prices producing offsetting future cash flows makes arbitrage riskless. However, in practice, even in the simplest scenarios, such arbitrage does involve several risks. What are these risks?

# APPENDIX

# 7.A

# 7.A.1 RETURN AND RISK SPREADSHEET APPLICATIONS

Table 7.A.1 contains spreadsheet entries for computing stock variances, standard deviations, and covariances. The table lists daily closing prices for Stocks X, Y, and Z from January 9 to January 20 in cells B3:B14, E3:E14, and H3:H14. From these prices, we compute returns in Cells B19:B29, E19:E29, and H19:H29. Variance, standard deviation, and covariance statistics in rows 30 to 38 are computed from formulas displayed in Table 7.A.2.

Formulas for computing returns are given in rows 19 to 29 in Table 7.A.2. Means, variances, standard deviations, covariances, and correlation coefficients are computed in rows 30 to 38. Row 30 computes the arithmetic mean return for each of the three stocks. Table 7.A.2 lists formulas associated with the values in cells A30:H38. The  $=$  (Average) function may be typed in directly as listed in Table 7.A.2 row 30 or obtained from the Paste Function button  $(f_{\mathrm{x}})$  menu under the Statistical submenu. Entry instructions are given in the dialogue box obtained when the Average function is selected. The variance formulas in row 31 are based on the sample formula; the variance (P) formulas in row 32 are based on the population formula. Standard deviation sample and population results are given in rows 33 and 34. Covariances and correlation coefficients are given in rows 35 to 38.

# 7.A.2 A PRIMER ON BLACK-SCHOLES OPTION PRICING

# Calls and Puts

First, we will introduce a few option basics. A stock option is a legal contract that grants its owner the right (not obligation) to either buy or sell a given stock. There are two types of stock options: puts and calls. A call grants its owner to purchase stock (called underlying shares) for a specified exercise price (also known as a striking price or exercise price) on or before the expiration date of the contract. In a sense, a call is similar to a coupon that one might find in a newspaper enabling its owner to, for example, purchase a roll of paper towels for one dollar. If the coupon represents a bargain, it will be exercised and the consumer will purchase the paper towels. If the coupon is not worth exercising, it will simply be allowed to expire. The value of the coupon when exercised would be the amount by which value of the paper towels exceeds one dollar (or zero if the paper towels are worth less than one dollar). Similarly, the value of a call option at exercise equals the difference between the underlying market price of the stock and the exercise price of the call.

TABLE 7.A.1 Stock Prices, Returns, Risk, and Co-Movement  

<table><tr><td>1</td><td colspan="2">A CORP. X</td><td colspan="2">B CORP. X</td><td colspan="2">C CORP. Y</td><td colspan="2">D CORP. Y</td><td colspan="2">E CORP. Z</td><td colspan="2">F CORP. Z</td><td colspan="2">G CORP. Z</td><td colspan="2">H CORP. Z</td></tr><tr><td>2</td><td>DATE</td><td>PRICE</td><td></td><td>DATE</td><td></td><td>PRICE</td><td></td><td>DATE</td><td></td><td>PRICE</td><td></td><td>DATE</td><td></td><td>PRICE</td><td></td><td></td></tr><tr><td>3</td><td>9-Jan</td><td>50.125</td><td></td><td>9-Jan</td><td></td><td>20</td><td></td><td>9-Jan</td><td></td><td>20</td><td></td><td>9-Jan</td><td></td><td>60.375</td><td></td><td></td></tr><tr><td>4</td><td>10-Jan</td><td>50.125</td><td></td><td>10-Jan</td><td></td><td>20</td><td></td><td>10-Jan</td><td></td><td>20</td><td></td><td>10-Jan</td><td></td><td>60.5</td><td></td><td></td></tr><tr><td>5</td><td>11-Jan</td><td>50.25</td><td></td><td>11-Jan</td><td></td><td>20.125</td><td></td><td>11-Jan</td><td></td><td>20.125</td><td></td><td>11-Jan</td><td></td><td>60.25</td><td></td><td></td></tr><tr><td>6</td><td>12-Jan</td><td>50.25</td><td></td><td>12-Jan</td><td></td><td>20.25</td><td></td><td>12-Jan</td><td></td><td>20.25</td><td></td><td>12-Jan</td><td></td><td>60.125</td><td></td><td></td></tr><tr><td>7</td><td>13-Jan</td><td>50.375</td><td></td><td>13-Jan</td><td></td><td>20.375</td><td></td><td>13-Jan</td><td></td><td>20.375</td><td></td><td>13-Jan</td><td></td><td>60</td><td></td><td></td></tr><tr><td>8</td><td>14-Jan</td><td>50.25</td><td></td><td>14-Jan</td><td></td><td>20.375</td><td></td><td>14-Jan</td><td></td><td>20.375</td><td></td><td>14-Jan</td><td></td><td>60.125</td><td></td><td></td></tr><tr><td>9</td><td>15-Jan</td><td>52.25</td><td></td><td>15-Jan</td><td></td><td>21.375</td><td></td><td>15-Jan</td><td></td><td>21.375</td><td></td><td>15-Jan</td><td></td><td>62.625</td><td></td><td></td></tr><tr><td>10</td><td>16-Jan</td><td>52.375</td><td></td><td>16-Jan</td><td></td><td>21.25</td><td></td><td>16-Jan</td><td></td><td>21.25</td><td></td><td>16-Jan</td><td></td><td>60.75</td><td></td><td></td></tr><tr><td>11</td><td>17-Jan</td><td>52.25</td><td></td><td>17-Jan</td><td></td><td>21.375</td><td></td><td>17-Jan</td><td></td><td>21.375</td><td></td><td>17-Jan</td><td></td><td>60.75</td><td></td><td></td></tr><tr><td>12</td><td>18-Jan</td><td>52.375</td><td></td><td>18-Jan</td><td></td><td>21.5</td><td></td><td>18-Jan</td><td></td><td>21.5</td><td></td><td>18-Jan</td><td></td><td>60.875</td><td></td><td></td></tr><tr><td>13</td><td>19-Jan</td><td>52.5</td><td></td><td>19-Jan</td><td></td><td>21.375</td><td></td><td>19-Jan</td><td></td><td>21.375</td><td></td><td>19-Jan</td><td></td><td>60.875</td><td></td><td></td></tr><tr><td>14</td><td>20-Jan</td><td>52.375</td><td></td><td>20-Jan</td><td></td><td>21.5</td><td></td><td>20-Jan</td><td></td><td>21.5</td><td></td><td>20-Jan</td><td></td><td>60.875</td><td></td><td></td></tr><tr><td>15</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

<table><tr><td>16</td><td colspan="2">CORP. X</td><td rowspan="2">-</td><td colspan="2">CORP. Y</td><td rowspan="2">-</td><td colspan="2">CORP. Z</td></tr><tr><td>17</td><td>DATE</td><td>RETURN</td><td>DATE</td><td>RETURN</td><td>DATE</td><td>RETURN</td></tr><tr><td>18</td><td>9-Jan</td><td>N/A</td><td></td><td>9-Jan</td><td>N/A</td><td></td><td>9-Jan</td><td>N/A</td></tr><tr><td>19</td><td>10-Jan</td><td>0</td><td></td><td>10-Jan</td><td>0</td><td></td><td>10-Jan</td><td>0.00207</td></tr><tr><td>20</td><td>11-Jan</td><td>0.002494</td><td></td><td>11-Jan</td><td>0.00625</td><td></td><td>11-Jan</td><td>-0.00413</td></tr><tr><td>21</td><td>12-Jan</td><td>0</td><td></td><td>12-Jan</td><td>0.006211</td><td></td><td>12-Jan</td><td>-0.00207</td></tr><tr><td>22</td><td>13-Jan</td><td>0.002488</td><td></td><td>13-Jan</td><td>0.006173</td><td></td><td>13-Jan</td><td>-0.00208</td></tr><tr><td>23</td><td>14-Jan</td><td>-0.00248</td><td></td><td>14-Jan</td><td>0</td><td></td><td>14-Jan</td><td>0.002083</td></tr><tr><td>24</td><td>15-Jan</td><td>0.039801</td><td></td><td>15-Jan</td><td>0.04908</td><td></td><td>15-Jan</td><td>0.04158</td></tr><tr><td>25</td><td>16-Jan</td><td>0.002392</td><td></td><td>16-Jan</td><td>-0.00585</td><td></td><td>16-Jan</td><td>-0.02994</td></tr><tr><td>26</td><td>17-Jan</td><td>-0.00239</td><td></td><td>17-Jan</td><td>0.005882</td><td></td><td>17-Jan</td><td>0</td></tr><tr><td>27</td><td>18-Jan</td><td>0.002392</td><td></td><td>18-Jan</td><td>0.005848</td><td></td><td>18-Jan</td><td>0.002058</td></tr><tr><td>28</td><td>19-Jan</td><td>0.002387</td><td></td><td>19-Jan</td><td>-0.00581</td><td></td><td>19-Jan</td><td>0</td></tr><tr><td>29</td><td>20-Jan</td><td>-0.00238</td><td></td><td>20-Jan</td><td>0.005848</td><td></td><td>20-Jan</td><td>0</td></tr><tr><td>30</td><td>Mean</td><td>0.004064</td><td></td><td>Mean</td><td>0.006694</td><td></td><td>Mean</td><td>0.00087</td></tr></table>

(Continued)

TABLE 7.A.1 (Continued)  

<table><tr><td>16</td><td colspan="2">CORP. X</td><td rowspan="2">-</td><td colspan="2">CORP. Y</td><td rowspan="2">-</td><td colspan="2">CORP. Z</td></tr><tr><td>17</td><td>DATE</td><td>RETURN</td><td>DATE</td><td>RETURN</td><td>DATE</td><td>RETURN</td></tr><tr><td>31</td><td>Variance</td><td>0.000145</td><td></td><td>Variance</td><td>0.00022</td><td></td><td>Variance</td><td>0.000266</td></tr><tr><td>32</td><td>Variance (P)</td><td>0.000132</td><td></td><td>Variance (P)</td><td>0.0002</td><td></td><td>Variance (P)</td><td>0.000241</td></tr><tr><td>33</td><td>St.D.</td><td>0.01204</td><td></td><td>St.D.</td><td>0.014842</td><td></td><td>St.D.</td><td>0.016296</td></tr><tr><td>34</td><td>St.D. (P)</td><td>0.011479</td><td></td><td>St.D. (P)</td><td>0.014151</td><td></td><td>St.D. (P)</td><td>0.015538</td></tr><tr><td>35</td><td colspan="2">COV(X,Y) =</td><td></td><td>0.0001494</td><td colspan="2">COV(Y,Z) =</td><td>0.000192</td><td></td></tr><tr><td>36</td><td colspan="2">COV(X,Z) =</td><td></td><td>0.000139</td><td colspan="2"></td><td></td><td></td></tr><tr><td>37</td><td colspan="2">CORR(X,Y) =</td><td></td><td>0.9196541</td><td colspan="2">CORR(Y,Z) =</td><td>0.8733657</td><td></td></tr><tr><td>38</td><td colspan="2">CORR(X,Z) =</td><td></td><td>0.7791748</td><td colspan="2"></td><td></td><td></td></tr></table>

Suppose, for example, that there is a call option with an exercise price of \$90 on one share of stock. The option expires in one year. This share of stock is expected to be worth either \$80 or \$120 in one year, but we do not know which at the present time. If the stock were to be worth \$80 when the call expires, its owner should decline to exercise the call. It would simply not be practical to use the call to purchase stock for \$90 (the exercise price) when it can be purchased in the market for \$80. The call would expire worthless in this case. If, instead, the stock were to be worth \$120 when the call expires, its owner should exercise the call. Its owner would then be able to pay \$90 for a share that has a market value of \$120, representing a \$30 profit. In this case, the call would be worth \$30 when it expires. Let T designate the options term to expiry, S_T the stock value at option expiry, and c_T be the value of the call option at expiry determined as follows:

$$
c _ {T} = M A X [ 0, S _ {T} - X ] \tag {7.A.2.1}
$$

When  $S_{T} = 80$ ,  $c_{T} = \mathrm{MAX}[0, 80 - 90) = 0$

When  $S_{T} = 120$ ,  $c_{T} = \mathrm{MAX}[0, 120 - 90) = 30$

A put grants its owner the right to sell the underlying stock at a specified exercise price on or before its expiration date. A put contract is similar to an insurance contract. For example, an owner of stock may purchase a put contract ensuring that he can sell his stock for the exercise price given by the put contract. The value of the put when exercised is equal to the amount by which the put exercise price exceeds the underlying stock price (or zero if the put is never exercised).

To continue the above example, suppose that there is a put option with an exercise price of \$90 on one share of stock. The put option expires in one year. Again, this share of stock is expected to be worth either \$80 or \$120 in one year, but we do not know which yet. If the stock were to be worth \$80 when the put expires, its owner should exercise the put. In this case, its owner could use the put to sell stock for \$90 (the exercise price) when

TABLE 7.A.2 Stock Returns, Risk, and Co-Movement: Formula Entries  

<table><tr><td rowspan="2">1</td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td></tr><tr><td colspan="2">CORP. X</td><td colspan="3">CORP. Y</td><td colspan="3">CORP. Z</td></tr><tr><td>2</td><td>DATE</td><td>RETURN</td><td>DATE</td><td>RETURN</td><td>DATE</td><td>RETURN</td><td>DATE</td><td>RETURN</td></tr><tr><td>18</td><td>9-Jan</td><td>N/A</td><td>9-Jan</td><td>N/A</td><td>9-Jan</td><td>N/A</td><td>N/A</td><td>N/A</td></tr><tr><td>19</td><td>10-Jan</td><td>=B4/B3-1</td><td>10-Jan</td><td>=E4/E3-1</td><td>10-Jan</td><td>= H4/H3-1</td><td>= H4/H3-1</td><td>= H4/H3-1</td></tr><tr><td>20</td><td>11-Jan</td><td>=B5/B4-1</td><td>11-Jan</td><td>=E5/E4-1</td><td>11-Jan</td><td>= H5/H4-1</td><td>= H5/H4-1</td><td>= H5/H4-1</td></tr><tr><td>21</td><td>12-Jan</td><td>=B6/B5-1</td><td>12-Jan</td><td>=E6/E5-1</td><td>12-Jan</td><td>= H6/H5-1</td><td>= H6/H5-1</td><td>= H6/H5-1</td></tr><tr><td>22</td><td>13-Jan</td><td>=B7/B6-1</td><td>13-Jan</td><td>=E7/E6-1</td><td>13-Jan</td><td>= H7/H6-1</td><td>= H7/H6-1</td><td>= H7/H6-1</td></tr><tr><td>23</td><td>14-Jan</td><td>=B8/B7-1</td><td>14-Jan</td><td>=E8/E7-1</td><td>14-Jan</td><td>= H8/H7-1</td><td>= H8/H7-1</td><td>= H8/H7-1</td></tr><tr><td>24</td><td>15-Jan</td><td>=B9/B8-1</td><td>15-Jan</td><td>=E9/E8-1</td><td>15-Jan</td><td>= H9/H8-1</td><td>= H9/H8-1</td><td>= H9/H8-1</td></tr><tr><td>25</td><td>16-Jan</td><td>=B10/B9-1</td><td>16-Jan</td><td>=E10/E9-1</td><td>16-Jan</td><td>= H10/H9-1</td><td>= H10/H9-1</td><td>= H10/H9-1</td></tr><tr><td>26</td><td>17-Jan</td><td>=B11/B10-1</td><td>17-Jan</td><td>=E11/E10-1</td><td>17-Jan</td><td>= H11/H10-1</td><td>= H11/H10-1</td><td>= H11/H10-1</td></tr><tr><td>27</td><td>18-Jan</td><td>=B12/B11-1</td><td>18-Jan</td><td>=E12/E11-1</td><td>18-Jan</td><td>= H12/H11-1</td><td>= H12/H11-1</td><td>= H12/H11-1</td></tr><tr><td>28</td><td>19-Jan</td><td>=B13/B12-1</td><td>19-Jan</td><td>=E13/E12-1</td><td>19-Jan</td><td>= H13/H12-1</td><td>= H13/H12-1</td><td>= H13/H12-1</td></tr><tr><td>29</td><td>20-Jan</td><td>=B14/B13-1</td><td>20-Jan</td><td>=E14/E13-1</td><td>20-Jan</td><td>= H14/H13-1</td><td>= H14/H13-1</td><td>= H14/H13-1</td></tr><tr><td>30</td><td>Mean</td><td>=AVERAGE(B19:B29)</td><td>Mean</td><td>=AVERAGE(E19:E29)</td><td>Mean</td><td>=AVERAGE(H19:H29)</td><td>= AVERAGE(H19:H29)</td><td>= AVERAGE(H19:H29)</td></tr><tr><td>31</td><td>Variance</td><td>= VAR(B19:B29)</td><td>Variance</td><td>= VAR(E19:E29)</td><td>Variance</td><td>= VAR(H19:H29)</td><td></td><td></td></tr><tr><td>32</td><td>Variance (P)</td><td>= VARP(B19:B29)</td><td>Variance (P)</td><td>= VARP(E19:E29)</td><td>Variance (P)</td><td>= VARP(H19:H29)</td><td></td><td></td></tr><tr><td>33</td><td>St.D.</td><td>= STDEV(B19:B29)</td><td>St.D.</td><td>= STDEV(E19:E29)</td><td>St.D.</td><td>= STDEV(H19:H29)</td><td></td><td></td></tr><tr><td>34</td><td>St.D. (P)</td><td>= STDEVP(B19:B29)</td><td>St.D. (P)</td><td>= STDEVP(E19:E29)</td><td>St.D. (P)</td><td>= STDEVP(H19:H29)</td><td></td><td></td></tr><tr><td>35</td><td></td><td>COV(X,Y)=</td><td>= COVAR(B19:B29,E19:E29)</td><td>COV(Y,Z)=</td><td>= COVAR(E19:E29,H19:H29)</td><td></td><td></td><td></td></tr><tr><td>36</td><td></td><td>COV(X,Z)=</td><td>= COVAR(B19:B29,H19:H29)</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>37</td><td></td><td>CORR(X,Y)=</td><td>= CORREL(B19:B29,E19:E29)</td><td>CORR(Y,Z)=</td><td>= CORREL(E19:E29,H19:H29)</td><td></td><td></td><td></td></tr><tr><td>38</td><td></td><td>CORR(X,Z)=</td><td>= CORREL(B19:B29,H19:H29)</td><td></td><td></td><td></td><td></td><td></td></tr></table>

it can be purchased in the market for  \$80. The put would be worth\$ 10 in this case. If, instead, the stock were to be worth \$120 when the put expires, its owner should not exercise the put. Its owner should not accept \$90 for a share that has a market value of \$120. In this case, the put would be worth nothing when it expires. Let  $p_T$  be the value of the put option at expiry, determined as follows:

$$
p _ {T} = \operatorname {M A X} [ 0, X - S _ {T} ] \tag {7.A.2.2}
$$

$$
\text {W h e n} S _ {T} = 8 0, p _ {T} = \operatorname {M A X} [ 0, 9 0 - 8 0) = 1 0
$$

$$
\text {W h e n} S _ {T} = 1 2 0, p _ {T} = \operatorname {M A X} [ 0, 9 0 - 1 2 0) = 0
$$

The owner of the option contract may exercise his right to buy or sell; however, he is not obligated to do so. Stock options are simply contracts between two investors issued with the aid of a clearing corporation, exchange, and broker, which ensure that investors honor their obligations to each other. The corporation whose stock options are traded will probably not issue and does not necessarily trade these options.

For each owner of an option contract, there is a seller or "writer" who creates the contract, sells it to a buyer, and must satisfy an obligation to the owner of the option contract. The option writer sells (in the case of a call exercise) or buys (in the case of a put exercise) the stock when the option owner exercises. The owner of a call is likely to profit if the stock underlying the option increases in value sufficiently over the exercise price of the option (he can buy the stock for less than its market value); the owner of a put is likely to profit if the underlying stock declines in value sufficiently below the exercise price (he can sell stock for more than its market value). Since the option owner's right to exercise represents an obligation to the option writer, the option owner's profits are equal to the option writer's losses. Therefore, an option must be purchased from the option writer; the option writer receives a "premium" from the option purchaser for assuming the risk of loss associated with enabling the option owner to exercise.

# The Black-Scholes Model

The Black-Scholes option pricing model provides a simple mechanism for valuing calls under certain assumptions (see Chapter 9 for more detail on the Black-Scholes model and its assumptions). If circumstances are appropriate to apply the Black-Scholes model, call options can be valued with the following:

$$
c _ {0} = S _ {0} N \left(d _ {1}\right) - \frac {X}{e ^ {r _ {f} T}} N \left(d _ {2}\right) \tag {7.A.2.3}
$$

$$
d _ {1} = \frac {\ln \left(S _ {0} / X\right) + \left(r _ {f} + \sigma^ {2} / 2\right) T}{\sigma \sqrt {T}} \tag {7.A.2.4}
$$

$$
d _ {2} = d _ {1} - \sigma \sqrt {T} \tag {7.A.2.5}
$$

where  $N(d^{*})$  is the cumulative normal distribution function for  $(d^{*})$ . This function might be referred to in a statistics setting as the "z" value for  $(d^{*})$ . From a computational perspective, one would first work through Equation (7.A.2.4) and then Equation (7.A.2.5) before

valuing the call with Equation (7.A.2.3).  $N(d_{1})$  and  $N(d_{2})$  are areas under the standard normal distribution curves (z-values). Simply locate the z-value on an appropriate table (see Table 7.A.1 in the text appendix) corresponding to the  $N(d_{1})$  and  $N(d_{2})$  values.

Consider the following simple illustration of a Black-Scholes model application: An investor has the opportunity to purchase a six month call option for  \$7.00 on a stock that is currently selling for\$ 75. The exercise price of the call is  \$80 and the current riskless rate of return is 10% per annum. The variance of annual returns on the underlying stock is 16%. At its current price of\$ 7.00, does this option represent a good investment? First, we note the model inputs in symbolic form:

$$
T = 0. 5 \quad r _ {f} = 0. 1 0 \quad \sigma = 0. 4 \quad S _ {0} = 7 5
$$

$$
X = 8 0 \quad \sigma^ {2} = 0. 1 6 \quad e \approx 2. 7 1 8 2 8
$$

Our first steps are to find  $d_{1}$  and  $d_{2}$  from Equations (7.A.2.4) and (7.A.2.5):

$$
d _ {1} = \frac {\ln (7 5 / 8 0) + (0 . 1 + 0 . 5 \cdot 0 . 1 6) \cdot 0 . 5}{0 . 4 \cdot \sqrt {0 . 5}} = \frac {\ln (0 . 9 3 7 5) + 0 . 0 9}{0 . 2 8 2 8} = 0. 0 9
$$

$$
d _ {2} = d _ {1} - 0. 4 \cdot \sqrt {0 . 5} = 0. 0 9 - 0. 2 8 2 8 = - 0. 1 9 2 8
$$

Next, by either using a z-table (see Table 7.A.1 in the text Appendix) or by using an appropriate estimation function from a statistics manual, we find normal density functions for  $d_{1}$  and  $d_{2}$ :

$$
N \left(d _ {1}\right) = N (0. 0 9) = 0. 5 3 6 \quad N \left(d _ {2}\right) = N (- 0. 1 9 2 8) = 0. 4 2 0
$$

Finally, we use  $N(d_{1})$  and  $N(d_{1})$  in Equation (7.A.2.3) to value the call:

$$
c _ {0} = 7 5 \cdot (0. 5 3 6) - (8 0 \cdot 0. 9 5 1 2) \cdot (0. 4 2 0) = 8. 2 3
$$

Since the 8.23 estimated value of the call exceeds its 7.00 market price, the call should be purchased.

# Appendix Exercises

1. Call and put options with an exercise price of \$30 are traded on one share of Company X stock.

a. What are the value of the call and the put if the stock is worth \$33 when the options expire?  
b. What are the value of the call and the put if the stock is worth \$22 when the options expire?  
 c. What is the value of the call writer's obligation if the stock is worth \$33 when the options expire? What is the value of the put writer's obligation if the stock is worth \$33 when the options expire?  
d. What is the value of the call writer's obligation if the stock is worth  \$22 when the options expire? What is the value of the put writer's obligation if the stock is worth\$ 22 when the options expire?

e. Suppose that the purchaser of a call in part a paid \$1.75 for his option. What was his profit on his investment?  
 f. Suppose that the purchaser of a call in part b paid \$1.75 for his option. What was his profit on his investment?

2. Evaluate calls for each of the following European stock option series:

<table><tr><td>Option 1</td><td>Option 2</td><td>Option 3</td><td>Option 4</td></tr><tr><td>T = 1</td><td>T = 1</td><td>T = 1</td><td>T = 2</td></tr><tr><td>S = 30</td><td>S = 30</td><td>S = 30</td><td>S = 30</td></tr><tr><td>σ = 0.3</td><td>σ = 0.3</td><td>σ = 0.5</td><td>σ = 0.3</td></tr><tr><td>rf=0.06</td><td>rf=0.06</td><td>rf=0.06</td><td>rf=0.06</td></tr><tr><td>X = 25</td><td>X = 35</td><td>X = 35</td><td>X = 35</td></tr></table>

# Appendix Exercise Solutions

a. cT = $33 - $30 = \$3; pT = 0  
b.  $c_{T} = 0$ ;  $p_{T} = \\(30 - \$ 22 = \$8 \)  
c.  $c_{T} = -\$ 3$ ;  $p_{T} = 0$  
d.  $c_{T} = 0$ ;  $p_{T} = -\$ 8$  
e.  $3 -$ 1.75 = \$1.25  
f. \( \\( 0 - \\) 1.75 = -\\( 1.75 \)

2. The options are valued with the Black-Scholes model in a step-by-step format in the following table:

<table><tr><td></td><td>Option 1</td><td>Option 2</td><td>Option 3</td><td>Option 4</td></tr><tr><td>d(1)</td><td>0.957739</td><td>-0.163836</td><td>0.061699</td><td>0.131638</td></tr><tr><td>d(2)</td><td>0.657739</td><td>-0.463836</td><td>-0.438301</td><td>-0.292626</td></tr><tr><td>N[d(1)]</td><td>0.830903</td><td>0.434930</td><td>0.524599</td><td>0.552365</td></tr><tr><td>N[d(2)]</td><td>0.744647</td><td>0.321383</td><td>0.330584</td><td>0.384904</td></tr><tr><td>Call</td><td>7.395</td><td>2.455</td><td>4.841</td><td>4.623</td></tr></table>

# 7.A.3 ESTIMATING IMPLIED BLACK-SCHOLES VARIANCES

Analysts often employ historical return variances to estimate the volatility of securities. However, one cannot always assume that variances will be constant over time or that historical data properly reflects current conditions. An alternative procedure to estimate security variances is based on the assumption that investors price options based on consideration of the underlying stock risk. If the price of the option is taken to be correct, and if the Black-Scholes option pricing model is appropriate for valuing options, then one can infer the underlying stock standard deviation based on the known market price of the

option and the option pricing model. Consider the following example pertaining to a six-month call currently trading for  \$8.20 and its underlying stock currently trading for\$ 75:

$$
T = 0. 5 \quad r _ {f} = 0. 1 0 \quad c _ {0} = 8. 2 0
$$

$$
\begin{array}{c c} X = 8 0 & S _ {0} = 7 5 \end{array}
$$

If investors have used the Black-Scholes option pricing model to evaluate this call, the following must hold:

$$
8. 2 0 = 7 5 \times N \left(d _ {1}\right) - 8 0 \times e ^ {- 0. 0 1 \times 0. 5} \times N \left(d _ {2}\right)
$$

$$
d _ {1} = \left\{\ln (7 5 / 8 0) + (0. 1 + 0. 5 \sigma^ {2}) \times 0. 5 \right\} \div \sigma \sqrt {0 . 5}
$$

$$
d _ {2} = d _ {1} - \sigma \sqrt {0 . 5}
$$

Thus, we wish to solve the above system of equations for  $\sigma$ . This is equivalent to solving for the root of:

$$
f \left(\sigma^ {*}\right) = 0 = 7 5 \times N \left(d _ {1}\right) - 8 0 \times e ^ {- 0. 1 \times 0. 5} \times N \left(d _ {2}\right) - 8 2 0
$$

based on equations above for  $d_{1}$  and  $d_{2}$ . There exists no closed form solution for  $\sigma$ . Thus, we will use the method of bisection to search for a solution. We first arbitrarily select endpoints  $b_{1} = 0.2$  and  $a_{1} = 0.5$  such that  $f(b_{1}) < 0$  and  $f(a_{1}) > 0$ . Since these endpoints result in  $f(\sigma)$  with opposite signs, our first iteration will use  $\sigma_{1} = 0.5(0.2 + 0.5) = 0.35$ . We find that this estimate for sigma results in a value of  $-1.30009$  for  $f(\sigma)$ . Since this  $f(\sigma)$  is negative, we know that  $\sigma^{*}$  is in the segment  $b_{2} = 0.35$  and  $a_{2} = 0.5$ . We repeat the iteration process, finding after 19 iterations that  $\sigma^{*} = 0.411466$ . Table 7.A.3 details the process of iteration.

The Newton-Raphson method can also be used to more efficiently iterate for an implied volatility. Consider the following example where we wish to estimate the volatility implied by a six-month option with an exercise price of \(80 currently selling for \)8.20. Assume that the underlying stock price is currently \(75 and that the riskless return rate is 0.10. We shall solve for the implied standard deviation using the Newton-Raphson method, with an arbitrarily selected initial trial solution of \( \sigma_{1} = 0.6 \). First, we need the derivative of the Black-Scholes model with respect to the underlying stock return standard deviation<sup>8</sup>:

$$
\frac {\partial C}{\partial \sigma} = S \sqrt {t} \frac {e ^ {- \left(\frac {d _ {1} ^ {2}}{2}\right)}}{\sqrt {2 \Pi}} > 0 \quad V e g a = \nu \tag {7.A.3.1}
$$

We see from Table 7.A.4 that this standard deviation results in a value of  $f(\sigma_0) = 3.950117$ . Plugging 0.6 into Equation (7.A.3.1) for  $\sigma$ , we find that  $f'(\sigma_1) = 20.82508$ . Thus, our second trial value for  $\sigma$  is determined by:  $\sigma_2 = 0.6 - (3.950117 \div 20.82508) = 0.410319$ . This process continues until we converge to a solution of approximately 0.411466. Note that the rate of convergence is much faster by using the Newton-Raphson method than by using the method of bisection.

Initial Equation:  $SN(d_{1}) - Xe^{-r_{f}}^{T}N(d_{2})$

$$
\begin{array}{l} a _ {1} = 0. 5 \quad b _ {1} = 0. 2 \quad \sigma_ {1} = 0. 3 5 \\ r _ {f} = 0. 1 \quad S _ {0} = 7 5 \quad X = 8 0 \\ c _ {0} = 8. 2 \quad T = 0. 5 \\ \end{array}
$$

TABLE 7.A.3 Using the Bisection Method to Estimate Implied Volatility  

<table><tr><td colspan="4">t0=8.2 T=0.5</td><td>d1(σn)</td><td>d2(σn)</td><td>N(d1)</td><td>N(d2)</td><td>N(d1)</td><td>N(d2)</td><td>f(σn)</td></tr><tr><td>f(a1)=</td><td>1.860465</td><td>0.5</td><td>0.1356555</td><td>-0.2178978</td><td>0.553953</td><td>0.41375</td><td>0.553953</td><td>0.413754</td><td>1.860465</td><td></td></tr><tr><td>f(b1)=</td><td>-4.46788</td><td>0.2</td><td>-0.0320922</td><td>-0.1735135</td><td>0.487199</td><td>0.431122</td><td>0.487199</td><td>0.431124</td><td>-4.46788</td><td></td></tr><tr><td>n</td><td>an</td><td>bn</td><td>σn</td><td>d1(σn)</td><td>d2(σn)</td><td>N(d1)</td><td>N(d2)</td><td>N(d1)</td><td>N(d2)</td><td>f(σn)</td></tr><tr><td>1</td><td>0.5</td><td>0.2</td><td>0.35</td><td>0.06499919</td><td>-0.1824882</td><td>0.525913</td><td>0.427597</td><td>0.525913</td><td>0.4276</td><td>-1.29619</td></tr><tr><td>2</td><td>0.5</td><td>0.35</td><td>0.425</td><td>0.10188237</td><td>-0.198638</td><td>0.540575</td><td>0.42127</td><td>0.540575</td><td>0.421273</td><td>0.284948</td></tr><tr><td>3</td><td>0.425</td><td>0.35</td><td>0.3875</td><td>0.08394239</td><td>-0.1900615</td><td>0.533449</td><td>0.424628</td><td>0.533449</td><td>0.424630</td><td>-0.50501</td></tr><tr><td>4</td><td>0.425</td><td>0.3875</td><td>0.40625</td><td>0.09302042</td><td>-0.1942417</td><td>0.537056</td><td>0.42299</td><td>0.537056</td><td>0.422993</td><td>-0.10987</td></tr><tr><td>5</td><td>0.425</td><td>0.40625</td><td>0.41562</td><td>0.09747658</td><td>-0.1964147</td><td>0.538826</td><td>0.42214</td><td>0.538826</td><td>0.422143</td><td>0.087583</td></tr><tr><td>6</td><td>0.41562</td><td>0.40625</td><td>0.41093</td><td>0.09525501</td><td>-0.1953217</td><td>0.537944</td><td>0.42256</td><td>0.537944</td><td>0.422571</td><td>-0.01113</td></tr><tr><td>7</td><td>0.41562</td><td>0.41093</td><td>0.41328</td><td>0.09636739</td><td>-0.1958666</td><td>0.538386</td><td>0.42235</td><td>0.538386</td><td>0.422357</td><td>0.038229</td></tr><tr><td>8</td><td>0.41328</td><td>0.41093</td><td>0.41210</td><td>0.09581161</td><td>-0.1955937</td><td>0.538165</td><td>0.42246</td><td>0.538165</td><td>0.422464</td><td>0.01355</td></tr><tr><td>9</td><td>0.41210</td><td>0.41093</td><td>0.41152</td><td>0.09553341</td><td>-0.1954576</td><td>0.538054</td><td>0.42251</td><td>0.538054</td><td>0.422517</td><td>0.00121</td></tr><tr><td>10</td><td>0.41152</td><td>0.41093</td><td>0.41123</td><td>0.09539424</td><td>-0.1953896</td><td>0.537999</td><td>0.42254</td><td>0.537999</td><td>0.422544</td><td>-0.00496</td></tr><tr><td>11</td><td>0.41152</td><td>0.41123</td><td>0.41137</td><td>0.09546383</td><td>-0.1954236</td><td>0.538027</td><td>0.42252</td><td>0.538027</td><td>0.422531</td><td>-0.00188</td></tr><tr><td>12</td><td>0.41152</td><td>0.41137</td><td>0.41145</td><td>0.09549862</td><td>-0.1954406</td><td>0.538041</td><td>0.42252</td><td>0.538041</td><td>0.422524</td><td>-0.00033</td></tr><tr><td>13</td><td>0.41152</td><td>0.41145</td><td>0.41148</td><td>0.09551602</td><td>-0.1954491</td><td>0.538048</td><td>0.42251</td><td>0.538048</td><td>0.422521</td><td>0.000438</td></tr><tr><td>14</td><td>0.41148</td><td>0.41145</td><td>0.41146</td><td>0.09550732</td><td>-0.1954449</td><td>0.538044</td><td>0.42251</td><td>0.538044</td><td>0.422522</td><td>0.000053</td></tr><tr><td>15</td><td>0.41146</td><td>0.41145</td><td>0.41145</td><td>0.09550297</td><td>-0.1954427</td><td>0.538042</td><td>0.42252</td><td>0.538042</td><td>0.422523</td><td>-0.00014</td></tr><tr><td>16</td><td>0.41146</td><td>0.41145</td><td>0.41146</td><td>0.09550514</td><td>-0.1954438</td><td>0.538043</td><td>0.42252</td><td>0.538043</td><td>0.422523</td><td>-0.00004</td></tr><tr><td>17</td><td>0.41146</td><td>0.41146</td><td>0.41146</td><td>0.09550623</td><td>-0.1954443</td><td>0.538044</td><td>0.42252</td><td>0.538044</td><td>0.422523</td><td>0.000004</td></tr><tr><td>18</td><td>0.41146</td><td>0.41146</td><td>0.41146</td><td>0.09550569</td><td>-0.1954441</td><td>0.538043</td><td>0.42252</td><td>0.538043</td><td>0.422523</td><td>-0.00002</td></tr><tr><td>19</td><td>0.41146</td><td>0.41146</td><td>0.41146</td><td>0.09550596</td><td>-0.1954442</td><td>0.538044</td><td>0.42252</td><td>0.538044</td><td>0.422523</td><td>0.00000</td></tr><tr><td>20</td><td>0.41146</td><td>0.41146</td><td>0.41146</td><td>0.09550610</td><td>-0.1954443</td><td>0.538044</td><td>0.42252</td><td>0.538044</td><td>0.422523</td><td>0.00000</td></tr><tr><td>21</td><td>0.41146</td><td>0.41146</td><td>0.41146</td><td>0.09550616</td><td>-0.1954443</td><td>0.538044</td><td>0.42252</td><td>0.538044</td><td>0.422523</td><td>0.00000</td></tr><tr><td>22</td><td>0.41146</td><td>0.41146</td><td>0.41146</td><td>0.09550613</td><td>-0.1954443</td><td>0.538044</td><td>0.42252</td><td>0.538044</td><td>0.422523</td><td>0.00000</td></tr><tr><td>23</td><td>0.41146</td><td>0.41146</td><td>0.41146</td><td>0.09550615</td><td>-0.1954443</td><td>0.538044</td><td>0.42252</td><td>0.538044</td><td>0.422523</td><td>0.00000</td></tr></table>

TABLE 7.A.4 Newton-Raphson Method and Implied Volatilities  

<table><tr><td>n</td><td>σn</td><td>f(σn)</td><td>d1(σn)</td><td>d2(σn)</td><td>N(d1)</td><td>N(d2)</td><td>N(d1)</td><td>N(d2)</td><td>f(σn)</td></tr><tr><td>1</td><td>0.600000</td><td>20.82508</td><td>0.177864</td><td>-0.2463997</td><td>0.57058527</td><td>0.40268</td><td>0.570585</td><td>0.402686</td><td>3.950117</td></tr><tr><td>2</td><td>0.410319</td><td>21.06193</td><td>0.094961</td><td>-0.1951785</td><td>0.53782718</td><td>0.42262</td><td>0.537827</td><td>0.422627</td><td>-0.024150</td></tr><tr><td>3</td><td>0.411466</td><td>21.06084</td><td>0.095506</td><td>-0.1954443</td><td>0.53804365</td><td>0.42252</td><td>0.538044</td><td>0.422523</td><td>0.000000</td></tr><tr><td>4</td><td>0.411466</td><td>21.06084</td><td>0.095506</td><td>-0.1954443</td><td>0.53804365</td><td>0.42252</td><td>0.538044</td><td>0.422523</td><td>0.000000</td></tr><tr><td>5</td><td>0.411466</td><td>21.06084</td><td>0.095506</td><td>-0.1954443</td><td>0.53804365</td><td>0.42252</td><td>0.538044</td><td>0.422523</td><td>0.000000</td></tr><tr><td>6</td><td>0.411466</td><td>21.06084</td><td>0.095506</td><td>-0.1954443</td><td>0.53804365</td><td>0.42252</td><td>0.538044</td><td>0.422523</td><td>0.000000</td></tr></table>

Initial Equation:  $S_0N(d_1) - Xe^{-r_fT}N(d_2)$

$$
r _ {f} = 0. 1 \quad S _ {0} = 7 5 \quad X = 8 0
$$

$$
c _ {0} = 8. 2 0 T = 0. 5 \sigma_ {0} = 0. 6
$$

# Simple Closed-Form Procedures

The implied volatilities described above have the desirable characteristic of having an ex-ante orientation. However, their use is somewhat complicated by the frequently time-consuming methodology of iterating for solutions. Spreadsheet file and even computer program solutions packages can sometimes be cumbersome. This section provides two methodologies for obtaining simple closed form solutions for implied underlying asset volatilities.

Brenner and Subrahmanyam (1988) provide a simple formula to estimate an implied standard deviation (or variance) from an option whose striking price equals the current market price of the underlying asset. As the market price differs more from the option striking price, the estimation accuracy of this formula will worsen:

$$
\sigma_ {B S} ^ {2} = \frac {2 \pi c _ {0} ^ {2}}{t S _ {0} ^ {2}} \tag {7.A.3.2}
$$

The accuracy of Equation (7.A.3.2) when the option strike and underlying asset market prices are unequal can be improved with use of a quadratic procedure proposed by Corrado and Miller (1996). Their formula makes use of a second-order approximation of the cumulative normal density function and an approximation for  $\ln(S_0 / X)$  as  $2(S_0 - X) / (S_0 + X)$ . Several additional simplifications and approximations lead to the following formula for  $\sigma$ :

$$
\sigma_ {C M} ^ {2} = \frac {2 \pi}{t (S _ {0} + X) ^ {2}} \times \left[ c _ {0} - \frac {S _ {0} - X}{2} + \sqrt {\left(c _ {0} - \frac {S _ {0} - X}{2}\right) ^ {2} - \frac {(s _ {0} - X) ^ {2}}{\pi}} \right] \tag {7.A.3.3}
$$

While the accuracy of this formula is improved when the market price of the underlying asset is close to the striking price of the option, it is not nearly as sensitive to differences between these prices as is the Brenner-Subrahmanyam formula.

# Aggregating Procedures

A difficulty arising with estimating implied variances results from the fact that there will typically be more than one option trading on the same stock. However, what if the shortand long-term uncertainty of a stock differs? Each option's market price will imply its own underlying stock variance, and these variances are likely to differ. Worse, what if the implied volatility of option contracts differs with respect to exercise prices? (This is called a volatility smile.) How might we use this conflicting information to generate the most reliable variance estimate? Each of our implied variance estimates is likely to provide some information, yet has the potential for having measured with error. We can preserve much of the information from each of our estimates and eliminate some of our estimating error if we use for our own implied volatility a value based on an average of all of our estimates. However, because volatility might be expected to vary over time, one should average only those variances implied by options with comparable terms to expiration. The following suggests two methods for averaging implied standard deviation estimates:

1. Simple average: Here, the final standard deviation estimate is simply the mean of the standard deviations implied by the market prices of the calls.  
2. Average based on price sensitivities to  $\sigma$ : Calls that are more sensitive to  $\sigma$  as indicated by  $\partial c_{j} / \partial \sigma_{j}$  are more likely to imply a correct standard deviation estimate. Suppose we have  $n$  calls on a stock and each of which implies a stock standard deviation  $\sigma_{j}$ . Each call price will have a sensitivity to its implied underlying stock standard deviation  $\partial c_{j} / \partial \sigma_{j}$ . The sensitivities can be summed, and a weighted average standard deviation estimate for the underlying stock can be computed from the following weighting scheme:

$$
\omega_ {i} = \frac {\frac {\partial c _ {0 , i}}{\partial \sigma_ {i}}}{\sum_ {j = 1} ^ {n} \frac {\partial c _ {0 , j}}{\partial \sigma_ {j}}} \tag {7.A.3.4}
$$

where  $w_{i}$  represents the weight for the implied standard deviation estimate for call option  $i$ . Thus, the final standard deviation estimate for a given stock  $k$  based on all of the implied standard deviations from each of the call prices is:

$$
\sigma_ {k} = \sum_ {i = 1} ^ {n} \omega_ {i} \sigma_ {i} \tag {7.A.3.5}
$$
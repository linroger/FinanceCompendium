---
---
title: "Teaching Note 6: Implied Volatility"
parent_directory: "VI. Derivatives/Reference/Lecture Notes"
formatted: 2025-12-20 18:30:00 PM
formatter_model: claude-sonnet-4
cli-tool: opencode
primary_tags:
  - implied volatility
  - black scholes model
  - volatility smile
  - option pricing
secondary_tags:
  - stochastic volatility
  - volatility surface
  - fat tails
  - jump diffusion
  - volatility smirk
  - implied tree models
  - option mispricing
cssclasses: academia
---
---

# Teaching Note 6: Implied Volatility

John Heaton

The University of Chicago

Booth School of Business

## Black and Scholes Option Pricing Model: Does it work?

### Fat Tails
### Stochastic Volatility
### Jumps

## Implied Volatility

### The Smirk
### Implied Volatility and Empirical Volatility
### Implied Volatility Surface

## Improvements on Black and Scholes Model

### Deterministic and Stochastic Volatility Models
### Jump Model
### Implied Tree Models

# Black and Scholes Model: Does it Work?

- Does the Black and Scholes model yield option prices similar to the market price of traded options?  
- On October 31:
- The S&P 500 index was  $S = 3871.98$  and the one month risk free rate was  $r = 3.75\%$  (c.c).  
- The dividend yield on the S&P500 is about  $q = 1.69\%$ .  
- Observed options prices with maturity end of November  $T = 1 / 12$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/91ea3f41add7132cb033d43d4a46a73eb82cd110491851e0373d29d948ddef47.jpg)

# Black and Scholes Model: Does it Work?

- Moneyness: is defined as the ratio of the strike price to the current stock price  $K / S$

$$
\begin{array}{l} \Rightarrow K/S < 1 \Rightarrow K < S \Rightarrow \mathrm{puts\ are\ OTM,\ calls\ are\ ITM} \\ \Rightarrow K/S > 1 \Rightarrow K > S \Rightarrow \mathrm{puts\ are\ ITM,\ calls\ are\ OTM} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/481b8b431ea0f005090d1a088b308f20e73ca2075d63b113872784151f56b825.jpg)

# Black and Scholes Model: Does it Work?

- Let's compare to Black Scholes using historical volatility of  $22.2\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/3ca17e64c8d0043b6094e51ae85df219185a3156be9728f8d0f6f8b1ba7c6675.jpg)

# Black and Scholes Model: Does it Work?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/27da9181d686239ddb0046b2347c3529ff9e0b2172a2a3894625766dfd0978c6.jpg)  
BSM using historical volatility relative to observed prices

# Black and Scholes Model: Does it Work?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/0d566bb2bbf8f4b41bca90127d382efba59480104ce51ff9621d4c8676e95b7b.jpg)  
BSM using historical volatility relative to observed prices

# Black and Scholes Model: Does it Work?

BSM put prices relative to observed prices. This time with volatility set to match the "ATM" put option with strike of 3870. This "implied volatility" was  $23.1\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/40f8f66889614b44c757476d534d4adcf7d24f071b937a8042e27a5daa7f8e48.jpg)

# Black and Scholes: What is wrong?

- Black and Scholes assume log-normal returns
- That is,  $r_{S} = \log \left(\left(S_{t + h} + \text{dividends}\right) / S_{t}\right)$  is normally distributed.
- Figure 1 plots the empirical distribution of monthly returns and the normal distribution

$\Longrightarrow$  Fat Tails: Extreme observations more likely than implied by normal.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/2111e468fe47c0448de1170e9f7c984e7cd96141a75a78c09d4cec0803314994.jpg)

# Black and Scholes: What is wrong?

- The Black and Scholes model assumes that the volatility of stock returns is constant.  
- But volatility is in fact Stochastic: It moves unpredictability over time.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/6e7210cef9330e76aee832260b0e58ed0d139a75fdc1fb2d5b6c0dedfef07d5a.jpg)

# Black and Scholes: What is wrong?

- The Black and Scholes model assumes that trading is continuous, and prices do not jump.  
- But prices sometimes jump discretely to other levels.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/3f9187a104abc1f1ff2f85d36a5bec3e5608815a69840e403effa82d5e45748f.jpg)

# Black and Scholes Implied Volatility

- Implied Volatility: The level of volatility  $\sigma$  that once inserted in Black and Scholes formula, it matches the value of a traded option.  
- For instance, let  $put^{mkt}(K,T)$  be a traded put price at strike price  $K$  and time to maturity  $T$ . - E.g. on October 31,  $put^{mkt}(3870,1/12) = \$98.50$  
- Define:

$$
\sigma_{\mathrm{Imp}} \quad \mathrm{is\ chosen\ such\ that} \quad \mathrm{put}^{\mathrm{mkt}}(K,T) = \mathrm{BSP}(S_{0},K,T,r,q,\sigma_{\mathrm{Imp}})
$$

- The implied volatility for this option was  $23.1\%$  
Note:

- Every option has a potentially different implied volatility  $\sigma_{Imp}$ .

# Black and Scholes Implied Volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/7a63feddf949749014469f7250719279df05c15e3d13919f8951a9d0039ab7b7.jpg)  
Implied Volatility Smile (or, Smirk)

# Black and Scholes Implied Volatility

- Uses of Implied Volatility:
- Gauge the general market uncertainty about future returns.

* Higher uncertainty  $\Longrightarrow$  higher option prices  $\Longrightarrow$  higher implied volatility.  
* It augments return volatility itself, as implied volatility is Forward Looking

# VIX

NOTE: the VIX uses the concept of "Volatility Swaps" where one creates a portfolio of options that is hedged against index level moves but is only exposed to volatility changes. Technically it is not an "implied volatility" as in the B-S-M model.

# Black and Scholes Implied Volatility

- Uses of Implied Volatility:
- Gauge the relative pricing of options.

* It is hard to compare prices with different strike prices or maturities.

- Different strike prices  $\Longrightarrow$  different intrinsic values  $S_{0} - K$  
- Different maturities  $\Longrightarrow$  different time value of money and uncertainty.

Option Prices across Strike Prices and maturitirs  

<table><tr><td rowspan="2" colspan="2"></td><td colspan="6">Maturity</td></tr><tr><td>0.12</td><td>0.21</td><td>0.39</td><td>0.64</td><td>0.88</td><td>1.13</td></tr><tr><td rowspan="6">Strike Prices</td><td>1450</td><td>8.7</td><td>14.65</td><td>23.8</td><td>34</td><td>40.6</td><td>47.5</td></tr><tr><td>1475</td><td>12.6</td><td>19.7</td><td>29.1</td><td>39.2</td><td>47</td><td>54.1</td></tr><tr><td>1500</td><td>20.35</td><td>26.8</td><td>36.75</td><td>47.3</td><td>54.2</td><td>61.3</td></tr><tr><td>1525</td><td>31.2</td><td>36.8</td><td>45.6</td><td>55.3</td><td>62.6</td><td>69.5</td></tr><tr><td>1550</td><td>47.4</td><td>50.2</td><td>57</td><td>65.4</td><td>72.1</td><td>78.6</td></tr><tr><td>1575</td><td>68.2</td><td>67.4</td><td>71</td><td>77.1</td><td>82.8</td><td>88.7</td></tr></table>

* E.g. on May 3, 2007, put $mkt$ 1500,.12) =  $\$ 20.35$  while put $mkt$ 1475,.12) =  $\$ 12.60$ .

- Is the 7.75 dollar difference only due to the 25 dollar difference in strike prices, or "something else"?

# Black and Scholes Implied Volatility

- Using implied volatilities helps eliminating differences in intrinsic values and maturities.  
- $\Longrightarrow$  implied volatility is a simple measure of how expensive options are relative to each other.
- Implied Volatility Surface = Implied volatilities across strikes and maturities.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d372c5da8f42e9cd2dc6407f2adf4bf9de2b657e45ca997bd275a8590afee7d0.jpg)

# Black and Scholes Model: Shall we throw it away?

- No: it is a useful benchmark.  
- It still works reasonably well to hedge against changes in stock prices
- Recall the Delta Hedging in Teaching Notes 5.
- New models have been proposed to deal with the shortcomings of Black and Scholes models.
- Deterministic and Stochastic Volatility Models

* Take into account that volatility is in fact time varying.

- Models with Price Jumps

* Take into account that jumps may occur

- Implied Tree Models

* Find the trees that actually price options

- All of these models imply that put prices are overpriced because investors seeking protection from downside (e.g. jumps) are willing to pay a larger (insurance) premium.

# Deterministic Volatility Models

- Assume that volatility  $\sigma$  depends on the stock price itself.  
- E.g. Constant Elasticity of Variance model:  $\sigma(S) = \Sigma \times S^{\alpha}$

$$
R_{t,t+h} = \mu \times h + S_{t}^{\alpha} \times \Sigma \times \epsilon_{t}
$$

- If  $\alpha < 0$ , a lower  $S_{t}$  implies a higher volatility.  
$\bullet \Longrightarrow$  implied volatility smirk

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/5e46459d891dae182c1c385dd307fd23af132a8db2afbada89cadee61f99397d.jpg)

# Stochastic Volatility Models

- Assume that volatility  $\sigma_{t}$  is moving over time.  
E.g. let  $\sigma_t = \sqrt{v_t}$

$$
R_{t,t+h} = \mu \times h + \sqrt{v_{t}} \times \epsilon_{1,t}
$$

$$
(v_{t+h} - v_{t}) = k \times (\overline{v} - v_{t}) \times h + \Sigma \times \sqrt{v_{t}} \times \epsilon_{2,t}
$$

- (It is hard to ensure  $v_{t} > 0$  for every  $t$  unless interval size  $h$  is very small)
- Result: if volatility is negatively correlated with stock returns, OTM put options become relatively more expensive  $\Longrightarrow$  Volatility Smirk  
- Intuition:
- A decline in price  $\Longrightarrow$  higher volatility  $\Longrightarrow$  higher probability of even larger declines  $\Longrightarrow$  higher price of insurance against downturns.

# Jump in Prices

- Assume that sometimes big changes in stock prices occur (e.g. October 1987)

$$
R_{t,t+h} = \mu \times h + \sigma \times \epsilon_{t} + \omega \times Q_{t}
$$

- where  $Q_{t} = 0$  most of the time, but some times  $Q_{t} = 1$  (with small probability)  
- $\omega$  can be a random variable (e.g. normal), or a constant.
- Result: If  $\omega < 0$  (or  $E[\omega] < 0$ ), then OTM put options are relatively more expensive.
- If  $\omega < 0$ , it becomes more likely that bad negative outcomes occur.  
- Investors willing to pay a higher premium to insure against those bad events.
- Pricing with jumps is particularly complicated.
- The pricing formulas are not as "nice" as the Black and Scholes formula.

# An Example of "Implied Tree"

- The idea is reasonably simple.  
- In Teaching Note 4, we learnt how to go from a tree to option prices.  
- The "implied tree" methodology does the opposite: Uses (some) option prices to obtain a tree.
- For instance, consider the binomial tree model in Teaching Note 4.  
- Given  $S_{0} = 1502.39$ ,  $\sigma = 12.36\%$ ,  $r = 4.713\%$ ,  $\delta = 1.91\%$  and  $T = .12$ , we find  $u = \exp(\sigma \sqrt{T}) = 1.043746137$  and  $d = 1 / u = 0.958087378$ . Thus, the risk neutral probability

$$
q^{*} = \frac{e^{(r - \delta)T} - d}{u - d} = 0.528631113
$$

- The price of the $K = 1500$ put option comes out to be $p_0 = \$28.394$, higher than the traded market price $p^{\mathrm{mkt}}(1500,.12) = \$20.35$.

# An Example of "Implied Tree"

$$
i = 0
$$

$$
i = 1
$$

$$
S_{1,u} = 1568.114
$$

$$
p_{1,u} = 0
$$

$$
S_{0} = 1502.39
$$

$$
q_{0}^{*} = 0.528631113
$$

$$
p_{0} = e^{-r \times 0.12} \times (1 - q_{0}^{*}) \times p_{1,d} = 28.394
$$

$$
S_{1,d} = 1439.421
$$

$$
p_{1,d} = 60.579
$$

- An implied tree has the same logic of implied volatility: Since the model is not working using the correct inputs, we look for an alternative specification that makes it work.
- In the above example, we can choose  $S_{1,u}$  to price the option correctly.  
- To avoid too many parameters, define  $u = S_{1,u} / S_0$  and define  $S_{1,d} = S_0 / u$ .  
- We obtain the following

# An Example of "Implied Tree"

$$
i = 0
$$

$$
i = 1
$$

$$
S_{1,u} = 1551.26
$$

$$
p_{1,u} = 0
$$

$$
S_{0} = 1502.39
$$

$$
q_{0}^{*} = 0.5446
$$

$$
p_{0} = e^{-r \times 0.12} \times (1 - q_{0}^{*}) \times p_{1,d} = 20.35
$$

$$
S_{1,d} = 1455.059
$$

$$
p_{1,d} = 44.941
$$

- What do we use an implied tree for?
- To price other options. For instance, if K = 1490, the put price from the binomial tree is \$15.82184291, closer to the market value of p^mkt(1490,.12) = \$17.05, compared to the original case (which would be \$23.707)  
- With more elaborated trees, one can also price more elaborated derivatives, which have path dependencies, or American features.

# An Example of 2-step "Implied Tree"

- Once we solved for the first step, we can proceed to obtain a two step tree - We need to keep the first step fixed though  
What do we choose?

$$
- S_{2,uu}, S_{2,ud} = S_{2,du} \mathrm{and\ } S_{2,dd}.
$$

- It is desirable to keep the tree somewhat balanced around the starting value  $S_0$ .  
  - $\Rightarrow$  choose  $S_{2,ud} = S_{2,du} = S_0$  
- Since we have two price levels to choose, we need two options.  
- The following example has  $p^{mkt}(1450,.21) = \$ 14.65$  and  $p^{mkt}(1550,.21) = \$ 50.2$

# An Example of 2-step "Implied Tree"

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
S_{2,uu} = 1567.0713
$$

$$
p_{2,uu}^{1} = 0
$$

$$
p_{2,uu}^{2} = 0
$$

$$
S_{0} = 1502.39
$$

$$
q_{0}^{*} = 0.5446
$$

$$
p_{0}^{1} = 50.2 = p^{\mathrm{mkt}}(1550,.21)
$$

$$
p_{0}^{2} = 14.65 = p^{\mathrm{mkt}}(1450,.21)
$$

$$
S_{1,u} = 1551.26
$$

$$
q_{1,u}^{*} = 0.7144
$$

$$
p_{1,u}^{1} = 13.5413
$$

$$
p_{1,u}^{2} = 0
$$

$$
S_{2,ud} = S_{2,du} = 1502.39
$$

$$
p_{2,ud}^{1} = 47.61
$$

$$
p_{2,ud}^{2} = 0
$$

$$
S_{1,d} = 1455.059
$$

$$
q_{1,d}^{*} = 0.7373
$$

$$
p_{1,d}^{1} = 94.67
$$

$$
p_{1,d}^{2} = 32.36
$$

$$
S_{2,dd} = 1336.2316
$$

$$
p_{2,dd}^{1} = 213.7684
$$

$$
p_{2,dd}^{2} = 113.7684
$$

# Conclusions

- Black-Scholes formula does not price options consistently, neither at the cross-section (i.e. different strike prices) nor at the time series.
- Stochastic Volatility  
- Jumps  
-Fat tails

- Black-Scholes formula still a very useful benchmark
- To first order, prices and hedge ratios are fine
- More complicated models fit the data better and can be used to set up arbitrage strategies
- Such models do perform better than Black-Scholes model, but gains are not very large
- Black-Scholes model has become the industry standard for traders to quote options
- Trading quotes are in "implied volatility" terms.  
- Implied volatility surfaces provide a simple way to gauge the relative value of options.

# Financial Instruments


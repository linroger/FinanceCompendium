---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: D derivatives have a (relatively simple) valuation formula, or can be valued binomially. For many common derivatives, however, a different approach is necessary. For example, consider arithmetic Asian options. There is no simple valuation formula for such options, and the binomial pricing approach is difficult because the final payoff depends on the specific path the stock price takes through the tree—i.e., the payoff is path-dependent. A pricing method that can be used in such cases is Monte Carlo valuation. In Monte Carlo valuation we simulate future stock prices and then use these simulated prices to compute the discounted expected payoff of the option.
linter-yaml-title-alias: D derivatives have a (relatively simple) valuation formula, or can be valued binomially. For many common derivatives, however, a different approach is necessary. For example, consider arithmetic Asian options. There is no simple valuation formula for such options, and the binomial pricing approach is difficult because the final payoff depends on the specific path the stock price takes through the tree—i.e., the payoff is path-dependent. A pricing method that can be used in such cases is Monte Carlo valuation. In Monte Carlo valuation we simulate future stock prices and then use these simulated prices to compute the discounted expected payoff of the option.
---

# D derivatives have a (relatively simple) valuation formula, or can be valued binomially. For many common derivatives, however, a different approach is necessary. For example, consider arithmetic Asian options. There is no simple valuation formula for such options, and the binomial pricing approach is difficult because the final payoff depends on the specific path the stock price takes through the tree—i.e., the payoff is path-dependent. A pricing method that can be used in such cases is Monte Carlo valuation. In Monte Carlo valuation we simulate future stock prices and then use these simulated prices to compute the discounted expected payoff of the option.

Monte Carlo valuation is performed using the risk-neutral distribution, where we assume that assets earn the risk-free rate on average, and we then discount the expected payoff using the risk-free rate. We will see in this chapter that risk-neutral pricing is a cornerstone of Monte Carlo valuation; using the actual distribution instead would create a complicated discounting problem.

With Monte Carlo you simulate the possible future values of the security; therefore, as a byproduct you generate the distribution of payoffs. The distribution can be extremely useful when you want to compare two investment strategies that have different distributions of outcomes. Computing value-at-risk for complicated portfolios is a common use of Monte Carlo.

In this chapter we will see why risk-neutral valuation is important for Monte Carlo, see how to produce normal random numbers, discuss the efficiency of Monte Carlo, introduce the Poisson distribution to help account for nonlognormal patterns in the data, and see how to create correlated random stock prices.

# I. COMPUTING THE OPTION PRICE AS A DISCOUNTED EXPECTED VALUE

Option valuation can be performed as if all assets earned the risk-free rate of return and investors performed all discounting at this rate. Specifically, we compute the time price of

From Chapter 19 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

a claim,  $V[S(0),0]$  , as

$$
V [ S (0), 0 ] = e ^ {- r T} \mathrm {E} _ {0} ^ {*} [ V (S (T), T) ] \tag {1}
$$ where  $\mathrm{E}_0^*$  is the expectation computed at time 0 using the risk-neutral distribution. Monte Carlo valuation exploits this procedure. We assume that assets earn the risk-free rate of return and simulate their returns. For example, for any given stock price 3 months from now, we can compute the payoff on a call. We perform the simulation many times and average the outcomes. This provides an estimate of  $\mathrm{E}_0^*[V(S_T), S_T]$ . Since we use risk-neutral valuation, we then discount the average payoff at the risk-free rate in order to arrive at the price.


As a practical matter, Monte Carlo valuation depends critically on risk-neutral valuation. In order to see why this is so, we will compute an option price as an expected value with both risk-neutral and true probabilities.

# Valuation with Risk-Neutral Probabilities

We can interpret the one-period binomial option pricing calculation as an expected value, in which the expectation is computed using the risk-neutral probability  $p^*$  and discounting is at the risk-free rate.

In a multiperiod tree, we repeat this process at each node. For a European option, the result obtained by working backward through the tree is equivalent to computing the expected option price in the final period, and discounting at the risk-free rate.

If there are  $n$  binomial periods, the equation

$$

\text {P r o b a b i l i t y} i \text {t h n o d e} = p ^ {* n - i} (1 - p ^ {*}) ^ {i} \frac {n !}{(n - i) ! i !}

$$ gives the probability of reaching any given stock price at expiration. Let  $n$  represent the number of binomial steps and  $i$  the number of stock price down moves. We can value a European call option by computing the expected option payoff at the final node of the binomial tree and then discounting at the risk-free rate. For example, for a European call,

European call price

$$
= e ^ {- r T} \sum_ {i = 0} ^ {n} \max  [ 0, S u ^ {n - i} d ^ {i} - K ] \left(p ^ {*}\right) ^ {n - i} \left(1 - p ^ {*}\right) ^ {i} \frac {n !}{(n - i) ! i !} \tag {2}
$$

To illustrate this calculation, Figure 1 shows the stock price tree with the total risk-neutral probabilities of reaching each of the terminal nodes. Figure 1 demonstrates that the option can be priced by computing the expected payoff at expiration using the probability of reaching each final node, and then discounting at the risk-free rate.

We can also use the tree in Figure 1 to illustrate Monte Carlo valuation. Imagine a gambling wheel divided into four unequal sections, where each section has a probability corresponding to one of the option payoffs in Figure 1:  $9.5\%$  ( $\$34.678$ ),  $34\%$  ( $\$12.814$ ),  $40.4\%$  ( $0$ ), and  $16\%$  ( $0$ ). Each spin of the wheel therefore selects one of the final stock price nodes and option payoffs in Figure 1. If we spin the wheel numerous times and then average the resulting option values, we will have an estimate of the expected payoff. Discounting this expected payoff at the risk-free rate provides an estimate of the option value.

# FIGURE I

Binomial tree showing stock price paths, along with risk-neutral probabilities of reaching the various terminal prices. Assumes  $S = \41.00$ ,  $K = \$ 40.00 ,  $\sigma = 0.30$ ,  $r = 0.08$ ,  $t = 1.00$  years,  $\delta = 0.00$ , and  $h = 0.333$ . The risk-neutral probability of going up is  $p^* = 0.4568$ . At the final node the stock price and terminal option payoff (beneath the price) are given.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/c773864f1c372ba1583e371e246121f174739e2394d0aa6aed2ef43bd7036e65.jpg)

It is easy to compute the actual expected payoff for the option in Figure 1 without using a gambling wheel. However, the example illustrates how random trials can be used to perform valuation.

# Valuation with True Probabilities

The simple procedure we used to discount payoffs for the risk-neutral tree in Figure 1 does not work when we use actual probabilities. In fact, if we are to compute an option price as an expected value using true probabilities, we need to compute the discount rate for each

Computation of option price using expected value calculation and true probabilities. The column entitled "Discount Rates Along Path" reports the node-specific true annualized continuously compounded discount rates from that figure. "Discount Rate for Path" is the compound annualized discount rate for the entire path. "Prob. of Path" is the probability that the particular path will occur, computed using the true probability of an up move (52.46\%). The last column is the probability times the payoff, discounted at the continuously compounded rate for the path.

TABLEI

<table><tr><td>Path</td><td colspan="3">Discount Rates Along Path</td><td>Discount Rate for Path</td><td>Prob. of Path</td><td>Payoff ($)</td><td>Discounted ($) (Prob. × Payoff)</td></tr><tr><td>uuu</td><td>35.7\%</td><td>32.3\%</td><td>26.9\%</td><td>31.64\%</td><td>0.1444</td><td>34.678</td><td>3.649</td></tr><tr><td>uud</td><td>35.7\%</td><td>32.3\%</td><td>26.9\%</td><td>31.64\%</td><td>0.1308</td><td>12.814</td><td>1.222</td></tr><tr><td>udu</td><td>35.7\%</td><td>32.3\%</td><td>49.5\%</td><td>39.18\%</td><td>0.1308</td><td>12.814</td><td>1.133</td></tr><tr><td>duu</td><td>35.7\%</td><td>49.5\%</td><td>49.5\%</td><td>44.91\%</td><td>0.1308</td><td>12.814</td><td>1.070</td></tr><tr><td>udd</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>0</td><td>0</td></tr><tr><td>dud</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>0</td><td>0</td></tr><tr><td>ddu</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>0</td><td>0</td></tr><tr><td>ddd</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>0</td><td>0</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>Sum</td><td></td><td>7.074</td></tr></table> path. There are eight possible paths for the stock price, four of which result in a positive option payoff. All of these paths have a first-period annualized continuously compounded discount rate of  $35.7\%$ . The subsequent discount rates depend on the path the stock takes. Table 1 verifies that discounting payoffs at path-dependent discount rates gives the correct option price. To take just the first row, the discounted expected option payoff for that row is computed as follows:

$$ e ^ {- (0. 3 5 7 \times \frac {1}{3} + 0. 3 2 3 \times \frac {1}{3} + 0. 2 6 9 \times \frac {1}{3})} \times (0. 5 2 4 6) ^ {3} \times (\$ 7 4. 6 7 8 - \$ 4 0) = \$ 3. 6 4 9

$$

This calculation uses the fact that the actual probability that the stock price will move up in any period is  $52.46\%$ .

As Table 1 illustrates, it is necessary to have a different cumulative discount rate along each path the stock can take. A call option is a high-beta security when it is out-of-the-money and it has a lower beta (but still higher than the stock) when it is in-the-money. This variation in the discount rate complicates discounting if we are using the true distribution of stock prices.

Risk-neutral valuation neatly sidesteps the hardest problem about using discounted cash flow valuation techniques with an option. While it is easy to compute the expected payoff of an option if the stock is lognormally distributed, it is hard to compute the discount rate. If we value options as if the world were risk-neutral, this complication is avoided.

# 2. COMPUTING RANDOM NUMBERS

In this section we discuss how to compute the normally distributed random numbers required for Monte Carlo valuation. The uniform distribution is defined on a specified range, over which the probability is 1, and assigns equal probabilities to every interval of equal length on that range. A random variable,  $u$ , that is uniformly distributed on the interval  $(a,b)$ , has the distribution  $\mathcal{U}(a,b)$ . The uniform probability density,  $f(x;a,b)$ , is defined as

$$ f (x; a, b) = \frac {1}{b - a}; a \leq x \leq b \tag {3}
$$ and is 0 otherwise. When  $a = 0$  and  $b = 1$ , the uniform distribution is a flat line at a height of 1 over the range 0 to 1.


Drawing uniformly distributed random variables is very common; virtually all programming languages and spreadsheets have a way to do this. The Rand built-in function in Excel does this, for example. It turns out that once we have a way to compute uniformly distributed random variables, it is possible to compute random numbers drawn from any distribution.

Suppose that  $u \sim \mathcal{U}(0,1)$  and  $z \sim \mathcal{N}(0,1)$ . The cumulative distribution function, denoted  $U(w)$  for the uniform and  $N(y)$  for the normal, is the probability that  $u < w$  or  $z < y$ , i.e.,

$$

\begin{array}{l} U (w) = \Pr (u \leq w) \\ N (y) = \Pr (z \leq y) \\ \end{array}

$$ where  $w$  is the  $U(w)$  quantile and  $y$  is the  $N(y)$  quantile of the two distributions. If we randomly draw a uniform number  $u$ , how can we use  $u$  to construct a corresponding normal random number,  $z$ ?

We can generate a normal random number from a uniform random number. Instead of interpreting a random draw from the uniform distribution as a number, we interpret it as a quantile. So, for example, if we draw 0.7 from a  $\mathcal{U}(0,1)$  distribution, we interpret this as a draw corresponding to the  $70\%$  quantile. We then use the inverse distribution function,  $N^{-1}(u)$ , to find the value from the normal distribution corresponding to that quantile. This technique works because, for any distribution, quantiles are uniformly distributed: If you draw from a distribution, by definition any quantile is equally likely to be drawn.

The algorithm is therefore as follows:

1. Generate a uniformly distributed random number between 0 and 1. Suppose this is 0.7.
2. Ask: What is the value of  $z$  such that  $N(z) = 0.7$ ? The answer to this question is computed using the inverse cumulative distribution function. In this case we have  $N^{-1}(0.7) = 0.5244$ . This value is a single draw of a standard normal random variable (0.5244).
3. Repeat.

This procedure simulates draws from a normal distribution. To simulate a log-normal random variable, simulate a normal random variable and exponentiate the draws.

This procedure of using the inverse cumulative probability distribution is valuable because it works for any distribution for which you can compute the inverse cumulative distribution.4

# 3. SIMULATING LOGNORMAL STOCK PRICES

If  $Z\sim \mathcal{N}(0,1)$  , a lognormal stock price can be written

$$
S _ {T} = S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) T + \sigma \sqrt {T} Z} \tag {4}
$$

Suppose we wish to draw random stock prices for 2 years from today. From equation (4), the stock price is driven by the normally distributed random variable  $Z$ . Set  $T = 2$ ,  $\alpha = 0.10$ ,  $\delta = 0$ , and  $\sigma = 0.30$ . If we then randomly draw a set of standard normal  $Z$ 's and substitute the results into equation (4), the result is a random set of lognormally distributed  $S_{2}$ 's. The continuously compounded mean return will be  $20\%$  (10\% per year) and the continuously compounded standard deviation of  $\ln(S_{2})$  will be  $0.3 \times \sqrt{2} = 42.43\%$ .

# Simulating a Sequence of Stock Prices

There is another way to create a random set of prices 2 years from now. We can also generate annual random prices and compound these to get a 2-year price. This will give us exactly the same distribution for 2-year prices. Here is how to do it:

- Compute the 1-year price,  $S_{1}$ , as

$$
S _ {1} = S _ {0} e ^ {(0. 1 - \frac {1}{2} 0. 3 ^ {2}) \times 1 + \sigma \sqrt {1} Z (1)}
$$

- Using this  $S_{1}$  as the starting price, compute  $S_{2}$ :

$$
S _ {2} = S _ {1} e ^ {(0. 1 - \frac {1}{2} 0. 3 ^ {2}) \times 1 + 0. 3 \sqrt {1} Z (2)}
$$

In these expressions,  $Z(1)$  and  $Z(2)$  are two draws from the standard normal distribution.

If we substitute the expression for  $S_{1}$  into  $S_{2}$ , we get

$$
S _ {2} = S _ {0} e ^ {(0. 1 - \frac {1}{2} 0. 3 ^ {2}) \times 2 + 0. 3 \sqrt {1} [ Z (1) + Z (2) ]} \tag {5}
$$

The difference between this expression and equation (4) is that instead of the term  $\sqrt{2} Z$ , we have  $[Z(1) + Z(2)]$ . Note that

$$
\operatorname {V a r} (\sqrt {2} Z) = 2
$$ and


$$

\operatorname {V a r} [ Z (1) + Z (2) ] = 2

$$

Therefore, equations (4) and (5) generate  $S_{2}$ 's with the same distribution.

If we really want to simulate a random stock price after 2 years, there is no reason to draw two random variables instead of one. But if we want to simulate the path of the stock price over 2 years (for example, to price a path-dependent option), then we can do so by splitting up the 2 years into multiple periods.

In general, if we wish to split up a period of length  $T$  into intervals of length  $h$ , the number of such intervals will be  $n = T / h$ . We have

$$

S _ {h} = S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) h + \sigma \sqrt {h} Z (1)}

$$

$$

S _ {2 h} = S _ {h} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) h + \sigma \sqrt {h} Z (2)}

$$ and so on, up to


$$

S _ {n h} = S _ {(n - 1) h} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) h + \sigma \sqrt {h} Z (n)}

$$

These  $n$  stock prices can be interpreted as equally spaced points on the stock price path between times 0 and  $T$ . Note that if we substitute  $S_{h}$  into the expression for  $S_{2h}$ , the expression for  $S_{2h}$  into that for  $S_{3h}$ , and so on, we get

$$

\begin{array}{l} S _ {T} = S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) T + \sigma \sqrt {h} \left[ \sum_ {i = 1} ^ {n} Z (i) \right]} \\ = S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) T + \sigma \sqrt {T} \left[ \frac {1}{\sqrt {n}} \sum_ {i = 1} ^ {n} Z (i) \right]} \tag {6} \\ \end{array}

$$

Since  $\frac{1}{\sqrt{n}}\sum_{i=1}^{n}Z(i)\sim\mathcal{N}(0,1)$ , we get the same distribution at time  $T$  with equation (6) as if we had drawn a single  $\mathcal{N}(0,1)$  random variable, as in equation (4). By splitting up the problem into  $n$  draws, however, we simulate the path taken by  $S$ . The simulation of a path is useful in computing the value of path-dependent derivatives, such as Asian and barrier options.

# 4. MONTE CARLO VALUATION

In Monte Carlo valuation, we perform a calculation similar to that in equation (2). The option payoff at time  $T$  is a function of the stock price,  $S_{T}$ . Represent this payoff as  $V(S_{T}, T)$ . The time-0 Monte Carlo price,  $V(S_{0}, 0)$ , is then

$$

V \left(S _ {0}, 0\right) = \frac {1}{n} e ^ {- r T} \sum_ {i = 1} ^ {n} V \left(S _ {T} ^ {i}, T\right) \tag {7}

$$ where  $S_T^1, \ldots, S_T^n$  are  $n$  randomly drawn time- $T$  stock prices. For the case of a call option, for example,  $V(S_T^i, T) = \max(0, S_T^i - K)$ .

Both equations (2) and (7) use approximations to the time- $T$  stock price distribution to compute an option price. Equation (2) uses the binomial distribution to approximate the lognormal stock price distribution, while equation (7) uses simulated lognormal prices to approximate the lognormal stock price distribution.

As an illustration of Monte Carlo techniques, we will first work with a problem for which we already know the answer. Suppose we have a European option that expires in  $T$  periods. The underlying asset has volatility  $\sigma$  and the risk-free rate is  $r$ . We can use the Black-Scholes option pricing formula to price the option, but we will price the option using both Black-Scholes and Monte Carlo so that we can assess the performance of Monte Carlo valuation.

# Monte Carlo Valuation of a European Call

We assume that the stock price follows the risk-neutral version of equation (4), obtained by setting  $\alpha = r$ . We generate random standard normal variables,  $Z$ , substitute them into equation (4), and generate many random future stock prices. Each  $Z$  creates one trial. Suppose we compute  $N$  trials. For each trial,  $i$ , we compute the value of a call as

$$
\max  (0, S _ {T} ^ {i} - K) = \max  \left(0, S _ {0} e ^ {(r - \delta - 0. 5 \sigma^ {2}) T + \sigma \sqrt {T} Z _ {i}} - K\right); \quad i = 1, \dots , N
$$

Average the resulting values:

$$
\frac {1}{N} \sum_ {i = 1} ^ {N} \max  (0, S _ {T} ^ {i} - K)
$$

This expression gives us an estimate of the expected option payoff at time  $T$ . We discount the average payoff back at the risk-free rate in order to get an estimate of the option value:

$$
\overline {{C}} = e ^ {- r T} \frac {1}{N} \sum_ {i = 1} ^ {N} \max (0, S _ {T} ^ {i} - K)
$$

Example 1. Suppose we wish to value a 3-month European call option where the stock price is  $40, the strike price is$ 40, the risk-free rate is 8\%, the dividend yield is zero, and the volatility is 30\%. We draw random 3-month stock prices by using the expression

$$
S _ {3 \mathrm {m o n t h s}} = S _ {0} e ^ {(0. 0 8 - 0. 3 ^ {2} / 2) \times 0. 2 5 + 0. 3 \sqrt {0 . 2 5} Z}
$$

TABLE 2

Results of Monte Carlo valuation of European call with  S = \ 40 ,  K = \ 40 ,  \sigma = 30\% ,  r = 8\% ,  t = 91  days, and  \delta = 0 . The Black-Scholes price is  \ 2.78 . Each trial uses 500 random draws.

<table><tr><td>Trial</td><td>Computed Price ($)</td></tr><tr><td>1</td><td>2.98</td></tr><tr><td>2</td><td>2.75</td></tr><tr><td>3</td><td>2.63</td></tr><tr><td>4</td><td>2.75</td></tr><tr><td>5</td><td>2.91</td></tr><tr><td>Average</td><td>2.804</td></tr></table>

For each stock price, we compute

$$
\text {O p t i o n} = \max  (0, S _ {3 \text {m o n t h s}} - \$ 4 0)
$$

We repeat this procedure many times, average the resulting option payoffs, and discount the average back 3 months at the risk-free rate. With a single estimate using 2500 draws, we get an answer of  $2.804 (see Table 2), close to the true value of$ 2.78.

In this example we priced a European-style option. We will discuss in Section 6 the use of Monte Carlo simulation to value American-style options.

# Accuracy of Monte Carlo

There is no need to value a European call using Monte Carlo methods, but doing so allows us to assess the accuracy of Monte Carlo valuation for a given number of simulated stock price paths. The key question is how many simulated stock prices suffice to value an option to a desired degree of accuracy. Monte Carlo valuation is simple but relatively inefficient. There are methods that improve the efficiency of Monte Carlo; we discuss several of these in Section 5.

To assess the accuracy of a Monte Carlo estimate, we can run the simulation different times and see how much variability there is in the results. Of course in this case, we also know that the Black-Scholes solution is 2.78.

Table 2 shows the results from running five Monte Carlo valuations, each containing 500 random stock price draws. The result of 2500 simulations is close to the correct answer ( $2.804 is close to$ 2.78). However, there is considerable variation among the individual trials of 500 simulations.

To assess accuracy, we need to know the standard deviation of the estimate. Let  $C(\tilde{S}_i)$  be the call price generated from the randomly drawn  $\tilde{S}_i$ . If there are  $n$  trials, the Monte Carlo estimate is

$$
\overline {{C}} _ {n} = \frac {1}{n} \sum_ {i = 1} ^ {n} C (\tilde {S} _ {i})
$$

Let  $\sigma_{C}$  denote the standard deviation of one draw and  $\sigma_{n}$  the standard deviation of  $n$  draws. The variance of a mean, given independent and identically distributed  $\tilde{S}_i$ 's, is

$$
\sigma_ {n} ^ {2} = \frac {1}{n} \sigma_ {C} ^ {2}
$$ or


$$

\sigma_ {n} = \frac {1}{\sqrt {n}} \sigma_ {C}

$$

Thus, the standard deviation of the Monte Carlo estimate is inversely proportional to the square root of the number of draws.

In the Monte Carlo results reported in Table 2, the standard deviation of a draw is about 4.05. (This value is computed by taking the standard deviation of the 2500 price estimates used to compute the average.) For 500 draws, the standard deviation is

$$

\frac {\$ 4 . 0 5}{\sqrt {5 0 0}} = \$ 0. 1 8

$$

Given that the correct price is  $2.78, a$ 0.18 standard deviation is a substantial percentage of the option price (6.5\%). With 2500 observations, the standard deviation is cut to $0.08, suggesting that the $2.80 estimate from averaging the five answers was only accidentally close to the correct answer. In order to have a 1\% (0.028) standard deviation, we would need to have 21,000 trials.

# Arithmetic Asian Option

In the previous example of Monte Carlo valuation, we valued an option that we already could value with the Black-Scholes formula. In practice, Monte Carlo valuation is useful under these conditions:

- Where the number of random elements in the option valuation problem is too great to permit direct numerical solution.
- Where underlying variables are distributed in such a way that direct solutions are difficult.
- Where options are path-dependent, i.e., the payoff at expiration depends upon the path of the underlying asset price.

For the case of a path-dependent option, the use of Monte Carlo estimation is straightforward. As discussed above, we can simulate the path of the stock as well as its terminal value. For example, consider the valuation of a security that at the end of 3 months makes a payment based on the arithmetic average of the stock price at the end of months 1, 2, and 3. This is an arithmetic average price Asian option: "Asian" because the payoff is based on an average, and "arithmetic average price" because the arithmetic average stock price replaces the actual stock price at expiration.

How will the value of an option on the average compare with an option that settles based on the actual expiration-day stock price? Intuitively, averaging should reduce the likelihood of large gains and losses. Any time the stock ends up high (in which case the call will have a high value at expiration), it will have traversed intermediate stock prices in

# FIGURE 2

Histograms for risk-neutral stock price distribution after 3 months (top panel) and risk-neutral distribution for the average stock price created by averaging the three month-end stock prices during the same period (bottom panel). Assumes  S_0 = \40, r = 8\% ,  \sigma = 30\% , and  \delta = 0 . These histograms were generated using 100,000 trials.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/71a81f2475825fad9e1b737153f00483e9adf30453e92cac881d01ce8dacc49b.jpg) the process of reaching a high value. The payoff to the Asian option will reflect these lower intermediate prices, and, hence, large payoffs will be much less likely.


We compute the 1-month, 2-month, and 3-month stock prices as follows:

$$

S _ {1} = 4 0 e ^ {(r - \delta - \sigma^ {2} / 2) T / 3 + \sigma \sqrt {T / 3} Z (1)}

$$

$$

S _ {2} = S _ {1} e ^ {(r - \delta - \sigma^ {2} / 2) T / 3 + \sigma \sqrt {T / 3} Z (2)}

$$

$$

S _ {3} = S _ {2} e ^ {(r - \delta - \sigma^ {2} / 2) T / 3 + \sigma \sqrt {T / 3} Z (3)}

$$ where  $Z(1), Z(2)$ , and  $Z(3)$  are independent draws from a standard normal distribution. We repeat the trial many times and draw many  $Z_{i}$ 's. The value of the security is then computed as

$$
C _ {\text {A s i a n}} = e ^ {- r T} E \left(\max  \left[ \left(S _ {1} + S _ {2} + S _ {3}\right) / 3 - K, 0 \right]\right) \tag {8}
$$

Example 2. Let  r = 8\% ,  \sigma = 0.3 , and suppose that the initial stock price is 40. Figure 2 compares histograms for the actual risk-neutral stock price distribution after 3 months and that for the average stock price created by averaging the three month-end prices. As expected, the nonaveraged distribution has significantly higher tail probabilities and a lower probability of being close to the initial stock price of 40.

Table 3 lists prices of Asian options computed using 10,000 Monte Carlo trials each. The first row (where a single terminal price is averaged) represents the price of an ordinary call option with 3 months to expiration. The others represent more frequent averaging. The

# TABLE 3

Prices of arithmetic average-price Asian options estimated using Monte Carlo and exact prices of geometric average price options. Assumes option has 3 months to expiration and average is computed using equal intervals over the period. Each price is computed using 10,000 trials, assuming  $S = \40$ ,  $K = \$ 40 ,  $\sigma = 30\%$ ,  $r = 8\%$ ,  $T = 0.25$ , and  $\delta = 0$ . In each row, the same random numbers were used to compute both the geometric and arithmetic average price options.  $\sigma_{n}$  is the standard deviation of the estimated arithmetic option prices, divided by  $\sqrt{10,000}$ .

<table><tr><td rowspan="2">Number of Averages</td><td colspan="2">Monte Carlo Prices ($)</td><td rowspan="2">Exact Geometric Price ($)</td><td rowspan="2">σn</td></tr><tr><td>Arithmetic</td><td>Geometric</td></tr><tr><td>1</td><td>2.79</td><td>2.79</td><td>2.78</td><td>0.0408</td></tr><tr><td>3</td><td>2.03</td><td>1.99</td><td>1.94</td><td>0.0291</td></tr><tr><td>5</td><td>1.78</td><td>1.74</td><td>1.77</td><td>0.0259</td></tr><tr><td>10</td><td>1.70</td><td>1.66</td><td>1.65</td><td>0.0241</td></tr><tr><td>20</td><td>1.66</td><td>1.61</td><td>1.59</td><td>0.0231</td></tr><tr><td>40</td><td>1.63</td><td>1.58</td><td>1.56</td><td>0.0226</td></tr></table>

Asian price declines as the averaging frequency increases, with the largest price decline obtained by moving from no averaging (the first row in Table 3) to monthly averaging (the second row of Table 3).

Note also in Table 3 that, in any row, the arithmetic average price is always above the geometric average price. This is Jensen's inequality at work: Geometric averaging produces a lower average stock price than arithmetic averaging, and hence a lower option price.

# 5. EFFICIENT MONTE CARLO VALUATION

We have been describing what might be called "naive" or simple Monte Carlo, making no attempt to reduce the variance of the simulated answer for a given number of trials. There are a number of methods to achieve faster Monte Carlo valuations.

# Control Variate Method

We have seen that naive Monte Carlo estimation of an arithmetic Asian option requires many simulations. In Table 3, even with 10,000 simulations, there is still a standard deviation of several percent in the option price.

In each row of Table 3, the same random numbers are used to estimate the option price. As a result, the errors in the estimated arithmetic and geometric prices are correlated: When the estimated price for the geometric option is high, this occurs because we have had high returns in the stock price simulation. This should result in a high arithmetic price as well.

This observation suggests the control variate method to increase Monte Carlo accuracy. The idea underlying this method is to estimate the error on each trial by using the price of a related option that does have a pricing formula. The error estimate obtained from this control price can be used to improve the accuracy of the Monte Carlo price on each trial.

Asian options illustrate this idea. $^{7}$  Because we have a formula for the price of a geometric Asian option, we know whether the geometric price from a Monte Carlo valuation is too high or too low. For a given set of random stock prices, the arithmetic and geometric prices will typically be too high or too low in tandem, so we can use information on the error in the geometric price to adjust our estimate of the arithmetic price, for which there is no formula.

To be specific, we use the same simulation to estimate both the arithmetic price,  $\overline{A}$ , and the geometric price,  $\overline{G}$ . Let  $G$  and  $A$  represent the true geometric and arithmetic prices. The error for the Monte Carlo estimate of the geometric price is  $(G - \overline{G})$ . We want to use this error to improve our estimate of the arithmetic price. Consider calculating

$$
A ^ {*} = \bar {A} + \beta (G - \bar {G}) \tag {9}
$$

This is a control variate estimate. Monte Carlo provides an unbiased estimate of  $G$ :  $E(\overline{G}) = G$ . Therefore, the estimate of  $A$  is also unbiased:  $E(A^{*}) = E(\overline{A}) = A$ . The variance of  $A^{*}$  is

$$
\operatorname {V a r} \left(A ^ {*}\right) = \operatorname {V a r} (\bar {A}) + \beta^ {2} \operatorname {V a r} (\bar {G}) - 2 \beta \operatorname {C o v} (\bar {A}, \bar {G}) \tag {10}
$$

The variance  $\operatorname{Var}(A^{*})$  is minimized by setting  $\beta = \hat{\beta}$ , where  $\hat{\beta} = \operatorname{Cov}(\overline{A}, \overline{G}) / \operatorname{Var}(\overline{G})$ . You might recognize  $\hat{\beta}$  as the slope coefficient from regressing  $\overline{A}$  on  $\overline{G}$ . With  $\beta$  selected to minimize  $\operatorname{Var}(A^{*})$ , the control variate Monte Carlo variance is

$$
\operatorname {V a r} \left(A ^ {*}\right) = \operatorname {V a r} (\bar {A}) \left(1 - \rho^ {2}\right) \tag {11}
$$ where  $\rho$  is the correlation between  $\overline{A}$  and  $\overline{G}$ . In general, the variance of the control variate estimate will be less than that of naive Monte Carlo. If  $\beta$  is optimally chosen, it is never worse. One can estimate  $\hat{\beta}$  by performing a small number of Monte Carlo trials and running a regression of equation (10) to obtain  $\hat{\beta}$ . The optimal value of  $\beta$  will vary depending on the application.


If the simulated claim and the control are highly correlated, the variance reduction from the control variate method can be dramatic. Figure 3 compares the results from a

# FIGURE 3

Histograms comparing simple and efficient Monte Carlo estimates. All panels depict the distribution of 100 valuations using 200 estimates per valuation. The top two panels show the distribution of estimates for a 1-year arithmetic Asian option with monthly averaging. The top left panel shows the distribution obtained with simple Monte Carlo ( \sigma_n = \0.399 ), and the top right for the control variate estimate ( \sigma_n = \$0.042 ). The estimated value using all control variate trials is  \3.42 . The bottom panel shows 100 valuations using 200 estimates per valuation for a European call. The left panel is simple Monte Carlo ( \sigma_n = \0.606 ) and the right panel uses stratified sampling ( \sigma_n = \0.042 . The Black-Scholes price is  \6.28 , which is also the average of the stratified sampling estimates. In all cases  S = \40 ,  K = \$40 ,  \sigma = 0.3 ,  r = 0.08 ,  T = 1.00 , and  \delta = 0 .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/69f8b4cb9a3d10e965cb98455f186bf300a3800a4f82c85c744e8e9e6f6e0409.jpg)
Simple Monte Carlo Valuation
Asian Option

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/a5a2d483b2d37c89d66d6e9b0c78c67a577c682dfb896948095531b95b98c0cc.jpg)
Control Variate Valuation Asian Option

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/ce35443163625e2ecce57c14e3fae250c7ba6713fb6d04cbf44c184364210511.jpg)
Simple Monte Carlo Valuation European Call

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/977911ab9de082ac7682e44e7f246429c6e91c5ce0331a769573d851234794f8.jpg)
Monte Carlo Valuation with Stratified Sampling European Call simple Monte Carlo calculation with those from a control variate calculation. The standard deviation of the control variate estimate is  $10\%$  that of the simple Monte Carlo calculation.


# Other Monte Carlo Methods

The control variate example is but one method for improving the efficiency of Monte Carlo valuation. There are a variety of other methods discussed in more depth in Boyle et al. (1997) and Glasserman (2004). The antithetic variate method uses the idea that for every simulated realization, there is an opposite and equally likely realization. For example, if we draw a random normal number of 0.5, we could just as well have drawn  $-0.5$ . By using the opposite of each normal draw we can get two simulated outcomes for each random path we draw. There can be an efficiency gain because the two estimates are negatively correlated; adding them reduces the variance of the estimate. Notably, if you draw an extreme estimate from one tail of the distribution, you will also draw an extreme estimate from the other tail, balancing the effect of the first draw. Boyle et al. (1997) find modest benefits from using the antithetic variate method.

Another important class of methods controls the region in which random numbers are generated. Such methods are generally called stratified sampling. Suppose you have 100 uniform random numbers,  $u_{i}, i = 1, \ldots, 100$ . With simple Monte Carlo you would compute  $z_{i} = N^{-1}(u_{i})$ . This calculation treats each random number as representing a random draw from the cumulative distribution. However, because of random variation, 100 uniform random numbers can create a distribution for the  $z_{i}$ 's that does not look normal. Certain areas can be under- or over-represented. We can improve the distribution of the  $u_{i}$ , and therefore of the  $z_{i}$ , if we treat each number as a random draw from each percentile of the uniform distribution. Thus, take the first draw,  $u_{1}$ , and divide it by 100. The resulting  $\hat{u}_{1}$  is now uniformly distributed over [0, 0.01]. Take the second draw, divide it by 100, and add 0.01. The resulting  $\hat{u}_{2}$  is uniformly distributed over (0.01, 0.02). For the  $i$ th draw, compute  $\hat{u}_{i} = (i - 1 + u_{i}) / 100$ . This value is uniformly distributed over the  $i$ th percentile. Proceeding in this way we are guaranteed to generate a random number for each percentile of the normal distribution. You can select a number of intervals different from 100, and you can repeat the simulation multiple times. A generalization of this technique when the payoff depends on more than one random variable is Latin hypercube sampling.

The bottom panels of Figure 3 compare simple Monte Carlo valuation with estimates using stratified sampling. The figure on the bottom left is the histogram of European call prices computed using 200 random draws. The figure on the bottom right uses stratified sampling, where a random number is drawn for one-half percentile of the distribution. The standard deviation of the estimate is less than one tenth that obtained with simple Monte Carlo.

A refinement of stratified sampling is importance sampling, in which the generation of random numbers is concentrated in the region where they have the most value for pricing a particular claim. Finally, it is possible to construct carefully selected deterministic points, called low discrepancy sequences, to create more uniform coverage of the distribution. These methods are particularly helpful for high-dimensional problems.[9]

If you are performing a one-time calculation, simple Monte Carlo is appealing. However, if you are performing a Monte Carlo valuation repeatedly, you may achieve

<table><tr><td colspan="2">FIGURE 4</td><td colspan="4">Stock Price Paths</td></tr><tr><td></td><td>Path</td><td>t=0</td><td>t=1</td><td>t=2</td><td>t=3</td></tr><tr><td>Assumes S0=1.0, K=1.1, and r=6\%. Prices in bold</td><td>1</td><td>1.00</td><td>1.09</td><td>1.08</td><td>1.34</td></tr><tr><td>are nodes where early exercise might be optimal.</td><td>2</td><td>1.00</td><td>1.16</td><td>1.26</td><td>1.54</td></tr><tr><td></td><td>3</td><td>1.00</td><td>1.22</td><td>1.07</td><td>1.03</td></tr><tr><td></td><td>4</td><td>1.00</td><td>0.93</td><td>0.97</td><td>0.92</td></tr><tr><td></td><td>5</td><td>1.00</td><td>1.11</td><td>1.56</td><td>1.52</td></tr><tr><td></td><td>6</td><td>1.00</td><td>0.76</td><td>0.77</td><td>0.90</td></tr><tr><td></td><td>7</td><td>1.00</td><td>0.92</td><td>0.84</td><td>1.01</td></tr><tr><td></td><td>8</td><td>1.00</td><td>0.88</td><td>1.22</td><td>1.34</td></tr></table>

Data from Longstaff and Schwartz (2001).

large efficiency gains by analyzing the problem and using one or more variance reduction techniques to increase efficiency.

# 6. VALUATION OF AMERICAN OPTIONS

It is generally more difficult to value American-style options than to value European-style options, and this remains true when using Monte Carlo valuation. Standard Monte Carlo entails simulating stock price paths forward, then averaging and discounting the maturity payoffs. In American option valuation, the difficulty is knowing when to exercise the option; this requires working backward to determine the times at which the option should be exercised. Recently, Broadie and Glasserman (1997) and Longstaff and Schwartz (2001) have demonstrated feasible methods for using Monte Carlo to value American options.

We will discuss pricing a 3-year put option with a strike of 1.10, the example used in Longstaff and Schwartz (2001). In order to analyze early exercise we need to consider times before maturity, so we must simulate stock price paths. Figure 4, taken from Longstaff and Schwartz (2001), illustrates eight hypothetical simulation paths, with intermediate stock prices generated annually. The in-the-money nodes (those for which S < 1.10) are candidate nodes for exercise of the option; in Figure 4 they are in bold (this ignores exercise at time 0). How do we determine at which of these nodes early exercise is optimal?

The idea underlying any method of American option valuation is to compare the value of immediate exercise to the continuation value of the option—i.e., the value of keeping the option alive.[10] The problem is therefore to estimate the continuation value at each point in time.

It is worth noting one potential problem in estimating continuation value, which stems from the use of future stock prices on a given path to decide whether to exercise on that path. Consider path 1 in Figure 4. The option is out-of-the-money, and therefore worthless, at  $t = 3$ . Therefore, on this path we would be better off at  $t = 2$  exercising rather than waiting.

However, in deciding to exercise by looking ahead on the path, we are using knowledge of the future stock price, which is information we will not have in real life. Valuing the option assuming we know the future price will give us too high a value. The way to mitigate such "lookahead bias" is to base an exercise decision on average outcomes from a given point forward. There are at least two ways to characterize the average outcome from a given point. One is to use a regression to characterize the continuation value based on analysis of multiple paths. This is the method proposed by Longstaff and Schwartz (2001). Another is to create additional branches from each node, providing multiple outcomes that we can average to characterize continuation value at that node. This is the basis for the Broadie and Glasserman (1997) procedure.

To price the option using regression analysis, we work backward through the columns of Figure 4, running a regression at each time to estimate continuation value as a function of the stock price. We work backward because the continuation value at  $t = 1$  will depend upon whether exercise is optimal on a given path at  $t = 2$ . At  $t = 2$ , there are five paths (1, 3, 4, 6, and 7) where the option is in-the-money and exercise could be optimal. For each of these paths, we know the value of exercising immediately and the value of waiting. Longstaff and Schwartz run a regression of the present value of waiting to exercise (i.e., the continuation value) against the stock price and stock price squared. At time 2, we obtain the following result:

$$

\text {C o n t i n u a t i o n v a l u e a t t i m e} 2 = - 1. 0 7 + 2. 9 8 \times S - 1. 8 1 \times S ^ {2}

$$ where  $S$  is the time 2 stock price. Now for each node where exercise could be optimal, we insert the stock price at that node into the regression equation and obtain an estimate of continuation value. By comparing this to intrinsic value, we decide whether to exercise at that node. For example, when  $S = 1.08$  in row 1, the estimated value of waiting to exercise is

$$
- 1. 0 7 + 2. 9 8 \times 1. 0 8 - 1. 8 1 \times 1. 1 6 6 = 0. 0 3 7 \tag {12}
$$

Since the immediate exercise value is  $1.10 - 1.08 = 0.02$ , which is less than 0.037, we wait at that node. Table 4 summarizes the results.

We then repeat the analysis at  $t = 1$ , using the results at  $t = 2$ . The final decision about where to exercise the option is summarized in Figure 5. We can value the option by computing the present value of cash flows based on exercising at the nodes where doing so is optimal. The final American put value is $0.1144, compared with $0.0564 for a European value computed using the same simulated paths.

A problem with the regression approach is that it is not obvious how to select an appropriate functional form for the continuation regression. Longstaff and Schwartz (2001) report obtaining similar results for a variety of functional forms, but for each new problem it will be desirable to experiment with different functions.

Broadie and Glasserman (1997) adopt a different approach, pointing out that American option valuations are subject to different kinds of biases. As we discussed above, an estimator will give too high a valuation to the extent it uses information about the future to decide whether to exercise at a given time. Estimators will be biased low to the extent that early exercise is suboptimal (because optimal exercise maximizes the value of the option). To address the two errors, Broadie and Glasserman use two estimators, one with high bias and one with low bias. In constructing these estimators, they create sample paths in which there are multiple branches from each node. The resulting set of paths resembles a nonrecombining binomial tree with more than two branches from each node.

<table><tr><td colspan="2">TABLE 4</td><td colspan="5">Exercise analysis at t = 2 for those nodes in Figure 4 where S &lt; 1.10 at t = 2.</td></tr><tr><td>Path</td><td>PV(Wait)</td><td>S</td><td>S²</td><td>Exercise</td><td>Continuation</td><td>Result</td></tr><tr><td>1</td><td>0.000</td><td>1.08</td><td>1.166</td><td>0.02</td><td>0.037</td><td>Wait</td></tr><tr><td>3</td><td>0.066</td><td>1.07</td><td>1.145</td><td>0.03</td><td>0.046</td><td>Wait</td></tr><tr><td>4</td><td>0.170</td><td>0.97</td><td>0.941</td><td>0.13</td><td>0.118</td><td>Exercise</td></tr><tr><td>6</td><td>0.188</td><td>0.77</td><td>0.593</td><td>0.33</td><td>0.152</td><td>Exercise</td></tr><tr><td>7</td><td>0.085</td><td>0.84</td><td>0.706</td><td>0.26</td><td>0.156</td><td>Exercise</td></tr></table>

<table><tr><td colspan="2">FIGURE 5</td><td colspan="4">Stock Price Paths</td></tr><tr><td rowspan="9">Summary of results showing the nodes at which exercise is optimal (in bold) for the paths in Figure 4.</td><td>Path</td><td>t=0</td><td>t=1</td><td>t=2</td><td>t=3</td></tr><tr><td>1</td><td>1.00</td><td>1.09</td><td>1.08</td><td>1.34</td></tr><tr><td>2</td><td>1.00</td><td>1.16</td><td>1.26</td><td>1.54</td></tr><tr><td>3</td><td>1.00</td><td>1.22</td><td>1.07</td><td>1.03</td></tr><tr><td>4</td><td>1.00</td><td>0.93</td><td>0.97</td><td>0.92</td></tr><tr><td>5</td><td>1.00</td><td>1.11</td><td>1.56</td><td>1.52</td></tr><tr><td>6</td><td>1.00</td><td>0.76</td><td>0.77</td><td>0.90</td></tr><tr><td>7</td><td>1.00</td><td>0.92</td><td>0.84</td><td>1.01</td></tr><tr><td>8</td><td>1.00</td><td>0.88</td><td>1.22</td><td>1.34</td></tr></table>

The high bias estimator assesses the continuation value by averaging the discounted values on branches emanating from a point and exercising if the value of doing so is greater than the value of continuing. Because the subsequent branches are constructed by simulation, there will be sampling error. To see the effects of such error, suppose exercise is optimal at a node. If the subsequent branches are too high due to sampling error, we will not exercise and assign an even higher value to the node than would be obtained by (optimally) exercising. Now suppose that exercise is not optimal at a node but subsequent branches are too low due to sampling error. We will then exercise and again assign a higher value to the node than we should, given the subsequent branch values.[11]

The low bias estimator is obtained by splitting the branches from each node into two sets. Using the first set, we estimate the value of continuation and decide whether to exercise. If it is optimal to continue, we use the second set of nodes to estimate the continuation value.

By using separate sets of nodes to make the exercise decision and to estimate continuation value, this estimator avoids the "high bias" discussed above. But to the extent the exercise decision is suboptimal, the inferred option value will be too low. Both estimators are biased, but both also converge to the true option value as the number of paths increases.

The Broadie and Glasserman approach is computationally involved, but it provides a general method for accommodating early exercise in a simulation model.

# 7. THE POISSON DISTRIBUTION

We have seen that the lognormal distribution assigns a low probability to large stock price moves. One approach to generating a more realistic stock price distribution is to permit large stock price moves to occur randomly. Occasional large price moves can generate the fat tails.

The Poisson distribution is a discrete probability distribution that counts the number of events—such as large stock price moves—that occur over a period of time. The Poisson distribution is summarized by the parameter  $\lambda$ , where  $\lambda h$  is the probability that one event occurs over the short interval  $h$ . A Poisson-distributed event is very unlikely to occur more than once over a sufficiently short interval. Thus,  $\lambda$  is like an annualized probability of the event occurring over a short interval.[12]

Over a longer period of time,  $t$ , the probability that the event occurs exactly  $m$  times is given by

$$ p (m, \lambda t) = \frac {e ^ {- \lambda t} (\lambda t) ^ {m}}{m !}
$$

The cumulative Poisson distribution is then the probability that there are  $m$  or fewer events from 0 to  $t$ .

$$
\mathcal {P} (m, \lambda t) = \Pr (x \leq m; \lambda t) = \sum_ {i = 0} ^ {m} \frac {e ^ {- \lambda t} (\lambda t) ^ {i}}{i !}
$$

Given an expected number of events, the Poisson distribution tells us the probability that we will see a particular number of the events over a given period of time. $^{14}$  The mean of the Poisson distribution is  $\lambda t$ .

The Poisson distribution can be derived from these four assumptions. See Casella and Berger (2002).

# FIGURE 6

Graph of Poisson distribution for  $\lambda t$  of 0.010, 0.025, and 0.050. This graph may be interpreted as the distribution of the number of events observed over a 10-year period, given annual event probabilities of  $1\%$ ,  $2.5\%$ , and  $5\%$ . In any of the cases, there is a tiny probability of seeing more than five events over the 10-year period.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/c47330ebd61efe4d8f25c7d54622feae1933a4457e44ce87fcba9024113af53f.jpg)

Example 3. Suppose the probability of a market crash over a short period of length  $h$  is  $\lambda h$ , where  $\lambda = 0.02$ . Then the probability of seeing no market crashes in any given year can be computed as  $p(0, 0.02 \times 1) = 0.9802$ . The probability of seeing no crashes over a 10-year period would be  $p(0, 0.02 \times 10) = 0.8187$ . The probability of seeing exactly two crashes over a 10-year period would be  $p(2, 0.02 \times 10) = 0.0164$ .

Figure 6 graphs the Poisson distribution for three values of the Poisson parameter,  $\lambda t$ . Suppose we are interested in the number of times an event will occur over a 10-year period. Figure 6 shows us the distribution for  $t = 10$  and  $\lambda = 0.01$  (1\% per year),  $\lambda = 0.025$  (2.5\% per year), and  $\lambda = 0.05$  (5\% per year). The likeliest occurrence in all three scenarios is that no events occur. It is also extremely unlikely that four or more events occur.

The Poisson distribution only counts the number of events. If an event occurs, we need to determine the magnitude of the jump as an independent draw from some other density; the lognormal is frequently used. Thus, in those periods when a Poisson event occurs, we would draw a separate random variable to determine the magnitude of the jump.

Using the inverse cumulative distribution function for a Poisson random variable, it is easy to generate a Poisson-distributed random variable. Even without the inverse cumulative distribution function (which Excel does not provide), we can construct the inverse distribution function from the cumulative distribution function.

Table 5 calculates the Poisson distribution for a mean of 0.8. Using this table we can easily see how to randomly draw a Poisson event. First we draw a uniform (0,1) random

TABLE 5

Values of Poisson distribution and cumulative Poisson distribution with mean  $(\lambda t) = 0.8$

<table><tr><td>Number of Events</td><td>Probability</td><td>Cumulative Probability</td></tr><tr><td>0</td><td>0.4493</td><td>0.4493</td></tr><tr><td>1</td><td>0.3595</td><td>0.8088</td></tr><tr><td>2</td><td>0.1438</td><td>0.9526</td></tr><tr><td>3</td><td>0.0383</td><td>0.9909</td></tr></table> variable. Then we use the values in the table to decide how many events occur. If the uniform random variable is less than 0.4493, we say that no events occur. If the value is between 0.4493 and 0.8088, we say that one event occurs, and so forth.

# 8. SIMULATING JUMPS WITH THE POISSON DISTRIBUTION

As we discussed, stock prices sometimes move more than would be expected from a lognormal distribution. If market volatility is  $20\%$  and the expected return is  $15\%$ , a 1-day  $5\%$  drop in the market occurs about once every 2.5 million days. (See Problem 8.) A  $20\%$  1-day drop (as in October 1987) is virtually impossible if prices are lognormally distributed with a reasonable volatility.

Merton (1976) introduced the use of the Poisson distribution in an option pricing context. The Poisson distribution counts the number of events that occur in a given period of time. If each event is a jump in the price, we can then use the lognormal (or other) distribution to compute the size of the jump. This Poisson-lognormal model assumes that jumps are independent. In addition to independence, we will assume that jumps are idiosyncratic, meaning that jumps can be diversified. In this case, the possibility of a jump does not affect the risk premium of the asset. (This is a common assumption made for tractability, but it is not always appropriate. While some jumps are idiosyncratic, a large market move is by definition systematic.)

Let the lognormally distributed jump magnitude  $Y$  be given by

$$
Y = e ^ {\alpha_ {J} - 0. 5 \sigma_ {J} ^ {2} + \sigma_ {J} W}
$$ where  $W$  is a standard normal variable. If  $S$  is the pre-jump price,  $YS$  is the post-jump price.  $e^{\alpha_J}$  is the expected jump and  $\sigma_J$  is the standard deviation of the log of the jump. The expected percentage jump is


$$

E \left(\frac {Y S - S}{S}\right) = e ^ {\alpha_ {J}} - 1 = k \tag {13}

$$

# Simulating the Stock Price with Jumps

To simulate the stock price over a period of time  $h$ , we first pick two uniform random variables to determine the number of jumps and the ordinary (nonjump) lognormal return.

If there are  $m$  jumps, we must then pick  $m$  additional random variables to determine the magnitudes of the jumps. Each jump has a multiplicative effect on the stock price.

Specifically, suppose the stock price is  $S_{t}$ . If a stock cannot jump, its price at time  $t + h$  is

$$

S _ {t + h} = S _ {t} e ^ {(\alpha - \delta - 0. 5 \sigma^ {2}) h + \sigma \sqrt {h} Z}

$$ where  $\alpha$  is the expected return.

Now consider an otherwise identical stock that can jump, with price  $\hat{S}_t$ . The stock price will have two components, one with and one without jumps. The no-jump lognormal component is

$$
S _ {t} e ^ {(\hat {\alpha} - \delta - 0. 5 \sigma^ {2}) h + \sigma \sqrt {h} Z}
$$ where the expected stock return, conditional on no jump, is  $\hat{\alpha}$ . We will see in a moment why we use a different notation for the expected return in this expression. If the stock jumps  $m$  times between  $t$  and  $t + h$ , each jump changes the price by a factor of


$$

Y _ {i} = e ^ {\alpha_ {J} - 0. 5 \sigma_ {J} ^ {2} + \sigma_ {J} W (i)}

$$

Where  $Z$  and  $W(i), i = 1, \dots, m$  are standard normal random variables. The cumulative jump is the product of the  $Y_{i}$ 's, or

$$

\prod_ {i = 1} ^ {m} Y _ {i} = e ^ {m (\alpha_ {J} - 0. 5 \sigma_ {J} ^ {2}) + \sigma_ {J} \Sigma_ {i = 1} ^ {m} W (i)}

$$

Notice that the cumulative jump is lognormal, since it is the product of lognormal random variables. The stock price at time  $t + h$ , taking account of both the normal lognormal return and jumps, is then

$$

\hat {S} _ {t + h} = \hat {S} _ {t} e ^ {(\hat {\alpha} - \delta - 0. 5 \sigma^ {2}) h + \sigma \sqrt {h} Z} \times e ^ {m (\alpha_ {J} - 0. 5 \sigma_ {J} ^ {2}) + \sigma_ {J} \Sigma_ {i = 1} ^ {m} W (i)} \tag {14}

$$

It is possible to simulate  $\hat{S}_{t + h}$  using this expression. There are three steps:

1. Select a standard normal  $Z$ .
2. Select  $m$  from the Poisson distribution.
3. Select  $m$  draws,  $W(i), i = 1, \dots, m$ , from the standard normal distribution.

By inserting these values into equation (14), we generate  $\hat{S}_{t + h}$ , which is lognormal since it is a product of lognormal expressions.

We have not answered the question: What is  $\hat{\alpha}$ ? There is a subtlety associated with modeling jumps. When a jump occurs, the expected percentage change in the stock price is  $e^{\alpha_J} - 1$ . If  $\alpha_J \neq 0$ , jumps will induce average up or down movement in the stock, depending upon whether  $\alpha_J > 0$  or  $\alpha_J < 0$ . Recall, however, that we assumed jumps are idiosyncratic. When jumps have no systematic risk, the jump does not affect the stock's expected return. Therefore, the unconditional (meaning that we do not know whether jumps will occur) expected return for a stock that does not jump should be the same as the unconditional expected return for an otherwise identical stock that does jump. We have to adjust the nonjump expected return,  $\hat{\alpha}$ , in order for jumps not to affect the expected return. For example, if the average jump return is  $-10\%$ , then over time the stock price will drift down on average due to jumps. In equilibrium, the stock must appreciate when not jumping in order to give the owner a fair return unconditionally. If  $\alpha_{J} = -10\%$ , we would need to raise the average expected return on the stock in order for it to earn a fair rate of return on average.


We adjust for  $\alpha_{J}$  by subtracting  $\lambda k$  from the no-jump expected return, where  $\lambda$  is the Poisson parameter and  $k$  is given by equation (13). Thus,

$$

\hat {\alpha} = \alpha - \lambda k \tag {15}

$$

With this correction, if the expected jump is positive, we lower the expected return on the stock when it is not jumping, and vice versa for a negative expected jump.

The final expression for the stock price is thus

$$

\begin{array}{l} \hat {S} _ {t + h} = \hat {S} _ {t} e ^ {(\alpha - \delta - \lambda k - 0. 5 \sigma^ {2}) h + \sigma \sqrt {h} Z} \prod_ {i = 0} ^ {m} e ^ {\alpha_ {J} - 0. 5 \sigma_ {J} ^ {2} + \sigma_ {J} W _ {i}} \tag {16} \\ = \hat {S} _ {t} e ^ {(\alpha - \delta - \lambda k - 0. 5 \sigma^ {2}) h + \sigma \sqrt {h} Z} e ^ {m (\alpha_ {J} - 0. 5 \sigma_ {J} ^ {2}) + \sigma_ {J} \Sigma_ {i = 0} ^ {m} W _ {i}} \\ \end{array}

$$ where  $\alpha_{J}$  and  $\sigma_{J}$  are the mean and standard deviation of the jump magnitude,  $Z$  and  $W_{i}$  are random standard normal variables, and  $m$  is a Poisson-distributed random variable. A similar expression appears in Merton (1976).

Figure 7 displays two simulated stock price series, one for which jumps do not occur, and one generated using equation (16). In the absence of jumps, the stock price is assumed to follow a lognormal process with  $\alpha = 8\%$  and  $\sigma = 30\%$ . For the jump component, we assume  $\lambda = 3$  (an average of three jumps per year),  $\alpha_{J} = -2\%$ , and  $\sigma_{J} = 5\%$ . In the figure, we can detect jumps because the no-jump series is drawn using the same random  $Z$ 's. Some

# FIGURE 7

Simulated stock price paths over 10 years (3650 days). One stock cannot jump; the other is the same except that jumps can occur. The simulation assumes that  $\alpha = 9\%$ ,  $\delta = 0$ ,  $\sigma = 30\%$ ,  $\lambda = 3$ ,  $\alpha_{j} = -2\%$ , and  $\sigma_{j} = 5\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/86449fd4dfa896062090070a3f9ea4ff5dfbda3ec01f7176992d2e58da05b6ba.jpg)

# FIGURE 8

Histograms and normal probability plots for the daily returns generated from the two series in Figure 7. Graphs on the left are for the no-jump series.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/42cde78bc6ab1188a8a302740b818cc910aa7f4a24c83e8a369c1038147bc9c4.jpg) of the disparity, for example between days 1000 and 1500, is due to the approximate extra  $6\%$  return  $(\lambda k)$  that is added to the stock when it does not jump.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/631f688077ddfbec442ba396a7c0f5b0d7e8c21c491448875f641bc1fcd481f6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/6abac2bbfeebdb06ff6d68ff5c4a90a3361b48861ce5673fdd6a5811cbb4f8d8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/4425b407b977e5b0fe19e6bbdc6c128fb118a8e81445f2399296f278da64175e.jpg)

What happens if we apply the normality tests to the stock price series in Figure 7? Figure 8 displays histograms and normal probability plots for the two series. Without jumps, continuously compounded returns look normal. With jumps, the data look nonnormal. When jumps can occur, the data do not look normal. The kurtosis of the continuously compounded returns without jumps is 2.93, very close to the value of 3 expected for a normal distribution. With jumps, kurtosis is 7.40.

# Multiple Jumps

When we assume lognormal moves of the stock conditional on a single jump event, we can only get large up and down moves by assuming a large standard deviation of the jump move. The reason is that we are drawing from a single lognormal distribution, conditional on the Poisson event. An alternative is to assume there are two (or more) Poisson variables, one controlling up jumps and one controlling down jumps. The lognormal moves associated with each can have different means and standard deviations. This obviously provides for a richer and potentially more realistic set of outcomes.

# 9. SIMULATING CORRELATED STOCK PRICES

Suppose that  $S$  and  $Q$  are both lognormally distributed stock prices such that

$$
\ln (S _ {t}) = \ln (S _ {0}) + (\alpha_ {S} - 0. 5 \sigma_ {S} ^ {2}) t + \sigma_ {S} \sqrt {t} W
$$

$$
\ln (Q _ {t}) = \ln (Q _ {0}) + (\alpha_ {Q} - 0. 5 \sigma_ {Q} ^ {2}) t + \sigma_ {Q} \sqrt {t} Z
$$

If  $S$  and  $Q$  are uncorrelated, then we can simulate both prices by drawing independent  $W$  and  $Z$ . However, suppose that the correlation between  $S$  and  $Q$  is  $\rho$ . Here is how to simulate these two random variables taking account of their correlation.

Let  $\epsilon_{1}$  and  $\epsilon_{2}$  be independent and distributed as  $\mathcal{N}(0,1)$ . Let

$$
W = \epsilon_ {1} \tag {17}
$$

$$
Z = \rho \epsilon_ {1} + \epsilon_ {2} \sqrt {1 - \rho^ {2}}
$$

Then  $\operatorname{Corr}(Z, W) = \rho$ , and  $Z$  is distributed  $\mathcal{N}(0, 1)$ .

To see this, note first that  $Z$  and  $W$  both have zero mean. Compute the covariance between  $Z$  and  $W$  and the variance of  $Z$ :

$$
\mathrm {E} (W Z) = \mathrm {E} [ \epsilon_ {1} (\rho \epsilon_ {1} + \epsilon_ {2} \sqrt {1 - \rho^ {2}}) ] = \rho E (\epsilon_ {1} ^ {2}) = \rho
$$

$$
\operatorname {E} (Z ^ {2}) = \operatorname {E} [ (\rho \epsilon_ {1} + \epsilon_ {2} \sqrt {1 - \rho^ {2}}) ^ {2} ] = \rho^ {2} + 1 - \rho^ {2} = 1
$$

Thus,  $W$  and  $Z$  are both  $\mathcal{N}(0,1)$  and have a correlation coefficient of  $\rho$ .

Now we will check that the continuously compounded returns of  $S$  and  $Q$  have correlation  $\rho$ . The covariance between  $\ln(S_t)$  and  $\ln(Q_t)$  is

$$
\begin{array}{l} \operatorname {E} \left[ (\ln (S _ {t}) - \operatorname {E} [ \ln (S _ {t}) ]) (\ln (Q _ {t}) - \operatorname {E} [ \ln (Q _ {t}) ]) \right] = \operatorname {E} \left(\sigma_ {S} W \sqrt {t} \sigma_ {Q} Z \sqrt {t}\right) \\ = \sigma_ {S} \sigma_ {Q} \rho t \\ \end{array}
$$

The correlation coefficient is

$$
\mathrm {C o r r e l a t i o n} = \frac {\sigma_ {S} \sigma_ {Q} \rho t}{\sigma_ {S} \sqrt {t} \sigma_ {Q} \sqrt {t}} = \rho
$$

Thus, if  $W$  and  $Z$  have correlation  $\rho$ , so will the continuously compounded returns of  $S$  and  $Q$ .

# Generating  $n$  Correlated Lognormal Random Variables

Suppose we have  $n$  correlated lognormal variables. The question we address here is how to generalize the previous analysis. The first of the  $n$  random variables will have  $n - 1$  pairwise correlations with the others. The second will have  $n - 2$  (not counting its correlation with the first, which we have already counted). Continuing in this way, we will have

$$ n - 1 + n - 2 + \dots + 1 = \frac {1}{2} n (n - 1)
$$ pairwise correlations we have to take into account. We will denote the correlation between variables  $i$  and  $j$  as  $\rho_{i,j}$ .


We denote the original uncorrelated random  $\mathcal{N}(0,1)$  variables as  $\epsilon_1,\epsilon_2,\ldots ,\epsilon_n$ . The correlated random variables are  $Z(1),Z(2),\ldots ,Z(n)$ , with

$$

\operatorname {E} [ Z (i) Z (j) ] = \rho_ {i, j}

$$

We can generate the  $Z(i)$  as

$$

Z (i) = \sum_ {j = 1} ^ {i} a _ {i, j} \epsilon_ {j}

$$ where the  $a_{i,j}$  are coefficients selected to make sure the pairwise correlations are correct.

Creating the coefficients  $a_{i,j}$  has a recursive solution. That is, we construct  $Z(1)$ , then  $Z(2)$  using the solution to  $Z(1)$ , and so on. The formula for the  $a_{i,j}$  is

$$ a _ {i, j} = \frac {1}{a _ {j , j}} \left[ \rho_ {i, j} - \sum_ {k = 1} ^ {j - 1} a _ {j, k} a _ {i, k} \right] \quad i > j \tag {18}
$$

$$ a _ {i, i} = \sqrt {1 - \sum_ {k = 1} ^ {i - 1} a _ {i , k} ^ {2}}
$$

For the case of two random variables, this reduces to equation (17).

The matrix of  $a_{i,j}$ 's is called the Cholesky decomposition of the original correlation matrix. $^{15}$  In order for equation (18) to give correct coefficients, the set of correlations must be positive-definite, which means that the correlations must be such that there is no way to sum random variables and compute a negative variance. This is not an arbitrary condition: If this condition is not satisfied, the set of correlations is not valid. $^{16}$

The point—and the reason for mentioning this—is that correlations and covariances cannot be arbitrary. In practice, depending upon how a covariance matrix is estimated, this can be an important concern. The true covariances among hundreds of bonds, stocks, currencies, and commodities must create a positive-definite covariance matrix. However, estimated covariances might not be positive-definite. If there are  $m$  assets and  $n > m$  observations, the covariance matrix estimated from these data will be positive-definite. However, if different covariances are estimated from different data sets, positive-definiteness is not assured. The results of a simulation based on such covariances may produce nonsensical results.

# CHAPTER SUMMARY

Monte Carlo methods entail simulating asset returns in order to obtain a future distribution for prices. This distribution can then be used to price claims on the asset (for example, Asian options) or to assess the risk of the asset. Performing simulations requires that we draw random numbers from an appropriate distribution (for example, the normal) in order to generate future asset prices. There are adjustments, such as the control variate method, which can dramatically increase the speed with which Monte Carlo estimates converge to the correct price.

It is possible to incorporate jumps in the price by mixing Poisson and log-normal random variables. Simulated correlated random variables can be created using the Cholesky decomposition.

# FURTHER READING

The first use of Monte Carlo methods to price options was Boyle (1977), and the technique is now quite widespread. Two excellent discussions of the use of Monte Carlo to value derivatives are Boyle et al. (1997) and Glasserman (2004). Bodie and Crane (1999) use Monte Carlo to analyze retirement investment products. Schwartz and Moon (2000) use Monte Carlo to value a firm by simulating future cash flows.

The papers by Broadie and Glasserman (1997) and Longstaff and Schwartz (2001), which present techniques for using Monte Carlo to value American-style options, have clear discussions of their respective methodologies.

Merton (1976) derived an option pricing formula in the presence of idiosyncratic jumps. Naik and Lee (1990) illustrate option pricing in the presence of systematic jumps. Risk aversion affects the option price in such cases.

---
title: "The Binomial Model"
parent_directory: "Foundations of the Pricing of Financial Derivatives chapters"
formatted: 2025-12-21 02:25:00 AM
formatter_model: claude-sonnet-4-5-20251001
cli_tool: claude-code
primary_tags:
  - binomial model
  - option pricing
  - risk neutral valuation
  - hedge ratios
  - american options
secondary_tags:
  - arbitrage pricing
  - multiperiod models
  - early exercise
  - dividend adjustment
  - path dependence
cssclasses: academia
---

# The Binomial Model

To this point we have used a simple model in which the asset price can either move up to one level or down to another. We called this model the two-state or binomial model. In this chapter, we derive the model more formally. This work is attributed to Cox, Ross, and Rubinstein (1979) and Rendleman and Bartter (1979). An excellent book on binomial models in finance is by van der Hoek and Elliott (2006).

# 7.1 THE ONE-PERIOD BINOMIAL MODEL FOR CALLS

Recalling from the previous chapter, we specified an asset priced at  $S$  that can go up to  $Su$  or down to  $Sd$ . Given the historical decision to assume a lognormal distribution, early authors pursued a multiplicative binomial approach. We shall refer to these two states as the up state and the down state, respectively. The basic idea is communicated in Figure 7.1. At the initial point in time, there is only one node, whereas at the next point in time, there are only two nodes. Also, at the initial point in time, there are two arcs emanating from the initial node.

This type of figure is sometimes called a binomial tree, although it will look a little more like a tree when we expand it later.

```d2
direction: right

Binomial Tree Structure: One-Period Model {
  shape: rectangle
  style.fill: "#e3f2fd"
}

Time 0: Current State {
  shape: circle
  style.fill: "#4caf50"
}

Time 1: Expiration States {
  shape: rectangle
  style.fill: "#fff3e0"
}

Up State: S × u {
  shape: oval
  style.fill: "#81c784"
}

Down State: S × d {
  shape: oval
  style.fill: "#e57373"
}

Time 0 -> Time 1

Time 1 -> Up State: Up move (probability p)
Time 1 -> Down State: Down move (probability 1-p)

Hedging Portfolio: Δ shares + short option {
  shape: rectangle
  style.fill: "#fce4ec"
  style.border-dash: 5
}
```

The risk-free rate is  $r$ . Consider a call option with exercise price  $X$  that expires in one period. The two possible values of the option at expiration are

$$
c _ {u} = \max (0, S u - X)
$$

$$
c _ {d} = \max  (0, S d - X). \tag {7.1}
$$

Of course, our objective is to determine the value of the option today,  $c$ . The basic layout with the corresponding option prices inserted at each node is in Figure 7.2.

Appealing to the arbitrage principle, we shall create a portfolio consisting of the option and the underlying asset. We shall set this portfolio up so that it is hedged, meaning that its future value is known for certain. A hedged portfolio must, therefore, earn the risk-free rate. We can then solve for the price of the option that is consistent with a risk-free return on this portfolio.

Let us buy  $h_c$  units of the asset and sell one call. The value of this portfolio today is

$$
V = h _ {c} S - c. \tag {7.2}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/6ca71a1f02d0621513fb123d7dad46db1cc477954e1e9f05b8b1e4b4b9efb510.jpg)  
FIGURE 7.1 Binomial Process for Underlying Asset

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/91c445a1cfe581fefe84f41c40edf963d48807c6428976a3718e49c66013ef07.jpg)  
FIGURE 7.2 Binomial Process for Underlying Asset and Call Option

The payoffs of this portfolio in the two future states will be

$$
V _ {u} = h _ {c} S u - \max (0, S u - X) = h _ {c} S u - c _ {u}
$$

$$
V _ {d} = h _ {c} S d - \max (0, S d - X) = h _ {c} S d - c _ {d}. \tag {7.3}
$$

Figure 7.3 illustrates the setup. The goal is to understand the linkages between the underlying asset, the call option, and this unique hedge portfolio.

If this portfolio replicates a risk-free bond, it must produce a risk-free return, meaning that these two outcomes are the same, as specified by the condition,

$$
V _ {u} = V _ {d}. \tag {7.4}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/ead2db3deeea6295b222332f73fbaa256b2cb1798d5e15dc3edbb0b0c96035f6.jpg)  
FIGURE 7.3 Binomial Process for Underlying Asset, Call Option, and Hedge Portfolio

If we set these two values equal to each other, we have one simple equation with one unknown,  $h_c Su - c_u = h_c Sd - c_d$ . The solution is known as the hedge ratio and is expressed as follows:

$$
h _ {c} = \frac {c _ {u} - c _ {d}}{S u - S d}. \tag {7.5}
$$

Note that the sign of  $h_c$  will be positive as  $c_u > c_d$  and  $Su > Sd$ . The logic of a positive sign for  $h_c$  is based on the fact that we prespecified that we are short one call option, as indicated by the minus sign in front of  $c$  in Equation (7.2). In effect, the call position is -1 unit. The asset position is  $h_c > 0$  units. We are long the asset and short the call option. Because call values are positively related to the values of their underlying assets, it is intuitive that a short call would be offset by long units of the asset.

Thus, if the number of units of the asset that we hold is set to  $h_c$ , the two future values of the portfolio will be identical. Hence, the portfolio is risk free. To avoid arbitrage, the portfolio must be priced to earn the risk-free rate. Thus, the following condition must hold:

$$
V = \frac {V _ {u}}{1 + r}
$$

or

$$
V = \frac {V _ {d}}{1 + r}. \tag {7.6}
$$

Consequently, we can apply the following condition, using either  $V_{u}$  or  $V_{d}$ . We will choose  $V_{u}$ .

$$
\frac {V _ {u}}{1 + r} = V
$$

$$
\frac {h _ {c} S u - c _ {u}}{1 + r} = b _ {c} S - c. \tag {7.7}
$$

Therefore, the call price can be represented based on the no-arbitrage model as

$$
c = h _ {c} S - B _ {c}
$$

$$
B _ {c} = \frac {b _ {c} S u - c _ {u}}{1 + r}. \tag {7.8}
$$

Thus, a call option can be replicated by purchasing  $h$  units of stock partially financed through borrowing of  $B_{c}$ . A call is simply a leveraged position in a stock, that is, a call is equivalent to buying stock with borrowed money. As we will see later, the degree of leverage is dynamic.

The next step is to insert the solution for  $h$ , Equation (7.8), and solve for  $c$ :

$$
c = P V \big [ E (c _ {T}) \big ] = \frac {\phi c _ {u} + (1 - \phi) c _ {d}}{1 + r}
$$

$$
\phi = \frac {1 + r - d}{u - d}. \tag {7.9}
$$

There are quite a few steps and algebraic substitutions that lead from Equation (7.8) to Equation (7.9). Details are provided in Appendix 7A of this chapter. Thus, a call price is simply the present value of the expected future call payoffs discounted at the risk-free rate. The probabilities used in forming the expectations, however, are not the real probabilities. They are the risk-neutral probabilities and this model is known as the risk-neutral model. The risk-neutral model is based on the expectation taken using risk-neutral probabilities and discounting at the risk-free interest rate.

For example, suppose the underlying is a stock and its current price is 99, the exercise price is 100, the annual, discretely compounded, risk-free rate is  $2\%$ , the time to expiration is one year,  $u = 1.25$ , and  $d = 0.8$ . We can compute the call price in two ways. First, note that  $c_{u} = \max(0, 123.75 - 100) = 23.75$  and  $c_{u} = \max(0, 79.2 - 100) = 0$ . For the no-arbitrage model, we first find the hedge ratio  $h_{c} = (c_{u} - c_{d}) / (Su - Sd) = (23.75 - 0) / (123.75 - 79.2) = 0.5331$ . Therefore, based on Equation (7.8), we have

$$
\begin{array}{l} c = h _ {c} S - \frac {h _ {c} S u - c _ {u}}{1 + r} = 0. 5 3 3 1 (9 9) - \frac {0 . 5 3 3 1 (9 9) 1 . 2 5 - 2 3 . 7 5}{1 + 0 . 0 2} \\ = 5 2. 7 7 6 9 - 4 1. 3 9 3 3 = 1 1. 3 8. \\ \end{array}
$$

Alternatively, we can apply the risk-neutral model. The binomial probability of an up move is  $\phi = (1 + 0.02 - 0.8) / (1.25 - 0.8) = 48.8889\%$ . Therefore, based on Equation (7.9), we find the same results, or

$$
c = \frac {0 . 4 8 8 9 (2 3 . 7 5) + (1 - 0 . 4 8 8 9) 0}{1 + 0 . 0 2} = 1 1. 3 8.
$$

# 7.2 THE ONE-PERIOD BINOMIAL MODEL FOR PUTS

Here we follow a similar pattern with puts as we did with calls in the last section. We specified an asset priced at  $S$  that can go up to  $Su$  or down to  $Sd$  (the up state and down state, respectively). This basic idea was communicated in Figure 7.1. Now consider a put

option with exercise price  $X$  that expires in one period. The two possible values of the option at expiration are

$$
p _ {u} = \max  (0, X - S u)
$$

$$
p _ {d} = \max  (0, X - S d). \tag {7.10}
$$

Recall our objective is to determine the value of the put option today. As with the call, the basic layout with the corresponding option prices inserted at each node is in Figure 7.4.

Again, appealing to the arbitrage principle, we shall create a portfolio consisting of the put option and the underlying asset. We shall set this portfolio up so that it is hedged, meaning that its future value is known for certain. In the put case, put prices move in the opposite direction to the underlying asset. Thus, if we buy a put, to hedge we will need to buy the underlying asset. A hedged portfolio must, therefore, earn the risk-free rate  $(r)$ . We can then solve for the price of the option that is consistent with a risk-free return on this portfolio.

Let us buy  $h_p$  units of the asset and buy one put. The value of this portfolio today is

$$
V = h _ {p} S + p. \tag {7.11}
$$

The payoffs of this portfolio in the two future states will be

$$
V _ {u} = b _ {p} S u + \max (0, X - S u) = b _ {p} S u + p _ {u}
$$

$$
V _ {d} = b _ {p} S d + \max  (0, X - S d) = b _ {p} S d + p _ {d}. \tag {7.12}
$$

Figure 7.5 illustrates the setup for puts. Again, the goal is to establish the linkages between the underlying asset, the put option, and this unique hedge portfolio.

Again, to form a hedge portfolio, we need the number of underlying assets to have the same sign as the number of puts. That is, we need to either buy the underlying and buy the put or short the underlying and sell the put.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/4d34bc02cf71964ac27ded5c8108f825dd580ee25a802d6da1f42e7f3cde1c1b.jpg)  
FIGURE 7.4 Binomial Process for Underlying Asset and Put Option

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/9cf7d88c74e0691bf13b83a385d1fbc7a0d36623ddbf2b6cff4824117f2caa5a.jpg)  
FIGURE 7.5 Binomial Process for Underlying Asset, Put Option, and Hedge Portfolio

Recall this portfolio replicates a risk-free bond and thus the two portfolio values at the next time step have to be equal or

$$
V _ {u} = V _ {d}. \tag {7.13}
$$

If we set these two values equal to each other, we have one simple equation with one unknown,  $h_p Su + p_u = h_p Sd + p_d$ . Thus,

$$
b _ {p} = \frac {p _ {d} - p _ {u}}{S u - S d}. \tag {7.14}
$$

Because the option is a put,  $p_d > p_u$ , and Equation (7.14) will be positive. This result should make sense. You are long the put and puts move opposite to the underlying, so you should be long the underlying. To avoid arbitrage, the portfolio must be priced to earn the risk-free rate. Again, the following condition must hold:

$$
V = \frac {V _ {u}}{1 + r}
$$

or

$$
V = \frac {V _ {d}}{1 + r}. \tag {7.15}
$$

We again choose  $V_{u}$

$$
\frac {V _ {u}}{1 + r} = V
$$

$$
\frac {b _ {p} S u + p _ {u}}{1 + r} = b _ {p} S + p. \tag {7.16}
$$

Therefore, the put price can be represented based on the no-arbitrage model as

$$
p = B _ {p} - b _ {p} S
$$

$$
B _ {p} = \frac {b _ {p} S u + p _ {u}}{1 + r}. \tag {7.17}
$$

The remainder of the derivation proceeds exactly as with the derivation of the call. The end result or the risk-neutral model is functionally identical:

$$
p = P V \left[ E \left(p _ {T}\right) \right] = \frac {\phi p _ {u} + (1 - \phi) p _ {d}}{1 + r}
$$

$$
\phi = \frac {1 + r - d}{u - d}. \tag {7.18}
$$

Again, suppose the current stock price is 99, the exercise price is 100, the annual, discretely compounded, risk-free rate is  $2\%$ , the time to expiration is one year,  $u = 1.25$  and  $d = 0.8$ . Similar to the call, we can compute the put price in two ways. First, note that  $p_u = \max(0, 100 - 123.75) = 0$  and  $p_d = \max(0, 100 - 79.2) = 20.8$ . For the no-arbitrage model, we find the hedge ratio  $h_p = (p_d - p_u) / (uS - dS) = (20.8 - 0) / (123.75 - 79.2) = 0.4669$ . Therefore, based on Equation (7.16), we have

$$
p = \frac {b _ {p} S u + p _ {u}}{1 + r} - b _ {p} S = \frac {0 . 4 6 6 9 (9 9) 1 . 2 5 + 0}{1 + 0 . 0 2} - 0. 4 6 6 9 (9 9) = 5 6. 6 4 6 0 - 4 6. 2 2 3 1 = 1 0. 4 2.
$$

Alternatively, we can use the risk-neutral model. Again, we have  $\phi = (1 + 0.02 - 0.8) / (1.25 - 0.8) = 48.8889\%$ . Therefore, based on Equation (7.18), we find the same results or

$$
p = \frac {0 . 4 8 8 9 (0) + (1 - 0 . 4 8 8 9) 2 0 . 8}{1 + 0 . 0 2} = 1 0. 4 2.
$$

# 7.3 ARBITRAGING PRICE DISCREPANCIES

If the actual market price of the option differs from the model price, an arbitrage is possible. Consider the call option case. If the call can be sold for more than the formula value, Equation (7.9), the call is overpriced. Overpriced instruments should be sold. Simply selling the call, however, hardly qualifies as an arbitrage. If the call expires in-the-money, one could incur a significant loss, even though the call was underpriced. Instead, the arbitrage should be completed, and the risk eliminated by holding an offsetting number of units of the asset.

The arbitrageur would, thus, buy  $h_c$  units of the asset for each call sold. It should be easy to see that the investment required would be less than what is given in Equation (7.2). Equation (7.2) is based on the market price equaling the model price, Equation (7.9). Hence, the amount invested is reduced by the overpricing. Convergence of the option value to its exercise value is ensured one period later because the option is expiring and can clearly be worth only its exercise value. With less money invested and the same payoff as before, the rate of return clearly exceeds the risk-free rate. If the option trades at below the formula price, it would be purchased and  $h_c$  units of the asset would be sold, creating

TABLE 7.1 Arbitrage Cash Flows Within One-Period Binomial Model for Calls  

<table><tr><td>Strategy</td><td>Today</td><td>Down Event at Expiration</td><td>Up Event at Expiration</td></tr><tr><td>Sell call</td><td>+cQ=+11.43</td><td>-max(0,dS-X)=0</td><td>-max(0,uS-X)=-23.75</td></tr><tr><td>Buy bc shares</td><td>-hcS=-52.78</td><td>+hcSd=+42.22</td><td>+hcSu=+65.97</td></tr><tr><td>Borrow</td><td>+BC=+41.39</td><td>-Bc(1+r)=-42.22</td><td>-Bc(1+r)=-42.22</td></tr><tr><td>Net Cash flow</td><td>+0.04*</td><td>0</td><td>0</td></tr></table>

*Note the quoted price is 11.43 and the model price is 11.38, a difference of 0.05. The table reports an arbitrage profit of 0.04. The 0.01 discrepancy is simply a rounding error.

TABLE 7.2 Arbitrage Cash Flows Within One-Period Binomial Model for Puts  

<table><tr><td>Strategy</td><td>Today</td><td>Down Event at Expiration</td><td>Up Event at Expiration</td></tr><tr><td>Buy put</td><td>- pQ = -10.37</td><td>+max(0, X - dS) = +20.80</td><td>+max(0, X - uS) = 0</td></tr><tr><td>Buy bp shares</td><td>- bpS = -46.22</td><td>+bpSd = +36.98</td><td>+bpSu = +57.78</td></tr><tr><td>Borrow</td><td>+BP = +56.65</td><td>- BP(1 + r) = -57.78</td><td>- BP(1 + r) = -57.78</td></tr><tr><td>Net cash flow</td><td>+0.06*</td><td>0</td><td>0</td></tr></table>

*Note the quoted price is 10.37 and the model price is 10.42, a difference of 0.05. The table reports an arbitrage profit of 0.06 The 0.01 discrepancy is simply a rounding error.

a net short position. The proceeds would be invested in risk-free bonds to earn the rate  $r$ . With the option purchased at a lower than fair price, the asset and option would finance the purchase of the risk-free asset at a lower cost than it should if correctly priced, so the investor would earn an arbitrage profit.

Based on the information given in the past two examples, suppose we have the following market quotes,  $c_{Q} = 11.43$  and  $p_{Q} = 10.37$ . Recall  $S = 99$ ,  $X = 100$ ,  $r = 0.02$ ,  $\tau = 1$ ,  $u = 1.25$ , and  $d = 0.8$ . In equilibrium, we found  $c = 11.38$  and  $p = 10.42$ , thus, the call price is too high and the put price is too low. Arbitrageurs typically prefer to receive positive cash flow today with no chance of any future liability. Alternative arbitrage transactions result in no cash flow today, but some chance of positive cash flow in the future.

Because the quoted call price is too high, the arbitrageur would sell it and buy the synthetic call option. Buying the synthetic call entails buying the stock with borrowed money. Table 7.1 illustrates cash flows capturing the arbitrage profit available with the call option.

Thus, the arbitrageur receives 0.04 today with no chance of a future liability. Within this simple one-period binomial world, trading pressure will drive down the quoted call price and drive up the quoted stock price until the net cash flow is zero.

Turning to puts, if the quoted put price is too low, the arbitrageur would buy it and sell the synthetic put. We previously formed a hedge portfolio by buying the stock and the put. Hence, we can turn that around and see that a synthetic put would involve selling the stock and lending at the risk-free rate. Selling the synthetic put would, therefore, entail buying the stock and borrowing. Table 7.2 illustrates the cash flows that capture the arbitrage profit available with the underpriced put option.

Thus, the arbitrageur receives 0.06 today with no chance of a future liability. Within this simple one-period binomial world, trading pressure could simply drive up the quoted put price. Alternatively, buying shares can drive up the quoted stock price with some influence on the put price. Ultimately, the initial net cash flow must be zero. $^2$

Regardless of the direction of the mispricing, the ability to earn an arbitrage profit would force a price alignment until the option price conforms to the model price.

# 7.4 THE MULTIPERIOD MODEL

The case we have covered until now spans only one period. We can easily extend the model to multiple periods and thereby accommodate options with longer lives. $^3$  The layout is illustrated in Figure 7.6. We let the asset move from  $Su$  to  $Su^2$  or  $Sud$ , and from  $Sd$  to  $Sdu$  or  $Sd^2$ . Note that  $Sud = Sdu$ , so over two periods, there are three possible outcomes. The asset can go up twice to  $Su^2$ , up and then down or down and then up to  $Sud$ , or down twice to  $Sd^2$ . The call and put option payoffs in those states are $^4$

$$
c _ {u ^ {2}} = \max  (0, S u ^ {2} - X) \quad p _ {u ^ {2}} = \max  (0, X - S u ^ {2})
$$

$$
c _ {u d} = \max (0, S u d - X) \mathrm{and} p _ {u d} = \max (0, X - S u d).
$$

$$
c _ {d ^ {2}} = \max  (0, S d ^ {2} - X) \quad p _ {d ^ {2}} = \max  (0, X - S d ^ {2}) \tag {7.19}
$$

The illustration is looking more like a branching tree or lattice. Two key features of the binomial model are the recombining nature of the tree and that the growth of the stock price is multiplicative. The tree is recombining because the stock price is assumed to grow multiplicatively such that  $\text{Sud} = \text{Sdu}$ . Clearly, the order of multiplication does not matter. The multiplicative approach presented here facilitates the convergence of the stock price to the lognormal distribution—a point we will explore in Chapter 9.5

Let us position ourselves in the time 1 up state, where the asset price is  $Su$ . At this point, we are now back in a one-period world. There are two possible outcomes in the

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/d8bfa8fddba1d0d1dd9b69c07794d289efe5f6ba936f9d1384958006b6fa3bec.jpg)  
FIGURE 7.6 Two-Period Binomial Model

next period, which is the expiration. It should be easy to see that the value of the call and put at this point would be

$$
c _ {u} = \frac {\phi c _ {u ^ {2}} + (1 - \phi) c _ {u d}}{1 + r} \text{and} p _ {u} = \frac {\phi p _ {u ^ {2}} + (1 - \phi) p _ {u d}}{1 + r}. \tag {7.20}
$$

Likewise, in the time 1 down state, the option value would be

$$
c _ {d} = \frac {\phi c _ {u d} + (1 - \phi) c _ {d ^ {2}}}{1 + r} \text {a n d} p _ {d} = \frac {\phi p _ {u d} + (1 - \phi) p _ {d ^ {2}}}{1 + r}. \tag {7.21}
$$

Stepping back to time 0, the values of the call and put options are again found with Equation (7.9), where the values of  $c_{u}$  and  $p_{u}$  are given in Equation (7.20) and  $c_{d}$  and  $p_{d}$  are given in Equation (7.21). Thus, to price options in the binomial framework in a multiperiod model, we start at the end—the exercise date—and work backwards to the present.

The special case for two-period options does lend itself to a simple formula that relates the initial option value to the value two periods later, essentially skipping over the first period:

$$
c = \frac {\phi^ {2} c _ {u ^ {2}} + 2 \phi (1 - \phi) c _ {u d} + (1 - \phi) ^ {2} c _ {d ^ {2}}}{(1 + r) ^ {2}} \text {a n d} p = \frac {\phi^ {2} p _ {u ^ {2}} + 2 \phi (1 - \phi) p _ {u d} + (1 - \phi) ^ {2} p _ {d ^ {2}}}{(1 + r) ^ {2}}. \tag {7.22}
$$

Note that the three option payoffs two periods later are each weighted by the risk-neutral probabilities,  $\phi^2$ ,  $2\phi(1 - \phi)$ , and  $(1 - \phi)^2$ . These are the binomial probabilities for two trials, and they add up to 1. The coefficients on the probabilities are 1, 2, and 1. These numbers are the coefficients of the two-period binomial expansion commonly expressed as  $(a + b)^2$ , which equals  $a^2 + 2ab + b^2$ . Note the binomial coefficients 1, 2, 1. This pattern would continue through additional periods, a result that will help us when we use the binomial model with a very large number of periods to approximate a continuous time world. $^6$

The seemingly simplifying assumptions of a binomial world, whereby an asset can go to only one of two values, can send a false signal that the model is unrealistic. We shall see in Chapter 9 that the model can be made highly realistic. We will divide the finite life of an option into a very large number of periods, ultimately leading to an extremely large number of possible outcomes.

Now we provide an example of how the binomial model works when extending to two periods. Suppose the current stock price is 40, the exercise price is 40, the annual, discretely compounded, risk-free rate is  $2\%$ , the time to expiration is two years,  $u = 1.25$  and  $d = 0.8$ . Now assume a two-period binomial model. Based on Equation (7.22), we can compute the call and put prices. First, we compute the terminal payoffs for both calls and puts as

$$
c _ {u ^ {2}} = \max \left(0, S u ^ {2} - X\right) = \max \left[ 0, 4 0 (1. 2 5) ^ {2} - 4 0 \right] = 2 2. 5
$$

$$
c _ {u d} = \max  (0, S u d - X) = \max  [ 0, 4 0 (1. 2 5) 0. 8 - 4 0 ] = 0 \text {a n d}
$$

$$
c _ {d ^ {2}} = \max \left(0, S d ^ {2} - X\right) = \max \left[ 0, 4 0 (0. 8) ^ {2} - 4 0 \right] = 0
$$

$$
p _ {u ^ {2}} = \max \left(0, X - S u ^ {2}\right) = \max \left[ 0, 4 0 - 4 0 (1. 2 5) ^ {2} \right] = 0
$$

$$
p _ {u d} = \max  (0, X - S u d) = \max  [ 0, 4 0 - 4 0 (1. 2 5) 0. 8 ] = 0
$$

$$
p _ {d ^ {2}} = \max \left(0, X - S d ^ {2}\right) = \max \left[ 0, 4 0 - 4 0 (0. 8) ^ {2} \right] = 1 4. 4.
$$

The binomial probability of an up move over a single period is  $\phi = (1 + 0.02 - 0.8) / (1.25 - 0.8) = 48.8889\%$ . Therefore, based on Equation (7.22), we find

$$
\begin{array}{l} c = \frac {\phi^ {2} c _ {u ^ {2}} + 2 \phi (1 - \phi) c _ {u d} + (1 - \phi) ^ {2} c _ {d ^ {2}}}{(1 + r) ^ {2}} \\ = \frac {(0 . 4 8 8 9) ^ {2} 2 2 . 5 + 2 (0 . 4 8 8 9) (1 - 0 . 4 8 8 9) 0 + (1 - 0 . 4 8 8 9) ^ {2} 0}{(1 + 0 . 0 2) ^ {2}} = 5. 1 7 \\ \end{array}
$$

and

$$
\begin{array}{l} p = \frac {\phi^ {2} p _ {u ^ {2}} + 2 \phi (1 - \phi) p _ {u d} + (1 - \phi) ^ {2} p _ {d ^ {2}}}{(1 + r) ^ {2}} \\ = \frac {(0 . 4 8 8 9) ^ {2} 0 + 2 (0 . 4 8 8 9) (1 - 0 . 4 8 8 9) 0 + (1 - 0 . 4 8 8 9) ^ {2} 1 4 . 4}{(1 + 0 . 0 2) ^ {2}} = 3. 6 2. \\ \end{array}
$$

Alternatively, the two-period binomial model can be viewed as three one-period binomial models that apply the no-arbitrage condition. The call results are illustrated in Figure 7.7 and the put results are illustrated in Figure 7.8.

We turn now to address American options where early exercise can enhance the worth of an option.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/ca02a5790a0f361ad9d707b74b750f6073eb50b34ff2b651b3504a53a63fef19.jpg)  
FIGURE 7.7 Two-Period Binomial Model for Calls Illustrated

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/302db2d26a9933214504c3ceee29a0d71110f5f0298693e7a632f07b8e55869a.jpg)  
FIGURE 7.8 Two-Period Binomial Model for Puts Illustrated

# 7.5 AMERICAN OPTIONS AND EARLY EXERCISE IN THE BINOMIAL FRAMEWORK

If the options are American style, they can be exercised early. It is well known that American call options will not be exercised early unless there is a dividend or some other cash amount paid by the asset, in which case early exercise could be justified immediately before the cash is paid.<sup>7</sup> To accommodate the possibility of early exercise, there are a variety of methods that can be used in the binomial model. One extremely useful, but somewhat oversimplified method, is to assume the dividend is a constant rate of the value of the asset.<sup>8</sup> This approach, however, would imply a dividend at every time step. There are some limited situations in which that might be appropriate, such as for an option on a stock index where dividends are paid by the constituent stocks at different times. An alternative approach, however, is to subtract the present value of all dividends over the life of the option from the current value of the underlying—often called the escrow method. Then we let the net of the stock price minus the present value of dividends evolve through the binomial tree according to the factors  $u$  and  $d$ . At a given node at which the dividend is paid, we decide if the option is worth exercising just before the stock goes ex-dividend. If so, the exercise value replaces the value obtained using the formula. We explore the escrow method in detail in the next section.

To illustrate the early exercise decision for calls, suppose at a point in the tree, we have a value of the stock price minus the present value of all remaining dividends over the life of the option of 42. Suppose that using the binomial formula, we compute the value of the call at that point as 2.25. Assume there is a 3.0 dividend being paid at this time point; then, the stock price with the dividend is 45. With the exercise price at 42, we could exercise it and collect a value of 3.0, which is more than its unexercised value of 2.25. Thus, we would replace 2.25 with 3.0. This early exercise check would be done at all points in the tree in which the option is in-the-money.

If the option is a put, it is well known that early exercise could occur regardless of a dividend. In that case, at every in-the-money point in the binomial tree, we would need to check to see if the put is worth more exercised or not. If it is worth more exercised, we

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/80e843af5e84b36ede00662722d086da9b5b3ae86c56b31f9e3fb41640db4229.jpg)  
FIGURE 7.9 Two-Period Binomial Model for European Put Option Illustrated

insert the exercise value at that point into the tree as the option value. If not, we use the computed value obtained by the formula. If there is a dividend, it will reduce the frequency of early exercise because dividends drive the stock price down, which makes puts worth more. Exercising early throws away this benefit. If early exercise is justified when there are dividends, it would occur just after a dividend. That is, if we are going to exercise the put, we might as well wait until the stock falls.

Now to illustrate this early exercise feature, we consider a two-period binomial model when there are no dividends with the following parameters,  $S = 100$ ,  $X = 105$ ,  $r = 1.0\%$ ,  $u = 1.25$ ,  $d = 0.77$ , and two years to expiration. Figure 7.9 illustrates the underlying stock price, put price, and hedge ratio for a European put option.[11] Note that at time step 1, the hedge ratio is 1 because both subsequent up and down moves at time 2 are in-the-money.

If the put option is American, then we need to check at each time step whether it is more valuable to exercise the option early. At time 1, when a down move has occurred, the exercise value is 28  $[= \max(0, X - Sd) = \max(0, 105 - 77)]$ . Thus, the European put price of 26.96 is replaced with 28 as the put buyer would prefer to receive 28 from early exercise rather than 26.96 from just holding the put option. This 1.04 increase in value results in the initial put price rising 0.52 to 16.01 as well as the hedge ratio rising to 0.49. The early exercise feature is illustrated in Figure 7.10.

We now further explore the role of dividends on both European and American options.

# 7.6 DIVIDENDS AND RECOMBINATION

Dividends pose a significant problem with the multiplicative binomial model presented here. Figure 7.11 illustrates the loss of the recombining property in the presence of a cash dividend at time 1. Recall that the stock price falls by the dollar dividend amount on the ex-dividend date. As discussed in Chapter 2, optimal early exercise may occur either right before the ex-dividend date for calls or right after the ex-dividend date for puts.

Note that mathematically,

$$
\left(S u - D _ {1}\right) d = \left(S d - D _ {1}\right) u \text {o n l y i f} D _ {1} = 0.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/877eef5c0da8315c192111bdb59efd98baa47cdc3b26b315bd84f1cbf566200a.jpg)  
FIGURE 7.10 Two-Period Binomial Model for American Put Option Illustrated

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/d2429093f942dc09794f1971cd3e49081eef19344f3bfe106af4858f1bd623cb.jpg)  
FIGURE 7.11 Two-Period Binomial Model with Discrete Dividends

Thus, the presence of discrete dividends poses a significant computational problem. The binomial tree fails to recombine and is known as a bushy tree. When a binomial tree does recombine, the number of nodes after  $N$  time steps is  $N + 1$ . Unfortunately, when a binomial tree fails to recombine the node count explodes with more time steps.[12] That is, the number of nodes after  $N$  time steps is  $2^{N}$ . There are numerous potential ways to address this challenge.

One efficient method is what is known as the escrow method. Suppose the firm places in escrow the present value of the dividend payments over the life of the option. That is,

the present value of the dividends is set aside, and the remaining stock value is modeled within the binomial framework. We define a new variable commonly known as the stock price without dividends denoted  $S'$ . Therefore, the actual stock,  $S$ , can be decomposed into two components, the present value of the dividend payments,  $PV(D)$ , and the rest of the stock price, which excludes the dividends over the life of the option,  $S'$ .<sup>13</sup> Figure 7.12 illustrates the escrow method.

We illustrate the incorporation of dividends with the escrow method in a two-period binomial example. Suppose the current stock price is 105, the exercise price is 100, the annual, discretely compounded, risk-free rate is  $1\%$ , the time to expiration is two years,  $u = 1.25$ , and  $d = 0.77$ . Assume a dividend after one year of 2.0. Thus, the present value of the dividend is

$$
P V (D) = \frac {D _ {1}}{(1 + r) ^ {\Delta t}} = \frac {2}{(1 + 0 . 0 1) ^ {1}} = 1. 9 8.
$$

Therefore, the stock price without dividends is

$$
S ^ {\prime} = S - P V (D) = 1 0 5 - 1. 9 8 = 1 0 3. 0 2.
$$

Based on the escrow method and corresponding single-period binomial model, we produce the results for European options provided in Figure 7.13.

The values for American options are different. At each node, we appraise whether the exercise value exceeds the binomial model value. At time 1, we have value adjustments as the call should be exercised right before going ex-dividend and the put should be exercised right after going ex-dividend. Based on this approach, Figure 7.14 illustrates the American option prices.

Thus, at time 1 after an up move has occurred, the call buyer will exercise the option right before the ex-dividend event, buy the stock at 100, and sell the stock at 130.77,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/57b84ae0903e9872968249025443aa3fec75aa68b00747d0349a29533ce35ae3.jpg)  
FIGURE 7.12 Two-Period Binomial Model with Dividends Based on Escrow Method

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/3107f23db4e6d493b0a9ca52c0787ad2b9bfa1f17c8f2ff51b86c255ea9a9621.jpg)  
FIGURE 7.13 Numerical Example of Two-Period Binomial Model with Dividends for European Options

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/a5e3edbdb648a6831fcda29deadf31417c838c56207b1ddd140851b5ed7c6cd9.jpg)  
FIGURE 7.14 Numerical Example of Two-Period Binomial Model with Dividends for American Options

netting 30.77. At time 1, when a down move has occurred, the put buyer will exercise the option right after the ex-dividend event, buy the stock at  $77.33 (= 79.33 - 2)$ , and sell the stock via the put at 100, netting 22.67. Therefore, both the call and put prices are higher for the American options when compared to the European options.

We now examine cases where the binomial framework is difficult at best to apply.

# 7.7 PATH INDEPENDENCE AND PATH DEPENDENCE

European options are one family of a class of options that are described by a characteristic we call path independence. Path independence is when it does not matter which path was taken to get to a point. For example, in a two-period model, one could end up in the middle point by going up and then down or down and then up. For a European option and indeed all path-independent options, it does not matter which path was taken. You arrive at the same final asset price, the option payoff is determined by that asset price, and the path the asset took to get there is irrelevant. Hence, we can ignore the intermediate steps and, as such, use formulas such as Equation (7.22).

Path-dependent options are an entirely different story. American options are path-dependent, provided there is a nonzero probability of early exercise. For example, if we had an American put, it might be exercised when the asset goes down as previously illustrated. Hence, for the asset to go down and then up does not produce the same result as when it goes up and then down. As noted, there are a number of other types of path-dependent options that are the subjects of advanced topics in options.

For example, with a typical home mortgage, homeowners have the option to refinance whenever they wish. They are often motivated to do so when interest rates decline. Thus, the home mortgage value is based, in part, on this early exercise option. When interest rates fall, the homeowner may choose to refinance, whereas if interest rates rise, the homeowner is likely not to refinance.

# 7.8 RECAP AND PREVIEW

In this chapter, we covered one of the simplest but most important methods of valuing options: the binomial model. We showed how the model clearly illustrates the process by which a dynamically adjusted portfolio enables one to assign a value to an option that must hold to prevent arbitrage. We showed how this process works in oneand two-period models. We illustrated how the early exercise of American options is accommodated within the binomial model.

In Chapter 8, we continue our coverage of the binomial model by looking at the Greeks, which are the sensitivities of the options to the various factors that affect the value of an option.

# APPENDIX 7A

# Derivation of Equation (7.9)

We start with Equation (7.7), restated here as

$$
\frac {h _ {c} S u - c _ {u}}{1 + r} = h _ {c} S - c.
$$

Now substitute for  $h$ , using Equation (7.5),

$$
\frac {\left(\frac {c _ {u} - c _ {d}}{S u - S d}\right) S u - c _ {u}}{1 + r} = \left(\frac {c _ {u} - c _ {d}}{S u - S d}\right) S - c.
$$

Rearranging, we have

$$
\left(\frac {c _ {u} - c _ {d}}{S u - S d}\right) S - \frac {\left(\frac {c _ {u} - c _ {d}}{S u - S d}\right) S u - c _ {u}}{1 + r} = c.
$$

Then we multiply through by  $1 + r$ ,

$$
\left(\frac {c _ {u} - c _ {d}}{S u - S d}\right) S (1 + r) - \left(\frac {c _ {u} - c _ {d}}{S u - S d}\right) S u + c _ {u} = c (1 + r).
$$

Then we cancel  $S$

$$
\left(\frac {c _ {u} - c _ {d}}{u - d}\right) (1 + r) - \left(\frac {c _ {u} - c _ {d}}{u - d}\right) u + c _ {u} = c (1 + r).
$$

Using the common denominator  $u - d$ , we obtain

$$
\begin{array}{l} \frac {c _ {u} (1 + r) - c _ {d} (1 + r) - c _ {u} u - c _ {d} u + c _ {u} u - c _ {u} d}{u - d} = c (1 + r) \\ \frac {c _ {u} (1 + r - d) + c _ {d} [ u - (1 + r) ]}{u - d} = c (1 + r). \\ \end{array}
$$

Now, let us define  $\phi$  as in Equation (7.9),

$$
\phi = \frac {1 + r - d}{u - d}.
$$

Then  $1 - \phi$  is

$$
1 - \phi = \frac {u - (1 + r)}{u - d}.
$$

So the solution is

$$
c = \frac {\phi c _ {u} + (1 - \phi) c _ {c}}{1 + r}.
$$

which is Equation (7.9).

# APPENDIX 7B

# Pascal's Triangle and the Binomial Model

Pascal's triangle has an infinite number of rows. An illustration of Pascal's triangle for the first five rows is provided in Figure 7B.1.

The elements of each row can be obtained from the row above it. For example, look at the 2 in the middle of the third row. It is obtained by summing the 1 above it to the left and the 1 above it to the right. Notice either 4 in the fifth row; each is obtained by summing the 1 above it to the left (or right) and the 3 above it to the right (or left). With the exception of the 1 in the first row, every number in the table is the sum of whatever appears above it to the left and above it to the right.[14]

Pascal's triangle contains the coefficients of the binomial expansion of  $(a + b)^n$ . Here we illustrate the expansion for  $n = 0, \ldots, 4$  below, which encompasses the portion of the triangle illustrated above. To link Pascal's triangle to option pricing, let us change the variables  $a$  and  $b$  to the up and down factors,  $u$  and  $d$  as illustrated in Table 7B.1.

So how does Pascal's triangle come into play in option pricing? It tells us how many ways there are to reach a point after  $n$  periods. For example, in a one-period binomial model, there is only one way to go up and one way to go down. Note the coefficients 1 and 1 for the  $n = 1$  case. In the two-period model, the outcomes are up up, up down, down up, and down down. There is only one way to go up twice and one way to go down twice. But if you go up and down, you end up the same place as if you had gone down and then up. That is,  $\text{Sud} = \text{Sdu}$ . This would put you at the middle point of the binomial tree, as in Figure 7.4. There are two ways to get to that middle point. Thus, we get a coefficient of 2 on the ud term in row 2.

For a three-period binomial tree, you can go up three times, up twice and down once, down twice and up once, and down three times. There is only one way to go up three times:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/7104170db94eff13150c84a581f72a76d072f882ddba42d236694bd4960ddb41.jpg)  
FIGURE 7B.1 Pascal's Triangle (First Five Rows)

TABLE 7B.1 Coefficients of the Binomial Expansion  

<table><tr><td>n</td><td>(u+d)n</td><td>Coefficients</td></tr><tr><td>0</td><td>1</td><td>1</td></tr><tr><td>1</td><td>u+d</td><td>1,1</td></tr><tr><td>2</td><td>u2+2ud+d2</td><td>1,2,1</td></tr><tr><td>3</td><td>u3+3u2d+3ud2+d3</td><td>1,3,3,1</td></tr><tr><td>4</td><td>u4+4u3d+6u2d2+4ud3+d4</td><td>1,4,6,4,1</td></tr></table>

up up up. There are three ways to go up twice and down once: up up down or up down up or down up up. Thus, we get a coefficient of 3 on the  $u^2 d$  term in the table for  $n = 3$ . There are three ways to go down twice and then up: down down up, down up down, and up down down. Hence, we get a coefficient of 3 applied to  $ud^2$ . Finally, there is only one way to go down three times, down down down; hence, the coefficient is 1 on  $d^3$ .

These coefficients enable us to fill out the details of the binomial model. We could even use them to skip some computational steps. For example, we previously explained how to derive the binomial value by starting at the expiration and working backward to the present. We showed the special case of a two-period model in which we skip the intermediate steps between the expiration and the present, Equation (7.22). Now, consider the four-period case. Using the  $n = 4$  row in the binomial expansion, we can derive the time 0 value from the possible time 4 values as follows:

$$
c = \frac {\phi^ {4} c _ {u ^ {4}} + 4 \phi^ {3} (1 - \phi) c _ {u ^ {3} d} + 6 \phi^ {2} (1 - \phi) ^ {2} c _ {u ^ {2} d ^ {2}} + 4 \phi (1 - \phi) ^ {3} c _ {u d ^ {3}} + (1 - \phi) ^ {4} c _ {d ^ {4}}}{(1 + r) ^ {4}}. \quad (7. 2 3)
$$

This calculation works for the path-independence case, such as for European options. For path-dependent cases, such as for American options and some complex options, one would have to start at the expiration and roll backwards to the present. We cannot skip or consolidate any paths.

For example, suppose you have the following parameters for a four-period binomial model for European options,  $S = 40$ ,  $X = 40$ ,  $r = 2.0\%$  per annum,  $u = 1.25$ ,  $d = 0.8$  and  $\tau = 4$  years. Thus, we once again have  $\phi = (1 + r - d) / (u - d) = (1 + 0.02 - 0.8) / (1.25 - 0.8) = 0.4889$ . The terminal payoffs for a call option are given as follows:

$$
c _ {u ^ {4}} = \max \left(0, S u ^ {4} - X\right) = \max \left[ 0, 4 0 \left(1. 2 5 ^ {4}\right) - 4 0 \right] = 2 3. 6 1 6
$$

$$
c _ {u ^ {3} d} = \max \left(0, S u ^ {3} d - X\right) = \max \left[ 0, 4 0 \left(1. 2 5 ^ {3} 0. 8\right) - 4 0 \right] = 1 4. 4
$$

$$
c _ {u ^ {2} d ^ {2}} = \max \left(0, S u ^ {2} d ^ {2} - X\right) = \max \left[ 0, 4 0 \left(1. 2 5 ^ {2} 0. 8 ^ {2}\right) - 4 0 \right] = 0
$$

$$
c _ {u d ^ {3}} = \max \left(0, S u d ^ {3} - X\right) = \max \left\{0, 4 0 \left[ (1. 2 5) 0. 8 ^ {3} \right] - 4 0 \right\} = 0
$$

$$
c _ {d ^ {4}} = \max \left(0, S d ^ {4} - X\right) = \max \left[ 0, 4 0 \left(0. 8 ^ {4}\right) - 4 0 \right] = 0.
$$

The call value is

$$
\begin{array}{l} c = \frac {\phi^ {4} c _ {u ^ {4}} + 4 \phi^ {3} (1 - \phi) c _ {u ^ {3} d} + 6 \phi^ {2} (1 - \phi) ^ {2} c _ {u ^ {2} d ^ {2}} + 4 \phi (1 - \phi) ^ {3} c _ {u d ^ {3}} + (1 - \phi) ^ {4} c _ {d ^ {4}}}{(1 + r) ^ {4}} \\ = \frac {\left[ \begin{array}{c} 0 . 4 8 8 9 ^ {4} (5 7 . 6 5 6) + 4 (0 . 4 8 8 9 ^ {3}) (1 - 0 . 4 8 8 9) (2 2 . 5) + 6 (0 . 4 8 8 9 ^ {2}) (1 - 0 . 4 8 8 9) ^ {2} (0) \\ + 4 (0 . 4 8 8 9) (1 - 0 . 4 8 8 9) ^ {3} (0) + (1 - 0 . 4 8 8 9) ^ {4} (0) \end{array} \right]}{(1 + 0 . 2) ^ {4}} \\ = 8. 0 1. \\ \end{array}
$$

We leave as a problem to find both the European and American put prices.

# QUESTIONS AND PROBLEMS

Suppose you have the following parameters related to a single-period binomial model,  $S = 32$ ,  $X = 30$ ,  $r = 4.0\%$  (annual, discrete compounding),  $\tau = 0.5$  years,  $u = 1.25$ , and  $d = 0.75$ . Suppose the call price in the market is 5.39 and the put price is 2.80. Calculate the option prices based on the binomial model and explain how any arbitrage would be captured.  
2 Assume a single-period binomial model for a put option can be expressed as

$$
p = \frac {\phi p _ {u} + (1 - \phi) p _ {d}}{1 + r} \mathrm {w h e r e}
$$

$$
\phi = \frac {1 + r - d}{u - d}.
$$

Prove that the call option value can also be represented as

$$
p = \frac {b _ {p} S u + p _ {u}}{1 + r} - b _ {p} S, \text {w h e r e}
$$

$$
h _ {p} = \frac {p _ {d} - p _ {u}}{S u - S d}.
$$

3 Based on the information given in the chapter, we have the following market quotes,  $c_{Q} = 11.43$  and  $p_{Q} = 10.37$ . Recall  $S = 99$ ,  $X = 100$ ,  $r = 0.02$ ,  $\delta = 1$ ,  $u = 1.25$ , and  $d = 0.8$ . Further, we found  $c = 11.38$  and  $p = 10.42$ , thus the call price is too high and the put price is too low. Recall, arbitrageurs typically prefer to receive positive cash flow today with no chance of any future liability. Based on put-call parity, demonstrate the appropriate arbitrage transaction.  
4 Suppose you have the following parameters for a four-period binomial model for European options,  $S = 40$ ,  $X = 40$ ,  $r = 2.0\%$  per annum,  $u = 1.25$ ,  $d = 0.8$ , and  $\tau = 4.0$  years. Calculate the European put value.  
5 Again, suppose you have the following parameters for a four-period binomial model for European options,  $S = 40$ ,  $X = 40$ ,  $r = 2.0\%$  per annum,  $u = 1.25$ ,  $d = 0.8$ , and  $\tau = 4.0$  years. Calculate the American put value. Further, compare the behavior of the hedge ratio for European and American puts.  
[Contributed by Paul Maloney] A portfolio manager takes a fairly simplified approach to stock valuation. They narrow it down to just two scenarios, a good year and a bad year. The stock is currently priced at 50. They believe there is a  $34\%$  chance the stock will fall to 35. What is their estimate of the upside if the risk-free rate is  $3.0\%$ ? (Note: They are using risk-neutral valuation.)

# NOTES

1. An alternative approach would specify an asset priced at  $S$  can go up to  $S + u$  or down to  $S + d$ , an additive binomial approach.  
2. There is another arbitrage opportunity based on put-call parity, but we leave that one as an end-of-chapter problem.
3. As we shall see in Chapter 9, we can also divide an option's life into a larger number of smaller periods. Thus, we can accommodate a fixed life, subdivided into smaller and smaller periods. Here, however, we simply extend the life of the option.  
4. Henceforth, we shall always use  $c_{ud}$  to represent both  $c_{ud}$  and  $c_{du}$ .  
5. It is important to note that recombining trees can also be produced through an additive process, such as  $S + u + d = S + d + u$  with  $d < 0$ . The additive binomial lattice facilitates the convergence of the underlying variable to the normal distribution. Recall the multiplicative binomial lattice facilitates the convergence of the underlying variable to the lognormal distribution.  
6. The general binomial expansion is  $(a + b)^n$ . The coefficients are known as the elements of Pascal's triangle. This point is illustrated in Appendix 7B.  
7. If the asset is a stock and the cash payment is a dividend, then exercise would occur immediately before the stock goes ex-dividend. Of course, early exercise is not necessarily optimal.  
8. Furthermore, the relationship can be expressed as either a continuous yield or a discrete yield.  
9. The only time points that we have to check are those in which the option is in-the-money.  
10. This number would be even larger if there were additional dividends over the life of the option. You would add the present value of these dividends.  
11. We have rounded the final answers to ease exposition, but all calculations are based on a spreadsheet with more precise values.  
12. Specifically, the node growth rate is  $2^{N} - 2^{N-1} = 2^{N-1}$ . For example, if  $N = 0$ , then the growth rate is  $2^{10} - 2^{9} = 1,024 - 512 = 512$ .  
13. Note the remainder stock price  $S$  is simply the present value of dividends after the expiration of the option.  
14. The ones on all rows except the first also follow this rule. If nothing appears above left or above right, simply treat it as zero.


---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 13.1 A ONE-STEP BINOMIAL MODEL AND A NO-ARBITRAGE ARGUMENT
linter-yaml-title-alias: 13.1 A ONE-STEP BINOMIAL MODEL AND A NO-ARBITRAGE ARGUMENT
---

# 13.1 A ONE-STEP BINOMIAL MODEL AND A NO-ARBITRAGE ARGUMENT

We start by considering a very simple situation. A stock price is currently $20, and it is known that at the end of 3 months it will be either $22 or $18. We are interested in valuing a European call option to buy the stock for $21 in 3 months. This option will have one of two values at the end of the 3 months. If the stock price turns out to be $22, the value of the option will be $1; if the stock price turns out to be 18, the value of the option will be zero. The situation is illustrated in Figure 13.1.

It turns out that a relatively simple argument can be used to price the option in this example. The only assumption needed is that arbitrage opportunities do not exist. We set up a portfolio of the stock and the option in such a way that there is no uncertainty about the value of the portfolio at the end of the 3 months. We then argue that, because the portfolio has no risk, the return it earns must equal the risk-free interest rate. This enables us to work out the cost of setting up the portfolio and therefore the option's price. Because there are two securities (the stock and the stock option) and only two possible outcomes, it is always possible to set up the riskless portfolio.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/915cd57675dc0eba517fc813c7af38876e9caaa53187e7777e945c611b5e91e2.jpg)

Figure 13.1 Stock price movements for numerical example in Section 13.1.

Consider a portfolio consisting of a long position in  $\Delta$  shares of the stock and a short position in one call option (  $\Delta$  is the Greek capital letter "delta"). We calculate the value of  $\Delta$  that makes the portfolio riskless. If the stock price moves up from  $20 to$ 22, the value of the shares is  $22\Delta$  and the value of the option is 1, so that the total value of the portfolio is  $22\Delta - 1$ . If the stock price moves down from  $20 to$ 18, the value of the shares is  $18\Delta$  and the value of the option is zero, so that the total value of the portfolio is  $18\Delta$ . The portfolio is riskless if the value of  $\Delta$  is chosen so that the final value of the portfolio is the same for both alternatives. This means that

$$
2 2 \Delta - 1 = 1 8 \Delta
$$ or


$$

\Delta = 0. 2 5

$$

A riskless portfolio is therefore

Long: 0.25 shares

Short: 1 option.

If the stock price moves up to 22, the value of the portfolio is

$$

2 2 \times 0. 2 5 - 1 = 4. 5

$$

If the stock price moves down to 18, the value of the portfolio is

$$

1 8 \times 0. 2 5 = 4. 5

$$

Regardless of whether the stock price moves up or down, the value of the portfolio is always 4.5 at the end of the life of the option.

Riskless portfolios must, in the absence of arbitrage opportunities, earn the risk-free rate of interest. Suppose that, in this case, the risk-free rate is  $4\%$  per annum (continuously compounded). It follows that the value of the portfolio today must be the present value of 4.5, or

$$
4. 5 e ^ {- 0. 0 4 \times 3 / 1 2} = 4. 4 5 5
$$

The value of the stock price today is known to be 20. Suppose the option price is denoted by f. The value of the portfolio today is

$$

2 0 \times 0. 2 5 - f = 5 - f

$$

It follows that

$$

5 - f = 4. 4 5 5

$$ or


$$ f = 0. 5 4 5
$$

This shows that, in the absence of arbitrage opportunities, the current value of the option must be 0.545. If the value of the option were more than 0.545, the portfolio would cost less than 4.455 to set up and would earn more than the risk-free rate. If the value of the option were less than 0.545, shorting the portfolio would provide a way of borrowing money at less than the risk-free rate.

Trading 0.25 shares is, of course, not possible. However, the argument is the same if we imagine selling 400 options and buying 100 shares. In general, it is necessary to buy  $\Delta$  shares for each option sold to form a riskless portfolio. The parameter  $\Delta$  (delta) is important in the hedging of options. It is discussed further later in this chapter and in Chapter 19.

# A Generalization

We can generalize the no-arbitrage argument just presented by considering a stock whose price is  $S_0$  and an option on the stock (or any derivative dependent on the stock) whose current price is  $f$ . We suppose that the option lasts for time  $T$  and that during the life of the option the stock price can either move up from  $S_0$  to a new level,  $S_0u$ , where  $u > 1$ , or down from  $S_0$  to a new level,  $S_0d$ , where  $d < 1$ . The percentage increase in the stock price when there is an up movement is  $u - 1$ ; the percentage decrease when there is a down movement is  $1 - d$ . If the stock price moves up to  $S_0u$ , we suppose that the payoff from the option is  $f_u$ ; if the stock price moves down to  $S_0d$ , we suppose the payoff from the option is  $f_d$ . The situation is illustrated in Figure 13.2.

As before, we imagine a portfolio consisting of a long position in  $\Delta$  shares and a short position in one option. We calculate the value of  $\Delta$  that makes the portfolio riskless. If there is an up movement in the stock price, the value of the portfolio at the end of the life of the option is

$$
S _ {0} u \Delta - f _ {u}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/7bcecaa113cac36b513743511ba9196d16e9a95a7dba6bc4965f695b920d8980.jpg)

Figure 13.2 Stock and option prices in a general one-step tree.

If there is a down movement in the stock price, the value becomes

$$
S _ {0} d \Delta - f _ {d}
$$

The two are equal when

$$
S _ {0} u \Delta - f _ {u} = S _ {0} d \Delta - f _ {d}
$$ or


$$

\Delta = \frac {f _ {u} - f _ {d}}{S _ {0} u - S _ {0} d} \tag {13.1}

$$

In this case, the portfolio is riskless and, for there to be no arbitrage opportunities, it must earn the risk-free interest rate. Equation (13.1) shows that  $\Delta$  is the ratio of the change in the option price to the change in the stock price as we move between the nodes at time  $T$ .

If we denote the risk-free interest rate by  $r$ , the present value of the portfolio is

$$

(S _ {0} u \Delta - f _ {u}) e ^ {- r T}

$$

The cost of setting up the portfolio is

$$

S _ {0} \Delta - f

$$

It follows that

$$

S _ {0} \Delta - f = \left(S _ {0} u \Delta - f _ {u}\right) e ^ {- r T}

$$ or


$$ f = S _ {0} \Delta (1 - u e ^ {- r T}) + f _ {u} e ^ {- r T}
$$

Substituting from equation (13.1) for  $\Delta$ , we obtain

$$ f = S _ {0} \left(\frac {f _ {u} - f _ {d}}{S _ {0} u - S _ {0} d}\right) \left(1 - u e ^ {- r T}\right) + f _ {u} e ^ {- r T}
$$ or


$$ f = \frac {f _ {u} (1 - d e ^ {- r T}) + f _ {d} (u e ^ {- r T} - 1)}{u - d}
$$ or


$$ f = e ^ {- r T} \left[ p f _ {u} + (1 - p) f _ {d} \right] \tag {13.2}
$$ where


$$ p = \frac {e ^ {r T} - d}{u - d} \tag {13.3}
$$

Equations (13.2) and (13.3) enable an option to be priced when stock price movements are given by a one-step binomial tree. The only assumption needed for the equation is that there are no arbitrage opportunities in the market.

In the numerical example considered previously (see Figure 13.1),  $u = 1.1$ ,  $d = 0.9$ ,  $r = 0.04$ ,  $T = 0.25$ ,  $f_{u} = 1$ , and  $f_{d} = 0$ . From equation (13.3), we have

$$ p = \frac {e ^ {0 . 0 4 \times 3 / 1 2} - 0 . 9}{1 . 1 - 0 . 9} = 0. 5 5 0 3
$$ and, from equation (13.2), we have


$$ f = e ^ {- 0. 0 4 \times 0. 2 5} (0. 5 5 0 3 \times 1 + 0. 4 4 9 7 \times 0) = 0. 5 4 5
$$

The result agrees with the answer obtained earlier in this section.

# Irrelevance of the Stock's Expected Return

The option pricing formula in equation (13.2) does not involve the probabilities of the stock price moving up or down. For example, we get the same option price when the probability of an upward movement is 0.5 as we do when it is 0.9. This is surprising and seems counterintuitive. It is natural to assume that, as the probability of an upward movement in the stock price increases, the value of a call option on the stock increases and the value of a put option on the stock decreases. This is not the case.

The key reason is that we are not valuing the option in absolute terms. We are calculating its value in terms of the price of the underlying stock. The probabilities of future up or down movements are already incorporated into the stock price: we do not need to take them into account again when valuing the option in terms of the stock price.

# 13.2 RISK-NEUTRAL VALUATION

We are now in a position to introduce a very important principle in the pricing of derivatives known as risk-neutral valuation. This states that, when valuing a derivative, we can make the assumption that investors are risk-neutral. This assumption means investors do not increase the expected return they require from an investment to compensate for increased risk. A world where investors are risk-neutral is referred to as a risk-neutral world. The world we live in is, of course, not a risk-neutral world. The higher the risks investors take, the higher the expected returns they require. However, it turns out that assuming a risk-neutral world gives us the right option price for the world we live in, as well as for a risk-neutral world. Almost miraculously, it finesse the problem that we know hardly anything about the risk aversion of the buyers and sellers of options.

Risk-neutral valuation seems a surprising result when it is first encountered. Options are risky investments. Should not a person's risk preferences affect how they are priced? The answer is that, when we are pricing an option in terms of the price of the underlying stock, risk preferences are unimportant. As investors become more risk-averse, stock prices decline, but the formulas relating option prices to stock prices remain the same.

A risk-neutral world has two features that simplify the pricing of derivatives:

1. The expected return on a stock (or any other investment) is the risk-free rate.
2. The discount rate used for the expected payoff on an option (or any other instrument) is the risk-free rate.

Returning to equation (13.2), the parameter  $p$  should be interpreted as the probability of an up movement in a risk-neutral world, so that  $1 - p$  is the probability of a down movement in this world. (We assume  $u > e^{rT}$ , so that  $0 < p < 1$ .) The expression

$$ p f _ {u} + (1 - p) f _ {d}
$$ is the expected future payoff from the option in a risk-neutral world and equation (13.2) states that the value of the option today is its expected future payoff in a risk-neutral world discounted at the risk-free rate. This is an application of risk-neutral valuation.


To prove the validity of our interpretation of  $p$ , we note that, when  $p$  is the probability of an up movement, the expected stock price  $E(S_{T})$  at time  $T$  is given by

$$

E (S _ {T}) = p S _ {0} u + (1 - p) S _ {0} d

$$ or


$$

E (S _ {T}) = p S _ {0} (u - d) + S _ {0} d

$$

Substituting from equation (13.3) for  $p$  gives

$$

E \left(S _ {T}\right) = S _ {0} e ^ {r T} \tag {13.4}

$$

This shows that the stock price grows, on average, at the risk-free rate when  $p$  is the probability of an up movement. In other words, the stock price behaves exactly as we would expect it to behave in a risk-neutral world when  $p$  is the probability of an up movement.

Risk-neutral valuation is a very important general result in the pricing of derivatives. It states that, when we assume the world is risk-neutral, we get the right price for a derivative in all worlds, not just in a risk-neutral one. We have shown that risk-neutral valuation is correct when a simple binomial model is assumed for how the price of the stock evolves. We will prove it when the stock price follows a continuous-time stochastic process in Chapter 15. It is a result that is true regardless of the assumptions made about the evolution of the stock price.

To apply risk-neutral valuation to the pricing of a derivative, we first calculate what the probabilities of different outcomes would be if the world were risk-neutral. We then calculate the expected payoff from the derivative and discount that expected payoff at the risk-free rate of interest.

# The One-Step Binomial Example Revisited

We now return to the example in Figure 13.1 and illustrate that risk-neutral valuation gives the same answer as no-arbitrage arguments. In Figure 13.1, the stock price is currently  $20 and will move either up to$ 22 or down to $18 at the end of 3 months. The option considered is a European call option with a strike price of $21 and an expiration date in 3 months. The risk-free interest rate is 4\% per annum.

We define  $p$  as the probability of an upward movement in the stock price in a risk-neutral world. We can calculate  $p$  from equation (13.3). Alternatively, we can argue that the expected return on the stock in a risk-neutral world must be the risk-free rate of  $4\%$ . This means that  $p$  must satisfy

$$

2 2 p + 1 8 (1 - p) = 2 0 e ^ {0. 0 4 \times 3 / 1 2}

$$ or


$$

4 p = 2 0 e ^ {0. 0 4 \times 3 / 1 2} - 1 8

$$

That is,  $p$  must be 0.5503.

At the end of the 3 months, the call option has a 0.5503 probability of being worth 1 and a 0.4497 probability of being worth zero. Its expected value is therefore

$$
0. 5 5 0 3 \times 1 + 0. 4 4 9 7 \times 0 = 0. 5 5 0 3
$$

In a risk-neutral world this should be discounted at the risk-free rate. The value of the option today is therefore

$$
0. 5 5 0 3 e ^ {- 0. 0 4 \times 3 / 1 2}
$$ or 0.545. This is the same as the value obtained earlier, demonstrating that no-arbitrage arguments and risk-neutral valuation give the same answer.


# Real World vs. Risk-Neutral World

It should be emphasized that  $p$  is the probability of an up movement in a risk-neutral world. In general, this is not the same as the probability of an up movement in the real world. In our example  $p = 0.5503$ . When the probability of an up movement is 0.5503, the expected return on both the stock and the option is the risk-free rate of  $4\%$ . Suppose that, in the real world, the expected return on the stock is  $10\%$  and  $p^*$  is the probability of an up movement in this world. It follows that

$$

2 2 p ^ {*} + 1 8 \left(1 - p ^ {*}\right) = 2 0 e ^ {0. 1 0 \times 3 / 1 2}

$$ so that  $p^* = 0.6266$ .

The expected payoff from the option in the real world is then given by

$$ p ^ {*} \times 1 + (1 - p ^ {*}) \times 0
$$ or 0.6266. Unfortunately, it is not easy to know the correct discount rate to apply to the expected payoff in the real world. The return the market requires on the stock is  $10\%$  and this is the discount rate that would be used for the expected cash flows from an investment in the stock. A position in a call option is riskier than a position in the stock. As a result the discount rate to be applied to the payoff from a call option is greater than  $10\%$ , but we do not have a direct measure of how much greater than  $10\%$  it should be. Using risk-neutral valuation solves this problem because we know that in a risk-neutral world the expected return on all assets (and therefore the discount rate to use for all expected payoffs) is the risk-free rate.


# 13.3 TWO-STEP BINOMIAL TREES

We can extend the analysis to a two-step binomial tree such as that shown in Figure 13.3. Here the stock price starts at  $20 and in each of two time steps may go up by 10\%$  or down by  $10\%$ . Each time step is 3 months long and the risk-free interest rate is  $4\%$  per annum. We consider a 6-month option with a strike price of 21.

The objective of the analysis is to calculate the option price at the initial node of the tree. This can be done by repeatedly applying the principles established earlier in the chapter. Figure 13.4 shows the same tree as Figure 13.3, but with both the stock price and the option price at each node. (The stock price is the upper number and the option price is the lower number.) The option prices at the final nodes of the tree are easily calculated. They are the payoffs from the option. At node D the stock price is 24.2 and the option price is  $24.2 - 21 = 3.2$ ; at nodes E and F the option is out of the money and its value is zero.

At node C the option price is zero, because node C leads to either node E or node F and at both of those nodes the option price is zero. We calculate the option price at node B by focusing our attention on the part of the tree shown in Figure 13.5. Using the notation introduced earlier in the chapter,  $u = 1.1$ ,  $d = 0.9$ ,  $r = 0.04$ , and  $T = 0.25$ , so that  $p = 0.5503$ , and equation (13.2) gives the value of the option at node B as

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/c119d0a0f0b319c89673b2a0f2220f9895029370809c00f09db8a9bc3c19cc6a.jpg)
Figure 13.3 Stock prices in a two-step tree.


$$ e ^ {- 0. 0 4 \times 3 / 1 2} (0. 5 5 0 3 \times 3. 2 + 0. 4 4 9 7 \times 0) = 1. 7 4 3 3
$$

It remains for us to calculate the option price at the initial node A. We do so by focusing on the first step of the tree. We know that the value of the option at node B is 1.7433 and that at node C it is zero. Equation (13.2) therefore gives the value at node A as

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/af2c42fc956614857e9ab5772c69e0a7e9fe72073183490c3a33af2cd22a5c41.jpg)

Figure 13.4 Stock and option prices in a two-step tree. The upper number at each node is the stock price and the lower number is the option price.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/ed12341c53787544b56268d45cfdd05110728102607b0eba5c740903f17fd11b.jpg)

Figure 13.5 Evaluation of option price at node B of Figure 13.4.

$$ e ^ {- 0. 0 4 \times 3 / 1 2} (0. 5 5 0 3 \times 1. 7 4 3 3 + 0. 4 4 9 7 \times 0) = 0. 9 4 9 7
$$

The value of the option is 0.9497.

Note that this example was constructed so that  $u$  and  $d$  (the proportional up and down movements) were the same at each node of the tree and so that the time steps were of the same length. As a result, the risk-neutral probability,  $p$ , as calculated by equation (13.3) is the same at each node.

# A Generalization

We can generalize the case of two time steps by considering the situation in Figure 13.6. The stock price is initially  $S_0$ . During each time step, it either moves up to  $u$  times its value at the beginning of the time step or moves down to  $d$  times this value. The notation for the value of the option is shown on the tree. (For example, after two up movements the value of the option is  $f_{uu}$ .) We suppose that the risk-free interest rate is  $r$  and the length of the time step is  $\Delta t$  years.

Because the length of a time step is now  $\Delta t$  rather than  $T$ , equations (13.2) and (13.3) become

$$ f = e ^ {- r \Delta t} [ p f _ {u} + (1 - p) f _ {d} ] \tag {13.5}
$$

$$ p = \frac {e ^ {r \Delta t} - d}{u - d} \tag {13.6}
$$

Repeated application of equation (13.5) gives

$$ f _ {u} = e ^ {- r \Delta t} \left[ p f _ {u u} + (1 - p) f _ {u d} \right] \tag {13.7}
$$

$$ f _ {d} = e ^ {- r \Delta t} [ p f _ {u d} + (1 - p) f _ {d d} ] \tag {13.8}
$$

$$ f = e ^ {- r \Delta t} [ p f _ {u} + (1 - p) f _ {d} ] \tag {13.9}
$$

Substituting from equations (13.7) and (13.8) into (13.9), we get

$$ f = e ^ {- 2 r \Delta t} \left[ p ^ {2} f _ {u u} + 2 p (1 - p) f _ {u d} + (1 - p) ^ {2} f _ {d d} \right] \tag {13.10}
$$

This is consistent with the principle of risk-neutral valuation mentioned earlier. The variables  $p^2, 2p(1 - p)$ , and  $(1 - p)^2$  are the probabilities that the upper, middle, and lower final nodes will be reached. The option price is equal to its expected payoff in a risk-neutral world discounted at the risk-free interest rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/e74caa267ec4df8da57bfa82e85f107b9dfae1c0cb72632ee4a3b8bbeda5630c.jpg)

Figure 13.6 Stock and option prices in general two-step tree.

As we add more steps to the binomial tree, the risk-neutral valuation principle continues to hold. The option price is always equal to its expected payoff in a risk-neutral world discounted at the risk-free interest rate.

# 13.4 A PUT EXAMPLE

The procedures described in this chapter can be used to price puts as well as calls. Consider a 2-year European put with a strike price of  $52 on a stock whose current price is$ 50. We suppose that there are two time steps of 1 year, and in each time step the stock price either moves up by 20\% or moves down by 20\%. We also suppose that the risk-free interest rate is 5\%.

The tree is shown in Figure 13.7. In this case  $u = 1.2$ ,  $d = 0.8$ ,  $\Delta t = 1$ , and  $r = 0.05$ . From equation (13.6) the value of the risk-neutral probability,  $p$ , is given by

$$ p = \frac {e ^ {0 . 0 5 \times 1} - 0 . 8}{1 . 2 - 0 . 8} = 0. 6 2 8 2
$$

The possible final stock prices are:  $72,$ 48, and $32. In this case,  $f_{uu} = 0, f_{ud} = 4,$  and  $f_{dd} = 20$ . From equation (13.10),

$$ f = e ^ {- 2 \times 0. 0 5 \times 1} \left(0. 6 2 8 2 ^ {2} \times 0 + 2 \times 0. 6 2 8 2 \times 0. 3 7 1 8 \times 4 + 0. 3 7 1 8 ^ {2} \times 2 0\right) = 4. 1 9 2 3
$$

The value of the put is 4.1923. This result can also be obtained using equation (13.5) and working back through the tree one step at a time. Figure 13.7 shows the intermediate option prices that are calculated.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/89513597078a79945eb1293146a74989469011738726b95fb0190b7721d4af02.jpg)

Figure 13.7 Using a two-step tree to value a European put option. At each node, the upper number is the stock price and the lower number is the option price.

# 13.5 AMERICAN OPTIONS

Up to now all the options we have considered have been European. We now move on to consider how American options can be valued using a binomial tree such as that in Figure 13.4 or 13.7. The procedure is to work back through the tree from the end to the beginning, testing at each node to see whether early exercise is optimal. The value of the option at the final nodes is the same as for the European option. At earlier nodes the value of the option is the greater of

1. The value given by equation (13.5)
2. The payoff from early exercise.

Figure 13.8 shows how Figure 13.7 is affected if the option under consideration is American rather than European. The stock prices and their probabilities are unchanged. The values for the option at the final nodes are also unchanged. At node B, equation (13.5) gives the value of the option as 1.4147, whereas the payoff from early exercise is negative  $(= -8)$ . Clearly early exercise is not optimal at node B, and the value of the option at this node is 1.4147. At node C, equation (13.5) gives the value of the option as 9.4636, whereas the payoff from early exercise is 12. In this case, early exercise is optimal and the value of the option at the node is 12. At the initial node A, the value given by equation (13.5) is

$$ e ^ {- 0. 0 5 \times 1} (0. 6 2 8 2 \times 1. 4 1 4 7 + 0. 3 7 1 8 \times 1 2. 0) = 5. 0 8 9 4
$$ and the payoff from early exercise is 2. In this case early exercise is not optimal. The value of the option is therefore  $5.0894$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/510e45f25cba50d32407a20b893eaf9ed51bd59aecfb6cc8440d99592186ac1f.jpg)
Figure 13.8 Using a two-step tree to value an American put option. At each node, the upper number is the stock price and the lower number is the option price.


# 13.6 DELTA

At this stage, it is appropriate to introduce delta, an important parameter (sometimes referred to as a "Greek letter" or simply a "Greek") in the pricing and hedging of options.

The delta  $(\Delta)$  of a stock option is the ratio of the change in the price of the stock option to the change in the price of the underlying stock. It is the number of units of the stock we should hold for each option shorted in order to create a riskless portfolio. It is the same as the  $\Delta$  introduced earlier in this chapter. The construction of a riskless portfolio is sometimes referred to as delta hedging. The delta of a call option is positive, whereas the delta of a put option is negative.

From Figure 13.1, we can calculate the value of the delta of the call option being considered as

$$

\frac {1 - 0}{2 2 - 1 8} = 0. 2 5

$$

This is because when the stock price changes from $18 to $22, the option price changes from $0 to $1. (This is also the value of Δ calculated in Section 13.1.)

In Figure 13.4 the delta corresponding to stock price movements over the first time step is

$$

\frac {1 . 7 4 3 3 - 0}{2 2 - 1 8} = 0. 4 3 5 8

$$

The delta for stock price movements over the second time step is

$$

\frac {3 . 2 - 0}{2 4 . 2 - 1 9 . 8} = 0. 7 2 7 3

$$ if there is an upward movement over the first time step, and


$$

\frac {0 - 0}{1 9 . 8 - 1 6 . 2} = 0

$$ if there is a downward movement over the first time step.


From Figure 13.7, delta is

$$

\frac {1 . 4 1 4 7 - 9 . 4 6 3 6}{6 0 - 4 0} = - 0. 4 0 2 4

$$ at the end of the first time step, and either


$$

\frac {0 - 4}{7 2 - 4 8} = - 0. 1 6 6 7 \quad \text {o r} \quad \frac {4 - 2 0}{4 8 - 3 2} = - 1. 0 0 0 0

$$ at the end of the second time step.


The two-step examples show that delta changes over time. (In Figure 13.4, delta changes from 0.4358 to either 0.7273 or 0; and, in Figure 13.7, it changes from  $-0.4024$  to either  $-0.1667$  or  $-1.0000$ .) Thus, in order to maintain a riskless hedge using an option and the underlying stock, we need to adjust our holdings in the stock periodically. We will return to this feature of options in Chapter 19.

# 13.7 MATCHING VOLATILITY WITH  $u$  AND  $d$

The three parameters necessary to construct a binomial tree with time step  $\Delta t$  are  $u$ ,  $d$ , and  $p$ . Once  $u$  and  $d$  have been specified,  $p$  must be chosen so that the expected return is the risk-free rate  $r$ . We have already shown that

$$ p = \frac {e ^ {r \Delta t} - d}{u - d} \tag {13.11}
$$

The parameters  $u$  and  $d$  should be chosen to match volatility. The volatility of a stock (or any other asset),  $\sigma$ , is defined so that the standard deviation of its return in a short period of time  $\Delta t$  is  $\sigma \sqrt{\Delta t}$  (see Chapter 15 for a further discussion of this). Equivalently the variance of the return in time  $\Delta t$  is  $\sigma^2 \Delta t$ . The variance of a variable  $X$  is defined as  $E(X^2) - [E(X)]^2$ , where  $E$  denotes expected value. During a time step of length  $\Delta t$ , there is a probability  $p$  that the stock will provide a return of  $u - 1$  and a probability  $1 - p$  that it will provide a return of  $d - 1$ . It follows that volatility is matched if

$$ p (u - 1) ^ {2} + (1 - p) (d - 1) ^ {2} - [ p (u - 1) + (1 - p) (d - 1) ] ^ {2} = \sigma^ {2} \Delta t \tag {13.12}
$$

Substituting for  $p$  from equation (13.11), this simplifies to

$$ e ^ {r \Delta t} (u + d) - u d - e ^ {2 r \Delta t} = \sigma^ {2} \Delta t \tag {13.13}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/9ff0231f6b8c9a449dde226ed38fe2cfa6af437b79aa493c830441ca6ad5f5de.jpg)

Figure 13.9 Change in stock price in time  $\Delta t$  in (a) the real world and (b) the risk-neutral world.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/137152d1650d8b83e699156e07ac55f801fd92b29c523e89a18d465d013b53ef.jpg)

When terms in  $\Delta t^2$  and higher powers of  $\Delta t$  are ignored, a solution to equation (13.13) is

$$ u = e ^ {\sigma \sqrt {\Delta t}} \quad \text {a n d} \quad d = e ^ {- \sigma \sqrt {\Delta t}}
$$

These are the values of  $u$  and  $d$  used by Cox, Ross, and Rubinstein (1979).

In the analysis just given we chose  $u$  and  $d$  to match volatility in the risk-neutral world. What happens if instead we match volatility in the real world? As we will now show, the formulas for  $u$  and  $d$  are the same.

Suppose that  $p^*$  is the probability of an up-movement in the real world while  $p$  is as before the probability of an up-movement in a risk-neutral world. This is illustrated in Figure 13.9. Define  $\mu$  as the expected return in the real world. We must have

$$ p ^ {*} u + (1 - p ^ {*}) d = e ^ {\mu \Delta t}
$$ or


$$ p ^ {*} = \frac {e ^ {\mu \Delta t} - d}{u - d} \tag {13.14}
$$

Suppose that  $\sigma$  is the volatility in the real world. The equation matching the variance is the same as equation (13.12) except that  $p$  is replaced by  $p^*$ . When this equation is combined with equation (13.14), we obtain

$$ e ^ {\mu \Delta t} (u + d) - u d - e ^ {2 \mu \Delta t} = \sigma^ {2} \Delta t
$$

This is the same as equation (13.13) except the  $r$  is replaced by  $\mu$ . When terms in  $\Delta t^2$  and higher powers of  $\Delta t$  are ignored, it has the same solution as equation (13.13):

$$ u = e ^ {\sigma \sqrt {\Delta t}} \quad \text {a n d} \quad d = e ^ {- \sigma \sqrt {\Delta t}}
$$

# Girsanov's Theorem

The results we have just produced are closely related to an important result known as Girsanov's theorem. When we move from the risk-neutral world to the real world, the expected return from the stock price changes, but its volatility remains the same. More

$$ e ^ {x} = 1 + x + \frac {x ^ {2}}{2 !} + \frac {x ^ {3}}{3 !} + \dots
$$ generally, when we move from a world with one set of risk preferences to a world with another set of risk preferences, the expected growth rates in variables change, but their volatilities remain the same. We will examine the impact of risk preferences on the behavior of market variables in more detail in Chapter 28. Moving from one set of risk preferences to another is sometimes referred to as changing the measure. The real-world measure is sometimes referred to as the  $P$ -measure, while the risk-neutral world measure is referred to as the  $Q$ -measure.


# 13.8 THE BINOMIAL TREE FORMULAS

The analysis in the previous section shows that, when the length of the time step on a binomial tree is  $\Delta t$ , we should match volatility by setting

$$ u = e ^ {\sigma \sqrt {\Delta t}} \tag {13.15}
$$ and


$$ d = e ^ {- \sigma \sqrt {\Delta t}} \tag {13.16}
$$

Also, from equation (13.6),

$$ p = \frac {a - d}{u - d} \tag {13.17}
$$ where


$$ a = e ^ {r \Delta t} \tag {13.18}
$$

Equations (13.15) to (13.18) define the tree.

Consider again the American put option in Figure 13.8, where the stock price is  $50, the strike price is$ 52, the risk-free rate is 5\%, the life of the option is 2 years, and there are two time steps. In this case,  $\Delta t = 1$ . Suppose that the volatility  $\sigma$  is 30\%. Then, from equations (13.15) to (13.18), we have

$$ u = e ^ {0. 3 \times 1} = 1. 3 4 9 9, \quad d = \frac {1}{1 . 3 4 9 9} = 0. 7 4 0 8, \quad a = e ^ {0. 0 5 \times 1} = 1. 0 5 1 3
$$ and


$$ p = \frac {1 . 0 5 1 3 - 0 . 7 4 0 8}{1 . 3 4 9 9 - 0 . 7 4 0 8} = 0. 5 0 9 7
$$

The tree is shown in Figure 13.10. The value of the put option is 7.43. (This is different from the value obtained in Figure 13.8 by assuming  $u = 1.2$  and  $d = 0.8$ .) Note that the option is exercised at the end of the first time step if the lower node is reached.

# 13.9 INCREASING THE NUMBER OF STEPS

The binomial model presented above is unrealistically simple. Clearly, an analyst can expect to obtain only a very rough approximation to an option price by assuming that stock price movements during the life of the option consist of one or two binomial steps.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/a211ddc03548f8fc834a9eaac6cb931a3fb4a5896ec8b690b0195156fa55d9ec.jpg)

Figure 13.10 Two-step tree to value a 2-year American put option when the stock price is 50, strike price is 52, risk-free rate is  $5\%$ , and volatility is  $30\%$ .

When binomial trees are used in practice, the life of the option is typically divided into 30 or more time steps. In each time step there is a binomial stock price movement. With 30 time steps there are 31 terminal stock prices and  $2^{30}$ , or about 1 billion, possible stock price paths are implicitly considered.

The equations defining the tree are equations (13.15) to (13.18), regardless of the number of time steps. Suppose, for example, that there are five steps instead of two in the example we considered in Figure 13.10. The parameters would be  $\Delta t = 2 / 5 = 0.4$ ,  $r = 0.05$ , and  $\sigma = 0.3$ . These values give  $u = e^{0.3 \times \sqrt{0.4}} = 1.2089$ ,  $d = 1 / 1.2089 = 0.8272$ ,  $a = e^{0.05 \times 0.4} = 1.0202$ , and  $p = (1.0202 - 0.8272) / (1.2089 - 0.8272) = 0.5056$ .

As the number of time steps is increased (so that  $\Delta t$  becomes smaller), the binomial tree model makes the same assumptions about stock price behavior as the Black-Scholes-Merton model, which will be presented in Chapter 15. When the binomial tree is used to price a European option, the price converges to the Black-Scholes-Merton price, as expected, as the number of time steps is increased. This is proved in the appendix to this chapter.

# 13.10 USING DerivaGem

The software accompanying this book, DerivaGem, is a useful tool for becoming comfortable with binomial trees. After loading the software in the way described at the end of this book, go to the Equity_FX_Indx_Fut_Opts_Calc worksheet. Choose Equity as the Underlying Type and select Binomial American as the Option Type.

Enter the stock price, volatility, risk-free rate, time to expiration, exercise price, and tree steps, as 50,  $30\%$ ,  $5\%$ , 2, 52, and 2, respectively. Click on the Put button and then on Calculate. The price of the option is shown as 7.428 in the box labeled Price. Now click on Display Tree and you will see the equivalent of Figure 13.10. (The red numbers in the software indicate the nodes where the option is exercised.)

Return to the Equity_FX_Indx_Fut_Opts_Calc worksheet and change the number of time steps to 5. Hit Enter and click on Calculate. You will find that the value of the option changes to 7.671. By clicking on Display Tree the five-step tree is displayed, together with the values of  $u$ ,  $d$ ,  $a$ , and  $p$  calculated above.

DerivaGem can display trees that have up to 10 steps, but the calculations can be done for up to 500 steps. In our example, 500 steps gives the option price (to two decimal places) as 7.47. This is an accurate answer. By changing the Option Type to Binomial European, we can use the tree to value a European option. Using 500 time steps, the value of a European option with the same parameters as the American option is 6.76. (By changing the Option Type to Black-Scholes European, we can display the value of the option using the Black-Scholes-Merton formula that will be presented in Chapter 15. This is also 6.76.)

By changing the Underlying Type, we can consider options on assets other than stocks. These will now be discussed.

# 13.11 OPTIONS ON OTHER ASSETS

We introduced options on indices, currencies, and futures contracts in Chapter 10 and will cover them in more detail in Chapters 17 and 18. It turns out that we can construct and use binomial trees for these options in exactly the same way as for options on stocks except that the equation for  $p$  changes. As in the case of options on stocks, equation (13.2) applies so that the value at a node (before the possibility of early exercise is considered) is  $p$  times the value if there is an up movement plus  $1 - p$  times the value if there is a down movement, discounted at the risk-free rate.

# Options on Stocks Paying a Continuous Dividend Yield

Consider a stock paying a known dividend yield at rate  $q$ . The total return from dividends and capital gains in a risk-neutral world is  $r$ . The dividends provide a return of  $q$ . Capital gains must therefore provide a return of  $r - q$ . If the stock starts at  $S_0$ , its expected value after one time step of length  $\Delta t$  must be  $S_0 e^{(r - q)\Delta t}$ . This means that

$$ p S _ {0} u + (1 - p) S _ {0} d = S _ {0} e ^ {(r - q) \Delta t}
$$ so that


$$ p = \frac {e ^ {(r - q) \Delta t} - d}{u - d}
$$

As in the case of options on non-dividend-paying stocks, we match volatility by setting  $u = e^{\sigma \sqrt{\Delta t}}$  and  $d = 1 / u$ . This means that we can use equations (13.15) to (13.18), except that we set  $a = e^{(r - q)\Delta t}$  instead of  $a = e^{r\Delta t}$ .

# Options on Stock Indices

When calculating a futures price for a stock index in Chapter 5 we assumed that the stocks underlying the index provided a dividend yield at rate  $q$ . We make a similar assumption here. The valuation of an option on a stock index is therefore very similar to the valuation of an option on a stock paying a known dividend yield.

# Example 13.1

A stock index is currently 810 and has a volatility of  $20\%$  and a dividend yield of  $2\%$ . The risk-free rate is  $5\%$ . Figure 13.11 shows the output from DerivaGem for valuing a European 6-month call option with a strike price of 800 using a two-step tree. In this case,

$$
\Delta t = 0. 2 5, \quad u = e ^ {0. 2 0 \times \sqrt {0 . 2 5}} = 1. 1 0 5 2,
$$

$$ d = 1 / u = 0. 9 0 4 8, \quad a = e ^ {(0. 0 5 - 0. 0 2) \times 0. 2 5} = 1. 0 0 7 5
$$

$$ p = (1. 0 0 7 5 - 0. 9 0 4 8) / (1. 1 0 5 2 - 0. 9 0 4 8) = 0. 5 1 2 6
$$

The value of the option is 53.39.

At each node:

Upper value  $=$  Underlying Asset Price

Lower value  $=$  Option Price

Shading indicates where option is exercised

Strike price  $= 800$

Discount factor per step  $= 0.9876$

Time step, dt = 0.2500 years, 91.25 days

Growth factor per step,  $a = 1.0075$

Probability of up move,  $p = 0.5126$

Up step size,  $\mathsf{u} = 1.1052$

Down step size,  $d = 0.9048$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/0c92a7996aaac2b494eb8796258cb1ff00077d688d201690952f9a5087d9dd29.jpg)

Figure 13.11 Two-step tree to value a European 6-month call option on an index when the index level is 810, strike price is 800, risk-free rate is  $5\%$ , volatility is  $20\%$ , and dividend yield is  $2\%$  (DerivaGem output).

Node Time:

0.0000

0.2500

0.5000

# Options on Currencies

As pointed out in Section 5.10, a foreign currency can be regarded as an asset providing a yield at the foreign risk-free rate of interest,  $r_f$ . By analogy with the stock index case we can construct a tree for options on a currency by using equations (13.15) to (13.18) and setting  $a = e^{(r - r_f)\Delta t}$ .

# Example 13.2

A foreign currency is currently worth 0.6100 U.S. dollars and this exchange rate has a volatility of  $12\%$ . The foreign risk-free rate is  $7\%$  and the U.S. risk-free rate is  $5\%$ . Figure 13.12 shows the output from DerivaGem for valuing a 3-month American call option with a strike price of 0.6000 using a three-step tree. In this case,

$$
\Delta t = 0. 0 8 3 3 3, \quad u = e ^ {0. 1 2 \times \sqrt {0 . 0 8 3 3 3}} = 1. 0 3 5 2
$$

$$ d = 1 / u = 0. 9 6 6 0, \quad a = e ^ {(0. 0 5 - 0. 0 7) \times 0. 0 8 3 3 3} = 0. 9 9 8 3
$$

$$ p = (0. 9 9 8 3 - 0. 9 6 6 0) / (1. 0 3 5 2 - 0. 9 6 6 0) = 0. 4 6 7 3
$$

The value of the option is 0.019.

At each node:

Upper value  $=$  Underlying Asset Price

Lower value  $=$  Option Price

Shading indicates where option is exercised

Strike price  $= 0.6$

Discount factor per step  $= 0.9958$

Time step, dt = 0.0833 years, 30.42 days

Growth factor per step,  $a = 0.9983$

Probability of up move,  $p = 0.4673$

Up step size,  $u = 1.0352$

Down step size,  $d = 0.9660$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/48a967c1ddaa83d3682b092df3b9761617e90c2deded5a426f13a6682dc6966f.jpg)

Figure 13.12 Three-step tree to value an American 3-month call option on a currency when the value of the currency is 0.6100, strike price is 0.6000, risk-free rate is  $5\%$ , volatility is  $12\%$ , and foreign risk-free rate is  $7\%$  (DerivaGem output).

# Options on Futures

It costs nothing to take a long or a short position in a futures contract. It follows that in a risk-neutral world a futures price should have an expected growth rate of zero. (We discuss this point in more detail in Section 18.6.) As above, we define  $p$  as the probability of an up movement in the futures price,  $u$  as the percentage up movement, and  $d$  as the percentage down movement. If  $F_0$  is the initial futures price, the expected futures price at the end of one time step of length  $\Delta t$  should also be  $F_0$ . This means that

$$ p F _ {0} u + (1 - p) F _ {0} d = F _ {0}
$$ so that


$$ p = \frac {1 - d}{u - d}
$$ and we can use equations (13.15) to (13.18) with  $a = 1$ .


# Example 13.3

A futures price is currently 31 and has a volatility of  $30\%$ . The risk-free rate is  $5\%$ . Figure 13.13 shows the output from DerivaGem for valuing a 9-month American

```txt
At each node: Upper value  $=$  Underlying Asset Price Lower value  $=$  Option Price Shading indicates where option is exercised
```

```latex
Strike price  $= 30$
Discount factor per step  $= 0.9876$
Time step,  $\mathrm{dt} = 0.2500$  years, 91.25 days
Growth factor per step, a  $= 1.000$
Probability of up move,  $\mathsf{p} = 0.4626$
Up step size, u  $= 1.1618$
Down step size,  $\mathrm{d} = 0.8607$
``` put option with a strike price of 30 using a three-step tree. In this case,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/cdd28c931babe917fecf25a6525080af0333897b27e14c23509f9d04f5cff5ee.jpg)
Figure 13.13 Three-step tree to value an American 9-month put option on a futures contract when the futures price is 31, strike price is 30, risk-free rate is  $5\%$ , and volatility is  $30\%$  (DerivaGem output).


$$

\Delta t = 0. 2 5, \quad u = e ^ {0. 3 \sqrt {0. 2 5}} = 1. 1 6 1 8

$$

$$ d = 1 / u = 1 / 1. 1 6 1 8 = 0. 8 6 0 7, a = 1,
$$

$$ p = (1 - 0. 8 6 0 7) / (1. 1 6 1 8 - 0. 8 6 0 7) = 0. 4 6 2 6
$$

The value of the option is 2.84.

# SUMMARY

This chapter has provided a first look at the valuation of options on stocks and other assets using trees. In the simple situation where movements in the price of a stock during the life of an option are governed by a one-step binomial tree, it is possible to set up a riskless portfolio consisting of a position in the stock option and a position in the stock. In a world with no arbitrage opportunities, riskless portfolios must earn the risk-free interest. This enables the stock option to be priced in terms of the stock. It is interesting to note that no assumptions are required about the actual (real-world) probabilities of up and down movements in the stock price.

When stock price movements are governed by a multistep binomial tree, we can treat each binomial step separately and work back from the end of the life of the option to the beginning to obtain the current value of the option. Again only no-arbitrage arguments are used, and no assumptions are required about the actual (real-world) probabilities of up and down movements in the stock price.

A very important principle states that we can assume the world is risk-neutral when valuing an option. This chapter has shown, through both numerical examples and algebra, that no-arbitrage arguments and risk-neutral valuation are equivalent and lead to the same option prices.

The delta of a stock option,  $\Delta$ , considers the effect of a small change in the underlying stock price on the change in the option price. It is the ratio of the change in the option price to the change in the stock price. For a riskless position, an investor should buy  $\Delta$  shares for each option sold. An inspection of a typical binomial tree shows that delta changes during the life of an option. This means that to hedge a particular option position, we must change our holding in the underlying stock periodically.

Constructing binomial trees for valuing options on stock indices, currencies, and futures contracts is very similar to doing so for valuing options on stocks. In Chapter 21, we will return to binomial trees and provide more details on how they are used in practice.

# FURTHER READING

Coval, J. D. and T. Shumway. "Expected Option Returns," Journal of Finance, 56, 3 (2001): 983-1009.

Cox, J. C., S. A. Ross, and M. Rubinstein. "Option Pricing: A Simplified Approach," Journal of Financial Economics 7 (October 1979): 229-64.

Rendleman, R., and B. Bartter. "Two State Option Pricing," Journal of Finance 34 (1979): 1092-1110.

Shreve, S. E. Stochastic Calculus for Finance I: The Binomial Asset Pricing Model. New York: Springer, 2005.

# Short Concept Questions

13.1. What is meant by risk-neutral valuation?
13.2. Explain the no-arbitrage argument used to value an option when there is a one-step binomial tree.
13.3. What are  $u$  and  $d$ ? What are the formulas used to calculate them?
13.4. How is  $p$  defined? What is the formula for calculating  $p$ ?
13.5. Explain the difficulty in calculating the discount rate that should be applied to an option's payoff in the real world.
13.6. What is the delta of a stock option?
13.7. What is Girsanov's theorem?
13.8. How is the valuation of an option using a binomial tree changed when the stock is assumed to provide a continuous dividend yield?
 13.9. A stock price is currently $40. It is known that at the end of 1 month it will be either $42 or $38. The risk-free interest rate is 8\% per annum with continuous compounding. What is the value of a 1-month European call option with a strike price of $39?
 13.10. A stock price is currently $50. It is known that at the end of 6 months it will be either $45 or $55. The risk-free interest rate is 10\% per annum with continuous compounding. What is the value of a 6-month European put option with a strike price of $50?

# Practice Questions

13.11. A stock price is currently $100. Over each of the next two 6-month periods it is expected to go up by 10\% or down by 10\%. The risk-free interest rate is 8\% per annum with continuous compounding. What is the value of a 1-year European call option with a strike price of $100?
13.12. For the situation considered in Problem 13.11, what is the value of a 1-year European put option with a strike price of 100? Verify that the European call and European put prices satisfy put-call parity.
13.13. Consider a situation where stock price movements during the life of a European option are governed by a two-step binomial tree. Explain why it is not possible to set up a position in the stock and the option that remains riskless for the whole of the life of the option.
 13.14. A stock price is currently $50. It is known that at the end of 2 months it will be either $53 or $48. The risk-free interest rate is 10\% per annum with continuous compounding. What is the value of a 2-month European call option with a strike price of $49? Use no-arbitrage arguments.
 13.15. A stock price is currently $80. It is known that at the end of 4 months it will be either $75 or $85. The risk-free interest rate is 5\% per annum with continuous compounding. What is the value of a 4-month European put option with a strike price of $80? Use no-arbitrage arguments.
13.16. A stock price is currently $40. It is known that at the end of 3 months it will be either $45 or 35. The risk-free rate of interest with quarterly compounding is 8\% per annum. Calculate the value of a 3-month European put option on the stock with an exercise price of 40. Verify that no-arbitrage arguments and risk-neutral valuation arguments give the same answers.

13.17. A stock price is currently $50. Over each of the next two 3-month periods it is expected to go up by 6\% or down by 5\%. The risk-free interest rate is 5\% per annum with continuous compounding. What is the value of a 6-month European call option with a strike price of $51?
13.18. For the situation considered in Problem 13.17, what is the value of a 6-month European put option with a strike price of 51? Verify that the European call and European put prices satisfy put-call parity. If the put option were American, would it ever be optimal to exercise it early at any of the nodes on the tree?
 13.19. A stock price is currently $25. It is known that at the end of 2 months it will be either $23 or 27. The risk-free interest rate is 10\% per annum with continuous compounding. Suppose S_T is the stock price at the end of 2 months. What is the value of a derivative that pays off S_T^2 at this time?
13.20. Calculate  $u, d$ , and  $p$  when a binomial tree is constructed to value an option on a foreign currency. The tree step size is 1 month, the domestic interest rate is  $5\%$  per annum, the foreign interest rate is  $8\%$  per annum, and the volatility is  $12\%$  per annum.
 13.21. The volatility of a non-dividend-paying stock whose price is $78, is 30\%. The risk-free rate is 3\% per annum (continuously compounded) for all maturities. Calculate values for u, d, and p when a 2-month time step is used. What is the value a 4-month European call option with a strike price of $80 given by a two-step binomial tree. Suppose a trader sells 1,000 options (10 contracts). What position in the stock is necessary to hedge the trader's position at the time of the trade?
13.22. A stock index is currently 1,500. Its volatility is  $18\%$ . The risk-free rate is  $4\%$  per annum (continuously compounded) for all maturities and the dividend yield on the index is  $2.5\%$ . Calculate values for  $u$ ,  $d$ , and  $p$  when a 6-month time step is used. What is the value a 12-month American put option with a strike price of 1,480 given by a two-step binomial tree.
 13.23. The futures price of a commodity is $90. Use a three-step tree to value (a) a 9-month American call option with strike price $93 and (b) a 9-month American put option with strike price 93. The volatility is 28\% and the risk-free rate (all maturities) is 3\% with continuous compounding.
13.24. The current price of a non-dividend-paying biotech stock is 140 with a volatility of 25\%. The risk-free rate is 4\%. For a 3-month time step:

(a) What is the percentage up movement?

(b) What is the percentage down movement?

(c) What is the probability of an up movement in a risk-neutral world?

(d) What is the probability of a down movement in a risk-neutral world?

Use a two-step tree to value a 6-month European call option and a 6-month European put option. In both cases the strike price is 150.

13.25. In Problem 13.24, suppose a trader sells 10,000 European call options and the two-step tree describes the behavior of the stock. How many shares of the stock are needed to hedge the 6-month European call for the first and second 3-month period? For the second time period, consider both the case where the stock price moves up during the first period and the case where it moves down during the first period.

13.26. A stock price is currently $50. It is known that at the end of 6 months it will be either $60 or $42. The risk-free rate of interest with continuous compounding is 12\% per annum. Calculate the value of a 6-month European call option on the stock with an exercise price of $48. Verify that no-arbitrage arguments and risk-neutral valuation arguments give the same answers.
 13.27. A stock price is currently $40. Over each of the next two 3-month periods it is expected to go up by 10\% or down by 10\%. The risk-free interest rate is 12\% per annum with continuous compounding. (a) What is the value of a 6-month European put option with a strike price of $42? (b) What is the value of a 6-month American put option with a strike price of 42?
13.28. Using a "trial-and-error" approach, estimate how high the strike price has to be in Problem 13.27 for it to be optimal to exercise the option immediately.
13.29. Consider a European call option on a non-dividend-paying stock where the stock price is  $40, the strike price is$ 40, the risk-free rate is 4\% per annum, the volatility is 30\% per annum, and the time to maturity is 6 months.

(a) Calculate  $u, d$ , and  $p$  for a two-step tree.

(b) Value the option using a two-step tree.

(c) Verify that DerivaGem gives the same answer.

(d) Use DerivaGem to value the option with 5, 50, 100, and 500 time steps.

13.30. Repeat Problem 13.29 for an American put option on a futures contract. The strike price and the futures price are 50, the risk-free rate is 10\%, the time to maturity is 6 months, and the volatility is 40\% per annum.

13.31. Footnote 1 of this chapter shows that the correct discount rate to use for the real-world expected payoff in the case of the call option considered in Figure 13.1 is  $55.96\%$ . Show that if the option is a put rather than a call the discount rate is  $-70.4\%$ . Explain why the two real-world discount rates are so different.

# APPENDIX

# DERIVATION OF THE BLACK-SCHOLES-MERTON OPTION-PRICING FORMULA FROM A BINOMIAL TREE

One way of deriving the famous Black-Scholes-Merton result for valuing a European option on a non-dividend-paying stock is by allowing the number of time steps in a binomial tree to approach infinity.

Suppose that a tree with  $n$  time steps is used to value a European call option with strike price  $K$  and life  $T$ . Each step is of length  $T / n$ . If there have been  $j$  upward movements and  $n - j$  downward movements on the tree, the final stock price is  $S_0u^jd^{n - j}$ , where  $u$  is the proportional up movement,  $d$  is the proportional down movement, and  $S_0$  is the initial stock price. The payoff from a European call option is then

$$
\max  \left(S _ {0} u ^ {j} d ^ {n - j} - K, 0\right)
$$

From the properties of the binomial distribution, the probability of exactly  $j$  upward and  $n - j$  downward movements is given by

$$
\frac {n !}{(n - j) ! j !} p ^ {j} (1 - p) ^ {n - j}
$$

It follows that the expected payoff from the call option is

$$
\sum_ {j = 0} ^ {n} \frac {n !}{(n - j) ! j !} p ^ {j} (1 - p) ^ {n - j} \max  \left(S _ {0} u ^ {j} d ^ {n - j} - K, 0\right)
$$

As the tree represents movements in a risk-neutral world, we can discount this at the risk-free rate  $r$  to obtain the option price:

$$ c = e ^ {- r T} \sum_ {j = 0} ^ {n} \frac {n !}{(n - j) ! j !} p ^ {j} (1 - p) ^ {n - j} \max  \left(S _ {0} u ^ {j} d ^ {n - j} - K, 0\right) \tag {13A.1}
$$

The terms in equation (13A.1) are nonzero when the final stock price is greater than the strike price, that is, when

$$
S _ {0} u ^ {j} d ^ {n - j} > K
$$ or


$$

\ln \left(S _ {0} / K\right) > - j \ln (u) - (n - j) \ln (d)

$$

Since  $u = e^{\sigma \sqrt{T / n}}$  and  $d = e^{-\sigma \sqrt{T / n}}$ , this condition becomes

$$

\ln \left(S _ {0} / K\right) > n \sigma \sqrt {T / n} - 2 j \sigma \sqrt {T / n}

$$ or


$$ j > \frac {n}{2} - \frac {\ln \left(S _ {0} / K\right)}{2 \sigma \sqrt {T / n}}
$$

Equation (13A.1) can therefore be written

$$ c = e ^ {- r T} \sum_ {j > \alpha} \frac {n !}{(n - j) ! j !} p ^ {j} (1 - p) ^ {n - j} \left(S _ {0} u ^ {j} d ^ {n - j} - K\right)
$$ where


$$

\alpha = \frac {n}{2} - \frac {\ln (S _ {0} / K)}{2 \sigma \sqrt {T / n}}

$$

For convenience, we define

$$

U _ {1} = \sum_ {j > \alpha} \frac {n !}{(n - j) ! j !} p ^ {j} (1 - p) ^ {n - j} u ^ {j} d ^ {n - j} \tag {13A.2}

$$ and


$$

U _ {2} = \sum_ {j > \alpha} \frac {n !}{(n - j) ! j !} p ^ {j} (1 - p) ^ {n - j} \tag {13A.3}

$$ so that


$$ c = e ^ {- r T} \left(S _ {0} U _ {1} - K U _ {2}\right) \tag {13A.4}
$$

Consider first  $U_{2}$ . As is well known, the binomial distribution approaches a normal distribution as the number of trials approaches infinity. Specifically, when there are  $n$  trials and  $p$  is the probability of success, the probability distribution of the number of successes is approximately normal with mean  $np$  and standard deviation  $\sqrt{np(1 - p)}$ . The variable  $U_{2}$  in equation (13A.3) is the probability of the number of successes being more than  $\alpha$ . From the properties of the normal distribution, it follows that, for large  $n$ ,

$$
U _ {2} = N \left(\frac {n p - \alpha}{\sqrt {n p (1 - p)}}\right) \tag {13A.5}
$$ where  $N$  is the cumulative probability distribution function for a standard normal variable. Substituting for  $\alpha$ , we obtain


$$

U _ {2} = N \left(\frac {\ln \left(S _ {0} / K\right)}{2 \sigma \sqrt {T} \sqrt {p (1 - p)}} + \frac {\sqrt {n} \left(p - \frac {1}{2}\right)}{\sqrt {p (1 - p)}}\right) \tag {13A.6}

$$

From equations (13.15) to (13.18), we have

$$ p = \frac {e ^ {r T / n} - e ^ {- \sigma \sqrt {T / n}}}{e ^ {\sigma \sqrt {T / n}} - e ^ {- \sigma \sqrt {T / n}}}
$$

By expanding the exponential functions in a series, we see that, as  $n$  tends to infinity,  $p(1 - p)$  tends to  $\frac{1}{4}$  and  $\sqrt{n} (p - \frac{1}{2})$  tends to

$$
\frac {(r - \sigma^ {2} / 2) \sqrt {T}}{2 \sigma}
$$ so that in the limit, as  $n$  tends to infinity, equation (13A.6) becomes


$$

U _ {2} = N \left(\frac {\ln \left(S _ {0} / K\right) + (r - \sigma^ {2} / 2) T}{\sigma \sqrt {T}}\right) \tag {13A.7}

$$

We now move on to evaluate  $U_{1}$ . From equation (13A.2), we have

$$

U _ {1} = \sum_ {j > \alpha} \frac {n !}{(n - j) ! j !} (p u) ^ {j} [ (1 - p) d ] ^ {n - j} \tag {13A.8}

$$

Define

$$ p ^ {*} = \frac {p u}{p u + (1 - p) d} \tag {13A.9}
$$

It then follows that

$$
1 - p ^ {*} = \frac {(1 - p) d}{p u + (1 - p) d}
$$ and we can write equation (13A.8) as


$$

U _ {1} = [ p u + (1 - p) d ] ^ {n} \sum_ {j > \alpha} \frac {n !}{(n - j) ! j !} (p ^ {*}) ^ {j} (1 - p ^ {*}) ^ {n - j}

$$

Since the expected rate of return in the risk-neutral world is the risk-free rate  $r$ , it follows that  $pu + (1 - p)d = e^{rT / n}$  and

$$

U _ {1} = e ^ {r T} \sum_ {j > \alpha} \frac {n !}{(n - j) ! j !} (p ^ {*}) ^ {j} (1 - p ^ {*}) ^ {n - j}

$$

This shows that  $U_{1}$  involves a binomial distribution where the probability of an up movement is  $p^{*}$  rather than  $p$ . Approximating the binomial distribution with a normal distribution, we obtain, similarly to equation (13A.5),

$$

U _ {1} = e ^ {r T} N \left(\frac {n p ^ {*} - \alpha}{\sqrt {n p ^ {*} (1 - p ^ {*})}}\right)

$$ and substituting for  $\alpha$  gives, as with equation (13A.6),

$$
U _ {1} = e ^ {r T} N \Bigg (\frac {\ln (S _ {0} / K)}{2 \sigma \sqrt {T} \sqrt {p ^ {*} (1 - p ^ {*})}} + \frac {\sqrt {n} (p ^ {*} - \frac {1}{2})}{\sqrt {p ^ {*} (1 - p ^ {*})}} \Bigg)
$$

Substituting for  $u$  and  $d$  in equation (13A.9) gives

$$ p ^ {*} = \left(\frac {e ^ {r T / n} - e ^ {- \sigma \sqrt {T / n}}}{e ^ {\sigma \sqrt {T / n}} - e ^ {- \sigma \sqrt {T / n}}}\right) \left(\frac {e ^ {\sigma \sqrt {T / n}}}{e ^ {r T / n}}\right)
$$

By expanding the exponential functions in a series we see that, as  $n$  tends to infinity,  $p^*(1 - p^*)$  tends to  $\frac{1}{4}$  and  $\sqrt{n}(p^* - \frac{1}{2})$  tends to

$$
\frac {(r + \sigma^ {2} / 2) \sqrt {T}}{2 \sigma}
$$ with the result that


$$

U _ {1} = e ^ {r T} N \left(\frac {\ln \left(S _ {0} / K\right) + (r + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}\right) \tag {13A.10}

$$

From equations (13A.4), (13A.7), and (13A.10), we have

$$ c = S _ {0} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right)
$$ where


$$ d _ {1} = \frac {\ln (S _ {0} / K) + (r + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$ and


$$ d _ {2} = \frac {\ln \left(S _ {0} / K\right) + (r - \sigma^ {2} / 2) T}{\sigma \sqrt {T}} = d _ {1} - \sigma \sqrt {T}
$$

This is the Black-Scholes-Merton formula for the valuation of a European call option. It will be discussed in Chapter 15. An alternative derivation is given in the appendix to that chapter.

# CHAPTER

# Wiener Processes and Ito's Lemma

Any variable whose value changes over time in an uncertain way is said to follow a stochastic process. Stochastic processes can be classified as discrete time or continuous time. A discrete-time stochastic process is one where the value of the variable can change only at certain fixed points in time, whereas a continuous-time stochastic process is one where changes can take place at any time. Stochastic processes can also be classified as continuous variable or discrete variable. In a continuous-variable process, the underlying variable can take any value within a certain range, whereas in a discrete-variable process, only certain discrete values are possible.

This chapter develops a continuous-variable, continuous-time stochastic process for stock prices. A similar process is often assumed for the prices of other assets. Learning about this process is the first step to understanding the pricing of options and other more complicated derivatives. It should be noted that, in practice, we do not observe stock prices following continuous-variable, continuous-time processes. Stock prices are restricted to discrete values (e.g., multiples of a cent) and changes can be observed only when the exchange is open for trading. Nevertheless, the continuous-variable, continuous-time process proves to be a useful model for many purposes.

Many people feel that continuous-time stochastic processes are so complicated that they should be left entirely to "rocket scientists." This is not so. The biggest hurdle to understanding these processes is the notation. Here we present a step-by-step approach aimed at getting the reader over this hurdle. We also explain an important result known as Itô's lemma that is central to the pricing of derivatives.

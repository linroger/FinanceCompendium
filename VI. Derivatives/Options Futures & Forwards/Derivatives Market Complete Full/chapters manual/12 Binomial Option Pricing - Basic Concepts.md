---
title: Chapter 12 - Binomial Option Pricing: Basic Concepts
aliases:
  - Binomial Option Pricing
  - Binomial Model
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:20:00 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - binomial option pricing
  - replicating portfolio
  - risk-neutral valuation
secondary_tags:
  - delta hedging
  - binomial trees
  - option valuation models
cssclasses: academia
---

# Binomial Option Pricing: Basic Concepts

In this chapter we discuss the binomial option pricing model, with which we can compute the price of an option, given the characteristics of the stock or other underlying asset.

The binomial option pricing model assumes that, over a period of time, the price of the underlying asset can move up or down only by a specified amount—that is, the asset price follows a binomial distribution. Given this assumption, it is possible to determine a no-arbitrage price for the option. Surprisingly, this approach, which appears at first glance to be overly simplistic, can be used to price options, and it conveys much of the intuition underlying more complex (and seemingly more realistic) option pricing models. It is hard to overstate the value of thoroughly understanding the binomial approach to pricing options.

```d2
direction: right
Binomial: Binomial Option Pricing
Up: Price Up (uS)
Down: Price Down (dS)
Call: Call Option (max(0, S - K))
Put: Put Option (max(0, K - S))
Binomial -> Up: Up Move
Binomial -> Down: Down Move
Up -> Call: Option Payoff
Down -> Call: Option Payoff
Up -> Put: Option Payoff
Down -> Put: Option Payoff
```

Because of its usefulness, we devote this chapter to binomial option pricing. In this chapter, we will see how the binomial model works and use it to price both European and American call and put options on stocks, currencies, and futures contracts. As part of the pricing analysis, we will also see how market-makers can create options synthetically using the underlying asset and risk-free bonds.

## I. A ONE-PERIOD BINOMIAL TREE

Binomial pricing achieves its simplicity by making a very strong assumption about the stock price: At any point in time, the stock price can change to either an up value or a down value. In-between, greater or lesser values are not permitted. The restriction to two possible prices is why the method is called "binomial." The appeal of binomial pricing is that it displays the logic of option pricing in a simple setting, using only algebra to price options.

The binomial approach to pricing was first used by Sharpe (1978) as an intuitive way to explain option pricing. Binomial pricing was developed more formally by Cox et al. (1979) and Rendleman and Bartter (1979), who showed how to implement the model, demonstrated the link between the binomial model and the Black-Scholes model, and showed that the method provides a tractable way to price options for which early exercise may be optimal. The binomial model is often referred to as the "Cox-Ross-Rubinstein pricing model."

From Chapter 10 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

<table><tr><td>FIGURE I</td><td>60</td></tr><tr><td rowspan="2">Binomial tree depicting the movement of XYZ stock over 1 year. The current stock price is 41.</td><td>41</td></tr><tr><td>30</td></tr></table>

We begin with a simple example. Consider a European call option on the stock of XYZ, with a \$40 strike and 1 year to expiration. XYZ does not pay dividends and its current price is \$41. The continuously compounded risk-free interest rate is 8\%. We wish to determine the option price.

Since the stock's return over the next year is uncertain, the option could expire either in-the-money or out-of-the-money, depending upon whether the stock price is more or less than \$40. Intuitively, the valuation for the option should take into account both possibilities and assign values in each case. If the option expires out-of-the-money, its value is zero. If the option expires in-the-money, its value will depend upon how far in-the-money it is. To price the option, then, we need to characterize the uncertainty about the stock price at expiration.

Figure 1 represents the evolution of the stock price: Today the price is \$41, and in 1 year the price can be either \$60 or \$30. This depiction of possible stock prices is called a binomial tree. We will see shortly how to construct a binomial tree like that in Figure 1. For now, you should take the tree as given as we work through an option pricing example. Be aware that if we had started with a different tree, the numbers that follow, including the price, would all be different.

```d2
direction: right

S0: $41 {
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

S0 -> Su: "u = 1.463"
S0 -> Sd: "d = 0.732"

Su: $60 {
  style.fill: "#c8e6c9"
  style.stroke: "#388e3c"
}

Sd: $30 {
  style.fill: "#ffcdd2"
  style.stroke: "#d32f2f"
}
```

# Computing the Option Price

Now we compute the price of our 40-strike 1-year call. Consider two portfolios:

Portfolio A. Buy one call option. The cost of this is the call premium, which is what we are trying to determine.

Portfolio B. Buy 2/3 of a share of XYZ and borrow 18.462 at the risk-free rate. This position costs

$$
2/3 \times \$41 - \$18.462 = \$8.871
$$

Now we compare the payoffs to the two portfolios 1 year from now. Since the stock can take on only two values, we can easily compute the value of each portfolio at each possible stock price.

For Portfolio A, the time 1 payoff is max[0, S_1 - \$40]:

<table><tr><td></td><td colspan="2">Stock Price in 1 Year (S1)</td></tr><tr><td></td><td>$30</td><td>$60</td></tr><tr><td>Payoff</td><td>0</td><td>20</td></tr></table>

In computing the payoff for Portfolio B, we assume that we sell the shares at the market price and that we repay the borrowed amount, plus interest (\$18.462 \times e^{0.08} = \$20). Thus we have

<table><tr><td></td><td colspan="2">Stock Price in 1 Year (S1)</td></tr><tr><td></td><td>$30</td><td>$60</td></tr><tr><td>2/3 purchased shares</td><td>$20</td><td>$40</td></tr><tr><td>Repay loan of $18.462</td><td>-$20</td><td>-\$20</td></tr><tr><td>Total payoff</td><td>0</td><td>\$20</td></tr></table>

Note that Portfolios A and B have the same payoff: Zero if the stock price goes down, in which case the option is out-of-the-money, and \$20 if the stock price goes up. Therefore, both portfolios should have the same cost. Since Portfolio B costs \$8.871, then given our assumptions, the price of one option must be 8.871. Portfolio B is a synthetic call, mimicking the payoff to a call by buying shares and borrowing.

The idea that positions that have the same payoff should have the same cost is called the law of one price. This example uses the law of one price to determine the option price. We will see shortly that there is an arbitrage opportunity if the law of one price is violated.

The call option in the example is replicated by holding $2/3$ shares, which implies that one option has the risk of $2/3$ shares. The value $2/3$ is the delta $(\Delta)$ of the option: the number of shares that replicates the option payoff. Delta is a key concept, and we will say much more about it later.

Finally, we can say something about the expected return on the option. Suppose XYZ has a positive risk premium (i.e., the expected return on XYZ is greater than the risk-free rate). Since we create the synthetic call by borrowing to buy the stock, the call is equivalent to a leveraged position in the stock, and therefore the call will have an expected return greater than that on the stock. The option elasticity measures the amount of leverage implicit in the option.

# The Binomial Solution

In the preceding example, how did we know that buying  $2/3$  of a share of stock and borrowing  $\$ 18.462$  would replicate a call option?

We have two instruments to use in replicating a call option: shares of stock and a position in bonds (i.e., borrowing or lending). To find the replicating portfolio, we need to find a combination of stock and bonds such that the portfolio mimics the option.

To be specific, we wish to find a portfolio consisting of  $\Delta$  shares of stock and a dollar amount  $B$  in lending, such that the portfolio imitates the option whether the stock rises or falls. We will suppose that the stock has a continuous dividend yield of  $\delta$ , which we reinvest in the stock. Thus, if you buy one share at time  $t$ , at time  $t + h$  you will have  $e^{\delta h}$  shares. The up and down movements of the stock price reflect the ex-dividend price.

Let  $S$  be the stock price today. We can write the stock price as  $uS$  when the stock goes up and as  $dS$  when the price goes down. The stock price tree is then:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/cd856708bd9338b7b916ae70c22dcbf1b4d6fd192f78df98d1cca44a8d94cecd.jpg)

In this tree  $u$  is interpreted as one plus the rate of capital gain on the stock if it goes up, and  $d$  is one plus the rate of capital loss if it goes down. (If there are dividends, the total return is the capital gain or loss, plus the dividend.)

Let  $C_u$  and  $C_d$  represent the value of the option when the stock goes up or down, respectively. The tree for the stock implies a corresponding tree for the value of the option:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/94112754cbee3cb9d6af142fee559ef80ae7e319b197f1cd3ea9e05755393b16.jpg)

If the length of a period is  $h$ , the interest factor per period is  $e^{rh}$ . The problem is to solve for  $\Delta$  and  $B$  such that our portfolio of  $\Delta$  shares and  $B$  in lending duplicates the option payoff. The value of the replicating portfolio at time  $h$ , with stock price  $S_h$ , is

$$
\Delta S _ {h} e ^ {\delta h} + e ^ {r h} B
$$

At the prices  $S_{h} = dS$  and  $S_{h} = uS$ , a successful replicating portfolio will satisfy

$$
(\Delta \times dS \times e^{\delta h}) + (B \times e^{r h}) = C_d
$$

$$
(\Delta \times uS \times e^{\delta h}) + (B \times e^{r h}) = C_u
$$

This is two equations in the two unknowns  $\Delta$  and  $B$ . Solving for  $\Delta$  and  $B$  gives

$$
\Delta = e^{-\delta h} \frac{C_u - C_d}{S(u - d)} \tag{1}
$$

$$
\boxed{B = e^{-r h} \frac{u C_d - d C_u}{u - d}} \tag{2}
$$

Note that when there are dividends, the formula adjusts the number of shares in the replicating portfolio,  $\Delta$ , to offset the dividend income.

Given the expressions for  $\Delta$  and  $B$ , we can derive a simple formula for the value of the option. The cost of creating the option is the net cash required to buy the shares and bonds. Thus, the cost of the option is  $\Delta S + B$ . Using equations (1) and (2), we have

$$
\Delta S + B = e^{-r h} \left(C_u \frac{e^{(r - \delta)h} - d}{u - d} + C_d \frac{u - e^{(r - \delta)h}}{u - d}\right) \tag{3}
$$

The assumed stock price movements,  $u$  and  $d$ , should not give rise to arbitrage opportunities. In particular, we require that

$$ u > e^{(r - \delta)h} > d \tag{4}
$$

To see why this condition must hold, suppose  $\delta = 0$ . If the condition were violated, we would short the stock to hold bonds (if  $e^{rh} \geq u$ ), or we would borrow to buy the stock (if  $d \geq e^{rh}$ ). Either way, we would earn an arbitrage profit. Therefore the assumed process could not be consistent with any possible equilibrium. Problem 23 asks you to verify that equation (4) must hold when  $\delta > 0$ .

Note that because  $\Delta$  is the number of shares in the replicating portfolio, it can also be interpreted as the sensitivity of the option to a change in the stock price. If the stock price changes by \$1, then the option price,  $\Delta S + B$ , changes by  $\Delta$ . This interpretation will be quite important later.

Example 1. Here is the solution for  \Delta ,  B , and the option price using the stock price tree depicted in Figure 1. There we have  u = \60 / \41 = 1.4634 ,  d = \30 / \41 = 0.7317 , and  \delta = 0 . In addition, the call option had a strike price of  \40  and 1 year to expiration—hence,  h = 1 . Thus  C_u = \60 - \40 = \20 , and  C_d = 0 . Using equations (1) and (2), we have

$$
\Delta = \frac{\$20 - 0}{\$41 \times (1.4634 - 0.7317)} = 2/3
$$

Hence, the option price is given by

$$
\Delta S + B = 2/3 \times \$41 - \$18.462 = \$8.871
$$

Note that if we are interested only in the option price, it is not necessary to solve for  $\Delta$  and  $B$ ; that is just an intermediate step. If we want to know only the option price, we can use equation (3) directly:

$$
e^{-0.08 \times 1/3}(\$1.401 \times \frac{e^{0.08 \times 1/3} - 0.8637}{1.2212 - 0.8637} + \$8.363 \times \frac{1.2212 - e^{0.08 \times 1/3}}{1.2212 - 0.8637}) = \$5.046
$$

Throughout this chapter we will continue to report  $\Delta$  and  $B$ , since we are interested not only in the price but also in the replicating portfolio.

## Arbitraging a Mispriced Option

What if the observed option price differs from the theoretical price? Because we have a way to replicate the option using the stock, it is possible to take advantage of the mispricing and fulfill the dream of every trader—namely, to buy low and sell high.

The following examples illustrate that if the option price is anything other than the theoretical price, arbitrage is possible.

The Option is Overpriced. Suppose that the market price for the option is \$9.00, instead of \$8.871. We can sell the option, but this leaves us with the risk that the stock price at expiration will be 60 and we will be required to deliver the stock.

We can address this risk by buying a synthetic option at the same time we sell the actual option. We have already seen how to create the synthetic option by buying 2/3 shares and borrowing 18.462. If we simultaneously sell the actual option and buy the synthetic, the initial cash flow is

$$
\underbrace{\$9.00}_{\text{Receive option premium}} - \underbrace{2/3 \times \$41}_{\text{Cost of shares}} + \underbrace{\$18.462}_{\text{Borrowing}} = \$0.129
$$

We earn 0.129, the amount by which the option is mispriced.

Now we verify that there is no risk at expiration. We have

<table><tr><td></td><td colspan="2">Stock Price in 1 Year (S1)</td></tr><tr><td></td><td>$30</td><td>$60</td></tr><tr><td>Written call</td><td>$0</td><td>-$20</td></tr><tr><td>2/3 Purchased shares</td><td>$20</td><td>$40</td></tr><tr><td>Repay loan of $18.462</td><td>-$20</td><td>-\$20</td></tr><tr><td>Total payoff</td><td>\$0</td><td>0</td></tr></table>

By hedging the written option, we eliminate risk.

The Option is Underpriced. Now suppose that the market price of the option is  \$8.25. We wish to buy the underpriced option. Of course, if we are unhedged and the stock price falls at expiration, we lose our investment. We can hedge by selling a synthetic option. We accomplish this by reversing the position for a synthetic purchased call: We short 2/3 shares and invest\$ 18.462 of the proceeds in Treasury bills. The cash flow is

$$
\underbrace{-\$8.25}_{\text{Option premium}} + \underbrace{2/3 \times \$41}_{\text{Short-sale proceeds}} - \underbrace{\$18.462}_{\text{Invest in T-bills}} = \$0.621
$$

At expiration we have

<table><tr><td></td><td colspan="2">Stock Price in 1 Year (S1)</td></tr><tr><td></td><td>$30</td><td>$60</td></tr><tr><td>Purchased call</td><td>$0</td><td>$20</td></tr><tr><td>2/3 Short-sold shares</td><td>-$20</td><td>-$40</td></tr><tr><td>Sell T-bill</td><td>$20</td><td>$20</td></tr><tr><td>Total payoff</td><td>$0</td><td>$0</td></tr></table>

We have earned the amount by which the option was mispriced and hedged the risk associated with buying the option.

## A Graphical Interpretation of the Binomial Formula

The binomial solution for  $\Delta$  and  $B$ , equations (1) and (2), is obtained by solving two equations in two unknowns. Letting  $C_h$  and  $S_h$  be the option and stock value after one binomial period, and supposing  $\delta = 0$ , the equations for the portfolio describe a line with

## FIGURE 2

The payoff to an expiring call option is the dark heavy line. The payoff to the option at the points  $dS$  and  $uS$  are  $C_d$  and  $C_u$  (at point  $D$ ). The portfolio consisting of  $\Delta$  shares and  $B$  bonds has intercept  $e^{rh}B$  and slope  $\Delta$ , and by construction goes through both points  $E$  and  $D$ . The slope of the line is calculated as  $\frac{\mathrm{Rise}}{\mathrm{Run}}$  between points  $E$  and  $D$ , which gives the formula for  $\Delta$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/22acee3554307759a0d0bd9a066039da1f6bc357b1a0d74e3b274ac45bbe4281.jpg) the formula

$$
C_h = \Delta \times S_h + e^{r h} B
$$

This is graphed as line  $AED$  in Figure 2, which shows the option payoff as a function of the stock price at expiration.

We choose  $\Delta$  and  $B$  to yield a portfolio that pays  $C_d$  when  $S_h = dS$  and  $C_u$  when  $S_h = uS$ . Hence, by construction this line runs through points  $E$  and  $D$ . We can control the slope of a payoff diagram by varying the number of shares,  $\Delta$ , and its height by varying the number of bonds,  $B$ . It is apparent that a line that runs through both  $E$  and  $D$  must have slope  $\Delta = (C_u - C_d) / (uS - dS)$ . Also, the point  $A$  is the value of the portfolio when  $S_h = 0$ , which is the time- $h$  value of the bond position,  $e^{rh}B$ . Hence,  $e^{rh}B$  is the  $y$ -axis intercept of the line.

You can see by looking at Figure 2 that any line replicating a call will have a positive slope  $(\Delta >0)$  and a negative intercept  $(B < 0)$ . As an exercise, you can verify graphically that a portfolio replicating a put would have a negative slope  $(\Delta < 0)$  and positive intercept  $(B > 0)$ .

## Risk-Neutral Pricing

In the preceding option price calculations, we did not make use of (nor did we discuss) the probability that the stock price would move up or down. The strategy of holding  $\Delta$  shares and  $B$  bonds replicates the option payoff whichever way the stock moves, so the probability of an up or down movement is irrelevant for computing  $\Delta S + B$ , which is the option price.

Although we do not need probabilities to price the option, there is a very important probabilistic interpretation of equation (3). Define

$$
p^* = \frac{1 - d}{u - d} \tag{21}
$$

We call  $p^*$  the risk-neutral probability of an increase in the stock price. You can verify that  $0 < p^* < 1$  (this follows from inequality 4), so that  $p^*$  looks like a probability. Using equation (5), and the fact that  $C = \Delta S + B$ , we can rewrite equation (3) as

$$
C = e^{-rh}(p^* C_u + (1 - p^*) C_d) \tag{24}
$$

Because  $p^*$  and  $1 - p^*$  are both positive and sum to one, the term  $p^* C_u + (1 - p^*) C_d$  looks like an expected cash flow computed using the risk-neutral probability. This expected cash flow is then discounted using the risk-free rate. The pricing procedure illustrated in equation (6), in which a risk-neutral expected value is discounted at the risk-free rate, is called risk-neutral valuation.

We can also use equation (6) to compute forward and prepaid forward prices. If we substitute next period's possible stock prices in place of the option prices in equation (6), after some algebra we obtain

$$ e^{-r h} \left[ p^* u S + (1 - p^*) d S \right] = S e^{-\delta h} \tag{7}
$$

This is the prepaid forward price. If we do not discount the expected payoff, we obtain the forward price, which is a value denominated in time  $h$  dollars:

$$ p^* u S + (1 - p^*) d S = S e^{(r - \delta)h} = F_{t,t+h} \tag{8}
$$

You can think about  $p^*$  as the probability for which the expected stock price is the forward price.

When you first encounter risk-neutral valuation, it appears peculiar. The risk-neutral probability is generally not the actual probability of the stock price going up, and the expected cash flow in equation (6) is discounted at the risk-free rate even though the option has the risk of a levered investment in the stock. Nevertheless, risk-neutral valuation is one of the most important ideas in the derivatives markets.

## 2. CONSTRUCTING A BINOMIAL TREE

In this section we explain the construction of the binomial tree. We will model the stock returns  $u$  and  $d$  using the equations

$$ u = e^{(r - \delta)h + \sigma \sqrt{h}} \tag{9}
$$

$$ d = e^{(r - \delta)h - \sigma \sqrt{h}}
$$ where  $r$  is the continuously compounded annual interest rate,  $\delta$  is the continuous dividend yield,  $\sigma$  is the annual volatility, and  $h$  is the length of a binomial period in years.


In all likelihood you do not find equation (9) to be immediately intuitive. Thus, in this section we explain a number of the concepts underlying equation (9). We first review some properties of continuously compounded returns and define volatility. We then explain the construction of  $u$  and  $d$ , and then discuss the estimation of historical volatility.

### Continuously Compounded Returns

What follows in this section relies on calculations based on continuously compounded returns. Returns can be expressed in a variety of ways. Continuously compounded returns are mathematically convenient and widely used in practice, both in pricing models and when computing volatility. Here we briefly summarize the important properties of continuously compounded returns.

- The logarithmic function computes continuously compounded returns from prices. Let  $S_{t}$  and  $S_{t + h}$  be stock prices at times  $t$  and  $t + h$ . The continuously compounded return between  $t$  and  $t + h$ ,  $r_{t,t + h}$  is then

$$ r_{t,t+h} = \ln\left(S_{t+h}/S_t\right) \tag{10}
$$

- The exponential function computes prices from continuously compounded returns. If we know the continuously compounded return,  $r_{t,t + h}$ , we can obtain  $S_{t + h}$  by exponentiating both sides of equation (10). This gives

$$
S_{t+h} = S_t e^{r_{t,t+h}} \tag{11}
$$

- Continuously compounded returns are additive. Suppose we have continuously compounded returns over consecutive periods—for example,  $r_{t,t + h}, r_{t + h,t + 2h}$ , etc. The continuously compounded return over a long period is the sum of continuously compounded returns over the shorter periods, i.e.,

$$ r_{t,t+nh} = \sum_{i=1}^n r_{t+(i-1)h,t+ih} \tag{12}
$$

Here are some examples illustrating these statements.

Example 2. The stock price on four consecutive days is $100, $103, \$97, and \$98. The daily continuously compounded returns are

$$
\ln(103/100) = 0.02956; \quad \ln(97/103) = -0.06002; \quad \ln(98/97) = 0.01026
$$

The continuously compounded return from day 1 to day 4 is  $\ln (98 / 100) = -0.0202$ . This is also the sum of the daily continuously compounded returns:

$$ r _ {1, 2} + r _ {2, 3} + r _ {3, 4} = 0. 0 2 9 5 6 + (- 0. 0 6 0 0 2) + 0. 0 1 0 2 6 = - 0. 0 2 0 2
$$

Example 3. The stock price is  \$100 at time 0 and\$ 10 at 1 year later. The percentage return is (10 - 100)/100 = -0.9 = -90\%. The continuously compounded return is  $\ln(10 / 100) = -2.30 = -230\%$ . (A continuously compounded return can be less than 100\%).

Example 4. The stock price today is 100. Over the next year the continuously compounded return is -500\%. Using equation (11), the end-of-year price is S_{1} = 100e^{-5.00} = \0.6738\%. The percentage return is 0.6738 / 100 - 1 = -99.326\%.

### Volatility

The volatility of an asset, defined as the standard deviation of continuously compounded returns, is a key input for any option pricing calculation. We can express volatility over different periods. For example, we could compute monthly volatility (the standard deviation of the monthly return) or annual volatility (the standard deviation of the annual return). How are these related?

Suppose that the continuously compounded return over month  $i$  is  $r_{\text{monthly},i}$ . From equation (12), we can sum continuously compounded returns. Thus, the annual continuously compounded return is

$$ r_{\text{annual}} = \sum_{i=1}^{12} r_{\text{monthly},i}
$$

The variance of the annual continuously compounded return is therefore

$$
\operatorname{Var}(r_{\text{annual}}) = \operatorname{Var}\left(\sum_{i=1}^{12} r_{\text{monthly},i}\right) \tag{13}
$$

It is common to assume that returns are uncorrelated over time; i.e., the realization of the return in one period does not affect the expected returns in subsequent periods. With this assumption, the variance of a sum is the sum of the variances. Also suppose that each month has the same variance of returns. If we let  $\sigma^2$  denote the annual variance, then from equation (13) we have

$$
\sigma^2 = 12 \times \sigma_{\mathrm{monthly}}^2
$$

Taking the square root of both sides and rearranging, we can express the monthly standard deviation in terms of the annual standard deviation,  $\sigma$ :

$$
\sigma_{\mathrm{monthly}} = \frac{\sigma}{\sqrt{12}}
$$

To generalize this formula, if we split the year into  $n$  periods of length  $h$  (so that  $h = 1/n$ ), the standard deviation over the period of length  $h$ ,  $\sigma_h$ , is

$$
\boxed{\sigma_h = \sigma \sqrt{h}} \tag{14}
$$

The standard deviation thus scales with the square root of time. If we know  $\sigma_h$ , equation (14) implies that

$$
\boxed{\sigma = \frac{\sigma_h}{\sqrt{h}}} \tag{15}
$$

### Constructing $u$ and $d$

As a starting point in constructing  $u$  and  $d$ , we can ask: What if there were no uncertainty about the future stock price? With certainty, the stock price next period must equal the forward price. The formula for the forward price is

$$
F_{t,t+h} = S_t e^{(r - \delta)h} \tag{16}
$$

Thus, without uncertainty we must have  $S_{t + h} = F_{t,t + h}$ ; the rate of return on the stock must be the risk-free rate.5

We incorporate uncertainty into the stock return using volatility, which measures how sure we are that the stock rate of return will be close to the expected rate of return. Stocks with a larger  $\sigma$  will have a greater chance of a return far from the expected return. We model the stock price evolution by adding uncertainty to the forward price:

$$
dS_{t} = F_{t,t+h}e^{-\sigma\sqrt{h}} \quad \text{or} \quad d = \frac{F_{t,t+h}}{S_{t}}e^{-\sigma\sqrt{h}}
$$

Using equation (16), we can rewrite equation (17) to obtain equation (9). This is the formula we will use to construct binomial trees. Note that if we set volatility equal to zero (i.e.,  $\sigma = 0$ ), we will have  $uS_{t} = dS_{t} = F_{t,t + h}$ . Thus, with zero volatility, the price will still rise over time, just as with a Treasury bill. Zero volatility does not mean that prices are fixed; it means that prices are known in advance.

We will refer to a tree constructed using equation (9) as a "forward tree."

### Estimating Historical Volatility

In selecting the parameters to use in the binomial model, the most difficult decision usually is choosing the value for  $\sigma$ , which we cannot observe directly. One possibility is to measure  $\sigma$  by computing the standard deviation of continuously compounded historical returns. Volatility computed from historical stock returns is historical volatility.

Table 1 lists 10 weeks of Wednesday closing prices for the S&P 500 composite index and for IBM, along with the standard deviation of the continuously compounded returns, computed using the StDev function in Excel. Based on the historical returns in Table 1, the weekly standard deviation of returns was 0.02800 and 0.02486 for the S&P 500 index and IBM, respectively. These standard deviations measure the variability in weekly returns. We compute annualized standard deviations by using equation (15): Multiply the weekly

TABLE 1

Weekly prices and continuously compounded returns for the S&P 500 index and IBM, from 7/7/2010 to 9/8/2010.

<table><tr><td rowspan="2">Date</td><td colspan="2">S&amp;P 500</td><td colspan="2">IBM</td></tr><tr><td>Price</td><td>ln(St/St-1)</td><td>Price</td><td>ln(St/St-1)</td></tr><tr><td>7/7/2010</td><td>1060.27</td><td></td><td>127</td><td></td></tr><tr><td>7/14/2010</td><td>1095.17</td><td>0.03239</td><td>130.72</td><td>0.02887</td></tr><tr><td>7/21/2010</td><td>1069.59</td><td>-0.02363</td><td>125.27</td><td>-0.04259</td></tr><tr><td>7/28/2010</td><td>1106.13</td><td>0.03359</td><td>128.43</td><td>0.02491</td></tr><tr><td>8/4/2010</td><td>1127.24</td><td>0.01890</td><td>131.27</td><td>0.02187</td></tr><tr><td>8/11/2010</td><td>1089.47</td><td>-0.03408</td><td>129.83</td><td>-0.01103</td></tr><tr><td>8/18/2010</td><td>1094.16</td><td>0.00430</td><td>129.39</td><td>-0.00338</td></tr><tr><td>8/25/2010</td><td>1055.33</td><td>-0.03613</td><td>125.27</td><td>-0.03238</td></tr><tr><td>9/1/2010</td><td>1080.29</td><td>0.02338</td><td>125.77</td><td>0.00398</td></tr><tr><td>9/8/2010</td><td>1098.87</td><td>0.01705</td><td>126.08</td><td>0.00246</td></tr><tr><td>Standard deviation</td><td>0.02800</td><td></td><td>0.02486</td><td></td></tr><tr><td>Standard deviation × √52</td><td>0.20194</td><td></td><td>0.17926</td><td></td></tr></table> standard deviations by  $\sqrt{52}$  (because  $h = 1 / \sqrt{52}$ ), giving annualized historical standard deviations of  $20.19\%$  for the S&P 500 index and  $17.93\%$  for IBM. We can use the estimated annualized standard deviation as  $\sigma$  in constructing a binomial tree.

You should not be misled by the fact that the standard deviations were estimated with weekly data. Once we annualize the estimate we can then multiply the result by  $\sqrt{h}$  (as in equation (9)) to obtain the appropriate standard deviation for any size binomial step.

You might be wondering about how dividends affect the standard deviation calculation. The returns in Table 1 are based on ex-dividend prices, in particular ignoring IBM's payment of 0.65 with an ex-dividend date of August 6, 2010. Including the dividend in the return calculation in this example changes the estimated annual standard deviation to 0.1778. Most of the time dividends are infrequent and small; the standard deviation will be similar whether you compute a standard deviation accounting for dividends or ignoring them.

The more important question is whether the standard deviation calculation should be based on returns that include dividends (the total return volatility). For option pricing it is generally the volatility of the price excluding dividends that matters. For a European option, the payoff clearly depends on the ex-dividend price, so the volatility calculation should exclude dividends. The same is true for American options: If an American call is not exercised before expiration, the payoff depends on the ex-dividend price. If it is exercised before expiration, the option holder exercises prior to a dividend. American puts are exercised ex-dividend. Thus, for standard options, the volatility that matters excludes dividends. For an option protected against dividends, it would be appropriate to base pricing upon the total return volatility, which includes dividends.

## FIGURE 3

Binomial tree for pricing a European call option; assumes  S = \41.00 ,  K = \$40.00 ,  \sigma = 0.30 ,  r = 0.08 ,  T = 1.00  years,  \delta = 0.00 , and  h = 1.000 . At each node the stock price, option price,  \Delta , and  B  are given. Option price in bold italic signifies that exercise is optimal at that node.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/1ce7cf384c26317b1e40c88a1a50e8ee4996e3bc7dc4b0969865d66a69da5976.jpg)

### One-Period Example with a Forward Tree

We began this section by assuming that the stock price followed the binomial tree in Figure 1. The up and down stock prices of  \$30 and\$ 60 were selected to make the example easy to follow. Now we present an example where everything is the same except that we use equation (9) to construct the up and down moves.

Suppose volatility is 30\%. Since the period is 1 year, we have h = 1, so that \sigma \sqrt{h} = 0.30. We also have S_0 = \41, r = 0.08, and \delta = 0. Using equation (9), we get

$$ u S = \$41 e^{(0.08 - 0) \times 1 + 0.3 \times \sqrt{1}} = \$59.954 \tag {18}
$$

$$ d S = \$41 e^{(0.08 - 0) \times 1 - 0.3 \times \sqrt{1}} = \$32.903

$$

Because the binomial tree is different than in Figure 1, the option price will be different as well.

Using the stock prices given in equation (18), we have  $u = \59.954 / \$ 41 = 1.4623  and  $d = \32.903 / \$ 41 = 0.8025 . With  $K = \40$ , we have  $C_u = \$ 59.954 - \$40 = \$19.954  and  $C_d = 0$ . Using equations (1) and (2), we obtain

$$

\Delta = \frac {\$19.954 - 0}{\$41 \times (1.4623 - 0.8025)} = 0.7376

$$

$$

B = e^{-0.08} \frac{1.4623 \times \$0 - 0.8025 \times \$19.954}{1.4623 - 0.8025} = -\$22.405

$$

Hence, the option price is given by

$$

\Delta S + B = 0.7376 \times \$41 - \$22.405 = \$7.839

$$

This example is summarized in Figure 3.

We have covered a great deal of ground in this section, but there are still many issues remaining. The simple binomial tree seems too simple to provide an accurate option price. Unanswered questions include how to handle more than one binomial period, how to price put options, and how to price American options. With the basic binomial formula in hand, we can now turn to those questions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/f225bec08dfd21b16ce3e318684dc79779ff5f0cd2509ed2ff8bd1e8a5c779b3.jpg)

## 3. TWO OR MORE BINOMIAL PERIODS

We now see how to extend the binomial tree to more than one period. We begin by pricing a 2-year option using a two-period binomial model. Then we will see how to accommodate many periods of arbitrary length.

### A Two-Period European Call

We begin first by adding a single period to the tree in Figure 3; the result is displayed in Figure 4. We can use that tree to price a 2-year option with a  \$40 strike when the current stock price is\$ 41, assuming all inputs are the same as before.

Since we are increasing the time to maturity for a call option on a non-dividend-paying stock, we expect the option premium to increase. In this example the two-period tree will give us a price of  \$10.737, compared to\$ 7.839 in Figure 3.

Constructing the Tree. To see how to construct the tree, suppose that we move up in year 1, to  S_{u} = \59.954 . If we reach this price, then we can move further up or down according to equation (17). We get

$$

S _ {u u} = \ 5 9. 9 5 4 e ^ {0. 0 8 + 0. 3} = \ 8 7. 6 6 9

$$ and


$$

S _ {u d} = \ 5 9. 9 5 4 e ^ {0. 0 8 - 0. 3} = \ 4 8. 1 1 4

$$

The subscript  $uu$  means that the stock has gone up twice in a row and the subscript  $ud$  means that the stock has gone up once and then down.

Similarly, if the price in 1 year is $d = $32.903, we have

$$

S _ {d u} = \ 32. 9 0 3 e ^ {0. 0 8 + 0. 3} = \ 4 8. 1 1 4

$$ and


$$

S _ {d d} = \ 32. 9 0 3 e ^ {0. 0 8 - 0. 3} = \ 2 6. 4 0 5

$$

Note that an up move followed by a down move  $(S_{ud})$  generates the same stock price as a down move followed by an up move  $(S_{du})$ . This is called a recombining tree. If an up move followed by a down move led to a different price than a down move followed by an up move, we would have a nonrecombining tree. $^7$  A recombining tree has fewer nodes, which means less computation is required to compute an option price.

We also could have used equation (9) directly to compute the year-2 stock prices. Recall that  $u = e^{0.08 + 0.3} = 1.462$  and  $d = e^{0.08 - 0.3} = 0.803$ . We have

$$

S_{uu} = u^{2} \times \$41 = e^{2 \times (0.08 + 0.3)} \times \$41 = \$87.669

$$

$$

S_{ud} = S_{du} = u \times d \times \$41 = e^{(0.08 + 0.3)} \times e^{(0.08 - 0.3)} \times \$41 = \$48.114

$$

$$

S_{dd} = d^{2} \times \$41 = e^{2 \times (0.08 - 0.3)} \times \$41 = \$26.405

$$

Pricing the Call Option. How do we price the option when we have two binomial periods? The key insight is that we work backward through the binomial tree. In order to use equation (3), we need to know the option prices resulting from up and down moves in the subsequent period. At the outset, the only period where we know the option price is at expiration.

Knowing the price at expiration, we can determine the price in period 1. Having determined that price, we can work back to period 0.

Figure 4 exhibits the option price at each node as well as the details of the replicating portfolio at each node. Remember, however, when we use equation (3), it is not necessary to compute  $\Delta$  and  $B$  in order to derive the option price. Here are details of the solution:

Year 2, Stock Price = \$87.669. Since we are at expiration, the option value is max(0, S - K) = \$47.669.

Year 2, Stock Price = \$48.114. Again we are at expiration, so the option value is \$8.114.

Year 2, Stock Price = 26.405. Since the option is out of the money, the value is 0.

Year 1, Stock Price = \$59.954. At this node we use equation (3) to compute the option value. (Note that once we are at this node, the "up" stock price,  $uS$ , is \$87.669, and the "down" stock price,  $dS$ , is 48.114.)

$$ e^{-0.08} \left(\$47.669 \times \frac{e^{0.08} - 0.803}{1.462 - 0.803} + \$8.114 \times \frac{1.462 - e^{0.08}}{1.462 - 0.803}\right) = \$23.029 $$

Year 1, Stock Price = 32.903. Again we use equation (3) to compute the option value:

$$ e^{-0.08} \left(\$8.114 \times \frac{e^{0.08} - 0.803}{1.462 - 0.803} + \$0 \times \frac{1.462 - e^{0.08}}{1.462 - 0.803}\right) = \$3.187 $$

Year 0, Stock Price = \$41. Again using equation (3):

$$ e^{-0.08} \left(\$23.029 \times \frac{e^{0.08} - 0.803}{1.462 - 0.803} + \$3.187 \times \frac{1.462 - e^{0.08}}{1.462 - 0.803}\right) = \$10.737
$$

Notice the following:

- The option price is greater for the 2-year than for the 1-year option, as we would expect.
- We priced the option by working backward through the tree, starting at the end and working back to the first period.
- The option's  $\Delta$  and  $B$  are different at different nodes. In particular, at a given point in time,  $\Delta$  increases to 1 as we go further into the money.
- We priced a European option, so early exercise was not permitted. However, permitting early exercise would have made no difference. At every node prior to expiration, the option price is greater than  $S - K$ ; hence we would not have exercised even if the option had been American.
- Once we understand the two-period option, it is straightforward to value an option using more than two binomial periods. The important principle is to work backward through the tree.

### Many Binomial Periods

An obvious objection to the binomial calculations thus far is that the stock can only have two or three different values at expiration. It seems plausible that to increase accuracy we would want to divide the time to expiration into more periods, generating a more realistic tree. Fortunately, the generalization to many binomial periods is straightforward.

To illustrate using more binomial periods, we re-examine the 1-year European call option in Figure 3, which has a  \$40 strike and initial stock price of\$ 41. We use equation (9) to generate the up and down moves. Suppose there are three binomial periods. With a 1-year call, the length of a period is  $h = \frac{1}{3}$ . We will assume that other inputs stay the same, so  $r = 0.08$  and  $\sigma = 0.3$ . Equation (9) then automatically generates a per-period interest rate of  $rh = 0.027$  and volatility of  $\sigma \sqrt{h} = 0.1732$ .

Figure 5 depicts the stock price and option price tree for this option. The option price is  \$7.074, as opposed to\$ 7.839 in Figure 3. The difference occurs because the numerical approximation is different; it is quite common to see large changes in a binomial price when the number of periods,  $n$ , is changed, particularly when  $n$  is small.

Since the length of the binomial period is shorter,  $u$  and  $d$  are closer to 1 than before (1.2212 and 0.8637 as opposed to 1.462 and 0.803 with  $h = 1$ ). Just to be clear about the procedure, here is how the second-period nodes are computed:

$$
r_{1,2} + r_{2,3} + r_{3,4} = 0.02956 + (-0.06002) + 0.01026 = -0.0202
$$

The remaining nodes are computed similarly.

The option price is computed by working backward. The risk-neutral probability of the stock price going up in a period is

### FIGURE 5

Binomial tree for pricing a European call option; assumes  $S = \$ 41.00 ,  $K = \40.00$ ,  $\sigma = 0.30$ ,  $r = 0.08$ ,  $T = 1.00\$  years,  $\delta = 0.00$ , and  $h = 0.333$ . At each node the stock price, option price,  $\Delta$ , and  $B$  are given. Option prices in bold italic signify that exercise is optimal at that node.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/fb8573f786102babe14a2adb5cb3e9eee15b9515a8cd4ac736d109af512259db.jpg)

$$
d = e^{-\sigma\sqrt{h}}
$$

The option price at the node where  S = \43.246 , for example, is then given by

$$
e^{-0.05 \times 1/3}[0.457 \times \$87.747 + (1 - 0.457) \times \$32.779] = \$56.942
$$

Option prices at the remaining nodes are priced similarly.

## 4. PUT OPTIONS

Thus far we have priced only call options. The binomial method easily accommodates put options also, as well as other derivatives. We compute put option prices using the same stock price tree and in almost the same way as call option prices; the only difference with a European put option occurs at expiration: Instead of computing the price as  $\max(0, S - K)$ , we use  $\max(0, K - S)$ .

Figure 6 shows the binomial tree for a European put option with 1 year to expiration and a strike of  \$40 when the stock price is\$ 41. This is the same stock price tree as in Figure 5.

### FIGURE 6

Binomial tree for pricing a European put option; assumes  $S = \$ 41.00 ,  $K = \40.00$ ,  $\sigma = 0.30$ ,  $r = 0.08$ ,  $T = 1.00\$  years,  $\delta = 0.00$ , and  $h = 0.333$ . At each node the stock price, option price,  $\Delta$ , and  $B$  are given. Option prices in bold italic signify that exercise is optimal at that node.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/1aaf92b7d904a2b365ff7b013278f9c0ef2ffd559f0208828f60f12f92b9fe4b.jpg)

To illustrate the calculations, consider the option price at the node where the stock price is 35.411. The option price at that node is computed as

$$ e^{-0.08 \times 1/3} \left(1.401 \times \frac{e^{0.08 \times 1/3} - 0.8637}{1.2212 - 0.8637} + 8.363 \times \frac{1.2212 - e^{0.08 \times 1/3}}{1.2212 - 0.8637}\right) = 5.046
$$

Figure 6 does raise one issue that we have not previously had to consider. Notice that at the node where the stock price is  \$30.585, the option price is\$ 8.363. If this option were American, it would make sense to exercise at that node. The option is worth \$8.363 when held until expiration, but it would be worth  $40 -$ 30.585 = \$9.415 if exercised at that node. Thus, in this case the American option should be more valuable than the otherwise equivalent European option. We will now see how to use the binomial approach to value American options.

## 5. AMERICAN OPTIONS

Since it is easy to check at each node whether early exercise is optimal, the binomial method is well-suited to valuing American options. The value of the option if it is left "alive" (i.e., unexercised) is given by the value of holding it for another period, equation (3). The value of the option if it is exercised is given by  $\max(0, S - K)$  if it is a call and  $\max(0, K - S)$  if it is a put.

### FIGURE 7

Binomial tree for pricing an American put option; assumes  $S = \$ 41.00 ,  $K = \40.00$ ,  $\sigma = 0.30$ ,  $r = 0.08$ ,  $T = 1.00\$  years,  $\delta = 0.00$ , and  $h = 0.333$ . At each node the stock price, option price,  $\Delta$ , and  $B$  are given. Option prices in bold italic signify that exercise is optimal at that node.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/3fcb2a8e6f571269d8f68422d0e4ec30c72f47dfec0e8ea8859b41758ae9135d.jpg)

Thus, for an American put, the value of the option at a node is given by

$$
\begin{array}{l} P(S,K,t) = \\ \max(K - S, e^{-rh}[P(uS,K,t+h)p^* + P(dS,K,t+h)(1 - p^*)]) \tag{19} \\ \end{array}
$$ where,  $p^*$  is given by equation (5),


$$ p ^ {*} = \frac {e ^ {(r - \delta) h} - d}{u - d}
$$

Figure 7 presents the binomial tree for the American version of the put option valued in Figure 6. The only difference in the trees occurs at the node where the stock price is  \$30.585. The American option at that point is worth\$ 9.415, its early-exercise value. We have just seen in the previous section that the value of the option if unexercised is 8.363.

The greater value of the option at that node ripples back through the tree. When the option price is computed at the node where the stock price is 35.411, the value is greater in Figure 7 than in Figure 6; the reason is that the price is greater at the subsequent node  $S_{dd}$  due to early exercise.

The initial option price is  \$3.293, greater than the value of\$ 2.999 for the European option. This increase in value is due entirely to early exercise at the  $S_{dd}$  node.

In general the valuation of American options proceeds as in this example. At each node we check for early exercise. If the value of the option is greater when exercised, we assign the exercised value to the node. Otherwise, we assign the value of the option unexercised. We work backward through the tree as usual.

## 6. OPTIONS ON OTHER ASSETS

The binomial model can be modified easily to price options on underlying assets other than non-dividend-paying stocks. In this section we present examples of options on stock indexes, currencies, and futures contracts. In every case the general procedure is the same: We compute the option price using equation (6). The difference for different underlying assets will be the construction of the binomial tree and the risk-neutral probability.

The valuation of an option on a stock that pays discrete dividends is more complex.

### Option on a Stock Index

Suppose a stock index pays continuous dividends at the rate  $\delta$ . This type of option has in fact already been covered by our derivation in Section 1. The up and down index moves are given by equation (9), the replicating portfolio by equations (1) and (2), and the option price by equation (3). The risk-neutral probability is given by equation (5). $^{10}$

Figure 8 displays a binomial tree for an American call option on a stock index. Note that because of dividends, early exercise is optimal at the node where the stock price is 157.101. Given these parameters, we have  p^* = 0.457 ; hence, when  S = 157.101, the value of the option unexercised is

$$ e^{-0.05 \times 1/3} \left[0.457 \times \$87.747 + (1 - 0.457) \times \$32.779 \right] = \$56.942

$$

Since  $57.101 > 56.942$ , we exercise the option at that node.

### Options on Currencies

With a currency with spot price  $x_0$ , the forward price is  $F_{0,h} = x_0e^{(r - r_f)h}$ , where  $r_f$  is the foreign interest rate. Thus, we construct the binomial tree using

$$ u x = x e^{(r - r_f) h + \sigma \sqrt{h}}
$$

$$ d x = x e^{(r - r_f) h - \sigma \sqrt{h}}
$$

There is one subtlety in creating the replicating portfolio: Investing in a "currency" means investing in a money-market fund or fixed-income obligation denominated in that currency.

### FIGURE 8

Binomial tree for pricing an American call option on a stock index; assumes  S = \110.00, K = \$100.00, \sigma = 0.30, r = 0.05, T = 1.00 \text{ years, } \delta = 0.035, \text{ and } h = 0.333. \text{ At each node the stock price, option price, } \Delta, \text{ and } B \text{ are given. Option prices in bold italic signify that exercise is optimal at that node.}

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/7ffa89afa68d479d1ee4a8eab9b8d01c48b6a1afaa7701346e36f435f73b6e00.jpg)

Taking into account interest on the foreign-currency-denominated obligation, the two equations are

$$
\Delta \times dx e^{r_f h} + e^{rh} \times B = C_d
$$

$$
\Delta \times ux e^{r_f h} + e^{rh} \times B = C_u
$$

The risk-neutral probability of an up move in this case is given by

$$ p^* = \frac{e^{(r - r_f) h} - d}{u - d} \tag {20}
$$

Notice that if we think of  $r_f$  as the dividend yield on the foreign currency, these two equations look exactly like those for an index option. In fact, the solution is the same as for an option on an index: Set the dividend yield equal to the foreign risk-free rate and the current value of the index equal to the spot exchange rate.

Figure 9 prices a dollar-denominated American put option on the euro. The current exchange rate is assumed to be  \$1.05/€ and the strike is\$ 1.10/€. The euro-denominated interest rate is 3.1\%, and the dollar-denominated rate is 5.5\%.

Because volatility is low and the option is in-the-money, early exercise is optimal at three nodes prior to expiration.

# FIGURE 9

Binomial tree for pricing an American put option on a currency; assumes  $S = \$ 1.05 / \in$,  $K = \$1.10$ ,  $\sigma = 0.10$ ,  $r = 0.055$ ,  $T = 0.50$  years,  $\delta = 0.031$ , and  $h = 0.167$ . At each node the stock price, option price,  $\Delta$ , and  $B$  are given. Option prices in bold italic signify that exercise is optimal at that node.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/b99004b0995666f94031d27749975cb72c6d2a5dd218c9bbc442018745641c41.jpg)

### Options on Futures Contracts

We now consider options on futures contracts. We assume the forward price is the same as the futures price. Since we build the tree based on the forward price, we simply add up and down movements around the current price. Thus, the nodes are constructed as

$$ u = e ^ {\sigma \sqrt {h}}
$$

$$ d = e ^ {- \sigma \sqrt {h}}
$$

Note that this solution for  $u$  and  $d$  is exactly what we would get for an option on a stock index if  $\delta$ , the dividend yield, were equal to the risk-free rate.

In constructing the replicating portfolio, recall that in each period a futures contract pays the change in the futures price, and there is no investment required to enter a futures contract. The problem is to find the number of futures contracts,  $\Delta$ , and the lending,  $B$ , that replicates the option. We have

$$
\Delta \times (dF - F) + e^{rh} \times B = C_d
$$

$$
\Delta \times (uF - F) + e^{rh} \times B = C_u
$$

Solving gives

$$
\Delta = \frac{C_u - C_d}{F(u - d)}
$$

$$
B = e^{-rh}(C_u \frac{1 - d}{u - d} + C_d \frac{u - 1}{u - d})
$$

While  $\Delta$  tells us how many futures contracts to hold to hedge the option, the value of the option in this case is simply  $B$ . The reason is that the futures contract requires no investment, so the only investment is that made in the bond. We can again price the option using equation (3).

The risk-neutral probability of an up move is given by

$$ p ^ {*} = \frac {1 - d}{u - d} \tag {21}
$$

Figure 10 shows a tree for pricing an American call option on a gold futures contract. Early exercise is optimal when the price is 336.720. The intuition for early exercise is that when an option on a futures contract is exercised, the option holder pays nothing, is entered into a futures contract, and receives mark-to-market proceeds of the difference between the strike price and the futures price. The motive for exercise is the ability to earn interest on the mark-to-market proceeds.

### Options on Commodities

Many options exist on commodity futures contracts. However, it is also possible to have options on the physical commodity. If there is a market for lending and borrowing the commodity, then, in theory, pricing such an option is straightforward.

The lease rate for a commodity is conceptually similar to a dividend yield. If you borrow the commodity, you pay the lease rate. If you buy the commodity and lend it, you receive the lease rate. Thus, from the perspective of someone synthetically creating the option, the commodity is like a stock index, with the lease rate equal to the dividend yield.

### FIGURE 10

Binomial tree for pricing an American call option on a futures contract; assumes  S = \300.00, K = \$300.00, \sigma = 0.10, r = 0.05, T = 1.00 \text{ years}, \delta = 0.05, \text{ and } h = 0.333. \text{ At each node the stock price, option price, } \Delta, \text{ and } B \text{ are given. Option prices in bold italic signify that exercise is optimal at that node.}

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/9c3b89a1175377ffb202ed22a35a329ceb18e37d5030265a44f7286e390492b2.jpg)

Because this is conceptually the same as the pricing exercise in Figure 8 (imagine a commodity with a price of \$110, a lease rate of  $3.5\%$ , and a volatility of  $30\%$ ), we do not present a pricing example.

In practice, pricing and hedging an option based on the physical commodity can be problematic. If an appropriate futures contract exists, a market-maker could use it to hedge a commodity option. Otherwise, transactions in physical commodities often have greater transaction costs than for financial assets. Short-selling a commodity may not be possible, for many reasons. Market-making is then difficult.

### Options on Bonds

Finally, we will briefly discuss options on bonds. It is useful to understand in this chapter some of the issues in pricing options on bonds. As a first approximation we could just say that bonds are like stocks that pay a discrete dividend (a coupon), and price bond options using the binomial model.

However, bonds differ from the assets we have been discussing in two important respects.

1. The volatility of a bond decreases over time as the bond approaches maturity. The prices of 30-day Treasury bills, for example, are much less volatile than the prices of 30-year Treasury bonds. The reason is that a given change in the interest rate, other things equal, changes the price of a shorter-lived bond by less.
2. We have been assuming in all our calculations that interest rates are the same for all maturities, do not change over time, and are not random. While these assumptions may be good enough for pricing options on stocks, they are logically inconsistent for pricing options on bonds: If interest rates do not change unexpectedly, neither do bond prices.

In some cases, it may be reasonable to price bond options using the simple binomial model in this chapter. For example, consider a 6-month option on a 29-year bond. The underlying asset in this case is a 29.5-year bond. As a practical matter, the volatility difference between a 29.5and a 29-year bond is likely to be very small. Also, because it is short-lived, this option will not be particularly sensitive to the short-term interest rate, so the correlation of the bond price and the 6-month interest rate will not matter much.

On the other hand, if we have a 3-year option to buy a 5-year bond, these issues might be quite important. Another issue is that bond coupon payments are discrete, so the assumption of a continuous dividend is an approximation.

In general, the conceptual and practical issues with bonds are different enough that bonds warrant a separate treatment.

# Summary

Here is the general procedure covering the other assets discussed in this section.

- Construct the binomial tree for the price of the underlying asset using

$$ u S_t = F_{t,t+h} e^{+\sigma \sqrt{h}} \quad \text{or} \quad u = \frac{F_{t,t+h}}{S_t} e^{+\sigma \sqrt{h}} \tag {22}
$$

$$ d S_t = F_{t,t+h} e^{-\sigma \sqrt{h}} \quad \mathrm{or} \quad d = \frac{F_{t,t+h}}{S_t} e^{-\sigma \sqrt{h}}
$$

Since different underlying assets will have different forward price formulas, the tree will be different for different underlying assets.

- The option price at each node, if the option is unexercised, can then be computed as

$$
\begin{array}{l} p^* = \frac{F_{t,t+h}/S_{t} - d}{u - d} \tag{23} \\ = \frac{e^{(r - \delta)h} - d}{u - d} \\ \end{array}
$$ and, as before,


$$

C = e^{-r h} \left(p^* C_u + (1 - p^*) C_d\right) \tag {24}

$$ where  $C_u$  and  $C_d$  are the up and down nodes relative to the current node. For an American option, at each node take the greater of this value and the value if exercised.

Pricing options with different underlying assets requires adjusting the risk-neutral probability for the borrowing cost or lease rate of the underlying asset. Mechanically, this means that we can use the formula for pricing an option on a stock index with an appropriate substitution for the dividend yield. Table 2 summarizes the substitutions.

TABLE 2

Substitutions for pricing options on assets other than a stock index.

<table><tr><td>Underlying Asset</td><td>Interest Rate</td><td>Dividend Yield</td></tr><tr><td>Stock index</td><td>Domestic risk-free rate</td><td>Dividend yield</td></tr><tr><td>Currency</td><td>Domestic risk-free rate</td><td>Foreign risk-free rate</td></tr><tr><td>Futures contract</td><td>Domestic risk-free rate</td><td>Domestic risk-free rate</td></tr><tr><td>Commodity</td><td>Domestic risk-free rate</td><td>Commodity lease rate</td></tr><tr><td>Coupon bond</td><td>Domestic risk-free rate</td><td>Yield on bond</td></tr></table>

## CHAPTER SUMMARY

In order to price options, we must make an assumption about the probability distribution of the underlying asset. The binomial distribution provides a particularly simple stock price distribution: At any point in time, the stock price can go from  $S$  up to  $uS$  or down to  $dS$ , where the movement factors  $u$  and  $d$  are given by equation (9).

Given binomial stock price movements, the option can be replicated by holding  $\Delta$  shares of stock and  $B$  bonds. The option price is the cost of this replicating portfolio,  $\Delta S + B$ . For a call option,  $\Delta > 0$  and  $B < 0$ , so the option is replicated by borrowing to buy shares. For a put,  $\Delta < 0$  and  $B > 0$ . If the option price does not equal this theoretical price, arbitrage is possible. The replicating portfolio is dynamic, changing as the stock price moves up or down. Thus it is unlike the replicating portfolio for a forward contract, which is fixed.

The binomial option pricing formula has an interpretation as a discounted expected value, with the risk-neutral probability (equation (5)) used to compute the expected payoff to the option and the risk-free rate used to discount the expected payoff. This is known as risk-neutral pricing.

The up and down binomial asset price movements depend on the asset volatility, which is the annualized standard deviation of the continuously compounded return on the asset. We construct the up and down movements as the forward price multiplied by a term depending on plus or minus the per-period volatility. Historical volatility can be measured using past returns. Option prices, however, should depend on prospective volatility.

The binomial model can be used to price American and European calls and puts on a variety of underlying assets, including stocks, indexes, futures, currencies, commodities, and bonds.

## FURTHER READING

This chapter has focused on the mechanics of binomial option pricing.

In addition to the original papers by Cox et al. (1979) and Rendleman and Bartter (1979), Cox and Rubinstein (1985) provides an excellent exposition of the binomial model.

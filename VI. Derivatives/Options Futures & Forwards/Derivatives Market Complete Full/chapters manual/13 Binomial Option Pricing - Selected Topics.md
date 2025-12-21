---
title: "Binomial Option Pricing: Selected Topics"
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:20:00 PM
formatter_model: claude-sonnet-4-5-20250929
cli-tool: opencode
primary_tags:
  - binomial option pricing
  - risk neutral valuation
  - early exercise decisions
  - lognormal distribution
  - discrete dividends
secondary_tags:
  - option pricing models
  - binomial trees
  - volatility modeling
  - stochastic processes
  - dividend pricing
  - financial derivatives
  - option valuation
  - continuous time finance
  - martingale pricing
  - forward pricing
cssclasses: academia
---

# Binomial Option Pricing: Selected Topics

In this chapter we focus on binomial pricing, discussing selected topics and delving more deeply into the economics of the model and its underlying assumptions.

First, the binomial model can value options that may be early-exercised. We examine early exercise in detail.

Second, the binomial option pricing formula can be interpreted as the expected option payoff one period hence, discounted at the risk-free rate. This calculation is referred to as risk-neutral pricing. This calculation appears to be inconsistent with standard discounted cash flow valuation, in which expected cash flows are discounted at a risk-adjusted rate, not the risk-free rate. We show that, in fact, the binomial pricing formula (and, hence, risk-neutral valuation) is consistent with option valuation using standard discounted cash flow techniques.

Third, we discuss the implicit distributional assumptions in the binomial model, namely that continuously compounded returns are normally distributed in the limit, which implies that prices are lognormally distributed.

Finally, in this chapter we adapt the binomial model to price options on stocks that pay discrete dividends.

# I. UNDERSTANDING EARLY EXERCISE

In deciding whether to early-exercise an option, the option holder compares the value of exercising immediately with the value of continuing to hold the option and exercises if immediate exercise is more valuable.

We obtain an economic perspective on the early-exercise decision by considering the costs and benefits of early exercise. There are three economic considerations governing the decision to exercise early. By exercising, the option holder:

From Chapter 11 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

- Receives the stock and therefore receives future dividends.
- Pays the strike price prior to expiration (this has an interest cost).
- Losses the insurance implicit in the call. By holding the call instead of exercising, the option holder is protected against the possibility that the stock price will be less than the strike price at expiration. Once the option is exercised, this protection no longer exists.

Consider an example where a call option has a strike price of \$100, the interest rate is $5\%$, and the stock pays continuous dividends of $5\%$. If the stock price is 200, the net effect of dividends and interest encourages early exercise. Annual dividends are approximately $5\%$ of \$200, or $0.05 \times 200 = \$10$. The annual interest saved by deferring exercise is approximately $0.05 \times 100 = \$5$. Thus, for a stock price of \$200 (indeed, for any stock price above 100) dividends lost by not exercising exceed interest saved by deferring exercise.

The only reason in this case not to exercise early is the implicit insurance the option owner loses by exercising. This implicit insurance arises from the fact that the option holder could exercise and then the stock price could fall below the strike price of 100. Leaving the option unexercised protects against this scenario. The early-exercise calculation for a call therefore implicitly weighs dividends, which encourage early exercise, against interest and insurance, which discourage early exercise.

If volatility is zero, then the value of insurance is zero, and it is simple to find the optimal exercise policy as long as  $r$  and  $\delta$  are constant. For an infinitely lived call, it is optimal to defer exercise as long as interest savings on the strike exceed dividends lost, or

$$ r K > \delta S
$$

It is optimal to exercise when this is not true, or

$$
S > \frac {r K}{\delta}
$$

In the special case when  $r = \delta$  and  $\sigma = 0$ , any in-the-money option should be exercised immediately. If  $\delta = 0.5r$ , then we exercise when the stock price is twice the exercise price.

The decision to exercise is more complicated when volatility is positive. In this case the implicit insurance has value that varies with time to expiration. Figure 1 displays the price above which early exercise is optimal for a 5-year option with  $K = \100$ ,  $r = 5\%$ , and  $\delta = 5\%$ , for three different volatilities, computed using 500 binomial steps. If it is optimal to exercise a call at a given stock price, then it is optimal to exercise at all higher stock prices. Figure 1 thus shows the lowest stock price at which exercise is optimal. The oscillation in this lowest price, which is evident in the figure, is due to the up and down binomial movements that approximate the behavior of the stock; with an infinite number of binomial steps, the early-exercise schedule would be smooth and continuously decreasing. Comparing the three lines, we observe a significant volatility effect. A 5-year option with a volatility of  $50\%$  should only be exercised if the stock price exceeds about  $\$ 360 . If volatility is  $10\%$ , the boundary drops to  $\$130$ . This volatility effect stems from the fact that the insurance value lost by early-exercising is greater when volatility is greater.

Figure 2 performs the same experiment for put options with the same inputs. The picture is similar, as is the logic: The advantage of early exercise is receiving the strike price sooner rather than later. The disadvantages are the dividends lost by giving up the stock, and the loss of insurance against the stock price exceeding the strike price.

# FIGURE 1

Early-exercise boundaries for volatilities of 10\%, 30\%, and 50\% for a 5-year American call option. In all cases, K = \100, r = 5\%, \text{and} \delta = 5\%

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/8c44460303dac0e39a99efc646ea31cd7be303561efa367f2b5e71725f5f49cb.jpg)

# FIGURE 2

Early-exercise boundaries for volatilities of 10\%, 30\%, and 50\% for a 5-year American put option. In all cases, K = \100, r = 5\% and \delta = 5\%.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/79d936449c470cf3717d5c332405757cc7f8a72735615860299abf1a741a4dd9.jpg)

Figures 1 and 2 also show that, other things equal, early-exercise criteria become less stringent closer to expiration. This occurs because the value of insurance diminishes as the options approach expiration.

While these pictures are constructed for the special case where  $\delta = r$ , the overall conclusion holds generally.

# 2. UNDERSTANDING RISK-NEUTRAL PRICING

The binomial option pricing formula can be written

$$
C = e ^ {- r h} \left[ p ^ {*} C _ {u} + \left(1 - p ^ {*}\right) C _ {d} \right] \tag {1}
$$ where


$$ p ^ {*} = \frac {e ^ {(r - \delta) h} - d}{u - d} \tag {2}
$$

We labeled  $p^*$  the risk-neutral probability that the stock will go up. Equation (1) has the appearance of a discounted expected value, where the expected value calculation uses  $p^*$  and discounting is done at the risk-free rate.

In this section we explain why  $p^*$  is called the risk-neutral probability and show that option valuation is consistent with standard discounted cash flow calculations.

# The Risk-Neutral Probability

The idea that an option price is the result of a present value calculation is reassuring, but at the same time equation (1) is puzzling. A standard discounted cash flow calculation would require computing an expected value using the true probability that the stock price would go up. Discounting would then be done using the expected return on an asset of equivalent risk, not the risk-free rate.

It is common in finance to emphasize that investors are risk averse. To see what risk aversion means, suppose you are offered either (a) \$1000, or (b) \$2000 with probability 0.5, and 0 with probability 0.5. A risk-averse investor prefers (a), since alternative (b) is risky and has the same expected value as (a). This kind of investor will require a premium to bear risk when expected values are equal.

A risk-neutral investor is indifferent between a sure thing and a risky bet with an expected payoff equal to the value of the sure thing. A risk-neutral investor, for example, will be equally happy with alternative (a) or (b).

Let's consider what an imaginary world populated by risk-neutral investors would be like. In such a world, investors care only about expected returns and not about riskiness. Assets would have no risk premium since investors would be willing to hold assets with an expected return equal to the risk-free rate.

In this hypothetical risk-neutral world, we can solve for the probability of the stock going up,  $p^*$ , such that the stock is expected to earn the risk-free rate. In the binomial model, the probability that the stock will go up,  $p^*$ , must satisfy

$$ p ^ {*} u S e ^ {\delta h} + (1 - p ^ {*}) d S e ^ {\delta h} = e ^ {r h} S
$$

Solving for  $p^*$  gives us equation (2), which is why we refer to  $p^*$  as the risk-neutral probability that the stock price will go up. It is the probability that the stock price would increase in a risk-neutral world.

Not only would the risk-neutral probability, equation (2), be used in a risk-neutral world, but also all discounting would take place at the risk-free rate. Thus, the option pricing formula, equation (1), can be said to price options as if investors are risk-neutral. Thus, it is important to note that we are not assuming that investors are actually risk-neutral, and we are not assuming that risky assets are actually expected to earn the risk-free rate of return. Rather, risk-neutral pricing is an interpretation of the formulas above. Those formulas in turn arise from finding the cost of the portfolio that replicates the option payoff.

This interpretation of the option-pricing procedure has great practical importance; risk-neutral pricing can sometimes be used where other pricing methods are too difficult. Risk-neutral pricing is the basis for Monte Carlo valuation, in which asset prices are simulated under the assumption that assets earn the risk-free rate, and these simulated prices are used to value the option.

# Pricing an Option Using Real Probabilities

We are left with this question: Is option pricing consistent with standard discounted cash flow calculations? The answer is yes. We can use the true distribution for the future stock price in computing the expected payoff to the option. This expected payoff can then be discounted with a rate based on the stock's required return.

Discounted cash flow is not used in practice to price options because there is no reason to do so. However, we present two examples of valuing an option using real probabilities to see the difficulty in using real probabilities, and also to understand how to determine the risk of an option.

Suppose that the continuously compounded expected return on the stock is  $\alpha$  and that the stock does not pay dividends. Then if  $p$  is the true probability of the stock going up,  $p$  must be consistent with  $u$ ,  $d$ , and  $\alpha$ :

$$ p u S + (1 - p) d S = e ^ {\alpha h} S \tag {3}
$$

Solving for  $p$  gives us

$$ p = \frac {e ^ {\alpha h} - d}{u - d} \tag {4}
$$

For probabilities to be between 0 and 1, we must have  $u > e^{\alpha h} > d$ . Using  $p$ , the actual expected payoff to the option one period hence is

$$ p C _ {u} + (1 - p) C _ {d} = \frac {e ^ {\alpha h} - d}{u - d} C _ {u} + \frac {u - e ^ {\alpha h}}{u - d} C _ {d} \tag {5}
$$

Now we face the problem with using real as opposed to risk-neutral probabilities: At what rate do we discount this expected payoff? It is not correct to discount the option at the expected return on the stock,  $\alpha$ , because the option is equivalent to a leveraged investment in the stock and, hence, is riskier than the stock.

Denote the appropriate per-period discount rate for the option as  $\gamma$ . To compute  $\gamma$ , we can use the fact that the required return on any portfolio is the weighted average of the returns on the assets in the portfolio. An option is equivalent to holding a portfolio consisting of  $\Delta$  shares of stock and  $B$  bonds. The expected return on this portfolio is

$$ e ^ {\gamma h} = \frac {S \Delta}{S \Delta + B} e ^ {\alpha h} + \frac {B}{S \Delta + B} e ^ {r h} \tag {6}
$$

We can now compute the option price as the expected option payoff, equation (5), discounted at the appropriate discount rate, given by equation (6). This gives

$$ e ^ {- \gamma h} \left[ \frac {e ^ {\alpha h} - d}{u - d} C _ {u} + \frac {u - e ^ {\alpha h}}{u - d} C _ {d} \right] \tag {7}
$$

It turns out that this gives us the same option price as performing the risk-neutral calculation. Appendix A demonstrates algebraically that equation (7) is equivalent to the risk-neutral calculation, equation (1).

The calculations leading to equation (7) started with the assumption that the expected return on the stock is  $\alpha$ . We then derived a consistent probability,  $p$ , and discount rate for the option,  $\gamma$ . You may be wondering if it matters whether we have the "correct" value of  $\alpha$  to start with. The answer is that it does not matter: Any consistent pair of  $\alpha$  and  $\gamma$  will give the same option price. Risk-neutral pricing is valuable because setting  $\alpha = r$  results in the simplest pricing procedure.

A One-Period Example. To see how to value an option using true probabilities, we will compute two examples. First, consider the one-period binomial example in Figure 3. Suppose that the continuously compounded expected return on XYZ is $\alpha = 15\%$. Then the true probability of the stock going up, from equation (4), is

$$ p = \frac {e ^ {0.15} - 0.8025}{1.4623 - 0.8025} = 0.5446
$$

The expected payoff to the option in one period, from equation (5), is

$$
0.5446 \times \$19.954 + (1 - 0.5446) \times \$0 = \$10.867
$$

The replicating portfolio, $\Delta$ and $B$, does not depend on $p$ or $\alpha$. In this example, $\Delta = 0.738$ and $B = -\$22.405$. The discount rate, $\gamma$, from equation (6) is given by

$$
\begin{array}{l} e ^ {\gamma h} = \frac {0.738 \times \$41}{0.738 \times \$41 - \$22.405} e ^ {0.15} + \frac {-\$22.405}{0.738 \times \$41 - \$22.405} e ^ {0.08} \\ = 1.386 \\ \end{array}
$$

# FIGURE 3

Binomial tree for pricing a European call option;

assumes S = \$41.00, K = \$41.00,

σ = 0.30, r = 0.08,

T = 1.00 years, δ = 0.00 and h = 1.000

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/720aa2e8747e925fb773cdf542fa85e5d05075e1dd100886526365ae1e0422eb.jpg)

Thus, $\gamma = \ln (1.386) = 32.64\%$. The option price is then given by equation (7):

$$ e ^ {-0.3264} \times \$10.867 = \$7.839
$$

This is exactly the price we obtained before.

Notice that in order to compute the discount rate, we first had to compute  $\Delta$  and  $B$ . But once we have computed  $\Delta$  and  $B$ , we can simply compute the option price as  $\Delta S + B$ . There is no need for further computations. It can be helpful to know the actual expected return on an option, but for valuation it is pointless.

A Multi-Period Example. To demonstrate that this method of valuation works over multiple periods, Figure 4 presents a binomial tree illustrating that the true discount rate for the option,  $\gamma$ , is reported at each node. Given the  $15\%$  continuously compounded discount rate, the true probability of an up move in Figure 4 is

$$

\frac {e ^ {0.15 \times 1 / 3} - 0.8637}{1.2212 - 0.8637} = 0.5247

$$

To compute the price at the node where the stock price is 61.149, we discount the expected option price the next period at 26.9\%. This gives

$$ e ^ {-0.269 \times 1 / 3} \left[ 0.5247 \times 34.678 + (1 - 0.5247) \times 12.814 \right] = 22.202
$$

When the stock price is 43.246, the discount rate is 49.5\%, and the option price is

$$ e ^ {-0.495 \times 1 / 3} \left[ 0.5247 \times \$12.814 + (1 - 0.5247) \times \$0 \right] = \$5.700
$$

# FIGURE 4

Binomial tree for pricing an American call option; assumes S = \$41.00, K = \$40.00, σ = 0.30, r = 0.08, T = 1.00 years, δ = 0.00, and h = 0.333. The continuously compounded true expected return on the stock, α, is 15\%. At each node the stock price, option price, and continuously compounded true discount rate for the option, γ, are given. Option price in bold italic signify that exercise is optimal at that node.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/facfb945a9727cf63e994354319aa8479728334c5fb9f0d3c9b9cba981cbcdea.jpg)

We work back through the tree. To compute the price at the node where the stock price is 50.071, we discount the expected option price the next period at 32.3\%. Thus,

$$ e ^ {-0.323 \times 1 / 3} \left[ 0.5247 \times \$22.202 + (1 - 0.5247) \times \$5.700 \right] = \$12.889
$$

The actual discount rate for the option changes as we move down the tree at a point in time and also over time. The required return on the option is less when the stock price is \$61.149 (26.9\%) than when it is \$43.246 (49.5\%). The discount rate increases as the stock price decreases because the option is equivalent to a leveraged position in the stock, and the degree of leverage increases as the option moves out of the money.

These examples illustrate that it is possible to obtain option prices using standard discounted-cash-flow techniques. Generally, however, there is no reason to do so. Moreover, the fact that risk-neutral pricing works means that it is not necessary to estimate  $\alpha$ , the expected return on the stock, when pricing an option. Since expected returns are hard to estimate precisely, this makes option pricing a great deal easier.

Appendix B goes into more detail about risk-neutral pricing.

# 3. THE BINOMIAL TREE AND LOGNORMALITY

The usefulness of the binomial pricing model hinges on the binomial tree providing a reasonable representation of the stock price distribution. In this section we discuss the motivation for and plausibility of the binomial tree. We will define a lognormal distribution and see that the binomial tree approximates this distribution.

# The Random Walk Model

It is sometimes said that stock prices follow a random walk. More precisely, a random walk provides a foundation for modeling the prices of stocks and other assets. In this section, we will explain what a random walk is. In the next section, we use the random walk model to build a model of stock prices.

To understand a random walk, imagine that we flip a coin repeatedly. Let the random variable  $Y$  denote the outcome of the flip. If the coin lands displaying a head,  $Y = 1$ . If the coin lands displaying a tail,  $Y = -1$ . If the probability of a head is  $50\%$ , we say the coin is fair. After  $n$  flips, with the  $i$ th flip denoted  $Y_{i}$ , the cumulative total,  $Z_{n}$ , is

$$
Z _ {n} = \sum_ {i = 1} ^ {n} Y _ {i} \tag {8}
$$

It turns out that the more times we flip, on average, the farther we will move from where we start. We can understand intuitively why with more flips the average distance from the starting point increases. Think about the first flip and imagine you get a head. You move to +1, and as far as the remaining flips are concerned, this is your new starting point. After the second flip, you will either be at 0 or +2. If you are at zero, it is as if you started over; however, if you are at +2, you are starting at +2. Continuing in this way, your average distance from the starting point increases with the number of flips.

Another way to represent the process followed by  $Z_{n}$  is in terms of the change in  $Z_{n}$ :

$$
Z _ {n} - Z _ {n - 1} = Y _ {n}
$$

We can rewrite this more explicitly as

$$
\text{Heads:} \quad Z _ {n} - Z _ {n - 1} = + 1 \tag {9}
$$

$$
\text{Tails:} \quad Z _ {n} - Z _ {n - 1} = - 1 \tag {10}
$$

With heads, the change in  $Z$  is 1, and with tails, the change in  $Z$  is -1. This random walk is illustrated in Figure 5.

The idea that asset prices should follow a random walk was articulated in Samuelson (1965). In efficient markets, an asset price should reflect all available information. By definition, new information is a surprise. In response to new information the price is equally likely to move up or down, as with the coin flip. The price after a period of time is the initial price plus the cumulative up and down movements due to informational surprises.

# Modeling Stock Prices as a Random Walk

The idea that stock prices move up or down randomly makes sense; however, the description of a random walk in the previous section is not a satisfactory description of stock price movements. Suppose we take the random walk model in Figure 5 literally. Assume the beginning stock price is \$100, and the stock price will move up or down \$1 each time we flip the coin. There are at least three problems with this model:

1. If by chance we get enough cumulative down movements, the stock price will become negative. Because stockholders have limited liability (they can walk away from a bankrupt firm), a stock price will never be negative.
2. The magnitude of the move (\$1) should depend upon how quickly the coin flips occur and the level of the stock price. If we flip coins once a second, \$1 moves are excessive; in real life, a \$100 stock will not typically have 60 \$1 up or down movements in 1 minute. Also, if a \$1 move is appropriate for a \$100 stock, it likely isn't appropriate for a \$5 stock.
3. The stock on average should have a positive return. The random walk model taken literally does not permit this.

# FIGURE 5

In the top panel is an illustration of a random walk, where the counter, Z, increases by 1 when a fair coin flip comes up heads, and decreases by 1 with tails. In the bottom panel is a particular path through a 10,000-step binomial tree, where the up and down moves are the same as in the top panel. Assumes S_0 = \100 r = 6\% \sigma = 30\% T = 10 years, and h = 0.0001.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/5fa476262f7dcc0cbc569cdb54448dc71b1c9b1097914667d7129fe98fae322c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/c7e3987faf90c91c8a910c284dd479dd07c05440fb68bf7cd0fb74f4bd1f0e19.jpg)

It turns out that the binomial model is a variant of the random walk model that solves all of these problems at once. The binomial model assumes that continuously compounded returns are a random walk with drift.

# The Binomial Model

The binomial stock price is

$$
S _ {t + h} = S _ {t} e ^ {(r - \delta) h \pm \sigma \sqrt {h}}
$$

Taking logs, we obtain

$$
\ln \left(S _ {t + h} / S _ {t}\right) = (r - \delta) h \pm \sigma \sqrt {h} \tag {11}
$$

Since  $\ln (S_{t + h} / S_t)$  is the continuously compounded return from  $t$  to  $t + h$ ,  $r_{t,t + h}$ , the binomial model is simply a particular way to model the continuously compounded return. That return has two parts, one of which is certain  $[(r - \delta)h]$ , and the other of which is uncertain and generates the up and down stock price moves  $(\pm \sigma \sqrt{h})$ .

Let's see how equation (11) solves the three problems in the random walk discussed earlier:

1. The stock price cannot become negative. Even if we move down the binomial tree many times in a row, the resulting large, negative, continuously compounded return will give us a positive price.
2. As stock price moves occur more frequently, h gets smaller, therefore up and down moves get smaller. By construction, annual volatility is the same no matter how many binomial periods there are. Since returns follow a random walk, the percentage price change is the same whether the stock price is \$100 or \$5.
3. There is a $(r - \delta)h$ term, and we can choose the probability of an up move, so we can guarantee that the expected change in the stock price is positive.

The bottom panel of Figure 5 illustrates the stock price that results when the continuously compounded return follows equation (11). The figure is one particular path through a 10,000-step binomial tree, with the path generated by the same sequence of coin flips as in the top panel of Figure 5.

# Lognormality and the Binomial Model

The binomial tree approximates a lognormal distribution, which is commonly used to model stock prices. The lognormal distribution is the probability distribution that arises from the assumption that continuously compounded returns on the stock are normally distributed. When we traverse the binomial tree, we are implicitly adding up binomial random return components of  $(r - \delta)h \pm \sigma \sqrt{h}$ . In the limit (as  $n \to \infty$  or, the same thing,  $h \to 0$ ), the sum of binomial random variables is normally distributed. Thus, continuously compounded returns in a binomial tree are (approximately) normally distributed, which means that the stock is lognormally distributed. We can see with an example how it works.

The binomial model implicitly assigns probabilities to the various nodes. Figure 6 depicts the construction of a tree for three binomial periods, along with the risk-neutral probability of reaching each final period node. There is only one path—sequence of up and down moves—reaching the top or bottom node (uuu or ddd), but there are three paths

# FIGURE 6

Construction of a binomial tree depicting stock price paths, along with risk-neutral probabilities of reaching the various terminal prices.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/6896cd0384ef774adc8bfaa48cb9109d3fd7b7d1c302a455a5aba9b43b036ebc.jpg)

# FIGURE 7

Comparison of lognormal distribution with three-period binomial approximation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/cb789de1a494f2c4faaa155cedac7cb15e7d5de81e7220277c7ffa8e3961af85.jpg)

Lognormal Probability

Binomial Probability reaching each intermediate node. For example, the first node below the top  $(S_0u^2 d)$  can be reached by the sequences  $uud$ ,  $udu$ , or  $duu$ . Thus, there are more paths that reach the intermediate nodes than the extreme nodes.

We can take the probabilities and outcomes from the binomial tree and plot them against a lognormal distribution with the same parameters. Figure 7 compares a three-period binomial approximation with a lognormal distribution assuming that the initial stock price is 100, volatility is 30\%, the expected return on the stock is 10\%, and the time horizon is 1 year. Because we need different scales for the discrete and continuous distributions, lognormal probabilities are graphed on the left vertical axis and binomial probabilities on the right vertical axis.

Suppose that a binomial tree has  $n$  periods and the risk-neutral probability of an up move is  $p^*$ . To reach the top node, we must go up  $n$  times in a row, which occurs with a probability of  $(p^*)^n$ . The price at the top node is  $Su^n$ . There is only one path through the tree by which we can reach the top node. To reach the first node below the top node, we must go up  $n - 1$  times and down once, for a probability of  $(p^*)^{n - 1} \times (1 - p^*)$ . The price at that node is  $Su^{n - 1}d$ . Since the single down move can occur in any of the  $n$  periods, there are  $n$  ways this can happen. The probability of reaching the  $i$ th node below the top is  $(p^*)^{n - i} \times (1 - p^*)^i$ . The price at this node is  $Su^{n - i}d^i$ . The number of ways to reach this node is

$$
\text{Number of ways to reach} i \text{th node} = \frac {n !}{(n - i) ! i !} = \binom {n} {i}
$$ where $n! = n\times (n - 1)\times \dots \times 1$


We can construct the implied probability distribution in the binomial tree by plotting the stock price at each final period node, $Su^{n - i}d^i$, against the probability of reaching that node. The probability of reaching any given node is the probability of one path reaching that node times the number of paths reaching that node:

$$

\text{Probability of} i \text{th node} = p ^ {* n - i} \left(1 - p ^ {*}\right) ^ {i} \frac {n !}{(n - i) ! i !} \tag {12}

$$

Figure 8 compares the probability distribution for a 25-period binomial tree with the corresponding lognormal distribution. The two distributions appear close; as a practical matter, a 25-period approximation works fairly well for an option expiring in a few months.

Figures 7 and 8 show you what the lognormal distribution for the stock price looks like. The stock price is positive, and the distribution is skewed to the right; that is, there is a chance that extremely high stock prices will occur.

# Alternative Binomial Trees

There are other ways besides equation (11) to construct a binomial tree that approximates a lognormal distribution. An acceptable tree must match the standard deviation of the continuously compounded return on the asset and must generate an appropriate distribution as the length of the binomial period,  $h$ , goes to 0. Different methods of constructing the binomial tree will result in different  $u$  and  $d$  stock movements.

The Cox-Ross-Rubinstein Binomial Tree. The best-known way to construct a binomial tree is that in Cox et al. (1979), in which the tree is constructed as

$$ u = e ^ {\sigma \sqrt {h}} \tag {13}
$$

$$ d = e ^ {- \sigma \sqrt {h}}
$$

The Cox-Ross-Rubinstein approach is often used in practice. A problem with this approach, however, is that if  $h$  is large or  $\sigma$  is small, it is possible that  $e^{rh} > e^{\sigma \sqrt{h}}$ . In real applications  $h$  would be small, so this problem does not occur.

The Lognormal Tree. Another alternative is to construct the tree using

$$ u = e ^ {(r - \delta - 0.5 \sigma^ {2}) h + \sigma \sqrt {h}} \tag {14}
$$

$$ d = e ^ {(r - \delta - 0.5 \sigma^ {2}) h - \sigma \sqrt {h}}
$$

This procedure for generating a tree was proposed by Jarrow and Rudd (1983) and is sometimes called the Jarrow-Rudd binomial model.

All three methods of constructing a binomial tree yield different option prices for finite  $n$ , but they approach the same price as  $n \to \infty$ . Also, while the different binomial trees all have different up and down movements, all have the same ratio of  $u$  to  $d$ :

$$
\frac {u}{d} = e ^ {2 \sigma \sqrt {h}} \quad \mathrm {o r} \quad \ln (u / d) = 2 \sigma \sqrt {h}
$$

This is the sense in which, however the tree is constructed, the proportional distance between  $u$  and  $d$  measures volatility.

# Is the Binomial Model Realistic?

Any option pricing model relies on an assumption about the behavior of stock prices. As we have seen in this section, the binomial model is a form of the random walk model, adapted to modeling stock prices. The lognormal random walk model in this section assumes, among other things, that volatility is constant, that "large" stock price movements do not occur, and that returns are independent over time. All of these assumptions appear to be violated in the data.

There is ample evidence that volatility changes over time (see Bollerslev et al., 1994). It also appears that on occasion stocks move by a large amount. The binomial model has the property that stock price movements become smaller as the period length,  $h$ , becomes smaller. Occasional large price movements—"jumps"—are therefore a feature of the data inconsistent with the binomial model. Finally, there is some evidence that stock returns are correlated across time, with positive correlations at the short to medium term and negative correlation at long horizons (see Campbell et al., 1997, ch. 2).

The random walk model is a useful starting point for thinking about stock price behavior, and it is widely used because of its elegant simplicity. However, it is not sacrosanct.

# 4. STOCKS PAYING DISCRETE DIVIDENDS

Although it may be reasonable to assume that a stock index pays dividends continuously, individual stocks pay dividends in discrete lumps, quarterly or annually. In addition, over short horizons it is frequently possible to predict the amount of the dividend. How should we price an option when the stock will pay a known dollar dividend during the life of the option? The procedure we have already developed for creating a binomial tree can accommodate this case. However, we will also discuss a preferable alternative due to Schroder (1988).

# Modeling Discrete Dividends

When no dividend will be paid between time  $t$  and  $t + h$ , we create the binomial tree. Suppose that a dividend will be paid between times  $t$  and  $t + h$  and that its future value at time  $t + h$  is  $D$ . The time  $t$  forward price for delivery at  $t + h$  is then

$$
F _ {t, t + h} = S _ {t} e ^ {r h} - D
$$

Since the stock price at time  $t + h$  will be ex-dividend, we create the up and down moves based on the ex-dividend stock price:

$$
S _ {t} ^ {u} = \left(S _ {t} e ^ {r h} - D\right) e ^ {\sigma \sqrt {h}} \tag {15}
$$

$$
S _ {t} ^ {d} = \left(S _ {t} e ^ {r h} - D\right) e ^ {- \sigma \sqrt {h}}
$$

How does option replication work when a dividend is imminent? When a dividend is paid, we have to account for the fact that the stock earns the dividend. Thus, we have

$$
\left(S _ {t} ^ {u} + D\right) \Delta + e ^ {r h} B = C _ {u}
$$

$$
\left(S _ {t} ^ {d} + D\right) \Delta + e ^ {r h} B = C _ {d}
$$

The solution is

$$
\Delta = \frac {C _ {u} - C _ {d}}{S _ {t} ^ {u} - S _ {t} ^ {d}}
$$

$$
B = e ^ {- r h} \left[ \frac {S _ {t} ^ {u} C _ {d} - S _ {t} ^ {d} C _ {u}}{S _ {t} ^ {u} - S _ {t} ^ {d}} \right] - \Delta D e ^ {- r h}
$$

Because the dividend is known, we decrease the bond position by the present value of the certain dividend. (When the dividend is proportional to the stock price, as with a stock index, we reduce the stock position.) The expression for the option price is given by

$$
C = e ^ {- r h} \left(p ^ {*} C _ {u} + (1 - p ^ {*}) C _ {d}\right)
$$

# Problems with the Discrete Dividend Tree

The practical problem with this procedure is that the tree does not completely recombine after a discrete dividend. In all previous cases we have examined, we reached the same price after a given number of up and down movements, regardless of the order of the movements.

Figure 9, in which a dividend with a period-2 value of 5 is paid between periods 1 and 2, demonstrates that with a discrete dividend, the order of up and down movements affects the price. In the third binomial period there are six rather than four possible stock prices.

To see how the tree is constructed, period-1 prices are

$$
\$41 e ^ {0.08 \times 1 / 3 + 0.3 \times \sqrt {1 / 3}} = \$50.071
$$

$$
\$41 e ^ {0.08 \times 1 / 3 - 0.3 \times \sqrt {1 / 3}} = \$35.411
$$

<table><tr><td rowspan="2">FIGURE 9</td><td>Binomial Period: 0</td><td>1</td><td>2</td><td>3</td></tr><tr><td>Dividend:</td><td>0</td><td>5</td><td>0</td></tr><tr><td colspan="5">The tree depicts a discrete \$5 dividend paid between the first and second binomial periods. There are eight discrete terminal nodes (six of them distinct) rather than four. Assumes S = \$41, σ = 0.3, r = 0.08, t = 1 year, and h = 0.333.</td></tr><tr><td></td><td colspan="3">$55.203</td><td>$67.417</td></tr><tr><td></td><td colspan="3">\$47.679</td><td></td></tr><tr><td></td><td colspan="3">\$47.679</td><td></td></tr><tr><td></td><td colspan="3">\$33.720</td><td></td></tr><tr><td></td><td colspan="3">\$45.553</td><td></td></tr><tr><td></td><td colspan="3">\$32.216</td><td></td></tr><tr><td></td><td colspan="3">\$32.216</td><td></td></tr><tr><td></td><td colspan="3">22.784</td><td></td></tr></table>

The period-2 prices from the 50.071 node are

$$
\left(\$ 50. 0 7 1 e ^ {0. 0 8 \times 1 / 3} - 5\right) \times e ^ {0. 3 \times \sqrt {1 / 3}} = \$ 5 5. 2 0 3
$$

$$
\left(\S 5 0. 0 7 1 e ^ {0. 0 8 \times 1 / 3} - 5\right) \times e ^ {- 0. 3 \times \sqrt {1 / 3}} = \S 3 9. 0 4 1
$$

Repeating this procedure for the node  S = \35.411  gives prices of  \37.300  and  \26.380 . You can see that there are now four prices instead of three after two binomial steps: The  ud  and  du  nodes do not recombine. There are six distinct prices in the final period as each set of ex-dividend prices generates a distinct tree (three prices arise from the top two prices in period 2 and three prices arise from the bottom two prices in period 2). Each discrete dividend causes the tree to bifurcate.

There is also a conceptual problem with equation (15). Since the amount of the dividend is fixed, the stock price could in principle become negative if there have been large downward moves in the stock prior to the dividend.

This example demonstrates that handling fixed dividends requires care. We now turn to a method that is computationally easier than constructing a tree using equation (15) and that will not generate negative stock prices.

# A Binomial Tree Using the Prepaid Forward

Schroder (1988) presents an elegant method of constructing a tree for a dividend-paying stock that solves both problems encountered with the method in Figure 9. The key insight is that if we know for certain that a stock will pay a fixed dividend, then we can view the stock price as being the sum of two components: the dividend and the present value of the ex-dividend value of the stock—in other words, the prepaid forward price. With the dividend known, all volatility is attributed to the prepaid forward component of the stock price.

Suppose we know that a stock will pay a dividend  $D$  at time  $T_{D} < T$ , where  $T$  is the expiration date of the option. For  $t < T_{D}$ , the stock price is the sum of the prepaid forward price and the present value of the dividend:

$$
S _ {t} = F _ {t, T} ^ {P} + D e ^ {- r \left(T _ {D} - t\right)} \tag {16}
$$ where  $F_{t,T}^{P} = S_{t} - De^{-r(T_{D} - t)}$ . We construct the binomial tree by attributing all uncertainty to the prepaid forward price. As before, we have up and down movements of


$$ u = e ^ {r h + \sigma \sqrt {h}} \qquad d = e ^ {r h - \sigma \sqrt {h}}
$$

The observed stock price at time  $t + h < T_{D}$  is then

$$
S _ {t + h} = F _ {t} ^ {P} e ^ {r h \pm \sigma \sqrt {h}} + D e ^ {- r (T _ {D} - (t + h))}
$$

We measure  $\sigma$  by observing movements in  $S_{t}$ , but  $\sigma$  is used in this equation to characterize movements in  $F_{t}^{P}$ . We want the total dollar volatility of the prepaid forward to equal that of the stock, so we assign a volatility to the prepaid forward using the ad hoc adjustment

$$
\sigma_ {F} = \sigma_ {s} \times \frac {S}{F ^ {P}}
$$

Figure 10 shows the construction of the binomial tree for a specific example, using the same initial inputs as Figure 9. Both the observed stock price and the stock price less the present value of dividends (the prepaid forward price) are included in the figure. Assuming that the dividend is paid just before the second period, the initial prepaid forward price is  $F_0^P = 41 - 5e^{-0.08 \times 2/3} = 36.26$ . The volatility for the prepaid forward is therefore  $0.3 \times \frac{\$41}{\$36.26} = 0.3392$ .

To understand Figure 10, note first that  $u = 1.2492$ . Look at the node where the stock price is 61.584. This is a cum-dividend price, just before the dividend is paid. The nodes in the last period are constructed based on the ex-dividend price, for example,

$$
\left(\$ 61.584 - \$ 5\right) \times 1.2492 = \$ 70.686
$$

As a final point, we obtain risk-neutral probabilities for the tree in the same way as in the absence of dividends. Because up and down movements are based on the prepaid forward, which pays no dividends, the risk-neutral probability of an up move in the prepaid forward price is given by  $p^* = \frac{e^{(r - \delta)h} - d}{u - d}$ , as for a non-dividend paying stock.

# FIGURE 10

Binomial tree for pricing an American call option on

a stock paying a discrete dividend of 5 in 8 months;

assumes S = 41.00, K =

40.00, σ = 0.3392, r =

0.08, T = 1.00 years, δ =

0.00, and h = 0.333. At each node the stock price, prepaid

forward price, and option price are given. Option

prices in bold italic signify that exercise is optimal at

that node.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/536cd7e9871de11c8a9bbddb49fa91500ee79df4ed9407f102ceae2bdc58c860.jpg)

# CHAPTER SUMMARY

Both call and put options may be rationally exercised prior to expiration. The early-exercise decision weighs three considerations: dividends on the underlying asset, interest on the strike price, and the insurance value of keeping the option alive. Calls will be early-exercised in order to capture dividends on the underlying stock; interest and insurance weigh against early exercise. Puts will be early-exercised in order to capture interest on the strike price; dividends and insurance weigh against early exercise. For both calls and puts, the early-exercise criterion becomes less stringent as the option has less time to maturity.

Risk-neutral option valuation is consistent with valuation using more traditional discounted cash flow methods. With risk-neutral pricing it is not necessary to estimate the expected return on the stock in order to price an option. With traditional discounted cash flow methods, the correct discount rate for the option varies along the binomial tree; thus, valuation is considerably more complicated than with risk-neutral pricing.

The binomial model, which approximates the lognormal distribution, is a random walk model adapted to modeling stock prices. The model assumes that the continuously compounded return on the stock is normally distributed, which implies that the stock price is lognormally distributed.

The binomial model can be adapted to price options on a stock that pays discrete dividends. Discrete dividends can lead to a nonrecombining binomial tree. If we assume that the prepaid forward price follows a binomial process instead of the stock price, the tree becomes recombining.

# FURTHER READING

The binomial model can be used to derive the Black-Scholes model. The literature on risk-neutral pricing is fairly technical. Cox and Ross (1976) was the first paper to use risk-neutral pricing, and Harrison and Kreps (1979) studied the economic underpinnings. Two good treatments of this topic are Huang and Litzenberger (1988, ch. 8)—their treatment inspired Appendix B—and Baxter and Rennie (1996).

Campbell et al. (1997) and Cochrane (2001) summarize evidence on the distribution of stock prices. The original Samuelson work on asset prices following a random walk (Samuelson, 1965) remains a classic, modern empirical evidence notwithstanding.

Broadie and Detemple (1996) discuss the computation of American option prices, and also discuss alternative binomial approaches and their relative numerical efficiency.

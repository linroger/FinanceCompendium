# Option Valuation

# 21

IN THE PREVIOUS chapter, we examined option markets and strategies. We saw that many securities contain embedded options that affect both their values and their risk-return characteristics. In this chapter, we ask how options are valued. Most option-valuation models require a considerable background in statistics. Still, many of the ideas and insights of these models can be demonstrated in simple examples, and we will concentrate on these.

We start with a discussion of the factors that ought to affect option prices. After this discussion, we present several bounds within which option prices must lie. Next we turn to quantitative models, starting with a simple "two-state" option-valuation model and then showing how this approach can be generalized into a useful and accurate pricing tool. We then move on to one particular valuation formula, the famous Black-Scholes model. Finally, we look at some of the more important applications of option-pricing theory in portfolio management and control.


Option-pricing models allow us to "back out" market estimates of stock-price volatility, and we will examine these measures of implied volatility. Next we turn to some of the more important applications of option-pricing theory in risk management. Finally, we take a brief look at some of the empirical evidence on option pricing and the implications of that evidence concerning the limitations of the Black-Scholes model.

# 21.1 Option Valuation: Introduction

# Intrinsic and Time Values

Consider a call option that is out of the money at the moment, with the stock price below the exercise price. This does not mean the option is valueless. Even though immediate exercise would be unprofitable, the call still has value because there is always a chance the stock price will rise above the exercise price by the expiration date. If not, the worst that can happen is that the option will expire with zero value.

The value  $S_0 - X$  is called the intrinsic value of in-the-money call options because it gives the payoff that could be obtained by immediate exercise. Intrinsic value is set equal to zero for out-of-the-money or at-the-money options. The difference between price and intrinsic value is commonly called the option's time value.

"Time value" is unfortunate terminology because it may confuse the option's time value with the time value of money. Time value in the options context refers simply to the difference between the option's price and the value it would have if it were expiring immediately. It is the part of the option's value that may be attributed to its remaining time to expiration.

Most of an option's time value typically is a type of "volatility value." Even if immediate exercise would be unprofitable, the call still has value because there is always a chance the stock price will rise above the exercise price by the expiration date. But if it does not, the worst that can happen is that the option will expire with zero value. The volatility value lies in the value of the right not to exercise if that action would be unprofitable.

As the stock price increases, it becomes increasingly likely that the call will be exercised by expiration. Ultimately, with exercise all but assured, the volatility value becomes minimal. As the stock price gets ever larger, the option value approaches the "adjusted" intrinsic value, the stock price minus the present value of the exercise price,  $S_0 - \mathrm{PV}(X)$ .

Why should this be? If you are virtually certain the option will be exercised and the stock purchased for  $X$  dollars, it is as though you own the stock already. You will almost certainly own it shortly. You just haven't paid for it yet. You will pay the exercise price, so the present value of your obligation is the present value of  $X$ ; therefore, the net value of the call option is  $S_0 - \mathrm{PV}(X)$ .

Figure 21.1 illustrates the call option valuation function. The value curve shows that when the stock price is very low, the option is nearly worthless because there is almost no chance that it will be exercised. When the stock price is very high, the option value approaches adjusted intrinsic value. In the midrange case, where the option is approximately at the money, the option curve diverges from the straight lines corresponding to adjusted intrinsic value. This is because although exercise today would have a negligible (or negative) payoff, the volatility value of the option is quite high in this region.

The call always increases in value with the stock price. The slope is greatest, however, when the option is deep in the money. In this case, exercise is all but assured, and the option price increases one-for-one with the stock price.

# Determinants of Option Values

We can identify at least six variables that should affect the value of a call option: the stock price, the exercise price, the volatility of the stock price, the time to expiration, the interest rate, and the dividend rate of the stock. The value of the call option should increase with the stock price and decrease with the exercise price because the payoff to a call, if exercised, equals  $S_{T} - X$ . The expected payoff increases with the difference  $S_{0} - X$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/5de6db340f5b5afd19648a6ff4078962aa817b134516536ffd16f6f34f62adc6.jpg)
Figure 21.1 Call option value before expiration

Call option values also increase with the volatility of the underlying stock price. To see why, compare a scenario where possible stock prices at expiration may range from  $10 to$ 50 to one where they range only from  $20 to$ 40. In both cases, the expected, or average, stock price will be \$30. Suppose the exercise price on a call option is also \$30. What are the option payoffs?

<table><tr><td colspan="6">High-Volatility Scenario</td></tr><tr><td>Stock price</td><td>$10</td><td>$20</td><td>$30</td><td>$40</td><td>\$50</td></tr><tr><td>Option payoff</td><td>0</td><td>0</td><td>0</td><td>10</td><td>20</td></tr><tr><td colspan="6">Low-Volatility Scenario</td></tr><tr><td>Stock price</td><td>$20</td><td>$25</td><td>$30</td><td>$35</td><td>\$40</td></tr><tr><td>Option payoff</td><td>0</td><td>0</td><td>0</td><td>5</td><td>10</td></tr></table>

If each outcome is equally likely, with probability .2, the expected payoff in the high-volatility scenario is \$6, but with low volatility, the expected payoff is half as much, only \$3.

The higher option value when share price volatility is higher reflects the volatility value of the call. No matter how far below 30 the stock price drops, the option holder will get zero. Extremely poor stock price performance is no worse for the call option holder than moderately poor performance.

# Table 21.1

Determinants of call option values

<table><tr><td>If This Variable Increases . . .</td><td>The Value of a Call Option</td></tr><tr><td>Stock price, S</td><td>Increases</td></tr><tr><td>Exercise price, X</td><td>Decreases</td></tr><tr><td>Volatility, σ</td><td>Increases</td></tr><tr><td>Time to expiration, T</td><td>Increases</td></tr><tr><td>Interest rate, rf</td><td>Increases</td></tr><tr><td>Dividend payouts</td><td>Decreases</td></tr></table>

When the share price increases, however, the call will expire in the money, and will be more profitable the higher the stock price. Thus, extremely good stock outcomes improve the option payoff without limit, but extremely poor outcomes cannot worsen the payoff below zero. This asymmetry means that volatility in the underlying stock price increases the expected payoff to the option, thereby enhancing its value.[2]

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/6217786b5f63732199b18cee8e0a61d3ad7b9f2a70494d36bc54b54961a3e384.jpg)

# Concept Check 21.1

Use the high and low volatility scenarios that we used for the call option to show that put options also are worth more when stock price volatility is higher.

Similarly, longer time to expiration increases the value of a call option. For more distant expiration dates, there is more time for unpredictable future events to affect prices, and the range of likely stock prices increases. This has an effect similar to that of increased volatility. Moreover, as time to expiration lengthens, the present value of the exercise price falls, which also benefits the call option holder. As a corollary to this issue, call option values are higher when interest rates rise (holding the stock price constant) because higher interest rates also reduce the present value of the exercise price.

Finally, the dividend payout policy of the firm affects option values. A high-dividend payout policy puts a drag on the rate of growth of the stock price. For any expected total rate of return on the stock, a higher dividend yield must imply a lower expected rate of capital gain. This drag decreases the potential payoff from the call option, thereby reducing its value. Table 21.1 summarizes these relationships.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/85393518f2a6a2d0c464457969ff3133106d0236ccb1c0109782a4164d0fc285.jpg)

# Concept Check 21.2

Prepare a table like Table 21.1 for the determinants of put option values. How should American put values respond to increases in  $S$ ,  $X$ ,  $\sigma$ ,  $T$ ,  $r_f$ , and dividend payouts?

2You should be careful interpreting the relationship between volatility and option value. Neither the focus of this analysis on total (as opposed to systematic) volatility nor the conclusion that options buyers seem to like volatility contradicts modern portfolio theory. In conventional discounted cash flow analysis, we find the discount rate appropriate for a given distribution of future cash flows. Greater risk implies a higher discount rate and lower present value. Here, however, the expected cash flow from the option depends on the volatility of the stock. The option value increases not because traders like risk but because the option's expected payoff increases along with the volatility of the underlying asset.

# 21.2 Restrictions on Option Values

Several quantitative models of option pricing have been devised, and we will examine some of them later in this chapter. They all, however, rely on simplifying assumptions. You might wonder which properties of option values are truly general and which depend on particular simplifications. Therefore, we begin with some of the more important general properties of option prices.

# Restrictions on the Value of a Call Option

The most obvious restriction on the value of a call option is that its value cannot be negative. Its payoff is zero at worst, and possibly positive, so it has some positive value.

We can place another lower bound on the value of a call option. Suppose that the stock will pay a dividend of D dollars just before the option expiration date, denoted by T (where today is time 0). Now compare two portfolios, one consisting of a call option on one share of stock and the other a leveraged equity position consisting of that share and borrowing of (X + D) / (1 + r_f)^T dollars. The loan repayment is X + D dollars, due on the expiration date of the option. For example, for a one-year maturity option with exercise price 70, dividends to be paid of 5, and an effective annual interest of 5\%, you would purchase one share of stock and borrow 75/1.05 = \$71.43. In one year, when the loan matures, the payment due is \$75. At that time, the payoff to the leveraged equity position is given by the following table (where S_T denotes the stock price at the option expiration date).

<table><tr><td></td><td>In General</td><td>Our Numbers</td></tr><tr><td>Stock value</td><td>ST+D</td><td>ST+5</td></tr><tr><td>– Payback of loan</td><td>-(X+D)</td><td>-75</td></tr><tr><td>Total</td><td>ST-X</td><td>ST-70</td></tr></table>

Notice that the payoff to the stock is the ex-dividend stock price plus dividends received. Whether the total payoff to the stock-plus-borrowing position is positive or negative depends on whether  S_{T}  exceeds  X . The net cash outlay required to establish this leveraged equity position is  S_{0} - \71.43 , or, more generally,  S_{0} - (X + D) / (1 + r_{f})^{T} , that is, the current price of the stock,  S_{0} , less the initial cash inflow from the borrowing position.

The payoff to the call will be  $S_{T} - X$  if the option expires in the money and zero otherwise. Thus, the option payoff equals the leveraged equity payoff when that payoff is positive and is greater when the leveraged equity position has a negative payoff. Because the option's payoff is always greater than or equal to that of the leveraged equity position, its price must exceed the cost of establishing that position.

Therefore, the value of the call must be greater than  $S_0 - (X + D) / (1 + r_f)^T$ , or, more generally,

$$
C _ {0} \geq S _ {0} - \operatorname {P V} (X) - \operatorname {P V} (D)
$$ where  $\mathrm{PV}(X)$  denotes the present value of the exercise price and  $\mathrm{PV}(D)$  is the present value of the dividends the stock will pay at the option's expiration. More generally, we can interpret  $\mathrm{PV}(D)$  as the present value of any and all dividends to be paid prior to the option expiration date. Because we know already that the value of a call option must be nonnegative, we conclude that  $C_0$  is greater than the maximum of either 0 or  $S_0 - \mathrm{PV}(X) - \mathrm{PV}(D)$ .


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/56dc510224d06a68103a6adf17da37ee7b9a3ce65cd69f4229d17988dca1074a.jpg)
Figure 21.2 Range of possible call option values

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/d0b597e93d93d2d0fbf0cb69173acdbdba06c38008dbc21e30a896463441bc98.jpg)
Figure 21.3 Call option value as a function of the current stock price

We also can place an upper bound on the value of the call; this bound is simply the stock price. No one would pay more than  $S_0$  dollars for the right to purchase a stock currently worth  $S_0$  dollars. Thus  $C_0 \leq S_0$ .

Figure 21.2 demonstrates graphically the range of prices that is ruled out by these upper and lower bounds for the value of a call option. Values outside the shaded area are not possible. Before expiration, the call option value normally will be within the allowable range, touching neither the upper nor lower bound, as in Figure 21.3.

# Early Exercise and Dividends

A call option holder who wants to close out that position has two choices: exercise the call or sell it. If it is exercised at time  $t$ , the call will provide a payoff of  $S_{t} - X$ , assuming, of course, that the option is in the money. We have just seen that the option can be sold for at least  $S_{t} - \mathrm{PV}(X) - \mathrm{PV}(D)$ . Therefore, if the stock does not pay a dividend, the call must be worth at least  $S_{t} - \mathrm{PV}(X)$ . Because the present value of  $X$  is less than  $X$  itself, it follows that

$$
C _ {t} \geq S _ {t} - \operatorname {P V} (X) > S _ {t} - X
$$

The implication here is that the proceeds from a sale of the option (at price  $C_t$ ) must exceed the proceeds from an exercise  $(S_t - X)$ . It is more attractive to sell the call, which keeps it alive, than to exercise and thereby end the option. In other words, calls on non-dividend-paying stocks must be "worth more alive than dead."

If it never pays to exercise a call option before expiration, the right to exercise early actually must be valueless. We conclude that the values of otherwise-identical American and European call options on stocks paying no dividends are equal. This simplifies matters because any valuation formula that applies to the European call, for which only one exercise date need be considered, also must apply to an American call.

As most stocks do pay dividends, you may wonder whether this result is just a theoretical curiosity. It is not: Reconsider our argument and you will see that all that we really require is that the stock pay no dividends until the option expires. This condition will be true for many real-world options.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/709b88a7eaccc595dc1709b48a22af9f6272bcb30e45d4d9d1ec0828a65694ee.jpg)
Figure 21.4 Put option values as a function of the current stock price

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/79b493953692e0a913a1875f08181992fb276283e46ba5a26e2ae04722845234.jpg)

# Early Exercise of American Puts

Early exercise of American put options sometimes will be rational regardless of dividends. To see why, start with an extreme example. Suppose that you purchase a put option, and almost immediately the firm goes bankrupt and its stock price falls to zero. Of course you want to exercise now because the stock price can fall no lower. Immediate exercise gives you immediate receipt of the exercise price, which can be invested to start generating income. Delay in exercise means a time-value-of-money cost. The right to exercise a put option before expiration must have value.

Now suppose instead that the firm is only nearly bankrupt, with the stock selling at just a few cents. Immediate exercise may still be optimal. After all, the stock price can fall by only a very small amount, meaning that the proceeds from future exercise cannot be more than a few cents greater than the proceeds from immediate exercise. Against this possibility of a tiny increase in proceeds must be weighed the time-value-of-money cost of deferring exercise. Clearly, there is some stock price below which early exercise is optimal.

This argument also proves that the American put must be worth more than its European counterpart. The American put allows you to exercise anytime before expiration. Because the right to exercise early may be useful in some circumstances, it will command a premium. The American put therefore will sell for a higher price than a European put with otherwise identical terms.

Figure 21.4, Panel A, illustrates the value of an American put option as a function of the current stock price,  $S_0$ . Once the stock price drops below a critical value, denoted  $S^*$  in the figure, exercise becomes optimal. At that point, the option-pricing curve is tangent to the straight line depicting the intrinsic value of the option. If and when the stock price reaches  $S^*$ , the put option is exercised and its payoff equals its intrinsic value.

In contrast, the value of the European put, which is graphed in Figure 21.4, Panel B, is not asymptotic to the intrinsic value line. Because early exercise is prohibited, the maximum value of the European put is  $\mathrm{PV}(X)$ , which occurs at the point  $S_0 = 0$ . Obviously, for a long enough horizon,  $\mathrm{PV}(X)$  can be made arbitrarily small.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/081c3b22ac28d16f1907fa583e1aeabb5ba0d0241e77d2eb818d87cfa1bccd2c.jpg)

# Concept Check 21.3

In light of this discussion, explain why the put-call parity relationship is valid only for European options on non-dividend-paying stocks. If the stock pays no dividends, what inequality for American options would correspond to the parity relation?

# 21.3 Binomial Option Pricing

# Two-State Option Pricing

A complete understanding of commonly used option-valuation formulas is difficult without a substantial mathematics background. Nevertheless, we can develop valuable insight from a simple special case. Assume a stock price can take only two possible values at option expiration: The stock will either increase to a given higher price or decrease to a given lower price. Although this may seem an extreme simplification, it provides a useful introduction to more complicated and realistic models. Moreover, it can be extended to describe far more reasonable specifications of stock price behavior. In fact, financial firms regularly employ variants of this simple model to value options and securities with option-like features.

Suppose the stock now sells at S0 = \$100, and the price will either increase by a multiple of u = 1.20 to \$120 (u stands for "up") or fall by a multiple of d = .9 to \$90 (d stands for "down") by year-end. A call option might specify an exercise price of \$110 and a time to expiration of one year. The interest rate is 10\%. At year-end, the payoff to the call will be either \$0, if the stock price falls, or \$10, if the stock price increases to 120.

These possibilities are illustrated by the following value "trees":

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/0275cd70f2c1abc39367a24c66a0aac951181174ccd2858fc3b6ee744ac013dd.jpg)
Stock price

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/5e1cfed18ac79b2d9122723abdba43f106ec7de735aaf9a0c6a8e61d2f8f859a.jpg)
Call option value

Now compare the call's payoff to that of a portfolio consisting of one share of the stock and borrowing of 81.82 at the interest rate of 10\%. The payoff of this portfolio also depends on the stock price at year-end:

Value of stock at year-end

$90 $120

- Repayment of loan with interest

-90 -90

Total

$ 0 $ 30

We know the cash outlay to establish the portfolio is  $18.18:$ 100 for the stock, less the  $\$ 81.82$  proceeds from borrowing. Therefore, the portfolio’s value tree is

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/01a818982ae67b70537dd452ca2bf0ca71873a159d8e971981ea4459d52f4837.jpg)

The final payoff of this portfolio is exactly three times that of the call option for either value of the stock price. Because the portfolio replicates the payoff of the three calls, we call it a replicating portfolio. Moreover, because their payoffs are the same, the three calls and the replicating portfolio must have the same value. Therefore,

$$
3 C = \$ 18.18
$$ or each call should sell at  C = \6.06 . Thus, given the stock price, exercise price, interest rate, and volatility of the stock price (as represented by the spread between the up or down movements), we can derive the value of the call option.


Replication is behind most option-pricing formulas. For more complex stock price distributions, the replication technique is correspondingly more complex, but the principles remain the same.

One way to view the role of replication is to note that in this example, a portfolio made up of one share of stock and three call options written is perfectly hedged. Its year-end value is independent of the ultimate stock price:

<table><tr><td>Stock price</td><td>$90</td><td>$120</td></tr><tr><td>– Obligations from 3 calls written</td><td>-0</td><td>-30</td></tr><tr><td>Portfolio value</td><td>$90</td><td>$ 90</td></tr></table>

The investor has formed a riskless portfolio, with a payout of \$90. Its value must be the present value of \$90, or $90/1.10 = $81.82. The value of the portfolio, which equals \$100 from the stock held long, minus 3C from the three calls written, should equal \$81.82. Hence, $100 - 3C = $81.82, or C = 6.06.

The ability to create a perfect hedge is the key to this argument. The hedge locks in the end-of-year payout, which therefore can be discounted using the risk-free interest rate. We do not need to know either the option's or the stock's beta or expected rate of return. When a perfect hedge can be established, the final stock price does not affect the portfolio's payoff, so the stock's risk and return parameters have no bearing on the option's value.

The hedge ratio in this example is one share of stock to three calls, or one-third. This ratio has an easy interpretation: It is the ratio of the range of the values of the option to those of the stock across the two possible outcomes. The stock, which originally sells for  $S_0 = 100$ , will be worth either  $d \times \100 = \$ 90  or  $u \times \$100 = \$120\$ , for a range of  $\$30$ . If the stock price increases, the call will be worth  $C_u = \$10$ , whereas if the stock price decreases, the call will be worth  $C_d = 0$ , for a range of  $\$10$ . The ratio of ranges, 10/30, is one-third, which is the hedge ratio.

The hedge ratio equals the ratio of ranges because the option and stock are perfectly correlated in this two-state example. Because they are perfectly correlated, a perfect hedge requires that they be held in proportion to relative volatility.

We can generalize the hedge ratio,  $H$ , for other two-state option problems as

$$
H = \frac {C _ {u} - C _ {d}}{u S _ {0} - d S _ {0}}
$$ where  $C_u$  or  $C_d$  refers to the call option's value when the stock goes up or down, respectively, and  $uS_0$  and  $dS_0$  are the stock prices in the two states. If the investor writes one option and holds  $H$  shares of stock, the value of the portfolio will be unaffected by the stock price. In this case, option pricing is easy: Simply set the value of the hedged portfolio equal to the present value of the known payoff.


Using our example, the option-pricing technique would proceed as follows:

1. Given the possible end-of-year stock prices,  $uS_{0} = 120$  and  $dS_{0} = 90$ , and the exercise price of 110, calculate that  $C_{u} = 10$  and  $C_{d} = 0$ . The stock price range is 30, while the option price range is 10.
2. Find that the hedge ratio of  $10 / 30 = 1 / 3$
 3. Find that a portfolio made up of 1/3 share with one written option would have an end-of-year value of 30 with certainty.

4. Show that the present value of \$30 with a 1-year interest rate of 10\% is \$27.27.
5. Set the value of the hedged position to the present value of the certain payoff:

$$
\frac {1}{3} S _ {0} - C _ {0} = \$ 2 7. 2 7
$$

$$
\$ 33.33 - C _ {0} = \$ 27.27
$$

6. Solve for the call's value, C0 = 6.06.

What if the option is overpriced, perhaps selling for 6.50? Then you can make arbitrage profits by writing the overpriced option and hedging with shares. Here is how:

<table><tr><td></td><td></td><td colspan="2">Cash Flow in 1 Year for Each Possible Stock Price</td></tr><tr><td></td><td>Initial Cash Flow</td><td>S1=90</td><td>S1=120</td></tr><tr><td>1. Write 3 options</td><td>$ 19.50</td><td>$ 0</td><td>$-30</td></tr><tr><td>2. Purchase 1 share</td><td>-100</td><td>90</td><td>120</td></tr><tr><td>3. Borrow \$80.50 at 10\% interest; repay in 1 year</td><td>80.50</td><td>-88.55</td><td>-88.55</td></tr><tr><td>Total</td><td>$ 0</td><td>$ 1.45</td><td>1.45</td></tr></table>

Although the net initial investment is zero, the payoff in one year is positive and riskless. If the option were underpriced, one would simply reverse this arbitrage strategy: Buy the option and sell the stock short to eliminate price risk. By the way, the present value of the profit to this arbitrage strategy exactly equals three times the amount by which the option is overpriced. The present value of the risk-free profit of  \$1.45 at a 10\% interest rate is\$ 1.318. With three options written in the strategy above, this translates to a profit of $.44 per option, exactly the amount by which the option was overpriced: \$6.50 versus the "fair value" of 6.06.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/7eeab1b0397b642142f5ea4d960740d7a6d353644e2aed646a54dd3033a4d978.jpg)

# Concept Check 21.4

Suppose the call option had been underpriced, selling at  \$5.50. Formulate the arbitrage strategy to exploit the mispricing, and show that it provides a riskless cash flow in one year of\$ 6167 per option purchased. Compare the present value of this cash flow to the option mispricing.

# Generalizing the Two-State Approach

Although the two-state stock price model seems overly simplistic, we can generalize it to incorporate more realistic assumptions. To start, suppose we break up the year into two 6-month segments, and assert that over each half-year, the stock price can take on two values. In this example, we will say it can increase  $10\%$  (i.e.,  $u = 1.10$ ) or decrease  $5\%$  (i.e.,  $d = .95$ ). A stock initially selling at 100 could follow these possible paths over the course of the year:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/b3b4961bbd4776c75710bb9750b149a4f4f646b8b36b7bb5930623feffd66fd7.jpg)

The midrange value of 104.50 can be attained by two paths: an increase of  $10\%$  followed by a decrease of  $5\%$ , or a decrease of  $5\%$  followed by a  $10\%$  increase.

There are now three possible end-of-year values for the stock and three for the option:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/f4293550bc4f86f34fb3e6fdfb17fd5f446e82639cd24a44cd3b4c942aa5863e.jpg)

Using methods similar to those we followed above, we could value  $C_u$  from knowledge of  $C_{uu}$  and  $C_{ud}$ , then value  $C_d$  from  $C_{du}$  and  $C_{dd}$ , and finally value  $C_0$  from  $C_u$  and  $C_d$ . And there is no reason to stop at 6-month intervals. We could next break the year into four 3-month units, or twelve 1-month units, or 365 1-day units, each of which would be posited to have a two-state process. Although the calculations become quite numerous and correspondingly tedious, they are easy to program into a computer or even a spreadsheet, and such programs are used widely by participants in the options market.

# Example 21.1 Binomial Option Pricing

Suppose the semiannual risk-free interest rate is 5\% and we want to value a one-year call option with exercise price \$110 on the stock described in the two-period price tree just above. We start by finding C_u, the value of the call in six months assuming the stock price has increased. From this point, the call can rise by year-end to an expiration-date value of C_u = \$11 (because at this point the stock price is u × u × S_0 = \$121) or fall to a final value of C_u d = 0 (because at this point the stock price is u × d × S_0 = \$104.50, which is less than the 110 exercise price). Therefore, the hedge ratio at this point is

$$
H = \frac {C _ {u u} - C _ {u d}}{u u S _ {0} - u d S _ {0}} = \frac {\mathbb {S} 1 1 - 0}{\mathbb {S} 1 2 1 - 1 0 4 . 5 0} = \frac {2}{3}
$$

Thus, if the stock price rises in the first half-year period, the following portfolio will be worth 209 on the option expiration date regardless of the ultimate stock price:

<table><tr><td></td><td>udS0 = $104.50</td><td>uuS0 = $121</td></tr><tr><td>Buy 2 shares at price uS0 = $110</td><td>$209</td><td>\$242</td></tr><tr><td>Write 3 calls at price C_u</td><td>0</td><td>-33</td></tr><tr><td>Total</td><td>\$209</td><td>209</td></tr></table>

The portfolio will have a market value in month 6 equal to the present value of 209 discounted by the semiannual interest rate:

$$
2 \times 1 1 0 - 3 C _ {u} = \$ 2 0 9 / 1. 0 5 = \$ 1 9 9. 0 4 7
$$

Solve to find that  $C_U = \$ 6.984$ .

Next we find the value of C_d. It is easy to see that this value must be zero. If we reach this point (corresponding to a stock price of \$95), the stock price at option expiration will be either \$104.50 or 90.25; in either case, the option will expire out of the money. (More formally, we could note that with C_ed = C_d_d = 0, the hedge ratio is zero, and a portfolio of zero shares will replicate the payoff of the call!)

Finally, we solve for  $C_0$  using the values of  $C_u$  and  $C_d$ . Concept Check 21.5 leads you through the calculations that show the option value to be 4.434.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/3366f4a23aa329f971e31b8aa49c0aeccba37f5a54f877232157d5962ce4d56e.jpg)

# Concept Check 21.5

Show that the initial value of the call option in Example 21.1 is 4.434.

a. Confirm that the spread in option values in six months is  C_u - C_d = \6.984 .
b. Confirm that the spread in stock values is  uS_{0} - dS_{0} = \15 .
c. Confirm that the hedge ratio is .4656 share purchased for each call written.
d. Demonstrate that the value in six months of a portfolio comprised of .4656 share and one call written is riskless.
e. Calculate the present value of this payoff.
$f$  Solve for the option value.

# Making the Valuation Model Practical

As we break the year into progressively finer subintervals, the range of possible year-end stock prices expands. For example, when we increase the number of subperiods to three, the number of possible stock prices increases to four, as demonstrated in the following stock price tree:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/c0c50a2501352835a12e4bb204071a7218c302cf8b23c48939613a68db5c7ef3.jpg)

Thus, by allowing for an ever-greater number of subperiods, we can overcome one of the apparent limitations of the valuation model: that the number of possible end-of-period stock prices is small.

Notice that extreme events such as  $u^3 S_0$  or  $d^3 S_0$  are relatively rare, as they require either three consecutive increases or decreases in the three subintervals. More moderate, or mid-range, results such as  $u^2 dS_0$  can be arrived at by more than one path—any combination of two price increases and one decrease will result in stock price  $u^2 dS_0$ . There are three of these paths: uud, udu, duu. In contrast, only one path, uuu, results in a stock price of  $u^3 S_0$ . Thus, midrange values are more likely. As we make the model more realistic and break up the option maturity into more and more subperiods, the probability distribution for the final stock price begins to resemble the familiar bell-shaped curve, with highly unlikely extreme outcomes and far more likely midrange outcomes. The exact probability of each outcome is given by the binomial probability distribution, so this multiperiod approach to option pricing is called the binomial model.

But we still need to answer an important practical question. Before the binomial model can be used to value actual options, we need a way to choose reasonable values for  $u$  and  $d$ . The spread between up and down movements in the price of the stock reflects the volatility of its rate of return, so the choice for  $u$  and  $d$  should depend on that volatility. Call  $\sigma$  your estimate of the standard deviation of the stock's continuously compounded annualized rate of return and  $\Delta t$  the length of each subperiod. To make the standard deviation of the stock return match your estimate of  $\sigma$ , it turns out that you can set  $u = \exp(\sigma \sqrt{\Delta t})$  and  $d = \exp(-\sigma \sqrt{\Delta t})$ . You can see that the proportional difference between  $u$  and  $d$  increases with both annualized volatility as well as the length of the subperiod. This makes sense, as both higher  $\sigma$  and longer holding periods make future stock prices more uncertain. The following example illustrates how to use this calibration.

# Example 21.2 Calibrating  $u$  and  $d$  to Stock Volatility

Suppose you are using a 3-period model to value a one-year option on a stock with volatility (i.e., annualized standard deviation) of  $\sigma = .30$ . With a time to expiration of  $T = 1$  year, and  $n = 3$  subperiods, you would calculate  $\Delta t = T / n = 1 / 3$ ,  $u = \exp (\sigma \sqrt{\Delta t}) = \exp (.30\sqrt{1 / 3}) = 1.189$ , and  $d = \exp (-\sigma \sqrt{\Delta t}) = \exp (-.30\sqrt{1 / 3}) = .841$ . Given the probability of an up movement, you could then work out the probability of any final stock price. For example, suppose the probability that the stock price increases is .554 and the probability that it decreases is .446. Then the probability of stock prices at the end of the year would be as follows:

<table><tr><td>Event</td><td>Possible Paths</td><td>Probability</td><td>Final Stock Price</td></tr><tr><td>3 down movements</td><td>ddd</td><td>0.4463 = 0.089</td><td>59.48 = 100 × 0.8413</td></tr><tr><td>2 down and 1 up</td><td>ddu, dad, udd</td><td>3 × 0.4462 × 0.554 = 0.330</td><td>84.10 = 100 × 1.189 × 0.8412</td></tr><tr><td>1 down and 2 up</td><td>uud, udu, duu</td><td>3 × 0.446 × 0.5542 = 0.411</td><td>118.89 = 100 × 1.1892 × 0.841</td></tr><tr><td>3 up movements</td><td>uuu</td><td>0.5543 = 0.170</td><td>168.09 = 100 × 1.1893</td></tr></table>

We plot this probability distribution in Figure 21.5, Panel A. Notice that the two middle end-of-period stock prices are, in fact, more likely than either extreme.

Now we can extend Example 21.2 by breaking up the option maturity into ever-shorter subintervals. As we do, the stock price distribution becomes increasingly plausible, as we demonstrate in Example 21.3.

# Example 21.3 Increasing the Number of Subperiods

In Example 21.2, we broke up the year into three subperiods. Let's now look at the cases of 6 and 20 subperiods.

<table><tr><td>Subperiods, n</td><td>Δt = T/n</td><td>u = exp(σ√Δt)</td><td>d = exp(−σ√Δt)</td></tr><tr><td>3</td><td>0.333</td><td>exp(0.173) = 1.189</td><td>exp(−0.173) = 0.841</td></tr><tr><td>6</td><td>0.167</td><td>exp(0.122) = 1.130</td><td>exp(−0.122) = 0.885</td></tr><tr><td>20</td><td>0.050</td><td>exp(0.067) = 1.069</td><td>exp(−0.067) = 0.935</td></tr></table>

We plot the resulting probability distributions in Panels B and C of Figure 21.5.

4 Using this probability, the continuously compounded expected rate of return on the stock is .10. In general, the formula relating the probability of an upward movement to the annual expected rate of return,  $r$ , is  $p = \frac{\exp(r\Delta t) - d}{u - d}$ .
We adjust the probabilities of up versus down movements using the formula in footnote 4 to make the distributions in Figure 21.5 comparable. In each panel,  $p$  is chosen so that the stock's expected annualized, continuously compounded rate of return is  $10\%$ .

Notice that the right tail of the distribution in Panel C is noticeably longer than the left tail. In fact, as the number of intervals increases, the distribution progressively approaches the skewed log-normal (rather than the symmetric normal) distribution. Even if the stock price were to decline in each subinterval, it can never drop below zero. But there is no corresponding upper bound on its potential performance. This asymmetry gives rise to the skewness of the distribution.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/de827136df1ae7446d410ef6833f4b8b21702aab2c7e36e4b82b95546b9063d3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/9b54f1fb0a25f3e6b90b14d48bc9ea9a38a04d363da9d3aba1db511e3e15eab8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/1b4275104be37c10bedcbdaea571b4da0bc12a76e9d2c80c760da40bea059286.jpg)
Figure 21.5 Probability distributions for final stock price. Possible outcomes and associated probabilities. In each panel, the stock's annualized, continuously compounded expected rate of return is  $10\%$  and its standard deviation is  $30\%$ . Panel A. Three subintervals. In each subinterval, the stock can increase by  $18.9\%$  or fall by  $15.9\%$ . Panel B. Six subintervals. In each subinterval, the stock can increase by  $13.0\%$  or fall by  $11.5\%$ . Panel C. Twenty subintervals. In each subinterval, the stock can increase by  $6.9\%$  or fall by  $6.5\%$ .

Eventually, as we divide the option maturity into an ever-greater number of subintervals, each node of the event tree corresponds to a smaller and smaller time interval. The possible stock price movement within each time interval is correspondingly small. As those many intervals pass, the end-of-period stock price more and more closely

We pointed out earlier that the binomial model valuation approach is arbitrage-based. We can value the option by replicating its payoff with shares of stock plus borrowing. The ability to replicate the option means that its price relative to the stock and the interest rate must be based only on the technology of replication and not on risk preferences. It cannot depend on risk aversion or the capital asset pricing model or any other model of equilibrium risk-return relationships.

This insight—that the pricing model must be independent of risk aversion—leads to a very useful shortcut to valuing options. Imagine a risk-neutral economy, that is, an economy in which all investors are risk-neutral. This hypothetical economy must value options the same as our real one because risk aversion cannot affect the valuation formula.

In a risk-neutral economy, investors would not demand risk premiums and would therefore value all assets by discounting expected payoffs at the risk-free rate of interest. Therefore, a security such as a call option would be valued by discounting its expected cash flow at the risk-free rate:  $C = \frac{E'(CF)}{1 + r_f}$ . We put the expectation operator  $E$  in quotation marks to signify that this is not the true expectation, but the expectation that would prevail in the hypothetical risk-neutral economy. To be consistent, we must calculate this expected cash flow using the rate of return the stock would have in that risk-neutral economy, not using its true rate of return. But if we successfully maintain consistency, the value derived for the hypothetical economy should match the one in our own.

How do we compute the expected cash flow from the option in the risk-neutral economy? Because there are no risk premiums, the stock's expected rate of return must equal the risk-free rate. Call  $p$  the probability that the stock price increases. Then  $p$  must be chosen to equate the expected rate of increase of the stock price to the risk-free rate (we ignore dividends here):

$$
“ E ” (S _ {1}) = p (u S) + (1 - p) d S = (1 + r _ {f}) S
$$

This implies that  $p = \frac{1 + r_f - d}{u - d}$ . We call  $p$  a risk-neutral probability to distinguish it from the true, or "objective," probability. To illustrate, in our two-state example at the beginning of Section 21.3, we had  $u = 1.2$ ,  $d = .9$ , and  $r_f = .10$ . Given these values,  $p = \frac{1 + .10 - .9}{1.2 - .9} = \frac{2}{3}$ .

Now let's see what happens if we use the discounted cash flow formula to value the option in the risk-neutral economy. We continue to use the two-state example from Section 21.3. We find the present value of the option payoff using the risk-neutral probability and discount at the risk-free interest rate:

$$
C = \frac {E ^ {\prime \prime} (C F)}{1 + r _ {f}} = \frac {p C _ {u} + (1 - p) C _ {d}}{1 + r _ {f}} = \frac {2 / 3 \times 1 0 + 1 / 3 \times 0}{1 . 1 0} = 6. 0 6
$$

This answer exactly matches the value we found using our no-arbitrage approach!

We repeat: This is not truly an expected discounted value.

- The numerator is not the true expected cash flow from the option because we use the risk-neutral probability,  $p$ , rather than the true probability.
- The denominator is not the proper discount rate for option cash flows because we do not account for the risk.
- In a sense, these two "errors" cancel out. But this is not just luck: We are assured to get the correct result because the no-arbitrage approach implies that risk preferences cannot affect the option value. Therefore, the value computed for the risk-neutral economy must equal the value that we obtain in our economy.

When we move to the more realistic multiperiod model, the calculations are more cumbersome, but the idea is the same. Footnote 4 shows how to relate  $p$  to any expected rate of return and volatility estimate. Simply set the expected rate of return on the stock equal to the risk-free rate, use the resulting probability to work out the expected payoff from the option, discount at the risk-free rate, and you will find the option value. These calculations are not difficult to program in Excel.

resembles a lognormal distribution. $^6$  Thus, the apparent oversimplification of the two-state model can be overcome by progressively subdividing any period into many subperiods.

At any node, one still can set up a portfolio that is perfectly hedged over the next tiny time interval. Then, at the end of that interval, on reaching the next node, a new hedge ratio can be computed and the portfolio composition could be revised to remain hedged over the coming small interval. By continuously revising the hedge position, the portfolio remains hedged and earns a riskless rate of return over each interval. This is called dynamic hedging, the continued updating of the hedge ratio as time passes. As the dynamic hedge becomes ever finer, the resulting option-valuation procedure becomes more precise. The nearby box offers further refinements on the use of the binomial model.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/c7dc4fd6dc3b55c236515c373c0784eff04be5b973dd4a945ad1ac11e4eaa344.jpg)

# Concept Check 21.6

In the table in Example 21.3,  $u$  and  $d$  both get closer to 1 ( $u$  is smaller and  $d$  is larger) as the time interval  $\Delta t$  shrinks. Why does this make sense? Does the fact that  $u$  and  $d$  are each closer to 1 mean that the total volatility of the stock over the remaining life of the option is lower?

# 21.4 Black-Scholes Option Valuation

While the binomial model is extremely flexible, a computer is needed for it to be useful in actual trading. An option-pricing formula would be far easier to use than the algorithm involved in the binomial model. It turns out that such a formula can be derived if one is willing to make just two more assumptions: that both the risk-free interest rate and stock price volatility are constant over the life of the option. In this case, as the time to expiration is divided into ever-more subperiods, the distribution of the stock price at expiration progressively approaches the lognormal distribution, as suggested by Figure 21.5. When the stock price distribution is actually lognormal, we can derive an exact option-pricing formula.

# The Black-Scholes Formula

Financial economists searched for years for a workable option-pricing model before Black and Scholes and Merton derived a formula for the value of a call option. Scholes and Merton shared the 1997 Nobel Prize in Economics for their accomplishment. Now widely used by options market participants, the Black-Scholes pricing formula for a call option is

$$
C _ {0} = S _ {0} N \left(d _ {1}\right) - X e ^ {- r T} N \left(d _ {2}\right) \tag {21.1}
$$ where


$$ d _ {1} = \frac {\ln (S _ {0} / X) + (r + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

Fischer Black and Myron Scholes, "The Pricing of Options and Corporate Liabilities," Journal of Political Economy 81 (May-June 1973).
$^{8}$ Robert C. Merton, “Theory of Rational Option Pricing,” Bell Journal of Economics and Management Science 4 (Spring 1973).
Fischer Black passed away in 1995.

and

$C_0 =$  Current call option value.

$S_0 =$  Current stock price.

$N(d) =$  The probability that a random draw from a standard normal distribution will be less than  $d$ . This equals the area under the normal curve up to  $d$ , as in the shaded area of Figure 21.6. In Excel, this function is called NORMSDIST  $(d)$  or NORM.S.DIST  $(d, \text{TRUE})$ .

$X =$  Exercise price.

$e =$  The base of the natural log function, approximately 2.71828. In Excel,  $e^x$  can be evaluated using the function  $\mathrm{EXP}(x)$ .

$r =$  Risk-free interest rate (the annualized continuously compounded rate on a safe asset with the same maturity as the expiration date of the option, which is to be distinguished from  $r_f$ , the discrete period risk-free interest rate).

$T =$  Time to expiration of option, in years.

$\ln =$  Natural logarithm function. In Excel,  $\ln (x)$  can be calculated using the built-in function  $\mathrm{LN}(x)$ .

$\sigma =$  Standard deviation of the annualized continuously compounded rate of return of the stock.

This version of the Black-Scholes formula assumes that the stock pays no dividends before option expiration.

Notice a surprising feature of Equation 21.1: The option value does not depend on the expected rate of return on the stock. In a sense, this information is already built into the formula with the inclusion of the stock price, which itself reflects the stock's risk and return characteristics.

Although the Black-Scholes formula can be intimidating, we can explain it at a somewhat intuitive level. The trick is to view the  $N(d)$  terms (loosely) as risk-adjusted probabilities that the call option will expire in the money. First, look at Equation 21.1 assuming both  $N(d)$  terms are close to 1.0, that is, when there is a very high probability the option will be exercised. Then the call option value is equal to  $S_0 - Xe^{-rT}$ , which is what we called earlier the adjusted intrinsic value,  $S_0 - \mathrm{PV}(X)$ . This makes sense; if exercise is certain, we have a claim on a stock with current value  $S_0$ , and an obligation with present value  $\mathrm{PV}(X)$ , or, with continuous compounding,  $Xe^{-rT}$ .


Now look at Equation 21.1 assuming the  $N(d)$  terms are close to zero, meaning the option almost certainly will not be exercised. Then the equation confirms that the call is worth nothing. For middle-range values of  $N(d)$  between 0 and 1, Equation 21.1 tells us that the call value can be viewed as the present value of the call's potential payoff adjusting for the probability of in-the-money expiration.

How do the  $N(d)$  terms serve as risk-adjusted probabilities? This question quickly leads us into advanced statistics. Notice, however, that  $\ln(S_0 / X)$ , which appears in the numerator of  $d_1$  and  $d_2$ , is approximately the percentage amount by which the option is currently in or out of the money. For example, if  $S_0 = 105$  and  $X = 100$ , the option is  $5\%$  in the money, and  $\ln(105 / 100) = .049$ . Similarly, if  $S_0 = 95$ , the option is  $5\%$  out of the money, and  $\ln(95 / 100) = -.051$ . The denominator,  $\sigma \sqrt{T}$ , adjusts the amount by which the option is in or out of the money for the volatility of the stock price over the remaining life of the option. An option in the money by a given percent is more likely to stay in the money if both stock price volatility and time to expiration are low. Therefore,  $N(d_1)$  and  $N(d_2)$  increase with the probability that the option will expire in the money.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/51ebc4aaf18f48f0fb7bd184231c5de5183dfce6583247d531580e4d1d2d93d7.jpg)
Figure 21.6 A standard normal curve


# Example 21.4 Black-Scholes Valuation

You can use the Black-Scholes formula fairly easily. Suppose you want to value a call option under the following circumstances:

Stock price:  $S_0 = 100$

Exercise price:  $X = 95$

Interest rate:  $r = .10$  (10\% per year)

Time to expiration:  $T = .25$  (3 months or one-quarter of a year)

Standard deviation:  $\sigma = .50$  (50\% per year)

First calculate

$$ d _ {1} = \frac {\ln (1 0 0 / 9 5) + (. 1 0 + . 5 ^ {2} / 2) . 2 5}{. 5 \sqrt {. 2 5}} = . 4 3
$$

$$ d _ {2} = . 4 3 -. 5 \sqrt {. 2 5} = . 1 8
$$

Next find  $N(d_{1})$  and  $N(d_{2})$ . The values of the normal distribution are tabulated and may be found in many statistics textbooks. A table of  $N(d)$  is provided here as Table 21.2. The normal distribution function,  $N(d)$ , is also provided in any spreadsheet program. In Microsoft Excel, for example, the function name is NORMSDIST or NORM.S.DIST. Using either Excel or Table 21.2, we find that

$$
N (. 4 3) = . 6 6 6 4
$$

$$
N (. 1 8) = . 5 7 1 4
$$

Thus, the value of the call option is

$$
\begin{array}{l} C _ {0} = 1 0 0 \times . 6 6 6 4 - 9 5 e ^ {-. 1 0 \times . 2 5} \times . 5 7 1 4 \\ = 6 6. 6 4 - 5 2. 9 4 = \$ 1 3. 7 0 \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/fad32e0b8350e6e5da748fc3db19119628b01d053a0d38ad119a98f29f70a497.jpg)

# Concept Check 21.7

Recalculate the value of the call option in Example 21.4 using a standard deviation of .6 instead of .5. Confirm that the option is worth more using the higher stock-return volatility.

What if the option price in Example 21.4 were  \$15 rather than\$ 13.70? Is the option mispriced? Maybe, but before betting your fortune on that, you may want to reconsider the valuation analysis. First, like all models, the Black-Scholes formula is based on some simplifying abstractions that make the formula only approximately valid.

<table><tr><td>d</td><td>N(d)</td><td>d</td><td>N(d)</td><td>d</td><td>N(d)</td><td>d</td><td>N(d)</td><td>d</td><td>N(d)</td><td>d</td><td>N(d)</td></tr><tr><td>-3.00</td><td>0.0013</td><td>-1.58</td><td>0.0571</td><td>-0.76</td><td>0.2236</td><td>0.06</td><td>0.5239</td><td>0.86</td><td>0.8051</td><td>1.66</td><td>0.9515</td></tr><tr><td>-2.95</td><td>0.0016</td><td>-1.56</td><td>0.0594</td><td>-0.74</td><td>0.2297</td><td>0.08</td><td>0.5319</td><td>0.88</td><td>0.8106</td><td>1.68</td><td>0.9535</td></tr><tr><td>-2.90</td><td>0.0019</td><td>-1.54</td><td>0.0618</td><td>-0.72</td><td>0.2358</td><td>0.10</td><td>0.5398</td><td>0.90</td><td>0.8159</td><td>1.70</td><td>0.9554</td></tr><tr><td>-2.85</td><td>0.0022</td><td>-1.52</td><td>0.0643</td><td>-0.70</td><td>0.2420</td><td>0.12</td><td>0.5478</td><td>0.92</td><td>0.8212</td><td>1.72</td><td>0.9573</td></tr><tr><td>-2.80</td><td>0.0026</td><td>-1.50</td><td>0.0668</td><td>-0.68</td><td>0.2483</td><td>0.14</td><td>0.5557</td><td>0.94</td><td>0.8264</td><td>1.74</td><td>0.9591</td></tr><tr><td>-2.75</td><td>0.0030</td><td>-1.48</td><td>0.0694</td><td>-0.66</td><td>0.2546</td><td>0.16</td><td>0.5636</td><td>0.96</td><td>0.8315</td><td>1.76</td><td>0.9608</td></tr><tr><td>-2.70</td><td>0.0035</td><td>-1.46</td><td>0.0721</td><td>-0.64</td><td>0.2611</td><td>0.18</td><td>0.5714</td><td>0.98</td><td>0.8365</td><td>1.78</td><td>0.9625</td></tr><tr><td>-2.65</td><td>0.0040</td><td>-1.44</td><td>0.0749</td><td>-0.62</td><td>0.2676</td><td>0.20</td><td>0.5793</td><td>1.00</td><td>0.8414</td><td>1.80</td><td>0.9641</td></tr><tr><td>-2.60</td><td>0.0047</td><td>-1.42</td><td>0.0778</td><td>-0.60</td><td>0.2743</td><td>0.22</td><td>0.5871</td><td>1.02</td><td>0.8461</td><td>1.82</td><td>0.9656</td></tr><tr><td>-2.55</td><td>0.0054</td><td>-1.40</td><td>0.0808</td><td>-0.58</td><td>0.2810</td><td>0.24</td><td>0.5948</td><td>1.04</td><td>0.8508</td><td>1.84</td><td>0.9671</td></tr><tr><td>-2.50</td><td>0.0062</td><td>-1.38</td><td>0.0838</td><td>-0.56</td><td>0.2877</td><td>0.26</td><td>0.6026</td><td>1.06</td><td>0.8554</td><td>1.86</td><td>0.9686</td></tr><tr><td>-2.45</td><td>0.0071</td><td>-1.36</td><td>0.0869</td><td>-0.54</td><td>0.2946</td><td>0.28</td><td>0.6103</td><td>1.08</td><td>0.8599</td><td>1.88</td><td>0.9699</td></tr><tr><td>-2.40</td><td>0.0082</td><td>-1.34</td><td>0.0901</td><td>-0.52</td><td>0.3015</td><td>0.30</td><td>0.6179</td><td>1.10</td><td>0.8643</td><td>1.90</td><td>0.9713</td></tr><tr><td>-2.35</td><td>0.0094</td><td>-1.32</td><td>0.0934</td><td>-0.50</td><td>0.3085</td><td>0.32</td><td>0.6255</td><td>1.12</td><td>0.8686</td><td>1.92</td><td>0.9726</td></tr><tr><td>-2.30</td><td>0.0107</td><td>-1.30</td><td>0.0968</td><td>-0.48</td><td>0.3156</td><td>0.34</td><td>0.6331</td><td>1.14</td><td>0.8729</td><td>1.94</td><td>0.9738</td></tr><tr><td>-2.25</td><td>0.0122</td><td>-1.28</td><td>0.1003</td><td>-0.46</td><td>0.3228</td><td>0.36</td><td>0.6406</td><td>1.16</td><td>0.8770</td><td>1.96</td><td>0.9750</td></tr><tr><td>-2.20</td><td>0.0139</td><td>-1.26</td><td>0.1038</td><td>-0.44</td><td>0.3300</td><td>0.38</td><td>0.6480</td><td>1.18</td><td>0.8810</td><td>1.98</td><td>0.9761</td></tr><tr><td>-2.15</td><td>0.0158</td><td>-1.24</td><td>0.1075</td><td>-0.42</td><td>0.3373</td><td>0.40</td><td>0.6554</td><td>1.20</td><td>0.8849</td><td>2.00</td><td>0.9772</td></tr><tr><td>-2.10</td><td>0.0179</td><td>-1.22</td><td>0.1112</td><td>-0.40</td><td>0.3446</td><td>0.42</td><td>0.6628</td><td>1.22</td><td>0.8888</td><td>2.05</td><td>0.9798</td></tr><tr><td>-2.05</td><td>0.0202</td><td>-1.20</td><td>0.1151</td><td>-0.38</td><td>0.3520</td><td>0.44</td><td>0.6700</td><td>1.24</td><td>0.8925</td><td>2.10</td><td>0.9821</td></tr><tr><td>-2.00</td><td>0.0228</td><td>-1.18</td><td>0.1190</td><td>-0.36</td><td>0.3594</td><td>0.46</td><td>0.6773</td><td>1.26</td><td>0.8962</td><td>2.15</td><td>0.9842</td></tr><tr><td>-1.98</td><td>0.0239</td><td>-1.16</td><td>0.1230</td><td>-0.34</td><td>0.3669</td><td>0.48</td><td>0.6844</td><td>1.28</td><td>0.8997</td><td>2.20</td><td>0.9861</td></tr><tr><td>-1.96</td><td>0.0250</td><td>-1.14</td><td>0.1271</td><td>-0.32</td><td>0.3745</td><td>0.50</td><td>0.6915</td><td>1.30</td><td>0.9032</td><td>2.25</td><td>0.9878</td></tr><tr><td>-1.94</td><td>0.0262</td><td>-1.12</td><td>0.1314</td><td>-0.30</td><td>0.3821</td><td>0.52</td><td>0.6985</td><td>1.32</td><td>0.9066</td><td>2.30</td><td>0.9893</td></tr><tr><td>-1.92</td><td>0.0274</td><td>-1.10</td><td>0.1357</td><td>-0.28</td><td>0.3897</td><td>0.54</td><td>0.7054</td><td>1.34</td><td>0.9099</td><td>2.35</td><td>0.9906</td></tr><tr><td>-1.90</td><td>0.0287</td><td>-1.08</td><td>0.1401</td><td>-0.26</td><td>0.3974</td><td>0.56</td><td>0.7123</td><td>1.36</td><td>0.9131</td><td>2.40</td><td>0.9918</td></tr><tr><td>-1.88</td><td>0.0301</td><td>-1.06</td><td>0.1446</td><td>-0.24</td><td>0.4052</td><td>0.58</td><td>0.7191</td><td>1.38</td><td>0.9162</td><td>2.45</td><td>0.9929</td></tr><tr><td>-1.86</td><td>0.0314</td><td>-1.04</td><td>0.1492</td><td>-0.22</td><td>0.4129</td><td>0.60</td><td>0.7258</td><td>1.40</td><td>0.9192</td><td>2.50</td><td>0.9938</td></tr><tr><td>-1.84</td><td>0.0329</td><td>-1.02</td><td>0.1539</td><td>-0.20</td><td>0.4207</td><td>0.62</td><td>0.7324</td><td>1.42</td><td>0.9222</td><td>2.55</td><td>0.9946</td></tr><tr><td>-1.82</td><td>0.0344</td><td>-1.00</td><td>0.1587</td><td>-0.18</td><td>0.4286</td><td>0.64</td><td>0.7389</td><td>1.44</td><td>0.9251</td><td>2.60</td><td>0.9953</td></tr><tr><td>-1.80</td><td>0.0359</td><td>-0.98</td><td>0.1635</td><td>-0.16</td><td>0.4365</td><td>0.66</td><td>0.7454</td><td>1.46</td><td>0.9279</td><td>2.65</td><td>0.9960</td></tr><tr><td>-1.78</td><td>0.0375</td><td>-0.96</td><td>0.1685</td><td>-0.14</td><td>0.4443</td><td>0.68</td><td>0.7518</td><td>1.48</td><td>0.9306</td><td>2.70</td><td>0.9965</td></tr><tr><td>-1.76</td><td>0.0392</td><td>-0.94</td><td>0.1736</td><td>-0.12</td><td>0.4523</td><td>0.70</td><td>0.7580</td><td>1.50</td><td>0.9332</td><td>2.75</td><td>0.9970</td></tr><tr><td>-1.74</td><td>0.0409</td><td>-0.92</td><td>0.1788</td><td>-0.10</td><td>0.4602</td><td>0.72</td><td>0.7642</td><td>1.52</td><td>0.9357</td><td>2.80</td><td>0.9974</td></tr><tr><td>-1.72</td><td>0.0427</td><td>-0.90</td><td>0.1841</td><td>-0.08</td><td>0.4681</td><td>0.74</td><td>0.7704</td><td>1.54</td><td>0.9382</td><td>2.85</td><td>0.9978</td></tr><tr><td>-1.70</td><td>0.0446</td><td>-0.88</td><td>0.1894</td><td>-0.06</td><td>0.4761</td><td>0.76</td><td>0.7764</td><td>1.56</td><td>0.9406</td><td>2.90</td><td>0.9981</td></tr><tr><td>-1.68</td><td>0.0465</td><td>-0.86</td><td>0.1949</td><td>-0.04</td><td>0.4841</td><td>0.78</td><td>0.7823</td><td>1.58</td><td>0.9429</td><td>2.95</td><td>0.9984</td></tr><tr><td>-1.66</td><td>0.0485</td><td>-0.84</td><td>0.2005</td><td>-0.02</td><td>0.4920</td><td>0.80</td><td>0.7882</td><td>1.60</td><td>0.9452</td><td>3.00</td><td>0.9986</td></tr><tr><td>-1.64</td><td>0.0505</td><td>-0.82</td><td>0.2061</td><td>0.00</td><td>0.5000</td><td>0.82</td><td>0.7939</td><td>1.62</td><td>0.9474</td><td>3.05</td><td>0.9989</td></tr><tr><td>-1.62</td><td>0.0526</td><td>-0.80</td><td>0.2119</td><td>0.02</td><td>0.5080</td><td>0.84</td><td>0.7996</td><td>1.64</td><td>0.9495</td><td></td><td></td></tr><tr><td>-1.60</td><td>0.0548</td><td>-0.78</td><td>0.2177</td><td>0.04</td><td>0.5160</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

Cumulative normal distribution

Table 21.2

Some of the important assumptions underlying the formula are the following:

1. The stock will pay no dividends until after the option expiration date.
2. Both the interest rate,  $r$ , and variance rate,  $\sigma^2$ , of the stock are constant (or in slightly more general versions of the formula, both are known functions of time, so any changes are perfectly predictable).
3. Stock prices are continuous, meaning that sudden extreme jumps such as those in the aftermath of an announcement of a takeover attempt are ruled out.

Variants of the Black-Scholes formula have been developed to deal with many of these limitations.

Second, even within the context of the Black-Scholes model, you must be sure of the accuracy of the parameters used in the formula. Four of these— $S_0$ ,  $X$ ,  $T$ , and  $r$ —are straightforward. The stock price, exercise price, and time to expiration are readily determined. The interest rate used is the money market rate for a maturity equal to that of the option, and the dividend payout is reasonably predictable, at least over short horizons.

The last input, though, the standard deviation of the stock return, is not directly observable. It must be estimated from historical data, from scenario analysis, or from the prices of other options, as we will describe momentarily.

We saw in Chapter 5 that the historical variance of stock market returns can be calculated from  $n$  observations as follows:

$$
\sigma^ {2} = \frac {n}{n - 1} \sum_ {t = 1} ^ {n} \frac {\left(r _ {t} - \bar {r}\right) ^ {2}}{n}
$$ where  $\overline{r}$  is the average return over the sample period. The rate of return on day  $t$  is defined to be consistent with continuous compounding as  $r_t = \ln (S_t / S_{t - 1})$ . [We note again that the natural logarithm of a ratio is approximately the percentage difference between the numerator and denominator so that  $\ln (S_t / S_{t - 1})$  is a measure of the rate of return of the stock from time  $t - 1$  to time  $t$ .] Historical variance commonly is computed using daily returns over periods of several months. Because the volatility of stock returns must be estimated, however, it is always possible that discrepancies between an option price and its Black-Scholes value simply reflect error in the estimation of the stock's volatility.


# Implied Volatility

In fact, market participants often give the option-valuation problem a different twist. Rather than calculating a Black-Scholes value for a given standard deviation, they ask instead: What standard deviation would be necessary for the option price that I observe to be consistent with the Black-Scholes formula? This is called the implied volatility of the option, the volatility level for the stock implied by the option price. Investors can then judge whether they think the actual stock standard deviation exceeds the implied volatility. If it does, the option is considered a good buy; if actual volatility seems greater than the implied volatility, its fair price would exceed the observed price.

Another variation is to compare two options on the same stock with equal expiration dates but different exercise prices. The option with the higher implied volatility would be considered relatively expensive because a higher standard deviation is required to justify its price. The analyst might consider buying the option with the lower implied volatility and writing the option with the higher implied volatility.

The Black-Scholes valuation formula, as well as the implied volatility, is easily calculated using an Excel spreadsheet like Spreadsheet 21.1. The model inputs are provided in column B, and the outputs are given in column E. The formulas for  $d_{1}$  and  $d_{2}$  are provided in the spreadsheet, and the Excel formula NORMSDIST( $d_{1}$ ) or NORM.S.DIST( $d_{1}$ , TRUE)

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td></tr><tr><td>1</td><td>INPUTS</td><td></td><td></td><td>OUTPUTS</td><td></td><td></td><td colspan="4">FORMULA FOR OUTPUT IN COLUMN E</td></tr><tr><td>2</td><td>Standard deviation (annual)</td><td>0.2783</td><td></td><td>d1</td><td>0.0029</td><td></td><td colspan="4">(LN(B5/B6)+(B4-B7+.5*B2^2)*B3)/(B2*SQRT(B3))</td></tr><tr><td>3</td><td>Maturity (in years)</td><td>0.5</td><td></td><td>d2</td><td>-0.1939</td><td></td><td>E2-B2*SQRT(B3)</td><td></td><td></td><td></td></tr><tr><td>4</td><td>Risk-free rate (annual)</td><td>0.06</td><td></td><td>N(d1)</td><td>0.5012</td><td></td><td>NORMSDIST(E2)</td><td></td><td></td><td></td></tr><tr><td>5</td><td>Stock price</td><td>100</td><td></td><td>N(d2)</td><td>0.4231</td><td></td><td>NORMSDIST(E3)</td><td></td><td></td><td></td></tr><tr><td>6</td><td>Exercise price</td><td>105</td><td></td><td>B/S call value</td><td>7.0000</td><td></td><td colspan="4">B5*EXP(-B7*B3)*E4-B6*EXP(-B4*B3)*E5</td></tr><tr><td>7</td><td>Dividend yield (annual)</td><td>0</td><td></td><td>B/S put value</td><td>8.8968</td><td></td><td colspan="4">B6*EXP(-B4*B3)*(1-E5)-B5*EXP(-B7*B3)*(1-E4)</td></tr></table>

# Spreadsheet 21.1

Spreadsheet to calculate Black-Scholes call option values

# Excel

Please visit us at www.mhhe.com/Bodie13e


is used to calculate  $N(d_{1})$ . Cell E6 contains the Black-Scholes formula. (The formula in the spreadsheet actually includes an adjustment for dividends, as described in the next section.)

To compute an implied volatility, we can use the Goal Seek command from the What-If Analysis menu (which can be found under the Data tab) in Excel. See Figure 21.7 for an illustration. Goal Seek asks us to change the value of one cell to make the value of another cell (called the target cell) equal to a specific value. For example, if we observe a call option selling for  \$7 with other inputs as given in the spreadsheet, we can use Goal Seek to change the value in cell B2 (the standard deviation of the stock) to force the option value in cell E6 equal to\$ 7. The target cell, E6, is the call price, and the spreadsheet manipulates cell B2. When you click OK, the spreadsheet finds that a standard deviation equal to .2783 is consistent with a call price of \$7; this would be the option's implied volatility at a price of \$7.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td></tr><tr><td>1</td><td>INPUTS</td><td></td><td></td><td>OUTPUTS</td><td></td><td></td><td colspan="4">FORMULA FOR OUTPUT IN COLUMN E</td></tr><tr><td>2</td><td>Standard deviation (annual)</td><td>0.2783</td><td></td><td>d1</td><td>0.0029</td><td></td><td colspan="4">(LN(B5/B6)+(B4-B7+.5*B2^2)*B3)/(B2*SQRT(B3))</td></tr><tr><td>3</td><td>Maturity (in years)</td><td>0.5</td><td></td><td>d2</td><td>-0.1939</td><td></td><td colspan="2">E2-B2*SQRT(B3)</td><td></td><td></td></tr><tr><td>4</td><td>Risk-free rate (annual)</td><td>0.06</td><td></td><td>N(d1)</td><td>0.5012</td><td></td><td colspan="2">NORMSDIST(E2)</td><td></td><td></td></tr><tr><td>5</td><td>Stock price</td><td>100</td><td></td><td>N(d2)</td><td>0.4231</td><td></td><td colspan="2">NORMSDIST(E3)</td><td></td><td></td></tr><tr><td>6</td><td>Exercise price</td><td>105</td><td></td><td>B/S call value</td><td>7.0000</td><td></td><td colspan="4">B5*EXP(-B7*B3)*E4-B6*EXP(-B4*B3)*E5</td></tr><tr><td>7</td><td>Dividend yield (annual)</td><td>0</td><td></td><td>B/S put value</td><td>8.8968</td><td></td><td colspan="4">B6*EXP(-B4*B3)*(1-E5)-B5*EXP(-B7*B3)*(1-E4)</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="2"></td><td></td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td colspan="3">Goal Seek</td><td colspan="2"></td><td></td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td colspan="3">Set cell: $E$6</td><td colspan="2"></td><td></td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td rowspan="2" colspan="3">To value: 7</td><td colspan="2"></td><td></td><td></td></tr><tr><td>12</td><td></td><td></td><td></td><td colspan="2"></td><td></td><td></td></tr><tr><td>13</td><td></td><td></td><td></td><td rowspan="3" colspan="3">By changing cell: $B$2</td><td colspan="2"></td><td></td><td></td></tr><tr><td>14</td><td></td><td></td><td></td><td colspan="2"></td><td></td><td></td></tr><tr><td>15</td><td></td><td></td><td></td><td colspan="2"></td><td></td><td></td></tr><tr><td>16</td><td></td><td></td><td></td><td colspan="2">OK</td><td colspan="2">Cancel</td><td></td><td></td><td></td></tr><tr><td>17</td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="2"></td><td></td><td></td></tr></table>

Figure 21.7 Using Goal Seek to find implied volatility

Figure 21.8 Implied volatility of the S&P 500 (VIX index)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/b3970569bd463288308a36b1d932ba6a1b88fd848d3f273faf0ef74de3168a49.jpg)
Source: Chicago Board Options Exchange, www.cboe.com.

The Chicago Board Options Exchange regularly computes the implied volatility of major stock indexes. Figure 21.8 is a graph of the implied (30-day) volatility of the S&P 500 since 1990. During periods of turmoil, implied volatility can spike quickly. Notice the peaks in January 1991 (Gulf War); August 1998 (collapse of Long-Term Capital Management); September 11, 2001 (terrorist attacks in the U.S.); 2002 (build-up to invasion of Iraq); October 2008 (the financial crisis); and March 2020 (outbreak of COVID-19). Because implied volatility correlates with crisis, it is sometimes called an "investor fear gauge."

A futures contract on the implied vol utility of the S&P 500 has traded on the CBOE Futures Exchange since 2004. The payoff of the contract depends on market implied volatility at the expiration of the contract. The contract is commonly called by its ticker symbol, VIX.


Figure 21.8 reveals an awkward empirical fact. While the Black-Scholes formula is derived assuming that stock volatility is constant, the time series of implied volatilities derived from that formula is in fact far from constant. This contradiction reminds us that the Black-Scholes model (like all models) is a simplification that does not capture all aspects of real markets. In this particular context, extensions of the pricing model that allow stock volatility to evolve randomly over time would be desirable, and, in fact, many extensions of the model along these lines have been developed.[10]

The fact that volatility changes unpredictably means that it can be difficult to choose the proper volatility input to use in any option-pricing model. A considerable amount of research has been devoted to techniques to predict changes in volatility. These techniques, known as ARCH and stochastic volatility models, posit that changes in volatility are partially predictable and that by analyzing recent levels and trends in volatility, one can improve predictions of future volatility.[11]

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/e810304b04d40962c8982ee95c60e015f2a3a8671ee372413aac230177d9e38b.jpg)

# Concept Check 21.8

Suppose the call option in Spreadsheet 21.1 actually is selling for 8. Is its implied volatility more or less than 27.83\%? Use the spreadsheet (available in Connect) and Goal Seek to find its implied volatility at this price.

$^{10}$ Influential articles on this topic are J. Hull and A. White, “The Pricing of Options on Assets with Stochastic Volatilities,” Journal of Finance 42, no. 2 (June 1987), pp. 281–300; J. Wiggins, “Option Values under Stochastic Volatility,” Journal of Financial Economics 19, no. 2 (December 1987), pp. 351–72; and S. Heston, “A Closed-Form Solution for Options with Stochastic Volatility with Applications to Bonds and Currency Options,” Review of Financial Studies 6 (1993), pp. 327–43. For a review, see E. Ghysels, A. Harvey, and E. Renault, “Stochastic Volatility,” in Handbook of Statistics, Vol. 14: Statistical Methods in Finance, ed. G. S. Maddala (Amsterdam: North Holland, 1996).
For an introduction to these models, see Carol Alexander, Market Risk Analysis, vol. 4 (England: Wiley, 2009).

# Dividends and Call Option Valuation

We noted earlier that the Black-Scholes call option formula applies to stocks that do not pay dividends before the option expires. When dividends will be paid, we need to adjust the formula, even for European-style options. In addition, if the option is American, dividends raise the possibility of early exercise, and for most realistic dividend payout schemes, the valuation formula becomes significantly more complex.

When stocks go ex dividend, the share price declines by a discrete amount, roughly equal to the amount of the dividend. If the dividend is large enough, it will be rational for the call holder to exercise just before the stock goes ex dividend. This introduces uncertainty about the "maturity" of the call. Will it be exercised at the ex-dividend date or held until the expiration date? Variations on the Black-Scholes formula have been developed that can accommodate dividends, but the resulting valuation formulas are more complex and become rapidly more difficult as the number of possible dividend payments increases.

In one special case, the dividend adjustment takes a simple form and allows us to use a slight variant of the Black-Scholes formula. If the option is European, we can replace  $S_0$  with  $S_0$  minus the present value of the dividends to be paid before expiration. Now suppose the underlying asset pays a continuous flow of income. This might be a reasonable assumption for options on a stock index, where different stocks in the index pay dividends on different days, so that dividend income arrives more or less continuously. If the dividend yield, denoted  $\delta$ , is constant, one can show that the present value of that dividend flow accruing until the option expiration date is  $S_0(1 - e^{-\delta T})$ . In this case,  $S_0 - \mathrm{PV}(\mathrm{Div}) = S_0e^{-\delta T}$ , and we can use the Black-Scholes call option formula simply by substituting  $S_0e^{-\delta T}$  for  $S_0$ . This approach is used in Spreadsheet 21.1.

One warning about this practice, however. Even with continuous dividends, it may be rational to exercise the call option early, so strictly speaking, the modified Black-Scholes formula would apply only to European options. As a general rule, American calls on dividend-paying stocks will be worth more than European ones.

# Put Option Valuation

We have concentrated so far on call option valuation. We can derive Black-Scholes European put option values from call option values using the put-call parity theorem. To value the put, we simply calculate the value of the corresponding call option in Equation 21.1 from the Black-Scholes formula, and solve for the put option value (on a non-dividend-paying stock) as

$$
\begin{array}{l} P _ {0} = C _ {0} + \operatorname {P V} (X) - S _ {0} \\ = C _ {0} + X e ^ {- r T} - S _ {0} \\ \end{array}
$$

We calculate the present value of the exercise price using continuous compounding to be consistent with the Black-Scholes formula.

Usually, it is easier to work with a put option valuation formula directly. If we substitute the Black-Scholes formula for a call in Equation 21.2, we obtain the value of a European put option as

$$
P _ {0} = X e ^ {- r T} \left[ 1 - N \left(d _ {2}\right) \right] - S _ {0} \left[ 1 - N \left(d _ {1}\right) \right] \tag {21.3}
$$

# Example 21.5 Black-Scholes Put Valuation

Using data from Example 21.4 (C_0 = \13.70, X = \$95, S_0 = \$100, r = .10, \sigma = .50, and T = .25), Equation 21.3 implies that a European put option on that stock with identical exercise price and time to expiration is worth

$$
\$ 95 e ^ {- 1 0 \times . 2 5} (1 - . 5 7 1 4) - \$ 1 0 0 (1 -. 6 6 6 4) = \$ 6. 3 5
$$

Notice that this value is consistent with put-call parity:

$$
P _ {0} = C _ {0} + \mathrm {P V} (X) - S _ {0} = 1 3. 7 0 + 9 5 e ^ {- . 1 0 \times . 2 5} - 1 0 0 = 6. 3 5
$$

# Dividends and Put Option Valuation

Equation 21.2 and Equation 21.3 are valid for European puts on non-dividend-paying stocks. As we did for call options, if the underlying asset pays a dividend, we can find European put values by substituting  $S_0 - \mathrm{PV}(\mathrm{Div})$  for  $S_0$ . Cell E7 in Spreadsheet 21.1 allows for a continuous dividend flow with a dividend yield of  $\delta$ . In that case,  $S_0 - \mathrm{PV}(\mathrm{Div}) = S_0e^{-\delta T}$ .

However, most stock options are American and allow early exercise. We have seen that the right to exercise puts early is valuable. This means that an American put option must be worth more than the corresponding European option. Therefore, Equation 21.2 and Equation 21.3 describe only the lower bound on the true value of the American put. However, in many applications, the approximation is very accurate.

# 21.5 Using the Black-Scholes Formula

# Hedge Ratios and the Black-Scholes Formula

In Chapter 20, we considered two investments in FinCorp stock: 100 shares or 1,000 call options. We saw that the call option position was more sensitive to swings in the stock price than the all-stock position. To analyze and manage the overall exposure to a stock price, we need to quantify these relative sensitivities. We summarize the sensitivity of option prices to the value of the underlying asset using the hedge ratio, the change in option price for a 1 increase in the stock price. A call option, therefore, has a positive hedge ratio and a put option a negative hedge ratio. The hedge ratio is commonly called the option's delta.

If you graph the option value as a function of the stock price, as in Figure 21.9, the delta is the slope of the curve evaluated at the current stock price. For example, suppose the slope of the curve at  S_0 = \120  equals .60. As the stock increases in value by  \$1 , the call increases by approximately  \$60 .

For every call option written, .60 share of stock would be needed to hedge the resulting stock price exposure. For example, if you write 10 options and hold six shares of stock, a \$1 increase in stock price will result in a gain of \$6 on the stock holdings, whereas the loss on the 10 options written will be 10 × $.60, an equivalent \$6. Total wealth is unaffected, which is what a hedged position is intended to ensure.

Black-Scholes hedge ratios are particularly easy to compute. The hedge ratio for a call is  $N(d_{1})$ , and the hedge ratio for a put is  $N(d_{1}) - 1$ . We defined  $N(d_{1})$  as part of the Black-Scholes formula in Equation 21.1. Recall that  $N(d)$  stands for the area under the standard normal curve up to  $d$ . Therefore, the call option hedge ratio must be positive and less than 1.0, whereas the put option hedge ratio is negative, with smaller absolute value than 1.0.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/348d100eee3b95fd55e173c2288c1351300ed76bec41b0797426007ea9102e5b.jpg)
Figure 21.9 Call option value and hedge ratio


Figure 21.9 also shows that the slope of the call option valuation function is less than 1.0, approaching 1.0 only as the stock price becomes much greater than the exercise price. This tells us that option values change less than one-for-one with changes in stock prices. Why should this be? Suppose an option is so far in the money that you are absolutely certain it will be exercised. In that case, every dollar increase in the stock price would increase the option value by  \$1. But if there is a chance the call option will expire out of the money, even after a moderate stock price gain, a\$ 1 increase in the stock price will not necessarily increase the ultimate payoff to the call; therefore, the call price will not respond by a full dollar.

The fact that hedge ratios are less than 1.0 does not contradict our earlier observation that options offer leverage and disproportionate sensitivity to stock price movements. Although dollar movements in option prices are less than dollar movements in the stock price, the rate of return volatility of options is still greater than stock return volatility because options sell at lower prices. In our example, with the stock selling at  \$120 and a hedge ratio of .6, an option with exercise price\$ 120 may sell for \$5. If the stock price increases to \$121, the call price would increase by only $.60, to $5.60. The percentage increase in the option value is  $.60 / \ 5.00 = 12\%$ , however, whereas the stock price increase is only  $\$  1 / \$ 120 = .83\% . The ratio of the percentage changes is  $12\% / .83\% = 14.4$ . For every  $1\%$  increase in the stock price, the option price increases by  $14.4\%$ . This ratio, the percentage change in option price per percentage change in stock price, is called the option elasticity.

The hedge ratio is an essential tool in portfolio management and control. An example will show why.

The spreadsheet below can be used to determine option values using the Black-Scholes model. The inputs are the stock price, standard deviation, expiration of the option, exercise price, risk-free rate, and dividend yield. The call option is valued using Equation 21.1, and the put is valued using Equation 21.3. For both calls and puts, the dividend-adjusted Black-Scholes formula substitutes  $\mathrm{Se}^{-\delta T}$  for  $S$ , as outlined in Section 21.4. The model also calculates the intrinsic and time value for both puts and calls.

Further, the model presents sensitivity analysis using the one-way data table. The first workbook presents the analysis of calls while the second workbook presents similar analysis for puts. You can find these spreadsheets in Connect or through your course instructor.


# Excel Questions

1. Find the value of the call and put options using the parameters given in this box but changing the standard deviation to .25. What happens to the value of each option?
 2. What is implied volatility if the call option is selling for 9?

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td><td>M</td><td>N</td></tr><tr><td>1</td><td colspan="3">Chapter 21- Black-Scholes Option Pricing</td><td></td><td></td><td></td><td colspan="2">LEGEND:</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td colspan="2">Call Valuation &amp; Call Time Premiums</td><td></td><td></td><td></td><td></td><td colspan="2">Enter data</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="2">Value calculated</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="2">See comment</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>Standard deviation (σ)</td><td>0.27830</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>Variance (annual, σ²)</td><td>0.07745</td><td></td><td></td><td>Call</td><td></td><td></td><td>Call</td><td></td><td></td><td>Call</td><td></td><td></td><td>Call</td></tr><tr><td>7</td><td>Time to expiration (years, T)</td><td>0.50</td><td></td><td>Standard</td><td>Option</td><td></td><td>Standard</td><td>Time</td><td></td><td>Stock</td><td>Option</td><td></td><td>Stock</td><td>Time</td></tr><tr><td>8</td><td>Risk-free rate (annual, r)</td><td>6.00\%</td><td></td><td>Deviation</td><td>Value</td><td></td><td>Deviation</td><td>Value</td><td></td><td>Price</td><td>Value</td><td></td><td>Price</td><td>Value</td></tr><tr><td>9</td><td>Current stock price (S0)</td><td>\$100.00</td><td></td><td></td><td>7.000</td><td></td><td></td><td>7.000</td><td></td><td></td><td>7.000</td><td></td><td></td><td>7.000</td></tr><tr><td>10</td><td>Exercise price (X)</td><td>$105.00</td><td></td><td>0.15</td><td>3.388</td><td></td><td>0.150</td><td>3.388</td><td></td><td>$60</td><td>0.017</td><td></td><td>\$60</td><td>0.017</td></tr><tr><td>11</td><td>Dividend yield (annual, δ)</td><td>0.00\%</td><td></td><td>0.18</td><td>4.089</td><td></td><td>0.175</td><td>4.089</td><td></td><td>$65</td><td>0.061</td><td></td><td>$65</td><td>0.061</td></tr><tr><td>12</td><td></td><td></td><td></td><td>0.20</td><td>4.792</td><td></td><td>0.200</td><td>4.792</td><td></td><td>$70</td><td>0.179</td><td></td><td>$70</td><td>0.179</td></tr><tr><td>13</td><td>d1</td><td>0.0029095</td><td></td><td>0.23</td><td>5.497</td><td></td><td>0.225</td><td>5.497</td><td></td><td>$75</td><td>0.440</td><td></td><td>$75</td><td>0.440</td></tr><tr><td>14</td><td>d2</td><td>-0.193878</td><td></td><td>0.25</td><td>6.202</td><td></td><td>0.250</td><td>6.202</td><td></td><td>$80</td><td>0.935</td><td></td><td>$80</td><td>0.935</td></tr><tr><td>15</td><td>N(d1)</td><td>0.50116</td><td></td><td>0.28</td><td>6.907</td><td></td><td>0.275</td><td>6.907</td><td></td><td>$85</td><td>1.763</td><td></td><td>$85</td><td>1.763</td></tr><tr><td>16</td><td>N(d2)</td><td>0.42314</td><td></td><td>0.30</td><td>7.612</td><td></td><td>0.300</td><td>7.612</td><td></td><td>$90</td><td>3.014</td><td></td><td>$90</td><td>3.014</td></tr><tr><td>17</td><td>Black-Scholes call value</td><td>$6.99992</td><td></td><td>0.33</td><td>8.317</td><td></td><td>0.325</td><td>8.317</td><td></td><td>$95</td><td>4.750</td><td></td><td>\$95</td><td>4.750</td></tr><tr><td>18</td><td>Black-Scholes put value</td><td>$8.89670</td><td></td><td>0.35</td><td>9.022</td><td></td><td>0.350</td><td>9.022</td><td></td><td>$100</td><td>7.000</td><td></td><td>$100</td><td>7.000</td></tr><tr><td>19</td><td></td><td></td><td></td><td>0.38</td><td>9.726</td><td></td><td>0.375</td><td>9.726</td><td></td><td>$105</td><td>9.754</td><td></td><td>$105</td><td>9.754</td></tr><tr><td>20</td><td></td><td></td><td></td><td>0.40</td><td>10.429</td><td></td><td>0.400</td><td>10.429</td><td></td><td>$110</td><td>12.974</td><td></td><td>\$110</td><td>12.974</td></tr><tr><td>21</td><td>Intrinsic value of call</td><td>$0.00000</td><td></td><td>0.43</td><td>11.132</td><td></td><td>0.425</td><td>11.132</td><td></td><td>$115</td><td>16.602</td><td></td><td>\$115</td><td>16.602</td></tr><tr><td>22</td><td>Time value of call</td><td>6.99992</td><td></td><td>0.45</td><td>11.834</td><td></td><td>0.450</td><td>11.834</td><td></td><td>$120</td><td>20.572</td><td></td><td>$120</td><td>20.572</td></tr><tr><td>23</td><td></td><td></td><td></td><td>0.48</td><td>12.536</td><td></td><td>0.475</td><td>12.536</td><td></td><td>$125</td><td>24.817</td><td></td><td>$125</td><td>24.817</td></tr><tr><td>24</td><td>Intrinsic value of put</td><td>$5.00000</td><td></td><td>0.50</td><td>13.236</td><td></td><td>0.500</td><td>13.236</td><td></td><td>$130</td><td>29.275</td><td></td><td>\$130</td><td>29.275</td></tr><tr><td>25</td><td>Time value of put</td><td>3.89670</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>$135</td><td>33.893</td><td></td><td>$135</td><td>33.893</td></tr></table>

# Example 21.6 Hedge Ratios

Consider two portfolios, one holding 750 FinCorp calls and 200 shares of FinCorp stock and the other holding 800 shares of FinCorp. Which portfolio has greater dollar exposure to FinCorp price movements?

Each option changes in value by  $H$  dollars for each dollar change in stock price, where  $H$  stands for the hedge ratio. Thus, if  $H$  equals .6, the 750 options have the same exposure to FinCorp's stock price as .6 × 750 = 450 shares. The first portfolio has less dollar sensitivity to stock price change because the 450 share-equivalents of the options plus the 200 shares actually held are less than the 800 shares held in the second portfolio.

This is not to say, however, that the first portfolio is less risky. The first portfolio is worth less than the second, so despite its lower sensitivity in terms of dollar value, it actually has greater rate of return sensitivity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/b139f3f2b70aa6bfdd954f150db3299acb9a45a08844d267e4084e927c3f89a2.jpg)

# Concept Check 21.9

What is the elasticity of a put option currently selling for \$4 with exercise price \$120 and hedge ratio -.4 if the stock price is currently 122?

# Portfolio Insurance

In Chapter 20, we showed that protective put strategies offer a sort of insurance policy on an asset. The protective put has proven to be extremely popular with investors. Even if the asset price falls, the put conveys the right to sell the asset for the exercise price, which is a way to lock in a minimum portfolio value. With an at-the-money option  $(X = S_0)$ , the maximum possible loss is the cost of the put. The asset can be sold for  $X$ , which equals its original value, so even if the asset price falls, the investor's net loss is just the cost of the put. If the asset value increases, however, upside potential is unlimited. Figure 21.10 graphs the profit or loss on this protective put position as a function of the change in the value of the underlying asset.

While the protective put is a simple and convenient way to achieve portfolio insurance, that is, to limit the worst-case portfolio rate of return, there are practical difficulties in implementing the strategy. First, unless the investor's portfolio corresponds to a standard market index for which puts are traded, a put option on the portfolio will not be available. And if index puts are used to protect a non-indexed portfolio, tracking error can result. For example, if the portfolio falls in value while the market index rises, the put will fail to provide the intended protection. Moreover, the maturities of traded options may not match the investor's horizon. Therefore, rather than using option strategies, investors may use trading strategies that mimic the payoff to a protective put option.

Here is the general idea. Even if a put option on the desired portfolio does not exist, a theoretical option-pricing model (such as Black-Scholes) can be used to determine how that option's price would respond to the portfolio's value if it did trade. For example, if stock prices fall, the put option will increase in value. The option model quantifies this relationship. The net exposure of the (hypothetical) protective put portfolio to swings in stock prices is the sum of the exposures of the two components of the portfolio, the stock and the put.


We can create "synthetic" protective put positions by holding a quantity of stocks with the same net exposure to market swings as that hypothetical position. The key to this strategy is the option hedge ratio, or delta.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/cef545b833a039bee48fdd82cb0d49ad36a602e55444b462e253a22ede85aba2.jpg)
Figure 21.10 Profit on an at-the-money protective put strategy

# Example 21.7 Synthetic Protective Put Options

A portfolio is currently valued at  \$100 million. An at-the-money put option on the portfolio might have a delta of -.6, meaning the option's value swings$  . 60 for every dollar change in portfolio value, but in an opposite direction. Suppose the stock portfolio falls by 2\%. The profit on a hypothetical protective put position (if the put existed) would be as follows (in millions of dollars):

Loss on stocks  $2 \%$  of  $\$ 100 =2.00

Gain on put  $0.6 \times \$ 2.00 = 1.20$

Net loss  $= \$  0.80$

We create the synthetic option position by selling a proportion of shares equal to the put option's delta (i.e., selling  $60\%$  of the shares) and placing the proceeds in risk-free T-bills. The rationale is that because the hypothetical put option would have offset  $60\%$  of any change in the stock portfolio's value, we reduce portfolio risk directly by selling  $60\%$  of the equity and putting the proceeds into a risk-free asset. The total return on a synthetic protective put position with \$60 million in T-bills and \$40 million in equity is

Loss on stocks 2 \% of \$ 40 = \$ 0.80

Loss on bills  $= 0$

Net loss = 0.80

The synthetic and actual protective put positions have equal dollar returns. We conclude that if you sell a proportion of shares equal to the put option's delta and place the proceeds in cash equivalents, your exposure to the stock market will equal that of the desired protective put position.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/8e2b8d888017fbe9a9e04ae9255b465d8562d48bd4e95f711b0244daeefbee56.jpg)
Figure 21.11 Deltas change as the stock price fluctuates

The challenge with this procedure is that deltas constantly change. Figure 21.11 shows that as the stock price falls, the magnitude of the appropriate hedge ratio increases. Therefore, market declines require extra hedging, that is, additional conversion of equity into cash. This constant updating of the hedge ratio is called dynamic hedging (alternatively, delta hedging).

Dynamic hedging is one reason portfolio insurance has been said to contribute to market volatility. Market declines trigger additional sales of stock as portfolio insurers strive to increase their hedging. These additional sales are seen as reinforcing or exaggerating market downturns.

In practice, portfolio insurers often do not actually buy or sell stocks directly when they update their hedge positions. Instead, they typically minimize trading costs by buying or selling stock index futures as a substitute for sale of the stocks themselves. As you will see in Chapter 22, stock prices and index futures prices usually are very tightly linked by cross-market arbitrageurs so that futures transactions can be used as reliable proxies for stock transactions. Instead of selling equities based on the put option's delta, insurers will sell an equivalent number of futures contracts.[15]


Several portfolio insurers suffered great setbacks during the market crash of October 19, 1987, when the market suffered an unprecedented 1-day loss of about  $20\%$ . The reasons for their problems illustrate the complexities of applying a seemingly straightforward hedging concept.

1. Market volatility at the crash was much greater than ever encountered before. Put option deltas based on historical volatility estimates were too low; insurers underhedged, held too much equity, and suffered excessive losses.
2. Prices moved so fast that insurers could not keep up with the necessary rebalancing. They were "chasing deltas" that kept getting away from them. The stock market also saw a "gap" opening, where the opening price was nearly  $10\%$  below the previous day's close. Prices dropped before insurers could update their hedge ratios.
3. Execution problems were severe. First, current market prices were unavailable, with trade execution and the price quotation system hours behind, which made computation of correct hedge ratios impossible. Moreover, trading in stocks ceased during some periods. The ability to continuously rebalance that is essential for a viable insurance program vanished.
4. Futures prices traded at steep discounts to their proper levels compared to reported stock prices, thereby making the sale of futures (as a proxy for equity sales) seem expensive. Although you will see in Chapter 22 that stock index futures prices should have exceeded the value of the stock index on October 19, Figure 21.12 shows that futures sold far below the stock index level on that day. When some insurers gambled that the futures price would recover to its expected premium over the stock index and chose to defer sales, they remained underhedged. As the market fell farther, their portfolios experienced substantial losses.

Figure 21.12 S&P 500 cash-to-futures spread in points
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/c0010bf510116a1c2f6e5b2f773a867839e380491c15f52371ae7bf942f386ad.jpg)
Source: Report of the Presidential Task Force on Market Mechanisms, Nicholas Brady, Chairman. January 1988, p. 33.


Although the portfolio insurance industry has never recovered from the market crash, delta hedging is still alive and well on Wall Street. Dynamic hedges are widely used by large firms to hedge potential losses from options positions. For example, when Microsoft ended its employee stock option program in 2003, its investment banker J.P. Morgan purchased many already-issued options of Microsoft employees, and it was widely expected that Morgan would protect its options position by selling shares in Microsoft using a delta hedging strategy.[16]

# Option Pricing and the Financial Crisis

Merton shows how option pricing models can provide insight into the financial crisis of 2008-2009. The key to his argument is to recall that when banks lend to or buy the debt of firms with limited liability, they implicitly write a put option to the borrower (see Chapter 20, Section 20.5). If the borrower has sufficient assets to pay off the loan when it comes due, it will do so, and the lender will be fully repaid. But if the borrower has insufficient assets, it can declare bankruptcy and discharge its obligations by transferring ownership of the firm to its creditors. The borrower's ability to satisfy the loan in this way is equivalent to the right to "sell" itself to the creditor for the face value of the loan. This arrangement is therefore just like a put option on the firm with exercise price equal to the stipulated loan repayment.

Consider the payoff to the lender at loan maturity (time  $T$ ) as a function of the value of the borrowing firm,  $V_{T}$ , when the loan, with face value  $L$ , comes due. If  $V_{T} \geq L$ , the lender is paid off in full. But if  $V_{T} < L$ , the lender gets the firm, which is worth less than the promised payment  $L$ .

We can write the payoff in a way that emphasizes the implicit put option:

$$
\text {p a y o f f} = \left\{ \begin{array}{l l} L \\ V _ {T} \end{array} \right. = L - \left\{ \begin{array}{l l} 0 & \text {i f} V _ {T} \geq L \\ L - V _ {T} & \text {i f} V _ {T} <   L \end{array} \right. \tag {21.4}
$$

Equation 21.4 shows that the payoff on the loan equals  $L$  minus the payoff of a put option on the value of the firm  $(V_T)$  with an exercise price of  $L$ . Therefore, we may view risky lending as a combination of safe lending, with a guaranteed payoff of  $L$ , combined with a short position in a put option on the borrower.

When firms sell credit default swaps (see Chapter 14, Section 14.5), the implicit put option is even clearer. Here, the CDS seller agrees to make up any losses due to the insolvency of a bond issuer. If the issuer goes bankrupt, leaving assets of only  $V_{T}$  for the creditors, the CDS seller is obligated to make up the difference,  $L - V_{T}$ . This is in essence a pure put option.

Now think about the exposure of these implicit put writers to changes in the financial health of the underlying firm. The value of a put option on  $V_{T}$  appears in Figure 21.13. When the firm is financially strong (i.e.,  $V$  is far greater than  $L$ ), the slope of the curve is nearly zero, implying little exposure of the implicit put writer (either the bank or the

CDS writer) to the value of the borrowing firm. For example, when firm value is 1.75 times the value of the debt, the light line drawn tangent to the put value curve has a slope of only -.040. But if there is a big shock to the economy, and firm value falls, not only does the value of the implicit put rise, but its slope is now steeper (see the steep, dark tangent line), implying much greater exposure to further shocks. For example, when firm value is only  $75\%$  of the value of the loan, the slope of the line tangent to the put value valuation curve is far steeper, -.644. You can see how as you get closer to the edge of the cliff, it gets easier and easier to slide right off.

We often hear people say that a shock to asset values of the magnitude of the financial crisis was a 10-sigma event, by which they mean that such an event was so extreme that it would be 10 standard deviations away from an expected outcome, making it virtually inconceivable. But Figure 21.13 shows that standard deviation may be a moving target, increasing dramatically as the firm weakens. As the economy falters and put options go further into the money, their sensitivity to further shocks increases, increasing the risk that even worse losses may be around the corner. The built-in instability of risk exposures makes a scenario like the crisis more plausible and should give us pause when we discount an extreme scenario as "almost impossible."

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/9f5897d32fa26dd58e026117c16c772019c9906438954f73833f8460cf78b780.jpg)
Figure 21.13 Value of the implicit put option in a loan guarantee as a percentage of the face value of debt (Debt maturity = 1 year; Standard deviation of value of firm = 40\%; Risk-free rate = 6\%)


# Option Pricing and Portfolio Theory

We've just seen that the option pricing model predicts that security risk characteristics can be unstable. For example, as the firm weakens, the risk of its debt can quickly accelerate. So, too, can equity risk change dramatically as the firm's financial condition deteriorates. We know from the last chapter (Section 20.5) that equity in a levered firm is like a call option on the value of the firm. If firm value exceeds the value of the firm's maturing debt, the firm can choose to pay off the debt, retaining the difference between firm value and the face value of its debt. If not, the firm can default on the loan, turning the firm over to its creditors, and the equityholders get nothing. In this sense, equity is a call option, and the firm's total value is the underlying asset.

Earlier in this section, we saw that the elasticity of an option measures the sensitivity of its rate of return to the rate of return on the underlying asset. For example, if a call option's elasticity is 5, its rate of return will swing five times as widely as the rate of return on the underlying asset. This would imply that both the option's beta and its standard deviation are five times the beta and standard deviation of the underlying asset.

Therefore, when compiling the "input list" for creating an efficient portfolio, we may wish to think of equity as an implicit call option and compute its elasticity with respect to the total value of the firm. For example, if the covariance of the firm's assets with other securities is stable, then we can use elasticity to find the covariance of the firm's equity with those securities. This will allow us to calculate beta and standard deviation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/da3af3e51ba6babcf1fa7342b718f1acc518cde73965010a47c7cac83b24838f.jpg)
Figure 21.14 Call option elasticity as a function of stock price (Parameters:  $\sigma = .25$ ,  $T = .5$ ,  $r = .06$ ,  $X = 100$ )


Unfortunately, elasticity can itself be a moving target. As the firm gets weaker, its elasticity will increase, potentially very quickly. Figure 21.14 uses the Black-Scholes model to plot call option elasticity as a function of the value of the underlying stock. Notice that as the firm gets closer to insolvency (the value of firm assets falls below the face value of debt), equity elasticity shoots up, and even small changes in financial condition can lead to major changes in risk. Elasticity is far more stable (and closer to 1) when the firm is healthy (i.e., when the implicit call option is deep in the money). Therefore, equity risk characteristics will be far more stable for healthy firms than for precarious ones.


# Hedging Bets on Mispriced Options

Suppose you believe that the standard deviation of FinCorp stock returns will be  $35\%$  over the next few weeks, but FinCorp put options are selling at a price consistent with a volatility of  $33\%$ . Because the put's implied volatility is less than your forecast of the stock volatility, you believe the option is underpriced. Using your assessment of volatility in an option-pricing model like the Black-Scholes formula, you would estimate that the fair price for the puts exceeds the actual price.

Does this mean that you ought to buy put options? Perhaps, but by doing so, you risk losses if FinCorp stock performs well, even if you are correct about the volatility. You would like to separate your bet on volatility from the "attached" bet inherent in purchasing a put that FinCorp's stock price will fall. In other words, you would like to speculate on the option mispricing by purchasing the put option, but hedge the resulting exposure to the performance of FinCorp stock.

The option delta is the hedge ratio that can be used for this purpose. Delta is the slope of the option pricing curve:

$$
\text {D e l t a} = \frac {\text {C h a n g e i n v a l u e o f o p t i o n}}{\text {C h a n g e i n v a l u e o f s t o c k}} \tag {21.5}
$$

It tells us precisely how many shares of stock we must hold to offset our exposure to FinCorp. For example, if the put's delta is -.6, then it will fall by $.60 for every one-dollar increase in the stock price, and we need to hold .6 share of stock to hedge each put. If we purchase 10 option contracts, each for 100 shares, we would need to buy 600 shares of stock. If the stock price rises by \$1, each put option will decrease in value by $.60, resulting in a loss of  \$600. However, the loss on the puts will be offset by a gain on the stock holdings of1 per share × 600 shares.


To see how the profits on this strategy might develop, let's use the following example.

# Example 21.8 Speculating on Mispriced Options

Suppose option expiration T is 60 days; put price P = \$4.495; exercise price X = \$90; stock price S = \$90; and the risk-free rate r = 4\%. We assume that the stock will not pay a dividend in the next 60 days. Given these data, the implied volatility on the option is 33\%, as we pos- ited. However, you believe the true volatility is 35\%, implying that the fair put price is \$4.785. Therefore, if the market assessment of volatility is revised to the value you believe is correct, your profit will be 29 per put purchased.

Recall that the hedge ratio, or delta, of a put option equals  $N(d_1) - 1$ , where  $N(\cdot)$  is the cumulative normal distribution function and

$$ d _ {1} = \frac {\ln (S / X) + (r + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

Using your estimate of  $\sigma = .35$ , you find the hedge ratio,  $N(d_{1}) - 1 = -.453$ .

Suppose, therefore, that you purchase 10 option contracts (1,000 puts) and purchase 453 shares of stock. Once the market "catches up" to your presumably better volatility estimate, the put options purchased will increase in value. If the market assessment of volatility changes as soon as you purchase the options, your profits should equal  \$1,000 \times \ .29 = \$ 290. The option price will be affected as well by any change in the stock price, but this part of your exposure will be eliminated if the hedge ratio is chosen properly. Your profit should be based solely on the effect of the change in the implied volatility of the put, with the impact of the stock price hedged away.

Table 21.3 illustrates your profits as a function of the stock price assuming that the put price changes to reflect your estimate of volatility. Panel B shows that the put option alone can provide profits or losses depending on whether the stock price falls or rises. We see in Panel C, however, that each hedged put option provides profits nearly equal to the original mispricing, regardless of the change in the stock price.

# A. Cost to Establish Hedged Position

1,000 put options @  $4.495/option$  4,495

453 shares @ 90/share 40,770

Total outlay 45,265

# B. Value of Put Option as a Function of the Stock Price at Implied Volatility of  $35\%$

Stock price: 89 90 91

Put price  $5.254 \quad \text{4.785} \quad \text{4.347}$

Profit (loss) on each put 0.759 0.290 (0.148)

# C. Value of and Profit on Hedged Put Portfolio

Stock price: 89 90 91

Value of 1,000 put options  $5,254 \quad \text{and} \quad \text{4,785}$  4,347

Value of 453 shares 40,317 40,770 41,223

Total \45,571 \ 45,555 \45,570

Profit (= Value - Cost from Panel A) 306 290 305

# Table 21.3

Profit on hedged put portfolio

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/9a239f57a576d944d934d1587b33f516e693ff80325b052ea14e14c96a2441f4.jpg)

# Concept Check 21.10

Suppose you bet on volatility by purchasing calls instead of puts. How would you hedge your exposure to stock-price fluctuations? What is the hedge ratio?

Notice in Example 21.8 that the profit is not exactly independent of the stock price. This is because as the stock price changes, so do the deltas used to calculate the hedge ratio. The hedge ratio in principle would need to be continually adjusted as deltas evolve. The sensitivity of the delta to the stock price is called the gamma of the option. Option gammas are analogous to bond convexity. In both cases, the curvature of the value function means that hedge ratios or durations change with market conditions, making rebalancing a necessary part of hedging strategies.

A variant of the strategy in Example 21.8 involves cross-option speculation. Suppose you observe a 45-day expiration call option on FinCorp with strike price 95 selling at a price consistent with a volatility of  $\sigma = 33\%$  while another 45-day call with strike price 90 has an implied volatility of only  $27\%$ . Because the underlying asset and expiration date are identical, you conclude that the call with the higher implied volatility is relatively overpriced. To exploit the mispricing, you might buy the cheap calls (with strike price 90 and implied volatility of  $27\%$ ) and write the expensive calls (with strike price 95 and implied volatility  $33\%$ ). If the risk-free rate is  $4\%$  and FinCorp is selling at  \$90 per share, the calls purchased will be priced at\$ 3.6202 and the calls written will be priced at 2.3735.

Despite the fact that you are long one call and short another, your exposure to FinCorp stock-price uncertainty is not hedged. This is because calls with different strike prices have different sensitivities to the price of the underlying asset. The lower-strike-price call has a higher delta and therefore greater exposure to the stock price. If you take an equal number of positions in these two options, you will inadvertently establish a bullish position in FinCorp, as the calls you purchase have higher deltas than the calls you write. In fact, you may recall from Chapter 20 that this portfolio (long call with low exercise price and short call with high exercise price) is called a bullish spread.

To establish a hedged position, we can use the hedge ratio approach as follows. Consider the 95-strike-price options you write as the asset that hedges your exposure to the 90-strike-price options you purchase. Then the hedge ratio is

$$
\begin{array}{l} H = \frac {\text {C h a n g e i n v a l u e o f 9 0 - s t r i k e - p r i c e c a l l f o r $ 1 c h a n g e i n F i n C o r p}}{\text {C h a n g e i n v a l u e o f 9 5 - s t r i k e - p r i c e c a l l f o r $ 1 c h a n g e i n F i n C o r p}} \\ = \frac {\text {D e l t a o f 9 0 - s t r i k e - p r i c e c a l l}}{\text {D e l t a o f 9 5 - s t r i k e - p r i c e c a l l}} > 1 \\ \end{array}
$$

You need to write more than one call with the higher strike price to hedge the purchase of each call with the lower strike price. Because the prices of higher-strike-price calls are less sensitive to FinCorp prices, more of them are required to offset the exposure.

Suppose the true annual volatility of the stock is midway between the two implied volatilities, so  $\sigma = 30\%$ . We know that the delta of a call option is  $N(d_{1})$ . Therefore, the deltas of the two options and the hedge ratio are computed as follows:

Option with strike price 90:

$$ d _ {1} = \frac {\ln (9 0 / 9 0) + (. 0 4 + . 3 0 ^ {2} / 2) \times 4 5 / 3 6 5}{. 3 0 \sqrt {4 5 / 3 6 5}} = . 0 9 9 5
$$

$$
N (d _ {1}) = . 5 3 9 6
$$

Option with strike price 95:

$$ d _ {1} = \frac {\ln (9 0 / 9 5) + (. 0 4 + . 3 0 ^ {2} / 2) \times 4 5 / 3 6 5}{. 3 0 \sqrt {4 5 / 3 6 5}} = -. 4 1 3 8
$$

$$
N (d _ {1}) = . 3 3 9 5
$$

Hedge ratio:

$$
\frac {. 5 3 9 6}{. 3 3 9 5} = 1. 5 8 9
$$

Therefore, for every 1,000 call options purchased with strike price 90, we need to write 1,589 call options with strike price 95. Following this strategy enables us to bet on the relative mispricing of the two options without taking a position on FinCorp. Panel A of Table 21.4 shows that the position will result in a cash inflow of 151.30. The premium income on the calls written exceeds the cost of the calls purchased.

When you establish a position in stocks and options that is hedged with respect to fluctuations in the price of the underlying asset, your portfolio is said to be delta neutral, meaning that the portfolio has no tendency to either increase or decrease in value when the stock price fluctuates.

Let's check that our options position is in fact delta neutral. Suppose that the implied volatilities of the two options come back into alignment just after you establish your position, so that both options are priced at implied volatilities of  $30\%$ . You expect to profit from the increase in the value of the call purchased as well as from the decrease in the value of the call written. The option prices at  $30\%$  volatility are given in Panel B of Table 21.4 and the values of your position for various stock prices are presented in Panel C. Although the profit or loss on each option is affected by the stock price, the value of the delta-neutral option portfolio is positive and essentially independent of the stock price. Moreover, we saw in Panel A that the portfolio would have been established without ever requiring a cash outlay. You would have cash inflows both when you establish the portfolio and when you liquidate it after the implied volatilities converge to  $30\%$ .

A. Cost Flow When Portfolio Is Established

<table><tr><td colspan="2">Purchase 1,000 calls (X = 90) @ \$3.6202</td></tr><tr><td>(option priced at implied volatility of 27\%)</td><td>\$3,620.20 cash outflow</td></tr><tr><td colspan="2">Write 1,589 calls (X = 95) @ \$2.3735</td></tr><tr><td>(option priced at implied volatility of 33\%)</td><td>3,771.50 cash inflow</td></tr><tr><td>Total</td><td>\$ 151.30 net cash infl</td></tr></table>

B. Option Prices at Implied Volatility of  $30\%$

<table><tr><td>Stock price:</td><td>89</td><td>90</td><td>91</td></tr><tr><td>90-strike-price calls</td><td>$3.478</td><td>$3.997</td><td>4.557</td></tr><tr><td>95-strike-price calls</td><td>1.703</td><td>2.023</td><td>2.382</td></tr></table>

C. Value of Portfolio after Implied Volatilities Converge to  $30\%$

<table><tr><td>Stock price:</td><td>89</td><td>90</td><td>91</td></tr><tr><td>Value of 1,000 calls held</td><td>$3,478</td><td>$3,997</td><td>\$4,557</td></tr><tr><td>– Value of 1,589 calls written</td><td>2,705</td><td>3,214</td><td>3,785</td></tr><tr><td>Total</td><td>$773</td><td>$782</td><td>\$772</td></tr></table>

Table 21.4

Profits on delta-neutral options portfolio

This unusual profit opportunity arises because you have identified option prices out of alignment. By exploiting the pricing discrepancy using a delta-neutral strategy, you should earn profits regardless of the price movement in FinCorp stock.

Delta-neutral hedging strategies are also subject to practical problems, the most important of which is the difficulty in assessing the proper volatility for the coming period. If the volatility estimate is incorrect, so will be the deltas, and the overall position will not be perfectly hedged.

These problems can be serious because volatility estimates are never fully reliable. First, volatility cannot be observed directly and must be estimated from past data. Second, we've seen that both historical and implied volatilities fluctuate over time. Therefore, we are always shooting at a moving target. Although delta-neutral positions are hedged against changes in the price of the underlying asset, they still are subject to volatility risk, the risk incurred from unpredictable changes in volatility.

The sensitivity of an option price to changes in volatility is called the option's vega. While delta-neutral option hedges might eliminate exposure fluctuations in the value of the underlying asset, they do not eliminate volatility risk.

# 21.6 Empirical Evidence on Option Pricing

The Black-Scholes option-pricing model has been subject to an enormous number of empirical tests. The results of the studies have been positive in that the model generates option values fairly close to the actual prices at which options trade. Nevertheless, some regular empirical failures have been noted.

Figure 21.15 Implied volatility on one-month SPY put options, September 27, 2021. SPY price on that date was 443.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/1a633560537e3572934de7adb8aa27166730033fd277de391c5f9d1a614db40c.jpg)
Source: Yahoo Finance, September 27, 2021.

The biggest problem concerns volatility. If the model were accurate, the implied volatility of all options on a particular stock with the same expiration date would be equal—after all, the underlying asset and expiration date are the same for each option, so the volatility inferred from each also ought to be the same. But in fact, when one actually plots implied volatility as a function of exercise price, the typical results appear as in Figure 21.15, for which the SPY is the underlying asset (SPY is the ticker for the ETF on the S&P 500). Implied volatility steadily falls as the exercise price rises. Clearly, the Black-Scholes model is missing something.

Rubinstein was one of the first to suggest that the problem with the model has to do with fears of a market crash like that of October 1987. The idea is that deep out-of-the-money puts would be nearly worthless if stock prices evolve smoothly (as assumed by Black-Scholes) because the probability of the stock falling by a large amount (and the put option thereby moving into the money) in a short time would be very small. But a possibility of a sudden large downward jump that could move the puts into the money, as in a market crash, would impart greater value to these options. Thus, the market might value these options as though there is a bigger chance of a large drop in the stock price than would be plausible under the Black-Scholes assumptions. The result of the higher option price is a greater implied volatility.


Interestingly, Rubinstein points out that prior to the 1987 market crash, plots of implied volatility like the one in Figure 21.15 were relatively flat, consistent with the notion that the market was then less attuned to fears of a crash. However, post-crash plots have been consistently downward sloping, exhibiting a shape often called the option smirk. When we use option-pricing models that allow for more general stock price distributions, including crash risk and random changes in volatility, they generate downward-sloping implied volatility curves similar to those shown in Figure 21.15.[19]

For an extensive discussion of these more general models, see R. L. McDonald, Derivatives Markets, 3rd ed. (Boston: Pearson Education [Addison-Wesley], 2013).

# SUMMARY

1. Option values may be viewed as the sum of intrinsic value plus time or "volatility" value. The volatility value is the right not to exercise if the stock price moves against you. Thus, the option holder cannot lose more than the cost of the option regardless of stock price performance.
2. Call options are more valuable when the exercise price is lower, when the stock price is higher, when the interest rate is higher, when the time to expiration is greater, when the stock's volatility is greater, and when dividends are lower.
3. Call options must sell for at least the stock price less the present value of the exercise price and any dividends to be paid before expiration. This implies that a call on a non-dividend-paying stock may be sold for more than the proceeds from immediate exercise. Thus, when the stock does not pay dividends until after option expiration, it will never be optimal to exercise an American call option early. In this special case, European calls are worth as much as American ones.
4. Options may be valued using a binomial pricing model that assumes the stock price can take on only two values by the end of any short time period. As the number of such periods increases, the binomial model can approximate more realistic stock price distributions. The Black-Scholes formula may be seen as a limiting case of the binomial option model as the holding period is divided into progressively smaller subperiods.
5. The Black-Scholes formula applies to options on stocks that pay no dividends. Simple dividend adjustments may be adequate to price European calls, but the proper treatment of American calls on dividend-paying stocks, where early exercise becomes an issue, requires more complex formulas.
6. It may be optimal to exercise put options early, whether or not the stock pays dividends. Therefore, American puts generally are worth more than European puts.
7. European put values can be derived from the call value and the put-call parity relationship. This technique cannot be applied to American puts for which optimal early exercise is a possibility.
8. The implied volatility of an option is the standard deviation of stock returns consistent with the option's market price. It can be backed out of an option-pricing model by finding the stock volatility that makes the model's estimate of the option's value equal to the observed price.
9. The option delta (equivalently, hedge ratio) is the slope of the option pricing curve as a function of the price of the underlying asset. Deltas are near zero for deep out-of-the-money call options and approach 1.0 for deep in-the-money calls.

10. Although call option deltas are less than 1.0, their elasticities are greater than 1.0. The rate of return on a call (as opposed to the dollar return) responds more than one-for-one with stock returns.
11. Portfolio insurance can be obtained by purchasing a protective put option on an equity position. When the appropriate put is not traded, portfolio insurance entails a dynamic hedge strategy where a number of shares equal to the desired put option's delta are sold and placed in risk-free securities.
12. The option delta is used to determine the hedge ratio for options positions. Delta-neutral portfolios are independent of price changes in the underlying asset. Even delta-neutral option portfolios are subject to volatility risk, however.
13. Empirically, implied volatilities derived from the Black-Scholes formula tend to be higher on options with lower exercise prices. This suggests that option prices reflect the possibility of a sudden dramatic decline in stock prices. Such "crashes" are inconsistent with the Black-Scholes assumptions.

# KEY TERMS intrinsic value


time value binomial model


Black-Scholes pricing formula implied volatility


hedge ratio delta


option elasticity portfolio insurance


dynamic hedging gamma


delta neutral vega


# KEY EQUATIONS

Binomial model:  $u = \exp (\sigma \sqrt{\Delta t})$ ;  $d = \exp (-\sigma \sqrt{\Delta t})$ ;  $p = \frac{\exp(r\Delta t) - d}{u - d}$

Put-call parity:  $P_{0} = C_{0} + \mathrm{PV}(X) - S_{0} + \mathrm{PV}(\mathrm{dividends})$

Black-Scholes formula (no dividend case):  $SN(d_{1}) - Xe^{-rT}N(d_{2})$

$$
\text {w h e r e} d _ {1} = \frac {\ln (S / X) + (r + 1 / 2 \sigma^ {2}) T}{\sigma \sqrt {T}}; d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

Delta (or hedge ratio):  $H = \frac{\text{Change in option value}}{\text{Change in stock value}}$

# PROBLEM SETS

1. We showed in the chapter that the value of a call option increases with the volatility of the stock. Is this also true of put option values? Use the put-call parity theorem as well as a numerical example to prove your answer.
 2. Would you expect a \$1 increase in a call option's exercise price to lead to a decrease in the option's value of more or less than \$1?
3. Is a put option on a high-beta stock worth more than one on a low-beta stock? The stocks have identical firm-specific risk.
4. All else equal, is a call option on a stock with a lot of firm-specific risk worth more than one on a stock with little firm-specific risk? The betas of the two stocks are equal.
5. All else equal, will a call option with a high exercise price have a higher or lower hedge ratio than one with a low exercise price?
6. In each of the following questions, you are asked to compare two options with parameters as given. The risk-free interest rate for all cases should be assumed to be  $4\%$ . Assume the stocks on which these options are written pay no dividends.

<table><tr><td>a.</td><td>Put</td><td>T</td><td>X</td><td>σ</td><td>Price of Put</td></tr><tr><td></td><td>A</td><td>0.5</td><td>50</td><td>0.20</td><td>$10</td></tr><tr><td></td><td>B</td><td>0.5</td><td>50</td><td>0.25</td><td>$10</td></tr></table>

Which put option is written on the stock with the lower price?

i. A.
ii. B.
iii. Not enough information.

<table><tr><td>b.</td><td>Put</td><td>T</td><td>X</td><td>σ</td><td>Price of Put</td></tr><tr><td></td><td>A</td><td>0.5</td><td>50</td><td>0.2</td><td>$10</td></tr><tr><td></td><td>B</td><td>0.5</td><td>50</td><td>0.2</td><td>$12</td></tr></table>

Which put option must be written on the stock with the lower price?

i. A.

ii. B.

iii. Not enough information.

<table><tr><td>c.</td><td>Call</td><td>S</td><td>X</td><td>σ</td><td>Price of Call</td></tr><tr><td></td><td>A</td><td>50</td><td>50</td><td>0.20</td><td>$12</td></tr><tr><td></td><td>B</td><td>55</td><td>50</td><td>0.20</td><td>$10</td></tr></table>

Which call option must have the lower time to expiration?

i. A.

ii. B.

iii. Not enough information.

<table><tr><td>d.</td><td>Call</td><td>T</td><td>X</td><td>S</td><td>Price of Call</td></tr><tr><td></td><td>A</td><td>0.5</td><td>50</td><td>55</td><td>$10</td></tr><tr><td></td><td>B</td><td>0.5</td><td>50</td><td>55</td><td>$12</td></tr></table>

Which call option is written on the stock with higher volatility?

i. A.

ii. B.

iii. Not enough information.

<table><tr><td>e.</td><td>Call</td><td>T</td><td>X</td><td>S</td><td>Price of Call</td></tr><tr><td></td><td>A</td><td>0.5</td><td>50</td><td>55</td><td>$10</td></tr><tr><td></td><td>B</td><td>0.5</td><td>50</td><td>50</td><td>$ 7</td></tr></table>

Which call option is written on the stock with higher volatility?

i. A.
ii. B.
iii. Not enough information.

7. Reconsider the determination of the hedge ratio in the two-state model (see Section 21.2), where we showed that one-third share of stock would hedge one option. What would be the hedge ratio for the following exercise prices: (a) 120, (b) 110, (c) 100, (d) 90? (e) What do you conclude about the hedge ratio as the option becomes progressively more in the money?
 8. Show that Black-Scholes call option hedge ratios increase as the stock price increases. Consider a 1-year option with exercise price \$50, on a stock with annual standard deviation 20\%. The T-bill rate is 3\% per year. Find N(d₁) for stock prices (a) $45, (b) $50, and (c) \$55.
9. We will derive a two-state put option value in this problem. Data:  $S_0 = 100$ ;  $X = 110$ ;  $1 + r = 1.10$ . The two possibilities for  $S_T$  are 130 and 80.

a. Show that the range of  $S$  is 50, whereas that of  $P$  is 30 across the two states. What is the hedge ratio of the put?
b. Form a portfolio of three shares of stock and five puts. What is the (nonrandom) payoff to this portfolio?
c. What is the present value of the portfolio?
$d$ . Given that the stock currently is selling at 100, solve for the value of the put.

eXcel

Please visit us at www.mhhe.com/Bodie13e


# Excel

Please visit us at www.mhhe.com/Bodie13e


10. a. Calculate the value of a call option on the stock in Problem 9 with an exercise price of 110.
b. Verify that the put-call parity theorem is satisfied by your answers to Problem 9 and part (a). (Do not use continuous compounding to calculate the present value of  $X$  in this example; because we are using a two-state one-period model here, the assumed  $10\%$  interest rate is an effective rate per period.)

11. Use the Black-Scholes formula to find the value of a call option on the following stock:

<table><tr><td>Time to expiration</td><td>6 months</td></tr><tr><td>Standard deviation</td><td>50\% per year</td></tr><tr><td>Exercise price</td><td>\$50</td></tr><tr><td>Stock price</td><td>\$50</td></tr><tr><td>Annual interest rate</td><td>3\%</td></tr><tr><td>Dividend</td><td>0</td></tr></table>

# Excel

Please visit us at www.mhhe.com/Bodie13e


# Excel

Please visit us at www.mhhe.com/Bodie13e


12. Find the Black-Scholes value of a put option on the stock in Problem 11 with the same exercise price and expiration as the call option.
13. Recalculate the value of the call option in Problem 11, successively substituting one of the changes below while keeping the other parameters as in Problem 11:

$a$  . Time to expiration  $= 3$  months.
b. Standard deviation  $= {25}\%$  per year.
c. Exercise price = 55.
d. Stock price = \ 55 e. Interest rate  $= 5\%$ .

Consider each scenario independently. Confirm that the option value changes in agreement with the prediction of Table 21.1.

14. A call option with X = \$50 on a stock priced at S = \$55 sells for 10. Using a volatility estimate of σ = .30, you find that N(d₁) = .6 and N(d₂) = .5. The risk-free interest rate is zero. Is the implied volatility based on the option price more or less than .30? Explain.
15. What would be the Excel formula in Spreadsheet 21.1 for the Black-Scholes value of a straddle position?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/48dbb4b28ee33145f9b5f7660d52d09e6af46d1ad9eb734dbe8c27fbf72df3ab.jpg)

SCHWESER

Use the following case in answering Problems 16 through 21: Mark Washington, CFA, is an analyst with BIC. One year ago, BIC analysts predicted that the U.S. equity market would experience a slight downturn and suggested delta-hedging the BIC portfolio. U.S. equity markets did indeed fall, but BIC's portfolio performance was disappointing, lagging its peer group by nearly  $10\%$ . Washington is reviewing the options strategy to determine why the hedged portfolio did not perform as expected.

16. Which of the following best explains a delta-neutral portfolio? The return on a delta-neutral portfolio is hedged against:

$a$  .Small price changes in the underlying asset.
$b$ . Small decreases in the volatility of the underlying asset.
$c$ . Any price change in the underlying asset.

17. After discussing the concept of a delta-neutral portfolio, Washington determines that he needs to further explain the concept of delta. He draws the value of an option as a function of the underlying stock price. In such a diagram, the option's delta is the:

$a$ . Slope in the option price diagram.
b. Curvature of the option price graph.
$c$ . Level of the option price.

18. Washington considers a put option with a delta of -.65. If the price of the underlying asset decreases by 6, what is the best estimate of the change in option price?

19. BIC owns 51,750 shares of Smith & Oates. The shares are currently priced at \$69. A call option on Smith & Oates with a strike price of \$70 is selling at 3.50 and has a delta of .69. How many call options should be written to make BIC's overall position delta-neutral? Should the calls be purchased or written?
20. Return to Problem 19. Does the number of call options that BIC must write to maintain a delta-neutral position increase or decrease if the stock price falls?
21. Which of the following statements regarding the goal of a delta-neutral portfolio is most accurate? One example of a delta-neutral portfolio is to combine a: a. Long position in a stock with a short position in call options so that the value of the portfolio does not change with changes in the value of the stock.

$b$ . Long position in a stock with a short position in a call option so that the value of the portfolio changes with changes in the value of the stock.
c. Long position in a stock with a long position in call options so that the value of the portfolio does not change with changes in the value of the stock.

22. Should the rate of return of a call option on a long-term Treasury bond be more or less sensitive to changes in interest rates than is the rate of return of the underlying bond?
23. If the stock price falls and the call price rises, then what has happened to the call option's implied volatility?
24. If the time to expiration falls and the put price rises, then what has happened to the put option's implied volatility?
25. According to the Black-Scholes formula, what will be the hedge ratio (delta) of a call option as the stock price becomes infinitely large? Explain briefly.
26. According to the Black-Scholes formula, what will be the hedge ratio (delta) of a put option for a very small exercise price?
27. The hedge ratio of an at-the-money call option on IBM is .4. The hedge ratio of an at-the-money put option is -.6. What is the hedge ratio of an at-the-money straddle position on IBM?
 28. Consider a 6-month expiration European call option with exercise price \$105. The underlying stock sells for \$100 a share and pays no dividends. The risk-free rate is 5\%. What is the implied volatility of the option if the option currently sells for 8? Use Spreadsheet 21.1 (available in Connect; link to Chapter 21 material) to answer this question.

a. Go to the Data tab of the spreadsheet and select Goal Seek from the What-If menu. The dialog box will ask you for three pieces of information. In that dialog box, you should set cell E6 to value 8 by changing cell B2. In other words, you ask the spreadsheet to find the value of standard deviation (which appears in cell B2) that forces the value of the option (in cell E6) equal to \$8. Then click OK, and you should find that the call is now worth \$8, and the entry for standard deviation has been changed to a level consistent with this value. This is the call's implied standard deviation at a price of 8.
$b$ . What happens to implied volatility if the option is selling at 9?
c. Why has implied volatility increased?
$d$ . What happens to implied volatility if the option price is unchanged at 8, but the time until option expiration is lower, say, only four months? Why?
 e. What happens to implied volatility if the option price is unchanged at \$8, but the exercise price is lower, say, only \$100? Why?
$f$ . What happens to implied volatility if the option price is unchanged at \$8, but the stock price is lower, say, only \$98? Why?

29. A collar is established by buying a share of stock for \$50, buying a 6-month put option with exercise price \$45, and writing a 6-month call option with exercise price \$55. On the basis of the volatility of the stock, you calculate that for a strike price of \$45 and expiration of six months, N(d1) = .60, whereas for the exercise price of 55, N(d1) = .35.

a. What will be the gain or loss on the collar if the stock price increases by 1?
$b$ . What happens to the delta of the portfolio if the stock price becomes very large?
c. What happens to the delta of the portfolio if the stock price becomes very small?

Excel

Please visit us at www.mhhe.com/Bodie13e


30. These three put options are all written on the same stock. One has a delta of -.9, one a delta of -.5, and one a delta of -.1. Assign deltas to the three puts by filling in this table.

<table><tr><td>Put</td><td>X</td><td>Delta</td></tr><tr><td>A</td><td>10</td><td>(a)</td></tr><tr><td>B</td><td>20</td><td>(b)</td></tr><tr><td>C</td><td>30</td><td>(c)</td></tr></table>

31. You are very bullish (optimistic) on stock EFG, much more so than the rest of the market. In each question, choose the portfolio strategy that will give you the biggest dollar profit if your bullish forecast turns out to be correct. Explain your answer.

a. Choice A: 10,000 invested in EFG calls with X = 50.

Choice B: 10,000 invested in EFG stock.

b. Choice A: 10 EFG call option contracts (for 100 shares each), with  $X = 50$ .

Choice B: 1,000 shares of EFG stock.

32. You would like to be holding a protective put position on the stock of XYZ Co. to lock in a guaranteed minimum value of \$100 at year-end. XYZ currently sells for \$100. Over the next year, the stock price will increase by 10\% or decrease by 10\%. The T-bill rate is 5\%. Unfortunately, no put options are traded on XYZ Co.

$a$ . Suppose the desired put option were traded. How much would it cost to purchase?

$b$ . What would have been the cost of the protective put portfolio?

c. What portfolio position in stock and T-bills will ensure you a payoff equal to the payoff that would be provided by a protective put with  $X = 100$ ? Show that the payoff to this portfolio and the cost of establishing the portfolio match those of the desired protective put.

33. Return to Example 21.1. Use the binomial model to value a 1-year European put option with exercise price 110 on the stock in that example. Confirm that your solution for the put price satisfies put-call parity.

34. Suppose that the risk-free interest rate is zero. Would an American put option ever be exercised early? Explain.

35. Let  $p(S, T, X)$  denote the value of a European put on a stock selling at  $S$  dollars, with time to maturity  $T$ , and with exercise price  $X$ , and let  $P(S, T, X)$  be the value of an American put.

a. Evaluate  $p(0,T,X)$ b. Evaluate  $P(0,T,X)$
c. Evaluate  $p(S,T,0)$ d. Evaluate  $P(S,T,0)$
e. Compare your answers to parts (a) and (b). What do you conclude about the possibility that American puts may be exercised early?

36. You are attempting to value a call option with an exercise price of \$100 and one year to expiration. The underlying stock pays no dividends, its current price is \$100, and you believe it has a 50\% chance of increasing to \$120 and a 50\% chance of decreasing to \$80. The risk-free rate of interest is 10\%. Calculate the call option's value using the two-state stock price model.
 37. Consider an increase in the volatility of the stock in the previous problem. Suppose that if the stock increases in price, it will increase to \$130, and that if it falls, it will fall to \$70. Show that the value of the call option is now higher than the value derived in the previous problem.
38. Calculate the value of a put option with exercise price 100 using the data in Problem 36. Show that put-call parity is satisfied by your solution.
39. XYZ Corp. will pay a  \$2 per share dividend in two months. Its stock price currently is\$ 60 per share. A European call option on XYZ has an exercise price of \$55 and 3-month time to expiration. The risk-free interest rate is .5\% per month, and the stock's volatility (standard deviation)  $= 7\%$  per month. Find the Black-Scholes value of the option. (Hint: Try defining one "period" as a month, rather than as a year, and think about the net-of-dividend value of each share.)


40. "The beta of a call option on FedEx is greater than the beta of a share of FedEx." True or false?

41. "The beta of a call option on the S&P 500 index with an exercise price of 3,430 is greater than the beta of a call on the index with an exercise price of 3,440." True or false?

42. What will happen to the delta of a convertible bond as the stock price becomes very large?

43. Goldman Sachs believes that market volatility will be  $20\%$  annually for the next three years. Three-year at-the-money call and put options on the market index sell at an implied volatility of  $22\%$ . What options portfolio can Goldman establish to speculate on its volatility belief without taking a bullish or bearish position on the market? Using Goldman's estimate of volatility, 3-year at-the-money options have  $N(d_{1}) = .6$ .

44. You are holding call options on a stock. The stock's beta is .75, and you are concerned that the stock market is about to fall. The stock is currently selling for 5 and you hold 1 million options (i.e., you hold 10,000 contracts for 100 shares each). The option delta is .8. How much of the market-index portfolio must you buy or sell to hedge your market exposure?

45. You are a provider of portfolio insurance and are establishing a 4-year program. The portfolio you manage is worth \$100 million, and you hope to provide a minimum return of  $0\%$ . The equity portfolio has a standard deviation of  $25\%$  per year, and T-bills pay  $5\%$  per year. Assume that the portfolio pays no dividends.

a. How much of the portfolio should be sold and placed in bills? (Hint: What is the delta of the implicit put option conveyed by the portfolio insurance?)
$b$ . What should the manager do if the stock portfolio falls by  $3\%$  on the first day of trading?

46. Suppose that call options on ExxonMobil stock with time to expiration 3 months and strike price  \$90 are selling at an implied volatility of 30\%$ . ExxonMobil stock price is 90 per share, and the risk-free rate is  $4\%$ .

a. If you believe the true volatility of the stock is  $32\%$ , would you want to buy or sell call options?
b. Now you want to hedge your option position against changes in the stock price. How many shares of stock will you hold for each option contract purchased or sold?

47. Using the data in Problem 46, suppose that 3-month put options with a strike price of \$90 are selling at an implied volatility of  $34\%$ . Construct a delta-neutral portfolio comprising positions in calls and puts that will profit when the option prices come back into alignment.

48. Suppose that JPMorgan Chase sells call options on 2.5 million worth of a stock portfolio with beta = 1.5. The option delta is .8. It wishes to hedge its resultant exposure to a market advance by buying a market-index portfolio.

a. How many dollars' worth of the market-index portfolio should it purchase?
b. Now it decides to use market index puts to hedge its exposure. Should it buy or sell puts? How many? The index at current prices represents 4,000 worth of stock.

49. Suppose you are attempting to value a 1-year expiration option on a stock with volatility (i.e., annualized standard deviation) of  $\sigma = .40$ . What would be the appropriate values for  $u$  and  $d$  if your binomial model is set up using: a. 1 period of 1 year.

b. 4 subperiods, each 3 months.
c. 12 subperiods, each 1 month.

50. You build a binomial model with one period and assert that over the course of a year, the stock price will either rise by a factor of 1.5 or fall by a factor of  $2/3$ . What is your implicit assumption about the volatility of the stock's rate of return over the next year?

# eXcel

Please visit us at www.mhhe.com/Bodie13e


# eXcel

Please visit us at www.mhhe.com/Bodie13e


# eXcel

Please visit us at www.mhhe.com/Bodie13e


51. Return to Problem 36. Value the call option using the risk-neutral shortcut described in the box in Section 21.3. Confirm that your answer matches the value you get using the two-state approach.

52. Return to Problem 38.

a. What will be the payoff to the put,  $P_{w}$  if the stock goes up?
$b$ . What will be the payoff,  $P_{d}$ , if the stock price falls?
c. Value the put option using the risk-neutral shortcut described in the box in Section 21.3.
$d$ . Confirm that your answer matches the value you get using the two-state approach.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/cefcd44bd12c4e8fc4b184fcd7bec581cd087890ac42b1b831d87ca0e187706b.jpg)

1. The board of directors of Abco Company is concerned about the downside risk of a \$100 million equity portfolio in its pension plan. The board's consultant has proposed temporarily (for 1 month) hedging the portfolio with either futures or options. Referring to the following table, the consultant states: a. "The \$100 million equity portfolio can be fully protected on the downside by selling (shorting) 20,000 futures contracts."

b. "The cost of this protection is that the portfolio's expected rate of return will be zero percent."

<table><tr><td colspan="2">Market, Portfolio, and Contract Data</td></tr><tr><td>Equity index level</td><td>99.00</td></tr><tr><td>Equity futures price</td><td>100.00</td></tr><tr><td>Futures contract multiplier</td><td>50</td></tr><tr><td>Portfolio beta</td><td>1.20</td></tr><tr><td>Contract expiration (months)</td><td>1</td></tr></table>

Critique the accuracy of each of the consultant's two statements.

2. Michael Weber, CFA, is analyzing several aspects of option valuation, including the determinants of the value of an option, the characteristics of various models used to value options, and the potential for divergence of calculated option values from observed market prices.

a. What is the expected effect on the value of a call option on common stock if the volatility of the underlying stock price decreases? If the time to expiration of the option increases?
$b$ . Using the Black-Scholes option-pricing model and an estimate of stock return volatility, Weber calculates the price of a 3-month call option and notices the option's calculated value is different from its market price. With respect to Weber's use of the Black-Scholes option-pricing model, i. Discuss why the calculated value of an out-of-the-money European option may differ from its market price.

ii. Discuss why the calculated value of an American option may differ from its market price.

3. Joel Franklin is a portfolio manager responsible for derivatives. Franklin observes an American-style option and a European-style option with the same strike price, expiration, and underlying stock. Franklin believes that the European-style option will have a higher premium than the American-style option.

a. Critique Franklin's belief that the European-style option will have a higher premium. Franklin is asked to value a 1-year European-style call option for Abaco Ltd. common stock, which last traded at 43.00. He has collected the information in the following table.

<table><tr><td>Closing stock price</td><td>43.00</td></tr><tr><td>Call and put option exercise price</td><td>45.00</td></tr><tr><td>1-year put option price</td><td>4.00</td></tr><tr><td>1-year Treasury bill rate</td><td>5.50\%</td></tr><tr><td>Time to expiration</td><td>One year</td></tr></table> b. Calculate, using put-call parity and the information provided in the table, the European-style call option value.

c. State the effect, if any, of each of the following three variables on the value of a call option. (No calculations required.) i. An increase in short-term interest rate.

ii. An increase in stock price volatility.
iii. A decrease in time to option expiration.

4. A stock index is currently trading at 50. Paul Tripp, CFA, wants to value 2-year index options using the binomial model. In any year, the stock will either increase in value by  $20\%$  or fall in value by  $20\%$ . The annual risk-free interest rate is  $6\%$ . No dividends are paid on any of the underlying securities in the index.

$a$ . Construct a two-period (two-year) binomial tree for the value of the stock index.
$b$ . Calculate the value of a European call option on the index with an exercise price of 60.
c. Calculate the value of a European put option on the index with an exercise price of 60.
$d$ . Confirm that your solutions for the values of the call and the put satisfy put-call parity.

5. Ken Webster manages an 800 million equity portfolio benchmarked to the S&P 500 index. Webster believes the market is overvalued when measured by several traditional fundamental/economic indicators. He is concerned about potential losses but recognizes that the S&P 500 index could nevertheless move above its current 3,532 level.

Webster is considering the following option collar strategy:

- Protection for the portfolio can be attained by purchasing an S&P 500 index put with a strike price of 3,520.
- The put can be approximately financed by selling one 3,600 strike-price call for every put purchased.
- Because the combined delta of the call and put positions (see following table) is greater than  $-1$  (i.e.,  $-.44 - .30 = -.74$ ), the options position will not lose more than the underlying stock portfolio will gain if the market advances.

The information in the following table describes the two options used to create the collar.

<table><tr><td>Characteristics</td><td>3,600 Call</td><td>3,520 Put</td></tr><tr><td>Option price</td><td>$68.20</td><td>$64.40</td></tr><tr><td>Option implied volatility</td><td>22\%</td><td>24\%</td></tr><tr><td>Option&#x27;s delta</td><td>0.30</td><td>-0.44</td></tr></table>

Notes:

- Ignore transaction costs.
S&P 500 historical 30-day volatility  $= 23\%$
- Time to option expiration = 30 days.

a. Describe the potential returns of the combined portfolio (the underlying portfolio plus the option collar) if after 30 days the S&P 500 index has: i. Risen approximately  $5\%$  to 3,708.

ii. Remained at 3,532 (no change).
iii. Declined by approximately  $5\%$  to 3,364.

(No calculations are necessary.) b. Discuss the effect on the hedge ratio (delta) of each option as the S&P 500 approaches the level of each of the potential outcomes listed in part (a).


c. How will the pricing of each of the following respond to an increase in stock volatility?

i. The put.

ii. The call.

# E-INVESTMENTS EXERCISES

1. Use information from finance.yahoo.com to answer the following questions.

a. What is Coke's current price?
b. Now enter the ticker "KO" (for Coca-Cola) and find Analyst Price Targets (under the Analysis tab). What is the mean 12-month target price for Coke? Based on this forecast, would at-the-money calls or puts have the higher expected profit?
c. What is the spread between the high and low target stock prices, expressed as a percentage of Coke's current stock price? How (qualitatively) should the spread be related to the price at which Coke options trade?
d. Calculate the implied volatility of the call option closest to the money with time to expiration of about three months. You can use Spreadsheet 21.1 (available in Connect) to calculate implied volatility using the Goal Seek command.
e. Now repeat the exercise for Pepsi (ticket: PEP). What would you expect to be the relationship between the high versus low target price spread and the implied volatility of the two companies? Are your expectations consistent with actual option prices?
f. Suppose you believe that the volatility of KO is going to increase from currently anticipated levels. Would its call options be overpriced or underpriced? What about its put options?
g. Could you take positions in both puts and calls on KO in such a manner as to speculate on your volatility beliefs without taking a stance on whether the stock price is going to increase or decrease? Would you buy or write each type of option?
$h$ . How would your relative positions in puts and calls be related to the delta of each option?

2. Calculating implied volatility can be difficult if you don't have a spreadsheet handy. Fortunately, many tools are available on the Web to perform the calculation; for example, www.option-price.com contains option calculators that also compute implied volatility.

Using daily price data (available from finance.yahoo.com), calculate the annualized standard deviation of the daily percentage change in a stock price. Try calculating standard deviation using historical data covering (a) 60 days, (b) 120 days, and (c) 180 days. For the same stock, use the option-price.com Web site to calculate implied volatility. The input for the risk-free rate may be found at www.bloomberg.com/markets/rates/index.html. Option price data can be retrieved from www.cboe.com (look for link to Quotes & Data).

Which sample period for calculating historical standard deviation seems most correlated with implied volatility?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/b2563b5e31f03d0e46ce1a9759a7e4ecf241dba5cc67a09e0537989716fb2231.jpg)

# SOLUTIONS TO CONCEPT CHECKS

1. To understand the impact of higher volatility, consider the same scenarios as for the call. The low-volatility scenario yields a lower expected payoff.

<table><tr><td rowspan="2">High volatility</td><td>Stock price</td><td>$10</td><td>$20</td><td>$30</td><td>$40</td><td>\$50</td></tr><tr><td>Put payoff</td><td>$20</td><td>$10</td><td>$0</td><td>$0</td><td>\$0</td></tr><tr><td rowspan="2">Low volatility</td><td>Stock price</td><td>$20</td><td>$25</td><td>$30</td><td>$35</td><td>\$40</td></tr><tr><td>Put payoff</td><td>$10</td><td>$5</td><td>$0</td><td>$0</td><td>\$0</td></tr></table>

2. If This Variable Increases . . . The Value of a Put Option

<table><tr><td>S</td><td>Decreases</td></tr><tr><td>X</td><td>Increases</td></tr><tr><td>σ</td><td>Increases</td></tr><tr><td>T</td><td>Increases*</td></tr><tr><td>rf</td><td>Decreases</td></tr><tr><td>Dividend payouts</td><td>Increases</td></tr></table>

*For American puts, increase in time to expiration must increase value. One can always choose to exercise early if this is optimal; the longer expiration date simply expands the range of alternatives open to the option holder, which must make the option more valuable. For a European put, where early exercise is not allowed, longer time to expiration can have an indeterminate effect. Longer expiration increases volatility value because the final stock price is more uncertain, but it reduces the present value of the exercise price that will be received if the put is exercised. The net effect on put value can be positive or negative.

3. The parity relationship assumes that all options are held until expiration and that there are no cash flows until expiration. These assumptions are valid only in the special case of European options on non-dividend-paying stocks. If the stock pays no dividends, the American and European calls are equally valuable, whereas the American put is worth more than the European put. Therefore, although the parity theorem for European options states that

$$
P _ {0} = C _ {0} - S _ {0} + \operatorname {P V} (X)
$$ in fact,  $P_0$  will be greater than this value if the put is American.


4. Because the option now is underpriced, we want to reverse our previous strategy.

<table><tr><td></td><td colspan="2">Cash Flow in 1 Year for Each Possible
Stock Price</td></tr><tr><td></td><td>Initial Cash Flow</td><td>S = 90 S = 120</td></tr><tr><td>Buy 3 options</td><td>-16.50</td><td>0 30</td></tr><tr><td>Short-sell 1 share; repay in 1 year</td><td>100</td><td>-90 -120</td></tr><tr><td>Lend 83.50 at 10\% interest rate</td><td>-83.50</td><td>91.85 91.85</td></tr><tr><td>TOTAL</td><td>0</td><td>1.85 1.85</td></tr></table>

The riskless cash flow in one year per option is  $1.85/3 =$ .6167, and the present value is  $.6167 / 1.10 =$ .56, precisely the amount by which the option is underpriced.

5. a.  C_u - C_d = \6.984 - 0  b.  $uS_{0} - dS_{0} = \110 - \$ 95 = \$15

c.  $6.984 / 15 = .4656$ d. Value in Next Period as Function of Stock Price


<table><tr><td>Action Today (time 0)</td><td>dS0 = $95</td><td>uS0 = $110</td></tr><tr><td>Buy 0.4656 share at price S0 = $100</td><td>$44.232</td><td>\$51.216</td></tr><tr><td>Write 1 call at price C0</td><td>0</td><td>-6.984</td></tr><tr><td>TOTAL</td><td>\$44.232</td><td>44.232</td></tr></table>

The portfolio must have a market value equal to the present value of 44.232.

e. $44.232/1.05 = $42.126 f. 4656 \times \100 - C_0 = \42.126\$


$$
C _ {0} = \$ 46.56 - \$ 42.126 = \$ 4.434
$$

6. When  $\Delta t$  shrinks, there should be lower possible dispersion in the stock price by the end of the subperiod because each shorter subperiod offers less time in which new information can move stock prices. However, as the time interval shrinks, there will be a correspondingly greater number of these subperiods until option expiration. Thus, total volatility over the remaining life of the option will be unaffected. In fact, take another look at Figure 21.5. There, despite the fact that  $u$  and  $d$  each gets closer to 1 as the number of subintervals increases and the length of each subinterval falls, the total volatility of the stock return until option expiration is unaffected.
7. Because  $\sigma = .6$ ,  $\sigma^2 = .36$ .

$$ d _ {1} = \frac {\ln (1 0 0 / 9 5) + (. 1 0 + . 3 6 / 2) . 2 5}{. 6 \sqrt {. 2 5}} = . 4 0 4 3
$$

$$ d _ {2} = d _ {1} - . 6 \sqrt {. 2 5} = . 1 0 4 3
$$

Using Table 21.2 and interpolation, or from a spreadsheet function:

$$
N (d _ {1}) = . 6 5 7 0
$$

$$
N (d _ {2}) = . 5 4 1 5
$$

$$
C _ {0} = 1 0 0 \times . 6 5 7 0 - 9 5 e ^ {-. 1 0 \times . 2 5} \times . 5 4 1 5 = 1 5. 5 3
$$

8. Implied volatility exceeds .2783. Given a standard deviation of .2783, the option value is \$7. A higher volatility is needed to justify an \$8 price. Using Spreadsheet 21.1 and Goal Seek, you can confirm that implied volatility at an option price of 8 is .3138.
 9. A \$1 increase in stock price is a percentage increase of 1/122 = .82\%. The put option price will fall by (.4 × $1) = $.40, a percentage decrease of $.40/4 = 10\%. Elasticity is -10/.82 = -12.2.
10. The delta for a call option is  $N(d_1)$ , which is positive, and in this case is .547. Therefore, for every 10 option contracts purchased, you would need to short 547 shares of stock.


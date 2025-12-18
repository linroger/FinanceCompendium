---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 11.1 FACTORS AFFECTING OPTION PRICES
linter-yaml-title-alias: 11.1 FACTORS AFFECTING OPTION PRICES
---

# 11.1 FACTORS AFFECTING OPTION PRICES

There are six factors affecting the price of a stock option:

1. The current stock price,  $S_0$
2. The strike price,  $K$
3. The time to expiration,  $T$
4. The volatility of the stock price,  $\sigma$
5. The risk-free interest rate,  $r$
6. The dividends that are expected to be paid.

In this section, we consider what happens to option prices when there is a change to one of these factors, with all the other factors remaining fixed. The results are summarized in Table 11.1.

Figures 11.1 and 11.2 show how European call and put prices depend on the first five factors in the situation where  $S_0 = 50$ ,  $K = 50$ ,  $r = 5\%$  per annum,  $\sigma = 30\%$  per annum,  $T = 1$  year, and there are no dividends. In this case the call price is 7.116 and the put price is 4.677.

Table 11.1 Summary of the effect on the price of a stock option of increasing one variable while keeping all others fixed.

<table><tr><td>Variable</td><td>European call</td><td>European put</td><td>American call</td><td>American put</td></tr><tr><td>Current stock price</td><td>+</td><td>-</td><td>+</td><td>-</td></tr><tr><td>Strike price</td><td>-</td><td>+</td><td>-</td><td>+</td></tr><tr><td>Time to expiration</td><td>?</td><td>?</td><td>+</td><td>+</td></tr><tr><td>Volatility</td><td>+</td><td>+</td><td>+</td><td>+</td></tr><tr><td>Risk-free rate</td><td>+</td><td>-</td><td>+</td><td>-</td></tr><tr><td>Amount of future dividends</td><td>-</td><td>+</td><td>-</td><td>+</td></tr></table>

+ indicates that an increase in the variable causes the option price to increase or stay the same;
- indicates that an increase in the variable causes the option price to decrease or stay the same;
? indicates that the relationship is uncertain.

# Stock Price and Strike Price

If a call option is exercised at some future time, the payoff will be the amount by which the stock price exceeds the strike price. Call options therefore become more valuable as the stock price increases and less valuable as the strike price increases. For a put option, the payoff on exercise is the amount by which the strike price exceeds the stock price. Put options therefore behave in the opposite way from call options: they become less valuable as the stock price increases and more valuable as the strike price increases. Figure 11.1a–d illustrate the way in which put and call prices depend on the stock price and strike price.

# Time to Expiration

Now consider the effect of the expiration date. Both put and call American options become more valuable (or at least do not decrease in value) as the time to expiration increases. Consider two American options that differ only as far as the expiration date is concerned. The owner of the long-life option has all the exercise opportunities open to the owner of the short-life option—and more. The long-life option must therefore always be worth at least as much as the short-life option.

Although European put and call options usually become more valuable as the time to expiration increases (see Figure 11.1e, f), this is not always the case. Consider two European call options on a stock: one with an expiration date in 1 month, the other with an expiration date in 2 months. Suppose that a very large dividend is expected in 6 weeks. The dividend will cause the stock price to decline, so that the short-life option could be worth more than the long-life option. As we explain later in the chapter, it can be optimal to exercise a deep-in-the-money American put option early. This means that there are some situations where a short-maturity European put option is more valuable than a similar long-maturity European put option.

# Volatility

The precise way in which volatility is defined is explained in Chapter 15. Roughly speaking, the volatility of a stock price is a measure of how uncertain we are about future stock price movements. As volatility increases, the chance that the stock will do very well or very poorly increases. For the owner of a stock, these two outcomes tend to offset each other. However, this is not so for the owner of a call or put. The owner of a

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/d5d97f9564da92dc93c0eec9a43e41aa6c85ef455c446747686e3ca2a876318d.jpg)

Figure 11.1 Effect of changes in stock price, strike price, and expiration date on option prices when  $S_0 = 50$ ,  $K = 50$ ,  $r = 5\%$ ,  $\sigma = 30\%$ , and  $T = 1$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/bbfbf7c4bbfdb5ba83d61d8d5c543240dfabf4d90126d7251497cc34607acefa.jpg)

(b)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/d9bb0f2162147b88730dbf8f27e50433115034a927e39fb554e04a71683e0ca1.jpg)

(a)

(c)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/eff03cdb2a46db53178bd84bd46d8c6e4e0ad113856a60db4483fc13e0be5f16.jpg)

(d)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/821a6999c15ff18320de8cbf8ec0e4833e1542b84e016e47112b05d964b854ed.jpg)

(e)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/5340479c87b5c765a955125f31614a588856ea3823e122ac84f6d99648709f89.jpg)

(f)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/a3ab4cf2a5d83505ded36f9ff37cafe8998a2a3f0b70a3bbd066873532c33e4d.jpg)

Figure 11.2 Effect of changes in volatility and risk-free interest rate on option prices when  $S_0 = 50$ ,  $K = 50$ ,  $r = 5\%$ ,  $\sigma = 30\%$ , and  $T = 1$ .

(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/8d3e02ef4a6d9c43a447e5c0d9c7d956ac7349fb48264654210393967f1cdf6c.jpg)

(b)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/1a9783f30d8df7b075af276844421ee987bc4f6834534d9cf36c325bb67bc3a4.jpg)

(c)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/ba64f0dfc8e54622489d1f36daffed2177921b54797c7252d4cf39bd201167ac.jpg)

(d) call benefits from price increases but has limited downside risk in the event of price decreases because the most the owner can lose is the price of the option. Similarly, the owner of a put benefits from price decreases, but has limited downside risk in the event of price increases. The values of both calls and puts therefore increase as volatility increases (see Figure 11.2a, b).

# Risk-Free Interest Rate

The risk-free interest rate affects the price of an option in a less clear-cut way. As interest rates in the economy increase, the expected return required by investors from the stock tends to increase. In addition, the present value of any future cash flow received by the holder of the option decreases. The combined impact of these two effects is to increase the value of call options and decrease the value of put options (see Figure 11.2c, d).

It is important to emphasize that we are assuming that interest rates change while all other variables stay the same. In particular we are assuming in Table 11.1 that interest rates change while the stock price remains the same. In practice, when interest rates rise

(fall), stock prices tend to fall (rise). The combined effect of an interest rate increase and the accompanying stock price decrease can be to decrease the value of a call option and increase the value of a put option. Similarly, the combined effect of an interest rate decrease and the accompanying stock price increase can be to increase the value of a call option and decrease the value of a put option.

# Amount of Future Dividends

Dividends have the effect of reducing the stock price on the ex-dividend date. This is bad news for the value of call options and good news for the value of put options. Consider a dividend whose ex-dividend date is during the life of an option. The value of the option is negatively related to the size of the dividend if the option is a call and positively related to the size of the dividend if the option is a put.

# 11.2 ASSUMPTIONS AND NOTATION

In this chapter, we will make assumptions similar to those made when deriving forward and futures prices in Chapter 5. We assume that there are some market participants, such as large investment banks, for which the following statements are true:

1. There are no transaction costs.
2. All trading profits (net of trading losses) are subject to the same tax rate.
3. Borrowing and lending are possible at the risk-free interest rate.

We assume that these market participants are prepared to take advantage of arbitrage opportunities as they arise. As discussed in Chapters 1 and 5, this means that any available arbitrage opportunities disappear very quickly. For the purposes of our analysis, it is therefore reasonable to assume that there are no arbitrage opportunities.

We will use the following notation:

$S_0$ : Current stock price

$K$ : Strike price of option

$T$ : Time to expiration of option

$S_{T}$ : Stock price on the expiration date

$r$ : Continuously compounded risk-free rate of interest for an investment maturing in time  $T$

C: Value of American call option to buy one share

$P$ : Value of American put option to sell one share

$c$ : Value of European call option to buy one share

$p$ : Value of European put option to sell one share

It should be noted that  $r$  is the nominal risk-free rate of interest, not the real risk-free rate of interest. The proxies used by the market for the risk-free rate of interest were discussed in Chapter 4. A simple arbitrage argument suggests that  $r > 0$  and this is the assumption we make in deriving results in this chapter. However, during some periods the monetary policies of governments have led to interest rates being negative in some currencies such as the euro, Swiss franc, and Japanese yen. Problem 11.27 considers the impact of negative interest rates on the results in this chapter.

# 11.3 UPPER AND LOWER BOUNDS FOR OPTION PRICES

In this section, we derive upper and lower bounds for option prices. These bounds do not depend on any particular assumptions about the factors mentioned in Section 11.1 (except  $r > 0$ ). If an option price is above the upper bound or below the lower bound, then there are profitable opportunities for arbitrageurs.

# Upper Bounds

An American or European call option gives the holder the right to buy one share of a stock for a certain price. No matter what happens, the option can never be worth more than the stock. Hence, the stock price is an upper bound to the option price:

$$ c \leq S _ {0} \quad \text {a n d} \quad C \leq S _ {0} \tag {11.1}
$$

If these relationships were not true, an arbitrageur could easily make a riskless profit by buying the stock and selling the call option.

An American put option gives the holder the right to sell one share of a stock for  $K$ . No matter how low the stock price becomes, the option can never be worth more than  $K$ . Hence,

$$
P \leq K \tag {11.2}
$$

For European options, we know that at maturity the option cannot be worth more than  $K$ . It follows that it cannot be worth more than the present value of  $K$  today:

$$ p \leq K e ^ {- r T} \tag {11.3}
$$

If this were not true, an arbitrageur could make a riskless profit by writing the option and investing the proceeds of the sale at the risk-free interest rate.

# Lower Bound for Calls on Non-Dividend-Paying Stocks

A lower bound for the price of a European call option on a non-dividend-paying stock is

$$
S _ {0} - K e ^ {- r T}
$$

We first look at a numerical example and then consider a more formal argument.

Suppose that  $S_0 = \20, K = \$ 18, r = 10\%  per annum, and  $T = 1$  year. In this case,

$$
S _ {0} - K e ^ {- r T} = 2 0 - 1 8 e ^ {- 0. 1} = 3. 7 1
$$ or  \$3.71. Consider the situation where the European call price is\$ 3.00, which is less than the theoretical minimum of 3.71. An arbitrageur can short the stock and buy the


call to provide a cash inflow of $20.00 - $3.00 = \$17.00. If invested for 1 year at 10\% per annum, the \$17.00 grows to 17e^0.1×1 = \$18.79. At the end of the year, the option expires. If the stock price is greater than \$18.00, the arbitrageur exercises the option paying 18.00 for the stock and uses the stock to close out the short position. This leads to a profit of

$$

\$ 18.79 - \$ 18.00 = \$ 0.79

$$

If the stock price is less than \$18.00, the stock is bought in the market and the short position is closed out. The arbitrageur then makes an even greater profit. For example, if the stock price is \$17.00, the arbitrageur's profit is

$$

\$ 18.79 - \$ 17.00 = \$ 1.79

$$

For a more formal argument, we consider the following two portfolios:

Portfolio A: one European call option plus a zero-coupon bond that provides a payoff of  $K$  at time  $T$

Portfolio B: one share of the stock.

In portfolio A, the zero-coupon bond will be worth  $K$  at time  $T$ . If  $S_{T} > K$ , the call option is exercised at maturity and portfolio A is worth  $S_{T}$ . If  $S_{T} < K$ , the call option expires worthless and the portfolio is worth  $K$ . Hence, at time  $T$ , portfolio A is worth

$$

\max  \left(S _ {T}, K\right)

$$

Portfolio B is worth  $S_{T}$  at time  $T$ . Hence, portfolio A is always worth as much as, and can be worth more than, portfolio B at the option's maturity. It follows that in the absence of arbitrage opportunities this must also be true today. The zero-coupon bond is worth  $Ke^{-rT}$  today. Hence,

$$ c + K e ^ {- r T} \geq S _ {0}
$$ or


$$ c \geq S _ {0} - K e ^ {- r T}
$$

Because the worst that can happen to a call option is that it expires worthless, its value cannot be negative. This means that  $c \geq 0$ , so that

$$ c \geq \max  \left(S _ {0} - K e ^ {- r T}, 0\right) \tag {11.4}
$$

# Example 11.1

Consider a European call option on a non-dividend-paying stock when the stock price is  \$51, the strike price is\$ 50, the time to maturity is 6 months, and the risk-free interest rate is 12\% per annum. In this case,  $S_0 = 51$ ,  $K = 50$ ,  $T = 0.5$ , and  $r = 0.12$ . From equation (11.4), a lower bound for the option price is  $S_0 - Ke^{-rT}$ , or

$$
5 1 - 5 0 e ^ {- 0. 1 2 \times 0. 5} = \$ 3. 9 1
$$

# Lower Bound for European Puts on Non-Dividend-Paying Stocks

For a European put option on a non-dividend-paying stock, a lower bound for the price is

$$
K e ^ {- r T} - S _ {0}
$$

Again, we first consider a numerical example and then look at a more formal argument.

Suppose that  $S_0 = \$ 37, K = \ $40, r = 5\%$  per annum, and  $T = 0.5$  years. In this case,

$$
K e ^ {- r T} - S _ {0} = 4 0 e ^ {- 0. 0 5 \times 0. 5} - 3 7 = \$ 2. 0 1
$$

Consider the situation where the European put price is \$1.00, which is less than the theoretical minimum of \$2.01. An arbitrageur can borrow \$38.00 for 6 months to buy both the put and the stock. At the end of the 6 months, the arbitrageur will be required to repay 38e^0.05  $\times$  0.5 = \$38.96. If the stock price is below \$40.00, the arbitrageur exercises the option to sell the stock for \$40.00, repays the loan, and makes a profit of

$$
\$ 40.00 - \$ 38.96 = \$ 1.04
$$

If the stock price is greater than \$40.00, the arbitrageur discards the option, sells the stock, and repays the loan for an even greater profit. For example, if the stock price is \$42.00, the arbitrageur's profit is

$$
\$ 42.00 - \$ 38.96 = \$ 3.04
$$

For a more formal argument, we consider the following two portfolios:

Portfolio  $C$ : one European put option plus one share

Portfolio  $D$ : a zero-coupon bond paying off  $K$  at time  $T$ .

If  $S_{T} < K$ , then the option in portfolio  $C$  is exercised at option maturity and the portfolio becomes worth  $K$ . If  $S_{T} > K$ , then the put option expires worthless and the portfolio is worth  $S_{T}$  at this time. Hence, portfolio  $C$  is worth

$$
\max  (S _ {T}, K)
$$ at time  $T$ . Portfolio D is worth  $K$  at time  $T$ . Hence, portfolio C is always worth as much as, and can sometimes be worth more than, portfolio D at time  $T$ . It follows that in the absence of arbitrage opportunities portfolio C must be worth at least as much as portfolio D today. Hence,


$$ p + S _ {0} \geq K e ^ {- r T}
$$ or


$$ p \geq K e ^ {- r T} - S _ {0}
$$

Because the worst that can happen to a put option is that it expires worthless, its value cannot be negative. This means that

$$ p \geq \max  \left(K e ^ {- r T} - S _ {0}, 0\right) \tag {11.5}
$$

# Example 11.2

Consider a European put option on a non-dividend-paying stock when the stock price is  \$38, the strike price is\$ 40, the time to maturity is 3 months, and the risk-free rate of interest is 10\% per annum. In this case  $S_0 = 38$ ,  $K = 40$ ,  $T = 0.25$ , and  $r = 0.10$ . From equation (11.5), a lower bound for the option price is  $Ke^{-rT} - S_0$ , or  $40e^{-0.1 \times 0.25} - 38 =$ 1.01.

# 11.4 PUT-CALL PARITY

We now derive an important relationship between the prices of European put and call options that have the same strike price and time to maturity. Consider the following two portfolios that were used in the previous section:

Portfolio A: one European call option plus a zero-coupon bond that provides a payoff of  $K$  at time  $T$

Portfolio  $C$ : one European put option plus one share of the stock.

We continue to assume that the stock pays no dividends. The call and put options have the same strike price  $K$  and the same time to maturity  $T$ .

As discussed in the previous section, the zero-coupon bond in portfolio A will be worth  $K$  at time  $T$ . If the stock price  $S_{T}$  at time  $T$  proves to be above  $K$ , then the call option in portfolio A will be exercised. This means that portfolio A is worth  $(S_{T} - K) + K = S_{T}$  at time  $T$  in these circumstances. If  $S_{T}$  proves to be less than  $K$ , then the call option in portfolio A will expire worthless and the portfolio will be worth  $K$  at time  $T$ .

In portfolio C, the share will be worth  $S_{T}$  at time  $T$ . If  $S_{T}$  proves to be below  $K$ , then the put option in portfolio C will be exercised. This means that portfolio C is worth  $(K - S_{T}) + S_{T} = K$  at time  $T$  in these circumstances. If  $S_{T}$  proves to be greater than  $K$ , then the put option in portfolio C will expire worthless and the portfolio will be worth  $S_{T}$  at time  $T$ .

The situation is summarized in Table 11.2. If  $S_{T} > K$ , both portfolios are worth  $S_{T}$  at time  $T$ ; if  $S_{T} < K$ , both portfolios are worth  $K$  at time  $T$ . In other words, both are worth

$$
\max  (S _ {T}, K)
$$ when the options expire at time  $T$ . Because they are European, the options cannot be exercised prior to time  $T$ . Since the portfolios have identical values at time  $T$ , they must have identical values today. If this were not the case, an arbitrageur could buy the less expensive portfolio and sell the more expensive one. Because the portfolios are guaranteed to cancel each other out at time  $T$ , this trading strategy would lock in an arbitrage profit equal to the difference in the values of the two portfolios.


The components of portfolio A are worth  $c$  and  $Ke^{-rT}$  today, and the components of

Table 11.2 Portfolios illustrating put-call parity.

<table><tr><td></td><td></td><td>ST&gt;KT</td><td>ST&lt;KT</td></tr><tr><td rowspan="3">Portfolio A</td><td>Call option</td><td>ST-K</td><td>0</td></tr><tr><td>Zero-coupon bond</td><td>K</td><td>K</td></tr><tr><td>Total</td><td>ST</td><td>K</td></tr><tr><td rowspan="3">Portfolio C</td><td>Put Option</td><td>0</td><td>K-ST</td></tr><tr><td>Share</td><td>ST</td><td>ST</td></tr><tr><td>Total</td><td>ST</td><td>K</td></tr></table> portfolio  $C$  are worth  $p$  and  $S_0$  today. Hence,


$$ c + K e ^ {- r T} = p + S _ {0} \tag {11.6}
$$

This relationship is known as put-call parity. It shows that the value of a European call with a certain exercise price and exercise date can be deduced from the value of a European put with the same exercise price and exercise date, and vice versa.

To illustrate the arbitrage opportunities when equation (11.6) does not hold, suppose that the stock price is  \$31, the exercise price is\$ 30, the risk-free interest rate is 10\% per annum, the price of a three-month European call option is \$3, and the price of a 3-month European put option is \$2.25. In this case,

$$ c + K e ^ {- r T} = 3 + 3 0 e ^ {- 0. 1 \times 3 / 1 2} = \$ 3 2. 2 6

$$

$$ p + S _ {0} = 2. 2 5 + 3 1 = \$ 3 3. 2 5
$$

Portfolio C is overpriced relative to portfolio A. An arbitrageur can buy the securities in portfolio A and short the securities in portfolio C. The strategy involves buying the call and shorting both the put and the stock, generating a positive cash flow of

$$
- 3 + 2. 2 5 + 3 1 = \$ 3 0. 2 5
$$ up front. When invested at the risk-free interest rate, this amount grows to


$$

3 0. 2 5 e ^ {0. 1 \times 0. 2 5} = \\ 3 1. 0 2

$$ in three months. If the stock price at expiration of the option is greater than  \$30, the call will be exercised. If it is less than\$ 30, the put will be exercised. In either case, the arbitrageur ends up buying one share for 30. This share can be used to close out the short position. The net profit is therefore

$$
\$ 31.02 - \$ 30.00 = \$ 1.02
$$

For an alternative situation, suppose that the call price is \$3 and the put price is \$1. In this case,

$$ c + K e ^ {- r T} = 3 + 3 0 e ^ {- 0. 1 \times 3 / 1 2} = \$ 3 2. 2 6

$$

$$ p + S _ {0} = 1 + 3 1 = \$ 3 2. 0 0
$$

Portfolio A is overpriced relative to portfolio C. An arbitrageur can short the securities in portfolio A and buy the securities in portfolio C to lock in a profit. The strategy involves shorting the call and buying both the put and the stock with an initial investment of

$$
\$ 31 + \$ 1 - \$ 3 = \$ 2 9
$$

When the investment is financed at the risk-free interest rate, a repayment of 29e^0.1×0.25 = \$29.73 is required at the end of the three months. As in the previous case, either the call or the put will be exercised. The short call and long put option position therefore leads to the stock being sold for \$30.00. The net profit is therefore

$$
\$ 30.00 - \$ 29.73 = \$ 0.27
$$

These examples are illustrated in Table 11.3. Business Snapshot 11.1 shows how options and put-call parity can help us understand the positions of the debt holders and equity holders in a company.

Table 11.3 Arbitrage opportunities when put-call parity does not hold. Stock price = \$31; interest rate = 10\%; call price = \$3. Both put and call have strike price of 30 and three months to maturity.

<table><tr><td>Three-month put price = \$2.25</td><td>Three-month put price = \$1</td></tr><tr><td>Action now:</td><td>Action now:</td></tr><tr><td>Buy call for \$3</td><td>Borrow \$29 for 3 months</td></tr><tr><td>Short put to realize \$2.25</td><td>Short call to realize \$3</td></tr><tr><td>Short the stock to realize \$31</td><td>Buy put for \$1</td></tr><tr><td>Invest \$30.25 for 3 months</td><td>Buy the stock for \$31</td></tr><tr><td>Action in 3 months if ST &gt; 30:</td><td>Action in 3 months if ST &gt; 30:</td></tr><tr><td>Receive \$31.02 from investment</td><td>Call exercised: sell stock for \$30</td></tr><tr><td>Exercise call to buy stock for $30</td><td>Use $29.73 to repay loan</td></tr><tr><td>Net profit = \$1.02</td><td>Net profit = \$0.27</td></tr><tr><td>Action in 3 months if ST &lt; 30:</td><td>Action in 3 months if ST &lt; 30:</td></tr><tr><td>Receive \$31.02 from investment</td><td>Exercise put to sell stock for \$30</td></tr><tr><td>Put exercised: buy stock for $30</td><td>Use $29.73 to repay loan</td></tr><tr><td>Net profit = \$1.02</td><td>Net profit = \$0.27</td></tr></table>

# American Options

Put-call parity holds only for European options. However, it is possible to derive some results for American option prices. It can be shown (see Problem 11.23) that, when there are no dividends,

$$
S _ {0} - K \leq C - P \leq S _ {0} - K e ^ {- r T} \tag {11.7}
$$

# Example 11.3

An American call option on a non-dividend-paying stock with strike price 20.00 and maturity in 5 months is worth 1.50. Suppose that the current stock price is 19.00 and the risk-free interest rate is 10\% per annum. From equation (11.7), we have

$$
1 9 - 2 0 \leq C - P \leq 1 9 - 2 0 e ^ {- 0. 1 \times 5 / 1 2}
$$ or


$$

1 \geq P - C \geq 0. 1 8

$$ showing that P - C lies between \$0.18 and \$1.00. With C at \$1.50, P must lie between \$1.68 and \$2.50. In other words, upper and lower bounds for the price of an American put with the same strike price and expiration date as the American call are \$2.50 and 1.68.

# 11.5 CALLS ON A NON-DIVIDEND-PAYING STOCK

In this section, we first show that it is never optimal to exercise an American call option on a non-dividend-paying stock before the expiration date.

To illustrate the general nature of the argument, consider an American call option on a non-dividend-paying stock with one month to expiration when the stock price is 70

# Business Snapshot 11.1 Put-Call Parity and Capital Structure

Fischer Black, Myron Scholes, and Robert Merton were the pioneers of option pricing. In the early 1970s, they also showed that options can be used to characterize the capital structure of a company. Today this analysis is widely used by financial institutions to assess a company's credit risk.

To illustrate the analysis, consider a simple situation where a company has assets that are financed with zero-coupon bonds and equity. The bonds mature in five years at which time a principal payment of  $K$  is required. The company pays no dividends. If the assets are worth more than  $K$  in five years, the equity holders choose to repay the bond holders. If the assets are worth less than  $K$ , the equity holders choose to declare bankruptcy and the bond holders end up owning the company.

The value of the equity in five years is therefore  $\max (A_T - K, 0)$ , where  $A_T$  is the value of the company's assets at that time. This shows that the equity holders have a five-year European call option on the assets of the company with a strike price of  $K$ . What about the bond holders? They get  $\min (A_T, K)$  in five years. This is the same as  $K - \max (K - A_T, 0)$ , so that today the bonds are worth the present value of  $K$  minus the value of a five-year European put option on the assets with a strike price of  $K$ .

To summarize, if  $c$  and  $p$  are the values, respectively, of five-year call and put options on the company's assets with strike price  $K$ , then

$$
\text {V a l u e o f c o m p a n y s} = c
$$

$$
\text {V a l u e} = P V (K) - p
$$

Denote the value of the assets of the company today by  $A_0$ . The value of the assets must equal the total value of the instruments used to finance the assets. This means that it must equal the sum of the value of the equity and the value of the debt, so that

$$
A _ {0} = c + \left[ P V (K) - p \right]
$$

Rearranging this equation, we have

$$ c + P V (K) = p + A _ {0}
$$

This is the put-call parity result in equation (11.6) for call and put options on the assets of the company.

and the strike price is \$40. The option is deep in the money, and the investor who owns the option might well be tempted to exercise it immediately. However, if the investor plans to hold the stock obtained by exercising the option for more than one month, this is not the best strategy. A better course of action is to keep the option and exercise it at the end of the month. The \$40 strike price is then paid out one month later than it would be if the option were exercised immediately, so that interest is earned on the \$40 for one month. Because the stock pays no dividends, no income from the stock is sacrificed. A further advantage of waiting rather than exercising immediately is that there is some chance (however remote) that the stock price will fall below \$40 in one month. In this case the investor will not exercise in one month and will be glad that the decision to exercise early was not taken!

This argument shows that there are no advantages to exercising early if the investor plans to keep the stock for the remaining life of the option (one month, in this case). What if the investor thinks the stock is currently overpriced and is wondering whether to exercise the option and sell the stock? In this case, the investor is better off selling the option than exercising it. The option will be bought by another investor who does want to hold the stock. Such investors must exist. Otherwise the current stock price would not be \$70. The price obtained for the option will be greater than its intrinsic value of \$30, for the reasons mentioned earlier.

For a more formal argument, we can use equation (11.4):

$$ c \geq S _ {0} - K e ^ {- r T}
$$

Because the owner of an American call has all the exercise opportunities open to the owner of the corresponding European call, we must have  $C \geq c$ . Hence,

$$
C \geq S _ {0} - K e ^ {- r T}
$$

Given  $r > 0$ , it follows that  $C > S_0 - K$  when  $T > 0$ . This means that  $C$  is always greater than the option's intrinsic value prior to maturity. If it were optimal to exercise at a particular time prior to maturity,  $C$  would equal the option's intrinsic value at that time. It follows that it can never be optimal to exercise early.

To summarize, there are two reasons an American call on a non-dividend-paying stock should not be exercised early. One relates to the insurance that it provides. A call option, when held instead of the stock itself, in effect insures the holder against the stock price falling below the strike price. Once the option has been exercised and the strike price has been exchanged for the stock price, this insurance vanishes. The other reason concerns the time value of money. From the perspective of the option holder, the later the strike price is paid out the better.

# Bounds

Because American call options are never exercised early when there are no dividends, they are equivalent to European call options, so that  $C = c$ . From equations (11.1) and (11.4), it follows that lower and upper bounds for both  $c$  and  $C$  are given by

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/0b4b24a3ca6a1d8a0d80f1d8fb57515b53a08cd2e19b4a9fa0922f086bf11926.jpg)

Figure 11.3 Bounds for European and American call options when there are no dividends.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/d4ddb31406c543ec0d5a38cf9346b38b34c2be7728ef6604adb7785ecec64480.jpg)

Figure 11.4 Variation of price of an American or European call option on a nondividend-paying stock with the stock price. Curve moves in the direction of the arrows when there is an increase in the interest rate, time to maturity, or stock price volatility.

$$
\max  \left(S _ {0} - K e ^ {- r T}, 0\right) \quad \text {a n d} \quad S _ {0}
$$ respectively. These bounds are illustrated in Figure 11.3.


The general way in which the call price varies with the stock price,  $S_0$ , is shown in Figure 11.4. As  $r$  or  $T$  or the stock price volatility increases, the line relating the call price to the stock price moves in the direction indicated by the arrows.

# 11.6 PUTS ON A NON-DIVIDEND-PAYING STOCK

It can be optimal to exercise an American put option on a non-dividend-paying stock early. Indeed, at any given time during its life, the put option should always be exercised early if it is sufficiently deep in the money.

To illustrate, consider an extreme situation. Suppose that the strike price is \$10 and the stock price is virtually zero. By exercising immediately, an investor makes an immediate gain of \$10. If the investor waits, the gain from exercise might be less than \$10, but it cannot be more than \$10, because negative stock prices are impossible. Furthermore, assuming the interest rate is positive, receiving \$10 now is preferable to receiving \$10 in the future. It follows that the option should be exercised immediately.

Like a call option, a put option can be viewed as providing insurance. A put option, when held in conjunction with the stock, insures the holder against the stock price falling below a certain level. However, a put option is different from a call option in that it may be optimal for an investor to forgo this insurance and exercise early in order to realize the strike price immediately. In general, the early exercise of a put option becomes more attractive as  $S_{0}$  decreases, as  $r$  increases, and as the volatility decreases.

# Bounds

From equations (11.3) and (11.5), lower and upper bounds for a European put option when there are no dividends are given by

$$

\max  \left(K e ^ {- r T} - S _ {0}, 0\right) \leq p \leq K e ^ {- r T}

$$

For an American put option on a non-dividend-paying stock, the condition

$$

P \geq \max  (K - S _ {0}, 0)

$$ must apply because the option can be exercised at any time. This is a stronger condition than the one for a European put option in equation (11.5). Using the result in equation (11.2), bounds for an American put option on a non-dividend-paying stock are


$$

\max  (K - S _ {0}, 0) \leq P \leq K

$$

Figure 11.5 illustrates the bounds.

Figure 11.6 shows the general way in which the price of an American put option varies with  $S_0$ . As we argued earlier, provided that  $r > 0$ , it is always optimal to exercise an American put immediately when the stock price is sufficiently low. When early exercise is optimal, the value of the option is  $K - S_0$ . The curve representing the value of the put therefore merges into the put's intrinsic value,  $K - S_0$ , for a sufficiently small value of  $S_0$ . In Figure 11.6, this value of  $S_0$  is shown as point A. The line relating the put price to the stock price moves in the direction indicated by the arrows when  $r$  decreases, when the volatility increases, and when  $T$  increases.

Because there are some circumstances when it is desirable to exercise an American put option early, it follows that an American put option is always worth more than the corresponding European put option. Furthermore, because an American put is sometimes worth its intrinsic value (see Figure 11.6), it follows that a European put option must sometimes be worth less than its intrinsic value. This means that the curve representing the relationship between the put price and the stock price for a European option must be below the corresponding curve for an American option.

Figure 11.7 shows the variation of the European put price with the stock price. Note that point B in Figure 11.7, at which the price of the option is equal to its intrinsic value, must represent a higher value of the stock price than point A in Figure 11.6 because the curve in Figure 11.7 is below that in Figure 11.6. Point E in Figure 11.7 is where  $S_0 = 0$  and the European put price is  $Ke^{-rT}$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/39ada1645968e5da973eb97aad153b9ed5544ef6fa8e53ea31e998647f1fa235.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/e535482175e9ea2f0cf52db1f8f78a19ab8fbd32c439a4d2f04b796c917ea18f.jpg)
Figure 11.5 Bounds for European and American put options when there are no dividends.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/0894fc0f1b50f7d36fe59f265772d899d7ed0028d1aa6a6698d8ecd07c128f54.jpg)
Figure 11.6 Variation of price of an American put option with stock price. Curve moves in the direction of the arrows when the time to maturity or stock price volatility increases or when the interest rate decreases.


# 11.7 EFFECT OF DIVIDENDS

The results produced so far in this chapter have assumed that we are dealing with options on a non-dividend-paying stock. In this section, we examine the impact of dividends. We assume that the dividends that will be paid during the life of the option are known. In many situations, this assumption is often not too unreasonable. We will use  $D$  to denote the present value of the dividends during the life of the option. In the calculation of  $D$ , a dividend is assumed to occur at the time of its ex-dividend date.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/a5254b5e83f3b0cd9ef5b05ec975f949eeb6776d32d2e9c32d813b41d104fe83.jpg)
Figure 11.7 Variation of price of a European put option with the stock price.


# Lower Bound for Calls and Puts

We can redefine portfolios A and B as follows:

Portfolio A: one European call option plus an amount of cash equal to  $D + Ke^{-rT}$

Portfolio B: one share

A similar argument to the one used to derive equation (11.4) shows that

$$ c \geq \max  \left(S _ {0} - D - K e ^ {- r T}, 0\right) \tag {11.8}
$$

We can also redefine portfolios C and D as follows:

Portfolio  $C$ : one European put option plus one share

Portfolio  $D$ : an amount of cash equal to  $D + Ke^{-rT}$

A similar argument to the one used to derive equation (11.5) shows that

$$ p \geq \max  (D + K e ^ {- r T} - S _ {0}, 0) \tag {11.9}
$$

# Early Exercise

When dividends are expected, we can no longer assert that an American call option will not be exercised early. Sometimes it is optimal to exercise an American call immediately prior to an ex-dividend date. It is never optimal to exercise a call at other times. This point is discussed further in Section 15.12.

# Put-Call Parity

Comparing the value at option maturity of the redefined portfolios A and C shows that, with dividends, the put-call parity result in equation (11.6) becomes

$$ c + D + K e ^ {- r T} = p + S _ {0} \tag {11.10}
$$

Dividends cause equation (11.7) to be modified (see Problem 11.24) to

$$
S _ {0} - D - K \leq C - P \leq S _ {0} - K e ^ {- r T} \tag {11.11}
$$

# SUMMARY

There are six factors affecting the value of a stock option: the current stock price, the strike price, the time to expiration, the stock price volatility, the risk-free interest rate, and the dividends expected during the life of the option. The value of a call usually increases as the current stock price, the time to expiration, the volatility, and the risk-free interest rate increase. The value of a call decreases as the strike price and expected dividends increase. The value of a put usually increases as the strike price, the time to expiration, the volatility, and the expected dividends increase. The value of a put decreases as the current stock price and the risk-free interest rate increase.

It is possible to reach some conclusions about the value of stock options without making any assumptions about the volatility of stock prices. For example, the price of a call option on a stock must always be worth less than the price of the stock itself. Similarly, the price of a put option on a stock must always be worth less than the option's strike price.

A European call option on a non-dividend-paying stock must be worth more than

$$
\max  \left(S _ {0} - K e ^ {- r T}, 0\right)
$$ where  $S_0$  is the stock price,  $K$  is the strike price,  $r$  is the risk-free interest rate, and  $T$  is the time to expiration. A European put option on a non-dividend-paying stock must be worth more than


$$

\max  \left(K e ^ {- r T} - S _ {0}, 0\right)

$$

When dividends with present value  $D$  will be paid, the lower bound for a European call option becomes

$$

\max  \left(S _ {0} - D - K e ^ {- r T}, 0\right)

$$ and the lower bound for a European put option becomes


$$

\max  \left(K e ^ {- r T} + D - S _ {0}, 0\right)

$$

Put-call parity is a relationship between the price,  $c$ , of a European call option on a stock and the price,  $p$ , of a European put option on a stock. For a non-dividend-paying stock, it is

$$ c + K e ^ {- r T} = p + S _ {0}
$$

For a dividend-paying stock, the put-call parity relationship is

$$ c + D + K e ^ {- r T} = p + S _ {0}
$$

Put-call parity does not hold for American options. However, it is possible to use arbitrage arguments to obtain upper and lower bounds for the difference between the price of an American call and the price of an American put.

In Chapter 15, we will carry the analyses in this chapter further by making specific assumptions about the probabilistic behavior of stock prices. The analysis will enable us to derive exact pricing formulas for European stock options. In Chapters 13 and 21, we will see how numerical procedures can be used to price American options.

# FURTHER READING

Broadie, M., and J. Detemple. "American Option Valuation: New Bounds, Approximations, and a Comparison of Existing Methods," Review of Financial Studies, 9, 4 (1996): 1211-50.

Merton, R. C. "On the Pricing of Corporate Debt: The Risk Structure of Interest Rates," Journal of Finance, 29, 2 (1974): 449-70.

Merton, R. C. "The Relationship between Put and Call Prices: Comment," Journal of Finance, 28 (March 1973): 183-84.

Stoll, H. R. "The Relationship between Put and Call Option Prices," Journal of Finance, 24 (December 1969): 801-24.

# Short Concept Questions

11.1. List six factors that affect stock option prices.
11.2. What is the lower bound for a European call option on a stock paying no dividends?
11.3. What is the lower bound for a European put option on a stock paying no dividends?
11.4. What is the put-call parity equation for a stock paying no dividends?
11.5. Under what circumstances should an American call option on a stock paying no dividends be exercised early?
11.6. Under what circumstances should an American put option on a stock paying no dividends be exercised early?

# Practice Questions

11.7. What is a lower bound for the price of a 4-month call option on a non-dividend-paying stock when the stock price is \$28, the strike price is \$25, and the risk-free interest rate is 8\% per annum?
 11.8. What is a lower bound for the price of a 1-month European put option on a non-dividend-paying stock when the stock price is \$12, the strike price is \$15, and the risk-free interest rate is 6\% per annum?
11.9. Give two reasons why the early exercise of an American call option on a non-dividend-paying stock is not optimal. The first reason should involve the time value of money. The second should apply even if interest rates are zero.
11.10. "The early exercise of an American put is a trade-off between the time value of money and the insurance value of a put." Explain this statement.
11.11. Why is an American call option on a dividend-paying stock always worth at least as much as its intrinsic value. Is the same true of a European call option? Explain your answer.
 11.12. The price of a non-dividend-paying stock is \$19 and the price of a 3-month European call option on the stock with a strike price of \$20 is \$1. The risk-free rate is 4\% per annum. What is the price of a 3-month European put option with a strike price of \$20?
11.13. Explain why the arguments leading to put-call parity for European options cannot be used to give a similar result for American options.
 11.14. What is a lower bound for the price of a 6-month call option on a non-dividend-paying stock when the stock price is \$80, the strike price is \$75, and the risk-free interest rate is 10\% per annum?
 11.15. What is a lower bound for the price of a 2-month European put option on a non-dividend-paying stock when the stock price is \$58, the strike price is \$65, and the risk-free interest rate is 5\% per annum?
 11.16. A 4-month European call option on a dividend-paying stock is currently selling for \$5. The stock price is \$64, the strike price is \$60, and a dividend of \$0.80 is expected in 1 month. The risk-free interest rate is 12\% per annum for all maturities. What opportunities are there for an arbitrageur?

11.17. A 1-month European put option on a non-dividend-paying stock is currently selling for \$2.50. The stock price is \$47, the strike price is 50, and the risk-free interest rate is 6\% per annum. What opportunities are there for an arbitrageur?
11.18. Give an intuitive explanation of why the early exercise of an American put becomes more attractive as the risk-free rate increases and volatility decreases.
 11.19. The price of a European call that expires in 6 months and has a strike price of \$30 is \$2. The underlying stock price is \$29, and a dividend of \$0.50 is expected in 2 months and again in 5 months. Risk-free interest rates (all maturities) are 10\%. What is the price of a European put option that expires in 6 months and has a strike price of 30?
11.20. Explain the arbitrage opportunities in Problem 11.19 if the European put price is 3.
 11.21. The price of an American call on a non-dividend-paying stock is \$4. The stock price is \$31, the strike price is 30, and the expiration date is in 3 months. The risk-free interest rate is 8\%. Derive upper and lower bounds for the price of an American put on the same stock with the same strike price and expiration date.
11.22. Explain carefully the arbitrage opportunities in Problem 11.21 if the American put price is greater than the calculated upper bound.
11.23. Prove the result in equation (11.7). (Hint: For the first part of the relationship, consider (a) a portfolio consisting of a European call plus an amount of cash equal to  $K$ , and (b) a portfolio consisting of an American put option plus one share.)
11.24. Prove the result in equation (11.11). (Hint: For the first part of the relationship, consider (a) a portfolio consisting of a European call plus an amount of cash equal to  $D + K$ , and (b) a portfolio consisting of an American put option plus one share.)
11.25. Consider a 5-year call option on a non-dividend-paying stock granted to employees. The option can be exercised at any time after the end of the first year. Unlike a regular exchange-traded call option, the employee stock option cannot be sold. What is the likely impact of this restriction on the early-exercise decision?
11.26. Use the software DerivaGem to verify that Figures 11.1 and 11.2 are correct.
11.27. What is the impact (if any) of negative interest rates on:

(a) The put-call parity result for European options

(b) The result that American call options on non-dividend-paying stocks should never be exercised early

(c) The result that American put options on non-dividend-paying stocks should sometimes be exercised early.

Assume that holding cash earning zero interest is not possible.

11.28. Calls were traded on exchanges before puts. During the period of time when calls were traded but puts were not traded, how would you create a European put option on a non-dividend-paying stock synthetically.
 11.29. The prices of European call and put options on a non-dividend-paying stock with an expiration date in 12 months and a strike price of \$120 are \$20 and \$5, respectively. The current stock price is \$130. What is the implied risk-free rate?
 11.30. A European call option and put option on a stock both have a strike price of \$20 and an expiration date in 3 months. Both sell for \$3. The risk-free interest rate is 10\% per annum, the current stock price is \$19, and a \$1 dividend is expected in 1 month. Identify the arbitrage opportunity open to a trader.

11.31. Suppose that  $c_{1}, c_{2}$ , and  $c_{3}$  are the prices of European call options with strike prices  $K_{1}$ ,  $K_{2}$ , and  $K_{3}$ , respectively, where  $K_{3} > K_{2} > K_{1}$  and  $K_{3} - K_{2} = K_{2} - K_{1}$ . All options have the same maturity. Show that

$$ c _ {2} \leq 0. 5 (c _ {1} + c _ {3})
$$

(Hint: Consider a portfolio that is long one option with strike price  $K_{1}$ , long one option with strike price  $K_{3}$ , and short two options with strike price  $K_{2}$ .)

11.32. What is the result corresponding to that in Problem 11.31 for European put options?

# 12 CHAPTER

# Trading Strategies Involving Options

We discussed the profit pattern from an investment in a single option in Chapter 10. In this chapter we look at what can be achieved when an option is traded in conjunction with other assets. In particular, we examine the properties of portfolios consisting of (a) an option and a zero-coupon bond, (b) an option and the asset underlying the option, and (c) two or more options on the same asset.

A natural question is why a trader would want the profit patterns discussed here. The answer is that the choices a trader makes depend on the trader's judgment about how prices will move and the trader's willingness to take risks. Principal-protected notes, discussed in Section 12.1 appeal to individuals who are risk-averse. They do not want to risk losing their principal, but have an opinion about whether a particular asset will increase or decrease in value and are prepared to let the return they earn on this principal depend on whether they are right. If a trader is willing to take rather more risk than this, he or she could choose a bull or bear spread, discussed in Section 12.3. Yet more risk would be taken with a straightforward long position in a call or put option.

Suppose that a trader feels there will be a big move in price of an asset, but does not know whether this will be up or down. There are a number of alternative trading strategies. A risk-averse trader might choose a reverse butterfly spread, discussed in Section 12.3, where there will be a small gain if the trader's hunch is correct and a small loss if it is not. A more aggressive investor might choose a straddle or strangle, discussed in Section 12.4, where potential gains and losses are larger.

Further trading strategies involving options are considered in later chapters. For example, Chapter 17 shows how options on stock indices can be used to manage the risks in a stock portfolio and explains how range forward contracts can be used to hedge a foreign exchange exposure; Chapter 19 covers the way in which Greek letters are used to manage the risks when derivatives are traded; Chapter 26 covers exotic options and what is known as static options replication.

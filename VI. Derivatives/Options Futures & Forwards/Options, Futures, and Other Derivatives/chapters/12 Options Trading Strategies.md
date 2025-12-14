---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 12.1 PRINCIPAL-PROTECTED NOTES
linter-yaml-title-alias: 12.1 PRINCIPAL-PROTECTED NOTES
---

# 12.1 PRINCIPAL-PROTECTED NOTES

Options are often used to create what are termed principal-protected notes for the retail market. These are products that appeal to conservative investors. The return earned by the investor depends on the performance of a stock, a stock index, or other risky asset, but the initial principal amount invested is not at risk. An example will illustrate how a simple principal-protected note can be created.

# Example 12.1

Suppose that the 3-year interest rate is  $6\%$  with continuous compounding. This means that  $1,000e^{-0.06 \times 3} = \835.27$  will grow to \1,000 in 3 years. The difference between \ $1,000 and \$ 835.27 is \ $164.73. Suppose that a stock portfolio is worth \$ 1,000 and provides a dividend yield of  $1.5\%$  per annum. Suppose further that a 3-year at-the-money European call option on the stock portfolio can be purchased for less than \164.73. (From DerivaGem, it can be verified that this will be the case if the volatility of the value of the portfolio is less than about  $15\%$ .) A bank can offer clients a \1,000 investment opportunity consisting of:

1. A 3-year zero-coupon bond with a principal of 1,000
2. A 3-year at-the-money European call option on the stock portfolio.

If the value of the portfolio increases the investor gets whatever $1,000 invested in the portfolio would have grown to. (This is because the zero-coupon bond pays off $1,000 and this equals the strike price of the option.) If the value of the portfolio goes down, the option has no value, but payoff from the zero-coupon bond ensures that the investor receives the original 1,000 principal invested.

The attraction of a principal-protected note is that an investor is able to take a risky position without risking any principal. The worst that can happen is that the investor loses the chance to earn interest, or other income such as dividends, on the initial investment for the life of the note.

There are many variations on the product in Example 12.1. An investor who thinks that the price of an asset will decline can buy a principal-protected note consisting of a zero-coupon bond plus a put option. The investor's payoff in 3 years is then 1,000 plus the payoff (if any) from the put option.

Is a principal-protected note a good deal from the retail investor's perspective? A bank will always build in a profit for itself when it creates a principal-protected note. This means that, in Example 12.1, the zero-coupon bond plus the call option will always cost the bank less than 1,000. In addition, investors are taking the risk that the bank will not be in a position to make the payoff on the principal-protected note at maturity. (Some retail investors lost money on principal-protected notes created by Lehman Brothers when it failed in 2008.) In some situations, therefore, an investor will be better off if he or she buys the underlying option in the usual way and invests the remaining principal in a risk-free investment. However, this is not always the case. The investor is likely to face wider bid-ask spreads on the option than the bank and is likely to earn lower interest rates than the bank. It is therefore possible that the bank can add value for the investor while making a profit itself.

Now let us look at the principal-protected notes from the perspective of the bank. The economic viability of the structure in Example 12.1 depends critically on the level of interest rates and the volatility of the portfolio. If the interest rate is  $3\%$  instead of  $6\%$ , the bank has only  $1,000 - 1,000e^{-0.03 \times 3} = \86.07$  with which to buy the call option. If interest rates are  $6\%$ , but the volatility is  $25\%$  instead of  $15\%$ , the price of the option would be about \221. In either of these circumstances, the product described in Example 12.1 cannot be profitably created by the bank. However, there are a number of ways the bank can still create a viable 3-year product. For example, the strike price of the option can be increased so that the value of the portfolio has to rise by, say,  $15\%$  before the investor makes a gain; the investor's return could be capped; the return of the investor could depend on the average price of the asset instead of the final price; a knockout barrier could be specified. The derivatives involved in some of these alternatives will be discussed later in the book. (Capping the option corresponds to the creation of a bull spread for the investor and will be discussed later in this chapter.)

One way in which a bank can sometimes create a profitable principal-protected note when interest rates are low or volatilities are high is by increasing its life. Consider the situation in Example 12.1 when (a) the interest rate is 3\% rather than 6\% and (b) the stock portfolio has a volatility of 15\% and provides a dividend yield of 1.5\%. DerivaGem shows that a 3-year at-the-money European option costs about 119. This is more than the funds available to purchase it (1,000 - 1,000e^{-0.03\times 3} = \86.07). A 10-year at-the-money option costs about \217. This is less than the funds available to purchase it (1,000 - 1,000e^{-0.03\times 10} = \259.18), making the structure profitable. When the life is increased to 20 years, the option cost is about \281, which is much less than the funds available to purchase it (1,000 - 1,000e^{-0.03\times 20} = \451.19), so that the structure is even more profitable.

A critical variable for the bank in our example is the dividend yield. The higher it is, the more profitable the product is for the bank. If the dividend yield were zero, the principal-protected note in Example 12.1 cannot be profitable for the bank no matter how long it lasts. (This follows from equation (11.4).)

# 12.2 TRADING AN OPTION AND THE UNDERLYING ASSET

For convenience, we will assume that the asset underlying the options considered in the rest of the chapter is a stock. (Similar trading strategies can be developed for other underlying assets.) We will also follow the usual practice of calculating the profit from a trading strategy as the final payoff minus the initial cost without any discounting.

There are a number of different trading strategies involving a single option on a stock and the stock itself. The profits from these are illustrated in Figure 12.1. In this figure and in other figures throughout this chapter, the dashed line shows the relationship between profit and the stock price for the individual securities constituting the portfolio, whereas the solid line shows the relationship between profit and the stock price for the whole portfolio.

In Figure 12.1a, the portfolio consists of a long position in a stock plus a short position in a European call option. This is known as writing a covered call. The long stock position "covers" or protects the investor from the payoff on the short call that becomes necessary if there is a sharp rise in the stock price. In Figure 12.1b, a short position in a stock is combined with a long position in a call option. This is the reverse of writing a covered call. In Figure 12.1c, the investment strategy involves buying a European put option on a stock and the stock itself. This is referred to as a protective put strategy. In Figure 12.1d, a short position in a put option is combined with a short position in the stock. This is the reverse of a protective put.

The profit patterns in Figures 12.1a, b, c, and d have the same general shape as the profit patterns discussed in Chapter 10 for short put, long put, long call, and short call,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/186f8c1f752f68c30c9646ac28e5abd41e7ac28725c28ae7400c8d8cf92cf047.jpg)

Figure 12.1 Profit patterns (a) long position in a stock combined with short position in a call; (b) short position in a stock combined with long position in a call; (c) long position in a put combined with long position in a stock; (d) short position in a put combined with short position in a stock.

(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/3eab6eec880898ed91c06b6755aaf1b34b3f15798cd3f9b9ef011be3df3c7bb6.jpg)

(b)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/ee7ed70896d9597552dfeb26f356a0ce5e7546246a882225f106fa73d60c28c9.jpg)

(c)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/b99b426d2ae66f44650ad52106a040228d3f22589b72a500831fd0436011b14b.jpg)

(d) respectively. Put-call parity provides a way of understanding why this is so. From Chapter 11, the put-call parity relationship is

$$ p + S _ {0} = c + K e ^ {- r T} + D \tag {12.1}
$$ where  $p$  is the price of a European put,  $S_0$  is the stock price,  $c$  is the price of a European call,  $K$  is the strike price of both call and put,  $r$  is the risk-free interest rate,  $T$  is the time to maturity of both call and put, and  $D$  is the present value of the dividends anticipated during the life of the options.


Equation (12.1) shows that a long position in a European put combined with a long position in the stock is equivalent to a long European call position plus a certain amount  $(= Ke^{-rT} + D)$  of cash. This explains why the profit pattern in Figure 12.1c is similar to the profit pattern from a long call position. The position in Figure 12.1d is the reverse of that in Figure 12.1c and therefore leads to a profit pattern similar to that from a short call position.

Equation (12.1) can be rearranged to become

$$

S _ {0} - c = K e ^ {- r T} + D - p

$$

This shows that a long position in a stock combined with a short position in a European call is equivalent to a short European put position plus a certain amount  $(= Ke^{-rT} + D)$  of cash. This equality explains why the profit pattern in Figure 12.1a is similar to the profit pattern from a short put position. The position in Figure 12.1b is the reverse of that in Figure 12.1a and therefore leads to a profit pattern similar to that from a long put position.

# 12.3 SPREADS

A spread trading strategy involves taking a position in two or more options of the same type (i.e., two or more calls or two or more puts).

# Bull Spreads

One of the most popular types of spreads is a bull spread. This can be created by buying a European call option on a stock with a certain strike price and selling a European call option on the same stock with a higher strike price. Both options have the same expiration date. The strategy is illustrated in Figure 12.2. The profits from the two option positions taken separately are shown by the dashed lines. The profit from the whole strategy is the sum of the profits given by the dashed lines and is indicated by the solid line. Because a call price always decreases as the strike price increases, the value of the option sold is always less than the value of the option bought. A bull spread, when created from calls, therefore requires an initial investment.

Suppose that  $K_{1}$  is the strike price of the call option bought,  $K_{2}$  is the strike price of

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/b5937894b6f8bfcb687010ae22408af53ca9eee25fd38e3b7e140bbcd3c648d9.jpg)
Figure 12.2 Profit from bull spread created using call options.

Table 12.1 Payoff from a bull spread created using calls.

<table><tr><td>Stock price range</td><td>Payoff from long call option</td><td>Payoff from short call option</td><td>Total payoff</td></tr><tr><td>ST≤K1</td><td>0</td><td>0</td><td>0</td></tr><tr><td>K1＜ST＜K2</td><td>ST-K1</td><td>0</td><td>ST-K1</td></tr><tr><td>ST≥K2</td><td>ST-K1</td><td>-(ST-K2)</td><td>K2-K1</td></tr></table> the call option sold, and  $S_{T}$  is the stock price on the expiration date of the options. Table 12.1 shows the total payoff that will be realized from a bull spread in different circumstances. If the stock price does well and is greater than the higher strike price, the payoff is the difference between the two strike prices, or  $K_{2} - K_{1}$ . If the stock price on the expiration date lies between the two strike prices, the payoff is  $S_{T} - K_{1}$ . If the stock price on the expiration date is below the lower strike price, the payoff is zero. The profit in Figure 12.2 is calculated by subtracting the initial investment from the payoff.


A bull spread strategy limits the investor's upside as well as downside risk. The strategy can be described by saying that the investor has a call option with a strike price equal to  $K_{1}$  and has chosen to give up some upside potential by selling a call option with strike price  $K_{2}$  ( $K_{2} > K_{1}$ ). In return for giving up the upside potential, the investor gets the price of the option with strike price  $K_{2}$ . Three types of bull spreads can be distinguished:

1. Both calls are initially out of the money.
2. One call is initially in the money; the other call is initially out of the money.
3. Both calls are initially in the money.

The most aggressive bull spreads are those of type 1. They cost very little to set up and have a small probability of giving a relatively high payoff  $(= K_{2} - K_{1})$ . As we move from type 1 to type 2 and from type 2 to type 3, the spreads become more conservative.

# Example 12.2

An investor buys for $3 a 3-month European call with a strike price of $30 and sells for $1 a 3-month European call with a strike price of $35. The payoff from this bull spread strategy is $5 if the stock price is above $35, and zero if it is below $30. If the stock price is between $30 and $35, the payoff is the amount by which the stock price exceeds $30. The cost of the strategy is $3 - $1 = 2. So the profit is:

<table><tr><td>Stock price range</td><td>Profit</td></tr><tr><td>ST≤30</td><td>-2</td></tr><tr><td>30 &lt; ST &lt; 35</td><td>ST-32</td></tr><tr><td>ST≥35</td><td>3</td></tr></table>

Bull spreads can also be created by buying a European put with a low strike price and selling a European put with a high strike price, as illustrated in Figure 12.3. Unlike bull spreads created from calls, those created from puts involve a positive up-front cash flow to the investor, but have margin requirements and a payoff that is either negative or zero.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/9c4b31d354c73ee0fe997f07ff6ae5a931ef76b22d37268ce4022e7f010c950a.jpg)
Figure 12.3 Profit from bull spread created using put options.

# Bear Spreads

An investor who enters into a bull spread is hoping that the stock price will increase. By contrast, an investor who enters into a bear spread is hoping that the stock price will decline. Bear spreads can be created by buying a European put with one strike price and selling a European put with another strike price. The strike price of the option purchased is greater than the strike price of the option sold. (This is in contrast to a bull spread, where the strike price of the option purchased is always less than the strike price of the option sold.) In Figure 12.4, the profit from the spread is shown by the solid line. A bear spread created from puts involves an initial cash outflow because the price of the put sold is less than the price of the put purchased. In essence, the investor has bought a put with a certain strike price and chosen to give up some of the profit potential by selling a put with a lower strike price. In return for the profit given up, the investor gets the price of the option sold.

Assume that the strike prices are  $K_{1}$  and  $K_{2}$ , with  $K_{1} < K_{2}$ . Table 12.2 shows the payoff that will be realized from a bear spread in different circumstances. If the stock

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/7af8e44ed596d76e227dc16bcd75d8cb801d2cfbb219b70d26b3e0e8edee7477.jpg)
Figure 12.4 Profit from bear spread created using put options.

Table 12.2 Payoff from a bear spread created with put options.

<table><tr><td>Stock price range</td><td>Payoff from long put option</td><td>Payoff from short put option</td><td>Total payoff</td></tr><tr><td>ST≤K1</td><td>K2-ST</td><td>-(K1-ST)</td><td>K2-K1</td></tr><tr><td>K1＜ST＜K2</td><td>K2-ST</td><td>0</td><td>K2-ST</td></tr><tr><td>ST≥K2</td><td>0</td><td>0</td><td>0</td></tr></table> price is greater than  $K_{2}$ , the payoff is zero. If the stock price is less than  $K_{1}$ , the payoff is  $K_{2} - K_{1}$ . If the stock price is between  $K_{1}$  and  $K_{2}$ , the payoff is  $K_{2} - S_{T}$ . The profit is calculated by subtracting the initial cost from the payoff.


# Example 12.3

An investor buys for $3 a 3-month European put with a strike price of $35 and sells for $1 a 3-month European put with a strike price of $30. The payoff from this bear spread strategy is zero if the stock price is above $35, and $5 if it is below $30. If the stock price is between $30 and $35, the payoff is 35 - S_T. The options cost $3 - $1 = $2 up front. So the profit is:

<table><tr><td>Stock price range</td><td>Profit</td></tr><tr><td>ST≤30</td><td>+3</td></tr><tr><td>30 &lt; ST &lt; 35</td><td>33 - ST</td></tr><tr><td>ST≥35</td><td>-2</td></tr></table>

Like bull spreads, bear spreads limit both the upside profit potential and the downside risk. Bear spreads can be created using calls instead of puts. The investor buys a call with a high strike price and sells a call with a low strike price, as illustrated in Figure 12.5. Bear spreads created with calls involve an initial cash inflow, but have margin requirements and a payoff that is either negative or zero.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/322567ad8b8c1518a69b0f5a691b721aeb8074426d51ba2d96ba6ece2ff0ab5e.jpg)
Figure 12.5 Profit from bear spread created using call options.

Table 12.3 Payoff from a box spread.

<table><tr><td>Stock price range</td><td>Payoff from bull call spread</td><td>Payoff from bear put spread</td><td>Total payoff</td></tr><tr><td>ST≤K1</td><td>0</td><td>K2-K1</td><td>K2-K1</td></tr><tr><td>K1＜ST＜K2</td><td>ST-K1</td><td>K2-ST</td><td>K2-K1</td></tr><tr><td>ST≥K2</td><td>K2-K1</td><td>0</td><td>K2-K1</td></tr></table>

# Box Spreads

A box spread is a combination of a bull call spread with strike prices  $K_{1}$  and  $K_{2}$  and a bear put spread with the same two strike prices. As shown in Table 12.3, the payoff from a box spread is always  $K_{2} - K_{1}$ . The value of a box spread is therefore always the present value of this payoff or  $(K_{2} - K_{1})e^{-rT}$ . If it has a different value there is an arbitrage opportunity. If the market price of the box spread is too low, it is profitable to buy the box. This involves buying a call with strike price  $K_{1}$ , buying a put with strike price  $K_{2}$ , selling a call with strike price  $K_{2}$ , and selling a put with strike price  $K_{1}$ . If the market price of the box spread is too high, it is profitable to sell the box. This involves buying a call with strike price  $K_{2}$ , buying a put with strike price  $K_{1}$ , selling a call with strike price  $K_{1}$ , and selling a put with strike price  $K_{2}$ .

It is important to realize that a box-spread arbitrage only works with European options. Many of the options that trade on exchanges are American. As shown in Business Snapshot 12.1, inexperienced traders who treat American options as European are liable to lose money.

# Butterfly Spreads

A butterfly spread involves positions in options with three different strike prices. It can be created by buying a European call option with a relatively low strike price  $K_{1}$ ,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/2adf159d7c3f4f2706c7a4dea1ba1eb2669d1ee5baaf5b16de6884300a1946f4.jpg)
Figure 12.6 Profit from butterfly spread using call options.

# Business Snapshot 12.1 Losing Money with Box Spreads

Suppose that a stock has a price of $50 and a volatility of 30\%. No dividends are expected and the risk-free rate is 8\%. A trader offers you the chance to sell on the CBOE a 2-month box spread where the strike prices are $55 and $60 for $5.10. Should you do the trade?

The trade certainly sounds attractive. In this case  $K_{1} = 55$ ,  $K_{2} = 60$ , and the payoff is certain to be  $\5$  in 2 months. By selling the box spread for  $\$ 5.10  and investing the funds for 2 months you would have more than enough funds to meet the  $\5$  payoff in 2 months. The theoretical value of the box spread today is  $5 \times e^{-0.08 \times 2 / 12} = \$ 4.93 .

Unfortunately there is a snag. CBOE stock options are American and the $5 payoff from the box spread is calculated on the assumption that the options comprising the box are European. Option prices for this example (calculated using DerivaGem) are shown in the table below. A bull call spread where the strike prices are $55 and $60 costs 0.96 - 0.26 = $0.70. (This is the same for both European and American options because, as we saw in Chapter 11, the price of a European call is the same as the price of an American call when there are no dividends.) A bear put spread with the same strike prices costs 9.46 - 5.23 = $4.23 if the options are European and 10.00 - 5.44 = $4.56 if they are American. The combined value of both spreads if they are created with European options is 0.70 + 4.23 = $4.93. This is the theoretical box spread price calculated above. The combined value of buying both spreads if they are American is 0.70 + 4.56 = $5.26. Selling a box spread created with American options for $5.10 would not be a good trade. You would realize this almost immediately as the trade involves selling a $60 strike put and this would be exercised against you almost as soon as you sold it!

<table><tr><td>Option type</td><td>Strike price</td><td>European option price</td><td>American option price</td></tr><tr><td>Call</td><td>60</td><td>0.26</td><td>0.26</td></tr><tr><td>Call</td><td>55</td><td>0.96</td><td>0.96</td></tr><tr><td>Put</td><td>60</td><td>9.46</td><td>10.00</td></tr><tr><td>Put</td><td>55</td><td>5.23</td><td>5.44</td></tr></table>

Table 12.4 Payoff from a butterfly spread.

<table><tr><td>Stock price range</td><td>Payoff from first long call</td><td>Payoff from second long call</td><td>Payoff from short calls</td><td>Total payoff*</td></tr><tr><td>ST≤K1</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>K1＜ST≤K2</td><td>ST-K1</td><td>0</td><td>0</td><td>ST-K1</td></tr><tr><td>K2＜ST＜K3</td><td>ST-K1</td><td>0</td><td>-2(ST-K2)</td><td>K3-ST</td></tr><tr><td>ST≥K3</td><td>ST-K1</td><td>ST-K3</td><td>-2(ST-K2)</td><td>0</td></tr></table>

*These payoffs are calculated using the relationship  $K_{2} = 0.5(K_{1} + K_{3})$ .

buying a European call option with a relatively high strike price  $K_{3}$ , and selling two European call options with a strike price  $K_{2}$  that is halfway between  $K_{1}$  and  $K_{3}$ . Generally,  $K_{2}$  is close to the current stock price. The pattern of profits from the strategy is shown in Figure 12.6. A butterfly spread leads to a profit if the stock price stays close to  $K_{2}$ , but gives rise to a small loss if there is a significant stock price move in either direction. It is therefore an appropriate strategy for an investor who feels that large stock price moves are unlikely. The strategy requires a small investment initially. The payoff from a butterfly spread is shown in Table 12.4.

Suppose that a certain stock is currently worth 61. Consider an investor who feels that a significant price move in the next 6 months is unlikely. Suppose that the market prices of 6-month European calls are as follows:

<table><tr><td>Strike price ($)</td><td>Call price ($)</td></tr><tr><td>55</td><td>10</td></tr><tr><td>60</td><td>7</td></tr><tr><td>65</td><td>5</td></tr></table>

The investor could create a butterfly spread by buying one call with a $55 strike price, buying one call with a $65 strike price, and selling two calls with a $60 strike price. It costs $10 + $5 - (2 × $7) = $1 to create the spread. If the stock price in 6 months is greater than $65 or less than $55, the total payoff is zero, and the investor incurs a net loss of $1. If the stock price is between $56 and $64, a profit is made. The maximum profit, $4, occurs when the stock price in 6 months is $60.

Butterfly spreads can be created using put options. The investor buys two European puts, one with a low strike price and one with a high strike price, and sells two European puts with an intermediate strike price, as illustrated in Figure 12.7. The butterfly spread in the example considered above would be created by buying one put with a strike price of  $55, another with a strike price of$ 65, and selling two puts with a strike price of 60. The use of put options results in exactly the same spread as the use of call options. Put-call parity can be used to show that the initial investment is the same in both cases.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/30b6c537649ab4e90612a5b4e955b09c93357ec72775fac4584dcae819aa86f1.jpg)
Figure 12.7 Profit from butterfly spread using put options.

A butterfly spread can be sold or shorted by following the reverse strategy. Options are sold with strike prices of  $K_{1}$  and  $K_{3}$ , and two options with the middle strike price  $K_{2}$  are purchased. This strategy produces a modest profit if there is a significant movement in the stock price.

# Calendar Spreads

Up to now we have assumed that the options used to create a spread all expire at the same time. We now move on to consider calendar spreads in which the options have the same strike price and different expiration dates.

A calendar spread can be created by selling a European call option with a certain strike price and buying a longer-maturity European call option with the same strike price. The longer the maturity of an option, the more expensive it usually is. A calendar spread therefore usually requires an initial investment. Profit diagrams for calendar spreads are usually produced so that they show the profit when the short-maturity option expires on the assumption that the long-maturity option is closed out at that time. The profit pattern for a calendar spread produced from call options is shown in Figure 12.8. The pattern is similar to the profit from the butterfly spread in Figure 12.6. The investor makes a profit if the stock price at the expiration of the short-maturity option is close to the strike price of the short-maturity option. However, a loss is incurred when the stock price is significantly above or significantly below this strike price.

To understand the profit pattern from a calendar spread, first consider what happens if the stock price is very low when the short-maturity option expires. The short-maturity option is worthless and the value of the long-maturity option is close to zero. The investor therefore incurs a loss that is close to the cost of setting up the spread initially. Consider next what happens if the stock price,  $S_{T}$ , is very high when the short-maturity option expires. The short-maturity option costs the investor  $S_{T} - K$ , and the long-maturity option is worth close to  $S_{T} - K$ , where  $K$  is the strike price of the options. Again, the investor makes a net loss that is close to the cost of setting up the spread initially. If  $S_{T}$  is close to  $K$ , the short-maturity option costs the investor either a small amount or nothing at all. However, the long-maturity option is still quite valuable. In this case a net profit is made.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/2822e985069143cdf4143a2ec7321915dd0774317fbf1d97d3422a0f15d259ca.jpg)
Figure 12.8 Profit from calendar spread created using two call options, calculated at the time when the short-maturity call option expires.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/e5297d6d9d690ba536f8e61c5178772b138f2f1992129c269446b436fe1f4e06.jpg)
Figure 12.9 Profit from calendar spread created using two put options, calculated at the time when the short-maturity put option expires.


In a neutral calendar spread, a strike price close to the current stock price is chosen. A bullish calendar spread involves a higher strike price, whereas a bearish calendar spread involves a lower strike price.

Calendar spreads can be created with put options as well as call options. The investor buys a long-maturity put option and sells a short-maturity put option. As shown in Figure 12.9, the profit pattern is similar to that obtained from using calls.

A reverse calendar spread is the opposite to that in Figures 12.8 and 12.9. The investor buys a short-maturity option and sells a long-maturity option. A small profit arises if the stock price at the expiration of the short-maturity option is well above or well below the strike price of the short-maturity option. However, a loss results if it is close to the strike price.

# Diagonal Spreads

Bull, bear, and calendar spreads can all be created from a long position in one call and a short position in another call. In the case of bull and bear spreads, the calls have different strike prices and the same expiration date. In the case of calendar spreads, the calls have the same strike price and different expiration dates.

In a diagonal spread both the expiration date and the strike price of the calls are different. This increases the range of profit patterns that are possible.

# 12.4 COMBINATIONS

A combination is an option trading strategy that involves taking a position in both calls and puts on the same stock. We will consider straddles, strips, straps, and strangles.

# Straddle

One popular combination is a straddle, which involves buying a European call and put with the same strike price and expiration date. The profit pattern is shown in Figure 12.10. The strike price is denoted by  $K$ . If the stock price is close to this strike price at expiration of the options, the straddle leads to a loss. However, if there is a sufficiently large move in either direction, a significant profit will result. The payoff from a straddle is calculated in Table 12.5.

A straddle is appropriate when an investor is expecting a large move in a stock price but does not know in which direction the move will be. Consider an investor who feels that the price of a certain stock, currently valued at $69 by the market, will move significantly in the next 3 months. The investor could create a straddle by buying both a put and a call with a strike price of $70 and an expiration date in 3 months. Suppose that the call costs $4 and the put costs $3. If the stock price stays at $69, it is easy to see that the strategy costs the investor $6. (An up-front investment of $7 is required, the call expires worthless, and the put expires worth $1.) If the stock price moves to $70, a loss of $7 is experienced. (This is the worst that can happen.) However, if the stock price jumps up to $90, a profit of $13 is made; if the stock moves down to $55, a profit of $8 is made; and so on. As discussed in Business Snapshot 12.2 an investor should carefully consider whether the jump that he or she anticipates is already reflected in option prices before putting on a straddle trade.

The straddle in Figure 12.10 is sometimes referred to as a bottom straddle or straddle purchase. A top straddle or straddle write is the reverse position. It is created by selling a call and a put with the same exercise price and expiration date. It is a highly risky strategy.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/a3c594fba5cdf87ef3a7fb8cfa0abc221b9bb3bb6f53228909308b5e2d61512a.jpg)
Figure 12.10 Profit from a straddle.

Table 12.5 Payoff from a straddle.

<table><tr><td>Range of stock price</td><td>Payoff from call</td><td>Payoff from put</td><td>Total payoff</td></tr><tr><td>ST≤K</td><td>0</td><td>K-ST</td><td>K-ST</td></tr><tr><td>ST&gt;K</td><td>ST-K</td><td>0</td><td>ST-K</td></tr></table>

# Business Snapshot 12.2 How to Make Money from Trading Straddles

Suppose that a big move is expected in a company's stock price because there is a takeover bid for the company or the outcome of a major lawsuit involving the company is about to be announced. Should you trade a straddle?

A straddle seems a natural trading strategy in this case. However, if your view of the company's situation is much the same as that of other market participants, this view will be reflected in the prices of options. Options on the stock will be significantly more expensive than options on a similar stock for which no jump is expected. The V-shaped profit pattern from the straddle in Figure 12.10 will have moved downward, so that a bigger move in the stock price is necessary for you to make a profit.

For a straddle to be an effective strategy, you must believe that there are likely to be big movements in the stock price and these beliefs must be different from those of most other investors. Market prices incorporate the beliefs of market participants. To make money from any investment strategy, you must take a view that is different from most of the rest of the market—and you must be right!

If the stock price on the expiration date is close to the strike price, a profit results. However, the loss arising from a large move is unlimited.

# Strips and Straps

A strip consists of a long position in one European call and two European puts with the same strike price and expiration date. A strap consists of a long position in two European calls and one European put with the same strike price and expiration date. The profit patterns from strips and straps are shown in Figure 12.11. In a strip the investor is betting that there will be a big stock price move and considers a decrease in the stock price to be more likely than an increase. In a strap the investor is also betting that there will be a big stock price move. However, in this case, an increase in the stock price is considered to be more likely than a decrease.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/2dbf9fbd11eea19f107eb2b685a5bdf48967a55797545cdf01d578411e47726c.jpg)
Figure 12.11 Profit from a strip and a strap.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/7ddd0f03850d923f409a0a2a4e1bb588104ea3c9853785b7c0ac4cc4f60318d7.jpg)

# Strangles

In a strangle, sometimes called a bottom vertical combination, an investor buys a European put and a European call with the same expiration date and different strike prices. The profit pattern is shown in Figure 12.12. The call strike price,  $K_{2}$ , is higher than the put strike price,  $K_{1}$ . The payoff function for a strangle is calculated in Table 12.6.

A strangle is a similar strategy to a straddle. The investor is betting that there will be a large price move, but is uncertain whether it will be an increase or a decrease. Comparing Figures 12.12 and 12.10, we see that the stock price has to move farther in a strangle than in a straddle for the investor to make a profit. However, the downside risk if the stock price ends up at a central value is less with a strangle.

The profit pattern obtained with a strangle depends on how close together the strike prices are. The farther they are apart, the less the downside risk and the farther the stock price has to move for a profit to be realized.

The sale of a strangle is sometimes referred to as a top vertical combination. It can be appropriate for an investor who feels that large stock price moves are unlikely. However, as with sale of a straddle, it is a risky strategy involving unlimited potential loss to the investor.

# 12.5 OTHER PAYOFFS

This chapter has demonstrated just a few of the ways in which options can be used to produce an interesting relationship between profit and stock price. If European options

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/8d466399ca65dfeae1e7f11f8015587a744bf4a628043e7547d40271278e1c41.jpg)
Figure 12.12 Profit from a strangle.

Table 12.6 Payoff from a strangle.

<table><tr><td>Range of stock price</td><td>Payoff from call</td><td>Payoff from put</td><td>Total payoff</td></tr><tr><td>ST≤K1</td><td>0</td><td>K1−ST</td><td>K1−ST</td></tr><tr><td>K1&lt;ST&lt;2</td><td>0</td><td>0</td><td>0</td></tr><tr><td>ST≥K2</td><td>ST−K2</td><td>0</td><td>ST−K2</td></tr></table> expiring at time  $T$  were available with every single possible strike price, any payoff function at time  $T$  could in theory be obtained. The easiest illustration of this involves butterfly spreads. Recall that a butterfly spread is created by buying options with strike prices  $K_{1}$  and  $K_{3}$  and selling two options with strike price  $K_{2}$ , where  $K_{1} < K_{2} < K_{3}$  and  $K_{3} - K_{2} = K_{2} - K_{1}$ . Figure 12.13 shows the payoff from a butterfly spread. The pattern could be described as a spike. As  $K_{1}$  and  $K_{3}$  move closer together, the spike becomes smaller. Through the judicious combination of a large number of very small spikes, any payoff function can in theory be approximated as accurately as desired.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/17ae70197911d4187458dc0d9122f335c8807dcb3e63b219c620d0b330f8fc4f.jpg)
Figure 12.13 "Spike payoff" from a butterfly spread that can be used as a building block to create other payoffs.


# SUMMARY

Principal-protected notes can be created from a zero-coupon bond and a European call option. They are attractive to some investors because the issuer of the product guarantees that the purchaser will receive his or her principal back regardless of the performance of the asset underlying the option.

A number of common trading strategies involve a single option and the underlying stock. For example, writing a covered call involves buying the stock and selling a call option on the stock; a protective put involves buying a put option and buying the stock. The former is similar to selling a put option; the latter is similar to buying a call option.

Spreads involve either taking a position in two or more calls or taking a position in two or more puts. A bull spread can be created by buying a call (put) with a low strike price and selling a call (put) with a high strike price. A bear spread can be created by buying a put (call) with a high strike price and selling a put (call) with a low strike price. A butterfly spread involves buying calls (puts) with a low and high strike price and selling two calls (puts) with some intermediate strike price. A calendar spread involves selling a call (put) with a short time to expiration and buying a call (put) with a longer time to expiration. A diagonal spread involves a long position in one option and a short position in another option such that both the strike price and the expiration date are different.

Combinations involve taking a position in both calls and puts on the same stock. A straddle combination involves taking a long position in a call and a long position in a put with the same strike price and expiration date. A strip consists of a long position in one call and two puts with the same strike price and expiration date. A strap consists of a long position in two calls and one put with the same strike price and expiration date. A strangle consists of a long position in a call and a put with different strike prices and the same expiration date. There are many other ways in which options can be used to produce interesting payoffs. It is not surprising that option trading has steadily increased in popularity and continues to fascinate investors.


# FURTHER READING

Bharadwaj, A. and J. B. Wiggins. "Box Spread and Put-Call Parity Tests for the S&P Index LEAPS Markets," Journal of Derivatives, 8, 4 (Summer 2001): 62-71.
Chaput, J. S., and L. H. Ederington, "Option Spread and Combination Trading," Journal of Derivatives, 10, 4 (Summer 2003): 70-88.
McMillan, L. G. Options as a Strategic Investment, 5th edn. Upper Saddle River, NJ: Prentice Hall, 2012.
Rendleman, R. J. "Covered Call Writing from an Expected Utility Perspective," Journal of Derivatives, 8, 3 (Spring 2001): 63-75.
Ronn, A. G. and E. I. Ronn. "The Box-Spread Arbitrage Conditions," Review of Financial Studies, 2, 1 (1989): 91-108.

# Short Concept Questions

12.1. What is the attraction of principal-protected notes to investors?
12.2. What is meant by a protective put? What position in call options is equivalent to a protective put?
12.3. Explain two ways in which a bear spread can be created.
12.4. When is it appropriate for an investor to purchase a butterfly spread?
12.5. What trading strategy creates a reverse calendar spread?
12.6. What is the difference between a strangle and a straddle?

# Practice Questions

12.7. Call options on a stock are available with strike prices of $15, $17½, and $20, and expiration dates in 3 months. Their prices are $4, $2, and $½, respectively. Explain how the options can be used to create a butterfly spread. Construct a table showing how profit varies with stock price for the butterfly spread.
 12.8. A call option with a strike price of $50 costs $2. A put option with a strike price of $45 costs $3. Explain how a strangle can be created from these two options. What is the pattern of profits from the strangle?
12.9. Use put-call parity to relate the initial investment for a bull spread created using calls to the initial investment for a bull spread created using puts.
12.10. Explain how an aggressive bear spread can be created using put options.
 12.11. Suppose that put options on a stock with strike prices $30 and $35 cost $4 and $7, respectively. How can the options be used to create (a) a bull spread and (b) a bear spread? Construct a table that shows the profit and payoff for both spreads.
12.12. Use put-call parity to show that the cost of a butterfly spread created from European puts is identical to the cost of a butterfly spread created from European calls.

12.13. A call with a strike price of $60 costs $6. A put with the same strike price and expiration date costs 4. Construct a table that shows the profit from a straddle. For what range of stock prices would the straddle lead to a loss?

12.14. Construct a table showing the payoff from a bull spread when puts with strike prices  $K_{1}$  and  $K_{2}$ , with  $K_{2} > K_{1}$ , are used.

12.15. An investor believes that there will be a big jump in a stock price, but is uncertain as to the direction. Identify six different strategies the investor can follow and explain the differences among them.

12.16. How can a forward contract on a stock with a particular delivery price and delivery date be created from options?

12.17. "A box spread comprises four options. Two can be combined to create a long forward position and two to create a short forward position." Explain this statement.

12.18. What is the result if the strike price of the put is higher than the strike price of the call in a strangle?

12.19. A foreign currency is currently worth  $0.64. A 1-year butterfly spread is set up using European call options with strike prices of$ 0.60, $0.65, and $0.70. The risk-free interest rates in the United States and the foreign country are 5\% and 4\% respectively, and the volatility of the exchange rate is 15\%. Use the DerivaGem software to calculate the cost of setting up the butterfly spread position. Show that the cost is the same if European put options are used instead of European call options.

12.20. An index provides a dividend yield of  $1\%$  and has a volatility of  $20\%$ . The risk-free interest rate is  $4\%$ . How long does a principal-protected note, created as in Example 12.1, have to last for it to be profitable for the bank issuing it? Use DerivaGem.

12.21. Explain the statement at the end of Section 12.1 that, when dividends are zero, the principal-protected note cannot be profitable for the bank no matter how long it lasts.

12.22. A trader creates a bear spread by selling a 6-month put option with a $25 strike price for $2.15 and buying a 6-month put option with a $29 strike price for $4.75. What is the initial investment? What is the total payoff (excluding the initial investment) when the stock price in 6 months is (a) $23, (b) $28, and (c) 33.

12.23. A trader sells a strangle by selling a 6-month European call option with a strike price of $50 for $3 and selling a 6-month European put option with a strike price of $40 for $4. For what range of prices of the underlying asset in 6 months does the trader make a profit?

12.24. Three put options on a stock have the same expiration date and strike prices of $55, $60, and $65. The market prices are $3, $5, and $8, respectively. Explain how a butterfly spread can be created. Construct a table showing the profit from the strategy. For what range of stock prices would the butterfly spread lead to a loss?

12.25. A diagonal spread is created by buying a call with strike price  $K_{2}$  and exercise date  $T_{2}$  and selling a call with strike price  $K_{1}$  and exercise date  $T_{1}$ , where  $T_{2} > T_{1}$ . Draw a diagram showing the profit from the spread at time  $T_{1}$  when (a)  $K_{2} > K_{1}$  and (b)  $K_{2} < K_{1}$ .

12.26. Draw a diagram showing the variation of an investor's profit and loss with the terminal stock price for a portfolio consisting of :

(a) One share and a short position in one call option
(b) Two shares and a short position in one call option

(c) One share and a short position in two call options
(d) One share and a short position in four call options.

In each case, assume that the call option has an exercise price equal to the current stock price.

12.27. Suppose that the price of a non-dividend-paying stock is 32, its volatility is 30\%, and the risk-free rate for all maturities is 5\% per annum. Use DerivaGem to calculate the cost of setting up the following positions:

(a) A bull spread using European call options with strike prices of $25 and $30 and a maturity of 6 months
(b) A bear spread using European put options with strike prices of $25 and $30 and a maturity of 6 months
(c) A butterfly spread using European call options with strike prices of $25, $30, and 35 and a maturity of 1 year
(d) A butterfly spread using European put options with strike prices of $25, $30, and 35 and a maturity of 1 year
(e) A straddle using options with a strike price of 30 and a 6-month maturity
 (f) A strangle using options with strike prices of $25 and $35 and a 6-month maturity.

In each case provide a table showing the relationship between profit and final stock price. Ignore the impact of discounting.

A useful and very popular technique for pricing an option involves constructing a binomial tree. This is a diagram representing different possible paths that might be followed by the stock price over the life of an option. The underlying assumption is that the stock price follows a random walk. In each time step, it has a certain probability of moving up by a certain percentage amount and a certain probability of moving down by a certain percentage amount. In the limit, as the time step becomes smaller, this model is the same as the Black-Scholes-Merton model we will be discussing in Chapter 15. Indeed, in the appendix to this chapter, we show that the European option price given by the binomial tree converges to the Black-Scholes-Merton price as the time step becomes smaller.

The material in this chapter is important for a number of reasons. First, it explains the nature of the no-arbitrage arguments that are used for valuing options. Second, it explains the binomial tree numerical procedure that is widely used for valuing American options and other derivatives. Third, it introduces a very important principle known as risk-neutral valuation.

The general approach to constructing trees in this chapter is the one used in an important paper published by Cox, Ross, and Rubinstein in 1979. More details on numerical procedures using binomial trees are given in Chapter 21.


---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Basic Foundations for Derivative Pricing
linter-yaml-title-alias: Basic Foundations for Derivative Pricing
---

# Basic Foundations for Derivative Pricing

# Boundaries, Limits, and Conditions on Option Prices

Before one can begin to examine models for option pricing, it is necessary to understand certain fundamental principles that govern the prices of options. These option principles do not give specific option prices except in a very limited sense; rather, they define the bounds within which option prices must lie. In addition, they define relationships among different options, such as those differing by exercise price and those differing by time to expiration. Some of these principles also define relationships between the prices of puts and calls that have the same exercise prices and expiration dates. Finally, some option principles define relationships between options that can be exercised before expiration versus those that can be exercised only at expiration.

An option is a derivative that grants the buyer, who is called the long, the right to either buy or sell the underlying at a fixed price either at or before a specific date. The buyer is also said to be the owner or holder of the option because they own and hold the right to buy or sell the underlying. This right is granted by the seller, who is called the short or the writer. We stated that an option provides either the right to buy the underlying or the right to sell. Be sure you understand that it is one or the other. The right to buy is referred to as a call, and the right to sell is referred to as a put. The buyer and the seller decide on whether the option will be a call or a put.

The definition of an option specifies that the holder can either buy the underlying if a call, or sell the underlying if a put, at a fixed price. This fixed price is called the exercise price and sometimes the strike price, strike, or striking price.

The option has an expiration date, beyond which the right to buy or sell the underlying no longer exists. When the holder of the option decides to pay the exercise price and acquire the underlying if a call, or deliver the underlying and receive the exercise price if a put, the buyer is said to be exercising the option. Note in the definition of an option that we specified that the right to buy or sell exists either at the expiration date or before the expiration. In other words, some options can be exercised only at the expiration, and some can be exercised any time up to the expiration. The former is called a European or European-style option, and the latter is called an American or American-style option. These terms reflected the places where these types of options traded in the early 1900s. Today, both types of options trade on both continents and around the world.

So, let us now begin our examination of the basic boundaries, limits, and conditions on option prices. These boundaries are like the ground rules, akin to the edges of a sports playing field and the regulations that govern the game. They also enable us to build toward understanding how options are priced.

# 2.1 SETUP, DEFINITIONS, AND ARBITRAGE

We position ourselves at time  $t$ , and let  $S_{t}$  be the asset price today,  $T$  be the expiration of the derivative,  $S_{T}$  be the asset price at expiration,  $X$  be the exercise price,  $r_{c}$  be the annualized, continuously compounded risk-free rate,  $\sigma$  be the annualized volatility, and  $\tau = T - t$  be the time to expiration. Let  $c_{t}$  be the price of a European call at time  $t$  and  $p_{t}$  be the price of a European put at time  $t$ . Let  $C_{t}$  be the price of an American call at time  $t$  and  $P_{t}$  be the price of an American put at time  $t$ . Other notation will be introduced as needed. The asset is assumed to make no payments such as dividends that might be paid if the asset were a stock, but we shall relax that assumption at appropriate points. The results demonstrated herein are largely intuitive, but formal proofs and discussions are covered in Stoll (1969), Merton (1973a, 1973b), Smith (1976), Cox and Rubinstein (1985), and Chance and Brooks (2016).

Before starting, let us introduce the concept of arbitrage. Let us start with a definition.

Arbitrage is a market condition in which two assets or combinations of assets that produce the same results at a future date sell for different prices prior to or at that future date. When an arbitrage condition exists, it creates an opportunity for a person to buy the lower-priced asset or combination of assets and sell the higher-priced asset or combination of assets, thereby netting a positive cash flow at the initiation of the transaction, with the long and short positions offsetting and eliminating the risk, resulting in no negative potential cash flow at any future date. As a result, an arbitrage generates money at the start and has no obligation to pay any money later. It is, thus, free money.

Virtually the entire corpus of derivative pricing theory assumes that arbitrage opportunities do not exist. If they did, we assume that such opportunities would be exploited. The buying of the lower-priced asset or combination of assets and the selling of the higher-priced asset or combination of assets will result in an increase in the cost of the former and a decrease in the cost of the latter until the prices converge.

Let us take a look at a simple example of arbitrage. Suppose someone offers you an opportunity to bet a certain amount of money on a game in which the outcome is based on movements in the S&P 500. Specifically, if the S&P 500 goes up the next day, you receive 10. If it goes down, you receive 5. Let us assume it costs 6 to play the game. Now, consider a second game that pays 20 if the S&P 500 goes up and 10 if it goes down, but this game costs 11 to play. It should appear that either the first game is overpriced or the second game is underpriced. If someone else is offering the second game to the public for 11, you too can offer it for 11. But if someone would pay you 11, why not just cut the cost and the payoffs in half, thereby offering the second game for 5.50 with payoffs of 10 for heads and 5 for tails. So, you offer the first game for 6 and buy into the second game for 5.50. If the market goes up, you collect 20 on the second game and pay out 20 on the first. If the market goes down, you collect 10 on the second game and pay out 10 on the first. The end result is completely offset, so you have a hedged position and yet you collect  $6.00 - 5.50 = 0.50$  at the start. That is your money to keep.

Of course, your instincts say that this could not happen. Someone would notice that the two games are identical and yet are selling for different prices. But in the financial markets, there are millions of prices quoted at any one time. Almost none of them will present arbitrage opportunities, but on occasion a few will.

When an arbitrage opportunity presents itself, the person taking advantage of it, called an arbitrageur or sometimes just an  $\text{arb}$ , will buy the cheaper opportunity and sell the more expensive one, pushing up the price of the former and driving down the price of the latter until the two prices are equal.<sup>3</sup>

In the financial markets, arbitrage opportunities are rare, but they do exist very briefly. By assuming that they are quickly exploited, we invoke a very powerful statement about human behavior that requires few, if any, restrictive assumptions. We simply assume that people will take money that is offered if there is no risk involved. We do not have to know whether they would take the risk to make more money. Here there is no risk, and yet there is money for the taking. We are not required to make any strong assumptions about human behavior to know that people would act on such opportunities.

So, throughout this book, we shall assume that market prices equal the prices that are implied by models that assume that all arbitrage opportunities have been exploited.

Before exploring boundaries, limits, and other conditions, we introduce selected terminology. More detailed explanations will be given later. We now present moneyness terminology that is independent of whether you buy or sell the option. Let  $S_{t}$  be the price of the underlying at time  $t$  and  $X$  be the exercise price of the call option, then, when  $S_{t} > X$ , we say that the call is in-the-money and when  $S_{t} < X$ , we say that the call is out-of-the-money. When  $S_{t} = X$ , the call is said to be at-the-money. Now suppose  $X$  is the exercise price of the put option, then, when  $S_{t} < X$ , we say that the put is in-the-money and when  $S_{t} > X$ , we say that the put is out-of-the-money. When  $S_{t} = X$ , the put is said to be at-the-money.

# 2.2 ABSOLUTE MINIMUM AND MAXIMUM VALUES

By absolute minimum and maximum values, we wish to define bounds within which the option prices must lie. We do not rule out the possibility that the actual option prices might have a higher minimum or lower maximum value that we can establish later.

The first absolute minimum value that we can easily specify is that an option cannot have a negative value. One can never be forced to exercise an option. Hence, it can never be worth less than zero. This result is true for both calls and puts as well as for American and European options,

$$
c _ {t} \geq 0 \text {a n d} C _ {t} \geq 0 \tag {2.1}
$$

$$
p _ {t} \geq 0 \text {a n d} P _ {t} \geq 0.
$$

Now, let us think about the maximum values. Both the European call and the American call cannot cost more than the value of the underlying asset. Either call option allows the holder the right to buy the asset so the holder of the option would not pay more than the cost of the asset to acquire the right to buy the asset. A weaker statement might place this upper bound at infinity, because that is the upper bound on the asset price, but there is no reason to impose such an extreme upper bound as the current value of the asset is more precise.

A put reaches its maximum value when the asset is worthless. A European put then is worth the present value of the exercise price as its holder has the right to exercise the option at expiration and claim  $X$  dollars at that time. Thus, its current worth is the present value of  $X$ . For an American put, however, there is no reason to wait as it can be immediately exercised for a cash flow of  $X$ .

The maximum values of calls and puts are stated formally as

$$
c _ {t} \leq S _ {t} \quad \text {a n d} \quad C _ {t} \leq S _ {t}
$$

$$
p _ {t} \leq X e ^ {- r _ {c} \tau} \quad \text {a n d} \quad P _ {t} \leq X _ {t}. \tag {2.2}
$$

Suppose you call your broker for a quote on a one-year, at-the-money ( $S_{t} = X = 100$ ), European call and to your surprise the broker quotes you 101 per share. As this is a clear violation of the upper boundary condition, there is an arbitrage profit available. The quoted call price is too high; hence, you would sell the call and buy the stock for a net cash flow of 1 (= 101 - 100). If the option expires out-of-the-money, sell the stock and receive nonnegative proceeds ( $S_{t} \geq 0$ ). If the option expires in-the-money, then when the option is exercised by the buyer, you receive the exercise price ( $X = 100$ ) and deliver the stock you previously purchased. Thus, in all future states of the world, there is no possibility of having to pay money. This is clearly an attractive transaction that will rarely, if ever, be available.

<table><tr><td>Instrument</td><td>Now Time (t)</td><td>Expiration (time T, out-of-the-money S_T &lt; X)</td><td>Expiration (time T, in-the-money X &lt; S_T)</td></tr><tr><td>Short the call</td><td>101</td><td>0</td><td>-S_T + X</td></tr><tr><td>Long the stock</td><td>-100</td><td>S_T</td><td>S_T</td></tr><tr><td>Net proceeds</td><td>1</td><td>S_T</td><td>X</td></tr></table>

# 2.3 THE VALUE OF AN AMERICAN OPTION RELATIVE TO THE VALUE OF A EUROPEAN OPTION

Because an American option permits the holder to exercise the option at expiration as well as any time prior to expiration, its value must be at least as great as that of the corresponding European option:

$$
C _ {t} \geq c _ {t} \quad \text {a n d} \quad P _ {t} \geq p _ {t}. \tag {2.3}
$$

# 2.4 THE VALUE OF AN OPTION AT EXPIRATION

The value of an option when it is exercised is called the exercise value. At expiration, both a European and an American call are worth their exercise values, which is the same for both, because the American call has no time remaining and, therefore, no benefit to exercising it early,

$$
c _ {T} = C _ {T} = \max  (0, S _ {T} - X). \tag {2.4}
$$

To exercise the option, the holder will pay  $X$  and will receive an asset worth  $S_T$ . Thus, if  $S_T > X$  and an instant before expiration the call is selling for less than  $S_T - X$ , it can be purchased and exercised, resulting in an immediate gain to the holder of  $S_T - X$  less the price of the call. The ability to earn this risk-free profit will induce trading of this sort that

will result in the call price increasing in value until it is equal to  $S_T - X$ . If  $S_T \leq X$ , the option should not be exercised and, hence, it expires with no value.

Similarly, at expiration both a European and an American put are worth the exercise value,

$$
p _ {T} = P _ {T} = \max  (0, X - S _ {T}). \tag {2.5}
$$

To exercise the put, the holder will need to acquire the underlying, which can be done an instant before expiration either by buying it in the open market at  $S_{T}$  or by simply short selling it. If the put holder exercises the put, the holder can purchase shares at  $S_{T}$  and subsequently sell them at  $X$ . Thus, if  $S_{T} < X$  and the put is selling for less than  $X - S_{T}$ , it can be purchased and exercised resulting in an immediate gain to the holder of  $X - S_{T}$  less the price of the put. The ability to earn this risk-free profit will induce trading of this sort that will result in the put price increasing in value until it is equal to  $X - S_{T}$ . If  $S_{T} > X$ , the option should not be exercised and, hence, it expires with no value.<sup>5</sup>

Alternatively, suppose the stock is trading at 90 and a 100-strike put is trading for 11 on the expiration date. In this case, the market put price is too high relative to the exercise value (10). The arbitrageur should sell the put receiving 11. The put buyer will exercise this option. As the seller, the arbitrageur will have to buy the stock at the strike price of 100 and subsequently sell it in the market at 90 for a loss of 10. The proceeds from selling the put more than offset this loss, netting 1.

# 2.5 THE LOWER BOUNDS OF EUROPEAN AND AMERICAN OPTIONS AND THE OPTIMALITY OF EARLY EXERCISE

We previously identified zero as the minimum values of European and American options. It is possible, however, to establish higher minima. By establishing a minimum price that is higher than zero, we are able to place more restrictive limits on the prices of options, which enables us to narrow the range over which the option price can exist.

# 2.5.1 The Lower Bound of a Call

For an American call, the lower bound can be initially stated as the option's exercise value. At any time  $t < T$ ,

$$
C _ {t} \geq \max  (0, S _ {t} - X). \tag {2.6}
$$

If  $S_{t} > X$  and the call is selling for less than  $S_{t} - X$ , it can be purchased and exercised resulting in an immediate gain to the holder of  $S_{t} - X$  less the price of the call. The ability to earn this risk-free profit will induce trading of this sort that will result in the call price increasing in value until it is worth at least  $S_{t} - X$ . In the other case,  $S_{t} < X$ , the option should not be exercised and, hence, we can say only that its minimum value is zero.

For a European call, such a statement is not possible because it cannot be exercised immediately. It is possible, however, to make a stronger statement, via simple arbitrage arguments. Suppose we construct two portfolios, A and B, with portfolio A consisting of a long position in a European call, and a zero-coupon bond with face value equal to the exercise price, and current value equal to the present value of the exercise price. Portfolio B consists of a unit of the asset. Table 2.1 shows the current values of these portfolios and their values at expiration.

TABLE 2.1 Establishing a Lower Bound for a European Call  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Current Value</td><td colspan="2">Value at Expiration</td></tr><tr><td>ST≤X</td><td>X&lt;ST</td></tr><tr><td>Portfolio A</td><td></td><td></td><td></td></tr><tr><td>European call</td><td>ct</td><td>0</td><td>ST-X</td></tr><tr><td>Zero-coupon bond</td><td>Xe-rcτ</td><td>X</td><td>X</td></tr><tr><td>Total</td><td>ct+Xe-rcτ</td><td>X</td><td>ST</td></tr><tr><td>Portfolio B</td><td></td><td></td><td></td></tr><tr><td>Asset</td><td>St</td><td>ST</td><td>ST</td></tr></table>

Note that Portfolio A performs as well as Portfolio B when  $S_T > X$  (because the  $X$ s cancel) and performs better when  $S_T \leq X$ . Thus, portfolio A is said to dominate Portfolio B. Consequently, the current value of A must be at least as great as the current value of B, which can be stated as  $c_t + Xe^{-r_c\tau} \geq S_t$ . Rearranging, we can write this statement as  $c_t \geq S_t - Xe^{-r_c\tau}$ . For the case where  $c_t < S_t - Xe^{-r_c\tau}$  and  $S_t < Xe^{-r_c\tau}$ , however, it makes little sense to state that a call price must exceed some negative value for we already know that its absolute minimum is zero. Consequently, we can state formally that

$$
c _ {t} \geq \max  \left(0, S _ {t} - X e ^ {- r _ {c} \tau}\right). \tag {2.7}
$$

For an American call, we previously noted that  $C_t \geq \max(0, S_t - X)$ . It is obvious, however, that  $S_t - Xe^{-r_c\tau}$  is greater than  $S_t - X$  except at the expiration where  $\tau = 0$ . Combined with the fact that the American call price is at least as great as the European call price, we can then state that the lower bound for the European call must also hold for the American call,

$$
C _ {t} \geq \max  \left(0, S _ {t} - X e ^ {- r _ {c} \tau}\right). \tag {2.8}
$$

To better understand how arbitrage activity influences option prices, consider the following situation: Suppose the stock price is  $S_{t} = 102$ , the strike price is  $X = 100$ , the continuously compounded risk-free interest rate is  $r_{c} = 5.01\%$ , the time to maturity  $\tau$  is 0.608 based on its expiration in 222 days (222/365 = 0.608), and the quoted American call price is 4.95. How would an arbitrageur trade? The first step is to assess whether there is a boundary violation. Note in this case  $S_{t} - Xe^{-r_{c}\tau} = 102 - 100e^{-0.0501(222 / 365)} = 5.0$ . Thus, the quoted call price is 0.05 below the lower boundary. The arbitrageur seeks to pocket this 0.05 through a series of current trades. Note in this case  $S_{t} - Xe^{-r_{c}\tau} - C_{t} = 0.05$  and the trading strategy is embedded in this expression. Notice that you can generate this result by transactions that generate these specific cash flows; namely, short sell the stock at  $S_{t} = 102$ , buy a zero-coupon bond at  $Xe^{-r_{c}\tau} = 97$ , and buy the call at  $C_{t} = 4.95$ . Table 2.2 provides a cash flow table that clearly demonstrates that these transactions result in arbitrage profits today with no subsequent chance for future negative cash flows.

The Cash Flow Today column results in the receipt of 0.05 today per share of stock. The column  $S_{T} \leq X$  is known to be nonnegative because we assumed the terminal stock price is less than or equal to the strike price.

Note that short selling pressure will drive the stock price down, and call buying pressure will drive the call price up. In well-functioning markets, we expect the net cash flow

TABLE 2.2 Numerical Illustration Establishing a Lower Bound for a European Call  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Cash Flow Today</td><td colspan="2">Cash Flow at Expiration</td></tr><tr><td>ST≤X</td><td>ST</td></tr><tr><td>Short sell stock</td><td>+St=102</td><td>-St</td><td>-St</td></tr><tr><td>Buy bond</td><td>-Xe-rct=-97</td><td>+X</td><td>+X</td></tr><tr><td>Buy call</td><td>-ct=-4.95</td><td>0</td><td>St-X</td></tr><tr><td>Net</td><td>0.05</td><td>100-St</td><td>0</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/45e96b3b8fa84cc4e88117fb114bc939b0316e40991060ff1a842bd0900a39f1.jpg)  
FIGURE 2.1 Illustration of Lower Bound for a Non-Dividend-Paying Call (Expressed as Percentage)

today to quickly move so as to be nonpositive. Also, remember the arbitrageur purchased the American call; hence, they do not have to be concerned with being forced to exercise early. Therefore, the early exercise feature cannot be harmful to the arbitrage trader.

Figure 2.1 illustrates what we have asserted thus far. As is common in industry practice, the strike price, call price, and lower bound are normalized by the underlying price. That is, these values are divided by the underlying price. By normalizing values, we can easily compare option information across different instruments. Thus, the call mid price is the average of the bid and ask call price for an American call option on an index ETF (266.86) on the last trading day of a recent year divided by the index ETF price. This anecdote shows with actual data that the call price remains above the lower bound. Also, note that for calls, the exercise value is below the lower bound. As such, the exercise value is not binding in real markets. Specifically, the higher lower bound is binding and nothing else.

The market risk-free interest rate is  $1.6\%$ , the time to maturity is 49 days, and there are no anticipated dividends. Please note that these graphs look the opposite of what you may have seen before: Here we normalize by the underlying price. The opposite image would appear if normalizing by the strike.

# 2.5.2 Early Exercise of an American Call

From this result, we can discern that the American call will never be exercised early because the minimum value of an in-the-money call is  $S_{t} - Xe^{-r_{c}\tau}$ , which is more than its value if exercised,  $S_{t} - X$ . In other words, an American call is worth more by simply selling this call in the market. This point may seem somewhat counterintuitive when one considers that a deep-in-the-money call might seem worth exercising. A holder of such a call might be unlikely to expect further gains, but one must consider that exercise of such a call would simply result in the holder possessing the asset. If the asset is indeed going no higher, it would satisfy the holder no more to hold it instead of the call and would be out the exercise price and the interest it could continue to earn if they waited until expiration to exercise. It should also be apparent that exercise of a call early is equivalent to simply paying someone for an asset before it is necessary and then forgoing the right to change one's mind about its purchase at a later date. We shall soon see, however, that if the asset makes cash payments, then it may be worth exercising early.

Thus, for the case where the asset makes no cash payments, the absence of early exercise will render the American and European calls equivalent in value:

$$
c _ {t} = C _ {t} \text {i f} \text {r e a t h e r e a n o d i v i d e n d s o r c a s h p a y m e n t s o n t h e u b l e r y i n g .} \tag {2.9}
$$

Now let us assume that the asset makes cash payments, such as dividends on a stock, over the life of the option that have a present value of  $D_{t}$ . To derive the lower bound, it is necessary that we change the current value of the bond from  $Xe^{-r_c\tau}$  to  $Xe^{-r_c\tau} + D_t$ . The bonds will, thus, have a current value of  $X + D_{t}e^{r_{c}\tau}$  at expiration in either case. Portfolio B, the asset, will have a value of  $S_{T} + D_{t}e^{r_{c}\tau}$  in either case at expiration, which reflects the accumulation and reinvestment of the dividends. It should be apparent that Portfolio A is still dominant but the slight change in the composition of A leaves us with the following lower bound,

$$
c _ {t} \geq \operatorname {M a x} \left(0, S _ {t} - D _ {t} - X e ^ {- r _ {c} \tau}\right). \tag {2.10}
$$

Unlike the case of no dividends, we now see that the lower bound of a European call can be less than  $S_{t} - X$ , the exercise value of the American call. This case would occur if  $X(1 - e^{-r_c\tau}) < D_t$ , meaning that the interest on the exercise price is less than the present value of the dividends. That is,

$$
S _ {t} - X e ^ {- r _ {c} \tau} - D _ {t} <   S _ {t} - X
$$

$$
X - X e ^ {- r _ {c} \tau} <   D _ {t}
$$

$$
X (1 - e ^ {- r _ {c} \tau}) <   D _ {t}.
$$

In such a case, we cannot state an equivalence of the European and American call prices. In the case where the inequality is reversed, however, we have a sufficient condition for

no early exercise of the American call and such a call would be priced as a European call. That is,

$$
S _ {t} - X e ^ {- r _ {c} \tau} - D _ {t} > S _ {t} - X
$$

$$
X - X e ^ {- r _ {c} \tau} > D _ {t}
$$

$$
X (1 - e ^ {- r _ {c} \tau}) > D _ {t}.
$$

So, if the interest on the exercise price is more than the present value of the dividends, then there is absolutely no reason to exercise the call early. This leads to the condition,

$$
C _ {t} = c _ {t} \text {i f} X \left(1 - e ^ {- r _ {c} \tau}\right) > D _ {t}. \tag {2.11}
$$

The American call clearly has a positive probability of early exercise except in this special case of sufficiently small dividends relative to the present value of the exercise price. This result establishes the fact that it may be optimal to exercise an American call early to capture a dividend. When the call is exercised early, the holder throws away the time value and claims the exercise value. To avoid throwing away any more time value than necessary, however, it is always optimal to exercise only at the last instant before the asset goes ex-dividend. Also, note that if the condition in Equation (2.11) is not met, it does not automatically imply that the option will be exercised early.

Figure 2.2a illustrates the influence of actual dividends on the call lower bound. Recall in Figure 2.1 that the exercise value is less than the lower bound for a 49-day call option. For this longer dated option, there are two future quarterly dividends before this 203-day option expires. The present value of these dividends was estimated to be 2.326, based on

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/5637c72d87b34dfbe68d4119c287d2aa0f92909b8372832ae7b82e6307031ba3.jpg)  
FIGURE 2.2a Illustration of Dividend Impact on Call Lower Bound (Expressed as Percentage)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/9acc5308ab61c2bddec775bf67334c8792062c889e2bd697ceb4bd108be17c6c.jpg)  
FIGURE 2.2b Call Lower Bound Less Call Exercise Value

TABLE 2.3 Establishing a Lower Bound for a European Put  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Current Value</td><td colspan="2">Value at Expiration</td></tr><tr><td>ST≤X</td><td>ST</td></tr><tr><td>Portfolio E</td><td></td><td></td><td></td></tr><tr><td>European put</td><td>pt</td><td>X-ST</td><td>0</td></tr><tr><td>Asset</td><td>ST</td><td>ST</td><td>ST</td></tr><tr><td>Total</td><td>pt+ST</td><td>X</td><td>ST</td></tr><tr><td>Portfolio F</td><td></td><td></td><td></td></tr><tr><td>Zero-coupon bond</td><td>Xe-rcτ</td><td>X</td><td>X</td></tr></table>

a market risk-free interest rate of  $1.79\%$ . Thus, the present value factor is 0.990094 or  $e^{-r_c\tau} = e^{-0.0179(203 / 365)} = 0.990094$ . Based on Equation (2.11),  $X(1 - e^{-r_c\tau}) = D_t$  at  $88\%$  of the underlying value or  $[2.326 / (1 - 0.990094)] / 266.86$ . As shown in Figure 2.2b, the exercise value is higher than the lower bound for strike prices below  $88\%$  of the underlying price. The observed call prices appear to be converging to the call exercise value for lower strike prices, which are deep in-the-money calls.

# 2.5.3 The Lower Bound of a Put

Now we look at the lower bound of a European put. First, we consider the case of no dividends. We construct Portfolio E, consisting of a European put and a unit of the asset, and Portfolio F, consisting of a zero-coupon bond with face value  $X$  and current value of  $Xe^{-r_c\tau}$ .<sup>7</sup> Table 2.3 shows the outcomes.

Portfolio E clearly dominates Portfolio F, matching its outcome in one case and beating it in the other. Thus, the current value of Portfolio E must be no less than the current value of Portfolio F, giving us  $p_t + S_t \geq X e^{-r_c \tau}$ . Rewriting this expression to isolate the put and noting that a negative lower bound is dominated by a lower bound of zero gives

$$
p _ {t} \geq \max  \left(0, X e ^ {- r _ {c} \tau} - S _ {t}\right). \tag {2.12}
$$

For an American put, however, the lower bound is still  $\max(0, X - S_t)$  because this value exceeds the European lower bound. Consequently,

$$
P _ {t} \geq \max  \left(0, X - S _ {t}\right). \tag {2.13}
$$

Recall that if  $S_{t} < X$  the put is in-the-money, if  $S_{t} > X$  the put is out-of-the-money, and if  $S_{t} = X$  the put is at-the-money.

Figure 2.3 illustrates the results for an American put option. We again normalize values by the underlying price. With this actual data, we observe that the put bid price remains above the exercise value. Remember for calls, the exercise value is below the lower bound. This is not true for puts. As such, the exercise value is binding in real markets due to arbitrage activity.

For the case of a European put on an asset that makes cash payments, such as a dividend-paying stock, we modify portfolio F so that its bond has a face value of  $Xe^{-r_c\tau} + D_t$ . This makes its payoff be  $X + D_{t}e^{r_{c}\tau}$ . Then the payoff of portfolio E will include  $D_{t}e^{r_{c}\tau}$ . Thus, Portfolio E is still dominant, but the resulting boundary now becomes

$$
p _ {t} \geq \max  \left(0, X e ^ {- \tau_ {c} \tau} + D _ {t} - S _ {t}\right). \tag {2.14}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/dde793ea49cb9929f2732e86721f5c1b3358c46e7c5b654a08def8f47a068b12.jpg)  
FIGURE 2.3 Illustration of Lower Bound for a Non-Dividend-Paying Put (Expressed as Percentage)

The plus sign on the dividends implies that they have a positive effect on put options, which is easy to rationalize. When a firm pays a dividend, it reduces its ability to grow, which is harmful to holders of calls, who benefit only from growth in the asset, but the dividend benefits holders of puts who gain from less growth, which keeps the stock price down.

Consider the following situation similar to the previous example: Suppose the stock price has fallen and now is  $S_{t} = 97.93$ , the strike price is  $X = 100$ , the risk-free interest rate is  $r_{c} = 5.01\%$  continuously compounded, annualized, the time to maturity is 0.608 (or more precisely 222 days in a 365-day year), and the quoted European put price is 0.95. Now, however, there is one anticipated dividend in 111 days of  $D_{tD} = 1.96$  where the appropriate risk-free interest rate for this dividend is  $4.17\%$ . How would an arbitrageur trade? The first step is to assess whether there is a boundary violation. Note in this case the value of the lower bound can be computed as

$$
\begin{array}{l} X e ^ {- r _ {c} \tau} + D _ {t} - S _ {t} = 1 0 0 e ^ {- 0. 0 5 0 1 (2 2 2 / 3 6 5)} + 1. 9 6 e ^ {- 0. 0 4 1 7 (1 1 1 / 3 6 5)} - 9 7. 9 3 \\ = 9 7 + 1. 9 3 - 9 7. 9 3 = 1. 0. \\ \end{array}
$$

Thus, the quoted put price of 0.95 is below the lower boundary. The arbitrageur seeks to pocket this 0.05 through a series of current trades. Note in this case  $Xe^{-r_c\tau} + D_t - S_t - c_t = 0.05$  and the trading strategy is embedded in this expression. Notice that you can generate this result by executing transactions that produce these specific cash flows, namely, short sell the zero-coupon bond ( $Xe^{-r_c\tau} + D_t = 98.93$ ), buy stock ( $S_t = 97.93$ ), and buy the put  $(-p_t = -0.95)$ . Table 2.4 clearly demonstrates that these transactions result in arbitrage profits today with no subsequent chance for future negative cash flows.

Note in Table 2.4 that the net cash flow today is 0.05. The positive cash flow on the dividend date from the stock is captured today through short selling a bond or borrowing. Finally, the net cash flow when  $S_{T} > X$  is positive because we know  $S_{T} > 100$  by assumption. Further note that buying pressure will drive the stock and put price up. Again, in well-functioning markets, we expect the net cash flow today to quickly move so as to be nonpositive.

# 2.5.4 Early Exercise of an American Put

The lower bound dominance in the case of an American call, where  $S_{t} - Xe^{-r_{c}\tau} > S_{t} - X$ , provided a simple condition under which we demonstrated that an American call will not be exercised early except in the event of a dividend. For an American put, it is sufficient to

TABLE 2.4 Establishing a Lower Bound for a European Put  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Cash Flow Today</td><td rowspan="2">Cash Flow at Dividend Date</td><td colspan="2">Cash Flow at Expiration</td></tr><tr><td>ST≤X</td><td>X＜ST</td></tr><tr><td>Short sell bond</td><td>Xe-rct+Dt=98.93</td><td>-DtD=-1.96</td><td>-X=-100</td><td>-X=-100</td></tr><tr><td>Buy stock</td><td>-ST=-97.93</td><td>+DtD=1.96</td><td>+ST</td><td>+ST</td></tr><tr><td>Buy put</td><td>-pt=-0.95</td><td>0</td><td>X-ST</td><td>0</td></tr><tr><td>Net</td><td>0.05</td><td>0</td><td>0</td><td>ST-100</td></tr></table>

demonstrate that the case of an asset price falling to zero will trigger early exercise. The holder of the put will gain no more by waiting because the asset can go down no further, nor can it ever attain a positive value again. It is not true, however, that the holder must wait until the asset falls to zero. The exact point of early exercise is a complex matter to determine, and we do not cover it in this chapter. We shall see under what conditions American puts are exercised early after we have developed a full pricing model.

If the put were American, the existence of dividends paid by the stock renders it less likely to be exercised early. An American put can clearly be sold for at least its minimum European value of  $Xe^{-r_c\tau} + D_t - S_t$  or exercised for  $X - S_t$ . If  $D_t \geq X(1 - e^{-r_c\tau})$ , then it cannot be worth more to exercise it. Clearly, high dividends make a put more attractive alive than exercised. If it is, however, optimal to exercise a put early, it will be done immediately after the asset goes ex-dividend. One might as well wait an instant to let the stock price drop before exercising the put.

In summary, the lower bound for an American put has three conditions as illustrated in the following expression,

$$
P _ {t} \geq \max (0, X - S _ {t}, X e ^ {- r _ {c} \tau} + D _ {t} - S _ {t}).
$$

Clearly, as time passes, the present value of the strike price and dividends increase until an ex-dividend date. On that date, the stock price typically falls by the dividend amount and the present value of the dividends also falls by the dollar dividend paid. Thus, a dividend payment generally has no significant impact on the third condition  $(Xe^{-r_c\tau} + D_t - S_t)$  but the second condition increases with the drop in stock price  $(X - S_{t})$

Prior to expiration, both American put and call option prices will exceed the exercise values because sellers of the options will bear the risk that the options will be worth substantially more than their current exercise values by the time expiration has arrived. The option price, thus, is said to consist of two components: the exercise value and the time value, the latter reflecting the premium that disappears as expiration nears. The full price of the option—the exercise value plus the time value—is the objective of developing an option pricing model, a topic to which much of this book is devoted.

Figure 2.4 illustrates the influence of dividends on the put lower bound. Recall in Figure 2.3 that the exercise value is higher than the lower bound for a 49-day put option. Recall from Figure 2.2 that this longer dated option has two future quarterly dividends with present value 2.326. Clearly the exercise value and lower bound are much closer together due to the influence of dividends.

# 2.6 DIFFERENCES IN OPTION VALUES BY EXERCISE PRICE

The results in this section will enable us to understand the effect of exercise price on the pricing of options. That is, of two otherwise identical calls or puts, differing only by exercise price, which option will be priced higher? Our intuition should tell us that the call with the lower exercise price and the put with the higher exercise price should have higher prices. For the call, the exercise price is the hurdle over which the underlying must get to justify exercise. Thus, the lower the hurdle the easier it is to get over it. Moreover, for a given level of the underlying above the exercise price, the more valuable is the call when exercised. Hence, the lower-exercise price call should be worth more before expiration. For a put, the argument is reversed. To exercise the put, the underlying must get under the

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/c2aef384d2983b9f7f72d1e4e65949e8ecf6b4eb6150a61f093f61c3529723dc.jpg)  
FIGURE 2.4 Illustration of Dividend Impact on Put Lower Bound (Expressed as Percentage)

exercise price. Hence, the higher is the exercise price, the easier it is to get under it, and for a given level of the underlying below the exercise price, the higher is the exercise price, the higher the payoff of the put. Hence, puts with higher exercise prices should be worth more before expiration. Let us first take a formal look at calls.

# 2.6.1 Calls Differing by Exercise Price

Consider two European calls differing only by exercise price. The first call has an exercise price of  $X_{L}$  and a price of  $c_{tL}$  and the second call has an exercise price of  $X_{H}$  and a price of  $c_{tH}$ . The subscripts  $L$  and  $H$  stand for "low" and "high," respectively, but you should not get in mind that  $c_{tL}$  is lower than  $c_{tH}$ . In fact, it will not be, as we show here.

So let us construct portfolio  $G$ , consisting of a long position in the call with exercise price  $X_{L}$  and a short position in the call with exercise price of  $X_{H}$ , and portfolio  $H$  consisting of zero-coupon bonds with face value of  $X_{H} - X_{L}$  and current value of  $(X_{H} - X_{L})e^{-r_{c}\tau}$ . We use these portfolios to establish an upper bound for the difference in the prices of the two calls, as shown in Table 2.5.

The first result to notice is that the payoff to Portfolio G is nonnegative, which means that the initial value of the call portfolio must be nonnegative. Therefore,

$$
c _ {t L} \geq c _ {t H}. \tag {2.15}
$$

This result means simply that the call with the lower exercise price must sell for at least as much as the call with the higher exercise price. If the calls are American, this result still holds if we can prove that the payoff of the calls is never negative. We need not worry

TABLE 2.5 Establishing an Upper Bound for the Difference in the Prices of Two European Calls Differing Only by Exercise Price  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Current Value</td><td colspan="3">Value at Expiration</td></tr><tr><td>ST≤XL</td><td>XL&lt;ST&lt;XH</td><td>ST≥XH</td></tr><tr><td>Portfolio G</td><td></td><td></td><td></td><td></td></tr><tr><td>Long European call (XL)</td><td>ctL</td><td>0</td><td>ST-XL</td><td>ST-XL</td></tr><tr><td>Short European call (XH)</td><td>-ctH</td><td>0</td><td>0</td><td>-(ST-XH)</td></tr><tr><td>Total</td><td>ctL-ctH</td><td>0</td><td>ST-XL</td><td>XH-XL</td></tr><tr><td>Portfolio H</td><td></td><td></td><td></td><td></td></tr><tr><td>Zero-coupon bond</td><td>(XH-XL)e-rcτ</td><td>XH-XL</td><td>XH-XL</td><td>XH-XL</td></tr></table>

about the call we hold for we would never exercise it early if it were to our disadvantage. If the call we are short is exercised early, then it must be the case that  $S_{t} > X_{H}$ , which means that  $S_{t} > X_{L}$  and we could exercise our long call early, capturing a gain of  $X_{H} - X_{L}$ , the maximum payoff at expiration in the case of a European call. Thus, early exercise makes no difference and we can state that<sup>8</sup>

$$
C _ {t L} \geq C _ {t H}. \tag {2.16}
$$

So, the lower exercise price American call is worth at least as much as the higher exercise price American call.

The second result we notice is that Portfolio H dominates Portfolio G. Consequently, we have

$$
c _ {t L} - c _ {t H} \leq \left(X _ {H} - X _ {L}\right) e ^ {- r _ {c} \tau}. \tag {2.17}
$$

This statement establishes an upper bound on the spread between the call prices. It says that the spread between the prices of the two call options differing only by exercise price is no more than the present value of the difference in the exercise prices.

If the calls are American, then we are required to modify Portfolio H such that its current value is  $X_{H} - X_{L}$  and its face value is  $(X_{H} - X_{L})e^{r_{c}\tau}$ . If our short call is exercised early, we simply exercise our long call, which is even deeper in-the-money, and capture a value of  $X_{H} - X_{L}$ . This money is then invested at the risk-free rate. Without adjusting Portfolio H, we might have Portfolio G dominating Portfolio H due to the interest earned on the reinvestment of  $X_{H} - X_{L}$  if early exercise occurs. With Portfolio H worth  $X_{H} - X_{L}$  today, however, it will grow to a value that is at least as great as that of Portfolio G in the event of early exercise. Consequently, for American calls the rule becomes

$$
C _ {t L} - C _ {t H} \leq X _ {H} - X _ {L}. \tag {2.18}
$$

If there is no possibility of early exercise, as is the case when the asset makes no payments, the upper bound on the American spread comes down to the upper bound on the European spread, which is a smaller number.

Consider the following situation for two American calls: Suppose the lower 100 strike  $(X_{L})$  call price is  $C_{tL} = 17$  and the higher 110 strike  $(X_{H})$  call price is  $C_{tH} = 6.9$ . Based

solely on this data, how would an arbitrageur exploit this data? Again, the first step is to assess whether there is a boundary condition violation. Because these options are American, the boundary can be assessed based on Equation (2.18) as  $C_{tL} - C_{tH} = 17.0 - 6.9 = 10.1 > X_H - X_L = 110 - 100 = 10$ . Thus, these quoted call prices suggest a 0.1 arbitrage opportunity. The arbitrageur seeks to pocket this 0.1 through a series of current trades. Note in this case  $C_{tL} - C_{tH} - (X_H - X_L) = 0.1$  and the trading strategy is embedded in this expression. Notice that you can generate this result by executing transactions that generate these specific cash flows, namely, sell the low strike call ( $C_{tL} = 17$ ), buy the high strike call ( $C_{tH} = 6.9$ ), and lend the difference in strike prices ( $X_H - X_L = 10$ ). If the buyer of the  $X_L$  call decides to exercise their right to buy the asset at some presently unknown point in time,  $t'$ , then the arbitrageur will exercise their right to buy the asset at  $X_H$  as well as sell bonds. Table 2.6 clearly demonstrates that these transactions result in arbitrage profits today with no subsequent chance for future negative cash flows.

As interest will be earned on buying bonds, we indicate this future value as  $FV$ . Note in Table 2.6 that the net cash flow today is 0.1. Buying pressure will drive up the high strike call and selling pressure will drive down the low strike call. For every future possible outcome, the net cash flow is positive assuming interest rates are positive. Further note that trading pressure will drive the option prices in such a way that the positive net cash flow will no longer exist. Again, in well-functioning markets, we expect the net cash flow today to quickly move so as to be nonpositive.

# 2.6.2 Puts Differing by Exercise Price

Now consider two European puts differing only by exercise price. The first put has an exercise price of  $X_{L}$  and a price of  $p_{tL}$  and the second put has an exercise price of  $X_{H}$  and a price of  $p_{tH}$ . Construct Portfolio I, consisting of a short position in the put with exercise

TABLE 2.6 Numerical Illustration Establishing an Upper Bound for the Difference in the Prices of Two American Calls Differing Only by Exercise Price  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Cash Flow Today</td><td rowspan="2">Early Exercise (t&#x27;)</td><td colspan="3">Cash Flow at Expiration</td></tr><tr><td>ST≤XL</td><td>XL＜ST≤XH</td><td>ST&gt;XY</td></tr><tr><td>Sell XL call</td><td>CtL=17.0</td><td>-(St−XL)=100−St</td><td>0</td><td>-(ST−XL)=100−ST</td><td>-(ST−XL)=100−ST</td></tr><tr><td>Buy XH call</td><td>-CtH=-6.9</td><td>+(St−XH)=St−110*</td><td>0</td><td>0</td><td>+(ST−XH)=ST−110</td></tr><tr><td>Buy XH−XL bond</td><td>-(XH−XL)=10</td><td>FVT(St)(XH−XL)&gt;10</td><td>FVT(XH−XL)&gt;10</td><td>FVT(XH−XL)&gt;10</td><td>FVT(XH−XL)&gt;10</td></tr><tr><td>Net</td><td>CtL−CtH-(XH−XL)=0.1</td><td>&gt;0</td><td>&gt;10</td><td>&gt;0</td><td>Interest&gt;0</td></tr></table>

Note: The arbitrageur will exercise early the high strike call only if it is in-the-money and trading for less than its exercise value; otherwise, they will just sell it. If  $S_{t'}$  is less than 110, then the net column for some early exercise date  $(t')$  will be positive, even if  $X_H$  call is worthless.

price  $X_{L}$  and a long position in the put with exercise price of  $X_{H}$ , and Portfolio J consisting of zero-coupon bonds with face value of  $X_{H} - X_{L}$  and current value of  $(X_{H} - X_{L})e^{-r_{c}\tau}$ . We use these portfolios to set an upper bound for the difference in the prices of the two puts as shown Table 2.7.

The first result we should notice is that the payoff to Portfolio I is nonnegative, which means that the initial value of the put portfolio must be nonnegative. In other words,

$$
p _ {t H} \geq p _ {t L}. \tag {2.19}
$$

This statement means that the put with the higher exercise price must sell for at least as much as the put with the lower exercise price. If the puts are American, this result still holds if we can prove that the payoff of the put portfolio is never negative. We need not worry about the put we hold for we would never exercise it early if it were to our disadvantage. If the put we are short in is exercised early, then it must be the case that  $S_{t} < X_{L}$ , which means that we could exercise our long put early, capturing a gain of  $X_{H} - X_{L}$  earlier than expiration. This is the maximum payoff at expiration in the case of a European put. Thus, early exercise makes no difference, and we can state that

$$
P _ {t H} \geq P _ {t L}. \tag {2.20}
$$

The second result we notice is that Portfolio J dominates Portfolio I. Consequently, we have

$$
p _ {H} - p _ {L} \leq \left(X _ {H} - X _ {L}\right) e ^ {- r _ {c} \tau}. \tag {2.21}
$$

This statement establishes an upper bound on the spread between the European put prices. The spread is no more than the present value of the difference in the exercise prices.

If the puts are American, then we are required to modify Portfolio J such that its current value is  $(X_H - X_L)e^{-r_c\tau}$  and its face value is  $X_H - X_L$ . If our short put is exercised early, we simply exercise our long put, which is even deeper in-the-money, and capture a value of  $X_H - X_L$ . This amount is then invested at the risk-free rate. Without adjusting Portfolio J, we might have Portfolio I dominating Portfolio J due to the interest earned on the reinvestment of  $X_H - X_L$ . With Portfolio J worth  $X_H - X_L$  today, however, it will

TABLE 2.7 Establishing an Upper Bound for the Difference in the Prices of Two European Puts Differing Only by Exercise Price  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Current Value</td><td colspan="3">Value at Expiration</td></tr><tr><td>ST≤XL</td><td>XL&lt;ST&lt;XH</td><td>ST≥XH</td></tr><tr><td>Portfolio I</td><td></td><td></td><td></td><td></td></tr><tr><td>Long European put (XH)</td><td>pH</td><td>XH-ST</td><td>XH-ST</td><td>0</td></tr><tr><td>Short European put (XL)</td><td>-PL</td><td>-(XL-ST)</td><td>0</td><td>0</td></tr><tr><td>Total</td><td>pTH-PL</td><td>XH-XL</td><td>XH-ST</td><td>0</td></tr><tr><td>Portfolio J</td><td></td><td></td><td></td><td></td></tr><tr><td>Zero-coupon bond</td><td>(XH-XL)e-rct</td><td>XH-XL</td><td>XH-XL</td><td>XH-XL</td></tr></table>

grow to a value that is at least as great as that of Portfolio I in the event of early exercise. Consequently, for American puts the rule becomes

$$
P _ {t H} - P _ {t L} \leq X _ {H} - X _ {L}. \tag {2.22}
$$

Thus, the spread between the American put prices is no more than the spread between the exercise prices.

Consider the following situation for two three-month European puts: Suppose the lower 100-strike  $(X_L)$  put price is  $p_L = 6.05$  and the higher 110-strike  $(X_H)$  put price is  $p_H = 16$ . Assume the continuously compounded risk-free rate is  $5\%$ . Based solely on this data, how would an arbitrageur exploit this situation? As before, the first step is to assess whether there is a boundary condition violation. Because these options are European puts, the boundary can be assessed based on Equation (2.21) as

$$
p _ {t H} - p _ {t L} = 1 6. 0 - 6. 0 5 = 9. 9 5 > (X _ {H} - X _ {L}) e ^ {- r _ {c} \tau} = (1 1 0 - 1 0 0) e ^ {- 0. 0 5 (3 / 1 2)} = 9. 8 7 5 7 7 8.
$$

Thus, these quoted call prices suggest an approximately 0.07 arbitrage opportunity. The arbitrageur seeks to pocket this 0.07 through a series of current trades. Note in this case the boundary is violated and again the trading strategy is embedded in this expression. Rearranging we have

$$
p _ {t H} - p _ {t L} - (X _ {H} - X _ {L}) e ^ {- r _ {c} \tau} = 9. 9 5 - 9. 8 8 = 0. 0 7.
$$

Notice that you can generate this result by executing transactions that generate these specific cash flows, namely, selling the high strike put  $(p_{H} = 16)$ , buying the low strike put  $(p_{L} = 6.05)$ , and lending the difference in the present value of the strike prices  $((X_{H} - X_{L})e^{-r_{c}\tau} \cong 9.88)$ . Table 2.8 clearly demonstrates that these transactions result in arbitrage profits today with no subsequent chance for future negative cash flows.

Because interest will be earned on buying bonds, we buy bonds valued at the present value of the difference in strike prices. Note in Table 2.8 that the net cash flow today is 0.07. Further, buying pressure will drive up the low strike put and selling pressure will

TABLE 2.3 Numerical Illustration Establishing an Upper Bound for the Difference in the Prices of Two European Puts Differing Only by Exercise Price  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Cash Flow Today</td><td colspan="3">Cash Flow at Expiration</td></tr><tr><td>ST≤XL</td><td>XL&lt;XT≤XH</td><td>ST&gt;XYH</td></tr><tr><td>Sell XH put</td><td>+pH=16.0</td><td>-(XH-ST) =ST-100</td><td>-(XH-ST) =ST-100</td><td>0</td></tr><tr><td>Buy XL put</td><td>-pL=-6.05</td><td>+(XL-ST) =100-ST</td><td>0</td><td>0</td></tr><tr><td>Buy PV(XH-XL) bond</td><td>-PV(XH-XL) =9.88</td><td>+(XH-XL) =10</td><td>+(XH-XL) =10</td><td>+(XH-XL) =10</td></tr><tr><td>Net</td><td>pH-pL+PV(XH-XL)</td><td>0</td><td>ST-100&gt;0</td><td>10</td></tr></table>

drive down the high strike put. For every future possible outcome, the net cash flow is nonnegative assuming interest rates are positive. Further note that trading pressure will drive the option prices in such a way that the positive net cash flow will no longer exist. Again, in well-functioning markets, we expect the net cash flow today to quickly move so as to be nonpositive.

# 2.7 THE EFFECT OF DIFFERENCES IN TIME TO EXPIRATION

Consider two European calls differing only by time to expiration. One option expires at time  $T_{1}$  and has a time to expiration of  $T_{1} - t = \tau_{1}$  and the other expires at  $T_{2}$  and has a time to expiration of  $T_{2} - t = \tau_{2}$ , and where  $\tau_{2} > \tau_{1}$ . Their respective prices will be  $c_{t1}$  and  $c_{t2}$  with similar notation for American calls as well as for European and American puts.

For a European call, it is simple to demonstrate that in the absence of dividends, the longer-term call must sell for at least as much as the shorter-term call. Suppose we are at the expiration date of the shorter-term call and the asset price is  $S_{T_1}$ . Its value is  $\max(0, S_{T_1} - X)$ . The longer-term option, however, has time remaining of  $\tau_2 - \tau_1$ , so its minimum value is  $\max[0, S_{T_1} - Xe^{-r_c(\tau_2 - \tau_1)}]$ , which is at least as great as the value of the shorter-term expiring option. Consequently,

$$
c _ {t 2} \geq c _ {t 1}, \tag {2.23}
$$

with the LHS being the current price of the longer term call, and the RHS being the current price of the shorter-term call. Thus, the longer-term call cannot be worth less than the shorter-term call. In the absence of dividends, there would be no early exercise, so the previous statement would apply for American options.

$$
C _ {t 2} \geq C _ {t 1}. \tag {2.24}
$$

If there are dividends, then the longer term European call has a minimum value of  $\max [0,S_{T_1} - D - Xe^{-r_c(\tau_2 - \tau_1)}]$ , which might make it seem as if that option has a minimum less than the exercise value of the expiring option. If that is the case, however, the longer-term American option would sell for at least the exercise value. Consequently, Equation (2.24) is still valid.

For a European put, we obtain a somewhat counterintuitive result. First assume no dividends. Then the expiring, shorter-term option is worth  $\max(0, X - S_{T_1})$ . The second option, which still has time remaining, is worth at least  $\max[0, Xe^{-r_c(\tau_2 - \tau_1)} - S_{T_1}]$ . Thus, it might be the case that the shorter-term option is worth more. This somewhat strange result that a longer-term European put can be worth less than a shorter-term European put arises because there are conflicting sources of value arising from the time to expiration in an option. A longer time to expiration generally helps an option, whether a put or a call, in that it gives it greater time for a favorable asset price move to occur. The longer time to expiration also has an effect arising from the present value of the potential payoff at expiration. For a put, the better outcome at expiration is to exercise it, which will result in a cash inflow from the sale of the asset. A longer time to expiration reduces the present value of this inflow, however, rendering the put potentially less valuable. This disadvantage of a longer expiration can be partially, perhaps wholly, offset by the advantage of the longer

time for a favorable asset price move. Puts that are deep in-the-money will tend to have this disadvantage weigh more than the advantage because their potential for exercise is greater and their potential for gains from further asset price moves is limited. All other puts will tend to have the advantage greater than the disadvantage. With the LHS being the current price of the longer-term put and the RHS being the current price of the shorter-term put, the overall result is

$$
p _ {t 2} \geq \leq p _ {t 1}. \tag {2.25}
$$

In other words, we cannot definitely make a statement about the relationship of a longer-term European put price to the shorter-term put price.

If the put is American, however, there is no requirement to wait to receive the exercise price at expiration. It can always be claimed now. Thus,

$$
P _ {t 2} \geq P _ {t 1}. \tag {2.26}
$$

If there are dividends on the asset and the puts are European, the expiring option is worth  $\max(0, S_{T_1} - X)$ . The other option is still alive and worth at least max  $[0, Xe^{-r_c(\tau_2 - \tau_1)} - D_1 - S_{T_1}]$ . Again, it may be the case that the longer-term put is worth less, which would, of course, all depend on the various factors that affect the option price. Consequently, our previous statement for European puts for the no-dividend case holds as well if there are dividends. If the puts are American, the remaining option will always sell for at least its exercise value, which makes it worth at least as much as the expiring option. Consequently, our statement for American puts without dividends holds when dividends are introduced.

# 2.8 THE CONVEXITY RULE

A mathematical function,  $y = f(x)$ , is said to be convex if for any two values of  $x$ ,  $x_2 > x_1$ , we have that the line between these two  $x$  values lies above or on the  $y = f(x)$  graph. It is possible to derive a relationship between the prices of three options differing by exercise price. Let their exercise prices be  $X_L$ ,  $X_M$ , and  $X_H$  (for low, medium, and high) and the corresponding call prices be  $c_{tL}$ ,  $c_{tM}$ , and  $c_{tH}$ . For convenience, we shall call these the first, second, and third calls, respectively. Let us construct Portfolio K consisting of  $\omega$  units of the first call and  $1 - \omega$  units of the third call. In other words, we go long  $\omega$  units of the first call and long  $1 - \omega$  units of the third. Portfolio L consists of one unit of the second call. The value of  $\omega$  is defined as  $(X_H - X_M) / (X_H - X_L)$  so that  $1 - \omega$  is  $(X_M - X_L) / (X_H - X_L)$ . Table 2.9 shows the outcomes.

When  $S_{T} < X_{L}$ , both portfolios produce the same result of zero value. When  $X_{L} \leq S_{T} < X_{M}$ , Portfolio K is better than Portfolio L, because  $\omega > 0$  and  $S_{T} > X_{L}$ . When  $X_{M} \leq S_{T} < X_{H}$ , we can prove that Portfolio K is better by substituting the definition of  $\omega$ . In the last case, where  $S_{T} > X_{H}$ , Portfolio K is equivalent to Portfolio L, which can also be proven by substituting the definition of  $\omega$ . Putting these results together tells us that Portfolio K dominates Portfolio L. Consequently, the current value of Portfolio K must be at least as great as the current value of Portfolio L,

$$
\omega c _ {t L} + (1 - \omega) c _ {t H} \geq c _ {t M}. \tag {2.27}
$$

TABLE 2.9 The Relationship Between the Prices of Three European Calls Differing Only by Their Exercise Prices  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Current Value</td><td colspan="4">Value at Expiration</td></tr><tr><td>ST&lt;XL</td><td>XL≤ST&lt;XM</td><td>XM≤ST&lt;XH</td><td>ST≥XH</td></tr><tr><td>Portfolio K</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>European call</td><td>ωctL</td><td>0</td><td>ω(ST-XL)</td><td>ω(ST-XL)</td><td>ω(ST-XL)</td></tr><tr><td>European call</td><td>(1-ω)cTH</td><td>0</td><td>0</td><td>0</td><td>(1-ω)(ST-XH)</td></tr><tr><td>Total</td><td>ωctL+(1-ω)cTH</td><td>0</td><td>ω(ST-XL)</td><td>ω(ST-XL)</td><td>ST-ωXL-(1-ω)XH</td></tr><tr><td>Portfolio L</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>European call</td><td>ctM</td><td>0</td><td>0</td><td>ST-XM</td><td>ST-XM</td></tr></table>

TABLE 2.10 The Relationship Between the Prices of Three European Puts Differing Only by Their Exercise Prices  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Current Value</td><td colspan="4">Value at Expiration</td></tr><tr><td>\(S_T&lt; X_L\)</td><td>\(X_L≤ S_T&lt; X_M\)</td><td>\(X_M≤ S_T&lt; X_H\)</td><td>\(X_H≤ S_T\)</td></tr><tr><td>Portfolio M</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>European put</td><td>\(\omega p_{tL}\)</td><td>\(\omega(X_L-S_T)\)</td><td>0</td><td>0</td><td>0</td></tr><tr><td>European put</td><td>(1-ω)\(p_{tH}\)</td><td>(1-ω)(\(X_H-S_T\))</td><td>(1-ω)(\(X_H-S_T\))</td><td>(1-ω)(\(X_H-S_T\))</td><td>0</td></tr><tr><td>Total</td><td>\(\omega p_{tL}\) + (1-ω)\(p_{tH}\)</td><td>\(\omega X_L-S_T+(1-ω)X_H\)</td><td>(1-ω)(\(X_H-S_T\))</td><td>(1-ω)(\(X_H-S_T\))</td><td>0</td></tr><tr><td>Portfolio N</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>European put</td><td>\(p_M\)</td><td>\(X_M-S_T\)</td><td>\(X_M-S_T\)</td><td>0</td><td>0</td></tr></table>

This statement is called the convexity rule because it proves that the option price is convex with respect to the exercise price. If there are dividends on the asset, the rule is not affected because none of the positions above will collect dividends. If the options were American, Portfolio K would still dominate Portfolio L because the payoffs above at expiration would occur early. Thus,

$$
\omega C _ {t L} + (1 - \omega) C _ {t H} \geq C _ {t M}. \tag {2.28}
$$

Now, let us prove the rule for puts. Consider Table 2.10, which is based on Portfolios M and N.

It is easy to see that Portfolio M dominates Portfolio N. For the case in which  $S_{T} \geq X_{H}$ , both portfolios are worth zero. For the case in which  $X_{M} \leq S_{T} < X_{H}$ , Portfolio N is worth zero, whereas Portfolio M has a positive value. For the case in which  $X_{L} \leq S_{T} < X_{M}$ , we can prove that Portfolio M is worth more than Portfolio N by substituting the definition of  $\omega$ . And for the case in which  $S_{T} < X_{L}$ , it can be shown that Portfolio M dominates Portfolio N by also substituting the definition of  $\omega$ . These results mean that

$$
\omega p _ {t L} + (1 - \omega) p _ {t H} \geq p _ {t M}. \tag {2.29}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/cb6e3892fdb676ffc807d113232f54660becb8c6d550d8c632f0e32d1b5fb911.jpg)  
FIGURE 2.5 Relationship Between Option Prices and Strike Prices Expressed as Percentage of Stock Price

If there are dividends, the results are unaffected, as these instruments will not receive or pay dividends. If the puts are American, the outcomes above would occur early, and the same result would hold.

$$
\omega P _ {t L} + (1 - \omega) P _ {t H} \geq P _ {t M}. \tag {2.30}
$$

So put options are also convex in the exercise price.

Figure 2.5 illustrates the convex relationship between call and put option mid prices and different strike price expressed as a percentage of the stock price. Note that for both the upper and lower limits, the relationship converges to linear. Hence, the convex relationships identified previously may at times be simply equal.

We now turn to addressing put-call parity.

# 2.9 PUT-CALL PARITY

The connection between the prices of puts and calls with the same exercise price and expiration is referred to as put-call parity, and it is one of the most important relationships in all of option pricing. We first begin with European options.

# 2.9.1 Put-Call Parity for European Options

We construct two portfolios called O and P. Portfolio O consists of one unit of the asset and one European put and Portfolio P consists of one European call and a zero-coupon

bond with face value of  $X$  and current value of  $Xe^{-r_c\tau}$ . We assume no dividends on the underlying. Table 2.11 shows the outcomes at expiration.

Notice that Portfolio O and Portfolio P produce the same results at expiration. Thus, they must have the same value today. We, therefore, can state put-call parity as

$$
S _ {t} + p _ {t} = c _ {t} + X e ^ {- r _ {c} \tau}. \tag {2.31}
$$

This equation indicates that a long position in the asset and the put is equivalent to a long position in the call and risk-free bonds. In other words, we note that each of the four symbols— $S_{t}$ ,  $p_{t}$ ,  $c_{t}$ , and  $Xe^{-r_{c}\tau}$ —represents a financial instrument, respectively, the asset, a put, a call, and a zero-coupon bond. The sign, positive (implied) or negative, represents whether one is long or short. Now, let us use simple algebra to reveal some other relationships. First, let us isolate the put price,

$$
p _ {t} = c _ {t} - S _ {t} + X e ^ {- r _ {c} \tau},
$$

which indicates that a put is equivalent to a long call, short asset, and long bonds. Likewise, a call is indicated as

$$
c _ {t} = p _ {t} + S _ {t} - X e ^ {- r _ {c} \tau},
$$

which means that a call is equivalent to a long put, long asset, and short bonds. The asset itself can be decomposed as follows,

$$
S _ {t} = c _ {t} - p _ {t} + X e ^ {- r _ {c} \tau},
$$

which indicates that the asset can be replicated by a long call, short put, and long bonds. Finally, the risk-free asset can be expressed as

$$
X e ^ {- r _ {c} \tau} = S _ {t} + p _ {t} - c _ {t},
$$

meaning that the zero-coupon bond is equivalent to the asset, a long put, and a short call. You can also take each of these equations, multiply by  $-1$  and make similar statements about short positions in the put, call, asset, and zero-coupon bond.

TABLE 2.11 Put-Call Parity for European Options on Assets Making No Cash Payments  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Current Value</td><td colspan="2">Value at Expiration</td></tr><tr><td>ST≤X</td><td>ST</td></tr><tr><td>Portfolio O</td><td></td><td></td><td></td></tr><tr><td>Asset</td><td>St</td><td>ST</td><td>ST</td></tr><tr><td>European put</td><td>pt</td><td>X-ST</td><td>0</td></tr><tr><td>Total</td><td>St+pt</td><td>X</td><td>ST</td></tr><tr><td>Portfolio P</td><td></td><td></td><td></td></tr><tr><td>Call</td><td>ct</td><td>0</td><td>ST-X</td></tr><tr><td>Zero-coupon bond</td><td>Xe-rct</td><td>X</td><td>X</td></tr><tr><td>Total</td><td>ct+Xe-rct</td><td>X</td><td>ST</td></tr></table>

If there are dividends on the asset, put-call parity is easily established by simply modifying the zero-coupon bond in Portfolio P such that its current value is  $Xe^{-r_c\tau} + D_t$ . At expiration Portfolio P will, therefore, pay off  $X + D_{t}e^{r_{c}\tau}$ . Portfolio O's payoff in each state will be augmented by the reinvested value of the dividends,  $D_{t}e^{r_{c}\tau}$ . The final results will be the same in that the payoffs of the two portfolios are still equivalent, but put-call parity is now stated as

$$
S _ {t} - D _ {t} + p _ {t} = c _ {t} + X e ^ {- r _ {c} \tau}. \tag {2.32}
$$

In other words, the asset price is simply reduced by the present value of the dividends. This process of reducing the asset price by the present value of the dividends will arise often in derivative pricing.

Let us now examine a case where put-call parity does not hold. Suppose you observe the following data: The stock price is  $S_{t} = 100$ , the strike price is  $X = 100$ , a European call is at  $c_{t} = 7.55$ , a European put is at  $p_{t} = 7.55$ , and the time to expiration is 0.5 years, a 1.0 dividend will be paid in 0.25 years ( $D_{t+0.25} = 1.0$  or the present value  $D_{t} = 0.99$ ). The risk-free interest rate is  $r_{c} = 5.0\%$  (continuously compounded, annualized, appropriate for both dividend and expiration). How would an arbitrageur trade? The first step is to assess whether there is a put-call parity violation. Note in this case the value of the put-call parity relation can be assessed based on the expression provided in Equation (2.32). Note that the two sides do not equal,

$$
S _ {t} - D _ {t} + p _ {t} = 1 0 0 - 0. 9 9 + 6. 0 2 = 1 0 5. 0 3 <   c _ {t} + X e ^ {- r _ {c} \tau} = 7. 5 5 + 9 7. 5 3 = 1 0 5. 0 8.
$$

The arbitrageur seeks to pocket this 0.05 difference through a series of current trades. Rearranging the expression such that a positive number is produced, we have  $c_{t} + Xe^{-r_{c}\tau} - S_{t} + D_{t} - p_{t} = 0.05$ . To generate this cash flow, you would sell the call  $(+c_{t} = 7.55)$ , short sell the bond or borrow the present value of the exercise price  $(Xe^{-r_{c}\tau} = 100e^{-0.05(0.5)} = 97.53)$ , buy the stock  $(-S_{t} = -100)$ , short sell the bond or borrow the present value of the dividend  $(-D_{t} = -1e^{-0.05(0.25)} = 0.99)$ , and buy the put  $(-p_{t} = -6.02)$ . Table 2.12 clearly demonstrates that these transactions result in arbitrage profits today with no future cash flows at all.

TABLE 2.12 Numerical Illustration Put-Call Parity for European Options on Assets Making No Cash Payments  

<table><tr><td rowspan="2">Instrument</td><td rowspan="2">Cash Flow Today</td><td rowspan="2">Cash Flow at Dividend Date</td><td colspan="2">Cash Flow at Expiration</td></tr><tr><td>ST≤X</td><td>X＜ST</td></tr><tr><td>Sell call</td><td>+ct=+7.55</td><td></td><td>0</td><td>-(ST-X) =100-ST</td></tr><tr><td>Short sell bond</td><td>Xe-rct=+97.53</td><td></td><td>-X=-100</td><td>-X=-100</td></tr><tr><td>Buy stock</td><td>-St=-100</td><td>+Dt=D=+1.0</td><td>+ST</td><td>+ST</td></tr><tr><td>Short sell bond</td><td>+Dt=+0.99</td><td>-DtD=-1.0</td><td></td><td></td></tr><tr><td>Buy put</td><td>-pt=-6.02</td><td></td><td>X-ST=100-ST</td><td>0</td></tr><tr><td>Net</td><td>ct+Xe-rct-St+Dt-pt=0.05</td><td>0</td><td>0</td><td>0</td></tr></table>

Note that buying pressure will drive the stock and put prices up and selling pressure will drive the call price down. Again, in well-functioning markets, we expect the net cash flow today to quickly move to nearly zero.

# 2.9.2 Put-Call Parity for American Options

If the options are American, put-call parity is a bit more complex, and the statements we shall be able to make a bit less precise. We first consider the case of no dividends. Portfolio P, consisting of a long call and a zero-coupon bond, is not subject to early exercise because the long call would not be exercised due to the absence of dividends on the asset. Given the potential for early exercise, it is necessary to adjust the initial value of the bonds to  $X$  instead of  $Xe^{-r_c\tau}$ . That is, we make the current value of the bonds equal to the exercise price, not the present value of the exercise price, which means we borrow a little more money. At expiration, the bonds will mature and pay off  $Xe^{-r_c\tau}$ . So, at expiration, the payoff of Portfolio P will either be  $Xe^{r_c\tau}$  if  $S_T \leq X$  or  $S_T - X(1 - e^{r_c\tau})$  if  $S_T > X$ . Portfolio O, however, is subject to early exercise of the put. Let us choose an arbitrary time before expiration,  $j$ , in which the remaining time to expiration is  $\tau_j$ . Suppose at that point, the asset price,  $S_j$ , is sufficiently below the exercise price to justify early exercise. In that case, the holder of the put will tender the asset and receive the exercise price. We assume that this person will reinvest the exercise price at the risk-free rate, such that it will grow to a value of  $Xe^{r_c\tau_j}$  at time  $T$ . The final value at  $T$  will be

If  $S_T \leq X$

<table><tr><td>0</td><td>(the call)</td></tr><tr><td>Xerτc</td><td>(the bonds)</td></tr><tr><td>Xerτ</td><td>(total for Portfolio P)</td></tr><tr><td>Xerτj</td><td>(for Portfolio O with put exercised early)</td></tr></table>

If  $S_{T} > X$

<table><tr><td>ST-X</td><td>(the call)</td></tr><tr><td>Xerτ</td><td>(the bonds)</td></tr><tr><td>ST-X+Xerτ</td><td>(total for Portfolio P)</td></tr><tr><td>Xerτj</td><td>(total for Portfolio O with put exercised early)</td></tr></table>

In the first outcome,  $S_{T} \leq X$ , Portfolio P has the same value as Portfolio O. In the second outcome,  $S_{T} > X$ , P beats O because the value  $S_{T} > X$  and  $Xe^{r_{c}\tau_{j}}$  is positive. Hence, P dominates O, and we can say that  $C_t + X \geq P_t + S_t$ . Let us rearrange this to  $C_t \geq P_t + S_t - X$  and further arrange to have the call on the left-hand side,

$$
C _ {t} \geq P _ {t} + S _ {t} - X. \tag {2.33}
$$

This result establishes a lower limit on the call price. We can also establish an upper limit on the call price by using European put-call parity. With the conditions  $p_t = c_t - S_t + Xe^{-r_c\tau}$  and  $P_t > p_t$ , we can say that  $P_t \geq c_t - S_t + Xe^{-r_c\tau}$ . With no dividends,  $C_t > c_t$ , we have,

$$
C _ {t} \leq P _ {t} + S _ {t} - X e ^ {- r _ {c} \tau}.
$$

Now we can combine these results to obtain put-call parity for American options on non-dividend-paying assets.

$$
P _ {t} + S _ {t} - X e ^ {- r _ {c} \tau} \geq C _ {t} \geq P _ {t} + S _ {t} - X. \tag {2.34}
$$

Unfortunately, the best we can do is place these bounds around the put price.[10]

If the asset pays dividends with present value  $D_{t}$ , the proof is only slightly altered. Consider the first inequality,  $P_{t} + S_{t} - Xe^{-r_{c}\tau} \geq C_{t}$ . If we impose dividends, it will raise the put price and lower the call price, so this relationship will still be correct. For the other inequality,  $C_{t} \geq P_{t} + S_{t} - D_{t} - X$ , let us pretend that it is violated. That is, suppose  $C_{t} < P_{t} + S_{t} - D_{t} - X$ . If we believe that the left-hand side (LHS) should be greater than the right-hand side (RHS), an arbitrage should be possible. Because the call price appears to be too low, let us buy the call. We would then sell the RHS by selling the put, shorting the stock, and buying zero-coupon bonds with face value  $D_{t} + X$ . Now, suppose the put is immediately exercised on us. We now have to pay out  $X$  to buy the shares, so let us borrow  $X$ . We then tender  $X$  to acquire the shares from the put holder, and we use the shares to cover the short sale. At expiration, we would owe  $Xe^{r_{c}\tau}$  but our zero-coupon bond would mature and pay that same amount plus  $D_{t}e^{r_{c}\tau}$ . If the puts are not exercised until maturity, we will have accrued an obligation to pay all the dividends, but this amount will be covered by the value of  $D_{t}e^{r_{c}\tau}$  from the maturing bonds. So, this strategy generates a cash inflow at the start and a positive or zero outflow at maturity. Therefore, it is an arbitrage opportunity and will be exploited, which will drive up the price of the call or drive down the price of the put until the correct inequality is established. Therefore,

$$
P _ {t} + S _ {t} - X e ^ {- r _ {c} \tau} \geq C _ {t} \geq P _ {t} + S _ {t} - D _ {t} - X. \tag {2.35}
$$

Note we can rearrange Equation (2.35), isolating the role of the interest rate, time to maturity, and present value of dividends, as  $Xe^{-r_c\tau} \leq S_t + P_t - C_t \leq D_t + X$ . For non-dividend-paying stocks with short maturity options in a low rate environment we have very tight put-call parity boundaries. Figure 2.6 illustrates the normalized Equation (2.35) or

$$
1 - \frac {X e ^ {- r _ {c} \tau} - P _ {t}}{S _ {t}} \geq \frac {C _ {t}}{S _ {t}} \geq 1 - \frac {D _ {t} + X - P _ {t}}{S _ {t}},
$$

where the LHS is the put-call parity upper bound, and the RHS is the put-call parity lower bound. Figure 2.6a illustrates short-dated options (44 days to maturity with  $5\%$  strike range) and Figure 2.6b illustrates long-dated options (212 days to maturity with  $25\%$  strike range). Note that we use a trading day in November that contains one potential future dividend payment for the short-dated option and two potential future dividends for the long-dated option. The presence of dividends results in wider bounds.

With an understanding of option boundaries, we observe a rationality to the relationship between the underlying, calls, and puts that is not apparent to the untrained eye.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/39ad2a90194697ae5f5dfcfba1b42c9743c52de5eef7eb4e4ccbe57722828e70.jpg)  
FIGURE 2.6a Illustration of Put-Call Parity Bounds for Short-Dated American Options (in Percentage)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/ed690a96a4e42b3076fb7e70c5f5215b9642b5ef41c30f0a05f1ade47da47c4a.jpg)  
FIGURE 2.6b Illustration of Put-Call Parity Bounds for Long-Dated American Options (in Percentage)

We are just beginning to partially unravel financial mysteries. Once you finish this book, there will be plenty of remaining mysteries worthy of a lifetime of research and learning.

# 2.9.3 Put-Call Parity and the Box Spread

There is a special relationship between the prices of European puts and calls that differ by exercise price. Suppose one buys the call with exercise price  $X_{L}$ , sells the call with exercise price  $X_{H}$ , buys the put with exercise price  $X_{H}$ , and sells the put with exercise price  $X_{L}$ . These portfolios constitute a strategy known in the world of options trading as a box spread. Because the call purchased will cost more than the call that is sold, there is a net cash outflow for the calls. Likewise, the put purchased will cost more than the put sold, so there is a net cash outflow for the puts. Thus, these transactions will net out to a long position, meaning that the investor who does this strategy will pay out money at the start. Let us look at the outcomes because they produce a somewhat surprising result.

If  $S_{T} > X_{H}$ , both calls are exercised and both puts are out-of-the-money for a payoff of  $S_{T} - X_{L} - (S_{T} - X_{H}) = X_{H} - X_{L}$ .

If  $X_{L} < S_{T} \leq X_{H}$ , the long  $X_{L}$  call is exercised for a value of  $S_{T} - X_{L}$  and the long  $X_{H}$  put is exercised for a value of  $X_{H} - S_{T}$  for a total value of  $X_{H} - X_{L}$ .

If  $S_{T} \leq X_{L}$ , the long  $X_{H}$  put is exercised for a value of  $X_{H} - S_{T}$  and the short  $X_{L}$  put is exercised for a value of  $-(X_{L} - S_{T})$  for a total of  $X_{H} - X_{L}$ . Thus, the box spread pays off  $X_{H} - X_{L}$  in every state.

With the same payoff in each case, the value of the box spread is the present value of  $X_H - X_L$ ,

$$
c _ {t L} - c _ {t H} + p _ {t H} - p _ {t L} = \left(X _ {H} - X _ {L}\right) e ^ {- r _ {c} \tau}. \tag {2.36}
$$

Thus, it may surprise you to know that this strategy, which combines four options, is actually risk-free. It is also easy to see that the box spread is just a combination of two put-call parities. Let us write put-call parity for both sets of options as

$$
p _ {L} + S = c _ {L} + X _ {L} e ^ {- r _ {c} \tau}
$$

$$
p _ {H} + S = c _ {H} + X _ {H} e ^ {- r _ {c} \tau}.
$$

We then isolate the asset price and obtain

$$
S _ {t} = c _ {L} + X _ {L} e ^ {- r _ {c} \tau} - p _ {L}
$$

$$
S _ {t} = c _ {H} + X _ {H} e ^ {- r _ {c} \tau} - p _ {H}.
$$

Setting these equations equal to each other gives the box spread, Equation (2.36).

Dividends have no effect on the box spread because none of the positions produce dividends. If the options are American, the analysis is slightly modified. If the short call is exercised, then the long call is even deeper in-the-money and can be exercised for a value of  $X_{H} - X_{L}$ , which is then reinvested in cash until expiration. Thus, it will grow to  $X_{H} - X_{L}$  plus the interest reflecting the time between the early exercise date and the expiration. In addition, the puts can have some value at expiration to add. At expiration, the puts will be worth zero at worst and  $X_{H} - X_{L}$  at best, provided they are not exercised

early. If the puts are exercised early, they will be worth  $X_H - X_L$ , which will be reinvested until expiration. In addition, the calls can have some value at expiration to add. In short, the box spread will pay off  $X_H - X_L$  at expiration or possibly before expiration and there can be additional payoff from the non-exercised options. Because the options are subject to immediate early exercise, in which case they could be worth  $X_H - X_L$  right now and because it is possible that at some time during the life of the options that are alive, another payoff will be received, we can say that

$$
C _ {t L} - C _ {t H} + P _ {t H} - P _ {t L} \geq X _ {H} - X _ {L}. (2. 3 7)
$$

# 2.10 THE EFFECT OF INTEREST RATES ON OPTION PRICES

Interest rates impart a small but positive effect on call option prices and a small but negative effect on put option prices. Consider that the holder of a European call faces a payoff at expiration of either zero or  $S_T - X$ . If interest rates increase, the value of the possible zero payoff is unaffected, but the present value of the  $X$  dollars paid out if the option ends up in-the-money is less. Hence, a higher risk-free rate makes a European call option more valuable as the  $S_T - PV(X)$  increases.

If the options are American, the results are unaffected but do require an explanation. For American calls, there might be immediate early exercise. In that case, the extra interest from the higher rate and waiting to exercise is forgone, but this effect does not disadvantage the call. If there is early exercise at any point beyond immediacy, there is additional interest saved on the payment of the exercise price. Hence, American calls are positively related to interest rates.

For the holder of a European put option, the payoff at expiration is either zero or  $X - S_T$ . If interest rates increase, the value of the possible zero payoff is unaffected but the present value of the receipt of  $X$  dollars is lower. Consequently, rising interest rates decrease the value of the European put.

For an American put, exercise at any time after the present but before expiration reduces the effect of higher interest rates but does not eliminate it. Hence, American puts are negatively related to interest rates.

Note that for both American calls and puts, the effect of exercising immediately is neutral with respect to interest rates. We can easily see this by simply remembering that an option that is immediately exercised is worth  $S_T - X$  for a call and  $X - S_T$  for a put. There is no interest rate effect at all. In fact, an immediately exercisable option is really not an option in that it instantly turns into either the asset, if a call, or a short position in the asset, if a put, or the cash equivalent if the contract provides for settlement in cash.

There are several other explanations for the effect of interest rates on option prices. Most rely on the idea that the call is a leveraged transaction that substitutes for a stock margin trade and that the put is like an insurance policy. They lead to the same conclusion.

# 2.11 THE EFFECT OF VOLATILITY ON OPTION PRICES

If it is not already intuitively obvious, it is simple to demonstrate that a call option on an asset with higher volatility will be worth more, all else equal. For example, consider an option with any expiration except immediate. The options can be European or American.

Let the exercise price be  $X$  and the underlying asset price be  $S$ . Let us specify that the underlying can make only two moves, up or down. It can move up by  $\Delta S$  or down by  $\Delta S$ . Thus, its new price is either  $S + \Delta S$  or  $S - \Delta S$ . Let us specify that if the up move occurs, the option expires in-the-money, is exercised, and, therefore, pays off  $S + \Delta S - X$ . If it moves down, the option expires out-of-the-money, and is, therefore, not exercised and worth zero.

It is easy to treat the value of  $\Delta S$  as a good measure of the volatility of the underlying. The greater is  $\Delta S$ , the more volatile is the asset. Suppose that we increase the volatility by making  $\Delta S$  be a bit larger. Let us use the factor  $\Delta^{*}S$  to represent a higher volatility. In that case, the payoff of the option will be  $S + \Delta^{*}S$  in one outcome and zero in the other. We can see that the in-the-money outcome is higher, and the out-of-the-money outcome is the same as when the volatility was  $\Delta S$ . We also see that these outcomes occur in the same corresponding conditions as when the volatility was lower. A similar argument applies for puts.

Hence, it should be quite clear that higher volatility leads to a higher option value. This result will hold regardless of whether there are dividends. In addition, because an American call need not be exercised early, it can be made to produce the same payoffs as a European call. Hence, the right to exercise early does not impair the positive effect of volatility.

# 2.12 THE BUILDING BLOCKS OF EUROPEAN OPTIONS

There are two types of options that can be seen as the building blocks of standard European options, and it is useful to introduce them in this chapter. One type is called a binary option or digital option, owing to the fact that there are only two possible payoffs, 0 or 1.

To create the building blocks of a standard European option, we first introduce an option that is quite different from a standard European option and has multiple possible payoffs. This instrument is called an asset-or-nothing option. If the underlying asset value at expiration exceeds the exercise price, an asset-or-nothing call option pays the asset. Otherwise, it pays nothing. If the underlying asset value at expiration is below the exercise price, an asset-or-nothing put pays the asset and nothing otherwise. This type of option is obviously not binary or digital, but it is covered with binary or digital options, because it complements them to form a standard European option.

The second type of option is called a cash-or-nothing option. If the underlying asset value at expiration exceeds the exercise price, a cash-or-nothing call option pays a fixed amount of money and zero otherwise. If the underlying asset value at expiration is less than the exercise price, a cash-or-nothing put option pays a fixed amount of money and zero otherwise. The standard type of cash-or-nothing option pays $1, or one other currency unit, or it pays nothing. Hence, it is often called a binary option or a digital option.

The standard European call option can be viewed as a long position in an asset-nothing call and a short position in  $X$  cash-or-nothing calls where the exercise prices of the asset-or-nothing option and the cash-or-nothing option are both  $X$ :

$$
S _ {T} > X
$$

Long asset-or-nothing call pays  $S_{T}$ .

Short  $X$  cash-or-nothing calls pay  $-X$ .

Total of  $S_{T} - X$

$$
S _ {T} \leq X
$$

Long asset-or-nothing call pays 0.

Short  $X$  cash-or-nothing calls pay  $-0$ .

Total of 0

As you can see, this creates a payoff identical to the European call option with strike of  $X$ . Similarly, a standard European put can be decomposed into a long position in  $X$  cash-or-nothing puts and a short position in an asset-or-nothing put, both options struck at  $X$ :

$$
S _ {T} > X
$$

Short asset-or-nothing call pays 0.

Long  $X$  cash-or-nothing calls pay 0.

Total of 0

$$
S _ {T} \leq X
$$

Short asset-or-nothing call pays  $-S_{T}$

Long  $X$  cash-or-nothing calls pay  $X$ .

Total of  $X - S_{T}$

Asset-or-nothing and cash-or-nothing options can be thought of as the building blocks of a standard option. As such, these instruments are like atoms that make up many things with which we are most familiar. By analogy, as hydrogen and oxygen can be combined to make water, so various binary options can be combined to make other financial instruments. As you can probably imagine by now, if these fundamental options trade separately, their combined prices must equal that of a European call in the manner shown in this chapter.

# 2.13 RECAP AND PREVIEW

In this chapter we identified certain conditions that restrict option prices. For example, we covered upper and lower limits, the relationships between options differing by exercise price or time to expiration, and we derived the relationship between put and call option prices. We also covered the effect of interest rates and volatility on option prices. These results do not identify specific option prices, but they do give us restrictions on option prices and, thereby, enable us to narrow down prices so that we can say more than simply that prices are nonnegative.

In Chapter 3, we shall take a step away from derivatives and provide a review of some of the general mathematical results that we need to recall from previous courses. This review will be foundational material from what is hopefully previously taken math courses. You may actually just need to skim over it.

# QUESTIONS AND PROBLEMS

1 In your own words, define arbitrage.  
2 Based on the following illustration of two instruments (1 and 2) and two points in time (0 and 1), design an arbitrage strategy. Defend your answer by computing cash flows at both points in time.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/45fa54f9b982cca69e15582a096bbfa66b6bf4af962ea320ddbf6df3155e11a3.jpg)

3 This problem, as well as the next one, explores American put lower boundary violations. Consider the following inputs: Suppose the stock price is  $S_{t} = 95$ , strike price is  $X = 100$ , risk-free interest rate is  $r_{c} = 5.0\%$  (continuously compounded, annualized, applies to both maturities—option and dividend), time to maturity is one year, a 4.75 dividend will be paid in one month, and the quoted American put price is 4.95. Identify the arbitrage opportunity and illustrate how it would be captured.  
4 Consider the same inputs as the previous problem, but now let the dividend amount increase to 4.9875 per share paid in one month and the quoted put price be 5.04. Again, the stock price is  $S_{t} = 95$ , the strike price is  $X = 100$ , the risk-free interest rate is  $r_{c} = 5.0\%$ , and the time to maturity is one year. Identify the arbitrage opportunity and illustrate how it would be captured.  
5 This problem as well as the next one explores American put-call parity violations. Consider the following inputs: Suppose the stock price is  $S_{t} = 100$ , strike price is  $X = 100$ , risk-free interest rate is  $r_{c} = 5.0\%$  (continuously compounded, annualized, applies to both maturities—option and dividend), time to maturity is six months, a dividend of 1 will be paid in three months, and the quoted American put price is 6.02. If the quoted American call price is 4.98, identify the arbitrage opportunity and illustrate how it would be captured.  
6 Again, consider the same inputs as the previous problem except now the American call price is 8.54. Identify the arbitrage opportunity and illustrate how it would be captured.

# NOTES

1. There is some debate on whether to use trading days rather than calendar days. In the US, there are approximately 252 trading days in a year.  
2. We are also making a subtle assumption that the asset incurs no costs to hold. At one time, many securities had costs to hold and store, owing to the fact that physical certificates were issued, but that is no longer true as securities are now almost exclusively issued in electronic form. Most commodities such as oil and gold would incur storage costs, and these costs would factor into the pricing models, but we shall ignore these until we get to pricing forwards and futures much later in the book.  
3. If there are costs involved in doing the trades, the prices will be pushed to near equality, such that transaction costs would discourage further exploitation of any small remaining price difference.  
4. We assume continuous compounding and annualized rate  $(r_c)$  and express the time to expiration as a fraction of a year  $(\tau)$ . Thus, the present value of 1.0 is  $e^{-r_c\tau}$ .  
5. We described what happens at expiration as involving a transaction in the underlying. Some option contracts are written to provide cash settlement, meaning that instead of actually buying or selling the underlying, the short pays the long a cash settlement, which is equal to the exercise values as given by Equations (2.4) and (2.5).  
6. Throughout this book, we assume positive risk-free rates.  
7. We skipped calling our portfolios C and D, so that you would not confuse C for a call and because we use  $D$ , as the present value of the dividends paid over the life of the option.  
8. Clearly, we could have also assumed no dividends, so the arguments here imply that there are dividends on the underlying.  
9. A function is convex if a weighted average of two points is greater than a point in between the two points. Technically the fact that we have an inequality means that the option price function might not be convex at some point, but it will generally be the case that convexity holds. It will fail to hold only in the extreme case when all of the options are very deep-in-the-money or deep out-of-the-money.  
10. Of course, we can again make various algebraic arrangements to put any of the instruments in the middle of the two inequalities to put bounds on their prices.


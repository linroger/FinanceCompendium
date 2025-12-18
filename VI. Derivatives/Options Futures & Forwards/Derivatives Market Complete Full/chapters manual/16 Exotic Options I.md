---
title: "Chapter 16 - Exotic Options I"
aliases:
  - Exotic Options
  - Nonstandard Options
parent_directory: Derivatives Market Complete Full/chapters manual
cssclasses: academia
---

# Exotic Options I

# I. INTRODUCTION

Suppose that XYZ Corp., a dollar-based multinational corporation with sizable European operations, has a large monthly inflow of euros that are eventually converted to dollars. XYZ is considering the purchase of 1-year put options as insurance against a fall in the euro but is also interested in exploring alternatives. In thinking about how to hedge this position, you might reason as follows: "A standard 1-year put option would hedge the firm against the level of the euro on the one day the option expires. This hedge would have significant basis risk since the price at expiration could be quite different from the average price over the year. Buying a strip of put options in which one option expires every month would have little basis risk but might be expensive. Over the course of the year what really matters is the average exchange rate over this period; the ups and downs around the average rate cancel out by definition."

This train of thought leads you to construct a new kind of option—based on the average price, rather than the price at a point in time—with a payoff that addresses a particular business concern: It provides a more precise hedge against the risk that matters, namely the average exchange rate. This example demonstrates that exotic options can solve a particular business problem in a way that standard options do not. Generally, an exotic option (or nonstandard option) is simply an option with some contractual difference from standard options. Although we will focus on hedging examples, these products can also be used to speculate.

It is not hard to invent new kinds of options. The challenge is to invent new options that are potentially attractive to buyers and that can be priced and hedged without too much difficulty. A market-maker can delta-hedge an option position. Thus the price of an option is equivalent to the cost of synthetically manufacturing the option. In particular, an option is fairly priced when there is a certain relationship among the Greeks of the option.

From Chapter 14 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

Options with exotic features can generally be priced and delta-hedged in the same way as ordinary options. As a consequence, exotic derivative products are quite common in practice and the technology for pricing and hedging them is well understood. In fact, since many such options are in common use, the term "exotic" is an anachronism. We will continue to use it, however.

The goal in this chapter is not to master the mathematical details of particular products, but rather to gain an intuitive understanding of the trade-offs in design and pricing. Consequently, most of the formulas appear in the chapter appendix.

Since exotic options are often constructed by tweaking ordinary options in minor ways, ordinary options are useful as benchmarks for exotics. To understand exotic options you should ask questions like these:

- How does the payoff of the exotic compare to that of a standard option?
- Can the exotic option be approximated by some portfolio of other options?
- Is the exotic option cheap or expensive relative to standard options? Understanding the economics of the option is a critical step in understanding its pricing and use.
- What is the rationale for the use of the exotic option?
- How easily can the exotic option be hedged? An option may be desirable to a customer, but it will not be sold unless the risk arising from market-making can be controlled.

# 2. ASIAN OPTIONS

An Asian option has a payoff that is based on the average price over some period of time. An Asian option is an example of a path-dependent option, which means that the value of the option at expiration depends upon the path by which the stock arrived at its final price. Such an option has the potential to solve XYZ's hedging problem.

There are many practical applications in which we average prices. In addition to cases where the firm cares about the average exchange rate (as with XYZ), averaging is also used when a single price at a point in time might be subject to manipulation or price swings induced by thin markets. Bonds convertible into stock, for example, often base the terms of conversion on the average stock price over a 20-day period at the end of the bond's life. Settlement based on the average is called an Asian tail, since the averaging occurs only at the termination of the contract.

As we will see, Asian options are worth less at issuance than otherwise equivalent ordinary options. The reason is that the averaged price of the underlying asset is less volatile than the asset price itself, and an option on a lower volatility asset is worth less.

# XYZ's Hedging Problem

Let's think more about XYZ's currency hedging problem. Suppose that XYZ has a monthly euro inflow of €100m, reflecting revenue from selling products in Europe. Its costs, however, are primarily fixed in dollars. Let  $x_{i}$  denote the dollar price of a euro in month  $i$ . At the end of the year, the converted amount in dollars is

$$
\in 1 0 0 \mathrm {m} \times \sum_ {i = 1} ^ {1 2} x _ {i} e ^ {r (1 2 - i) / 1 2} \tag {1}
$$

We have numerous strategies available for hedging the end-of-year cash flow. Here are a few obvious ones:

- Strip of forward contracts: Sell euro forward contracts maturing each month over the year. The premium of this strategy is zero.
- Euro swap: Swap euros for dollars. Except for the timing of cash flows, a swap produces the same result as hedging with the strip of forwards. A swap also has a zero premium.
- Strip of puts: Buy 12 put options on €100m, each maturing at the end of a different month. The cost is the 12 option premiums.

The difference between the forward and option strategies is the ability to profit from a euro appreciation, but we pay a premium for the possibility of earning that profit. You can probably think of other strategies as well.

The idea of an Asian option stems from expression (1): What we really care about is the future value of the sum of the converted cash flows. This in turn depends on the sum of the month-end exchange rates. If for simplicity we ignore interest, what we are trying to hedge is

$$
\sum_ {i = 1} ^ {1 2} x _ {i} = 1 2 \times \left(\frac {\sum_ {i = 1} ^ {1 2} x _ {i}}{1 2}\right) \tag {2}
$$

The expression in parentheses is the month-end arithmetic average exchange rate, which motivates the idea of an option on the average.

# Options on the Average

As a logical matter there are eight basic kinds of Asian options, depending upon whether the option is a put or a call, whether the average is computed as a geometric or arithmetic average, and whether the average asset price is used in place of the price of the underlying asset or the strike price. Here are details about some of these alternatives.

The Definition of the Average. It is most common in practice to define the average as an arithmetic average. Suppose we record the stock price every  $h$  periods from time 0 to  $T$ ; there are then  $N = T / h$  periods. The arithmetic average is defined as

$$
A (T) = \frac {1}{N} \sum_ {i = 1} ^ {N} S _ {i h} \tag {3}
$$

While arithmetic averages are typically used, they are mathematically inconvenient.3 It is computationally easier, but less common in practice, to use the geometric average stock price, which is defined as

$$
G (T) = \left(S _ {h} \times S _ {2 h} \times \dots \times S _ {N h}\right) ^ {\frac {1}{N}} \tag {4}
$$

The following example illustrates the difference between an arithmetic and geometric average.

Example I. Suppose that we compute the average based on quarterly stock prices over 1 year. We observe stock prices of $55, $72, \$61, and \$85. The arithmetic average is

$$
\frac {\mathbb {S} 5 5 + \mathbb {S} 7 2 + \mathbb {S} 6 1 + \mathbb {S} 8 5}{4} = \mathbb {S} 6 8. 2 5 0
$$

The geometric average is

$$
\left(\mathbb {S} 5 5 \times \mathbb {S} 7 2 \times \mathbb {S} 6 1 \times \mathbb {S} 8 5\right) ^ {0. 2 5} = \mathbb {S} 6 7. 3 1 5
$$

The chapter appendix has (relatively simple) formulas for pricing European options based on the geometric average.

Whether the Average Is Used as the Asset Price or the Strike. The payoff at maturity can be computed using the average stock price either as the price of the underlying asset or as the strike price. When the average is used as the asset price, the option is called an average price option. When the average is used as the strike price, the option is called an average strike option. Here are the four variants of options based on the geometric average:

$$
\text {G e o m e t r i c a v e r a g e p r i c e c a l l} = \max  [ 0, G (T) - K ] \tag {5}
$$

$$
\text {G e o m e t r i c a v e r a g e p r i c e p u t} = \max  [ 0, K - G (T) ] \tag {6}
$$

$$
\text {G e o m e t r i c a v e r a g e s t i k e c a l l} = \max  [ 0, S _ {T} - G (T) ] \tag {7}
$$

$$
\text {G e o m e t r i c a v e r a g e s t r i k e p u t} = \max  [ 0, G (T) - S _ {T} ] \tag {8}
$$

The terms "average price" and "average strike" refer to whether the average is used in place of the asset price or the strike price. In each case the average could also be computed as an arithmetic average, giving us our eight basic kinds of Asian options.

# Comparing Asian Options

Table 1 shows values of geometric average price calls and puts. If the number of averages,  $N$ , is 1, then the average is the final stock price. In that case the average price call is an ordinary call.

Intuitively, averaging reduces the volatility of  $G(T)$  relative to the volatility of the stock price at expiration,  $S_T$ , and thus we should expect the value of an average price option to decrease with the number of stock prices used to compute the average. This is evident in Table 1, which shows the decline in value of the average price option as the frequency of averaging increases.

Premiums of at-the-money geometric average price and geometric average strike calls and puts, for different numbers of prices averaged,  $N$ . The case  $N = 1$  for the average price options is equivalent to Black-Scholes values. Assumes  $S = \$ 40,  $K = \40$ ,  $r = 0.08$ ,  $\sigma = 0.3$ ,  $\delta = 0\$ , and  $t = 1$ .

TABLEI

<table><tr><td></td><td colspan="2">Average Price ($)</td><td colspan="2">Average Strike ($)</td></tr><tr><td>N</td><td>Call</td><td>Put</td><td>Call</td><td>Put</td></tr><tr><td>1</td><td>6.285</td><td>3.209</td><td>0.000</td><td>0.000</td></tr><tr><td>2</td><td>4.708</td><td>2.645</td><td>2.225</td><td>1.213</td></tr><tr><td>3</td><td>4.209</td><td>2.445</td><td>2.748</td><td>1.436</td></tr><tr><td>5</td><td>3.819</td><td>2.281</td><td>3.148</td><td>1.610</td></tr><tr><td>10</td><td>3.530</td><td>2.155</td><td>3.440</td><td>1.740</td></tr><tr><td>50</td><td>3.302</td><td>2.052</td><td>3.668</td><td>1.843</td></tr><tr><td>1000</td><td>3.248</td><td>2.027</td><td>3.722</td><td>1.868</td></tr><tr><td>∞</td><td>3.246</td><td>2.026</td><td>3.725</td><td>1.869</td></tr></table>

Table 1 also shows that, in contrast to average price calls, the price of an average strike call increases with the number of averaging periods. The average of stock prices between times 0 and  $T$  is positively correlated with the stock price at time  $T$ ,  $S_{T}$ . If  $G(T)$  is high,  $S_{T}$  is likely to be high as well. More frequent averaging makes the average strike option more valuable because it reduces the correlation between  $S_{T}$  and  $G(T)$ . To see this pattern, consider what happens if the average is computed only using the final stock price. The value of the call is

$$
\max  [ 0, S _ {T} - G (T) ]
$$

If only one stock price observation is used,  $G(T) = S_T$ , and the value of the option is zero for sure. With more frequent averaging the correlation is reduced and the value of the average strike option increases.

When would an average strike option make sense? Such an option pays off when there is a difference between the average asset price over the life of the option and the asset price at expiration. Such an option could be used for insurance in a situation where we accumulated an asset over a period of time and then sold the entire accumulated position at one price.

# An Asian Solution for XYZ

If XYZ receives euros and its costs are fixed in dollars, profits are reduced if the euro depreciates—that is, if the number of dollars received for a euro is lower. We could construct an Asian put option that puts a floor,  $K$ , on the average exchange rate received. The per euro payoff of this option would be

$$
\max  \left(0, K - \frac {1}{1 2} \sum_ {i = 1} ^ {1 2} x _ {i}\right) \tag {9}
$$

Comparison of costs for alternative hedging strategies for XYZ. The price in the second row is the sum of premiums for puts expiring after 1 month, 2 months, and so forth, out to 12 months. The first, third, and fourth row premiums are calculated assuming 1 year to maturity, and then multiplied by 12. Assumes the current exchange rate is  $0.9 / \epsilon$ , option strikes are  $0.9$ ,  $r_{\mathrm{S}} = 6\%$ ,  $r_{\mathrm{E}} = 3\%$ , and dollar/euro volatility is  $10\%$ .

TABLE 2

<table><tr><td>Hedge Instrument</td><td>Premium ($)</td></tr><tr><td>Put option expiring in 1 year</td><td>0.2753</td></tr><tr><td>Strip of monthly put options</td><td>0.2178</td></tr><tr><td>Geometric average price put</td><td>0.1796</td></tr><tr><td>Arithmetic average price put</td><td>0.1764</td></tr></table>

For example, if we wanted to guarantee an average exchange rate of \$0.90 per euro, we would set K = \$0.9. If the average exchange rate was less than that, we would be paid the difference between 0.9 and the average. Since we repatriate €1.2b over the course of a year, we would buy contracts covering €1.2b.

Do you recognize the kind of option described by equation (9)? The average is arithmetic, the average is used in place of the asset price, and it is a put. Hence, it is an arithmetic average price Asian put.

There are other hedging strategies XYZ could use. Table 2 lists premiums for several alternatives. The single put expiring at year-end is the most expensive option. As discussed earlier, it has basis risk because the year-end exchange rate could be quite different from the average. Two other strategies have significantly less basis risk: the strip of European puts expiring monthly and the arithmetic Asian put. The strip of puts protects against low exchange rates month-by-month, whereas the Asian option protects the 12-month average. The Asian put is cheaper since there will be situations in which some of the individual puts are valuable (for example, if the exchange rate takes a big swing in one month that is reversed subsequently), but the Asian put does not pay off. The geometric option hedges less well than the arithmetic option since the quantity being hedged (equation (1)) is an arithmetic, not a geometric, average.

Finally, be aware that this example ignores several subtleties. The option strikes, for example, might be made to vary with the forward curve for the exchange rate. The effect of interest in equation (1) could also be taken into account.

# 3. BARRIER OPTIONS

A barrier option has a payoff depending upon whether, over the life of the option, the price of the underlying asset reaches a specified level, called the barrier. Barrier puts and calls either come into existence or go out of existence the first time the asset price reaches the barrier. If they are in existence at expiration, they are equivalent to ordinary puts and calls.

# Box I: Are All Barrier Options Created Equal?

One difficulty in designing a barrier option is defining the barrier. What does it mean for the S&P 500 index, for example, to "hit" the level 1500? Does it mean that the closing price exceeds 1500? Does it mean that, at some point during the day, the reported index exceeds that level? If so, whose report of the price is to be used?

What about manipulation of the index? Suppose the index reaches 1499.99 and then there is a large trade in a single stock, pushing the index to 1500.01. Is it possible that someone entered a buy order with the intention of manipulating the index? Since either the buyer or seller could try to manipulate the price, it is common to define a barrier using a price average computed over some period of time. An average of this type is less easily manipulated. (Concern about manipulation is one reason for the use of Asian tails, often used in securities convertible into stock.)

Barrier options sold by different firms may use different definitions of the barrier. Thus, a company might find that the barrier option it bought from Bank A to offset the option it sold to Bank B is not really an offset, because the definition of the barrier for the two options is slightly different. Hsu (1997) discusses many of the practical problems that arise with barrier options.

It can be tricky to define what it means for the stock price to reach a barrier. See the box above for a discussion.

Since barrier puts and calls never pay more than standard puts and calls, they are no more expensive than standard puts and calls. Barrier options are another example of a path-dependent option.

Barrier options are widely used in practice. One appeal of barrier options may be their lower premiums, although the lower premium of course reflects a lower average payoff.

# Types of Barrier Options

There are three basic kinds of barrier options:

1. Knock-out options: These go out of existence (are "knocked-out") if the asset price reaches the barrier. If the price of the underlying asset has to fall to reach the barrier, the option is a down-and-out. If the price of the underlying asset has to rise to reach the barrier, the option is an up-and-out.
2. Knock-in options: These come into existence (are "knocked-in") if the barrier is touched. If the price of the underlying asset has to fall to reach the barrier, the option is a down-and-in. If the asset price has to rise to reach the barrier, it is an up-and-in.
3. Rebate options: These make a fixed payment if the asset price reaches the barrier. The payment can occur either at the time the barrier is reached, or at the time the option expires, in which case it is a deferred rebate. Rebate options can be either "up rebates" or "down rebates," depending on whether the barrier is above or below the current price.

# FIGURE I

Illustration of a price path where the initial stock price is  \$100 and the barrier is$ 75. At  $t = 0.5\$ , the stock hits the barrier.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/9cfcba039573d8c557471eddad99003f681669ed54b3d6c110d82f5a9afe13de.jpg)

Stock Price ($)

Figure 1 illustrates how a barrier option works. The stock price starts at around  \$100, ends at\$ 80, and hits the barrier of \$75 about halfway through the year. If the option were a 95-strike down-and-in put, the option would knock in and pay $15 ($95 - \$80) at expiration. If the option were a down-and-out put, it would be worthless at expiration. If the option were a down-and-in call, it would knock in at 75 but still be worthless at expiration because the stock price is below the strike price.

The important parity relation for barrier options is

$$
\text {K n o c k - i n ” o p t i o n ＋ ＂ K n o c k - o u t ＂ o p t i o n = O r d i n a r y o p t i o n} \tag {10}
$$

For example, for otherwise equivalent options, we have

$$
\text {D o w n - a n d - i n c a l l} + \text {D o w n - a n d - o u t c a l l} = \text {S t a n d a r d c a l l}
$$

Since these option premiums cannot be negative, this equation demonstrates directly that barrier options have lower premiums than standard options.

# Currency Hedging

Consider once again XYZ. Here we will focus on hedging only the cash flow occurring in 6 months to see how barrier puts compare to standard puts.

What kinds of barrier puts make sense in the context of XYZ's hedging problem? We are hedging against a decline in the exchange rate, which makes certain possibilities

TABLE 3

Premiums of standard, down-and-in, and up-and-out currency put options with strikes  $K$ . The column headed "standard" contains prices of ordinary put options. Assumes  $x_0 = 0.9$ ,  $\sigma = 0.1$ ,  $r_{\S} = 0.06$ ,  $r_{\in} = 0.03$ , and  $t = 0.5$ .

<table><tr><td rowspan="2">Strike ($)</td><td rowspan="2">Standard ($)</td><td colspan="2">Down-and-In Barrier ($)</td><td colspan="2">Up-and-Out Barrier ($)</td><td rowspan="2">1.0500</td></tr><tr><td>0.8000</td><td>0.8500</td><td>0.9500</td><td>1.0000</td></tr><tr><td>K = 0.8</td><td>0.0007</td><td>0.0007</td><td>0.0007</td><td>0.0007</td><td>0.0007</td><td>0.0007</td></tr><tr><td>K = 0.9</td><td>0.0188</td><td>0.0066</td><td>0.0167</td><td>0.0174</td><td>0.0188</td><td>0.0188</td></tr><tr><td>K = 1.0</td><td>0.0870</td><td>0.0134</td><td>0.0501</td><td>0.0633</td><td>0.0847</td><td>0.0869</td></tr></table> less attractive. A down-and-out put would be worthless when we needed it. Similarly, an up-and-in put would provide insurance only if, prior to the exchange rate falling below the strike, the exchange rate had risen so the option could knock in.

This leaves down-and-ins and up-and-outs to consider. Table 3 presents prices of standard, down-and-in, and up-and-out puts with different strikes and different barriers. Consider first the row where  $K = 0.8$ . Notice that all options appear to have the same price. It is a useful exercise in the logic of barrier options to understand why they appear equally priced. In fact, here is an exercise to solve before reading further: Can you deduce which of the six premiums with  $K = 0.8$  are exactly equal and which are merely close?

The option prices in Table 3 tell us something about the relative likelihood of different scenarios for the exchange rate. The ordinary put premium when the strike is 0.8 reflects the (risk-neutral) probability that the exchange rate will be below 0.8 at maturity. Both of the down-and-ins, having strikes below the starting exchange rate of 0.9 and at least 0.8, will necessarily have knocked in should the exchange rate fall below 0.8. Described differently, a down-and-in put with a barrier above the strike is equivalent to an ordinary put. Therefore, the first three option premiums in the  $K = 0.8$  row are identical.

Now consider the knock-out puts with  $K = 0.8$ . The difference between the ordinary put and the up-and-out put with a 0.95 barrier is that sometimes the exchange rate will drift from 0.9 to above 0.95, and then below 0.8. In this case, the ordinary put will have a payoff but the knock-out put will not.

How likely is this scenario? The low premium of 0.0007 for the ordinary put tells us that it is relatively unlikely the exchange rate will drift from 0.9 to 0.8 over 6 months. It is even less likely that the exchange rate will hit 0.95 in those cases when it does fall below 0.8. A knock-out may be likely, but it is rare to have a knock-out occur in those cases when an ordinary put with a strike of 0.8 would pay off. Thus, the knock-out feature is not subtracting much from the value of the option. This argument is even stronger for the knock-out barriers of 1.0 and 1.05. Nevertheless, since there is a chance these options will knock out and then end up in-the-money, the premiums are less than for the knock-in puts and are increasing with the barrier. Thus, the up-and-out prices in the  $K = 0.8$  row are slightly less than the price of an ordinary put.

When the strike price is 1.0, the up-and-outs with barriers of 1.0 and 1.05 have substantially all the value of the ordinary put with the same strike. The interpretation is that most of the value of the puts comes from scenarios in which the option remains in-the-money; in those scenarios in which the option knocks out, the exchange rate on average does not fall enough for the option to be valuable.

# 4. COMPOUND OPTIONS

A compound option is an option to buy an option. If you think of an ordinary option as an asset—analogous to a stock—then a compound option is similar to an ordinary option.

Compound options are a little more complicated than ordinary options because there are two strikes and two expirations, one each for the underlying option and for the compound option. Suppose that the current time is  $t_0$  and that we have a compound option which at time  $t_1$  will give us the right to pay  $x$  to buy a European call option with strike  $K$ . This underlying call will expire at time  $T > t_1$ . Figure 2 compares the timing of the exercise decisions for this compound option with the exercise decision for an ordinary call expiring at time  $T$ .

If we exercise the compound call at time  $t_1$ , then the price of the option we receive is  $C(S, K, T - t_1)$ . At time  $T$ , this option will have the value  $\max(0, S_T - K)$ , the same as an ordinary call with strike  $K$ . At time  $t_1$ , when the compound option expires, the value of the compound option is

$$
\max  \left[ C \left(S _ {t _ {1}}, K, T - t _ {1}\right) - x, 0 \right]
$$

We only exercise the compound option if the stock price at time  $t_1$  is sufficiently great that the value of the call exceeds the compound option strike price,  $x$ . Let  $S^*$  be the critical stock price above which the compound option is exercised. By definition,  $S^*$  satisfies

$$
C \left(S ^ {*}, K, T - t _ {1}\right) = x \tag {11}
$$

# FIGURE 2

The timing of exercise decisions for a compound call option on a call compared with an ordinary call option.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/ec61252fe11e5828b344a13b84ec00c92280506882d18d5ee822fb0e4c7d308e.jpg)

Ordinary call

Call to buy call (compound option)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/ef4c2c6cb596b18ee6fe20f078b7e8e12e6f7b22985b4ecab6797805430432be.jpg)

Buy compound option

Decision to exercise compound option

Expiration of underlying option (if compound option was exercised)

The compound option is exercised for  $S_{t_1} > S^*$ .

Thus, in order for the compound call to ultimately be valuable, there are two events that must take place. First, at time  $t_1$  we must have  $S_{t_1} > S^*$ ; that is, it must be worthwhile to exercise the compound call. Second, at time  $T$  we must have  $S_T > K$ ; that is, it must be profitable to exercise the underlying call. Because two events must occur, the formula for a compound call contains a bivariate cumulative normal distribution, as opposed to the univariate distribution in the Black-Scholes formula.

Formulas for the four compound options—an option to buy a call (CallOnCall), an option to sell a call (PutOnCall), an option to buy a put (CallOnPut), and an option to sell a put (PutOnPut)—are in the chapter appendix. Valuing a compound option is different from valuing an ordinary option in part for mathematical rather than for conceptual reasons. The Black-Scholes formula assumes that the stock price is lognormally distributed. However, the price of an option—because there is a significant probability that it will be worthless—cannot be lognormally distributed. Thus, while an option on an option is conceptually similar to an option on a stock, it is mathematically different. The trick in deriving a formula for the price of a compound option is to value the option based on the value of the stock, which is lognormally distributed, rather than the price of the underlying option, which is not lognormally distributed.

# Compound Option Parity

As you might guess, there are parity relationships among the compound option prices. Suppose we buy a call on a call, and sell a put on a call, where both have the same strike, underlying option, and time to maturity. When the compound options expire, we will acquire the underlying option by paying the strike price  $x$ . If the stock price is high, we will exercise the compound call, and if the stock price is low, the compound put will be exercised and we will be forced to buy the call. Thus, the difference between the call on call and put on call premiums, plus the present value of  $x$ , must equal the premium to acquire the underlying option outright. That is,

$$
\begin{array}{l} \text {C a l l O n C a l l} (S, K, x, \sigma , r, t _ {1}, t _ {2}, \delta) - \text {P u t O n C a l l} (S, K, x, \sigma , r, t _ {1}, t _ {2}, \delta) + x e ^ {- r t _ {1}} \\ = \operatorname {B S C a l l} (S, K, \sigma , r, t _ {2}, \delta) \tag {12} \\ \end{array}
$$

An analogous relationship holds for puts.

# Options on Dividend-Paying Stocks

It is possible to price American options on dividend-paying stocks using the binomial model. It turns out that the compound option model also permits us to price an option on a stock that will pay a single discrete dividend prior to expiration.

Suppose that at time  $t_1$  the stock will pay a dividend,  $D$ . We have a choice of exercising the option at the cum-dividend price,  $S_{t_1} + D$ , or holding the call, which will have a value reflecting the ex-dividend price,  $S_{t_1}$ . Thus, at  $t_1$ , the value of the call option is the greater of its exercise value,  $S_{t_1} + D - K$ , and the option valued at the ex-dividend price,  $C(S_{t_1}, T - t_1)$ :

$$
\max  \left[ C \left(S _ {t _ {1}}, T - t _ {1}\right), S _ {t _ {1}} + D - K \right] \tag {13}
$$

By put-call parity, at time  $t_1$  we can write the value of the ex-dividend unexercised call as

$$
C (S _ {t _ {1}}, T - t _ {1}) = P (S _ {t _ {1}}, T - t _ {1}) + S _ {t _ {1}} - K e ^ {- r (T - t _ {1})}
$$

Making this substitution in equation (13) and rewriting the result, we obtain

$$
\left. S _ {t _ {1}} + D - K + \max  \left(P \left[ S _ {t _ {1}}, T - t _ {1} \right] - \left[ D - K \left(1 - e ^ {- r \left(T - t _ {1}\right)}\right) \right], 0\right) \right. \tag {14}
$$

The value of the option is the present value of this expression.

Equation (14) tells us that we can value a call option on a dividend-paying stock as the sum of the following:

1. The stock, with present value  $S_0$ . ( $S_0$  is the present value of  $S_{t_1} + D$ .)
2. Less the present value of the strike price,  $Ke^{-rt_1}$ .
3. Plus the value of a compound option—a call option on a put option—with strike price  $D - K(1 - e^{-r(T - t_1)})$  and maturity date  $t_1$ , permitting the owner to buy a put option with strike price  $K$  and maturity date  $T$ .

In this interpretation, exercising the compound option corresponds to keeping the option on the stock unexercised. To see this, notice that if we exercise the compound option in equation (14), we give up the dividend and gain interest on the strike in order to acquire the put. The total is

$$
S _ {t _ {1}} + P (S _ {t _ {1}}, T - t _ {1}) - K e ^ {- r (T - t _ {1})}
$$

If we do not exercise the compound option, we receive the stock plus dividend, less the strike:

$$
S _ {t _ {1}} + D - K
$$

This valuation exercise provides a way to understand early exercise. We can view exercising an American call as not exercising the compound option to buy a put in equation (14). The cost of not exercising is that we lose the dividend, less interest on the strike. This is exactly the intuition governing early exercise.

Example 2. Suppose a stock with a price of  \$100 will pay a\$ 5 dividend in 91 days (t₁ = 0.2493). The prepaid forward price for the stock, assuming receipt of the share after the dividend (at the time denoted  $0.2493^{+}$ ) is

$$
F _ {0, 0. 2 4 9 3 ^ {+}} ^ {P} (S _ {0}) = \\ \100 - \5 \times e ^ {- 0. 0 8 \times 0. 2 4 9 3} = \\ \95.0987
$$

An option with a strike price of 90 will expire in 152 days (T = 0.4164). Assume σ = 0.3 and r = 0.08. The value of a European call on the stock is

$$
\operatorname {B S C a l l} (9 5. 0 9 8 7, \$ 9 0, 0. 3, 0. 0 8, 0. 4 1 6 4, 0) = \$ 1 1. 7 6 4
$$

The value of an American call is computed as the present value of 14, with the exercise price for the compound option equal to  $5 - 90(1 - e^{-0.08 \times (0.4164 - 0.2493)}) =$

3.8047, and time to maturity 0.2493 for the compound option and 0.4164 for the underlying option. The price of the compound option is

$$
\begin{array}{l} \text {C a l l O n P u t} (S, K, x, \sigma , r, t _ {1}, T, \delta) \\ = \text {C a l l O n P u t} (9 5. 0 9 8 7, 9 0, 3. 8 0 4 7, 0. 3 0, 0. 0 8, 0. 2 4 9 3, 0. 4 1 6 4, 0) = \$ 1. 7 5 5 2 \\ \end{array}
$$

Thus, the value of the American option is, $^6$  from equation (14), the cum-dividend stock price, less the present value of the strike, plus the value of the option to buy a put by paying the dividend less interest on the strike:

$$
\$ 100 - \$ 90 e ^ {- 0.2493 \times 0.08} + \$ 1.7552 = \$ 13.5325
$$

The compound option should be exercised if the ex-dividend stock price is below  $89.988.$  Since exercise of the compound option is equivalent to leaving the original call unexercised, the original call should be exercised at time  $t_1 = 0.2493$  if the stock price exceeds  $\$89.988$ .

# Currency Hedging with Compound Options

Compound options provide yet another variation on possible currency-hedging strategies. Instead of buying a 6-month put option on the euro, we could buy a call option on a put option. In effect, this compound option is giving us the opportunity to wait and see what happens.

Suppose that after 3 months we will decide whether to buy the put option. Here is one way to structure such a transaction. We could figure out what premium a 3-month put with a strike of  \$0.9 would have, if the exchange rate were still at 0.9. The Black-Scholes formula tells us that a 3-month at-the-money option with a strike of\$ 0.9 would have a premium of \$0.0146. (This value compares with the premium of \$0.0188 for the 6-month option from Table 3.)

Now we can use the compound pricing formula to price a call on a put, setting the strike to equal  \$0.0146. The price of this compound call is\$ 0.0093. So by paying less than two-thirds the premium of the 6-month at-the-money option, we can buy an option that permits us to pay 0.0146 for a 3-month option. By selecting this strike, we have constructed the option so that we will exercise it if the exchange rate is below 0.9. If the exchange rate goes up, we will not exercise the option and save the premium. If the exchange rate goes down, we will acquire an in-the-money option for the price of an at-the-money option. Many other structures are possible.

# 5. GAP OPTIONS

A call option pays  $S - K$  when  $S > K$ . The strike price,  $K$ , here serves to determine both the range of stock prices where the option makes a payoff (when  $S > K$ ) and also the size of the payoff ( $S - K$ ). However, we could imagine separating these two functions of the strike

# FIGURE 3

A gap call, paying S - \$90 when S > \$100.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/b19900032e8f7868b80ec311a28bd7731d59292c9bb0a465b982c19f384da9bd.jpg)

Payoff ($)

Stock Price ($) price. Consider an option that pays  $S - 90$  when  $S > 100$ . Note that there is a difference between the prices that govern when there is a payoff ( \$100) and the price used to determine the size of the payoff (\$ 90). This difference creates a discontinuity—or gap—in the payoff diagram, which is why the option is called a gap option.

Figure 3 shows a gap call option with payoff  $S - 90$  when  $S > 100$ . The gap in the payoff occurs when the option payoff jumps from  $0 to$ 10 as a result of the stock price changing from  $99.99 to$ 100.01.

Figure 4 depicts a gap put that pays  $90 - S$  when  $S < 100$ . This option demonstrates that a gap option can be structured to require, for some stock prices, a payout from the option holder at expiration. You should compare Figure 4 with Figure 12—the gap put looks very much like a paylater strategy. $^{8}$  Note that the owner of the put in Figure 4 is required to exercise the option when  $S < 100$ . $^{9}$

The pricing formula for a gap call, which pays  $S - K_{1}$  when  $S > K_{2}$ , is obtained by a simple modification of the Black-Scholes formula. Let  $K_{1}$  be the strike price (the price the option holder pays at expiration to acquire the stock) and  $K_{2}$  the payment trigger (the price at which payment on the option is triggered). The formula is then

$$
C \left(S, K _ {1}, K _ {2}, \sigma , r, T, \delta\right) = S e ^ {- \delta T} N \left(d _ {1}\right) - K _ {1} e ^ {- r T} N \left(d _ {2}\right) \tag {15}
$$

$$ d _ {1} = \frac {\ln (S e ^ {- \delta T} / K _ {2} e ^ {- r T}) + \frac {1}{2} \sigma^ {2} T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

The modification to the put formula is similar.10

# FIGURE 4

A gap put, paying \$90 - S when S < \$100.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/34fab01c80a139cd16b40a585a72746b7a9bba246e1fa100b51959069426c5c9.jpg)

Payoff ($)

Stock Price ($)

TABLE 4

Premiums of ordinary and gap put options with strikes  $K_{1}$  and payment triggers  $K_{2}$ . Assumes  $x_{0} = 0.9$ ,  $\sigma = 0.1$ ,  $r_{\S} = 0.06$ ,  $r_{\in} = 0.03$ , and  $t = 0.5$ .

<table><tr><td rowspan="2">Strike (K1)($)</td><td rowspan="2">Put ($)</td><td colspan="3">Payment Trigger (K2)($)</td></tr><tr><td>0.8</td><td>0.9</td><td>1.0</td></tr><tr><td>0.8000</td><td>0.0007</td><td>0.0007</td><td>-0.0229</td><td>-0.0888</td></tr><tr><td>0.9000</td><td>0.0188</td><td>0.0039</td><td>0.0188</td><td>-0.0009</td></tr><tr><td>1.0000</td><td>0.0870</td><td>0.0070</td><td>0.0605</td><td>0.0870</td></tr></table>

Returning to the XYZ currency hedging example, let's examine the use of gap options as a hedging instrument. The intuitive appeal of a gap option is that we can purchase insurance with which we are fully protected if the loss exceeds a certain amount.

Table 4 lists gap put premiums for different strikes and payment triggers. When the strike equals the payment trigger, the premium is the same as for an ordinary put. For a given strike, increasing the payment trigger reduces the premium. The reason is that when the payment trigger is above the strike, the option holder will have to make a payment to the option writer in some cases. For example, consider the case when the strike is  \$0.8 and the payment trigger is\$ 1. If the exchange rate is 0.95, the gap put holder is obligated to sell euros worth \$0.95 for only \$0.8, a loss of \$0.15. The option premium in this case is -\$0.0888, reflecting the possibility that the option buyer will end up making a payment at maturity to the option seller. A hedger believing it highly likely that the exchange rate would be below 0.8 might be willing to receive a premium in exchange for the risk that the exchange rate would end up between 0.8 and 1.0.

Note that for a given trigger,  $K_{2}$ , you can always find a strike,  $K_{1}$ , that will make the option premium zero. Thus, gap options permit us to accomplish something similar to the paylater strategy.

# 6. EXCHANGE OPTIONS

An exchange option—also called an outperformance option—is an option with the payoff

$$
\max  (0, S _ {T} - K _ {T})
$$ where  $K_{T}$  is the price of a risky asset. The option thus pays off only if the underlying asset with price  $S_{t}$  outperforms some benchmark asset with price  $K_{t}$ . (You can view an ordinary call as an outperformance option in which the stock has to outperform cash in order for the option to pay off.) The pricing formula for this kind of option is a simple variant of the Black-Scholes formula.


# European Exchange Options

Suppose an exchange call maturing  $T$  periods from today provides the right to obtain 1 unit of risky asset 1 in exchange for 1 unit of risky asset 2. (We could think of this as, for example, the right to obtain the Nikkei index by giving up the S&P 500.) Let  $S_{t}$  be the price of risky asset 1 and  $K_{t}$  the price of risky asset 2 at time  $t$ , with dividend yields  $\delta_{S}$  and  $\delta_{K}$ , and volatilities  $\sigma_{S}$  and  $\sigma_{K}$ . Let  $\rho$  denote the correlation between the continuously compounded returns on the two assets. The payoff to this option is

$$

\max  (0, S _ {T} - K _ {T})

$$

The formula for the price of an exchange option (see Margrabe, 1978) is

$$

\boxed {C (S, K, \sigma , \delta_ {K}, T, \delta_ {S}) = S e ^ {- \delta_ {S} T} N \left(d _ {1}\right) - K e ^ {- \delta_ {K} T} N \left(d _ {2}\right)} \tag {16}

$$ where


$$ d _ {1} = \frac {\ln (S e ^ {- \delta_ {S} T} / K e ^ {- \delta_ {K} T}) + \frac {1}{2} \sigma^ {2} T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

$$
\sigma = \sqrt {\sigma_ {S} ^ {2} + \sigma_ {K} ^ {2} - 2 \rho \sigma_ {S} \sigma_ {K}} \tag {17}
$$

The volatility,  $\sigma$ , is the volatility of the difference in the continuously compounded returns of  $S$  and  $K$  over the life of the option. This is sometimes called the "blended volatility." The pricing formula for the exchange option therefore turns out to be a simple variant of the Black-Scholes formula: The strike price is replaced by the price of the benchmark asset, the risk-free rate is replaced by the dividend yield on the benchmark asset, and the appropriate volatility is the volatility of the difference in continuously compounded returns on the two assets.

We can also interpret the pricing formula for an exchange option by considering the version of the Black-Scholes formula written in terms of prepaid forward prices. The expression  $Ke^{-\delta_K T}$  is the prepaid forward price for the strike asset. The formula for an infinitely lived American exchange option is in the chapter appendix.

By setting the dividend yields and volatility appropriately, equation (16) yields the formulas for ordinary calls and puts:

- With a call, we give up cash to acquire stock. The dividend yield on cash is the interest rate. Thus, if we set  $\delta_S = \delta$  (the dividend yield on stock),  $\delta_K = r$  (the risk-free rate), and  $\sigma_{K} = 0$  (asset 2 is risk-free), the formula reduces to the standard Black-Scholes formula for a call.
- With a put, we give up stock to acquire cash. Thus, if we set  $\delta_S = r$ ,  $\delta_K = \delta$  (the dividend yield on stock), and  $\sigma_S = 0$ , the formula reduces to the Black-Scholes formula for a put on stock. (Try this to verify that it works.)

Example 3. Consider an option for which the owner receives a share of Microsoft only if Microsoft outperforms the S&P 500 index. This is a Microsoft call with the appropriately scaled S&P index as the strike asset. On January 5, 2011, the price of Microsoft was  \$28 and the S&P Index was at 1276.56. Thus, one share of Microsoft had the same value as 28/1276.56 = 1/45.591 units of the S&P index. Microsoft's previous quarterly dividend had been\$ 0.16/share, for an annual dividend yield of about 2.286\%. The dividend yield on the S&P index was about 1.85\%. Their historical volatilities during 2010 had been 26.51\% (Microsoft) and 17.52\% (the S&P index) with a return correlation of 0.8361. The volatility of the relative prices,  $\sigma$ , is therefore

$$
\begin{array}{l} \sigma = \sqrt {0 . 2 6 5 1 ^ {2} + 0 . 1 7 5 2 ^ {2} - 2 \times . 8 3 6 1 \times 0 . 2 6 5 1 \times 0 . 1 7 5 2} \\ = 0. 1 5 2 6 \\ \end{array}
$$

Suppose the option is issued at-the-money, so it permits exchanging one share of Microsoft for 1/45.591 units of the S&P index. The price of a 1-year at-the-money outperformance call would be

$$
\operatorname {B S C a l l} (\mathbb {S} 2 8. 0 0, 1 2 7 5. 5 6 / 4 5. 5 9 1, 0. 1 5 2 6, 0. 0 1 8 5, 1, 0. 0 2 2 8 6) = \mathbb {S} 1. 6 0 9 5
$$

Because the S&P index is the strike asset, we replace the risk-free rate with the dividend yield on the index. By contrast, assuming a risk-free rate of  $0.5\%$ , a plain 1-year at-the-money call on Microsoft would be worth

$$
\operatorname {B S C a l l} (\mathbb {S} 2 8. 0 0, \mathbb {S} 2 8. 0 0, 0. 2 6 5 1, 0. 0 0 5, 1, 0. 0 2 2 8 6) = \mathbb {S} 2. 6 1 9 4
$$

The outperformance option is less expensive because the blended volatility is substantially less than Microsoft's volatility.

Problem 19 asks you to think about the circumstances under which XYZ might hedge currency risk using exchange options.

# CHAPTER SUMMARY

An exotic option is created by altering the contractual terms of a standard option. Exotic options permit hedging solutions tailored to specific problems and speculation tailored to particular views. Examples of exotic options include the following:

- Asian options have payoffs that are based on the average price of the underlying asset over the life of the option. The average price can be used in place of either the underlying asset (an average price option) or in place of the strike price (an average strike option). Averages can be arithmetic or geometric.
- Barrier options have payoffs that depend upon whether the price of the underlying asset has reached a barrier over the life of the option. These options can come into existence (knock-in options) or go out of existence (knock-out options) when the barrier is reached.
- Compound options are options on options: Put or call options with put or call options as the underlying asset.
- Gap options are options where the option payoff jumps at the price where the option comes into the money.
- Exchange options are options that have risky assets as both the underlying asset and the strike asset.

It is helpful in analyzing exotic options to compare them to standard options: In what ways does an exotic option resemble a standard option? How will its price compare to that of an ordinary option? When might someone use the exotic option instead of a standard option?

# FURTHER READING

General books covering exotic options include Briys and Bellala (1998), Haug (1998), Wilmott (1998), and Zhang (1998). Rubinstein (1991b) discusses exchange options, Rubinstein (1991a) discusses compound options, and Rubinstein and Reiner (1991a) discuss barrier options.

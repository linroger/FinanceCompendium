---
title: "Chapter 11 - Parity and Other Option Relationships"
aliases:
  - Parity and Other Option Relationships
  - Put-Call Parity
parent_directory: Derivatives Market Complete Full/chapters manual
cssclasses: academia
---

# Parity and Other Option Relationships

In this chapter we study option pricing. Contracts entailing firm commitments, such as forwards, futures, and swaps, do not permit either party to back away from the agreement. Optionality occurs when it is possible to avoid engaging in unprofitable transactions. The principal question in option pricing is: How do you value the right to back away from a commitment?

Before we delve into pricing models, we devote this chapter to refining our common sense about options. For example, Table 1 contains call and put prices for IBM for four different strikes and two different expiration dates. These are American-style options. Here are some observations and questions about these prices:

- What determines the difference between put and call prices at a given strike?
- How would the premiums change if these options were European rather than American?
- It appears that, for a given strike, the October options are more expensive than the June options. Is this necessarily true?
- Do call premiums always decrease as the strike price increases? Do put premiums always increase as the strike price increases?
- Both call and put premiums change by less than the change in the strike price. Does this always happen?

These questions, and others, will be answered in this chapter, but you should take a minute and think about the answers now. While doing so, pay attention to how you are trying to come up with the answers. What constitutes a persuasive argument? Along with finding the answers, we want to understand how to think about questions like these.

# I. PUT-CALL PARITY

Put-call parity is perhaps the single most important relationship among option prices. Synthetic forwards (created by buying the call and selling the put) must be priced consistently with actual forwards. The basic parity relationship for European options with the same strike price and time to expiration is

$$
\text {C a l l} - \text {p u t} = \mathrm {P V} (\text {f o r w a r d p r i c e} - \text {s t r i k e p r i c e})
$$

From Chapter 9 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

TABLEI

IBM option prices, dollars per share, May 6, 2011. The closing price of IBM on that day was 168.89.

<table><tr><td rowspan="2">Strike</td><td rowspan="2">Expiration</td><td colspan="2">Calls</td><td colspan="2">Puts</td></tr><tr><td>Bid ($)</td><td>Ask ($)</td><td>Bid ($)</td><td>Ask ($)</td></tr><tr><td>160</td><td>June</td><td>10.05</td><td>10.15</td><td>1.16</td><td>1.20</td></tr><tr><td>165</td><td>June</td><td>6.15</td><td>6.25</td><td>2.26</td><td>2.31</td></tr><tr><td>170</td><td>June</td><td>3.20</td><td>3.30</td><td>4.25</td><td>4.35</td></tr><tr><td>175</td><td>June</td><td>1.38</td><td>1.43</td><td>7.40</td><td>7.55</td></tr><tr><td>160</td><td>October</td><td>14.10</td><td>14.20</td><td>5.70</td><td>5.80</td></tr><tr><td>165</td><td>October</td><td>10.85</td><td>11.00</td><td>7.45</td><td>7.60</td></tr><tr><td>170</td><td>October</td><td>8.10</td><td>8.20</td><td>9.70</td><td>9.85</td></tr><tr><td>175</td><td>October</td><td>5.80</td><td>5.90</td><td>12.40</td><td>12.55</td></tr></table>

Source: Chicago Board Options Exchange.

The equation  $\operatorname{Call}(K, T) - \operatorname{Put}(K, T) = \operatorname{PV}(F_{0,T} - K)$  expresses this more precisely:

$$
\begin{array}{l} C (K, T) - P (K, T) = \mathrm {P V} _ {0, T} \left(F _ {0, T} - K\right) \tag {1} \\ = e ^ {- r T} \left(F _ {0, T} - K\right) \\ \end{array}
$$ where  $C(K, T)$  is the price of a European call with strike price  $K$  and time to expiration  $T$ ,  $P(K, T)$  is the price of a European put,  $F_{0,T}$  is the forward price for the underlying asset,  $K$  is the strike price,  $T$  is the time to expiration of the options, and  $\mathrm{PV}_{0,T}$  denotes the present value over the life of the options. Note that  $e^{-rT}F_{0,T}$  is the prepaid forward price for the asset and  $e^{-rT}K$  is the prepaid forward price for the strike, so we can also think of parity in terms of prepaid forward prices.


The intuition for equation (1) is that buying a call and selling a put with the strike equal to the forward price  $(F_{0,T} = K)$  creates a synthetic forward contract and hence must have a zero price. If we create a synthetic long forward position at a price lower than the forward price, we have to pay  $\mathrm{PV}_{0,T}(F_{0,T} - K)$  since this is the benefit of buying the asset at the strike price rather than the forward price.

Parity generally fails for American-style options, which may be exercised prior to maturity. Appendix A discusses parity bounds for American options.

We now consider the parity relationship in more detail for different underlying assets.

# Options on Stocks

If the underlying asset is a stock and Div is the stream of dividends paid on the stock, then  $e^{-rT}F_{0,T} = S_0 - \mathrm{PV}_{0,T}(\mathrm{Div})$ . Thus, from equation (1), the parity relationship for European options on stocks is

$$

C (K, T) = P (K, T) + \left[ S _ {0} - \mathrm {P V} _ {0, T} (\mathrm {D i v}) \right] - e ^ {- r T} K \tag {2}

$$ where  $S_0$  is the current stock price and  $\mathrm{PV}_{0,T}(\mathrm{Div})$  is the present value of dividends payable over the life of the option. For index options, we know that  $S_0 - \mathrm{PV}_{0,T}(\mathrm{Div}) = S_0e^{-\delta T}$ .

# FIGURE I

Cash flows for outright purchase of stock and for synthetic stock created by buying a 40-strike call and selling a 40-strike put.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/2e8982f6b3e100d15ea568991682fdfd53ceb97dbe8b1cf790921b7994a1a4a5.jpg)

Outright Purchase of Stock

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/a38b6e092da0b8f4e6baba925a625d70b133c987c660585efe05477012d06e74.jpg)

Buy Call, Sell Put

Hence, we can write

$$
C (K, T) = P (K, T) + S _ {0} e ^ {- \delta T} - \mathrm {P V} _ {0, T} (K)
$$

Example 1. Suppose that the price of a non-dividend-paying stock is  \$40, the continuously compounded interest rate is 8\%$ , and options have 3 months to expiration. A 40-strike European call sells for 2.78 and a 40-strike European put sells for 1.99. This is consistent with equation (2):

$$
\$ 2.78 = \$ 1.99 + \$ 40 - \$ 40 e ^ {- 0.08 \times 0.25}
$$

Why does the price of an at-the-money call exceed the price of an at-the-money put by 0.79? The answer is that buying a call and selling a put is a leveraged synthetic stock purchase, with different cash flows than an outright purchase. Figure 1 compares the synthetic purchase of the stock (buying the call and selling the put) with an outright purchase.

Notice that both positions result in the ownership of the stock 3 months from today. With the outright purchase, we pay  \$40 today and own the stock for the entire 3 months. With the synthetic purchase, we pay\$ 0.79 today and \$40 at expiration. If the price at expiration is above \$40, we will own the stock because we exercise the call. If the stock price is below 40, we will own the stock because we sold a put that will be exercised; as the put-writer, we have to buy the stock.

Although with the synthetic stock purchase we do not own the stock until expiration, we are still exposed to the risk of the stock. A \$1 change in the value of the stock will induce a \$1 change in the value of the synthetic stock, exactly as if we owned the stock outright.

Thus, by buying the call and selling the put we own the stock economically, but we have deferred the payment of  \$40 until expiration. To obtain this deferral we must pay 3 months of interest on the\$ 40, the present value of which is 0.79. The option premiums differ by the interest on the deferral of payment for the stock. The difference in the call and put premiums is due to interest on the strike price. This is the reason that an at-the-money European call on a non-dividend-paying stock always sells for more than an at-the-money European put with the same expiration.

Note that if we reverse the position by selling the call and buying the put, then we are synthetically short-selling the stock. In 3 months, the options will be exercised and we will receive \$40. In this case, the \$0.79 compensates us for deferring receipt of the 40.

There are differences between the outright and synthetic positions. First, the stock pays dividends and the synthetic does not. This example assumed that the stock paid no dividends. If it did, the cost of the actual stock would exceed that of the synthetic by the present value of dividends paid over the life of the options. Second, the actual stock has voting rights, unlike the synthetic position.

Example 2. Make the same assumptions as in Example 1, except suppose that the stock pays a \$5 dividend just before expiration. The price of the European call is \$0.74 and the price of the European put is 4.85. These prices satisfy parity with dividends, equation (2):

$$
\$ 0.74 - \$ 4.85 = (\$ 40 - \$ 5 e ^ {- 0.08 \times 0.25}) - \$ 40 e ^ {- 0.08 \times 0.25}
$$

The call price is higher than the put price by interest on the strike ( \$0.79) and lower by the present value of the dividend (\$ 4.90), for a net difference of 4.11.

In this example, the at-the-money call sells for less than an at-the-money put because dividends on the stock exceed the value of interest on the strike price.

It is worth mentioning a common but erroneous explanation for the higher premium of an at-the-money call compared to an at-the-money put. The profit on a call is potentially unlimited since the stock price can go to infinity, while the profit on a put can be no greater than the strike price. This explanation seems to suggest that the call should be more expensive than the put. However, parity shows that the true reason for the call being more expensive (as in Example 1) is time value of money.

Synthetic stock. Parity provides a cookbook for the synthetic creation of options, stocks, and T-bills.

The example above shows that buying a call and selling a put is like buying the stock except that the timing of the payment for the stock differs in the two cases. Rewriting equation (2) gives us

$$
S _ {0} = C (K, T) - P (K, T) + \mathrm {P V} _ {0, T} (\mathrm {D i v}) + e ^ {- r T} K \tag {3}
$$

To match the cash flows for an outright purchase of the stock, in addition to buying the call and selling the put, we have to lend the present value of the strike and dividends to be paid over the life of the option. We then receive the stock in 91 days.

Synthetic T-bills. If we buy the stock, sell the call, and buy the put, we have purchased the stock and short-sold the synthetic stock. This transaction gives us a hedged position that has no risk but requires investment. Parity shows us that

$$
S _ {0} + P (K, T) - C (K, T) = \mathrm {P V} _ {0, T} (K) + \mathrm {P V} _ {0, T} (\mathrm {D i v})
$$

We have thus created a position that costs  $\mathrm{PV}(K) + \mathrm{PV}_{0,T}(\mathrm{Div})$  and that pays  $K + F V_{0,T}(\mathrm{Div})$  at expiration. This is a synthetic Treasury bill.

Since T-bills are taxed differently than stocks, the ability to create a synthetic Treasury bill with the stock and options creates problems for tax and accounting authorities. How should the return on this transaction be taxed—as a stock transaction or as interest income?

Tax rules call for this position to be taxed as interest, but you can imagine taxpayers trying to skirt these rules.

The creation of a synthetic T-bill by buying the stock, buying a put, and selling a call is called a conversion. If we short the stock, buy a call, and sell a put, we have created a synthetic short T-bill position and this is called a reverse conversion.

Synthetic options. Parity tells us that

$$
C (K, T) = S _ {0} - \mathrm {P V} _ {0, T} (\operatorname {D i v}) - \mathrm {P V} _ {0, T} (K) + P (K, T)
$$ and that


$$

P (K, T) = C (K, T) - S _ {0} + \mathrm {P V} _ {0, T} (K) + \mathrm {P V} _ {0, T} (\mathrm {D i v})

$$

The first relation says that a call is equivalent to a leveraged position on the underlying asset  $[S_0 - \mathrm{PV}_{0,T}(\mathrm{Div}) - \mathrm{PV}(K)]$ , which is insured by the purchase of a put. The second relation says that a put is equivalent to a short position on the stock, insured by the purchase of a call.

# Options on Currencies

Suppose we have options to buy euros by paying dollars. The dollar forward price for a euro is  $F_{0,T} = x_0 e^{(r - r\in)T}$ , where  $x_0$  is the current exchange rate denominated as  $\mathbb{S} / \in$ ,  $r\in$  is the euro-denominated interest rate, and  $r$  is the dollar-denominated interest rate. The parity relationship for options to buy one euro by paying  $x_0$  is then

$$

C (K, T) - P (K, T) = x _ {0} e ^ {- r \in T} - K e ^ {- r T} \tag {4}

$$

Buying a euro call and selling a euro put is equivalent to lending euros and borrowing dollars. Equation (4) tells us that the difference in the call and put premiums simply reflects the difference in the amount borrowed and loaned, in the currency of the country in which the options are denominated.

# Options on Bonds

Finally, we can construct the parity relationship for options on bonds. The prepaid forward for a bond differs from the bond price due to coupon payments (which are like dividends). Thus, if the bond price is  $B_{0}$ , we have

$$

C (K, T) = P (K, T) + \left[ B _ {0} - \mathrm {P V} _ {0, T} (\text {C o u p o n s}) \right] - \mathrm {P V} _ {0, T} (K) \tag {5}

$$

Note that for a pure-discount bond, the parity relationship is exactly like that for a nondividend-paying stock.

# Dividend Forward Contracts

Dividends play a critical role in the parity equation. In practice, there is at least some uncertainty about future dividend payments and yields. Dividend forward contracts and dividend swaps can be used to hedge or speculate on actual dividend amounts. A dividend forward contract pays  $\mathrm{FV}_{0,T}(D) - F_{0,T}$  at time  $T$ , where  $F_{0,T}$  is the dividend forward price and  $\mathrm{FV}_{0,T}(D)$  is the time  $T$  value of dividends paid between time 0 and time  $T$ . It is straightforward to determine the dividend forward price,  $F_{0,T}(D)$ , using put-call parity. The intuition is that prices of European options reflect expected future ex-dividend stock prices, so that comparing the stock price today with option prices, we can determine the price of a claim on dividends.


Suppose a stock with price  $S_0$  pays uncertain dividends between time 0 and time  $T$ . Consider buying the stock, borrowing  $Ke^{-rT}$ , and buying a European put and selling a European call, both with strike price  $K$  expiring at time  $T$ . The payoff to this portfolio is the future value of dividends paid between time 0 and time  $T$ :

$$

S _ {T} + \operatorname {F V} _ {0, T} (D) - K + K - S _ {T} = \operatorname {F V} _ {0, T} (D)

$$

Stock plus dividends Borrowing Options

The cost of this portfolio is therefore the time 0 price of acquiring dividends paid from 0 to  $T$ , which is the prepaid forward price for a dividend contract. Thus,

$$

F _ {0, T} ^ {P} (D) = S _ {0} - K e ^ {- r T} + P (K, T) - C (K, T) \tag {6}

$$

This implies that the dividend forward price is

$$

F _ {0, T} (D) = e ^ {r T} F _ {0, T} ^ {P} (D) = e ^ {r T} \left[ S _ {0} + P (K, T) - C (K, T) \right] - K \tag {7}

$$

A dividend swap can be constructed from dividend forwards using the equation

$$

R = \frac {\sum_ {i = 1} ^ {n} P (0 , t _ {i}) f _ {0} (t _ {i})}{\sum_ {i = 1} ^ {n} P (0 , t _ {i})}

$$

# 2. GENERALIZED PARITY AND EXCHANGE OPTIONS

The preceding section showed how the parity relationship works for different underlying assets. Now we will generalize parity to apply to the case where the strike asset is not necessarily cash but could be any other asset. This version of parity includes all previous versions as special cases.

Suppose we have an option to exchange one asset for another. Let the underlying asset, asset A, have price  $S_{t}$ , and the strike asset (the asset which, at our discretion, we surrender in exchange for the underlying asset), asset B, have the price  $Q_{t}$ . Let  $F_{t,T}^{P}(S)$  denote the time  $t$  price of a prepaid forward on the underlying asset, paying  $S_{T}$  at time  $T$ , and let  $F_{t,T}^{P}(Q)$  denote the time  $t$  price of a prepaid forward on asset B, paying  $Q_{T}$  at time  $T$ . We use the notation  $C(S_{t}, Q_{t}, T - t)$  to denote the time  $t$  price of an option with  $T - t$  periods to expiration, which gives us the right to give up asset B in exchange for asset A.

$P(S_{t},Q_{t},T - t)$  is defined similarly as the right to give up asset A in exchange for asset B. Now suppose that the call payoff at time  $T$  is

$$

C \left(S _ {T}, Q _ {T}, 0\right) = \max  \left(0, S _ {T} - Q _ {T}\right)

$$ and the put payoff is


$$

P \left(S _ {T}, Q _ {T}, 0\right) = \max  \left(0, Q _ {T} - S _ {T}\right)

$$

Then for European options we have this form of the parity equation:

$$

\boxed {C \left(S _ {t}, Q _ {t}, T - t\right) - P \left(S _ {t}, Q _ {t}, T - t\right) = F _ {t, T} ^ {P} (S) - F _ {t, T} ^ {P} (Q)} \tag {8}

$$

The use of prepaid forward prices in the parity relationship completely takes into account the dividend and time value of money considerations. This version of parity tells us that there is nothing special about an option having the strike amount designated as cash. In general, options can be designed to exchange any asset for any other asset, and the relative put and call premiums are determined by prices of prepaid forwards on the underlying and strike assets.

To prove equation (8) we can use a payoff table in which we buy a call, sell a put, sell a prepaid forward on A, and buy a prepaid forward on B. This transaction is illustrated in Table 2.

If the strategy in Table 2 does not pay zero at expiration, there is an arbitrage opportunity. Thus, we expect equation (8) to hold. All European options satisfy this formula, whatever the underlying asset.

<table><tr><td>Payoff table demonstrating that there is an arbitrage opportunity unless -C(St, Qt,T-t) + P(St, Qt,T-t) + Ft,T(P)(S) - Ft,T(Q) = 0.</td></tr></table>

TABLE 2

<table><tr><td rowspan="2">Transaction</td><td rowspan="2">Time 0</td><td colspan="2">Expiration</td></tr><tr><td>ST≤QT</td><td>ST&gt;QT</td></tr><tr><td>Buy call</td><td>-C(St, Qt, T-t)</td><td>0</td><td>ST-QT</td></tr><tr><td>Sell put</td><td>P(St, Qt, T-t)</td><td>ST-QT</td><td>0</td></tr><tr><td colspan="4">Sell prepaid forward on A</td></tr><tr><td></td><td>FT,T(P)(S)</td><td>-ST</td><td>-ST</td></tr><tr><td colspan="4">Buy prepaid forward on B</td></tr><tr><td></td><td>-FPT,T(Q)</td><td>QT</td><td>QT</td></tr><tr><td>Total</td><td>-C(St, Qt, T-t)</td><td></td><td></td></tr><tr><td></td><td>+P(St, Qt, T-t)</td><td></td><td></td></tr><tr><td></td><td>+FT,T(S) - FT,T(Q)</td><td>0</td><td>0</td></tr></table>

Example 3. Suppose that non-dividend-paying stock A has a price of \$20, and nondividend-paying stock B has a price of \$25. Because neither stock pays dividends, their prepaid forward prices equal their prices. If A is the underlying asset and B is the strike asset, then put-call parity implies that

$$

\mathrm {C a l l - p u t} = \$ 2 0 - \$ 2 5 = - \$ 5

$$

The put is 5 more expensive than the call for any time to expiration of the options.

# Options to Exchange Stock

Executive stock options are sometimes constructed so that the strike price of the option is the price of an index, rather than a fixed cash amount. The idea is to have an option that pays off only when the company outperforms competitors, rather than one that pays off simply because all stock prices have gone up. As a hypothetical example of this, suppose that Microsoft executives are given compensation options that payoff only if Microsoft outperforms Google. They will exercise these options if and only if the share price of Microsoft,  $S_{\mathrm{MSFT}}$ , exceeds the share price of Google,  $S_{\mathrm{GOOG}}$ , i.e.,  $S_{\mathrm{MSFT}} > S_{\mathrm{GOOG}}$ . From the executives' perspective, this is a call option, with the payoff

$$

\max  (0, S _ {\text {M S F T}} - S _ {\text {G O O G}})

$$

Now consider the compensation option for Google executives. They receive a compensation option that pays off only if Google outperforms Microsoft, i.e.,

$$

\max  \left(0, S _ {\text {G O O G}} - S _ {\text {M S F T}}\right)

$$

This is a call from the Google executives' perspective.

Here is the interesting twist: The Google call looks like a Microsoft put! And the Microsoft call looks like a Google put. Either option can be viewed as a put or call; it is simply a matter of perspective. The distinction between a put and a call in this example depends upon what we label the underlying asset and what we label as the strike asset.

# What Are Calls and Puts?

The preceding discussion suggests that labeling an option as a call or put is always a matter of convention. It is an important convention because we use it all the time in talking about options. Nevertheless, in general we can interpret calls as being puts, and vice versa. We can see why by using an analogy.

When you go to the grocery store to obtain bananas, you typically say that you are buying bananas. The actual transaction involves handing cash to the grocer and receiving a banana. This is an exchange of one asset (cash) for another (a banana). We could also describe the transaction by saying that we are selling cash (in exchange for bananas). The point is that an exchange occurs, and we can describe it either as buying the thing we receive, or selling the thing we surrender.

Any transaction is an exchange of one thing for another. Whether we say we are buying or selling is a matter of convention. This insight may not impress your grocer, but it is important for us because it suggests that the labeling we commonly use to distinguish calls and puts is a matter of convention.

To see how an ordinary call could be considered a put, consider a call option on a stock. This is the right to exchange a given number of dollars, the strike price  $K$ , for stock worth  $S$ , if the stock is worth more than the dollars. For example, suppose that if  $S > K$  we earn  $S - K$ . We can view this as either of two transactions:

- Buying one share of stock by paying  $K$ . In this case we exercise when  $S > K$ . This is a call option on stock.
- Selling  $K$  dollars in exchange for one share of stock. Again we exercise when  $S > K$  —i.e., when the dollars we sell are worth less than the stock. This is a put option on dollars, with a share of stock as the strike asset.

Under either interpretation, if  $S < K$  we do not exercise the option. If the dollars are worth more than the stock, we would not sell them for the stock.

Now consider a put option on a stock. The put option confers the right to exchange one share of stock for a given number of dollars. Suppose  $S < K$ ; we earn  $K - S$ . We can view this in either of two ways:

- Selling one share of stock at the price  $K$ .
- Buying  $K$  dollars by paying one share of stock. This is a call where we have the right to give up stock to obtain dollars.

If  $S > K$  we do not exercise under either interpretation. If the dollars are worth less than the stock, we would not pay the stock to obtain the dollars.

# Currency Options

The idea that calls can be relabeled as puts is commonplace in currency markets. A currency transaction involves the exchange of one kind of currency for another. In this context, it is obvious to market participants that referring to a particular currency as having been bought or sold is a matter of convention, depending upon which currency a trader regards as the home currency.

To understand how a call in one currency can be a put in the other, consider how currency options are quoted by dealers. A term sheet for a currency option might specify "EUR Call USD Put, AMT: EUR 100 million, USD 120 million." The term sheet thus says explicitly that the option can be viewed either as a call on the euro or a put on the dollar. Exercise of the option will entail an exchange of €100 million for 120 million.

If we interpret the option as a call on the euro, we have the right to pay 120 million to acquire 100 million. You can think of this as 100 million calls on the euro, each with a strike of \$1.20. If we interpret the option as a put on the dollar, we have the right to sell \$120 million in exchange for 100 million. Because the put is on the dollar, it is natural to think of this as 120 million options on one dollar, each with a strike of 100 / 120 = 0.8333 euros.

We will say that an option is "dollar-denominated" if the strike price and premium are denominated in dollars. An option is "euro-denominated" if the strike price and premium are in euros. It is often helpful to think of a dollar-denominated option as being based on one unit of the foreign currency, and a euro- (or other currency-) denominated option as based on one dollar.

We will now use a numerical example to illustrate how to convert a call in one currency into a put in the other. Suppose the current exchange rate is  x_0 = \1.25 / \epsilon , and consider the following two options:

1. A 1-year dollar-denominated call option on euros with a strike price of \$1.20 and premium of \$0.06545. In 1 year, the owner of the option has the right to buy €1 for 1.20. The payoff on this option, in dollars, is therefore

$$

\max  (0, x _ {1} - 1. 2 0)

$$

2. A 1-year euro-denominated put option on dollars with a strike of 1/1.20 = €0.833. The premium of this option is €0.04363. In 1 year the owner of this put has the right to give up \$1 and receive €0.833; the owner will exercise the put when \$1 is worth less than €0.833. The euro value of 1 in 1 year will be 1/x₁. Hence, the payoff of this option is

$$

\max  \left(0, \frac {1}{1 . 2 0} - \frac {1}{x _ {1}}\right)

$$

Because  $x_{1} > 1.20$  exactly when  $\frac{1}{1.20} > \frac{1}{x_{1}}$ , the euro-denominated dollar put will be exercised when, and only when, the dollar-denominated euro call is exercised.

Though the two options will be exercised under the same circumstances, they differ in two respects:

- The scale of the two options is different. The dollar-denominated euro call is based on one euro, which has a current dollar value of 1.25, and the euro-denominated dollar put is based on one dollar, which has a current euro value of €0.8333.
- The currency of denomination is different.

We can equate the scale of the two options in one of two ways. First, we can either scale up the dollar-denominated euro calls, holding 1.20 of them, or we can scale down the euro-denominated dollar puts, holding 1/1.20 of them. To see the equivalence of the euro call and the dollar put, consider the following two transactions, each of which entails exchanging \$1.20 for €1 if the exchange rate is greater than \$1.20:

1. Buy one 1-year dollar-denominated euro call option with a strike of \$1.20. If we exercise, we will give up \$1.20 for €1. The cost of the option is 0.06545.
 2. Buy 1.20 1-year euro-denominated put options on dollars with a strike of €0.833. If exercised, these options entail receiving €1 and giving up \$1.20. The cost of this in dollars is \$1.25/€ × 1.20 × €0.04363 = 0.06545.

Table 3 compares the payoffs of these two option positions. At exercise, each position results in surrendering  $1.20 for \in 1$  if  $x_{1} > 1.20$ . The two positions must cost the same, or else there is an arbitrage opportunity.

We can summarize this result algebraically. The price of a dollar-denominated foreign currency call with strike  $K$ , when the current exchange rate is  $x_0$ , is  $C_{\S}(x_0, K, T)$ . The price

The equivalence of buying a dollar-denominated euro call and a euro-denominated dollar put. In transaction I, we buy one dollar-denominated call option, permitting us to buy €1 for a strike price of \$1.20. In transaction II, we buy 1.20 euro-denominated puts, each with a premium of €0.04363, and permitting us to sell \$1 for a strike price of €0.833.

TABLE 3

<table><tr><td rowspan="3" colspan="2"></td><td colspan="2">Year 0</td><td colspan="4">Year 1</td></tr><tr><td colspan="2"></td><td colspan="2">x1&lt; 1.20</td><td colspan="2">x1≥ 1.20</td></tr><tr><td>$</td><td>€</td><td>$</td><td>€</td><td>$</td><td>€</td></tr><tr><td>I:</td><td>Buy 1 euro call</td><td>-0.06545</td><td>—</td><td>0</td><td>0</td><td>-1.20</td><td>1</td></tr><tr><td>II:</td><td>Convert dollars to euros, buy 1.20 dollar puts</td><td>-0.06545</td><td>0.05236</td><td>0</td><td>0</td><td>-1.20</td><td>1</td></tr></table> of a foreign-currency-denominated dollar put with strike  $\frac{1}{K}$ , when the exchange rate is  $\frac{1}{x_0}$ , is  $P_f\left(\frac{1}{x_0}, \frac{1}{K}, T\right)$ . Adjusting for currency and scale differences, the prices are related by


$$

\boxed {C _ {\S} (x _ {0}, K, T) = x _ {0} K P _ {f} \left(\frac {1}{x _ {0}}, \frac {1}{K}, T\right)} \tag {9}

$$

This insight—that calls in one currency are the same as puts in the other—is interesting in and of itself. Its generalization to all options provides a fresh perspective for thinking about the difference between calls and puts.

# 3. COMPARING OPTIONS WITH RESPECT TO STYLE, MATURITY, AND STRIKE

We now examine how option prices change when there are changes in option characteristics, such as exercise style (American or European), the strike price, and time to expiration. Remarkably, we can say a great deal without a pricing model and without making any assumptions about the distribution of the underlying asset. Thus, whatever the particular option model or stock price distribution used for valuing a given option, we can still expect option prices to behave in certain ways.

Here is an example of the kind of questions we will address in this section. Suppose you have three call options, with strikes of  $40,$ 45, and 50. How do the premiums on these options differ? Common sense suggests that, with a call option on any underlying asset, the premium will go down as you raise the strike price; it is less valuable to be able to buy at a higher price. Moreover, the decline in the premium cannot be greater than \$5. (The right to buy for a \$5 cheaper price cannot be worth more than 5.)


Following this logic, the premium will drop as we increase the strike from  $40 to$ 45, and drop again when we increase the strike further from  $45 to$ 50. Here is a more subtle question: In which case will the premium drop more? It turns out that the decline in the premium from  $40 to$ 45 must be greater than the decline from  $45 to$ 50, or else there is an arbitrage opportunity.

In this section we will explore the following issues for stock options (some of the properties may be different for options on other underlying assets):

- How prices of otherwise identical American and European options compare.
- How option prices change as the time to expiration changes.
- How option prices change as the strike price changes.

A word of warning before we begin this discussion: You may find option price listings reporting prices that seem to permit arbitrage. This can occur if some of the reported option prices are stale, meaning that the comparison is among option prices recorded at different times of the day. Also, an apparent arbitrage opportunity only becomes genuine when bidask spreads (see Table 1), commissions, costs of short-selling, and market impact are taken into account.

# European Versus American Options

Since an American option can be exercised at any time, it must always be at least as valuable as an otherwise identical European option. (By "otherwise identical" we mean that the two options have the same underlying asset, strike price, and time to expiration.) Any exercise strategy appropriate to a European option can always be duplicated with an American option. Thus we have

$$

C _ {\text {A m e r}} (S, K, T) \geq C _ {\text {E u r}} (S, K, T) \tag {10a}

$$

$$

P _ {\text {A m e r}} (S, K, T) \geq P _ {\text {E u r}} (S, K, T) \tag {10b}

$$

We will see that there are times when the right to early-exercise is worthless, and, hence, American and European options have the same value.

# Maximum and Minimum Option Prices

It is often useful to understand just how expensive or inexpensive an option can be. Here are some basic limits.

Calls. The price of a European call option:

- Cannot be negative, because the call need not be exercised.
- Cannot exceed the stock price, because the best that can happen with a call is that you end up owning the stock.
- Must be at least as great as the price implied by parity with a zero put value.

Combining these statements, together with the result about American options never being worth less than European options, gives us

$$

\boxed {S \geq C _ {\text {A m e r}} (S, K, T) \geq C _ {\text {E u r}} (S, K, T) \geq \max  [ 0, \mathrm {P V} _ {0, T} (F _ {0, T}) - \mathrm {P V} _ {0, T} (K) ]} \tag {11}

$$ where present values are taken over the life of the option.


# Puts. Similarly, a put:

- Cannot be worth more than the undiscounted strike price, since that is the most it can ever be worth (if the stock price drops to zero, the put pays  $K$  at some point).
- Must be at least as great as the price implied by parity with a zero call value.

Also, an American put is worth at least as much as a European put. This gives us

$$

K \geq P _ {\text {A m e r}} (S, K, T) \geq P _ {\text {E u r}} (S, K, T) \geq \max  [ 0, \mathrm {P V} (K) - \mathrm {P V} _ {0, T} ] \tag {12}

$$

# Early Exercise for American Options

When might we want to exercise an option prior to expiration? An important result is that an American call option on a non-dividend-paying stock should never be exercised prior to expiration. You may, however, rationally exercise an American-style put option prior to expiration.

Calls on a non-dividend-paying stock. We can demonstrate in two ways that an American-style call option on a non-dividend-paying stock should never be exercised prior to expiration. Early exercise is not optimal if the price of an American call prior to expiration satisfies

$$

C _ {\text {A m e r}} \left(S _ {t}, K, T - t\right) > S _ {t} - K

$$

If this inequality holds, you would lose money by early-exercising (receiving  $S_{t} - K$ ) as opposed to selling the option (receiving  $C_{\mathrm{Amer}}(S_t,K,T - t) > S_t - K$ ).

We will use put-call parity to demonstrate that early exercise is not rational. If the option expires at  $T$ , parity implies that

$$

\begin{array}{l} C _ {\text {E u r}} (S _ {t}, K, T - t) = \underbrace {S _ {t} - K} _ {\text {E x e r c i s e v a l u e}} + \underbrace {P _ {\text {E u r}} (S _ {t} , K , T - t)} _ {\text {I n s u r a n c e a g a i n s t} S _ {T} <   K} \\ + \underbrace {K (1 - e ^ {- r (T - t)})} _ {\text {T i m e v a l u e o f m o n e y o n} K} > S _ {t} - K \tag {13} \\ \end{array}

$$

Since the put price,  $P_{\mathrm{Eur}}(S_t, K, T - t)$ , and the time value of money on the strike,  $K(1 - e^{-r(T - t)})$ , are both positive, this equation establishes that the European call option premium on a non-dividend paying stock always is at least as great as  $S_t - K$ . From equation (10a), we also know that  $C_{\mathrm{Amer}} \geq C_{\mathrm{Eur}}$ . Thus we have

$$

C _ {\text {A m e r}} \geq C _ {\text {E u r}} > S _ {t} - K

$$

Since  $C_{\text{Amer}}$ , the American option premium, always exceeds  $S - K$ , we would lose money exercising an American call prior to expiration, as opposed to selling the option.

Equation (13) is useful because it shows us precisely why we would never early-exercise. Early-exercising has two effects. First, we throw away the implicit put protection should the stock later move below the strike price. Second, we accelerate the payment of the strike price.

A third effect is the possible loss from deferring receipt of the stock. However, when there are no dividends, we lose nothing by waiting to take physical possession of the stock.

We have demonstrated that if a stock pays no dividends, you should never see an option selling for less than  $S_{t} - K$ . In fact, equation (13), like equation (11), actually implies the stronger result that you should never see a call on a non-dividend-paying stock sell for less than  $S_{t} - Ke^{-r(T - t)}$ . What happens if you do observe an option selling for too low a price? If  $C < S_{t} - K$  and the option is American, you can buy the option, exercise it, and earn  $S_{t} - K - C_{\mathrm{Amer}}(S_{t},K,T - t) > 0$ . If the option is European and cannot be exercised early, the arbitrage is: Buy the option, short the stock, and lend the present value of the strike price. Table 4 demonstrates the arbitrage in this case. The sources of profit from the arbitrage are the same as those identified in equation (13).

It is important to realize that this proposition does not say that you must hold the option until expiration. It says that if you no longer wish to hold the call, you should sell it rather than early-exercising it.[8]

Exercising calls just prior to a dividend. If the stock pays dividends, the parity relationship is

$$

C \left(S _ {t}, K, T - t\right) = P \left(S _ {t}, K, T - t\right) + S _ {t} - \mathrm {P V} _ {t, T} (\mathrm {D i v}) - \mathrm {P V} _ {t, T} (K)

$$

Using this expression, we cannot always rule out early exercise as we did above. Early exercise is not optimal at any time where

$$

K - \mathrm {P V} _ {t, T} (K) > \mathrm {P V} _ {t, T} (\mathrm {D i v}) \tag {14}

$$

That is, if interest on the strike price (which induces us to delay exercise) exceeds the present value of dividends (which induces us to exercise), then we will for certain never early-exercise at that time. If inequality (14) is violated, this does not tell us that we will exercise, only that we cannot rule it out.

If dividends are sufficiently great, however, early exercise can be optimal. To take an extreme example, consider a 90-strike American call on a stock selling for \$100, which is about to pay a dividend of \$99.99. If we exercise—paying \$90 to acquire the \$100 stock—we have a net position worth 10. If we delay past the ex-dividend date, the option is worthless.

If dividends do make early exercise rational, it will be optimal to exercise at the last moment before the ex-dividend date. By exercising earlier than that, we pay the strike price prematurely and thus at a minimum lose interest on the strike price.

Early exercise for puts. It can be optimal to early-exercise a put. To see this, suppose a company is bankrupt and the stock price falls to zero. Then a put not exercised until expiration will be worth  $\mathrm{PV}_{t,T}(K)$ . If we could early-exercise, we would receive  $K$ . If the

Demonstration of arbitrage if a call option with price  $C$  sells for less than  $S_{t} - Ke^{-r(T - t)}$  and the stock pays no dividends. Every entry in the row labeled "Total" is nonnegative.

TABLE 4

<table><tr><td rowspan="2">Transaction</td><td rowspan="2">Time t</td><td colspan="2">Expiration or Exercise, Time T</td></tr><tr><td>ST &lt; K</td><td>ST &gt; K</td></tr><tr><td>Buy call</td><td>-C</td><td>0</td><td>ST - K</td></tr><tr><td>Short stock</td><td>St</td><td>-ST</td><td>-ST</td></tr><tr><td>Lend Ke-r(T-t)</td><td>-Ke-r(T-t)</td><td>K</td><td>K</td></tr><tr><td>Total</td><td>St - Ke-r(T-t) - C</td><td>K - ST</td><td>0</td></tr></table> interest rate is positive,  $K > \mathrm{PV}(K)$ . Therefore, early exercise would be optimal in order to receive the strike price earlier.


We can also use a parity argument to understand this. The put will never be exercised as long as  $P > K - S$ . Supposing that the stock pays no dividends, parity for the put is

$$

P \left(S _ {t}, K, T - t\right) = C \left(S _ {t}, K, T - t\right) - S _ {t} + \mathrm {P V} _ {t, T} (K)

$$

The no-exercise condition,  $P > K - S$ , then implies

$$

C \left(S _ {t}, K, T - t\right) - S _ {t} + \mathrm {P V} _ {t, T} (K) > K - S _ {t}

$$ or


$$

C \left(S _ {t}, K, T - t\right) > K - \mathrm {P V} _ {t, T} (K)

$$

If the call is sufficiently valueless (as in the above example of a bankrupt company), parity cannot rule out early exercise. This does not mean that we will early-exercise; it simply means that we cannot rule it out.

Early exercise in general. We can summarize this discussion of early exercise. When we exercise an option, we receive something (the stock with a call, the strike price with a put). A necessary condition for early exercise is that we prefer to receive this something sooner rather than later. For calls, dividends on the stock are a reason to want to receive the stock earlier. For puts, interest on the strike is a reason to want to receive the strike price earlier. Thus, dividends and interest play similar roles in the two analyses of early exercise. In fact, if we view interest as the dividend on cash, then dividends (broadly defined) become the sole reason to early-exercise an option.

Similarly, dividends on the strike asset become a reason not to early-exercise. In the case of calls, interest is the dividend on the strike asset, and in the case of puts, dividends on the stock are the dividend on the strike asset.

The point of this section has been to make some general statements about when early exercise will not occur, or under what conditions it might occur. Early exercise is a trade-off involving time value of money on the strike price, dividends on the underlying asset, and the value of insurance on the position. In general, figuring out when to exercise requires an option pricing model.

# Time to Expiration

How does an option price change as we increase time to expiration? If the options are American, the option price can never decline with an increase in time to expiration. If the options are European, the price can go either up or down as we increase time to expiration.

American options. An American call with more time to expiration is at least as valuable as an otherwise identical call with less time to expiration. An American call with 2 years to expiration, for example, can always be turned into an American option with 1 year to expiration by voluntarily exercising it after 1 year. Therefore, the 2-year call is at least as valuable as the 1-year call. For the same reason, a longer-lived American put is always worth at least as much as an otherwise equivalent European put.

European options. A European call on a non-dividend-paying stock will be at least as valuable as an otherwise identical call with a shorter time to expiration. This occurs because, with no dividends, a European call has the same price as an otherwise identical American call. With dividends, however, longer-lived European calls may be less valuable than shorter-lived European calls.

To see this, imagine a stock that will pay a liquidating dividend 2 weeks from today. A European call with 1 week to expiration will have value because it is exercisable prior to the dividend. A European call with 3 weeks to expiration will have no value because the stock will have no value at expiration. This is an example of a longer-lived option being less valuable than a shorter-lived option. Note that if the options were American, we would simply exercise the 3-week option prior to the dividend.

Longer-lived European puts can also be less valuable than shorter-lived European puts. A good example of this is a bankrupt company. The put will be worth the present value of the strike price, with present value calculated until time to expiration. Longer-lived puts will be worth less than shorter-lived puts. If the options were American, they would all be exercised immediately and hence would be worth the strike price.

European options when the strike price grows over time. In discussing the effect of changing time to maturity, we have been keeping the option strike price fixed. The present value of the strike price therefore decreases with time to maturity. Suppose, however, that we keep the present value of the strike constant by setting  $K_{t} = Ke^{rt}$ . When the strike grows at the interest rate, the premiums on European calls and puts on a non-dividend-paying stock increase with time to maturity.[10] We will demonstrate this for puts; the demonstration is identical for calls.

To keep the notation simple, let  $P(t)$  denote the time 0 price of a European put maturing at time  $t$ , with strike price  $K_{t} = Ke^{rt}$ . We want to show that  $P(T) > P(t)$  if  $T > t$ . To show this, we will demonstrate an arbitrage if  $P(T) \leq P(t)$ .

# TABLE 5

Demonstration that there is an arbitrage if  $P(T) \leq P(t)$  with  $t < T$ . The strike on the put with maturity  $t$  is  $K_{t} = Ke^{rt}$ , and the strike on the put with maturity  $T$  is  $K_{T} = Ke^{rt}$ . If the option expiring at time  $t$  is in-the-money, the payoff,  $S_{t} - K_{t}$ , is reinvested until time  $T$ . If  $P(t) \geq P(T)$ , all cash flows in the "total" line are nonnegative.

<table><tr><td rowspan="3" colspan="2"></td><td colspan="4">Payoff at Time T</td></tr><tr><td colspan="2">STKT</td><td colspan="2">STKT</td></tr><tr><td colspan="4">Payoff at Time t</td></tr><tr><td>Transaction</td><td>Time 0</td><td>StKT</td><td>Stt&gt;KT</td><td>StKT</td><td>Stt&gt;KT</td></tr><tr><td>Sell P(t)</td><td>P(t)</td><td>STKT</td><td>0</td><td>STKT</td><td>0</td></tr><tr><td>Buy P(T)</td><td>-P(T)</td><td>KTST</td><td>KTST</td><td>0</td><td>0</td></tr><tr><td>Total</td><td>P(t) - P(T)</td><td>0</td><td>KTST</td><td>STKT</td><td>0</td></tr></table>

If the longer-lived put is not more expensive—i.e., if  $P(T) \leq P(t)$ —buy the put with  $T$  years to expiration and sell the put with  $t$  years to expiration. At time  $t$  the written put will expire. If  $S_{t} > K_{t}$  its value is zero and we can ignore the shorter-lived option from this point on. If  $S_{t} < K_{t}$ , the put holder will exercise the short-lived option and our payoff is  $S_{t} - K_{t}$ . Suppose that we keep the stock we receive and borrow to finance the strike price, holding this position until the second option expires at time  $T$ . Here is the important step: Notice that the time- $T$  value of this time- $t$  payoff is  $S_{T} - K_{t}e^{r(T - t)} = S_{T} - K_{T}$ .

Table 5 summarizes the resulting payoffs. By buying the long-lived put and selling the short-lived put, we are guaranteed not to lose money at time  $T$ . Therefore, if  $P(t) \geq P(T)$  there is an arbitrage opportunity. A practical application of this result is discussed in Box 1.

# Different Strike Prices

We discussed at the beginning of this section some statements we can make about how option prices vary with the strike price. Here is a more formal statement of these propositions. Suppose we have three strike prices,  $K_{1} < K_{2} < K_{3}$ , with corresponding call option prices  $C(K_{1}), C(K_{2})$ , and  $C(K_{3})$  and put option prices  $P(K_{1}), P(K_{2})$ , and  $P(K_{3})$ . Here are the propositions we discuss in this section:

1. A call with a low strike price is at least as valuable as an otherwise identical call with a higher strike price:

$$

\boxed {C \left(K _ {1}\right) \geq C \left(K _ {2}\right)} \tag {15}

$$

A put with a high strike price is at least as valuable as an otherwise identical put with a low strike price:

$$

\boxed {P (K _ {2}) \geq P (K _ {1})} \tag {16}

$$

# BOX I: Portfolio Insurance for the Long Run

Historically, the rate of return from investing in stocks over a long horizon has outperformed that from investing in government bonds in the United States (see, for example, Siegel, 1998). This observation has led some to suggest that if held for a sufficiently long period of time, stocks are a safe investment relative to risk-free bonds.

Bodie (1995) suggests using put option premiums to think about the claim that stocks are safe in the long run. Specifically, what would it cost to buy a put option insuring that after  $T$  years your stock portfolio would be worth at least as much as if you had instead invested in a zero-coupon bond? If your initial investment was  $S_0$ , you could provide this insurance by setting the strike price on the put option equal to  $K_{T} = S_{0}e^{rT}$ .


Bodie uses the Black-Scholes model to show that the premium on this insurance increases with  $T$ . As Bodie notes, however, this proposition must be true for any valid option pricing model. The payoffs in Table 5 demonstrate that the cost of this insurance must increase with  $T$  or else there is an arbitrage opportunity. Whatever the historical return statistics appear to say, the cost of portfolio insurance is increasing with the length of time for which you insure the portfolio return. Using the cost of insurance as a measure, stocks are riskier in the long run.

2. The premium difference between otherwise identical calls with different strike prices cannot be greater than the difference in strike prices:

$$

\boxed {C (K _ {1}) - C (K _ {2}) \leq K _ {2} - K _ {1}} \tag {17}

$$

The premium difference for otherwise identical puts also cannot be greater than the difference in strike prices:

$$

\boxed {P (K _ {2}) - P (K _ {1}) \leq K _ {2} - K _ {1}} \tag {18}

$$

3. Premiums decline at a decreasing rate as we consider calls with progressively higher strike prices. The same is true for puts as strike prices decline. This is called convexity of the option price with respect to the strike price:

$$

\boxed {\frac {C \left(K _ {1}\right) - C \left(K _ {2}\right)}{K _ {2} - K _ {1}} \geq \frac {C \left(K _ {2}\right) - C \left(K _ {3}\right)}{K _ {3} - K _ {2}}} \tag {19}

$$

$$

\boxed {\frac {P \left(K _ {2}\right) - P \left(K _ {1}\right)}{K _ {2} - K _ {1}} \leq \frac {P \left(K _ {3}\right) - P \left(K _ {2}\right)}{K _ {3} - K _ {2}}} \tag {20}

$$

These statements are all true for both European and American options. $^{11}$  Algebraic demonstrations are in Appendix B. It turns out, however, that these three propositions are equivalent to saying that there are no free lunches: If you enter into an option spread, there must be stock prices at which you would lose money on the spread net of your original investment. Otherwise, the spread represents an arbitrage opportunity. These three propositions say that you cannot have a bull spread, a bear spread, or a butterfly spread for which you can never lose money. Specifically:


1. If inequality (15) were not true, buy the low-strike call and sell the high-strike call (this is a call bull spread). If inequality (16) were not true, buy the high-strike put and sell the low-strike put (a put bear spread).
2. If inequality (17) were not true, sell the low-strike call and buy the high-strike call (a call bear spread). If inequality (18) were not true, buy the low-strike put and sell the high-strike put (a put bull spread).
3. If either of inequalities (19) or (20) were not true, there is an asymmetric butterfly spread with positive profits at all prices.

We will illustrate these propositions with numerical examples.

Example 4. Suppose we observe the call premiums in Panel A of Table 6. These values violate the second property for calls, since the difference in strikes is 5 and the difference in the premiums is 6. If we observed these values, we could engage in arbitrage by buying the 55-strike call and selling the 50-strike call, which is a bear spread. Note that we receive  \$6 initially and never have to pay more than\$ 5 in the future. This is an arbitrage, whatever the interest rate.

Now consider the third proposition, strike price convexity. There is a different way to write the convexity inequality, equation (19). Since  $K_{2}$  is between  $K_{1}$  and  $K_{3}$ , we can write

Panel A shows call option premiums for which the change in the option premium (\$6) exceeds the change in the strike price (\$5). Panel B shows how a bear spread can be used to arbitrage these prices. By lending the bear spread proceeds, we have a zero cash flow at time 0; the cash outflow at time  $T$  is always greater than 1.

TABLE 6

<table><tr><td colspan="5">Panel A</td></tr><tr><td></td><td>Strike</td><td>50</td><td>55</td><td></td></tr><tr><td></td><td>Premium</td><td>18</td><td>12</td><td></td></tr><tr><td colspan="5">Panel B</td></tr><tr><td rowspan="2">Transaction</td><td rowspan="2">Time 0</td><td colspan="3">Expiration or Exercise</td></tr><tr><td>S_T&lt;50</td><td>50\leq S_T\leq 55</td><td>S_T\geq 55</td></tr><tr><td>Buy 55-strike call</td><td>-12</td><td>0</td><td>0</td><td>S_T-55</td></tr><tr><td>Sell 50-strike call</td><td>18</td><td>0</td><td>50-S_T</td><td>50-S_T</td></tr><tr><td>Total</td><td>6</td><td>0</td><td>50-S_T</td><td>-5</td></tr></table> it as a weighted average of the other two strikes, i.e.,


$$

K _ {2} = \lambda K _ {1} + (1 - \lambda) K _ {3}

$$ where


$$

\lambda = \frac {K _ {3} - K _ {2}}{K _ {3} - K _ {1}} \tag {21}

$$

With this expression for  $\lambda$ , it is possible to rewrite equation (19) as

$$

C \left(K _ {2}\right) \leq \lambda C \left(K _ {1}\right) + (1 - \lambda) C \left(K _ {3}\right) \tag {22}

$$

Here is an example illustrating convexity.

Example 5. If  $K_{1} = 50$ ,  $K_{2} = 59$ , and  $K_{3} = 65$ ,  $\lambda = \frac{65 - 59}{65 - 50} = 0.4$ ; hence,

$$

5 9 = 0. 4 \times 5 0 + 0. 6 \times 6 5

$$

Call prices must then satisfy

$$

C (5 9) \leq 0. 4 \times C (5 0) + 0. 6 \times C (6 5)

$$

Suppose we observe the call premiums in Table 7. The change in the option premium per dollar of strike price change from 50 to 59 is  $5.1 / 9 = 0.567$ , and the change from 59 to 65 is  $3.9 / 6 = 0.65$ . Thus, prices violate the proposition that the premium decreases at a decreasing rate as the strike price increases.

To arbitrage this mispricing, we engage in an asymmetric butterfly spread: Buy four 50-strike calls, buy six 65-strike calls, and sell ten 59-strike calls.[12] By engaging in a butterfly spread, Panel B shows that a profit of at least 3 is earned.

The formula for  $\lambda$  may look imposing, but there is an easy way to figure out what  $\lambda$  is in any situation. In this example, we had the prices 50, 59, and 65. It is possible to express 59 as a weighted average of 50 and 65. The total distance between 50 and 65 is 15, and the distance from 50 to 59 is 9, which is  $9 / 15 = 0.6$  of the total distance. Thus, we can write 59 as

$$

5 9 = (1 - 0. 6) \times 5 0 + 0. 6 \times 6 5

$$

This is the interpretation of  $\lambda$  in expression (22).

Here is an example of convexity with puts.

Example 6. See the prices in Panel A of Table 8. We have  $K_{1} = 50$ ,  $K_{2} = 55$ , and  $K_{3} = 70$ .  $\lambda = 0.75$  and  $55 = 0.75 \times 50 + (1 - 0.75) \times 70$ . Convexity is violated since

$$

P (5 5) = 8 > 0. 7 5 \times 4 + (1 - 0. 7 5) \times 1 6 = 7

$$

TABLE 7

The example in Panel A violates the proposition that the rate of change of the option premium must decrease as the strike price rises. The rate of change from 50 to 59 is  $5.1/9$ , while the rate of change from 59 to 65 is  $3.9/6$ . We can arbitrage this convexity violation with an asymmetric butterfly spread. Panel B shows that we earn at least  $\$3$  plus interest at time  $T$ .

Panel A

<table><tr><td>Strike</td><td>50</td><td>59</td><td>65</td></tr><tr><td>Call premium</td><td>14</td><td>8.9</td><td>5</td></tr></table>

Panel B

<table><tr><td rowspan="2">Transaction</td><td rowspan="2">Time 0</td><td colspan="4">Expiration or Exercise</td></tr><tr><td>S_T&lt;50</td><td>50≤S_T≤59</td><td>59≤S_T≤65</td><td>S_T&gt;65</td></tr><tr><td>Buy four 50-strike calls</td><td>-56</td><td>0</td><td>4(S_T-50)</td><td>4(S_T-50)</td><td>4(S_T-50)</td></tr><tr><td>Sell ten 59-strike calls</td><td>89</td><td>0</td><td>0</td><td>10(59-S_T)</td><td>10(59-S_T)</td></tr><tr><td>Buy six 65-strike calls</td><td>-30</td><td>0</td><td>0</td><td>0</td><td>6(S_T-65)</td></tr><tr><td>Lend 3</td><td>-3</td><td>3e^{rT}</td><td>3e^{rT}</td><td>3e^{rT}</td><td>3e^{rT}</td></tr><tr><td>Total</td><td>0</td><td>3e^{rT}</td><td>3e^{rT}+4(S_T-50)</td><td>3e^{rT}+6(65-S_T)</td><td>3e^{rT}</td></tr></table>

TABLE 8

Arbitrage of mispriced puts using asymmetric butterfly spread.

Panel A

<table><tr><td>Strike</td><td>50</td><td>55</td><td>70</td></tr><tr><td>Put premium</td><td>4</td><td>8</td><td>16</td></tr></table>

Panel B

<table><tr><td rowspan="2">Transaction</td><td rowspan="2">Time 0</td><td colspan="4">Expiration or Exercise</td></tr><tr><td>S_T&lt;50</td><td>50 \leq S_T \leq 55</td><td>55 \leq S_T \leq 70</td><td>S_T &gt; 70</td></tr><tr><td>Buy three 50-strike puts</td><td>-12</td><td>3(50 - S_T)</td><td>0</td><td>0</td><td>0</td></tr><tr><td>Sell four 55-strike puts</td><td>32</td><td>4(S_T - 55)</td><td>4(S_T - 55)</td><td>0</td><td>0</td></tr><tr><td>Buy one 70-strike put</td><td>-16</td><td>70 - S_T</td><td>70 - S_T</td><td>(70 - S_T)</td><td>0</td></tr><tr><td>Lend 4</td><td>-4</td><td>4e^{rT}</td><td>4e^{rT}</td><td>4e^{rT}</td><td>4e^{rT}</td></tr><tr><td>Total</td><td>0</td><td>4e^{rT}</td><td>4e^{rT} + 3(S_T - 50)</td><td>4e^{rT} + 70 - S_T</td><td>4e^{rT}</td></tr></table>

To arbitrage this mispricing, we engage in an asymmetric butterfly spread: Buy three 50-strike puts, buy one 70-strike put, and sell four 55-strike puts. The result is in Panel B of Table 8.

In this case, we always make at least 4. Figure 2 illustrates the necessary shape of curves for both calls and puts relating the option premium to the strike price.

# FIGURE 2

Illustration of convexity and other strike price properties for calls and puts. For calls the premium is decreasing in the strike, with a slope less than 1 in absolute value. For puts the premium is increasing in the strike, with a slope less than 1. For both, the graph is convex, i.e., shaped like the cross section of a bowl.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/752f16edf43e726651dfdefefbaf8ab71542773f71c8532f6e352069285d546d.jpg)
Option Premium

# Exercise and Moneyness

If it is optimal to exercise an option, it is also optimal to exercise an otherwise identical option that is more in-the-money. Consider what would have to happen in order for this not to be true.

Suppose a call option on a dividend-paying stock has a strike price of \$50, and the stock price is \$70. Also suppose that it is optimal to exercise the option. This means that the option must sell for $70 - $50 = 20.

Now what can we say about the premium of a 40-strike option? We know from the discussion above that the change in the premium is no more than the change in the strike price, or else there is an arbitrage opportunity. This means that

$$

C (4 0) \leq \$ 2 0 + (\$ 5 0 - \$ 4 0) = \$ 3 0

$$

Since the 40-strike call is worth 30 if exercised, it must be optimal to exercise it.

Following the same logic, this is also true for puts.

# CHAPTER SUMMARY

Put-call parity is one of the most important relations in option pricing. Parity is the observation that buying a European call and selling a European put with the same strike price and time to expiration is equivalent to making a leveraged investment in the underlying asset, less the value of cash payments to the underlying asset over the life of the option. Different versions of parity for different underlying assets appear in Table 9. In every case the value

Versions of put-call parity. Notation in the table includes the spot currency exchange rate,  $x_0$ ; the risk-free interest rate in the foreign currency,  $r_f$ ; and the current bond price,  $B_0$ .

TABLE 9

<table><tr><td>Underlying Asset</td><td>Parity Relationship</td></tr><tr><td>Futures contract</td><td>e-rT F0,T = C(K,T) - P(K,T) + e-rT K</td></tr><tr><td>Stock, no-dividend</td><td>S0 = C(K,T) - P(K,T) + e-rT K</td></tr><tr><td>Stock, discrete dividend</td><td>S0 - PV0,T(Div) = C(K,T) - P(K,T) + e-rT K</td></tr><tr><td>Stock, continuous dividend</td><td>e-δT S0 = C(K,T) - P(K,T) + e-rT K</td></tr><tr><td>Currency</td><td>e-rfT x0 = C(K,T) - P(K,T) + e-rT K</td></tr><tr><td>Bond</td><td>B0 - PV0,T(Coupons) = C(K,T) - P(K,T) + e-rT K</td></tr></table> on the left-hand side of the parity equation is the price of the underlying asset less its cash flows over the life of the option. The parity relationship can be algebraically rearranged so that options and the underlying asset create a synthetic bond, options and a bond create a synthetic stock, and one kind of option together with the stock and bond synthetically create the other kind of option.


The idea of an option can be generalized to permit an asset other than cash to be the strike asset. This insight blurs the distinction between a put and a call. The idea that puts and calls are different ways of looking at the same contract is commonplace in currency markets.

Option prices must obey certain restrictions when we vary the strike price, time to maturity, or option exercise style. American options are at least as valuable as European options. American calls and puts become more expensive as time to expiration increases, but European options need not. European options on a non-dividend-paying stock do become more expensive with increasing time to maturity if the strike price grows at the interest rate. Dividends are the reason to exercise an American call early, while interest is the reason to exercise an American put early. A call option on a non-dividend-paying stock will always have a price greater than its value if exercised; hence, it should never be exercised early.

There are a number of pricing relationships related to changing strike prices. In particular, as the strike price increases, calls become less expensive with their price decreasing at a decreasing rate. The absolute value of the change in the call price is less than the change in the strike price. As the strike price decreases, puts become less expensive with their price decreasing at a decreasing rate. The change in the put price is less than the change in the strike price.

# FURTHER READING

Much of the material in this chapter can be traced to Merton (1973b), which contains an exhaustive treatment of option properties that must hold if there is to be no arbitrage. Cox and Rubinstein (1985) also provides an excellent treatment of this material.

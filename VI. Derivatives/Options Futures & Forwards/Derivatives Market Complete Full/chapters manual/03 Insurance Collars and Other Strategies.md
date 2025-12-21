---
title: "Insurance, Collars, and Other Strategies"
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:10:00 AM
formatter_model: claude-3-5-sonnet-20241022
cli-tool: claude-code
primary_tags:
   - options strategies
   - put call parity
   - insurance strategies
   - spreads and collars
   - volatility speculation
secondary_tags:
   - synthetic forwards
   - covered writing
   - bull bear spreads
   - box spreads
   - straddles strangles
   - butterfly spreads
   - zero cost collars
   - asymmetric butterflies
cssclasses: academia
---

# Insurance, Collars, and Other Strategies

In this chapter we discuss forwards, calls, and puts. We elaborate on the idea that options are insurance. We also examine the link between forward prices and option prices, including the important concept of put-call parity. Finally, we look at some common option strategies, such as spreads, straddles, and collars. Among your goals in this chapter should be to become familiar with drawing and interpreting profit and loss diagrams for option positions.

## I. BASIC INSURANCE STRATEGIES

There are an infinity of ways to combine options to create different payoffs. In this section we examine two important kinds of strategies in which the option is combined with a position in the underlying asset. First, options can be used to insure long or short asset positions. Second, options can be written against an asset position, in which case the option writer is selling insurance. We consider four positions: being long the asset coupled with a purchased put or written call, and being short the asset coupled with a purchased call or written put.

In this section we use S&R index examples. We assume an index price of  \$1000, a 2\% effective 6-month interest rate, and premiums of \$93.809 for the 1000-strike 6-month call and 74.201 for the 1000-strike 6-month put.

## Insuring a Long Position: Floors

An analysis has demonstrated that put options are insurance against a fall in the price of an asset. Thus, if we own the S&R index, we can insure the position by buying an S&R put option. The purchase of a put option is also called a floor, because we are guaranteeing a minimum sale price for the value of the index.

To examine this strategy, we want to look at the combined payoff of the index position and put. We add them together to see the net effect of holding both positions at the same time.

Table 1 summarizes the result of buying a 1000-strike put with 6 months to expiration, in conjunction with holding an index position with a current value of 1000. The table computes the payoff for each position and sums them to obtain the total payoff. The final column takes account of financing cost by subtracting cost plus interest from the payoff.

From Chapter 3 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

TABLEI

Payoff and profit at expiration from purchasing the S&R index and a 1000-strike put option. Payoff is the sum of the first two columns. Cost plus interest for the position is  $(\$  1000 + \$ 74.201)\times 1.02 = \$ 1095.68. $Profit is payoff less$ \ $1095.68\$

<table><tr><td colspan="2">Payoff at Expiration</td><td></td><td></td><td></td></tr><tr><td>S&amp;R Index</td><td>S&amp;R Put</td><td>Payoff</td><td>-(Cost + Interest)</td><td>Profit</td></tr><tr><td>$900</td><td>$100</td><td>$1000</td><td>-$1095.68</td><td>-95.68</td></tr><tr><td>950</td><td>50</td><td>1000</td><td>-1095.68</td><td>-95.68</td></tr><tr><td>1000</td><td>0</td><td>1000</td><td>-1095.68</td><td>-95.68</td></tr><tr><td>1050</td><td>0</td><td>1050</td><td>-1095.68</td><td>-45.68</td></tr><tr><td>1100</td><td>0</td><td>1100</td><td>-1095.68</td><td>4.32</td></tr><tr><td>1150</td><td>0</td><td>1150</td><td>-1095.68</td><td>54.32</td></tr><tr><td>1200</td><td>0</td><td>1200</td><td>-1095.68</td><td>104.32</td></tr></table>

to obtain profit. "Cost" here means the initial cash required to establish the position. This is positive when payment is required, and negative when cash is received. We could also have computed profit separately for the put and index. For example, if the index is 900 at expiration, we have

$$
\underbrace{\underline{\$900 - (\$1000 \times 1.02)}}_{\text{Profit on S&R Index}} + \underbrace{\underline{\$100 - (\$74.201 \times 1.02)}}_{\text{Profit on Put}} = -\underline{\$95.68}
$$

This gives the same result as the calculation performed in Table 1. The level of the floor is -\95.68, which is the lowest possible profit.

Figure 1 graphs the components of Table 1. Panels (c) and (d) show the payoff and profit for the combined index and put positions. The combined payoff graph in panel (c) is created by adding at each index price the value of the index and put positions; this is equivalent to summing columns 1 and 2 in Table 1.

Notice in Figure 1 that the combined position created by adding the index and the put looks like a call. Intuitively this equivalence makes sense. A call has a limited loss—the premium—and benefits from gains in the index above the strike price. Similarly, when we own the index and buy a put, the put limits losses, but it permits us to benefit from gains in the index. Thus, the call on the one hand and the insured index position on the other have similar characteristics.

Panel (c), however, illustrates that the payoff to the combined position (index plus put) is not identical to the payoff from buying a call. The difference stems from the fact that buying a call entails paying only the option premium, while buying the index and put entails paying for both the index and the put option, which together are more expensive than buying a call. The profit diagram in panel (d) of Figure 1, however, does look like a call.

## FIGURE I

Panel (a) shows the payoff diagram for a long position in the index (column 1 in Table 1). Panel (b) shows the payoff diagram for a purchased index put with a strike price of \$1000 (column 2 in Table 1). Panel (c) shows the combined payoff diagram for the index and put (column 3 in Table 1). Panel (d) shows the combined profit diagram for the index and put, obtained by subtracting \$1095.68 from the payoff diagram in panel (c) (column 5 in Table 1).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/61bd92b17570f1770d040d8fcd7c0130190495bac8c115464240a1cfa25f9daf.jpg)

Payoff ($)

(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/25a3dfcd8ecd6ae668f8ca03e33cf2f29cddadef44ddbaf31eae05ac5472c2df.jpg)

Payoff ($)

(b)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/f526fd11f29a972032db6034843c61acef2f1d3eb283ddf0c6f10adff68276d0.jpg)

(c)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/8dd7a2f4cba39eb94fbb813dd5f9c415fd90f13c006d0e4a16c6a1f45594de8e.jpg)

(d)

In fact, it is identical to the profit diagram for buying an S&R index call with a strike price of \$1000. The profit of –\$95.68 for prices below 1000 is exactly the future value of the 1000-strike 6-month to expiration call premium above.

Adding a bond to a payoff diagram shifts it vertically but leaves the corresponding profit diagram unaffected. The combined position of index plus put in panel (c) is therefore equivalent to buying a 1000-strike call—depicted by itself in panel (d)—and buying a zero-coupon bond that pays 1000 at expiration of the option.

In practice, a buyer of homeowner's insurance also owns the insured asset (the house). Owning a home is analogous to owning the stock index, and insuring the house is like owning a put. Thus, owning a home plus insurance is like owning the index and owning a put. Figure 2 depicts an insurance policy, together with the uninsured house and the combined position. Interpreting the house as the S&R index and insurance as the put, Figure 2 looks exactly like Figure 1. An insured house has a profit diagram that looks like a call option.

### FIGURE 2

Payoff to owning a house and owning insurance. We assume a  \$25,000 deductible and a \$200,000 house, with the policy costing 15,000.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/43ecf01eb42e60dc5671a5e012caa2fe7cf8b5913748343ac0353704af53ce5b.jpg)

## Insuring a Short Position: Caps

If we have a short position in the S&R index, we experience a loss when the index rises. We can insure a short position by purchasing a call option to protect against a higher price of repurchasing the index. Buying a call option is also called a cap.

Table 2 presents the payoff and profit for a short position in the index coupled with a purchased call option. Because we short the index, we earn interest on the short proceeds less the cost of the call option, giving  $-\$ 924.32$ as the future value of the cost.

Figure 3 graphs the columns of Table 2. The payoff and profit diagrams resemble those of a purchased put. As with the insured index position in Figure 1, we have to be careful in dealing with cash flows. The payoff in panel (c) of Figure 3 is like that of a purchased put coupled with borrowing. In this case, the payoff diagram for shorting the index and buying a call is equivalent to that from buying a put and borrowing the present value of  $1000$ (980.39). Since profit diagrams are unaffected by borrowing, however, the profit diagram in panel (d) is exactly the same as that for a purchased S&R index put. Not only does the insured short position look like a put, it has the same loss as a purchased put if the price is above  $1000:$ 75.68, which is the future value of the 74.201 put premium.

Payoff and profit at expiration from short-selling the S&R index and buying a 1000-strike call option at a premium of  \$93.809. The payoff is the sum of the first two columns. Cost plus interest for the position is (-\$  1000 + \$ 93.809)  $\times 1.02 = -\ 924.32$  Profit is payoff plus \$924.32\$

TABLE 2

<table><tr><td colspan="2">Payoff at Expiration</td><td></td><td></td><td></td></tr><tr><td>Short S&amp;R Index</td><td>S&amp;R Call</td><td>Payoff</td><td>-(Cost + Interest)</td><td>Profit</td></tr><tr><td>-$900</td><td>$0</td><td>-$900</td><td>$924.32</td><td>24.32</td></tr><tr><td>-950</td><td>0</td><td>-950</td><td>924.32</td><td>-25.68</td></tr><tr><td>-1000</td><td>0</td><td>-1000</td><td>924.32</td><td>-75.68</td></tr><tr><td>-1050</td><td>50</td><td>-1000</td><td>924.32</td><td>-75.68</td></tr><tr><td>-1100</td><td>100</td><td>-1000</td><td>924.32</td><td>-75.68</td></tr><tr><td>-1150</td><td>150</td><td>-1000</td><td>924.32</td><td>-75.68</td></tr><tr><td>-1200</td><td>200</td><td>-1000</td><td>924.32</td><td>-75.68</td></tr></table>

## FIGURE 3

Panel (a) shows the payoff diagram for a short position in the index (column 1 in Table 2). Panel (b) shows the payoff diagram for a purchased index call with a strike price of  \$1000 (column 2 in Table 2). Panel (c) shows the combined payoff diagram for the short index and long call (column 3 in Table 2). Panel (d) shows the combined profit diagram for the short index and long call, obtained by adding\$ 924.32 to the payoff diagram in panel (c) (column 5 in Table 2).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/aed9222e0687ce44d146db4fd489f142f986c9d9e4c1ce95008eac98a1c933e3.jpg)

Payoff ($)

(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/2ffff260be1d2a2a93f41fa56d24e02c2761807a4f828d7c5dd1a1f699226871.jpg)

Payoff ($)

(b)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/76d1a1d045c7b3f7c0949dd485f69d97bcc0661c7f1e4e619aac5a6c93f4bf51.jpg)

Payoff ($)

(c)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/6f2eb8c8a5d596fa9f537994c89e36c6b164ff3a254e7d29ca513b030fc9edb7.jpg)

Profit ($)

(d)

## Selling Insurance

We can expect that some investors want to purchase insurance. However, for every insurance buyer there must be an insurance seller. In this section we examine strategies in which investors sell insurance.

It is possible, of course, for an investor to simply sell calls and puts. Often, however, investors also have a position in the asset when they sell insurance. Writing an option when there is a corresponding long position in the underlying asset is called covered writing, option overwriting, or selling a covered call. All three terms mean essentially the same thing.[2] In contrast, naked writing occurs when the writer of an option does not have a position in the asset.

In addition to the covered writing strategies we will discuss here, there are other insurance-selling strategies, such as delta-hedging, which are less risky than naked writing and are used in practice by market-makers.

Covered Call Writing. If we own the S&R index and simultaneously sell a call option, we have written a covered call. A covered call will have limited profitability if the index increases, because an option writer is obligated to sell the index for the strike price. Should the index decrease, the loss on the index is offset by the premium earned from selling the call. A payoff with limited profit for price increases and potentially large losses for price decreases sounds like a written put.

The covered call looks exactly like a written put, and the maximum profit will be the same as with a written put. Suppose the index is 1100 at expiration. The profit is

$$
\underbrace{\underline{\$1100 - (\$1000 \times 1.02)} + (\$93.809 \times 1.02) - \$100}_{\text{Profit on S&R Index}} = \underline{\$75.68}
$$ which is the future value of the premium received from writing a 1000-strike put.


The profit from owning the index and writing the 1000-strike call is computed in Table 3 and graphed in Figure 4. If the index falls, we lose money on the index but the option premium partially offsets the loss. If the index rises above the strike price, the written option loses money, negating gains on the index.

Writing the covered call generates exactly the negative of the profit from buying a put.

Why would anyone write a covered call? Suppose you have the view that the index is unlikely to move either up or down. (This is sometimes called a "neutral" market view.) If in fact the index does not move and you have written a call, then you keep the premium. If you are wrong and the stock appreciates, you forgo gains you would have had if you did not write the call.

Covered Puts. A covered put is achieved by writing a put against a short position on the index. The written put obligates you to buy the index—for a loss—if it goes down in price. Thus, for index prices below the strike price, the loss on the written put offsets the short stock. For index prices above the strike price, you lose on the short stock.

Payoff and profit at expiration from purchasing the S&R index and selling a 1000-strike call option. The payoff column is the sum of the first two columns. Cost plus interest for the position is  $(\$  1000 - \$ 93.809)\times 1.02 = \ $924.32.$  Profit is payoff less  $\$  924.32$

TABLE 3

<table><tr><td colspan="2">Payoff at Expiration</td><td></td><td></td><td></td></tr><tr><td>S&amp;R Index</td><td>Short S&amp;R Call</td><td>Payoff</td><td>-(Cost + Interest)</td><td>Profit</td></tr><tr><td>$900</td><td>$0</td><td>$900</td><td>-$924.32</td><td>-24.32</td></tr><tr><td>950</td><td>0</td><td>950</td><td>-924.32</td><td>25.68</td></tr><tr><td>1000</td><td>0</td><td>1000</td><td>-924.32</td><td>75.68</td></tr><tr><td>1050</td><td>-50</td><td>1000</td><td>-924.32</td><td>75.68</td></tr><tr><td>1100</td><td>-100</td><td>1000</td><td>-924.32</td><td>75.68</td></tr><tr><td>1150</td><td>-150</td><td>1000</td><td>-924.32</td><td>75.68</td></tr><tr><td>1200</td><td>-200</td><td>1000</td><td>-924.32</td><td>75.68</td></tr></table>

# FIGURE 4

Payoff and profit diagrams for writing a covered S&R call. Panel (a) is the payoff to a long S&R position. Panel (b) is the payoff to a short S&R call with strike price of 1000. Panel (c) is the combined payoff for the S&R index and written call. Panel (d) is the combined profit, obtained by subtracting (\ 1000 - \ 93.809)\times 1.02 = \$ 924.32\$ from the payoff in panel (c).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/b09668d85efe364f3d0d8c75d9c37ec7089609a72e3ac26eee40dd3bc492a637.jpg)
Payoff ($)
(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/315181ffb5f5d81e1a1ed9d065397d52fe47c9341d59f9055405728c837d8221.jpg)
Payoff ($)
(b)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/0d27c3f2427747d7f31e25a1f96476a04a266bc0a509f9e08dfa5847d2e4e0fa.jpg)
Payoff ($)
(c)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/fbdbdd40034cfd8b53cd13a650f637e9b3ddd049ec667da549af8466f29cbcd9.jpg)
Profit ($)
(d)

# FIGURE 5

Payoff and profit diagrams for writing a covered S&R put. Panel (a) is the payoff to a short S&R position. Panel (b) is the payoff to a short S&R put with a strike price of  \$1000. Panel (c) is the combined payoff for the short S&R index and written put. Panel (d) is the combined profit, obtained by adding$ 1000 + $74.201 × 1.02 = \$1095.68 to the payoff in panel (c).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/9227a19f2856688ef14f2abb37d676a7c5f8e1df254b20d4cdbf3eae7662fcf5.jpg)
Payoff ($)
(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/ac0d0f35b71d9012ff2f06bd55c98ef51a5ed456e6f6616666bb2ac001b9e23c.jpg)
Payoff ($)
(b)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/f1aec781a0ea4035f774c65db49d6b6b7dbbf8211e43bb31bb9a37a1331c6f92.jpg)
(c)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/efa9c44b8ff95ea88a4383916b98e804ff851e9cfe4c8095383d1a1cfdb731be.jpg)
(d)

A position where you have a constant payoff below the strike and increasing losses above the strike sounds like a written call. In fact, shorting the index and writing a put produces a profit diagram that is exactly the same as for a written call. Figure 5 shows this graphically, and Problem 2 asks you to verify this by constructing a payoff table.

## 2. PUT-CALL PARITY

We now discuss put-call parity, which is one of the most important relationships in the theory of options. The parity equation tells us the difference in the premiums of puts and calls, when the two options have the same strike price and time to expiration. In this section we will first discuss the use of options to create synthetic forward contracts. We then develop the put-call parity equation.

## Synthetic Forwards

It is possible to mimic a long forward position on an asset by buying a call and selling a put, with each option having the same strike price and time to expiration. For example, we could buy the 6-month 1000-strike S&R call for \$93.81 and sell the 6-month 1000-strike S&R put for \$74.20. This position resembles a long forward contract: In 6 months we will pay 1000 to buy the index. An important difference between the forward and the option

## FIGURE 6

Purchase of a 1000-strike S&R call, sale of a 1000-strike S&R put, and the combined position. The combined position resembles the profit on a long forward contract.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/7841db5397c6c9e6ded0ef79f8b09828b17ecbefc9628f90a0e386ca14a03d0d.jpg)

position is that the forward contract has no premium, but the options have a net cost of $93.81 - $74.20 = 19.61.


To better understand this position, suppose that the index in 6 months is at 900. We will not exercise the call, but we have written a put. The put buyer will exercise the right to sell the index for \$1000; therefore we are obligated to buy the index at \$1000. If instead the index is at \$1100, the put is not exercised, but we exercise the call, buying the index for \$1000. Thus, whether the index rises or falls, when the options expire we buy the index for the strike price of the options, 1000.

The purchased call, written put, and combined positions are shown in Figure 6. The purchase of a call and sale of a put creates a synthetic long forward contract, which has two minor differences from the actual forward:

1. The forward contract has a zero premium, while the synthetic forward requires that we pay the net option premium.
2. With the forward contract we pay the forward price, while with the synthetic forward we pay the strike price.

If you think about it, these two considerations must be related. If we set the strike price low, we are obligated to buy the index at a discount relative to the forward price. Buying at a lower price than the forward price is a benefit. In order to obtain this benefit we have to pay the positive net option premium, which stems from the call being more expensive than the put. In fact, in Figure 6, the implicit cost of the synthetic forward—the price at which the profit on the combined call-put position is zero—is 1020, which is the S&R forward price.

Similarly, if we set the strike price high, we are obligated to buy the index at a high price relative to the forward price. To offset the extra cost of acquiring the index using the high strike options, it makes sense that we would receive payment initially. This would occur if the put that we sell is more expensive than the call we buy.

Finally, if we set the strike price equal to the forward price, then to mimic the forward the initial premium must equal zero. In this case, put and call premiums must be equal.

## The Put-Call Parity Equation

We can summarize this argument by saying that the net cost of buying the index at a future date using options must equal the net cost of buying the index using a forward contract. If at time 0 we enter into a long forward position expiring at time  $T$ , we obligate ourselves to buy the index at the forward price,  $F_{0,T}$ . The present value of buying the index in the future is just the present value of the forward price,  $\mathrm{PV}(F_{0,T})$ .

If instead we buy a call and sell a put today to guarantee the purchase price for the index in the future, the present value of the cost is the net option premium for buying the call and selling the put,  $\mathrm{Call}(K,T) - \mathrm{Put}(K,T)$ , plus the present value of the strike price,  $\mathrm{PV}(K)$ . (The notations "Call  $(K,T)$ " and "Put  $(K,T)$ " denote the premiums of options with strike price  $K$  and with  $T$  periods until expiration.)

Equating the costs of the alternative ways to buy the index at time  $t$  gives us

$$
\operatorname{PV}(F_{0,T}) = [\operatorname{Call}(K,T) - \operatorname{Put}(K,T)] + \operatorname{PV}(K)
$$

We can rewrite this as

$$
\operatorname{Call}(K,T) - \operatorname{Put}(K,T) = \operatorname{PV}(F_{0,T} - K) \tag{1}
$$

In words, the present value of the bargain element from buying the index at the strike price [the right-hand side of equation (1)] must equal the initial net option premium [the left-hand side of equation (1)]. Equation (1) is known as put-call parity.

Example 1. As an example of equation (1), consider buying the 6-month 1000-strike S&R call for a premium of \$93.809 and selling the 6-month 1000-strike put for a premium of \$74.201. These transactions create a synthetic forward permitting us to buy the index in 6 months for \$1000. Because the actual forward price is \$1020, this synthetic forward permits us to buy the index at a bargain of \$20, the present value of which is $20/1.02 = $19.61. The difference in option premiums is also $19.61 ($93.809 - \$74.201 = 19.61). This result is exactly what we get with equation (1):

$$
\$93.809 - \$74.201 = \mathrm{PV}(\$1020 - \$1000)
$$

A forward contract for which the premium is not zero is sometimes called an off-market forward. This terminology arises since a true forward by definition has a zero premium. Therefore, a forward contract with a nonzero premium must have a forward price that is "off the market (forward) price." Unless the strike price equals the forward price, buying a call and selling a put creates an off-market forward.

Equivalence of Different Positions. We have seen earlier that buying the index and buying a put generates the same profit as buying a call. Similarly, selling a covered call (buying the index and selling a call) generates the same profit as selling a put. Equation (1) explains why this happens.

Consider buying the index and buying a put, as in Section 1. Recall that, in this example, we have the forward price equal to \$1020 and the index price equal to \$1000.

Thus, the present value of the forward price equals the index price. Rewriting equation (1) gives

$$
\begin{array}{l}
\operatorname{PV}(F_{0,T}) + \operatorname{Put}(K,T) = \operatorname{Call}(K,T) + \operatorname{PV}(K) \\
\$1000 + \$74.201 = \$93.809 + \$980.39
\end{array}
$$

That is, buying the index and buying the put cost the same, and generate the same payoff, as buying the call and buying a zero-coupon bond costing  $\mathrm{PV}(K)$ .

Similarly, in the case of writing a covered call, we have

$$
\operatorname{PV}(F_{0,T}) - \operatorname{Call}(K,T) = \operatorname{PV}(K) - \operatorname{Put}(K,T)
$$

That is, writing a covered call has the same profit as lending  $\mathrm{PV}(K)$  and selling a put. Equation (1) provides a tool for constructing equivalent positions.

No Arbitrage. In deriving equation (1), and in some earlier discussions, we relied on the idea that if two different investments generate the same payoff, they must have the same cost. If equation (1) did not hold, there would be both low-cost and high-cost ways to acquire the index at time  $T$ . We could simultaneously buy the index at low cost and sell the index at high cost. This transaction has no risk (since we both buy and sell the index) and generates a positive cash flow (because of the difference in costs). Taking advantage of such an opportunity is called arbitrage, and the idea that prices should not permit arbitrage is called "no-arbitrage pricing." We implicitly illustrated this idea earlier in showing how owning the index and buying a put has the same profit as a call, etc.

## 3. SPREADS AND COLLARS

There are many well-known, commonly used strategies that combine two or more options. In this section we discuss some of these strategies and explain the motivation for using them. The underlying theme in this section is that there are always trade-offs in designing a position: It is always possible to lower the cost of a position by reducing its payoff. Thus there are many variations on each particular strategy.

All the examples in this section will use the set of option prices in Table 4. We will assume the continuously compounded interest rate is  $8\%$ .

## Bull and Bear Spreads

An option spread is a position consisting of only calls or only puts, in which some options are purchased and some written. Spreads are a common strategy. In this section we define some typical spread strategies and explain why you might use a spread.

Suppose you believe a stock will appreciate. Let's compare two ways to speculate on this belief: entering into a long forward contract or buying a call option with the strike price equal to the forward price. The forward contract has a zero premium and the call has a positive premium. A difference in payoffs explains the difference in premiums. If the stock

TABLE 4
Black-Scholes option prices assuming stock price  $= \$  40 , volatility  $= 30\%$ , effective annual risk-free rate  $= 8.33\%$  (8\%, continuously compounded), dividend yield  $= \ 0$ , and 91 days to expiration.

<table><tr><td>Strike</td><td>Call</td><td>Put</td></tr><tr><td>35</td><td>6.13</td><td>0.44</td></tr><tr><td>40</td><td>2.78</td><td>1.99</td></tr><tr><td>45</td><td>0.97</td><td>5.08</td></tr></table>

price at expiration is greater than the forward price, the forward contract and call have the same payoff. If the stock price is less than the forward price, however, the forward contract has a loss and the call is worth zero. Put-call parity tells us that the call is equivalent to the forward contract plus a put option. Thus, the call premium equals the cost of the put, which is insurance against the stock price being less than the forward price.


You might ask: Is there a lower-cost way to speculate that the stock price will rise, that still has the insurance implicit in the call? The answer is yes: You can lower the cost of your strategy if you are willing to reduce your profit should the stock appreciate. You can do this by selling a call at a higher strike price. The owner of this second call buys appreciation above the higher strike price and pays you a premium. You achieve a lower cost by giving up some portion of profit. A position in which you buy a call and sell an otherwise identical call with a higher strike price is an example of a bull spread.

Bull spreads can also be constructed using puts. Perhaps surprisingly, you can achieve the same result either by buying a low-strike call and selling a high-strike call, or by buying a low-strike put and selling a high-strike put.

Spreads constructed with either calls or puts are sometimes called vertical spreads. The terminology stems from the way option prices are typically presented, with strikes arrayed vertically (as in Table 4).

Example 2. To see how a bull spread arises, suppose we want to speculate on the stock price increasing. Consider buying a 40-strike call with 3 months to expiration. From Table 4, the premium for this call is 2.78. We can reduce the cost of the position—and also the potential profit—by selling the 45-strike call.

An easy way to construct the graph for this position is to emulate a spreadsheet: For each price, compute the profit of each option position and add up the profits for the individual positions. It is worth working through one example in detail to see how this is done.

The initial net cost of the two options is  $2.78 -$ 0.97 = \$1.81. With 3 months interest, the total cost at expiration is  \$1.81 \times (1.0833)^{0.25} =1.85. Table 5 computes the cash flow at expiration for both options and computes profit on the position by subtracting the future value of the net premium.

Figure 7 graphs the position in Table 5. You should verify that if you buy the 40-strike put and sell the 45-strike put, you obtain exactly the same graph.

TABLE 5
Profit at expiration from purchase of 40-strike call and sale of 45-strike call.

<table><tr><td>Stock Price at Expiration</td><td>Purchased
40-Call</td><td>Written
45-Call</td><td>Premium
Plus Interest</td><td>Total</td></tr><tr><td>$35.0</td><td>$0.0</td><td>$0.0</td><td>-$1.85</td><td>-1.85</td></tr><tr><td>37.5</td><td>0.0</td><td>0.0</td><td>-1.85</td><td>-1.85</td></tr><tr><td>40.0</td><td>0.0</td><td>0.0</td><td>-1.85</td><td>-1.85</td></tr><tr><td>42.5</td><td>2.5</td><td>0.0</td><td>-1.85</td><td>0.65</td></tr><tr><td>45.0</td><td>5.0</td><td>0.0</td><td>-1.85</td><td>3.15</td></tr><tr><td>47.5</td><td>7.5</td><td>-2.5</td><td>-1.85</td><td>3.15</td></tr><tr><td>50.0</td><td>10.0</td><td>-5.0</td><td>-1.85</td><td>3.15</td></tr></table>

# FIGURE 7

Profit diagram for a 40- 45 bull spread: buying a 40-strike call and selling a 45-strike call.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/6141a5e829f793e150c38e5a27c01edcff1a3c03f172d4c7460c01d31c63b538.jpg)
Profit ($)

The opposite of a bull spread is a bear spread. Using the options from the above example, we could create a bear spread by selling the 40-strike call and buying the 45-strike call. The profit diagram would be exactly the opposite of Figure 7.

## Box Spreads

A box spread is accomplished by using options to create a synthetic long forward at one price and a synthetic short forward at a different price. This strategy guarantees a cash flow in the future. Hence, it is an option spread that is purely a means of borrowing or lending money: It is costly but has no stock price risk. The reasons for using a box spread are discussed in Box 1.


Example 3. Suppose we simultaneously enter into the following two transactions:

1. Buy a 40-strike call and sell a 40-strike put.
2. Sell a 45-strike call and buy a 45-strike put.

The first transaction is a synthetic forward purchase of a stock for  \$40, while the second transaction is the synthetic forward sale of the stock for\$ 45. Clearly the payoff at expiration will be 5; hence, the transaction has no stock price risk. Using the assumptions in Table 4, the cost of the strategy should be

$$
5 \times (1.0833)^{-0.25} = \$4.90
$$

In fact, using the premiums in Table 4, the initial cash flow is

$$
(\$1.99 - \$2.78) + (\$0.97 - \$5.08) = -\$4.90
$$

Another way to view this transaction is that we have bought a 40-45 bull spread using calls (buy 40 call, sell 45 call), and bought a 40-45 bear spread using puts (sell 40 put, buy 45 put).

## Ratio Spreads

A ratio spread is constructed by buying  $m$  options at one strike and selling  $n$  options at a different strike, with all options having the same type (call or put), same time to maturity, and same underlying asset. You are asked to construct ratio spreads in Problem 15. Also, a ratio spread constructed by buying a low-strike call and selling two higher-strike calls is one of the positions depicted in the chapter summary in Figure 16.

Since ratio spreads involve buying and selling unequal numbers of options, it is possible to construct ratio spreads with zero premium. The significance of this may not be obvious to you now, but by using ratio spreads we can construct paylater strategies: insurance that costs nothing if the insurance is not needed. The trade-off to this, as you might guess, is that the insurance is more costly if it is needed.

## Collars

A collar is the purchase of a put and the sale of a call with a higher strike price, with both options having the same underlying asset and the same expiration date. If the position is reversed (sale of a put and purchase of a call), the collar is written. The collar width is the difference between the call and put strikes.

Example 4. Suppose we sell a 45-strike call with a \$0.97 premium and buy a 40-strike put with a \$1.99 premium. This collar is shown in Figure 8. Because the purchased put has a higher premium than the written call, the position requires investment of 1.02.

## BOX I: The Use of Box Spreads

A box spread is an alternative to buying a bond. Option market-makers in particular have low transaction costs and can sell box spreads, which is equivalent to borrowing. Box spreads can therefore be a source of funds. In the past, box spreads also provided a tax benefit for some investors. Although a change in the tax law in 1993 ostensibly eliminated this use of box spreads, the issue provides an illustration of why derivatives create problems for the tax authorities.

Consider a taxable investor who has sold stock investments at a loss. This loss is classified for tax purposes as a capital loss. In the United States, capital gains are always taxed, but capital losses are only deductible against capital gains. (The exception to this is that individual investors are allowed to deduct a limited amount of capital losses against ordinary income.) Thus, a taxable investor with large capital losses would like to find a mechanism to generate income which can be labeled as capital gains. This is not as easy as it sounds. A risk-free zero-coupon bond—which is certain to appreciate over its life—generates interest income, which cannot be used to offset capital losses. A stock held to generate gains could instead go down in price, generating additional losses.

A box spread sounds as if it should enable investors to generate capital gains as needed: It is a synthetic bond, guaranteed to appreciate in value just like a bond. Moreover, the gain or loss on an option is a capital gain or loss. If the change in value of a box spread were taxed as a capital gain, box spreads could be used to create risk-free capital gains income, against which capital losses could be offset.


Lawmakers in the United States have anticipated strategies like this. Section 1258 of the U.S. Tax Code, enacted in 1993, explicitly states that capital income should be taxed as ordinary income if all expected return is due to time value of money on the investment (in other words, if the investment is equivalent to a bond). This would seem to eliminate the tax motive for entering into box spreads. The problem for the tax authorities, however, is how to identify taxpayers using box spreads for this purpose. There is nothing wrong with entering into a box spread; the law is only violated if the taxpayer reports the resulting income as a capital gain. This is difficult to detect. Tax rules may also differ internationally. In Griffin v. Citibank Investments Ltd. (2000), for example, British courts ruled that a box spread was not necessarily equivalent to a loan.

The fundamental problem is that the tax code calls for different taxation of bonds and options, but options can be used to create bonds. There are many similar illustrations of this problem.

In Figure 8, the collar resembles a short forward contract. Economically, it is like a short forward contract in that it is fundamentally a short position: The position benefits from price decreases in the underlying asset and suffers losses from price increases. A collar differs from a short forward contract in having a range between the strikes in which the expiration payoff is unaffected by changes in the value of the underlying asset.

In practice, collars are frequently used to implement insurance strategies—for example, by buying a collar when we own the stock. This position, which we will call a collared stock, entails buying the stock, buying a put, and selling a call. It is an insured position because we own the asset and buy a put. The sale of a call helps to pay for the purchase of the put. The collared stock looks like a bull spread; however, it arises from a different set

## FIGURE 8

Profit diagram of a purchased collar constructed by selling a 45-strike call and buying a 40-strike put.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/10922ce7f5378e53d91fc1350a2206495baf5797bd5f64b8bacd5e7ec15482d5.jpg) of transactions. The bull spread is created by buying one option and selling another. The collared stock begins with a position in the underlying asset that is coupled with a collar.


Example 5. Suppose that you own shares of XYZ for which the current price is 40, and you wish to buy insurance. You do this by purchasing a put option. A way to reduce the cost of the insurance is to sell an out-of-the-money call. The profit calculations for this set of transactions—buy the stock, buy a 40-strike put, sell a 45-strike call—are shown in Table 6. Comparing this table to Table 5 demonstrates that profit on the collared stock position is identical to profit on the bull spread. Note that it is essential to account for interest as a cost of holding the stock.

If you have a short position in the stock, you can collar the position by buying a call for insurance and selling an out-of-the-money put to partially fund the call purchase. The result looks like a bear spread.

Zero-Cost Collars. The collar depicted in Table 6 entails paying a net premium of 1.02: 1.99 for the purchased put, against 0.97 for the written call. It is possible to find strike prices for the put and call such that the two premiums exactly offset one another. This position is called a zero-cost collar.

To illustrate a zero-cost collar, suppose you buy the stock and buy the 40-strike put that has a premium of \$1.99. Trial and error with the Black-Scholes formula reveals that a call with a strike of \$41.72 also has a premium of \$1.99. Thus, you can buy a 40-strike put and sell a 41.72-strike call without paying any premium. The result is depicted in Figure 9. At expiration, the collar exposes you to stock price movements between \$40 and \$41.72, coupled with downside protection below \$40. You pay for this protection by giving up gains should the stock move above 41.72.

TABLE 6
Profit at expiration from purchase of 40-strike put and sale of 45-strike call.

<table><tr><td>Stock Price at Expiration</td><td>Purchased
40-Put</td><td>Written
45-Call</td><td>Premium
Plus Interest</td><td>Profit on Stock</td><td>Total</td></tr><tr><td>$35.00</td><td>$5.00</td><td>$0.00</td><td>–$1.04</td><td>–$5.81</td><td>–$1.85</td></tr><tr><td>37.50</td><td>2.50</td><td>0.00</td><td>–1.04</td><td>–3.31</td><td>–1.85</td></tr><tr><td>40.00</td><td>0.00</td><td>0.00</td><td>–1.04</td><td>–0.81</td><td>–1.85</td></tr><tr><td>42.50</td><td>0.00</td><td>0.00</td><td>–1.04</td><td>1.69</td><td>0.65</td></tr><tr><td>45.00</td><td>0.00</td><td>0.00</td><td>–1.04</td><td>4.19</td><td>3.15</td></tr><tr><td>47.50</td><td>0.00</td><td>–2.50</td><td>–1.04</td><td>6.69</td><td>3.15</td></tr><tr><td>50.00</td><td>0.00</td><td>–5.00</td><td>–1.04</td><td>9.19</td><td>3.15</td></tr></table>

## FIGURE 9

Zero-cost collar on XYZ, created by buying XYZ at  \$40, buying a 40-strike put with a premium of\$ 1.99, and selling a 41.72-strike call with a premium of 1.99.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/e164093920f5dd3bed2e2a5cc416257c71d0d9b009076d068429a12a4457bde0.jpg)

For any given stock there is an infinite number of zero-cost collars. One way to see this is to first pick the desired put strike below the forward price. It is then possible to find a strike above the forward price such that a call has the same premium.

Understanding Collars. One aspect of the zero-cost collar that may seem puzzling is that you can finance the purchase of an at-the-money put by selling an out-of-the-money call. In the above example, with the stock at 40, you were able to costlessly buy a 40-strike put by also selling a 41.72-strike call. This makes it seem as if you have free insurance with some possibility of gain. Even if you are puzzled by this, you probably realize that "free"

## Box 2: Bernard Madoff: A Collar by Any Other Name

In 2009, Bernard L. Madoff confessed to having run a Ponzi scheme in his investment fund, Bernard L. Madoff Investment Securities, LLC. A Ponzi scheme (named after Charles Ponzi) is a fraudulent investment vehicle in which funds paid in by late investors are used to pay off early investors. The sheer scale of Madoff's fraud was astonishing: There was an estimated 65 billion missing from investor accounts. The story dominated the news for weeks, with numerous accounts of individual investors who had lost huge sums in the swindle.

Madoff had claimed that his investment fund had returns that were both high on average and with low volatility. Investors were attracted, though there were reports that many professional investors were skeptical. In fact, in 2005, Harry Markopolos sent to the SEC a now-famous 17-page memo in which he alleged that Madoff was running a fraudulent investment fund. Among his assertions were that Madoff's returns reported to clients were too great to be real, and that the correlation of his returns to the S&P 500 index was too low.


Madoff claimed to be using collars to achieve his stable high returns. According to Markopolos, Madoff claimed to investors that he achieved his returns using a "split-strike conversion" strategy on a basket of large stocks. A conversion consists of buying a stock, buying a put, and selling a call, with the options having the same strike. In a "split-strike" conversion, the put strike is below the call strike—in other words, it's a collar.

Stutzer (2010) and Bernard and Boyle (2009) have both examined Madoff's investment strategy and evaluated Markopolos's claims. Both papers conclude that Madoff's reported returns are statistically implausible. In particular, the strategy should have exhibited a greater return volatility and a higher correlation with the index.

insurance is not possible, and something must be wrong with this way of thinking about the position.

This puzzle is resolved by taking into account financing cost. Recall that if you pay \$40 for stock and sell it for \$40 in 91 days, you have not broken even. You have lost money, because you have forgone $40 × (1.0833^{0.25} - 1) = $0.808 in interest. Thus, the true breakeven stock price in this example is \$40.808, about halfway between \$40 and 41.72.

To illustrate the use and pricing of collars, consider an executive who owns a large position in company stock. Such executives frequently hedge their stock positions, using zero-cost collars with several years to maturity. Suppose, for example, that a firm has a price of  \$30/share and an executive wishes to hedge 1 million shares. If the executive buys a 30-strike put with 3 years to maturity, what 3-year call will have the same premium? Assuming an effective annual risk-free rate of 6\%$ , a zero dividend yield, and a  $40\%$  volatility, the Black-Scholes price is 5.298 for a 30-strike put with 3 years to maturity. Using trial and error (or a numerical solver), a call option with a strike of \$47.39 has the same premium. Once again, the zero-cost collar seems highly asymmetric. However, this comparison does not take into account financing cost. The executive selling stock in 3 years for \$30/share will in fact have lost 3 years' worth of interest: 30 × [(1.06)^{3} - 1] = 5.73.\

Box 2 discusses another example of how collars were (or were not) used.

The Cost of the Collar and the Forward Price. Suppose you try to construct a zero-cost collar in which you set the strike of the put option at the stock price plus financing cost— i.e., the future value of the stock price. In the 91-day example above, this would require that you set the put strike equal to  \$40.808, which gives a premium of\$ 2.39. The call premium at this strike is also 2.39! If you try to insure against all losses on the stock, including interest, then a zero-cost collar has zero width.


This is an implication of put-call parity, equation (1). It turns out that 40.808 is also the theoretical forward price. If we set the strike equal to the forward price, the call premium equals the put premium.

## 4. SPECULATING ON VOLATILITY

The positions we have just considered are all directional: A bull spread or a collared stock is a bet that the price of the underlying asset will increase. Options can also be used to create positions that are nondirectional with respect to the underlying asset. With a nondirectional position, the holder does not care whether the stock goes up or down, but only how much it moves. We now examine straddles, strangles, and butterfly spreads, which are examples of nondirectional speculations.

## Straddles

Consider the strategy of buying a call and a put with the same strike price and time to expiration: This strategy is called a straddle. The general idea of a straddle is simple: If the stock price rises, there will be a profit on the purchased call, and if the stock price declines, there will be a profit on the purchased put. Thus, the advantage of a straddle is that it can profit from stock price moves in both directions. The disadvantage to a straddle is that it has a high premium because it requires purchasing two options. If the stock price at expiration is near the strike price, the two premiums are lost. The profit diagram for a 40-strike straddle is graphed in Figure 10. The initial cost of the straddle at a stock price of  \$40 is$ 4.77; $2.78 for the call and \$1.99 for the put.

Figure 10 demonstrates that a straddle is a bet that volatility will be high: The buyer of an at-the-money straddle is hoping that the stock price will move but does not care about the direction of the move. Because option prices reflect the market's estimate of volatility, the cost of a straddle will be greater when the market's perception is that volatility is greater. If at a given set of option prices all investors found it desirable to buy straddles, then option prices would increase. Thus, purchasing a straddle is really a bet that volatility is greater than the market's assessment of volatility, as reflected in option prices.

Strangle. The disadvantage of a straddle is the high premium cost. To reduce the premium, you can buy out-of-the-money options rather than at-the-money options. Such a position is called a strangle. For example, consider buying a 35-strike put and a 45-strike call, for a total premium of  \$1.41, with a future value of\$ 1.44. These transactions reduce your maximum loss if the options expire with the stock near 40, but they also increase the stock-price move required for a profit.

Figure 11 shows the 40-strike straddle graphed against the 35-45 strangle. This comparison illustrates a key point: In comparing any two fairly priced option positions, there will always be a region where each outperforms the other. Indeed, this is necessary to have a fairly priced position.

## FIGURE 10

Combined profit diagram for a purchased 40-strike straddle—i.e., purchase of one 40-strike call option and one 40-strike put option.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/b6462e5bd1c686db828c073edd9c8f3fe479b676442cfbea9481c00e687170bf.jpg)

In Figure 11, the strangle outperforms the straddle roughly when the stock price at expiration is between  \$36.57 and\$ 43.43. Obviously, there is a much broader range in which the straddle outperforms the strangle. How can you decide which is the better investment? The answer is that unless you have a particular view on the stock's performance, you cannot say that one position is preferable to the other. An option pricing model implicitly evaluates the likelihood that one strategy will outperform the other, and it computes option prices so that the two strategies are equivalently fair deals. An investor might have a preference for one strategy over the other due to subjective probabilities that differ from the market's.

Written Straddle. What if an investor believes that volatility is lower than the market's assessment? Because a purchased straddle is a bet that volatility is high (relative to the market's assessment), a written straddle—selling a call and put with the same strike price and time to expiration—is a bet that volatility is low (relative to the market's assessment).

Figure 12 depicts a written straddle, which is exactly the opposite of Figure 10, the purchased straddle. The written straddle is most profitable if the stock price is 40 at expiration, and in this sense it is a bet on low volatility. What is striking about Figure 12, however, is the potential for loss. A large change in the stock price in either direction leads to a large, potentially unlimited, loss.

It might occur to you that an investor wishing to bet that volatility will be low could write a straddle and acquire insurance against extreme negative outcomes. That intuition is correct and leads to our next strategy.

## Butterfly Spreads

The straddle writer can insure against large losses on the straddle by buying options to protect against losses on both the upside and downside. Buying an out-of-the-money put provides insurance on the downside, protecting against losses on the at-the-money written

## FIGURE II

40-strike straddle and strangle composed of 35-
strike put and 45-strike call.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/717aa85f968893803ba5b4cf6ec946b0ae8eae98697c7202d49a9ffb6cc5989b.jpg)
Profit ($)

## FIGURE 12

Profit at expiration from a written straddle—i.e., selling a 40-strike call and a 40-strike put.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/9556ff7ea4fac4af687aaf7379e8f353ced671ae0b0d4ffba08f51613a45cb97.jpg)
Profit ($) put. Buying an out-of-the-money call provides insurance on the upside, protecting against losses on the written at-the-money call.


Figure 13 displays the straddle written at a strike price of 40, along with the options to safeguard the position: a 35-strike put and a 45-strike call. The net result of combining these three strategies is an insured written straddle, which is called a butterfly spread,

## FIGURE 13

Written 40-strike straddle, purchased 45-strike call, and purchased 35-strike put. These positions combined generate the butterfly spread graphed in Figure 14.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/17474b7de7a2e28d5777fb46f62745e84f990da734a7f47f53a8629dd3f037a8.jpg) graphed in Figure 14. It can be thought of as a written straddle for the timid (or for the prudent!).


Comparing the butterfly spread to the written straddle (Figure 14), we see that the butterfly spread has a lower maximum profit (due to the cost of insurance) if the stock at expiration is close to 40, and a higher profit if there is a large move in the stock price, in which case the insurance becomes valuable.

By understanding the butterfly spread we gain important insights into option prices. Also, the butterfly spread can be created in a variety of ways: solely with calls, solely with puts, or by using the stock and a combination of calls and puts. You are asked to verify this in Problem 18. The spread in Figure 14 can also be created by simultaneously buying a 35–40 bull spread and a 40–45 bear spread.

## Asymmetric Butterfly Spreads

Examine Figure 15. It looks like a butterfly spread except that it is asymmetric: The peak is closer to the high strike than to the low strike. This picture was created by buying two 35-strike calls, selling ten 43-strike calls (with a premium of 1.525, using the assumptions in Table 4), and buying eight 45-strike calls. The position is like a butterfly in that it earns a profit if the stock stays within a small range, and the loss is the same for high and low stock prices. However, the profit diagram is now tilted to the right, rather than being symmetric.

Suppose you knew that you wanted a position that looks like Figure 15. How would you know how many options to buy and sell to construct this position? In order to obtain

## FIGURE 14

Comparison of the 35-40-45 butterfly spread, obtained by adding the profit diagrams in Figure 13, with the written 40-strike straddle.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/2c6f7a1d198bda6ec628fb45fefca9d6f948fcf1588088013b6a74967d43075e.jpg)

## FIGURE 15

Asymmetric butterfly, created by buying two 35-strike calls and eight 45-strike calls and selling ten 43-strike calls.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/8ddae2acde38dca9e4aac72e59a59b770ca73bc0193437a1a8d171287857b40d.jpg) this position, the strikes clearly have to be at 35, 43, and 45. The total distance between 35 and 45 is 10. The number 43 is  $80\%$  ( $= \frac{43 - 35}{10}$ ) of the way from 35 to 45. In fact, we can write 43 as


$$

4 3 = (0. 2 \times 3 5) + (0. 8 \times 4 5)

$$

This way of writing 43 tells us our call position: For every written 43-strike call, we want to buy 0.2 35 calls and 0.8 45 calls. Thus if we sell ten 43-strike calls, we buy two 35 calls and eight 45-strike calls.

In general, consider the strike prices  $K_{1}, K_{2}$ , and  $K_{3}$ , where  $K_{1} < K_{2} < K_{3}$ . Define  $\lambda$  so that

$$

\lambda = \frac {K _ {3} - K _ {2}}{K _ {3} - K _ {1}}

$$ or


$$

K _ {2} = \lambda K _ {1} + (1 - \lambda) K _ {3}

$$

For example, if  $K_{1} = 35$ ,  $K_{2} = 43$ , and  $K_{3} = 45$ , then  $\lambda = 0.2$ , as in the above example. In order to construct an asymmetric butterfly, for every  $K_{2}$  call we write, we buy  $\lambda$ $K_{1}$  calls and  $1 - \lambda$ $K_{3}$  calls.

You should verify that if you buy two 35-strike puts, sell ten 43-strike puts, and buy eight 45-strike puts, you duplicate the profit diagram in Figure 15.

## CHAPTER SUMMARY

Puts are insurance against a price decline and calls are insurance against a price increase. Combining a long or short position in the asset with an offsetting position in options (for example, a long position in the asset is coupled either with a purchased put or written call) leads to the various possible positions and their equivalents in Table 7.

Buying a call and selling a put with the same strike price and time to expiration creates an obligation to buy the asset at expiration by paying the strike price. This is a synthetic forward. A synthetic forward must have the same cost in present value terms as a true forward. This observation leads to equation (1):

$$

\operatorname {C a l l} (K, T) - \operatorname {P u t} (K, T) = \operatorname {P V} \left(F _ {0, T} - K\right) \tag {1}

$$

This relationship, called put-call parity, explains the difference in call and put premiums for otherwise identical options. It is one of the most important relationships in derivatives.

<table><tr><td>TABLE 7</td><td colspan="2">Summary of equivalent positions from Section 1.</td></tr><tr><td>Position</td><td>Is Equivalent To</td><td>And Is Called</td></tr><tr><td>Index + Put</td><td>Zero-Coupon Bond + Call</td><td>Insured Asset (floor)</td></tr><tr><td>Index – Call</td><td>Zero-Coupon Bond – Put</td><td>Covered Written Call</td></tr><tr><td>–Index + Call</td><td>–Zero-Coupon Bond + Put</td><td>Insured Short (cap)</td></tr><tr><td>–Index – Put</td><td>–Zero-Coupon Bond – Call</td><td>Covered Written Put</td></tr></table>

## FIGURE 16

Profit diagrams for positions discussed in the chapter: bull spread, collar, straddle, strangle, butterfly, and 2:1 ratio spread.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/bd21a16bc35471b7e2e8754d8f49b641860aeb8abfea7698af7472eb7596b7bf.jpg)
Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/70edf3257de26163323de0abe951801f13ebce42ea065a0e4c519a88c29d2e3e.jpg)
Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/28b83630dd9045cc08cf538925cbb98740fa1b531d8d5f8d7fe12895347e4b11.jpg)
Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/631166bbc3546f1d9ddabadc4c742594aa2a45871f5a386a544ea09f2e468b46.jpg)
Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/000d08daac7b821003ea20be67e2aefe3ba689aa99b1c92caf330e43cc418552.jpg)
Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/2b11b30a61db2e144749d4b6d318a1177c8abc8af1723807c697a0409c00b192.jpg)
Profit

Positions consistent with different views on the stock price and volatility direction.

TABLE 8

<table><tr><td></td><td>Volatility Will Increase</td><td>No Volatility View</td><td>Volatility Will Fall</td></tr><tr><td>Price will fall</td><td>Buy puts</td><td>Sell underlying</td><td>Sell calls</td></tr><tr><td>No price view</td><td>Buy straddle</td><td>Do nothing</td><td>Sell straddle</td></tr><tr><td>Price will increase</td><td>Buy calls</td><td>Buy underlying</td><td>Sell puts</td></tr></table>

There are numerous strategies that permit speculating on the direction of the stock or on the size of stock price moves (volatility). Some of these positions are summarized graphically in Figure 16. We also categorize in Table 8 various strategies according to whether they reflect bullish or bearish views on the stock price direction or volatility.[6]

# FURTHER READING

Put-call parity was first demonstrated in Stoll (1969). Merton (1973a) corrected the original analysis for the case of American options, for which, because of early exercise, parity need not hold. Ronn and Ronn (1989) provide a detailed examination of price bounds and returns on box spreads.

There are numerous practitioner books on option trading strategies. A classic practitioner reference is McMillan (1992).

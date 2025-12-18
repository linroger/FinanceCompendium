---
title: "Chapter 6 - Commodity Forwards and Futures"
aliases:
  - Commodity Forwards and Futures
parent_directory: Derivatives Market Complete Full/chapters manual
cssclasses: academia
---

# Commodity Forwards and Futures

Tolstoy observed that happy families are all alike; each unhappy family is unhappy in its own way. An analogous idea in financial markets is that financial forwards are all alike; each commodity, however, has unique economic characteristics that determine forward pricing in that market. In this chapter we will see the extent to which commodity forwards on different assets differ from each other, and also how they differ from financial forwards and futures. We first discuss the pricing of commodity contracts, and then examine specific contracts, including gold, corn, natural gas, and oil. Finally, we discuss hedging.

You might wonder about the definition of a commodity. Gerard Debreu, who won the Nobel Prize in economics, said this (Debreu, 1959, p. 28):

A commodity is characterized by its physical properties, the date at which it will be available, and the location at which it will be available. The price of a commodity is the amount which has to be paid now for the (future) availability of one unit of that commodity.

Notice that with this definition, corn in July and corn in September, for example, are different commodities: They are available on different dates. With a financial asset, such as a stock, we think of the stock as being fundamentally the same asset over time. The same is not necessarily true of a commodity, since it can be costly or impossible to transform a commodity on one date into a commodity on another date. This observation will be important.

The price of a financial asset today is the present value of the asset at time  $T$ , less the value of dividends to be received between now and time  $T$ . It follows that the difference between the forward price and spot price of a financial asset reflects the costs and benefits of delaying payment for, and receipt of, the asset. Specifically, the forward price on a financial asset is given by

$$
F _ {0, T} = S _ {0} e ^ {(r - \delta) T} \tag {1}
$$ where  $S_0$  is the spot price of the asset,  $r$  is the continuously compounded interest rate, and  $\delta$  is the continuous dividend yield on the asset. We will explore the extent to which equation (1) also holds for commodities.


# I. INTRODUCTION TO COMMODITY FORWARDS

This section provides an overview of some issues that arise in discussing commodity forward and futures contracts. We begin by looking at some commodity futures prices. We then discuss some terms and concepts that will be important for commodities.

# Examples of Commodity Futures Prices

For many commodities there are futures contracts available that expire at different dates in the future. Table 1 provides illustrative examples; we can examine these prices to see what issues might arise with commodity forward pricing.

First, consider corn. From May to July, the corn futures price rises from 646.50 to 653.75. This is a 2-month increase of  $\frac{653.75}{646.50} - 1 = 1.12\%$ , an annual rate of approximately  $7\%$ . As a reference interest rate, 3-month LIBOR on March 17, 2011, was  $0.31\%$ , or about  $0.077\%$  for 3 months. Assuming that  $\delta \geq 0$ , this futures price is greater than that implied by equation (1). An arbitrage strategy would be: Buy May corn and sell July corn. However, storing corn for 2 months will be costly, a consideration that did not arise with financial futures. Another issue arises with the December price: The price of corn falls 74.5 cents between July and December. It seems unlikely that this could be explained by a dividend. An alternative, intuitive explanation would be that the fall harvest causes the price of corn to drop, and hence the December futures price is low. But how is this explanation consistent with our results about no-arbitrage pricing of financial forwards?

TABLE I Futures prices for various commodities, March 17, 2011.

<table><tr><td>Expiration Month</td><td>Corn (cents/ bushel)</td><td>Soybeans (cents/ bushel)</td><td>Gasoline (cents/ gallon)</td><td>Oil (Brent) (dollars/ barrel)</td><td>Gold (dollars/ ounce)</td></tr><tr><td>April</td><td>—</td><td>—</td><td>2.9506</td><td>—</td><td>1404.20</td></tr><tr><td>May</td><td>646.50</td><td>1335.25</td><td>2.9563</td><td>114.90</td><td>1404.90</td></tr><tr><td>June</td><td>—</td><td>—</td><td>2.9491</td><td>114.65</td><td>1405.60</td></tr><tr><td>July</td><td>653.75</td><td>1343.50</td><td>2.9361</td><td>114.38</td><td>—</td></tr><tr><td>August</td><td>—</td><td>—</td><td>2.8172</td><td>114.11</td><td>1406.90</td></tr><tr><td>September</td><td>613.00</td><td>1321.00</td><td>2.8958</td><td>113.79</td><td>—</td></tr><tr><td>October</td><td>—</td><td>—</td><td>2.7775</td><td>113.49</td><td>1408.20</td></tr><tr><td>November</td><td>—</td><td>1302.25</td><td>2.7522</td><td>113.17</td><td>—</td></tr><tr><td>December</td><td>579.25</td><td>—</td><td>2.6444</td><td>112.85</td><td>1409.70</td></tr></table>

Data from CME Group.

If you examine the other commodities, you will see similar patterns for soybeans, gasoline, and oil. Only gold, with the forward price rising at approximately 0.70 per month (about 0.6\% annually), has behavior resembling that of a financial contract.

The prices in Table 1 suggest that commodities are different than financial contracts. The challenge is to reconcile the patterns with our understanding of financial forwards, in which explicit expectations of future prices (and harvests!) do not enter the forward price formula.

There are many more commodities with traded futures than just those in Table 1. You might think that a futures contract could be written on anything, but it is an interesting bit of trivia, discussed in the box below, that Federal law in the United States prohibits trading on two commodities.

# Box I: Forbidden Futures

In the United States, futures contracts on two items are explicitly prohibited by statute: onions and box office receipts for movies. Title 7, Chapter 1, §13-1 of the United States Code is titled "Violations, prohibition against dealings in onion futures; punishment" and states

(a) No contract for the sale of onions for future delivery shall be made on or subject to the rules of any board of trade in the United States. The terms used in this section shall have the same meaning as when used in this chapter.
 (b) Any person who shall violate the provisions of this section shall be deemed guilty of a misdemeanor and upon conviction thereof be fined not more than 5,000.

Along similar lines, Title VII of the Dodd-Frank Wall Street Reform and Consumer Protection Act of 2010 bans trading in "motion picture box office receipts (or any index, measure, value, or data related to such receipts), and all services, rights, and interests . . . in which contracts for future delivery are presently or in the future dealt in."

These bans exist because of lobbying by special interests. The onion futures ban was passed in 1959 when Michigan onion growers lobbied their new congressman, Gerald Ford, to ban such trading, believing that it depressed prices. Today, some regret the law:


Onion prices soared  $400\%$  between October 2006 and April 2007, when weather reduced crops, according to the U.S. Department of Agriculture, only to crash  $96\%$  by March 2008 on overproduction and then rebound  $300\%$  by this past April.

The volatility has been so extreme that the son of one of the original onion growers who lobbied Congress for the trading ban now thinks the onion market would operate more smoothly if a futures contract were in place.

"There probably has been more volatility since the ban," says Bob Debruyn of Debruyn Produce, a Michigan-based grower and wholesaler. "I would think that a futures market for onions would make some sense today, even though my father was very much involved in getting rid of it."

Source: Fortune magazine on-line, June 27, 2008.

Similarly, futures on movie box office receipts had been approved early in 2010 by the Commodity Futures Trading Commission. After lobbying by Hollywood interests, the ban on such trading was inserted into the Dodd-Frank financial reform bill.

# Differences Between Commodities and Financial Assets

In discussing the commodity prices in Table 1, we invoked considerations that did not arise with financial assets, but that will arise repeatedly when we discuss commodities. Among these are:

Storage costs. The cost of storing a physical item such as corn or copper can be large relative to its value. Moreover, some commodities deteriorate over time, which is also a cost of storage. By comparison, financial securities are inexpensive to store. Consequently, we did not mention storage costs when discussing financial assets.

**Carry markets.** A commodity for which the forward price compensates a commodity owner for costs of storage is called a **carry market**. (In such a market, the return on a cash-and-carry, net of all costs, is the risk-free rate.) Storage of a commodity is an economic decision that varies across commodities and that can vary over time for a given commodity. Some commodities are at times stored for later use (we will see that this is the case for natural gas and corn), others are more typically used as they are produced (oil, copper). By contrast, financial markets are always carry markets: Assets are always "stored" (owned), and forward prices always compensate owners for storage.

Lease rate. The short-seller of an item may have to compensate the owner of the item for lending. In the case of financial assets, short-sellers have to compensate lenders for missed dividends or other payments accruing to the asset. For commodities, a short-seller may have to make a payment, called a lease payment, to the commodity lender. The lease payment typically would not correspond to dividends in the usual sense of the word.

Convenience yield. The owner of a commodity in a commodity-related business may receive nonmonetary benefits from physical possession of the commodity. Such benefits may be reflected in forward prices and are generically referred to as a convenience yield.

We will discuss all of these concepts in more depth later in the chapter. For now, the important thing to keep in mind is that commodities differ in important respects from financial assets.

# Commodity Terminology

There are many terms that are particular to commodities and thus often unfamiliar even to those well acquainted with financial markets. These terms deal with the properties of the forward curve and the physical characteristics of commodities.

Table 1 illustrates two terms often used by commodity traders in talking about forward curves: contango and backwardation. If the forward curve is upward sloping—i.e., forward prices more distant in time are higher—then we say the market is in contango. We observe this pattern with near-term corn and soybeans, and with gold. If the forward curve is downward sloping, we say the market is in backwardation. We observe this with medium-term corn and soybeans, with gasoline (after 2 months), and with crude oil.

Commodities can be broadly classified as extractive and renewable. Extractive commodities occur naturally in the ground and are obtained by mining and drilling. Examples include metals (silver, gold, and copper) and hydrocarbons, including oil and natural gas. Renewable commodities are obtained through agriculture and include grains (corn, soybeans, wheat), livestock (cattle, pork bellies), dairy (cheese, milk), and lumber.


Commodities can be further classified as primary and secondary. Primary commodities are unprocessed; corn, soybeans, oil, and gold are all primary. Secondary commodities have been processed. In Table 1, gasoline is a secondary commodity.

Finally, commodities are measured in uncommon units for which you may not know precise definitions. Table 1 has several examples. A barrel of oil is 42 gallons. A bushel is a dry measure containing approximately 2150 cubic inches. The ounce used to weigh precious metals, such as gold, is a troy ounce, which is approximately  $9.7\%$  greater in weight than the customary avoirdupois ounce.[2]

Entire books are devoted to commodities (e.g., see Geman, 2005). Our goal here is to understand the logic of forward pricing for commodities and where it differs from the logic of forward pricing for financial assets. We will see that understanding a forward curve generally requires that we understand something about the underlying commodity.

# 2. EQUILIBRIUM PRICING OF COMMODITY FORWARDS

In this section we present definitions relating the prepaid forward price, forward price, and present value of a future commodity price. These ideas are important for understanding commodities.

The prepaid forward price for a commodity is the price today to receive a unit of the commodity on a future date. The prepaid forward price is therefore by definition the present value of the commodity on the future date. Hence, the prepaid forward price is

$$

F _ {0, T} ^ {P} = e ^ {- \alpha T} E _ {0} [ S _ {T} ] \tag {2}

$$ where  $\alpha$  is the discount rate for the commodity.

The forward price is the future value of the prepaid forward price, with the future value computed using the risk-free rate:

$$
F _ {0, T} = e ^ {r T} F _ {0, T} ^ {P} \tag {3}
$$

Substituting equation (2) into equation (3), we see that the commodity forward price is the expected spot price, discounted at the risk premium:

$$
F _ {0, T} = E _ {0} \left(S _ {T}\right) e ^ {- (\alpha - r) T} \tag {4}
$$

We can rewrite equation (4) to obtain

$$ e ^ {- r T} F _ {0, T} = E _ {0} (S _ {T}) e ^ {- \alpha T} \tag {5}
$$

Equation (5) deserves emphasis: The time- $T$  forward price discounted at the risk-free rate is the present value of a unit of commodity received at time  $T$ . This equation implies that, for example, an industrial producer who buys oil can calculate the present value of future oil costs by discounting oil forward prices at the risk-free rate. This calculation does not depend upon whether the producer hedges. We will see an example of this calculation later in the chapter.

# 3. PRICING COMMODITY FORWARDS BY ARBITRAGE

We now investigate no-arbitrage pricing for commodity forward contracts. We begin by using copper as an example. Copper is durable and can be stored, but it is typically not stored except as needed for production. The primary goal in this section will be to understand the issues that distinguish forward pricing for commodities from forward pricing for financial assets.

Figure 1 shows specifications for the CME Group copper contract and Figure 2 shows forward curves for copper on four dates. The copper forward curve lacks drama: For three of the four curves, the forward price in 1 year is approximately equal to the forward price in the current month. For the fourth curve, the 1-year price is below the current price (the curve exhibits backwardation).

We saw that for non-dividend-paying financial assets, the forward price rises at the interest rate. How can the forward price of copper on a future date equal the current forward price? At an intuitive level, it is reasonable to expect the price of copper in 1 year to equal the price today. Suppose, for example, that the extraction and other costs of copper production are  \$3/pound and are expected to remain\$ 3. If demand is not expected to change, or if it is easy for producers to alter production, it would be reasonable to expect that on average the price of copper would remain at 3. The question is how to reconcile this intuition with the behavior of forward prices for financial assets.

While it is reasonable to think that the price of copper will be expected to remain the same over the next year, it is important to recognize that a constant price would not be a reasonable assumption about the price of a non-dividend-paying stock. Investors must expect that a stock will on average pay a positive return, or no one would own it. In equilibrium, stocks and other financial assets must be held by investors, or stored. The stock price appreciates on average so that investors will willingly store the stock. There is no such requirement for copper, which can be extracted and then used in production. The equilibrium condition for copper relates to extraction, not to storage above ground. This distinction between a storage and production equilibrium is a central concept in our discussion of commodities. At the outset, then, there is an obvious difference between copper and a financial asset. It is not necessarily obvious, however, what bearing this difference has on pricing forward contracts.

# An Apparent Arbitrage

Suppose that you observe that both the current price and 1-year forward price for copper are  \$3.00 and that the effective annual interest rate is 10\%$ . For the reasons we have just discussed, market participants could rationally believe that the copper price in 1 year will be 3.00. From our discussion of financial forwards, however, you might think that the forward price should be  $1.10 \times$ 3.00 = 3.30, the future value of the current copper price.

<table><tr><td>FIGURE 1</td><td>Underlying</td><td>High-grade (Grade 1) copper</td></tr><tr><td rowspan="5">Specifications for the CME Group/COMEX high-grade copper contract.</td><td>Where traded</td><td>CME Group/COMEX</td></tr><tr><td>Size</td><td>25,000 pounds</td></tr><tr><td>Months</td><td>24 consecutive months</td></tr><tr><td>Trading ends</td><td>Third-to-last business day of the maturing month</td></tr><tr><td>Delivery</td><td>Exchange-designated warehouse within the United States</td></tr></table>

Data from Datastream.

# FIGURE 2

Forward curves for four dates for the CME Group high-grade copper futures contract.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/2b1b8cba5297b2804dbf9ff15d0ff7783ace2d88c2761d25094596e51a06f631.jpg)

Data from Datastream.

The  \$3.00 forward price would therefore create an arbitrage opportunity.^{3}$  If the forward price were 3.00 you could buy copper forward and short-sell copper today. Table 2 depicts the cash flows in this reverse cash-and-carry arbitrage. The result seems to show that there

Apparent reverse cash-and-carry arbitrage for copper if the copper forward price is  $F_{0,1} < \$ 3.30 $. These calculations appear to demonstrate that there is an arbitrage opportunity if the copper forward price is below$ \ $3.30$  .  $S_{1}$  is the spot price of copper in 1 year, and  $F_{0,1}$  is the copper forward price. There is a logical error in the table.

TABLE 2

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>Time 0</td><td>Time 1</td></tr><tr><td>Long forward @ F0,1</td><td>0</td><td>S1 - F0,1</td></tr><tr><td>Short-sell copper</td><td>+\$3.00</td><td>-S1</td></tr><tr><td>Lend short-sale proceeds @ 10\%</td><td>-$3.00</td><td>$3.30</td></tr><tr><td>Total</td><td>0</td><td>\$3.30 - F0,1</td></tr></table> is an arbitrage opportunity for any copper forward price below  \$3.30. If the copper forward price is\$ 3.00, it seems that you make a profit of 0.30 per pound of copper.

We seem to be stuck. Common sense suggests that a forward price of  \$3.00 would be reasonable, but the transactions in Table 2 imply that any forward price less than\$ 3.30 leads to an arbitrage opportunity, where we would earn  $3.30 - F_{0,1}$  per pound of copper.

If you are puzzled, you should stop and think before proceeding. There is a problem with Table 2.

The arbitrage assumes that you can short-sell copper by borrowing it today and returning it in a year. However, in order for you to short-sell for a year, there must be an investor willing to lend copper for that period. The lender must both be holding the asset and willing to give up physical possession for the period of the short-sale. A lender in this case will think: "I have spent  \$3.00 for copper. Copper that I lend will be returned in 1 year. If copper at that time sells for\$ 3.00, then I have earned zero interest on my \$3.00 investment. If I hedge by selling copper forward for \$3.00, I will for certain earn zero interest, having bought copper for \$3.00 and then selling it for \$3.00 a year later." Conversely, from the perspective of the short-seller, borrowing a pound of copper for a year is an arbitrage because it is an interest-free loan of 3.00. The borrower benefits and the lender loses, so no one will lend copper without charging an additional fee. While it is straightforward to borrow a financial asset, borrowing copper appears to be a different matter.

To summarize: The apparent arbitrage in Table 2 has nothing to do with mispriced forward contracts on copper. The issue is that the copper loan is equivalent to an interest-free loan, and thus generates an arbitrage profit.

# Short-selling and the Lease Rate

How do we correct the arbitrage analysis in Table 2? We have to recognize that the copper lender has invested 3.00 in copper and must expect to earn a satisfactory return on that investment. The copper lender will require us to make a lease payment so that the commodity loan is a fair deal. The actual payment the lender requires will depend on the forward price.

Reverse cash-and-carry arbitrage for copper. This table demonstrates that there is no arbitrage opportunity if the commodity lender requires an appropriate lease payment.

TABLE 3

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>Time 0</td><td>Time 1</td></tr><tr><td>Long forward @ F0,1</td><td>0</td><td>S1-F0,1</td></tr><tr><td>Short-sell copper</td><td>+\$3.00</td><td>-S1</td></tr><tr><td>Lease payment</td><td>0</td><td>-(\$3.30-F0,1)</td></tr><tr><td>Lend short-sale proceeds @ 10\%</td><td>-$3.00</td><td>$3.30</td></tr><tr><td>Total</td><td>0</td><td>0</td></tr></table>

The lender will recognize that it is possible to use the forward market to lock in a selling price for the copper in 1 year, and will reason that copper bought for \$3.00 today can be sold for  $F_{0,1}$  in 1 year. A copper borrower must therefore be prepared to make an extra payment—a lease payment—of

$$
\text {L e a s e} = 1. 1 \times \$ 3. 0 0 - F _ {0, 1}
$$

With the lender requiring this extra payment, we can correct the analysis in Table 2. Table 3 incorporates the lease payment and shows that the apparent arbitrage vanishes.

We can also interpret a lease payment in terms of discounted cash flow. Let  $\alpha$  denote the equilibrium discount rate for an asset with the same risk as the commodity. The lender is buying the commodity for  $S_{0}$ . One unit returned at time  $T$  is worth  $S_{T}$ , with a present value of  $E_{0}(S_{T})e^{-\alpha T}$ . If there is a proportional continuous lease payment of  $\delta_{l}$ , the NPV of buying the commodity and lending it is

$$
\mathrm {N P V} = E _ {0} \left(S _ {T}\right) e ^ {- \alpha T} e ^ {\delta_ {l} T} - S _ {0} \tag {6}
$$

The lease rate that makes NPV zero is then

$$
\delta_ {l} = \alpha - \frac {1}{T} \ln \left[ E _ {0} (S _ {T}) / S _ {0} \right]
$$

The lease rate is the difference between the discount rate for the commodity and the expected price appreciation. From substituting equation (5) into this expression, an equivalent way to write the continuous lease rate is

$$
\delta_ {l} = r - \frac {1}{T} \ln \left[ F _ {0, T} / S _ {0} \right] \tag {7}
$$

It is important to be clear about the reason a lease payment is required for a commodity and not for a financial asset. For a non-dividend-paying financial asset, the price is the present value of the future price, so that  $S_0 = E(S_T)e^{-\alpha T}$ . This implies that the lease payment is zero. For most commodities, the current price is not the present value of the expected future price, so there is no presumption that the lease rate would be zero.

# No-Arbitrage Pricing Incorporating Storage Costs

We now consider the effects of storage costs. Storage is not always feasible (for example, fresh strawberries are perishable), and when technically feasible, storage for commodities is almost always costly. If storage is feasible, how do storage costs affect forward pricing? The intuitive answer is that if it is optimal to store the commodity, then the forward price must be high enough so that the returns on a cash-and-carry compensate for both financing and storage costs. However, if storage is not optimal, storage costs are irrelevant. We will examine both cash-and-carry and reverse cash-and-carry arbitrages to see how they are affected by storage costs.

Cash-and-Carry Arbitrage. Put yourself in the position of a commodity merchant who owns one unit of the commodity, and ask whether you would be willing to store it until time  $T$ . You face the choice of selling it today, receiving  $S_{0}$ , or selling it at time  $T$ . If you guarantee your selling price by selling forward, you will receive  $F_{0,T}$ .

It is common sense that you will store only if the present value of selling at time  $T$  is at least as great as that of selling today. Denote the future value of storage costs for one unit of the commodity from time 0 to  $T$  as  $\lambda(0, T)$ . Table 4 summarizes the cash flows for a cash-and-carry with storage costs. The table shows that the cash-and-carry arbitrage is not profitable if

$$
F _ {0, 1} <   (1 + R) S _ {0} + \lambda (0, 1) \tag {8}
$$

If inequality (8) is violated, storage will occur because the forward premium is great enough that sale proceeds in the future compensate for the financial costs of storage  $(RS_0)$  and the physical costs of storage  $(\lambda(0,1))$ . If there is to be both storage and no arbitrage, then equation (8) holds with equality. An implication of equation (8) is that when costly storage occurs, the forward curve can rise faster than the interest rate. We can view storage costs as a negative dividend: Instead of receiving cash flow for holding the asset, you have to pay to hold the asset. If there is storage, storage costs increase the upper bound for the forward price. Storage costs can include depreciation of the commodity, which is less a problem for metals such as copper than for commodities such as strawberries and electricity.

Cash-and-carry for copper for 1 year, assuming that there is a 1-year storage cost of  $\lambda (0,1)$  payable at time 1, and an effective interest rate of  $R$ .

TABLE 4

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>Time 0</td><td>Time 1</td></tr><tr><td>Buy copper</td><td>-S0</td><td>S1</td></tr><tr><td>Pay storage cost</td><td>0</td><td>-λ(0, 1)</td></tr><tr><td>Short forward</td><td>0</td><td>F0,1-S1</td></tr><tr><td>Borrow @ R</td><td>+S0</td><td>-(1+R)S0</td></tr><tr><td>Total</td><td>0</td><td>F0,1-[(1+R)S0+λ(0,1)]</td></tr></table>

In the special case where continuous storage costs of  $\lambda$  are paid continuously and are proportional to the value of the commodity, storage cost is like a continuous negative dividend. If storage occurs and there is no arbitrage, we have

$$
F _ {0, T} = S _ {0} e ^ {(r + \lambda) T} \tag {9}
$$

This would be the forward price in a carry market, where the commodity is stored.

Example 1. Suppose that the November price of corn is  \$2.50/bushel, the effective monthly interest rate is 1\%$ , and storage costs per bushel are 0.05/month. Assuming that corn is stored from November to February, the February forward price must compensate owners for interest and storage. The future value of storage costs is

$$
\begin{array}{l} \$ 0.05 + (\$ 0.05 \times 1.01) + (\$ 0.05 \times 1.01 ^ {2}) = (\$ 0.05 / . 0 1) \times \left[ (1 + 0. 0 1) ^ {3} - 1 \right] \\ = \$ 0. 1 5 1 5 \\ \end{array}
$$

Thus, the February forward price will be

$$
2. 5 0 \times (1. 0 1) ^ {3} + 0. 1 5 1 5 = 2. 7 2 7 3
$$

Problem 9 asks you to verify that this is a no-arbitrage price.

Keep in mind that just because a commodity can be stored does not mean that it should (or will) be stored. Copper is typically not stored for long periods, because storage is not economically necessary: A constant new supply of copper is available to meet demand. Thus, equation (8) describes the forward price when storage occurs. We now consider a reverse cash-and-carry arbitrage to see what happens when the forward price is lower than in equation (8).

Reverse Cash-and-Carry Arbitrage. Suppose an arbitrageur buys the commodity forward and short-sells it. We have seen that the commodity lender likely requires a lease payment and that the payment should be equal to  $(1 + R)S_{0} - F_{0,1}$ . The results of this transaction are in Table 5. Note first that storage costs do not affect profit because neither the arbitrageur nor the lender is actually storing the commodity. The reverse cash-and-carry is profitable if the lender requires a lease payment below  $(1 + R)S_{0} - F_{0,1}$ . Otherwise, arbitrage is not profitable. If the commodity lender uses the forward price to determine the lease rate, then the resulting circularity guarantees that profit is zero. This is evident in Table 5, where profit is zero if  $L = (1 + R)S_{0} - F_{0,1}$ .

This analysis has the important implication that the ability to engage in a reverse cash-and-carry arbitrage does not put a lower bound on the forward price. We conclude that a forward price that is too high can give rise to arbitrage, but a forward price that is too low need not.

Of course there are economic pressures inducing the forward price to reach the "correct" level. If the forward price is too low, there will be an incentive for arbitrageurs

TABLE 5

Reverse cash-and-carry for copper for 1 year, assuming that the commodity lender requires a lease payment of  $L$ .

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>Time 0</td><td>Time 1</td></tr><tr><td>Short-sell copper</td><td>S0</td><td>-S1</td></tr><tr><td>Lease payment</td><td>0</td><td>-L</td></tr><tr><td>Long forward</td><td>0</td><td>S1-F0,1</td></tr><tr><td>Invest @ R</td><td>-S0</td><td>(1+R)S0</td></tr><tr><td>Total</td><td>0</td><td>[(1+R)S0-F0,1]-L</td></tr></table> to buy the commodity forward. If it is too high, there is an incentive for traders to sell the commodity, whether or not arbitrage is feasible. Leasing and storage costs complicate arbitrage, however.

# Convenience Yields

The discussion of commodities has so far ignored business reasons for holding commodities. For example, if you are a food producer for whom corn is an essential input, you will hold corn in inventory. If you hold too much corn, you can sell the excess. However, if you hold too little, you may run out of corn, halting production and idling workers and machines. The physical inventory of corn in this case has value: It provides insurance that you can keep producing in case there is a disruption in the supply of corn.

In this situation, corn holdings provide an extra nonmonetary return called the convenience yield. You will be willing to store corn with a lower rate of return than if you did not earn the convenience yield. What are the implications of the convenience yield for the forward price?

The convenience yield is only relevant when the commodity is stored. In order to store the commodity, an owner will require that the forward price compensate for the financial and physical costs of storing, but the owner will accept a lower forward price to the extent there is a convenience yield. Specifically, if the continuously compounded convenience yield is  $c$ , proportional to the value of the commodity, the owner will earn an acceptable return from storage if the forward price is

$$
F _ {0, T} \geq S _ {0} e ^ {(r + \lambda - c) T}
$$

Because we saw that low commodity forward prices cannot easily be arbitraged, this price would not yield an arbitrage opportunity.

What is the commodity lease rate in this case? An owner lending the commodity saves  $\lambda$  and loses  $c$  from not storing the commodity. Hence, the commodity borrower would need to pay  $\delta_{l} = c - \lambda$  in order to compensate the lender for convenience yield less storage cost.

The difficulty with the convenience yield in practice is that convenience is hard to observe. The concept of the convenience yield serves two purposes. First, it explains patterns in storage—for example, why a commercial user might store a commodity when the average investor will not. Second, it provides an additional parameter to better explain the forward curve. You might object that we can invoke the convenience yield to explain any forward curve, and therefore the concept of the convenience yield is vacuous. While convenience yield can be tautological, it is a meaningful economic concept and it would be just as arbitrary to assume that there is never convenience. Moreover, the upper bound in equation (8) depends on storage costs but not the convenience yield. Thus, the convenience yield only explains anomalously low forward prices, and only when there is storage.

# Summary

Much of the discussion in this section was aimed at explaining the differences between commodities and financial assets. The main conclusions are intuitive:

- The forward price,  $F_{0,T}$ , should not exceed  $S_0e^{(r + \lambda)T}$ . If the forward price were greater, you could undertake a simple cash-and-carry and earn a profit after paying both storage costs and interest on the position. Storage costs here includes deterioration of the commodity, so fragile commodities could have large (or infinite) storage costs.
- In a carry market, the forward price should equal  $S_0 e^{(r - c + \lambda)T}$ . A user who buys and stores the commodity will then be compensated for interest and physical storage costs less a convenience yield.
- In any kind of market, a reverse cash-and-carry arbitrage (attempting to arbitrage too low a forward price) will be difficult, because the terms at which a lender will lend the commodity will likely reflect the forward price, making profitable arbitrage difficult.

# 4. GOLD

Of all commodities, gold is most like a financial asset. Gold is durable, nonreactive, noncorrosive, relatively inexpensive to store (compared to its value), widely held, and actively produced through gold mining. Because of transportation costs and purity concerns, gold often trades in certificate form, as a claim to physical gold at a specific location. There are exchange-traded gold futures, specifications for which are in Figure 3.

Figure 4 graphs futures prices for all available gold futures contracts—the forward curve—for four different dates. The forward curves all show the forward price steadily increasing with time to maturity.

<table><tr><td>FIGURE 3</td><td>Underlying</td><td>Refined gold bearing approved refiner stamp</td></tr><tr><td rowspan="5">Specifications for the CME Group gold futures contract.</td><td>Where traded</td><td>CME Group/NYMEX</td></tr><tr><td>Size</td><td>100 troy ounces</td></tr><tr><td>Months</td><td>February, April, August, October, out 2 years. June, December, out 5 years</td></tr><tr><td>Trading ends</td><td>Third-to-last business day of maturity month</td></tr><tr><td>Delivery</td><td>Any business day of the delivery month</td></tr></table>

# FIGURE 4

The forward curve for gold on four dates, from NYMEX gold futures prices.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/f5d05f6553942155f392e436f0c7838aabdbc3c71f6c9899876165a8661b6a72.jpg)

Data from Datastream.

# Gold Leasing

From our discussion in Section 3, the forward price implies a lease rate for gold. Short-sales and loans of gold are in fact common in the gold market. On the lending side, large gold holders (including some central banks) put gold on deposit with brokers, in order that it may be loaned to short-sellers. The gold lenders earn the lease rate.

The lease rate for gold, silver, and other commodities is typically reported using equation (7), with LIBOR as the interest rate. In recent years the lease rate has often been negative, especially for periods of 6 months or less.

As an example of the lease rate computation, consider gold prices on June 2, 2010. The June, December, and June 2011 futures settlement prices that day were 1220.6, 1226.8, and 1234.3. The return from buying June gold and selling December gold would have been

$$
\mathrm {R e t u r n} _ {6 \text {m o n t h s}} = \frac {1 2 2 6 . 8}{1 2 2 0 . 6} - 1 = 0. 0 0 5 0 8
$$

At the same time, June LIBOR was 99.432 and September LIBOR was 99.2, so the implied 6-month interest rate was  $(1 + 0.00568 / 4) \times (1 + 0.008 / 4)$ , a 6-month interest rate of 0.00342. Because the (nonannualized) implied 6-month gold appreciation rate exceeds (nonannualized) 6-month LIBOR, the lease rate is negative. The annualized lease rate in this calculation is

$$
2 \times (0. 0 0 3 4 2 - 0. 0 0 5 0 8) = - 0. 0 0 3 3 1 3
$$

The negative lease rate seems to imply that gold owners would pay to lend gold. With significant demand in recent years for gold storage, the negative lease rate could be measuring increased marginal storage costs. It is also possible that LIBOR is not the correct interest rate to use in computing the lease rate. Whatever the reason for negative lease rates, gold in recent years has been trading at close to full carry.

# Evaluation of Gold Production

Suppose we wish to compute the present value of future production for a proposed gold mine. As discussed in Section 2, the present value of a unit of commodity received in the future is simply the present value of the forward price, with discounting performed at the risk-free rate. We can thus use the forward curve for gold to compute the value of an operating gold mine.

Suppose that at times  $t_i$ ,  $i = 1, \dots, n$ , we expect to extract  $n_{t_i}$  ounces of gold by paying a per-unit extraction cost of  $x(t_i)$ . We have a set of  $n$  forward prices,  $F_{0,t_i}$ . If the continuously compounded annual risk-free rate from time 0 to  $t_i$  is  $r(0, t_i)$ , the value of the gold mine is

$$
\text {P V} \quad \text {g o l d} = \sum_ {i = 1} ^ {n} n _ {t _ {i}} \left[ F _ {0, t _ {i}} - x \left(t _ {i}\right) \right] e ^ {- r \left(0, t _ {i}\right) t _ {i}} \tag {10}
$$

This equation assumes that the gold mine is certain to operate the entire time and that the quantity of production is known. Only price is uncertain. Note that in equation (10), by computing the present value of the forward price, we compute the prepaid forward price.

Example 2. Suppose we have a mining project that will produce 1 ounce of gold every year for 6 years. The cost of this project is  \$1100 today, the marginal cost per ounce at the time of extraction is\$ 100, and the continuously compounded interest rate is 6\%.

We observe the gold forward prices in the second column of Table 6, with implied prepaid forward prices in the third column. Using equation (10), we can use these prices to perform the necessary present value calculations.

$$
\text {N e t p r e s e n t v a l u e} = \sum_ {i = 1} ^ {6} \left[ F _ {0, i} - 1 0 0 \right] e ^ {- 0. 0 6 \times i} - \$ 1 1 0 0 = \$ 1 1 9. 5 6 \tag {11}
$$

Gold forward and prepaid forward prices on 1 day for gold delivered at 1-year intervals, out to 6 years. The continuously compounded interest rate is  $6\%$  and the lease rate is assumed to be a constant  $1.5\%$ .

TABLE 6

<table><tr><td>Expiration Year</td><td>Forward Price ($)</td><td>Prepaid Forward Price ($)</td></tr><tr><td>1</td><td>313.81</td><td>295.53</td></tr><tr><td>2</td><td>328.25</td><td>291.13</td></tr><tr><td>3</td><td>343.36</td><td>286.80</td></tr><tr><td>4</td><td>359.17</td><td>282.53</td></tr><tr><td>5</td><td>375.70</td><td>278.32</td></tr><tr><td>6</td><td>392.99</td><td>274.18</td></tr></table>

# FIGURE 5

Specifications for the CME Group/CBOT corn futures contract.

Underlying

2 Yellow, with 1 Yellow deliverable at a \$0.015 premium and 3 Yellow at a \$0.015 discount.

Where traded

CME Group/CBOT

Size

5000 bushels ( $\sim$ 127 metric tons)

Months

March, May, July, September, and December, out 2 years

Trading ends

Business day prior to the 15th day of the month.

Delivery

Second business day following the last trading day of the delivery month

# 5. CORN

Important grain futures in the United States include corn, soybeans, and wheat. In this section we discuss corn as an example of an agricultural product. Corn is harvested primarily in the fall, from September through November. The United States is a leading corn producer, generally exporting rather than importing corn. Figure 5 presents specifications for the CME Group corn futures contract.

Given seasonality in production, what should the forward curve for corn look like? Corn is produced at one time of the year, but consumed throughout the year. In order to be consumed when it is not being produced, corn must be stored.

As discussed in Section 3, storage is an economic decision in which there is a trade-off between selling today and selling tomorrow. If we can sell corn today for  \$2/bu and in 2 months for\$ 2.25/bu, the storage decision entails comparing the price we can get today with the present value of the price we can get in 2 months. In addition to interest, we need to include storage costs in our analysis.

An equilibrium with some current selling and some storage requires that corn prices be expected to rise at the interest rate plus storage costs, which implies that there will be an

# FIGURE 6

Forward curves for corn for four years.

Futures Price (c/bushel)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/09849c99ce8e78c0fdc225476d24724e864c8b4ad4c1e70dc4174141789309cf.jpg)

Data from Datastream.

upward trend in the price between harvests. While corn is being stored, the forward price should behave as in equation (9), rising at interest plus storage costs.

In a typical year, once the harvest begins, storage is no longer necessary; if supply and demand remain constant from year to year, the harvest price will be the same every year. Those storing corn will plan to deplete inventory as harvest approaches and to replenish inventory from the new harvest. The corn price will fall at harvest, only to begin rising again after the harvest.

The behavior of the corn forward price, graphed in Figure 6, largely conforms with this description. In three of the four forward curves, the forward price of corn rises to reward storage between harvests, and it falls at harvest. An important caveat is that the supply of corn varies from year to year. When there is an unusually large crop, producers will expect corn to be stored not just over the current year but into the next year as well. If there is a large harvest, therefore, we might see the forward curve rise continuously until year 2. This might explain the low price and steady rise in 2006.

Although corn prices vary throughout the year, farmers will plant in anticipation of receiving the harvest price. It is therefore the harvest price that guides production decisions. The price during the rest of the year should approximately equal the harvest price plus storage, less convenience.

# 6. ENERGY MARKETS

One of the most important and heavily traded commodity sectors is energy. This sector includes oil, oil products (heating oil and gasoline), natural gas, and electricity. These products represent different points on the spectrum of storage costs and carry.

# Electricity

The forward market for electricity illustrates forward pricing when storage is often not possible, or at least quite costly. Electricity is produced in different ways: from fuels such as coal and natural gas, or from nuclear power, hydroelectric power, wind power, or solar power. Once it is produced, electricity is transmitted over the power grid to end-users.

There are several economic characteristics of electricity that are important to understand. First, it is difficult to store; hence it must be consumed when it is produced or else it is wasted. $^{6}$  Second, at any point in time the maximum supply of electricity is fixed. You can produce less but not more. Third, demand for electricity varies substantially by season, by day of week, and by time of day. Because carry is limited and costly, the electricity price at any time is set by demand and supply at that time.

To illustrate the effects of nonstorability, Table 7 displays 1-day-ahead hourly prices for 1 megawatt-hour of electricity in New York City. The 1-day-ahead forward price is  \$32.22 at 2 A.M., and\$ 63.51 at 7 P.M. Ideally one would buy 2 A.M. electricity, store it, and sell it at 7 P.M., but there is no way to do so costlessly.

Notice two things. First, the swings in Table 7 could not occur with financial assets, which are stored. The 3 A.M. and 3 P.M. forward prices for a stock will be almost identical; if they were not, it would be possible to arbitrage the difference. Second, whereas the forward price for a stock is largely redundant in the sense that it reflects information about the current stock price, interest, and the dividend yield, the forward prices in Table 7 provide price discovery, revealing otherwise unobtainable information about the future price of the commodity. The prices in Table 7 are best interpreted using equation (4).

Just as intraday arbitrage is difficult, there is no costless way to buy winter electricity and sell it in the summer, so there are seasonal variations as well as intraday variations. Peak-load power plants operate only when prices are high, temporarily increasing the supply of electricity. However, expectations about supply, storage, and peak-load power generation should already be reflected in the forward price.

# Natural Gas

Natural gas is a market in which seasonality and storage costs are important. The natural gas futures contract, introduced in 1990, has become one of the most heavily traded futures contracts in the United States. The asset underlying one contract is 10,000 MMBtu, delivered over one month at a specific location (different gas contracts call for delivery at different locations). Figure 7 details the specifications for the Henry Hub contract.

Natural gas has several interesting characteristics. First, gas is costly to transport internationally, so prices and forward curves vary regionally. Second, once a given well has begun production, gas is costly to store. Third, demand for gas in the United States is highly seasonal, with peak demand arising from heating in winter months. Thus, there is a relatively steady stream of production with variable demand, which leads to large and

TABLE 7

Day-ahead price, by hour, for 1 megawatt-hour of electricity in New York City, March 21, 2011.

<table><tr><td>Time</td><td>Price</td><td>Time</td><td>Price</td><td>Time</td><td>Price</td><td>Time</td><td>Price</td></tr><tr><td>0000</td><td>$36.77</td><td>0600</td><td>$44.89</td><td>1200</td><td>$53.84</td><td>1800</td><td>$56.18</td></tr><tr><td>0100</td><td>$34.43</td><td>0700</td><td>$58.05</td><td>1300</td><td>$51.36</td><td>1900</td><td>$63.51</td></tr><tr><td>0200</td><td>$32.22</td><td>0800</td><td>$52.90</td><td>1400</td><td>$50.01</td><td>2000</td><td>$54.99</td></tr><tr><td>0300</td><td>$32.23</td><td>0900</td><td>$54.06</td><td>1500</td><td>$49.55</td><td>2100</td><td>$47.01</td></tr><tr><td>0400</td><td>$32.82</td><td>1000</td><td>$55.06</td><td>1600</td><td>$49.71</td><td>2200</td><td>$40.26</td></tr><tr><td>0500</td><td>$35.84</td><td>1100</td><td>$55.30</td><td>1700</td><td>$51.66</td><td>2300</td><td>$37.29</td></tr></table>

Data from Bloomberg

<table><tr><td>FIGURE 7</td><td>Underlying</td><td>Natural gas delivered at Sabine Pipe Lines Co.&#x27;s Henry Hub, Louisiana</td></tr><tr><td rowspan="5">Specifications for the NYMEX Henry Hub natural gas contract.</td><td>Where traded</td><td>New York Mercantile Exchange</td></tr><tr><td>Size</td><td>10,000 million British thermal units (MMBtu)</td></tr><tr><td>Months</td><td>72 consecutive months</td></tr><tr><td>Trading ends</td><td>Third-to-last business day of month prior to maturity month</td></tr><tr><td>Delivery</td><td>As uniformly as possible over the delivery month</td></tr></table> predictable price swings. Whereas corn has seasonal production and relatively constant demand, gas has relatively constant supply and seasonal demand.

Figure 8 displays strips of gas futures prices for the first Wednesday in June for 4 years between 2004 and 2010. In all curves, seasonality is evident, with high winter prices and low summer prices. The 2004 and 2006 strips show seasonal cycles combined with a downward trend in prices, suggesting that the market considered prices in that year as anomalously high. For the other years, the long-term trend is upward.

Gas storage is costly and demand for gas is highest in the winter. The steady rise of the forward curve (contango) during the fall months suggests that storage occurs just before the heaviest demand. In the June 2006 forward curve, the October, November, and December 2006 prices were  $7.059,$ 8.329, and 9.599. The interest rate at that time was about 5.5\%, or 0.5\%/month. Interest costs would thus contribute at most a few cents to contango. Considering the October and November prices, in a carry market, storage cost would have to satisfy equation (8):

$$
8. 3 2 9 = 7. 0 5 9 e ^ {0. 0 0 5} + \lambda
$$

# FIGURE 8

Forward curves for natural gas for four years. Prices are dollars per MMBtu, from CME Group/NYMEX.

Futures Price ($/MMBtu)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/ad242d7f29defe1054484a91e700c48a96f2f8df52df7ff48ac47994ad9dce50.jpg)

Data from Datastream.

This calculation implies an estimated expected marginal storage cost of  $\lambda = \$ 1.235$ in November 2006. The technologies for storing gas range from pumping it into underground storage facilities to freezing it and storing it offshore in liquified natural gas tankers. By examining Figure 8 you will find different imputed storage costs in each year, but this is to be expected if marginal storage costs vary with the quantity stored.

Because of the expense in transporting gas internationally, the seasonal behavior of the forward curve can vary in different parts of the world. In tropical areas where gas is used for cooking and electricity generation, the forward curve is relatively flat because demand is relatively flat. In the Southern hemisphere, where seasons are reversed from the Northern hemisphere, the forward curve will peak in June and July rather than December and January.

# Oil

Both oil and natural gas produce energy and are extracted from wells, but the different physical characteristics and uses of oil lead to a very different forward curve than that for gas. Oil is easier to transport than gas, with the result that oil trades in a global market. Oil is also easier to store than gas. Thus, seasonals in the price of crude oil are relatively unimportant. Specifications for the NYMEX light sweet crude oil contract (also known as West Texas Intermediate, or WTI) are shown in Figure 9. The NYMEX forward curve on four dates is plotted in Figure 10.

<table><tr><td>FIGURE 9</td><td>Underlying</td><td>Specific domestic crudes delivered at Cushing, Oklahoma</td></tr><tr><td rowspan="5">Specifications for the NYMEX light sweet crude oil contract.</td><td>Where traded</td><td>New York Mercantile Exchange</td></tr><tr><td>Size</td><td>1000 U.S. barrels (42,000 gallons)</td></tr><tr><td>Months</td><td>30 consecutive months plus long-dated futures out 7 years</td></tr><tr><td>Trading ends</td><td>Third-to-last business day preceding the 25th calendar day of month prior to maturity month</td></tr><tr><td>Delivery</td><td>As uniformly as possible over the delivery month</td></tr></table>

# FIGURE 10

Multi-year strips of NYMEX crude oil futures prices,  $/barrel,$  for four different dates.

Futures Price ($/barrel)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/bd05db9a4c0e44c3938f690fff004150aff43402e6de5f05875adb1878257d5b.jpg)

Data from Datastream.

On the four dates in the figure, near-term oil prices range from  $40 to$ 125. At each price, the forward curves are relatively flat. In 2004, it appears that the market expected oil prices to decline. Obviously, that did not happen. In 2006 and 2008, the early part of the forward curve is steeply sloped, suggesting that there was a return to storage and a temporary surplus supply. During 2009, for example, there was substantial arbitrage activity with traders storing oil on tankers. This is discussed in Box 2.

Although oil is a global market, the delivery point for the WTI oil contract is Cushing, Oklahoma, which is landlocked. Another important oil contract is the Brent crude oil

# BOX 2: Tanker-Based Arbitrage

From The Wall Street Journal: The huge floating stockpile of crude oil kept on tankers amid a global supply glut is showing signs of shrinking, as traders struggle to make profits from the once highly lucrative storage play.

The volume being stored at sea has nearly halved from a peak of about 90 million barrels in April last year, according to ship broker ICAP, and [is] expected to fall even further…

The phenomenon of floating storage took off early last year. Oil on the spot market traded at a big discount to forward-dated contracts, in a condition known as contango. Traders took advantage of that by buying crude and putting it into storage on tankers for sale at a higher price at a future date. Profits from the trade more than covered the costs of storage.

At its peak in April last year, there were about 90 million barrels of crude oil in floating storage on huge tankers known as very large crude carriers, or VLCCs, according to ICAP.

But the spread between prompt crude-oil prices and forward prices has narrowed in recent weeks, while freight rates have increased, reducing the incentive to store oil for future delivery.

Contango has narrowed to around 40 cents a barrel, and "to cover your freight and other costs you need at least 90 cents," said Torbjorn Kjus, an oil analyst at DnB NOR Markets.

J.P. Morgan has said prices could even go into backwardation at the end of the second quarter, where spot prices are higher than those in forward contracts. This would be the first time the spread has been in positive territory since July last year.

ICAP said there were currently 21 trading VLCCs offshore with some 43 million barrels of crude. Seven of these are expected to discharge in February and one more in March. So far, it appeared those discharged cargoes wouldn't be replaced by new ones… .

Source: Chazan (2010) contract, based on oil from the North Sea. Historically WTI and Brent traded within a few dollars of each other, and they are of similar quality. In early 2011, however, the price of Brent was at one point almost 20/barrel greater than the price of WTI. Though there is no one accepted explanation for this discrepancy, the difficulty of transporting oil from Cushing to ports undoubtedly plays a role, and the WTI contract in recent years has lost favor as a global oil benchmark. In particular, in 2009 Saudi Arabia dropped WTI from its export benchmarks. The WTI-Brent price discrepancy illustrates the importance of transportation costs even in an integrated global market.

# Oil Distillate Spreads

Some commodities are inputs in the creation of other commodities, which gives rise to commodity spreads. Crude oil is refined to make petroleum products, in particular heating oil and gasoline. The refining process entails distillation, which separates crude oil into different components, including gasoline, kerosene, and heating oil. The split of oil into these different components can be complemented by a process known as "cracking"; hence, the difference in price between crude oil and equivalent amounts of heating oil and gasoline is called the crack spread. $^{8}$

Oil can be processed in different ways, producing different mixes of outputs. The spread terminology identifies the number of gallons of oil as input, and the number of gallons of gasoline and heating oil as outputs. Traders will speak of "5-3-2," "3-2-1," and "2-1-1" crack spreads. The 5-3-2 spread, for example, reflects the profit from taking 5 gallons of oil as input, and producing 3 gallons of gasoline and 2 gallons of heating oil. A petroleum refiner producing gasoline and heating oil could use a futures crack spread to lock in both the cost of oil and output prices. This strategy would entail going long oil futures and short the appropriate quantities of gasoline and heating oil futures. Of course there are other inputs to production and it is possible to produce other outputs, such as jet fuel, so the crack spread is not a perfect hedge.

Example 3. A refiner in June 2010 planning for July production could have purchased July oil for  \$72.86/barrel and sold August gasoline and heating oil for\$ 2.0279/gallon and 2.0252/gallon. The 3-2-1 crack spread is the gross margin from buying 3 gallons of oil and selling 2 gallons of gasoline and 1 of heating oil. Using these prices, the spread is

$$
2 \times \$ 2. 0 2 7 9 + \$ 2. 0 2 5 2 - 3 \times \$ 7 2. 8 6 / 4 2 = \$ 0. 8 7 6 7
$$ or  $0.8767 / 3 =$ 0.29221/gallon.


There are crack spread swaps and options. Most commonly these are based on the difference between the price of heating oil and crude oil, and the price of gasoline and heating oil, both in a 1:1 ratio.

# 7. HEDGING STRATEGIES

In this section we discuss some issues when using commodity futures and forwards to hedge commodity price exposure. First, since commodities are heterogeneous and often costly to transport and store, it is common to hedge a risk with a commodity contract that is imperfectly correlated with the risk being hedged. This gives rise to basis risk: The price of the commodity underlying the futures contract may move differently than the price of the commodity you are hedging. For example, because of transportation cost and time, the price of natural gas in California may differ from that in Louisiana, which is the location underlying the principal natural gas futures contract (see again Figure 7). Second, in some cases one commodity may be used to hedge another. As an example of this we discuss the use of crude oil to hedge jet fuel. Finally, weather derivatives provide another example of an instrument that can be used to cross-hedge. We discuss degree-day index contracts as an example of such derivatives.

# Basis Risk

Exchange-traded commodity futures contracts call for delivery of the underlying commodity at specific locations and specific dates. The actual commodity to be bought or sold may reside at a different location and the desired delivery date may not match that of the futures contract. Additionally, the grade of the deliverable under the futures contract may not match the grade that is being delivered.

This general problem of the futures or forward contract not representing exactly what is being hedged is called basis risk. Basis risk is a generic problem with commodities because of storage and transportation costs and quality differences. Basis risk can also arise with financial futures, as for example when a company hedges its own borrowing cost with the Eurodollar contract.

In the same way as an individual stock could be hedged with an index futures contract, suppose we wish to hedge oil delivered on the East Coast with the NYMEX oil contract, which calls for delivery of oil in Cushing, Oklahoma. The variance-minimizing hedge ratio would be the regression coefficient obtained by regressing the East Coast price on the Cushing price. Problems with this regression are that the relationship may not be stable over time or may be estimated imprecisely.

Another example of basis risk occurs when hedgers decide to hedge distant obligations with near-term futures. For example, an oil producer might have an obligation to deliver 100,000 barrels per month at a fixed price for a year. The natural way to hedge this obligation would be to buy 100,000 barrels per month, locking in the price and supply on a month-by-month basis. This is called a strip hedge. We engage in a strip hedge when we hedge a stream of obligations by offsetting each individual obligation with a futures contract matching the maturity and quantity of the obligation. For the oil producer obligated to deliver every month at a fixed price, the hedge would entail buying the appropriate quantity each month, in effect taking a long position in the strip.

An alternative to a strip hedge is a stack hedge. With a stack hedge, we enter into futures contracts with a single maturity, with the number of contracts selected so that changes in the present value of the future obligations are offset by changes in the value of this "stack" of futures contracts. In the context of the oil producer with a monthly delivery obligation, a stack hedge would entail going long 1.2 million barrels using the near-term contract. (Actually, we would want to tail the position and go long fewer than 1.2 million barrels, but we will ignore this.) When the near-term contract matures, we reestablish the stack hedge by going long contracts in the new near month. This process of stacking futures contracts in the near-term contract and rolling over into the new near-term contract is called a stack and roll. If the new near-term futures price is below the expiring near-term price (i.e., there is backwardation), rolling is profitable.

There are at least two reasons for using a stack hedge. First, there is often more trading volume and liquidity in near-term contracts. With many commodities, bid-ask spreads widen with maturity. Thus, a stack hedge may have lower transaction costs than a strip hedge. Second, the manager may wish to speculate on the shape of the forward curve. You might decide that the forward curve looks unusually steep in the early months. If you undertake a stack hedge and the forward curve then flattens, you will have locked in all your oil at the relatively cheap near-term price, and implicitly made gains from not having locked in the relatively high strip prices. However, if the curve becomes steeper, it is possible to lose.

# BOX 3: Metallgesellschaft A. G.

In 1992, a U.S. subsidiary of the German industrial firm Metallgesellschaft A. G. (MG) had offered customers fixed prices on over 150 million barrels of petroleum products, including gasoline, heating oil, and diesel fuel, over periods as long as 10 years. To hedge the resulting short exposure, MG entered into futures and swaps.

Much of MG's hedging was done using short-dated NYMEX crude oil and heating oil futures. Thus, MG was using stack hedging, rolling over the hedge each month.

During much of 1993, the near-term oil market was in contango (the forward curve was upward sloping). As a result of the market remaining in contango, MG systematically lost money when rolling its hedges and had to meet substantial margin calls. In December 1993, the supervisory board of MG decided to liquidate both its supply contracts and the futures positions used to hedge those contracts. In the end, MG sustained losses estimated at between  \$200 million and\$ 1.3 billion.


The MG case was extremely complicated and has been the subject of pointed exchanges among academics—see in particular Culp and Miller (1995), Edwards and Canter (1995), and Mello and Parsons (1995). While the case is complicated, several issues stand out. First, was the stack and roll a reasonable strategy for MG to have undertaken? Second, should the position have been liquidated when and in the manner it was? (As it turned out, oil prices increased—which would have worked in MG's favor—following the liquidation.) Third, did MG encounter liquidity problems from having to finance losses on its hedging strategy? While the MG case has receded into history, hedgers still confront the issues raised by this case.

The box above recounts the story of Metallgesellschaft A. G. (MG), in which MG's large losses on a hedged position might have been caused, at least in part, by the use of a stack hedge.

# Hedging Jet Fuel with Crude Oil

Jet fuel futures do not exist in the United States, but firms sometimes hedge jet fuel with crude oil futures along with futures for related petroleum products. In order to perform this hedge, it is necessary to understand the relationship between crude oil and jet fuel prices. If we own a quantity of jet fuel and hedge by holding  $H$  crude oil futures contracts, our mark-to-market profit depends on the change in the jet fuel price and the change in the futures price:

$$

\left(P _ {t} - P _ {t - 1}\right) + H \left(F _ {t} - F _ {t - 1}\right) \tag {12}

$$ where  $P_{t}$  is the price of jet fuel and  $F_{t}$  the crude oil futures price. We can estimate  $H$  by regressing the change in the jet fuel price (denominated in dollars per gallon) on the change in the crude oil futures price (denominated in dollars per gallon, which is the barrel price

divided by 42). We use the nearest to maturity oil futures contract. Running this regression using daily data for January 2006-March 2011 gives

$$
P _ {t} - P _ {t - 1} = \underset {(0. 0 0 0 9)} {0. 0 0 0 4} + \underset {(0. 0 1 9 2)} {0. 8 3 7 9} \left(F _ {t} ^ {\text {o i l}} - F _ {t - 1} ^ {\text {o i l}}\right) R ^ {2} = 0. 5 9 6 \tag {13}
$$

Standard errors are below coefficients. The coefficient on the futures price change tells us that, on average, when the crude futures price increases by  \$0.01, a gallon of jet fuel increases by$ 0.008379. $^{11}$  The  $R^2$  of 0.596 implies a correlation coefficient of about 0.77, so there is considerable variation in the price of jet fuel not accounted for by the price of crude. Because jet fuel is but one product produced from crude oil, it makes sense to see if adding other oil products to the regression improves the accuracy of the hedge. Adding the near term futures prices for heating oil and gasoline, we obtain

$$
\begin{array}{l} P _ {t} - P _ {t - 1} = \underset {(0. 0 0 0 1)} {0. 0 0 0 6} + \underset {(0. 0 2 7 8)} {0. 0 8 9 7} \left(F _ {t} ^ {\text {o i l}} - F _ {t - 1} ^ {\text {o i l}}\right) + \underset {(0. 0 2 7 7)} {0. 8 4 7 6} \left(F _ {t} ^ {\text {h e a t i n g o i l}} - F _ {t - 1} ^ {\text {h e a t i n g o i l}}\right) \\ + \underset {(0. 0 2 2 2)} {0. 0 0 6 9} \left(F _ {t} ^ {\text {g a s o l i n e}} - F _ {t - 1} ^ {\text {g a s o l i n e}}\right) R ^ {2} = 0. 7 8 6 \tag {14} \\ \end{array}
$$

The explanatory power of the regression is improved, with an implied correlation of 0.886 between the actual and predicted jet fuel price. The price of heating oil is more closely related to the price of jet fuel than is the price of crude oil.

# Weather Derivatives

Many businesses have revenue that is sensitive to weather: Ski resorts are harmed by warm winters, soft drink manufacturers are harmed by a cold spring, summer, or fall, and makers of lawn sprinklers are harmed by wet summers. In all of these cases, firms could hedge their risk using weather derivatives—contracts that make payments based upon realized characteristics of weather—to cross-hedge their specific risk.

Weather can affect both the price and consumption of energy-related products. If a winter is colder than average, homeowners and businesses will consume extra electricity, heating oil, and natural gas, and the prices of these products will tend to be high as well. Conversely, during a warm winter, energy prices and quantities will be low. While it is possible to use futures markets to hedge prices of commodities such as natural gas, hedging the quantity is more difficult. Weather derivatives can provide an additional contract with a payoff correlated with the quantity of energy used.

An example of a weather contract is the degree-day index futures contract traded at the CME Group. The contract is based on the premise that heating is used when temperatures are below 65 degrees and cooling is used when temperatures are above 65 degrees. Thus, a heating degree-day is the difference between 65 degrees Fahrenheit and the average daily temperature, if positive, or zero otherwise. A cooling degree-day is the difference between the average daily temperature and 65 degrees Fahrenheit, if positive, and zero otherwise. The monthly degree-day index is the sum of the daily degree-days over the month. The futures contract then settles based on the cumulative heating or cooling degree-days (the two are separate contracts) over the course of a month. The size of the contract is 100 times the degree-day index. Degree-day index contracts are available for major cities in the United States, Europe, and Japan. There are also puts and calls on these futures.

With city-specific degree-day index contracts, it is possible to create and hedge payoffs based on average temperatures, or using options, based on ranges of average temperatures. If Minneapolis is unusually cold but the rest of the country is normal, the heating degree-day contract for Minneapolis will make a large payment that will compensate the holder for the increased consumption of energy.

# 8. SYNTHETIC COMMODITIES

Just as it is possible to use stock index futures to create a synthetic stock index, it is also possible to use commodity futures to create synthetic commodities. We can create a synthetic commodity by combining a commodity forward contract and a zero-coupon bond. Enter into a long commodity forward contract at the price  $F_{0,T}$  and buy a zero-coupon bond that pays  $F_{0,T}$  at time  $T$ . Since the forward contract is costless, the cost of this investment strategy at time 0 is just the cost of the bond, which equals the prepaid forward price:  $e^{-rT}F_{0,T}$ . At time  $T$ , the strategy pays

$$
\underbrace {S _ {T} - F _ {0 , T}} _ {\text {F o r w a r d c o n t r a c t p a y o f f}} + \underbrace {F _ {0 , T}} _ {\text {B o n d p a y o f f}} = S _ {T}
$$ where  $S_{T}$  is the time  $T$  price of the commodity. This investment strategy creates a synthetic commodity, which has the same value as a unit of the commodity at time  $T$ .


During the early 2000s, indexed commodity investing became popular. Commodity funds use futures contracts and Treasury bills or other bonds to create synthetic commodities and replicate published commodity indexes. Two important indexes are the S&P GSCI index (originally created by Goldman Sachs) and the Dow Jones UBS index (originally created by AIG). Masters (2008) estimates that money invested in commodity funds grew 20-fold between 2003 and 2008, from  \$13 billion to\$ 260 billion.[12] During this same period, commodity prices rose significantly. Figure 11 shows the performance of two commodity indexes plotted with the S&P 500. The two indexes diverge sharply in 2009 because they weight commodities differently. The S&P GSCI index, for example, is world-production

# FIGURE 11

Value of S&P GSCI and DJ UBS indexes from 1991 to 2011, plotted against the S&P 500 index.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/72f59510e811231d9b5cb9944f25f0a0d80dbae005a765cf34d77bb551d30b80.jpg) weighted and more heavily weights the petroleum sector. The DJ UBS index is designed to be more evenly weighted. $^{13}$

Source: Datastream


You might wonder whether a commodity fund should use futures contracts to create synthetic commodities, or whether the fund should hold the physical commodity (where feasible). An important implication of the discussion in Section 3 is that it is generally preferable to invest in synthetic commodities rather than physical commodities. To see this, we can compare the returns to owning the physical commodity and owning a synthetic commodity. As before, let  $\lambda(0, T)$  denote the future value of storage costs.

To invest in the physical commodity for 1 year, we can buy the commodity and prepay storage costs. This costs  $S_0 + \lambda(0,1) / (1 + R)$  initially and one period later pays  $S_1 + \lambda(0,1) - \lambda(0,1) = S_1$ .

An investment in the synthetic commodity costs the present value of the forward price,  $F_{0,1} / (1 + R)$ , and pays  $S_{1}$ . The synthetic investment will be preferable if

$$

F _ {0, 1} / (1 + R) <   S _ {0} + \lambda (0, 1) / (1 + R)

$$ or  $F_{0,1} < S_0(1 + R) + \lambda (0,1)$ . Suppose, however, that  $F_{0,1} > S_0(1 + R) + \lambda (0,1)$ . This is an arbitrage opportunity exploitable by buying the commodity, storing it, paying storage costs, and selling it forward. Thus, if there is no arbitrage, we expect that  $F_{0,1} \leq S_0(1 + R) + \lambda (0,1)$  and the synthetic commodity will be the less expensive way to obtain the commodity return. Moreover, there will be equality only in a carry market. So investors will be indifferent between physical and synthetic commodities in a carry market, and will prefer synthetic commodities at all other times.

# CHAPTER SUMMARY

At a general level, commodity forward prices can be described by the same formula as financial forward prices:

$$
F _ {0, T} = S _ {0} e ^ {(r - \delta) T} \tag {15}
$$

For financial assets,  $\delta$  is the dividend yield. For commodities,  $\delta$  is the commodity lease rate—the return that makes an investor willing to buy and then lend a commodity. Thus, for the commodity owner who lends the commodity, it is like a dividend. From the commodity borrower's perspective, it is the cost of borrowing the commodity.

Different issues arise with commodity forwards than with financial forwards. For both commodities and financial assets, the forward price is the expected spot price discounted at the risk premium on the asset. (As with financial forwards, commodity forward prices are biased predictors of the future spot price when the commodity return contains a risk premium.) Storage of a commodity is an economic decision in which the investor compares the benefit from selling today with the benefit of selling in the future. When commodities are stored, the forward price must be sufficiently high so that a cash-and-carry compensates the investor for both financing and storage costs (this is called a carry market). When commodities are not stored, the forward price reflects the expected future spot price. Forward prices that are too high can be arbitraged with a cash-and-carry, while forward prices that are lower may not be arbitrageable, as the terms of a short sale should be based on the forward price. Some holders of a commodity receive a benefit from physical ownership. This benefit is called the commodity's convenience yield, and convenience can lower the forward price.

Forward curves provide information about individual commodities, each of which differs in the details. Forward curves for different commodities reflect different properties of storability, storage costs, production, demand, and seasonality. Electricity, gold, corn, natural gas, and oil all have distinct forward curves, reflecting the different characteristics of their physical markets. These idiosyncrasies will be reflected in the individual commodity lease rates.

It is possible to create synthetic commodities by combining commodity futures and default-free bonds. In general it is financially preferable to invest in a synthetic rather than a physical commodity. Synthetic commodity indexes have been popular investments in recent years.

# FURTHER READING

Geman (2005) and Siegel and Siegel (1990) provide a detailed discussion of many commodity futures. There are numerous papers on commodities. Bodie and Rosansky (1980) and Gorton and Rouwenhorst (2004) examine the risk and return of commodities as an investment. Brennan (1991), Pindyck (1993b), and Pindyck (1994) examine the behavior of commodity prices. Schwartz (1997) compares the performance of different models of commodity price behavior. Jarrow and Oldfield (1981) discuss the effect of storage costs on pricing, and Routledge et al. (2000) present a theoretical model of commodity forward curves. The websites of commodity exchanges are also useful resources, with information about particular contracts and sometimes about trading and hedging strategies.

Finally, Metallgesellschaft engendered a spirited debate. Papers written about that episode include Culp and Miller (1995), Edwards and Canter (1995), and Mello and Parsons (1995).

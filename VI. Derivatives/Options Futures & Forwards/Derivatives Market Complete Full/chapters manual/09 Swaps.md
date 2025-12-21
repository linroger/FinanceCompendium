---
title: "Chapter 9 - Swaps"
aliases:
   - Swaps
parent_directory: Derivatives Market Complete Full
formatted: "2025-12-21 02:15:00 PM"
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
   - swaps
   - commodity swaps
   - interest rate swaps
   - currency swaps
secondary_tags:
   - swaptions
   - total return swaps
   - hedging strategies
   - forward contracts
   - swap pricing
   - notional amount
   - market value
cssclasses: academia
---

# Swaps

A forward contract fixes a price for a transaction that will occur on a specific date in the future. However, many transactions occur repeatedly. Firms that issue bonds make periodic coupon payments. Multinational firms frequently exchange currencies. Firms that buy commodities as production inputs or that sell them make payments or receive income linked to commodity prices on an ongoing basis.

These situations raise the question: If a manager seeking to reduce risk confronts a risky payment stream—as opposed to a single risky payment—what is the easiest way to hedge this risk? One obvious answer is that we can enter into a separate forward contract for each payment we wish to hedge. However, it might be more convenient, and entail lower transaction costs, if we could hedge a stream of payments with a single transaction.

A swap is a contract calling for an exchange of payments over time. One party makes a payment to the other depending upon whether a reference price turns out to be greater or less than a fixed price that is specified in the swap contract. A swap thus provides a means to hedge a stream of risky payments. By entering into an oil swap, for example, an oil buyer confronting a stream of uncertain oil payments can lock in a fixed price for oil over a period of time. The swap payments would be based on the difference between a fixed price for oil and a market price that varies over time.

From this description, you can see that there is a relationship between swaps and forward contracts. In fact, a forward contract is a single-payment swap. It is possible to price a multi-date swap—determine the fixed price for oil in the above example—by using information from the set of forward prices with different maturities (i.e., the strip). We will see that swaps are nothing more than forward contracts coupled with borrowing and lending money.

## I. AN EXAMPLE OF A COMMODITY SWAP

We begin our study of swaps by presenting an example of a simple commodity swap. Our purpose here is to understand how a swap is related to forwards, why someone might use a swap, and how market-makers hedge the risk of swaps. In later sections we present swap-price formulas and examine interest rate swaps, total return swaps, and more complicated commodity swap examples.

An industrial producer, IP Inc., is going to buy 100,000 barrels of oil 1 year from today and 2 years from today. Suppose that the forward price for delivery in 1 year is 110/barrel and in 2 years is \$111/barrel. Suppose that the 1- and 2-year annual zero-coupon bond yields are  $6\%$  and  $6.5\%$ .

IP can use forward contracts to guarantee the cost of buying oil for the next 2 years. Specifically, IP could enter into long forward contracts for 100,000 barrels in each of the next 2 years, committing to pay  \$110/barrel in 1 year and\$ 111/barrel in 2 years. The present value of this cost is

$$
\frac{\mathbb{S}110}{1.06} + \frac{\mathbb{S}111}{1.065^{2}} = \mathbb{S}201.638
$$

IP could invest this amount today and ensure that it had the funds to buy oil in 1 and 2 years. Alternatively, IP could pay an oil supplier 201.638, and the supplier would commit to delivering one barrel in each of the next 2 years. A single payment today for a single delivery of oil in the future is a prepaid forward. A single payment today to obtain multiple deliveries in the future is a prepaid swap.

Although it is possible to enter into a prepaid swap, buyers might worry about the resulting credit risk: They have fully paid for oil that will not be delivered for up to 2 years. (The prepaid forward has the same problem.) For the same reason, the swap counterparty would worry about a postpaid swap, where the oil is delivered and full payment is made after 2 years. A more attractive solution for both parties is to defer payment until the oil is delivered, while still fixing the total price.

Note that there are many feasible ways to have the buyer pay. Typically, however, a swap will call for equal payments in each year. The payment per year per barrel,  $x$ , will then have to be such that

$$
\frac{x}{1.06} + \frac{x}{1.065^{2}} = \$201.638
$$

To satisfy this equation, the payments must be  \$110.483 in each year. We then say that the 2-year swap price is\$ 110.483. However, any payments that have a present value of 201.638 are acceptable.

## Physical Versus Financial Settlement

Thus far we have described the swap as if the swap counterparty supplied physical oil to the buyer. Figure 1 shows a swap that calls for physical settlement. In this case 110.483 is the per-barrel cost of oil.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/bb09df97f9d9be49e704e58e2a08545e00b504a226bf3dcd60dc7ccb70a1326a.jpg)

However, we could also arrange for financial settlement of the swap. With financial settlement, the oil buyer, IP, pays the swap counterparty the difference between \$110.483 and the spot price (if the difference is negative, the counterparty pays the buyer), and the oil buyer then buys oil at the spot price. For example, if the market price is \$115, the swap counterparty pays IP

$$
\text{Spot} = \mathbb{15} - \text{swap} = \mathbb{15} - \mathbb{10.483} = \mathbb{4.517}
$$

If the market price is 108, the spot price less the swap price is

$$
\text{Spot} - \text{swap} = 108 - 110.483 = -2.483
$$

In this case, the oil buyer, IP, makes a payment to the swap counterparty. Whatever the market price of oil, the net cost to the buyer is the swap price, 110.483:

$$
\underbrace{\text{Spot price} - \text{swap price}}_{\text{Swap payment}} - \underbrace{\text{spot price}}_{\text{Spot purchase of oil}} = -\text{Swap price}
$$

Figure 2 depicts cash flows and transactions when the swap is settled financially. The results for the buyer are the same whether the swap is settled physically or financially. In both cases, the net cost to the oil buyer is 110.483.

```d2
direction: right

buyer: Oil Buyer {
  shape: rectangle
}

counterparty: Swap Counterparty {
  shape: rectangle
}

buyer -> counterparty: Pays fixed price\n(\$110.483/barrel) {
  style.stroke: blue
}

counterparty -> buyer: Pays floating price\n(spot price) {
  style.stroke: red
}

note: Net result:\nBuyer pays fixed price\nregardless of spot price {
  near: buyer
  shape: callout
}
```

We have discussed the swap on a per-barrel basis. For a swap on 100,000 barrels, we simply multiply all cash flows by 100,000. In this example, 100,000 is the notional amount of the swap, meaning that 100,000 barrels is used to determine the magnitude of the payments when the swap is settled financially.

To illustrate how a commodity swap would be specified in practice, Figure 3 is an abbreviated example of a term sheet for an oil swap. Term sheets are commonly used by broker-dealers to succinctly convey the important terms of a financial transaction. The specific example is hypothetical, but the language is from a real term sheet. This particular example is a 3-month oil swap with settlement each month based on the difference between a fixed price and the average over the month of the NYMEX near-month futures price. As you would expect, the complete documentation for such a deal is lengthy. Transaction confirmations typically make reference to standard documentation supplied by the International Swaps and Derivatives Association (ISDA). The use of standard documentation makes swaps less costly to trade and prices more comparable across dealers.

**Figure 2:** Cash flows from a transaction where the oil buyer enters into a financially settled 2-year swap. Each year the buyer pays the spot price for oil and receives spot price - \$110.483. The buyer's net cost of oil is \$110.483/barrel.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/5b5a785df75c24e041cf0275d70b59b8c9ebed1070953026f20697f98d3f3c13.jpg)

**Figure 3:** Illustrative example of the terms for an oil swap based on West Texas Intermediate (WTI) crude oil.

<table><tr><td>Fixed-Price Payer:</td><td>Broker-dealer</td></tr><tr><td>Floating-Price Payer:</td><td>Counterparty</td></tr><tr><td>Notional Amount:</td><td>100,000 barrels</td></tr><tr><td>Trade Date:</td><td>April 18, 2011</td></tr><tr><td>Effective Date:</td><td>July 1, 2011</td></tr><tr><td>Termination Date:</td><td>September 31, 2011</td></tr><tr><td>Period End Date:</td><td>Final Pricing Date of each Calculation Period as defined in the description of the Floating Price.</td></tr><tr><td>Fixed Price:</td><td>110.89 USD per barrel</td></tr><tr><td>Commodity Reference Price:</td><td>OIL-WTI-NYMEX</td></tr><tr><td>Floating Price:</td><td>The average of the first nearby NYMEX WTI Crude Oil Futures settlement prices for each successive day of the Calculation Period during which such prices are quoted</td></tr><tr><td>Calculation Period:</td><td>Each calendar month during the transaction</td></tr><tr><td>Method of Averaging:</td><td>Unweighted</td></tr><tr><td>Settlement and Payment:</td><td>If the Fixed Amount exceeds the Floating Amount for such Calculation Period, the Fixed Price Payer shall pay the Floating Price Payer an amount equal to such excess. If the Floating Amount exceeds the Fixed Amount for such Calculation Period, the Floating Price Payer shall pay the Fixed Price Payer an amount equal to such excess.</td></tr><tr><td>Payment Date:</td><td>5 business days following each Period End Date</td></tr></table>

## Why Is the Swap Price Not 110.50?

The swap price,  \$110.483, is close to the average of the two oil forward prices,\$ 110.50. However, it is not exactly the same. Why?

Suppose that the swap price were  \$110.50. The oil buyer would then be committing to pay\$ 0.50 more than the forward price the first year and would pay 0.50 less than the forward price the second year. Thus, relative to the forward curve, the buyer would have made an interest-free loan to the counterparty. There is implicit lending in the swap.

Now consider the actual swap price of  \$110.483/barrel. Relative to the forward curve prices of\$ 110 in 1 year and \$111 in 2 years, we are overpaying by \$0.483 in the first year and we are underpaying by \$0.517 in the second year. Therefore, the swap is equivalent to being long the two forward contracts, coupled with an agreement to lend \$0.483 to the swap counterparty in 1 year, and receive 0.517 in 2 years. This loan has the effect of equalizing the net cash flow on the two dates.

The interest rate on this loan is  $0.517 / 0.483 - 1 = 7\%$ . Where does  $7\%$  come from? We assumed that  $6\%$  is the 1-year zero yield and  $6.5\%$  is the 2-year yield. Given these interest rates,  $7\%$  is the 1-year implied forward yield from year 1 to year 2. By entering into

**Figure 4:**

Cash flows from a transaction where an oil buyer and seller each enters into a financially settled 2-year swap. The buyer pays the spot price for oil and receives the spot price – \$110.483 each year as a swap payment. The oil seller receives the spot price for oil and receives \$110.483 – spot price as a swap payment.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/fa1159f8a7bc808a76a7607cfffb65d2c994d6ecfea0f31dd1dbda8c48b99ae0.jpg) the swap, we are lending the counterparty money for 1 year beginning in 1 year. If the deal is priced fairly, the interest rate on this loan should be the implied forward interest rate.

## The Swap Counterparty

The swap counterparty is a dealer who hedges the oil price risk resulting from the swap. The dealer can hedge in several ways. First, imagine that an oil seller would like to lock in a fixed selling price of oil. In this case, the dealer locates the oil buyer and seller and serves as a go-between for the swap, receiving payments from one party and passing them on to the other. In practice the fixed price paid by the buyer exceeds the fixed price received by the seller. This price difference is a bid-ask spread and is the dealer's fee.

Figure 4 illustrates how this transaction would work with financial settlement. The oil seller receives the spot price for oil and receives the swap price less the spot price, on net receiving the swap price. The oil buyer pays the spot price and receives the spot price less the swap price. The situation where the dealer matches the buyer and seller is called a back-to-back transaction or "matched book" transaction. The dealer bears the credit risk of both parties but is not exposed to price risk.

A more interesting situation occurs when the dealer serves as counterparty and hedges the transaction using forward markets. Let's see how this would work.

After entering the swap with the oil buyer, the dealer has the obligation to pay the spot price and receive the swap price. If the spot price rises, the dealer can lose money. The dealer has a short position in 1and 2-year oil.

The natural hedge for the dealer is to enter into long forward or futures contracts to offset this short exposure. Table 1 illustrates how this strategy works. As we discussed earlier, there is an implicit loan in the swap and this is apparent in Table 1. The net cash flow for the hedged dealer is a loan, where the dealer receives cash in year 1 and repays it in year 2.

<table><tr><td colspan="2">TABLE I</td><td colspan="3">Positions and cash flows for a dealer who has an obligation to receive the fixed price in an oil swap and who hedges the exposure by going long year 1 and year 2 oil forwards.</td></tr><tr><td>Year</td><td>Payment from Oil Buyer</td><td>Long Forward</td><td>Net</td><td></td></tr><tr><td>1</td><td>\$110.483 – year 1 spot price</td><td>Year 1 spot price – $110</td><td>$0.483</td><td></td></tr><tr><td>2</td><td>\$110.483 – year 2 spot price</td><td>Year 2 spot price – $111</td><td>-$0.517</td><td></td></tr></table>

This example shows that hedging the oil price risk in the swap, with forwards only, does not fully hedge the position. The dealer also has interest rate exposure. If interest rates fall, the dealer will not be able to earn a sufficient return from investing  \$0.483 in year 1 to repay\$ 0.517 in year 2. Thus, in addition to entering oil forwards, it would make sense for the dealer to use Eurodollar contracts or forward rate agreements to hedge the resulting interest rate exposure.

# The Market Value of a Swap

When the buyer first enters the swap, its market value is zero, meaning that either party could enter or exit the swap without having to pay anything to the other party (apart from commissions and bid-ask spreads). From the oil buyer's perspective, the swap consists of two forward contracts plus an agreement to lend money at the implied forward rate of  $7\%$ . The forward contracts and forward rate agreement have zero value, so the swap does as well.

Once the swap is struck, however, its market value will generally no longer be zero, for two reasons. First, the forward prices for oil and interest rates will change over time. New swaps would no longer have a fixed price of 110.483; hence, one party will owe money to the other should one party wish to exit or unwind the swap.

Second, even if oil and interest rate forward prices do not change, the value of the swap will remain zero only until the first swap payment is made. Once the first swap payment is made, the buyer has overpaid by  \$0.483 relative to the forward curve, and hence, in order to exit the swap, the counterparty would have to pay the oil buyer\$ 0.483. Thus, even if prices do not change, the market value of swaps can change over time due to the implicit borrowing and lending.

A buyer wishing to exit the swap could negotiate terms with the original counterparty to eliminate the swap obligation. An alternative is to leave the original swap in place and enter into an offsetting swap with the counterparty offering the best price. The original swap called for the oil buyer to pay the fixed price and receive the floating price; the offsetting swap has the buyer receive the fixed price and pay floating. The original obligation would be cancelled except to the extent that the fixed prices are different. However, the difference is known, so oil price risk is eliminated. (There is still credit risk when the original swap counterparty and the counterparty to the offsetting swap are different. This could be a reason for the buyer to prefer offsetting the swap with the original counterparty.)

To see how a swap can change in value, suppose that immediately after the buyer enters the swap, the forward curve for oil rises by  \$2 in years 1 and 2. Thus, the year-1 forward price becomes\$ 112 and the year-2 forward price becomes 113. The original swap will no longer have a zero market value.

# Box I: Enron's Hidden Debt

When energy giant Enron collapsed in the fall of 2001, there were charges that other companies had helped Enron mislead investors. In July 2003, the Securities and Exchange Commission announced that J. P. Morgan Chase and Citigroup had each agreed to pay more than 100 million to settle allegations that they had helped Enron commit fraud. Specifically, the SEC alleged that both banks had helped Enron characterize loan proceeds as operating income.

The basic outline of the transaction with J. P. Morgan Chase is as follows. Enron entered into "prepaid forward sales contracts" (essentially a prepaid swap) with an entity called Mahonia; Enron received a lump-sum payment and agreed to deliver natural gas in the future. Mahonia in turn received a lump-sum payment from Chase and agreed to deliver natural gas in the future. Chase, which controlled Mahonia, then hedged its Mahonia transaction with Enron. With all transactions netted out, Enron had no commodity exposure, and received its lump-sum initial payment from Mahonia in exchange for making future fixed installment payments to Chase. In other words, Enron in effect had a loan with Chase. Not only did Enron not record debt from these transactions, but the company reported operating income. The transaction is illustrated in Figure 5.

The SEC complaint included a revealing excerpt from internal Chase e-mail:

WE ARE MAKING DISGUISED LOANS, USUALLY BURIED IN COMMODITIES OR EQUITIES DERIVATIVES (AND I'M SURE IN OTHER AREAS). WITH AFEW [sic] EXcePTIONS, THEY ARE UNDERSTOOD TO BE DISGUISED LOANS AND APPROVED AS SUCH. (Capitalization in the original.)

Assuming interest rates are unchanged, the new swap price is  \$112.483. (You should verify this.) The buyer could unwind the swap at this point by agreeing to sell oil at\$ 112.483, while the original swap still calls for buying oil at 110.483. Thus, the net swap payments in each year are

$$
\underbrace {(\text {S p o t p r i c e} - \mathbb {S} 1 1 0 . 4 8 3)} _ {\text {O r i g i n a l s w a p}} + \underbrace {(\mathbb {S} 1 1 2 . 4 8 3 - \text {s p o t p r i c e})} _ {\text {N e w s w a p}} = \mathbb {S} 2
$$

The present value of this difference is

$$
\frac {\mathbb {S} 2}{1 . 0 6} + \frac {\mathbb {S} 2}{(1 . 0 6 5) ^ {2}} = \mathbb {S} 3. 6 5 0
$$

The buyer can receive a stream of payments worth  \$3.65 by offsetting the original swap with a new swap. Thus,\$ 3.65 is the market value of the swap.

If interest rates had changed, we would have used the new interest rates in computing the new swap price.

As a practical matter, swaps and other derivatives can cause problems for regulators, accountants, and investors, all of whom would like an accurate depiction of activities within a firm. Box 1 shows an extreme example of a hedged transaction—allegedly used to hide debt and manipulate earnings—involving Enron and J. P. Morgan Chase. Figure 5, which was taken from an SEC account of the transaction, illustrates the transactions and flows.

The examples we have analyzed in this section illustrate the fundamental characteristics of swaps and their cash flows. In the rest of the chapter, we will examine swaps based on interest rates, currencies, and commodities and see some of the ways in which we can modify the terms of a swap.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/238333e6abdc810e943fed5bd245911b352d4aa4641c6b66b76e2aa07b281ae2.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/a50ac482593fe9a21bbbae6206d4cf061fb75d2192852db84d44e7db3e2b2d57.jpg)

Source: Securities and Exchange Commission.

#### 2. COMPUTING THE SWAP RATE IN GENERAL

We now present a general formula for computing the swap rate. As we saw in the previous section, the swap rate calculation equates the value of a prepaid swap with the present value of the fixed swap payments. This principle for computing the swap rate is the same for any underlying asset.

# Fixed Quantity Swaps

We first consider swaps with a notional amount that is fixed over time. Suppose there are  $n$  swap settlements, occurring on dates  $t_i$ ,  $i = 1, \dots, n$ . The forward prices on these dates are given by  $F_{0,t_i}$ . We will account for interest rates by using bond price notation. The price of a zero-coupon bond maturing on date  $t_i$  is  $P(0,t_i)$ . This price is the factor for discounting a fixed payment from date  $t_i$  to date 0.

If the buyer at time zero were to enter into forward contracts to purchase one unit on each of the  $n$  dates, the present value of payments would be the present value of the forward prices, which equals the price of the prepaid swap:

$$
\text {P r e p a i d} = \sum_ {i = 1} ^ {n} F _ {0, t _ {i}} P (0, t _ {i}) \tag {1}
$$

We determine the fixed swap price,  $R$ , by requiring that the present value of the swap payments equal the value of the prepaid swap. Thus, we have

$$
\sum_ {i = 1} ^ {n} R P \left(0, t _ {i}\right) = \sum_ {i = 1} ^ {n} F _ {0, t _ {i}} P \left(0, t _ {i}\right) \tag {2}
$$

Solving for  $R$  gives

$$
\boxed {R = \frac {\sum_ {i = 1} ^ {n} P \left(0 , t _ {i}\right) F _ {0 , t _ {i}}}{\sum_ {i = 1} ^ {n} P \left(0 , t _ {i}\right)}} \tag {3}
$$

The expression  $\sum_{i=1}^{n} P(0, t_i) F_{0,t_i}$  is the present value of payments implied by the strip of forward prices. The expression  $\sum_{i=1}^{n} P(0, t_i)$  is the present value of a 1 annuity. Thus, the swap rate annihilates the interest payments on the floating-rate bond.

A different way to motivate the swap price calculation is to note that the present value of the differences between the swap price and the forward prices must equal zero:

$$
\sum_ {i = 1} ^ {n} P \left(0, t _ {i}\right) [ R - F _ {0, t _ {i}} ] = 0 \tag {4}
$$

This also gives rise to equation (3).

We can rewrite equation (3) to make it easier to interpret:

$$
R = \sum_ {i = 1} ^ {n} \left[ \frac {P (0 , t _ {i})}{\sum_ {j = 1} ^ {n} P (0 , t _ {j})} \right] F _ {0, t _ {i}}
$$

The terms in square brackets sum to 1. This form of equation (3) emphasizes that the fixed swap rate is a weighted average of the forward prices, where zero-coupon bond prices are used to determine the weights.

Figure 6 displays a swap curve for natural gas, constructed using equation 3. The natural gas price exhibits seasonality. The swap price is a weighted average of natural gas forward prices over the life of the swap, and thus exhibits less variation. In Figure 6, the average natural gas futures price climbs so the swap curve climbs as well.

You will observe from Figure 6 that it is easier to describe the general level of the natural gas price at different horizons by referring to the swap price rather than the individual prices. The swap price is about  \$5.50 at a horizon of 3 years and\$ 6 at a horizon of 7 years.

# Swaps with Variable Quantity and Price

A commodity buyer might prefer a swap in which quantities vary over time. For example, a natural gas buyer could enter into a swap supplying a greater quantity of gas during the heating season. A buyer might also wish to fix different prices in different seasons. For example, there could be seasonal variation in the price of the output produced using natural

# FIGURE 6

Natural gas swap curve, June 2, 2010. The swap curve displays the fixed price for a natural gas swap beginning June 2010 and continuing, with monthly settlement, for the number of months specified on the  $x$ -axis.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/b394e37746f8bef0016710ffc26c65bfaa92f686471f1e39096f7a23d60f3924.jpg)

Price per MMBtu ($) gas as an input. How do we determine the swap price with seasonally varying quantities and prices?

Let  $Q_{t_i}$  denote the quantity of the commodity to be purchased at time  $t_i$ . If a buyer pays in advance, the prepaid swap price is

$$
\text {P r e p a i d s w a p} = \sum_ {i = 1} ^ {n} Q _ {t _ {i}} F _ {0, t _ {i}} P (0, t _ {i}) \tag {5}
$$

Consider a swap in which the buyer pays  $RQ_{t_i}$  for  $Q_{t_i}$  units of the commodity. The present value of these fixed payments (fixed per unit of the commodity) must equal the prepaid swap price, so that

$$
\sum_ {i = 1} ^ {n} Q _ {t _ {i}} F _ {0, t _ {i}} P (0, t _ {i}) = \sum_ {i = 1} ^ {n} Q _ {t _ {i}} R P (0, t _ {i})
$$

Solving this equation for  $R$  gives

$$
R = \frac {\sum_ {i = 1} ^ {n} Q _ {t _ {i}} P \left(0 , t _ {i}\right) F _ {0 , t _ {i}}}{\sum_ {i = 1} ^ {n} Q _ {t _ {i}} P \left(0 , t _ {i}\right)} \tag {6}
$$

The equation shows that if we are going to buy more gas when the forward price is high, we have to weight more heavily the forward price in those months. When  $Q_{t} = 1$ , the formula is the same as equation (3).

Once again, another way to derive this equation is to require that the present value of the quantity-weighted difference between the swap price and the forward prices is zero:

$$
\sum_ {i = 1} ^ {n} P \left(0, t _ {i}\right) Q _ {t _ {i}} \left(R - F _ {0, t _ {i}}\right) = 0
$$

We can also permit prices to be time-varying. If, for example, we let the summer swap price be denoted by  $R_{s}$  and the winter price by  $R_{w}$ , then the summer and winter swap prices can be any prices for which the value of the prepaid swap equals the present value of the fixed swap payments:

$$
R _ {s} \sum_ {i \in \text {s u m m e r}} ^ {n} P (0, t _ {i}) Q _ {t _ {i}} + R _ {w} \sum_ {i \in \text {w i n t e r}} ^ {n} P (0, t _ {i}) Q _ {t _ {i}} = \sum_ {i = 1} ^ {n} P (0, t _ {i}) Q _ {t _ {i}} F _ {0, t _ {i}}
$$

The notations  $i \in$  summer and  $i \in$  winter mean to sum over only the months in those seasons. This gives us one equation and two unknowns,  $R_{s}$  and  $R_{w}$ . Once we fix one of the two prices, the equation will give us the other.

# 3. INTEREST RATE SWAPS

Companies use interest rate swaps to modify their interest rate exposure. In this section we will begin with a simple example of an interest rate swap, similar to the preceding oil swap example. We will then present general pricing formulas and discuss ways in which the basic swap structure can be altered.

# A Simple Interest Rate Swap

Suppose that XYZ Corp. has 200m of floating-rate debt at LIBOR—meaning that every year XYZ pays that year's current LIBOR—but would prefer to have fixed-rate debt with 3 years to maturity. There are several ways XYZ could effect this change.

First, XYZ could change their interest rate exposure by retiring the floating-rate debt and issuing fixed-rate debt in its place. However, an actual purchase and sale of debt has transaction costs.

Second, they could enter into a strip of forward rate agreements (FRAs) in order to guarantee the borrowing rate for the remaining life of the debt. Since the FRA for each year will typically carry a different interest rate, the company will lock in a different rate each year and, hence, the company's borrowing cost will vary over time, even though it will be fixed in advance.

A third alternative is to obtain interest rate exposure equivalent to that of fixed rate debt by entering into a swap. XYZ is already paying a floating interest rate. They therefore want to enter a swap in which they receive a floating rate and pay the fixed rate, which we will suppose is  $6.9548\%$ . This swap is illustrated in Figure 7. Notice the similarity to the oil swap.

In a year when the fixed  $6.9548\%$  swap rate exceeds 1-year LIBOR, XYZ pays  $6.9548\% - \mathrm{LIBOR}$  to the swap counterparty. Conversely, when the  $6.9548\%$  swap rate is less than LIBOR, the swap counterparty pays  $\mathrm{LIBOR} - 6.9548\%$  to XYZ. On net, XYZ pays  $6.9548\%$ . Algebraically, the net interest payment made by XYZ is

$$
\text{XYZ net payment} = \underbrace{-\text{LIBOR}}_{\text{Floating payment}} + \underbrace{\text{LIBOR} - 6.9548\%}_{\text{Swap payment}} = -6.9548\%
$$

# FIGURE 7

Illustration of cash flows for a company that borrows at LIBOR and swaps to fixed-rate exposure at  $6.9548\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/bf0efbf5e52cf82a8fe7e8ad6c6d659826618c38fd62a92cdf3d4ffc25724e43.jpg)

The notional principal of the swap is  $200\mathrm{m}$ : It is the amount on which the interest payments—and, hence, the net swap payment—is based. The life of the swap is the swap term or swap tenor.

There are timing conventions with a swap similar to those for a forward rate agreement. At the beginning of a year, the borrowing rate for that year is known. However, the interest payment on the loan is due at the end of the year. The interest rate determination date for the floating interest payment would therefore occur at the beginning of the period. As with an FRA we can think of the swap payment being made at the end of the period (when interest is due).

With the financially settled interest rate swap, only net swap payments—in this case the difference between LIBOR and  $6.9548\%$ —are actually made between XYZ and the counterparty. If one party defaults, they owe to the other party at most the present value of net swap payments they are obligated to make at current market prices. This means that a swap generally has less credit risk than a bond: Whereas principal is at risk with a bond, only net swap payments are at risk in a swap.

The swap in this example is a construct, making payments as if there were an exchange of payments between a fixed-rate and floating-rate bond. In practice, a fund manager might own fixed-rate bonds and wish to have floating-rate exposure while continuing to own the bonds. A swap in which a fund manager receives a floating rate in exchange for the payments on bonds the fund continues to hold is called an asset swap.

# Pricing and the Swap Counterparty

To understand the pricing of the swap, we will examine it from the perspective of both the counterparty and the firm. We first consider the perspective of the counterparty, who we assume is a market-maker.

The market-maker is a counterparty to the swap in order to earn fees, not to take on interest rate risk. Therefore, the market-maker will hedge the transaction. The market-maker receives the fixed rate from the company and pays the floating rate; the danger for the market-maker is that the floating rate will rise. The risk in this transaction can be hedged by entering into forward rate agreements. We express the time 0 implied forward rate between time  $t_i$  and  $t_j$  as  $r_0(t_i, t_j)$  and the realized 1-year rate as  $\widetilde{r}_{t_i}$ . The current 1-year rate,  $6\%$ , is known. With the swap rate denoted  $R$ , Table 2 depicts the risk-free (but time-varying) cash flows faced by the hedged market-maker.

Cash flows faced by a market-maker who receives fixed and pays floating and hedges the resulting exposure using forward rate agreements.

TABLE 2

<table><tr><td>Year</td><td>Payment on Forward</td><td>Net Swap Payment</td><td>Net</td></tr><tr><td>1</td><td>—</td><td>R - 6\%</td><td>R - 6\%</td></tr><tr><td>2</td><td> \widetilde{r}_{2} - 7.0024\% </td><td>R -  \widetilde{r}_{2} </td><td>R - 7.0024\%</td></tr><tr><td>3</td><td> \widetilde{r}_{3} - 8.0071\% </td><td>R -  \widetilde{r}_{3} </td><td>R - 8.0071\%</td></tr></table>

Cash flows faced by a floating-rate borrower who enters into a 3-year swap with a fixed rate of  $6.9548\%$ .

TABLE 3

<table><tr><td>Year</td><td>Floating-Rate Debt Payment</td><td>Net Swap Payment</td><td>Net</td></tr><tr><td>1</td><td>-6\%</td><td>6\% – 6.9548\%</td><td>-6.9548\%</td></tr><tr><td>2</td><td>-  \widetilde{r}_{2} </td><td> \widetilde{r}_{2} - 6.9548\% </td><td>-6.9548\%</td></tr><tr><td>3</td><td>-  \widetilde{r}_{3} </td><td> \widetilde{r}_{3} - 6.9548\% </td><td>-6.9548\%</td></tr></table>

How is  $R$  determined? Obviously a market-maker receiving the fixed rate would like to set a high swap rate, but the swap market is competitive. We expect  $R$  to be bid down by competing market-makers until the present value of the hedged cash flows is zero. In computing this present value, we need to use the appropriate rate for each cash flow: the 1-year rate for  $R - 6\%$ , the 2-year rate for  $R - 7.0024\%$ , and so forth. Using these rates, we compute

$$
\frac{R - 6\%}{1.06} +\frac{R - 7.0024\%}{1.065^{2}} +\frac{R - 8.0071\%}{1.07^{3}} = 0
$$

This formula gives us an  $R$  of  $6.9548\%$ , which is the same as the par coupon rate on a 3-year bond! In fact, our swap-rate calculation is a roundabout way to compute a par bond yield. On reflection, this result should be no surprise. Once the borrower has entered into the swap, the net effect is exactly like borrowing at a fixed rate. Thus the fixed swap rate should be the rate on a coupon bond.

Notice that the unhedged net cash flows in Table 2 (the "net swap payment" column) can be replicated by borrowing at a floating rate and lending at a fixed rate. In other words, an interest rate swap is equivalent to borrowing at a floating rate to buy a fixed-rate bond.

The borrower's calculations are just the opposite of the market-maker's. The borrower continues to pay the floating rate on its floating-rate debt, and receives floating and pays fixed in the swap. Table 3 details the cash flows.

Since the swap rate is the same as the par 3-year coupon rate, the borrower is indifferent between the swap and a coupon bond, ignoring transaction costs. Keep in mind that the borrower could also have used forward rate agreements, locking in an escalating interest rate over time:  $6\%$  the first year,  $7.0024\%$  the second, and  $8.0071\%$  the third. By using interest rate forwards the borrower would have eliminated uncertainty about future borrowing rates and created an uneven but certain stream of interest payments over time. The swap provides a way to both guarantee the borrowing rate and lock in a constant rate in a single transaction.

# Swap Rate and Bond Calculations

The interest rate swap calculation we just illustrated is an application of equation (3), with the implied forward interest rate used as the forward price. There is, however, an equivalent way to express the swap rate that is helpful in the case of an interest rate swap.

The implied forward rate between times  $t_1$  and  $t_2$ ,  $r_0(t_1, t_2)$ , is given by the ratio of zero-coupon bond prices, i.e.,

$$ r _ {0} (t _ {1}, t _ {2}) = P (0, t _ {1}) / P (0, t _ {2}) - 1
$$

Therefore equation (4) can be rewritten

$$
\sum_ {i = 1} ^ {n} P \left(0, t _ {i}\right) [ R - r \left(t _ {i - 1}, t _ {i}\right) ] = \sum_ {i = 1} ^ {n} P \left(0, t _ {i}\right) \left[ R - \frac {P \left(0 , t _ {i - 1}\right)}{P \left(0 , t _ {i}\right)} + 1 \right]
$$

Setting this equation equal to zero and solving for  $R$  gives us

$$
R = \frac {1 - P _ {0} \left(0 , t _ {n}\right)}{\sum_ {i = 1} ^ {n} P _ {0} \left(0 , t _ {i}\right)} \tag {7}
$$

You may recognize this as the formula for the coupon on a par coupon bond. This in turn can be rewritten as

$$
R \sum_ {i = 1} ^ {n} P (0, t _ {i}) + P (0, t _ {n}) = 1
$$

This is the valuation equation for a bond priced at par with a coupon rate of  $R$ .

The conclusion is that the swap rate is the coupon rate on a par coupon bond. This result is intuitive since a firm that swaps from floating-rate to fixed-rate exposure ends up with the economic equivalent of a fixed-rate bond.

The correspondence between swap and bond calculations also extends to the change in value of the swap when interest rates change. An interest rate increase reduces the present value of the fixed payments. (The fixed-rate receiver is in the position of a bond owner and suffers a loss in value.) It is common to use the DV01 (PVBP) calculation to describe the price sensitivity of a swap.

Example 1. Consider again the swap described in Table 3. Suppose that the notional value is \$100 million. The Macaulay duration of a  $6.95485\%$  par bond is 2.80915 years. By rearranging

Macaulay duration  $= -\frac{\text{Change in bond price}}{\text{Unit change in yield}} \times \frac{1 + y / m}{B(y)}$

$$
= \frac {1}{B (y)} \left[ \sum_ {i = 1} ^ {n} \frac {i}{m} \frac {C / m}{(1 + y / m) ^ {i}} + \frac {n}{m} \frac {M}{(1 + y / m) ^ {n}} \right],
$$

DV01 (the change in bond price for a 1-basis-point change in yield) would therefore be

$$
\begin{array}{l} \mathrm {D V 0 1} = \text {D u r a t i o n} \times 0. 0 0 0 1 \times 1 0 0, 0 0 0, 0 0 0 \\ = 2. 8 0 9 1 5 \times 0. 0 0 0 1 \times \$ 1 0 0, 0 0 0, 0 0 0 = \$ 2 8, 0 9 1. 5 0 \\ \end{array}
$$

# The Swap Curve

The Eurodollar futures contract provides a set of 3-month forward LIBOR rates extending out 10 years. It is possible to use this set of forward interest rates to compute the interest rate swap curve. Zero-coupon bond prices can be constructed from implied forward rates.

There is an over-the-counter market in interest rate swaps, which is widely quoted. The swap curve should be consistent with the interest rate curve implied by the Eurodollar futures contract, which is used to hedge swaps.[2]

We now use equation (3) to construct the interest rate swap curve using Eurodollar prices. To compute swap rates we need forward interest rates, which we obtain from the Eurodollar futures prices, and we need zero coupon bond prices, which we build from the forward interest rates.

Column 2 of Table 4 lists near-term Eurodollar futures prices from June 2010. The third column shows the implied 91-day interest rate for a loan terminating in the month in that row. For example, the June Eurodollar futures price was 99.432. The implied quarterly (nonannualized) interest rate for June to September was

$$
(100 - 99.432) \frac{91}{90} \frac{1}{400} = 0.14358 \%
$$

The implied June price for a 1 cash flow in September was therefore

$$
\frac {1}{1 + 0 . 0 0 1 4 3 5 8} = 0. 9 9 8 5 6 6
$$

The implied June price for a 1 cash flow in December is obtained by first finding the forward interest rate from September to December:

$$
(100 - 99.200) \frac{91}{90} \frac{1}{400} = 0.20222 \%
$$

The price of a zero-coupon bond paying 1 in December is then

$$
0. 9 9 8 5 6 6 \times \frac {1}{1 + 0 . 0 0 2 0 2 2 2} = 0. 9 9 6 5 5
$$

Eurodollar futures prices and implied interest rate swap rates, June 2, 2010. The second column is the Eurodollar futures price for the eurodollar contract maturing in the month in the first column. The third column is the implied quarterly interest rate for a 3-month loan maturing in that month. The fourth column is the implied June price for a zero coupon bond paying 1 in that month, and the final column is the annualized swap rate for a swap maturing in that month.

TABLE 4

<table><tr><td>Maturity</td><td>Eurodollar Futures</td><td>Implied Rate</td><td>Zero Price</td><td>Swap Rate</td></tr><tr><td>Jun</td><td>99.432</td><td></td><td></td><td></td></tr><tr><td>Sep</td><td>99.200</td><td>0.00144</td><td>0.99857</td><td>0.57431</td></tr><tr><td>Dec</td><td>99.035</td><td>0.00202</td><td>0.99655</td><td>0.69148</td></tr><tr><td>Mar</td><td>98.875</td><td>0.00244</td><td>0.99413</td><td>0.78601</td></tr><tr><td>Jun</td><td>98.665</td><td>0.00284</td><td>0.99131</td><td>0.87354</td></tr></table>

We can then use equation (3) to determine the swap rate. For the June to December swap rate, for example, we have

$$
\frac {0 . 9 9 8 5 6 6 \times 0 . 0 0 1 4 3 5 8 + 0 . 9 9 6 5 5 \times 0 . 0 0 2 0 2 2 2}{0 . 9 9 8 5 6 6 + 0 . 9 9 6 5 5} = 0. 1 7 2 8 7
$$

We multiply this rate by 4 to annualize it, giving the entry  $0.69148\%$  in Table 4.

In Figure 8 we graph the entire swap curve against quarterly forward rates implied by the Eurodollar curve. Figure 8 also displays yields on government bonds. The swap spread is the difference between swap rates and Treasury-bond yields for comparable maturities. As you would expect, it is positive in Figure 8.

# The Swap's Implicit Loan Balance

An interest rate swap behaves much like the oil swap in Section 1. At inception, the swap has zero value to both parties. If interest rates change, the present value of the fixed payments and, hence, the swap rate will change. The market value of the swap is the difference in the present value of payments between the old swap rate and the new swap rate. For example, consider the 3-year swap in Table 3. If interest rates rise after the swap is entered into, the value of the existing  $6.9548\%$  swap will fall for the party receiving the fixed payment.

Even in the absence of interest rate changes, however, the swap in Table 3 changes value over time. Once the first swap payment is made, the swap acquires negative value for

# FIGURE 8

Forward 3-month interest rate curve implied by the Eurodollar strip, swap rates, and constant maturity Treasury yields for June 2, 2010.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/2e5b0d13a766e5b39eb785687d83e9f4292a441dfb35523eae06eb1b8114aaf7.jpg) the market-maker (relative to the use of forwards) because in the second year the market-maker will make a net cash payment. Similarly, the swap will have positive value for the borrower (again relative to the use of forwards) after the first payment is made. In order to smooth payments, the borrower pays "too much" (relative to the forward curve) in the first year and receives a refund in the second year. The swap is equivalent to entering into forward contracts and undertaking some additional borrowing and lending.

The 9.5-year swap rate in Figure 8 is  $3.547\%$ . We can use this value to illustrate the implicit borrowing and lending in the swap. Consider an investor who pays fixed and receives floating. This investor is paying a high rate in the early years of the swap, and, hence, is lending money. About halfway through the life of the swap, the Eurodollar forward rate exceeds the swap rate and the loan balance declines, falling to zero by the end of the swap. The fixed rate recipient has a positive loan balance over the life of the swap because the Eurodollar futures rate is below the swap initially—so the fixed-rate recipient is receiving payments—and crosses the swap price once. The credit risk in this swap is therefore borne, at least initially, by the fixed-rate payer, who is lending to the fixed-rate recipient. The implicit loan balance in the swap is illustrated in Figure 9.

# Deferred Swaps

We can construct a swap that begins at some date in the future, but for which the swap rate is agreed upon today. This type of swap is called a deferred swap. To demonstrate this type of swap, we can compute the value of a 2-period swap that begins 1 year from today. The reasoning is exactly as before: The swap rate will be set by the market-maker so that the present value of the fixed and floating payments is the same. This gives us

$$
\frac {R - 0 . 0 7 0 0 2 4}{1 . 0 6 5 ^ {2}} + \frac {R - 0 . 0 8 0 0 7 1}{1 . 0 7 ^ {3}} = 0
$$

# FIGURE 9

Eurodollar strip and the 9.5-year swap rate  $(3.547\%)$  are plotted in the top panel, and implicit lending from being a fixed-rate recipient in the bottom panel. Swap payment dates are on the horizontal axis.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/3f9fb6f975ec784c52f7c659a9d23c058b4169ec084c8550975a0aafb96b805d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/05a726fd198cd11813ac9543b5b2039977929fac02d002b4f9627851a1de69bb.jpg)

Solving for  $R$ , the deferred swap rate is  $7.4854\%$ . Using equation (3), with  $F_{0,t_i} = r_0(t_{i-1}, t_i)$ , the fixed rate on a deferred swap beginning in  $k$  periods (instead of 1 period) is computed as

$$
R = \frac {\sum_ {i = k} ^ {n} P _ {0} \left(0 , t _ {i}\right) r _ {0} \left(t _ {i - 1} , t _ {i}\right)}{\sum_ {i = k} ^ {n} P \left(0 , t _ {i}\right)} \tag {8}
$$

This can also be written as

$$
R = \frac {P \left(0 , t _ {k - 1}\right) - P \left(0 , t _ {n}\right)}{\sum_ {i = k} ^ {n} P \left(0 , t _ {i}\right)} \tag {9}
$$

Equation (8) is equal to equation (3) when  $k = 1$ .

# Related Swaps

We have so far described plain vanilla interest rate swaps in this section. Two related swaps are overnight indexed swaps (Is) and inflation swaps.

Overnight lending is common in financial markets. One of the most important overnight markets in the U.S. is the fed funds market, in which banks lend to one another. The interest rate in this market is called the fed funds rate. An overnight index swap makes payments based on this rate. Rather than settle the swap each day, the swap is settled quarterly based on the geometric average of the overnight rates. The fixed rate on the swap therefore is effectively the forward price for 3 months' worth of overnight borrowing in the fed funds market.

During the financial crisis, the spread between LIBOR and Is was an important indicator of stress in the interbank lending market. Taylor and Williams (2009) document that the LIBOR-OIS spread was approximately 10 basis points during early 2007, but spiked to almost 100 basis points in August 2007, at the onset of the crisis. The spread exceeded 400 basis points during the fall of 2008.

Inflation swaps are also of interest in fixed income markets. The vast majority of bonds are nominal bonds: they make dollar payments that do not depend on the inflation rate. (Treasury inflation-protected securities (TIPS) are a notable exception.) Lenders holding a nominal bond are harmed when the inflation rate increases and borrowers issuing a nominal bond are harmed when the inflation rate decreases. The payment on an inflation swap depends upon whether the realized inflation rate is greater or less than the fixed rate specified in the swap. Therefore, an inflation swap permits borrowers and lenders to hedge their exposure to inflation. Of course, it also permits speculation on the inflation rate.

# Why Swap Interest Rates?

Managers sometimes say that they would like to borrow short-term because short-term interest rates are on average lower than long-term interest rates. Leaving aside the question of whether this view makes sense theoretically, let's take for granted the desire to borrow at short-term interest rates. The problem facing the manager is that the firm may be unable to borrow significant amounts by issuing short-term debt.

When a firm borrows by issuing long-term debt, bondholders bear both interest rate risk and the credit risk of the firm. If the firm borrows short-term (for example, by issuing commercial paper), lenders primarily bear credit risk.

In practice, short-term lenders appear unwilling to absorb large issues from a single borrower because of credit risk. For example, money-market mutual funds that hold commercial paper will not hold large amounts of any one firm's commercial paper, preferring instead to diversify across firms. This diversification minimizes the chance that a single bankruptcy will significantly reduce the fund's rate of return.

Because short-term lenders are sensitive in this way to credit risk, a firm cannot borrow a large amount of money short-term without lenders demanding a higher interest rate. By contrast, long-term lenders to corporations—for example, pension funds and insurance companies—willingly assume both interest rate and credit risk. Thus there are borrowers who wish to issue short-term debt and lenders who are unwilling to buy it. Swaps provide a way around this problem, permitting the firm to separate credit risk and interest rate risk.

Suppose, for example, that a firm borrows long-term and then swaps into short-rate exposure. The firm receives the fixed rate, pays the fixed rate to bondholders, and pays the floating rate on the swap. The net payment is the short-term rate, which is the rate the firm wanted to pay.

Credit risk does not vanish; it is still mostly held by the long-term bondholders. The swap counterparty faces credit risk since the firm could go bankrupt when the value of the swap is positive to the counterparty (this would occur if interest rates had risen). The notional principal of the loan is not at risk for the swap counterparty, however, so the credit risk in the swap is less than for a short-term loan. Thus, by swapping its interest rate exposure, the firm pays the short-term interest rate, but the long-term bondholders continue to bear most of the credit risk.

If it seems odd to you that the firm can use a swap to convert a high fixed rate into a low floating rate, recognize that any time there is an upward-sloping yield curve, the short-term interest rate is below the long-term interest rate. If you reduce the period for which your borrowing rate is fixed (which happens when you swap fixed for floating), you borrow at the lower short-term interest rate instead of the higher long-term interest rate.

Swaps thus permit separation of two aspects of borrowing: credit risk and interest rate risk. To the extent these risks are acquired by those most willing to hold them, swaps increase efficiency.

# Amortizing and Accreting Swaps

We have assumed that the notional value of the swap remains fixed over the life of the swap. However, it is also possible to engage in a swap where the notional value is changing over time. For example, consider a floating-rate mortgage, for which every payment contains an interest and principal component. Since the outstanding principal is declining over time, a swap involving a mortgage would need to account for this. Such a swap is called an amortizing swap because the notional value is declining over time. It is also possible for the principal in a swap to grow over time. This is called an accreting swap.

Let  $Q_{t}$  be the relative notional amount at time  $t$ . Then the basic idea in pricing a swap with a time-varying notional amount is the same as with a fixed notional amount—the present value of the fixed payments should equal the present value of the floating payments:

$$
\sum_ {i = 1} ^ {n} Q _ {t _ {i}} P \left(0, t _ {i}\right) [ R - r \left(t _ {i - 1}, t _ {i}\right) ] = 0 \tag {10}
$$ where, as before, there are  $n$  payments on dates  $t_1, t_2, \ldots, t_n$ . Equation (10) can be rewritten as


$$

R = \frac {\sum_ {i = 1} ^ {n} Q _ {t _ {i}} P \left(0 , t _ {i}\right) r \left(t _ {i - 1} , t _ {i}\right)}{\sum_ {i = 1} ^ {n} Q _ {t _ {i}} P \left(0 , t _ {i}\right)} \tag {11}

$$

The fixed swap rate is still a weighted average of implied forward rates, only now the weights also involve changing notional principal.

Many other structures are possible for swaps based on interest rates or other prices. One infamous swap structure is described in Box 2, which recounts the 1993 swap between Procter & Gamble and Bankers Trust.

# 4. CURRENCY SWAPS

Firms sometimes issue debt denominated in a foreign currency. A firm may do this as a hedge against revenues received in that currency, or because perceived borrowing costs in that currency are lower. Whatever the reason, if the firm later wants to change the currency to which they have exposure, there are a variety of ways to do so. The firm can use forward contracts to hedge exchange rate risk, or it can use a currency swap, in which payments are based on the difference in debt payments denominated in different currencies.

To understand these alternatives, let's consider the example of a dollar-based firm that has euro-denominated 3-year fixed-rate debt. The annual coupon rate is  $\rho$ . The firm is

# BOX 2: The Procter & Gamble Swap

In November 1993, consumer products company Procter & Gamble (P&G) entered into a 5-year  $200\mathrm{m}$  notional value swap with Bankers Trust. The contract called for P&G to receive a  $5.3\%$  fixed rate from Bankers Trust and pay the 30-day commercial paper rate less 75 basis points, plus a spread. Settlements were to be semiannual. The spread would be zero for the first settlement, and thereafter be fixed at the spread as of May 4, 1994.

The spread was determined by the difference between the 5-year constant maturity treasury (CMT) rate (the yield on a 5-year Treasury bond, but a constructed rate since there is not always a Treasury bond with exactly 5 years to expiration) and the price per 100 of maturity value of the 6.25\% 30-year Treasury bond. The formula for the spread was

Spread  $=$  max

$$

\left(\frac {\frac {5 - \text {year CMT} \%}{0.0578} \times 98.5 - \text {price of 30 - year bond}}{100}, 0\right)

$$

At inception in November 1993, the 5-year CMT rate was  $5.02\%$  and the 30-year Treasury price was 102.57811. The expression in the max function evaluated to  $-0.17 (-17\%)$ , so the spread was zero.

If the spread were zero on May 4, 1994, P&G would save 75 basis points per year on  \$200m for 4.5 years, an interest rate reduction worth approximately\$ 7m. However, notice something important: If interest rates rise before the spread determination date, then the 5-year CMT goes up and the price of the 30-year bond goes down. Thus, the swap is really a bet on the direction of interest rates, not the difference in rates!

The swap is recounted in Smith (1997) and Srivastava (1998). Interest rates rose after P&G entered the swap. P&G and Bankers Trust renegotiated the swap in January 1994, and P&G liquidated the swap in March, with a loss of about 100m. P&G sued Bankers Trust, complaining in part that the risks of the swap had not been adequately disclosed by Bankers Trust.

In the end, P&G and Bankers Trust settled, with P&G paying Bankers Trust about  $35\mathrm{m}$ . (Forster (1996) and Horwitz (1996) debate the implications of the trial and settlement.) The notion that Procter & Gamble might have been uninformed about the risk of the swap, and if so, whether this should have mattered, was controversial. U.S. securities laws are often said to protect "widows and orphans." Nobel Prize-winning economist Merton Miller wryly said of the case, "Procter is the widow and Gamble is the orphan."

obligated to make a series of payments that are fixed in euro terms but variable in dollar terms.

Since the payments are known, eliminating euro exposure is a straightforward hedging problem using currency forwards. We have cash flows of  $-\rho$  each year, and  $-(1 + \rho)$  in the maturity year. If currency forward prices are  $F_{0,t}$ , we can enter into long euro forward contracts to acquire at a known exchange rate the euros we need to pay to the lenders. Hedged cash flows in year  $t$  are  $-\rho F_{0,t}$ .

As we have seen in other examples, the forward transactions eliminate risk but leave the firm with a variable (but riskless) stream of cash flows. The variability of hedged cash flows is illustrated in the following example.

TABLE 5
Unhedged and hedged cash flows for a dollar-based firm with euro-denominated debt.

<table><tr><td>Year</td><td>UnhedgedEuro Cash Flow</td><td>ForwardExchange Rate</td><td>HedgedDollar Cash Flow</td></tr><tr><td>1</td><td>-€3.5</td><td>0.922</td><td>-3.226</td></tr><tr><td>2</td><td>-€3.5</td><td>0.944</td><td>-3.304</td></tr><tr><td>3</td><td>-€103.5</td><td>0.967</td><td>-100.064</td></tr></table>

Example 2. Suppose the effective annual euro-denominated interest rate is  $3.5\%$  and the dollar-denominated rate is  $6\%$ . The spot exchange rate is  $\$0.90/\epsilon$ . A dollar-based firm has a 3-year  $3.5\%$  euro-denominated bond with a  $\epsilon 100$  par value and price of  $\epsilon 100$ . The firm wishes to guarantee the dollar value of the payments. Since the firm will make debt payments in euros, it buys the euro forward to eliminate currency exposure. Table 5 summarizes the transaction and reports the currency forward curve and the unhedged and hedged cash flows. The value of the hedged cash flows is

$$

\frac {\mathbb {S} 3 . 2 2 6}{1 . 0 6} + \frac {\mathbb {S} 3 . 3 0 4}{1 . 0 6 ^ {2}} + \frac {\mathbb {S} 1 0 0 . 0 6 4}{1 . 0 6 ^ {3}} = \mathbb {S} 9 0

$$

Example 2 verifies what we knew had to be true: Hedging does not change the value of the debt. The initial value of the debt in euros is €100. Since the exchange rate is \$0.90/€, the debt should have a dollar value of \$90, which it has.

As an alternative to hedging each euro-denominated payment with a forward contract, a firm wishing to change its currency exposure can enter into a currency swap, which entails making debt payments in one currency and receiving debt payments in a different currency. There is typically an exchange of principal at both the start and end of the swap. Compared with hedging the cash flows individually, the currency swap generates a different cash flow stream, but with equivalent value. We can examine a currency swap by supposing that the firm in Example 2 uses a swap rather than forward contracts to hedge its euro exposure.

Example 3. Make the same assumptions as in Example 2. The dollar-based firm enters into a swap where it pays dollars (6\% on a 90 bond) and receives euros (3.5\% on a €100 bond). The firm's euro exposure is eliminated. The market-maker receives dollars and pays euros. The position of the market-maker is summarized in Table 6. The present value of the market-maker's net cash flow is

$$

\frac {\mathbb {S} 2 . 1 7 4}{1 . 0 6} + \frac {\mathbb {S} 2 . 0 9 6}{1 . 0 6 ^ {2}} - \frac {\mathbb {S} 4 . 6 6 4}{1 . 0 6 ^ {3}} = 0

$$

The market-maker's net exposure in this transaction is long a dollar-denominated bond and short a euro-denominated bond. Table 6 shows that after hedging there is a series of net cash flows with zero present value. As in all the previous examples, the effect of the swap is equivalent to entering into forward contracts, coupled with borrowing or lending. In this case, the firm is lending to the market-maker in the first 2 years, with the implicit loan repaid at maturity.

Unhedged and hedged cash flows for a dollar-based firm with euro-denominated debt. The effective annual dollar-denominated interest rate is  $6\%$  and the effective annual euro-denominated interest rate is  $3.5\%$ .

TABLE 6

<table><tr><td>Year</td><td>Forward Exchange Rate ($/€)</td><td>Receive Dollar Interest</td><td>Pay Hedged Euro Interest</td><td>Net Cash Flow</td></tr><tr><td>1</td><td>0.9217</td><td>$5.40</td><td>-€3.5 × 0.9217</td><td>$2.174</td></tr><tr><td>2</td><td>0.9440</td><td>$5.40</td><td>-€3.5 × 0.9440</td><td>$2.096</td></tr><tr><td>3</td><td>0.9668</td><td>\$95.40</td><td>-€103.5 × 0.9668</td><td>-4.664</td></tr></table>

The fact that a currency swap is equivalent to borrowing in one currency and lending in the other is familiar from the concept of currency forwards.

# Currency Swap Formulas

Currency swap calculations are the same as those for the other swaps we have discussed. To see this, consider a swap in which a dollar annuity,  $R$ , is exchanged for an annuity in another currency,  $R^{*}$ . Given the foreign annuity,  $R^{*}$ , what is  $R$ ?

We start with the observation that the present value of the two annuities must be the same. There are  $n$  payments and the time-0 forward price for a unit of foreign currency delivered at time  $t_i$  is  $F_{0,t_i}$ . This gives

$$

\sum_ {i = 1} ^ {n} \left[ R P _ {0, t _ {i}} - R ^ {*} F _ {0, t _ {i}} P _ {0, t _ {i}} \right] = 0

$$

In calculating the present value of the payment  $R^{*}$ , we first convert to dollars by multiplying by  $F_{0,t_i}$ . We can then compute the present value using the dollar-denominated zero-coupon bond price,  $P_{0,t_i}$ . Solving for  $R$  gives

$$

R = \frac {\sum_ {i = 1} ^ {n} P _ {0 , t _ {i}} R ^ {*} F _ {0 , t _ {i}}}{\sum_ {i = 1} ^ {n} P _ {0 , t _ {i}}} \tag {12}

$$

This expression is exactly like equation (3), with the implied forward rate,  $r_0(t_{i-1}, t_i)$ , replaced by the foreign-currency-denominated annuity payment translated into dollars,  $R^* F_{0,t_i}$ .

When coupon bonds are swapped, we have to account for the difference in maturity value as well as the coupon payment, which is an annuity. If the dollar bond has a par value of \$1, the foreign bond will have a par value of  $\frac{1}{x_0}$ , where  $x_0$  is the current exchange rate expressed as dollars per unit of the foreign currency. If  $R^*$  is the coupon rate on the foreign bond and  $R$  is the coupon rate on the dollar bond, the present value of the difference in payments on the two bonds is

$$

\sum_ {i = 1} ^ {n} \left[ R P _ {0, t _ {i}} - R ^ {*} F _ {0, t _ {i}} P _ {0, t _ {i}} / x _ {0} \right] + P _ {0, t _ {n}} (1 - F _ {0, t _ {n}} / x _ {0}) = 0

$$

The division by  $x_0$  accounts for the fact that a \$1 bond is equivalent to  $1 / x_0$  bonds with a par value of 1 unit of the foreign currency. The dollar coupon in this case is

$$

R = \frac {\sum_ {i = 1} ^ {n} P _ {0 , t _ {i}} R ^ {*} F _ {0 , t _ {i}} / x _ {0} + P _ {0 , t _ {n}} \left(F _ {0 , t _ {n}} / x _ {0} - 1\right)}{\sum_ {i = 1} ^ {n} P _ {0 , t _ {i}}} \tag {13}

$$

The fixed payment,  $R$ , is the dollar equivalent of the foreign coupon plus the amortized value of the difference in the maturity payments of the two bonds. Problem 16 asks you to verify that equation (13) gives  $6\%$  using the assumptions in Tables 5 and 6.

# Other Currency Swaps

There are other kinds of currency swaps. The preceding examples assumed that all borrowing was fixed rate. Suppose the dollar-based borrower issues a euro-denominated loan with a floating interest rate. In this case there are two future unknowns: the exchange rate at which interest payments are converted, and—because the bond is floating rate—the amount of the interest payment. Swapping this loan to a dollar loan is still straightforward, however; we just require one extra hedging transaction.

We first convert the floating interest rate into a fixed interest rate with a euro interest rate swap. The resulting fixed-rate euro-denominated exposure can then be hedged with currency forwards and converted into dollar interest rate exposure. Given the assumptions in Table 6, the euro-denominated loan would swap to a  $3.5\%$  floating-rate loan. From that point on, we are in the same position as in the previous example.

In general, we can swap fixed-to-fixed, fixed-to-floating, floating-to-fixed, and floating-to-floating. The analysis is similar in all cases.

One kind of swap that might on its face seem similar is a diff swap, short for differential swap. In this kind of swap, payments are made based on the difference in floating interest rates in two different currencies, with the notional amount in a single currency. For example, we might have a swap with a  \$10m notional amount, but the swap would pay in dollars, based on the difference in a euro-denominated interest rate and a dollar-denominated interest rate. If the short-term euro interest rate rises from 3.5\%$  to  $3.8\%$  with the dollar rate unchanged, the annual swap payment would be 30 basis points on 10m, or 30,000. This is like a standard interest rate swap, only for a diff swap, the reference interest rates are denominated in different currencies.

Standard currency forward contracts cannot be used to hedge a diff swap. The problem is that we can hedge the change in the foreign interest rate, but doing so requires a transaction denominated in the foreign currency. We can't easily hedge the exchange rate at which the value of the interest rate change is converted because we don't know in advance how much currency will need to be converted. In effect there is quantity uncertainty regarding the foreign currency to be converted. The diff swap is an example of a quanto swap.

# 5. SWAPTIONS

An option to enter into a swap is called a swaption. We can see how a swaption works by returning to the two-date oil swap example in Section 1. The 2-year oil swap price was  \$110.483. Suppose we are willing to buy oil at\$ 110.483/barrel, but we would like to speculate on the swap price being even lower over the next 3 months.

Consider the following contract: If in 3 months the fixed price for a swap commencing in 9 months (1 year from today) is  \$110.483 or above, we enter into the swap, agreeing to pay\$ 110.483 and receive the floating price for 2 years. If, on the other hand, the market swap price is below \$110.483, we have no obligation. If the swap price in 3 months is \$108, for example, we could enter into a swap at that time at the 108 price, or we could elect not to enter any swap.

With this contract we are entering into the swap with  \$110.483 as the swap price only when the market swap price is greater; hence, this contract will have a premium. In this example, we would have purchased a payer swaption, since we have the right, but not the obligation, to pay a fixed price of\$ 110.483 for 2 years of oil. The counterparty has sold this swaption.

When exercised, the swaption commits us to transact at multiple times in the future. It is possible to exercise the option and then offset the swap with another swap, converting the stream of swap payments into a certain stream with a fixed present value. Thus, the swaption is analogous to an ordinary option, with the present value of the swap obligations (the price of the prepaid swap) as the underlying asset.

The strike price in this example is  \$110.483, so we have an at-the-money swaption. We could make the strike price different from\$ 110.483. For example, we could reduce the swaption premium by setting the strike above 110.483.

Swaptions can be American or European, and the terms of the underlying swap—fixed price, floating index, settlement frequency, and tenor—will be precisely specified.

Example 4. Suppose we enter into a European payer oil swaption with a strike price of \$21. The underlying swap commences in 1 year and has two annual settlements. After 3 months, the fixed price on the underlying swap is \$21.50. We exercise the option, obligating us to pay \$21/barrel for 2 years. If we wish to offset the swap, we can enter into a swap to receive the \$21.50 fixed price. In year 1 and year 2 we will then receive \$21.50 and pay \$21, for a certain net cash flow each year of 0.50. The floating payments cancel.

A receiver swaption gives you the right to pay the floating price and receive the fixed strike price. Thus, the holder of a receiver swaption would exercise when the fixed swap price is below the strike.

Although we have used a commodity swaption in this example, an interest rate or currency swaption would be analogous, with payer and receiver swaptions giving the right to pay or receive the fixed interest rate.

# 6. TOTAL RETURN SWAPS

A total return swap is a swap in which one party pays the realized total return (dividends plus capital gains) on a reference asset, and the other party pays a floating return such as LIBOR. The two parties exchange only the difference between these rates. The party paying the return on the reference asset is the total return payer.

As with other swaps, there are multiple settlement dates over the life of the swap. The cumulative effect for the total return payer is of being short the reference asset and long an asset paying the floating rate. The cash flows on a total return swap are illustrated in Figure 10.

# FIGURE 10

Cash flows for a total return swap. The total return payer pays the per-period total return on the reference asset, receiving the floating rate from the counterparty.

Total Return Payer

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/25878ecd28de4d465828c1e1035893786b69d9b5fa642b150dd0c0df08438cf1.jpg)

Floating Rate Payer

Illustration of cash flows on a total return swap with annual settlement for 3 years.

TABLE 7

<table><tr><td>Year</td><td>S&amp;P Capital Gain</td><td>S&amp;P Dividend</td><td>Floating Rate</td><td>Net Payment to Total Return Payer</td></tr><tr><td>1</td><td>5\%</td><td>1.5\%</td><td>7.2\%</td><td>0.7\%</td></tr><tr><td>2</td><td>-12\%</td><td>1.5\%</td><td>7.5\%</td><td>18.0\%</td></tr><tr><td>3</td><td>22\%</td><td>1.5\%</td><td>7.0\%</td><td>-16.5\%</td></tr></table>

Example 5. ABC Asset Management has a \$2 billion investment in the S&P stock index. However, fund managers have become pessimistic about the market and would like to reduce their exposure to stocks from \$2 billion to \$1 billion. One way to do this is to sell \$1 billion of stocks. However, the fund can retain the stock position but financially transfer the return of the stocks by engaging in a total return swap, obligating the fund to pay the total return (dividends plus capital gains) on the swapped stocks, while receiving a floating-rate return such as LIBOR on the swapped 1 billion notional amount. This avoids the transaction costs of a sale of physical stock.

Table 7 illustrates the payments on such a swap. In year 1, ABC earns  $6.5\%$  on the S&P index. However, on the portion it has swapped, it must pay the  $6.5\%$  in exchange for the  $7.2\%$  floating rate. The net payment of  $0.7\%$  leaves ABC as well off as if it had sold the index and invested in an asset paying the floating rate. In year 2, ABC receives  $18\%$ , compensating it for the difference between the  $7.5\%$  floating return and the  $10.5\%$  loss on the S&P index. Finally, in year 3 the S&P index does well, and ABC pays  $16.5\%$  to the counterparty.

You might wonder about the economics of a swap like this. The stock index on average earns a higher return than LIBOR. So if the fund swaps the stock index in exchange for LIBOR, it will on average make payments to the counterparty.

This observation is correct, but notice that the fund is paying the difference between the index return and a short-term interest rate—this difference is the risk premium on the index.

The average loss associated with swapping a stock index for LIBOR is the same as the average loss associated with selling the stock and buying a floating-rate note paying LIBOR. It is just that the swap makes the loss obvious since it requires a payment.

Some investors have used total return swaps to avoid taxes on foreign stocks. In many cases, countries impose withholding taxes on foreign investors, meaning that if a firm in country A pays a dividend, for example, country A withholds a fraction of that dividend from investors based in country B. A total return swap enables a country-B investor to own country-A stocks without physically holding them, and thus in many cases without having to pay withholding taxes. For example, a U.S. investor could first swap out of a U.S. stock index and then swap into a European stock index, effectively becoming the counterparty for a European investor wanting to swap out of European stock exposure. Because net swap payments are not always recognized by withholding rules, this transaction can be more tax-efficient than holding the foreign stocks directly.

Another use of total return swaps is the management of credit risk. A fund manager holding corporate debt can swap the return on a particular bond for a floating-rate return. If the company that issued the bond goes bankrupt, the debt holder receives a payment on the swap compensating for the fact that the bond is worth a fraction of its face value.

If you think about this use of total return swaps, it is a crude tool for managing credit risk specifically. The problem is that bond prices also change due to interest rate changes. A corporate bond holder might wish to retain interest rate risk but not bankruptcy risk. Thus, there are products called default swaps. These are essentially default options, in which the buyer pays a premium, usually amortized over a series of payments. If the reference asset experiences a "credit event" (for example, a failure to make a scheduled payment on a particular bond or class of bonds), then the seller makes a payment to the buyer. Frequently these contracts split the return on the bond into the portion due to interest rate changes (with Treasury securities used as a reference) and the portion due to credit quality changes, with the swap making payments based only on the latter.

# CHAPTER SUMMARY

A swap is a contract calling for an exchange of payments, on one or more dates, determined by the difference in two prices. A single-payment swap is the same thing as a cash-settled forward contract. In the simplest swaps, a fixed payment is periodically exchanged for a floating payment. A firm can use a swap to lock in a long-term commodity price, a fixed interest rate, or a fixed exchange rate. Considering only the present value of cash flows, the same result is obtained using a strip of forward contracts and swaps. The difference is that hedging with a strip of forward contracts results in net payments that are time-varying. In contrast, hedging with a swap results in net payments that are constant over time. The value of a swap is zero at inception, though as swap payments are made over time, the value of the swap can change in a predictable way.

The fixed price in a swap is a weighted average of the corresponding forward prices. The swap formulas in different cases all take the same general form. Let  $f_{0}(t_{i})$  denote the forward price for the floating payment in the swap. Then the fixed swap payment is

$$

R = \frac {\sum_ {i = 1} ^ {n} P \left(0 , t _ {i}\right) f _ {0} \left(t _ {i}\right)}{\sum_ {i = 1} ^ {n} P \left(0 , t _ {i}\right)} \tag {14}

$$

TABLE 8

Equivalent forms of the swap-rate calculation. For the currency swap,  $F_{0,t_i}$  is the forward price for the foreign currency and  $R^*$  is an annuity in the foreign currency. For the commodity swap,  $F_{0,t_i}$  is the forward price for the commodity.

# To Obtain Formula for

Interest rate swap

Currency swap (annuity)

Commodity swap

# Substitute in Equation (14)

$f_{0}(t_{i}) = r_{0}(t_{i - 1},t_{i})$

$f_{0}(t_{i}) = R^{*}F_{0,t_{i}}$

$f_{0}(t_{i}) = F_{0,i_{i}}$

Table 8 summarizes the substitutions to make in equation (14) to get the various swap formulas shown in the chapter. This formula can be generalized to permit time variation in the notional amount and the swap price, and the swap can start on a deferred basis.

An important characteristic of swaps is that they require only the exchange of net payments, and not the payment of principal. So if a firm enters an interest rate swap, for example, it is required only to make payments based on the difference in interest rates, not on the underlying principal. As a result, swaps have less credit risk than bonds.

Total return swaps involve exchanging the return on an asset for a floating rate such as LIBOR. The term swap is also used to describe agreements like the Procter & Gamble swap (Box 2), which required payments based on the difference in interest rates and bond prices, as well as default swaps.

# FURTHER READING

Litzenberger (1992) provides an overview of the swap market. Turnbull (1987) discusses arguments purporting to show that the use of swaps can have a positive net present value. Default swaps are discussed by Tavakoli (1998). Because of convexity bias, the market interest rate swap curve is not exactly the same as the swap curve constructed from Eurodollar futures. This is discussed in Burghardt and Hoskins (1995) and Gupta and Subrahmanyam (2000). The SEC complaint against J. P. Morgan Chase is at http://www.sec.gov/litigation/ complaints/comp18252.htm.

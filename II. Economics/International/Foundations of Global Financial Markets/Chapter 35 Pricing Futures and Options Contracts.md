---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: '35'
linter-yaml-title-alias: '35'
primary_tags:
- cash market transactions futures
- strike price underlying asset
- pricing futures contract arbitrage
- options theoretical price option
- hedge ratio calculate
secondary_tags:
- 35 pricing futures options
- hedge riskless payoffs solving
- arbitrage model price convergence
- magnitude outcome deriving hedge
- futures price differ theoretical
- option pricing models deriving
- futures price obtain equation
- futures options contracts contents
- transactions pricing options basic
- hedge hold regardless price
- basic principle hedged portfolio
- portfolio riskless return equal
tags_extracted: '2025-12-18T00:27:58.956377'
---

# 35

# Pricing Futures and Options Contracts

# CONTENTS

# Learning Objectives

# Pricing of Futures Contracts

Theoretical Futures Price Based on Arbitrage Model

Price Convergence at the Delivery Date

A Closer Look at the Theoretical Futures Price

Interim Cash Flows

Differences between Lending and Borrowing Rates

Transaction Costs

Short Selling

Known Deliverable Asset and Settlement Date

The Deliverable Is a Basket of Securities

Different Tax Treatment of Cash and Futures Transactions

# Pricing of Options

Basic Components of the Option Price

Intrinsic Value

Time Premium

Put-Call Parity Relationship

Factors That Influence the Option Price

Current Price of the Underlying Asset

Strike Price

Time to Expiration of the Option

Expected Price Volatility of the Underlying Asset over the Life of the Option

Short-Term, Risk-Free Interest Rate over the Life of the Option

Anticipated Cash Payments on the Underlying Asset over the Life of the Option

Option Pricing Models

Deriving the Binomial Option Pricing Model

Deriving the Hedge Ratio

Deriving the Price of a Call Option

Fixed-Income Option Pricing Models

# Key Points

# Questions

After reading this chapter, you will understand:

- the theory of pricing a futures contract;
- how arbitrage between the futures market and the cash or spot market links the prices of those markets;
- the meaning of the terms "cost of carry" and "net financing cost":
- the convergence of the futures and cash prices for a particular asset at the settlement date of the futures contract;
- why the actual futures price may differ from the theoretical futures price;
- how the market price of an option can be broken down into an intrinsic value and a time premium;
- why arbitrage ensures that the prices of calls and puts on the same underlying asset with the same exercise price and expiration date have a certain relationship to each other;
- the factors that affect the price of an option: the underlying asset's current price and expected price volatility, the contract's expiration date and exercise price, the short-term rate of interest, and any cash flows from the underlying asset; and
- the principles of the binomial option pricing model and how the model is derived.

In chapters 33 and 34, we described the various types of futures and options contracts. In this chapter, we explain how to determine the theoretical price of these contracts using arbitrage arguments. A close examination of the underlying assumptions necessary to derive the theoretical price indicates how it must be modified to price the specific contracts described in the previous two chapters.

# Pricing of Futures Contracts

To understand what determines the futures price, consider once again the futures contract in chapter 33, whose underlying instrument is Asset XYZ. We make several assumptions:

1. Asset XYZ is selling for 100 in the cash market.
 2. Asset XYZ pays the holder (with certainty) \$12 per year in four quarterly payments of \$3, and the next quarterly payment is exactly three months from now.
3. The futures contract requires delivery three months from now.
4. The current three-month interest rate at which funds can be lent or borrowed is  $8\%$  per year.

What should the price of this futures contract be? Suppose the price of the futures contract is 107. Consider this strategy:

Sell the futures contract at 107.

Purchase Asset XYZ in the cash market for 100.

Borrow 100 for three months at 8 \%per year.

The borrowed funds are used to purchase Asset XYZ, resulting in no initial cash outlay for this strategy. At the end of three months, 3 will be received from holding Asset XYZ. Three months from now, Asset XYZ must be delivered to settle the futures contract, and the loan must be repaid. This strategy produces an outcome as follows:

<table><tr><td colspan="2">1. From settlement of the futures contract:</td></tr><tr><td>Proceeds from sale of Asset XYZ to settle the futures contract</td><td>= \$107</td></tr><tr><td>Payment received from investing in Asset XYZ for three months</td><td>= 3</td></tr><tr><td>Total proceeds</td><td>= \$110</td></tr><tr><td colspan="2">2. From the loan:</td></tr><tr><td>Repayment of the loan principal</td><td>= \$100</td></tr><tr><td>Interest on loan (2\% for three months)</td><td>= 2</td></tr><tr><td>Total outlay</td><td>= \$102</td></tr><tr><td>3. Profit:</td><td>8</td></tr></table>

Notice that this strategy guarantees a profit of 8. Moreover, this profit is generated with no investment outlay: The funds needed to buy Asset XYZ were borrowed. The profit is realized regardless of what the futures price at the settlement date is. In financial terms, the profit arises from a riskless arbitrage between the price of Asset XYZ in the cash or spot market and the price of Asset XYZ in the futures market. Obviously, in a well-functioning market, arbitrageurs who could get this riskless gain for a zero investment would sell the futures and buy Asset XYZ, forcing the futures price down and bidding up Asset XYZ's price so as to eliminate this profit.

This strategy, which resulted in the capturing of the arbitrage profit, is referred to as a cash and carry trade. The reason for this name is that it involves borrowing cash to purchase a security and "carrying" that security to the futures settlement date.

Suppose instead that the futures price is  \$92 and not\$ 107. Let's consider this strategy:

Buy the futures contract at 92.

Sell (short) Asset XYZ for 100.

Invest (lend) 100 for three months at 8\% per year.

Once again, no initial cash outlay is needed for the strategy: The cost of the long position in the futures contract is zero, and there is no cost to selling the asset short and lending the money. Three months from now, Asset XYZ must be purchased to settle the long position in the futures contract. Asset XYZ accepted for delivery will then be used to cover the short position—to cover the short sale of Asset XYZ in the cash market. Shorting Asset XYZ requires the short seller to pay the lender of Asset XYZ the proceeds that the lender would have earned for the quarter. Therefore, the strategy requires a payment of 3 to the lender of Asset XYZ. The outcome in three months would be as follows:

<table><tr><td colspan="2">1.From settlement of the futures contract:</td></tr><tr><td>Price paid for purchase of Asset XYZ to settle futures contract</td><td>= \$92</td></tr><tr><td>Proceeds to lender of Asset XYZ to borrow the asset</td><td>= 3</td></tr><tr><td>Total outlay</td><td>= \$95</td></tr><tr><td colspan="2">2.From the loan:</td></tr><tr><td>Principal from maturing of investment</td><td>= \$100</td></tr><tr><td>Interest earned on loan (\$2 for three months)</td><td>= 2</td></tr><tr><td>Total proceeds</td><td>= \$102</td></tr><tr><td>3.Profit</td><td>= \$7</td></tr></table>

The 7 profit from this strategy is also a riskless arbitrage profit. This strategy requires no initial cash outlay but will generate a profit regardless of the price of Asset XYZ at the settlement date. Clearly, this opportunity would lead arbitrageurs to buy futures and short Asset XYZ, and the effect of these two actions would be to raise the futures price and lower the cash price until the profit again disappeared.

This strategy that resulted in the capturing of the arbitrage profit is referred to as a reverse cash and carry trade. That is, with this strategy, a security is sold short, and the proceeds received from the short sale are invested.

At what futures price would the arbitrating stop? Another way to ask this question is this: Is there a futures price that would prevent the opportunity for the riskless arbitrage profit? Yes, there is. There will be no arbitrage profit if the futures price is  \$99. Let's look at what happens if the two previous strategies (cash and carry trade and reverse cash and carry trade) are followed, now assuming a futures price of\$ 99.

Consider the first strategy (cash and carry), which has these elements:

Sell the futures contract at 99.

Purchase Asset XYZ in the cash market for 100.

Borrow 100 for three months at 8\% per year.

In three months, the outcome will be as follows:

<table><tr><td colspan="2">1. From settlement of the futures contract:</td></tr><tr><td>Price paid for purchase of Asset XYZ to settle futures contract</td><td>= \$99</td></tr><tr><td>Proceeds to lender of Asset XYZ to borrow the asset</td><td>= 3</td></tr><tr><td>Total outlay</td><td>= \$102</td></tr><tr><td colspan="2">2. From the loan:</td></tr><tr><td>Principal from maturing of investment</td><td>= \$100</td></tr><tr><td>Interest earned on loan (\$2 for three months)</td><td>= 2</td></tr><tr><td>Total proceeds</td><td>= \$102</td></tr><tr><td>3. Profit:</td><td>= \$0</td></tr></table>

If the futures price is 99, the arbitrage profit has disappeared.

Next, consider the strategy consisting of these actions:

Buy the futures contract at 99.

Sell (short) Asset XYZ for 100.

Invest (lend) 100 for three months at 8\% per year.

The outcome in three months would be as follows:

<table><tr><td colspan="2">1. From settlement of the futures contract:</td></tr><tr><td>Price paid for purchase of Asset XYZ to settle futures contract</td><td>= \$99</td></tr><tr><td>Proceeds to lender of Asset XYZ to borrow the asset</td><td>= 3</td></tr><tr><td>Total outlay</td><td>= \$102</td></tr></table>

<table><tr><td>2. From the loan:</td><td></td></tr><tr><td>Principal from maturing of investment</td><td>= \$100</td></tr><tr><td>Interest earned on loan (\$2 for three months)</td><td>= 2</td></tr><tr><td>Total proceeds</td><td>= \$102</td></tr><tr><td>3. Profit:</td><td>= \$0</td></tr></table>

Thus, if the futures price were \$99, neither strategy would result in an arbitrage profit. Hence, a futures price of \$99 is the equilibrium price, because any higher or lower futures price will permit riskless arbitrage profits.

According to the arbitrage arguments we have just presented, we see that the equilibrium or theoretical futures price can be determined based on the following information:

1. The price of the asset in the cash market.
 2. The cash yield earned on the asset until the settlement date. In our example, the cash yield on Asset XYZ is $3 on a $100 investment or 3\% quarterly (12\% annual cash yield).
3. The financing cost, which is the interest rate for borrowing and lending until the settlement date. In our example, the financing cost is  $2\%$  for the three months.

To develop a theory of futures pricing, we will use the following notation:

$$
F = \text{Fu tu re sp ri ce} (\mathbb {S})
$$

$$
P = \text{Ca sh ma rk et pr ic e} (\mathbb {S})
$$

$$ r = \text{Financingcost} (\%)
$$

$$ y = \text{Cashyield} (\%)
$$

Now, consider the cash and carry trade:

Sell (or take a short position in) the futures contract at  $F$ .

Purchase Asset XYZ for  $P$

Borrow  $P$  at a rate of  $r$  until the settlement date.

The outcome at the settlement date would be:

<table><tr><td colspan="2">1. From settlement of the futures contract:</td></tr><tr><td>Proceeds from sale of Asset XYZ to settle the futures contract</td><td>= F</td></tr><tr><td>Payment received from investing in Asset XYZ</td><td>= yP</td></tr><tr><td>Total proceeds</td><td>= F + yP</td></tr><tr><td colspan="2">2. From the loan:</td></tr><tr><td>Repayment of principal of loan</td><td>= P</td></tr><tr><td>Interest on loan</td><td>= rP</td></tr><tr><td>Total outlay</td><td>= P + rP</td></tr></table>

The profit will equal

Profit = Total proceeds - Total outlay,

Profit  $= F + yP - (P + rP)$ .

The equilibrium futures price is the price that ensures that the profit from this arbitrage strategy is zero. Thus, equilibrium requires that

$$
0 = F + y P - (P + r P).
$$

Solving for the theoretical futures price gives this equation:

$$
F = P + P (r - y)
$$

In other words, the equilibrium futures price is simply a function of the cash price, the financing cost, and the cash yield on the asset.

Alternatively, let us consider the reverse cash and carry trade illustrated in our example above, which looks like this:

Buy the futures contract at  $F$ .

Sell (short) Asset XYZ for  $P$ .

Invest (lend)  $P$  at a rate of  $r$  until the settlement date.

The outcome at the settlement date would be

<table><tr><td colspan="2">1. From settlement of the futures contract:</td></tr><tr><td>Price paid for purchase of asset to settle futures contract</td><td>= F</td></tr><tr><td>Payment to lender of asset to borrow the asset</td><td>= yP</td></tr><tr><td>Total outlay</td><td>= F + yP</td></tr><tr><td colspan="2">2. From the loan:</td></tr><tr><td>Principal from maturing of investment</td><td>= P</td></tr><tr><td>Interest earned on loan</td><td>= rP</td></tr><tr><td>Total proceeds</td><td>= P + rP</td></tr></table>

The profit will equal

Profit = Total proceeds - Total outlay,

Profit  $= P + rP - (F + yP)$

Setting the profit equal to zero, so that there will be no arbitrage profit, and solving for the futures price, we obtain the same equation for the futures price as derived earlier:

$$
F = P + P (r - y).
$$

It is instructive to apply this equation to our previous example to determine the theoretical futures price. In that example, the key variables have these values:

$$
\begin{array}{l} r = 0. 0 2 \\ y = 0. 0 3 \\ P = \$ 100 \\ \end{array}
$$

Then the theoretical futures price is

$$
\begin{array}{l} F = \$ 100 - \$ 100 (0. 0 3 - 0. 0 2) \\ = \$ 1 0 0 - \$ 1 = \$ 9 9. \\ \end{array}
$$

This agrees with the equilibrium futures price we proposed earlier.

The theoretical futures price may be at a premium to the cash market price (higher than the cash market price) or at a discount from the cash market price (lower than the cash market price), depending on the value of  $P(r - y)$ . The term  $r - y$ , which reflects the difference between the cost of financing and the asset's cash yield, is called the net financing cost. The net financing cost is more commonly called the cost of carry, or simply, carry. Positive carry means that the yield earned is greater than the financing cost; negative carry means that the financing cost exceeds the yield earned. We can summarize the effect of carry on the difference between the futures price and the cash market price in this way:

<table><tr><td>Carry</td><td>Futures Price</td></tr><tr><td>Positive (y&gt;r)</td><td>Will sell at a discount to cash price (F&lt;P)</td></tr><tr><td>Negative (y&lt;r)</td><td>Will sell at a premium to cash price (F&gt;P)</td></tr><tr><td>Zero (r=y)</td><td>Will be equal to the cash price (F=P)</td></tr></table>

At the delivery date, which is when the futures contract settles, the futures price must equal the cash market price, because a futures contract with no time left until delivery is equivalent to a cash market transaction. Thus, as the delivery date approaches, the futures price will converge to the cash market price. This fact is evident from the equation for the theoretical futures price. As the delivery date approaches, the financing cost approaches zero, and the yield that can be earned by holding the investment approaches zero. Hence, the cost of carry approaches zero, and the futures price will approach the cash market price.

# A Closer Look at the Theoretical Futures Price

To derive the theoretical futures price using the arbitrage argument, we made several assumptions. When the assumptions are violated, the actual futures price will diverge from the theoretical futures price. That is, the difference between the two prices will differ from the value of carry. Next, we examine those assumptions and identify practical reasons for the tendency of actual prices of all financial futures contracts to deviate from their theoretical prices.

# Interim Cash Flows

Our theoretical analysis assumes that no interim cash flows arise because of changes in futures prices and the variation margin of the organized exchanges on which futures are traded. In addition, our approach assumes implicitly that any dividends or coupon interest payments are paid at the delivery date rather than at some time between initiation of the cash position and expiration of the futures contract. However, we know that interim cash flows of either type can and do occur in practice.

In the case of stock index futures, incorporating interim dividend payments into the pricing model is necessary, because a cash position in a set of 100 or 500 stocks (the number of stocks underlying an index) generates cash flows in the form of dividends from the stocks. The dividend rate and the pattern of dividend payments are not known with certainty. They must be projected from the historical dividend payments of the companies in the index. Once the dividend payments are projected, they can be incorporated into the pricing model. The only problem is that the value of the dividend payments at the settlement date will depend on the interest rate at which the dividend payments can be reinvested from the time they are projected to be received until the settlement date. The lower the dividend is, and the closer the dividend payments are to the settlement date of the futures contract, the less important the reinvestment income is when determining the futures price.

It is important to note that, in the absence of initial and variation margins, the theoretical price for the contract is technically the theoretical price for a forward contract, not the theoretical price for a futures contract. This is because, unlike a futures contract, a forward contract is not marked to market at the end of each trading day, and therefore does not require variation margin and does not generate cash inflows from gains or outflows from losses.

# Differences between Lending and Borrowing Rates

When deriving the theoretical futures price, we assumed that the investor's borrowing and lending rates are equal. Typically, however, the borrowing rate is higher than the lending rate. The impact of this inequality is important and easy to identify. We begin by adopting these symbols for the two rates:

$$ r_{B} = \text{Bo rr ow in gr at e},
$$

$$ r_{L} = \text{Le nd in gr at e}.
$$

Now, consider the cash and carry trade:

Sell the futures contract at  $F$

Purchase the asset for  $P$

Borrow  $P$  at  $r_B$  until the settlement date.

Clearly, the futures price that would produce no arbitrage profit is

$$
F = P + P \left(r_{B} - y\right).
$$

Recall that the reverse cash and carry trade is

Buy the futures contract at  $F$ .

Sell (short) the asset for  $P$ .

Invest (lend)  $P$  at  $r_L$  until the settlement date.

The futures price that would prevent a riskless profit is

$$
F = P + P (r_{L} - y).
$$

These two equations together provide boundaries between which the futures price will be in equilibrium. The first equation establishes the upper boundary, and the second equation the lower boundary. For example, assume that the borrowing rate is  $8\%$  per year, or  $2\%$  for three months, and the lending rate is  $6\%$  per year, or  $1.5\%$  for three months. According to the first equation, the upper boundary is

$$
F (\text{up pe rb ou nd ar y}) = \ 1 0 0 + \ 1 0 0 (0. 0 2 - 0. 0 3) = \ 9 9.
$$

The lower boundary according to the second equation is

$$
F (\text{lo we rb ou nd ar y}) = \ 1 0 0 + \ 1 0 0 (0. 0 1 5 - 0. 0 3) = \ 9 8. 5 0.
$$

Thus, equilibrium is achieved if the futures price takes on any value between the two boundaries. In other words, equilibrium requires that $98.50 ≤ F ≤ $99.

# Transaction Costs

When deriving the theoretical futures price, we ignored transaction costs of the elements in the arbitrage strategies. In reality, the costs of entering into and closing the cash position as well as round-trip transaction costs for the futures contract do affect the futures price. It is easy to show, as we did previously for borrowing and lending rates, that transaction costs widen the boundaries for the equilibrium futures price. The details need not concern us here.

# Short Selling

In the strategy involving short selling of Asset XYZ when the futures price is below its theoretical value, we explicitly assumed in the reverse cash and carry trade that the proceeds from the short sale are received and reinvested. In practice, for individual investors, the proceeds are not received, and, in fact, the individual investor is required to put up margin (securities margin, not futures margin) to short sell. For institutional investors, the asset may be borrowed, but there is a cost to borrowing. This cost of borrowing can be incorporated into the model by reducing the yield on the asset.

For strategies applied to stock index futures, a short sale of the stocks in the index means that all stocks in the index must be sold simultaneously. The stock exchange rule for the short selling of stock, which we explained in chapter 23, may prevent an investor from implementing the arbitrage strategy. The short selling rule for stocks specifies that a short sale can be made only at a price that is higher than the previous trade (referred to as an "uptick"), or at a price that is equal to the previous trade (referred to as a "zero tick") but higher than the last trade at a different price. If the arbitrage requires selling the stocks in the index simultaneously, and the last transaction for some of the stocks is not an uptick, then the stocks cannot be shorted simultaneously. Thus, an institutional rule may in effect keep arbitrageurs from bringing the actual futures price in line with the theoretical futures price.

Known Deliverable Asset and Settlement Date

Our example illustrating arbitrage strategies assumes that (1) only one asset is deliverable, and (2) the settlement date occurs at a known, fixed point in the future. Neither assumption is consistent with the delivery rules for some futures contracts. The case of U.S. Treasury bond and note futures contracts illustrates the point: An investor in a long position cannot know either the specific Treasury bond to be delivered or the specific date in the contract month when it might be delivered. This substantial uncertainty is a result of the delivery options that the short position in a futures contract has. As a reflection of the short positions' options and advantages, the actual futures price will be less than the theoretical futures price for the Treasury bond and note futures contracts.

The Deliverable Is a Basket of Securities

Some futures contracts involve a single asset, but other contracts apply to a basket of assets or an index. Stock index futures and municipal bond index futures contracts are examples. The problem in arbitrating these two futures contracts is that it is too expensive to buy or sell every security included in the index. Instead, a portfolio containing a smaller number of assets may be constructed to track the index (which means having price movements that are very similar to changes in the index). Nonetheless, arbitrage based on this tracking portfolio is no longer risk-free, because of the risk that the portfolio will not track the index exactly. Clearly, then, the actual price of futures based on baskets of assets may diverge from the theoretical price because of transactions costs as well as uncertainty about the outcome of the arbitrage.

# Different Tax Treatment of Cash and Futures Transactions

The basic arbitrage model presented in this chapter ignores not only taxes but also different tax treatment of cash market transactions and futures transactions. Obviously, these factors can keep the actual futures price from being equal to the theoretical price.

# Pricing of Options

The theoretical price of an option is also derived from arbitrage arguments. However, the pricing of options is not as simple as the pricing of futures contracts.

# Basic Components of the Option Price

The option price is the sum of the option's intrinsic value and a premium over intrinsic value that is often referred to as the "time value" or "time premium." Although the former term is more common, we will use the term time premium to avoid confusion between the time value of money and the time value of the option.

# Intrinsic Value

The intrinsic value of an option at any time is its economic value if it is exercised immediately. If no positive economic value would result from exercising immediately, the intrinsic value is zero.

Computationally, the intrinsic value of a call option is the difference between the current price of the underlying asset and the strike price. If that difference is positive, then the intrinsic value equals that difference; if the difference is zero or negative, then the intrinsic value is set equal to zero. For example, if the strike price for a call option is  \$100 and the current asset price is\$ 105, the intrinsic value is \$5. That is, an option buyer exercising the option and simultaneously selling the underlying asset would realize \$105 from the sale of the asset, which would be covered by acquiring the asset from the option writer for \$100, thereby, netting a \$5 gain.

When an option has intrinsic value, it is said to be in the money. When the strike price of a call option exceeds the current asset price, the call option is said to be out of the money; it has no intrinsic value. An option for which the strike price is equal to the current asset price is said to be at the money. Both at-the-money and out-of-the-money options have intrinsic values of zero, because it is not profitable to exercise them. Our call option with a strike price of \$100 would be: (1) in the money when the current asset price is more than \$100, (2) out of the money when the current asset price is less than \$100, and (3) at the money when the current asset price is equal to \$100.

For a put option, the intrinsic value is equal to the amount by which the current asset price is below the strike price. For example, if the strike price of a put option is \$100, and the current asset price is \$92, the intrinsic value is \$8. That is, the buyer of the put option who simultaneously buys the underlying asset and exercises the put option will net \$8 by exercising. The asset will be sold to the writer for \$100 and purchased in the market for \$92. For our put option with a strike price of \$100, the option would be: (1) in the money when the current asset price is less than \$100, (2) out of the money when the current asset price exceeds \$100, and (3) at the money when the current asset price is equal to \$100.

# Time Premium

The time premium of an option is the amount by which the option's market price exceeds its intrinsic value. The option buyer hopes that, at some time prior to expiration, changes in the market price of the underlying asset will increase the value of the rights conveyed by the option. For this prospect, the option buyer is willing to pay a premium above the intrinsic value. For example, if the price of a call option with a strike price of \$100 is \$9 when the current asset price is \$105, then the time premium of this option is \$4 (9 minus its intrinsic value of \$5). Had the current asset price been \$90 instead of \$105, then the time premium of this option would be the entire \$9, because the option has no intrinsic value. Clearly, other things being equal, the time premium of an option will increase with the amount of time remaining to expiration.

An option buyer has two ways to realize the value of a position taken in the option. The first way is to exercise the option. The second way is to sell the call option for its market price. In the first example above, selling the call for \$9 is preferable to exercising, because the exercise will realize a gain of only \$5 but the sale will realize a gain of 9. As this example shows, exercise causes the immediate loss of any time premium. It is important to note that in some circumstances, an option may be exercised prior to the expiration date. These circumstances depend on whether the total proceeds at the expiration date would be greater by holding the option or exercising and reinvesting any received cash proceeds until the expiration date.

Put-Call Parity Relationship

An important relationship holds between the price of a call option and the price of a put option on the same underlying instrument, with the same strike price and the same expiration date. An example can illustrate this relationship, which is commonly referred to as the put-call parity relationship.

Our example comes from the previous chapter and assumes that a put option and a call option are available on the same underlying asset (Asset XYZ), and that both options have one month to expiration and a strike price of \$100. The example assumes that the price of the underlying asset is \$100. The call and put prices are assumed to be \$3 and \$2, respectively.

To see whether the two prices have the right relationship, consider what happens if an investor pursues this strategy:

Buy Asset XYZ at a price of 100.

Sell a call option at a price of 3.

Buy a put option at a price of 2.

This strategy generates these positions:

Long Asset XYZ

Short the call option

Long the put option

Table 35.1 shows the profit/loss profile at the expiration date for this strategy. Notice that, no matter what Asset XYZ's price is at the expiration date, the strategy will produce a profit of 1. The net cost of creating this position is the cost of purchasing Asset XYZ (100) plus the cost of buying the put (2) less the price received from selling the call (3), which is 99. Suppose that the net cost of creating the position for one month is less than \$1. Then, by borrowing \$99 to create the position so that no investment outlay is made by the investor, this strategy will produce a net profit of \$1 (as shown in the last column of table 34.1) less the cost of borrowing \$99, which is assumed to be less than \$1. This situation cannot exist in an efficient market. As market participants implement the strategy to capture the \$1 profit, their actions will have one or more of the following consequences, which will tend to eliminate the 1 profit: (1) the price of Asset XYZ will increase, (2) the call option price will drop, or (3) the put option price will rise.

Table 35.1 Profit/loss profile for a strategy involving a long position in Asset XYZ, short call option position, and long put option position.

<table><tr><td colspan="5">Assumptions:
Price of Asset XYZ: 100
Call option price: 3
Put option price: 2
Strike price 5: 100
Time to expiration: 1 month</td></tr><tr><td>Price of Asset XYZ at
Expiration Date ($)</td><td>Profit from
Asset XYZ1 ($)</td><td>Price Received for Call ($)</td><td>Price Paid
for Put ($)</td><td>Overall
Profit ($)</td></tr><tr><td>150</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>140</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>130</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>120</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>115</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>110</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>105</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>100</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>95</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>90</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>85</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>80</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>75</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>70</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>65</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr><tr><td>60</td><td>0</td><td>3</td><td>-2</td><td>1</td></tr></table>

There is no profit, because at a price above \$100, Asset XYZ will be called from the investor at a price of \$100, and at a price below \$100, Asset XYZ will be put by the investor at a price of \$100.

Our example clearly implies that if Asset XYZ's price does not change, the call price and the put price must tend toward equality. But our example ignores the time value of money (financing and opportunity costs, cash payments, and reinvestment income). Also, our example does not consider the possibility of early exercise of the options. Thus, we have been considering a put-call parity relationship only for European options.

It can be shown that the put-call parity relationship for options when the underlying asset makes cash distributions and the time value of money is recognized is

Put option price - Call option price = Present value of strike price + Present value of cash distribution - Price of underlying asset.

Once more, note that this relationship is actually the put-call parity relationship for European options. However, the values of puts and calls that are American options do conform approximately to this relationship. If this relationship does not hold, arbitrage opportunities exist. That is, investors will be able to construct portfolios consisting of long and short positions in the asset and related options that will provide an extra return with (practical) certainty.

Factors That Influence the Option Price

Six factors influence the price of an option:

1. Current price of the underlying asset,
2. Strike price,
3. Time to expiration of the option,
4. Expected price volatility of the underlying asset over the life of the option,
5. Short-term, risk-free interest rate over the life of the option, and
6. Anticipated cash payments on the underlying asset over the life of the option.

The impact of each of these factors may depend on whether (1) the option is a call or a put, and (2) the option is an American option or a European option. A summary of the effect of each factor on put and call option prices is presented in table 35.2. Here we briefly explain why the factors have the indicated effects.

Table 35.2 Summary of factors that affect the price of an option.

<table><tr><td rowspan="2">Factor</td><td colspan="2">Effect of an Increase of Factor on</td></tr><tr><td>Call Price</td><td>Put Price</td></tr><tr><td>Current price of underlying asset</td><td>Increase</td><td>Decrease</td></tr><tr><td>Strike price</td><td>Decrease</td><td>Increase</td></tr><tr><td>Time to expiration of option</td><td>Increase</td><td>Increase</td></tr><tr><td>Expected price volatility</td><td>Increase</td><td>Increase</td></tr><tr><td>Short-term interest rate</td><td>Increase</td><td>Decrease</td></tr><tr><td>Anticipated cash payments</td><td>Decrease</td><td>Increase</td></tr></table>

The option price will change as the price of the underlying asset changes. For a call option, as the price of the underlying asset increases (all other factors constant), the option price increases. The opposite holds for a put option: As the price of the underlying asset increases, the price of a put option decreases.

# Strike Price

The strike price is fixed for the life of the option. All other factors equal, the lower the strike price is, the higher will be the price for a call option. For put options, the higher the exercise price is, the higher will be the option price. Table 35.3 shows this for the price of Apple Inc. (APPL) call and put options on August 15, 2016, expiring on March 17, 2017. Option prices shown in this way are referred to as an "option chain." On August 15, 2016, the closing price for Apple Inc. (traded on the Nasdaq) was 109.48.

Table 35.3 Option chain on August 15, 2016, for Apple Inc (APPL) put and call option expiring on March 17, 2017 (APPL Price = \ 109.48

<table><tr><td>Strike</td><td>Call Last Sale</td><td>Open Interest</td><td>Strike</td><td>Put Last Sale</td><td>Open Interest</td></tr><tr><td>100</td><td>13.05</td><td>13,539</td><td>100</td><td>4.15</td><td>4,360</td></tr><tr><td>105</td><td>9.85</td><td>6,218</td><td>105</td><td>5.88</td><td>1,088</td></tr><tr><td>110</td><td>7.12</td><td>7,211</td><td>110</td><td>8.10</td><td>576</td></tr><tr><td>115</td><td>4.90</td><td>10,823</td><td>115</td><td>11.06</td><td>657</td></tr><tr><td>120</td><td>3.35</td><td>8,060</td><td>120</td><td>15.00</td><td>248</td></tr></table>

Source: Prices obtained from Nasdaq.

Note: Last Sale is the most recent trade. Open Interest is the total number of derivatives contracts traded that have not yet been liquidated either by an offsetting derivative transaction or by delivery.

# Time to Expiration of the Option

An option is a wasting asset. That is, after the expiration date, the option has no value. All other factors equal, the longer the time to expiration of the option is, the higher the option price will be. This is because, as the time to expiration decreases, less time remains for the underlying asset's price to rise (for a call buyer) or fall (for a put buyer), and therefore the probability of a favorable price movement decreases. Consequently, for American options, as the time remaining until expiration decreases, the option price approaches its intrinsic value.

This can be seen in table 35.4, which shows the price of Apple options on August 15, 2016, with different expiration dates.

Table 35.4 Option chain on August 14, 2016, for Apple Inc (APPL) put and call options with a strike price of 105 for different expiration dates.

<table><tr><td>Expiration Date</td><td>Call Price</td><td>Put Price</td></tr><tr><td>September 2, 2016</td><td>4.65</td><td>0.33</td></tr><tr><td>October 21, 2016</td><td>6.40</td><td>1.75</td></tr><tr><td>November 18, 2016</td><td>7.39</td><td>3.09</td></tr><tr><td>December 16, 2016</td><td>7.92</td><td>3.65</td></tr><tr><td>January 20, 2017</td><td>8.70</td><td>4.35</td></tr><tr><td>March 17, 2017</td><td>9.85</td><td>5.88</td></tr><tr><td>April 21, 2017</td><td>10.35</td><td>6.43</td></tr><tr><td>June 16, 2017</td><td>11.40</td><td>7.71</td></tr><tr><td>November 17, 2017</td><td>13.69</td><td>10.95</td></tr><tr><td>January 19, 2018</td><td>14.53</td><td>11.10</td></tr></table>

Source: Prices obtained from Nasdaq.

Expected Price Volatility of the Underlying Asset over the Life of the Option

All other factors equal, the greater is the expected volatility (as measured by the standard deviation or variance) of the price of the underlying asset, the more an investor will be willing to pay for the option, and the more an option writer will demand for it. This occurs because the greater the volatility is, the greater the probability that the price of the underlying asset will move in favor of the option buyer at some time before expiration.

Notice that it is the standard deviation or variance, not the systematic risk as measured by beta, as described in chapter 14, that is relevant in the pricing of options.

Short-Term, Risk-Free Interest Rate over the Life of the Option

Buying the underlying asset ties up one's money. Buying an option on the same quantity of the underlying asset makes the difference between the asset price and the option price available for investment at an interest rate at least as high as the risk-free rate. Consequently, all other factors held constant, the higher the short-term, risk-free interest rate is, the greater will be the cost of buying the underlying asset and carrying it to the expiration date of the call option. Hence, the higher the short-term, risk-free interest rate is, the more attractive the call option will be relative to the direct purchase of the underlying asset. As a result, a higher short-term, risk-free interest rate results in a higher price for a call option.

Anticipated Cash Payments on the Underlying Asset over the Life of the Option

Cash payments on the underlying asset tend to decrease the price of a call option, because the cash payments make it more attractive to hold the underlying asset than to hold the option. For put options, cash payments on the underlying asset tend to increase the price.

Option Pricing Models

We have shown that the theoretical price of a futures contract can be determined by using arbitrage arguments. An option pricing model uses a set of assumptions and arbitrage arguments to derive a theoretical price for an option. As we shall see in the following text, deriving a theoretical option price is much more complicated than deriving a theoretical futures price, because the option price depends on the expected price volatility of the underlying asset over the life of the option.

Several models have been developed to determine the theoretical value of an option. The most popular one was developed by Fischer Black and Myron Scholes in 1973 for valuing European call options. Some modifications were subsequently made to their model. We use another pricing model called the binomial option pricing model to see how arbitrage arguments can be used to determine a fair value for a call option.

Basically, the idea behind the arbitrage argument is that if the payoff from owning a call option can be replicated by (1) purchasing the asset underlying the call option and (2) borrowing funds, the price of the option is then (at most) the cost of creating the replicating strategy.

Deriving the Binomial Option Pricing Model

To derive a one-period binomial option pricing model for a call option, we begin by constructing a portfolio consisting of (1) a long position in a certain amount of the asset and (2) a short call position in the underlying asset. The amount of the underlying asset purchased is such that the position will be hedged against any change in the price of the asset at the expiration date of the option. That is, the portfolio consisting of the long position in the asset and the short position in the call option is riskless and will produce a return that equals the risk-free interest rate. A portfolio constructed in this way is called a hedged portfolio.

We can show how this process works with an extended illustration. Let us assume first that an asset has a current market price of 80 and that only two possible future states can occur one year from now. Each state is associated with one of only two possible values for the asset, and they can be summarized in this way:

<table><tr><td>State</td><td>Price ($)</td></tr><tr><td>1</td><td>100</td></tr><tr><td>2</td><td>70</td></tr></table>

We assume further that there is a call option on this asset with a strike price of 80 (the same as the current market price) and that it expires in one year. Let us suppose an investor forms a hedged portfolio by acquiring two-thirds of a unit of the asset and selling one call option. The two-thirds of a unit of the asset is the so-called hedge ratio (how we derive the hedge ratio is explained later). Consider the outcomes for this hedged portfolio corresponding to the two possible outcomes for the asset.

If the price of the asset one year from now is \$100, the buyer of the call option will exercise it. Then the investor will have to deliver one unit of the asset in exchange for the strike price, \$80. As the investor has only two-thirds of a unit of the asset, she has to buy one-third at a cost of \$100/3 (the market price divided by 3). Consequently, the outcome will equal the strike price of \$80 received, minus the 100/3 cost to acquire the one-third unit of the asset to deliver, plus whatever price the investor initially sold the call option for. That is, the outcome will be

$$
80 - 100 / 3 + \text{Calloptionprice} = 46 \% + \text{Calloptionprice}.
$$

If instead the price of the asset one year from now is 70, the buyer of the call option will not exercise it. Consequently, the investor will own twothirds of a unit of the asset. At the price of  \$70, the value of two-thirds of a unit is$ 46  $\frac{2}{3}$ . The outcome in this case is then the value of the asset plus whatever price the investor received when she initially sold the call option. That is, the outcome will be

$46\% +$  Call option price.

It is apparent that, given the possible asset prices, the portfolio consisting of a short position in the call option and two-thirds of a unit of the asset will generate an outcome that hedges changes in the price of the asset; hence, the hedged portfolio is riskless. Furthermore, this riskless hedge will hold regardless of the price of the call, which affects only the magnitude of the outcome.

Deriving the Hedge Ratio

To show how to calculate the hedge ratio, we use the following notation:

$S =$  current asset price,

$u = 1$  plus the percentage change in the asset's price if the price goes up in the next period,

$d = 1$  plus the percentage change in the asset's price if the price goes down in the next period,

$r =$  a risk-free one-period interest rate (the risk-free rate until the expiration date),

$C =$  current price of a call option,

$C_u =$  intrinsic value of the call option if the asset price goes up,

$C_d =$  intrinsic value of the call option if the asset price goes down,

$E =$  strike price of the call option,

$H =$  hedge ratio (that is, the amount of the asset purchased per call sold).

In our illustration,  $u$  and  $d$  are

$$ u = 1. 2 5 0 (\$ 1 0 0 / \$ 8 0),

$$

$$ d = 0. 8 7 5 (\$ 7 0 / \$ 8 0),
$$

Furthermore, State 1 in our illustration means that the asset's price goes up, and State 2 means that the asset's price goes down.

The investment made in the hedged portfolio is equal to the cost of buying  $H$  amount of the asset minus the price received from selling the call option. Therefore, because

Amount invested in the asset  $= HS$ , then

Cost of the hedged portfolio  $= HS - C$ .

The payoff of the hedged portfolio at the end of one period is equal to the value of the  $HS$  amount of the asset purchased minus the call option price. The payoffs of the hedged portfolio for the two possible states are defined in this way:

State 1, if the asset's price goes up:  $uHS - C_u$ ,

State 2, if the asset's price goes down:  $dHS - C_d$ .

In our illustration, we have these payoffs:

If the asset's price goes up: 1.250H \$80 - C_u, or \$100H - C_u;

If the asset's price falls: 0.875 H \$80 - C_d, or \$70H - C_d.

If the hedge is riskless, the payoffs must be the same. Thus,

$$ u H S - C_{u} = d H S - C_{d}. \tag {35.1}
$$

Solving equation (35.1) for the hedge ratio  $H$ , we have

$$
H = \frac{C_{u} - C_{d}}{(u - d) S}. \tag {35.2}
$$

To determine the value of the hedge ratio  $H$ , we must know  $Cu$  and  $Cd$ . These two values are equal to the difference between the price of the asset and the strike price in the two possible states. Of course, the minimum value of the call option in any state is zero. Mathematically, the differences can be expressed as follows:

If the asset's price goes up:  $C_u = \operatorname{Max}[0, (uS - E)]$ ;

If the asset's price goes down:  $C_d = \max [0, (dS - E)]$ .

As the strike price in our illustration is  \$80, the value of uS is\$ 100, and the value of dS is 70. Then,

If the asset's price goes up:  $C_u = \text{Max} [0, ($ 100 - $80)] = $20;

If the asset's price goes down:  $C_d = \text{Max} [0, ($ 70 - $80)] = $0.

To continue with our illustration, we substitute the values of  $u, d, S, C_u,$  and  $C_d$  into equation (35.2) to obtain the hedge ratio's value:

$$
H = \frac{\mathbb {S} 20 - \mathbb {S} 0}{(1 . 2 5 - 0 . 8 7 5) \mathbb {S} 8 0} =
$$

This value for  $H$  agrees with the amount of the asset purchased when we introduced this illustration.

Now we can derive a formula for the call option price. Figure 35.1 diagrams the situation. The top left half of the figure shows the current price of the asset for the current period and at the expiration date. The lower left portion of the figure does the same thing using the notation above. The upper right side of the figure gives the current price of the call option and the value of the call option at the expiration date; the lower right side does the same thing using our notation. Figure 35.2 uses the values in our illustration to construct the outcomes for the asset and the call option.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f9e2019c-3d5c-44b5-bba3-9b7de83643f5/ffbcc8191bf575ad4d752a4e079bf41d3583c57fb634aed84358c98a47ea6bc0.jpg)

Figure 35.1

One-period option pricing model.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f9e2019c-3d5c-44b5-bba3-9b7de83643f5/3fe0dcfa7fd18f6d928b554b13439c25fd1588982e3ee57ec55fb61eb1679808.jpg)

Figure 35.2

One-period option pricing model illustration.

Deriving the Price of a Call Option

To derive the price of a call option, we can rely on the basic principle that the hedged portfolio, being riskless, must have a return equal to the risk-free rate of interest. Given that the amount invested in the hedged portfolio is  $HS - C$ , the amount that should be generated one period from now is

$$
(1 + r) (H S - C). \tag {35.3}
$$

We also know what the payoff will be for the hedged portfolio if the asset's price goes up or down. Because the payoff of the hedged portfolio will be the same whether the asset's price rises or falls, we can use the payoff if it goes up, which is

$$ u H S - C_{u}.
$$

The payoff of the hedged portfolio given above should be the same as the initial cost of the portfolio given by equation (35.3). Equating the two, we have

$$
(1 + r) (H S - C) = u H S - C_{u}. \tag {35.4}
$$

Substituting equation (35.2) for  $H$  into equation (35.4) and solving for the call option price  $C$ , we find

$$
C = \left(\frac{1 + r - d}{u - d}\right) \left(\frac{C_{u}}{1 + r}\right) + \left(\frac{u - 1 - r}{u - d}\right) \left(\frac{C_{d}}{1 + r}\right). \tag {35.5}
$$

Equation (35.5) is the formula for the one-period binomial option pricing model. We would have derived the same formula if we had used the payoff for a decline in the price of the underlying asset. This derivation is left as an exercise for the reader.

Applying equation (35.5) to our illustration, where

$$ u = 1. 2 5 0,
$$

$$ d = 0. 8 7 5,
$$

$$ r = 0. 1 0,
$$

$$
C_{u} = \$ 20,
$$

$$
C_{d} = \$ 0,
$$ we get


$$

\begin{array}{l} C = \left(\frac{1 + 0 . 1 0 - 0 . 8 7 5}{1 . 2 5 - 0 . 8 7 5}\right) \left(\frac{\mathbb {S} 2 0}{1 + 0 . 1 0}\right) + \left(\frac{1 . 2 5 - 1 - 0 . 1 0}{1 . 2 5 - 0 . 8 7 5}\right) \left(\frac{\mathbb {S} 0}{1 + 0 . 1 0}\right). \\ = \$ 10.90 \\ \end{array}

$$

The approach we present for pricing options may seem oversimplified, given that we assume only two possible future states for the price of the underlying asset. In fact, we can extend the procedure by making the period shorter and shorter, and in that way calculate a fair value for an option. Note that extended and comprehensive versions of the binomial pricing model are in wide use throughout the world of finance. Moreover, the other popular option pricing model, the Black-Scholes model mentioned earlier, is in reality the mathematical equivalent of the binomial approach as the periods become very short. Thus, the approach we have described in detail here provides the conceptual framework for much of the analysis of option prices that today's financial market participants regularly perform.


# Fixed-Income Option Pricing Models

Because of the assumptions required for the binomial model described above, such models may have limited applicability to the pricing of options on fixed-income securities. More specifically, the binomial model assumes that (1) the price of the security can take on any positive value with some probability—no matter how small, (2) the short-term interest rate is constant over the life of the option, and (3) the volatility of the price of the security is constant over the life of the option.

These assumptions are unreasonable for an option on a fixed-income security. First, the price of a fixed-income security cannot exceed the undiscounted value of the cash flow. Any possibility that the price can go higher than this value implies that interest rates can be negative. Second, the price of an interest rate option will change as interest rates change. A change in the short-term interest rate changes the rates along the yield curve. Therefore, to assume that the short-term rate will be constant is inappropriate for interest rate options. The third assumption (that the variance of prices is constant over the life of the option) is inappropriate, because as a bond moves closer to maturity, its price volatility declines.

Fortunately, it is possible to avoid the problem of negative interest rates. We can develop a binomial option pricing model that is based on the distribution of interest rates rather than on prices. Once a binomial interest rate tree is constructed, it can be converted into a binomial price tree by using its interest rates to determine the prices of the bond at the end of the period. We can apply to these prices the same procedure described earlier to calculate the option price by working backward from the value of the call option at the expiration date.

Although the binomial option pricing model based on yields is superior to models based on prices, it still has a theoretical drawback. All theoretically valid option pricing models must satisfy the put–call parity relationship. The problem with the binomial model based on yields is that it does not satisfy this relationship. It violates the relationship, because it fails to take into consideration the yield curve, thereby allowing arbitrage opportunities.


The most elaborate models that take the yield curve into consideration, and as a result eliminate arbitrage opportunities, are called yield curve option pricing models or arbitrage-free option pricing models. These models can incorporate different volatility assumptions along the yield curve. They are theoretically superior to the other models we have described. $^4$

# Key Points
- The equilibrium or theoretical futures price can be determined through arbitrage arguments.
- The strategy that can be used to capture the arbitrage profit for an overpriced futures contract is the cash and carry trade; the strategy that can be used to capture the arbitrage profit for an underpriced futures contract is the reverse cash and carry trade.
- The theoretical futures price depends on the price of the underlying asset in the cash market, the cost of financing a position in the underlying asset, and the cash yield on the underlying asset.
- The ability of market participants to implement cash and carry trades and reverse cash and carry trades (or arbitrage strategies) results in the theoretical futures price being equal to the cash market price plus the cost of carry.
- At the delivery date, the price of a futures contract converges to the cash market price.
- The cost of carry is the net financing cost, that is, the difference between the financing rate and the cash yield on the underlying asset.
- The theoretical futures price will be less than the cash market price if the cost of carry is positive, equal to the cash market price if the cost of carry is zero, and more than the cash market price if the cost of carry is negative.
- Developing the theoretical futures price with arbitrage arguments requires certain assumptions; if these assumptions are violated for a specific futures contract, the theoretical futures price must be modified.
- The actual futures price will diverge from the theoretical futures price because of interim cash flows, differences between lending and borrowing rates, transaction costs, restrictions on short selling, and uncertainty about the deliverable asset and the date it will be delivered.
- Because of the difference between borrowing and lending rates and because of transaction costs, there is not one theoretical futures price but instead a boundary around the theoretical futures price. So long as the actual futures price remains within this boundary, arbitrage profits cannot be realized.
- The price of an option consists of two components: the intrinsic value and the time premium.
- The intrinsic value is the economic value of the option if it is exercised immediately.
- If no positive economic value results from exercising immediately, the intrinsic value of the option is zero.
- The time premium is the amount by which the option price exceeds the intrinsic value.
- Six factors influence the option price: (1) the current price of the underlying asset; (2) the strike price of the option; (3) the time remaining to the expiration of the option; (4) the expected price volatility of the underlying asset; (5) the short-term, risk-free interest rate over the life of the option; and (6) the anticipated cash payments on the underlying asset.
- The put-call parity relationship is the relationship between the price of a call option and the price of a put option on the same underlying instrument, with the same strike price and the same expiration date.
- The theoretical price of an option can be determined on the basis of arbitrage arguments; it is much more complicated to determine than the theoretical price of a futures contract, because the option price depends on the expected price volatility of the underlying asset over the life of the option.
- Several models have been developed to determine the theoretical value of an option.
- The value of an option is equal to the cost of creating a replicating hedge portfolio.
- The theoretical option price can be calculated with the binomial option pricing model, which also employs arbitrage arguments.
- Application of the binomial model to the pricing of options on fixed-income securities poses problems because of the model's underlying assumptions.

# Questions

1. Models for pricing futures and options are said to be based on arbitrage arguments.

a. What does arbitrage mean?
b. What is the investor's incentive to engage in arbitrage?
2. Suppose that financial Asset ABC is the underlying asset for a futures contract with settlement six months from now. You know the following about this financial asset and the futures contract:
 (i) In the cash market, ABC is selling for 80.
 (ii) ABC pays \$8 per year in two semiannual payments of \$4, and the next semiannual payment is due exactly six months from now.
(iii) The current six-month interest rate at which funds can be loaned or borrowed is  $6\%$ .

a. What is the theoretical (or equilibrium) futures price?
b. What action would you take if the futures price is 83?
 c. What action would you take if the futures price is 76?
d. Suppose that ABC pays interest quarterly instead of semiannually. If you know that you can reinvest any funds you receive three months from now at  $1\%$  for three months, what would be the theoretical futures price for six-month settlement?

e. Suppose that the borrowing rate and lending rate are not equal. Instead, suppose that the current six-month borrowing rate is  $8\%$  and the six-month lending rate is  $6\%$ . What are the boundaries for the theoretical futures price?
3. a. Explain why restrictions on short selling of stocks would cause the actual price of a stock index futures contract to diverge from its theoretical price.
b. Explain why creating a portfolio of stocks in which the number of stocks is less than the number of stocks in the index underlying a stock index futures contract would result in an arbitrage that is not riskless.
4. Why do the delivery options in a Treasury bond futures contract cause the actual futures price to diverge from its theoretical price?
5. “Of course, the futures are more expensive than the cash price—there’s positive carry.” Do you agree with this statement? Explain your answer.
6. Consider the following call option with three months to expiration:

Strike price = 72,

Current price of underlying assets = \ 87

Market price of option = \ 6 a. What is the intrinsic value for this call option?

b. What is the time premium for this call option?

7. Suppose the option in the previous question is a put option rather than a call option.

a. What is the intrinsic value for this put option?
b. What is the time premium for this put option?
 8. You obtain the following price quotes for call options on Asset ABC. It is now December, with the near contract maturing in one month's time. Asset ABC's price is currently trading at 50.

<table><tr><td>Strike Price ($)</td><td>March Quote ($)</td><td>January Quote ($)</td><td>June Quote ($)</td></tr><tr><td>40</td><td>11</td><td>12</td><td>11.50</td></tr><tr><td>50</td><td>6</td><td>7</td><td>8.50</td></tr><tr><td>60</td><td>7</td><td>8</td><td>9.00</td></tr></table>

Glancing at the figures, you note that two of these quotes seem to violate some of the rules you learned regarding options pricing.

a. What are these discrepancies?

b. How could you take advantage of the discrepancies? What is the minimum profit you would realize by arbitrating based on these discrepancies?

9. Explain why you agree or disagree with the following statements: a. "To determine the theoretical value of an option, we will need some measure of the price volatility of the underlying asset. Because financial theorists tell us that the appropriate measure of risk is beta (that is, systematic risk), then we should use this value."


b. "If the expected price volatility of an option increases, the theoretical value of an option decreases."

c. "It does not make sense that the price of a call option should rise in value if the price of the underlying asset falls."

10. Consider two options with the same expiration date and for the same underlying asset. The two options differ only in the strike price. Option 1's strike price is greater than that of Option 2.

a. If the two options are call options, which option will have a higher price?

b. If the two options are put options, which option will have a higher price?

11. Consider two options with the same strike price and for the same underlying asset. The two options differ only with respect to the time to expiration. Option A expires in three months, and Option B expires in six months.

a. If the two options are call options, which option will have the higher intrinsic value (assuming the options are in the money)?

b. If the two options are call options, which option will have a higher time premium?

c. Would your answers to (a) and (b) be different if the option is a put rather than a call?

12. In an option pricing model, what statistical measure is used as a measure of the price volatility of the underlying asset?

13. For an asset that does not make cash distributions over the life of an option, it does not pay to exercise a call option prior to the expiration date. Why?

14. Consider two strategies:

Strategy 1: Purchase one unit of Asset M currently selling for  \$103. A distribution of\$ 10 is expected one year from now.

Strategy 2: (a) Purchase a call option on Asset M with an expiration date one year from now and a strike price of 100; and (b) place sufficient funds in a 10 \%interest- bearing bank account to exercise the option at expiration (100) and to pay the cash distribution that would be paid by Asset M (10).

a. What is the investment required under Strategy 2?
b. Give the payoffs of Strategy 1 and Strategy 2, assuming that the price of Asset M one year from now is

(i) 120,
(ii) 103,
(iii) 100,
(iv) 80.

c. For the four prices of Asset M one year from now listed in part (b), demonstrate that the following relationship holds: Call option price  $\geq$  Max [0, (Price of underlying asset - Present value of strike price - resent value of cash distribution)].

15. What is meant by a hedge ratio in developing an option pricing model?
16. a. Calculate the option value for a two-period European call option with the following terms:

Current price of underlying asset = \ 100

Strike price = 10,

One-period, risk-free rate  $= 5\%$ .

The stock price can either go up or down by  $10\%$  at the end of one period.

b. Recalculate the value for the option when the stock price can move either up or down by  $50\%$  at the end of one period. Compare your answer with the calculated value in part (a).

# 17. What is the problem with applying the binomial pricing model to the pricing of options on fixed-income securities?

1. Consider the first strategy (cash and carry trade), which had these elements: Technically, a short seller may not be entitled to the full use of the proceeds resulting from the sale. We will discuss this later in this section.
2. Fischer Black and Myron Scholes, "The Pricing of Corporate Liabilities," Journal of Political Economy 81 (1973): 637-659.
3. John C. Cox, Stephen A. Ross, and Mark Rubinstein, "Option Pricing: A Simplified Approach," Journal of Financial Economics 7 (1979): 229-263; Richard J. Rendleman and Brit J. Bartter, "Two-State Option Pricing," Journal of Finance 34 (1979): 1093-1110; William F. Sharpe, Investments (Englewood Cliffs, NJ: Prentice Hall, 1981), chapter 16.
4. For a discussion of yield curve or arbitrage-free option pricing models, see Mark Pitts and Frank J. Fabozzi, Interest Rate Futures and Options (Chicago: Probus Publishing, 1989), chapter 9.


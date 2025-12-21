---
title: "Chapter 2 - Insurance, Hedging, and Simple Strategies"
aliases:
   - Insurance, Hedging, and Simple Strategies
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:15:00 AM
formatter_model: claude-sonnet-4
cli_tool: claude-code
primary_tags:
   - derivatives contracts
   - forward contracts
   - futures contracts
   - call options
   - put options
   - payoff diagrams
   - hedging strategies
   - risk management
secondary_tags:
   - option terminology
   - strike price
   - exercise style
   - european options
   - american options
   - cash settlement
   - credit risk
   - underlying assets
   - expiration date
   - option premium
   - arbitrage pricing
   - zero coupon bonds
   - spot price
   - forward price
   - profit diagrams
cssclasses: academia
---

# Insurance, Hedging, and Simple Strategies

Basic derivatives contracts include: forward contracts, futures contracts, call options, and put options. All of these are contracts between two parties, with a payoff at some future date based on the price of an underlying asset (this is why they are called derivatives).

There are a number of things we want to understand about these instruments. What are they? How do they work and what do they cost? If you enter into a forward contract, futures contract, or option, what obligations or rights have you acquired? Payoff and profit diagrams provide an important graphical tool to summarize the risk of these contracts.

Once we understand what the basic derivatives contracts are, what can we do with them? Among other things, they can be used to provide insurance, to convert a stock investment into a risk-free investment and vice versa, and to speculate in a variety of ways. Derivatives can often be customized for a particular purpose. It is interesting to see how corporate risk managers can use derivatives, and some reasons for doing so.

This chapter introduces the basic derivatives contracts: forward contracts, call options, and put options. These fundamental contracts are widely used, and serve as building blocks for more complicated derivatives. We explain here how the contracts work and how to think about their risk. We also introduce an extremely important tool for analyzing derivatives positions—namely, payoff and profit diagrams. The terminology and concepts introduced in this chapter are fundamental.

# I. FORWARD CONTRACTS

To understand a forward contract, it is helpful to first consider the process of buying or selling stock. Such a transaction entails at least three separate steps: (1) the buyer and seller agree to transact and set the price to be paid, (2) cash is transferred from the buyer to the seller, and (3) shares are transferred from the seller to the buyer. Typically, steps 2 and 3 occur shortly after the buyer and seller agree to transact. However, as a logical matter, a price could be set today and the transfer of shares and cash could then occur at a specified date in the future.

This is in fact the definition of a forward contract: It sets today the terms at which you buy or sell an asset or commodity at a specific time in the future. A forward contract does the following:

- Specifies the quantity and exact type of the asset or commodity the seller must deliver.
- Specifies delivery logistics, such as time, date, and place.
- Specifies the price the buyer will pay at the time of delivery.
- Obligates the seller to sell and the buyer to buy, subject to the above specifications.

The time at which the contract settles is called the expiration date. The asset or commodity on which the forward contract is based is called the underlying asset. Apart from commissions and bid-ask spreads, a forward contract requires no initial payment or premium. The contractual forward price simply represents the price at which consenting adults agree today to transact in the future, at which time the buyer pays the seller the forward price and the seller delivers the asset.

Futures contracts are similar to forward contracts in that they create an obligation to buy or sell at a predetermined price at a future date. We can think of them as interchangeable.

Figure 1 shows futures price listings from the Wall Street Journal for futures contracts on several stock indices, including the Dow Jones Industrial Average (DJ 30) and the Standard and Poor's 500 (S&P 500). The indices are the underlying assets for the contracts. (A stock index is the average price of a group of stocks. In these examples we work with this group price rather than the price of just one stock.) The first column of the listing gives the expiration month. The columns that follow show the price at the beginning of the day (the open), the high and low during the day, and the settlement price, which reflects the last transactions of the day.

The listing also gives the price change from the previous day and open interest, which measures the number of contracts outstanding. (Since each trade of a contract has both a buyer and a seller, a buyer-seller pair counts as one contract.) Finally, the head of the listing tells us where the contracts trade (the Chicago Board of Trade [CBT], Chicago Mercantile Exchange [CME] and the Intercontinental Exchange[ICE]), and the size of the contract, which for the S&P 500, for example, is 250 times the index value. Note that there is also an S&P 500 "mini" contract. This is the same as the S&P 500 contract except for scale: The Mini S&P 500 futures contract is one-fifth the size of the regular S&P 500 futures contract. The mini contracts were introduced to make index futures more appealing to ordinary investors. There are many more exchange-traded stock index futures contracts than

TABLE I Some indexes on which futures contracts are traded.

<table><tr><td>Index</td><td>Exchange</td><td>Weights</td><td>Description</td></tr><tr><td>S&amp;P 500 Index</td><td>CME</td><td>Market</td><td>500 large U.S. stocks</td></tr><tr><td>DJ Industrial Average</td><td>CME</td><td>Price</td><td>30 large U.S. stocks</td></tr><tr><td>NASDAQ 100</td><td>CME</td><td>Market</td><td>100 large global non-financial firms listed on Nasdaq</td></tr><tr><td>S&amp;P Midcap 400</td><td>CME</td><td>Market</td><td>400 mid-cap U.S. stocks</td></tr><tr><td>Russell 1000</td><td>ICE</td><td>Market</td><td>Largest 1000 U.S. companies</td></tr><tr><td>Russell 2000</td><td>ICE</td><td>Market</td><td>2000 small-cap U.S. companies</td></tr><tr><td>MSCI World</td><td>LIFFE</td><td>Market</td><td>1500 stocks from 23 developed countries</td></tr><tr><td>MSCI EAFE (Europe, Australasia, Far East)</td><td>LIFFE, CME</td><td>Market</td><td>Stocks from 21 developed countries, excluding Canada and the U.S.</td></tr><tr><td>Euro Stoxx 50</td><td>Eurex</td><td>Market</td><td>50 blue-chip Eurozone stocks</td></tr><tr><td>Nikkei 225</td><td>SGX, OSE, CME</td><td>Price</td><td>225 stocks listed on the Tokyo Stock Exchange</td></tr><tr><td>Hang Seng</td><td>HKEx</td><td>Market</td><td>43 of the largest companies on the Hong Kong Stock Exchange</td></tr><tr><td>DAX</td><td>Eurex</td><td>Market</td><td>30 large German companies listed on the Frankfurt Stock Exchange</td></tr><tr><td>S&amp;P Goldman Sachs Commodity Index</td><td>CME</td><td>Production</td><td>Wide range of commodities on which futures contracts are traded</td></tr></table>

Abbreviations: CME = Chicago Mercantile Exchange, ICE = Intercontinental Exchange, LIFFE = London International Financial Futures Exchange, SGX = Singapore Exchange, OSE = Osaka Stock Exchange, HKEx = Hong Kong Exchange and Clearing. For the weights, "market" means weights are proportional to market capitalization, "price" means weights are proportional to the stock price, "production" means weights are proportional to global production.

those in Figure 1, both in the United States and around the world. Table 1 is a non-exhaustive list of global stock indexes.

The price quotes in Figure 1 are from April. The prices are therefore set in April for purchase of the index in later months. For example, the December futures settlement price for the S&P 500 index is $1197.10^{2}$. By contrast, the current S&P index price that day (not in Figure 1) is 1210.65. This is the spot price for the index—the market price for immediate delivery of the index.

There are also futures contracts on interest rates and commodities. Futures are widely used in risk management and as an alternative way to invest in the underlying asset.

Agricultural futures (such as corn and soybeans) can be used by farmers and others to hedge crop prices. Box 1 discusses an unsuccessful proposal for a new futures contract that was in the news in 2003.

In this chapter we take prices as given and examine profit and loss on a forward contract. We will also see how a position in a forward contract is similar to and different from alternative investments, such as a direct investment in the underlying index.

# BOX I: Terrorism Futures?

Newspaper readers in July 2003 were undoubtedly startled to see the headline "Pentagon Prepares a Futures Market on Terror Attacks" (New York Times, July 29, 2003, p. A1). The article continued:

Traders bullish on a biological attack on Israel or bearish on the chances of a North Korean missile strike would have the opportunity to bet on the likelihood of such events on a new Internet site established by the Defense Advanced Research Projects Agency.

The Pentagon called its latest idea a new way of predicting events and part of its search for the "broadest possible set of new ways to prevent terrorist attacks."

Critics immediately attacked the plan:

Two Democratic senators who reported the plan called it morally repugnant and grotesque…. One of the two senators, Byron L. Dorgan of North Dakota, said the idea seemed so preposterous that he had trouble persuading people it was not a hoax. "Can you imagine," Mr. Dorgan asked, "if another country set up a betting parlor so that people could go in … and bet on the assassination of an American political figure?"

The other critic, Senator Ron Wyden of Oregon, described the plan:

You may think early on that Prime Minister X is going to be assassinated. So you buy the futures contracts for 5 cents each. As more people begin to think the person's going to be assassinated, the cost of the contract could go up, to 50 cents. The payoff if he's assassinated is 1 per future. So if it comes to pass, and those who bought at 5 cents make 95 cents. Those who bought at 50 cents make 50 cents.

Later the same day (July 29), this headline appeared on the New York Times website: "Pentagon Abandons Plan for Futures Market on Terror."

Before dropping the plan, Defense officials defended it: "Research indicates that markets are extremely efficient, effective, and timely aggregators of dispersed and even hidden information. Futures markets have proven themselves to be good at predicting such things as elections results; they are often better than expert opinions."

A common concern about futures markets is the possibility that markets can be manipulated by better informed traders. The possibility of manipulation in this case was described as a "technical challenge and uncertainty." The natural worry was that terrorists would use the futures market to make money from attacks, or to mislead authorities about where they would attack.

Payoff after 6 months from a long S&R forward contract and a short S&R forward contract at a forward price of $1020$. If the index price in 6 months is $1020$, both the long and short have a 0 payoff. If the index price is greater than $1020$, the long makes money and the short loses money. If the index price is less than $1020$, the long loses money and the short makes money.

TABLE 2

<table><tr><td rowspan="2">S&amp;R Indexin 6 Months</td><td colspan="2">S&amp;R Forward</td></tr><tr><td>Long</td><td>Short</td></tr><tr><td>900</td><td>-＄120</td><td>＄120</td></tr><tr><td>950</td><td>-70</td><td>70</td></tr><tr><td>1000</td><td>-20</td><td>20</td></tr><tr><td>1020</td><td>0</td><td>0</td></tr><tr><td>1050</td><td>30</td><td>-30</td></tr><tr><td>1100</td><td>80</td><td>-80</td></tr></table>

# The Payoff on a Forward Contract

Every forward contract has both a party agreeing to buy and one agreeing to sell. The term long is used to describe the buyer and short is used to describe the seller. Generally, a long position is one that makes money when the price goes up and a short is one that makes money when the price goes down. Because the long has agreed to buy at the fixed forward price, a long position profits if prices rise.

The payoff to a contract is the value of the position at expiration. The payoff to a long forward contract is

$$
\text{Payoff} = \text{Spot} - \text{Forward} \tag{1}
$$

Because the short has agreed to sell at the fixed forward price, the short profits if prices fall. The payoff to a short forward contract is

$$
\text{Payoff} = \text{Forward price} - \text{Spot price at expiration} \tag{2}
$$

To illustrate these calculations, consider a forward contract on a hypothetical stock index. Suppose the non-dividend-paying S&R ("Special and Rich") 500 index has a current price of $1000$ and the 6-month forward price is $1020$. The holder of a long position in the S&R forward contract is obligated to pay $1020$ in 6 months for one unit of the index. The holder of the short position is obligated to sell one unit of the index for $1020$. Table 2 lists the payoff on the position for various possible future values of the index.

# FIGURE 2

Long and short forward positions on the S&R 500 index.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/5e9b885ffb4ed21b3224c25f15ec0e75ab2c9a95a634079116d87d0580846b22.jpg)

Example 1. Suppose the index price is \$1050 in 6 months. A holder who entered a long position at a forward price of \$1020 is obligated to pay \$1020 to acquire the index, and hence earns $1050 - $1020 = \$30 per unit of the index. The short is likewise obligated to sell for \$1020, and thus loses \$30.

This example illustrates the mechanics of a forward contract, showing why the long makes money when the price rises and the short makes money when the price falls.

# Graphing the Payoff on a Forward Contract

We can graph the information in Table 2 to show the payoff in 6 months on the forward contract as a function of the index. Figure 2 graphs the long and short positions, with the index price at the expiration of the forward contract on the horizontal axis and payoff on the vertical axis. As you would expect, the two positions have a zero payoff when the index price in 6 months equals the forward price of 1020. The graph for the short forward is a mirror image (about the x-axis) of the graph for the long forward. For a given value of the index, the payoff to the short is exactly the opposite of the payoff to the long. In other words, the gain to one party is the loss to the other.

This kind of graph is widely used because it summarizes the risk of the position at a glance.

# Comparing a Forward and Outright Purchase

The S&R forward contract is a way to acquire the index by paying  \$1020 after 6 months. An alternative way to acquire the index is to purchase it outright at time 0, paying\$ 1000. Is

# FIGURE 3

Comparison of payoff after 6 months of a long position in the S&R index versus a forward contract in the S&R index.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/418836ab426819e33d42da1389511c672adcb11984302a04578a07475d8748f0.jpg) there any advantage to using the forward contract to buy the index, as opposed to purchasing it outright?

If we buy the S&R index today, it costs us 1000. The value of the position in 6 months is the value of the S&R index. The payoff to a long position in the physical S&R index is graphed in Figure 3. For comparison, the payoff to the long forward position, is graphed as well. Note that the axes have different scales in Figures 3 and 2.

To see how Figure 3 is constructed, suppose the S&R index price is \$0 after 6 months. If the index price is \$0, the physical index will be worth \$0; hence we plot a 0 on the y-axis against 0 on the x-axis. Similarly, for all other prices of the S&R index, the payoff equals the value of the S&R index. For example, if we own the index and the price in 6 months is \$750, the value of the position is 750.

If the index price in 6 months is 0, the payoff to the forward contract, using equation (1), is

$$
\text {P a y o f t} = 0 - \$ 1 0 2 0 = - \$ 1 0 2 0
$$

If instead the index price is \$1020, the long index position will be worth \$1020 and the forward contract will be worth 0.

With both positions, we own the index after 6 months. What the figure does not reflect, however, is the different initial investments required for the two positions. With the cash index, we invest  \$1000 initially and then we own the index. With the forward contract, we invest\$ 0 initially and \$1020 after 6 months; then we own the index. The financing of the two positions is different. The payoff graph tells us how much money we end up with after 6 months, but does not account for the initial \$1000 investment with the outright purchase. We will refer to a position that has been paid in full as funded, and one for which payment is deferred as unfunded. In this example, the index position is funded and the forward contract is unfunded. Figure 3 is accurate, but it does not answer our question—namely, whether there is an advantage to either a forward purchase or an outright purchase.

Both positions give us ownership of the S&R index after 6 months. We can compare them fairly if we equate the amounts initially invested and then account for interest earned over the 6 months. We can do this in either of two equivalent ways:

1. Invest \$1000 in zero-coupon bonds (for example, Treasury bills) along with the forward contract, in which case each position initially costs \$1000 at time 0. This creates a funded position in the forward contract.
 2. Borrow to buy the physical S&R index, in which case each position initially costs 0 at time 0. This creates an unfunded position in the index.

Suppose the 6-month interest rate is 2\%. With alternative 1, we pay \$1000 today. After 6 months the zero-coupon bond is worth $1000 × 1.02 = $1020. At that point, we use the bond proceeds to pay the forward price of \$1020. We then own the index. The net effect is that we pay \$1000 initially and own the index after 6 months, just as if we bought the index outright. Investing \$1000 and at the same time entering a long forward contract mimics the effect of buying the index outright.

With alternative 2, we borrow  \$1000 to buy the index, which costs\$ 1000. Hence we make no net cash payment at time 0. After 6 months we owe \$1000 plus interest. At that time we repay  $1000 \times 1.02 =$ 1020 for the borrowed money. The net effect is that we invest nothing initially, and after six months pay \$1020. We also own the index. Borrowing to buy the stock therefore mimics the effect of entering into a long forward contract.

We conclude that when the index pays no dividends, the only difference between the forward contract and the cash index investment is the timing of a payment that will be made for certain. Therefore, we can compare the two positions by using the interest rate to shift the timing of payments. In the above example, we conclude that the forward contract and the cash index are equivalent investments, differing only in the timing of the cash flows. Neither form of investing has an advantage over the other.

This analysis suggests a way to systematically compare positions that require different initial investments. We can assume that we borrow any required initial payment. At expiration, we receive the payoff from the contract, and repay any borrowed amounts. We will call this the net payoff or profit. Because this calculation accounts for differing initial investments in a simple fashion, we will primarily use profit rather than payoff diagrams. Note that the payoff and profit diagrams are the same for a forward contract because it requires no initial investment.

To summarize, a payoff diagram graphs the cash value of a position at a point in time. A profit diagram subtracts from the payoff the future value of the investment in the position.

This discussion raises a question: Given our assumptions, should we really expect the forward price to equal 1020, which is the future value of the index? The answer in this case is yes.

# FIGURE 4

Payoff diagram for a long S&R forward contract, together with a zero-coupon bond that pays 1020 at maturity. Summing the value of the long forward plus the bond at each S&R Index price gives the line labeled "Forward + bond."

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/489a4cc868e387e2ffaa85377ef0541165bb938efeea019e470bcc30cfe3d459.jpg)

# Zero-Coupon Bonds in Payoff and Profit Diagrams

The preceding discussion showed that the long forward contract and outright purchase of the physical S&R index are essentially the same once we take time value of money into account. Buying the physical index is like entering into the forward contract and simultaneously investing 1000 in a zero-coupon bond. We can see this same point graphically by using a payoff diagram where we include a zero-coupon bond.

Suppose we enter into a long S&R index forward position, and at the same time purchase a  \$1000 zero-coupon bond, which will pay\$ 1020 after 6 months. (This was alternative 1 in the previous section.) Algebraically, the payoff to the forward plus the bond is

$$
\begin{array}{l} \text {F o r w a r d} + \text {b o n d} = \underbrace {\text {S p o t p r i c e a t e x p i r a t i o n} - \$ 1 0 2 0} _ {\text {F o r w a r d p a y o f f}} + \underbrace {\$ 1 0 2 0} _ {\text {B o n d p a y o f f}} \\ = \text {S p o t} \\ \end{array}
$$

This is the same as the payoff to investing in the physical index.

The payoff diagram for this position is an easy modification of Figure 3. We simply add a line representing the value of the bond after 6 months (1000 \times 1.02 = \1020), and then add the bond payoff to the forward payoff. This is graphed in Figure 4. The forward plus bond looks exactly like the physical index in Figure 3.

What is the profit diagram corresponding to this payoff diagram? For the forward contract, profit is the same as the payoff because there is no initial investment. Profit for the forward plus bond is obtained by subtracting the future value of the initial investment. The initial investment was the cost of the bond,  \$1000. Its future value is, by definition,\$ 1020, the value of the bond after 6 months. Thus, the profit diagram for a forward contract plus a bond is obtained by ignoring the bond! Put differently, adding a bond to a position leaves a profit diagram unaffected.

Depending on the context, it can be helpful to draw either payoff or profit diagrams. Bonds can be used to shift payoff diagrams vertically, but they do not change the profit calculation.

# Cash Settlement Versus Delivery

The foregoing discussion assumed that at expiration of the forward contract, the contract called for the seller (the party short the forward contract) to deliver the cash S&R index to the buyer (the party long the forward contract). However, a physical transaction in a broad stock index will likely have significant transaction costs. An alternative settlement procedure that is widely used is cash settlement. Instead of requiring delivery of the actual index, the forward contract settles financially. The two parties make a net cash payment, which yields the same cash flow as if delivery had occurred and both parties had then closed out their positions. We can illustrate this with an example.

Example 2. Suppose that the S&R index at expiration is \$1040. Because the forward price is \$1020, the long position has a payoff of \$20. Similarly, the short position loses \$20. With cash settlement, the short simply pays \$20 to the long, with no transfer of the physical asset, and hence no transaction costs. It is as if the long paid \$1020, acquired the index worth 1040, and then immediately sold it with no transaction costs.

If the S&R index price at expiration had instead been \$960, the long position would have a payoff of -\$60 and the short would have a payoff of \$60. Cash settlement in this case entails the long paying \$60 to the short.

Cash settlement is feasible only when there is an accepted reference price upon which the settlement can be based. Cash settlement is not limited to forward contracts—virtually any financial contract can be settled using cash rather than delivery.

# Credit Risk

Any forward or futures contract—indeed, any derivatives contract—has credit risk, which means there is a possibility that the counterparty who owes money fails to make a payment. If you agree to sell the index in one year at a fixed price and the spot price turns out to be lower than the forward price, the counterparty is obligated to buy the index for more than it is worth. You face the risk that the counterparty will for some reason fail to pay the forward price for the index. Similarly, the counterparty faces the risk that you will not fulfill the contract if the spot price in 1 year turns out to be higher than the forward price.

With exchange-traded contracts, the exchange goes to great lengths to minimize this risk by requiring collateral of all participants and being the ultimate counterparty in all transactions. With over-the-counter contracts, the fact that the contracts are transacted directly between two parties means that each counterparty bears the credit risk of the other.[6]

Credit risk is an important problem with all derivatives, but it is also quite complicated. Credit checks of counterparties and credit protections such as collateral and bank letters of credit are commonly employed to guard against losses from counterparty default.

# 2. CALL OPTIONS

We have seen that a forward contract obligates the buyer (the holder of the long position) to pay the forward price at expiration, even if the value of the underlying asset at expiration is less than the forward price. Because losses are possible with a forward contract, it is natural to wonder: Could there be a contract where the buyer has the right to walk away from the deal?

The answer is yes; a call option is a contract where the buyer has the right to buy, but not the obligation to buy. Here is an example illustrating how a call option works at expiration.

Example 3. Suppose that the call buyer agrees to pay \$1020 for the S&R index in 6 months but is not obligated to do so. (The buyer has purchased a call option.) If in 6 months the S&R price is \$1100, the buyer will pay \$1020 and receive the index. This is a payoff of \$80 per unit of the index. If the S&R price is 900, the buyer walks away.

Now think about this transaction from the seller's point of view. The buyer is in control of the option, deciding when to buy the index by paying 1020. Thus, the rights of the option buyer are obligations for the option seller.

Example 4. If in 6 months the S&R price is \$1100, the seller will receive \$1020 and give up an index worth more, for a loss of \$80 per unit of the index. If the S&R price is less than \$1020, the buyer will not buy, so the seller has no obligation. Thus, at expiration, the seller will have a payoff that is zero (if the S&R price is less than \$1020) or negative (if the S&R price is greater than \$1020).

Does it seem as if something is wrong here? Because the buyer can decide whether to buy, the seller cannot make money at expiration. This situation suggests that the seller must, in effect, be "bribed" to enter into the contract in the first place. At the time the buyer and seller agree to the contract, the buyer must pay the seller an initial price, the premium. This initial payment compensates the seller for being at a disadvantage at expiration. Contrast this with a forward contract, for which the initial premium is zero.

# Option Terminology

Here are some key terms used to describe options:

Strike price. The strike price, or exercise price, of a call option is what the buyer pays for the asset. In the example above, the strike price was 1020. The strike price can be set at any value.

Exercise. The exercise of a call option is the act of paying the strike price to receive the asset. In Example 3, the buyer decided after 6 months whether to exercise the option—that is, whether to pay 1020 (the strike price) to receive the S&R index.

Expiration. The expiration of the option is the date by which the option must either be exercised or it becomes worthless. The option in Example 3 had an expiration of 6 months.

Exercise style. The exercise style of the option governs the time at which exercise can occur. In the above example, exercise could occur only at expiration. Such an option is said to be a European-style option. If the buyer has the right to exercise at any time during the life of the option, it is an American-style option. If the buyer can only exercise during specified periods, but not for the entire life of the option, the option is a Bermudan-style option. (The terms "European" and "American," by the way, have nothing to do with geography. European, American, and Bermudan options are bought and sold worldwide.)

To summarize, a European call option gives the owner of the call the right, but not the obligation, to buy the underlying asset on the expiration date by paying the strike price. The option described in Examples 3 and 4 is a 6-month European-style S&R call with a strike price of 1020. The buyer of the call can also be described as having a long position in the call.

For the time being, we will discuss European-style options exclusively. We do this because European options are the simplest to discuss and are also quite common in practice. Most exchange-traded options are American.

# Payoff and Profit for a Purchased Call Option

We can graph call options as we did forward contracts. The buyer is not obligated to buy the index, and hence will only exercise the option if the payoff is greater than zero. The algebraic expression for the payoff to a purchased call is therefore

$$
P u r c h a s e d \quad \text {c a l l p a y o f} = \max  [ 0, \text {s p o t p r i c e a t e x p i r a t i o n - s t r i k e p r i c e} ] \tag {3}
$$

The expression $\max[a, b]$ means take the greater of the two values $a$ and $b$. (Spreadsheets contain a max function, so it is easy to compute option payoffs in a spreadsheet.)

Example 5. Consider a call option on the S&R index with 6 months to expiration and a strike price of \$1000. Suppose the index in 6 months is \$1100. Clearly it is worthwhile to pay the \$1000 strike price to acquire the index worth \$1100. Using equation (3), the call payoff is

$$
\max  [ 0, \mathbb {S} 1 1 0 0 - \mathbb {S} 1 0 0 0 ] = \mathbb {S} 1 0 0
$$

If the index is 900 at expiration, it is not worthwhile paying the \$1000 strike price to buy the index worth \$900. The payoff is then

$$
\max  [ 0, \mathbb {S} 9 0 0 - \mathbb {S} 1 0 0 0 ] = \mathbb {S} 0
$$

As discussed before, the payoff does not take account of the initial cost of acquiring the position. For a purchased option, the premium is paid at the time the option is acquired. In computing profit at expiration, suppose we defer the premium payment; then by the time of expiration we accrue 6 months' interest on the premium. The option profit is computed as

$$
\begin{array}{l} P u r c h a s e d \quad c a l l \quad p r o f i t = \max  [ 0, \text {s p o t} \quad \text {p r i c e} - \text {s t r i k e} \quad \text {p r i c e} ] \\ - \text {f u t u r e v a l u e o f o p t i o n p r e m i u m} \\ \end{array}
$$

# Box 2: How Do You Buy an Option?

How would you actually buy an option? The quick answer is that buying an option is just like buying a stock. Option premiums are quoted just like stock prices. Figure 5 provides an example. (For current quotes see, for example, http://www.cboe.com; you can find bid and ask prices at the Chicago Board Options Exchange.) Using either an online or flesh-and-blood broker, you can enter an order to buy an option. As with stocks, in addition to the option premium, you pay a commission, and there is a bid-ask spread.

Options on numerous stocks are traded on exchanges, and for any given stock or index, there can be over a hundred options available, differing in strike price and expiration date. (In

July 2012, a quick count at the Chicago Board Options Exchange website showed over 1200 options, with differing strikes and maturities, both puts and calls, with the S&P 500 index as the underlying asset.) Options may be either American or European. If you buy an American option, you have to be aware that exercising the option prior to expiration may be optimal. Thus, you need to have some understanding of why and when exercise might make sense.

You can also sell, or write, options. In this case, you have to post collateral (called margin) to protect others against the possibility you will default. See Appendix A for a discussion of this and other issues.

The following example illustrates the computation of the profit.

Example 6. Use the same option as in Example 5, and suppose that the risk-free rate is 2\% over 6 months. Assume that the index spot price is 1000 and that the premium for this call is 93.81.^{7} Hence, the future value of the call premium is 93.81 \times 1.02 = 95.68. If the S&R index price at expiration is 1100, the owner will exercise the option. Using equation (4), the call profit is

$$
\max  [ 0, \mathbb {S} 1 1 0 0 - \mathbb {S} 1 0 0 0 ] - \mathbb {S} 9 5. 6 8 = \mathbb {S} 4. 3 2
$$

If the index is 900 at expiration, the owner does not exercise the option. It is not worthwhile paying the \$1000 strike price to buy the index worth \$900. Profit is then

$$
\max  [ 0, \mathbb {S} 9 0 0 - \mathbb {S} 1 0 0 0 ] - \mathbb {S} 9 5. 6 8 = - \mathbb {S} 9 5. 6 8
$$ reflecting the loss of the premium.


We graph the call payoff by computing, for any index price at expiration, the payoff on the option position as a function of the price. We graph the call profit by subtracting from this the future value of the option premium. Table 3 computes the payoff and profit at different index values, computed as in Examples 5 and 6. Note that because the strike price is fixed, a higher market price at expiration of the S&R index benefits the call buyer.

Payoff and profit after 6 months from a purchased 1000-strike S&R call option with a future value of premium of  \$95.68. The option premium is assumed to be\$ 93.81 and the effective interest rate is  $2\%$  over 6 months. The payoff is computed using equation (3), and the profit using equation (4).

TABLE 3

<table><tr><td>S&R Index in 6 Months</td><td>Call Payoff</td><td>Future Value of Premium</td><td>Call Profit</td></tr><tr><td>800</td><td>$0</td><td>-$95.68</td><td>-95.68</td></tr><tr><td>850</td><td>0</td><td>-95.68</td><td>-95.68</td></tr><tr><td>900</td><td>0</td><td>-95.68</td><td>-95.68</td></tr><tr><td>950</td><td>0</td><td>-95.68</td><td>-95.68</td></tr><tr><td>1000</td><td>0</td><td>-95.68</td><td>-95.68</td></tr><tr><td>1050</td><td>50</td><td>-95.68</td><td>-45.68</td></tr><tr><td>1100</td><td>100</td><td>-95.68</td><td>4.32</td></tr><tr><td>1150</td><td>150</td><td>-95.68</td><td>54.32</td></tr><tr><td>1200</td><td>200</td><td>-95.68</td><td>104.32</td></tr></table>

Figure 5 graphs the call payoff that is computed in Table 3. The graph clearly shows the "optionality" of the option: Below the strike price of  \$1000, the payoff is zero, while it is positive and increasing above\$ 1000.

The last column in Table 3 computes the call profit at different index values. Because a purchased call and a forward contract are both ways to buy the index, it is interesting to contrast the two. Thus, Figure 6 plots the profit on both a purchased call and a long forward contract. Note that profit and payoff diagrams for an option differ by the future value of the premium, whereas for a forward contract they are the same.

If the index rises, the forward contract is more profitable than the option because it does not entail paying a premium. If the index falls sufficiently, however, the option is more profitable because the most the option buyer loses is the future value of the premium. This difference suggests that we can think of the call option as an insured position in the index. Insurance protects against losses, and the call option does the same. Carrying the analogy a bit further, we can think of the option premium as, in part, reflecting the cost of that insurance. The forward, which is free, has no such insurance, and potentially has losses larger than those on the call.

This discussion highlights the important point that there are always trade-offs in selecting a position. The forward contract outperforms the call if the index rises and underperforms the call if the index falls sufficiently. When all contracts are fairly priced, you will not find a contract that has higher profits for all possible index market prices.

# Payoff and Profit for a Written Call Option

Now let's look at the option from the point of view of the seller. The seller is said to be the option writer, or to have a short position in a call option. The option writer is the

# FIGURE 5

The payoff at expiration of a purchased S&R call with a 1000 strike price.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/29f0cdfc9cfd8357ab15a45b2cb224d71d9476f42d3ad22bb30888a0448072bb.jpg)
Payoff ($)

# FIGURE 6

Profit at expiration for purchase of a 6-month S&R index call with a strike price of 1000 versus profit on a long S&R index forward position.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/13ea16d1a6e6fa32599cad53e75c4af3e83633277eea6edcf0e4547a831108d1.jpg)
Profit ($) counterparty to the option buyer. The writer receives the premium for the option and then has an obligation to sell the underlying security in exchange for the strike price if the option buyer exercises the option.


The payoff and profit to a written call are just the opposite of those for a purchased call:

Written call payoff $= -\max[0, \text{spot price at expiration - strike price}] \tag{5}$

Written call profit $= -\max[0, \text{spot price at expiration - strike price}] \tag{6}$

+ future value of option premium

This example illustrates the option writer's payoff and profit. Just as a call buyer is long in the call, the call seller has a short position in the call.

Example 7. Consider a 1000-strike call option on the S&R index with 6 months to expiration. At the time the option is written, the option seller receives the premium of 93.81.

Suppose the index in 6 months is \$1100. It is worthwhile for the option buyer to pay the \$1000 strike price to acquire the index worth \$1100. Thus, the option writer will have to sell the index, worth \$1100, for the strike price of 1000. Using equation (5), the written call payoff is
$$
-\max[0, 1100 - 1000] = -100
$$
The premium has earned  $2\%$  interest for 6 months and is now worth 95.68. Profit for the written call is
$$
-100 + 95.68 = -4.32
$$
If the index is 900 at expiration, it is not worthwhile for the option buyer to pay the \$1000 strike price to buy the index worth \$900. The payoff is then

$$
- \max  [ 0, \$ 9 0 0 - \$ 1 0 0 0 ] = \$ 0.
$$

The option writer keeps the premium, for a profit after 6 months of 95.68.

Figure 7 depicts a graph of the option writer's profit, graphed against a short forward contract. Note that it is the mirror image of the call buyer's profit in Figure 6.

# FIGURE 7

Profit for the writer of a 6-month S&R call with a strike of 1000 versus profit for a short S&R forward.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/bc8dffd68309a4590b02e16a93876ea3e35f8677405466378f842ea5891a4f44.jpg)

# 3. PUT OPTIONS

We introduced a call option by comparing it to a forward contract in which the buyer need not buy the underlying asset if it is worth less than the agreed-to purchase price. Perhaps you wondered if there could also be a contract in which the seller could walk away if it is not in his or her interest to sell. The answer is yes. A put option is a contract where the seller has the right to sell, but not the obligation. Here is an example to illustrate how a put option works.

Example 8. Suppose that the seller agrees to sell the S&R index for \$1020 in 6 months but is not obligated to do so. (The seller has purchased a put option.) If in 6 months the S&R price is \$1100, the seller will not sell for \$1020 and will walk away. If the S&R price is \$900, the seller will sell for \$1020 and will earn \$120 at that time.

A put must have a premium for the same reason a call has a premium. The buyer of the put controls exercise; hence the seller of the put will never have a positive payoff at expiration. A premium paid by the put buyer at the time the option is purchased compensates the put seller for this no-win position.

It is important to be crystal clear about the use of the terms "buyer" and "seller" in the above example, because there is potential for confusion. The buyer of the put owns a contract giving the right to sell the index at a set price. Thus, the buyer of the put is a seller of the index! Similarly, the seller of the put is obligated to buy the index, should the put buyer decide to sell. Thus, the buyer of the put is potentially a seller of the index, and the seller of the put is potentially a buyer of the index. (If thinking through these transactions isn't automatic for you now, don't worry. It will become second nature as you continue to think about options.)

Other terminology for a put option is the same as for a call option, with the obvious change that "buy" becomes "sell." In particular, the strike price is the agreed-upon selling price (1020 in Example 8), exercising the option means selling the underlying asset in exchange for the strike price, and the expiration date is that on which you must exercise the option or it is valueless. As with call options, there are European, American, and Bermudan put options.

# Payoff and Profit for a Purchased Put Option

We now see how to compute payoff and profit for a purchased put option. The put option gives the put buyer the right to sell the underlying asset for the strike price. The buyer does this only if the asset is less valuable than the strike price. Thus, the payoff on the put option is

$$
\text{Put} = \max[0, \text{strike price - spot price at expiration}] \tag{7}
$$

The put buyer has a long position in the put. Here is an example.

Example 9. Consider a put option on the S&R index with 6 months to expiration and a strike price of 1000.

Suppose the index in 6 months is \$1100. It is not worthwhile to sell the index worth \$1100 for the 1000 strike price. Using equation (7), the put payoff is

$$
\max[0, 1000 - 900] = 100
$$

If the index were 900 at expiration, it is worthwhile selling the index for 1000. The payoff is then

$$
\max[0, 1100 - 1000] = 100
$$

As with the call, the payoff does not take account of the initial cost of acquiring the position. At the time the option is acquired, the put buyer pays the option premium to the put seller; we need to account for this in computing profit. If we borrow the premium amount, we must pay 6 months' interest. The option profit is computed as

$$
\text{Purchased put profit} = \max[0, \text{strike price} - \text{spot price at expiration}] \tag{8}
$$

- future value of option premium

The following example illustrates the computation of profit on the put.

Example 10. Use the same option as in Example 9, and suppose that the risk-free rate is 2\% over 6 months. Assume that the premium for this put is \$74.20. The future value of the put premium is \$74.20 × 1.02 = 75.68.

If the S&R index price at expiration is 1100, the put buyer will not exercise the option. Using equation (8), profit is

$$
\max[0, 900 - 1000] - 95.68 = -95.68
$$
\max[0, 1100 - 1000] - 95.68 = 4.32
$$

Table 4 computes the payoff and profit on a purchased put for a range of index values at expiration. Whereas call profit increases as the value of the underlying asset increases, put profit increases as the value of the underlying asset decreases.

Because a put is a way to sell an asset, we can compare it to a short forward position, which is a mandatory sale. Figure 8 graphs profit from the purchased put described in Table 4 against the profit on a short forward.

We can see from the graph that if the S&R index goes down, the short forward, which has no premium, has a higher profit than the purchased put. If the index goes up sufficiently, the put outperforms the short forward. As with the call, the put is like an insured forward contract. With the put, losses are limited should the index go up. With the short forward, losses are potentially unlimited.

# Payoff and Profit for a Written Put Option

Now we examine the put from the perspective of the put writer. The put writer is the counterparty to the buyer. Thus, when the contract is written, the put writer receives the premium. At expiration, if the put buyer elects to sell the underlying asset, the put writer must buy it.

TABLE 4
Profit after 6 months from a purchased 1000-strike S&R put option with a future value of premium of 75.68.

<table><tr><td>S&R Index in 6 Months</td><td>Put Payoff</td><td>Future Value of Premium</td><td>Put Profit</td></tr><tr><td>$800</td><td>$200</td><td>- $75.68</td><td>$124.32</td></tr><tr><td>850</td><td>150</td><td>-75.68</td><td>74.32</td></tr><tr><td>900</td><td>100</td><td>-75.68</td><td>24.32</td></tr><tr><td>950</td><td>50</td><td>-75.68</td><td>-25.68</td></tr><tr><td>1000</td><td>0</td><td>-75.68</td><td>-75.68</td></tr><tr><td>1050</td><td>0</td><td>-75.68</td><td>-75.68</td></tr><tr><td>1100</td><td>0</td><td>-75.68</td><td>-75.68</td></tr><tr><td>1150</td><td>0</td><td>-75.68</td><td>-75.68</td></tr><tr><td>1200</td><td>0</td><td>-75.68</td><td>-75.68</td></tr></table>

# FIGURE 8

Profit on a purchased S&R index put with a strike price of 1000 versus a short S&R index forward.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/c54c8b0f08848a29f9753d16d5b8fd7f08a07126695faabdd2e73b47c9d33fb9.jpg)

The payoff and profit for a written put are the opposite of those for the purchased put:

$$
\text{Written put payoff} = -\max[0, \text{strike price} - \text{spot price at expiration}] \tag{9}
$$

$$
\text{Written put profit} = -\max[0, \text{strike price} - \text{spot price at expiration}] \tag{10}
$$
+ \text {f u t u r e v a l u e o f o p t i o n p r e m i u m}
$$

The put seller has a short position in the put.

# FIGURE 9

Written S&R index put option with a strike of 1000 versus a long S&R index forward contract.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/4ff6d4c01b99ad7e75b605e7e7c0048951b7c8d0be2aab4b6f8f0c037cf47f21.jpg)

Example 11. Consider a 1000-strike put option on the S&R index with 6 months to expiration. At the time the option is written, the put writer receives the premium of 74.20.

Suppose the index in 6 months is  \$1100. The put buyer will not exercise the put. Thus, the put writer keeps the premium, plus 6 months' interest, for a payoff of 0 and profit of\$ 75.68.

If the index is \$900 in 6 months, the put owner will exercise, selling the index for \$1000. Thus, the option writer will have to pay \$1000 for an index worth \$900. Using equation (9), the written put payoff is
$$
-\max[0, 1000 - 900] = -100
$$
The premium has earned  $2 \%$ interest for 6 months and is now worth 75.68. Profit for the written put is therefore
$$
-100 + 75.68 = -24.32
$$
Figure 9 graphs the profit diagram for a written put. As you would expect, it is the mirror image of the purchased put.

# The "Moneyness" of an Option

Options are often described by their degree of moneyness. This term describes whether the option payoff would be positive if the option were exercised immediately. (The term is used to describe both American and European options even though European options cannot be exercised until expiration.) An in-the-money option is one which would have a positive payoff (but not necessarily positive profit) if exercised immediately. A call with a strike price less than the asset price and a put with a strike price greater than the asset price are both in-the-money.

An out-of-the-money option is one that would have a negative payoff if exercised immediately. A call with a strike price greater than the asset price and a put with a strike price less than the asset price are both out-of-the-money.

An at-the-money option is one for which the strike price is approximately equal to the asset price.

# 4. SUMMARY OF FORWARD AND OPTION POSITIONS

We have now examined six different positions: short and long forwards, and purchased and written calls and puts. There are different ways to categorize these positions. One way is by their potential for gain and loss. Table 5 summarizes the maximum possible gain and loss at maturity for forwards and European options.

Another way to categorize the positions is by whether the positions represent buying or selling the underlying asset. Those that represent buying are fundamentally long with respect to the underlying asset, while those that represent selling are fundamentally short with respect to the underlying asset. If you find yourself confused by "long" and "short," you can consult Box 3.

# Positions Long with Respect to the Index

The following positions are long in the sense that there are circumstances in which they represent either a right or an obligation to buy the underlying asset:

Long forward: An obligation to buy at a fixed price.

Purchased call: The right to buy at a fixed price if it is advantageous to do so.

Written put: An obligation of the put writer to buy the underlying asset at a fixed price if it is advantageous to the option buyer to sell at that price. (Recall that the option buyer decides whether or not to exercise.)

TABLE 5
Maximum possible profit and loss at maturity for long and short forwards and purchased and written calls and puts. FV(premium) denotes the future value of the option premium.

<table><tr><td>Position</td><td>Maximum Loss</td><td>Maximum Gain</td></tr><tr><td>Long forward</td><td>-Forward price</td><td>Unlimited</td></tr><tr><td>Short forward</td><td>Unlimited</td><td>Forward price</td></tr><tr><td>Long call</td><td>-FV(premium)</td><td>Unlimited</td></tr><tr><td>Short call</td><td>Unlimited</td><td>FV(premium)</td></tr><tr><td>Long put</td><td>-FV(premium)</td><td>Strike price - FV(premium)</td></tr><tr><td>Short put</td><td>FV(premium) - Strike price</td><td>FV(premium)</td></tr></table>

# Box 3: “Long” and “Short” Revisited

When you purchase an option you are said to have a long position in that option. Thus, a call that you purchase is a "long call" and a put that you purchase is a "long put." In both cases, you make money if the price of the option you purchased goes up. Similarly, any option that you sell is a short position in that option. A call that you sell is a "short call" and a put that you sell is a "short put."

The terms "long" and "short" can be confusing, however, because they are often used more generally. In this more general usage, a position is long with respect to $x$ if the value of the position goes up when $x$ goes up, and it is short with respect to $x$ if the value of the position goes down when $x$ goes up.

A purchased call is therefore long with respect to the stock, because the call becomes more valuable when the stock price goes up. Similarly, a purchased put is short with respect to the stock, because the put becomes more valuable when the stock price goes down. The case of a purchased put illustrates that a position can be simultaneously long with respect to one thing (its own price) and short with respect to something else (the price of the underlying asset).


Finally, a written put is a "short put" because you lose money if the put price goes up. However, the written put is long with respect to the stock, because the put price goes down, and hence the written put makes money, when the stock price goes up.

You may find that it takes a while to become comfortable with the long and short terminology. A position can be simultaneously long with respect to one thing and short with respect to something else, so you must always be clear about what you are long or short with respect to.

Figure 10 compares these three positions. Note that the purchased call is long when the asset price is greater than the strike price, and the written put is long when the asset price is less than the strike price. All three of these positions benefit from a higher index price.

# Positions Short with Respect to the Index

The following positions are short in the sense that there are circumstances in which they represent either a right or an obligation to sell the underlying asset:

Short forward: An obligation to sell at a fixed price.

Written call: An obligation of the call writer to sell the underlying asset at a fixed price if it is advantageous to the option holder to buy at that price (recall that the option buyer decides whether to exercise).

Purchased put: The right to sell at a fixed price if it is advantageous to do so.

Figure 11 compares these three positions. Note that the written call is short when the asset price is greater than the strike price, and the purchased put is short when the asset price is less than the strike price. All three of these positions benefit from a lower price of the index.

# FIGURE 10

Profit diagrams for the three basic long positions: long forward, purchased call, and written put.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/479f17b176e57798bee15807205f9343b31110d2d15eddae08dd677999ce6477.jpg)

# FIGURE 11

Profit diagrams for the three basic short positions: short forward, written call, and purchased put.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/6ba6f485c4d71ed2213f8c14a44fc20c30c45e93e707cbbd6f687b4412914f1b.jpg)

# 5. OPTIONS ARE INSURANCE

In many investment strategies using options, we will see that options serve as insurance against a loss. In what sense are options the same as insurance? In this section we answer this question by considering homeowner's insurance. You will see that options are literally insurance, and insurance is an option.

A homeowner's insurance policy promises that in the event of damage to your house, the insurance company will compensate you for at least part of the damage. The greater the damage, the more the insurance company will pay. Your insurance policy thus derives its value from the value of your house: It is a derivative.

# Homeowner's Insurance Is a Put Option

To demonstrate how homeowner's insurance acts as a put option, suppose that you own a house that costs 200,000 to build. To make this example as simple as possible, we assume that physical damage is the only thing that can affect the market value of the house.

Let's say you buy a $15,000 insurance policy to compensate you for damage to the house. Like most policies, this has a deductible, meaning that there is an amount of damage for which you are obligated to pay before the insurance company pays anything. Suppose the deductible is $25,000. If the house suffers $4,000 damage from a storm, you pay for all repairs yourself. If the house suffers $45,000 in damage from a storm, you pay $25,000 and the insurance company pays the remaining $20,000. Once damage occurs beyond the amount of the deductible, the insurance company pays for all further damage, up to $175,000. (Why $175,000? Because the house can be rebuilt for $200,000, and you pay $25,000 of that—the deductible—yourself.)

Let's graph the profit to you for this insurance policy. On the vertical axis is the profit on the insurance policy—the payoff less the insurance premium—and on the horizontal axis, the value of the house. If the house is undamaged (the house value is \$200,000) the payoff is zero, and profit is the loss from the unused insurance premium, \$15,000. If the house suffers \$50,000 damage, the insurance payoff is \$50,000 less the \$25,000 deductible, or \$25,000. The profit is $25,000 – $15,000 = \$10,000. If the house is completely destroyed, the policy pays \$175,000, and your profit is 160,000.

Figure 12 graphs the profit on the insurance policy. The insurance policy in Figure 12 has the same shape as the put option in Figure 8. An S&R put is insurance against a fall in the price of the S&R index, just as homeowner's insurance insures against a fall in the price of the house. Insurance companies are in the business of writing put options! The $15,000 insurance premium is like the premium of a put, and the $175,000 level at which insurance begins to make payments is like the strike price on a put.

The idea that a put option is insurance also helps us understand what makes a put option cheap or expensive. Two important factors are the riskiness of the underlying asset and the amount of the deductible. Just as with insurance, options will be more expensive when the underlying asset is riskier. Also, the option, like insurance, will be less expensive as the deductible gets larger (for the put option, this means lowering the strike price).

You have probably recognized that there are some practical differences between a financial put option and homeowner's insurance. One important difference is that the S&R put pays off no matter why the index price declines. Homeowner's insurance, on the other hand, pays off only if the house declines in value for specified reasons. In particular, a simple decline in real estate prices is not covered by typical homeowner's insurance policies. We avoided this complication by assuming at the outset that only damage could affect the value of the house.

# But I Thought Insurance Is Prudent and Put Options Are Risky . . .

If we accept that insurance and put options are the same thing, how do we reconcile this with the common idea that buying insurance is prudent and buying put options is risky?

# FIGURE 12

Profit from insurance policy on a 200,000 house.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/282cfe5de1e23b0d6be9c82828a6d1259c03bc3368d5afe4cf7d3c33dc2ea282.jpg)

The risk of a derivative or any other asset or security can only be evaluated in context. Figure 12 depicts the risk of an insurance contract without considering the risk of the insured asset. This would be like owning insurance on your neighbor's house. It would be "risky" because you would buy the insurance policy, and you would lose your entire investment if there were no insurance claim. We do not normally think of insurance like this, but it illustrates the point that an insurance policy is a put option on the insured asset.

In the same way, Figure 8 depicts the risk of a put option without considering the risk of any other positions an investor might be holding. In contrast to homeowner's insurance, many investors do own put options without owning the underlying asset. This is why options have a reputation for being risky while homeowner's insurance does not. With stock options it is possible to own the insurance without the asset. Of course, many investors who own put options also own the stock. For these investors, the risk is like that of insurance, which we normally think of as risk-reducing rather than risk-increasing.

# Call Options Are Also Insurance

Call options can also be insurance. Whereas a put option is insurance for an asset we already own, a call option is insurance for an asset we plan to own in the future. Put differently, a put option is insurance for a long position while a call option is insurance for a short position.

Return to the earlier example of the S&R index. Suppose that the current price of the S&R index is 1000 and that we plan to buy the index in the future. If we buy an S&R call option with a strike price of $1000, this gives us the right to buy S&R for a maximum cost of $1000/share. By buying a call, we have bought insurance against an increase in the price.


# 6. EXAMPLE: EQUITY-LINKED CDS

Although options and forwards are important in and of themselves, they are also commonly used as building blocks in the construction of new financial instruments. For example, banks and insurance companies offer investment products that allow investors to benefit from a rise in a stock index and that provide a guaranteed return if the market declines. We can "reverse-engineer" such equity-linked CDs and notes using the tools we have developed thus far.[10]

A simple $5\frac{1}{2}$ year CD with a return linked to the S&P 500 might have the following structure: At maturity, the CD is guaranteed to repay the invested amount, plus $70\%$ of the simple appreciation in the S&P 500 over that time.[11]

We can ask several questions about the CD:

- Is the CD fairly priced?
- How can we decompose the product in terms of options and bonds?
- How does the issuing bank hedge the risk associated with issuing the product?
- How does the issuing bank make a profit?

To understand this product, suppose the S&P index is 1300 initially and an investor invests $10,000. If the index is below 1300 after 5.5 years, the CD returns to the investor the original $10,000 investment. If the index is above 1300 after 5.5 years, the investor receives 10,000 plus 70\% of the percentage gain on the index. For example, if the index is 2200, the investor receives

$$
\$10,000 \times [1 + (2200/1300 - 1) \times 70\%] = \$14,846
$$

At first glance this product appears to permit gains but no losses. However, by now you are probably skeptical of a phrase like "gains but no losses"; the investor must pay something for an investment like this.

# Graphing the Payoff on the CD

As a first step in analyzing the CD, we will draw a payoff diagram. If we invest $10,000, we receive at least $10,000. If the index rises to $S_{\text{final}} > 1300$, we also receive on our investment 70\% of the rate of return

$$

\frac {S _ {\text {f i n a l}}}{1 3 0 0} - 1

$$

# FIGURE 13

Payoff at expiration to 10,000 investment in an equity-linked CD that repays the initial investment at expiration plus 70\% of the rate of appreciation of the market above 1300.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/aa604a1a84fd460449fb9d1fe9f0f1ebb95de62ebeb664b49980ce45d4a4a024.jpg)
Payoff (thousands of $)

TABLE 6
Payoff of equity-linked CD at expiration.

<table><tr><td>S&amp;P Index
After 5.5 Years</td><td>CD
Payoff</td></tr><tr><td>500</td><td>10,000.00</td></tr><tr><td>1000</td><td>10,000.00</td></tr><tr><td>1500</td><td>11,076.92</td></tr><tr><td>2000</td><td>13,769.23</td></tr><tr><td>2500</td><td>16,461.54</td></tr><tr><td>3000</td><td>19,153.85</td></tr></table>

Thus, the CD pays

$$

\$ 10,000 \times \left(1 + 0.7 \times \max \left[ 0, \frac {S _ {\text {f i n a l}}}{1 3 0 0} - 1 \right]\right) \tag {11}

$$

Figure 13 graphs the payoff at expiration to this investment in the CD.

Recall the discussion in Section 1 of incorporating a zero-coupon bond into a payoff diagram. Per unit of the index (there are  $10,000 / 1300 = 7.69$  units of the index in a  $\$10,000$  investment), the CD buyer receives 0.7 of an index call option, plus a zero-coupon bond paying  $\$1300$  at expiration.

Table 6 computes the payoff to the equity-linked CD for different values of the index.

# Economics of the CD

Now we are in a position to understand the economics of this product. Think about what happens if the index is below 1300 at expiration. We pay  \$10,000 and we receive\$ 10,000 back, plus an option. Thus, we have forgone interest on 10,000 in exchange for the possibility of receiving 70\% of the gains on the S&P. Suppose that the effective annual interest rate is 6\%; after 5½ years, the buyer has lost interest with a present value of

$$

\$ 10,000 \times (1.06) ^ {- 5.5} - \$ 10,000 = - \$ 2,742

$$

Essentially, the buyer forgoes interest in exchange for a call option on the index.

With this description we have reverse-engineered the CD, decomposing it in terms of an option and a bond. The question of whether the CD is fairly priced turns on whether the 2742 is a fair price for the index option implicit in the CD. Given information about the interest rate, the volatility of the index, and the dividend yield on the index, it is possible to price the option to determine whether the CD is fairly priced.

# Why Equity-Linked CDs?

With reverse-engineering, we see that an investor could create the equivalent of an equity-linked CD by buying a zero-coupon bond and 0.7 call options. Why, then, do products like this exist?

Consider what must be done to replicate the payoff. If a retail investor were to insure an index investment using options, the investor would have to learn about options, decide what maturity, strike price, and quantity to buy, and pay transaction costs. Exchange-traded options have at most 3 years to maturity, so obtaining longer-term protection requires rolling over the position at some point.

An equity-linked CD provides a prepackaged solution. It may provide a pattern of market exposure that many investors could not otherwise obtain at such low transaction costs.

The idea that a prepackaged deal may be attractive should be familiar to you. Supermarkets sell whole heads of lettuce—salad building blocks, as it were—and they also sell, at a premium price, lettuce already washed, torn into bite-sized pieces, and mixed as a salad. The transaction cost of salad preparation leads some consumers to prefer the prepackaged salads.

What does the financial institution get out of this? Just as the supermarket earns profit on prepackaged salads, the issuing bank wants to earn a transaction fee on the CD. When it sells a CD, the issuing bank borrows money (the zero-coupon bond portion of the CD) and receives the premium for writing a call option. The cost of the CD to the bank is the cost of the zero-coupon bond plus the cost of the call option. Obviously the bank would not issue the equity-linked CD in the first place unless it was less expensive than alternative ways to attract deposits, such as standard CDs. The equity-linked CD is risky because the bank has written a call, but the bank can manage this risk in several ways, one of which is to purchase call options from a dealer to offset the risk of having written calls. Using data from the early 1990s, Baubonis et al. (1993) estimated that issuers of equity-linked CDs

TABLE 7
Forwards, calls, and puts at a glance: A summary of forward and option positions.

<table><tr><td>Derivative Position</td><td>Position with Respect to Underlying Asset</td><td>Asset Price Contingency</td><td>Strategy</td></tr><tr><td>Long forward</td><td>Long (buy)</td><td>Always</td><td>Guaranteed purchase price</td></tr><tr><td>Short forward</td><td>Short (sell)</td><td>Always</td><td>Guaranteed sale price</td></tr><tr><td>Long call</td><td>Long (buy)</td><td>&gt; Strike</td><td>Insures against high price</td></tr><tr><td>Short call</td><td>Short (sell)</td><td>&gt; Strike</td><td>Sells insurance against high price</td></tr><tr><td>Long put</td><td>Short (sell)</td><td>&lt; Strike</td><td>Insures against low price</td></tr><tr><td>Short put</td><td>Long (buy)</td><td>&lt; Strike</td><td>Sells insurance against low price</td></tr></table> earned about  $3.5\%$  of the value of the CD as a fee, with about  $1\%$  as the transaction cost of hedging the written call.[12]


In this discussion we have viewed the equity-linked CD from several perspectives. The end-user is interested in the product and whether it meets a financial need at a fair cost. The market-maker (the bank in this case) is interested in making a profit without bearing risk from having issued the CD. And the economic observer is interested in knowing why equity-linked CDs exist. The three perspectives overlap, and a full explanation of the product touches on all of them.

# CHAPTER SUMMARY

Forward contracts and put and call options are the basic derivative instruments that can be used directly and that serve as building blocks for other instruments. A long forward contract represents an obligation to buy the underlying asset at a fixed price, a call option gives its owner the right (but not the obligation) to buy the underlying asset at a fixed price, and a put option gives its owner the right (but not the obligation) to sell the underlying asset at a fixed price. Payoff and profit diagrams are commonly used tools for evaluating the risk of these contracts. Payoff diagrams show the gross value of a position at expiration, and profit diagrams subtract from the payoff the future value of the cost of the position.

Table 7 summarizes the characteristics of forwards, calls, and puts, showing which are long or short with respect to the underlying asset. The table describes the strategy associated with each: Forward contracts guarantee a price, purchased options are insurance, and written options are selling insurance. Figure 14 provides a graphical summary of these positions.

# FIGURE 14

The basic profit diagrams: long and short forward, long and short call, and long and short put.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/a1abc709c31547e10aa9c12b42b790b8491b3a8ac34001fc3bdc7405e2dabdf6.jpg)
Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/7812ba5d81ca03dfed18e5995c7200e67d193b62fbc668a7220be5c3d60b24bc.jpg)
Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/4c3abfcf4a502339a741b4e93d19647e5aaf41f172be355760ff4d4b87bba55a.jpg)
Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/22f73a47a428ac3e5baacc43cbb346317e3f728a7388d3ddfa993f4995499f24.jpg)
Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/dfce61693007f773c485ee181300243dadb80cb9edb9abc874ce93e93454e0f7.jpg)
Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/f5b2800e589636f6b03c43deee235bdfbd2c9390dc1826fd8600b9fb10bb909b.jpg)
Profit

Options can also be viewed as insurance. A put option gives the owner the right to sell if the price declines, just as insurance gives the insured the right to sell (put) a damaged asset to the insurance company.

# FURTHER READING

Brokerages routinely supply options customers with an introductory pamphlet about options entitled Characteristics and Risks of Standardized Options. This is available online from http://www/optionsclearing.com. You can also obtain current option prices from websites such as the CBOE's and various brokerage sites.

The notion that options are insurance has been applied in practice. Sharpe (1976), for example, analyzed optimal pension funding policy taking into account pension insurance provided by the Pension Benefit Guaranty Corporation. Merton (1977a) observed that bank deposit insurance and in fact any loan guarantee can be modeled as a put option. Baubonis et al. (1993) discuss equity-linked CDs.

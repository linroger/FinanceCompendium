---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Questions
linter-yaml-title-alias: Questions
---

# Questions

1. How have prime rates and CD rates changed since 2020, as reported in Figure 23-1?
2. Calculate the spread between the prime rate and CD rate since 2020. How has the spread changed over the last several years?

chapter

# 24

OUTLINE

Derivative Securities Used to Manage Risk: Chapter Overview

Forward and Futures Contracts

Hedging with Forward Contracts

Hedging with Futures Contracts

Options

Basic Features of Options

Actual Interest Rate Options

Hedging with Options

Caps, Floors, and Collars

Risks Associated with Futures, Forwards, and Options

Swaps

Hedging with Interest Rate Swaps

Hedging with Currency Swaps

Credit Swaps

Credit Risk Concerns with Swaps

Comparison of Hedging Methods

Writing versus Buying Options

Futures versus Options Hedging

Swaps versus Forwards, Futures, and Options

Appendix 24A: Hedging with Futures Contracts

Appendix 24B: Hedging with Options

Appendix 24C: Hedging with Caps, Floors, and Collars

(Appendixes 24A-24C available through Connect or your course instructor)

# Managing Risk off the Balance Sheet with Derivative Securities

# Learning Goals

LG 24-1 Know how risk can be hedged with forward contracts.

LG 24-2 Know how risk can be hedged with futures contracts.

LG 24-3 Distinguish a microhedge from a macrohedge.

LG 24-4 Know how risk can be hedged with option contracts.

LG 24-5 Know how risk can be hedged with swap contracts.

LG 24-6 Understand how the different hedging methods compare.

# DERIVATIVE SECURITIES USED TO MANAGE RISK: CHAPTER OVERVIEW

Chapters 21 through 23 described ways financial institutions (FIs) measure and manage various risks on the balance sheet. Rather than managing risk by making on-balance-sheet changes, FIs are increasingly turning to off-balance-sheet instruments such as forwards, futures, options, and swaps to hedge these risks. As the use of these derivatives has increased, so have the fees and revenues FIs have generated. For example, revenue from derivatives transactions at commercial banks totaled 7.2 billion in the first three-quarters of 2019. We discussed the basic characteristics of derivative securities and derivative securities markets in Chapter 10. In Chapter 10 we also noted that traders of derivatives can be either speculators or hedgers. Speculators in derivative contracts buy to profit from a price increase or sell to profit from a price decrease. Speculators buy derivative contracts with the hope of later being able to sell them at a higher price. Conversely, speculators sell derivative contracts with the hope of being able to buy back identical and offsetting derivative contracts at a lower price. Thus, speculators put their money at risk in the hope of profiting from an anticipated price change. This chapter considers the role that derivative securities contracts play in managing an FI's interest rate, foreign exchange, and credit risk exposures. Here we focus on derivative trading by hedgers who take a position in a derivative contract as protection against an increase or decrease in the price of a security such as a bond or stock in the future. Hedgers buy a derivative contract to lock in a price now to protect against future rising securities prices. Hedgers sell a derivative contract to lock in a price now to protect against future falls in securities prices. Although large banks and other FIs are responsible for a significant amount of derivatives trading activity, FIs of all sizes have used these instruments to hedge their asset-liability risk exposures.

The rapid growth of derivatives use by both FIs and nonfinancial firms has been controversial. In the 1990s and 2000s, critics charged that derivative contracts contain potential losses that can materialize to haunt their holders, particularly banks and insurance companies that deal heavily in these instruments. As will be discussed in this chapter, when employed appropriately, derivatives can be used to hedge (or reduce) an FI's risk. However, when misused, derivatives can increase the risk of an FI's insolvency. In the 1990s, a number of scandals involving FIs, firms, and municipalities (such as Bankers Trust and the Allied Irish Bank) led to a tightening of the accounting (reporting) requirements for derivative contracts. Then in the late 2000s, billions of dollars of losses on derivative securities and the near collapse of the world's financial markets led to a call for major regulations to be imposed on the trading of derivative securities. The regulations intended to bring many over-the-counter derivative contracts made between financial institutions under federal regulation and to empower securities and commodities regulators to police them.

# FORWARD AND FUTURES CONTRACTS

# spot contract

An agreement to transact involving the immediate exchange of assets and funds.

# forward contract

An agreement to transact involving the future exchange of a set amount of assets at a set price.

To present the essential nature and characteristics of forward and futures contracts, we first review the comparison of these derivative contracts with spot contracts (see also Chapter 10).

Spot Contract. A spot contract is an agreement between a buyer and a seller at time 0, when the seller of the asset agrees to deliver it immediately for cash and the buyer agrees to pay in cash for that asset. Thus, the unique feature of a spot contract is the immediate and simultaneous exchange of cash for securities, or what is often called delivery versus payment. A spot bond quote of \$97 for a 20-year maturity bond means that the buyer must pay the seller \$97 per 100 of face value for immediate delivery of the 20-year bond.

Forward Contract. A forward contract is a contractual agreement between a buyer and a seller to exchange a prespecified asset for cash at some later date at a price set at time 0. Market participants take a position in forward contracts because the future (spot) price or interest rate on an asset is uncertain. Rather than risk that the future spot price will move against them—that the asset will become more expensive to buy in the future—forward traders pay a financial institution a fee to arrange a forward contract. Such a contract lets the market participant hedge the risk that future spot prices on an asset will move against him or her by guaranteeing a future price for the asset today. For example, in a three-month forward contract to deliver 20-year bonds, the buyer and seller agree on a price and amount today (time 0), but the delivery (or exchange) of the 20-year bond for cash does not occur until three months hence. If the forward price agreed to at time 0 was  $97 per$ 100 of face value, in three months' time the seller delivers \$100 of 20-year bonds and receives \$97 from the buyer. This is the price the buyer must pay and the seller must accept no matter what happens to the spot price of 20-year bonds during the three months between the time the contract was entered into and the time the bonds are delivered for payment (i.e., whether the spot price falls to  \$96 or below or rises to\$ 98 or above). As of 2019, commercial banks held over 43.1 trillion in forward contracts off their balance sheets.

Forward contracts often involve underlying assets that are nonstandardized (e.g., six-month pure discount bonds). As a result, the buyer and seller involved in a forward contract must locate and deal directly with each other to set the terms of the contract rather than transacting the sale in a centralized market. Accordingly, once a party has agreed to a forward position, canceling the deal prior to expiration is generally difficult (although an offsetting forward contract can normally be arranged).

# futures contract

An agreement to transact involving the future exchange of a set amount of assets for a price that is settled daily.

# marked to market

Describes the prices on outstanding futures contracts that are adjusted each day to reflect current futures market conditions.

Futures Contract. A futures contract is usually arranged by an organized exchange. It is an agreement between a buyer and a seller at time 0 to exchange a standardized, prespecified asset for cash at some later date. As such, a futures contract is very similar to a forward contract. The difference relates to the price. In a forward contract, the price is fixed over the life of the contract ( $97 per$ 100 of face value with payment in three months), but in a futures contract, it is marked to market daily. This means that the contract's price and the future contract holder's account are adjusted each day as the futures price for the contract changes. Therefore, actual daily cash settlements occur between the buyer and seller in response to this marking-to-market process (i.e., gains and losses must be realized daily). This can be compared to a forward contract for which cash payment from buyer to seller occurs only at the end of the contract period.2 In 2019, commercial banks held over 3.9 trillion in futures contracts off their balance sheets.

# Hedging with Forward Contracts

To understand the usefulness of forward contracts in hedging an FI's interest rate risk, $^3$  consider a simple example of a naive hedge (a hedge of a cash asset on a direct dollar-for-dollar basis with a forward or futures contract). Suppose that an FI portfolio manager holds a  \$1 million face value portfolio of 20-year government bonds on the balance sheet. At time 0, the market values these bonds at$ 97 per $100 of face value, or \$970,000 in total. Assume that the manager receives a forecast that interest rates are expected to rise by 2 percent from their current level of 8 percent to 10 percent over the next three months. If the predicted change in interest rates is correct, rising interest rates mean that bond prices will fall and the manager stands to make a capital loss on the bond portfolio. Having read Chapters 3 and 23, the manager is an expert on duration and has calculated the 20-year maturity bond portfolio's duration to be exactly nine years. Thus, the manager can predict a capital loss, or change in bond portfolio values ( $\Delta P$ ), from the duration equation of Chapter 3: $^4$

# LG 24-1

# naive hedge

A hedge of a cash asset on a direct dollar-for-dollar basis with a forward or futures contract.

$$
\frac {\Delta P}{P} = - D \times \frac {\Delta R}{1 + R}
$$ where


$$

\Delta P = \text {C a p i t a l} = ?

$$

$$

P = \text {I n i t i a l} = \$ 9 7 0, 0 0 0

$$

$$

D = \text {D u r a t i o n} = 9 \text {y e a r s}

$$

$$

\Delta R = \text {C h a n g e i n f o r c e a s t y i e l d} = 0. 0 2

$$

$$

1 + R = 1 \text {p l u s t h e c u r r e n t y i e l o n 2 0 - y e a r b o n d p o r t f i l o} = 1. 0 8

$$

$$

\begin{array}{l} \frac {\Delta P}{\$ 970 , 000} = - 9 \times \left(\frac {0 . 0 2}{1 . 0 8}\right) \\ \Delta P = - 9 \times \$ 970,000 \times \left(\frac {0 . 0 2}{1 . 0 8}\right) = - \$ 1 6 1,6 6 7 \\ \end{array}

$$

As a result, the FI portfolio manager expects to incur a capital loss on the bond portfolio of 161,667—as a percentage loss \left(\Delta P / P\right) = 16.67\% or a drop in price from 97 per \$100 face value to \$80.833 per 100 face value. To offset this loss—in fact, to reduce the risk of capital loss to zero—the manager may hedge this position by taking an off-balance-sheet hedge, such as selling  \$1 million face value of 20-year bonds for forward delivery in three months' time. Suppose that at time 0, the portfolio manager can find a buyer willing to pay\$ 97 for every 100 of 20-year bonds delivered in three months' time.


Now consider what happens to the FI portfolio manager if the gloomy forecast of a 2 percent rise in interest rates is accurate. The portfolio manager's bond portfolio position has fallen in value by 16.67 percent, equal to a capital loss of 161,667. After the rise in interest rates, however, the manager can buy 1 million face value of 20-year bonds in the spot market at 80,833 per 100 of face value, or a total cost of \$808,333, and deliver these bonds to the forward contract buyer. Remember that the forward contract buyer agreed to pay 97 per \$100 of face value for the \$1 million of face value bonds delivered, or \$970,000. As a result, the portfolio manager makes a profit on the forward transaction of:

$$

\begin{array}{l l l l} \$ 9 7 0, 0 0 0 & - & \$ 8 0 8, 3 3 3 & = \\ (\text {p r i c e p a i d b y} & & (\text {c o s t o f p u r c h a s i n g b o n d s} & \\ \text {f o r w a r d b u e r t o} & & \text {i n t h e s p o t m a r k e t a t} & \\ \text {f o r w a r d s e l e c t e r)} & & t = \text {m o n t 3 f o r d e l i v e r} & \\ & & \text {t o t h e f o r w a r d b u e r}) \end{array}

$$

# immunize

To fully hedge or protect an FI against adverse movements in interest rates (or asset prices).

As you can see, the on-balance-sheet loss of  \$161,667 is exactly offset by the off-balance-sheet gain of\$ 161,667 from selling the forward contract. In fact, for any change in interest rates, a loss (gain) on the balance sheet is offset by a partial or complete gain (loss) on the forward contract. Indeed, the success of a hedge does not hinge on the manager's ability to accurately forecast interest rates. Rather, the reason for the hedge is the lack of ability to perfectly predict interest rate changes. The hedge allows the FI manager to protect against interest rate changes even if they are not perfectly predicted. Thus, the FI's net interest rate exposure is zero, or, in the parlance of finance, it has immunized its assets against interest rate risk.

# LG 24-2

# Hedging with Futures Contracts

Even though some hedging of interest rate risk does take place using forward contracts—such as forward rate agreements commonly used by insurance companies and banks prior to mortgage loan originations—many FIs hedge interest rate risk either at the micro level (called microhedging) or at the macro level (called macrohedging) using futures contracts. Before looking at futures contracts, we explain the difference between microhedging and macrohedging.

# LG 24-3

# microhedging

Using a derivative securities contract to hedge a specific asset or liability.

# basis risk

A residual risk that occurs because the movement in a spot (cash) asset's price is not perfectly correlated with the movement in the price of the asset delivered under a futures or forward contract.

# macrohedging

Hedging the entire duration gap of an FI.

Microhedging. An FI is microhedging when it employs a derivative securities contract to hedge a particular asset or liability risk. For example, we earlier considered a simple example of microhedging asset-side portfolio risk in which an FI manager wanted to insulate the value of the institution's bond portfolio fully against a rise in interest rates. An example of microhedging on the liability side of the balance sheet occurs when an FI, attempting to lock in a cost of funds to protect itself against a possible rise in short-term interest rates, takes a short (sell) position in futures contracts on CDs or T-bills. When microhedging, the FI manager often tries to pick a futures or forward contract whose underlying deliverable asset closely matches the asset (or liability) position being hedged. The earlier example of exactly matching the asset in the portfolio with the deliverable security underlying the forward contract (20-year bonds) was unrealistic. Because such exact matching often cannot be achieved, the usual situation produces a residual "unhedgeable" risk termed basis risk. This risk occurs mainly because the prices of the assets or liabilities that an FI wishes to hedge are imperfectly correlated over time with the prices of the futures or forward contracts used to hedge risk.

Macrohedging. Macrohedging occurs when an FI manager wishes to use futures or other derivative securities to hedge the entire balance sheet duration gap. This contrasts with microhedging in which an FI manager identifies specific assets and liabilities and seeks individual futures and other derivative contracts to hedge those individual risks. Note that macrohedging and microhedging can lead to quite different hedging strategies and results. In particular, a macro hedge takes a whole portfolio view and allows for individual asset and liability interest sensitivities or durations to net out one another. FIs that attempt to manage their risk exposure by hedging each balance sheet position will find that hedging is excessively costly, because the use of a series of microhedges ignores the FI's internal hedges that are already on the balance sheet. That is, if a long-term fixed-rate asset position is exposed to interest rate increases, there may be a matching long-term fixed-rate liability position that also is exposed to interest rate decreases. Putting on two microhedges to reduce the risk exposures of each of these positions fails to recognize that the FI has already hedged much of its risk by taking matched balance sheet positions. The efficiency of the macro hedge is that it focuses only on those mismatched positions that are candidates for off-balance-sheet hedging activities. This can result in a very different aggregate futures position than when an FI manager disregards this netting or portfolio effect and hedges only individual asset and liability positions on a one-to-one basis.


Microhedging with Futures. The number of futures contracts that an FI should buy or sell in a microhedge depends on the interest rate risk exposure created by a particular asset or liability on the balance sheet. The key is to take a position in the futures market to offset a loss on the balance sheet due to a move in interest rates with a gain in the futures market. Table 24-1 shows part of an interest rate futures quote for March 13, 2020, (see also Table 10-4). In this list, a June 2021 Eurodollar futures contract can be bought (long) or sold (short) on March 13, 2020, for 99.5350 percent of the face value of the Eurodollar CD contract, or the yield on the Eurodollar CD contract deliverable in June 2021 will be 0.465 percent (100\% - 99.5350\%). The minimum contract size on one of these futures is \$1,000,000, so a position in one contract can be taken at a price of \$995,350.

The subsequent profit or loss from a position in June 2021 Eurodollar futures taken on March 13, 2020, is graphically described in Figure 24-1. A short position in the futures

TABLE 24-1 Futures Contracts on Interest Rates, March 13, 2020

<table><tr><td colspan="13">Interest Rate Futures | Friday, March 13, 2020</td></tr><tr><td rowspan="2"></td><td rowspan="2">Open</td><td rowspan="2">High</td><td rowspan="2">Low</td><td rowspan="2">Last</td><td rowspan="2">Chg</td><td colspan="2">Estimated</td><td rowspan="2">Open Int</td><td></td><td colspan="2">Estimatod</td><td>Open Int</td></tr><tr><td>Settle</td><td>Volume</td><td>Open</td><td>High</td><td>Low</td><td>Last</td></tr><tr><td colspan="9">Treasury Bonds (CBOT)-\$100,000; pts 32nds of 100\%</td><td colspan="4">Eurodollar (CME)-\$1,000,000; pts of 100\%</td></tr><tr><td>MAR 20</td><td>174&#x27;11</td><td>179&#x27;21</td><td>174&#x27;11</td><td>177&#x27;04</td><td>-2&#x27;10</td><td>177&#x27;30</td><td>200</td><td>8,054</td><td>Jun 20</td><td>99.5100</td><td>99.5250</td><td>99.4150</td></tr><tr><td>JUN 20</td><td>179&#x27;27</td><td>180&#x27;23</td><td>172&#x27;05</td><td>176&#x27;15</td><td>-2&#x27;11</td><td>176&#x27;21</td><td>407,014</td><td>1,230,611</td><td>Sep 20</td><td>99.6100</td><td>99.6500</td><td>99.5600</td></tr><tr><td>SEP 20</td><td>175&#x27;30</td><td>175&#x27;30</td><td>171&#x27;27</td><td>173&#x27;05</td><td>-2&#x27;11</td><td>174&#x27;11</td><td>10</td><td>134</td><td>Dec 20</td><td>99.6000</td><td>99.6400</td><td>99.5400</td></tr><tr><td colspan="9">Est vol 407,224; open int, 1,238,799</td><td>Mar 21</td><td>99.6450</td><td>99.6850</td><td>99.5650</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Jun 21</td><td>99.6000</td><td>99.6550</td><td>99.4950</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Sep 21</td><td>99.5750</td><td>99.6300</td><td>99.4500</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Dec 21</td><td>99.5550</td><td>99.5800</td><td>99.3650</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Mar 22</td><td>99.4800</td><td>99.5350</td><td>99.2950</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Jun 22</td><td>99.4400</td><td>99.4850</td><td>99.2200</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Sep 22</td><td>99.3900</td><td>99.4500</td><td>99.1550</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Dec 22</td><td>99.3400</td><td>99.4000</td><td>99.0800</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Mar 23</td><td>99.3150</td><td>99.3800</td><td>99.0400</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Jun 23</td><td>99.2800</td><td>99.3550</td><td>98.9950</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Sep 23</td><td>99.2800</td><td>99.3300</td><td>98.9550</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Dec 23</td><td>99.2450</td><td>99.2950</td><td>98.9050</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Mar 24</td><td>99.2200</td><td>99.2750</td><td>98.8700</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Jun 24</td><td>99.1950</td><td>99.2450</td><td>98.8250</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Sep 24</td><td>99.1550</td><td>99.2050</td><td>98.7750</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Dec 24</td><td>99.1150</td><td>99.1700</td><td>98.7300</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Mar 25</td><td>99.0900</td><td>99.1450</td><td>98.7000</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Jun 25</td><td>99.0650</td><td>99.0650</td><td>98.7350</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Sep 25</td><td>99.0350</td><td>99.0350</td><td>98.6350</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Dec 25</td><td>98.8350</td><td>98.8700</td><td>98.6500</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Mar 26</td><td>98.7550</td><td>98.8150</td><td>98.7000</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Jun 26</td><td>98.6150</td><td>98.6950</td><td>98.6150</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Dec 26</td><td>98.5950</td><td>98.6300</td><td>98.5950</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="4">Est vol 5,343,947; open int, 11,873,685</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/f645a3e5f73b8134d9549dbdc5c695f7b26c07dda86f0456be2c5c39dc5bafc9.jpg)
Figure 24-1 Profit or Loss on a Futures Position in Eurodollar Futures, Taken on March 13, 2020

# DO YOU UNDERSTAND

1. The difference between a futures contract and a forward contract?
2. The major differences between a spot contract and a forward contract?
3. How a naive hedge works?
4. What is meant by the phrase "an FI has immunized its portfolio against a particular risk"?

will produce a profit (for the seller of the contract) when interest rates rise (meaning that the value of the underlying Eurodollar contract decreases). Therefore, a short position in the futures market is the appropriate hedge when the FI stands to lose on the balance sheet if interest rates are expected to rise (e.g., the FI holds Eurodollar CDs in its asset portfolio). In fact, if the FI is perfectly hedged, any loss in value from a change in the price on an asset on the balance sheet over the period of the hedge (e.g., in Figure 24-2, a change from a beginning asset price of 99.5350 percent at the beginning of the hedge) is exactly offset by a gain on the short position in the Eurodollar futures contract. A long position in the futures market produces a profit when interest rates fall (meaning that the value of the underlying Eurodollar CD contract increases). Therefore, a long position is the appropriate hedge when the FI stands to lose on the balance sheet if interest rates are expected to fall. Table 24-2 summarizes the long and short positions. Appendix 24A to this chapter

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/6c72bf3670fc2c252bb3019bc30abce00ac42efbe0f7d514abc6ef9efc6fc2f9.jpg)
Figure 24-2 FI Value Change On and Off the Balance Sheet from a Perfect Short Hedge

5. We assume that the balance sheet has no liability of equal size and maturity (or duration) as the CD. If the FI has such a liability, any loss in value from the CD could be offset with an equivalent decrease in value from the liability. In this case, there is no interest rate risk exposure and thus there is no need to hedge.
6. Notice that if rates move in an opposite direction from that expected, losses are incurred on the futures position-- that is, if rates rise and futures prices drop, the long hedger loses. Similarly, if rates fall and futures prices rise, the short hedger loses.
7. This might be the case when the FI is financing itself with long-term, fixed-rate certificates of deposit.

TABLE 24-2 Summary of Gains and Losses on Microhedges Using Futures Contracts

<table><tr><td>Type of Hedge</td><td>Change in Interest Rates</td><td>Cash Market</td><td>Futures Market</td></tr><tr><td>Long hedge (buy)</td><td>Decrease</td><td>Loss</td><td>Gain</td></tr><tr><td>Short hedge (sell)</td><td>Increase</td><td>Loss</td><td>Gain</td></tr></table>

(available through Connect or your course instructor) presents mathematical details and numerical examples of hedging with futures contracts.

# OPTIONS

This section discusses the role of options in hedging interest rate risk. FIs have a wide variety of option products to use in hedging, including exchange-traded options, over-the-counter (OTC) options, options embedded in securities, and caps, collars, and floors. Not only have the types of option products increased in recent years, but the use of options has increased as well. In 2019, commercial banks held over  \$8.7 trillion in exchange-traded options and\$ 32.3 trillion in OTC options as part of their off-balance-sheet exposures. We begin by reviewing the four basic option strategies: buying a call, writing (selling) a call, buying a put, and writing (selling) a put. We pay particular attention to how interest rates affect the value of the options.

# Basic Features of Options

In describing the features of the four basic option strategies that FIs might employ to hedge interest rate risk, we summarize their return payoffs in terms of interest rate movements (see Chapter 10 for the details). Specifically, we consider bond options in which the underlying assets are futures contracts on bonds. Thus, underlying the futures contracts are bonds whose payoff values are inversely linked to interest rate movements in a manner similar to bond prices and interest rates in general (see Chapter 3).

Buying a Call Option on a Bond. The first strategy of buying (or taking a long position in) a call option on a bond is shown in Figure 24-3. Notice two important things about bond call options:

1. As interest rates fall, bond prices rise, and the call option buyer has a large profit potential. The more rates fall (the higher bond prices rise), the larger the profit on the exercise of the option.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/013a639f5f305e4a6bec56a7db3aa981a097a6297803864a4dbdb98c32546663.jpg)
Figure 24-3 Payoff Function for the Buyer of a Call Option on a Bond

2. As interest rates rise, bond prices fall and the potential for a negative payoff (loss) for the buyer of the call option increases. If rates rise so that bond prices fall below the exercise price, EP, the call buyer is not obligated to exercise the option. Thus, the buyer's losses are truncated by the amount of the up-front premium payment (call premium, CP) made to purchase the call option.

Thus, buying a call option is a strategy to take when interest rates are expected to fall. Notice that unlike interest rate futures, whose prices and payoffs move symmetrically with changes in the level of interest rates, the payoffs on bond call options move asymmetrically with changes in interest rates. As we discuss below, this often results in options being the preferred hedging instruments over futures contracts.

Writing a Call Option on a Bond. The second strategy is writing (or taking a short position in) a call option on a bond, as shown in Figure 24-4. Notice two important things about this payoff function:

1. When interest rates rise and bond prices fall, the potential for the writer of the call to receive a positive payoff or profit increases. The call buyer is less likely to exercise the option, which would force the option writer to sell the underlying bond at the exercise price, EP. However, this profit has a maximum equal to the call premium (CP) charged up front to the buyer of the option.
2. When interest rates fall and bond prices rise, the probability that the writer will take a loss increases. The call buyer will exercise the option, forcing the option writer to sell the underlying bonds. Since bond prices are theoretically unbounded in the upward direction, although they must return to par at maturity, these losses could be very large.

Thus, writing a call option is a strategy to take when interest rates are expected to rise. Caution is warranted, however, because profits are limited but losses are unlimited. As discussed below, this makes writing a call option an unacceptable strategy to use when hedging interest rate risk.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/10e5015365ad7d1edb4fdb29cb2e8acca7d9d6890e5eb4f3a59e80fe726ae8af.jpg)
Figure 24-4 Payoff Function for the Writer of a Call Option on a Bond

8. This does not necessarily mean that options are less risky than spot or futures positions. Options can, in fact, be riskier than other investments since they exist for only a limited period of time and are leveraged investments (i.e., their value is only a fraction of the underlying security). To compare an option position to a spot position one must consider an equal dollar investment in the two positions over a common period of time.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/78622276a9d36082e3199018494c6bd939f69f93e5466a627258277a2a80011b.jpg)
Figure 24-5 Payoff Function for the Buyer of a Put Option on a Bond

Buying a Put Option on a Bond. The third strategy is buying (or taking a long position in) a put option on a bond, as shown in Figure 24-5. Note the following:

1. When interest rates rise and bond prices fall, the probability that the buyer of the put will make a profit from exercising the option increases. Thus, if bond prices fall, the buyer of the put option can purchase bonds in the bond market at that price and put them (sell them) back to the writer of the put at the higher exercise price. As a result, the put option buyer has unlimited profit potential. The higher the rates rise, the more the bond prices fall, and the larger the profit on the exercise of the option.
2. When interest rates fall and bond prices rise, the probability that the buyer of a put will lose increases. If rates fall so that bond prices rise above the exercise price, EP, the put buyer does not have to exercise the option. Thus, the maximum loss is limited to the size of the up-front put premium (PP).

Thus, buying a put option is a strategy to take when interest rates are expected to rise.

Writing a Put Option on a Bond. The fourth strategy is writing (or taking a short position in) a put option on a bond, as shown in Figure 24-6. Note the following:

1. When interest rates fall and bond prices rise, the writer has an enhanced probability of making a profit. The put buyer is less likely to exercise the option, which would force the option writer to buy the underlying bond. However, the writer's maximum profit is constrained to equal the put premium (PP).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/2d8b6eb6dd37ecc5b9bb08c9ce033d59c71cf4c291740100f691bf724fd3a2c1.jpg)
Figure 24-6 Payoff Function for the Writer of a Put Option on a Bond

TABLE 24-3 Futures Options on Interest Rates, March 13, 2020

<table><tr><td colspan="7">FUTURES OPTIONS</td></tr><tr><td colspan="7">INTEREST RATE Futures Options</td></tr><tr><td colspan="7">For Friday, March 13, 2020</td></tr><tr><td colspan="7">All prices are settlement prices. Open interest is from the previous trading day.</td></tr><tr><td colspan="7">30-YEAR US TREASURY BOND OPTIONS</td></tr><tr><td rowspan="2">Strike</td><td colspan="4">Call</td><td colspan="2">Put</td></tr><tr><td>Mar</td><td>May</td><td>Jun</td><td>Mar</td><td>May</td><td>Jun</td></tr><tr><td>17300</td><td>4&#x27;48</td><td>6&#x27;23</td><td>7&#x27;22</td><td>1&#x27;06</td><td>2&#x27;45</td><td>3&#x27;44</td></tr><tr><td>17500</td><td>3&#x27;35</td><td>5&#x27;17</td><td>6&#x27;22</td><td>1&#x27;57</td><td>3&#x27;39</td><td>4&#x27;44</td></tr><tr><td>17600</td><td>3&#x27;04</td><td>4&#x27;50</td><td>5&#x27;57</td><td>2&#x27;26</td><td>4&#x27;08</td><td>5&#x27;15</td></tr><tr><td>17700</td><td>2&#x27;42</td><td>4&#x27;21</td><td>5&#x27;31</td><td>3&#x27;00</td><td>4&#x27;43</td><td>5&#x27;53</td></tr><tr><td>17800</td><td>2&#x27;18</td><td>3&#x27;59</td><td>5&#x27;07</td><td>3&#x27;40</td><td>5&#x27;17</td><td>6&#x27;29</td></tr><tr><td>17900</td><td>1&#x27;61</td><td>3&#x27;35</td><td>4&#x27;49</td><td>4&#x27;19</td><td>5&#x27;57</td><td>7&#x27;07</td></tr><tr><td colspan="7">10-YEAR US TREASURY NOTE</td></tr><tr><td rowspan="2">Strike</td><td colspan="4">Call</td><td colspan="2">Put</td></tr><tr><td>Apr</td><td>May</td><td>Jun</td><td>Apr</td><td>May</td><td>Jun</td></tr><tr><td>12850</td><td>7&#x27;52</td><td>7&#x27;53</td><td>7&#x27;60</td><td>0&#x27;02</td><td>0&#x27;03</td><td>0&#x27;10</td></tr><tr><td>12875</td><td>7&#x27;36</td><td>7&#x27;22</td><td>7&#x27;29</td><td>0&#x27;02</td><td>0&#x27;04</td><td>0&#x27;11</td></tr><tr><td>13000</td><td>6&#x27;20</td><td>6&#x27;24</td><td>6&#x27;32</td><td>0&#x27;02</td><td>0&#x27;06</td><td>0&#x27;14</td></tr><tr><td>13100</td><td>5&#x27;21</td><td>5&#x27;26</td><td>5&#x27;38</td><td>0&#x27;03</td><td>0&#x27;08</td><td>0&#x27;20</td></tr><tr><td>13150</td><td>4&#x27;53</td><td>4&#x27;60</td><td>5&#x27;10</td><td>0&#x27;03</td><td>0&#x27;10</td><td>0&#x27;24</td></tr><tr><td>13250</td><td>3&#x27;53</td><td>4&#x27;03</td><td>4&#x27;21</td><td>0&#x27;03</td><td>0&#x27;17</td><td>0&#x27;35</td></tr><tr><td>13400</td><td>2&#x27;26</td><td>2&#x27;51</td><td>3&#x27;16</td><td>0&#x27;08</td><td>0&#x27;33</td><td>0&#x27;62</td></tr><tr><td>13500</td><td>1&#x27;40</td><td>2&#x27;10</td><td>2&#x27;42</td><td>0&#x27;22</td><td>0&#x27;56</td><td>1&#x27;24</td></tr></table>

Source: CME Group, www.cmegroup.com

<table><tr><td colspan="7">5-YEAR US TREASURY NOTE</td></tr><tr><td rowspan="2">Strike</td><td colspan="3">Call</td><td colspan="3">Put</td></tr><tr><td>Apr</td><td>May</td><td>Jun</td><td>Apr</td><td>May</td><td>Jun</td></tr><tr><td>12400</td><td>0&#x27;350</td><td>0&#x27;445</td><td>0&#x27;585</td><td>0&#x27;230</td><td>0&#x27;325</td><td>0&#x27;465</td></tr><tr><td>12450</td><td>0&#x27;185</td><td>0&#x27;320</td><td>0&#x27;430</td><td>0&#x27;385</td><td>0&#x27;520</td><td>0&#x27;630</td></tr><tr><td>12500</td><td>0&#x27;100</td><td>0&#x27;220</td><td>0&#x27;320</td><td>0&#x27;620</td><td>1&#x27;100</td><td>1&#x27;200</td></tr><tr><td>12550</td><td>0&#x27;060</td><td>0&#x27;160</td><td>0.235</td><td>1&#x27;260</td><td>1&#x27;360</td><td>1&#x27;435</td></tr><tr><td>12600</td><td>0&#x27;045</td><td>0&#x27;130</td><td>0&#x27;160</td><td>1&#x27;565</td><td>2&#x27;010</td><td>2&#x27;200</td></tr><tr><td colspan="7">EURODOLLAR</td></tr><tr><td rowspan="2">Strike</td><td colspan="3">Call</td><td colspan="3">Put</td></tr><tr><td>Apr</td><td>Jun</td><td>Sep</td><td>Apr</td><td>Jun</td><td>Sep</td></tr><tr><td>9875</td><td>0.7650</td><td>0.7725</td><td>0.8825</td><td>0.0150</td><td>0.0225</td><td>0.0125</td></tr><tr><td>9887</td><td>0.6425</td><td>0.6550</td><td>0.7600</td><td>0.0175</td><td>0.0300</td><td>0.0150</td></tr><tr><td>9900</td><td>0.5250</td><td>0.5375</td><td>0.6400</td><td>0.0250</td><td>0.0375</td><td>0.0200</td></tr><tr><td>9912</td><td>0.4075</td><td>0.4250</td><td>0.5250</td><td>0.0325</td><td>0.0500</td><td>0.0300</td></tr><tr><td>9925</td><td>0.2975</td><td>0.3225</td><td>0.4125</td><td>0.0475</td><td>0.0725</td><td>0.0425</td></tr><tr><td>9937</td><td>0.1975</td><td>0.2275</td><td>0.3050</td><td>0.0725</td><td>0.1025</td><td>0.0600</td></tr><tr><td>9950</td><td>0.1125</td><td>0.1400</td><td>0.2075</td><td>0.1125</td><td>0.1400</td><td>0.0875</td></tr></table>

2. When interest rates rise and bond prices fall, the writer of the put is exposed to potentially large losses. The put buyer will exercise the option, forcing the option writer to buy the underlying bond at the exercise price, EP. Since bond prices are theoretically unbounded in the downward direction, these losses can be unlimited.

Thus, writing a put option is a strategy to take when interest rates are expected to fall. However, profits are limited and losses are potentially unlimited (i.e., the investor could potentially lose his or her entire investment in the option). As with the writing of a call option (discussed in more detail below), this makes writing a put option an unacceptable strategy to use when hedging interest rate risk.

# Actual Interest Rate Options

FIs have a wide variety of OTC and exchange-traded options available. Table 24-3, reports data on some of the exchange-traded interest rate futures options traded on the Chicago Board of Trade (CBOT) and the Chicago Mercantile Exchange (CME) on March 13, 2020. We discussed these contracts and the operations of the markets in detail in Chapter 10.

www.cbot.com www.cme.com


LG 24-4

# Hedging with Options

Figures 24-7 and 24-8 describe graphically the way that buying a put option on a bond can potentially hedge the interest rate risk exposure of an FI that holds bonds as part of its asset investment portfolio. Figure 24-7 shows the gross payoff of a bond and the payoff from buying a put option on it. In this case, any losses on the bond (as rates rise and bond values decrease) are offset with profits from the put option that was bought (points to the left of point  $X$  in Figure 24-7). If rates fall, the bond value increases, yet the accompanying losses on the purchased put option positions are limited to the option premiums paid (points to the right of point  $X$ ). Figure 24-8 shows the net overall payoff from the bond investment combined with the put option hedge. Note in Figure 24-8 that buying a put option truncates the downside losses on the bond following a rise in interest rates to some maximum amount and scales down the upside profits by the cost of bond price risk insurance—the put premium—leaving some positive upside profit potential. Notice too that the combination of being long in the bond and buying a put option on a bond mimics the payoff function of buying a call option (compare Figures 24-3 and 24-8). Conversely, an FI can buy a call option on a bond to hedge interest rate risk exposure from a bond that is part of the FI's liability portfolio. Option contracts can also be used to hedge the aggregate duration gap exposure (macrohedge), foreign exchange risk, and credit risk of an FI as well. Appendix 24B to this chapter (available through Connect or your course instructor) presents mathematical details and numerical examples of hedging with options.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/6aff3504b44485072195a14b9c6bb769dc70565458721937f1d49696f19ca9b7.jpg)
Figure 24-7 Buying a Put Option to Hedge the Interest Rate Risk on a Bond

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/e3f9929ccecdfd52d9b5a57ecccf6d575d82d9937f9f704c1bfae3267101bd00.jpg)
Figure 24-8 Net Payoff of Buying a Bond Put and Investing in a Bond


# Caps, Floors, and Collars

As discussed in Chapter 10, caps, floors, and collars are derivative securities that have many uses, especially in helping an FI hedge interest rate risk exposure as well as risks unique to its individual customers. Buying a cap means buying a call option or a succession of call options on interest rates. Specifically, if interest rates rise above the cap rate, the seller of the cap—usually a bank—compensates the buyer—for example, another FI—in return for an up-front premium. As a result, buying an interest rate cap is like buying insurance against an (excessive) increase in interest rates.

Buying a floor is similar to buying a put option on interest rates. If interest rates fall below the floor rate, the seller of the floor compensates the buyer in return for an up-front premium. As with caps, floor agreements can have one or many exercise dates.

A collar occurs when an FI takes a simultaneous position in a cap and a floor, such as buying a cap and selling a floor. The idea here is that the FI wants to hedge itself against rising rates, but wants to finance the cost of the cap. One way to do this is to sell a floor and use the premiums on the floor to pay the premium on the purchased cap. Thus, these three over-the-counter instruments are special cases of options. FI managers use them like options to hedge the interest rate risk of an FI's portfolio.

In general, FIs purchase interest rate caps if they are exposed to losses when interest rates rise. Usually, this happens if they are funding assets with floating-rate liabilities such as notes indexed to the LIBOR (or some other cost of funds) and they have fixed-rate assets or they are net long in bonds, or—in a macrohedging context—their duration gap is greater than zero, or  $D_A - kD_L > 0$ . By contrast, FIs purchase floors when they have fixed costs of debt and have variable rates (returns) on assets or they are net short in bonds, or  $D_A - kD_L < 0$ . Finally, FIs purchase collars when they are concerned about excessive volatility of interest rates or more commonly to finance cap or floor positions. Appendix 24C to this chapter (available through Connect or your course instructor) presents details and examples of hedging with caps, floors, and collars.

# RISKS ASSOCIATED WITH FUTURES, FORWARDS, AND OPTIONS

# DO YOU UNDERSTAND

5. How interest rate increases affect the payoff from buying a call option on a bond? How they affect the payoff from writing a call option on a bond?
6. How interest rate increases affect the payoff from buying a put option on a bond? How they affect the payoff from writing a put option on a bond?
7. What the outcome is if an FI hedges by buying put options on futures and interest rates rise (i.e., bond prices fall)?
8. The difference among a cap, a floor, and a collar used to hedge interest rate risk?
9. The risks involved with hedging with forwards, futures, and options?

Financial institutions can be either users of derivative contracts for hedging and other purposes or dealers that act as counterparties in trades with customers for a fee. In 2019, 1,334 banks were users of derivatives, with four big dealer banks (JPMorgan Chase, Citigroup, Goldman Sachs, and Bank of America) accounting for some 87.1 percent of the 201.1 trillion derivatives held by the user banks. However, these securities entail risk for the user banks. This section discusses the various types of risks involved with futures, forwards, and options trading.

Contingent credit risk is likely to be present when FIs expand their positions in forward, futures, and option contracts. This risk relates to the fact that the counterparty to one of these contracts may default on payment obligations, leaving the FI unhedged and having to replace the contract at today's interest rates, prices, or exchange rates. Further, such defaults are most likely to occur when the counterparty is losing heavily on the contract and the FI is in the money on the contract. This type of default risk is much more serious for forward contracts than for futures contracts. This is so because forward contracts are nonstandard contracts entered into bilaterally by negotiating parties such as two FIs and all cash flows are required to be paid at one time (on contract maturity). Thus, they are essentially over-the-counter arrangements with no external guarantees should one or the other party default on the contract. For example, the contract seller might default on a forward foreign exchange contract that promises to deliver £10 million in three months' time at the exchange rate \$1.70 to £1 if the cost to purchase £1 for delivery is \$1.90 when the forward contract matures. By contrast, futures contracts are standardized contracts guaranteed by organized exchanges such as the New York Futures Exchange (NYFE). Futures contracts, like forward contracts, make commitments to deliver foreign exchange (or some other asset) at some future date. If a counterparty defaults on a futures contract, however, the exchange assumes the defaulting party's position and payment obligations. Thus, unless a systemic financial market collapse threatens the exchange itself, futures are essentially default risk free. In addition, default risk is reduced by the daily marking to market of futures contracts. This prevents the accumulation of losses and gains that occur with forward contracts.

Option contracts can also be traded by an FI over the counter (OTC) or bought/sold on organized exchanges. If the options are standardized options traded on exchanges, such as bond options, they are virtually default risk free. If they are specialized options purchased OTC such as interest rate caps, some element of default risk exists.

# SWAPS

The market for swaps has grown enormously in recent years—the value of swap contracts outstanding by U.S. commercial banks was more than 108.9 trillion in 2019. The five generic types of swaps, in order of their notional principal outstanding, are interest rate swaps, currency swaps, credit risk swaps, commodity swaps, and equity swaps (see Chapter 10). In this section, we consider the role of the two major generic types of swaps—interest rate and currency—in hedging FI risk. We then examine the credit risk characteristics of these instruments.

# LG 24-5

# Hedging with Interest Rate Swaps

To explain the role of a swap transaction in hedging FI interest rate risk, we use a simple example. Consider two FIs: the first is a money center bank that has raised 100 million of its funds by issuing four-year, medium-term notes with 10 percent annual fixed coupons rather than relying on short-term deposits to raise funds (see Table 24-4). On the asset side of its portfolio, the bank makes commercial and industrial (C&I) loans whose rates are indexed to annual changes in the London Interbank Offered Rate (LIBOR). FIs often index most large commercial and industrial loans to either LIBOR or the federal funds rate in the money market.

As a result of having floating-rate loans and fixed-rate liabilities in its asset-liability structure, the money center bank has a negative duration gap; the duration of its assets is shorter than that of its liabilities. That is (using the equation in Chapter 23),

$$

D _ {A} - k D _ {L} <   0

$$

The bank could make changes either on or off the balance sheet. On the balance sheet, one way for the bank to hedge this exposure would be to shorten the duration or interest rate sensitivity of its liabilities by transforming them into short-term floating-rate liabilities that better match the rate sensitivity of its asset portfolio. For example, the bank could attract an additional 100 million in short-term deposits that are indexed to the LIBOR rate (at, say, LIBOR plus 2.5 percent) in a manner similar to its loans. The proceeds of these deposits could then be used to pay off the medium-term notes. This would reduce the duration gap between the bank's assets and liabilities. Alternatively, the bank could go off the balance sheet and sell an interest rate swap—that is, enter into a swap agreement to make the floating-rate payment side of a swap agreement.

The second party of the swap is a savings bank that has invested 100 million in fixed-rate residential mortgages of long duration. To finance this residential mortgage portfolio, the savings bank relies on short-term certificates of deposit with an average duration of one year (see Table 24-5). On maturity, these CDs must be rolled over at the current market rate. Consequently, the savings bank's asset-liability balance sheet structure is the reverse of the money center bank's:

$$

D _ {A} - k D _ {L} > 0

$$

TABLE 24-4 Money Center Bank Balance Sheet

<table><tr><td colspan="2">Assets</td><td colspan="2">Liabilities</td></tr><tr><td>C&amp;I loans (rate indexed to LIBOR)</td><td>\$100 million</td><td>Medium-term notes (coupons fixed at 10\% annually)</td><td>\$100 million</td></tr></table>

TABLE 24-5 Savings Bank Balance Sheet

<table><tr><td colspan="2">Assets</td><td colspan="2">Liabilities</td></tr><tr><td>Fixed-rate mortgages</td><td>\$100 million</td><td>Short-term CDs (one year)</td><td>\$100 million</td></tr></table>

On the balance sheet, the savings bank could hedge its interest rate risk exposure by transforming the short-term floating-rate nature of its liabilities into fixed-rate liabilities that better match the long-term maturity (duration) structure of its assets. For example, the savings bank could issue long-term notes with a maturity equal or close to that on the mortgages (at, say, 9 percent). The proceeds of the sale of the notes could then be used to pay off the CDs and reduce the repricing gap. Alternatively, the savings bank could go off the balance sheet and buy a swap—that is, take the fixed-payment side of a swap agreement.

The opposing balance sheet and interest rate risk exposures of the money center bank and the savings bank provide the necessary conditions for an interest rate swap agreement between the two parties. This swap agreement can be arranged directly between the parties. However, it is likely that an FI—another bank or an investment bank—would act as either a broker or an agent, receiving a fee for bringing the two parties together or intermediating fully by accepting the credit risk exposure and guaranteeing the cash flows underlying the swap contract. By acting as a principal as well as an agent, the FI can add a credit risk premium to the fee. However, the credit risk exposure of a swap to an FI is somewhat less than that on a loan (this is discussed later in this chapter). Conceptually, when a third-party FI fully intermediates the swap, that FI is really entering into two separate swap agreements, in this case, one with the money center bank and one with the savings bank.

For simplicity, we consider an example below of a plain vanilla fixed-floating rate swap (a standard swap agreement without any special features) in which a third-party intermediary acts as a simple broker or agent by bringing together two DIs with opposing interest rate risk exposures to enter into a swap agreement or contract. We depict a possible fixed-floating rate swap transaction in Figure 24-9. The expected net financing costs for the DIs are listed in Table 24-6.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/d6a31ed459217d1260724fd6e3053760eb7ef50085c7058fb966fe0033ef2861.jpg)
Figure 24-9 Fixed-Floating Rate Swap

TABLE 24-6 Financing Cost Resulting from Interest Rate Swap (in millions of dollars)

<table><tr><td></td><td colspan="2">Money Center Bank</td><td colspan="2">Savings Bank</td></tr><tr><td>Cash outflows from balance sheet financing</td><td>1.</td><td>-10\% × \$100</td><td>5.</td><td>-(CD rate) × \$100</td></tr><tr><td>Cash inflows from swap</td><td>2.</td><td>10\% × \$100</td><td>6.</td><td>(LIBOR + 2\%) × \$100</td></tr><tr><td>Cash outflows from swap</td><td>3.</td><td>-(LIBOR + 2\%) × $100</td><td>7.</td><td>-10\% × $100</td></tr><tr><td>Net cash flows</td><td>4.</td><td>-(LIBOR + 2\%) × \$100</td><td>8.</td><td>-(8\% + CD rate - LIBOR) × \$100</td></tr><tr><td>Rate available on
Variable-rate debt</td><td colspan="2">LIBOR + 2½\%</td><td></td><td></td></tr><tr><td>Fixed-rate debt</td><td></td><td></td><td>9\%</td><td></td></tr></table>

# plain vanilla

A standard agreement without any special features.

# EXAMPLE 24-1 Expected Cash Flows on an Interest Rate Swap

In this example, the notional (or face) value of the swap is  \$100 million—equal to the assumed size of the money center bank's medium-term note issue—and the four-year maturity is equal to the maturity of its note liabilities. The annual coupon cost of these note liabilities is 10 percent (item 1 in Table 24-6). The money center bank's problem is that the variable return on its assets may be insufficient to cover the cost of meeting these fixed coupon payments if market interest rates fall. By comparison, the fixed returns on the savings bank's mortgage asset portfolio may be insufficient to cover the interest cost of its CDs should market rates rise (item 5 in Table 24-6). The swap agreement might dictate that the savings bank send (item 7 in Table 24-6) fixed payments of 10 percent per year of the notional\$ 100 million value of the swap to the money center bank (item 2 in Table 24-6) to allow the money center bank to cover fully the coupon interest payments on its note issue. In return, the money center bank sends annual payments indexed to the one-year LIBOR to help the savings bank cover the cost of refinancing its one-year renewable CDs. Suppose that the money center bank agrees to send (item 3 in Table 24-6) the savings bank annual payments at the end of each year equal to one-year LIBOR plus 2 percent (item 6 in Table 24-6).[10]

As a result of the swap, the money center bank has transformed its four-year, fixed-rate liability notes into a variable-rate liability matching the variability of returns on its C&I loans (item 4 in Table 24-6). Further, through the interest rate swap, the money center bank effectively pays LIBOR plus 2 percent for its financing. Had it gone to the debt market, the money center bank would pay LIBOR plus 2.5 percent (a savings of 0.5 percent with the swap). The savings bank also has transformed its variable-rate CDs into fixed-rate payments similar to those received on its fixed-rate mortgages (item 8 in Table 24-6). As a result, it has successfully microhedged.

Note in Example 24-1 that in the absence of default/credit risk, only the money center bank is really fully hedged. This happens because the annual 10 percent payments it receives from the savings bank at the end of each year allow it to meet the promised 10 percent coupon rate payments to its note holders regardless of the return it receives on its variable-rate assets. By contrast, the savings bank receives variable-rate payments based on LIBOR plus 2 percent. It is quite possible that the CD rate that the savings bank must pay on its deposit liabilities does not exactly track the LIBOR-indexed payments sent by the money center bank—that is, the savings bank is subject to basis risk exposure on the swap contract. This basis risk can come from two sources. First, CD rates do not exactly match the movements of LIBOR rates over time since the former are determined in the domestic money market and the latter in the Eurodollar market. Second, the credit/default risk premium on the savings bank's CDs may increase over time. Thus, the plus 2 percent add-on to LIBOR may be insufficient to hedge the savings bank's cost of funds. The savings bank might be better hedged by requiring the money center bank to send it floating payments based on U.S. domestic CD rates rather than LIBOR. To do this, the money center bank would probably require additional compensation since it would then bear basis risk. Its asset returns would be sensitive to LIBOR movements while its swap payments were indexed to U.S. CD rates.

Further, in order for the swap to be the most efficient choice for the FIs, there must be some barrier that prevents the two firms from directly transacting in the other's cash market (which equivalently raises the costs of these cross-market transactions). This barrier may consist of regulatory restrictions or tax considerations. If, however, the barrier results

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/9b29216cd068806f8271893c6f21102a33f4cc05d41c74f7dfc0ebc6170df4be.jpg)

# currency swap

A swap used to hedge against foreign exchange rate risk from mismatched currencies on assets and liabilities.

from information asymmetries, these potential gains to trade can be expected to disappear as the swap market develops.

# Hedging with Currency Swaps

Swaps are long-term contracts that can also be used to hedge an FI's exposure to currency risk. The following section considers a plain vanilla example of how currency swaps can immunize FIs against foreign exchange rate risk when they mismatch the currencies of their assets and liabilities.

Fixed-Fixed Currency Swaps. Consider a U.S. FI with all of its  \$80 million fixed-rate assets denominated in dollars. It is financing part of its asset portfolio with a\$ 50 million issue of four-year, medium-term British pound notes that have a fixed annual coupon of 10 percent. By comparison, an FI in the United Kingdom has all its \$50 million assets denominated in pounds. It is funding those assets with a \$80 million issue of four-year, medium-term dollar notes with a fixed annual coupon of 10 percent.

These two FIs are exposed to opposing currency risks. The U.S. FI is exposed to the risk that the dollar will depreciate against the pound over the next four years, which would make it more costly to cover the annual coupon interest payments and the principal repayment on its pound-denominated notes. On the other hand, the UK FI is exposed to the risk that the dollar will appreciate against the pound, making it more difficult to cover the dollar coupon and principal payments on its four-year, 80 million note issue from the pound cash flows on its assets.

The FIs can hedge the exposures either on or off the balance sheet. Assume that the dollar/pound exchange rate is fixed at  \$1.6/£1. On the balance sheet, the U.S. FI can issue\$ 80 million in four-year, medium-term dollar notes (at, say, 10.5 percent). The proceeds of the sale can be used to pay off the £50 million of four-year, medium-term pound notes. Similarly, the UK FI can issue £50 million in four-year, medium-term pound notes (at, say, 10.5 percent), using the proceeds to pay off the 80 million of four-year, medium-term dollar notes. Both FIs have taken actions on the balance sheet so that they are no longer exposed to movements in the exchange rate between the two currencies.

# EXAMPLE 24-2 Expected Cash Flows on a Fixed-Fixed Currency Swap

Off the balance sheet, the UK and U.S. FIs can enter into a currency swap by which the UK FI sends annual payments in pounds to cover the coupon and principal repayments of the U.S. FI's pound note issue, and the U.S. FI sends annual dollar payments to the UK FI to cover the interest and principal payments on its dollar note issue. We summarize this currency swap in Figure 24-10 and Table 24-7. As a result of the swap, the UK FI transforms fixed-rate dollar liabilities into fixed-rate pound liabilities that better match the pound fixed-rate cash flows from its asset portfolio. Similarly, the U.S. FI transforms fixed-rate pound liabilities into fixed-rate dollar liabilities that better match the fixed-rate dollar cash flows from its asset portfolio. Further, both FIs transform the pattern of their payments at a lower rate than had they made changes on the balance sheet. Both FIs effectively obtain financing at 10 percent while hedging against exchange rate risk. Had they gone to the market, they would have paid 10.5 percent to do this. In undertaking this exchange of cash flows, the two parties normally agree on a fixed exchange rate for the cash flows at the beginning of the period.[11] In this example, the fixed exchange rate is  $1.6/£1.$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/a8fef22bc412088e07128582dd59474caf142e603c4c9385a5e11cf11c7f8624.jpg)
Figure 24-10 Fixed-Fixed Pound/Dollar Currency Swap


By combining an interest rate swap of the fixed-floating type described earlier with a currency swap, we can also produce a fixed-floating currency swap that is a hybrid of the two plain vanilla swaps we have considered so far.

# Credit Swaps

In recent years the fastest-growing types of swaps have been those developed to better allow FIs to hedge their credit risk, so-called credit swaps or credit default swaps (CDSs). In 2000, commercial banks' total notional principal for outstanding credit derivative contracts was  \$426 billion. By March 2008, this amount had risen to\$ 16.44 trillion before falling to  \$13.44 trillion in 2009 during the financial crisis. By September 2011, the notional principal of credit derivative contracts increased only slightly, to\$ 15.66 trillion. Of this amount, \$15.31 trillion was CDSs. Due to post-financial crisis regulations imposed on commercial banks involving the trading of swaps, the notional value of credit derivatives held by banks dropped to \$4.18 trillion in June 2019, with 3.69 of this amount being CDS contracts.

Credit swaps are important for two reasons. First, credit risk is still more likely to cause an FI to fail than either interest rate risk or FX risk. Second, CDSs allow FIs to maintain long-term customer lending relationships without bearing the full credit risk exposure from those relationships. Indeed, then Federal Reserve Board chair Alan Greenspan credited this market with helping the banking system maintain its strength through an economic recession in the early 2000s. He argued that credit swaps were effectively used to shift a significant part of banks' risk from their corporate loan portfolios. However, the Fed chair also commented that these derivative securities are prone to induce speculative excesses that need to be contained through regulation, supervision, and private-sector action. While commercial banks have been the main buyers of credit risk protection through credit swaps, insurance companies (such as AIG) have been the net sellers of credit risk protection. Thus, they have been more willing than banks to bear credit risk. The result is that the FI bearing the credit risk of a loan is often different from the FI that issued the loan. Indeed, in some recessionary periods, insurance companies have suffered large losses as buyers

TABLE 24-7 Financing Costs Resulting from the Fixed-Fixed Currency Swap Agreement (in millions of dollars)

<table><tr><td></td><td>U.S. FI</td><td>UK FI</td></tr><tr><td>Cash outflows from balance sheet financing</td><td>-10\% × £50</td><td>-10\% × \$80</td></tr><tr><td>Cash inflows from swap</td><td>10\% × £50</td><td>10\% × \$80</td></tr><tr><td>Cash outflows from swap</td><td>-10\% × \$80</td><td>-10\% × £50</td></tr><tr><td>Net cash flows</td><td>-10\% × \$80</td><td>-10\% × £50</td></tr><tr><td>Rate available on
Dollar-denominated notes</td><td>10.5\%</td><td></td></tr><tr><td>Pound-denominated notes</td><td></td><td>10.5\%</td></tr></table>

11. As with interest rate swaps, this exchange rate reflects the contracting parties' expectations as to future exchange rate movements.

of credit risk, while banks have been well protected. And as discussed in Chapter 10 and below, during the financial crisis of 2008-2009, insurance or re-insurance company losses from CDSs were so large that some could not pay the promised obligations and, as a result, banks (and other buyers of credit swaps) were exposed to significantly higher credit risk.

The buyer of a CDS makes periodic payments to the seller until the end of the life of the swap or until the credit event specified in the contract occurs. These payments are typically made every quarter, six months, or year. The settlement of the swap in the event of a default involves either physical delivery of the bonds (or loans) or a cash payment. Generally, a CDS specifies that a number of different bonds (loans) can be delivered in the event of a default. The bonds (loans) typically have the same seniority, but they may not sell for the same percentage of face value immediately after a default. This gives the holder of a CDS a cheapest-to-deliver option. When a default happens, the buyer of protection will review alternative deliverable bonds (or loans) and choose the one that can be purchased most cheaply for delivery.

Below we look at two types of CDSs: (1) the total return swap and (2) the pure credit swap. We then look at credit risk concerns with the swaps themselves.

# total return swap

A swap involving an obligation to pay interest at a specified fixed or floating rate for payments representing the total return on a specified amount.

Total Return Swaps. Although FIs spend significant resources attempting to evaluate and price expected changes in a borrower's credit risk over the life of a loan, a borrower's credit situation (credit quality) sometimes deteriorates unexpectedly after the loan terms are determined and the loan is issued. A lender can use a total return swap to hedge this possible change in credit risk exposure. A total return swap involves swapping an obligation to pay interest at a specified fixed or floating rate for payments representing the total return on a loan or a bond (interest and principal value changes) of a specified amount. The swap can be designed to cover any change in value of the principal as well as just the interest. This type of swap often is used when there is exposure to a change in the credit risk of the counterparty.

# EXAMPLE 24-3 Calculation of Cash Flows on a Total Return Swap

Suppose that an FI lends 100 million to a Brazilian manufacturing firm at a fixed rate of 10 percent. If the firm's credit risk increases unexpectedly over the life of the loan, the market value of the loan and, consequently, the FI's net worth will fall. The FI can hedge an unexpected increase in the borrower's credit risk by entering into a total return swap in which it agrees to pay a total return based on an annual fixed rate (f) plus changes in the market value of Brazilian (U.S. dollar-denominated) government debt (changes in the value of these bonds reflect the political and economic events in the firm's home country and thus will be correlated with the credit risk of the Brazilian borrowing firm). Also, the bonds are in the same currency (U.S. dollars) as the loans. In return, the FI receives a variable market rate payment of interest annually (e.g., one-year LIBOR rate). Figure 24-11 and Table 24-8 illustrate the cash flows associated with the typical total return swap for the FI.

Using the total return swap, the FI agrees to pay a fixed rate of interest annually and the capital gain or loss on the market value of the Brazilian (U.S. dollar) bond over the period of the hedge. In Figure 24-11,  $P_0$  denotes the market value of the bond at the beginning of the swap period and  $P_T$  represents the market value of the bond at the end of the swap period. If the Brazilian bond decreases in value over the period of the hedge  $(P_0 > P_T)$ , the FI pays a relatively small (possibly negative) amount to the counterparty equal to the fixed payment on the swap minus the capital loss on the bond.[12] For example, suppose the Brazilian (U.S. dollar) bond is priced at par  $(P_0 = 100)$  at the beginning of the swap period. At the end of the swap period or the payment date, the Brazilian bond has a secondary market value of 90  $(P_T = 90)$  due to an increase in Brazilian country risk. Suppose that the fixed-rate payment  $(f)$  as part of the total return swap is 12 percent. Then the FI would send to the swap counterparty the fixed rate of 12 percent minus 10 percent (the capital loss on the Brazilian bond), or a total of 2 percent, and would receive in return a floating payment (e.g., LIBOR = 11 percent) from the counterparty to the swap. Thus, the net profit on the swap to the FI lender is 9 percent (11 percent minus 2 percent) times the notional amount of the swap contract. This gain can be used to offset the loss of market value on the loan to the Brazilian firm. This example is illustrated in Table 24-8.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/38c4103bf2fae68393f8e1619b56c0eb2d4c5220ba516d473c7ed1f90188619b.jpg)
Figure 24-11 Cash Flows on a Total Return Swap


Thus, the FI benefits from the total return swap if the Brazilian bond value deteriorates as a result of a political or economic shock. Assuming that the Brazilian firm's credit risk deteriorates along with the local economy, the FI will offset some of this loss of the Brazilian loan on its balance sheet with a gain from the total return swap.

Note that hedging credit risk in this fashion allows the FI to maintain its customer relationship with the Brazilian firm (and perhaps earn fees from selling other financial services to that firm) without bearing a large amount of credit risk exposure. Moreover, since the Brazilian loan remains on the FI's balance sheet, the Brazilian firm may not even know its loan is being hedged. This would not be the case if the FI sought to reduce its risk by selling all or part of the loan (see Chapter 25). Finally, the swap does not completely hedge credit risk in this case. Specifically, basis risk is present to the extent that the credit risk of the Brazilian firm's U.S. dollar loan is imperfectly correlated with Brazilian country risk, reflected in the price of the Brazilian (U.S. dollar) bonds.

Pure Credit Swaps. While total return swaps can be used to hedge credit risk exposure, they contain an element of interest rate risk as well as credit risk. For example, in Table 24-8, if the LIBOR rate changes, the net cash flows on the total return swap

TABLE 24-8 Cash Flows on a Total Return Swap

<table><tr><td></td><td>Annual Cash Flow for Year 1 through Final Year</td><td>Additional Payment by FI</td><td>Total Return</td></tr><tr><td>Cash inflow on swap to FI lender</td><td>1-year LIBOR (11\%)</td><td>—</td><td>1-year LIBOR (11\%)</td></tr><tr><td>Cash outflow on swap to other FI</td><td>Fixed rate (f) (12\%)</td><td>PTP0(90-100)</td><td>[f+PTP0/P0]</td></tr><tr><td></td><td></td><td></td><td>[12\% + 90 - 100/100 = 12\% - 10\% = 2\%]</td></tr><tr><td></td><td></td><td>Net profit</td><td>9\%</td></tr></table>

12. Total return swaps are typically structured so that the capital gain or loss is paid at the end of the swap. However, an alternative structure does exist in which the capital gain or loss is paid at the end of each interest period during the swap.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/e577320e30ee440379715b19ed0a41d4f740f3a5e2617e93900558f54385b0fa.jpg)
Figure 24-12 A Pure Credit Swap

# pure credit swap

A swap in which an FI receives the par value of the loan on default in return for paying a periodic swap fee.

also change—even though the credit risks of the underlying loans (and bonds) have not changed.

To strip out the "interest rate" sensitive element of total return swaps, an alternative swap has been developed called a pure credit swap. In this case, as shown in Figure 24-12, the FI lender will send (each swap period) a fixed fee or payment (like an insurance premium) to the FI counterparty. If the FI lender's loan does not default, it will receive nothing back from the FI counterparty. However, if the loan defaults, the FI counterparty will cover the default loss by making a default payment that is often equal to the par value of the original loan (e.g.,  $P_0 = \$ 100 minus the secondary market value of the defaulted loan (e.g.,  $P_T = \40$ ). That is, the FI counterparty will pay  $P_0 - P_T$  (or  $\$60$ , in this example). Thus, a pure credit swap is like buying credit insurance and/or a multi-period credit option.

# Credit Risk Concerns with Swaps

The financial crisis showed just how much risk the swap market can present to FIs and the global financial system. At the heart of the 2008-2009 financial crisis were derivative securities, mainly credit swaps, held by financial institutions. Specifically, in the late 2000s, FIs such as Lehman Brothers and AIG had written and, in the case of AIG, also insured billions of dollars of credit swap contracts. When mortgages underlying these contracts fell drastically in value, credit swap writers found themselves unable to make good on their promised payments to the swap holders. The result was a significant increase in risk and a decrease in profits for the FIs that had purchased these swap contracts. Given the events surrounding the financial crisis and the role that swaps played in the crisis, it is critical that both regulators and market participants have a heightened awareness of the credit risks on swap agreements.

This raises the following questions. What, exactly, is the default risk on swaps? Is it high or low? Is it the same as or different from the credit risk on loans? In fact, the credit risk on swaps and the credit risk on loans differ in three major ways, so that the credit risk on a swap is much less than that on a loan of equivalent dollar size.[13] We discuss these differences next.

Netting and Swaps. One factor that mitigates the credit risk on swaps is the netting of swap payments. On each swap payment date, one party makes a fixed payment and the other makes a floating payment. In general, however, each party calculates the net difference between the two payments, and one party makes a single payment for the net difference to the other. This netting of payments implies that the default exposure of the in-the-money party is limited to the net payment rather than either the total fixed or floating payment itself.

For instance, in Example 24-1, if the LIBOR rate on the first swap payment date is 3.5 percent, from Table 24-6 the money center bank's cash inflows and cash outflows from the swap are 10\mathrm{m} (= 10\% \times \100\mathrm{m}) and \$5.5\mathrm{m} (= [3.5\% + 2\%] \times \$100\mathrm{m}), respectively. Conversely, the savings bank's cash inflows and outflows from the swap are \$5.5\mathrm{m} and \$10\mathrm{m}, respectively. Rather than have both FIs receive cash and pay cash, the cash flows from the swap are netted. Thus, the savings bank pays a net cash flow of \$4.5\mathrm{m} to be received by the money center bank.

# DO YOU UNDERSTAND?

10. What the difference is between an interest rate swap and a currency swap?
11. What the major differences are between the credit risk on swaps and the credit risk on loans?

Payment Flows Are Interest, Not Principal. Currency swaps involve swaps of interest and principal, but interest rate swaps involve swaps of interest payments only measured against some notional (or face) principal value. This suggests that the default risk on such interest rate swaps is less than on a regular loan, in which both its interest and principal payments are exposed to credit risk.

Standby Letters of Credit. When swaps are made between parties of different credit standings so that one party perceives a significant risk of default by the other party, the poor-quality credit risk party may be required to buy a standby letter of credit (or another form of performance guarantee) from a third-party high-quality (AAA-rated) FI. In this case, should default occur, the standby letter of credit party would provide the swap payments in lieu of the defaulting party.

# COMPARISON OF HEDGING METHODS

# LG 24-6

As described previously, an FI has many alternative derivative instruments with which it can hedge a particular risk. In this section, we look at some general features of the different types of contracts that may lead to an FI preferring one derivative instrument over another. We summarize these in Table 24-9.

# Writing versus Buying Options

Many FIs prefer to buy rather than write options. Of the two reasons for this, one is economic and the other is regulatory.

TABLE 24-9 Comparison of Hedging Methods

# Writing versus buying options
- Writing options truncates upside profit potential while downside loss potential is unlimited.
- Buying options truncates downside loss potential while upside profit potential is unlimited.
- Commercial banks are prohibited by regulators from writing options in certain areas of risk management.

# Futures versus options hedging
- Futures hedging produces symmetric gains and losses when interest rates move against the on-balance-sheet securities, as well as when interest rates move in favor of on-balance-sheet securities.
- Options hedging protects the FI against value losses when interest rates move against the on-balance-sheet securities, but, unlike with futures hedging, does not fully reduce value gains when interest rates move in favor of on-balance-sheet securities.

# Swaps versus forwards, futures, and options
- Futures, and most options, are standardized contracts with fixed principal amounts. Swaps (and forwards) are OTC contracts negotiated directly by the counterparties to the contract.
- Futures contracts are marked to market daily. Swaps and forwards require payments only at times specified in the swap or forward agreement.
- Swaps can be written for relatively long time horizons. Futures and option contracts do not trade for more than two or three years into the future and active trading in these contracts generally extends to contracts with a maturity of less than one year.
- Swap and forward contracts are subject to default risk. Most futures and option contracts are not subject to default risk.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/24727f10e3f06c62b403480a88693391adbd31b12ac7c2761318f49916c1e008.jpg)
Figure 24-13 Writing a Call Option to Hedge the Interest Rate Risk on a Bond

Economic Reasons for Not Writing Options. In writing an option, the upside profit potential is truncated but the downside losses are not. On an expected basis, the writing of an appropriate call or put option would lead to a fair rate of return. However, the actual price or interest rate movement on the underlying asset may move against the option writer. It is this actual price or rate change that leads to the possibility of unlimited losses. Although such risks may be offset by writing a large number of options at different exercise prices and/or hedging an underlying portfolio of bonds, the writer's downside risk exposure may still be significant. Figures 24-13 and 24-14 indicate this. An FI is long in a bond in its portfolio and seeks to hedge the interest rate risk on that bond by writing a bond call option (Figure 24-13). Note that writing the call may hedge the FI when rates fall and bond prices rise—that is, the increase in the value of the bond is offset by losses on the written call. When the reverse occurs and interest rates rise, the FI's profits from writing the call may be insufficient to offset the loss on its bonds. This occurs because the upside profit (per call written) is truncated and equals the premium income  $(C)$ . If the decrease in the bond value is larger than the premium income (to the left of point  $A$  in Figure 24-13), the FI is unable to offset the associated capital value loss on the bond with profits from writing options. As shown in Figure 24-14, the result is a net loss for the FI—and the larger the increase in interest rates, the larger the loss to the FI.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/ca1fcca7660ea0c1167096da1d88de244cc3ab4fe6d0dad789398852251ce704.jpg)
Figure 24-14 Net Payoff of Writing a Call Option on a Bond and Buying a Bond

# naked options

Option positions that do not identifiably hedge an underlying asset or liability.

By contrast, hedging the FI's risk by buying a put option on a bond generally offers the manager a more attractive alternative. Refer again to Figures 24-7 and 24-8. The net overall payoff from the bond investment combined with the put option hedge truncates the downside losses on the bond following a rise in interest rates to some maximum amount and scales down the upside profits by the put premium.

Regulatory Reasons for Not Writing Options. Many FIs also buy options rather than write options for regulatory reasons. Regulators consider writing options, especially naked options, which do not identify a hedge an underlying asset or liability position, to be risky because of their unlimited loss potential. Indeed, bank regulators prohibit commercial banks from writing puts or calls in certain areas of risk management.

# Futures versus Options Hedging

To understand the factors that impact the choice between using futures rather than options contracts to hedge, compare the payoff gains illustrated in Figures 24-15 and 24-16 (for futures contracts) with those in Figures 24-7 and 24-8 (for option contracts). A hedge with futures contracts produces symmetric gains and losses with interest rate increases and decreases. That is, if the FI in Figure 24-15 loses value on the bond due to an interest rate increase (to the left of point  $X$ ), it enjoys a gain on the futures contract to offset this loss. If the FI gains value on the bond due to an interest rate decrease (to the right of point  $X$ ), a loss on the futures contract offsets this gain. The result (shown in Figure 24-16) is no profit or loss for the FI regardless of what happens to interest rates.

By comparison, a hedge with an option contract offsets losses but only partly offsets gains—gains and losses from hedging with options are no longer symmetric for interest rate increases and decreases. For example, in Figure 24-7, if the FI loses value on the bond due to an interest rate increase (to the left of point  $X$ ), a gain on the option contract offsets the loss. However, if the FI gains value on the bond due to an interest rate decrease (to the right of point  $X$ ), the gain is offset only to the extent that the FI loses the fixed option premium (because it never exercises the option). Thus, (as shown in Figure 24-8) the option hedge protects the FI against value losses when interest rates move against the on-balance-sheet securities but, unlike futures hedging, does not fully reduce value gains when interest rates move in favor of on-balance-sheet securities. Thus, many FIs prefer option-type contracts to futures/forward type contracts.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/4cac708e5dc61475a6f14c65fea776ab436c29b664095d35c9d53c6b5465c353.jpg)
Figure 24-15 Selling a Futures Contract to Hedge the Interest Rate Risk on a Bond

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/09aabc9bbe0316bd92f3a41acc9925ca3719256057a9542732c2b4db5fb92c93.jpg)
Figure 24-16 Net Payoff of Selling a Futures Contract and Buying a Bond

# Swaps versus Forwards, Futures, and Options

We have shown in this chapter that swaps can be used to alter the cash flows of an FI from a particular asset and liability structure. In this respect, swaps are comparable to forwards, futures, and options. Indeed, conceptually a swap is just a succession of forward rate contracts. Further, all of the derivative instruments can be viewed as relatively low-cost hedging alternatives when compared to changing the overall composition of the FI's balance sheet of assets and liabilities.

There are, however, some significant contractual differences between swaps and forward, futures, and option contracts that assist the FI manager in his or her choice of hedging method. First, futures and many options are standardized contracts with fixed principal amounts. Swaps (and most forwards), on the other hand, are OTC contracts negotiated directly by the counterparties to the contract. This feature allows for flexibility in the principal amount of the swap contract. Second, futures contracts are marked to market daily, while swaps and forwards require payments only at times specified in the swap or forward agreement. Thus, hedging risk exposure with futures can result in large cash inflows and outflows for the FI if price movements result in margin calls at the end of the day as a result of this marking-to-market process. Third, swaps can be written for relatively long time horizons, sometimes as long as 20 years. Futures and option contracts do not trade for more than two or three years into the future and active trading in these contracts generally extends to contracts with a maturity of less than 1 year. Thus, swaps provide the FI with better long-term contractual protection against risk exposures than futures and options. Finally, swap and forward contracts are subject to default risk, while most futures and option contracts are not. Swap and forward contracts are negotiated between two counterparties, and should one party fail to abide by the terms of the contract, the counterparty incurs this default risk. Futures and option contracts, however, are guaranteed by the exchange on which they trade. Thus, futures and (exchange-traded) options are subject to default risk only when the entire exchange has a default risk problem.

# DO YOU UNDERSTAND?

12. The economic reasons why FIs do not write options?
13. The regulatory reasons why an FI might choose to buy options rather than write them?
14. What the differences are among swap, forward, futures, and option contracts in hedging risk exposure on an FI's balance sheet?

# SUMMARY

This chapter analyzed the risk-management role of forwards, futures, options, and swaps. These (off-balance-sheet) derivative securities provide FIs with a low-cost alternative to managing risk exposure directly on the balance sheet. We first looked at the use of forward and futures contracts as hedging instruments. We saw that while they are close substitutes, they are not perfect substitutes. A number of characteristics such as maturity, liquidity, flexibility, marking to market, and capital requirements differentiate these products and make one or the other more attractive to any particular FI manager. We next discussed the use of option-type contracts available to FI managers to hedge interest rate risk. In particular, we noted that the unique nature of the asymmetric payoff structure of option-type contracts often makes them more attractive to FIs than other hedging instruments such as forwards and futures. Finally, we evaluated the role of swaps as risk-management vehicles for FIs. We analyzed the major types of swaps, such as interest rate and currency swaps. Swaps have special features of long maturity, flexibility, and liquidity that make them attractive alternatives relative to shorter-term hedging vehicles such as futures and options.


# QUESTIONS

1. What are some of the major differences between futures and forward contracts? (LG 24-1, LG 24-2)
2. In each of the following cases, indicate whether it would be appropriate for an FI to buy or sell a forward contract to hedge the appropriate risk. (LG 24-1) a. A commercial bank plans to issue CDs in three months.

b. An insurance company plans to buy bonds in two months c. A thrift is going to sell Treasury securities next month.
d. A U.S. bank lends to a French company; the loan is payable in euros.
e. A mutual fund plans to sell its holding of stock in a German company.
f. A finance company has assets with a duration of 6 years and liabilities with a duration of 13 years.

3. What is a naive hedge? How does a naive hedge protect an FI from risk? (LG 24-1)
4. Suppose that you purchase a Treasury bond futures contract at $95 per $100 of face value. (LG 24-2) a. What is your obligation when you purchase this futures contract?

b. If an FI purchases this contract, in what kind of hedge is it engaged?
c. Assume that the Treasury bond futures price falls to 94. What is your loss or gain?
d. Assume that the Treasury bond futures price rises to 97. Mark your position to market.

5. What are the differences between a microhedge and a macrohedge for an FI? Why is it generally more efficient for FIs to employ a macrohedge than a series of microhedges? (LG 24-3)
6. What is basis risk? What are the sources of basis risk? (LG 24-2)

7. Answer the following: (LG 24-4) a. What are the two ways to use call and put options on T-bonds to generate positive cash flows when interest rates decline?

b. When and how can an FI use options on T-bonds to hedge its assets and liabilities against interest rate declines?
c. Is it more appropriate for FIs to hedge against a decline in interest rates with long calls or short puts?

8. Consider Table 24-3. What are the prices paid for the following futures options: (LG 24-4) a. June U.S. Treasury-bond calls at 17800.

b. June 5-year Treasury puts at 12450.
c. September Eurodollar calls at 9912.

9. Consider Table 24-3 again. (LG 24-4) a. What happens to the price of a call when:


(1) The exercise price increases?
(2) The time until expiration increases?

b. What happens to the price of the put when these two variables increase?

10. How does hedging with options differ from hedging with forward or futures contracts? (LG 24-6)
11. In each of the following cases, identify what risk the manager of an FI faces and whether the risk should be hedged by buying a put or a call option. (LG 24-4) a. A commercial bank plans to issue CDs in three months.

b. An insurance company plans to buy bonds in two months.
c. A thrift plans to sell Treasury securities next month.
d. A U.S. bank lends to a French company with the loan payable in euros.
e. A mutual fund plans to sell its holding of stock in a British company.
f. A finance company has assets with a duration of six years and liabilities with a duration of 13 years.

12. Suppose that an FI manager writes a call option on a T-bond futures contract with an exercise price of 114 at a quoted price of 0-55. What type of opportunities or obligations does the manager have? (LG 24-4)

13. Suppose that a pension fund manager anticipates the purchase of a 20-year, 8 percent coupon T-bond at the end of two years. Interest rates are assumed to change only once every year at year end. At that time, it is equally probable that interest rates will increase or decrease 1 percent. When purchased in two years, the T-bond will pay interest semiannually. Currently, it is selling at par. (LG 24-4) a. What is the pension fund manager's interest rate risk exposure?

b. How can the pension fund manager use options to hedge that interest rate risk exposure?

14. How can caps, floors, and collars be used to hedge interest rate risk? (LG 24-4)
15. Explain the similarity between a swap and a forward contract. (LG 24-6)
16. Distinguish between a swap seller and a swap buyer. (LG 24-5)
17. Give two reasons why credit swaps have been the fastest-growing form of swaps in recent years. (LG 24-5)

18. What is a total return swap? (LG 24-5)
19. How does a pure credit swap differ from a total return swap? (LG 24-5)

20. Why is the credit risk on a swap lower than the credit risk on a loan? (LG 24-5)

# PROBLEMS

1. A bank purchases a six-month \$1 million Eurodollar deposit at an interest rate of 6.5 percent per year. It invests the funds in a six-month Swedish krona bond paying 7.5 percent per year. The current spot rate of U.S. dollars for Swedish krona is \$0.18/SKr. (LG 24-1) a. The six-month forward rate on the Swedish krona is being quoted at  $0.1810/ \text{SKr}$ . What is the net spread earned on this investment if the bank covers its foreign exchange exposure using the forward market?

b. At what forward rate will the spread be only 1 percent per year?

2. An insurance company owns \$50 million of floating-rate bonds yielding LIBOR plus 1 percent. These loans are financed with \$50 million of fixed-rate guaranteed investment contracts (GICs) costing 10 percent. A finance company has \$50 million of auto loans with a fixed rate of 14 percent. They are financed with \$50 million of debt with a variable rate of LIBOR plus 4 percent. If the finance company is going to be the swap buyer and the insurance company the swap seller, what is an example of a feasible swap? (LG 24-5)
3. A commercial bank has  \$200 million of floating-rate loans yielding the T-bill rate plus 2 percent. These loans are financed with\$ 200 million of fixed-rate deposits costing 9 percent. A savings association has \$200 million of mortgages with a fixed rate of 13 percent. They are financed with \$200 million of CDs with a variable rate of T-bill plus 3 percent. (LG 24-5) a. Discuss the type of interest rate risk each FI faces.

b. Propose a swap that would result in each FI having the same type of assets and liabilities (i.e., one has fixed assets and fixed liabilities, and the other has assets and liabilities all tied to some floating rate).
c. Show that this swap would be acceptable to both parties.
d. What are some practical difficulties in arranging this swap?

4. A British bank issues a \$100 million, three-year Eurodollar CD at a fixed annual rate of 7 percent. The proceeds of the CD are lent to a British company for three years at a fixed rate of 9 percent. The spot exchange rate of pounds for U.S. dollars is £1.50/US$. (LG 24-5) a. Is this expected to be a profitable transaction ex ante? What are the cash flows if exchange rates are unchanged over the next three years? What is the risk exposure of the bank's underlying cash position? How can the British bank reduce that risk exposure?

b. If the U.S. dollar is expected to appreciate against the pound to 1.65/1, 1.815/1, and 2.00/1 over the next three years, respectively, what will be the cash flows on this transaction?
c. If the British bank swaps U.S. dollar payments for British pound payments at the current spot exchange rate, what are the cash flows on the swap? What are the cash flows on the entire hedged position? Assume that the U.S. dollar appreciates at the same rates as in part (b).


5. Bank 1 can issue five-year CDs at an annual rate of 11 percent fixed or at a variable rate of LIBOR + 2 percent. Bank 2 can issue five-year CDs at an annual fixed rate of 13 percent or at a variable rate of LIBOR + 3 percent. (LG 24-5) a. Is a mutually beneficial swap possible between the two banks?

b. What is the comparative advantage of the two banks?
c. What is an example of a feasible swap?

# The following problems are related to Appendix 24A, 24B, and 24C materials.

6. Answer the following. (LG 24-2, LG 24-3) a. What is the duration of a 20-year 8 percent coupon (paid semiannually) Treasury bond (deliverable against the Treasury bond futures contract) selling at par?

b. What is the predicted impact on the Treasury bond price based on its duration if interest rates increase 50 basis points annually (25 basis points semiannually)?
c. What is the meaning of the following Treasury bond futures price quote: 101-130?

7. An FI holds a 15-year, 10,000,000 par value bond that is priced at 104 and yields 7 percent. The FI plans to sell the bond but for tax purposes must wait two months. The bond has a duration of 9.4 years. The FI's market analyst is predicting that the Federal Reserve will raise interest rates within the next two months and doing so will raise the yield on the bond to 8 percent. Most other analysts are predicting no change in interest rates, so presently plenty of two-month forward contracts for 15-year bonds are available at 104. The FI would like to hedge against this interest rate forecast with an appropriate position in a forward contract. What will this position be? Show that if rates rise by 1 percent as forecast, the hedge will protect the FI from loss. (LG 24-2)

8. Hedge Row Bank has the following balance sheet (in millions):

<table><tr><td>Assets</td><td>$150</td><td>Liabilities</td><td>$135</td></tr><tr><td></td><td></td><td>Equity</td><td>15</td></tr><tr><td>Total</td><td>$150</td><td>Total</td><td>$150</td></tr></table>

The duration of the assets is six years and the duration of the liabilities is four years. The bank is expecting interest rates to fall from 10 percent to 9 percent over the next year. (LG 24-2) a. What is the duration gap for Hedge Row Bank?

b. What is the expected change in net worth for Hedge Row Bank if the forecast is accurate?

c. What will be the effect on net worth if interest rates increase 100 basis points?
d. If the existing interest rate on the liabilities is 6 percent, what will be the effect on net worth of a 1 percent increase in interest rates?

9. Tree Row Bank has assets of \$150 million, liabilities of \$135 million, and equity of \$15 million. The asset duration is six years and the duration of the liabilities is four years. Market interest rates are 10 percent. Tree Row Bank wishes to hedge the balance sheet with Treasury bond futures contracts, which currently have a price quote of \$95 per 100 face value for the benchmark 20-year, 8 percent coupon bond underlying the contract, a market yield of 8.5295 percent, and a duration of 10.3725 years. (LG 24-2, LG 24-3) a. Should the bank go short or long on the futures contracts to establish the correct macrohedge?

b. How many contracts are necessary to fully hedge the bank?
c. Verify that the change in the futures position will offset the change in the cash balance sheet position for a change in market interest rates of plus 100 basis points and minus 50 basis points.
d. If the bank had hedged with Treasury bill futures contracts that had a market value of  $98 per$ 100 of face value and a duration of 0.25 year, how many futures contracts would have been necessary to fully hedge the balance sheet?
e. What additional issues should be considered by the bank in choosing between T-bond or T-bill futures contracts?

10. How would your answer for part (b) in Problem 9 change if the relationship of the price sensitivity of futures contracts to the price sensitivity of underlying bonds were  $\left[\Delta R_f / \left(1 + R_f\right) / \Delta R / (1 + R)\right] = br = 0.92?$  (LG 24-2)

11. A mutual fund plans to purchase 500,000 of 30-year Treasury bonds in four months. These bonds have a duration of 12 years and are priced at 96-08 (32nds). The mutual fund is concerned about interest rates changing over the next four months and is considering a hedge with T-bond futures contracts that mature in six months. The T-bond futures contracts are selling for 98-24 (32nds) and have a duration of 8.5 years. (LG 24-2) a. If interest rate changes in the spot market exactly match those in the futures market, what type of futures position should the mutual fund create?

b. How many contracts should be used?
c. If the implied rate on the deliverable bond in the futures market moves 12 percent more than the change in the discounted spot rate, how many futures contracts should be used to hedge the portfolio?
d. What causes futures contracts to have a different price sensitivity than the assets in the spot markets?

12. Consider the following balance sheet (in millions) for an FI: (LG 24-1, LG 24-2)

<table><tr><td colspan="2">Assets</td><td colspan="2">Liabilities</td></tr><tr><td>Duration = 10 years</td><td>\$950</td><td>Duration = 2 years</td><td>\$860</td></tr><tr><td></td><td></td><td>Equity =</td><td>90</td></tr></table> a. What is the FI's duration gap?

b. What is the FI's interest rate risk exposure?

c. How can the FI use futures and forward contracts to create a macrohedge?
d. What is the impact on the FI's equity value if the relative change in interest rates is an increase of 1 percent? That is,  $\Delta R / (1 + R) = 0.01$ .
e. Suppose that the FI in part (c) macrohedges using Treasury bond futures that are currently priced at 96. What is the impact on the FI's futures position if the relative change in all interest rates is an increase of 1 percent? That is,  $\Delta R / (1 + R) = 0.01$ . Assume that the deliverable Treasury bond has a duration of nine years.
f. If the FI wants to macrohedge, how many Treasury bond futures contracts does it need?

13. Refer to Problem 12. How does consideration of basis risk change your answers? (LG 24-2) a. Compute the number of T-bond futures contracts required to construct a macrohedge if T-bond futures are priced at 96 and the duration of the T-bond underlying the futures contract is 9 years. Also, assume that  $[\Delta R_f / (1 + R_f) / \Delta R / (1 + R)] = br = 0.90$ .

b. Explain what is meant by  $br = 0.90$ c. If  $br = 0.90$ , what information does this provide on the number of futures contracts needed to construct a macrohedge?

14. Village Bank has \$240 million worth of assets with a duration of 14 years and liabilities worth \$210 million with a duration of four years. In the interest of hedging interest rate risk, Village Bank is contemplating a macrohedge with interest rate T-bond futures contracts now selling for 102-21 (32nds). The T-bond underlying the futures contract has a duration of nine years. If the spot and futures interest rates move together, how many futures contracts must Village Bank sell to fully hedge the balance sheet? (LG 24-2)

15. An FI has a \$100 million portfolio of six-year Eurodollar bonds that have an 8 percent coupon. The bonds are trading at par and have a duration of five years. The FI wishes to hedge the portfolio with T-bond options that have a delta of -0.625. The underlying long-term Treasury bonds for the option have a duration of 10.1 years and trade at a market value of $96,157 per $100,000 of par value. Each put option has a premium of 3.25 (percent of \$100,000). (LG 24-4) a. How many bond put options are necessary to hedge the bond portfolio?

b. If interest rates increase 100 basis points, what is the expected gain or loss on the put option hedge?
c. What is the expected change in market value on the bond portfolio?
d. How far must interest rates move before the payoff on the hedge will exactly offset the cost of placing the hedge?
e. How far must interest rates move before the gain on the bond portfolio will exactly offset the cost of placing the hedge?

16. Corporate Bank has  \$840 million of assets with a duration of 12 years and liabilities worth\$ 720 million with a duration of seven years. Assets and liabilities are yielding 7.56 percent. The bank is concerned about preserving the value of its equity in the event of an increase in interest rates and is contemplating a macro hedge with interest rate options. The call and put options have a face value of 100,000, are priced at 1\frac{44}{64} \text{ and } \frac{56}{64} \text{ respectively, and have a delta (8) of 0.4 and -0.4, respectively. The price of an underlying T-bond is 104.53125}\left(104\frac{68}{128}\right), its duration is 8.17 years, and its yield to maturity is 7.56 percent. (LG 24-4)\


a. What type of option should Corporate Bank use for the macrohedge?
b. How many options should be purchased?
c. What is the effect on the economic value of the equity if interest rates rise 50 basis points?
d. What is the dollar change in value of the option position if interest rates rise by 50 basis points?
e. What will be the cost of the hedge if each option has a premium of  $0.875 per$ 100 of face value?
f. How much must interest rates move against the hedge for the increased value of the bank to offset the cost of the hedge?
g. How much must interest rates move in favor of the hedge, or against the balance sheet, before the payoff from the hedge will exactly cover the cost of the hedge?

17. An FI has a \$200 million asset portfolio that has an average duration of 6.5 years. The average duration of its \$160 million in liabilities is 4.5 years. Assets and liabilities are yielding 10 percent. The FI uses put options on T-bonds to hedge against unexpected interest rate increases. The average delta (δ) of the put options has been estimated at -0.3 and the average duration of the T-bonds is seven years. The current market value of the T-bonds is \$96,000. Put options on T-bonds are selling at a premium of \$1.25 per face value of 100. (LG 24-4) a. What is the modified duration of the T-bonds if the current level of interest rates is 10 percent?

b. How many put option contracts should the FI purchase to hedge its exposure against rising interest rates? The face value of the T-bonds is 100,000.
c. If interest rates increase 50 basis points, what will be the change in value of the equity of the FI?
d. If interest rates increase 50 basis points, what will be the change in value of the T-bond option hedge position?

e. What must be the change in interest rates before the change in value of the balance sheet (equity) will offset the cost of placing the hedge?
f. How much must interest rates change before the payoff of the hedge will exactly cover the cost of placing the hedge?

18. A mutual fund plans to purchase  \$10 million of 20-year T-bonds in two months. The bonds are yielding 7.68 percent. These bonds have a duration of 11 years. The mutual fund is concerned about interest rates changing over the next two months and is considering a hedge with a two-month option on a T-bond futures contract. Two-month calls with a strike price of 105 are priced at 1-25, and puts of the same maturity and exercise price are quoted at 2-09. The delta of the call is 0.5 and the delta of the put is -0.7. The current price of a deliverable T-bond is 103-08 per\$ 100 of face value, its duration is nine years, and its yield to maturity is 7.68 percent. (LG 24-4) a. What type of option should the mutual fund purchase?

b. How many options should it purchase?
c. What is the cost of these options?
d. If rates change  $+ / - 50$  basis points, what will be the impact on the price of the desired T-bonds?
e. By how much does the value of the call position change if interest rates change  $+ / - 50$  basis points?

19. An FI has purchased a \$200 million cap of 9 percent at a premium of 0.65 percent of face value. A \$200 million floor of 4 percent is also available at a premium of 0.69 percent of face value. (LG 24-4) a. If interest rates rise to 10 percent, what is the amount received by the FI? What are the net savings after deducting the premium?

b. If the FI also purchases a floor, what are the net savings if interest rates rise to 11 percent? What are the net savings if interest rates fall to 3 percent?
c. If, instead, the FI sells (writes) the floor, what are the net savings if interest rates rise to 11 percent? What if they fall to 3 percent?
d. What amount of floors should the FI sell in order to compensate for its purchase of caps, given the above premiums?

APPENDIX 24A: Hedging with Futures Contracts

APPENDIX 24B: Hedging with Options

APPENDIX 24C: Hedging with Caps, Floors, and Collars

Appendixes 24A, 24B, and 24C are available through Connect or your course instructor.


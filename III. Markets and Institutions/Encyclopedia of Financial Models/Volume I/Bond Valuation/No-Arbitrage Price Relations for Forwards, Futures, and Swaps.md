
---
title: No-Arbitrage Price Relations for Forwards, Futures, and Swaps
parent_directory: Bond Valuation
formatted: 2025-12-21 10:00:00 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
- no-arbitrage pricing
- derivatives valuation
secondary_tags:
- net cost of carry
- valuing forwards
- valuing futures
- valuing swaps
- telescoping futures position
- hedging with forwards
- carry costs
- forward curve
cssclasses: academia
---

# No-Arbitrage Price Relations for Forwards, Futures, and Swaps

ROBERT E. WHALEY, PhD

Valere Blair Potter Professor of Management and Co-Director of the Financial Markets Research

Center, Owen Graduate School of Management, Vanderbilt University

Abstract: The three key factors that drive the valuation of a financial asset are risk, return, and timing of cash flows. A fundamental assumption in valuation is that in the absence of costless arbitrage opportunities, if two investments whose risk, return, and timing of cash flow properties are exactly the same are identified, they must have the same price in the marketplace. Otherwise, market participants can make free money by simultaneously selling the more expensive one and buying the cheaper one. This principle allows for the development of no-arbitrage price relations for forwards, futures, and swaps. The price of a futures contract is identical to the price of a forward contract in an environment in which short-term interest rates are known. In addition, a swap contract is nothing more than a portfolio of forward contracts. Hence, if a forward contract can be valued, a swap can be valued. The forward price and the underlying spot price are inextricably linked by the net cost of carry relation.

Exchange-traded and over-the-counter (OTC) derivatives contracts are traded worldwide. Of these, the lion's share is plain-vanilla forwards, futures, and swaps. The purpose of this entry is to develop no-arbitrage price relations for forwards, futures, and swap contracts. In doing so, we rely only on the assumption that two perfect substitutes must have the same price. The two substitutes, in this case, are a forward/futures contract and a levered position in the underlying asset. The key to understanding the forward/futures valuation lies in identifying the net cost of carrying (i.e., "buying and holding") an asset. We begin therefore with a discussion of carry costs/benefits. We then proceed by developing a number of important no-arbitrage rela tions governing forward and futures prices. Finally, we show that, since a swap contract is an exchange of future payments at a price agreed upon today, it can be valued as a portfolio of forward contracts.


# UNDERSTANDING CARRY COSTS/BENEFITS

Derivative contracts are written on four types of assets—stocks, bonds, foreign currencies, and commodities. The derivatives literature contains seemingly independent developments of derivative valuation principles for each type of asset. Generally speaking, however, the valuation principles are not asset-specific. The only distinction among assets is how carry costs/benefits are modeled.


The net cost of carry refers to the difference between the costs and the benefits of holding an asset. Suppose a breakfast cereal producer needs 5,000 bushels of wheat for processing in two months. To lock in the price of the wheat today, he can buy it and carry it for two months. One carry cost common to all assets is the opportunity cost of funds. To come up with the purchase price, he must either borrow money or liquidate existing interest-bearing assets. In either case, an interest cost is incurred. We assume this cost is incurred at the risk-free rate of interest. Beyond interest cost, however, carry costs vary depending upon the nature of the asset. For a physical asset or commodity such as wheat, we incur storage costs (e.g., rent and insurance). At the same time, certain benefits may accrue. By storing wheat we may avoid some costs of possibly running out of our regular inventory before two months are up and having to pay extra for emergency deliveries. This is called convenience yield. Thus, the net cost of carry for a commodity equals interest cost plus storage costs less convenience yield, that is,

$$
\begin{array}{c} \text{Net carry cost = Cost of funds + Storage cost} \\ \text{- Convenience yield} \end{array}
$$

For a financial asset or security such as a stock or a bond, the carry costs/benefits are different. While borrowing costs remain, securities do not require storage costs and do not have convenience yields. What they do have, however, is income (yield) that accrues in the form of quarterly cash dividends or semiannual coupon payments. Thus, the net cost of carry for a security is

$$
\text{Net} = \text{Cost} - \text{Income}
$$

Carry costs and benefits are modeled either as continuous rates or as discrete flows. Some costs/benefits such as the cost of funds (i.e., the risk-free interest rate) are best modeled as continuous rates. The dividend yield on a broadly based stock portfolio, the interest income on a foreign currency deposit, and the lease rate on gold also fall into this category. Other costs/benefits such as warehouse rent payments for holding an inventory of grain, quarterly cash dividends on individual common stocks, and semiannual coupon receipts on a bond are best modeled as discrete cash flows. Below we provide the continuous rate and discrete flow cost of carry assumptions. For ease of exposition, we first introduce some notation. The current price of the asset is denoted  $S$ . Its price at future time  $T$  is  $\tilde{S}_T$ , where the tilde denotes the future asset price is uncertain. The opportunity cost of funds (i.e., the risk-free rate of interest) is assumed to be a constant, continuous rate and is denoted  $r$ . If we borrow to buy the asset today, we will owe  $Se^{rT}$  at time  $T$ .

# Continuous Rates

The types of assets whose carry costs are typically modeled as constant, continuous rates include broadly based stock index portfolios, foreign currencies, and gold. Assume that we borrow at the risk-free rate of interest to buy a stock index portfolio that pays cash dividends at a constant continuous rate  $i$ . If we buy one unit of the index today and reinvest all dividends immediately as they are received in more shares of the index portfolio, the number of units of the index portfolio will grow to exactly  $e^{iT}$  units at time  $T$ . Alternatively, if we want exactly one unit of the index on hand at time  $T$ , we buy only  $e^{-iT}$  units today at a cost of  $Se^{-iT}$ . The terminal value of our investment in the index portfolio at time  $T$  will be  $\tilde{S}_T$ . The loan value has accrued from  $Se^{-iT}$  to  $Se^{-iT}e^{rT} = Se^{(r - i)T}$ . After repaying the loan, the terminal portfolio value will be  $\tilde{S}_T - Se^{(r - i)T}$ . Within this continuous rate framework, the net cost of carry rate of an index portfolio equals the difference between the risk-free rate of interest  $r$  and the dividend yield rate  $i$ . The situation for a foreign currency is identical. If we borrow at the domestic risk-free rate, buy a foreign currency, and then invest the currency at the prevailing foreign risk-free rate, the net cost of carry rate equals the difference between the domestic interest rate  $r$  and the foreign interest rate  $i$ . Similarly, if we borrow at the risk-free rate, buy gold, and then lend it in the marketplace, the net cost of carry rate equals the difference between the interest rate  $r$  and the lease rate on gold  $i$ . Within this framework, the total cost of carry paid at time  $T$  is


$$
\operatorname{Net carry cost}_{T} = S \left[ e^{(r - i) T} \right] - 1 \tag {1}
$$

To illustrate, assume that the S&P 500 index is currently at a level of 1,100 and pays dividends at the continuous rate of  $3\%$  annually. Assume also that "shares" of the S&P 500 index can be purchased and sold at the index level (i.e., one share currently costs 1,100). Suppose that an investor wants exactly 3,000 shares of the S&P 500 index on hand in five days. How many shares of the S&P 500 index must the investor buy today if all dividends paid are reinvested in more shares of the index portfolio?

If the investor wants 3,000 shares of the index on hand in five days, the investor needs to buy  $3,000e^{-0.03(5 / 365)} = 2,998.77$  shares today. Over the first day, the number of shares will grow by a factor  $e^{0.03(1 / 365)}$  due to the reinvestment of dividends, bringing the number of shares to  $2,998.77e^{0.03(1 / 365)} = 2,999.01$ . Over the second day, the number of shares will again grow by a factor  $e^{0.03(1 / 365)}$  due to the reinvestment of dividends, bringing the number of shares to 2,999.26. Since the dividends are being paid at a constant, continuous rate, we know the original number of shares purchased will grow to exactly 3,000 shares by the end of day 5 (i.e.,  $3,000e^{0.03(5 / 365)}e^{-0.03(5)(1 / 365)} = 3,000$ ), as is shown in the following table.

<table><tr><td>Day</td><td>Index Level</td><td>Units of Index</td><td>Value of Index Position</td></tr><tr><td>0</td><td>1,100.00</td><td>2,998.77</td><td>3,298,644</td></tr><tr><td>1</td><td>1,160.00</td><td>2,999.01</td><td>3,478,856</td></tr><tr><td>2</td><td>1,154.00</td><td>2,999.26</td><td>3,461,146</td></tr><tr><td>3</td><td>1,145.00</td><td>2,999.51</td><td>3,434,435</td></tr><tr><td>4</td><td>1,170.00</td><td>2,999.75</td><td>3,509,712</td></tr><tr><td>5</td><td>1,175.00</td><td>3,000.00</td><td>3,525,000</td></tr></table>

# Discrete Flows

For most other types of assets including stocks with quarterly cash dividends and bonds with semiannual coupon payments, noninterest carry costs/benefits are best modeled as discrete flows. Suppose a stock promises to pay  $n$  known cash dividends in the amount  $I_{i}$  at time  $t_{i}, i = 1,\dots,n$  between now and future time  $T$ . If we borrow  $S$  to cover the purchase price of the stock and reinvest all cash dividends as they are received at the risk-free rate of interest, the terminal value of our position will be

$$
\tilde {S}_{T} + \sum_{i = 1}^{n} I_{i} e^{r (T - t_{i})} - S e^{r T}
$$

In this instance, the net cost of carry at time  $T$  is

$$
\text{Net carry cost}_{T} = S \left(e^{r T} - 1\right) - \sum_{i = 1}^{n} I_{i} e^{r \left(T - t_{i}\right)}
$$

For coupon-bearing bonds, the expressions are the same; however,  $S$  denotes the bond price and  $I_{i}$  at time  $t_i$ ,  $i = 1, \ldots, n$  denote coupon payments.

To illustrate, an investor buys 10,000 shares of ABC Corporation and carries that position for 90 days. ABC's current share price is  \$50, and the stock promises to pay a\$ 4 dividend in exactly 30 days. What will be the value of the portfolio when the investor unwinds in 90 days, assuming that the risk-free rate of interest is 5\%? As Table 1 shows, the initial investment in 10,000 shares of ABC costs \$500,000. The investor financed the entire purchase price with risk-free borrowings, hence the initial investment is \$0. In 90 days, the investor has three components to the portfolio. First, the investor owns 10,000 shares valued at  $\tilde{S}_T$  a share.

Table 1 Future Value of Asset That Pays Discrete Cash Flows

<table><tr><td>Trade</td><td>Initial Investment</td><td>Value on Day T</td></tr><tr><td>Buy stock</td><td>-50(10,000)</td><td>10,000T</td></tr><tr><td>Borrow funds</td><td>500,000</td><td>-500,000e0.05(90/365) = -506,202.54</td></tr><tr><td>Receive cash dividends on day t, and reinvest at risk-free rate until day T</td><td></td><td>40,000e0.05(60/365) = 40,330.12</td></tr><tr><td>Value of position</td><td>0</td><td>10,000T - 506,202.54 + 40,330.12</td></tr></table>

Next, the investor must repay the \$500,000 in risk-free borrowings plus interest at a cost of \$506,202.54. Finally, the investor received cash dividends of \$4 a share or \$40,000 on day 30, which the investor invested immediately in risk-free discount bonds. Dividends plus accrued interest amount to 40,330.12 on day T. Thus, the total value of the portfolio in 90 days is 10,000S_T - 506,202.54 + 40,330.12.

# Summary and Some Guidelines

Carry costs/benefits are the known costs/ benefits associated with holding an asset over a fixed period of time. In general, they consist of two components—(1) interest and (2) income (in the case of a financial asset) or storage (in the case of a physical asset). The interest component is always expressed as a rate. If we buy an asset today with borrowed funds, we will owe  $e^{rT}$  per unit of the asset on day  $T$ . Income and noninterest costs are expressed either as a continuous proportion of the asset price or as discrete cash flows, depending upon the nature of the underlying asset. Firms potentially have four different sources of price risk—equity risk, interest rate risk, foreign exchange risk, and commodity price risk. Table 2 presents terminal values of leveraged asset positions using the net cost of carry assumption appropriate to each asset category.

# VALUING FORWARDS

With the concept of net cost of carry in hand, we now turn to valuing forward contracts. A forward is a contract that requires its seller to deliver the underlying asset on future day  $T$  at a price agreed upon today. We denote today's forward price as  $f$ . Its price on day  $T$  is denoted  $\tilde{f}_T$ . A forward with no time remaining to expiration must have the same price as the underlying asset, that is,  $\tilde{f}_T = \tilde{S}_T$  as shown in Figure 1. Otherwise, a costless arbitrage profit is possible by buying the asset and selling the forward, or vice versa. The purpose of this section is to derive the value of a forward contract relative to its underlying asset price prior to time  $T$  under the continuous and discrete net carry cost assumptions.


# Continuous Rates

To establish the price of a forward today, consider a U.S. corporation that needs to make a EUR 1,000,000 payment in  $T$  days and wants to lock in the U.S. dollar value of this payment today. The firm can accomplish this goal in two ways.

First, it can borrow U.S. dollars and buy euros today at the spot exchange rate  $S$ , and then carry the position for  $T$  days. To have one euro on hand in  $T$  days, they need to buy  $e^{-iT}$  units today where  $i$  is the risk-free interest rate in Europe. To finance the entire purchase today, they need to borrow  $Se^{-iT}$ . The repayment of the loan will occur in  $T$  days, and the principal plus interest will amount to  $Se^{-iT}e^{iT}$  per euro where  $r$  is the U.S. risk-free interest rate.

Second, it can negotiate the price of a  $T$ -day forward contract with its bank. Under the terms of the forward contract, the firm will buy 1,000,000 euros in  $T$  days at a cost of  $f$  per euro. No money changes hands today. In making its

Table 2 Future value at time  $T$  of a leveraged asset position using continuous rate/discrete flow net cost of carry assumptions. All assets are assumed to incur interest cost at a constant continuous rate  $r$ .

<table><tr><td>Asset Type</td><td>Recommended Model</td><td>Terminal Value</td><td>Explanation of Noninterest Carry Costs/Benefits</td></tr><tr><td>Equity</td><td></td><td></td><td></td></tr><tr><td>Individual stock or narrowly based stock portfolio</td><td>Discrete flow</td><td>\tilde{S}_{T}-(Se^{rT}-FVI)</td><td>For individual common stocks or narrowly based stock indexes, income accrues in the form of discrete cash dividends I_{i} paid at time t_{i}, and the dividends are carried forward until time T at the risk-free interest rate r, that is,FVI=\sum_{i=1}^{n}I_{i}e^{r(T-i)}</td></tr><tr><td>Stock portfolio</td><td>Continuous rate</td><td>\tilde{S}_{T}-Se^{(r-i)T}</td><td>For broadly based stock portfolios, income accrues at a constant, continuous dividend yield rate i.</td></tr><tr><td>Bonds</td><td>Discrete flow</td><td>\tilde{S}_{T}-(Se^{rT}-FVI)</td><td>For coupon-bearing bonds, income accrues in the form of discrete coupon payments I_{i} paid at time t_{i}, and the coupons are carried forward until time T at the risk-free interest rate r, that is,FVI=\sum_{i=1}^{n}I_{i}e^{r(T-i)}</td></tr><tr><td>Currency</td><td>Continuous rate</td><td>\tilde{S}_{T}-Se^{(r-i)T}</td><td>For foreign currency deposits, income accrues at a constant, continuous foreign rate of interest i.</td></tr><tr><td>Commodity</td><td>Discrete flow</td><td>\tilde{S}_{T}-(Se^{rT}-FVI)</td><td>For most physical commodities, storage costs (e.g., warehouse rent and insurance) are paid and convenience yield accrues. In this case, FVI is the future value of convenience yield less the future value of the discrete storage cost payments, that is,FVI=FV(Convenience yield)-FV(Storage costs)While storage costs can be modeled as discrete flows, convenience yield (e.g., the lease rate on gold) may be modeled as a rate.</td></tr></table> decision about which strategy to take, the firm will compare the forward price with the future value had the euros been purchased today and carried until day  $T$ . If  $f$  exceeds  $Se^{(r - i)T}$ , the firm will buy the euros in the spot market and carry them. If  $f$  is less than  $Se^{(r - i)T}$ , the firm will buy the forward contract. Both alternatives provide the firm with EUR 1,000,000 in  $T$  days at a price locked in today. Since they are perfect substitutes, they must have the same price. The value of a forward in a constant continuous net cost of carry framework is

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/314168f504ecd8f4401917fb6006f584c305a61e111f609e1ce974e7c2f65e91.jpg)
Figure 1 Price paths of forward contract and its underlying asset through time. Price convergence occurs at expiration.


$$ f = S e^{(r - i) T} \tag {2}
$$

The relation (2) is sometimes called the net cost of carry relation. When the prices of the forward and the asset are such that (2) holds exactly, the forward market is said to be at full carry. Unless costless arbitrage is somehow impeded, we can be assured that the forward market will always be at full carry. Suppose, for an instant in time,  $f > Se^{(r - i)T}$ . Such a condition implies that there is a costless arbitrage opportunity. We should immediately sell the forward and buy the asset, financing the purchase of the asset with risk-free borrowing. Table 3 shows the outcome. With no investment today, we earn a certain outcome of  $f - Se^{(r - i)T} > 0$  on day  $T$ . Naturally, the market cannot be in equilibrium. The costless arbitrage activity would continue until the selling pressure on the forward price and the buying pressure on the asset price makes the arbitrage profit equal to 0. Where no arbitrage opportunity exists, the cost of carry relation (2) holds.


The net cost of carry relation (2) is written in future value form, since both sides of the equation are values on day  $T$ , as shown in Table 3. The relation can also be expressed in present value form. Multiplying both sides of (2) by the discount factor  $e^{-rT}$ , we get

$$ f e^{- r T} = S e^{- i T} \tag {3}
$$

What (3) says is that the prepaid forward contract,  $fe^{-rT}$ , equals the initial cost of the asset position,  $Se^{-iT}$ .

Table 3 Costless Arbitrage Trades Where  $f > S{e}^{\left( r - i\right) T}$

<table><tr><td>Trades</td><td>Initial Investment</td><td>Value on Day T</td></tr><tr><td>Buy e^{-iT} units of asset</td><td>-Se-itt</td><td>\tilde{S}_T</td></tr><tr><td>Borrow (sell risk-free bonds)</td><td>Se-itt</td><td>-Se^{(r-i)T}</td></tr><tr><td>Sell forward contract</td><td></td><td>-(\tilde{S}_T - f)</td></tr><tr><td>Net portfolio value</td><td>0</td><td>f - Se_{(r-i)T}</td></tr></table>

# Discrete Flows

In the event that income or noninterest carry costs are more appropriately modeled as discrete cash flows, the net cost of carry relation is

$$ f = S e^{r T} - F V I
$$ where  $FVI$  is the future value of the promised income receipts. If the underlying asset is a physical asset, the future value of the income,  $FVI$ , may be negative as a result of storage cost payments. The relation can also be written in its present value form,


$$ f e^{- r T} = S - P V I
$$ where  $PVI$  is the present value of the promised income receipts, that is,  $PVI = FVIE^{-rT}$ . The prepaid forward price equals  $S - PVI$ , where the underlying asset distributes discrete known cash flows through time.


To illustrate, let's compute the value of a forward contract on a hypothetical dividend-paying stock, HAL Company. Specifically, we want to value a six-month forward contract on 3,000 shares of this company, assuming that the current share price is  \$120 and that a\$ 3 cash dividend will be paid in two months and then again in five months. Assume the risk-free rate of interest is 5\%. Since the cash dividend payments are discrete cash inflows, the cost of carry relation given by (1) is the most appropriate. The future value of the first dividend payment is  $3e^{0.05(4/12)}$  given by (1) and the future value of the second dividend is  $3e^{0.05(1/12)}$ . The future value of all income received during the forward contract's life is therefore

$$
FVI = 3 e^{0.05 (4 / 12)} + 3 e^{0.05 (1 / 12)} = 6.06
$$

The value of the forward contract is therefore

$$ f = 120 e^{0.05 (6 / 12)} - 6.06 = 116.97 \mathrm{per share}
$$ or 350,910 in total.


# Hedging with Forwards

Before turning to futures contract valuation, it is worth considering the no-arbitrage portfolio in Table 3 more closely. It contains important

Table 4 Hedging a Stock Portfolio Using a Forward Contract

<table><tr><td>Trades</td><td>Initial Investment</td><td>Value on Day T</td></tr><tr><td>Own stock portfolio. Reinvest all dividend income into more shares of stocks.</td><td>-S</td><td> \tilde{S}_T e^{iT} </td></tr><tr><td>Sell  e^{-iT}  forward contract.</td><td>0</td><td> -( \tilde{S}_T - f ) e^{iT} </td></tr><tr><td>Net portfolio value</td><td>0</td><td> f e^{iT} </td></tr></table> intuition regarding hedging risk. Suppose that we hold a stock portfolio and fear that the market will decline over the next few months. To avoid the risk of a stock market decline, we can sell our stocks and buy risk-free bonds. Alternatively, we can sell a forward contract on our stock portfolio. These alternatives are perfect substitutes.


To see this, assume that our portfolio is sufficiently broad-based that it is reasonable to assume that the dividend yield is a constant continuous rate,  $i$ . If all dividend income is invested in more units of the stock portfolio, one unit in the stock portfolio today will grow to  $e^{iT}$  units on day  $T$ , as we discussed earlier and illustrated in Table 4. To hedge the price risk exposure of  $e^{iT}$  units of the stock portfolio on day  $T$ , we need to sell  $e^{iT}$  forward contracts today. The value of this forward position will be  $-( \tilde{S}_T - f) e^{iT}$  on day  $T$ . Once the positions are netted, the terminal value of the portfolio is  $f e^{iT}$ . Note that the value is certain. The forward price, the dividend yield rate, and the hedge period horizon (i.e., the life of the forward contract) are all known on day 0. To see that the return on the hedged portfolio equals the risk-free return, substitute the net cost of carry relation,  $f = S e^{(r - i)T}$ , in the expression for the terminal value of the portfolio in Table 4. The net terminal value is  $f e^{iT} = S e^{(r - i)T} e^{iT} = S e^{rT}$ , exactly the amount we would have had if the stock portfolio had been liquidated and invested in risk-free bonds at the outset.

Table 5 Perfect Substitutes Implied by the Net Cost of Carry Relation

<table><tr><td>Position 1</td><td></td><td>Position 2</td></tr><tr><td>Buy asset/sell forward</td><td>=</td><td>Buy risk-free bonds (lend)</td></tr><tr><td>Buy risk-free bonds (lend)/buy forward</td><td>=</td><td>Buy asset</td></tr><tr><td>Buy asset/sell risk-free bonds (borrow)</td><td>=</td><td>Buy forward</td></tr><tr><td>Sell asset/buy forward</td><td>=</td><td>Sell risk-free bonds (borrow)</td></tr><tr><td>Sell risk-free bonds (borrow)/sell forward</td><td>=</td><td>Sell asset</td></tr><tr><td>Sell asset/buy risk-free bonds (lend)</td><td>=</td><td>Sell forward</td></tr></table>

# Summary

A long forward position is a perfect substitute for buying the asset using risk-free borrowings. Consequently, the price of a forward equals the price of the asset plus net carry costs. But this is only one possible combination of positions in the asset, the forward, and risk-free bonds. Table 5 shows all possible pairings. Using the net cost of carry relation, we can demonstrate why Position 1 is a perfect substitute for Position 2 in all six rows of the table. A full understanding of each relation will prove invaluable in understanding valuation and risk management problems.

# VALUING FUTURES

Futures contracts are like forward contracts, except that price movements are marked-to-market each day rather than waiting until contract expiration and having a single, once-and-for-all settlement. If the marking-to-market produces a gain during the futures contract's life, the gain can be reinvested in interest-bearing securities. Conversely, if the marking-to-market produces a loss, the loss must be covered with either existing interest-bearing assets or borrowing at the risk-free interest rate.

To distinguish between buying a forward and buying a futures, consider the futures position cash flows shown in Table 6. As we discussed earlier, a forward contract purchased today has a value  $\tilde{S}_T - f$  on day  $T$ . In contrast, a futures contract is marked to market each day, and the daily gains/losses gather interest. If risk-free rate of interest is  $0\%$ , the terminal value of the futures position (i.e., the sum of the mark-to-market gain/loss column) is the same as the terminal value of the forward position. If risk-free rate of interest is greater than  $0\%$ , however, the value of the futures position on day  $T$  may be greater or less than the terminal value of the forward position, depending on the path that futures prices follow over the life of the contract.


To illustrate, suppose that an investor needs £1,000,000 in three days and wants to lock in the price today. Suppose also that a three-day forward contract on British pounds is priced at \$1.60 per pound and that a British pound futures contract with three days remaining to expiration also has a price of \$1.60. Let's compare the terminal values of a long forward position with a long futures position at the end of three days assuming the domestic risk-free rate is 5\%. Assume that the futures prices over

Table 6 Cash Flows of Long Futures Positions through Time

<table><tr><td>Day t</td><td>Futures Price</td><td>Mark-to-Market Gain/Loss on Day t</td><td>Value of Gain/Loss on Day T</td></tr><tr><td>0</td><td>F</td><td></td><td></td></tr><tr><td>1</td><td> \tilde{F}_{1} </td><td> \tilde{F}_{1}-F </td><td> (\tilde{F}_{1}-F)e^{r(T-1)} </td></tr><tr><td>2</td><td> \tilde{F}_{2} </td><td> \tilde{F}_{2}-\tilde{F}_{1} </td><td> (\tilde{F}_{2}-\tilde{F}_{1})e^{r(T-2)} </td></tr><tr><td>...</td><td></td><td></td><td>...</td></tr><tr><td>t</td><td> \tilde{F}_{t} </td><td> \tilde{F}_{t}-\tilde{F}_{t-1} </td><td> (\tilde{F}_{t}-\tilde{F}_{t-1})e^{r(T-t)} </td></tr><tr><td>...</td><td></td><td></td><td>...</td></tr><tr><td>T-1</td><td> \tilde{F}_{T-1} </td><td> \tilde{F}_{T-1}-\tilde{F}_{T-2} </td><td> (\tilde{F}_{T-1}-\tilde{F}_{T-2})e^{r} </td></tr><tr><td>T</td><td> \tilde{F}_{T} </td><td> \tilde{F}_{T}-\tilde{F}_{T-1} </td><td> \tilde{F}_{T}-\tilde{F}_{T-1} </td></tr><tr><td>Total</td><td></td><td> \tilde{F}_{2}-\tilde{F}_{1} </td><td> \sum_{t=1}^{T}(\tilde{F}_{t}-\tilde{F}_{t-1})e^{r(T-t)} </td></tr></table> the next three days are $1.71, $1.67, and 1.70, respectively.


The terminal value of a long forward position is simply the exchange rate on day 3,  \$1.70, less the forward price,\$ 1.60, times one million, \$100,000, exactly equal to the sum of the mark-to-market gains/losses on the long futures position. The terminal value of the long futures position when the mark-to-market gains/losses are invested/financed at the risk-free rate of interest, however, is \$100,024.66, as is shown in the following table.

<table><tr><td>Day t</td><td>Futures Price</td><td>Mark-to-Market Gain/Loss on day t</td><td>Value of Gain/Loss on Day T</td></tr><tr><td>0</td><td>1.60</td><td></td><td></td></tr><tr><td>1</td><td>1.71</td><td>110,000.00</td><td>110,030.14</td></tr><tr><td>2</td><td>1.67</td><td>-40,000.00</td><td>-40,005.48</td></tr><tr><td>3</td><td>1.70</td><td>30,000.00</td><td>30,000.00</td></tr><tr><td>Total</td><td></td><td>100,000.00</td><td>100,024.66</td></tr></table>

In general, the terminal value of a long forward and a long futures will be different. The reason that the terminal values are different is that the terminal value of the futures position depends on how the futures price evolves through time. Other futures price paths will produce different terminal values. If, for example, the futures price had been \$1.51 on day 1 rather than \$1.71, the terminal value of the futures position would have been \$99,997.26, below (not above) the \$100,000 terminal value of the long forward.


# Telescoping Futures Position

Interestingly, the fact that a long forward position does not have the same terminal value of a long futures position does not imply that the forward and futures prices are different. Indeed, as we will show shortly, they are equal. We can control the effect of the reinvestment of the mark-to-market proceeds by creating a "telescoping futures position."

A telescoping futures position is created as follows. We begin, on day 0, with  $e^{-rT}$  futures contracts. Since we enter the position at the close of day 0, the marked-to-market gain for the day is 0. In preparation for day 1, we increase the size of the futures position by a factor  $e^r$ . At the end of day 1, the futures position is marked-to-market, generating proceeds of  $e^{-r(T - 1)}(\tilde{F}_1 - F)$ . If this gain/loss is carried forward at the risk-free interest rate until day  $T$ , the terminal gain/loss will be  $e^{-r(T - 1)}(\tilde{F}_1 - F) e^{r(T - 1)} = \tilde{F}_1 - F$ , as shown in Table 7. On day 2, the position is again increased by a factor  $e^r$  and is marked-to-market at  $e^{-r(T - 2)}(F_2 - F_1)$ . Carrying this amount forward to day  $T$ , we have  $e^{-r(T - 2)}(\tilde{F}_2 - \tilde{F}_1) e^{r(T - 2)} = (\tilde{F}_2 - \tilde{F}_1)$ , and so on. Because the number of futures is chosen to exactly offset the accumulated interest factor on the daily mark-to-market gain/loss, there will be exactly one futures contract on hand on day

Table 7 Cash Flows of Telescoping Futures Position Providing Same Terminal Value as Forward Position on Day  $T$

<table><tr><td>Day t</td><td>Futures Prices</td><td>No. of Futures Contracts</td><td>Mark-to-Market Gain/Loss on Day t</td><td>Value of Gain/Loss on Day T</td></tr><tr><td>0</td><td>F</td><td>e^{-rT}</td><td></td><td></td></tr><tr><td>1</td><td>F1</td><td>e^{-(r(T-1))}</td><td>e-(r(T-1)(F1-F)</td><td>e-(r(T-1)(F1-F)e(r(T-1)=(F1-F)</td></tr><tr><td>2</td><td>F2</td><td>e-(r(T-2))</td><td>e-(r(T-2)(F2-F1)</td><td>F2-F1</td></tr><tr><td>...</td><td></td><td></td><td>...</td><td></td></tr><tr><td>t</td><td>Ft</td><td>e-(r(T-t))</td><td>e-(r(T-t)(Ft-Ft-1)</td><td>Ft-Ft-1</td></tr><tr><td>...</td><td></td><td></td><td>...</td><td></td></tr><tr><td>T-1</td><td>FT-1</td><td>e-r</td><td>e-(FT-1-FT-2)</td><td>FT-1-FT-2</td></tr><tr><td>T</td><td>FT</td><td>1</td><td>FT-T-FT-1</td><td>FT-T-FT-1</td></tr><tr><td>Total</td><td></td><td></td><td></td><td>FT-F=ST-F</td></tr></table>

$T$ , and the value of the futures position will be  $S_{T} - F$ . Assuming that the futures and forward contracts expire at the same time, the telescoping futures position will have exactly the same terminal value as the long forward position.

Using an illustration, let's compare terminal values of long forward and long telescoping futures positions. Suppose that an investor needs £1,000,000 in three days and wants to lock in the price today. Suppose also that a three-day forward contract on British pounds is priced at \$1.60 per pound and that a British pound futures contract with three days remaining to expiration also has a price of \$1.60. Assume that the domestic risk-free interest rate is 5\% and that the futures prices over the next three days are $1.71, $1.67, and 1.70, respectively.

As in the previous illustration, the terminal value of a long forward position is the exchange rate on day 3,  \$1.70, less the forward price,\$ 1.60, times one million, or \$100,000. Because the initial futures position has less than 1 million units, the total of the mark-to-market gains/losses column is less than \$100,000. The terminal value of the telescoping futures position when the mark-to-market gains/losses are invested/financed at the risk-free rate of interest is exactly 100,000, as is shown in the following table:

<table><tr><td>Day</td><td>Futures Price</td><td>Number of Units</td><td>Mark-to-Market Gain/Loss on day t</td><td>Value of Gain/Loss on Day T</td></tr><tr><td>0</td><td>1.60</td><td></td><td></td><td></td></tr><tr><td>1</td><td>1.71</td><td>999,726.06</td><td>109,969.87</td><td>110,000.00</td></tr><tr><td>2</td><td>1.67</td><td>999,863.02</td><td>-39,994.52</td><td>-40,000.00</td></tr><tr><td>3</td><td>1.70</td><td>1,000,000.00</td><td>30,000.00</td><td>30,000.00</td></tr><tr><td>Total</td><td></td><td></td><td>99,975.35</td><td>100,000.00</td></tr></table>

The dynamic rebalancing of the futures position within the telescoping strategy ensures that the outcome is exactly the same as a long forward position.

# Equivalence of Forward and Futures Prices

The fact that a long telescoping futures position has a terminal value of  $\tilde{S}_T - F$  and that a long forward position has a terminal value of  $\tilde{S}_T - F$  implies that the futures price and forward price must be equal to each other. If they are not, a costless arbitrage profit would be possible by selling the forward and entering a long telescoping position in the futures (if  $f > F$ ) or by buying the forward and entering a short telescoping position in the futures (if  $f < F$ ). Given the equivalence of forward and futures prices, the valuation equations for a futures contract are the same as those of the forward, that is,

$$
F = f = S e^{(r - i) T} \tag {4}
$$ if all carry costs are constant continuous rates, and


$$
F = f = S e^{r T} - F V I \tag {5}
$$ if noninterest carry costs are discrete.


Let's illustrate how to short sell stocks synthetically using stock futures. Retail investors in the U.S. often find it costly to short sell shares of common stock. Consequently, stock futures were recently launched. Assume that an investor wants to short sell a particular stock over the next  $T$  days. Its current share price is  $S$ , and a cash dividend of  $D$  has been declared and will be paid in  $t$  days. Let's demonstrate that selling a telescoping position in share futures is equivalent to short selling the stock.

First, the value in  $T$  days of a short position in the stock must be identified. Short selling a share of the stock generates proceeds of  $S$ . Assume that an investor can take the proceeds from the short sale and invest them at the risk-free rate of interest. In addition, the stock pays a cash dividend of  $D$  on day  $t$ . The investor is responsible for paying the cash dividend. On day  $T$ , the value of each security position in the portfolio is as reported in the following table:


<table><tr><td>Trades</td><td>Initial Investment</td><td>Value on Day T</td></tr><tr><td>Short sell stock.</td><td>S</td><td>- \tilde{S}_T - D e^{r(T-t)}</td></tr><tr><td>Must pay cash dividends, if any.</td><td></td><td></td></tr><tr><td>Buy risk-free bonds</td><td>-S</td><td>S e^{r T}</td></tr><tr><td>Net portfolio value</td><td>0</td><td>S e^{r T} - D e^{r(T-t)} - \tilde{S}_T</td></tr></table>

The net portfolio value on day  $T$  is  $Se^{rT} - De^{r(T - t)} - \tilde{S}_T$ .

From the discussion above, we know that selling a telescoping position in the share futures has a terminal value of  $F - \tilde{S}_T$ . But, from valuation equation (5), we know that, in the absence of costless arbitrage opportunities,  $F = Se^{rT} - De^{r(T - t)}$ . Substituting, we find that the value of the short futures position on day  $T$  is  $Se^{rT} - De^{r(T - t)} - \tilde{S}_T$ , an amount identical to that of the short stock position.

# HEDGING WITH FUTURES

The telescoping futures position has implications in terms of hedging with futures contracts. For the hedge to be completely effective, the number of futures must equal the number of units of the underlying asset on day  $T$ . Under the continuous carry cost assumption, we know that one unit of the asset grows to  $e^{iT}$  units on day  $T$ . We also know that telescoping futures positions that starts with  $e^{-rT}$  futures contracts today has a single contract at time  $T$ . Consequently, to hedge the long asset position in Table 4, our futures hedge would start off with being short  $e^{-(r - i)T}$  futures contract on day 0, and would scale up by a factor of  $e^r$  contracts per day over the life of the hedge. Assuming the futures expires on day  $T$ , the terminal value of the short telescoping position would be  $-(S_T - F)e^{iT}$  and the net terminal value of the hedged portfolio would be  $Fe^{iT}$ . Substituting the net cost of carry relation (4), the net terminal value of the hedged portfolio may be written  $Se^{rT}$ , which shows that hedging using a short telescoping futures position is equivalent to liquidating the asset position and buying risk-free bonds. The day-to-day increase in the size of the futures position by the interest factor  $e^r$  undoes the effects of interest on the daily marking to market of the futures gains/losses. In practice, this dynamic, day-to-day adjustment is called tailing the hedge.


# SUMMARY

Futures contracts are like forward contracts except that price movements are marked to market daily. Because these daily gains/losses are allowed to accrue interest until the end of the contract's life, a long futures position will not in general have the same terminal value as a long forward position. The effects of the interest accrual on the mark-to-market gains/losses can be undone, however, using a telescoping futures position. Each day  $t$ , the number of futures is set equal to  $e^{-r(T - t)}$  for each unit of the underlying asset at the end of the hedging interval. Set in this way, the terminal value of a long telescoping position in the futures equals the terminal value of a long forward. From a costless arbitrage perspective, therefore, the following are perfect substitutes:

Long telescoping futures position  $=$  Long forward position

Short telescoping futures position  $=$  Short forward position

The telescoping futures strategy also has implications for hedging. To undo the effects of interest on the daily marking to market of the futures gains/losses when the life of the futures matches the hedging horizon  $T$ , the size of a futures hedge starts at a level equal to the present value of the number of terminal units of that asset, that is,  $e^{-rT}$  for each unit of the asset and increases in size by a factor of  $e^r$  each day.

# IMPLYING FORWARD NET CARRY RATES

Thus far, we have examined forward/futures contracts with a single maturity. A casual examination of the financial pages, however, shows multiple maturities for the same underlying asset. In these situations, we can use the net cost of carry relation (2) to deduce implied forward cost of carry rates.

# VALUING SWAPS

A swap contract is an agreement to exchange a set of future cash flows. A plain-vanilla swap is usually regarded to be an exchange of a fixed payment for a floating payment, where the floating payment is tied to some reference rate, index level, or price. Like a forward contract, the underlying asset can be anything from a financial asset such as a stock or a bond to a physical asset such as crude oil or gold. Also, like a forward contract, a swap involves no upfront payment.

The key information needed to value a swap contract is the forward curve of the underlying asset and the zero-coupon yield curve for risk-free bonds. The forward curve refers to the relation between the price of a forward contract on the underlying asset and its time to expiration or settlement. Where the time to expiration is 0, the forward price equals the prevailing spot price. Figure 2 shows two possible forward curve relations. A normal forward curve is upward sloping, and an inverted forward curve is downward sloping. For financial assets, the slope will depend on the net difference between the risk-free rate and the income received on the underlying asset. Thus, a normal forward curve will arise in markets where the interest rate is greater than the income rate, and an inverted forward curve will arise in markets where the interest rate is less than the income rate. For physical assets or commodities, the nature of the forward curve depends also on the cost of storage and convenience yield. The zero-coupon yield curve refers to the relation between interest rates and term to maturity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/0dbc07ac745f71e3b5f211120eb11d910cec1e65039440d4c1c3c26131c8512a.jpg)
Figure 2 Forward curve: Relation between forward price and its time to expiration. Where time to expiration is 0, forward price equals spot price.


In terms of swap valuation, the nature of the forward curve is irrelevant as long as the forward prices represent tradable prices. To see this, consider a jeweler (i.e., long hedger) who needs 1,000 troy ounces of gold each quarter over the next two years and wants to lock in his input cost today. One hedging alternative is to buy a strip of forward (or futures) contracts, one corresponding to each desired delivery date. The cost of the gold each quarter will be locked in; however, the cost of the gold will be different each quarter unless the forward curve is a horizontal line. The gold market, however, is typically in contango, so the cost, although certain, will escalate through time. A second alternative is to buy a swap contract that provides for the delivery of 1,000 ounces of gold each quarter, where there is single fixed price for all deliveries. In the absence of costless arbitrage opportunities, it must be the case that the present value of the deliveries using the forward curve must be the same as the present value of the deliveries using the fixed price of the swap contract, that is,

$$
\sum_{i = 1}^{n} f_{i} e^{- r_{i} T_{i}} = \sum_{i = 1}^{n} \bar {f} e^{- r_{i} T_{i}} \tag {6}
$$ where  $n$  is the number of delivery dates,  $f_{i}$  is the price of a forward contract with time to expiration  $T_{i}$ ,  $r_{i}$  is the risk-free rate of interest corresponding to time to expiration  $T_{i}$ , and  $f$  is the fixed price in the swap agreement. In an instance where the right-hand side of (6) is greater (less) than the left-hand side, an arbitrageur would buy (sell) the swap and sell (buy) the strip of forward contracts, pocketing the difference. Because such free money opportunities do not exist, (6) must hold as an equality.


Equation (6) can be rearranged to isolate the fixed price of the swap agreement, that is,

$$
\bar {f} = \frac{\sum_{i = 1}^{n} f_{i} e^{- r_{i} T_{i}}}{\sum_{i = 1}^{n} e^{- r_{i} T_{i}}} = \sum_{i = 1}^{n} f_{i} \left(\frac{e^{- r_{i} T_{i}}}{\sum_{i = 1}^{n} e^{- r_{i} T_{i}}}\right) \tag {7}
$$

Expressed in this fashion, it becomes obvious that the fixed price of a swap is a weighted average of forward prices, one corresponding to each delivery date.

# KEY POINTS

- The net cost of carry is the cost of holding an asset over a period of time. One component of the cost of carry for all assets is the opportunity cost of funds. In order to buy the asset, an investor must pay for it.
- Beyond interest cost, however, carry costs may be positive or negative, depending upon the nature of the underlying asset. If the asset is a physical asset or commodity such as grain, the asset holder must pay storage costs such as warehouse rent and insurance. If the underlying asset is a financial asset or security such as a stock, a bond, or a currency, on the other hand, there are no storage costs. Instead, such assets produce a known income stream in the form of dividend payments or interest receipts, and this income can be used to subsidize the cost of borrowing.

- The interest cost is modeled as a constant continuous rate and the noninterest costs/benefits as either continuous rates or discrete cash flows, depending on the nature of the underlying asset.
- Given the assumption and definition of the cost of carry, pricing equations for forward and futures contracts can be developed. The price of a forward equals the price of a futures and both are equal to the asset price plus net carry costs. This is because if an investor needs an asset on hand at some future date at a price "locked-in" today, the investor can buy a forward contract, buy a futures, or buy the underlying asset and carry it.
- Perfect substitutes must have the same price.
- The relation between the forward curve and the fixed price of a swap is as follows. In the absence of costless arbitrage opportunities, the fixed price is a weighted average of the prices of the corresponding forward contracts, with the weights equal to the discount factor of each flow in relation to the sum of all discount factors.


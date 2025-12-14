---
parent_directory: FINM Quantitative Trading Strategies/Lecture Notes
title: "Lecture 02: A Simple Quantitative Trading Example - Spread Trading"
tags:
aliases:
  - Spread Trading
  - Simple Quantitative Trading Example
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
---

# A SIMPLE QUANTITATIVE TRADING EXAMPLE: SPREADS

# 1. WORKING OUT A SPREAD TRADE

Let's work out what the bones of a quantitative trading strategy might entail by examining one of the simplest examples: the spread trade.

Spread trading strategies have a long history and many current forms. Because they involve trading more than one asset, they are just about the simplest example of a case where we can stochastically control risk versus reward.

1.1. What Is A Spread? Let's say we monitor prices or returns on a pair of securities. For sake of argument, we will say we are monitoring the prices  $f_{t}^{(2)}, f_{t}^{(5)}$  of 2 and 5 year CME treasury note futures<sup>1</sup>. We can construct a new variable consisting of the difference between them

$$
s _ {t} := f _ {t} ^ {(5)} - f _ {t} ^ {(2)}
$$

This value  $s_t$  is called the spread or difference spread between the 2 and 5 year note futures, and we often think in terms of trading spreads, even when in practice the trades are expressed in underlying securities such as futures contracts.

1.1.1. Return Spreads. For assets with clear fundamental relations, we tend to use difference spreads as above. Frequently, we prefer to assume that old differences are "priced in" and therefore unlikely to change, in which case we may prefer return spreads in which we consider how much returns for the two assets have differed in recent history.

1.2. Reversion To The Mean. We might find that, during the 20 years from 1995 to 2015, the average of  $s_t$  was  $\bar{s} = 8.5$ . It is easy to conceive of a strategy that would plausibly make money by always making bets that, whatever the value of  $s_t$ , it is expected to revert back to around 8.5. How would such a spread trading strategy look?

It probably does not make sense to make bets when the current  $s_t$  is very close to 8.5. So, for example, if  $s_t = 8.499$  or  $s_t = 8.501$  we should not hold a position. On the other hand, if  $s_t = 4.0$  this looks like a good opportunity to bet that  $s$  will soon rise. We do not necessarily know if  $f_t^{(2)}$  will fall or  $f_t^{(5)}$  will rise, but we think some combination of those things will happen. So it makes sense to both short some 2 year note futures and buy some 5 year note futures. We call this "buying" the spread because we are trading securities in such a way that we think the spread will rise.

For similar reasons, if we see  $s_t = 12.0$  then we ought to buy some 2 year note futures and short some 5 year note futures. We call this "shorting" the spread.

Now, if  $s_t = 14.0$ , it is easy to argue that the opportunity is greater and we should be shorting even more of the spread. But remember, it probably only got to 14.0 by going through 12.0 at some point. We are likely already short the spread and, since it has risen further, have lost money on the position. Are we prepared to lose more?

In spread trading, it is common to have some point at which you admit that your hypothesis (of spread reverting to its mean) has been so contradicted by market data that you are no longer willing to believe it, at least not with your dollars. Such a point is often defined in terms of PL - dollars lost to the position, and is called a stop loss level. Once you have reached it, you resolve to close out all positions, and perhaps wait a while before attempting a similar spread trade again.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/969afcef-8bd4-4e48-88a9-ea4b0a14e1d4/b9f643e2cb73bcab39819999d9e268cc7fc2127550fa64e90066ebb2324ee077.jpg)  
Profit: 0.045  
FIGURE 1. Trading A Hypothetical Spread

The human complexity of spread trading is very low. It can be done in 50-150 lines of R or Python, and is feasible even in Excel. However, when we consider how might approach it in practice, we find there are many parameters to determine and they are likely to make us run simulations over and over. These parameters include

- Which security pairs to run on  
- Entry and exit boundaries  
- Hedge proportions, if not 1:1  
- Hedge determination algorithms  
- Lookback periods for hedge (and possibly returns) computations  
- Stop loss/ position sizing boundaries

Testing 16 possibilities for each of the above would, in an exhaustive grid search, lead to running over 15 million backtests. If each one takes 5 seconds, we will need about 3 years to run them all.

1.3. Generalizations To More Stochastic Control. Though the (nominally) zero-centered series we have based our scheme on was a direct spread, we can easily imagine first running a regression of future returns against current observed spread. This crude estimate of alpha can then serve as the basis on which we choose to send orders to the market in a very simple trading scheme.

If our scheme is controlling market orders, we may well assume that (given a cost model) we are able to take on a small position with relative certainty. If instead the scheme is controlling resting orders (i.e. liquidity-adding or passive orders) then we must further account for tracking outstanding orders and when to cancel them. This does not apply only to electronic markets. Over-the-counter markets have human equivalents (often called standing orders) to the passive electronic orders.
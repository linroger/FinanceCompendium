---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 1. THE STRUCTURE OF TICK DATA
linter-yaml-title-alias: 1. THE STRUCTURE OF TICK DATA
---

# 1. THE STRUCTURE OF TICK DATA

1.1. Terminology. The basic important elements of market state change are trades, bids and offers. We use the term tick data to denote high-resolution observations of these numbers, and usually assume it is available as of any given time in which the market is open. The trades are collectively considered to comprise the trade tape while the bids and offers collectively form the order book as of any given moment.

If the market is a centralized exchange $^1$ , we can consider one or more orders to be at the top of book. For typical exchanges this is the set of highest-price bids and lowest-priced offers that have not yet matched or been cancelled, and have not traded out. The top of book is normally also ranked with highest priority to the oldest orders, in which case the exchange is said to use classic price-time priority. Incoming new orders are said to comprise the order flow.

For a given asset class, the group of exchanges serving it, the rules they use, and the firms accessing them collectively form the market microstructure.

1.1.1. Data Formats. Incoming tick data from established fully electronic markets normally arrives in FIX format $^2$ . Take, for example, data $^3$  from the CME such as

```txt
1128=9SOR9=265SOR35=XSOR49=CMESOR34=10065111SOR52=20141013152659076SOR75=20141013  
SOR268=2SOR279=2SOR22=8SOR48=656784SOR83=215750SOR107=ESV4 C1895  
SOR269=1SOR270=1775SOR271=5SOR273=152659000SOR336=2SOR346=1SOR1023=1  
SOR279=OSOR22=8SOR48=656784SOR83=215751SOR107=ESV4 C1895SOR269=1  
SOR270=1850SOR271=291SOR273=152659000SOR336=2SOR346=6SOR1023=3SOR10=008SOR
```

Less established markets may use JSON-style formats as in this message from the Coinbase cryptocurrency exchange

```txt
{'type': 'open', 'side': 'sell', 'price': '0.03743000', 'order_id': '88d50b31-d5c6-445b-9134-05989d05e165', 'remaining_size': '0.01000000', 'product_id': 'ETH-BTC', 'sequence': 1601762096, 'time': '2019-02-18T19:42:34.700000Z', 'received_UTC': 1550518954.092663}
```

1.1.2. A Note On Timestamps. It is common, and desirable, to represent timestamps using UTC, except for human presentations. However, note that there have been over 15 billion seconds since 1970. Therefore the 15-digit resolution of IEEE double precision floating point arithmetic will track these timestamps to slightly worse than the microsecond level.

# 2. INTERESTING ALTERNATIVE MARKET STRUCTURES

The U.S. equity markets are a fractured market, in the sense that the same equities are traded on multiple exchanges. They are now legally linked by Reg NMS (i.e. national market structure) which specifies rules under which they must send orders to each other when prices are better-looking for the customer.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/2392174c-ddbf-49c4-bb9f-179afc01b2e4/ec3b5e52272e8f6b115bf6ac838f824e2fee88fd5f482ebad9b7578620818a29.jpg)  
BTC/USD Market And Trades Late Afternoon Apr 8 2018  
FIGURE 1. Bitcoin market and trades over a two minute period. Bid/offer spread is not visible, but we see the market undergoing multiple level changes. Note the three cases of large sell orders crossing the spread, taking out several levels of resting buy orders.

Foreign exchange electronic crossing networks (ECN) allow brokers last look rights. Futures exchanges may use a combination of price-time priority and proportional allocation in which all orders at the top-of-book get a nonzero fill probability.

Some exchanges allow brokers to give higher priority to internal crosses that join the broker's own customers. The U.S. equity markets now have similar structure, in effect, as orders arising from retail order flow are internally crossed by Citadel and other firms who make it their business to purchase the flow, cross where sensible, and then send the exhaust as new orders to the usual markets.

Certain futures markets are traded pro rata, in which there is no time priority given, or time priority is given only to the very earliest order. In particular the extremely liquid EuroDollar contract at the Chicago Mercantile Exchange trades on a modified version of pro rata allocation.

Not all exchanges make the orders visible to participants. These dark pools, common for US equities, match orders without displaying any kind of book to market participants, which in theory allow participants to place large orders, and make trades at lower market impact costs.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/2392174c-ddbf-49c4-bb9f-179afc01b2e4/e3ffaeceb04a5de1c8dc93c18adaa6bbe05cc76e35c7e628046ed9905a67e9f4.jpg)  
BTC/USD Market And Trades Late Afternoon Apr 8 2018  
FIGURE 2. Bitcoin market and trades over a two minute period. Bid/offer spread is somewhat visible.

They frequently have minimum size rules for matching. In practice accumulation algorithms have tended to outperform dark pools for that purpose.

Eric Budish suggests discretizing not only price, in order price ticks, but also times, by altering the matching process so as to hold periodic auctions.

# 3. TICK LEVEL STATISTICS

3.1. Basic Book Statistics. The most important tick-level statistic is the mid price, defined as

$$
\mathrm {m i d} = \frac {1}{2} (\mathrm {b i d} + \mathrm {o f f e r})
$$

Next most important is the VWAP or volume-weighted average price defined for trades of sizes  $V_{i}$  at prices  $P_{i}$  to be

$$
\mathrm {V W A P} = \frac {1}{N} \sum_ {1} ^ {N} P _ {i} V _ {i}
$$

The VWAP is a minimal representation of tradable position changes.

Somewhat less useful is a TWAP or time-weighted average price, which performs the same sum over time periods rather than trades.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/2392174c-ddbf-49c4-bb9f-179afc01b2e4/e702bf004682d07317c891b33dd759736ceb0ecceaeca1170eeca97d0ba9361f.jpg)  
FIGURE 3. Bitcoin market and trades over a 20 second period. Bid/offer spread is obvious, but the market had no level changes.

More interesting is an order-weighted average price, formed from the observation that if we have many more offers than bids, the clearing price at which participants collectively would be willing to trade were tick sizes smaller is closer to the bid than the mid price. This is not an exact science, but given a top of book with  $N_B$  bids at price  $B$  and  $N_A$  offers at price  $A$  one reasonable formula weights with square roots

$$
w = \sqrt {N _ {A}} + \sqrt {N _ {B}}
$$

$$
\mathrm {O W A} = \frac {\sqrt {N _ {A}}}{w} B + \frac {\sqrt {N _ {B}}}{w} A
$$

Clearly, other weighting schemes, possibly involving further levels of the book, can be incorporated into alternative versions of the OWA.

Arguably, the OWA is a predictive model, since we can use it to predict whether the next trade will occur on the bid side or the offer side of the book. The economic intuition is that if an order book has a great deal of orders on the offer, and very few on the bid, then (A) quite a few people are trying to sell and (B) it would not take many of them crossing the book to eliminate all the remaining bid orders, thereby dropping it one level. The trouble with OWA as a predictive model is that its predictions are strong precisely when many orders are already in the books on one side, ahead of any orders placed by a new participant.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/2392174c-ddbf-49c4-bb9f-179afc01b2e4/8c2f7d095f077fb1b00cb2a9f1b44d5a891f6d84a1d654d1c2d20ffea92d6689.jpg)  
FIGURE 4. Bitcoin market and trades over a 1 second period. We observe the market trading through the bid.

3.2. Trade Marking. A very common derived statistic is marked trades, where bids and offers are marked according to whether a buyer initiated the transaction, or the seller initiated it. This process is flattered as the Lee-Ready Algorithm and essentially consists of the following for each trade

- Find the best bid and offer as of the trade time  
- Compare the trade price to them  
- If the trade price equals the best bid, mark as seller-initiated  
- If the trade price equals the best offer, mark as buyer-initiated  
- (Optional) Otherwise, mark according to whether trade price was below or above mid price

As stated, the algorithm may be too simple. For example block trades in equity markets and trades on quoted calendar spreads in futures markets may not be appropriate for marking.

Easley et alia's VPIN or volume-weighted probability of informed trading for a time  $t$  compares buyer-initiated versus seller-initiated trades in  $N$  windows preceding  $t$ . The idea is that if many trades are crossing the spread in the same direction, then the market is likely to have more informed directional buyers than noise traders who lack particular information.

We begin by defining order imbalance in the  $n$ th window by taking  $V^{B}$  to be the volume of buyer-initiated trades and  $V^{S}$  to be the volume of seller-initiated trades, and setting the imbalance as

$$
I _ {n} = \frac {\left| V _ {n} ^ {B} - V _ {n} ^ {S} \right|}{V _ {n} ^ {B} + V _ {n} ^ {S}}
$$

We can now set VPIN to be the mean

$$
\mathrm {V P I N} = \frac {1}{N} \sum_ {n = 1} ^ {N} I _ {n}
$$

3.3. Flow. A common (and simpler) extension of this idea is trade flow, which is a running tally of signed trade sizes where the sign is defined as 1 if the trade was seller-initiated and -1 if it was buyer-initiated. At any moment, we examine all reported trades within the last time period of length  $\tau$ . Using the notation above, we can then define flow as

$$
F _ {t} ^ {(\tau)} = V _ {(t - \tau , t)} ^ {B} - V _ {(t - \tau , t)} ^ {S}
$$

Clearly this can be normalized or transformed in many ways, with the goal of achieving more predictive forms.

The essential idea behind flow as a quantitative metric is that, in circumstances when many sellers are willing to cross that market-making bid-offer spread to complete their transactions, there is likely to be new information driving their choices. We do not know exactly what it is, but we certainly want to adapt to it.

When flow has a stable sign over macroscopic periods of time, it is a manifestation of supply and demand imbalance, and so it (usually) corresponds to steady price movements over a given time period. In a price time series, this has the appearance of momentum but the fundamental underlying process is economic (rather than the mysticism of momentum).

3.4. Returns. We commonly think of the interval  $T$  return of an asset as of time  $t$  in either absolute terms, as

$$
r _ {t} ^ {(T)} = \frac {P _ {t}}{P _ {t - T}} - 1
$$

or in logarithmic terms

$$
r _ {t} ^ {(T)} = \log \left(\frac {P _ {t}}{P _ {t - T}}\right)
$$

but we now see that the idea of knowing a single price  $P_{t}$  at some time  $t$  is somewhat optimistic. Really all we have is a set of order prices, and perhaps a recent trade price to go by.

Let's say we were to define  $P_{t}$  as the mid price. Naturally this stays constant over some time intervals, implying that returns are constantly decreasing in absolute value over this time. In addition, the return in any period becomes fairly sensitive to exactly which ticks the period contains.

We cannot entirely overcome the ambiguity, but we can certainly alleviate the tick-sensitivity problem by using an EWMA. We define

$$
r _ {t} ^ {(T)} = \log \left(\frac {P _ {t}}{\mathrm {E W M A} (P , \lambda = \frac {1}{T})}\right)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/2392174c-ddbf-49c4-bb9f-179afc01b2e4/1195d205d29da46ef82b86d6dadf269703c4e5bfebc1b96b8f65f7c609c2a07c.jpg)  
What Is The Price Change?  
FIGURE 5. Price changes and returns are ambiguous in definition, and appear to vary wildly, at short time scales.

which can conveniently be computed without saving past ticks.

# 4. THE EPPS EFFECT

A common issue with tick level data is the long periods of boredom interrupted by short intervals of terror. That is, data updates come at certain times (often bunched) so at a sufficiently small timescale correlations appear to drop to zero.
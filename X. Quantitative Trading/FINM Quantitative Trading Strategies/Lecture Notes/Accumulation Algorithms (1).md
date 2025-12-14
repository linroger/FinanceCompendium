---
parent_directory: FINM Quantitative Trading Strategies/Lecture Notes
title: Accumulation Algorithms
tags:
aliases:
  - Accumulation Algorithms
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
---

# ACCUMULATION ALGORITHMS

Accumulation algorithms are aimed at increasing or decreasing portfolio positions some large amount  $Q$ , without incurring the debilitating costs of executing the entire transaction at once. They are nearly always a feature of electronic (as opposed to telephone) markets.

# 1. MARKET IMPACT

As seen in Jusselin and Rosenbaum (2018) we can base some expectations of market impact on a fairly weak set of assumptions about market dynamics. In effect, we expect any trade we make to have some amount of permanent price impact (independent of other predictive powers we may possess). The price is expected become asymptotic to this level over time, and is economically due to the change in ownership distribution. Additionally, during the period we are actively trading, we expect some extra price movements against us due to our trading activity. Prices go even further against us than the permanent impact level, so this is particularly costly. An efficient operation must balance the risks of being in the wrong position and the decay of alpha against the potentially ruinous costs of heavy trading.

# 2. TWAP PARTICIPATION

The simplest accumulation algorithm is the time-weighted average price, also essentially equivalent to the terminology "dollar-cost averaging.

The TWAP plan subdivides  $Q$  into  $N$  smaller chunks  $q = Q / N$ , and creates an execution plan for them. It uses a target time interval  $T$  for the entire trade (for example,  $T = 8$  trading days and subdivides that into  $N$  subintervals. In each subinterval, it places a market order to trade quantity  $q$ .

# 3. VWAP PARTICIPATION

A VWAP strategy attempts to "participate" in market trading by placing (small) orders frequently when the market is active, and less frequently when it is not.

We begin with a participation rate  $p$  and a "chunk rate"  $c$ . We watch the trades in our target market, and every time we see  $c$  or more units trade, we place a market order to trade  $c \cdot p$  units. Since some trade quantities are much larger than  $c$ , we achieve something less than  $p$  as a proportion of total volume. When are failing to achieve our target participation rate (which technicians call falling behind, we have the two basic options. First, we can simply ignore the fact, allowing a longer time to pass before we complete target position change  $Q$ . Alternatively, we can increase the target participation rate to some  $p' > p$  which we think will help us achieve a "true" rate  $p$ .

3.1. Passive Overlays. If we have reasonably performant market-making systems, we can combine our VWAP strategy above, which only places aggressive market orders, with one that also incorporates passive orders. These are buy limit orders at or below the prevailing bid price or sell limit orders at or above the prevailing offer price. Some such orders may attract attention and trades from other market participants, giving us trade prices better than we might achieve from crossing the spread ourselves. The essential plan is to keep small passive orders on the market, and whenever they attract any activity we subtract the resulting trade

quantity from the duties of our aggressive order strategy. If we are so lucky that our passive trading surpasses our participation targets, we can disable for a little while.

3.2. Volume Anticipation. Assume we have  $N = 20,000$  units to sell, and we wish to sell them in the next hour. Rather than employing a "reactive" algorithm, we can use historical data to estimate the amount of trading volume to come, and construct a tradeoff between the cost of trading and the time to finish trading accordingly. For sake of simplicity, let's assume our historical data is simply yesterday's trading rate, and we observe an average of 100,000 units traded per hour, in an average of 200 distinct trade messages (i.e. the average trade side is 500 units). This need not necessarily be derived from all the historical trades; we are free to ignore trades that are irrelevant to our algorithms. The ignored historical trades might be ones that are too large, or ones that occurred so fast we could not have hoped to participate. We call the relevant trade set the qualifying trades. Once we have our estimates, we can be a bit more precise in judging the tradeoff between a target participation rate  $p$  and the time we expect to require to complete trading a total quantity  $Q$ . In the example above, with  $10\%$  participation and a trade size of 100 units, we can compute that we expect to complete a total quantity of 2,000 units in about 12 minutes, with about 20 individual transactions.  
3.3. Implementation Shortfall. A common category of automatic trading algorithms is the IS or Implementation Shortfall strategy. This is a generalization of the above volume anticipation algorithms that follows the scheduling prescriptions in Almgren and Chriss (Journal of Risk, 2001). Here, an "order schedule" governs the size of orders placed to complete the position change. Large orders are placed soon after the arrival time, when the price will not have had much chance to change. Smaller orders are relegated to times further in the future when the price may have moved quite a bit in either direction. As part of the schedule, transaction costs are minimized relative to price variance.  
3.4. Seasonality Corrections. As a practical matter, most capital markets exhibit predictable changes in volume during "seasons" of the trading day. Volumes are high just after one or another of the major exchanges opens, and just before one of them closes.  
It is a simple matter to adjust orders schedules according to seasonality-adjusted expected trading volumes.
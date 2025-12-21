---
title: Making Markets
parent_directory: Lecture Notes
formatted: 2025-12-21 11:03:25 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - market making
  - liquidity provision
secondary_tags:
  - bid ask spread
  - liquidity takers
  - execution structure
  - market participation
cssclasses: academia
---

# MAKING MARKETS

# 1. BASICS OF MARKET MAKING

Market making is a service provided to other market participants. As with any service, payment is expected, so market makers are compensated in one or more of the following ways:

- favorable prices in trades
- rebates and fees
- related business transactions

In the first case, our market maker asks prices  $P_A$  somewhat higher than the perceived true value  $P$  of an asset, and bids lower at  $P_B$ . The spread  $S = P_B - P_A$  characterizes market maker revenue from the trades, with each trade contributing half the spread (times quantity  $Q$ ) to the total.

Exchanges, particularly stock exchanges, typically define a fee structure for participants in which each trade results in some profit, called a rebate, for the party posting the order (the liquidity provider or liquidity maker and some extra cost for the party crossing the spread to force the trade (the liquidity taker). This is the route by which rebates and fees compensate market makers<sup>1</sup>.

Finally, a market maker can provide locked quotes with no spread, or quotes with tiny spreads, to "favored" customers. This can happen, for example, when a client is making a large exotic options trade with an investment bank, from which the bank expects to realize strong profits. The bank will be willing to execute a simultaneous hedging transaction in the underlying asset at no spread.

# 2. COSTS OF MARKET MAKING

Market making can be a good business, but the profits come only in theory. As part of trading activity, the market maker will accumulate inventory, which then results in profits or losses as prices change. Liquidity takers are liable to be informed, crossing the spread for strong economic reasons. If the taker is correct, the half spread and any rebate collected can be overwhelmed by the subsequent price change<sup>2</sup>.

In addition to trading profit and loss, market makers tend to incur high fixed costs in personnel, technology and data fees. To a large extent, the costs can be spread over quotes in multiple securities, so market makers tend to be somewhat large businesses, both in number of assets quoted and in capital employed.

One cost that is relatively insignificant for market makers is capital. The capital needed to support market making is some fraction, perhaps  $\frac{1}{4}$  or so, of the maximum notional held at any time during the day. Thus, dozens, hundreds or even thousands of trades can be supported per unit of capital.

# 3. MARKET PARTICIPATION

We can consider the simple case of the "perfect" market maker as a guide to market making as a strategy. For any trade occurring at the presently active bid price, we assume our market maker "participates" with some small proportion of the trade by buying one unit at the trade price. A trade at the presently active offering price is assumed to come with a sale of one unit. Such performance is impossible in practice, but gives a serviceable portrait of the basic economics of market making.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/617d3374cd819011311c0431691d3e65a9ef1afb2735774e58b80f43e5943a9d.jpg)  
FIGURE 1. Simulated market making trades in Bitcoin at Coinbase, using reported transaction timestamps. Coinbase reports some trades as occurring at prices different from both the bid and the offer. These are (optimistically) elided from the analysis.

# 4. EXECUTION STRUCTURE

In some markets, such as corporate bonds, trading is still performed entirely by humans. Here, execution happens by mutual agreement, typically in a telephone call, and depends on many human factors. Electronic reporting of the trade may happen after the fact (as in TRACE), but is not linked to the trade execution.

Fully electronic markets may or may not disseminate quotes (most do). In any case, they track live orders and when a pair of orders matches, the participants are notified of a trade.

There are usually many orders that could match, so the market needs a way to assign trades, according to some priority.

In electronic markets, priority is essentially always set by price, in that the "best" price gets top priority. Beyond that, order placement time usually determines the next distinction, but this does vary. An important example is the pro rata futures markets, where trades are allocated more or less evenly among all bidders.

Some markets, such as FX, display quotes that are not entirely "solid". In these markets, the quoter has an option, at the moment of matching, to decline the trade after all.

# 5. MARKET MAKING AS "CARRY"

Many market makers think of market-making in ways similar to short options strategies. The market taker has an option<sup>3</sup> to purchase (or sell as appropriate) the quoted security at the time of their choosing. Clearly market takers will choose times they believe most advantageous, so the market maker is constantly realizing small profits while living under the danger of some large loss due to informed trading. The business is sometimes described as "picking up ticks in front of steamrollers".

# 6. CAPACITY

Market-making is inherently a highly capacity-limited business. The available profits depend entirely on the quantity of other market participants crossing the spread. Theoretically, profits are linked to the volume traded in the market, but since these volumes are also closely linked to volatility, periods of high volume may be unusually profitable or devastating.

# 7. PERFORMANCE OF THE PERFECT MARKET MAKER

Let's consider the profitability of making markets in various securities, particularly some equities and Bitcoin. To begin, note that due to exchange fragmentation and unusual order types, not all reported trades in US equities happen on the best bid or offer. Even if these complications did not exist, there is inevitable jitter in the reported timestamps.

Return histograms for market making are generally very attractive. Over a 6 month period we see that even a narrowly-quoted security such as the SPY exchange traded fund provides thousands of trading opportunities per day, and almost always positive (simulated) profit.

For highly liquid stocks like Sunoco, profits also look very good

While for stocks with mediocre liquidity like CLUB, profits continue to look great

In the end, though, some equities can be surprisingly prone to losing money on any given day

For Bitcoin, however, which typically trades at spreads near a hundredth of SPY spreads, profits are difficult to come by

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/38132625f5413e35b9591c391729306d8bdc592325725360fa3456d9ed2502e9.jpg)  
FIGURE 2. Trades and quotes reported in Apple equity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/cc4eac264e8a14edfc34d084fec0175a015f112bc9dddaab3664d092b90120f8.jpg)  
FIGURE 3. Histograms of SPY simulated market making performance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/e28d380e2a0678d59ba6e4b62bafd8cf31fad62b872d78f3b616daf5d783d15f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/8c166e589683c08c6cc97fcdb62dd4cb9b1b77aa3995dbffae1de5b938a6dc56.jpg)  
FIGURE 4. Histograms of Sunoco simulated market making performance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/29982c73d619580467a2d1c03e70e239aa61b5c04b4d8b5fcedc7402e14c9e34.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/e8c20a959ccf96a3e2e0c28c8e2de33f509cc2a6ecd756e5b53c1d5594ae9e57.jpg)  
FIGURE 5. Histograms of CLUB simulated market making performance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/98d22407b68728b5f611ea2c62354eaa15a758308889aca94b2cbb72ffd291a5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/11e5edb00e6af6e7b8d31a4c3601f1fc6f199bdbc095b01bc0c15d76676fec9f.jpg)  
FIGURE 6. Histograms of Apple simulated market making performance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/26715cdd54b68cc17320fd5c1f0f750a7af3e12b9806287975b75b3dc7a900c2.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/14b6a5d01dd412283a4bcdb683a7987ba1d5d94555fc3026863c42baba19f17b.jpg)  
(A) SPY

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/baa0417720e40cb67305c3ef5a3db8c712f8153afbaa1c3643fc7aa561f82e16.jpg)  
(B) CLUB

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/b0c26510a17092955347e5a5ba2b2cb6fcfe284f3053dd9dfcf1c9dba407d339.jpg)  
(c) SUN  
FIGURE 7. Simulated perfect market maker profits.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/cb70783101364abe7b3d7fef5e2c4a47bdce34f831957803d219db37015b5543.jpg)  
(D) AAPL

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1e035b6f-3333-4f7d-b02f-65ff476b2566/4cb7c8c0fc57b2b2beb30716d7f2ec29b899a203f99c627f13cf0669b09b5bd8.jpg)  
Bitcoin Simulated Net Profit at Coinbase Market Making 2018-03-30 to 2018-04-10
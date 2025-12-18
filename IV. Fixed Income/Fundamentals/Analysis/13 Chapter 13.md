---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 13
linter-yaml-title-alias: Chapter 13
---

# Chapter 13

# Commodities

# 13.1 Introduction

Unlike the other fixed income securities (bonds and interest rate or FX swaps), commodities are physical assets that cannot be transferred easily. As a result, their derivatives naturally present very different pricing behaviors. These derivatives are commonly known as "real options".

CME classifies the commodities traded in their exchange as follows:

1. agriculture (e.g. corn, soy bean)
2. metals (e.g. gold, silver)
3. live stock and meat (e.g. live cattle, port belly)
4. energy (e.g. oil, gas)

In addition to these "well-known" commodities, real estate is another type of commodity that is as popular and CME trades its futures contracts (i.e. Case-Shiller index futures). Similar to (or even more so) the above commodities, real estate properties suffers low liquidity. Furthermore, real estate values present a strong pattern of seasonality.

Liquidity and seasonality impact pricing of commodity derivatives more so than the usual factors (e.g. market factor and economic factor) that impact financial derivatives. Hence, it is not hard to imagine that commodity derivatives must be evaluated quite differently than financial derivatives in that their underlying assets bear very different risks.

Last but not least, commodities are highly subject to storage capacities (this is especially so for agriculture products as the harvest times may not match the demand of the crops). Even anticipating a large demand in the future, suppliers of the commodities cannot make all the potential profits if the storage capacity is limited. As a natural result, the prices of commodity derivatives are also impacted the storage capacity (sometimes known as inventory).

# 13.2 Convenience Yield

Investopedia

A convenience yield is the benefit or premium associated with holding an underlying product or physical good, rather than the associated derivative security or contract.

Sometimes, as the result of irregular market movements such as an inverted market, the holding of an underlying good or security may become more profitable than owning the contract or derivative instrument due to its relative scarcity versus high demand. Consider purchasing physical bales of wheat rather than wheat future contracts. If there's a sudden drought, and the need for wheat increases, the difference between the first purchase price of the wheat versus the price after the shock would be the convenience yield.

The storage of a physical good or commodity closely relates to the convenience yield of products. However, there's an inverse correlation between commodity prices and storage levels. Based on the levels of supply and demand, when storage levels of a commodity are scarce, the commodity's price tends to rise. The opposite is also true; when a commodity's storage levels are plentiful, the price typically decreases.

Convenience yields tend to exist when the costs associated with physical storage, such as warehousing, insurance, security, etc., are relatively low.

Investors can calculate the convenience yield as the cost of insurance against price risk. The formula is calculated by multiplying the price of a front-month futures contract by the capital cost of money that is tied up in inventory, or Euler's number raised to the borrowing rate multiplied by the time to maturity, then adding the storage cost and subtracting the price of the futures contract for the back-month contract. Next, divide this calculation by the price of the front-month futures contract and add one to the quotient. The resulting value is raised to the power of 365 divided by the number of days to maturity. Finally, subtract one from the resulting value.

The convenience yield is simple to calculate if a commodity's future price, spot price, borrowing rate and time to maturity are known. The futures price is calculated as the spot price multiplied by Euler's number, or the mathematical constant  $e$ , raised to the power of the difference between the borrowing rate and the convenience yield multiplied by the time to maturity. Consequently, the convenience yield is solved to be the difference between the borrowing rate and one divided by the time to maturity multiplied by the natural log of the futures price divided by the spot price. This formula is used for continuously compounding rates and yields.

For example, let's say that a trader wishes to calculate the convenience yield of West Texas Intermediate (WTI) crude oil for delivery one year from today. Assume that the annual borrowing rate is 2\%, the spot price of WTI crude oil is \$50.50 and the futures price of crude oil contracts expiring one year from today is \$45.50. Therefore, the convenience yield is calculated to be 12.43\% continuously compounded per year, or 0.02 - (1/1) * LN($45.50/$50.50).

Let  $F_{t,T}$  be the forward price of an asset with initial price  $S_{t}$  and maturity  $T$ . Suppose that  $r$  is the continuously compounded interest rate for one year. Then, the non-arbitrage pricing formula should be

$$
F _ {t, T} = S _ {t} \cdot e ^ {r (T - t)}
$$

However, this relationship does not hold in most commodity markets, partly because of the inability of investors and speculators to short the underlying asset,  $S_{t}$ . Instead, there is a correction to the forward pricing formula given by the convenience yield  $c$ . Hence

$$
F _ {t, T} = S _ {t} \cdot e ^ {(r - c) (T - t)}
$$ or


$$

F = S [ 1 + (r - c) T ]

$$

To be discussed in more details later, in continuous time, the convenience yield is modeled as a leakage to the return of the asset:

$$

\begin{array}{l} \frac {d S}{S} = (\mu - \ell) d t + \sigma d W \tag {13.1} \\ = (r - \ell) d t + \sigma d \widehat {W} \\ \end{array}

$$ where  $\ell$  is the convenience yield (or any leakage such as dividend yield (for index options), risk-free rate (for futures options), and foreign risk-free rate (for FX options)).

In the case of real estate,  $\ell$  is rent.

# 13.3 Seasonality

One popular characteristic of commodities is the seasonality. The following website presents the seasonality of several commodities.

https://www.scasonalcharts.com/futures.html

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/ad8d8ebeec00d2f62e85908831f9c0dc9cebf580b65594f137d980a83be1de18.jpg)

(a) Crude Oil

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/5b1033d2a3c5f6933ea091233cecea0a0cb0157b25425814f3147737b33a35fe.jpg)

(b) Natural Gas

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/025427c8384d92c3602f586a8bb9d515b137266319e90cd8850a234cc585b539.jpg)

(c) Soy Bean

Figure 13.1: Seasonality

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/d46665b491742c96c3288a0800d68d7088534d20c80cf1d76653d2eeb825f73c.jpg)

(d) Copper https://kaufmansignals.com/capturing-seasonality-with-commodity-etfs/

Capturing Seasonality with Commodity ETFs

Articles / By Perry Kaufman

Seasonality in commodities is one of the great patterns for capturing profits. Think of it as a gift from Nature. It does require that you compare the current price patterns against the price history to decide if the commodity is acting correctly according to the season patterns.

One obstacle in taking advantage of seasonality is that the only way to trade it was using futures, and futures prices can discount the seasonal pattern, require you to roll the position one or more times, and often subjects you to higher volatility. In exchange, it gives you extreme leverage.

As an analyst, you can't find the seasonal pattern in commodities using futures because the typical data is back-adjusted. That's necessary because long-term prices are constructed from many shorter contracts. When building these continuous price series, older data is adjusted up or down to blend the prices into a smooth series. Very often, the tail of that series, the older data, can go negative. Then calculating the monthly returns as a percent of price is impossible. Even when the results are not obviously incorrect, the past prices in the back-adjusted data are not the actual prices on those dates, so none of the percentages are correct.

# Enter the ETFs

Then seasonality is found using cash prices, which cannot be traded. Enter ETFs. Commodity ETFs are traded just like any equity ETF. You buy a certain number of shares and you can hold them indefinitely. No rolls, no price distortion, but also no leverage. However, seasonal price moves can be pretty big and using seasonality presents unique diversification. You will probably find that giving up the volatility is a fair exchange for no leverage.

We'll look at some of the more liquid ETFs, CORN (corn), WEAT (wheat), sugar (SGG), and coffee (JO). These are not trade many shares at the moment, but a seasonal trade can be entered using a limit order spread over a few days. The exits should also have plenty of opportunity. With any luck, volume will increase.

While we will calculate the seasonal patterns automatically, we like to confirm whether they conform to the seasonal fundamentals, that is, planting and harvest. The first step is to see where most of the product originates. Table 1 gives shows the largest producing countries for the four commodities.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/545ac28dd7b98a0edd3990bdd764d0b0307a424315d770c082a36898082d9e3c.jpg)

Figure 13.2: Commodity production by country

Sources: Corn and wheat, Index Mundi; Coffee, Statistica; Sugar, USDA.

# Classic Seasonal Patterns

The US dominates corn production, and the combination of the US and China is overwhelming. Because both countries are in the Northern hemisphere, we can expect the same seasonal pattern. On the left in Chart 1 the monthly returns give a clear pattern of planting in March/April and harvesting in September. Note that the blue line spikes in July, indicating a crop "scare" in the middle of growing season. We normally expect to see a rally in the early Summer when weather creates uncertainty about the health of the crop, but that turns out to be far less often than thought. The greatest problem is in the Spring when extreme rainfall delays planting and farmers may shift from corn to soybeans. The highest prices are in the Winter when inventories are low and planting is uncertain.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/4555094f22b454c51a7db47edd231b1a0526d019a1140db62f33544021947d8a.jpg)

Figure 13.3: Corn seasonality. Cash prices from 1989 (left) and a comparison of cash, futures, and CORN ETF (right). Data source: CSI

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/f5ce1599237637788930cb2aeb8b0b85f0edd71c5b76ffec259c3d0e62777b72.jpg)

On the right is a comparison of cash, futures, and the ETF CORN, from 2010 when the ETF started trading. During these five years the Summer weather has been less certain and prices rallied in July. Futures, which reflects more speculation, shows a much bigger move. But corn is a hearty crop and prices returned to the normal lows in September. The EFT tracked cash prices fairly well, indicating that it may represent seasonality very nicely.

# Wheat

The US is far from the biggest producer of wheat, but all of the top countries are again in the Northern hemisphere; therefore, Winter wheat would be planted in the Fall and harvested in the Spring. Why can't we see that clearly in Chart 2? It turns out that it's easier to see in a more recent period from 2010.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/0fe5d4167085773c44027e3e329dbe87639b68fade76c2f081796203d74b34e6.jpg)

Figure 13.4: Wheat seasonality from cash (left) and from futures (right). Data source: CSI

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/7628bca6fe413a319e409fb6fc419f4bac401665a9dae32a3935c9afd0739d48.jpg)

During the past five years, the pattern can be seen in Chart 3. Prices rise from October through March, as inventory is depleted and the new crop is uncertain. Prices then decline into the seasonal low at harvest, about May. The spike in July is related to the Summer crops in corn and soybeans, because they also serve as a substitute for livestock feed. Feed is purchased according to which crop will generate the most protein for the cheapest price. Cattle have little to say in the choice. Then the wheat seasonal pattern turns out to be similar to corn and other Northern hemisphere crops.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/66ce4cd6ba70198a48deab1ac2b137ef73583cdad837a22f282d631664c73035.jpg)

Figure 13.5: Comparison of cash, futures, and WEAT ETF seasonality

# Sugar and Coffee

Sugar has a more complex seasonal pattern because half of production in the Southern hemisphere and half in the Northern. The comparison on the right of Chart 4 is easier to see. If the Northern season has its season from April to November with its peak in July, the Southern hemisphere is from November to April with its peak in January. That gives two seasons and two trading opportunities.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/b5bbdb1ce7c1024f15952483e752378c40a7eca9f4e46fa39063a0828fa3b40b.jpg)

Figure 13.6: Sugar seasonality from cash (left) and a comparison of cash, futures, and the SGG ETF (right) from 2010

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/2d487f27c5a837b1e05d94e31ee6b7d4a1275673c3a26383cab52d4ca2917e89.jpg)

Coffee is nearly all grown in the Southern hemisphere, with a small amount of US coffee produced in Hawaii. The coffee ETF (JO) has been traded since mid-2008. Again we can see that the ETF does a good job tracking the cash seasonality. The harvest lows are in June and the new season begins in November.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/68eda89a83152b332fdabb9972a8b0cbf3efca823a0ff894320e4da546551024.jpg)

Figure 13.7: Coffee seasonality from cash (left) and a comparison of cash, futures, and the ETF JO (right) from 2008

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/b598b27ea98cd28e2270b121a96956df068f4d6fa1f3e31b3a8acafc57b6f99b.jpg)

Seasonality also is prominent in real estate (summer is hot season as people get out more).

Seasonality violates the no-arbitrate pricing (since it is predictable). If we know that an asset will be more expensive in two months, then we can buy the asset now and sell it in two months. Conversely, if an asset is certainly less worthy in two months, we can sell short the asset and buy back in two months.

Unfortunately, none of the above is doable in reality for commodities.

# 13.4 Inventory

A recent phenomenon in the oil market shocked the whole world

Some times commodities are included in the category of fixed income and so named FICC (Fixed Income, Currencies and Commodities), although the risk characteristics of commodities are quite different from IR and FX.

Commodities are very difficult to price and also their derivatives. Unlike financial assets, commodities (or real assets) are:

- difficult to transact (hence liquidity is very low)
- require large storage cost (including funding cost) usually present cycles (including seasonality)

In commodities, two popular terminologies should be paid attention to:

- contango
- backwardation

Contango is defined as the futures price greater than the spot price:  $\Phi(t, T) > S(t)$  where  $T$  is the settlement date. This is a normal situation as storage cost is high. For a buyer who wants a commodity in the future, he can either buy futures contracts, or he can buy spot and store it, whichever is cheaper. As a result,  $\Phi(t, T) = S(t) + C(t, T) > S(t)$ .

Backwardation is defined as the futures price smaller than the spot price:  $\Phi(t, T) < S(t)$ . Under the phenomenon of cost of carry, this is not possible as arbitrageurs of such commodities will just buy futures and sell short the spot to make profits. Hence the only logical explanation of backwardation existing must be that short-selling commodities is prohibitedly costly. Such a cost is termed convenience yield.

Convenience yield happens (i.e. backwardation) when the spot is very rare and hence short-selling is difficult. To short sell, the seller must borrow the spot. When the spot is rare, then the cost of borrowing is consequently high. There are two kinds of rareness. The first is physical, which means the commodity is simply not available. For example, during winter, agriculture products (e.g. corn) are rare, as farmlands cannot produce. Hence to borrow corn to short must pay a higher price. The other kind is the spot is in high demand and its price is skyrocketing. Under this situation, the borrower must pay for the expected growth in price as part of the borrowing cost. For example, gold (or precious metals) is very expensive to borrow during a recession as everyone buys gold to hedge a recession.

As we can see, convenience yield shares the same flavor as seasonality as spot prices of commodities can present cyclical patterns repeatedly. As the two examples earlier, agricultural products present price cycles within a year (seasonality) and precious metals present price cycles along with recessions. Should commodities be absolutely liquid, such cycles cannot exist as one can buy and sell these goods easily at no cost.

By now, we can understand the classical financial models cannot be applied easily to commodities. All financial models assume perfect liquidity that rules out cyclicality and seasonality. However, convenience yield can be regarded as leakage of the spot because it represents the cost of hold the spot. This is similar to dividends of stocks, or foreign interest returns of exchange rates.

Equation (13.1) is then used as the best approximation to model commodities. Eduardo Schwartz (1979) uses equation (13.1) with a mean-reverting convenience yield process:

$$
\begin{array}{l} \frac {d S}{S} = (\mu - \ell) d t + \sigma d W _ {1} \tag {13.2} \\ d \ell = \kappa (\theta - \ell) d t + \gamma d W _ {2} \\ \end{array}
$$ where  $\ell$  represents "convenience yield" and  $dW_{1}dW_{2} = \rho dt$ . The convenience yield here now can be either positive or negative. When it is substantially negative (larger than  $\mu$  so  $\mu - \ell < 0$ ), then the futures price will be smaller than the spot price and we have a backwardation. If  $\ell$  is negative, then it is similar to having a contango. Given that  $\ell$  is normally distributed, there is a closed-form solution to the futures price (and futures option):


$$

\Phi (t, T) = \hat {\mathbb {E}} [ S _ {T} ] = \exp \left\{\hat {\mathbb {E}} [ \ln S _ {T} ] + \frac {1}{2} \hat {\mathbb {V}} [ \ln S _ {T} ] \right\}

$$ where


$$

\begin{array}{l} \hat {\mathbb {E}} [ \ln S _ {T} ] = \ln S _ {t} + (\mu - \frac {1}{2} \sigma^ {2}) (T - t) - \left[ \ell_ {t} \frac {1}{\kappa} \left(e ^ {- \kappa (T - t)} - 1\right) + \theta \left(T - t - \frac {1}{\kappa} \left(e ^ {- \kappa (T - t)} - 1\right)\right) \right] \\ \hat {\mathbb {V}} [ \ln S _ {T} ] = \frac {\gamma^ {2}}{2 \kappa} \left(e ^ {2 \kappa (T - t)} - 1\right) + \sigma^ {2} (T - t) + \frac {2 \rho \gamma \sigma}{\kappa} \left(e ^ {\kappa (T - t)} - 1\right) \\ \end{array}

$$

Another important pricing question related to commodities (and not so much for financial assets) is the level of inventory. As storing commodities suffers (enjoys) high storage costs (convenience yield), how much to store (level of inventory) is an important decision. William J. Baumol (1952) has a simple model to explain the demand for inventory. Say farmers hold  $Q$  bushels of wheat of which  $Q_{1}$  to be sold at time  $T_{1}$  and  $Q_{2}$  to be sold at time  $T_{2}$ .  $P_{1}$  and  $P_{2}$  are prices respectively. If  $P_{1} > \mathrm{PV}[P_{2}]$ , then farmers will sell all  $Q$  at  $T_{1}$ .


A marketing cost is assumed as  $\xi Q^2$ . Also  $\mathrm{PV}[P_2] = DP_2$ . So the total revenue from both sales is  $(P_{1}Q_{1} - \xi Q_{1}^{2}) + D(P_{2}Q_{2} - \xi Q_{2}^{2})$ . Maximizing the total revenue leads to (substituting  $Q - Q_{2}$  for  $Q_{1}$  and taking first order derivative with respect to  $Q_{2}$ ):

$$
- P _ {1} + 2 \xi (Q - Q _ {2}) + D (P _ {2} - 2 \xi Q _ {2}) = 0
$$ and the optimal solution for  $Q_{2}$  is:

$$
\hat {Q} _ {2} = \frac {D P _ {2} - P _ {1} + 2 \xi Q}{2 \xi (1 + D)}
$$ which implies a positive inventory (i.e.  $Q_{2} > 0$ ) if:


$$

D P _ {2} - P _ {1} > - 2 \xi Q

$$ that is the price differential must be larger enough to justify an inventory. The larger is the price in the second sale  $(P_{2})$ , the higher is the inventory level  $(Q_{2})$ . This is known as the transaction demand for inventory.

A second theory for inventory is known as the precautionary demand for inventory (S. C. Tsiang, 1969). Let  $z$  be amount arrived;  $I$  precautionary stock;  $x$  a unit loss from the shortage;  $K$  demand; and  $c$  cost of holding an inventory.

If  $z$  is too low to operate at full capacity, then the firm will suffer a shortage cost:

$$
(K - I - z) x
$$

Expected shortage cost:

$$
\int_ {0} ^ {K - I} (K - I - z) x f (z) d z
$$

Cost of precautionary inventory is  $Ic$  so the total cost is:

$$
I c + \int_ {0} ^ {K - I} (K - I - z) x f (z) d z
$$

Optimal level of inventory  $I^{*}$  is:

$$ c - \int_ {0} ^ {K - I ^ {*}} x f (z) d z = 0
$$

The higher is storage cost  $c$ , the less should be the inventory (i.e.  $I^{*}$  is smaller and  $K - I^{*}$  is larger). The higher is the opportunity cost  $x$ , the lower is the inventory.

Real estate is another real asset that follows the same model. In investing in real estate, the buyer now needs not to rent and therefore return on the property must be reduced by the amount of rent. Now  $\ell$  represents the percentage rent. Another way to look at this is that the buyer buys the property for purely rental purposes. He or she spends the money and expects to gain returns on the investment. Rental incomes therefore must be a part of the total (cum) return. Given that rents are collected (leaked out) in cash, it must be deducted from the total return.

One thing particular to the real estate market is that properties need to be depreciated. As a result, the minimum return for the property to generate is the depreciate rate. Because of this, the convenience yield now  $\ell$  is rent minus depreciation rate.

# 13.5 Various Contracts

The majority contents of this section are taken from a series of lessons provided by Mercatus Energy (mercatusenergy.com)

Note that although energy has been dominating the commodity trading in the recent years, the analyses provided here are applicable to other commodities listed in Introduction.

# 13.5.1 Futures

This is a very liquid market. CBOE and CME are two major exchanges in the U.S. New York Mercantile Exchange is also popular. They can be categorized as:

- agriculture (e.g. corn, soy bean)
- metals (e.g. gold, silver)
- live stock and meat (e.g. live cattle, port belly) energy (e.g. oil, gas)

https://www.mercatusenergy.com/blog/bid/54865/energy-hedging-101-futures

Given the recent volatility in crude oil and refined products prices, as well as natural gas prices, we thought it would be beneficial to take another look at the various energy hedging instruments available to the various participants in the energy commodity markets.

As this post will be the first of several in a series, we are going to begin by exploring how market participants can hedge their energy price risk with futures contracts, the underlying benchmarks of nearly all energy price risk management instruments. In subsequent posts we'll address energy commodity swaps, options and more complex hedging structures such as basis swaps, collars and spreads on options.

In the global energy commodity markets there are six primary energy futures contracts, four of which are traded on the NYMEX: WTI crude oil, Henry Hub natural gas, ultra-low sulfur diesel and gasoline and two of which are traded on ICE: Brent crude oil and gasoil.

Note: Clicking on any of the above mentioned products will take you to appropriate page on the NYMEX or ICE website which provides the contract specifications and description for each respective product.

In essence, a futures contract gives the buyer the right to buy the underlying commodity at the price at which he buys the futures contract and vice versa for the seller. However, in practice, very few energy futures contracts actually result in delivery, most are utilized for hedging and are exited, sold in the case of long positions, bought in the case of long positions, prior to expiration.

Now, let's get to the meat of the issue at hand, how can a company use energy futures to hedge their energy price risk?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/9efaec3e78fc1a0188fd3ad094a63eef1a946b9755a649848b510475a02b611b.jpg)

Figure 13.8: Henry Hub Natural Gas Futures

Let's examine the case of a natural gas producer who wants to "lock in" the price of their future production in a given month. For sake of simplicity, let's assume that the producer is looking to hedge (by "fixing" or "locking" in the price) 10,000 MMBtu of their September production. To hedge their 10,000 MMBtu they could sell one NYMEX natural gas futures contract. If you had sold this one natural gas futures contract based on the closing price yesterday, contract at they would have hedged 10,000 MMBtu of their September production for 2.712/MMBtu.

Let's now assume that it is August 29, the expiration date of the September natural gas futures contract. Because the producer does not want to make delivery of the futures contract the producer decides to buy back one September natural gas futures contract at the then, prevailing market price. As an aside, if held to expiration, the seller (short) of a futures contract is obligated to make delivery of the commodity while the buyer (long) of a futures contract is required to take delivery of (receive) the commodity.

On August 29, if the prevailing market price, the price at which the producer bought back the natural gas futures contact, is \$3.00/MMBtu, the producer would incur a hedging "loss" of \$0.50/MMBtu. As a result (excluding the basis differential, transportation and gathering fees) the producer would receive \$3.00/MMBtu for their physical natural gas. However, due to the hedging loss of \$0.288/MMBtu, the producer's gross profit for September would be 2.712/MMBtu, the price at which they originally sold the futures contract.

On the other hand, if on August 29 the prevailing market price is  \$2.50/MMBtu, the producer would incur a hedging "gain" of\$ 0.212/MMBtu. In this scenario (again excluding the basis differential, transportation and gathering fees) the producer would receive  \$2.50/MMBtu for their physical natural gas. Due to the hedging gain of\$ 0.212/MMBtu, the producer's gross profit in this scenario would be also be 2.712/MMBtu, the price at which they originally sold the futures contract.

This same methodology also applies to oil and gas producers hedging their crude oil production with NYMEX or Brent Crude oil futures. Likewise, a similar but opposite methodology would apply to a natural gas end-user (consumer) who needs to hedge their exposure to potentially higher (rather than lower in the case of the producer) natural gas prices but rather than selling natural gas futures, as was the case with the producer, the consumer would buy a natural gas futures contract.

Similarly, an end-user who needs to hedge their exposure to gasoline can hedge buy buying gasoline (RBOB) or diesel fuel could do so by purchasing a gasoline or diesel fuel futures contract.

While there are a quite a few details that need to be considered before a company buys or sells futures contracts to hedge energy commodity price risk, the methodology is pretty straightforward: If you need to hedge your exposure against potentially higher energy prices you can do so by buying an energy futures contract, if you need to hedge your exposure to declining energy prices you can do so by selling an futures contract.

# 13.5.2 Index Futures

# Case-Shiller index futures.

The Standard & Poor's CoreLogic Case-Shiller Home Price Indices are repeat-sales house price indices for the United States. There are multiple Case-Shiller home price indices: A national home price index, a 20-city composite index, a 10-city composite index, and twenty individual metro area indices. These indices are calculated and kept monthly by Standard & Poor's, with data points calculated for the time period of January 1987 through the present. The indices kept by Standard & Poor are normalized to have a value of 100 in January 2000. These Indices are based on original work by economists Karl Case and Robert Shiller, in which their team calculated the home price index back to 1890. That index is normalized as such that 1890 has a value of 100. The Case-Shiller Index being kept on Shiller's website is updated quarterly. Due to the different set reference points, and perhaps calculation differences, the index numbers provided in each data set can be very different. For example, in 4th quarter 2013, the Standard and Poor 20 city index point was in the 160's, while the index point for 4th quarter on the Shiller data was in the 130's. Shiller claims in his book Irrational Exuberance that such a long series of home prices does not appear to have been published for any country.

# MSAs

Investopedia:

Metropolitan statistical areas (MSA) are delineated by the U.S. Office of Management and Budget (OMB) as having at least one urbanized area with a minimum population of 50,000.

A metropolitan statistical area (MSA), formerly known as a standard metropolitan statistical area (SMSA), is the formal definition of a region that consists of a city and surrounding communities that are linked by social and economic factors, as established by the U.S. Office of Management and Budget (OMB).

Metropolitan statistical areas serve to group counties and cities into specific geographic areas for population censuses and compilations of related statistical data. Modern MSAs are configured to represent contiguous geographic areas with a relatively high density of human population.

Metropolitan statistical areas usually consist of a core city with a large population and its surrounding region, which may include several adjacent counties. The area defined by the MSA is typically marked by significant social and economic interaction. People living in outlying rural areas, for example, may commute considerable distances to work, shop, or attend social activities in the urban center. As of Sept. 2018 [OMB BULLETIN NO. 18-04], there are 392 regions that meet the requirements to be designated as metropolitan statistical areas (MSA) in the U.S. and Puerto Rico (384 in the United States and 8 in Puerto Rico).

In contrast to metropolitan statistical areas, which center on towns and smaller communities with populations between 10,000-50,000, MSAs must include a city with a population of at least 50,000. Some MSAs, such as Dallas-Fort Worth-Arlington, contain multiple cities with populations exceeding 50,000. The most populous MSA in the country, New York-Newark-Jersey City, spans portions of three adjacent states, New York, New Jersey, and Pennsylvania.

The Bureau of Labor Statistics (BLS) uses MSA data to analyze labor market conditions within a geographical area. Within a metropolitan statistical area, workers can presumably change jobs without having to move to a new location, creating a relatively stable labor force.

Statistical data about MSAs also helps government officials and businesses review information about per capita income, spending patterns, and unemployment rates. The resulting data can be used to formulate policies designed to stimulate economic growth in the region.

For example, the Atlanta-Sandy Springs-Roswell metropolitan statistical area exerts a significant influence on the economic health of the region. It is the most populous area of Georgia. Companies seeking to relocate or establish new companies in the Atlanta-Sandy Springs-Roswell region can use statistical data about the area to project the viability of their intended business.

Real estate investors also use MSA data to study housing trends and population movement. In addition, applicants for certain social services may need to prove income levels below a fixed percentage of the median gross income in their metropolitan statistical area to qualify for help, including low-income housing and other forms of support.

# 13.5.3 Swaps

We introduced commodity swaps in Chapter ??. In this section, we explore more examples of commodity swaps. Recently, energy (crude oil, natural gas) has dominated the commodities markets.

https://finance.zacks.com/types-commodity-swaps-10257.html

Commodity swaps are derivatives; the value of a swap is tied to the underlying value of the commodity that it represents. Commodity swap contracts allow the two parties to hedge pricing by fixing the effective price of the asset being traded. Many commodity swaps are run through financial service companies that don't actually swap commodities – they just tie the security to the price of the commodity. Swaps may be behind the stable performance of the stock of a commodity-producing or commodity-using company that you own, or they could be a way for you to invest in the commodities market.

Commodity swaps have some built-in risks. First, the banks that set up swap contracts have fees that get built into the price. Second, the nature of a swap is that you give up risk while also giving up any upside; hedging locks a low price in when prices are high, but it also locks in a high price when prices are low. Swaps are also based on financial market prices that might not always track the cost of a product in the real market. The biggest risk in a swap is the risk that the party on the other side of the swap, sometimes referred to as the counterparty, defaults. For instance, if jet fuel prices went to  \$10 per gallon on a swap at\$ 2.94, the owner of the floating leg would have to come up with 7.06 per gallon. If that party doesn't have the money, the swap could become worthless.

# 1. Fixed-Floating Swaps

A fixed-floating commodity swap is similar to interest rate swap contracts, but using commodities instead of bonds as the vehicle. The party that owns the fixed portion will make payments to the floating party when the commodity's value drops. When the value goes up, the floating party pays the fixed party the difference, allowing it to buy the commodity at the set price. These payments cancel out what it will cost to buy and sell the products in the open market at fluctuating prices.

# 2. Commodity for Interest Swaps

In a commodity for interest swap, the commodity gets swapped for fluctuations in interest rates. The swap contract's return is set up to create an equivalency between the commodity and the chosen interest rate. Given that interest rate increases can produce swings in the prices of some commodities, hedging against this risk can be useful for commodity producers and consumers.

# 3. Example

One commonly swapped commodity is jet fuel. Airlines frequently hedge fuel prices to provide them with some predictability in what it will cost them to fly their planes. For instance, as of July 23, 2013, jet fuel sold for approximately \$2.94 per gallon. If an airline took the fixed portion of a swap contract for one million gallons of jet fuel and the price dropped to \$2.50, it would pay \$440,000 to the holder of the floating portion. The airline could then buy a million gallons for \$2.50, and, with the 44 cents it paid on the swap contract, it would end up at a price of \$2.94 per gallon. If jet fuel went up to \$4.00 per gallon, the floating-portion holder would pay the airline \$1.06 million. The airline could then buy the fuel at \$4 per gallon, subtract the swap payment it received, and end up with a net price of 2.94 per gallon.

https://www.mercatusenergy.com/blog/bid/55277/energy-hedging-101-swaps

A swap is an agreement whereby a floating (or market) price is exchanged for a fixed price, over a specified period(s) of time. In addition to energy commodities, swaps can also be used to exchange a fixed price for a floating (or market) price. Swaps are referred to as such because the buyers and sellers of swaps are "swapping" cash flows.

Energy consumers utilize swaps in order to fix or lock in their energy costs, while energy producers utilize swaps in order to lock in or fix their revenues and/or cash flow. Likewise, energy professors, refiners, traders and marketers often use swaps to hedge their profit margins and inventories (stocks). Similarly, swaps are also utilized by companies seeking to hedge their exposure to foreign exchange, interest rate and agricultural commodity risks as well.

As an example of how one can utilize an energy swap, let's assume that you're a large fuel consuming company in Houston, who wants to fix or lock in the price of your anticipated ultra-low sulfur diesel fuel (ULSD) cost for a specific month. For sake of simplicity, let's assume that you are looking to hedge  $80\%$  of your anticipated, October fuel consumption, which equates to 100,000 gallons. In order to do accomplish this you could purchase an October Platts' Gulf Coast ULSD swap from one of your counterparties, often a financial institution or commodity trading firm. If you had purchased this swap yesterday at the prevailing market price, the price would have been (approximately)  \$1.3166/gallon (\$ 55.30/BBL).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/d21ebd85072dbb4b884b078effbc53985a9f5877610aef584855175e06ff11b8.jpg)

Figure 13.9: Gulf Coast ULSD Forward Curve

Now let's examine the results of this swap if Gulf Coast ULSD prices settle both higher and lower than your price of 1.3166/gallon.

In the first case, let's assume that fuel prices increase and that the average price for Gulf Coast ULSD, (as published in Platts' US Marketscan) for each business day in October, is \$1.50/gallon. In this case, the swap would result in a hedging gain of \$0.1834/gallon ($1.50 - $1.3166 = \$0.1834) or \$18,340. As a result, you would receive a payment of \$18,340 from counterparty, which would offset the increase in your actual fuel cost of \$1.50/gallon by the amount of your gain, 0.1834/gallon.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/2d7de594ebaa57c97b155668368b564882e3614ce8a7a925eba036c89f9c7493.jpg)

Figure 13.10: Gulf Coast ULSD Swap

In the second case, let's assume that fuel prices decrease and that the average price for Gulf Coast ULSD, for each business day in October, is \$1.20/gallon. In this case, the swap would result in a hedging loss of \$0.1166/gallon ($1.3166 - $1.20 = \$0.1166) or \$11,660. In this case, you would have to pay your counterparty 11,660.

As the results of both outcomes indicate, by purchasing a ULSD swap for \$1.3166/gallon, your net fuel cost will be \$1.3166 regardless of whether ULSD prices settle higher or lower than \$1.3166. If ULSD prices settle higher than \$1.3166 you will have a gain on the swap which offsets the increase in your physical fuel price. On the other hand, if ULSD prices settle lower than 1.3166, you will have a loss on the swap which offsets the decreases in your physical fuel price.

While this example examined how swaps can be used to hedge diesel fuel price risk, the same methodology can also be used to hedge exposure to various energy commodities such as electricity, gasoline, jet fuel, natural gas, propane, etc. In addition, as previously mentioned, energy producers, refiners, traders and marketers can also utilize swaps to hedge their energy price risk. For example, if you are a crude oil producer looking to hedge your oil production, you could do so by selling crude oil swaps.

# 13.5.4 Basis Swap

Basis risk is the difference in price difference between a forward (futures) market and a cash (spot) market. In the energy markets there are three primary types of basis risk:

1. Locational Basis Risk
2. Product/Quality Basis Risk
3. Calendar Basis Risk

A basis swap is contract which provides the buyer or seller of the swap to hedge their exposure to basis risk.

So who is potentially exposed to basis risk? Nearly every energy consumer and producer: fuel end-users, fuel marketers, natural gas end-users, oil & gas producers, utility companies, etc.

As an example of basis risk and how it can be hedged, assume that you are a large airline whose contract with your jet fuel supplier states that they price you will pay for jet fuel is the average, between the low and the high price, of the U.S. Gulf Jet 54 Fuel pipeline price as published in Platts' Oilgram Price Report.

In addition, let's also assume that you want to hedge your July '11 - December '11 exposure to jet fuel prices by buying call options. In order to hedge this risk, you will need to purchase both NYMEX heating oil call options as well as Gulf Coast jet fuel vs. NYMEX heating oil jet fuel swap as the market for Gulf Coast jet fuel options isn't very liquid.

In order to explain the mechanics of structuring this hedge, assume that on March 31st you purchase a April '11 - December '11 NYMEX heating oil average price call option with a strike price of  \$3.00/gallon and a premium of\$ 0.20/gallon for 10,000 (420,000 gallons) barrels each month, April through December. By purchasing this option, if the NYMEX heating oil prices average more than 3.00/gallon during any month, Apr-Dec, you will receive a return on this option. However, because the option is based on NYMEX heating oil and not Gulf Coast jet fuel you are now exposed to the basis risk between NYMEX heating oil futures and Gulf Coast jet fuel prices.

You can hedge your basis risk by purchasing a Gulf Coast jet fuel vs. NYMEX heating oil basis swap. Assume that on March 31st you also purchase the April - December basis swap at a price of  \$0.05/gallon. As such, you have locked in the basis between the U.S. Gulf Jet 54 Fuel pipeline price and the NYMEX heating oil futures at\$ 0.05/gallon.

By purchase the NYMEX heating oil option and the Gulf Coast jet fuel vs. NYMEX heating oil basis swap you have now capped your April - December jet fuel price at \$3.05/gallon or a net of \$3.25/gallon including the 0.20 premium for the option.

To complete the example, let's assume that the front month NYMEX heating oil futures during the month of April average 3.50/gallon. If this is the case, you will receive a return on the option of  $210,000 ($ 0.50/gallon X 420,000 gallons).

Let's also assume that the average, between the low and the high price, of the U.S. Gulf Jet 54 Fuel pipeline price as published in Platts' Oilgram Price Report, during the month of April is  \$3.60/gallon. Therefore, the basis for the month of April settles at\$ 0.10/gallon ( $3.60 -$ 3.50) and you receive a return on the basis swap of \$0.05/gallon (\$0.10 - 0.05).

In conclusion, due to the returns on the option and the swap of \$0.50.gallon and \$0.05/gallon, respectively, plus the upfront premium for the option of \$0.20/gallon, your net cost for jet fuel purchased in April is \$3.25/gallon.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/12cb5e4e614e6b4ab1b56a38f597ca8372b4180a1c37f8df0b328f8fc54f6498.jpg)

Figure 13.11: Energy Basis Swap Demonstration

While this example focused on hedging jet fuel basis risk, the same methodology would apply to end-user basis risk hedging for nearly every energy commodity i.e. diesel fuel, natural gas, etc. If you would like to learn more about hedging basis risk, check out our previous posts, The Basics of Basis and Basis Risk and Revisiting Energy Basis Risk which includes several additional examples. And if that post still isn't informative enough for you to be able to determine how to analyze and hedge your basis risk, you are to contact us or leave a comment below.

# 13.5.5 Option

There are two primary types of options, call options (also known as a caps) and put options (also knows as floors). A call option provides the buyer of a call option with protection against rising prices. Conversely, a put option provides the buyer of the put option with protection against declining prices.

Energy consumers often utilize call options to mitigate their exposure to rising energy prices, including but not limited to electricity, diesel fuel, gasoline, heating oil, propane, etc.

Energy producers often utilize put options to mitigate their exposure to declining energy prices, such as crude oil, natural gas and natural gas liquids.

As an example of how an end-user (consumer) utilize a call option, let's assume that you're company has a large fleet and in order to ensure that your gasoline expenses do not exceed your budget, you need to cap the price of your anticipated cost of your gasoline consumption for a specific month. For sake of simplicity, let's assume that you are looking to hedge  $100\%$  of your anticipated, May 2011 gasoline consumption, which equates to 125,000 gallons.

In order to do accomplish this you could purchase a May 2011, NYMEX RBOB gasoline, average price call option from an energy trading company. Furthermore, let's assume that you wanted to mitigate your exposure above \$3.00 per gallon (excluding basis and taxes). If you had purchased this option last Friday, it would have cost you approximately 13 cents per gallon or \$16,250 (0.1300 X 125,000 gallons).

Now let's examine how this option would perform if gasoline prices both increase and decrease between now and the end of May.

In the first scenario, let's assume that fuel prices increase and that the average price for NYMEX RBOB gasoline futures for each business day in May, was \$3.50/gallon. In this scenario, your hedge would result in a "gain" of 50 cents per gallon ($3.50 - $3.0000 = \$0.50) or \$62,500. As a result, you would receive a payment of \$62,500 from the energy trading company, which would offset the increase in your actual fuel expenses by \$0.50/gallon. However, given that you paid 13 cents per gallon, your net gain would be 37 cents per gallon or \$46,250.

In the second scenario, let's assume that fuel prices decrease and that the average price for NYMEX RBOB gasoline futures for each business day in May, was 2.75/gallon. In this scenario, your hedge would be "out-of-the-money" and you would not receive a return on the option. However, given that gasoline futures prices have decreased, so should your actual gasoline costs at the pump. Last but not least, given that you paid 13 cents for the option, your actual net cost per gallon would need to account for the 13 cent premium cost.

As this example shows, purchasing a gasoline call option allows companies which consumes large quantities of gasoline to hedge their exposure against rising gasoline prices.

The following chart shows the "payoff" of the \$3.00 gasoline call option described above. As you can see, when gasoline futures are below \$3.00 per gallon, the company's net price is equal to the gasoline futures plus 13 cents (the price of the option). Conversely, when the futures are above 13 cents per gallon, the company's net price remains $3.13 ($3.00 + 0.13).

# Collar

When we refer to complex energy hedging strategies, they need not be complex, they are simply more advanced than the basic hedging strategies we've addressed in recent weeks.

Having said that, there are times where energy producers, marketers and consumers feel the need to think outside of the box with respect to hedging. For large fuel consumers it could be an environment like the current environment where hedging is more important than ever yet option premiums can be prohibitively expensive. For crude oil producers, it could be also be an environment like the current environment, where the producers desires to hedge against potentially declining prices while retaining some ability to profit from potentially rising prices. In both situations, one hedging strategy that could be considered is known as a collar.

While it may sound complex, a consumer collar is simply the combination of buying a call option and selling a put option thus creating both a ceiling and a floor. Conversely, a producer collar is the combination of buying a put option and selling a call option. Often times, the options are structured in such a way that the premium of the purchased option is completely offset by the premium of the sold option, a structure known as a costless collar.

As an example, let's consider a NYMEX natural gas costless collar with a \$4.50 ceiling (call option) and a \$3.50 floor (put option). For a natural gas producer is protected against prices declining below \$3.50 while there upside would be limited to \$4.50. In between \$3.50 and \$4.50 the producer would be selling his production at the current market price. Conversely, a natural gas consumer would face the opposite situation, they would be protected against prices rising above \$4.50 while their downside would be limited to \$3.50. Likewise, in between \$3.50 and \$4.50, the consumer would be paying the current market price.

# 13.6 Swing Contract

In commodity and energy markets swing options allow the buyer to hedge against futures price fluctuations and to select its preferred delivery strategy within daily or periodic constraints, possibly fixed by observing quoted futures contracts.

# 13.6.1 Basic Contract

Here is a short description of the contract (from Tapio Behrndt).

Commodity Storages

Start date: today  $t$

Expiry date:  $T$

Exercise dates: daily from today until  $T$

Storage start level:  $L_{0}$ , i.e. today there might already be some gas/oil in storage which we buy

Storage end level:  $L_{T}$ , i.e. at expiry we need to return the storage with a certain amount of gas/oil filled in there

Storage cap:  $C_{\mathrm{max}}$ , i.e. the storage capacity

Daily injection rate:  $R_{i}$ , i.e. how much can you inject every day (mainly a technical constraints)

Injection efficiency:  $\lambda$ , i.e. not necessarily  $100\%$  of what you inject will be available afterwards

Daily withdrawal rate:  $R_{w}$ , i.e. how much can you withdraw on a daily basis (mainly a technical constraint)

As I mentioned, I tried three different pricing approaches.

NaN. Linear programming

The pricing problem is fully linear problem with local constraints (daily injection/withdrawal) and global constraints (storage start/end level), so can be easily solved with a standard optimizer. I actually found this one in a book about energy risk mgmt.

NaN. Dynamic programming

Not much to say here, its very straightforward, no need to do the Monte-Carlo and Logstaff-Schwartz pricing.

NaN. Reinforcement learning (Q-learning algorithm)

# Swing Contracts

These are very common in energy markets (gas and power) and more or less they are a nonlinear version of commodity storages. Typical contract terms are as follows:

Start date: today  $t$

Expiry date:  $T$

Exercise dates: daily from today until  $T$

Maximum daily amount:  $D_{\mathrm{max}}$ , i.e. the maximum amount you can buy on a daily basis

Minimum daily amount:  $D_{\mathrm{min}}$ , i.e. the minimum amount that you have to buy on a daily basis

Maximum total amount:  $N_{\mathrm{max}}$ , i.e. the maximum amount that you can buy until expiry

Minimum total amount:  $N_{\mathrm{min}}$ , i.e. the minimum amount that you have to buy until expiry

So essentially this is a daily strip of a forward (notional  $D_{\mathrm{min}}$ ) and a call option with variable volume and then you have local constraints defined by  $D_{\mathrm{min}}$  and  $D_{\mathrm{max}}$  and global constraints defined by  $N_{\mathrm{min}}$  and  $N_{\mathrm{max}}$ . The question is then to find the strike price  $K$  for this product which would price this contract at zero given today's state of the underlying market (or alternatively given todays market and a fixed strike  $K$ , what is the price of this product).

To evaluate the swing contract, we continue to assume the existence of the risk-neutral measure. Under the risk-neutral pricing, the contract has the following value:

$$
\begin{array}{l} C (t, \underline {{T}}; \underline {{q}}) = \max  _ {q _ {i}} \sum_ {i = 1} ^ {n} P (t, T _ {i}) \hat {\mathbb {E}} _ {t} \left[ 1 _ {q _ {i} > 0} q _ {i} \max  \left\{\Phi \left(T _ {i}, T _ {i} + 1 \mathrm {d}\right) - K, 0 \right\} + 1 _ {q _ {i} <   0} q _ {i} S (T _ {i}) \right] \\ = \max  _ {q _ {i}} \sum_ {i = 1} ^ {n} P (t, T _ {i}) \left\{1 _ {q _ {i} > 0} q _ {i} \left[ \Phi (t, T _ {i} + 1 \mathrm {d}) \Pi_ {i} ^ {+} - K \Pi_ {i} ^ {-} \right] + 1 _ {q _ {i} <   0} q _ {i} \Phi (t, T _ {i}) \right\} \tag {13.3} \\ \end{array}
$$ where is the risk-free discount factor (till time  $u$ ),  $1_{\{\cdot\}}$  is the indicator function,  $\underline{T} = < T_1, \dots, T_n >$  are exercise dates;  $\underline{q} = < q_1, \dots, q_n >$  are daily quantities (injection or withdrawal);  $\Phi(t, u)$  is the futures price purchased at time  $t$  and delivered at time  $u$ ; and  $\hat{\mathbb{E}}_t$  is the risk-neutral expectation. Finally,  $\Pi_1$  and  $\Pi_2$  are two probabilities. In other words, at each day  $T_i$  ( $i = 1, \dots, n$ ), a quantity  $N_i$  is decided to buy at a futures price  $\Phi(T_i, T_i + 1\mathrm{d})$  which delivers at  $T_i + 1\mathrm{d}$  or the strike price  $K$  whichever is smaller. (Given that this is a one-day futures contract, the futures price must be very close to the spot price  $S(T_i)$ .) In equation (1), we note that the risk-neutral of both future spot price and futures price are futures prices and if the futures price follows the Black model (1976):


$$

\frac {d \Phi (t , T _ {i})}{\Phi (t , T _ {i})} = \sigma W (t)

$$ then the two probabilities are normal:


$$

\Pi_ {i} ^ {\pm} = N \left(\frac {\ln \Phi (t , T _ {i}) - \ln K}{\sigma \sqrt {T _ {i} - t}} \pm \frac {1}{2} \sigma^ {2} (T _ {i} - t)\right)

$$ where  $N(\cdot)$  is the standard normal probability. Note that equation (1) does not have a closed form solution (although the price option does). Equation (1) needs to be solved for a series of quantities (positive is buy and negative is sell/consume). Given that the objective function is linear (both  $\Phi(t, T_i + 1\mathrm{d})\Pi_i^+ - K\Pi_i^-$  and  $\Phi(t, T_i)$  are known), the problem can be solved via linear programming.

$$
\max _ {q _ {i}} \sum_ {i = 1} ^ {n} P (t, T _ {i}) \left\{1 _ {q _ {i} > 0} q _ {i} a _ {i} + 1 _ {q _ {i} <   0} q _ {i} b _ {i}) \right\}
$$ subject to:


$$ l <   q _ {i} <   u
$$

$$
L <   \sum_ {i = 1} ^ {n} q _ {i} <   U
$$ where  $l$  and  $u$  are daily upper and lower limits and  $Z$  and  $U$  are all-time upper and lower limits and


$$ a _ {i} = \Phi (t, T _ {i} + 1 \mathrm {d}) \Pi_ {i} ^ {+} - K \Pi_ {i} ^ {-}
$$

$$ b _ {i} = \Phi (t, T _ {i})
$$

This is a linear programming problem that can be easily solved in Excel using the Solver.

# 13.6.2 Random Quantities

When the quantities are random (i.e. determined at each date), then it becomes a function of the realized futures price at each date. (6)

$$
C (t, \underline {{T}}; \underline {{q}}) = \max _ {q _ {i}} \sum_ {i = 1} ^ {n} P (t, T _ {i}) \hat {\mathbb {E}} _ {t} \left[ 1 _ {\tilde {q} _ {i} > 0} \tilde {q} _ {i} \max \{\Phi (T _ {i}, T _ {i} + 1 \mathrm {d}) - K, 0 \} + 1 _ {\tilde {q} _ {i} <   0} \tilde {q} _ {i} S (T _ {i}) \right]
$$

Now the daily quantity  $\tilde{q}_i = f(\Phi(T_i, T_i + 1\mathrm{d}), S(T_i))$  is random and is a function of the futures price  $\Phi(T_i, T_i + 1\mathrm{d})$  and the spot price  $S(T_i)$ . This implies that  $\tilde{q}_i$  and  $\Phi(T_i, T_i + 1\mathrm{d})$  and  $S(T_i)$  are correlated and then the expected value cannot be solved in a closed form solution.

As a result, a dynamic programming approach must be adopted and the swing contract becomes similar to an American option problem. It should be noted that the swing contract is also path dependent, making it impossible to use any lattice to evaluate. The possible choices are:

1. Longstaff-Schwartz
2. PSO
3. Q-Learning
4. dynamic programming

<Give an example>

# 13.6.3 Extensions (Liquidity and Random Interest Rates)

Now the problem becomes more complex:

$$
\begin{array}{l} C (t, \underline {{T}}; \underline {{q}}) \\ = \max _ {q _ {i}} \sum_ {i = 1} ^ {n} \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T _ {i}} r (u) d u\right) \left[ 1 _ {\tilde {q} _ {i} > 0} \tilde {q} _ {i} \max \{\Phi (T _ {i}, T _ {i} + 1 \mathrm {d}) - K, 0 \} + 1 _ {\tilde {q} _ {i} <   0} \tilde {q} _ {i} S (T _ {i}) \right] \right] \\ = \max  _ {q _ {i}} \sum_ {i = 1} ^ {n} P (t, T _ {i}) \tilde {\mathbb {E}} _ {t} ^ {(T _ {i})} [ 1 _ {\tilde {q} _ {i} > 0} \tilde {q} _ {i} \max  \left\{\Phi \left(T _ {i}, T _ {i} + 1 \mathrm {d}\right) - K, 0 \right\} + 1 _ {\tilde {q} _ {i} <   0} \tilde {q} _ {i} S (T _ {i}) ] \\ \end{array}
$$ where  $\tilde{\mathbb{E}}_t^{(T_i)}$  is the  $T_{i}$ -forward expectation. With non-stochastic  $q_{i}$ , there is a closed-form solution to the price option (Chen (1992)) and LP can still solve the problem. In other words, as long as the optimal quantities are not random, stochastic interest rates do not add too much complexity to the problem. If quantities are random, then, there is no easy solution


# 13.7 Water Futures

Bloomberg News:

California Water Futures Begin Trading Amid Fear of Scarcity

By Kim Chipman

December 6, 2020, 5:00 PM EST Updated on December 7, 2020, 3:58 PM EST

Water joined gold, oil and other commodities traded on Wall Street, highlighting worries that the life-sustaining natural resource may become scarce across more of the world.

Farmers, hedge funds and municipalities alike are now able to hedge against – or bet on – future water availability in California, the biggest U.S. agriculture market and world's fifth-largest economy. CME Group Inc.'s January 2021 contract, linked to California's \$1.1 billion spot water market, last traded Monday at 496 index points, equal to \$496 per acre-foot.


The contracts, a first of their kind in the U.S., were announced in September as heat and wildfires ravaged the U.S. West Coast and as California was emerging from an eight-year drought. They are meant to serve both as a hedge for big water consumers, such as almond farmers and electric utilities, against water prices fluctuations as well a scarcity gauge for investors worldwide.

"Climate change, droughts, population growth, and pollution are likely to make water scarcity issues and pricing a hot topic for years to come," said RBC Capital Markets managing director and analyst Deane Dray. "We are definitely going to watch how this new water futures contract develops."

About the NQH20 Index: Reflecting water prices

The Nasdaq Veles California Water Index (ticket symbol: NQH2O) tracks the price of water rights leases and sales transactions across the five largest and most actively traded regions in California. Water entitlement transactions from the surface water market and four adjudicated groundwater basins –the Central Basin, the Chino Basin, the Main San Gabriel Basin, and the Mojave Basin Alto Subarea are included in the index. The value of the index reflects the volume-weighted average price of water, at the source, excluding conveyance costs and water losses in the underlying markets after adjusting for idiosyncratic pricing factors specific to each of the eligible markets and transaction types. NQH20 is valued in US dollars per acre foot (the volume of water required to cover one acre of land (43,560 square feet) to a depth of one foot, equivalent to 325,851 gallons)

Contract Specifications

<table><tr><td>CONTRACT NAME</td><td>Nasdaq Veles California Water Index futures</td></tr><tr><td>PRODUCT CODE</td><td>H2O</td></tr><tr><td>CONTRACT UNIT</td><td>10 acre feet x NGH2O Index</td></tr><tr><td>PRICE QUotation</td><td>US dollars per acre foot</td></tr><tr><td>CONTRACT MONTHS</td><td>Eight consecutive quarterly contracts (Mar, Jun, Sept Dec) plus nearest two serial months</td></tr><tr><td>MINIMUM PRICE FLUCTUATION</td><td>Outrights: \$1.00 per acre foot equal to \$10.00 per contract
Calendar spreads: \$0.25 per acre foot equal to \$2.50 per contract</td></tr><tr><td>TRADING HOURS AND VENUE</td><td>Globex: Sunday - Friday 5:00 p.m. - 4:00 p.m. CT with a 60-minute break each day beginning at 4:00 p.m.
ClearPort: Sunday 5:00 p.m. - Friday 5:45 p.m. CT with a 15-minute maintenance window Monday - Thursday from 5:45 p.m. to 6:00 p.m. CT</td></tr><tr><td>SETTLEMENT METHOD</td><td>Financially settled</td></tr><tr><td>BLOCK TRADE MINIMUM THRESHOLD</td><td>25 contracts</td></tr><tr><td>LAST TRADING DAY</td><td>Business day prior to Final Settlement Day</td></tr><tr><td>FINAL SETTLEMENT DAY</td><td>Third Wednesday of the contract month if a CME business day, otherwise the next business day</td></tr><tr><td>FINAL SETTLEMENT PRICE</td><td>Closing NGH2O price on Final Settlement Day rounded to the nearest 0.01.</td></tr></table>

Figure 13.12: CME Water Index Futures


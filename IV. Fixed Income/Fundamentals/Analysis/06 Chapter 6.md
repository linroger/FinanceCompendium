---
aliases: Foreign Currency Swap
tags:
key_concepts:
parent_directory: Analysis
cssclasses: academia
title: Chapter 6 - Foreign Currency Swap
linter-yaml-title-alias: Chapter 6 - Foreign Currency Swap
---

# Chapter 6

# Foreign Currency Swap

# 6.1 Introduction

From a macro perspective, exchange rates are regarded as a symbol of a nation's economic and political strengths. From a micro perspective, exchange rates play a central role in multi-national conglomerates in terms of their profits and investments, and diversification.

In the past decades, most prominent examples are Japan and China. Japan's development after WW2 and China's development after Chairman Deng Xiaoping's lift of the iron curtain have been nothing but phenomenal. Their exchange rates against dollar pretty much tell the whole story.

In this chapter, we will demonstrate calculations related to foreign currency transactions, which include:

- spot

Spot rates reflect the purchasing power parity theorem.

- forwards (and futures)

Forward rates must follow the interest rate parity theorem.

- swaps

This is the most active market and used to build the FX curve.

- options

FX options must obey the international put-call parity theorem.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/76a4753e4124158ca2dc7847b633f5f9119a7682deac6178f843bfb036b4f086.jpg)

Figure 6.1: JPY vs. USD

Due to the nature of exchange rates being the relative worthiness of the purchasing power by the two countries, there is a triangular rule that no-arbitrage must obey.

The most important takeaway of FX markets is the quanto risk premium. If the exchange rate is correlated with interest rates of the two countries, then

# 6.2 Spot Exchange Rate

Exchange rates carry important information about the relative economic strengths of two countries. A strong currency helps its citizens buy foreign goods cheaper and is a symbol of national pride.

It is never enough to emphasize the importance of how exchange rate can help economic development of a country. Often we heard that developing countries like recent China or an earlier Japan try to manipulate the exchange rates in order to export goods to earn foreign reserves. It impacts directly on exports (higher exchange rate (i.e. depreciation of domestic currency) leads to cheaper domestic goods in a foreign country) and imports (lower exchange rate (i.e. appreciation of domestic currency) allows its citizens to consume cheaper foreign goods).

It also indirectly transfer inflation out of or into the country. A weaker currency lures foreign capitals (due to cheaper investments) and fuel money supply and also more expensive imported goods help raise the prices.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/2c697dc14f6eca78328106a770d5712ca09a86a6ae51fa5c62dabaacb97770fb.jpg)

Figure 6.2: CNY vs. USD

# 6.2.1 Purchasing Power Parity, PPP

The first question is how the level of an exchange rate is determined. Fundamentally speaking, it is determined by the purchasing power parity between two countries.

According to Wikipedia:

Purchasing power parity (PPP) is a measurement of prices in different countries that uses the prices of specific goods to compare the absolute purchasing power of the countries' currencies. In many cases, PPP produces an inflation rate that is equal to the price of the basket of goods at one location divided by the price of the basket of goods at a different location. The PPP inflation and exchange rate may differ from the market exchange rate because of poverty, tariffs, and other transaction costs.

To understand PPP, we can use a classical comparative advantage example (similar to the one used in FX swap later in this chapter and in IRS in Chapter 5). There are two nations and each nation lives one person. This person produces fruit domestically. The American (A) produces apples and the Brazilian (B) produces oranges.

<table><tr><td>A</td><td>B</td><td></td></tr><tr><td>apples</td><td>oranges</td><td>product</td></tr><tr><td>100</td><td>200</td><td>capacity</td></tr><tr><td>1 dollar</td><td>1 real</td><td>per product</td></tr></table>

Table 6.1: PPP Explained

If A (America) consumes half of its production and trades half of its production (i.e. 50 apples) with B (Brazil) for half of its production (i.e. 100 oranges), then the exchange rate between the two countries is 1:2. If the American pays 1 per apple and the Brazilian pays 1 real per orange, then the exchange rate between dollar and real is 1:2 (dollar more expensive). If the Brazilian spends only half real for an orange, then the exchange rate between dollar and real is 1:1. Hence, directly we can see the exchange rate is a factor of money supply.

If Brazil prints a lot of money, then the price of oranges (given same productivity which is 100 oranges) goes up and consequently the value of real goes down and the exchange rate goes in America's favor. This indicates that PPP is also connected to inflation.

The exchange rate between apples versus oranges is known as the "real" exchange rate and the one between dollar and real is "nominal" exchange rate. As seen, the nominal rate includes inflation. This is parallel to the argument between nominal versus real interest rates.

So far, we assume that the productivity of the two nations is same. One can add different productivity levels to the analysis. Let B be more productive than A. Imagine B invents a machine that can double the production of oranges (to 400 oranges). So easily, B can use 200 oranges to trade for 100 apples with A. But A's productivity does not change; so for A to produce 200 apples A will have to work double shifts. So clearly, the qualify of life for B is twice as good as for A. In other words, B's purchasing power is twice as A's. While the nominal exchange rate is 1:2, the real exchange rate is 1:1.

# 6.2.2 Triangular Relationship

Define Y and Y as the exchange rates between the domestic currency (from now on this is assumed to be USD, $) and two other (any) foreign currencies (from now on this is assumed to be British pound, £, and Japanese yen, ¥). Known as cross-currency arbitrage, exchange rates among (any) three nations form a closed circle. Their triangular relationship is described as follows:

Then, the exchange rate between £and ¥must be:

$$
X = \frac {\Upsilon}{Y}
$$

For example, the exchange rate between dollar and yen is  $Y = 0.01$  (1 dollar = 100 yen) and pound is  $\Upsilon = 1.5$  (1 pound = 1.5 dollars). Then in Japan (end of arrow), 1 pound is worth 150 yen.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/4d4524d99551458d06ce924374b00704883a82e78313df185e35c2c52d749ec2.jpg)

Figure 6.3: Triangle of Three Currencies

Assume log-normally distributed exchange rates. Then,

$$
\ln X = \ln \Upsilon - \ln Y
$$ and


$$

\sigma_ {X} ^ {2} = \sigma_ {\Upsilon} ^ {2} + \sigma_ {Y} ^ {2} - 2 \rho_ {\Upsilon Y}

$$

$$

\sigma_ {Y} ^ {2} = \sigma_ {\Upsilon} ^ {2} + \sigma_ {X} ^ {2} - 2 \rho_ {X \Upsilon}

$$

$$

\sigma_ {\Upsilon} ^ {2} = \sigma_ {X} ^ {2} + \sigma_ {Y} ^ {2} + 2 \rho_ {X Y}

$$

Hence, it is clear that the volatilities of the three exchange rates cannot be arbitrary and are confined by the cross-currency correlations. Furthermore, the correlation matrix must be positive semi-definite (i.e. its determinant must be 0):

$$

\left| \begin{array}{c c c} 1 & \rho_ {1 2} & \rho_ {1 3} \\ \rho_ {1 2} & 1 & \rho_ {2 3} \\ \rho_ {1 3} & \rho_ {2 3} & 1 \end{array} \right| = 1 + 2 \rho_ {1 2} \rho_ {2 3} \rho_ {1 3} - \left(\rho_ {1 3} ^ {2} + \rho_ {1 2} ^ {2} + \rho_ {2 3} ^ {2}\right) = 0

$$

If one of them is  $100\%$  then the other two must be equal to each other:

$$

1 + 2 \rho_ {2 3} \rho_ {1 3} - \left(\rho_ {1 3} ^ {2} + 1 + \rho_ {2 3} ^ {2}\right) = 0

$$

$$

\left(\rho_ {1 3} - \rho_ {2 3}\right) ^ {2} = 0

$$

$$

\rho_ {1 3} = \rho_ {2 3}

$$

If one of them is  $-100\%$  then:

$$

1 - 2 \rho_ {2 3} \rho_ {1 3} - \left(\rho_ {1 3} ^ {2} - 1 + \rho_ {2 3} ^ {2}\right) = 0

$$

$$

2 - \left(\rho_ {1 3} + \rho_ {2 3}\right) ^ {2} = 0

$$

$$

\rho_ {1 3} + \rho_ {2 3} = \left\{ \begin{array}{l} \sqrt {2} \\ - \sqrt {2} \end{array} \right.

$$

Such limitations provide arbitrage opportunities (i.e. violation of these limitations present profit opportunities).

# 6.2.3 Exchange Rate and Imports/Exports

Investopedia:

The relationship between a nation's imports and exports and its exchange rate is complicated because there is a constant feedback loop between international trade and the way a country's currency is valued. The exchange rate has an effect on the trade surplus or deficit, which in turn affects the exchange rate, and so on. In general, however, a weaker domestic currency stimulates exports and makes imports more expensive. Conversely, a strong domestic currency hampers exports and makes imports cheaper.

For example, consider an electronic component priced at  \$10 in the U.S. that will be exported to India. Assume the exchange rate is 50 rupees to the U.S. dollar. Neglecting shipping and other transaction costs such as importing duties for now, the\$ 10 electronic component would cost the Indian importer 500 rupees.

If the dollar were to strengthen against the Indian rupee to a level of 55 rupees (to one U.S. dollar), and assuming that the U.S. exporter does not increase the price of the component, its price would increase to 550 rupees (10 x 55) for the Indian importer. This may force the Indian importer to look for cheaper components from other locations. The 10\% appreciation in the dollar versus the rupee has thus diminished the U.S. exporter's competitiveness in the Indian market.

At the same time, assuming again an exchange rate of 50 rupees to one U.S. dollar, consider a garment exporter in India whose primary market is in the U.S. A shirt that the exporter sells for 10 in the U.S. market would result in them receiving 500 rupees when the export proceeds are received (neglecting shipping and other costs).

If the rupee weakens to 55 rupees to one U.S. dollar, the exporter can now sell the shirt for 9.09 to receive the same amount of rupees (500). The 10\% depreciation in the rupee versus the dollar has therefore improved the Indian exporter's competitiveness in the U.S. market.

The result of the  $10\%$  appreciation of the dollar versus the rupee has rendered U.S. exports of electronic components uncompetitive, but it has made imported Indian shirts cheaper for U.S. consumers. The flip side is that a  $10\%$  depreciation of the rupee has improved the competitiveness of Indian garment exports, but has made imports of electronic components more expensive for Indian buyers.

When this scenario is multiplied by millions of transactions, currency moves can have a drastic impact on a country's imports and exports.

# Foreign Reserves

Exports are essential for developing nations to build up their foreign reserves. These foreign reserves are regarded as safety reservoir to maintain economic stability and avoid economic crises such as inflation. For example, dollar reserves have been regarded as equivalent to gold as the most valuable foreign reserve for any nation since the WW2.

# 6.3 Interest Rate Parity, IRP, and FX Forward

IRP explains the relationship between the spot exchange rate and the forward exchange rate. IRP states that the difference between the two is the interest rate differential between the two countries. The following table explains. Todya's exchange rate is 1:100 (or 0.01 per yen) and the interest rates in the US and Japan are 5\% and 2\% respectively.

<table><tr><td>today (yen)</td><td>maturity (in 1 year)</td></tr><tr><td>exchange rate is 1:100 (quote: \$0.01 per yen)</td><td></td></tr><tr><td>1-year US rate is 5\%</td><td></td></tr><tr><td>1-year JP rate is 2\%</td><td></td></tr><tr><td>strategy 1: use US\$1 to buy 100 yen (earn 2\%)</td><td>102 yen</td></tr><tr><td>strategy 2: invest US\$1 domestically (earn 5\%)</td><td>\$1.05</td></tr></table>

Table 6.2: IRP Explained

So, forward exchange rate must be  $102 / 1.05 = 97.14$ , i.e. 1:97.14 (quote: 0.0103) or arbitrage should take place.

Mathematically, let  $X_0$  be the current exchange rate. Then

$$

R _ {U S} = \frac {\frac {1}{X _ {0}} R _ {J P}}{X _ {1}}

$$

$$
1. 0 5 = \frac {\frac {1}{0 . 0 1} \times 1 . 0 2}{X _ {1}}
$$

$$

X _ {1} = X _ {0} \frac {R _ {U S}}{R _ {J P}} = \frac {1}{0 . 0 1} \times \frac {1 . 0 5}{1 . 0 2} = 0. 0 1 0 3

$$

In continuous time, we denote:

$$

\frac {R _ {U S}}{R _ {J P}} = \frac {e ^ {r _ {U S}}}{e ^ {r _ {J P}}} = e ^ {r _ {U S} - r _ {J P}}

$$

Note that forward price does NOT reflect the expected future spot value; but rather a price to lock in to buy a foreign currency in the future. The no-arbitrage condition described above forces the forward price to follow IRP. If one expects that the future spot exchange rate  $(\mathbb{E}[X_1])$  to be higher than the forward, one can sell forward to speculate. But there is risk and risk premium makes:

$$

\mathbb {E} _ {t} [ X _ {T} ] <   \Psi_ {X} (t, T)

$$ where  $\Psi_X(t,T)$  is the forward FX rate settled at time  $T$ .

# FX Forward and FX Futures

Currency forward contracts are the most liquid forward contracts available in the marketplace (unlike other assets where futures contracts are more liquid, due to trading in centralized exchanges). This is because many international corporations use FX forwards to hedge their revenue volatility.

In Chapter 2, we see a Bloomberg screenshot 2.13. Here we have another euro-dollar quotes:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/1a7f3f976ff827c194d3297d084d024e8fdb71c3a150a8918f6ea49ecb5fd0e2.jpg)

Figure 6.4: FX Forward Quotes (euro)

The FX futures are not very liquid. FX futures are traded at exchanges around the world, with the most popular being the Chicago Mercantile Exchange (CME).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/49dd437ed39e85bd2c5b50991b923223a282f75951b068a804703416e54c8ea9.jpg)

Figure 6.5: FX Futures Quotes (from slideplayer.com)

Note that forward contracts have rolling maturities and futures contracts have fixed maturities. IRP applies to forward prices only. Yet forward and futures prices are close to each other. $^{1}$  A helpful tutorial from CME about the basics of FX futures and be found on https://www.cmegroup.com/education/courses/introduction-to-fx/importance-of-fx-futures-pricing-and-basis.html.

# 6.4 FX Swaps

FX swaps are one type of interest rate swaps. Yet they are more complex in that there are two different currencies in two legs (hence there is one more dimension to the problem).

# 6.4.1 Comparative Advantage Analysis

As in interest rate swaps in Chapter 5, we begin with the comparative argument by Adam Smith. Assume that companies A (for American) and B (for British) have their borrowing costs in their own countries (domestic) and the other country (foreign) as follows:

Table 6.3: Add caption

<table><tr><td></td><td>US</td><td>UK</td></tr><tr><td>A</td><td>0.08</td><td>0.116</td></tr><tr><td>B</td><td>0.1</td><td>0.12</td></tr><tr><td>diff</td><td>2</td><td>0.004</td></tr></table>

Both companies borrow fixed in both countries but we can see the comparative advantages of these companies. They can borrow more cheaply in their own countries and more expensively in the other country. Now, they can engage in a foreign currency (FX) swap, as described below:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/6dbe3299f8944de30828ad0a771f7dd681a90db4821ce6ee979c4745cc7f0379.jpg)

Figure 6.6: FX Swap

# 6.4.2 No-Arbitrage (trading) Analysis

The comparative advantage analysis explains the motivation of a swap and yet its pricing is pretty arbitrary, not an exact science. In the market, however, the price is determined by the forward curve, or arbitrage will take place.

Note that here we use annual cash flows which are not realistic. The reason why I am not using a realistic frequency is because the daycount conventions in different countries are different. Also holidays of different countries can easily complicate the convention. As a result, I am keeping the examples here simple. Readers must adapt the idea here to a real situation with proper daycount conventions.

# Fixed-Fixed Swap

Given the following domestic discount factors (in the example a discrete annual  $5\%$  rate is used and hence the yield is  $5\%$  for annually compounded cash flows):

The exchange rate right now is \$1.5 per pound. The swap is hence for \$150 for £100. Assume in both countries the interest rate is (annual compounding) 5\%.

<table><tr><td></td><td>t=0</td><td>t=1</td></tr><tr><td></td><td>disc fact</td><td>disc fact</td></tr><tr><td>1</td><td>0.952381</td><td></td></tr><tr><td>2</td><td>0.907029</td><td>0.952381</td></tr><tr><td>3</td><td>0.863838</td><td>0.907029</td></tr><tr><td>4</td><td>0.822702</td><td>0.863838</td></tr><tr><td>5</td><td>0.783526</td><td>0.822702</td></tr></table>

Hence in Table 6.7, left box, it show the cash flows in both legs. Since it is a fixed-fixed swap, there is no uncertainty in the cash flows. On the domestic leg, you pay  \$7.5 which is\$ 150 × 5\%. On the foreign leg, you receive £5 which is £×5\%. If the exchange rate does not change in the next 5 years, then the swap will be net 0 since the two legs have equal value and are net 0.

Table 6.4: Domestic Discount Curves

<table><tr><td>init rate</td><td>\$ 150 5\%</td><td>£ 100 5\%</td><td>t=1 int rate</td><td>\$ 200 5\%</td><td>£ 100 5\%</td><td>net</td></tr><tr><td>1</td><td>-7.5</td><td>5</td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>-7.5</td><td>5</td><td>2</td><td>10</td><td>-5</td><td>2.5</td></tr><tr><td>3</td><td>-7.5</td><td>5</td><td>3</td><td>10</td><td>-5</td><td>2.5</td></tr><tr><td>4</td><td>-7.5</td><td>5</td><td>4</td><td>10</td><td>-5</td><td>2.5</td></tr><tr><td>5</td><td>-157.5</td><td>105</td><td>5</td><td>210</td><td>-105</td><td>52.5</td></tr></table>

Table 6.5: FX Swap Example: Exchange Rate Changes

However, if the situation changes in time 1. The exchange rate rises to \$2 per pound. In this case, you will be making (the contract is now called "in-the-money"). To monetize the profit, you can either cancel the contract (and according to ISDA your counterparty must pay you) or equivalently you can engage in a reverse swap as in the right box of Table 6.7. In this reverse swap, you receive domestic cash flows (\$10) and pay foreign cash flows (£5). The next is \$2.5 for four years. Discounting (using the forward discount factors in Table 6.4) this cash flow stream and sum them up yields \$50.

Now, let assume a different situation. The exchange rate stays the same but the domestic interest rate changes, from  $5\%$  to  $8\%$ . Then the forward discount factors become:

<table><tr><td></td><td>t = 0</td><td>t = 1</td></tr><tr><td></td><td>disc fact</td><td>disc fact</td></tr><tr><td>1</td><td>0.952381</td><td></td></tr><tr><td>2</td><td>0.907029</td><td>0.925926</td></tr><tr><td>3</td><td>0.863838</td><td>0.857339</td></tr><tr><td>4</td><td>0.822702</td><td>0.793832</td></tr><tr><td>5</td><td>0.783526</td><td>0.735030</td></tr></table>

Then the reverse swap generates \$16 per year, yielding a \$8.5 net difference. PV'ing this cash flow stream back using the forward discount factors, we obtain a present value of 64.90.

Table 6.6: Domestic Discount Curves

<table><tr><td>init int rate</td><td>150
5\%</td><td>£
100
5\%</td><td>t=1 int rate</td><td>200
8\%</td><td>£
100
5\%</td><td>net</td></tr><tr><td>1</td><td>-7.5</td><td>5</td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>-7.5</td><td>5</td><td>2</td><td>16</td><td>-5</td><td>8.5</td></tr><tr><td>3</td><td>-7.5</td><td>5</td><td>3</td><td>16</td><td>-5</td><td>8.5</td></tr><tr><td>4</td><td>-7.5</td><td>5</td><td>4</td><td>16</td><td>-5</td><td>8.5</td></tr><tr><td>5</td><td>-157.5</td><td>105</td><td>5</td><td>216</td><td>-105</td><td>58.5</td></tr></table>

Table 6.7: FX Swap Example: Domestic Interest Rate Changes

Certainly the exchange rate or the interest rate can move in the other direction and in that case, the fixed leg loses money (the contract is then "out-of-the-money").

# Fixed-Floating Swap

Now we turn to a more standard contract: fixed-floating swap. We first introduce the floating payments to the domestic leg (and the foreign leg remains fixed). We change the forward curve from flat in Table 6.7 to upward sloping in Table 6.7. Hence, the payments on the domestic leg are non-constant. To make sure that it is a fair swap (i.e. today's swap contract has no value), the foreign leg must pay the swap rate using equation (5.2) from Chapter 5:

$$ w (t, T _ {n}) = \frac {1 - P (t , T _ {n})}{\sum_ {i = 1} ^ {n} P (t , T _ {i})}
$$ which is  $5.3449\%$ .


<table><tr><td>exch rate</td><td>1.5</td><td>$/£</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>swap rate</td><td>0.053449</td><td></td><td>\$150 floating</td><td>£100 5.3449\%</td><td></td></tr><tr><td></td><td>fwd rate</td><td>disc fact</td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td>0.03</td><td>0.970874</td><td>1</td><td>4.5</td><td>5.34493</td><td>-3.5174</td></tr><tr><td>2</td><td>0.05</td><td>0.924642</td><td>2</td><td>7.5</td><td>5.34493</td><td>-0.5174</td></tr><tr><td>3</td><td>0.06</td><td>0.872303</td><td>3</td><td>9</td><td>5.34493</td><td>0.982604</td></tr><tr><td>4</td><td>0.065</td><td>0.819064</td><td>4</td><td>9.75</td><td>5.34493</td><td>1.732604</td></tr><tr><td>5</td><td>0.0675</td><td>0.767273</td><td>5</td><td>160.125</td><td>105.3449</td><td>2.107604</td></tr></table>

Table 6.8: Fixed-Floating Swap (Domestic Floating)

We now compute the present values of both legs. By using sumproduct in Excel, we can find the PV of the domestic leg to be exactly \$150 and the foreign leg to be exactly £100 (which is worths exactly \$150).

While the swap now at inception is fair, there is no guarantee over time the value of the swap contract will remain 0. As the exchange rate and interest rates in both countries move around, the values will change.

# Floating-Floating Swap

Now we turn to floating-floating swap, or known as a differential (diff) swap. We need curves in both countries. Due to the fact that there is a difference in the curves of the two countries (known as basis), a spread must be added to compensate the basis (so that the swap is fair). The basis is just the difference between the two curves of two countries.

Table 6.9 is the domestic leg and Table 6.10 is the foreign leg. The basis curve is given in Table 6.10 as the difference in two curves. The payments of the domestic leg are with the spread (last column).

The first step is to convert the foreign cash flows into domestic money, which is the last column of Table 6.10. As we can see, using the foreign curve on foreign cash flows yields the par value of the leg. After converting the cash flows into domestic money and discounted at the domestic curve, it is not the same as applying the exchange rate on the foreign leg.

The next step is to solve for the spread so that the domestic leg value is equal to the foreign leg value under domestic currency. In our example, the spread is 4.3233 basis points.

<table><tr><td>exch rate</td><td>1.5</td><td>$/£</td><td></td><td></td></tr><tr><td>spread</td><td>0.443093</td><td></td><td></td><td></td></tr><tr><td>swap rate</td><td>0.053449</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td>\$150 floating</td><td>spd added</td></tr><tr><td></td><td>fwd rate</td><td>disc fact</td><td></td><td></td></tr><tr><td>1</td><td>0.03</td><td>0.970874</td><td>4.5</td><td>4.943093</td></tr><tr><td>2</td><td>0.05</td><td>0.924642</td><td>7.5</td><td>7.943093</td></tr><tr><td>3</td><td>0.06</td><td>0.872303</td><td>9</td><td>9.443093</td></tr><tr><td>4</td><td>0.065</td><td>0.819064</td><td>9.75</td><td>10.19309</td></tr><tr><td>5</td><td>0.0675</td><td>0.767273</td><td>160.125</td><td>160.5681</td></tr><tr><td></td><td></td><td></td><td>150</td><td>151.9293</td></tr></table>

Table 6.9: Domestic Leg

<table><tr><td></td><td></td><td></td><td></td><td>100 floating</td><td></td><td></td><td></td></tr><tr><td></td><td>basis</td><td>fwd rate</td><td>disc fact</td><td></td><td></td><td>fx curve</td><td></td></tr><tr><td>1</td><td>0.0001</td><td>0.0301</td><td>0.97078</td><td>3.01</td><td>1</td><td>1.5</td><td>4.515</td></tr><tr><td>2</td><td>0.0002</td><td>0.0502</td><td>0.924376</td><td>5.02</td><td>2</td><td>1.5054</td><td>7.557108</td></tr><tr><td>3</td><td>0.0003</td><td>0.0603</td><td>0.871806</td><td>6.03</td><td>3</td><td>1.5072</td><td>9.088416</td></tr><tr><td>4</td><td>0.0004</td><td>0.0654</td><td>0.81829</td><td>6.54</td><td>4</td><td>1.5165</td><td>9.91791</td></tr><tr><td>5</td><td>0.0005</td><td>0.068</td><td>0.766189</td><td>106.8</td><td>5</td><td>1.5194</td><td>162.2719</td></tr><tr><td></td><td></td><td></td><td></td><td>100</td><td></td><td></td><td>151.9293</td></tr></table>

Table 6.10: Foreign Leg

# 6.5 Quanto Effect

The most prominent feature in FX derivatives is the "quanto" effect. The quanto effect refers to the risk in exchanging one currency for another. It is caused by interest rate risks in IRP (introduced earlier) and the exchange rate risk.

Due to this effect, there are two option contracts, one of which is exposed to the quanto effect and the other is not.

# 6.5.1 Compo Option

The composite (compo) option is designed for investors who:

- want to execute an option strategy on a foreign stock
- want to fix the strike in their own currency
- get the payout of the option in their own currency

The compo option is exposed to quanto effect. One of the reasons that a composite option is traded is to protect the value in their own currency on a foreign investment.

# Example

A US investor owns GSK stock whose price is £13 per share. The exchange rate is \$2 per pound which is worth \$26 per share. To protect this holding, he buys 1Y ATM compo put on GSK at strike = 26.

After 1Y, stock goes down to £11 and the exchange rate also goes down from \$2 per pound to \$1.5 per pound. Then, the dollar value of GSK has gone down from $26 to $16.5.

Because the strike price of the repo option is fixed in dollars, the option will pay the investor exactly the difference between  \$26 and\$ 16.5. As a result, the repo option totally offsets the loss of the stock.

If a (London) trader sells the compo put on GSK, he will want to hedge himself. Unfortunately, the trader can only execute his delta on the local stock, which is not quoted in the compo currency. When delta hedging, he will still have an FX risk, as the payout on the compo option will be in the compo currency and his delta hedge is in the local currency of the underlying stock.

Suppose for the argument's sake that he hedges the combo option on a delta = 1, he makes £2, which is worth \$3 at maturity. As the dollar value of GSK goes from $26 to $16.5, the trader loses \$9.5 on the combo option and makes 3 on his delta hedge.

# Just delta hedging is clearly not enough!

The trader would need to buy dollars on the notional of his delta hedge to be fully immune to all the risks of the compo option on GSK.

As an FX hedge, the trader would sell £13 to receive 26 for every GSK share he shorted as part of his delta at inception of the trade.

At maturity, the trader can buy back these £13 for \$19.5. Then, total profit on his FX hedge = $6.5 → $6.5 + \$3 = 9.5 = the loss on the compo option.

In summary, to hedge the FX exposure on a compo option, one just needs to realize that: if one sells/buys stocks as a delta hedge, then one needs to sell/buy the currency of the stock and buy/sell the compo currency in the same notional as the delta hedge.

Obviously, the FX hedge is not static and should be adjusted along with any delta adjustments. In other words, to be perfectly hedged against both stock movements and FX movements, one need to have at any time the same notional of FX hedge as delta hedge.

Additionally, one also needs to put an FX hedge in place for the premium paid for the compo option at inception of the trade. For the call/put option, the FX hedge on the premium paid works in the opposite/same direction to the FX hedge on the notional of the delta hedge.

The reason a trader wants to hedge the FX exposure on the premium is that in order to buy the compo option in the compo currency the trader would first need to sell the local currency to buy the compo currency. This effectively gives him an FX position which still needs to be hedged.

Counterintuitively, no FX hedge needs to be executed on the premium if the trader sells a compo option, as the trader receives the premium in the compo currency and the model used to determine the price and the delta of the option assumes financing in the compo currency.

To sum up (and extend the logic to other positions of the compo option):

1. Long Compo Call

FX hedge on delta notional  $->$  Sell local currency to buy compo currency
FX hedge on premium paid  $->$  Buy local currency to sell compo currency

2. Short Compo Call

- FX hedge on delta notional  $->$  Buy local currency to sell compo currency
FX hedge on premium paid  $->$  None

3. Long Compo Put

FX hedge on delta notional  $\rightarrow$  Buy local currency to sell compo currency
FX hedge on premium paid  $->$  Buy local currency to sell compo currency

4. Short Compo Put

FX hedge on delta notional  $\rightarrow$  Sell local currency to buy compo currency
FX hedge on premium paid  $->$  None

# 6.5.2 Quanto Option

The quanto option is designed for investors who:

- want to execute an option strategy on a foreign stock
- are only interested in the  $\%$  return of that strategy
- want to get paid this return in their own currency

The quanto option is not exposed to quanto effect.

The FX rate will be fixed to the prevailing FX rate at inception of the option transaction and the payout of the quanto option will be this FX rate times the payout of the regular option.

# Example:

A US investor is long 1Y call on British Petroleum (in £). He wants to get his return in dollars.

Assume the price of BP is £5 per share. The exchange rate is 2 per pound. Assume in one year, BP stock price = £5.5 (i.e. 10\% return).

The payout of the option at maturity of the quanto ATM call option is 1 regardless of the change in the exchange rate. BP's share has increased by 10\% -> US investor expects a 10\% return on his USD investment.

The main theme of a quanto option is the difference in forward compared to a regular option.

Hedging FX exposure on the quanto option might not be very intuitive but is very simple in practice.

This is because the FX hedge is captured by the delta hedge, which in turn is because the option notional in the local currency keeps changing with the changing FX.

Namely, the notional of the quanto option is agreed in the quanto currency. Therefore the notional in the local currency changes whenever the FX changes.

This implies that if the quanto currency halves in value w.r.t the local currency, the notional of the quanto option in the local currency halves, and therefore the trader needs to halve his delta hedge even though the stock price might not have moved.

A trader sells an ATM quanto call on BP at a strike of £5. The notional is \$10 million. The delta of the ATM option is roughly 0.5. Assume that the current exchange rate is \$2 per pound.

For the delta hedge, the trader would need to buy £2.5 million worth of BP stock.

Suppose that exchange rate raises against dollar to 4 per pound. Even though the stock price did not change, the trader would need to change his delta hedge to be long £1.25 million of BP stock.

There is no need for a trader to put on FX hedge in place for a quanto option. This is because the equation prescribes financing in the local currency.

If the trader buys a quanto option, he effectively ensures financing in the local currency because he would first need to sell the local currency to buy the quanto currency in order to pay for the quanto option.

Therefore the trader will only need to do an FX hedge if he sells a quanto option, which is selling the quanto currency and buying the local currency on the premium amount. This ensures financing in the local currency.

# 6.6 FX Options

An exchange rate option (FX option) is an option to buy (i.e. call) or sell (i.e. put) a chosen foreign currency at a specified domestic price (i.e. strike). It is best to view an exchange rate as the domestic price of a foreign currency. That is, it is best to view foreign currencies as commodities and exchange rates are merely prices of these currency commodities.

# 6.6.1 Option Quotes

The typical quotes of FX options are:

- ATM (at-the-money)
- RR (risk reversal):  $x$  Delta Call -  $x$  Delta Put
- BF (butterfly):  $(x\text{Delta Call} + x\text{Delta Put}) \div 2 - \text{ATM}$ over


10 delta

25 delta
- ATM (50 delta)
75 delta
90 delta

First of all, from BF and RR, we can solve for individual option prices:

$$

\begin{array}{l} \mathrm {C a l l} = \mathrm {B F} + \mathrm {A T M} + \frac {1}{2} \mathrm {R R} \\ \mathrm {P u t} = \mathrm {B F} + \mathrm {A T M} - \frac {1}{2} \mathrm {R R} \\ \end{array}

$$

Note that RR provides a unique way to identify the strike price of the call and put in RR. The call delta:

$$

\begin{array}{l} \Delta_ {C} = \frac {\partial C}{\partial S} = N (d _ {1}) \\ \Delta_ {P} = \frac {\partial P}{\partial S} = - N (- d _ {1}) \\ \end{array}

$$

Hence,

$$

\Delta_ {C} + \Delta_ {P} = 1

$$ which implies that put and call of the same delta can reproduce a forward contract (which has  $\Delta = 1$ ) and hence they must have the same strike.

Recall put-call parity:

$$
C (t) - P (t) = S (t) - e ^ {- r (T - t)} K
$$ which then can solve for the strike.


See Excel for an example

# 6.6.2 International Put/Call Parity (Equivalence)

In addition to PPP and IRP, the option prices of the two nations must obey a special parity - international put-call parity. That is, the domestic call is equivalent to a foreign put and vice versa. The following diagram (Figure 6.7) visualizes the parity.

Take the Japanese yen as an example. Assume that at maturity, the exchange rate is 1:90 (i.e. \$0.0111 per yen). Also assume a domestic call option struck at \$0.01. Then the intrinsic value of the option is 0.0011 (S - K): exercise: pay 1, get 100 yen \to sell 100 yen, get 1.1111 \rightarrow profit 0.1111

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/fc9ac876f2abead5301b606f437d87f715ca4f404304b6839b0dafcb6993169b.jpg)
Figure 6.7: International Put/Call Parity

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/e9bdb17daf0883272154af653074108d629e915921421213ad554f6636baee47.jpg)


At the same time, a (foreign) put option in Japan has a strike price at ¥100. Since the exchange rate is ¥90 per dollar), the intrinsic value is ¥10 (K-S): exercise: sell 1, get 100 yen \to sell 100 yen, get 1.1111 \rightarrow profit 0.1111


(or sell \$1, get 100 yen → sell 90 yen, get \$1 → profit 10 yen)

Given that in two countries, both options have exactly the same exercise value: 0.0011 (or ¥10), their current prices must be also exactly the same.

# 6.6.3 Volatility Smile

The standard FX option (option on exchange rates) provide the volatility smile. From Chen, Hsieh, and Huang...

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/162c5dc14db1b9fde06dbfff8982d3c2753dc1dad629a89289814397901e884a.jpg)
Figure 6.8: FX Volatility Smile

# 6.6.4 Exotic FX Options

Different from equities, there are a number of exotic FX options traded in the marketplace. The typical ones are: barrier, digital, lookback and Asian:

- barrier option: When the price reaches a specific threshold, then this kind of option starts or stops to exist.
- digital option: The buyer only receives a payoff if the underlying fx rate is above or below a specific price level at a previously agreed time.
- Asian option: The return is calculated based on the average price of the underlying fx rate during the whole lifetime of the option.
- lookback option: Also known as a hindsight option, a lookback option allows the holder the advantage of knowing history when determining when to exercise their option.

# 6.7 FX Math

In this section, I briefly demonstrate how financial math can go hand-in-hand with the analyses in the previous sections. In particular, the change of measure that is essential to financial math is heavily employed here in the world of FX.

# 6.7.1 Quanto

Consider the interest rate parity theorem and a simple Black-Scholes type model:

$$

\frac {d Y (t)}{Y (t)} = \left(r (t) - r ^ {*} (t)\right) d t + \sigma d \hat {W} _ {Y}

$$

$$

\frac {d P (t , T)}{P (t , T)} = r (t) d t + v _ {P} (t, T) d \hat {W} _ {P} \tag {6.1}

$$

$$

\frac {d P ^ {*} (t , T)}{P ^ {*} (t , T)} = r ^ {*} (t) d t + v _ {P ^ {*}} ^ {*} (t, T) d \hat {W} _ {P ^ {*}} ^ {*}

$$ and  $d\hat{W}_i d\hat{W}_j = \rho_{ij} dt$  and  $i, j = Y, r, r^*$ . We further assume that:

$$
P ^ {*} (t, T) = \mu^ {*} (t) d t + v _ {P ^ {*}} ^ {*} (t, T) d \hat {W} _ {P ^ {*}} \tag {6.2}
$$ which is the domestic measure of the foreign bond price. In other words, the dollar measure of pound (still in pound) is different from the pound measure of pound.


Now, we can define the dollar price of the foreign bond is:

$$

Q (t, T) = Y (t) P ^ {*} (t, T)

$$

Then, the return of the this asset must be the domestic risk-free rate  $r$ , using Ito's lemma:

$$

\begin{array}{l} \frac {d Q}{Q} = \frac {1}{Q} \left\{\frac {\partial Q}{\partial Y} d Y + \frac {\partial Q}{\partial P ^ {*}} d P ^ {*} + \frac {\partial^ {2} Q}{\partial Y \partial P ^ {*}} (d Y) (d P ^ {*}) + o (d t) \right\} \\ = \frac {1}{Q} \left\{P ^ {*} \left[ (r - r ^ {*}) Y d t + \sigma Y d W _ {Y} \right] + Y \left[ \mu^ {*} P ^ {*} d t + v _ {P ^ {*}} ^ {*} P ^ {*} d W _ {P ^ {*}} \right] + Y P ^ {*} \rho_ {Y, P ^ {*}} \sigma v _ {P ^ {*}} ^ {*} \right\} \\ = \left(r + \mu^ {*} - r ^ {*} + \rho_ {Y, P ^ {*}} \sigma v _ {P ^ {*}} ^ {*}\right) d t + \left\{\sigma d W _ {Y} + v _ {P ^ {*}} ^ {*} d W _ {P ^ {*}} \right\} \\ = r d t + v _ {Q} (t, T) d \hat {W} _ {Q} \\ \end{array}

$$

Given that  $Q$  must earn the domestic risk-free rate (since it is a domestic asset), we conclude that

$$

\mu^ {*} = r ^ {*} - \rho_ {Y, P ^ {*}} \sigma v _ {P ^ {*}} ^ {*} \tag {6.3}

$$ and  $v_{Q}^{2}(t,T) = \sigma^{2} + v_{P^{*}}^{*2} + 2\rho_{Y,P^{*}}\sigma v_{P^{*}}^{*}$ . Hence,

$$
\rho_ {Y, P ^ {*}} \sigma v _ {P ^ {*}} ^ {*}
$$ is known as the "quanto" effect. What this says is that the domestic measure of the foreign risk-free rate must be adjusted by the quanto effect.


We can easily see that if any of the following is 0, then  $\mu^{*} = r^{*}$ : correlation is 0

- foreign risk-free rate is deterministic (i.e.  $v_{P^*}^* = 0$ )
- exchange rate is deterministic (i.e.  $\sigma = 0$ )

Combining equations (6.1), (6.2), and (6.3), we arrive at the famous change of measure equation between two countries:

$$

\widehat {d W} _ {P ^ {*}} ^ {*} = \widehat {d W} _ {P ^ {*}} - \rho_ {Y P ^ {*}} \sigma d t \tag {6.4}

$$ the difference between domestic and foreign measures is the quanto.


# 6.7.2 Compo and Quanto Options

The IRP theorem restricts the drift of the exchange rate to be the difference between the two rates. (Note alternatively we can view the foreign interest rate as a "dividend" that takes away the return from investing in the domestic risk-free bond.)

We also modify the Black-Scholes option formula as follows:

$$

C _ {t} = P _ {t, T} ^ {*} Y _ {t} N (d _ {1}) - P _ {t, T} K N (d _ {2})

$$ where


$$ d _ {1} = \frac {\ln Y _ {t} - \ln K - \ln P _ {t , T} + \ln P _ {t , T} ^ {*} + v ^ {2} / 2}{\sqrt {v}}
$$

$$ d _ {2} = d _ {1} - v \sqrt {T - t}
$$

$$ v ^ {2} = \mathbb {V} [ \ln Y _ {T} - \ln D _ {t, T} + \ln D _ {t, T} ^ {*} ]
$$

$$
D _ {t, T} = \exp \left\{- \int_ {t} ^ {T} r _ {u} d u \right\}
$$

$$
D _ {t, T} ^ {*} = \exp \left\{- \int_ {t} ^ {T} r _ {u} ^ {*} d u \right\}
$$

The quanto effect exists when the exchange rate and the two interest rates are all random and correlated. To see this more clearly, we use the Nikkei option as an example.

Define a "variable rate" call option that pays  $\max \{S_T^* - K, 0\}$  in yen. Then in dollars, it is  $Y_T \max \{S_T^* - K, 0\}$  at time  $T$ . Now we can simply discount it back at the domestic rate  $r$ :

$$
\begin{array}{l} C _ {t} ^ {*} = e ^ {- r (T - t)} \hat {\mathbb {E}} _ {t} \left[ Y _ {T} \max  \left\{S _ {T} ^ {*} - K, 0 \right\} \right] \\ = e ^ {- r (T - t)} e ^ {(r - r ^ {*}) (T - t)} Y _ {t} \hat {\mathbb {E}} _ {t} ^ {(Y)} [ \max  \{S _ {T} ^ {*} - K, 0 \} ] \\ = e ^ {- r ^ {*} (T - t)} Y _ {t} \left[ e ^ {r ^ {*} (T - t)} S _ {t} ^ {*} N \left(d _ {+}\right) - K N \left(d _ {-}\right) \right] \tag {6.5} \\ = Y _ {t} \left[ S _ {t} ^ {*} N \left(d _ {+}\right) - e ^ {- r ^ {*} (T - t)} K N \left(d _ {-}\right) \right] \\ \end{array}
$$ where


$$ d _ {\pm} = \frac {\ln S _ {t} ^ {*} - \ln K + (r ^ {*} \pm {} ^ {1} / _ {2} v ^ {*}) (T - t)}{\sqrt {v ^ {*} (T - t)}}
$$ and hence there is no quanto effect in the option price.


Define a "fixed rate" call that pays  $\bar{Y}\max \{S_T^* -K,0\}$ . Then,

$$

\begin{array}{l} \bar {C} _ {t} = e ^ {- r (T - t)} \bar {Y} \hat {\mathbb {E}} _ {t} [ \max  \left\{S _ {T} ^ {*} - K, 0 \right\} ] \quad \left. \right. \quad - r ^ {*} (T - t) \bar {Y} _ {T} \left[ \begin{array}{l l l} \left(r ^ {*} + c \alpha_ {Y} v ^ {*}\right) (T - t) & C _ {*} N (1 _ {t}) & K N (1 _ {t}) \end{array} \right] \tag {6.6} \\ = e ^ {- r ^ {*} (T - t)} \bar {Y} \left[ e ^ {(r ^ {*} + \rho \sigma_ {Y} v ^ {*}) (T - t)} S _ {t} ^ {*} N (d _ {+}) - K N (d _ {-}) \right] \\ \end{array}

$$ where


$$ d _ {\pm} = \frac {\ln S _ {t} ^ {*} - \ln K + (r ^ {*} \pm 1 / 2 v ^ {* 2}) (T - t)}{v ^ {*} \sqrt {T - t}}
$$ and hence the quanto effect exists.


# 6.7.3 International Put/Call Parity

The international put-call equivalence is to stipulate that the domestic call (or put) is equal to the foreign put (or call). Because of the symmetry, we just discuss domestic call here.

A domestic call has a payoff as  $C_T = \max \{Y_T - K, 0\}$  and a foreign put  $C_T^* = \max \left\{\frac{1}{K} - \frac{1}{Y_T}, 0\right\}$  and the two payoffs are equivalent as  $C_T = Y_T K C_T^*$ . Hence it must be true that  $C_t = Y_t K C_t^*$ .

Domestic call is the Black-Scholes result:

$$

C _ {t} = e ^ {- r ^ {*} (T - t)} Y _ {t} N \left(d _ {+}\right) - e ^ {- r (T - t)} K N \left(d _ {-}\right) \tag {6.7}

$$ where


$$ d _ {\pm} = \frac {\ln Y _ {t} - \ln K + (r - r ^ {*} \pm 1 / _ {2} \sigma_ {Y}) (T - t)}{\sigma_ {Y} \sqrt {T - t}}
$$

Foreign put is the Black-Scholes model as well (the notation  $P$  is used for put here only):

$$
P _ {t} ^ {*} = e ^ {- r ^ {*} (T - t)} K ^ {*} N \left(- d _ {-} ^ {*}\right) - e ^ {- r (T - t)} Y _ {t} ^ {*} N \left(- d _ {+} ^ {*}\right) \tag {6.8}
$$ where  $K^{*} = 1 / K$  and  $Y_{t}^{*} = 1 / Y_{t}$  and


$$

\begin{array}{l} d _ {\pm} ^ {*} = \frac {\ln Y _ {t} ^ {*} - \ln K ^ {*} + (r ^ {*} - r \pm 1 / _ {2} \sigma_ {Y}) (T - t)}{\sigma_ {Y} \sqrt {T - t}} \\ = - d _ {\mp} \\ \end{array}

$$ and hence  $C_t = Y_t K P_t^*$  is verified.

But to prove the result, we need the change of measure. Note that the equivalent payoff in foreign currency is  $Y_{T}KC_{T}^{*} = \frac{1}{Y_{T}^{*}} K\max \{K^{*} - Y_{T}^{*},0\}$  and this is a dollar payoff under the foreign measure and needs to take the foreign expectation at the domestic risk-free rate:

$$ e ^ {- r (T - t)} \hat {\mathbb {E}} _ {t} ^ {*} \left[ \frac {1}{Y _ {T} ^ {*}} K \max \{K ^ {*} - Y _ {T} ^ {*}, 0 \} \right] = e ^ {- r (T - t)} \hat {\mathbb {E}} _ {t} ^ {*} \left[ \max \left\{\frac {1}{Y _ {T} ^ {*}} - K, 0 \right\} \right] \qquad (6. 9)
$$

Note that, by Ito's lemma,

$$
\begin{array}{l} \frac {1}{Y _ {T} ^ {*}} = \frac {1}{Y _ {t} ^ {*}} \exp \left\{(r - r ^ {*} + \sigma^ {2}) (T - t) - \int_ {t} ^ {T} \sigma d \hat {W} _ {Y ^ {*}} ^ {*} \right\} \tag {6.10} \\ = Y _ {t} \exp \left\{(r - r ^ {*}) (T - t) + \int_ {t} ^ {T} \sigma d \hat {W} _ {Y ^ {*}} \right\} \\ \end{array}
$$ where  $d\hat{W}_{Y^*} = -d\hat{W}_{Y^*} + \sigma dt$  is the change of measure between two countries (compare with equation (6.4)). Then the result is proved.



---
title: Chapter 23 - Futures, Swaps, and Risk Management
primary_tags:
   - futures contracts
   - interest rate swaps
   - risk management
   - foreign exchange futures
   - stock index futures
secondary_tags:
   - hedging strategies
   - interest rate parity
   - covered interest arbitrage
   - synthetic positions
   - index arbitrage
   - commodity futures
   - currency swaps
   - credit default swaps
   - hedge ratio
   - cross hedging
   - program trading
   - market neutral strategies
   - price value of basis point
   - eurodollar contracts
   - swap pricing
   - storage costs
   - convenience yield
   - seasonal pricing
   - discounted cash flow
aliases:
   - Futures, Swaps, and Risk Management
parent_directory: Part 6 - Options Futures and Other Derivatives
formatted: 2025-12-21 12:00:00 PM
formatter_model: claude-3-5-sonnet-20241022
cli-tool: claude-code
cssclasses: academia
---

# Futures, Swaps, and Risk Management

CHAPTER 22 provided an introduction to the operation of futures markets and the principles of futures pricing. This chapter explores both pricing and risk management in selected futures markets in more depth. Financial futures dominate trading, so we emphasize these contracts.

Hedging refers to techniques that offset particular sources of risk. Hedging activities therefore are more limited and more focused than more ambitious strategies seeking an optimal risk-return profile for an entire portfolio. Because futures contracts are written on specific quantities such as stock index values, foreign exchange rates, commodity prices, and so on, they are ideally suited for these applications. In this chapter we consider several hedging applications, illustrating general principles using a variety of contracts. We also show how hedging strategies can be used to isolate bets on perceived profit opportunities.


We begin with foreign exchange futures, showing how forward exchange rates are determined by interest rate differentials across countries and examining how firms can use futures to manage exchange rate risk. We then move on to stock-index futures, where we focus on program trading and index arbitrage. Next we turn to futures contracts written on fixed-income securities, as well as contracts written directly on interest rates. We also examine commodity futures pricing. Finally, we turn to swaps markets in foreign exchange and fixed-income securities. We will see that swaps can be interpreted as portfolios of forward contracts and valued accordingly.

## 23.1 Foreign Exchange Futures

### The Markets

Exchange rates between currencies vary continually and often substantially. This variability adds risk to international business. A U.S. exporter who sells goods in England, for example, will be paid in British pounds, and the dollar value of those pounds depends on the exchange rate at the time payment is made. This risk can be hedged through currency futures or forward markets. For example, if you know you will receive £100,000 in 90 days, you can sell those pounds forward in the forward market to lock in an exchange rate equal to today's forward price.

The forward market in foreign exchange is fairly informal. It is a network of banks and brokers that allows customers to enter forward contracts to purchase or sell currency in the future at a currently agreed-upon rate of exchange. The bank market in currencies is among the largest in the world, and most large traders with sufficient creditworthiness execute their trades here rather than in futures markets. In forward markets, traders can negotiate to deliver any quantity of currency on any delivery date that is mutually agreeable to both sides of the contract. Moreover, there is no marking to market. Currency forward contracts call for execution only at the maturity date. Participants need to consider counterparty risk, the possibility that a trading partner may not be able to make good on its obligations under the contract if prices move against it. For this reason, traders who participate in forward markets must have solid creditworthiness.

Currency futures, in contrast, trade in formal exchanges such as the Chicago Mercantile Exchange (in its International Monetary Market) or the London International Financial Futures Exchange (LIFFE). Here contracts are standardized by size, and daily marking to market is observed. Moreover, standard clearing arrangements allow traders to enter or reverse positions easily. Margin positions are used to ensure contract performance, which is, in turn, guaranteed by the exchange's clearinghouse, so the identity and creditworthiness of the counterparty to a trade are not a concern.

Figure 23.1 reproduces The Wall Street Journal listing of foreign exchange rates. The listing gives the number of U.S. dollars required to purchase some unit of foreign currency, so-called direct quotes, and then the amount of foreign currency needed to purchase \$1, indirect quotes. By custom, some exchange rates (the British pound or the euro) are typically quoted using direct rates, for example, \$1.3546/£, but most currencies are quoted using indirect rates, for example, ¥111.07/$. The quotes in Figure 23.1 are spot rates (i.e., exchange rates for immediate delivery).

Figure 23.2 presents listings for currency futures contracts. The futures markets employ exclusively direct quotes. Notice that the contracts specify the size of each contract and the maturity date (there are only four maturity dates in each calendar year).

### Interest Rate Parity

As is true of stocks and stock futures, there is a spot-futures exchange rate relationship that will prevail in well-functioning markets. Should this so-called interest rate parity relationship be violated, arbitrageurs will be able to make risk-free profits in foreign exchange markets with zero net investment. Their actions will force futures and spot exchange rates back into alignment. Another term for interest rate parity is the covered interest arbitrage relationship.

We illustrate interest rate parity using two currencies, the U.S. dollar and the British (U.K.) pound. Call  $E_0$  the current direct exchange rate between the two currencies, that is,  $E_0$  dollars are required to purchase one pound.  $F_0$ , the forward price, is the number of dollars agreed to today for purchase of one pound at time  $T$ . Call the risk-free rates in the United States and United Kingdom  $r_{\mathrm{US}}$  and  $r_{\mathrm{UK}}$ , respectively.

The interest rate parity theorem states that the proper relationship between  $E_0$  and  $F_0$  is

$$
F_0 = E_0 \left(\frac{1 + r_{\mathrm{US}}}{1 + r_{\mathrm{UK}}}\right)^T \tag{23.1}
$$

For example, if $r_{\mathrm{US}} = 0.04$ and $r_{\mathrm{UK}} = 0.01$ annually, while $E_0 = \$1.30$ per pound, then the proper futures price for a 1-year contract would be

Currencies U.S.-dollar foreign-exchange rates in late New York trading

<table><tr><td>Country/curtery</td><td>in US$</td><td>Fiji per US$</td><td>US$ vs. YTD chg (\%)</td></tr><tr><td>Americas</td><td></td><td></td><td></td></tr><tr><td>Argentina peso</td><td>0.0101</td><td>98.7032</td><td>17.4</td></tr><tr><td>Brazil real</td><td>0.1864</td><td>5.3648</td><td>3.3</td></tr><tr><td>Canada dollar</td><td>0.7905</td><td>1.2651</td><td>-0.7</td></tr><tr><td>Chile peso</td><td>0.001245</td><td>803.26</td><td>13.1</td></tr><tr><td>Colombia peso</td><td>0.000264</td><td>3790.00</td><td>10.8</td></tr><tr><td>Ecuador U.S. dollar</td><td>1</td><td>1</td><td>unch</td></tr><tr><td>Mexico peso</td><td>0.0489</td><td>20.4512</td><td>2.9</td></tr><tr><td>Uruguay peso</td><td>0.02328</td><td>42.9550</td><td>1.4</td></tr><tr><td>Asia-Pacific</td><td></td><td></td><td></td></tr><tr><td>Australian dollar</td><td>0.7264</td><td>1.3767</td><td>5.9</td></tr><tr><td>China yuan</td><td>0.1551</td><td>6.4467</td><td>-1.3</td></tr><tr><td>Hong Kong dollar</td><td>0.1284</td><td>7.7852</td><td>0.4</td></tr><tr><td>India rupee</td><td>0.01349</td><td>74.150</td><td>1.5</td></tr><tr><td>Indonesia rupiah</td><td>0.0000699</td><td>14308</td><td>1.8</td></tr><tr><td>Japan yen</td><td>0.009003</td><td>111.07</td><td>7.5</td></tr><tr><td>Kazakhstan tense</td><td>0.002344</td><td>426.62</td><td>1.2</td></tr><tr><td>Macau pataca</td><td>0.1246</td><td>8.0240</td><td>0.4</td></tr><tr><td>Malaysia ringgit</td><td>0.2393</td><td>4.1795</td><td>3.9</td></tr><tr><td>New Zealand dollar</td><td>0.6940</td><td>1.4409</td><td>3.5</td></tr><tr><td>Pakistan rupee</td><td>0.00586</td><td>170.750</td><td>6.5</td></tr><tr><td>Philippines peso</td><td>0.0197</td><td>50.643</td><td>5.5</td></tr><tr><td>Singapore dollar</td><td>0.7370</td><td>1.3568</td><td>2.7</td></tr><tr><td>South Korea won</td><td>0.0008470</td><td>1180.62</td><td>8.7</td></tr><tr><td>Sri Lanka rupee</td><td>0.0050073</td><td>199.71</td><td>7.8</td></tr><tr><td>Taiwan dollar</td><td>0.03601</td><td>27.769</td><td>-1.1</td></tr><tr><td>Thailand baht</td><td>0.02973</td><td>33.640</td><td>12.0</td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td>WSJ Dollar Index</td></tr><tr><td></td><td></td><td></td><td>88.43 -0.25 -0.29 4.04</td></tr></table>

Figure 23.1 Spot exchange rates

Source: The Wall Street Journal online, October 2, 2021.

$$
\$1.30 \left(\frac{1.04}{1.01}\right) = \$1.3386 \text{per pound}
$$

Consider the intuition behind Equation 23.1. If  $r_{\mathrm{US}}$  is greater than  $r_{\mathrm{UK}}$ , money invested in the United States will grow at a faster rate than money invested in the United Kingdom. Why then don't all investors choose to invest their money in the United States? One important reason is that the dollar may be depreciating relative to the pound. Although dollar investments in the United States grow faster than pound investments in the United Kingdom, each dollar may be worth fewer pounds in the forward market than in the spot market. Such a forward discount can offset the advantage of the higher U.S. interest rate.

How does a depreciating dollar show up in Equation 23.1? If the dollar is depreciating, more dollars will be required to purchase each pound, and the forward exchange rate  $F_{0}$  (in dollars per pound) will be greater than  $E_{0}$ , the current exchange rate. This is exactly

<table><tr><td rowspan="2"></td><td rowspan="2">Open</td><td colspan="3">Contract</td><td rowspan="2">Settle</td><td rowspan="2">Chg</td><td rowspan="2">Open interest</td></tr><tr><td>High</td><td>hilo</td><td>low</td></tr><tr><td colspan="8">Japanese Yen (CME)-¥12,500,000; $ per 100¥</td></tr><tr><td>Oct</td><td>0.8976</td><td>0.9017</td><td>0.8971</td><td>0.9007</td><td>0.0028</td><td>252</td><td></td></tr><tr><td>Dec</td><td>0.8991</td><td>0.9022</td><td>0.8974</td><td>0.9010</td><td>0.0029</td><td>231,867</td><td></td></tr><tr><td colspan="8">Canadian Dollar (CME)-CAD 100,000; $ per CAD</td></tr><tr><td>Oct</td><td>0.7867</td><td>0.7919</td><td>0.7851</td><td>0.7914</td><td>0.0014</td><td>510</td><td></td></tr><tr><td>Dec</td><td>0.7885</td><td>0.7919</td><td>0.7849</td><td>0.7913</td><td>0.0014</td><td>117,944</td><td></td></tr><tr><td colspan="8">British Pound (CME)-€62,500; $ per £</td></tr><tr><td>Oct</td><td>1.3445</td><td>1.3575</td><td>1.3435</td><td>1.3554</td><td>0.0079</td><td>1,135</td><td></td></tr><tr><td>Dec</td><td>1.3471</td><td>1.3576</td><td>1.3434</td><td>1.3554</td><td>0.0079</td><td>184,105</td><td></td></tr><tr><td colspan="8">Swiss Franc (CME)-CHF125,000; $ per CHF</td></tr><tr><td>Dec</td><td>1.0752</td><td>1.0792</td><td>1.0728</td><td>1.0769</td><td>0.0027</td><td>58,791</td><td></td></tr><tr><td>March&#x27;22</td><td>1.0800</td><td>1.0818</td><td>1.0756</td><td>1.0796</td><td>0.0027</td><td>98</td><td></td></tr><tr><td colspan="8">Australian Dollar (CME)-AUD100,000; $ per AUD</td></tr><tr><td>Oct</td><td>0.7230</td><td>0.7277</td><td>0.7193</td><td>0.7267</td><td>0.0034</td><td>661</td><td></td></tr><tr><td>Dec</td><td>0.7229</td><td>0.7279</td><td>0.7194</td><td>0.7268</td><td>0.0034</td><td>189,090</td><td></td></tr><tr><td colspan="8">Mexican Peso (CME)-MXN500,000; $ per MXN</td></tr><tr><td>Oct</td><td>0.04880</td><td>0.04884</td><td>0.04818</td><td>0.04885</td><td>0.00047</td><td>19</td><td></td></tr><tr><td>Dec</td><td>0.04793</td><td>0.04848</td><td>0.04775</td><td>0.04845</td><td>0.00046</td><td>177,625</td><td></td></tr><tr><td colspan="8">Euro (CME)-€125,000; $ per €</td></tr><tr><td>Oct</td><td>1.1585</td><td>1.1610</td><td>1.1567</td><td>1.1601</td><td>0.0013</td><td>1,185</td><td></td></tr><tr><td>Dec</td><td>1.1597</td><td>1.1623</td><td>1.1578</td><td>1.1613</td><td>0.0013</td><td>669,204</td><td></td></tr></table> what Equation 23.1 tells us: When  $r_{\mathrm{US}}$  is higher than  $r_{\mathrm{UK}}$ ,  $F_0$  must be greater than  $E_0$ . The forward discount of the dollar embodied in the ratio of  $F_0$  to  $E_0$  exactly compensates for the difference in interest rates in the two countries. Of course, the argument also works in reverse: If  $r_{\mathrm{US}}$  is less than  $r_{\mathrm{UK}}$ , then  $F_0$  is less than  $E_0$ .

Figure 23.2 Foreign exchange futures

Source: The Wall Street Journal, October 2, 2021.


### Example 23.1 Covered Interest Arbitrage

What if the interest rate parity relationship were violated? For example, suppose the futures price is \$1.32/£ instead of \$1.3386/£. You could adopt the following strategy. Let E₁ denote the exchange rate ($/£) that will prevail in one year. E₁ is, of course, a random variable from the perspective of today's investors.

<table><tr><td>Action</td><td>Initial Cash Flow ($)</td><td>CF in 1 Year ($)</td></tr><tr><td>1. Borrow 1 U.K. pound in London. Convert to dollars. Repay £1.01 at year-end.</td><td>1.30</td><td>-£1(£1.01)</td></tr><tr><td>2. Lend \$1.30 in the United States at the U.S. interest rate.</td><td>-1.30</td><td>\$1.30(1.04)</td></tr><tr><td>3. Enter a contract to purchase £1.01 at a (futures) price of F0 = $1.32/£.</td><td>0</td><td>£1.01(E1 - $1.32/£)</td></tr><tr><td>Total</td><td>0</td><td>0.0188</td></tr></table>

In step 1, you exchange the one pound borrowed in the United Kingdom for 1.30 at the current exchange rate. After one year you must repay the pound borrowed with interest. Because the loan is made in the United Kingdom at the U.K. interest rate, you would repay £1.01, which would be worth E1(1.01) dollars. The U.S. loan in step 2 is made at the U.S.

interest rate of  $4 \%$ The futures position in step 3 results in receipt of £1.01, for which you would pay \$1.32 each, and then convert into dollars at exchange rate  $E _ {1}$ .

Note that the exchange rate risk here is exactly offset between the pound obligation in step 1 and the futures position in step 3. The profit from the strategy is therefore risk-free and requires no net investment.

### To generalize the strategy in Example 23.1:

<table><tr><td>Action</td><td>Initial CF ($)</td><td>CF in 1 Year ($)</td></tr><tr><td>1. Borrow 1 U.K. pound in London. Convert to dollars.</td><td>$E0</td><td>-$E1(1 + rUK)</td></tr><tr><td>2. Use proceeds of borrowing in London to lend in the U.S.</td><td>-$E0</td><td>$E0(1 + rUS)</td></tr><tr><td>3. Enter (1 + rUK) futures positions to purchase 1 pound for F0 dollars.</td><td>0</td><td>(1 + rUK)(E1 - F0)</td></tr><tr><td>Total</td><td>0</td><td>E0(1 + rUS) - F0(1 + rUK)</td></tr></table>

The net proceeds to the arbitrage portfolio are risk-free and given by  $E_0(1 + r_{\mathrm{US}}) - F_0(1 + r_{\mathrm{UK}})$ . If this value is positive, borrow in the United Kingdom, lend in the United States, and enter a long futures position to eliminate foreign exchange risk. If the value is negative, borrow in the United States, lend in the United Kingdom, and take a short position in pound futures. When prices preclude arbitrage opportunities, the expression must equal zero. This no-arbitrage condition implies that

$$
F _ {0} = \frac {1 + r _ {\mathrm {U S}}}{1 + r _ {\mathrm {U K}}} E _ {0} \tag {23.2}
$$ which is the interest rate parity theorem for a 1-year horizon.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/1ac8173a2458de0e9bffd20a65a0d4b968f7f569ccf827acdf126b35963470c6.jpg)

### Concept Check 23.1

What would be the arbitrage strategy and associated profits in Example 23.1 if the initial futures price were $F_0 = \$1.35$/pound?

### Example 23.2 Covered Interest Arbitrage

Let's continue our earlier discussion for the dollar-pound exchange rate. The interest rate in the U.S. is assumed to be 4\% and the U.K. interest rate is 1\%. The spot exchange rate is E_0 = $1.30/ This implies the following pattern for forward exchange rates of various maturities:

<table><tr><td>Time horizon, T</td><td>Forward exchange rate = E0(1 + rUS/1 + rUK)T</td></tr><tr><td>1</td><td>$1.30(1.04/1.01)1 = $1.3386/£</td></tr><tr><td>2</td><td>$1.30(1.04/1.01)2 = $1.3784/£</td></tr><tr><td>3</td><td>$1.30(1.04/1.01)3 = $1.4193/£</td></tr></table>

We see that the dollar sells at a progressively steeper forward discount (it takes more and more dollars to buy one pound) as the maturity of the contract extends. This discount exactly offsets the higher rate at which dollar investments grow compared to pound investments.

### Direct versus Indirect Quotes

The exchange rate in Examples 23.1 and 23.2 is expressed as dollars per pound. This is an example of a direct exchange rate quote. The euro-dollar exchange rate is also typically expressed as a direct quote. In contrast, exchange rates for other currencies such as the Japanese yen or Swiss franc are typically expressed as indirect quotes, that is, as units of foreign currency per dollar, for example, 111 yen per dollar. For currencies expressed as indirect quotes, depreciation of the dollar would result in a decrease in the quoted exchange rate (1 buys fewer yen); in contrast, dollar depreciation versus the pound would show up as a higher exchange rate (more dollars are required to buy £1). When the exchange rate is quoted as foreign currency per dollar, the domestic and foreign exchange rates in Equation 23.2 must be switched: In this case, the equation becomes

$$
F_0 (\text{foreign currency/\$}) = \frac{1 + r_{\text{foreign}}}{1 + r_{\mathrm{US}}} \times E_0 (\text{foreign currency/\$})
$$

If the interest rate in the U.S. is higher than in Japan, the dollar will sell in the forward market at a lower price (will buy fewer yen) than in the spot market.

### Using Futures to Manage Exchange Rate Risk

Consider a U.S. firm that exports most of its product to Great Britain. The firm is vulnerable to fluctuations in the dollar-pound exchange rate for several reasons. First, the dollar value of its pound-denominated sales will fluctuate with the exchange rate. Second, the pound price that the firm can charge its customers in the United Kingdom will itself be affected by the exchange rate. For example, if the pound depreciates by  $10\%$ , the firm would need to increase the pound price of its goods by  $10\%$  in order to maintain the dollar-equivalent price. However, the firm might not be able to raise the price by  $10\%$  if it faces competition from British producers or if it believes the higher price would reduce demand for its product.

To offset its foreign exchange exposure, the firm might engage in transactions that bring it profits when the pound depreciates. The lost profits from business operations resulting from a depreciation will then be offset by gains on its financial transactions. For example, if the firm enters a futures contract to deliver pounds for a given number of dollars, then if the pound depreciates, the futures position will yield a profit.

Suppose the futures price is currently  \$1.40 per pound for delivery in three months. If the firm enters a futures contract with a futures price of \$1.40 per pound and the exchange rate in three months is \$1.30 per pound, then the profit to the short position is  $F_{0} - F_{T} =$ 1.40 - $1.30 = $.10 per pound.

How many pounds should be sold in the futures market to most fully offset its exposure? Suppose the dollar value of profits in the next quarter will fall by \$200,000 for every $.10 depreciation of the pound. To hedge, we need an equal but opposite exposure: in this case, a futures position that provides 200,000 extra profit for every

 .10 that the pound depreciates. Therefore, we need a futures position to deliver 2,000,000. As we have just seen, the profit per pound on the futures contract equals the difference in the current futures price and the ultimate exchange rate; therefore, the foreign exchange profits resulting from a  .10 depreciation^{1} will equal  .10 \times 2,000,000 = \ {200},{000}  .

The proper hedge position in pound futures is independent of the actual depreciation in the pound as long as the relationship between profits and exchange rates is approximately linear. For example, if the pound depreciates by only half as much, $.05, the firm would lose only \$100,000 in operating profits. The futures position would also return half the profits: $.05 × 2,000,000 = $100,000, again just offsetting the operating exposure. If the pound appreciates, the hedge position still (unfortunately in this case) offsets the operating exposure. If the pound appreciates by $.05, the firm might gain \$100,000 from the enhanced value of the pound; however, it will lose that amount on its obligation to deliver the pounds for the original futures price.

In general, we can think of the hedge ratio as the number of hedging vehicles (e.g., futures contracts) one would establish to offset the risk of a particular unprotected position. The hedge ratio,  $H$ , in this example is

$$
\begin{array}{l} H = \frac{\text{Change in value of unprotected position for a given change in exchange rate}}{\text{Profit derived from one futures position for the same change in exchange rate}} \\ = \frac{\$200,000 \text{ per } \$0.10 \text{ change in } \$/£ \text{ exchange rate}}{\$0.10 \text{ profit per pound delivered per } \$0.10 \text{ change in } \$/£ \text{ exchange rate}} \\ = £2,000,000 \text{ to be delivered} \\ \end{array}
$$

Because each pound-futures contract on the Chicago Mercantile Exchange calls for delivery of 62,500 pounds, you would sell 2,000,000/62,500 per contract = 32 contracts.

One interpretation of the hedge ratio is as a ratio of sensitivities to the underlying source of uncertainty. The sensitivity of operating profits is 200,000 per swing of .10 in the exchange rate. The sensitivity of futures profits is .10 per pound to be delivered per swing of .10 in the exchange rate. Therefore, the hedge ratio is 200,000/.10 = 2,000,000 pounds.

We could just as easily have defined the hedge ratio in terms of futures contracts. Because each contract calls for delivery of 62,500 pounds (see Figure 23.2), the profit on each contract per swing of  $.10$  in the exchange rate is  \$6,250. Therefore, the hedge ratio defined in units of futures contracts is\$ 200,000 / 6,250 = 32 contracts, as we found above.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/d1e4d0c8f6314854aad6bf47206fd5e76b16778f69b4f214c7cd1105a230feb2.jpg)

### Concept Check 23.2

Suppose a U.S. importer is harmed when the dollar depreciates. Specifically, suppose that its profits decrease by  \$200,000 for every$  .05 rise in the dollar/pound exchange rate. How many contracts should the firm enter? Should it take the long side or the short side of the contracts?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/9364e73d07cebdb21a0662832b08b7ad6421ed4ce5df955a612a0d27d7667301.jpg)
Figure 23.3 Profits as a function of the exchange rate

Given the sensitivity of the unhedged position to changes in the exchange rate, calculating the risk-minimizing hedge position is easy. Estimating that sensitivity is much harder. For an exporting firm, for example, a naïve view might focus only on the expected pound-denominated revenue, and then contract to deliver that number of pounds in the futures or forward market. This approach, however, fails to recognize that pound revenue is itself a function of the exchange rate because the U.S. firm's competitive position in the U.K. is determined in part by the exchange rate.

One approach relies, in part, on historical relationships. Suppose, for example, that the firm prepares a scatter diagram as in Figure 23.3 that relates its business profits (measured in dollars) in each of the last 40 quarters to the dollar/pound exchange rate in that quarter. Profits generally are lower when the exchange rate is lower, that is, when the pound depreciates. To quantify that sensitivity, we might estimate the following regression equation:


$$
\text{Profits} = a + b (\$/£ \text{exchange rate})
$$

The slope of the regression, the estimate of  $b$ , is the sensitivity of quarterly profits to the exchange rate. For example, if the estimate of  $b$  turns out to be 2,000,000, as in Figure 23.3, then, on average, a \$1 increase in the value of the pound results in a \$2,000,000 increase in quarterly profits. This is the sensitivity we posited when we asserted that a $.10 drop in the dollar-pound exchange rate would decrease profits by \$200,000.

Of course, one must use historical experience with care. For example, one would not want to extrapolate the relationship between profitability and exchange rates from a period when the exchange rate fluctuated between  \$1.20 and\$ 1.50 per pound to scenarios in which the exchange rate might be below  \$1.00 or above\$ 2.00 per pound. Moreover, regression estimates are just that—estimates. Parameters of a regression equation are sometimes measured with considerable imprecision.

Still, historical relationships are often a good place to start when looking for the average sensitivity of one variable to another. These slope coefficients are not perfect, but they are still useful indicators of hedge ratios.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/4af6cffe48fa866ca8c51757c65b4225f1cd0d9f4b76282d710985a37cb96360.jpg)

### Concept Check 23.3

United Millers purchases corn to make cornflakes. When the price of corn increases, the cost of making cereal increases, resulting in lower profits. Historically, profits per quarter have been related to the price of corn according to the equation Profits = 8 million - 1 million × Price per bushel. How many bushels of corn should United Millers purchase in the corn futures market to hedge its corn-price risk?

## 23.2 Stock-Index Futures

### The Contracts

In contrast to most futures contracts, which call for delivery of a specified commodity, stock-index contracts are settled by a cash amount equal to the value of the index on the contract maturity date times a multiplier that scales the size of the contract. The total profit to the long position is  $S_{T} - F_{0}$ , where  $S_{T}$  is the value of the stock index on the maturity date. Cash settlement avoids the costs that would be incurred if the short trader had to purchase the stocks in the index and deliver them to the long position, and if the long position then had to sell the stocks for cash. Instead, the long trader receives  $S_{T} - F_{0}$  dollars, and the short trader  $F_{0} - S_{T}$  dollars. These profits duplicate those that would arise with actual delivery.

There are several stock-index futures contracts currently traded. Table 23.1 lists some of the major ones, showing under contract size the multiplier used to calculate contract settlements. An E-mini S&P 500 contract, for example, with a futures price of 4,000 and a final index value of 4,010 would result in a profit for the long side of $50 × (4,010 - 4,000) = $500. The S&P 500 contract by far dominates the market in U.S. stock index futures.²

The broad-based U.S. stock market indexes are all highly correlated. Table 23.2 is a correlation matrix for four well-known indexes: the S&P 500, the Dow Jones Industrial Average, the Russell 2000 index of small capitalization stocks, and the NASDAQ 100. The highest correlation, .957, is between the two large-cap indexes, the S&P 500 and the DJIA. The NASDAQ 100, which is dominated by technology firms, and the Russell 2000

<table><tr><td>Contract</td><td>Underlying Market Index</td><td>Contract Size</td><td>Exchange</td></tr><tr><td>S&amp;P 500 (E-mini)</td><td>Standard &amp; Poor&#x27;s 500 Index, a value-weighted arithmetic
average of 500 stocks</td><td>50 times
S&amp;P 500 index</td><td>Chicago Mercantile Exchange</td></tr><tr><td>Mini-Dow Jones Industrial
Average (DJIA)</td><td>Dow Jones Industrial Average, price-weighted average of 30
firms</td><td>\$5 times index</td><td>Chicago Board of Trade</td></tr><tr><td>Mini-Russell 2000</td><td>Index of 2,000 smaller firms</td><td>\$50 times index</td><td>Intercontinental Exchange (ICE)</td></tr><tr><td>NASDAQ 100</td><td>Value-weighted arithmetic average of 100 of the largest
over-the-counter stocks</td><td>\$100 times index</td><td>Chicago Mercantile Exchange</td></tr><tr><td>Nikkei 225</td><td>Nikkei 225 stock average</td><td>\$5 times Nikkei Index</td><td>Chicago Mercantile Exchange</td></tr><tr><td>FTSE 100</td><td>Financial Times Stock Exchange
Index of 100 U.K. firms</td><td>£10 times FTSE Index</td><td>London International Financial
Futures Exchange</td></tr><tr><td>DAX-30</td><td>Index of 30 German stocks</td><td>€25 times index</td><td>Eurex</td></tr><tr><td>CAC-40</td><td>Index of 40 French stocks</td><td>€10 times index</td><td>Euronext Paris</td></tr><tr><td>Hang Seng</td><td>Value-weighted index of largest firms in Hong Kong</td><td>HK50 times index</td><td>Hong Kong Exchange</td></tr></table>

Table 23.1

Sample of stock-index futures

### Table 23.2

Correlation coefficients using monthly returns, 2017-2021.

<table><tr><td></td><td>NASDAQ</td><td>Russell 2000</td><td>DJIA</td><td>S&amp;P 500</td></tr><tr><td>NASDAQ</td><td>1.000</td><td></td><td></td><td></td></tr><tr><td>Russell 2000</td><td>0.766</td><td>1.000</td><td></td><td></td></tr><tr><td>DJIA</td><td>0.831</td><td>0.856</td><td>1.000</td><td></td></tr><tr><td>S&amp;P 500</td><td>0.923</td><td>0.880</td><td>0.957</td><td>1.000</td></tr></table> index of small-cap firms have smaller correlations with the large-cap indexes and with each other, but even these are above .75.


### Creating Synthetic Stock Positions: An Asset Allocation Tool

One reason stock-index futures are so popular is that they can substitute for holdings in the underlying stocks themselves. Index futures let investors participate in broad market movements without actually buying or selling large amounts of stock.

Because of this, we say futures represent "synthetic" holdings of the market portfolio. Instead of holding the market directly, the investor takes a long futures position in the index. The transaction costs involved in buying and selling futures positions are much lower than taking actual spot positions. "Market timers," who speculate on broad market moves rather than on individual securities, are large players in stock-index futures for this reason.

One way to market time is to shift between Treasury bills and broad-based stock market holdings. Timers attempt to shift from bills into the market before market upturns, and to shift back into bills to avoid market downturns, thereby profiting from broad market movements. In-and-out trades of this sort, however, can result in huge transaction costs. An attractive alternative is to invest in Treasury bills and hold varying amounts of market-index futures contracts, which are far cheaper to trade.

The strategy works like this. When timers are bullish, they enter long futures positions that they can liquidate quickly and cheaply when expectations turn bearish. Rather than shifting back and forth between T-bills and stocks, they buy and hold T-bills and adjust only the futures position.

You can construct a T-bill plus index futures position that duplicates the payoff to holding the stock index itself. Here is how:

1. Purchase as many market-index futures contracts as you need to establish your desired stock position. A desired holding of \$1,000 multiplied by the S&P 500 index, for example, would require the purchase of 20 contracts because each contract calls for delivery of \$50 multiplied by the index.
2. Invest enough money in T-bills to cover the payment of the futures price at the contract's maturity date. The necessary investment is simply the present value of the futures price.

### Example 23.3 Synthetic Positions Using Stock-Index Futures

Suppose that an institutional investor wants to invest 100 million in the market for one month and, to minimize trading costs, chooses to buy the S&P 500 E-mini futures contracts as a substitute for actual stock holdings. If the index is now at 4,000, the 1-month delivery futures price is 4,040, and the T-bill rate is 1\% per month, it would buy 500 contracts. (Each contract controls $50 × 4,000 = $200,000 worth of stock, and \$100 million/\$200,000 = 500.) The institution thus has a long position on \$25,000 times the S&P 500 index (500 contracts times the contract multiplier of \$50). To cover payment of the futures price, it must buy bills worth 25,000 times the present value of the futures price. This equals 25,000 × (4,040/1.01) = \$100 million market value of bills. Notice that the \$100 million outlay in bills is precisely equal to the amount that would have been needed to buy the stock directly. (The face value of the bills will be 25,000 × 4,040 = 101 million.)


This is an artificial, or synthetic, stock position. What is the value of this portfolio at the maturity date? Call  $S_T$  the value of the stock index on the maturity date  $T$  and, as usual, let  $F_0$  be the original futures price:

<table><tr><td></td><td>In General
(Per Unit of the Index)</td><td>Our Numbers</td></tr><tr><td>1. Profits from contract</td><td>$S_T - F_0$</td><td>25,000(ST-4,040)</td></tr><tr><td>2. Face value of T-bills</td><td>$F_0$</td><td>101,000,000</td></tr><tr><td>Total</td><td>$S_T$</td><td>25,000ST</td></tr></table>

The total payoff on the contract maturity date is exactly proportional to the value of the stock index. In other words, adopting this portfolio strategy is equivalent to holding the stock index itself, aside from the issue of interim dividend distributions and tax treatment.

The bills-plus-futures contracts strategy in Example 23.3 may be viewed as a  $100\%$  stock strategy. At the other extreme, investing in zero futures results in a  $100\%$  bills position. Moreover, a short futures position will result in a portfolio equivalent to that obtained by short-selling the stock market index because, in both cases, the investor gains from decreases in the stock price. Bills-plus-futures mixtures clearly allow for a flexible and low-transaction-cost approach to market timing. The futures positions may be established or reversed quickly and cheaply. Also, because the short futures position allows the investor to earn interest on T-bills, it is superior to a conventional short sale of the stock, where the investor may earn little or no interest on the proceeds of the short sale.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/062545092a2b18b0d72af89b221807b4e723de32f24a158cdec8c1be8a0dfc9b.jpg)

### Concept Check 23.4

The market timing strategy of Example 23.3 also can be achieved by an investor who holds an indexed stock portfolio and "synthetically exits" the position using futures if and when he turns pessimistic concerning the market. Suppose the investor holds 100 million of stock (which is 25,000 times the current value of the index). What futures position added to the stock holdings would create a synthetic T-bill exposure when he is bearish on the market? Confirm that the profits are effectively risk-free using a table like that in Example 23.3.

### Index Arbitrage

Whenever the actual futures price differs from its parity value, there is an opportunity for profit. This is why the parity relationships are so important. Far from being theoretical academic constructs, they are in fact a guide to trading rules that can generate large profits. Index arbitrage is an investment strategy that exploits divergences between the actual futures price and its theoretically correct parity value.

In principle, index arbitrage is simple. If the futures price is too high, short the contract and buy the stocks in the index. If it is too low, buy futures and short the stocks. You can perfectly hedge your position and should earn arbitrage profits equal to the mispricing of the contract.

Although it is simple in theory, index arbitrage can be difficult to implement. The problem lies in buying "the stocks in the index." Selling or purchasing shares in all 500 stocks in the S&P 500 is impractical for two reasons. The first is transaction costs, which may outweigh any profits to be made from the arbitrage. Second, index arbitrage calls for the purchase or sale of shares of 500 different firms simultaneously, and any lags in the execution of such a strategy can destroy the effectiveness of a plan to exploit temporary price discrepancies. Don't forget that others also will be trying to exploit any deviations from parity, and if they trade first, they may move prices before your trade is executed.

Arbitrageurs need to trade an entire portfolio of stocks quickly and simultaneously if they hope to exploit disparities between the futures price and its corresponding stock index. For this they need a coordinated trading program; hence the term program trading, which refers to purchases or sales of entire portfolios of stocks. Electronic trading enables traders to submit coordinated buy or sell programs to the stock market at once.

The success of these arbitrage positions and associated program trades depends on only two things: the relative levels of spot and futures prices and synchronized trading in the two markets. Because arbitrageurs exploit disparities in futures and spot prices, absolute price levels are unimportant.

### Using Index Futures to Hedge Market Risk

Futures contracts also may be used to hedge market exposure. Suppose, for example, that you manage a 30 million portfolio with a beta of .8. You are bullish on the market over the long term, but you are afraid that over the next two months, the market is vulnerable to a sharp downturn. If trading were costless, you could sell your portfolio, place the proceeds in T-bills for two months, and then reestablish your position after you perceive that the risk of the downturn has passed. In practice, however, this strategy would result in unacceptable trading costs, not to mention the tax consequences of the realization of capital gains or losses on the portfolio. An alternative approach would be to use stock index futures to hedge your market exposure.

### Example 23.4 Hedging Market Risk

Suppose that the S&P 500 index currently is at 4,000. A decrease in the index to 3,900 would represent a drop of  $2.5\%$ . With a portfolio beta of .8, you would expect a loss of  $.8 \times 2.5\% = 2\%$ , or, in dollar terms,  $0.2 \times \$30$  million =  $\$600,000$ . Therefore, the sensitivity of your portfolio value to market movements is  $\$600,000$  per 100-point movement in the S&P 500 index.

To hedge this risk, you could sell stock index futures. When your portfolio falls in value along with declines in the broad market, the futures contract will provide an offsetting profit.

The sensitivity of a futures contract to market movements is easy to determine. With its contract multiplier of  \$50, the profit on the S&P 500 futures contract varies by \$5,000 for every 100-point swing in the index. Therefore, to hedge your market exposure for two months, you could calculate the hedge ratio as follows:


$$
H = \frac{\text{Change in portfolio value}}{\text{Profit on one futures contract}} = \frac{\$600,000}{\$5,000} = 120 \text{contracts (short)}
$$

You would enter the short side of the contracts because you want profits from the contract to offset the exposure of your portfolio to the market. Because your portfolio does poorly when the market falls, you need a position that will do well when the market falls.

We also could approach the hedging problem in Example 23.4 using a similar regression procedure as that illustrated in Figure 23.3 for foreign exchange risk. The predicted value of the portfolio is graphed in Figure 23.4 as a function of the value of the S&P 500 index. With a beta of .8, the slope of the relationship is 6,000: A  $2.5\%$  increase in the index, from 4,000 to 4,100, results in a capital gain of  $2\%$  of \$30 million, or \$ 600,000. Therefore, your portfolio will increase in value by \$6,000 for each increase of one point in the index. As a result, you should enter a short position on 6,000 units of the S&P 500 index to fully offset your exposure to marketwide movements. Because the contract multiplier is \$50 times the index, you need to sell 6,000/50 = 120 contracts.

Notice that when the slope of the regression line relating your unprotected position to the value of an asset is positive, your hedge strategy calls for a short position in that asset. The hedge ratio is the negative of the regression slope. This is because the hedge position should offset your initial exposure. If you do poorly when the asset value falls, you need a short position that will do well when the asset value falls.

Active managers sometimes believe that a particular asset is underpriced but that the market as a whole is about to fall. Even if the asset is a good buy relative to other stocks, it still might perform poorly in a broad market downturn. Therefore, the manager would like to separate the bet on the firm from the bet on the market: Any investment in the company must be offset with a hedge against the market exposure that normally would accompany a stock purchase. In other words, the manager seeks a market-neutral bet on the stock, by which we mean that the manager buys the stock to capture its alpha (its abnormal risk-adjusted expected return) but hedges market exposure, resulting in a position beta of zero.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/bcadbb463852a279b2199462f42b61665bf263b77426b6cc778c158eead91342.jpg)
Figure 23.4 Predicted value of the portfolio as a function of the market index


By hedging the market, the portfolio manager can make stock picks without concern for the market exposure of those stocks. Once the stocks are chosen, the overall market risk of the portfolio can be modulated to any degree using the stock futures contracts. Here again, the stock's beta is the key to the hedging strategy. We discuss market-neutral strategies in more detail in Chapter 26.

### Example 23.5 Market-Neutral Active Stock Selection

Suppose the beta of the stock is 3/3, and the manager purchases \$1.5 million worth of the stock. For every 3\% drop in the broad market, the stock would be expected to respond with a drop of 3/3 × 3\% = 2\%, or \$30,000. The S&P 500 contract will fall by 120 points from a current value of 4,000 if the market drops 3\%. With the contract multiplier of \$50, this would entail a profit to a short futures position of 120 × \$50 = 6,000 per contract. Therefore, the market risk of the stock can be offset by shorting five S&P contracts. More formally, we can calculate the hedge ratio as

$$
\begin{array}{l} H = \frac{\text{Expected change in stock value per 3\% market drop}}{\text{Profit on one short contract per 3\% market drop}} \\ = \frac{\$30,000 \text{swing in unprotected position}}{\$6,000 \text{profit per contract}} \\ = 5 \text{contracts} \\ \end{array}
$$

Now that market risk is hedged, the only source of variability in the performance of the stock-plus-futures portfolio will be the firm-specific performance of the stock.

## 23.3 Interest Rate Futures

### Hedging Interest Rate Risk

Like equity managers, fixed-income managers also sometimes desire to hedge market risk, in this case resulting from movements in the term structure of interest rates. Consider, for example, these problems:

1. A fixed-income manager holds a bond portfolio on which considerable capital gains have been earned. She foresees an increase in interest rates but is reluctant to sell her portfolio and replace it with a lower-duration mix of bonds because such rebalancing would result in large trading costs as well as realization of capital gains for tax purposes. Still, she would like to hedge her exposure to interest rate increases.
2. A corporation plans to issue bonds to the public. However, it cannot issue the bonds for another three months because of the lags inherent in SEC registration. It would like to hedge the uncertainty surrounding the yield at which it eventually will be able to sell the bonds.

3. A pension fund will receive a large cash inflow next month that it plans to invest in long-term bonds. It is concerned that interest rates may fall by the time it can make the investment and would like to lock in the yield currently available on long-term issues.

In each of these cases, the investment manager wishes to hedge interest rate uncertainty. To illustrate, we will focus on the first example, and suppose that the portfolio manager has a \$10 million bond portfolio with a modified duration of nine years. If, as feared, market interest rates increase and the bond portfolio's yield also rises, say, by 10 basis points (.10\%), the fund will suffer a capital loss. Recall from Chapter 16 that the capital loss in percentage terms will be the product of modified duration,  $D^{*}$ , and the increase in the portfolio yield. Therefore, the loss will be

$$
D^* \times \Delta y = 9 \times 0.10\% = 0.90\%
$$ or \$90,000. Equivalently, the price response of the unprotected portfolio to changes in market yields is \$9,000 per 1 basis point change in the yield. Market practitioners call this ratio the price value of a basis point, or PVBP. Here, we've shown that


$$
\mathrm{PVBP} = \frac{\text{Change in portfolio value}}{\text{Predicted change in yield}} = \frac{\$90,000}{10 \text{basis points}} = \$9,000 \text{per basis point}
$$

One way to hedge this exposure is to take an offsetting position in an interest rate futures contract, for example, the Treasury bond contract. The contract nominally calls for delivery of  \$100,000 par value T-bonds with 6\%$  coupons and 20-year maturity. In practice, delivery terms are fairly complicated because many bonds with different coupon rates and maturities may be substituted to settle the contract. To simplify, we will assume that the bond to be delivered is known and has a modified duration of 10 years. Finally, suppose that the futures price currently is 90 per \$100 par value. Because the contract actually requires delivery of \$100,000 par value of bonds, the contract multiplier is 1,000.

Given these data, we can calculate the PVBP for the futures contract. If the yield on the delivery bond increases by 10 basis points, the bond value will fall by  $D^{*} \times .1\% = 10 \times .1\% = 1\%$ . The futures price also will decline  $1\%$ , from 90 to 89.10. Because the contract multiplier is  \$1,000 , the gain on each short contract will be  \$1,000 \times .90 = \$900 . Therefore, the PVBP for one futures contract is  \$900 / 10 -basis-point change, or  \$90  for a change in yield of 1 basis point.

Now we can easily calculate the hedge ratio as follows:

$$
H = \frac{\text{PVBP of portfolio}}{\text{PVBP of hedge vehicle}} = \frac{\$9,000}{\$90 \text{per contract}} = 100 \text{contracts}
$$

Therefore, 100 T-bond futures contracts will offset the portfolio's exposure to interest rate fluctuations.

Notice that this is another example of a market-neutral strategy. In Example 23.5, which illustrated an equity-hedging strategy, stock-index futures were used to drive a portfolio beta to zero. In this application, we used a T-bond contract to drive the interest rate exposure of a bond position to zero. The hedged fixed-income position has a duration (or a PVBP) of zero. The source of risk differs, but the hedging strategy is essentially the same.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/974e56ca79616dcb79844a26a3e006ff8a572ba9c0cfb2e94c69eafe8ef4db70.jpg)
Figure 23.5 Yield spread between 10-year Treasury and Baa-rated corporate bonds

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/214a8f57f7ffa33dd8ac83b6548d938adf055c3909631c28c0111e1d97640db1.jpg)

### Concept Check 23.5

Suppose the bond portfolio is twice as large, 20 million, but that its modified duration is only 4.5 years. Show that the proper hedge position in T-bond futures is the same as the value just calculated, 100 contracts.

Although the hedge ratio is easy to compute, the hedging problem in practice is more difficult. We assumed in our example that the yields on the T-bond contract and the bond portfolio would move perfectly in unison. Although interest rates on various fixed-income instruments do tend to vary in tandem, there is slippage across sectors of the fixed-income market. For example, Figure 23.5 shows that the spread between long-term corporate and 10-year Treasury bond yields has fluctuated considerably over time. Our hedging strategy would be fully effective only if the yield spread across the two sectors were constant (or at least perfectly predictable) so that yield changes in both sectors were equal.

This problem highlights the fact that most hedging activity is in fact cross-hedging, meaning that the hedge vehicle is a different asset than the one to be hedged. Unless the returns on the two assets are perfectly correlated, the hedge will not be perfect. Cross-hedges can eliminate a large fraction of the total risk of the unprotected portfolio, but you should be aware that they typically are not risk-free positions.

## 23.4 Swaps

Swaps are multiperiod extensions of forward contracts. For example, rather than agreeing to exchange British pounds for U.S. dollars at an agreed-upon forward price at one single date, a foreign exchange swap would call for an exchange of currencies on several future dates. The parties might exchange  \$1.3 million for \$1 million in each of the next five years. Similarly, interest rate swaps call for the exchange of a series of cash flows proportional to a given interest rate for a corresponding series of cash flows proportional to a floating interest rate. $^{6}$  One party might receive a variable cash flow equal to  \$1 million times a short-term interest rate and pay \$1 million times a fixed interest rate of 5\% for each of the next seven years.


The swap market is a huge component of the derivatives market, with more than 400 trillion in interest rate and exchange rate swap agreements outstanding. We can illustrate how these contracts work using the following example.

### Example 23.6 Interest Rate Swap

Consider the manager of a large portfolio that currently includes  \$100 million par value of long-term bonds paying an average coupon rate of 7\%$ . The manager believes interest rates are about to rise. As a result, he would like to sell the bonds and replace them with either short-term or floating-rate issues. However, it would be exceedingly expensive in terms of transaction costs to replace the portfolio every time the forecast for interest rates is updated. A cheaper and more flexible approach is to "swap" the 7 million a year in interest income the portfolio currently generates for an amount of money tied to the short-term interest rate. That way, if rates do rise, so will interest income.

A swap dealer might advertise its willingness to exchange, or "swap," a cash flow based on the LIBOR or SOFR rate for one based on a fixed rate of  $7\%$ . Until recently, LIBOR (the London Interbank Offer Rate) was by far the most common short-term rate used in the swaps market. However, as detailed in Chapter 2, LIBOR is currently being phased out, and U.S. dollar-denominated interest-rate swaps are increasingly pegged to SOFR (the secured overnight financing rate) based on overnight repurchase agreements. We therefore will use SOFR as our benchmark short-term rate.

A portfolio manager who enters the swap agreement would pay the dealer  $7 \%$ on notional principal of  $100 million and receive payment of SOFR \times \$100 million. $^{8}$  The manager’s net cash flow from the swap agreement is therefore (SOFR – .07) × 100 million. The participants have agreed to exchange a fixed cash flow for a variable one.

Now consider the portfolio's net cash flow in three interest rate scenarios:

<table><tr><td rowspan="2"></td><td colspan="3">SOFR Rate</td></tr><tr><td>6.5\%</td><td>7.0\%</td><td>7.5\%</td></tr><tr><td>Interest income from bond portfolio (= 7\% of \$100 million bond portfolio)</td><td>$7,000,000</td><td>$7,000,000</td><td>\$7,000,000</td></tr><tr><td>Cash flow from swap [= (SOFR - 7\%) × notional principal of \$100 million]</td><td>(500,000)</td><td>0</td><td>500,000</td></tr><tr><td>Total (= SOFR × \$100 million)</td><td>$6,500,000</td><td>$7,000,000</td><td>7,500,000</td></tr></table>

The total income on the overall position—bonds plus swap agreement—equals the SOFR rate in each scenario times 100 million. The manager has, in effect, converted a fixed-rate bond portfolio into a synthetic floating-rate portfolio.

${}^{6}$  Interest rate swaps have nothing to do with the Homer-Liebowitz bond swap taxonomy described in Chapter 16.
The most popular interest rate swap had been based on the 3-month LIBOR rate. To mimic this 3-month contract, a 3-month version of SOFR is computed by daily compounding of the overnight SOFR rate for the 3-month period ending on the settlement date. There is also a 1-month version of the SOFR rate, but in this case, the 30 relevant daily overnight rates are averaged without compounding.
The participants to the swap do not loan each other money. They agree only to exchange a fixed cash flow for a variable cash flow that depends on the short-term interest rate. This is why the principal is described as notional. The notional principal is simply a way to describe the size of the swap agreement. In this example, a  $7\%$  fixed rate is exchanged for the SOFR rate; the difference between SOFR and  $7\%$  is multiplied by notional principal to determine the net cash flow.

### Swaps and Balance Sheet Restructuring

Example 23.6 illustrates why swaps have tremendous appeal to fixed-income managers. These contracts allow them to quickly, cheaply, and anonymously restructure the balance sheet. Suppose a corporation that has issued fixed-rate debt believes that interest rates are likely to fall; it might prefer to have issued floating-rate debt. In principle, it could issue floating-rate debt and use the proceeds to buy back the outstanding fixed-rate debt. But it is faster and easier to convert the outstanding fixed-rate debt into synthetic floating-rate debt by entering a swap to receive a fixed interest rate (offsetting its fixed-rate coupon obligation) and paying a floating rate.

Conversely, a bank that pays current market interest rates to its depositors, and thus is exposed to increases in rates, could enter a swap to receive a floating rate and pay a fixed rate on some amount of notional principal. This swap position, added to its floating-rate deposit liability, would result in a net liability of a fixed stream of cash. The bank might then be able to invest in long-term fixed-rate loans without encountering interest rate risk.

For another example, consider a fixed-income portfolio manager who wishes to switch back and forth between a fixed- or floating-rate profile quickly and cheaply as forecasts for interest rates change. A manager who holds a fixed-rate portfolio can transform it into a synthetic floating-rate portfolio by entering a pay fixed-receive floating swap and can later transform it back by entering the opposite side of a similar swap.

Foreign exchange swaps also enable the firm to quickly and cheaply restructure its balance sheet. Suppose, for example, that a firm issues  \$10 million in debt at an 8\%$  coupon rate but actually prefers that its interest obligations be denominated in British pounds. For example, the issuing firm might be a British corporation that perceives advantageous financing opportunities in the United States but prefers pound-denominated liabilities. Then the firm, whose debt currently obliges it to make dollar-denominated payments of 800,000, can agree to swap a given number of pounds each year for 800,000. By so doing, it effectively covers its dollar obligation and replaces it with a new pound-denominated obligation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/2f0d4bc2a05ad91ec27b54cc2e8a7616fe19197aa5b50f9243ad57cb703163cc.jpg)

### Concept Check 23.6

Show how a firm that has issued a floating-rate bond with a coupon equal to the SOFR rate can use swaps to convert that bond into synthetic fixed-rate debt. Assume the terms of the swap allow an exchange of SOFR for a fixed rate of  $8\%$ .

### The Swap Dealer

What about the swap dealer? Why is the dealer, which is typically a financial intermediary such as a bank, willing to take on the opposite side of the swaps desired by the participants in these hypothetical swaps?

Consider a dealer who takes on one side of a swap, let's say paying SOFR and receiving a fixed rate. The dealer will search for another trader in the swap market who wishes to receive a fixed rate and pay SOFR. For example, Company A may have issued a  $7\%$  coupon fixed-rate bond that it wishes to convert into synthetic floating-rate debt, while Company B may have issued a floating-rate bond tied to SOFR that it wishes to convert into synthetic fixed-rate debt. The dealer will enter a swap with Company A in which it pays a fixed rate and receives SOFR, and will enter another swap with Company B in which it pays SOFR and receives a fixed rate. When the two swaps are combined, the dealer's position is effectively neutral on interest rates, paying SOFR on one swap and receiving it on another. Similarly, the dealer pays a fixed rate on one swap and receives it on another. The dealer becomes little more than an intermediary, funneling payments from one party to the other. The dealer finds this activity profitable because it will charge a bid-ask spread on the transaction.


This arrangement is illustrated in Figure 23.6. Company A has issued  $7\%$  fixed-rate debt (the leftmost arrow in the figure) but enters a swap to pay the dealer SOFR and receive a  $6.95\%$  fixed rate. Therefore, the company's net payment is  $7\% + (\mathrm{SOFR} - 6.95\%) = \mathrm{SOFR} + .05\%$ . It has thus transformed its fixed-rate debt into synthetic floating-rate debt. Conversely, Company B has issued floating-rate debt paying SOFR (the rightmost arrow) but enters a swap to pay a  $7.05\%$  fixed rate in return for SOFR. Therefore, its net payment is  $\mathrm{SOFR} + (7.05\% - \mathrm{SOFR}) = 7.05\%$ . It has transformed its floating-rate debt into synthetic fixed-rate debt. The bid-ask spread, the source of the dealer's profit, is  $10\%$  of notional principal each year.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/8002e81ff3e5c54f47897ac48eb146a69afe96b73a4ce6d4e049617e19398e04.jpg)

### Concept Check 23.7

A pension fund holds a portfolio of money market securities that the manager believes are paying excellent yields compared to comparable short-term securities. However, the manager believes that interest rates are about to fall. What type of swap will allow the fund to continue to hold its portfolio of short-term securities while at the same time benefiting from a decline in rates?

### Other Interest Rate Contracts

Swaps are multiperiod forward contracts that trade over the counter. There are also exchange-listed contracts that trade on interest rates. The biggest of these in terms of trading activity is the Eurodollar contract, the listing for which we show in Figure 23.7.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/4edea4a4e643e7308dab056cc142b902b156535858a9c86327bb4583589b3494.jpg)
Figure 23.6 Interest rate swap. Company B pays a fixed rate of  $7.05\%$  to the swap dealer in return for SOFR. Company A receives  $6.95\%$  from the dealer in return for SOFR. The swap dealer realizes a cash flow each period equal to  $10\%$  of notional principal.

<table><tr><td rowspan="2"></td><td rowspan="2">Open</td><td colspan="2">Contract</td><td rowspan="2">Settle</td><td rowspan="2">Chg</td><td rowspan="2">Open interest</td></tr><tr><td>High</td><td>hilo</td></tr><tr><td colspan="7">Eurodollar (CME)-1,000,000; pts of 100\%</td></tr><tr><td>Oct</td><td>99.8725</td><td>99.8750</td><td>99.8675</td><td>99.8700</td><td>-0.0025</td><td>404,031</td></tr><tr><td>Dec</td><td>99.8300</td><td>99.8350</td><td>99.8250</td><td>99.8300</td><td>-0.0050</td><td>1,116,066</td></tr><tr><td>March&#x27;22</td><td>99.8500</td><td>99.8550</td><td>99.8450</td><td>99.8500</td><td>-0.0050</td><td>1,122,645</td></tr><tr><td>Dec&#x27;23</td><td>98.8700</td><td>98.8700</td><td>98.8300</td><td>98.8550</td><td>-0.0150</td><td>1,143,934</td></tr></table>

Figure 23.7 Eurodollar futures

Source: The Wall Street Journal, October 7, 2021.

The Eurodollar contract is essentially a forward contract on the 3-month LIBOR rate. Contracts now trade on three-month and 1-month SOFR, but so far, the LIBOR-based Eurodollar contract still dominates in terms of trading volume.

Both the SOFR and Eurodollar contracts provide profits (or losses) proportional to the difference between the relevant short-term interest rate at contract maturity and the rate agreed to in the contract. However, the listing conventions for these contracts are a bit peculiar. Consider, for example, the first contract listed in Figure 23.7, which matures in October 2021. The settlement price is presented as  $F_{0} = 99.87$ . However, this value is not really a price. In effect, participants in the contract negotiate over the contract interest rate, and the so-called futures price is actually set equal to  $100 -$  Contract rate. Because the futures price is 99.87, the contract rate is  $100 - 99.87$ , or  $0.13\%$ . Similarly, the final futures price on the contract maturity date will be marked to  $F_{T} = 100 - \mathrm{LIBOR}_{T}$ . Thus, profits to the buyer of the contract will be proportional to


$$
F_T - F_0 = (100 - \operatorname{LIBOR}_T) - (100 - \operatorname{Contract rate}) = \operatorname{Contract rate} - \operatorname{LIBOR}_T
$$

Thus, the contract design allows participants to trade directly on the LIBOR rate. The contract multiplier is \$1 million, but the LIBOR rate on which the contract is written is a 3-month (quarterly) rate; for each basis point that the (annualized) LIBOR increases, the quarterly interest rate increases by only  $\frac{1}{4}$  of a basis point, and the profit to the buyer decreases by

$$
0.0001 \times 1/4 \times \$1,000,000 = \$25
$$

Examine the payoff on the contract and you will see that, in effect, the Eurodollar contract allows traders to "swap" a fixed interest rate (the contract rate) for a floating rate (LIBOR). Thus, this is in effect a one-period interest rate swap. Notice in Figure 23.7 that the total open interest on this contract is enormous—nearly 4 million contracts just for maturities extending to one year. Moreover, while not presented in Figure 23.7, significant trading in Eurodollars takes place for contract maturities extending out to 10 years. Contracts with such long-term maturities are quite unusual. They reflect the fact that the Eurodollar contract is used by dealers in long-term interest rate swaps as a hedging tool.

### Swap Pricing

How can the fair swap rate be determined? For example, how would we know what fixed interest rate is a fair exchange for LIBOR or SOFR? Or what is the fair swap rate between dollars and pounds for a foreign exchange swap? We can address these questions by interpreting a swap as an implicit exchange of bonds. Let's start with interest rate swaps.

Imagine a firm that issues at par value a floating-rate note paying a coupon rate equal to SOFR and uses the proceeds to purchase (also for par value) a 5-year fixed-rate note paying a coupon rate of  $6\%$ . For simplicity, we will assume that both bonds entail annual

<table><tr><td></td><td>Time 0
(Bonds issued)</td><td>Years 1–5
(Coupons paid)</td><td>Year 5
(Bonds Mature)</td></tr><tr><td>Issue floating-rate note</td><td>+\$100</td><td>-SOFR × $100</td><td>-$100</td></tr><tr><td>Purchase fixed-rate note with a fixed 6\% coupon rate</td><td>-$100</td><td>0.06 × $100</td><td>+\$100</td></tr><tr><td>Net cash flow</td><td>0</td><td>(0.06 – SOFR) × 100</td><td>0</td></tr></table>

Cash flows to a firm issuing a floating-rate note and purchasing a fixed-rate bond. (Annual coupons, both bonds issued at par value of \$100 million. Cash flows in millions.) coupon payments and that the size of both issues is \$100 million. Table 23.3 lays out the firm's cash flows.


The firm's initial net cash flow is zero, as the funds raised by issuing the floating-rate note are used to purchase the fixed-rate note. Similarly, the net cash flow associated with the bond redemptions in year 5 is zero: The maturing fixed-rate bond held by the firm pays off par value, which provides just enough cash to pay off the face value of the floating-rate bond the firm issued.

The interesting column of Table 23.3 corresponds to the net cash flow in years 1-5. The firm pays the floating rate each year and receives a fixed rate of  $6\%$ , both on par value of \$100 million. The firm's net cash flows in each year are precisely the same as it would receive on a 5-year SOFR interest-rate swap with a  $6\%$  fixed rate. We conclude that the firm has "synthetically engineered" a fixed-for-floating interest rate swap, which, just like actual swaps, entails a zero net cash flow when entered into. Therefore, the fixed rate on an actual swap contract must match the  $6\%$  coupon the firm pays when it engineers the synthetic swap. The coupon rates on fixed-versus floating-rate bonds that can be issued at par thus determine the terms that swap dealers will be willing to post for interest rate swaps.

Currency swaps can be priced similarly. Table 23.4 considers a U.S. firm that issues a  \$150 million par value bond in the U.S. with a coupon rate of 6\%$ , just enough to allow it to issue the bond at par value. The current exchange rate is 1.50/£, so the firm can convert the money raised into £100 million and use it to purchase a pound-denominated £100 million par value bond in the U.K., where the coupon rate on bonds selling at par is, let's say,  $5\%$ .

Table 23.3

<table><tr><td></td><td>Time 0(Bonds issued)</td><td>Years 1–5(Coupons paid)</td><td>Year 5(Bonds mature)</td></tr><tr><td>Issue dollar note, par value = \$150 million, coupon rate = 6\%</td><td>+$150</td><td>-0.06 × $150</td><td>-\$150</td></tr><tr><td>Purchase pound note, par value = £100 million, coupon rate = 5\%</td><td>-£100 = -\$150</td><td>0.05 × £100</td><td>+£100</td></tr><tr><td>Net cash flow</td><td>0</td><td>£5 – \$9</td><td>£100 – 150</td></tr></table>

Table 23.4

Cash flows to a firm issuing a dollar-denominated bond and purchasing a pound-denominated bond. (Cash flows in millions.)

As was true of interest-rate swaps, the firm has engineered a synthetic currency swap, with an initial net cash flow of zero. The firm is committed to exchanging  \$9 million for\$ 5 million British pounds for the next five years. Unlike interest-rate swaps, however, the final net cash flow when the bonds are redeemed at maturity is not necessarily zero. This is because the exchange rate in five years generally will not remain at its initial value of \$1.50/£. Instead, the final cash flow entails an additional exchange of \$150 million for £100 million. Nevertheless, as was true for interest rate swaps, the interpretation of a swap as an exchange of bonds determines the swap cash flows that currency dealers will offer to market participants.

Why might a firm engage in a currency swap? Perhaps a British firm wishes to finance a project in the United States and, to hedge its exchange-rate risk, wants its financing cash flows to be denominated in dollars to match its anticipated dollar-denominated operating cash flows. But the firm believes it can obtain better borrowing terms in the United Kingdom, where it is better known. The firm might decide to raise £100 million in Great Britain and enter the swap in Table 23.4. The swap is effectively a long position in a pound-denominated note (offsetting its borrowing position in the U.K.) and a short position in a dollar-denominated note (meaning its net financing cash flows are now denominated in the same currency as its operating cash flows).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/97ea772c3753228c4a29903988a7ed7871d3f5519824d19fb54b68833b2ae583.jpg)

### Concept Check 23.8

Suppose the initial spot exchange rate had been  $1 = \frac{1}{2} 1.4$  and that the U.S. interest rate was  $4 \%$  Rework Table 23.4 to show what cash flows a dealer would offer to investors wishing to enter a foreign exchange swap.

### Credit Risk in the Swap Market

The huge size of the swap market has given rise to periodic concern about credit risk and the possibility of a default by a major swap trader. Actually, although credit risk in the swap market is not trivial, it is not nearly as large as the magnitude of notional principal in these markets would suggest. To see why, think about the losses one trader would incur if its counterparty defaulted.

When the swap is initiated, it has zero net present value to both parties for the same reason that a forward contract has zero value at inception: Both are simply contracts to exchange cash in the future at terms established today, and those terms make both parties willing to enter the deal. Therefore, at contract inception, the net present value of the contract must be zero. Even if one party were to back out of the deal at this moment, it would not cost its counterparty anything because another trader could be found to take its place.

Once interest or exchange rates change, however, the situation is not as simple. Suppose, for example, that interest rates increase shortly after an interest-rate swap agreement has begun. The floating-rate payer therefore suffers a loss, while the fixed-rate payer enjoys a gain. If the floating-rate payer reneges on its commitment at this point, the fixed-rate payer suffers a loss. However, that loss is not as large as the notional principal of the swap, for the default of the floating-rate payer relieves the fixed-rate payer from its obligation as well. The loss is only the difference between the values of the fixed-rate and floating-rate obligations, not the total value of the payments that the floating-rate payer was originally obligated to make.

### Example 23.7 Credit Risk in Swaps

Consider a swap written on $1 million of notional principal that calls for exchange of SOFR for a fixed rate of 4\% for five years. Suppose, for simplicity, that the yield curve is currently flat at 4\%. With SOFR equal to 4\%, no cash flows will be exchanged unless interest rates change. But now suppose that the yield curve immediately shifts up to 5\%. The floating-rate payer now is obligated to pay a cash flow of (.05 – .04) × \$1 million = \$10,000 each year to the fixed-rate payer (as long as rates remain at 5\%). If the floating-rate payer defaults on the swap, the fixed-rate payer loses that 5-year annuity. The present value of that annuity is \$10,000 × Annuity factor (5\%, 5 years) = \$43,295, which is only a bit more than 4\% of notional principal. We conclude that the credit risk of the swap is far less than notional principal.

### Credit Default Swaps

Despite the similarity in names, a credit default swap (CDS) is wholly different from an interest rate or currency swap. As we saw in Chapter 14, payment on a CDS is tied to the financial status of one or more reference firms; the CDS therefore allows two counterparties to take positions on the credit risk of those firms. When a particular "credit event" is triggered, say, default on an outstanding bond or failure to pay interest, the swap seller is expected to cover the loss in the market value of the bond. He may be obligated to pay par value to take delivery of the defaulted bond (in which case the swap is said to entail physical settlement) or may instead pay the swap buyer the difference between the par value and market value of the bond (termed cash settlement). The swap purchaser pays a periodic fee to the seller for this protection against credit events.

Unlike interest rate swaps, credit default swaps do not entail periodic netting of one reference rate against another. They are in fact more like insurance policies written on particular credit events. Bondholders may buy these swaps to transfer their credit risk exposure to the swap seller, effectively enhancing the credit quality of their portfolios. Unlike conventional insurance policies, however, swaps allow you to buy "insurance" on bonds that you don't actually own. Therefore, credit default swaps can be used purely to speculate on changes in the credit standing of the reference firms.

## 23.5 Commodity Futures Pricing

Commodity futures prices are governed by the same general considerations as stock futures. One difference, however, is that the cost of "carrying" commodities, especially those subject to spoilage, is greater than the cost of carrying financial assets. The underlying asset for some contracts, such as electricity futures, simply cannot be "carried" or held in a portfolio. Finally, spot prices for some commodities demonstrate marked seasonal patterns that can affect futures pricing.

### Pricing with Storage Costs

In addition to interest costs, carrying commodities also entails storage costs, insurance costs, and an allowance for spoilage. To price commodity futures, we use the familiar arbitrage strategy that calls for holding the asset and hedging its value with a short position in a futures contract. We will denote the price of the commodity at contract maturity (time  $T$ ) as  $P_T$ , and to simplify, we will assume that all noninterest carrying costs ( $C$ ) are paid in one lump sum at maturity.


<table><tr><td>Action</td><td>Initial Cash Flow</td><td>CF at Time T</td></tr><tr><td>Buy asset; pay carrying costs at T</td><td>-P0</td><td>P_T-C</td></tr><tr><td>Borrow P0; repay with interest at time T</td><td>P0</td><td>-P0(1+rf)</td></tr><tr><td>Short futures position</td><td>0</td><td>F0-P_T</td></tr><tr><td>Total</td><td>0</td><td>F0-P0(1+rf)-C</td></tr></table>

Because market prices should not allow for arbitrage opportunities, the terminal cash flow of this zero-net-investment, risk-free strategy should be zero.

If the cash flow were positive, this strategy would yield guaranteed profits with no net investment. If the cash flow were negative, the reverse of this strategy also would yield risk-free profits. While the reverse strategy entails a short sale of the commodity, which is unusual, it may be done as long as the short sale contract appropriately accounts for storage costs.[10] Thus, we conclude that

$$
F _ {0} = P _ {0} (1 + r _ {f}) + C
$$

Finally, if we define  $c = C / P_0$  and interpret  $c$  as the percentage "rate" of carrying costs, we may write

$$
F _ {0} = P _ {0} \left(1 + r _ {f} + c\right) \tag {23.3}
$$ which is a (1-year) parity relationship for futures involving storage costs.


Compare Equation 23.3 to the parity relation for stocks, Equation 22.1 from the previous chapter, and you will see that they are extremely similar. In fact, if we think of carrying costs as a "negative dividend," the equations are identical. This makes intuitive sense because, instead of receiving a dividend yield of  $d$ , the storer of the commodity must pay a storage cost of  $c$ .

Although we have called  $c$  the carrying cost of the commodity, it is better to interpret it more generally as the net carrying cost, that is, the carrying cost net of the benefits derived from holding the commodity in inventory. For example, part of the "convenience yield" of goods held in inventory is the protection against stocking out, which may result in lost production or sales.

It is vital to note that we derive Equation 23.3 assuming that the asset can and will be bought and stored. But two kinds of commodities cannot be expected to be stored. The first kind is commodities for which storage is technologically not feasible, such as electricity. The second includes goods that are not stored for economic reasons. For example, it would be foolish to buy an agricultural commodity now, planning to store it for ultimate use in three years. Because agricultural prices fall as each crop is harvested, it usually makes no sense to store the commodity across crop cycles. Someone who anticipates a need for the crop in three years would be wise to delay the purchase until after the harvest of the third year and avoid paying storage costs. Moreover, if the crop in the third year is comparable to this year's, you could obtain it at roughly the same price as you would pay this year. By waiting to purchase, you avoid both interest and storage costs.

Because storage across harvests generally will be avoided, Equation 23.3 should not be expected to apply for holding periods that span harvest times, nor should it apply to perishable goods that are available only "in season." Whereas the futures price for gold, which is a stored commodity, increases steadily with the maturity of the contract, the futures price for wheat is seasonal; its futures price typically falls across harvests between March and July as new supplies become available.

Figure 23.8 is a stylized version of the seasonal price pattern for an agricultural product. Clearly this pattern differs from financial assets such as stocks or gold for which there is no seasonal price movement. Financial assets are priced so that holding them in a portfolio produces a fair expected return. Agricultural prices, in contrast, are subject to steep periodic drops as each crop is harvested, which makes storage across harvests generally unprofitable and therefore upends arbitrage strategies like those that led to Equation 23.3.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/20acf0bf28da9adf941b3827cdf943c94b5dcc9b4845c9d7202a2489a1366f23.jpg)
Figure 23.8 Typical agricultural price pattern over the season; prices adjusted for inflation.

Futures pricing across seasons therefore requires a different approach that is not based on storage. In place of general no-arbitrage restrictions, we rely instead on discounted cash flow (DCF) analysis.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/3c13221f6ff40abc7194c359f48a35618099c43fed926da85316f0a0a44308e1.jpg)

### Concept Check 23.9

People are willing to buy and "store" shares of stock despite the fact that their purchase ties up capital. Most people, however, are not willing to buy and store soybeans. What is the difference in the properties of the expected evolution of stock prices versus soybean prices that accounts for this result?

### Discounted Cash Flow Analysis for Commodity Futures

Given an expected spot price and the risk characteristics of that price, we can measure the present value of a claim to receive a commodity at some future date. We obtain the appropriate discount rate from a model such as the CAPM or APT and discount the expected spot price using that rate, as illustrated in the following example.

### Example 23.8 Commodity Futures Pricing

Table 23.5, which presents betas on a variety of commodities, shows that the beta of orange juice was estimated to be .117. If the T-bill rate is currently  $5\%$  and the historical market risk premium is about  $8\%$ , the appropriate discount rate for orange juice would be given by the CAPM as

$$
5\% + 0.117 \times 8\% = 5.94\%
$$

If the expected spot price for orange juice six months from now is 1.45 per pound, the present value of a 6-month deferred claim to a pound of orange juice is

$$
\$1.45 / (1.0594)^2 = \$1.409
$$

What would be the proper futures price for orange juice? The contract calls for the ultimate exchange of orange juice for the futures price. We have just shown that the present value of the juice is 1.409. This should equal the present value of the futures price that will be paid for the juice. A commitment to a payment of F 0 dollars in six months has a present value of F 0 / (1.05) 1/2 = .976 × F 0. Notice that the discount rate applied to the futures price is the risk-free rate of 5\% because the promised payment is fixed and therefore independent of market conditions.

To find the equilibrium futures price, equate the present values of the promised payment of  $F_{0}$  and the promised receipt of orange juice:

$$
0.976 F_0 = \$1.409
$$ and solve to find that $F_0 = \$1.444$


The general rule, then, to determine the futures price is to equate the present value of the future payment of  $F_{0}$  with that of the commodity to be received. This implies

$$
\frac{F_0}{(1 + r_f)^T} = \frac{E(P_T)}{(1 + k)^T}
$$ or


$$
F_0 = E(P_T) \left(\frac{1 + r_f}{1 + k}\right)^T \tag{23.4}
$$ where $k$ is the required rate of return on the commodity, which may be obtained from a risk-return model such as the CAPM.


Table 23.5
Commodity betas

<table><tr><td>Commodity</td><td>Beta</td><td>Commodity</td><td>Beta</td></tr><tr><td>Wheat</td><td>-0.370</td><td>Orange juice</td><td>0.117</td></tr><tr><td>Corn</td><td>-0.429</td><td>Propane</td><td>-3.851</td></tr><tr><td>Oats</td><td>0.000</td><td>Cocoa</td><td>-0.291</td></tr><tr><td>Soybeans</td><td>-0.266</td><td>Silver</td><td>-0.272</td></tr><tr><td>Soybean oil</td><td>-0.650</td><td>Copper</td><td>0.005</td></tr><tr><td>Soybean meal</td><td>0.239</td><td>Cattle</td><td>0.365</td></tr><tr><td>Broilers</td><td>-1.692</td><td>Hogs</td><td>-0.148</td></tr><tr><td>Plywood</td><td>0.660</td><td>Pork bellies</td><td>-0.062</td></tr><tr><td>Potatoes</td><td>-0.610</td><td>Eggs</td><td>-0.293</td></tr><tr><td>Platinum</td><td>0.221</td><td>Lumber</td><td>-0.131</td></tr><tr><td>Wool</td><td>0.307</td><td>Sugar</td><td>-2.403</td></tr><tr><td>Cotton</td><td>-0.015</td><td></td><td></td></tr></table>

Source: Zvi Bodie and Victor Rosansky, "Risk and Return in Commodity Futures," Financial Analysts Journal 36 (May-June 1980).

Equation 23.4 is perfectly consistent with the spot-futures parity relationship. For example, apply Equation 23.4 to the futures price for a stock paying no dividends. Because the entire return on the stock is in the form of capital gains, the expected rate of capital gains must equal  $k$ , the required rate of return on the stock. Thus, the expected price of the stock is its current price times  $(1 + k)^T$ , or  $E(P_T) = P_0(1 + k)^T$ . Substituting this expression into Equation 23.4 results in  $F_0 = P_0(1 + r_f)^T$ , which is exactly the parity relationship.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/22844c20178536690c5a03520c41c2432b8948d5f67f607113e3aadf30b54e2d.jpg)

### Concept Check 23.10

Suppose that the systematic risk of orange juice increases, holding the expected time  $T$  price of juice constant. If the expected spot price is unchanged, will the futures price change? In what direction? What is the intuition behind your answer?

1. Foreign exchange futures trade on several foreign currencies. The interest rate parity relationship for foreign exchange futures is

### Summary

$$
F_0 = E_0 \left(\frac{1 + r_{\mathrm{US}}}{1 + r_{\mathrm{foreign}}}\right)^T
$$ with exchange rates quoted as dollars per foreign currency. Deviations of the futures price from this value imply an arbitrage opportunity.


2. Futures contracts are traded on several stock market indexes. The contracts may be mixed with Treasury bills to construct artificial equity positions, which makes them potentially valuable tools for market timers. Index contracts are used also by arbitrageurs who attempt to profit from violations of the spot-futures parity relationship.
3. Hedging requires investors to purchase assets that will offset the sensitivity of their portfolios to particular sources of risk. A hedged position requires that the hedging vehicle provide profits that offset variation in the value of the position to be protected.
4. The hedge ratio is the number of hedging vehicles such as futures contracts required to offset the risk of the unprotected position. The hedge ratio for systematic market risk is proportional to the size and beta of the underlying stock portfolio. The hedge ratio for fixed-income portfolios is proportional to the price value of a basis point, which in turn is proportional to modified duration and the size of the portfolio.
5. Many investors such as hedge funds use hedging strategies to create market-neutral bets on perceived instances of relative mispricing between two or more securities. These are not arbitrage strategies, but pure plays on a particular perceived profit opportunity.
6. Interest rate futures contracts may be written on the prices of debt securities (as in the case of Treasury-bond futures contracts) or on interest rates directly (as in the case of Eurodollar or SOFR contracts).
7. Swaps, which call for the exchange of a series of cash flows, may be viewed as portfolios of forward contracts. Each transaction may be viewed as a separate forward agreement. However, instead of pricing each exchange independently, the swap sets one "forward price" that applies to all of the transactions. Therefore, the swap price will be an average of the forward prices that would prevail if each exchange were priced separately.

8. Commodity futures pricing is complicated by costs for storage of the underlying commodity. When the asset is willingly stored by investors, the storage costs net of convenience yield enter the futures pricing equation as follows:

$$
F_0 = P_0 (1 + r_f + c)^T
$$

The non-interest net carrying costs,  $c$ , play the role of a "negative dividend" in this context.

9. When commodities are not stored for investment purposes, the equilibrium futures price can be derived from general risk-return principles. In this case,

$$
F_0 = E(P_T) \left(\frac{1 + r_f}{1 + k}\right)^T
$$

This futures price is fully consistent with spot-futures parity for stored assets.

### Key Terms

<table><tr><td>hedging</td><td>index arbitrage</td><td>foreign exchange swap</td></tr><tr><td>interest rate parity relationship</td><td>program trading</td><td>interest rate swap</td></tr><tr><td>covered interest arbitrage</td><td>market-neutral bet</td><td>notional principal</td></tr><tr><td>relationship</td><td>price value of a basis point</td><td>credit default swap (CDS)</td></tr><tr><td>hedge ratio</td><td>cross-hedging</td><td></td></tr></table>

### Key Equations

Interest rate parity (covered interest arbitrage) for direct exchange rate quote:  $F_{0} = E_{0}\left(\frac{1 + r_{\mathrm{US}}}{1 + r_{\mathrm{foreign}}}\right)^{T}$

Hedging with futures: Hedge ratio  $= \frac{\text{Change in portfolio value}}{\text{Profit on one futures contract}}$

Parity for stored commodities:  $F_{0} = P_{0}(1 + r_{f} + c)^{T}$

Futures price versus expected spot price:  $F_{0} = E(P_{T})\left(\frac{1 + r_{f}}{1 + k}\right)^{T}$

### Problem Sets

1. A stock's beta is a key input to hedging in the equity market. A bond's duration is key in fixed-income hedging. How are they used similarly? Are there any differences in the calculations necessary to formulate a hedge position in each market?
2. A U.S. exporting firm may use foreign exchange futures to hedge its exposure to exchange rate risk. Its position in futures will depend in part on anticipated payments from its customers denominated in foreign currency.

a. In general, however, should its position in futures be more or less than the number of contracts necessary to hedge these anticipated cash flows? (Hint: Think about the firm's stream of cash flows extending out over many years.)
$b$ . What other considerations might enter into the hedging strategy?

3. Both gold-mining firms and oil-producing firms might choose to use futures to hedge uncertainty in future revenues due to price fluctuations. But trading activity sharply tails off for maturities beyond one year. Suppose a firm wishes to use available (short maturity) contracts to hedge commodity prices at a more distant horizon, say, four years from now. Do you think the hedge will be more effective for the oil- or the gold-producing firm?

4. You believe that the spread between municipal bond yields and U.S. Treasury bond yields is going to narrow in the coming month. How can you profit from such a change using the municipal bond and T-bond futures contracts?

5. Consider the futures contract written on the S&P 500 index and maturing in one year. The interest rate is 3\%, and the future value of dividends expected to be paid over the next year is 70. The current index level is 4,000. Assume that you can short sell the S&P index.

a. Suppose the expected rate of return on the market is  $8\%$ . What is the expected level of the index in one year?
b. What is the theoretical no-arbitrage price for a 1-year futures contract on the S&P 500 stock index?
c. Suppose the actual futures price is 4,024. Is there an arbitrage opportunity here? If so, how would you exploit it?

6. Suppose that the value of the S&P 500 stock index is 4,000.

a. If each E-mini futures contract (with a contract multiplier of \$50) costs \$25 to trade with a discount broker, how much is the transaction cost per dollar of stock controlled by the futures contract?
b. If the average price of a share on the NYSE is about 40, how much is the transaction cost per "typical share" controlled by one futures contract?
c. For small investors, a typical transaction cost (including the bid-ask spread) for direct trades in stocks might be about 5 cents per share. How many times the transactions costs in futures markets is this?

7. You manage a 42 million portfolio, currently all invested in equities, and believe that the market is on the verge of a big but short-lived downturn. You would move your portfolio temporarily into T-bills, but you do not want to incur the transaction costs of liquidating and reestablishing your equity position. Instead, you decide to temporarily hedge your equity holdings with E-mini S&P 500 index futures contracts.

a. Should you be long or short the contracts? Why?
b. If your equity holdings are invested in a market-index fund, into how many contracts should you enter? The S&P 500 index is now at 4,200 and the contract multiplier is 50.
c. How does your answer to part  $(b)$  change if the beta of your portfolio is .6?

8. A manager is holding a 1 million stock portfolio with a beta of 1.25. She would like to hedge the risk of the portfolio using the S&P 500 stock index futures contract. How many dollars' worth of the index should she sell in the futures market to minimize the volatility of her position?
9. Suppose that the relationship between the rate of return on Digital Computer Corp. stock, the market index, and a computer industry index can be described by the following regression equation:  $r_{\text{Digital}} = .5r_M + .75r_{\text{Industry}}$ . If a futures contract on the computer industry is traded, how would you hedge the exposure to the systematic and industry factors affecting the performance of Digital stock? Specifically, how many dollars' worth of the market and industry index contracts would you buy or sell for each dollar held in Digital?
 10. Suppose that the spot price of the euro is currently \$1.10. The 1-year futures price is \$1.15. Is the interest rate higher in the United States or the euro zone?
11. a. The spot price of the British pound is currently 1.30. If the risk-free interest rate on 1-year government bonds is 1\% in the United States and 2\% in the United Kingdom, what must be the forward price of the pound for delivery one year from now?
b. How could an investor make risk-free arbitrage profits if the forward price were higher than the price you gave in answer to part  $(a)$ ? Give a numerical example.

12. Consider the following information:

$$ r_{\mathrm{US}} = 2\% ;r_{\mathrm{UK}} = 3\%
$$

$$
E_0 = 1.30 \text{dollars per pound}
$$

$$
F _ {0} = 1. 2 9 (1 - \text {y e a r d e l i v e r y})
$$ where the interest rates are annual yields on U.S. or U.K. bills. Given this information:


$a$  .Where would you lend?
$b$  .Where would you borrow?
c. How could you arbitrage?

13. Farmer Brown grows Number 1 red corn and would like to hedge the value of the coming harvest. However, the futures contract is traded on the Number 2 yellow grade of corn. Suppose that yellow corn typically sells for  $90\%$  of the price of red corn. If he grows 100,000 bushels, and each futures contract calls for delivery of 5,000 bushels, how many contracts should Farmer Brown buy or sell to hedge his position?

14. Return to Figure 23.7. Suppose the LIBOR rate when the first-listed Eurodollar contract matures in October is  $1.0\%$ . What will be the profit or loss to each side of the Eurodollar contract?

15. Yields on short-term bonds tend to be more volatile than yields on long-term bonds. Suppose that you have estimated that the yield on 20-year bonds changes by 10 basis points for every 15-basis-point move in the yield on 5-year bonds. You hold a \$1 million portfolio of 5-year maturity bonds with modified duration four years and desire to hedge your interest rate exposure with T-bond futures, which currently have modified duration nine years and sell at F0 = \$95. How many futures contracts should you sell?

16. A manager is holding a 1 million bond portfolio with a modified duration of eight years. She would like to hedge the risk of the portfolio by short-selling Treasury bonds. The modified duration of T-bonds is 10 years. How many dollars' worth of T-bonds should she sell to minimize the variance of her position?

17. A corporation plans to issue 10 million of 10-year bonds in three months. At current yields the bonds would have modified duration of eight years. The T-note futures contract is selling at F₀ = 100 and has modified duration of six years. How can the firm use this futures contract to hedge the risk surrounding the yield at which it will be able to sell its bonds? Both the bond and the contract are at par value.

18. a. If the spot price of gold is 1,500 per troy ounce, the risk-free interest rate is 2\%, and storage and insurance costs are zero, what should be the forward price of gold for delivery in one year? Use an arbitrage argument to prove your answer.

b. Show how you could make risk-free arbitrage profits if the forward price is 1,550.

19. If the corn harvest today is poor, would you expect this fact to have any effect on today's futures prices for corn to be delivered (post-harvest) two years from today? Under what circumstances will there be no effect?

20. Suppose that the price of corn is risky, with a beta of .5. The monthly storage cost is $.03 per bushel, and the current spot price is \$5.50, with an expected spot price in three months of 5.88. If the expected rate of return on the market is 0.9\% per month, with a risk-free rate of 0.5\% per month, would you store corn for three months?

21. Suppose the U.S. yield curve is flat at 4\% and the euro yield curve is flat at 3\%. The current exchange rate is \$1.10 per euro. What cash flows will be exchanged on a 4-year foreign exchange swap with notional principal of 100 million euros (or equivalently, at current exchange rates, \$110 million)?

22. Desert Trading Company has issued \$100 million worth of long-term bonds at a fixed rate of 7\%. The firm then enters into an interest rate swap where it pays SOFR and receives a fixed 6\% on notional principal of \$100 million. What is the firm's effective interest rate on its borrowing?

23. Firm ABC enters a 5-year swap with firm XYZ to pay SOFR in return for a fixed  $6\%$  rate on notional principal of \$10 million. Two years from now, the market rate on 3-year swaps is SOFR for  $5\%$ ; at this time, firm XYZ goes bankrupt and defaults on its swap obligation.

$a$ . Why is firm ABC harmed by the default?
$b$ . What is the market value of the loss incurred by ABC as a result of the default?
c. Suppose instead that ABC had gone bankrupt. How do you think the swap would be treated in the reorganization of the firm?

24. Suppose that at the present time, one can enter 5-year swaps that exchange SOFR for  $5\%$ . An off-market swap would then be defined as a swap of SOFR for a fixed rate other than  $5\%$ . For example, a firm with  $7\%$  coupon debt outstanding might like to convert to synthetic floating-rate debt by entering a swap in which it pays SOFR and receives a fixed rate of  $7\%$ . What up-front payment will be required to induce a counterparty to take the other side of this swap? Assume notional principal is 10 million.


25. Suppose the 1-year futures price on a stock-index portfolio is 3,828, the stock index currently is 3,800, the 1-year risk-free interest rate is 3\%, and the year-end dividend that will be paid on a \$3,800 investment in the market index portfolio is \$80.

$a$ . By how much is the contract mispriced?
b. Formulate a zero-net-investment arbitrage portfolio and show that you can lock in riskless profits equal to the futures mispricing.
c. Now assume (as is true for small investors) that if you short sell the stocks in the market index, the proceeds of the short sale are kept with the broker, and you do not receive any interest income on the funds. Is there still an arbitrage opportunity (assuming that you don't already own the shares in the index)? Explain.
d. Given the short-sale rules, what is the no-arbitrage band for the stock-futures price relationship? That is, given a stock index of 3,800, how high and how low can the futures price be without giving rise to arbitrage opportunities?

26. Consider these data for the S&P 500 future's contract maturing in, exactly one year. The S&P 500 index is at 4,290, and the contract price is  $F_{0} = 4,292$ .

a. If the current interest rate is  $2.5\%$ , and the average dividend rate of the stocks in the index is  $1.9\%$ , what fraction of the proceeds of stock short sales would need to be available to you to earn arbitrage profits?
$b$ . Suppose now that you in fact have access to  $90\%$  of the proceeds from a short sale. What is the lower bound on the futures price that rules out arbitrage opportunities?
c. By how much does the actual futures price fall below the no-arbitrage bound?
$d$ . Formulate the appropriate arbitrage strategy, and calculate the profits to that strategy.

1. Donna Doni, CFA, wants to explore potential inefficiencies in the futures market. The TOBEC stock index has a spot value of 185. TOBEC futures contracts are settled in cash and underlying contract values are determined by multiplying \$100 times the index value. The current annual risk-free interest rate is  $6.0\%$ .

a. Calculate the theoretical price of the futures contract expiring six months from now, using the cost-of-carry model. The index pays no dividends.
b. The total (round-trip) transaction cost for trading a futures contract is 15. Calculate the lower bound for the price of the futures contract expiring six months from now.

2. Suppose your client says, "I am invested in Japanese stocks but want to eliminate my exposure to this market for a period of time. Can I accomplish this without the cost and inconvenience of selling out and buying back in again if my expectations change?"

a. Briefly describe a strategy to hedge both the local market risk and the currency risk of investing in Japanese stocks.
$b$ . Briefly explain why the hedge strategy you described in part  $(a)$  might not be fully effective.

3. René Michaels, CFA, plans to invest 1 million in U.S. government cash equivalents for the next 90 days. Michaels's client has authorized her to use non-U.S. government cash equivalents, but only if the currency risk is hedged to U.S. dollars by using forward currency contracts.

a. Calculate the U.S. dollar value of the hedged investment at the end of 90 days for each of the two cash equivalents in the table below. Show all calculations.
$b$ . Briefly explain the theory that best accounts for your results.
c. On the basis of this theory, estimate the implied interest rate for a 90-day U.S. government cash equivalent.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/f07bc0833fc670a9b345153fc898438b8b3cdce95ae6b5613a2523b3c398aee1.jpg)

#### Interest Rates

#### 90-Day Cash Equivalents

<table><tr><td>Japanese government</td><td>7.6\%</td></tr><tr><td>Swiss government</td><td>8.6\%</td></tr></table>

#### Exchange Rates

#### Currency Units per U.S. Dollar

<table><tr><td></td><td>Spot</td><td>90-Day Forward</td></tr><tr><td>Japanese yen</td><td>133.05</td><td>133.47</td></tr><tr><td>Swiss franc</td><td>1.5260</td><td>1.5348</td></tr></table>

4. After studying Iris Hamson's credit analysis, George Davies is considering whether he can increase the holding-period return on Yucatan Resort's excess cash holdings (which are held in pesos) by investing those cash holdings in the Mexican bond market. Although Davies would be investing in a peso-denominated bond, the investment goal is to achieve the highest holding-period return, measured in U.S. dollars, on the investment.

Davies finds the higher yield on the Mexican 1-year bond, which is considered to be free of credit risk, to be attractive, but he is concerned that depreciation of the peso will reduce the holding-period return, measured in U.S. dollars. Hamson has prepared the following selected financial data to help Davies make the decision:

Selected Economic and Financial Data

<table><tr><td colspan="2">U.S. 1-year Treasury bond yield</td><td>2.5\%</td></tr><tr><td colspan="2">Mexican 1-year bond yield</td><td>6.5\%</td></tr><tr><td colspan="3">Nominal Exchange Rates</td></tr><tr><td>Spot</td><td>9.5000 pesos = U.S. \$1.00</td><td></td></tr><tr><td>1-year forward</td><td>9.8707 pesos = U.S. \$1.00</td><td></td></tr></table>

Hanson recommends buying the Mexican 1-year bond and hedging the foreign currency exposure using the 1-year forward exchange rate. Calculate the U.S. dollar holding-period return that would result from the transaction recommended by Hamson. Is the U.S. dollar holding-period return resulting from the transaction more or less than that available in the U.S.?

5. a. Pamela Itsuji, a currency trader for a Japanese bank, is evaluating the price of a 6-month Japanese yen/U.S. dollar currency futures contract. She gathers the following currency and interest rate data:

Japanese yen/U.S. dollar spot currency exchange rate ¥124.30/1.00

6-month Japanese interest rate (annualized) 0.10\%

6-month U.S. interest rate (annualized) 3.80\%

Calculate the theoretical price for a 6-month Japanese yen/U.S. dollar currency futures contract, using the data above.

b. Itsuji is also reviewing the price of a 3-month Japanese yen/U.S. dollar currency futures contract, using the currency and interest rate data shown below. Because the 3-month Japanese interest rate has just increased to .50\%, Itsuji recognizes that an arbitrage opportunity exists and decides to borrow 1 million to purchase Japanese yen. Calculate the yen arbitrage profit from Itsuji's strategy, using the following data:

Japanese yen/U.S. dollar spot currency exchange rate ¥124.30/1.00

New 3-month Japanese interest rate  $0.50\%$

3-month U.S. interest rate 3.50\%

3-month currency futures contract value ¥123.2605/1.00

6. Janice Delsing, a U.S.-based portfolio manager, manages an \$800 million portfolio (\$600 million in stocks and \$200 million in bonds). In reaction to anticipated short-term market events, Delsing wishes to adjust the allocation to 50\% stock and 50\% bonds through the use of futures. Her position will be held only until "the time is right to restore the original asset allocation." Delsing determines a financial futures-based asset allocation strategy is appropriate. The stock futures index multiplier is \$50 and the denomination of the bond futures contract is 100,000. Other information relevant to a futures-based strategy is as follows:

Bond portfolio modified duration 5 years

Bond portfolio yield to maturity 7\%

Price value of a basis point of bond futures  $\$ {97.85}$

Stock-index futures price 4,134

Stock portfolio beta 1.0 a. Describe the financial futures-based strategy needed and explain how the strategy allows Delsing to implement her allocation adjustment. No calculations are necessary.

b. Compute the number of each of the following needed to implement Delsing's asset allocation strategy. (You can assume that investors can hold fractional positions in futures contracts.) i. Bond futures contracts.

ii. Stock-index futures contracts.

7. Use the following information to solve this problem.

<table><tr><td>Issue</td><td>Price</td><td>Yield to Maturity</td><td>Modified Duration*</td></tr><tr><td>U.S. Treasury bond 113¼\% maturing Nov. 15, 2035</td><td>100</td><td>11.75\%</td><td>7.6 years</td></tr><tr><td>U.S. Treasury long bond futures contract (contract expiration in 6 months)</td><td>63.33</td><td>11.85\%</td><td>8.0 years</td></tr><tr><td>XYZ Corporation bond 12½\% maturing June 1, 2030 (sinking fund debenture, rated AAA)</td><td>93</td><td>13.50\%</td><td>7.2 years</td></tr><tr><td colspan="4">Volatility of AAA corporate bond yields relative to U.S. Treasury bond yields = 1.25 to 1.0 (1.25 times)</td></tr><tr><td colspan="4">Assume no commission and no margin requirements on U.S. Treasury long bond futures contracts. Assume no taxes.</td></tr><tr><td colspan="4">One U.S. Treasury bond futures contract is a claim on 100,000 par value long-term U.S. Treasury bonds.</td></tr></table>

*Modified duration = Duration/(1 + y).

Situation A A fixed-income manager holding a 20 million market value position of U.S. Treasury 113/4\% bonds maturing November 15, 2035, expects the economic growth rate and the inflation rate to be above market expectations in the near future. Institutional rigidities prevent any existing bonds in the portfolio from being sold in the cash market.

Situation B The treasurer of XYZ Corporation has recently become convinced that interest rates will decline in the near future. He believes it is an opportune time to purchase his company's sinking fund bonds in advance of requirements because these bonds are trading at a discount from par value. He is preparing to purchase in the open market  \$20 million par value XYZ Corporation 12½\% bonds maturing June 1, 2030. A\$ 20 million par value position of these bonds is currently offered in the open market at 93. Unfortunately, the treasurer must obtain approval from the board of directors for such a purchase, and this approval process can take up to two months. The board of directors' approval in this instance is only a formality.

For each of these two situations, demonstrate how interest rate risk can be hedged using the Treasury bond futures contract. Show all calculations, including the number of futures contracts used.

8. Why might individuals purchase futures contracts rather than the underlying asset?

9. Are the following statements true or false? Why?

a. All else equal, the futures price on a stock index with a high dividend yield should be higher than the futures price on an index with a low dividend yield.
b. All else equal, the futures price on a high-beta stock should be higher than the futures price on a low-beta stock.
$c$ . The beta of a short position in the S&P 500 futures contract is negative.

10. What is the difference between the futures price and the value of the futures contract?

11. You ran a regression of the yield of KC Company's 10-year bond on the 10-year U.S. Treasury benchmark's yield using month-end data for the past year. You found the following result:

$$
\text{Yield}_{KC} = 0.54 + 1.22 \text{Yield}_{Treasury}
$$ where  $\mathrm{Yield}_{\mathrm{KC}}$  is the yield on the KC bond and  $\mathrm{Yield}_{\mathrm{Treaty}}$  is the yield on the U.S. Treasury bond. The modified duration on the 10-year U.S. Treasury is 7.0 years, and modified duration on the KC bond is 6.93 years.


a. Calculate the percentage change in the price of the 10-year U.S. Treasury, assuming a 50-basis-point change in the yield on the 10-year U.S. Treasury.
b. Calculate the percentage change in the price of the KC bond, using the regression equation above, assuming a 50-basis-point change in the yield on the 10-year U.S. Treasury.

### E-Investments Exercises

Go to the Chicago Mercantile Exchange Web site (www.cmegroup.com) and link to the tab for Markets, then Foreign Exchange (FX). Click on Trade FX Options, and then on the EUU monthly euro/dollar option. This will bring up the contract specifications.

What is the size (number of euros) of each contract?

What is the tick size (minimum price increment) for the contract?

What time period during the day is the contract traded?

If the delivery option is exercised, when and where does delivery take place?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/19529b2623cb2001e377ea3ebdaf8a6aea4893ced51c5ac967a1ecb144a331da.jpg)

### Solutions to Concept Checks

1. According to interest rate parity, F 0 should be 1.3386. Because the futures price is too high, we should reverse the arbitrage strategy just considered.

<table><tr><td></td><td>CF Now ($)</td><td>CF in 1 Year</td></tr><tr><td>1. Borrow \$1.30 in the U.S. Convert to 1 U.K. pound.</td><td>+1.30</td><td>-1.30(1.04)</td></tr><tr><td>2. Lend the 1 pound in the U.K.</td><td>-1.30</td><td>1.01E1</td></tr><tr><td>3. Enter a contract to sell 1.01 pounds at a futures price of $1.35/£.</td><td>0</td><td>£1.01($1.35/£ - E1)</td></tr><tr><td>Total</td><td>0</td><td>$.0115</td></tr></table>

2. Because the firm does poorly when the dollar depreciates, it hedges with a futures contract that will provide profits when the dollar declines. It needs to enter a long position in pound futures, which means that it will earn profits on the contract when the futures price increases, that is, when more dollars are required to purchase one pound. The specific hedge ratio is determined by noting that if the number of dollars required to buy one pound rises by $.05, profits decrease by \$200,000 at the same time that the profit on a long future contract would increase by $.05 × 62,500 = $3,125. The hedge ratio is

$$
\frac{\$200,000 \text{ per } \$0.05 \text{ depreciation in the dollar}}{\$3,125 \text{ per contract per } \$0.05 \text{ depreciation}} = 64 \text{contracts long}
$$

3. Each \$1 increase in the price of corn reduces profits by \$1 million. Therefore, the firm needs to enter futures contracts to purchase 1 million bushels at a price stipulated today. The futures position will profit by \$1 million for each increase of \$1 in the price of corn. The profit on the contract will offset the lost profits on operations.

<table><tr><td>4.</td><td>In General
(per unit of index)</td><td>Our Numbers</td></tr><tr><td>Hold 25,000 units of indexed stock portfolio with
S0 = 4,000.</td><td>ST</td><td>25,000 ST</td></tr><tr><td>Sell 500 contracts.</td><td>FO - ST</td><td>500 × \$50 × (4,040 - ST)</td></tr><tr><td>Total</td><td>FO</td><td>\$101,000,000</td></tr></table>

The net cash flow is riskless and provides a  $1\%$  monthly rate of return, equal to the risk-free rate.

5. The price value of a basis point is still \$9,000, as a 1-basis-point change in the interest rate reduces the value of the \$20 million portfolio by .01\% × 4.5 = .045\%. Therefore, the number of futures needed to hedge the interest rate risk is the same as for a portfolio half the size with double the modified duration.

6.

<table><tr><td></td><td colspan="3">SOFR</td></tr><tr><td>Cash flow to the firm</td><td>7\%</td><td>8\%</td><td>9\%</td></tr><tr><td>As bond issuer, firm pays (SOFR × \$10 million)</td><td>-700,000</td><td>-800,000</td><td>-900,000</td></tr><tr><td>As fixed payer on the swap, firm receives \$10 million × (SOFR – 0.08)</td><td>-100,000</td><td>0</td><td>+100,000</td></tr><tr><td>Net cash flow</td><td>-800,000</td><td>-800,000</td><td>-800,000</td></tr></table>

Regardless of the SOFR rate, the firm's net cash outflow equals  $.08 \times$  principal, just as if it had issued a fixed-rate bond with a coupon of  $8\%$ .

7. The manager would like to hold on to the money market securities because of their attractive relative pricing compared to other short-term assets. However, there is an expectation that rates will fall. The manager can hold this particular portfolio of short-term assets and still benefit from the drop in interest rates by entering a swap to pay a short-term interest rate and receive a fixed interest rate. The resulting synthetic fixed-rate portfolio will increase in value if rates do fall.

<table><tr><td>8.</td><td colspan="3"></td></tr><tr><td></td><td>Time 0(Bonds issued)</td><td>Years 1-5(Coupons paid)</td><td>Year 5(Bonds mature)</td></tr><tr><td>Issue dollar note, par value\$140 million, coupon rate = 4\%</td><td>+$140</td><td>-0.04 × $140</td><td>-\$140</td></tr><tr><td>Purchase pound note, par value =£100 million, coupon rate = 5\%</td><td>-£100 = 140</td><td>0.05 × £100</td><td>+£100</td></tr><tr><td>Net cash flow</td><td>0</td><td>£5.00 – £5.60</td><td>£100 – £140</td></tr></table>

9. Stocks offer a total return (capital gain plus dividends) large enough to compensate investors for the time value of the money tied up in the stock. Agricultural prices do not necessarily increase over time. In fact, across a harvest, crop prices will fall. The returns necessary to make storage economically attractive are lacking.

10. If systematic risk were higher, the appropriate discount rate,  $k$ , would increase. Referring to Equation 23.4, we conclude that  $F_0$  would fall. Intuitively, the claim to 1 pound of orange juice is worth less today if its expected price is unchanged, while the risk associated with the value of that claim increases. Therefore, the amount investors are willing to pay today for future delivery is lower.


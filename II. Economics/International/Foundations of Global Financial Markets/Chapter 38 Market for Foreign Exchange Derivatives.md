---
title: "Market for Foreign Exchange Derivatives"
parent_directory: "Foundations of Global Financial Markets"
formatted: "2025-12-21 07:15:00 PM"
formatter_model: "grok-code-fast-1"
cli_tool: "opencode"
primary_tags:
secondary_tags:
cssclasses: academia
primary_tags:
- explains spot exchange rate
- fx market includes spot
- futures contracts currency option
- counterparty agreeing sell underlying
secondary_tags:
- market foreign exchange derivatives
- exchanges fx forward market
- objectives fx forward contracts
- foreign exchange derivatives contents
- pricing fx futures contracts
- contracts fx swaps
- fx risk topic covered
- currency swap maturity
- market facts fx markets
tags_extracted: '2025-12-18T00:28:36.992602'
---

# Market for Foreign Exchange Derivatives



## Learning Objectives

After reading this chapter, you will understand:

- the different instruments for hedging foreign exchange (FX) risk: forward contracts, futures contracts, options, and swaps;
- the limitations of forward contracts and futures contracts for hedging long-dated FX risk;
- how a forward exchange rate is determined;
- what interest rate parity is;
- what is covered interest arbitrage is;
- what an FX swap is;
- what a currency swap is; and
- the motivation for using swaps.

The foreign exchange (FX) market includes the spot (cash) market and the derivatives market. Two facts about FX markets highlighted in chapter 19 are worth repeating here. First, more than half of the transactions in the FX market are in the derivatives sector of the market. Second, the major motivation for trades in the FX market is financial transactions by investors.

Chapter 19 covered the FX spot market. FX derivatives are the subject of this chapter. These instruments include forward contracts, futures contracts, options, and swaps. An important theoretical relationship, referred to as "interest rate parity," explains how the spot exchange rate and the interest rates in two countries determine the forward exchange rate of their currencies. We do not review here FX risk, because this topic was covered at the end of chapter 19.

## FX Forward Contracts

As explained in chapter 33, forward contracts require one party to buy the underlying and the counterparty agreeing to sell that underlying for a specific price at a designated date in the future. Here we consider forward contracts in which the underlying is FX. In the FX market, such forward contracts are also referred to as outright forwards. In chapter 34, we explained that unlike a futures contract, which is traded on an exchange, a forward contract is an over-the-counter (OTC) derivative.

In general, forward contracts involve physical delivery if the contract is not closed out prior to the settlement date. In the FX market, there are nondeliverable forwards, for which only a cash settlement takes place at the settlement date. These contracts are typically used for emerging markets because of the absence of liquidity for FX forward contracts, but they are now increasingly used for major currencies.

Most FX forward contracts have a maturity of less than two years. Longer-dated forward contracts have relatively large bid-ask spreads; that is, the size of the bid-ask spread for a given currency increases with the maturity of the contract. Consequently, forward contracts are not attractive for hedging long-dated FX exposure.

As chapter 33 emphasizes, both forward contracts and futures contracts can be used to lock in a certain price, which in this case would be the FX rate. By locking in a rate and eliminating downside risk, the user forgoes the opportunity to benefit from any advantageous FX rate movement. Futures contracts, which are creations of an exchange, have certain advantages over forward contracts in many cases, such as stock indexes and Treasury securities. In contrast, for FX, the forward market is the market of choice, and trading there is much larger than trading on exchanges. However, because the FX forward market is an interbank market, reliable information on the number of open contracts (commitments) outstanding at any time, or open interest, is not publicly available.

As explained in chapter 19, the Bank for International Settlements publishes the results of its survey of FX market transactions every three years. The latest survey as of this writing, the publication, 2016 Triennial Central Bank Survey, provides a breakdown of cash and derivatives turnover. The results of the 2016 survey are shown in table 38.1. We discussed the average daily trading for the FX spot market in chapter 19.

Table 38.1 Global FX derivative daily turnover, 2016 (billions of U.S. dollars).

<table><tr><td>Type of FX Transaction</td><td>Daily Turnover</td></tr><tr><td>All FX transactions</td><td>5,067</td></tr><tr><td>Spot transactions</td><td>1,652</td></tr><tr><td>Outright forwards</td><td>600</td></tr><tr><td>FX swaps</td><td>2,378</td></tr><tr><td>Currency swaps</td><td>82</td></tr><tr><td>FX Options</td><td>254</td></tr></table>

## Pricing FX Forward Contracts

In chapter 35, we showed the relationship between spot prices and forward prices and explained how arbitrage ensures that the relationship holds. We now apply similar considerations to the pricing of FX futures contracts on the basis of the spot exchange rate using an extended example.

Consider a U.S. investor with a one-year investment horizon who has two choices:

Alternative 1: Deposit 100,000 in a U.S. bank that pays 7\% compounded annually for one year.

Alternative 2: Deposit in a bank in country X the U.S. dollar equivalent of 100,000 in country X's currency that pays 9\% compounded annually for one year.

The two alternatives and their outcomes one year from now are depicted in figure 38.1. Which is the better alternative? It will be the alternative that produces the most U.S. dollars one year from now. Ignoring U.S. and country X's taxes on interest income or any other taxes, we need to know two things in order to determine the better alternative: (1) the spot exchange rate between U.S. dollars and country X's currency and (2) the spot exchange rate one year from now between U.S. dollars and country X's currency. The former is known; the latter is not.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f9e2019c-3d5c-44b5-bba3-9b7de83643f5/fefc174acfed5b339d915b0817efbef674c4a9544b192e8b5c6d8a82e8ae8f7c.jpg)

Figure 38.1 Outcome of two alternatives: determination of theoretical forward rate. Note: CX, unit of currency for Country X.

However, we can determine the spot rate one year from now between U.S. dollars and country X's currency that will make the investor indifferent between the two alternatives.

Alternative 1: The amount of U.S. dollars available one year from now would be  $\ {107},{000}\left( {$  {100},{000} \times  {1.07}}\right)  .

Alternative 2: Assume that the spot rate is  \$0.6558 for one unit of country X's currency at this time. We denote country X's currency by CX. Then, ignoring commissions,\$ 100,000 can be exchanged for CX 152,486 (100,000/6,558). The amount of country X's currency available at the end of one year would be CX 166,210 (CX 152,476 × 1.09).

The number of U.S. dollars for which CX 166,210 can be exchanged depends on the exchange rate one year from now. Let  $F$  denote the exchange rate between these two currencies one year from now. Specifically,  $F$  denotes the number of U.S. dollars that can be exchanged for one CX. Thus, the number of U.S. dollars at the end of one year from the second alternative is:

Amount in U.S. dollars one year from now = CX 166,210 × F.

The investor will be indifferent between the two alternatives if the number of U.S. dollars is 107,000:

$$
\$ 107,000 = \mathrm{CX} 1 6 6,2 1 0 \times F.
$$

Solving, we find that  F  is equal to 0.6438. Thus, if one year from now, the spot exchange rate is 0.6438 for one unit of country X's currency, then the two alternatives will produce the same number of U.S. dollars. If more than 0.6438\$ can be exchanged for one unit of country X's currency, then the investor receives more than \$107,000 at the end of one year. An exchange rate of \$0.6500 for one unit of country X's currency, for example, would produce $108,037 (CX 166,210 × $0.6500). The opposite is true if less than $0.6438$ can be exchanged for one unit of country X's currency. For example, if the future exchange rate is \$0.6400, the investor would receive $106,374 (CX 166,210 × $0.6400).

Let us now look at this situation from the perspective of an investor in country X. Suppose that an investor in country X with a one-year investment horizon has two alternatives:

Alternative 1: Deposit CX 152,486 in a bank in country X that pays  $9\%$  compounded annually for one year.

Alternative 2: Deposit the equivalent of CX 152,486 in U.S. dollars in a U.S. bank that pays  $7\%$  compounded annually for one year.

Once again, assume that the spot exchange rate is  \$0.6558 for one unit of country X's currency. The investor in country X will select the alternative that generates the most CX at the end of one year. The first alternative would generate CX 166,210 (CX 152,486 × 1.09). The second alternative requires that CX be exchanged for U.S. dollars at the spot exchange rate at this time. Given the spot exchange rate assumed, CX 152,486 can be exchanged for$ 100,000 (CX 152,486 × $0.6558). At the end of one year, the second alternative would generate \$107,000 (100,000 × 1.07). Letting F continue to denote the number of U.S. dollars in country X, following alternative 2 would realize the following amount of country X's currency one year from now:

Amount of country X's currency one year from now = 107,000/F.

The investor will be indifferent between the two alternatives if  \ {107},{000}/F = \mathrm{{CX}}{166},{210}  .

The equation yields a value for  $F$  of 0.6438, the same exchange rate that we found when we sought the exchange rate one year from now that would make the U.S. investor indifferent between the two alternatives facing that investor.

Now suppose that a dealer quotes a one-year forward exchange rate between the two currencies. The one-year forward exchange rate fixes today the exchange rate one year from now. Thus, if the one-year forward exchange rate quoted is  \$0.6438 for one unit of country X's currency, investing in the bank in country X will provide no arbitrage opportunity for the U.S. investor. If the one-year forward rate quoted is more than\$ 0.6438 for one unit of country X's currency, the U.S. investor can arbitrage the situation by selling country X's currency forward (and buying U.S. dollars forward for CX).

To see how this arbitrage opportunity can be exploited, suppose that the one-year forward exchange rate is  \$0.6500 for one unit of country X's currency. Also, assume that the borrowing and the lending rates in each currency's country are the same. Suppose that the U.S. investor borrows\$ 100,000 for one year at 7\% compounded annually and enters into a forward contract agreeing to deliver CX 166,210 1 year from now at \$0.6500 per CX. That is, one year from now, the investor agrees to deliver CX 166,210 in exchange for \$108,037 (CX 166,210 × 0.6500).

The  \$100,000 that was borrowed can be exchanged for CX 152,486 at the spot rate of\$ 0.6558 to one unit of country X's currency, which can be invested in country X at 9\%. One year from now, the U.S. investor will have CX 166,210 from the investment in country X, which can be delivered against the forward contract. The U.S. investor will receive \$108,037 and repay \$107,000 to satisfy the bank loan, netting \$1,037. Assuming that the counterparty to the forward contract does not default, this riskless arbitrage situation results in a \$1,037 profit generated with no initial investment. This riskless profit will prompt many arbitrageurs to follow this strategy and will, obviously, result in the U.S. dollar rising relative to country X's currency in the forward exchange-rate market, or possibly some other adjustment.

However, if the one-year forward exchange rate quoted is less than  \$0.6438, an investor in country X can arbitrage the situation by buying CX forward (and by selling U.S. dollars forward). This riskless arbitrage again leads arbitrageurs to act, with the result that the forward exchange rate of U.S. dollars relative to CX falls.[2] The conclusion of this argument is that the one-year forward exchange rate must be\$ 0.6438, because any other forward exchange rate would result in an arbitrage opportunity for either the U.S. investor or the investor in country X.

Thus, the spot exchange rate and the interest rates in two countries determine the forward exchange rate of their currencies. The relationship among the spot exchange rate, the interest rates in two countries, and the forward rate is called interest rate parity. The parity relationship implies that an investor, by hedging in the forward exchange-rate market, realizes the same domestic return whether investing domestically or in a foreign country. The arbitrage process that forces interest rate parity is called covered interest arbitrage.

Mathematically, interest rate parity between the currencies of two countries, A and B, can be expressed in this way:

Let

$I =$  amount of A's currency to be invested for a time period of length  $t$ ,

$S =$  spot exchange rate: the price of foreign currency in terms of domestic currency (units of domestic currency per unit of foreign currency),

$F = t$ -period forward rate: the price of foreign currency  $t$  periods from now,

$i_{\mathrm{A}} =$  interest rate on an investment maturing at time  $t$  in country A,

$i_{\mathrm{B}} =$  interest rate on an investment maturing at time  $t$  in country B.

Then

$$
I (1 + i_{\mathrm{A}}) = (I / S) (1 + i_{\mathrm{B}}) F.
$$

To illustrate, let country A be the United States and country B represent country X. In our example, we have:

$I = \$  100,000$ for one year,

$$
S = \$ 0.6558,
$$

$$
F = \$ 0.6438,
$$

$$ i_{\mathrm{A}} = 0. 0 7,
$$

$$ i_{\mathrm{B}} = 0. 0 9.
$$

Then, according to interest rate parity, this relationship holds:

$$
\$ 100,000 (1.07) = (\$ 100,000 / \$ 0.6558) (1.09) (\$ 0.6438),
$$

$$
\$ 107,000 = \$ 107,005,
$$ where the 5 difference is due to rounding.


Interest rate parity can also be expressed as:

$$

(1 + i_{\mathrm{A}}) = (F / S) (1 + i_{\mathrm{B}}).

$$

Rewriting the equation, we obtain the theoretical forward rate implied by the interest rates and spot exchange rate:

$$

F = S \left(\frac{1 + i_{A}}{1 + i_{B}}\right).

$$

Although we have referred so far to investors, we could use borrowers as well to illustrate interest rate parity. A borrower has the choice of obtaining funds in a domestic or foreign market. Interest rate parity ensures that a borrower who hedges in the forward exchange-rate market realizes the same domestic borrowing rate whether borrowing domestically or in a foreign country.

To derive the theoretical forward exchange rate using the arbitrage argument, we made several assumptions. When the assumptions are violated, the actual forward exchange rate may deviate from the theoretical forward exchange rate. First, when deriving the theoretical forward exchange rate, we assumed that the investor faced no commissions or bid-ask spread when exchanging in the spot market today and at the end of the investment horizon. In practice, investors incur such costs, which cause the actual forward exchange rate to be plus or minus a small amount of the theoretical rate.

Second, we assumed that the borrowing and lending rates in each currency are the same. Dropping this unrealistic assumption eliminates the possibility of a single theoretical forward exchange rate and instead implies a band around a level reflecting borrowing and lending rates. The actual rate should be within this band.

Third, we ignored taxes. In fact, the divergence between actual and theoretical forward exchange rates can be the result of the different tax structures of the two countries. Finally, we assumed that arbitrageurs can borrow and invest in another country as much as they want to exploit mispricing in the exchange market. It should be noted, however, that any restrictions on foreign investing or borrowing in each country impede arbitrage and may cause a divergence between actual and theoretical forward exchange rates.

To derive the interest rate parity, we looked at the interest rates in both countries. In fact, market participants in most countries look to one interest rate to perform covered interest arbitrage, and that is the interest rate in the Eurocurrency market. The Eurocurrency market is the name of the unregulated and informal market for bank deposits and bank loans denominated in a currency other than that of the country where the bank initiating the transaction is located. Examples of transactions in the Eurocurrency market are a British bank in London that lends U.S. dollars to a French corporation, and a Japanese corporation that deposits Swiss francs in a German bank. An investor seeking covered interest arbitrage will accomplish it with short-term borrowing and lending in the Eurocurrency market.

The largest sector of the Eurocurrency market involves bank deposits and bank loans in U.S. dollars and is called the "Eurodollar market." The seed for the Eurocurrency market was, in fact, the Eurodollar market. As international capital market transactions increased, the market for bank deposits and bank loans in other currencies developed.

## FX Futures Contracts

As explained in chapter 35, futures contracts are exchange-traded products, as opposed to forward contracts, which are OTC contracts. In the case of FX futures contracts, the major exchange is the Chicago Mercantile Exchange (CME). The FX rates traded are those between the U.S. dollar and the currencies of the following countries: Australia, Belgium, Canada, Japan, New Zealand, Norway, Switzerland, the United Kingdom, and Sweden. In addition, there are futures contracts in which the underlying is a cross-rate pair (i.e., an FX rate that does involve the local currency). For example, for a U.S. investor, the FX rate between the euro and Japanese yen would be a cross-rate pair. There are futures contracts on the following cross-rates: the Swiss franc/Japanese yen exchange rate, the euro/Canadian dollar exchange rate, and the British pound/Japanese yen exchange rate. Futures contracts are also available for emerging market currency pairs with the U.S. dollar and the following four currencies: the Brazilian real, the Czech koruna, the

Israeli shekel, and the Hungarian forint. Cross-rate pairs are also available with the euro.

The amount of each foreign currency that must be delivered for a contract varies by currency. For example, the British pound futures contract calls for delivery of 62,500 pounds, the Japanese yen futures contract calls for delivery of 12.5 million yen, and the euro futures contract calls for delivery of €125,000. "E-micro" contracts provide for one-tenth of the contract size. The maturity cycle for currency futures is March, June, September, and December. The longest maturity is one year. Consequently, as in the case of a currency forward contract, currency futures do not provide a good vehicle for hedging long-dated FX risk exposure.

## Currency Option Contracts

In contrast to a forward or futures contract, an option gives the option buyer the opportunity to benefit from favorable exchange-rate movements but establishes a maximum loss. The option price is the cost of arranging such a risk/return profile.

The two types of foreign currency options are options on the foreign currency and futures options. The latter are options to enter into FX futures contracts. (We describe the features of futures options in chapter 34.) Futures options are traded on the CME, the trading location of the FX futures contracts.

Options on foreign currencies have been traded on the Nasdaq QMX. The foreign currency pairs that are currently traded are the U.S. dollar and the following: Australian dollar, British pound, Canadian dollar, euro, Japanese yen, Swiss franc, and New Zealand dollar. The exercise style is European (i.e., the option buyer can only exercise at the expiration date). The number of units of foreign currency underlying each option contract is 10,000 units of the currency except for the Japanese yen, for which it is JPY one million.

The factors that affect the price of any option are discussed in chapter 35. One key factor is the expected volatility of the underlying over the life of the option. In the case of currency options, the underlying is the foreign currency specified by the option contract. So, the volatility that affects the option's value is the expected volatility of the exchange rate between the two currencies from the present time to the expiration of the option. The strike price also is an exchange rate, and it affects the option's value: the higher the strike price is, the lower the value of a call will be, and the higher the value of a put. Another factor that influences the option price is the relative risk-free interest rate in the two countries.


## FX Swaps and Currency Swaps

In chapter 37 we discussed interest rate swaps—a transaction in which two counterparties agree to exchange interest payments with no exchange of principal. The FX market has two types of swaps: FX swaps and currency swaps. As can be seen from table 38.1, currency swaps are a small part of the derivatives market. In contrast, FX swaps are the largest part of the derivatives market. Moreover, FX swap transactions exceed spot transactions in number.

## FX Swaps

To see how a company may use an FX swap, assume the following:
- A U.S. manufacturing firm operating primarily in the United States has generated revenue of €1 million.
- The company's management needs the revenue generated in euros for its U.S. operations to be paid in U.S. dollars.
- The company's management knows that four months from now, it will need to pay suppliers of material in Europe €1 million.

Because of the second assumption, management cannot simply hold euros for the four months. Consider two of the possible alternatives available to management for dealing with the €1 million that must be paid four months from now:

Alternative 1: Sell €1 million today in exchange for U.S. dollars. The number of U.S. dollars received will be based on the spot FX rate. In four months, purchase €1 million at the spot FX rate for euro/U.S. dollar at that time.

Alternative 2: Sell to a bank €1 million today in exchange for U.S. dollars at the spot FX rate and simultaneously agree to repurchase from the bank €1 million at today's forward FX rate.

Let's look at the FX risk associated with alternative 1. In four months when the company must acquire €1 million, the FX rate between euros and U.S. dollars is unknown. More specifically, if the U.S. dollar depreciates relative to the euro, it will cost the company more U.S. dollars to acquire euros. With alternative 2, FX risk has been eliminated, because the company has locked in a specific FX rate by agreeing to purchase €1 million at the forward rate at the time the transaction is entered into.

Let's take a closer look at these two alternatives. Alternative 1 involves two transactions at spot rates, which is what results in the FX risk. In contrast, alternative 2 involves two simultaneous transactions, one at the spot rate and the other at the forward rate. Consequently, alternative 2 is effectively an arrangement for hedging FX risk. However, the transaction involves two transaction costs.

Suppose that the company can enter into one agreement that covers both transactions in alternative 2. Well there is such an agreement: That is precisely what an FX swap is. Given our understanding of alternative 2, we can now define an FX swap: It is an agreement whereby one party agrees to sell to a counterparty a specified amount of a currency based on the current FX spot rate and simultaneously agrees at a specified future date to buy the same amount of that currency at the current FX forward rate.

Note that an FX swap still involves risk, because we are dealing with an OTC derivative. That is, although the FX risk may be hedged, there is counterparty risk.

## Currency Swaps

In a currency swap, both interest and principal are exchanged. The best way to explain a currency swap is with an illustration.

Assume that two companies, a U.S. company and a Swiss company, each seek to borrow for 10 years in its domestic currency. The U.S. company seeks U.S. 100 million debt, and the Swiss company seeks debt in the amount of CHF 127 million. For reasons that we explore later, let's suppose that each wants to issue 10-year bonds in the bond market of the other country, and those bonds are denominated in the other country's currency. That is, the U.S. company wants to issue the Swiss franc equivalent of U.S. 100 million in Switzerland, and the Swiss company wants to issue the U.S. dollar equivalent of CHF 127 million in the United States.


Let's also assume the following:

1. At the time when both companies want to issue their 10-year bonds, the spot exchange rate between the U.S. dollar and CHF is one U.S. dollar for 1.27 Swiss francs.
2. The coupon rate that the U.S. company would have to pay on the 10-year, Swiss franc-denominated bonds issued in Switzerland is  $6\%$ .
3. The coupon rate that the Swiss company would have to pay on the 10-year, U.S. dollar-denominated bonds issued in the United States is  $11\%$ .

By the first assumption, if the U.S. company issues the bonds in Switzerland, it can exchange the CHF 127 million for U.S. \$100 million. By issuing U.S. \$100 million of bonds in the United States, the Swiss company can exchange the proceeds for CHF 127 million. Therefore, both get the amount of financing they seek. Assuming the coupon rates given by the last two assumptions, and assuming for purposes of this illustration that coupon payments are made annually, the cash outlays that the companies must make for the next 10 years are summarized as follows:

<table><tr><td>Year</td><td>U.S. Company (in CHF)</td><td>Swiss Company (in U.S. $)</td></tr><tr><td>1–10</td><td>7,620,000</td><td>11,000,000</td></tr><tr><td>10</td><td>127,000,000</td><td>100,000,000</td></tr></table>

Each issuer faces the risk that, at the time a payment on its liability must be made, its domestic currency will have depreciated relative to the other currency. Such a depreciation would require a greater outlay of the domestic currency to satisfy the liability. That is, both firms are exposed to FX risk.

In a currency swap, the two companies issue bonds in the other's bond market and enter into an agreement requiring that:

1. The two parties exchange the proceeds received from the sale of the bonds.
2. The two parties make the coupon payments to service the debt of the other party.
3. At the termination date of the currency swap (which coincides with the maturity of the bonds), both parties agree to exchange the par value of the bonds.

In our illustration, these arrangements result in the following:

1. The U.S. company issues 10-year,  $6\%$  coupon bonds with a par value of CHF 127 million in Switzerland and gives the proceeds to the Swiss company. At the same time, the Swiss company issues 10-year,  $11\%$  bonds with a par value of U.S. 100 million in the United States and gives the proceeds to the U.S. company.
2. The U.S. company agrees to service the coupon payments to the Swiss company by paying the U.S. 11,000,000 per year for the next 10 years to the Swiss company: the Swiss company agrees to service the coupon payments of the U.S. company by paying CHF 7,620,000 for the next 10 years to the U.S. company.
3. At the end of 10 years (the termination date of this currency swap and the maturity of the two bond issues), the U.S. company would pay U.S. 100 million to the Swiss company, and the Swiss company would pay CHF 127 million to the U.S. company.

This complex agreement is diagrammed in figure 38.2.

Figure 38.2
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f9e2019c-3d5c-44b5-bba3-9b7de83643f5/ac30d22d86ef0a8dacab1d58a935a8be8ac3bb245699cd571af959da40689bee.jpg)
A currency swap example.

Now let's assess what this transaction accomplishes. Each party received the amount of financing it sought. The U.S. company's coupon payments are in dollars, not Swiss francs; the Swiss company's coupon payments are in Swiss francs, not U.S. dollars. At the termination date, both parties will receive an amount sufficient in their local currency to pay off the holders of their bonds. With the coupon payments and the principal repayment in their local currency, neither party faces FX risk.

In practice, the two companies would not deal directly with each other. Instead, either a commercial bank or an investment banking firm would function as an intermediary (as either a broker or dealer) in the transaction. As a broker, the intermediary would simply bring the two parties together, receiving a fee for the service. If instead the intermediary served as a dealer, it would not only bring the two parties together but would also guarantee payment to both parties. Thus, if one party were to default, the counterparty would continue to receive its payments from the dealer. Of course, in this arrangement, both parties are concerned with the credit risk of the dealer. When the currency swap market started, transactions were typically brokered. The more prevalent arrangement today is that the intermediary acts as a dealer.


As we explained in chapter 37, an interest rate swap is nothing more than a package of forward contracts. The same is true for a currency swap: It is simply a package of currency forward contracts.

Currency coupon swap In our illustration, we assumed that both parties made fixed cash flow payments. Suppose instead that one of the parties sought floating-rate rather than fixed-rate financing. Returning to the same illustration, let's assume that instead of fixed-rate financing, the Swiss company wanted LIBOR-based financing. In this case, the U.S. company would issue floating-rate bonds in Switzerland. Suppose that it could do so at a rate of LIBOR plus 50 basis points. Because the currency swap would call for the Swiss company to service the coupon payments of the U.S. company, the Swiss company would make annual payments of LIBOR plus 50 basis points. The U.S. company would still make fixed-rate payments in U.S. dollars to service the debt obligation of the Swiss company in the United States. Now, however, the Swiss company would make floating-rate payments  $(\mathrm{LIBOR} + 50$  basis points) in Swiss francs to service the debt obligation of the U.S. company in Switzerland.

Currency swaps in which one of the parties pays a fixed rate and the counterparty pays a floating rate are called currency coupon swaps.

Reasons for development of the currency swap market Why would companies find a currency swap beneficial? In a global financial market without the market imperfections of regulations, taxes, and transaction costs, the cost of borrowing should be the same whether the issuer raises funds domestically or in any foreign capital market. In a world with market imperfections, it may be possible for an issuer to reduce its borrowing cost by borrowing funds denominated in a foreign currency and hedging the associated exchange-rate risk, also known as an arbitrage opportunity. The currency swap allows borrowers to capitalize on any such arbitrage opportunities.


Prior to the establishment of the currency swap market, capitalizing on such arbitrage opportunities required use of the currency forward market. The market for long-dated forward exchange-rate contracts is thin, however, which increases the cost of eliminating FX risk. Eliminating FX risk in our U.S.-Swiss illustration would have required each issuer to enter 10 currency forward contracts (one for each yearly cash payment that the issuer was committed to make in the foreign currency). The currency swap provides a more transactionally efficient means for protecting against FX risk when an issuer (or its investment banker) identifies an arbitrage opportunity and seeks to benefit from it.

As the currency swap market developed, the arbitrage opportunities for reduced funding costs that were available in the early days of the swap market became less common. In fact, it was the development of the swap market that reduced arbitrage opportunities. When these opportunities do arise, they last for only a short time, usually less than a day.

As another motivation for currency swaps, some companies seek to raise funds in foreign countries as a means of increasing their recognition by foreign investors, even though the cost of funding is the same as in the United States. The U.S. company in our illustration might be seeking to expand its potential sources of future funding by issuing bonds today in Switzerland.

## Key Points
- FX derivative instruments include forward contracts (outright forward contracts), futures contracts, options, and swaps.
- Nondeliverable forwards are cash settlement at the settlement date rather than physical delivery.
- Most FX forward contracts have a maturity of less than two years.
- Longer-dated forward contracts have relatively large bid-ask spreads, and therefore, forward contracts are not attractive for hedging long-dated FX exposure.
- Interest rate parity determines the relationship among the spot exchange rate, the interest rates in two countries, and the forward rate.
- Interest rate party is ensured by the application of covered interest arbitrage.
- Interest rate parity implies that investors and borrowers who hedge in the forward exchange-rate market will realize the same domestic return or face the same domestic borrowing rate whether investing or borrowing domestically or in a foreign country.
- Futures contracts on major currency pairs with the U.S. dollar, select cross-rate currency pairings, and select emerging market currencies paired with the U.S. dollar and the euro are available.
- Options and futures options are available on currency pairings with the U.S. dollar.
- There are two types of swap derivatives in the FX market: FX swaps and currency swaps.
- An FX swap is an agreement whereby one party agrees to sell to a counterparty a specified amount of a currency based on the current FX spot rate and simultaneously agrees at a specified future date to buy the same amount of that currency at the current FX forward rate.
- A currency swap is effectively a package of currency forward contracts, with the advantage that it allows hedging of long-dated FX risk and is more transactionally efficient than futures or forward contracts.
- Currency swaps are used to arbitrage the increasingly rare opportunities in the global financial market for raising funds at less cost than in the domestic market.
- Currency coupon swaps are a type of currency swap in which one of the parties pays a fixed rate and the counterparty pays a floating rate.

1. “With the exception of FX futures, all FX derivatives are OTC instruments.” Explain whether you agree or disagree with this statement.

2. "Hedging with FX derivatives eliminates all risks." Explain whether you agree or disagree with this statement.

3. “The FX forward rate is determined solely by the market’s expected change in the FX rate in the future.” Explain whether you agree or disagree with this statement.

4. Suppose that the spot exchange rate today between the U.S. dollar and the currency of country W is U.S. \$1.9905 per unit of currency of country W, and that for the U.S. dollar and the currency of country V is U.S. \$0.00779 per unit of country V. The following forward rates are also quoted today:

<table><tr><td></td><td>Country W Currency</td><td>Country V Currency</td></tr><tr><td>30 days</td><td>1.9908</td><td>0.007774</td></tr><tr><td>60 days</td><td>1.9597</td><td>0.007754</td></tr><tr><td>90 days</td><td>1.9337</td><td>0.007736</td></tr></table> a. Explain what someone who enters into a 30-day forward contract to deliver the currency of country W is agreeing to do.


b. Explain what someone who enters into a 90-day forward contract to buy the currency of country V is agreeing to do.

c. What can you infer about the relationship between U.S. and country W’s short-term interest rates and U.S. and country V’s short-term interest rates?

5. What is the drawback of using FX outright forward contracts for hedging long-dated positions?
6. What is the rationale for nondeliverable forward contracts when the underlying is an emerging market currency?
7. How does covered interest arbitrage relate to interest rate parity?
8. Why are the interest rates in the Eurocurrency market important in covered interest arbitrage?

9. Suppose you know the following items: you can borrow and lend \$500,000 at the one-year interest rate in the United States of 7.5\%; in country A both the borrowing and lending rates are 9.2\%; the spot exchange rate between the U.S. dollar and country A's currency is now \$0.1725 per unit of currency of country A; and the one-year forward exchange rate is 0.2 per unit of currency of country W.

a. Explain how you could make a profit without risk and without investing any of your own money. (Assume commissions, fees, etc., to be equal to zero.) b. Aside from assuming commissions, fees, and so on, to be zero, several unrealistic assumptions must be made in answering part (a). What are they?
c. Even if we incorporated realistic considerations regarding commissions and so on, the interest rate and exchange-rate numbers in this question would probably produce a profit of some size. Why do you think opportunities like the one in this question are unlikely to come along often in the real world?
 10. If the one-year borrowing and lending rates are 3\% in country ABC and 4\% in the United States, and if the forward exchange rate between dollars and the currency of country ABC is \$0.007576 per unit of currency of country ABC (i.e., \$1 could buy 131.99 units of country ABC's currency), then what should the spot exchange rate of dollars for the currency of country ABC be?
11. Explain why you agree or disagree with the following statement: "FX futures contracts are only available between major currencies and the U.S. dollar, and there are no contracts for emerging market currencies."
12. “FX outright forward contracts are the most common type of FX derivative.” Explain whether you agree or disagree with this statement.
13. The following excerpt appeared in the January 14, 1991, Wall Street Letter:

The Philadelphia Stock Exchange plans to list the first nondollar denominated options to trade in the United States, according to sources at the exchange. The Phlx will list cross-currency options based on the relationships between the Deutsche mark and the Japanese yen, as well as British pound/yen and pound/mark options, a spokesman confirmed....

The exchange currently lists currency options that are based on the relationship between that currency and the dollar, one Phlx member explained. "If you're not American," he added, "then the dollar doesn't do it for you." The three new cross-currency options should be attractive to the same banks and broker-dealers that currently trade dollar-based currency options, as well as non-U.S. entities that have interests in other currencies.


Cross-currency options are "a very big part of international trade and international capital markets," and are big over-the-counter products, but none currently trades on an exchange. The advantage of exchange-traded options, the Phlx member said, is that "99\% of the customers don't have the credit" to trade such a product over-the-counter with a big bank.

a. Explain what the representative of the Phlx means by saying, "If you're not American, then the dollar doesn't do it for you."

b. Why is the credit of customers critical in the OTC market but not for an exchange-traded contract?

c. When the Philadelphia Stock Exchange filed with the SEC to list cross-currency options, the exchange indicated that the demand for this product has been "spawned by recent large fluctuations and dramatic increases in volatility levels for cross-rate options." Why would this increase the demand for cross-currency options?

14. What is the major difference between a currency swap and an interest rate swap?

15. Assume the following:
- A French manufacturing firm operating primarily in France has generated revenue of U.S. 1 million from sales in the United States.
- The company's management needs the sales proceeds generated in U.S. dollars for its French operations to be paid in euros and therefore the company cannot simply hold U.S. dollars for the six months.
- The company's management knows that six months from now, it will need to pay suppliers of material in the United States 1 million.

The company is considering the following two alternatives:

Alternative I: Sell U.S. \$1 million today in exchange for euros. The number of euros received will be based on the spot FX rate. In six months, purchase U.S. \$1 million at the spot FX rate for euro/U.S. dollar at that time.

Alternative II: Sell to a bank U.S. \$1 million today in exchange for U.S. dollars at the spot FX rate and simultaneously agree to repurchase from the bank U.S. \$1 million at today's forward FX rate.

a. Which of these two alternatives involves two spot rate transactions?

b. Which of these two alternatives exposes the company to FX risk and why?

c. Which of these two alternatives hedges FX risk and why?

d. What type of FX derivative can be used instead of entering the transactions required for alternative II?

16. How does an FX swap differ from a currency swap?

1. Actually, a combination of things may occur when U.S. investors attempt to exploit this situation: (1) the spot exchange rate of U.S. dollars relative to country X's currency will fall as U.S. investors sell dollars and buy CX; (2) U.S. interest rates will rise in the United States as investors borrow in the United States and invest in country X; (3) country X's interest rates will fall as more is invested in country X; and (4) the one-year forward rate of U.S. dollars relative to the CX will fall. In practice, the last effect will dominate.
2. A combination of things may occur when country X investors attempt to exploit this situation: (1) the spot exchange rate of U.S. dollars relative to CX will rise as country X investors buy dollars and sell CX; (2) country X's interest rates will fall as more is invested in the United States; and (3) the one-year forward rate of U.S. dollars relative to the CX will rise. In practice, the last effect will dominate.
3. To understand why, recall the portfolio we created in chapter 35 to replicate the payoff of a call option on an asset. A portion of the asset is purchased with borrowed funds. In the case of a currency option, it involves purchasing a portion of the foreign currency underlying the option. However, the foreign currency acquired can be invested at a risk-free interest rate in the foreign country. Consequently, the pricing of a currency option is similar to the pricing of an option on an income-earning asset, such as a dividend-paying stock or an interest-paying bond. At the same time, the amount that must be set aside to meet the strike price depends on the domestic rate. Thus, the option price, just like interest rate parity, reflects both rates.


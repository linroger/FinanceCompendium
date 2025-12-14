---
title: "Chapter 1 - Introduction to Derivatives"
aliases:
  - Introduction to Derivatives
parent_directory: Derivatives Market Complete Full/chapters manual
cssclasses: academia
---

# Introduction to Derivatives

The world of finance has changed dramatically in recent decades. Electronic processing, globalization, and deregulation have all transformed markets, with many of the most important changes involving derivatives. The set of financial claims traded today is quite different than it was in 1970. In addition to ordinary stocks and bonds, there is now a wide array of products collectively referred to as financial derivatives: futures, options, swaps, credit default swaps, and many more exotic claims.

Derivatives sometimes make headlines. Prior to the financial crisis in 2008, there were a number of well-known derivatives-related losses: Procter & Gamble lost  $150 million in 1994, Barings Bank lost$ 1.3 billion in 1995, Long-Term Capital Management lost $3.5 billion in 1998, the hedge fund Amaranth lost $6 billion in 2006, Société Générale lost €5 billion in 2008. During the crisis in 2008 the Federal Reserve loaned 85 billion to AIG in conjunction with AIG's losses on credit default swaps. In the wake of the financial crisis, a significant portion of the Dodd-Frank Wall Street Reform and Consumer Protection Act of 2010 pertained to derivatives.

What is not in the headlines is the fact that, most of the time, for most companies and most users, these financial products are a useful and everyday part of business. Just as companies routinely issue debt and equity, they also routinely use swaps to fix the cost of production inputs, futures contracts to hedge foreign exchange risk, and options to compensate employees, to mention just a few examples.

Besides their widespread use, another important reason to understand derivatives is that the theory underlying financial derivatives provides a language and a set of analytical techniques that is fundamental for thinking about risk and valuation. It is almost impossible to discuss or perform asset management, risk management, credit evaluation, or capital budgeting without some understanding of derivatives and derivatives pricing.

In this chapter, we introduce some important concepts underlying derivatives and provide some background to place derivatives in context. We begin by defining a derivative. We will then briefly examine financial markets, and see that derivatives markets have become increasingly important in recent years. The size of these markets may leave you wondering exactly what functions they serve. We next discuss the role of financial markets in our lives, and the importance of risk sharing. We also discuss different perspectives on derivatives. Finally, we will discuss how trading occurs, providing some basic concepts.

From Chapter 1 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

# I. WHAT IS A DERIVATIVE?

A derivative is a financial instrument that has a value determined by the price of something else. Options, futures, and swaps are all examples of derivatives. A bushel of corn is not a derivative; it is a commodity with a value determined in the corn market. However, you could enter into an agreement with a friend that says: If the price of a bushel of corn in 1 year is greater than $3, you will pay the friend $1. If the price of corn is less than $3, the friend will pay you $1. This is a derivative in the sense that you have an agreement with a value depending on the price of something else (corn, in this case).

You might think: "That doesn't sound like it's a derivative; that's just a bet on the price of corn." Derivatives can be thought of as bets on the price of something, but the term "bet" is not necessarily pejorative. Suppose your family grows corn and your friend's family buys corn to mill into cornmeal. The bet provides insurance: You earn  $1 if your family's corn sells for a low price; this supplements your income. Your friend earns$ 1 if the corn his family buys is expensive; this offsets the high cost of corn. Viewed in this light, the bet hedges you both against unfavorable outcomes. The contract has reduced risk for both of you.

Investors who do not make a living growing or processing corn could also use this kind of contract simply to speculate on the price of corn. In this case the contract does not serve as insurance; it is simply a bet. This example illustrates a key point: It is not the contract itself, but how it is used, and who uses it, that determines whether or not it is risk-reducing. Context is everything.

# 2. AN OVERVIEW OF FINANCIAL MARKETS

In this section we will discuss the variety of markets and financial instruments that exist. You should bear in mind that financial markets are rapidly evolving and that any specific description today may soon be out-of-date. Nevertheless, though the specific details may change, the basic economic functions associated with trading will continue to be necessary.

# Trading of Financial Assets

The trading of a financial asset—i.e., the process by which an asset acquires a new owner—is more complicated than you might guess and involves at least four discrete steps. To understand the steps, consider the trade of a stock:

1. The buyer and seller must locate one another and agree on a price. This process is what most people mean by "trading" and is the most visible step. Stock exchanges, derivatives exchanges, and dealers all facilitate trading, providing buyers and sellers a means to find one another.
2. Once the buyer and seller agree on a price, the trade must be cleared, i.e., the obligations of each party are specified. In the case of a stock transaction, the buyer will be required to deliver cash and the seller to deliver the stock. In the case of some derivatives transactions, both parties must post collateral.
3. The trade must be settled, that is, the buyer and seller must deliver in the required period of time the cash or securities necessary to satisfy their obligations.
4. Once the trade is complete, ownership records are updated.

To summarize, trading involves striking a deal, clearing, settling, and maintaining records. Different entities can be involved in these different steps.

Much trading of financial claims takes place on organized exchanges. An exchange is an organization that provides a venue for trading, and that sets rules governing what is traded and how trading occurs. A given exchange will trade a particular set of financial instruments. The New York Stock Exchange, for example, lists several thousand firms, both U.S. and non-U.S., for which it provides a trading venue. Once upon a time, the exchange was solely a physical location where traders would stand in groups, buying and selling by talking, shouting, and gesturing. However, such in-person trading venues have largely been replaced by electronic networks that provide a virtual trading venue.[2]

After a trade has taken place, a clearinghouse matches the buyers and sellers, keeping track of their obligations and payments. The traders who deal directly with a clearinghouse are called clearing members. If you buy a share of stock as an individual, your transaction ultimately is cleared through the account of a clearing member.

For publicly traded securities in the United States, the Depository Trust and Clearing Corporation (DTCC) and its subsidiary, the National Securities Clearing Corporation (NSCC), play key roles in clearing and settling virtually every stock and bond trade that occurs in the U.S. Other countries have similar institutions. Derivatives exchanges are always associated with a clearing organization because such trades must also be cleared and settled. Examples of derivatives clearinghouses are CME Clearing, which is associated with the CME Group (formerly the Chicago Mercantile Exchange), and ICE Clear U.S., which is associated with the Intercontinental Exchange (ICE).

With stock and bond trades, after the trade has cleared and settled, the buyer and seller have no continuing obligations to one another. However, with derivatives trades, one party may have to pay another in the future. To facilitate these payments and to help manage credit risk, a derivatives clearinghouse typically interposes itself in the transaction, becoming the buyer to all sellers and the seller to all buyers. This substitution of one counterparty for another is known as novation.

It is possible for large traders to trade many financial claims directly with a dealer, bypassing organized exchanges. Such trading is said to occur in the over-the-counter (OTC) market. $^3$  There are several reasons why buyers and sellers might transact directly with dealers rather than on an exchange. First, it can be easier to trade a large quantity directly with another party. A seller of fifty thousand shares of IBM may negotiate a single price with a dealer, avoiding exchange fees as well as the market tumult and uncertainty about price that might result from simply announcing a fifty-thousand-share sale. Second, we might wish to trade a custom financial claim that is not available on an exchange. Third, we might wish to trade a number of different financial claims at once. A dealer could execute the entire trade as a single transaction, compared to the alternative of executing individual orders on a variety of different markets.

Most of the trading volume numbers you see reported in the newspaper pertain to exchange-based trading. Exchange activity is public and highly regulated. Over-the-counter trading is not easy to observe or measure and is generally less regulated. For many categories of financial claims, the value of OTC trading is greater than the value traded on exchanges.

Financial institutions are rapidly evolving and consolidating, so any description of the industry is at best a snapshot. Familiar names have melded into single entities. In recent years, for example, the New York Stock Exchange merged with Euronext, a group of European exchanges, to form NYSE Euronext, which in turn bought the American Stock Exchange (AMEX). The Chicago Mercantile Exchange merged with the Chicago Board of Trade and subsequently acquired the New York Mercantile Exchange, forming CME Group.

# Measures of Market Size and Activity

Before we discuss specific markets, it will be helpful to explain some ways in which the size of a market and its activity can be measured. There are at least four different measures that you will see mentioned in the press and on financial websites. No one measure is "correct" or best, but some are more applicable to stock and bond markets, others to derivatives markets. The different measures count the number of transactions that occur daily (trading volume), the number of positions that exist at the end of a day (open interest), and the value (market value) and size (notional value) of these positions. Here are more detailed definitions:

Trading volume. This measure counts the number of financial claims that change hands daily or annually. Trading volume is the number commonly emphasized in press coverage, but it is a somewhat arbitrary measure because it is possible to redefine the meaning of a financial claim. For example, on a stock exchange, trading volume refers to the number of shares traded. On an options exchange, trading volume refers to the number of options traded, but each option on an individual stock covers 100 shares of stock.

Market value. The market value (or "market cap") of the listed financial claims on an exchange is the sum of the market value of the claims that could be traded, without regard to whether they have traded. A firm with 1 million shares and a share price of  $50 has a market value of$ 50 million. Some derivative claims can have a zero market value; for such claims, this measure tells us nothing about activity at an exchange.

Notional value. Notional value measures the scale of a position, usually with reference to some underlying asset. Suppose the price of a stock is  $100 and that you have a derivative contract giving you the right to buy 100 shares at a future date. We would then say that the notional value of one such contract is 100 shares, or$ 10,000. The concept of notional value is especially important in derivatives markets. Derivatives exchanges frequently report the notional value of contracts traded during a period of time.

Open interest. Open interest measures the total number of contracts for which counterparties have a future obligation to perform. Each contract will have two counterparties. Open interest measures contracts, not counterparties. Open interest is an important statistic in derivatives markets.

# Stock and Bond Markets

Companies often raise funds for purposes such as financing investments. Typically they do so either by selling ownership claims on the company (common stock) or by borrowing money (obtaining a bank loan or issuing a bond). Such financing activity is a routine part of operating a business. Virtually every developed country has a market in which investors can trade with each other the stocks that firms have issued.

Securities exchanges facilitate the exchange of ownership of a financial asset from one party to another. Some exchanges, such as the NYSE, designate market-makers, who stand ready to buy or sell to meet customer demand. Other exchanges, such as NASDAQ, rely on a competitive market among many traders to provide fair prices. In practice, most investors will not notice these distinctions.

The bond market is similar in size to the stock market, but bonds generally trade through dealers rather than on an exchange. Most bonds also trade much less frequently than stocks.

Table 1 shows the market capitalization of stocks traded on the six largest stock exchanges in the world in 2011. To provide some perspective, the aggregate value of publicly traded common stock in the U.S. was about  $20 trillion at the end of 2011. Total corporate debt was about$ 10 trillion, and borrowings of federal, state, and local governments in the U.S. was about $18 trillion. By way of comparison, the gross domestic product (GDP) of the U.S. in 2011 was $15.3 trillion.[6]

<table><tr><td colspan="2">TABLE I</td><td>The six largest stock exchanges in the world, by market capitalization (in billions of US dollars) in 2011.</td></tr><tr><td>Rank</td><td>Exchange</td><td>Market Cap (Billions of U.S. $)</td></tr><tr><td>1</td><td>NYSE Euronext (U.S.)</td><td>11,796</td></tr><tr><td>3</td><td>Nasdaq OMX</td><td>3,845</td></tr><tr><td>2</td><td>Tokyo Stock Exchange</td><td>3,325</td></tr><tr><td>4</td><td>London Stock Exchange</td><td>3,266</td></tr><tr><td>5</td><td>NYSE Euronext (Europe)</td><td>2,447</td></tr><tr><td>6</td><td>Shanghai Stock Exchange</td><td>2,357</td></tr></table>

Source: http://www.world-exchanges.org/.

# Derivatives Markets

Because a derivative is a financial instrument with a value determined by the price of something else, there is potentially an unlimited variety of derivative products. Derivatives exchanges trade products based on a wide variety of stock indexes, interest rates, commodity prices, exchange rates, and even nonfinancial items such as weather. A given exchange may trade futures, options, or both. The distinction between exchanges that trade physical stocks and bonds, as opposed to derivatives, has largely been due to regulation and custom, and is eroding.

The introduction and use of derivatives in a market often coincides with an increase in price risk in that market. Currencies were permitted to float in 1971 when the gold standard was officially abandoned. The modern market in financial derivatives began in 1972, when the Chicago Mercantile Exchange (CME) started trading futures on seven currencies. OPEC's 1973 reduction in the supply of oil was followed by high and variable oil prices. U.S. interest rates became more volatile following inflation and recessions in the 1970s. The market for natural gas has been deregulated gradually since 1978, resulting in a volatile market and the introduction of futures in 1990. The deregulation of electricity began during the 1990s.

To illustrate the increase in variability since the early 1970s, panels (a)-(c) in Figure 1 show monthly changes for the 3-month Treasury bill rate, the dollar-pound exchange rate, and a benchmark spot oil price. The link between price variability and the development of derivatives markets is natural—there is no need to manage risk when there is no risk. When risk does exist, we would expect that markets will develop to permit efficient risk-sharing. Investors who have the most tolerance for risk will bear more of it, and risk-bearing will be widely spread among investors.

# FIGURE I

(a) The monthly change in the 3-month Treasury bill rate, 1947-2011. (b) The monthly percentage change in the dollar-pound exchange rate, 1947-2011. (c) The monthly percentage change in the West Texas Intermediate (WTI) spot oil price, 1947-2011. (d) Millions of futures contracts traded annually at the Chicago Board of Trade (CBT), Chicago Mercantile Exchange (CME), and the New York Mercantile Exchange (NYMEX), 1970-2011.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/4c9fd479a80b460a4f1b0621ff87ba72edfeff17d06203d096963173a6fa9ac1.jpg)

(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/6719be8a20df403c6d116eb85259ce66a5d4d8d757548564d087c492753df8cc.jpg)

(b)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/db98006e781e7354a886faae2731ab0a28c7117c793dd9a273dcdf6148a2b325.jpg)

(c)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/e66a5af86a1d1ddb8c420f527cc2d5aef88d9691833b20c6ea4677143435ffe3.jpg)

(d)

Sources: (a) St. Louis Fed; (b) DRI and St. Louis Fed; (c) St. Louis Fed; (d) CRB Yearbook.

<table><tr><td>TABLE 2</td><td>Examples of underlying assets on which futures contracts are traded.</td></tr><tr><td>Category</td><td>Description</td></tr><tr><td>Stock index</td><td>S&amp;P 500 index, Euro Stoxx 50 index, Nikkei 225, Dow-Jones Industrials, Dax, NASDAQ, Russell 2000, S&amp;P Sectors (healthcare, utilities, technology, etc.)</td></tr><tr><td>Interest rate</td><td>30-year U.S. Treasury bond, 10-year U.S. Treasury notes, Fed funds rate, Euro-Bund, Euro-Bobl, LIBOR, Euribor</td></tr><tr><td>Foreign exchange</td><td>Euro, Japanese yen, British pound, Swiss franc, Australian dollar, Canadian dollar, Korean won</td></tr><tr><td>Commodity</td><td>Oil, natural gas, gold, copper, aluminum, corn, wheat, lumber, hogs, cattle, milk</td></tr><tr><td>Other</td><td>Heating and cooling degree-days, credit, real estate</td></tr></table>

Table 2 provides examples of some of the specific prices and items upon which futures contracts are based. Some of the names may not be familiar to you.

Panel (d) of Figure 1 depicts combined futures contract trading volume for the three largest U.S. futures exchanges over the last 40 years. The point of this graph is that trading activity in futures contracts has grown enormously over this period. Derivatives exchanges in other countries have generally experienced similar growth. Eurex, the European electronic exchange, traded over 2 billion contracts in 2011. There are many other important derivatives exchanges, including the Chicago Board Options Exchange, the International Securities Exchange (an electronic exchange headquartered in the U.S.), the London International Financial Futures Exchange, and exchanges headquartered in Australia, Brazil, China, Korea, and Singapore, among many others.

The OTC markets have also grown rapidly over this period. Table 3 presents an estimated annual notional value of swaps in five important categories. The estimated year-end outstanding notional value of interest rate and currency swaps in 2010 was an eyepopping 523 trillion. For a variety of reasons the notional value number can be difficult to interpret, but the enormous growth in these contracts in recent years is unmistakable.

TABLE 3

Estimated year-end notional value of outstanding derivative contracts, by category, in billions of dollars.

<table><tr><td></td><td>Foreign Exchange</td><td>Interest Rate</td><td>Equity</td><td>Commodity</td><td>Credit Default</td><td>Total</td></tr><tr><td>1998</td><td>18011</td><td>50014</td><td>1488</td><td>408</td><td>—</td><td>80309</td></tr><tr><td>1999</td><td>14344</td><td>60090</td><td>1809</td><td>548</td><td>—</td><td>88201</td></tr><tr><td>2000</td><td>15665</td><td>64667</td><td>1890</td><td>662</td><td>—</td><td>95199</td></tr><tr><td>2001</td><td>16747</td><td>77567</td><td>1880</td><td>598</td><td>—</td><td>111177</td></tr><tr><td>2002</td><td>18447</td><td>101657</td><td>2308</td><td>923</td><td>—</td><td>141665</td></tr><tr><td>2003</td><td>24475</td><td>141990</td><td>3787</td><td>1405</td><td>—</td><td>197166</td></tr><tr><td>2004</td><td>29288</td><td>190501</td><td>4384</td><td>1443</td><td>6395</td><td>258627</td></tr><tr><td>2005</td><td>31360</td><td>211970</td><td>5793</td><td>5434</td><td>13908</td><td>299260</td></tr><tr><td>2006</td><td>40270</td><td>291581</td><td>7487</td><td>7115</td><td>28650</td><td>418131</td></tr><tr><td>2007</td><td>56238</td><td>393138</td><td>8469</td><td>8455</td><td>58243</td><td>585932</td></tr><tr><td>2008</td><td>50042</td><td>432657</td><td>6471</td><td>4427</td><td>41882</td><td>598147</td></tr><tr><td>2009</td><td>49181</td><td>449874</td><td>5937</td><td>2944</td><td>32692</td><td>603899</td></tr><tr><td>2010</td><td>57795</td><td>465259</td><td>5634</td><td>2921</td><td>29897</td><td>601046</td></tr></table>

Source: Bank of International Settlements.

# 3. THE ROLE OF FINANCIAL MARKETS

Stock, bond, and derivatives markets are large and active, but what role do financial markets play in the economy and in our lives? We routinely see headlines stating that the Dow Jones Industrial Average has gone up 100 points, the dollar has fallen against the euro, and interest rates have risen. But why do we care about these things? In this section we will examine how financial markets affect our lives.

# Financial Markets and the Averages

To understand how financial markets affect us, consider the Average family, living in Anytown. Joe and Sarah Average have children and both work for the XYZ Co., the dominant employer in Anytown. Their income pays for their mortgage, transportation, food, clothing, and medical care. Remaining income goes into savings earmarked for their children's college tuition and their own retirement.

The Averages are largely unaware of the ways in which global financial markets affect their lives. Here are a few:

- The Averages invest their savings in mutual funds that own stocks and bonds from companies around the world. The transaction cost of buying stocks and bonds in this way is low. Moreover, the Averages selected mutual funds that provide diversified investments. As a result, the Averages are not heavily exposed to any one company. $^{10}$
- The Averages live in an area susceptible to tornadoes and insure their home. The local insurance company reinsures tornado risk in global markets, effectively pooling Anytown tornado risk with Japan earthquake risk and Florida hurricane risk. This pooling makes insurance available at lower rates and protects the Anytown insurance company.
- The Averages financed their home with a mortgage from Anytown bank. The bank in turn sold the mortgage to other investors, freeing itself from interest rate and default risk associated with the mortgage. Because the risks of their mortgage is borne by those willing to pay the highest price for it, the Averages get the lowest possible mortgage rate.
- The Average's employer, XYZ Co., can access global markets to raise money. Investors in Asia, for example, may thereby finance an improvement to the Anytown factory.
- XYZ Co. insures itself against certain risks. In addition to having property and casualty insurance for its buildings, it uses global derivatives markets to protect itself against adverse currency, interest rate, and commodity price changes. By being able to manage these risks, XYZ is less likely to go into bankruptcy, and the Averages are less likely to become unemployed.

In all of these examples, particular financial functions and risks have been split up and paralleled out to others. A bank that sells a mortgage does not have to bear the risk of the mortgage. A single insurance company does not bear the entire risk of a regional disaster. Risk-sharing is one of the most important functions of financial markets.

# Risk-Sharing

Risk is an inevitable part of our lives and all economic activity. As we've seen in the example of the Averages, financial markets enable at least some of these risks to be shared. Risk arises from natural events, such as earthquakes, floods, and hurricanes, and from unnatural events such as wars and political conflicts. Drought and pestilence destroy agriculture every year in some part of the world. Some economies boom as others falter. On a more personal scale, people are born, die, retire, find jobs, lose jobs, marry, divorce, and become ill.

Given that risk exists, it is natural to have arrangements where the lucky share with the unlucky. There are both formal and informal risk-sharing arrangements. On the formal level, the insurance market is a way to share risk. Buyers pay a premium to obtain various kinds of insurance, such as homeowner's insurance. Total collected premiums are then available to help those whose houses burn down. The lucky, meanwhile, did not need insurance and have lost their premium. This market makes it possible for the lucky to help the unlucky. On the informal level, risk-sharing also occurs in families and communities, where those encountering misfortune are helped by others.

In the business world, changes in commodity prices, exchange rates, and interest rates can be the financial equivalent of a house burning down. If the dollar becomes expensive relative to the yen, some companies are helped and others are hurt. It makes sense for there to be a mechanism enabling companies to exchange this risk, so that the lucky can, in effect, help the unlucky.

Even insurers need to share risk. Consider an insurance company that provides earthquake insurance for California residents. A large earthquake could generate claims sufficient to bankrupt a stand-alone insurance company. Thus, insurance companies often use the reinsurance market to buy, from reinsurers, insurance against large claims. Reinsurers pool different kinds of risks, thereby enabling insurance risks to become more widely held.

In some cases, reinsurers further share risks by issuing catastrophe bonds—bonds that the issuer need not repay if there is a specified event, such as a large earthquake, causing large insurance claims. Bondholders willing to accept earthquake risk can buy these bonds, in exchange for greater interest payments on the bond if there is no earthquake. An earthquake bond allows earthquake risk to be borne by exactly those investors who wish to bear it.

You might be wondering what this discussion has to do with the notions of diversifiable and nondiversifiable risk familiar from portfolio theory. Risk is diversifiable risk if it is unrelated to other risks. The risk that a lightning strike will cause a factory to burn down, for example, is idiosyncratic and hence diversifiable. If many investors share a small piece of this risk, it has no significant effect on anyone. Risk that does not vanish when spread across many investors is nondiversifiable risk. The risk of a stock market crash, for example, is nondiversifiable.

Financial markets in theory serve two purposes. Markets permit diversifiable risk to be widely shared. This is efficient: By definition, diversifiable risk vanishes when it is widely shared. At the same time, financial markets permit nondiversifiable risk, which does not vanish when shared, to be held by those most willing to hold it. Thus, the fundamental economic idea underlying the concepts and markets is that the existence of risk-sharing mechanisms benefits everyone.

Derivatives markets continue to evolve. A recent development has been the growth in prediction markets, discussed in Box 1.

# 4. THE USES OF DERIVATIVES

We can think about derivatives and other financial claims in different ways. One is a functional perspective: Who uses them and why? Another is an analytical perspective: When we look at financial markets, how do we interpret the activity that we see? In this section, we discuss these different perspectives.

# Uses of Derivatives

What are reasons someone might use derivatives? Here are some motives:

Risk management. Derivatives are a tool for companies and other users to reduce risks. With derivatives, a farmer—a seller of corn—can enter into a contract that makes a payment when the price of corn is low. This contract reduces the risk of loss for the farmer, who we therefore say is hedging. Every form of insurance is a derivative: For

# BOX I: Prediction Markets

Prediction markets are derivatives markets in which the value of traded claims depends on the outcome of events. With one common contract, an investor can own a claim that receives  $1 if the event occurs, or sell a claim that requires the investor to pay$ 1 if the event occurs. Such markets can be used to speculate on presidential elections, the winner of an Olympic event, the occurrence of a natural disaster, or the value of a government statistic such as employment or the consumer price index.

Much of the interest in prediction markets stems from the idea that the price of a contract will aggregate individual information that could not otherwise be observed. For years, the Iowa Electronic Markets (http://tippie.uowa.edu/iem/markets/) has permitted speculation on the outcome of presidential and other elections. The "vote share" contracts pay in cents the percentage of the popular vote received by the official candidate of a party. For example, if the Re publican were to receive  $48\%$  of the vote, the Republican vote share contract on election day would be worth \ $0.48. The Democratic and Republican "winner-take-all" contracts pay \$ 1 if that party wins the election, and zero otherwise. There are also party nomination contracts that allow an investor to bet on a specific candidate winning the party nomination. (See Box 2.)

Intrade.com allows political bets along with a wide variety of others. One contract stated its event as "Higgs Boson Particle to be observed on/before 31 Dec 2014," while another stated "Highest Marginal Single-Filer Fed Income Tax Rate to be Equal or Greater than  $34\%$  in 2012."

Prediction markets face significant regulatory hurdles in the U.S. As of this writing, a 2006 law prohibiting unauthorized internet gambling made it illegal for U.S. investors to use any prediction market not authorized by the Commodity Futures Trading Commission.

example, automobile insurance pays if you have an accident. If you destroy your car in an accident, your insurance is valuable; if the car remains undamaged, it is not.

Speculation. Derivatives can serve as investment vehicles. Derivatives can provide a way to make bets that are highly leveraged (that is, the potential gain or loss on the bet can be large relative to the initial cost of making the bet) and tailored to a specific view. For example, if you want to bet that the S&P 500 stock index will be between 1300 and 1400 1 year from today, derivatives can be constructed to let you do that.

Reduced transaction costs. Sometimes derivatives provide a lower-cost way to undertake a particular financial transaction. For example, the manager of a mutual fund may wish to sell stocks and buy bonds. Doing this entails paying fees to brokers and paying other trading costs, such as the bid-ask spread, which we will discuss later. It is possible to trade derivatives instead and achieve the same economic effect as if stocks had actually been sold and replaced by bonds. Using the derivative might result in lower transaction costs than actually selling stocks and buying bonds.

Regulatory arbitrage. It is sometimes possible to circumvent regulatory restrictions, taxes, and accounting rules by trading derivatives. Derivatives are often used, for example, to achieve the economic sale of stock (receive cash and eliminate the risk of holding the stock) while still maintaining physical possession of the stock. This transaction may allow the owner to defer taxes on the sale of the stock, or retain voting rights, without the risk of holding the stock.

These are common reasons for using derivatives. The general point is that derivatives provide an alternative to a simple sale or purchase, and thus increase the range of possibilities for an investor or manager seeking to accomplish some goal. Obviously, for society as a whole, hedging may be desirable while regulatory arbitrage is not. But it is difficult to control trading on the basis of motive.

In recent years the U.S. Securities and Exchange Commission (SEC), the Financial Accounting Standards Board (FASB), and the International Accounting Standard Board (IASB) have increased the requirements for corporations to report on their use of derivatives. Nevertheless, surprisingly little is known about how companies actually use derivatives to manage risk. The basic strategies companies use are well-understood, but it is not known, for example, what fraction of perceived risk is hedged by a given company, or by all companies in the aggregate. We frequently do not know a company's specific rationale for hedging or not hedging.

We would expect the use of derivatives to vary by type of firm. For example, financial firms, such as banks, are highly regulated and have capital requirements. They may have assets and liabilities in different currencies, with different maturities, and with different credit risks. Hence banks could be expected to use interest rate derivatives, currency derivatives, and credit derivatives to manage risks in those areas. Manufacturing firms that buy raw materials and sell in global markets might use commodity and currency derivatives, but their incentives to manage risk are less clear-cut because they are not regulated in the same ways as financial firms.

# Perspectives on Derivatives

How you think about derivatives depends on who you are. The following are three distinct perspectives on derivatives:

The end-user perspective. End-users are the corporations, investment managers, and investors who enter into derivative contracts for the reasons listed in the previous section: to manage risk, speculate, reduce costs, or avoid a rule or regulation. End-users have a goal (for example, risk reduction) and care about how a derivative helps to meet that goal.

The market-maker perspective. Market-makers are intermediaries, traders who will buy derivatives from customers who wish to sell, and sell derivatives to customers who wish to buy. In order to make money, market-makers charge a spread: They buy at a low price and sell at a high price. In this respect market-makers are like grocers, who buy at the low wholesale price and sell at the higher retail price. Market-makers are also like grocers in that their inventory reflects customer demands rather than their own preferences: As long as shoppers buy paper towels, the grocer doesn't care whether they buy the decorative or super-absorbent style. After dealing with customers, market-makers are left with whatever position results from accommodating customer demands. Market-makers typically hedge this risk and thus are deeply concerned about the mathematical details of pricing and hedging.

The economic observer. Finally, we can look at the use of derivatives, the activities of the market-makers, the organization of the markets, and the logic of the pricing models and try to make sense of everything. This is the activity of the economic observer. Regulators must often don their economic observer hats when deciding whether and how to regulate a certain activity or market participant.

These three perspectives are intertwined with different degrees of emphasis.

# Financial Engineering and Security Design

One of the major ideas in derivatives—perhaps the major idea—is that it is generally possible to create a given payoff in multiple ways. The construction of a given financial product from other products is sometimes called financial engineering. The fact that this is possible has several implications. First, since market-makers need to hedge their positions, this idea is central in understanding how market-making works. The market-maker sells a contract to an end-user, and then creates an offsetting position that pays him if it is necessary to pay the customer. This creates a hedged position.

Second, the idea that a given contract can be replicated often suggests how it can be customized. The market-maker can, in effect, turn dials to change the risk, initial premium, and payment characteristics of a derivative. These changes permit the creation of a product that is more appropriate for a given situation.

Third, it is often possible to improve intuition about a given derivative by realizing that it is equivalent to something we already understand.

Finally, because there are multiple ways to create a payoff, the regulatory arbitrage discussed above can be difficult to stop. Distinctions existing in the tax code, or in regulations, may not be enforceable, since a particular security or derivative that is regulated or taxed may be easily replaced by one that is treated differently but has the same economic profile.

# 5. BUYING AND SHORT-SELLING FINANCIAL ASSETS

Let's talk about buying, selling, and short-selling assets such as stocks. These basic transactions are so important that it is worth describing the details. First, it is important to understand the costs associated with buying and selling. Second, it is helpful to understand the mechanisms one can use to buy or sell. Third, a very important idea in transactions is that of short-sales. The concept of short-selling seems as if it should be intuitive—a short-sale is just the opposite of a purchase—but for almost everyone it is hard to grasp at first. Even if you are familiar with short-sales, you should spend a few minutes reading this section.

Although we will use shares of stock to illustrate the mechanics of buying and selling, there are similar issues associated with buying any asset.

# Transaction Costs and the Bid-Ask Spread

Suppose you want to buy shares of XYZ stock. We can calculate the cost to own 100 shares: If the price to buy the stock is $50, 100 shares will cost $50 × 100 = 5000. However, we must also account for transaction costs.

First, there is a commission, which is a transaction fee you pay your broker. A commission for the above order could be 15, or 0.3\% of the purchase price.

Second, the term "stock price" is, surprisingly, imprecise. There are in fact two prices, a price at which you can buy, and a price at which you can sell. The price at which you can buy is called the offer price or ask price, and the price at which you can sell is called the bid price. To understand these terms, consider the position of the broker.

To buy stock, you contact a broker. Suppose that you wish to buy immediately at the best available price. If the stock is not too obscure and your order is not too large, your purchase will probably be completed in a matter of seconds. Where does the stock that you have just bought come from? It is possible that at the exact same moment, another customer called the broker and put in an order to sell. More likely, however, a market-maker sold you the stock. As their name implies, market-makers make markets. If you want to buy, they sell, and if you want to sell, they buy. In order to earn a living, market-makers sell for a high price and buy for a low price. If you deal with a market-maker, therefore, you buy for a high price and sell for a low price. This difference between the price at which you can buy and the price at which you can sell is called the bid-ask spread.[11] In practice, the bid-ask spread on the stock you are buying may be  $49.75 to$ 50. This means that you can buy for $50/share and sell for $49.75/share. If you were to buy immediately and then sell, you would pay the commission twice, and you would pay the bid-ask spread.

Example 1. Suppose XYZ is bid at $49.75 and offered at $50, and the commission is $15. If you buy 100 shares of the stock you pay ($50 × 100) + $15 = $5015. If you immediately sell them again, you receive ($49.75 × 100) - $15 = $4960. Your round-trip transaction cost—the difference between what you pay and what you receive from a sale, not counting changes in the bid and ask prices—is $5015 - $4960 = $55.

This discussion reveals where the terms "bid" and "ask" come from. The terminology seems backward, but rather than the price you pay, the bid price is what the market-maker pays; hence it is the price at which you sell. The offer price is what the market-maker will sell for; hence it is what you have to pay. The terminology reflects the perspective of the market-maker.

What happens to your shares after you buy them? Unless you make other arrangements, shares are typically held in a central depository (in the U.S., at the DTCC) in the name of your broker. Such securities are said to be held in street name.

# Ways to Buy or Sell

A buyer or seller of an asset can employ different strategies in trading the asset. You implement these different strategies by telling the broker (or the electronic trading system) what kind of order you are submitting.

A market order is an instruction to trade a specific quantity of the asset immediately, at the best price that is currently available. The advantage of a market order is that the trade is executed as soon as possible. The disadvantage of a market order is that you might have been able to get a better price had you been more patient.

A limit order is an instruction to trade a specific quantity of the asset at a specified or better price. A limit order to buy 100 shares at $47.50 can be filled at $47.50 or below. A limit order to sell at $50.25 can be filled at $50.25 or above. Having your limit order filled depends upon whether or not anyone else is willing to trade at that price. As time passes, your order may or may not be filled. Thus, the advantage of a limit order is obtaining a better price. The disadvantage is the possibility that the order is never filled.

There are other kinds of orders. For example, suppose you own 100 shares of XYZ. If you enter a stop-loss order at $45, then your order becomes a market order to sell once the price falls to $45. Because your order is a market order, you may end up selling for less than 45.

In the earlier example we supposed that the bid and ask prices for XYZ were $49.75 and $50. You can think of those prices as limit orders—someone has offered to buy at $49.75 and (possibly someone different) to sell at $50.

Box 2 illustrates bid and offer prices for one prediction market.

# Short-Selling

The sale of a stock you do not already own is called a short-sale. In order to understand short-sales, we first need to understand the terms "long" and "short."

When we buy something, we are said to have a long position in that thing. For example, if we buy the stock of XYZ, we pay cash and receive the stock. Some time later, we sell the stock and receive cash. This transaction is a form of lending, in that we pay money today and receive money back in the future. For many assets the rate of return we receive is not known in advance (the return depends upon whether the stock price goes up or down), but it is a loan nonetheless.

The opposite of a long position is a short position. A short-sale of XYZ entails borrowing shares of XYZ from an owner, and then selling them, receiving the cash.[12] Some time later, we buy back the XYZ stock, paying cash for it, and return it to the lender. A short-sale can be viewed as a way of borrowing money. With ordinary borrowing, you receive money today and repay it later, paying a rate of interest set in advance. This also happens with a short-sale, except that typically you don't know in advance the rate you will pay.

There are at least three reasons to short-sell:

1. Speculation: A short-sale, considered by itself, makes money if the price of the stock goes down. The idea is to first sell high and then buy low. (With a long position, the idea is to first buy low and then sell high.)
2. Financing: A short-sale is a way to borrow money, and it is frequently used as a form of financing. This is very common in the bond market, for example.
3. Hedging: You can undertake a short-sale to offset the risk of owning the stock or a derivative on the stock. This is frequently done by market-makers and traders.

# Box 2: Bid and Ask Prices in a Prediction Market

In Box 1 we discussed prediction markets. These markets have bid-ask spreads, as you would expect. Here is a table showing the bid-ask spreads in the U.S. presidential market from the Iowa Presidential Nomination Market on May 24, 2012. The "vote share" contract pays the percentage of the popular vote received by that party's candidate, while the "winner take all" contract pays 1 if the candidate wins and zero otherwise.

<table><tr><td colspan="3">Share of Vote</td><td colspan="3">Winner Takes All</td></tr><tr><td>Party</td><td>Bid</td><td>Ask</td><td>Party</td><td>Bid</td><td>Ask</td></tr><tr><td>Democratic</td><td>0.512</td><td>0.527</td><td>Democratic</td><td>0.592</td><td>0.600</td></tr><tr><td>Republican</td><td>0.470</td><td>0.484</td><td>Republican</td><td>0.400</td><td>0.409</td></tr><tr><td>Total</td><td>0.982</td><td>1.011</td><td>Total</td><td>0.992</td><td>1.009</td></tr></table>

If you wished to buy the Democratic winnertake-all contract, you would pay $0.600 per contract. An immediate sale would earn you $0.592. If you bought both the Democratic and Republican contracts, you would be guaranteed to earn $1 by the end of the convention, but the cost would be $1.009. Similarly, if you sold all four, you would have to pay $1 at the end of the convention but you would receive only $0.992.

The prices in the table are limit orders placed by other traders. What you cannot see in the table is how many contracts you can trade at those prices (this is called market depth). You also cannot see any additional buy limit orders below the bid price and additional sell limit orders above the ask price.

These reasons are not mutually exclusive. For example, a market-maker might use a short-sale to simultaneously hedge and finance a position.

Example: Short-Selling Wine. Because short-sales can seem confusing, here is a detailed example that illustrates how short-sales work.

There are markets for many collectible items, such as fine wines. If you believe prices will rise, you would buy the wine on the market and plan to sell after the price rises. However, suppose there is a wine from a particular vintage and producer that you believe to be overpriced and you expect the price to fall. How could you speculate based on this belief? The answer is that you can engage in a short-sale.

In order to short-sell, you must first obtain wine. You can do this by borrowing a case from a collector. The collector, of course, will want a promise that you will return the wine at some point; suppose you agree to return it 1 week later. Having reached agreement, you borrow the wine and then sell it at the market price. After 1 week, you acquire a replacement case on the market, then return it to the collector from whom you originally borrowed the wine. If the price has fallen, you will have bought the replacement wine for less than the price at which you sold the original, so you make money. If the price has risen, you have lost money. Either way, you have just completed a short-sale of wine. The act of buying replacement wine and returning it to the lender is said to be closing or covering the short position.

Note that short-selling is a way to borrow money. Initially, you received money from selling the wine. A week later you paid the money back (you had to buy a replacement case to return to the lender). The rate of interest you paid was low if the price of the replacement case was low, and high if the price of the replacement case was high.

This example is obviously simplified. We have assumed several points:

TABLE 4

Cash flows associated with short-selling a share of IBM for 90 days.  $S_0$  and  $S_{90}$  are the share prices on days 0 and 90. Note that the short-seller must pay the dividend,  $D$ , to the share-lender.

<table><tr><td></td><td>Day 0</td><td>Dividend Ex-Day</td><td>Day 90</td></tr><tr><td>Action</td><td>Borrow shares</td><td>—</td><td>Return shares</td></tr><tr><td>Security</td><td>Sell shares</td><td>—</td><td>Purchase shares</td></tr><tr><td>Cash</td><td>+S0</td><td>- D</td><td>-S90</td></tr></table>

- It is easy to find a lender of wine.
- It is easy to buy, at a fair price, satisfactory wine to return to the lender: The wine you buy after 1 week is a perfect substitute for the wine you borrowed.
- The collector from whom you borrowed is not concerned that you will fail to return the borrowed wine.

Example: Short-Selling Stock. Now consider a short-sale of stock. As with wine, when you short-sell stock you borrow the stock and sell it, receiving cash today. At some future date you buy the stock in the market and return it to the original owner.

Suppose you want to short-sell IBM stock for 90 days. Table 4 depicts the cash flows. Observe in particular that if the share pays dividends, the short-seller must in turn make dividend payments to the share-lender. This issue did not arise with wine! This dividend payment is taxed to the recipient, just like an ordinary dividend payment, and it is tax-deductible to the short-seller.

Notice that the cash flows in Table 4 are exactly the opposite of the cash flows from purchasing the stock. Thus, short-selling is literally the opposite of buying.

# The Lease Rate of an Asset

We have seen that when you borrow an asset it may be necessary to make payments to the lender. Dividends on short-sold stock are an example of this. We will refer to the payment required by the lender as the lease rate of the asset. This concept will arise frequently, and, as we will see, it provides a unifying concept for our later discussions of derivatives.

The wine example did not have a lease payment. But under some circumstances it might be necessary to make a payment to borrow wine. Wine does not pay an explicit dividend but does pay an implicit dividend if the owner enjoys seeing bottles in the cellar. The owner might thus require a payment in order to lend a bottle. This would be a lease rate for wine.

# Risk and Scarcity in Short-Selling

The preceding examples were simple illustrations of the mechanics and economics of short-selling, and they demonstrate the ideas you will need to understand our discussions of derivatives. It turns out, however, that some of the complexities we skipped over are easy to understand and are important in practice. In this section we use the wine example to illustrate some of these practical issues.

Credit Risk. As the short-seller, you have an obligation to the lender to return the wine. The lender fears that you will renegel on this obligation. This concern can be addressed with collateral: After you sell the wine, the lender can hold the money you received from selling the wine. You have an obligation to return the wine; the lender keeps the money in the event that you don't.

Holding on to the money will help the lender feel more secure, but after thinking the matter over, the lender will likely want more from you than just the current value of the wine. Suppose you borrow  $5000 worth of wine. What happens, the lender will think, if the price of that particular wine rises 1 week later to$ 6000? This is a $1000 loss on your short-sale. In order to return the wine, you will have to pay $6000 for wine you just sold for $5000. Perhaps you cannot afford the extra $1000 and you will fail to return the borrowed wine. The lender, thinking ahead, will be worried at the outset about this possibility and will ask you to provide more than the $5000 the wine is worth—say, an extra $1000. This extra amount is called a haircut and serves to protect the lender against your failure to return the wine when the price rises.[13] In practice, short-sellers must have funds—called capital—to be able to pay haircuts. The amount of capital places a limit on their ability to short-sell.

Scarcity. As the short-seller, do you need to worry about the short-sale proceeds? The lender is going to have 6000 of your money. Most of this, however, simply reflects your obligation, and we could ask a trustworthy third party, such as a bank, to hold the money so the lender cannot abscond with it. However, when you return the wine, you are going to want your money back, plus interest. This raises the question: What rate of interest will the lender pay you? Over the course of the short-sale, the lender can invest your money, earning, say, 6\%. The lender could offer to pay you 4\% on the funds, thinking to keep as a fee the 2\% difference between the 6\% earned on the money and the 4\% paid to you. What happens if the lender and borrower negotiate?

Here is the interesting point: The rate of interest the lender pays on the collateral is going to depend on how many people want to borrow wine from the particular vintage and producer, and how many are willing to lend it! As a practical matter, it may not be easy to find a lender; the wine may be "hard to locate." If there is high demand for borrowed wine, the lender will offer a low rate of interest, essentially earning a fee for being willing to lend something that is scarce. However, if no one else wants to borrow the wine, the lender might conclude that a small fee is better than nothing and offer you a rate of interest close to the market rate.

The rate paid on collateral is called different things in different markets: the repo rate in bond markets and the short rebate in the stock market. Whatever it is called, the difference between this rate and the market rate of interest is another cost to your short-sale.

# CHAPTER SUMMARY

Derivatives are financial instruments with a payoff determined by the price of something else. They can be used as a tool for risk management and speculation, and to reduce transaction costs or avoid taxes and regulation.

One important function of financial markets is to facilitate optimal risk-sharing. There are different ways to measure the size and activity of stock, bond, and derivatives markets, but these markets are by any measure large and growing. The growth of derivatives markets over the last 50 years has coincided with an increase in the risks evident in various markets. Events such as the 1973 oil shock, the abandonment of fixed exchange rates, and the deregulation of energy markets have created a new role for derivatives.

There are costs to trading an asset, one of which is the bid-ask spread. The bid-ask spread is a key means by which those traders who make markets are compensated for doing so. In markets without explicit market-makers, limit orders create a bid-ask spread.

An important transaction is a short-sale, which entails borrowing a security, selling it, making dividend (or other cash) payments to the security lender, and then returning it. A short-sale is conceptually the opposite of a purchase. Short-sales can be used for speculation, as a form of financing, or as a way to hedge. Many of the details of short-selling in practice can be understood as a response to credit risk of the short-seller and scarcity of shares that can be borrowed. Short-sellers typically leave the short-sale proceeds on deposit with lenders, along with additional capital called a haircut. The rate paid on this collateral is called the short rebate, and is less than the interest rate.

# FURTHER READING

The derivatives exchanges have websites that list their contracts and provide further details. Because the web addresses can change (e.g., due to mergers), the easiest way to find them is with a web search.

Jorion (2006) discusses a number of derivatives disasters, and Jorion (1995) examines in detail one famous episode: Orange County in California. Bernstein (1992) presents a history of the development of financial markets, and Bernstein (1996) discusses the concept of risk measurement and how it evolved over the last 800 years. Miller (1986) discusses origins of past financial innovation, while Merton (1999) and Shiller (2003) provide a stimulating look at possible future developments in financial markets. Finally, Lewis (1989) is a classic, funny, insider's account of investment banking, offering a different (to say the least) perspective on the mechanics of global risk-sharing.

The financial crisis spawned dozens of books. Lo (2012) reviews 21 of them. Informative and entertaining books aimed at a popular audience include Cohan (2009), Tett (2010), Sorkin (2010), and Lewis (2011). Gorton (2010) provides a more detailed and technical perspective.

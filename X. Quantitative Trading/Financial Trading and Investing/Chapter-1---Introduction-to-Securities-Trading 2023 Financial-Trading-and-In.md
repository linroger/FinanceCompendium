---
title: Chapter 1 - Introduction to Securities Trading and Markets
parent_directory: Financial Trading and Investing
formatted: 2025-12-20 11:50:00 AM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - securities trading
  - market microstructure
  - auction theory
secondary_tags:
  - trading strategies
  - market liquidity
  - algorithmic trading
  - bargaining power
  - proprietary trading
  - agency trading
cssclasses: academia
---

# Introduction to Securities Trading and Markets

```d2
trading ecosystem: {
  shape: flowchart
  
  traders: "Traders" {
    proprietary: "Proprietary Traders"
    agency: "Agency Traders"
    dealers: "Dealers"
    brokers: "Brokers"
  }
  
  securities: "Securities" {
    debt: "Debt Securities"
    equity: "Equity Securities"
    derivatives: "Derivative Securities"
  }
  
  markets: "Markets" {
    exchanges: "Exchanges"
    ats: "Alternative Trading Systems"
  }
  
  trades: "Trades" {
    buy: "Buy Orders"
    sell: "Sell Orders"
  }
  
  traders -> trades
  securities -> trades
  markets -> trades
}
```

## 1.1 TRADES, TRADERS, SECURITIES, AND MARKETS

A trade is a security transaction that creates or alters a portfolio position based on an investment decision. The trade action and the trade decision follow the investing decision to buy, sell, or otherwise take a position in an asset or instrument. The trade decision concerns how to execute the investment decision, in which markets, at what prices and times and through which agents. Trade decisions are more concerned with the speed, costs, and risks associated with executing the transaction, while investing emphasizes selection of the security. The investment strategy is linked to the rationale to buy or to sell (e.g., to exploit undervaluation). Investing is a positive sum game, allocating capital towards production and risk management. Trading is often a zero sum game, except to the extent that it facilitates investing, produces information, and improves markets by enhancing liquidity (ease of buying and selling securities) and reducing execution costs. While investing and trading activities might be distinguished from one another, there is a significant overlap between them, where high-turnover short-term investing, also referred to as trading, blurs the distinction between the two.

Traders compete to generate profits, seeking compatible counterparties in trade and seeking superior order placement and timing. Proprietary traders seek profits by trading on their own accounts while agency traders trade as commission brokers on behalf of clients. Most proprietary traders are speculators who focus on profits derived from price changes, arbitrageurs who focus on price discrepancies, and hedgers who seek to control risk. Dealers, who trade directly with clients, and brokers, who seek trade counterparties for clients, facilitate the trading process. Brokers act as agents for investors, buying and selling for them on a commission or mark-up basis. Dealers maintain quotes (bids, which are solicitations to purchase and offers, which are solicitations to sell) and buy and sell on a profit basis. The typical quote specifies the security, the proposed transaction's price, and the number of units to be exchanged at this price. The spread is simply the difference between the best offer and best bid. Buy side traders such as individual investors, mutual funds, and pension

funds buy exchange or liquidity services. This means that buy side traders make investment decisions to take positions in securities and seek counterparties to buy from or sell to. Sell side traders such as day traders, market makers, and brokers provide liquidity and markets to buy side traders. Sell side traders stand by awaiting orders from buy side traders. One should not confuse buy side and sell side traders with buyers and sellers of securities; buy-side traders buy liquidity services and sell-side traders sell liquidity services. Regulatory definitions for traders will be discussed shortly.

## Trading Illustration

Consider a hypothetical scenario where an equities analyst working for the Flagellan Fund has recommended that the fund purchase shares of the General Engine Company. The fund's portfolio manager agreed, and placed an order for 50,000 shares with the fund's in-house trader. The in-house trader decided to transact 10,000 shares herself, and placed buy orders of 20,000 shares each with two brokers, Kanteven-Fitzgerald and Themus Trading. Counterparties for the trades will be found in various trading venues, including exchanges and alternative trading systems. Flagellan is considered a buy side market participant, not because it is buying shares, but because it is buying liquidity. Its counterparties in trade will probably be a combination of buy side and sell side market participants.

## Securities and Instruments

The term "security" has several alternative definitions. In this text, we generally define a security to be a tradable claim on the assets of an institution or individual. Where real assets contribute to the productive capacity of the economy, securities are financial assets that merely represent claims on real assets. Many securities represent ownership (e.g., shares of stock) or creditorship (e.g., bond) of an institution (e.g., corporation). Some instruments will represent obligations to buy or sell (e.g., futures contracts) or options to buy or sell. Most corporate securities imply either fixed claims (such as bonds that typically involve fixed interest and principal repayments) or residual claims (such as common stock, whose owners receive assets remaining after creditors' and other claims have been satisfied). Most securities are marketable to the general public, meaning that they can be sold or assigned to other investors in the open marketplace.

In a 1946 decision (SEC v. Howey Co., 328 U.S. 293), the U.S. Supreme Court defined a security to be an investment contract based on the following four criteria, which are collectively referred to as the Howey Test:

1. The involvement of an investment of money or other valued assets.
2. The formation of and investment into a common enterprise.
3. An expectation of profits from this investment.
4. The use of a third party to promote the offering.

Some of the more common types of securities and tradable instruments are classified and briefly introduced in the following:

1. Debt securities: Denote creditorship of an individual, firm, or other institution. They typically involve payments of a fixed series of payments to interest or amounts towards principal along with principal repayment. Examples include:

Bonds: Long-term debt securities issued by corporations, governments, or other institutions.

Treasury securities: Debt securities issued by the U.S. Treasury of the federal government.

2. Equity securities (stock): Denote ownership in a business or corporation. They typically permit for dividend payments if the firm's debt obligations have been satisfied. The two primary types of marketable equity issued by corporations are:

Common stock: Security held by the residual claimant or owner of the firm

Preferred stock: Stock that is given priority over common stock in the payment of dividends and liquidation; preferred stock holders must receive their dividends if common stock holders are to be paid dividends

3. Derivative securities: Have payoff functions derived from the values of other securities, rates, or indices. Some of the more common derivative securities are:

Options: Securities that grant their owners rights to buy or sell an asset at a specific price on or before the expiration date of the security. Options on stock are among the most frequently traded. The two types of stock options are<sup>1</sup>:

Call: A security or contract granting its owner the right to purchase a given asset at a specified price on or before the expiration date of the contract

Put: A security or contract granting its owner the right to sell a given asset at a specified price on or before the expiration date of the contract

Futures contracts: Instruments that obligige their participants to either purchase or sell a given asset at a specified price on the future settlement date of that contract. We will discuss later the differences between futures and options contracts. Investors may take either a long or a short position in a futures contract. A long position obligates the investor to purchase the given asset on the settlement date of the contract and a short position obligates the investor to sell the given asset on the settlement date of the contract.

Swaps: Provide for the exchange of cash flows associated with one asset, rate, or index for the cash flows associated with another asset, rate, or index.

4. Commodities: Contracts, including futures and options on physical commodities such as oil, metals, corn, and so on. A commodity contract will be characterized by five features: the commodity (e.g., heating oil no. 2), the exchange on which the contract is traded (e.g., NYM for New York Mercantile Exchange), the size of the contract (e.g., 42,000 gallons), the settlement price per unit (e.g., \$2.75 per gallon), and the settlement date or delivery month (e.g., September 2010).
5. Currencies: For transactions to be executed between countries with different currencies, some type of foreign exchange (also called currency exchange, FOREX or FX) must take place. Foreign exchange is simply the trading of one currency for another. Exchange rates denote the number of units of one currency that must be given up for one unit of a second

currency. Exchange transactions can occur in either spot or forward markets. In the spot market, the exchange of one currency for another occurs when the agreement is made. For example, dollars may be exchanged for euro now in an agreement made now. This would be a spot market transaction. In a forward market transaction, the actual exchange of one currency for another actually occurs at a date later than that of the agreement. Thus, traders could agree now on an exchange rate for two currencies at a later date. Spot and forward contract participants take one position in each of two currencies:

a. Long: An investor has a "long" position in the currency that he will accept at the later date.
b. Short: An investor has a "short" position in the currency that he must deliver in the exchange.

Currency futures contracts are much like forward contracts, standardized to trade on exchanges with specified settlement prices, dates, and contract sizes. Futures contracts normally provide for margin and marking to the market.

6. Indices: Contracts pegged to measures of market performance such as the Dow Jones Industrials Average or the S&P 500 Index. These are frequently futures contracts on portfolios structured to perform exactly as the indices for which they are named. Index traders also trade options on these futures contracts.

It is important to note that this list of security types is far from complete; it only reflects some of the instruments most frequently discussed in this book. In addition, most of the instrument types will have many different variations.

Investors purchase securities for investment purposes. Their purchases may be motivated by profit motives or by risk management. As we discussed earlier, profits might be obtained through successful speculating (forecasting correctly the direction of security prices and payments associated with securities). Speculators are highly dependent on quality information. A second potential source of profits is arbitrage, the simultaneous purchase and sale of the same or substantially similar asset at different prices. Arbitrage succeeds when the sum paid for purchased assets is less than the sales proceeds of sold assets. Arbitrageurs are highly dependent on low transaction costs and speed of trade execution. Profits can also be obtained through market making, that is, by providing liquidity while profiting from differences between bid and offer prices. Many investors will profit from all three types of trading motivations. Investors might also purchase securities to manage risk. For example, some securities serve as excellent hedges for others. Securities are purchased from selling counterparties and the acquisition and liquidation processes are referred to as trading.

We will regularly discuss margin in its various forms in later chapters. In brief, the term margin refers to funds posted at the initiation of an investment position by a trader to ensure the trainer fulfills her trading obligations. Margin can also refer to borrowing money to invest in securities—that is, for example, to buy stock on margin.

## 1.2 SECURITIES TRADING

Trading occurs in securities markets, physical or virtual, where traders communicate with one another and execute transactions. The basic function of a market is to bring

together buyers and sellers. Most markets also provide information in the price discovery process, and the information revealed in this process is a function of market structure. This book will focus on the process of trading and design of markets, and will discuss investing and certain investment decisions as well when appropriate.

The first component of a trade involves the acquisition of information and quotes. Quality information and transparency are crucial to price discovery, the process by which the market discovers prices. Traders want to know prices at which they can buy (ask or offer prices) and sell (bid prices), along with the more recent prices of actual executions (e.g., last). Real-time and time-delayed quote and price services can be purchased from data vendors such as Bloomberg, Refinitiv Eikon, and Factset or obtained through a variety of broker, media and other sources. Transparent markets disseminate high-quality information quickly to the public. Generally, markets that communicate real-time bids, offers, and executed trade information are more transparent than dealer markets that do not. Opaque markets are those that lack transparency.

The second component of the trade is the routing of the trade order. Routing involves selecting the broker(s) to handle the trade(s), deciding which market(s) will execute the trade(s) and transmitting the trade(s) to the market(s). An individual investor might route her trade through her broker who might route it to a major exchange. The third component of the trade is its execution, when the security is actually bought or sold. Buys are matched and executed against sells according to the rules of that market. Rules might provide for electronic execution, telephone execution, or direct human (face-to-face) execution. Finally, the fourth component of the trade is its confirmation, clearance, and settlement. Clearance is the recording and comparison of the trade records, and settlement involves the actual delivery of the security and its payment. Trade allocation might also be a part of this final process, as large institutional orders involving many clients and many transactions are allocated to various clients. Settlement is the actual transfer of securities and payments.

## Algorithmic Trading: A Brief Introduction

Large orders move markets. For example, a large buy order increases security prices, which, obviously, is not good for the buyer placing the order. Typical transaction sizes in many markets such as the NYSE used to be very small relative to the order sizes placed by institutional traders. This meant that large institutional trades could have a significant and unwanted impact on execution prices unless larger orders were broken into smaller orders, to disguise them as uninformed small investor orders. Algorithmic trading refers to automated trading with the use of computer programs for automatically submitting and allocating trade orders among markets and brokers as well as over time so as to minimize the price impact of large trades. Many institutional and agency traders employ algorithmic trading (also called automated trading, black box trading, and robotrading) to break up large orders into smaller orders to reduce execution risk, preserve anonymity, and minimize the price impact of a trade. Significant portions of these orders might be withheld from public display to minimize their price impact in the market. The hidden portions of these large institutional orders are sometimes referred to as dark liquidity pools because they are hidden

from the public. Orders are often partially revealed, in which case they are called iceberg or hidden-size orders, with brokers instructed not to reveal the full size of the order. Rooted in program trading (defined by the NYSE as computer-initiated trades involving 15 or more stocks with value totaling more than \$1 million) dating back to the 1980s, algorithmic trading accounts for between 30% and 80% of trade volume in many markets.

Strategies used by algorithms vary widely. Generally, algorithmic trading results from mathematical models that analyze every quote and trade in the relevant market, identify liquidity opportunities, and use this information to make intelligent trading decisions. Some algorithmic trading models seek to trade at or better than the average price over a day (e.g., volume weighted average price—VWAP, pronounced Vee-whap) and others seek to execute slowly so as to have minimal price impact. Algorithms sometimes are set to produce more volume at market opens and closes when trading volume is high, and less during slower periods such as around lunch. They can seek to exploit any arbitrage opportunities or price spreads between correlated securities. In addition, algorithmic trading can also account and adjust for trading costs such as commissions and taxes as well as regulatory issues such as those associated with short selling (borrowing stock, then selling it). However, algorithmic trading does have risks, such as leaks that might arise from competitor efforts to reverse engineer them. Many algorithms lack the capacity to handle or respond to exceptional or rare events. This can make algorithmic trading very risky. In addition, any malfunction, including a simple lapse in communication lines, can cause the system to fail. Thus, careful human supervision of algorithmic trading and other safeguards are crucial.

While algorithmic trading traditionally refers to the trade slicing and execution methods discussed above, the term is sometimes used in a more general sense to include "alpha models," which are used to make trade decisions to generate trading profits or control risk. Thus, more generally, algorithmic trading could be defined as trading based on the use of computer programs and sophisticated trading analytics to execute orders according to predefined strategies. Thus, algorithmic trading can be generalized to include program trading as defined by the NYSE earlier in this section. Regardless, algorithmic trading is highly dependent on the most sophisticated technology and analytics.

## 1.3 BARGAINING

One of the most important aspects of the trading process is to arrive at a price agreeable to all parties of the trade. Bargaining is the negotiation process over contract terms that occurs between a single buyer and a single seller for a single transaction. The negotiation can be over price, quantity, security attributes, or any other factor important to one or both counterparties. More generally, bargaining occurs when two or more economic agents have in common an interest to cooperate, but have conflicting interests over the details of cooperation. Bargaining is the process used by agents to seek an agreement.

Bargaining is useful in the trading of securities when transaction sizes are large enough for the benefits of negotiation to exceed the costs of negotiation. Bargaining on prices occurs between floor brokers on the NYSE when the transaction size is large enough to justify the cost of personal interaction. Liquidnet, an "upstairs" market that matches institutional buyers and sellers of large blocks of equity securities and other instruments, enables

institutions to directly bargain and trade confidentially with one another. Liquidnet provides an electronic format for this negotiation process. Traders use the system by entering symbols for securities that they wish to buy or sell. If Liquidnet sees a potential match, it notifies the counterparties, who bargain anonymously with each other in a virtual meeting room using the Liquidnet system. In an effort to protect trader confidentiality, Liquidnet rates traders with respect to the likelihood that they will actually execute transactions that Liquidnet arranges. Traders seeking to avoid front-running and quote-matching can request that trade information be hidden from other traders who are deemed unlikely to actually successfully negotiate transactions.<sup>3</sup> When matched, trade counterparties negotiate directly with each other the terms of their trade. Counterparties will know prices from other markets, leaving relatively little room for significant pricing disagreements. If they come to terms, they report the transaction to Liquidnet, which arranges the transfer and takes a commission on each share. In January 2017, Liquidnet claimed that the average size of its institutional orders was approximately 42,000 shares, compared to average order sizes of less than 300 shares in the NYSE and NASDAQ markets. In the NYSE and NASDAQ markets, institutions seek to execute large orders with small counterparties, requiring them to break up orders and work them over time. It is very difficult for institutions to disguise their intents with respect to order directions and sizes, placing them at obvious disadvantage in the trading arena. Obviously, trading against smaller orders is not the most effective means of satisfying institutional liquidity needs. Bargaining is often an expensive means to discover a price, but its costs may be less than its benefits for large transactions.

Bargaining power is the relative ability of one competitor to exert influence over another. In a trading scenario, bargaining power typically reflects one trader's ability to influence the transaction price. Relative bargaining power among traders is typically a product of the following:

- Patience and liquidity, which increases bargaining power
- Risk aversion, which reduces bargaining power
- Credible alternatives and options that enhance bargaining power
- The cost of backing down, which decreases bargaining power
- Superior information, which increases bargaining power
- Reputation with respect to strength, staying power, and resolve, all of which enhance bargaining power

## 1.4 AUCTIONS

An auction is a competitive market process involving multiple buyers, multiple sellers, or both. An auction is the process of trading a security through bidding, and then placing

<sup>3</sup>An example of front-running is when a broker with information about a client's order uses this information to set a bid or offer in her own order so as to exploit the client's order. Quote matching occurs when a small trader places an order one tick from that of a large trader so as to profit from the large trader's transaction price pressure, or to use the large trader as a counterparty should prices reverse. Both types of these disruptive transactions will be discussed in Chapter 13.

it to the winning bidder.<sup>4</sup> Vickrey (1961) demonstrated that optimal bids are increasing in bidders' values; therefore, the auctioned object will be won by the bidder who values it the most. Auctions are a useful and cost-effective method for pricing a security with an unknown value. That is, auctions are useful price discovery processes.

A Walrasian auction is a simultaneous auction where each buyer submits to the auctioneer his demand and each seller submits her supply for a given security at every possible price. Theoretically, the Walrasian auctioneer conducts a series of preliminary auctions called *tâtonnement* to determine supply and demand levels at various prices. In the actual auction, supply is balanced against demand meaning that the resulting transaction price is set so that the total demand from all buyers equals the total supply from all sellers. Thus, the Walrasian auction finds the clearing price that perfectly matches the supply and the demand. While the Walrasian auction has been used primarily as a theoretical construct, it does closely resemble certain financial auctions, such as that conducted in the London Bullion Market Association fixing process.[5] In this market, five representatives of firms would meet twice each day at the offices of N.M. Rothschild where the chairman called out prices so that firm representatives could announce their levels of supply and demand at announced prices. Until the imbalance between supply and demand cleared, new prices were announced. Many markets use similar procedures to open trading for the day.

An English auction or ascending bid auction, used by the English art and antique auctioners, is typically employed to sell automobiles, farm equipment, and animals as well as art. English auction participants bid openly against one another, with each successive bid higher than the previous one. Because the auction is open and involves public sequences of bids, it provides for some degree of price discovery before it concludes. The auction ends and a "winner" is declared when no participant is willing to bid higher.

The traditional Dutch auction or descending bid auction, used in the 17th-century Dutch tulip bulb auctions, begins with the auctioneer calling out a high offer price, which is reduced until some participant submits the first and highest bid, crying out "mine." The "winner" pays that price. Thus, the Dutch auction is designed to discover the maximum price that a buyer is willing to pay.

[Content truncated due to earlier file truncation]
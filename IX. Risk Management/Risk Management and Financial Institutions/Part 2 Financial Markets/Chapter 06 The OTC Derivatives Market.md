---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 6
linter-yaml-title-alias: Chapter 6
---

# Chapter 6

# The OTC Derivatives Market

The over-the-counter (OTC) market is a huge network of traders who work for financial institutions, large corporations, or fund managers. As indicated in Chapter 5, the OTC derivatives market, when measured in terms of the value of the underlying asset, is much larger than the exchange-traded derivatives market. A key advantage of the over-the-counter market is that the terms of a contract do not have to be those specified by an exchange. Market participants are free to negotiate any mutually attractive deal. Phone conversations in the over-the-counter market are usually taped. If there is a dispute over an agreement reached by phone, the tapes are replayed to resolve the issue. Trades in the over-the-counter market are typically much larger than trades in the exchange-traded market.

Before the 2007-2008 Global Financial Crisis (GFC), the OTC market was largely unregulated. Two market participants could enter into any trade they liked. They could agree to post collateral or not post collateral. They could agree to clear the trade directly with each other or use a third party. Also, they were under no obligation to disclose details of the trade to anyone else. As we will explain, this has now changed.

# 6.1 A Reference Point: Exchange-Traded Markets

Before discussing OTC markets, it is useful to review the operation of exchange-traded markets so that similarities and differences become apparent. Exchanges have been used to trade financial products for many years. Some exchanges, such as the New York Stock Exchange (NYSE; www.nyse.com), focus on the trading of stocks. Others, such as the Chicago Board Options Exchange (CBOE; www.cboe.com) and CME group (CME; www.cmegroup.com), are concerned with the trading of derivatives such as futures and options.

The role of the exchange is to define the contracts that trade and organize trading so that market participants can be sure that the trades they agree to will be honored. Traditionally individuals have met at the exchange and agreed on the prices for trades, often by using an elaborate system of hand signals. This is known as the open outcry system. Exchanges have now largely replaced the open outcry system with electronic trading. This involves traders entering their desired trades at a keyboard and a computer being used to match buyers and sellers. Not everyone agrees that the shift to electronic trading is desirable. Electronic trading is less physically demanding than traditional floor trading. However, in some ways, it is also less exciting. Traders do not have the opportunity to attempt to predict short-term market trends from the behavior and body language of other traders.

Sometimes trading is facilitated with market makers. These are individuals or companies who are always prepared to quote both a bid price (price at which they are prepared to buy) and an ask or offer price (price at which they are prepared to sell). For example, at the request of a trader, a market maker might quote "bid 30.30, ask 30.40" for a particular share indicating a willingness to buy at  \$30.30 and sell at\$ 30.40. At the time quotes are provided to the trader the market maker does not know whether the trader wishes to buy or sell. Typically, the exchange will specify an upper bound for the spread between a market maker's bid and ask prices. The market maker earns its profit from this spread, but must manage its inventories carefully to limit its exposure to price changes.

The exchange clearing house is an adjunct to the exchange. It has a number of members. Brokers who are not members must channel their business through a member. The clearing house stands between the two sides to a transaction and guarantees the transaction. This is particularly important for futures and options. To guarantee the performance of a member for these transactions, a clearing house will require margin (i.e., collateral) from the member. The margin required is updated daily and sometimes several times during a day. Members will in turn require margin from the non-members (e.g., brokers) for which they are clearing trades. Brokers will require margin from their clients.

In determining the margin requirements from clearing house members, netting is usually applied. This means that the short positions the clearing house member is handling for clients are netted against the long positions for the purpose of calculating margin requirements. Suppose for example that the clearing house member has two clients, one with a long position of 20 in a particular futures contract, the other with a short position of 15 in the same futures contract. The margin would be calculated on the basis of a long position in 5 contracts. Margin is calculated for futures and short option positions so that the clearing house has a very high probability of not losing money in the case of a member default. Clearing house members are required to contribute to a guaranty fund. This may be used by the clearing house in the event that a member defaults and the member's margin proves insufficient to cover losses.

The margining system has worked well. Traders at major exchanges have always had their contracts honored. Futures markets were tested on October 19, 1987, when the S&P 500 index declined by over  $20\%$ . The margin balances of S&P 500 futures traders with long positions were insufficient to cover their losses. Some refused to provide more margin when asked by their brokers to do so. As a result, some brokers went bankrupt because they were unable to meet margin calls on contracts entered into for clients. However, the clearing houses had sufficient funds to ensure that members with short futures were paid.

# 6.2 Clearing in OTC Derivatives Markets

We now describe how transactions are cleared in the OTC market. There are two main approaches: bilateral clearing and central clearing. In bilateral clearing, market participants clear transactions with each other. In central clearing, a third party, known as a central counterparty (CCP), stands between the two sides and plays a similar role to an exchange clearing house. The two alternatives are illustrated schematically in Figure 6.1. (This figure makes the simplifying assumption that there are only eight market participants and one CCP.)

# 6.2.1 Margin

We have introduced the term "margin" in connection with the collateral posted in the exchange-traded market. It is also used to describe the collateral (if any) posted in the OTC derivatives market.

Variation margin is the collateral posted to reflect the change in the value of a derivatives portfolio. Consider the situation where Party A is trading with Party B and the collateral agreement states that variation margin (with no threshold or minimum transfer amount) has to be posted by both sides. This means that, if the value of outstanding transactions changes during a day so that they increase in value by X to A (and therefore decrease in value by X to B), B has to provide A with X of acceptable collateral. The cumulative effect of variation margin is that, if outstanding derivatives have a value of +$V to A and -$V to B at a particular time, B should have posted a total of $V of collateral with A by that time.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/13dec361fe13a5bf92e023823ee18ddf053397b9f4c8e9129b4dd5143ea0c5c3.jpg)

Bilateral clearing

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/4fcd951fea0eda88c94d1e9ccb19ecd485d8cae74d53c753a7e507b6b7cc3cf1.jpg)

Clearing through a single CCP

Figure 6.1 Bilateral and Central Clearing

Variation margin provides some protection against a counterparty default. It would provide total protection in an ideal world where (a) the counterparty never owes any variation margin at the time of default and (b) all outstanding positions can be replaced at mid-market prices as soon as the counterparty defaults. In practice, defaulting counterparties often stop posting collateral several days before they default, and the non-defaulting counterparty is usually subject to a bid-ask spread as it replaces transactions. To allow for adverse movements in the value of the portfolio during a period prior to default when no margin is being posted, OTC market participants sometimes require initial margin in addition to variation margin. Note that, in this context, adverse market movements are increases in the value of the portfolio to the non-defaulting party, not decreases. This is because increases in the value during a period when variation margin is not being posted lead to increases in replacement costs. Initial margin, which can change through time as the outstanding portfolio and relevant volatilities change, reflects the risk of a loss due to adverse market moves and the costs of replacing transactions.

Most margin is cash, but the agreements in place may specify that securities can be posted instead of cash. The securities may be subject to a haircut. This means that the market value of the securities is reduced to determine their value for margin purposes. For example, a Treasury bond might be subject to a  $10\%$  haircut, indicating that, if its market value were  $\$ 100$ , it would cover only  $\$ 90$  of a margin requirement.

Should cash margin earn interest? There is a difference between futures markets and OTC markets here. A futures exchange clearing house requires both initial margin and variation margin from members. Members earn interest on the initial margin. But they do not do so on variation margin because futures contracts are settled daily so that variation margin does not belong to the member posting it. OTC trades are not usually settled daily and so interest is earned (paid) on the amount of variation margin provided (received).

# 6.2.2 Central Clearing

A CCP operates very much like an exchange clearing house. When two companies, A and B, agree to an over-the-counter derivatives transaction and decide to clear it centrally, they present it to a CCP. If the CCP accepts it (for a fee), it acts as an intermediary and enters into offsetting transactions with the two companies.

Suppose, for example, that the transaction is an interest rate swap where company A pays a fixed rate of  $5\%$  to company B on a principal of  $\$100$  million for five years and company B pays a floating rate to company A on the same principal for the same period of time. Two separate transactions are created. Company A has a transaction with the CCP where it pays  $5\%$  and receives the floating rate on  $\$100$  million. Company B has a transaction with the CCP where it pays the floating rate and receives  $5\%$  on  $\$100$  million. The two companies no longer have credit exposure to each other. This is illustrated in Figure 6.2. If one or both parties to the transaction are not members of the CCP, they can clear the transaction through members.

Three large CCPs are

1. SwapClear (part of LCH Clearnet in London),
2. ClearPort (part of the CME Group in Chicago), and
3. ICE Clear Credit (part of the Intercontinental Exchange).

A CCP requires its members to provide initial margin and variation margin for the transactions being cleared. Typically, the initial margin is calculated so that there is a roughly  $99\%$  probability that it will cover market moves over five days. This protects the CCP from losses as it tries to close out or replace the positions of a defaulting member.

Consider the swap in Figure 6.2. Suppose for simplicity that it is the only transaction each side has with the CCP. The CCP might require an initial margin of 0.5 million from each side. If, on the first day, interest rates fall so that the value of the swap to A goes down by 100,000, Party A would be required to pay a variation margin equal to this to the CCP, and the CCP would be required to pay the same amount to B. There could also be a change to the initial margin requirements determined by the CCP. If required margin is not paid by one of its members, the CCP closes out its transactions with that member. Cash and Treasury instruments are usually accepted as margin by CCPs. Typically the interest rate paid on cash balances is close to the overnight federal funds rate for U.S. dollars (and close to similar overnight rates for other currencies).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/5dc2ff084f5368624578688d81a72c230e761dfc5ba3ca5e62e3a9091eead66e.jpg)

Figure 6.2 Role of CCP in OTC Markets

In practice, market participants are likely to have multiple transactions outstanding with the CCP at any given time. The initial margin required from a participant at any given time reflects the volatility of the value of its total position with the CCP. The role of a CCP in the OTC market is similar to the role of a clearing house in the exchange-traded market. The main difference is that transactions handled by the CCP are usually less standard than transactions in the exchange-traded market so that the calculation of margin requirements is more complicated.

The key advantage of clearing a transaction through a CCP is that OTC market participants do not need to worry about the creditworthiness of the counterparties they trade with. Credit risk is handled by the CCP using initial and variation margin.

A CCP requires its members to contribute to a default fund. (As mentioned, if one or both parties to a transaction are not members of the CCP, they can clear the transaction through members. They will then have to post margin with the members.) If a member fails to post margin when required, the member is in default and its positions are closed out. In closing out a member's positions, the CCP may incur a loss. A waterfall defines who bears the loss. The order in which the loss is funded is usually as follows:

1. The initial margin of the defaulting member
2. The default fund contribution of the member
3. The default fund contributions of other members
4. The equity of the  $\mathrm{CCP^6}$

This is similar to the way losses in the event of a default are funded by an exchange clearing house.

# 6.2.3 Bilateral Clearing

In bilateral clearing, each pair of market participants enters into an agreement describing how all future transactions between them will be cleared. Typically this is an ISDA master agreement. (ISDA is short for International Swaps and Derivatives Association.) An annex to the agreement, known as the credit support annex (CSA), defines collateral arrangements. In particular, it defines what collateral (if any) has to be posted by each side, what assets are acceptable as collateral, what haircuts will be applied, and so on. The main body of the agreement defines what happens when one side defaults (e.g., by declaring bankruptcy, failing to make payments on the derivatives as they are due, or failing to post collateral when required). We will discuss this in more detail shortly.

# 6.2.4 Netting

Netting is a feature of ISDA master agreements and a feature of the agreements between CCPs and their members. It means that all transactions between two parties are considered to be a single transaction when (a) collateral requirements are being calculated and (b) early terminations occur because of a default. Netting reduces credit risk on derivatives portfolios because it means that the defaulting party cannot choose to default on transactions that have a negative value to it while keeping those that have a positive value.

Netting can also save initial margin. Suppose Party A has two transactions with a CCP that are not perfectly correlated. The initial margin for the portfolio is likely to be less than that for the two transactions separately.

# 6.2.5 Events of Default

Derivatives transactions are treated differently from other transactions in the event that a market participant fails to meet its obligations. For example, in ISDA master agreements there is an early termination provision that takes precedence over bankruptcy rules. This states that, if there is an "event of default," the non-defaulting party has the right to terminate all transactions with the defaulting party after a short period of time has elapsed.7 Events of default include declarations of bankruptcy, failure to make payments as they are due, and failure to post collateral when required.8 Non-derivative contracts cannot always be terminated in this way. Another important difference between derivatives transactions and non-derivatives transactions is that in the case of derivatives transactions the non-defaulting party can take immediate possession of any collateral that has been posted by the defaulting party. It does not have to get a court order to allow it to do this.

If there is an event of default under an ISDA master agreement, the non-defaulting party calculates the mid-market value of outstanding transactions. It then adjusts this valuation in its favor by half the bid-ask spreads on the transactions for the purposes of calculating a settlement amount. This adjustment is compensation for the fact that it will have to trade with other dealers to replace the transactions and it will be subject to their bid-ask spreads when it does so. Suppose that one transaction has a mid-market value of \$20 million to the non-defaulting party and that the transaction is bid \$18 million, ask \$22 million. For the purposes of settlement, the transaction would be valued at \$22 million because this is what it would cost the non-defaulting party to replace the defaulting party's position in the transaction. If the non-defaulting party had the other side of the transaction so that its mid-market value were -\$20 million, it would be valued at -\$18 million for settlement purposes. In this case, the assumption is that a third party would be prepared to pay only 18 million to take the defaulting party's position.

# 6.3 Post-Crisis Regulatory Changes

The OTC derivatives market was considered by many to have been partly responsible for the 2007-2008 GFC. When the G20 leaders met in Pittsburgh in September 2009 in the aftermath of the GFC, they wanted to reduce systemic risk by regulating the OTC market. The statement issued by the leaders after the meeting included the following paragraph:

All standardized OTC derivative contracts should be traded on exchanges or electronic trading platforms, where appropriate, and cleared through central counterparties by end-2012 at the latest. OTC derivative contracts should be reported to trade repositories. Non-centrally cleared contracts should be subject to higher capital requirements. We ask the FSB and its relevant members to assess regularly implementation and whether it is sufficient to improve transparency in the derivatives markets, mitigate systemic risk, and protect against market abuse.

The results of this were three major changes affecting OTC derivatives:

1. A requirement that all standardized OTC derivatives be cleared through CCPs. Standardized derivatives include plain vanilla interest rate swaps (which account for the majority of OTC derivatives traded) and default swaps on credit indices. The purpose of this requirement is to reduce the credit exposure derivatives dealers have to each other. Financial institutions are then less interconnected and there is less likely to be collapse of the financial system.
2. A requirement that standardized OTC derivatives be traded on electronic platforms. This is to improve transparency. The thinking is that, if there is an electronic platform for matching buyers and sellers, the prices at which products trade should be readily available to all market participants. The platforms are called swap execution facilities (SEFs) in the United States and multilateral trading facilities (MTFs) or organized trading facilities (OTFs) in Europe. In practice, standardized products once they have been traded on these platforms are passed automatically to a CCP.
3. A requirement that all trades in the OTC market be reported to a central trade repository. This requirement provides regulators with important information on the risks being taken by participants in the OTC market. It is partly a response to the AIG situation. (AIG incurred huge losses in the OTC market, and regulators were unaware of them until the company sought a bailout in 2008.)

The first two of these requirements apply only to transactions between two financial institutions (or between a financial institution and a non-financial company that is considered to be systemically important because of the volume of its OTC derivatives trading). Derivatives dealers can therefore continue to trade with many of their non-financial corporate clients in the same way that they did pre-GFC.

About  $25\%$  of OTC transactions were cleared through CCPs pre-GFC and the remaining  $75\%$  were cleared bilaterally. As a result of the new rules, these percentages have flipped so that approximately  $75\%$  of OTC transactions are now cleared through CCPs while  $25\%$  are cleared bilaterally.

# 6.3.1 Uncleared Trades

Following another G20 meeting in 2011, the rules have been tightened for non-standard OTC derivatives. These are the derivatives that are not covered by the rules just mentioned. They are cleared bilaterally rather than centrally and are referred to as uncleared trades. Regulations, which have been implemented between 2016 and 2022, require uncleared trades between two financial institutions (or between a financial institution and a non-financial company that is considered to be systemically important) to be subject to rules on the margin that has to be posted. Previously, one of the attractions of bilateral clearing was that market participants were free to negotiate any credit support annex to their ISDA master agreements.

The rules state that both initial margin and variation margin must be posted for uncleared trades by both sides. Variation margin was fairly common in the OTC market pre-GFC (particularly in trades between derivatives dealers), but initial margin was rare. When entering into a transaction with a much less creditworthy counterparty, a derivatives dealer might insist on the counterparty posting initial margin. But the posting of initial margin by both sides was almost unheard of in the bilaterally cleared market.

Variation margin is usually transmitted directly from one counterparty to the other. Initial margin when posted by both sides cannot be handled in this way. If, for example, A transmitted  \$1 million of initial margin to B and B transmitted\$ 1 million of initial margin to A, the initial margin would not serve the desired purpose because the transfers would cancel each other. For this reason the regulations require initial margin to be transmitted to a third party, where it is held in trust.

# 6.3.2 Determination of Initial Margin: SIMM

For the new rules on uncleared transactions to work, the two sides to an ISDA master agreement must agree on the variation margin and initial margin. The variation margin requires agreement on the valuation of outstanding transactions, and procedures have been established for resolving any disagreements on this. The calculation of initial margin is more complicated than valuing the transactions and there is more scope for different models to give different results. As a result there have been attempts to develop an industry standard.

Initial margin is specified in the regulations for portfolios of uncleared transactions between two parties as the gain in value over 10 days that we are  $99\%$  certain will not be exceeded in stressed market conditions. Note that initial margin is the mirror image of VaR. When we are calculating VaR, we are determining extreme percentiles of the loss distribution, but when we are calculating initial margin we are determining extreme percentiles of the gain distribution. This is because exposure increases as the uncollateralized value of a portfolio increases.

The Basel Committee proposed a grid approach for calculating initial margin, which specified initial margin as a percentage of notional principal for different types of transactions. This was unpopular because it did not incorporate netting. If a market participant entered into a certain transaction on Day 1 and an almost offsetting transaction on Day 5, both with the same counterparty, the initial margin would double—even though the net exposure to the counterparty would be close to zero. ISDA proposed what is known as the Standard Initial Margin Model (SIMM) as a way of overcoming this. This model (see Appendix M) has now been approved by regulators.

# 6.4 Impact of the Changes

The new regulations have led to a world where more collateral is required for OTC derivatives transactions. Previously, most OTC transactions were cleared bilaterally and an initial margin was usually not required. Under the new regulations, most transactions are cleared through CCPs where both initial and variation margin are required from both sides. Furthermore, transactions that are cleared bilaterally between financial institutions require even more collateral than they would if they could be cleared through CCPs.

As discussed by Duffie and Zhu, there is one potential partial offset to the huge increase in collateral requirements mandated by the new rules.10 Under central clearing there is the potential for more netting. In Figure 6.1, under bilateral clearing a market participant has many different netting sets, one for each of the other market participants. Under central clearing, there is only one netting set. Bank A can, for example, net its transactions where Bank B is the counterparty with its transactions where Bank C is the counterparty, provided that all go through the same CCP.

Figure 6.1, however, is a simplification. It suggests that the choice is between a  $100\%$  bilateral world and a world where all transactions are cleared through a single CCP. The

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/0e1cbeab8b1442fad3ce584fd16f0073f8012dbcd733f9f1d1117693e7dc9de1.jpg)

Figure 6.3 Example Where There Are Three Market Participants, One CCP, and Two Product Types

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/764d9a640c860b025156b63a200f5f943f8ade19d6864bdd523ef3932b48841e.jpg)

<table><tr><td>Dealer</td><td>Exposure after bilateral netting</td></tr><tr><td>A</td><td>0</td></tr><tr><td>B</td><td>100</td></tr><tr><td>C</td><td>20</td></tr><tr><td>Average</td><td>40</td></tr></table>

<table><tr><td>Dealer</td><td>Exposure after netting including CCP</td><td>Exposure after netting excluding CCP</td></tr><tr><td>A</td><td>120</td><td>0</td></tr><tr><td>B</td><td>120</td><td>120</td></tr><tr><td>C</td><td>90</td><td>90</td></tr><tr><td>Average</td><td>110</td><td>70</td></tr></table>

One product type (represented by dotted lines) can be cleared; the other (represented by solid lines) cannot.

reality is that (a) there will be a number of CCPs and they may not cooperate with each other to reduce initial margin requirements, and (b) some transactions will continue to be cleared bilaterally; so banks will face a situation that is a mixture of the two worlds depicted in Figure 6.1.

It is possible that the new rules requiring the use of CCPs will reduce rather than increase netting in some cases. This is illustrated by Figure 6.3, which shows the situation where there are three market participants and one CCP. The exposures represented by the dotted lines are standard transactions that can be cleared centrally. Those represented by the solid lines are nonstandard transactions that cannot be cleared centrally. For example, in B's dealings with A, the nonstandard transactions are worth 100 to B and  $-100$  to A; the standard transactions are worth  $+50$  to A and  $-50$  to B.

Without central clearing, the average exposure before collateral of the three parties is  $+40$ . With central clearing, the average exposure is 110 when the exposure to the CCP is included and 70 when it is not. Central clearing is likely to increase the collateral market participants have to post in this simple situation. This happens because without the central clearing rules standard transactions can be netted with nonstandard transactions, but with the central clearing rules this is no longer possible.

The overall effect of the changes has been an increase in margin requirements. Pre-GFC, relatively few OTC derivatives attracted initial margin. Now, the vast majority of OTC derivatives require initial margin. A related point is that financial institutions have more funds tied up in default fund contributions provided to CCPs.

# BUSINESS SNAPSHOT 6.1

# Rehypothecation

A practice in the management of collateral known as rehypothecation can cause problems. If Party A posts collateral with Party B and rehypothecation is permitted, Party B can use the same collateral to satisfy a demand for collateral from Party C; Party C can then use the collateral to satisfy a demand for collateral from Party D; and so on. In 2007, it was estimated that U.S. banks had more than  \$4 trillion of collateral, but that this was created by using\$ 1 trillion of original collateral in conjunction with rehypothecation. Rehypothecation was particularly common in the United Kingdom, where title to collateral is transferred.

After Lehman declared bankruptcy in September 2008, clients (particularly European hedge fund clients) found it difficult to get a return of the collateral they had posted with Lehman because it had been rehypothecated. As a result of this experience, many market participants are more cautious than they used to be, and clauses in CSAs banning or limiting rehypothecation are now common.

# 6.4.1 Liquidity

An important consideration for all derivatives market participants is liquidity. Not only is the collateral posted at any given time a drain on liquidity, but banks have to keep a sufficient quantity of liquid assets on hand to ensure that they are able to meet any margin calls. (Margin calls from a CCP have to be met almost immediately.) As we will see in later chapters, regulators have recognized the importance of liquidity by developing two liquidity ratios that banks must adhere to.

# 6.4.2 Rehypothecation

What is known as "rehypothecation" was common in some jurisdictions (particularly the United Kingdom) before the GFC. (See Business Snapshot 6.1.) It involved a dealer using collateral posted with it by one counterparty to satisfy a collateral demand by another counterparty. It is estimated that pre-GFC about  \$4 trillion of collateral was required in derivatives markets, but that because of rehypothecation only\$ 1 trillion of new collateral was posted.[11] In other words, each item of collateral was used on average four times. Rehypothecation is restricted under new rules developed since the crisis. These rules allow initial margin to be rehypothecated once, but only if certain conditions are satisfied. Variation margin can be rehypothecated. But increasingly dealers themselves impose restrictions on rehypothecation because they do not want to be disadvantaged in the same way that some of Lehman's counterparties were (see Business Snapshot 6.1).

# 6.4.3 The Convergence of OTC and Exchange-Traded Markets

The developments we have been discussing are blurring the distinction between OTC derivatives and exchange-traded derivatives. Many OTC transactions are now traded on platforms similar to exchanges and cleared through organizations similar to exchange clearing houses. As time goes by, more OTC transactions are likely to be classified as "standard" so that the percentage of OTC transactions handled similarly to exchange-traded transactions will increase. What is more, even those OTC transactions between financial institutions that are cleared bilaterally may begin to look more like exchange-traded transactions. This is because initial margin has to be posted with a third party, and we can expect organizations (somewhat similar to exchange clearing houses) to be set up to facilitate this.

It is also the case that exchanges are increasingly trying to offer less standard products to institutional investors in an attempt to take business away from the OTC market. As a result, while OTC markets are moving in the direction of becoming more like exchange-traded markets, exchange-traded markets are moving in the opposite direction and becoming more like OTC markets. Many CCPs and exchanges have a common ownership and will find areas for cooperation on margin requirements and business practices. Whether a transaction is being cleared through an exchange or a CCP may not be important in the future because it will be handled in the same way by the same organization.

# 6.5 CCPs and Bankruptcy

The key objective of regulators is to reduce systemic risk. Some commentators have criticized the post-GFC derivatives regulations as replacing too-big-to-fail banks by too-big-to-fail CCPs. It certainly would be a disaster for the financial system if a major CCP such as LCH Clearnet's SwapClear or CME's ClearPort were to fail. In theory, as described in Hull (2012), it is possible to design the contract between CCPs and their members so that it is virtually impossible for a CCP to fail.[12] In practice, it is considered important that a CCP has "skin in the game." It is then motivated to take good decisions with respect to key issues such as whether a new member should be admitted, how initial margins should be set, and so on.

The main reason why it makes sense to replace too-big-to-fail banks by too-big-to-fail CCPs is that CCPs are much simpler organizations than banks. They are therefore much simpler to regulate than banks. In essence, regulators need ensure only that the CCP follows good practices in (a) choosing members, (b) valuing transactions, and (c) determining initial margins and default fund contributions. In the case of banks, a myriad of different, much more complex activities must be monitored. It is of course important for regulators to ensure that CCPs are not allowed to become more complex organizations by expanding outside their core activity of intermediating derivatives transactions.

# Summary

Prior to the 2007-2008 Global Financial Crisis (GFC), the over-the-counter (OTC) derivatives market was largely unregulated. Two market participants could agree to any transaction they liked and then reach any agreement they liked on how the transaction would be cleared. They were also free to choose any arrangements they liked for the posting of collateral. This is no longer the case. The OTC derivatives market is now subject to a great deal of regulation throughout the world. The extent to which the OTC derivatives market should be blamed for the GFC is debatable, but post-GFC regulatory changes are having a big effect on this market.

Most standard OTC derivatives between two financial institutions must be cleared through central counterparties. These are very similar to exchanges. They require initial margin and variation margin to be posted by both sides. Nonstandard transactions between financial institutions will continue to be cleared bilaterally, but are subject to regulation on the collateral that must be posted. Specifically, transactions between financial institutions are subject to initial margin (segregated) and variation margin (transferred from one side to the other when the value of outstanding transactions changes).

What will the derivatives world look like in 15 or 20 years? Present trends suggest that there may be a convergence between OTC and exchange-traded markets, and the distinction between the two will become blurred. But there is of course no certainty that this trend will continue.

# Further Reading

Basel Committee on Banking Supervision and IOSCO. "Margin Requirements for Non-Centrally Cleared Derivatives," September 2013.

Duffie, D., and H. Zhu. "Does a Central Counterparty Reduce Counterparty Risk?" Review of Asset Pricing Studies 1 (2011): 74-95.

Hull, J. "CCPs, Their Risks, and How They Can Be Reduced." Journal of Derivatives 20, no. 1 (Fall 2012): 26-29.

Hull, J. "The Changing Landscape for Derivatives." Journal of Financial Engineering 1, no. 2 (2014).

Hull, J. "OTC Derivatives and Central Clearing: Can All Transactions Be Cleared?" Financial Stability Review 14 (July 2010): 71-89.

Singh, M., and J. Aitken. "The (Sizable) Role of Rehypothecation in the Shadow Banking System." Working Paper, International Monetary Fund, 2010.

# Practice Questions and Problems (Answers at End of Book)

6.1 What is the difference between using an ISDA master agreement and using a CCP for clearing OTC derivative transactions?
6.2 Explain the new regulations introduced since the 2007-2008 Global Financial Crisis that (a) require certain derivative transactions to be cleared using CCPs and (b) require extra collateral for some transactions cleared bilaterally.
6.3 Why might the regulations introduced since the 2007-2008 Global Financial Crisis create liquidity problems for some financial institutions?
6.4 What is meant by a haircut in a collateral agreement?
6.5 Explain the meaning of "event of default" and an "early termination" in an ISDA master agreement.
6.6 In Figure 6.3 where the CCP is used, suppose that half of the transactions between A and B that are represented by the solid line are moved to the CCP. What effect does this have on (a) the average exposure of the three parties including their exposures to the CCP and (b) the average exposure of the three parties excluding their exposures to the CCP?
6.7 What credit risks is a company taking when it becomes a member of a CCP and clears transactions through the CCP?
6.8 "Netting affects the collateral that has to be posted and the settlement in the event of an early termination." Explain.
6.9 What is rehypothecation?
6.10 Why are CCPs easier to regulate than banks?
6.11 What is claimed by the non-defaulting party in an early termination under an ISDA master agreement?

# Further Questions

6.12 "Some aspects of the new regulations can be expected to increase the amount of collateral posted for derivatives, and some can be expected to reduce it." Explain this statement.
6.13 In Figure 6.3 where the CCP is used, suppose that an extra transaction between A and C that is worth 140 to A is cleared bilaterally. What effect does this have on the exposures?


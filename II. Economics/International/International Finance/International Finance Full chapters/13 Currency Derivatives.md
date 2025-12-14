---
aliases:
  - Currency Derivatives
tags:
key_concepts:
parent_directory: International Finance Full chapters
cssclasses: academia
title: "Chapter 13: Currency Derivatives"
linter-yaml-title-alias: "Chapter 13: Currency Derivatives"
---

# CHAPTER 13

## CURRENCY DERIVATIVES: FUTURES, OPTIONS AND)SWAPS

CHAPTER OUTLINE

13.1 Introduction

13.2 !e growth of derivative markets
13.3 Exchange-traded futures and options contracts
13.4 Currency futures and currency forwards
13.5 Open interest and reversing trades
13.6 !e use of currency futures for hedging purposes

13.7
!e symmetry of profit/losses on futures/forward positions
13.8 !e pricing of currency futures
13.9 Currency options
13.10 A currency option versus a forward contract for hedging
13.11 A currency option versus a forward for speculating
13.12 !e role of option contracts

13.13
Differences between options and futures contracts
13.14 !e pricing of currency options
13.15 Intrinsic value and time value

13.16 !e distribution of the option premium between time and intrinsic value
13.17 !e Garman and Kohlhagen option-pricing formula
13.18 A numerical example of the Garman–Kohlhagen formula
13.19 Problems with the currency option-pricing formula
13.20 !e OTC market in options
13.21 !e swaps market
13.22 Potential currency swap scenarios
13.23 A currency swap agreement
13.24 Distinguishing characteristics of the swap market from the forward and futures markets
13.25 Conclusions

Appendix

13.1 INTRODUCTION

Since the early 1970s there has been an enormous growth in the use of what is known as derivative instruments.

In this chapter we look at three types of derivative contracts: futures, options and swaps. !e aim of the

chapter is to introduce the reader to the basic features. In particular, we will emphasize how the contracts

can be used for both speculative and hedging purposes and the advantages and disadvantages of the various

contracts. We also look at basic formulae governing the appropriate pricing of futures and options contracts.

International Finance

Standardized financial futures and options contracts are traded on organized exchanges. !ey were first traded

- n the Chicago Board Options Exchange (CBOE) in the early 1970s, and in 1982 London opened the London
International Financial Futures Exchange (LIFFE) which in 2001 was merged with the Amsterdam, Paris, Belgian
and Lisbon Exchanges and is now called the Intercontinental Exchange - ICE Futures Europe. Since then Euronext
has also merged with the Lisbon Stock Exchange. A significant amount of trading in foreign currency options is
done outside of the major exchanges in what is known as the 'over-the-counter' (OTC) market in which banks and

- ther financial institutions design contracts tailor-made to meet the specific needs of their corporate clients. !e
swaps market is an OTC market with swaps between two parties being arranged on a tailor-made basis.

13.2 THE GROWTH OF DERIVATIVE MARKETS

!e phenomenal growth of trading in these derivative instruments has been one of the most important

developments in international financial markets over the last three decades. !e 1980s witnessed an

astonishing growth of futures and options markets and this trend has continued into the twenty-first century

as shown in Table 13.1.

!ere are numerous reasons for the rapid growth of futures and options markets, which include:

!e volatility of foreign exchange markets following the collapse of the Bretton Woods system of fixed

exchange rates (see Chapter 11), combined with the fact that greater freedom of movement of capital

internationally has created a large demand on the part of companies, investors, fund managers and

the like for a means to cope with the greater volatility and risk.

2. Futures and options markets enable traders to take speculative positions on price movements for a

low initial cash payment, known as the initial margin.

**Table 13.1** !e growth of exchange traded futures and options contracts

|Turnoveroffuturescontractstradedoninternationalexchanges<br>(Numbersofcontractsinmillions)|Col2|Col3|Col4|Col5|Col6|Col7|Col8|
|---|---|---|---|---|---|---|---|
|**Instruments**|**1990**|**1995**|**2000**|**2005**|**2010**|**2015**|**2019**|
|Interest rate|199.4|576.0|770.5|2093.6|2524.3|2702.9|3306.8|
|Currency|28.9|96.9|41.0|145.9|2206.4|2212.3|2516.7|
|Equity index|36.4|115.2|189.4|862.3|2285.3|2803.8|4193.5|
|**All Markets**|264.7|778.1|1007.9|3101.8|7016.0|7719.0|10017.0|
|**Turnover of options traded on international exchanges**<br>**(Numbers of contracts in millions)**|**Turnover of options traded on international exchanges**<br>**(Numbers of contracts in millions)**|**Turnover of options traded on international exchanges**<br>**(Numbers of contracts in millions)**|**Turnover of options traded on international exchanges**<br>**(Numbers of contracts in millions)**|**Turnover of options traded on international exchanges**<br>**(Numbers of contracts in millions)**|**Turnover of options traded on international exchanges**<br>**(Numbers of contracts in millions)**|**Turnover of options traded on international exchanges**<br>**(Numbers of contracts in millions)**|**Turnover of options traded on international exchanges**<br>**(Numbers of contracts in millions)**|
|**Instruments**|**1990**|**1995**|**2000**|**2005**|**2010**|**2015**|**2019**|
|Interest rate|54.0|101.3|106.4|429.1|650.9|573.6|977.7|
|Currency|18.7|23.1|7.0|19.6|55.1|457.5|1310.0|
|Equity index|108.9|181.0|274.0|3115.9|5080.6|3919.5|6434.3|
|**All Markets**|181.6|305.4|387.4|3564.6|5786.6|4950.6|8722|

_Source_ : GlobalInvestorGroup.com.

312

Currency Derivatives: Futures, Options and Swaps

3. Futures and options contracts enable traders to take short positions, that is, sell (or have the right

to sell) something they do not own with considerable ease. !is means that taking a position on a

currency depreciation is made as easy as taking a position on currency appreciation.

4. Unlike forward contracts where there is a degree of counterparty risk, all futures and options

contracts are guaranteed by the exchange on which they are traded.

13.3 EXCHANGE-TRADED FUTURES AND OPTIONS CONTRACTS

Exchange-traded currency futures and options contracts were traditionally sold in a central exchange by an

- pen outcry system. Under this system, traders congregate around a 'pit' on the trading $oor of the exchange,
and contracts are bought and sold at prices within hearing distance of all other traders. Once a contract price
is agreed, the traders fill out trading slips which are then matched by the exchange clearing house. Once the
clearing house confirms the deal, a futures or options contract is in existence and the contract is guaranteed
by the exchange. !is means that if one of the parties fails to fulfil its obligations, then the exchange will
assume the defaulting party's obligations. Effectively the exchange removes counterparty risk; the only credit
risk involved is that of the exchange. !ese days, however, most exchanges are switching to computer-based
trading systems.

One of the major advantages of exchange-traded futures and options contracts is that the exchange

guarantees every contract, thus relieving the gaining party of the risk of default by the losing party and the

need to evaluate the creditworthiness of the counterparty. To limit its exposure, exchange regulations require

that each counterparty to a futures contract and the seller (writer) of an option contract makes an initial

deposit with the exchange known as the 'initial margin' (this is usually between 2 and 10% of the value of the

contract). Once the contract involves a party making a loss greater than the initial margin, further deposits

are required on a daily basis from the losing party, known as the 'variation margin', to re$etc the potential

loss associated with the contract. !e 'marking to market', that is, calculation of variation margins, is carried

- ut at the end of each day on the basis of the settlements price (usually the closing price). !e other party
has its profit position credited to its margin account. Since all potential losses have to be paid for on a daily
basis this limits the exposure of the exchange. In the rare event that a trader were to fail to settle a margin
payment, the exchange has the right to close the trader's position by taking an offsetting contract limiting
its potential exposure to that trader's position. A further means by which the exchange limits its exposure
is that dealing is restricted to members of the exchange who are usually representatives of well-established
financial institutions. !e exchange protects itself by careful selection of authorized traders and by imposing
high membership requirements and standards. !e exchange also constantly monitors members' positions. In
addition, an exchange will maintain a large clearing fund to meet unforeseen circumstances.

13.4 CURRENCY FUTURES AND CURRENCY FORWARDS

A currency futures contract is an agreement between two counterparties to exchange a specified amount

- f two currencies at a given date in the future at a predetermined exchange rate. As such, they are basically
standardized forward contracts of the kind that we examined in Chapter 1. For example, a currency futures
contract may specify &125,000 per contract is being bought or sold. With a forward contract, the amount to
be exchanged is negotiable between the two parties; for example, the two parties can agree to buy/sell, say,
&122,000 forward.

313

International Finance

Table 13.2 shows a hypothetical dollar–euro (&125,000) contract offered by the Chicago Mercantile

Exchange (CME). !e CME also offers a number of currency contracts, including dollar–Australian dollar

(A$100,000), dollar–Canadian dollar (C$100,000), dollar–Mexican peso (500,000 pesos), dollar–sterling

(£62,500) and dollar–yen (¥12.5 million). !e contract specifies the amount of currency to be exchanged, the

exchange on which the contract is traded, the delivery date and the process for delivery.

One party agrees to sell the currency (go short) and the other party agrees to purchase the currency (go

long). Despite their high degree of similarity there are some practical differences between currency forward

and futures contracts – summarized in Table 13.3.

!e main differences are:

1. A currency futures contract is a standardized notional agreement between two counterparties to

exchange a specified amount of currency for another currency at a fixed future date. While in a

forward contract, the amount of currency to be exchanged is determined by the mutual agreement of

the two parties.

2. Futures contracts are traded on an exchange, while forward contracts are OTC instruments with the

exchange being made directly between two parties.

**Table 13.2** Dollar per euro futures contracts &125,000

|Col1|Openingprice|Settlementprice|Change|High|Low|Estimatedvolume|Openinterest|
|---|---|---|---|---|---|---|---|
|June|1.2538|1.2518|0.0008|1.2610|1.2495|275,700|381,450|
|Sept|1.2550|1.2528|0.0010|1.2613|1.2505|800|4,300|

_Note_ : !e hypothetical spot exchange rate is $1.2520.

_Source_ : Hypothetical data.

**Table 13.3** Similarities and differences between currency forwards and futures

|Forwards|Futures|
|---|---|
|An agreement to exchange currencies sometime<br>inthefuture<br>Larger range of delivery dates|An agreement to exchange currencies sometime<br>inthefuture<br>Limited range of delivery dates|
|Amount to be exchanged is negotiable|Contracts are for standardized amounts|
|Eachparty faces some counterparty risk|Contracts areguaranteed by the futures exchange|
|No margin is required|Initial margin required; variation margin may be called for|
|Obligation cannot be easily sold on to a thirdparty|Obligation can be easily sold on to a thirdparty|
|Buying and selling via screen-based market|Buying and selling a mix of pit open outcry and<br>screen-based trading|
|Usual contract size of at least $5 million|Smaller contract sizes usually around $50,000–$100,000|
|Covers over 50 currencies|Covers only major currencies|
|Proﬁt/loss only realizable on maturity of contract|Proﬁt/loss can be realizedprior to maturity|
|Contract is completed by the annual delivery of the<br>underlying security|In around 99% of cases there is no actual delivery since<br>traders enter into reversal trades|

314

Currency Derivatives: Futures, Options and Swaps

3. Futures contracts are guaranteed by the exchange, whereas forward contracts are not. !e fact that

futures contracts are guaranteed by the exchange on which they are traded removes the counterparty

risk inherent in forward contracts. With a forward contract each counterparty needs to consider

carefully what will happen if the other party is incapable of seeing through its commitment which

may involve quite substantial losses. !is credit risk tends to limit the forward market to only very

high-grade financial and commercial institutions.

4. Futures contracts are generally regarded as having greater liquidity than forward contracts. !eir

standardized nature means that futures contracts can easily be sold to another party at any time

up until maturity at the prevailing futures price with the trader being credited with a profit or loss.

Since forward contract obligations cannot be transferred to a third party they are relatively illiquid

assets. !e only way for a trader to get out of a forward contract is to take out a new offsetting

forward position. For example, if a trader is committed to buying £1 million of sterling forward at

$1.30/£1, then the only way out of the forward contract is to take out another one to sell £1 million

sterling with another party. !ere are two problems with this: (i) the trader is now exposed to two

counterparties (doubling the counterparty risk); (ii) the maturity date of the second forward contract

may not be perfectly matched with that of the first one. For example, if the original forward contract

is for 90 days, and if 20 days later the trader tries to take an offsetting position, the nearest available

forward contract is 60 days, leaving 10 days of open exposure.

13.5 OPEN INTEREST AND REVERSING TRADES

Two important but linked terms that crop up in connection with futures trades are the open interest in a

contract and the concept of reversing trades. Open interest is the outstanding number of contracts obligated

for delivery. Consider four traders, A, B, C and D, none of whom has any current position in a futures contract.

If trader A takes a long position in a new contract with trader B taking a short position, then the open interest

rises by one contract. Similarly, if trader C takes a long position in a futures contract with trader D taking the

short position, then the open interest rises by a further one contract.

!e commodity or financial asset to be delivered in fulfilment of the contract is known as the **underlying** .

For most futures contracts, especially those that involve physical commodities such as gold and cotton, the

physical delivery of the commodity would be a cumbersome process. To avoid getting involved in the actual

delivery process most traders will therefore enter into what is known as a **reversing trade** prior to the maturity

- f the contract. !at is, they will liquidate their position at the clearing house so that they do not actually have
to deliver or receive the underlying. In our example, traders A and C are committed to buying the underlying
upon expiry, while traders B and D are committed to delivering the underlying currency upon expiry. Trader
A may not actually wish to receive the underlying currency and trader D may not actually wish to deliver the
underlying currency. Hence, at some date prior to expiry, trader A and trader D may take out reversing trades
to liquidate their positions. Trader A will take out a contract to sell the underlying (at the then prevailing
market price). As far as the clearing house is concerned, trader A will have no net position in the futures
market since it has an identical futures contract to both receive and deliver the underlying currency. If trader
A sold his contract to a new party E, then the open interest would have been le( unaffected by A's trade. If,
however, trader A had sold his position to trader D, who was also undertaking a reversing trade, then open
interest would have declined by one since both A and D have effectively negated their positions with the
clearing house.

315

International Finance

Open

interest

**Figure 13.1** Typical open interest profile

Time

Expiry

date

Figure 13.1 shows the typical profile of open interest on futures contracts, from the day that trading in the

contract is started (contract originates) to the time that the contract expires.

Each contract starts with zero open interest. During the early days of opening, the open interest in the

contract slowly builds up as the number of new contracts increases. Eventually open interest in the contract

peaks, usually when the contract is the near contract. !erea(er, as the expiry date of the contract nears, the

number of traders involved in reversing trades increases so that the open interest rapidly declines until the

expiry date when it falls to zero.

13.6 THE USE OF CURRENCY FUTURES FOR HEDGING PURPOSES

Currency futures can be used both for managing risks and assuming speculative positions. Let us consider a

simple example of how a currency futures contract can be used for hedging purposes.

Numerical Example

**A currency futures contract used for hedging**

Suppose a UK exporter has made export sales to the United States and in six months' time is due to receive

$1.35 million. !e firm wishes to protect itself and ensure that the sale is profitable when translated back

into UK pounds. !e firm is able to obtain a six-month futures quotation of $1.35/£1, and because US and

316

Currency Derivatives: Futures, Options and Swaps

UK interest rates at the six-month time horizon are assumed to be equal the spot rate is also $1.35/£1. !e

exporter is concerned that the pound will appreciate over the next six months to, say, $1.50/£1 and wishes to

protect himself against the possible adverse currency movement (which would mean his $1.35 million would

- nly be worth £900,000). !e trader could take out 16 contracts to buy £62,500 at $1.35/£1 and therefore be
guaranteed £1,000,000 with the $1,350,000.

Suppose that in six months' time when in receipt of the $1.35 million the trader has been proved right and

the dollar–sterling parity is $1.50/£1, and because on expiry the futures price is equal to the then prevailing

spot price, the futures contract is also valued at $1.50/£1. In these circumstances, the trader will now be in

a position to close his futures contract by selling 16 sterling contracts at $1.50/£1. !e trader has therefore

closed out his futures contract position at a profit of 15 cents (buying pounds at $1.35 and selling them at

$1.50) and his profit from the futures contract is $0.15 * 62,500 * 16 = $150,000. !e hedger therefore has a

total of $1,350,000 which can be converted at $1.50/£1, which gives £900,000 and $150,000 profit from the

futures contract that can be converted spot at $1.50/£1 to yield £100,000 – and so he obtains a guaranteed £1

million.

Suppose that in six months' time when in receipt of the $1,350,000 the trader has been proved wrong

and the dollar–sterling parity is $1.20/£1, and since futures prices equal spot prices on expiration the futures

contract is also valued at $1.20/£1. In these circumstances, the trader will now be in a position to close his

futures contract by selling 16 sterling contracts at $1.20/£1. !e trader has therefore closed out his futures

contract position at a loss of 15 cents (buying pounds at $1.35/£1 and selling them at $1.20/£1) so his loss

from the futures contracts is –$0.15 * 62,500 * 16 = –$150,000 or £125,000. !e hedger therefore has a total

- f $1,350,000 le( to be converted at $1.20/£1 in the spot market giving £1,125,000 less the £125,000 loss on
the futures contract and so obtains a guaranteed £1 million. Either way, whatever the dollar–sterling parity
turns out to be, the futures market has been successfully used for hedging purposes. Indeed, in this example
the hedger has achieved a perfect hedge.

13.7 THE SYMMETRY OF PROFIT/LOSSES ON FUTURES/FORWARD POSITIONS

An important point about currency futures and forward contracts is that the gains or losses of the two parties

engaged in the contract are symmetrical around the difference between the spot price on expiry of the contract

and the futures price at which the contract was taken out. !is is illustrated in Figure 13.2.

In the figure it is assumed that a one-year futures contract is taken out on sterling at a price of $1.35/£1;

that is, one party has agreed to buy sterling at $1.35/£1 while the other has agreed to sell sterling at $1.35/£1.

On the horizontal axis we have the future spot price of sterling in one year’s time. If the spot price of sterling

in one year’s time is above $1.35/£1 the buyer of the sterling future will have a profit of one cent for every

- ne cent that the future spot price is above $1.35/£1. For example, if the spot price of sterling on maturity
is $1.55/£1 then he makes 20 cents per £1 purchased, since he buys the sterling at $1.35/£1 in fulfilment

- f the futures contract, and can sell each £1 spot for $1.55/£1. If, however, the future spot price is only
$1.15/£1, in one year's time he must pay $1.35/£1 to obtain sterling, which he can only sell at $1.15/£1, so
incurring a loss of 20 cents. !e gain (or loss) of the buyer of the sterling futures contract is mirrored by the
corresponding)loss (or gain) to the seller of the sterling future. One party to a futures/forward contract is
always likely to lose in the sense that the future spot price will generally be different than the price agreed
in the futures contact.

317

International Finance

Profit/loss

in cents

40

30

20

10

 - 10
 - 20
 - 30
 - 40

**Figure 13.2** !e profit/losses on a currency forward/futures contract

13.8 THE PRICING OF CURRENCY FUTURES

Since currency futures are very similar to currency forward contracts, it is not surprising that the covered

interest parity (CIP) formula is crucial to the determination of currency futures prices. !e main difference is

that for currency futures they have to be marked to market every day and this needs to be taken into account

when applying the covered interest parity formula. !e appropriate futures price for a dollar per pound parity

is given by equation (13.1) or equivalently by equation (13.2):

F = S× [1+ ][(][r ×T] us [)]

1+ (r ×T)uk

(13.1)

  - r

F = Se [(rus-ruk)T] (13.2)

where F is the futures price in dollars per pound, S is the spot exchange rate in dollars per pound, e is the

natural number 2.71828, _r_ us is the US interest rate, _r_ uk is the UK interest rate, and _T_ is the time le( to maturity

- f the contract, expressed as a fraction of a year.

318

Currency Derivatives: Futures, Options and Swaps

Numerical Example

!e US interest rate is 5% and the UK interest rate is 8%. !e spot dollar sterling rate is $1.35/£1. !e price of

a six-month (180 days) sterling futures contract which is 100 days into the contract has 80 days to maturity,

which means that _T_ = (180–100)/360 = 0.2222, and the relevant futures price is therefore:

[1� (0 05 0 2222 .      - . )]

$ .1 35 / £1�

1� ( .0 08 0 2222� . )

[1� (0 05 0 2222 .     - .

1 35 / £1�

1� ( .0 08 0 2222� .

F � $ .1 35 / £1� - . 

1� ( .      

1 35 / £1 � [1 011] . **[1]** [1]

1 01778.

1 3411/ £1

$ .1 35 / £1 � .

1 01778.

- $ .1 3411/ £1
- r

F - Se

(rus ruk)T�

( .                 - . ) .

$ . - .

$ .1 3411/ £

0 05 0 08 0 2222� .

1 35 2 71828� . 

1 3411/ £1

Notice that the pound is at a discount on the futures market, because the holder of sterling benefits from a

higher interest rate. To compensate for the lower interest on holding dollars, the dollar is a forward premium

enabling dollar holdings to be converted back into sterling at a favourable rate in the future. If an investor had

£1,000 he could hold it in the UK and earn 8% for 80 days which becomes £1,017.78. Alternatively, he could

sell pounds spot at $1.35/£1, obtaining $1,350 knowing that earning 5% over 80 days this will become $1,365

and simultaneously he could take out a futures (forward) contract to sell $1,365 at $1.3411/£1 which works

- ut at £1017.78. In other words, the price of the futures contract ensures that there are no arbitrage profits to
be made.

13.9 CURRENCY OPTIONS

Currency options were first traded on the Philadelphia Exchange in the early 1980s, but since then they have

become increasingly popular instruments on other exchanges such as London, Paris and Singapore. In this

and the following sections we explain what a currency option contract is and consider how a currency options

contract can be used for both speculative and hedging purposes. We also discuss the economic role that

- ption contracts can fulfil and emphasize the differences between futures and options contracts.

A currency option is a contract that gives the purchaser the right but not the obligation to buy or sell a

currency at a predetermined price sometime in the future. !e currency in which the option is granted is

known as the **underlying currency** . !e currency to be exchanged for the underlying currency is known

as the **counter currency** . If the contract specifies the right to buy &125,000 at $1.25/&1 then the euro is the

underlying currency and the dollar is the counter currency. An option contract involves two parties, the

**writer** who sells the option and the **holder** who purchases the option. !e holder of an option contract has

the right but not the obligation to either buy or sell the underlying currency at a predetermined exchange

rate in the future. If the option contract gives the holder the right to purchase the underlying currency at a

319

International Finance

**Table 13.4** Hypothetical Chicago Mercantile Exchange dollar per euro option contract, size &125,000 ($12.50 per tick)

|Strikeprice($/€)|Calls|Col3|Col4|Puts|Col6|Col7|
|---|---|---|---|---|---|---|
|**Strike price ($/€)**|**Jun**|**Jul**|**Aug**|**Jun**|**Jul**|**Aug**|
|1.2300|2.72|3.71|4.55|0.46|1.34|1.95|
|1.2400|1.99|3.03|3.60|0.73|1.66|2.29|
|1.2500|1.36|2.40|3.00|1.10|2.04|2.68|
|1.2600|0.86|1.87|2.49|1.60|2.50|3.12|
|1.2700|0.42|1.40|2.00|2.30|3.00|3.63|
|Previous day's volume: calls 10,500,puts 26,750, open interest 65,000.|Previous day's volume: calls 10,500,puts 26,750, open interest 65,000.|Previous day's volume: calls 10,500,puts 26,750, open interest 65,000.|Previous day's volume: calls 10,500,puts 26,750, open interest 65,000.|Previous day's volume: calls 10,500,puts 26,750, open interest 65,000.|Previous day's volume: calls 10,500,puts 26,750, open interest 65,000.|Previous day's volume: calls 10,500,puts 26,750, open interest 65,000.|

_Note_ : Hypothetical spot exchange rate is $1.2520/&1.

predetermined price from the other party the contract is known as a **call option** . If the option's contract gives

the owner the right to sell the underlying currency at a predetermined exchange rate to the other party the

contract is known as a **put option** . An option contract that can be exercised any time up until its maturity

date is known as an **American option**, while an option that can only be exercised on the expiration date is

known as a **European option** . !e price at which the underlying currency can be bought or sold is known

as the **strike price** (or **exercise price** ). !e date at which the contract expires is known as the **expiry date** - r

**maturity date** .

!e price paid by the holder to the writer for an option is known as the **option premium** . Table 13.4 shows

various hypothetical call and put option premiums quoted for the dollar–euro exchange rate for 25 May. !e

- ptions traded on this market are American options and can be exercised at any time up to maturity.

Table 13.4 shows the premium measured in US cents for traded currency options of the dollar against the

euro – the spot exchange rate of the dollar against the euro at the close of business on 25 May is $1.2520/&1.

A)trader can buy a call option (that is, a right to buy euros) at a strike of $1.2500/&1 expiring in August for

3.00 US cents per euro. For July the same strike price can be bought for 2.40 US cents per euro. Similarly, a put

- ption (right to sell euros) for $1.25/&1 expiring in August can be bought for 2.68 US cents per euro.

Numerical Example

**Profit/loss profiles for a currency call option**

!e profit and loss profiles for a contract on an August call will depend upon the actual exchange rate

prevailing in August. Let us first consider the profit profile for such a call at a strike price of $1.2500/&1. If

the future spot exchange rate is less than $1.2500/&1, then it does not pay the holder to exercise his option

as it is cheaper to buy euros in the spot market and he will lose the premium paid of 3.00 cents per euro

(that is, $3,750 in total, i.e. 125,000 * $0.03). If the future spot exchange rate is between $1.2500/&1 and

$1.2800/&1 it will pay the holder to exercise the option although a loss will be made of the future spot price

less the strike price and option premium. If the future spot price is above $1.2800/&1, the call option holder

will make a profit. !e writer of the call option makes a profit or loss that is the mirror image of the profit

and loss profile of the holder. !e profit and loss profile for various exchange rates in August is illustrated in

Table 13.5. !e profit/loss in dollars per contract is found by multiplying the profit or loss per euro by the

contract size of &125,000.

320

Currency Derivatives: Futures, Options and Swaps

**Table 13.5** !e profit/loss on an August call for different spot exchange rates on expiry of the contract

|Detailsofcontract<br>Call option price: 3 .00 US cents<br>Strike price: $1 .25/&1<br>Expiration:August<br>Value of contract: &125,000<br>Total premium per contract: $3,750|Col2|Col3|Col4|Col5|
|---|---|---|---|---|
|**Possible values of**<br>**spot exchange rate**<br>**on expiry**|**Proﬁt/loss on long**<br>**call (i.e. holder per**<br>**€ in cents)**|**Proﬁt/loss on short**<br>**call (i.e. writer per**<br>**€ in cents)**|**Proﬁt/loss on long**<br>**call (i.e. holder per**<br>**contract)**|**Proﬁt/loss on short**<br>**call (i.e. writer per**<br>**€ in cents)**|
|1.15|3.00|3.00|$3,750|$3,750|
|1.20|3.00|3.00|$3,750|$3,750|
|1.21|3.00|3.00|$3,750|$3,750|
|1.23|3.00|3.00|$3,750|$3,750|
|1.25|3.00|3.00|$3,750|$3,750|
|1.26|2.00|2.00|$2,500|$2,500|
|1.27|1.00|1.00|$1,250|$1,250|
|1.28|0|0|0|0|
|1.29|1.00|1.00|$1,250|$1,250|
|1.30|2.00|2.00|$2,500|$2,500|
|1.35|7.00|7.00|$8,750|$8,750|
|1.40|12.00|12.00|$15,000|$15,000|
|1.45|17.00|17.00|$21,250|$21,250|
|1.50|22.00|22.00|$27,500|$27,500|

We now proceed to examine with the aid of a couple of examples how the use of options contracts contrasts

with using futures contracts for hedging and speculative purposes.

13.10 A CURRENCY OPTION VERSUS A FORWARD CONTRACT FOR HEDGING

In January a US company orders £1 million of goods from a British company which will be delivered in six

months' time. Upon delivery the goods must be paid for in cash. !e pound has been weak against the dollar

and has depreciated from $1.50/£1 to $1.35/£1 over the last year. !e company feels that the pound is likely to

bounce back (that is, appreciate) and so wishes to protect itself from any appreciation of the pound. !e firm,

however, would like to take advantage of any further strengthening of the US dollar should it occur. !e spot

rate of the pound is $1.40/£1 while the forward/futures rate is $1.35/£1. Alternatively, the company can buy a

six-month call option to buy sterling at $1.35/£1 for 8 cents per pound.

Table 13.6 compares the costs of obtaining the £1 million using an options contract versus a forward

contract. A forward contract will mean he has to give $1,350,000 regardless of the exchange rate in six months’

time. !e call option will be exercised so long as the dollar/pound is above $1.35/£1 in six months' time. !e

321

International Finance

**Table 13.6** Comparison of hedging using futures and options

|Spotexchangerateon<br>expiryofthefuturesor<br>optionscontract|Costwithoption<br>contract|Costwithfutures<br>contract|Costifbuysspot<br>contract|
|---|---|---|---|
|1.80|$1,430,000|$1,350,000|$1,800,000|
|1.70|$1,430,000|$1,350,000|$1,700,000|
|1.60|$1,430,000|$1,350,000|$1,600,000|
|1.50|$1,430,000|$1,350,000|$1,500,000|
|1.49|$1,430,000|$1,350,000|$1,490,000|
|1.48|$1,430,000|$1,350,000|$1,480,000|
|1.47|$1,430,000|$1,350,000|$1,470,000|
|1.46|$1,430,000|$1,350,000|$1,460,000|
|1.45|$1,430,000|$1,350,000|$1,450,000|
|1.44|$1,430,000|$1,350,000|$1,440,000|
|1.43|$1,430,000|$1,350,000|$1,430,000|
|1.42|$1,430,000|$1,350,000|$1,420,000|
|1.41|$1,430,000|$1,350,000|$1,410,000|
|1.40|$1.430,000|$1,350,000|$1,400,000|
|1.39|$1,430,000|$1,350,000|$1,390,000|
|1.38|$1,430,000|$1,350,000|$1,380,000|
|1.37|$1,430,000|$1,350,000|$1,370,000|
|1.36|$1,430,000|$1,350,000|$1,360,000|
|1.35|$1,430,000|$1,350,000|$1,350,000|
|1.34|$1,420,000|$1,350,000|$1,340,000|
|1.33|$1,410,000|$1,350,000|$1,330,000|
|1.32|$1,400,000|$1,350,000|$1,320,000|
|1.31|$1,390,000|$1,350,000|$1,310,000|
|1.30|$1,380,000|$1,350,000|$1,300,000|
|1.25|$1,330,000|$1,350,000|$1,250,000|
|1.20|$1,280,000|$1,350,000|$1,200,000|
|1.15|$1,230,000|$1,350,000|$1,150,000|
|1.10|$1,180,000|$1,350,000|$1,100,000|

table also looks at what would happen if the position is le( unhedged and he simply purchases the £1 million

spot in six months at whatever the exchange rate then happens to be.

With the options contract, the position can be hedged for a premium of $80,000 which will give the holder

the right to buy £1 million at a rate of $1.35/£1. If the dollar–pound parity is above $1.35/£1, then the option

will be exercised and the US company will have to pay only $1,350,000 to obtain £1,000,000 which, given that

the option has cost $80,000, gives a total cost of $1,430,000. If the dollar–pound rate is below $1.35/£1, then

the option contract will not be exercised and the US firm will instead take advantage of the strong dollar to

322

Currency Derivatives: Futures, Options and Swaps

buy pounds spot at the prevailing rate; for example, if the rate is $1.20/£1 then the firm will obtain £1,000,000

for $1,200,000 which, given that the option has expired worthless, implies a total cost of $1,280,000. An

alternative means of hedging would be for the firm to take out a six-month forward contract to buy £1 million

at $1.35/£1, which means the firm is guaranteed to obtain the required sterling for $1,350,000 no matter what

the spot rate is in six months' time. Finally, with an unhedged position the firm will have to pay whatever the

spot exchange rate is six months hence.

Overall, Table 13.6 shows very clearly the advantages and disadvantages of hedging using an option or

futures contract. !e option contract enables the firm to fix a maximum payable price but also to take advantage

- f a favourable movement in the exchange rate. !e forward rate provides the firm with full certainty over the
future cost of obtaining £1 million but, unlike the option contract, does not permit the firm to take advantage

- f a favourable movement in the exchange rate. Both futures and options contracts help reduce the risk to the
firm as compared to taking an unhedged position.

13.11 A CURRENCY OPTION VERSUS A FORWARD FOR SPECULATING

Suppose that the spot rate of exchange is $1.40/£1, while a year ago the rate was $1.60/£1. A speculator feels

that sterling is likely to appreciate to, say, $1.60/£1. He has two speculative choices: (i) take out a forward

contract to buy sterling at $1.35/£1; or (ii) buy a call option on sterling, giving him the right to buy at $1.35/£1,

the premium of the call being 8 cents. !e profit and loss profile of an $80,000 open position in options versus

the forward contract is shown in Table 13.7.

**Table 13.7** A currency option versus a currency forward for speculation

|Col1|Col2|Col3|$80,000 open position|Col5|
|---|---|---|---|---|
|**Spot exchange rate**<br>**1year hence**|**Per £1 option**|**Per £1 forward**|**Option**|**Forward**|
|1.60|0.17|0.25|$170,000|$14,814.81|
|1.50|0.07|0.15|$70,000|$8,888.89|
|1.45|0.02|0.10|$20,000|$5,925.93|
|1.44|0.01|0.09|$10,000|$5,333.33|
|1.43|0|0.08|$0|$4,740.74|
|1.42|0.01|0.07|$10,000|$4,148.15|
|1.41|0.02|0.06|$20,000|$3,555.56|
|1.40|0.03|0.05|$30,000|$2,962.96|
|1.39|0.04|0.04|$40,000|$2,370.37|
|1.38|0.05|0.03|$50,000|$1,777.78|
|1.37|0.06|0.02|$60,000|$1,185.19|
|1.36|0.07|0.01|$70,000|$592.58|
|1.35|0.08|0|$80,000|$0|
|1.34|0.08|0.01|$80,000|$592.58|
|1.33|0.08|0.02|$80,000|$1,185.19|

323

International Finance

|Col1|Col2|Col3|$80,000 open position|Col5|
|---|---|---|---|---|
|**Spot exchange rate**<br>**1year hence**|**Per £1 option**|**Per £1 forward**|**Option**|**Forward**|
|1.32|0.08|0.03|$80,000|$1,777.78|
|1.31|0.08|0.04|$80,000|$2,370.77|
|1.30|0.08|0.05|$80,000|$2,962.96|
|1.29|0.08|0.06|$80,000|$3,555.56|
|1.28|0.08|0.07|$80,000|$4,148.15|
|1.27|0.08|0.08|$80,000|$4,740.74|
|1.26|0.08|0.09|$80,000|$5,333.33|
|1.25|0.08|0.10|$80,000|$5,925.93|
|1.20|0.08|0.15|$80,000|$8,888.89|
|1.10|0.08|0.25|$80,000|$14,814.81|

In the table a speculator is assumed to have $80,000 available for speculative purposes and he feels that

the pound is likely to appreciate from $1.40/£1 to $1.60/£1. He could choose between taking out a forward

contract at $1.35/£1 to buy $80,000 of sterling, that is, £59,259.26, or buy an option to purchase £1 million at

$1.35/£1 for 8 cents per £1. Let us first consider the options contract. An $80,000 investment gives the right to

purchase £1,000,000 worth of sterling at the rate of $1.35/£1; that is, $1,350,0000, at a premium of 8 cents per

pound. If the spot rate in six months’ time is above $1.35/£1 then the option will be exercised. Suppose that

the speculator is correct and the spot exchange rate on expiry of the contract is $1.60/£1, then the speculator

will buy £1,000,000 at $1.35/£1 for a total cost of $1,350,000 and immediately convert the £1,000,000 back at

$1.60/£1 to receive $1,600,000, so leaving a profit of: $1,600,000 – $1,350,000 – $80,000 (the option premium

paid) =$170,000. So long as the future spot rate is above $1.43/£1, so that the 8 cents cost of the option

premium is covered, then the option can be profitably exercised. Between $1.35 and $1.43 the option will still

be exercised but an overall loss made. If the rate is below $1.35 then the option will not be exercised and the

speculator will lose the entire $80,000 premium.

As an alternative to the options contract, the speculator could take an $80,000 position in the forward

market, that is, a contract to buy $80,000/1.35 = £59,259.26 forward. If the speculator is proved right, and

the future spot rate turns out to be $1.60/£1, then on delivery of the forward contract he will give $80,000

and receive £59,259.26; he can then immediately sell the £59,259.26 at $1.60/£1 and receive back $94,814.81,

implying a profit of $94,814.81– $80,000 = $14,814.81. For each 1 cent the spot rate in one year’s time is above

$1.35/£1, he makes a profit of $592.58, and for each cent the rate is below $1.35/£1, he makes a loss of $592.58.

For instance, if the future spot rate is $1.20/£1 then on delivery of the forward contract he will give $80,000

and receive £59,259.26 which he can then immediately sell at $1.20/£1 and receive back only $71,111.11

implying a loss of: $71,111.11 – $80,000 = –$8,888.89.

We can see from this example that an option contract offers a very different risk–return profile for speculative

purposes than that offered by the forward/futures contract. !e option contract offers an asymmetric profit

and loss profile; on the one hand, it offers potentially huge gains but with the speculator running the risk of

losing all his $80,000. !e forward market offers a symmetric and far less dramatic speculative profit/loss

profile.

324

Currency Derivatives: Futures, Options and Swaps

Options contracts can also provide extremely attractive and at times spectacular speculative returns

compared to taking speculative positions in the cash or forward market. However, against this, it must be

borne in mind that many options contracts lapse without being exercised and the speculator thereby risks

losing all of the option premium paid. Also, as we shall see in section 13.15, the more likely an option is to be

exercised the higher will be its premium and the lower the consequent profit profile. One of the features that

makes options so attractive is their asymmetrical profit/loss profile, which means that holders can combine

limited downside losses (the premium paid) with unlimited upside potential profit, which contrasts with the

symmetric profit/loss profile offered by futures/forward contracts. Writing options is a far riskier business

since the potential profit is limited to the option premium, while the potential losses can be very high relative

to the premium received.

13.12 THE ROLE OF OPTION CONTRACTS

Option contracts provide a cheap and $exible way for economic agents to control some significant risks and to

take on highly leveraged speculative financial positions. In other words, options enable risks to be transferred

from one party that wishes to reduce its risk exposure to another party that is willing to take on that risk for

a premium. Like other financial instruments, options attract hedgers, speculators and arbitrageurs. !e basic

motivation for hedgers in dealing with options is to control their risk exposure. By contrast, the motivation for

speculators for dealing in options is the hope of making profits by taking a risky position.

13.13 DIFFERENCES BETWEEN OPTIONS AND FUTURES CONTRACTS

Options and futures contracts are both examples of derivative instruments in that their price is derived in

relation to the spot price and in that they can also both be used for hedging and speculative purposes; however,

there are some significant differences in the two contracts. With an option contract the buyer of the option is

not obliged to transact, whereas both parties to a futures contract are obliged. !e other major difference lies,

as our examples illustrate, in the risk–return characteristics of the contract. With a futures contract, for every

cent the future spot price is above the futures rate on expiry of the contract, the buyer makes a cent and the

seller loses a cent on the contract. !is is not the case with an options contract: the maximum loss of the option

holder is limited to the premium paid for the option, which is also the maximum possible gain for the option

writer. However, there is unlimited potential profit for an option holder and likewise unlimited potential loss

for the writer. !is fundamental difference in the risk/return characteristics of futures and options is very

important: futures may be useful instruments for hedging against symmetric risks, while options can prove

useful for hedging against asymmetric risks.

13.14 THE PRICING OF CURRENCY OPTIONS

In this section, we look at the more complex question of option pricing. In particular, we examine the

factors)that determine the price of a currency call option. We first look at these factors from an intuitive

stance)and then proceed to analyse the famous currency option pricing formula which was put forward in

325

International Finance

a paper by Garman and Kohlhagen (1983) which built upon the path-breaking option pricing formula for

shares devised by Black and Scholes (1973).

_The principles of option pricing_

When considering the price of a currency option we need to bear in mind exactly what the buyer of an option

is purchasing. An option offers the purchaser limited downside loss as given by the option premium paid,

combined with unlimited upside potential profit. An option that has no chance of ever being exercised would

be worthless; however, if an option has a high probability of being exercised then one should expect to pay

more for it. A fundamental principle underlying the pricing of an option is that the greater the probability of

an option being exercised the higher will be its premium. !e other key factor that is crucial is the expected

profit if the option were to be exercised.

Bearing these basic principles in mind, let us consider conceptually the factors that are likely to in$uence

the price of a European currency call option using the dollar–pound parity. Payment for a European call

- ption on sterling gives the buyer the right to buy sterling at a predetermined rate at a given date in the future.
!ere are six crucial factors that determine the likelihood of a currency call option being exercised, and that
hence in$uence the price to be paid for the call option:

1. !e **spot exchange rate** : the higher spot price of sterling (dollars per pound) the more likely the

	- ption is to be exercised for any given strike price and consequently the higher the price of a call
	- ption.

2. !e **strike price** : the higher the strike price of a call option on sterling (dollars per pound) the less

likely it is that it will be exercised for a given spot rate and hence the lower its price.

3. !e **time le% to expiry** : the longer the time le( to expiry then the more the chance of the option

being exercised and hence the higher its price.

4. !e **volatility** : the more volatile the dollar–sterling parity the more likely that its price at the time of

expiry will exceed the strike price and hence the higher the price of the option.

5. !e **underlying currency (£) interest rate** : the purchaser of a sterling option is paying the issuer

dollar cash for an option that can be exercised to buy a given amount of sterling in the future.

!e option holder pays the premium in dollars, forgoing the US interest rate on the dollar option

premium, but in return acquiring a right to obtain sterling in the future rather than spot. A rise in

the UK interest rate makes holding sterling today more attractive and therefore the call option less

attractive since one is forgoing more sterling interest. For this reason, other things being equal, a call

    - ption premium on sterling needs to be lower as the UK interest rate becomes higher.

6. !e **counter currency ($) interest rate** : the purchaser of a sterling option is paying the issuer dollar

cash for an option which can be exercised to buy a given amount of sterling in the future. !e option

holder that pays the premium in dollars is able to keep far more of his funds in dollars than if he had

to buy the pounds spot for a relatively small dollar premium. Hence, a rise in the US interest rate

makes the call option more attractive. For this reason, other things being equal, the premium for a

call option on sterling needs to increase as the US interest rate rises.

Table 13.8 summarizes the relationship between each of these six determinants of a currency call option.

326

Currency Derivatives: Futures, Options and Swaps

**Table 13.8** Table of factors affecting a currency
call option's premium

|Factor – a rise in:|Europeancall|
|---|---|
|Spotprice||
|Strikeprice||
|Time to expiry||
|Volatility||
|Domestic interest rate||
|Foreign interest rate||

13.15 INTRINSIC VALUE AND TIME VALUE

An option premium is made up of two components: the **intrinsic value** and the **time value** . !e intrinsic

value is the gain that would be realized if an option was exercised immediately, which for a currency call

- ption is simply the currency spot rate less the strike price of the underlying currency. For a put option it is
the strike price less the spot price of the underlying currency:

                 Intrinsic value for a call option = spot price strike price

                  Intrinsic value for a put option = strike price spot price

If an intrinsic value for an option exists, then the option is said to be **in-the-money** . For a call option, if the

strike price is below the cash price it will have an intrinsic value and is therefore in-the-money. If the strike

price is above the cash price the call option will have zero intrinsic value and is said to be **out-of-the-money** .

If the strike price is equal to the spot price the asset is **at-the-money** with zero intrinsic value. Table 13.9

summarizes the various possible states for both call and put option contracts. !e intrinsic value re$ects the

price that would be received if the option were 'locked in' today at the current market price. !e intrinsic value

- f an option is either positive or zero.

!e **time value**  - f an option is the option premium less the intrinsic value, and re$ects the fact that an

- ption may have more ultimate value than its intrinsic value:

Time value = option premium – intrinsic value

An option buyer, even if the option is out-of-the-money, will still have some hope that at some time prior

to expiry, changes in the spot price will move the option into the money or further increase the value of the

- ption if it is already in-the-money. !is prospect gives an option a value greater than its intrinsic value.

**Table 13.9** In-the-money, at-the-money and out-of-the-money

|Col1|Call|Put|
|---|---|---|
|In-the-money|Spot rate above strikeprice|Spot rate below strikeprice|
|At-the-money|Spot rate equals strikeprice|Spot rate equals strikeprice|
|Out-of-the-money|Spot rate below strike price|Spot rate above strike price|

327

International Finance

Numerical Example

**Intrinsic and time value**

Example 1

Consider a call option valued at 8 cents to buy sterling at $1.35/£1 with the spot exchange rate of sterling at

$1.40/£1. !e option is in-the-money to the tune of 5 cents and so has an intrinsic value of 5 cents; the other

3 cents represents the time value.

Example 2

Consider a call option valued at 3 cents to buy sterling at $1.35/£1 with the spot price of sterling at $1.30/£1.

!e option is out-of-the-money to the tune of 5 cents and so has no intrinsic value; the whole value of the

- ption, that is 3 cents, is the time value.

13.16 THE DISTRIBUTION OF THE OPTION PREMIUM BETWEEN TIME AND

INTRINSIC VALUE

One of the crucial assumptions underlying the theory of currency option pricing is that the natural logarithm

- f the spot exchange rate is normally distributed; that is, it follows a log-normal distribution. A variable that
has a log-normal distribution can have any value between zero and infinity as shown in Figure 13.3.

!e time value for a given expiry date will get closer to zero the more in-the-money or out-of-the-money

the contract is. !is idea is illustrated in Figure 13.4 that shows the various probability factors behind the

Probability

0

**Figure 13.3** A log-normal distribution

Log of

exchange rate

328

Currency Derivatives: Futures, Options and Swaps

intrinsic and time-value components of an option. !ere is a log-normal distribution around the spot price

such that the spot price may go up or down by a given amount with equal probability; however, the larger the

move in any direction the smaller the probability.

Figure 13.4(a) shows a deep in-the-money option, with the spot rate _S_ exceeding the exercise rate _X_ . !is

- ption has a roughly 50% chance of appreciating (rising) further, giving good upside potential; however,

S = Spot exchange rate, dollars per pound

X = exercise rate

Time value

Intrinsic value

Further potential upside of an

in-the-money option

Probability

Time value derived

from further

upside potential

less potential loss

- f intrinsic value

Probability

Time value derived

from further

upside potential less

potential loss

- f intrinsic value

Probability

(a)

0

0 _X_ _S_ Exchange rate (log)

(c) at-the-money

Time value derived

from good

potential upside

deep in-the-money

_X_ _S_ Exchange rate (log)

slightly in-the-money

(b)

0 _S = X_ Exchange rate (log)

**Figure 13.4** Intrinsic value and time value

329

International Finance

Probability

Probability

(d) slightly out-of-the-money

Time value derived

from reasonable

0 S X Exchange rate (log)

(e) deep out-of-the-money

Time value derived

from weak

0 _S_ _X_ Exchange rate (log)

**Figure 13.4** continued

there is also a lot of intrinsic value that could easily be reduced or even lost entirely if the exchange rate of the

underlying currency were to depreciate (fall), which means that the time value is given by the potential upside

area minus the potential loss of the intrinsic value, which is quite high, leaving a small amount of time value.

Figure 13.4(b) shows a slightly in-the-money option, with the spot rate exceeding the exercise rate. !e

underlying currency option has a roughly 50% chance of appreciating (rising) further, giving good upside

potential; however, there is a lower intrinsic value that could be wiped out or reduced than in the case of

Figure 13.4(a), so the time value which is given by the potential upside area minus the potential loss of the

intrinsic value is higher due to the lower intrinsic value.

Figure 13.4(c) shows an at-the-money option, with the spot rate equal to the exercise rate. !e time value

- f the option is at its maximum, re$ecting that any appreciation (rise) of the underlying currency will place
the option in-the-money, while there is no intrinsic value to be lost.

Figure 13.4(d) shows a slightly out-of-the-money option, with the spot rate slightly below the exercise rate.

!e option has no intrinsic value but there is a good chance, although less than in Figure 13.4(c), that the spot

rate may appreciate and so exceed the exercise rate prior to maturity. For this reason, the option will have a

lower time value than in Figure 13.4(c) other things being equal.

Figure 13.4(e) shows a deep out-of-the-money option, with the spot rate well below the exercise rate.

!e option has no intrinsic value and there is only a relatively small chance that the spot rate will appreciate

330

Currency Derivatives: Futures, Options and Swaps

su'ciently to exceed the exercise rate prior to maturity. For this reason, the option has only a small time value

which is lower than in the case of Figure 13.4(d) other things being equal.

An important point shown by Figure 13.4 is that the value of the option falls, other things being equal (that

is, for a given exercise price, volatility, risk-free rate of interest and term to maturity), as we move from **a** to **e**

since the probability of the option being exercised, that is, the area to the right of the exercise rate, decreases.

Figure 13.5 shows the distribution of the total option premium between time value and intrinsic value for

a variety of spot exchange rates ( _S_ 1, _S_ 2, _S_ 3, _S_ 4 and _S_ 5), other things being equal, and a given strike price ( _X_ ).

A)deep out-of-the-money option with price _S_ 1 has zero intrinsic value and a small amount of time value. If the

spot exchange rate were higher at _S_ 2, so that the option is only slightly out-of-the-money, the option premium

has zero intrinsic value but more time value, re$ecting the greater probability of being exercised than at _S_ 1.

When the spot price _S_ 3 is equal to the exercise price, that is, the contract is at-the-money, the entire premium is

made of the time value which is at its maximum. Above the exercise price, the option premium starts to have a

positive intrinsic component which increases by 1 unit for each 1 unit the spot price exceeds the exercise price;

however, the time value starts to fall because although there is further upside potential there is the risk that

some (or all) intrinsic value can be lost, so at _S_ 4 the time value is smaller than at _S_ 3 although the total option

premium is higher. At the spot price _S_ 5 the option is deep in-the-money with a large component of intrinsic

value and continued upside potential and only a slight risk that the option will end up worthless – and this is

re$ected in a small amount of time value. !e lesson is that the more in-the-money the contract, the greater

the probability that the option holder will be able to exercise the contract and therefore the lower the time value

- n the contract. Similarly, the more out-of-the-money the contract, the greater the probability that the contract
will not be exercised and therefore the lower its time value. Table 13.10 summarizes the division of the option
premium between intrinsic and time value for various option statuses and the reason for the time value.

Option

premium

_S_ 1 _S_ 2 _S_ 3=X _S_ 4 _S_ 5 Spot exchange

rate

**Figure 13.5** !e distribution of a call premium between time and intrinsic value

331

International Finance

**Table 13.10** Intrinsic value and time value

|Deep out-of -the-money (Figure 13 .4(e))|Zero|Low|Smallupsidepotential|
|---|---|---|---|
|Slightly out-of-the-money (**Figure 13.4(d))**|Zero|High|High upsidepotential, high downsideprotection|
|At-the-money (**Figure 13.4(c)**)|Zero|Maximum|Maximum upside potential, maximum<br>downsideprotection|
|Slightly in-the-money (**Figure 13.4(b)**)|_S – X_|High|High downsideprotection, high upsidepotential|
|Deep in-the-money (**Figure 13.4(a)**)|_S – X_|Low|Small downsideprotection|

_Note_ : _S_ = cash or spot price of the underlying asset and _X_ is the exercise price of the call option.

13.17 THE GARMAN AND KOHLHAGEN OPTION-PRICING FORMULA

In this section we outline the Garman and Kohlhagen (1983) formula for the pricing of currency options.

!e formula applies to European currency options, and for the purpose of our analysis we will deal with the

pricing of a call option. We will make the following assumptions:

1. !e option is a European option; that is, it cannot be exercised prior to maturity;
2. !e underlying currency interest rate ( _r_ uk) and counter-currency interest rates ( _r_ us) are fixed during

the life of the option;

3. !e foreign exchange markets are perfectly e'cient with zero transactions costs, no bid–ask spread

and no taxes;

4. !e exchange rate is log-normally distributed, with a constant mean and standard deviation;
5. It is possible to short sell the currency and utilize the proceeds obtained without restriction;
6. !e spot rate of the currency moves in a continuous fashion.

!e Garman and Kohlhagen formula for the pricing of a call option is given by the formula:

_C_             - _S_ e� _rukT_ _N d_             - 1�             - _X_ e� _rusT_ _N d_             - 2� (13.3)

!e _d_ 1 and _d_ 2 terms are given by:

_d_ 1               - 1 _n S X_ ( / ) [� _rus_               - _ruk_               -               - 2 / ]T2

and:

_d_ 2                   - _d_ 1�� _T_

where _C_ is the call premium (measured in cents), _S_ is the spot exchange rate (measured in dollars per pound),

_X_ is the exercise price (measured in dollars per pound), e is the natural number 2.7182, _rus_ is the risk-free

interest rate of the United States, _ruk_ is the risk-free interest in the United Kingdom, _T_ is the time le( to

maturity (expressed as a fraction of a year), + [2] is the variance of the spot rate on an annual basis, and + is the

standard deviation of the spot rate on an annual basis.

332

Currency Derivatives: Futures, Options and Swaps

!e essential meaning of equation (13.3) is that the value of the call today is the present value of the expected

value of the option upon expiry. !e expected value involves use of the cumulative normal distribution tables;

essentially _S_ e [–] _[rukT]_ _N_ ( _d_ 1) is the expected present value of the spot rate upon expiry (using the underlying

currency interest rate); while the term _X_ e [–] _[rusT]_ _N_ ( _d_ 2) is the present value of the strike price on expiry (using the

counter-currency interest rate).

_Interpretation of the_ N _(_ d _1) and_ N _(_ d _2) terms_

!e _N_ ( _d_ 1) and _N_ ( _d_ 2) terms involving the cumulative probability function are the terms which take into

account the risk of the option being exercised. !e _N_ ( _d_ 1) term re$ects the cumulative probability relating

to the spot exchange rate, and its value shows the amount by which the option premium increases for each 1

cent rise in the dollar–pound exchange rate. !e value of _N_ ( _d_ 1) lies between 0 and 1. If the spot rate is deeply

- ut-of-the-money (e.g. Figure 13.4(e)) then a 1 cent appreciation of the pound will have little effect on the
call premium since it remains unlikely the option will be exercised, so that _N_ ( _d_ 1) will be low, for example
0.2. If the option is currently at-the-money, then there is a 50% chance it will end up in-the-money and a
50% chance it will end up out-of-the-money, so that _N_ ( _d_ 1) will be 0.5 (Figure 13.4(c)); that is, if the pound
appreciates by 1 cent, then the call premium will rise by 0.5 cents. If the option is already deep in-the-money,
each 1 cent appreciation in the pound will be increasingly re$ected in the call premium on the pound so that
_N_ ( _d_ 1) will get closer to 1 (Figure 13.4(a)), for example 0.9. !e greater the spot appreciation of the pound in
relation to the exercise rate, the higher the value of _N_ ( _d_ 1).

!e _N_ ( _d_ 2) term re$ects the cumulative probability relating to the exercise rate; that is, _N_ ( _d_ 2) is the

probability that the call option will actually be exercised, which is represented by the area to the right of the

exercise rate in Figures 13.4(a) to 13.4(e). If _N_ ( _d_ 2) is 0.60 then there is a 60% chance that the option will be

exercised. !e value of _N_ ( _d_ 1) is always greater than _N_ ( _d_ 2) except in the limiting case where the option is

certain to be exercised, in which case _N_ ( _d_ 1) = _N_ ( _d_ 2) = 1.

13.18 A NUMERICAL EXAMPLE OF THE GARMAN–KOHLHAGEN FORMULA

Let us consider the dollar premium that is payable for a currency call option on sterling. Assume that the

current spot rate is $1.40/£1 and an investor buys a call option to purchase sterling at a strike price of $1.35/£1.

!e US interest rate is 6% and the UK interest rate is 9%, and the standard deviation (+) is 20% (expressed as

0.20 in the formula). !e option has 180 days to expiry, so that:

_S_ = $1.40/£1

_X_ = $1.35/£1

_r_ = 0.06

_us_

_r_ = 0.09

_uk_

_T_ = 0.5 (approx.)

+ = 0.20 (20%) so that + [2] = 0.04

_d_ 1:

We first calculate the value of

_d_ 1               - 1 _n S X_ ( / ) [� _rus_               - _ruk_               -               - 2 / ]T2

333

International Finance

!at is:

[1 1 40 1 35 _n_ ( . / . )   - (0 06 .   - 0 09.   - 0 2. 2 / 2 0 5) . ]

_d_ 1 - 

0 22.

From the cumulative normal distribution of Table 13.14, supplied in the Appendix at the end of this chapter,

we find:

_N_ ( _d_ 1) = _N_ (0.22) = 0.5871

Note that if the value we find for _N_ ( _d_ 1) or _N_ ( _d_ 2) is negative, then when we look up the value in Table 13.14

we must subtract the value we find in the table from 1. For example, in the table we need to look up the value

_N_ ( _d_ 1) = –0.035 (this is the value we would get if the spot rate was $1.35/£1 instead of $1.40/£1). First, we look

up 0.035 in the table, which gives 0.5140 (midway between 0.5120 and 0.5160); we then subtract this from 1,

so that _N_ ( _d_ 1) = _N_ (–0.035) is given by 1–0.5140 = 0.486. For positive values of _N_ ( _d_ 1) and _N_ ( _d_ 2) we just use the

value listed in the table.

We next calculate the value of _d_ 2, repeating equation (13.5):

_d_ 2                   - _d_ 1�� _T_

that is,

_d_ 2                 - 0 22.                 - 0 2 0 5. .                 - 0 08.

From the cumulative normal distribution (see Table 13.14 supplied at the end of the chapter) we find:

_N d_              - 2�              - _N_              - 0 08.              -              - 0 5319.

With these calculations we are now in a position to calculate the price of the option:

_C_             - _S_ e [�] _rukT_ _N d_             - 1�             - _Xe_ _[-rusT]_ _N d_             - 2�

Substituting the appropriate values yields:

_C_       - 1.40       - 2.7182�0.09 0.5�       -       -       - 0.5871�       - 1.35       - 2.7182�0.06 0.5� **�**       - 0.5319�       
		- 0.0896, that is 8.96 cents

Since the spot rate $1.40/£1 exceeds the strike price $1.35/£1, then, of the 8.96 premium, 5 cents is intrinsic

value and 3.96 cents is time value. !e above calculations are based upon a spot exchange rate of $1.40/£1 and

a strike price of $1.35/£1. Table 13.11 shows how the values of _N_ ( _d_ 1) and _N_ ( _d_ 2) change as the value of the

current share price changes and the resulting call price in pence.

!e intrinsic value of an option is easily calculated as is the time le( to expiration. !e underlying and

counter-currency risk-free interest rates are all measurable, and the most contentious thing to measure is

334

Currency Derivatives: Futures, Options and Swaps

**Table 13.11** !e values of _N_ ( _d_ 1) and _N_ ( _d_ 2) for different spot exchange rates

|Spotexchange<br>rate($/£)|d1|N(d1)|d2|N(d2)|Callpremium<br>incents|
|---|---|---|---|---|---|
|$1.25/£1|0.58|0.3264|0.72|0.2358|2.74|
|$1.30/£1|0.30|0.2810|0.44|0.3300|4.32|
|$1.35/£1|0.035|0.4860|0.18|0.4286|6.40|
|$1.40/£1|0.22|0.5871|0.08|0.5319|8.96|
|$1.45/£1|0.47|0.6808|0.33|0.6293|12.00|

_Note_ : _T_ = 6 months (0.5 in formula), _r_ uk = 9% (0.09 in formula), _r_ us = 6% (0.06 in formula), standard deviation = 20% (0.2), and strike

price = $1.35/£1.

volatility. Ideally, the e'cient pricing of options requires a measurement of volatility likely to occur in the

future. **Historical volatility** may be a useful measure for this purpose, but it could prove to be defective

as the past is not necessarily a good guide to the future. In addition, an appropriate measure of historical

volatility is still needed; should it be based on the last month's exchange rate volatility, the last three months,

the last six months or last year? Another problem with historical volatility is that it usually fails to pick up

the possibility of large discrete shi(s. **Expected volatility** will differ from one market participant to another,

and therefore the view of the appropriate market price of an option will vary between market participants.

**Implied volatility** is the volatility implicit in the current option price, found by taking the current price of

the option and finding a volatility that when plugged into the option pricing formula gives the current market

price of the option (this is easily calculated by a spreadsheet).

13.19 PROBLEMS WITH THE CURRENCY OPTION-PRICING FORMULA

!e formula we have looked at is only applicable to European options – American options are usually

priced slightly higher than European ones because of the extra advantage that they give to the holder

- f being able to exercise the option at any date prior to maturity. Another problem is that the formula
assumes that the log of the exchange rate follows a log-normal distribution. In the real world exchange
rate distributions tend to be leptokurtic, that is, to have fatter tails than a normal distribution, meaning
that there are better chances of an option being exercised than suggested by the standard currency optionpricing formula. Hence, real-world option premiums tend to exceed the theoretical price derived from the
Garman–Kohlhagen formula.

13.20 THE OTC MARKET IN OPTIONS

Major international banks have for many years marketed the advantages and $exibility of currency options

to their multinational corporates and other clients. Since multinational corporations have varied demands,

not all of which can be matched by exchanges, banks have found it worthwhile to offer tailor-made options

contracts to meet the specific needs of their clients. !is tailor-made market which allows for negotiation

- f the terms of the contract between the writer and holder of an option is known as the over-the-counter
market (OTC). !e OTC market is dominated by major banks and securities houses, which contrasts with the

335

International Finance

standardized contracts on offer at various exchanges. !e major advantage of the OTC market is that a client's

specific needs with regard to the size, exercise price and expiry date of the contract can be met. However, there

are also a number of disadvantages of the OTC market: (i) the relatively small number of buyers and sellers

means that the contract could be mispriced; (ii) the lack of standardization of the contracts in the OTC market

means that the secondary market for OTC contracts is severely limited, so OTC instruments lack the liquidity

that is a vital part of exchange-traded options; and (iii) the holder of the option runs the risk of default on

the part of the writer, whereas exchange-traded options are guaranteed by the exchange. For this reason, only

high-quality financial institutions tend to be involved in the OTC market.

13.21 THE SWAPS MARKET

A swap is an agreement between two parties to exchange two differing forms of payment obligations, and

there are basically two types of swaps: (i) interest rate swaps and (ii) currency swaps. In an interest rate swap,

the exchange involves payments denominated in the same currency, while in a currency swap the exchange

involves two different currencies.

!e first well-documented currency swap involved the World Bank and International Business Machines

(IBM) in 1981, in which the World Bank committed itself to financing some of IBM's Deutschmark/Swiss

franc debt in return for a commitment by IBM to finance some of the World Bank's dollar debt. Since the early

1980s there has been an enormous growth in the swap market. Table 13.12 shows the value of currency swaps

for the period 2000–2020.

Like many other financial instruments, swap agreements are used to manage risk exposure; however, as

we shall see, one of the main reasons for the rapid growth of the swap market has been that they enable

**Table 13.12** Currency composition of notional principal value of outstanding currency swaps (billions of US dollars)

|Col1|2000|2002|2004|2006|2008|2010|2012|2014|2016|2018|2020|
|---|---|---|---|---|---|---|---|---|---|---|---|
|US dollar|3114|4604|7644|10366|14550|18810|2477|23858|20370|21245|23885|
|Euro|1242|2261|4078|5394|7674|8809|10521|9459|8224|9135|10761|
|Japaneseyen|1210|1295|2003|2202|3655|4600|5548|4582|4345|4417|4712|
|Pound sterling|536|836|1798|2629|2637|2636|3671|3316|3074|3824|4637|
|Swiss franc|213|237|414|597|822|1156|1274|1186|1039|976|1059|
|Canadian dollar|230|228|396|601|614|933|1316|966|1011|1313|1781|
|Swedish krona|93|149|265|394|399|545|569|394|440|617|635|
|Other|743|734|1973|2840|3815|6299|8694|7278|7441|8186|8148|
|Net total|3690|5171|9287|12511|17082|21895|28195|25519|22971|24856|27809|

_Source_ : Bank for International Settlements.

_Notes_ : !e net size is found by taking the total and dividing by 2.

(1) Figures for currency swaps are gross and have not been adjusted for double counting as each currency swap involves two currencies.

To obtain the net figure the quoted currency swap figures need to be halved.

(2) !e notional principal amount while giving an idea of market size should not viewed as the amount potentially at risk, since it is the

interruption of the cash $ows between parties to a swap agreement that is at risk and this is a very small fraction of the above figures.

336

Currency Derivatives: Futures, Options and Swaps

parties to raise funds more cheaply than would otherwise be the case. !e swap market is used extensively

by major corporations, international financial institutions and governments and is an important part of the

international bond market. !e swap market is currently organized by the International Swap and Derivatives

Association (ISDA) which since 1985 has been responsible for standardizing documentation and dealing

terms in the swap market.

13.22 POTENTIAL CURRENCY SWAP SCENARIOS

We shall first consider a few scenarios where companies might use the currency swap market.

_Scenario 1: reducing the cost of raising finance_

A currency swap might prove attractive for two companies that have differing abilities to raise funds in

different markets. A Chinese company might wish to raise dollar funds at a $oating rate of interest, while a

US company might wish to raise yen at a fixed rate of interest. It might be the case that Japanese investors are

not too keen on US companies but are keen to invest in Chinese companies, while US investors are not too

keen to lend to Chinese companies. In such circumstances, there may be a swap opportunity with the Chinese

company raising yen funds at a fixed rate of interest, while the US company raises dollar funds at a $oating

rate of interest; the companies then swap the funds raised and the corresponding obligations. !e net result

is that the Chinese company gets the dollar funds it needs at a fixed rate of interest cheaper than it could have

raised the funds itself, while the US company would get the fixed rate yen funds at a cheaper cost than if it had

raised the funds itself.

_Scenario 2: changing debt structures on a balance sheet_

Company A has a lot of dollar-denominated debt on the liability side of its balance sheet and would like to

switch some of this into sterling debt. Meanwhile company B has a lot of sterling debt on its books and would

like to switch some of this into dollar debt. Rather than each company going through the costly process of

buying back its debt and then issuing new debt in its preferred currency, the companies could negotiate a

swap agreement whereby they exchange their debt and the corresponding obligations. In the end, company A

finances part of company B's sterling debt while company B finances part of company A's dollar debt.

Having looked at some potential swap scenarios, we now proceed to examine some specific numerical

examples of currency swaps. To concentrate on the basic issues we shall ignore charges by an intermediary for

arranging the swap.

**Table 13.13** A currency swap

|Col1|UKsterlingfixedrate|USdollarfloatingrate|
|---|---|---|
|British company|8%|LIBOR + 0.75%|
|German company|8.5%|LIBOR + 0.25%|

337

International Finance

13.23 A CURRENCY SWAP AGREEMENT

In a currency swap, differing currencies are involved. Consider the following scenario of two companies, one

a British company wishing to raise $135 million for ten years at a $oating rate of interest for investment in the

United States, the other a German company that wishes to raise £100 million for ten years at a fixed rate of

interest for investment in the United Kingdom. We assume that the spot exchange rate is $1.35/£1.

!e UK company can borrow $135 million at a $oating rate of interest though it is advised that it will

have to pay dollar LIBOR + 0.75%, its repayments being adjusted annually in line with changes in LIBOR.

!e German company could borrow £100 million of funds directly at a fixed rate of interest of 8.50%. A swap

dealer that has both these clients on its books may spot a swap opportunity. !e dealer knows that market

conditions would permit the UK company to borrow £100 million on the London market at a fixed rate of

interest of 8%, while a current US investment bias for German companies would enable the German company

to borrow $135 million at LIBOR + 0.25%. !e borrowing opportunities open to the two companies are

shown in Table 13.13.

If they were to exchange debt obligations, the UK company would be able to gain dollar finance at LIBOR +

0.25%, saving 50 basis points, while the German company would be able to gain sterling finance at 8%, saving

50 basis points. !e mechanics of the currency swap can be summarized using swap boxes as in Figure 13.6.

Figure 13.6 first indicates the position of each company without a swap. !e UK company would raise

$135 million in the USA at a $oating rate of interest 75 basis points over LIBOR. !e German company would

raise £100 million at a fixed rate of interest of 8.5%. As a prelude to the swap, since the UK company can raise

sterling fixed rate funds in the UK market cheaper than the German company, it will issue £100 million at

a fixed rate of interest of 8% (straight arrow for fixed), while the German company will raise $135 million

in the USA at a $oating rate of interest of LIBOR + 0.25% (squiggly arrow for $oating). We then have the

initial exchange of principal: the UK company gives the German company the £100 million while the German

company gives the UK company the $135 million it requires (a fair exchange at the $1.35/£1 parity). Next we

have the periodic exchange of interest payments by the two companies: the UK company pays dollar LIBOR +

0.25% to the German company which is used to repay holders of its bonds, while the German company pays

the UK company 8% sterling which is used to pay its bond holders. A(er ten years we have the final exchange

- f principal: the UK company pays the German company $135 million so that it can pay back its US bond
holders upon maturity, while the German company will pay the UK company £100 million so that it can pay
its UK bond holders upon maturity.

In effect the currency swap has enabled the UK company to raise the $135 million it required at dollar

LIBOR + 0.25%, thus saving itself 50 basis points (or $675,000 per year) over what it would cost to raise

the funds itself in the USA. !e German company manages to raise the £100 million it requires at 8.0%,

thus saving itself 0.5% (or £500,000 per year) over what it would cost to raise the funds itself in the United

Kingdom. Strictly speaking the initial and final exchange of principal is unnecessary since the UK company

could convert the £100 million it raises at the spot rate of $1.35/£1 into the $135 million it needs, and the

German company convert the $135 million it raises into £100 million. !e main feature of the swap is the

interest rate exchange.

Effectively the swap arrangement exploits an arbitrage opportunity enabling the UK company to obtain US

funds at the same rate as the German company, and the German company the opportunity to raise funds at a

similar cost to the UK company. Prior to the development of swap markets such arbitrage opportunities were

undertaken by hedging the position in the forward exchange market. !e UK company would raise funds at

$oating rates of interest in the UK, convert these into dollars and then use the forward exchange rate to hedge

the foreign exchange risk. However, most forward markets for foreign exchange are for less than two years. In

338

Currency Derivatives: Futures, Options and Swaps

NO SWAP

**Figure 13.6** A currency swap

339

International Finance

- rder to hedge a ten-year position each party would have to take out an annual forward contract for each of
the next ten years. Furthermore, the forward rate contract it takes out may still not be ideal if the forward rate
is moving against the company. With the swap agreement each party is achieving a perfect ten-year hedge in

- ne contract.

13.24 DISTINGUISHING CHARACTERISTICS OF THE SWAP MARKET FROM THE FORWARD

AND FUTURES MARKETS

A swap agreement is basically the same as a forward/futures contract in that both parties are committing

themselves to a stream of future obligations just as participants do in a forward/futures contract. Although a

swap is basically a forward contract, there are nonetheless significant differences between exchange-traded

futures contracts and the obligations entered into in a swap contract. !e most obvious difference is that

exchange-traded futures contracts are of a much shorter duration than the vast majority of swap contracts.

While most futures contracts are usually for a year or less, most swap contracts cover periods ranging from

5 to 20 years and possibly longer. !is factor is particularly important in explaining the popularity of swap

contracts to business: swaps offer hedging possibilities that meet the longer time frame within which many

businesses have debt obligations.

Futures contracts are also highly standardized contracts that may not meet the specific needs of a firm

because of their limited time horizon and few fixed expiry dates each year. By contrast, with a swap agreement

a party is able to obtain a highly specific agreement with a time horizon and payment schedule closely matched

to its needs.

Another significant difference between futures and swaps is that futures contracts are highly regulated

contracts that come under the control of the relevant futures exchange. A significant advantage of futures

contracts is that the exchange will guarantee the obligations should one of the parties default on its

- bligations. By contrast, the swap market is less regulated and unless the counterparties ensure the agreement
is underwritten by a third party there is the risk that one of the parties will not fulfil its obligations.

A significant advantage of futures contracts over swaps is that there is an active secondary market in futures

contracts, so that obligations can easily be terminated by selling the contract to another party. By contrast,

swap agreements, because of their non-standardized nature, have a far less active secondary market, and a

swap agreement can only be cancelled with the consent of both parties. A party that wishes to end its swap

- bligations will either have to enter a swap buy-back, a swap sale or swap reversal with another counterparty
that reverses (as closely as is possible) the cash $ows inherent in its original swap agreement.

13.25 CONCLUSIONS

In recent years currency derivatives have become one of the most important tools for risk management.

Properly used, they can be useful tools to reduce the foreign exchange risk and offer an attractive alternative to

the traditional forward market. Futures contracts are basically very similar instruments to forward contracts

but have some distinguishing features which can give them an edge over the use of forward contracts in

many circumstances. !e key to the successful use of currency futures contracts for hedging purposes is that

the adverse implications of any change in the spot market is offset by a profit from an appropriate futures

contract. A currency futures contract enables a firm to hedge against exchange rate risk by buying (selling) a

340

Currency Derivatives: Futures, Options and Swaps

futures contract at a guaranteed exchange rate in the future regardless of what the corresponding future spot

exchange rate turns out to be. !e present range of currency futures contracts means that the exchange rate

risk facing companies and fund managers of adverse movements in currencies can generally be considerably

reduced or even eliminated, at least up to the 12-month horizon. In addition to hedging, futures contracts are

useful instruments for taking speculative positions. For example, if a speculator feels that a currency is likely

to depreciate compared to the futures rate it is remarkably easy to take out a short position. !e low margin

requirements also make speculation relatively easy.

Option contracts offer a different payoff profile to futures contracts and as such provide a very useful

hedging/speculative alternative to forward and futures contracts. !e options market is now established as

- ne of the most important growth areas of financial markets. Currency options can help investors to hedge
positions at relatively low cost and may prove more suited to hedgers' needs than futures contracts. While
buying a futures contract guarantees the price to be paid in the future, regardless of what the corresponding
future spot price turns out to be, hedging with a futures contract means that the investor also gives up the

- pportunity to benefit from a favourable price movement. It is here that options contracts can provide an
important alternative because by hedging with an options contract the hedger can ensure a maximum price to
be paid in the future and yet still be able to take advantage of a favourable exchange rate movement. Properly
used, options contracts are extremely useful hedging tools. !e symmetric risks involved in forwards and
futures contracts contrasts with the asymmetric risks of options contracts. For this reason, options tend to
be more costly hedging instruments to purchase: to induce a party to write an option the purchaser must be
prepared to pay a fee that re$ects the increased exposure to the writer.

Another attractive feature of options is that they can be combined with other options, futures and spot

positions to devise numerous innovative speculative and hedging strategies. Overall, therefore, option contracts

enable investors, hedgers and speculators to take positions more akin to their risk–return preferences.

Swap contracts can enable firms to obtain long-term finance at a lower cost than would otherwise be the

case and can also be used to hedge longer-term currency risk at time horizons greater than available by the

use of traditional forward markets. !e swap market has grown enormously since the first swaps took place

in the early 1980s, so that in 2020 the outstanding gross notional principal amount of currency swaps was

estimated by the Bank for International Settlements to be around $27,809 billion. !e market has matured so

much that the potential gains to be had from swaps has fallen from around 50 basis points to more like 5 to 10

basis points. !e development of the swap market has been one of the most significant developments in the

bond market, since it has enabled firms to obtain lower-cost financing and also to hedge risks at far longerterm horizons than is possible with futures and options.

Arranging swaps and even becoming a counterparty to swap arrangements has generated a source of fee

income for banks but it has also meant that they have had to adopt new risk-management techniques and

procedures. Underwriting a swap deal involves some 'off-balance-sheet' exposure for a bank should one of

the counterparties default on its obligations. Hence, a bank needs to keep a careful eye on its potential swap

exposures and the creditworthiness of the parties with whom it deals.

It should also be remembered that the swap contracts examined in this chapter have been major

simplifications of actual swaps carried out in the real world. In practice, swap agreements involve more

complexity in that the two swap parties may wish to exchange different notional principal amounts, have

different payment dates, and in the case of currency swaps an intermediary has to take into account different

interest rate conventions, such as different day counts used in different countries.

_Further Reading for Chapter 13 can be found at the end of the book._

341

International Finance

APPENDIX

**Table 13.14** !e cumulative standard normal distribution

|Col1|00<br>.|01<br>.|02<br>.|03<br>.|04<br>.|05<br>.|06<br>.|07<br>.|08<br>.|09<br>.|
|---|---|---|---|---|---|---|---|---|---|---|
|**0.0**|.5000|.5040|.5080|.5120|.5160|.5199|.5239|.5279|.5319|.5359|
|**0.1**|.5398|.5438|.5478|.5517|.5557|.5596|.5636|.5675|.5714|.5753|
|**0.2**|.5793|.5832|.5871|.5910|.5948|.5987|.6026|.6064|.6103|.6141|
|**0.3**|.6179|.6217|.6255|.6293|.6331|.6368|.6406|.6443|.6480|.6517|
|**0.4**|.6554|.6591|.6628|.6664|.6700|.6736|.6772|.6808|.6844|.6879|
|**0.5**|.6915|.6950|.6985|.7019|.7054|.7088|.7122|.7157|.7190|.7224|
|**0.6**|.7257|.7291|.7324|.7257|.7389|.7422|.7454|.7486|.7517|.7549|
|**0.7**|.7580|.7611|.7642|.7673|.7704|.7734|.7764|.7794|.7823|.7852|
|**0.8**|.7881|.7910|.7939|.7967|.7995|.8023|.8051|.8078|.8106|.8133|
|**0.9**|.8159|.8186|.8212|.8238|.8264|.8289|.8315|.8340|.8365|.8389|
|**1.0**|.8413|.8438|.8461|.8495|.8508|.8531|.8554|.8577|.8599|.8621|
|**1.1**|.8643|.8665|.8686|.8708|.8729|.8749|.8770|.8790|.8810|.8830|
|**1.2**|.8849|.8869|.8888|.8907|.8925|.8944|.8962|.8980|.8997|.9015|
|**1.3**|.9032|.9049|.9066|.9082|.9099|.9115|.9131|.9147|.9162|.9177|
|**1.4**|.9192|.9207|.9222|.9236|.9251|.9265|.9279|.9292|.9306|.9319|
|**1.5**|.9332|.9345|.9357|.9370|.9382|.9394|.9406|.9418|.9429|.9441|
|**1.6**|.9452|.9463|.9474|.9484|.9495|.9505|.9515|.9525|.9535|.9545|
|**1.7**|.9554|.9564|.9573|.9582|.9591|.9599|.9608|.9616|.9625|.9633|
|**1.8**|.9641|.9649|.9656|.9664|.9671|.9678|.9686|.9693|.9699|.9706|
|**1.9**|.9713|.9719|.9726|.9732|.9738|.9744|.9750|.9756|.9761|.9767|
|**2.0**|.9772|.9778|.9783|.9788|.9793|.9798|.9803|.9808|.9812|.9817|
|**2.1**|.9821|.9826|.9830|.9834|.9838|.9842|.9846|.9850|.9854|.9857|
|**2.2**|.9861|.9864|.9868|.9871|.9875|.9878|.9881|.9884|.9887|.9890|
|**2.3**|.9893|.9896|.9898|.9901|.9904|.9906|.9909|.9911|.9913|.9916|
|**2.4**|.9918|.9920|.9922|.9925|.9927|.9929|.9931|.9932|.9934|.9936|
|**2.5**|.9938|.9940|.9941|.9943|.9945|.9946|.9948|.9949|.9951|.9952|
|**2.6**|.9953|.9955|.9956|.9957|.9959|.9960|.9961|.9962|.9963|.9964|
|**2.7**|.9965|.9966|.9967|.9968|.9969|.9970|.9971|.9972|.9973|.9974|
|**2.8**|.9974|.9975|.9976|.9977|.9977|.9978|.9979|.9979|.9980|.9981|
|**2.9**|.9981|.9982|.9982|.9983|.9984|.9984|.9985|.9985|.9986|.9986|
|**3.0**|.9987|.9987|.9987|.9988|.9988|.9989|.9989|.9989|.9990|.9990|
|**3.1**|.9990|.9991|.9991|.9991|.9992|.9992|.9992|.9992|.9993|.9993|
|**3.2**|.9993|.9993|.9994|.9994|.9994|.9994|.9994|.9995|.9995|.9995|
|**3.3**|.9995|.9995|.9995|.9996|.9996|.9996|.9996|.9996|.9996|.9997|
|**3.4**|.9997|.9997|.9997|.9997|.9997|.9997|.9997|.9997|.9997|.9998|

342

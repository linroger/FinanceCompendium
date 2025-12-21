---
title: Contents
parent_directory: 151 Trading Strategies
formatted: 2025-12-20 11:45:00 AM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - trading strategies
  - options strategies
  - financial derivatives
secondary_tags:
  - covered calls
  - protective puts
  - straddles
  - spreads
  - momentum trading
  - value investing
  - mean reversion
  - volatility trading
  - arbitrage strategies
cssclasses: academia
---

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

# **Contents**

**Praises of** _**151 Trading Strategies**_ **7**

**Author Biographies** **9**
**1** **Introduction and Summary** **15**

**2** **Options** **17**
2.1 Generalities 17

2.2 Strategy: Covered call 18
2.3 Strategy: Covered put … … … … … … … … . . 18
2.4 Strategy: Protective put … … … … … … … … . 19
2.5 Strategy: Protective call … … … … … … … … . 19
2.6 Strategy: Bull call spread … … … … … … … … 19
2.7 Strategy: Bull put spread … … … … … … … … 20
2.8 Strategy: Bear call spread … … … … … … … … 20
2.9 Strategy: Bear put spread … … … … … … … … 20
2.10 Strategy: Long synthetic forward … … … … … … . . 21
2.11 Strategy: Short synthetic forward … … … … … … . . 21
2.12 Strategy: Long combo … … … … … … … … . . 21
2.13 Strategy: Short combo … … … … … … … … . . 22
2.14 Strategy: Bull call ladder … … … … … … … … . 22
2.15 Strategy: Bull put ladder … … … … … … … … . 23
2.16 Strategy: Bear call ladder … … … … … … … … 23
2.17 Strategy: Bear put ladder … … … … … … … … 23
2.18 Strategy: Calendar call spread … … … … … … … . 24
2.19 Strategy: Calendar put spread … … … … … … … . 24
2.20 Strategy: Diagonal call spread … … … … … … … . 25
2.21 Strategy: Diagonal put spread … … … … … … … . 25
2.22 Strategy: Long straddle … … … … … … … … . 26
2.23 Strategy: Long strangle … … … … … … … … . . 26
2.24 Strategy: Long guts … … … … … … … … … . 26
2.25 Strategy: Short straddle … … … … … … … … . 27
2.26 Strategy: Short strangle … … … … … … … … . 27
2.27 Strategy: Short guts … … … … … … … … … 27
2.28 Strategy: Long call synthetic straddle … … … … … … 28
2.29 Strategy: Long put synthetic straddle … … … … … … 28
2.30 Strategy: Short call synthetic straddle … … … … … . . 28
2.31 Strategy: Short put synthetic straddle … … … … … . . 29
2.32 Strategy: Covered short straddle … … … … … … . . 29
2.33 Strategy: Covered short strangle … … … … … … … 29
2.34 Strategy: Strap … … … … … … … … … … 30
2.35 Strategy: Strip … … … … … … … … … … 30
2.36 Strategy: Call ratio backspread … … … … … … … 30
2.37 Strategy: Put ratio backspread … … … … … … … 31
2.38 Strategy: Ratio call spread … … … … … … … … 31
2.39 Strategy: Ratio put spread … … … … … … … … 31
2.40 Strategy: Long call butterfly … … … … … … … . . 32
2.40.1 Strategy: Modified call butterfly … … … … … . . 32
2.41 Strategy: Long put butterfly … … … … … … … . . 32
2.41.1 Strategy: Modified put butterfly … … … … … . . 33
2.42 Strategy: Short call butterfly … … … … … … … . 33
2.43 Strategy: Short put butterfly … … … … … … … . 33
2.44 Strategy: "Long" iron butterfly … … … … … … … 34
2.45 Strategy: "Short" iron butterfly … … … … … … … 34
2.46 Strategy: Long call condor … … … … … … … … 34
2.47 Strategy: Long put condor … … … … … … … … 35
2.48 Strategy: Short call condor … … … … … … … … 35
2.49 Strategy: Short put condor … … … … … … … … 35
2.50 Strategy: Long iron condor … … … … … … … … 36
2.51 Strategy: Short iron condor … … … … … … … . . 36
2.52 Strategy: Long box … … … … … … … … … . 37
2.53 Strategy: Collar … … … … … … … … … … 37
2.54 Strategy: Bullish short seagull spread … … … … … … 37
2.55 Strategy: Bearish long seagull spread … … … … … … 38
2.56 Strategy: Bearish short seagull spread … … … … … . . 38
2.57 Strategy: Bullish long seagull spread … … … … … … 39

**3** **Stocks** **40**

3.1 Strategy: Price-momentum … … … … … … … … 40
3.2 Strategy: Earnings-momentum … … … … … … … . 41
3.3 Strategy: Value … … … … … … … … … … 42
3.4 Strategy: Low-volatility anomaly … … … … … … . . 42
3.5 Strategy: Implied volatility … … … … … … … … 43
3.6 Strategy: Multifactor portfolio … … … … … … … . 43
3.7 Strategy: Residual momentum … … … … … … … . 44
3.8 Strategy: Pairs trading … … … … … … … … . . 45
3.9 Strategy: Mean-reversion – single cluster … … … … … . 46
3.9.1 Strategy: Mean-reversion – multiple clusters … … … . 47
3.10 Mean-reversion – weighted regression … … … … … … 49
3.11 Strategy: Single moving average … … … … … … … 49
3.12 Strategy: Two moving averages … … … … … … … 50
3.13 Strategy: Three moving averages … … … … … … . . 51
3.14 Strategy: Support and resistance … … … … … … . . 51

2

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

3.15 Strategy: Channel … … … … … … … … … . 52
3.16 Strategy: Event-driven – M&A … … … … … … … 52
3.17 Strategy: Machine learning – single-stock KNN … … … … 53
3.18 Strategy: Statistical arbitrage – optimization … … … … . . 55
3.18.1 Dollar-neutrality … … … … … … … … . 56
3.19 Strategy: Market-making … … … … … … … … . 58
3.20 Strategy: Alpha combos … … … … … … … … . 59
3.21 A few comments … … … … … … … … … . . 60

**4** **Exchange-traded funds (ETFs)** **61**
4.1 Strategy: Sector momentum rotation … … … … … … 61
4.1.1 Strategy: Sector momentum rotation with MA filter … … 62
4.1.2 Strategy: Dual-momentum sector rotation … … … . . 62
4.2 Strategy: Alpha rotation … … … … … … … … . 63
4.3 Strategy: R-squared … … … … … … … … … 63
4.4 Strategy: Mean-reversion … … … … … … … … . 64
4.5 Strategy: Leveraged ETFs (LETFs) … … … … … … . 64
4.6 Strategy: Multi-asset trend following … … … … … … 65

**5** **Fixed Income** **66**

5.1 Generalities … … … … … … … … … … . . 66

5.1.1 Zero-coupon bonds … … … … … … … … 66
5.1.2 Bonds with coupons … … … … … … … . . 66
5.1.3 Floating rate bonds … … … … … … … … 67
5.1.4 Swaps … … … … … … … … … … . 67
5.1.5 Duration and convexity … … … … … … … . 68
5.2 Strategy: Bullets … … … … … … … … … . . 69
5.3 Strategy: Barbells … … … … … … … … … . . 69
5.4 Strategy: Ladders … … … … … … … … … . . 70
5.5 Strategy: Bond immunization … … … … … … … . 70
5.6 Strategy: Dollar-duration-neutral butterfly … … … … … 71
5.7 Strategy: Fifty-fifty butterfly … … … … … … … . 72
5.8 Strategy: Regression-weighted butterfly … … … … … . . 72
5.8.1 Strategy: Maturity-weighted butterfly … … … … . . 73
5.9 Strategy: Low-risk factor … … … … … … … … . 73
5.10 Strategy: Value factor … … … … … … … … . . 73
5.11 Strategy: Carry factor … … … … … … … … . . 74
5.12 Strategy: Rolling down the yield curve … … … … … . . 74
5.13 Strategy: Yield curve spread (flatteners & steepeners) … … … 75
5.14 Strategy: CDS basis arbitrage … … … … … … … . 75
5.15 Strategy: Swap-spread arbitrage … … … … … … … 76

3

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

**6** **Indexes** **76**

6.1 Generalities … … … … … … … … … … . . 76

6.2 Strategy: Cash-and-carry arbitrage … … … … … … . 77
6.3 Strategy: Dispersion trading in equity indexes … … … … . 77
6.3.1 Strategy: Dispersion trading – subset portfolio … … … 78
6.4 Strategy: Intraday arbitrage between index ETFs … … … . . 79
6.5 Strategy: Index volatility targeting with risk-free asset … … . . 80

**7** **Volatility** **80**
7.1 Generalities … … … … … … … … … … . . 80

7.2 Strategy: VIX futures basis trading … … … … … … . 81
7.3 Strategy: Volatility carry with two ETNs … … … … … . 82
7.3.1 Strategy: Hedging short VXX with VIX futures … … . . 82
7.4 Strategy: Volatility risk premium … … … … … … . . 83
7.4.1 Strategy: Volatility risk premium with Gamma hedging … . 83
7.5 Strategy: Volatility skew – long risk reversal … … … … . . 84
7.6 Strategy: Volatility trading with variance swaps … … … … 84

**8** **Foreign Exchange (FX)** **85**
8.1 Strategy: Moving averages with HP filter … … … … … . 85
8.2 Strategy: Carry trade … … … … … … … … … 86
8.2.1 Strategy: High-minus-low carry … … … … … . . 87
8.3 Strategy: Dollar carry trade … … … … … … … . . 88
8.4 Strategy: Momentum & carry combo … … … … … … 88
8.5 Strategy: FX triangular arbitrage … … … … … … . . 89

**9** **Commodities** **89**

9.1 Strategy: Roll yields … … … … … … … … … 89
9.2 Strategy: Trading based on hedging pressure … … … … . . 90
9.3 Strategy: Portfolio diversification with commodities … … … . 90
9.4 Strategy: Value … … … … … … … … … … 90
9.5 Strategy: Skewness premium … … … … … … … . . 91
9.6 Strategy: Trading with pricing models … … … … … . . 91

**10 Futures** **92**

10.1 Strategy: Hedging risk with futures … … … … … … . 92
10.1.1 Strategy: Cross-hedging … … … … … … … 93
10.1.2 Strategy: Interest rate risk hedging … … … … … 93
10.2 Strategy: Calendar spread … … … … … … … … 94
10.3 Strategy: Contrarian trading (mean-reversion) … … … … . 95
10.3.1 Strategy: Contrarian trading – market activity … … … 95
10.4 Strategy: Trend following (momentum) … … … … … . . 96

4

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

**11 Structured Assets** **97**
11.1 Generalities: Collateralized Debt Obligations (CDOs) … … … 97
11.2 Strategy: Carry, equity tranche – index hedging … … … … 99
11.3 Strategy: Carry, senior/mezzanine – index hedging … … … . 99
11.4 Strategy: Carry – tranche hedging … … … … … … . . 99
11.5 Strategy: Carry – CDS hedging … … … … … … … 100
11.6 Strategy: CDOs – curve trades … … … … … … … 100
11.7 Strategy: Mortgage-backed security (MBS) trading … … … . 100

**12 Convertibles** **101**

12.1 Strategy: Convertible arbitrage … … … … … … … 101
12.2 Strategy: Convertible option-adjusted spread … … … … . . 102

**13 Tax Arbitrage** **102**
13.1 Strategy: Municipal bond tax arbitrage … … … … … . . 102
13.2 Strategy: Cross-border tax arbitrage … … … … … … 103
13.2.1 Strategy: Cross-border tax arbitrage with options … … . 104

**14 Miscellaneous Assets** **104**
14.1 Strategy: Inflation hedging – inflation swaps … … … … . . 104
14.2 Strategy: TIPS-Treasury arbitrage … … … … … … . 105
14.3 Strategy: Weather risk – demand hedging … … … … … 106
14.4 Strategy: Energy – spark spread … … … … … … … 108

**15 Distressed Assets** **108**

15.1 Strategy: Buying and holding distressed debt … … … … . 108
15.2 Strategy: Active distressed investing … … … … … … 109
15.2.1 Strategy: Planning a reorganization … … … … … 109
15.2.2 Strategy: Buying outstanding debt … … … … … 109
15.2.3 Strategy: Loan-to-own … … … … … … … . 110
15.3 Strategy: Distress risk puzzle … … … … … … … . 110
15.3.1 Strategy: Distress risk puzzle – risk management … … . 110

**16 Real Estate** **111**

16.1 Generalities … … … … … … … … … … . . 111
16.2 Strategy: Mixed-asset diversification with real estate … … … 111
16.3 Strategy: Intra-asset diversification within real estate … … … 112

16.3.1 Strategy: Property type diversification … … … … . 112
16.3.2 Strategy: Economic diversification … … … … … . 112
16.3.3 Strategy: Property type and geographic diversification … . 113
16.4 Strategy: Real estate momentum – regional approach … … … 113
16.5 Strategy: Inflation hedging with real estate … … … … … 113
16.6 Strategy: Fix-and-flip … … … … … … … … … 114

5

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

**17 Cash** **114**

17.1 Generalities … … … … … … … … … … . . 114

17.2 Strategy: Money laundering – the dark side of cash … … … . 114
17.3 Strategy: Liquidity management … … … … … … … 115
17.4 Strategy: Repurchase agreement (REPO) … … … … … . 115
17.5 Strategy: Pawnbroking … … … … … … … … . . 115
17.6 Strategy: Loan sharking … … … … … … … … . 116

**18 Cryptocurrencies** **116**
18.1 Generalities … … … … … … … … … … . . 116
18.2 Strategy: Artificial neural network (ANN) … … … … … 116
18.3 Strategy: Sentiment analysis – na¨ıve Bayes Bernoulli … … … 120

**19 Global Macro** **121**

19.1 Generalities … … … … … … … … … … . . 121

19.2 Strategy: Fundamental macro momentum … … … … … 122
19.3 Strategy: Global macro inflation hedge … … … … … . . 122
19.4 Strategy: Global fixed-income strategy … … … … … . . 123
19.5 Strategy: Trading on economic announcements … … … … . 123

**20 Infrastructure** **123**

**Acknowledgments** **124**

**A R Source Code for Backtesting** **125**

**B DISCLAIMERS** **132**

**References** **134**

**Glossary** **279**

**Acronyms** **336**

**Some Math Notations** **340**

**Explanatory Comments for Index** **341**

**Index** **342**

6

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

# **2 Options**

## **2.1 Generalities**

An option is a form of a financial derivative. It is a contract sold by the option writer

to the option holder. Typically, an option gives the option holder the right, but not

the obligation, to buy or sell an underlying security or financial asset (e.g., a share

of common stock) at an agreed-upon price (referred to as the strike price) during a
certain period of time or on a specific date (referred to as the exercise date). A buyer
pays a premium to the seller for the option. For option pricing, see, e.g., [Harrison
and Pliska, 1981], [Baxter and Rennie, 1996], [Hull, 2012], [Kakushadze, 2015a].

A European call option is a right (but not an obligation) to buy a stock at the

maturity time _T_ for the strike price _k_ agreed on at time _t_ = 0. The claim for the call

option _f_ _[call]_ ( _ST_ _, k_ ) = ( _ST −_ _k_ ) [+] . Here ( _x_ ) [+] = _x_ if _x >_ 0, and ( _x_ ) [+] = 0 if _x _ 0. By
the "claim" we mean how much the option is worth at maturity _T_ . If the stock price
at maturity _ST > k_, then the option holder gains _ST −_ _k_ (excluding the cost paid for
the option at _t_ = 0). If the price at maturity _ST _ _k_, then there is no profit to be
made from the option as it makes no sense to exercise it if _ST < k_ (as it is cheaper
to buy the stock in the market) and it makes no di↵erence if _ST_ = _k_ - all this is
assuming no transaction costs. Similarly, a European put option is a right (but not
an obligation) to sell a stock at the maturity time _T_ for the strike price _k_ agreed on
at time _t_ = 0. The claim for the put option is given by _f_ _[put]_ ( _ST_ _, k_ ) = ( _k −_ _ST_ ) [+] .

Options can be issued on a variety of underlying assets, e.g., equities (singlestock options), bonds, futures, indexes, commodities, currencies, etc. For the sake of

terminological convenience and definiteness, in the following we will frequently refer

to the underlying asset as "stock", even though in many cases the discussion can be

readily generalized to other assets. Furthermore, there is a variety of option styles

(beyond European options – for European options, see, e.g., [Black and Scholes,

1973]), e.g., American options (that can be exercised on any trading day on or

before expiration – see, e.g., [Kim, 1990]), Bermudan options (that can be exercised

only on specified dates on or before expiration – see, e.g., [Andersen, 1999]), Canary
options (that can be exercised, say, quarterly, but not before a determined time
period, say, 1 year, has elapsed – see, e.g., [Henrard, 2006]), Asian options (whose
payo↵is determined by the average underlying price over some preset time period

- see, e.g., [Rogers and Shi, 1995]), barrier options (which can be exercised only if
the underlying security's price passes a certain level or "barrier" – see, e.g., [Haug,
2001]), other exotic options (a broad category of options that typically are complexly
structured – see, e.g., [Fabozzi, 2002]), etc. Let us also mention binary (a.k.a. all
or-nothing or digital) options (that pay a preset amount, say, \$1, if the underlying
security meets a predefined condition on expiration, otherwise they simply expire
without paying anything to the holder – see, e.g., [Breeden and Litzenberger, 1978]).

Some trading strategies can be built using, e.g., combinations of options. Such

trading strategies can be divided into two groups: directional and non-directional.

17

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

Directional strategies imply an expectation on the direction of the future stock price

movements. Non-directional (a.k.a. neutral) strategies are not based on the future

direction: the trader is oblivious to whether the stock price goes up or down.

Directional strategies can be divided into two subgroups: (i) bullish strategies,

where the trader profits if the stock price goes up; and (ii) bearish strategies, where

the trader profits if the stock price goes down. Non-directional strategies can be

divided into two subgroups: (a) volatility strategies that profit if the stock has large

price movements (high volatility environment); and (b) sideways strategies that

profit if the stock price remains stable (low volatility environment). Also, one can

distinguish income, capital gain, hedging strategies, etc. (see, e.g., [Cohen, 2005]).

In the remainder of this section, unless stated otherwise, all options are for the

same stock and have the same time-to-maturity (TTM). The moneyness abbreviations are: ATM = at-the-money, ITM = in-the-money, OTM = out-of-the-money.

Also: _fT_ is the payo↵at maturity _T_ ; _S_ 0 is the stock price at the time _t_ = 0 of

entering the trade (i.e., establishing the initial position); _ST_ is the stock price at

maturity; _C_ is the net credit received at _t_ = 0, and _D_ is the net debit required at

_t_ = 0, as applicable; _H_ = _D_ (for a net debit trade) or _H_ = _−C_ (for a net credit

trade); [9] _S⇤up_ and _S⇤down_ are the higher and lower break-even (i.e., for which _fT_ = 0)

stock prices at maturity; if there is only one break-even price, it is denoted by _S⇤_ ;

_Pmax_ is the maximum profit at maturity; _Lmax_ is the maximum loss at maturity.

## **2.2 Strategy: Covered call**

This strategy (a.k.a. "buy-write" strategy) amounts to buying stock and writing a

call option with a strike price _K_ against the stock position. The trader's outlook on

the stock price is neutral to bullish. The covered call strategy has the same payo↵as

writing a put option (short/naked put). [10] While maintaining the long stock position,

the trader can generate income by periodically selling OTM call options. We have: [11]

_fT_ = _ST −_ _S_ 0 _−_ ( _ST −_ _K_ ) [+] + _C_ = _K −_ _S_ 0 _−_ ( _K −_ _ST_ ) [+] + _C_ (1)

_S⇤_ = _S_ 0 _−_ _C_ (2)

_Pmax_ = _K −_ _S_ 0 + _C_ (3)

_Lmax_ = _S_ 0 _−_ _C_ (4)

## **2.3 Strategy: Covered put**

This strategy (a.k.a. "sell-write" strategy) amounts to shorting stock and writing a

put option with a strike price _K_ against the stock position. The trader's outlook is

9 _H_ is the net debit for all bought option premia less the net credit for all sold option premia.

10 This is related to put-call parity (see, e.g., [Stoll, 1969], [Hull, 2012]).

11 For some literature on covered call strategies, see, e.g., [Pounds, 1978], [Whaley, 2002], [Feldman and Roy, 2004], [Hill _et al_, 2006], [Kapadia and Szado, 2007], [Che and Fung, 2011], [Mugwagwa

_et al_, 2012], [Israelov and Nielsen, 2014], [Israelov and Nielsen, 2015a], [Hemler and Miller, 2015].

18

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

neutral to bearish. The covered put strategy has the same payo↵as writing a call

- ption (short/naked call). While maintaining the short stock position, the trader
can generate income by periodically selling OTM put options. We have: [12]

_fT_ = _S_ 0 _−_ _ST −_ ( _K −_ _ST_ ) [+] + _C_ = _S_ 0 _−_ _K −_ ( _ST −_ _K_ ) [+] + _C_ (5)

_S⇤_ = _S_ 0 + _C_ (6)

_Pmax_ = _S_ 0 _−_ _K_ + _C_ (7)

_Lmax_ = unlimited (8)

## **2.4 Strategy: Protective put**

This strategy (a.k.a. "married put" or "synthetic call") amounts to buying stock

and an ATM or OTM put option with a strike price _K _ _S_ 0. The trader's outlook

is bullish. This is a hedging strategy: the put option hedges the risk of the stock

price falling. We have: [13]

_fT_ = _ST −_ _S_ 0 + ( _K −_ _ST_ ) [+] _−_ _D_ = _K −_ _S_ 0 + ( _ST −_ _K_ ) [+] _−_ _D_ (9)

_S⇤_ = _S_ 0 + _D_ (10)

_Pmax_ = unlimited (11)

_Lmax_ = _S_ 0 _−_ _K_ + _D_ (12)

## **2.5 Strategy: Protective call**

This strategy (a.k.a. "married call" or "synthetic put") amounts to shorting stock

and buying an ATM or OTM call option with a strike price _K ≥_ _S_ 0. The trader's

- utlook is bearish. This is a hedging strategy: the call option hedges the risk of the
stock price rising. We have: [14]

_fT_ = _S_ 0 _−_ _ST_ + ( _ST −_ _K_ ) [+] _−_ _D_ = _S_ 0 _−_ _K_ + ( _K −_ _ST_ ) [+] _−_ _D_ (13)

_S⇤_ = _S_ 0 _−_ _D_ (14)

_Pmax_ = _S_ 0 _−_ _D_ (15)

_Lmax_ = _K −_ _S_ 0 + _D_ (16)

## **2.6 Strategy: Bull call spread**

This is a vertical spread consisting of a long position in a close to ATM call option

with a strike price _K_ 1, and a short position in an OTM call option with a higher

12 The covered put option strategy is symmetrical to the covered call option strategy. Academic

literature on the covered put option strategy appears to be scarce. See, e.g., [Che, 2016].

13 For some literature on protective put strategies, see, e.g., [Figlewski, Chidambaran and Kaplan, 1993], [Israelov and Nielsen, 2015b], [Israelov, Nielsen and Villalon, 2017], [Israelov, 2017].

14 The protective call option strategy is symmetrical to the protective put option strategy.

Academic literature on the protective call option strategy appears to be scarce. See, e.g., [Jabbour

and Budwick, 2010], [Tokic, 2013].

19

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

strike price _K_ 2. This is a net debit trade. The trader's outlook is bullish: the

strategy profits if the stock price rises. This is a capital gain strategy. We have: [15]

_fT_ = ( _ST −_ _K_ 1) [+] _−_ ( _ST −_ _K_ 2) [+] _−_ _D_ (17)

_S⇤_ = _K_ 1 + _D_ (18)

_Pmax_ = _K_ 2 _−_ _K_ 1 _−_ _D_ (19)

_Lmax_ = _D_ (20)

## **2.7 Strategy: Bull put spread**

This is a vertical spread consisting of a long position in an OTM put option with

a strike price _K_ 1, and a short position in another OTM put option with a higher

strike price _K_ 2. This is a net credit trade. The trader's outlook is bullish. This is

an income strategy. We have:

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] + _C_ (21)

_S⇤_ = _K_ 2 _−_ _C_ (22)

_Pmax_ = _C_ (23)

_Lmax_ = _K_ 2 _−_ _K_ 1 _−_ _C_ (24)

## **2.8 Strategy: Bear call spread**

This is a vertical spread consisting of a long position in an OTM call option with a

strike price _K_ 1, and a short position in another OTM call option with a lower strike

price _K_ 2. This is a net credit trade. The trader's outlook is bearish. This is an

income strategy. We have:

_fT_ = ( _ST −_ _K_ 1) [+] _−_ ( _ST −_ _K_ 2) [+] + _C_ (25)

_S⇤_ = _K_ 2 + _C_ (26)

_Pmax_ = _C_ (27)

_Lmax_ = _K_ 1 _−_ _K_ 2 _−_ _C_ (28)

## **2.9 Strategy: Bear put spread**

This is a vertical spread consisting of a long position in a close to ATM put option

with a strike price _K_ 1, and a short position in an OTM put option with a lower

15 For some literature on bull/bear call/put vertical spreads, see, e.g., [Cartea and Pedraz,

2012], [Chaput and Ederington, 2003], [Chaput and Ederington, 2005], [Chen, Chen and Howell,

1999], [Cong, Tan and Weng, 2013], [Cong, Tan and Weng, 2014], [Matsypura and Timkovsky,

2010], [Shah, 2017], [Wong, Thompson and The, 2011], [Zhang, 2015]. Also see [Clarke, de Silva

and Thorley, 2013], [Cohen, 2005], [Jabbour and Budwick, 2010], [McMillan, 2002], [The Options

Institute, 1995].

20

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

strike price _K_ 2. This is a net debit trade. The trader's outlook is bearish: this

strategy profits if the stock price falls. This is a capital gain strategy. We have:

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] _−_ _D_ (29)

_S⇤_ = _K_ 1 _−_ _D_ (30)

_Pmax_ = _K_ 1 _−_ _K_ 2 _−_ _D_ (31)

_Lmax_ = _D_ (32)

## **2.10 Strategy: Long synthetic forward**

This strategy amounts to buying an ATM call option and selling an ATM put option

with a strike price _K_ = _S_ 0. This can be a net debit or net credit trade. Typically,

_|H| ⌧_ _S_ 0. The trader's outlook is bullish: this strategy mimics a long stock or

futures position; it replicates a long forward contract with the delivery price _K_ and

the same maturity as the options. This is a capital gain strategy. We have: [16]

_fT_ = ( _ST −_ _K_ ) [+] _−_ ( _K −_ _ST_ ) [+] _−_ _H_ = _ST −_ _K −_ _H_ (33)

_S⇤_ = _K_ + _H_ (34)

_Pmax_ = unlimited (35)

_Lmax_ = _K_ + _H_ (36)

## **2.11 Strategy: Short synthetic forward**

This strategy amounts to buying an ATM put option and selling an ATM call option

with a strike price _K_ = _S_ 0. This can be a net debit or net credit trade. Typically,

_|H| ⌧_ _S_ 0. The trader's outlook is bearish: this strategy mimics a short stock or

futures position; it replicates a short forward contract with the delivery price _K_ and

the same maturity as the options. This is a capital gain strategy. We have:

_fT_ = ( _K −_ _ST_ ) [+] _−_ ( _ST −_ _K_ ) [+] _−_ _H_ = _K −_ _ST −_ _H_ (37)

_S⇤_ = _K −_ _H_ (38)

_Pmax_ = _K −_ _H_ (39)

_Lmax_ = unlimited (40)

## **2.12 Strategy: Long combo**

This strategy (a.k.a. "long risk reversal") amounts to buying an OTM call option

with a strike price _K_ 1 and selling an OTM put option with a strike price _K_ 2. The

16 For some literature on long/short synthetic forward contracts (a.k.a. synthetic futures), see,

e.g., [Benavides, 2009], [Bozic and Fortenbery, 2012], [DeMaskey, 1995], [Ebrahim and Rahman,

2005], [Nandy and Chattopadhyay, 2016].

21

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

trader's outlook is bullish. This is a capital gain strategy. [17] We have ( _K_ 1 _> K_ 2):

_fT_ = ( _ST −_ _K_ 1) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] _−_ _H_ (41)

_S⇤_ = _K_ 1 + _H,_ _H >_ 0 (42)

_S⇤_ = _K_ 2 + _H,_ _H <_ 0 (43)

_K_ 2 __ _S⇤_ __ _K_ 1 _,_ _H_ = 0 (44)

_Pmax_ = unlimited (45)

_Lmax_ = _K_ 2 + _H_ (46)

## **2.13 Strategy: Short combo**

This strategy (a.k.a. "short risk reversal") amounts to buying an OTM put option

with a strike price _K_ 1 and selling an OTM call option with a strike price _K_ 2. The

trader's outlook is bearish. This is a capital gain strategy. We have ( _K_ 2 _> K_ 1):

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _ST −_ _K_ 2) [+] _−_ _H_ (47)

_S⇤_ = _K_ 1 _−_ _H,_ _H >_ 0 (48)

_S⇤_ = _K_ 2 _−_ _H,_ _H <_ 0 (49)

_K_ 1 __ _S⇤_ __ _K_ 2 _,_ _H_ = 0 (50)

_Pmax_ = _K_ 1 _−_ _H_ (51)

_Lmax_ = unlimited (52)

## **2.14 Strategy: Bull call ladder**

This is a vertical spread consisting of a long position in (usually) a close to ATM

call option with a strike price _K_ 1, a short position in an OTM call option with

a strike price _K_ 2, and a short position in another OTM call option with a higher

strike price _K_ 3. A bull call ladder is a bull call spread financed by selling another

OTM call option (with the strike price _K_ 3). [18] This adjusts the trader's outlook from

bullish (bull call spread) to conservatively bullish or even non-directional (with an

expectation of low volatility). We have:

_fT_ = ( _ST −_ _K_ 1) [+] _−_ ( _ST −_ _K_ 2) [+] _−_ ( _ST −_ _K_ 3) [+] _−_ _H_ (53)

_S⇤down_ = _K_ 1 + _H,_ _H >_ 0 (54)

_S⇤up_ = _K_ 3 + _K_ 2 _−_ _K_ 1 _−_ _H_ (55)

_Pmax_ = _K_ 2 _−_ _K_ 1 _−_ _H_ (56)

_Lmax_ = unlimited (57)

17 For some literature on long/short combo strategies, see, e.g., [Rusn´akov´a, ˇSolt´es and Szabo,

2015], [Solt´es, 2011], [ [ˇ] Solt´es and Rusn´akov´a, 2012]. Also see, e.g., [Chaput and Ederington, 2003]. [ˇ]

18 In this sense, this is an "income" strategy.

22

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **2.15 Strategy: Bull put ladder**

This is a vertical spread consisting of a short position in (usually) a close to ATM

put option with a strike price _K_ 1, a long position in an OTM put option with a strike

price _K_ 2, and a long position in another OTM put option with a lower strike price

_K_ 3. A bull put ladder typically arises when a bull put spread (a bullish strategy)

goes wrong (the stock trades lower), so the trader buys another OTM put option

(with the strike price _K_ 3) to adjust the position to bearish. We have: [19]

_fT_ = ( _K_ 3 _−_ _ST_ ) [+] + ( _K_ 2 _−_ _ST_ ) [+] _−_ ( _K_ 1 _−_ _ST_ ) [+] _−_ _H_ (58)

_S⇤up_ = _K_ 1 + _H,_ _H <_ 0 (59)

_S⇤down_ = _K_ 3 + _K_ 2 _−_ _K_ 1 _−_ _H_ (60)

_Pmax_ = _K_ 3 + _K_ 2 _−_ _K_ 1 _−_ _H_ (61)

_Lmax_ = _K_ 1 _−_ _K_ 2 + _H_ (62)

## **2.16 Strategy: Bear call ladder**

This is a vertical spread consisting of a short position in (usually) a close to ATM

call option with a strike price _K_ 1, a long position in an OTM call option with a strike

price _K_ 2, and a long position in another OTM call option with a higher strike price

_K_ 3. A bear call ladder typically arises when a bear call spread (a bearish strategy)

goes wrong (the stock trades higher), so the trader buys another OTM call option

(with the strike price _K_ 3) to adjust the position to bullish. We have:

_fT_ = ( _ST −_ _K_ 3) [+] + ( _ST −_ _K_ 2) [+] _−_ ( _ST −_ _K_ 1) [+] _−_ _H_ (63)

_S⇤down_ = _K_ 1 _−_ _H,_ _H <_ 0 (64)

_S⇤up_ = _K_ 3 + _K_ 2 _−_ _K_ 1 + _H_ (65)

_Pmax_ = unlimited (66)

_Lmax_ = _K_ 2 _−_ _K_ 1 + _H_ (67)

## **2.17 Strategy: Bear put ladder**

This is a vertical spread consisting of a long position in (usually) a close to ATM

put option with a strike price _K_ 1, a short position in an OTM put option with

a strike price _K_ 2, and a short position in another OTM put option with a lower

strike price _K_ 3. A bear put ladder is a bear put spread financed by selling another

OTM put option (with the strike price _K_ 3). [20] This adjusts the trader's outlook from

bearish (bear put spread) to conservatively bearish or even non-directional (with an

19 For some literature on ladder strategies, see, e.g., [Amaitiek, B´alint and Reˇsovsk´y, 2010],

[Harˇcarikov´a and Solt´es, 2016], [He, Tang and Zhang, 2016], [ [ˇ] Solt´es and Amaitiek, 2010a]. [ˇ]

20 In this sense, as for the bull call ladder, this is an "income" strategy.

23

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

expectation of low volatility). We have (assuming _K_ 3 + _K_ 2 _−_ _K_ 1 + _H >_ max( _H,_ 0)):

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] _−_ ( _K_ 3 _−_ _ST_ ) [+] _−_ _H_ (68)

_S⇤up_ = _K_ 1 _−_ _H,_ _H >_ 0 (69)

_S⇤down_ = _K_ 3 + _K_ 2 _−_ _K_ 1 + _H_ (70)

_Pmax_ = _K_ 1 _−_ _K_ 2 _−_ _H_ (71)

_Lmax_ = _K_ 3 + _K_ 2 _−_ _K_ 1 + _H_ (72)

## **2.18 Strategy: Calendar call spread**

This is a horizontal spread consisting of a long position in a close to ATM call option

with TTM _T_ _[0]_ and a short position in another call option with the same strike price

_K_ but shorter TTM _T < T_ _[0]_ . This is a net debit trade. The trader's outlook is

neutral to bullish. At the expiration of the short call option ( _t_ = _T_ ), the best case

scenario is if the stock price is right at the strike price ( _ST_ = _K_ ). At _t_ = _T_ let _V_ be

the value of the long call option (expiring at _t_ = _T_ _[0]_ ) assuming _ST_ = _K_ . We have: [21]

_Pmax_ = _V −_ _D_ (73)

_Lmax_ = _D_ (74)

If at the expiration of the short call option the stock price _Sstop−loss _ _ST _ _K_,

where _Sstop−loss_ is the stop-loss price below which the trader would unwind the

entire position, then the trader can write another call option with the strike price

_K_ and TTM _T_ 1 _< T_ _[0]_ . While maintaining the long position in the call option with

TTM _T_ _[0]_, the trader can generate income by periodically selling call options with

shorter maturities. In this regard, this strategy resembles the covered call strategy.

## **2.19 Strategy: Calendar put spread**

This is a horizontal spread consisting of a long position in a close to ATM put option

with TTM _T_ _[0]_ and a short position in another put option with the same strike price

_K_ but shorter TTM _T < T_ _[0]_ . This is a net debit trade. The trader's outlook is

neutral to bearish. At the expiration of the short put option ( _t_ = _T_ ), the best case

scenario is if the stock price is right at the strike price ( _ST_ = _K_ ). At _t_ = _T_ let _V_ be

the value of the long put option (expiring at _t_ = _T_ _[0]_ ) assuming _ST_ = _K_ . We have:

_Pmax_ = _V −_ _D_ (75)

_Lmax_ = _D_ (76)

If at the expiration of the short put option the stock price _K _ _ST _ _Sstop−loss_,

where _Sstop−loss_ is the stop-loss price above which the trader would unwind the

21 For some literature on calendar/diagonal call/put spreads, see, e.g., [Carmona and Durrleman,

2003], [Carr and Javaheri, 2005], [Dale and Currie, 2015], [Gatheral and Jacquier, 2014], [Kawaller,

Koch and Ludan, 2002], [Liu and Tang, 2010], [Manoliu, 2004], [Pirrong, 2017], [Till, 2008].

24

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

entire position, then the trader can write another put option with the strike price

_K_ and TTM _T_ 1 _< T_ _[0]_ . While maintaining the long position in the put option with

TTM _T_ _[0]_, the trader can generate income by periodically selling put options with

shorter maturities. In this regard, this strategy resembles the covered put strategy.

## **2.20 Strategy: Diagonal call spread**

This is a diagonal spread consisting of a long position in a deep ITM call option with

a strike price _K_ 1 and TTM _T_ _[0]_, and a short position in an OTM call option with a

strike price _K_ 2 and shorter TTM _T < T_ _[0]_ . This is a net debit trade. The trader's

- utlook is bullish. At _t_ = _T_ let _V_ be the value of the long call option (expiring at
_t_ = _T_ _[0]_ ) assuming _ST_ = _K_ . We have:

_Pmax_ = _V −_ _D_ (77)

_Lmax_ = _D_ (78)

If at the expiration of the short call option the stock price _Sstop−loss _ _ST _ _K_ 2,

where _Sstop−loss_ is the stop-loss price below which the trader would unwind the entire

position, then the trader can write another OTM call option with TTM _T_ 1 _< T_ _[0]_ .

While maintaining the long position in the call option with TTM _T_ _[0]_, the trader can

generate income by periodically selling OTM call options with shorter maturities. In

this regard, this strategy is similar to the calendar call spread. The main di↵erence

is that, in the diagonal call spread the deep ITM call option (unlike the close to

ATM call option in the calendar call spread) more closely mimics the underlying

stock, so the position is more protected against a sharp rise in the stock price.

## **2.21 Strategy: Diagonal put spread**

This is a diagonal spread consisting of a long position in a deep ITM put option with

a strike price _K_ 1 and TTM _T_ _[0]_, and a short position in an OTM put option with a

strike price _K_ 2 and shorter TTM _T < T_ _[0]_ . This is a net debit trade. The trader's

- utlook is bearish. At _t_ = _T_ let _V_ be the value of the long put option (expiring at
_t_ = _T_ _[0]_ ) assuming _ST_ = _K_ . We have:

_Pmax_ = _V −_ _D_ (79)

_Lmax_ = _D_ (80)

If at the expiration of the short put option the stock price _K_ 2 __ _ST _ _Sstop−loss_,

where _Sstop−loss_ is the stop-loss price above which the trader would unwind the entire

position, then the trader can write another OTM put option with TTM _T_ 1 _< T_ _[0]_ .

While maintaining the long position in the put option with TTM _T_ _[0]_, the trader can

generate income by periodically selling OTM put options with shorter maturities. In

this regard, this strategy is similar to the calendar put spread. The main di↵erence

is that, in the diagonal put spread the deep ITM put option (unlike the close to

25

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

ATM put option in the calendar put spread) more closely mimics the underlying

stock, so the position is more protected against a sharp drop in the stock price.

## **2.22 Strategy: Long straddle**

This is a volatility strategy consisting of a long position in an ATM call option, and

a long position in an ATM put option with a strike price _K_ . This is a net debit

trade. The trader's outlook is neutral. This is a capital gain strategy. We have [22] :

_fT_ = ( _ST −_ _K_ ) [+] + ( _K −_ _ST_ ) [+] _−_ _D_ (81)

_S⇤up_ = _K_ + _D_ (82)

_S⇤down_ = _K −_ _D_ (83)

_Pmax_ = unlimited (84)

_Lmax_ = _D_ (85)

## **2.23 Strategy: Long strangle**

This is a volatility strategy consisting of a long position in an OTM call option with

a strike price _K_ 1, and a long position in an OTM put option with a strike price _K_ 2.

This is a net debit trade. However, because both call and put options are OTM,

this strategy is less costly to establish than a long straddle position. The flipside

is that the movement in the stock price required to reach one of the break-even

points is also more significant. The trader's outlook is neutral. This is a capital

gain strategy. We have:

_fT_ = ( _ST −_ _K_ 1) [+] + ( _K_ 2 _−_ _ST_ ) [+] _−_ _D_ (86)

_S⇤up_ = _K_ 1 + _D_ (87)

_S⇤down_ = _K_ 2 _−_ _D_ (88)

_Pmax_ = unlimited (89)

_Lmax_ = _D_ (90)

## **2.24 Strategy: Long guts**

This is a volatility strategy consisting of a long position in an ITM call option with

a strike price _K_ 1, and a long position in an ITM put option with a strike price _K_ 2.

This is a net debit trade. Since both call and put options are ITM, this strategy

22 For some literature on straddle/strangle strategies, see, e.g., [Copeland and Galai, 1983],

[Coval and Shumway, 2001], [Engle and Rosenberg, 2000], [Gao, Xing and Zhang, 2017], [Goltz

and Lai, 2009], [Guo, 2000], [Hansch, Naik and Viswanathan, 1998], [Noh, Engle and Kane, 1994],

[Rusn´akov´a and Solt´es, 2012], [Suresh, 2015]. Academic literature specifically on long/short guts [ˇ]

strategies (which can be thought of as variations on straddles) appears to be more scarce. For a

book reference, see, e.g., [Cohen, 2005]. For covered straddles, see, e.g., [Johnson, 1979].

26

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

is more costly to establish than a long straddle position. The trader's outlook is

neutral. This is a capital gain strategy. We have (assuming _D > K_ 2 _−_ _K_ 1): [23]

_fT_ = ( _ST −_ _K_ 1) [+] + ( _K_ 2 _−_ _ST_ ) [+] _−_ _D_ (91)

_S⇤up_ = _K_ 1 + _D_ (92)

_S⇤down_ = _K_ 2 _−_ _D_ (93)

_Pmax_ = unlimited (94)

_Lmax_ = _D −_ ( _K_ 2 _−_ _K_ 1) (95)

## **2.25 Strategy: Short straddle**

This a is sideways strategy consisting of a short position in an ATM call option, and

a short position in an ATM put option with a strike price _K_ . This is a net credit

trade. The trader's outlook is neutral. This is an income strategy. We have:

_fT_ = _−_ ( _ST −_ _K_ ) [+] _−_ ( _K −_ _ST_ ) [+] + _C_ (96)

_S⇤up_ = _K_ + _C_ (97)

_S⇤down_ = _K −_ _C_ (98)

_Pmax_ = _C_ (99)

_Lmax_ = unlimited (100)

## **2.26 Strategy: Short strangle**

This is a sideways strategy consisting of a short position in an OTM call option with

a strike price _K_ 1, and a short position in an OTM put option with a strike price _K_ 2.

This is a net credit trade. Since both call and put options are OTM, this strategy

is less risky than a short straddle position. The flipside is that the initial credit is

also lower. The trader's outlook is neutral. This is an income strategy. We have:

_fT_ = _−_ ( _ST −_ _K_ 1) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] + _C_ (101)

_S⇤up_ = _K_ 1 + _C_ (102)

_S⇤down_ = _K_ 2 _−_ _C_ (103)

_Pmax_ = _C_ (104)

_Lmax_ = unlimited (105)

## **2.27 Strategy: Short guts**

This is a sideways strategy consisting of a short position in an ITM call option with

a strike price _K_ 1, and a short position in an ITM put option with a strike price

_K_ 2. This is a net credit trade. Since both call and put options are ITM, the initial

23 Otherwise this strategy would generate risk-free profits.

27

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

credit is higher than in a short straddle position. The flipside is that the risk is also

higher. The trader's outlook is neutral. This is an income strategy. We have: [24]

_fT_ = _−_ ( _ST −_ _K_ 1) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] + _C_ (106)

_S⇤up_ = _K_ 1 + _C_ (107)

_S⇤down_ = _K_ 2 _−_ _C_ (108)

_Pmax_ = _C −_ ( _K_ 2 _−_ _K_ 1) (109)

_Lmax_ = unlimited (110)

## **2.28 Strategy: Long call synthetic straddle**

This volatility strategy (which is the same as a long straddle with the put replaced

by a synthetic put) amounts to shorting stock and buying _two_ ATM (or the nearest

ITM) call options with a strike price _K_ . The trader's outlook is neutral. This is a

capital gain strategy. [25] We have (assuming _S_ 0 _≥_ _K_ and _D > S_ 0 _−_ _K_ ):

_fT_ = _S_ 0 _−_ _ST_ + 2 _⇥_ ( _ST −_ _K_ ) [+] _−_ _D_ (111)

_S⇤up_ = 2 _⇥_ _K −_ _S_ 0 + _D_ (112)

_S⇤down_ = _S_ 0 _−_ _D_ (113)

_Pmax_ = unlimited (114)

_Lmax_ = _D −_ ( _S_ 0 _−_ _K_ ) (115)

## **2.29 Strategy: Long put synthetic straddle**

This volatility strategy (which is the same as a long straddle with the call replaced

by a synthetic call) amounts to buying stock and buying _two_ ATM (or the nearest

ITM) put options with a strike price _K_ . The trader's outlook is neutral. This is a

capital gain strategy. We have (assuming _S_ 0 __ _K_ and _D > K −_ _S_ 0):

_fT_ = _ST −_ _S_ 0 + 2 _⇥_ ( _K −_ _ST_ ) [+] _−_ _D_ (116)

_S⇤up_ = _S_ 0 + _D_ (117)

_S⇤down_ = 2 _⇥_ _K −_ _S_ 0 _−_ _D_ (118)

_Pmax_ = unlimited (119)

_Lmax_ = _D −_ ( _K −_ _S_ 0) (120)

## **2.30 Strategy: Short call synthetic straddle**

This sideways strategy (which is the same as a short straddle with the put replaced

by a synthetic put) amounts to buying stock and selling _two_ ATM (or the nearest

24 Similarly to long guts, here we assume that _C > K_ 2 _−_ _K_ 1.

25 Academic literature on synthetic straddles appears to be scarce. See, e.g., [Trifonov _et al_,

2011], [Trifonov _et al_, 2014].

28

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

OTM) call options with a strike price _K_ . The trader's outlook is neutral. This is a

capital gain strategy. We have (assuming _S_ 0 __ _K_ ):

_fT_ = _ST −_ _S_ 0 _−_ 2 _⇥_ ( _ST −_ _K_ ) [+] + _C_ (121)

_S⇤up_ = 2 _⇥_ _K −_ _S_ 0 + _C_ (122)

_S⇤down_ = _S_ 0 _−_ _C_ (123)

_Pmax_ = _K −_ _S_ 0 + _C_ (124)

_Lmax_ = unlimited (125)

## **2.31 Strategy: Short put synthetic straddle**

This sideways strategy (which is the same as a short straddle with the call replaced

by a synthetic call) amounts to shorting stock and selling _two_ ATM (or the nearest

OTM) put options with a strike price _K_ . The trader's outlook is neutral. This is a

capital gain strategy. We have (assuming _S_ 0 _≥_ _K_ ):

_fT_ = _S_ 0 _−_ _ST −_ 2 _⇥_ ( _K −_ _ST_ ) [+] + _C_ (126)

_S⇤up_ = _S_ 0 + _C_ (127)

_S⇤down_ = 2 _⇥_ _K −_ _S_ 0 _−_ _C_ (128)

_Pmax_ = _S_ 0 _−_ _K_ + _C_ (129)

_Lmax_ = unlimited (130)

## **2.32 Strategy: Covered short straddle**

This strategy amounts to augmenting a covered call by writing a put option with

the same strike price _K_ and TTM as the sold call option and thereby increasing the

income. The trader's outlook is bullish. We have:

_fT_ = _ST −_ _S_ 0 _−_ ( _ST −_ _K_ ) [+] _−_ ( _K −_ _ST_ ) [+] + _C_ (131)

_S⇤_ = [1] (132)

2 [(] _[S]_ [0][ +] _[ K][ −]_ _[C]_ [)]

_Pmax_ = _K −_ _S_ 0 + _C_ (133)

_Lmax_ = _S_ 0 + _K −_ _C_ (134)

## **2.33 Strategy: Covered short strangle**

This strategy amounts to augmenting a covered call by writing an OTM put option

with a strike price _K_ _[0]_ and the same TTM as the sold call option (whose strike price

is _K_ ) and thereby increasing the income. The trader's outlook is bullish. We have:

_fT_ = _ST −_ _S_ 0 _−_ ( _ST −_ _K_ ) [+] _−_ ( _K_ _[0]_ _−_ _ST_ ) [+] + _C_ (135)

_Pmax_ = _K −_ _S_ 0 + _C_ (136)

_Lmax_ = _S_ 0 + _K_ _[0]_ _−_ _C_ (137)

29

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **2.34 Strategy: Strap**

This is a volatility strategy consisting of a long position in _two_ ATM call options,

and a long position in an ATM put option with a strike price _K_ . This is a net debit

trade. The trader's outlook is bullish. This is a capital gain strategy. We have: [26]

_fT_ = 2 _⇥_ ( _ST −_ _K_ ) [+] + ( _K −_ _ST_ ) [+] _−_ _D_ (138)

_S⇤up_ = _K_ + _[D]_ 2 (139)

_S⇤down_ = _K −_ _D_ (140)

_Pmax_ = unlimited (141)

_Lmax_ = _D_ (142)

## **2.35 Strategy: Strip**

This is a volatility strategy consisting of a long position in an ATM call option, and

a long position in _two_ ATM put options with a strike price _K_ . This is a net debit

trade. The trader's outlook is bearish. This is a capital gain strategy. We have:

_fT_ = ( _ST −_ _K_ ) [+] + 2 _⇥_ ( _K −_ _ST_ ) [+] _−_ _D_ (143)

_S⇤up_ = _K_ + _D_ (144)

_S⇤down_ = _K −_ _[D]_ (145)

2

_Pmax_ = unlimited (146)

_Lmax_ = _D_ (147)

## **2.36 Strategy: Call ratio backspread**

This strategy consists of a short position in _NS_ close to ATM call options with a

strike price _K_ 1, and a long position in _NL_ OTM call options with a strike price _K_ 2,

where _NL > NS_ . Typically, _NL_ = 2 and _NS_ = 1, or _NL_ = 3 and _NS_ = 2. The

trader's outlook is strongly bullish. This is a capital gain strategy. We have: [27]

_fT_ = _NL ⇥_ ( _ST −_ _K_ 2) [+] _−_ _NS ⇥_ ( _ST −_ _K_ 1) [+] _−_ _H_ (148)

_S⇤down_ = _K_ 1 _−_ _H/NS,_ _H <_ 0 (149)

_S⇤up_ = ( _NL ⇥_ _K_ 2 _−_ _NS ⇥_ _K_ 1 + _H_ ) _/_ ( _NL −_ _NS_ ) (150)

_Pmax_ = unlimited (151)

_Lmax_ = _NS ⇥_ ( _K_ 2 _−_ _K_ 1) + _H_ (152)

26 For some literature on strip and strap strategies, see, e.g., [Jha and Kalimipal, 2010],

[Topaloglou, Vladimirou and Zenios, 2011].

27 For some literature on call/put ratio (back)spreads, see, e.g., [Augustin, Brenner and Subrahmanyam, 2015], [Chaput and Ederington, 2008], [Solt´es, 2010], [ [ˇ] Solt´es and Amaitiek, 2010b], [ [ˇ] Solt´es [ˇ]

and Rusn´akov´a, 2013].

30

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **2.37 Strategy: Put ratio backspread**

This strategy consists of a short position in _NS_ close to ATM put options with a

strike price _K_ 1, and a long position in _NL_ OTM put options with a strike price _K_ 2,

where _NL > NS_ . Typically, _NL_ = 2 and _NS_ = 1, or _NL_ = 3 and _NS_ = 2. The

trader's outlook is strongly bearish. This is a capital gain strategy. We have:

_fT_ = _NL ⇥_ ( _K_ 2 _−_ _ST_ ) [+] _−_ _NS ⇥_ ( _K_ 1 _−_ _ST_ ) [+] _−_ _H_ (153)

_S⇤up_ = _K_ 1 + _H/NS,_ _H <_ 0 (154)

_S⇤down_ = ( _NL ⇥_ _K_ 2 _−_ _NS ⇥_ _K_ 1 _−_ _H_ ) _/_ ( _NL −_ _NS_ ) (155)

_Pmax_ = _NL ⇥_ _K_ 2 _−_ _NS ⇥_ _K_ 1 _−_ _H_ (156)

_Lmax_ = _NS ⇥_ ( _K_ 1 _−_ _K_ 2) + _H_ (157)

## **2.38 Strategy: Ratio call spread**

This strategy consists of a short position in _NS_ close to ATM call options with a

strike price _K_ 1, and a long position in _NL_ ITM call options with a strike price _K_ 2,

where _NL < NS_ . Typically, _NL_ = 1 and _NS_ = 2, or _NL_ = 2 and _NS_ = 3. This is

an income strategy if it is structured as a net credit trade. The trader's outlook is

neutral to bearish. We have: [28]

_fT_ = _NL ⇥_ ( _ST −_ _K_ 2) [+] _−_ _NS ⇥_ ( _ST −_ _K_ 1) [+] _−_ _H_ (158)

_S⇤down_ = _K_ 2 + _H/NL,_ _H >_ 0 (159)

_S⇤up_ = ( _NS ⇥_ _K_ 1 _−_ _NL ⇥_ _K_ 2 _−_ _H_ ) _/_ ( _NS −_ _NL_ ) (160)

_Pmax_ = _NL ⇥_ ( _K_ 1 _−_ _K_ 2) _−_ _H_ (161)

_Lmax_ = unlimited (162)

## **2.39 Strategy: Ratio put spread**

This strategy consists of a short position in _NS_ close to ATM put options with a

strike price _K_ 1, and a long position in _NL_ ITM put options with a strike price _K_ 2,

where _NL < NS_ . Typically, _NL_ = 1 and _NS_ = 2, or _NL_ = 2 and _NS_ = 3. This is

an income strategy if it is structured as a net credit trade. The trader's outlook is

neutral to bullish. We have:

_fT_ = _NL ⇥_ ( _K_ 2 _−_ _ST_ ) [+] _−_ _NS ⇥_ ( _K_ 1 _−_ _ST_ ) [+] _−_ _H_ (163)

_S⇤up_ = _K_ 2 _−_ _H/NL,_ _H >_ 0 (164)

_S⇤down_ = ( _NS ⇥_ _K_ 1 _−_ _NL ⇥_ _K_ 2 + _H_ ) _/_ ( _NS −_ _NL_ ) (165)

_Pmax_ = _NL ⇥_ ( _K_ 2 _−_ _K_ 1) _−_ _H_ (166)

_Lmax_ = _NS ⇥_ _K_ 1 _−_ _NL ⇥_ _K_ 2 + _H_ (167)

28 So, the di↵erence between call/put ratio backspreads and ratio call/put spreads is that in the

former _NL > NS_, while in the latter _NL < NS_ .

31

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **2.40 Strategy: Long call butterfly**

This is a sideways strategy consisting of a long position in an OTM call option with

a strike price _K_ 1, a short position in _two_ ATM call options with a strike price _K_ 2,

and a long position in an ITM call option with a strike price _K_ 3. The strikes are

equidistant: _K_ 2 _−_ _K_ 3 = _K_ 1 _−_ _K_ 2 = __ . This is a relatively low cost net debit trade.

The trader's outlook is neutral. This is a capital gain strategy. We have: [29]

_fT_ = ( _ST −_ _K_ 1) [+] + ( _ST −_ _K_ 3) [+] _−_ 2 _⇥_ ( _ST −_ _K_ 2) [+] _−_ _D_ (168)

_S⇤down_ = _K_ 3 + _D_ (169)

_S⇤up_ = _K_ 1 _−_ _D_ (170)

_Pmax_ = __ _−_ _D_ (171)

_Lmax_ = _D_ (172)

**2.40.1** **Strategy: Modified call butterfly**

This is a variation of the long call butterfly strategy where the strikes are no longer

equidistant; instead we have _K_ 1 _−_ _K_ 2 _< K_ 2 _−_ _K_ 3. This results in a sideways strategy

with a bullish bias. We have:

_fT_ = ( _ST −_ _K_ 1) [+] + ( _ST −_ _K_ 3) [+] _−_ 2 _⇥_ ( _ST −_ _K_ 2) [+] _−_ _D_ (173)

_S⇤_ = _K_ 3 + _D_ (174)

_Pmax_ = _K_ 2 _−_ _K_ 3 _−_ _D_ (175)

_Lmax_ = _D_ (176)

## **2.41 Strategy: Long put butterfly**

This is a sideways strategy consisting of a long position in an OTM put option with

a strike price _K_ 1, a short position in _two_ ATM put options with a strike price _K_ 2,

and a long position in an ITM put option with a strike price _K_ 3. The strikes are

equidistant: _K_ 3 _−_ _K_ 2 = _K_ 2 _−_ _K_ 1 = __ . This is a relatively low cost net debit trade.

The trader's outlook is neutral. This is a capital gain strategy. We have:

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] + ( _K_ 3 _−_ _ST_ ) [+] _−_ 2 _⇥_ ( _K_ 2 _−_ _ST_ ) [+] _−_ _D_ (177)

_S⇤up_ = _K_ 3 _−_ _D_ (178)

_S⇤down_ = _K_ 1 + _D_ (179)

_Pmax_ = __ _−_ _D_ (180)

_Lmax_ = _D_ (181)

29 For some literature on butterfly spreads (including iron butterflies), see, e.g., [Balb´as, Longarela and Lucia, 1999], [Howison, Reisinger and Witte, 2013], [Jongadsayakul, 2017], [Matsypura

and Timkovsky, 2010], [Youbi, Pindza and Mar´e, 2017], [Wolf, 2014], [Wystup, 2017]. Academic

literature on condor strategies (which can be thought of as variations on butterflies) appears to be

more scarce. See, e.g., [Niblock, 2017].

32

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

**2.41.1** **Strategy: Modified put butterfly**

This is a variation of the long put butterfly strategy where the strikes are no longer

equidistant; instead we have _K_ 3 _−_ _K_ 2 _< K_ 2 _−_ _K_ 1. This results in a sideways strategy

with a bullish bias. We have (for _H >_ 0 there is also _S⇤up_ = _K_ 3 _−_ _H_ ): [30]

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] + ( _K_ 3 _−_ _ST_ ) [+] _−_ 2 _⇥_ ( _K_ 2 _−_ _ST_ ) [+] _−_ _H_ (182)

_S⇤down_ = 2 _⇥_ _K_ 2 _−_ _K_ 3 + _H_ (183)

_Pmax_ = _K_ 3 _−_ _K_ 2 _−_ _H_ (184)

_Lmax_ = 2 _⇥_ _K_ 2 _−_ _K_ 1 _−_ _K_ 3 + _H_ (185)

## **2.42 Strategy: Short call butterfly**

This is a volatility strategy consisting of a short position in an ITM call option with

a strike price _K_ 1, a long position in _two_ ATM call options with a strike price _K_ 2,

and a short position in an OTM call option with a strike price _K_ 3. The strikes are

equidistant: _K_ 3 _−_ _K_ 2 = _K_ 2 _−_ _K_ 1 = __ . This is a net credit trade. In this sense, this

is an income strategy. However, the potential reward is sizably smaller than with a

short straddle or a short strangle (albeit with a lower risk). The trader's outlook is

neutral. We have:

_fT_ = 2 _⇥_ ( _ST −_ _K_ 2) [+] _−_ ( _ST −_ _K_ 1) [+] _−_ ( _ST −_ _K_ 3) [+] + _C_ (186)

_S⇤up_ = _K_ 3 _−_ _C_ (187)

_S⇤down_ = _K_ 1 + _C_ (188)

_Pmax_ = _C_ (189)

_Lmax_ = __ _−_ _C_ (190)

## **2.43 Strategy: Short put butterfly**

This is a volatility strategy consisting of a short position in an ITM put option with

a strike price _K_ 1, a long position in _two_ ATM put options with a strike price _K_ 2,

and a short position in an OTM put option with a strike price _K_ 3. The strikes are

equidistant: _K_ 2 _−_ _K_ 3 = _K_ 1 _−_ _K_ 2 = __ . This is a net credit trade. In this sense, this

is an income strategy. However, the potential reward is sizably smaller than with a

short straddle or a short strangle (albeit with a lower risk). The trader's outlook is

neutral. We have:

_fT_ = 2 _⇥_ ( _K_ 2 _−_ _ST_ ) [+] _−_ ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _K_ 3 _−_ _ST_ ) [+] + _C_ (191)

_S⇤down_ = _K_ 3 + _C_ (192)

_S⇤up_ = _K_ 1 _−_ _C_ (193)

_Pmax_ = _C_ (194)

_Lmax_ = __ _−_ _C_ (195)

30 Ideally, this should be structured as a net credit trade, albeit this may not always be possible.

33

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **2.44 Strategy: "Long" iron butterfly**

This sideways strategy is a combination of a bull put spread and a bear call spread

and consists of a long position in an OTM put option with a strike price _K_ 1, a

short position in an ATM put option and an ATM call option with a strike price

_K_ 2, and a long position in an OTM call option with a strike price _K_ 3. The strikes

are equidistant: _K_ 2 _−_ _K_ 1 = _K_ 3 _−_ _K_ 2 = __ . This is a net credit trade. The trader's

- utlook is neutral. This is an income strategy. We have:

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] _−_ ( _ST −_ _K_ 2) [+] + ( _ST −_ _K_ 3) [+] + _C_ (196)

_S⇤up_ = _K_ 2 + _C_ (197)

_S⇤down_ = _K_ 2 _−_ _C_ (198)

_Pmax_ = _C_ (199)

_Lmax_ = __ _−_ _C_ (200)

## **2.45 Strategy: "Short" iron butterfly**

This volatility strategy is a combination of a bear put spread and a bull call spread

and consists of a short position in an OTM put option with a strike price _K_ 1, a

long position in an ATM put option and an ATM call option with a strike price

_K_ 2, and a short position in an OTM call option with a strike price _K_ 3. The strikes

are equidistant: _K_ 2 _−_ _K_ 1 = _K_ 3 _−_ _K_ 2 = __ . This is a net debit trade. The trader's

- utlook is neutral. This is a capital gain strategy. We have:

_fT_ = ( _K_ 2 _−_ _ST_ ) [+] + ( _ST −_ _K_ 2) [+] _−_ ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _ST −_ _K_ 3) [+] _−_ _D_ (201)

_S⇤up_ = _K_ 2 + _D_ (202)

_S⇤down_ = _K_ 2 _−_ _D_ (203)

_Pmax_ = __ _−_ _D_ (204)

_Lmax_ = _D_ (205)

## **2.46 Strategy: Long call condor**

This is a sideways strategy consisting of a long position in an ITM call option with a

strike price _K_ 1, a short position in an ITM call option with a higher strike price _K_ 2,

a short position in an OTM call option with a strike price _K_ 3, and a long position

in an OTM call option with a higher strike price _K_ 4. All strikes are equidistant:

_K_ 4 _−_ _K_ 3 = _K_ 3 _−_ _K_ 2 = _K_ 2 _−_ _K_ 1 = __ . This is a relatively low cost net debit trade.

The trader's outlook is neutral. This is a capital gain strategy. We have:

_fT_ = ( _ST −_ _K_ 1) [+] _−_ ( _ST −_ _K_ 2) [+] _−_ ( _ST −_ _K_ 3) [+] + ( _ST −_ _K_ 4) [+] _−_ _D_ (206)

_S⇤up_ = _K_ 4 _−_ _D_ (207)

_S⇤down_ = _K_ 1 + _D_ (208)

34

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

_Pmax_ = __ _−_ _D_ (209)

_Lmax_ = _D_ (210)

## **2.47 Strategy: Long put condor**

This is a sideways strategy consisting of a long position in an OTM put option with a

strike price _K_ 1, a short position in an OTM put option with a higher strike price _K_ 2,

a short position in an ITM put option with a strike price _K_ 3, and a long position

in an ITM put option with a higher strike price _K_ 4. All strikes are equidistant:

_K_ 4 _−_ _K_ 3 = _K_ 3 _−_ _K_ 2 = _K_ 2 _−_ _K_ 1 = __ . This is a relatively low cost net debit trade.

The trader's outlook is neutral. This is a capital gain strategy. We have:

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] _−_ ( _K_ 3 _−_ _ST_ ) [+] + ( _K_ 4 _−_ _ST_ ) [+] _−_ _D_ (211)

_S⇤up_ = _K_ 4 _−_ _D_ (212)

_S⇤down_ = _K_ 1 + _D_ (213)

_Pmax_ = __ _−_ _D_ (214)

_Lmax_ = _D_ (215)

## **2.48 Strategy: Short call condor**

This is a volatility strategy consisting of a short position in an ITM call option with

a strike price _K_ 1, a long position in an ITM call option with a higher strike price _K_ 2,

a long position in an OTM call option with a strike price _K_ 3, and a short position

in an OTM call option with a higher strike price _K_ 4. All strikes are equidistant:

_K_ 4 _−_ _K_ 3 = _K_ 3 _−_ _K_ 2 = _K_ 2 _−_ _K_ 1 = __ . This is a relatively low net credit trade.

As with a short call butterfly, the potential reward is sizably smaller than with a

short straddle or a short strangle (albeit with a lower risk). So, this is a capital gain

(rather than an income) strategy. The trader's outlook is neutral. We have:

_fT_ = ( _ST −_ _K_ 2) [+] + ( _ST −_ _K_ 3) [+] _−_ ( _ST −_ _K_ 1) [+] _−_ ( _ST −_ _K_ 4) [+] + _C_ (216)

_S⇤up_ = _K_ 4 _−_ _C_ (217)

_S⇤down_ = _K_ 1 + _C_ (218)

_Pmax_ = _C_ (219)

_Lmax_ = __ _−_ _C_ (220)

## **2.49 Strategy: Short put condor**

This is a volatility strategy consisting of a short position in an OTM put option with

a strike price _K_ 1, a long position in an OTM put option with a higher strike price _K_ 2,

a long position in an ITM put option with a strike price _K_ 3, and a short position

in an ITM put option with a higher strike price _K_ 4. All strikes are equidistant:

_K_ 4 _−_ _K_ 3 = _K_ 3 _−_ _K_ 2 = _K_ 2 _−_ _K_ 1 = __ . This is a relatively low net credit trade.

35

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

As with a short put butterfly, the potential reward is sizably smaller than with a

short straddle or a short strangle (albeit with a lower risk). So, this is a capital gain

(rather than an income) strategy. The trader's outlook is neutral. We have:

_fT_ = ( _K_ 2 _−_ _ST_ ) [+] + ( _K_ 3 _−_ _ST_ ) [+] _−_ ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _K_ 4 _−_ _ST_ ) [+] + _C_ (221)

_S⇤up_ = _K_ 4 _−_ _C_ (222)

_S⇤down_ = _K_ 1 + _C_ (223)

_Pmax_ = _C_ (224)

_Lmax_ = __ _−_ _C_ (225)

## **2.50 Strategy: Long iron condor**

This sideways strategy is a combination of a bull put spread and a bear call spread

and consists of a long position in an OTM put option with a strike price _K_ 1, a short

position in an OTM put option with a higher strike price _K_ 2, a short position in an

OTM call option with a strike price _K_ 3, and a long position in an OTM call option

with a higher strike price _K_ 4. The strikes are equidistant: _K_ 4 _−_ _K_ 3 = _K_ 3 _−_ _K_ 2 =

_K_ 2 _−_ _K_ 1 = __ . This is a net credit trade. The trader's outlook is neutral. This is an

income strategy. We have:

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] + ( _ST −_ _K_ 4) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] _−_ ( _ST −_ _K_ 3) [+] + _C_ (226)

_S⇤up_ = _K_ 3 + _C_ (227)

_S⇤down_ = _K_ 2 _−_ _C_ (228)

_Pmax_ = _C_ (229)

_Lmax_ = __ _−_ _C_ (230)

## **2.51 Strategy: Short iron condor**

This volatility strategy is a combination of a bear put spread and a bull call spread

and consists of a short position in an OTM put option with a strike price _K_ 1, a long

position in an OTM put option with a higher strike price _K_ 2, a long position in an

OTM call option with a strike price _K_ 3, and a short position in an OTM call option

with a higher strike price _K_ 4. The strikes are equidistant: _K_ 4 _−_ _K_ 3 = _K_ 3 _−_ _K_ 2 =

_K_ 2 _−_ _K_ 1 = __ . This is a net debit trade. The trader's outlook is neutral. This is a

capital gain strategy. We have:

_fT_ = ( _K_ 2 _−_ _ST_ ) [+] + ( _ST −_ _K_ 3) [+] _−_ ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _ST −_ _K_ 4) [+] _−_ _D_ (231)

_S⇤up_ = _K_ 3 + _D_ (232)

_S⇤down_ = _K_ 2 _−_ _D_ (233)

_Pmax_ = __ _−_ _D_ (234)

_Lmax_ = _D_ (235)

36

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **2.52 Strategy: Long box**

This volatility strategy can be viewed as a combination of a long synthetic forward

and a short synthetic forward, or as a combination of a bull call spread and a bear

put spread, and consists of a long position in an ITM put option with a strike price

_K_ 1, a short position in an OTM put option with a lower strike price _K_ 2, a long

position in an ITM call option with the strike price _K_ 2, and a short position in an

OTM call option with the strike price _K_ 1. The trader's outlook is neutral. This is

a capital gain strategy. [31] We have (assuming _K_ 1 _≥_ _K_ 2 + _D_ ):

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] + ( _ST −_ _K_ 2) [+] _−_ ( _ST −_ _K_ 1) [+] _−_ _D_

= _K_ 1 _−_ _K_ 2 _−_ _D_ (236)

_Pmax_ = ( _K_ 1 _−_ _K_ 2) _−_ _D_ (237)

## **2.53 Strategy: Collar**

This strategy (a.k.a. "fence") is a covered call augmented by a long put option as

insurance against the stock price falling. [32] It amounts to buying stock, buying an

OTM put option with a strike price _K_ 1, and selling an OTM call option with a

higher strike price _K_ 2. The trader's outlook is moderately bullish. This is a capital

gain strategy. We have: [33]

_fT_ = _ST −_ _S_ 0 + ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _ST −_ _K_ 2) [+] _−_ _H_ (238)

_S⇤_ = _S_ 0 + _H_ (239)

_Pmax_ = _K_ 2 _−_ _S_ 0 _−_ _H_ (240)

_Lmax_ = _S_ 0 _−_ _K_ 1 + _H_ (241)

## **2.54 Strategy: Bullish short seagull spread**

This option trading strategy is a bull call spread financed with a sale of an OTM

put option. It amounts to a short position in an OTM put option with a strike

price _K_ 1, a long position in an ATM call option with a strike price _K_ 2, and a short

position in an OTM call option with a strike price _K_ 3. Ideally, the trade should be

structured to have zero cost. The trader's outlook is bullish. This is a capital gain

31 In some cases it can be used as a tax strategy – see, e.g., [Cohen, 2005]. For some literature

- n box option strategies, see, e.g., [BenZion, Anan and Yagil, 2005], [Bharadwaj and Wiggins,
2001], [Billingsley and Chance, 1985], [Clarke, de Silva and Thorley, 2013], [Fung, Mok and Wong,
2004], [Hemler and Miller, 1997], [Jongadsayakul, 2016], [Ronn and Ronn, 1989], [Vipul, 2009].

32 Similarly, a short collar is a covered put augmented by a long call option.

33 For some literature on collar strategies, see, e.g., [Bartonov´a, 2012], [Burnside _et al_, 2011],

[D'Antonio, 2008], [Israelov and Klein, 2016], [Li and Yang, 2017], [Officer, 2004], [Officer, 2006],

[Shan, Garvin and Kumar, 2010], [Szado and Schneeweis, 2010], [Szado and Schneeweis, 2011],

[Timmermans, Schumacher and Ponds, 2017], [Yim _et al_, 2011].

37

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

strategy. We have: [34]

_fT_ = _−_ ( _K_ 1 _−_ _ST_ ) [+] + ( _ST −_ _K_ 2) [+] _−_ ( _ST −_ _K_ 3) [+] _−_ _H_ (242)

_S⇤_ = _K_ 2 + _H,_ _H >_ 0 (243)

_S⇤_ = _K_ 1 + _H,_ _H <_ 0 (244)

_K_ 1 __ _S⇤_ __ _K_ 2 _,_ _H_ = 0 (245)

_Pmax_ = _K_ 3 _−_ _K_ 2 _−_ _H_ (246)

_Lmax_ = _K_ 1 + _H_ (247)

## **2.55 Strategy: Bearish long seagull spread**

This option trading strategy is a short combo (short risk reversal) hedged against

the stock price rising by buying an OTM call option. It amounts to a long position

in an OTM put option with a strike price _K_ 1, a short position in an ATM call option

with a strike price _K_ 2, and a long position in an OTM call option with a strike price

_K_ 3. Ideally, the trade should be structured to have zero cost. The trader's outlook

is bearish. This is a capital gain strategy. We have:

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _ST −_ _K_ 2) [+] + ( _ST −_ _K_ 3) [+] _−_ _H_ (248)

_S⇤_ = _K_ 1 _−_ _H,_ _H >_ 0 (249)

_S⇤_ = _K_ 2 _−_ _H,_ _H <_ 0 (250)

_K_ 1 __ _S⇤_ __ _K_ 2 _,_ _H_ = 0 (251)

_Pmax_ = _K_ 1 _−_ _H_ (252)

_Lmax_ = _K_ 3 _−_ _K_ 2 + _H_ (253)

## **2.56 Strategy: Bearish short seagull spread**

This option trading strategy is a bear put spread financed with a sale of an OTM

call option. It amounts to a short position in an OTM put option with a strike

price _K_ 1, a long position in an ATM put option with a strike price _K_ 2, and a short

position in an OTM call option with a strike price _K_ 3. Ideally, the trade should be

structured to have zero cost. The trader's outlook is bearish. This is a capital gain

strategy. We have:

_fT_ = _−_ ( _K_ 1 _−_ _ST_ ) [+] + ( _K_ 2 _−_ _ST_ ) [+] _−_ ( _ST −_ _K_ 3) [+] _−_ _H_ (254)

_S⇤_ = _K_ 2 _−_ _H,_ _H >_ 0 (255)

_S⇤_ = _K_ 3 _−_ _H,_ _H <_ 0 (256)

_K_ 2 __ _S⇤_ __ _K_ 3 _,_ _H_ = 0 (257)

_Pmax_ = _K_ 2 _−_ _K_ 1 _−_ _H_ (258)

_Lmax_ = unlimited (259)

34 Academic literature on seagull spreads appears to be scarce. For a book reference, see,

e.g., [Wystup, 2017].

38

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **2.57 Strategy: Bullish long seagull spread**

This option trading strategy is a long combo (long risk reversal) hedged against the

stock price falling by buying an OTM put option. It amounts to a long position in

an OTM put option with a strike price _K_ 1, a short position in an ATM put option

with a strike price _K_ 2, and a long position in an OTM call option with a strike price

_K_ 3. Ideally, the trade should be structured to have zero cost. The trader's outlook

is bullish. This is a capital gain strategy. We have:

_fT_ = ( _K_ 1 _−_ _ST_ ) [+] _−_ ( _K_ 2 _−_ _ST_ ) [+] + ( _ST −_ _K_ 3) [+] _−_ _H_ (260)

_S⇤_ = _K_ 3 + _H,_ _H >_ 0 (261)

_S⇤_ = _K_ 2 + _H,_ _H <_ 0 (262)

_K_ 2 __ _S⇤_ __ _K_ 3 _,_ _H_ = 0 (263)

_Pmax_ = unlimited (264)

_Lmax_ = _K_ 2 _−_ _K_ 1 + _H_ (265)

39

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

# **3 Stocks**

## **3.1 Strategy: Price-momentum**

Empirically, there appears to be certain "inertia" in stock returns known as the

momentum e↵etc, whereby future returns are positively correlated with past returns

(see, e.g., [Asness, 1994], [Asness _et al_, 2014], [Asness, Moskowitz and Pedersen,

2013], [Grinblatt and Moskowitz, 2004], [Jegadeesh and Titman, 1993]). Let _t_ denote

time measured in the units of 1 month, with _t_ = 0 corresponding to the most recent

time. Let _Pi_ ( _t_ ) be the time series of prices (fully adjusted for splits and dividends)

for the stock labeled by _i_ ( _i_ = 1 _, …, N_, where _N_ is the number of stocks in the

trading universe). Let

_Pi_ ( _t_ )

_Ri_ ( _t_ ) = (266)

_Pi_ ( _t_ + 1) _[−]_ [1]

_Pi_ ( _S_ )

_Ri_ _[cum]_ = _Pi_ ( _S_ + _T_ ) _[−]_ [1] (267)

_i_ _[mean]_ = [1]

_R_ _[mean]_

_T_

_S_ + _T_ _−_ 1

X

_t_ = _S_

_i_

_i_ _[risk.adj]_ = _[R][mean]_

_R_ _[risk.adj]_

_i_

_σi_

_Ri_ ( _t_ ) (268)

(269)

( _Ri_ ( _t_ ) _−_ _Ri_ _[mean]_ ) [2] (270)

1

_σi_ [2] [=] _T −_ 1

_S_ + _T_ _−_ 1

X

_t_ = _S_

Here: _Ri_ ( _t_ ) is the monthly return; _Ri_ _[cum]_

Here: _Ri_ ( _t_ ) is the monthly return; _Ri_ _[cum]_ is the cumulative return computed over the

_T_ - month "formation period" (usually _T_ = 12) skipping the most recent _S_ - month

"skip period" (usually _S_ = 1); [35] _Ri_ _[mean]_ is the mean monthly return computed over

"skip period" (usually _S_ = 1); _Ri_ _[mean]_ is the mean monthly return computed over

the formation period; _Ri_ _[risk.adj]_ is the risk-adjusted mean return over the formation

the formation period; _Ri_ is the risk-adjusted mean return over the formation

period; and _σi_ is the monthly volatility calculated over the formation period.

The price-momentum strategy amounts to buying the best performing stocks

and selling the worst performing stocks, where the "performance" is measured by a

selection criterion based on _Ri_ _[cum]_, _Ri_ _[mean]_, _Ri_ _[risk.adj]_ - r some other criterion. E.g., after

the stocks are sorted by _Ri_ _[cum]_ (in the decreasing order), the trader can, e.g., buy

_i_ _[mean]_, _Ri_ _[risk.adj]_

_i_ _[cum]_, _Ri_ _[mean]_

the stocks are sorted by _Ri_ _[cum]_ (in the decreasing order), the trader can, e.g., buy

stocks in the top decile (winners) and short stocks in the bottom decile (losers). [36]

This can be a zero-cost strategy, i.e., the corresponding portfolio is dollar-neutral.

Alternatively, a long-only portfolio can be constructed by buying stocks in, e.g.,

the top decile. Once a portfolio is established at _t_ = 0, it is kept unaltered during

35 Usually, the most recent month is skipped due to an empirically observed mean-reversion

(a.k.a. contrarian) e↵etc in monthly returns possibly rooted in liquidity/microstructure issues –

see, e.g., [Asness, 1994], [Boudoukh, Richardson and Whitelaw, 1994], [Grinblatt and Moskowitz,

2004], [Jegadeesh, 1990], [Lo and MacKinlay, 1990].

36 There is some degree of arbitrariness in defining winners and losers.

40

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

a predefined "holding period", [37] which can be 1 month or longer (longer holding

period portfolios typically have diminishing returns before trading costs as the momentum e↵etc fades with time). Multi-month-holding portfolios can be constructed

by overlapping 1-month-holding portfolios (see, e.g., [Jegadeesh and Titman, 1993]).

The above prescription does not fix the relative weights _wi_  - f the stocks in the

portfolio. For a long-only portfolio we have _wi ≥_ 0 and

_N_

X

_i_ =1

_wi_ = 1 (271)

So, if the total investment level is _I_, then the stock labeled by _i_ has _I ⇥_ _wi_ dollars

invested in it. This, up to rounding, translates into _Qi_ = _I ⇥_ _wi/Pi_ (0) shares. [38] One

can simply take uniform weights, _wi_ = 1 _/N_ for all stocks, albeit other weighting

schemes are possible. E.g., we can have nonuniform _wi /_ 1 _/σi_, or _wi /_ 1 _/σi_ [2][, etc.]

For a dollar-neutral portfolio we can have negative _wi_ and

_N_

X

_i_ =1

_N_

X

_i_ =1

_|wi|_ = 1 (272)

_wi_ = 0 (273)

So, if the total investment level is _I_ = _IL_ + _IS_, where _IL_ is the total long investment,

and _IS_ is the absolute value of the total short investment, [39] then the stock labeled

by _i_ has _I ⇥_ _wi_ dollars invested in it, where _wi >_ 0 for long stocks, and _wi <_ 0

for short stocks. One can simply take modulus-uniform weights, where _wi_ = 1 _/_ 2 _NL_

for all _NL_ long stocks, and _wi_ = _−_ 1 _/_ 2 _NS_ for all _NS_ short stocks. However, other

weighting schemes are possible, e.g., as above, weights suppressed by _σi_, _σi_ [2][, etc.][40]

## **3.2 Strategy: Earnings-momentum**

This strategy amounts to buying winners and selling losers as in the price-momentum

strategy, but the selection criterion is based on earnings. One way to define such a

37 Albeit, e.g., a long-only portfolio may have to be liquidated before the end of this holding

period due to unforeseen events, such as market crashes.

38 That is, assuming the stock is bought at the price _Pi_ (0), which does not account for slippage.

39 For dollar-neutral portfolios _IL_ = _IS_ and _I_ = 2 _⇥_ _IL_ .

40 For some additional literature on momentum strategies, see, e.g., [Antonacci, 2017], [Asem

and Tian, 2010], [Barroso and Santa-Clara, 2014], [Bhojraj and Swaminathan, 2006], [Chordia and

Shivakumar, 2002], [Chuang and Ho, 2014], [Cooper, Gutierrez and Hameed, 2004], [Daniel and

Moskowitz, 2016], [G´eczy and Samonov, 2016], [Griffin, Ji and Martin, 2003], [Grundy and Martin,

2001], [Hwang and George, 2004], [Jegadeesh and Titman, 2001], [Karolyi and Kho, 2004], [Korajczyk and Sadka, 2004], [Liu and Zhang, 2008], [Moskowitz and Grinblatt, 1999], [Rouwenhorst,

1998], [Sadka, 2002], [Siganos and Chelley-Steeley, 2006], [Stivers and Sun, 2010].

41

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

selection criterion is via standardized unexpected earnings (SUE) [Chan, Jegadeesh

and Lakonishok, 1996]: [41]

_i_

SUE _i_ = _[E][i][ −]_ _[E][0]_

_σi_

(274)

Here: _Ei_ is the most recently announced quarterly earnings per share of the stock

labeled by _i_ ; _Ei_ _[0]_ [is the earnings per share announced 4 quarters ago;] _[ σ][i]_ [is the standard]

labeled by _i_ ; _Ei_ _[0]_ [is the earnings per share announced 4 quarters ago;] _[ σ][i]_ [is the standard]

deviation of the unexpected earnings _Ei−Ei_ _[0]_ [over the last 8 quarters. Similarly to the]

deviation of the unexpected earnings _Ei−Ei_ _[0]_ [over the last 8 quarters. Similarly to the]

price-momentum strategy, the trader can, e.g., construct a dollar-neutral portfolio

by buying stocks in the top decile by SUE, and shorting stocks in the bottom decile. [42]

## **3.3 Strategy: Value**

This strategy amounts to buying winners and selling losers as in the price-momentum

and earnings-momentum strategies, but the selection criterion is based on value.

Value can be defined as the Book-to-Price (B/P) ratio (see, e.g., [Rosenberg, Reid

and Lanstein, 1985]). Here "Book" is the company's book value _per share outstand-_

_ing_ (so the B/P ratio is the same as the Book-to-Market ratio, where now "Book"

stands for its total book value, _not_ per share outstanding, and "Market" is its market

capitalization). The trader can, e.g., construct a zero-cost portfolio by buying stocks

in the top decile by the B/P ratio, and shorting stocks in the bottom decile. There

can be variations in the definition of the B/P ratio. Thus, e.g., [Asness, Moskowitz

and Pedersen, 2013] uses current (i.e., most up-to-date) prices, while [Fama and

French, 1992] and some others use prices contemporaneous with the book value. [43]

## **3.4 Strategy: Low-volatility anomaly**

This strategy is based on the empirical observation that future returns of previously

low-return-volatility portfolios outperform those of previously high-return-volatility

portfolios, [44] which goes counter to the "na¨ıve" expectation that higher risk assets

41 Also see, e.g., [Bartov, Radhakrishnan and Krinsky, 2005], [Battalio and Mendenhall, 2007],

[Bernard and Thomas, 1989], [Bernard and Thomas, 1990], [Bhushan, 1994], [Chordia _et al_, 2009],

[Chordia and Shivakumar, 2006], [Czaja, Kaufmann and Scholz, 2013], [Doyle, Lundholm and

Soliman, 2006], [Foster, Olsen and Shevlin, 1984], [Hew _et al_, 1996], [Hirshleifer, Lim and Teoh,

2009], [Jansen and Nikiforov, 2016], [Livnat and Mendenhall, 2006], [Loh and Warachka, 2012],

[Mendenhall, 2004], [Ng, Rusticus and Verdi, 2008], [Rendleman, Jones and Latan´e, 1982], [Stickel,

1991], [Watts, 1978].

42 Typically, the holding period is 6 months, with diminishing returns for longer holding periods.

43 The holding period typically is 1-6 months. For some additional literature on value strategies,

see, e.g., [Erb and Harvey, 2006], [Fama and French, 1993], [Fama and French, 1996], [Fama and

French, 1998], [Fama and French, 2012], [Fisher, Shah and Titman, 2016], [Gerakos and Linnainmaa, 2012], [Novy-Marx, 2013], [Piotroski, 2000], [Piotroski and So, 2012], [Stattman, 1980], [Suhonen, Lennkh and Perez, 2017], [Zhang, 2005].

44 See, e.g., [Ang _et al_, 2006], [Ang _et al_, 2009], [Baker, Bradley and Wurgler, 2011], [Black,

1972], [Blitz and van Vliet, 2007], [Clarke, de Silva and Thorley, 2006], [Clarke, de Silva and

42

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

should yield proportionately higher returns. Thus, if _σi_ is defined as the historical volatility (computed over a time series of historical returns, as in Eq. (270)),

the trader can, e.g., construct a dollar-neutral portfolio by buying stocks in the

bottom decile by _σi_ (low-volatility stocks), and shorting stocks in the top decile

(high-volatility stocks). The length of the sample used for computing the historical

volatility can, e.g., be 6 months (126 trading days) to a year (252 trading days),

with a similar duration for the holding period (with no "skip period" required).

## **3.5 Strategy: Implied volatility**

This strategy is based on the empirical observation that stocks with larger increases

in call implied volatilities over the previous month on average have higher future returns, while stocks with larger increases in put implied volatilities over the previous

month on average have lower future returns (see, e.g., [An _et al_, 2014], [Chen, Chung

and Tsai, 2016]). [45] Therefore, the trader can, e.g., construct a dollar-neutral portfolio by buying stocks in the top decile by the increase in call implied volatilities, and

shorting stocks in the top decile by the increase in put implied volatilities. One can

also consider variations, e.g., buying stocks in the top decile by the _di↵erence_ twixt

the change in call implied volatilities and the change in put implied volatilities.

## **3.6 Strategy: Multifactor portfolio**

This strategy amounts to buying and shorting stocks based on multiple factors such

as value, momentum, etc. For instance, usually value and momentum are negatively

correlated and combining them can add value (see, e.g., [Asness, Moskowitz and

Pedersen, 2013]). There is a variety of ways in which _F >_ 1 factors can be combined. [46] The simplest way is to diversify the exposure to the _F_ factors with some

weights _wA_, where _A_ = 1 _, …, F_ labels the factors. That is, if _I_ is the total investment level, then the _F_ portfolios (each built as above based on the corresponding

factor) are allocated the investment levels _IA_ = _wA_ _⇥I_, where (assuming all _wA >_ 0)

_F_

X

_A_ =1

_wA_ = 1 (275)

Thus, one can simply take uniform weights _wA_ = 1 _/F_, albeit this may not be the

most optimal weighting scheme. E.g., similarly to Subsection 3.1, there are weighting

Thorley, 2010], [Frazzini and Pedersen, 2014], [Fu, 2009], [Garcia-Feij´oo _et al_, 2015], [Li, Sullivan

and Garcia-Feij´oo, 2014], [Li, Sullivan and Garcia-Feij´oo, 2016], [Merton, 1987].

45 Also see, e.g., [Bali and Hovakimian, 2009], [Bollen and Whaley, 2004], [Busch, Christensen

and Nielsen, 2011], [Chakravarty, Gulen and Mayhew, 2004], [Conrad, Dittmar and Ghysels, 2013],

[Cremers and Weinbaum, 2010], [Pan and Poteshman, 2006], [Xing, Zhang and Zhao, 2010].

46 And the holding period depends on which factors are combined.

43

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

schemes with _wA /_ 1 _/σA_, _wA /_ 1 _/σA_ [2] [, etc., where] _[ σ][A]_ [ is the historical volatility for]

the corresponding factor portfolio (uniformly normalized, e.g., per dollar invested). [47]

Alternatively, consider _F_ rankings of stocks based on the _F_ factors. One can

now combine these rankings in various ways to blend the factors. E.g., in the case

- f two factors, momentum and value, one can take the top (winners) and bottom
(losers) quintiles by momentum and further split them into top half and bottom
half, respectively, by value. Or one can take the top and bottom quintiles by value
and split them by momentum. [48] Yet another way is to define demeaned ranks

_sAi_ = rank( _fAi_ ) _−_ [1]

_N_

_N_

X

_j_ =1

rank( _fAj_ ) (276)

where _fAi_ is the numeric value of the factor labeled by _A_ (e.g., momentum) for the

stock labeled by _i_ ( _i_ = 1 _, …, N_ ). One can then simply average the ranks:

_si_ = [1]

_F_

_F_

X

_A_ =1

_sAi_ (277)

The combined "score" _si_ can have ties, which, if need be (e.g., if there is an ambiguity

at the border of the top decile) can be resolved, e.g., simply by giving preference to

- ne of the factor rankings. Averaging over _sAi_ simply minimizes the sum of squares
- f the Euclidean distances between the _N_ - vector _si_ and the _K N_ - vectors _sAi_ . One
can introduce nonuniform weights into this sum (which would amount to a weighted
average in Eq. (277)), or even use a di↵erent definition of the distance (e.g., the
Manhattan distance), which would complicate the problem computationally. Etc. [49]

## **3.7 Strategy: Residual momentum**

This is the same as the price-momentum strategy with the stock returns _Ri_ ( _t_ ) replaced by the residuals _✏i_ ( _t_ ) of a _serial_ regression of the stock returns _Ri_ ( _t_ ) over,

e.g., the 3 Fama-French factors MKT( _t_ ), SMB( _t_ ), HML( _t_ ), [50] with the intercept (see,

47 Another approach is to fix the weights _wA_ by optimizing a portfolio of the _F_ expected returns

corresponding to the _F_ factors (using an invertible _F ⇥_ _F_ covariance matrix for these returns).

48 These two ways generally do not produce the same resultant portfolios.

49 For additional literature on multifactor strategies, see, e.g., [Amenc _et al_, 2016], [Amenc _et_

_al_, 2015], [Arnott _et al_, 2013], [Asness, 1997], [Barber, Bennett and Gvozdeva, 2015], [Cochrane,

1999], [Fama, 1996], [Grinold and Kahn, 2000], [Hsu, Lin and Vincent, 2018], [Kahn and Lemmon,

2015], [Kahn and Lemmon, 2016], [Kozlov and Petajisto, 2013], [Malkiel, 2014], [Wang, 2005].

50 The stock returns _Ri_ are defined in excess of the risk-free rate (the one-month Treasury bill

rate); MKT is the excess return of the market portfolio; SMB is the excess return of the Small

minus Big (by market capitalization) portfolio; HML is the excess return of the High minus Low

(by book-to-market) portfolio. See, e.g., [Carhart, 1997], [Fama and French, 1993] for details.

44

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

e.g., [Blitz, Huij and Martens, 2011]): [51]

_Ri_ ( _t_ ) = _↵i_ + _β_ 1 _,i_ MKT( _t_ ) + _β_ 2 _,i_ SMB( _t_ ) + _β_ 3 _,i_ HML( _t_ ) + _✏i_ ( _t_ ) (278)

The regression is run over a 36-month period [Blitz, Huij and Martens, 2011] (with

the 1-month skip period) to estimate the regression coefficients _↵i_, _β_ 1 _,i_, _β_ 2 _,i_, _β_ 3 _,i_ .

Once the coefficients are estimated, the residuals can be computed for the 12-month

formation period (again, with the 1-month skip period):

_✏i_ ( _t_ ) = _Ri_ ( _t_ ) _−_ _β_ 1 _,i_ MKT( _t_ ) _−_ _β_ 2 _,i_ SMB( _t_ ) _−_ _β_ 3 _,i_ HML( _t_ ) (279)

Note that _↵i_ is not included in this computation of the residuals for the 12-month

formation period as _↵i_ was computed for the 36-month period. These residuals

_✏i_ ( _t_ ) are then used to compute, e.g., the risk-adjusted residual returns _R_ [e] _i_ _[risk.adj]_ (here

_S_ = 1 and _T_ = 12; the holding period typically is 1 month, but can be longer):

_✏i_ ( _t_ ) (280)

(281)

_[mean]_ _i_ = [1]

_✏_ _[mean]_

_T_

_S_ + _T_ _−_ 1

X

_t_ = _S_

_i_

_i_ _[risk.adj]_ = _[✏][mean]_ e

e

_R_ _[risk.adj]_

e

_σi_

_i_

e 1

_σi_ [2] [=] _T −_ 1

_S_ + _T_ _−_ 1

X

_t_ = _S_

( _✏i_ ( _t_ ) _−_ _✏_ _[mean]_ _i_ ) [2] (282)

E.g., a dollar-neutral portfolio can be constructed by buying stocks in the top decile

by _R_ [e] _i_ _[risk.adj]_, and shorting stocks in the bottom decile (with (non)uniform weights).

## **3.8 Strategy: Pairs trading**

This dollar-neutral strategy amounts to identifying a pair of historically highly correlated stocks (call them stock A and stock B) and, when a mispricing (i.e., a deviation

from the high historical correlation) occurs, shorting the "rich" stock and buying

the "cheap" stock. This is an example of a mean-reversion strategy. Let _PA_ ( _t_ 1) and

_PB_ ( _t_ 1) be the prices of stock A and stock B at time _t_ 1, and let _PA_ ( _t_ 2) and _PB_ ( _t_ 2)

be the prices of stock A and stock B at a _later_ time _t_ 2. All prices are fully adjusted

for any splits and dividends. The corresponding returns (from _t_ 1 to _t_ 2) are

_RA_ = _[P][A]_ [(] _[t]_ [2][)] (283)

_PA_ ( _t_ 1) _[−]_ [1]

_RB_ = _[P][B]_ [(] _[t]_ [2][)] (284)

_PB_ ( _t_ 1) _[−]_ [1]

51 For some additional literature related to the residual momentum strategy, see, e.g., [Blitz _et al_,

2013], [Chang _et al_, 2016], [Chaves, 2012], [Chuang, 2015], [Grundy and Martin, 2001], [Gutierrez

and Prinsky, 2007], [H¨uhn and Scholz, 2017], [Huij and Lansdorp, 2017], [Van Oord, 2016].

45

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

Since typically these returns are small, we can use an alternative definition:

_RA_ = ln

_RB_ = ln

_PA_ ( _t_ 2)

✓ _PA_ ( _t_ 1)

_PB_ ( _t_ 2)

✓ _PB_ ( _t_ 1)

(285)

(286)

Next, let _R_ [e] _A_ and _R_ [e] _B_ be the demeaned returns:

_R_ = [1] (287)

2 [(] _[R][A]_ [ +] _[ R][B]_ [)]

e

_RA_ = _RA −_ _R_ (288)

e

_RB_ = _RB −_ _R_ (289)

where _R_ is the mean return. A stock is "rich" if its demeaned return is positive,

and it is "cheap" if its demeaned return is negative. The numbers of shares _QA_, _QB_

to short/buy are fixed by the total desired dollar investment _I_ (Eq. (290)) and the

requirement of dollar-neutrality (Eq. (291)):

_PA |QA|_ + _PB |QB|_ = _I_ (290)

_PA QA_ + _PB QB_ = 0 (291)

where _PA_, _PB_ are the stock prices at the time _t⇤_ the position is established ( _t⇤_ _≥_ _t_ 2). [52]

## **3.9 Strategy: Mean-reversion – single cluster**

This is a generalization of the pairs trading strategy to _N >_ 2 stocks that are

historically highly correlated (e.g., stocks belonging to the same industry or sector).

Let _Ri_, _i_ = 1 _, …, N_, be the returns for these _N_ stocks:

_Ri_ = ln

_R_ = [1]

_N_

_Pi_ ( _t_ 2)

✓ _Pi_ ( _t_ 1)

_N_

X

_i_ =1

(292)

_Ri_ (293)

e

_Ri_ = _Ri −_ _R_ (294)

52 For some literature on pairs trading, see, e.g., [Bogomolov, 2013], [Bowen and Hutchinson,

2016], [Bowen, Hutchinson and O'Sullivan, 2010], [Caldeira and Moura, 2013], [Chen _et al_, 2017],

[Do and Fa↵, 2010], [Do and Fa↵, 2012], [Elliott, Van Der Hoek and Malcolm, 2005], [Engle and

Granger, 1987], [Gatev, Goetzmann and Rouwenhorst, 2006], [Huck, 2009], [Huck, 2015], [Huck

and Afawubo, 2014], [Jacobs and Weber, 2015], [Kakushadze, 2015b], [Kim, 2011], [Kishore, 2012],

[Krauss, 2017], [Krauss and St¨ubinger, 2017], [Liew and Wu, 2013], [Lin, McCrae and Gulati,

2006], [Liu, Chang and Geman, 2017], [Miao, 2014], [Perlin, 2009], [Pizzutilo, 2013], [Rad, Low

and Fa↵, 2016], [St¨ubinger and Bredthauer, 2017], [St¨ubinger and Endres, 2017], [Vaitonis and

Masteika, 2016], [Vidyamurthy, 2004], [Xie _et al_, 2014], [Yoshikawa, 2017], [Zeng and Lee, 2014].

46

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

Following the pairs trading intuition, we can short stocks with positive _R_ [e] _i_ and buy

stocks with negative _R_ [e] _i_ . We have the following conditions:

_N_

X

_i_ =1

_N_

X

_i_ =1

_Pi |Qi|_ = _I_ (295)

_Pi Qi_ = 0 (296)

Here: _I_ is the total desired dollar investment; Eq. (296) is the dollar-neutrality

constraint; _Qi <_ 0 for short-sales; _Qi >_ 0 for buys; _Pi_ are the prices at the time

the position is established. We have 2 equations and _N >_ 2 unknowns. A simple

prescription (which is one out of myriad possibilities) for specifying _Qi_ is to have

the dollar positions _Di_ = _Pi Qi_ proportional to the demeaned returns:

_Di_ = _−γ_ _R_ [e] _i_ (297)

where _γ >_ 0 (recall that we short _R_ [e] _i >_ 0 stocks and buy _R_ [e] _i <_ 0 stocks). Then Eq.

(296) is automatically satisfied, while Eq. (295) fixes _γ_ :

_I_

_γ_ =

~~P~~ _Ni_ =1

~~��~~ _Ri_

- e

~~��~~

(298)

**3.9.1** **Strategy: Mean-reversion – multiple clusters**

The mean-reversion strategy of Subsection 3.9 can be readily generalized to the case

where we have _K >_ 1 clusters such that stocks within each cluster are historically

highly correlated. [53] We can simply treat clusters independently from each other and

construct a mean-reversion strategy following the above procedure in each cluster.

Then, e.g., we can allocate investments to these _K_ independent strategies uniformly.

There is a neat way of treating all clusters in a "unified" fashion using a linear

regression. Let the _K_ clusters be labeled by _A_ = 1 _, …, K_ . Let ⇤ _iA_ be an _N ⇥_ _K_

matrix such that if the stock labeled by _i_ ( _i_ = 1 _, …, N_ ) belongs to the cluster

labeled by _A_, then ⇤ _iA_ = 1; otherwise, ⇤ _iA_ = 0. We will assume that each and

every stock belongs to one and only one cluster (so there are no empty clusters):

_NA_ =

_N_

X

_i_ =1

⇤ _iA >_ 0 (299)

_N_ =

_K_

X

_A_ =1

_NA_ (300)

53 E.g., these clusters can correspond to sectors, such as energy, technology, healthcare, etc.

47

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

We have

⇤ _iA_ = _δG_ ( _i_ ) _,A_ (301)

_G_ : _{_ 1 _, …, N_ _} 7! {_ 1 _, …, K}_ (302)

Here: _G_ is the map between stocks and clusters; and ⇤ _iA_ is the loadings matrix.

Now consider a linear regression of the stock returns _Ri_  - ver ⇤ _iA_ (without the

intercept and with unit weights):

_Ri_ =

_K_

X

_A_ =1

⇤ _iA fA_ + _"i_ (303)

where _fA_ are the regression coefficients given by (in matrix notation, where _R_ is the

_N_ - vector _Ri_, _f_ is the _K_ - vector _fA_, and ⇤is the _N ⇥_ _K_ matrix ⇤ _iA_ )

_f_ = _Q_ _[−]_ [1] ⇤ _[T]_ _R_ (304)

_Q_ = ⇤ _[T]_ ⇤ (305)

and _"i_ are the regression residuals. For binary ⇤ _iA_ given by Eq. (301), these residuals

are nothing but the returns _Ri_ demeaned w.r.t. to the corresponding cluster:

_"_ = _R −_ ⇤ _Q_ _[−]_ [1] ⇤ _[T]_ _R_ (306)

_QAB_ = _NA δAB_ (307)

1

_RA_ =

_NA_

X

_j2JA_

_Rj_ (308)

_"i_ = _Ri −_ _RG_ ( _i_ ) = _R_ [e] _i_ (309)

where _RA_ is the mean return for the cluster labeled by _A_, and _R_ [e] _i_ is the demeaned

return obtained by subtracting from _Ri_ the mean return for the cluster labeled by

_A_ = _G_ ( _i_ ) to which the stock labeled by _i_ belongs: _JA_ = _{i|G_ ( _i_ ) = _A} ⇢{_ 1 _, …, N_ _}_ .

The demeaned returns are cluster-neutral, i.e.,

_N_

X

_i_ =1

e

_Ri_ ⇤ _iA_ = 0 _,_ _A_ = 1 _, …, K_ (310)

Also, note that we automatically have (so _Di_ given by Eq. (297) satisfy Eq. (296))

_N_

X

_i_ =1

e

_Ri ⌫i_ = 0 (311)

where _⌫i ⌘_ 1, _i_ = 1 _, …, N_, i.e., the _N_ - vector _⌫_ is the unit vector. In the regression

language, _⌫_ is the intercept. We did not have to add the intercept to the loadings

matrix ⇤as it is already subsumed in it:

_K_

X ⇤ _iA_ = _⌫i_ (312)

_A_ =1

48

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **3.10 Mean-reversion – weighted regression**

The conditions (310) satisfied by the demeaned returns when the loadings matrix is

binary simply mean that these returns are cluster-neutral, i.e., orthogonal to the _K_

_N_ - vectors _v_ [(] _[A]_ [)] comprising the columns of ⇤ _iA_ . Such orthogonality can be defined

for any loadings matrix, not just a binary one. So, we can consider a generalization

where the loadings matrix, call it ⌦ _iA_, may have some binary columns, but generally

it need not. The binary columns, if any, can, e.g., be industry (or sector) based risk

factors; the non-binary columns are interpreted as some non-industry based risk

factors; and the orthogonality condition

_N_

X

_i_ =1

e

_Ri_ ⌦ _iA,_ _A_ = 1 _, …, K_ (313)

can be satisfied if the twiddled returns _R_ [e] _i_ are related to the residuals _"i_ - f the

regression of _Ri_ - ver ⌦ _iA_ with some (generally nonuniform) regression weights _zi_ via

e

_R_ = _Z "_ (314)

_"_ = _R −_ ⌦ _Q_ _[−]_ [1] ⌦ _[T]_ _Z R_ (315)

_Z_ = diag( _zi_ ) (316)

_Q_ = ⌦ _[T]_ _Z_ ⌦ (317)

If the intercept is included in ⌦ _iA_ (i.e., a linear combination of the columns of ⌦ _iA_

equals the unit _N_ - vector _⌫_ ), then we automatically have

_N_

X

_i_ =1

e

_Ri_ = 0 (318)

The weights _zi_ can, e.g., be taken as _zi_ = 1 _/σi_ [2][, where] _[ σ][i]_ [are historical volatilities.][54]

## **3.11 Strategy: Single moving average**

This strategy is based on the stock price crossing a moving average. One can use

di↵erent types of moving averages (MAs), such as a simple moving average (SMA),

54 For some literature on mean-reversion (a.k.a. contrarian) strategies, see, e.g., [Avellaneda

and Lee, 2010], [Black and Litterman, 1991], [Black and Litterman, 1992], [Cheung, 2010], [Chin,

Prevost and Gottesman, 2002], [Conrad and Kaul, 1998], [Daniel, 2001], [Da Silva, Lee and Pornrojnangkool, 2009], [Doan, Alexeev and Brooks, 2014], [Drobetz, 2001], [Hodges and Carverhill,

1993], [Idzorek, 2007], [Jansen and Nikiforov, 2016], [Jegadeesh and Titman, 1995], [Kakushadze,

2015b], [Kang, Liu and Ni, 2002], [Kudryavtsev, 2012], [Lakonishok, Shleifer and Vishny, 1994],

[Lehmann, 1990], [Li _et al_, 2012], [Liew and Roberts, 2013], [Lo and MacKinlay, 1990], [Mun, Vasconcellos and Kish, 2000], [O'Tool, 2013], [Pole, 2007], [Poterba and Summers, 1988], [Satchell and

Scowcroft, 2000], [Schiereck, Bondt and Weber, 1999], [Shi, Jiang and Zhou, 2015], [Yao, 2012].

49

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

- r an exponential moving average (EMA): [55]

_[λ]_ _[−]_ _[ P]_ [(] _[t]_ [)]

= [1] _[ −]_ _[λ]_

_T_ 1 _−_ _λ_ _[T]_

_t_ =1 _[λ][t][−]_ [1]

_T_ [1]

SMA( ) =

_T_

EMA( _T, λ_ ) =

_T_

X

_t_ =1

P _Tt_

_t_ =1 _[λ][t][−]_ [1] _[ P]_ [(] _[t]_ [)]

~~P~~ _Tt_ =1 _[λ][t][−]_ [1]

1 _−_ _λ_ _[T]_

_P_ ( _t_ ) (319)

_T_

X

_t_ =1

_λ_ _[t][−]_ [1] _P_ ( _t_ ) (320)

Here: _t_ = 1 corresponds to the most recent time in the time series of historical stock

prices _P_ ( _t_ ); _T_ is the length of the MA ( _t_ and _T_ are usually measured in trading

days); and _λ <_ 1 is the factor which suppresses past contributions. Below MA will

refer to SMA or EMA. A simple strategy is defined as follows ( _P_ is the price at

_t_ = 0, on the trading day immediately following the most recent trading day _t_ = 1

in the time series _P_ ( _t_ )):

Signal =

(

Establish long/liquidate short position if _P >_ MA( _T_ )

(321)

Establish short/liquidate long position if _P <_ MA( _T_ )

This strategy can be run as, e.g., long-only, short-only, or both long and short. It

can be straightforwardly applied to multiple stocks (on a single-stock basis, with no

cross-sectional interaction between the signals for individual stocks). With a large

number of stocks, it may be possible to construct (near-)dollar-neutral portfolios.

## **3.12 Strategy: Two moving averages**

The simplest variant of this strategy replaces the stock price _P_ in Eq. (321) by

another moving average. That is, we have 2 moving averages with lengths _T_ _[0]_ and

_T_, where _T_ _[0]_ _< T_ (e.g., _T_ _[0]_ = 10 and _T_ = 30), and the signal is given by:

Signal =

Establish long/liquidate short position if MA( _T_ _[0]_ ) _>_ MA( _T_ )

(322)

(Establish short/liquidate long position if MA( _T_ _[0]_ ) _<_ MA( _T_ )

This signal can be augmented with additional "stop-loss" rules to protect realized

profits. E.g., if a long position has been established, the trader can define a threshold

55 For _T ≫_ 1 we have _λT ⌧_ 1 and EMA( _T, λ_ ) _⇡_ (1 _−_ _λ_ ) _P_ (1) + _λ_ EMA( _T −_ 1 _, λ_ ), where

EMA( _T −_ 1 _, λ_ ) is based on _P_ (2) _, P_ (3) _, …, P_ ( _T_ ). Also, for some literature on moving average based

strategies, see, e.g., [BenZion _et al_, 2003], [Brock, Lakonishock and LeBaron, 1992], [Dzikeviˇcius and

ˇSaranda, 2010], [Edwards and Magee, 1992], [Faber, 2007], [F´elix and Rodr´ıguez, 2008], [Fifield,

Power and Knipe, 2008], [Fong and Yong, 2005], [Gen¸cay, 1996], [Gen¸cay, 1998], [Gen¸cay and

Stengos, 1998], [Glabadanidis, 2015], [Gunasekarage and Power, 2001], [Hung, 2016], [James, 1968],

[Jasemi and Kimiagari, 2012], [Kilgallen, 2012], [Li _et al_, 2015], [Lo, Mamaysky and Wang, 2000],

[Metghalchi, Marcucci and Chang, 2012], [P¨at¨ari and Vilska, 2014], [Taylor and Allen, 1992],

[Weller, Friesen and Dunham, 2009], [Zakamulin, 2014a], [Zakamulin, 2015].

50

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

to liquidate the long position if the stock begins to fall (even if the shorter moving

average has not crossed the longer moving average yet):

Establish long position if MA( _T_ _[0]_ ) _>_ MA( _T_ )

Liquidate long position if _P <_ (1 _−_ ∆) _⇥_ _P_ 1

Establish short position if MA( _T_ _[0]_ ) _<_ MA( _T_ )

Liquidate short position if _P >_ (1 + ∆) _⇥_ _P_ 1

Signal =

8

<

:

(323)

Here ∆is some predefined percentage, e.g., ∆= 2%. So, a long position is liquidated

if the current price _P_ falls over 2% below the previous day's price _P_ 1; and a short

position is liquidated if _P_ rises over 2% above _P_ 1. Other variations can be used.

## **3.13 Strategy: Three moving averages**

In some cases, using 3 moving averages with lengths _T_ 1 _< T_ 2 _< T_ 3 (e.g., _T_ 1 = 3,

_T_ 2 = 10, _T_ 3 = 21) can help filter false signals:

Signal =

8>Establish long position if MA( _T_ 1) _>_ MA( _T_ 2) _>_ MA( _T_ 3)

> Liquidate long position if MA( _T_ 1) __ MA( _T_ 2)
<>>Establish short position if MA( _T_ 1) _<_ MA( _T_ 2) _<_ MA( _T_ 3)

:Liquidate short position if MA( _T_ 1) _≥_ MA( _T_ 2)

(324)

## **3.14 Strategy: Support and resistance**

This strategy uses "support" _S_ and "resistance" _R_ levels, which can be computed

using the "pivot point" (a.k.a. the "center") _C_ as follows: [56]

_C_ = _[P][H]_ [ +] _[ P][L]_ [ +] _[ P][C]_ (325)

3

_R_ = 2 _⇥_ _C −_ _PL_ (326)

_S_ = 2 _⇥_ _C −_ _PH_ (327)

Here _PH_, _PL_ and _PC_ are the previous day's high, low and closing prices. One way

to define a trading signal is as follows (as above, _P_ is the current price):

Signal =

8

<

:

Establish long position if _P > C_

Liquidate long position if _P ≥_ _R_

Establish short position if _P < C_

Liquidate short position if _P _ _S_

(328)

56 Other definitions of the pivot point (e.g., using the current trading day's open price) and

higher/lower support/resistance levels exist. For some literature on support and resistance strategies, see, e.g., [Amiri _et al_, 2010], [Brock, Lakonishock and LeBaron, 1992], [Garzarelli _et al_, 2014],

[Hardy, 1978], [Kahneman and Tversky, 1979], [Murphy, 1986], [Osler, 2000], [Osler, 2003], [Person,

2007], [Pring, 1985], [Shiu and Lu, 2011], [Thomsett, 2003], [Zapranis and Tsinaslanidis, 2012].

51

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **3.15 Strategy: Channel**

This strategy amounts to buying and selling a stock when it reaches the floor and

the ceiling of a channel, respectively. A channel is a range/band, bounded by a

ceiling and a floor, within which the stock price fluctuates. The trader's expectation

may be that if the floor or the ceiling is reached, the stock price will bounce in the

- pposite direction. On the other hand, if the stock price breaks through the ceiling
- r the floor, the trader may conclude that a new trend has emerged and follow this
new trend instead. A simple and common definition of a channel is the Donchian
Channel [Donchian, 1960], where the ceiling _Bup_ and the floor _Bdown_ are defined as
follows (with the same notations as above): [57]

_Bup_ = max( _P_ (1) _, P_ (2) _, …, P_ ( _T_ )) (329)

_Bdown_ = min( _P_ (1) _, P_ (2) _, …, P_ ( _T_ )) (330)

A simple trading strategy then is as follows:

Signal =

(

Establish long/liquidate short position if _P_ = _Bdown_

Establish short/liquidate long position if _P_ = _Bup_

(331)

The wider the channel, the higher the volatility. Usually, the channel indicator is

used together with other indicators. E.g., the signal can be more robust when a

price reversal (or a channel break) occurs with an increase in the traded volume.

## **3.16 Strategy: Event-driven – M&A**

This strategy, referred to as "merger arbitrage" or "risk arbitrage", attempts to capture excess returns generated via corporate actions such as mergers and acquisitions

(M&A). A merger arbitrage opportunity arises when one publicly traded company

intends to acquire another publicly traded company at a price that di↵ers from the

latter's market price. In this regard, there are two main types of transactions: cash

mergers and stock mergers. In the case of a cash merger, the trader establishes a

long position in the target company stock. In the case of a stock merger, the trader

establishes a long position in the target company stock (call it A) and a short position in the acquirer company stock (call it B). For instance, if the current price of A

is \$67, the current price of B is \$35, and under the proposed stock merger deal each

share of A is swapped for 2 shares of B, then the trader buys one share of A and

shorts 2 shares of B generating an initial net credit of $3 = 2 _⇥_ $35 _−_ \$67, which is

the profit per each share of A bought if the deal goes through. The trader's risk is

in that, if the deal falls through, the trader will likely lose money on this trade. [58]

57 For some additional literature on channel trading strategies, see, e.g., [Batten and Ellis, 1996],

[Birari and Rode, 2014], [Dempster and Jones, 2002], [De Zwart _et al_, 2009], [Elder, 2014], [Sullivan,

Timmermann and White, 1999].

58 For some literature on merger arbitrage, see, e.g., [Andrade, Mitchell and Sta↵ord, 2001],

[Andrie¸s and Vˆırlan, 2017], [Baker, Pan and Wurgler, 2012], [Baker and Sava¸soglu, 2002], [Bester,

52

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **3.17 Strategy: Machine learning – single-stock KNN**

Some strategies rely on machine learning techniques, such as the k-nearest neighbor

(KNN) algorithm (see, e.g., [Altman, 1992], [Samworth, 2012]), to predict future

stock returns (the target variable) based on a set of predictor (feature) variables,

which can be based on technical, fundamental and/or some other data. The strategy

we describe here is a single-stock strategy, i.e., for each stock the target variable is

predicted using the price and volume data only for this stock (but no cross-sectional

data, i.e., no data for other stocks). The target variable _Y_ ( _t_ ) is defined as the

cumulative return over the next _T_ trading days (as above, the ascending integer

values of _t_, which is measured in trading days, correspond to going back in time):

_Y_ ( _t_ ) = _[P]_ [(] _[t][ −]_ _[T]_ [)] _−_ 1 (332)

_P_ ( _t_ )

The predictor variables _Xa_ ( _t_ ), _a_ = 1 _, …, m_, are defined using prices _P_ ( _t_ _[0]_ ) and

volumes _V_ ( _t_ _[0]_ ) at times _t_ _[0]_ before _t_ (i.e., _t_ _[0]_ _> t_ ), so they are out-of-sample. Examples

- f such variables are moving averages of the price and volume of varying lengths:

_X_ 1( _t_ ) = [1]

_T_ 1

_X_ 2( _t_ ) = [1]

_T_ 2

_X_ 3( _t_ ) = [1]

_T_ 3

_T_ 1

X

_s_ =1

_T_ 2

X

_s_ =1

_T_ 3

X

_s_ =1

_V_ ( _t_ + _s_ ) (333)

_P_ ( _t_ + _s_ ) (334)

_P_ ( _t_ + _s_ ) (335)

_…_

(336)

The predictor variables are further normalized to lie between 0 and 1:

e

_Xa_ ( _t_ ) = _[X][a]_ [(] _[t]_ [)] _[ −]_ _[X]_ _a_ _[−]_

_[−]_

(337)

_a_

_X_ [+] _[−]_ _[X]_ _[−]_

_a_ [+] _[−]_ _[X]_ _a_ _[−]_

_a_

where _X_ [+]

where _Xa_ [+] [and] _[ X]_ _a_ _[−]_ [are the maximum and minimum values of] _[ X][a]_ [(] _[t]_ [) over the training]

period. The final ingredient is the number _k_ - f the nearest neighbors (see below).

For a given value of _t_ we can take _k_ nearest neighbors of the _m_ - vector _X_ [e] _a_ ( _t_ ) among

the _m_ - vectors _X_ [e] _a_ ( _t_ _[0]_ ), _t_ _[0]_ = _t_ + 1 _, t_ + 2 _, …, t_ + _T⇤_, using the KNN algorithm (here

_a_ [+] [and] _[ X]_ _a_ _[−]_

Martinez and Rosu, 2017], [Brown and Raymond, 1986], [Cao _et al_, 2016], [Cornelli and Li, 2002],

[Dukes, Frolich and Ma, 1992], [Hall, Pinnuck and Thorne, 2013], [Harford, 2005], [Hsieh and

Walkling, 2005], [Huston, 2000], [Jetley and Ji, 2010], [Karolyi and Shannon, 1999], [Khan, 2002],

[Larker and Lys, 1987], [Lin, Lan and Chuang, 2013], [Maheswaran and Yeoh, 2005], [Mitchell and

Pulvino, 2001], [Officer, 2004], [Officer, 2006], [Samuelson and Rosenthal, 1986], [Subramanian,

2004], [Van Tassel, 2016], [Walkling, 1985].

53

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

_T_ e _⇤_ is the sample size). For KNN we can use the Euclidean distance _D_ ( _t, t_ _[0]_ ) between

_Xa_ ( _t_ ) and _X_ [e] _a_ ( _t_ _[0]_ ) defined as

[ _D_ ( _t, t_ _[0]_ )] [2] =

_m_

X( _X_ [e] _a_ ( _t_ ) _−_ _X_ [e] _a_ ( _t_ _[0]_ )) [2] (338)

_a_ =1

However, we can use some other distance (e.g., the Manhattan distance). Let the _k_

nearest neighbors of _X_ [e] _a_ ( _t_ ) be _X_ [e] _a_ ( _t_ _[0]_ _↵_ [(] _[t]_ [)),] _[ ↵]_ [= 1] _[, …, k]_ [. (Note that the] _[ k]_ [ values] _[ t][0]_ _↵_ [(] _[t]_ [)]

nearest neighbors of _Xa_ ( _t_ ) be _Xa_ ( _t_ _[0]_ _↵_ [(] _[t]_ [)),] _[ ↵]_ [= 1] _[, …, k]_ [. (Note that the] _[ k]_ [ values] _[ t][0]_ _↵_ [(] _[t]_ [)]

depend on _t_ .) Then we can _define_ the _predicted_ value _Y_ ( _t_ ) simply as an average of

the corresponding realized values _Y_ ( _t_ _[0]_ _↵_ [(] _[t]_ [)):]

_[0]_ _↵_ [(] _[t]_ [)),] _[ ↵]_ [= 1] _[, …, k]_ [. (Note that the] _[ k]_ [ values] _[ t][0]_

_[0]_ _↵_ [(] _[t]_ [)):]

_Y_ ( _t_ ) = [1]

_k_

_k_

X

_↵_ =1

_Y_ ( _t_ _[0]_ _↵_ [(] _[t]_ [))] (339)

Alternatively, we can, e.g., consider a linear model

_Y_ ( _t_ ) =

_k_

X

_↵_ =1

_Y_ ( _t_ _[0]_ _↵_ [(] _[t]_ [))] _[ w][↵]_ [+] _[ v]_ (340)

_Y_ ( _t_ _[0]_

and fix the coefficients _w↵_ and _v_ by running a regression [59] - f the realized values

_Y_ ( _t_ ) over _Y_ ( _t_ _[0]_ _↵_ [(] _[t]_ [)) for some number – call it] _[ M]_ [ – of values of] _[ t]_ [. I.e., we pull] _[ Y]_ [ (] _[t]_ [)]

_Y_ ( _t_ ) over _Y_ ( _t_ _[0]_ _↵_ [(] _[t]_ [)) for some number – call it] _[ M]_ [ – of values of] _[ t]_ [. I.e., we pull] _[ Y]_ [ (] _[t]_ [)]

for these values of _t_ into an _M_ - vector and regress it over the _M ⇥_ _k_ matrix of the

corresponding values _Y_ ( _t_ _[0]_ _↵_ [(] _[t]_ [)). The coefficients of this regression are] _[ w][↵]_ [and] _[ v]_ [.]

corresponding values _Y_ ( _t_ _[0]_ _↵_ [(] _[t]_ [)). The coefficients of this regression are] _[ w][↵]_ [and] _[ v]_ [.]

The advantage of using Eq. (339) is simplicity – there are no parameters to train

in this case. We still have to backtest the strategy (see below) out-of-sample. The

disadvantage is that equally weighting contributions of all _k_ nearest neighbors could

be suboptimal. In this regard, there are various (e.g., distance-based) weighting

schemes one may consider. Nontrivial weighting is precisely what Eq. (340) intends

to capture. However, this requires training and cross-validation (using metrics such

as root mean square error), and the fitted parameters _w↵_ and _v_ can be (and often

are) out-of-sample unstable. The data can be split, e.g., 60% for training and 40%

for cross-validation. Ultimately, the strategy must backtest well out-of-sample.

The signal at _t_ = 0 can be defined using the predicted value _Y_ = _Y_ (0), which is

the expected return for the next _T_ days. For single-stock trading [60] - ne can simply

define thresholds for establishing long and short trades, and liquidating existing

59 We can run this regression without the intercept, in which case we only have the coefficients

_w↵_, or with the intercept, in which case we also have the coefficient _v_ .

60 Alternatively, one can use expected returns _Yi_ computed for _N_ stocks (where _N ≫_ 1) using

a machine learning algorithm as above and then use these expected returns in multi-stock crosssectional strategies such as mean-reversion/statistical arbitrage.

54

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

positions, e.g., as follows: [61]

Signal =

8

<

:

Establish long position if _Y > z_ 1

Liquidate long position if _Y _ _z_ 2

Establish short position if _Y < −z_ 1

Liquidate short position if _Y ≥−z_ 2

(341)

Here, _z_ 1 and _z_ 2 are trader-defined thresholds. This signal must be backtested out

- f-sample. The number _k_ - f nearest neighbors can be optimized using a backtest
(by trying a set of values of _k_ ). Alternatively, one can use a common heuristic, e.g.,
_k_ = floor( _[p]_ _T⇤_ ) or _k_ = ceiling( _[p]_ _T⇤_ ). Also see, e.g., [Hall, Park and Samworth, 2008].

## **3.18 Strategy: Statistical arbitrage – optimization**

Let _Cij_ be the sample or model covariance matrix for the _N_ stock returns in a

portfolio. [62] Let _Di_ be the dollar holdings in our portfolio. The _expected_ portfolio

P&L _P_, volatility _V_ and Sharpe ratio _S_ are given by

_P_ =

_N_

X

_i_ =1

_Ei Di_ (342)

_V_ [2] =

_N_

X

_i,j_ =1

_Cij Di Dj_ (343)

_S_ = _P/V_ (344)

Here _Ei_ are the expected stock returns. Instead of the dollar holdings _Di_, it is more

convenient to work with dimensionless holding weights (which are positive/negative

for long/short positions)

_wi_ = _Di/I_ (345)

61 For some literature on using machine learning for predicting stock returns, see, e.g., [Adam

and Lin, 2001], [Ang and Quek, 2006], [Chen, 2014], [Chen, Leung and Daouk, 2003], [Creamer

and Freund, 2007], [Creamer and Freund, 2010], [Gestel _et al_, 2001], [Grudnitski and Osborn,

1993], [Huang, Nakamori and Wang, 2005], [Huang and Tsai, 2009], [Huerta, Elkan and Corbacho,

2013], [Kablan, 2009], [Kakushadze and Yu, 2016b], [Kakushadze and Yu, 2017c], [Kakushadze

and Yu, 2018a], [Kara, Boyacioglu and Baykan, 2011], [Kim, 2003], [Kim, 2006], [Kim and Han,

2000], [Kordos and Cwiok, 2011], [Kryzanowski, Galler and Wright, 1993], [Kumar and Thenmozhi,

2001], [Liew and Mayster, 2018], [Lu, Lee and Chiu, 2009], [Milosevic, 2016], [Novak and Veluˇs¸cek,

2016], [Ou and Wang, 2009], [Refenes, Zapranis and Francis, 1994], [Rodr´ıguez-Gonz´alez _et al_,

2011], [Saad, Prokhorov and Wunsch, 1998], [Schumaker and Chen, 2010], [Subha and Nambi,

2012], [Tay and Cao, 2001], [Teixeira and de Oliveira, 2010], [Tsai and Hsiao, 2010], [Vanstone and

Finnie, 2009], [Yao and Tan, 2000], [Yao, Tan and Poh, 1999], [Yu, Wang and Lai, 2005].

62 The sample covariance matrix based on a time series of historical returns is singular if _T _

_N_ + 1, where _T_ is the number of observations in the time series. Even if it is nonsingular, unless

_T ≫_ _N_, which is rarely (if ever) the case, the o↵-diagonal elements of the sample covariance matrix

typically are unstable out-of-sample. Therefore, in practice, typically a model covariance matrix

(which is positive-definite and should be sufficiently stable out-of-sample) is used (see below).

55

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

where _I_ is the total investment level. The holding weights satisfy the condition

_N_

X

_i_ =1

_|wi|_ = 1 (346)

We have _P_ = _I ⇥_ _P_ [e], _V_ = _I ⇥_ _V_ [e] and _S_ = _P/_ [e] _V_ [e], where

e

_P_ =

_N_

X

_i_ =1

_Ei wi_ (347)

e

_V_ [2] =

_N_

X _Cij wi wj_ (348)

_i,j_ =1

To determine the portfolio weights _wi_, often one requires that the Sharpe ratio

[Sharpe, 1966], [Sharpe, 1994] be maximized:

_S !_ max (349)

Assuming no additional conditions on _wi_ (e.g., upper or lower bounds), the solution

to Eq. (349) in the absence of trading costs is given by

_wi_ = _γ_

_N_

X

_j_ =1

_Cij_ _[−]_ [1] _[E][j]_ (350)

_C_ _[−]_ [1]

where _C_ _[−]_ [1] is the inverse of _C_, and the normalization coefficient _γ_ is determined

from Eq. (346) (and _γ >_ 0 so _P >_ [e] 0). The weights given by Eq. (350) generically

do not correspond to a dollar-neutral portfolio. To have a dollar-neutral portfolio,

we need to maximize the Sharpe ratio subject to the dollar-neutrality constraint.

**3.18.1** **Dollar-neutrality**

We can achieve dollar-neutrality as follows. In the absence of bounds, trading costs,

etc., the Sharpe ratio is invariant under simultaneous rescalings of all holding weights

_wi ! ⇣wi_, where _⇣>_ 0. Due to this scale invariance, the Sharpe ratio maximization

problem can be recast in terms of minimizing a quadratic objective function:

_N_

X

_i_ =1

_g_ ( _w, λ_ ) = _[λ]_

2

_N_

X _Cij wi wj −_

_i,j_ =1

_Ei wi_ (351)

_g_ ( _w, λ_ ) _!_ min (352)

where _λ >_ 0 is a parameter, and minimization is w.r.t. _wi_ . The solution is given by

_wi_ = [1]

_λ_

_N_

X

_j_ =1

_Cij_ _[−]_ [1] _[E][j]_ (353)

_C_ _[−]_ [1]

56

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

and _λ_ is fixed via Eq. (346). The objective function approach – which is the meanvariance optimization [Markowitz, 1952] – is convenient if we wish to impose _linear_

_homogeneous_ constraints (which do not spoil the aforesaid scale invariance) on _wi_,

e.g., the dollar-neutrality constraint. We introduce a Lagrange multiplier _µ_ : [63]

_N_

X _Ei wi −_ _µ_

_i_ =1

_N_

X

_i_ =1

_g_ ( _w, µ, λ_ ) = _[λ]_

2

_N_

X _Cij wi wj −_

_i,j_ =1

_wi_ (354)

_g_ ( _w, µ, λ_ ) _!_ min (355)

Minimization w.r.t. _wi_ and _µ_ now gives the following equations:

_λ_

_N_

X

_j_ =1

_Cij wj_ = _Ei_ + _µ_ (356)

_N_

X _wi_ = 0 (357)

_i_ =1

So we have dollar-neutrality. The solution to Eqs. (356) and (357) is given by:

#

_wi_ = [1]

_λ_

_N_

X

" _j_ =1

_kl_

_Cij_ _[−]_ [1] _[E][j][ −]_

_N_

X

_j_ =1

_C_ _[−]_ [1]

_ij_

P _Nk_

_k,l_ =1 _[C]_ _kl_ _[−]_ _[E][l]_

~~P~~ _N_ =1 _[C]_ _kl_ _[−]_ [1]

_N_

_k,l_ =1 _[C]_ _kl_ _[−]_ [1]

_N_

_k,l_ =1 _[C]_ _kl_ _[−]_ [1]

(358)

By construction, _wi_ satisfy the dollar-neutrality constraint (357), and _λ_ is fixed via

Eq. (346). The expected returns _Ei_ can be based on mean-reversion, momentum,

machine learning or other signals. Eq. (358) constructs a dollar-neutral portfolio

with "risk management" built in. E.g., the weights _wi_ (roughly) are suppressed by

stock volatilities _σi_ (where _σi_ [2] [=] _[ C][ii]_ [) assuming that on average] _[ |][E][i][|]_ [ are of order] _[ σ][i]_ [.][64]

The above implementation of the dollar-neutrality constraint via minimizing

the quadratic objective function (354) is equivalent to imposing this constraint

in Sharpe ratio maximization as no trading costs, position/trading bounds, nonlinear/inhomogeneous constraints, etc., are present. More generally Sharpe ratio

maximization is not equivalent to minimizing a quadratic objective function (see,

e.g., [Kakushadze, 2015b]), albeit in practice usually the latter approach is used.

63 By introducing multiple Lagrange multipliers, we can have multiple linear homogeneous

constraints (see, e.g., [Kakushadze, 2015b]).

64 Typically, _Cij_ is a multifactor risk model covariance matrix. For a general discussion, see,

e.g., [Grinold and Kahn, 2000]. For explicit implementations (including source code), see, e.g.,

[Kakushadze, 2015e], [Kakushadze and Yu, 2016a], [Kakushadze and Yu, 2017a]. For multifactor

models, the weights are _approximately_ neutral w.r.t. the columns of the factor loadings matrix.

The exact neutrality is attained in the zero specific risk limit, where optimization reduces to a

weighted regression (see, e.g., [Kakushadze, 2015b]).

57

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **3.19 Strategy: Market-making**

Over-simplistically, this strategy amounts to capturing the bid-ask spread for a given

stock and can be (again, over-simplistically) summarized as follows:

Rule =

(

Buy at the bid

(359)

Sell at the ask

In a market where most order flow is "dumb" (or uninformed), this strategy on

average would work very well. However, in a market where most order flow is

"smart" (or informed, i.e., "toxic"), this strategy, as stated, would lose money. This

is because of _adverse selection_, where, precisely because most order flow is smart,

most fills at the bid (ask) would be when the market is trading through it downward

(upward), so these trades would lose money. Furthermore, most limit orders to buy

(sell) at the bid (ask) would never be filled as the price would run away from them,

i.e., increase (decrease). So, ideally, this strategy should be structured such that it

captures dumb order flow and avoids smart order flow, which is not that simple.

One approach is, at any given time, within a short time horizon, to stay on

the "right" side of the market, i.e., to have a short-horizon signal indicating the

direction of the market and place limit orders accordingly (to buy at the bid if the

signal indicates a price increase, and to sell at the ask if the signal indicates a price

decrease). If the signal were (magically) 100% correct, this would capture the dumb

- rder flow assuming that the orders get filled. This is a big assumption as for this
to be guaranteed, the trader would have to be 1 in the queue among many other
market participants placing limit orders at the same price point. This is where high
frequency trading comes in – it is essentially all about speed with which orders are
placed, canceled, and cancel-replaced. Infrastructure and technology are key in this.

Another possibility is to modulate the short-horizon signal with a longer-horizon

signal (which can still be an intraday signal). The longer-horizon signal typically

will have a higher cents-per-share [65] than the shorter-horizon signal. Now certain

trades can be profitable even with adverse selection, because they are established

based on the longer-horizon signal. I.e., they "lose money" in the short term due to

adverse selection (as the market trades through the corresponding limit orders), but

they make money in a longer term. The market-making aspect of this is valuable

as placing a passive limit order as opposed to an aggressive market or limit order

saves money. On the other hand, in some cases, if the longer-horizon signal is strong

enough and the shorter-horizon signal is in the same direction, a passive limit order

would likely not get filled and it may make more sense to place an aggressive order.

Such aggressive order flow is not dumb but smart, as it is based on nontrivial shortand long-horizon signals with a positive expected return. [66] And speed still matters.

65 "Cents-per-share" is defined as the realized P&L in cents (as opposed to dollars) divided by

the total shares traded (which includes both establishing and liquidating trades). Note that the

longer-horizon signal generally has a lower Sharpe ratio than the shorter-horizon signal.

66 Dumb order flow can come from, e.g., uninformed retail traders. It can also come from ultra

58

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **3.20 Strategy: Alpha combos**

With technological advances – hardware becoming cheaper and more powerful – it

is now possible to data mine hundreds of thousands and even millions of alphas

using machine learning methods. Here the term "alpha" – following common trader

lingo – generally means any reasonable "expected return" that one may wish to

trade on and is not necessarily the same as the "academic" alpha. [67] In practice,

- ften the detailed information about how alphas are constructed may not even be
available, e.g., the only data available could be the position data, so "alpha" then is
a set of instructions to achieve certain stock (or some other instrument) holdings by
some times _t_ 1 _, t_ 2 _, …_ Also, "machine learning" here refers to sophisticated methods
that go beyond single-stock methods such as those discussed in Subsection 3.17
and involve cross-sectional analyses based on price-volume as well as other types

- f data (e.g., market cap, some other fundamental data such as earnings, industry
classification data, sentiment data, etc.) for a large number of stocks (typically, a
few thousand and up). 101 explicit examples of such quantitative trading alphas
are given in [Kakushadze, 2016]. [68] The flipside is that these ubiquitous alphas are
faint, ephemeral and cannot be traded on their own as any profit on paper would be
eaten away by trading costs. To mitigate this, one combines a large number of such
alphas and trades the so-combined "mega-alpha". Hence "alpha combo" strategies.

This is not critical, but for definiteness let us assume that all alphas trade the

same underlying instruments, even more concretely, the same universe of (say, 2,500)

most liquid U.S. stocks. Each alpha produces desired holdings for this trading

universe. What we need is the weights with which to combine individual alphas,

whose number _N_ can be large (in hundreds of thousands or even millions). [69] Here

long-horizon institutional traders (mutual funds, pension funds, etc.), whose outlook can be months

- r years and who are not concerned about a few pennies' worth of di↵erence in the execution price on
short horizons (i.e., this is only "short-term dumb" order flow). For a more detailed discussion, see,
e.g., [Kakushadze, 2015d], [Lo, 2008]. For some literature on high frequency trading and marketmaking, see, e.g., [Aldridge, 2013], [Anand and Venkataraman, 2016], [Avellaneda and Stoikov,
2008], [Baron _et al_, 2014], [Benos _et al_, 2017], [Benos and Sagade, 2016], [Biais and Foucault,
2014], [Biais, Foucault and Moinas, 2014], [Bowen, Hutchinson and O'Sullivan, 2010], [Bozdog _et al_,
2011], [Brogaard and Garriott, 2018], [Brogaard _et al_, 2015], [Brogaard, Hendershott and Riordan,
2014], [Budish, Cramton and Shim, 2015], [Carrion, 2013], [Carrion and Kolay, 2017], [Easley,
L´opez de Prado and O'Hara, 2011], [Easley, L´opez de Prado and O'Hara, 2012], [Egginton, Van
Ness and Van Ness, 2016], [Hagstr¨omer and Nord´en, 2013], [Hagstr¨omer, Nord´en and Zhang,
2014], [Harris and Namvar, 2016], [Hasbrouck and Saar, 2013], [Hendershott, Jones and Menkveld,
2011], [Hendershott, Jones and Menkveld, 2013], [Hendershott and Riordan, 2013], [Hirschey, 2018],

[Holden and Jacobsen, 2014], [Jarrow and Protter, 2012], [Khandani and Lo, 2011], [Kirilenko _et_

_al_, 2017], [Korajczyk and Murphy, 2017], [Kozhan and Tham, 2012], [Li _et al_, 2014], [Madhavan,

2012], [Menkveld, 2013], [Menkveld, 2016], [Muthuswamy _et al_, 2011], [O'Hara, 2015], [Pagnotta

and Philippon, 2012], [Riordan and Storkenmaier, 2012], [Van Kervel and Menkveld, 2017].

67 By "academic" alpha we mean Jensen's alpha [Jensen, 1968] or a similar performance index.

68 This is a secretive field, so literature on this subject is very scarce. Also see, e.g., [Kakushadze

and Tulchinsky, 2016], [Tulchinsky _et al_, 2015].

69 Note that _N_ here refers to the number of alphas, not the number of underlying stocks.

59

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

is a procedure for fixing the alpha weights _wi_, _i_ = 1 _, …, N_ [Kakushadze and Yu,

2017b] (also see [Kakushadze and Yu, 2018a]):

_•_ 1) Start with a time series of realized _alpha_ returns [70] _Ris_, _i_ = 1 _, …, N_, _s_ =

1 _, …, M_ + 1.

1

_•_ 2) Calculate the serially demeaned returns _Xis_ = _Ris −_ _M_ +1

P _Ms_ =1+1

_•_ 2) Calculate the serially demeaned returns _Xis_ = _Ris −_ _M_ +1 P _s_ =1 _[R][is]_ [.]

1 _M_ +1

_•_ 3) Calculate sample variances of alpha returns [71] _σi_ [2] [=] P _s_ =1 _[X]_ _is_ [2] [.]

_i_ [2] [=] _M_ 1

P _Ms_ =1+1

_s_ =1 _[X]_ _is_ [2]

_i_ _M_ _s_ =1 _is_ [.]

_•_ 4) Calculate the normalized demeaned returns _Yis_ = _Xis/σi_ .

_•_ 5) Keep only the first _M_ columns in _Yis_ : _s_ = 1 _, …, M_ .

_N_

_•_ 6) Cross-sectionally demean _Yis_ : ⇤ _is_ = _Yis −_ [1] P =1 _[Y][js]_ [.]

_•_ 6) Cross-sectionally demean _Yis_ : ⇤ _is_ = _Yis −_ _N_ P _j_ =1 _[Y][js]_ [.]

_•_ 7) Keep only the first _M −_ 1 columns in ⇤ _is_ : _s_ = 1 _, …, M −_ 1.

_•_ 8) Take the expected alpha returns _Ei_ and normalize them: _E_ [e] _i_ = _Ei/σi_ . One

(but by far not the only) way of computing expected alpha returns is via _d_ - day

moving averages (note that _d_ need not be the same as _T_ ):

_N_

P _N_

_Ei_ = [1]

_d_

_d_

X

_s_ =1

_Ris_ (360)

_•_ 9) Calculate the residuals e _"i_  - f the regression (without the intercept and with

unit weights) of _E_ [e] _i_ - ver ⇤ _is_ .

e

_•_ 10) Set the alpha portfolio weights to _wi_ = _⌘_ _"i/σi_ .

_•_ 11) Set the normalization coefficient _⌘_ such that [P] _[N]_ _i_ =1 _[|][w][i][|]_ [ = 1.]

## **3.21 A few comments**

We end this section with a few comments on some of the stock trading strategies discussed above. First, single-stock technical analysis strategies (i.e., those based solely

- n single-stock as opposed to cross-sectional data) such as those based on moving
averages, support and resistance, channel and even single-stock KNN, are deemed
"unscientific" by many professionals and academics. On the face of it, "fundamentally" speaking (not to be confused with fundamental analysis), there is no reason
why, say, a short moving average crossing a long moving average should have any
forecasting power. [72] This is not to say that moving averages are "unscientific" or
that they should not be used. After all, e.g., trend following/momentum strategies
are based on moving averages, i.e., the expected returns are computed via moving
averages. However, looking at a large cross-section of stocks brings in a _statistical_
element into the game. Mean-reversion is expected to work because stocks are expected to be correlated if they belong to the same industries, etc. This relates back

70 Here _s_ = 1 _, …, T_ = _M_ + 1 labels the times _ts_, where, as before, _t_ 1 corresponds to the most

recent time (albeit the time direction is not crucial below), and the alpha returns are _Ris_ = _Ri_ ( _ts_ ).

Typically, the alpha returns are computed daily, from close to close.

71 Their normalization is immaterial in what follows.

72 _Arguendo_, the momentum e↵etc may appear to provide a basis for such forecasting power in

some cases. However, then one could argue, e.g., that these are momentum strategies in disguise.

60

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

to fundamental analysis and – even more importantly – to the investors' _perception_

- f how stock prices/returns "should" behave based on the companies' fundamentals.
However, here too it is important to keep in mind that the stock market – an imperfect man-made construct – is not governed by laws of nature the same way as, say,
the motion of planets in the solar system is governed by fundamental laws of gravity
(see, e.g., [Kakushadze, 2015d]). The markets behave the way they do because their
participants behave in certain ways, which are sometimes irrational and certainly
not always efficient. In this regard, the key di↵erence between technical analysis
strategies and statistical arbitrage strategies is that the latter are based on certain
perceptions trickled down from longer holding horizons (fundamental analysis based
strategies) to shorter horizons (statistical arbitrage) further enhanced by statistics,
i.e., the fact that these strategies are based on a large number of stocks whose
properties are further "stratified" according to some statistical and other features.

This brings us to the second point relating to precisely these "stratifications" in

the context of statistical arbitrage. Thus, in Subsection 3.10 we can use a binary

industry classification matrix as the loadings matrix ⌦ _iA_ . Such industry classifications are based on pertinent fundamental/economic data, such as companies'

products and services, revenue sources, suppliers, competitors, partners, etc. They

are essentially independent of the pricing data and, if well-built, tend to be rather

stable out-of-sample as companies seldom jump industries. However, binary classifications can also be built based purely on pricing data, via clustering algorithms

(see, e.g., [Kakushadze and Yu, 2016b]). Alternatively, the matrix ⌦ _iA_ can be nonbinary and built using, say, principal components (see, e.g., [Kakushadze and Yu,

2017a]). Some of the columns of ⌦ _iA_ can be based on longer-horizon style risk factors such as value, growth, size, momentum, liquidity and volatility (see, e.g., [Ang

_et al_, 2006], [Anson, 2013], [Asness, 1995], [Asness _et al_, 2001], [Asness, Porter and

Stevens, 2000], [Banz, 1981], [Basu, 1977], [Fama and French, 1992], [Fama and

French, 1993], [Haugen, 1995], [Jegadeesh and Titman, 1993], [Lakonishok, Shleifer

and Vishny, 1994], [Liew and Vassalou, 2000], [P´astor and Stambaugh, 2003], [Scholes and Williams, 1977]), [73] - r shorter-horizon style factors [Kakushadze, 2015c].

# **4 Exchange-traded funds (ETFs)**

## **4.1 Strategy: Sector momentum rotation**

Empirical evidence suggests that the momentum e↵etc exists not only for individual

stocks but also for sectors and industries. [74] A sector momentum rotation strategy is

73 For (il)liquidity related considerations, also see, e.g., [Amihud, 2002].

74 For some pertinent literature, see, e.g., [Cavaglia and Vadim, 2002], [Conover _et al_, 2008],

[Doeswijk and Vliet, 2011], [Dolvin and Kirby, 2011], [Gao and Ren, 2015], [Hong, Torous and

Valkanov, 2007], [Levis and Liodakis, 1999], [Moskowitz and Grinblatt, 1999], [O'Neal, 2000],

[Sefton and Scowcroft, 2005], [Simpson and Grossman, 2016], [Sorensen and Burke, 1986], [Stoval,

1996], [Swinkels, 2002], [Szakmary and Zhou, 2015], [Wang _et al_, 2017].

61

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

based on overweighing holdings in outperforming sectors and underweighing holdings

in underperforming sectors, where the "outperformance" and "underperformance"

are based on momentum during the past _T_ - month formation period (which typically

ranges from 6 to 12 months). ETFs concentrated in specific sectors/industries o↵er

a simple way to implement sector/industry rotation without having to buy or sell

a large number of underlying stocks. Similarly to Subsection 3.1, as a measure of

sector/industry momentum, we can use the corresponding ETF's cumulative return:

_Pi_ ( _t_ )

_Ri_ _[cum]_ ( _t_ ) = _Pi_ ( _t_ + _T_ ) _[−]_ [1] (361)

Here _Pi_ ( _t_ ) is the price of the ETF labeled by _i_ . (As above, _t_ + _T_ is _T_ months in the

_past_ w.r.t. _t_ .) Right after time _t_, the trader can, e.g., buy the ETFs in the top decile

by _Ri_ _[cum]_ ( _t_ ) and hold the portfolio for a holding period (typically 1 to 3 months).

Dollar-neutral strategies can also be constructed by, e.g., buying ETFs in the top

decile and shorting ETFs in the bottom decile (as stocks, ETFs can be shorted). [75]

**4.1.1** **Strategy: Sector momentum rotation with MA filter**

This is a variation/refinement of the sector momentum rotation strategy. An ETF

in the top (bottom) decile is bought (sold) only if it passes an additional filter based

- n a moving average MA( _T_ _[0]_ ) of this ETF's price:

Rule =

(

Buy top-decile ETFs only if _P >_ MA( _T_ _[0]_ )

(362)

Short bottom-decile ETFs only if _P <_ MA( _T_ _[0]_ )

Here _P_ is the ETF's price at the time of the transaction, and MA( _T_ _[0]_ ) is computed

using _daily_ prices ( _T_ _[0]_ can but need not be equal _T_ ; e.g., _T_ _[0]_ can be 100 to 200 days).

**4.1.2** **Strategy: Dual-momentum sector rotation**

In long-only strategies, to mitigate the risk of buying ETFs when the broad market

is trending down, relative (i.e., cross-sectional) momentum of sector ETFs can be

augmented by the absolute (i.e., time-series) momentum of, e.g., a broad market

index ETF (see, e.g., [Antonacci, 2014], [Antonacci, 2017]). [76] So, a long position

based on the sector rotation signal (discussed above) is established only if the broad

75 For some literature on ETFs, see, e.g., [Agapova, 2011a], [Aldridge, 2016], [Ben-David,

Franzoni and Moussawi, 2017], [Bhattacharya _et al_, 2017], [Buetow and Henderson, 2012], [Clifford, Fulkerson and Jordan, 2014], [Hill, Nadig and Hougan, 2015], [Krause, Ehsani and Lien,

2014], [Madhavan, 2016], [Madura and Ngo, 2008], [Nyaradi, 2010], [Oztekin _et al_, 2017].

76 For some additional literature on relative momentum, absolute momentum and related topics,

see, e.g., [Ahn, Conrad and Dittmar, 2003], [Bandarchuk and Hilscher, 2013], [Berk, Green and

Naik, 1999], [Cooper, Gutierrez and Hameed, 2004], [Fama and French, 2008], [Hurst, Ooi and

Pedersen, 2017], [Johnson, 2002], [Liu and Zhang, 2008], [Moskowitz, Ooi and Pedersen, 2012], [Sagi

and Seasholes, 2007], [Schwert, 2003], [Zhang, 2006].

62

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

market index has an upward trend; otherwise, the total available funds are invested

into an ETF (e.g., gold or Treasury ETF) uncorrelated with the broad market index:

Rule =

(

Buy top-decile ETFs if _P >_ MA( _T_ _[0]_ )

(363)

Buy an uncorrelated ETF if _P _ MA( _T_ _[0]_ )

Here _P_ is the broad market index ETF's price at the time of the transaction, and

MA( _T_ _[0]_ ) is the moving average of this ETF's price. Typically, _T_ _[0]_ is 100 to 200 days.

## **4.2 Strategy: Alpha rotation**

This is the same as the sector momentum rotation strategy with the cumulative

ETF returns _Ri_ _[cum]_ replaced by ETF alphas _↵i_, which are the regression coefficients

corresponding to the intercept in a _serial_ regression of the ETF returns [77] _Ri_ ( _t_ ) over,

e.g., the 3 Fama-French factors MKT( _t_ ), SMB( _t_ ), HML( _t_ ) (see fn. 50): [78]

_Ri_ ( _t_ ) = _↵i_ + _β_ 1 _,i_ MKT( _t_ ) + _β_ 2 _,i_ SMB( _t_ ) + _β_ 3 _,i_ HML( _t_ ) + _✏i_ ( _t_ ) (364)

## **4.3 Strategy: R-squared**

Empirical studies for mutual funds (see, e.g., [Amihud and Goyenko, 2013], [Ferson and Mo, 2016]) and ETFs (see, e.g., [Garyn-Tal, 2014a], [Garyn-Tal, 2014b])

suggest that augmenting alpha by an indicator based on _R_ [2] - f a _serial_ regression

- f the returns _Ri_ ( _t_ ) over multiple factors, e.g., the 3 Fama-French factors MKT( _t_ ),
SMB( _t_ ), HML( _t_ ) plus Carhart's momentum factor MOM( _t_ ) (see fn. 50), adds value
in forecasting future returns. Thus, from the serial regression

_Ri_ ( _t_ ) = _↵i_ + _β_ 1 _,i_ MKT( _t_ ) + _β_ 2 _,i_ SMB( _t_ ) + _β_ 3 _,i_ HML( _t_ ) + _β_ 4 _,i_ MOM( _t_ ) + _✏i_ ( _t_ ) (365)

we can estimate _↵i_ (the regression coefficients corresponding to the intercept) and

the regression _R_ [2], which is defined as ("SS" stands for "sum of squares"):

_R_ [2] = 1 _−_ [SS] _[res]_

SS _tot_

(366)

SS _res_ =

SS _tot_ =

_N_

X

_i_ =1

_N_

X

_i_ =1

( _Ri_ ( _t_ ) _−_ _R_ ( _t_ )) [2] (368)

_✏_ [2] _i_ [(] _[t]_ [)] (367)

_R_ ( _t_ ) = [1]

_N_

_N_

X

_i_ =1

_Ri_ ( _t_ ) (369)

77 Typically, the estimation period is 1 year, and _Ri_ ( _t_ ) are daily or weekly returns.

78 Alpha here is Jensen's alpha defined for ETF returns as opposed to mutual fund returns

as in [Jensen, 1968]. For some additional literature related to Jensen's alpha, see, e.g., [Bollen

and Busse, 2005], [Droms and Walker, 2001], [Elton, Gruber and Blake, 1996a], [Goetzmann and

Ibbotson, 1994], [Grinblatt and Titman, 1992], [Jan and Hung, 2004].

63

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

An R-squared strategy then amounts to overweighing ETFs with higher "selectivity"

_−_

(defined as 1 _R_ [2] [Amihud and Goyenko, 2013]) and underweighing ETFs with lower

"selectivity". E.g., one can first sort ETFs into quintiles by _R_ [2], and then sort ETFs

in each such quintile into further sub-quintiles by alpha (resulting in 25 groups of

ETFs). One can then, e.g., buy ETFs in the group corresponding to the lowest _R_ [2]

quintile and its highest alpha sub-quintile and sell ETFs in the group corresponding

to the highest _R_ [2] quintile and its lowest alpha sub-quintile. Other variations are

possible. Finally, the estimation period and the returns for _R_ [2] can be the same

as in the alpha rotation strategy (see Subsection 4.2 and fn. 77). However, longer

estimation periods can be considered, especially if _Ri_ ( _t_ ) are monthly returns. [79]

## **4.4 Strategy: Mean-reversion**

One way (among myriad others) to construct a mean-reversion strategy for ETFs is

to use the Internal Bar Strength (IBS) based on the previous day's close _PC_, high

_PH_ and low _PL_ prices: [80]

IBS = _[P][C][ −]_ _[P][L]_

_PH −_ _PL_

(370)

Note that IBS ranges from 0 to 1. [81] An ETF can be thought of as being "rich" if its

IBS is close to 1, and as "cheap" if its IBS is close to 0. Upon sorting a universe of

ETFs cross-sectionally by IBS, a dollar-neutral strategy can, e.g., be constructed by

selling ETFs in the top decile and buying ETFs in the bottom decile. As with stock

strategies discussed above, weights can be uniform for all long and all short ETFs,

respectively, or nonuniform, e.g., based on historical ETF volatilities. Furthermore,

mean-reversion strategies we discussed above for stocks can also be adapted to ETFs.

## **4.5 Strategy: Leveraged ETFs (LETFs)**

A leveraged (inverse) ETF seeks to double or triple (the inverse of) the daily return of

its underlying index. [82] To maintain a daily leverage of 2 _⇥_ - r 3 _⇥_, LETFs rebalance

79 Also, note that in [Amihud and Goyenko, 2013] _R_ 2 is a measure of active management of a

mutual fund. In [Garyn-Tal, 2014a], [Garyn-Tal, 2014b] _R_ [2] is applied to actively managed ETFs.

For some additional literature on actively managed ETFs, see, e.g., [Mackintosh, 2017], [Meziani,

2015], [Rompotis, 2011a], [Rompotis, 2011b], [Schizas, 2014], [Sherrill and Upton, 2018].

80 See, e.g., [Pagonidis, 2014]. For some additional related literature, see, e.g., [Brown, Davies

and Ringgenberg, 2018], [Caginalp, DeSantis and Sayrak, 2014], [Chan, 2013], [Dunis, Laws and

Rudy, 2013], [Lai, Tseng and Huang, 2016], [Levy and Lieberman, 2013], [Marshall, Nguyen and

Visaltanachoti], [Rudy, Dunis and Laws, 2010], [Schizas, Thomakos and Wang, 2011], [Smith and

Pantilei, 2015], [Yu and Webb, 2014].

81 An equivalent but more symmetrical measure is _Y_ = IBS _−_ 1 _/_ 2 = ( _PC −_ _P⇤_ ) _/_ ( _PH −_ _PL_ ),

where _P⇤_ = ( _PH_ + _PL_ ) _/_ 2. Note that _Y_ ranges from 1 _/_ 2 for _PC_ = _PH_ to _−_ 1 _/_ 2 for _PC_ = _PL_ .

82 For some literature on leveraged ETFs, see e.g., [Avellaneda and Zhang, 2010], [Bai, Bond

and Hatch, 2015], [Charupat and Miu, 2011], [Cheng and Madhavan, 2010], [Ivanov and Lenkey,

2014], [Jarrow, 2010], [Jiang and Peterburgsky, 2017], [Lu, Wang and Zhang, 2012], [Shum _et al_,

2016], [Tang and Xu, 2013], [Trainor, 2010], [Tuzun, 2013].

64

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

every day, which requires buying on the days when the market is up and selling

when the market is down. This can result in a negative drift in the long term, which

can be exploited by shorting both a leveraged ETF and a leveraged inverse ETF

(both with the same leverage and for the same underlying index) and investing the

proceeds into, e.g., a Treasury ETF. This strategy can have a significant downside

risk in the short term if one of the short ETF legs has a sizable positive return.

## **4.6 Strategy: Multi-asset trend following**

One allure of ETFs is their diversification power: ETFs allow to gain exposure

to di↵erent sectors, countries, asset classes, factors, etc., by taking positions in a

relatively small number of ETFs (as opposed to taking positions in a large number

- f underlying instruments, e.g., thousands of stocks). Here we focus on long-only
trend-following portfolios. One needs to determine the weight _wi_ - f each ETF.
One (but by far not the only) way to fix these weights is as follows. First, as
in the sector momentum rotation strategy, we compute cumulative returns _Ri_ _[cum]_

_i_

(over some period _T_, e.g., 6-12 months). We only take ETFs with positive _Ri_ _[cum]_

_i_ .

If desired, optionally, we can further filter out ETFs as in the sector momentum

rotation strategy with an MA filter, by keeping only the ETFs whose last closing

prices _Pi_ are higher than their corresponding long-term moving averages MA _i_ ( _T_ _[0]_ )

(typically, the MA length _T_ _[0]_ is 100 to 200 days). Now, instead of taking ETFs in

the top decile by _Ri_ _[cum]_ (as in the sector momentum rotation strategy), we can assign

the top decile by _Ri_ _[cum]_ (as in the sector momentum rotation strategy), we can assign

nonzero weights _wi_ to all remaining ETFs, whose number in this context is relatively

small to begin with by design. The weights can, e.g., be assigned as follows:

_wi_ = _γ_ 1 _Ri_ _[cum]_ (371)

_wi_ = _γ_ 2 _Ri_ _[cum]_ _/σi_ (372)

_wi_ = _γ_ 1 _Ri_ _[cum]_

_wi_ = _γ_ 2 _Ri_ _[cum]_ _/σi_ (372)

_wi_ = _γ_ 3 _Ri_ _[cum]_ _/σi_ [2] (373)

_i_ _[cum]_ _/σi_ [2]

_i_ (373)

Here: _σi_ is the historical volatility; and the overall normalization coefficients _γ_ 1 _, γ_ 2 _, γ_ 3

in each case are computed based on the requirement that [P] _[N]_ _i_ =1 _[w][i]_ [ = 1 (where] _[ N]_

in each case are computed based on the requirement that [P] _i_ =1 _[w][i]_ [ = 1 (where] _[ N]_

is the number of ETFs in our portfolio after all filters are applied, i.e., those with

nonzero weights). Thus, the weights in Eq. (371) are simply proportional to the

past cumulative returns _Ri_ _[cum]_, which are taken as the measure of momentum, so

past cumulative returns _Ri_ _[cum]_, which are taken as the measure of momentum, so

the expected returns are also given by (or, more precisely, proportional to) _Ri_ _[cum]_ .

The issue with this weighting scheme is that it overweighs volatile ETFs as on

average _Ri_ _[cum]_ _/ σi_ . The weights in Eq. (372) mitigate this, while the weights

average _Ri_ _[cum]_ _/ σi_ . The weights in Eq. (372) mitigate this, while the weights

in Eq. (373) actually optimize the Sharpe ratio of the ETF portfolio assuming a

diagonal covariance matrix _Cij_ = diag( _σi_ [2][) for the ETF returns, i.e., by ignoring]

diagonal covariance matrix _Cij_ = diag( _σi_ [2][) for the ETF returns, i.e., by ignoring]

their correlations. [83] Imposing bounds _wi _ _wi_ _[max]_ can further mitigate overweighing.

_i_ _[max]_ can further mitigate overweighing.

83 For some literature on multi-asset portfolios, dynamic asset allocation and related topics, see,

e.g., [Bekkers, Doeswijk and Lam, 2009], [Black and Litterman, 1992], [Detemple and Rindisbacher,

2010], [Doeswijk, Lam and Swinkels, 2014], [Faber, 2015], [Faber, 2016], [Mladina, 2014], [Petre,

65

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

# **5 Fixed Income**

## **5.1 Generalities**

**5.1.1** **Zero-coupon bonds**

A promise of being paid \$1 at the maturity time _T_ can be regarded as an asset, which

has some worth at time _t_ before _T_ . This asset is called a (zero-coupon) _discount_

_bond_ . Let its price at time 0 __ _t _ _T_ be _P_ ( _t, T_ ). Then _P_ ( _T, T_ ) = 1. The _yield_ - f a

discount bond is defined as [84]

_R_ ( _t, T_ ) = _−_ [ln][(] _[P]_ [(] _[t][,][ T]_ [))] (374)

_T −_ _t_

and has the meaning of an average interest rate over the period of time _T −_ _t_ . The

higher the bond price at time _t_, the lower the yield _R_ ( _t, T_ ) and vice versa. Below

we refer to a zero-coupon bond with a \$1 principal and maturity _T_ as a _T_ - bond.

**5.1.2** **Bonds with coupons**

In practice, a bond usually pays not only its principal at maturity _T_, but also

makes smaller coupon payments before maturity. Consider a bond that makes _n_

regular coupon payments at a fixed _uncompounded_ rate _k_ at times _Ti_ = _T_ 0 + _iδ_,

_i_ = 1 _,_ 2 _, …, n_, and also pays \$1 principal at maturity _T_ . The amount of each coupon

payment is _kδ_, where _δ_ is the payment period. This income stream is equivalent to

- wning one _T_ - bond plus _kδ_ units of each _Ti_ - bond, _i_ = 1 _, …, n_ . The price of the
coupon bond at time _t_ then is

_Pc_ ( _t, T_ ) = _P_ ( _t, T_ ) + _kδ_

_n_

X

_i_ = _I_ ( _t_ )

_P_ ( _t, Ti_ ) (375)

where _I_ ( _t_ ) = min( _i_ : _t < Ti_ ). At time _t_ = _T_ 0 we have

_Pc_ ( _T_ 0 _, T_ ) = _P_ ( _T_ 0 _, T_ ) + _kδ_

_n_

X

_i_ =1

_P_ ( _T_ 0 _, Ti_ ) (376)

If we desire the coupon bond to start with its face value ( _Pc_ ( _T_ 0 _, T_ ) = 1), then the

corresponding coupon rate is given by

1 _−_ _P_ ( _T_ 0 _, T_ )

_k_ = (377)

_δ_ ~~[P]~~ ~~_[n]_~~

_i_ =1 _[P]_ [(] _[T]_ [0] _[, T][i]_ [)]

2015], [Sassetti and Tani, 2006], [Sharpe, 2009], [Sharpe and Perold, 2009], [Sørensen, 1999], [Tripathi and Garg, 2016], [Wu, 2003], [Zakamulin, 2014b].

84 More precisely, this definition assumes continuous compounding. For periodic compounding

at _n_ discrete times _Ti_ = _T_ 0 + _iδ_, _i_ = 1 _, …, n_, the yield between _t_ = _T_ 0 and _t_ = _Tn_ is given by

_R_ ( _T_ 0 _, Tn_ ) = _δ_ _[−]_ [1][ �] [ _P_ ( _T_ 0 _, Tn_ )] _[−]_ [1] _[/n]_ _−_ 1� assuming _P_ ( _Tn, Tn_ ) = 1, i.e., _Tn_ is the maturity. Eq. (374)

[ _P_ ( _T_ 0 _, Tn_ )] _[−]_ [1] _[/n]_ _−_ 1

_R_ ( _T_ 0 _, Tn_ ) = _δ_ _[−]_ [1][ �] [ _P_ ( _T_ 0 _, Tn_ )] _[−]_ [1] _[/n]_ _−_ 1� assuming _P_ ( _Tn, Tn_ ) = 1, i.e., _Tn_ is the maturity. Eq. (374)

is recovered in the limit where _n ! 1_, _δ !_ 0, _nδ_ = fixed (and equal to _T −_ _t_ in Eq. (374)).

66

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

**5.1.3** **Floating rate bonds**

A bond might also have _floating_ coupon payments. Thus, consider a bond that

pays \$1 at maturity _T_, and also makes coupon payments at times _Ti_ = _T_ 0 + _iδ_,

_i_ = 1 _,_ 2 _, …, n_, with amounts based on the variable rate (usually LIBOR – see

Subsection 5.15)

_L_ ( _Ti−_ 1) = [1]

_δ_

1

 _P_ ( _Ti−_ 1 _, Ti_ ) _[−]_ [1]

(378)

The actual coupon payment at time _Ti_ is

1

_Xi_ = _L_ ( _Ti−_ 1) _δ_ = (379)

_P_ ( _Ti−_ 1 _, Ti_ ) _[−]_ [1]

which is the amount of interest we would get by buying \$1’s worth of a _Ti_ - bond

at time _Ti−_ 1. Indeed, a _Ti_ - bond is worth _P_ ( _Ti−_ 1 _, Ti_ ) at _t_ = _Ti−_ 1, so \$1's worth a

_Ti_ - bond at _t_ = _Ti−_ 1 is worth 1 _/P_ ( _Ti−_ 1 _, Ti_ ) at _t_ = _Ti_, so the interest earned is given

by Eq. (379). The total value of the variable coupon bond at _t_ = _T_ 0 is given by:

_V_ 0 = 1 _−_ [ _P_ ( _T_ 0 _, Tn_ ) _−_ _P_ ( _T_ 0 _, T_ )] (380)

If _T_ = _Tn_, then we have _V_ 0 = 1. This is because this bond is equivalent to the

following sequence of trades. At time _t_ = _T_ 0 take \$1 and buy _T_ 1-bonds with it. At

time _t_ = _T_ 1 take the interest from the _T_ 1-bonds as the _T_ 1-coupon, and buy _T_ 2-bonds

with the leftover \$1 principal. Repeat until we are left with \$1 at time _Tn_ . This has

exactly the same cash flow as the variable coupon bond, so the initial prices must

match. If _T > Tn_, then _V_ 0 _<_ 1 and can be determined as follows. First, note that

_V_ 0 = _P_ ( _T_ 0 _, T_ ) + _V_ 0 _[coupons]_ (381)

where _V_ 0 _[coupons]_ is the total value of all _n_ coupon payments at _t_ = _T_ 0. This value is

independent of _T_ and is determined from

_P_ ( _T_ 0 _, Tn_ ) + _V_ 0 _[coupons]_ = 1 (382)

which is the value of the variable coupon bond with maturity _Tn_ . Hence Eq. (380).

**5.1.4** **Swaps**

Swaps are contracts that exchange a stream of floating rate payments for a stream

- f fixed rate payments or vice versa. A swap where we receive a stream of fixed rate
payments in exchange for floating rate payments is simply a portfolio which is long
a fixed coupon bond and short a variable coupon bond. The price of the former at
_t_ = _T_ 0 is given by Eq. (376), while that of the latter is given by Eq. (380). The
fixed rate that gives the swap initial null value is independent of maturity _T_ and
given by

1 _−_ _P_ ( _T_ 0 _, Tn_ )

_k_ = (383)

_δ_ ~~[P]~~ ~~_[n]_~~

_i_ =1 _[P]_ [(] _[T]_ [0] _[, T][i]_ [)]

67

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

**5.1.5** **Duration and convexity**

Macaulay duration of a bond is a weighted average maturity of its cash flows, where

the weights are the present values of said cash flows. E.g., for a fixed rate coupon

bond we have (see Eq. (376))

1

MacD( _t, T_ ) =

_Pc_ ( _t, T_ )

2( _T −_ _t_ ) _P_ ( _t, T_ ) + _kδ_

4

_n_

X

_i_ = _I_ ( _t_ )

( _Ti −_ _t_ ) _P_ ( _t, Ti_ )

3

(384)

5

Modified duration is defined as (assuming _parallel shifts_ in the yield curve) [85]

ModD( _t, T_ ) = _−_ _[@]_ [ ln ][(] _[P][c]_ [(] _[t][,][ T]_ [))] (385)

_@R_ ( _t, T_ )

For continuous compounding, Macaulay duration and modified duration are the

same (see Eq. (374)). For periodic compounding, they di↵er. For a _constant_ yield

_R_ ( _t, ⌧_ ) = _Y_ = const. (for all _t < ⌧< T_ ), they are related via (see fn. 84):

ModD( _t, T_ ) = MacD( _t, T_ ) _/_ (1 + _Y δ_ ) (386)

Modified duration is a measure of the relative bond price sensitivity to changes in

the interest rates: ∆ _Pc_ ( _t, T_ ) _/Pc_ ( _t, T_ ) _⇡−_ ModD( _t, T_ ) ∆ _R_ ( _t, T_ ) (for parallel shifts

∆ _R_ ( _t, ⌧_ ) = ∆ _R_ = const _._, for all _t < ⌧< T_ ). Similarly, dollar duration defined as

DD( _t, T_ ) = _−_ _[@P]_ _@R_ _[c]_ ( [(] _t, T_ _[t][,][ T]_ ) [)] [= ModD(] _[t, T]_ [)] _[ P][c]_ [(] _[t, T]_ [)] (387)

is a measure of the absolute bond price sensitivity to changes in the interest rates.

Convexity of a bond is defined as (again, assuming parallel shifts) [86]

1

_C_ ( _t, T_ ) = _−_

_Pc_ ( _t, T_ )

_@_ [2] _Pc_ ( _t, T_ )

(388)

_@R_ ( _t, T_ ) [2]

and corresponds to nonlinear e↵ects in the response of the bond price to interest

rate changes:

∆ _Pc_ ( _t, T_ ) _/Pc_ ( _t, T_ ) _⇡−_ ModD( _t, T_ ) ∆ _R_ ( _t, T_ ) + [1] (389)

2 _[C]_ [(] _[t, T]_ [) [∆] _[R]_ [(] _[t, T]_ [)]][2]

85 I.e., _@R_ ( _t, ⌧_ ) _/@R_ ( _t, T_ ) = 1 for all _t < ⌧< T_ . For nonuniform shifts things get complicated.

86 For some literature on various properties of bonds, see, e.g., [Baxter and Rennie, 1996],

[Bessembinder and Maxwell, 2008], [Cerovi´c [ˇ] _et al_, 2014], [Chance and Jordan, 1996], [Chen,

Lesmond and Wei, 2007], [Chen, Mao and Wang, 2010], [Christensen, 1999], [Cole and Young,

1995], [Fabozzi, 2006a], [Fabozzi, 2012a], [Fabozzi, 2012b], [Fabozzi and Mann, 2010], [Henderson, 2003], [Horvath, 1998], [Hotchkiss and Ronen, 2002], [Hull, 2012], [Hull, Predescu and

White, 2005], [Jostova _et al_, 2013], [Kakushadze, 2015a], [Leland and Panos, 1997], [Litterman

and Scheinkman, 1991], [Macaulay, 1938], [Martellini, Priaulet and Priaulet, 2003], [Osborne,

2005], [Samuelson, 1945], [Stulz, 2010], [Tuckman and Serrat, 2015].

68

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **5.2 Strategy: Bullets**

In a bullet portfolio, all bonds have the same maturity date _T_ thereby targeting a

specific segment of the yield curve. The maturity can be picked based on the trader's

- utlook on the future interest rates: if the interest rates are expected to fall (i.e.,
the bond prices to rise), then picking a longer maturity would make more sense; if
the interest rates are expected to rise (i.e., the bond prices to fall), then a shorter
maturity would be more warranted; however, if the trader is uncertain about the
future interest rates, a more diversified portfolio (e.g., a barbell/ladder portfolio –
see below) is in order (as opposed to a bullet portfolio). Typically, the bonds in a
bullet portfolio are purchased over time, which mitigates the interest rate risk to
some extent: if the interest rates rise, the later bond purchases will be at higher
rates; if the interest rates fall, the earlier bond purchases will have higher yields. [87]

## **5.3 Strategy: Barbells**

In this strategy all purchased bonds are concentrated in two maturities _T_ 1 (short

maturity) and _T_ 2 (long maturity), so this portfolio is a combination of two bullet

strategies. This strategy takes advantage of the higher yields from the long-maturity

bonds while hedging the interest rate risk with the short-maturity bonds: if the

interest rates rise, the long-maturity bonds will lose value, but the proceeds from

the short-maturity bonds can be reinvested at higher rates. [88] The modified duration

(call it _D_ ) of the barbell strategy is the same as the modified duration (call it

_D⇤_ ) of a bullet strategy with a mid-range maturity (call it _T⇤_, _T_ 1 _< T⇤_ _< T_ 2).

However, the convexity (call it _C_ ) of the barbell strategy is higher than the convexity

(call it _C⇤_ ) of this bullet strategy. Intuitively this can be understood by noting

that modified duration scales approximately linearly with maturity, while convexity

scales approximately quadratically with maturity. For illustrative purposes and

simplicity, let us consider a barbell strategy consisting of _w_ 1 dollars' worth of zerocoupon bonds with short maturity _T_ 1 and _w_ 2 dollars' worth of zero-coupon bonds

with long maturity _T_ 2 (each bond has \$1 face value). Furthermore, let us assume

continuous compounding and a constant yield _Y_ . We then have

_D_ = _[w]_ [e][1] _[ T]_ _w_ e [1] 1 [ +] + [ e] e _[w]_ _w_ [2] 2 _[ T]_ [2]

(390)

_T⇤_ = _D⇤_ = _D_ (391)

1

_C_ = _[w]_ [e][1] _[ T]_ [ 2]

[ 2] 1 [+][ e] _[w]_ [2] _[T]_ [ 2] 2

(392)

1 2

_w_ e1 + e _w_ 2

_C⇤_ = _T⇤_ [2] (393)

87 For some literature on bullet and barbell (see below) strategies, see, e.g., [Fabozzi, Martellini

and Priaulet, 2006], [Grantier, 1988], [Jones, 1991], [Mann and Ramanlal, 1997], [Pascalau and

Poirier, 2015], [Su and Knowles, 2010], [Wilner, 1996], [Yamada, 1999].

88 Flattening/steepening of the yield curve (the spread between the short-term and long-term

interest rates decreases/increases) has a positive/negative impact on the value of the portfolio.

69

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

where e _w_ 1 = _w_ 1 exp( _−T_ 1 _Y_ ) and e _w_ 2 = _w_ 2 exp( _−T_ 2 _Y_ ). Straightforward algebra

gives e

_w_ 1 e _w_ 2

_C −_ _C⇤_ = [(] _[T]_ [2] _[ −]_ _[T]_ [1][)][2] _[ >]_ [ 0] (394)

( e _w_ 1 + e _w_ 2) [2]

Higher convexity of the barbell portfolio provides a better protection against parallel

shifts in the yield curve. However, this comes at the expense of a lower overall yield.

## **5.4 Strategy: Ladders**

A ladder is a bond portfolio with (roughly) equal capital allocations into bonds

- f _n_ di↵erent maturities _Ti_, _i_ = 1 _, …, n_ (where the number of rungs _n_ is sizable,
e.g., _n_ = 10). The maturities are equidistant: _Ti_ +1 = _Ti_ + _δ_ . This is a durationtargeting strategy, [89] which maintains an approximately constant duration by selling
shorter-maturity bonds as they approach maturity and replacing them with new
longer-maturity bonds. A ladder portfolio aims to diversify the interest rate and
reinvestment risks [90] by avoiding exposure to only a few maturities (as in bullets and
barbells). It also generates a regular revenue stream from the coupons of each bond.
The maturity of a ladder portfolio can be defined as the average maturity:

_T_ = [1]

_n_

_n_

X

_i_ =1

_Ti_ (395)

The income is higher for higher values of _T_ ; however, so is the interest rate risk.

## **5.5 Strategy: Bond immunization**

Bond immunization is used in cases such as a predetermined future cash obligation.

A simple solution would be to purchase a zero-coupon bond with the required maturity (and desirable/acceptable yield). However, such a bond may not always be

available in the market, so a portfolio of bonds with varying maturities must be used

instead. Such a portfolio is subject to the interest rate and reinvestment risks. One

way to mitigate these risks is to build a portfolio whose duration matches the maturity of the future cash obligation (thereby "immunizing" the bond portfolio against

parallel shifts in the yield curve). Consider a portfolio of bonds with 2 di↵erent

maturities _T_ 1 _, T_ 2 and the corresponding durations _D_ 1 _, D_ 2 (where "duration" means

modified duration). Let: the dollar amounts invested in these bonds be _P_ 1 _, P_ 2; the

total amount to be invested be _P_ ; the desired duration of the portfolio be _D_ (which

89 For some literature on ladder and duration-targeting strategies, see, e.g., [Bierwag and Kaufman, 1978], [Bohlin and Strickland, 2004], [Cheung, Kwan and Sarkar, 2010], [Dyl and Martin,

1986], [Fridson and Xu, 2014], [Judd, Kubler and Schmedders, 2011], [Langetieg, Leibowitz and

Kogelman, 1990], [Leibowitz and Bova, 2013], [Leibowitz, Bova and Kogelman, 2014], [Leibowitz,

Bova and Kogelman, 2015].

90 The reinvestment risk is the risk that the proceeds (from coupon payments and/or principal)

would be reinvested at a lower rate than the original investment.

70

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

is related to the maturity _T⇤_ - f the future cash obligation – see below); and the

_constant_ yield (which is assumed to be _the same for all bonds_ - see below) be _Y_ .

Then _P_ is fixed using _Y_ and the amount of the future obligation _F_ :

_P_ = _F/_ (1 + _Y δ_ ) _[T][⇤][/δ]_ (396)

where we are assuming periodic compounding and _δ_ is the length of each compounding period (e.g., 1 year). [91] Then we have:

_P_ 1 + _P_ 2 = _P_ (397)

_P_ 1 _D_ 1 + _P_ 2 _D_ 2 = _P D_ (398)

where

_D_ = _T⇤/_ (1 + _Y δ_ ) (399)

With 3 bonds, we can also match the convexity:

_P_ 1 + _P_ 2 + _P_ 3 = _P_ (400)

_P_ 1 _D_ 1 + _P_ 2 _D_ 2 + _P_ 3 _D_ 3 = _P D_ (401)

_P_ 1 _C_ 1 + _P_ 2 _C_ 2 + _P_ 3 _C_ 3 = _P C_ (402)

where _C_ 1 _, C_ 2 _, C_ 3 are the convexities of the 3 bonds and

_C_ = _T⇤_ ( _T⇤_ + _δ_ ) _/_ (1 + _Y δ_ ) [2] (403)

In practice, the yield curve changes over time, which (among other things) requires

that the portfolio be periodically rebalanced. This introduces nontrivial transaction

costs, which must also be accounted for. Furthermore, the yields are not the same for

all bonds in the portfolio, which introduces additional complexity into the problem. [92]

## **5.6 Strategy: Dollar-duration-neutral butterfly**

This is a zero-cost combination of a long barbell portfolio (with short _T_ 1 and long

_T_ 3 maturities) and a short bullet portfolio (with a medium maturity _T_ 2, where

_T_ 1 _< T_ 2 _< T_ 3). Let: the dollar amounts invested in the 3 bonds be _P_ 1 _, P_ 2 _, P_ 3; and

91

For the sake of simplicity, in Eq. (396) the number _n_ = _T⇤/δ_   - f compounding periods is

assumed to be a whole number. Extension to non-integer _T⇤/δ_ is straightforward.

92 For some literature on bond immunization, including more sophisticated optimization techniques, see, e.g., [Albrecht, 1985], [Alexander and Resnick, 1985], [Bierwag, 1979], [Bodie, Kane and

Marcus, 1996], [Boyle, 1978], [Christensen and Fabozzi, 1985], [De La Pe˜na, Garayeta and Iturricastillo, 2017], [Fisher and Weil, 1971], [Fong and Vasicek, 1983], [Fong and Vasicek, 1984], [H¨urlimann,

2002], [H¨urlimann, 2012], [Iturricastillo and De La Pe˜na, 2010], [Khang, 1983], [Kocherlakota,

Rosenbloom and Shiu, 1988], [Kocherlakota, Rosenbloom and Shiu, 1990], [Montrucchio and Peccati, 1991], [Nawalkha and Chambers, 1996], [Reddington, 1952], [Reitano, 1996], [Shiu, 1987],

[Shiu, 1988], [Zheng, Thomas and Allen, 2003].

71

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

the corresponding modified durations be _D_ 1 _, D_ 2 _, D_ 3. Then zero cost (i.e., dollarneutrality) and the dollar-duration-neutrality (the latter protects the portfolio from

parallel shifts in the yield curve) imply that

_P_ 1 + _P_ 3 = _P_ 2 (404)

_P_ 1 _D_ 1 + _P_ 3 _D_ 3 = _P_ 2 _D_ 2 (405)

This fixes _P_ 1 _, P_ 3 via _P_ 2. While the portfolio is immune to parallel shifts in the yield

curve, it is not immune to changes in the slope or the curvature of the yield curve. [93]

## **5.7 Strategy: Fifty-fifty butterfly**

This is a variation of the standard butterfly. In the above notations for the dollarduration-neutral butterfly, we have

(406)

So, the fifty-fifty butterfly is still dollar-duration-neutral, but it is no longer dollarneutral (i.e., it is not a zero-cost strategy). Instead, dollar durations of the wings are

the same (hence the term "fifty-fifty"). As a result, the strategy is (approximately)

neutral to small steepening and flattening of the yield curve, to wit, if the interest

rate spread change between the body and the short-maturity wing is equal to the

spread change between the long-maturity wing and the body. That is why this

strategy is a.k.a. "neutral curve butterfly" (whose cost is non-dollar-neutrality).

## **5.8 Strategy: Regression-weighted butterfly**

Empirically, short-term interest rates are sizably more volatile than long-term interest rates. [94] Therefore, the interest rate spread change between the body and the

short-maturity wing (of the butterfly – see above) can be expected to be greater by

some factor – call it _β_ - than the spread change between the long-maturity wing

and the body (so, typically _β >_ 1). This factor can be obtained from historical

data via, e.g., running a regression of the spread change between the body and the

short-maturity wing over the spread change between the long-maturity wing and the

body. Then, instead of Eq. (406), we have the following dollar-duration-neutrality

and "curve-neutrality" conditions:

_P_ 1 _D_ 1 + _P_ 3 _D_ 3 = _P_ 2 _D_ 2 (407)

_P_ 1 _D_ 1 = _β P_ 3 _D_ 3 (408)

93 For some literature on various butterfly bond strategies, see, e.g., [Bedendo, Cathcart and

El-Jahel, 2007], [Brooks and Moskowitz, 2017], [Christiansen and Lund, 2005], [Fontaine and Nolin,

2017], [Gibson and Pritsker, 2000], [Grieves, 1999], [Heidari and Wu, 2003], [Martellini, Priaulet

and Priaulet, 2002].

94 See, e.g., [Edwards and Susmel, 2003], [Joslin and Konchitchki, 2018], [Mankiw and Summers,

1984], [Shiller, 1979], [Sill, 1996], [Turnovsky, 1989].

72

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

**5.8.1** **Strategy: Maturity-weighted butterfly**

This is a variation of the regression-weighted butterfly, where instead of fixing _β_ in

Eq. (408) via a regression based on historical data, this coefficient is based on the

3 bond maturities:

_β_ = _[T]_ [2] _[ −]_ _[T]_ [1]

_T_ 3 _−_ _T_ 2

## **5.9 Strategy: Low-risk factor**

(409)

As in stocks, empirical evidence suggests that lower-risk bonds tend to outperform

higher-risk bonds on the risk-adjusted basis ("low-risk anomaly"). [95] One can define

"riskiness" of a bond using di↵erent metrics, e.g., bond credit rating and maturity.

For instance, a long portfolio can be built (see, e.g., [Houweling and van Vundert,

2017]) by taking Investment Grade bonds with credit ratings AAA through A-, and

then taking the bottom decile by maturity. Similarly, one can take High Yield bonds

with credit ratings BB+ through B-, and then take the bottom decile by maturity.

## **5.10 Strategy: Value factor**

"Value" for bonds (see, e.g., [Correia, Richardson and Tuna, 2012], [Houweling and

van Vundert, 2017], [L'Hoir and Boulhabel, 2010]) is trickier to define than for stocks.

One way is to compare the observed credit spread [96] to a theoretical prediction

therefor. One way to estimate the latter is, e.g., via a linear cross-sectional (across

_N_ bonds labeled by _i_ = 1 _, …, N_ ) regression [Houweling and van Vundert, 2017]:

_Si_ =

_K_

X _βr Iir_ + _γ Ti_ + _✏i_ (410)

_r_ =1

_Si_ _[⇤]_ [=] _[ S][i]_ _[−]_ _[✏][i]_ (411)

Here: _Si_ is the credit spread; _Iir_ is a dummy variable ( _Iir_ = 1 if the bond labeled

by _i_ has credit rating _r_ ; otherwise, _Iir_ = 0) for bond credit rating _r_ (which labels

_K_ credit ratings present among the _N_ bonds, which can be one of the 21 credit

ratings); [97] _Ti_ are bond maturities; _βr, γ_ are the regression coefficients; _✏i_ are the

regression residuals; and _Si_ _[⇤]_ [is the fitted (theoretical) value of the credit spread.]

The _N ⇥_ _K_ matrix _Iir_ has no columns with all zeros (so _K_ can be less than 21).

Note that by definition, since each bond has one and only one credit rating, we have

_K_

X _Iir_ = 1 (412)

_r_ =1

95 For some literature, see, e.g., [De Carvalho _et al_, 2014], [Derwall, Huij and De Zwart, 2009],

[Frazzini and Pedersen, 2014], [Houweling and van Vundert, 2017], [Ilmanen, 2011], [Ilmanen _et al_,

2004], [Kozhemiakin, 2007], [Ng and Phelps, 2015].

96 Credit spread is the di↵erence between the bond yield and the risk-free rate.

97 These credit ratings are AAA, AA+, AA, AA-, A+, A, A-, BBB+, BBB, BBB-, BB+, BB,

BB-, B+, B, B-, CCC+, CCC, CCC-, CC, C.

73

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

so the intercept is subsumed in _Iir_ (which is why there is no separate regression

coefficient for the intercept). Next, value is defined as _Vi_ = ln( _Si/Si_ _[⇤]_ [) or] _[ V][i]_ [=] _[ ✏][i][/S]_ _i_ _[⇤]_ [=]

_Si/Si_ _[⇤]_ _[−]_ [1, and the bonds in the top decile by] _[ V][i]_ [are selected for the portfolio.]

_i_ _[⇤]_ [) or] _[ V][i]_ [=] _[ ✏][i][/S]_ _i_ _[⇤]_

_i_ _[⇤]_ _[−]_ [1, and the bonds in the top decile by] _[ V][i]_ [are selected for the portfolio.]

## **5.11 Strategy: Carry factor**

Carry is defined as the return from the appreciation of the bond value as the bond

rolls down the yield curve (see, e.g., [Beekhuizen _et al_, 2016], [Koijen, Moskowitz,

Pedersen and Vrugt, 2018]): [98]

_C_ ( _t, t_ + ∆ _t, T_ ) = _[P]_ [(] _[t]_ [ + ∆] _[t][,][ T]_ [)] _[ −]_ _[P]_ [(] _[t][,][ T]_ [)] (413)

_P_ ( _t, T_ )

Here ∆ _t_ is the period over which carry is computed. A simplification arises if we

assume that the entire term structure of the interest rates stays constant, i.e., the

yield _R_ ( _t, T_ ) = _f_ ( _T −_ _t_ ) is a function of only _T −_ _t_ (i.e., time to maturity). Then,

at time _t_ + ∆ _t_ the yield is _R_ ( _t_ + ∆ _t, T_ ) = _R_ ( _t, T −_ ∆ _t_ ). So, we have [99]

_C_ ( _t, t_ + ∆ _t, T_ ) =

_P_ ( _t_ + ∆ _t, T_ ) _|R_ ( _t_ +∆ _t,T_ ) _−_ _P_ ( _t, T_ ) _|R_ ( _t,T_ )

_P_ ( _t, T_ ) _|R_ ( _t,T_ )

=

= _R_ ( _t, T_ ) ∆ _t_ + _Croll_ ( _t, t_ + ∆ _t, T_ ) (414)

where (taking into account the definition of the modified duration, Eq. (385))

_Croll_ ( _t, t_ + ∆ _t, T_ ) =

_P_ ( _t_ + ∆ _t, T_ ) _|R_ ( _t,T_ _−_ ∆ _t_ ) _−_ _P_ ( _t_ + ∆ _t, T_ ) _|R_ ( _t,T_ )

_P_ ( _t, T_ ) _|R_ ( _t,T_ )

_⇡_

_⇡_ _−_ ModD( _t, T_ ) [ _R_ ( _t, T −_ ∆ _t_ ) _−_ _R_ ( _t, T_ )] (415)

So, if the term structure of the interest rates is constant, then carry _C_ ( _t, t_ + ∆ _t, T_ )

receives two contributions: i) _R_ ( _t, T_ ) ∆ _t_ from the bond yield; and ii) _Croll_ ( _t, t_ +∆ _t, T_ )

from the bond rolling down the yield curve. A zero-cost strategy can be built, e.g.,

by buying bonds in the top decile by carry and selling bonds in the bottom decile.

## **5.12 Strategy: Rolling down the yield curve**

The objective of this strategy is to capture the "roll-down" component _Croll_ ( _t, t_ +

∆ _t, T_ ) of bond yields. These returns are maximized in the steepest segments of the

yield curve. Therefore, the trader can, e.g., buy longor medium-term bonds from

98 Here, for the sake of simplicity, we consider zero-coupon bonds. The end-result below is also

valid for coupon bonds.

99

For financed portfolios, _R_ ( _t, T_ ) in the second line of Eq. (414) is replaced by _R_ ( _t, T_ ) _−_ _rf_,

where _rf_ is the risk-free rate. However, this overall shift does not a↵etc the actual holdings in the

carry strategy below.

74

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

such segments and hold them while they are "rolling down the curve". [100] The bonds

must be sold as they approach maturity and the proceeds can be used to buy new

long/medium-term bonds from the steepest segment of the yield curve at that time.

## **5.13 Strategy: Yield curve spread (flatteners & steepeners)**

This strategy consists of buying or selling the yield curve spread. [101] The yield curve

spread is defined as the di↵erence between the yields of two bonds of the same issuer

with di↵erent maturities. If the interest rates are expected to fall, the yield curve

is expected to steepen. If the interest rates are expected to rise, the yield curve

is expected to flatten. The yield curve spread strategy can be summarized via the

following rule:

Rule =

(

Flattener: Short spread if interest rates are expected to rise

(416)

Steepener: Buy spread if interest rates are expected to fall

Shorting the spread amounts to selling shorter-maturity bonds (a.k.a. the front leg)

and buying longer-maturity bonds (a.k.a. the back leg). Buying the spread is the

- pposite trade: buying the front leg and selling the back leg. If the yield curve has
parallel shifts, this strategy can generate losses. Matching dollar durations of the
front and back legs immunizes the portfolio to small parallel shifts in the yield curve.

## **5.14 Strategy: CDS basis arbitrage**

A credit default swap (CDS) is insurance against default on a bond. [102] The CDS

price, known as the CDS spread, is a periodic (e.g., annual) premium per dollar

- f the insured debt. The CDS essentially makes the bond a risk-free instrument.
Therefore, the CDS spread should equal the bond yield spread, i.e., the spread
between the bond yield and the risk-free rate. The di↵erence between the CDS
spread and the bond spread is known as the CDS basis:

CDS basis = CDS spread _−_ bond spread (417)

100 For some literature on the "rolling down the yield curve" strategies, see, e.g., [Ang, Alles

and Allen, 1998], [Bieri and Chincarini, 2004], [Bieri and Chincarini, 2005], [Dyl and Joehnk,

1981], [Grieves _et al_, 1999], [Grieves and Marcus, 1992], [Osteryoung, McCarty and Roberts, 1981],

[Pantalone and Platt, 1984], [Pelaez, 1997].

101 For some literature on yield curve spread strategies, the yield curve dynamics and related

topics, see, e.g., [Bernadell, Coche and Nyholm, 2005], [Boyd and Mercer, 2010], [Chua, Koh

and Ramaswamy, 2006], [Diebold and Li, 2002], [Diebold, Rudebusch and Aruoba, 2006], [Dolan,

1999], [Evans and Marshall, 2007], [F¨uss and Nikitina, 2011], [Jones, 1991], [Kalev and Inder,

2006], [Krishnamurthy, 2002], [Shiller and Modigliani, 1979].

102 For some literature on CDS basis arbitrage and related topics, see, e.g., [Bai and CollinDufresne, 2013], [Choudhry, 2004], [Choudhry, 2006], [Choudhry, 2007], [De Wit, 2006], [Fontana,

2010], [Fontana and Scheicher, 2016], [Kim, Li and Zhang, 2016], [Kim, Li and Zhang, 2017],

[Nashikkar, Mahanti, 2011], [Rajan, McDermott and Roy, 2007], [Wang, 2014], [Zhu, 2006].

75

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

Negative basis indicates that the bond spread is too high relative to the CDS spread,

i.e., the bond is relatively cheap. The CDS arbitrage trade then amounts to buying

the bond and insuring it with the CDS [103] thereby generating a risk-free profit. [104]

## **5.15 Strategy: Swap-spread arbitrage**

This dollar-neutral strategy consists of a long (short) position in an interest rate

swap (see Subsection 5.1.4) and a short (long) position in a Treasury bond (with the

constant yield _YTreasury_ ) with the same maturity as the swap. A long (short) swap

involves receiving (making) fixed rate _rswap_ coupon payments in exchange for making

(receiving) variable rate coupon payments at LIBOR (the London Interbank O↵er

Rate) _L_ ( _t_ ). The short (long) position in the Treasury bond generates (is financed at)

the "repo rate" (the discount rate at which the central bank repurchases government

securities from commercial banks) _r_ ( _t_ ) in a margin account. The per-dollar-invested

rate _C_ ( _t_ ) at which this strategy generates P&L is given by

_C_ ( _t_ ) = _±_ [ _C_ 1 _−_ _C_ 2( _t_ )] (418)

_C_ 1 = _rswap −_ _YTreasury_ (419)

_C_ 2( _t_ ) = _L_ ( _t_ ) _−_ _r_ ( _t_ ) (420)

where the plus (minus) sign corresponds to the long (short) swap strategy. The long

(short) swap strategy is profitable if LIBOR falls (rises). So, this is a LIBOR bet. [105]

# **6 Indexes**

## **6.1 Generalities**

An index is a diversified portfolio of assets combined with some weights. The underlying assets are often stocks, e.g., in indexes such as DJIA, S&P 500, Russell 3000,

etc. DJIA weights are based on price, while S&P 500 and Russell 3000 weights are

based on market capitalization. Investment vehicles such as index futures, indexbased ETFs, etc., allow gaining exposure to a broad index with a single trade. [106]

103 Note that the CDS is equivalent to a synthetic short bond position.

104 In the case of positive basis, theoretically one would enter into the opposite trade, i.e., selling

the bond and selling the CDS. However, in practice this would usually imply that the trader already

- wns the bond and the CDS, i.e., this would amount to unwinding an existing position.

105 For some literature on swap spreads and related topics, see, e.g., [Asgharian and Karlsson,

2008], [Aussenegg, G¨otz and Jelic, 2014], [Chen and Selender, 1994], [Collin-Dufresne and Solnik,

2001], [Duarte, Longsta↵and Yu, 2006], [Dubil, 2011], [Duffie, 1996], [Duffie and Singleton, 1997b],

[Feldh¨utter and Lando, 2008], [Fisher, 2002], [Jermann, 2016], [Jordan and Jordan, 1997], [Kambhu,

2006], [Keane, 1996], [Klingler and Sundaresan, 2016], [Kobor, Shi and Zelenko, 2005], [Lang,

Litzenberger and Liu, 1998], [Liu, Longsta↵and Mandell, 2006)], [Minton, 1997].

106 For some literature on indexes, see, e.g., [Antoniou and Holmes, 1995], [Beneish and Whaley,

1996], [Bologna and Cavallo, 2002], [Bos, 2000], [Chang, Cheng and Pinegar, 1999], [Chiang and

76

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **6.2 Strategy: Cash-and-carry arbitrage**

This strategy (a.k.a. "index arbitrage") aims to exploit price inefficiencies between

the index spot [107] price and index futures price. [108] Theoretically, the price of the

index futures must equal the spot price accounting for the cost of carry during the

life of the futures contract:

_F_ _[⇤]_ ( _t, T_ ) = [ _S_ ( _t_ ) _−_ _D_ ( _t, T_ )] exp ( _r_ ( _T −_ _t_ )) (421)

Here: _F_ _[⇤]_ ( _t, T_ ) is the theoretical ("fair") price, at time _t_, of the futures contract

with the delivery time _T_ ; _S_ ( _t_ ) is the spot value at time _t_ ; _D_ ( _t, T_ ) is the sum of

(discounted values of) the dividends paid by the underlying stocks between the time

_t_ and delivery; and _r_ is the risk-free rate, which for the sake of simplicity is assumed

to be constant from _t_ to delivery. [109] The basis is defined as

_B_ ( _t, T_ ) = _[F]_ [(] _[t][,][ T]_ [)] _[ −]_ _[F][ ⇤]_ [(] _[t][,][ T]_ [)] (422)

_S_ ( _t_ )

where _F_ ( _t, T_ ) is the current price of the futures contract with the delivery time _T_ .

If _B_ ( _t, T_ ) _6_ = 0, more precisely, if _|B_ ( _t, T_ ) _|_ exceeds the pertinent transaction costs of

executing the arbitrage trade, then there is an arbitrage opportunity. If the basis is

positive (negative), the futures price is rich (cheap) compared with the spot price,

so the arbitrage trade amounts to selling (buying) the futures and buying (selling)

the cash (i.e., the index basket). [110] The position is closed when the basis goes to

zero, i.e., the futures price converges to its fair value. Such arbitrage opportunities

are short-lived and with the advent of high frequency trading require extremely fast

execution. In many cases, the slippage can be prohibitive to execute the trade. [111]

## **6.3 Strategy: Dispersion trading in equity indexes**

This strategy takes long positions on volatilities of the index constituents and a

short position on index volatility. It is rooted in an empirical observation that, for

Wang, 2002], [Edwards, 1988], [Frino _et al_, 2004], [Graham and Pirie, 1994], [Hautcoeur, 2006],

[Illueca and Lafuente, 2003], [Kenett _et al_, 2013], [Lamoureux and Wansley, 1987], [Larsen and

Resnick, 1998], [Lo, 2016], [Schwartz and Laatsch, 1991], [Spyrou, 2005], [Yo, 2001].

107 "Spot" refers to the current value of the index based on the current prices of its constituents.

"Cash" refers to the underlying index portfolio. This is common trader lingo.

108 See, e.g., [Brenner, Subrahmanyam and Uno, 1989], [B¨uhler and Kempf, 1995], [Butterworth

and Holmes, 2010], [Chan and Chung, 1993], [Cornell and French, 1983], [Dwyer, Locke and Yu,

1996], [Fassas, 2011], [Puttonen, 1993], [Richie, Daigler and Gleason, 2008], [Yadav and Pope,

1990], [Yadav and Pope, 1994].

109 Eq. (421) further ignores some other pertinent aspects such as taxes, asymmetry of interest

rates (for long and short holdings), transaction costs, etc.

110 Selling the futures poses no issues. However, selling the cash can be problematic with shortselling issues such as hard-to-borrow securities, etc. Continuously maintaining a sizable dollarneutral book which is long cash and short futures can help circumvent such issues.

111 In some cases incomplete baskets approximating the index can be executed to reduce the

transaction costs, e.g., in market cap weighted indexes, by omitting lower cap (and thus less

liquid) stocks. However, such mishedges also increase the risk of losing money on the trade.

77

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

the most part, [112] the implied volatility e _σI_ from index options is sizably higher than

the theoretical index volatility _σI_ given by

_σI_ [2] [=]

_N_

X

_i,j_ =1

_wiwjσiσj⇢ij_ (423)

where _wi_ are the weights of the stocks in the index, _σi_ are their implied volatilities

from single-stock options, and _⇢ij_ is the sample correlation matrix ( _⇢ii_ = 1) [113]

computed based on a time series of historical returns. [114] Put di↵erently, the index

- ptions are priced higher than the price corresponding to the aforesaid theoretical
volatility. So, a basic strategy can be structured as follows. For each stock in the
index we have a long position in _ni_ (near-ATM) single-stock option straddles (whose
payo↵s are based on the stock prices _Pi_ ), and we have a short position in a (nearATM) option straddle for the index (whose payo↵is based on the index level _PI_ see below), where

_SiPI_

_ni_ = ~~P~~ _Ni_ =1 _[S][i][P][i]_

(424)

Here: _Si_ is shares outstanding for stock _i_ (we are assuming the index is market

cap weighted); and _PI_ is the index level. With this definition of _ni_, we have _PI_ =

P _Ni_ =1 _[n][i][P][i]_ [, so the index option straddle payo↵matches the individual single-stock]

- ption straddle payo↵s as closely as possible. [115] All options have approximately 1
month until the expiration, and all positions remain open until the expiration. [116]

**6.3.1** **Strategy: Dispersion trading – subset portfolio**

For some indexes, some component stocks may not have single-stock options. Often

these would be less liquid, lower market cap stocks. They would have to be excluded

112 But not always – see below. For some literature on index vs. constituent volatilities and

dispersion and correlation trading, see, e.g., [Carrasco, 2007], [Deng, 2008], [Lozovaia and Hizhniakova, 2005], [Marshall, 2008], [Marshall, 2009], [Maze, 2012], [Meissner, 2016], [Nelken, 2006].

113 Note that the pair-wise correlations _⇢ij_, _i 6_ = _j_, typically are unstable out-of-sample, which

can introduce a sizable error into this computation.

114 For some pertinent literature, see, e.g., [Bakshi and Kapadia, 2003a], [Bakshi and Kapadia,

2003b], [Bakshi, Kapadia and Madan, 2003], [Bollen and Whaley, 2004], [Branger and Schlag, 2004],

[Coval and Shumway, 2001], [Dennis and Mayhew, 2002], [Dennis, Mayhew and Stivers, 2006],

[Driessen, Maenhout and Vilkov, 2009], [Gˆarleanu, Pedersen and Poteshman, 2009], [Lakonishok

_et al_, 2007].

115 If ATM options are not available for a given stock, OTM options (close to ATM) can be used.

116 This strategy can be argued to be a volatility strategy. However, it can also be argued

to be correlation trading as the volatility of the portfolio depends on the correlations between

its components (see Eq. (423)). Thus, when the implied index volatility e _σI_ is higher than the

theoretical value _σI_, this can be (arguably) interpreted as the implied average pair-wise correlation

being higher than the average pair-wise correlation based on _⇢ij_ . In this regard, at times the index

implied volatility can be lower than its theoretical value, so the dispersion strategy that is short

index volatility would lose money and the reverse trade might be in order. See, e.g., [Deng, 2008].

78

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

from the bought portfolio. Reducing the number of bought underlying single-stock

- ptions is also desirable to reduce transaction costs. Furthermore, the sample correlation matrix _⇢ij_ is singular for a typical lookback period (e.g., daily close-to-close
returns, going back 1 year, which is about 252 trading days) as the number of assets
is large (500 for S&P 500 and even larger for other indexes). As mentioned above,
the pair-wise correlations are unstable out-of-sample, which increases errors in the
theoretical value _σI_ computed via Eq. (423). This can be mitigated as follows. [117]

The singular and unstable correlation matrix can be made nonsingular and more

stable by replacing it with a statistical risk model [Kakushadze and Yu, 2017a]. Let

_Vi_ [(] _[A]_ [)] be the principal components of _⇢ij_ with the eigenvalues _λ_ [(] _[A]_ [)] in the decreasing

- rder, _λ_ [(1)] _> λ_ [(2)] _> λ_ [(] _[r]_ [)], where _r_ is the rank of _⇢ij_ (if _r < N_, the other eigenvalues
are null: _λ_ [(] _[A]_ [)] = 0, _A > r_ ). The statistical risk model correlation matrix is given by

_j_ (425)

_ij_ = _⇠i_ [2] _[δ][ij]_ [+]

_K_

X

_A_ =1

_λ_ [(] _[A]_ [)] _V_ [(] _[A]_ [)]

_i_ [(] _[A]_ [)] _V_ [(] _[A]_ [)]

i2

(426)

_⇠i_ [2] [= 1] _[ −]_

_K_

X

_A_ =1

_λ_ [(] _[A]_ [)][ h]

_Vi_ [(] _[A]_ [)]

_V_ [(] _[A]_ [)]

where _K < r_ is the number of risk factors based on the first _K_ principal components

that are chosen to explain systematic risk, and _⇠i_ is the specific (a.k.a. idiosyncratic)

risk. The simplest way to fix _K_ is via eRank (e↵ective rank) [Roy and Vetterli,

2007] – see [Kakushadze and Yu, 2017a] for details and complete source code for

constructing _ij_ and fixing _K_ . So, now we can use _ij_ (instead of _⇢ij_ ) to compute

the theoretical volatility _σI_ :

_N_

X

" _i_ =1

2

_σI_ [2] [=]

_N_

X

_i,j_ =1

_wiwjσiσj_ _ij_ =

_i_ [2] _[⇠]_ _i_ [2]

_i_ [+]

_N_

X

_i_ =1

_w_ [2]

_i_ [2] _[σ]_ _i_ [2]

_K_

X

_A_ =1

_λ_ [(] _[A]_ [)] _Vi_ [(] _[A]_ [)] _wiσi_

(427)

The first term on the r.h.s. of Eq. (427) is due to the specific risk. The long portfolio

then contains only the straddles corresponding to the first _N⇤_ single-stock options

with the lowest _N⇤_ values of _w_ [2] _[σ]_ [2] _[⇠]_ [2][. E.g., for S&P 500 we can take] _[ N][⇤]_ [= 100.]

_i_ [2] _[σ]_ _i_ [2]

_i_ [2] _[⇠]_ _i_ [2]

_i_ [. E.g., for S&P 500 we can take] _[ N][⇤]_ [= 100.]

## **6.4 Strategy: Intraday arbitrage between index ETFs**

This strategy amounts to exploiting short-term mispricings between two ETFs (call

them ETF1 and ETF2) on the same underlying index. [118] It can be summarized as

117 The variation of the dispersion trading strategy we discuss here is similar but not identical

to the PCA (principal component analysis) based strategy discussed in [Deng, 2008], [Larsson and

Flohr, 2011], [Su, 2006]. The statistical risk model construction (see below) is more streamlined.

118 E.g., S&P 500 ETFs, SPDR Trust (ticker SPY) and iShares (ticker IVV). See, e.g., [Marshall,

Nguyen and Visaltanachoti]. For some additional literature on ETF arbitrage and related topics,

see, e.g., [Abreu and Brunnermeier, 2002], [Ackert and Tian, 2000], [Ben-David, Franzoni and

Moussawi, 2012], [Brown, Davies and Ringgenberg, 2018], [Cherry, 2004], [Dolvin, 2009], [Garvey

and Wu, 2009], [Hendershott and Moulton, 2011], [Johnson, 2008], [Maluf and Albuquerque, 2013].

79

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

follows:

Buy ETF2, short ETF1 if _P_ 1 _[Bid]_

1 _[Bid]_ _≥_ _P_ 2 _[Ask]_

2 _[Bid]_ _≥_ _P_ 1 _[Ask]_

2 _[Bid]_ _≥_ _P_ 1 _[Ask]_

1 _[Bid]_ _≥_ _P_ 2 _[Ask]_

2

(428)

Rule =

8

<

:

1 _≥_ 2 _⇥_ __

Liquidate position if _P_ 2 _[Bid]_ _≥_ _P_ 1 _[Ask]_

2 1

Buy ETF1, short ETF2 if _P_ 2 _[Bid]_ _≥_ _P_ 1

2 _≥_ 1 _⇥_ __

Liquidate position if _P_ 1 _[Bid]_ _≥_ _P_ 2 _[Ask]_

Here: __ is a predefined threshold, which is close to 1, e.g., __ = 1 _._ 002 (see, e.g.,

[Marshall, Nguyen and Visaltanachoti]); _P_ 1 _[Bid]_ and _P_ 2 _[Bid]_ are the bid prices for ETF1

1 _[Bid]_ and _P_ 2 _[Bid]_

[Marshall, Nguyen and Visaltanachoti]); _P_ 1 and _P_ 2 are the bid prices for ETF1

and ETF2, and _P_ 1 _[Ask]_ and _P_ 2 _[Ask]_ are the ask prices. Marketable "fill or kill" limit

1 _[Ask]_ and _P_ 2 _[Ask]_

and ETF2, and _P_ 1 _[Ask]_ and _P_ 2 _[Ask]_ are the ask prices. Marketable "fill or kill" limit

- rders can be used to execute the trades. Such arbitrage opportunities are ephemeral
and require a fast order execution system or else slippage will eat away the profits.

## **6.5 Strategy: Index volatility targeting with risk-free asset**

A volatility targeting strategy aims to maintain a constant volatility level, which can

be achieved by a periodic (weekly, monthly, etc.) rebalancing between a risky asset

- in this case an index – and a riskless asset (e.g., U.S. Treasury bills). [119] If _σ_ is
the volatility of the risky asset [120] and the volatility target is _σ⇤_, then the allocation
weight for the risky asset is given by [121] _w_ = _σ⇤/σ_, and the allocation weight for
the risk-free asset is 1 _−_ _w_ . To avoid overtrading and reduce transaction costs,
rebalancing (instead of periodically) can be done based, e.g., on a preset threshold
__, say, only if the percentage change _|_ ∆ _w|/w_ since the last rebalancing exceeds __ .

# **7 Volatility**

## **7.1 Generalities**

Some option trading strategies discussed in Section 2 are volatility strategies, in the

sense that they make bets on high or low future volatility. [122] There are various

ways to make volatility bets, and volatility can be viewed as an asset class of its

- wn. Historical volatility is based on a time series of past returns. In contrast,
implied volatility extracted from options is considered a forward-looking measure

- f volatility. [123] VIX (CBOE Volatility Index, a.k.a. the "uncertainty index" or the

119 For some pertinent literature, see, e.g., [Albeverio, Steblovskaya and Wallbaum, 2013], [Anderson, Bianchi and Goldberg, 2014], [Cirelli _et al_, 2017], [Cooper, 2010], [Giese, 2012], [Khuzwayo

and Mar´e, 2014], [Kim and Enke, 2016], [Kirby and Ostdiek, 2012], [Papageorgiou, Reeves and

Sherris, 2017], [Perchet, de Carvalho and Moulin, 2014], [Torricelli, 2018], [Zakamulin, 2014b].

120 Usually, this is implied volatility as opposed to historical volatility as the former is considered

to be forward-looking. Alternatively, it can be based on various volatility-forecasting techniques.

121 If there is a preset maximum leverage _L_, then _w_ is capped at _L_ .

122 E.g., long (short) straddles bet on increasing (decreasing) volatility.

123 See, e.g., [Abken and Nandi, 1996], [An´e and Labidi, 2001], [Canina and Figlewski, 1993],

[Christensen and Prabhala, 1998], [Derman and Kani, 1994], [Dumas, Fleming and Whaley, 1998],

80

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

"fear gauge index") [124] and other volatility indexes [125] and derivatives (options and

futures) on volatility indexes such as VIX provide avenues for volatility trading.

## **7.2 Strategy: VIX futures basis trading**

This is essentially a mean-reversion strategy. It is rooted in empirical observations

(see, e.g., [Mixon, 2007], [Nossman and Wilhelmsson, 2009], [Simon and Campasano,

2014]) [126] that the VIX futures basis (defined below) has essentially no forecasting

power for subsequent VIX changes but has substantial forecasting power for subsequent VIX futures price changes. The VIX futures basis _BV IX_ (for our purposes

here) is defined as

_BV IX_ = _PUX_ 1 _−_ _PV IX_ (429)

_D_ = _[B][V IX]_ (430)

_T_

Here: _PUX_ 1 is the price of the first-month contract VIX futures; [127] _PV IX_ is the

VIX price; _D_ is the daily roll value; and _T_ is the number of business days until

the settlement (which is assumed to be at least 10). Empirically, the futures prices

tend to fall for positive basis and rise for negative basis (mean-reversion). So, the

strategy amounts to shorting VIX futures when the VIX futures curve is upwardsloping (a.k.a. "contango", so the basis is positive), and buying VIX futures when

the VIX futures curve is downward-sloping (a.k.a. "backwardation", so the basis is

negative). Here is a simple trading rule (see, e.g., [Simon and Campasano, 2014]):

Rule =

8

<

:

Open long UX1 position if _D < −_ 0 _._ 10

Close long UX1 position if _D > −_ 0 _._ 05

Open short UX1 position if _D >_ 0 _._ 10

Close short UX1 position if _D <_ 0 _._ 05

(431)

A short (long) UX1 position is exposed to a risk of a sudden increase (decrease) in

the volatility, which typically occurs during equity market sell-o↵s (rallies), so this

risk can be hedged by, e.g., shorting (buying) mini-S&P 500 futures. [128] The hedge

[Dupire, 1994], [Glasserman and Wu, 2010], [He, Hsu and Rue, 2015], [Lamoureux and Lastrapes,

1993], [Mayhew, 1995], [Skiadopoulos, Hodges and Clewlow, 1999].

124 See, e.g., [¨Aij¨o, 2008], [Corrado and Miller, 2005], [Fleming, Ostdiek and Whaley, 1995],

[Maghrebi, Kim and Nishina, 2007], [Shaikh and Padhi, 2015], [Siriopoulos and Fassas, 2009],

[Skiadopoulos, 2004], [Whaley, 2000], [Whaley, 2009].

125 E.g., RVX (CBOE Russell 2000 Volatility Index), VXEEM (CBOE Emerging Markets ETF

Volatility Index), TYVIX (CBOE/CBOT 10-year U.S. Treasury Note Volatility Index), GVZ

(CBOE Gold ETF Volatility Index), EUVIX (CBOE/CME FX Euro Volatility Index), VXGOG

(CBOE Equity VIX on Google), VVIX (CBOE VIX of VIX Index), etc.

126 For some additional literature on VIX futures basis and related topics, see, e.g., [Buetow

and Henderson, 2016], [Donninger, 2014], [Fu, Sandri and Shackleton, 2016], [Lee, Liao and Tung,

2017], [Zhang, Shu and Brenner, 2010], [Zhang and Zhu, 2006].

127 UX1 has approximately 1 month to maturity, UX2 has approximately 2 months, etc.

128 Typically, VIX and the equity markets are anti-correlated.

81

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

ratio can be estimated, e.g., based on a historical serial regression of the VIX futures

price changes over the front-month mini-S&P 500 futures contract returns. [129]

## **7.3 Strategy: Volatility carry with two ETNs**

VXX is an exchange-traded note (ETN) that tracks VIX via a portfolio of shortmaturity (months 1 and 2) VIX futures contracts. To maintain a constant maturity,

at the close of each day, a portion of the shorter-maturity futures is sold and replaced

with the longer-maturity futures bought with the proceeds. Since the VIX futures

curve is in contango most of the time, the longer-maturity futures are priced higher

than the shorter-maturity futures, so this rebalancing amounts to a decay in the

value of VXX over time, which is known as the roll (or contango) loss. Further, as

time passes, the futures converge to the spot (VIX), so VXX loses value so long as

the VIX futures curve is in contango. VXZ is yet another ETN that tracks VIX via

a portfolio of medium-maturity (months 4 through 7) VIX futures. VXZ also su↵ers

roll loss, but to a lesser degree than VXX as the slope of the VIX futures curve in

contango decreases with maturity. [130] The basic strategy then is to short VXX and

buy VXZ with the hedge ratio that can be determined via a serial regression. [131]

This strategy is not without risks, however. There can be short-term spikes in VXX

(the corresponding spikes in VXZ usually are sizably smaller), which can lead to

substantial short-term P&L drawdowns, even if the strategy is overall profitable.

**7.3.1** **Strategy: Hedging short VXX with VIX futures**

Instead of using a long position in VXZ to hedge the short position in VXX, one

can directly use a basket of, e.g., medium-maturity VIX futures. [132] The _N_ VIX

futures have some weights _wi_ . These weights can be fixed in a variety of ways,

e.g., by minimizing the tracking error, i.e., by running a serial regression (with the

intercept) of VXX returns over the _N_ futures returns. Then we have:

_wi_ = _σX_

_N_

X

_j_ =1

_Cij_ _[−]_ [1] _[σ][j][⇢][j]_ (432)

129 See, e.g., [Simon and Campasano, 2014] for details.

130 For some literature on volatility ETNs and related topics, see, e.g., [Alexander and Korovilas,

2012], [Avellaneda and Papanicolaou, 2018], [DeLisle, Doran and Krieger, 2014], [Deng, McCann

and Wang, 2012], [Eraker and Wu, 2014], [Gehricke and Zhang, 2018], [Grasselli and Wagalath,

2018], [Hancock, 2013], [Husson and McCann, 2011], [Liu and Dash, 2012], [Liu, Pantelous and

von Mettenheim, 2018], [Moran and Dash, 2007].

131

We have _h_ = _β_ = _⇢σX_ _/σZ_, where: _h_ (known as the optimal hedge ratio) is the number

- f VXZ to buy for each VXX shorted; _β_ is the coefficient (for the VXZ returns) of the serial
regression (with the intercept) of the VXX returns over the VXZ returns; _σX_ and _σZ_ are the
historical volatilities of VXX and VXZ, respectively; and _⇢_ is the pair-wise historical correlation
between VXX and VXZ.

132 These can have maturities of, e.g., 4 through 7 months (thus mimicking the VXZ composition).

82

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

Here: _⇢i_ is the pair-wise historical correlation between the futures labeled by _i_ and

VXX; _Cij_ is the _N ⇥_ _N_ sample covariance matrix for the _N_ futures ( _σi_ [2] [=] _[ C][ii]_ [is the]

historical variance for the futures labeled by _i_ ); and _σX_ is the historical volatility of

VXX. Some _wi_ may turn out to be negative. This is not necessarily an issue, but

- ne may wish to impose the bounds _wi ≥_ 0. Further, one may wish the strategy to
be dollar-neutral, which would amount to imposing the constraint

_N_

X

_i_ =1

_wi_ = 1 (433)

which the optimal hedge ratios (432) generally do not satisfy. Also, instead of

minimizing the tracking error, one may wish to minimize the variance of the entire

portfolio. And so on. The portfolio can be rebalanced monthly or more frequently.

## **7.4 Strategy: Volatility risk premium**

Empirical evidence indicates that implied volatility tends to be higher than realized

volatility most of the time, which is known as the "volatility risk premium". [133]

Simply put, most of the time options are priced higher than the prices one would

expect based on realized volatility, so the idea is to sell volatility. E.g., the trader

can sell straddles based on S&P 500 options. As a possible proxy for volatility risk

premium, the trader can, e.g., use the di↵erence between VIX at the beginning of

the current month and the realized volatility (in %, as VIX is quoted in %) of S&P

500 daily returns since the beginning of the current month. If the spread is positive,

the trader sells the straddle. If the volatility spikes (which usually happens if the

market sells of), the strategy will lose money. It is profitable in sideways markets. [134]

**7.4.1** **Strategy: Volatility risk premium with Gamma hedging**

The ATM straddles in the above strategy are Delta-neutral. [135] So, this is a "Vega

play", i.e., the trader is shorting Vega. If the underlying (S&P 500) moves, the

short straddle is no longer Delta-neutral: if the underlying goes up (down), Delta

becomes negative (positive). So a variation of this strategy is to use Gamma hedging

to keep the strategy close to Delta-neutral, which is achieved by buying (selling) the

underlying if it moves up (down). Then this becomes a "Theta play", i.e., the

133 For some pertinent literature, see, e.g., [Bakshi and Kapadia, 2003a], [Bollerslev, Gibson and

Zhou, 2011], [Carr and Wu, 2009], [Carr and Wu, 2016], [Christensen and Prabhala, 1998], [Eraker,

2009], [Ge, 2016], [Miao, Wei and Zhou 2012], [Prokopczuk and Simen, 2014], [Saretto and Goyal,

2009], [Todorov, 2010].

134 Also, index options are better suited for this strategy than single-stock options as index

- ptions typically have higher volatility risk premia (see Subsection 6.3).

135 Some of the Greeks for options are: ⇥= _@V/@t_ (Theta), ∆= _@V/@S_ (Delta), Γ = _@_ 2 _V/@S_ 2

(Gamma), _⌫_ = _@V/@σ_ (Vega). Here: _V_ is the value of the option; _t_ is time; _S_ is the price of the

underlying; _σ_ is the implied volatility.

83

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

strategy now aims to capitalize on the Theta-decay of the value of the sold options.

So, the price of this is the cost of the Gamma hedging, which reduces the P&L. As

the underlying moves more and more away from the strike of the sold put and call

- ptions, the Gamma hedge becomes more and more expensive and eventually will
exceed the collected option premia, at which point the strategy starts losing money.

## **7.5 Strategy: Volatility skew – long risk reversal**

OTM put options with the underlying at _S_ 0 = _K_ + __ tend to be priced higher than

OTM call options with the underlying at _S_ 0 = _K −_ __ (here _K_ is the strike price,

and _>_ 0 is the distance from the strike). I.e., with all else being equal, the implied

volatility for puts is higher than for calls. [136] The long risk reversal strategy (see

Subsection 2.12), where the trader buys an OTM call option and sells an OTM put

- ption, captures this skew. However, this is a directional strategy – it loses money
if the price of the underlying drops below _Kput −_ _C_, where _Kput_ is the strike price

- f the put, and _C >_ 0 is the premium of the put minus the premium of the call.

## **7.6 Strategy: Volatility trading with variance swaps**

One issue with trading volatility using options is the need to (almost continuously)

Delta-hedge the position to avoid directional exposure, [137] which practically can be

both cumbersome and costly. To avoid the need for Delta-hedging, one can make

volatility bets using variance swaps. A variance swap is a derivative contract whose

payo↵ _P_ ( _T_ ) at maturity _T_ is proportional to the di↵erence between the realized

variance _v_ ( _T_ ) of the underlying and the preset variance strike _K_ :

_P_ ( _T_ ) = _N ⇥_ ( _v_ ( _T_ ) _−_ _K_ ) (434)

_v_ ( _T_ ) = _[F]_

_T_

_R_ ( _t_ ) = ln

_S_ ( _t_ )

 _S_ ( _t −_ 1)

_T_

X

_t_ =1

(436)

_R_ [2] ( _t_ ) (435)

Here: _t_ = 0 _,_ 1 _, …, T_ labels sample points (e.g., trading days); _S_ ( _t_ ) is the price of

the underlying at time _t_ ; _R_ ( _t_ ) is the log-return from _t_ _−_ 1 to _t_ ; _F_ is the annualization

factor (thus, if _t_ labels trading days, then _F_ = 252); and _N_ is the "variance notional",

which is preset. Note that in Eq. (435) the mean of _R_ ( _t_ ) over the period _t_ = 1 to

_t_ = _T_ is not subtracted, hence _T_ in the denominator. [138] Long (short) variance swap

136 For some pertinent literature, see, e.g., [Bondarenko, 2014], [Chambers _et al_, 2014], [Corrado

and Su, 1997], [Damghani and Kos, 2013], [DeMiguel _et al_, 2013], [Doran and Krieger, 2010],

[Doran, Peterson and Tarrant, 2007], [Fengler, Herwartz and Werner, 2012], [Flint and Mar´e,

2017], [Jackwerth, 2000], [Kozhan, Neuberger and Schneider, 2013], [Liu and van der Heijden,

2016], [Mixon, 2011], [Zhang and Xiang, 2008].

137 See Subsection 7.4.1 for a Delta-hedging strategy (a.k.a. "Gamma scalping").

138 If the mean is subtracted, then the denominator would be _T −_ 1 instead.

84

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

is a bet that the future realized volatility will be higher (lower) than the current

implied volatility. Long (short) variance swaps can therefore be used instead of,

e.g., long (short) straddles to go long (short) volatility. For instance, the dispersion

strategy of Subsection 6.3 can be executed by selling a variance swap on an index and

buying variance swaps on the index constituents (cf. selling and buying straddles). [139]

# **8 Foreign Exchange (FX)**

## **8.1 Strategy: Moving averages with HP filter**

In Subsection 3.12 we discussed a trading strategy for stocks wherein the trading

signal is based on 2 intersecting (shorter and longer) moving averages. A similar

approach can be applied to FX as well. However, FX spot rate time series tend

to be rather noisy, which can lead to false signals based on moving averages. To

mitigate this, before computing the moving averages, the higher-frequency noise can

first be filtered out, e.g., using the so-called Hodrick-Prescott (HP) filter. [140] Then,

the remaining lower-frequency trend component (as opposed to the raw spot rate)

can be used to compute the moving averages and generate the trading signal (see,

e.g., [Harris and Yilmaz, 2009]). The HP filter is given by:

_S_ ( _t_ ) = _S_ _[⇤]_ ( _t_ ) + _⌫_ ( _t_ ) (437)

_T_ _−_ 1

X

_t_ =2

[ _S_ _[⇤]_ ( _t_ + 1) _−_ 2 _S_ _[⇤]_ ( _t_ ) + _S_ _[⇤]_ ( _t −_ 1)] [2] (438)

_g_ =

_T_

X

_t_ =1

[ _S_ ( _t_ ) _−_ _S_ _[⇤]_ ( _t_ )] [2] + _λ_

_g !_ min (439)

Here: the objective function _g_ is minimized w.r.t. the set of _T_ values of _S_ _[⇤]_ ( _t_ ), _t_ =

1 _, …, T_ ; _S_ ( _t_ ) is the FX spot rate at time _t_ ; _S_ _[⇤]_ ( _t_ ) is the lower-frequency ("regular")

component; _⌫_ ( _t_ ) is the higher-frequency ("irregular") component, which is treated as

noise; the first term in Eq. (438) minimizes the noise, while the second term (based

- n the discretized second derivative of _S_ _[⇤]_ ( _t_ )) penalizes the variation in _S_ _[⇤]_ ( _t_ ); and _λ_
is the smoothing parameter. There is no "fundamental" method to fix _λ_ . Sometimes
(but not always) it is set to _λ_ = 100 _⇥n_ [2], where _n_ is the data frequency measured on

139 For some literature on variance swaps, see, e.g., [A¨ıt-Sahalia, Karaman and Mancini, 2015],

[Bernard, Cui and Mcleish, 2014], [Broadie and Jain, 2008], [Bossu, 2006], [Carr and Lee, 2007],

[Carr and Lee, 2009], [Carr, Lee and Wu, 2012], [Demeterfi _et al_, 1999], [Elliott, Siu and Chan,

2007], [Filipovi´c, Gourier and Mancini, 2016], [Hafner and Wallmeier, 2007], [H¨ardle and Silyakova,

2010], [Jarrow _et al_, 2013], [Konstantinidi and Skiadopoulos, 2016], [Leontsinis and Alexander,

2016], [Liverance, 2010], [Martin, 2011], [Rujivan and Zhu, 2012], [Schoutens, 2005], [Wystup and

Zhou, 2014], [Zhang, 2014], [Zheng and Kwok, 2014].

140 A.k.a. the Whittaker-Henderson method in actuarial sciences. For some pertinent literature,

see, e.g., [Baxter and King, 1999], [Bruder _et al_, 2013], [Dao, 2014], [Ehlgen, 1998], [Harris and

Yilmaz, 2009], [Harvey and Trimbur, 2008], [Henderson, 1924], [Henderson, 1925], [Henderson,

1938], [Hodrick and Prescott, 1997], [Joseph, 1952], [Lahmiri, 2014], [Mcelroy, 2008], [Weinert,

2007], [Whittaker, 1923], [Whittaker, 1924].

85

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

an annual basis (see, e.g., [Baxter and King, 1999] for more detail). So, for monthly

data, which is what is usually used in this context, _n_ = 12. The estimation period

usually spans several years (of monthly data). Once _S_ _[⇤]_ ( _t_ ) is determined, two moving

averages MA( _T_ 1) and MA( _T_ 2), _T_ 1 _< T_ 2, are calculated based on _S_ _[⇤]_ ( _t_ ). Then, as

before, MA( _T_ 1) _>_ MA( _T_ 2) is a buy signal, and MA( _T_ 1) _<_ MA( _T_ 2) is a sell signal.

## **8.2 Strategy: Carry trade**

Pursuant to "Uncovered Interest Rate Parity" (UIRP), excess interest earned in

- ne country compared with another country due to a di↵erential between risk-free
interest rates in these countries would be precisely o↵set by depreciation in the FX
rate between their currencies:

(1 + _rd_ ) = _[E][t]_ [(] _[S]_ [(] _[t]_ [ +] _[ T]_ [))] (1 + _rf_ ) (440)

_S_ ( _t_ )

Here: _rd_ is the domestic interest rate; _rf_ is the foreign interest rate; both _rd_ and _rf_

are assumed to be constant over the compounding period _T_ ; _S_ ( _t_ ) is the spot FX rate

at time _t_, which is the worth of 1 unit of the foreign currency in units of the domestic

currency; and _Et_ ( _S_ ( _t_ + _T_ )) is the future (at time _t_ + _T_ ) spot FX rate expected at

time _t_ . [141] UIRP does not always hold, giving rise to trading opportunities – which

are _not_ risk-free arbitrage opportunities (see below). Thus, UIRP implies that high

interest rate currencies should depreciate w.r.t. low interest rate currencies, whereas

empirically on average the opposite tends to transpire, i.e., such currencies tend to

appreciate (somewhat). [142] So, the basic carry strategy amounts to writing (i.e.,

selling) forwards on currencies that are at a forward premium, i.e., the forward FX

rate _F_ ( _t, T_ ) exceeds the spot FX rate _S_ ( _t_ ), and buying forwards on currencies that

are at a forward discount, i.e., the forward FX rate _F_ ( _t, T_ ) is lower than the spot

FX rate _S_ ( _t_ ). [143] The forward FX rate is given by [144]

_F_ ( _t, T_ ) = _S_ ( _t_ ) [1 +] _[ r][d]_

1 + _rf_

(441)

141 Thus, 1 USD invested at time _t_ in a risk-free asset in the U.S. would be forth (1+ _rd_ ) USD at

time _t_ + _T_ . Alternatively, 1 USD would buy 1 _/S_ ( _t_ ) JPY at time _t_, which sum could be invested in

a risk-free asset in Japan at time _t_, which would be worth (1 _/S_ ( _t_ )) _⇥_ (1 + _rf_ ) JPY at time _t_ + _T_,

which in turn could be expected to be exchanged for ( _Et_ ( _S_ ( _t_ + _T_ )) _/S_ ( _t_ )) _⇥_ (1 + _rf_ ) USD at time

_t_ + _T_ . Requiring that the U.S. and Japan investments yield the same return gives Eq. (440).

142 This is known as "forward premium/discount anomaly/puzzle" or "Fama puzzle". For some

literature on UIRP and related topics, see, e.g., [Anker, 1999], [Ayuso and Restoy, 1996], [Bacchetta and van Wincoop, 2006], [Bacchetta and van Wincoop, 2010], [Baillie and Osterberg,

2000], [Bekaert, Wei and Xing, 2007], [Beyaert, Garc´ıa-Solanes, and P´erez-Castej´on, 2007], [Bilson, 1981], [Chaboud and Wright, 2005], [Engel, 1996], [Fama, 1984], [Frachot, 1996], [Froot and

Thaler, 1990], [Hansen and Hodrick, 1980], [Harvey, 2015], [Hodrick, 1987], [Ilut, 2012], [Lewis,

1995], [Lustig and Verdelhan, 2007], [Mark and Wu, 2001], [Roll and Yan, 2008].

143 Ignoring transaction costs, this is equivalent to borrowing (lending) low (high) interest rate

currencies without hedging the FX rate risk.

144 This is known as "Covered Interest Rate Parity" (CIRP). Note that, assuming Eq. (441)

holds (see below), when UIRP (i.e., Eq. (440)) does not hold, _F_ ( _t, T_ ) _6_ = _Et_ ( _S_ ( _t_ + _T_ )).

86

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

As mentioned above, the carry strategy [145] is not without risks: this trade can generate losses if the borrowed (lent) currency suddenly appreciates (depreciates) w.r.t.

its counterpart, i.e., it is exposed to the FX rate risk. On the other hand, if we borrow

the low interest rate currency with the maturity date _T_, invest the funds in the high

interest rate currency, and hedge this position with a forward contract to exchange

the high interest rate currency for the low interest rate currency at maturity _T_ (so

we can cover the loan), ignoring the transaction costs (and other subtleties such as

taxes, etc.), this is a risk-free position and any gains therefrom would amount to

risk-free arbitrage. Hence Eq. (441), which is a no-risk-free-arbitrage condition. [146]

**8.2.1** **Strategy: High-minus-low carry**

The carry strategy discussed above can be applied to individual foreign currencies.

It can also be applied cross-sectionally, to multiple foreign currencies. Let _s_ ( _t_ ) =

ln( _S_ ( _t_ )) (log spot FX rate) and _f_ ( _t, T_ ) = ln( _F_ ( _t, T_ )) (log forward FX rate). The

forward discount _D_ ( _t, T_ ) is defined as

_D_ ( _t, T_ ) = _s_ ( _t_ ) _−_ _f_ ( _t, T_ ) (442)

Pursuant to CIRP, Eq. (441), we have

_D_ ( _t, T_ ) = ln

1 + _rf_

✓ 1 + _rd_

_⇡_ _rf −_ _rd_ (443)

For a positive forward discount, we buy a forward (i.e., borrow the domestic currency and invest in the foreign currency), and the higher the forward discount,

the more profitable the strategy. For a negative forward discount, we sell a forward (i.e., borrow the foreign currency and invest in the domestic currency), and

the lower the forward discount, the more profitable the strategy. So, we can construct a cross-sectional trade (including a zero-cost, i.e., dollar-neutral trade – see,

e.g., [Lustig, Roussanov and Verdelhan, 2011]) by buying forwards on currencies in

some top quantile [147] by forward discount and selling forwards on currencies in the

corresponding bottom quantile. The forwards can, e.g., be one-month forwards.

145 For some literature on currency carry trades and related topics, see, e.g., [Bakshi and Panay

- tov, 2013], [Brunnermeier, Nagel and Pedersen, 2008], [Burnside _et al_, 2011], [Burnside, Eichenbaum and Rebelo, 2007], [Burnside, Eichenbaum and Rebelo, 2008], [Clarida, Davis and Pedersen,
2009], [Deardor↵, 1979], [Doskov and Swinkels, 2015], [Hau, 2014], [Jurek, 2014], [Lustig, Roussanov
and Verdelhan, 2011], [Lustig, Roussanov and Verdelhan, 2014], [Olmo and Pilbeam, 2009], [Ready,
Roussanov and Ward, 2017], [Rhee and Chang, 1992].

146 Nonetheless, deviations from CIRP (i.e., Eq. (441)) do occur, which gives rise to covered

interest arbitrage. See, e.g., [Akram, Rime and Sarno, 2008], [Avdjiev _et al_, 2016], [Baba and

Packer, 2009], [Boulos and Swanson, 1994], [Clinton, 1988], [Co↵ey, Hrung and Sarkar, 2009],

[Cosandier and Lang, 1981], [Du, Tepper and Verdelhan, 2018], [Duffie, 2017], [Frenkel and Levich,

1975], [Frenkel and Levich, 1981], [Liao, 2016], [Mancini-Gri↵oli and Ranaldo, 2011], [Popper,

1993], [Rime, Schrimpf and Syrstad, 2017].

147 Unlike stocks, that number in thousands, there is a limited number of currencies to play with.

Therefore, one does not necessarily have the luxury of taking top and bottom deciles by forward

discount. So, this quantile can be a half, a third, etc., depending on the number of currencies.

87

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **8.3 Strategy: Dollar carry trade**

This strategy is based on the average cross-sectional forward discount _D_ ( _t, T_ ) (see,

e.g., [Lustig, Roussanov and Verdelhan, 2014]) for a basket of _N_ foreign currencies:

_D_ ( _t, T_ ) = [1]

_N_

_N_

X

_i_ =1

_Di_ ( _t, T_ ) (444)

where _Di_ ( _t, T_ ) is the forward discount for the currency labeled by _i_ = 1 _, …, N_ . This

strategy then goes long (short), with equal weights, all _N_ foreign currency forwards

when _D_ ( _t, T_ ) is positive (negative), where _T_ can be 1 _,_ 2 _,_ 3 _,_ 6 _,_ 12 months. Empirical

evidence suggests that this strategy relates to the state of the U.S. economy, to wit,

when the U.S. economy is weak, the average forward discount tends to be positive. [148]

## **8.4 Strategy: Momentum & carry combo**

This is a combination of the momentum strategy (Subsection 8.1) [149] and the carry

strategy (Subsection 8.2), or their variations. There is a variety of ways these

strategies can be combined (including an equally weighted combo, or some ideas

discussed in, e.g., Subsection 3.6 and Subsection 4.6). A simple combination is based

- n minimizing the variance of the combo strategy using the sample covariance matrix
- f historical returns _R_ 1( _ts_ ) and _R_ 2( _ts_ ) of the two strategies (see, e.g., [Olszweski and
Zhou, 2013]). Let (here Var and Cor are serial variance and correlation, respectively)

_σ_ 1 [2] [= Var(] _[R]_ [1][(] _[t][s]_ [))] (445)

_σ_ 2 [2] [= Var(] _[R]_ [2][(] _[t][s]_ [))] (446)

_⇢_ = Cor( _R_ 1( _ts_ ) _, R_ 2( _ts_ )) (447)

Then minimizing the historical variance of the combined return _R_ ( _ts_ ) fixes the strategy weights _w_ 1 and _w_ 2:

_R_ ( _ts_ ) = _w_ 1 _R_ 1( _ts_ ) + _w_ 2 _R_ 2( _ts_ ) (448)

_w_ 1 + _w_ 2 = 1 (449)

Var( _R_ ( _ts_ )) _!_ min (450)

_σ_ 2 [2]

_w_ 1 =

(451)

2 [2] _[−]_ [2] _[σ]_ [1] _[σ]_ [2] _[⇢]_

_σ_ 2 _[−]_ _[σ]_ [1] _[σ]_ [2] _[⇢]_

_σ_ [2] [+] _[ σ]_ [2] _[−]_ [2] _[σ]_

1 [2] [+] _[ σ]_ 2 [2]

_σ_ 1 [2]

_w_ 2 =

(452)

2 [2] _[−]_ [2] _[σ]_ [1] _[σ]_ [2] _[⇢]_

_σ_ 1 _[−]_ _[σ]_ [1] _[σ]_ [2] _[⇢]_

_σ_ [2] [+] _[ σ]_ [2] _[−]_ [2] _[σ]_

1 [2] [+] _[ σ]_ 2 [2]

148 See, e.g., [Cooper and Priestley, 2008], [Joslin and Konchitchki, 2018], [Joslin, Priebsch and

Singleton, 2014], [Lustig, Roussanov and Verdelhan, 2014], [Stambaugh, 1988], [Tille, Sto↵els and

Gorbachev, 2001].

149 For additional literature on FX momentum strategies and related topics, see, e.g., [Accominotti and Chambers, 2014], [Ahmerkamp and Grant, 2013], [Burnside, Eichenbaum and

Rebelo, 2011], [Chiang and Jiang, 1995], [Grobys, Heinonen and Kolari, 2016], [Menkho↵ _et al_,

2012], [Okunev and White, 2003], [Serban, 2010].

88

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **8.5 Strategy: FX triangular arbitrage**

This strategy is based on 3 currency pairs. [150] Let these currencies be A, B and C.

Then we have 2 chains: i) exchange A for B, exchange B for C, and exchange C for A;

and ii) exchange A for C, exchange C for B, and exchange B for A. We will focus on

the first chain as the second one is obtained by swapping B for C. Each currency pair

has the bid and the ask; e.g., _Bid_ ( _A ! B_ ) and _Ask_ ( _B ! A_ ) for the A-B pair. So,

the rate at which A is exchanged into B is _Bid_ ( _A ! B_ ), while the rate at which B

is exchanged into A is 1 _/Ask_ ( _B ! A_ ). Therefore, _Bid_ ( _B ! A_ ) = 1 _/Ask_ ( _B ! A_ ),

and _Ask_ ( _A ! B_ ) = 1 _/Bid_ ( _A ! B_ ). In the chain i) above, the trader starts with A

and loops back to A with the overall exchange rate

1

_R_ ( _A ! B ! C ! A_ ) = _Bid_ ( _A ! B_ ) _⇥_ _Bid_ ( _B ! C_ ) _⇥_ (453)

_Ask_ ( _C ! A_ )

If this quantity is greater than 1, then the trader makes a profit. Such opportunities

are ephemeral, so fast market data and trade execution systems are critical here. [151]

# **9 Commodities**

## **9.1 Strategy: Roll yields**

When commodity futures are in backwardation (contango), i.e., when the term structure of futures prices is downward (upward) sloping, long (short) futures positions

- n average generate positive returns due to the roll yield. Roll yields come from rebalancing futures positions: when the current long (short) futures contract is about
to expire, it is sold (covered) and another futures contract with longer expiration is
bought (sold). Let

_φ_ = _P_ 1 _/P_ 2 (454)

where _P_ 1 is the front-month futures price, and _P_ 2 is the second-month futures price.

The ratio _φ_ is a measure of backwardation ( _φ >_ 1) and contango ( _φ <_ 1). A zerocost long-short portfolio can then be built based on _φ_, e.g., by buying commodity

futures with higher values of _φ_ and selling futures with lower values thereof. [152]

150 Albeit one can also consider more than 3 pairs, which is known as multi-currency arbitrage

(see, e.g., [Moosa, 2003a]).

151 For some literature on triangular arbitrage and related topics, see, e.g., [Aiba and Hatano,

2006], [Aiba _et al_, 2002], [Aiba _et al_, 2003], [Akram, Rime and Sarno, 2008], [Choi, 2011], [Cross

and Kozyakin, 2015], [Fenn _et al_, 2009], [Goldstein, 1964], [Gradojevic, Gen¸cay and Erdemlioglu,

2017], [Ito _et al_, 2012], [Moosa, 2001], [Morisawa, 2009], [Mwangi and Duncan, 2012], [Osu, 2010].

152 For some pertinent literature, see, e.g., [Anson, 1998], [Arnott _et al_, 2014], [Erb and Harvey,

2006], [Fama and French, 1987], [Fama and French, 1988], [Feldman and Till, 2006], [Fuertes, Mi↵re

and Fernandez-Perez, 2015], [Gorton, Hayashi and Rouwenhorst, 2013], [Gorton and Rouwenhorst,

2006], [Greer, 2000], [Leung _et al_, 2016], [Ma, Mercer and Walker, 1992], [Mou, 2010], [Mouakhar

and Roberge, 2010], [Symeonidis _et al_, 2012], [Taylor, 2016], [Telser, 1958].

89

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **9.2 Strategy: Trading based on hedging pressure**

This strategy is based on hedgers' and speculators' position data provided (weekly)

by the U.S. Commodity Futures Trading Commission (CFTC) in the Commitments

- f Traders (COT) reports. For each commodity, the "hedging pressure" (HP), separately for hedgers and speculators, is calculated as the number of long contracts
divided by the total number of contracts (long plus short). So, HP is between 0
and 1. High (low) hedgers' HP is indicative of contango (backwardation), while
high (low) speculators' HP is indicative of backwardation (contango). A zero-cost
portfolio can be constructed, e.g., as follows. First, the cross-section of commodities
is divided into the upper half and the lower half by the speculators' HP. Then, the
upper half commodity futures are bought if they are in the bottom quintile by the
hedgers' HP, and the lower half commodity futures are sold if they are in the top
quintile by the hedger's HP. Typical formation and holding periods are 6 months. [153]

## **9.3 Strategy: Portfolio diversification with commodities**

Commodity markets typically have a low correlation with equity markets, which can

be used to improve performance characteristics of equity portfolios by combining equity and commodity investments. There are di↵erent ways to do this. A "passive

approach" would amount to buying commodities with a preset portion of the available funds, holding them, and rebalancing the portfolio with some periodicity (e.g.,

monthly or annually). An "active approach" would amount to a tactical asset allocation approach via increasing/decreasing the exposure to commodities based on an

increase/decrease in the Fed discount rate (empirically, commodity returns tend to

be sizably correlated with the Fed monetary policy) or some other methodology. [154]

## **9.4 Strategy: Value**

This strategy is similar to the value strategy for stocks (see Subsection 3.3). Value

for commodities can be defined as, e.g., the ratio (see, e.g., [Asness, Moskowitz and

153 For some literature on trading strategies based on such data and related topics, see, e.g., [Basu

and Mi↵re, 2013], [Bessembinder, 1992], [Carter, Rausser and Schmitz, 1983], [Cheng and Xiong,

2013], [de Roon, Nijman and Veld, 2000], [Dewally, Ederington and Fernando, 2013], [FernandezPerez, Fuertes and Mi↵re, 2016], [Fishe, Janzen and Smith, 2014], [Fuertes, Mi↵re and FernandezPerez, 2015], [Hirshleifer, 1990], [Lehecka, 2013], [Mi↵re, 2012], [Switzer and Jiang, 2010].

154 For some literature on diversification strategies using commodities and related topics, see,

e.g., [Adams and Gl¨uck, 2015], [Bernardi, Leippold and Lohre, 2018], [Bjornson and Carter, 1997],

[Blitz and Van Vliet, 2008], [Bodie, 1983], [Bodie and Rosansky, 1980], [Chan _et al_, 2011], [Chance,

1994], [Chong and Mi↵re, 2010], [Conover _et al_, 2010], [Creti, Jo¨ets and Mignon, 2013], [Daumas,

2017], [Draper, Fa↵and Hillier, 2006], [Edwards and Park, 1996], [Elton, Gruber and Rentzler,

1987], [Frankel, 2006], [Gorton and Rouwenhorst, 2006], [Greer, 1978], [Greer, 2007], [Hess, Huang

and Niessen, 2008], [Jensen, Johnson and Mercer, 2000], [Jensen, Johnson and Mercer, 2002],

[Kaplan and Lummer, 1998], [Lummer and Siegel, 1993], [Marshall, Cahan and Cahan, 2008],

[Mi↵re and Rallis, 2007], [Nguyen and Sercu, 2010], [Taylor, 2004], [Vrugt _et al_, 2007], [Wang and

Yu, 2004], [Weiser, 2003].

90

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

Pedersen, 2013])

_v_ = _P_ 5 _/P_ 0 (455)

where _P_ 5 is the spot price 5 years ago, [155] and _P_ 0 is the current spot price. Then one

can build a zero-cost portfolio by, e.g., buying the commodities in the top tercile by

value, and selling those in the bottom tercile. The portfolio is rebalanced monthly.

## **9.5 Strategy: Skewness premium**

This strategy is based on the empirically observed negative correlation between the

skewness of historical returns and future expected returns of the commodity futures.

The skewness _Si_ is defined as ( _i_ = 1 _, …, N_ labels di↵erent commodities):

1

_Si_ =

_σi_ [3] _[T]_

_T_

X

_s_ =1

⇥

_Ris −_ _Ri_

3

⇤ (456)

_Ri_ = [1]

_T_

_T_

X

_s_ =1

_Ris_ (457)

1

_σi_ [2] [=] _T −_ 1

_T_

X

_s_ =1

⇥

_Ris −_ _Ri_

2

⇤ (458)

where _Ris_ are the time series of historical returns (with _T_ - bservations in each time

series). A zero-cost strategy can be built by, e.g., buying the commodity futures in

the bottom quintile by skewness, and selling the futures in the top quintile. [156]

## **9.6 Strategy: Trading with pricing models**

Commodity futures term structure is nontrivial. One way to model it is via stochastic processes. Let _S_ ( _t_ ) be the spot price, and let _X_ ( _t_ ) = ln( _S_ ( _t_ )). Then _X_ ( _t_ )

can be modeled using, e.g., a mean-reverting Brownian motion (i.e., the OrnsteinUhlenbeck process [Uhlenbeck and Ornstein, 1930]): [157]

_dX_ ( _t_ ) = __ [ _a −_ _X_ ( _t_ )] _dt_ + _σ dW_ ( _t_ ) (459)

155 Or the average spot price between 5.5 and 4.5 years ago.

156 See, e.g., [Fernandez-Perez _et al_, 2018]. For some additional pertinent literature, see, e.g.,

[Barberis and Huang, 2008], [Christie-David and Chaudry, 2001], [Eastman and Lucey, 2008],

[Gilbert, Jones and Morris 2006], [Junkus, 1991], [Kumar, 2009], [Lien, 2010], [Lien and Wang,

2015], [Mitton and Vorkink, 2007], [Stulz, 1996], [Tversky and Kahneman, 1992].

157 This is a one-factor model. More complex models including multifactor models, nonconstant/stochastic volatility models, etc., can be considered instead. For some literature on modeling futures prices via stochastic processes and related topics, see, e.g., [Andersen, 2010], [Bessembinder _et al_, 1995], [Borovkova and Geman, 2006], [Casassus and Collin-Dufresne, 2005], [Chaiyapo

and Phewchean, 2017], [Choi _et al_, 2014], [Geman and Roncoroni, 2006], [Gibson and Schwartz,

1990], [Hilliard and Reis, 1998], [Jankowitsch and Nettekoven, 2008], [Litzenberger and Rabinowitz,

1995], [Liu and Tang, 2011], [Milonas, 1991], [Miltersen and Schwartz, 1998], [Ng and Pirrong,

1994], [Nielsen and Schwartz, 2004], [Paschke and Prokopczuk, 2012], [Pindyck, 2001], [Routledge,

Seppi and Spatt, 2000], [Schwartz, 1997], [Schwartz, 1998], [Schwartz and Smith, 2000].

91

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

Here the parameters __ (mean-reversion parameter), _a_ (the long-run mean) and _σ_

(log-volatility) are assumed to be constant; and _W_ ( _t_ ) is a **Q** - Brownian motion,

where **Q** is a risk-free probability measure. [158] The standard claim pricing argument

(see, e.g., [Baxter and Rennie, 1996], [Hull, 2012], [Kakushadze, 2015a]) gives for

the futures price _F_ ( _t, T_ ) (which is the price at time _t_ - f the futures contract with

the delivery date _T_ )

_F_ ( _t, T_ ) = _Et_ ( _S_ ( _T_ )) (460)

ln( _F_ ( _t, T_ )) = _Et_ ( _X_ ( _T_ )) + [1] (461)

2 _[V][t]_ [(] _[X]_ [(] _[T]_ [))]

Here _Et_ ( _·_ ) and _Vt_ ( _·_ ) are the conditional expectation and variance, respectively, at

time _t_ . This gives:

ln( _F_ ( _t, T_ )) = exp ( _−_ ( _T −_ _t_ )) _X_ ( _t_ ) + _a_ [1 _−_ exp ( _−_ ( _T −_ _t_ ))] +

_σ_ [2]

+ (462)

4 __ [[1] _[ −]_ [exp (] _[−]_ [2] _[]_ [(] _[T][ −]_ _[t]_ [))]]

The parameters _, a, σ_ can be fitted using historical data (e.g., using nonlinear least

squares). Then the current market price can be compared to the model price to

identify the futures that are rich (sell signal) and cheap (buy signal) compared with

the model prediction. Here two cautionary remarks are in order. First, the model fit

could work in-sample but have no predictive power out-of-sample, so the forecasting

power needs to be ascertained (see, e.g., [Paschke and Prokopczuk, 2012]). Second, a

priori we could write down any reasonable term structure model with desirable qualitative properties (e.g., mean-reversion) and fit the parameters using historical data

without any reference to an underlying stochastic dynamics whatsoever, including

using, e.g., "black-box" machine learning techniques. So long as the model works

- ut-of-sample, there is no magic bullet here and "fancy" does not equal "better".

# **10 Futures**

## **10.1 Strategy: Hedging risk with futures**

Exposures to certain risks can be mitigated by hedging with futures. E.g., a grain

trader who at time _t_ anticipates that he or she will need to buy (sell) _X_ tons of soy

at a later time _T_ can hedge the risk of soy prices increasing (decreasing) between _t_

and _T_ by buying (selling) at time _t_ a futures contract with the delivery date _T_ for

the desired amount of soy. This simple strategy can have tweaks and variations. [159]

158 Note that this model reduces to the Black-Scholes model [Black and Scholes, 1973] in the

limit __ _!_ 0, _a ! 1_, _a_ = fixed.

159 For some literature on hedging with futures, see, e.g., [Ahmadi, Sharp and Walther, 1986],

[Cheung, Kwan and Yip, 1990], [Ederington, 1979], [G´eczy, Minton and Schrand, 1997], [Ghosh,

1993], [Grant, 2016], [Hanly, Morales and Cassells, 2018], [Lebeck, 1978], [Lien and Tse, 2000],

[Mun, 2016], [Wolf, 1987], [Working, 1953].

92

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

**10.1.1** **Strategy: Cross-hedging**

Sometimes a futures contract for the asset to be hedged may not be available. In

such cases, the trader may be able to hedge using a futures contract for another

asset with similar characteristics. [160] At maturity _T_, the payo↵of the cross-hedged

position established at time _t_ (assuming the short futures position with the unit

hedge ratio) is given by:

_S_ ( _T_ ) _−_ _F_ ( _T, T_ ) + _F_ ( _t, T_ ) =

[ _S⇤_ ( _T_ ) _−_ _F_ ( _T, T_ )] + [ _S_ ( _T_ ) _−_ _S⇤_ ( _T_ )] + _F_ ( _t, T_ ) (463)

Here: the subscript _⇤_ indicates that the underlying asset of the futures contract is

di↵erent from the hedged asset; _S_ ( _t_ ) is the spot price; _F_ ( _t, T_ ) is the futures price;

the first term on the r.h.s. represents the basis risk stemming from the di↵erence at

delivery between the futures and the spot prices; and the second term represents the

di↵erence twixt the two underlying prices. In practice, the optimal hedge ratio may

not be 1 and can be estimated via, e.g., a serial regression or some other method. [161]

**10.1.2** **Strategy: Interest rate risk hedging**

Fixed-income assets are sensitive to interest rate variations (see Section 5) and

futures contracts can be used to hedge the interest rate risk. A long (short) hedge

position amounts to buying (selling) interest rate futures in order to hedge against

an increase (decrease) in the price of the underlying asset, i.e., a decrease (increase)

in the interest rates. [162] The corresponding P&L ( _PL_ ( _t, T_ ) for the long hedge and

_PS_ ( _t, T_ ) for the short hedge, assuming the position is established at _t_ = 0 with the

unit hedge ratio and the maturity is _T_ ) is given by:

_PL_ ( _t, T_ ) = _B_ (0 _, T_ ) _−_ _B_ ( _t, T_ ) (464)

_PS_ ( _t, T_ ) = _B_ ( _t, T_ ) _−_ _B_ (0 _, T_ ) (465)

_B_ ( _t, T_ ) = _S_ ( _t_ ) _−_ _F_ ( _t, T_ ) (466)

160 For some literature on cross-hedging with futures, see, e.g., [Anderson and Danthine, 1981],

[Ankirchner _et al_, 2012], [Ankirchner and Heyne, 2012], [Benet, 1990], [Blake and Catlett, 1984],

[Blank, 1984], [Brooks, Davies and Kim, 2007], [Chen and Sutcli↵e, 2007], [Dahlgran, 2000], [DeMaskey, 1997], [DeMaskey and Pearce, 1998], [Foster and Whiteman, 2002], [Franken and Parcell,

2003], [Hartzog, 1982], [Lafuente, 2013], [McEnally and Rice, 1979], [Mun and Morgan, 1997].

161 For various optimal hedge ratio techniques, see, e.g., [Baillie and Myers, 1991], [Brooks and

Chong, 2001], [Brooks, Henry and Persand, 2002], [Cecchetti, Cumby and Figlewski, 1988], [Davis,

2006], [Holmes, 1996], [Lien, 1992], [Lien, 2004], [Lien and Luo, 1993], [Lindahl, 1992], [Low _et al_,

2002], [Kroner and Sultan, 1993], [Monoyios, 2004], [Moosa, 2003b], [Myers, 1991].

162 For some literature on hedging the interest rate risk with futures, see, e.g., [Booth, Smith and

Stolz, 1984], [Briys and Solnik, 1992], [Cerovi´c and Pepi´c, 2011], [Clare, Ioannides and Skinner, [ˇ]

2000], [Fortin and Khoury, 1984], [Gay, Kolb and Chiang, 1983], [Hilliard, 1984], [Hilliard and

Jordan, 1989], [Ho and Saunders, 1983], [Kolb and Chiang, 1982], [Lee and Oh, 1993], [Pepi´c,

2014], [Picou, 1981], [Trainer, 1983], [Yawitz and Marshall, 1985], [Yeutter and Dew, 1982].

93

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

where _B_ ( _t, T_ ) is the futures basis. In practice, the hedge ratio may not be 1. If a

hedge is against a bond in the futures delivery basket, [163] then the conversion factor

model [164] is commonly used to compute the hedge ratio _hC_ :

_hC_ = _C_ _[M][B]_

_MF_

(467)

where _MB_ is the nominal value of the bond, _MF_ is the nominal value of the futures,

and _C_ is the conversion factor. Unlike the conversion factor model, the modified

duration hedge ratio _hD_ can be used for both deliverable and non-deliverable bonds:

_hD_ = _β_ _[D][B]_

_DF_

(468)

where _DB_ is the dollar duration [165] - f the bond, _DF_ is the dollar duration of the

futures, and _β_ (which is often set to 1) is the change in the bond yield relative to

the change in the futures yield, both taken for a given change in the risk-free rate. [166]

## **10.2 Strategy: Calendar spread**

A bull (bear) futures spread amounts to buying (selling) a near-month futures and

selling (buying) a deferred-month futures. This reduces exposure to the overall market volatility and allows to focus more on the fundamentals. Thus, for commodity

futures, for the most part, near-month contracts react to supply and demand more

than deferred-month contracts. Therefore, if the trader expects low (high) supply

and high (low) demand, then the trader can make a bet with a bull (bear) spread. [167]

163 Typically, an interest rate futures contract allows not just one bond but any bond from a

predefined array of bonds (with varying maturities, coupons, etc.) to be delivered. Hence the use

- f the conversion factor (see below) defined as follows [Hull, 2012]: "The conversion factor for a
bond is set equal to the quoted price the bond would have per dollar of principal on the first day

- f the delivery month on the assumption that the interest rate for all maturities equals 6% per
annum (with semiannual compounding)."

164 The conversion factor model applies only to futures contracts that use conversion factors,

such as T-bond and T-note futures.

165 Recall that the dollar duration equals the price times the modified duration.

166 The factor _β_ can be estimated based on the historical data. For some literature on interest rate

futures hedge ratios and related topics, see, e.g., [Chang and Fang, 1990], [Chen, Kang and Yang,

2005], [Daigler and Copper, 1998], [Falkenstein and Hanweck, 1996], [Fisher and Weil, 1971], [Gay

and Kolb, 1983], [Geske and Pieptea, 1987], [Grieves and Mann, 2004], [Grieves and Marcus,

2005], [Hegde, 1982], [Kolb and Chiang, 1981], [Kuberek and Pefley, 1983], [Landes, Sto↵els and

Seifert, 1985], [Pitts, 1985], [Rendleman, 1999], [Toevs and Jacob, 1986], [Viswanath, 1993].

167 For some literature on futures calendar spreads and related topics, see, e.g., [Abken, 1989],

[Adrangi _et al_, 2006], [Barrett and Kolb, 1995], [Bernstein, 1990], [Bessembinder, 1992], [Bessembinder, 1993], [Bessembinder and Chan, 1992], [Billingsley and Chance, 1988], [Castelino and Vora,

1984], [Cole _et al_, 1999], [Daigler, 2007], [de Roon, Nijman and Veld, 1998], [de Roon, Nijman and

Veld, 2000], [Dunis, Laws and Evans, 2006], [Dunis, Laws and Evans, 2010], [Dutt _et al_, 1997], [Frino

and McKenzie, 2002], [Girma and Paulson, 1998], [Hou and Nord´en, 2018], [Kawaller, Koch and

94

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **10.3 Strategy: Contrarian trading (mean-reversion)**

This strategy is similar to the mean-reversion strategy discussed in Subsection 3.9.

Within a given universe of futures labeled by _i_ = 1 _, …, N_, the "market index"

return is calculated as an equally weighted average:

_Rm_ = _N_ [1]

_N_

X

_i_ =1

_Ri_ (469)

where _Ri_ are the individual futures returns (typically over the last one week). The

capital allocation weights _wi_ then are given by

_wi_ = _−γ_ [ _Ri −_ _Rm_ ] (470)

where _γ >_ 0 is fixed via the normalization condition

_N_

X

_i_ =1

_|wi|_ = 1 (471)

Note that the strategy is automatically dollar-neutral. It amounts to buying losers

and selling winners w.r.t. the market index (see, e.g., [Wang and Yu, 2004]). [168] As

in the case of equities, the simple weighting scheme given by Eq. (470) is prone to

- verinvesting in volatile futures, which can be mitigated by suppressing _wi_ by 1 _/σi_
- r 1 _/σi_ [2][, where] _[ σ][i]_ [are the historical volatilities. The portfolio is rebalanced weekly.]

**10.3.1** **Strategy: Contrarian trading – market activity**

Bells and whistles can be added to the above "basic" mean-reversion strategy by

incorporating volume and open interest filters. Let _Vi_ be the total volume for the

futures labeled by _i_ - ver the last week (i.e., the sum of daily volumes over the

last week), and _Vi_ _[0]_ [be the total volume over the prior week. Let] _[ U][i]_ [and] _[ U][ 0]_ _i_ [be the]

_i_ _[0]_ [be the total volume over the prior week. Let] _[ U][i]_ [and] _[ U][ 0]_ _i_

last week), and _Vi_ _[0]_ [be the total volume over the prior week. Let] _[ U][i]_ [and] _[ U][ 0]_ _i_ [be the]

analogous quantities for the open interest. Let

_vi_ = ln( _Vi/Vi_ _[0]_

_vi_ = ln( _Vi/Vi_ _[0]_ [)] (472)

_ui_ = ln( _Ui/Ui_ _[0]_ [)] (473)

_i_ _[0]_ [)] (473)

Then the strategy can be built, e.g., by taking the upper half of the futures by the

volume factor _vi_, taking the lower half of these futures by the open interest factor

_ui_, and applying the strategy defined by Eq. (470) to this subset of the futures. [169]

Ludan, 2002], [Kim and Leuthold, 1997], [McComas, 2003], [Moore, Toepke and Colley, 2006], [Ng

and Pirrong, 1994], [Perchanok, 2012], [Perchanok and Kakabadse, 2013], [Poitras, 1990], [Ross,

2006], [Salcedo, 2004], [Schap, 2005], [Shimko, 1994], [Till and Eagleeye, 2017], [van den Goorbergh,

2004].

168 For some additional pertinent literature, see, e.g., [Bali and Demirtas, 2008], [Bessembinder

_et al_, 1995], [Bianchi, Drew and Fan, 2015], [Chaves and Viswanathan, 2016], [Fuertes, Mi↵re and

Fernandez-Perez, 2015], [Irwin, Zulauf and Jackson, 1996], [Julio, Hassan and Ngene, 2013], [Leung

_et al_, 2016], [Monoyios and Sarno, 2002], [Rao, 2011], [Rosales and McMillan, 2017], [Tse, 2017].

169 The rationale behind this is that: i) larger volume changes are likely indicative of greater

- verreaction (see, e.g., [Bloom, Easley and O'Hara, 1994], [Conrad, Hameed and Niden, 2013],

95

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **10.4 Strategy: Trend following (momentum)**

Various momentum strategies for futures can be constructed similarly to those for

stocks. Here is a simple example (see, e.g., [Balta and Kosowski, 2013], [Moskowitz,

Ooi and Pedersen, 2012]). [170] Let _Ri_ be the returns for the futures labeled by _i_ =

1 _, …, N_ - ver the past period _T_ (which can be measured in, e.g., days, weeks, or

months). Then the weights _wi_ - f the trading portfolio are given by

_wi_ = _γ_ _[⌘][i]_

_σi_

(474)

_⌘i_ = sign( _Ri_ ) (475)

where _σi_ are the historical volatilities (computed over the period _T_ - r some other

period), and _γ >_ 0 is fixed via the normalization condition

_N_

X

_i_ =1

_|wi|_ = 1 (476)

Note that this strategy is equivalent to the optimization strategy (see Subsection

3.18, Eq. (350)) with a diagonal covariance matrix _Cij_ = _σi_ [2] _[δ][ij]_ [(i.e., the correlations]

between di↵erent futures are ignored) and the expected returns _Ei_ = _⌘iσi_ . This is

to be contrasted with the expected returns based on the cumulative returns (Eq.

(267)), which in this case equal _Ri_ . One issue with using _Ei_ = _⌘iσi_ as opposed to

_Ei_ = _Ri_ is that, for small _|Ri|_ (e.g., compared with _σi_ ), _⌘i_ can flip even though the

change in _Ri_ is small. This results in an undesirable instability in the strategy. There

are ways to mitigate this, e.g., by smoothing via _⌘i_ = tanh( _Ri/_ ), where __ is some

parameter, e.g., the cross-sectional standard deviation of _Ri_ (see, e.g., [Kakushadze,

2015b]). Alternatively, one may simply take _Ei_ = _Ri_ (and further use a non-diagonal

_Cij_ ). Also, note that the weights defined by Eq. (474) are not dollar-neutral. This

can be rectified by demeaning them:

_N_

X

_j_ =1

_⌘j_

_σj_

_−_ [1]

_N_

#

_wi_ = _γ_

"

_⌘i_

_σi_

(477)

One shortcoming of this is that now some futures with _⌘i >_ 0 may be sold, and some

futures with _⌘i <_ 0 may be bought. To avoid this, if the number _N_ + = _|H_ + _|_ - f the

[DeBondt and Thaler, 1985], [Gervais and Odean, 2001], [Odean, 2002], [Statman, Thorley and

Vorkink, 2006]), so a greater "snap-back" (i.e., mean-reversion) e↵etc can be expected; and ii) open

interest is related to trading by hedgers and is a proxy for market depth (see, e.g., [Bessembinder

and Seguin, 1993]), so an increase in open interest is indicative of a deeper market where volume

increases have smaller e↵ects on prices as compared with when there is a decrease in open interest.

170 For some additional pertinent literature, see, e.g., [Ahn _et al_, 2002], [Bianchi, Drew and

Fan, 2015], [Dusak, 1973], [Fuertes, Mi↵re and Fernandez-Perez, 2015], [Fuertes, Mi↵re and Rallis,

2010], [Hayes, 2011], [Kazemi and Li, 2009], [Mi↵re and Rallis, 2007], [Pirrong, 2005], [Reynauld

and Tessier, 1984], [Schneeweis and Gupta, 2006], [Szakmary, Shen and Sharma, 2010].

96

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

futures with _⌘i >_ 0 is not dramatically di↵erent from the number _N−_ = _|H−|_ - f the

futures with _⌘i <_ 0 (here _H±_ = _{i| ± ⌘i >_ 0 _}_ ), we can take the weights to be

_wi_ = _γ_ +

_wi_ = _γ−_

_⌘i_

_σi_

_⌘i_

_σi_

_,_ _i 2 H_ + (478)

_,_ _i 2 H−_ (479)

So, now we have two parameters _γ±_, which can be fixed to satisfy Eq. (476) and

the dollar-neutrality condition

_N_

X

_i_ =1

_wi_ = 0 (480)

However, if most _⌘i_ are positive (negative), i.e., we have skewed returns, then long

(short) positions will be well-diversified, while the short (long) positions will not

be. This can happen, e.g., if the broad market is rallying (selling o↵). Eq. (477)

mitigates this to some extent. However, _⌘i_ can still be skewed in this case. A simple

way to avoid this altogether is to use the demeaned returnse _R_ [e] _i_ instead of _Ri_, where

_Ri_ = _Ri −_ _Rm_, and the "market index" return _Rm_ is defined by Eq. (469). [171] Then

_⌘i_ = sign( _R_ [e] _i_ ) are no longer skewed and dollar-neutrality can be achieved as above. [172]

# **11 Structured Assets**

## **11.1 Generalities: Collateralized Debt Obligations (CDOs)**

A CDO is an asset-backed security (ABS) consisting of a basket of assets such

as bonds, credit default swaps, etc. It is divided into multiple tranches, which

consist of assets with di↵erent credit ratings and interest rates. Each tranche has

an attachment point _a_ and a detachment point _d_ . E.g., a 3-8% tranche (for which

_a_ = 3% and _d_ = 8%) means that it begins to lose value when the underlying

portfolio loss exceeds 3%; and when the underlying portfolio loss exceeds 8%, the

tranche value is completely wiped out. [173] A buyer (long position) of a CDO tranche

is a protection seller: in return for receiving periodic premium payments, in the

171 I.e., in this case the momentum, winners and losers are defined w.r.t. the market index, and

the so-defined winners are bought, while the losers are sold.

172 Further, instead of using cumulative returns _Ri_, one can use exponential moving averages

(to suppress past contributions – see Section 3), the Hodrick-Prescott filter (to remove the noise

and identify the trend – see Section 8), the Kalman filter (see, e.g., [Babbs and Nowman, 1999],

[Benhamou, 2016], [Bruder _et al_, 2013], [DeMoura, Pizzinga and Zubelli, 2016], [Elliott, Van Der

Hoek and Malcolm, 2005], [Engle and Watson, 1987], [Harvey, 1984], [Harvey, 1990], [Hatemi-J,

and Roca, 2006], [Kalman, 1960], [Lautier and Galli, 2004], [Levine and Pedersen, 2016], [Martinelli

and Rhoads, 2010], [Vidyamurthy, 2004]), or some other time-series filters.

173 Examples of tranches are (in the decreasing order of default risk and periodic premium

payment rate): equity 0-3% tranche; junior mezzanine 3-7% tranche; senior mezzanine 7-10%

tranche; senior 10-15% tranche; and super senior 15-30% tranche.

97

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

event of a default, the buyer has the obligation to cover the default up to the size

- f the tranche. A seller (short position) of a CDO tranche is a protection buyer:
in return for making periodic premium payments, the seller receives a payment in
the event of a default. Synthetic CDOs are "synthesized" through credit derivatives
such as CDS (credit default swaps – see Subsection 5.14) on a pool of reference
entities (e.g., bonds, loans, names of companies or countries). Reference pools for
exchange-traded single-tranche CDOs are CDS indexes such as CDX and iTraxx. [174]

Let _ti_, _i_ = 1 _, …, n_, denote the times at which the periodic premium payments

are made. [175] Let _H_ ( _t_ ) denote the set of possible defaults _`↵_, _↵_ = 1 _, …, K_, that

can occur by time _t_, and let _p↵_ ( _t_ ) denote the corresponding probabilities (which are

model-dependent). Here _`↵_ are the dollar amounts of the defaults. [176] The expected

loss _L_ ( _t_ ) can be computed as

_L_ ( _t_ ) =

_K_

X

_↵_ =1

_p↵_ ( _t_ ) max(min( _`↵, Ld_ ) _−_ _La,_ 0) (481)

where _La_ = _a MCDO_, _Ld_ = _d MCDO_, and _MCDO_ is the CDO notional in dollars. [177]

From the long tranche investor's perspective, the mark-to-market (MTM) value of

the tranche, call it _M_, is given by

_M_ = _P −_ _C_ (482)

_P_ = _S_

_n_

X

_i_ =1

_Di_ ∆ _i_ [ _Mtr −_ _L_ ( _ti_ )] (483)

_C_ =

_n_

X

_i_ =1

_Di_ [ _L_ ( _ti_ ) _−_ _L_ ( _ti−_ 1)] (484)

Here: _P_ is the premium leg; _C_ is the contingent (default) leg; _S_ is the spread;

∆ _i_ = _ti −_ _ti−_ 1; _Di_ is the risk-free discount factor for the payment date _ti_ ; and

174 For some literature on CDOs and related topics, see, e.g., [Altman _et al_, 2005], [Amato

and Gyntelberg, 2005], [Amato and Remolona, 2003], [Andersen and Sidenius, 2005], [Andersen, Sidenius and Basu, 2003], [Belkin, Suchover and Forest, 1998], [Bielecki, Brigo and Patras,

2011], [Bol, Rachev and W¨urth, 2009], [Boscher and Ward, 2002], [Cousin and Laurent, 2012], [Das,

2005], [Davis and Lo, 2001], [Ding and Sherris, 2011], [Douglas, 2007], [Duffie, 2004], [Duffie and

Gˆarleanu, 2001], [Duffie and Huang, 1996], [Duffie and Singleton, 1997a], [Duffie and Singleton,

1997b], [Fabozzi, 2006a], [Finger, 1999], [Frey, McNeil and Nyfeler, 2001], [Gibson, 2004], [Goodman, 2002], [Goodman and Lucas, 2002], [Houdain and Guegan, 2006], [Hull and White, 2006], [Hull

and White, 2010], [Jarrow, Lando and Turnbull, 1997], [Jarrow and Turnbull, 1995], [Jobst,

2005], [Jobst, 2006a], [Jobst, 2006b], [Jobst, 2006c], [Jobst, 2007], [Laurent and Gregory, 2005], [Li,

2000], [Lucas, Goodman and Fabozzi, 2006], [Meissner, 2008], [Packer and Zhu, 2005], [Prince,

2005], [Schmidt and Ward, 2002], [Sch¨onbucher, 2003], [Tavakoli, 1998], [Vasicek, 2015].

175 For simplicity, we can also assume that any default payments are also made at those times.

176 If the notional amount of the defaulted credit labeled by _↵_ is _M↵_, then _`↵_ = _M↵_ (1 _−_ _R↵_ ),

where _R↵_ is the recovery rate (which may be nonzero) of said credit.

177

Recall that the attachment _a_ and the detachment _d_ are measured in %.

98

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

_Mtr_ = _Ld −_ _La_ is the tranche notional. (Also, _t_ is measured in years, _t_ 0 is the initial

time, and _L_ ( _t_ 0) = 0). Setting the MTM _M_ = 0 fixes the value of the spread _S_ = _S⇤_ .

We can further define the "risky duration" _D_  - f the tranche as the first derivative

- f the MTM w.r.t. the spread:

_M_ ( _S_ ) = ( _S −_ _S⇤_ )

_n_

X

_i_ =1

_Di_ ∆ _i_ [ _Mtr −_ _L_ ( _ti_ )] (485)

_D_ = _@M/@S_ =

_n_

X

_i_ =1

_Di_ ∆ _i_ [ _Mtr −_ _L_ ( _ti_ )] (486)

The risky duration _Dix_ can also be defined in a similar fashion for a CDS index.

## **11.2 Strategy: Carry, equity tranche – index hedging**

This strategy amounts to buying the equity (lowest quality) tranche and Deltahedging it by selling the index. The Delta (i.e., the hedge ratio) is given by [178]

∆ _ix_ = _[D]_

_Dix_

(487)

The premiums received from the equity tranche are higher than the premiums paid

- n the short index position. The risk is the exposure to equity tranche credit events.

## **11.3 Strategy: Carry, senior/mezzanine – index hedging**

This strategy amounts to _selling_ a high quality tranche (e.g., senior/mezzanine) and

Delta-hedging the position by _buying_ the index. [179] The Delta is given by Eq. (487).

## **11.4 Strategy: Carry – tranche hedging**

This strategy amounts to buying a low quality tranche and Delta-hedging the position by selling a high quality tranche. The hedge ratio is given by:

∆ _high_ = _[D][low]_

_D_

_high_

(488)

Here _Dlow_ and _Dhigh_ are the risky durations of the low and high quality tranches.

178 For some literature on CDO tranche hedging and related topics, see, e.g., [Arnsdorf and

Halperin, 2007], [Bielecki, Jeanblanc and Rutkowski, 2007], [Bielecki, Vidozzi and Vidozzi, 2008],

[Carmona and Cr´epey, 2010], [Cont and Minca, 2013], [Frey and Backhaus, 2008], [Frey and Backhaus, 2010], [Giesecke and Weber, 2006], [Herbertsson, 2008], [Houdain and Guegan, 2006], [Laurent, Cousin and Fermanian, 2011], [Walker, 2008].

179 The premiums received from the index are higher than the premiums paid on the short tranche

position. So, this trade is "opposite" to the long equity tranche trade hedged with the index.

99

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **11.5 Strategy: Carry – CDS hedging**

This strategy amounts to buying a low quality tranche and Delta-hedging the position by selling a single-name CDS with lower premium payments than the long

tranche (instead of the index or a higher quality tranche). The hedge ratio is given

by Eq. (487) with _Dix_ replaced by the risky duration _DCDS_ - f the CDS:

_D_

∆ _CDS_ =

_DCDS_

## **11.6 Strategy: CDOs – curve trades**

(489)

As in the case of bonds (see Subsection 5.13), a flattener (steepener) curve trade

involves a simultaneous sale (purchase) of a short-term tranche and a purchase (sale)

- f a long-term tranche. Put di↵erently, with a flattener (steepener), the trader is
buying (selling) short-term protection and selling (buying) long-term protection,
i.e., the trader expects the spread curve to flatten (steepen), whereby the spread
between the long-term and short-term tranches decreases (increases). The carry of
the curve trade over the period from time _t_ to time _t_ + ∆ _t_ can be defined as follows

_C_ ( _t, t_ + ∆ _t_ ) = ( _Mlong Slong −_ _Mshort Sshort_ ) ∆ _t_ (490)

where _Mlong_ and _Mshort_ are the long and short tranche notionals, and _Slong_ and _Sshort_

are the corresponding spreads. The trade can be structured to be dollar-neutral (i.e.,

notional-neutral, _Mlong_ = _Mshort_ ), [180] risky-duration-neutral ( _Dlong_ = _Dshort_, see Eq.

(486)), carry-neutral ( _MlongSlong_ = _MshortSshort_ ), etc. [181] The P&L of the strategy is

given by ( _Mlong_ and _Mshort_ are the long and short tranche MTMs, see Eq. (485)):

P&L = _Mlong −Mshort_ (491)

## **11.7 Strategy: Mortgage-backed security (MBS) trading**

This strategy amounts to buying MBS passthroughs [182] and duration-hedging their

interest rate exposure with interest rate swaps. Thus, the main risk of a passthrough

MBS is the prepayment risk, whereby homeowners have an option to prepay their

mortgages. Homeowners refinance their mortgages as the interest rates drop, which

results in negative convexity in the MBS price as a function of the interest rates

180 In this case, for an upward-sloping curve, a flattener (steepener) has positive (negative) carry

as _Slong > Sshort_ ( _Slong < Sshort_ ).

181 For some literature on curve trades and related topics, see, e.g., [Bobey, 2010], [Burtshell,

Gregory and Laurent, 2009)], [Choro´s-Tomczyk, H¨ardle and Okhrin, 2016], [Crabbe and Fabozzi,

2002], [Detlefsen and H¨ardle, 2013], [Hagenstein, Mertz and Seifert, 2004], [Hamerle, Igl and Plank,

2012], [Hull and White, 2004], [Kakodkar _et al_, 2006], [Koopman, Lucas and Schwaab, 2012], [Lin

and Shyy, 2008], [Rajan, McDermott and Roy, 2007].

182 An MBS is an asset backed by a pool of mortgages. In a passthrough MBS, which is the most

common MBS type, cash flows are passed from debtors to investors through an intermediary.

100

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

(e.g., the 5-year swap rate). The hedge ratios are model-dependent and a variety of

prepayment models can be constructed. Alternatively one can follow a nonparametric approach whereby using historical data one estimates the first derivative of the

passthrough MBS price _P_ w.r.t. the 5-year swap rate _R_ with the constraint that

_P_ is a non-increasing function of _R_ (see, e.g., [Duarte, Longsta↵and Yu, 2006]), [183]

employing, e.g., a constrained regression (see, e.g., [A¨ıt-Sahalia and Duarte, 2003]).

# **12 Convertibles**

## **12.1 Strategy: Convertible arbitrage**

A convertible bond is a hybrid security with an embedded option to convert the bond

(a fixed-income instrument) to a preset number (knows as the conversion ratio) of

the issuer's stock (an equity instrument) when, e.g., the stock price reaches a preset

level (known as the conversion price). Empirically, convertibles at the issuance

tend to be undervalued relative to their "fair" value. [184] This gives rise to arbitrage

- pportunities. A convertible arbitrage strategy amounts to buying a convertible
bond and simultaneously shorting _h_ units of the underlying stock, where the hedge
ratio is given by

_h_ = ∆ _⇥_ _C_ (492)

∆= _@V/@S_ (493)

Here: _C_ is the conversion ratio; _V_ is the value of the conversion option (which is

model-dependent); _S_ is the underlying stock price; and ∆is the (model-dependent)

183 For some additional pertinent literature, see, e.g., [Ambrose, LaCour-Little and Sanders,

2004], [Biby, Modukuri and Hargrave, 2001], [Bielecki, Brigo and Patras, 2011], [Boudoukh _et_

_al_, 1997], [Brazil, 1988], [Brennan and Schwartz, 1985], [Carron and Hogan, 1988], [Chinloy,

1989], [Davidson, Herskovitz and Van Drunen, 1988], [Dechario _et al_, 2010], [Downing, Ja↵ee

and Wallace, 2009], [Dunn and McConnell, 1981a], [Dunn and McConnell, 1981b], [Dynkin _et_

_al_, 2001], [Fabozzi, 2006b], [Gabaix, Krishnamurthy and Vigneron, 2007], [Glaeser and Kallal,

1997], [Hu, 2001], [Longsta↵, 2005], [Kau _et al_, 1995], [McConnell and Buser, 2011], [McKenzie,

2002], [Nothaft, Lekkas and Wang, 1995], [Passmore, Sherlund and Burgess, 2005], [Richard and

Roll, 1989], [Schultz, 2016], [Schwartz and Torous, 1989], [Schwartz and Torous, 1992], [Stanton,

1995], [Thibodeau and Giliberto, 1989], [Vickery and Wright, 2010].

184 For some literature on convertible bonds and related topics, see, e.g., [Agarwal _et al_, 2011],

[Ammann, Kind and Seiz, 2010], [Ammann, Kind and Wilde, 2003], [Batta, Chacko and Dharan,

2010], [Brennan and Schwartz, 1988], [Brown _et al_, 2012], [Calamos, 2003], [Chan and Chen, 2007],

[Choi _et al_, 2010], [Choi, Getmansky and Tookes, 2009], [De Jong, Dutordoir and Verwijmeren,

2011], [Duca _et al_, 2012], [Dutordoir _et al_, 2014], [Grundy and Verwijmeren, 2016], [Henderson,

2005], [Henderson and Tookes, 2012], [Ingersoll, 1977], [Kang and Lee, 1996], [King, 1986], [King

and Mauer, 2014], [Korkeamaki and Michael, 2013], [Lewis, Rogalski and Seward, 1999], [Lewis

and Verwijmeren, 2011], [Loncarski, ter Horst and Veld, 2006], [Loncarski, ter Horst and Veld,

2009], [Mayers, 1998], [Ryabkov, 2015], [Stein, 1992], [Tsiveriotis and Fernandes, 1998], [van Marle

and Verwijmeren, 2017], [Zabolotnyuk, Jones and Veld, 2010].

101

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

Delta of the conversion option. [185] Typically, the position is held for 6-12 months

starting at the issuance date of the convertible and the hedge ratio is updated daily.

## **12.2 Strategy: Convertible option-adjusted spread**

This strategy amounts to simultaneously buying and selling two di↵erent convertible

bonds of the same issuer. The long position is in a bond with a higher optionadjusted spread (OAS), and the short position is in a bond with a lower OAS (see,

e.g., [Calamos, 2003]). Then the trade is profitable if these two spreads converge.

The OAS can be calculated as follows (see, e.g., [Hull, 2012]). [186] A straightforward (but not the only) [187] way to compute the price _PC_ - f the convertible bond is

to assume that

_PC_ = _PB_ + _V_ (494)

where _PB_ is the price of the straight bond (without the embedded option), and _V_

is the value of the conversion option, which is a call option. _PB_ is computed via the

standard discounting of the future cash flows of the bond. On the other hand, _V_

depends on the risk-free interest rate curve. At the initial iteration, _V_ is computed

(using a pricing model for the call option) assuming the zero-coupon government

Treasury curve as the risk-free interest rate curve. This initial iteration _V_ [(0)] may

not coincide with _PC_ _[mkt]_ _−_ _PB_, where _PC_ _[mkt]_ is the _market price_ - f the convertible

bond. Then one iteratively (e.g., using the bisection method) _parallel-shifts_ the

input Treasury curve until _V_ computed using the so-shifted curve is such that _V_ =

_P_ _[mkt]_ _−_ _P_

_C_ _[mkt]_ _−_ _PB_, where _PC_ _[mkt]_

_C_ _−_ _PB_ . The curve parallel shift obtained via this iterative procedure is the OAS.

# **13 Tax Arbitrage**

## **13.1 Strategy: Municipal bond tax arbitrage**

This strategy is one of the most common and simple forms of tax arbitrage. It

amounts to borrowing money and buying tax-exempt municipal bonds. [188] The strat

185 The Delta itself changes with the stock price _S_ . To account for this, the option Gamma can

be used as in Subsection 7.4.1 (Gamma hedging).

186 For some additional literature related to OAS (mostly focused on applications to MBS), see,

e.g., [Boyarchenko, Fuster and Lucca, 2014], [Brazil, 1988], [Brown, 1999], [Cerrato and Djennad,

2008], [Dong _et al_, 2009], [Hayre, 1990], [Huang and Kong, 2003], [Levin and Davidson, 2005], [Liu

and Xu, 1998], [Stroebel and Taylor 2012], [Windas, 2007].

187 For some literature on convertible bond pricing, see, e.g., [Ayache, Forsyth and Vetzal, 2003],

[Batten, Khaw and Young, 2014], [Brennan and Schwartz, 1977], [Finnerty and Tu, 2017], [Ingersoll,

1977], [Kang and Lee, 1996], [King, 1986], [Kwok, 2014], [McConnell and Schwartz, 1986], [Milanov

_et al_, 2013], [Park, Jung and Lee, 2018], [S¨orensson, 1993], [Tsiveriotis and Fernandes, 1998], [Xiao,

2013], [Zabolotnyuk, Jones and Veld, 2010].

188 For some literature on municipal bond tax arbitrage and related topics, see, e.g., [Ang _et al_,

2017], [Buser and Hess, 1986], [Chalmers, 1998], [Erickson, Goolsbee and Maydew, 2003], [Heaton,

1988], [Kochin and Parks, 1988], [Longsta↵, 2011], [Miller, 1977], [Poterba, 1986], [Poterba, 1989],

102

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

egy return is given by

_R_ = _rlong −_ _rshort_ (1 _−_ _⌧_ ) (495)

Here: _rlong_ is the interest rate of the bought municipal bonds, _rshort_ is the interest

rate of the loan, and _⌧_ is the corporate tax rate. This strategy is attractive to

companies in jurisdictions where tax rules allow them to buy tax-exempt municipal

bonds and deduct interest expenses from their taxable income (a.k.a. "tax shield").

## **13.2 Strategy: Cross-border tax arbitrage**

The U.S. double-taxes corporate income. The corporate income is first taxed at

the corporate level. Then, it is taxed again when dividends are received by the

shareholders. In some other countries the taxation systems are designed to relieve

the tax burden, e.g., by not taxing dividends (as, e.g., in Singapore), or by giving

shareholders tax credits attached to dividend payments (as, e.g., in Australia). In the

case where this "dividend imputation" corporate tax system gives the full tax credit

to shareholders, it can be schematically described as follows (see, e.g., [McDonald,

2001]): [189]

8

<

:

Corporate tax rate = _⌧c_

Cash dividend paid = _D_

Dividend tax credit = _C_ = _D_ 1 _−⌧c⌧c_

Taxable income = _It_ = _D_ + _C_ = 1 _−D⌧c_

Personal tax rate = _⌧_

_p_

Personal income tax = _T_ = _It ⌧p_

Dividend income after credit and tax = _I_ = _D_ + _C −_ _T_ = _D_ [1] 1 _[−]_ _−_ _[⌧]_ _⌧_ _[p]_ _c_

(496)

So, if the corporate income is _P_ and the corporation pays all its income after taxes as

dividends, then _D_ = _P_ (1 _−_ _⌧c_ ) and _I_ = _P_ (1 _−_ _⌧p_ ), so there is no double-taxation. [190]

While in countries with imputation systems domestic investors enjoy tax credits,

generally foreign investors do not. If there were no tax credits, the price drop

between cum-dividend and ex-dividend [191] is expected to reflect the dividend. In

the presence of tax credits, the drop is expected to be higher: if it fully reflects

the tax credit, then it is _D_ (1 + __ ), where __ is the tax credit rate. (In the above

nomenclature, 1 + __ = 1 _/_ (1 + _⌧c_ ).) So, a foreign investor is e↵ectively penalized for

[Skeleton, 1983], [Trzcinka, 1982], [Yawitz, Maloney and Ederington, 1985].

189 However, there can be limitations on the tax credit and other subtleties present depending

- n the jurisdiction, various circumstances, etc.

190 In contrast, in the double-taxation system we would instead have: _D_ = _P_ (1 _−_ _⌧c_ ), _It_ = _D_,

_T_ = _It ⌧p_, _I_ = _It −_ _T_ = _P_ (1 _−_ _⌧c_ ) (1 _−_ _⌧p_ ).

191 Cum-dividend means the stock buyer is entitled to receive a dividend that has been declared

but not paid. Ex-dividend means the stock seller is entitled to the dividend, not the buyer.

103

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

holding the stock. To avoid this, the foreign investor can sell the stock cum-dividend

and buy it back ex-dividend. [192] Alternatively, the foreign investor can loan the stock

to a domestic investor cum-dividend and receive the stock back ex-dividend along

with (some preset portion of) the tax credit – assuming no restrictions on such crossborder tax arbitrage. A swap agreement would also achieve the same result. [193]

**13.2.1** **Strategy: Cross-border tax arbitrage with options**

Absent a tax credit, there is a theoretical upper bound on the value of an American

put option (see, e.g., [Hull, 2012]):

_Vput_ ( _K, T_ ) __ _Vcall_ ( _K, T_ ) _−_ _S_ 0 + _K_ + _D_ (497)

Here: _Vput_ ( _Vcall_ ) is the price of the put (call) option at time _t_ = 0; _K_ is the

strike price; _S_ 0 is the stock price at _t_ = 0; _T_ is the time to maturity; and _D_ is

the present value of the dividends during the life of the option. Put options are

- ptimally exercised ex-dividend. Therefore, in the presence of a tax credit, it is
expected that put prices should reflect the tax credit, i.e., they should be higher
than in the absence of the tax credit (see, e.g., [McDonald, 2001]). So the foreign
investor can sell the stock cum-dividend (at price _S_ 0) and write a deep ITM put

- ption, whose value close to expiration approximately is (here __ is the tax credit
rate defined above)

_Vput_ ( _K, T_ ) = _K −_ [ _S_ 0 _−_ _D_ (1 + __ )] (498)

The P&L, once the put is exercised ex-dividend at the strike price _K_, is the same

as with the stock loan/swap strategy discussed above:

P&L = _S_ 0 + _Vput_ ( _K, T_ ) _−_ _K_ = _D_ (1 + __ ) (499)

# **14 Miscellaneous Assets**

## **14.1 Strategy: Inflation hedging – inflation swaps**

This strategy amounts to buying (selling) inflation swaps in order to exchange a fixed

(floating) rate of inflation for a floating (fixed) rate. Inflation swaps conceptually are

similar to interest rate swaps (see Subsection 5.1.4). A buyer (seller) of an inflation

swap is long (short) the inflation and receives the floating (fixed) rate. The buyer

has a positive return if the inflation exceeds the expected inflation (i.e., the swap

192 Assuming transaction costs are not prohibitively high.

193 For some literature on cross-border tax arbitrage and related topics, see, e.g., [Allen and

Michaely, 1995], [Amihud and Murgia, 1997], [Bellamy, 1994], [Booth, 1987], [Booth and Johnston,

1984], [Brown and Clarke, 1993], [Bundgaard, 2013], [Callaghan and Barry, 2003], [Christo↵ersen

_et al_, 2005], [Christo↵ersen _et al_, 2003], [Eun and Sabherwal, 2003], [Green and Rydqvist, 1999],

[Harris, Hubbard and Kemsley, 2001], [Lakonishok and Vermaelen, 1986], [Lasfer, 1995], [Lessambo,

2016], [McDonald, 2001], [Monkhouse, 1993], [Shaviro, 2002], [Wells, 2016], [Wood, 1997].

104

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

fixed rate, a.k.a. the "breakeven rate"). The fixed rate typically is calculated as the

interest rate spread between the Treasury notes/bonds (as applicable) and Treasury

Inflation-Protected Securities (TIPS) with the same maturity as that of the swap.

The floating rate usually is based on an inflation index such as the Consumer Price

Index (CPI). The most common type of inflation swap is the zero-coupon inflation

swap (ZC), which has only one cash flow at maturity _T_ (measured in years). This

cash flow is the di↵erence between the fixed rate cash flow _Cfixed_ and the floating

rate cash flow _Cfloating_ . These cash flows, per \$1 notational, are given by:

_Cfixed_ = (1 + _K_ ) _[T]_ _−_ 1 (500)

_Cfloating_ = _I_ ( _T_ ) _/I_ (0) _−_ 1 (501)

Here: _K_ is the fixed rate; and _I_ ( _t_ ) is the CPI value at time _t_ ( _t_ = 0 is the time

at which the swap contract is entered into). Another type of inflation swaps is the

year-on-year inflation swap (YoY), which references annual inflation (as opposed to

the cumulative inflation referenced by the zero-coupon swap). Thus, assuming for

simplicity annual payments, we have (here _t_ = 1 _, …, T_ is measured in years): [194]

_Cfixed_ ( _t_ ) = _K_ (502)

_Cfloating_ ( _t_ ) = _I_ ( _t_ ) _/I_ ( _t −_ 1) _−_ 1 (503)

## **14.2 Strategy: TIPS-Treasury arbitrage**

This strategy is based on the empirical observation that Treasury bonds tend to be

- vervalued relative to TIPS [195] almost all the time (see, e.g., [Campbell, Shiller and
Viceira, 2009], [Driessen, Nijman and Simon, 2017], [Fleckenstein, 2012], [Haubrich,

194 For some literature on inflation swaps and related topics, see, e.g., [Belgrade and Benhamou,

2004], [Belgrade, Benhamou and Koehler, 2004], [Bouzoubaa and Osseiran, 2010], [Christensen,

Lopez and Rudebusch, 2010], [Deacon, Derry and Mirfendereski, 2004], [Fleming and Sporn, 2013],

[Haubrich, Pennacchi and Ritchken, 2012], [Hinnerich, 2008], [Jarrow and Yildirim, 2003], [Kenyon,

2008], [Lioui and Poncet, 2005], [Martellini, Milhau and Tarelli, 2015], [Mercurio, 2005], [Mercurio

and Moreni, 2006], [Mercurio and Moreni, 2009], [Mercurio and Yildirim, 2008].

195 TIPS pay semiannual fixed coupons at a fixed rate, but the coupon payments (and principal)

are adjusted based on inflation. For some literature on TIPS, inflation-indexed products and related

topics, see, e.g., [Adrian and Wu, 2010], [Ang, Bekaert and Wei, 2008], [Bardong and Lehnert,

2004], [Barnes _et al_, 2010], [Barr and Campbell, 1997], [Bekaert and Wang, 2010], [Buraschi and

Jiltsov, 2005], [Campbell, Sunderam and Viceira, 2017], [Chen, Liu and Cheng, 2010], [Chernov and

Mueller, 2012], [Christensen and Gillan, 2012], [D'Amico, Kim and Wei, 2018], [Deacon, Derry and

Mirfendereski, 2004], [Dudley, Roush and Steinberg, 2009], [Evans, 1998], [Fleckenstein, Longsta↵

and Lustig, 2017], [Fleming and Krishnan, 2012], [Grishchenko and Huang, 2013], [Grishchenko,

Vanden and Zhang, 2016], [G¨urkaynak, Sack and Wright, 2010], [H¨ordahl and Tristani, 2012],

[H¨ordahl and Tristani, 2014], [Hunter and Simon, 2005], [Jacoby and Shiller, 2008], [Joyce, Lildholdt

and Sorensen, 2010], [Kandel, Ofer and Sarig, 1996], [Kitsul and Wright, 2013], [Kozicki and Tinsley,

2012], [Mehra, 2002], [Pennacchi, 1991], [Pflueger and Viceira, 2011], [Remolona, Wickens and

Gong, 1998], [Roll, 1996], [Roll, 2004], [Sack and Elsasser, 2004], [Sepp¨al¨a, 2004], [Shen, 2006], [Shen

and Corning, 2001], [Woodward, 1990], [Yared and Veronesi, 1999].

105

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

Pennacchi and Ritchken, 2012]). The strategy amounts to selling a Treasury bond

(whose price is _PTreasury_, fixed coupon rate is _rTreasury_, and maturity is _T_ ) and

- ↵setting this short position with a synthetic portfolio, which precisely replicates
the Treasury bond coupon and principal payments, but costs less than the Treasury
bond. This synthetic portfolio is constructed by buying TIPS (whose price is _PTIPS_
and maturity _T_ is the same as that of the Treasury bond) with a fixed coupon rate _r_
and _n_ coupon payments at times _ti_, _i_ = 1 _, …, n_ (with _tn_ = _T_ ), and simultaneously
selling _n_ zero-coupon inflation swaps with maturities _ti_, the fixed rate _K_, and the
notionals _Ni_ = _r_ + _δti,T_ per \$1 of the TIPS principal. The cash flows (per \$1
notional) at _t_ = _ti_ are given by (as above, _I_ ( _t_ ) is the CPI value at time _t_ ; also, time
is measured in the units of the (typically, semiannual) compounding periods):

_CTIPS_ ( _ti_ ) = _Ni I_ ( _ti_ ) _/I_ (0) (504)

_Cswap_ ( _ti_ ) = _Ni_ ⇥(1 + _K_ ) _[t][i]_ _−_ _I_ ( _ti_ ) _/I_ (0)⇤ (505)

⇤

(505)

⇥

(1 + _K_ ) _[t][i]_ _−_ _I_ ( _ti_ ) _/I_ (0)

_Ctotal_ ( _ti_ ) = _Cswap_ ( _ti_ ) + _CTIPS_ ( _ti_ ) = _Ni_ (1 + _K_ ) _[t][i]_ (506)

So, the synthetic portfolio converts the indexed payments from TIPS into fixed

payments with the e↵ective coupon rates _reff_ ( _ti_ ) = _r_ (1 + _K_ ) _[t][i]_ . These synthetic

coupon payments almost replicate the Treasury bond coupons _rTreasury_ . The exact

matching involves small long or short positions in STRIPS [196], which are given by

(see, e.g., [Fleckenstein, Longsta↵and Lustig, 2013] for details)

1 _−_ (1 + _K_ ) _[t][i]_ [⇤ ]

_S_ ( _ti_ ) = _D_ ( _ti_ )

[ _rTreasury −_ _reff_ ( _ti_ )] + _δti,T_

⇥

(507)

where _D_ ( _⌧_ ) is the value of the STRIPS with maturity _⌧_ at time _t_ = 0 (i.e., _D_ ( _⌧_ )

is a discount factor). In Eq. (507) the second term in the curly brackets (which is

proportional to _δti,T_ and is nonzero only for _i_ = _n_, i.e., at maturity _T_ ) is included

as we must also match the principals at maturity. Note that the STRIPS positions

are established at _t_ = 0. The net cash flow _C_ (0) at _t_ = 0 is given by (note that the

net cash flows at _t >_ 0 are all null by replication)

_C_ (0) = _PTreasury −_ _PTIPS −_

_n_

X

_i_ =1

_S_ ( _ti_ ) (508)

Empirically _C_ (0) tends to be positive (even after transaction costs). Hence arbitrage.

## **14.3 Strategy: Weather risk – demand hedging**

Various businesses and sectors of the economy can be a↵ected by weather conditions,

both directly and indirectly. Weather risk is hedged using weather derivatives. There

are no "tradable" weather indexes, so various synthetic indexes have been created.

196 STRIPS = "Separate Trading of Registered Interest and Principal of Securities". Essentially,

STRIPS are zero-coupon discount bonds.

106

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

The most common ones are based on temperature. The cooling-degree-days (CDD)

and heating-degree-days (HDD) measure extreme high temperatures and extreme

low temperatures, respectively: [197]

_ICDD_ =

_IHDD_ =

_n_

X

_i_ =1

_n_

X

_i_ =1

max(0 _, Ti −_ _Tbase_ ) (509)

max(0 _, Tbase −_ _Ti_ ) (510)

_Ti_ = _[T][ min]_ _i_

_i_ (511)

2

_[ min]_ _i_ + _Ti_ _[max]_

Here: _i_ = 1 _, …, n_ labels days; _n_ is the life of the contract (a week, a month

- r a season) measured in days; _Ti_ _[min]_ and _Ti_ _[max]_ are the minimum and maximum
- r a season) measured in days; _Ti_ and _Ti_ _[max]_ are the minimum and maximum

temperatures recorded on the day labeled by _i_ ; and _Tbase_ = 65 _[◦]_ F. Then, the demand

risk for heating days can, e.g., be hedged by a short futures position or a long put

- ption position with the hedge ratios given by (here (Cov) Var is serial (co)variance):

_i_ and _Ti_ _[max]_

_h_ _[HDD]_ _futures_ [= Cov(] _[q][w][, I][HDD]_ [)] _[/]_ [Var(] _[I][HDD]_ [)] (512)

_h_ _[HDD]_ _put_ = _−_ Cov ( _qw,_ max( _K −_ _IHDD,_ 0)) _/_ Var (max( _K −_ _IHDD,_ 0)) (513)

Here: _qw_ is the portion of the demand a↵ected by weather conditions (as there might

be other, exogenous, non-weather-related components to the demand); and _K_ is the

strike price. Similarly, the demand risk for cooling days can, e.g., be hedged by a

long futures position or a long call option position with the hedge ratios given by:

_h_ _[CDD]_ _futures_ [= Cov(] _[q][w][, I][CDD]_ [)] _[/]_ [Var(] _[I][CDD]_ [)] (514)

_h_ _[CDD]_ _call_ = Cov ( _qw,_ max( _ICDD −_ _K,_ 0)) _/_ Var (max( _ICDD −_ _K,_ 0)) (515)

197 For some literature on weather derivatives, weather indexes and related topics, see, e.g., [Alaton, Djehiche and Stillberger, 2010], [Barrieu and El Karoui, 2002], [Barrieu and Scaillet, 2010],

[Benth, 2003], [Benth and Saltyte-Benth, 2005], [Benth and Saltyte-Benth, 2007], [Benth, SaltyteBenth and Koekebakker, 2007], [Bloesch and Gourio, 2015], [Brockett _et al_, 2010], [Brockett, Wang

and Yang, 2005], [Brody, Syroka and Zervos, 2002], [Campbell and Diebold, 2005], [Cao and Wei,

2000], [Cao and Wei, 2004], [Cartea and Figueroa, 2005], [Chaumont, Imkeller and M¨uller, 2006],

[Chen, Roberts and Thraen, 2006], [Corbally and Dang, 2002], [Davis, 2001], [Dischel, 1998a], [Dischel, 1998b], [Dischel, 1999], [Dorfleitner and Wimmer, 2010], [Dornier and Queruel, 2000], [Ederington, 1979], [Geman, 1998], [Geman and Leonardi, 2005], [Ghiulnara and Viegas, 2010], [Golden,

Wang and Yang, 2007], [G¨onc¨u, 2012], [Hamisultane, 2009], [Hanley, 1999], [H¨ardle and L´opez Cabrera, 2011], [Huang, Shiu and Lin, 2008], [Huault and Rainelli-Weis, 2011], [Hunter, 1999], [Jain

and Baile, 2000], [Jewson, 2004a], [Jewson, 2004b], [Jewson, Brix and Ziehmann, 2005], [Jewson

and Caballero, 2003], [Lazo _et al_, 2011], [Lee and Oren, 2009], [Leggio and Lien, 2002], [Mraoua,

2007], [M¨uller and Grandi, 2000], [Oetomo and Stevenson, 2005], [Parnaudeau and Bertrand,

2018], [Perez-Gonzalez and Yun, 2010], [Richards, Manfredo and Sanders, 2004], [Saltyte-Benth

and Benth, 2012], [Schiller, Seidler and Wimmer, 2010], [Svec and Stevenson, 2007], [Swishchuk

and Cui, 2013], [Tang and Jang, 2011], [Thornes, 2006], [Vedenov and Barnett, 2004], [Wilson,

2016], [Woodard and Garcia, 2008], [Yang, Brockett and Wen, 2009], [Zapranis and Alexandridis,

2008], [Zapranis and Alexandridis, 2009], [Zeng, 2000].

107

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **14.4 Strategy: Energy – spark spread**

The spark spread is the di↵erence between the wholesale price of electricity and the

price of natural gas required to produce it. [198] A spark spread can be built by, e.g.,

taking a short position in electricity futures and a long position in the corresponding

number of fuel futures. Such positions are used by electricity producers to hedge

against changes in the electricity price or in the cost of fuel, as well as by traders or

speculators who want to make a bet on a power plant. The number of fuel futures is

determined by the so-called _heat rate H_, which measures the efficiency with which

the plant converts fuel into electricity:

_H_ = _QF_ _/QE_ (516)

Here: _QF_ is the amount of fuel used to produce the amount of electricity _QE_ ; _QF_

is measured in MMBtu; Btu = British thermal unit, which is approximately 1,055

Joules; MBtu = 1,000 Btu; MMBtu = 1,000,000 Btu; _QE_ is measured in Mwh =

Megawatt hour; the heat rate _H_ is measured in MMBtu/Mwh. The spark spread is

measured in $/Mwh. So, if the price of electricity is _PE_ (measured in $/Mwh) and

the price of fuel is _PF_ (measured in $/MMBtu), then the spark spread is given by

_S_ = _PE −_ _H PF_ (517)

The hedge ratio for the futures is a↵ected by the available futures contract sizes.

Thus, an electricity futures contract is _FE_ = 736 Mwh, and a gas futures contract

is _FF_ = 10 _,_ 000 MMBtu. So, the hedge ratio is given by

_h_ = _H FE/FF_ (518)

which generally is not a whole number. Therefore, it is (approximately, within

the desired precision) represented as a ratio _h ⇡_ _NF_ _/NE_ with the lowest possible

denominator _NE_, where _NF_ and _NE_ are whole numbers. Then the hedge consists of

buying _NF_ gas futures contracts for every _NE_ sold electricity futures contracts.

# **15 Distressed Assets**

## **15.1 Strategy: Buying and holding distressed debt**

Distressed securities are those whose issuers are undergoing financial/operational

distress, default or bankruptcy. One definition of distressed debt is if the spread

198 So, the spark spread measures a gross margin of a gas-fired power plant excluding all other

costs for operation, maintenance, capital, etc. Also, if the power plant uses fuel other than natural

gas, then the corresponding spread has a di↵erent name. For coal it is called "dark spread"; for

nuclear power it is called "quark spread"; etc. For some literature on energy spreads, energy

hedging and related topics, see, e.g., [Benth and Kettler, 2010], [Benth, Kholodnyi and Laurence,

2014], [Carmona and Durrleman, 2003], [Cassano and Sick, 2013], [Deng, Johnson and Sogomonian,

2001], [Edwards, 2009], [Elias, Wahab and Fang, 2016], [Emery and Liu, 2002], [Fiorenzani, 2006],

[Fusaro and James, 2005], [Hsu, 1998], [James, 2003], [Kaminski, 2004], [Li and Kleindorfer, 2009],

[Maribu, Galli and Armstrong, 2007], [Mart´ınez and Torr´o, 2018], [Wang and Min, 2013].

108

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

between the yields of Treasury bonds and those of the issuer is greater than some

preset number, e.g., 1,000 basis points (see, e.g., [Harner, 2008]). A common and

simple distressed debt passive trading strategy amounts to buying debt of a distressed company at a steep discount, [199] expecting (hoping) that the company will

repay its debt. Typically, a distressed debt portfolio is diversified across industries,

entities and debt seniority level. It is anticipated that only a small fraction of the

held assets will have positive returns, but those that do, will provide high rates of

return (see, e.g., [Greenhaus, 1991]). There are two broad categories of passive distressed debt strategies (see, e.g., [Altman and Hotchkiss, 2006]). First, using various

models (see Subsection 15.3) one can attempt to predict whether a company will

declare bankruptcy. Second, some strategies focus on assets of companies in default

- r bankruptcy, a successful reorganization being the driver of returns. Typically,
positions are established at key dates, such as at the end of the default month or at
the end of the bankruptcy-filing month, with the view of exploiting overreaction in
the distressed debt market (see, e.g., [Eberhart and Sweeney, 1992], [Gilson, 1995]).

## **15.2 Strategy: Active distressed investing**

This strategy amounts to buying distressed assets with the view (unlike the passive

strategy discussed above) to acquire some degree of control of the management and

direction of the company. When facing a distress situation, a company has various

- ptions in its reorganization process. It can file for bankruptcy protection under
Chapter 11 of the U.S. Bankruptcy Code to reorganize. Or it can work directly
with its creditors out of Court. [200] Below are some scenarios for active investing.

**15.2.1** **Strategy: Planning a reorganization**

An investor can submit a reorganization plan to Court with an objective to obtain

participation in the management of the company, attempt to increase its value and

generate profits. Plans by significant debt holders tend to be more competitive.

**15.2.2** **Strategy: Buying outstanding debt**

This strategy amounts to buying outstanding debt of a distressed firm at a discount

with the view that, after reorganization, part of this debt will be converted into the

firm's equity thereby giving the investor a certain level of control of the company.

199 For some pertinent literature, see, e.g., [Altman, 1998], [Clark and Weinstein, 1983], [Eberhart,

Altman and Aggarwal, 1999], [Friewald, Jankowitsch and Subrahmanyam, 2012], [Gande, Altman

and Saunders, 2010], [Gilson, 2010], [Gilson, 2012], [Harner, 2011], [Hotchkiss and Mooradian,

1997], [Jiang, Li and Wang, 2012], [Lhabitant, 2002], [Morse and Shaw, 1988], [Moyer, Martin and

Martin, 2012], [Putnam, 1991], [Quintero, 1989], [Reiss and Phelps, 1991], [Volpert, 1991].

200 For some literature, see, e.g., [Altman and Hotchkiss, 2006], [Chatterjee, Dhillon and Ram´ırez,

1996], [Gilson, 1995], [Gilson, John and Lang, 1990], [Jostarndt and Sautner, 2010], [Levy, 1991],

[Markwardt, Lopez and DeVol, 2016], [Peri´c, 2015], [Rosenberg, 1992], [Swank and Root, 1995],

[Ward and Griepentrog, 1993].

109

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

**15.2.3** **Strategy: Loan-to-own**

This strategy amounts to financing (via secured loans) a distressed firm that is not

bankrupt with the view that it i) overcomes the distress situation, avoids bankruptcy

and increases its equity value, or ii) files for Chapter 11 protection and, upon reorganization, the secured loan is converted into the firm's equity with control rights.

## **15.3 Strategy: Distress risk puzzle**

Some studies suggest that companies more prone to bankruptcy o↵er higher returns,

which is a form of a risk premium (see, e.g., [Chan and Chen, 1991], [Fama and

French, 1992], [Fama and French, 1996], [Vassalou and Xing, 2004]). However, more

recent studies suggest the opposite, i.e., that such companies do not outperform

healthier ones, and that the latter actually o↵er higher returns. This is the so-called

"distress risk puzzle" (see, e.g., [George and Hwang, 2010], [Godfrey and Brooks,

2015], [Griffin and Lemmon, 2002], [Ozdagli, 2010]). So, this strategy amounts to

buying the safest companies and selling the riskiest ones. As a proxy, one can use the

probability of bankruptcy _Pi_, _i_ = 1 _, …, N_ ( _N_ is the number of stocks), which can,

e.g., be modeled via a logistic regression (see, e.g., [Campbell, Hilscher and Sziglayi,

2008]). [201] A zero-cost portfolio can be constructed by, e.g., selling the stocks in the

top decile by _Pi_, and buying the stocks in the bottom decile. Typically, the portfolio

is rebalanced monthly, but annual rebalancing is also possible (with similar returns).

**15.3.1** **Strategy: Distress risk puzzle – risk management**

This strategy is a variation of the distress risk puzzle strategy in Subsection 15.3.

Empirical studies suggest that zero-cost healthy-minus-distressed (HMD) strategies

tend to have a high time-varying market beta, which turns significantly negative

following market downturns (usually associated with increased volatility), which

can cause large losses if the market bounces abruptly (see, e.g., [Garlappi and Yan,

2011], [O'Doherty, 2012], [Opp, 2017]). This is similar to what happens in other

201 For some literature on models for estimating bankruptcy probabilities, explanatory variables

and related topics, see, e.g., [Alaminos, del Castillo and Fern´andez, 2016], [Altman, 1968], [Altman,

1993], [Aretz and Pope, 2013], [Beaver, 1966], [Beaver, McNichols and Rhie, 2005], [Bellovary,

Giacomino and Akers, 2007], [Brezigar-Masten and Masten, 2012], [Callej´on _et al_, 2013], [Chaudhuri

and De, 2011], [Chava and Jarrow, 2004], [Chen _et al_, 2011], [Cultrera and Br´edart, 2015], [Dichev,

1998], [Duffie, Saita and Wang, 2007], [DuJardin, 2015], [El Kalak and Hudson, 2016], [Fedorova,

Gilenko and Dovzhenko, 2013], [Ferreira, Grammatikos and Michala, 2016], [Gordini, 2014], [Griffin

and Lemmon, 2002], [Hensher and Jones, 2007], [Hillegeist _et al_, 2004], [Jo, Han and Lee, 1997],

[Jonsson and Fridson, 1996], [Korol, 2013], [Laitinen and Laitinen, 2000], [McKee and Lensberg,

2002], [Min, Lee and Han, 2006], [Mossman _et al_, 1998], [Odom and Sharda, 1990], [Ohlson, 1980],

[Philosophov and Philosophov, 2005], [Pindado, Rodrigues and de la Torre, 2008], [Podobnik _et_

_al_, 2010], [Ribeiro _et al_, 2012], [Shin and Lee, 2002], [Shumway, 2001], [Slowinski and Zopounidis,

1995], [Tinoco and Wilson, 2013], [Tsai, Hsu and Yen, 2014], [Wilson and Sharda, 1994], [Woodlock

and Dangol, 2014], [Yang, You and Ji, 2011], [Zhou, 2013], [Zmijewski, 1984].

110

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

factor-based strategies. [202] To mitigate this, the strategy can be modified as follows

(see, e.g., [Eisdorfer and Misirli, 2015]):

HMD _⇤_ = _[σ][tar]_ b _[g][et]_ HMD (519)

_σ_

Here: HMD is for the standard HMD strategy in Subsection 15.3; _σtarget_ is the

level of target volatility (typically, between 10% and 15%, depending on the trader

preferences); and b _σ_ is the estimated realized volatility over the prior year using daily

data. So, 100% of the investment is allocated only if b _σ_ = _σtarget_, and a lower amount

is allocated when b _σ > σtarget_ . When b _σ < σtarget_, the strategy could be leveraged. [203]

# **16 Real Estate**

## **16.1 Generalities**

Real estate, unlike most other financial assets, is tangible. It can be divided into two

main groups: commercial (offices, shopping centers, etc.) and residential (houses,

apartments, etc.) real estate. There are various ways to get exposure to real estate,

e.g., via real estate investment trusts (REITs), which often trade on major exchanges

and allow investors to take a liquid stake in real estate. [204] There are several ways

to measure a return from a real estate investment. A common and simple way is as

follows:

_R_ ( _t_ 1 _, t_ 2) = _[P]_ [(] _[t]_ [2][)][ +] _[ C]_ [(] _[t]_ [1] _[,][ t]_ [2][)] _−_ 1 (520)

_P_ ( _t_ 1)

Here: _R_ ( _t_ 1 _, t_ 2) is the return of the investment from the beginning of the holding

period _t_ 1 to the end of the holding period _t_ 2; _P_ ( _t_ 1) and _P_ ( _t_ 2) are the market values

- f the property at those times; _C_ ( _t_ 1 _, t_ 2) is the cash flows received, net of costs. [205]

## **16.2 Strategy: Mixed-asset diversification with real estate**

Real estate assets are attractive as a tool for diversification. Empirical studies

suggest that their correlation with traditional assets, such as bonds and stocks, is

low and remains such even through extreme market events (e.g., financial crises),

202 See, e.g., [Barroso and Santa-Clara, 2014], [Blitz, Huij and Martens, 2011], [Daniel and

Moskowitz, 2016].

203 Or, more simply, 100% of the investment could be allocated without leverage, in which case

b

the prefactor in Eq. (519) is min( _σtarget/σ,_ 1) instead.

204 REITs are in a sense similar to mutual funds as they provide a way for individual investors

to acquire ownership in income-generating real estate portfolios.

205 For some literature, see, e.g., [Block, 2011], [Eldred, 2004], [Geltner, Rodriguez and O'Connor,

1995], [Goetzmann and Ibbotson, 1990], [Hoesli and Lekander, 2008], [Hudson-Wilson _et al_, 2005],

[Larkin, Babin and Rose, 2004], [Mazurczak, 2011], [Pivar, 2003], [Steinert and Crowe, 2001].

111

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

when the correlations between traditional assets tend to increase. In addition, the

correlation tends to be lower at longer time horizons, so long-term investors may

improve their portfolio performance in terms of risk-adjusted returns by including

real estate assets (see, e.g., [Feldman, 2003], [Geltner _et al_, 2006], [Seiler, Webb and

Myer, 1999], [Webb, Curcio and Rubens, 1988]). So, a simple strategy amounts to

buying and holding real estate assets within a traditional portfolio containing, e.g.,

bonds, equities, etc. The optimal allocation varies depending on investor preferences

(in terms of risk and return) and the horizon (see, e.g., [Geltner, Rodriguez and

O'Connor, 1995], [Lee and Stevenson, 2005], [Mueller and Mueller, 2003], [Rehring,

2012]), and techniques such as mean-variance optimization or vector autoregressive

model (VAR) [206] can be used to calculate the optimal allocation conditional on the

time horizon and desired performance characteristics (see, e.g., [Fugazza, Guidolin

and Nicodano, 2007], [Hoevenaars _et al_, 2008], [MacKinnon and Al Zaman, 2009]).

## **16.3 Strategy: Intra-asset diversification within real estate**

This strategy amounts to diversifying real estate holdings (which can be part of

a larger portfolio as in Subsection 16.2). Real estate assets can be diversified by

geographic area, type of property, size, proximity to a metropolitan area, economic

region, etc. (see, e.g., [Eichholtz _et al_, 1995], [Hartzell, Hekman and Miles, 1986],

[Hartzell, Shulman and Wurtzebach, 1987], [Hudson-Wilson, 1990], [Seiler, Webb

and Myer, 1999], [Viezer, 2000]). Various standard portfolio construction techniques

(such as those mentioned in Subsection 16.2) can be applied to determine allocations.

**16.3.1** **Strategy: Property type diversification**

This strategy amounts to investing in real estate assets of di↵erent types, e.g.,

apartments, offices, industrial properties (which include manufacturing buildings

and property), shopping centers, etc. Empirical studies suggest that property type

diversification can be beneficial for non-systematic risk reduction after taking into

account transaction costs (see, e.g., [Firstenberg, Ross and Zisler, 1988], [Grissom,

Kuhle and Walther, 1987], [Miles and McCue, 1984], [Mueller and Laposa, 1995]).

**16.3.2** **Strategy: Economic diversification**

This strategy amounts to diversifying real estate investments by di↵erent regions

divided according to economic characteristics such as the main economic activity,

employment statistics, average income, etc. Empirical studies suggest that such diversification can reduce non-systematic risk and transaction costs (see, e.g., [Hartzell,

Shulman and Wurtzebach, 1987], [Malizia and Simons, 1991], [Mueller, 1993]).

206 For some literature on the VAR approach, see, e.g., [Barberis, 2000], [Campbell, 1991], [Campbell, Chan and Viceira, 2003], [Campbell and Viceira, 2004], [Campbell and Viceira, 2005], [Kandel

and Stambaugh, 1987], [Sørensen and Trolle, 2005].

112

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

**16.3.3** **Strategy: Property type and geographic diversification**

This strategy combines diversification based on more than one attribute, e.g., property type and region. Thus, if we consider four property types, to wit, office, retail,

industrial and residential, and four U.S. regions, to wit, East, Midwest, South, and

West, we can diversify across the resultant 16 groups (see, e.g., [Viezer, 2000]). [207]

## **16.4 Strategy: Real estate momentum – regional approach**

This strategy amounts to buying real estate properties based on their past returns. Empirical evidence suggests that there is a momentum e↵etc across the U.S.

metropolitan statistical areas (MSAs), i.e., areas with higher (lower) past returns

tend to continue to deliver higher (lower) returns in the future (see, e.g., [Beracha

and Downs, 2015], [Beracha and Skiba, 2011]). In some cases, a zero-cost strategy

can be constructed, e.g., by using alternative real estate vehicles such as REITs, and

futures and options on U.S. housing indices based on di↵erent geographical areas. [208]

## **16.5 Strategy: Inflation hedging with real estate**

Empirical studies suggest a strong relationship between the real estate returns and

inflation rate. Therefore, real estate can be used as a hedge against inflation. Further, empirically, some property types (e.g., commercial real estate, which tends to

adjust faster to inflationary price increases) appear to provide a better hedge than

- thers, albeit this can depend on various aspects such as the sample, market, etc. [209]

207 For some additional pertinent literature, see, e.g., [De Wit, 2010], [Ertugrul and Giambona,

2011], [Gatzla↵and Tirtiroglu, 1995], [Hartzell, Eichholtz and Selender, 2007], [Hastings and

Nordby, 2007], [Ross and Zisler, 1991], [Seiler, Webb and Myer, 1999], [Worzala and Newell, 1997].

208 For some literature on real estate momentum strategies (including using REITs and other

investment vehicles mentioned above) and related topics, see, e.g., [Abraham and Hendershott,

1993], [Abraham and Hendershott, 1996], [Anglin, Rutherford and Springer, 2003], [Buttimer,

Hyland and Sanders, 2005], [Caplin and Leahy, 2011], [Capozza, Hendershott and Mack, 2004],

[Case and Shiller, 1987], [Case and Shiller, 1989], [Case and Shiller, 1990], [Chan, Hendershott and

Sanders, 1990], [Chan, Leung and Wang, 1998], [Chen _et al_, 1998], [Cho, 1996], [Chui, Titman and

Wei, 2003a], [Chui, Titman and Wei, 2003b], [Cooper, Downs and Patterson, 1999], [Derwall _et_

_al_, 2009], [de Wit and van der Klaauw, 2013], [Genesove and Han, 2012], [Genesove and Mayer,

1997], [Genesove and Mayer, 2001], [Goebel _et al_, 2013], [Gra↵, Harrington and Young, 1999], [Gra↵

and Young, 1997], [Gupta and Miller, 2012], [Guren, 2014], [Haurin and Gill, 2002], [Haurin _et al_,

2010], [Head, Lloyd-Ellis and Sun, 2014], [Kallberg, Liu and Trzcinka, 2000], [Kang and Gardner,

1989], [Karolyi and Sanders, 1998], [Knight, 2002], [Krainer, 2001], [Kuhle and Alvayay, 2000], [Lee,

2010], [Levitt and Syverson, 2008], [Li and Wang, 1995], [Lin and Yung, 2004], [Liu and Mei,

1992], [Malpezzi, 1999], [Meen, 2002], [Mei and Gao, 1995], [Mei and Liao, 1998], [Moss _et al_,

2015], [Nelling and Gyourko, 1998], [Novy-Marx, 2009], [Ortalo-Magn´e and Ready, 2006], [Piazzesi

and Schneider, 2009], [Peterson and Hsieh, 1997], [Poterba and Sinai, 2008], [Smith and Shulman,

1976], [Stein, 1995], [Stevenson, 2001], [Stevenson, 2002], [Taylor, 1999], [Titman and Warga, 1986],

[Wheaton, 1990], [Yavas and Yang, 1995], [Young and Gra↵, 1996].

209 For some pertinent literature, see, e.g., [Bond and Seiler, 1998], [Fama and Schwert, 1977],

[Gunasekarage, Power and Zhou, 2008], [Hamelink and Hoesli, 1996], [Hartzell, Hekman and Miles,

113

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **16.6 Strategy: Fix-and-flip**

This is a short-term real estate investment strategy. It amounts to purchasing a

property, which typically is in a distressed condition and requires renovations, at a

(substantial) discount below market prices. The investor renovates the property and

resells it at a price high enough to cover the renovation costs and make a profit. [210]

# **17 Cash**

## **17.1 Generalities**

Cash is an asset, albeit at times its function as an asset might be overlooked or

taken for granted. As an asset, cash can be used in a variety of ways, e.g., i) as a

_risk management tool_, as it can help mitigate drawdowns and volatility; ii) as an

_opportunity management tool_, as it allows to take advantage of specific or unusual

situations; and iii) as a _liquidity management tool_ in unexpected situations that

require liquid funds. There are several ways to include liquid funds in a portfolio,

e.g., via U.S. Treasury bills, bank deposit certificates (CDs), commercial paper,

banker's acceptances, eurodollars, and repurchase agreements (a.k.a. repos), etc. [211]

## **17.2 Strategy: Money laundering – the dark side of cash**

Money laundering, broadly, is an activity wherein cash is used as a vehicle to transform illegal profits into legitimate-appearing assets. There are three main steps in a

money laundering process. The first and the riskiest step is the _placement_, whereby

illegal funds are introduced into the legal economy via fraudulent means, e.g., by

dividing funds into small amounts and depositing them into multiple bank accounts

thereby avoiding detection. The second step, _layering_, involves moving the money

around between di↵erent accounts and even countries thereby creating complexity

and separating the money from its source by several degrees. The third step is

_integration_, whereby money launderers get back the money via legitimate-looking

sources, e.g., cash-intensive businesses such as bars and restaurants, car washes, hotels (at least in some countries), gambling establishments, parking garages, etc. [212]

1987], [Le Moigne and Viveiros, 2008], [Mauer and Sebastian, 2002], [Miles and Mahoney, 1997],

[Newell, 1996], [Sing and Low, 2000], [Wurtzebach, Mueller and Machi, 1991].

210 For some pertinent literature, see, e.g., [Anacker, 2009], [Anacker and Schintler, 2015], [Bayer

_et al_, 2015], [Chinco and Mayer, 2012], [Corbett, 2006], [Depken, Hollans and Swidler, 2009],

[Depken, Hollans and Swidler, 2011], [Fu and Qian, 2014], [Hagopian, 1999], [Kemp, 2007], [Leung

and Tse, 2013], [Montelongo and Chang, 2008], [Villani and Davis, 2006].

211 For some literature, see, e.g., [Cook and LaRoche, 1993], [Cook and Rowe, 1986], [Damiani,

2012], [Duchin, 2010], [Goodfriend, 2011], [Schaede, 1990], [Summers, 1980], [Ysmailov, 2017].

212 For some literature, see, e.g., [Ardizzi _et al_, 2014], [Cox, 2015], [Gilmour and Ridley, 2015],

[Hopton, 1999], [John and Brigitte, 2009], [Kumar, 2012], [Levi and Reuter, 2006], [Schneider and

Windischbauer, 2008], [Seymour, 2008], [Soudijn, 2016], [Walker, 1999], [Wright _et al_, 2017].

114

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **17.3 Strategy: Liquidity management**

From a portfolio management perspective, this strategy amounts to optimally defining the amount of cash to be held in the portfolio to meet liquidity demands generated by unforeseen events. [213] Cash provides immediate liquidity, whereas other

assets would have to be liquidated first, which can be associated with substantial

transaction costs, especially if liquidation is abrupt. [214] From a corporate perspective,

holding cash can be a precautionary measure aimed at avoiding cash flow shortfalls

that can yield, inter alia, loss of investment opportunities, financial distress, etc. [215]

## **17.4 Strategy: Repurchase agreement (REPO)**

A repurchase agreement (REPO) is a cash-equivalent asset that provides immediate

liquidity at a preset interest rate for a specific period of time in exchange for another

asset used as a collateral. A reverse repurchase agreement is the opposite. So, a

REPO strategy amounts to borrowing (lending) cash with interest in exchange for

securities with the commitment of repurchasing them from (reselling them to) the

counterparty. This type of a transaction typically spans from 1 day to 6 months. [216]

## **17.5 Strategy: Pawnbroking**

REPOs are in some sense similar to much more ancient pawnbroking strategies. A

pawnbroker extends a secured cash loan with pre-agreed interest and period (which

can sometimes be extended). The loan is secured with a collateral, which is some

valuable item(s), such as jewelry, electronics, vehicles, rare books or musical instruments, etc. If the loan is not repaid with interest as agreed, then the collateral is

forfeited by the borrower and the pawnbroker can keep it or sell it. The amount of

loan typically is at a significant discount to the appraised value of the collateral. [217]

213 Note that this is not necessarily the same reason for holding cash as that behind Kelly

strategies. For some pertinent literature, see, e.g., [Browne, 2000], [Cover, 1984], [Davis and Lleo,

2012], [Hsieh and Barmish, 2015], [Hsieh, Barmish and Gubner, 2016], [Kelly, 1956], [Laureti, Medo

and Zhang, 2010], [Lo, Orr and Zhang, 2017], [Maslov and Zhang, 1998], [Nekrasov, 2014], [Rising

and Wyner, 2012], [Samuelson, 1971], [Thorp, 2006], [Thorp and Kassouf, 1967].

214 For some literature, see, e.g., [Agapova, 2011b], [Aragon _et al_, 2017], [Cao _et al_, 2013],

[Chernenko and Sunderam, 2016], [Connor and Leland, 1995], [Jiang, Li and Wang, 2017], [Kruttli,

Monin and Watugala, 2018], [Leland and Connor, 1995], [Simutin, 2014], [Yan, 2006].

215 For some literature on corporate aspects of liquidity management and related topics, see,

e.g., [Acharya, Almeida and Campello, 2007], [Almeida, Campello and Weisbach, 2005], [Azmat

and Iqbal, 2017], [Chidambaran, Fernando and Spindt, 2001], [Disatnik, Duchin and Schmidt,

2014], [Froot, Scharfstein and Stein, 1993], [Han and Qiu, 2007], [Opler _et al_, 1999], [Sher, 2014].

216 See, e.g., [Adrian _et al_, 2013], [Bowsher, 1979], [Duffie, 1996], [Garbade, 2004], [Gorton and

Metrick, 2012], [Happ, 1986], [Kraenzlin, 2007], [Lumpkin, 1987], [Ruchin, 2011], [Schatz, 2012],

[Simmons, 1954], [Sollinger, 1994], [Zhang, Fargher and Hou, 2018].

217 In Section 9 we discussed trading strategies based on commodity futures. Pawnbrokers,

among other things, trade physical commodities such as silver and gold. For some literature on

pawnbroking and related topics, see, e.g., [Bos, Carter and Skiba, 2012], [Bouman and Houtman,

115

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **17.6 Strategy: Loan sharking**

Unlike pawnbroking, loan sharking in many jurisdictions is illegal. Loan sharking

consists of o↵ering a loan at excessively high interest rates. Such a loan is not

necessarily secured by a collateral. Instead, a loan shark can sometimes resort to

blackmail and/or violence to enforce the terms of a loan (see, e.g., [Aldohni, 2013]).

# **18 Cryptocurrencies**

## **18.1 Generalities**

Cryptocurrencies, such as Bitcoin (BTC), Ethereum (ETH), etc., unlike traditional

fiat currencies (USD, EUR, etc.), are decentralized digital currencies based on opensource peer-to-peer (P2P) internet protocols. Cryptocurrencies such as BTC and

ETH use the blockchain technology [Nakamoto, 2008]. [218] Total market capitalization of cryptocurrencies is measured in hundreds of billions of dollars. [219] Many

investors are attracted to cryptocurrencies as speculative buy-and-hold assets. Thus,

some view them as diversifiers due to their low correlation with traditional assets.

Others perceive them as the future of money. Some investors simply want to make

a quick buck on a speculative bubble. Etc. [220] Be it as it may, unlike, e.g., stocks,

there are no evident "fundamentals" for cryptoassets based on which one could build

"fundamental" trading strategies (e.g., value-based strategies). So, cryptocurrency

trading strategies tend to rely on trend data mining via machine learning techniques.

## **18.2 Strategy: Artificial neural network (ANN)**

This strategy uses ANN to forecast short-term movements of BTC based on input

technical indicators. In ANN we have an input layer, an output layer, and some

1988], [Caskey, 1991], [D'Este, 2014], [Fass and Francis, 2004], [Maaravi and Levy, 2017], [McCants,

2007], [Shackman and Tenney, 2006], [Zhou _et al_, 2016].

218 Blockchain is a distributed ledger, which keeps a record of all transactions. It is a sequential

chain of blocks, which are linked using cryptography and time-stamping, containing transaction

records. No block can be altered retroactively without altering all subsequent blocks, which renders

blockchain resistant to data modification by its very design. For a blockchain maintained by a large

network as a distributed ledger continuously updated on a large number of systems simultaneously,

collusion of the network majority would be required for a nefarious modification of blockchain.

219 Cryptocurrencies are highly volatile, so their market cap has substantial time variability.

220 For some pertinent literature, see, e.g., [Baek and Elbeck, 2014], [Bariviera _et al_, 2017],

[Bouoiyour, Selmi and Tiwari, 2015], [Bouoiyour _et al_, 2016], [Bouri _et al_, 2017a], [Bouri _et al_,

2017b], [Brandvold _et al_, 2015], [Bri`ere, Oosterlinck and Szafarz, 2015], [Cheah and Fry, 2015],

[Cheung, Roca and Su, 2015], [Ciaian, Rajcaniova and Kancs, 2015], [Donier and Bouchaud, 2015],

[Dowd and Hutchinson, 2015], [Dyhrberg, 2015], [Dyhrberg, 2016], [Eisl, Gasser and Weinmayer,

2015], [Fry and Cheah, 2016], [Gajardo, Kristjanpoller and Minutolo, 2018], [Garcia and Schweitzer,

2015], [Garcia _et al_, 2014], [Harvery, 2014], [Harvey, 2016], [Kim _et al_, 2016], [Kristoufek, 2015], [Lee,

Guo and Wang, 2018], [Liew, Li and Budav´ari, 2018], [Ortisi, 2016], [Van Alstyne, 2014], [Wang

and Vergne, 2017], [White, 2015].

116

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

number of hidden layers. So, in this strategy the input layer is built using technical

indicators. [221] E.g., we can use (exponential) moving averages ((E)MAs), (exponential) moving standard deviations ((E)MSDs), relative strength index (RSI), [222] etc.

More concretely, we can construct the input layer as follows (see, e.g., [Nakano,

Takahashi and Takahashi, 2018]). Let _P_ ( _t_ ) be the BTC price at time _t_, where

_t_ = 1 _,_ 2 _, …_ is measured in some units (e.g., 15-minute intervals; also, _t_ = 1 is the

most recent time). Let:

_P_ ( _t_ )

_R_ ( _t_ ) = (521)

_P_ ( _t_ + 1) _[−]_ [1]

e

_R_ ( _t, T_ 1) = _R_ ( _t_ ) _−_ _R_ ( _t, T_ 1) (522)

_R_ ( _t, T_ 1) = [1]

_T_ 1

_t_ + _T_ 1

X _R_ ( _t_ _[0]_ ) (523)

_t_ _[0]_ = _t_ +1

b

_R_ ( _t, T_ 1) =

e

_R_ ( _t, T_ 1)

(524)

_σ_ ( _t, T_ 1)

1

[ _σ_ ( _t, T_ 1)] [2] =

_T_ 1 _−_ 1

_t_ + _T_ 1

X

_t_ _[0]_ = _t_ +1

[ _R_ [e] ( _t, T_ 1)] [2] (525)

So: _R_ ( _t_ ) is the return from _t_ + 1 to _t_ ; _R_ ( _t, T_ 1) is the serial mean return from _t_ + _T_ 1

to _t_ +1, i.e., over _T_ 1 periods, where _T_ 1 can be chosen to be long enough to provide a

reasonable estimate for the volatility (see below); _R_ [e] ( _t, T_ 1) is the serially demeaned

return; _σ_ ( _t, T_ 1) is the volatility computed from _t_ + _T_ 1 to _t_ + 1; and _R_ [b] ( _t, T_ 1) is the

normalized (serially demeaned) return. Below, for notational simplicity we will omit

the reference to the _T_ 1 parameter and will use _R_ [b] ( _t_ ) to denote the normalized returns.

Next, we can define EMAs, EMSDs and RSI as follows: [223]

EMA( _t, λ, ⌧_ ) = [1] _[ −]_ _[λ]_

1 _−_ _λ_ _[⌧]_

_t_ + _⌧_

X

_t_ _[0]_ = _t_ +1

_λ_ _[t][0][−][t][−]_ [1][ b] _R_ ( _t_ _[0]_ ) (526)

[EMSD( _t, λ, ⌧_ )] [2] = [1] _[ −]_ _[λ]_

_λ −_ _λ_ _[⌧]_

_t_ + _⌧_

X

_t_ _[0]_ = _t_ +1

_λ_ _[t][0][−][t][−]_ [1] [ _R_ [b] ( _t_ _[0]_ ) _−_ EMA( _t, λ, ⌧_ )] [2] (527)

_⌫_ +( _t, ⌧_ )

RSI( _t, ⌧_ ) = (528)

_⌫_ +( _t, ⌧_ ) + _⌫−_ ( _t, ⌧_ )

_⌫±_ ( _t, ⌧_ ) =

_t_ + _⌧_

X

_t_ _[0]_ = _t_ +1

max( _±R_ [b] ( _t_ _[0]_ ) _,_ 0) (529)

Here: _⌧_ is the moving average length; _λ_ is the exponential smoothing parameter. [224]

221 Thus, in spirit, it is somewhat similar to the single-stock KNN trading strategy discussed in

Subsection 3.17, which utilizes the k-nearest neighbor (KNN) algorithm (as opposed to ANN).

222

Typically, RSI _>_ 0 _._ 7 ( _<_ 0 _._ 3) is interpreted as overbought (oversold). See, e.g., [Wilder, 1978].

223 Note that this can be done in more than one way.

224 To reduce the number of parameters, we can, e.g., take _λ_ = ( _⌧_ _−_ 1) _/_ ( _⌧_ + 1).

117

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

The input layer can then be defined as consisting of, e.g., _R_ [b] ( _t_ ), EMA( _t, λa, ⌧a_ ),

EMSD( _t, λa, ⌧a_ ), and RSI( _t, ⌧a_ _[0]_ _[0]_ [), where] _[ a]_ [ = 1] _[, …, m]_ [,] _[ a][0]_ [ = 1] _[, …, m][0]_ [. The values] _[ ⌧][a]_

EMSD( _t, λa, ⌧a_ ), and RSI( _t, ⌧a_ _[0]_ _[0]_ [), where] _[ a]_ [ = 1] _[, …, m]_ [,] _[ a][0]_ [ = 1] _[, …, m][0]_ [. The values] _[ ⌧][a]_

can, e.g., be chosen to correspond to 30 min, 1 hr, 3 hrs and 6 hrs (so _m_ = 4; see fn.

224 for the values of _λa_ ). The values _⌧a_ _[0]_ _[0]_ [ can, e.g., be chosen to correspond to 3 hrs,]

224 for the values of _λa_ ). The values _⌧a_ _[0]_ _[0]_ [ can, e.g., be chosen to correspond to 3 hrs,]

6 hrs and 12 hrs (so _m_ _[0]_ = 3). There is no magic bullet here. These values can be

chosen based on out-of-sample backtests keeping in mind, however, the ever-present

danger of over-fitting various free parameters (see below), including _⌧a_, _λa_ and _⌧a_ _[0]_ _[0]_ [.]

The output layer can be constructed as follows. Let the objective be to forecast

which quantile the future normalized return will belong to. Let the number of

quantiles be _K_ . Thus, for the values of _t_ corresponding to the training dataset

_Dtrain_, [225] we have the normalized returns _R_ [b] ( _t_ ), _t 2 Dtrain_ . Let the ( _K −_ 1) quantile

values of _R_ [b] ( _t_ ), _t 2 Dtrain_, be _q↵_, _↵_ = 1 _, …,_ ( _K −_ 1). For each value of _t_, we can

define the supervisory _K_ - vectors _S↵_ ( _t_ ), _↵_ = 1 _, …, K_, as follows:

8

<

:

b

_S_ 1( _t_ ) = 1 _,_ _R_ ( _t_ ) __ _q_ 1

_S↵_ ( _t_ ) = 1 _,_ _q↵−_ 1 __ _R_ [b] ( _t_ ) _< q↵,_ 1 _< ↵< K_

_SK_ ( _t_ ) = 1 _,_ _qK−_ 1 __ _R_ [b] ( _t_ )

_S↵_ ( _t_ ) = 0 _,_ - otherwise

(530)

The output layer can then be a nonnegative _K_ - vector _p↵_ ( _t_ ), whose elements are

interpreted as the probabilities of the future normalized return to be in the _↵_ - th

quantile. So, we have

_K_

X

_↵_ =1

_p↵_ ( _t_ ) = 1 (531)

The output layer is constructed from the input layer as some nonlinear function

thereof with some number of parameters to be determined via training. In ANN we

have _L_ layers labeled by _`_ = 1 _, …, L_, where _`_ = 1 corresponds to the input layer,

and _`_ = _L_ corresponds to the output layer. At each layer we have _N_ [(] _[`]_ [)] nodes and

the corresponding _N_ [(] _[`]_ [)] - vectors _X_ _[~]_ [(] _[`]_ [)] with components _Xi_ [(][(] _[`][`]_ [)][)][,] _[ i]_ [(] _[`]_ [)][ = 1] _[, …, N]_ [ (] _[`]_ [)][:][226]

_X_ [(] _[`]_ [)]

[(] _[`]_ [)]

_i_ [(] _[`]_ [)][ =] _[ h]_ [(] _i_ [(] _[`][`]_ [)]

[(] _i_ [(] _[`][`]_ [)][)][(] _[~Y]_ [ (] _[`]_ [)][)] _[,]_ _`_ = 2 _, …, L_ (532)

_Y_ [(] _[`]_ [)]

_i_ [(] _[`]_ [)][ =]

_N_ [(] _[`][−]_ [1)]

X

_j_ [(] _[`][−]_ [1)] =1

_A_ [(] _[`]_ [)]

[(] _[`]_ [)]

_i_ [(] _[`]_ [)] _j_ [(] _[`][−]_ [1)] _[ X]_ _j_ [(][(] _[`][`][−][−]_ [1)][1)]

_j_ [(][(] _[`][`][−][−]_ [1)][1)][ +] _[ B]_ _i_ [(][(] _[`][`]_ [)]

_i_ [(] _[`]_ [)] (533)

Here: _~Y_ [(] _[`]_ [)] is an _N_ [(] _[`]_ [)] - vector with components _Y_ [(] _[`][`]_ [)]

[(] _[`]_ [)]

_i_ [(] _[`]_ [)] [,] _[ i]_ [(] _[`]_ [)][ = 1] _[, …, N]_ [ (] _[`]_ [)][;] _[ X]_ _i_ [(1)][(1)]

[;]

_i_ [(] _[`]_ [)] [,] _i_ [(1)][ are]

the input data (for each value of _t_, i.e., _R_ [b] ( _t_ ), EMA( _t, λa, ⌧a_ ), EMSD( _t, λa, ⌧a_ ), and

RSI( _t, ⌧a_ _[0]_ _[0]_ [) – see above);] _[ X]_ [(][(] _[L][L]_ [)][)][ are the output data] _[ p][↵]_ [(] _[t]_ [) (i.e.,] _[ N]_ [ (] _[L]_ [)][ =] _[ K]_ [ and the index]

_a_ _[0]_ _[0]_ [) – see above);] _[ X]_ [(][(] _[L][L]_ [)]

_i_ [(] _[L]_ [)][ are the output data] _[ p][↵]_ [(] _[t]_ [) (i.e.,] _[ N]_ [ (] _[L]_ [)][ =] _[ K]_ [ and the index]

225

Ideally, when computing the quantiles, an appropriate number _d_ 1 of the values of _t_ =

_td, td−_ 1 _, …, td−d_ 1+1, _d_ = _|Dtrain|_, should be excluded to ensure that all the EMA, EMSD and

RSI values are computed using the required numbers of datapoints.

226 We suppress the time variable _t_ for the sake of notational simplicity.

118

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

_i_ [(] _[L]_ [)] is the same as _↵_ ); the unknown parameters _A_ [(] _i_ [(] _[`][`]_ [)][)] _j_ [(] _[`][−]_ [1)][ (the so-called weights) and]

_B_ [(] _[`]_ [)]

_i_ [(] _[`]_ [)][ (the so-called bias) are determined via training (see below); and there is much]

arbitrariness in terms of picking the values of _N_ [(] _[`]_ [)] and the so-called activation

functions _h_ [(] _i_ [(] _[`][`]_ [)][)][.] A possible choice (out of myriad others) is as follows (see, e.g.,

[Nakano, Takahashi and Takahashi, 2018]): [227]

_h_ [(] _[`]_ [)]

_i_ [(] _[`]_ [)][(] _[~Y]_ [ (] _[`]_ [)][) = max]

_h_ [(] _[`]_ [)]

⇣

_Y_ [(] _[`]_ [)]

_i_ [(] _[`]_ [)] _[,]_ [ 0]

_Y_ [(] _[`]_ [)]

⌘

_,_ _`_ = 2 _, …, L −_ 1 (ReLU) (534)

_−_ 1

(softmax) (535)

3

5

3

_h_ [(] _[L]_ [)]

[(] _[L]_ [)]

_i_ [(] _[L]_ [)][(] _[~Y]_ [ (] _[L]_ [)][) =] _[ Y]_ [ (] _i_ [(] _[L][L]_ [)][)]

_i_ [(] _[L]_ [)]

2

4

_N_ [(] _[L]_ [)]

X

_j_ [(] _[L]_ [)] =1

_Y_ [(] _[L]_ [)]

_j_ [(] _[L]_ [)]

_Y_ [(] _[L]_ [)]

I.e., ReLU is used at the hidden layers (and the algorithm moves onto the next layer

- nly if some neurons are activated (fired) at layer _`_, i.e., at least some _Yi_ [(][(] _[`][`]_ [)][)] _[ >]_ [ 0),]

and softmax is used at the output layer (so that we have the condition (531) by construction). Further, to train the model, i.e., to determine the unknown parameters,

some kind of error function _E_ (we suppress its variables) must be minimized, e.g.,

the so-called cross-entropy (see, e.g., [de Boer _et al_, 2005]):

_E_ = _−_

X

_t2Dtrain_

_K_

X _S↵_ ( _t_ ) ln( _p↵_ ( _t_ )) (536)

_↵_ =1

To minimize _E_, one can, e.g., use the stochastic gradient descent (SGD) method,

which minimizes the error function iteratively until the procedure converges. [228]

Finally, we must specify the trading rules. There are a number of possibilities

here depending on the number of quantiles, i.e., the choice of _K_ . A reasonable

trading signal is given by:

Signal =

(

Buy _,_ i↵ max( _p↵_ ( _t_ )) = _pK_ ( _t_ )

(537)

Sell _,_ i↵ max( _p↵_ ( _t_ )) = _p_ 1( _t_ )

Therefore, the trader buys BTC if the predicted class is _pK_ ( _t_ ) (the top quantile),

and sells if it is _p_ 1( _t_ ) (the bottom quantile). This trading rule can be modified. E.g.,

the buy signal can be based on the top 2 quantiles, and the sell signal can be based

- n the bottom 2 quantiles (see, e.g., [Nakano, Takahashi and Takahashi, 2018]). [229]

227 Again, there is no magic bullet here. A priori, a host of activation functions can be used,

e.g., sigmoid (a.k.a. logistic), tanh (hyperbolic tangent), rectified linear unit (ReLU), softmax, etc.

For some pertinent literature, see, e.g., [Bengio, 2009], [Chandra, 2003], [da S. Gomes, Ludermir

and Lima, 2011], [Glorot, Bordes and Bengio, 2011], [Goodfellow _et al_, 2013], [Karlik and Vehbi,

2011], [Mhaskar and Micchelli, 1993], [Singh and Chandra, 2003], [Wu, 2009].

228 A variety of methods can be used. For some pertinent literature, see, e.g., [Denton and Hung,

1996], [Dong and Zhou, 2008], [Dreyfus, 1990], [Ghosh, 2012], [Kingma and Ba, 2014], [Ruder,

2017], [Rumelhart, Hinton and Williams, 1986], [Schmidhuber, 2015], [Wilson _et al_, 2018].

229 Various techniques used in applying ANNs to other asset classes such as equities may also be

useful for cryptocurrencies. See, e.g., [Ballings _et al_, 2015], [Chong, Han and Park, 2017], [Dash

and Dash, 2016], [de Oliveira, Nobre and Z´arate, 2013], [Sezer, Ozbayoglu and Dogdu, 2017], [Yao,

Tan and Poh, 1999]. For some additional literature, see fn. 61.

119

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

## **18.3 Strategy: Sentiment analysis – na¨ıve Bayes Bernoulli**

Social media sentiment analysis based strategies have been used in stock trading [230]

and also applied to cryptocurrency trading. The premise is to use a machine learning

classification scheme to forecast, e.g., the direction of the BTC price movement based

- n tweet data. This entails collecting all tweets containing at least one keyword from
a pertinent (to BTC price forecasting) learning vocabulary _V_ - ver some timeframe,
and cleaning this data. [231] The resultant data is then further processed by assigning
a so-called feature ( _M_ - vector) _Xi_ to each tweet labeled by _i_ = 1 _, …, N_, where _N_
is the number of tweets in the dataset. Here _M_ = _|V |_ is the number of keywords
in the learning vocabulary _V_ . So, the components of each vector _Xi_ are _Xia_, where
_a_ = 1 _, …, M_ labels the words in _V_ . Thus, if the word _wa 2 V_ labeled by _a_ is not
present in the tweet _Ti_ labeled by _i_, then _Xia_ = 0. If _wa_ is present in _Ti_, then we can
set _Xia_ = 1 or _Xia_ = _nia_, where _nia_ counts the number of times _wa_ appears in _Ti_ .
In the former case (which is what we focus on in the following) we have a Bernoulli
probability distribution, while in the latter case we have a multinomial distribution.

Next, we need to build a model that, given the _N_ feature vectors _Xi_, predicts

- ne out of a preset number _K_ - f outcomes (so-called _classes_ ) _C↵_, _↵_ = 1 _, …, K_ .
E.g., we can have _K_ = 2 outcomes, whereby BTC is forecasted to go up or down,
which can be used as the buy/sell signal. Alternatively, as in the ANN strategy
in Subsection 18.2, we can have _K_ quantiles for the normalized returns _R_ [b] ( _t_ ). Etc.
This then defines our trading rules. Once the classes _C↵_ are chosen, a simple way
to forecast them is to build a model for conditional probabilities _P_ ( _C↵|X_ 1 _, …, XN_ ).
Here, generally, _P_ ( _A|B_ ) denotes the conditional probability of _A_ - ccurring assuming
_B_ is true. Pursuant to Bayes' theorem, we have

_P_ ( _A|B_ ) = _[P]_ [(] _[B][|][A]_ [)] _[ P]_ [(] _[A]_ [)] (538)

_P_ ( _B_ )

where _P_ ( _A_ ) and _P_ ( _B_ ) are the probabilities of _A_ and _B_ - ccurring independently of

each other. So, we have

_P_ ( _C↵|X_ 1 _, …, XN_ ) = _[P]_ [(] _[X]_ [1] _[,][ … ][,][ X][N]_ _[|][C][↵]_ [)] _[ P]_ [(] _[C][↵]_ [)] (539)

_P_ ( _X_ 1 _, …, XN_ )

Note that _P_ ( _X_ 1 _, …, XN_ ) is independent of _C↵_ and will not be important below.

Now, _P_ ( _C↵_ ) can be estimated from the training data. The primary difficulty is in

230 For some literature, see, e.g., [Bollen and Mao, 2011], [Bollen, Mao and Zeng, 2011], [Kordonis,

Symeonidis and Arampatzis, 2016], [Liew and Budav´ari, 2016], [Mittal and Goel, 2012], [Nisar and

Yeung, 2018], [Pagolu _et al_, 2016], [Rao and Srivastava, 2012], [Ruan, Durresi and Alfantoukh,

2018], [Sprenger _et al_, 2014], [Sul, Dennis and Yuan, 2017]), [Zhang, Fuehres and Gloor, 2011].

231 This, among other things, includes removing duplicate tweets likely generated by ubiquitous

Twitter bots, removing the so-called _stop-words_ (e.g., "the", "is", "in", "which", etc.), which do

not add value, from the tweets, and performing the so-called _stemming_, i.e., reducing words to

their base form (e.g., "investing" and "invested" are reduced to "invest", etc.). The latter can be

achieved using, e.g., the Porter stemming algorithm or other similar algorithms (for some literature,

see, e.g., [Hull, 1996], [Porter, 1980], [Raulji and Saini, 2016], [Willett, 2006]).

120

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

estimating _P_ ( _X_ 1 _, …, XN_ _|C↵_ ). Here a simplification occurs if we make the "na¨ıve"

conditional independence assumption (hence the term "na¨ıve Bayes"), i.e., that,

given the class _C↵_, for all _i_ the feature _Xi_ is conditionally independent of every

- ther feature _Xj_, _j_ = 1 _, …, N_ ( _j 6_ = _i_ ):

_P_ ( _Xi|C↵, X_ 1 _, …, Xi−_ 1 _, Xi_ +1 _, …, XN_ ) = _P_ ( _Xi|C↵_ ) (540)

Then Eq. (539) simplifies as follows:

_P_ ( _C↵|X_ 1 _, …, XN_ ) = _γ P_ ( _C↵_ )

_N_

Y

_i_ =1

_P_ ( _Xi|C↵_ ) (541)

_γ_ = 1 _/P_ ( _X_ 1 _, …, XN_ ) (542)

The conditional probabilities _P_ ( _Xi|C↵_ ) can be estimated using the conditional probabilities _P_ ( _wa|C↵_ ) for the _M_ words _wa_ in the learning vocabulary _V_ :

_P_ ( _Xi|C↵_ ) =

_M_

Y

_a_ =1

_Qia↵_ (543)

_Qia↵_ = _P_ ( _wa|C↵_ ) _,_ _Xia_ = 1 (544)

_Qia↵_ = 1 _−_ _P_ ( _wa|C↵_ ) _,_ _Xia_ = 0 (545)

The conditional probabilities _P_ ( _wa|C↵_ ) can simply be estimated based on the occurrence frequencies of the words _wa_ in the training data. Similarly, the probabilities

_P_ ( _C↵_ ) can be estimated from the training data. [232] So, if we set the forecasted value

_Cpred_ - f the outcome to that with the maximum _P_ ( _C↵|X_ 1 _, …, XN_ ), then

_M_

Y

_a_ =1

_Cpred_ = argmax _C↵2{_ 1 _,…,K}P_ ( _C↵_ )

# **19 Global Macro**

## **19.1 Generalities**

_N_

Y

_i_ =1

[ _P_ ( _wa|C↵_ )] _[X][ia]_ [1 _−_ _P_ ( _wa|C↵_ )] [1] _[−][X][ia]_ (546)

Actually, macro trading strategies constitute an investment style, not an asset class.

These types of strategies are not limited to any particular asset class or a geographical region and can invest in stocks, bonds, currencies, commodities, derivatives, etc.,

232 For some literature on applying Twitter sentiment to Bitcoin trading, see, e.g., [Colianni,

Rosales and Signorotti, 2015], [Georgoula _et al_, 2015], which also discuss other machine learning

methods such as support vector machines (SVM) and logistic regression (a.k.a. logit model). For

some literature on Bitcoin trading using other sentiment data, see, e.g., [Garcia and Schweitzer,

2015], [Li _et al_, 2018]. For some literature on applying tree boosting algorithms to cryptocurrency

trading, see, e.g., [Alessandretti _et al_, 2018], [Li _et al_, 2018]. For some additional pertinent literature

(which generally appears to be relatively scarce for BTC compared with similar literature on stock

trading), see, e.g., [Amjad and Shah, 2017], [Jiang and Liang, 2017], [Shah and Zhang, 2014].

121

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

seeking to capitalize on regional, economic and political changes around the world.

While many macro strategies are based on analysts' subjective opinions (these are

discretionary strategies), a systematic approach (non-discretionary strategies) also

plays a prominent role. Global macro strategies can vary by their style, e.g., there

are directional strategies, long-short strategies, relative value strategies, etc. [233]

## **19.2 Strategy: Fundamental macro momentum**

This strategy aims to capture returns from the market underreaction to changes

in macroeconomic trends by buying (selling) assets favored (adversely a↵ected) by

incoming macroeconomic trends. Di↵erent asset classes can be used in building

an investment portfolio, e.g., global equity indexes, currencies, government bonds,

etc. [234] The "state variables" to consider are the business cycle, international trade,

monetary policy, and risk sentiment trends (see, e.g., [Brooks, 2017]). [235] E.g., equity

indexes from some number of countries are ranked using the values of the aforesaid

4 state variables for each country. [236] A zero-cost portfolio can then be constructed

by, e.g., going long the indexes in the top decile and shorting those in the bottom

decile. The so-constructed portfolios for various asset classes can, e.g., be combined

with equal weights. Typically, the holding period ranges from three to six months.

## **19.3 Strategy: Global macro inflation hedge**

Exogenous shocks (such as a political or geopolitical issue) can have an impact

- n commodity prices such as oil leading to an increase in prices in oil-dependent
economies. There are two steps in this process: (i) a pass-through from commodity
prices to the headline inflation (HI), and (ii) then, a pass-through from HI to the
core inflation (CI). [237] I.e., HI quickly reflects various shocks around the world. So,

233 Macro strategies can be divided into 3 classes: discretionary macro, systematic macro, and

CTA/managed futures. For some literature on macro strategies and related topics, see, e.g.,

[Asgharian _et al_, 2004], [Chung, 2000], [Connor and Woo, 2004], [Dobson, 1984], [Drobny, 2006],

[Fabozzi, Focardi and Jonas, 2010], [Fung and Hsieh, 1999], [Gliner, 2014], [Kidd, 2014], [Lambert,

Papageorgiou and Platania, 2006], [Potjer and Gould, 2007], [Stefanini, 2006], [Zaremba, 2014].

234 Di↵erent asset classes are a↵ected by the same macroeconomic trends di↵erently. E.g., increasing growth is positive for equities and currencies, but negative for bonds.

235 Business cycle trends can be estimated using 1-yr changes in the real GDP growth and CPI

inflation forecast, each contributing with a 50% weight. International trade trends can be estimated

using 1-yr changes in spot FX rates against an export-weighted basket. Monetary policy trends can

be estimated using 1-yr changes in short-term rates. Risk sentiment trends can be estimated using

1-yr equity market excess returns. For some literature on the rationale behind these variables, see,

e.g., [Bernanke and Kuttner, 2005], [Clarida and Waldman, 2007], [Eichenbaum and Evans, 1995].

236 There is a variety of ways to do this ranking using the 4 variables. See, e.g., Subsection 3.6.

237 HI is the raw inflation measured by indices such as the Consumer Price Index (CPI) based on

prices of goods and services in a broad basket, while CI excludes some products such as commodities, which are highly volatile and add sizable noise to the index. For some pertinent literature, see,

e.g., [Blanchard and Gali, 2007], [Blanchard and Riggi, 2013], [Clark and Terry, 2010], [Hamilton,

2003], [Marques, Neves and Sarmento, 2003], [Trehan, 2005], [van den Noord and Andr´e, 2004].

122

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

the global macro inflation hedge strategy is based on the spread between HI and CI

as an indicator to hedge inflation using commodities: [238]

CA = max

✓

0 _,_ min

HI _Y oY −_ CI _Y oY_

✓ HI _Y oY_

_,_ 1

- ◆

(547)

Here: CA is the commodity allocation percentage within the portfolio, and "YoY"

stands for "year-on-year". The hedge can be executed by, e.g., buying a basket of

various commodities through ETFs, futures, etc. (see, e.g., [Fulli-Lemaire, 2013]).

## **19.4 Strategy: Global fixed-income strategy**

This systematic macro trading strategy is based on a cross-sectional analysis of

government bonds from various countries using variables such as (see, e.g., [Br¨uck

and Fan, 2017]) GDP, inflation, sovereign risk, real interest rate, output gap, value,

momentum, term spread, and the so-called Cochrane-Piazzesi predictor [Cochrane

and Piazzesi, 2005]. Thus, said bonds can be ranked based on these factors and a

zero-cost portfolio can be constructed by buying bonds in the top quantile and selling

bonds in the bottom quantile. Similarly to Subsection 3.6, multifactor portfolios can

also be constructed. Typically, country-bond ETFs are used in such portfolios. [239]

## **19.5 Strategy: Trading on economic announcements**

Empirical evidence suggests that stocks tend to yield higher returns on important

announcement dates such Federal Open Market Committee (FOMC) announcements. [240] So, a simple macro trading strategy consists of buying stocks on important announcement days (ADs), such as the FOMC announcements, and switching

to risk-free assets during non-announcement days (NDAs). This is done via ETFs,

futures, etc., as opposed to individual stocks, as the strategy involves moving from

100% allocated in equities to 100% allocated in Treasuries (see, e.g., [Stotz, 2016]). [241]

# **20 Infrastructure**

Broadly, investing in infrastructure includes investing in long-term projects such as

transportation (roads, bridges, tunnels, railways, ports, airports, etc.), telecommuni

238 For some literature on using commodities as an inflation hedge, see, e.g., [Amenc, Martellini

and Ziemann, 2009], [Bodie, 1983], [Bodie and Rosansky, 1980], [Greer, 1978], [Hoevenaars _et al_,

2008], [Jensen, Johnson and Mercer, 2002].

239 For some literature on factor investing in fixed-income assets, see, e.g., [Beekhuizen _et al_, 2016],

[Correia, Richardson and Tuna, 2012], [Houweling and van Vundert, 2017], [Koijen, Moskowitz,

Pedersen and Vrugt, 2018], [L'Hoir and Boulhabel, 2010], [Staal _et al_, 2015].

240 For some pertinent literature, see, e.g., [Ai and Bansal, 2016], [Bernanke and Kuttner, 2005],

[Boyd, Hu and Jagannathan, 2005], [Donninger, 2015], [Graham, Nikkinen and Sahlstr¨om, 2003],

[Jones, Lamont and Lumsdaine, 1998], [Lucca and Moench, 2012], [Savor and Wilson, 2013].

241 This strategy can be augmented with various (e.g., technical) filters (see, e.g., [Stotz, 2016]).

123

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

cations (transmission cables, satellites, towers, etc.), utilities (electricity generation,

gas or electricity transmission or distribution, water supply, sewage, waste, etc.), energy (including but not limited to renewable energy), healthcare (hospitals, clinics,

senior homes, etc.), educational facilities (schools, universities, research institutes,

etc.), etc. An investor can gain exposure to infrastructure assets through di↵erent direct or indirect investments such private equity-type investments (e.g., via unlisted

infrastructure funds), listed infrastructure funds, stocks of publicly traded infrastructure companies, municipal bonds earmarked to infrastructure projects, etc. [242]

Infrastructure investments, by their nature, are long-term, buy-and-hold investments. One investment strategy is to use infrastructure assets to improve riskadjusted returns of well-diversified portfolios, e.g., via tracking ETFs, global infrastructure funds, unlisted infrastructure funds, etc. [243] Another investment strategy is

to use infrastructure assets for inflation hedging. [244] Yet another investment strategy

is to generate stable cash flows from infrastructure investments. For this purpose,

"brownfield" projects (associated with established assets in need of improvement)

are more appropriate than "greenfield" projects (associated with assets to be constructed). Diversification across di↵erent sectors can be beneficial in this regard. [245]

# **Acknowledgments**

JAS would like to thank Juli´an R. Siri for valuable discussions.

242 For some literature on infrastructure as an asset class and related topics, see, e.g., [Ansar _et_

_al_, 2016], [Bitsch, Buchner and Kaserer, 2010], [Blanc-Brude, Hasan and Whittaker, 2016], [BlancBrude, Whittaker and Wilde, 2017], [Blundell, 2006], [Clark, 2017], [Clark _et al_, 2012], [Finkenzeller,

Dechant and Sch¨afers, 2010], [Grigg, 2010], [Grimsey and Lewis, 2002], [Hartigan, Prasad and De

Francesco, 2011], [Helm, 2009], [Helm and Tindall, 2009], [Herranz-Lonc´an, 2007], [Inderst, 2010a],

[McDevitt and Kirwan, 2008], [Newell, Chau and Wong, 2009], [Newell and Peng, 2008], [Peng

and Newell, 2007], [Ramamurti and Doh, 2004], [Rickards, 2008], [Sanchez-Robles, 1998], [Sawant,

2010a], [Sawant, 2010b], [Singhal, Newell and Nguyen, 2011], [Smit and Trigeorgis, 2009], [Torrance,

2007], [Vives, 1999], [Weber, Staub-Bisang and Alfen, 2016], [Wurstbauer _et al_, 2016].

243 See, e.g., [Dechant and Finkenzeller, 2013], [Haran _et al_, 2011], [Joshi and Lambert, 2011],

[Martin, 2010], [Nartea and Eves, 2010], [Newell, Peng and De Francesco, 2011], [Oyedele, Adair

and McGreal, 2014], [Panayiotou and Medda, 2016], [Rothballer and Kaserer, 2012].

244 Infrastructure, as real estate, can be an inflation-hedging investment, albeit apparently with

some heterogeneity. For some literature, see, e.g., [Armann and Weisdorf, 2008], [Bird, Liem and

Thorp, 2014], [Inderst, 2010b], [Wurstbauer and Sch¨afers, 2015], [R¨odel and Rothballer, 2012].

245 For some pertinent literature, see, e.g., [Arezki and Sy, 2016], [Espinoza and Luccioni, 2002],

[Leigland, 2018], [Panayiotou and Medda, 2014], [Weber, Adair and McGreal, 2008].

124

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

# **A R Source Code for Backtesting**

In this appendix we give the R (R Package for Statistical Computing, `[http://www.](http://www.r-project.org)`

`[r-project.org](http://www.r-project.org)` ) source code for backtesting intraday strategies, where the position is established at the open and liquidated at the close of the same day. The

sole purpose of this code is to illustrate some simple tricks for doing out-of-sample

backtesting. In particular, this code does not deal with the survivorship bias in any

way, [246] albeit for this kind of strategies – precisely because these are intraday strategies – the survivorship bias is not detrimental (see, e.g., [Kakushadze, 2015b]). [247]

The main function (which internally calls some subfunctions) is `qrm.backtest()`

with the following inputs: (i) `days` is the lookback; (ii) `d.r` is used for computing

risk, both as the length of the moving standard deviation `tr` (computed internally

- ver `d.r` - day moving windows) as well as the lookback for computing the risk model
(and, if applicable, a statistical industry classification) – see below; (iii) `d.addv` is
used as the lookback for the average daily dollar volume `addv`, which is computed
internally; (iv) `n.addv` is the number of top tickers by `addv` used as the trading
universe, which is recomputed every `d.r` days; (v) `inv.lvl` is the total investment
level (long plus short, and the strategy is dollar-neutral); (vi) `bnds` controls the
position bounds (which are the same in this strategy as the trading bounds), i.e.,
the dollar holdings _Hi_ for each stock are bounded via ( _Bi_ are the `bnds` elements,
which can be uniform)

_|Hi| _ _Bi Ai_ (548)

where _i_ = 1 _, …, N_ labels the stocks in the trading universe, and _Ai_ are the corresponding elements of `addv` ; (vii) `incl.cost` is a Boolean for including linear trading

costs, which are modeled as follows. [248] For the stock labeled by _i_, let _Ei_ be its

expected return, and _wi_ be its weight in the portfolio. The source code below determines _wi_ via (mean-variance) optimization (with bounds). For the stock labeled by

_i_, let the linear trading cost per _dollar_ traded be _⌧i_ . Including such costs in portfolio

- ptimization amounts to replacing the expected return of the portfolio

_Eport_ =

_N_

X

_i_ =1

_Ei wi_ (549)

by

_Eport_ =

_N_

X

_i_ =1

[ _Ei wi −_ _⌧i |wi|_ ] (550)

246 I.e., simply put, it does not account for the fact that in the past there were tickers that are

no longer there at present, be it due to bankruptcies, mergers, acquisitions, etc. Instead, the input

data is taken for the tickers that exist on a given day by looking back, say, some number of years.

247 For some literature related to the survivorship bias, which is important for longer-horizon

strategies, see, e.g., [Amin and Kat, 2003], [Brown _et al_, 1992], [Bu and Lacey, 2007], [Carhart _et_

_al_, 2002], [Davis, 1996], [Elton, Gruber and Blake, 1996b], [Garcia and Gould, 1993].

248 Here we closely follow the discussion in Subsection 3.1 of [Kakushadze and Yu, 2018b].

125

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

A complete algorithm for including linear trading costs in mean-variance optimization is given in, e.g., [Kakushadze, 2015b]. However, for our purposes here the

following simple "hack" suffices. We can define the e↵ective return

_Ei_ _[eff]_ = sign( _Ei_ ) max( _|Ei| −_ _⌧i,_ 0) (551)

and simply set

_Eport_ =

_N_

X

_i_ =1

_Ei_ _[eff]_ _wi_ (552)

I.e., if the magnitude for the expected return for a given stock is less than the

expected cost to be incurred, we set the expected return to zero, otherwise we

reduce said magnitude by said cost. This way we can avoid a nontrivial iterative

procedure (see, e.g., [Kakushadze, 2015b]), albeit this is only an approximation.

So, what should we use as _⌧i_ in (551)? The model of [Almgren _et al_, 2005] is

reasonable for our purposes here. Let _Hi_ be the _dollar_ amount traded for the stock

labeled by _i_ . Then for the linear trading costs we have

_Ti_ = _⇣σi_

_|Hi|_

_Ai_

(553)

where _σi_ is the historical volatility, _Ai_ is the average daily dollar volume (ADDV),

and _⇣_ is an overall normalization constant we need to fix. However, above we work

with weights _wi_, not traded dollar amounts _Hi_ . In our case of a purely intraday

trading strategy discussed above, they are related simply via _Hi_ = _I wi_, where _I_

is the total investment level (i.e., the total absolute dollar holdings of the portfolio

after establishing it). Therefore, we have (note that _Ti_ = _⌧i |Hi|_ = _⌧i I |wi|_ )

_⌧i_ = _⇣_ _[σ][i]_

_Ai_

(554)

We will fix the overall normalization _⇣_ via the following heuristic. We will (conservatively) assume that the average linear trading cost per dollar traded is 10 bps (1 bps

= 1 basis point = 1/100 of 1%), [249] i.e., mean( _⌧i_ ) = 10 _[−]_ [3] and _⇣_ = 10 _[−]_ [3] _/_ mean( _σi/Ai_ ).

Next, internally the code sources price and volume data by reading it from tabdelimited files [250] `nrm.ret.txt` (overnight return internally referred to as `ret` - see

below), `nrm.open.txt` (daily raw, unadjusted open price, internally referred to as

`open` ), `nrm.close.txt` (daily raw, unadjusted close price, internally referred to as

`close` ), `nrm.vol.txt` (daily raw, unadjusted volume, internally referred to as `vol` ),

`nrm.prc.txt` (daily close price fully adjusted for all splits and dividends, internally

referred to as `prc` ). The rows of `ret`, `open`, `close`, `vol` and `prc` correspond to the _N_

tickers (index _i_ ). Let trading days be labeled by _t_ = 0 _,_ 1 _,_ 2 _, …, T_, where _t_ = 0 is the

249 This amounts to assuming that, to establish an equally-weighted portfolio, it costs 10 bps.

250 This specific code does not use high, low, VWAP (volume-weighted average price), intraday

(e.g., minute-by-minute) prices, etc. However, it is straightforward to modify it such that it does.

126

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

most recent day. Then the columns of `open`, `close`, `vol` and `prc` correspond to the

trading days _t_ = 1 _,_ 2 _, …, T_, i.e., the value of _t_ is the same as the value of the column

index. On the other hand, the columns of `ret` correspond to the overnight close-to

- pen returns from the trading day _t_ to the trading day _t −_ 1. I.e., the first column
- f `ret` corresponds to the overnight close-to-open return from the trading day _t_ = 1
to the trading day _t_ = 0. Furthermore, `ret`, call it _Ri_ ( _t_ ), where _t_ = 1 _,_ 2 _, …, T_ labels
the columns of `ret`, is computed as follows:

_Ri_ ( _t_ ) = ln

_P AO_

_i_

_P_

✓ _i_

_AOi_ ( _t −_ 1)

_P_ _[AC]_ _t_

_i_ _[AC]_ ( _t_ )

(555)

_i_ _[AO]_ ( _t_ ) = _γi_ _[adj]_

_i_

_i_ _[adj]_ ( _t_ ) = _[P][ AC][C]_

_P_ _[AO]_

_i_ _[adj]_ ( _t_ ) _Pi_ _[O]_

_i_ [(] _[t]_ [)] (556)

_γi_ _[adj]_

_[ AC]_ _i_ ( _t_ )

_P_ _[C]_ _[t]_

(557)

_i_ _[C]_ [(] _[t]_ [)]

Here: _P_ _[O]_

Here: _Pi_ _[O]_ [(] _[t]_ [) is the raw open price (which is the corresponding element of] `[ open]` [ for]

_t_ = 1 _,_ 2 _, …, T_ ); _Pi_ _[C]_ [(] _[t]_ [) is the raw close price (which is the corresponding element]

_t_ = 1 _,_ 2 _, …, T_ ); _Pi_ _[C]_ [(] _[t]_ [) is the raw close price (which is the corresponding element]

- f `close` for _t_ = 1 _,_ 2 _, …, T_ ); _Pi_ _[AC]_ ( _t_ ) is the fully adjusted close price (which is the
- f `close` for _t_ = 1 _,_ 2 _, …, T_ ); _Pi_ _[AC]_ ( _t_ ) is the fully adjusted close price (which is the

corresponding element of `prc` for _t_ = 1 _,_ 2 _, …, T_ ); _γi_ _[adj]_ ( _t_ ) is the adjustment factor,

corresponding element of `prc` for _t_ = 1 _,_ 2 _, …, T_ ); _γi_ ( _t_ ) is the adjustment factor,

which is used for computing the fully adjusted open price _Pi_ _[AO]_ ( _t_ ); so _Ri_ ( _t_ ) is the

which is used for computing the fully adjusted open price _Pi_ _[AO]_ ( _t_ ); so _Ri_ ( _t_ ) is the

- vernight, close-to-open return based on fully adjusted prices. Note that the _t_ = 0
prices required for computing _Ri_ (1) are _not_ part of the matrices `open`, `close` and
`prc` . Also, the code internally assumes that the matrices `ret`, `open`, `close`, `vol`
and `prc` are all aligned, i.e., all tickers and dates are the same and in the same

- rder in each of the 5 files `nrm.ret.txt` (note the labeling of the returns described
above), `nrm.open.txt`, `nrm.close.txt`, `nrm.vol.txt` and `nrm.prc.txt` . The ordering

- f the tickers in these files is immaterial, so long as it is the same in all 5 files as
the code is oblivious to this ordering. However, the dates must be ordered in the
descending order, i.e., the first column corresponds to the most recent date, the
second column corresponds to the date before it, etc. (here "date" corresponds to a
trading day). Finally, note that the internal function `read.x()` reads these files with
the parameter value `as.is = T` . This means that these files are in the "R-ready"
tab-delimited format, with _N_ + 1 tab-delimited lines. The lines 2 through _N_ + 1
have _T_ + 1 elements each, the first element being a ticker symbol (so the _N_ ticker
symbols comprise `dimnames(` _·_ `)[[1]]` - f the corresponding matrix, e.g., `open` for the

- pen prices), and the other _T_ elements being the _T_ values (e.g., _Pi_ _[O]_ [(] _[t]_ [),] _[ t]_ [ = 1] _[, …, T]_ [,]
- pen prices), and the other _T_ elements being the _T_ values (e.g., _Pi_ _[O]_ [(] _[t]_ [),] _[ t]_ [ = 1] _[, …, T]_ [,]

for the open prices). However, the first line has only _T_ elements, which are the labels

_·_

- f the trading days (so these comprise `dimnames(` `)[[2]]` - f the corresponding matrix,
e.g., `open` for the open prices). Internal functions that use this input data, such as
`calc.mv.avg()` (which computes simple moving averages) and `calc.mv.sd()` (which
computes simple moving standard deviations) are simple and self-explanatory.

As mentioned above, the input parameter `d.r` is used for recomputing the trading

universe every `d.r` trading days and also recomputing the risk models (see below)

every `d.r` trading days. These computations are done 100% out-of-sample, i.e., the

127

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

data used in these computations is 100% in the past w.r.t. to the trading day on

which the resultant quantities are used for (simulated) trading. This is accomplished

in part by using the internal function `calc.ix()` . Note that the input data described

above is structured and further used in such a way that the backtests are 100% out

- f-sample. Here two conceptually di↵erent aspects must be distinguished. Thus,
we have the expected returns and "the rest", the latter – which can be loosely
referred to as "risk management" – being the universe selection, the risk model
computation, etc., i.e., the machinery that gets us from the expected returns to
the desired holdings (that is, the strategy positions). The risk management part
must be 100% out-of-sample. In real life the expected returns are also 100% out
- f-sample. However, in backtesting, while the expected returns cannot under any
circumstances look into the future, they can sometimes be "borderline in-sample".
Thus, consider a strategy that today trades on the overnight yesterday's-close-totoday's-open return. If we assume that the positions are established based on this
return sometime after the open, then the backtest is out-of-sample by the "delay"
time between the open and when the position is established. However, if we assume
that the position is established at the open, then this is the so-called "delay-0"
strategy, and the backtest is "borderline in-sample" in the sense that in real life the

- rders would have to be sent with some, albeit possibly small, delay, but could never
be executed exactly at the open. In this sense it still makes sense to backtest such
a strategy to measure the strength of the signal. What would make no sense and
should never be done is to run an outright in-sample backtest that looks into the
future. E.g., using today's closing prices for computing expected returns for trading
at today's open would be grossly in-sample. On the other hand, using yesterday's
prices to trade at today's open is the so-called "delay-1" strategy, which is basically
1 day out-of-sample (and, not surprisingly, is expected to backtest much worse than
a delay-0 strategy). The code gives examples of both delay-0 (mean-reversion) and
delay-1 (momentum) strategies (see the comments `DELAY-0` and `DELAY-1` in the code).

The code internally computes the desired holdings via optimization. The optimizer function (which incorporates bounds and linear constraints such as dollarneutrality) `bopt.calc.opt()` is given in [Kakushadze, 2015e]. One of its inputs is

the inverse model covariance matrix for the stocks. This matrix is computed internally via functions such as `qrm.cov.pc()` and `qrm.erank.pc()`, which are given in

and utilize the statistical risk model construction of [Kakushadze and Yu, 2017a],

- r `qrm.gen.het()`, which is given in and utilizes the heterotic risk model construction of [Kakushadze and Yu, 2016a]. The latter requires a multilevel binary industry classification. The code below builds such a classification via the function
`qrm.stat.ind.class.all()`, which is given in and utilizes the statistical industry
classification construction of [Kakushadze and Yu, 2016b]. However, the code can
be straightforwardly modified to utilize a fundamental industry classification, such as
GICS (Global Industry Classification Standard), BICS (Bloomberg Industry Classification System), SIC (Standard Industrial Classification), etc. One issue with
this is that practically it is difficult to do this 100% out-of-sample. However, "in

128

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

sampleness" of a fundamental industry classification – which is relatively stable –

typically does not pose a serious issue in such backtests as stocks rarely jump industries. Furthermore, note that the aforesaid "external" functions have various other

parameters (which are set to their implicit default values in the code below), which

can be modified (see the references above that provide the aforesaid functions).

Finally, the code internally computes the desired holdings and various performance characteristics such as the total P&L over the backtesting period, annualized

return, annualized Sharpe ratio, and cents-per-share. These and other quantities

computed internally can be returned (e.g., via environments or lists), dumped into

files, printed on-screen, etc. The code is straightforward and can be tweaked depending on the user's specific needs/strategies. Its purpose is illustrative/pedagogical.

```
qrm.backtest <- function (days = 252 * 5, d.r = 21, d.addv = 21,
  n.addv = 2000, inv.lvl = 2e+07, bnds = .01, incl.cost = F)
```

_{_

```
  calc.ix <- function(i, d, d.r)
```

_{_

```
   k1 <- d - i

   k1 <- trunc(k1 / d.r)

   ix <- d - k1 * d.r

   return(ix)
```

_}_

```
  calc.mv.avg <- function(x, days, d.r)
```

_{_

```
   y <- matrix(0, nrow(x), days)
   for(i in 1:days)
     y[, i] <- rowMeans(x[, i:(i + d.r - 1)])

   return(y)
```

_}_

```
  calc.mv.sd <- function(x, days, d.r)
```

_{_

```
   y <- matrix(0, nrow(x), days)
   for(i in 1:days)
     y[, i] <- apply(x[, i:(i + d.r - 1)], 1, sd)

   return(y)
```

_}_

```
  read.x <- function(file)
```

_{_

129

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

```
   x <- read.delim(file, as.is = T)

   x <- as.matrix(x)

   mode(x) <- "numeric"

   return(x)
```

_}_

```
  calc.sharpe <- function (pnl, inv.lvl)
```

_{_

```
   print(sum(pnl, na.rm = T))
   print(mean(pnl, na.rm = T) * 252 / inv.lvl * 100)
   print(mean(pnl, na.rm = T) / sd(pnl, na.rm = T) * sqrt(252))
```

_}_

```
  ret <- read.x("nrm.ret.txt")

  open <- read.x("nrm.open.txt")

  close <- read.x("nrm.close.txt")

  vol <- read.x("nrm.vol.txt")

  prc <- read.x("nrm.prc.txt")

  addv <- calc.mv.avg(vol * close, days, d.addv)
  ret.close <- log(prc[, -ncol(prc)]/prc[, -1])
  tr <- calc.mv.sd(ret.close, days, d.r)

  ret <- ret[, 1:days]
  prc <- prc[, 1:days]
  close <- close[, 1:days]
  open <- open[, 1:days]
  close1 <- cbind(close[, 1], close[, -ncol(close)])

  open1 <- cbind(close[, 1], open[, -ncol(open)])

  pnl <- matrix(0, nrow(ret), ncol(ret))
  des.hold <- matrix(0, nrow(ret), ncol(ret))

  for(i in 1:ncol(ret))
```

_{_

```
   ix <- calc.ix(i, ncol(ret), d.r)

   if(i == 1)

     prev.ix <- 0

   if(ix != prev.ix)
```

_{_

```
     liq <- addv[, ix]
     x <- sort(liq)

```

130

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

```
     x <- x[length(x):1]
     take <- liq >= x[n.addv]

     r1 <- ret.close[take, (ix:(ix + d.r - 1))]

     ### ind.list <- qrm.stat.ind.class.all(r1,
     ### c(100, 30, 10), iter.max = 100)

     ### rr <- qrm.gen.het(r1, ind.list)

     rr <- qrm.cov.pc(r1)
     ### rr <- qrm.erank.pc(r1)

     cov.mat <- rr$inv.cov

     prev.ix <- ix
```

_}_

```
   w.int <- rep(1, sum(take))

   ret.opt <- ret ### DELAY-0 MEAN-REVERSION
   ### ret.opt <- -log(close/open) ### DELAY-1 MOMENTUM

   if(incl.cost)
```

_{_

```
     lin.cost <- tr[take, i] / addv[take, i]

     lin.cost <- 1e-3 * lin.cost / mean(lin.cost)
```

_}_

```
   else

     lin.cost <- 0

   ret.lin.cost <- ret.opt[take, i]
   ret.lin.cost <- sign(ret.lin.cost) *
     pmax(abs(ret.lin.cost) - lin.cost, 0)

   des.hold[take, i] <- as.vector(bopt.calc.opt(ret.lin.cost, w.int,
     cov.mat, bnds * liq[take]/inv.lvl, -bnds * liq[take]/inv.lvl))

   des.hold[take, i] <- -des.hold[take, i] *

     inv.lvl / sum(abs(des.hold[take, i]))

   pnl[take, i] <- des.hold[take, i] *
     (close1[take, i]/open1[take, i] - 1)

   pnl[take, i] <- pnl[take, i] - abs(des.hold[take, i]) * lin.cost

```

131

Electronic copy available at: https://ssrn.com/abstract=3247865

Copyright c _⃝_ 2018 Zura Kakushadze and Juan Andr´es Serur. All Rights

Reserved.

_}_

```
  des.hold <- des.hold[, -1]

  pnl <- pnl[, -1]
  pnl <- colSums(pnl)
  calc.sharpe(pnl, inv.lvl)

  trd.vol <- 2 * sum(abs(des.hold/open1[, -1]))
  cps <- 100 * sum(pnl) / trd.vol
  print(cps)
```

_}_

# **B DISCLAIMERS**

Wherever the context so requires, the masculine gender includes the feminine and/or

neuter, and the singular form includes the plural and _vice versa_ . The author of this

paper ("Author") and his affiliates including without limitation Quantigic [r] Solutions LLC ("Author's Affiliates" or "his Affiliates") make no implied or express

warranties or any other representations whatsoever, including without limitation

implied warranties of merchantability and fitness for a particular purpose, in connection with or with regard to the content of this paper including without limitation

any code or algorithms contained herein ("Content").

The reader may use the Content solely at his/her/its own risk and the reader

shall have no claims whatsoever against the Author or his Affiliates and the Author

and his Affiliates shall have no liability whatsoever to the reader or any third party

whatsoever for any loss, expense, opportunity cost, damages or any other adverse

e↵ects whatsoever relating to or arising from the use of the Content by the reader

including without any limitation whatsoever: any direct, indirect, incidental, special, consequential or any other damages incurred by the reader, however caused

and under any theory of liability; any loss of profit (whether incurred directly or

indirectly), any loss of goodwill or reputation, any loss of data su↵ered, cost of procurement of substitute goods or services, or any other tangible or intangible loss;

any reliance placed by the reader on the completeness, accuracy or existence of the

Content or any other e↵etc of using the Content; and any and all other adversities

- r negative e↵ects the reader might encounter in using the Content irrespective of
whether the Author or his Affiliates is or are or should have been aware of such
adversities or negative e↵ects.

Any information or opinions provided herein are for informational purposes only

and are not intended, and shall not be construed, as an investment, legal, tax or

any other such advice, or an o↵er, solicitation, recommendation or endorsement of

any trading strategy, security, product or service, or any article, book or any other

publication referenced herein or any of the content contained therein.

132

Electronic copy available at: https://ssrn.com/abstract=3247865

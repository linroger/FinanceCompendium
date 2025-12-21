---
title: Basis Trades and Treasury Market Illiquidity
parent_directory: Diamond
formatted: 2025-12-21 08:00:00 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - treasury basis trades
  - market illiquidity
  - hedge fund risks
secondary_tags:
  - repo market financing
  - futures convergence
  - margin requirements
  - rollover risk
  - implied repo rate
cssclasses: academia
---

# **BRIEF** SERIES

OFFICE OF FINANCIAL RESEARCH

20-01 [ |] July 16, 2020

## Basis Trades and Treasury Market Illiquidity

_By Daniel Barth and Jay Kahn_ [1]

### The Treasury futures basis trade seeks to exploit the price difference between cash Treasury securities and Treasury futures. This brief summarizes evidence on the size and extent of basis trading by hedge funds and assesses the possibility that the trade's exposure to financing and liquidity risks contributed to Treasury market illiquidity in March 2020. This brief also highlights the potential for the trade to lead to further illiquidity. While we find that Treasury illiquidity in March placed stress on Treasury basis trades, the evidence casts doubt on the theory that stress in these trades amplified Treasury market illiquidity. Intervention by the Federal Reserve in the Treasury and repo markets may have limited spillovers that could affect financial stability.

# Basis trading is a form of near-arbitrage between the cash and futures prices of Treasury securities — a usually small difference known as the basis. If this difference is bigger than the cost of buying the Treasury and financing that purchase in the repurchase agreement (repo) market, then the trade is profitable. Traders rely on repo markets for financing to achieve high leverage for these trades. In early March 2020, stress in Treasury markets led to large basis trade losses for some relative value hedge funds. Basis trades tie together Treasury
markets, futures markets, and repo markets, all three of
which are crucial to price discovery and liquidity provision in the financial system. While the return on the
basis trade is virtually guaranteed over the long term,
in the short term this trade is exposed to substantial
liquidity and margin risk. Stress on these trades therefore presents a potential source of systemic risk.

A variety of data sources and market commentaries

have documented the rising popularity of basis trading

among relative value hedge funds. Office of Financial

Research (OFR) internal data also provide evidence of

this. If the hedge funds undertaking these trades are

large and highly leveraged, this may further magnify

the associated potential systemic risks. Indeed, the

pervasive illiquidity in March 2020 led to large losses

at relative value hedge funds engaged in basis trades.

Such funds significantly unwound their positions as a

result. This has led regulators and market observers to

speculate that stress in basis trades may have added to

stress in Treasury markets. However, the evidence casts

doubt on this conclusion. Specifically, we find that the

Treasuries that were most likely to have been directly

affected by losses on the basis trade actually became

more valuable during March 2020.

Views and opinions are those of the authors and do not necessarily represent the views of the Office of Financial Research, the

U.S. Department of the Treasury, or the Board of Governors of the Federal Reserve System. OFR briefs may be quoted without

additional permission.

In this brief, we first describe the mechanics of basis

trades and the determinants of their returns. We also

provide evidence on their size and possible importance in Treasury markets. We then detail how the

returns to basis trades are compensation for exposure

to substantial margin and rollover risks, and highlight

the relationships that arise between the basis, the yield

- n Treasury bills, the repo rate, and the federal funds
rate. We conclude with a discussion of the March 2020
Treasury illiquidity episode and a discussion of potential risks associated with basis trades in the future. [2]

The analysis uses the OFR's collection of cleared

repo data, which began in October 2019. However,

remaining data gaps limit visibility into basis trading:

specifically, we do not have high-frequency or precise

data on hedge funds' balance sheets or data on their

substantial borrowing in the uncleared bilateral

portions of the repo market. Increasing transparency

would improve the abilities of financial regulators to

monitor the risks of this trade. Careful monitoring is

warranted to determine to what extent margin calls

and rollover risk on basis trades may lead to market

disruptions and potential hedge fund defaults.

## Structure of Basis Trades

The basis trade relies on a relationship between the cash

Treasury market, where investors purchase Treasuries

today; the Treasury futures market, where investors

agree on a fixed price to pay for Treasuries they will

receive in the future; and the repo market, where

investors borrow or lend Treasuries against cash today.

Theoretically, borrowing a Treasury today in the repo

market, for which the investor pays interest at the repo

rate, should cost the same amount as purchasing that

Treasury today in the cash market with the agreement

to sell that Treasury in the futures market at a later date.

Very small variations from that ideal can be profitable

if the investment is leveraged using borrowed capital.

Basis trades are three-legged trades that span crucial

financial markets: cash Treasury markets, Treasury

futures markets, and repo markets. As we show, basis

trades use long cash Treasury positions and short

futures positions to construct a payoff that, absent

financing risks and other frictions, would be a net position similar to a Treasury bill. (In futures markets, long

positions are a bet prices will go up; short positions are

a bet prices will go down.) One immediate difference

between the return on a basis trade and the return on a

bill is the possible variation margin on the futures position. (Futures traders make variation margin payments

when the value of cash and collateral in their accounts

falls below set margin levels.) More importantly, basis

traders generally finance the long cash position in the

repo market, which exposes the basis trade to rollover

and liquidity risks. The return on basis trade is thus

equivalent to a synthetic bill plus a risk premium.

This risk premium is positive on average but can vary

significantly and can turn negative during times of

stress in funding markets. We discuss the sources of

this premium below.

In a simple form of the basis trade, at date 0, an investor

purchases a Treasury note in the cash market for a

price _**P**_, and simultaneously opens a short position in

a Treasury note future at a price, _**F**_ . This short futures

position promises delivery of a Treasury note at date _**T**_ .

Because the basis is typically narrow, investors leverage

the trade by financing the purchase of the cash Treasury

note through a repo loan at an interest rate _**r**_ using the

note as collateral. At date _**T**_, the investor takes the note

returned from the repo contract and delivers it into the

futures contract, receiving _**F**_, and using a portion of the

futures payment to settle the repo debt. The profit from

this trade is:

_**F-P(1+r)**_ _**[T]**_ _**.**_

**Figure 1** presents a basic diagram of a basis trade,
tracking the flow of the underlying Treasury security

- ver time and across the three markets. The profitability of the basis trade depends on the basis, that
is, the difference between cash and futures prices of
a Treasury. Cash and futures prices converge as the
delivery date approaches (see **Figure 2** ). This convergence is virtually guaranteed: at the delivery date, cash
and futures prices must be equal because on that date
a trader can buy a Treasury in the cash market and
immediately deliver it into the futures market.

The profitability of basis trades is summarized by the

implied repo rate (IRR), which is the repo rate at which

the profit on the basis trade would be zero. The IRR is

closely related to the yield on a Treasury bill because

the cash flows from the basis trade replicate those from

a Treasury bill maturing on the futures delivery date.

OFR Brief Series | 20-01 July 2020 | Page 2

Figure 1. Diagram of a Basis Trade

Treasury market: Purchase Treasury

Deliver Treasury to repo lenderD

_t_ = 0 _t_ = 1 _t_ = 2 _t_ = _T −_ 1 _t_ = _T_

…

Repo market: Open repo trade

Roll over repo Roll over repo Roll over repo Close repo trade

Deliver Treasury to futures

Futures market:

Short futures contract Receive cash from futures

Note: Arrows denote flow of Treasury security; cash moves in the opposite direction.

Source: Office of Financial Research

Figure 2. Convergence of Treasury Futures and

Cash Prices ($)

Figure 3. Returns on the Basis Trade and Bill

Yields (percent)

6

102.000

4

2

0

 - 2
 - 4

100 80 60 40 20 0

Days to delivery

Note: Average over all five-year contracts since 2016.

Sources: Bloomberg Finance L.P., Center for Research in Security Prices/

University of Chicago Booth School of Business, Office of Financial

Research

The IRR therefore comprises the return to a bill plus a

premium for risk, and closely tracks the return on an

actual bill (see **Figure 3** ). [3]

When the IRR is greater than the actual repo rate,

basis traders can profit by "buying the basis," that is,

by buying the note and shorting the corresponding

Treasury futures, while borrowing in the repo market.

At delivery, the trader will earn the spread between

Note: One-week moving averages. Implied repo rates use the futures

contract with the second-to-nearest delivery date.

Sources: Bloomberg Finance L.P., Center for Research in Security Prices/

University of Chicago Booth School of Business, Office of Financial

Research

the IRR and the repo rate. Buying the basis while

borrowing in the repo market amounts to a bet that

futures prices will converge to cash prices at a rate faster

than the repo rate. Traders can also "sell the basis," by

selling a Treasury in the cash market, and opening a

long position in the futures market, while securing

the Treasury through repo lending. Selling the basis

amounts to a bet that futures prices will converge to

cash prices at a rate slower than the repo rate. The bet

2006

2008 2010 2012 2014 2016 2018 2020

OFR Brief Series | 20-01 July 2020 | Page 3

is desirable when the actual repo rate is greater than the

IRR, or when the trader is closing an existing position

from buying the basis. Because the futures price and

the cash price of the Treasury are known to the basis

trader, provided the basis trader also knows the repo

rate, profits on these bets at delivery are guaranteed.

The basis trade does not, however, constitute true

arbitrage or offer risk-free profits. Several risks drive a

wedge between the profitability of the basis trade and

the yield on a Treasury bill and thus create potential

consequences for financial stability.

## Risks of Basis Trades

If there were no margin requirements for the futures

contract and if there were no need to roll over repo

financing, then the basis trade would be pure riskless

arbitrage, and there would be no deviation between

the IRR and the return on bills. In reality, the basis

trade is not a risk-free strategy. Among the risks basis

traders face:

**Rollover risk:** Financing costs are an important
source of risk for basis traders. The long position in
the Treasury note is largely financed by borrowing in
the repo market. One option for this financing is to
enter into short-term — possibly overnight — repo
trades. Interest rates on overnight repo are often
lower than on term repo given the same collateral.
However, rolling repo borrowing over daily exposes
the trader to the possibility of rates rising before the
trade is complete, which would require the trader to
post additional collateral to secure the same amount

- f financing. If the trader is already highly leveraged,
it may be difficult to raise more capital without selling
assets, possibly at discounted or fire-sale prices. Such
liquidity-driven sales could push prices down in other
markets, instigating further margin calls and a liquidity
spiral. We note, however, that traders may manage this
risk by financing through repo with a term matched
to the expiration of the futures contract, rather than
through overnight funding. More granular data would
be needed to determine the length of financing basis
traders employ.

**Margin risk:** When Treasury note futures prices rise,
the trader going long the basis will have to make variation margin payments on the short futures contract.

When Treasury cash prices also rise, these margin

payments will be offset by the increased collateral

value of the long Treasury note held. However, when

Treasury note futures and cash prices diverge, as can

- ccur in times of illiquidity, the increase in collateral
value may not be enough to meet the variation margin
requirement. The basis trader must make a sudden cash

- utlay to meet their margin call.

**Leverage and default risk:** The high leverage of many
basis traders compounds the risks they face. Repo
contracts with Treasury collateral allow borrowers to

- btain extremely high leverage because haircuts are so
small. A haircut is a discount on the value of an asset
pledged as collateral. As a simple rule, the maximum
leverage obtainable for a given security as collateral
is the inverse of the haircut. Treasuries typically have
haircuts of around 2 percent. At this level, traders
could in principle achieve 50-to-1 leverage. For highly
leveraged traders, small changes in margin requirements or the cost of financing could lead to large cash

- utlays, and in the worst-case scenario could lead to
- utright failure.

Deviations of Basis Trade Returns From Bill

Returns

Deviations of the IRR from the return on Treasury

bills reflect the risks basis trades face. In the absence

- f rollover risk and margin requirements, the first two
legs of the basis trade would be equivalent to a Treasury
bill. In this case, the return on the basis should be the
same as the return on that bill. Therefore, one way to
assess the extent of risks the basis trade faces at any
given time is to examine deviations of the return on the
basis trade from the return on the bill.

In particular, in times of relative illiquidity and high

balance sheet costs, the implied repo rate has deviated significantly from the rate of return on bills. One

example of these deviations occurred directly following

the collapse of Lehman Brothers in 2008 (see **Figure**

**4** ). Immediately after that collapse, as liquidity dried

up in financial markets, implied repo rates fell across

contracts. The IRR decline reflected a flight to safety

in Treasury markets. Treasury bill rates fell less, in

part due to the natural constraint of the zero lower

bound. This deviation persisted for several months.

It reflected relatively slow-moving capital in the wake

OFR Brief Series | 20-01 July 2020 | Page 4

- f hits to balance sheets of intermediaries during the
crisis, as well as general concerns over counterparty
risk. Note in this case that traders that were long the
basis would have profited from the basis narrowing and
turning negative.

This pattern in 2008 is indicative of a more general rule

that returns on basis trades tend to depart from bill

returns during times of stress. In general, deviations of

the return on basis trades from returns on Treasuries

have reflected the costs of liquidity provision, that is,

the willingness of financial institutions to take on the

margin risk and rollover risk that basis trades entail.

One way to summarize the costs of liquidity provision

in Treasury repo markets is the difference between the

repo rate and the federal funds rate. Because Treasury

repo rates reflect a willingness to accept Treasuries as

collateral, whereas lending in the federal funds market

is uncollateralized, differences in Treasury repo and

federal funds rates will partly reflect balance sheet

constraints that make accepting Treasuries more or less

costly. **Figure 5** shows deviations of basis trade return

for five-year and two-year contracts from bill yields,

along with the spread between the repo rate and federal

funds rate. Deviations of the basis trade return from the

Figure 4. Basis Trade Returns During the 2007-09

Financial Crisis (percent)

6

4

2

0

 - 2

Jan May Sep Jan May Sep Jan May Sep Jan

07 07 07 08 08 08 09 09 09 10

Note: Data are one-week moving averages. Implied repo rates

use the futures contract with the second-to-nearest delivery date.

Sources: Bloomberg Finance L.P., Center for Research in Security Prices/

University of Chicago Booth School of Business, Office of Financial

Research

Figure 5. Deviations of the Basis Trade Return from the Bill Return and the Cost of Note Funding (percentage

points)

**2.0**

**1.5**

**1.0**

**0.5**

**0.0**

**-0.5**

1.0

0.8

0.6

0.4

0.2

0.0

- 0.2

2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020

Note: Data are 14-day moving averages of the spread of the implied repo rate for futures contract with the second-to-nearest delivery

date over the yield for an equivalent maturity Treasury bill for two-year and five-year Treasury futures and the spread of the GCF

Treasury repo index over the effective federal funds rate.

Sources: Federal Reserve Bank of New York Effective Federal Funds Rate, DTCC GCF Repo Index, Bloomberg Finance L.P., Center for Research in Security

Prices/University of Chicago Booth School of Business, Office of Financial Research

OFR Brief Series | 20-01 July 2020 | Page 5

bill yield constitute a liquidity premium in basis trades,

because basis traders will require compensation for the

risks incurred in financing their Treasury holdings

until the delivery date. These risks should be correlated

with the spread between the actual repo rate and the

federal funds rate. When Treasuries are more expensive

to finance, the excess returns on the basis must be high

enough in equilibrium to induce basis traders to hold

these Treasuries until delivery. Therefore, the excess

return on the basis closely follows the costs of financing

a note, as represented by the spread of the repo rate over

the federal funds rate.

## Implementing Basis Trades

Understanding sources of risk for basis trades and

where stress can manifest requires understanding the

technical details of implementing these trades.

In particular, only certain futures contracts and

Treasury notes are used in basis trading. On any given

date, there is just one Treasury security that basis traders

want to own for each contract to make a particular deal

as profitable as possible, called the "cheapest-to-deliver" Treasury. Treasury futures are exchanged on

the Chicago Board of Trade (CBOT) and cleared by

CME Clearing. Treasury note futures are offered by

CBOT quarterly and require physical delivery. Each

Figure 6. Structure of the Bilateral Repo Market

quarter, CBOT offers contracts for two-year, five-year,

and 10-year Treasury notes as well as Treasury bonds. [4]

Only a certain basket of Treasuries can be delivered

into each of these futures contracts, with limits on this

deliverable basket determined by the maturity of the

note relative to the delivery date of the contract and the

- riginal maturity of the note at issuance. [5] For instance,
the deliverable basket for the two-year CBOT contract
contains Treasuries with an original maturity of less
than five years and three months and a residual maturity on the last day of the delivery month between one
year and eight months and two years. Otherwise-similar
Treasuries will differ in whether they are deliverable
into the futures contract. A conversion factor attached
to the futures price is meant to account for the desirability of individual Treasuries. A formula provided by
the CBOT determines these conversion factors. Due to
these conversion factors, only one Treasury note will be
cheapest-to-deliver into each futures contract. [6] Which
note is the cheapest-to-deliver can change over the life

- f a contract.

Another complication is the structure of the repo market

where basis traders finance their initial note purchase.

The structure of this market can create difficulties

in securing funding for basis trades and can amplify

counterparty risk. **Figure 6** describes the general

structure of the repo market. Basis traders can borrow

Note: Arrows denote the direction of the flow of cash, from cash lenders to cash borrowers.

Source: Office of Financial Research

OFR Brief Series | 20-01 July 2020 | Page 6

cash from two venues in the bilateral repo market.

The first is the sponsored segment within the Fixed

Income Clearing Corporation's DVP Repo service.

The second is the uncleared bilateral market between

dealers and cash borrowers. Traders that are not clearing

members of DVP can access the venue's clearing

services if a sponsoring member guarantees their

trades. Specifically, sponsoring dealers are required to

cover the clearing fund allocated to their counterparty.

For the sponsor, this offers the advantage of netting

trades that provide cash to borrowers against trades

that secure cash from money market funds and other

cash lenders. However, sponsors are more exposed to

the risk of counterparty default than in other sections

- f the market. As a result, sponsors generally charge
borrowers a premium above rates in the interdealer
market.

In the uncleared bilateral market, there are no central

counterparties, so counterparty exposure cannot be

shared with other participants. Basis trades financed

in uncleared bilateral repo markets therefore result in

direct counterparty risks for dealers.

The parts of the repo market in which hedge funds

borrow are somewhat divorced from the facilities

through which the Federal Reserve controls repo rates.

The Federal Reserve influences rates in the bilateral

repo market through its facilities in the tri-party repo

market, in which basis traders are unlikely to participate. The Overnight Reverse-Repurchase Facility

(ON-RRP) sets a floor on rates by offering an outside

- ption for certain money market funds to invest their
cash. Since September 2019, the Federal Reserve has
also operated a Repo Facility (RP) that sets a ceiling on
rates by lending to primary dealers. However, because
there is no direct link to the markets in which basis
traders borrow, pass-through of these facilities into repo
rates for basis traders depends on dealer intermediation.

## Rise of Hedge Fund Basis Trades

Basis trading has existed since the late 1970s, though

the rise of Treasury note basis trades is relatively recent:

short-maturity note futures contracts were introduced

- nly in 1989 for the five-year Treasury contract and in
1990 for the two-year Treasury contract. Both contracts
had little open interest until the last few years. Hedge
fund participation in the basis trade appears to have

Figure 7. Hedge Fund Treasury Futures Short

Positions ($ billions)

900

800

700

600

500

400

300

200

100

0

2008 2010 2012 2014 2016 2018 2020

Note: Data are aggregate leveraged fund short positions in

dollars of face value. Ultra bond futures and 10-year ultra note

futures positions are included with bond futures and 10-year note

futures respectively.

Sources: Commodity Futures Trading Commission Commitment of

Traders, Office of Financial Research

risen dramatically over recent years, and may have

migrated away from large banks as a result of increased

balance sheet costs to those banks from post-financial crisis regulations. One way to measure basis trade

intensity among hedge funds is by looking at hedge

fund short positions in Treasury futures (see **Figure 7** ).

In early 2018, hedge funds began accumulating sizable

short positions in Treasury futures. The increase in

these futures positions was greatest in two-year and

five-year notes. Smaller increases also occurred in

10-year note and Treasury bond futures contracts. At

the peak of these short positions in 2019, the total face

value outstanding for hedge funds was more than \$800

billion.

These short futures positions alone do not necessarily

indicate basis trading, as futures may be used in many

kinds of trades. However, the OFR's cleared repo

collection offers a clearer picture of hedge fund trades.

Because the OFR's collection includes collateral information for every repo contract in DVP, we can examine

OFR Brief Series | 20-01 July 2020 | Page 7

Figure 8. DVP Sponsored Reverse Repo by Participant Type ($ billions)

350

300

250

200

150

100

50

0

2019 Dec 2019

Jan 2020 Feb 2020 Mar 2020 Apr 2020 May 2020

Note: Data are aggregate daily transaction volumes.

Sources: OFR Cleared Repo Collection, Office of Financial Research

the specific collateral posted by hedge funds in support

- f their sponsored borrowing in DVP.

Hedge Fund Repo Positions

While the majority of hedge fund repo borrowing

likely occurs through bilateral uncleared trades, the

sponsored DVP market offers insights not available

in the uncleared bilateral market. Sponsored DVP is

also increasingly important in its own right. At present,

hedge funds make up the vast majority of sponsored

borrowing (see **Figure 8** ). The Depository Trust &

Clearing Corporation first allowed hedge fund participation in sponsored repo in 2017. Such participation

increased dramatically after the expansion of sponsorship in April 2019. Recent repo data show that cash

provided by money market funds is mostly passed on

to hedge funds, so the expansion of sponsored lending

provides a hint to the pace of growth in sponsored

borrowing. Following the expansion of sponsorship,

participation of money market funds in sponsored

repo increased dramatically (see **Figure 9** ). This may

be associated with increased borrowing by hedge funds

in DVP.

Figure 9. Money Market Fund Repo with FICC

($ billions)

300

250

200

150

100

50

0

2011 Jan 2013 Jan 2015 Jan 2017 Jan 2019

Note: Aggregate repo volume outstanding. FICC stands for Fixed

Income Clearing Corporation.

Sources: OFR Money Market Fund Monitor,Office of Financial Research

OFR Brief Series | 20-01 July 2020 | Page 8

In general, rates in the sponsored market for cash

borrowers are higher than interdealer rates, which

are again higher than the sponsored market for cash

lenders. There are two primary reasons for this. First,

sponsors are required to guarantee the trades of the

entities they sponsor. This means that hedge funds that

trade in sponsored markets represent relatively high risk

for their counterparties. Second, sponsored borrowers

generally borrow early in the day relative to sponsored

lenders. Because much of sponsored borrowing uses

cash from sponsored lenders, sponsored borrowing

creates additional liquidity risk for sponsors. The fact

that sponsored borrowing rates are in general above

interdealer rates highlights a potential for imperfect

pass-through of liquidity-boosting interventions by the

Federal Reserve to the borrowing rates of hedge funds,

adding an additional layer of liquidity risk to hedge

fund basis trades.

If hedge funds are actively basis trading, we would

expect them to disproportionally hold the cheapest-to-deliver Treasury notes. **Figure 10** shows hedge

fund positions in repo by security CUSIP prior to the

Dec. 1, 2019, futures delivery date and following that

Figure 10. Hedge Fund DVP Repo in Treasuries by Maturity Date ($ billions, average daily transaction value)

|Large repo activity|ge repo activity|y occurs 2 year|s within maturities eligible for delivery Prior to Dec. 1, 2019 Prior to Dec. 1, 2019|5 year 9|Col6|
|---|---|---|---|---|---|
|0<br>1<br>2<br>3<br>4<br>2021-01<br>2021-0||2 year<br>2 year||5 year<br>Kernel d<br>Individua<br>Delivera<br>Kern<br>Indi<br>Deli<br>5 year|ensity<br>l security<br>ble set<br>25-07<br>el density<br>vidual security<br>verable set|
|0<br>1<br>2<br>3<br>4<br>2021-01<br>2021-0||7<br>20|22-01<br>2022-07<br>2022-07<br>2023-01<br>2024-|2024-07<br>20<br>01<br>2025-01|2024-07<br>20<br>01<br>2025-01|

4

3

2

1

0

|22|Col2|AfterandincludingDec 1 2019<br>.,|Col4|Col5|
|---|---|---|---|---|
|2<br>2|year<br> year|year<br> year|5 year<br>5 year|5 year<br>5 year|
|2<br>2|||||

2021-01b 2021-07b 2022-01b 2022-07b 2023-01b 2022-07b 2024-01b 2024-07b 2025-01b 2025-07b

Maturity date

Note: Dots are average daily outstanding positions in individual Treasuries; solid lines are smoothed fitted sums within maturity

windows. Above, gray areas are deliverables for December 2019, below for March 2020. The orange dot denotes positions in the cheapest-to-delivery for the two-year December contract. Some positions have been excluded from the scatter for disclosure purposes.

Sources: OFR Cleared Repo Collection, Office of Financial Research

OFR Brief Series | 20-01 July 2020 | Page 9

delivery date. The shaded windows in the top panel are

the maturity dates of notes eligible for delivery into the

December futures contract. Securities just inside this

delivery window had significantly more hedge fund

repo volume than securities just outside this window.

The largest position prior to December 1 was in the

two-year window and was for the Treasury security

that was cheapest-to-deliver for this contract. After

December 1, the position in the cheapest-to-deliver

for the two-year December contract had diminished

considerably, while positions had expanded for deliverables for the March contract, highlighted in gray in

the bottom panel. This is consistent with hedge funds

maintaining positions in the cheapest-to-deliver for

contracts near to delivery.

The decline in repo in the two-year cheapest-to-deliver

Treasury occurs directly before the December futures

contract's first delivery date, with another smaller

increase before its last delivery date. Even though only

part of hedge funds' basis positions are likely to be

funded in DVP, the $4-$4.5 billion in repo outstanding

in this Treasury note just before the delivery date is

equivalent to more than 10 percent of the outstanding

notional value of the note.

Reasons for Rising Hedge Fund Treasury

Positions

Participation by hedge funds in basis trades requires

those funds to hold securities until they roll. The

primary source of demand for Treasury futures is

from unlevered asset managers, such as mutual funds,

insurance funds, and pension funds. By holding these

securities until they roll contracts, hedge funds provide

liquidity by using repo leverage to purchase Treasuries.

While the exact reason for increases in volume in hedge

fund basis trades is unclear, possibilities include:

**1. Declining foreign demand for Treasuries.** Since

2015, foreign holdings of Treasuries have been

declining as a share of total Treasuries outstanding. Weakened demand for Treasury coupon

securities from foreign investors, combined with

increased amounts of Treasuries outstanding, may

have pushed down the relative prices of notes and

bonds, making the basis trade more attractive to

hedge funds.

**2. Regulatory costs of holding Treasuries for banks.**

Hedge funds and other proprietary traders are not

explicitly limited to maximum leverage ratios in the

same way banks are. Standards imposed after the

2007-09 financial crisis put direct leverage limits

  - n banking institutions, typically requiring a capital-to-asset ratio of at least 5 percent, which implies
a maximum leverage ratio of 20 to 1. [7] Hedge fund
leverage is constrained only by the haircuts on the
collateral, and for Treasury securities haircuts are
typically around 2 percent. This implies a maximum leverage ratio for hedge funds of 50 to 1.
Because the basis trade profits from tiny differences
in spreads, high leverage is necessary to make the
trade worthwhile. Basis trade activity may therefore
have migrated from banks to hedge funds and other
less-regulated traders because leverage limits made
the basis trade unprofitable for banks. Anecdotal
evidence supports this; the _Financial Times_ has
reported that many of the lead traders executing
these trades at banks have left to join hedge funds. [8]

**3. Increasing segmentation in the bills market.**

Regulatory reforms may have made it more difficult

for unlevered funds to hold longer-term Treasuries

and may have led to a natural source of demand for

long futures positions in Treasuries. As a result, segmentation may have increased in the Treasury market, which would lead simultaneously to a higher

disconnect between bond and bill returns and to

demand for short Treasury note futures.

It is difficult to determine which of these possible

causes is most likely and, in equilibrium, they are all

reinforcing. However, all three explanations would

have resulted in increased costs associated with longerterm Treasuries for regulated or unlevered participants

relative to levered and unregulated participants such

as hedge funds. This relative change in the costs of

holding Treasuries for hedge funds and unlevered

participants would in turn have made the basis trade

more desirable for hedge funds and have led to a reallocation of Treasuries from traditional holders to relative

value hedge funds. This is consistent with the generally

higher return on basis trades relative to bills seen in the

latter part of **Figure 5** .

The exposures implicit in Treasury basis trades are

similar to those that have led to problems for hedge

OFR Brief Series | 20-01 July 2020 | Page 10

funds in the past. Long-Term Capital Management

(LTCM), for instance, was a highly leveraged relative

value hedge fund whose failure nearly led to a financial

crisis in 1998 when the spreads they were betting on

diverged further than fund managers expected. LTCM

suffered because it was highly exposed to liquidity and

flight-to-safety risks for which it was poorly hedged.

While the introduction of central counterparties and

cleared repo markets may have reduced some of the

risks that LTCM faced, modern relative value hedge

funds are more plentiful, larger, and continue to be

highly leveraged.

## Basis Trades and March 2020 Treasury Market Illiquidity

Treasury market illiquidity in March led to large losses

in hedge fund basis trades as the CBOT increased

margins and repo rates became extremely volatile.

However, we are not aware of any hedge fund defaults

- n basis trades. While funds appear to have partially
exited these trades based on sales of the cheapest-to-deliver notes, it is not clear that these sales actually
impaired Treasury market liquidity. Instead, the basis
trade appears to have continued to provide net liquidity
to underlying Treasuries relative to comparable

Figure 11. Treasury Volatility Indexes

18

- ff-the-run securities. That so many of the risks of this
trade materialized without substantial feedback into
financial stability may have been a result of timely
intervention by the Federal Reserve. In this section we
review the March illiquidity episode, discussing possible
exacerbating factors, and then discuss the effects of this
illiquidity on basis trades. We conclude by discussing
the effects of Federal Reserve actions after March on
Treasury market liquidity and basis trades.

Onset of Treasury Market Illiquidity

In early March 2020, Treasury market liquidity

decreased. As yields fell, volatility spiked, according

to multiple option-implied indexes (see **Figure 11** ).

At the same time, bid-ask spreads began to increase,

concentrated in off-the-run Treasuries (see **Figure**

**12** ). Standard spreads associated with liquidity risk,

such as the on-the-run off-the-run spread, also spiked.

These indicators are consistent with a general flight to

liquidity, with investors selling off-the-run Treasuries

and either holding the proceeds as cash or purchasing

more-liquid on-the-run Treasuries that could be more

readily converted into cash.

This illiquidity appears to have been reflected in an

inability of dealers that purchased Treasuries to offload

300

16

14

12

10

8

6

4

2

0

Mar

2006

CME 10-year Treasury VIX (left axis) CME 10-year Treasury VIX (left axis)

MOVE index (right axis) MOVE index (right axis)

Mar Mar Mar Mar Mar Mar Mar Mar Mar Mar Mar Mar Mar Mar

2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020

250

200

150

100

50

0

Note: CME 10-year Treasury VIX and the MOVE Index are option implied Treasury volatility indexes.

Sources: Bloomberg Finance L.P., Office of Financial Research

OFR Brief Series | 20-01 July 2020 | Page 11

the securities on to ultimate buyers (see **Figure 13** ).

Making markets requires dealers to hold inventories

- f the Treasuries in which they make those markets,
with accompanying regulatory and balance sheet costs.
Leading into March, primary dealers already had
elevated exposure to Treasuries, which had begun to
rise in late 2018. Sales in the Treasury market increased
this exposure, especially to the shortest and longest
residual maturity Treasuries. As the pandemic created
demand for cash in the real economy, selling pressure
in the Treasury market came from multiple sources.
One notable source of sales was from foreign accounts.
Treasury International Capital System data show net
decreases in foreign Treasury positions were around
\$257 billion in the month of March, with a decrease of
\$147 billion in foreign official accounts. Data from the
Federal Reserve's Factors Affecting Reserve Balances,
which provide a higher-frequency view of foreign

- fficial custody holdings with the Federal Reserve,
suggest these sales began in the last weeks of February. [9]
Without immediate buyers, these Treasuries remained

- n dealers' balance sheets and made the dealers hesitant
to create markets in these off-the-run Treasuries.

Stress in Hedge Fund Basis Trades

Treasury market illiquidity had an immediate effect

- n basis trades. First, rising volatility led to increasing
margins on Treasury futures, and therefore margin
calls on these positions (see **Figure 14** ). From February
28 to March 16, across Treasury note futures contracts
margins rose by more than 30 percent, while margins

- n bond futures more than doubled, corresponding to
their longer duration. Margin calls may have forced
an accelerated decline of hedge fund short futures
positions (see **Figure 15** ). In particular, total hedge
fund shorts declined from \$774 billion in face value
to \$684 billion between February 18 and March 17,
with particularly large declines of around \$71 billion
in two-year Treasury shorts. [10] Some portion of this
decline preceded March, with total shorts declining by
\$25 billion between February 18 and March 3, which
may have represented some foresight of the stress that
potential spread of COVID-19 to the United States
could put on Treasury markets.

The variation margin payments on the futures contract

were not fully offset by the increase in prices in the

long note position. Futures prices rose more quickly

Figure 12. Bid-Ask Spreads for Off-the-run

Treasuries ($)

3.0

2.5

2.0

1.5

1.0

0.5

0.0

Jan Feb Mar Apr May Jun

Note: Spreads are the difference between bid and ask prices for

\$100 notional in the fourth-from-most-recent Treasury issuance as

- f January 2020.

Sources: Bloomberg Finance L.P., Office of Financial Research

Figure 13. Primary Dealer Treasury Net Exposure

($ billions)

2016 2016 2016 2017 2017 2018 2018 2018 2019 2019 2020

Note: Data are net exposures by maturity.

Sources: Federal Reserve Bank of New York Primary Dealer Statistics,

Office of Financial Research

OFR Brief Series | 20-01 July 2020 | Page 12

than cash prices (see **Figure 16** ). This widened the

basis, leading to further losses for basis traders who had

bought the basis.

The imperfect nature of pass-through within repo

markets may also have contributed to the losses on

basis positions. **Figure 17** illustrates the pass-through

- f federal funds rate target changes onto the repo rates
for sections of the DVP market. Spreads between repo
rates and the federal funds rate target widened in the
first two weeks of March 2020. At the same time, the
spread between the sponsored borrowing rate — the
rate at which hedge funds borrow in DVP — and
interdealer rates was at the widest level seen since the
OFR repo data collection began. While this may be in
part a sign of sponsors' concerns over intraday liquidity
provision to their borrowers, the highest rates were
concentrated among hedge funds, suggesting that their
leverage may have been a concern.

In combination, Treasury illiquidity and imperfect

repo pass-through led to a large disconnect between

the implied repo rate and Treasury bill yields across

contracts. The IRR followed the bill rate until early

March, and then began to depart (see **Figure 18** ).

This departure began as the bill rate rapidly moved

below the DVP sponsored borrowing rate and these

Figure 14. Maintenance Margin on Futures

Contracts ($)

800

750

700

650

600

550

500

450

400

350

Figure 15. Primary Dealer Treasury Net Exposure

($ billions)

Jan Apr Jul Oct Jan Apr Jul Oct Jan Apr

2018 2018 2018 2018 2019 2019 2019 2019 2020 2020

Note: Data are leveraged fund short and long positions in dollars

- f face value.

Sources: Commodity Futures Trading Commission Commitments of

Traders, Office of Financial Research

Figure 16. Futures and Cash Prices for the Two-Year

June 2020 Contract($)

105

104

103

102

101

100

10/24/19 12/09/19 01/23/20 03/06/20 04/20/20

Note: Spreads are the difference between bid and ask prices for

\$100 notional in the fourth-from-most-recent Treasury issuance as

- f January 2020.

Sources: Bloomberg Finance L.P., Office of Financial Research

Jan

2019

Mar May Jul Sep Nov Jan Mar

2019 2019 2019 2019 2019 2020 2020

Note: Data are for maintenance margins on \$200,000 notional in

two-year Treasury futures contracts.

Sources: CME Group, Office of Financial Research

OFR Brief Series | 20-01 July 2020 | Page 13

Figure 17. DVP Repo Rates (left axis, percentage point spread over fed funds target midpoint) and Federal

Reserve Facility Participation (right axis, $ billions)

0.6

0.4

0.2

0.0

- 0.2

300

250

200

150

100

50

0

Jan 15 Feb 01 Feb 15 Mar 01 Mar 15 Apr 01 Apr 15 May 01

Note: Repo rates are average overnight Treasury rates for each market segment.. The two black lines represent the average rate offered

by the Federal Reserve's Overnight Reverse-Repurchase Facility (ON-RRP) and Repo Facility (RP). The two shaded areas are daily transaction volumes in these facilities.

Sources: Federal Reserve Bank of New York, OFR Cleared Repo Collection, Office of Financial Research

trades became less profitable. The spread between the

IRR and bill yields then increased, rising well above

the average over the last two years, and falling around

2 percent per annum (see **Figure 19** ). This disconnect

peaked around March 17, and then began to normalize,

with the IRR falling back into line with both the bill

rate and actual repo rate.

All this evidence points to the conclusion that March

illiquidity caused losses on the basis trade, which were

possibly compounded by large sales of the basis — with

traders who had bought the basis now selling cash

Treasuries and buying futures in order to close their

positions — under pressure from margin requirements.

In this sense, while we are unaware of any hedge fund

defaults associated with the basis trade during this illiquidity episode, many of the risks of the basis trade

appear to have materialized during March.

Figure 18. Basis Trade Return, Bills Rate, and DVP

Repo Rate (percent)

Jan 15 Feb 01 Feb 15 Mar 01 Mar 15 Apr 01

Note: DVP Repo rate is the average overnight rate for sponsored

borrowers with Treasury collateral. Implied repo rates are for July

contracts.

Sources: Bloomberg Finance L.P., Treasury Daily Yield Curve Rates, OFR

Cleared Repo Collection, Office of Financial Research

OFR Brief Series | 20-01 July 2020 | Page 14

Signs of Liquidity in the Cheapest-to-Deliver

These facts alone do not suggest any feedback effects

from stress in the basis trade to Treasury illiquidity.

Rather, there is some evidence that the basis trade

continued to provide liquidity through March.

In particular, relative to comparable Treasuries, the

cheapest-to-deliver securities for the futures market

traded at higher prices throughout March. **Figure 20**

shows spreads of Treasuries outside the deliverable set but

with similar maturity dates over the cheapest-to-deliver

for the two-year and five-year note futures contract for

June 2020. These deliverable spread increases coincided

with increases in bid-ask spreads across Treasuries, and

had generally decreased by the beginning of April as

stress in the Treasury market fell.

This premium for deliverable Treasuries runs counter

to the narrative that sales of the basis directly harmed

Treasury liquidity. If selling pressure from relative

value hedge funds had significantly harmed Treasury

liquidity, we might expect the price of the cheapest-to-deliver securities to have fallen relative to

comparable securities as dealers accumulated large net

exposure to these specific Treasuries. That the premium

rose suggests that any selling pressure was offset by the

liquidity that the basis trade provides and the link it

establishes to futures markets. [11] This link may have

become particularly valuable during the general flight

to liquidity during March, and reduced pressure on

dealers purchasing the cheapest-to-deliver.

As a result, while the general evidence points to sales

- f the basis by hedge funds during March, we do not
find conclusive evidence that these sales in turn caused
greater illiquidity in the Treasury market. While many

- f the risks of this trade seem to have materialized,
evidence of spillovers into Treasury liquidity and shortterm funding disruptions are limited. However, it is
worth noting that had liquidity not returned to the
Treasury market when it did, and had repo rates not
fallen, the consequences for relative value hedge funds
could have been much worse.

Effect of Federal Reserve Actions

Timely intervention by the Federal Reserve may have

been crucial for limiting the extent of hedge fund losses

in the basis trade and in preventing broader spillovers.

Note: Spread is the yield on a similar maturity nondeliverable

Treasury minus the yield on the cheapest-to-deliver. Cheapest-todeliver is for June futures contracts.

Sources: Bloomberg Finance L.P., Office of Financial Research

Figure 19. Spread of Basis Return over Bill Yield

(percentage points)

2.0

1.5

1.0

0.5

0.0

 - 0.5

Jan19 Mar 19 May 19 Jul 19 Sep 19 Nov 19 Jan 20 Mar 20

Note: Spread between the implied repo rate and an equivalent

maturity bill yield for the futures contract with the second-tonearest delivery date.

Sources: Bloomberg Finance L.P., Center for Research in Security Prices/

University of Chicago Booth School of Business, Office of Financial

Research

Figure 20. Spread on the Cheapest-to-Deliver

Treasury (percentage points)

Feb 10 Feb 24 Mar 09 Mar 23 Apr 06 Apr 20

OFR Brief Series | 20-01 July 2020 | Page 15

Following March 16, returns on basis trades began to

move back into line with the returns on Treasury bills,

and came closer to the cost of borrowing in the sponsored repo market. Several Fed actions on March 16 and

17 may have contributed to this easing of pressure on

hedge funds. In particular, Federal Reserve expansions

- f Treasury purchases provided an additional source of
demand for off-the-run Treasuries, while expansions

- f the central bank's repo facility reduced financing
risks associated with providing liquidity to Treasury
markets. It is difficult to know exactly which of these
actions was most important, in particular because they
were mutually reinforcing.

The Federal Reserve took the unusual action of including

the cheapest-to-deliver Treasury across contracts in its

purchases. The direct effect of these purchases may

have been limited. Purchases of deliverables for longer

duration securities picked up almost immediately after

March 15. However, these longer-duration securities seem to have made up a relatively small portion

- f hedge fund short futures positions. Alternatively,
Fed purchases of the most popular two-year and fiveyear cheapest-to-deliver Treasuries were negligible
until April. This is consistent with the basis trade still
providing liquidity to the market, as dealers may have
been more comfortable holding Treasuries for which
they had a natural source of demand from basis traders.

However, the indirect effect of including cheapest-to-deliver Treasuries in Federal Reserve purchases

may have been substantial. Even if purchases of shorter-maturity cheapest-to-deliver Treasuries on March 16

were small, the knowledge that the Treasuries could

be sold to the Federal Reserve in the future may have

made dealers more willing to hold these Treasuries,

allowing hedge funds to gradually reduce their exposure to the basis trade. The increase in Federal Reserve

purchases in April may then represent concerns over

the longer-term profitability of basis trades, which as

we discuss below is likely to be reduced. Without these

actions, dealers may not have been willing to hold the

cheapest-to-deliver securities in order to accommodate

a gradual withdrawal from the basis trade.

As these purchases may have made dealers more willing

to accept cheapest-to-deliver Treasuries, the Fed also

lowered the costs of funding these Treasury holdings

for hedge funds. Fed actions succeeded in lowering the

Figure 21. Cumulative Federal Reserve Purchases of

|Col1|e Cheapest-to-Deliver Securities ($ billions) 2-Year CTD|Col3|
|---|---|---|
||2-Year CTD<br> <br>2-Year CTD<br>~~5~~-Year CTD|2-Year CTD<br> <br>2-Year CTD<br>~~5~~-Year CTD|
|2<br>4<br>6<br>8<br>0|5-Year CTD<br>10-Year CTD<br>Bond CTD<br> <br>~~1~~0-Year CTD<br>~~B~~one CTD||
|2<br>4<br>6<br>8<br>0|5-Year CTD<br>10-Year CTD<br>Bond CTD<br> <br>~~1~~0-Year CTD<br>~~B~~one CTD||
|2<br>4<br>6<br>8<br>0|5-Year CTD<br>10-Year CTD<br>Bond CTD<br> <br>~~1~~0-Year CTD<br>~~B~~one CTD||
|2<br>4<br>6<br>8<br>0|||

Jan 01 Jan 15 Feb 01 Feb 15 Mar 01 Mar 15 Apr 01 Apr 15 May 01

Note: Cumulative purchases of the cheapest-to-deliver (CTD)

Treasuries for June delivery.

Sources: Federal Reserve Bank of New York, Office of Financial Research

DVP repo rate across segments of the market, including

in the sponsored borrowing segment. Expansion of

the repo facility likely reduced these rates by relieving

liquidity concerns among dealers. Following this

expansion on March 16, the sponsored lending rate fell

to the zero lower bound defined by the Fed's overnight

reverse repurchase (ON-RRP) facility (see **Figure 21** ).

The rate on sponsored borrowing largely fell in lockstep,

reducing the cost of funding these Treasury positions

for hedge funds.

## Conclusion

Treasury market illiquidity in March placed severe stress

- n hedge fund basis traders. Media articles published in
the week of March 17 indicate that several relative value
hedge funds experienced serious stress associated with
the basis trade. [12] These losses were driven by margin
calls and repo rate volatility. Under this pressure, hedge
funds unwound their positions, selling to dealers whose
balance sheets were already swelling with Treasuries.

However, to our knowledge no defaults directly associated with the basis trade actually occurred, suggesting

OFR Brief Series | 20-01 July 2020 | Page 16

that these funds weathered the margin calls during

this period. In addition, spreads for the cheapest-to-deliver securities across contracts suggest that this trade

continued to provide liquidity relative to comparable

- ff-the-run Treasuries. Rapid action by the Federal
Reserve in expanding its purchases of Treasury securities and its repo facilities may have stemmed much

- f the potential impact of these trades on Treasury
illiquidity.

Meanwhile, further reductions in hedge fund short

positions suggest that the popularity of the basis

trade has decreased, with total short positions at \$554

billion as of April 28, a decline of almost 30 percent

from mid-February. Basis trades remain unattractive

for hedge funds. While the IRR has remained near

zero, the spread that sponsors charge borrowers over

their lending rates imposes an effective lower bound

- n hedge fund borrowing rates of around 12.5 basis
points. (A basis point is one-hundredth of a percentage
point.) At the same time, the implied repo rate has
generally been in the range of 5 basis points for the
two-year and five-year contracts, in line with bill rates,
and has been below zero for the 10-year contract. As
a result, net returns on new basis trades are likely to
be negative in the immediate future. That a substantial
portion of the outstanding of the cheapest-to-deliver
securities has been purchased by the Federal Reserve
without a substantial increase in implied repo rates
further underscores the possibility that demand for
basis trades will be tepid going forward.

Nevertheless, risks of basis trades persist. Hedge

funds still hold large short Treasury futures positions.

Looking forward, relatively large amounts of shortterm Treasury bill issuance may support returns on the

basis trade, while other participants such as foreign official accounts appear to be at least temporarily satisfied

with the liquidity buffers they established in March.

However, relatively high costs of funding for hedge

funds, combined with low returns on the basis trade,

may lead to further sales of the basis and reduce the

liquidity these trades provide to longer-term Treasury

notes and bonds. The high leverage of hedge funds

involved in basis trades continues to be a cause for

concern. These funds remain exposed to sudden bouts

- f illiquidity in Treasury and repo markets.

Even if basis trades remain unpopular, it is worth

considering the vulnerabilities exposed by difficulties in March. The transition of Treasury security

- wnership toward highly leveraged funds exposes the
market to sell-offs because small changes in prices can
trigger large losses. Expanded dealer Treasury exposure
could exacerbate these sell-offs, hampering the ability

- f those dealers to make markets. Finally, the role
- f repo markets in financing both dealers and leveraged Treasury holders, as well as the importance of
Treasury collateral, tie short-term funding markets to
the Treasury market, leading to potential spillovers into
broader wholesale funding markets. Future episodes of
Treasury market instability therefore remain a possibility and may trigger continued intervention by the
Federal Reserve.

OFR Brief Series | 20-01 July 2020 | Page 17

## Endnotes

1 Daniel Barth, Senior Economist, Board of

Governors of the Federal Reserve System

[(daniel.j.barth@frb.gov), and Jay Kahn,](mailto:daniel.j.barth@frb.gov)

Research Economist, Office of Financial

[Research (robert.kahn@ofr.treasury.gov). The](mailto:robert.kahn@ofr.treasury.gov)

authors thank Amanda Buckley, Katherine

Gleason, Maryann Haggerty, Matthew

McCormick, Sriram Rajan and Stacey Schreft

for their comments and assistance.

2 Previous research, in particular Andreas

Schrimpf, Hyun Song Shin, and Vladyslav

Sushko "Leverage and margin spirals in fixed

income markets during the Covid-19 crisis,"

[BIS Bulletin No. 2, April 2, 2020 (https://](https://www.bis.org/publ/bisbull02.pdf)

[www.bis.org/publ/bisbull02.pdf), has discussed](https://www.bis.org/publ/bisbull02.pdf)

the role of the basis trade in March Treasury

illiquidity. While we confirm their results that

losses on the trade occurred during March, we

provide evidence that feedback into Treasury

market illiquidity may have been limited.

3 Throughout this brief, when we construct long

series of the returns on the basis trade, we use a

roll date for the futures contract that avoids the

delivery month, so as to avoid any excess volatility caused by optionality in physical delivery.

In particular, we choose the futures contract

that on any given day has the second-nearest

delivery date.

4 For 10-year note contracts and bond contracts,

the CBOT offers additional "ultra" futures,

with narrower maturity ranges eligible for

delivery.

5 For instance, the deliverable basket for the

two-year contract contains Treasuries with an

 - riginal maturity of less than five years and
three months and a residual maturity on the last
day of the delivery month between one year and
eight months and two years.

6 Specific collateral repo rates can vary for

individual securities. If the repo rate on the

cheapest-to-deliver is particularly high, the

cheapest-to-deliver may not actually be the

most attractive Treasury to deliver into the

futures position.

7 These post-crisis limits stem mostly from the

Dodd-Frank Wall Street Reform and Consumer

Protection Act of 2010 and from the interna

tional Basel III standards.

8 See Joe Rennison, "Repo blame game moves

focus to hedge funds," _Financial Times_,

Dec. 13, 2019. [https://www.ft.com/content/](https://www.ft.com/content/6427f16a-1d05-11ea-97df-cc63de1d73f4)

[6427f16a-1d05-11ea-97df-cc63de1d73f4.](https://www.ft.com/content/6427f16a-1d05-11ea-97df-cc63de1d73f4)

9 Sales from these foreign official accounts may

have had particular importance for Treasury

market illiquidity. Primary dealers are required

to make "reasonable" markets for sales of

Treasuries by these accounts. Additionally,

the funds from these sales seem to have been

invested in significant part in the Federal

Reserve's foreign repo pool, which effectively

removes reserves from the system, potentially

making repo financing of Treasuries more

expensive

10 There are two ways to reduce futures exposure:

for contracts maturing in March, hedge funds

may have simply not rolled over into the June

contract. For contracts maturing after March,

hedge funds would have to take on offsetting

long positions.

11 It is possible that in order to keep basis trades

 - pen while meeting margin calls, hedge funds
may have sold Treasuries other than the cheapest-to-deliver, thus contributing to the lower
price of other securities. It is difficult to reject
this possibility without more detailed data on
hedge funds' Treasury holdings. However, even
in this case the willingness of hedge funds to
sell other Treasuries to keep their basis trades

 - pen would still indicate excess demand for the
trade.

12 See for instance Stephen Spratt, "How a

Little Known Trade Upended the U.S.

Treasury Market," Bloomberg, March 17,

[2020. https://www.bloomberg.com/news/](https://www.bloomberg.com/news/articles/2020-03-17/treasury-futures-domino-that-helped-drive-fed-s-5-trillion-repo)

[articles/2020-03-17/treasury-futures-domino-](https://www.bloomberg.com/news/articles/2020-03-17/treasury-futures-domino-that-helped-drive-fed-s-5-trillion-repo)

[that-helped-drive-fed-s-5-trillion-repo; Juliet](https://www.bloomberg.com/news/articles/2020-03-17/treasury-futures-domino-that-helped-drive-fed-s-5-trillion-repo)

Chung, "Hedge Funds Hit by Losses in Basis

Trade," The Wall Street Journal, March 19,

[2020. https://www.wsj.com/articles/hedge-](https://www.wsj.com/articles/hedge-funds-hit-by-losses-in-basis-trade-11584661202)

[funds-hit-by-losses-in-basis-trade-11584661202;](https://www.wsj.com/articles/hedge-funds-hit-by-losses-in-basis-trade-11584661202)

Sonali Basak, Liz McCormick, Donal Griffin,

and Hema Parmar, "Before Fed Acted, Leverage

Burned Hedge Funds in Treasury Market,"

Bloomberg, March 19, 2020. [https://www.](https://www.bloomberg.com/news/articles/2020-03-19/before-fed-acted-leverage-burned-hedge-funds-in-treasury-trade)

[bloomberg.com/news/articles/2020-03-19/](https://www.bloomberg.com/news/articles/2020-03-19/before-fed-acted-leverage-burned-hedge-funds-in-treasury-trade)

[before-fed-acted-leverage-burned-hedge-funds-](https://www.bloomberg.com/news/articles/2020-03-19/before-fed-acted-leverage-burned-hedge-funds-in-treasury-trade)

[in-treasury-trade.](https://www.bloomberg.com/news/articles/2020-03-19/before-fed-acted-leverage-burned-hedge-funds-in-treasury-trade)

OFR Brief Series | 20-01 July 2020 | Page 18

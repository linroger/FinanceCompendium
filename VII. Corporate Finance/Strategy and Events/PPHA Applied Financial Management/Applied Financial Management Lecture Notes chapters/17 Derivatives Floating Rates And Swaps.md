---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Outline
linter-yaml-title-alias: Outline
---

Lecture 17

Thomas S. Coleman

15 May 2023; Draft May 17, 2023

# Outline

# Contents

1 What are Derivatives? 1  
2 Floating Rate Instruments (Swaps & Bonds) 4

2.1 Floating Rates - Libor & SOFR 4  
2.2 Floating Rate Bond - Libor Flat 6  
2.3 Risky Floating Rate Notes (Bonds) - Libor + Spread 8

3 Interest Rate Swaps 9

3.1 What is a Swap? How to PV?. 9  
3.2 Why Swaps? - Some History & Examples 13  
3.3 Modern Example - Chicago Swaps and Termination 14  
3.4 More Details on Swaps 21

A Appendix - Supplement and Not Covered in Class - FRN (Floating Rate Note) 23

# 1 What are Derivatives?

Derivatives - Not Assets, "Derived" from Assets

What is "Derivative": Payout (profit / loss) derived from something

- Value is derived from some other asset or security  
- Not "assets" (generally) - don't invest, don't buy & own something  
- Often not "securities" but instead individualized contracts

"Asset"

- a "thing" such as an equity (part-ownership of a company) or a bond (right to future payments)  
- something you buy, you give money and get ownership  
- Financial assets: equities, bonds  
- Non-financial assets: car, house, computer, your human capital

"Security"

- a standardized and tradeable financial instrument  
- originally a piece of paper documenting the details of an asset and documenting ownership. Now usually stored electronically

Derivatives are "derived" from something else.

Bonds, money markets, equities - these are all "assets" in the sense that you invest money and then own something, you have some right to future cash flows. You have bought something

# Futures and Swaps: Two Common Derivatives

Futures - What they are

- Simple - a contract where we agree today to trade in the future  
- Set today price, amount, when we trade - future delivery  
- Come back next class

Futures - Institutional details

- Exchanges - centralized trading. Used to be open outcry "pits" now electronic  
- Marginating - putting money up-front to reduce & manage credit & default risk  
Securities - standardized contract defined by the exchange

# Futures and Swaps: Two Common Derivatives

Swaps - What they are

- Simple - a contract to exchange (swap) cash flows between two companies

Swaps - Valuation

- Teach you how to think about, how to PV these simple instrument  
Show how thinking about CFs makes things simple  
- These "complicated" derivatives are not that difficult after all

Swaps - Institutional Details

Trade OTC (Over the Counter)  
Used to be no centralized exchange  

- Now moving to centralized clearing - to reduce & manage credit risk  
- Not a security but an individual contract between two parties

# Goal: Show that mapping CFs makes things simple

These "complicated" derivatives are not that difficult after all

- Futures: more-or-less forward contract - spot-vs-fwd pricing by PV
- Example: S&P futures, wheat futures, bond futures
- IR Swap: behaves just like a bond (we will see)

Value of simple views

- Cannot emphasize enough value of simple (but correct) approaches that get you  $95\%$  of the way  
- My experience - if someone cannot give simple explanation for trade or business, signals underlying problems
- They don't understand well enough  
- They understand but don't want you to understand - maybe to enhance their status, maybe there's something going on

# 2 Floating Rate Instruments (Swaps & Bonds)

# 2.1 Floating Rates - Libor & SOFR

# Contents

# What is a "Floating Rate Bond"?

So far, working with fixed coupon bonds

- Our old friend, 4 yr  $6.5\%$  ann coupon

BUT, could also think about "floating coupon"

Each year, agree to pay current 1yr rate  

- Still 4 yrs, but now coupon "floats"

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/67992853223bdbfc95dfe1dbeb5e80390aaf058a71f2fb0b281deb78fb089675.jpg)

Draw CF diagram and discounting exactly same

- Dashed line to represent "floating"  
- Unknown today - will be set in 1yr, 2yr, 3yr

But how do we value those "unknown" CFs?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b8177296509be7ea120175b0d42da8b2a491e180db909d2c1f52c32bf9d757aa.jpg)

This trick of replacing the 4th year floating payment with \(100 at yr 3 is really general but really powerful

Comes from the definition of "floating rate"

- Floating rate = rate that floats (goes up & down) until the PV today is $100  
- Today, sitting at year 0, the rate (payment at year 1 gets set. How does it get set? People auction (offer to buy & sell or to invest or take investments) until the rate for year 1 gets set so that PV($100 + rate) = $100 today.

$$
- \S 1 0 0 = P V (\S 1 0 0 (1 + r)) = \frac {1 0 0 (1 + r)}{1 + r}
$$

- That is the definition of the floating rate: the rate so that PV today is $100  
- The point is that we are discounting at the same rate as the promised (floating) rate
- When we are sitting at year 3, the rate (payment) at year 4 gets set. How does it get set? Same as year 0 rate: rate set so that PV(yr 3) = $100: $100 = PV($100(1 + r4)) = 100(1+r4)/1+r4
- This means we can cross out the payment at year 4 and move back to year 3.
- But we can do the same for year 2 & 3: cross out  $r_3$  and replace with $100 at year 2  
- Now we can do that for year 2 and year 1, and we are left with $100 at year 0.

# LIBOR

Floating rates for high-quality bank deposits

Benchmark for many financial transactions

1mth, 3mth, 6mth, 1yr all float up & down until PV=$100

- Float minute-by-minute  
- LIBOR is the quote collected at 11am London time

London Interbank Offered Rate

Floats up / dn until

- PV=$100 for $100+libor in 1yr

2-nov-18 LIBOR rates:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/dbac5cb62a9e58a7f19de2956c5a78687aa8b880961c4079247a343cfcf8c746.jpg)

# SOFR

Secured Overnight Funding Rate

- Replacement for libor for US Dollar bonds & swaps

The Secured Overnight Financing Rate (SOFR) is a broad measure of the cost of borrowing cash overnight collateralized by Treasury securities. (NY Fed)

Libor has many problems

- Not a traded rate – survey of what banks think it should be  
- Open to manipulation

The Libor scandal was a series of fraudulent actions connected to Libor and also the resulting investigation and reaction – during 2008 financial crisis

SOFR introduced in 2018, will be a difficult transition from liber

https://apps.newyorkfed.org/markets/autorates/sofr

# Two Instruments: SWAP (L flat); BOND (L + risk prem)

Think about PV with floating rates for two instruments:

- Libor Flat: will be important when turn to swaps  
- Swaps generally between high-grade (libor-like) companies  
- risk premium  $\approx 0\mathrm{bp}$  (relative to libor)
- Libor + risk prem: important when looking at risk bonds
- Say FIS floating rate bond: risk premium  $\approx 227\mathrm{bp}$

We need to think about PV of a floating rate bond as discounting at

- LIBOR FLAT: this will be important for thinking about swaps  
- LIBOR + Risk Premium: important for thinking about bonds

# 2.2 Floating Rate Bond - Libor Flat

# Contents

# What is a "Floating Rate Bond"?

So far, working with fixed coupon bonds

- Our old friend, 4 yr  $6.5\%$  ann coupon

BUT, could also think about "floating coupon"

Each year, agree to pay current 1yr rate  

- Still 4 yrs, but now coupon "floats"

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/6192c65793e0fbb96295717621e86235f3c8ebf7e230244ed453f322c3bcf9a0.jpg)

Draw CF diagram and discounting exactly same

- Dashed line to represent "floating"  
- Unknown today - will be set in 1yr, 2yr, 3yr

But how do we value those "unknown" CFs?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/e70e585a21611b15c8490661664d30137e5a1dc1cc5d0906e030a5727fdc1e7c.jpg)

# How to Value?  $\mathbf{PV} = 100$

What is PV of those future unknown CFs?

- Simple "trick" says  $\mathrm{PV} = 100$

Not really a "trick" - just definition of libor floating rate

- Libor is set so that  $\mathrm{PV}(100 + \mathrm{libor}) = 100$  
- Libor rate up-and-down (supply/demand) until  $\mathrm{PV} = 100$

Must be $100 (yld=coup)

- Trick: rate at yr 3:

$$
\begin{array}{l} - \text {l i b o r s e t s o P V (y r 3)} = \$ 1 0 0 \\ - s o p u t i n \$ 100 a t y r 3 \\ \end{array}
$$

- Now move back to yr 2, then yr 1  
- Run back to today (yr 0)

PV today has to be $100

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/bcdf004b958dd80a1d02acb22c8d643823b614e5f3587242b73fdaeffa8be085.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d0e20eaae94743b9bdac2a3ac9f97266f4c2581063540fcb09d1d55ed9c7521b.jpg)

# 2.3 Risky Floating Rate Notes (Bonds) - Libor + Spread Contents

# What is "Risky Floating Rate Note (FRN)?"

We know how to PV floating bond that pays liber

Dashed line to represent "floating"

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/235dd2f3b510f9445ef40f3c179a7ded93a99ed294f1b12e1645b08e6f989c27.jpg)

BUT - Most companies (like FIS) not "high quality"

- Coupon = libor + sprd

The libor part up / dn every quarter

- The spread part fixed for life of bond

What is value today for 4yr bond, libor + sprd?

More difficult - come back after swaps

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b0ccbd227ec0492c678bb410e82176014b569cfc56fe6ed2db8a05d64e1f77b0.jpg)

# 3 Interest Rate Swaps

# 3.1 What is a Swap? How to PV?

# Contents

# What is a Swap? - "Traditional" Diagram

Developed early (1980s) - today probably the largest of swaps

- This makes up only one segment of the swap market.

Focus on a fixed-floating swap

- Concreteness - dealer receives fixed and pays floating.  
- Traditional swap diagram showing the direction of cash flows

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/08984b6f1e7d4092861ca716f011e7d3c064df81a3a8de2383acc5bab1d5a04a.jpg)

# What is a Swap? - CF Diagram

Traditional CF diagram useful for seeing who gets paid what.

- But useless for understanding valuation, PV

I find the following CF / time-line diagram more useful

- Four years, receive  $5\%$  fixed, pay floating semi-(annually)  
- Actual USD swaps generally semi fixed, quarterly floating  
- Swap contract to exchange cash flows

Simple instrument, but question

- How do we value? How do we get PV and DV01?

Valuation is pretty simple, using a simple trick.  

- Start with CF diagram - four cash flows, each year receive fixed, pay floating

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/310b213d97d29ea27322fb23b65143266a870503dcac8de9742f9600ae403ac4.jpg)

# Valuation Simple, Trick for IRS

Cash flows are net. (Read my "Practical Guide" on Canvas)

- Putting  $\pm 100$  at the end makes no difference (approximately)  
- Transforms swap into: + fixed bond - floating bond  
- NPV (Swap Rec fix) = PV(fix bond) - PV(float bond)  
- Rate DV01 = DV01 of fixed-coupon bond (since floating bond 0)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/54df63cb9ced72fe31f9b5c030a524dcbcd66a4fc6404bc51878ec7bed6ccaaa.jpg)

Read the chapter on swaps in my "Practical Guide to Bonds & Swaps" on Canvas

# In-Class Exercise for Swap Valuation

Now we know answers

Value and DV01

- Same as bond - what we've been doing - value swaps on HP
- In-class Exercise - PV of swap

PV of 5yr swap to receive  $5\%$  fixed semi - current rate  $1.7\%$

<table><tr><td>P/YR=2</td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>10</td><td>1.70</td><td></td><td>2.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-115.754</td><td></td><td></td></tr></table>

- PV(swap) = 115.75 - 100 = $15.75  
 - BPV of swap = 5.20 $/100bp

You now know everything about swaps

- What they look like (CF diagram)  
- How to value (PV of bond)  
- Risk (BPV of bond)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/44af2207c4f3c3d06e932829ae42c4dd0b9a4df68f766f6aff231a903a66eb06.jpg)

# Quoted Swap Rate  $=$  Market Yield

Swap market quotes rates - e.g.  $2.874\%$  sab for 10-yr for 23-mar-16 What does this mean?

- Tells you about a specific swap trading in the market  
- Coupon such that swap PV is 0

$\mathbf{PV}(\text{swap R coup c}) = \mathrm{PV}(\text{bond with coupon c}) - 100$

$\Rightarrow \mathrm{PV}(\mathrm{bond~with~coupon~c}) = 100$  
$\Rightarrow$  yield  $=$  c (since yield  $\equiv$  coupon for par bond)

- So it also tells you about the yield on a specific "bond"

Swap rates in US quoted as spread to US Treasury – always semi

- Convenient way to split overall rate into
- Risk-free discounting, changes with: UST. (2.825% on 23-mar-18)  
- Swap-specific risk, spread to UST (4.9 bp on 23-mar-18:  $2.874 = 2.825 + .049$ )
- With quoted rate c, you know PV (zero) and BPV (of fixed bond coupon=c, yield=c)

# Quoted Swap Rate  $=$  Market Yield

From Problem Set, All-in rates

<table><tr><td>5-oct-18</td><td>Spread</td><td>UST</td><td>All-in</td></tr><tr><td>Swap 2yr</td><td>18.9</td><td>2.877</td><td>3.066</td></tr><tr><td>Swap 5yr</td><td>11.9</td><td>3.068</td><td>3.187</td></tr><tr><td>Swap 10yr</td><td>2.9</td><td>3.233</td><td>3.262</td></tr></table>

10yr swap, fixed coup  $3.262\%$ , PV = 0

- PV(swap R coup c) = PV(bond with coupon c) - 100

10yr "bond", fixed coup  $3.262\%$ , PV = 100

# 3.2 Why Swaps? - Some History & Examples

# Contents

<table><tr><td>Early Swaps – Allow Credit Arbitrage
Different customer “clientes” (niches) – some like fixed, some float
“Float” customers dislike Co B less – B should always issue in floating market</td></tr></table>

<table><tr><td></td><td>Fixed</td><td>Float</td></tr><tr><td>Company A</td><td>7%</td><td>libor+50bp</td></tr><tr><td>Company B</td><td>8%</td><td>libor+125bp</td></tr><tr><td>spread</td><td>100bp</td><td>75bp</td></tr><tr><td colspan="3">25bp spread for someone to capture (Co B -25bp in floating)</td></tr></table>

<table><tr><td></td><td colspan="5">Fixed 6.50%, Split between A&amp;B (picture)</td></tr><tr><td>Co A Max</td><td>Bond</td><td>Sw Rec</td><td>Sw Pay</td><td>Pay</td><td>Net</td></tr><tr><td>Company A</td><td>7%</td><td>6.65%</td><td>L</td><td>7-6.65+L</td><td>L+35</td></tr><tr><td>Company B</td><td>L+125</td><td>L</td><td>6.65%</td><td>L+1.25-L+6.65</td><td>7.90%</td></tr><tr><td></td><td colspan="5">Benefit 15 to A, 10 to B</td></tr></table>

<table><tr><td></td><td colspan="5">Fixed 6.50%, Co A pays maximum</td></tr><tr><td>Co A Max</td><td>Bond</td><td>Sw Rec</td><td>Sw Pay</td><td>Pay</td><td>Net</td></tr><tr><td>Company A</td><td>7%</td><td>6.50%</td><td>L</td><td>7-6.5+L</td><td>L+50</td></tr><tr><td>Company B</td><td>L+125</td><td>L</td><td>6.50%</td><td>L+1.25-L+6.50</td><td>7.75%</td></tr><tr><td></td><td colspan="5">Here all benefit (25bp) to Co B</td></tr></table>

<table><tr><td colspan="6">Fixed 6.75%, Co A pays minimum</td></tr><tr><td>Co A Min</td><td>Bond</td><td>Sw Rec</td><td>Sw Pay</td><td>Pay</td><td>Net</td></tr><tr><td>Company A</td><td>7%</td><td>6.75%</td><td>L</td><td>7-6.75+L</td><td>L+25</td></tr><tr><td>Company B</td><td>L+125</td><td>L</td><td>6.75%</td><td>L+1.25-L+6.75</td><td>8.00%</td></tr><tr><td colspan="6">Here all benefit (25bp) to Co A</td></tr></table>

<table><tr><td></td><td colspan="5">Fixed 6.50%, Split between A&amp;B (picture)</td></tr><tr><td>Co A Max</td><td>Bond</td><td>Sw Rec</td><td>Sw Pay</td><td>Pay</td><td>Net</td></tr><tr><td>Company A</td><td>7%</td><td>6.65%</td><td>L</td><td>7-6.65+L</td><td>L+35</td></tr><tr><td>Company B</td><td>L+125</td><td>L</td><td>6.65%</td><td>L+1.25-L+6.65</td><td>7.90%</td></tr><tr><td></td><td colspan="5">Benefit 15 to A, 10 to B</td></tr></table>

Arbitrage - Swap captures spread

- if A wants float, they can split that extra 25bp

Somebody gets that 25bp

Who? depends on bargaining  

- Picture shows splitting: 15 to A, 10 to B

Somebody gets that 25bp

Who? depends on bargaining  
Table shows splitting: 25 to A, 0 to B

Somebody gets that 25bp

Who? depends on bargaining  
Table shows splitting: 0 to A, 25 to B

First, 1981: World Bank & IBM

- Solomon (Warburg?)

Now: large (\$300tn+) and dealers

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/9fd3d929627d67eefdf2c8210bdf6fe97ac2485c3ff8e5f247fbf62d89d36997.jpg)

Example of two companies with different credit in fixed and floating bonds markets.

We assume here that both companies issue the same bonds – say 4 yr maturity – but their credit is different in the two markets

This used to happen more than it does because different groups of investors have a) Different preferences for fixed vs floating bonds and b) Different assessment of Co A vs B - those who like fixed think Co B worse than A by 100bp, those who like floating think Co B worse only by 75bp

Doesn't happen much now precisely because of swaps - they allow easy arbitrage across these markets

Markets have developed since

http://www.swapsinfo.org

# 3.3 Modern Example - Chicago Swaps and Termination

# Contents

Modern Example - Chicago Bonds, Swaps, and Termination

2005: City of Chicago issues bonds.

General Obligation (GO) 2005D Variable Rate Demand Bonds

- Roughly 30 years maturity  
- Variable rate, meaning coupon goes up (or down) as overall interest rates up  
- GO: payments backed by city resources, including tax revenues.
- Strong backing from the city; usually considered to be high quality

Chicago, like any city or company, had to choose between fixed coupon and variable rate bonds

- Choice depends on large variety of factors - expectations, revenues, risks, and costs  
- Probably most important: Does (tax) revenue change with interest rates?
- Generally no so paying variable rate is risky (relative to fixed coupon)  
- City revenues don't change much with interest rates, so fixed coupon more reasonable
- Risks: a) fixed coup, rates  $\downarrow$  PV city owes ↑; b) variable rate, rates ↑ and annual payments ↑  
- Costs fixed vs variable coupon – if investors prefer variable rates, require higher fixed coupon

Partly luck: if choose fixed coupon and rates go down, lose

# Chicago Chose 30yr Fixed Coupon - Using a Swap - Why Different?

Chicago chose fixed coupon, but could do that with fixed coupon bond or floating bond + swap

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/28f7a231c4c5fd388dc63d88ca84081e79b9305c0f7739d4503126a914de9fdd.jpg)

Would pay fixed coupon

- Presumably higher than  $4.1\%$

Fixed coupon set for life of bond

- If Chicago credit  $\downarrow$  coupon does not change

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/2072677b33c831f6faa84e8acf9cd8a3feacb280fcce6e4bd85b5c8856369ae2.jpg)

The floating rate "flows through"

- Chicago effectively pays fixed coupon  $4.1\%$  
- Note: spread "Chicago" coupon and SIFMA rate (Securities Industry and Financial Markets Association) - average muni floating coupon

Floating "Chicago" coupon can change

- Chicago credit  $\downarrow$  Floating "Chicago" Coupon ↑ but not SIFMA  
- Chicago pays more

Also, Credit Triggers on swaps

- Banks can make Chicago cancel if credit ↓

# In 2015, Chicago Forced to Cancel

In May and June 2015, Chicago paid $221mn to cancel swaps

- Uproar about banks forcing the city to pay  
- And "bad decisions" by the city in taking on the swaps in 2005

But let's examine the alternatives of Fixed Coupon Bond versus Floating Bond + Swap

- Will see that, mostly, they are the same  
- Same value either way

In 2015 and 2016, City of Chicago was very transparent

- Published detailed information on bonds and swaps  
Data have since been removed from the web

I focused on one specific swap, $66.8mn BMO Harris swap

- Part of $223mn GO 2005D variable rate bond

The $221mn for cancellation of swaps was from the screen-shot of the City of Chicago listing of swaps - see AppFinMgmt2016b/problems/MuniSwapstemp.pdf

- Illinois is one of the states with the biggest problems (but only 2nd-worst - New Jersey is worst).
- From https://www.statedatalab.org/state_data_and_comparisons/detail/illinois  
- Total state liabilities (2016): $236bn  
- of which bonds: $40bn  
- Other liabilities: $28bn  
 - Minus debt related to capital assets: -$15bn  
 - Unfunded pension benefits: $138bn  
- Unfunded retiree health care: $44bn  
 - Per taxpayer $50,400  
- Also Retirement debt (2017) – Total $203bn From https://www.illinoispolicy.org/reports/203-billion-and-counting-total-debt-for-state-and-local-retirement-benefits-in-illinois/
- General Obligation 2005D Variable Rate Demand Bonds, CUSIP 167486NP0 & 167486NQ8
- CUSIP - universal identifier for North American securities
- GO: payments payments of coupon and principal backed by a pledge to use city resources, including tax revenues.
- Strong backing from the city; usually considered to be high quality

# References:

Bloomberg, and Elizabeth Campbell. "Chicago's Rating Cut by Fitch After Pension Overhaul Dashed." Bloomberg.com, March 28, 2016. http://www.bloomberg.com/news/articles/2016-03-28/chicago-s-bond-rating-lowered-to-bbb-by-fitch-after-court-loss  
Chicago. "Just the Facts: Answers to Frequent City Pension Questions," n.d. https://www.cityofchicago.org/city/en/c - no longer available

Crain's, and Thomas A. Corfman. "How Bad Are Chicago Pensions? The Worst in the Nation."

Crain's Chicago Business. Accessed November 19, 2016. http://www.chicagobusiness.com/article/20150814/NEWS02/15 bad-are-chicago-pensions-the-worst-in-the-nation

EMMA. "City of Chicago 2005D," n.d. http://emma.msrb.org/IssueView/IssueDetails.aspx?id=ER347225. "City of Chicago Bonds," n.d. http://emma.msrb.org/IssuerView/IssuerDetails.aspx?cusip=167486

Gov

March 15, 2013. http://www.governing.com/news/state/mct-chicago-credit-rating-downgraded.html

. "Cities Paying Millions to Get Out of Bad Bank Deals," March 6, 2015. http://www.governing.com/topics/fina.

Problem: AppFinMgt2018b/problems/problem4

Screenshot of some of the swap information (from the City of Chicago, now removed) are in AppFinMgmt2016b under "MuniSwap…"

# BACKGROUND

During the early-to-mid 2000s the City of Chicago (like many cities) raised money through issuing floating rate bonds and then entering into swaps to convert them into synthetic fixed-payment structures. As an alternative, the city could have instead issued a fixed coupon bond. There has been much ink spilled about how much the swaps have cost the city. I want you to critically examine the question of how much the swaps cost. Specifically, in this problem we are going to compare the floating-bond-plus-swap synthetic structure with a more-standard fixed coupon bond to examine whether and by how much the two structures differed. We will do this by focusing on one specific bond and swap:

Bond: General Obligation 2005D  

- Swap: \( \\( {66.837}\mathrm{\;{mn}} \) ,Chicago pays 4.10%,receives floating

# PART I: BACKGROUND ON THE BOND AND THE CITY DOWNGRADE

When the city issues a bond it is borrowing money. It sells the bond by taking money up-front, giving the investor a bond contract, and promising to pay back as specified in the contract.

# BOND

We are going to examine the General Obligation 2005D Variable Rate Demand Bonds, CUSIP 167486NP0 & 167486NQ8. (A CUSIP is a nine-character alphanumeric code that identifies a North American financial security (bond or stock) for the purposes of facilitating clearing and settlement of trades. The CUSIP system is owned by the American Bankers Association, and is operated by S&P Capital IQ.)

- "General Obligation" means that the payments on the bond (payments of coupon and repayment of principal) are backed by a pledge to use city resources, including tax revenues. Usually the entity (City of Chicago in this case) promises to levy a property tax to pay. In other words this bond has strong backing from the city, and this type of bond is usually considered to be high quality.  
- "2005D" means that it was issued in 2005, as one of a series of bonds issued that year. I believe it was issued August 2005, with original maturity in 2040 - 35 year maturity when originally issued. It was a variable rate or floating rate issue.

A bond may be issued with either a fixed coupon (most of the bonds we have been discussing are fixed-coupon) or a floating coupon. This GO 2005D VRDB (General Obligation 2005D Variable Rate Demand Bond) was a floating-rate bond. For these bonds the rate was re-set every week or every day - it was a floating rate that depended on the general level of interest rates in the market and the specific credit rating of the City of Chicago.

When the city sells a fixed coupon bond the city is short a fixed coupon bond. Now we are going to see how much the value of a fixed-coupon bond would change due to the change in rates from 2005 to 2015.

This problem is intended to focus on one specific bond issue and swap:

Bond: General Obligation 2005D  

- Swap: $66.837mn, Chicago pays 4.10%, receives floating

This swap was terminated in May 2015, for reasons discussed below. The city had to pay the swap counterparty (BMO)  $21.0885mn to terminate the swap. We will try to understand where the amount$ 21mn came from, and discuss why the city had to pay this swap termination fee.

I have attached a page from the City of Chicago that shows some details on various bonds and swaps that were terminated. This particular bond and swap are listed under "General Obligation 2005" and "Counterparty BMO". (You can find the full memo on Canvas under "Files / Problems" (name "SwapTermination2003B_WellsFargo_Redacted.pdf"). It used to be hosted by the city at

http://www.cityofchicago.org/content/dam/city/depts/fin/supp_info/Bonds/SwapTermination2003B_WellsFargo_ with much more at http://www.cityofchicago.org/city/en/depts/fin/supp_info/swap_confirms/general_obligationconfin - if anybody can find these let me know)

# DETAILS ON ACTUAL BOND & SWAP

BOND:

- "General Obligation" means that the payments on the bond (payments of coupon and repayment of principal) are backed by a pledge to use city resources, including tax revenues. Usually the entity (City of Chicago in this case) promises to levy a property tax to pay. In other words this bond has strong backing from the city, and this type of bond is usually considered to be high quality.  
- "2005D" means that it was issued in 2005, as one of a series of bonds issued that year. I believe it was issued August 2005, and that it matured in 2040 - 35 year maturity when originally issued. It was a variable rate or floating rate issue.

# SWAP:

Notional: $66.837mn  

- Chicago pays fixed  $4.10\%$  
- Chicago receives SIFMA, which is an average floating rate index of municipal issuers (i.e. it should match the variable rate on the bond above).  
- Counterparty BMO (Bank of Montreal)

Chicago was required to cancel the swap with BMO in May 2015. (We will discuss more in class why Chicago had to cancel the swap, but the short story is that the swap contract had provisions that the swap could be terminated, at the request of BMO, if the credit rating of the City of Chicago fell below certain levels. In March 2014 and again May 2015 Moody's downgraded Chicago, and that triggered the termination provisions.)

# What Happens When Rates Fall: Fixed vs Floating + Swap: 20052015

Simplifying assumption: both fixed coupon and swap rate  $4.77\%$  (match 30yr swap rate in 2005)

31 May 2005,  $10 - \mathrm{yr} = 4.42\%$ $30 - \mathrm{yr} = 4.77\%$  20-yr rate  $= 4.689\%$  (from yld_fwd6.xls)

$$
\mathrm{PV}(30\mathrm{yr}\text{bond}, \text{coupon} = 4.77\%, \mathrm{yld} = 4.77\%)
$$

<table><tr><td>P/YR=2</td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>60</td><td>4.77</td><td></td><td>2.385</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-100</td><td></td><td></td></tr></table>

- 29 May 2015,  $10 - \mathrm{yr} = 2.20\%$ ,  $30 - \mathrm{yr} = 2.62\%$  20-yr rate  $= 2.52\%$  (from yld_fwd6.xls)

$$
\mathrm{PV}(20\mathrm{yr}\text{bond}, \text{coupon} = 4.77\%, \mathrm{yld} = 2.52\%)
$$

<table><tr><td>P/YR=2</td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>40</td><td>2.52</td><td></td><td>2.385</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-135.18</td><td></td><td></td></tr></table>

- Change in Fixed Coupon Bond and Bond + Swap exactly the same

So far, Fixed Bond and Bond + Swap the same: Both lose $35.18

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/694f1ff3542d98904ed04e83d9509846cc625bf33c09c953ef66ddf87f7ba9fe.jpg)

Short Fixed Coupon Bond

- PV(coup=4.77% @ yld=4.77%) = -100PV(coup=4.77% @ yld=2.52%) = -135.18

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/678a9059630df15bdde887162df3edaa3c2b89a34d1a038c2789c9189ef27fd6.jpg)

Short Floating Bond + Pay Swap

- $- {100} + \left( {{100} - \mathrm{{PV}}\left( {{4.77}\% {@4.77}\% }\right)  =  - {100} - {100} + \left( {{100} - \mathrm{{PV}}\left( {{4.77}\% {@2.52}\% }\right)  =  - {135.18}}\right)$

# RATES (end-of-month, from FRED)

31-May-2005,

- $10\mathrm{-yr} = 4.42\%$  (DSWP10, discontinued),  
- $30\mathrm{-yr} = 4.77\%$  (DSWP30, discontinued);  
- 20-yr = 4.689%. Calculated from yld_fwd6.xls, assuming flat forwards, 4.42% sab 0-10yrs, 5.119% sab 10-30 yrs

29-May-2015,

- $10\mathrm{-yr} = 2.20\%$

$$
- 30 - \mathrm{yr} = 2.62 \%
$$

- $20\mathrm{-yr} = 2.519\%$ . Calculated from yld_fwd6.xls, assuming flat forwards,  $2.20\% \mathrm{stab}0 - 10\mathrm{yrs}$ ,  $2.930\% \mathrm{stab}10 - 30\mathrm{yrs}$ . Discount yrs 10-20 by  $2.930\% \mathrm{stab}$ , then 0-10 by  $2.20\% \mathrm{stab}$ .

For reference, here are the FRED average values:

- May 2005,  $10\mathrm{-yr} = 4.58\%$ ,  $30\mathrm{-yr} = 4.94\%$ ;  
- May 2015,  ${10} - \mathrm{{yr}} = {2.26}\% ,{30} - \mathrm{{yr}} = {2.70}\%$

# Our Simple "Bond + Swap" -Matches Actual Cancel Fee

Actual BMO Harris swap of  $66.8mn notional, required$ 21.09mn payment

- Our very simple analysis predicts $23.5mn, not too far wrong  
 - We predict swap down by $35.18 per $100, or $23.5mn per $66.8mn ($23.5mn = $66.8mn · 35.18/100)

Our very simple (but correct) approach to swaps teaches us what we need for Chicago swap termination

- Issue seems complicated, but surprisingly simple

# Why Chicago Forced to Cancel in 2015?

What forced the cancellations?

- Pension problems - Illinois and Chicago  
- Illinois had  $236bn liabilities (2016) - of which$ 182bn was unfunded pension and retiree health benefits  
- City of Chicago similar scale of problems  
- Post-2008, problems grew larger
- Chicago downgraded 2013 (Aa3 to A3 - big jump) and 2015  
- Crain's March 2013: Chicago downgraded because of Illinois problems: as of 2013 (IL unfunded pension ~$97bn, IL worst credit rating in the nation)  
- Crain's Aug 2015: Chicago unfunded liabilities $29.80bn, 15% of property tax base, highest in the nation

# Downgrade Provisions in swaps

- Banks (legitimately) worry when rates  $\downarrow$  and swap has negative value to Chicago  
- What if Chicago defaults, and does not pay?  
- Downgrade provisions allow banks to force termination when large downgrade - protects banks

# Problems With Termination

Two basic problems

- Chicago has to come up with cash now, instead of paying over next 20 years
- Terminate swaps and issue new bond
- Chicago has to issue new bond with higher coupon because credit risk higher

Many said "Swaps a Mistake - Chicago lost money"

- My Conclusion: Chicago lost a lot from falling rates – but would have lost roughly the same on fixed coupon bond

Worsening Credit – Chicago also lost from rising credit risk

- Refinance when credit spread is bad  
- With fixed coupon bond, might have avoided paying higher credit spread

# 3.4 More Details on Swaps

# Contents

# Credit Risk on Swaps

Argued above that R Fix on swap  $\Longleftrightarrow$  Long Bond

One important aspect swap & bond are different: Credit Risk

Bond:

- If municipality goes into default, your whole $100 is at risk

Swap:

- If bank goes into default, only your PV is at risk  
- Initially,  $\mathrm{PV} = 0$  
- Example above, rates up by  $30\mathrm{bp}$ ,  $\mathrm{PV} = -1.42$  no risk here  
 - Only if rates fall will PV become positive, and then risk is << $100

Credit risk on swaps much less than on bonds

- But still credit risk  
- Three main ways banks manage credit risk
- Live with it (choose only high credit-quality counterparties)  
Collateral  
- Down-grade triggers

# Credit Risk on Swaps - Cont'd

Credit risk on swaps much less than on bonds

- But still credit risk

Three main ways banks manage credit risk

Live with it

- Choose only high credit-quality counterparties
- Collateral
- When PV > 0, transfer cash into a collateral account
- Down-grade triggers
- When counterparty down-graded (becomes more risky) have opportunity to terminate  
- Very important - this is not a "penalty", just early payment of the PV

# Market

All amounts in US $ billions

Source - ISDA 1995 Year End Summary of Market Survey Statistics

Table 1 - Swap Market 1995 Activity and Year End Notional Outstanding  

<table><tr><td>1995</td><td colspan="2">Activity</td><td colspan="2">Year End Outstanding</td></tr><tr><td>CURRENCY</td><td>Interest Rate Swaps</td><td>Currency Swaps</td><td>Interest Rate Swaps</td><td>Currency Swaps</td></tr><tr><td>TOTAL</td><td>8,969</td><td>455</td><td>12,811</td><td>1,197</td></tr><tr><td>US Dollar</td><td>2,856</td><td>154</td><td>4,372</td><td>419</td></tr><tr><td>Japanese Yen</td><td>2,259</td><td>82</td><td>2,896</td><td>200</td></tr><tr><td>Deutsche Mark</td><td>985</td><td>39</td><td>1,439</td><td>119</td></tr><tr><td>French Franc</td><td>1,113</td><td>21</td><td>1,220</td><td>41</td></tr><tr><td>British Sterling</td><td>433</td><td>12</td><td>854</td><td>46</td></tr></table>

# A Appendix - Supplement and Not Covered in Class - FRN (Floating Rate Note)

# Contents

# What is "Risky Floating Rate Note (FRN)?"

We know how to PV floating bond that pays libor

- Dashed line to represent "floating"

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d61c2b8aa2f126f63b5b56a38e01cf89c73834bd5de84ec60ffef5cfb192b294.jpg)

BUT - Most companies (like FIS) not "high quality"

- Coupon = libor + sprd

The libor part up / dn every quarter

- The spread part fixed for life of bond

What is value today for 4yr bond, libor + sprd?

More difficult - come back after swaps

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/1e7e27599896599bdc179bea91573c020526ab9e7875dd1ab16006e3fc2c359a.jpg)

# First Idea - Discount-Libor+Sprd @ Libor-Flat - WRONG

Most companies (like FIS) not "high quality"

- Coupon = libor + sprd

The libor part up / dn every quarter

- The spread part fixed for life of bond

What is value today for 4yr bond, libor + sprd?

First (wrong) trick - cross out libors to today

- Left with spread to discount

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/07a53710d062464f942b1d56e4b7082b1323bb3d3a0ebb8f1243966a8b29cb60.jpg)

- But now sprd stays

Left with spread to PV

PV(annuity)  

- PV(floater) = 100 + PV(annuity)

$\mathrm{Sprd} = 75\mathrm{bp}$ $4\mathrm{yr}$  rate  $6.6\%$

$\bullet \mathrm{PV} = 100 + \mathrm{PV}(0.75@6.6\%)$  
$\mathrm{PV} = 100 + 2.56$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/bde28da7cab31cb9008479deab2e209de9631da0db44639ba841d605ac698eff.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a08f7a49ef776827f487a91498ddea254c8ddb976f8bfd406ca208f96b7bf554.jpg)

# Correct Idea - Discount Libor+Sprd @ Libor+Sprd

Most companies (like FIS) not "high quality"

- Coupon = libor + sprd(coup)  
- Discount = libor + sprd(today)

The sprd(coupon) fixed at issue

The sprd today) goes up & down every day

# Risky co difficult

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d338d15176020e1541b315a8da8fc44312df5fc0254829b5f548e7ab472fc62d.jpg)

Must discount libor + sprd (issue) @  $rf + rp = \text{libor} + \text{sprd(today)}$

- No simple way to discount and calculate PV  
- Need to project future libor (figure out those unknown libors - forward curve)  
- Then discount the  $\mathrm{L} + \mathrm{sprd}$  (issue) at yield  $= rf + rp = \mathrm{L} + \mathrm{sprd}(\mathrm{today})$

But here's an approximate way:

- Figure out "average" libor - fixed swap rate good approximation  
- Treat FRN as fixed bond with coupon  $=$  Swap + sprd  
- Get  $rp$  (sprd(today)) from a fixed-coupon bond (like FIS  $rp = 227\mathrm{bp}$ )  
- Discount at yield  $=$  Swap + spread(today)

# PV Floating Bond with Spread - In-Class Exercise

"Libor  $^+$  spread": Say libor  $+75\mathrm{bp}$  (Libor 2-nov-18  $3.105\%$  1yr)

- Next Coupon:  $\mathrm{L} + 75\mathrm{bp}$  would be  $3.105 + .75 = 3.855\%$

PV of 4yr  $\mathrm{L} + 75\mathrm{bp}$

4yr swap  $3.154\%$  
FIS spread 227bp so discount @ libor+227bp

4yr Bond:

- PV(L+75bp@mkt sprd = 227bp)  
$\bullet \approx \mathrm{PV}(3.154 + .75@3.154 + 2.27)$  
$\bullet = 94.66$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/bcaca3e4d1d157270933bf815cb2741b6e4315cfd6ea9ab9d2b61a9d14ff8132.jpg)

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>5.424</td><td></td><td>3.904</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-94.6628</td><td></td><td></td></tr></table>

# PV Swap + Spread - In-Class Exercise

Discounting at L flat NOT right for bonds, but useful for swaps "Libor+spread": Say libor + 75bp (Libor 2-nov-18 3.105% 1yr)

- Next Coupon:  $\mathrm{L} + 75\mathrm{bp}$  would be  $3.105 + .75 = 3.855\%$

PV of 4yr  $\mathrm{L} + 75\mathrm{bp}$

4yr swap  $3.154\%$  
Discount  $\mathrm{L} + 75\mathrm{bp}$  at L

4yr Bond:

- PV(L+75bp@L)  
$\bullet = \mathrm{PV}(\mathrm{floater}) + \mathrm{PV}(75\mathrm{bp}$  annuity)  
 - = $100 + 2.778

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/11b44296d61522e62a79a8c06e1bad189372580a04b6b2aee97b544038747c21.jpg)

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>3.154</td><td></td><td>0.75</td><td>0</td></tr><tr><td>Solve For</td><td></td><td></td><td>-2.778</td><td></td><td></td></tr></table>

# References

# Price of Risk II - Contribution,  $\beta$ , CAPM


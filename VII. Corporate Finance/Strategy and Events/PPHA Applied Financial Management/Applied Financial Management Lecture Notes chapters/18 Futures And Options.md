---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Derivatives - Futures & Options
linter-yaml-title-alias: Derivatives - Futures & Options
---

# Derivatives - Futures & Options

Lecture 18

Thomas S. Coleman

17 May 2023; Draft May 17, 2023

# Outline

# Contents

# 1 Futures 2

1.1 What Are Futures? 2  
1.2 Futures: Exchanges, Contract, Margining, Etc. 4  
1.3 Pricing 11

# A Appendix - Supplement and Not Covered in Class - Risk-Neutral Valuation, 14

A.1 Option Valuation Using Risk-Neutral Discounting 14  
A.2 Equity Option Terms & Valuation 15  
A.3 Black Scholes Formula - Simple Expectation 17  
A.4 Application-Callable Bonds 18

# Remember - Derivatives - Not Assets, "Derived" from Assets What is "Derivative": Payout (profit / loss) derived from something

- Value is derived from some other asset or security  
- Not "assets" (generally) - don't invest, don't buy & own something  
- Often not "securities" but instead individualized contracts

# "Asset"

- a "thing" such as an equity (part-ownership of a company) or a bond (right to future payments)  
- something you buy, you give money and get ownership  
- Financial assets: equities, bonds  
- Non-financial assets: car, house, computer, your human capital

# "Security"

- a standardized and tradeable financial instrument  
- originally a piece of paper documenting the details of an asset and documenting ownership. Now usually stored electronically

# 1 Futures

# 1.1 What Are Futures?

# Contents

# Futures - Agree Today, Trade Tomorrow

Example: Wheat Futures

- CBOT wheat, 5,000 bushels, Sep 2019 currently  $456.0\Phi/$  bushel

Futures & Forward contracts: agree today to trade in future

- Agree today the future date and price

How are Futures & Forward different?

# FORWARD

Private contract, trade OTC

Customized date, size, etc.

Profit / loss settle at expiry

# FUTURES

Publicly traded, on an exchange

Standardized delivery date, size, etc.

Profit / loss settled every day

Futures exchange - public, centralized, standardized

- Makes markets liquid and deep, but less customizable

# Important Components of Futures

Price & Mark-to-Market

- Agree today to trade at that price on the future (delivery) date  
- Daily MtM - ensure everyone has the money to cover losses

Underlier or Deliverable - what we agree to trade in the future

- Physical commodities: a bushel of wheat, a pound of cocoa, an ounce of gold, a barrel of oil  
- Financial futures: bonds, stock indexes, currencies

# History

- Original: agricultural commodities, CBOT listed grain contract 1864  
- Starting in 1970s and 1980s, introduced financial futures

# Important Components of Futures

Marginating

- NOT payment. Payment occurs at the future date  
- Mechanism to ensure there is money easily available to cover losses

# Exchange

- Stands in the middle to mitigate credit risk

Standardized contract

- Exchange defines everything except price - price negotiated between parties  
- Size; deliverable (underlier); delivery mechanism; delivery date;

Important components:

- Futures price today, agree today to trade at that price on the future (delivery) date
- Daily MtM  
- Just a way to ensure that price doesn't move too far, and that everyone has the money to pay their losses. P&L settled end of every day
- Futures vs Forwards  
- Underlier - what we agree to trade in the future
- Examples of physical commodities: a bushel of wheat, a pound of cocoa, an ounce of gold, a barrel of oil  
- Examples of financial futures: bonds, stock indexes

History

- Early contracts & original impetus: agricultural commodities, to allow farmers and consumers (millers, slaughter-houses) to lock in prices today. CBOT listed grain contract 1864  
- Starting in 1970s and 1980s, introduced financial futures
- Marginating
- NOT payment. Payment occurs at the future date  
- Mechanism to ensure there is money easily available to pay on days that price goes against, to make Daily MtM easy and smooth

Exchange

stands in the middle to mitigate credit risk

- Standardized contract
- Exchange defines everything except price 
- price negotiated between parties  
- Size; deliverable (underlier); delivery mechanism; delivery date;

# 1.2 Futures: Exchanges, Contract, Margining, Etc.

# Contents

# Exchange & Contract Specifications

Futures traded on an exchange

Used to be open outcry - literally a pit

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f5b222448f7a7e1f5b2b1fb30969101c26bef75fa5df67f2bbfe94081f65cfd5.jpg)

Being big and loud was important

Now it is all electronic

- Faster, more efficient, cheaper  
- But boring

Exchange sets all terms & conditions except price

- What: Deliverable (underlier) eg wheat or gold or bonds  
- When: Delivery date (when contract expires)  
- Size: Number of bushels or ounces of gold  
- Trading hours

# Movie "Trading Places" - Frozen Orange Juice

Movie Trading Places from 1983, starring Eddie Murphy, Dan Aykroyd, Jamie Lee Curtis

- Best I've seen of (old-style) open-pit futures trading

Fun movie based around trading Orange Juice futures

- The older bad guys have stolen a crop report (inside information)  
- They believe OJ crop will be poor, pushing prices up  
- Aykroyd & Murphy switched the report; they know crop will be good  
Bad guys order their trader to buy futures, before report released  
- Others see what's happening, everyone starts buying  
- Aykroyd & Murphy wait until price is high, then sell at high price  
- When good news comes out and price falls, Aykroyd & Murphy buy back at low price

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/4ad8c57edea43feb9c099287574389d2f600c458b75d8b767b7a9de3f16e5e4b.jpg)

# Movie "Trading Places" - Frozen Orange Juice

YouTube Clip (8 min): https://www.youtube.com/watch?v=-4_fwzC4PNI

1:50: Open price at 102.  

- 2:00-2:12: Wilson buying. Louis and Valentine waiting for price to rise
- Dukes confident price up when crop report released at 9:30  
Dukes would do this secretly, not publicly

- 2:30: Price at 142, Louis shouts "sell 30 at 142" - everybody else wants to buy (following Dukes)  
- 2:55: Price starts to go down (as Louis and Valentine sell).  
- 4:52: "Not affected the orange harvest": prices fall more  
- 5:00: Louis and Valentine sit and wait for prices to fall further  
- 5:22: Louis and Valentine start to buy, at price of 46. Prices continue to fall  
6:12: Trading ends. Price 29  
- Post-close: reconciling trades. Common in open outcry  
7:20: Margin call

Eddie Murphy Rule - outlawed insider trading on futures

- Start: In the NY exchange, but very much the same in Chicago. Everything used to be in physical "pits"  
- 0:34: trading various commodities. FCOJ screens show prices - most recent (bottom row) then prior  
- 0:45: brokers and runners are old-style. Now all electronic  
- 0:55: "silver pit" - literally a pit with steps going up around  
- 1:29: "Bond Futures" on below clock shows prices from Chicago. Randolph & Mortimer standing above realistic  
1:50: Open price at 102.  
- 2:00-2:12: Wilson buying. Louis and Valentine waiting for price to rise
- Randolph and Mortimer confident (based on (false) inside information) that price will go up when crop report (poor harvest) released at 9:30
- Others see that Duke & Duke trader buying, and Duke brothers watching. This is only big mistake in the movie - Dukes would buy through other brokers, not tip off that they are buying
- 2:29: Wilson still buying, Valentine wants to sell, Louis says wait from price to go higher  
- 2:30: Price at 142, Louis shouts "sell 30 at 142" - everybody else wants to buy (following Dukes)  
- 2:55: Price starts to go down (as Louis and Valentine sell).
- Dukes figure out what has happened 
- crop report faked  
- try to get down onto the floor, try to tell Wilson to sell (close out the earlier buys)
- Louis & Valentine continue to sell
- 4:12: Secretary of Agriculture on TV – in reality report would be released electronically.
- Trading going quiet reasonably realistic
- 4:52: "Not affected the orange harvest": everyone realizes there will be large supply in the next year, price will be low
- Futures prices fall for real
- 5:00: Louis and Valentine sit and wait for prices to fall further  
- 5:22: Louis and Valentine start to buy, at price of 46. Prices continue to fall
- They are buying to close out their earlier sales.  
- Sold at 142, bought at 46. Profit 96 per contract  
- Louis & Valentine needed to make sure they bought back (closed) all their trades

6:12: Trading ends. Price 29  

- Post-close: reconciling trades. Common in open outcry  
7:20: Margin call

Dukes had bought contracts at various prices, from 102 up to 142.  

- They may have sold out (closed out) some contracts  
- But all their remaining contracts were now priced at 29. They had to pay (that day) the difference between price they bought (say 142) and closing (29).  
- Movie says it is \(394mn - exchange claims their assets, Dukes are ruined

# Movie "Trading Places" - Frozen Orange Juice

YouTube Clip (8 min): https://www.youtube.com/watch?v=-4_fwzC4PNI

Eddie Murphy Rule - outlawed insider trading on futures

Passed in 2010

Explanations:

Good: https://www.npr.org/sections/money/2013/07/19/201430727/what-actually-happens-at-the-end-of-trading-places  

- So-so: https://im-an-economist.blogspot.com/2014/01/short-selling-explained-case-study.html

# Variety of Futures

# Commodities

Agriculturals

Grains (corn, wheat, …)  

- Softs (cotton, cocoa, coffee, …)  
Livestock

Metals

Gold, copper, palladium, …

Energy

- Crude oil, Nat Gas, electricity, …

# Financials

Interest Rate

- Libor, SOFR, Fed Funds, …

Bonds

US 10yr, UK Gilt, German Bund, …

Stock Indexes

S&P e-mini, CAC (France), Nikkei, FTSE

Foreign Exchange (FX)

- $/Yen, $/pound, …

Exchanges and contracts throughout the world

US, UK, Europe, Japan, Latin America

# Marginating

No cash up-front for forwards or futures

As price changes, profit to one side, loss to other

Futures Daily P&L and Margining - mechanisms reduce credit risk

- After we agree price, exchange steps in, becomes counterparty

Daily P&L - Every day, we receive profit or pay loss (to exchange)

- Ensures that credit risk never grows too big  
- Contrast with forwards - P&L accumulates and can get big

Margin - "good faith" money ensures we can pay daily P&L

- Exchange makes us post margin - still ours but physically at exchange. (We earn interest on this money)  
- NOT payment to buy (or sell)  
- Exchange wants to access to money in case the price goes against us  
- Amount in margin up (we have won): we can withdraw some  
- Amount in margin down (we have lost): must put more in - "margin call"

# Marginating

# Initial Margin

- Name says it: the initial amount  
- Might be  $10\%$  or  $25\%$  or even  $50\%$  of contract value - depends on volatility - how much price changes day-by-day

# Variation Margin

- Amount to be maintained every day  
- Something like  $75\%$  of Initial Margin

# Futures versus Forwards

No cash up-front for forwards or futures

- Both agree today for trade at future date

# FORWARD

Private contract, trade OTC

Customized date, size, etc.

Profit / loss settle at expiry

# FUTURES

Publicly traded, on an exchange

Standardized delivery date, size, etc.

Daily MtM: Profit / loss settled every day

Fundamental difference: daily MtM

- Big difference in credit risk  
- Small difference in price

# Delivery Mechanism

At end of contract, need to force futures to match cash market Simple for wheat, deliver 5,000 bushels

"Buy", pay cash price, receive 5,000 bushels

Cash vs Physical

- Physical: 5,000 bushels OK for farmer, inconvenient for "speculator"  
- Cash: exchange difference between agreed and final price
- For futures, done incrementally every day, for forward done lump sum at end  
- Stories about forgetting and having wheat show up on doorstep

To relieve "cornering" pressures, window and various grades

- Problem if one person buys all the physical, forces cash prices up/dn  
- Settlement during a window (wheat, 7 business days after last trade, which is day before 15th of delivery month)  
- And grades of wheat (No. 2 soft red winter, no. 2 hard red winter, …)

Most contracts closed prior to delivery

# Bond Futures Delivery

At end of contract, need to force futures to match cash market How to do this for our Ultra 10yr Note Futures TNZ8? (Dec delivery)

- Contract spec: Grade & Quality (language from grain contracts)

Original issue 10-Year U.S. Treasury notes with not less than 9 years 5 months and not more than 10 years of remaining term to maturity from first day of futures delivery month. The invoice price equals the futures settlement price times a conversion factor, plus accrued interest. The conversion factor is the price of the delivered note (\(1 par value) to yield 6 percent

TNZ8 Price 5-oct = 124.265625. Deliverable bonds:

<table><tr><td></td><td>Price at yld = 6%,1-dec-18</td><td>Cash price</td><td>“Futures”price</td></tr><tr><td>2.875s of 15-may-2028</td><td>77.695→.77695</td><td>98.40</td><td>96.548</td></tr><tr><td>2.875s of 15-aug-2028</td><td>77.253→.77253</td><td>98.33</td><td>96.000</td></tr><tr><td>5.50s of 15-aug-2028</td><td>96.352→.96352</td><td>120.27</td><td>119.732</td></tr></table>

List of bonds, convert quoted futures price into trading price for delivery

- Seller get to choose which one to deliver

Why don't "Futures" price and cash price match?

- cash is price today, futures price at delivery - turn to pricing next

# 1.3 Pricing

# Contents

# Pricing & Daily MtM

Futures price today: for delivery in future (maybe 1 month, maybe 3)

Daily MtM

- Every day, pay profit or loss  
- Ensures that losses don't get too big  
- Every morning, contract is PV zero - reset to zero

Tied down by price at delivery date - PV vs FV:

$$
P V = \frac {F V}{1 + y}
$$

Everybody says "Buy Futures" / "Sell Futures"

- But not buying or selling anything  
- Agreeing today to buy or sell in the future  
- Technically, "going long" or "going short"

# Forward and Futures Pricing

Agree today to sell (or buy) at  $P_{n}$

What is relation between "spot price"  $P_0$  and "forward price"  $P_n$ ?

Standard PV / FV relationship:

$$
P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}}
$$

$$
\begin{array}{l} P _ {0} = \$ 99; y = 2 \%; n = 1 \\ \Rightarrow P _ {n} = \$ 100.98 \\ \end{array}
$$

Agree today to sell at  $P_{n} = \$ 100.98$

In 1 yr, sell at $100.98, buy (with $100.98)

$P_{n}$  above $100.98 you lose,  

 - P_n below $100.98 you win

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/5f050a9aff099c2fcb628b089a90514c1498d3a2b984aa22e9fc38aa2947134c.jpg)

# Bond Futures Pricing - Accrued Interest

TNZ8 Price 5-oct = 124.265625. Why difference in cash & "futures" prices?

Price at yld  $= 6\%$

Cash price

"Futures"

1-dec-18

price

2.875s of 15-may-2028

77.695→.77695

98.40

96.548

2.875s of 15-aug-2028

77.253→.77253

98.33

96.000

5.50s of 15-aug-2028

96.352→.96352

120.27

119.732

5.50s of 15-aug-2028, 5-oct-18  $\rightarrow$  15-dec-18

$$
\begin{array}{l} S P + A I = \frac {F P + A I}{(1 + y) ^ {n}} \\ S P + A I = \$ 120.27 + 0.76 \\ y = 2.15\%; n = 71 / 365 \\ \Rightarrow F P + A I = \$ 121.51 \\ \Rightarrow F P = \$ 1 1 9. 7 1 \\ \end{array}
$$

We can always translate  $PV \leftrightarrow FV$

But we always need to look at either PV or FV

- Table above, comparing PV with FV  
- When compare FV with FV, one (or more) will match

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/c16c762393d36d96b79f3971a99463ec77a1521ea2e08750c4b3aca85173338e.jpg)

# Equity Futures Pricing - Dividends

e-mini ESH9 (mar 19) on 5-oct-18: 2902.75.

S&P index 2885.57  

- Standard PV / FV, but now must recognize dividends  
- Some CF disappears, paid out as dividends

5-oct-18  $\rightarrow$  15-mar-19, 161 days

- Now  $y$  is interest minus dividend

$$
S P = \frac {F P}{(1 + y) ^ {n}}
$$

$$
F P = 2 9 0 2. 7 5
$$

$$
\begin{array}{l} y = 2.15 - 0.80\%; n = 161 / 365 \\ \Rightarrow S P = 2 8 8 5. 6 \\ \end{array}
$$

We can always translate  $PV \leftrightarrow FV$

But we always need to look at either PV or FV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a83a40edec4b041535b8231252a7cca400cca1374230f8818d0cbb4d1f9a0b21.jpg)

# Wheat Futures Pricing - Cost of Storage

CBOT Soft Red Winter wheat, Mar 2019 for 5-oct-18 515.25c/bushel

- Standard PV / FV, but now must recognize cost of storage  
- Some value disappears, paid out to warehouse for storage, wastage as some goes bad

5-oct-18  $\rightarrow$  15-mar-19, 161 days

- Now y is interest minus cost of storage

$$
S P = \frac {F P}{(1 + y) ^ {n}}
$$

$$
F P = 5 1 5. 2 5
$$

$$
\begin{array}{l} y = 2.15 - 0.20%; n = 161 / 365 \\ \Rightarrow S P = 5 1 0. 8 8 \\ \end{array}
$$

We can always translate  $PV \leftrightarrow FV$

But we always need to look at either PV or FV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/3aa45ebe29baef6c0874194ae27b3c83df94a00b1fc33c2696838a57c7adb529.jpg)

# A Appendix - Supplement and Not Covered in Class - Risk-Neutral Valuation, Options, Callable Bonds

# A.1 Option Valuation Using Risk-Neutral Discounting

# Contents

Reminder: Two Ways for Risk Adjustment: Adjust CFs or Adjust Probabilities

CFs: Standard method, adjust CFs by  $1 / (1 + rp)$  for "risk-adjusted discounting" & risk premium

- We need to use Certainty Equivalent (CE) from Expected Utility  
- Risk-adjusted discounting at  $(1 + rf) \cdot (1 + rp)$

$$
E U = U (C E) = p \cdot u (C _ {o r i g} ^ {l o}) + (1 - p) \cdot u (C _ {o r i g} ^ {h i}) = u (p \cdot C _ {a d j} ^ {l o} + (1 - p) \cdot C _ {a d j} ^ {h i})
$$

$$
C E = p \cdot C _ {a d j} ^ {l o} + (1 - p) \cdot C _ {a d j} ^ {h i} \neq p \cdot C _ {o r i g} ^ {l o} + (1 - p) \cdot C _ {o r i g} ^ {h i}
$$

Probabilities: We could adjust probabilities for "risk-neutral discounting"

- Risk-neutral discounting at  $(1 + rf)$

$$
C E = p ^ {*} \cdot C _ {o r i g} ^ {l o} + (1 - p ^ {*}) \cdot C _ {o r i g} ^ {h i} \neq p \cdot C _ {o r i g} ^ {l o} + (1 - p) \cdot C _ {o r i g} ^ {h i}
$$

More complicated, but really useful for options

# Adjusting Probabilities (Risk-Neutral) Seems Complicated

Risk-Neutral: adjust the probabilities:

$$
E U = U \left(C E\right) = p \cdot u (C _ {o r i g} ^ {l o}) + (1 - p) \cdot u (C _ {o r i g} ^ {h i})
$$

$$
C E = p ^ {*} \cdot C _ {o r i g} ^ {l o r} + (1 - p ^ {*}) \cdot C _ {o r i g} ^ {h i}
$$

$$
P V = \frac {C E}{1 + r f} = \frac {p ^ {*} \cdot C _ {o r i g} ^ {l o} + (1 - p ^ {*}) \cdot C _ {o r i g} ^ {h i}}{(1 + r f)} = \frac {E _ {Q} [ C F ]}{(1 + r f)}
$$

We keep the original CFs

- Use market PV to back out  $E_{Q}[CF]$ : Expected CF under probability-adjusted (risk-neutral) dist'n  
Seems more complicated  
- Useful when we want to discount part of the distribution

To make concrete, Constant Relative Risk Aversion function:  $u(C) = \frac{C^{1 - \gamma}}{1 - \gamma}$ , with  $\gamma = 8$

# Options - Using Risk-Neutral & Distribution

Usually risk-adjusted discounting (risk premium) more useful

- Can ignore full distribution  
- Use just expected or promised CF

For options, need full distribution

- Back out risk-adjusted ("risk-neutral") probability dist'n using market PV:  $PV = \frac{E_Q[CF]}{(1 + rf)}$  
- Whole point of an option: you get part of the distribution  
- Option: discount only part of the distribution

These are some very deep ideas in finance

# A.2 Equity Option Terms & Valuation

# Contents

# Section on options

before valuation

1. Terms - one slide already done  
2. Better explanation of pay-off (hockey-stick)
3. Examples

(a) FIS, IBM  
(b) Put & Call  
(c) Short maturity & long maturity

4. How option value changes when change

(a) Underlier  
(b) Volatility  
(c) Put vs Call

5. Option delta - derivative, analogue to BPV for bond.

Option to Buy (or Sell) - Option not Obligation FIS stock on Friday (11-may-18) was trading at  $104.89 Option to buy on 18-may for$ 105, trading at $0.80 Option Terminology:

- Underlier: What the option is written on  
- Call vs Put: Buy vs Sell (this is a Call)  
- Expiry: date to buy or sell (18-may, 7 days away)  
 - Strike: price ($105)

P > $105: buy at $105, sell at P, profit P-105t

P < $105: do nothing

- You can only win with an option  
- Must pay for that privilege

May 18 $105 call was $0.80

# Use Distribution to Value FIS May 18 $105 Equity Call

FIS today (May 11th) $104.89  

- Expiry May 18, in 7 days .019yr  
 - Strike $105: valuable if P>105

# For valuation we:

1. Back out average forward price (on May 18) from today's price  
2. Get some estimate / assumption for volatility (spread) of price distribution  
3. Get our option CFs and average - in this case  $E\left\lbrack  {P - {105} \mid  P > {105}}\right\rbrack$  
4. Discount back at risk-free rate

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/e9f9c043f41f1496f878948e3292aa91bb33fbebfe09957b17f302cd1a67e4f3.jpg)

- Assume volatility  $\sigma = 14.5\%$  
- $\mathrm{rf} = 1.50\%$ cc  
 - Today's Price: P = 104.89 => fwd price = $104.92  
- Fwd Price:  $PV = \frac{FP}{1 + rf}$ , here  $1 + rf = \exp(y \cdot t) = \exp(.015 \cdot .01918) = 1.000288$ .

# A.3 Black Scholes Formula - Simple Expectation

# Contents

# Black Scholes Formula - Simple Expectation

Taking Expectation (averaging) described by picture

- Integrate over (take expectation) only the upper tail

$$
C a l l = E \left[ \left(S _ {T} - X\right) \mid S _ {T} > X \right] = \int_ {S = X} ^ {S = \infty} \left(S _ {T} - X\right) \varphi \left(S _ {T}\right) d S _ {T}
$$

This gives Black-Scholes formula

$$
\begin{array}{l} C a l l = N \left(d _ {1}\right) \cdot S _ {T} \cdot e x p (- r T) \\ - N (d _ {2}) \cdot X \cdot e x p (- r T) \\ \end{array}
$$

$$
\begin{array}{l} d _ {1} = \frac {1}{\sigma \sqrt {T}} \left[ \ln \left(\frac {S _ {T}}{X}\right) + \frac {\sigma^ {2} T}{2} \right] \\ d _ {2} = d _ {1} - \sigma \sqrt {T} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/8876045e6315f70b0a8def233f4d6897b4f128142c1d9540e94b248c5c4fbe63.jpg)

# Calculation with Spread-Sheet and HP 17B app

Spread-sheet on Canvas (Saved with data for problem set)

Black fwd

12-May-18 Today

11-May-18 Date entered (if empty will use date above)  
11-May-18 Today

Years to expiry (if empty will use date below)

18-May-18 Date (if years empty)  
18-May-18 Expires

104.92 Forward

105 Strike

14.5% Vol input  
1.50% Short rate (cc)

0.02

Ewd used  
Call  
Delta  
Put

HP 17B App - BSCH menu (under Finance)

<table><tr><td></td><td>Stock</td><td>Strike</td><td>#Days</td><td>DIV%</td><td>VOL%</td><td>R.F.%</td><td>CALL</td></tr><tr><td>Given</td><td>104.89</td><td>105</td><td>7</td><td>0</td><td>14.5</td><td>1.5</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.801</td></tr></table>

# A.4 Application - Callable Bonds

# Contents

# Callable Bond - Firm can Redeem (Call) at $100

Example: BAC (Bank of America Bond)

- $4.7\%$  coupon, annual 30/360  
- Maturing 1-sep-2045  
- Callable at 100 starting 1-sep-2018

"Callable" means BAC can redeem for $100

- Price today (19-feb-2016) $95.80  
- Price 1-sep-18 may be  $>100$  or  $< 100$  
- If  $\mathrm{P} < 100$ , BAC does nothing - no extra profit  
 - If P>100, BAC can redeem (give $100) - extra profit P-100  
- Extra profit is OPTION: CF = P-100 when P>100

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b1467d5532e609880f349a4d3ccb8b195e565da5ad4b56b3a4f123cf63d7e7c2.jpg)

- What is value to investor at  $9 / 18$ ?  
- P<100:  $\mathrm{P_{nc}}$  
$\mathrm{P} > 100$  ..  $\mathrm{P_{nc} - (P - 100)}$  
- $\mathrm{P_c} = \mathrm{P_{nc}} - \mathrm{Call}$

From Bank of America's perspective, the call feature is a call option: if bond price  $< 100$  then no extra profit (but no loss) while if  $\mathrm{P} > 100$  BAC gets extra profit, P-100

- We can think of the callable bond as a package of a non-callable bond (what we have been dealing with) and a call option  
- Bank of America owns the option (has the right to redeem, has bought the option) and the investors are short the option (have sold the option)  
- Bank of America will have to pay for this option. This makes the bond value lower:

$$
P _ {c} = P _ {n c} - C a l l
$$

- BAC has bought the option - paid a fee by borrowing less money than they would have by issuing a bond with the same coupon but non-callable  
- Investors have sold the option - received a fee by lending less money than they would have for a non-callable bond with the same coupon

# Yield-to-Maturity Doesn't Work

We want the yield for this bond (how much we earn): P=\(95.80 on 19-feb-16 But does it go to Call date or Maturity date?

- Maturity (1-sep-2045) y=4.972%ab  
- Call (1-sep-2018) y=6.536%ab

But neither is right. CFs beyond Sep 2018 are uncertain – not because of default but because of option

- But we know that  $P_{c} = P_{nc} - Call$  
- We know how to value standard  $P_{nc}$  
- And we just learned how to value Call

The relation that the callable bond is the package of non-callable less call option holds at the expiration date and every date before.

So the bond price today is

$$
P _ {c} = P _ {n c} - C a l l
$$

Now we need to value the callable bond. But we know exactly how to do that: simply use the Black-Scholes option formula

# Valuing a Callable Bond - 19-feb-2016

With Callable bonds, need to adjust for Option Value:  $P_{c} = P_{nc} - Call$

BAC  $4.7\%$  ann 30/360 bond of 1-sep-2045  

- $\mathrm{B_0}$  (19-feb-16)  $= 95.80$  yld to mat  $= 4.972\%$

Valuation requires that we:

- Back out forward price  $\mathrm{B_T}$  (price 1-sep-18) from today's price  
- Get some estimate / assumption for volatility (spread) of price distribution  
Average over CFs:  $[P - 100\mid P > 100]$  
Discount back

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/1a0c4b7638a395baeb25a09103dd499c7e3b098ef8cb493e0b4ed4cf4280f802.jpg)

How do we get fwd prc  $\mathrm{B_T}$ ?

Bond as of 9/18, mat 9/45, y=4.972%ab  
 \(B_T = \\(96.005\)

Black-Scholes Valuation

- Use ytm=4.972% to get  $\mathrm{B_T} = 96.01$  
- Then use  $13.5\%$  vol (reasonable)  
- "Short Rate"  $4.85\%$ cc  $(= 4.72\%)$ ab  
- Option = 5.779  
- $P_{c} = P_{nc} - Call = 95.80 - 5.781 = 90.02$

13-May-18 Today

19-Feb-16 Date entered (if empty will use date above)

19-Feb-16 Today

Years to expiry (if empty will use date below)

1-Sep-18 Date (if years empty)

1-Sep-18 Expires

96.005 Forward

100 Strike

13.5% Vol input

4.85% Short rate (cc)

Dividend rate

2.53

96.005 Fwd used

5.779 Call

41.3% Delta

9.313 Put

<table><tr><td>Yield</td><td>P non-call</td><td>P forward</td><td>Call</td><td>P callable</td><td>Spread</td></tr><tr><td>4.970%</td><td>95.80</td><td>96.005</td><td>5.779</td><td>90.02</td><td>236bp</td></tr></table>

Note: there is no easy way to do this bond option on the HP calculator. The reason is that the HP formula takes in the spot price (price today) and calculates the forward price.

- Forward formula (you calculate the forward price and put it into the formula). This is also called the Black Forward version

Forward Formula:  $Call = N(d_{1})\cdot S_{T}\cdot exp(-rT) - N(d_{2})\cdot X\cdot exp(-rT)$

$$
d _ {1} = \frac {1}{\sigma \sqrt {T}} \left[ l n \left(\frac {S _ {T}}{X}\right) + \frac {\sigma^ {2} T}{2} \right] d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

- Spot formula (you put in the spot price for the underlier and then it calculates the forward price by forward valuing:  $S_{T} = S_{0} \cdot \exp(rT)$  or  $S_{0} = S_{T} \cdot \exp(-rT)$

#

Spot Formula:  $Call = N(d_{1})\cdot S_{0} - N(d_{2})\cdot X\cdot \exp (-rT)$

$$
d _ {1} = \frac {1}{\sigma \sqrt {T}} \left[ l n \left(\frac {S _ {0}}{X}\right) + r T + \frac {\sigma^ {2} T}{2} \right] d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

You can use the calculator but you have to calculate the spot (stock) price that the calculator needs to produce a forward price of 96.01: \( S_0 = S_T \cdot \exp(-rT) = 96.01 \cdot \exp(-.0485 \cdot 2.53) = 84.923 \). This is completely different from the actual spot price of the bond (\(95.80) because there are coupons that the forward pricing formula \( S_0 = S_T \cdot \exp(-rT) \) does not take into account.

<table><tr><td></td><td>Stock</td><td>Strike</td><td>#Days</td><td>DIV%</td><td>VOL%</td><td>R.F.%</td><td>CALL</td></tr><tr><td>Given</td><td>84.923</td><td>100</td><td>924</td><td>0</td><td>13.5</td><td>4.85</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td></td><td>5.784</td></tr></table>

# Yield-to-Maturity Too High For Callable

Want to use same yield for non-callable and Call Option:  $P_{c}(y) = P_{nc}(y) - Call(y)$

But. numbers do not work with 4.972% ab

- Then use  $13.5\%$  vol (reasonable)  
- Option = 5.779  
- $P_{c} = P_{nc} - Call = 95.80 - 5.779 = 90.02$  
- NOT the market price of 95.80

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/119e2b1ec7735817e3140d541167a79b7c6a9c3a6e9cb42080a49eb8de2492e1.jpg)

<table><tr><td>Yield</td><td>P non-call</td><td>P forward</td><td>Call</td><td>P callable</td><td>Spread</td></tr><tr><td>4.970%</td><td>95.80</td><td>96.005</td><td>5.779</td><td>90.02</td><td>236bp</td></tr></table>

Option Valuation:  $P_{c}(4.97\%) = P_{nc}(4.97\%) - Call(4.97\%) = 95.80 - 5.779 = 90.02$

Market:  $P_{c} = 95.80$

# Calculating Option-Adjusted Yield

Yield for standard bond: discount rate or what we earn holding to maturity

- Solve for  $y$ :  $P(y) = \frac{coup}{1 + y} + \dots + \frac{100}{(1 + y)^n} = P_{market}$ .

Yield for callable bond: what we earn holding to ??

- Solve for  $y$ :  $P_{c}(y) = P_{nc}(y) - Call(y) = P_{market}$  
- This is now an option-adjusted yield - accounts for uncertain CFs

For callable, we earn less. Using standard ytm overstates what we earn

- Try lower yields until  $P_{c}(y^{*}) = P_{nc}(y^{*}) - \text{Call}(y^{*}) = P_{\text{market}}$  
- Problem set: you solve for  $y^{*} - 4.50\%$  guess not low enough

<table><tr><td>Yield</td><td>P non-call</td><td>P forward</td><td>Call</td><td>P callable</td><td>Spread</td></tr><tr><td>4.970%</td><td>95.80</td><td>96.005</td><td>5.779</td><td>90.02</td><td>236bp</td></tr><tr><td>4.500%</td><td>103.207</td><td>103.090</td><td>9.230</td><td>93.977</td><td>189bp</td></tr></table>

For a standard bond we solve for the yield-to-maturity from the simple discounting formula

- Solve for  $y$ :  $P(y) = \frac{coup}{1 + y} + \dots + \frac{100}{(1 + y)^n} = P_{market}$ .

For a callable bond we need to recognize that it is a package of a regular non-callable bond (using the simple discounting formula) minus the callable bond.

- Solve for  $y^{*}$ :  $P_{c}(y^{*}) = P_{nc}(y^{*}) - Call(y^{*}) = P_{market}$

We need to find the yield which satisfies this equation, and there is no easy way to do it except by trial-and-error.

# Discussion of Option-Adjusted Yield for Risky Bonds

For a callable bond the idea is that we solve for  $y^{*}$  that solves:

$$
P _ {c} (y ^ {*}) = P _ {n c} (y ^ {*}) - C a l l (y ^ {*}) = P _ {m a r k e t}
$$

This is all fine for a government bond where the discount rate is the risk-free rate. But for the BAC bond that is not the case. In fact, one reason we want to calculate the option-adjusted yield for the BAC bond is to correctly measure the risk premium – the spread between the government (risk-free) rate and the BAC yield after adjusting for the option part of the BAC bond.

The problem is that option valuation is based on discounting at the risk-free rate. We need to do the option part at the risk-free rate  $rf$  and not the option-adjusted (risk premium) yield  $y^{*}$ . Basically, we should be using:

$$
P _ {c} (y ^ {*}) = P _ {n c} (y ^ {*}) - C a l l (r f) = P _ {m a r k e t}
$$

Conceptually this is OK - we know from the US Treasury (3% of 15-nov-45) that the risk-free yield on 19-feb-16 is  $2.61\%$  ab. Our challenge is to calculate the forward price of the BAC bond given the risk-free rate of  $2.61\%$  ab. We don't really have an easy way to do this. You can use the forward pricing screen on Bloomberg. Alternatively you can use the BOND menu on the HP

- Pricing for settle date 19-feb-16, maturity 1-sep-2018  
- put in a "Call" equal to a guess for the forward bond price  
- price the bond at yield of  $2.61\% \mathrm{ab}$  - this will now account for all the coupons between 19-feb-16 and 1-sep-18  
- adjust the "Call" up and down until the "Price" is equal to the desired bond price

As an example, let's look at:

- $y^{*} = 4.50\%$  ab which means spot price (settle 19-feb-2016, maturity 1-sep-2045) is 103.207  
- The HP BOND menu for doing the forward pricing (settle 19-feb-2016, maturity 1-sep-2018, call 98.038) is:

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>CALL</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>360 Ann</td><td>2.192016</td><td>9.012018</td><td>4.7</td><td>98.038</td><td>2.61</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td></td><td>103.2056</td></tr></table>

This produces the desired spot price (or close enough, 103.2056) so a forward price of 98.038 is the spot price given by the risk-free rate (from 19-feb-2016 to 1-sep-2018) of  $2.61\%$  ab.

Now we can calculate the Black-Scholes option price, using as the "short rate" the UST yield of  $2.61\% \mathrm{ab}$  (2.58%cc).

<table><tr><td>Yield (ab)</td><td>P non-callable</td><td>Forward Bond</td><td>Fwd Yld (ab)</td><td>Call Option</td><td>P callable</td><td>Sprd to UST</td></tr><tr><td>4.972%</td><td>95.800</td><td>90.132</td><td>5.403%</td><td>3.865</td><td>91.935</td><td>236bp</td></tr><tr><td>4.500%</td><td>103.207</td><td>98.038</td><td>4.493%</td><td>7.050</td><td>96.157</td><td>189bp</td></tr></table>

Option Pricing For BAC bond using risk-free rate of  $2.61\%$ ab to calculate forward price

13-May-18 Today  
19-Feb-16 Date entered (if empty will use date above)  
19-Feb-16 Today  
Years to expiry (if empty will use date below)  
1-Sep-18 Date (if years empty)  
1-Sep-18 Expires  
98.038 Forward  
100 Strike  
13.5% Vol input  
2.58% Short rate (cc)  
Dividend rate  
2.53 T  
98.038 Fwd used  
7.050 Call  
47.4% Delta  
8.888 Put

Option Pricing For BAC bond using risk-free rate of  $2.61\%$ ab to calculate forward price

If we go through this laborious process we will get an answer not too far from Bloomberg. (Note that  $4.500\% \mathrm{ab}$  is not too far off - the Pc is 96.157, slightly higher than the market price of $95.80, meaning that the yield of  $4.50\% \mathrm{ab}$  is too low.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/14c954cd8ebb310dbf956b006fcc237697ca14e5da1e66803842149be7e0be32.jpg)

# Bloomberg OAS for BAC

Option-Adjusted Yield Gives Risk Premium

Yield-to-Maturity  $= 4.972\%$  ab, spread  $= 236\mathrm{bp}$

Option-Adjusted-Yield (Bloomberg)  $= 4.48\%$  ab, spread  $= 187$  bp

For callable, we earn less. Using standard ytm overstates what we earn

But we have again used the market to back out the risk premium

# References

# Introduction to Derivatives - Swaps


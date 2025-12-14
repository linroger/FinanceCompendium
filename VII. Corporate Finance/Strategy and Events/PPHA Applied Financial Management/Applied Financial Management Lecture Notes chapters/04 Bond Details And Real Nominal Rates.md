---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Outline
linter-yaml-title-alias: Outline
---

Lecture 4

Thomas S. Coleman

29 March 2023; Draft April 3, 2023

# Outline

# Contents

# 1 Bonds - Details for Actual US Treasury Bonds 2

1.1 Non-Coupon Date: Accrued Interest, Clean vs Dirty Price 2  
1.2 HP 17B BOND Menu 4  
1.3 Various Bonds & Conventions 7  
1.4 Periodic Payments & Compounding 12

# 2 Real & Nominal Rates 17

2.1 Unpacking the Budget Line Part II: Real & Nominal Rates 17  
2.2 TIPS - Treasury Inflation Protected Securities 20  
2.3 More About Real & Nominal 21  
2.4 Changes 2016-2023 24

# 1 Bonds - Details for Actual US Treasury Bonds

# 1.1 Non-Coupon Date: Accrued Interest, Clean vs Dirty Price Contents

# Partial Period: PV Rises as CFs Come Closer

- Our  $6.5\%$  coupon bond, price  $\$ 99.658$ . Exactly 4yrs to maturity  
- What happens 73 days later, when it is 3yrs 292 days to maturity?  
- Exact 4-yr (on coupon date): yield  $= 6.60\% \leftrightarrow \mathrm{PV} = 99.658$  
- Shorter: 73 days (0.2yrs) later: yield  $= 6.60\% \rightarrow \mathrm{PV} = 100.940$

$$
9 9. 6 5 8 = \frac {6 . 5}{(1 + . 0 6 6) ^ {1}} + \frac {6 . 5}{(1 + . 0 6 6) ^ {2}} + \dots + \frac {1 0 0}{(1 + . 0 6 6) ^ {4}}
$$

$$
1 0 0. 9 4 0 = \frac {6 . 5}{(1 + . 0 6 6) ^ {. 8}} + \frac {6 . 5}{(1 + . 0 6 6) ^ {1 . 8}} + \dots + \frac {1 0 0}{(1 + . 0 6 6) ^ {3 . 8}}
$$

- Exact 4-yr (on coupon date): PV=99.658, yield=6.60%  
- Shorter: 73 days (0.2yrs) later:  $\mathrm{PV} = 100.940$ , yield  $= 6.60\%$

Something wrong: yield is still  $6.60\%$ , price shouldn't go up by $1.28

- Reason: coupon is 0.2yrs closer, we've earned 0.2 of that coupon  
- Solution: calculate how much we've "earned":  $0.2^{*}6.5 = \$ 1.30$  
- Subtract out that "accrued interest": get  $100.94 - 1.30 = 99.64$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d9e2e7bd18402885b0592113b8d50c54417552e69c1794b709162ad13e3d33bd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/13e3d731380eaac6a853c1f793140eb0a7f5a5c0c8bf5a3fb61dcca34b2240d9.jpg)

# Bond PV Off Coupon Date & Sawtooth

As move closer to next coupon, PV goes up: sawtooth pattern

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ddd2f1409f973033d61e00dd38a8b068657f55570182adcc2a4b2ea308e57a01.jpg)  
Figure 3.3 - PV versus Maturity for a Four Year  $6.5\%$  Coupon Bond with  $6.5\%$  Yield

- Underlying market value not changed - just "earning" coupon  
- Obscures underlying "value" - partly reflects earning past coupon  
- If I buy after 0.2yrs, I pay "extra" because I get full coupon but hold for  $80\%$  not  $100\%$  of period

# Dirty Price, Clean Price, Accrued Interest

Solution - split PV ("Dirty Price") into two parts:

- "Accrued Interest": the fraction of the next coupon earned in past

$$
- \$ 1.30 = 0.2 ^ {*} \$ 6.5
$$

- "Clean Price": the price after adjusting: CleanP = DirtyP - AI

In this case, 0.2 of coupon period (0.2yrs) has passed

- CleanP = DirtyP - 0.2*6.5  
- ${99.64} = {100.94} - {1.30}$

This "Accrued Interest" is what we've accrued because we've held the bond, and earned interest. The "extra" I pay to seller because I get full coupon when paid

But it's not really part of the "market price" - what is quoted in the market

# 1.2 HP 17B BOND Menu

# Contents

# HP 17B BOND Menu and Bond Calculations

The HP calculator (any bond calculator) knows Clean, Dirty, Accrued:

- Blue <MAIN> <FIN> <BOND> <TYPE A/A Ann>  
- You put in Clean Price (the newspaper quote) or yield  
HP calculates AI  
- Uses DP = CP + AI in yield calculations

Full 4 years (23-mar-2018  $\rightarrow$  23-mar-2022)

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A Ann</td><td>3.232018</td><td>3.232022</td><td>6.5</td><td>6.60</td><td></td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>99.658</td><td>0</td></tr></table>

73 days or 0.2yrs later (on 4-jun-2018):  $\mathrm{PV} = \mathrm{CP} + \mathrm{AI} = 100.94$

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A Ann</td><td>6.042018</td><td>3.232022</td><td>6.5</td><td>6.60</td><td></td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>99.64</td><td>1.30</td></tr></table>

Clean Price - what people talk about (the market price)

Dirty Price - what you actually pay

# Bond Menu for UST

Look at some actual bonds: 2.255 of 15-nov-2025 (back in 2015 & 2016)

# THE WALL STREET JOURNAL

U.S. EDITION 1:39 p.m. EST Thursday, January 7, 2016

Home World U.S. Politics Economy Business Tech Markets Opinion

# MARKET DATA CENTER

Market Data U.S. Stocks International ETFs Mutual Funds Bonds, Rates &

Home O.C. Stocks Markets LFTC Market Funds Credit Markets

# U.S. Treasury Quotes

# TREASURY NOTES & BONDS

# GO TO: Bills

Wednesday, January 06, 2016 Find Historical Data WHAT'S THIS?

Treasury note and bond data are representative over-the-counter quotations as of 3pm Eastern time. For notes and bonds callable prior to maturity, yields are computed to the earliest call date for issues quoted above par and to the maturity date for issues below par.

<table><tr><td>Maturity</td><td>Coupon</td><td>Bid</td><td>Asked</td><td>Chg</td><td>Asked yield</td></tr><tr><td>1/15/2016</td><td>0.375</td><td>99.9688</td><td>99.9844</td><td>-0.0469</td><td>1.095</td></tr><tr><td>1/31/2016</td><td>0.375</td><td>99.9844</td><td>100.0000</td><td>-0.0469</td><td>0.375</td></tr><tr><td>1/31/2016</td><td>2.000</td><td>100.0859</td><td>100.1016</td><td>-0.0547</td><td>0.439</td></tr><tr><td>2/15/2016</td><td>0.375</td><td>99.9844</td><td>100.0000</td><td>-0.0469</td><td>0.375</td></tr><tr><td>2/15/2016</td><td>4.500</td><td>100.4219</td><td>100.4375</td><td>-0.0547</td><td>0.364</td></tr><tr><td>2/15/2016</td><td>9.250</td><td>100.8828</td><td>100.8984</td><td>-0.0781</td><td>0.740</td></tr><tr><td>2/29/2016</td><td>0.250</td><td>99.9844</td><td>100.0000</td><td>-0.0313</td><td>0.250</td></tr><tr><td>2/29/2016</td><td>2.125</td><td>100.2500</td><td>100.2656</td><td>-0.0469</td><td>0.298</td></tr><tr><td>2/29/2016</td><td>2.625</td><td>100.3125</td><td>100.3281</td><td>-0.0391</td><td>0.367</td></tr></table>

<table><tr><td>2/15/2025</td><td>2.000</td><td>98.6719</td><td>98.6875</td><td>0.5781</td><td>2.159</td></tr><tr><td>2/15/2025</td><td>7.625</td><td>145.6406</td><td>145.6563</td><td>0.7656</td><td>2.092</td></tr><tr><td>5/15/2025</td><td>2.125</td><td>99.6016</td><td>99.6172</td><td>0.5859</td><td>2.170</td></tr><tr><td>8/15/2025</td><td>2.000</td><td>98.4297</td><td>98.4453</td><td>0.6250</td><td>2.180</td></tr><tr><td>8/15/2025</td><td>6.875</td><td>141.0156</td><td>141.0313</td><td>0.7109</td><td>2.129</td></tr><tr><td>11/15/2025</td><td>2.250</td><td>100.6328</td><td>100.6484</td><td>0.6328</td><td>2.176</td></tr><tr><td>2/15/2026</td><td>6.000</td><td>134.5156</td><td>134.5313</td><td>0.7266</td><td>2.175</td></tr><tr><td>8/15/2026</td><td>6.750</td><td>142.8125</td><td>142.8281</td><td>0.8359</td><td>2.200</td></tr><tr><td>11/15/2026</td><td>6.500</td><td>140.9922</td><td>141.0547</td><td>0.7891</td><td>2.222</td></tr><tr><td>2/15/2027</td><td>6.625</td><td>142.9531</td><td>142.9688</td><td>0.8750</td><td>2.234</td></tr><tr><td>8/15/2027</td><td>6.375</td><td>141.6719</td><td>141.7344</td><td>0.9453</td><td>2.265</td></tr><tr><td>11/15/2027</td><td>6.125</td><td>139.6563</td><td>139.7188</td><td>0.9219</td><td>2.282</td></tr><tr><td>8/15/2028</td><td>5.500</td><td>134.2578</td><td>134.3203</td><td>0.9609</td><td>2.340</td></tr><tr><td>11/15/2028</td><td>5.250</td><td>131.8438</td><td>131.9063</td><td>0.9609</td><td>2.358</td></tr></table>

# 2.25% of 15-nov-2025 on 31-dec-2015

CF diagram is the same:

- N - no periods  
- I%YR - yield (discount)  
PV-price  
- PMT - periodic payment  
FV - principal repayment

Now N is fraction: 9.874yrs

Bond menu builds in the date calculations to calculate the fractions

<table><tr><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td></td><td colspan="2">Uses to calculate N</td><td>PMT</td><td>I%YR</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d08b99bd9fa6c63756c8445ffe0a024469bb06e72d2e980f86e15bc811eb35f2.jpg)

# In-Class Exercise 1: 2.25 of 15-nov-2025 on 31-dec-2015

UST  $2.5\%$  of 15-nov-2025, price on 31-dec-15 is 99.84375

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A semi</td><td>12.312015</td><td>11.152025</td><td>2.25</td><td></td><td>99.84375</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>2.268</td><td></td><td>0.284</td></tr></table>

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN BOND TYPE</td><td></td><td>Accesses BOND menu setup</td></tr><tr><td>A/A SEMI EXIT</td><td>A/A …</td><td>Sets payments per year</td></tr><tr><td>12.312015</td><td>12/31/2015 THU</td><td>Sets settle (&quot;today&quot;)</td></tr><tr><td>11.152025</td><td>11/15/2025 SAT</td><td>Sets maturity</td></tr><tr><td>2.25 CPN%</td><td>CPN%=2.25</td><td>Sets coupon (per yr)</td></tr><tr><td>100 CALL</td><td>CALL=100.0</td><td>Sets principal (redemption)</td></tr><tr><td>99.84375 PRICE</td><td>PRICE=99.84375</td><td>Sets price</td></tr><tr><td>YIELD</td><td>YIELD=2.2676</td><td>Calculates YIELD</td></tr></table>

15-nov-15  $\rightarrow$  15-may-16  $= 182$  days

$$
- \quad \text {l e a p - y r}
$$

- 15-nov-15→31-dec-15 = 46 days

$$
- 4 6 / 1 8 2 = 0. 2 5 2 7 \text {h a l f - y r s}
$$

Accrued Int  $= \frac{2.25}{2} \cdot 0.2527 = 0.2843$

31-dec-15  $\rightarrow$  15-may-16  $= 136$  days

$$
- 1 3 6 / 1 8 2 = 0. 7 4 7 2 5 \text {h a l f - y r s}
$$

- N is 9.874yrs

$$
- 1 9 + 0. 7 4 7 2 5 \text {h a l f - y r s}
$$

Bond menu builds in the date calculations to calculate the fractions

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/9400b89ff3a3b1ad7441ff6c29c947103b6612d0acc67b5be6ec401746bc70c4.jpg)

# In-Class Exercise 2: 2.25 of 15-nov-2025 on 6-jan-2016

UST  $2.5\%$  of 15-nov-2025, yield on 6-jan-2016 is  $2.1764\%$

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A semi</td><td>1.062016</td><td>11.152025</td><td>2.25</td><td>2.1764</td><td></td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>100.6485</td><td>0.321</td></tr></table>

- Yield down (2.268% ↓ 2.1764) so price up (99.84375 ↑ 100.6485)  
Accrued Interest (AI) up because time has passed ( $0.284 ↑$ 0.321)

Screen-shot from WSJ shows price 100.6484. Why different?

- Secret: price quoted on 6-jan-2016 settled on 7-jan-2016 - UST are  $T + 1$  
- Should set Settle = 7-jan-2016,  
- But in all our problems, pretend Settle = Quote

# 1.3 Various Bonds & Conventions

# Contents

Dates, Fractional Years, and Accrued Int Conventions

- Remember back to exact 4yr vs 73 days shorter (3.8yr)  
- Need "Fraction of a year" for both discounting and AI (DP = CP + AI)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b3742f2e86d6cd2ffbadb8b30c618847d5ee09caeee8159a2ef0ef23f8b04464.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/816f6ca34cba6aba1415b13b0d462b5be3d0d31601c839b04f0a624f249c59f3.jpg)

$$
1 0 0. 9 4 0 = \frac {6 . 5}{(1 + . 0 6 6) ^ {. 8}} + \frac {6 . 5}{(1 + . 0 6 6) ^ {1 . 8}} + \dots + \frac {1 0 0}{(1 + . 0 6 6) ^ {3 . 8}}
$$

$$
A I = 0. 2 * 6. 5 0 * 1. 3 0 1 0 0. 9 4 0 = 9 9. 6 4 0 + 1. 3 0 0
$$

Calendars are Messy - Choose a "Convention"

"Fraction of a year" should be simple but it's not

- 4yr bond: 73 days seems like  $0.20\mathrm{yr}$  (73/365).  
- But what if the year is a leap-year? 0.20yr or 0.19945yr  $(\frac{73}{366})$ ?  
- UST: is half-year 182.5days? Actual days?
- 15-now-15→15-may-16 = 182 days  
- 15-may-16→15-nov-16 = 184 days

Before computers, calculating dates very difficult (with computers still difficult - I know, I've done it multiple times)

- Different markets agreed different "Conventions"  
- Rules for how to count days, define year-fractions, calculate AI  
- A little arbitrary, but fine as long as everyone knows rules

# Accrued Interest Conventions (Arbitrary Rules)

Bonds have different Accrued Interest conventions (Calendar & Frequency)

Natural - Actual / Actual:

$$
A / A = \frac {\text {A c t u a l D a y s S i n c e L a s t C o u p o n}}{\text {D a y s B e t w e e n C o u p o n D a t e s}}
$$

But date calculations messy (before calculators)

- Fun fact: was 1900 a leap year?  
- NO, but Excel on PCs thinks yes, and so dates around Jan & Feb 1900 messed up

Many bonds - 30/360 - 30 days per month, 360 per year:

$$
3 0 / 3 6 0 = \frac {\# 3 0 - d a y m o n t h s}{1 8 0 o r 3 6 0}
$$

- Sounds complicated, but easy: 15-feb -> 25-jun is 130:  $4^{*}30 + 10$

# Some Bond Conventions (Calendar or Basis)

- UST: Act/Act or "Actual", Semiannual  
US Corporates: 30/360, Semiannual  
- French Gov't: Act/Act, Annual

HP calculator handles dates for you

- "BOND" menu: Act/Act or 30/360  
- "TIME" menu: Act/Act or 30/360 or Act/365 fixed (ignore leap-year)

Oh, and 30E/360 and Act/365fixed

- These sound arbitrary, and they (sort-of) are  
- But just rules, to go from DP  $\rightarrow$  Yield & DP  $\rightarrow$  CP+AI

# Dirty Price, Clean Price, and Accrued Interest

So far we have worked mostly with bonds with exact years; e.g. a bond which is exactly four years from maturity. What happens a few days later when it is no longer exactly four years from maturity? We then make a simple modification to arrive at equation (3.3) which discounts by the fraction of the period to the next coupon:

$$
P V = \frac {c o u p}{(1 + y) ^ {1}} + \frac {c o u p}{(1 + y) ^ {2}} + \dots + \frac {1 0 0}{(1 + y) ^ {4}}
$$

where

$\mathbf{PV} =$  Present Value (today's value)

$\mathbf{y} =$  yield or interest rate or discount rate

$\mathbf{x} =$  fraction of period to next coupon payment date

The next coupon of \(6.50 is a fraction x of a year away (say 292 days away which would be 0.8 of a year away). We discount by this fraction of a period rather than the whole period.

The equation works perfectly fine, but there is a slight problem which appears when we graph the PV as a function of maturity, shown in the figure above. For a four year bond with a  $6.5\%$  coupon and a  $6.5\%$  yield and exactly four years to go the PV is $100. As we move into a coupon

period and the maturity shortens, however, the PV rises. This is simply because we have earned or accrued part of the coupon, and the next coupon is moving closer. (With only a few days until the next coupon payment we have owned the bond for almost the whole coupon period and thus "earned" almost the whole coupon.) After the coupon is paid, of course, the PV falls back down to $100. This saw-tooth pattern, while correct, obscures the fact that the market has not really changed and in some sense the market value of the bond has not changed; we have simply accrued part of the coupon by owning it for part of the coupon period.

The bond markets adjust for this effect by the convention of calculating Accrued Interest (AI). This is defined as

AI = Next Coupon Payment * (Fraction of Period from Last Coupon)

The Clean Price of the bond is defined as the PV or Dirty Price less the Accrued Interest:

Clean Price  $=$  Dirty Price-AI

The Clean Price for the four year  $6.5\%$  bond is shown in figure 3.3; it is a straight line at $100.

The TVM menu on the HP17B will handle only exact coupon periods and so will not work for a bond except when it is an exact number of years to maturity. The BOND menu is specially designed for use with bonds, and has yield / price calculations and accrued interest built in.

NB: the better way to adjust would be to use

PV(Next Coupon Payment) * (Fraction of Period from Last Coupon)

but that would be more complicated then we need. The bond calculator takes in the clean price, calculates the Accrued Interest, and then does the yield calculation on the actual PV (dirty price). We know that we need to compare yields and not prices, and so a slight "error" in the clean price is fine - the calculator actually uses the dirty price or PV.

We can see the slight error in the example above. The price at exactly four years is $99.658 or below par ($100). As time marches on (with no change in value) we need to move up towards $100. The "correct" CP shows this – it is $99.73 or slightly higher than $99.658. The market CP is $99.64, slightly lower than $99.658. But this is OK because the yield calculation (which is what we care about) uses the dirty price.

# Accrued Interest Conventions

There are various ways that we can calculate the "Fraction of the coupon period". The main methods are:

1. Actual / Actual:

$$
A / A = \frac {\text {A c t u a l D a y s S i n c e L a s t C o u p o n}}{\text {D a y s B e t w e e n C o u p o n D a t e s}}
$$

2. 30/360:

$$
3 0 / 3 6 0 = \frac {\text {C o u n t E a c h M o n t h 3 0 , P l u s D a y s}}{1 8 0 \text {o r} 3 6 0}
$$

This seems complicated but is acutely pretty simple. Count the number of months and multiply by 30 (30 days each month). Then take the extra days. Ignore the 31st. This means the number of  $\frac{30}{360}$  days from 15-feb to 25-jun are 130: four months  $\frac{15 - feb}{- > }$  15-jun (120 days) plus 10 days  $\frac{15 - jun}{- > }$  25-jun. You don't have to worry that February has 28 days (except 29 on leap years) or that May has 31. The end-of-month is a little messy and there is a difference between  $\frac{30}{360}$  and  $\frac{30\mathrm{E}}{360}$ , but nobody ever remembers what the difference is.

3. Actual / 365 fixed:

$$
A / A = \frac {\text {A c t u a l D a y s S i n c e L a s t C o u p o n}}{3 6 5} * F r e q
$$

which means you don't have to count the number of days in the actual half-year. But this generates odd things at the end of long months - like negative accrued interest. British Gilts used to be A/365F but now A/A. Canadian bonds are A/365F, Japanese JGBs I think are A/365F.

Actual /Actual makes perfect sense and you might think all bonds are done this way. But calculating days is rather messy (or at least was before calculators) and so 30/360 (and even A/365F) are still used. The "Bond" and "Time" menu on the HP calculator do date calculations. The "Bond" recognizes A/A and 30/360 (but not 30E/360 or A/365F). The "Time" menu recognizes A/A, 30/360, A/365F (but not 30E/360)

# Accrued Interest Conventions - Compare Like-with-Like

Price is price & cash is cash - the market price (DP) is what matters AI conventions tell us how to go:

- Dirty Price  $\rightarrow$  yield (using PV formula: TVM or BOND menu)  
- Dirty Price  $\rightarrow$  Clean Price (subtracting AI)

MUST compare like-with-like (A/A vs A/A & 30/360 vs 30/360)

- Different calendars say different "fraction of year"  $\Rightarrow$  different AI, different Clean Price, different yield

$$
\begin{array}{l} \mathrm {A} / \mathrm {A} D P = 1 0 5. 8 0 8 6 \\ \Rightarrow CP = 99.71823, yld = 6.60 \% \\ \end{array}
$$

$$
\begin{array}{l} 3 0 / 3 6 0 D P = 1 0 5. 8 0 8 6 \\ C P = 99.7600, \mathrm {yld} = 6.584 \% \Leftarrow \\ \end{array}
$$

- You pay 105.806 in both cases - same cash (Dirty Price)

EXAMPLE:  $6.5\%$  bond, 342 days into year, on 28-feb-2019: Yield  $= 6.60\%$

Actual / Actual convention (0.9370 yrs, AI=6.0904), yld=6.60%→DP=105.8086 (99.71823+6.0904)

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A Ann</td><td>2.282019</td><td>3.232022</td><td>6.5</td><td>6.60</td><td></td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>99.71823</td><td>6.0904</td></tr></table>

- 30/360 convention (0.9306 yrs, AI=6.0486), DP=105.8086(99.7600+6.0486) → yld=6.584%

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>360 Ann</td><td>2.282019</td><td>3.232022</td><td>6.5</td><td></td><td>99.7600</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>6.584</td><td></td><td>6.0486</td></tr></table>

EXAMPLE:  $6.5\%$  bond, 342 days into coupon, on 28-feb-2019: Yield  $= 6.60\%$

Actual / Actual convention (0.9370 yrs), DP = 105.8086

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A Ann</td><td>2.282019</td><td>3.232022</td><td>6.5</td><td>6.60</td><td></td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>99.71823</td><td>6.0904</td></tr></table>

- 30/360 convention (0.9306 yrs), CP = 105.8086 - 6.0486 = 99.7600

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>360 Ann</td><td>2.282019</td><td>3.232022</td><td>6.5</td><td></td><td>99.7600</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>6.584</td><td></td><td>6.0486</td></tr></table>

Here the "difference" in yield is 1.6bp but in fact it is only due to different conventions:  $6.600\% \mathrm{A} / \mathrm{A}$ $= 6.584\% 30 / 360$

These differences are less than the differences in frequency basis (ab vs sab:  $6.60\% \mathrm{ab} = 6.495\% \mathrm{stab}$ , 10.5bp)

EXAMPLE:  $6.5\%$  bond, 73 days into coupon, on 4-jun-2018: Yield  $= 6.60\%$

- Actual / Actual convention (0.2 yrs, AI=1.300), DP = 100.9403 (99.6403+1.3000)

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A Ann</td><td>6.042018</td><td>3.232022</td><td>6.5</td><td>6.60</td><td></td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>99.6403</td><td>1.30</td></tr><tr><td>Given</td><td>360 Ann</td><td>6.042018</td><td>3.232022</td><td>6.5</td><td></td><td>99.6584</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>6.595</td><td></td><td>1.2819</td></tr></table>

A/A and 30/360 prices and yields slightly different (use Bloomberg "True Yield")

# Comparing Across Frequency - Very Important

For Semi (vs Annual), you get cash sooner (6mth instead of 1yr)

- This truly makes a difference, semi more valuable

Here, need to take yields and convert:  $6.60\% \mathrm{ab} \rightarrow 6.495\% \mathrm{Sab}$

$$
1. 0 6 6 = \left(1 + \frac {. 0 6 4 9 5}{2}\right) ^ {2} \quad . 0 6 4 9 5 = 2 * \left(\sqrt {1 . 0 6 6} - 1\right)
$$

EXAMPLE: Exact 4yr,  $6.5\%$  bond (no AI), annual vs semi:

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A Ann</td><td>3.232018</td><td>3.232022</td><td>6.5</td><td>6.60</td><td></td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>99.658</td><td>0</td></tr></table>

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A Semi</td><td>3.232018</td><td>3.232022</td><td>6.5</td><td>6.495</td><td></td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>100.017</td><td>0</td></tr></table>

You pay more for semi-annual bond - you should, since get coupon earlier.

My "Practical Guide to Bonds and Swaps" (https://papers.ssrn.com/abstract=1554029) covers the various conventions. Many, however, have changed and are now A/A.

<table><tr><td>Security</td><td>Coupon Freq</td><td>Day-count Basis</td><td>Notes</td></tr><tr><td>US Treasury Bonds</td><td>Semi-annual</td><td>Actual/Actual</td><td>1 day settle</td></tr><tr><td>US Corporate Bonds</td><td>Semi-annual</td><td>30/360</td><td></td></tr><tr><td>UK Gilts</td><td>Semi-annual</td><td>Actual/Actual</td><td>1 day settle</td></tr><tr><td>British Domestic Bonds</td><td>Semi-annual</td><td>Actual/365 fixed ??</td><td></td></tr><tr><td>French OATs &amp; BTANs</td><td>Annual</td><td>Actual/Actual</td><td>Intern&#x27;l settle Euroclear</td></tr><tr><td>German Bunds &amp; BOBLS</td><td>Annual</td><td>Actual/Actual</td><td>Intern&#x27;l settle Euroclear</td></tr><tr><td>Japanese JGBs</td><td>Semi-annual</td><td>Actual/365 fixed (not A/A)</td><td>Yield quoted simple</td></tr><tr><td>Dutch Gov. bonds (Guilders)</td><td>Annual</td><td>Actual/Actual</td><td></td></tr><tr><td>Canadian Gov. bonds</td><td>Semi-annual</td><td>Actual/365 fixed (not A/A)</td><td>Yield quoted A/A, AI goes neg</td></tr><tr><td>Australian Gov. bonds</td><td>Semi-annual</td><td>Actual/Actual</td><td></td></tr><tr><td>Italian Gov. bonds</td><td>Semi-annual</td><td>Actual/Actual</td><td>Yield quoted annual basis, AI has one extra day added</td></tr><tr><td>Eurobonds</td><td>Annual</td><td>Actual/Actual</td><td>Prior to 1999 30E/360</td></tr></table>

Sources for conventions:  

- http://treasurytoday.com/2001/11/day-count-conventions  
- I'm not sure they are right in their definition of A/365(F) and A/365 (that they say is same as A/A). I think maybe there is some confusion between mm conventions (A/360 and A/365) and bond conventions (A/365(F) and A/A)  
- They say that Eurobonds have switched from  $30\mathrm{E} / 360$  to A/A
- For Canadians: http://iiac.ca/wp-content/uploads/Canadian-Conventions-in-Fixed-Income-Markets-1.1.pdf  
- For German Bunds: http://help.derivativepricing.com/1296.htm  
- Wide variety: http://help.derivativepricing.com/1571.htm

# 1.4 Periodic Payments & Compounding

# Contents

# Yield: Always "Per Year"

Very convenient to express price today vs tomorrow as yield:  $\frac{1}{1 + y}$

- So far we haven't said if "tomorrow" is next day or next year

Almost always express yield "per year":  $PV = \frac{FV}{(1 + y)^n}$  with  $n = \text{no yrs}$ .

Example: 4yr  $6.5\%$  coupon bond,  $\mathrm{P} = 99.658$ :

$$
9 9. 6 5 8 = \frac {6 . 5}{(1 + y _ {a b})} + \frac {6 . 5}{(1 + y _ {a b}) ^ {2}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {3}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {4}} + \frac {1 0 0}{(1 + y _ {a b}) ^ {4}}
$$

TVM does this automatically, gives Yield (Interest) per yr  $(1\%)\mathrm{YR}$

- Make sure set right: <Blue> <MAIN> <FIN> <TVM> <1 P/YR> <END>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

# Periodic CFs (Not 1 per year)

Example: 4yr  $6.5\%$  coupon bond,  $\mathrm{P} = 99.658 - 6.5\% /\mathrm{yr}$

$$
9 9. 6 5 8 = \frac {6 . 5}{\left(1 + y _ {a b}\right)} + \frac {6 . 5}{\left(1 + y _ {a b}\right) ^ {2}} + \frac {6 . 5}{\left(1 + y _ {a b}\right) ^ {3}} + \frac {6 . 5}{\left(1 + y _ {a b}\right) ^ {4}} + \frac {1 0 0}{\left(1 + y _ {a b}\right) ^ {4}}
$$

But what if pays every 6mths (like UST)? Get $3.25 every half-year.

- Seems natural to use annual rate, for "number of years" (may be 1/2 year):

$$
9 9. 6 5 8 = \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {1 / 2}} + \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {1}} + \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {1 . 5}} + \dots + \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {4}} + \frac {1 0 0}{\left(1 + y _ {a b}\right) ^ {4}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/29138fd5ba943d909efd461acbd28cb594b57577b8a206f0aed664af400278b8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a45ba650edffae1cda248b8780d4db2442350308dc1c173b6c9a95883066e012.jpg)

# But No - Periodic CFs - Discount at Same Freq as Payment

Example: 4yr semi-annual  $6.5\%$  coupon bond,  $\mathrm{P} = 99.658 - 3.25\% / 6\mathrm{mth}$

- Seems natural to use annual rate, discount "number of years":

$$
9 9. 6 5 8 = \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {1 / 2}} + \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {1}} + \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {1 . 5}} + \dots + \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {4}} + \frac {1 0 0}{\left(1 + y _ {a b}\right) ^ {4}}
$$

But that's far too simple. Instead, discount at same freq as payment:

$$
9 9. 6 5 8 = \frac {3 . 2 5}{(1 + y _ {s a b} / 2) ^ {1}} + \frac {3 . 2 5}{(1 + y _ {s a b} / 2) ^ {2}} + \frac {3 . 2 5}{(1 + y _ {s a b} / 2) ^ {3}} + \dots + \frac {3 . 2 5}{(1 + y _ {s a b} / 2) ^ {8}} + \frac {1 0 0}{(1 + y _ {s a b} / 2) ^ {8}}
$$

Discount at a 6-mth (half-yr) rate,  $y_{sab} / 2$

- 1st payment in 1 half-yr,  $\frac{1}{1 + y\text{stab}}/2$  
- 2nd payment in 2 half-yrs,  $1 / (1 + y\text{stab} /2)^2$  
- etc up to 8th payment (4 yrs)

Why  $y_{\text{stab}} / 2$ ? Report "annual" rate

- Discount at half-yr rate  $y_{sab} / 2$ , but quote "annual"  $y_{sab} = 2 \cdot y_{sab} / 2$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/028e33ece6ddaad22bfb21544ec68c1a694db699e3e158869e5da57702f74796.jpg)

# Periodic CFs - 4 yr Bond Example

Example: 4yr semi-annual  $6.5\%$  coupon bond,  $\mathrm{P} = 99.658 - 3.25\% / 6\mathrm{mth}$

$$
9 9. 6 5 8 = \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {1}} + \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {2}} + \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {3}} + \dots + \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {8}} + \frac {1 0 0}{\left(1 + y _ {s a b} / 2\right) ^ {8}}
$$

Annual, 4yrs,  $6.5\%$  /yr: <Blue> <MAIN> <FIN> <TVM> <1 P/YR>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr><tr><td colspan="6">Semi-annual, 4yrs, 3.25%/yr: &lt;1 P/YR&gt;</td></tr><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>8</td><td></td><td>-99.658</td><td>3.25</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>3.299</td><td></td><td></td><td></td></tr><tr><td colspan="6">Semi-annual, 4yrs, 3.25%/yr: &lt;2 P/YR&gt;</td></tr><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>8</td><td></td><td>-99.658</td><td>3.25</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.599</td><td></td><td></td><td></td></tr></table>

$< 2\mathrm{P} / \mathrm{{YR}} >$  only adjusts the I%YR

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/3b2c328e37ce6fe25a21c7417cd66677f0fb4e6821596f5b99320abf7a2b1af5.jpg)

# Don't Be Fooled: 4yr Annual  $\neq$  4yr Semi-Annual

Look the 2 bonds, same price but different coupon

4yr semi bond more valuable  
Get same total CF, but get CF sooner

Annual, 4yrs,  $6.5\%/\mathrm{yr}$ : <1 P/YR>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

$y_{ab} = 6.6\%$  - annual discount rate (yield)

Semi-annual, 4yrs,  $3.25\%/\mathrm{yr}$ :  $< 2\mathrm{P/yr}>$

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>8</td><td></td><td>-99.658</td><td>3.25</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.599</td><td></td><td></td><td></td></tr></table>

$y_{sab} = 6.599\%$  - semi-annual discount rate  $\times 2$

$y_{ab}$  &  $y_{sab}$  look the same, but fundamentally different

- Semi-annual bond more valuable: pay same (\$99.658) but get CFs sooner

Can only compare when convert from  $y_{sab}$  to  $y_{ab}$  (or vice-versa)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/0f86c0890b6960e62137b607cb653c8c423052a3252c5be1222000700d3b8b05.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/816f656fe136dc337c5cce7e0935d4508e4749a4c9e6e5a8e762ffcafc8b99ff.jpg)

# Complication: Compounding!

Among the most difficult things you'll learn - compounding is confusing

You can quote the yield on various bases:

Annual: (aka "ab") annual rate compounded by years

Semi-annual: (aka "sab") semi-annual rate compounded by half-years

$$
\$ 100 in 1y r: \begin{array}{c c} a n n u a l & s e m i - a n n u a l \\ 9 2. 5 9 = \frac {1 0 0}{(1 + . 0 8)} & 9 2. 5 9 = \frac {1 0 0}{(1 + . 0 7 8 4 6 / 2) ^ {2}} \end{array}
$$

CFs same (that's what we buy & sell).

- "Yield" is convenient way to write PV  $< ->$  FV relations  
- Compounding and "basis" is code to tell you how to write PV relation

AND, everyone likes to see an "annual" rate, so write

$$
P V = \frac {F V}{(1 + y _ {a b}) ^ {Y _ {r}}} \quad P V = \frac {F V}{(1 + y _ {s a b} / 2) ^ {2 * Y _ {r}}}
$$

This gives  $y_{\text{stab}} = .07846 = 2^*.03923$

# Some Tips on Compounding

The most common "bases" or compounding frequencies are:

1. Annual or  $ab$  or annual bond:  $PV = \frac{FV}{(1 + y_{ab})^{Yr}}$  
- European gov't bonds, some corporates  
2. Semi-annual or  $sab$  or semi-annual bond:  $PV = \frac{FV}{(1 + y_{\text{stab}} / 2)^{2*Y_r}}$  
USgov'tand corporate bonds

3. Monthly or  $mb$  or monthly bond:  $PV = \frac{FV}{(1 + y_{mb} / 12)^{12*Yr}}$

- mortgage bonds

NEVER, ever quote a rate without saying what basis (ab, sab)

- And yell at me when I do that (which I will)

ALWAYS compare yields of same basis (ab vs ab, sab vs sab)

# Converting Bases

Remember, basis or compounding is just a way to quote the yield

- CFs are what matter

Always compare same basis  

- ALWAYS need to convert from ab to sab or vice-versa

Start with fundamental discounting relation:

$$
\left(1 + y _ {a b}\right) = \left(1 + y _ {s a b} / 2\right) ^ {2}
$$

$$
y _ {a b} = (1 + y _ {s a b} / 2) ^ {2} - 1 \quad y _ {s a b} = 2 \cdot (\sqrt {1 + y _ {a b}} - 1)
$$

# Compounding: In-Class Exercise 1

Annual, 4yrs,  $6.5\%/\mathrm{yr}$ : <1 P/YR>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

Semi-annual, 4yrs,  $3.25\%/\mathrm{yr}$ : <2 P/YR>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>8</td><td></td><td>-99.658</td><td>3.25</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.599</td><td></td><td></td><td></td></tr></table>

But  $y_{ab} \& y_{sab}$  fundamentally different

- Semi-annual bond more valuable: pay same (\$99.658) but get CFs sooner

Need to convert between  $y_{ab}$  &  $y_{sab}$

$$
y _ {a b} = (1 + y _ {s a b} / 2) ^ {2} - 1
$$

$$
y _ {s a b} = 2 \cdot \left(\sqrt {1 + y _ {a b}} - 1\right)
$$

Convert to  $y_{sab}$  from  $y_{ab} = 6.60\%$ :

$$
y _ {s a b} = 2 \cdot \left(\sqrt {1 + . 0 6 6 0} - 1\right) = . 0 6 4 9
$$

$6.60\% \mathrm{ab} \rightarrow$  lower when sab (6.49% sab)

Convert to  $y_{ab}$  from  $y_{sab} = 6.599\%$ :

$$
y _ {a b} = (1 +. 0 6 5 9 9 / 2) ^ {2} - 1 = . 0 6 7 0 8
$$

$6.599\% \mathrm{Sab}\rightarrow$  higher when ab (6.708%ab)

Now we see that, indeed, semi-annual bond is higher yield:

- Annual bond:  $6.60\%$ ab or  $6.49\%$  sab  
- Semi-annual:  $6.708\%$  ab or  $6.599\%$  sab

Always compare bonds on same basis

# Compounding: In-Class Exercise 2

Today's CF (PV) = $89, 2 years CF (FV) = $100.

$$
\begin{array}{c c} a n n u a l & s e m i - a n n u a l \\ P V = \frac {F V}{(1 + y _ {a b}) ^ {Y r}} & P V = \frac {F V}{(1 + y _ {s a b} / 2) ^ {2 * Y r}} \end{array}
$$

1. What is  $y_{ab}$ ?  $y_{ab} = .06$

$$
P V = \frac {F V}{(1 + y _ {a b}) ^ {Y r}} \quad 8 9 = \frac {1 0 0}{(1 + y _ {a b}) ^ {2}} \quad (1 + y _ {a b}) = \sqrt {\frac {1 0 0}{8 9}}
$$

2. What is  $y_{\text{stab}}$ ?  $y_{\text{stab}} = .05912$  ( $y_{\text{stab}} / 2 = .029562$ )

$$
P V = \frac {F V}{(1 + y _ {s a b} / 2) ^ {2 * Y r}} \quad 8 9 = \frac {1 0 0}{(1 + y _ {s a b} / 2) ^ {4}} \quad (1 + y _ {s a b} / 2) = \sqrt [ 4 ]{\frac {1 0 0}{8 9}}
$$

# Compounding: In-Class Exercise 3

$$
\left(1 + y _ {a b}\right) = \left(1 + y _ {s a b} / 2\right) ^ {2}
$$

$$
y _ {a b} = (1 + y _ {s a b} / 2) ^ {2} - 1 \quad y _ {s a b} = 2 \cdot (\sqrt {1 + y _ {a b}} - 1)
$$

<table><tr><td>yab</td><td>ysab</td></tr><tr><td>.08</td><td>.07846</td></tr><tr><td>.05</td><td>.04939</td></tr><tr><td>.0816</td><td>.08</td></tr><tr><td>.050625</td><td>.05</td></tr><tr><td>.1025</td><td>.10</td></tr></table>

- ALWAYS compare like-with-like.  $8\%$  ab is not  $8\%$  sab  
- And it is non-linear: Doubling  $y_{sab}$  slightly more than doubles  $y_{ab}$

# 2 Real & Nominal Rates

# 2.1 Unpacking the Budget Line Part II: Real & Nominal Rates Contents

# Unpacking the Budget Line Part II: Real & Nominal Rates

Budget line - Left Side (consumption) instead of Right (money income)

- Start with 2 periods linked by savings  
- Eliminate  $s$  and write in terms of PV  
- Or write in terms of FV

$$
p _ {1} c _ {1} = m _ {1} - s; p _ {2} c _ {2} = m _ {2} + (1 + y) s
$$

$$
p _ {1} c _ {1} + p _ {2} c _ {2} / (1 + y) = m _ {1} + m _ {2} / (1 + y)
$$

$$
p _ {1} c _ {1} \cdot (1 + y) + p _ {2} c _ {2} = m _ {1} \cdot (1 + y) + m _ {2}
$$

Budget line same either way  

- In FV form income higher, but so are "prices"

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f17cbdf7642800cea2cf221f12f776471d427d6c27bde6943201e8f0d0c2c2f3.jpg)

# Left Hand Side Gives Real & Nominal Rates

$$
L H S: p _ {1} c _ {1} + \frac {p _ {2}}{1 + y} c _ {2}
$$

Consumption (today vs tomorrow) depends on the relative price:  $\frac{p_2}{p_1} \frac{1}{1 + y}$

We know  $\frac{p_2}{p_1}$  from Micro I.

- Let's write  $p_2 = p_1 \cdot (1 + \pi)$  (inflation)

Now relative price is:  $\frac{p_2}{p_1}\frac{1}{1 + y} = \frac{1 + \pi}{1 + y}$

- Budget line is now:  $p_1c_1 + p_1c_2\frac{1 + \pi}{1 + y} = m_1 + m_2\frac{1}{1 + y}$  
- Define "real rate"  $\frac{1}{1 + r} = \frac{1 + \pi}{1 + y}$ ;  $p_1c_1 + p_1c_2\frac{1}{1 + r} = m_1 + m_2\frac{1}{1 + y}$  
- For income (PV) look at nominal rate  $1 + y$ : PV is  $m_{1} + m_{2}\frac{1}{1 + y}$  
- For consumption, real rate  $1 + r = \frac{1 + y}{1 + \pi}$ : Consumption is  $p_1c_1 + p_1c_2\frac{1}{1 + r}$

1. Unpacking the budget constraint: nominal & real rates

- This budget constraint tells us everything we need to know about discounting, PV, FV, nominal rates, real rates. In fact everything we need to know about TVM (for certain - known - CFs).  
- But we need to unpack this budget constraint, and think about it a little carefully.
- Once we do that we will then use the ideas of discounting, PV, FV, etc. to examine every aspect of modern finance.  
- We will talk about bonds and discounting over multiple periods. About compounding and variable periods (rates per month, half-year, year). About nominal rates vs real rates. But the ideas all come back to this simple picture and simple budget line. (Have I ever said

how wonderful budget lines are? I used to think they were really boring, but I've come to appreciate that a good part of economics is just thinking carefully about budget lines.)

- Nominal Rates: By "Nominal" we mean "money". We've been looking at money income or nominal income, the dollar PV:  $m_1 + m_2 / (1 + y)$ . For this we have been using the rate  $y$  which we call the nominal interest rate, the rate that applies to dollars.
- The nominal rate is what you see quoted in the papers. As of 22-feb-18, the nominal rate on 10-year UST is  $2.92\%$ . Roughly means that  $\$100$  today grows to  $\$102.92$  in one year, or  $100 = ^{102.92} / _{1 + .0292}$ . (We will go through exactly what this means shortly - semiannually-compounded bond rate for (approximately) 10-year bond -  $2.75\%$  of 15-feb-18, QD=22-feb, SD=23-feb, P=98-18+, y=2.9152%)  
- Much of the course we will only be looking at nominal income and nominal rates
- But let's look at the LHS, look at consumption and the relative price of consumption today vs tomorrow. Period-2 has the term  $1 / (1 + y)$ , just like the money income side. But the actual (relative) price of period-2 consumption is

$$
\frac {p _ {2}}{p _ {1}} \frac {1}{(1 + y)}
$$

The extra  $\frac{p^2}{p^1}$  comes in because we are talking about real (as opposed to nominal) quantities - the real number of loaves of bread and bottles of wine. For the usual picture, where we are talking about all goods today we have just  $\frac{p^2}{p^1}$  but now we have the extra term  $1 / (1 + y)$  which tells us how we transform between today and tomorrow.

- We will almost always want to think about inflation  $\pi$  which is the change in prices from today to tomorrow:  $p_2 = p_1 \cdot (1 + \pi)$  
- The expression now becomes

$$
\frac {1 + \pi}{1 + y} = \frac {1}{1 + r}
$$

and this gives us the real interest rate:  $(1 + r) = (1 + y) / (1 + \pi)$

- When we are talking about consumption and real goods we always need to think about the real rate  $r$  rather than the nominal rate  $y$ .

# Real, Nominal, Expected Inflation

The relation between real and nominal discount rate is due to expected inflation

- UST (what we discussed above):
- CF nominal, not adjusted for inflation  
Discount Rate (yield) is nominal

- TIPS (we will discuss more in a few min):
- CF real, adjusted for inflation  
Discount Rate (yield) is real

Difference between these is the (expected) inflation rate

y nominal discount rate

$$
1 + y = (1 + r) \cdot (1 + \pi)
$$

r real discount rate  
$\pi$  expected inflation

For most purposes (when inflation is low, around  $5\%$  or less)

$$
y \approx r + \pi
$$

# Real, Nominal, Inflation Today

From the market 24 March 2023, UST & TIPS:

UST  $y = 3.358\%$  (0.03358)

TIPS  $r = 1.132\%$  (0.01132)

$$
y \approx r + \pi
$$

$$
3.36 \% \approx 1.13 \% + \pi
$$

Expected inflation  $\pi = 2.23\%$

Market expects moderate inflation ( $\sim 2.23\%$ ) over next ten years!

What does those negative real rates (2020-2022) mean?

- Investors have low price on consumption today:  $p_1c_1 + p_1c_2\frac{1}{1 + r} = m_1 + m_2\frac{1}{1 + y}$  means  $r \downarrow$  as if  $p_{tomorrow} \uparrow \& p_{today} \downarrow$  
- During pandemic, severe concerns about opportunities and consumption tomorrow

# Inflation, CFs, and Discounting

We mostly look at nominal CFs in this course  
In Corporate Finance (project finance), CBA often consider real CFs  
Incredibly important - Two ways to treat inflation, for CFs & Discounting

1. Real CFs (today's dollars), real discount rate  
2. Inflation-adjusted CFs (nominal), nominal discount rate

Real vs nominal cash CFs

1. Real: forecast sales, costs, benefits, etc. in today's dollars (no inflation)  
2. Nominal: CFs grow:  $CF \, nominal_{t} = CF \, real_{t} \cdot (1 + \pi)^{t}$

Real vs. nominal rates

$$
1 + \text {n o m i n a l} = (1 + \text {r e a l}) \cdot (1 + \exp \text {i n f l})
$$

$$
(1 + y) = (1 + r) \cdot (1 + \pi)
$$

I somewhat prefer (1): real CFs and real rate

- Don't have to think as hard about inflation - Good and bad!

# Inflation - Keep "Real with Real", "Nominal with Nominal"

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d3ca4fab790332efbbca6bed92107b64c52d081011f081dde146136143bd9eb4.jpg)  
Real CF, Real Discounting

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ed9557b79e7353d272d3ab6f5dc1bb805fd367deab176a9c397e33f06cf47f3b.jpg)  
Nominal CF, Nominal Discounting

Nominal rate:  $8\%$  
Expected inflation:  $5\%$

$$
(1 + y) = (1 + r) \cdot (1 + \pi) \Rightarrow (1. 0 8) = (1. 0 2 8 5 7) \cdot (1. 0 5)
$$

Real:  $PV = \frac{100}{1.02857} +\frac{100}{(1.02857)^2} = 191.744$

Nominal:  $PV = \frac{105}{1.08} + \frac{110.25}{(1.08)^2} = 191.744$

Except - when some CFs grow, others do not - like depreciation

- Must use nominal CFs, discount at nominal rates  
Real may be useful for "quick-and-dirty"

# 2.2 TIPS - Treasury Inflation Protected Securities

# Contents

# Quotes - Now TIPS

Let's look at some bond market prices from Friday 5-oct-2018

<table><tr><td>Friday 5-oct-2018</td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>2.875%</td><td>15-aug-28</td><td>97.0078</td><td>3.232%</td></tr><tr><td>10-yr US TIPS</td><td>0.75%</td><td>15-jul-28</td><td>97-6</td><td>1.054%</td></tr><tr><td>10-yr Bund (German)</td><td></td><td></td><td></td><td>0.57%</td></tr></table>

TIPS:

- Treasury Inflation Protected Securities  
- CFs are "real" or inflation-protected CFs

From the market 5-oct-18, UST & TIPS:

$\mathbf{UST}y = 3.23\%$  (0.0323)

TIPS  $r = 1.05\%$  (0.0105)

$$
y \approx r + \pi
$$

$$
3.23\% \approx 1.05\% +\pi
$$

Expected inflation  $\pi = 2.18\%$

Note that the yield quoted in the table is calculated from the HP 17 BOND menu. The TVM gives approximately the same answer, but the 3-decimal yield is from the bond menu:

<table><tr><td></td><td>N</td><td>I% YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>10</td><td></td><td>-97.0078</td><td>2.875</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>3.2299</td><td></td><td></td><td></td></tr></table>

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A Ann</td><td>10.092018</td><td>8.152028</td><td>2.875</td><td></td><td>97.0078</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>2.2318</td><td></td><td>0.4297</td></tr></table>

# TIPS (Treasury Inflation-Protected Security) - Real CFs

How do we make "real CFs"? What do we mean by "real"?

- Coupon & principal "inflated" by CPI (Consumer Price Index)  
- Actual CF rises with inflation: buy same goods with higher CF  
- Makes CFs "real" - inflation-adjusted - in this case real  $0.75\%$  
- The yield (DR) (based on the 0.75 coupon) is real rate

The term  $\frac{CPI_t}{CPI_o}$  is the (compounded) inflation from time zero to  $t$  - the cash paid out is inflation-adjusted (real) Quote - what does 97-6 mean?

- Treasury market old-fashioned  
- Prices quoted in 32nds:  $97 - 6 = 97 + 6 / 32 = 97.1875$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/077599911dfe47da3c0265d3a5566c86c2fce7351ea6c4f50b56451b08292bf4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/4ceb42bcee3bc20b9aa0c739a06759378c15a43a87846b5513554a7296ad95ed.jpg)

# 2.3 More About Real & Nominal

# Contents

# Nominal & Real Rates

Real Yield (promised) & Real Return (earned) important macro variables

- Remember budget Line:  $p_1c_1 + p_1c_2\frac{1}{1 + r} = m_1 + m_2\frac{1}{1 + y}$  
Real rate  $r$  matters for consumption decisions - today vs tomorrow

Nominal yield  $(y)$  easy to see, everyone pays attention

Real yield  $(r)$  harder to see, matters more for decisions about consumption vs savings

Governments have kept real yield  $r$  low since 2008

<table><tr><td></td><td>9/2016</td><td>3/2019</td><td>4/2020</td><td>4/2021</td><td>3/2022</td><td>3/2023</td></tr><tr><td>10yr UST</td><td>1.56%</td><td>2.39%</td><td>0.62%</td><td>1.71%</td><td>2.32%</td><td>3.36%</td></tr><tr><td>10yr TIPS</td><td>0.03%</td><td>0.55%</td><td>-0.46%</td><td>-0.65%</td><td>-0.53%</td><td>1.13%</td></tr><tr><td>Implied Infl</td><td>1.5%</td><td>1.8%</td><td>1.1%</td><td>2.4%</td><td>2.9%</td><td>2.2%</td></tr></table>

Historical data:

Friday 5-oct-2018

<table><tr><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>5-yr US Treasury</td><td>2.500%</td><td>15-aug-23</td><td>97.4609</td><td>3.067</td></tr><tr><td>5-yr US TIPS</td><td>.625%</td><td>15-apr-23</td><td>98-11</td><td>.999</td></tr></table>

Tuesday 27-sep-16

<table><tr><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>5-yr US Treasury</td><td>2.125%</td><td>15-aug-21</td><td>104.5859</td><td>1.156</td></tr><tr><td>5-yr US TIPS</td><td>.125%</td><td>15-apr-21</td><td>102-01</td><td>-.318</td></tr></table>

Friday 28 sep-2014

<table><tr><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>5-yr US Treasury</td><td>1.625%</td><td>31-aug-19</td><td>99.3281</td><td>1.768</td></tr><tr><td>5-yr US TIPS</td><td>0.125%</td><td>15-apr-19</td><td>100-10</td><td>0.06%</td></tr></table>

Friday 5-oct-2018

<table><tr><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>2.875%</td><td>15-aug-28</td><td>97.0078</td><td>3.232%</td></tr><tr><td>10-yr US TIPS</td><td>0.75%</td><td>15-jul-28</td><td>97-6</td><td>1.054%</td></tr><tr><td>10-yr Bund (German)</td><td></td><td></td><td></td><td>0.57%</td></tr></table>

Tuesday 27-sep-16

<table><tr><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>1.50%</td><td>15-aug-26</td><td>99.5234</td><td>1.55%</td></tr><tr><td>10-yr US TIPS</td><td>0.125%</td><td>15-jul-26</td><td>101-05</td><td>0.01%</td></tr><tr><td>10-yr Bund (German)</td><td></td><td></td><td></td><td>-0.15%</td></tr></table>

Friday 28 sep-2014  

<table><tr><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>2.375%</td><td>15-aug-24</td><td>98.8906</td><td>2.502%</td></tr><tr><td>10-yr US TIPS</td><td>0.125%</td><td>15-jul-24</td><td>96-08</td><td>0.518%</td></tr></table>

# Real Returns Consistently Negative 10yrs

Calculate 1yr Real Return - Since 2008, consistently negative - I think bad news

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ebfa5a13454ac5fcac41ceaaee2063857994e92aa3677c02209e9c3a15491e5f.jpg)

Market Yield on U.S. Treasury Securities at 1-Year Constant Maturity, Quoted on an Investment Basis  
Consumer Price Index for All Urban Consumers: All Items in U.S. City Average  
Market Yield on U.S. Treasury Securities at 1-Year Constant Maturity, Quoted on an Investment Basis-Consumer Price Index for All Urban Consumers: All Items in U.S. City Average

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/5ed4c6aec2d3eeba1d2e1369adcd62f26a7bcd4c7cb5f72b344a9814a39d3640.jpg)

The real return: 1yr T-Bill minus 1yr CPI inflation. Should be Lagged T-Bill yield less current CPI inflation to calculate return, so this graph is not absolutely correct

From FRED, the St Louis Federal Reserve Economic Data service. Really valuable

# Real Returns Consistently Negative 10yrs

Calculate 1yr Real Return - Since 2008, consistently negative - I think bad news

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d59108526af6881e41cfbf456e224f990bc927a4ee527a6aad9e95644fc5160a.jpg)

Market Yield on U.S. Treasury Securities at 10-Year Constant Maturity, Quoted on an Investment Basis, Inflation-Indexed

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/8db880d2a510e61e5b0a71163cd7bd028a4ebca3581312f7b1782c875f28e6f7.jpg)

# Why do Investors Buy Nominal vs Index-Linked?

Let's look at some bond market prices from Friday 5-oct-2018

<table><tr><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>2.875%</td><td>15-aug-28</td><td>97.0078</td><td>3.232%</td></tr><tr><td>10-yr US TIPS</td><td>0.75%</td><td>15-jul-28</td><td>97-6</td><td>1.054%</td></tr></table>

Expected Inflation  $\pi = 2.18\% = 3.23\% -1.05\%$

What happens if expected inflation  $\uparrow 5.18\%$  ?  $\Rightarrow$  UST  $3.23\% \uparrow 6.23\%$  (Why?)

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>10</td><td>6.23</td><td></td><td>2.875</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-75.75</td><td></td><td></td></tr></table>

- Lose over $20  
- Inflation is dangerous  
- TIPS protect against rising inflation  
- Coupon up with inflation, price does not fall

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/e3610f53bfb1350f01cdbd5ed919c7f8a32f1c1b701ce4525d630dba60fa1b67.jpg)

Example of inflation effect

A few notes on this:

1. I am asking what happens when expected inflation up by 3 percentage points, from  $2.18\%$  to  $5.18\%$ .  
2. I assume that real rates don't change. It could be that real rates go down, and we will see that real rates can go negative.  
3. But generally when inflation goes up, so do nominal rates. And nominal bonds lose big

# Option on Conventional vs Linkers - Nominal vs Real

UK, 1981, one of first developed nations with inflation-protected bonds

- During 1970s, inflation was high and investors lost wealth

Story from my time in the markets:

- In 1992, British insurance company offered customers choice for pension: fixed nominal pension, or fixed real pension

They needed to protect against market movements - We sold them an Option

- In case big changes in inflation expectations, people chose one vs other

Came to us (SG Warburg) to protect against movements in nominal vs real yields

- They offered pensions in spring / early summer  
Customers could decide in November  
- September: French Mastricht referendum, potential to upset European integration plans, change market expectations (nominal vs real yields)

Referendum pushed UK out of currency agreement (Soros made $1bn)

- I had a wild time managing option  
- I learned a lot about real vs nominal yields

# 2.4 Changes 2016-2023

# Contents

# Remember - Change from 2016 to 2023

Nominal bonds & yields (prices from Treasury Direct, yields A/A, sab)

<table><tr><td></td><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>27 sep-16</td><td>1.50%</td><td>15-aug-26</td><td>99.46875</td><td>1.558%</td></tr><tr><td>10-yr US Treasury</td><td>28-mar-19</td><td>2.625%</td><td>15-feb-29</td><td>102.0625</td><td>2.389%</td></tr><tr><td>10-yr US Treasury</td><td>3-apr-20</td><td>1.50%</td><td>15 feb-30</td><td>108.4375</td><td>0.617%</td></tr><tr><td>10-yr US Treasury</td><td>2-apr-21</td><td>1.125%</td><td>15 feb-31</td><td>94.6875</td><td>1.712%</td></tr><tr><td>10-yr US Treasury</td><td>31-mar-22</td><td>1.875%</td><td>15 feb-32</td><td>96.078</td><td>2.321%</td></tr><tr><td>10-yr US Treasury</td><td>24-mar-23</td><td>3.50%</td><td>15 feb-33</td><td>101.1875</td><td>3.358%</td></tr></table>

Remember from before, what we said about yields:

- Yield  $\uparrow \Rightarrow$  cash today will grow to more tomorrow (10 yrs in this case) OR cash tomorrow worth less today  
- Apr 2019: Economy growing pretty robustly, future growth prospects good  
- Apr 2020: Pandemic, panic about future & future opportunities  $\downarrow$ , yield  $\downarrow$  
- Mar 2022 & 2023: Recovery, but also inflation (next lecture), yields ↑

Real bonds & real yields (TIPS - prices from Treasury Direct)

<table><tr><td></td><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr TIPS</td><td>27 sep-16</td><td>0.125%</td><td>15-jul-26</td><td>100.9375</td><td>0.029%</td></tr><tr><td>10-yr TIPS</td><td>28-mar-19</td><td>0.875</td><td>15-jan-29</td><td>103.0625</td><td>0.554%</td></tr><tr><td>10-yr TIPS</td><td>3-apr-20</td><td>0.125%</td><td>15-jan-30</td><td>105.84375</td><td>-0.458</td></tr><tr><td>10-yr TIPS</td><td>2-apr-21</td><td>0.125%</td><td>15-jan-31</td><td>107.875</td><td>-0.653%</td></tr><tr><td>10-yr TIPS</td><td>31-mar-22</td><td>0.125%</td><td>15-jan-32</td><td>106.96875</td><td>-0.533%</td></tr><tr><td>10-yr TIPS</td><td>24-mar-23</td><td>1.125%</td><td>15-jan-33</td><td>99.9375</td><td>1.132%</td></tr></table>

With real yields, we can say more, but need to calculate Expected Inflation:

$$
n o m i n a l y \approx r e a l r + e x p e c t e d \pi
$$

Sep-2016:

$$
1. 5 5 8 \approx 0. 0 2 9 + 1. 5 2 9
$$

Nominal & real yields, expected inflation

<table><tr><td></td><td>Nom Yld</td><td>Real Yld</td><td>Exp Infl</td></tr><tr><td>27-sep-16</td><td>1.558%</td><td>0.029%</td><td>1.529%</td></tr><tr><td>28-mar-19</td><td>2.389%</td><td>0.554%</td><td>1.835%</td></tr><tr><td>3-apr-20</td><td>0.617%</td><td>-0.458</td><td>1.075%</td></tr><tr><td>2-apr-21</td><td>1.712%</td><td>-0.653%</td><td>2.365%</td></tr><tr><td>31-mar-22</td><td>2.321%</td><td>-0.533%</td><td>2.854%</td></tr><tr><td>24-mar-23</td><td>3.358%</td><td>1.132%</td><td>2.226%</td></tr></table>

Now we can say more:

- Apr 2019: Economy growing pretty robustly, future growth prospects good  
- Real yield up, probably due to better future growth prospects  
- Expansion of budget set
- Apr 2020: Pandemic, panic about future & future growth ↓, real yield ↓
- Contraction of budget set - poor future growth prospects
- Apr-21 & Mar-22: Real yield still low (future growth prospects still poor?) Inflation  $\uparrow$ , nominal yields  $\uparrow$  
- Mar-23: Real yield much higher - future growth prospects  $\uparrow$ ? Inflation  $\uparrow$ , nominal yields  $\uparrow$

<table><tr><td></td><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Approx Yield</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>27 sep-16</td><td>1.50%</td><td>15-aug-26</td><td>99.5234</td><td>1.55%</td><td></td></tr><tr><td>10-yr US Treasury</td><td>28-mar-19</td><td>2.625%</td><td>15 feb-29</td><td>102.0938</td><td>2.39%</td><td></td></tr><tr><td>10-yr US Treasury</td><td>3-apr-20</td><td>1.50%</td><td>15 feb-30</td><td>108.4375</td><td>0.63%</td><td>0.617%</td></tr><tr><td>10-yr US Treasury</td><td>2-apr-21</td><td>1.125%</td><td>15 feb-31</td><td>94.625</td><td>1.71%</td><td>1.719%</td></tr><tr><td>10-yr US Treasury</td><td>31-mar-22</td><td>1.875%</td><td>15 feb-32</td><td>96.078</td><td>2.32%</td><td>2.321%</td></tr><tr><td>10-yr US Treasury</td><td>24-mar-23</td><td>3.50%</td><td>15 feb-33</td><td>101.015625</td><td>3.38%</td><td>3.378</td></tr></table>

Re-done with prices updated from Treasury Direct (different time of day than above, which are from WSJ, which no longer has history). And calculating actual A/A semi-annual bond yield:

<table><tr><td></td><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>27-sep-16</td><td>1.50%</td><td>15-aug-26</td><td>99.46875</td><td>1.558%</td></tr><tr><td>10-yr US Treasury</td><td>28-mar-19</td><td>2.625%</td><td>15-feb-29</td><td>102.0625</td><td>2.389%</td></tr><tr><td>10-yr US Treasury</td><td>3-apr-20</td><td>1.50%</td><td>15-feb-30</td><td>108.4375</td><td>0.617%</td></tr><tr><td>10-yr US Treasury</td><td>2-apr-21</td><td>1.125%</td><td>15-feb-31</td><td>94.6875</td><td>1.712%</td></tr><tr><td>10-yr US Treasury</td><td>31-mar-22</td><td>1.875%</td><td>15-feb-32</td><td>96.078</td><td>2.321%</td></tr><tr><td>10-yr US Treasury</td><td>24-mar-23</td><td>3.50%</td><td>15-feb-33</td><td>101.1875</td><td>3.358%</td></tr></table>

<table><tr><td></td><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td><td>Exp Infl</td></tr><tr><td>10-yr TIPS</td><td>27-sep-16</td><td>0.125%</td><td>15-jul-26</td><td>100.9375</td><td>0.029%</td><td>1.529%</td></tr><tr><td>10-yr TIPS</td><td>28-mar-19</td><td>0.875</td><td>15-jan-29</td><td>103.0625</td><td>0.554%</td><td>1.835%</td></tr><tr><td>10-yr TIPS</td><td>3-apr-20</td><td>0.125%</td><td>15-jan-30</td><td>105.84375</td><td>-0.458</td><td>1.075%</td></tr><tr><td>10-yr TIPS</td><td>2-apr-21</td><td>0.125%</td><td>15-jan-31</td><td>107.875</td><td>-0.653%</td><td>2.365%</td></tr><tr><td>10-yr TIPS</td><td>31-mar-22</td><td>0.125%</td><td>15-jan-32</td><td>106.96875</td><td>-0.533%</td><td>2.854%</td></tr><tr><td>10-yr TIPS</td><td>24-mar-23</td><td>1.125%</td><td>15-jan-33</td><td>99.9375</td><td>1.132%</td><td>2.226%</td></tr></table>

<table><tr><td></td><td>Nom Yld</td><td>Real Yld</td><td>Exp Infl</td></tr><tr><td>27 sep-16</td><td>1.558%</td><td>0.029%</td><td>1.529%</td></tr><tr><td>28-mar-19</td><td>2.389%</td><td>0.554%</td><td>1.835%</td></tr><tr><td>3-apr-20</td><td>0.617%</td><td>-0.458</td><td>1.075%</td></tr><tr><td>2-apr-21</td><td>1.712%</td><td>-0.653%</td><td>2.365%</td></tr><tr><td>31-mar-22</td><td>2.321%</td><td>-0.533%</td><td>2.854%</td></tr><tr><td>24-mar-23</td><td>3.358%</td><td>1.132%</td><td>2.226%</td></tr></table>

Thinking About Yield Changes:  $y \uparrow \Rightarrow$  Budget Line Twists

First consider simple case: you only have Future CF or Present CF:

$$
R e m e m b e r P V = \frac {F V}{(1 + y)}
$$

$$
B u d g e t L i n e R H S: \begin{array}{l} P V: m _ {1} + m _ {2} / (1 + y) \\ F V: (1 + y) \cdot m _ {1} + m _ {2} \end{array}
$$

Growth: Only  $m_1$ , Present CF (PV fixed),  $y \uparrow$  as if  $CF_{tomorrow} \uparrow$  and you are richer: budget line

- PV=100, y=4%,  $FV = 100 \cdot (1 + .04) = 104$  
- $\mathrm{FV} = 100, \mathrm{y} = 5\%$ ,  $PV = 100 \cdot (1 + .05) = 105 - \text{Richer}$

Inflation: Only  $m_2$ , Future CF (FV fixed),  $y \uparrow$  as if  $PV$  of  $CF_{tomorrow} \downarrow$  and you are poorer: budget line

$\bullet \mathrm{FV} = 100$ $y = 4\%$ $PV = \frac{100}{(1 + .04)} = 96.15$  
$\mathrm{FV} = 100$ $y = 5\%$ $PV = \frac{100}{(1 + .05)} = 95.24 -$  Poorer

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/866db87c5be79ff06d868065df860993e3b5beb262740b63be2fe0da7b42a903.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/0c55846a7e1aa13664c94a96627ad505043687cb43e566e22792f4357117e5c5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/627495be438d9b3a2626089b794a15c175fba3e0e33b0fed1d01fa92317550cb.jpg)

# TVM & Bonds: PV, FV, Discounting


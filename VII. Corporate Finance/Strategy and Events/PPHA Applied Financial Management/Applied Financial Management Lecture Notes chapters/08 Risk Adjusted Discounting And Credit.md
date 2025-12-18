---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Outline
linter-yaml-title-alias: Outline
---

Lecture 8

Thomas S. Coleman

12 April 2022; Draft April 17, 2023

# Outline

# Contents

1 Risk-Adjusted Discounting in Practice 1

1.1 Where Do We Get Risk-Premium? (notes) 1  
1.2 Bankruptcy & Default (notes, BKM 14.5) 5  
1.3 Credit Spreads - Market Measure of Default Uncertainty - Revisit Sovereign Default 9  
1.4 Credit ratings (BMA 23.3 (custom Ch 8)) 13

2 Risk-Neutral Valuation: Adjust Probabilities - Introduction to Options 16

3 Corporate Bonds (Sharpe 14.6) 18

# 1 Risk-Adjusted Discounting in Practice

# 1.1 Where Do We Get Risk-Premium? (notes)

# Contents

Calculating Risk Premium Seems Complicated

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d7d8afb1b38f999edd7bb641fd6a41b52246a13d9c6c6dcb838fc3073ebb21aa.jpg)

- Start with cash flow distribution

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/94eaeabd6caae78b895b6aecf433a0f0a9cae89cc4f3370bc8fce04e268490f1.jpg)

- Use expected utility to get the CE (single, certainty equivalent CF)

$$
u (C E) = p \cdot u \left(C _ {l}\right) + (1 - p) \cdot u \left(C _ {h}\right)
$$

- Adjust the original CFs until the average (or promised) CF from the distribution equals the CE

$$
C E = p \cdot C F _ {a d j} ^ {t o} + (1 - p) \cdot C F _ {a d j} ^ {h i}
$$

Write the adjustment as a ratio  $1 / (1 + \mathrm{rp})$ $CE = \frac{1}{1 + rp}\left[p\cdot CF_{orig}^{lo} + (1 - p)\cdot CF_{orig}^{hi}\right] = \frac{CF_{orig}^{avg}}{1 + rp}$  

- Apply the adjustment and discounting together to end at risk-adjusted discounting

$$
P V = \frac {C E}{1 + y _ {u s t}} = \frac {C F _ {o r i g} ^ {a v g}}{(1 + y _ {u s t}) (1 + r p)} = \frac {C F _ {o r i g} ^ {a v g}}{(1 + y _ {r i s k y})}
$$

How do we ever do this in practice?

# Standard Bonds Easy (Callables & Equities Not Easy)

Standard Bonds: Market Price  $\rightarrow$  Risk-adjusted yield  $\rightarrow$  Risk Premium

- Can use  $PV = \frac{PromCF}{(1 + y_{\text{risky}})} = \frac{PromCF}{(1 + y_{\text{ust}})(1 + rp)}$  directly to back out  $rp$

Callable Bonds: Market Price  $\rightarrow$  Option-Adjusted Yield  $\rightarrow$  Risk Premium

- What is a callable bond? How do we value (can't use simple PV)  
- What is "Option-Adjusted Yield"?  
- What is an option?

Equities: Market Price  $\rightarrow$  ??

- Don't have  $\text{PromCF}$  or  $ECF$  so can't back out  $rp$ .  
- Use history to estimate  $rp$

# FIS - Standard Yield Calculations - Promised CFs

Settle 31-dec-15 - Calculate FIS Yield using Promised CF Market gives us risk premium - spread = 4.536% - 2.268% = 227bp

- Embedded in bond prices - market gives us risk premium

<table><tr><td>31-dec-2015</td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>2.25%</td><td>15-nov-25</td><td>99.84375</td><td>2.268%</td></tr><tr><td>FIS</td><td>5.0%</td><td>15-oct-25</td><td>103.626</td><td>4.536%</td></tr></table>

- UST:  $2.25\%$  coupon, 15-nov-25 (31-dec-15)  $\mathrm{P} = 99.84375$ ,  $\mathrm{Y} = 2.268\%$

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>A/A Semi</td><td>12.312015</td><td>11.152025</td><td>2.25</td><td></td><td>99.84375</td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>2.268</td><td></td></tr></table>

Calculate FIS:  $5\%$  coupon, 15-oct-25 (31-dec-15)  $\mathrm{P} = 103.626$ $\mathrm{Y} = 4.536\%$

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>360 Semi</td><td>12.312015</td><td>10.152025</td><td>5</td><td></td><td>103.626</td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>4.536</td><td></td></tr></table>

# Bond Market & FIS Example - Risk-Adjusted Yield

Market gives us risk premium - embedded in price (settle 31-dec-15)

- UST:  $2.25\%$  coupon, 15-nov-25 P=99.84375, Y=2.268%sab

$$
- 1. 0 2 2 6 8 = (1 + u s t)
$$

FIS:  $5\%$  coupon, 15-oct-25 P=103.626, Y=4.536%Sab

$$
- 1.04536 = (1 + u s t) \cdot (1 + r p) \Rightarrow 1 + r p = 1.02218 \text {or} r p = 2.218 \%
$$

The UST CFs are known, the FIS only promised CFs, but CF diagram useful. We can just calculate yield, market gives us risk premium!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/7ce669299968b242e3fa748bb67d65137cb06f35a8bcdc06d8b58316fb50d0c7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a1c927acfde893e09dff7d9d79d6f51ac8476f0ecff2dfbe7527489f7bea6be1.jpg)

Generally use spread:  $\mathrm{rp} = 4.54\% -2.27\% = 227\mathrm{bp}$

# Bond Spreads Measure Uncertainty & Credit Risk

Spread between UST (risk-free) and corporate risk-adjusted yields

- 31-jan-16: UST  $2.27\%$ , FIS  $4.54\% = >$  spread  $= 227\mathrm{bp}$  
- Market's assessment of credit risk - probability of default  
- Embeds uncertainty of cash flows (spread of the distribution), and price (compensation for uncertainty)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/105f2ec92493d36c47b641fc09e95aa5df2da03aa9630b7ddf251d0d3130ac7b.jpg)

# Bloomberg

FIS 5 10/25 <corp> YAS -> yields and spreads  
25-Feb-2016, spread vs T 1.625 2/26 was 280, OAS 287

- What is OAS? Option Adjusted Spread - Will discuss shortly
- History: GT10 <govt> FIS 5 10/25 <corp> SGIP - then "Actions - View Spread"

# Risk Premium From Market Yields

For FIS 31-dec-2015, decompose sensitivity into discounting and credit

- UST:  $2.25\%$  coupon, 15-nov-25  $\mathrm{P} = 99.84375$ ,  $\mathrm{Y} = 2.268\% \mathrm{stab}$  
FIS:  $5\%$  coupon, 15-oct-25 P=103.626, Y=4.536%Sab

Usually use approximation

- $rp \approx y - y_{ust}$  
- 227bp = 4.54% - 2.27%

Overall (risky) yield separates into two parts:

1. UST (risk-free) discounting  $(y_{ust})$  - overall market  
2. Risk premium  $(rp)$  - specific to FIS (or whatever company)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/183c87b4867d42addb9b7632fd6844060c496bd7724c533c31e0c28951af42c4.jpg)

# Alternative (less useful): Risk Premium in Dollars

Risk Premium  $(1 + rp)$  tells us value or price of uncertainty in rate or yield terms. Can also measure in up-front dollar terms

- Discount FIS at UST (risk-free) yield: what FIS would be if certain CFs  
FIS:  $5\%$  coupon, 15-oct-25 (31-dec-15)  $\mathrm{Y} = 4.536\%$ $\mathrm{P} = 103.626$

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>360 Semi</td><td>12.312015</td><td>10.152025</td><td>5</td><td>4.536</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>103.626</td></tr></table>

FIS:  $5\%$  coupon, 15-oct-25 (31-dec-15)  $\mathrm{Y} = 2.268\%$ $\mathrm{P} = 123.859$

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>360 Semi</td><td>12.312015</td><td>10.152025</td><td>5</td><td>2.268</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>123.859</td></tr></table>

Difference -  \$20.23 - is$  value of uncertainty

- But less useful than risk premium in yield (227bp)  
- 227bp applies every year, to any similar CFs

# 1.2 Bankruptcy & Default (notes, BKM 14.5)

# Contents

<table><tr><td>Bankruptcy (Legal Process) &amp; Default (Failure-to-Pay)
Talk about them together - related but separate concepts
Bankruptcy - legal process
· Laws for re-arrangement (disposition) of assets when cannot pay debts
· Chapter 11 (reorganization) - most common in US corporate bankruptcy
	- &quot;Chapter&quot; refers to the chapter of the US bankruptcy code.
	- &quot;Chapter 13&quot; (individuals), &quot;Chapter 7&quot; (liquidation), &quot;Chapter 9&quot; (municipality)
· Laws differ across countries
Default - failure to pay debts
· Breaking the &quot;promise to pay&quot; for a debt
Generally bankruptcy &amp; default go together
· When a corporation fails to pay (defaults or &quot;goes into default&quot;) then pushed into bankruptcy proceedings (process for re-assigning or selling assets)</td></tr><tr><td>Bankruptcy is a Wonderful Thing
Bankruptcy is a beautiful thing - part of the power of free markets
· Debt is a promise - we all know it may get broken
· Nothing wrong with bankruptcy, when try honestly and fail
What is bankruptcy? (Chapter 11 reorganization)
· Owners (shareholders) admit that the value of assets less than promises made
· Pass assets to debt-holders - debtholders become new owners
Simple act of bankruptcy not a &quot;cost&quot; - don&#x27;t get confused by loss in bankruptcy
· Enron (BKM p. 465) - at peak stock worth \$60bn+. By end-2001 worthless.
· Not \$60bn &quot;loss&quot; - Enron worthless at peak (fraud), we just didn&#x27;t know it.
	- Actually some &quot;shorters&quot; did know - huge service for all of us, hard work of ferre out problems the rest of us are too lazy to uncover
Bankruptcy is simple and wonderful part of capitalism</td></tr></table>

# Bankruptcy Costs

Bankruptcy does have costs, can be long & expensive process

- Direct costs - Pay lawyers, accountants
- Enron - \$757mn in legal, accounting, other  
 - Lehman - likely as much as \$1,500mn
- Indirect costs - many - eg customers, employees leave
- Big issue in 2008 financial crisis 
- huge disruption when financial firm goes under

# Evidence

- Difficult to estimate, but cost might be something like  $3\%$  of total (book) assets,  $20\%$  of market value of equity  
- Best evidence - reluctance of creditors to push insolvent firms (MV assets  $<$  MV liabilities) into bankruptcy (transfer assets to creditors)
- Often, creditors would rather have managers and shareholders try to get back to health

# Corporate & Sovereign Default

Corporate Default & Bankruptcy

- Transfer of ownership  
- Bankruptcy is a beautiful thing - allows firms to make mistakes  
Depends on national laws - legal ownership & transfer

# Sovereign Default

State refuses to pay  

- But creditors cannot take ownership

-In general-except see Newfoundland 1928-1933 (R&R p.81)  
- "sovereign but bankrupt Newfoundland absorbed by Canada"

# Default vs Re-Scheduling

Default is non-payment, Re-Scheduling changing the terms

Economically the same

- Default: usually get something back  
- Re-Scheduling: change the terms (eg lower coupon) - effective default

Greece officially launched a bond swap Friday [24-feb-2012], aiming to wipe 107 billion euros (\(142 billion) off its 350-billion-euro debt bill. The debt write-down, also known as haircut, hits private investors hard.

As part of the deal [debt swap] – also known as a haircut – private creditors are asked to trade in their Greek bonds for new ones offering lower interest rates and longer maturities [pushing the €100 principal further away].

History: France in early 1700s: reduced coupon on rentes

Britain: often reduced interest on Consols – but redeemable

Rates  $3\%$ , £4 annuity worth £133.  

- Redeem for £100, re-issue new £3 annuity. Or just reduce to £3

# 1. Default vs restructuring. Re-scheduling

(a) p 61. Greece: "As part of the deal [debt swap] - also known as a haircut - private creditors are asked to trade in their Greek bonds for new ones offering lower interest rates and longer maturities [pushing the €100 principal further away]. Bondholders are expected to take a nominal loss of \(53.5\%\) on their holdings, which equates to a real loss of 73 to \(74\%\)." (web, http://www.dw.com/en/greek-creditors-receive-official-haircut-Notification/a-15767530, early 2012) "Greece officially launched a bond swap Friday [24-feb-2012], aiming to wipe 107 billion euros (\(142 billion) off its 350-billion-euro debt bill. The debt write-down, also known as haircut, hits private investors hard."

(b) France: reduced coupons on rentes - a form of re-scheduling and thus default  
(c) Britain: often reduced coupon on Consols

i. But this is interesting - not a re-scheduling.  
ii. Consols redeemable annuities – callable at £100. Often the government would find it easier to have investors take a reduce coupon rather than redeem the existing bonds and then re-issue at new (lower) coupon  
iii. Rates  $3\%$ : Annuity of £4 is worth  $\frac{\mathcal{L}4}{.03} = \frac{1}{2}$  133. Can redeem at £100, then re-issue new annuity at £3 coupon, worth £100.

Nations Default Often - R&R Figure 6.2  

<table><tr><td colspan="5">Table 3. External Default and Rescheduling: Africa, Europe, and Latin America, Nineteenth Century</td></tr><tr><td rowspan="2">Country/date of independence1</td><td colspan="4">Dates</td></tr><tr><td>1800–1824</td><td>1825–1849</td><td>1850–1874</td><td>1875–1899</td></tr><tr><td>Africa</td><td></td><td></td><td></td><td></td></tr><tr><td>Egypt, 1831</td><td></td><td></td><td></td><td>1876</td></tr><tr><td>Tunisia</td><td></td><td></td><td>1867</td><td></td></tr><tr><td>Europe</td><td></td><td></td><td></td><td></td></tr><tr><td>Austria–Hungary</td><td>1802, 1805, 1811, 1816</td><td></td><td>1868</td><td></td></tr><tr><td>France</td><td>1812</td><td></td><td></td><td></td></tr><tr><td>Germany</td><td></td><td></td><td></td><td></td></tr><tr><td>Hesse</td><td>1814</td><td></td><td></td><td></td></tr><tr><td>Prussia</td><td>1807, 1813</td><td></td><td></td><td></td></tr><tr><td>Schleswig–Holstein</td><td></td><td></td><td>1850</td><td></td></tr><tr><td>Westphalia</td><td>1812</td><td></td><td></td><td></td></tr><tr><td>Greece, 1829</td><td></td><td>1826, 1843</td><td>1860</td><td>1893</td></tr><tr><td>Netherlands</td><td>1814</td><td></td><td></td><td></td></tr><tr><td>Portugal</td><td></td><td>1828, 1837, 1841, 1845</td><td>1852</td><td>1890</td></tr><tr><td>Russia</td><td></td><td>1839</td><td></td><td>1885</td></tr><tr><td>Spain</td><td>1809, 1820</td><td>1831, 1834</td><td>1851, 1867, 1872</td><td>1882</td></tr><tr><td>Sweden</td><td>1812</td><td></td><td></td><td></td></tr><tr><td>Turkey</td><td></td><td></td><td></td><td>1876</td></tr></table>

[Reinhart and Rogoff(2011)] Figure 6.2. This copy from [Reinhart and Rogoff(2008)]

# And Into 20th c - R&R Figure 6.4

Table 5. Default and Rescheduling: Europe, and Latin America, Twentieth Century-2006  

<table><tr><td rowspan="2">Country/date of independence1</td><td colspan="4">Dates</td></tr><tr><td>1900–1824</td><td>1925–1949</td><td>1950–1974</td><td>1975–2006</td></tr><tr><td>Europe</td><td></td><td></td><td></td><td></td></tr><tr><td>Austria</td><td></td><td>1938, 1940</td><td></td><td></td></tr><tr><td>Germany</td><td></td><td>1932, 1939</td><td></td><td></td></tr><tr><td>Greece</td><td></td><td>1932</td><td></td><td></td></tr><tr><td>Hungary, 1918</td><td></td><td>1932, 1941</td><td></td><td></td></tr><tr><td>Poland, 1918</td><td></td><td>1936, 1940</td><td></td><td>1981</td></tr><tr><td>Romania</td><td></td><td>1933</td><td></td><td>1981, 1986</td></tr><tr><td>Russia</td><td>1918</td><td></td><td></td><td>1991, 1998</td></tr><tr><td>Turkey</td><td>1915</td><td>1931, 1940</td><td></td><td>1978, 1982</td></tr><tr><td>Latin America</td><td></td><td></td><td></td><td></td></tr><tr><td>Argentina</td><td></td><td></td><td>1951, 1956</td><td>1982, 1989, 2001</td></tr><tr><td>Bolivia</td><td></td><td>1931</td><td></td><td>1980, 1986, 1989</td></tr><tr><td>Brazil</td><td>1902, 1914</td><td>1931, 1937</td><td>1961, 1964</td><td>1983</td></tr><tr><td>Chile</td><td></td><td>1931</td><td>1961, 1963, 1966, 1972, 1974</td><td>1983</td></tr></table>

# [Reinhart and Rogoff(2011)] Figure 6.4. This copy from [Reinhart and Rogoff(2008)]

# Default Very Common - R&R Figure 5.1

- Defaults common - be cautious with debt and borrowing  
- But "Serial Default" etc. symptoms of more fundamental causes.

Sovereign External Debt: 1800-2006  
Percent of Countries in Default or Restructuring  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/cac67c55ecad20791f25bcdc26e347fb3544ebe1234059f529e3559d913b4c9e.jpg)  
Sources: Lindert and Morton (1989), Macdonald (2003), Purcell and Kaufman (1993), Reinhart, Rogoff, and Savastano (2003), Suter (1992), and Standard and Poor's (various years).  
Notes: Sample size includes all countries, out of a total of sixty six listed in Table 1, that were independent states in the given year.

[Reinhart and Rogoff(2011)] Figure 5.1. This copy from [Reinhart and Rogoff(2008)]

# 1.3 Credit Spreads - Market Measure of Default Uncertainty - Revisit Sovereign Default

# Contents

# Credit Spread: Market Measure of "Default"

Revisit Sovereign Spreads from Lecture 2

Investors not foolish - recognize that firms (and nations) may default

Markets embed probability and loss from default

- Remember, "risky yield" measures UST (certainty yield, often called "risk free") & risk premium  
- $y_{\text{risky}} = \text{ust} + r p$  or more accurately  $(1 + y_{\text{risky}}) = (1 + \text{ust})(1 + r p)$

More risky countries higher risk premium, higher yield (3-oct-18 from FT)

<table><tr><td></td><td>Maturity</td><td>Coupon</td><td>S&amp;P rating</td><td>Price</td><td>Yield</td><td>Spread</td></tr><tr><td>Peru</td><td>3/29/19</td><td>7.125</td><td>BBB+</td><td>104.40</td><td>2.60%</td><td>34bp</td></tr><tr><td>Brazil</td><td>1/31/23</td><td>2.63</td><td>BB-</td><td>91.40</td><td>4.89%</td><td>195bp</td></tr><tr><td>Turkey</td><td>3/23</td><td>3.25</td><td>BB</td><td>86.76</td><td>6.73%</td><td>379bp</td></tr></table>

Spread measures market's perception (and valuation) for uncertainty

Brazil: low coupon but low price  $\Rightarrow$  high yield: 195bp over UST

- Always look at yield as spread to bond with known CFs (UST)

# 3-oct-18 from FT

# Remember CF Adjustment Idea

- Start with cash flow distribution  
- Use expected utility to get the CE (single, certainty equivalent CF)  
- Adjust the original CFs until the average (or promised) CF from the distribution equals the CE  
Write the adjustment as a ratio  $1 / (1 + \mathrm{rp})$  
- Apply the adjustment & discounting together: risk-adjusted discounting

$$
P V = \frac {C E}{1 + u s t} = \frac {C F _ {\text {o r i g}} ^ {\text {p r o m}}}{{\left(1 + y _ {\text {r i s k y}}\right)}} = \frac {C F _ {\text {o r i g}} ^ {\text {p r o m}}}{{\left(1 + u s t\right)} {\left(1 + r p\right)}}
$$

<table><tr><td></td><td>Maturity</td><td>Coupon</td><td>S&amp;P rating</td><td>Price</td><td>Yield</td><td>Spread</td></tr><tr><td>Peru</td><td>3/29/19</td><td>7.125</td><td>BBB+</td><td>104.40</td><td>2.60%</td><td>34bp</td></tr><tr><td>Brazil</td><td>1/31/23</td><td>2.63</td><td>BB-</td><td>91.40</td><td>4.89%</td><td>195bp</td></tr><tr><td>Turkey</td><td>3/23</td><td>3.25</td><td>BB</td><td>86.76</td><td>6.73%</td><td>379bp</td></tr></table>

We get  $rp$  by: Market Price  $\rightarrow$  Risk-adjusted yield  $\rightarrow$  Risk Premium

Brazil: Market Price  $\rightarrow$  Risk-adjusted yield  $\rightarrow$  Risk Premium  $= 195\mathrm{bp}$

# Let's Apply CF Adjustment to Brazil

- Adjust CFs as a ratio  $1 / (1 + \mathrm{rp})$  
- Apply the adjustment & discounting separately: first adjust CFs, then discount

$$
P V = \frac {C E}{1 + u s t} = \frac {C F _ {\text {o r i g}} ^ {\text {p r o m}} / 1 + r p}{1 + u s t}
$$

- Let's adjust Brazil CFs: 1/1.01195 per year  
- Promised CFs reduced year-by-year: FV is 91.68 =  $\frac{100}{(1.0195)^{4.5}}$  
- Discounting at UST, we get today's PV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/958ec6af8d332faae801ae5c78bbf4b00481fef33646f7ad1a421ae870007183.jpg)

<table><tr><td></td><td>Maturity</td><td>Coupon</td><td>S&amp;P rating</td><td>Price</td><td>Yield</td><td>Spread</td></tr><tr><td>Peru</td><td>3/29/19</td><td>7.125</td><td>BBB+</td><td>104.40</td><td>2.60%</td><td>34bp</td></tr><tr><td>Brazil</td><td>1/31/23</td><td>2.63</td><td>BB-</td><td>91.40</td><td>4.89%</td><td>195bp</td></tr><tr><td>Turkey</td><td>3/23</td><td>3.25</td><td>BB</td><td>86.76</td><td>6.73%</td><td>379bp</td></tr></table>

# Credit Spread: Market Measure of "Default"

"Credit Spread": yield relative to low-risk yield - UST

<table><tr><td>Oct-18</td><td>Maturity</td><td>Coupon</td><td>S&amp;P rating</td><td>Price</td><td>Yield</td><td>Spread</td></tr><tr><td>Peru</td><td>3/29/19</td><td>7.125</td><td>BBB+</td><td>104.40</td><td>2.60%</td><td>34bp</td></tr><tr><td>Brazil</td><td>1/31/23</td><td>2.63</td><td>BB-</td><td>91.40</td><td>4.89%</td><td>195bp</td></tr><tr><td>Turkey</td><td>3/23</td><td>3.25</td><td>BB</td><td>86.76</td><td>6.73%</td><td>379bp</td></tr></table>

Measure relative to "certainty yield" for known CF - UST

Compensation for extra risk of default (over UST), set by market

- Brazil 1/23: 5yr UST  $2.94\%$ . Spread  $= 4.89 - 2.94 = 1.95\%$  or 195bp

Details on credit spread (risk-premium) calculation

$$
1 + Y _ {r i s k y} = (1 + u s t) (1 + r p) = 1 + u s t + r p + u s t \cdot r p \approx 1 + u s t + r p \Rightarrow r p \approx Y _ {r i s k y} - u s t
$$

$$
1 + Y _ {B r a z i l} = \left(1 + Y _ {U S T}\right) (1 + r p) \approx 1 + Y _ {U S T} + r p \Rightarrow r p \approx Y _ {B r a z i l} - Y _ {U S T}
$$

$$
r p _ {a p p r o x} \approx 4.89 \% - 2.94 \% = 1.95 \% o r 195 b p
$$

$$
r p _ {p e f e c t} = \frac {4.89 \% - 2.94 \%}{1.0294} = 1.89 \% \text{or} 189 b p
$$

Turkey: Higher spread, market says more chance of default

- Believe market before credit-rating agencies  
Rating agencies say Brazil BB-, Turkey BB  
Market says Brazil 195bp, Turkey 379bp

# Term Structure of Default Spread

Credit Spreads differ across maturity as well as across issuers

- Differences bigger and more important across issuers

<table><tr><td></td><td>Maturity</td><td>Coupon</td><td>S&amp;P rating</td><td>Price</td><td>Yield</td><td>Spread</td></tr><tr><td>Peru</td><td>3/29/19</td><td>7.125</td><td>BBB+</td><td>104.40</td><td>2.60%</td><td>34bp</td></tr><tr><td>Peru</td><td>8/27</td><td>4.13</td><td>BBB+</td><td>103.5</td><td>3.56%</td><td>80bp</td></tr><tr><td>Brazil</td><td>1/31/23</td><td>2.63</td><td>BB-</td><td>91.40</td><td>4.89%</td><td>195bp</td></tr><tr><td>Brazil</td><td>2/47</td><td>5.63</td><td>BB-</td><td>88.15</td><td>5.55%</td><td>335bp</td></tr></table>

Term structure (maturity) differences due to changing likelihood over time

- Often see rising pattern - more and better knowledge about close-in events  
- Could also go other way - falling risk premium
- Big events close in, then problems get better  
- Don't make mistake to think premium rises because of longer maturity: Risk premium measures per year compensation for uncertainty

NB: 3-oct-18 from FT gives price and yield for Brazil  $5.63\%$  of 2/47 (as above) but does not report the spread to UST. They report the UST  $2.75\%$  of 11/47 as yielding  $3.20\%$ , which gives spread shown above.

# Credit Spread for Europe

Germany is the "safe" country

Measure France, Italy, Greece relative to Germany (3-oct-18 from FT)

<table><tr><td></td><td>Maturity</td><td>Coupon</td><td>Price</td><td>Yield</td><td>Spread</td><td>Intensity</td><td>Prob.def)</td></tr><tr><td>Greece</td><td>1/28</td><td>3.75</td><td>96.59</td><td>4.20%</td><td>380bp</td><td>5.31</td><td>39%</td></tr><tr><td>Germany</td><td>7/28</td><td>4.75</td><td>141.47</td><td>0.40</td><td></td><td></td><td></td></tr><tr><td>France</td><td>5/28</td><td>0.75</td><td>100.01</td><td>0.75</td><td>35bp</td><td>0.50</td><td>5%</td></tr><tr><td>Italy</td><td>9/28</td><td>4.75</td><td>114.54</td><td>3.04</td><td>264bp</td><td>3.49</td><td>29%</td></tr></table>

- Higher spread gives investors compensation for possible default  
- Also - market tells us how much risk
- Can use to fit default model  
Market behaves as if Greece default probability  $39\%$  in 10yrs

As digression (for those interested in reading more), using risk-neutral valuation

- "Spread" is risk-premium method for valuing uncertain CFs  
- For some purposes, alternative method: "risk-neutral" valuation from CDS
- Build in CF dist'n: for Greece, each period roughly  $95\%$  chance pay,  $5\%$  don't

Valuation of uncertain CFs either by spread or "intensity":

- For Greece, 380bp spread  $\leftrightarrow$ $5.31\%$  intensity  
- Spread: for bonds, usual "promised" CFs  
- Intensity: for different CFs like CDS - see my "Practical Guide" in week 4 module

# Credit Spread for Europe

Germany is the "safe" country

Measure France, Italy, Spain, Belgium relative to Germany

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/577d9bb34fab79929ede8a9eda3f4ad7f50e6d0b5cc67ce0d23c66d1e4fbc9ff.jpg)  
Source: Haver Analytics

# 1. Digression on credit spreads

(a) Important point: default (or re-scheduling) does not mean investors are irrational or lose by investing in bonds that eventually default

i. Often investors receive a higher coupon or higher yield that compensates for the chance of default  
ii. Bonds, like any financial security, are simply a game of expectations - you pay today with some chance of getting money in the future.

(b) Credit spreads as of 24-apr-17 (from FT)

<table><tr><td></td><td>Maturity</td><td>Coupon</td><td>S&amp;P rating</td><td>Price</td><td>Yield</td><td>Spread</td></tr><tr><td>Brazil</td><td>1/18</td><td>8</td><td>BB</td><td>103.38</td><td>3.30%</td><td>207bp</td></tr><tr><td>Peru</td><td>3/29/19</td><td>7.125</td><td>BBB+</td><td>109.83</td><td>1.92%</td><td>69bp</td></tr><tr><td>Brazil</td><td>1/31/22</td><td>12.50</td><td>BB</td><td>111.029</td><td>9.49%</td><td>768bp</td></tr></table>

For Brazil 1/31/22 FT says 111.29 but price & yield don't match-  $9.49\% - > 111.029$

<table><tr><td></td><td>Maturity</td><td>Coupon</td><td>Price</td><td>Yield</td><td>Spread</td><td>Intensity</td><td>Prob.def)</td></tr><tr><td>Greece</td><td>4/1/19</td><td>4.75</td><td>97.07</td><td>6.38%</td><td>709bp</td><td>11.40</td><td>20.4%</td></tr><tr><td></td><td>2/27</td><td>3.00</td><td>75.75</td><td>6.36%</td><td>603bp</td><td>10.93</td><td>66.5%</td></tr><tr><td>Germany</td><td>4/19</td><td>0.50</td><td>102.39</td><td>-0.71%</td><td></td><td></td><td></td></tr><tr><td></td><td>2/27</td><td>0.25</td><td>99.23</td><td>0.33%</td><td></td><td></td><td></td></tr><tr><td>France</td><td>5/27</td><td>1.00</td><td>101.61</td><td>0.83%</td><td>50bp</td><td>0.82</td><td>7.9%</td></tr><tr><td>Italy</td><td>6/27</td><td>2.20</td><td>100.20</td><td>2.19%</td><td>186bp</td><td>3.04</td><td>26%</td></tr></table>

(c) Credit spreads as of 3-oct-18 (from FT)

<table><tr><td></td><td>Maturity</td><td>Coupon</td><td>S&amp;P rating</td><td>Price</td><td>Yield</td><td>Spread</td></tr><tr><td>Peru</td><td>3/29/19</td><td>7.125</td><td>BBB+</td><td>104.40</td><td>2.60%</td><td>34bp</td></tr><tr><td>Brazil</td><td>1/31/23</td><td>2.63</td><td>BB-</td><td>91.40</td><td>4.89%</td><td>195bp</td></tr><tr><td>Turkey</td><td>3/23</td><td>3.25</td><td>BB</td><td>86.76</td><td>6.73%</td><td>379bp</td></tr></table>

<table><tr><td></td><td>Maturity</td><td>Coupon</td><td>Price</td><td>Yield</td><td>Spread</td><td>Intensity</td><td>Prob.def)</td></tr><tr><td>Greece</td><td>1/28</td><td>3.75</td><td>96.59</td><td>4.20%</td><td>380bp</td><td>5.31</td><td>39%</td></tr><tr><td>Germany</td><td>7/28</td><td>4.75</td><td>141.47</td><td>0.40</td><td></td><td></td><td></td></tr><tr><td>France</td><td>5/28</td><td>0.75</td><td>100.01</td><td>0.75</td><td>35bp</td><td>0.50</td><td>5%</td></tr><tr><td>Italy</td><td>9/28</td><td>4.75</td><td>114.54</td><td>3.04</td><td>264bp</td><td>3.49</td><td>29%</td></tr></table>

(d) "Yield" correctly measures how much you earn - it trades of the lower price (you buy the bond cheaper) and higher coupon (you earn more each year).

i. Take the Brazil  $12.50 \%$ of 1/31/22. Very high coupon is good (earn a lot each year) but you have to pay a lot upfront (\$111.029). Net you earn 9.49%  
ii. Still, this is much higher than for US go'vt bonds - similar maturity UST is the  $1.875\%$  of 03/22 with yield of  $1.81\%$ . Spread of 768bp.

(e) Credit spread incorporates both the probability of the default and the value of the loss - how much investors are hurt by the loss.

i. Incorporates recovery - default usually does not mean you lose all \$100

# Valuation with Risk-Neutral Valuation

Everything we've done so far has been "risk-premium" where we adjust the CF distribution by adjusting the CFs. But alternatively we can adjust the probabilities and then use the distribution itself. We might want to do this when we want to look at the CFs. We could build a model where each coupon date (more technically each instant) there are two possibilities: 1) the bond defaults and pays a "recovery value"; 2) the bond continues to the next period.

For those interested in this kind of valuation (which is used for valuing Credit Default Swaps (CDS)) look at Section V in my "Practical Guide to Yield Curves …" on Canvas, or my paper at SSRN: https://papers.ssrn.com/abstract=1555118

# Spreads Change as Market Valuation of Credit Risk Changes

10-year US Corporate Spreads

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/c4ffa58a1ca6a54f7521ff5ef05f0d5a089fd6c74534d0e04a1484efbaa2eded.jpg)  
Changes in preferences for risk and expectations of default

# 1.4 Credit ratings (BMA 23.3 (custom Ch 8))

# Contents

1. What are credit ratings

(a) Agencies (3 big: S&P, Moody's, Fitch)  
(b) Ratings

2. Examples

(a) Some companies and ratings

3. Bond Ratings as Proxy for Credit Spread (slide already done)

# Bond Ratings & Credit Rating Agencies - Estimate Default

- Credit Rating Agencies study companies and new bond issues  
- Evaluate and predict probability of default, Assign letter grade

Three main firms (S&P & Moody's 80%):

- Standard & Poor's (S&P)  
Moody's Investors Service

Rate companies, countries, single bonds  

- Paid by company issuing bond - potential conflict of interest

Higher rating  $\longleftrightarrow$  lower prob default

- Assign letter-grade  
Higher Rating  $\leftrightarrow$  Lower Spread  
- Table shows spreads for some ratings

Huge debate about quality, conflict of interest

2008: Many mortgage securities rated AAA, defaulted

Long-Term ratings:

<table><tr><td></td><td>S&amp;P&amp;Fitch</td><td>Moody&#x27;s</td><td>Spread (2015)</td></tr><tr><td>Investment</td><td>AAA</td><td>Aaa</td><td></td></tr><tr><td>-</td><td>AA+</td><td>Aa1</td><td></td></tr><tr><td>-</td><td>AA</td><td>Aa2</td><td>138</td></tr><tr><td>-</td><td>AA-</td><td>Aa3</td><td></td></tr><tr><td>-</td><td>A+</td><td>A1</td><td></td></tr><tr><td>-</td><td>A</td><td>A2</td><td>172</td></tr><tr><td>-</td><td>A-</td><td>A3</td><td></td></tr><tr><td>-</td><td>BBB+</td><td>Baa1</td><td></td></tr><tr><td>-</td><td>BBB</td><td>Baa2</td><td>291</td></tr><tr><td>Investment</td><td>BBB-</td><td>Baa3</td><td></td></tr><tr><td>Speculative</td><td>BB+</td><td>Ba1</td><td></td></tr><tr><td>-</td><td>BB</td><td>Ba2</td><td>474</td></tr><tr><td></td><td>…</td><td>…</td><td></td></tr><tr><td>-</td><td>CCC</td><td>Caa2</td><td></td></tr></table>

Spreads shown in the table are for late 2015 or early 2016, taken from Bloomberg

# Bond Ratings & Credit Spread - Both Measure Default Risk

Remember: credit spread (risk premium) depends on  $CF$  distribution - uncertainty

- Embeds both uncertainty (probability of default) & risk (value of default)

Rating supposed to measure just probability of default

Biggest difference: spread comes from the market

- Both should move together - depend on default prob  
- Spread may move faster, embed up-to-minute information

Believe spread over rating

Example: Verizon vs BAC (Bank of America) in Oct 2010

- Verizon  $7.375\%$  of 9/12: A/A3, spread 64bp  
BAC  $4.88\%$  of 1/13: A/A2, spread 207bp  
Rating agencies say same risk, market says BAC much higher risk.

Example: Mortgage CDOs in 2005

- Trading CDOs (Collateralized Debt Obligations)  
- Rated AAA, spread 30-40bp over libor; AAA corporate bonds 5-10bp  
- Clearly not the same, and people knew mortgage risk was higher

# Complaints About Ratings - Corporate Bonds OK

Many complaints about ratings and rating agencies:

- Potential conflicts (bond issuers pay for ratings)  
- Regulated oligopoly  
- Horribly wrong about mortgages in 2008  
- Venturing into new products where agencies don't know as much
  - Potential for issuers (banks) to "game" agency models

Many of these criticisms valid

- And I would always trust market spread first: thousands or millions of people buying-and-selling, evaluating the company or bond

But for standard corporate bonds and sovereigns, agencies reliable

# 2 Risk-Neutral Valuation: Adjust Probabilities - Introduction to Options

# Contents

# Two Ways for Risk Adjustment: Adjust CFs or Adjust Probabilities

CFs: Standard method, adjust CFs by  $1 / (1 + rp)$  for "risk-adjusted discounting" & risk premium

- We need to use Certainty Equivalent (CE) from Expected Utility  
- Risk-adjusted discounting at  $(1 + u s t) \cdot (1 + r p)$

$$
E U = U \left(C E\right) = p \cdot u \left(C _ {o r i g} ^ {l o}\right) + (1 - p) \cdot u \left(C _ {o r i g} ^ {h i}\right) = u \left(p \cdot C _ {a d j} ^ {l o} + (1 - p) \cdot C _ {a d j} ^ {h i}\right)
$$

$$
C E = p \cdot C _ {a d j} ^ {l o} + (1 - p) \cdot C _ {a d j} ^ {h i} \neq p \cdot C _ {o r i g} ^ {l o} + (1 - p) \cdot C _ {o r i g} ^ {h i}
$$

Probabilities: Alternative: adjust probabilities for "risk-neutral discounting"

- Risk-neutral discounting at  $(1 + ust)$

$$
C E = p ^ {*} \cdot C _ {o r i g} ^ {l o} + (1 - p ^ {*}) \cdot C _ {o r i g} ^ {h i} \neq p \cdot C _ {o r i g} ^ {l o} + (1 - p) \cdot C _ {o r i g} ^ {h i}
$$

More complicated, but really useful for options

# Example: Adjust CFs or Adjust Probabilities

To make concrete, Constant Relative Risk Aversion function:  $u(C) = \frac{C^{1 - \gamma}}{1 - \gamma}$ ,  $\gamma = 8$

<table><tr><td></td><td>Low</td><td>Avg</td><td>High</td></tr><tr><td>Probability</td><td>1/2</td><td></td><td>1/2</td></tr><tr><td>CF Dist&#x27;n</td><td>$711.411</td><td>$800</td><td>\$888.59</td></tr><tr><td>Utility</td><td>-15.490E-22</td><td>-9.8E-22</td><td>-3.266E-22</td></tr><tr><td>Certainty Eqv</td><td></td><td>\$764.28</td><td></td></tr><tr><td>Adjust CFs</td><td>$679.66</td><td>$764.28</td><td>\$848.93</td></tr><tr><td>Probability</td><td>0.7016</td><td></td><td>0.2984</td></tr><tr><td>CF Dist&#x27;n</td><td>$711.411</td><td>$764.28</td><td>\$888.59</td></tr></table>

Our original CFs and expected utility give CE of \$764.28

Adjust distribution by one of two ways so dist'n gives CE:

- "Risk-adjusted discounting", Adjust CFs by  $1/1.0467$ , same probabilities, discount at  $(1 + ust) \cdot (1 + rp)$  
- "Risk-neutral discounting", Adjust probabilities, same CFs, discount at  $(1 + ust)$

# When to Adjust CFs or Adjust Probabilities?

Adjust CFs: When using promised or expected Cash Flows

- Promised CF or Expected CF summarize full distribution in one number  
- Risk premium  $(rp)$  adjusts Promised or Expected to Certainty Equivalent (CE)

Adjust Probabilities: When using the distribution itself

- Options: take only good outcomes (you pay upfront)  
- In our simple example: get to keep building in "good" outcome  
- Cannot use risk premium - look at only part of the distribution - only \$888.59

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/45f7ce35c0396a2881bce950885b6b417594fe370c1ec55a4189bc328b18d839.jpg)  
Value of Office Building

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/6aba5e06011a3a9ea62280f427ede771ec0ac1786b599075d22623626141f90d.jpg)  
Value of Office Building Risk-neutral probabilities

# Bonds (Risk-Adjusted) vs Options (Risk-Neutral)

Bond: Adjust Prom (Exp) CF via  $rp$

$$
P V = \frac {C E}{1 + u s t} = \frac {E x p C F}{(1 + u s t) \cdot (1 + r p)}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/8c01e6ac38748a2c0d0491a8544801f96225a8e7dbbff3e88ecad8bf3d81205f.jpg)

- Stick with promised CFs  
- Discount at  $y \approx  {ust} + {rp}$  
- Builds in CF adjustment & discounting

Option: Use part of dist'n

$$
P V _ {b o n d} = \frac {C E}{1 + u s t} = \frac {p ^ {*} \cdot C _ {o r i g} ^ {l o}}{(1 + u s t)} + \frac {(1 - p ^ {*}) \cdot C _ {o r i g} ^ {h i}}{(1 + u s t)}
$$

$$
P V _ {o p t i o n} = \frac {p ^ {*} \cdot C _ {o r i g} ^ {l o}}{(1 + u s t)} + \frac {(1 - p ^ {*}) \cdot C _ {o r i g} ^ {h i}}{(1 + u s t)}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/dc18b4d2d549508723e882e7f73b30a571a20d3da7f958e3490f0577a38cc615.jpg)

Work with any part of dist'n  
Discount at UST

# 3 Corporate Bonds (Sharpe 14.6)

# Contents

# Seniority, Security, Other Provisions

Corporate bonds open to default

Various mechanisms & tools to reduce or mitigate the chance and cost of default

Seniority: order of who gets paid

Corporations will issue many bonds, other debts  

- Need clear hierarchy of who gets paid when
- Taxes (gov't), then employees, then senior bonds, then junior, then equity

Security: collateral pledged (or not)

Other: Sinking fund, indenture restrictions on dividends, other

# Indenture

Legal contract that lays out Promised Payments and Protections Lays out various promises, regarding payments and protections:

- First: amount and dates for payments  
- Security: what (if any) assets pledged as collateral
- Restrictions and terms for any sale of pledged property
- Seniority: where this bonds falls in hierarchy  
- Plus restrictions on issuance of other bonds
- Other aspects:
- Sinking Fund  
- Dividend payment or other financial (business) restrictions & conditions
- Trustee - company (bank) that acts on behalf of bondholders, monitoring indenture provisions

# Indenture - Apple 2015 Bond (BKM fig 14.10)

# Comment

1. Interest of 3.45% will be payable on February 9 and August 9 of each year. Thus every 6 months each note will pay interest of (.0345/2) × $1,000 = $17.25.  
2. Investors will be repaid the \$1,000 face value in 2045.  
3. Moody's bond rating is Aa, the second-highest-quality rating.  
4. A trustee is appointed to look after investors' interest.

# Description of Bond

ISSUE:Apple Inc.3.45% Notes  
DUE: February 9, 2045  
RATING:Aa  
TRUSTEE: Issued under an indenture between Apple and The Bank of New York Mellon Trust Company

5. The bonds are registered. The registrar keeps a record of who owns the bonds.  
6. The company is not obliged to repay any of the bonds on a regular basis before maturity.

- REGISTERED: Issued in registered, book -entry form  
SINKING FUND: None

7. The company has the option to buy back the notes. The redemption price is the greater of \$1,000 or a price that is determined by the value of an equivalent Treasury bond.  
8. The notes are senior debt, ranking equally with all Apple's other unsecured senior debt.

CALLABLE: In whole or in part at any time  
SENIORITY

9. The notes are not secured; that is, no assets have been set aside to protect the noteholders in the event of default. However, if Apple sets aside assets to protect any other bondholders, the notes will also be secured by these assets. This is termed a negative pledge clause.
10. The principal amount of the issue was \$2 billion. The notes were sold at 99.1% of their principal value.  
11. The book runners are the managing underwriters to the issue and maintain the book of securities sold.

SECURITY: The notes are unsecured. However, "if Apple shall incur, assume or guarantee any Debt, … it will secure … the debt securities then outstanding equally and ratably with … such Debt."  
 OFFERED: \$2,000,000,000 at 99.11%

JOINT BOOK -RUNNING MANAGERS: Goldman,Sachs;Deutsche Bank Securities

# Indenture - Apple 2015 Bond (BKM fig 14.10)

8. The notes are senior debt, ranking equally with all Apple's other unsecured senior debt.

SENIORITY

9. The notes are not secured; that is, no assets have been set aside to protect the noteholders in the event of default. However, if Apple sets aside assets to protect any other bondholders, the notes will also be secured by these assets. This is termed a negative pledge clause.

SECURITY: The notes are unsecured. However, "if Apple shall incur, assume or guarantee any Debt, … it will secure … the debt securities then outstanding equally and ratably with … such Debt."

10. The principal amount of the issue was \$2 billion. The notes were sold at 99.11% of their principal value.

OFFERED: \$2,000,000,000 at 99.11%

11. The book runners are the managing underwriters to the issue and maintain the book of securities sold.

JOINT BOOK -RUNNING MANAGERS: Goldman,Sachs;Deutsche Bank Securities

# Types of Bonds

# Mortgage Bonds

- Not home mortgage - corporation pledges specific property  
- Example: corporate headquarters building

# Collateral Trust Bonds

- Backed by other securities held in trust  
- Example: securities (bonds & equities) of subsidiary pledged

# Equipment Obligations

- Equipment Trust Certificates, backed by specific equipment  
Example:airplanes

# Debentures

- General obligations of the company

# Call Provisions

# Call provision:

- Issuer (company) has right to redeem bond prior to maturity  
- Usually at \$100, often after 5 yrs

# Call gives flexibility, can save company money

# Clearly, investors will make company pay up-front

Higher coupon, lower price

# Example: 10yr  $5\%$  bond (semi-annual) callable starting yr 5

- Issued at par (\$100), yield = 5% sab

# At yr 5 (5yrs to go), what is price of 5yr bond?

Market yield  $7\%$  sab: Price  $= 91.68 - \mathrm{co}$  does not redeem  
Market yield  $3\%$  sab: Price  $= 109.22 - \mathrm{co}$  does redeem

- Company can issue new bond,  $3\%$  coupon - save money

# Sinking Fund

Corporate bonds almost always bullets

- Periodic coupon, then final \$100 payment

Loads up big payment at end

Sinking Fund:

- Company puts money aside each year (deposits with trustee)  
- Trustee purchases bonds in open market

Mechanism to spread repayment over time

But bond structure is still simple bullet bond

# References

[Reinhart and Rogoff(2008)] Carmen M. Reinhart and Kenneth S. Rogoff. This Time is Different: A Panoramic View of Eight Centuries of Financial Crises. Working Paper 13882, National Bureau of Economic Research, March 2008. URL http://www.nber.org/papers/w13882.  
[Reinhart and Rogoff(2011)] Carmen M. Reinhart and Kenneth S. Rogoff. This Time is Different: Eight Centuries of Financial Folly. Princeton University Press, Princeton, NJ, reprint edition, August 2011. ISBN 978-0-691-15264-6. URL http://www.reinhartandrogoff.com. {:original-date: 2009} Bookstore.

# PV for Uncertain Cash Flows


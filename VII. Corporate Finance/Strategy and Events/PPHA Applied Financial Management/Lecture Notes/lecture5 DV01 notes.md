---
title: "Bond Sensitivity: BPV, DV01, and Duration"
parent_directory: "VII. Corporate Finance/Strategy and Events/PPHA Applied Financial Management/Lecture Notes"
formatted: "2025-12-21 03:00:00 PM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - bond sensitivity
  - bpv dv01 duration
  - yield price relationship
  - bond valuation
  - interest rate risk
secondary_tags:
  - basis point value
  - dollar value 01
  - duration measures
  - yield changes
  - bond hedging
  - compounding frequency
  - periodic payments
  - short selling leverage
  - market efficiency
  - hp calculator
cssclasses: academia
---

# Bond Sensitivity: BPV, DV01, and Duration

**Lecture 5**  
**Thomas S. Coleman**  
**2 April 2023; Draft April 8, 2023**

## Outline

## Contents

- 1 Periodic Payments & Compounding - Duplicated from Lecture 4
- 2 Why We Use Yield Instead of Price
- 3 BPV, DV01, & Duration
  - 3.1 Converting from Yield to Price Changes
  - 3.2 BPV & DV01: Bond Sensitivity
  - 3.3 Duration
  - 3.4 BPV / DV01 for Predicted P&L and Hedging
  - 3.5 Decomposing P&L - Pure Discounting & Spread
- 4 A Digression on Shorting & Leverage
  - 4.1 Shorting (BKM 3.8, 3.9)
  - 4.2 Leverage
- 5 Digression on HP Calculator SOLVE Menu

# 1 Periodic Payments & Compounding - Duplicated from Lecture 4

# Yield: Always "Per Year"

Very convenient to express price today vs tomorrow as yield:  $\frac{1}{1 + y}$

- So far we haven't said if "tomorrow" is next day or next year

Almost always express yield "per year":  $PV = \frac{FV}{(1 + y)^n}$  with  $n = \text{no yrs}$ .

Example: 4yr  $6.5\%$  coupon bond,  $\mathrm{P} = 99.658$ :

$$
99.658 = \frac{6.5}{(1 + y_{ab})} + \frac{6.5}{(1 + y_{ab})^{2}} + \frac{6.5}{(1 + y_{ab})^{3}} + \frac{6.5}{(1 + y_{ab})^{4}} + \frac{100}{(1 + y_{ab})^{4}}
$$

TVM does this automatically, gives Yield (Interest) per yr (I%YR)

- Make sure set right: <Blue> <MAIN> <FIN> <TVM> <1 P/YR> <END>

|  | N | I%YR | PV | PMT | FV |
|---|----|------|----|-----|----|
| Given | 4 |  | -99.658 | 6.5 | 100 |
| Solve For |  | 6.6 |  |  |  |

# Periodic CFs (Not 1 per year)

Example: 4yr  $6.5\%$  coupon bond,  $\mathrm{P} = 99.658 - 6.5\% /\mathrm{yr}$

$$
9 9. 6 5 8 = \frac {6 . 5}{\left(1 + y _ {a b}\right)} + \frac {6 . 5}{\left(1 + y _ {a b}\right) ^ {2}} + \frac {6 . 5}{\left(1 + y _ {a b}\right) ^ {3}} + \frac {6 . 5}{\left(1 + y _ {a b}\right) ^ {4}} + \frac {1 0 0}{\left(1 + y _ {a b}\right) ^ {4}}
$$

But what if pays every 6mths (like UST)? Get \$3.25 every half-year.

- Seems natural to use annual rate, for "number of years" (may be 1/2 year):

$$
99.658 = \frac{3.25}{(1 + y_{ab})^{1/2}} + \frac{3.25}{(1 + y_{ab})^{1}} + \frac{3.25}{(1 + y_{ab})^{1.5}} + \dots + \frac{3.25}{(1 + y_{ab})^{4}} + \frac{100}{(1 + y_{ab})^{4}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/aa5f2d12ffb321dddb5435256fe32efe911470dc06558f56547a2c72f37fb6f7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/23027bc5b07080a9ab5d8200d3e025f4ee14c54c23ca86381cf2d019544f7e21.jpg)

# But No - Periodic CFs - Discount at Same Freq as Payment

Example: 4yr semi-annual  $6.5\%$  coupon bond,  $\mathrm{P} = 99.658 - 3.25\% / 6\mathrm{mth}$

- Seems natural to use annual rate, discount "number of years":

$$
9 9. 6 5 8 = \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {1 / 2}} + \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {1}} + \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {1 . 5}} + \dots + \frac {3 . 2 5}{\left(1 + y _ {a b}\right) ^ {4}} + \frac {1 0 0}{\left(1 + y _ {a b}\right) ^ {4}}
$$

But that's far too simple. Instead, discount at same freq as payment:

$$
9 9. 6 5 8 = \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {1}} + \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {2}} + \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {3}} + \dots + \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {8}} + \frac {1 0 0}{\left(1 + y _ {s a b} / 2\right) ^ {8}}
$$

Discount at a 6-mth (half-yr) rate,  $y_{\text{stab}} / 2$

- 1st payment in 1 half-yr,  $\frac{1}{1 + y s a b / 2}$  
- 2nd payment in 2 half-yrs,  \$1 / (1 + ySab / 2)^{2}$  
- etc up to 8th payment (4 yrs)

Why  $y_{\text{stab}} / 2$ ? Report "annual" rate

- Discount at half-yr rate  $y_{sab} / 2$ , but quote "annual"  $y_{sab} = 2 \cdot y_{sab} / 2$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/6c644311eba5ff59d0355f5ade095f68a1785477d06036b3e636fb46c8fb41a0.jpg)

# Periodic CFs - 4 yr Bond Example

Example: 4yr semi-annual  $6.5\%$  coupon bond,  $\mathrm{P} = 99.658 - 3.25\% / 6\mathrm{mth}$

$$
9 9. 6 5 8 = \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {1}} + \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {2}} + \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {3}} + \dots + \frac {3 . 2 5}{\left(1 + y _ {s a b} / 2\right) ^ {8}} + \frac {1 0 0}{\left(1 + y _ {s a b} / 2\right) ^ {8}}
$$

Annual, 4yrs,  $6.5\%/\mathrm{yr}$ : <Blue> <MAIN> <FIN> <TVM> <1 P/YR>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

Semi-annual, 4yrs,  $3.25\%$  /yr:  $<  1$  P/YR>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>8</td><td></td><td>-99.658</td><td>3.25</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>3.299</td><td></td><td></td><td></td></tr></table>

Semi-annual, 4yrs,  $3.25\%$  /yr:  $<  2$  P/YR>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>8</td><td></td><td>-99.658</td><td>3.25</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.599</td><td></td><td></td><td></td></tr></table>

$< 2\mathrm{P} / \mathrm{YR} >$  only adjusts the I%YR

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/cf4d788786adde41beca9bb2954d3798b796b0f297d1005e88ac86f9307a78a3.jpg)

# Don't Be Fooled: 4yr Annual  $\neq$  4yr Semi-Annual

Look the 2 bonds, same price but different coupon

4yr semi bond more valuable  

- Get same total CF, but get CF sooner

Annual, 4yrs,  $6.5\%/\mathrm{yr}$ : <1 P/YR>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

$y_{ab} = 6.6\%$  - annual discount rate (yield)

Semi-annual, 4yrs,  $3.25\%$  /yr:  $<  2\mathrm{P} / \mathrm{YR}>$

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>8</td><td></td><td>-99.658</td><td>3.25</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.599</td><td></td><td></td><td></td></tr></table>

$y_{sab} = 6.599\%$  - semi-annual discount rate  $\times 2$

$y_{ab}$  &  $y_{sab}$  look the same, but fundamentally different

- Semi-annual bond more valuable: pay same (\$99.658) but get CFs sooner

Can only compare when convert from  $y_{sab}$  to  $y_{ab}$  (or vice-versa)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/1fccabde629ac1e50d423f51ed8276fd6b1ae22f66a10d2b5cd3b16ca4c16ca3.jpg)

# Complication: Compounding!

Among the most difficult things you'll learn - compounding is confusing You can quote the yield on various bases:

Annual: (aka "ab") annual rate compounded by years

Semi-annual: (aka "sab") semi-annual rate compounded by half-years

$$
\$ 100 in 1yr: \begin{array}{c c} a n n u a l & s e m i - a n n u a l \\ 92.59 = \frac {1 0 0}{(1 + . 0 8)} & 92.59 = \frac {1 0 0}{(1 + . 0 7 8 4 6 / 2) ^ {2}} \end{array}
$$

CFs same (that's what we buy & sell).

- "Yield" is convenient way to write PV  $< ->$  FV relations  
- Compounding and "basis" is code to tell you how to write PV relation

AND, everyone likes to see an "annual" rate, so write

$$
P V = \frac {F V}{\left(1 + y _ {a b}\right) ^ {Y _ {r}}} \quad P V = \frac {F V}{\left(1 + y _ {s a b} / 2\right) ^ {2 * Y _ {r}}}
$$

This gives  $y_{sab} = .07846 = 2^{*}.03923$

# Some Tips on Compounding

The most common "bases" or compounding frequencies are:

1. Annual or  $ab$  or annual bond:  $PV = \frac{FV}{(1 + y_{ab})^{Yr}}$  
- European gov't bonds, some corporates

2. Semi-annual or  $sab$  or semi-annual bond:  $PV = \frac{FV}{(1 + y_{\text{stab}} / 2)^{2 * Y_r}}$  
USgov'tand corporate bonds

3. Monthly or  $mb$  or monthly bond:  $PV = \frac{FV}{(1 + y_{mb} / 12)^{12*Yr}}$

- mortgage bonds

NEVER, ever quote a rate without saying what basis  $(ab,sab)$

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
y _ {a b} = \left(1 + y _ {s a b} / 2\right) ^ {2} - 1 \quad y _ {s a b} = 2 \cdot \left(\sqrt {1 + y _ {a b}} - 1\right)
$$

Build HP SOLVER equation:

$$
1 + y a b \div 1 0 0 = (1 + y s a b \div 2 0 0) ^ {\wedge} 2
$$

# Compounding: In-Class Exercise 1

Annual, 4yrs,  $6.5\%/\mathrm{yr}$ : <1 P/YR>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

Semi-annual, 4yrs,  $3.25\%/\mathrm{yr}$ :  $< 2\mathrm{P} / \mathrm{YR}>$

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>8</td><td></td><td>-99.658</td><td>3.25</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.599</td><td></td><td></td><td></td></tr></table>

But  $y_{ab} \& y_{sa}$  fundamentally different

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

$6.60\% \mathrm{ab} \rightarrow$  lower when sab (6.49%sab)

Convert to  $y_{ab}$  from  $y_{sab} = 6.599\%$ :

$$
y _ {a b} = (1 +. 0 6 5 9 9 / 2) ^ {2} - 1 = . 0 6 7 0 8
$$

$6.599\% \mathrm{ab} \rightarrow$  higher when ab (6.708%ab)

Now we see that, indeed, semi-annual bond is higher yield:

- Annual bond:  $6.60\%$ ab or  $6.49\%$  sab  
- Semi-annual:  $6.708\%$ ab or  $6.599\%$ Sab

Always compare bonds on same basis

# Compounding: In-Class Exercise 2

Today's CF (PV) = \$89, 2 years CF (FV) = \$100.

$$
\begin{array}{c c} a n n u a l & s e m i - a n n u a l \\ P V = \frac {F V}{(1 + y _ {a b}) ^ {Y _ {r}}} & P V = \frac {F V}{(1 + y _ {s a b} / 2) ^ {2 * Y _ {r}}} \end{array}
$$

1. What is  $y_{ab}$ ?  $y_{ab} = .06$

$$
P V = \frac {F V}{\left(1 + y _ {a b}\right) ^ {Y r}} \quad 8 9 = \frac {1 0 0}{\left(1 + y _ {a b}\right) ^ {2}} \quad \left(1 + y _ {a b}\right) = \sqrt {\frac {1 0 0}{8 9}}
$$

2. What is  $y_{\text{stab}}$ ?  $y_{\text{stab}} = .05912$  ( $y_{\text{stab}} / 2 = .029562$ )

$$
P V = \frac {F V}{\left(1 + y _ {s a b} / 2\right) ^ {2 * Y r}} \quad 8 9 = \frac {1 0 0}{\left(1 + y _ {s a b} / 2\right) ^ {4}} \quad \left(1 + y _ {s a b} / 2\right) = \sqrt [ 4 ]{\frac {1 0 0}{8 9}}
$$

# Compounding: In-Class Exercise 3

$$
\left(1 + y _ {a b}\right) = \left(1 + y _ {s a b} / 2\right) ^ {2}
$$

$$
y _ {a b} = \left(1 + y _ {s a b} / 2\right) ^ {2} - 1 \quad y _ {s a b} = 2 \cdot \left(\sqrt {1 + y _ {a b}} - 1\right)
$$

<table><tr><td>yab</td><td>ysab</td></tr><tr><td>.08</td><td>.07846</td></tr><tr><td>.05</td><td>.04939</td></tr><tr><td>.0816</td><td>.08</td></tr><tr><td>.050625</td><td>.05</td></tr><tr><td>.1025</td><td>.10</td></tr></table>

- ALWAYS compare like-with-like.  $8\%$  ab is not  $8\%$  sab  
- And it is non-linear: Doubling  $y_{sab}$  slightly more than doubles  $y_{ab}$ .

# 2 Why We Use Yield Instead of Price

# Contents

# Remember - Price vs Yield - Yield More Comparable

Yield has several advantages over price

- Comparable across bonds with different coupon, price, maturity

Let's compare 3 bonds (in-class exercise using TVM)

1. 4yr  $6.5\%$  bond,  $\mathrm{P} = 99.658$ , yield  $= 6.60$  
2. 4yr  $4\%$  bond,  $\mathrm{P} = 91.113 -$  low price does offset low coupon  
3. 6yr  $7\%$  bond,  $\mathrm{P} = 101.930$ , yield  $= 6.60$

# All these bonds are more-or-less same "value" (yield  $6.60\%$ )

Here we can compare three different bonds - same in value & how much we earn

- Yield means discounting: converting between present and future cash
- Flat yield-to-maturity not perfect - Generally "term structure" upward or downward sloping  
- Example: UST 2yr  $2.88\%$ , 10yr  $3.23\%$  (upward)  
- Later we look at "term structure of interest rates" and "yield curve"  
- But so much better than price alone 
- balances price vs coupon vs maturity

Yield is better way to think of "market price" than dollar price

- Just remember:  $\mathrm{P} \uparrow \& \mathrm{Y} \downarrow$

Yield-to-maturity isn't perfect, because generally there will be a "term-structure" meaning that CFs with different maturities are discounted at slightly different

- UST yields quoted in slide: 5-oct-2018 quotes, 2yr 2.75s of 30-sep-20, 10yr 2.875s of 15-aug-28

But YTM is pretty good, and for now we will use YTM, ignoring any issues about term structure

- Later in the course we will introduce "term structure of interest rates" or "yield curve"

# Yields: All Bonds Move Together

Yield good way to measure "market price"

Yields for different bonds similar & move together

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/de06caa379596363f45237528e771845da0c9ace71dc611a4214352345254388.jpg)

# 3 BPV, DV01, & Duration

# 3.1 Converting from Yield to Price Changes

# Contents

# Problem: Yield Good as "Market Price", But Need CFs & $s

Work with yield in thinking about market: Changes in yield  $\longleftrightarrow$  changes in market Problem:

- For profit & loss, need to translate from "changes in market" to "changes in CFs"  
 - Need sensitivity: change yield 1bp ⇒ how many $?  
- Different bonds have different sensitivity

# Solution:

Measure bond sensitivity:  $\frac{\partial PV}{\partial y}$  

- Translate  $\Delta_y \to \Delta_{\S}$  by  $\Delta_{\S} \approx \frac{\partial PV}{\partial y} \cdot \Delta_y$

Call the derivative BPV (basis point value) or DV01 (dollar value of an 01)

- BPV: \$100 bond, 100bp change in yields (1 percentage point)  
- DV01: your actual holding, 1bp change in yields

# 3.2 BPV & DV01: Bond Sensitivity

# Contents

# BPV & DV01: Bond Sensitivity

$$
B P V \& D V 0 1 = - \frac {\partial P V}{\partial y} \approx - \frac {P V (y + h) - P V (y - h)}{2 h}
$$

- Minus sign so positive (because  $\mathrm{P} \uparrow \& \mathrm{Y} \downarrow$  
- BPV: \$100 bond, 100bp change in yields (1 percentage point)  
- DV01: your actual holding, 1bp change in yields

Practical Calculation: bump yield up & down (by 5bp):

EXAMPLE: 4yr  $6.5\%$  bond, y=6.60%, BPV = -  $\frac{99.48788 - 99.82890}{0.10} = 3.41$

- Why  $\pm 5bp$ ? "not too big, not too small"

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>6.65</td><td></td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-99.48788</td><td></td><td></td></tr><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>6.55</td><td></td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-99.82890</td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/bd84bcffb3dd690904eb6a33195718ec085fee628486d117c8a2df75e022d3f4.jpg)

# BPV & DV01 for Our Sample Bonds

$$
B P V \& D V 0 1 = - \frac {\partial P V}{\partial y} \approx - \frac {P V (y + h) - P V (y - h)}{2 h}
$$

<table><tr><td>Coup</td><td>Mat</td><td>Prc</td><td>Yld</td><td>BPV</td><td>Amt</td><td>DV01</td></tr><tr><td>6.5%</td><td>4yr</td><td>99.658</td><td>6.60%</td><td>3.41</td><td>$1mn</td><td>341</td></tr><tr><td>4.0%</td><td>4yr</td><td>91.113</td><td>6.60%</td><td>3.22</td><td>$1mn</td><td>322</td></tr><tr><td>7.0%</td><td>6yr</td><td>101.93</td><td>6.60%</td><td>4.89</td><td>\$1mn</td><td>489</td></tr></table>

Getting units right is difficult

- BPV: \$100 bond, 100bp change in yield, number like 1.5, 3.41, 11.1  
 - DV01: BPV*Amt / 100*100 (100 for \$100 bond, 100 for 100bp)

# Some Notes on Definition and Measurement of BPV

There are many questions and confusions on how we define and how we calculate the BPV. Let's separate the Definition and the Calculation:

# Definition:

- BPV is the derivative of PV w.r.t. yield (changed in sign):  $BPV - \frac{\partial PV}{\partial y}$  
- But we have to define "PV of what?" and "per what change in yield?"
- For BPV we are saying "PV of a bond with \$100 notional, so FV=100" and "per one unit (one percentage point) change in yield" so we are writing yield as a percentage like 1.50% not as decimal like 0.015"  
- This means we are defining the PV as the derivative for "a \$100 bond, per one percentage point (or 100bp) change in yield"  
- This is our definition of the BPV, defining the units we are using (\(100 bond, 100bp change in yield)

# Calculation:

- Remember that the derivative is defined as the slope at a point and to be perfectly accurate we would use the rules of calculus to calculate the derivative  
- Let's focus on a simple bond, our 4-year  $6.5\%$  coupon bond. To be perfectly accurate we should write down the PV formula, and then use the rules of calculus to calculate the derivative. For our 4-year annual-coupon bond this would be:

$$
P V (y) = \frac {6 . 5}{(1 + y) ^ {1}} + \frac {6 . 5}{(1 + y) ^ {2}} + \frac {6 . 5}{(1 + y) ^ {3}} + \frac {6 . 5}{(1 + y) ^ {4}} + \frac {1 0 0}{(1 + y) ^ {4}}
$$

$$
\frac {\partial P V (y)}{\partial y} = \frac {- 1 \times 6 . 5}{(1 + y) ^ {2}} + \frac {- 2 \times 6 . 5}{(1 + y) ^ {3}} + \frac {- 3 \times 6 . 5}{(1 + y) ^ {4}} + \frac {- 4 \times 6 . 5}{(1 + y) ^ {5}} + \frac {- 4 \times 1 0 0}{(1 + y) ^ {5}}
$$

- This is messy, and gets to be very very difficult for anything beyond a simple bond  
- So instead, let's go back to the definition of the derivative:

$$
\frac {\partial P V (y)}{\partial y} = \lim  _ {h \rightarrow 0} \frac {P V (y + h) - P V (y)}{h}
$$

which says we bump the original value up a little (that  $h$ ), take the difference  $(PV(y + h) - PV(y))$  and then divide by  $h$  so that we measure the derivative per one unit change in  $y$ . We do this for smaller-and-smaller bumps  $h$  until we reach the limit.

- Let's do that, but instead of just bumping up, we can bump up and down. And instead of taking the limit (as  $h \to 0$ ) let's just use a small value for  $h$  (and remember to divide by  $2h$  because we are bumping both up and down):

$$
\frac {\partial P V (y)}{\partial y} \approx \frac {P V (y + h) - P V (y - h)}{2 h}
$$

This is called "finite different approximation" and is a standard way to calculate an approximation to the derivative without having to do the messy formulas.

# Example:

Let's use our 4 year bond, and try three different bump sizes: 3bp, 5bp, and 6bp (in percentage points that is .03, .05, and .06):

- 3bp:

$$
\frac {\partial P V (y = 6.60 \%)}{\partial y} \approx \frac {P V (6.60 + .03) - P V (6.60 - .03)}{2 \times .03} = \frac {99.55596 - 99.760575}{.06} = \frac {-0.2046}{.06} = -3.410
$$

- 5bp:

$$
\frac {\partial P V (y = 6.60 \%)}{\partial y} \approx \frac {P V (6.60 + .05) - P V (6.60 - .05)}{2 \times .05} = \frac {99.55596 - 99.760575}{.10} = \frac {-0.3410}{.10} = -3.410
$$

- 6bp:

$$
\frac {\partial P V (y = 6.60 \%)}{\partial y} \approx \frac {P V (6.60 + .06) - P V (6.60 - .06)}{2 \times .06} = \frac {99.55596 - 99.760575}{.12} = \frac {-0.4092}{.12} = -3.410
$$

The change in bond price  $(PV(y + h) - PV(y - h))$  is different for each, because we are bumping up and down by different amounts. Those changes in bond price on their own will not be useful for the derivative because they measure changes for different amounts of change in yield. But we can normalize and convert them all to the change in bond price per 1 percentage point change in yield if we divide by the amount of the bump  $(2 \times h)$ . We see that the change in price from bumping up-and-down by 6bp is twice the change in prices using 3bp (to four decimals at least). We can use either one to give us our approximation to the derivate (change in price per 1 percentage point  $(100\mathrm{bp})$  change in yield). I tell you to use 5bp. Either 3 or 6 would also work, as long as we divide by the right  $2 \times h$ . But using  $\pm 50\mathrm{bp}$  is not a good idea because that is too big a change. We use a small change (small bump  $h$ ), and then normalize by the size of the bump to get the approximation per 1 percentage point change in yield.

## 3.3 Duration

### Duration: Length vs Sensitivity

Three Concepts - I always start with BPV & DV01

- BPV & DV01 - dollar change per change in yield - (aka dollar duration)

$$
BPV \& DV01 = - \frac{\partial PV}{\partial y} \approx - \frac{PV(y + h) - PV(y - h)}{2h}
$$

- Modified (Adjusted) Duration - % change per change in yield

$$
ModDur = - \frac{1}{PV} \frac{\partial PV}{\partial y} = 100 \cdot \frac{BPV}{PV}
$$

- Macaulay Duration - weighted avg time until get repayed in years (MacDur≤maturity)

$$
MacDur = \sum t_{i} \cdot \frac{PV_{i}}{PV_{T}}; t_{i} is time to payment i; \frac{PV_{i}}{PV_{T}} is weight
$$

$$
MacDur = \left(1 + \frac{y}{freq}\right) \cdot ModDur = 100 \cdot \frac{BPV}{PV} \cdot \left(1 + \frac{y}{freq}\right)
$$

$$
M a c D u r = \left(1 + \frac {y}{f r e q}\right) \cdot M o d D u r = 1 0 0 \cdot \frac {B P V}{P V} \cdot \left(1 + \frac {y}{f r e q}\right)
$$

I like DV01 best - but Duration used more

- I start with BPV / DV01, build to Duration  
- Most texts start with Duration - confusing because of % sensitivity vs years

Most textbooks and course start with duration but I find that very confusing, since "duration" is used for both Macaulay Duration and Modified (or Adjusted) Duration. I find it much easier to start with BPV / DV01 and then work towards Modified and Macaulay Duration. See the Wikipedia entry on "Bond Duration" ([?]) which is pretty good. (One is not supposed to quote Wikipedia, but I contributed much of that entry so I am pretty happy with it.)

# Modified and Macauley Separate Concepts

- Modified - sensitivity - % change in price  
- Macauley - time (as in "duration") in years

I teach DV01 then Modified then Macauley

- Very easy to understand  $BPV$  &  $DV01 = -\frac{\partial PV}{\partial y}$

Why Macauley Duration at all?

History.  

- Quick-and-dirty guess for BPV  
- "Balance beam" shorter than maturity

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/4473a5d81d0e4c37174d2c9f91bde6a68ceb04a6423a9669c9b38071c9a4ad39.jpg)  
Macaulay duration for 4yr  $6.5\%$  bond  $= 3.65$  yrs  
(annual coupon  $6.5\%$  4yrs, price 99.6582,yield  $6.6\% \mathrm{ab}$

| 6.60%ab yield | BPV (\$100 bond, 100bp yld ch) | Modified Duration (%, 100bp) | Macaulay Duration (years) |
|---------------|----------------------------------|------------------------------|---------------------------|
| 4yr 6.5% bond, P=99.658 | \$3.410 | 3.422% | 3.648 yrs |
| 6yr 7.0% bond, P=101.930 | \$4.886 | 4.794% | 5.110 yrs |

In-Class Exercise 2: Duration / BPV  

| 6.60%ab yield | BPV (\$100 bond, 100bp yld ch) | Modified Duration (%, 100bp) | Macaulay Duration (years) |
|---------------|----------------------------------|------------------------------|---------------------------|
| 4yr 6.5% bond, P=99.658 | \$3.410 | 3.422% | 3.648 yrs |
| 6yr 7.0% bond, P=101.930 | \$4.886 | 4.794% | 5.110 yrs |
| 10yr 7.0% bond, P=102.862 | \$7.289 | 7.086% | 7.554 yrs |

1. Guess at Macaulay Duration, and from that BPV & Modified Duration  
2. Calculate BPV (formula below)  
3. Calculate ModDur & MacDur (formula below)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/e9dfab647ac33643219d3019aea5427d92493eecfd7ac99a5b376e98a841b0b8.jpg)  
Macaulay duration for 4yr  $6.5\%$  bond  $= 3.65$  yrs  
(annual coupon 6.5%, 4yrs, price 99.6582, yield 6.6%ab)

$$
B P V \& D V 0 1 = - \frac {\partial P V}{\partial y} \approx - \frac {P V (y + h) - P V (y - h)}{2 h}
$$

$$
\text {M o d D u r} = - \frac {1}{P V} \frac {\partial P V}{\partial y} = 1 0 0 \cdot \frac {B P V}{P V}
$$

$$
M a c D u r = \left(1 + \frac {y}{f r e q}\right) \cdot M o d D u r = 1 0 0 \cdot \frac {B P V}{P V} \cdot \left(1 + \frac {y}{f r e q}\right)
$$

You should be able to guess at the Macaulay duration of the 10-year as something shorter than 10 years, something like 7 or 8 or 9. Then the BPV & ModDur should be roughly the same.

This is not an accurate guess, but it tells you what kind of answer you should get.

# 3.4 BPV / DV01 for Predicted P&L and Hedging

# Contents

# Price as Function of Yield: Approximate P&L

Write price as function of new yield, and change in yield from old

$$
P \left(y _ {1}\right) = P \left(y _ {0} + y _ {1} - y _ {0}\right) = P \left(y _ {0} + \Delta_ {y}\right)
$$

Then use 1st-order Taylor series expansion and DV01

$$
P \left(y _ {1}\right) = P \left(y _ {0} + \Delta_ {y}\right) \approx P \left(y _ {0}\right) + \Delta_ {y} \cdot \frac {\partial P}{\partial y} = P \left(y _ {0}\right) - \Delta_ {y} \cdot D V 0 1
$$

Finally, look at P&L (profit & loss) - subtract out  $P(y_0)$ :

$$
P (y _ {1}) - P (y _ {0}) \approx - \Delta_ {y} \cdot D V 0 1
$$

Caveats:

- Only 1st-order approximation (may need 2nd - convexity)  
- Doesn't consider other "risk factors"
- Spread  
- Time

Approximate P&L - Example - In-Class Exercise 3

$P\& L = P(y_{1}) - P(y_{0})\approx -\Delta_{y}\cdot DV01$  

<table><tr><td>Coup</td><td>Amt</td><td>P1</td><td>P2</td><td>P&amp;L</td></tr><tr><td>4yr 6.5%</td><td>$10mn</td><td>99.658</td><td>99.318</td><td>-$34k</td></tr><tr><td>10yr 7%</td><td>$10mn</td><td>102.862</td><td>102.137</td><td>??-$72.5k</td></tr></table>

$\mathrm{P\&L = (102.137 - 102.862)^{*}10mn / 100}$  

<table><tr><td>Coup</td><td>Amt</td><td>Y1</td><td>Y2</td><td>Δy</td><td>BPV</td><td>DV01</td><td>P&amp;L</td></tr><tr><td>4yr 6.5%</td><td>$10mn</td><td>6.60%</td><td>6.70%</td><td>10bp</td><td>3.41</td><td>3,410</td><td>??-$34.1k</td></tr><tr><td>10yr 7%</td><td>$10mn</td><td>6.60%</td><td>6.70%</td><td>10bp</td><td>7.29</td><td>??7,290</td><td>??-$72.9k</td></tr></table>

HEDGING: what if you want to sell 10yr to match P&L on 4yr.

- How much? Just match BPV / DV01: $4.7mn = $10mn * 3.41/7.29

Pred P&L (4yr) = -3410*10  

<table><tr><td>Coup</td><td>Amt</td><td>Y1</td><td>Y2</td><td>Δy</td><td>BPV</td><td>DV01</td><td>P&amp;L</td></tr><tr><td>4yr 6.5%</td><td>$10mn</td><td>6.60%</td><td>6.70%</td><td>10bp</td><td>3.41</td><td>3,410</td><td>-$34.1k</td></tr><tr><td>10yr 7%</td><td>??- $4.7mn</td><td>6.60%</td><td>6.70%</td><td>10bp</td><td>7.29</td><td>??-3,426</td><td>??+ $34.3k</td></tr></table>

# 3.5 Decomposing P&L - Pure Discounting & Spread

# Contents

# FIS Bond Change in October 2018

An FIS bond, prices from October 2018

- What was P&L from 1-oct to 5-oct?

<table><tr><td>1-Oct-18 → 5-oct-18</td><td>P1</td><td>Y1</td><td>P2</td><td>Y2</td><td>ΔPrc</td><td>ΔYld</td></tr><tr><td>FIS 4.25s 15-may-2028</td><td>100.291</td><td>4.212%</td><td>99.645</td><td>4.295%</td><td>??-\$0.646</td><td>??+8.3bp</td></tr></table>

Easy to get P&L, but how much due to

- Changes in pure discounting (today vs tomorrow, UST market)  
- FIS risk - risk premium or FIS bond spread

Valuable to decompose, because result from very different sources

- Pure discounting: economy-wide factors  
FIS risk: information about company-specific risks

You need to understand what risks you are taking on, and why you are making (or losing) money

# How to Decompose FIS P&L? Think About YieldUse BPV/DV01

For default-risky bond like FIS, Yield decomposes into "UST" & "Spread"

$$
Y _ {F I S} = Y _ {U S T} + s p r e a d = Y _ {U S T} + R i s k P r e m
$$

Change decomposes into "UST" & "Spread"

$$
\Delta Y _ {F I S} = \Delta Y _ {U S T} + \Delta Y _ {s p r e a d}
$$

FIS changes because discounting (UST) or risk premium (Spread) change

How do we decompose actual price changes into "discounting" & "risk premium"?

- Focus on Spread  
- Fill in Spread at period 2, and change in spread

We want to decompose that \$0.646 loss into how much from UST & how much from FIS risk (Spread)

Simple solution: Yield & Predicted P&L decomposes into "UST" & "Spread"

$$
\begin{array}{l} P \& L = P (y _ {1}) - P (y _ {0}) \approx - \Delta Y _ {F I S} \cdot D V 0 1 \\ \Delta Y _ {F I S} = \Delta Y _ {U S T} + \Delta Y _ {s p r e a d} \\ P \& L = P (y _ {1}) - P (y _ {0}) \approx - \Delta Y _ {F I S} \cdot D V 0 1 = - \Delta Y _ {U S T} \cdot D V 0 1 - \Delta Y _ {s p r e a d} \cdot D V 0 1 \\ \end{array}
$$

- Because we can decompose the yield change, we can decompose the approximate dollar change  
- DV01 converts from yield P&L to dollar P&L

<table><tr><td>1-Oct-18 → 5-oct-18</td><td>P1</td><td>Y1</td><td>P2</td><td>Y2</td><td>ΔPrc</td><td>ΔYld</td></tr><tr><td>UST 2.875s 15-aug-28</td><td>98.2969</td><td>3.076%</td><td>97.0078</td><td>3.231%</td><td>-$1.2891</td><td>+15.5bp</td></tr><tr><td>FIS 4.25s 15-may-2028</td><td>100.291</td><td>4.212%</td><td>99.645</td><td>4.295%</td><td>-$0.646</td><td>+8.3bp</td></tr><tr><td>Spread</td><td></td><td>113.6bp</td><td></td><td>??106.4bp</td><td></td><td>??-7.2bp</td></tr></table>

# Reminder - Use BOND Menu for Bonds for BPV/DV01

$$
P \& L = P (y _ {1}) - P (y _ {0}) \approx - \Delta Y _ {F I S} \cdot D V 0 1 = - \Delta Y _ {U S T} \cdot D V 0 1 - \Delta Y _ {s p r e a d} \cdot D V 0 1
$$

<table><tr><td>settle=1-Oct-18</td><td>Amt</td><td>P1</td><td>Y1</td><td>BPV</td><td>DV01</td></tr><tr><td>UST 2.875s 15-aug-28</td><td>$10mn</td><td>98.2969</td><td>3.076%</td><td>8.38</td><td></td></tr><tr><td>FIS 4.25s 15-may-2028</td><td>$10mn</td><td>100.291</td><td>4.212%</td><td>7.86</td><td>7,860</td></tr><tr><td>Spread</td><td></td><td></td><td>113.6bp</td><td></td><td></td></tr></table>

For BPV on FIS, use BOND menu & bump up & down:

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>360 semi</td><td>10.012018</td><td>5.152028</td><td>4.25</td><td>4.26</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>99.9176</td></tr></table>

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>360 semi</td><td>10.012018</td><td>5.152028</td><td>4.25</td><td>4.16</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>100.7037</td></tr></table>

$$
\frac {1 0 0 . 7 0 3 7 - 9 9 . 9 1 7 6}{0 . 1 0} = 7. 8 6
$$

# Decomposing FIS P&L - "UST" & "Spread"

$P\& L = P(y_{1}) - P(y_{0})\approx -\Delta Y_{FIS}\cdot DV01 = -\Delta Y_{UST}\cdot DV01 - \Delta Y_{spread}\cdot DV01$  

<table><tr><td>1-Oct-18 → 5-oct-18</td><td>Amnt</td><td>BPV</td><td>DV01</td><td>ΔPrc</td><td>ΔYld</td><td>Pred P&amp;L</td></tr><tr><td>FIS 4.25s 15-may-2028</td><td>$10mn</td><td>7.86</td><td>7,860</td><td>-$64,600</td><td>+8.3bp</td><td>-$65,238</td></tr><tr><td>UST</td><td></td><td></td><td>7,860</td><td></td><td>+15.5bp</td><td>??-$121,830</td></tr><tr><td>Spread</td><td></td><td></td><td>7,860</td><td></td><td>-7.2bp</td><td>??+\$56,592</td></tr></table>

We want to use same BPV / DV01 for all changes ( $\Delta Y_{FIS}$ ,  $\Delta Y_{UST}$ ,  $\Delta Y_{spread}$ )

- If either UST or Spread change, the yield on FIS changes:

$$
\Delta Y _ {F I S} = \Delta Y _ {U S T} + \Delta Y _ {s p r e a d}
$$

Predicted P&L for UST & Spread are just  $-\Delta Y \cdot DV01$

Important things to remember:

- BPV: \$100 notional, 100bp yld change; DV01: actual notional, 1bp yld change: DV01 = Amount * BPV/(100 * 100)  
- ALWAYS put the negative sign for P&L: Pred  $P\& L = -\Delta Y \cdot DV01$  
- Check that predicted P&Ls are close to the actual and that they add:  $Pred_{FIS} = Pred_{UST} + Pred_{Spread}$

# There are a few important things to remember:

BPV is for \$100 notional, 100bp yld change; DV01 is actual notional, 1bp yld change:

$$
D V 0 1 = A m o u n t * B P V / (1 0 0 * 1 0 0)
$$

- One 100 is for the \$100 notional (to get to \$1 notional) and the other 100 is for the 100bp (to get to 1bp)

ALWAYS put the negative sign for P&L:

$$
P r e d P \& L = - \Delta Y \cdot D V 0 1
$$

- Remember that

$$
D V 0 1 = - \frac {\partial P V}{\partial y}
$$

[?]

# Can We Arrange Instrument(s) To Give This P&L?

Can we actually trade bonds (portfolio) that give us this spread P&L?

First Idea: Buy FIS (obviously) but then Sell UST

- Selling UST will make money when  $Y_{UST} \uparrow (P \downarrow$  but short so make money)  
- Almost works, but amounts are not really right  
- We are making too much money on the UST - more than "predicted"
- We want actual P&L close to predicted \$121,830, but too much
- But the reason is obvious - the UST BPV is too large  
- Selling \$10mn of the UST would give DV01 of 8,380, not 7,860

Solution is simple: sell less of the UST

- BPV of UST is too high, so sell less  
 - Sell 7.86 / 8.38 = 0.938 or \$9.38mn  
Now we have the right DV01:  $9.38\mathrm{mm}^{*}8.38 / (100^{*}100) = 7,860$  
- Successfully created "Portfolio" (Long FIS, Short UST) giving spread P&L

Powerful Idea:

- Buying one instrument (FIS) that contains two risks (Discounting & Spread)  
- Selling another instrument (UST) that strips out one risk (Discounting)

<table><tr><td>1-Oct-18 → 5-oct-18</td><td>Amnt</td><td>BPV</td><td>DV01</td><td>ΔPrc</td><td>ΔYld</td><td>Prec</td><td>P&amp;L</td></tr><tr><td>FIS 4.25s 15-may-2028</td><td>$10mn</td><td>7.86</td><td>7,860</td><td>-$64,600</td><td>+8.3bp</td><td>-$6</td><td>,238</td></tr><tr><td>UST</td><td>-$10mn-$9.38mn</td><td>8.38</td><td>-7,8607,860</td><td>-$128,910-$120,918</td><td>+15.5bp</td><td>-$121,83</td><td>-$121,830</td></tr><tr><td>Spread</td><td></td><td></td><td>7,8607,860</td><td>+$64,310+$56,318</td><td>-7.2bp</td><td>+$56,59</td><td>+\$56,592</td></tr></table>

# 4 A Digression on Shorting & Leverage

# Contents

I find the section of BKM on short sales and buying on margin ([?] section 3.8, 3.9) confusing

# How Do You Sell What You Don't Own?

Many people have a conceptual problem with "Shorting"

- How do you sell what you don't own?

Actually very easy - discuss today how it's done in bonds - Repo

- Bonds: repo or repurchase agreements  
- Repo is a way to borrow & lend money - collateralized lending
  - Side-effect: sell bond you don't own  
- Futures and Forwards (Forward Rate Agreements) another way

Repo & Leverage

- Repo (collateralized borrowing / lending) allows leverage  
- Buying \$100 bond with only \$5 of cash  
- Leverage  $= \frac{\text{Assets}}{\text{Cash}} = 20$ -to-1 in this case

# 4.1 Shorting (BKM 3.8, 3.9)

# Contents

Before Selling & Shorting, How Do We Buy & Go Long?

Buying a bond seems simple: pay \$100 and you own the bond

- $P \uparrow$  you win,  $P \downarrow$  you lose

But what if you don't actually have \$100?

- Borrow \$100, buy bond, so still P ↑ you win, P ↓ you lose

But risk you won't repay, so rate to borrow is high

- Solution? Collateralized borrowing: you pledge the bond - give it away until you repay the loan  
- Still "own" the bond, so  $P \uparrow$  you win,  $P \downarrow$  you lose

For US Treasury Bonds, called Repo (for "Repurchase")

- You Sell today, Buy back in future  
- Sell / Buy-Back or Repurchase (Repo) transaction

# Now "Buying Bond" is Two Transactions: Buy & Repo

BUY: Buy today at P₀ (give \$100), plan sell later at high price (get $?X?)

REPO (2%): Sell today at  $P_0$  (get  $\$ 100$ ), agree to buy back at  $P_1$  (give  $\$ 102$ )

Buy today and hope price goes way up

Today: Buy & Repo all cancel

- Get bond from purchase, give it for repo  
 Give \$100 for purchase, get it from repo

Tomorrow: Cash doesn't cancel

- Get bond back from repo, then sell in market - Bonds cancel  
 Get ?X? from selling, give away \$102 in repo  
Profit  $=$  ?X? - 102  
- If  $?\mathrm{X}$  is high, make money. If low, lose

Where does repo price of \$102 come from?

Borrow @2%: PV Pricing (Forward Pricing)

$$
\begin{array}{l} P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}} \\ P _ {0} = \$ 100; y = 2 \%; n = 1 \\ \Rightarrow P _ {n} = \$ 102 \\ \end{array}
$$

Repo is borrowing money (collateralized borrowing)

Here, borrow at  $2\%$  for 1 year

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/4d1294ec94faf2594802d3ce8989672be8f21b74aacd16dd3cc6581dc7d22ec4.jpg)

# Summary for Buy & Repo

Legally, repos can be structured in two ways

- Repo: lending and borrowing, collateralized  
- Repurchase: Sell / Buy-Back (sell today, buy back at price agreed today)

Either way, think about Borrowing or Lending money

<table><tr><td>Buy &amp; Repo</td></tr><tr><td>Long the market</td></tr><tr><td>Market: Buy today @ \$100, sell at $?X?</td></tr><tr><td>Repo: Borrow \$100 today, pay \$102</td></tr><tr><td>Repurchase or Sell / Buy-Back: Sell today @ $100, buy at $102</td></tr><tr><td>Think about: Borrowing Money</td></tr></table>

<table><tr><td>Sell &amp; Reverse Repo</td></tr><tr><td>Short the market</td></tr><tr><td>Market: Sell today @ $100, buy at $?X?</td></tr><tr><td>Reverse repo: Lend \$100 today, get \$102</td></tr><tr><td>Reverse Repurchase or Buy / Sell-Back: Buy today @ \$100, sell at \$102</td></tr><tr><td>Think about: Lending Money</td></tr></table>

Repo Pricing is simple Forward Pricing

$$
P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}}
$$

$$
\begin{array}{l} P _ {0} = \$ 100; y = 2 \%; n = 1 \\ \Rightarrow P _ {n} = \$ 102 \\ \end{array}
$$

# Summary for Buy & Repo

<table><tr><td>Buy &amp; Repo</td></tr><tr><td>Long the market</td></tr><tr><td>Market: Buy today @ \$100, sell at $?X?</td></tr><tr><td>Repo: Sell today @ $100, buy at $102</td></tr><tr><td>Repurchase or Sell / Buy-Back</td></tr><tr><td>Borrow Money</td></tr></table>

<table><tr><td>Sell &amp; Reverse Repo</td></tr><tr><td>Short the market</td></tr><tr><td>Market: Sell today @ $100, buy at $?X?</td></tr><tr><td>Repo: Buy today @ \$100, sell at \$102</td></tr><tr><td>Reverse Repurchase or Buy / Sell-Back</td></tr><tr><td>Lend Money</td></tr></table>

Repo Pricing is simple Forward Pricing

$$
P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}}
$$

$$
\begin{array}{l} P _ {0} = \$ 100; y = 2 \%; n = 1 \\ \Rightarrow P _ {n} = \$ 102 \\ \end{array}
$$

# "Selling Bond" is Now Simple: Sell & Reverse Repo

SELL: Sell today at  $\mathrm{P_0}$  (get \$100), plan buy later at low price (give \$ ?X?)

| REVERSE: Buy today at P0 (give \$100), agree to sell back at P1(get \$102)

| Reverse repo: get a bond, so now sell it

Sell today and hope price goes way down

Today: Sell & Reverse all cancel

- Need bond for sale, get it from repo  
- Cash cancels out

Tomorrow: Cash doesn't cancel

- Give bond back for reverse, get by buying in market - Bonds cancel  
 Give ?X? to buy, get \$102 in repo  
Profit  $= 102 - ?\mathrm{X?}$  
- If  $?\mathrm{X}$  is low, make money. If high, lose

Where does repo price of \$102 come from?

Lend @2%: PV Pricing (Forward Pricing)

$$
P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}}
$$

$$
\begin{array}{l} P _ {0} = \$ 100; y = 2 \%; n = 1 \\ \Rightarrow P _ {n} = \$ 102 \\ \end{array}
$$

Reverse Repo is lending money (collateralized lending)

Here, lend at  $2\%$  for 1 year

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/ca899fd8a67291ebbd3f6050aff2925e0cd3a33f379b9cbacebc5c49ea5e927e.jpg)

# Summary for Buy & Repo

Legally, repos can be structured in two ways

- Repo: lending and borrowing, collateralized  
- Repurchase: Sell / Buy-Back (sell today, buy back at price agreed today)

Either way, think about Borrowing or Lending money

<table><tr><td>Buy &amp; Repo</td></tr><tr><td>Long the market</td></tr><tr><td>Market: Buy today @ \$100, sell at $?X?</td></tr><tr><td>Repo: Borrow \$100 today, pay \$102</td></tr><tr><td>Repurchase or Sell / Buy-Back: Sell today @ $100, buy at $102</td></tr><tr><td>Think about: Borrowing Money</td></tr></table>

<table><tr><td>Sell &amp; Reverse Repo</td></tr><tr><td>Short the market</td></tr><tr><td>Market: Sell today @ $100, buy at $?X?</td></tr><tr><td>Reverse repo: Lend \$100 today, get \$102</td></tr><tr><td>Reverse Repurchase or Buy / Sell-Back: Buy today @ \$100, sell at \$102</td></tr><tr><td>Think about: Lending Money</td></tr></table>

Repo Pricing is simple Forward Pricing

$$
P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}}
$$

$$
\begin{array}{l} P _ {0} = \$ 100; y = 2 \%; n = 1 \\ \Rightarrow P _ {n} = \$ 102 \\ \end{array}
$$

# Shorting - Simple and Easy

In summary, shorting is simple and easy

Need way to "sell" something today, delay purchase until tomorrow or next week or next year

- Repo or sell / buy-back (reverse repo or buy / sell-back):
- Sell today, agree to buy back in future  
- Get bond certificates as collateral for lending money to someone
- Forward & Futures contract:

-Agree today to sell in future

Pricing relationship exactly same for both:

$$
P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}}
$$

# 4.2 Leverage

# Contents

Leverage & Actual Repo: Never Borrow Full \$100

BUY: Buy today at P₀ (give \$100), plan sell later at high price (get $?X?)

REPO : Sell today at  $\mathrm{P_0}$  (borrow \$95), agree to buy back at  $\mathrm{P_1}$  (give \$96.90)

In markets, Repo is always over-collateralized

Give bond worth \$100, but only borrow \$95  

- Builds in "safety buffer" so that if bond price  $\downarrow$  the collateral (the bond) still worth more than the loan  
- You need to put \$5 of your own money in

Leverage:

- How much you have as assets versus how much you put in

$$
L e v e r a g e = \frac {\text {A s s e t s}}{\text {C a s h}} = \frac {1 0 0}{5} = 2 0 \text {t o} 1
$$

Leverage increases potential for Profit & Loss

- Your investment now only \(5

But Profit or Loss is on whole \$100

$$
P \& L =? X? - (9 6. 9 + 5 * 1. 0 2) =? X? - 1 0 2
$$

- You can get big P&L for small investment

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/6d7a2b5ecd278ac2f2ffe1025f201ed5178766e3d05a55cb46c7da357de4074b.jpg)

# 5 Digression on HP Calculator SOLVE Menu

# Contents

# HP SOLVE Menu - General Equation Solver

TVM equation for our 4-year  $6.5\%$  coupon bond cannot be easily solved when given PV, ask for Y:

$$
9 9. 6 5 8 = \frac {6 . 5}{(1 + y _ {a b})} + \frac {6 . 5}{(1 + y _ {a b}) ^ {2}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {3}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {4}} + \frac {1 0 0}{(1 + y _ {a b}) ^ {4}}
$$

Financial calculators build in a SOLVER root finding algorithm for these kind of equations

- TVM menu  
- HP (maybe others) allow you to program your own equations, use the same algorithm  
SOLVE menu

# HP SOLVE Menu - TVM

TVM equation

$$
P V = \sum_ {i = 1} ^ {N} \frac {P M T}{(1 + Y) ^ {i}} + \frac {1 0 0}{(1 + Y) ^ {N}}
$$

which (with some algebra) becomes

$$
0 = P V + \frac {P M T}{Y} \left[ 1 - \frac {1}{(1 + Y) ^ {N}} \right] + \frac {F V}{(1 + Y) ^ {N}}
$$

writing " $0 = \mathrm{PV} + \ldots$ " so that PV is negative when PMT & FV positive

Program into SOLVE menu as

$$
0 = P V + \left(P M T \div (Y \div 1 0 0)\right) \times (1 - 1 \div ((1 + Y \div 1 0 0) ^ {\wedge} N)) + F V \div ((1 + Y \div 1 0 0) ^ {\wedge} N)
$$

- Exact same answers as regular TVM menu

# HP SOLVE Menu - Discount Yield to Bond Yield

Now, think about a TBill, where price is quoted using Discount Yield D:

$$
P r i c e = 1 0 0 - D i s c Y l d \times \frac {A c t D a y s}{3 6 0}
$$

and where the annualized yield is defined from the PV equation:

$$
P V = \frac {1 0 0}{\left(1 + Y / f r e q\right) ^ {A D / (3 6 5 \div f r e q)}}
$$

Putting  $Price = PV$  we get the equation:

$$
1 0 0 - D Y \times \frac {A D}{3 6 0} = \frac {1 0 0}{\left(1 + Y / f r e q\right) ^ {A D / (3 6 5 \div f r e q)}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/2b941e9b-ceca-4d95-8994-76d1655223a0/a5ab1352c7fb9a7efd8f1629e3411ae52ab1677d5ea25f23a7ae2b8e9c35f8cf.jpg)

You can then put this equation into the HP SOLVER menu as:

$$
1 0 0 - D Y \times (A D \div 3 6 5) = 1 0 0 \div ((1 + Y \div (f \times 1 0 0)) ^ {\wedge} (A D \div (3 6 5 \div f)))
$$

and writing  $Y \div 100$  so that the calculator gives numbers like 4.83 (instead of .0483)

Now you have your own SOLVER menu with 4 items:  $DY$  (quote or discount yield),  $AD$  (actual days),  $f$  (freq = 1 for annual bond, 2 for semi-annual bond), and  $Y$  (ab or sab)

# HP SOLVE Menu - Converting ab  $\leftrightarrow$  sab

Relation annual bond vs semi-annual bond:

$$
1 + y _ {a b} = \left(1 + \frac {y _ {s a b}}{2}\right) ^ {2}
$$

Program SOLVER equation:

$$
1 + Y A B \div 1 0 0 = (1 + (Y S A B \div 2 0 0)) ^ {\wedge} 2
$$

EXAMPLE:

$4\%_{ab}\leftrightarrow 3.9608\%_{sab}$

# References
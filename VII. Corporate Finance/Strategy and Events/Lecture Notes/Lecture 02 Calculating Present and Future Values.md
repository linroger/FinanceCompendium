---
aliases:
  - Calculating Present and Future Values
tags:
key_concepts:
parent_directory: Lecture Notes
cssclasses: academia
title: Lecture 02 Calculating Present and Future Values
linter-yaml-title-alias: Calculating Present and Future Values
---

Dave Schabes

January 5, 2023

# Future Value<sup>1</sup>

- The future value of an investment is equal to the initial amount of the investment multiplied by one plus the interest rate (or other form of return) earned over the time period

Future value of  $100 at 7% per annum for two years, C_1 =$ 100 · 1.07 = $107, C_2 = $107 · 1.07 = $114.49,

$$
o r C _ {2} = \$ 1 0 0 \cdot 1. 0 7 ^ {2}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/be230ea0bb8fb74fcda9315a1793972f1ca99a3a802fa87af29087f3188a007d.jpg)

# Future Value

Generally,

$$
\begin{array}{r} C _ {t} = P V * (1 + r) ^ {t}, \text {w h e r e} C _ {t} \text {t h e c a s h f l o w a t t i m e t}, \\ P V \text {i s t h e v a l u e t o d a y a n d r i s t h e i n t e r s e r t r a t e} \end{array}
$$

- Not concerned where  $r$  comes from for now  
- Assumes that  $r$  will be the interest rate for each period
  - Reinvestment risk  
Usually will work with annual rates

# Compound Interest

- When one reinvests their returns and continues to earn interest, this is known as compound interest

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/5e09fb2c3d4e6dfbf0548df2287eeb66e06e06716fb5e833dee9cced69cd9953.jpg)  
Growth of $100 at Different Interest Rates

# Present Value

- Value today of ¥114.49 Renminbi received 2 years from now

Present value of ¥114.49 at 7% per annum for two years, PV₁ = ¥114.49/1.07 = ¥107, PV₀ = ¥107/1.07 = ¥100,

$$
o r P V = \yen 114. 4 9 / 1. 0 7 ^ {2} = \yen 1 0 0
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/41ffbfa84b14a69b83cfce1f5511869c4e801c67e85592a9305a733b4536e5da.jpg)

$$
\begin{array}{l} P V = C _ {t} / (1 + r) ^ {t}, w h e r e 1 / (1 + r) ^ {t} i s t h e d i s c o u n t f a c t o r, \\ D F _ {2} = 1 / (1. 0 7) ^ {2} = . 8 7 3 4 \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/a2836490d2774f071aaf173e21637b48009daec21d38fd3f79314952ad56147b.jpg)  
Present Value of $100 at Different Interest Rates

# Valuation

What is wrong with the text example?

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/48ead36199b171191246b7401590bad4a3861964ffd11155d488f6673dc9fb1e.jpg)

# Valuation

- Given risk free rate of  $7 \%$ and stock market return of  $12 \%$

Stock market is risky  
$\circ$  Future value of $700,000

At  $7 \%$ : $\$ 749,000$  
At  $12\%$ :  $\$ 784,000$

- Office building will be worth $800,000 in one year for certain

$\circ$  PV = $747,664 at 7%  
$0.95\%$ Pay  $\$ 700,000$  so net present value is + $\$ 47,664$

# Accounting for Risk

- Expected return: mean return for project

○ Need to consider all potential outcomes  
○ Difficulty in determining outcomes varies  
$\circ$  Risk determines appropriate discount rate

- No risk free investment should earn a positive NPV  
- Nominal versus real returns  
- Return to risk in a couple of weeks

# Net Present Value and Rate of Return Rules

- Net Present Value Rule: invest in projects where the net present value is greater than 0  
- Rate of return: Profit/Investment – invest where project's return on capital exceeds opportunity cost of capital  
- Opportunity Cost of Capital – the rate of return (usually expressed on an annual basis) appropriate for the investment

○ Very difficult in practice to get right  
○ Many methods to estimate – will discuss a some later

# Calculating Present Values with Multiple Cash Flows

$$
P V = \frac {C _ {1}}{1 + r} + \frac {C _ {2}}{(1 + r) ^ {2}} + \frac {C _ {3}}{(1 + r) ^ {3}} + \dots + \frac {C _ {T}}{(1 + r) ^ {T}}
$$

$$
P V = \sum_ {t = 1} ^ {T} \frac {C _ {t}}{(1 + r) ^ {t}}
$$

Discounted Cash Flow (DCF) Formula

$$
N P V = C _ {0} + \sum_ {t = 1} ^ {T} \frac {C _ {t}}{(1 + r) ^ {t}},
$$

where  $C_0$  is the investment today, entered as a negative number

# Valuation with Multiple Cash Flows

# Problem 11

$\mathrm{O}$  Cash flows:

<table><tr><td>Year 1</td><td>Year 2</td><td>Year 3</td></tr><tr><td>$432</td><td>$137</td><td>$797</td></tr></table>

○ Opportunity cost of capital  $15\%$ , solve for PV:

$$
P V _ {1} = \\) 4 3 2 / (1. 1 5), P V _ {2} = \\( 1 3 7 / (1. 1 5) ^ {2}, P V _ {3} = \\) 7 9 7 / (1. 1 5) ^ {3},
$$

$$
P V _ {1} = 3 7 5. 6 5, P V _ {2} = 1 0 3. 5 9, P V _ {3} = 5 2 5. 0 4,
$$

$$
P V _ {P r o j e c t} = 3 7 5. 6 5 + 1 0 3. 5 9 + 5 2 5. 0 4 = 1 0 0 4. 2 8;
$$

$$
i n v e s t \mathbb {S} 1 2 0 0,
$$

$$
N e t P r e s e n t V a l u e = - \$ 1200 + \$ 1004. 2 8 = - 1 9 5. 7 3
$$

# Opportunity Cost of Capital

- Opportunity cost must reflect the risk of the opportunity
- Not necessarily (often unlikely) to equal the cost at which the company investing in the opportunity may borrow  
○ Should always be compared to a similarly risky opportunity

# Perpetuities and Annuities

- Perpetuities – investments that pay a fixed amount per period, "forever" (in perpetuity)

$\bigcirc$  Consols

- Annuities – investments that pay a fixed amount per period, for a fixed time period (or an actuarily determined one)

Installment loan payments  
○ Life annuities

# Valuing Perpetuities and Annuities

- This equation shows the present value of a perpetual stream<sup>2</sup>

$$
P V = \sum_ {t = 1} ^ {\infty} \frac {C}{(1 + r) ^ {t}} = \frac {C}{1 + r} + \sum_ {t = 2} ^ {\infty} \frac {C}{(1 + r) ^ {t}} = \frac {C}{1 + r} + \frac {P V}{1 + r}
$$

- Left side summation an infinite geometric series – solution is:

$$
P V = \frac {C}{r}
$$

# Perpetuities

- Intuitive formula:

$$
P V = \frac {C}{1 + r} + \frac {P V}{1 + r}
$$

$$
P V \times (1 + r) = C + P V
$$

$$
1 + r = \frac {C}{P V} + 1
$$

$$
r = \frac {C}{P V} o r P V = \frac {C}{r}
$$

# Perpetuity Example

- How much money do you need to donate to provide an scholarship of $50,000 a year in perpetuity, if interest rates will be 5% forever?

$$
P V = \frac {C}{r} = \frac {\mathbb {S} 5 0 , 0 0 0}{. 0 5} = \mathbb {S} 1, 0 0 0, 0 0 0
$$

# Annuities

- Annuities pay a fixed amount each period for a defined number of periods  
- The formula is the same for a perpetuity except summing for a finite number of periods,  $T$

$$
P V = \sum_ {t = 1} ^ {T} \frac {C}{(1 + r) ^ {t}}
$$

# Annuities

- Solution derived using formula for finite geometric series<sup>3</sup>  
- Intuitively, consider difference between two perpetuities starting a  $t = 0$  and one at  $t = t$ , where  $t \geq 1$

$$
P V = \frac {C}{r} - \frac {C}{r (1 + r) ^ {t}} = C \times \left[ \frac {1}{r} - \frac {1}{r (1 + r) ^ {t}} \right]
$$

- If need to solve for  $C$ :

$$
C = \frac {P V}{\frac {1}{r} - \frac {1}{(1 + r) ^ {t}}}
$$

# Annuity Example

- How much money do you need to have saved to provide an annual income of $50,000 by purchasing a 10 year annuity, if interest rates will be  $5 \%$ for the next 10 years?

$$
\begin{array}{l} P V = C \times \left[ \frac {1}{r} - \frac {1}{r (1 + r) ^ {t}} \right] = \\ \\ 5 0, 0 0 0 \times \left[ \frac {1}{. 0 5} - \frac {1}{. 0 5 (1 + . 0 5) ^ {1 0}} \right] \\ = \$ 50,000 \times (20 - 12.27865) = \$ 386,086.75 \\ \end{array}
$$

# Conceptual Diagram

# Cash Flow

Year: 1 2 3 4 5 6 … Present Value

1. Perpetuity A  
2. Perpetuity B  
3. Three-year annuity (1 - 2)

$1 $1 $1 $1 $1 $1 …

$1 $1 $1…

$1 $1 $1

$$
\begin{array}{l} \frac {1}{r} \\ \frac {1}{r (1 + r) ^ {3}} \\ \frac {1}{r} - \frac {1}{r (1 + r) ^ {3}} \\ \end{array}
$$

# Installment Loan Example

- Your business needs to borrow $10,000,000 for thirty years to purchase a building  
- Repay loan in equal annual installments  
- Interest rate:  $8 \%$ per annum  
- Calculate annual payments due:

$$
\begin{array}{l} C = 1 0, 0 0 0, 0 0 0 / ((1 / {.} 0 8) \times (1 - 1 / (1 + {.} 0 8) ^ {3 0}) \\ = \$ 888,274.33 \\ \end{array}
$$

# Installment Loan Example

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/5df44441e72a355255eda22f7f0215bdb67891a23748ad862e7387eb33df3b7b.jpg)

# Growing Perpetuity

$$
P V = \frac {C}{1 + r} + \frac {C (1 + g)}{(1 + r) ^ {2}} + \frac {C (1 + g) ^ {2}}{(1 + r) ^ {3}} + \dots + \frac {C (1 + g) ^ {t - 1}}{(1 + r) ^ {t}}
$$

- Annual payment, C, grows by g annually after the first period  
- By similar logic to fixed perpetuity argument, with  $g$  now representing the annual growth:

$$
P V _ {g} = \frac {C}{r - g}
$$

# Growing Perpetuity

- Scholarship fund:

\(\circ\) Want to provide \(40,000 annual scholarship forever which adjusts for inflation  
○ Expect University endowment fund to earn  $6 \%$ annually and  $2 \%$ annual growth in tuition rates

$$
P V _ {g} = \$ 40,000 / (. 0 6 -. 0 2)
$$

$$
P V _ {g} = \$ 1,000,000
$$

# Growing Annuity

$$
P V _ {g} = \frac {C}{r - g} \times \left(1 - \left(\frac {1 + g}{1 + r}\right) ^ {t}\right)
$$

- Pension fund contributions:

$\circ$  Contribute $5,000 per year; grow contribution at 5% p.a.  
$\circ$  Expect fund to grow at  $6 \%$  p.a.  
○ How much will you have in 40 years?

# Growing Annuity

$$
P V _ {g} = \left(\frac {\mathrm {\bf $ 5 , 0 0 0}}{\mathrm {\bf . 0 6 - . 0 5}}\right) \times \left(1 - (\frac {1 . 0 5}{1 . 0 6}) ^ {4 0}\right)
$$

$$
P V _ {g} = \$ 157,778.45
$$

- Future value of any annuity equals the present value multiplied by  $1 + r$  to the power equal to the last payment

$$
F V = 1 5 7, 7 7 8. 4 5 \times 1. 0 6 ^ {4 0}
$$

$$
F V = \$ 1,6 2 2,8 6 4. 6 1
$$

# Summary

Table 2.2 Some useful shortcut formulas  

<table><tr><td>Year:</td><td>0 1</td><td>2 …</td><td>… t-1</td><td>t</td><td>t+1 …</td><td>Present Value</td></tr><tr><td>Perpetuity</td><td>1</td><td>1 …</td><td>1</td><td>1</td><td>1 …</td><td>1/r</td></tr><tr><td>t-period annuity</td><td>1</td><td>1 …</td><td>1</td><td>1</td><td></td><td>1/r - 1/(r(1+r)t)</td></tr><tr><td>t-period annuity due</td><td>1 1</td><td>1 …</td><td>1</td><td></td><td></td><td>(1+r)(1/r - 1/(r(1+r)t)</td></tr><tr><td>Growing perpetuity</td><td>1 1 × (1 + g) …</td><td>1 × (1 + g)t-2</td><td>1 × (1 + g)t-1</td><td>1 × (1 + g)t..</td><td>1/r - g</td><td></td></tr><tr><td>t-period growing annuity</td><td>1 1 × (1 + g) …</td><td>1 × (1 + g)t-2</td><td>1 × (1 + g)t-1</td><td></td><td>1/r - g[1 - (1 + g)t/(1+r)t]</td><td></td></tr></table>

Note: a. The growing perpetuity formula works only if the discount rate  $r$  is greater than the growth rate  $g$ .  
$b$ . The growing annuity formula blows up if  $r = g$ . In this case, the value of the growing annuity is  $\mathbf{C} \times t / (1 + r)$ .

# Interest Rate Quotes

- Interest rate quotes vary in a number of ways

$\mathrm{O}$  Compounding period  
○ Day basis

Annual Percentage Rate (APR)

- Commonly used in retail loans

Per period rate multiplied by number of periods  
Example:  $1 \%$ per month (on a credit card) is quoted as an APR or  $12 \%$

# Interest Rate Quotes

- Effective Annual Rate (EAR) – the effective amount of interest paid on an annual basis  
- Converting EAR to APR

$$
E A R = [ 1 + r / m ] ^ {m} - 1,
$$

for example:  $APR = 10\%$  on a monthly loan,

$$
E A R = [ 1 + . 1 0 / 1 2 ] ^ {1 2} - 1 = 1 0. 4 7
$$

- Continuous compounding often used in economic models

$\circ$  Simplifies calculations then converted to appropriate rate, e.g., semi-annually

# Continuous Compounding Example

- Formula: Future Value = e^rt  
- Example: Initial investment $1,000

$\circ$  Continuous interest rate:  $5 \%$  
○ Number of periods: 3  
$\circ$  Final value of investment: $1,000e. $^{05\cdot 3}$  = 1,161.83  
$\circ$  Annual interest rate equivalent:

$$
(\$ 1161.83 / \$ 1000) ^ {1 / 3} - 1 = 5.13 \%
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/01229a61ebfe087889f82251a2f699dde0e70d4fc90006f046d5ad981840c049.jpg)

Winter 2023

Bond Valuation

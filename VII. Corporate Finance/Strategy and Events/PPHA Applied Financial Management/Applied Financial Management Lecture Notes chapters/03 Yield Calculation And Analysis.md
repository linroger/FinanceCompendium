---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Procedural
linter-yaml-title-alias: Procedural
---

Lecture 3

Thomas S. Coleman

27 March 2023, Draft March 31, 2023

# Procedural

I. Groups

- Groups should be assigned

II. Assignment

- Due next Monday at 11:59pm

# Four Ideas - All About Yield

# Contents

1 How to Think About Yield: Unpacking the Budget Line 2  
2 How to Calculate Yield (for Bonds) 5

2.1 Single versus Multiple CF & Bonds 5  
2.2 Solving Multiple CF & Bonds - PV Calculators: TVM and BOND Menu 7

3 How Do We Use Yield? Where Does Yield Come From? 10

3.1 TVM for Simple 4-year Bond 10  
3.2 Understanding and Using Yield - Across PV, Coupon, Maturity 12  
3.3 Where Do We Get Yield? 15

3.3.1 Bonds - Markets give us Yield (Discount Rate, Expected Return) 15  
3.3.2 Equities & Projects: Difficult - Estimate Yield from Similar Risk 19

4 Yield / Discount Rate, Holding Period Return, IRR 20

4.1 Yield / Discount Rate (Expected Return, Required Return, Interest Rate) 20  
4.2 Holding Period Return 20  
4.3 IRR (Internal Rate of Return) 24

# 1 How to Think About Yield: Unpacking the Budget Line

# Remember: The Budget Line: PV, FV, Discounting

Budget line - Start with 2 periods linked by savings: put in  $1, get$ 1(1+y)

- Start with no borrow / lend:  $s = 0$  - single point  
- Next allow lending:  $s > 0$ , extend line upper left (eliminate  $s$ )  
- Finally borrowing & lending:  $s < > 0$ , full budget line

$$
p _ {1} c _ {1} = m _ {1} - s; p _ {2} c _ {2} = m _ {2} + (1 + y) s
$$

$$
p _ {1} c _ {1} + p _ {2} c _ {2} / (1 + y) = m _ {1} + m _ {2} / (1 + y)
$$

$$
p _ {1} c _ {1} \cdot (1 + y) + p _ {2} c _ {2} = m _ {1} \cdot (1 + y) + m _ {2}
$$

- Can write as PV:  $\frac{{m}_{2}}{1 + y}$  or FV:  ${m}_{1} \cdot  \left( {1 + y}\right)$  
Budget line same either way  
- In FV form income higher, but so are "prices"

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ffba457d936c3bab24e73e738b3e6b41627b31c048e97bf31d25a57c07c949a8.jpg)

# Remember: Right Hand Side Gives PV, FV & Discounting

$$
R H S: \begin{array}{l} P V: m _ {1} + m _ {2} / (1 + y) \\ F V: (1 + y) \cdot m _ {1} + m _ {2} \end{array}
$$

The RHS gives us the correct measure of income

- Today's money we call Present Value or PV  
Tomorrow's money we call Future Value or FV

# $1 + y$  price between today & tomorrow

- interest rate, discount rate, yield, IRR, expected return

This is the single most important idea in finance

- If you understand this you understand most of finance  
- But I've spent most of my career learning, thinking, studying PV

A little like building a bridge: the physics is easy but the engineering is hard

I. Unpacking the budget constraint: PV, FV, nominal & real rates

- This budget constraint tells us everything we need to know about discounting, PV, FV, nominal rates, real rates. In fact everything we need to know about TVM (for certain - known - CFs).
- But we need to unpack this budget constraint, and think about it a little carefully.
- Once we do that we will then use the ideas of discounting, PV, FV, etc. to examine every aspect of modern finance.  
- We will talk about bonds and discounting over multiple periods. About compounding and variable periods (rates per month, half-year, year). About nominal rates vs real rates. But the ideas all come back to this simple picture and simple budget line. (Have I ever said how wonderful budget lines are? I used to think they were really boring, but I've come to appreciate that a good part of economics is just thinking carefully about budget lines.)
- $\mathbf{PV}$ : So let's start by looking at the RHS or the budget constraint:  $p_1c_1 + p_2c_2 / (1 + y) = m_1 + m_2 / (1 + y)$ . The RHS says that the income for the budget line is the sum  $m_1 + m_2 / (1 + y)$ . We call this the Present Value, and it is the correct measure of income when we look at any set of CFs across time - we always need to discount future amounts (future CFs) back to today by  $1 / (1 + y)$ .
- This is the most important, maybe the only important thing, you will learn in this course: how to calculate and think about PVs.  
- PVs matter and only PVs matter. Nothing else you learn in finance is as important as this. In fact, there really is not much else in finance except PV  
- Three-quarters of this course is simply calculating  $m_1 + m_2 / (1 + y)$ . This becomes very complicated: What are the CFs? When are the CFs? What is the rate  $y$ ? How do we quote the discount rate  $y$  and how do we calculate the discounting  $1 / (1 + y)$ ? How do we get an appropriate rate?  
- But it all comes down to PV:  $m_{1} + m_{2} / (1 + y)$ .
- FV: the expression  $m_1 + m_2 / (1 + y)$  expresses income in terms of period-1 money. But we could also write the budget line in terms of period-2 money:

$$
p _ {1} c _ {1} \cdot (1 + y) + p _ {2} c _ {2} = m _ {1} \cdot (1 + y) + m _ {2}
$$

Now the RHS is the FV:  $m_1 \cdot (1 + y) + m_2$ . FV is in terms of tomorrow's money (PV is today's money). For the budget line it is totally irrelevant, since it increases the income but also the prices on the LHS - the budget line does not change.  $(p_1 \rightarrow p_1 \cdot (1 + y) \& p_2 / (1 + y) \rightarrow p_2)$

II. The term  $(1 + y)$  or  $1 / 1 + y$  is the price between today and tomorrow.

- For every $1 today, we get 1+y next period. For one year, y will be something like 0.04 or 4%.  
 - The term 1/1+y is called the discount factor: it tells us how much $1 next period is worth today (it will be less than $1, discounted)  
- y is called the interest rate, discount rate, yield, yield-to-maturity, IRR (internal rate or return), expected return. These all mean slightly different things.

# Thinking About Yield Changes:  $y \uparrow \Rightarrow$  Budget Line Twists

First consider simple case: you only have Future CF or Present CF:

$$
R e m e m b e r P V = \frac {F V}{(1 + y)}
$$

Budget Line RHS:  $PV:m_{1} + m_{2} / (1 + y)$

Budget Line RHS:  $FV:(1 + y)\cdot m_1 + m_2$

Growth: Only  $m_1$ , Present CF (PV fixed),  $y \uparrow$  as if  $CF_{tomorrow} \uparrow$  and you are richer: budget line ↑

$\mathrm{PV} = 100, \mathrm{y} = 4\%$ $FV = 100 \cdot (1 + .04) = 104$  

- $\mathrm{FV} = 100$ ,  $y = 5\%$ ,  $PV = 100 \cdot (1 + .05) = 105 - Richer$

Inflation: Only  $m_2$ , Future CF (FV fixed),  $y \uparrow$  as if  $PV$  of  $CF_{tomorrow} \downarrow$  and you are poorer: budget line

$\bullet \mathrm{FV} = 100$ $y = 4\%$ $PV = \frac{100}{(1 + .04)} = 96.15$  

- $\mathrm{FV} = 100, y = 5\%$ ,  $PV = \frac{100}{(1 + .05)} = 95.24 - \text{Poorer}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/5431fb49c484456d8539275afad31b6e232fc4dddf620d66f6ebe3d90d172102.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/c79bc9c45bc2e7a931d413b347cbb44968f8a9e33b86d54b82de4428ee5303c7.jpg)

# 2 How to Calculate Yield (for Bonds)

# 2.1 Single versus Multiple CF & Bonds

# Contents

# Single Cash Flow is Simple (sort-of)

Relation between future cash and today's value: PV or discounting relation:

$$
P V = \frac {F V}{(1 + y) ^ {N}}
$$

$\mathbf{PV} =$  Present Value (today's value)

$\mathbf{FV} =$  Future Value (future cash flow)

$\mathbf{y} =$  yield or interest rate or discount rate (per period or year)

$\mathbf{N} =$  number of periods (years) of discounting

For example:  $85.73 = \frac{100}{(1 + .08)^2}$

- But things can get complicated:  
- For example, what about "periods"  $N = 2$ ? Is that 2 years, or two half-years (1 year)?

Need to be careful when we use PV formula

# Multiple CFs: Just Apply PV Many Times

PV is today's cash value, so just add the various PVs

- Say $6.50 in year 1, 2, 3, 4, and also $100 in year 4. One PV each CF:

$$
P V = \frac {6 . 5}{(1 + y _ {a b})} + \frac {6 . 5}{(1 + y _ {a b}) ^ {2}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {3}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {4}} + \frac {1 0 0}{(1 + y _ {a b}) ^ {4}}
$$

A few things about this:

We always want to work with a "CF diagram"  

- CF diagram with these 5: PV, FV (final payment)  $I\% YR(y)$ , periodic PMT,  $N$ : incredibly common and useful  
- This is a "bond": fixed coupon per year, $100 at the end

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/89965689d3b632fc2cca7fac5a25450d53d545ed3ee70aec7314e43086987063.jpg)

# Taking Apart and Solving PV Formula

For single future CF, things are easy:

$$
P V = \frac {F V}{(1 + y) ^ {N}}
$$

- Four variables  $(PV, FV, y, N)$ : easily solve for one given the others

Solving more tricky with bond-type multiple CFs

$$
P V = \frac {P M T}{(1 + y)} + \frac {P M T}{(1 + y) ^ {2}} + \dots + \frac {P M T}{(1 + y) ^ {N}} + \frac {F V}{(1 + y) ^ {N}}
$$

- Five variables  $(PV, FV, PMT, y, N)$  
- Can get  $PV$  when given other four. How to get  $y$  when given  $PV, PMT, \ldots$ ?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/e02c222dbdf2cb6efc4c7559486f4c64dab9c26e773de62a0ecc4205268eeb5c.jpg)

# 2.2 Solving Multiple CF & Bonds - PV Calculators: TVM and BOND Menu

# Contents

# Solving Multiple CFs: Trial-and-Error

Bond with  $6.50 in year 1, 2, 3, 4,$ 100 in year 4

$$
P V = \frac {6 . 5}{(1 + y _ {a b})} + \frac {6 . 5}{(1 + y _ {a b}) ^ {2}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {3}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {4}} + \frac {1 0 0}{(1 + y _ {a b}) ^ {4}}
$$

I've given you PMT, FV, N.  

- Now calculate  $PV$ -from- $y$  or  $y$ -from- $PV$  
- By far the most common two calculations  
- I give you  $y = 6.60\%$ , you can calculate  $PV$  - takes time, but you can do it

What if I give you  $\mathrm{PV} = 99.658$  and ask "what is  $y$ ?

Solving a polynomial - generally no formula for  $y$ .

- Formula for quartic exists - but a formula for 5 or higher does not exist  
- But can use numerical methods - say trial-and-error  
- Try  $y = 6.70\%$ .  $PV = 99.3179$ .  $PV$  too low,  $y$  too high  
- Try  $y = 6.50\%$ .  $PV = 100.000$ .  $PV$  too high,  $y$  too low  
- Keep trying, until at  $y = 6.60\%$ ,  $PV = 99.658$  - just right

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/7d19ec308b9bde7cce2e8d1c84c9e62e926ef42b228efebddcdbd88b8f509dc5.jpg)

# Using Computers for Yield Calculations

Trial-and-Error or root-finding algorithms for solving bond-type multiple CFs

$$
P V = \frac {P M T}{(1 + y)} + \frac {P M T}{(1 + y) ^ {2}} + \dots + \frac {P M T}{(1 + y) ^ {N}} + \frac {F V}{(1 + y) ^ {N}}
$$

- Before computers incredibly difficult - people published "yield tables" to help

Today, calculator, or Excel. HP 17BII+: TVM (Time Value of Money) two menus, TVM & BOND:

- Learn about partial payments & AI (Accrued Interest) next class

TVM - Time Value of Money, built on that formula and CF diagram

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/23068c614e155c54010d64549d8d9c5ff767c5284e33243a3e174c21f388e29e.jpg)

$$
\begin{array}{l} 1 0 0. 0 0 = \frac {6 . 5}{(1 + . 0 6 6) ^ {1}} + \frac {6 . 5}{(1 + . 0 6 6) ^ {2}} \\ + \dots + \frac {1 0 0}{(1 + . 0 6 6) ^ {4}} \\ \end{array}
$$

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

BOND - Same as TVM (periodic payments) but allows partial first period

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/0b6fda6eb0f7a2d199ae61f740ed958510529b48555b7f51a19a0fff642db86a.jpg)

# TVM & BOND: Same Answer if Same CFs

- Exact 4-yr (on coupon date): PV=99.658, yield=6.60%  
- Exact 4-yr, using dates:  $\mathrm{Prc} = 99.658$ , 23-mar-18 to 23-mar-22, yield  $= 6.60\%$

$$
\begin{array}{c} 9 9. 6 5 8 = \frac {6 . 5}{(1 + . 0 6 6) ^ {1}} + \frac {6 . 5}{(1 + . 0 6 6) ^ {2}} \\ + \dots + \frac {1 0 0}{(1 + . 0 6 6) ^ {4}} \end{array}
$$

$$
\begin{array}{c} 9 9. 6 5 8 = \frac {6 . 5}{(1 + . 0 6 6) ^ {1}} + \frac {6 . 5}{(1 + . 0 6 6) ^ {2}} \\ + \dots + \frac {1 0 0}{(1 + . 0 6 6) ^ {4}} \end{array}
$$

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td><td>ACCRU</td></tr><tr><td>Given</td><td>A/A Ann</td><td>3.232018</td><td>3.232022</td><td>6.5</td><td>6.60</td><td></td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>99.658</td><td>0</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/bffead5aba78d1fddbd3798b3b05f82cbca0f0d00eb3345ef4ad2a0e8dfcd09c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/4a75aa9168ee14b9326bcdf3a650c5e60d106f7e81dec64f4e58501745ed0584.jpg)

# 3 How Do We Use Yield? Where Does Yield Come From?

# 3.1 TVM for Simple 4-year Bond

# Contents

# Mapping CF Diagram to TVM

TVM: Time Value of Money

- Solves the PV equation for periodic CFs

$$
P V = \frac {P M T}{(1 + y)} + \frac {P M T}{(1 + y) ^ {2}} + \dots + \frac {P M T}{(1 + y) ^ {N}} + \frac {F V}{(1 + y) ^ {N}}
$$

CF diagram is key - maps to the TVM menu

Five variables - put in 4, ask for 5th

I. N: number of periods  
II. I%YR: interest rate (per year)  
III. PV: as negative  
IV. PMT: periodic payment (per period)

V. FV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/5b0aa1d0682e28650f559c6e73c3a745ee4a5428699b6251d3157653744dc895.jpg)

# Using TVM for 4 yr Bond

Four year fixed-coupon bond:

- PV=99.658, $6.50 in year 1, 2, 3, 4, and also $100 in year 4, FV=100

$$
9 9. 6 5 8 = \frac {6 . 5}{(1 + y _ {a b})} + \frac {6 . 5}{(1 + y _ {a b}) ^ {2}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {3}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {4}} + \frac {1 0 0}{(1 + y _ {a b}) ^ {4}}
$$

Five variables - put in 4, ask for 5th

I.  $\mathrm{N} = 4$ : number of periods

II.  $1\% \mathrm{YR} = 6.6$  : interest rate (per year)

III.  $\mathrm{PV} = -99.658$  : as negative

IV. PMT=6.5: periodic payment (per period)

V.  $\mathrm{FV} = 100$

- Blue MAIN FIN for TVM menu
- Then set  $\mathbf{1} \mathbf{P} / \mathbf{Y} \mathbf{R}$  and  $END$

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>6.6</td><td></td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-99.658</td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d321a28857190d9ba895df951a3f6b57684898c8b4060b163463c20516636f6f.jpg)

# 3.2 Understanding and Using Yield - Across PV, Coupon, Maturity Contents

# Thinking of Yield as "Value" of Bond

Work with our four year fixed-coupon bond:

- PV=99.658, $6.50 in year 1, 2, 3, 4, and also $100 in year 4, FV=100

$$
P V = \frac {P M T}{(1 + y)} + \frac {P M T}{(1 + y) ^ {2}} + \dots + \frac {P M T}{(1 + y) ^ {N}} + \frac {F V}{(1 + y) ^ {N}}
$$

$$
9 9. 6 5 8 = \frac {6 . 5}{(1 + y _ {a b})} + \frac {6 . 5}{(1 + y _ {a b}) ^ {2}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {3}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {4}} + \frac {1 0 0}{(1 + y _ {a b}) ^ {4}}
$$

Yield as "value" of bond or CFs: Three ideas:

I.  $PV\downarrow \Rightarrow$  better value ("cheaper"):  $PV\downarrow Y\uparrow$  
II.  $Coup \uparrow \Rightarrow$  better value ("more CF"):  $Coup \uparrow Y \uparrow$  
III. Yield is a way to think about "value": High  $Y$  means high Value (low Price)

First two are simple and obvious - formula & CF diagram

- Third is deep and meaningful - allows us to use yield for all kinds of comparisons

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/0be3838153a860cb0eed0784e4de092ec544a2371d07260a7f5ee53ee144b469.jpg)

Learn through examples using TVM

# TVM - Low Price & High Yield - In-Class Exercise 1

Starting with bond from above, what happens when price (PV) goes down?

Start with 4 year bond (from above)

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

What happens when price falls? Low price means high yield ( $P \downarrow \leftrightarrow Y \uparrow$ )

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.0</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.794</td><td></td><td></td><td></td></tr></table>

- Remember that  $PV = \frac{FV}{1 + y}$ , so low price means high yield  
- Yield effectively measures the "price" of the bond, taking into account both the up-front price and the coupon you earn.  
- Simple in this case because same bond, just lower price - yield up

# TVM - High Coupon and High Yield - Exercise 2

Same bond to start, but now increase the coupon (keeping PV the same)

Continue with 4 year  $6.5\%$  coupon bond from above

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.0</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.794</td><td></td><td></td><td></td></tr></table>

What happens with a higher coupon? (7% up from 6.5%)Higher coupon means higher yield (more future CF)

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.0</td><td>7.0</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>7.297</td><td></td><td></td><td></td></tr></table>

- Also simple: same price, coupon higher  $\rightarrow$  more each year  
- Here up-front is the same, but the  $7 \%$  coupon bond is truly "cheaper" because the coupon is higher.  
- Yield trades-off the up-front price versus the future coupon you earn.

# PV & CF Change: High Yield  $\Rightarrow$  High Value / Low Price

Complicated when both PV & CF change

- Yield balances PV & CF.  
- We can work with either prices (PV & CF) or yield - PV eqtn converts between two two:

$$
P V = \frac {P M T}{(1 + y _ {a b})} + \frac {P M T}{(1 + y _ {a b}) ^ {2}} + \frac {P M T}{(1 + y _ {a b}) ^ {3}} + \frac {P M T}{(1 + y _ {a b}) ^ {4}} + \frac {1 0 0}{(1 + y _ {a b}) ^ {4}}
$$

TVM or BOND converts prices/CFs (PV&PMT)  $\leftrightarrow$  Yield:

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.6</td><td></td><td></td><td></td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>6.6</td><td></td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-99.658</td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/5c533af6ce7e758bf1c29e1866d1a572592109135a2e93a038bc625451702d76.jpg)

# In-Class Exercise 3: Yield Compares Different Bonds

Yield measures trade-off between low price today (PV) vs CFs in the futures

- Comparable across bonds with different coupon, price, maturity

Let's compare 3 bonds (in-class exercise using TVM)

I. 4yr  $6.5\%$  coupon bond,  $\mathrm{P} = 99.658$ , yield  $= 6.60\%$

II. 4yr  $4\%$  coupon bond,  $\mathrm{P} = 91.113 -$  does low price offset low coupon?yield  $= 6.60\%$  -low price does offset low coupon

III. 6yr  $7\%$  coupon bond,  $\mathrm{P} = 101.930$ , yield  $= 6.60\%$

Yield trades off price today vs size of coupon & maturity All these bonds are more-or-less same "value" (yield  $6.60\%$ )

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.5</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.60</td><td></td><td></td><td></td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-91.113</td><td>4</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.60</td><td></td><td></td><td></td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>6</td><td></td><td>-101.930</td><td>7</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>6.60</td><td></td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/24e455feff6f60ba88d609e964c722e61558d1f791a89836ee18c4c6e5f49651.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a41022babb322b0984f05bac6dded9c752a956e30f74a26559bfeb36ee97e9c9.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/7c4f1020e5628246d47be26c95ba165196aa79f22fb103ae2800d8227b8e02d0.jpg)

Here we can compare three different bonds - same in value & how much we earn

- Yield means discounting: converting between present and future cash
- Flat yield-to-maturity not perfect - Generally "term structure" upward or downward sloping  
- Example: UST 2yr  $2.88\%$ , 10yr  $3.23\%$  (upward)  
- Later we look at "term structure of interest rates" and "yield curve"  
- But so much better than price alone 
- balances price vs coupon vs maturity

Yield is better way to think of "market price" than dollar price

- Just remember: P  $\uparrow$  & Y  $\downarrow$

What if there were a 4th bond?

IV. 4yr  $5\%$  bond,  $\mathrm{P} = 92.00$ . What is the yield? Could this price occur in reality?

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-92.0</td><td>5.0</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>7.38</td><td></td><td></td><td></td></tr></table>

- Let's use TVM to ask "what is yield?" Yield for this bond is  $7.38\%$  - Would never occur in real markets
- $7.38\%$  is "cheap" relative to  $6.60\%$  - Sell other bonds and buy this one

Yield-to-maturity isn't perfect, because generally there will be a "term-structure" meaning that CFs with different maturities are discounted at slightly different

- UST yields quoted in slide: 5-oct-2018 quotes, 2yr 2.75s of 30-sep-20, 10yr 2.875s of 15-aug-28  
But YTM is pretty good, and for now we will use YTM, ignoring any issues about term structure  
- Later in the course we will introduce "term structure of interest rates" or "yield curve"

# 3.3 Where Do We Get Yield?

# 3.3.1 Bonds - Markets give us Yield (Discount Rate, Expected Return)

# Contents

# For Bonds - Markets Give Us Yield (Discount Rate)

For bonds (say our 4 yr  $6.5\%$  coupon) move back-and-forth: Price  $\leftrightarrow$  Yield

- PV=99.658, PMT=$6.50 in year 1, 2, 3, 4, FV=$100 ←→ Yield=6.60%

$$
P V = \frac {P M T}{(1 + y)} + \frac {P M T}{(1 + y) ^ {2}} + \dots + \frac {P M T}{(1 + y) ^ {N}} + \frac {F V}{(1 + y) ^ {N}}
$$

For bond CF diagram (down today, up tomorrow) unique solution  $\mathrm{PV} \leftrightarrow \mathrm{Yield}$

- Yield often better, adjusts for low price, high coupon, long maturity

Solving for yield gives economic discount rate

$$
p _ {1} c _ {1} + p _ {2} c _ {2} / (1 + y) = m _ {1} + m _ {2} / (1 + y)
$$

- Yield is "Price" of income today vs tomorrow  
- Yield is "Discount Rate" - fundamental to economic & financial analysis

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/da46e7b72db53172399b2b8bf133c869b79bd070b46d86fa98f56529be43e2d2.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/01833608b2d452db10647bdbc8681675f2deefe2a34d120fd7a3c96cb5c8781c.jpg)

# For Bonds: CFs, Quotes, & PV  $\longleftrightarrow$  Yield

We get yields from market prices:  $P \to Y$

<table><tr><td>Tuesday 27 sep-16</td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>1.50%</td><td>15-aug-26</td><td>99.5234</td><td>1.55%</td></tr><tr><td>10-yr US TIPS</td><td>0.125%</td><td>15-jul-26</td><td>101-05</td><td>0.01%</td></tr><tr><td>10-yr Bund (German)</td><td></td><td></td><td></td><td>-0.15%</td></tr></table>

# A number of questions:

- What are UST vs TIPS?  
- What are "coupon", "maturity", "price", "yield"?  
- What about that negative yield on German Bunds?

# Three things we will discuss

I. What are bonds & bond CFs? Discuss briefly, return later in course  
II. How we apply PV ideas to bonds - same ideas, same formulae as now  
III. Real vs nominal CFs & discount rates

# 10yr UST CFs

"Coupon" etc. all have to do with defining CFs - look at CF diagram

- Coupon = 1.50% means: "$1.50 / 2 every six months"  
- For now we will pretend it is $1.50 every year - close enough for now
- Maturity = 15-aug-26 means: "final payment ($100) on 15-aug-26; coupons every 15-aug & 15-feb"
- For now pretend exactly 10yrs - close enough for now

CF diagram just like any bond - fits with TVM

- Project valuation: NPV  $\leftarrow$  CF + RADR (risk-adjusted discount rate)  
Bond: Market price  $+\mathrm{CF}\rightarrow$  yield

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f1229c2772d26ac35862b3a6bcc1589805028fd89bc050b25f72373bfaf0a244.jpg)

number  $N = 10$  periods

PV=-99.5234

# Bonds: PV & TVM  $\longleftrightarrow$  Yield

For 10yr UST, use TVM to calculate yield: Market Price  $+\mathrm{CF}\rightarrow$  yield

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>10</td><td></td><td>-99.5234</td><td>1.50</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>1.55</td><td></td><td></td><td></td></tr></table>

For bonds: Market Value & CF  $\rightarrow$  yield

- Given CF & PV, back out yield

For projects, trying to figure out PV & NPV

- Given CF + RA yield, back out PV & NPV

Using TVM for UST not exactly right

- Not annual  
- Not exact 10 yrs

But good for now - use BOND menu later

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/2b6a49bb2f7578d87925f46fdbe94ddb6abf9fb3b559fd320ed12c9c37375a91.jpg)

# Bonds: Market Gives us Yield (Discount Rate)

For bonds, PV formula is:

$$
P V = \frac {P M T}{(1 + y _ {a b})} + \frac {P M T}{(1 + y _ {a b}) ^ {2}} + \frac {P M T}{(1 + y _ {a b}) ^ {3}} + \frac {P M T}{(1 + y _ {a b}) ^ {4}} + \frac {1 0 0}{(1 + y _ {a b}) ^ {4}}
$$

Bond contract tells us PMT,  $N$ ,  $FV = 100$  
Market gives us PV

We can back out the yield (discount rate)

Market gives this to us, for free

Change from 2016 to 2023  

<table><tr><td></td><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>27 sep-16</td><td>1.50%</td><td>15-aug-26</td><td>99.5234</td><td>1.55%</td></tr><tr><td>10-yr US Treasury</td><td>28-mar-19</td><td>2.625%</td><td>15-feb-29</td><td>102.0938</td><td>2.39%</td></tr><tr><td>10-yr US Treasury</td><td>3-apr-20</td><td>1.50%</td><td>15-feb-30</td><td>108.4375</td><td>0.63%</td></tr><tr><td>10-yr US Treasury</td><td>2-apr-21</td><td>1.125%</td><td>15-feb-31</td><td>94.625</td><td>1.71%</td></tr><tr><td>10-yr US Treasury</td><td>31-mar-22</td><td>1.875%</td><td>15-feb-32</td><td>96.078</td><td>2.32%</td></tr><tr><td>10-yr US Treasury</td><td>24-mar-23</td><td>3.50%</td><td>15-feb-33</td><td>101.015625</td><td>3.38%</td></tr></table>

Calculate current 10-year UST (CF diagram not exactly correct but close enough):

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>10</td><td></td><td>-101.015625</td><td>3.50</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>3.379</td><td></td><td></td><td></td></tr></table>

Why yield up in 2019, down in 2020, up in 2022 & 2023? What changing yield tells us

- Yield  $\uparrow \Rightarrow$  cash today will grow to more tomorrow (10 yrs in this case) OR cash tomorrow worth less today  
- Apr 2019: Economy growing pretty robustly, future growth prospects good  
- Apr 2020: Pandemic, panic about future & future opportunities  $\downarrow$ , yield  $\downarrow$  
- Mar 2022 & 2023: Recovery, but also inflation (next lecture), yields ↑

WSJ: https://www.wsj.com/market-data/bonds/treasuries

Treasury Direct: https://www.treasurydirect.gov/GA-FI/FedInvest/selectSecurityPriceDate

For 3-apr-20, Yield using "BOND" menu and actual dates (Settle = 3-apr-20, Maturity = 15-feb-30, coup = 1.5%, P = 108.4375, Y=0.617%. Different only by 1bp

<table><tr><td></td><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Approx Yield</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>27 sep-16</td><td>1.50%</td><td>15-aug-26</td><td>99.5234</td><td>1.55%</td><td></td></tr><tr><td>10-yr US Treasury</td><td>28-mar-19</td><td>2.625%</td><td>15 feb-29</td><td>102.0938</td><td>2.39%</td><td></td></tr><tr><td>10-yr US Treasury</td><td>3-apr-20</td><td>1.50%</td><td>15 feb-30</td><td>108.4375</td><td>0.63%</td><td>0.617%</td></tr><tr><td>10-yr US Treasury</td><td>2-apr-21</td><td>1.125%</td><td>15 feb-31</td><td>94.625</td><td>1.71%</td><td>1.719%</td></tr><tr><td>10-yr US Treasury</td><td>31-mar-22</td><td>1.875%</td><td>15 feb-32</td><td>96.078</td><td>2.32%</td><td>2.321%</td></tr><tr><td>10-yr US Treasury</td><td>24-mar-23</td><td>3.50%</td><td>15 feb-33</td><td>101.015625</td><td>3.38%</td><td>3.378</td></tr></table>

Re-done with prices updated from Treasury Direct (different time of day than above, which are from WSJ, which no longer has history). And calculating actual A/A semi-annual bond yield:

<table><tr><td></td><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>27-sep-16</td><td>1.50%</td><td>15-aug-26</td><td>99.46875</td><td>1.558%</td></tr><tr><td>10-yr US Treasury</td><td>28-mar-19</td><td>2.625%</td><td>15-feb-29</td><td>102.0625</td><td>2.389%</td></tr><tr><td>10-yr US Treasury</td><td>3-apr-20</td><td>1.50%</td><td>15-feb-30</td><td>108.4375</td><td>0.617%</td></tr><tr><td>10-yr US Treasury</td><td>2-apr-21</td><td>1.125%</td><td>15-feb-31</td><td>94.6875</td><td>1.712%</td></tr><tr><td>10-yr US Treasury</td><td>31-mar-22</td><td>1.875%</td><td>15-feb-32</td><td>96.078</td><td>2.321%</td></tr><tr><td>10-yr US Treasury</td><td>24-mar-23</td><td>3.50%</td><td>15-feb-33</td><td>101.1875</td><td>3.358%</td></tr></table>

<table><tr><td></td><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td><td>Exp Infl</td></tr><tr><td>10-yr TIPS</td><td>27 sep-16</td><td>0.125%</td><td>15-jul-26</td><td>100.9375</td><td>0.029%</td><td>1.529%</td></tr><tr><td>10-yr TIPS</td><td>28-mar-19</td><td>0.875</td><td>15-jan-29</td><td>103.0625</td><td>0.554%</td><td>1.835%</td></tr><tr><td>10-yr TIPS</td><td>3-apr-20</td><td>0.125%</td><td>15-jan-30</td><td>105.84375</td><td>-0.458</td><td>1.075%</td></tr><tr><td>10-yr TIPS</td><td>2-apr-21</td><td>0.125%</td><td>15-jan-31</td><td>107.875</td><td>-0.653%</td><td>2.365%</td></tr><tr><td>10-yr TIPS</td><td>31-mar-22</td><td>0.125%</td><td>15-jan-32</td><td>106.96875</td><td>-0.533%</td><td>2.854%</td></tr><tr><td>10-yr TIPS</td><td>24-mar-23</td><td>1.125%</td><td>15-jan-33</td><td>99.9375</td><td>1.132%</td><td>2.226%</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/bfac23fa59eeb3ddefb78c43c6ca802c9efa373666da3e31bd63849a2aaa3ec1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/bab1af43a9b3c18665abb3e345287be3b9e7383792df47f7c48fb524c7d318c5.jpg)

# Inflation Past Five Years

<table><tr><td></td><td></td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>3-apr-20</td><td>1.50%</td><td>15-feb-30</td><td>108.4375</td><td>0.63%</td></tr><tr><td>10-yr US Treasury</td><td>24-mar-23</td><td>3.50%</td><td>15-feb-33</td><td>101.015625</td><td>3.38%</td></tr></table>

In 2021 & 2022, inflation surged

- Up to  $15\%$  (CPI, monthly)  
- Highest in 40 years

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f76665be389c305953bec1185f472e38775b214af4bdb9a5ab20cabad5aec871.jpg)

When inflation  $\uparrow$ ,  $y \uparrow$

- Discuss real rates & inflation next lecture

# 3.3.2 Equities & Projects: Difficult - Estimate Yield from Similar Risk

# Contents

# Equities & Projects: Yield & TVM  $\rightarrow$  PV

Bonds have promised CFs:

- For bonds: Market Value & CF  $\rightarrow$  yield  
- Given CF & PV, back out yield (market discount rate, required rate of return)

For projects, trying to figure out PV & NPV - need Yield

- We often don't have market prices, say for starting a new business  
- Have estimates of CFs, need yield to calculate PV  
- Given CF & risk-adjusted yield, calculate PV & NPV

But where does Yield (Discount Rate, Required Rate) come from?

- If CFs were promised and certain, then discount using UST rate  
- But always risky  
- Look for other assets with similar risk, get market price, back out risk-adjusted yield

But we don't yet know what "risk" is

4 Yield / Discount Rate, Holding Period Return, IRR  
4.1 Yield / Discount Rate (Expected Return, Required Return, Interest Rate)

# Contents

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/3e82c54502948c62d07251fdfc243ab80eead877f0d1de88669cb283c01c6fef.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f6c033938b54bf69bf5ac6d9fbae559ea60064ece2f00c99911e7aef2932a5fe.jpg)

# Market Yield (For a Bond) Is the Discount Rate

Yield, Discount Rate, Expected Return, Required Return, Interest Rate:

- Multiple names for the same thing  
- Price for translating CFs between tomorrow and today  
- More-or-less different names for same concept

For bonds, markets give us the Yield / Discount Rate

- Convert price to yield, and that is (pretty-much) the correct market discount rate

For equities, for projects (corporate projects, Cost Benefit Analysis)

- Back-out discount rate from other methods  
- Must study risk - in a week or two  
- Portfolio theory and CAPM (Capital Asset Pricing Model) most fundamental tools

# 4.2 Holding Period Return

# Contents

# Yield (Looking Forward) vs Return (Looking Backward)

Yield, Discount Rate, Interest Rate: Price for translating today to tomorrow

- Price set today  
 - Looks from today to the future: 1/1+y is today's price of $1 in the future (something like $0.9615 = 1/1+.04)

Yield is what you are promised, what you expect to get

Now turn around, look backwards at what you actually earned - Return

Two reasons why Yield and Return may differ

- Yield is promise but promise may get broken. Or maybe a range of possibilities  
- We don't know how to do this yet - uncertain CFs. We come to this later  
- Prices change, and we often have CFs spread over time

# Bond as Package of CFs Over Time

Single CF: yield  $=$  return when hold to maturity

- Example: Buy 1yr T-bill @ $96.15 = 100/1+.04  
- Yield (looking forward):  $1 + .04 = 100 / 96.15$  
- Return (looking backward):  $1 + .04 = \frac{100}{96.15}$

Bonds usually package of multiple CFs: 4yr, $6.5 each year for 4, then $100.

- Price today ($99.658) embeds separate price for each CF

$$
9 9. 6 5 8 = \frac {6 . 5}{\left(1 + z _ {1}\right)} + \frac {6 . 5}{\left(1 + z _ {2}\right) ^ {2}} + \frac {6 . 5}{\left(1 + z _ {3}\right) ^ {3}} + \frac {6 . 5}{\left(1 + z _ {4}\right) ^ {4}} + \frac {1 0 0}{\left(1 + z _ {4}\right) ^ {4}}
$$

- $z$  for zero rate instead of yield

If we hold for only 3yrs, then still have  $z4$  in future, it may change

- If we re-sell at yr 3, then return may be different than promised yield

# Yield is Future, Return is Past

Yield is what you would earn, looking to the future: Yield is Hope

Return is what you did earn, holding over the past: Return is Experience

Example: 4yr  $6.5\%$  coupon bond,  $\mathrm{P} = 99.658$ , all zeros same  $= \mathrm{yld} = 6.60\%$

$$
9 9. 6 5 8 = \frac {6 . 5}{(1 + y _ {a b})} + \frac {6 . 5}{(1 + y _ {a b}) ^ {2}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {3}} + \frac {6 . 5}{(1 + y _ {a b}) ^ {4}} + \frac {1 0 0}{(1 + y _ {a b}) ^ {4}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/0ee55f6abc24dd0d34816c720d0b0a1392b4c3394a78b79e90768a0257d73299.jpg)

Yield: what you would earn, holding until end:  $6.60\%$

Standard TVM calculation for yield

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td></td><td>-99.658</td><td>6.50</td><td>100</td></tr><tr><td>Solve</td><td></td><td>6.60</td><td></td><td></td><td></td></tr></table>

Yield: would price be at year 3?

- If Yld for yr 4 is 6.60%, price at yr 3 = $99.91

How to calculate price at yr 3? Easy - TVM with  $N = 1$ , yld=6.60%

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>1</td><td>6.60</td><td></td><td>6.50</td><td>100</td></tr><tr><td>Solve</td><td></td><td></td><td>-99.91</td><td></td><td></td></tr></table>

But what if sell at yr 3, Sell at $98?

- Yld for yr 4 now  $8.67\%$ , different than original  $6.60\%$

Again, use TVM to ask for yield, if  $\mathrm{PV} = -98$

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>1</td><td></td><td>-98</td><td>6.50</td><td>100</td></tr><tr><td>Solve</td><td></td><td>8.67</td><td></td><td></td><td></td></tr></table>

Hold to year 3, sell for $98, earn what?

- What you earn by holding for 3yr and selling at $98?  
- Hold to year 3, sell for $98, earn 6.00% for yrs 1-3

Again, TVM but now FV = 98 (sell at 98 at yr 3)return=6.00%: What you earn by holding for 3yr and selling at $98

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>3</td><td></td><td>-99.658</td><td>6.50</td><td>98</td></tr><tr><td>Solve</td><td></td><td>6.0</td><td></td><td></td><td></td></tr></table>

The idea of Promised Yield (or yield, or interest rate, or discount rate) versus Holding Period Return is always difficult to understand and to explain.

The basic idea is:

- Promised Yield looks forward, what you are promised  
- Holding Period Return looks backward, what you actually earned

The question is, "Why are they ever different" and there are two reasons:

I. Promises get broken: you aren't paid what was promised. Or, more generally, you may not be promised one specific value - there may be a range of possible future CFs and when one of them happens, that is what you earned.

- But we don't know how to deal with broken promises or uncertain CFs (a range of values). We get to that in a couple weeks.

II. For now the more important reason is that most bonds, most assets we look at, are a package of CFs spread over time with multiple yields (prices for future CFs). Prices change over time, and if we sell part-way, our Holding Period Return (what we have earned) reflects the change in prices.

- For the simple analysis with the budget line we pretended there was just today vs tomorrow (c1 vs c2) and only one yield or discount factor (y or  $1 + y$ ).  
- In real life we deal with CFs spread over time: c1, c2, c3, … . We have one yield or discount factor for each: y1, y2, y3, …

The slide above works through an example (4-yr bond) where we sell part-way through (after 3 years).

- At the start all the intertemporal prices (the discount rates or yields or zero rates) are the same,  $6.60\%$ .  
 - But at y3 the price for yr 4 has changed a lot, to 8.67% (you sell 1yr bond at $98).  
- The yield has gone up so the price has gone down. If the yield had stayed at  $6.60\%$  you would be able to sell at \ $99.91. Instead you sell at \$ 98. You lose.  
- The result is that over the first 3 yrs you earn only  $6.00\%$ , not the  $6.60\%$  you were promised.

The reason: you didn't hold all the way, you sold at year 3, and you sold for a low price.

# 4.3 IRR (Internal Rate of Return)

# Contents

Yield & IRR Look Similar - Fundamentally Different Ideas

Bond Yield (Yield-to-Maturity) translates $ Price into %y Price:

$$
P r i c e = \frac {P M T}{(1 + y)} + \frac {P M T}{(1 + y) ^ {2}} + \dots + \frac {P M T}{(1 + y) ^ {N}} + \frac {F V}{(1 + y) ^ {N}}
$$

- Bonds trade in markets, Price set by Market: Bond Price  $\longleftrightarrow$  Market Discount Rate (Yield)  
 - Two ways of expressing the market price – $ or %yld

Internal Rate of Return (IRR) equation looks similar:

$$
C F _ {0} = \frac {C F _ {1}}{(1 + I R R)} + \frac {C F _ {2}}{(1 + I R R) ^ {2}} + \dots + \frac {C F _ {N}}{(1 + I R R) ^ {N}}
$$

But fundamentally different

IRR generally used for non-traded projects, a tool for asking "is project valuable?"

- High IRR  $\rightarrow$  thinking "high return, valuable, worth doing"  
- Fundamental issue:  $CF_0$  is not the price or PV set by markets, simply the initial investment  
- Sometimes IRR gives us a reasonable answer, sometimes it is misleading

IRR Can Be Misleading - Simple Project Example

Today  $(\mathrm{yr} = 0)$

Build Factory

Tomorrow  $(\mathrm{yr} = 1)$

Produce product, earn profits

$\mathrm{CF} = \mathrm{Profit} =$

+$235

Next yr  $(\mathrm{yr} = 2)$

Tear down factory, dispose of waste

$\mathrm{CF} = \mathrm{Cost} = -\$ 136$

IRR formula:

$$
C F _ {0} = \frac {C F _ {1}}{(1 + I R R)} + \frac {C F _ {2}}{(1 + I R R) ^ {2}} + \dots + \frac {C F _ {N}}{(1 + I R R) ^ {N}}
$$

$$
1 0 0 = \frac {2 3 5}{(1 + I R R)} + \frac {- 1 3 6}{(1 + I R R) ^ {2}}
$$

So let's solve this, with our handy HP calculator and CF menu

- <Blue> Main / FIN / CFLO / <Blue> Clear Data  
- 100 INPUT / 235 INPUT / -136 INPUT / CALC  
- $10\mathrm{i}\%$  [starting guess] /  $\mathrm{IRR}\%$  [calculation]  $\rightarrow 3.14\%$  
- 20 i% [starting guess] / IRR% [calculation] → 31.86%

Big problem - two solutions:  $3.14\%$  and  $31.86\%$

- Which is right? Both

Fundamental problem: IRR gives multiple solutions

- Is this project really low return (3.14%) or really high (31.86%)?

# IRR is Asking Wrong Question

IRR asks wrong question.

Instead of IRR, use market discount rate (yields) to calculate NPV (adding up CF today and PV of future CFs)

- Ask "What is market value (NPV) if discount rate (yield) were  $y$ :

$$
N P V = C F _ {0} + \frac {C F _ {1}}{(1 + y)} + \frac {C F _ {2}}{(1 + y) ^ {2}} + \dots + \frac {C F _ {N}}{(1 + y) ^ {N}}
$$

$$
N P V = - 1 0 0 + \frac {2 3 5}{(1 + y)} + \frac {- 1 3 6}{(1 + y) ^ {2}}
$$

For our example: If y = 10%, NPV = $1.24. If y = 2%, NPV = -$0.33

Calculating market discount rates is really hard - firm cost of capital in corporate finance courses

# Yield & IRR Look Similar - Why Use Yield But Not IRR?

Two important facts about bonds:

I. Bond CFs are all negative today (pay a price) and positive tomorrow (earn coupons and principal)

- When future CFs are all the same sign, there is a single solution for yield (and IRR)

II. Even more important, markets give us the price

- Using market prices to uncover market discount rate (yield)

Bond Yield (Yield-to-Maturity):

$$
P V = \frac {P M T}{(1 + y)} + \frac {P M T}{(1 + y) ^ {2}} + \dots + \frac {P M T}{(1 + y) ^ {N}} + \frac {F V}{(1 + y) ^ {N}}
$$

- Bond Price  $\longleftrightarrow$  Yield - single solution, only one yield for each price

Bonds trade in Financial Markets, Price set by Market

$\bullet \Rightarrow$  Yield is Market Discount Rate (Expected Return, Required Return)

# Bond & Money Markets


---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Outline
linter-yaml-title-alias: Outline
---

Lecture 14

Thomas S. Coleman

3 May 2023; Draft May 8, 2023

# Outline

# Contents

1 Uncertainty, Risk, and Risk Premium 1  
2 Uncertainty, Distributions, and Portfolios 3  
3Leverage and Sharpe Ratio-Risk Adjusted Return 5

3.1 Sharpe Ratio: Risk-Return Relationship and Risk-Adjusted Return 5  
3.2 Using Sharpe - Comparing Bonds vs Equities 8

4 Combining Risky Assets in Portfolios - Diversification 10

4.1 Bonds & Stocks - Changing Correlation 10  
4.2 Bonds & Stocks - Changing Weights - Diversification 13  
4.3 Building Frontier - Efficient Frontier & Quadratic Optimization 15

5 Overall Market Risk Premium 20

5.1 Remember - Get Risk Premium, Work with Distribution 20  
5.2 Straightforward Theory - Indifference Curves & Budget Line 22  
5.3 Digression on Historical Returns, Arithmetic vs Geometric Average 23  
5.4 Equity Risk Premium From History 27

# 1 Uncertainty, Risk, and Risk Premium

# Remember Two Ideas: Discounting and Risk Adjustment

The two important ideas in Finance:

Discounting: Price of today vs future

- Nominal rates: price of cash today vs tomorrow  
Real rates: price of consumption today vs tomorrow - determines our behavior  
- Comes directly from budget line

Risk Premium: Adjusting future CFs to be equivalent to certainty (known) CFs

- Looks like pure discounting  $(1 / 1 + yadj)$ , but underneath adjusting for uncertainty  
- Important: Embeds the price of risk: how much it is worth, how much less we will pay for uncertain CFs

We know how to do both pure discounting and risk-adjusted discounting

- Remember: risk-adjusted discount rate  $yadj =$  certainty yield + risk premium  
- Comes from expected utility and then "trick":  $ADJCF = ORIGCF / 1 + rp$  
- But where do we get the risk-adjusted yield or risk premium?

# Our Goal: Get Risk Premium

Get Risk Premium for Bonds, Overall Market, Individual Stocks

Bonds: Complicated theory, Easy Calculations

- Theory: expected utility gives CF adjustment  $\frac{PromCF}{(1 + rp)}$  
- Calculations: Market Price  $\rightarrow$  Risk-adjusted yield  $\rightarrow$  Risk Premium  
- Can use  $PV = \frac{PromCF}{(1 + rf)(1 + rp)}$  directly to back out  $rp$

Overall Market and Individual Stocks: difficult - need new theory

Overall Market: Simple theory, Straightforward Calculation

- Theory: Simple Indifference Curves, Budget "Line"  
- Calculations: Use history to estimate  $rp$

Individual Stocks: Complicated Theory, Calculations

- Theory: How individual asset fits into overall market portfolio  
- Calculations: CAPM and beta  $(\beta)$  to estimate  $rp$

# What Is Uncertainty? What is Risk? What is Risk Premium?

Uncertainty: the spread of cash flows, the cause of risk

Distribution of cash flows,  

- Spread, often summarized by Standard Deviation

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/261de619dc349d95f476de7c40ffed6e4309508f0a8590efaf0b489b1296d4bb.jpg)

Risk: the price or value we assign to the Uncertainty

- Difference in PV between certain and uncertain CFs

Risk Premium: standard & simple method converting uncertain CFs into PV

- Looks like regular discounting:  $PV = \frac{Expected CF}{1 + rf + rp}$

# Tools We Need for Individual Stocks - Portfolio Theory

Portfolio: What is a portfolio?

Combining Assets: How assets combine in a portfolio

- Returns add or average  
- Standard Deviations  $(\sigma)$  do not add or average  
Diversification  
Efficient Frontier

Beta  $(\beta)$  and Contribution: How an asset contributes to standard deviation  $(\sigma)$

Leverage and Sharpe Ratio:

# 2 Uncertainty, Distributions, and Portfolios

# Contents

# Start Working with Probability & Distributions

So far avoided working directly with uncertainty & distributions

- Always in background, determining the risk premium  
- We have used the market to get risk premium:  $PV = \frac{Expected CF}{1 + rf + rp}$

Now: work directly with Distribution: the uncertainty of cash flows / returns

- Future distribution of cash flows or returns is our fundamental tool  
- The distribution (uncertainty) will produce price of risk  
- Often summarize with mean and standard deviation - but only summaries

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/12e121ccd1d42573f097db3efac10063938cbf638b03d807eafb3e2fcd6657be.jpg)  
Value of Office Building

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d79dded74bb067c3c8e85374297ccddee94144605623551f57b1e272d48c13cb.jpg)  
Value for more general project

# Working with Distributions: Mean and Volatility

Horizontal: CF or return in future  
Vertical: probability or likelihood

- Technically: picture is density

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/7bb356a5ad44908c2f9f75dc62fc2c05a53d09741af6471dde01fcc93223edd0.jpg)  
$\longrightarrow$  %stock return

We (almost always) work with mean  $(\mu$  or  $\bar{X}$ ) and standard deviation  $(\sigma)$

- $\sigma$  called volatility in financial markets. Also variance,  $\sigma^2$

Often work with Normal Distribution

- Classic bell-shaped, like in picture. Depends on only  $\mu$  &  $\sigma$  
- Works somewhat OK in finance - but many problems (fat tails!!)

But we care about the whole distribution (not just  $\mu \& \sigma$ )

# Portfolio: Mean, Volatility, and Correlation

Portfolio:

- Take $100, invest across two assets, A & B  
 - If put $30 in A, then call the weight or fraction wA(=0.3)

# Single Asset  $A$

Using period-by-period returns to calculate historical returns

$$
\mu_ {A} = \frac {1}{n} \sum_ {i = 1} ^ {n} \tilde {R} _ {i}
$$

$$
\sigma_ {A} = \sqrt {\frac {1}{n - 1} \sum_ {i = 1} ^ {n} \left[ \tilde {R} _ {i} - \mu_ {A} \right] ^ {2}}
$$

Portfolio, weights  $w_{A}$ ,  $w_{B}$

Combining two (or more) assets into a portfolio

$$
\mu_ {P} = w _ {A} \cdot \mu_ {A} + w _ {B} \cdot \mu_ {B}
$$

Mean is simple average

$$
\sigma_ {P} = \sqrt {w _ {A} ^ {2} \sigma_ {A} ^ {2} + 2 w _ {A} w _ {B} \rho_ {A B} \sigma_ {A} \sigma_ {B} + w _ {B} ^ {2} \sigma_ {B} ^ {2}}
$$

Volatility is not average

Correlation: do returns for  $A$  and  $B$  move together? -1=always opposite, +1=always same

$$
\rho = \frac {\sum_ {i = 1} ^ {n} \left(\tilde {R} _ {A i} - \mu_ {A}\right) \left(\tilde {R} _ {B i} - \mu_ {B}\right)}{\sqrt {\sum_ {i = 1} ^ {n} \left[ \tilde {R} _ {A i} - \mu_ {A} \right] ^ {2}} \sqrt {\sum_ {i = 1} ^ {n} \left[ \tilde {R} _ {B i} - \mu_ {B} \right] ^ {2}}}
$$

# 3 Leverage and Sharpe Ratio - Risk Adjusted Return

# 3.1 Sharpe Ratio: Risk-Return Relationship and Risk-Adjusted Return Contents

# Using Leverage to Create Any Return

Discuss how we can use Leverage to create any return we want

- Leverage is making a portfolio by combining a risky asset with riskless borrowing or lending  
- Risky Asset: uncertainty in CF, volatility  $\sigma$  
- Riskless Asset: known CF, zero volatility  
- Portfolio weight  $w$  held in risky asset ( $w = 1$  means hold only risky,  $w = 0$  means hold no risky)

Example: You have $100, and can also borrow

- Example 1: use your $100 to buy $100 of S&P index (risky)

$$
- w = 1
$$

-Zero leverage, no borrowing

- Example 2: use your $100 plus borrow another $100, to buy $100 + $100 of S&P index

$$
- w = 2
$$

- $100\%$  leverage, borrowing equal to investment (equity)

# Example of Leverage - Get Any Return We Want

Combine two assets (risky & "riskless") to get any return:

- Risky asset X, return  $\mu_{x}$ , vol  $\sigma_{x}$  
- "Riskless" asset (borrow & lend), return  $\mu_{rf}$ , vol  $\sigma = 0$ $\mu_p = w\cdot \mu_x + (1 - w)\cdot \mu_{rf}$  
- By choosing Leverage  $(w > 1)$  we can get higher returns  $\mu_{p} = \mu_{rf} + w\cdot (\mu_{x} - \mu_{rf})$  
- But higher return means higher volatility

Example: choosing  $w = 1$ ,  $w = 2$ ,  $w = 0$

- w = 1: $100 risky, $0 riskless, μp = μrf + 1 · (μx - μrf) = μx, vol 1 · σx  
 - w = 2: $200 risky, borrow $100, μp = μrf + 2 · (μx - μrf) = 2μx - μrf, vol 2 · σx  
 - w = 0: $0 risky, $100 riskless, μp = μrf + 0 · (μx - μrf) = μrf, vol 0 · σx

Say  $\mu_{x} = 5.4\%$  , vol  $\sigma_{x} = 8.9\%$  risk-free  $\mu_{rf} = 3.9\%$

- w = 1: $100 risky, earn 3.9+1(5.4-3.9)=5.4%, vol 1σx=8.9%  
 - w = 2: $200 risky, borrow $100, earn 3.9+2(5.4-3.9)=6.9%, vol 2σx = 17.8%  
 - w = 0: $0 risky, $100 riskless, earn 3.9+0(5.4-3.9)=3.9%, vol 0σx = 0

How to Describe Leverage, Return, Volatility – William Sharpe's Ratio

Portfolio Return:  $\mu_p = \mu_{rf} + w\cdot (\mu_x - \mu_{rf})$

Portfolio Volatility:  $\sigma_{p} = w\cdot \sigma_{x}$

Is there a simple way to write this, a simple statistic that summarizes return-vs-volatility relationship?

- Yes, Sharpe Ratio, introduced by William Sharpe

Write leverage  $w = \sigma_{p} / \sigma_{w}$ , and then return is:

$$
\mu_ {p} = \mu_ {r f} + w \cdot \left(\mu_ {x} - \mu_ {r f}\right); \quad \mu_ {p} = \mu_ {r f} + \sigma_ {p} \cdot \frac {\left(\mu_ {x} - \mu_ {r f}\right)}{\sigma_ {x}}
$$

and call that ratio the Sharpe Ratio:

$$
S _ {x} = \frac {\left(\mu_ {x} - \mu_ {r f}\right)}{\sigma_ {x}} \Rightarrow \mu_ {p} = \mu_ {r f} + \sigma_ {p} \cdot S _ {x}
$$

Sharpe Ratio - Risk-Return Relation & Risk-Adjusted Return

Portfolio Return:  $\mu_p = \mu_{rf} + \sigma_p \cdot S_x$

Sharpe Ratio:  $S_{x} = \frac{(\mu_{x} - \mu_{rf})}{\sigma_{x}}$

$$
\sigma_ {p} = w \cdot \sigma_ {x}
$$

Return equation now tells how return changes with volatility

- Higher volatility  $(\sigma_{p})$  means higher return  
- Straight line (affine) relationship

Sharpe ratio measures risk-adjusted return

- Higher Sharpe means get more return for higher volatility  
Higher Sharpe means steeper line

Sharpe describes Ret vs vol line

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/e97727ec4164e2eff65eac51db61eda9fe3e9171aa05412b2a201d9290196e71.jpg)

# Sharpe Ratio Example

Combine two assets:

- Risky asset X, return  $r_x$ , vol  $\sigma_x$  
- "Riskless" asset (borrow & lend.  $\sigma = 0$ ), return  $r_f$ , vol  $\sigma = 0$

Example: choosing  $w = 1$ ,  $w = 2$ ,  $w = 0$

$$
\text {Say} r _ {x} = 5.4 \%, \sigma_ {x} = 8.9 \%, r f = 3.9 \%, S _ {x} = \frac {\left(r _ {x} - r f\right)}{\sigma_ {x}} = 0.169
$$

- w = 1: $100 risky, earn 3.9+1(5.4-3.9)=5.4%, vol 1σx = 8.9%  
 - w = 2: $200 risky, borrow $100, earn 3.9+2(5.4-3.9)=6.9%, vol 2σx = 17.8%  
 - w = 0: $0 risky, $100 riskless, earn 3.9+0(5.4-3.9)=3.9%, vol 0σx = 0

Choose vol get Return  $= rf + vol \cdot S_{x}$

$\bullet$ $\mathrm{w = 1,vol = 1^{*}8.9}$ $\mathrm{R = 3.9 + 8.9^*0.169 = 5.4}$  
$\bullet$  w=2, vol = 2*8.9=17.8, R=3.9+17.8*0.169=6.9  
$\bullet$  w=0, vol = 0*8.9, R=3.9+0*0.169=3.9

Sharpe gives slope of risk-return liine

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/5dad1e924d1e652cfcdd13168fc40d6109f42a3768a3d5e1a1ea1e47be86bf73.jpg)

# Debt, Equity, Assets, and Leverage

Assets - Total of the portfolio, all assets, the overall vale of the portfolio

Equity - What owners put in, original investment

Debt - Borrowings, what owners borrow

Owners can choose to borrow (issue debt) - choose Debt / Equity ratio

- Split overall Assets into Debt (borrowings) versus Equity (original investment)

# Important Concepts

# Percent Debt

$$
\% D = \frac {D}{A} = \frac {D}{D + E}
$$

# Debt-to-Equity

%Leverage

$$
\frac {D}{E} = \frac {\% D}{1 - \% D}
$$

Examples

# Leverage

$$
\frac {\text {Assets}}{E} = \frac {A}{E} = \frac {1}{1 - \% D}
$$

0%

50%

80%

0 or  $0\%$

1 or  $100\%$

4 or  $400\%$

1 or 1-to-1

2 or 2-to-1

5 or 5-to-1

# Leverage & Sharpe Formulae - Summary - Repeated

Portfolio Combining "Risky" and "Riskless" assets:

- Risky asset X, return  $\mu_{x}$ , vol  $\sigma_{x}$  
- "Riskless" asset (borrow & lend), return  $\mu_{rf}$ , vol  $\sigma = 0$

Portfolio Return (weights  $w$ ,  $1 - w$ ):

- $\mu_{p} = w\cdot \mu_{x} + (1 - w)\cdot \mu_{rf} = \mu_{rf} + w\cdot (\mu_{x} - \mu_{rf})$  
- $Vol = \sigma_{p} = w \cdot \sigma_{x}$

Leverage: Usually think  $0 < w < 1$ , but allow leverage  $w > 1$

Portfolio Return vs Vol: If want to choose a vol  $\sigma_{p}$ , choose  $\sigma_{p} = w \cdot \sigma_{x}$  or  $w = \frac{\sigma_{p}}{\sigma_{x}}$

- Choose any vol  $\sigma_{p} = w\cdot \sigma_{x}$  by choosing  $w = \frac{\sigma_p}{\sigma_x}$ ,  $0 < w$  
- $\mu_p = \mu_{rf} + w \cdot (\mu_x - \mu_{rf}) = \mu_{rf} + \sigma_p \cdot S_x$

Sharpe Ratio: Define  $S_{x} = \frac{(\mu_{x} - \mu_{rf})}{\sigma_{x}}$

# 3.2 Using Sharpe - Comparing Bonds vs Equities

# Contents

# Sharpe for Various Assets

From BMA Table 7.1 & p 170. Class Exercise: What is the Sharpe?

<table><tr><td>1900-2011</td><td>Avg Return</td><td>Std Dev</td><td>Risk Prem</td><td>Sharpe</td></tr><tr><td>TBills</td><td>3.9%</td><td>-</td><td>0.0%</td><td>0.00</td></tr><tr><td>T Bonds</td><td>5.4%</td><td>8.9%</td><td>1.4%</td><td>0.17</td></tr><tr><td>Stocks</td><td>11.3%</td><td>20.0%</td><td>7.3%</td><td>0.37</td></tr></table>

Class Exercise: Say you wanted  $8.9\%$  vol?

TBonds,  $\mu = 5.4\%$ $\sigma = 8.9\%$

or Stocks,  $\mu = 11.3\%$ $\sigma = 20\%$

Turns out Stocks better:

- $\mu_{p} = \mu_{rf} + \sigma_{p} \cdot S_{x} = 3.9 + 8.9 \cdot 0.37 = 7.2\%$  
$\mathrm{L} = w = \frac{\sigma_p}{\sigma_x} = \frac{8.9}{20} = 0.445$  (\$55.5 at bank)

Higher return than  $5.4\%$  TBonds

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/6fff845b5f324e14dcbccb5c9c01101a42253384ca3f6941a31030f2eb5c57ae.jpg)

What is going on? Why buy bonds at all? Will see why in a minute - DIVERSIFICATION!

It would be a mistake to think that because stocks have the higher Sharpe you should only buy stocks. It is true that if you had to buy only one or the other, stocks would be the best choice. But

combining the two together you can get a higher Sharpe. For example, if the correlation between them were 0, a  $50/50$  portfolio would have a return of  $8.35\%$  and volatility of  $10.95\%$ . This gives a Sharpe  $= (8.35 - 3.9) / 10.95 = 0.41$ .

# Sharpe Widely Used - Part-Way to Measuring Risk

Sharpe ratio and leverage idea incredibly useful and powerful

- Considers risk-return trade-off  
- But not yet correct measure for "Risk" (that will be  $\beta$  (beta) or contribution to portfolio risk)

<table><tr><td></td><td>Avg Return</td><td>Std Dev</td><td>Risk Prem</td><td>Sharpe</td></tr><tr><td>TBills</td><td>3.9%</td><td>2.8%</td><td>0.0%</td><td>0.00</td></tr><tr><td>TBonds</td><td>5.4%</td><td>8.9%</td><td>1.4%</td><td>0.17</td></tr><tr><td>Stocks</td><td>11.3%</td><td>20.0%</td><td>7.3%</td><td>0.37</td></tr></table>

Tells us that Stocks look more risky, but in a real sense less risky.

- Can produce same vol as TBonds, higher return (7.2%)  
- Or same return, lower vol (4.05%)

But why invest in bonds at all?

- Absolute risk (vol, standard deviation) is not the measure we need for risk

Correlation matters - how an asset contributes to portfolio vol

$$
\mathrm{r} = \mathrm{rf} + \mathrm{sig}^{*}\mathrm{S}. \mathrm{r} = 5.4, \mathrm{S} = 0.37 = > \mathrm{sig} = 4.05 \%
$$

# 4 Combining Risky Assets in Portfolios - Diversification

# 4.1 Bonds & Stocks - Changing Correlation

# Contents

# Combine Two Risky Assets (Bonds & Stocks)

Instead of one risky & one riskless, combine two risky assets into a Portfolio

- What is a "Portfolio"? Combining assets together

Say we have $100 to invest

- Example: Split 50/50 between bonds & stocks  
 - $50 in Bonds, $50 in stocks  
- Weight  $w_{1} = 0.50$ ,  $w_{2} = 0.50$

Portfolio Return: straight average between Bond & Stock

$E(R) = w_{1}\cdot \mu_{1} + w_{2}\cdot \mu_{2}$  
Each contributes weight  $(w_{i}$  or  $1 / 2)$

Portfolio Volatility (Standard Deviation,  $\sigma$ ): not straight average

Except for correlation  $= 1.0$  

- $\sigma = \sqrt{w_1^2 \cdot \sigma_1^2 + 2 \cdot \rho \cdot w_1 \cdot \sigma_1 \cdot w_2 \cdot \sigma_2 + w_2^2 \cdot \sigma_2^2}$  
- They don't contribute their weight - not 50/50

# Diversification When Correlation Changes

From BMA Table 7.1 & p 170. Look at Portfolio: Combination of Bond & Stock

<table><tr><td></td><td>Corr</td><td>Avg Return</td><td>Std Dev</td><td>Risk Prem</td><td>Sharpe</td></tr><tr><td>TBills</td><td></td><td>3.9%</td><td>-</td><td>0.0%</td><td>0.00</td></tr><tr><td>TBonds</td><td></td><td>5.4%</td><td>8.9%</td><td>1.4%</td><td>0.17</td></tr><tr><td>Stocks</td><td></td><td>11.3%</td><td>20.0%</td><td>7.3%</td><td>0.37</td></tr><tr><td>1/2B + 1/2S</td><td>1</td><td>8.4%</td><td>14.5%</td><td>4.5%</td><td>0.31</td></tr><tr><td>1/2B + 1/2S</td><td>0.7</td><td>8.4%</td><td>13.5%</td><td>4.5%</td><td>0.33</td></tr><tr><td>1/2B + 1/2S</td><td>0.0</td><td>8.4%</td><td>10.9%</td><td>4.5%</td><td>0.41</td></tr><tr><td>1/2B + 1/2S</td><td>-0.7</td><td>8.4%</td><td>7.6%</td><td>4.5%</td><td>0.59</td></tr></table>

Portfolio Return: half-way between Bond & Stock

$E(R) = w_{1}\cdot \mu_{1} + w_{2}\cdot \mu_{2}$  
Each contributes weight  $(w or 1 / 2)$

Portfolio Volatility (Standard Deviation,  $\sigma$ ): less than half-way

Except for correlation  $= 1.0$  
$\sigma = \sqrt{w_1^2\cdot\sigma_1^2 + 2\cdot\rho\cdot w_1\cdot\sigma_1\cdot w_2\cdot\sigma_2 + w_2^2\cdot\sigma_2^2}$  

- They don't contribute their weight - not  $50/50$  except  $\rho = 1$

As correlation  $\rho \downarrow$  volatility  $\sigma \downarrow$  diversification

- With  $\rho = 0.7$  volatility down below average: less than  $14.5\%$  
- With  $\rho = 0.0$  volatility lower still but return same - Sharpe up  
- With  $\rho = -0.7$  volatility lower than bonds - Sharpe high

Diversification lowers portfolio vol – one of most important results in finance

Volatilities Do Not Add - Bonds + Stocks = Lower Vol

From BMA Table 7.1 & p 170. Look at Portfolio: Combination of Bond & Stock

<table><tr><td></td><td>Corr</td><td>Avg Return</td><td>Std Dev</td><td>Risk Prem</td><td>Sharpe</td></tr><tr><td>TBills</td><td></td><td>3.9%</td><td>-</td><td>0.0%</td><td>0.00</td></tr><tr><td>T bonds</td><td></td><td>5.4%</td><td>8.9%</td><td>1.4%</td><td>0.17</td></tr><tr><td>Stocks</td><td></td><td>11.3%</td><td>20.0%</td><td>7.3%</td><td>0.37</td></tr><tr><td>1/2B + 1/2S</td><td>1</td><td>8.4%</td><td>14.5%</td><td>4.5%</td><td>0.31</td></tr><tr><td>1/2B + 1/2S</td><td>0.7</td><td>8.4%</td><td>13.5%</td><td>4.5%</td><td>0.33</td></tr><tr><td>1/2B + 1/2S</td><td>0</td><td>8.4%</td><td>10.9%</td><td>4.5%</td><td>0.41</td></tr><tr><td>1/2B + 1/2S</td><td>-0.7</td><td>8.4%</td><td>7.6%</td><td>4.5%</td><td>0.59</td></tr></table>

Portfolio Volatility (Standard Deviation,  $\sigma$ ): less than half-way

Except for correlation  $= 1.0$  
$\sigma = \sqrt{w_1^2\cdot\sigma_1^2 + 2\cdot\rho\cdot w_1\cdot\sigma_1\cdot w_2\cdot\sigma_2 + w_2^2\cdot\sigma_2^2}$  

- They don't contribute their weight

DIVERSIFICATION: combining assets gives better risk-return: higher Sharpe

# How to Think About Correlation

Correlation: do returns for  $A$  and  $B$  move together? -1=always opposite, +1=always same

$$
\rho = \frac {\sum_ {i = 1} ^ {n} \left(\tilde {R} _ {A i} - \mu_ {A}\right) \left(\tilde {R} _ {B i} - \mu_ {B}\right)}{\sqrt {\sum_ {i = 1} ^ {n} \left[ \tilde {R} _ {A i} - \mu_ {A} \right] ^ {2}} \sqrt {\sum_ {i = 1} ^ {n} \left[ \tilde {R} _ {B i} - \mu_ {B} \right] ^ {2}}}
$$

Correlation of bonds and stocks maybe 0.0 or -0.2: do not move together

- Provides opportunity for diversification in creating portfolios

# 4.2 Bonds & Stocks - Changing Weights - Diversification Contents

# In Reality, Change Weight Not Correlation

Now actual correlation, and vary weights:  $w_{1} = w$  (Bonds) and  $w_{2} = 1 - w$

<table><tr><td></td><td>Corr</td><td>Avg Return</td><td>Std Dev</td><td>Risk Prem</td><td>Sharpe</td><td>β B</td><td>β S</td></tr><tr><td>TBills</td><td></td><td>3.9%</td><td>-</td><td>0.0%</td><td>0.00</td><td></td><td></td></tr><tr><td>T bonds</td><td></td><td>5.4%</td><td>8.9%</td><td>1.4%</td><td>0.17</td><td></td><td></td></tr><tr><td>Stocks</td><td></td><td>11.3%</td><td>20.0%</td><td>7.3%</td><td>0.37</td><td></td><td></td></tr><tr><td>1/10B + 9/10S</td><td>0.20</td><td>10.7%</td><td>18.2%</td><td>6.8%</td><td>0.37</td><td>0.12</td><td>1.10</td></tr><tr><td>2/10B + 8/10S</td><td>0.20</td><td>10.1%</td><td>16.4%</td><td>6.2%</td><td>0.38</td><td>0.16</td><td>1.21</td></tr><tr><td>8/10B + 2/10S</td><td>0.20</td><td>6.6%</td><td>8.8%</td><td>2.7%</td><td>0.30</td><td>0.90</td><td>1.39</td></tr><tr><td>9/10B + 1/10S</td><td>0.20</td><td>6.0%</td><td>8.6%</td><td>2.1%</td><td>0.24</td><td>1.00</td><td>0.97</td></tr></table>

Portfolio Return: linearly in between Bond & Stock

- $E(R) = w_{1} \cdot \mu_{1} + w_{2} \cdot \mu_{2}$ , Each contributes weight  $(w_{i})$

Portfolio Volatility (Standard Deviation,  $\sigma$ ): not linearly between

$\sigma_{p} = \sqrt{w_{1}^{2}\cdot\sigma_{1}^{2} + 2\cdot\rho\cdot w_{1}\cdot\sigma_{1}\cdot w_{2}\cdot\sigma_{2} + w_{2}^{2}\cdot\sigma_{2}^{2}}$  
Bond & Stock don't contribute their weight  $w_{i}$

Compare  $90\%$  vs  $100\%$  Bonds: Return  $\uparrow$ , Volatility  $\downarrow$ , Sharpe  $\uparrow$

- Volatility actually down by adding volatile stocks!

How can volatility go down when add more volatile stocks?

- $\sigma_{p} = \sqrt{w_{1}^{2}\cdot\sigma_{1}^{2} + 2\cdot\rho\cdot w_{1}\cdot\sigma_{1}\cdot w_{2}\cdot\sigma_{2} + w_{2}^{2}\cdot\sigma_{2}^{2}}$  counter-intuitive

Need to look at  $\beta$  (beta) and contribution-to-risk - detail next lecture

- $\sigma_{port} = [w_1\beta_1 + \beta_2w_2]\cdot \sigma_{port}$  
- Subtract a little bond, subtract  $w_{1}\beta_{1}$ . Add stock, add  $w_{2}\beta_{2}$  
- Since  $\beta_B > \beta_S$  for  $w_1 = 0.9$ , vol down when  $w$  down by 0.1  
- $\beta$  depends on weight  $w$ , vol, correlation, …

As add more stocks, Sharpe can actually go higher than Stocks only

- With  $80\%$  Bonds Vol  $\uparrow$  but Sharpe  $\uparrow$  
- With  $20\%$  Bonds vol pretty high but return higher, Sharpe  $>$  Stocks only  
- Go to  $10\%$  Bonds and Sharpe starts to fall again

Cannot look at stock vol  $(\sigma_{stock})$  alone - contribution to overall vol matters

- Stocks high vol (20%) but reduces vol for  ${}^{9/{10}}$  Bonds,Sharpe highest  ${}^{2/{10}}$

# Important Lessons: Diversification, Contribution, Frontier

<table><tr><td></td><td>Corr</td><td>Avg Ret</td><td>Std Dev</td><td>Avg</td><td>Risk Prem</td><td>Sharpe</td><td>β B</td><td>β S</td></tr><tr><td>TBonds</td><td></td><td>5.4%</td><td>8.9%</td><td></td><td>1.4%</td><td>0.17</td><td></td><td></td></tr><tr><td>Stocks</td><td></td><td>11.3%</td><td>20.0%</td><td></td><td>7.3%</td><td>0.37</td><td></td><td></td></tr><tr><td>2/10B + 8/10S</td><td>0.20</td><td>10.1%</td><td>16.4%</td><td>17.8</td><td>6.2%</td><td>0.38</td><td>0.16</td><td>1.21</td></tr><tr><td>8/10B + 2/10S</td><td>0.20</td><td>6.6%</td><td>8.8%</td><td>11.1</td><td>2.7%</td><td>0.30</td><td>0.90</td><td>1.39</td></tr><tr><td>9/10B + 1/10S</td><td>0.20</td><td>6.0%</td><td>8.6%</td><td>10.0</td><td>2.1%</td><td>0.24</td><td>1.00</td><td>0.97</td></tr></table>

# Lesson 1: Diversification:

Portfolio Volatility (Standard Deviation,  $\sigma$ ):

$$
\sigma_ {p} = \sqrt {w _ {1} ^ {2} \cdot \sigma_ {1} ^ {2} + 2 \cdot \rho \cdot w _ {1} \cdot \sigma_ {1} \cdot w _ {2} \cdot \sigma_ {2} + w _ {2} ^ {2} \cdot \sigma_ {2} ^ {2}}
$$

Vol not linearly between bond & stock vols

Bond & Stock don't contribute their weight  $w_{i}$  

- Portfolio vol always less than "Avg", unless  $\rho = +1$  
- Free Lunch: combine assets and get lower vol, higher Sharpe

Lesson 2: For individual assets, contribution matters, not vol:  $\sigma_{port} = [w_1\beta_1 + \beta_2w_2]\cdot \sigma_{port}$

- Stocks are high vol (20%) but reduce portfolio vol  $\left( {{}^{10}/{10} \rightarrow  9/{10}\text{ bonds }}\right)$  
- Stock contribution  $(\beta_{stock})$ , not stock vol  $(\sigma_{stock})$  matters  
- Need to learn about contribution ( $\beta_{\text{stock}}$ )

Lesson 3: Portfolio frontier curved like picture

- Curved - at left may be return  $\uparrow$  & vol  $\downarrow$  
- General picture for combining assets

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/330f19686b4297f21a5613cd4e2f9a3d1ed9171a6e0273392d49a1ba44bb7812.jpg)

# 4.3 Building Frontier - Efficient Frontier & Quadratic Optimization Contents

# Two Assets - Curved Frontier

Example, showing same as above (for Bonds & Stocks)

$\bullet \mu_{1},\mu_{2}$  are  $5\%$ $10\%$  

- Volatilities,  $\sigma_{1}$ ,  $\sigma_{2}$ ,  $10\%$ ,  $20\%$  
correlation  $\rho = -0.5$  
- Change weights  
- Only blue part matters - don't want red (low return, high vol)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/24e4ed4b2d46b0aa393cd9a687042d47cf7b707c5d4e08729274dcd8cd500faf.jpg)

# Three Assets - Start Ruling Out Some Portfolios

# Consider only 1&2, 2&3 (not 1&3)

- Picture shows possibilities

$-\mu_{1}, \mu_{2}, \mu_{3}$  are  $5\%$ ,  $10\%$ ,  $15\%$  
Volatilities,  $\sigma_{1}$ $\sigma_{2}$ $\sigma_{3}$ $10\%$ $20\%$ $25\%$  
-correlation  $1\& 2 = -0.5$ $1\& 3 = 0.0$

- Cannot say which is "best"
- But can rule some out  
- For 1&2 (blue), rule out return lower than 1&3 (red)  
- For 1&3 (green), rule out return lower than 1&2 (red)
- Starting to build possible portfolios

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/e1a8da463c31780a8a5c6d73898de8b7c151e5c217df4ee3af11bbf41d917e72.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/78c27b38a897ce69ac1976b577197becf92d7fd7d6a0aca60ec26bc317a17678.jpg)

# Three Assets - Ruling Out Some Portfolios

Now: Consider 1&2, 2&3, 1&3

Pictures showswereuleoutmore&more

$-\mu_{1}, \mu_{2}, \mu_{3}$  are  $5\%$ ,  $10\%$ ,  $15\%$  
Volatilities,  $\sigma_{1}$ ,  $\sigma_{2}$ ,  $\sigma_{3}$ ,  $10\%$ ,  $20\%$ ,  $25\%$  
-correlation  $1\& 2 = -0.5$  ，  $1\& 3 = 0.0$

- Rule out red, portfolios that are "inefficient"

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/9458ae625215ad0108fd0f970b47dd750de0e97abd5a6d2724531ad3aba2b560.jpg)

Starting to build possible portfolios - "Efficient Frontier"

Here we are building 2-by-2  

- We really want to take all together - Quadratic Optimization:

Minimize  $Variance = \sum_{i,j}w_iw_j\sigma_{ij}$ $\sigma_{ij} = \rho_{ij}\sigma_i\sigma_j$

s.t. fixed return Expected Return  $= \sum_{i} w_{i}\mu_{i} = X$

# Quadratic Optimization - Best Possible Using Three Assets

Minimize Variance  $= \sum_{i,j}w_i w_j\sigma_{ij}$ $\sigma_{ij} = \rho_{ij}\sigma_i\sigma_j$

s.t. fixed return Expected Return  $= \sum_{i} w_{i} \mu_{i} = X$

and weights:  $\sum_{i}w_{i} = 1$

- Pictures shows "envelope" - lowest vol for each possible return
- $\mu_{1}$ ,  $\mu_{2}$ ,  $\mu_{3}$  are  $5\%$ ,  $10\%$ ,  $15\%$  
Volatilities,  $\sigma_{1}$ $\sigma_{2}$ $\sigma_{3}$ $10\%$ $20\%$ $25\%$  
-correlation  $1\& 2 = -0.5$  ，  $1\& 3 = 0.0$

- All portfolios within red are "inefficient"

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/3f56ebfbe41047e398f29b7154d5765d67a63f590d9f99535573f34b4838ad89.jpg)

Turns out, simple solution using matrixes (by solving Lagrangian for quadratic form)

John Cochrane's book Asset Pricing, p 82

Matrix solution for quadratic optimization in Cochrane Asset Pricing p. 82. Turns out to be simple matrix manipulation. The problem is:

$$
\min  _ {w} w ^ {\prime} \Sigma w \text {s . t .} w ^ {\prime} E = \mu ; w ^ {\prime} 1 = 1
$$

Solution: Let

$$
A = E ^ {\prime} \Sigma^ {- 1} E; \quad B = E ^ {\prime} \Sigma^ {- 1} 1; \quad C = 1 ^ {\prime} \Sigma^ {- 1} 1
$$

Then, for a given mean return  $\mu$ , the minimum variance portfolio has variance

$$
\operatorname {v a r} \left(R ^ {p}\right) = \frac {C \mu^ {2} - 2 B \mu + A}{A C - B ^ {2}}
$$

with portfolio weights

$$
w = \Sigma^ {- 1} \frac {E (C \mu - B) + 1 (A - B \mu)}{A C - B ^ {2}}
$$

The graphs are from spreadsheet AppFinMgmt2018/lectures/volgraph.xls

# Efficient Frontier - Ruling Out "Inefficient" Portfolios

We end up with "Efficient Frontier"

Each half-ellipse represents possible weighted combinations for two stocks  

- Composite of all assets makes up "efficient frontier"

Get there with Quadratic Optimization

- shown with line "Return = X"

Minimize  $Variance = \sum_{i,j}w_{i}w_{j}\sigma_{ij}\sigma_{ij} = \rho_{ij}\sigma_i\sigma_j$

s.t. fixed return Expected Return  $= \sum_{i}w_{i}\mu_{i} = X$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/cb1157b68e60560441d865b47c9623d27f4b225442e70797d8da2813a2a81ec1.jpg)  
Standard Deviation

# Which is "Best"? - Can Rule Out Some

Which Portfolio?

Cannot yet say exactly, but can rule some out

- Stay out of lower right (SE) quadrant  
- Never want high volatility & low return

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/41efd2352980d1752432b0fab4228aa23433bf8ba2fb222c786312f9b466a606.jpg)  
Return  
Risk

# 5 Overall Market Risk Premium

# 5.1 Remember - Get Risk Premium, Work with Distribution Contents

# Our Goal: Get Risk Premium

Get Risk Premium for Bonds, Overall Market, Individual Stocks Bonds: Complicated theory, Easy Calculations

- Theory: expected utility gives CF adjustment  $\frac{PromCF}{(1 + rp)}$  
- Calculations: Market Price  $\rightarrow$  Risk-adjusted yield  $\rightarrow$  Risk Premium  
- Can use  $PV = \frac{PromCF}{(1 + rf)(1 + rp)}$  directly to back out  $rp$

Overall Market: Cannot back out Risk Premium, using Expected CFs

- Work with full distribution of CFs and returns  
- Theory: Simple Indifference Curves, Budget "Line"  
- Calculations: Use history to estimate  $rp$

Individual Stocks: Complicated Theory, Calculations

- Theory: How individual asset fits into overall market portfolio  
- Calculations: CAPM and beta  $(\beta)$  to estimate  $rp$

# Working with Distributions: Mean and Volatility

Must start with full distribution of CFs & returns

Horizontal: CF or return in future  
Vertical: probability or likelihood

- Technically: picture is density

We (almost always) work with mean  $(\mu$  or  $\bar{X}$ ) and standard deviation  $(\sigma)$

- $\sigma$  called volatility in financial markets. Also variance,  $\sigma^2$

And put in indifference curves for  $\mu \& \sigma$

Tradeoff between overall return & vol

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/c0b85dee7cf802d9819020bfd822baf2a52676d90a8cadebf070a1e3fb38fa40.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/64cf62125097ee5886c48722ddd2d8032accd54c134ad31bbdb22e9a28860674.jpg)  
Standard Deviation

# 5.2 Straightforward Theory - Indifference Curves & Budget Line Contents

Straightforward Theory - Indifference Curves & Budget Line How do we get overall market return? (\& RP=Ret-rf)

- You should know the answer: budget line & utility

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/20fc567cd1bd5bbf8ca24bb85b8f94f69ae9c8a9a47bd14e5fed694d851eb747.jpg)  
Budget Set - Efficient Frontier

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/3d525c64027ffbc27b8b18c30ff0e9261a5d28b5ddfcedbfd91830d839985cb1.jpg)  
Utility & Preferences over Ret & Std Dev

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/9995fa10f270bcfe73d76ac50fa0c4c7e77e6bac9e30518bd47bccb43e041d2f.jpg)

# Overall vs Stock Market Overall or Total Market

- Exactly that: Bonds + Domestic Stocks + Foreign Stocks + Real Estate + Human Capital
Textbooks never use Total Market  
- Instead use Domestic Stock Market (say S&P 500 index)  
- Why? What we have, what we can calculate

# 5.3 Digression on Historical Returns, Arithmetic vs Geometric Average Contents

History for Stocks, Bonds, Bills

Financial Analysts and Portfolio Managers: Obsessed with history of prices

US history from 1900 to 2012  

- I am having you look at history for the past few years

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/372199677e962469137454fd609a46dcc6637f315fbb4a6760244212f746cfd8.jpg)

Picture is prices, but always look at returns:  $1 + R_{simple} = \frac{P_{t+1}}{P_t}$

# History for Stocks, Bonds, Bills

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b1a487ffcd24984fa595911cef747ffea2cbc3fea37d72b90daa67d980f00c43.jpg)

Historical returns, over 100 years. BMA Table 7.1

- Learn about risk premium

<table><tr><td></td><td>Nominal</td><td>Real</td><td>Risk Prem</td></tr><tr><td>TBills</td><td>3.9%</td><td>1.0%</td><td>0.0%</td></tr><tr><td>Gov’t Bonds</td><td>5.4%</td><td>2.5%</td><td>1.4%</td></tr><tr><td>Stocks</td><td>11.3%</td><td>8.2%</td><td>7.3%</td></tr></table>

We use historic risk premium as estimate of the risk premium for the stock market

- Remember - we can back out risk premium for a bond, but not a stock

# Average Returns - Arithmetic vs Geometric

Historical returns, over 100 years. BMA Table 7.1

- Learn about risk premium

<table><tr><td></td><td>Nominal</td><td>Real</td><td>Risk Prem</td></tr><tr><td>TBills</td><td>3.9%</td><td>1.0%</td><td>0.0%</td></tr><tr><td>Gov’t Bonds</td><td>5.4%</td><td>2.5%</td><td>1.4%</td></tr><tr><td>Stocks</td><td>11.3%</td><td>8.2%</td><td>7.3%</td></tr></table>

We use historic risk premium as estimate of the risk premium for the stock market

- Calculate historic year-by-year returns, and take the average

But averaging returns brings up some confusing issues - that I never got straight until now (and I've never found anybody who could explain to me)

# Two questions we ask when averaging historical returns

Average risk premium Distribution of returns - if we pick an "average" year, what is return? Arithmetic Average Usual average

"Average" growth during period How much growth, year-by-year, produces the growth we actually see? Geometric Average or continuously compounded

- We don't usually have to worry about difference, but compounding matters

# Digression on Arithmetic vs Geometric Return

"Big Oil" example (BMA ch 7): start at $1.00/share, yearly changes

"Simple" return is:  $1 + r_{simple} = \frac{P_1}{P_0}$

- What we usually think of and use

Arithmetic average tells what happens in an "average" year:  $+10\%$

- Does not tell us how much growth year-by-year  
 - 10% for 3 year: $1.331, not $1.287

<table><tr><td>$1.00</td><td>% simple</td><td>% cc</td></tr><tr><td>$0.90</td><td>-10%</td><td>-10.54%</td></tr><tr><td>$0.99</td><td>+10%</td><td>+9.53%</td></tr><tr><td>$1.287</td><td>+30%</td><td>+26.24%</td></tr><tr><td>Avg</td><td>+10%</td><td>+8.41%</td></tr><tr><td>Geom</td><td>+8.77%</td><td>1 + rs = re</td></tr></table>

Geometric average gives year-by-year growth – overall growth

- For year-by-year, Geometric, Compounding over 3 yrs:  $\left(\frac{1.287}{1}\right)^{1/3} = 1.0877$  
 If grow by 8.77% every year, go from $1 to $1.287  
- Best for comparing growth across time, across assets  
- Can also do continuously-compounded (log changes):  $1 + r_{s} = e^{rc}$  
- Geometric / cc best for comparing over time, across assets

# What is Arithmetic versus Geometric mean?

Arithmetic: add up and divide by  $n$  (our regular mean or average)

Usually think about adding up  $R_{1}, R_{2}, \ldots, R_{n}$ , Mean =  $\frac{1}{n} \sum_{i=1}^{n} R_{i}$  

- But better to think of adding  $1 + R_{1}, 1 + R_{2}, \ldots, 1 + R_{n}$ , Mean =  $\frac{1}{n} \sum_{i=1}^{n} (1 + R_{i}) = 1 + \frac{1}{n} \sum R_{i}$

Geometric: multiply and nth root:

- Geometric Mean  $= \prod_{i = 1}^{n}[(1 + R_i)]^{1 / n} = [(1 + R_1)\cdot (1 + R_2)\dots (1 + R_n)]^{1 / n}$

# History for Stocks, Bonds, Bills

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/45caa6d51db6e8f4a536596dfe6a481b4ebf28546f1472a788c29ec1700fbc62.jpg)

Additional issue for history:

- Often monthly, converted to annual

<table><tr><td></td><td>Nominal</td><td>Real</td><td>Risk Prem</td></tr><tr><td>TBills</td><td>3.9%</td><td>1.0%</td><td>0.0%</td></tr><tr><td>Gov’t Bonds</td><td>5.4%</td><td>2.5%</td><td>1.4%</td></tr><tr><td>Stocks</td><td>11.3%</td><td>8.2%</td><td>7.3%</td></tr></table>

Use monthly data to reduce variance (better estimate) but need annual return

- Returns independent, so OK to add, but issues adding arithmetic returns

# Arithmetic  $\longleftrightarrow$  Geometric, Monthly  $\longleftrightarrow$  Annual

APPROXIMATIONS

Arithmetic  $\longleftrightarrow$  Geometric

$$
r _ {A} \approx r _ {G} + \frac {1}{2} \sigma^ {2}
$$

Monthly  $\longleftrightarrow$  Annual

$r_{A,ann}\approx 12\cdot r_{A,mthly}\sigma_{ann}\approx \sqrt{12}\cdot \sigma_{mthly}$

Brealey, Myers, Allen Table 7.1, 1900-2011

<table><tr><td></td><td>Return Annual</td><td>Vol</td><td>Geom</td><td>Return Mthly</td><td>Better Arith</td></tr><tr><td>TBills</td><td>3.9%</td><td>2.8%</td><td>??3.9%</td><td>.325%</td><td>4.0%</td></tr><tr><td>Gov&#x27;t Bonds</td><td>5.4%</td><td>8.9%</td><td>??5.0%</td><td>0.45%</td><td>5.5%</td></tr><tr><td>Stocks</td><td>11.3%</td><td>20.0%</td><td>??9.3%</td><td>.942%</td><td>11.9%</td></tr></table>

Assuming the BMA "Annual Returns" were converted from monthly data, we can unwind back to original monthly, do a more exact monthly  $\rightarrow$  annual conversion

# MORE EXACT

Arithmetic  $\longleftrightarrow$  Geometric

$$
1 + r _ {G, \text {s i m p l e}} = \exp \left(r _ {c c}\right)
$$

$$
1 + r _ {A, s i m p l e} = \exp \left(r _ {c c} + \frac {1}{2} \sigma^ {2}\right)
$$

$$
1 + r _ {A, \text {s i m p l e}} = (1 + r _ {G, \text {s i m p l e}}) \cdot \exp \left(\frac {1}{2} \sigma^ {2}\right)
$$

Monthly  $\longleftrightarrow$  Annual

$$
r _ {c c, a n n} = 1 2 \cdot r _ {c c, m t h l y} \sigma_ {a n n} = \sqrt {1 2} \cdot \sigma_ {m t h l y}
$$

$$
1 + r _ {A, \text {s i m p l e}} ^ {\text {a n n}} = \exp \left(1 2 \cdot r _ {c c, \text {m t h l y}} + \frac {1}{2} 1 2 \cdot \sigma_ {\text {m t h l y}} ^ {2}\right)
$$

$$
1 + r _ {A, s i m p l e} ^ {a n n} \approx \exp \left(1 2 \cdot \left[ \ln \left(1 + r _ {A, s i m p l e} ^ {m t h l y}\right) \right]\right)
$$

R notebook for some calculations and simulations on converting from monthly to annual and from Arithmetic Average to Geometric (or log / cc) Average: /AppFinMgmt2021/misc/RiskPremium_1.Rmd

# 5.4 Equity Risk Premium From History

# Contents

Backing Out Equity Risk Premium From History

Theory: use indifference curves & budget line (frontier)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/0f23f3fd358cf0ae6465232f175430250e6f51d158d1cf29acfb859f7e90a61c.jpg)

# Backing Out Equity Risk Premium From History

Practice: history to "back out" risk premium

- Remember what "risk premium" is: adjusting Expected  $CF$ :  $PV = \frac{ExpCF}{(1 + rf)(1 + rp)}$

Problem: We don't know  $ExpCF$

- But we do have many "experiments":every month, invest $1 at beginning of month, see what happens at end

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/7ab8141ef19db4bf4cf6f2f471e4befadd870d5dfb6fd70612d3311031963fd6.jpg)

<table><tr><td></td><td>Begin</td><td>End</td></tr><tr><td>Apr 1926</td><td>$1.00</td><td>$1.0253</td></tr><tr><td>May 1926</td><td>$1.00</td><td>$1.0179</td></tr><tr><td>…</td><td></td><td></td></tr><tr><td>Dec 2014</td><td>$1.00</td><td>$0.9958</td></tr><tr><td>Avg</td><td>$1.00</td><td>$1.00896</td></tr></table>

- Need to use Arithmetic Average of CF

# Backing Out Equity Risk Premium From History

If markets are efficient (investors use current information to predict Expected  $CF$ ) then we can use those monthly "experiments" to get Expected  $CF$

- $PV = \frac{ExpCF}{(1 + rf)(1 + rp)}$  or re-write  $1 + rf + rp = \frac{ExpCF}{PV}$  
- We don't have  $\text{Exp } CF$ , but we do have  $\text{Act } CF$  
- Returns:  $1 + \text{return} = \frac{\text{ActCF}}{PV}$  
- Assume investors are using Exp CF every month  
- Arithmetic Average over many months,  $\frac{ExpCF}{PV} = \frac{Avg[ActCF]}{PV} = Avg[1 + return]$  
- For risky (S&P):  $1 + rf + rp = \frac{ExpCF}{PV} = Avg[1 + return]$  
- Do same for "risk-free":  $1 + rf = \frac{ExpCF}{PV}$

<table><tr><td></td><td>Begin</td><td>1 + return</td></tr><tr><td>Apr 1926</td><td>$1.00</td><td>$1.0253</td></tr><tr><td>May 1926</td><td>$1.00</td><td>$1.0179</td></tr><tr><td>…</td><td></td><td></td></tr><tr><td>Dec 2014</td><td>$1.00</td><td>$0.9958</td></tr><tr><td>Avg</td><td>$1.00</td><td>$1.00896</td></tr></table>

For backing out Risk Premium, use Arithmetic because we want Expected CF (not Geom Avg CF)

- For comparing over history, still use Geometric Average

# History for Stocks, Bonds, Bills

Financial Analysts and Portfolio Managers: Obsessed with history of prices

US history from 1900 to 2012  

- I am having you look at history for the past few years

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/7922ad7b318489254496c0bf71baf0bf1730753577050521396723e0f82c1ae0.jpg)

Picture is prices, but always look at returns:  $1 + R_{simple} = \frac{P_{t+1}}{P_t}$

# History for Stocks, Bonds, Bills

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/c0e88be12af47a441a61de9b2bed94d2f5a9b267e64de40f0c520747f591c1bb.jpg)

Historical returns, over 100 years. BMA Table 7.1

- Learn about risk premium

<table><tr><td></td><td>Nominal</td><td>Real</td><td>Risk Prem</td></tr><tr><td>TBills</td><td>3.9%</td><td>1.0%</td><td>0.0%</td></tr><tr><td>Gov’t Bonds</td><td>5.4%</td><td>2.5%</td><td>1.4%</td></tr><tr><td>Stocks</td><td>11.3%</td><td>8.2%</td><td>7.3%</td></tr></table>

We use historic risk premium as estimate of the risk premium for the stock market

- Remember - we can back out risk premium for a bond, but not a stock

# Historical Equity Premium

Return for any one day (or month or year) will not give a good estimate of radj. But with enough history …

Estimate Equity Risk Premium using historical returns

- $\mathrm{RP} =$  Equity return - Risk-free

Table shows history, 1900-2011

- Treasury Bills: short-term risk-free rate  
Government Bonds  
Common Stocks: basically, S&P 500 index (since 1920s)

Equity risk premium  $= 7.3\%$

- Debate about size of rp  
- Maybe  $6\%$  is better

<table><tr><td></td><td>Nominal</td><td>Real</td><td>Risk Prem</td></tr><tr><td>TBills</td><td>3.9%</td><td>1.0%</td><td>0.0%</td></tr><tr><td>Gov’t Bonds</td><td>5.4%</td><td>2.5%</td><td>1.4%</td></tr><tr><td>Stocks</td><td>11.3%</td><td>8.2%</td><td>7.3%</td></tr></table>

# Table is Brealey & Myers, Table 7.1

We now have "Equity" risk premium - for the overall equity market

- But considerable debate on whether  $7.3\%$  is "too high". Some reasons:
- Equity returns in the 20th century were much higher than expected. It's the expected return, not the realized return, that we need. Fama and French (2000, I think) show that the expected ERP was only  $3\%$ .  
- Expected returns to individual investors were much lower than to the broad-market bench

marks because there were no index funds for most of the period, taxes and fees were high, and most portfolios were undiversified (often single-stock) requiring a return-equivalent penalty to be applied for the greater risk of undiversification.

Why not do the same for each individual stock? Say FIS on its own?

- Not enough history  
- Individual firms, even ones with long history like GM, change over time  
- Using the overall stock market, we get the risk (cost of uncertainty) for something that is relatively stable over long periods

# Various Estimates - No Certainty

Brealey, Myers, Allen Table 7.1, 1900-2011

<table><tr><td></td><td>Nominal</td><td>Real</td><td>Risk Prem</td><td>Vol</td></tr><tr><td>TBills</td><td>3.9%</td><td>1.0%</td><td>0.0%</td><td>2.8%</td></tr><tr><td>Gov’t Bonds</td><td>5.4%</td><td>2.5%</td><td>1.4%</td><td>8.9%</td></tr><tr><td>Stocks</td><td>11.3%</td><td>8.2%</td><td>7.3%</td><td>20.0%</td></tr></table>

Bodie, Kane, Miller Table 5.3, 1926-2015

<table><tr><td></td><td>Nominal</td><td>Risk Prem</td><td>Vol</td></tr><tr><td>TBills</td><td>3.47%</td><td>-</td><td>3.13%</td></tr><tr><td>Gov’t Bonds</td><td>6.00%</td><td>2.53%</td><td>10.02%</td></tr><tr><td>Stocks</td><td>11.77%</td><td>8.30%</td><td>20.28%</td></tr></table>

Some debate about size of Equity Risk Premium

History says somewhere about  $7 - 8\%$  

- Maybe  $6\%$  is better

# First Republic Bank Failure

Thomas S. Coleman

Harris PPHA 42510 & 42521

1 May 2023, Draft May 1, 2023

# First Republic Bank Failed & Taken Over by JP Morgan

First Republic lost \(100mn in customer deposits past months

- FRB customers now JP Morgan customers • P Morgan pays $10.6bn for FRB  
 Cost to FDIC is $13bn (vs $20bn for SVB)  
- Depositors don't lose anything  
- FRB shareholders lose everything

Finance & economics | Another one bites the dust

First Republic fails, and is snapped up by JPMorgan Chase

Regulators arrange a deal for the California-based lender

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/c0c2756f42536ab619ea1a09d4ed3e3406bdc1b5e47f65dc7ce732ac8953d769.jpg)

# Appears SVB Was (Almost) Insolvent

Picture (from NYTimes) shows gains & losses for both Held to Maturity and Available for Sale portfolio

- Trying to capture true value of assets  
- Losses as % of deposits - SVB up to 9%  
- Look at the "Big Loss" below - I chose  $9 \%$ of deposits  
- Close to true situation for SVB in 2022 - nearly insolvent  
People did not realize until March 8

When run started, massive loss of deposits.

I've heard $41bn left in a day or two  

- Looking at balance sheet (\(173.1bn deposits) no way they could survive

SVB Actual 2022 (\$bn)  

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>73.6</td><td>173.1</td><td>Deposits</td></tr><tr><td>Investments</td><td>125.1</td><td>22.4</td><td>Other</td></tr><tr><td>Other</td><td>13.1</td><td>16.3</td><td>Equity</td></tr><tr><td>Total</td><td>211.8</td><td>211.8</td><td>Total</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/9907126a8da694c2f553553e5071e1e0d29a429f176c9b8c326ac0592316413a.jpg)

SVB "Big Loss" ($bn)  

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>73.6</td><td>173.1</td><td>Deposits</td></tr><tr><td>Investments</td><td>109.5</td><td>22.4</td><td>Other</td></tr><tr><td>Other</td><td>13.1</td><td>0.7</td><td>Equity</td></tr><tr><td>Total</td><td>196.2</td><td>196.2</td><td>Total</td></tr></table>

# Solvency versus Liquidity SVB Essentially Insolvent

SVB Actual 2022 (\$bn)  

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>73.6</td><td>173.1</td><td>Deposits</td></tr><tr><td>Investments</td><td>125.1</td><td>22.4</td><td>Other</td></tr><tr><td>Other</td><td>13.1</td><td>16.3</td><td>Equity</td></tr><tr><td>Total</td><td>211.8</td><td>211.8</td><td>Total</td></tr></table>

SVB "Big Loss" ($bn)  

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>73.6</td><td>173.1</td><td>Deposits</td></tr><tr><td>Investments</td><td>109.5</td><td>22.4</td><td>Other</td></tr><tr><td>Other</td><td>13.1</td><td>0.7</td><td>Equity</td></tr><tr><td>Total</td><td>196.2</td><td>196.2</td><td>Total</td></tr></table>

SVB is now in a very delicate position, with both Solvency Risks and Liquidity Risks

# Solvency Risk

# Liquidity Risk

Depositors worried investments may go down more

- Regular debts (like for Apple) cannot withdraw early  
Deposits can, and rational to do so  
Get out now, before things get worse

Even if knew for sure assets would not go down

- Assets may be illiquid – take a few months or year to sell off  
- Depositors may need money back sooner  
Rational to get first in line, take money out now

Silicon Valley Bank was effectively insolvent

- Assets barely worth the value of fixed obligations – "Deposits" & "Other"

# Now Turn to First Republic Bank – Painful, But not SVB

# Gains & losses for both HtM and AfS portfolio

- Losses as % of deposits - FRB up to about  $3.5\%$  
- Look at the "Big Loss" below - showing  $3.5\%$  of deposits  
- First Republic painful, but not insolvent  
- My view - caught in liquidity panic  
- Might survive, might not. But very different from SVB

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/3dd3434178fa5c0cccdf830e12b7a9b8d7aee76cc14d76966bd85ec8045794ab.jpg)

FRB Actual 2022 (\$bn)  

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>166.1</td><td>176.4</td><td>Deposits</td></tr><tr><td>Investments</td><td>33.6</td><td>19.5</td><td>Other</td></tr><tr><td>Other</td><td>13.7</td><td>17.5</td><td>Equity</td></tr><tr><td>Total</td><td>213.4</td><td>213.4</td><td>Total</td></tr></table>

FRB "Big Loss" ($bn)  

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>166.1</td><td>176.4</td><td>Deposits</td></tr><tr><td>Investments</td><td>27.4</td><td>19.5</td><td>Other</td></tr><tr><td>Other</td><td>13.7</td><td>11.3</td><td>Equity</td></tr><tr><td>Total</td><td>207.2</td><td>207.2</td><td>Total</td></tr></table>

# Solvency versus Liquidity FRB Solvent but Liquidity Risks

FRB Actual 2022 (\$bn)  

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>166.1</td><td>176.4</td><td>Deposits</td></tr><tr><td>Investments</td><td>33.6</td><td>19.5</td><td>Other</td></tr><tr><td>Other</td><td>13.7</td><td>17.5</td><td>Equity</td></tr><tr><td>Total</td><td>213.4</td><td>213.4</td><td>Total</td></tr></table>

FRB "Big Loss" ($bn)  

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>166.1</td><td>176.4</td><td>Deposits</td></tr><tr><td>Investments</td><td>27.4</td><td>19.5</td><td>Other</td></tr><tr><td>Other</td><td>13.7</td><td>11.3</td><td>Equity</td></tr><tr><td>Total</td><td>207.2</td><td>207.2</td><td>Total</td></tr></table>

FRB is not insolvent

# Solvency Risk

Depositors worried investments may go down more

- Regular debts (like for Apple) cannot withdraw early  
Deposits can, and rational to do so  
Get out now, before things get worse

# Liquidity Risk

Even if knew for sure assets would not go down

- Assets may be illiquid – take a few months or year to sell off  
- Depositors may need money back sooner  
Rational to get first in line, take money out now

First Republic Bank was not insolvent – but subject to liquidity problems and a bank run

- Bank run – where customers withdraw deposits because they are worried the bank will get into trouble in the futures

This is exactly what happened to First Republic

# Perfect & Imperfect Capital Markets Lecture 12 Supplement

Thomas S. Coleman

Harris PPHA 42510 Applied Financial Management

26 April 2023; Draft April 16, 2023

# Outline

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View – "Perfect Markets" – M&M – Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

# What Are "Perfect Capital Markets"?

What do we mean by "Perfect" Capital Markets? (and "Efficient" Markets)?

- NOT "good" in a normative sense – specialized or technical meaning of "theoretical ideal or starting point"  
- Nor "realistic" as in how markets actually behave

Three assumptions:

1 Complete Markets: Investors and firms trade securities at market prices, equal to PV of future CFs  
2 No costs: no taxes, transactions costs, or issuance costs for trading securities  
Financing does not change CFs: a firm's financing decisions do not change CFs generated by projects, and financing does not reveals new information about future CFs

# Value of "Perfect Markets"

These assumptions clearly not realistic. Why is the whole idea useful?

- We get strong results: M&M Prop 1: capital structure – debt vs equity – does not matter  
- We then can examine why capital structure matters – because of taxes? transaction costs?

General result for economic (and finance) theory: useful for pushing us to think about how and why the world works as it does

- We should see "Capital Structure doesn't matter" (M&M Prop 1)  
- If it does matter, why?  
- Some answers: interest taxes distort markets; bankruptcy is costly; information asymmetry

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View – "Perfect Markets" – M&M – Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View – Asymmetric Information & Debt

Final Synthesis

# Modigliani & Miller Proposition 1

M&M Prop 1: Value is Unchanged by Capital Structure

- Total Value of the Firm = PV of CFs  
- This does not depend on choice of capital structure

We will see how this works by

- Looking at how firm carves up CFs with debt & equity

Changes risk of debt & equity CFs  

- Does not change risk of overall CFs
- See that investors can recombine CFs in any way they want  
- Investors can produce any risk profile they want, at no cost  
- Investors won't pay the firm extra to carve up CFs.

Result: Capital Structure won't change value (M&M Prop 1)

# Capital Structure Carves CFs

# CFs carved between debt and equity holders

Start from bottom (Firm CFs), go first to Debt, then Equity

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/5bc25546bec3776fe9e4f782393a2af0238753d2256ddb50e77940a375bc6dfa.jpg)

How CFs distributed make huge difference in CF risk

- Debt less risky than equity  
- CFs go first to debt – if there is any money debt gets it  
Equity is residual - only what is left over the residual is always more risky - some chance you get nothing

# Debt, Equity, Debt / Equity, and Leverage

Assets - Total of the firm, all assets, the overall vale of the firm

Equity - What owners or shareholders put in, what owners can lose

Debt - Borrowings, what owners borrow

Owners can choose to borrow (issue debt) – choose Debt / Equity ratio

- Split overall Assets into Debt versus Equity

# Important Concepts

# Percent Debt

$$
\% D = \frac {D}{A} = \frac {D}{D + E}
$$

# Debt-to-Equity

%Leverage

$$
\frac {D}{E} = \frac {\% D}{1 - \% D}
$$

# Leverage

$$
\frac {\text {Assets}}{E} = \frac {A}{E} = \frac {1}{1 - \% D}
$$

# Examples

0%

50%

80%

0 or  $0\%$

1 or  $100\%$

4 or  $400\%$

1 or 1-to-1  
2 or 2-to-1  
5 or 5-to-1

# In-Class Exercise: Coffee Shop - Capital Structure Changes Risk

Initial firm value $30k. Two financing structures:

All Equity (0% debt, D/E 0, leverage 1-to-1)  

- $50\%$  Debt /  $50\%$  Equity (??% debt, D/E ??, leverage ??-to-1)

TABLE 15.1  
Returns to Equity in Different Scenarios with and without Leverage  

<table><tr><td colspan="2">Coffee Shop</td><td colspan="3">Security Cash Flows</td><td colspan="3">Security Returns</td></tr><tr><td>Demand</td><td>Free Cash Flows</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td></tr><tr><td>Weak</td><td>$27,000</td><td>$27,000</td><td>$15,750</td><td>$11,250</td><td>-10%</td><td>5%</td><td>-25%</td></tr><tr><td>Expected</td><td>$34,500</td><td>$34,500</td><td>$15,750</td><td>$18,750</td><td>15%</td><td>5%</td><td>25%</td></tr><tr><td>Strong</td><td>$42,000</td><td>$42,000</td><td>$15,750</td><td>$26,250</td><td>40%</td><td>5%</td><td>75%</td></tr></table>

In-class Exercise: What is the standard deviation of

1 Unlevered Equity?  
2 Debt & Levered Equity (on their own)?  
3 Debt & Levered Equity (combined)?

# In-Class Exercise: Coffee Shop - Capital Structure Changes Risk

Initial firm value $30k. Two financing structures:

All Equity (0% debt, D/E 0, leverage 1-to-1)  

- $50\%$  Debt /  $50\%$  Equity (50% debt, D/E 1, leverage 2-to-1)

TABLE 15.1  
Returns to Equity in Different Scenarios with and without Leverage  

<table><tr><td colspan="2">Coffee Shop</td><td colspan="3">Security Cash Flows</td><td colspan="3">Security Returns</td></tr><tr><td>Demand</td><td>Free Cash Flows</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td></tr><tr><td>Weak</td><td>$27,000</td><td>$27,000</td><td>$15,750</td><td>$11,250</td><td>-10%</td><td>5%</td><td>-25%</td></tr><tr><td>Expected</td><td>$34,500</td><td>$34,500</td><td>$15,750</td><td>$18,750</td><td>15%</td><td>5%</td><td>25%</td></tr><tr><td>Strong</td><td>$42,000</td><td>$42,000</td><td>$15,750</td><td>$26,250</td><td>40%</td><td>5%</td><td>75%</td></tr></table>

In-class Exercise: What is the standard deviation of

1 Unlevered Equity?  
2 Debt & Levered Equity (on their own)?  
3 Debt & Levered Equity (combined)?

# In-Class Exercise: Coffee Shop - Capital Structure Changes Risk

Initial firm value $30k. Two financing structures:

- All Equity (0% debt, D/E 0, leverage 1-to-1)  
- $50\%$  Debt /  $50\%$  Equity (50% debt, D/E 1, leverage 2-to-1)

TABLE 15.1  
Returns to Equity in Different Scenarios with and without Leverage  

<table><tr><td colspan="2">Coffee Shop</td><td colspan="3">Security Cash Flows</td><td colspan="3">Security Returns</td></tr><tr><td>Demand</td><td>Free Cash Flows</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td></tr><tr><td>Weak</td><td>$27,000</td><td>$27,000</td><td>$15,750</td><td>$11,250</td><td>-10%</td><td>5%</td><td>-25%</td></tr><tr><td>Expected</td><td>$34,500</td><td>$34,500</td><td>$15,750</td><td>$18,750</td><td>15%</td><td>5%</td><td>25%</td></tr><tr><td>Strong</td><td>$42,000</td><td>$42,000</td><td>$15,750</td><td>$26,250</td><td>40%</td><td>5%</td><td>75%</td></tr></table>

In-class Exercise: What is the standard deviation of

1 Unlevered Equity? std dev=35.4%=sqrt[((-10-15)2+(40-15)2)/1]  
2 Debt & Levered Equity (on their own)?  
3 Debt & Levered Equity (combined)?

# In-Class Exercise: Coffee Shop - Capital Structure Changes Risk

Initial firm value $30k. Two financing structures:

All Equity (0% debt, D/E 0, leverage 1-to-1)  

- $50\%$  Debt /  $50\%$  Equity (50% debt, D/E 1, leverage 2-to-1)

TABLE 15.1  
Returns to Equity in Different Scenarios with and without Leverage  

<table><tr><td colspan="2">Coffee Shop</td><td colspan="3">Security Cash Flows</td><td colspan="3">Security Returns</td></tr><tr><td>Demand</td><td>Free Cash Flows</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td></tr><tr><td>Weak</td><td>$27,000</td><td>$27,000</td><td>$15,750</td><td>$11,250</td><td>-10%</td><td>5%</td><td>-25%</td></tr><tr><td>Expected</td><td>$34,500</td><td>$34,500</td><td>$15,750</td><td>$18,750</td><td>15%</td><td>5%</td><td>25%</td></tr><tr><td>Strong</td><td>$42,000</td><td>$42,000</td><td>$15,750</td><td>$26,250</td><td>40%</td><td>5%</td><td>75%</td></tr></table>

In-class Exercise: What is the standard deviation of

1 Unlevered Equity? std dev=35.4%=sqrt[((-10-15)2+(40-15)2)/1]  
2 Debt & Levered Equity (on their own)? D sd=0%; E sd=70.7%  
3 Debt & Levered Equity (combined)?

# In-Class Exercise: Coffee Shop - Capital Structure Changes Risk

Initial firm value $30k. Two financing structures:

All Equity (0% debt, D/E 0, leverage 1-to-1)  

- $50\%$  Debt /  $50\%$  Equity (50% debt, D/E 1, leverage 2-to-1)

TABLE 15.1  
Returns to Equity in Different Scenarios with and without Leverage  

<table><tr><td colspan="2">Coffee Shop</td><td colspan="3">Security Cash Flows</td><td colspan="3">Security Returns</td></tr><tr><td>Demand</td><td>Free Cash Flows</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td></tr><tr><td>Weak</td><td>$27,000</td><td>$27,000</td><td>$15,750</td><td>$11,250</td><td>-10%</td><td>5%</td><td>-25%</td></tr><tr><td>Expected</td><td>$34,500</td><td>$34,500</td><td>$15,750</td><td>$18,750</td><td>15%</td><td>5%</td><td>25%</td></tr><tr><td>Strong</td><td>$42,000</td><td>$42,000</td><td>$15,750</td><td>$26,250</td><td>40%</td><td>5%</td><td>75%</td></tr></table>

In-class Exercise: What is the standard deviation of

1 Unlevered Equity? std dev=35.4%=sqrt[((-10-15)2+(40-15)2)/1]  
2 Debt & Levered Equity (on their own)? D sd=0%; E sd=70.7%  
3 Debt & Levered Equity (combined)? std dev=35.4%

# Coffee Shop - Capital Structure Changes Risk

All Equity versus  $50\%$  Debt /  $50\%$  Equity (50% leverage)

TABLE 15.1  
Returns to Equity in Different Scenarios with and without Leverage  

<table><tr><td colspan="2">Coffee Shop</td><td colspan="3">Security Cash Flows</td><td colspan="3">Security Returns</td></tr><tr><td>Demand</td><td>Free Cash Flows</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td><td>Unlevered Equity</td><td>Debt</td><td>Levered Equity</td></tr><tr><td>Weak</td><td>$27,000</td><td>$27,000</td><td>$15,750</td><td>$11,250</td><td>-10%</td><td>5%</td><td>-25%</td></tr><tr><td>Expected</td><td>$34,500</td><td>$34,500</td><td>$15,750</td><td>$18,750</td><td>15%</td><td>5%</td><td>25%</td></tr><tr><td>Strong</td><td>$42,000</td><td>$42,000</td><td>$15,750</td><td>$26,250</td><td>40%</td><td>5%</td><td>75%</td></tr></table>

- With leverage, Equity gets higher exp ret and higher std dev  
- Combined Debt + Levered Equity is the same as original Unlevered Equity

Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View – "Perfect Markets" – M&M – Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View – Asymmetric Information & Debt

Final Synthesis

# "Unwinding" Leverage

We will play a simple game: the firm takes CFs apart, we (investors) put them back together

Start from bottom (Firm CFs), split into Debt & E

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/8eb65a79e659978d09a4882c1c1f4212d7da478fddc3d206aec6dea488f3afee.jpg)

With no transaction costs we can easily do this

# Next Step – "Do-it-Yourself Leverage"

But there is more – Investors can create any leverage (risk profile) they want Example from BMA, Table 17.2 & 17.3 – Macbeth Spot Removers

<table><tr><td>Number of shares</td><td>1000</td></tr><tr><td>Price per share</td><td>$10</td></tr><tr><td>Mkt value of shares</td><td>$10,000</td></tr></table>

ExpRet  $= 12.5$  StdDev  $= 6.45$

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td></tr><tr><td>Operating Income</td><td>$500</td><td>$1,000</td><td>$1,500</td><td>$2,000</td></tr><tr><td>Earnings per share</td><td>$0.50</td><td>$1.00</td><td>$1.50</td><td>$2.00</td></tr><tr><td>Return on shares (%)</td><td>5%</td><td>10%</td><td>15%</td><td>20%</td></tr></table>

Macbeth realizes some investors want more return (and risk), so they decide to lever

- Arguethatinvestorswillpaymore(higherstockprice)

# Firm Realizes Investors Want More Risk

Will investors pay more? Start with same price $10/share

- Shift to 50/50 debt/equity  
- Issue $5,000 debt (10% interest), repurchase 500 share  
Equity now more risky

Exercise: what would be equity return & std dev if share price still $10

<table><tr><td>Number shares</td><td>500</td></tr><tr><td>Price per share</td><td>$10</td></tr><tr><td>Mkt value of shares</td><td>$5,000</td></tr><tr><td>Mkt value of debt</td><td>$5,000</td></tr></table>

Original ExpRet  $= 12.5$  StdDev  $= 6.45$  "FirmLeverage"ExpRet  $=$  ，StdDev  $=$

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td></tr><tr><td>Operating Income</td><td>$500</td><td>$1,000</td><td>$1,500</td><td>$2,000</td></tr><tr><td>Interest</td><td>$500</td><td>$500</td><td>$500</td><td>$500</td></tr><tr><td>Equity Earnings</td><td>$0</td><td>500</td><td>1,000</td><td>1,500</td></tr><tr><td>Earnings per share</td><td>$0</td><td>$1</td><td>$2</td><td>$3</td></tr><tr><td>&quot;Firm Leverage&quot; (%)</td><td>0%</td><td>10%</td><td>20%</td><td>30%</td></tr><tr><td>No Leverage</td><td>5%</td><td>10%</td><td>15%</td><td>20%</td></tr></table>

Will investors pay more?

# Firm Realizes Investors Want More Risk

Will investors pay more? Start with same price $10/share

- Shift to 50/50 debt/equity  
- Issue $5,000 debt (10% interest), repurchase 500 share  
Equity now more risky

Exercise: what would be equity return & std dev if share price still $10

<table><tr><td>Number shares</td><td>500</td></tr><tr><td>Price per share</td><td>$10</td></tr><tr><td>Mkt value of shares</td><td>$5,000</td></tr><tr><td>Mkt value of debt</td><td>$5,000</td></tr></table>

Original ExpRet  $= 12.5$  StdDev  $= 6.45$  "Firm Leverage"ExpRet  $= 15$  StdDev  $= 12.9$

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td></tr><tr><td>Operating Income</td><td>$500</td><td>$1,000</td><td>$1,500</td><td>$2,000</td></tr><tr><td>Interest</td><td>$500</td><td>$500</td><td>$500</td><td>$500</td></tr><tr><td>Equity Earnings</td><td>$0</td><td>500</td><td>1,000</td><td>1,500</td></tr><tr><td>Earnings per share</td><td>$0</td><td>$1</td><td>$2</td><td>$3</td></tr><tr><td>&quot;Firm Leverage&quot; (%)</td><td>0%</td><td>10%</td><td>20%</td><td>30%</td></tr><tr><td>No Leverage</td><td>5%</td><td>10%</td><td>15%</td><td>20%</td></tr></table>

Will investors pay more?

# Do-it-Yourself Risk

But will investors pay more than $10 for levered shares? Turns out NO

What if you have  $10, borrow$ 10, buy 2 shares? (10% interest)

<table><tr><td>Total no shares</td><td>1000</td></tr><tr><td>Price per share</td><td>$10</td></tr><tr><td>Your investment</td><td>$10</td></tr><tr><td>Your no shares</td><td>2</td></tr></table>

Original ExpRet  $= 12.5$  StdDev  $= 6.45$  "Firm Leverage"ExpRet  $= 15$  StdDev  $= 12.9$  "Investor Leverage"ExpRet  $= \text{一}$  ,StdDev  $=$

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td></tr><tr><td>Operating Income</td><td>$500</td><td>$1,000</td><td>$1,500</td><td>$2,000</td></tr><tr><td>Earnings per share</td><td>$0.50</td><td>$1.00</td><td>$1.50</td><td>$2.00</td></tr><tr><td>Return on shares (%)</td><td>5%</td><td>10%</td><td>15%</td><td>20%</td></tr><tr><td>Your Earnings</td><td>$0</td><td>$1</td><td>$2</td><td>$3</td></tr><tr><td>&quot;Investor Leverage&quot; (%)</td><td></td><td></td><td></td><td></td></tr><tr><td>&quot;Firm Leverage&quot; (above)</td><td>0%</td><td>10%</td><td>20%</td><td>30%</td></tr></table>

# Do-it-Yourself Risk

But will investors pay more than $10 for levered shares? Turns out NO

What if you have $10, borrow $10, buy 2 shares? (10% interest)

<table><tr><td>Total no shares</td><td>1000</td></tr><tr><td>Price per share</td><td>$10</td></tr><tr><td>Your investment</td><td>$10</td></tr><tr><td>Your no shares</td><td>2</td></tr></table>

Original ExpRet  $= 12.5$  StdDev  $= 6.45$  "Firm Leverage"ExpRet  $= 15$  StdDev  $= 12.9$  "Investor Leverage"ExpRet  $= 15$  StdDev  $= 12.9$

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td></tr><tr><td>Operating Income</td><td>$500</td><td>$1,000</td><td>$1,500</td><td>$2,000</td></tr><tr><td>Earnings per share</td><td>$0.50</td><td>$1.00</td><td>$1.50</td><td>$2.00</td></tr><tr><td>Return on shares (%)</td><td>5%</td><td>10%</td><td>15%</td><td>20%</td></tr><tr><td>Your Earnings</td><td>$0</td><td>$1</td><td>$2</td><td>$3</td></tr><tr><td>&quot;Investor Leverage&quot; (%)</td><td>0%</td><td>10%</td><td>20%</td><td>30%</td></tr><tr><td>&quot;Firm Leverage&quot; (above)</td><td>0%</td><td>10%</td><td>20%</td><td>30%</td></tr></table>

Exactly same as levered equity, but done by investor

- Investor can do it no cost ("Perfect" markets) so won't pay firm to do it

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View – "Perfect Markets" – M&M – Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View – Asymmetric Information & Debt

Final Synthesis

# Conclusion: M&M Proposition 1 – Leverage Irrelevant

Debt versus Equity is irrelevant

"Do-it-yourself leverage"  

- Investors can do or undo whatever the firm does

Dependent on

1 Complete Markets: Investors and firms trade securities at market prices, equal to PV of future CFs  
2 No costs: no taxes, transactions costs, or issuance costs for trading securities  
Financing does not change CFs: a firm's financing decisions do not change CFs generated by projects, and financing does not reveals new information about future CFs

# WACC as result of Prop 1

M&M Prop 1 says overall value of the firm does not depend on debt versus equity

So now go back to simple game of carving and recombining CFs:

The firm takes CFs apart,  
We (investors) put them back together

But "reconstituted CFs" is a portfolio of Debt & Equity CFs. And we know portfolio return is weighted average of components:

$$
E R _ {p o r t} = \alpha_ {1} E R _ {1} + \alpha_ {2} E R _ {2}
$$

$$
r _ {u} = r _ {\text {a s s e t s}} = \frac {D}{E + D} r _ {D} + \frac {E}{E + D} r _ {E}
$$

Owning Debt + Equity

Debt & Equity Separated

Company CFs (profits)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/1f20087680c1d1df4a700ea66b14b962c827d6dc01dea06484976c82763b602c.jpg)

# Expected Returns

As Debt-Equity ratio increases, expected return on equity increases.

Eventually, so does debt (as it becomes more risky)

Rates of return

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/9eff2f168be32cd319e8e48dec25a565d1e8b9f1cf5c60737131145b0ca1ebe5.jpg)

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View – "Perfect Markets" – M&M – Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View – Asymmetric Information & Debt

Final Synthesis

# M&M Prop 1 – But Capital Structure Does Matter

Under "Perfect" capital markets

- Investors can provide "Do-it-Yourself" leverage  
- Will not pay extra for leveraging (or de-leveraging)

Capital Structure should be random - no industry patterns

Not True

- Some industries (internet like Google) borrow nothing  
- Others (airlines) borrow a lot

Why? Don't throw out theory - use M&M to understand

Example of economic theory deepening our understanding of the world  

- Taxes, bankruptcy costs, information asymmetry

<table><tr><td>Industry</td><td>Median Book Debt Ratio</td></tr><tr><td>Internet information providers</td><td>.00</td></tr><tr><td>Major integrated oil and gas</td><td>.10</td></tr><tr><td>Semiconductors</td><td>.11</td></tr><tr><td>Communication equipment</td><td>.16</td></tr><tr><td>Biotechnology</td><td>.17</td></tr><tr><td>Consumer appliances</td><td>.21</td></tr><tr><td>Railroads</td><td>.40</td></tr><tr><td>Gas utilities</td><td>.45</td></tr><tr><td>Hotels</td><td>.56</td></tr><tr><td>Airlines</td><td>.96</td></tr></table>

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View – "Perfect Markets" – M&M – Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View – Asymmetric Information & Debt

Final Synthesis

# Interest "Tax Shield"

Debt provides real CFs – In US (and many others) interest is tax deductible.

Income with no debt versus some debt  

<table><tr><td></td><td>Unlevered</td><td>Levered</td></tr><tr><td>CF ( &amp; earn) before interest &amp; tax</td><td>100</td><td>100</td></tr><tr><td>Interest to bondholders</td><td>0</td><td>8</td></tr><tr><td>Pretax Income</td><td>100</td><td>92</td></tr><tr><td>Tax, 21%</td><td>21</td><td>19.32</td></tr><tr><td>Net income to shareholders</td><td>79</td><td>72.68</td></tr><tr><td>Total income to stock + bond</td><td>0+79=79</td><td>8+72.68=80.68</td></tr><tr><td>Interest tax shield (0.21*interest)</td><td>0</td><td>1.68</td></tr></table>

Simple idea: government gives cash: subsidy

Recurring story: government actions (well-intentioned) distort markets M&M says "how you slice the pie doesn't matter"

- Yogi Berra: Pizza's delivered. "Slice into eight pieces - I'm hungry"

Here it matters – gov't subsidizes debt with extra cash

# Interest "Tax Shield"

Debt provides real CFs – In US (and many others) interest is tax deductible.

Income with no debt versus some debt  

<table><tr><td></td><td>Unlevered</td><td>Levered</td></tr><tr><td>CF ( &amp; earn) before interest &amp; tax</td><td>100</td><td>100</td></tr><tr><td>Interest to bondholders</td><td>0</td><td>8</td></tr><tr><td>Pretax Income</td><td>100</td><td>92</td></tr><tr><td>Tax, 21%</td><td>21</td><td>19.32</td></tr><tr><td>Net income to shareholders</td><td>79</td><td>72.68</td></tr><tr><td>Total income to stock + bond</td><td>0+79=79</td><td>8+72.68=80.68</td></tr><tr><td>Interest tax shield (0.21*interest)</td><td>0</td><td>1.68</td></tr></table>

Example: Interest  $8, "tax shield" = 0.21 *$ 8

Call this "tax shield" because shielded from taxes

Extra income firm can pay to investors instead of gov't

Essentially a gov't subsidy for debt (vs equity)

Less than before 2017 - US rate was  $35\%$

# M&M with Tax Shield – Gov't Subsidizes Debt

M&M Prop 1 says value of firm does not depend on debt versus equity

But we know tax shield has value

The firm takes CFs apart,  
We (investors) put them back together

No taxes:

Firm CFs  $\rightarrow$  Debt  $^+$  Equity  

- Investors take Debt + Equity → Firm CFs

Yes taxes, Net out tax shield PV

Firm CFs  $\rightarrow$  Debt  $^+$  Equity  $^+$  Taxes  

- Investors take Debt + Equity → Firm CFs - Taxes

For Debt, Gov't gives some taxes back

- With debt, get CF of tax shield,  $T_{c} \cdot Int$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ecf32fbc033860e58dce0446318cd6cd1ce63eb092724e61252aeba8fdf4cdbe.jpg)

# In-Class Exercise: Tax Shield as Government Subsidy – PV Tax Shield

In M&M (no taxes) there are two slices to the pizza: debt & equity

- Taxes: third slice (government) matters because you get cash back on debt  
- Higher debt  $\rightarrow$  higher firm value; part of government slice  $\rightarrow$  firm

Fun result: PV(tax shield) =  $T_{c} \cdot D$

- Yrly CF =  $T_{c} \cdot D \cdot r$ , every yr forever (annuity)  
- PV Annuity  $= \frac{CF}{r} = \frac{T_c \cdot D \cdot r}{r} = T_c \cdot D$

Example: Johnson & Johnson (\$mn) - BMA Section 18-1, p 449  

<table><tr><td colspan="2">Assets Market Value</td><td colspan="2">Liabilities Market Value</td></tr><tr><td>Net Working Cap</td><td>31,757</td><td>13,031</td><td>Long-term Debt</td></tr><tr><td>PV Interest Tax Shld</td><td>2,737</td><td>15,577</td><td>Other long-term Liab</td></tr><tr><td>Long-term Assets</td><td>160,335</td><td>166,221</td><td>Equity</td></tr><tr><td>Total Assets</td><td>194,829</td><td>194,829</td><td>Total Value</td></tr></table>

# In-Class Exercise: Tax Shield as Government Subsidy – PV Tax Shield

Now let's move  $10,000mn from Equity to Debt. In-class Exercise Market value liabilities: Borrow additional$ 10,000 (increase "LT Debt")

- PV Tax Shield: \(D = \\)10,000, T_c = 21\%\(, PV(tax shield) = \(T_c \cdot D\)  
- Add this to the original \(2,737 to get new PV Tax Shield  
Calculate MV of "Total Assets"  
- MV "Total Assets" = MV "Total Liabilities"

Example: Johnson & Johnson (\$mn) - BMA Section 18-1, p 449  

<table><tr><td colspan="2">Assets Market Value</td><td colspan="2">Liabilities Market Value</td></tr><tr><td>Net Working Cap</td><td>31,757</td><td>23,031</td><td>Long-term Debt</td></tr><tr><td>PV Interest Tax Shld</td><td>?</td><td>15,577</td><td>Other long-term Liab</td></tr><tr><td>Long-term Assets</td><td>160,335</td><td></td><td>Equity</td></tr><tr><td>Total Assets</td><td>?</td><td>?</td><td>Total Value</td></tr></table>

# In-Class Exercise: Tax Shield as Government Subsidy – PV Tax Shield

Now let's move  $10,000mn from Equity to Debt. In-class Exercise Market value liabilities: Borrow additional$ 10,000 (increase "LT Debt")

- PV Tax Shield: \(D = \\)10,000, T_c = 21\%\(, PV(tax shield) = \(T_c \cdot D\)  
- Add this to the original $2,737 to get new PV Tax Shield  
Calculate MV of "Total Assets"  
- MV "Total Assets" = MV "Total Liabilities"  
- MV "Total Value" up - government gives cash back  
- Back out MV "Equity"

Example: Johnson & Johnson (\$mn) - BMA Section 18-1, p 449  

<table><tr><td colspan="2">Assets Market Value</td><td colspan="2">Liabilities Market Value</td></tr><tr><td>Net Working Cap</td><td>31,757</td><td>23,031</td><td>Long-term Debt</td></tr><tr><td>PV Interest Tax Shld</td><td>4,837</td><td>15,577</td><td>Other long-term Liab</td></tr><tr><td>Long-term Assets</td><td>160,335</td><td>?</td><td>Equity</td></tr><tr><td>Total Assets</td><td>196,929</td><td>196,929</td><td>Total Value</td></tr></table>

# In-Class Exercise: Tax Shield as Government Subsidy – PV Tax Shield

Now let's move  $10,000mn from Equity to Debt. In-class Exercise Market value liabilities: Borrow additional$ 10,000 (increase "LT Debt")

- PV Tax Shield: \(D = \\)10,000, T_c = 21\%\(, PV(tax shield) = \(T_c \cdot D\)  
- Add this to the original $2,737 to get new PV Tax Shield  
Calculate MV of "Total Assets"  
- MV "Total Assets" = MV "Total Liabilities"  
- MV "Total Value" up - government gives cash back  
- Back out MV "Equity"  
 Shareholders win by $2,100. Why?  
- Get $10,000 from issuing new bond, MV equity down by only $7,900

Example: Johnson & Johnson (\$mn) - BMA Section 18-1, p 449  

<table><tr><td colspan="2">Assets Market Value</td><td colspan="2">Liabilities Market Value</td></tr><tr><td>Net Working Cap</td><td>31,757</td><td>23,031</td><td>Long-term Debt</td></tr><tr><td>PV Interest Tax Shld</td><td>4,837</td><td>15,577</td><td>Other long-term Liab</td></tr><tr><td>Long-term Assets</td><td>160,335</td><td>158,321</td><td>Equity</td></tr><tr><td>Total Assets</td><td>196,929</td><td>196,929</td><td>Total Value</td></tr></table>

# Value of Tax Shield

MV of debt up by  $10,000mn, but MV of equity only down$ 7,900mn.

PV(tax shield) = tax rate * Debt (Tc*D) = 0.21*$10,000 = $2,100mn

- Why  $Tc^{*}D$  and not  $Tc^{*}D^{*}r$ ? (yearly amount - tax rate * amount of debt * interest payment)  
- Assume tax (and debt) will be there forever.  
- PV perpetuity =  $\frac{CF}{r}$

Refined version of M&M Prop 1 (Debt Irrelevance):

Value of firm = value if all-equity-finance + PV(tax shield)

PV(tax shield) ↑ as debt ↑

- Argues that firms should go to  $100\%$  debt-financed  
- Clearly not true

Look at Costs of high debt (bankruptcy)

# Taxes Subsidize Debt, But Firms not All Debt

We don't see firms using all debt

- Some industries (internet like Google) borrow nothing  
- Others (airlines) borrow a lot

Need to dig deeper, understand why industries vary

Example of economic theory deepening our understanding of the world  

- Taxes partial, turn to bankruptcy costs, information asymmetry

<table><tr><td>Industry</td><td>Median Book Debt Ratio</td></tr><tr><td>Internet information providers</td><td>.00</td></tr><tr><td>Major integrated oil and gas</td><td>.10</td></tr><tr><td>Semiconductors</td><td>.11</td></tr><tr><td>Communication equipment</td><td>.16</td></tr><tr><td>Biotechnology</td><td>.17</td></tr><tr><td>Consumer appliances</td><td>.21</td></tr><tr><td>Railroads</td><td>.40</td></tr><tr><td>Gas utilities</td><td>.45</td></tr><tr><td>Hotels</td><td>.56</td></tr><tr><td>Airlines</td><td>.96</td></tr></table>

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View – "Perfect Markets" – M&M – Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

# What pushes Away from  $100\%$  Debt?

We don't see really high debt ratios (in most industries)

Good evidence firms don't fully exploit tax shield

Major reason - cost of debt and cost of Financial Distress

BUT - this is not "Bankruptcy" alone

- Monetary costs associated with bankruptcy itself  
- Games played before bankruptcy

# Bankruptcy

Bankruptcy is a beautiful thing – part of the power of free markets

- Debt is a promise - we all know it may get broken  
- Nothing wrong with bankruptcy, when try honestly and fail

What is bankruptcy?

Shareholders admit that the value of assets less than promises made  

- Pass assets to debt-holders - debtholders become new owners

Simple act of bankruptcy not a "cost" – don't get confused by loss in bankruptcy

Enron (p. 465) – at peak stock worth $60bn+. By end-2001 worthless.  

- Not $60bn "loss" – Enron was worthless at peak (fraud), just didn't know it.
- Actually some "shorters" did know - huge service for all of us, hard work of ferreting out problems the rest of us are too lazy to uncover

Bankruptcy is simple and wonderful part of capitalism

# Financial Distress

Financial Distress is more the simple Bankruptcy:

Promises to creditors are honored with difficulty (imposing costs)

Costs of bankruptcy

- Direct costs, such as lawyers, accountants  
- Indirect costs - eg customers and employees may leave

Games – that destroy value – played before bankruptcy

- Before, when probability high, substantial costs  
Shareholders try and extract value from debtholders  
- Simple transfer would be OK, but this destroys value

# Bankruptcy Costs

Bankruptcy can be long, expensive process

- Direct costs - Pay lawyers, accountants

Enron - $757mn in legal, accounting, other  

- Lehman - likely as much as $1,500mn
- Indirect costs - many - eg customers, employees leave  
- Big issue in 2008 financial crisis - huge disruption when financial firm goes under

# Evidence

- Difficult to separate, but cost might something like  $3\%$  of total (book) assets,  $20\%$  of market value of equity  
- Best evidence - reluctance of creditors to push insolvent firms (MV assets  $<$  MV liabilities) into bankruptcy (transfer assets to creditors)  
- Often, creditors would rather have managers and shareholders try to get back to health

# Financial Distress – Games People Play

Economics teaches us to think about Incentives

Before bankruptcy, probability high, substantial costs.

- Diverging incentives: pushes people to play "games"  
- Individually optimal (for shareholders), but destroy firm value

Game 1 - Risk Shifting

Shareholders take on extra risk

Other games

- Failure to contribute equity capital  
Cash in and run  
- Play for time

Costs of Financial Distress  $\uparrow$  with level of debt

Costs of Distress vary with type of asset

Airplanes - physical asset, easy to re-sell, won't lose value  

- Trading franchise - disappears over a weekend (Lehman in 2008)

# Risk Shifting - Equity as Call

Powerful idea: Equity is call option on firm value

Shareholders get profits if Assets > Debt  
Shareholders walk away for free if Assets  $<$  Debt

From seminal paper by Merton (1974) – Corporate debt as put option

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/4f76e4b38ae19a5c5b9865889d2e51c3f59c88cc12e380c7227deb25af3fae30.jpg)

Stock - call option "hockey stick" - Long

- Assets  $<$  B (debt) shareholders get 0  
- Assets > B, shareholders get upside Bond - put option "hockey stick" - Short  
- Assets  $<$  B bondholders get assets  
- Assets > B bondholders get repaid B

Nothing "unfair" about this; Up-front PV reflects option values

- But provides incentive for games around B (bankruptcy)

# Option Value ↑ as Volatility ↑

Stock: Long Call; Bond: Short Put: Option value  $\uparrow$  as Volatility  $\uparrow$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/14d5b3d049d82c7cc34d8ff1f5892960ec7549c9b68f644f18241f6dff4bbd83.jpg)

See this looking at:

- Black-Scholes option formula -  
- Assets just  $< \mathrm{B} :$  I win if  $\uparrow$  ,you lose if  $\downarrow$

Shareholders want to increase volatility: Call ↑, Put ↓

Example: Assets  $< \mathsf{B}$ , but interest not due for another year

Shareholders can take on negative NPV project that has slight chance of moving Assets > B  

- Destroys value, but shareholders have nothing to lose

# Risk Shifting Example

"Circular File Co.": Owe debt $50: insolvent now but debt due next year

- Bonds worth \(25 (< \text{promised} \\) 50)\( - need option model to get value

<table><tr><td colspan="4">Circular File Co. Before Negative NPV</td></tr><tr><td>Net Working Cap</td><td>$20</td><td>$25</td><td>Bonds</td></tr><tr><td>Fixed assets</td><td>$10</td><td>$5</td><td>Common stock</td></tr><tr><td>Total assets</td><td>$30</td><td>$30</td><td>Total value</td></tr></table>

<table><tr><td colspan="4">Circular File Co. After Negative NPV</td></tr><tr><td>Net Working Cap</td><td>$10</td><td>$20</td><td>Bonds</td></tr><tr><td>Fixed assets</td><td>$18</td><td>$8</td><td>Common stock</td></tr><tr><td>Total assets</td><td>$28</td><td>$28</td><td>Total value</td></tr></table>

Negative NPV Project: $10 investment, 10% chance $120, 90% lose $3.56;

- EV = $8.80  
Disc  $10\%$ , EPV = $8

Shareholders do it

- \(10\%\) win: get \\(80: 120 + 10 (existing) - 50 (debt)  
- $90\%$  lose: get zero anyway

Destroy $2 worth of firm value – but shareholders better off

# Other Games

# Failure to contribute equity capital

- Flip side to "Risk Shifting" - do not invest in positive NPV project - because not enough to push Assets > B (won't dig firm out of the hole)

# Cash in and Run

Try to suck cash out  

- Bankruptcy court can claw back fraudulent conveyance – but subtle ways to extract cash

# Play for Time

- Delay bankruptcy and hope something good will happen  
- Meantime, assets waste away

# Debt versus Distress

Debt  $\uparrow \Rightarrow$  tax savings  $\uparrow$ , but also prob of bankruptcy  $\uparrow$  (moves up  $B$ , bankruptcy threshold)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/75a04b36dbb648276dbde2397146818f31b44b1f351f1201b3ac36e4d523a88f.jpg)

<table><tr><td>Industry</td><td>Debt Ratio</td></tr><tr><td>Comm Eqpt</td><td>0.16</td></tr><tr><td>Consumer Elect</td><td>0.21</td></tr><tr><td>Airlines</td><td>0.96</td></tr></table>

<table><tr><td>Company</td><td>Equity/Value</td></tr><tr><td>Delta</td><td>0.29</td></tr><tr><td>Southwest</td><td>0.76</td></tr><tr><td>Jet Blue</td><td>0.32</td></tr><tr><td>Continental</td><td>0.25</td></tr></table>

Tradeoff between tax benefits & bankruptcy costs

- Easy-to-sell assets (lower cost in bankruptcy) should have higher debt  
- Compare computer businesses (assets = human capital that can walk – low debt) vs airlines (planes easy to sell – high debt)

Explains many observations

- Industry differences - high-tech vs airlines

But not complete story - many successful firms use little debt

- Southwest Airlines, largely equity-financed (2009)

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View – "Perfect Markets" – M&M – Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

# Asymmetric Information pushes to Debt

Asymmetric Information: firm cannot transmit information believably

Two firms: Jones, Inc. (optimistic) and Smith & Co. (pessimistic)

- Jones has trouble convincing investors (all firms say good things)

Now they want to raise capital. Round 1:

- Jones (optimistic) sells debt since equity is "underpriced"  
- Smith (pessimistic) issues equity since it is "overpriced"

Round 2:

- Investors take information from Smith, realize equity overpriced

Round 3:

- Smith sells debt instead, since selling equity would be bad-news signal

Result: Both firms pushed towards debt

# End Result – "Pecking Order"

Firms prefer internal finance - reinvesting earnings so don't have to issue new equity  

- If have to raise external finance, start with debt, then equity as last resort

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View – "Perfect Markets" – M&M – Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View – Asymmetric Information & Debt

Final Synthesis

# Final Synthesis

Neither "Trade-off" nor "Pecking Order" are perfect

Some evidence by Raghuram Rajan & Luigi Zingales (Booth), found 4 factors matter:

$\Theta$  Size: Large firms higher debt (Trade-off)  
2 Tangible Assets: more fixed assets, higher debt (Trade-off)  
3 Profitability: more profitable, lower debt (Pecking Order, can use internal)  
Market-to-Book: higher market-to-book, lower debt

Not perfect, but we have come a long way in understanding capital markets using our assumption of "Perfect Capital Markets"

- M&M not "true" but incredibly useful

# Efficient Markets


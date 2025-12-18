---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Outline
linter-yaml-title-alias: Outline
---

Lecture 10

Thomas S. Coleman

19 April 2023; Draft April 24, 2023

# Outline

# Contents

# 1 Valuation of Equities - Dividends & Discounting 1

1.1 Stock Price  $=$  Discounted PV of Future Cash Flows (Dividends) 1  
1.2 Various Dividend Discount Models 4  
1.3 What are Dividends? Firm Payout 7  
1.4 Using Dividend Discount Models 9  
1.5 Process For Dividends 10  
1.6 Dividend & Buybacks Equivalent 11

# 1 Valuation of Equities - Dividends & Discounting

# 1.1 Stock Price  $=$  Discounted PV of Future Cash Flows (Dividends)

# PV Bonds & Equity - PV for Both

PV & discounting is (almost) the only important idea in finance

Bond value: PV future CFs  
Equity value: PV future CFs

Why are they different?

Bond CFs are promised

- For UST, non-default pure discounting yield  $y_{rf}$  
- For FIS, risk-adjusted discounting,  $y_{FIS} = y_{rf} + rp$  
- For both, use market price to back out discounting and risk premium (spread)

Equity CFs are not promised, we have to guess - both CF &  $rp$

- We can guess CF, but really hard - can get "expected CFs"  
- Cannot back out risk premium  
- Generally have to move other direction: get  $rp$  from somewhere else, then discount by  $y_{equity} = y_{rf} + rp$

# PV: Bonds Easy, Equities Hard

BONDS: Promised CFs, so can move  $P \to yld$  or  $P \leftarrow yld$

Forward,  $P\rightarrow yld$  , comparing existing bonds

- $yld$  compares one bond against another  
- Which is cheap, which expensive

Back,  $P\gets yld$  , valuing new CFs

- With  $yld$ , can estimate price of new bond

# EQUITY: No promised CFs

- Hard to go forward, hard to back out yld to compare one equity to another  
- Hard to go back, hard to estimate CFs and find right  $rp$  to estimate price

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/fc90024bd4b9321b03292441598e809ec26034e4685df40878886abc56edb908.jpg)

# Brealey & Myers chapter 4, BKM chapter 18

Section 18.3: Dividend Discount Models

- Constant growth model  
- Role of terminal value  
- Role of "Investment Opportunities": when internal prospects (a firm's investment opportunities) are better than outside opportunities available to investors, the firm should plow back funds (retain earnings) and stock price should go up when it does.

Section 18:5: Free Cash Flow Valuation (variant on DDM)

Section 18.4: P/E ratio

# Dividends & Future CFs

Value for Equities: Ultimately from future CFs

- Only reason we buy equity today is for future CFs

People talk about "dividends" (CF) and "capital gains" (selling for higher price)

- "Dividends" - periodic CFs  
- "Capital Gains" - selling for a higher price in the future  
- But ultimately, someone else buys because they expect future CFs  
- It all comes down to future CFs

What are Dividends?

Equities generally pay out cash, quarterly

FIS

- Paid \$0.35 on 14 March 2019 ($0.32 13-dec-18, $0.32 13-sep, \$0.32 14-jun)  
 - \$1.31 over past year, 1.13% of price ($1.31 / $115.9)  
 Dividend Rate: $/yr = $1.31  
- Dividend Yield (generally more useful): \( \% = \\( \)dividend / \$price= 1.13%

# Past vs Future Dividends

Easy to get past dividends

FIS from 30-apr-19 (Yahoo Finance)

- Past dividends \$1.28 (actually \$1.31)  
- Dividend Yield 1.15%

But we want future dividends

- Must be estimated by somebody (Morningstar)  
Future (next year) $1.40, $1.24%

Dividend yield often more useful

Companies often try to keep div yld steady  

- When price up, put dividend up

Fidelity National Information Services, Inc. (FIS) NGE, FIS, FIDELER Preferred Corp., Company in LLC

115.93 +4.39 (+3.94%) 115.93 After H&Y +0PM EOT Summary Chat Statistics Historical Data

Dividends & Splits

Forward Annual Dividend Rate 4 1.4

Forward Annual Dividend Yield 4 1.24%

Trailing Annual Dividend Rate 3 1.28

Trailing Annual Dividend Yield 3 1.15%

5 Year Average Dividend Yield 4 1.39

Payout Ratio 4 50.20%

Dividend Date 3 Jun 27, 2019

Ex-Dividend Date 4 Jun 12, 2019

# 1.2 Various Dividend Discount Models

# Contents

# Three Important Formulae:

What can we do for equities? PV future dividends, which are CFs paid out to shareholders. Three important formulae:

1. Constant Dividend (annuity - no growth)  
2. Constant Growth  
3. Fast Growth, then Constant Growth

# Dividend Discount Model: No Growth, Annuity Formulae

Assume dividends constant, perpetual annuity

$\mathrm{CF} = \mathrm{D}$

Constant dividend (no growth)

$$
P V = \frac {D}{1 + y} + \frac {D}{(1 + y) ^ {2}} + \dots = \frac {D}{y} = \frac {D}{r f + r p}
$$

- Not realistic for most equities, but useful start

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/3c88b855f07c41cafded7d14bec2a51e3f390dc6e01ace5b8cef16a2554a45f5.jpg)

Based on summation formula (you should know):

$$
\sum_ {i = 0} ^ {\infty} x \cdot \beta^ {i} = x \cdot \frac {1}{1 - \beta} \quad a n d \quad \sum_ {i = 1} ^ {\infty} x \cdot \beta^ {i} = x \cdot \frac {\beta}{1 - \beta}
$$

When  $\beta = \frac{1}{1 + y}$  and  $x = D$ , then (could also use TVM, set N=100,000)

$$
\sum_ {i = 1} ^ {\infty} x \cdot \beta^ {i} = D \cdot \frac {\beta}{1 - \beta} = D \cdot \frac {1}{1 + y} \cdot \frac {1 + y}{1 + y - 1} = \frac {D}{y}
$$

# Dividend Discount Model: Constant Growth

Say a company expected to grow at constant rate forever

Constant growth  $g$  per year

$$
D _ {1} = D _ {0} (1 + g)
$$

$$
D _ {2} = D _ {0} \left(1 + g\right) ^ {2}
$$

$$
\begin{array}{l} P V = \frac {D _ {0} (1 + g)}{1 + y} + \frac {D _ {0} (1 + g) ^ {2}}{(1 + y) ^ {2}} + \dots = \frac {D _ {0} (1 + g)}{y - g} \\ = \frac {D _ {1}}{y - g} = \frac {D _ {1}}{r f + r p - g} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/2ad8af31daed9c63a7210eb0f004020d25e7df09524c22b0b8ba0414822f7b20.jpg)

Much more useful than "no growth"

Both these formulae come from summation formula:

$$
\sum_ {i = 0} ^ {\infty} x \cdot \beta^ {i} = x \cdot \frac {1}{1 - \beta} \quad a n d \quad \sum_ {i = 1} ^ {\infty} x \cdot \beta^ {i} = x \cdot \frac {\beta}{1 - \beta}
$$

When  $\beta = \frac{1}{1 + y}$  and  $x = D$ , then

$$
\sum_ {i = 1} ^ {\infty} x \cdot \beta^ {i} = D \cdot \frac {\beta}{1 - \beta} = D \cdot \frac {1}{1 + y} \cdot \frac {1 + y}{1 + y - 1} = \frac {D}{y}
$$

and when  $\beta = \frac{1 + g}{1 + y}$  and  $x = D_0$ , then

$$
\sum_ {i = 1} ^ {\infty} x \cdot \beta^ {i} = D _ {0} \cdot \frac {\beta}{1 - \beta} = D _ {0} \cdot \frac {1 + g}{1 + y} \cdot \frac {1}{1 - \frac {1 + g}{1 + y}} = D _ {0} \cdot \frac {1 + g}{1 + y} \cdot \frac {1}{\frac {1 + y - 1 - g}{1 + y}} = \frac {D _ {0} \cdot (1 + g)}{y - g} = \frac {D _ {1}}{y - g}
$$

$$
\sum_ {i = 1} ^ {n - 1} x \cdot \beta^ {i} = D _ {0} \cdot \frac {\beta (1 - \beta^ {n})}{1 - \beta} = D _ {0} \cdot \frac {1 + g}{1 + y} \cdot \frac {1}{1 - \frac {1 + g}{1 + y}} \left[ 1 - \left(\frac {1 + g}{1 + y}\right) ^ {n} \right] = \frac {D _ {1}}{y - g} \left[ 1 - \left(\frac {1 + g}{1 + y}\right) ^ {n} \right]
$$

# Dividend Discount Model: Fast then Constant Growth

Many companies expected to grow fast, then slow

- So have fast growth - say for 5 yrs - then slower growth  $g$

Use "Multistage Growth Model"

1. Calculate PV of "1st stage" dividends (say in spread-sheet)

$$
P V _ {1 s t} = \frac {D 1}{1 + y} + \frac {D 2}{(1 + y) ^ {2}} + \dots + \frac {D 5}{(1 + y) ^ {5}}
$$

2. Constant growth  $g$  per year starting yr 5:

$$
P V _ {2 n d} = \frac {P V _ {c g}}{(1 + y) ^ {5}} = \frac {D 5 (1 + g) / y - g}{(1 + y) ^ {5}}
$$

3. Combine these:  $PV_{Total} = PV_{1st} + PV_{2nd}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f9a2e9394ca5404a59010b5becd2dd0396e2ae4ae8ce164ac37cd4e3e5a61639.jpg)

# Using Our Two Fundamental Ideas

Only Two Fundamental Ideas: Discounting & Risk Adjustment

- Same ideas and same tools as for bonds  
- Spend so much time with bonds, so we learn about PV (discounting) and risk adjustment

General idea:

- Figure out size and timing of expected or promised Cash Flows (CF diagram)  
- Choose appropriate risk premium - gives risk adjusted discount rate:

$$
r i s k \text {a d j u s t e d d i s c o u n t r a t e} = \text {r i s k - f r e e} + \text {r i s k - p r e m i u m}
$$

Discount CFs

Find income statement, balance sheet, cash flow statement at https://www.marketwatch.com/investing/stock.ibm/binflow

# Challenges Using DDM

Ideas are simple, but huge practical problems:

1. Guessing at dividends - IBM example

- Paid cash dividends of about  \$5.77/share (\$ 5,380mn) in 2019  
 - Also share buyback of about \$4.65/share (\$4,340mn)  
- Turns out Cash Dividends  $\leftrightarrow$  Share Buyback - Completely changes the numbers

2. Guessing at growth (for dividends)
3. Guessing at discount rate

- Central focus of next 2 weeks  
- Risk and Portfolio Theory; CAPM

Many other issues discussed in textbook

# 1.3 What are Dividends? Firm Payout

# Contents

# Equity - Residual Cash Claimant

Equity (common stock) gets "what's left over"

- Pay employees, taxes, debt, etc., Left over is "residual cash flow"

Let's look at FIS, take apart the income, expenses

Revenue comes in, expenses (wages, taxes, …) go out

What's left over either:

- Pay out to shareholders (common stock, equity holders)  
- Retain earnings - invest in running and growing the business (more future profits)

<table><tr><td>FIS, 2018 Income</td><td>$mn</td><td>$mn</td></tr><tr><td>Revenue</td><td></td><td>\$8,420</td></tr><tr><td>Cost of goods sold (wages etc)</td><td>-5,570</td><td></td></tr><tr><td>Other (interest, taxes)</td><td>-2,004</td><td></td></tr><tr><td>Net Income</td><td></td><td>846</td></tr><tr><td>Dividends</td><td>-421</td><td></td></tr><tr><td>Retained Earnings</td><td></td><td>425</td></tr><tr><td>Shares (mn)</td><td>323.29</td><td></td></tr><tr><td>Dividends per share ($)</td><td>$1.30</td><td></td></tr></table>

Owners (shareholders, investors) should be happy to have money reinvested (retained earnings) if FIS can earn high profits - more than investors can make in other activities

Find income statement, balance sheet, cash flow statement at https://www.marketwatch.com/investing/stock/fs/fina Some details:

- Retained earnings can be found from the balance sheet: change in retained earnings 2017-2018  
- Dividends (on accrual basis) are calculated as net income less retained earnings
- The Cash Flow statement also shows repurchase of Common Stock (-1.26B). This is, as discussed below, also a payout to shareholders and equivalent to a dividend payment.

# Dividends - Regular Quarterly Payments

Dividends - regular quarterly payments in cash to each shareholder

- Paid \$0.35 on 14 March 2019 ($0.32 13-dec-18, $0.32 13-sep, \$0.32 14-jun)  
 - \$1.31 over past year, 1.13% of price ($1.31 / $115.9)  
 Dividend Rate: $/yr = $1.31  
 - Stock price \$115.39 ⇒ dividend about 1.13% of the price – "dividend yield"

FIS paid about  $50\%$  of earnings (net income) to dividends

- Managers (and investors) think that FIS has good internal investments  
- Should pay to investors unless internal investments better than "market"

Some businesses pay little, re-invest most. Others pay out most, re-invest little

IBM: pay out  $65\%$

Consolidated Edison: pay out  $65\%$

Microsoft: pay out  $40\%$  (was  $0\%$ )

AT&T: pay out  $27\%$

Google: pay out  $0\%$

High dividend ("Value")

High dividend ("Value")

Moderate dividend

Moderate Dividend

Growth

Payout ratios: Yahoo Finance, "Statistics"

- Go to Yahoo Finance, search for "IBM" or "Google"  
- Look for "Statistics" for dividend and payout information  
- But do not use "Financials" "Cash Flow" - use https://www.marketwatch.com/investing/stocks
- Go to "Search" then search for "IBM" then "Financials"

# 1.4 Using Dividend Discount Models

# Contents

# Valuation for FIS

FIS Example: Current price (30-apr-19) \$116/share; shares 323.29mn

1. Constant dividend (no growth)  $\Rightarrow rp = -1.38\%$  
2. Constant  $g$  of  $8\%$  &  $rf = 2.5\% \Rightarrow rp = 6.71\%$  
3. Multistage growth (25% first 5,  $g = 6.643\%$  thereafter)

<table><tr><td>FIS, 2018 Income</td><td>$mmn</td><td>$mnn</td><td>per shr</td></tr><tr><td>Revenue</td><td></td><td>\$8,420</td><td></td></tr><tr><td>Cost of goods sold</td><td>-5,570</td><td></td><td></td></tr><tr><td>Other (interest, taxes)</td><td>-2,004</td><td></td><td></td></tr><tr><td>Net Income</td><td></td><td>846</td><td>\$2.62</td></tr><tr><td>Dividends</td><td>-421</td><td></td><td>-1.30</td></tr><tr><td>Retained Earnings</td><td></td><td>425</td><td>1.31</td></tr></table>

Constant dividend (no growth)  $PV = \frac{D}{rf + rp}$

- Let's try to back out "implied discount"  
- D=$1.30 ⇒ 116 = $\frac{1.30}{rf+rp} \Rightarrow rf + rp = 1.30 / 116 = 1.12\%$  
- risk-free about  $2.5\%$ :  $rf = 2.5\% \Rightarrow rp = 1.12 - 2.5$ ,  $rp = -1.38\%$  
- Implied discount rate WAY too low, says  $rp$  negative  
- Completely unrealistic

Constant growth  $PV = \frac{D_0(1 + g)}{y - g} = \frac{D_1}{rf + rp - g}$

- Back out "implied discount" if growth  $g = 8\%$  (.08)  
- D=\$1.30 ⇒ 116 = 1.30(1+g)/rf+rp-g ⇒ rf+rp-g/1+g = 1.30/116 = 1.12%  
- If  $g = 8\%$ ,  $rf + rp - .08 = 1.08 * .0112 \Rightarrow rf + rp = 9.21\%$  
- High growth rate ( $g = 8\%$ ) but reasonable risk premium  
- $rf + rp = 9.21\%$ :  $rf = 2.5\%$ ,  $rp = 6.71\%$

Multistage: Assume  $25\%$  for 5yr, then what  $\% g$  thereafter?  $g = 6.643\%$

- Say  $r_f = 2.5\%$ ,  $rp = 6.71\% \Rightarrow$  risk-adjusted discount  $= 9.21\%$  
 - PV 1st: first 5 yrs (dividend grows to $3.967), PV5yrs = $9.925  
- Back out \(PV_{2nd} = PV_{6-\infty} = \\)106.10\(. Ask, what growth gives \(PV_{2nd} = \frac{PV_{cg}}{(1 + y)^5} = \frac{D5(1 + g) / y - g}{(1 + y)^5} = 106.10? \Rightarrow g = 6.643\%\)  
- Total: PV = $9.925 + $106.10 = \$116.0 - what we see in the market  
- Growth after 5 yrs (6.643%) still pretty high

Let's go through the calculations for the "multistage growth model" applied to FIS assuming:

- Discount Rate = y = rf + rp = 2.5 + 6.71 = 9.21%  
- Growth  $25\%$  for first 5 years, then growth  $6.643\%$  after

For "Multistage Growth Model" the steps are:

1. Calculate PV of "1st stage" dividends (say in spread-sheet) - in this case 5 years

$$
P V _ {1 s t} = \frac {D 1}{1 + y} + \frac {D 2}{(1 + y) ^ {2}} + \dots + \frac {D 5}{(1 + y) ^ {5}}
$$

Calculate dividends by  $\mathrm{D}1 = \mathrm{D}0^{*}(1.25) = 1.3^{*}1.25$  .  $\mathrm{D}2 = \mathrm{D}0^{*}(1.25)\hat{\mathbf{\Omega}} 2 = 1.3^{*}1.5625;\dots$  

- Then discount dividends by (1.0921), (1.0921)^2, …  
 - PV1st = \$9.925

2. Constant growth  $g$  per year starting yr 5:

$$
P V _ {2 n d} = \frac {P V _ {c g}}{(1 + y) ^ {5}} = \frac {D 5 (1 + g) / y - g}{(1 + y) ^ {5}}
$$

- D5 = \$3.967  
- PVcg = D5(1 + g)/(y - g) = 3.967*(1.06643)/(.0921-.06643) = 164.82  
- PV2nd = PVcg / (1+y)^5 = 164.82 / (1.0921^5) = 106.10

3. Combine these:  $PV_{Total} = PV_{1st} + PV_{2nd}$

- PVtotal = 9.925 + 106.10 = 116.025  
- Basically, the \$116 price that we see in the market

Brealey Myers Allen Ch 4

Using DCF models difficult

- Textbook Chapter 4 covers alternatives - e.g. valuation by comparables

# 1.5 Process For Dividends

# Contents

# Process for Cash Dividend

Declaration Date: Firm announces quarterly dividend  

- Dividends don't change much so generally non-event  
- Record date - date you have to be registered to get dividend  
- Two days prior to Record shares start trading x-d - share drops by the dividend amount
- Everyone knows this so really just a convention  
- Before x-d you get the dividend so share is worth X+dividend  
- After x-d date you don't get dividend so share is worth X
- Checks mailed some weeks later

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d095e8646537b440aa0c2a209b65a4365cdf73b3ad3320fb9d31bae10c3fb29e.jpg)

Process for cash dividend

Firm announces quarterly dividend on the declaration date. Generally dividends don't change from quarter-to-quarter or year-to-year so pretty much non-event (unless there's a change)

Also announce record date - date at which you have to be registered in the books and records as owning the share to get the dividend. Two days prior to this the shares start trading without the dividend and the share drops by the dividend amount. (Everyone knows this so really just a convention - before that x-d date you get the dividend so share is worth X+dividend. After x-d date you don't get dividend so share is worth X.)

Checks mailed some weeks later.

# 1.6 Dividend & Buybacks Equivalent

# Contents

# Dividend & Buyback Equivalent

Equity (common stock) gets "what's left over"

- Pay employees, taxes, debt, etc., Left over is "residual cash flow"

Actually two ways to pay out shareholders

1. Cash Dividend (above)  
2. Buyback (buy shares in the market)

Both give cash back to shareholders

- Equivalent  
- But huge confusion and controversy

News stories about "evils" of stock buybacks

# Dividend & Buyback Equivalent

Starting in late 1980s share buybacks became important

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/2f0da28a2588a63be2a85aa1c4e111e0849f963a450b2b02a48af7349e967fb0.jpg)

Prior to 1983 no share repurchases.

- A firm wanting to manipulate share price could secretly buy shares.  
- Nothing wrong openly buying shares - transfer cash to shareholders

1980s, rule change, SEC's ruly 10b-18

Prior to 1983 there were no share repurchases. Part of the change was rule changes. A firm that wants to manipulate its share price (keep it artificially high) could secretly buy shares. This has been known to be done, and was a popular game during the 1920s. There is nothing nefarious about a firm openly buying shares as a way of transferring cash to shareholders, but prior to the SEC's rule 10b-18 firms trying to simply transfer cash could have been accused of trying to manipulate

their share price. Once the rule was put in place it allowed firms to transfer cash via repurchases

# Information - Dividends and Share Repurchases

Dividends can provide information that a firm is profitable and management is confident

- Easy to make announcements, possible to massage earnings reports  
- Harder to pay out cash on a regular basis without cash  
- Thus, regular cash dividends signal that a firm is profitable  
- In the US at least, dividends are taken as a valuable piece of information  
- Problem: how do firms return cash from temporary surge of profitability?

Share repurchases tend to be temporary

- In the US at least the implicit arrangement is that share repurchases are often temporary or one-off

# Information and Dividends and Share Repurchases

# Dividends can provide information that a firm is profitable and management is confident

- It is easy to make positive announcements, possible to massage earnings reports even for a long time, and firms have even been known to fraudulently alter earnings.  
- But it is much harder to pay out cash on a regular basis unless you actually have cash.  
- Thus, regular cash dividends are a concrete sign that a firm is actually profitable.  
- In the US at least, dividends are taken as a valuable piece of information about a firm's current and expected future profitability. Note, however, that part of this is dependent on an implicit agreement between managers and investors that managers will not change very often and very much – managers will change dividends when they are confident they will be able to maintain those dividends for a long time. We could think of an environment where managers increase dividends temporarily when they have a temporary cash increase and so changes in dividends don't provide too much information about managements' views of future prospects. Some other countries have somewhat different implicit arrangements.  
- Such an implicit arrangement – where dividends are used as a reliable signal of current and future profitability – leaves the problem of how do firms return cash to investors when there is a temporary surge of profitability and the firm does not have projects to invest.

# Share repurchases tend to be temporary

- In the US at least the implicit arrangement is that share repurchases are often temporary or one-off.

# Dividend & Buyback Equivalent

Company decides to pay back \$1,000 (project not good enough)

- Company pays out \$1000 in both cases, so has to be the same  
- Number of shares and share price different

<table><tr><td colspan="4">Rational Demiconductor Balance Sheet (market values) before Dividend</td></tr><tr><td colspan="2">Assets</td><td colspan="2">Liabilities</td></tr><tr><td>Cash (held for new project)</td><td>1,000</td><td>0</td><td>Debt</td></tr><tr><td>Fixed Assets</td><td>9,000</td><td>10,000</td><td>Equity</td></tr><tr><td>New project (requires $1,000?)</td><td>0</td><td></td><td></td></tr><tr><td>Value</td><td>$10,000</td><td>\$10,000</td><td>Total value of firm</td></tr><tr><td colspan="4">1000 shares @ \$10</td></tr><tr><td colspan="4">CASH DIVIDEND (\$1 dividend, 1000 shares)</td></tr><tr><td colspan="2">TOTAL VALUE</td><td>SHARES</td><td>CASH</td></tr><tr><td>BEFORE</td><td>Shares + Cash = 10,000 + 0 = 10,000</td><td>1000 shares, Each share $10</td><td>$0</td></tr><tr><td>AFTER</td><td>Shares + Cash = 9,000 + 1,000 = 10,000</td><td>1000 shares, Each share $9</td><td>$1,000</td></tr><tr><td colspan="4">SHARE REPURCHASE (buy back 100 shares, \$10 each)</td></tr><tr><td colspan="2">TOTAL VALUE</td><td>SHARES</td><td>CASH</td></tr><tr><td>BEFORE</td><td>Shares + Cash = 10,000 + 0 = 10,000</td><td>1000 shares, Each share $10</td><td>$0</td></tr><tr><td>AFTER</td><td>Shares + Cash = 9,000 + 1,000 = 10,000</td><td>900 shares, Each share $10</td><td>$1,000</td></tr></table>

Rational Demiconductor [Brealey et al.(2013)Brealey, Myers, and Allen] is chapter 16

- The idea here is that the firm has retained \$1,000 for a new project.  
- But the project turns out to be worthless, so the firm decides not to invest the \$1,000 and instead return to investors  
- Two choices
- Cash dividend, give each shareholder \$1 in a cash dividend  
 - Share buyback, buy 100 shares at \$10 each
- These both give \$1,000 back to shareholders, so they have to be the same.  
- The share price will be different in the two cases, but so will the number of shares. The value at the end will be the same in both cases.

<table><tr><td colspan="4">Rational Demiconductor Balance Sheet (market values) before Dividend</td></tr><tr><td colspan="2">Assets</td><td colspan="2">Liabilities</td></tr><tr><td>Cash (held for new project)</td><td>1,000</td><td>0</td><td>Debt</td></tr><tr><td>Fixed Assets</td><td>9,000</td><td>10,000</td><td>Equity</td></tr><tr><td>New project (requires $1,000?)</td><td>0</td><td></td><td></td></tr><tr><td>Value</td><td>$10,000</td><td>\$10,000</td><td>Total value of firm</td></tr></table>

# References

[Brealey et al.(2013)Brealey, Myers, and Allen] Richard A. Brealey, Stewart C. Myers, and Franklin Allen. Principles of Corporate Finance. McGraw-Hill Education, New York, 11 edition edition, January 2013. ISBN 978-0-07-803476-3.

# Introducing Equities + Securtization


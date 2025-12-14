---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Outline
linter-yaml-title-alias: Outline
---

Lecture 15

Thomas S. Coleman

8 May 2023; Draft May 15, 2023

# Outline

# Contents

# 1 Discussion - Stablecoins

# Tether - Stablecoin - Part of Crypto Universe

From last year, when Tether was under pressure

Stablecoin

- Digital asset residing on blockchain, promised to trade 1-to-1 to dollars  
 - You buy $1 of Tether, (supposed to) remain at $1 always

Blockchain

- Very simple idea - distributed database with security and concurrency ensured through cryptographic algorithms

Tether - Asset-back stablecoin

- Tether promises to buy safe assets with all money invested  
- But there are questions (and legal fights) about audits, etc.

I've posted some material on Blockchain under "Modules"

# How is Tether Like a Bank?

# Bank

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>$80</td><td>$90</td><td>Deposits</td></tr><tr><td>Reserves</td><td>$20</td><td>$10</td><td>Equity</td></tr><tr><td>Total</td><td>$100</td><td>$100</td><td>Total</td></tr></table>

# Tether

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Assets</td><td>$80</td><td>$95</td><td>Deposits</td></tr><tr><td>Reserves</td><td>$20</td><td>$5</td><td>Equity</td></tr><tr><td>Total</td><td>$100</td><td>$100</td><td>Total</td></tr></table>

# Similarities

Deposits

- Borrow from public (customers give money to bank or Tether)  
 - Promise to pay back $1 for every $1 put in
- Reserves - Hold some cash as reserves to pay out customers  
- Loans / Assets
- Use some of deposits for other business, to make profits

# Differences

- Banks subject to many rules and laws (e.g. auditing)  
- Result: more transparency and information, easier for customers and investors to see when bank has poor business practices (and harder to commit outright fraud)  
- Tether not subject to same rules  
- Result: less information, hard for customers & investors to see whether company has good business practices

# How is Tether Like a Money Market Mutual Fund?

Money Market Fund  

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Assets</td><td>$80</td><td>$100</td><td>Shares</td></tr><tr><td>Reserves</td><td>$20</td><td>$0</td><td>Equity</td></tr><tr><td>Total</td><td>$100</td><td>$100</td><td>Total</td></tr></table>

Tether  

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Assets</td><td>$80</td><td>$95</td><td>Deposits</td></tr><tr><td>Reserves</td><td>$20</td><td>$5</td><td>Equity</td></tr><tr><td>Total</td><td>$100</td><td>$100</td><td>Total</td></tr></table>

# Similarities

- Shares / Deposits
- Take money in from public (customers give money to MMF or Tether)  
 - Promise to pay back $1 for every $1 put in
- Reserves - Hold some cash as reserves to pay out customers  
- Assets
- Use some of deposits for other business, to make profits

# Differences

- MMF subject to many rules and laws (e.g. auditing)  
- Result: transparency  
- MMF invests only in short-term, high-quality assets  
 - Stay close to $1  
- Tether not subject to same rules  
- Result: little transparency  
- Tether may invest in longer-term assets of unknown quality  
- May lose value, may default

# What if Tether Invests in US Treasury Bonds?

Tether will invest assets in something, rather than all $100 in cash. Two important questions:

1. How long duration? (Go up & down with rates? Liquidity risk.)
2. What credit quality? (Default and money lost? Solvency risk.)

Examine only duration question (sensitivity to interest rates)

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Assets</td><td>$80</td><td>$100</td><td>Deposits</td></tr><tr><td>Reserves</td><td>$20</td><td>$0</td><td>Equity</td></tr><tr><td>Total</td><td>$100</td><td>$100</td><td>Total</td></tr></table>

- Why invest in longer bonds? 3mth bills vs 10yr bonds?  
- Earn more on longer-term bonds - TBills vs TBonds  
- Longer duration  $\rightarrow$  more sensitivity if rates go up  
- Invest $80 of assets in 10-yr TBonds, now worth $76.18.  
- Could not pay everyone back

<table><tr><td></td><td>1-apr-22</td><td>13-may</td><td>MacDur</td><td>BPV</td></tr><tr><td>9/29/22 T-Bill</td><td>1.0430</td><td>1.113</td><td>0.50yr</td><td>0.49</td></tr><tr><td></td><td>99.4756</td><td>99.5703</td><td></td><td></td></tr><tr><td>UST 1.875 of 15-feb-2032</td><td>95.6328</td><td>91.0625</td><td>9.03yr</td><td>8.537</td></tr><tr><td></td><td>2.374%</td><td>2.935%</td><td></td><td></td></tr><tr><td></td><td>95.8659</td><td>91.5250</td><td></td><td></td></tr></table>

<table><tr><td></td><td>1-apr-22</td><td>13-may-22</td><td>MacDur</td><td>BPV</td></tr><tr><td>9/29/22 T-Bill</td><td>1.0430</td><td>1.113</td><td>0.50yr</td><td>0.49</td></tr><tr><td></td><td>99.475603</td><td>99.570258</td><td></td><td></td></tr><tr><td>UST 1.875 of 15-feb-2032</td><td>95.6328125</td><td>91.0625</td><td>9.03yr</td><td>8.537</td></tr><tr><td></td><td>2.374%</td><td>2.935%</td><td></td><td></td></tr><tr><td></td><td>95.865893</td><td>91.525042</td><td></td><td></td></tr></table>

# Remember SVB - Exactly "Investing in UST" (long duration)

SVB invested in UST - safe (credit) but long-dated

- Interest rates  $\uparrow$  in 2022, assets  $\downarrow$

Picture (from NYTimes) shows gains & losses

- Losses as % of deposits - SVB up to 9%  
- "Big Loss" below - 9% of deposits  
SVB in 2022 - nearly insolvent  
People did not realize until March 8  
- Looking at balance sheet (\$173.1bn deposits) no way they could survive

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f33d1e09d594b3e70441debc3c3d760342875332dc3e75d91b4a749be1afeef9.jpg)  
SVB Actual 2022 (\$bn)  
SVB "Big Loss" ($bn)

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>73.6</td><td>173.1</td><td>Deposits</td></tr><tr><td>Investments</td><td>125.1</td><td>22.4</td><td>Other</td></tr><tr><td>Other</td><td>13.1</td><td>16.3</td><td>Equity</td></tr><tr><td>Total</td><td>211.8</td><td>211.8</td><td>Total</td></tr></table>

<table><tr><td colspan="2">ASSETS</td><td colspan="2">LIABILITIES</td></tr><tr><td>Loans</td><td>73.6</td><td>173.1</td><td>Deposits</td></tr><tr><td>Investments</td><td>109.5</td><td>22.4</td><td>Other</td></tr><tr><td>Other</td><td>13.1</td><td>0.7</td><td>Equity</td></tr><tr><td>Total</td><td>196.2</td><td>196.2</td><td>Total</td></tr></table>

# 2 Risk Premium - Overall Portfolio ("Market" Portfolio) Contents

# Price of Risk: Where We Are, Where We Go

We need to calculate risk premium to value uncertain cash flows

We can get risk premium for

- Bonds (e.g. for FIS promised cash flows: yield spread  $Y_{FIS} - Y_{UST}$ )  
- Overall equity market (historical:  $R_{S\& P} - R_{UST}$ : 7.3% or 6%)

We need risk premium for equity for individual companies: say FIS

- We need theory to give FIS RP as function of S&P RP

Answer: CAPM:  $R_{FIS} - R_{UST} = \beta \cdot (R_{S\& P} - R_{UST})$  or  $RP_{FIS} = \beta \cdot RP_{S\& P}$ . To get there we need to understand:

Diversification: how volatilities "add"  

- Digression on Sharpe ratio  
- Portfolio construction: how we build portfolios  
- How we choose the "market" portfolio: Capital Market Line  
- Contribution &  $\beta$ : how individual securities contribute to portfolio vol  
- $\beta$  measures contribution to overall portfolio vol, so  $\beta$  matters

How do we get overall market Risk Premium (RP)?

THEORY for RP: budget line & utility

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a1ea891f942ebf7c2757a03d4fb1d213bc34ba40fc24c7ff9979edabda7b95e5.jpg)  
Budget Set - Efficient Frontier

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/bdde3ee85ea0b9985a43917f39f826b41a6ee46fd3a224fe8357e51ef484007b.jpg)  
Utility & Preferences over Ret & Std Dev

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/99b9477410bc174910b6661e2367f55b8a165ea2cb9bd1dee988835646623df7.jpg)  
CALCULATION: History

(Stocks, Bonds, Bills, Inflation)

Brealey, Myers, Allen Table 7.1, 1900-2011  

<table><tr><td></td><td>Nominal</td><td>Risk Prem</td></tr><tr><td>TBills</td><td>3.9%</td><td>0.0%</td></tr><tr><td>Gov’t Bonds</td><td>5.4%</td><td>1.4%</td></tr><tr><td>Stocks</td><td>11.3%</td><td>7.3%</td></tr></table>

We like return, dislike volatility

Budget line is our efficient frontier (production possibility curve)

Sharpe, Separation, and Capital Market Line

# Useful - Capital Market Line - Ignore Preferences

Using our idea of the Sharpe ratio (and a riskless asset) we can ignore preferences

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ad6d2159315128c064a934da59da62b40d06e1fe34eb647511e6c7f76b790614.jpg)

Return / risk trade-off set by tangency of indifference curves and budge line

- Exactly like Micro I  
- Indifference curves (love return, hate std dev)  
- "Budget Line" of Efficient Frontier ("best" portfolios)

Different indifference curves  $\Rightarrow$  different trade-off

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/2048cfd4161f90b16dd5c96e9ce54eade8740809e92b39d41f54093325e641e2.jpg)

With riskless asset (and using Sharpe ratio)

- Indifference curves don't matter  
- Choose "Market Portfolio" with highest Sharpe  
- People who like more risk, leverage Market Portfolio

Capital Market Line - Separates Preferences vs Technology

# Reminder on Using Sharpe - Idea of Leverage

Step back: what if we combine a risk-free  $(\sigma = 0)$  asset with an efficient portfolio (return  $r_{\mathrm{port}}$ , standard deviation  $\sigma_{\mathrm{port}}$ )

- Any of our efficient portfolios

Use portfolio 1. Get  $r = r_f + \frac{r1 - rf}{\sigma 1} \cdot \sigma$  (for any  $\sigma$ )

- Controlled by Sharpe Ratio  $= \frac{r1 - rf}{\sigma 1}$

Example:  $r_{\mathrm{f}} = 2\%$ ,  $r_1 = 6\%$ ,  $\sigma_1 = 10\%$ .

- Sharpe  $= {0.4}$  
- Along the line  $r = 2 + 0.4*\sigma$  
- $\sigma = 5\%$ ,  $r = 2 + 0.4^{*}5 = 4\%$  
$\sigma = 15\%$ $r = 8\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a79441fef29d2d44f8412b325be325e7adbd724dd71e69c861dde1246ae745e0.jpg)  
Standard Deviation

# Capital Market Line - Choose Highest Sharpe Portfolio

Want large Sharpe Ratio - Sharpe  $\uparrow$  line  $\uparrow$

- Don't use just any portfolio, choose largest Sharpe.  
- Call this line the CML - just touches the frontier  
- Red line. Call the chosen portfolio the market portfolio. Only one used

$$
r = r _ {f} + \frac {r m - r f}{\sigma m} \cdot \sigma = r _ {f} + S _ {m} \cdot \sigma
$$

Sharpe Ratio important

- Sharpe  $= \frac{r1 - rf}{\sigma 1}$  
Higher Sharpe  $\Rightarrow$  higher risk-adjusted return  
- Investors and hedge funds look at Sharpe all the time  
S&P Sharpe  $= 0.37$ $(7.3\% /20\%)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/2ac3034cb3515c85f3419bf782f42792046e1edbfcd09ba3d12047cc3f43288d.jpg)  
Standard Deviation

# Capital Market Line & Separation - Really Important

Wonderful result: separate preferences (utility function) from market (the frontier)

- Choose portfolio with the highest Sharpe  
- Adjust our volatility depending on our preferences

The market portfolio is absolutely key

$$
C M L: r = r _ {f} + \frac {r m - r f}{\sigma m} \cdot \sigma = r _ {f} + S _ {m} \cdot \sigma
$$

A few things

1. Pretend "market" is stock market (S&P 500)  
2. Measure RP by measuring history:  $\approx 7.3\%$  
3. Doesn't help with RP for individual assets

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/89eff69377ff2a8038391d43d592de637f9457eb4810aabec00871813799b908.jpg)

We care only about overall market portfolio

- Market volatility  $\sigma_{m}$  matters - but not vol for individual assets

But this doesn't really help us:

- We've separated out preferences from market (efficient frontier)  
- We now know that only one portfolio - the portfolio with highest Sharpe - will be chosen
- There will be individual assets within that portfolio, but overall there will only be one market portfolio chosen
- We have the Expected Return and Volatility for that overall market portfolio
- From ER we get Risk Premium:  $\mathrm{ER} = \mathrm{rf} + \mathrm{RP}$  or  $\mathrm{RP} = \mathrm{ER} - \mathrm{rf}$
- This tells us how we get that ER (RP) & Vol.
- For now we are going to pretend that the "Market" is the stock market - the S&P 500 index  
- Not correct (as we saw with bonds & stocks, can do better by combining them) but that is what textbooks generally do
- We can measure this ER (RP) & Vol by looking at history of stock market
- Risk Premium ~ 7.3%, Sharpe ~ 0.37
- But this doesn't help answer our question of how do we get RP for individual asset

# Price of Risk: Where We Are, Where We Go

We need to calculate risk premium to value uncertain cash flows. We can get risk premium for

- Bonds (e.g. for FIS promised cash flows: yield spread  $Y_{FIS} - Y_{UST}$ )  
- Overall equity market (historical:  $R_{S\& P} - R_{UST}$ : 7.3% or 6%)

We need risk premium for equity for individual companies: say FIS

- We need theory to give FIS RP as function of S&P RP

Answer: CAPM:  $R_{FIS} - R_{UST} = \beta \cdot (R_{S\& P} - R_{UST})$  or  $RP_{FIS} = \beta \cdot RP_{S\& P}$ . To get there we need to understand:

Diversification: how volatilities "add"

- Digression on Sharpe ratio
- Portfolio construction: how we build portfolios  
- How we choose the "market" portfolio: Capital Market Line  
- Contribution &  $\beta$ : how individual securities contribute to portfolio vol  
- $\beta$  measures contribution to overall portfolio vol, so  $\beta$  matters

# 3 Contribution & Beta  $(\beta)$

# 3.1 What is Individual Asset Risk Premium?

# Contents

# What is Individual Asset Risk Premium?

CML & Market Portfolio give return (so risk premium) for whole portfolio, whole market  
Market volatility  $(\sigma_{m})$  determines market return (risk premium, price of risk)  
But we need risk premium for an individual stock - say FIS

- Need to go from market to FIS  
- What determines FIS risk premium (price of risk)?  
- Cannot be FIS volatility or FIS Sharpe

Remember Bond & Stock portfolio - Bonds low vol, low Sharpe

- $20\%$  bonds gave portfolio with higher Sharpe  
- But bonds contribute to portfolio, are valuable,  
- Compensated by earning positive Risk Premium - earning more than risk free

<table><tr><td></td><td>Corr</td><td>Avg Return</td><td>Std Dev</td><td>Risk Prem</td><td>Sharpe</td></tr><tr><td>TBonds</td><td></td><td>5.4%</td><td>8.9%</td><td>1.4%</td><td>0.17</td></tr><tr><td>Stocks</td><td></td><td>11.3%</td><td>20.0%</td><td>7.3%</td><td>0.37</td></tr><tr><td>2/10B+8/10S</td><td>0.25</td><td>10.1%</td><td>16.5%</td><td>6.2%</td><td>0.38</td></tr></table>

# But What is Individual Asset Risk Premium?

We need risk premium for an individual stock - FIS

- Need to go from market to FIS  
- What determines FIS risk premium (price of risk)?  
- Cannot be FIS volatility

# Individual assets inside frontier

No consistent relation return to vol

- Asset 1: High return, low vol  
- Asset 2: Lower return, highest vol  
- Asset 3: Lowest return, medium vol

# What to look at?

# Turns out to be contribution  $(\beta)$

- Completely different graph -  $\beta$  on horizontal  
- Call this the Security Market Line - details in a few slides

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/67b72fb208f7277a2bc0f9dec827ae9f0c00bb4a7b54d8f707003fad03397689.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ca8b5b3dcdf98182fa7068d8fd837aec33d3eade7363b8582dd66a0fc1238881.jpg)  
Standard Deviation

# 3.2 Contribution and  $\beta$

# Contents

Individual Securities - Contribution & Beta  $(\beta)$

Market portfolio, and market volatility ( $\sigma_{m}$  or  $\sigma_{port}$ ) matters - not individual volatility

- If this is true, only care about  $\sigma_{port}$  and not vol for individual assets,  $\sigma_{i}$  
- Compensated only for how individual security contributes to  $\sigma_{port}$  
- We need a measure for how individual securities contribute to  $\sigma_{port}$ .

Look back at the formula for portfolio volatility - play magic with algebra

$$
\sigma_ {p o r t} = \sqrt {w _ {1} ^ {2} \cdot \sigma_ {1} ^ {2} + 2 \cdot \rho \cdot w _ {1} \cdot \sigma_ {1} \cdot w _ {2} \cdot \sigma_ {2} + w _ {2} ^ {2} \cdot \sigma_ {2} ^ {2}}
$$

$$
\sigma_ {p o r t} = \frac {\sigma_ {p o r t} ^ {2}}{\sigma_ {p o r t} ^ {2}} \cdot \sigma_ {p o r t} = \frac {w _ {1} ^ {2} \sigma_ {1} ^ {2} + 2 \rho w _ {1} w _ {2} \sigma_ {1} \sigma_ {2} + w _ {2} ^ {2} \sigma_ {2} ^ {2}}{\sigma_ {p o r t} ^ {2}} \cdot \sigma_ {p o r t}
$$

Want to split into two parts: contribution from 1 ( $w_{1}$  only) and from 2 ( $w_{2}$  only)

How? Cannot! That middle part  $2\rho w_{1}w_{2}\sigma_{1}\sigma_{2}$  has both  $w_{1}$  and  $w_{2}$

Contribution & Beta  $(\beta)$  Decomposes Overall Volatility

Factor out  $w_{1}$  and split that middle part half-half

$$
\sigma_ {p o r t} = \left[ w _ {1} \frac {\left(w _ {1} \sigma_ {1} ^ {2} + \rho w _ {2} \sigma_ {1} \sigma_ {2}\right)}{\sigma_ {p o r t} ^ {2}} + \frac {\left(\rho w _ {1} \sigma_ {1} \sigma_ {2} + w _ {2} \sigma_ {2} ^ {2}\right)}{\sigma_ {p o r t} ^ {2}} w _ {2} \right] \cdot \sigma_ {p o r t}
$$

Call those parts Beta  $(\beta)$

$$
\beta_ {1} = \frac {\left(w _ {1} \sigma_ {1} ^ {2} + \rho w _ {2} \sigma_ {1} \sigma_ {2}\right)}{\sigma_ {p o r t} ^ {2}} \quad \beta_ {2} = \frac {\left(\rho w _ {1} \sigma_ {1} \sigma_ {2} + w _ {2} \sigma_ {2} ^ {2}\right)}{\sigma_ {p o r t} ^ {2}}
$$

$$
\sigma_ {p o r t} = \left[ w _ {1} \beta_ {1} + \beta_ {2} w _ {2} \right] \cdot \sigma_ {p o r t}
$$

We now have a nice decomposition depending on  $w_{1}$  and  $w_{2}$ :

- $w_{1}\beta_{1}$  the overall contribution  
- $\beta_{1}$  contribution per unit of asset 1  
- $w_{1}$  the "quantity" of asset 1

# Beta  $(\beta)$  as Contribution to Market Risk

Piece in brackets says how assets contribute to portfolio vol  $(\sigma_{port})$

$$
\sigma_ {p o r t} = \left[ w _ {1} \beta_ {1} + w _ {2} \beta_ {2} \right] \cdot \sigma_ {p o r t}
$$

For market portfolio, how assets contribute to market risk

- $w_{i}$  how much we hold  
- $\beta_{i}\sigma_{port}$  how "risky" is asset  $i$  
- $\beta_{i}$  how "risky" relative to market vol  $\sigma_{port}$ :
- $\beta = 1.0$  for same risk,  $< 1.0$  for "low risk",  $>1.0$  for "high risk"

Carries over to multiple assets

$$
\sigma_ {p o r t} = \sigma_ {p o r t} \cdot \sum_ {i} w _ {i} \beta_ {i}
$$

# Revisit Bond & Stock Portfolio – and Contribution

<table><tr><td></td><td></td><td>Avg</td><td>Std</td><td></td><td colspan="2">Bond</td><td colspan="2">Stock</td></tr><tr><td></td><td>Corr</td><td>Return</td><td>Dev</td><td>Sharpe</td><td>β</td><td>w · β · σp</td><td>β</td><td>w · β · σp</td></tr><tr><td>TBills</td><td></td><td>3.9%</td><td>-</td><td>0.00</td><td></td><td></td><td></td><td></td></tr><tr><td>TBonds</td><td></td><td>5.4%</td><td>8.9%</td><td>0.17</td><td></td><td></td><td></td><td></td></tr><tr><td>Stocks</td><td></td><td>11.3%</td><td>20.0%</td><td>0.37</td><td></td><td></td><td></td><td></td></tr><tr><td>1/10B + 9/10S</td><td>0.20</td><td>10.7%</td><td>18.2%</td><td>0.37</td><td>0.12</td><td>0.2%</td><td>1.10</td><td>18.0%</td></tr><tr><td>2/10B + 8/10S</td><td>0.20</td><td>10.1%</td><td>16.4%</td><td>0.38</td><td>0.16</td><td>0.5%</td><td>1.21</td><td>15.9%</td></tr><tr><td>8/10B + 2/10S</td><td>0.20</td><td>6.6%</td><td>8.8%</td><td>0.30</td><td>0.90</td><td>6.4%</td><td>1.39</td><td>2.5%</td></tr><tr><td>9/10B + 1/10S</td><td>0.20</td><td>6.0%</td><td>8.6%</td><td>0.24</td><td>1.00</td><td>7.8%</td><td>0.97</td><td>0.8%</td></tr></table>

Some results for  $\beta \cdot \sigma_{p}$  differ due to rounding

Portfolio Avg Return: weighted mean of Bond & Stock returns

- $\mu_{p} = w_{1}\cdot \mu_{1} + w_{2}\cdot \mu_{2}$ , contribution is weight * avg return ( $w_{i}\cdot \mu_{i}$ )

Portfolio Volatility (Standard Deviation,  $\sigma_p$ ): not weighted mean

$\sigma_{p} = \sqrt{w_{1}^{2}\cdot\sigma_{1}^{2} + 2\cdot\rho\cdot w_{1}\cdot\sigma_{1}\cdot w_{2}\cdot\sigma_{2} + w_{2}^{2}\cdot\sigma_{2}^{2}}$  

- Bond & Stock don't contribute their weight  $w_{i} \cdot \sigma_{i}$ , but  $w_{i} \cdot \beta_{i} \cdot \sigma_{p}$  
- $\sigma_{port} = w_1 \cdot \beta_1 \cdot \sigma_{port} + \beta_2 \cdot w_2 \cdot \sigma_{port}$

Individual volatility  $\sigma_{i}$  does not matter - only  $\beta_{i} \cdot \sigma_{p}$

Portfolio Avg Return: Bond & Stock Avg returns  $\mu_{i}$  matter

- $\mu_{p} = w_{1}\cdot \mu_{1} + w_{2}\cdot \mu_{2}$ , contribution is weight  $\cdot$  avg return  $(w_{i}\cdot \mu_{i})$

Portfolio Volatility  $(\sigma_p)$ : Bond & Stock std dev  $\sigma_i$  do not matter

- $\sigma_{port} \neq w_1 \cdot \sigma_1 + w_2 \cdot \sigma_2$

Portfolio Volatility  $(\sigma_p)$ : Bond & Stock  $\beta_i \cdot \sigma_p$  matter

- $\sigma_{port} = w_1 \cdot \beta_1 \cdot \sigma_{port} + \beta_2 \cdot w_2 \cdot \sigma_{port}$

Individual volatility  $\sigma_{i}$  does not matter - only  $\beta_{i} \cdot \sigma_{p}$

Contribution  $\beta_{i}\cdot \sigma_{p}$  depends on Bond & Stock volatility

$\beta_{1}\cdot \sigma_{p} = \frac{\left(w_{1}\sigma_{1}^{2} + \rho w_{2}\sigma_{1}\sigma_{2}\right)}{\sigma_{port}}$

But also weight, vols, correlations of all other assets

- Consider how this asset  $i$  fits into portfolio

Because  $\beta_{i}$  &  $\beta_{i} \cdot \sigma_{p}$  matters, price of risk depends on  $\beta_{i}$  and not  $\sigma_{i}$

# Beta  $(\beta)$  as Covariance and Regression Coefficient

$\beta$  is also coefficient in regression:

$$
\hat {r} _ {i} = a + \beta_ {i} \cdot \hat {r} _ {p o r t} + \varepsilon_ {i}
$$

Decomposes into "Systematic" or "Non-Diversifiable"  $(\beta_{i}\cdot \hat{r}_{port}$  or  $\beta_{i}\cdot \sigma_{port})$  and "Idiosyncratic" or "Diversifiable"  $(\varepsilon_{i}$  or  $\sigma_{\varepsilon}$ )

Remember regression coefficient definition (from statistics):

$$
\beta_ {i} = \frac {C o v (r _ {i} , r _ {p o r t})}{\sigma_ {p o r t} ^ {2}}
$$

and for

$$
r _ {p o r t} = w _ {1} \cdot r _ {1} + w _ {2} \cdot r _ {2}
$$

$$
\beta_ {1} = \frac {C o v (r _ {1} , w _ {1} \cdot r _ {1} + w _ {2} \cdot r _ {2})}{\sigma_ {p o r t} ^ {2}} = \frac {(w _ {1} \sigma_ {1} ^ {2} + \rho w _ {2} \sigma_ {1} \sigma_ {2})}{\sigma_ {p o r t} ^ {2}}
$$

Two (equivalent) interpretations & meanings of  $\beta$ :

1. Contribution to risk:  $\sigma_{port} = [w_1\beta_1 + w_2\beta_2]\cdot \sigma_{port}$  
2. Regression  $(\hat{r}_i = a + \beta_i \cdot \hat{r}_{port} + \varepsilon_i)$ , decomposition into "Systematic"  $(\beta_i \cdot \sigma_{port})$  and "Idiosyncratic"  $(\sigma_{\varepsilon})$

# $\beta$  as Decomposition of Change in Vol

Decomposition  $\sigma_{port} = [w_1\beta_1 + w_2\beta_2] \cdot \sigma_{port}$  seems completely ad-hoc (just algebra) but actually deep

Truly gives the Contribution

Take partial:  $\frac{1}{\sigma_{port}}\frac{\partial\sigma_{port}}{\partial w_1} = \beta_1$  (do the algebra - it works!)  

- Now consider infinitesimal (percent) change in vol (remember that  $dln$  is essentially  $\% ch$ ):

$$
d \ln (\sigma_ {p o r t}) = \frac {d \sigma_ {p o r t}}{\sigma_ {p o r t}} = \frac {1}{\sigma_ {p o r t}} \left[ \frac {\partial \sigma_ {p o r t}}{\partial w _ {1}} d w _ {1} + \frac {\partial \sigma_ {p o r t}}{\partial w _ {2}} d w _ {2} \right]
$$

- But this means the  $\beta$ s give the decomposition of the change in vol for changes in the different assets:

$$
d \ln (\sigma_ {p o r t}) = \beta_ {1} d w _ {1} + \beta_ {2} d w _ {2}
$$

# 3.3 Beta for the Market vs Beta for a Portfolio

# Contents

# Beta for the Market vs Beta for Other Portfolios

Everyone talks about "the beta" of an asset

- They mean "beta vs the market"

Why can we talk about "the market"?  

- Because (in our simple theory) everyone buys the same market portfolio

With risk-free asset, everyone buys same portfolio

- Low-risk person puts  $55 into "market",$ 45 into bank  
- High-risk person puts $100 into "market", borrows another $100 to buy more

But everyone buys the same market portfolio

- Capital Market Line separates preferences from Efficient Frontier

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ff3d8e192ee7b6b89a50693e5edd4527aefdd0d82a5f780e478732f616686ced.jpg)

We care only about overall market portfolio

- So it makes perfect sense to talk about "the beta" of an asset - beta vs the market portfolio

# Beta with Other Portfolios

But in reality there are other portfolios – many possible portfolios

- For every portfolio, we can talk about the beta of assets in that specific portfolio

10yr UST:

$w = 0.333$ $\sigma = 0.011\%$  

- contribution  $(w\cdot \beta) = 13.9\%$ $\beta = 0.42$

SPX (S&P 500 Index):

- $w = 0.166, \sigma = 0.026\%$  
- contribution  $(w\cdot \beta) = 21.8\%$ $\beta = 1.31$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/414dbdbaa4853b269512f2f0c185d9e02a847e07a7a791371cae5f96990ee04b.jpg)

Portfolio risk reporting from Ch 10 of "Quantitative Risk Management"

- +$20mn 10-yr UST
- +£15mn 10-yr UKG ($21mn)  
- EUR7m CAC Equity Index futures (\$9.1mn)  
- $10mn SPX Equity Index futures

# 4 Capital Asset Pricing Model - Efficient and Market Portfolios

# 4.1 Efficient Portfolios and Return vs  $\beta$

# Contents

# Beta Measures Individual Security Price of Risk

- For any portfolio, Beta decomposes the overall volatility:  $\sigma_{port} = [w_1\beta_1 + \beta_2w_2]\cdot \sigma_{port}$

Since we care about individual assets' contribution to portfolio volatility, and since  $\beta$  measures this, seems that  $\beta$  is the natural "risk" measure - expected returns should depend on  $\beta$

- Assets with higher  $\beta$  should have higher return  
- More risk (higher  $\beta$ ) means higher return

We expect  $ER_{i} = f(\beta_{i})$  - meaning that expected returns depend on  $\beta_{i}$  and not  $\sigma_{i}$

- Wouldn't it be nice if the function were linear?  $ER_{i} = a + \beta_{i} \cdot \text{const}$

Amazing Result: For Any Efficient Portfolio,  $ER_{i} = \gamma + \beta_{i} \cdot (ER_{p} - \gamma)$  Individual assets don't line up with volatility

- We expect they should line up nicely with  $\beta$ :  $ER_{i} = f(\beta_{i})$

# But here's the really amazing thing

- For any Efficient Portfolio, it is linear  
- The assets and weights in any portfolio on the efficient frontier must be chosen so that  $\beta_{i}$  all adjust until  $ER_{i} = \gamma +\beta_{i}\left(ER_{port} - \gamma\right)$  
- Remember,  $\beta_{1} = \frac{\left(w_{1}\sigma_{1}^{2} + \rho w_{2}\sigma_{1}\sigma_{2}\right)}{\sigma_{port}^{2}}$ , so as we adjust weights  $w_{i}$  the  $\beta_{i}$  adjust until they all line up

Assets 1, 2, 3 don't line up in Return vs Std Deviation

- But there is a  $\gamma$  so that all assets line up (with their own  $\beta_{i}$ )

Assets do line up in Return vs  $\beta$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/515e5ed153cf022ecd01c125fcbecd29dc7b04b289092378d6070b84361f342c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/8966cdf543a666ff2e8a8d11cda7c774e6bdd7d1af1c31a7de777850fa112e0d.jpg)

# Example: Returns Line Up With  $\beta$  for All Efficient Portfolios

Let's set how assets line up with our simple Bond & Stock portfolio

- Important: for our 2-asset example (B+S) all combinations are on efficient frontier  
- For many assets, must first solve for efficient frontier (Minimize Variance = ∑i,j wiwjσij)  
- All assets should line up:  $ER_{i} - \gamma = \beta_{i} \cdot (ER_{p} - \gamma)$

<table><tr><td></td><td>Corr</td><td>Avg Return</td><td>Std Dev</td><td>Risk Prem</td><td>Sharpe</td><td>β Bond</td><td>β Stock</td><td>γ</td></tr><tr><td>TBills</td><td></td><td>3.9%</td><td>0.0%</td><td>0.0%</td><td>0.00</td><td></td><td></td><td></td></tr><tr><td>TBonds</td><td></td><td>5.4%</td><td>8.9%</td><td>1.4%</td><td>0.17</td><td></td><td></td><td></td></tr><tr><td>Stocks</td><td></td><td>11.3%</td><td>20.0%</td><td>7.3%</td><td>0.37</td><td></td><td></td><td></td></tr><tr><td>0.80 B &amp; 0.20 S</td><td>0.2</td><td>6.58%</td><td>8.84%</td><td>2.68%</td><td>0.303</td><td>0.903</td><td>1.389</td><td>-5.53%</td></tr><tr><td>0.20 B &amp; 0.80 S</td><td>0.2</td><td>10.12%</td><td>16.45%</td><td>6.22%</td><td>0.378</td><td>0.164</td><td>1.209</td><td>4.48%</td></tr><tr><td>0.388 B &amp; 0.612 S</td><td>0.2</td><td>9.01%</td><td>13.37%</td><td>5.11%</td><td>0.382</td><td>0.294</td><td>1.448</td><td>3.90%</td></tr></table>

Focus on  $80\%$  bonds, and let's solve for  $\gamma$  - answer is  $\gamma = -5.55$ :

$$
\begin{array}{l} B: 5. 4 - \gamma = 0. 9 0 3 (6. 5 8 - \gamma) \quad 5. 4 - (- 5. 5 5) = 0. 9 0 3 (6. 5 8 - (- 5. 5 5)) \\ S: 1 1. 3 - \gamma = 1. 3 8 9 (6. 5 8 - \gamma) \quad 1 1. 3 - (- 5. 5 5) = 1. 3 8 9 (6. 5 8 - (- 5. 5 5)) \\ \end{array}
$$

Does not match what we see in the market

Now  $20\%$  bonds, still lines up, but with  $\gamma = 4.48$ :

$$
\begin{array}{l} B: 5. 4 - \gamma = 0. 1 6 4 (1 0. 1 2 - \gamma) \quad 5. 4 - 4. 4 8 = 0. 1 6 4 (1 0. 1 2 - 4. 4 8) \\ S: 1 1. 3 - \gamma = 1. 2 0 9 (1 0. 1 2 - \gamma) \quad 1 1. 3 - 4. 4 8 = 1. 2 0 9 (1 0. 1 2 - 4. 4 8) \\ \end{array}
$$

Does not match what we see in the market

What about  $38.8\%$  bonds? Market Equilibrium - answer is  $\gamma = 3.90$ :

$$
\begin{array}{l} B: 5. 4 - \gamma = 0. 2 9 4 (6. 5 8 - \gamma) \quad 5. 4 - 3. 9 0 = 0. 2 9 4 (6. 5 8 - 3. 9 0) \\ S: 1 1. 3 - \gamma = 1. 4 4 8 (6. 5 8 - \gamma) \quad 1 1. 3 - 3. 9 0 = 1. 4 4 8 (6. 5 8 - 3. 9 0) \\ \end{array}
$$

This matches with what we actually see in the market

80% Bonds: Solve for  $\gamma$ , Assets Line Up, But Does Not Match Market

Security Market Line:  $ER_{i} - \gamma = \beta_{i}(ER_{port} - \gamma)$ ,  $\gamma = -5.55\%$  Does not match Market! Actual Portfolio

- Useful for total market or total wealth  
- Care about return vs vol (SD) for wealth  
- Individual securities lie inside frontier  
Tangency requires "rf"=-5.55, Sharpe=1.37

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/4a931df0524c78bfa14a4e58c5551959ff1e279424cde3be66706c0b51f4e31b.jpg)

Actual Return /  $\beta$  (Security Market Line)

- Yes useful for individual securities  
- $\gamma = -5.55\%$  so  $ER_{i} - \gamma = \beta_{i}(ER_{port} - \gamma)$  
Securities line up along straight line

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d454d981eaaa5aa650c1e4b4b57f37d40ab1e40268583ebaca7c4b71ddaa4129.jpg)

What if there is  $\beta = 0$  asset? Does this work?

- $3.90 - \gamma = 0$  ( $ER_{port} - \gamma$ )  
- What if we force  $\gamma = 3.90\%$  - does this work? NO

NO: wrong Bond & Stock returns:  $80\%$  not market equilibrium (not highest Sharpe) Portfolio - line through  $\mathrm{rf} = 3.90$  not tangent

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a4263aeaf4b61b167a3602f962fe9bfc4214abe574c989121309a2db104ae984.jpg)

Security Market Line - does not give actual returns

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/040f2d59d426034648514fca4333f2db67725cf0401888e51960c05315f9d047.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/1348bfea10bf1c87185a4a45d259f27a5c14c73dfba4c92b2ff0dd6c09e76f6c.jpg)

20% Bonds: Solve for  $\gamma$ , Assets Line Up, But Does Not Match Market Security Market Line:  $ER_{i} - \gamma = \beta_{i}$  ( $ER_{port} - \gamma$ ),  $\gamma = 4.48\%$  Does not match Market! Actual Portfolio does not line up with actual risk-free

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/8268ff8f51f1df883f260700587a052cd3f2080c9a26f46419c8b9a2e35a13a8.jpg)

Actual Return /  $\beta$  (Security Market Line)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ef86839b5e388364628c36087cdbfb676a59d8332dacd2b56e971c737626e3a1.jpg)

What if there is  $\beta = 0$  asset? Does this work?

- $3.90 - \gamma = 0$  ( $ER_{port} - \gamma$ )  
- What if we force  $\gamma = 3.90\%$  - does this work? NO

NO: wrong Bond & Stock returns:  $80\%$  not market equilibrium (not highest Sharpe) Portfolio - line through  $\mathrm{rf} = 3.90$  not tangent

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/6b8c09617be95be62906d8e20a04d8d09dce72dd70e434d0ab6fc560289dab4b.jpg)

Security Market Line - does not give actual returns

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/93a67b8813f5b02094c740a83dc39185d1e11785a9b1c0f3db5007b716b37654.jpg)

# 38.8% Bonds: Matches the Market - Market Equilibrium

Security Market Line:  $ER_{i} - \gamma = \beta_{i}(ER_{port} - \gamma)$ ,  $\gamma = 3.90\%$  Does match Market!

- Our  $\gamma$  matches the market, and all assets line up on SML with  $\gamma = r_f = 3.90$

# Market or Equilibrium Portfolio

- Portfolio with highest Sharpe  
Bond & Stock weights adjusted until  
- Individual securities lie inside frontier  
- Tangency with  $\mathrm{rf} = 3.90$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/1261b9038ed0324ef22073fda688de675e841bcb99834944d2437b3e289f0146.jpg)

# Security Market Line

- Yes useful for individual securities  
- $\gamma = rf = 3.90$  so  $ER_{i} - \gamma = \beta_{i}(ER_{port} - \gamma)$  
Securities line up along straight line

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ad985c9f147c8311c8e70de85fc72e275c5f113c348baccacb9a0caa9ebd7c00.jpg)

# 4.2 CAPM - Capital Asset Pricing Model

# Contents

# Three Facts about  $\beta$  - Any Portfolios, Efficient Portfolio, Market Portfolio

1. For any portfolio,  $\beta$  decomposes portfolio volatility  
2. For any efficient portfolio, asset returns line up along a  $\beta$  line for some  $\gamma$

- If force  $\gamma = rf$  then line up with incorrect asset returns

3. For market portfolio, asset returns line up along Security Market Line with risk-free rate

$$
\begin{array}{l} \beta_ {1} = \frac {\left(w _ {1} \sigma_ {1} ^ {2} + \rho w _ {2} \sigma_ {1} \sigma_ {2}\right)}{\sigma_ {p o r t} ^ {2}} \\ \beta_ {2} = \frac {\left(\rho w _ {1} \sigma_ {1} \sigma_ {2} + w _ {2} \sigma_ {2} ^ {2}\right)}{\sigma_ {p o r t} ^ {2}} \\ \sigma_ {p o r t} = \left[ w _ {1} \beta_ {1} + \beta_ {2} w _ {2} \right] \cdot \sigma_ {p o r t} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/079eaa7c70f0199add4b34e817b15905f99631c59a28467cd55edd6553bef8a0.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/713c82dec3d07104f9f84cb7333601792fd5daf05c171d31abf473b480e46773.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d0aa25610ab1ba6d5b4ee1adb94eed50d8521e67adf61241c2e529b941fb01d5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/15775880e05facb1ee1eff473089db4c529ea71cce624eeb5a5f0c5bb929863c.jpg)

Capital Asset Pricing Model:  $ER_{i} - r_{f} = \beta_{i}(ER_{mkt} - Er_{f})$

Result: For market portfolio (what we actually see in the market) we now know:

$$
\mathrm {C A P M :} E R _ {i} - r _ {f} = \beta_ {i} \left(E R _ {m k t} - E r _ {f}\right)
$$

$$
R P _ {i} = \beta_ {i} R P _ {m k t}
$$

What we have been looking for: ER (risk premium) for any asset

CAPM:  $ER_{i} - r_{f} = \beta_{i}(ER_{mkt} - Er_{f})$  

- Assets line up along the straight Security Market Line  
CAPM gives us Risk Premium  $R P_{i}$  
- To get risk-adjusted discount rate:

$$
Y _ {i} ^ {\text {t o d a y}} = r f ^ {\text {t o d a y}} + R P _ {i} = r f ^ {\text {t o d a y}} + \beta_ {i} \cdot R P _ {m k t}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a374c6ca104b5180afddd28b719c719f98c7864eac61762180164e7dced54c42.jpg)

Using CAPM to get Risk-Adjusted Discount Rate

IMPORTANT: Often write CAPM as  $ER_{i} = r_{f} + \beta_{i}(ER_{mkt} - r_{f})$ .

Confusing - Textbooks sometimes not very clear

Two-step process

1. Use CAPM to get long-term (average) risk-premium:

$$
R P _ {i} = \left(E R _ {i} - E r _ {f}\right) ^ {l o n g - t e r m} = \beta_ {i} \left(E R _ {m k t} - E r _ {f}\right) ^ {l o n g - t e r m}
$$

$$
R P _ {i} = \beta_ {i} \cdot R P _ {m k t}
$$

2. Use risk premium to calculate today's risk-adjusted discount rate:

$$
Y _ {i} ^ {\text {t o d a y}} = r f ^ {\text {t o d a y}} + R P _ {i} = r f ^ {\text {t o d a y}} + \beta_ {i} \cdot R P _ {m k t}
$$

If write as "one-step" then it really is:

$$
Y _ {i} ^ {t o d a y} = r f ^ {t o d a y} + \beta_ {i} \cdot \left(E R _ {m k t} - E r _ {f}\right) ^ {l o n g - t e r m}
$$

# 4.3 Some Facts About Beta

# Contents

Capital Market Line vs Security Market Line

Names sound the same, but address very different issues

Return vs Vol  $(\sigma)$

- Useful for total market or total wealth  
- Care about return vs vol (SD) for wealth  
- CML - separation of market (frontier) from preferences  
- Not useful for individual securities

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/72ebc5484fc9a877d687246328a677dce0c14ea8fe15066273b3e5ee3c84738e.jpg)  
Return vs beta  $(\beta_{i})$

- Yes useful for individual securities  
- Care about return vs beta  
- SML - securities line up along straight line

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b7af17cc901e67ff2e717dc9a3091f8c86af96b1cfab8e4d243c805156d2aadc.jpg)

# Summary:  $\beta$  Measures Price of Risk (RiskPrem)

1. Sharpe: choose highest Sharpe for total overall (wealth) portfolio

- Result of using leverage  
- Separates preferences from market - Capital Market Line (CML)  
- pushes everyone to same ("market") portfolio - CML & separation

2. Efficient Portfolio (mean-variance optimizing)

- Diversification - volatilities don't add  
- Individual assets contribute based on  $\beta_{i}$  not  $\sigma_{i}$  
- All assets have  $ER_{i} - \gamma = \beta_{i}(ER_{port} - \gamma)$

3. Risk-free asset  $(\sigma = 0)\rightarrow$  CAPM

- Sets  $\gamma = r_f \Rightarrow ER_i - r_f = \beta_i (ER_{mkt} - r_f)$  
- Capital Asset Pricing Model (CAPM) & Securities Market Line (SML)

Result: CAPM

$$
\text {P r i c e o f r i s k (R i s k P r e m i u m) s e t b y} \beta : E R _ {i} - r _ {f} = \beta_ {i} \left(E R _ {\text {p o r t}} - r _ {f}\right)
$$

# Some Facts About Beta  $(\beta)$

- Decomposes market vol:  $\beta_{i}\sigma_{mkt}$  is mkt vol due to  $i$ :  $\sigma_{mkt} = [w_1\beta_1 + w_2\beta_2]\cdot \sigma_{mkt}$  
- Beta is regression coefficient of asset  $i$  against market:  $r_i = a_i + \beta_i r_{mkt} + \varepsilon_i$

$$
\beta_ {1} = \frac {\operatorname {C o v} \left(r _ {1} , r _ {p o r t}\right)}{\sigma_ {p o r t} ^ {2}} = \frac {\operatorname {C o v} \left(r _ {1} , w _ {1} \cdot r _ {1} + w _ {2} \cdot r _ {2}\right)}{\sigma_ {p o r t} ^ {2}} = \frac {\left(w _ {1} \sigma_ {1} ^ {2} + \rho w _ {2} \sigma_ {1} \sigma_ {2}\right)}{\sigma_ {p o r t} ^ {2}}
$$

- Decomposes asset return into "Systematic"  $(\beta_{i} \cdot \sigma_{port})$  and "Idiosyncratic"  $(\sigma_{\varepsilon})$  
- Beta averages to 1 for market (average market risk 1.0)
- Betas range around 1: Citi=1.45, Apple=1.06, FIS=0.79

# More Facts About Beta - Correlation with Portfolio

$$
\beta_ {1} = \frac {c o v (\text {a s s e t 1 , m k t})}{\sigma_ {\text {m k t}} ^ {2}} = \rho_ {1 m} \frac {\sigma_ {1}}{\sigma_ {m}}
$$

Beta depends on correlation of asset with overall portfolio

- High  $\rho \& \beta \Rightarrow$  contributes to overall risk  $\Rightarrow$  should get paid for taking risk
- Standard textbooks talk about high  $\beta \Rightarrow$  high systematic risk  
- You get paid for taking on systematic risk but not idiosyncratic risk
- Low  $\rho \& \beta \Rightarrow$  contributes little to overall risk  $\Rightarrow$  should get paid little for taking this risk
- If  $\rho < 0$  it actually reduces risk, you should pay (not get paid) - negative RiskPrem

$$
\beta_ {1} = \frac {\operatorname {c o v} (\text {a s s e t 1} , m k t)}{\sigma_ {m k t} ^ {2}}
$$

$$
\rho_ {1 m} = \frac {\operatorname {c o v} (\text {a s s e t 1 , m k t})}{\sigma_ {1} \cdot \sigma_ {m k t}} \Rightarrow \beta_ {1} = \rho_ {1 m} \frac {\sigma_ {1}}{\sigma_ {m}}
$$

# Contribution & Beta in Risk Management

Contribution & Beta used in Quantitative Risk Management

Goes by various names in various books

Measure Portfolio Volatility or Value at Risk (VaR)  

- Contribution (or  $\beta$ ): individual asset contribution to overall risk

<table><tr><td>My book</td><td>Marginal contribution</td></tr><tr><td>Litterman 1996</td><td>Contribution to risk</td></tr><tr><td>Crouhy et al</td><td>Delta VaR</td></tr><tr><td>Marrison</td><td>VaR contribution</td></tr><tr><td>Risk Metrics</td><td>Incremental VaR</td></tr></table>

I found this the most useful measure in managing a hedge fund portfolio

# Beta  $(\beta)$  as Regression

Beta as regression coefficient of asset  $i$  against market:  $r_i = a_i + \beta_i r_{mkt} + \varepsilon_i$

- How much firm  $i$  moves when market moves on average, not whether they move together often (that is correlation,  $\rho$ )

Citi moves  $1.45\%$  when S&P500 moves  $1\%$  on average  

- Decomposes firm vol: systematic  $(\beta \sigma_{mkt})$  versus idiosyncratic  $(\sigma_{\varepsilon})$ :  $\sigma_i^2 = \beta^2 \sigma_m^2 + \sigma_\varepsilon^2$  
- CAPM: Compensated only for systematic, not idiosyncratic

# 4.4 Digression on S&P 500 Index ("Market" Portfolio)

# Contents

# Digression on Market-Weighted Index

For everything (CAPM, Security Market Line, Capital Market Line) "market" portfolio is critical

- Hold only "market" plus risk-free  
- Need to measure returns (returns & vol) for "Market"  
- Would like to include everything: stocks, bonds, real estate.  
- As a start, try to include all stocks

S&P 500 - value-weighted index of 500 large stocks

- 500 large-cap (big) public companies from NYSE, NASDAQ  
- Total value (Aug 2015) $18.5tn  
Calculate return by:

$$
r _ {S \& P} = \sum_ {i} w _ {i} r _ {i} \quad w _ {i} = \frac {\text {c o m p a n y v a l u e}}{\text {t o t a l v a l u e}}
$$

- Return you would earn on the whole $18.5tn of the stocks

# In-Class Exercise: Market-Weighted Index

Portfolio of 3 assets

Citi,Apple,FIS  

- Total number of shares and stock price  
- Market capitalization, value of all the equity: MktCap = NumberShares  $\cdot$  Price  
- Weight = Firm Cap / Total Cap - fill in MktValue and Weights

<table><tr><td></td><td>No. Shares</td><td>Price</td><td>MktValue</td><td>Weight</td></tr><tr><td>Citi</td><td>970.11mn</td><td>$124.72</td><td>$119,062mn</td><td>17.7%</td></tr><tr><td>Apple</td><td>5,540mn</td><td>$96.35</td><td>$533,779mn</td><td>79.4%</td></tr><tr><td>FIS</td><td>326.39mn</td><td>$46.65</td><td>$19,470mn</td><td>2.9%</td></tr><tr><td>Total</td><td></td><td></td><td>$672,311mn</td><td>100%</td></tr></table>

- You buy all of each: you hold  $17.7\%$  Citi,  $79.2\%$  Apple, FIS  $2.9\%$  
- You buy  $1\%$  of each, hold same fraction of each, and earn the same:  $\sum_{i}w_{i}r_{i}$  
- Always:  $r_{S\& P} = \sum_{i} w_{i} r_{i}$ $w_{i} = \frac{company value}{total value}$  Market-weighted index

# Market-Weighted Index as "Market"

S&P Index (weighted average of returns) measure what you would earn owning all of the 500 companies

$$
r _ {S \& P} = \sum_ {i} w _ {i} r _ {i} \quad w _ {i} = \frac {\text {c o m p a n y v a l u e}}{\text {t o t a l v a l u e o f S \& P}}
$$

In other words, measures return on the "market"

- Same return as owning  $1\%$  or  $0.01\%$  of each of the 500 companies

Market indexes, all market-weighted:

<table><tr><td>S&amp;P 500</td><td>500 large US companies listed on exchanges</td></tr><tr><td>Russel 2000</td><td>Smaller US companies</td></tr><tr><td>Wilshire 5000</td><td>US actively-traded stocks (March 2022, 3,660 companies)</td></tr><tr><td>FTSE 100</td><td>100 companies traded in UK</td></tr><tr><td>MSCI World</td><td>Large and mid-size companies across 23 developed countries</td></tr></table>

Note: Dow-Jones Industrial (most widely-quoted), is not market-weighted - Equally-weighted

# 4.5 Using Beta & CAPM

# Contents

# Where are we?

1. Investors care about variability & return  
2. Overall portfolio: volatility  $(\sigma)$  sets price of overall risk

- $ER_{m}(r_{m})$  vs  $\sigma_{m}$  set by preferences & efficient frontier

3. Individual assets: beta  $(\beta)$  (and  $r_m$ ) set price of individual asset risk

- ${ER}_{i}\left( {r}_{i}\right)$  vs  ${r}_{m}$  set by  ${\beta }_{i}$  &CAPM:

$$
r _ {i} = r _ {f} + \beta_ {i} \left(r _ {m} - r _ {f}\right)
$$

- For individual asset, volatility  $(\sigma_{i})$  doesn't matter - only contribution or systematic component  $\beta_{i}$

CAPM gives us the Equity Cost of Capital

- For FIS bond, easy to get  $ER_{i}$  ( $r_{i}$  or RADR): yield to maturity  
- For FIS stock (equity), we now have CAPM:
- Long-run Average:  $r_i - r_f = \beta_i(r_m - r_f)$  or  $RP_{i} = \beta_{i}\cdot RP_{mkt}$  
- For today:  $r_i = rf + RP_i$

# Beta  $(\beta)$  for Citi, Apple, FIS

Beta measures systematic component (moves with S&P500)

Investors only compensated for systematic, not idiosyncratic

- Idiosyncratic is the part that disappears in the portfolio  
- Not paid to take on what can be diversified away

Beta does not say how much of firm volatility is systematic vs idiosyncratic

- Doesn't say how volatile firm is or how much of overall vol is left over

<table><tr><td>Firm</td><td>Beta(β)</td><td>FirmVol(σi)</td><td>Idiosync(σε)</td><td>Comment</td></tr><tr><td>Citi</td><td>1.45</td><td>27%</td><td>19%</td><td>High β, high σi</td></tr><tr><td>Apple</td><td>1.06</td><td>26%</td><td>22%</td><td>Moderate β, high σi</td></tr><tr><td>FIS</td><td>0.79</td><td>17%</td><td>15%</td><td>Low β, moderate σi</td></tr></table>

- Citi and Apple both high total vol, Citi moderate idiosyncratic vol
- Much of the Apple vol is idiosyncratic, can be diversified away -  $\beta$  moderate

Only systematic (beta) vol matters for pricing risk

# CAPM - Comparing Across Stocks:  $r_i - r_f = \beta_i (r_{mkt} - r_f)$  Some stocks have high vol & low beta (Newmont)

- Low ExpRet & Risk Prem  
High vol but not correlated with market  
- Helps to diversify, so you don't get paid a lot for holding that stock

Beta matters - gives us the ExpRet & RiskPrem

<table><tr><td>Stock</td><td>Beta</td><td>StdDev</td><td>ExpRet</td></tr><tr><td>Dow Chemical</td><td>1.78</td><td>40.2</td><td>14.50</td></tr><tr><td>Bank of America</td><td>1.54</td><td>39.9</td><td>12.80</td></tr><tr><td>Ford</td><td>1.53</td><td>40.4</td><td>12.70</td></tr><tr><td>ExxonMobile</td><td>0.98</td><td>21.9</td><td>8.86</td></tr><tr><td>Starbucks</td><td>0.95</td><td>26.2</td><td>8.68</td></tr><tr><td>IBM</td><td>0.80</td><td>19.8</td><td>7.62</td></tr><tr><td>Newmont Mining</td><td>0.75</td><td>29.2</td><td>7.26</td></tr><tr><td>Pfizer</td><td>0.66</td><td>20.8</td><td>6.63</td></tr><tr><td>Walmart</td><td>0.42</td><td>13.8</td><td>4.92</td></tr><tr><td>Heinz</td><td>0.40</td><td>14.6</td><td>4.78</td></tr></table>

BMA Table 8.2: as of January 2012,  $r_f = 2\%$ ,  $\mathrm{RP} = r_m - r_f = 7\%$

If you have current price and an estimate of future price & earnings, you can calculate expected earnings

- If your ExpEarn  $>$  CAPM the stock is cheap and you should buy

# WACC: Weighted Average Cost of Capital

Firm choosing whether to build a new plant / launch new product

Estimates future CFs  

- Discounts back to calculate PV  
- Compare PV (of future CFs) vs cost today: Net PV

Need discount rate: Calculate how much investors demand

$$
W A C C = \frac {D}{D + E} r _ {D} + \frac {E}{D + E} r _ {E}
$$

Need to get  $r_D\& r_E$

- $r_D$  pretty easy: calculate yield from company bond  
- $r_E$  from CAPM:  $r_i = r_f + \beta_i (r_{mkt} - r_f)$

The table is from Brealey, Myers, Allen Table 8.2 (as of January 2012) for Beta and Expected return, but also ?? table for standard deviation

# 4.6 Calculating Beta

# Contents

# Calculating Beta

Easiest way - look them up (e.g. Yahoo Finance - "Key Statistics") or Bloomberg (DES, HRA)

QUOTES

summary

Options

Historical Prices

CHARTS

Interactive

NEWS&INFO

Headlines

Company Events

Message Boards

Market Pulse

COMPANY

Profile

Key Statistics

SEC Filings

Competitors' Industry

Components

ANALYST COVERAGE

Analyst Opinion

Analyst Estimates

OWNERSHIP

Major Holders

Insider Transactions

Insider Roster

Apple Inc. (AAPL) - NasdaqGS ★ Watchlist

96.29 + 0.06 (0.07%) 1:05PM EST - Nasdaq Real Time Price

# Key Statistics

Data provided by Capital IQ, except where noted.

<table><tr><td colspan="2">Valuation Measures</td></tr><tr><td>Market Cap (intraday)5:</td><td>533.86B</td></tr><tr><td>Enterprise Value (Feb 4, 2016)3:</td><td>558.83B</td></tr><tr><td>Trailing P/E (ttm, intraday):</td><td>10.25</td></tr><tr><td>Forward P/E (fye Sep 26, 2017)1:</td><td>9.60</td></tr><tr><td>PEG Ratio (5 yr expected)1:</td><td>0.92</td></tr><tr><td>Price/Sales (ttm):</td><td>2.27</td></tr><tr><td>Price/Book (mrq):</td><td>4.16</td></tr><tr><td>Enterprise Value/Revenue (ttm)3:</td><td>2.38</td></tr><tr><td>Enterprise Value/EBITDA (ttm)6:</td><td>6.75</td></tr><tr><td colspan="2">Financial Highlights</td></tr><tr><td colspan="2">Fiscal Year</td></tr><tr><td>Fiscal Year Ends:</td><td>Sep 26</td></tr><tr><td>Most Recent Quarter (mrq):</td><td>Dec 26, 2015</td></tr><tr><td colspan="2">Profitability</td></tr></table>

Like 15k

Get Key Statistics for:

$\left( {x - {2x}}\right) t - x{y}^{2} = \left( {x - {2x}}\right) {f}^{\prime }t$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/703933f88e647b761db6bea7e95e425102830987aea1673fbb022614a854666c.jpg)

Trading Information

Stock Price History

Beta:

52-Week Change3:

# Calculating Beta

Easiest way - look them up (e.g. Yahoo Finance - "Key Statistics") or Bloomberg (DES, HRA)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/1527cc2c4cca89cd35c829ced127fce87263319f117b7c5d9afc228feb63bde6.jpg)

# Calculating Beta by Regression

More generally, regression

$$
r _ {i} = a _ {i} + \beta_ {i} r _ {m k t} + \varepsilon_ {i}
$$

Simple regression, Citi vs. S&P500, (returns) monthly 2012-2015

<table><tr><td>Citi</td><td>Coef</td><td>Const</td></tr><tr><td>Coef</td><td>1.82</td><td>-0.01</td></tr><tr><td>SE</td><td>0.262</td><td>0.008</td></tr><tr><td>Rsq, SE Y</td><td>51.1%</td><td>5.57%</td></tr><tr><td>F, df</td><td>48.10</td><td>46</td></tr></table>

Considerable uncertainty in beta:

- Back to statistics: limited no of obs:  $\beta = 1.82$ , SE=0.26
- Roughly  $95\%$  prob  $\pm 2\mathrm{SE}$  ..  $1.82\pm 0.52$
- Changing world: relation between Citi and world may change.
- Note that above, from Yahoo,  $\beta = 1.45$

Pull towards 1.0 - Beta for average company  $= 1.0$

- May want to use some "weighted average" of 1.0 & estimated  $\hat{\beta}$

# 4.7 CAPM - Violations & Extensions

# Contents

# Assumptions for CAPM

1. Individual behavior

- Investors are rational, mean-variance optimizers.  
- Their common planning horizon is a single period.  
- Investors all use identical input lists, an assumption often termed homogeneous expectations. Homogeneous expectations are consistent with the assumption that all relevant information is publicly available.

2. Market structure

- All assets are publicly held and trade on public exchanges.  
- Investors can borrow or lend at a common risk-free rate, and they can take short positions on traded securities.  
- No taxes.  
- No transaction costs.

Clearly these do not all hold

CAPM will not hold - but excellent start

This is from Bodie, Kane, Marcus Table 9.1

# Alternative Theories

We have assumed that only the "market" portfolio matters - most importantly that we have everything in the "market"

Generally not true

Alternative - Three Factor Model

- Identify macroeconomic factors that could affect stock returns  
- Estimate expected risk premium on each factor ( $r_{factor1} - r_{\mathrm{f}}$ , etc.)  
Measure sensitivity of each stock to factors (b1, b2, etc.)

$$
\text {R e t u r n} = a + \beta_ {1} r _ {\text {f a c t o r 1}} + \beta_ {2} r _ {\text {f a c t o r 2}} + \beta_ {3} r _ {\text {f a c t o r 3}} + \varepsilon
$$

$$
\text {E x p e c t e d} R i s k \text {P r e m} = r - r _ {f} + \beta_ {1} \left(r _ {f} - r _ {\text {f a c t o r 1}}\right) + \beta_ {2} \left(r _ {f} - r _ {\text {f a c t o r 2}}\right) + \beta_ {3} \left(r _ {f} - r _ {\text {f a c t o r 3}}\right)
$$

We will, however, stick with single-factor CAPM

# Price of Risk I - Portfolios, Sharpe, Beta, Contribution


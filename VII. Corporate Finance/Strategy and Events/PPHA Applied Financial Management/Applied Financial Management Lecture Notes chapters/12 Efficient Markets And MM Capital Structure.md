---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Outline
linter-yaml-title-alias: Outline
---

Lecture 12

Thomas S. Coleman

26 April 2023; Draft May 3, 2023

# Outline

# Contents

1 Efficient Markets and Random Walks 1  
2 Random Walks and Simple Econometrics 3

2.1 Simple Econometrics Example 6

3 Returns and Normality 7  
4 Idea of Price Efficiency in Finance 11  
5 Five Lessons of Market Efficiency 14  
6 Evidence Against Market Efficiency 17  
7 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17) 17

7.1 Perfect Capital Markets 18  
7.2 Carving up Cash Flows 19

# 1 Efficient Markets and Random Walks

# Contents

# How to Think About Financial Prices: Changes or Levels

Known: Price today  $P_0$  Unknown: Price tomorrow  $P_1$

Unknown Change  $\varepsilon = P_{1} - P_{0}$

We know  $P_0$ , but both  $P_1$  and  $\varepsilon$  are unknown (RVs or Random Variables)

- Say we want to forecast  $P_{1}$  (buy if  $P_{1}$  higher)  
- Should we try to forecast  $P_{1}$  (price tomorrow)? or  $\varepsilon$  (changes)?

Natural temptation: Forecast  $P_{1}$  directly

- Actually wrong  
- Far better to think about change from today to tomorrow,  $\Delta$

Level:  $P_{1}$

Change  $\varepsilon = P_{1} - P_{0}$

# Changes & "Efficient Market"

Working with changes  $\varepsilon = P_{1} - P_{0}$  forces us to think about New Information

- Why is tomorrow's price different (from today)?  
- Fundamental idea: because of new information

Old news shows up in old price  $(P_0)$

- Why wait, why not use existing news (today) in existing price (today)

Saying something important about markets

1. You can make money using more and better information than others  
2. There are many people trying to make money (by using information)  
3. So information gets used quickly

There is no (or very little) "left over" information that is not used today

- Only "new information" changes tomorrows price

"Efficient Markets" or Random Walk: People Trying to Make Money

- People try to make money  
- So use information quickly  
- So only new information changes price  
- All of today's information in today's price

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/c37f924e998447f5552375102f1a3288e3c64d340491d0d5105a5320bfea6892.jpg)

This is (or was) a pretty revolutionary idea

- A big surprise, discovered by various people, at various times  
- Maurice Kendall in 1953, Louis Bachelier in 1900, French broker Jules Regnault in 1863

Makes sense - at least for liquid markets with lots of people and lots of money

- Not so true for obscure markets - say eBay for egg coddlers

"Efficient Markets" or Random Walk: Simple yet Powerful Efficient Market:

- Current price embeds all information  
- Tomorrow's price depends on new information

Random Walk:

- Price changes  $\varepsilon = P_{1} - P_{0}$  are purely random

Two ways of saying the same thing Simple yet Powerful:

- Simple idea: people try to make money  
- Powerful idea: cannot forecast tomorrow's price using today's information

# 2 Random Walks and Simple Econometrics

# Contents

Simple Random Walk: Easy But Often Fools Us

Known: Price today  $P_0$  Unknown: Price tomorrow  $P_1$

Unknown Change  $\varepsilon = P_{1} - P_{0}$

Random walk is simplest statistical model for changes  $\varepsilon$

- Flip a coin:
- heads: go up,  $\varepsilon = +1$ ;  $P_{1} = P_{0} + 1$ ;  
-tails: go down,  $\varepsilon = -1$  .  $P_{1} = P_{0} - 1$

Simplest statistical model for Price change (today to tomorrow)

- Change completely random  
- Cannot forecast change

# Amazing: Random Walk Looks Like "Bull & Bear" Markets

Random Walk: flip a coin: heads go  $+1$ , tails go  $-1$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f19155870292c4ea3c134d44b3fed3716bc5797f797e4c12a0c9305f3adec158.jpg)  
B. Trial 1-6,000 Compressed

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f9a22c560d4bb180938bb785e945db35897ef51a68483220335c18f15e74e4bc.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/cb70b9b363a7cb52aac7fcf27f61918856ebe34820f3c52c4d92f3708d8a89a1.jpg)  
C. Trial 6,000-10,000 Compressed  
Feller Volume I figure 4

- Anyone would swear there are trends - Bull markets, Bear markets  
- But completely random

# Easy to be Fooled by Random Walks - Spurious Correlation

Random Walks fool us in many ways

Bad enough being fooled into "seeing" market trends

- Can be even worse when try to uncover relations among random walks

Say we want to test whether bonds and equities move together

- First idea: Regress equities vs bonds:

$$
P _ {t} ^ {b o n d} = \alpha + \beta \cdot P _ {t} ^ {e q u i t y} + \varepsilon_ {t}
$$

- If you're not careful with statistics, you get completely misled

# Spurious Regression / Correlation - Simulation

So let's run a simulation: generate simulated  $P_{t}^{equity}$  &  $P_{t}^{bond}$  (200 obs, 200 "months"):

$$
P _ {t} ^ {e q u i t y} = P _ {t - 1} ^ {e q u i t y} + \varepsilon_ {t} \quad \varepsilon \sim N (0, 4) \quad P _ {t} ^ {b o n d} = P _ {t - 1} ^ {b o n d} + \nu_ {t} \quad \nu \sim N (0, 1)
$$

then run regression  $P_{t}^{bond} = \alpha + \beta \cdot P_{t}^{equity} + u_{t}$ , and repeat many times (1000 separate regressions)

- RStudio Notebook SimRandomWalk1.Rmd & .nb.html on Canvas (files)

Textbooks tell us that  $5\%$  of our sample (50 regressions) t-ratio  $\frac{\hat{\beta} - 0}{SE}$  should be large (outside of  $\pm 1.972$ )

This regression shows wildly different results:The simulation has  $85\%$  outside the bands

- The theory is wildly wrong for these random walks - it simply does not apply  
- Technical issue:  $\varepsilon_{t}$  not independent - violates regression assumptions

Random walks are not well-behaved - never ever run levels regressions for random walks

- Originally discussed by Granger and Newbold, 1974. Spurious regressions in econometrics. Journal of Econometrics. see also https://davegiles.blogspot.com/2015/10/illustrating-spurious-regressions.html

# Spurious Correlations - Levels, Trends, and Random Walks

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/d1a04b968a0871bd74fc3572bc4f87720e4b8ea424608c879ac325b62610ebb1.jpg)  
Divorce rate in Maine correlates with  
Per capita consumption of margarine  
correlation 0.9926

Note the trend - both are going down

- Probably for completely unrelated reasons  
- But the downward trends dominate

# And Random Walks are Everywhere

One of the primary instances: Financial Prices

- $P_{t + 1} = P_t + \varepsilon_{t + 1}$ : tomorrow's price is today plus new information  
- If you have information today you're going to use it now - if you wait you will lose money  
- All today's information  $(\nu_{t})$  is put into today's price  
- Tomorrow's price depends only on new information

Many (most) economic times series (GDP, prices, employment, on-and-on) behave very much like random walks

- Tomorrow's value is today's plus a random component

# What To Do? Regress First Difference or % Change

So what do we do, given our simulations? (the level regression  $Y_{t} = \alpha + \beta X_{t} + e_{t}$  is wildly wrong)

Never, ever, run economic time-series in levels - always % change or difference:

$$
Y _ {t} - Y _ {t - 1} = \alpha + \beta (X _ {t} - X _ {t - 1}) + e _ {t}
$$

- Not quite true - you want to examine whether your economic time-series is (close to) a random walk  
- Unemployment rate, for example, does not look like a random walk. But employment (number of people) does  
- John Cochrane (a really good economist, now at Hoover at Stanford) has a good blog post: https://johnhcochrane.blogspot.com/2015/04/unit-roots-reflux.html

# 2.1 Simple Econometrics Example

# Contents

# 1-Slide Introduction to Time-Series Econometrics

Huge area of statistics, econometrics, economics

- Many, many economic time-series are random walks, or close

Some facts and terminology - Autoregressions

- Many economic time-series well-described by  $X_{t} = \rho \cdot X_{t - 1} + \varepsilon_{t}$
- $\varepsilon_{t}$  random (say Normal),  $\rho$  close to 1
- When  $\rho = 1$  Random Walk -  $\varepsilon_{t}$  is completely new information
- Unit Root - changes  $(\varepsilon_{t})$  random and independent
- Correlation between  $X_{t} - X_{t - 1}$  &  $X_{t + 1} - X_{t}$  is zero
- When  $\rho \approx 1$  then new information dies, transitory
- But close to 1 is almost RW, still have problems

Most Important:

- Never blindly run regressions in levels
- Always think about differences

# Investigating Random Walks & "Spurious Correlation"

Simulate two random walks

$$
P _ {t} ^ {e q i u t y} = P _ {t - 1} ^ {e q i u t y} + \varepsilon_ {t} \quad \varepsilon \sim N (0, 4)
$$

$$
P _ {t} ^ {b o n d} = P _ {t - 1} ^ {b o n d} + \nu_ {t} \quad \nu \sim N (0, 1)
$$

Completely independent, nothing to do with each other

But run regression  $P_{t}^{equuty} = \alpha +\beta P_{t}^{bond} + e_{t}$

lm(formula = yobs \~xobs)

Residuals:

Min 1Q Median 3Q Max -11.4653 -0.8041 0.7586 2.2140 6.8064

Coefficients:

Estimate Std. Error t value Pr(>|t|) (Intercept) -30.86215 3.96374 -7.786 3.78e-13 ***

xobs -0.09758 0.02553 -3.822 0.000177 ***

- - -

Signif. codes: 0 *** 0.001 ** 0.01 * 0.05 . 0.05 . 0.1 ' 1

Residual standard error: 3.914 on 198 degrees of freedom

Multiple R-squared: 0.0687, Adjusted R-squared: 0.064

F-statistic: 14.61 on 1 and 198 DF, p-value: 0.0001773

# Random Walk Regression

Coefficients:

Estimate Std. Error t value Pr(>ItI)

(Intercept) -30.86215 3.96374 -7.786 3.78e-13 ***

-0.09758 0.02553 -3.822 0.000177 ***

Signif. codes: 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 '' 1

Residual standard error: 3.914 on 198 degrees of freedom

Multiple R-squared: 0.0687, Adjusted R-squared: 0.064

F-statistic: 14.61 on 1 and 198 DF, p-value: 0.0001773

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/e788d8d647bbb846d824f3abfa9b0917fabe5b1bad5b9326de7c55b38e4ac1ec.jpg)

We want to test whether they are related - whether  $Y$  (equities) move down when  $X$  (bonds) move up

- Test the coefficient, in this case -0.09758 (negative)  
- Textbooks tell us that for a well-behaved regression, the distribution is Student- $t$  (and the regression program calculates the standard error)  
- We ask "IF the true  $\beta$  were 0, how far away is our  $\hat{\beta} = -0.09758$ ?"  
- Like the mean,  $\frac{\hat{\beta} - 0}{SE} = \frac{-.09758}{.02553} = -3.822 \sim t_{n-2} \approx N(0,1)$  (here  $n-2 = 198$ )  
- Far out in left tail - minute probability we would see -.09758 if  $\beta = 0$  
- But we know  $\beta = 0$  - Maybe we were just unlucky - this can happen

# 3 Returns and Normality

# Contents

# Percent Changes

For financial markets and asset prices, always use percent change

- Been talking about "changes"  $\varepsilon = P_{1} - P_{0}$

But for financial markets, need either

- changes in logs:  $\varepsilon = \ln (P_1) - \ln (P_0) = \ln (^{P1} / P0)$  
$\%$  change:  $\varepsilon = P1 / P0 - 1$

These are more-or-less the same (for modest changes)

- Logs:  $\ln (102 / 100) = .0198$  
$\bullet \%$ :  $102 / 100 - 1 = .02$

# Apple Stock Price (AAPL) - Difference in Logs  $(\%)$

Example of Series with non-stationary mean (growing or falling, but no stable mean)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ef9c40c4c75d98efd882dbe91c287e1de3b1515a9af94f03c8bd8f5cfc08868d.jpg)  
From Yahoo Finance

# Normal Distribution

Always work with changes:  $\varepsilon = \%$  change

- Cannot say what price change will be, but can think about range of values  
- What is distribution of  $\varepsilon$ ? Generally, looks like:  
Horizontal: CF or return in future  
Vertical: probability or likelihood -Technically: picture is densit

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f9c21b9fb4f2710c63cb1ab232e37385d3f1dc5d6f54a9251017574ebf0de1eb.jpg)  
Often work with Normal Distribution

- Classic bell-shaped, like in picture. Depends on only  $\mu$  &  $\sigma$  
- Works somewhat OK in finance - but many problems (fat tails!!)

But we care about the whole distribution (not just  $\mu \& \sigma$ )

# Normal Works OK, Not Perfect

IBM,  $40+$  years of daily returns

- $\mu = 0.024\%$ ,  $\sigma = 1.417\%$  (log changes)  
- Histogram, overlaid with normal  
- Not too bad - Good as a start

But certainly not perfect

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b5d4c00b9f3b6466d2a27973c5225a18cdf387c63c671cb1566faa3b32f4e4b3.jpg)

- Scatter diagrams  
Actual and Predicted (Normal)

Certainly not perfect

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/9f9c2d89cd600fb3331697c5f1111a6b92e375fed1555a9c83b58fe90f9e915a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/161cab9b31aa07b1f196bf306d52241fdd94f9a6e74245bc5ffb5cf6303aa39a.jpg)

IBM data and program under:

- /tom/cma/RiskMgmtMonog/joint/progs/IBMtemp.r  
- For 1970-01-12 to 2013-10-01: Mean  $= .0244$ , StdDev  $= 1.417$  (log changes)

# Normality Problems: Fat Tails

Normal is an OK start, in middle part of distribution

- But really bad in tails

Consider daily changes in Dow Jones, 50 years 1954-2004

- Extreme events more common than predicted by normal  
- Hear people say "we had a 5-σ day". They mean "a move larger than expected, given the normal distribution"

Play following game:

- Build normal distribution, based on mean & variance  $(\sigma)$  for all 50 years  
- Look only at very left tail  
- Examine just those ten largest far out in the tail

Normal does very badly

- Many more large moves  $(4\sigma, 5\sigma)$  than predicted  
- Need other distributions:  $t$ -distribution, mixture of normals

Table 8.5 Ten Largest Down Moves of the Dow, 1954-2004  

<table><tr><td>Date</td><td>Close</td><td>Log-Return</td><td>No. Sigma (Z-Score)</td></tr><tr><td>19 Oct 1987</td><td>1,738.74</td><td>-25.63%</td><td>-16.22</td></tr><tr><td>26 Oct 1987</td><td>1,793.93</td><td>-8.38</td><td>-5.30</td></tr><tr><td>27 Oct 1997</td><td>7,161.15</td><td>-7.45</td><td>-4.72</td></tr><tr><td>17 Sep 2001</td><td>8,920.70</td><td>-7.40</td><td>-4.68</td></tr><tr><td>13 Oct 1989</td><td>2,569.26</td><td>-7.16</td><td>-4.53</td></tr><tr><td>8 Jan 1988</td><td>1,911.31</td><td>-7.10</td><td>-4.49</td></tr><tr><td>26 Sep 1955</td><td>455.56</td><td>-6.77</td><td>-4.28</td></tr><tr><td>31 Aug 1998</td><td>7,539.07</td><td>-6.58</td><td>-4.16</td></tr><tr><td>28 May 1962</td><td>576.93</td><td>-5.88</td><td>-3.72</td></tr><tr><td>14 Apr 2000</td><td>10,305.77</td><td>-5.82</td><td>-3.68</td></tr></table>

Source: Based on Beirlant, Schoutens, and Segers (2005, Table 1).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ce96cb9cb642d0d8c39f794805daff40cd40fbcb91d9388090b3dec0b73efdb2.jpg)  
Normal Empirical

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/8c48400d26ac8264d8410d0e9787b22d435f5d14bcf8b4d476345226bb3ffd0c.jpg)  
Normal Empirical Mixture of Normals  $1.25\%$  2.5 t-Distribution, Degrees of Freedom  $= 9.0$

# 4 Idea of Price Efficiency in Finance

# Contents

# Maurice Kendall and 1953

Kendall looking for patterns in stock prices - didn't find them

- Idea older - Louis Bachelier (1900)

Very simple idea:

- If everyone could forecast price would be higher tomorrow, why wait?  
- Price would rise now - no reason to wait  
- All current information already embedded in price

Only new information will change price:  $P_{t + 1} = P_t + \varepsilon_{t + 1}$

- If everyone knew it today, they would use it today  
Important - does not say current information is right  
- Only that all current information already used

Louis Bachelier Ph.D. dissertation (1900) "The Theory of Speculation" Paul Cootner in his 1964 book *The Random Character of Stock Market Prices*. The term was popularized by the 1973 book, *A Random Walk Down Wall Street*, by Burton Malkiel, a Professor of Economics at Princeton University. Eugene Fama's 1965 article "Random Walks In Stock Market Prices". The theory that stock prices move randomly was earlier proposed by Maurice Kendall in his 1953 paper, *The Analysis of Economic Time Series*, Part 1: Prices.

# Efficient Market Hypothesis: Prices are Random Walk

Efficient Market Hypothesis does not say it is impossible to make money

- Just very hard

Why? If we could easily forecast prices, everyone would do it.

- If you knew tomorrow's price, you could buy or sell today: profit  
- There are millions of others out there trying to do the same  
- And large firms will pay a lot for a small improvement

Textbook: Manager with $5bn portfolio (not even very big!)

- Extra 0.1% earnings means $5mn  
- Will pay up to that for that extra information - hiring smart people, building computer systems

Larger firms can spread their research spending over larger portfolios

- Increasing Returns to Scale for the industry?

# Believe in Markets

In general, if you see a market price you should believe it

- If you think the market is wrong, think again. Then think again  
- There are hundreds or thousands or millions of people looking at that price, and if they don't think it's wrong then you had better have a good reason

Think carefully about your comparative advantage – are you really smarter than everyone else?

- Could be, but you are saying you are smarter than all the others

Efficient Markets come down to "The Wisdom of Crowds"

- The market may not always be right, but be careful betting against it

Old joke – professor & student see $100, professor says "can't be with efficient markets" Aside on "shorting" – valuable – part of making markets efficient

- People putting their money on the line

# Abnormal Returns - Example of Efficient Markets

Price changes for sample of firms targets of takeover attempts

- Firm  $A$  buys Firm  $B$ , always pays more than pre-takeover price  
- Good news about Firm  $B$  - Firm  $A$  believes  $B$  is valuable - and will pay extra  
- Graph shows for "B" firms before and after announcement

Evidence that markets are "efficient" - build in new information quickly

Good news into prices almost immediately  

- After announcement - no new information (on average - some firms good, some bad)  
- Why drift up before? Insider trading - news leaks out

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/3d9a607c8d28d4ef031c72d65e49b9b5bc89c800e88131cb46883940925ef307.jpg)  
BKM Fig 11.1, Cumulative Abnormal Returns

Bodie, Kane, Miller (Investments) Figure 11.1. From Arthur Keown and John Pinkerton, "Merger Announcements and Insider Trading Activity," Journal of Finance 36 (September 1981)

# Information Goes In Quickly

Stocks mentioned on CBC "Midday Call"

- Positive - jump up within seconds, stabilizes within 5 min  
- Negative - takes longer, but stabilizes within  $12\mathrm{min}$

Markets so competitive (so many investors scrambling to make money) everything happens quickly

- Why longer for negative? Difficult and expensive to short-sell stocks

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/74b6458acc5ae11986637cfd87f116283fbaff82acf4e45166e6f1d8ed75c95d.jpg)  
BKM Fig 11.2, Reaction to CBC Reports

Bodie, Kane, Miller (Investments) Figure 11.2. Stock price reaction to CBC reports. The figure shows the reaction of stock prices to on-air stock reports during the "Midday Call" segment on CBC. The chart plots the cumulative returns beginning 15 minutes before the stock report. From J.A. Busse and T.C. Green, "Market Efficiency in Real Time," Journal of Financial Economics 65 (2002) p. 422

# Weak, Semi-Strong, Strong: Private Information

Three forms of Market Efficiency:

1. Weak: Past Price Information: Current prices reflect information in past prices (impossible to make consistent profits using past prices) - prices follow random walk  
2. Semi-Strong: All Public Information: Current prices reflect all public information (news reports, etc.)  
3. Strong: All Information, Public & Private

I was a little skeptical of Strong Form, but here's an extraordinary example

- "The stock market speaks: How Dr. Alchian learned to build the bomb" Journal of Corporate Finance 2014  
- 1954, top-secret hydrogen bomb testing. No public information on what element used (was lithium)  
- Aremen A. Alchian used stock market prices to discover that it was lithium
	- Found that stock price of company producing and selling lithium went up more than other companies

In the end - idea of market efficiency / competitiveness - more important than exact form

"The stock market speaks: How Dr. Alchian learned to build the bomb" Joseph Michael Newhard, Journal of Corporate Finance Volume 27, August 2014, Pages 116-132

<table><tr><td>“Competitive Markets” better than “Efficient Markets”</td></tr><tr><td>“Efficient Markets” not “Good” or “Right”</td></tr><tr><td>“Competitive” better. Simplest form:</td></tr><tr><td>• Markets so competitive, so many people working so hard to get better price, most or all current information embedded</td></tr><tr><td>Markets may not be “right” – just no obvious way to make easy money</td></tr><tr><td>• Stated this way, pretty obvious</td></tr><tr><td>• Easy to come back later, hard today to say “market is wrong”</td></tr><tr><td>Many stories where “right” but lost money</td></tr><tr><td>• 1999 – shorting NASDAQ – we were right but lost money</td></tr><tr><td>• 1999 – shorting Amazon – friend almost wiped out</td></tr><tr><td>• 2005 – shorting mortgage-backed CDOs – right eventually but lost money</td></tr></table>

# 5 Five Lessons of Market Efficiency

# Contents

<table><tr><td>Five Lessons of Market Efficiency
1. Markets Have No Memory
2. Trust Market Prices
3. “Read the Entrails”
4. Do-It-Yourself Alternative
5. No Financial Illusionss</td></tr><tr><td>1 – Markets Have No Memory
Price changes unpredictable (Prices are Random Walk)
Think of this in two ways
 1. Future changes unpredictable
   · Current information embedded in current price
   · Only new information, that nobody predicted, affects tomorrow&#x27;s price
2. Past prices contain no information for prediction</td></tr><tr><td>One of the fundamentally most important facts about markets
   · “Random Walk” hypothesis – changes are a random walk and cannot predict
   · Strong evidence in support</td></tr><tr><td>Sometimes confused with “normality” - assumption that changes are normally distributed
   · Normality is often useful, but “unpredictability” or “independent increments” separate from “normality”</td></tr></table>

# History - Always use Returns (Changes)

When looking at history, always look at changes, never the price

- We care about uncertainty of cash flows, and it is the changes that are uncertain and random

Use returns  $\% = \frac{P_t - P_{t-1}}{P_{t-1}}$  to adjust for size of price or wealth

Example: S&P 2008, 2009, 2010 (end-of-year)

Prices versus Returns

- Changes are the new & random part

<table><tr><td>Year</td><td>Price</td><td>Return</td></tr><tr><td>2007</td><td>1468.36</td><td>-</td></tr><tr><td>2008</td><td>903.25</td><td>-38.5%</td></tr><tr><td>2009</td><td>1115.1</td><td>+23.5%</td></tr><tr><td>2010</td><td>1257.64</td><td>+12.8%</td></tr></table>

Returns normalize for size

- 1 unit change in 2007 not same as in 1997

2007:1468.36

1967: 96.47

- 1% change means same change per $1 invested

# Prices & Returns from Problem

ALWAYS look at price changes or returns - when measuring means, standard deviations

- The change in price is the new or random part

Use  $\% = \frac{P_t - P_{t-1}}{P_{t-1}}$  to adjust for size of investment

Quotes and Prices for UST and S&P Futures

<table><tr><td rowspan="2"></td><td colspan="5">QUOTES</td></tr><tr><td>31-Dec-15</td><td>8-Jan-16</td><td>15-Jan-16</td><td>22-Jan-16</td><td>29-Jan-16</td></tr><tr><td>2.250&#x27;s of 15-nov-2025</td><td>99.8438</td><td>101.0469</td><td>101.9141</td><td>101.7891</td><td>102.9219</td></tr><tr><td>S&amp;P e-mini June 16 ESM6</td><td>2028.5</td><td>1904.25</td><td>1867.5</td><td>1891</td><td>1922</td></tr><tr><td></td><td colspan="5">PRICES</td></tr><tr><td>2.250&#x27;s of 15-nov-2025</td><td>100.1281</td><td>101.3807</td><td>102.2912</td><td>102.2094</td><td>103.3855</td></tr><tr><td>S&amp;P e-mini June 16 ESM6</td><td>101,425</td><td>95,213</td><td>93,375</td><td>94,550</td><td>96,100</td></tr><tr><td></td><td colspan="5">RETURNS</td></tr><tr><td>2.250&#x27;s of 15-nov-2025</td><td></td><td>1.251%</td><td>0.898%</td><td>-0.080%</td><td>1.151%</td></tr><tr><td>S&amp;P e-mini June 16 ESM6</td><td></td><td>-6.125%</td><td>-1.930%</td><td>1.258%</td><td>1.639%</td></tr></table>

# 2 - Trust Market Prices

You may be smarter than everyone else,

- But think carefully whether you are smarter than all the other millions of investors

# 3 - "Read the Entrails"

Use information in market prices

- We have been doing this with bonds, spread  
- Using market prices to back out discount rate and risk premium

Verizon & Bank of America example - in 2010

- Verizon  $7.375\%$  of 9/12, rated A/A3, spread of 64bp  
BAC  $4.88\%$  of 1/13, rated A/A2, spread of 207bp  
- Trust the market spread

Another example: mortgage-backed AAA CDOs in 2005 - trading at 80bp spread versus corporate rates at maybe 20bp

- CDO - Collateralized Debt Obligation
- Package mortgages together, parcel out CFs to equity, mezzanine, senior tranches  
- If mortgages stop paying, equity & mezzanine lose CFs first
- Clearly people in the market knew that mortgage-backed structures were not really AAA.

# 4 - Do-It-Yourself Alternative

Investors will not pay others for what they can do themselves

- Basis of Modigliani & Miller "Capital Structure Irrelevance" - investors will not pay extra for arranging debt versus equity because investors can do it - buy bonds & equity

Companies often justify mergers because it provides "diversification"  

- Investors can get diversification more cheaply - buy equities or mutual funds

# 5 - No Financial Illusions

Investors care about company CFs, not what company says

- Investors generally pretty smart  
- See through games companies play

Example - companies manage earnings, trying to make things look good

- Investors usually see through this

# 6 Evidence Against Market Efficiency

# Contents

# Evidence Against Market Efficiency

There is evidence, and good evidence - BKM Section 11.4

- P/E: Low P/E firms have higher stock market returns  
- Small Firm: small (low-capitalization) firms have higher returns  
- Book/Market: high book (low market) have higher returns

This may simply say that our models (CAPM particularly) are not exactly right. Or that it is difficult and expensive to acquire and use information

- There are opportunities to make money in the markets  
- But it is never easy

What is undoubtedly true, is that

- Markets are very competitive and pretty efficient  
- Generally you should trust market prices, and if you disagree you'd better have a pretty good reason  
- There may be ways to make money in the markets, but it is not easy  
- There is no easy cook-book recipe for making money by trading

# 7 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

# Contents

Important Idea - Debt vs Equity in Firm Capital Structure Does Not Matter

Companies have part debt, part equity

FIS Assets:  $63.3bn; Debt:$ 35.9bn (57%); Equity $27.4bn (43%)

Modigliani-Miller says total firm value does not depend on what percent debt, what percent equity

Read "lecture 12b" for more detail

# 7.1 Perfect Capital Markets

# What Are "Perfect Capital Markets"?

What do we mean by "Perfect" Capital Markets? (and "Efficient" Markets)?

- NOT "good" in a normative sense - specialized or technical meaning of "theoretical ideal" or starting point  
- Nor "realistic" as in how markets actually behave

Three assumptions:

1. Complete Markets: Investors and firms trade securities at market prices, equal to PV of future CFs  
2. No costs: no taxes, transactions costs, or issuance costs for trading securities  
3. Financing does not change CFs: a firm's financing decisions do not change CFs generated by projects, and financing does not reveals new information about future CFs

# Value of "Perfect Markets"

These assumptions clearly not realistic. Why is the whole idea useful?

- We get strong results: M&M Prop 1: capital structure - debt vs equity - does not matter  
- We then can examine why capital structure matters - because of taxes? transaction costs?

General result for economic (and finance) theory: useful for pushing us to think about how and why the world works as it does

- We should see "Capital Structure doesn't matter" (M&M Prop 1)  
- If it does matter, why?  
- Some answers: interest taxes distort markets; bankruptcy is costly; information asymmetry

# 7.2 Carving up Cash Flows

# Contents

# Modigliani & Miller Proposition 1

M&M Prop 1: Value is Unchanged by Capital Structure

- Total Value of the Firm = PV of CFs  
- This does not depend on choice of capital structure

We will see how this works by

- Looking at how firm carves up CFs with debt & equity
- Changes risk of debt & equity CFs  
- Does not change risk of overall CFs
- See that investors can recombine CFs in any way they want  
- Investors can produce any risk profile they want, at no cost  
- Investors won't pay the firm extra to carve up CFs.

Result: Capital Structure won't change value (M&M Prop 1)

# Capital Structure Carves CFs

CFs carved between debt and equity holders  
Start from bottom (Firm CFs), go first to Debt, then Equity

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f51c9776690fff83c57d854f6d44c51ef68ecedc536445053482063aa3ed85b0.jpg)

How CFs distributed make huge difference in CF risk

- Debt less risky than equity  
- CFs go first to debt - if there is any money debt gets it  
Equity is residual - only what is left over

The residual is always more risky - some chance you get nothing

# "Unwinding" Leverage

We will play a simple game: the firm takes CFs apart, we (investors) put them back together. Start from bottom (Firm CFs), split into Debt & E

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/c9b3383ee107385589e18af21885407d1d2c4eb10bf8acd21b1069d4d0d1a7c3.jpg)  
With no transaction costs we can easily do this

# Conclusion: M&M Proposition 1 - Leverage Irrelevant

Debt versus Equity is irrelevant

- "Do-it-yourself leverage"  
- Investors can do or undo whatever the firm does

# Dependent on

1. Complete Markets: Investors and firms trade securities at market prices, equal to PV of future CFs  
2. No costs: no taxes, transactions costs, or issuance costs for trading securities  
3. Financing does not change CFs: a firm's financing decisions do not change CFs generated by projects, and financing does not reveals new information about future CFs

# References

# Securities Trading and How Equities are Issued


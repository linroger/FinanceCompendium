---
parent_directory:
title: THE CARRY TRADE
tags:
aliases:
parent_folder: Financial Engineering
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: THE CARRY TRADE
---

# THE CARRY TRADE

# 1. THE PRINCIPLES OF CARRY TRADES

A large subset of trading, and especially quantitative trading, can attribute significant portions of its profitability to holding positions that make money when nothing interesting happens, and (usually) lose money otherwise. In industry vernacular, this is called the carry trade, because the portfolio is "carrying" risk. For insurers, the business is quite explicit; premiums are collected, and damages are paid.

In the finance industry, risks arise from declines in the value of our positions, and profits arise from increases in them. Sometimes it is not so clear whether profits are associated with skill, or with risk. When trading financial securities, we may have a persistent risk bias without even knowing it. Associated profits then comprise a carry trade without our even realizing it.

# 2. STATISTICAL INDICIA OF CARRY TRADES

Given a sufficiently long time series of returns  $r_i$ , identifying a carry trade is fairly simple. We expect to see

- More frequent positive values,  $\# \{r_i\geq 0\} \gg \# \{r_i < 0\}$  
- Negative return skew, with a fatter left tail than right tail in the return histogram  
- Positive correlation to broad market indicators  
- Negative correlation to "fear" indicators such as VIX  
- (Likely) High excess kurtosis of returns

The hope of the investor, of course, is that future returns will be steady enough, and losses small enough that the strategy will be profitable overall without great damage to performance ratios from the occasional losses. Investors who realize they are taking on a carry trade are liable to be particularly worried about the correlations, which are highly unattractive since the carry trade will lose the most money precisely when everything else is going to hell.

2.1. Problems With Statistical Analysis. The small sample sizes typically found in backtests and historical return series give rise to high uncertainty in skew and kurtosis estimates. For example, with sample size  $N$ , the sample skew of a standard gaussian is distributed roughly as

$$
\mathrm {s k e w} _ {\Phi} \sim N \left(0, \frac {6}{\sqrt {N}}\right)
$$

and the situation is far worse for data, such as returns, that only vaguely look gaussian.

Estimates of beta are far better behaved, so the practical way to identify unstated carry risks is to examine downside beta to broad market indicators, especially ones with assets in similar markets to the strategy in question.

# 3. CARRY TRADE EXAMPLES

3.1. Rates Carry. A classic example of the carry trade takes place using levered investments in fixed income securities. The principle is to borrow at short tenors and low interest rates, incurring small interest payments, and lend at long tenors and high interest rates, pocketing large interest payments and principal risk accrual. The difference in cashflows provides the typical positive returns.  
In mature markets, it is common to have brokerage accounts or other funding sources linked to LIBOR (or SOFR after 2019). Thus, borrowing and levering up are possible at LIBOR plus some few basis points of spread. Longer term securities, such as Treasury notes and bonds, are extremely liquid and easy to trade, typically with interest rates a few points above LIBOR.  
For a simple view of rates carry, consider lending by buying a 5 year zero-coupon bond at  $5\%$  rates, and borrowing at  $1\%$  rates by selling a  $1/4$  year bond. The notional amounts are  $1/e^{r\tau}$ . In this case, the weekly increase in 5 year bond value is 12 basis points, and the weekly increase in the value of the borrowings (short bond) is 2 basis points.  
3.2. FX Carry. A related example of the carry trade takes place using levered investments in foreign fixed income securities. The principle is similar to that of rates carry, but find even higher-paying lending rates by choosing securities in foreign fixed-income markets. Higher returns come at the cost of exposure to both FX rate changes and interest curve flattening.  
3.3. Crypto Wrapping. Many cryptotokens have a governance structure in which token holders are given the ability to cryptographically stake or wrap their existing holdings in smart contracts conveying limited withdrawal rights. In exchange, they receive periodic payments in the form of more tokens<sup>1</sup>. Historically, the risks of cryptotoken positions are quite high. The additional friction of withdrawal delays multiplies the risks, so it is unsurprising to find the corresponding yields at concomitant high levels.  
3.4. Short Options. A less well-understood form of the carry trade comes from shorting options, especially with strikes considerably lower than forward prices. Since markets usually rise, these options (in put equivalents) usually expire worthless, allowing the seller to book the premiums as profit. If course, the natural leverage of out-of-the-money options means that market downturns are incredibly painful.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/103d4ffd-f8b0-4b80-8230-f7b70ab5bb37/ead99434f8d83d2646406c2423bd52be1ca7d6dd1fb651c76e34da947a4fc937.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/103d4ffd-f8b0-4b80-8230-f7b70ab5bb37/90fe680ca35d829f99bae466cefb3d4b840f4ea65c079391591b5dd98936902a.jpg)  
FIGURE 1. Staked Ethereum yields from Convex as measured by DefLlama.
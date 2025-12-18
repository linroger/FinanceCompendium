---
aliases:
  - TIPS Valuation Framework
  - TIPS Guide
  - Lehman TIPS Guide
tags:
key_concepts:
parent_directory: Sovereign & Money Markets
cssclasses: academia
title: TIPS guide Lehman
linter-yaml-title-alias: TIPS guide Lehman
---

# A TIPS Valuation Framework

18 August 2006

# Kodjo Apedjinou

212-526-6566

kapedjin@lehman.com

# Priya Misra

212-526-6566

prmisra@lehman.com

# Anshul Pradhan

212-526-6566

apradhan@lehman.com

# EXECUTIVE SUMMARY

- Treasury Inflation Protected Securities (TIPS) offer investors near-complete protection against inflation risk because both their coupon and principal payments are adjusted for realized inflation.  
- Investors in nominal Treasury bonds demand compensation not only for expected inflation but also for the uncertainty surrounding inflation expectations. We refer to this compensation as the inflation risk premium.  
- We construct a TIPS spline to get constant maturity data series for par, spot, and forward TIPS rates and breakeven spreads.  
- We estimate the convexity, the risk premium, and the liquidity premium priced into both TIPS and nominal Treasury bonds.  
- Inflation expectations implied by the market can be deduced by comparing the yields of nominal Treasury bonds with the yields of similar-maturity TIPS. However, the difference in yields between nominal bonds and TIPS, known as the breakeven spread, needs to be adjusted for: the inflation risk premium; the difference in convexity value between nominal and TIPS; and the liquidity premium of nominal Treasuries.  
We illustrate new tools on LehmanLive for TIPS valuation.

# TABLE OF CONTENTS

The U.S. TIPS Market 3

Market Basics 3

TIPS Structure. 4

Analysis of Breakevens 5

TIPS versus Nominal Treasury 5

Extracting Inflation Expectations from Breakevens 6

Convexity of TIPS and Nominal Rates 7

Risk Premium. 8

Ratio of Real Risk Premium to Nominal Risk Premium 8

Nominal Risk Premium. 9

Liquidity Premium 9

Inflation Expectations 10

Conclusion 11

Tools and Resources Available on LehmanLive 12

U.S. Treasury Relative value Report 12

TIPS Forward Calculator 13

Constant Maturity Fitted Rates and Breakevens 14

TIPS Forward Report. 15

Breakeven Forward Report 16

Appendix: Two-factor Vasicek Model and Convexity 18

References 19

We thank Bruce Tuckman, Amitabh Arora, Bob Durie, Gary Adams, Muju Tsay, Wayne Du, and Saurabh Sharma for their valuable comments and insights.

# THE U.S. TIPS MARKET

# Market Basics

TIPS returns are adjusted for changes in NSA CPI-U

The U.S. Treasury started issuing inflation indexed securities in January 1997. Unlike regular nominal Treasury bonds, these Treasury Inflation Protected Securities (TIPS) offer investors near-complete protection against inflation risk. Indeed, both the semi-annual coupons and the principal payments of TIPS are adjusted for changes in the nonseasonally adjusted Consumer Price Index for All Urban Consumers (NSA CPI- $\mathbf{U}^1$ ), a measure of consumer price appreciation. In addition, if the inflation index at maturity is lower than the reference inflation index at issuance (i.e., in a deflationary environment), the investor is still entitled to the original par amount of the TIPS.

TIPS account for more than  $12\%$  of total amount outstanding of marketable Treasury coupon debt

The Treasury has issued a total of 22 TIPS since 1997 in various benchmark maturities: 5-year (three issues), 10-year (14 issues), 20-year (two issues), and until 2001, 30-year (three issues). With one TIPS maturing in July 2002, as of July 31, 2006, there are 21 TIPS available with a total amount outstanding of more than  \$370 billion, which represent more than \(8\%$  of the total amount of marketable Treasury debt and  $12\%$  of the total amount outstanding of marketable Treasury coupon debt. TIPS are auctioned in regular cycles of January, April, July, and October in the 5-, 10-, and 20-year maturities. Figure 1 shows the characteristics of all the TIPS issued by the Treasury. The time to maturity of the current TIPS ranges from less than six months (TIPS  $3.375\%$  of 1/07s) to about 26 years (TIPS  $3.375\%$  of 4/32s). For each TIPS, the inflation adjustment for coupon and principal payments is based on its reference CPI index value shown in Figure 1. Given the Treasury commitment to the TIPS program, as well as increased interest from investors, the liquidity of the TIPS market has increased significantly over time. For example, the average daily trading volume<sup>2</sup> for TIPS has increased from about \)2 billion in 2002 to more than to \$9 billion in 2005. Figure 1 also shows that the issuance size for TIPS has averaged about \$17 billion per issue.

TIPS generally appeal to investors who need to hedge their investments against inflation or who have liabilities that grow with inflation. Therefore, insurance companies, pension funds, and endowments are very active in the TIPS market. Along with nominal securities, TIPS also indicate market inflation expectations; hence, leveraged and nominal benchmarked investors also invest in TIPS versus nominal Treasury bonds to take a view on future inflation.

# BOX 1: TIPS Structure

The United States has been a relatively late entrant in the international indexed government bond market. For example, the United Kingdom has been issuing indexed bonds since 1981 and Canada since 1991. For the TIPS cash flow structure, the U.S. Treasury adopted the Canadian design. In the Canadian model (also called the capital or principal indexed structure), the coupon paid out is the fixed rate coupon multiplied by the compounded inflation from the date of issue. The principal paid out is the par amount or the par amount times the compounded inflation from the date of the issue, whichever is greater. Unlike the coupon, the payment of the principal is protected against deflation.

TIPS cash flows are indexed to the non-seasonally adjusted CPI-U, which is typically reported in the second or third week of the following month. For example, the December 2005 CPI-U index level is reported on January 18, 2006. To compute the inflation-adjusted coupon and principal payments, the CPI-U index is used with a two-month lag: The index value on the first of a given month is the CPI-U of the third preceding month. For example, the CPI-U index value for March 1, 2006, is the CPI-U of the month of December 2005 released on January 18, 2006. The index value for any given day in a month is the linear interpolation of the index value at the beginning of the month and the index value at the beginning of the following month. The index value for February 21, 2006, equals the linear interpolation of the index value of 197.6 on February 1, 2006, and of the index value of 196.8 on March 1, 2006. 197.6 is the CPI-U for the month of November 2005 released on December 15, 2005, and 196.8 is CPI-U for the month of December released on January 18, 2006.

$$
C P I (F e b 2 1, 2 0 0 6) = C P I (F e b 1, 2 0 0 6) + \frac {2 0}{2 8} \left\{C P I (M a r 1, 2 0 0 6) - C P I (F e b 1, 2 0 0 6) \right\}
$$

where 20 is the number of days between February 21, 2006 and February 1, 2006 and 28 is the number of days between March 1, 2006 and February 1, 2006.  $CPI(Feb1,2006) = 197.0286$ .

At a coupon date, a bond with fixed coupon rate  $c$  and face value of 100 pays:

$$
1 0 0 \times \frac {C P I (\text {c o u p o n d a t e})}{C P I (\text {d a t e d d a t e})} \times \frac {c}{2} \times \frac {\text {N u m b e r o f d a y s a c c r u e d}}{\text {A c t u a l n u m b e r o f d a y s i n c o u p o n p e r i o d}}
$$

And at maturity, the balloon principal payment is equal to:

$$
\operatorname {M a x} \left\{1 0 0, 1 0 0 \times \frac {\operatorname {C P I} (\text {m a t u r i t y d a t e})}{\operatorname {C P I} (\text {d a t e d d a t e})} \right\} = 1 0 0 \times \frac {\operatorname {C P I} (\text {m a t u r i t y d a t e})}{\operatorname {C P I} (\text {d a t e d d a t e})} + \operatorname {M a x} \left\{0, 1 0 0 - 1 0 0 \times \frac {\operatorname {C P I} (\text {m a t u r i t y d a t e})}{\operatorname {C P I} (\text {d a t e d d a t e})} \right\}
$$

The right-hand side of the above equation highlights more conspicuously the deflation put option embedded in TIPS.

The above description of the treatment of the cash flows of the TIPS will be clearer with an example. Let's consider the TIPS  $3.375\%$  of 1/07s. Suppose the quoted clean real price on February 17, 2006, for settlement on February 21 is  $P = 101 - 17$ . The accrued interest is equal:  $AI(\text{Jan} 15, 2006, \text{Feb} 21, 2006) = \frac{37}{181} \times \frac{3.375\%}{2} \times 100$

Where 37 is the number of days between February 21, 2006, and the last coupon date of January 15, 2006, and 181 is the number of days between the next coupon date of July 15, 2006, and January 15, 2006. The full transaction price is:

$$
\left(P + A I \left(J a n 1 5, 2 0 0 6, F e b 2 1, 2 0 0 6\right)\right) \times \frac {C P I \left(F e b 2 1 , 2 0 0 6\right)}{C P I \left(J a n 1 5 , 1 9 9 7\right)} = 1 2 6. 6 9 2 1
$$

Where January 15, 1997, is the dated date or the reference date. For each bond, the index ratio  $\frac{CPI(\text{settlement date})}{CPI(\text{dated date})}$

is published daily on the TIPS relative value report on LehmanLive. At each CPI-U release, the Treasury publishes these index ratios at http://www(publicdebt.treas.gov/of/ofhispci.htm.

Figure 1. The TIPS Universe of Securities  

<table><tr><td>Securities</td><td>CUSIP</td><td>Series</td><td>Original Issue Date</td><td>Reference CPI Date</td><td>Reference CPI Value</td><td>Size ($bn)</td></tr><tr><td>TIPS 3.625% 15-Jul-02</td><td>9128273A8</td><td>5-Year</td><td>7/15/1997</td><td>7/15/1997</td><td>160.1548</td><td>16.8</td></tr><tr><td>TIPS 3.375% 15-Jan-07</td><td>9128272M3</td><td>10-Year</td><td>2/6/1997</td><td>1/15/1997</td><td>158.4355</td><td>15.8</td></tr><tr><td>TIPS 3.625% 15-Jan-08</td><td>9128273T7</td><td>10-Year</td><td>1/15/1998</td><td>1/15/1998</td><td>161.5548</td><td>16.8</td></tr><tr><td>TIPS 3.875% 15-Jan-09</td><td>9128274Y5</td><td>10-Year</td><td>1/15/1999</td><td>1/15/1999</td><td>164.0000</td><td>15.9</td></tr><tr><td>TIPS 4.250% 15-Jan-10</td><td>9128275W8</td><td>10-Year</td><td>1/18/2000</td><td>1/15/2000</td><td>168.2452</td><td>11.3</td></tr><tr><td>TIPS 0.875% 15-Apr-10</td><td>912828CZ1</td><td>5-Year</td><td>10/29/2004</td><td>10/29/2004</td><td>189.4903</td><td>28.0</td></tr><tr><td>TIPS 3.500% 15-Jan-11</td><td>9128276R8</td><td>10-Year</td><td>1/16/2001</td><td>1/15/2001</td><td>174.0452</td><td>11.0</td></tr><tr><td>TIPS 2.375% 15-Apr-11</td><td>912828FB1</td><td>5-Year</td><td>4/28/2006</td><td>4/15/2006</td><td>198.4867</td><td>11.0</td></tr><tr><td>TIPS 3.375% 15-Jan-12</td><td>9128277J5</td><td>10-Year</td><td>1/15/2002</td><td>1/15/2002</td><td>177.5645</td><td>6.0</td></tr><tr><td>TIPS 3.000% 15-Jul-12</td><td>912828AF7</td><td>10-Year</td><td>7/15/2002</td><td>7/15/2002</td><td>179.8000</td><td>23.0</td></tr><tr><td>TIPS 1.875% 15-Jul-13</td><td>912828BD1</td><td>10-Year</td><td>7/15/2003</td><td>7/15/2003</td><td>183.6645</td><td>20.0</td></tr><tr><td>TIPS 2.000% 15-Jan-14</td><td>912828BW9</td><td>10-Year</td><td>1/15/2004</td><td>1/15/2004</td><td>184.7742</td><td>21.0</td></tr><tr><td>TIPS 2.000% 15-Jul-14</td><td>912828CP3</td><td>10-Year</td><td>7/15/2004</td><td>7/15/2004</td><td>188.4968</td><td>19.0</td></tr><tr><td>TIPS 1.625% 15-Jan-15</td><td>912828DH0</td><td>10-Year</td><td>1/18/2005</td><td>1/15/2005</td><td>190.9452</td><td>19.0</td></tr><tr><td>TIPS 1.875% 15-Jul-15</td><td>912828EA4</td><td>10-Year</td><td>7/15/2005</td><td>7/15/2005</td><td>194.5097</td><td>17.0</td></tr><tr><td>TIPS 2.000% 15-Jan-16</td><td>912828ET3</td><td>10-Year</td><td>1/17/2006</td><td>1/15/2006</td><td>198.4774</td><td>17.0</td></tr><tr><td>TIPS 2.500% 15-Jul-16</td><td>912828FL9</td><td>10-Year</td><td>7/17/2006</td><td>7/15/2006</td><td>201.9516</td><td>10.6</td></tr><tr><td>TIPS 2.375% 15-Jan-25</td><td>912810FR4</td><td>20-Year</td><td>7/30/2004</td><td>7/15/2004</td><td>188.4968</td><td>28.0</td></tr><tr><td>TIPS 2.000% 15-Jan-26</td><td>912810FS2</td><td>20-Year</td><td>1/31/2006</td><td>1/15/2006</td><td>198.4774</td><td>20.0</td></tr><tr><td>TIPS 3.625% 15-Apr-28</td><td>912810FD5</td><td>30-Year</td><td>4/15/1998</td><td>4/15/1998</td><td>161.7400</td><td>16.8</td></tr><tr><td>TIPS 3.875% 15-Apr-29</td><td>912810FH6</td><td>30-Year</td><td>4/15/1999</td><td>4/15/1999</td><td>164.3933</td><td>19.7</td></tr><tr><td>TIPS 3.375% 15-Apr-32</td><td>912810FQ6</td><td>30-Year</td><td>10/15/2001</td><td>10/15/2001</td><td>177.5000</td><td>5.0</td></tr></table>

Source: The Bureau of Public Debt at http://www(publicdebt.treas.gov/of/ofaicqry.htm.

# ANALYSIS OF BREAKEVENS

# TIPS versus Nominal Treasuries

As noted above, compared with nominal Treasury bonds, TIPS payments increase with the NSA CPI-U. An investor holding a nominal Treasury bond instead of a TIPS must be compensated for future inflation. Therefore, the yield of a nominal Treasury bond embeds in it expectations of future inflation. To judge the performance of a TIPS versus a nominal Treasury of the same maturity, market participants would judge the expected path of future inflation versus what is priced into nominals and TIPS. Ex-post, an investor would be indifferent between a nominal Treasury and a TIPS if realized inflation turns out to be the same as the expected inflation priced into nominals. If the realized inflation is greater than the expected inflation, then TIPS would outperform nominal Treasuries and vice versa.

Breakeven rate contains market expectations of future inflation

The obvious question is how one infers the expected inflation from the yields of both TIPS and nominal Treasury bonds. To measure the expected inflation embedded in the nominal yield, market participants currently use the crude measure of the breakeven rate, which is defined as the spread between the nominal Treasury yield and the TIPS yield of roughly the same maturity. Figure 2 shows the 1-year nominal and TIPS forward rates and the corresponding breakeven rates for different maturities for the pricing date of August 4, 2006. In this report, we argue that inflation expectations alone cannot account for the difference between TIPS and nominal Treasury yields.

In addition to inflation expectation, breakeven rate contains convexity difference, liquidity premium difference, and inflation risk premium

# Extracting Inflation Expectations from Breakevens

Before equating the breakeven rate to the expected inflation priced into the nominal yield, let us first decompose the yields into their different components. Our premise is that the TIPS (real) forward rate is composed of the expected future real rate, the real rate risk premium, and real convexity. Investors demand a real rate risk premium because of the possibility that the realized future real rate might be higher than expected. Convexity, because of the mathematical observation that a bond price is a convex function of bond yield, is valued by investors and thus puts downward pressure on yields, making the forward rate curve flatter and, in fact, downward sloping at some point on the term structure.<sup>3</sup> Similarly, the nominal forward rate contains the expected future real rate and future inflation, the real rate risk premium and inflation risk premium, and convexity adjustment for both the real rate and inflation. Finally, there is a difference in liquidity between TIPS and nominals. Figure 3 illustrates the components of the breakeven rate. To summarize, both the real and nominal interest rates are made of four components:

a. Convexity  
b. Premium for bearing real and/or inflation risk  
c. Liquidity premium  
d. Rate expectations

Figure 2. 1-Year Nominal, TIPS, and Breakeven Forward Rates on August 4, 2006  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/e8a9233c46d66b2b82346dee8e65f5b6748f8af04edbd03fb64a9fafb7c4cd77.jpg)  
Source: Lehman Live. Nominal and TIPS spline constant maturity data series.  
Source: Kerkhof, 2005, Inflation Derivatives Explained, Lehman Brothers

Figure 3. Components of Breakeven Rates  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/3aace79c272b5d5393d9432f75773e4151a5a15189f67226a84d848b498b0166.jpg)  
Breakeven rate is defined as the spread between the nominal and TIPS rate of the same maturity and contains inflation risk premium, convexity difference between TIPS and nominal, and liquidity premium difference in addition to the market expectation of inflation.

Figure 4. Yield Decomposition by the Four Components of Nominal and Real Rates  

<table><tr><td>Rates</td><td>Expectation</td><td>Risk Premium</td><td>Convexity</td><td>Liquidity</td></tr><tr><td>Nominal Rate:yn</td><td>EN</td><td>λN</td><td>-CN</td><td>LN</td></tr><tr><td>Real Rate: yR</td><td>ER</td><td>λR</td><td>-CR</td><td>-LR</td></tr><tr><td>Breakeven Spread: 
yN - yR</td><td>EN - ER</td><td>λN - λR</td><td>-(CN - CR)</td><td>-(LN - LR)</td></tr></table>

More formally, as illustrated in Figure 4, the nominal rate  $y^{N}$  can be decomposed as  $y^{N} = E^{N} + \lambda^{N} - C^{N} - L^{N}$  where  $E^{N}$  is the expectation of the nominal rate,  $\lambda^{N}$  is the nominal (both real rate and inflation) risk premium,  $C^{N}$  is the convexity priced into the nominal rate, and  $L^{N}$  is the liquidity premium embedded in the nominal rate. A similar decomposition holds for the real rate  $y^{R}$ . These two decompositions imply that the breakeven rate is  $\left(E^{N} - E^{R}\right) + \left(\lambda^{N} - \lambda^{R}\right) - \left(C^{N} - C^{R}\right) - \left(L^{N} - L^{R}\right)$ . Unless the convexity difference, the liquidity premium difference, and the inflation risk premium demanded by investors are zero or offset each other, the breakeven spread or the simple difference between the TIPS rate and the nominal rate is not a pure measure for market inflation expectations. To get a more precise estimation of the magnitude of the market inflation expectations, we need to estimate and then adjust for the different components of nominal and real rates.

# Convexity of TIPS and Nominal Rates

Convexity arises because of the uncertainty surrounding interest rate forecasts

The value of convexity in interest rates, due to the fact that a bond price is a convex function of bond yield, arises because of the uncertainty surrounding interest rate forecasts. The value of convexity is equal to the difference between the value of interest rates in the absence of uncertainty about rate expectations and interest rates when uncertainty is accounted for. Convexity is an increasing function of this uncertainty. To estimate the convexity components in both nominal and TIPS rates, we first need to estimate the volatilities and the parameters of the processes driving interest rates. For each of the set of constant maturity nominal rates and constant maturity TIPS rates gathered through a spline method, we calibrate the levels and the historical volatilities of rates to a two-factor Vasicek model. This exercise determines the parameters and the volatilities of the two factors driving the interest rates. Figure 5 reports the convexity values in basis points for select maturities for some forward rates. Given that the volatility of nominal rates is higher than the volatility of TIPS rates, we observe that the value of convexity in TIPS rates is less than in nominals.

Figure 5. Forward Par Rate Convexity Table (in Basis Points)  

<table><tr><td>Term5</td><td>TIPS Convexity</td><td>Nominal Convexity</td></tr><tr><td>2x1</td><td>2</td><td>4</td></tr><tr><td>5x1</td><td>9</td><td>18</td></tr><tr><td>10x1</td><td>26</td><td>57</td></tr><tr><td>5x5</td><td>16</td><td>31</td></tr><tr><td>5x3</td><td>12</td><td>24</td></tr><tr><td>2x3</td><td>4</td><td>8</td></tr></table>

The convexity values are the components of rates that are due to the fact that bond prices are convex function of bond yields and increase with the volatilities of rates. Synthetic futures rates are obtained after adjusting forward rates for convexity. Source: LehmanLive

Figure 6a. Convexity Adjusted 1-Year TIPS Forward Par Rates for August 4, 2006  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/3ad0f336290b80f57a2dfd7e84d9b82314729a6d8a8fc95e454b08a51edbeb09.jpg)  
Synthetic TIPS futures par rates are the convexity adjusted TIPS forward rates. Source: Lehman Live. Nominal and TIPS spline constant maturity data series.

Figure 6b. Convexity Adjusted 1-Year Nominal Forward Par Rates for August 4, 2006  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/2502bd06876a6c3593dde99c63ad71f576e15a351c6ae23963f7aecce2894a2e.jpg)  
Synthetic nominal futures par rates are the convexity adjusted nominal forward rates  
Source: Lehman Live. Nominal and TIPS spline constant maturity data series.

# Risk Premium

Ratio of Real Risk Premium to Nominal Risk Premium

Nominal rate risk premium is roughly three times real rate risk premium

To estimate the inflation risk premium, we first estimate the ratio of the total risk premium priced into nominal rates to the risk premium priced into TIPS rates. We assume that the expected 1-year futures rate is constant after a given number of years far enough into the future. For example, we will assume that the expected 1-year rate seven years forward is the same as the expected 1-year rate ten years forward. Therefore, after convexity-adjusting the 1-year forward rates of different maturities (i.e., seven and ten years) to get (synthetic) futures rates and assuming that the liquidity premium is constant across the term structure, the average annualized spread between 1-year futures rates with different maturities (i.e., seven and ten years) is taken as a measure of the risk premium priced into the rates. Effectively, we assume that the slope of the convexity adjusted forward rate curve (far out on the curve) is entirely due to risk premium, as

Nominal rate risk premium estimated using long-dated Eurodollar futures rates

opposed to both short rate expectations and risk premium. Using our spline method, we obtained since January 2001 a time series of 1-year TIPS and nominal forward rates with maturity from 0.5 to 30 years. We compute the time series of the annualized spreads between the different forward rates (for example, the spread between the  $10\mathrm{x}1$  and the  $7\mathrm{x}1$  rates) after adjusting them for convexity to get synthetic future rates. Across the different maturity sectors, the median of the ratio of the annualized nominal term spread to TIPS term spread was found to be approximately 3 and relatively stable across time.

# Nominal Risk Premium

Using our finding in the previous section that the nominal risk premium is roughly three times the real rate risk premium, we can deduce the value of both the TIPS rate and the inflation rate risk premium given the risk premium priced into nominal rates. Following an argument similar to the one in the previous section, the risk premium priced into the nominal rate is approximated by the annualized spread between the back Eurodollar futures rates (contracts 32 to 40). We use Eurodollar futures rates instead of our synthetic futures rates because the former are traded instruments and, hence, are more reliable. Given this measure of risk premium, we can compute the total amount of risk premium priced into any spot, par, and forward rates for both the TIPS and the nominal markets. Figure 7 reports the risk premium values in basis points for select maturities for some forward rates, and Figure 8 reports the rate expectations obtained after adjusting the forward rates for convexity and risk premium.

Figure 7. Forward Par Rate Risk Premium Table (in Basis Points)  

<table><tr><td>Term</td><td>TIPS Risk Premium</td><td>Nominal Risk Premium</td></tr><tr><td>2x1</td><td>13</td><td>38</td></tr><tr><td>5x1</td><td>28</td><td>85</td></tr><tr><td>10x1</td><td>54</td><td>162</td></tr><tr><td>5x5</td><td>38</td><td>114</td></tr><tr><td>5x3</td><td>33</td><td>100</td></tr><tr><td>2x3</td><td>18</td><td>53</td></tr></table>

The risk premium numbers are computed by taking the nominal risk premium to be roughly 15 bp/year and the risk premium priced into TIPS to be about 1/3 the risk premium priced into the nominal rate. Source: LehmanLive

# Liquidity Premium

We estimate that nominal rates have some embedded liquidity premium because nominals are used as general collateral and trade special in the repo market. This occurs because of an established short base in nominals. While TIPS also enjoy the "Treasury collateral" premium, they have rarely traded special. We ascribe 15 bp as the average "specialness" of nominals over TIPS. Thus, we need to adjust breakeven spread for this specialness or liquidity premium differential.

Figure 8a. 1-Year TIPS Rate Expectations for August 4, 2006  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/461858043cf86d4ccd2fcf7d0c1a742ab90ea439af30aec10077a9f089379d2d.jpg)  
1-year TIPS synthetic futures rates are the convexity adjusted 1-year TIPS forward rates and 1-year rate expectations are the risk premium adjusted 1-year TIPS synthetic futures rates. Source: Lehman Live. Nominal and TIPS spline constant maturity data series.

Figure 8b. 1-Year Nominal Rate Expectations for August 4, 2006  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/1e8a730ee46ebefad9ae7dfaa36e086640a95c024871cc658268b34a7616c249.jpg)  
1-year nominal synthetic futures rates are the convexity adjusted 1-year nominal forward rates and 1-year rate expectations are the risk premium adjusted 1-year nominal synthetic futures rates. Source: Lehman Live. Nominal and TIPS spline constant maturity data series.

# Inflation Expectations

Given the decomposition of the breakeven rate in the previous sections, we reiterate that an adjustment for the convexity and liquidity difference between TIPS and nominal bonds, as well as an inflation risk premium, is required to translate breakeven spreads into inflation expectations. Figure 8 illustrates the yield decomposition (without the liquidity premium) for selected maturities for both TIPS and the nominal market using the constant value of convexity and risk premium reported in Figures 5 and 7, respectively. The expectation of 1-year TIPS rate increases with maturity up to the 7-year point and then flattens. After sloping down up to the 4-year point, the expectation curve of the 1-year nominal rates slopes up until it hits the 7-year point and then flattens. Figure 9 illustrates both the term structure (9a) and time series behavior (9b) of the market inflation expectations, which are the spreads between the expectations of TIPS and nominal rates in Figure 8 net of liquidity premium difference.

Figure 9a. Term Structure of 1-Year Forward Inflation Expectations for August 4, 2006  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/3471ed5d99422a1d2654cb7612889b5899cd128ff0f6d8ba0801cd91e1222aea.jpg)  
Inflation expectation is the breakeven rate adjusted for convexity and risk premium differences between TIPS and nominal rates. Source: Lehman Live. Nominal and TIPS spline constant maturity data series.

Figure 9b. Time Series of Inflation Expectations  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/57f0f85add3b68d99abe02b81bbf563d99411b2abf6f9f02efcdc6f913164513.jpg)  
Source: Lehman Live. Nominal and TIPS spline constant maturity data series.

# CONCLUSION

Long-term inflation expectations are stable, as one would expect

Given the Fed's recent emphasis on inferring market inflation expectations from both the TIPS and the nominal markets, we propose a rigorous method of extracting market inflation expectations. We observe that, according to our new method, inflation expectations are relatively stable in the long end (Figure 9). The stability of long-term inflation expectations should not come as a surprise given the Fed's mandate to ensure long-term price stability. The past few months have seen an increase in the measure of the market's near-term inflation expectations, which is consistent with the recent pickup in realized core and headline inflation. Therefore, we believe the time series properties of market-implied inflation can be useful in addressing the market's changing views about inflation.

# TOOLS AND RESOURCES AVAILABLE ON LEHMAN LIVE

In this section, we describe the various analytic tools for TIPS on LehmanLive.

# U.S. Treasury Relative Value Report

The U.S. TIPS Relative Value Report can be accessed at Fixed Income  $\rightarrow$  Interest Rates  $\rightarrow$  US Treasuries  $\rightarrow$  Reports  $\rightarrow$  U.S. Relative Value  $\rightarrow$  TIPS. It contains a description of the individual TIPS securities (coupon, maturity, series), standard pricing variables (market yield, price, index ratio, historical yield volatility), sensitivity variables (modified duration, convexity, beta between real and nominal yields), results of model fit using both TIPS and nominal fitted curves, benchmark Treasury security against which the breakeven is quoted, and breakevens (spot and forward). The TIPS Relative Value Report is updated daily based on the closing marks of the Lehman Brothers TIPS trading desk.

Figure 10. TIPS Relative Value Report on August 4, 2006  

<table><tr><td colspan="17">LEHMAN BROTHERS U.S. Treasury Relative Value Report - TIPS</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="17">Pricing: 08/04/06Government Strategy(212) 526-6566</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="17">Settle: 08/07/06</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="2">Coupon</td><td rowspan="2">Maturity</td><td rowspan="2">Series</td><td rowspan="2">Yield</td><td rowspan="2">Price</td><td rowspan="2">Index Ratio</td><td colspan="3">Fitted Curve</td><td colspan="3">Off-The-Run Breslvees</td><td colspan="3">Quoted Breslvees</td><td colspan="2">Yield Beta</td><td>Volatility</td><td>Mod</td><td>FVBP</td><td>Cvx</td><td>Benchmark</td><td rowspan="2"></td></tr><tr><td>Spread</td><td>Ave</td><td>ZScore</td><td>Spread</td><td>Ave</td><td>ZScore</td><td>Spot</td><td>1d Chg</td><td>09/01/06</td><td>1d Chg</td><td>30 Days</td><td>90 Days</td><td>Higt</td><td>Dur</td><td>PVM</td><td>$MM</td></tr><tr><td>3.375</td><td>01/15/07</td><td>10Y</td><td>2.900 (1.8)</td><td>100-06+</td><td>1.279</td><td>25.3</td><td>38.6</td><td>-1.05</td><td>239.6</td><td>274.5</td><td>1.10</td><td>226.1</td><td>6.2</td><td>228.6</td><td>7.2</td><td>130.8</td><td>100.3</td><td>95</td><td>0.43</td><td>55</td><td>0</td><td>T 3.125 01/31/07</td></tr><tr><td>3.625</td><td>01/15/08</td><td>10Y</td><td>2.380</td><td>101-237</td><td>1.254</td><td>0.7</td><td>-1.0</td><td>0.65</td><td>260.5</td><td>280.3</td><td>1.17</td><td>261.7</td><td>-0.4</td><td>263.9</td><td>-0.7</td><td>98.0</td><td>83.1</td><td>71</td><td>1.39</td><td>178</td><td>3</td><td>T 4.375 01/31/08</td></tr><tr><td>3.875</td><td>01/15/09</td><td>10Y</td><td>2.260</td><td>103-257</td><td>1.235</td><td>-2.4</td><td>-4.0</td><td>1.45</td><td>265.4</td><td>278.5</td><td>1.24</td><td>262.8</td><td>0.2</td><td>264.0</td><td>0.1</td><td>96.5</td><td>81.7</td><td>64</td><td>2.32</td><td>298</td><td>7</td><td>T 3.250 01/15/09</td></tr><tr><td>4.250</td><td>01/15/10</td><td>10Y</td><td>2.209</td><td>106-230</td><td>1.204</td><td>-3.5</td><td>-3.1</td><td>-0.97</td><td>264.9</td><td>272.8</td><td>1.07</td><td>263.9</td><td>0.3</td><td>264.7</td><td>0.2</td><td>102.9</td><td>84.5</td><td>64</td><td>3.20</td><td>412</td><td>12</td><td>T 3.625 01/15/10</td></tr><tr><td>0.875</td><td>04/15/10</td><td>5Y</td><td>2.259</td><td>95-040</td><td>1.069</td><td>2.6</td><td>2.6</td><td>-0.09</td><td>257.5</td><td>264.9</td><td>1.05</td><td>257.6</td><td>0.4</td><td>258.2</td><td>0.4</td><td>98.7</td><td>82.6</td><td>62</td><td>3.59</td><td>366</td><td>15</td><td>T 4.000 04/15/10</td></tr><tr><td>3.500</td><td>01/15/11</td><td>10Y</td><td>2.217 (0.4)</td><td>105-12+</td><td>1.164</td><td>-2.0</td><td>-1.1</td><td>-2.16</td><td>260.6</td><td>266.2</td><td>0.86</td><td>261.5</td><td>0.1</td><td>262.2</td><td>-0.0</td><td>99.4</td><td>83.0</td><td>62</td><td>4.10</td><td>504</td><td>20</td><td>T 4.250 01/15/11</td></tr><tr><td>2.375</td><td>04/15/11</td><td>5Y</td><td>2.249</td><td>100-176</td><td>1.021</td><td>1.8</td><td>2.9</td><td>-1.63</td><td>255.3</td><td>260.3</td><td>0.84</td><td>258.8</td><td>0.3</td><td>259.3</td><td>0.3</td><td>100.9</td><td>83.7</td><td>61</td><td>4.38</td><td>453</td><td>22</td><td>T 4.875 04/30/11</td></tr><tr><td>3.375</td><td>01/15/12</td><td>10Y</td><td>2.241 (0.2)</td><td>105-246</td><td>1.141</td><td>0.0</td><td>-0.4</td><td>0.71</td><td>256.4</td><td>262.2</td><td>0.90</td><td>257.5</td><td>-0.2</td><td>258.0</td><td>-0.2</td><td>97.5</td><td>81.8</td><td>60</td><td>4.96</td><td>600</td><td>28</td><td>T 4.875 02/15/12</td></tr><tr><td>3.000</td><td>07/15/12</td><td>10Y</td><td>2.247 (0.1)</td><td>104-051</td><td>1.127</td><td>0.2</td><td>0.3</td><td>-0.26</td><td>255.8</td><td>260.7</td><td>0.83</td><td>257.3</td><td>-0.9</td><td>257.7</td><td>-1.0</td><td>92.5</td><td>79.0</td><td>59</td><td>5.42</td><td>638</td><td>34</td><td>T 4.375 08/15/12</td></tr><tr><td>1.875</td><td>07/15/13</td><td>10Y</td><td>2.276</td><td>97-141</td><td>1.103</td><td>1.5</td><td>0.7</td><td>1.87</td><td>255.4</td><td>260.4</td><td>0.86</td><td>257.5</td><td>-0.4</td><td>258.1</td><td>-0.5</td><td>92.0</td><td>76.9</td><td>57</td><td>6.45</td><td>694</td><td>46</td><td>T 4.250 08/15/13</td></tr><tr><td>2.000</td><td>01/15/14</td><td>10Y</td><td>2.291</td><td>98-005</td><td>1.096</td><td>2.0</td><td>1.6</td><td>1.44</td><td>256.2</td><td>260.5</td><td>0.79</td><td>257.4</td><td>-0.9</td><td>257.8</td><td>-0.9</td><td>92.4</td><td>77.7</td><td>56</td><td>6.85</td><td>738</td><td>53</td><td>T 4.000 02/15/14</td></tr><tr><td>2.000</td><td>07/15/14</td><td>10Y</td><td>2.289</td><td>97-291</td><td>1.075</td><td>1.1</td><td>0.5</td><td>2.17</td><td>258.3</td><td>262.5</td><td>0.74</td><td>257.8</td><td>-0.5</td><td>258.3</td><td>-0.6</td><td>92.9</td><td>77.5</td><td>56</td><td>7.28</td><td>767</td><td>59</td><td>T 4.250 08/15/14</td></tr><tr><td>1.625</td><td>01/15/15</td><td>10Y</td><td>2.290</td><td>94-295</td><td>1.061</td><td>0.0</td><td>-0.5</td><td>2.17</td><td>261.0</td><td>264.9</td><td>0.71</td><td>258.6</td><td>-0.5</td><td>259.0</td><td>-0.5</td><td>95.0</td><td>78.1</td><td>55</td><td>7.80</td><td>787</td><td>67</td><td>T 4.000 02/15/15</td></tr><tr><td>1.875</td><td>07/15/15</td><td>10Y</td><td>2.290</td><td>96-212</td><td>1.041</td><td>-0.7</td><td>-1.3</td><td>1.76</td><td>263.1</td><td>268.6</td><td>0.67</td><td>259.3</td><td>-0.2</td><td>259.6</td><td>-0.3</td><td>94.3</td><td>78.4</td><td>55</td><td>8.15</td><td>822</td><td>74</td><td>T 4.250 08/15/15</td></tr><tr><td>2.000</td><td>01/15/16</td><td>10Y</td><td>2.297</td><td>97-156</td><td>1.021</td><td>-0.9</td><td>-0.4</td><td>-1.55</td><td>264.8</td><td>267.3</td><td>0.47</td><td>259.8</td><td>-0.1</td><td>260.2</td><td>-0.2</td><td>99.2</td><td>79.9</td><td>55</td><td>8.53</td><td>849</td><td>81</td><td>T 4.500 02/15/16</td></tr><tr><td>2.500</td><td>07/15/16</td><td>10Y</td><td>2.295</td><td>101-260</td><td>1.003</td><td>-1.8</td><td>-1.5</td><td>-1.64</td><td>267.0</td><td>265.0</td><td>-1.21</td><td>260.6</td><td>0.2</td><td>261.1</td><td>0.1</td><td>100.7</td><td>100.7</td><td>32</td><td>8.76</td><td>896</td><td>87</td><td>T 5.125 05/15/16</td></tr><tr><td>2.375</td><td>01/15/25</td><td>20Y</td><td>2.323</td><td>100-246</td><td>1.075</td><td>-0.3</td><td>-0.5</td><td>0.45</td><td>280.0</td><td>281.8</td><td>0.27</td><td>276.6</td><td>0.1</td><td>276.7</td><td>0.1</td><td>93.0</td><td>75.0</td><td>52</td><td>14.86</td><td>1612</td><td>259</td><td>T 7.625 02/15/25</td></tr><tr><td>2.000</td><td>01/15/26</td><td>20Y</td><td>2.321</td><td>95-002</td><td>1.021</td><td>0.7</td><td>0.3</td><td>0.73</td><td>280.0</td><td>281.7</td><td>0.25</td><td>276.2</td><td>0.2</td><td>276.3</td><td>0.2</td><td>94.3</td><td>75.0</td><td>52</td><td>15.89</td><td>1543</td><td>293</td><td>T 6.000 02/15/26</td></tr><tr><td>3.625</td><td>04/15/28</td><td>30Y</td><td>2.275</td><td>123-001</td><td>1.252</td><td>-0.7</td><td>-0.4</td><td>-0.84</td><td>280.9</td><td>281.3</td><td>0.07</td><td>279.5</td><td>0.5</td><td>279.7</td><td>0.5</td><td>95.0</td><td>75.0</td><td>52</td><td>15.60</td><td>2426</td><td>304</td><td>T 5.500 08/15/28</td></tr><tr><td>3.875</td><td>04/15/29</td><td>30Y</td><td>2.274</td><td>128-077</td><td>1.232</td><td>0.9</td><td>0.9</td><td>-0.02</td><td>279.3</td><td>278.6</td><td>0.05</td><td>279.0</td><td>0.6</td><td>279.2</td><td>0.6</td><td>95.1</td><td>75.1</td><td>52</td><td>15.93</td><td>2541</td><td>321</td><td>T 5.250 02/15/29</td></tr><tr><td>3.375</td><td>04/15/32</td><td>30Y</td><td>2.196</td><td>123-016</td><td>1.141</td><td>-0.3</td><td>-0.4</td><td>0.20</td><td>281.3</td><td>280.0</td><td>-0.22</td><td>285.2</td><td>0.8</td><td>285.4</td><td>0.7</td><td>97.1</td><td>75.5</td><td>52</td><td>17.94</td><td>2541</td><td>408</td><td>T 5.375 02/15/31</td></tr></table>

# TIPS Forward Calculator

TIPS forward prices and carries can be obtained on LehmanLive: Fixed Income  $\rightarrow$  Interest Rates  $\rightarrow$  Inflation Products  $\rightarrow$  Bond Calculator. Keyword "Inflation" will also go to the Inflation Products page. After selecting a TIPS bond, the Bond Calculator page allows the user to input the price of the TIPS bond and the price of the corresponding benchmark Treasury, the forward date in number of days (as 25D for 25 days forward) or months (as 3M for three months forward), and the repo rate. For the TIPS  $3.375\%$  of 1/07s, priced on 08/04/2006, Figures 11 (forward date input is 0D—regular settlement date of 08/07/2006), 12 (forward date input is 25D—09/01/2006), and 13 (forward date input is 86D—11/01/2006) report the spot and forward breakeven spreads. Note that for the spot, the breakeven spread is  $2.29\%$ , for the forward date of 09/01/2006 the breakeven spread is  $2.26\%$ , and for the forward date of 11/01/2006, the breakeven spread is  $0.63\%$ .

As of the settlement date of 08/07/2006, the CPI index is known only up to 09/01/2006. Therefore, to compute the forward prices beyond 09/01/2006, for example to compute the forward price for 11/01/2006, we would need projections of the NSA CPI-U index for August and September.

# BOX 2: TIPS Forward Calculator

Here, we show how to compute the forward price  $P^{f}$  at the forward date  $t_{f}$  of a TIPS bond of price  $P$  for settlement on settlement date  $s$  (next day settlement). If the forward date  $t_{f} < t_{c}$  where  $t_{c}$  is the next coupon date, then the forward price is:

$P^{f} = \frac{\left(P + AI\left(t_{0},s\right)\right)\frac{CPI(s)}{CPI(ref)}\left(1 + r\frac{d}{360}\right) - AI\left(t_{0},t_{f}\right)\frac{CPI\left(t_{f}\right)}{CPI(ref)}}{\frac{CPI\left(t_{f}\right)}{CPI(ref)}}$  where  $t_0$  is the date of the last coupon,  $r$  is the repo rate,

ref is the reference date or dated date of the TIPS bond,  $AI(t_{1}, t_{2})$  is the accrued interest from  $t_{1}$  to  $t_{2}$ ,  $d$  is the number of days between the forward date  $t_{f}$  and the settlement date  $s$ ,  $CPI(t)$  is the index value at date  $t$ . Similarly, if the forward date  $t_{f} \geq t_{c}$  then the forward price is:

[ P^{f} = \frac{\left\{\left(P + AI\left(t_{0},s\right)\right)\frac{CPI(s)}{CPI(ref)}\left(1 + r\frac{d_{1}}{360}\right) - \left(\frac{c}{2}\right)\frac{CPI\left(t_{c}\right)}{CPI(ref)}\right\}\left(1 + r\frac{d_{2}}{360}\right) - AI\left(t_{c},t_{f}\right)\frac{CPI\left(t_{f}\right)}{CPI(ref)}}{\frac{CPI\left(t_{f}\right)}{CPI(ref)}} ] Where  $d_{1}$  is the number of days

between the next coupon date  $t_c$  and the settlement date  $s$ ,  $d_2$  is the number of days between the forward date  $t_f$  and the next coupon date  $t_c$ . Obviously, in the case the index value  $CPI(t_f)$  is not yet known, a projected or assumed value is used.

Figure 11. TIPS  $3.375\%$  of 1/07s Spot Breakeven on August 4, 2006  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/1fe236572d96b41e7f10bc454f7bae2b3c19f5ab54e32d636c2510199bb16772.jpg)  
Source: LehmanLive.

The last line in Figure 11 shows the settlement date of 08/07/2006, the spot yield, and the spot breakeven.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/c274e45021502cca56c8bd553a66f07c5b3c7e552a1ff8d1347316416e96799d.jpg)  
Figure 12. TIPS  $3.375\%$  of 1/07s Forward Breakeven for Settlement Date of September 1, 2006

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/8b61f2c99dac81cde59bddf12fac6abc0c77730a84e3b4dee3d6c1a4e84d0e5b.jpg)  
Figure 13: TIPS  $3.375\%$  of 1/07s Forward Breakeven for Settlement Date of November 1, 2006

Similarly, the last line of Figure 12 shows the forward date of 09/01/2006, the corresponding forward real yield, the forward breakeven spread, the yield carry, and the breakeven carry. The last line of Figure 13 shows an example of forward rate calculation for the forward date of 11/01/2006, which is beyond the last date the CPI index is known as of the regular settlement date of 08/07/2006. As mentioned above, to compute the forward rate, we would need to assume some NSA CPI-U index values for August and September.

# Constant Maturity-Fitted Rates and Breakevens

For time series analysis (see Figure 14), the constant maturity fitted rates are available at the link Fixed Income  $\rightarrow$  Fixed Income Toolkit  $\rightarrow$  Time Series Plotter (keyword search: plot)  $\rightarrow$  Constant Maturity Fitted Yields  $\rightarrow$  US Government  $\rightarrow$  TIPS Zero Fitted (or Par Fitted). The rates can also be obtained on the CurveLab (see Figure 15) page at the link Fixed Income  $\rightarrow$  Fixed Income Toolkit  $\rightarrow$  CurveLab  $\rightarrow$  Government  $\rightarrow$  US TIPS.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/41f3145826b6f55fb14287681aac2eceff6000aa93b285baefb0098366584c27.jpg)  
Figure 14. Time Series of Forward Breakeven Spreads

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/82e4976b-0194-476b-b3ad-78d09bfc10cd/9e7f2f2da5b8988ec09f076c718eab1bd785bd7ce046fb099c1030d04fd86108.jpg)  
Figure 15. Constant Maturity Fitted Par Rates on August 4, 2006

# TIPS Forward Report

Similar to the U.S. Treasury forward curve report, the TIPS forward curve report presents both a table and graphs of forward rates of different maturities and horizons. The TIPS are assumed to finance at General Collateral (GC). The TIPS forward curve report can be accessed at: Fixed Income  $\rightarrow$  Interest Rates  $\rightarrow$  US Treasuries  $\rightarrow$  Forward Reports

Figure 16. TIPS Forward Curve Report on August 4, 2006  

<table><tr><td colspan="16">LEHMAN BROTHERS U.S. Forward Curve Report - TIPS</td></tr><tr><td colspan="16">Pricing: 08/04/06</td></tr><tr><td colspan="2">Forward Horizon Financing Rate</td><td>1 yr</td><td>2 yrs</td><td>3 yrs</td><td>4 yrs</td><td>5 yrs</td><td>7 yrs</td><td>10 yrs</td><td>15 yrs</td><td>20 yrs</td><td>25 yrs</td><td>30 yrs</td><td colspan="3">Curve Spreads</td></tr><tr><td>SPOT</td><td>-</td><td>2.39</td><td>2.29</td><td>2.24</td><td>2.22</td><td>2.22</td><td>2.25</td><td>2.31</td><td>2.34</td><td>2.30</td><td>2.20</td><td>2.07</td><td>-6.3</td><td>8.3</td><td>2.2</td></tr><tr><td>1 year</td><td>2.39</td><td>2.18</td><td>2.16</td><td>2.16</td><td>2.16</td><td>2.20</td><td>2.26</td><td>2.31</td><td>2.34</td><td>2.28</td><td>2.16</td><td>2.03</td><td>4.8</td><td>11.1</td><td>15.9</td></tr><tr><td>2 years</td><td>2.28</td><td>2.13</td><td>2.15</td><td>2.18</td><td>2.21</td><td>2.24</td><td>2.29</td><td>2.34</td><td>2.34</td><td>2.27</td><td>2.13</td><td>1.99</td><td>8.9</td><td>10.3</td><td>19.2</td></tr><tr><td>3 years</td><td>2.23</td><td>2.17</td><td>2.20</td><td>2.24</td><td>2.27</td><td>2.30</td><td>2.34</td><td>2.38</td><td>2.35</td><td>2.25</td><td>2.10</td><td>1.96</td><td>9.4</td><td>7.7</td><td>17.1</td></tr><tr><td>5 years</td><td>2.22</td><td>2.30</td><td>2.34</td><td>2.36</td><td>2.39</td><td>2.40</td><td>2.42</td><td>2.42</td><td>2.34</td><td>2.19</td><td>2.03</td><td>1.88</td><td>6.6</td><td>1.2</td><td>7.9</td></tr><tr><td>7 years</td><td>2.25</td><td>2.42</td><td>2.44</td><td>2.45</td><td>2.46</td><td>2.46</td><td>2.47</td><td>2.41</td><td>2.28</td><td>2.10</td><td>1.93</td><td>1.79</td><td>1.9</td><td>-5.3</td><td>-3.3</td></tr><tr><td>10 years</td><td>2.31</td><td>2.48</td><td>2.47</td><td>2.46</td><td>2.41</td><td>2.43</td><td>2.38</td><td>2.30</td><td>2.11</td><td>1.90</td><td>1.74</td><td>1.64</td><td>-4.2</td><td>-13.3</td><td>-17.5</td></tr></table>

# Breakeven Forward Report

In the Treasury/TIPS Spread forward report, we have both a table and graphs of the spreads between the Treasury forward rates and the TIPS forward rates. The Treasury/TIPS spread forward curve report can be accessed at: Fixed Income  $\rightarrow$  Interest Rates  $\rightarrow$  US Treasuries  $\rightarrow$  Forward Reports.

Figure 17: Breakeven Forward Curve Report on August 4, 2006  

<table><tr><td colspan="15">LEHMAN BROTHERS U.S. Forward Curve Report - Treasury/Tips Spreads</td><td></td></tr><tr><td colspan="15">Pricing: 08/04/06</td><td></td></tr><tr><td colspan="2">Forward Horizon Financing Spreads (bps)</td><td>1 yr</td><td>2 yrs</td><td>3 yrs</td><td>4 yrs</td><td>5 yrs</td><td>7 yrs</td><td>10 yrs</td><td>15 yrs</td><td>20 yrs</td><td>25 yrs</td><td>30 yrs</td><td colspan="3">Curve Spreads</td></tr><tr><td>SPOT</td><td>-</td><td>264.5</td><td>264.6</td><td>264.0</td><td>260.8</td><td>257.9</td><td>257.8</td><td>264.8</td><td>274.0</td><td>279.0</td><td>282.5</td><td>286.3</td><td>-6.6</td><td>6.9</td><td>0.2</td></tr><tr><td>1 year</td><td>264.3</td><td>264.4</td><td>263.4</td><td>259.1</td><td>255.8</td><td>254.9</td><td>258.9</td><td>267.3</td><td>276.2</td><td>280.9</td><td>284.2</td><td>287.9</td><td>-8.5</td><td>12.3</td><td>4.0</td></tr><tr><td>2 years</td><td>264.3</td><td>262.3</td><td>256.2</td><td>252.6</td><td>252.3</td><td>254.5</td><td>261.5</td><td>270.6</td><td>278.8</td><td>283.1</td><td>286.3</td><td>289.9</td><td>-1.7</td><td>16.1</td><td>14.4</td></tr><tr><td>3 years</td><td>263.6</td><td>250.0</td><td>247.6</td><td>248.7</td><td>252.6</td><td>257.2</td><td>265.7</td><td>274.5</td><td>281.9</td><td>285.7</td><td>288.7</td><td>292.1</td><td>9.6</td><td>17.4</td><td>27.0</td></tr><tr><td>5 years</td><td>257.2</td><td>251.5</td><td>258.4</td><td>264.8</td><td>270.2</td><td>274.8</td><td>281.5</td><td>287.1</td><td>291.4</td><td>293.4</td><td>295.7</td><td>298.3</td><td>16.4</td><td>12.3</td><td>28.7</td></tr><tr><td>7 years</td><td>257.6</td><td>278.8</td><td>283.6</td><td>287.5</td><td>290.6</td><td>292.9</td><td>295.8</td><td>297.9</td><td>299.0</td><td>300.9</td><td>302.6</td><td>301.7</td><td>9.3</td><td>5.0</td><td>14.3</td></tr><tr><td>10 years</td><td>266.7</td><td>300.9</td><td>302.2</td><td>302.9</td><td>303.2</td><td>303.4</td><td>303.4</td><td>302.7</td><td>300.9</td><td>300.3</td><td>301.1</td><td>301.7</td><td>1.2</td><td>-0.7</td><td>0.5</td></tr></table>

# APPENDIX: TWO-FACTOR VASICEK MODEL

# Two-Factor Vasicek Model

We estimate the risk premium and convexity values priced into both nominal bonds and TIPS through a two-factor Vasicek model. Under the real world dynamics, we assume that two processes drive the short rate  $r$ . The details of the model are as follow:

$$
\begin{array}{l} d X _ {t} = \kappa_ {X} \left(X _ {\infty} - X _ {t}\right) d t + \sigma_ {X} d W _ {X} \\ d Y _ {t} = \kappa_ {Y} \left(Y _ {\infty} - Y _ {t}\right) d t + \sigma_ {Y} d W _ {Y} \\ r = X + Y \quad E [ d X d Y ] = \rho \sigma_ {X} \sigma_ {Y} d t \tag {Eq.1} \\ \end{array}
$$

$X$  with usually a lower mean reversion parameter  $\kappa_{X}$ , is interpreted as a long-lived factor and  $Y$  with a higher mean reversion parameter  $\kappa_{Y}$ , is interpreted as a short-lived factor. Under the risk neutral measure, the above dynamics can be rewritten as:

$$
d X _ {t} = \kappa_ {X} \left(\theta_ {X} - X _ {t}\right) d t + \sigma_ {X} d W _ {X}
$$

$$
d Y _ {t} = \kappa_ {Y} \left(\theta_ {Y} - Y _ {t}\right) d t + \sigma_ {Y} d W _ {Y}
$$

$$
r = X + Y \quad E [ d X d Y ] = \rho \sigma_ {X} \sigma_ {Y} d t \tag {Eq.2}
$$

Where  $\theta_{X} = X_{\infty} + \frac{\lambda_{X}}{\kappa_{X}}$ ,  $\theta_{Y} = Y_{\infty} + \frac{\lambda_{Y}}{\kappa_{Y}}$  and  $\lambda_{X}$  and  $\lambda_{Y}$  are the risk premium associated with the state variables  $X$  and  $Y$  respectively. Standard calculations yield the price of a zero coupon bond at time  $t$  with maturity date  $T$ :

$$
P (t, T) = \exp (- A (t, T) - B _ {X} (t, T) X (t) - B _ {Y} (t, T) Y (t)) \tag {Eq.3}
$$

Where:

$$
\begin{array}{l} \mathrm {A} (\mathrm {t}, \mathrm {T}) = \left(\frac {\sigma_ {X} ^ {2}}{2 \kappa_ {X} ^ {2}} - \theta_ {X}\right) \left\{B _ {X} (\mathrm {t}, \mathrm {T}) - (\mathrm {T} - \mathrm {t}) \right\} + \frac {\sigma_ {X} ^ {2}}{4 \kappa_ {X}} \left(B _ {X} (\mathrm {t}, \mathrm {T})\right) ^ {2} + \\ \left(\frac {\sigma_ {Y} ^ {2}}{2 \kappa_ {Y} ^ {2}} - \theta_ {Y}\right) \left\{B _ {Y} (t, T) - (T - t) \right\} + \frac {\sigma_ {Y} ^ {2}}{4 \kappa_ {Y}} \left(B _ {Y} (t, T)\right) ^ {2} + \\ \frac {\rho \sigma_ {X} \sigma_ {Y}}{\kappa_ {X} \kappa_ {Y}} \left\{B _ {X} (t, T) + B _ {Y} (t, T) - (T - t) - B _ {X + Y} (t, T) \right\} \\ \end{array}
$$

$$
B _ {i} (t, T) = \frac {1 - \exp \left(- \kappa_ {i} (T - t)\right)}{\kappa_ {i}}, \quad i = X, Y
$$

$$
B _ {X + Y} (t, T) = \frac {1 - \exp \left(- \left(\kappa_ {X} + \kappa_ {Y}\right) (T - t)\right)}{\left(\kappa_ {X} + \kappa_ {Y}\right)}
$$

With the zero coupon bond price formula, we can derive the dynamics of a par rate  $y_{t}^{\tau}$  of maturity  $\tau$ :

$$
y _ {t} ^ {\tau} = 2 \left(\frac {1 - P (t , t + \tau)}{\sum_ {i = 1} ^ {2 \tau} P (t , t + . 5 i)}\right) \equiv f (X (t), Y (t)) \tag {Eq.4}
$$

From Ito's Lemma, we have:

$$
\begin{array}{l} d y _ {t} ^ {\tau} = \left\{\frac {1}{2} \sigma_ {X} ^ {2} \frac {\partial^ {2} f}{\partial X ^ {2}} + \frac {1}{2} \sigma_ {Y} ^ {2} \frac {\partial^ {2} f}{\partial Y ^ {2}} + \frac {1}{2} \rho \sigma_ {X} \sigma_ {Y} \frac {\partial^ {2} f}{\partial X \partial Y} + \kappa_ {X} \left(\theta_ {X} - X _ {t}\right) \frac {\partial f}{\partial X} + \right. \\ \left. \kappa_ {Y} \left(\theta_ {Y} - Y _ {t}\right) \frac {\partial f}{\partial Y} \right\} d t + \sigma_ {X} \frac {\partial f}{\partial X} d W _ {X} + \sigma_ {Y} \frac {\partial f}{\partial Y} d W _ {Y} \tag {Eq.5} \\ \end{array}
$$

$$
\text {T h u s :} E \left[ d y _ {t} ^ {\tau} d y _ {t} ^ {\tau} \right] = \left\{\left(\sigma_ {X} \frac {\partial f}{\partial X}\right) ^ {2} + \left(\sigma_ {Y} \frac {\partial f}{\partial Y}\right) ^ {2} + 2 \rho \sigma_ {X} \sigma_ {Y} \frac {\partial f}{\partial X} \frac {\partial f}{\partial Y} \right\} d t \tag {Eq.6}
$$

# Convexity Component of Interest Rates

The value of convexity in interest rates, due to the mathematical fact that a bond price is a convex function of bond yield, arises because of the uncertainty surrounding the forecast of interest rates.

For any interest rate with known convexity  $C$  (the change in duration as a function of interest rate changes) and known basis point volatility  $\sigma$ , the value of convexity is approximately equal to  $-\frac{1}{2} C\sigma^2$ . First, the percentage Price change  $\frac{\Delta P}{P}$  when yield changes by  $\Delta y$  can be approximated by  $-D\Delta y + \frac{1}{2} C(\Delta y)^2$  where  $D$  is the duration, which measures the percentage change in the price for a unit change in yield. The price change approximation above implies that when  $C$  is positive as it is in the case of TIPS and regular nominals, price decreases less than predicted by duration alone when rate increases, and price increases more than predicted by duration when rate decreases. This is an attractive feature for a bond investor and is paid for in the form of lower yield. Convexity or the duration change as a function of interest rate is a decreasing function of coupon rate; this implies that convexity for TIPS is higher than convexity for nominal bonds. We also note that since  $C$  increases with the square of maturity, the value of convexity is much higher in longer maturity rates.

Second, to account for interest rate volatility, we observe that in the presence of volatility around interest rate forecasts, the expected payoff of a money market account continuously reinvested at the prevalent interest rate is higher than the payoff if it is invested at the expected interest rate. Therefore, the interest rate for any given maturity must be less than the expected interest rate. This effect is stronger for nominals because the 60-day volatility of nominal is on average higher than the volatility of TIPS.

To estimate the value of convexity component of interest rate, we preliminary need to estimate the volatilities and the parameters of the processes driving interest rates. The convexity is then equal to the difference between the rate estimated with the volatility parameters set equal to zero and the rate estimated with the volatility parameters set to their calibrated values. Given the higher volatility, the value of convexity in nominals is higher than the value of convexity in TIPS.

# REFERENCES

Arora, Amitabh and Bruce Tuckman (2005), "Do TIPS Belong in a Portfolio with a Nominal Benchmark?" Lehman Brothers Liquid Markets Forum.  
Kerkhof, Jeroen (2005), Inflation Derivatives Explained, Lehman Brothers Fixed Income Quantitative Research.  
Tuckman, Bruce (2002), *Fixed Income Securities: Tools for Today's Market*, Wiley, 2<sup>nd</sup> edition.

The views expressed in this report accurately reflect the personal views of Kodjo Apedjinou, Anshul Pradhan and Priya Misra, the primary analysts responsible for this report, about the subject securities or issuers referred to herein, and no part of such analysts' compensation was, is or will be directly or indirectly related to the specific recommendations or views expressed herein.

Any reports referenced herein published after 14 April 2003 have been certified in accordance with Regulation AC. To obtain copies of these reports and their certifications, please contact Valerie Monchi (vmonchi@lehman.com; 212-526-3173).

Lehman Brothers Inc. and any affiliate may have a position in the instruments or the Company discussed in this report. The Firm's interests may conflict with the interests of an investor in those instruments.

The research analysts responsible for preparing this report receive compensation based upon various factors, including, among other things, the quality of their work, firm revenues, including trading, competitive factors and client feedback.

Lehman Brothers Inc. managed or co-managed a public offering of FNMA, GNMA, and FHLMC securities in the past year. Lehman Brothers usually makes a market in the securities mentioned in this report. These companies are current investment banking clients of Lehman Brothers or companies for which Lehman Brothers would like to perform investment banking services.

This material has been prepared and/or issued by Lehman Brothers Inc., member SIPC, and/or one of its affiliates ("Lehman Brothers") and has been approved by Lehman Brothers International (Europe), authorised and regulated by the Financial Services Authority, in connection with its distribution in the European Economic Area. This material is distributed in Japan by Lehman Brothers Japan Inc., and in Hong Kong by Lehman Brothers Asia Limited. This material is distributed in Australia by Lehman Brothers Australia Pty Limited, and in Singapore by Lehman Brothers Inc., Singapore Branch (LBIS). Where this material is distributed by LBIS, please note that it is intended for general circulation only and the recommendations contained herein do not take into account the specific investment objectives, financial situation or particular needs of any particular person. An investor should consult his Lehman Brothers representative regarding the suitability of the product and take into account his specific investment objectives, financial situation or particular needs before he makes a commitment to purchase the investment product. This material is distributed in Korea by Lehman Brothers International (Europe) Seoul Branch. This document is for information purposes only and it should not be regarded as an offer to sell or as a solicitation of an offer to buy the securities or other instruments mentioned in it. No part of this document may be reproduced in any manner without the written permission of Lehman Brothers. We do not represent that this information, including any third party information, is accurate or complete and it should not be relied upon as such. It is provided with the understanding that Lehman Brothers is not acting in a fiduciary capacity. Opinions expressed herein reflect the opinion of Lehman Brothers and are subject to change without notice. The products mentioned in this document may not be eligible for sale in some states or countries, and they may not be suitable for all types of investors. If an investor has any doubts about product suitability, he should consult his Lehman Brothers representative. The value of and the income produced by products may fluctuate, so that an investor may get back less than he invested. Value and income may be adversely affected by exchange rates, interest rates, or other factors. Past performance is not necessarily indicative of future results. If a product is income producing, part of the capital invested may be used to pay that income. Lehman Brothers may, from time to time, perform investment banking or other services for, or solicit investment banking or other business from any company mentioned in this document. © 2006 Lehman Brothers. All rights reserved. Additional information is available on request. Please contact a Lehman Brothers entity in your home jurisdiction.
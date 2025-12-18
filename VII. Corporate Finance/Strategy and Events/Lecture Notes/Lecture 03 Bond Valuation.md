---
aliases:
  - Bond Valuation
tags:
key_concepts:
parent_directory: Lecture Notes
cssclasses: academia
title: Lecture 03 Bond Valuation
linter-yaml-title-alias: Bond Valuation
---

Dave Schabes

January 10, 2023

# Bond Terminology

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/b516c56b9e2be8ea7cb727c4b09189230cd5f2ec6c2b1ddcc9c7de42436ae573.jpg)

# Bond Terminology

- Certificate – evidence of ownership  
- Indenture – legal documentation containing terms and conditions  
- Maturity Date – Date that the bond repays its principal and final interest payment  
- "Term" or "Tenor" – time remaining until repayment of note  
- Coupon Rate – the percentage of face value to be paid  
- Face Value or Principal – amount to be repaid at maturity

# Bond Terminology

- Coupon – payments due at each coupon date

$\circ$  Originally attached to the certificate  

- Cut off and redeemed (hence the term "coupon clippers")
- Interest typically paid semi-annually
- Coupon = Coupon Rate X Face Value / Number of Coupon Payments per Year

$\circ$ 100 x 11.75% / 2 =  $5.875 per$ 100 bond held

# OAT Text Example Updated for October 2021 Purchase

- Five year French bond yield -0.449% in June 2021  
- Final maturity of OAT issued October 25, 1993 due October 10, 2025

<table><tr><td></td><td></td><td>Cash Payments</td><td></td><td></td></tr><tr><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td></tr><tr><td>6.00</td><td>6.00</td><td>6.00</td><td>6.00</td><td>106.00</td></tr></table>

$$
\begin{array}{l} P V = \frac {6 . 0 0}{. 9 9 5 5 1} + \frac {6 . 0 0}{. 9 9 5 5 1 ^ {2}} + \frac {6 . 0 0}{. 9 9 5 5 1 ^ {3}} + \frac {6 . 0 0}{. 9 9 5 5 1 ^ {4}} + \frac {1 0 6 . 0 0}{. 9 9 5 5 1 ^ {5}} \\ = \epsilon 1 3 2. 6 9 \\ \end{array}
$$

- Despite loss of three years of interest (€18), price declined only €12.30 since market interest rates declined from 0.3% to -0.449%

# OAT Example Updated

- Since a bond is an annuity plus a final payment of principal:

$$
P V = C P N \times \frac {1}{y} \times \left(1 - \frac {1}{(1 + y) ^ {N}}\right) + \frac {F V}{(1 + y) ^ {N}}
$$

Using June 2021 data:

$$
\begin{array}{l} P V = 6. 0 0 \times \left(\frac {1}{-. 0 0 4 4 9}\right) \times \left(1 - \frac {1}{. 9 9 5 5 1 ^ {5}}\right) + \frac {1 0 0}{. 9 9 5 5 1 ^ {5}} \\ = 3 0. 4 1 + 1 0 2. 2 8 = \epsilon 1 3 2. 6 9 \\ \end{array}
$$

Using data from January 2023 when the three year interest rate was  $2.88\%$ :

$$
P V = 6. 0 0 \times \left(\frac {1}{. 0 2 8 8}\right) \times \left(1 - \frac {1}{1 . 0 2 8 8 ^ {3}}\right) + \frac {1 0 0}{1 . 0 2 8 8 ^ {3}}
$$

17.01 + 91.83 = €108.84, and received €12.00 in coupon payments

# Bond Terminology

- Yield to Maturity (YTM) -  $y$  in the equation above

$\circ$  Bond's rate of return based on its current market price  

- "Yield to call" and "yield to worst"
- Current Yield
- Coupon/Price = €6.00/€132.69 = 4.52%

# Calculating YTM

For a Zero Coupon Bond:

$$
Y T M = \left(\frac {F V}{P}\right) ^ {\frac {1}{n}} - 1,
$$

where  $FV$  is the face value at maturity,  $P$  is the current price and  $n$  is the number of remaining periods until maturity

- For a coupon bond

$$
P = C P N \times \frac {1}{y} \times \left(1 - \frac {1}{(1 + y) ^ {N}}\right) + \frac {F V}{(1 + y) ^ {N}}
$$

○ Cannot be solved directly – use Excel IRR function

# Calculating YTM – Examples

Zero coupon bond

Price, P 95

Face Value, FV 100

n (maturity in years) 5

$$
YTM_{5} = \left(\frac{100}{95}\right)^{\frac{1}{5}} - 1 = 1.03\%
$$

- Coupon bond

Price 112

Face Value 100

n 5

Coupon  $3.5\%$

$$
YTM_{5} = 1.03\%
$$

# Coupon Bond Terms

- Coupon note or bond:

○ Trading "at par" – price equal to face value (e.g., 100)  

- Trading "below par" or "at a discount to par" below 100

Current yield is below YTM  

- Creates a capital gain at maturity

○ Trading "above par" or "at a premium"

Current yield exceeds YTM  

- Creates a capital loss
- Pure discount bond, note or bill – no coupon

# Bond Price Terms

- Bid Price – where bond dealer will buy a bond  
- Asked (Offered) Price – where bond dealer will sell a bond  
- Clean Price – the quoted bond price, without accrued interest

$\mathrm{O}$  This is what is quoted.

- Dirty or Invoice Price – the price with accrued interest  
- Amount of cash you actually have to provide

# Invoice Price vs Clean Price

- Five year note issued December 30, 2022. Clean price: 100. Pays  $5 \%$ coupon rate paid semiannually: June 30 and December 30  
Purchase April 5:  
- How much do we pay?

$$
= 1 0 0 + 1 0 0 * \frac {\left(. 0 5 * \frac {9 6}{1 8 2}\right)}{2} = 1 0 0 + 1. 3 2 = 1 0 1. 3 2
$$

- We pay this because we take ownership of the coupon for the entire period from December 30, 2022 to June 30, 2023

# US Government Bond Market

Fixed-income market  

- Treasury Bills – mature in one year or less pay no interest  
- Treasury Notes – mature in 10 years or less  
- Treasury Bonds – mature in more than 10 but less than 30 years  
- Notes and bonds pay interest semiannually

# Treasury Bill, Note and Bond Yields<sup>1</sup>

U.S. Treasurerys  

<table><tr><td></td><td>COUPON (%)</td><td>PRICE CHG</td><td>YIELD (%)</td><td>YIELD CHG</td></tr><tr><td>30-Year Bond</td><td>4</td><td>0/32</td><td>3.786</td><td>-0.038</td></tr><tr><td>10-Year Note</td><td>4.125</td><td>11/32</td><td>3.591</td><td>-0.128</td></tr><tr><td>7-Year Note</td><td>3.875</td><td>0/32</td><td>3.816</td><td>0.008</td></tr><tr><td>5-Year Note</td><td>3.875</td><td>30/32</td><td>3.738</td><td>-0.184</td></tr><tr><td>3-Year Note</td><td>4</td><td>5/32</td><td>4.025</td><td>-0.188</td></tr><tr><td>2-Year Note</td><td>4.25</td><td>3/32</td><td>4.295</td><td>-0.171</td></tr><tr><td>1-Year Bill</td><td>0</td><td>-2/32</td><td>4.748</td><td>-0.005</td></tr><tr><td>6-Month Bill</td><td>0</td><td>-1/32</td><td>4.810</td><td>-0.036</td></tr><tr><td>3-Month Bill</td><td>0</td><td>1/32</td><td>4.636</td><td>0.112</td></tr><tr><td>1-Month Bill</td><td>0</td><td>4/32</td><td>4.140</td><td>0.119</td></tr></table>

View Treasury Quotes Page

10 49 AM EST 1/06/23

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/93c4d4376de48183bcc30882e1dbc34ac1a1e9a73c74d4860028b17049016d84.jpg)  
10-Year Note

# Bond Prices Using YTM

<table><tr><td></td><td>10 Year Note</td><td></td></tr><tr><td></td><td></td><td>In 32s</td></tr><tr><td>Price</td><td>104.3961</td><td>13</td></tr><tr><td>Settlement</td><td>1/6/23</td><td></td></tr><tr><td>Maturity</td><td>11/15/32</td><td></td></tr><tr><td>Coupon Rate</td><td>4.125%</td><td></td></tr><tr><td>Yield</td><td>3.591%</td><td></td></tr><tr><td>Redemption</td><td>100</td><td></td></tr><tr><td>Frequency</td><td>2</td><td></td></tr><tr><td>Basis</td><td>1</td><td></td></tr></table>

# Interest Rates and Bond Prices

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/946ab60144e7917af97689e9f376eac55bac860190c906ec5c8d6c82d6c55e0c.jpg)  
FIGURE 3.1 The interest rate on 10-year U.S. Treasury bonds

# Interest Rates and Bond Prices

FIGURE 3.2 Plot of bond prices as a function of the interest rate. The price of long-term bonds is more sensitive to changes in the interest rate than is the price of short-term bonds.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/c82f80e423181c4b041b1fd79a02d892fa4ba56b0a2f75343436ed8b7b6ff4ec.jpg)

- Prices move inversely to yields

# Bond Duration (Interest Rate Sensitivity) $^2$

- Price of any fixed coupon instrument will fall (rise) as interest rates rise (fall)  
- Various, slightly different measures of duration – sensitivity of price to interest rate changes

$$
\mathrm {D u r a t i o n} = \sum_ {t = 1} ^ {n} \left(\frac {P V (C _ {t}) \times t}{P}\right),
$$

where  $\text{Price} = \sum PV(C_t)$ , and  $C_t$  are the instrument's cash flows at time  $t$

# Bond Duration (Interest Rate Sensitivity)

- Duration represents the sum of present value proportional contribution of each cash flow  
- Modified duration (price sensitivity to a change in interest rates)

Modified Duration = Duration/(1 + YTM), with some caveats

- Measures only sensitivity to a parallel shift in yield curve

○ More complex changes require more sophisticated tools

# Duration Calculations

<table><tr><td></td><td colspan="8">Duration Calculation</td></tr><tr><td></td><td>Price</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td></tr><tr><td>Note A</td><td></td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>\$ 1,030</td></tr><tr><td>Discount Rate</td><td>4.00%</td><td>$ 28.85</td><td>$ 27.74</td><td>$ 26.67</td><td>$ 25.64</td><td>$ 24.66</td><td>$ 23.71</td><td>\$ 782.72</td></tr><tr><td>Pirce</td><td>\$ 939.98</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Fraction of PV</td><td></td><td>0.0307</td><td>0.0295</td><td>0.0284</td><td>0.0273</td><td>0.0262</td><td>0.0252</td><td>0.8327</td></tr><tr><td>Times Years</td><td>6.40</td><td>0.03</td><td>0.06</td><td>0.09</td><td>0.11</td><td>0.13</td><td>0.15</td><td>5.83</td></tr><tr><td>Modified Duration</td><td>6.15%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>Price</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td></tr><tr><td>Note B</td><td></td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>\$ 1,090</td></tr><tr><td>Discount Rate</td><td>4.00%</td><td>$ 86.54</td><td>$ 83.21</td><td>$ 80.01</td><td>$ 76.93</td><td>$ 73.97</td><td>$ 71.13</td><td>\$ 828.31</td></tr><tr><td>Pirce</td><td>\$ 1,300.10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Fraction of PV</td><td></td><td>0.0666</td><td>0.0640</td><td>0.0615</td><td>0.0592</td><td>0.0569</td><td>0.0547</td><td>0.6371</td></tr><tr><td>Times Years</td><td>5.69</td><td>0.07</td><td>0.13</td><td>0.18</td><td>0.24</td><td>0.28</td><td>0.33</td><td>4.46</td></tr><tr><td>Modified Duration</td><td>5.47%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

# Comparison of Two Seven Year Notes

<table><tr><td></td><td>Coupon Rate</td><td colspan="2">Face Amount</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Note A</td><td>3%</td><td>\$ 1,000</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Note B</td><td>9%</td><td>\$ 1,000</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Discount Rate</td><td>4%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>Price</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td></td></tr><tr><td>Note A</td><td>$939.98</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 1,030</td><td></td></tr><tr><td>Note B</td><td>$1,300.10</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 1,090</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Discount Rate</td><td>3%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>Price</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td></td></tr><tr><td>Note A</td><td>$1,000.00</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 30</td><td>$ 1,030</td><td></td></tr><tr><td>Note B</td><td>$1,373.82</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 90</td><td>$ 1,090</td><td></td></tr><tr><td></td><td>Price Change</td><td>% Change</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Note A</td><td>\$60.02</td><td>6.39%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Note B</td><td>\$73.71</td><td>5.67%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

- Which note is riskier? Why?

# Term Structure of Interest Rates

- Spot rate, discount rate, zero coupon rate

○ Three different terms with the same meaning  

- Rate used to discount a single cash flow on a given date
- The Law of One Price:
- Cash flows (of identical risk) delivered on a given date must have the same spot rate  
$\circ$  If untrue, there would be a risk-free arbitrage opportunity

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/224965de60810f0726c5f796425d581d9f28d136342ee38a007f429a7cf3a37c.jpg)  
Term Structure of Interest Rates

# The Term Structure of Interest Rates<sup>3</sup>

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/a728e2d7b8f0f8e79c20e191380ceaad6c219efbc8f9fe45d3fb16669d6e07bb.jpg)

10-year minus 2-year treasury yield differential  

- Inverted yield curve "predicts" recessions

# Valuing Bonds Using Spot Rates

- Calculate the discount factor:

$$
D i s c o u n t F a c t o r = \frac {1}{(1 + r _ {n}) ^ {n}},
$$

$$
e.g.,DF_{3}ifr_{3} = 5\% ,
$$

$$
D F _ {3} = 1 / (1 +. 0 5) ^ {3} = . 8 6 3 8
$$

# The Law of One Price

- The law of one price states that, given efficient market conditions, there are no pure arbitrage opportunities
- Any set of future identical cashflows must be priced the same – have identical present values  
Since real world markets do not meet efficient market assumptions, there are some arbitrage opportunities available

- Only realizable on a statistical basis  
High cost to access these opportunities

Table 3.6 The law of one price applied to government bonds  

<table><tr><td colspan="7">Year (t)</td></tr><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>Bond Price (PV)</td><td>Yield to Maturity (y, %)</td></tr><tr><td>Spot rates</td><td>0.03</td><td>0.04</td><td>0.05</td><td>0.06</td><td></td><td></td></tr><tr><td>Discount factors</td><td>0.9709</td><td>0.9246</td><td>0.8638</td><td>0.7921</td><td></td><td></td></tr><tr><td colspan="7">Bond A (8% coupon)</td></tr><tr><td>Payment (Ct)</td><td>$80.00</td><td>1,080.00</td><td></td><td></td><td></td><td></td></tr><tr><td>PV (Ct)</td><td>$77.67</td><td>998.52</td><td></td><td></td><td>\$1,076.19</td><td>3.96</td></tr><tr><td colspan="7">Bond B (8% coupon)</td></tr><tr><td>Payment (Ct)</td><td>$80.00</td><td>80.00</td><td>1,080.00</td><td></td><td></td><td></td></tr><tr><td>PV (Ct)</td><td>$77.67</td><td>73.96</td><td>932.94</td><td></td><td>\$1,084.58</td><td>4.90</td></tr><tr><td colspan="7">Bond C (8% coupon)</td></tr><tr><td>Payment (Ct)</td><td>$80.00</td><td>80.00</td><td>80.00</td><td>1,080.00</td><td></td><td></td></tr><tr><td>PV (Ct)</td><td>$77.67</td><td>73.96</td><td>69.11</td><td>855.46</td><td>\$1,076.20</td><td>5.81</td></tr></table>

# Term Structure Measurement

- Spot rate –discount single payment received on a date

$\circ$  Must be inferred in most cases

- Limited number of discount (single payment) bills  
Notes and bonds make multiple coupon payments

○ STRIPS – Separate Trading of Registered Interest and Principal of Securities

- Separates principal only portion of coupon notes and bonds which trade regularly  
- Allows creation of zero coupon (spot) yield curve

# More on Discount Factors

- Inverted yield curves

$\mathrm{O}$  Implied forward rates

One year spot rate:  $20 \%$  
Two year spot rate:  $7 \%$

$$
\begin{array}{l} D F _ {1} = \frac {1}{1 . 2 0} = . 8 3 3, D F _ {2} = \frac {1}{1 . 0 7 ^ {2}} = . 8 7 3 \\ \text {i m p l i e s} D F _ {\frac {2}{1}} = 1. 0 4 8 1 o r \\ \end{array}
$$

a negative 4.59% interest rate for one year in one year

- While this example is obvious, building spot yield curves is complex and relies on assumptions to exclude arbitrage opportunities

# Term Structure and Expectations Theory

- Why does the term structure exist?

$\mathrm{O}$  Liquidity preference  
$\circ$  Expectations theory  
$\bigcirc$  Risk  
$\circ$  Inflation (Deflation) risk

- Prices reflect future view of all market participants

# Real versus Nominal Returns

Real return  $(r_{real})$ :

$$
r _ {r e a l} = \frac {1 + r _ {n o m i n a l}}{1 + i} - 1, w h e r e,
$$

$r_{\text {nominal }}$  is the stated (contractual) rate of return,

and  $i$  is the (expected) inflation rate for the time period of the investment

- If countries are viewed as equally risky, the real return available should be identical – Fisher Effect

# Inflation Rates (US and Selected Countries)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/7c0a7955d8d72d4c2423f1c7b817ea24282b1387f6a8e717d8ced271be4dd3a5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/fc46bc803a9f1c350d04a95a3241fd04926477eab58cd1e8a00b1f713e8ea83d.jpg)

# Real and Nominal US Rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/94d51e064867459a78512daa864c69820194696245d7a446dba9f942b9e34841.jpg)  
FIGURE 3.7 The green line shows the real yield on long-term TIPS issued by the U.S. government. The brown line shows the yield on long-term nominal bonds.

# Short-term Rates and Inflation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/0071c24fb4263f4da0d4205bb1f6e02ad60b709eff4668f74b95588442fb2a44.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/2e30f8f45299d1aadc7d851499d1d6b9b55720e2dce1cb54ef096e394a4341a1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/fdd113e7fbf0e07a8ac86734415c2e5ca956d66eee0cb6d132c8548ba86a1f20.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/aa8e5828ceeef8c80fe412692adbb30f01b5c0be4f04c5f6172ad9f1e81e2569.jpg)

Winter 2023

# More on Bonds and Equity Valuation I


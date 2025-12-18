---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 4 The valuation of bonds
linter-yaml-title-alias: 4 The valuation of bonds
---

Chapter Title: The valuation of bonds

Book Title: Essentials of Financial Management

Book Author(s): Jason Laws

Published by: Liverpool University Press

Stable URL: https://www.jstor.org/stable/j.ctvt6rjjs.7

JSTOR is a not-for-profit service that helps scholars, researchers, and students discover, use, and build upon a wide range of content in a trusted digital archive. We use information technology and tools to increase productivity and facilitate new forms of scholarship. For more information about JSTOR, please contact support@jstor.org.

Your use of the JSTOR archive indicates your acceptance of the Terms & Conditions of Use, available at https://about.jstor.org/terms

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/4e4d7a45-5478-4f54-91ff-74d1d5a46c16/d98bb56305779cf0a1eac837e5b539b8e470dc8bf62e67ff48b258acf8e471e8.jpg)

This content is licensed under a Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0). To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-nd/4.0/.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/4e4d7a45-5478-4f54-91ff-74d1d5a46c16/a33dcac54c41a553a3c40d3e8771f719915df22cf922a0d85b77b3ddc8347ed0.jpg)  
JSTOR

Liverpool University Press is collaborating with JSTOR to digitize, preserve and extend access to Essentials of Financial Management

# 4 The valuation of bonds

# 4.1 Introduction to bonds

A bond is an instrument issued by a company (corporate bond), a country (sovereign debt) or a state/city (municipal bond). They have a finite life, and may make a periodic payment (a coupon) and some final payment (par value). Bonds that do not make a periodic payment are known as zero coupon bonds.

In order to evaluate the price of a bond we need to sum together the present value of future cash flows, evaluated at some required rate of return that reflects the riskiness of those flows. This technique is near identical to the dividend discount model, with a number of noticeable differences:

1. bonds have a finite life; shares are irredeemable and hence have an infinite life  
2. bond payments (coupon and par value) are known with certainty, whereas dividends paid on ordinary shares are uncertain

# 4.2 Bond pricing

Bond prices can be communicated in two ways: (i) the price itself, which represents the sum of the present value of these cash flows; and (ii) the interest rate used to determine the price of

the bond. The latter is often called a bond's yield to maturity (YTM) and is the interest rate implied by the payment structure.

Let  $T$  be the maturity of the bond and  $C(1), C(2) \ldots C(T)$  be the future cash flows; the yield to maturity is the rate of return which satisfies:

$$
P = \frac {C (1)}{1 + y} + \frac {C (2)}{(1 + y) ^ {2}} + \dots + \frac {C (T)}{(1 + y) ^ {T}}
$$

If the bond pays a constant coupon C and a final payment (the par value) of D at maturity, then the yield to maturity must now solve:

$$
P = \frac {C}{1 + y} + \frac {C}{(1 + y) ^ {2}} + \dots + \frac {C + D}{(1 + y) ^ {T}}
$$

Hopefully it is clear that there is an inverse relationship between the price of a security and its yield to maturity. If the yield to maturity increases, the market price of the bond will decrease.

# Example

Consider a bond issued in November 2013 that pays an annual coupon of  $1.25\%$ , and expires in November 2017. If it has a par value of  $\in 1,000$  and the yield to maturity is  $1.5\%$ , what is the price of this bond?

$$
P = \frac {C (1)}{1 + y} + \frac {C (2)}{(1 + y) ^ {2}} + \frac {C (3)}{(1 + y) ^ {3}} + \frac {C (4)}{(1 + y) ^ {4}}
$$

$$
C (1) = C (2) = C (3) = 1. 2 5 \% \text {of} \in 1, 0 0 0 = 0. 0 1 2 5 \times \in 1, 0 0 0 = \in 1 2. 5 0
$$

$$
C (4) = \epsilon 1 2. 5 0 + \epsilon 1, 0 0 0
$$

$$
y = 1.5\% = 0.015
$$

$$
P = \frac {1 2 . 5 0}{1 . 0 1 5} + \frac {1 2 . 5 0}{1 . 0 1 5 ^ {2}} + \frac {1 2 . 5 0}{1 . 0 1 5 ^ {3}} + \frac {1 2 . 5 0 + 1 0 0 0}{1 . 0 1 5 ^ {4}}
$$

$$
P = 1 2. 3 2 + 1 2. 1 3 + 1 1. 9 5 + 9 5 3. 9 6 = \text {€} 9 9 0. 3 6
$$

In November 2013, investors were willing to pay €930.36 for a bond issued by Tesco that paid €12.50 in November 2014, €12.50 in November 2015, €12.50 in November 2016 and €1012.50 in November 2017.

As the price is below the par value of €1,000, we say that the bond is priced at a discount.

Recall that a bond price is:

$$
P = \frac {C}{1 + y} + \frac {C}{(1 + y) ^ {2}} + \dots + \frac {C + D}{(1 + y) ^ {T}}
$$

This can also be considered as an annuity paying C with maturity T and one final payment of D at time T. If we use the notation, then let  $a_{\overline{n} |i}$  denote the present value of the annuity, with a life of n at a rate of interest of i, paying 1 unit.

$a_{\overline{n}_D|i}$  can be found using  $\left[\frac{1}{i} -\frac{1}{i(1 + i)^n}\right]$  and the present value of the par value is, of course, simply  $\frac{a_{\overline{n}_D|i}}{(1 + i)^n}$ .

$$
\left[ \frac {1}{i} - \frac {1}{i (1 + i) ^ {n}} \right] = \left[ \frac {1}{0 . 0 1 5} - \frac {1}{i (1 + 0 . 0 1 5) ^ {4}} \right] = \left[ 6 6. 6 6 7 - \frac {6 6 . 6 6 7}{1 . 0 6 1 4} \right] = 3. 8 5 6 6
$$

$$
3. 8 5 6 6 \times \in 1 2. 5 0 = \in 4 8. 2 1
$$

$$
\frac {D}{(1 + i) ^ {n}} = \frac {1 0 0 0}{(1 + 0 . 0 1 5) ^ {4}} 9 4 2. 1 8.
$$

€48.21 + €942.18 = €990.39 – the discrepancy is due to rounding errors.

Note Excel has a function, PV, to find the annuity value. Excel interprets the outcome as the cost to you of making these payments, so it is essential to insert a minus sign before the PV. i.e.  $= -\mathrm{PV}(0.015,4,12.5)$ , where 0.015 (or  $1.5\%$ ) is the interest rate per period, 4 is the total number of periods in the annuity and 5 represents the payment per period. The answer is then 48.18.

The spreadsheet for this exercise can be found here. Please ensure you click on Section 4 and the 4.2 tab at the bottom of the spreadsheet.

# 4.3 The price yield curve

Consider a 30-year bond, with a face value of \(1,000, paying a \(10 \%\)coupon (i.e. \(\$ 100\)) each year. The chart below shows the relationship between the price of the bond and the yield to maturity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/4e4d7a45-5478-4f54-91ff-74d1d5a46c16/e3494ca7f74f6c447586cd1e76cd782cea4d5a72911653e2ee235332a589cfc6.jpg)  
Price vs. ytm

We can observe the following:

i. A negative relationship between price and yield to maturity (YTM), such that if the YTM on a bond rises, the price of the bond falls.  
ii. A non-linear relationship between price and YTM. In particular as the YTM rises, price drops but at a lesser rate, i.e. as the YTM rises, the slope of the line becomes flatter.  
 iii. When the YTM equals the coupon of 10%, the bond price is equal to the par value of \$1,000. If the YTM is below the coupon rate of 10%, the bond is priced at a premium to the par value of \$1,000. If the YTM is greater than the coupon rate of 10%, the bond is priced at a discount to the par value of \$1,000.

The spreadsheet for this exercise can be found here. Please ensure you click on Section 4 and the 4.3 tab at the bottom of the spreadsheet.

Note the price yield curve becomes more convex as maturity increases.

# 4.4 The risk of default

In March 2012, following the fallout from the global financial crisis, the YTM on a zero coupon bond issued by the German government, with a face value of €1,000, was  $1.79\%$  p.a. Meanwhile, the YTM on an identical Greek government bond was  $38.97\%$  p.a.

Using these two YTMs, what would the price of the two zero coupon bonds be?

$$
\begin{array}{l} P _ {G E R M A N Y} = \frac {\epsilon 1 0 0 0}{(1 + 0 . 0 1 7 9) ^ {1 0}} = \epsilon 8 3 7. 4 3 \\ P _ {G R E E C E} = \frac {\text {€ 1 0 0 0}}{(1 + 0 . 3 8 9 7) ^ {1 0}} = \text {€ 3 7 . 2 2} \\ \end{array}
$$

That is, the promise of receiving €1,000 from Germany was valued at €837.43, but the same promise, backed by the Greek government, was valued at just €37.22. Thus, to finance the same budget deficit, the Greek government would need to offer promises to repay over €22,000 compared to just €1,000 in Germany. The reason for this situation was the markets' view of the likelihood of default on the promise to repay by the Greek government, which was greater than the likelihood of default by the German government.

The likelihood of default is more commonly known as the risk of default and it is measured by a bond's rating. Moody's and Standard and Poor's are two well-known rating agencies. Rating agencies evaluate the ability of the bond issuer, whether a company or a government, to make future coupon and par payments. It follows that the "better" the rating, the lower the risk of default and subsequently the lower the yield that market participants will use to evaluate bond prices.

Since the primary function of bonds as an investment vehicle is to make fixed payments, it is essential that the company or government issuing the debt has the ability to make all payments on time and in full. Bond ratings evaluate the debt issuer to determine the risk of default.

The leading rating agencies assign ratings when a bond is first issued, and that rating helps determine how high the bond's interest rate will be. If the agencies assign a high rating, that means there is little risk of default, so the issuer can obtain a lower interest rate.

Standard and Poor's (S&P) assign a rating from AAA to D, and ratings from AA to CCC are modified by the addition of a plus or a minus. Bonds that are rated BBB and above are referred to as investment grade. Bonds that are rated below BBB are referred to as speculative grade. As of January 2013, the S&P rating of Greece, following the European sovereign debt crisis, was B-, whereas the S&P rating of Germany was AAA.

# 4.5. Does the yield to maturity change?

A common misconception is that as the payout from a bond is fixed, then the price is also fixed. This is not the case. As the market's perception of future risk changes, so does the price of the bond.

For example, consider a bond with an annual coupon of  $8.625\%$  p.a., expiring in eleven years, that is trading at par (i.e.  $\mathbf{\Omega}100$ ). If in three years' time the bond is trading at  $\mathbf{\Omega}130$ , what must have happened to the yield on the bond? Given the negative relationship between bond prices and YTM, in order for the price of the bond to have risen the yield must have fallen. In fact, now with eight years to maturity, the YTM must have fallen to  $4.1428\%$ . As the YTM reflects the market's view on the ability of the bond issuer to make the coupon and final par payments, if it falls this will be as a result of the market viewing an improved capacity for the issuer to make such payments. Conversely, if the price of a bond falls it is due to the market having a diminished view of the ability of the issuer to make future coupon and par payments.

<table><tr><td>YTM</td><td>4.1428%</td><td>C = 8.625%</td><td>Par = £100</td></tr><tr><td>Year</td><td>CF</td><td>PV</td><td></td></tr><tr><td>1</td><td>£8.625</td><td>£8.282</td><td></td></tr><tr><td>2</td><td>£8.625</td><td>£7.952</td><td></td></tr><tr><td>3</td><td>£8.625</td><td>£7.636</td><td></td></tr><tr><td>4</td><td>£8.625</td><td>£7.332</td><td></td></tr><tr><td>5</td><td>£8.625</td><td>£7.041</td><td></td></tr><tr><td>6</td><td>£8.625</td><td>£6.761</td><td></td></tr><tr><td>7</td><td>£8.625</td><td>£6.492</td><td></td></tr><tr><td>8</td><td>£108.625</td><td>£78.505</td><td></td></tr><tr><td colspan="4">Price = £130</td></tr></table>

Of course, there are two conflicting forces when you discount the future cash flows of a bond – the passage of time and the market's perception of risk. Hence, the price could still fall, even if the perception of risk falls, as the bond gets closer to maturity. Moreover, different bonds have different sensitivities to changes in interest rates, depending on their maturity and their coupon.

The spreadsheet for this exercise can be found here. Please ensure you click on Section 4 and the 4.5 tab at the bottom of the spreadsheet.

# 4.6 Bond duration

In section 2.6 we learned that beta measures the sensitivity of a stock to movements in the market. The equivalent concept for a bond is its duration. A bond's duration measures how sensitive the price of a bond is to a (small) change in yield to maturity.

Duration can be found as follows:

$$
D = \frac {\sum_ {t = 1} ^ {T} \frac {t C _ {t}}{\left(1 + r\right) ^ {t}}}{P}
$$

Expanding out the summation sign:

$$
D = \frac {1 \times \frac {C _ {1}}{(1 + i)} + 2 \times \frac {C _ {2}}{(1 + i) ^ {2}} + \dots + T \times \frac {C _ {T}}{(1 + i) ^ {T}}}{P}
$$

The duration can therefore be calculated by computing the present value (PV) of the cash flows, and then multiplying them by the time indices.

The duration of a zero coupon bond is simply equal to its maturity. Returning to the equation above, and setting all coupon payments, prior to maturity, to zero, we can determine that:

$$
D = \frac {T \times \frac {C _ {T}}{(1 + i) ^ {T}}}{P} = T
$$

It follows that if a bond makes coupon payments prior to maturity then the duration of a coupon-paying bond is less than the term to maturity,  $T$ .

# Example

Find the duration of a ten-year bond, with a face value of €1,000, paying annual coupon of 10%. Assume a YTM of 8%.

<table><tr><td>Par=</td><td>€1,000.00</td><td></td><td></td><td></td></tr><tr><td>Coupon=</td><td>10.00%</td><td></td><td></td><td></td></tr><tr><td>ytm=</td><td>8.00%</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Year</td><td>CF</td><td>PV</td><td>t x PV</td><td></td></tr><tr><td>1</td><td>€100.00</td><td>€92.59</td><td>€92.59</td><td></td></tr><tr><td>2</td><td>€100.00</td><td>€85.73</td><td>€171.47</td><td></td></tr><tr><td>3</td><td>€100.00</td><td>€79.38</td><td>€238.15</td><td></td></tr><tr><td>4</td><td>€100.00</td><td>€73.50</td><td>€294.01</td><td></td></tr><tr><td>5</td><td>€100.00</td><td>€68.06</td><td>€340.29</td><td></td></tr><tr><td>6</td><td>€100.00</td><td>€63.02</td><td>€378.10</td><td></td></tr><tr><td>7</td><td>€100.00</td><td>€58.35</td><td>€408.44</td><td></td></tr><tr><td>8</td><td>€100.00</td><td>€54.03</td><td>€432.22</td><td></td></tr><tr><td>9</td><td>€100.00</td><td>€50.02</td><td>€450.22</td><td></td></tr><tr><td>10</td><td>€1,100.00</td><td>€509.51</td><td>€5,095.13</td><td></td></tr><tr><td></td><td>Price=</td><td>€1,134.20</td><td>7,900.63</td><td>&lt;&lt;=Sum of t x PV</td></tr><tr><td></td><td>D=</td><td>6.97</td><td></td><td></td></tr></table>

With regard to the following equation:

$$
D = \frac {1 \times \frac {8 0}{(1 + 0 . 1)} + 2 \times \frac {8 0}{(1 + 0 . 1) ^ {2}} + \dots + 1 0 \times \frac {1 0 8 0}{(1 + 0 . 1) ^ {1 0}}}{P}
$$

The price is the sum of the time period multiplied by the present value of the individual cash flows, which sums to 7,900.63. This is then divided by the price, which is the PV of the cash flows (CF) and equals €1,134.20 (at a premium to par, as the YTM is less than the coupon).

The duration is then:

$$
7, 9 0 0. 6 3 / 1, 1 3 4. 2 0 = 6. 9 7 \mathrm {y e a r s}
$$

The units for duration in this case are years, as in the numerator we are taking a time value, measured in years, and multiplying this by a euro amount. We then divide this by another euro amount. The euro amounts cancel and we are left with the units of years.

The column chart below depicts the annual cash flows alongside the associated present values.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/4e4d7a45-5478-4f54-91ff-74d1d5a46c16/9369575eff8d73f0d15966a3285890970e6a2f88e2792cb899fb454d8a52da77.jpg)

The actual maturity of this bond is ten years, but the duration or "effective" maturity of this bond is almost seven years.

# Activity 4.1

Manually obtain the duration of a three-year bond, with a par of €1,000, an annual coupon of  $5\%$  and a YTM of  $10\%$ .

The spreadsheet for this exercise can be found here. Please ensure you click on Section 4 and the 4.6 tab at the bottom of the spreadsheet.

# 4.7 Characteristics of duration

The diagram below plots duration for four bonds:

- Bond 1 – zero coupon priced at a yield of  $15\%$  
- Bond 2 –  $15\%$  coupon priced at a yield of  $6\%$ .  
- Bond 3 - 3% coupon priced at a yield of 15%  
Bond 4 -  $15\%$  coupon priced at a yield of  $15\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/4e4d7a45-5478-4f54-91ff-74d1d5a46c16/253f3f4760e2723e1ab55c681b02c2dc1c0104b9adc65473a24ca08927a0eb05.jpg)  
Duration relationships

# It follows that:

i. The duration of a coupon bond will always be less than its term to maturity – note that bonds 2, 3 and 4 all have a duration less than that of bond 1.  
ii. An inverse relationship exists between coupon and duration – a bond with a larger coupon will have a shorter duration as more of the total cash flows come earlier – bonds 3 and 4 are both priced at a yield of  $15\%$ , but bond 3 has a lower coupon than bond 4. At all maturities the duration of bond 3 is higher than the duration of bond 4.  
iii. A bond with no coupon payments will have a duration equal to its term to maturity – see bond 1.  
iv. A positive relationship generally holds between term to maturity and duration, but duration increases at a decreasing rate with maturity – note how the slope of bond 1 gets flatter as maturity increases.  
V. There is an inverse relationship between yield to maturity and duration – bonds 2 and 4 both have the same coupon but bond 2 is priced at a yield of  $6\%$ , whereas

bond 4 is priced at a yield of  $15\%$ . At all maturities the duration of bond 4 is less than the duration of bond 2.

The spreadsheet for this exercise can be found here. Please ensure you click on Section 4 and the 4.7 tab at the bottom of the spreadsheet.

# 4.8 Relationship between bond prices and duration

Earlier it was observed that duration is to bonds as beta is to stocks. With regard to stocks, the greater the beta, the more a change in market return will impact on stock prices. Likewise with bonds, the greater the duration, the more a change in yield to maturity will impact on price. Note from section 4.3 that the relationship is a negative one, hence the greater the duration, the more an increase in yield to maturity will reduce bond prices.

It can be shown that:

$$
\frac {\Delta P _ {0}}{P _ {0}} = - D \frac {\Delta (1 + i)}{(1 + i)}
$$

It is often convenient to divide duration by  $(1 + i)$  and call the result modified duration:

$$
D _ {m} = \frac {D}{1 + i}
$$

It follows then that:

$$
\begin{array}{l} \frac {\Delta P _ {0}}{P _ {0}} = - D \frac {\Delta (1 + i)}{(1 + i)} = \\ - D _ {m} \times (1 + i) \times \frac {\Delta (1 + i)}{(1 + i)} = - D _ {m} \times \Delta (1 + i) \\ \frac {\Delta P _ {0}}{P _ {0}} = - D _ {m} \times \Delta (1 + i) \\ \end{array}
$$

Hence the proportionate change in bond prices is negatively and linearly related to changes in yield to maturity.

# Example

Earlier, in section 4.6, we found the duration of a ten-year bond, with a face value of €1,000, paying annual coupon of  $10\%$  and assuming a YTM of  $8\%$ , to be 6.97 years. The price was €1,134.20.

According to the relationship outlined above, what does duration predict the new bond price will be if the YTM changes to (i)  $8.1\%$ , (ii)  $8.5\%$ , (iii)  $9\%$ ?

$$
D = 6. 9 7, D _ {m} = 6. 9 7 / 1. 0 8 = 6. 4 5
$$

(i)  $\frac{\Delta P_0}{P_0} = -D_m \times \Delta (1 + i) = -6.45 \times 0.001 = -0.645\%$

$$
\text {n e w} = \epsilon 1, 1 3 4. 2 0 \times (1 + (- 0. 0 0 6 4 5)) = \epsilon 1, 1 2 6. 8 8
$$

(ii) 8.5

$$
\text {n e w} = \epsilon 1, 1 3 4. 2 0 \times (1 + (- 0. 0 3 2 2 5)) = \epsilon 1, 0 9 7. 6 2
$$

(iii)  $\frac{\Delta P_0}{P_0} = -D_m \times \Delta(1 + i) = -6.45 \times 0.01 = -6.45\%$

$$
\text {n e w} = \epsilon 1, 1 3 4. 2 0 \times (1 + (- 0. 0 6 4 5)) = \epsilon 1, 0 6 1. 9 4.
$$

Frederick Macaulay first proposed the measure of duration to represent the average maturity of a stream of payments in Some Theoretical Problems suggested by the Movements of Interest Rates, Bond Yields, and Stock Prices in the United States since 1856. As this was many years before the invention of the spreadsheet or the calculator, the ability to estimate a bond's price using just the duration and the change in interest rates was particularly attractive. Nowadays it would be a trivial exercise to find the new bond price, given the new interest rate.

With regard to the three scenarios above, the actual prices, i.e. if we repriced, are presented below.

<table><tr><td>Change</td><td>Estimated price</td><td>Actual price</td><td>Error</td></tr><tr><td>+0.1%</td><td>€1,126.88</td><td>€1,126.92</td><td>€0.04</td></tr><tr><td>+0.5%</td><td>€1,097.62</td><td>€1,098.42</td><td>€0.8</td></tr><tr><td>+1.0%</td><td>€1,061.94</td><td>€1,064.18</td><td>€2.24</td></tr></table>

Note that in each case the estimate of the new bond price, using duration, is less than the actual price. That is, we underestimate the bond price when yields rise. Note further that the extent of the underestimation varies with the size of the change of interest rates. When the change was  $0.1\%$ , the error was just 4 cents, but when the change was  $1\%$  the error was €2.24.

This relationship is depicted in the diagram below. The tangent drawn on the price yield curve represents duration and when we use the relationship:

$$
\frac {\Delta P _ {0}}{P _ {0}} = - D _ {m} \times \Delta (1 + i)
$$

we are assuming a linear relationship between bond price changes and yield changes, when in fact the relationship is convex. It is evident from the diagram that the larger the change in yield, the greater the error.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/4e4d7a45-5478-4f54-91ff-74d1d5a46c16/f7c6221a342ef74a170fdc3c83762838c3f033931a0fcb9a0ae1ab9a530b522d.jpg)

The spreadsheet for this exercise can be found here. Please ensure you click on Section 4 and the 4.8 tab at the bottom of the spreadsheet.

# 4.9 Bond convexity

In order to correct for the error in estimating the change in bond price, due to the convex nature between price and yield to maturity, we must add in the following term:

$$
C \left[ \frac {\Delta (1 + i)}{(1 + i)} \right] ^ {2}
$$

where:

$$
C = \frac {1}{2} \frac {\sum_ {t = 1} ^ {T} \frac {t (t + 1) C _ {t}}{(1 + i) ^ {t}}}{P}
$$

The calculation of convexity is very similar to that of duration with an additional step of multiplying the time step by the present value of cash flows by a further  $(1 + \text{time step})$ . Returning to the earlier example:

<table><tr><td>Par=</td><td>€1,000.00</td><td></td><td></td><td></td><td></td></tr><tr><td>Coupon=</td><td>10.00%</td><td></td><td></td><td></td><td></td></tr><tr><td>ytm=</td><td>8.00%</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Year</td><td>CF</td><td>PV</td><td>t x PV</td><td>t x (t+1) x PV</td><td></td></tr><tr><td>1</td><td>€100.00</td><td>€92.59</td><td>€92.59</td><td>€185.19</td><td></td></tr><tr><td>2</td><td>€100.00</td><td>€85.73</td><td>€171.47</td><td>€514.40</td><td></td></tr><tr><td>3</td><td>€100.00</td><td>€79.38</td><td>€238.15</td><td>€952.60</td><td></td></tr><tr><td>4</td><td>€100.00</td><td>€73.50</td><td>€294.01</td><td>€1,470.06</td><td></td></tr><tr><td>5</td><td>€100.00</td><td>€68.06</td><td>€340.29</td><td>€2,041.75</td><td></td></tr><tr><td>6</td><td>€100.00</td><td>€63.02</td><td>€378.10</td><td>€2,646.71</td><td></td></tr><tr><td>7</td><td>€100.00</td><td>€58.35</td><td>€408.44</td><td>€3,267.55</td><td></td></tr><tr><td>8</td><td>€100.00</td><td>€54.03</td><td>€432.22</td><td>€3,889.94</td><td></td></tr><tr><td>9</td><td>€100.00</td><td>€50.02</td><td>€450.22</td><td>€4,502.24</td><td></td></tr><tr><td>10</td><td>€1,100.00</td><td>€509.51</td><td>€5,095.13</td><td>€56,046.41</td><td></td></tr><tr><td></td><td>Price=</td><td>€1,134.20</td><td>7,900.63</td><td>75,516.84</td><td>&lt;&lt;Sum of t x (t+1) x PV</td></tr><tr><td></td><td>D=</td><td>6.97</td><td></td><td></td><td></td></tr><tr><td></td><td>C=</td><td>33.29</td><td></td><td></td><td></td></tr></table>

The sum of the  $t \times (t + 1) \times PV$  is 75,516.84. If we multiply this by 0.5 and divide by the price of €1,134.20 we arrive at a figure for convexity of 33.29.

The spreadsheet for this exercise can be found here. Please ensure you click on Section 4 and the 4.9 tab at the bottom of the spreadsheet.

You can vary the coupon and duration to note the impact on duration and convexity.

Returning to the example above, we had predicted a fall in price, just using duration, of  $6.45\%$  when yields rose by  $1\%$ . The additional correction from convexity would be:

$$
33.29 \times (0.01 / 1.08) ^ {2} = 0.285 \%
$$

The total change would then be:

$$
-6.45\% +0.285\% = -6.165\%
$$

If the price were €1,134.20, then the estimated price would be:

$$
\epsilon 1, 1 3 4. 2 0 \times (1 + (- 0. 0 6 1 6 5)) = \epsilon 1, 0 6 4. 2 8
$$

This compares to an actual price of €1,064.18, hence the error in estimation is much smaller.
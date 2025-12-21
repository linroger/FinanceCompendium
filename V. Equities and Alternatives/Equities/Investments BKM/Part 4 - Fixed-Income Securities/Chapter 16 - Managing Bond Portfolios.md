# Managing Bond Portfolios

# 16

IN THIS CHAPTER we turn to various fixed-income portfolio strategies, making a distinction between passive and active approaches. Rather than attempting to beat the market by exploiting superior information or insight, a passive investment strategy seeks only to maintain an appropriate risk-return balance given market opportunities. One special case of passive management for fixed-income portfolios is a strategy that attempts to insulate or "immunize" the portfolio from interest rate risk.

In contrast, an active investment strategy attempts to achieve returns more than commensurate with risk. Active fixed-income managers use either interest rate forecasts to predict movements in the entire bond market or some form of intramarket analysis to identify particular sectors of the market or particular bonds that are relatively mispriced.

Because interest rate risk is crucial to formulating both active and passive strategies, we begin by showing how to measure the sensitivity of bond prices to interest rate fluctuations. This sensitivity is called the duration of the bond, and we devote considerable attention to what determines bond duration. We discuss several passive investment strategies and show how duration-matching techniques can be used to immunize the holding-period return of a portfolio from interest rate risk. After examining a broad range of applications of the duration measure, we consider refinements in the way that interest rate sensitivity is measured, focusing on the concept of bond convexity.


Duration is important in formulating active investment strategies as well, and we conclude with a discussion of active fixed-income strategies. These include policies based on interest rate forecasting as well as intramarket analysis that seeks to identify relatively attractive sectors or securities within the fixed-income market.

# 16.1 Interest Rate Risk

You already know that bond prices and yields are inversely related, and that interest rates can fluctuate substantially. As rates rise and fall, bondholders experience capital losses and gains. Therefore, fixed-income investments can be risky, even if the coupon and principal payments are guaranteed, as in the case of Treasury obligations.

Why do bond prices respond to interest rate fluctuations? Remember that in a competitive market, all securities must offer investors fair expected rates of return. If a bond is issued with a  $6\%$  coupon when competitive yields are  $6\%$ , then it will sell at par value. If the market rate rises to  $7\%$ , however, who would be willing to pay par value for a bond offering only a  $6\%$  coupon? The bond price must fall until its expected return increases to the competitive level of  $7\%$ . Conversely, if the market rate falls to  $5\%$ , the  $6\%$  coupon on the bond will be attractive compared to yields on alternative investments. In response, investors eager for that return will bid up the bond price until the expected rate of return at that higher price is no better than the market rate.

# Interest Rate Sensitivity

The sensitivity of bond prices to changes in market interest rates is obviously of great concern to investors. To gain some insight into the determinants of interest rate risk, turn to Figure 16.1, which presents the percentage change in price corresponding to changes in yield to maturity for four bonds that differ according to coupon rate, initial yield to maturity, and time to maturity. All four bonds illustrate that bond prices decrease when yields rise and that the price curve is convex, meaning that decreases in yields have bigger impacts on price than increases in yields of equal magnitude. We summarize these observations in the following two propositions:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a077fe27729e8467b20151dc0039a0aecbf845615fbea8914f11cb9b74dd9fe1.jpg)
Figure 16.1 Change in bond price as a function of change in yield to maturity


1. Bond prices and yields are inversely related: As yields increase, bond prices fall; as yields fall, bond prices rise.
2. An increase in a bond's yield to maturity results in a smaller price change than a decrease in yield of equal magnitude.

Now, compare the interest rate sensitivity of bonds  $A$  and  $B$ , which are identical except for maturity. Figure 16.1 shows that bond  $B$ , which has a longer maturity than bond  $A$ , exhibits greater sensitivity to interest rate changes. This illustrates another general property:

3. Prices of long-term bonds tend to be more sensitive to interest rate changes than prices of short-term bonds.

This is not surprising. If rates increase, for example, the bond is less valuable as its cash flows are discounted at a now-higher rate. The impact of the higher discount rate will be greater as that rate is applied to more-distant cash flows.

While bond  $B$  has six times the maturity of bond  $A$ , it has less than six times the interest rate sensitivity. Although interest rate sensitivity generally increases with maturity, it does so less than proportionally as bond maturity increases. Therefore, our fourth property is that

4. The sensitivity of bond prices to changes in yields increases at a decreasing rate as maturity increases. In other words, interest rate risk is less than proportional to bond maturity.

Bonds  $B$  and  $C$ , which are alike in all respects except for coupon rate, illustrate another point. The lower-coupon bond exhibits greater sensitivity to changes in interest rates. This turns out to be a general property of bond prices:

5. Interest rate risk is inversely related to the bond's coupon rate. Prices of low-coupon bonds are more sensitive to changes in interest rates than prices of high-coupon bonds.

Finally, bonds  $C$  and  $D$  are identical except for the yield to maturity at which the bonds currently sell. Yet bond  $C$ , with a higher yield to maturity, is less sensitive to changes in yields. This illustrates our final property:

6. The sensitivity of a bond's price to a change in its yield is inversely related to the yield to maturity at which the bond currently is selling.

The first five of these general properties were described by Malkiel and are sometimes known as Malkiel's bond-pricing relationships. The last property was demonstrated by Homer and Liebowitz.

Maturity is a major determinant of interest rate risk. However, maturity alone is not sufficient to measure interest rate sensitivity. For example, bonds  $B$  and  $C$  in Figure 16.1 have the same maturity, but the higher-coupon bond has less price sensitivity to interest rate changes. Obviously, interest rate risk depends on more than maturity.

Table 16.1
Prices of  $8 \%$ coupon bond (coupons paid semiannually)

<table><tr><td>Yield to Maturity (APR)</td><td>T = 1 Year</td><td>T = 10 Years</td><td>T = 20 Years</td></tr><tr><td>8\%</td><td>1,000.00</td><td>1,000.00</td><td>1,000.00</td></tr><tr><td>9\%</td><td>990.64</td><td>934.96</td><td>907.99</td></tr><tr><td>Fall in price (\%)*</td><td>0.94\%</td><td>6.50\%</td><td>9.20\%</td></tr></table>

*Equals value of bond at a 9\% yield to maturity divided by value of bond at (the original) 8\% yield, minus 1.

To see why the coupon rate or yield to maturity also affects interest rate sensitivity, let's start with a simple numerical example. Table 16.1 gives bond prices for  $8\%$  semiannual coupon bonds at different yields to maturity and times to maturity,  $T$ . [The interest rates are expressed as annual percentage rates (APRs), meaning that the 6-month yield is doubled to obtain the stated annual yield.] The value of the shortest-term bond falls by less than  $1\%$  when the interest rate increases from  $8\%$  to  $9\%$ . The 10-year bond falls by  $6.5\%$ , and the 20-year bond by over  $9\%$ .

Now look at a similar computation using a zero-coupon bond rather than the  $8\%$  coupon bond. The results are shown in Table 16.2. For each maturity, the price of the zero-coupon bond falls by a greater proportional amount than that of the  $8\%$  coupon bond. Because we know that long-term bonds are more sensitive to interest rate movements, the greater sensitivity of zero-coupon bonds suggests that in some sense they must represent a longer-term investment than an equal-time-to-maturity coupon bond.

In fact, this insight about the effective maturity of a bond can be made mathematically precise. The 20-year  $8\%$  bond makes many coupon payments, most of which come years before the bond's maturity date. Each payment may be considered to have its own "maturity." In the previous chapter, we pointed out that it can be useful to view a coupon bond as a "portfolio" of coupon payments. The effective maturity of the bond is therefore some sort of average of the maturities of all the cash flows. The zero-coupon bond, by contrast, makes only one payment at maturity. Its time to maturity is, therefore, well defined.

Higher-coupon-rate bonds have a higher fraction of value tied to coupons rather than final payment of par value, and so the "portfolio of payments" is more heavily weighted toward the earlier, short-maturity payments, which gives it lower "effective maturity." This explains Malkiel's fifth rule, that price sensitivity falls with coupon rate.

Similar logic explains our sixth rule, that price sensitivity falls with yield to maturity. A higher yield reduces the present value of all of the bond's payments, but more so for more-distant payments. Therefore, at a higher yield, a higher proportion of the bond's value is due to its earlier payments, so effective maturity and interest rate sensitivity are lower.

Table 16.2
Prices of zero-coupon bond (semiannual compounding)

<table><tr><td>Yield to Maturity (APR)</td><td>T = 1 Year</td><td>T = 10 Years</td><td>T = 20 Years</td></tr><tr><td>8\%</td><td>924.56</td><td>456.39</td><td>208.29</td></tr><tr><td>9\%</td><td>915.73</td><td>414.64</td><td>171.93</td></tr><tr><td>Fall in price (\%)*</td><td>0.96\%</td><td>9.15\%</td><td>17.46\%</td></tr></table>

*Equals value of bond at a 9\% yield to maturity divided by value of bond at (the original) 8\% yield, minus 1.

# Duration

To measure the effective maturity of a bond making many payments, we average over the maturity of each of the bond's cash flows. Frederick Macaulay called this average the duration of the bond. Macaulay's duration equals the weighted average of the times to each coupon or principal payment, with weights related to the "importance" of that payment to the value of the bond. Specifically, the weight applied to each payment time is the proportion of the total value of the bond accounted for by that payment, that is, the present value of the payment divided by the bond price.

We define the weight,  $w_{t}$ , associated with the cash flow made at time  $t$  (denoted  $\mathrm{CF}_t$ ) as

$$ w _ {t} = \frac {\mathrm {C F} _ {t} / (1 + y) ^ {t}}{\text {B o n d p r i c e}}
$$ where  $y$  is the bond's yield to maturity. The numerator on the right-hand side of this equation is the present value of the cash flow occurring at time  $t$  while the denominator is the value of all the bond's payments. These weights sum to 1.0 because the sum of the cash flows discounted at the yield to maturity equals the bond price.


Using these values to calculate the weighted average of the times until the receipt of each of the bond's payments, we obtain Macaulay's duration formula:

$$
D = \sum_ {t = 1} ^ {T} t \times w _ {t} \tag {16.1}
$$

Spreadsheet 16.1 uses Equation 16.1 to find the durations of an  $8\%$  coupon and zero-coupon bond, each with two years to maturity and yield to maturity of  $10\%$ , or  $5\%$  per

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td></tr><tr><td>1</td><td></td><td></td><td>Time until</td><td></td><td>PV of CF</td><td></td><td>Column (C)</td></tr><tr><td>2</td><td></td><td></td><td>Payment</td><td></td><td>(Discount rate =</td><td></td><td>times</td></tr><tr><td>3</td><td></td><td>Period</td><td>(Years)</td><td>Cash Flow</td><td>5\% per period)</td><td>Weight*</td><td>Column (F)</td></tr><tr><td>4</td><td>A. 8\% coupon bond</td><td>1</td><td>0.5</td><td>40</td><td>38.095</td><td>0.0395</td><td>0.0197</td></tr><tr><td>5</td><td></td><td>2</td><td>1.0</td><td>40</td><td>36.281</td><td>0.0376</td><td>0.0376</td></tr><tr><td>6</td><td></td><td>3</td><td>1.5</td><td>40</td><td>34.554</td><td>0.0358</td><td>0.0537</td></tr><tr><td>7</td><td></td><td>4</td><td>2.0</td><td>1040</td><td>855.611</td><td>0.8871</td><td>1.7741</td></tr><tr><td>8</td><td>Sum:</td><td></td><td></td><td></td><td>964.540</td><td>1.0000</td><td>1.8852</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>B. Zero-coupon</td><td>1</td><td>0.5</td><td>0</td><td>0.000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>11</td><td></td><td>2</td><td>1.0</td><td>0</td><td>0.000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>12</td><td></td><td>3</td><td>1.5</td><td>0</td><td>0.000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>13</td><td></td><td>4</td><td>2.0</td><td>1000</td><td>822.702</td><td>1.0000</td><td>2.0000</td></tr><tr><td>14</td><td>Sum:</td><td></td><td></td><td></td><td>822.702</td><td>1.0000</td><td>2.0000</td></tr><tr><td>15</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>16</td><td>Semiannual int rate:</td><td>0.05</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>17</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>18</td><td colspan="6">*Weight = Present value of each payment (column E) divided by the bond price.</td><td></td></tr></table>

# Spreadsheet 16.1

Calculating the duration of two bonds

Column sums subject to rounding error.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td></tr><tr><td>1</td><td></td><td></td><td>Time until</td><td></td><td>PV of CF</td><td></td><td>Column (C)</td></tr><tr><td>2</td><td></td><td></td><td>Payment</td><td></td><td>(Discount rate =</td><td></td><td>times</td></tr><tr><td>3</td><td></td><td>Period</td><td>(Years)</td><td>Cash Flow</td><td>5\% per period)</td><td>Weight</td><td>Column (F)</td></tr><tr><td>4</td><td>A. 8\% coupon bond</td><td>1</td><td>0.5</td><td>40</td><td>=D4/(1+$B$16)^B4</td><td>=E4/E$8</td><td>=F4*C4</td></tr><tr><td>5</td><td></td><td>2</td><td>1</td><td>40</td><td>=D5/(1+$B$16)^B5</td><td>=E5/E$8</td><td>=F5*C5</td></tr><tr><td>6</td><td></td><td>3</td><td>1.5</td><td>40</td><td>=D6/(1+$B$16)^B6</td><td>=E6/E$8</td><td>=F6*C6</td></tr><tr><td>7</td><td></td><td>4</td><td>2</td><td>1040</td><td>=D7/(1+$B$16)^B7</td><td>=E7/E$8</td><td>=F7*C7</td></tr><tr><td>8</td><td>Sum:</td><td></td><td></td><td></td><td>=SUM(E4:E7)</td><td>=SUM(F4:F7)</td><td>=SUM(G4:G7)</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>B. Zero-coupon</td><td>1</td><td>0.5</td><td>0</td><td>=D10/(1+$B$16)^B10</td><td>=E10/E$14</td><td>=F10*C10</td></tr><tr><td>11</td><td></td><td>2</td><td>1</td><td>0</td><td>=D11/(1+$B$16)^B11</td><td>=E11/E$14</td><td>=F11*C11</td></tr><tr><td>12</td><td></td><td>3</td><td>1.5</td><td>0</td><td>=D12/(1+$B$16)^B12</td><td>=E12/E$14</td><td>=F12*C12</td></tr><tr><td>13</td><td></td><td>4</td><td>2</td><td>1000</td><td>=D13/(1+$B$16)^B13</td><td>=E13/E$14</td><td>=F13*C13</td></tr><tr><td>14</td><td>Sum:</td><td></td><td></td><td></td><td>=SUM(E10:E13)</td><td>=SUM(F10:F13)</td><td>=SUM(G10:G13)</td></tr><tr><td>15</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>16</td><td>Semiannual int rate:</td><td>0.05</td><td></td><td></td><td></td><td></td><td></td></tr></table>

# Spreadsheet 16.2

Spreadsheet formulas for calculating duration half-year. The present value of each payment is found by discounting at  $5\%$  per period for the number of (semiannual) periods shown in column B. The weight associated with each payment time (column F) is the present value of the payment (column E) divided by the bond price (the sum of the present values in column E).


The numbers in column G are the products of time to payment and payment weight. Each of these products corresponds to one of the terms in Equation 16.1. According to that equation, we can calculate the duration of each bond by adding the numbers in column G.

The duration of the zero-coupon bond is exactly equal to its time to maturity, two years. This makes sense because with only one payment, the average time until payment must be the bond's maturity. In contrast, the 2-year coupon bond has a shorter duration of 1.8852 years.

Spreadsheet 16.2 shows the spreadsheet formulas used to produce the entries in Spreadsheet 16.1. The inputs in the spreadsheet—specifying the cash flows the bond will pay—are given in columns B–D. In column E we calculate the present value of each cash flow by discounting at the assumed yield to maturity, in column F we calculate the weights for Equation 16.1, and in column G we compute the product of time to payment and payment weight. Each of these terms corresponds to one of the values that is summed in Equation 16.1. The sums computed in cells G8 and G14 are therefore the durations of each bond. Using the spreadsheet, you can easily answer several “what if” questions such as the one in Concept Check 16.1.

# Concept Check 16.1

Suppose the interest rate decreases to  $9\%$  as an annual percentage rate. What will happen to the prices and durations of the two bonds in Spreadsheet 16.1?

Duration is a key concept in fixed-income portfolio management for at least three reasons. First, as we have noted, it is a simple summary statistic of the average maturity of the portfolio. Second, it turns out to be an essential tool in immunizing portfolios from interest rate risk. We explore this application in Section 16.3. Third, duration is a measure of the interest rate sensitivity of a portfolio, which we explore here.

We have seen that a bond's price sensitivity to interest rate changes generally increases with maturity. Duration enables us to quantify this relationship. Specifically, it can be shown that when interest rates change, the proportional change in a bond's price can be related to the change in its yield to maturity,  $y$ , according to the rule

$$
\frac {\Delta P}{P} = - D \times \left[ \frac {\Delta (1 + y)}{1 + y} \right] \tag {16.2}
$$

The proportional price change equals the proportional change in 1 plus the bond's yield times the bond's duration.

Practitioners commonly use Equation 16.2 in a slightly different form. They define modified duration as  $D^{*} = D / (1 + y)$ , note that  $\Delta(1 + y) = \Delta y$ , and rewrite Equation 16.2 as

$$
\frac {\Delta P}{P} = - D ^ {*} \Delta y \tag {16.3}
$$

The percentage change in bond price is just the product of modified duration and the change in the bond's yield to maturity. Therefore, modified duration is a natural measure of the bond's exposure to changes in interest rates.

Actually, as we will see below, Equation 16.2, or equivalently, Equation 16.3, is only approximately valid for large changes in the bond's yield. The approximation becomes exact as one considers smaller, or localized, changes in yields.

# Example 16.1 Duration and Interest Rate Risk

Consider the 2-year-maturity,  $8 \%$ coupon bond in Spreadsheet 16.1 making semiannual coupon payments and selling at a price of \$964.540, for a yield to maturity of  $10 \%$ The duration of this bond is 1.8852 years. For comparison, we will also consider a zero- coupon bond with maturity and duration of 1.8852 years. Because the coupon bond makes payments semiannually, it is best to treat one “period” as a half- year. So the duration of each bond is  $1.8852 \times 2 = 3.7704$  (semiannual) periods, with a per- period interest rate of  $5 \%$ The modified duration of each bond is therefore  $3.7704 / 1.05 = 3.591$  semiannual periods.

Suppose the semiannual interest rate increases from  $5\%$  to  $5.01\%$ . According to Equation 16.3, the bond prices should fall by

$$
\Delta P / P = - D ^ {*} \Delta y = - 3.591 \times .01 \% = -.03591 \%
$$

4 Using calculus, one can show that modified duration is proportional to the derivative of the bond's price with respect to changes in the bond's yield. For small changes in yield, Equation 16.3 can be restated as

$$
D ^ {*} = - \frac {1}{P} \frac {d P}{d y}
$$

As such, it gives a measure of the slope of the bond price curve only in the neighborhood of the current price. In fact, Equation 16.3 can be derived by differentiating the following bond pricing equation with respect to  $y$ :

$$
P = \sum_ {t = 1} ^ {T} \frac {\mathrm {C F} _ {t}}{(1 + y) ^ {t}}
$$ where  $\mathrm{CF}_t$  is the cash flow paid to the bondholder at date  $t$ ;  $\mathrm{CF}_t$  represents either a coupon payment before maturity or final coupon plus par value at the maturity date.


Now compute the price change of each bond directly. The coupon bond, which initially sells at  \$964.540, falls to\$ 964.1942 when its yield increases to 5.01\%, which is a percentage decline of .0359\%. The zero-coupon bond initially sells for  $1,000/1.05^{3.7704} = 831.9704$ . At the higher yield, it sells for  $1,000/1.0501^{3.7704} = 831.6717$ . This price also falls by .0359\%.

We conclude that bonds with equal durations do in fact have equal interest rate sensitivity and that (at least for small changes in yields) the percentage price change is the modified duration times the change in yield.

# Concept Check 16.2 a. In Concept Check 16.1, you calculated the price and duration of a 2-year-maturity,  $8\%$  coupon bond making semiannual coupon payments when the market interest rate is  $9\%$ . Now suppose the interest rate increases to  $9.05\%$ . Calculate the new value of the bond and the percentage change in the bond's price.

b. Calculate the percentage change in the bond's price predicted by the duration formula in Equation 16.2 or 16.3. Compare this value to your answer for part (a).

# What Determines Duration?

Malkiel's bond price relations, which we laid out in the previous section, characterize the determinants of interest rate sensitivity. Duration allows us to quantify that sensitivity. For example, if we wish to speculate on interest rates, duration tells us how strong a bet we are making. Conversely, if we wish to remain "neutral" on rates, and simply match the interest rate sensitivity of a chosen bond-market index, duration allows us to measure that sensitivity and mimic it in our own portfolio. For these reasons, it is crucial to understand the determinants of duration. Therefore, we present several "rules" that summarize most of its important properties. These rules are also illustrated in Figure 16.2, where durations of bonds of various coupon rates, yields to maturity, and times to maturity are plotted.

We have already established the following.

Rule 1 for Duration The duration of a zero-coupon bond equals its time to maturity.

We have also seen that a coupon bond has a lower duration than a zero with equal maturity because coupons early in the bond's life lower the bond's weighted average time until payments. This illustrates another general property:

Rule 2 for Duration Holding maturity constant, a bond's duration is lower when the coupon rate is higher.

This property corresponds to Malkiel's fifth relationship and is due to the impact of early coupon payments on the weighted-average maturity of a bond's payments. The higher these coupons, the higher the weights on the early payments and the lower the weighted average maturity of the payments. A lower proportion of the bond's value is attributable to the (earlier) coupon payments, whose values are relatively insensitive to yields, rather than the (later and more yield-sensitive) repayment of par value. Compare the plots in Figure 16.2 of the durations of the  $3\%$  and  $15\%$  coupon bonds with identical yields of  $15\%$ . The plot of the duration of the  $15\%$  coupon bond is uniformly below that of the  $3\%$  coupon bond.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/f602559055753de2dba3ff0cb25822699336a702294fc50dffaf1053f740a528.jpg)
Figure 16.2 Bond duration versus bond maturity


Rule 3 for Duration Holding the coupon rate constant, duration generally increases with its time to maturity. Duration always increases with maturity for bonds selling at par or at a premium to par.

This property of duration corresponds to Malkiel's third relationship, and it is fairly intuitive. What is surprising is that duration need not always increase with time to maturity. It turns out that for some deep-discount bonds (such as the  $3\%$  coupon bond in Figure 16.2), duration may eventually fall with increases in maturity. However, for virtually all traded bonds, it is safe to assume that duration increases with maturity.

Notice in Figure 16.2 that the maturity and duration of the zero-coupon bond are equal. However, for coupon bonds, duration increases by less than a year with a year's increase in maturity.

Figure 16.2 shows that the two  $15\%$  coupon bonds have different durations when they sell at different yields to maturity. The lower-yield bond has longer duration. This makes sense because at lower yields, more distant payments have relatively greater present values and account for a greater share of total value. Thus, in the weighted-average calculation, the distant payments receive greater weights, which results in a higher duration. This establishes rule 4:

Rule 4 for Duration Holding other factors constant, the duration of a coupon bond is higher when the bond's yield to maturity is lower.

As we noted above, the intuition for this property is that while a higher yield reduces the present value of all of the bond's payments, it reduces the value of more-distant payments by a greater proportional amount. Therefore, at higher yields, a higher fraction of the total value of the bond lies in its earlier payments, thereby reducing effective maturity. Rule 4, which is the sixth bond-pricing relationship above, applies to coupon bonds. For zeros, of course, duration equals time to maturity, regardless of the yield to maturity.

Finally, we present a formula for the duration of a perpetuity. This rule is derived from and consistent with the formula for duration given in Equation 16.1 but may be easier to use for infinitely lived bonds.

Rule 5 for Duration The duration of a level perpetuity is

$$
\text {D u r a t i o n} = \frac {1 + y}{y} \tag {16.4}
$$

For example, at a 10\% yield, the duration of a perpetuity that pays \100 once a year forever is 1.10 / .10 = 11 years, but at an 8\% yield it is 1.08 / .08 = 13.5 years.


# Concept Check 16.3

Show that the duration of the perpetuity increases as the interest rate decreases in agreement with rule 4.

The formula for the duration of a perpetuity makes it obvious that maturity and duration can differ substantially. The maturity of the perpetuity is infinite, whereas its duration at a  $10\%$  yield is only 11 years.

Figure 16.2 shows that as their maturities become ever longer, the durations of the two coupon bonds with yields of  $15\%$  both converge to the duration of the perpetuity with the same yield, 7.67 years.

The equations for the durations of coupon bonds are tedious, and spreadsheets like Spreadsheet 16.1 are cumbersome to modify for different maturities and coupon rates. Moreover, they assume that the bond is at the beginning of a coupon payment period. Fortunately, spreadsheet programs such as Excel come with built-in formulas that can accommodate bonds between coupon payment dates. Spreadsheet 16.3, which illustrates how to use Excel to find duration, uses many of the same conventions as the bond-pricing spreadsheets described in Chapter 14.

# Spreadsheet 16.3

Using Excel functions to compute duration

<table><tr><td></td><td>A</td><td>B</td><td>C</td></tr><tr><td>1</td><td>Inputs</td><td></td><td>Formula in column B</td></tr><tr><td>2</td><td>Settlement date</td><td>1/1/2000</td><td>=DATE(2000,1,1)</td></tr><tr><td>3</td><td>Maturity date</td><td>1/1/2002</td><td>=DATE(2002,1,1)</td></tr><tr><td>4</td><td>Coupon rate</td><td>0.08</td><td>0.08</td></tr><tr><td>5</td><td>Yield to maturity</td><td>0.10</td><td>0.10</td></tr><tr><td>6</td><td>Coupons per year</td><td>2</td><td>2</td></tr><tr><td>7</td><td></td><td></td><td></td></tr><tr><td>8</td><td>Outputs</td><td></td><td></td></tr><tr><td>9</td><td>Macaulay duration</td><td>1.8852</td><td>=DURATION(B2,B3,B4,B5,B6)</td></tr><tr><td>10</td><td>Modified duration</td><td>1.7955</td><td>=MDURATION(B2,B3,B4,B5,B6)</td></tr></table>

<table><tr><td></td><td colspan="5">Coupon Rates (per Year)</td></tr><tr><td>Maturity (years)</td><td>1\%</td><td>2\%</td><td>4\%</td><td>6\%</td><td>8\%</td></tr><tr><td>1</td><td>0.997</td><td>0.995</td><td>0.990</td><td>0.985</td><td>0.981</td></tr><tr><td>5</td><td>4.863</td><td>4.742</td><td>4.533</td><td>4.361</td><td>4.218</td></tr><tr><td>10</td><td>9.301</td><td>8.762</td><td>7.986</td><td>7.454</td><td>7.067</td></tr><tr><td>20</td><td>16.051</td><td>14.026</td><td>11.966</td><td>10.922</td><td>10.292</td></tr><tr><td>Infinite (perpetuity)</td><td>13.000</td><td>13.000</td><td>13.000</td><td>13.000</td><td>13.000</td></tr></table>

# Table 16.3

Bond durations (yield to maturity  $= 8\%$  bond equivalent yield; semiannual coupons)

The settlement date (i.e., today's date) and maturity date are entered in cells B2 and B3 using Excel's date function, DATE(year, month, day). The coupon and maturity rates are entered as decimals in cells B4 and B5, and the payment periods per year are entered in cell B6. Macaulay and modified duration appear in cells B9 and B10. The spreadsheet confirms that the duration of the bond we looked at in Spreadsheet 16.1 is indeed 1.8852 years. For this 2-year-maturity bond, we don't have a specific settlement date. We arbitrarily set the settlement date to January 1, 2000, and use a maturity date precisely two years later.


# Concept Check 16.4

Use Spreadsheet 16.3 to test some of the rules for duration presented a few pages ago. What happens to duration when you change the coupon rate of the bond? The yield to maturity? The maturity? What happens to duration if the bond pays its coupons annually rather than semiannually? Why intuitively is duration shorter with semiannual coupons?

Durations can vary widely among traded bonds. Table 16.3 presents durations computed from Spreadsheet 16.3 for several bonds all paying semiannual coupons and yielding  $4\%$  per half-year. Notice that duration decreases as coupon rates increase, and increases with time to maturity. According to Table 16.3 and Equation 16.2, if the interest rate increases from  $8\%$  to  $8.1\%$ , the  $6\%$  coupon 20-year bond falls in value by about  $10.922 \times .1\% / 1.04 = 1.05\%$ , whereas the  $10\%$  coupon 1-year bond falls by only  $0.976 \times .1\% / 1.04 = 0.094\%$ . Notice also from Table 16.3 that duration is independent of coupon rate only for perpetuities.

# 16.2 Convexity

As a measure of interest rate sensitivity, duration clearly is a key tool in fixed-income portfolio management. Yet the duration rule for the impact of interest rates on bond prices is only an approximation. Equation 16.2, or its equivalent, Equation 16.3, which we repeat here, states that the percentage change in the value of a bond approximately equals the product of modified duration times the change in the bond's yield:

$$
\frac {\Delta P}{P} = - D ^ {*} \Delta y
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/6e74fec372abadb2372274e6bfb6eb676db7f7de26b6310b18d25fa79fbc44e9.jpg)
Figure 16.3 Bond price convexity: 30-year-maturity,  $8\%$  coupon bond; initial yield to maturity  $= 8\%$

In other words, the percentage price change is directly proportional to the change in the bond's yield. If this were exactly so, however, a graph of the percentage change in bond price as a function of the change in its yield would plot as a straight line, with slope equal to  $-D^{*}$ . Yet Figure 16.1 makes it clear that the relationship between bond prices and yields is not linear. The duration rule is a good approximation for small changes in bond yield, but it is less accurate for larger changes.

Figure 16.3 illustrates this point. Like Figure 16.1, the figure presents the percentage change in bond price in response to a change in the bond's yield to maturity. The curved line is the per centage price change for a 30-year-maturity,  $8\%$  annual payment coupon bond, selling at an initial yield to maturity of  $8\%$ . The straight line is the percentage price change predicted by the duration rule. The slope of the straight line is the modified duration of the bond at its initial yield to maturity. The modified duration of the bond at this yield is 11.26 years, so the straight line is a plot of  $-D^{*}\Delta y = -11.26 \times \Delta y$ . The two plots are tangent at the initial yield. Thus, for small changes in the bond's yield to maturity, the duration rule is quite accurate. However, for larger changes, there is progressively more "daylight" between the two plots, demonstrating that the duration rule becomes progressively less accurate.


Figure 16.3 shows that the duration approximation (the straight line) always understates the value of the bond; it underestimates the increase in bond price when the yield falls, and it overestimates the decline in price when the yield rises. This is due to the curvature of the true price-yield relationship. Curves with shapes like that of the price-yield relationship are said to be convex, and the curvature of the price-yield curve is called the convexity of the bond.

We measure convexity as the rate of change of the slope of the price-yield curve, expressed as a fraction of the bond price. The convexity of noncallable bonds such as that

We pointed out in footnote 4 that Equation 16.3 for modified duration can be written as the first derivative (i.e., the slope) of the bond's price with respect to changes in its yield, scaled by the current price:  $D^{*} = 1 / P \times dP / dy$ . Similarly, convexity equals the second derivative (the rate of change of the slope) of the price-yield curve divided by bond price: Convexity  $= 1 / P \times d^{2}P / dy^{2}$ . The formula for the convexity of a bond with a maturity of  $T$  years making annual coupon payments is

$$
\text {C o n v e x i t y} = \frac {1}{P \times (1 + y) ^ {2}} \sum_ {t = 1} ^ {T} \left[ \frac {\mathrm {C F} _ {t}}{(1 + y) ^ {t}} \left(t ^ {2} + t\right) \right]
$$ where  $\mathrm{CF}_t$  is the cash flow paid to the bondholder at date  $t$ ;  $\mathrm{CF}_t$  represents either a coupon payment before maturity or final coupon plus par value at the maturity date.


in Figure 16.3 is positive: The slope increases (i.e., becomes less negative) at higher yields. As a practical matter, you can view bonds with higher convexity as exhibiting higher curvature in the price-yield relationship.

Convexity allows us to improve the duration approximation for bond price changes. Accounting for convexity, Equation 16.3 can be modified as follows:

$$
\frac {\Delta P}{P} = - D ^ {*} \Delta y + 1 / 2 \times \text {C o n v e x i t y} \times (\Delta y) ^ {2} \tag {16.5}
$$

The first term on the right-hand side is the same as the duration rule, Equation 16.3. The second term is the modification for convexity. For a bond with positive convexity, the second term is positive, regardless of whether the yield rises or falls. This insight corresponds to our observation that the duration rule always underestimates the new value of a bond following a change in its yield. Of course, if the change in yield is small, the convexity term, which is multiplied by  $(\Delta y)^2$  in Equation 16.5, will be extremely small and will add little to the duration approximation. Thus, convexity is more important when potential interest rate changes are large.

# Example 16.2 Convexity

The bond in Figure 16.3 has a 30-year maturity and an  $8 \%$ coupon, and sells at an initial yield to maturity of  $8 \%$ Because the coupon rate equals yield to maturity, the bond sells at par value, or \$1,000. The modified duration of the bond at its initial yield is 11.26 years, and its convexity is 212.4, which can be verified using the formula in footnote 7. (You can find a spreadsheet to calculate the convexity of a 30- year bond in Connect or through your course instructor.) If the bond’s yield increases from  $8 \%$ to  $10 \%$ , the bond price will fall to \$811.46, a decline of  $18.85 \%$ . The duration rule, Equation 16.2, would predict a price decline of

$$
\frac {\Delta P}{P} = - D ^ {*} \Delta y = - 11.26 \times .02 = -.2252, \text {or} - 22.52 \%
$$ which is considerably more than the bond price actually falls. The duration-with-convexity rule, Equation 16.4, is far more accurate:


$$
\begin{array}{l} \frac {\Delta P}{P} = - D ^ {*} \Delta y + \frac {1}{2} \times \text {C o n v e x i t y} (\Delta y) ^ {2} \\ = -11.26 \times .02 + \frac{1}{2} \times 212.4 \times (.02)^{2} = -.1827, \text{or} -18.27\% \\ \end{array}
$$ which is much closer to the actual change in bond price. (Notice that when we use Equation 16.5, we must express interest rates as decimals rather than percentages. The change in rates from  $8\%$  to  $10\%$  is represented as  $\Delta y = .02$ .)


If the change in yield were smaller, say,  $1\%$ , convexity would matter less. The price of the bond actually would fall to \$988.85, a decline of  $1.115\%$ . Without accounting for convexity, we would predict a price decline of

$$
\frac {\Delta P}{P} = - D ^ {*} \Delta y = - 11.26 \times .001 = -.01126, \text {or} - 1.126 \%
$$

Accounting for convexity, we get almost the precisely correct answer:

$$
\frac {\Delta P}{P} = - 11.26 \times .001 + \frac {1}{2} \times 212.4 \times (.001) ^ {2} = -.01115, \text {or} - 1.115 \%
$$

Nevertheless, the duration rule is quite accurate in this case, even without accounting for convexity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/001ffb5800788946e7e5334c916b319b4a830c8961c82735b819376c73a2e2b1.jpg)
Figure 16.4 Convexity of two bonds

# Why Do Investors Like Convexity?

Convexity is generally considered a desirable trait. Bonds with greater curvature gain more in price when yields fall than they lose when yields rise. For example, in Figure 16.4 bonds  $A$  and  $B$  have the same duration at the initial yield. The plots of their proportional price changes as a function of interest rate changes are tangent, meaning that their sensitivities to changes in yields at that point are equal. However, bond  $A$  is more convex than bond  $B$ . It enjoys greater price increases and smaller price decreases when interest rates fluctuate. If interest rates are volatile, this is an attractive asymme try that increases the expected return on the bond because bond  $A$  will benefit more from rate decreases and suffer less from rate increases. Of course, if convexity is desirable, it will not be available for free: Investors will have to pay higher prices and accept lower yields to maturity on bonds with greater convexity.


# Duration and Convexity of Callable Bonds

Figure 16.5 depicts the price-yield curve for a callable bond. When interest rates are high, the curve is convex, as it would be for a straight bond. For example, at an interest rate of  $10\%$ , the price-yield curve lies above its tangency line. But at low rates, the call price acts as a ceiling on bond value because if the bond ever sold for more than its call price, the issuer would benefit by calling it. In this region, we say that the bond is subject to price compression—its value is "compressed" to the call price. For example, at an interest rate of  $5\%$ , the price-yield curve lies below its tangency line, and the curve is said to have negative convexity.[9]

In the region of negative convexity, the price-yield curve exhibits an unattractive asymmetry. Interest rate increases result in a larger price decline than the price gain corresponding to an interest rate decrease of equal magnitude. The asymmetry arises from the fact that the bond issuer has retained an option to call back the bond. If rates rise, the bondholder loses, as would be the case for a straight bond. But if rates fall, rather than reaping a large capital gain, the investor may have the bond called back. The bondholder is thus in a "heads I lose, tails I don't win" position. Of course, the bondholder was compensated for this unattractive situation when the bond was purchased. Callable bonds sell at lower initial prices (higher initial yields) than otherwise comparable straight bonds.

The effect of negative convexity is highlighted in Equation 16.5. When convexity is negative, the second term on the right-hand side is necessarily negative, meaning that bond price performance will be worse than would be predicted by the duration approximation. However, callable bonds, or, more generally, bonds with "embedded options," are difficult to analyze in terms of Macaulay's duration. This is because in the presence of such options, the future cash flows provided by the bonds are no longer known. If the bond may be called, for example, its cash flow stream may be terminated and its principal repaid earlier than was initially anticipated. Because cash flows are random (they depend on the realization of interest rates), we can hardly take a weighted average of times until each future cash flow, as would be necessary to compute Macaulay's duration.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0595543a07fb619dc87d418898760cfc4b12c8c07e3e0aedbcf8509cb1d09df6.jpg)
Figure 16.5 Price-yield curve for a callable bond


The convention on Wall Street is to compute the effective duration of bonds with embedded options. Effective duration cannot be computed with a simple formula involving known cash flows such as Equation 16.1. Instead, more complex bond valuation approaches that account for the embedded options are used, and effective duration is defined as the proportional change in the bond price per unit change in market interest rates:

$$
\text {E f f e c t i v e} = - \frac {\Delta P / P}{\Delta r} \tag {16.6}
$$

This equation seems merely like a slight manipulation of the modified duration formula in Equation 16.3. However, there are important differences. First, note that we do not compute effective duration relative to a change in the bond's own yield to maturity. (The denominator is  $\Delta r$ , not  $\Delta y$ .) This is because for bonds with embedded options, which may be called early, maturity is no longer fixed, and so the yield to maturity becomes a less relevant statistic. Instead, we calculate price change relative to a shift in the level of the term structure of interest rates. Second, the effective duration formula relies on a pricing methodology that accounts for embedded options. This means that the effective duration will be a function of variables that would not matter to conventional duration, for example, the volatility of interest rates. In contrast, modified or Macaulay duration can be computed directly from the promised bond cash flows and yield to maturity.

# Example 16.3 Effective Duration

Suppose that a callable bond with a call price of \$1,050 is selling today for \$980. If the yield curve shifts up by .5\%, the bond price will fall to \$930. If it shifts down by .5\%, the bond price will rise to \$1,010. To compute effective duration, we compute

$\Delta r =$  Assumed increase in rates - Assumed decrease in rates

$= .5\% - (-.5\%) = 1\% = .01$

$\Delta P =$  Price at .5\% increase in rates - Price at .5\% decrease in rates

= $930 - $1,010 = -80

Then the effective duration of the bond is

Effective duration  $= -\frac{\Delta P / P}{\Delta r} = -\frac{-\80 / \$ 980}{.01} = 8.16  years

In other words, the bond price changes by  $8.16\%$  for a 1 percentage point swing in rates around current values.


# Concept Check 16.5

What are the differences among Macaulay duration, modified duration, and effective duration?

# Duration and Convexity of Mortgage-Backed Securities

In practice, the biggest market for which call provisions are important is the market for mortgage-backed securities. As described in Chapter 1, lenders that originate mortgage loans commonly sell them to federal agencies such as the Federal National Mortgage Association (FNMA, or Fannie Mae) or the Federal Home Loan Mortgage Corporation (FHLMC, or Freddie Mac). The original borrowers (the homeowners) continue to make their monthly payments to their lenders, but the lenders pass these payments along to the agency that has purchased the loan. In turn, the agencies may combine many mortgages into a pool called a mortgage-backed security, and then sell that security in the fixed-income market. These securities are called pass-throughs because the cash flows from the borrowers are first passed through to the agency (Fannie Mae or Freddie Mac) and then passed through again to the ultimate purchaser of the mortgage-backed security.

As an example, suppose that ten 30-year mortgages, each with principal value of  \$100,000, are grouped together into a million-dollar pool. If the mortgage rate is 8\%$ , then the monthly payment on each loan would be 733.76. (The interest component of the first payment is .08 × 1/12 × $100,000 = $666.67; the remaining \$67.09 is "amortization," or scheduled repayment of principal. In later periods, with a lower principal balance, less of the monthly payment goes to interest and more goes to amortization.) The owner of the mortgage-backed security would receive \$7,337.60, the total payment from the 10 mortgages in the pool.[10]

But the homeowner has the right to prepay the loan at any time. For example, if mortgage rates go down, the homeowner may decide to take a new loan at a lower rate, using the proceeds to pay off the original loan. The right to prepay the loan is, of course, precisely analogous to the right to refund a callable bond. The call price for the mortgage is simply the remaining principal balance on the loan. Therefore, the mortgage-backed security is best viewed as a pool of callable amortizing loans.


Mortgage-backs are subject to the same negative convexity as other callable bonds. When rates fall and homeowners prepay their mortgages, the repayment of principal is passed through to the investors. Rather than enjoying capital gains on their investment, they simply receive the outstanding principal balance on the loan. Therefore, the value of the mortgage-backed security as a function of interest rates, presented in Figure 16.6, looks much like the plot for a callable bond.

There are some differences between the mortgage-backs and callable corporate bonds, however. For example, you will commonly find mortgage-backs selling for more than their principal balance. This is because homeowners do not refinance their loans as soon as interest rates drop. Some homeowners do not want to incur the costs or hassles of refinancing unless the benefit is great enough, others may decide not to refinance if they are planning to move shortly, and others may simply be unsophisticated in making the refinancing decision. Therefore, while the mortgage-backed security exhibits negative convexity at low rates, its implicit call price (the principal balance on the loan) is not a firm ceiling on its value.

Simple mortgage-backs have also given rise to a rich set of mortgage-backed derivatives. For example, a CMO (collateralized mortgage obligation) further redirects the cash flow stream of the mortgage-backed security to several classes of derivative securities called "tranches." These tranches may be designed to allocate interest rate risk to investors most willing to bear that risk.[11]

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/74eabc0b8cbe00e4dedb9a1ff1d62a03440e93e42363129a28a27836ddfbd569.jpg)
Figure 16.6 Price-yield curve for a mortgage-backed security

The following table is an example of a very simple CMO structure. The underlying mortgage pool is divided into three tranches, each with a different effective maturity and therefore interest rate risk exposure. Suppose the original pool has \$10 million of 15-year-maturity mortgages, each with an interest rate of  $10.5\%$ , and is subdivided into three tranches as follows:

<table><tr><td>Tranche A = \$4 million principal</td><td>“Short-pay” tranche</td></tr><tr><td>Tranche B = \$3 million principal</td><td>“Intermediate-pay” tranche</td></tr><tr><td>Tranche C = 3 million principal</td><td>“Long-pay” tranche</td></tr></table>

Suppose further that in each year,  $8\%$  of outstanding loans in the pool prepay. Then total cash flows in each year to the whole mortgage pool are given in Panel A of Figure 16.7.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/b1192beedf0c1f359b3f78ed1d877d468ecae689f53a7360e5cd169e54adeac3.jpg)
A: Whole Mortgage

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/95ced3dfe2ea085203fbb224ac7bfbd563e4690dc72195183241e9cc13c1da3d.jpg)
B:Tranche A

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/992150c272bb6acdfa57d46825048e980207745012911f178e0a98af6af6499a.jpg)
C:Tranche B

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/04818c1b2fa3b95de16f4d1b979741704f1a2c68091ca5efd112bb81865c0557.jpg)
D:Tranche C
Figure 16.7 Panel A: Cash flows to whole mortgage pool; Panels B-D: Cash flows to three tranches

Total payments shrink by  $8\%$  each year, as that percentage of the loans in the original pool is paid off. The light portions of each bar represent interest payments, while the dark portions are principal payments, including both loan amortization and prepayments.

In each period, each tranche receives the interest owed it based on the promised coupon rate and outstanding principal balance. But initially, all principal payments, both prepayments and amortization, go to tranche A (Figure 16.7, Panel B). Notice from Panels C and D that tranches B and C receive only interest payments until tranche A is retired. Once tranche A is fully paid off, all principal payments go to tranche B. Finally, when B is retired, all principal payments go to C. This makes tranche A a "short-pay" class, with the lowest effective duration, while tranche C is the longest-pay tranche. This is therefore a relatively simple way to allocate interest rate risk among tranches.

Many variations on the theme are possible and employed in practice. Different tranches may receive different coupon rates. Some tranches may be given preferential treatment in terms of uncertainty over mortgage prepayment speeds. Complex formulas may be used to dictate the cash flows allocated to each tranche. In essence, the mortgage pool is treated as a source of cash flows that can be reallocated to different investors in accordance with their different tastes.

# 16.3 Passive Bond Management

Passive managers take bond prices as fairly set and seek to control only the risk of their fixed-income portfolio. Two broad classes of passive management are pursued in the fixed-income market. The first is an indexing strategy that attempts to replicate the performance of a given bond index. The second is known as immunization, which is used widely by financial institutions such as insurance companies and pension funds to shield overall financial status from exposure to interest rate fluctuations.

Although indexing and immunization strategies are alike in that they accept market prices as correctly set, they are very different in terms of risk exposure. A bond-index portfolio will have the same risk-reward profile as the bond market index to which it is tied. In contrast, immunization strategies seek to establish a virtually zero-risk profile, in which interest rate movements have no impact on the value of the firm. We discuss both strategies in this section.

# Bond-Index Funds

In principle, bond market indexing is similar to stock market indexing. The idea is to create a portfolio that mirrors the composition of an index that measures the broad market. In the U.S. equity market, for example, the S&P 500 is the most commonly used index for stock-index funds, and these funds simply buy shares of each firm in the S&P 500 in proportion to the market value of outstanding equity. A similar strategy is used for bond-index funds, but as we shall see shortly, several modifications are required because of difficulties unique to the bond market and its indexes.

Three major indexes of the U.S. bond market are the Bloomberg Barclays Capital U.S. Aggregate Bond Index, the Citigroup U.S. Broad Investment Grade (USBIG) Index, and the Bank of America/Merrill Lynch Domestic Master index. All are market-value-weighted indexes of total returns. All three include government, corporate, mortgage-backed, and Yankee bonds in their universes. (Yankee bonds are dollar-denominated, SEC-registered bonds of foreign issuers sold in the United States.)

One challenge in constructing an indexed bond portfolio arises from the fact that these indexes include thousands of securities, making it almost impossible to purchase each security in the index in proportion to its market value. Moreover, many bonds are very thinly traded, meaning that identifying their owners and purchasing the securities at a fair market price can be difficult.

Bond-index funds also face more difficult rebalancing problems than do stock-index funds. Bonds are continually dropped from the index as they approach maturity. Moreover, as new bonds are issued, they are added to the index. Therefore, in contrast to equity indexes, the securities used to compute bond indexes constantly change. As they do, the manager must update or rebalance the portfolio to maintain a close match between the composition of the portfolio and the bonds included in the index. The fact that bonds generate considerable interest income that must be reinvested further complicates the task.

In practice, it is infeasible to precisely replicate the broad bond indexes. Instead, a stratified sampling or cellular approach is often pursued. Figure 16.8 illustrates the idea. First, the bond market is stratified into several subclasses. Figure 16.8 shows a simple two-way breakdown by maturity and issuer; in practice, however, criteria such as the bond's coupon rate or the credit risk of the issuer also would be used to form cells. Bonds falling within each cell are then deemed to be reasonably homogeneous. Next, the percentages of the entire universe (i.e., the bonds included in the relevant index) falling within each cell are computed and reported, as we have done for a few of the cells in Figure 16.8. Finally, the portfolio manager establishes a bond portfolio with representation for each cell that matches the weight of that cell in the bond universe. In this way, the characteristics of the portfolio in terms of maturity, coupon rate, credit risk, industrial representation, and so on will match the characteristics of the index, and the performance of the portfolio likewise should closely match the index.

Both mutual funds and exchange-traded funds that track the broad bond market are available to retail investors. For example, Vanguard's Total Bond Market Index Fund (ticket VBMFX) and Barclays Aggregate Bond Fund iShare (ticket AGG) both track the broad U.S. bond market.

<table><tr><td>Sector
Term to Maturity</td><td>Treasury</td><td>Agency</td><td>Mortgage-Backed</td><td>Industrial</td><td>Finance</td><td>Utility</td><td>Yankee</td></tr><tr><td>&lt;1 year</td><td>12.1\%</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1–3 years</td><td>5.4\%</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3–5 years</td><td></td><td></td><td>4.1\%</td><td></td><td></td><td></td><td></td></tr><tr><td>5–7 years</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7–10 years</td><td></td><td>0.1\%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10–15 years</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>15–30 years</td><td></td><td></td><td>9.2\%</td><td></td><td></td><td>3.4\%</td><td></td></tr><tr><td>30+ years</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

Figure 16.8 Stratification of bonds into cells

With the S&P 500 providing a  $16\%$  rate of return, 2012 was a good year for the stock market, and this performance helped boost the balance sheets of U.S. pension funds. Yet despite the increase in the value of their assets, the total estimated pension deficit of 400 large U.S. companies rose by nearly \$80 billion, and many of these firms entered 2013 needing to shore up their pension funds with billions of dollars of additional cash. Ford Motor Co. alone predicted that it would contribute \$5 billion to its fund.

How could this happen? Blame the decline in interest rates during the year that were in part the force behind the stock market gains. As rates fell, the present value of pension obligations to retirees rose even faster than the value of the assets backing those promises. It turns out that the value of pension liabilities is more sensitive to interest rate changes than the value of the typical assets held in those funds. So even though falling rates tend to pump up asset returns, they pump up liabilities even more. In other words, the duration of fund investments is shorter than the duration of fund obligations. This duration mismatch makes funds vulnerable to interest rate declines.


Why don't funds better match asset and liability durations? One reason is that fund managers are often evaluated based on their performance relative to standard bond market indexes. Those indexes tend to have far shorter durations than pension fund liabilities. So to some extent, managers may be keeping their eyes on the wrong ball, one with the wrong interest rate sensitivity.

Source: These estimates appear in Mike Ramsey and Vipal Monga, "Low Rates Force Companies to Pour Cash into Pensions," The Wall Street Journal, February 3, 2013.

# Immunization

In contrast to indexing strategies, many institutions try to insulate their portfolios from interest rate risk altogether. Generally, there are two ways of viewing this risk. Some institutions, such as banks, are concerned with protecting current net worth or net market value against interest rate fluctuations. Others, such as pension funds, may face an obligation to make payments after a given number of years. These investors are more concerned with protecting the future values of their portfolios.

What is common to all investors, however, is interest rate risk. The net worth of the firm or the ability to meet future obligations fluctuates with interest rates. Immunization techniques refer to strategies designed to shield overall financial status from interest rate risk.

Many banks and thrift institutions have a natural mismatch between asset and liability maturities. Bank liabilities are primarily the deposits owed to customers, most of which are short-term and, consequently, have low duration. Bank assets by contrast are composed largely of outstanding commercial and consumer loans or mortgages, which have longer duration. Therefore, when interest rates increase unexpectedly, banks can suffer decreases in net worth—their assets fall in value by more than their liabilities.

Similarly, a pension fund may have a mismatch between the interest rate sensitivities of the assets held in the fund and the present value of its liabilities—the promise to make payments to retirees. The nearby box illustrates the dangers that pension funds face when they neglect to consider the interest rate exposure of both assets and liabilities. For example, in some recent years, pension funds lost ground despite the fact that they enjoyed excellent investment returns. As interest rates fell, the value of their liabilities grew even faster than the value of their assets. The lesson is that funds should match the interest rate exposure of assets and liabilities. In other words, the financial manager might want to immunize the fund against interest rate volatility.

Pension funds are not alone in this concern. Any institution with a future fixed obligation might consider immunization a reasonable risk management policy. Insurance companies, for example, also pursue immunization strategies. In fact, the tactic of immunization was introduced by F. M. Redington, $^{12}$  an actuary for a life insurance company. The idea is that duration-matched assets and liabilities let the asset portfolio meet the firm's obligations despite interest rate movements.


Consider, for example, an insurance company that issues a guaranteed investment contract, or GIC, for  \$10,000. (Essentially, GICs are zero-coupon bonds issued by the insurance company to its customers. They are popular products for individuals' retirement-savings accounts.) If the GIC has a 5-year maturity and a guaranteed interest rate of 8\%$ , the insurance company promises to pay 10,000  $\times$  1.08 $^5$  = 14,693.28 in five years.

Suppose that the insurance company chooses to fund its obligation with 10,000 of 8\% annual coupon bonds, selling at par value, with six years to maturity. As long as the market interest rate stays at 8\%, the company has fully funded the obligation, as the present value of the obligation exactly equals the value of the bonds.

Table 16.4, Panel A, shows that if interest rates remain at  $8\%$ , the accumulated funds from the bond will grow to exactly the 14,693.28 obligation. Over the 5-year period, each

<table><tr><td>Payment Number</td><td>Years Remaining until Obligation</td><td>Accumulated Value of Invested Payment</td><td></td><td></td></tr><tr><td colspan="5">A. Rates Remain at 8\%</td></tr><tr><td>1</td><td>4</td><td>800 \times (1.08)^{4}</td><td>=</td><td>$1,088.39</td></tr><tr><td>2</td><td>3</td><td>800 \times (1.08)^{3}</td><td>=</td><td>1,007.77</td></tr><tr><td>3</td><td>2</td><td>800 \times (1.08)^{2}</td><td>=</td><td>933.12</td></tr><tr><td>4</td><td>1</td><td>800 \times (1.08)^{1}</td><td>=</td><td>864.00</td></tr><tr><td>5</td><td>0</td><td>800 \times (1.08)^{0}</td><td>=</td><td>800.00</td></tr><tr><td>Sale of bond</td><td>0</td><td>10,800/1.08</td><td>=</td><td>10,000.00</td></tr><tr><td></td><td></td><td></td><td></td><td>$14,693.28</td></tr><tr><td colspan="5">B. Rates Fall to 7\%</td></tr><tr><td>1</td><td>4</td><td>800 \times (1.07)^{4}</td><td>=</td><td>$1,048.64</td></tr><tr><td>2</td><td>3</td><td>800 \times (1.07)^{3}</td><td>=</td><td>980.03</td></tr><tr><td>3</td><td>2</td><td>800 \times (1.07)^{2}</td><td>=</td><td>915.92</td></tr><tr><td>4</td><td>1</td><td>800 \times (1.07)^{1}</td><td>=</td><td>856.00</td></tr><tr><td>5</td><td>0</td><td>800 \times (1.07)^{0}</td><td>=</td><td>800.00</td></tr><tr><td>Sale of bond</td><td>0</td><td>10,800/1.07</td><td>=</td><td>$10,093.46</td></tr><tr><td></td><td></td><td></td><td></td><td>$14,694.05</td></tr><tr><td colspan="5">C. Rates Increase to 9\%</td></tr><tr><td>1</td><td>4</td><td>800 \times (1.09)^{4}</td><td>=</td><td>$1,129.27</td></tr><tr><td>2</td><td>3</td><td>800 \times (1.09)^{3}</td><td>=</td><td>1,036.02</td></tr><tr><td>3</td><td>2</td><td>800 \times (1.09)^{2}</td><td>=</td><td>950.48</td></tr><tr><td>4</td><td>1</td><td>800 \times (1.09)^{1}</td><td>=</td><td>872.00</td></tr><tr><td>5</td><td>0</td><td>800 \times (1.09)^{0}</td><td>=</td><td>800.00</td></tr><tr><td>Sale of bond</td><td>0</td><td>10,800/1.09</td><td>=</td><td>9,908.26</td></tr><tr><td></td><td></td><td></td><td></td><td>14,696.02</td></tr></table>

# Table 16.4

Terminal value of a 6-year-maturity bond portfolio after five years (all proceeds reinvested) year-end coupon payment of 800 is reinvested at the prevailing 8 \%market interest rate. At the end of the period, the bonds can be sold for \$ 10,000; they still will sell at par value because the coupon rate still equals the market interest rate. Total income after five years from reinvested coupons and the sale of the bond is precisely \$ 14,693.28.

Note: The sale price of the 6-year-maturity bond portfolio equals the portfolio's final payment (10,800) divided by 1 + r because the time to maturity of the bonds will be one year at the time of sale.


If interest rates change, however, two offsetting influences will affect the ability of the fund to grow to the targeted value of 14,693.28. If rates rise, the fund will suffer a capital loss, impairing its ability to satisfy the obligation. However, at that higher interest rate, reinvested coupons will grow at a faster rate, offsetting the capital loss. In other words, fixed-income investors face two offsetting types of interest rate risk: price risk and reinvestment rate risk. Increases in interest rates cause capital losses but at the same time increase the rate at which reinvested income will grow. If the portfolio duration is chosen appropriately, these two effects will cancel out exactly. When the portfolio duration equals the investor's horizon date, the accumulated value of the investment fund at the horizon date will be unaffected by interest rate fluctuations. For a horizon equal to the portfolio's duration, price risk and reinvestment risk are precisely offsetting.

In our example, the duration of the 6-year-maturity bonds used to fund the GIC is almost exactly five years. Because the assets and liabilities have equal durations, the insurance company is immunized against interest rate fluctuations. To confirm this, let's check that the bond can generate enough income to pay off the obligation in five years regardless of interest rate movements.

Panels B and C of Table 16.4 illustrate two possible interest rate scenarios: Rates either fall to  $7\%$  (Panel B) or increase to  $9\%$  (Panel C). In both cases, the annual coupon payments are reinvested at the new interest rate, which is assumed to change before the first coupon payment, and the bond is sold in year 5 to help satisfy the obligation of the GIC.

Panel B shows that if interest rates fall to  $7\%$ , the total funds will accumulate to \$14,694.05, providing a small surplus of \$  .77. If rates increase to  $9\%$  as in Panel C, the fund accumulates to \$14,696.02, providing a small surplus of \$  2.74.

Several points are worth highlighting. First, duration matching balances the difference between the accumulated value of the coupon payments (reinvestment rate risk) and the sale value of the bond (price risk). That is, when interest rates fall, the coupons grow less than in the base case, but the higher value of the bond offsets this. When interest rates rise, the value of the bond falls, but the coupons more than make up for this loss because they are reinvested at the higher rate. Figure 16.9 illustrates this case. The solid

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/f52a3d270b0cc3530d325db4f39da154355c3a65d168883f37e2f62e01c8bd3c.jpg)
Figure 16.9 Growth of invested funds. The solid colored curve represents the growth of portfolio value at the original interest rate. If interest rates increase at time  $t^*$ , the portfolio value initially falls but increases thereafter at the faster rate represented by the broken curve. At time  $D$  (duration), the curves cross.

Connect contains a spreadsheet that is useful in understanding the concept of holding-period immunization. The spreadsheet calculates duration and holding-period returns on bonds of any maturity. The spreadsheet shows how price risk and reinvestment risk offset if a bond is sold at its duration.

# Excel Questions

1. When rates increase by 100 basis points (bp), what is the change in the future sales price of the bond? The value of reinvested coupons?
2. What if rates increase by 200 bp?
3. What is the relation between price risk and reinvestment rate risk as we consider larger changes in bond yields?

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td></tr><tr><td>1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>Yield to maturity</td><td>11.580\%</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>Coupon rate</td><td>14.000\%</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>Years to maturity</td><td>7.0</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>Par value</td><td>\$1,000.00</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>Holding period</td><td>5.0</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>Duration</td><td>5.000251</td><td></td><td>5.000251</td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>Market price</td><td>$1,111.929</td><td></td><td>$1,111.929</td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td colspan="2">If YTM increases 200 basis points:</td><td></td><td>2.00\%</td><td></td><td colspan="2">If YTM increases 100 basis points:</td><td></td></tr><tr><td>12</td><td>Yield to maturity</td><td>13.580\%</td><td></td><td></td><td></td><td>Yield to maturity</td><td>12.580\%</td><td></td></tr><tr><td>13</td><td>Future value of coupons</td><td>$917.739</td><td></td><td>$917.739</td><td></td><td>Future value of coupons</td><td>\$899.705</td><td></td></tr><tr><td>14</td><td>Sale of bond</td><td>$1,006.954</td><td></td><td>$1,006.954</td><td></td><td>Sale of bond</td><td>\$1,023.817</td><td></td></tr><tr><td>15</td><td>Accumulated value</td><td>\$1,924.693</td><td></td><td></td><td></td><td>Accumulated value</td><td>\$1,923.522</td><td></td></tr><tr><td>16</td><td>Internal rate of return</td><td>11.5981\%</td><td></td><td></td><td></td><td>Internal rate of return</td><td>11.5845\%</td><td></td></tr><tr><td>17</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table> curve traces the accumulated value of the bonds if interest rates remain at  $8\%$ . The dashed curve shows that value if interest rates happen to increase. The initial impact is a capital loss, but this loss eventually is offset by the now-faster growth rate of reinvested funds. At the 5-year horizon date, equal to the bond's duration, the two effects just cancel, leaving the company able to satisfy its obligation with the accumulated proceeds from the bond.


We can also analyze immunization in terms of present as opposed to future values. Panel A in Table 16.5 shows the initial balance sheet for the insurance company's GIC.

# Table 16.5

Market value balance sheet

<table><tr><td colspan="2">Assets</td><td colspan="2">Liabilities</td></tr><tr><td colspan="2">A. Interest Rate = 8\%</td><td></td><td></td></tr><tr><td>Bonds</td><td>$10,000</td><td>Obligation</td><td>$10,000</td></tr><tr><td colspan="2">B. Interest Rate = 7\%</td><td></td><td></td></tr><tr><td>Bonds</td><td>$10,476.65</td><td>Obligation</td><td>$10,476.11</td></tr><tr><td colspan="2">C. Interest Rate = 9\%</td><td></td><td></td></tr><tr><td>Bonds</td><td>\$ 9,551.41</td><td>Obligation</td><td>\$ 9,549.62</td></tr></table>

Notes: Value of bonds  $= 800\times$  Annuity factor(r, 6)  $+10,000\times$  PV factor(r, 6) Value of obligation  $= \frac{14,693.28}{(1 + n)^{5}} = 14,693.28\times$  PV factor(r, 5)

Both assets and the obligation have market values of 10,000, so the plan is just fully funded. Panels B and C show that whether the interest rate increases or decreases, the value of the bonds funding the GIC and the present value of the company's obligation change by virtually identical amounts. In either case, the plan remains fully funded, with the surplus in Panels B and C in Table 16.5 just about zero.

Figure 16.10 is a graph of the present values of the bond and the single-payment obligation as a function of the interest rate. At the current rate of  $8\%$ , the values are equal, and the obligation is fully funded by the bond. Moreover, the two present value curves are tangent at  $y = 8\%$ . As interest rates change, the change in value of both the asset and the obligation is equal, so the obligation remains fully funded. For greater changes in the interest rate, however, the present value curves diverge. This reflects the fact that the fund actually shows a small surplus in Table 16.4 at market interest rates other than  $8\%$ .

If the obligation was immunized, why is there any surplus in the fund? The answer is convexity. Figure 16.10 shows that the coupon bond has greater convexity than the obligation it funds. Hence, when rates move substantially, the bond value exceeds the present value of the obligation by a noticeable amount.

This example highlights the importance of rebalancing immunized portfolios. As interest rates and asset durations change, a manager must rebalance the portfolio to realign its duration with the duration of the obligation. Moreover, even if interest rates do not change, asset durations will change solely because of the passage of time. Recall from Figure 16.2 that duration generally decreases less rapidly than maturity. Thus, even if an obligation is immunized at the outset, as time passes, the durations of the asset and liability will fall at different rates. Without rebalancing, durations will become unmatched.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/1c8ac953086385799ff1f41caca8404695c2f9df86943bb7a5de19b2555525e6.jpg)
Figure 16.10 Immunization. The coupon bond fully funds the obligation at an interest rate of  $8\%$ . Moreover, the present value curves are tangent at  $8\%$ , so the obligation will remain fully funded even if rates change by a small amount.

Obviously, immunization is a passive strategy only in the sense that it does not involve attempts to identify undervalued securities. Immunization managers must still proactively update and monitor their positions.

# Example 16.4 Constructing an Immunized Portfolio

An insurance company must make a payment of  \$19,487 in seven years. The market interest rate is 10\%$ , so the present value of the obligation is 10,000. The company's portfolio manager wishes to fund the obligation using 3-year zero-coupon bonds and perpetuities paying annual coupons. (We focus on zeros and perpetuities to keep the algebra simple.) How can the manager immunize the obligation?

Immunization requires that the duration of the portfolio of assets equal the duration of the liability. We can proceed in four steps:

1. Calculate the duration of the liability, which, in this case, is simple to compute. It is a single-payment obligation with duration of seven years.
2. Calculate the duration of the asset portfolio, which is the weighted average of duration of each component asset, with weights proportional to the funds placed in each asset. The duration of the zero-coupon bond is its maturity, three years.

The duration of the perpetuity is  $1.10 / .10 = 11$  years. Therefore, if the fraction of the portfolio invested in the zero is called  $w$  and the fraction invested in the perpetuity is  $(1 - w)$ , the portfolio duration is

$$
\text {A s s e t d u r a t i o n} = w \times 3 \text {y e a r s} + (1 - w) \times 1 1 \text {y e a r s}
$$

3. Find the asset mix that sets the duration of assets equal to the 7-year duration of liabilities. This requires us to solve for  $w$  in the following equation:

$$ w \times 3 \mathrm {y e a r s} + (1 - w) \times 1 1 \mathrm {y e a r s} = 7 \mathrm {y e a r s}
$$

This implies that  $w = \frac{1}{2}$ . The manager should invest half the portfolio in the zero and half in the perpetuity. This will result in an asset duration of seven years.

4. Fully fund the obligation. Because the obligation has a present value of \$10,000, and the fund will be invested equally in the zero and the perpetuity, the manager must purchase \$5,000 of the zero-coupon bond and \$5,000 of the perpetuity. (The face value of the zero will be \$5,000 × 1.10³ = 6,655.)

Even if a position is immunized, however, the portfolio manager still cannot rest. This is because of the need to rebalance as interest rates fluctuate. Moreover, even if rates do not change, the passage of time also will affect duration and require rebalancing. Let's continue Example 16.4 and see how the portfolio manager can maintain an immunized position.

# Example 16.5 Rebalancing

Suppose that a year has passed, and the interest rate remains at  $10\%$ . The portfolio manager of Example 16.4 needs to reexamine the position. Is it still fully funded? Is it still immunized? If not, what actions are required?

First, examine funding. The present value of the obligation has grown to \$11,000, as it is one year closer to maturity. The manager's funds also have grown to \$11,000: The zero-coupon bonds have increased in value from $5,000 to $5,500 with the passage of time, while the perpetuity has paid its annual \$500 coupon and remains worth \$5,000. Therefore, the obligation is still fully funded.

The portfolio weights must be changed, however. The zero-coupon bond now has a duration of two years, while the perpetuity's duration remains at 11 years. The obligation is now due in six years. The weights must now satisfy the equation

$$ w \times 2 + (1 - w) \times 1 1 = 6
$$ which implies that  $w = 5 \frac{1}{2}$ . To rebalance the portfolio and maintain the duration match, the manager now must invest a total of  $\ {11},{000} \times  {5\frac{1}{2}} = \$  {6,111.11}  in the zero-coupon bond. This requires that the entire  $\$ {500}$  coupon payment be invested in the zero, with an additional  $\$ {111.11}$  of the perpetuity sold and invested in the zero-coupon bond.


Of course, rebalancing entails transaction costs. In practice, an appropriate compromise must be established between the desire for perfect immunization, which requires continual rebalancing, and the need to control trading costs, which dictates less frequent rebalancing.


# Concept Check 16.6

Look again at Example 16.5. What would be the immunizing weights in the second year if the interest rate had fallen to  $8\%$ ?

# Cash Flow Matching and Dedication

The problems associated with immunization appear to have a simple solution. Why not simply buy a zero-coupon bond with face value equal to the projected cash outlay? If we follow the principle of cash flow matching, we automatically immunize the portfolio from interest rate risk because the cash flows from the bond and the obligation exactly offset each other.

Cash flow matching on a multiperiod basis is referred to as a dedication strategy. In this case, the manager selects either zero-coupon or coupon bonds with total cash flows in each period that match a series of obligations. The advantage of dedication is that it is a once-and-for-all approach to eliminating interest rate risk. Once the cash flows are matched, there is no need for rebalancing.

Cash flow matching is not more widely pursued probably because of the constraints that it imposes on bond selection. Immunization or dedication strategies are appealing to firms that do not wish to bet on general movements in interest rates, but these firms may want to immunize using bonds that they perceive are undervalued. Cash flow matching, however, places so many constraints on the bond selection process that it can be impossible to pursue a dedication strategy using only "underpriced" bonds. Firms looking for underpriced bonds give up exact and easy dedication for the possibility of achieving superior returns from the bond portfolio.

Sometimes, cash flow matching is simply not possible. For example, a pension fund that wishes to cash flow match a perpetual flow of benefits paid to current and future retirees would need to purchase fixed-income securities with maturities ranging up to hundreds of years. Such securities do not exist, making exact dedication infeasible.



# Concept Check 16.7

How would an increase in trading costs affect the attractiveness of dedication versus immunization?

# Other Problems with Conventional Immunization

If you look back at the definition of duration in Equation 16.1, you will see that it uses the bond's yield to maturity to calculate the weight applied to the time until each coupon payment. Given this definition and limitations on the proper use of yield to maturity, it is perhaps not surprising that this notion of duration is strictly valid only for a flat yield curve for which all payments are discounted at a common interest rate.

If the yield curve is not flat, then the definition of duration must be modified and  $\mathrm{CF}_t / (1 + y)^t$  replaced with the present value of  $\mathrm{CF}_t$ , where the present value of each cash flow is calculated by discounting with the appropriate spot interest rate from the zero-coupon yield curve corresponding to the date of the particular cash flow, instead of by discounting with the bond's yield to maturity. Moreover, even with this modification, duration matching will immunize portfolios only for parallel shifts in the yield curve. Clearly, this sort of restriction is unrealistic. As a result, much work has been devoted to generalizing the notion of duration. Multifactor duration models have been developed to allow for tilts and other distortions in the shape of the yield curve, in addition to shifts in its level. However, the added complexity of such models does not appear to pay off in terms of substantially greater effectiveness.[13]

Finally, immunization can be an inappropriate goal in an inflationary environment. Immunization is essentially a nominal notion and makes sense only for nominal liabilities. It makes no sense to immunize a projected obligation that will grow with the price level using nominal assets such as bonds. For example, if your child will attend college in 15 years and if the annual cost of tuition is expected to be  \$50,000 at that time, immunizing your portfolio at a locked-in terminal value of\$ 50,000 is not necessarily a risk-reducing strategy. The tuition obligation will vary with the realized inflation rate, whereas the asset portfolio's final value will not. As a result, the tuition obligation will not be matched by the value of the portfolio.

# 16.4 Active Bond Management

# Sources of Potential Profit

Broadly speaking, there are two sources of potential value in active bond management. The first is interest rate forecasting, which tries to anticipate movements across the entire spectrum of the fixed-income market. If interest rate declines are anticipated, managers will increase portfolio duration (and vice versa). The second source of potential profit is identification of relative mispricing within the fixed-income market. For example, you might believe that the default premium on one particular bond is unnecessarily large and therefore that the bond is underpriced.


These techniques will generate abnormal returns only if your information or insight is superior to that of the market. You cannot profit from knowledge that rates are about to fall if prices already reflect this information. You know this from our discussion of market efficiency. Valuable information is differential information. In this context it is worth noting that interest rate forecasters have a notoriously poor track record. If you consider this record, you will approach attempts to time the bond market with caution.

Homer and Liebowitz (see footnote 2) coined a popular taxonomy of active bond portfolio strategies. They characterize portfolio rebalancing activities as one of four types of bond swaps. In the first two swaps, the investor typically believes that the yield relationship between particular bonds or sectors is only temporarily out of alignment. When the aberration is eliminated, gains can be realized on the underpriced bond. The period of realignment is called the workout period.

1. The substitution swap is an exchange of one bond for a nearly identical substitute. The substituted bonds should be of essentially equal coupon, maturity, quality, call features, sinking fund provisions, and so on. This swap would be motivated by a belief that the market has temporarily mispriced the two bonds, and that the discrepancy between the prices of the bonds represents a profit opportunity.

An example of a substitution swap would be a sale of a 20-year-maturity,  $6\%$  coupon Toyota bond that is priced to provide a yield to maturity of  $6.05\%$ , coupled with a purchase of a  $6\%$  coupon Honda bond with the same time to maturity that yields  $6.15\%$ . If the bonds have about the same credit rating, there is no apparent reason for the Honda bonds to provide a higher yield. Therefore, the higher yield actually available in the market makes the Honda bond seem relatively attractive. Of course, the equality of credit risk is an important condition. If the Honda bond is in fact riskier, then its higher yield does not represent a bargain.

2. The intermarket spread swap is pursued when an investor believes that the yield spread between two sectors of the bond market is temporarily out of line. For example, if the current spread between corporate and government bonds is expected to narrow, the investor will shift from government bonds into corporate bonds. If the yield spread does in fact narrow, corporates will outperform governments. For example, if the yield spread between 10-year Treasury bonds and 10-year Baa-rated corporate bonds is now  $3\%$ , and the historical spread has been only  $2\%$ , you might consider selling holdings of Treasury bonds and replacing them with corporates.

Of course, you need to consider carefully whether there is a good reason that the yield spread seems out of alignment. Perhaps the default premium on corporate bonds increased because the market expects a recession. In this case, the wider spread would not represent attractive pricing of corporates relative to Treasuries, but would simply be an adjustment for a perceived increase in credit risk.

3. The rate anticipation swap is pegged to interest rate forecasting. If investors believe that rates will fall, they will swap into bonds of longer duration. For example, the investor might sell a 5-year-maturity Treasury bond, replacing it with a 25-year-maturity Treasury bond. The new bond has the same lack of credit risk as the old one, but it has longer duration. Conversely, when rates are expected to rise, investors will swap into shorter-duration bonds.
4. The pure yield pickup swap is pursued not in response to perceived mispricing, but as a means of increasing return by holding higher-yield bonds. When the yield curve is upward-sloping, the yield pickup swap entails moving into longer-term bonds. This strategy must be viewed as an attempt to earn an expected term premium in higher-yield bonds and comes at the price of increased interest rate risk. If the yield curve shifts up during the holding period, the longer-duration bond will suffer a greater capital loss.


We can add a fifth swap, called a tax swap, to this list. This simply refers to a swap to exploit some tax advantage. For example, an investor may swap from one bond that has decreased in price to another if realization of capital losses is advantageous for tax purposes.

# Horizon Analysis

One form of interest rate forecasting, which we encountered in Chapter 14, is called horizon analysis. The analyst selects a particular holding period and predicts the yield curve at the end of that period. Given a bond's time to maturity at the end of the holding period, its yield can be read from the predicted yield curve and its end-of-period price calculated. Then the analyst adds the coupon income and prospective capital gain of the bond to find the total return over the holding period.

# Example 16.6 Horizon Analysis

A 20-year-maturity bond with a  $10\%$  coupon rate (paid annually) currently sells at a yield to maturity of  $9\%$ . A portfolio manager with a 2-year horizon needs to forecast the total return on the bond over the coming two years. In two years, the bond will have an 18-year maturity. The analyst forecasts that two years from now, 18-year bonds will sell at yields to maturity of  $8\%$ , and that coupon payments can be reinvested in short-term securities over the coming two years at a rate of  $7\%$ .

To calculate the 2-year return on the bond, the analyst would perform the following calculations:

1. Current price = \ 100 \times \text{Annuity factor}(9\%, 20 \text{ years})

$$
\begin{array}{l} + \$ 1,000 \times PV \text {factor} (9\%, 20 \text {years}) \\ = \$ 1,091.29 \\ \end{array}
$$

2. Forecast price = \ 100 \times \text{Annuity factor}(8\%, 18 \text{ years})

$$
\begin{array}{l} + \$ 1,000 \times PV \text {factor} (8\%, 18 \text {years}) \\ = \$ 1,187.44 \\ \end{array}
$$

3. The future value of reinvested coupons = ($100 × 1.07) + $100 = 207
4. The 2-year return  $= \frac{\$ 207 + (\$ 1,187.44 - \$ 1,091.29)}{\$ 1,091.29} = 0.278$ , or  $27.8\%$

The annualized rate of return over the 2-year period would then be  $1.278^{1/2} - 1 = 0.13$ , or  $13\%$ .


# Concept Check 16.8

What will be the rate of return in Example 16.6 if the manager forecasts that in two years the yield on 18-year bonds will be  $10\%$  and the reinvestment rate for coupons will be  $8\%$ ?

1. Even default-free bonds such as Treasury issues are subject to interest rate risk. Longer-term bonds generally are more sensitive to interest rate shifts than are short-term bonds. Macaulay's duration measures the average life of a bond. Duration is defined as the weighted average of the times until each payment made by the security, with weights proportional to the present value of the payment.
2. Duration is a direct measure of the sensitivity of a bond's price to a change in its yield. The proportional change in a bond's price equals the negative of duration multiplied by the proportional change in  $1 + y$ .
3. Convexity refers to the curvature of a bond's price-yield relationship. Accounting for convexity can substantially improve the accuracy of the duration approximation for the response of bond prices to changes in yields.
4. Immunization is an important category of passive bond portfolio management. It attempts to render the individual or firm immune from movements in interest rates. This may take the form of immunizing net worth or, instead, immunizing the future accumulated value of a fixed-income portfolio.
5. Immunization of a fully funded plan is accomplished by matching the durations of assets and liabilities. To maintain an immunized position as time passes and interest rates change, the portfolio must be periodically rebalanced.
6. A more direct form of immunization is dedication, or cash-flow matching. If portfolio cash flows are perfectly matched to those of projected liabilities, rebalancing will be unnecessary. But dedication imposes a large number of constraints on bond choice, and in many cases may not be feasible.
7. Active bond management consists of interest rate forecasting techniques and intermarket spread analysis. One popular taxonomy classifies active strategies as substitution swaps, intermarket spread swaps, rate anticipation swaps, and pure yield pickup swaps.
8. Horizon analysis is a type of interest rate forecasting. In this procedure, the analyst forecasts the position of the yield curve at the end of some holding period and from that yield curve predicts corresponding bond prices. Bonds then can be ranked according to expected total rates of return over the holding period.

# SUMMARY

Macaulay's duration modified duration convexity effective duration immunization rebalancing

cash flow matching dedication strategy
substitution swap intermarket spread swap

rate anticipation swap pure yield pickup swap tax swap horizon analysis

# KEY TERMS

Macaulay's duration:  $D = \sum_{t=1}^{T} t \times w_t$

Modified duration:  $D^{*} = D / (1 + y)$

Bond price risk:  $\frac{\Delta P}{P} = -D \times \left[\frac{\Delta(1 + y)}{1 + y}\right] = -D^{*} \times \Delta y$

Duration of perpetuity  $= \frac{1 + y}{y}$

Bond price risk including convexity:

$$
\frac {\Delta P}{P} = - D ^ {*} \Delta y + 1 / 2 \times \text {C o n v e x i t y} \times (\Delta y) ^ {2}
$$

Effective duration  $= -\frac{\Delta P / P}{\Delta r}$

# KEY EQUATIONS

# PROBLEM SETS

1. Prices of long-term bonds are more volatile than prices of short-term bonds. However, yields to maturity of short-term bonds fluctuate more than yields of long-term bonds. How do you reconcile these two empirical observations?

2. How can a perpetuity, which has an infinite maturity, have a duration as short as 10 or 20 years?

3. A 9-year bond paying coupons annually has a yield of  $10\%$  and a duration of 7.194 years. If the market yield changes by 50 basis points, what is the percentage change in the bond's price?

4. a. Find the duration of a  $6\%$  coupon bond making annual coupon payments if it has three years until maturity and has a yield to maturity of  $6\%$ .

$b$ . What is the duration if the yield to maturity is  $10\%$ ?

5. Repeat Problem 4, but now assume the coupons are paid semiannually.

6. a. The historical yield spread between AAA bonds and Treasury bonds widened dramatically during the financial crisis in 2008. If you believed that the spread would soon return to more typical historical levels, what should you have done?

$b$ . This would be an example of what sort of bond swap?

7. You predict that interest rates are about to fall. Which bond will give you the highest capital gain?

$a$ . Low coupon, long maturity.
b. High coupon, short maturity.
c. High coupon, long maturity.
$d$ . Zero coupon, long maturity.

8. Rank the durations or effective durations of the following pairs of bonds: a. Bond  $A$  is a  $6\%$  coupon bond, with a 20-year time to maturity selling at par value. Bond  $B$  is a  $6\%$  coupon bond, with a 20-year time to maturity selling below par value.

b. Bond  $A$  is a 20-year noncallable coupon bond with a coupon rate of  $6\%$ , selling at par. Bond  $B$  is a 20-year callable bond with a coupon rate of  $7\%$ , also selling at par.

9. An insurance company must make payments to a customer of \$10 million in one year and \$4 million in five years. The yield curve is flat at 10\%.

a. If it wants to fully fund and immunize its obligation to this customer with a single issue of a zero-coupon bond, what maturity bond must it purchase?
$b$ . What must be the face value and market value of that zero-coupon bond?

10. Long-term Treasury bonds currently are selling at yields to maturity of nearly  $6\%$ . You expect interest rates to fall. The rest of the market thinks that they will remain unchanged over the coming year. In each question, choose the bond that will provide the higher holding-period return over the next year if you are correct. Briefly explain your answer.

a. i. A Baa-rated bond with coupon rate  $6\%$  and time to maturity 20 years.
ii. An Aaa-rated bond with coupon rate of  $6\%$  and time to maturity 20 years.
b. i. An A-rated bond with coupon rate  $3\%$  and maturity 20 years, callable at 105.
ii. An A-rated bond with coupon rate  $6\%$  and maturity 20 years, callable at 105.
c. i. A  $4\%$  coupon noncallable T-bond with maturity 20 years and YTM = 6\%.
ii. A  $7\%$  coupon noncallable T-bond with maturity 20 years and YTM  $= 6\%$ .

11. Currently, the term structure is as follows: 1-year zero-coupon bonds yield  $7\%$ ; 2-year zero-coupon bonds yield  $8\%$ ; 3-year and longer-maturity zero-coupon bonds all yield  $9\%$ . You are choosing between 1-, 2-, and 3-year maturity bonds all paying annual coupons of  $8\%$ .

$a$  What is the price of each bond today?
$b$ . What will be the price of each bond in one year if the yield curve is flat at  $9\%$  at that time?
c. What will be the rate of return on each bond?

12. You will be paying 10,000 a year in tuition expenses at the end of the next two years. Bonds currently yield 8\%.

$a$ . What are the present value and duration of your obligation?
b. What maturity zero-coupon bond would immunize your obligation?

c. Suppose you buy a zero-coupon bond with value and duration equal to your obligation. Now suppose that rates immediately increase to  $9\%$ . What happens to your net position, that is, to the difference between the value of the bond and that of your tuition obligation?
d. What if rates fall immediately to  $7\%$

13. Pension funds pay lifetime annuities to recipients. If a firm will remain in business indefinitely, the pension obligation will resemble a perpetuity. Suppose, therefore, that you are managing a pension fund with obligations to make perpetual payments of 2 million per year to beneficiaries. The yield to maturity on all bonds is 16\%.

a. If the duration of 5-year-maturity bonds with coupon rates of  $12\%$  (paid annually) is four years and the duration of 20-year-maturity bonds with coupon rates of  $6\%$  (paid annually) is 11 years, how much of each of these coupon bonds (in market value) will you want to hold to both fully fund and immunize your obligation?
$b$ . What will be the par value of your holdings in the 20-year coupon bond?

14. You are managing a portfolio of 1 million. Your target duration is 10 years, and you can invest in two bonds, a zero-coupon bond with maturity of five years and a perpetuity, each currently yielding 5\%.

a. How much of (i) the zero-coupon bond and (ii) the perpetuity will you hold in your portfolio?
b. How will these fractions change next year if target duration is now nine years?

15. My pension plan will pay me 10,000 once a year for a 10-year period. The first payment will come in exactly five years. The pension fund wants to immunize its position.

a. What is the duration of its obligation to me? The current interest rate is  $10\%$  per year.
$b$ . If the plan uses 5-year and 20-year zero-coupon bonds to construct the immunized position, how much money ought to be placed in each bond?
c. What will be the face value of the holdings in each zero?

16. A 30-year-maturity bond making annual coupon payments with a coupon rate of  $12\%$  has duration of 11.54 years and convexity of 192.4. The bond currently sells at a yield to maturity of  $8\%$ .

a. Use a financial calculator or spreadsheet to find the price of the bond if its yield to maturity falls to  $7\%$ .
$b$ . What price would be predicted by the duration rule?
c. What price would be predicted by the duration-with-convexity rule?
d. What is the percent error for each rule? What do you conclude about the accuracy of the two rules?
e. Repeat your analysis if the bond's yield to maturity increases to  $9\%$ . Are your conclusions about the accuracy of the two rules consistent with parts  $(a) - (d)$ ?

17. Frank Meyers, CFA, is a fixed-income portfolio manager for a large pension fund. A member of the Investment Committee, Fred Spice, is very interested in learning about the management of fixed-income portfolios. Spice has approached Meyers with several questions.

Meyers decides to illustrate fixed-income trading strategies to Spice using a fixed-rate bond and note. Both the bond and note have semiannual coupon periods. Unless otherwise stated, all interest rate changes are parallel. The characteristics of these securities are shown in the following table. He also considers a 9-year floating-rate bond (floater) that pays a floating rate semiannually and is currently yielding  $5\%$ .

Characteristics of Fixed-Rate Bond and Fixed-Rate Note

<table><tr><td></td><td>Fixed-Rate Bond</td><td>Fixed-Rate Note</td></tr><tr><td>Price</td><td>107.18</td><td>100.00</td></tr><tr><td>Yield to maturity</td><td>5.00\%</td><td>5.00\%</td></tr><tr><td>Time to maturity (years)</td><td>9</td><td>4</td></tr><tr><td>Modified duration (years)</td><td>6.9848</td><td>3.5851</td></tr></table> excel


Please visit us at www.mhhe.com/Bodie13e


excel

Please visit us at www.mhhe.com/Bodie13e


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/1f8546749ca671c2ad43f9dd3ec517e8473c5c976520758143f4174ff54b5e03.jpg)
SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/fbc991b2634063625cc41c7dc839747f463ff2a8dee5bf3ca8c017f5b4beee62.jpg)

SCHWESER

Excel

Please visit us at www.mhhe.com/Bodie13e


Excel

Please visit us at www.mhhe.com/Bodie13e


Excel

Please visit us at www.mhhe.com/Bodie13e


Spice asks Meyers about how a fixed-income manager would position his portfolio to capitalize on expectations of increasing interest rates. Which of the following would be the most appropriate strategy?

a. Shorten his portfolio duration.
$b$ . Buy fixed-rate bonds.
c. Lengthen his portfolio duration.

18. Spice asks Meyers (see Problem 17) to quantify price changes from changes in interest rates. To illustrate, Meyers computes the value change for the fixed-rate note in the table. Specifically, he assumes an increase in the level of interest rate of 100 basis points. Using the information in the table, what is the predicted change in the price of the fixed-rate note?

19. Find the duration of a bond with a settlement date of May 27, 2025, and maturity date November 15, 2036. The coupon rate of the bond is  $7\%$ , and the bond pays coupons semiannually. The bond is selling at a bond-equivalent yield to maturity of  $8\%$ . You can use Spreadsheet 16.3, available in Connect or through your course instructor.

20. A 30-year-maturity bond has a 7\% coupon rate, paid annually. It sells today for \$867.42. A 20-year-maturity bond has a 6.5\% coupon rate, also paid annually. It sells today for \$879.50. A bond market analyst forecasts that in five years, 25-year-maturity bonds will sell at yields to maturity of 8\% and 15-year-maturity bonds will sell at yields of 7.5\%. Because the yield curve is upward-sloping, the analyst believes that coupons will be invested in short-term securities at a rate of 6\%.

$a$ . Calculate the (annualized) expected rate of return of the 30-year bond over the 5-year period.
$b$ . What is the (annualized) expected return of the 20-year bond?

21. a. Use a spreadsheet to calculate the durations of the two bonds in Spreadsheet 16.1 if the market interest rate increases to  $12\%$ . Why does the duration of the coupon bond fall while that of the zero remains unchanged? (Hint: Examine what happens to the weights computed in column F.)

$b$ . Use the same spreadsheet to calculate the duration of the coupon bond if the coupon is  $12\%$  instead of  $8\%$  and the semiannual interest rate is again  $5\%$ . Explain why duration is lower than in Spreadsheet 16.1. (Again, start by looking at column F.)

22. a. Footnote 7 presents the formula for the convexity of a bond. Build a spreadsheet to calculate the convexity of a 5-year,  $8\%$  coupon bond making annual payments at the initial yield to maturity of  $10\%$ .

$b$ . What is the convexity of a 5-year zero-coupon bond?

23. A 12.75-year-maturity zero-coupon bond selling at a yield to maturity of  $8\%$  (effective annual yield) has convexity of 150.3 and modified duration of 11.81 years. A 30-year-maturity  $6\%$  coupon bond making annual coupon payments also selling at a yield to maturity of  $8\%$  has nearly identical duration—11.79 years—but considerably higher convexity of 231.2.

a. Suppose the yield to maturity on both bonds increases to  $9\%$ . (i) What will be the actual percentage capital loss on each bond? (ii) What percentage capital loss would be predicted by the duration-with-convexity rule?
b. Repeat part (a), but this time assume the yield to maturity decreases to  $7\%$ .
c. Compare the performance of the two bonds in the two scenarios, one involving an increase in rates, the other a decrease. Based on the comparative investment performance, explain the attraction of convexity.
d. In view of your answer to part (c), do you think it would be possible for two bonds with equal duration but different convexity to be priced initially at the same yield to maturity if the yields on both bonds always increased or decreased by equal amounts, as in this example? (Hint: Would anyone be willing to buy the bond with lower convexity under these circumstances?)

24. A newly issued bond has a maturity of 10 years and pays a  $7\%$  coupon rate (with coupon payments coming once annually). The bond sells at par value.

a. What are the convexity and the duration of the bond? Use the formula for convexity in footnote 7.
$b$ . Find the actual price of the bond assuming that its yield to maturity immediately increases from  $7\%$  to  $8\%$  (with maturity still 10 years).
c. What price would be predicted by the modified duration rule (Equation 16.3)? What is the percentage error of that rule?
d. What price would be predicted by the modified duration-with-convexity rule (Equation 16.5)? What is the percentage error of that rule?

25. a. Use a spreadsheet to answer this question and assume the yield curve is flat at a level of  $4\%$ . Calculate the convexity of a "bullet" fixed-income portfolio, that is, a portfolio with a single cash flow. Suppose a single 1,000 cash flow is paid in year 5.

b. Now calculate the convexity of a "ladder" fixed-income portfolio, that is, a portfolio with equal cash flows over time. Suppose the security makes 100 cash flows in each of years 1–9, so that its duration is close to the bullet in part (a).
c. Do ladders or bullets have greater convexity?

Excel

Please visit us at www.mhhe.com/Bodie13e


Excel

Please visit us at www.mhhe.com/Bodie13e


1.  $a$ . Explain the impact on the offering yield of adding a call feature to a proposed bond issue.
b. Explain the impact on both effective bond duration and convexity of adding a call feature to a proposed bond issue.
 2. a. A 6\% coupon bond paying interest annually has a modified duration of 10 years, sells for 800, and is priced at a yield to maturity of 8\%. If the YTM increases to 9\%, what is the predicted change in price based on the bond's duration?
b. A  $6\%$  coupon bond with semiannual coupons has a convexity (in years) of 120, sells for  $80\%$  of par, and is priced at a yield to maturity of  $8\%$ . If the YTM increases to  $9.5\%$ , what is the predicted contribution of convexity to the percentage change in price due to convexity?
c. A bond with annual coupon payments has a coupon rate of  $8\%$ , yield to maturity of  $10\%$ , and Macaulay's duration of 9 years. What is the bond's modified duration?
$d$ . When interest rates decline, the duration of a 30-year bond selling at a premium: i. Increases.

ii. Decreases.
iii. Remains the same.
iv. Increases at first, then declines.

e. If a bond manager swaps a bond for one that is identical in terms of coupon rate, maturity, and credit quality but offers a higher yield to maturity, the swap is: i. A substitution swap.

ii. An interest rate anticipation swap.
iii. A tax swap.
iv. An intermarket spread swap.

$f$ . Which bond has the longest duration?

i. 8-year-maturity,  $6\%$  coupon ii. 8-year-maturity,  $11\%$  coupon
iii. 15-year-maturity,  $6\%$  coupon iv. 15-year-maturity,  $11\%$  coupon

3. A newly issued bond paying a semiannual coupon has the following characteristics:

<table><tr><td>Coupon</td><td>Yield to Maturity</td><td>Maturity</td><td>Macaulay&#x27;s Duration</td></tr><tr><td>8\%</td><td>8\%</td><td>15 years</td><td>10 years</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/bf7f3ce667daefb709669f07a96cdc17175f56cf7e54128703a4fe59134f8d1b.jpg)

$a$ . Calculate modified duration using the information above.
b. Explain why modified duration is a better measure than maturity when calculating the bond's sensitivity to changes in interest rates.
$c$ . Identify the direction of change in modified duration if: i. The coupon of the bond were  $4\%$ , not  $8\%$ .

ii. The maturity of the bond were 7 years, not 15 years.

$d$ . Define convexity and explain how modified duration and convexity are used to approximate the bond's percentage change in price, given a change in interest rates.

4. Bonds of Zello Corporation with a par value of \$1,000 sell for \$960, mature in five years, and have a 7\% annual coupon rate paid semiannually.

$a$ . Calculate each of the following yields: i. Current yield.

ii. Yield to maturity to the nearest whole percent (i.e.,  $3\%$ ,  $4\%$ ,  $5\%$ , etc.).
iii. Horizon yield (also called total compound return) for an investor with a 3-year holding period and a reinvestment rate of  $6\%$  over the period. At the end of three years, the  $7\%$  coupon bonds with two years remaining will sell to yield  $7\%$ .

b. Cite a major shortcoming for each of the following fixed-income yield measures: i. Current yield.

ii. Yield to maturity.
iii. Horizon yield (also called total compound return).

5. Sandra Kapple presents Maria VanHusen with a description, given in the following table, of the bond portfolio held by the Star Hospital Pension Plan. All securities in the bond portfolio are noncallable U.S. Treasury securities.

<table><tr><td></td><td></td><td></td><td></td><td colspan="2">Price if Yields Change</td><td></td></tr><tr><td>Par Value (U.S.$)</td><td>Treasury Security</td><td>Market Value (U.S.$)</td><td>Current Price</td><td>Up 100 Basis Points</td><td>Down 100 Basis Points</td><td>Modified Duration</td></tr><tr><td>$48,000,000</td><td>2.375\% due 2025</td><td>$48,667,680</td><td>101.391</td><td>99.245</td><td>103.595</td><td>2.15</td></tr><tr><td>50,000,000</td><td>4.75\% due 2050</td><td>50,000,000</td><td>100.000</td><td>86.372</td><td>116.887</td><td>—</td></tr><tr><td>98,000,000</td><td>Total bond portfolio</td><td>98,667,680</td><td>—</td><td>—</td><td>—</td><td>—</td></tr></table>

$a$ . Calculate the modified duration of each of the following: i. The  $4.75\%$  Treasury security due 2050.

ii. The total bond portfolio.

b. VanHusen remarks to Kapple, "If you changed the maturity structure of the bond portfolio to result in a portfolio duration of 5.25 years, the price sensitivity of the portfolio would be identical to that of a single, noncallable Treasury security that also has a duration of 5.25 years." In what circumstance would VanHusen's remark be correct?

6. One common goal among fixed-income portfolio managers is to earn high incremental returns on corporate bonds versus government bonds of comparable durations. The approach of some corporate-bond portfolio managers is to find and purchase those corporate bonds having the largest initial spreads over comparable-duration government bonds. John Ames, HFS's fixed-income manager, believes that a more rigorous approach is required.

The following table presents data relating to one set of corporate/government spread relationships at a given date:

<table><tr><td>Bond Rating</td><td>Initial Spread over Governments</td><td>Expected Horizon Spread</td><td>Initial Duration</td><td>Expected Duration 1 Year from Now</td></tr><tr><td>Aaa</td><td>31 b.p.</td><td>31 b.p.</td><td>4 years</td><td>3.1 years</td></tr><tr><td>Aa</td><td>40 b.p.</td><td>50 b.p.</td><td>4 years</td><td>3.1 years</td></tr></table> a. Recommend purchase of either Aaa or Aa bonds for a 1-year investment horizon given a goal of maximizing expected returns.

Note: 1 b.p. = 1 basis point, or .01\%.

b. Ames chooses not to rely solely on initial spread relationships. His analytical framework considers a full range of other key variables likely to impact realized returns, including call provisions and potential changes in interest rates. Describe variables, in addition to those identified above, that Ames should include in his analysis and explain how each of these could cause realized incremental returns to differ from those indicated by initial spread relationships.

7. Patrick Wall is considering the purchase of one of the two bonds described in the following table. Wall realizes his decision will depend primarily on effective duration, and he believes that interest rates will decline by 50 basis points at all maturities over the next six months.

<table><tr><td>Characteristic</td><td>CIC</td><td>PTR</td></tr><tr><td>Market price</td><td>101.75</td><td>101.75</td></tr><tr><td>Maturity date</td><td>June 1, 2035</td><td>June 1, 2035</td></tr><tr><td>Call date</td><td>Noncallable</td><td>June 1, 2030</td></tr><tr><td>Annual coupon</td><td>5.25\%</td><td>6.35\%</td></tr><tr><td>Interest payment</td><td>Semiannual</td><td>Semiannual</td></tr><tr><td>Effective duration</td><td>7.35</td><td>5.40</td></tr><tr><td>Yield to maturity</td><td>5.02\%</td><td>6.10\%</td></tr><tr><td>Credit rating</td><td>A</td><td>A</td></tr></table> a. Calculate the percentage price change forecasted by effective duration for both the CIC and PTR bonds if interest rates decline by 50 basis points over the next six months.

b. Calculate the 6-month horizon return (in percent) for each bond if the CIC bond price at the end of six months equals 105.55 and the PTR bond price equals 104.15.
c. Wall is surprised by the fact that although interest rates fell by 50 basis points, the actual price change for the CIC bond was greater than the price change forecasted by effective duration, whereas the actual price change for the PTR bond was less than the price change forecasted by effective duration. Explain why the actual price change would be greater for the CIC bond and less for the PTR bond.

8. You are the manager for the bond portfolio of a pension fund. The policies of the fund allow for the use of active strategies in managing the bond portfolio.

It appears that the economic cycle is beginning to mature, inflation is expected to accelerate, and in an effort to contain the economic expansion, the central bank is moving toward tighter monetary policy. For each of the situations below, state which one of the two bonds you would prefer. Briefly justify your answer in each case.

a. Government of Canada (Canadian pay)  $3\%$  coupon due in 2025 and priced at 98.75 to yield  $3.50\%$  to maturity.

# or

Government of Canada (Canadian pay)  $3\%$  coupon due in 2037 and priced at 95.75 to yield  $3.15\%$  to maturity.

b. Texas Power and Light Co.  $4.50\%$  coupon due in 2028, rated AAA, and priced at 95 to yield  $5.02\%$  to maturity.

# or

Arizona Public Service Co.  $4.55\%$  coupon due in 2028, rated A-, and priced at 92 to yield  $5.85\%$  to maturity.

c. Commonwealth Edison  $2.75\%$  due in 2027, rated Baa, and priced at 91 to yield  $6.2\%$  to maturity.

# or

Commonwealth Edison  $7.375\%$  due in 2027, rated Baa, and priced at 114.40 to yield  $6.2\%$  to maturity.

d. Bank of Montreal (Canadian pay)  $3\%$  certificates of deposit due in 2025, rated AAA, and priced at 100 to yield  $3\%$  to maturity.

# or

Bank of Montreal (Canadian pay) floating-rate note due in 2028, rated AAA. Coupon adjusts semiannually to  $.5\%$  above the 3-month Government of Canada Treasury-bill rate).

9. A member of a firm's investment committee is very interested in learning about the management of fixed-income portfolios. He would like to know how fixed-income managers position portfolios to capitalize on their expectations concerning three factors that influence interest rates:

$a$ . Changes in the level of interest rates.
$b$ . Changes in yield spreads across/between sectors.
$c$ . Changes in yield spreads as to a particular instrument.

Formulate and describe a fixed-income portfolio management strategy for each of these factors that could be used to exploit a portfolio manager's expectations about that factor. (Note: Three strategies are required, one for each of the listed factors.)

10. Carol Harrod is the investment officer for a 100 million U.S. pension fund. The fixed-income portion of the portfolio is actively managed, and a substantial portion of the fund's large capitalization U.S. equity portfolio is indexed and managed by Webb Street Advisors.

Harrod has been impressed with the investment results of Webb Street's equity index strategy and is considering asking Webb Street to index a portion of the actively managed fixed-income portfolio.

a. Describe the advantages and disadvantages of bond indexing relative to active bond management.
b. Webb Street manages indexed bond portfolios. Discuss how an indexed bond portfolio is constructed under stratified sampling (cellular) methods.
$c$ . Describe the main source of tracking error for the cellular method.

11. Janet Meer is a fixed-income portfolio manager. Noting that the current shape of the yield curve is flat, she considers the purchase of a newly issued,  $7\%$  coupon, 10-year-maturity, option-free corporate bond priced at par. The bond has the following features:

Change in Yields

<table><tr><td></td><td>Up 10 Basis Points</td><td>Down 10 Basis Points</td></tr><tr><td>Price</td><td>99.29</td><td>100.71</td></tr><tr><td>Convexity measure</td><td colspan="2">35.00</td></tr><tr><td>Convexity adjustment</td><td colspan="2">0.0035</td></tr></table>

$a$ . Calculate the modified duration of the bond.
b. Meer is also considering the purchase of a newly issued,  $7.25\%$  coupon, 12-year-maturity option-free corporate bond. She wants to evaluate this second bond's price sensitivity to a decline in interest rates. Using the following data, estimate the bond's percentage price change if the yield curve shifts downward by 200 basis points.

<table><tr><td>Original issue price</td><td>Par value, to yield 7.25\%</td></tr><tr><td>Modified duration (at original price)</td><td>7.90</td></tr><tr><td>Convexity measure</td><td>41.55</td></tr><tr><td>Convexity adjustment (for a yield change of 200 basis points)</td><td>1.66</td></tr></table> c. Meer asks her assistant to analyze several callable bonds, given the expected downward parallel shift in the yield curve. Meer's assistant argues that if interest rates fall enough, convexity for a callable bond will become negative. Is the assistant's argument correct?


12. Noah Kramer, a fixed-income portfolio manager based in the country of Sevista, is considering the purchase of a Sevista government bond. Kramer decides to evaluate two strategies for implementing his investment in Sevista bonds. Table 16A gives the details of the two strategies, and Table 16B contains the assumptions that apply to both strategies.

<table><tr><td>Strategy</td><td>5-Year Maturity
(Modified
Duration = 4.83)</td><td>15-Year Maturity
(Modified
Duration = 14.35)</td><td>25-Year Maturity
(Modified
Duration = 23.81)</td></tr><tr><td>I</td><td>\$5 million</td><td>0</td><td>\$5 million</td></tr><tr><td>II</td><td>0</td><td>10 million</td><td>0</td></tr></table>

# Table 16A

Investment strategies (amounts are market-value invested)

<table><tr><td>Market value of bonds</td><td>10 million</td></tr><tr><td>Bond maturities</td><td>5 and 25 years or 15 years</td></tr><tr><td>Bond coupon rates</td><td>0.00\% (zero coupon)</td></tr><tr><td>Target modified duration</td><td>15 years</td></tr></table>

# Table 16B

Investment strategy assumptions

Before choosing one of the two bond-investment strategies, Kramer wants to analyze how the market value of the bonds will change if an instantaneous interest rate shift occurs immediately after his investment. The details of the shift in the yield curve are shown in Table 16C. Calculate for each scenario the percent change in the market value of both Strategies I and II.

<table><tr><td>Maturity</td><td>Interest Rate Change</td></tr><tr><td>5 year</td><td>Down 75 basis points (bps)</td></tr><tr><td>15 year</td><td>Up 25 bps</td></tr><tr><td>25 year</td><td>Up 50 bps</td></tr></table>

# Table 16C

Instantaneous interest rate shift immediately after investment

13. As part of your analysis of debt issued by Monticello Corporation, you are asked to evaluate two of its bond issues, shown in the following table.

<table><tr><td></td><td>Bond A (Callable)</td><td>Bond B (Noncallable)</td></tr><tr><td>Maturity</td><td>2030</td><td>2030</td></tr><tr><td>Coupon</td><td>11.50\%</td><td>7.25\%</td></tr><tr><td>Current price</td><td>125.75</td><td>100.00</td></tr><tr><td>Yield to maturity</td><td>7.70\%</td><td>7.25\%</td></tr><tr><td>Modified duration to maturity</td><td>6.20</td><td>6.80</td></tr><tr><td>Call date</td><td>2024</td><td>—</td></tr><tr><td>Call price</td><td>105</td><td>—</td></tr><tr><td>Yield to call</td><td>5.10\%</td><td>—</td></tr><tr><td>Modified duration to call</td><td>3.10</td><td>—</td></tr></table>

$a$ . Using the duration and yield information in the table above, compare the price and yield behavior of the two bonds under each of the following two scenarios: i. Strong economic recovery with rising inflation expectations.

ii. Economic recession with reduced inflation expectations.

$b$ . Using the information in the table, calculate the projected price change for bond  $B$  if its yield to maturity falls by 75 basis points.
c. Describe the shortcoming of analyzing bond  $A$  strictly to call or to maturity.

# E-INVESTMENTS EXERCISES

Go to buyupside.com/calculators. The site includes links to calculators for yield to maturity, duration, and convexity. Experiment by trying different inputs. What happens to duration and convexity as coupon increases? As maturity increases? As price increases (holding coupon fixed)?

# SOLUTIONS TO CONCEPT CHECKS

1. Use Spreadsheet 16.1 with a semiannual discount rate of  $4.5\%$ .

<table><tr><td></td><td>Period</td><td>Time until Payment (Years)</td><td>Cash Flow</td><td>PV of CF (Discount rate = 4.5\% per period)</td><td>Weight</td><td>Weight × Time</td></tr><tr><td rowspan="4">A. 8\% Coupon Bond</td><td>1</td><td>0.5</td><td>40</td><td>38.278</td><td>0.0390</td><td>0.0195</td></tr><tr><td>2</td><td>1.0</td><td>40</td><td>36.629</td><td>0.0373</td><td>0.0373</td></tr><tr><td>3</td><td>1.5</td><td>40</td><td>35.052</td><td>0.0357</td><td>0.0535</td></tr><tr><td>4</td><td>2.0</td><td>1,040</td><td>872.104</td><td>0.8880</td><td>1.7761</td></tr><tr><td>Sum:</td><td></td><td></td><td></td><td>982.062</td><td>1.0000</td><td>1.8864</td></tr><tr><td rowspan="4">B. Zero-Coupon</td><td>1</td><td>0.5</td><td>0</td><td>0.000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>2</td><td>1.0</td><td>0</td><td>0.000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>3</td><td>1.5</td><td>0</td><td>0.000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>4</td><td>2.0</td><td>1,000</td><td>838.561</td><td>1.0000</td><td>2.0000</td></tr><tr><td>Sum:</td><td></td><td></td><td></td><td>838.561</td><td>1.0000</td><td>2.0000</td></tr></table>

The duration of the  $8\%$  coupon bond increases to 1.8864 years. Price increases to \$982.062. The duration of the zero-coupon bond is unchanged at two years, although its price also increases (to \$ 838.561) when the interest rate falls.

2. a. If the interest rate increases from 9\% to 9.05\%, the bond price falls from $982.062 to $981.177. The percentage change in price is -0.0901\%.
$b$ . Using the initial semiannual rate of  $4.5\%$ , duration is 1.8864 years (see Concept Check 16.1), so the duration formula would predict a price change of

$$
- \frac {1 . 8 8 6 4}{1 . 0 4 5} \times . 0 0 0 5 = -. 0 0 0 9 0 3 = -. 0 9 0 3
$$ which is almost the same answer that we obtained from direct computation in part  $(a)$ .


3. The duration of a level perpetuity is  $(1 + y) / y$  or  $1 + 1 / y$ , which clearly falls as  $y$  increases. Tabulating duration as a function of  $y$  we get

<table><tr><td>y</td><td>D</td></tr><tr><td>0.01</td><td>101 years</td></tr><tr><td>0.02</td><td>51</td></tr><tr><td>0.05</td><td>21</td></tr><tr><td>0.10</td><td>11</td></tr></table>

4. In agreement with the duration rules presented in the chapter, you should find that duration is shorter when the coupon rate or yield to maturity is higher. Duration increases with maturity for most bonds. Duration is shorter when coupons are paid semiannually rather than annually because, on average, payments come earlier. Instead of waiting until year-end to receive the annual coupon, investors receive half the coupon midyear.
5. Macaulay's duration is defined as the weighted average of the time until receipt of each bond payment. Modified duration is defined as Macaulay's duration divided by  $1 + y$  (where  $y$  is yield per payment period, e.g., a semiannual yield if the bond pays semiannual coupons). One can demonstrate that for a straight bond, modified duration approximately equals the percentage change in bond price per change in yield. Effective duration captures this last property of modified duration. It is defined as percentage change in bond price per change in market interest rates. Effective duration for a bond with embedded options requires a valuation method that allows for such options in computing price changes. Effective duration cannot be related to a weighted average of times until payments because those payments are themselves uncertain.
6. The perpetuity's duration now would be  $1.08 / .08 = 13.5$ . We need to solve the following equation for  $w$ :

$$ w \times 2 + (1 - w) + 1 3. 5 = 6
$$

Therefore  $w = .6522$ .

7. Dedication would be more attractive. Cash flow matching eliminates the need for rebalancing and thus saves transaction costs.
8. Current price = 1,091.29

Forecasted price = \$100 × Annuity factor(10\%, 18 years) + \$1,000 × PV factor(10\%, 18 years)

$$
= \$ 1,000
$$

The future value of reinvested coupons  $= ($ 100 × 1.08) + $100 = $208

The 2-year return  $= \frac{\mathbb{S}208 + (\mathbb{S}1,000 - \mathbb{S}1,091.29)}{\mathbb{S}1,091.29} = 0.107$  or  $10.7\%$

The annualized rate of return over the 2-year period would then be  $(1.107)^{1/2} - 1 = .052$ , or  $5.2\%$ .


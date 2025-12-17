
# Measuring Interest Rate Risk: Effective Duration and Convexity

GERALD W. BUETOW Jr., PhD, CFA

President and Founder, BFRC Services, LLC

ROBERT R. JOHNSON, PhD, CFA, CAIA

Independent Financial Consultant, Charlottesville, VA

Abstract: Modified duration and effective duration are two ways to measure the price sensitivity of a fixed income security. Both measure the percentage price change of a security from an absolute change in yields. Effective duration is a more complete measure of price sensitivity since it incorporates embedded optionality while modified duration does not. Combining effective duration with effective convexity is a superior risk management and measurement approach than using modified duration and convexity. In general, for fixed income securities with embedded options, numerical approaches (effective) to risk measurement are superior to analytic (modified) approaches.

Modified duration ignores any effect on cash flows that might take place as a result of changes in interest rates. Effective duration does not ignore the potential for such changes in cash flows. For example, bonds with embedded options will have very different cash flow properties as interest rates (or yields) change. Modified duration ignores these effects completely. In order to apply effective duration, an available interest rate model and corresponding pricing model are needed. The example in this entry shows how to compute the effective duration of securities with cash flows that are dependent on changes in either the level or dynamics of the term structure of interest rates.

There is no difference between modified and effective duration for option-free or straight bonds. In fact, it can be shown that they are mathematically identical when the change in rates (or yields) becomes very small. As shown in the example, even for bonds with embedded options, the differences between the two measures are minimal over certain ranges of yields. For example, when the embedded option is far out-of-the-money, the cash flows of the bond are not affected by small changes in yields, resulting in almost no difference in cash flows between the two measures.


Convexity and effective convexity measure the curvature of the price/yield relationship. Convexity (sometimes referred to as standard convexity) suffers the same limitations as modified duration and is therefore not generally useful for securities with embedded options. However, similar to the duration measures, in ranges of rates (or yields) where the cash flows are not materially affected by small changes in yields, the two convexity measures are almost identical.


1. A 5-year,  $6.70\%$  coupon straight (noncallable and nonputable) semiannual coupon bond, with a current price of  $102.75\%$  of par.
2. A 5-year,  $6.25\%$  coupon bond, callable at par in years 2 through 5 on the semiannual coupon dates, with a current price of  $99.80\%$  of par.
3. A 5-year,  $5.75\%$  coupon bond, putable at par in years 2 through 5 on the semiannual coupon dates, with a current price of  $100.11\%$  of par.

The cash flows of these securities are very different as interest rates change. Consequently, the sensitivities to changes in interest rates are also very different.

Using the Black-Derman-Toy interest rate model that is based on the existing term structure, the term structure of interest rates is shifted up and down by 10 basis points (bps) and the resulting price changes are recorded.  $P_{-}$  corresponds to the price after a downward shift in interest rates,  $P_{+}$  corresponds to the price after an upward shift in interest rates,  $P$  is the current price, and  $S$  is the assumed shift in the term structure. (Note that shifting the term structure in a parallel manner will result in a change in yields equal to the shift for option-free bonds.) Table 1 shows these prices for each bond. The

Table 1 Original Prices and Resulting Prices from a Downward and Upward 10 Basis Point Interest Rate Shift and the Corresponding Effective Duration and Effective Convexity for Three Bonds Based on the Black-Derman-Toy Model

<table><tr><td colspan="4">Price Changes Following 10 bp Shift</td></tr><tr><td>Variable</td><td>Original Price P</td><td>Upward Shift of 10 bp P+</td><td>Downward Shift of 10 bp P-</td></tr><tr><td>Straight Bond Price</td><td>102.7509029</td><td>102.3191235</td><td>103.1848805</td></tr><tr><td>Callable Bond Price</td><td>99.80297176</td><td>99.49321718</td><td>100.1085624</td></tr><tr><td>Putable Bond Price</td><td>100.1089131</td><td>99.84237604</td><td>100.3819059</td></tr><tr><td colspan="4">Effective Duration and Effective Convexity Measures Calculated from Using the Price Changes Resulting from the 10bp Shifts in the Term Structure</td></tr><tr><td></td><td colspan="2">Effective duration</td><td>Effective convexity</td></tr><tr><td>Straight Bond</td><td>4.21</td><td></td><td>21.39</td></tr><tr><td>Callable Bond</td><td>3.08</td><td></td><td>-41.72</td></tr><tr><td>Putable Bond</td><td>2.70</td><td></td><td>64.49</td></tr></table>

Table 2 Effective Duration and Effective Convexity for Various Shifts in the Term Structure for Three Bonds

<table><tr><td rowspan="2">Term Structure Shift (bps)</td><td colspan="2">Straight Bond</td><td colspan="2">Callable Bond</td><td colspan="2">Putable Bond</td></tr><tr><td>Effective Duration</td><td>Effective Convexity</td><td>Effective Duration</td><td>Effective Convexity</td><td>Effective Duration</td><td>Effective Convexity</td></tr><tr><td>-500</td><td>4.40</td><td>23.00</td><td>1.91</td><td>4.67</td><td>4.46</td><td>23.46</td></tr><tr><td>-250</td><td>4.30</td><td>22.19</td><td>1.88</td><td>4.55</td><td>4.37</td><td>22.66</td></tr><tr><td>0</td><td>4.21</td><td>21.39</td><td>3.08</td><td>-41.72</td><td>2.70</td><td>64.49</td></tr><tr><td>250</td><td>4.12</td><td>20.62</td><td>4.15</td><td>20.85</td><td>1.87</td><td>7.07</td></tr><tr><td>500</td><td>4.03</td><td>19.87</td><td>4.07</td><td>20.10</td><td>1.81</td><td>4.23</td></tr><tr><td>1000</td><td>3.85</td><td>18.42</td><td>3.89</td><td>18.66</td><td>1.77</td><td>4.03</td></tr></table> formulas for calculating effective duration and effective convexity are as follows:


$$
\text {E f f e c t i v e} = \frac {\left(P _ {-}\right) - \left(P _ {+}\right)}{2 P S} \tag {1}
$$

$$
\text {E f f e c t i v e} = \frac {\left(P _ {-}\right) - \left(P _ {+}\right) - 2 P}{P S ^ {2}} \tag {2}
$$

It is critical to understand the importance of the pricing model in this exercise. The model must account for the change in cash flows of the securities as interest rates change. The callable and putable bonds have very different cash flow characteristics that depend on the level of interest rates. The pricing model used must account for this property.4

# Straight Bond

The effective duration for the straight bond is found by recording the price changes from shifting the term structure up  $(P_{+})$  and down  $(P_{-})$  by 10 bps and then substituting these values into equation (1). The prices are shown in Table 1. Consequently, the computation is:

$$
\begin{array}{r l} \text {E f f e c t i v e d u r a t i o n} & = \frac {1 0 3 . 1 8 4 8 8 0 5 - 1 0 2 . 3 1 9 1 2 3 5}{2 (1 0 2 . 7 5 0 9 0 2 9) (0 . 0 0 1)} \\ & = 4. 2 1 \end{array}
$$

Similarly, the calculation for effective convexity is found by substituting the corresponding prices into equation (2):

$$
\begin{array}{l} \text {E f f e c t i v e} \\ = \frac {1 0 3 . 1 8 4 8 8 0 5 + 1 0 2 . 3 1 9 1 2 3 5 - 2 (1 0 2 . 7 5 0 9 0 2 9)}{1 0 2 . 7 5 0 9 0 2 9 (0 . 0 0 1) ^ {2}} \\ = 2 1. 3 9 \\ \end{array}
$$

For the straight bond, the modified duration is 4.21 and the convexity is 21.40. These are very close to the effective measures shown in Table 1. This demonstrates that, for option-free bonds, the two measures are almost the same for small changes in yields.

Table 2 shows the effects of the term structure shifts on the effective duration and effective convexity of the straight bond. The effective duration increases as yields decrease because as yields decrease the slope of the price yield relationship for option-free bonds becomes steeper and effective duration (and modified duration) is directly proportional to the slope of this relationship. For example, the effective duration at very low yields  $(-500\mathrm{-bp}$  shift) is 4.40 and decreases to 3.85 at very high rates  $(+1,000\mathrm{bps})$  Figure 1 illustrates this phenomenon; as yields increase notice how the slope of the price/yield relationship decreases (becomes more horizontal or flatter).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/fb01e4570dfe7b1984b09e8884492218bed85a56c34094f8f778ffb1e1b1dbae.jpg)
Figure 1 Price/Yield Relationship of the Straight Bond

As the term structure shifts up (that is, as rates rise), the yield to maturity on a straight bond increases by approximately the same amount. As the yield increases, its convexity decreases. Figure 1 illustrates this property. As yields increase, the curvature (or the rate of change of the slope) decreases. The results in Table 2 for the straight bond also bear this out. The effective convexity values become smaller as yields increase. For example, the effective convexity at very low yields  $(-500\mathrm{-bp}$  shift) is 23.00 and decreases to 18.43 at very high rates  $(+1,000\mathrm{-bp}$  shift).

These are both well-documented properties of option-free bonds. The modified duration and convexity numbers for the straight bond are almost identical to the effective measures for the straight bond shown in Table 2.

# Callable Bond

The effective duration for the callable bond is found by recording the price changes from shifting the term structure up  $(P_{+})$  and down  $(P_{-})$  by 10 bps and then substituting these values into equation (1). The prices are shown in Table 1. Note that these prices take into account the changing cash flows resulting from the embedded call option. Consequently, the computation is:

$$
\begin{array}{l} \text {E f f e c t i v e d u r a t i o n} = \frac {1 0 0 . 1 0 8 5 6 2 4 - 9 9 . 4 9 3 2 1 7 1 8}{2 (9 9 . 8 0 0 2 9 7) (0 . 0 0 1)} \\ = 3. 0 8 \\ \end{array}
$$

Similarly, the calculation for effective convexity is found by substituting the corresponding prices into equation (2):

Effective convexity

$$
\begin{array}{l} = \frac {1 0 0 . 1 0 8 5 6 2 4 + 9 9 . 4 9 3 2 1 7 1 8 - 2 (9 9 . 8 0 2 9 7 1 7 6)}{9 9 . 8 0 2 9 7 1 7 6 (0 . 0 0 1) ^ {2}} \\ = - 4 1. 7 2 \\ \end{array}
$$

The relationship between the shift in rates and effective duration is shown in Table 2 and in Figure 2. As rates increase, the effective duration of the callable bond becomes larger. For example, the effective duration at very low yields  $(-500\mathrm{bp}$  shift) is 1.91 and increases to 3.89 at very high rates  $(+1,000$  bps). This reflects the fact that as rates increase the likelihood of the bond being called decreases and, as a result, the bond behaves more like a straight bond; hence, its effective duration increases. Conversely, as rates drop, this likelihood increases and the bond and its effective duration behave more like a bond with a two-year maturity because of the call option becoming effective in two years. As rates decrease significantly, the likelihood of the issuer calling the bond in two years increases. Consequently, at very low and intermediate rates the difference between the effective duration measure and modified duration is large and at very high rates the difference is small.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/e30e1c2b6c09ac43d5d29aab0cb878a071fd6043921641f1d61a08167fadf516.jpg)
Figure 2 Price/Yield Relationship of the Callable Bond


As explained above, effective convexity measures the curvature of the price/yield relationship of bonds. Low values for effective convexity simply mean that the relationship is becoming linear (an effective convexity of zero represents a linear relationship). As shown in Table 2, the effective convexity values of the callable bond at extremely low interest rates (that is, for the  $-250$ -bp and  $-500$ -bp shifts in the term structure) are very small positive numbers (4.55 and 4.67, respectively). This means that the relationship is almost linear but exhibits slight convexity. This is due to the call option being delayed by two years. At these extremely low interest rates, the callable bond exhibits slight positive convexity because the price compression at the call price is not complete for another two years. (Price compression for a callable bond refers to the property that a callable bond's price appreciation potential is severely limited as yields decline. As shown in Figure 2 as yields fall below a certain level (that is, where the yield corresponds to the call price), the price appreciation of the callable bond is being compressed). If this bond were immediately callable, the price/yield relationship would exhibit positive convexity at high yields and negative convexity at low yields. At the current level of interest rates, the effective convexity is negative as expected. At these rate levels, the embedded call option causes enough price compression to cause the curvature of the price/ yield relationship to be negatively convex (that is, concave). Figure 2 illustrates these properties. It is at these levels that the embedded option has a significant effect on the cash flows of the callable bond.


Table 2 shows that for large positive yield curve shifts (that is, for the  $+250$ -bp,  $+500$ -bp, and  $+1,000$ -bp shifts in the term structure), the effective convexity of the callable bond becomes positive and very close to the effective convexity values of the straight bond. For example, the effective convexity at the  $+250$ -bp shift is 20.85 for the callable bond and 20.62 for the straight bond. The only reason they are not the same is because the coupon rates of the bonds are not equal. Consequently, at very low and intermediate rates the difference between effective convexity and the standard convexity is large and at very high rates the difference is small. The intuition behind these findings is straightforward. At low rates, the cash flows of the callable bond are severely affected by the likelihood of the embedded call option being exercised by the issuer. At high rates, the embedded call option is so far out-of-the-money that it has almost no effect on the cash flows of the callable bond and so the callable bond behaves like a straight bond.

# ifiable Bond

The effective duration for the putable bond is found by recording the price changes from shifting the term structure up  $(P_{+})$  and down  $(P_{-})$  by 10 bps and then substituting these values into equation (1). The prices are shown in Table 1. Note that these prices take into account the changing cash flows resulting from the embedded put option. Consequently, the computation is:

$$
\begin{array}{l} \text {E f f e c t i v e} = \frac {1 0 0 . 3 8 1 9 0 5 9 - 9 9 . 8 4 2 3 7 6 0 4}{2 (1 0 0 . 1 0 8 9 1 3 1) (0 . 0 0 1)} \\ = 2. 7 0 \\ \end{array}
$$

Similarly, the calculation for effective convexity is found by substituting the corresponding prices into equation (2):

$$
\begin{array}{l} \text {E f f e c t i v e} \\ = \frac {1 0 0 . 3 8 1 9 0 5 9 + 9 9 . 8 4 2 3 7 6 0 4 - 2 (1 0 0 . 1 0 8 9 1 3 1)}{1 0 0 . 1 0 8 9 1 3 1 (0 . 0 0 1) ^ {2}} \\ = 6 4. 4 9 \\ \end{array}
$$

Because the putable bond behaves so differently from the other two bonds, the effective duration and effective convexity values are very different. As rates increase, the bond behaves more like a two-year bond because the owner will, in all likelihood, exercise the right to put the bond back at the put price as soon as possible. As a result, effective duration of the putable bond is expected to decrease as rates increase. This is due to the embedded put option severely affecting the cash flows of the putable bond. Conversely, as rates fall, the putable bond behaves more like a five-year straight bond since the embedded put option is so far out-of-the-money and has little effect on the cashflows of the putable bond. Effective duration should reflect these properties. Table 2 shows that this is indeed the case. For example, the effective duration at very low yields  $(-500\mathrm{-bp}$  shift) is 4.46 and decreases to 1.77 at very high rates  $(+1,000$  bps). Consequently, at very high rates and intermediate rates the difference between the effective duration and modified duration measures is large and at low rates the difference is small.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/79d7fa1d24e39c87a080d56cfd6ee0adb8713bd591929170f998addad9b18c30.jpg)
Figure 3 Price/Yield Relationship of the Putable Bond


Table 2 shows that the effective convexity of the putable bond is positive for all rate shifts as would be expected, but it becomes smaller as rates increase (that is, for the  $+250$ -bp,  $+500$ -bp, and  $+1,000$ -bp shifts in the term structure). As rates increase, the putable bond price/yield relationship will become linear because of the bond's price truncation at the put price. (Price truncation for a putable bond refers to the property that the putable bond's price depreciation potential is severely limited as yields increase.) As shown in Figure 3 as yields rise above a certain level (that is, where the yield corresponds to the put price), the price depreciation of the putable bond is truncated.) This is the reason for the small effective convexity values for the putable bond for the three positive shifts in the term structure (7.07, 4.23, and 4.03, respectively). It is at these levels that the embedded put option has a significant effect on the cash flows of the putable bond. Consequently, at very high rates and intermediate rates the difference between the effective convexity and standard convexity is very large. Figure 3 illustrates these properties.

At very low rates (that is, for the 250-bp and 500-bp downward shifts in the term structure), the putable bond behaves like a 5-year straight bond because the put option is so far out-of-the-money. Therefore, as the term structure is shifted downward, the putable bond's effective convexity values approach those of a comparable 5-year straight bond. Comparing the effective convexity measures for the putable bond and the straight bond illustrates this characteristic. For example, the effective convexity at the  $-250$ -bp shift is 22.66 for the putable bond and 22.19 for the straight bond. The two convexity measures are almost identical. In fact, they would be identical if their coupon rates were equal.


Figure 2 illustrates these properties. Also notice how the transition from low yields to high yields forces the price/yield relationship to have a very high convexity at intermediate levels of yields. For example, the current effective convexity of the putable bond is 64.49 compared to 21.39 for the straight bond and -41.72 for the callable bond. This is because of the price truncation of the putable bond resulting from the embedded put option moving from out-of-the-money and having little influence over the cash flows to in-the-money and having a significant impact on cash flows.

# PUTTING IT ALL TOGETHER

Notice in Table 2 how effective duration changes much more across yields for the callable and putable bonds than it does for the straight bond. This is to be expected because the embedded options have such a significant influence over cash flows as yields change over a wide spectrum. Interestingly, at high (low) yields the callable (putable) bond's effective duration is very close to the straight bond. This is where the embedded call (put) option is so far out-of-the-money that the two securities behave similarly. The same intuition holds for the effective convexity measures.

A common use of effective duration and effective convexity is to estimate the percentage price changes in fixed income securities for assumed changes in yield. In fact, it is not uncommon for effective duration and effective

Table 3 Percentage Price Changes Assuming an Increase in Yield of 100 bps and Effective Duration and Effective Convexity for Various Shifts in the Term Structure

<table><tr><td rowspan="2">Term Structure Shift (bp)</td><td colspan="3">Straight Bond</td><td colspan="3">Callable Bond</td><td colspan="3">Putable Bond</td></tr><tr><td>\% Price Change Using Effective Duration</td><td>\% Price Change Using Effective Convexity</td><td>Total \% Price Change</td><td>\% Price Change Using Effective Duration</td><td>\% Price Change Using Effective Convexity</td><td>Total \% Price Change</td><td>\% Price Change Using Effective Duration</td><td>\% Price Change Using Effective Convexity</td><td>Total \% Price Change</td></tr><tr><td>-500</td><td>-4.40</td><td>0.11500</td><td>-4.28500</td><td>-1.91</td><td>0.02335</td><td>-1.88665</td><td>-4.46</td><td>0.11730</td><td>-4.34270</td></tr><tr><td>-250</td><td>-4.30</td><td>0.11095</td><td>-4.18905</td><td>-1.88</td><td>0.02275</td><td>-1.85725</td><td>-4.37</td><td>0.11330</td><td>-4.25670</td></tr><tr><td>0</td><td>-4.21</td><td>0.10695</td><td>-4.10305</td><td>-3.08</td><td>-0.20860</td><td>-3.28860</td><td>-2.70</td><td>0.32245</td><td>-2.37755</td></tr><tr><td>250</td><td>-4.12</td><td>0.10310</td><td>-4.01690</td><td>-4.15</td><td>0.10425</td><td>-4.04575</td><td>-1.87</td><td>0.03535</td><td>-1.83465</td></tr><tr><td>500</td><td>-4.03</td><td>0.09935</td><td>-3.93065</td><td>-4.07</td><td>0.10050</td><td>-3.96950</td><td>-1.81</td><td>0.02115</td><td>-1.78885</td></tr><tr><td>1000</td><td>-3.85</td><td>0.09210</td><td>-3.75790</td><td>-3.89</td><td>0.09330</td><td>-3.79670</td><td>-1.77</td><td>0.02015</td><td>-1.74985</td></tr></table> convexity to be presented in terms of estimated percentage price change for a given change in yield (typically 100 bp): Tables 3 and 4 show this alternative presentation for a  $\pm 100$  bp change in yield. These results are computed by substituting the values from Table 2 into the following relationship:


$$
\begin{array}{l} \% \text {Price change} = \frac {\Delta P}{P} \approx - (E D) (\Delta y) (100) \\ + \frac {1}{2} (E C) (\Delta y) ^ {2} (1 0 0) \tag {3} \\ \end{array}
$$ where  $ED$  is the effective duration,  $EC$  is the effective convexity, and  $\Delta y$  is the assumed change in yield (e.g., 100 bp). Equation (3) is the result of a Taylor Series expansion on the bond price function. Also, note that the effective duration (ED) and effective convexity (EC) terms can be


replaced by modified duration and standard convexity, respectively, for option-free bonds.

Table 3 illustrates the resulting percentage price changes resulting from an increase in yield of 100 bps at various levels of the term structure. For example, the percentage price change for the callable bond at the current term structure (0-bp shift) is calculated using the values from Table 2 and substituting them into equation (3) as follows:

$$
\begin{array}{l} \% \text {Price change} \approx - (3.08) (0.01) (100) \\ + \frac {1}{2} (- 4 1. 7 2) (0. 0 1) ^ {2} (1 0 0) \\ \approx -3.08 - 0.2086 = -3.2886 \% \\ \end{array}
$$

This example shows that the estimated total percentage price change from effective convexity  $(-0.2086\%)$  is much smaller than the

Table 4 Percentage Price Changes Assuming a Decrease in Yield of 100 bps and Effective Duration and Effective Convexity for Various Shifts in the Term Structure

<table><tr><td rowspan="2">Term Structure Shift (bp)</td><td colspan="3">Straight Bond</td><td colspan="3">Callable Bond</td><td colspan="3">Putable Bond</td></tr><tr><td>\% Price Change Using Effective Duration</td><td>\% Price Change Using Effective Convexity</td><td>Total \% Price Change</td><td>\% Price Change Using Effective Duration</td><td>\% Price Change Using Effective Convexity</td><td>Total \% Price Change</td><td>\% Price Change Using Effective Duration</td><td>\% Price Change Using Effective Convexity</td><td>Total \% Price Change</td></tr><tr><td>-500</td><td>4.40</td><td>0.1150</td><td>4.5150</td><td>1.91</td><td>0.0234</td><td>1.9334</td><td>4.46</td><td>0.1173</td><td>4.5773</td></tr><tr><td>-250</td><td>4.30</td><td>0.1110</td><td>4.4110</td><td>1.88</td><td>0.0228</td><td>1.9028</td><td>4.37</td><td>0.1133</td><td>4.4833</td></tr><tr><td>0</td><td>4.21</td><td>0.1070</td><td>4.3170</td><td>3.08</td><td>-0.2086</td><td>2.8714</td><td>2.70</td><td>0.3225</td><td>3.0225</td></tr><tr><td>250</td><td>4.12</td><td>0.1031</td><td>4.2231</td><td>4.15</td><td>0.1043</td><td>4.2543</td><td>1.87</td><td>0.0354</td><td>1.9054</td></tr><tr><td>500</td><td>4.03</td><td>0.0994</td><td>4.1294</td><td>4.07</td><td>0.1005</td><td>4.1705</td><td>1.81</td><td>0.0212</td><td>1.8312</td></tr><tr><td>1000</td><td>3.85</td><td>0.0921</td><td>3.9421</td><td>3.89</td><td>0.0933</td><td>3.9833</td><td>1.77</td><td>0.0202</td><td>1.7902</td></tr></table> percentage price change from effective duration  $(-3.08)$


Table 4 illustrates the resulting percentage price changes resulting from a decrease in yield of  $100\mathrm{bp}$  at the various levels of the term structure. For example, the percentage price change for the callable bond at the current term structure (0-bp shift) is calculated using the values from Table 2 and substituting them into equation (3) as follows:

$$
\begin{array}{l} \% \text {Price change} \approx - (3.08) (- 0.01) (100) \\ + \frac {1}{2} (- 4 1. 7 2) (- 0. 0 1) ^ {2} (1 0 0) \\ \approx 3.08 - 0.2086 = 2.8714 \% \\ \end{array}
$$

# KEY POINTS

- Duration and convexity are measures for estimating the price sensitivity of a security to changes in interest rates.
- Modified duration and effective duration are two ways to measure the price sensitivity of a fixed income security. Both measure the percentage price change of a security from an absolute change in yields.
- There are important differences between effective duration and modified duration and effective convexity and convexity. The differences are due to changing cash flows of the security being evaluated.
- The effective measures account for changing cash flows and the traditional measures do not. The differences between the two are very significant whenever the cash flows are greatly affected by the level of interest rates. However, to properly compute the effective measures both an interest rate and a valuation model are required. Consequently, they are more computationally intensive than the traditional measures.
- The effective and traditional measures are identical for option-free bonds.

- Combining effective duration with effective convexity is a superior risk management and measurement approach than using modified duration and convexity.
- Investors would be best served by always using the effective measures since they properly account for the cash flow characteristics of a security.

# NOTES

1. For the impact of interest rate models on duration and convexity, see Buetow, Hanke, and Fabozzi (2001).
2. For an illustration of how duration and convexity are computed for mortgage-backed securities, see Golub (2006) and Fabozzi (1999).
3. Black, Derman, and Toy, 1990.
4. Note that when calculating the measures, users are cautioned to not round values. Since the denominators of both the duration and convexity terms are very small, any rounding will have a significant impact on results.

# REFERENCES

Black, F., Derman, E., and Toy, W. (1990). A one-factor model of interest rates and its application to Treasury bond options. Financial Analysts Journal (January–February): 24–32.
Buetow, G. W. Jr., Hanke, B., and Fabozzi, F. J. (2001). The impact of different interest rate models on effective duration, effective convexity, and option-adjusted spreads. Journal of Fixed Income (December): 41-53.
Fabozzi, F. J. (1999). Duration, Convexity, and Other Bond Risk Measures. Hoboken, NJ: John Wiley & Sons.
Golub, B. W. (2006). Approaches for measuring duration of mortgage-related securities. In F. J. Fabozzi (ed.), The Handbook of Mortgage-Backed Securities, 6th ed. (pp. 823-856). New York: McGraw-Hill.

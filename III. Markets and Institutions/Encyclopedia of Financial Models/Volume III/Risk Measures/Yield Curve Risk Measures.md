
# Yield Curve Risk Measures

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

STEVEN V. MANN, PhD

Professor of Finance, Moore School of Business, University of South Carolina

Abstract: Duration is a useful metric for assessing a bond portfolio's sensitivity to a parallel shift in the reference yield curve (e.g., the Treasury yield curve). When the yield curve shift is not parallel, however, two bond portfolios with the same duration will not generally experience the same return performance. To evaluate differences in expected performance across portfolios, it is therefore necessary to quantify the price impact due to changes in the shape, as opposed to a parallel shift, of the yield curve. The risk exposure of a portfolio to changes in the yield curve is called yield curve risk. Several approaches have been suggested for measuring yield curve risk.

Duration and convexity are useful measures for approximating how the value of a bond portfolio or a bond index will change for a parallel shift in interest rates. Yet, empirically, both published studies and proprietary studies by asset management firms have found that yield curve changes are not parallel. The exposure of a bond portfolio or a bond index to changes in the shape of the yield curve is called yield curve risk.

There are several approaches for measuring yield curve risk. In this entry, we describe some of the more common approaches: cash-flow distribution analysis versus a benchmark, key rate duration, slope elasticity measure, yield curve reshaping duration, and analysis of likely shifts in the yield curve. We begin the entry with an illustration of the drawback of using duration and convexity measures when the yield curve does not shift in a parallel fashion.


Calculation of duration and convexity (shock rates by 10 basis points):

<table><tr><td rowspan="2">Treasury issue</td><td colspan="4">Value if rate changes by</td></tr><tr><td>+10 bp</td><td>-10 bp</td><td>Duration</td><td>Convexity</td></tr><tr><td>A</td><td>99.5799</td><td>100.4222</td><td>4.21122</td><td>10.67912</td></tr><tr><td>B</td><td>99.0177</td><td>100.9970</td><td>9.89681</td><td>73.63737</td></tr><tr><td>C</td><td>99.3083</td><td>100.6979</td><td>6.49821</td><td>31.09724</td></tr></table> at par, and it is assumed that the next coupon payment is six months from now. The duration and convexity for each security are calculated in the exhibit. Since all the securities are trading at par value, the durations and convexities are the dollar duration and dollar convexity per 100 of par value.


Suppose that the following two Treasury portfolios are constructed. The first portfolio consists of only security C, the 10-year issue, and shall be referred to as the "bullet portfolio." The second portfolio consists of  $51.86\%$  of security A and  $48.14\%$  of security B, and this portfolio shall be referred to as the "barbell portfolio."

The dollar duration of the bullet portfolio is 6.49821. Recall that dollar duration is a measure of the dollar price sensitivity of a security or a portfolio. The dollar duration of the barbell is the weighted average of the dollar duration of the two Treasury securities in the portfolio and is computed below:

$$
0. 5 1 8 6 (4. 2 1 1 2 2) + 0. 4 8 1 4 (9. 8 9 6 8 1) = 6. 9 4 8 2 1
$$

The dollar duration of the barbell is equal to the dollar duration of the bullet. In fact, the barbell portfolio was designed to produce this result.

Duration is just a first approximation of the change in price resulting from a change in in terest rates. The convexity measure provides a second approximation. The dollar convexity measure of the two portfolios is not equal. The dollar convexity measure of the bullet portfolio is 31.09724. The dollar convexity measure of the barbell is a weighted average of the dollar convexity measure of the two Treasury securities in the portfolio. That is,


$$
0. 5 1 8 6 (1 0. 6 7 9 1 2) + 0. 4 8 1 4 (7 3. 6 3 7 3 7) = 4 0. 9 8 6 5 8
$$

Thus, the bullet has a dollar convexity measure that is less than that of the barbell portfolio. Below is a summary of the dollar duration and dollar convexity of the two portfolios:

<table><tr><td>Parameter</td><td>Bullet Portfolio</td><td>Barbell Portfolio</td></tr><tr><td>Dollar duration</td><td>6.49821</td><td>6.49821</td></tr><tr><td>Dollar convexity</td><td>31.09724</td><td>40.98658</td></tr></table>

The better Treasury portfolio depends on the portfolio manager's investment objectives and investment horizon. Let's assume a six-month investment horizon. The last column of Table 2

Table 2 Performance of Bullet and Barbell Treasury Portfolios over a Six-Month Horizon Assuming a Parallel Yield Curve Shift: Scenario Analysis

<table><tr><td rowspan="2">Yield Change (in bps)</td><td colspan="3">Total Return (\%)</td></tr><tr><td>Bullet Portfolio</td><td>Barbell Portfolio</td><td>Differencea</td></tr><tr><td>-300</td><td>53.47</td><td>55.79</td><td>-2.32</td></tr><tr><td>-250</td><td>44.95</td><td>46.38</td><td>-1.43</td></tr><tr><td>-200</td><td>36.79</td><td>37.55</td><td>-0.76</td></tr><tr><td>-150</td><td>28.99</td><td>29.26</td><td>-0.27</td></tr><tr><td>-100</td><td>21.51</td><td>21.47</td><td>0.05</td></tr><tr><td>-50</td><td>14.35</td><td>14.13</td><td>0.22</td></tr><tr><td>-25</td><td>10.89</td><td>10.63</td><td>0.26</td></tr><tr><td>0</td><td>7.50</td><td>7.22</td><td>0.28</td></tr><tr><td>25</td><td>4.18</td><td>3.92</td><td>0.27</td></tr><tr><td>50</td><td>0.93</td><td>0.70</td><td>0.23</td></tr><tr><td>100</td><td>-5.36</td><td>-5.45</td><td>0.09</td></tr><tr><td>150</td><td>-11.39</td><td>-11.28</td><td>-0.11</td></tr><tr><td>200</td><td>-17.17</td><td>-16.79</td><td>-0.38</td></tr><tr><td>250</td><td>-22.71</td><td>-22.01</td><td>-0.70</td></tr><tr><td>300</td><td>-28.03</td><td>-26.96</td><td>-1.06</td></tr></table>

${}^{a}$  A positive sign indicates that the bullet portfolio outperformed the barbell portfolio; a negative sign indicates that the barbell portfolio outperformed the bullet portfolio.

shows the difference in the total return over a six-month investment horizon for the two Treasury portfolios, assuming that the yield curve shifts in a "parallel" fashion. By parallel it is meant that the yield for the short-term security (A), the intermediate-term security (C), and the long-term security (B) changes by the same number of basis points, shown in the first column of the table. The total return reported in the second column of Table 2 is:

# Bullet portfolio's total return

- Barbell portfolio's total return

Thus, a positive value in the last column means that the bullet portfolio outperformed the barbell portfolio, while a negative sign means that the barbell portfolio outperformed the bullet portfolio. Note that no assumption is needed for the reinvestment rate since the

Table 3 Performance of Bullet and Barbell Treasury Portfolios over a Six-Month Horizon Assuming a Flattening of the Yield Curve: Scenario Analysis

<table><tr><td rowspan="2">Yield change for C (in bps)</td><td colspan="3">Total return (\%)</td></tr><tr><td>Bullet Portfolio</td><td>Barbell Portfolio</td><td>Differencea</td></tr><tr><td>-300</td><td>53.47</td><td>58.98</td><td>-5.51</td></tr><tr><td>-250</td><td>44.95</td><td>49.26</td><td>-4.31</td></tr><tr><td>-200</td><td>36.79</td><td>40.15</td><td>-3.36</td></tr><tr><td>-150</td><td>28.99</td><td>31.60</td><td>-2.62</td></tr><tr><td>-100</td><td>21.51</td><td>23.58</td><td>-2.06</td></tr><tr><td>-50</td><td>14.35</td><td>16.03</td><td>-1.67</td></tr><tr><td>-25</td><td>10.89</td><td>12.42</td><td>-1.53</td></tr><tr><td>0</td><td>7.50</td><td>8.92</td><td>-1.42</td></tr><tr><td>25</td><td>4.18</td><td>5.53</td><td>-1.35</td></tr><tr><td>50</td><td>0.93</td><td>2.23</td><td>-1.30</td></tr><tr><td>100</td><td>-5.36</td><td>-4.09</td><td>-1.27</td></tr><tr><td>150</td><td>-11.39</td><td>-10.06</td><td>-1.33</td></tr><tr><td>200</td><td>-17.17</td><td>-15.70</td><td>-1.47</td></tr><tr><td>250</td><td>-22.71</td><td>-21.04</td><td>-1.67</td></tr><tr><td>300</td><td>-28.03</td><td>-26.11</td><td>-1.92</td></tr></table>

Assumptions:
Change in yield of security C results in a change in the yield of security A plus 30 basis points.
Change in yield of security C results in a change in the yield of security B minus 30 basis points.
${}^{a}$  A positive sign indicates that the bullet portfolio outperformed the barbell portfolio; a negative sign indicates that the barbell portfolio outperformed the bullet portfolio.

three securities comprising the portfolios are assumed to be trading right after a coupon payment has been made and therefore there is no accrued interest.

Which portfolio is the better investment alternative if the yield curve shifts in a parallel fashion and the investment horizon is six months? The answer depends on the amount by which yields change. Notice in the last column that if yields change by less than 100 basis points, the bullet portfolio will outperform the barbell portfolio. The reverse is true if yields change by more than 100 basis points.

Now let's look at what happens if the yield curve does not shift in a parallel fashion. The last column of Tables 3 and 4 show the relative performance of the two Treasury portfolios for a nonparallel shift of the yield curve. Specifically, in Table 3 it is assumed that if the yield on

Table 4 Performance of Bullet and Barbell Treasury Portfolios over a Six-Month Horizon Assuming a Steepening of the Yield Curve: Scenario Analysis

<table><tr><td rowspan="2">Yield Change for C (in bps)</td><td colspan="3">Total Return (\%)</td></tr><tr><td>Bullet Portfolio</td><td>Barbell Portfolio</td><td>Differencea</td></tr><tr><td>-300</td><td>53.47</td><td>52.82</td><td>0.65</td></tr><tr><td>-250</td><td>44.95</td><td>43.70</td><td>1.24</td></tr><tr><td>-200</td><td>36.79</td><td>35.14</td><td>1.65</td></tr><tr><td>-150</td><td>28.99</td><td>27.09</td><td>1.89</td></tr><tr><td>-100</td><td>21.51</td><td>19.52</td><td>1.99</td></tr><tr><td>-50</td><td>14.35</td><td>12.39</td><td>1.97</td></tr><tr><td>-25</td><td>10.89</td><td>8.98</td><td>1.91</td></tr><tr><td>0</td><td>7.50</td><td>5.66</td><td>1.84</td></tr><tr><td>25</td><td>4.18</td><td>2.44</td><td>1.74</td></tr><tr><td>50</td><td>0.93</td><td>-0.69</td><td>1.63</td></tr><tr><td>100</td><td>-5.36</td><td>-6.70</td><td>1.34</td></tr><tr><td>150</td><td>-11.39</td><td>-12.38</td><td>0.99</td></tr><tr><td>200</td><td>-17.17</td><td>-17.77</td><td>0.60</td></tr><tr><td>250</td><td>-22.71</td><td>-22.88</td><td>0.17</td></tr><tr><td>300</td><td>-28.03</td><td>-27.73</td><td>-0.30</td></tr></table>

Assumptions:
Change in yield of security C results in a change in the yield of security A minus 30 basis points.
Change in yield of security C results in a change in the yield of security B plus 30 basis points.
${}^{a}$  A positive sign indicates that the bullet portfolio outperformed the barbell portfolio; a negative sign indicates that the barbell portfolio outperformed the bullet portfolio.

C (the intermediate-term security) changes by the amount shown in the first column, A (the short-term security) will change by the same amount plus 30 basis points, whereas B (the long-term security) will change by the same amount shown in the first column less 30 basis points. That is, the nonparallel shift assumed is a flattening of the yield curve. For this yield curve shift, the barbell will outperform the bullet for the yield changes assumed in the first column. While not shown in the table, for changes greater than 300 basis points for C, the opposite would be true.

In Table 4, the nonparallel shift assumes that for a change in C's yield, the yield on A will change by the same amount less 30 basis points, whereas the yield on B will change by the same amount plus 30 basis points. That is, it assumes that the yield curve will steepen. In this case, the bullet portfolio would outperform the barbell portfolio for all but a change in yield greater than 250 basis points for C.

The key point here is that looking at duration or convexity tells us little about performance over some investment horizon because performance depends on the magnitude of the change in yields and how the yield curve shifts.

# CASH-FLOW DISTRIBUTION ANALYSIS VERSUS A BENCHMARK

The most straightforward approach to assessing a portfolio's risk exposure to yield curve shifts is by looking at the distribution of the present value of the cash flows for the portfolio being managed versus a benchmark. The benchmark will be either a bond index or a liability structure. The steps are as follows:

Step 1: Determine the discrete time periods for the analysis. The shortest and longest time is determined by the shortest and longest cash flows for the portfolio and the benchmark. Each time period is referred to as a cash-flow vertex.

Step 2: Compute the cash flows for the portfolio and the benchmark for each cash-flow vertex.

Step 3: Compute the present value of the cash flows for the portfolio and the benchmark for each cash-flow vertex. The spot rate used to compute the present value is the spot rate for the cash-flow vertex. For example, if the cash-flow vertex is year 5, the 5-year spot rate is used.

Step 4: Compute the duration contribution at each cash flow vertex for the portfolio and the benchmark.

Step 5: Compute the duration contribution as a percentage of duration for both the portfolio and the benchmark for each cash-flow vertex.

Step 6: Compute the difference in the portfolio percentage and benchmark percentage computed in Step 5 for each cash-flow vertex.

In practice, the application is not straightforward because of the inclusion of bonds with embedded options and mortgage-backed and asset-backed securities. Suppose a bond is a 7-year bond that is callable in three years. The cash flows for this bond depend on the portfolio manager's assessment of the probability that it will be called in three years. For mortgage-backed and asset-backed securities, the cash flows depend on the prepayment assumption.

Another difficulty in the implementation process is the allocation of cash flows to the cash-flow vertices when a cash flow is not exactly on a cash-flow vertex date. For example, consider a bond whose coupon payment of  \$1 million is to be received 4.75 years from now and that there is a 4-year and 5-year cash-flow vertex. How should the\$ 1 million coupon payment be allocated? The procedure would be to allocate 25\% to the 4-year cash-flow vertex and 75\% to the 5-year cash-flow vertex.

Despite its simplicity, the cash-flow distribution analysis is commonly used as a measure of yield curve risk for index fund managers (see Volpert, 2000).

# KEY RATE DURATION

One approach to measure yield curve risk is to change the yield for a particular maturity of the yield curve and determine the sensitivity of a security or portfolio to this change, holding all other yields constant. The sensitivity of the change in value to a particular change in yield is called rate duration. There is a rate duration for every point on the yield curve. Consequently, there is not one rate duration, but a vector of durations representing each maturity on the yield curve. The total change in value if all rates change by the same number of basis points is simply the duration of a security or portfolio to a parallel shift in rates.

This approach was first suggested by Chambers and Carleton (1988), who called it duration vectors. Reitano (1992) suggested a similar approach and referred to these durations as partial durations. The most popular version of this approach is that developed by Ho (1992). This approach examines how changes in Treasury yields at different points on the spot curve affect the value of a bond portfolio. Ho's methodology has three basic steps. The first step is to select several key maturities or "key rates" of the spot rate curve. Ho's approach focuses on 11 key maturities on the spot rate curve. These rate durations are called key rate durations. The specific maturities on the spot rate curve for which a key rate duration is measured are 3 months, 1 year, 2 years, 3 years, 5 years, 7 years, 10 years, 15 years, 20 years, 25 years, and 30 years. However, in order to illustrate Ho's methodology, we will select only three key rates: 1 year, 10 years, and 30 years.

The next step is to specify how other rates on the spot curve change in response to key rate changes. Ho's rule is that a key rate's effect on neighboring rates declines linearly and reaches zero at the adjacent key rates. For example, suppose the 10-year key rate increases by 40 basis points. All spot rates between 10 years and 30 years will increase but the amount each changes will be different and the magnitude of the change diminishes linearly. Specifically, there are 40 semiannual periods between 10 and 30 years. Each spot rate starting with 10.5 years increases by 1 basis point less than the spot rate to its immediate left (that is, 39 basis points) and so forth. The 30-year rate which is the adjacent key rate is assumed to be unchanged. Thus, only one key rate changes at a time. Spot rates between 1 year and 10 years change in an analogous manner such that all rates change but by differing amounts. Changes in the 1-year key rate affect spot rates between 1 and 10 years, while spot rates 10 years and beyond are assumed to be unaffected by changes in the 1-year spot rate. In a similar vein, changes in the 30-year key rate affect all spot rates between 30 years and 10 years while spot rates shorter than 10 years are assumed to be unaffected by changes in the 30-year rate. This process is illustrated in Figure 1. Note that if we add the three rate changes together, we obtain a parallel yield curve shift of 40 basis points.


The third and final step is to calculate the percentage change in the bond's portfolio value when each key rate and neighboring spot rates are changed. There will be as many key rate durations as there are preselected key rates. Let's illustrate this process by calculating the key rate duration for a coupon bond. Our hypothetical  $6\%$  coupon bond has a maturity value of \$100 and matures in five years. The bond delivers coupon payments semiannually. Valuation is accomplished by discounting each cash flow using the appropriate spot rate. The bond's current value is \$ 107.32 and the process is illustrated in Table 5. The initial hypothetical (and short) spot curve is contained in column (3). (Note that the spot rates are annual rates and are reported as bond-equivalent yields. When present values are computed, we use the appropriate semiannual rates that are taken to be one half the annual rate.) The present values of each of the bond's cash flows are presented in the last column.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/b6f430d45df9585c57413b5b7c650101b1374555ee67f045b99435bc760081a2.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/9b0cb0ecbc826e3d5766f5cec0b485ba32f31718004ace84aa33d1642d9871c9.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/b6d82c9bbde309f239c8b0ede586ac1b130995b99783e7b48e6c6f2efea91046.jpg)
Figure 1 Graph of How Spot Rates Change when Key Rates Change

Table 5 Valuation of 5-Year  $6 \%$  Coupon Bond Using Spot Rates

<table><tr><td>Years</td><td>Period</td><td>Spot Rate (in percent)</td><td>Cash Flow (in dollars)</td><td>Present Value (in dollars)</td></tr><tr><td>0.5</td><td>1</td><td>3.00</td><td>3.0</td><td>2.96</td></tr><tr><td>1.0</td><td>2</td><td>3.25</td><td>3.0</td><td>2.90</td></tr><tr><td>1.5</td><td>3</td><td>3.50</td><td>3.0</td><td>2.85</td></tr><tr><td>2.0</td><td>4</td><td>3.75</td><td>3.0</td><td>2.79</td></tr><tr><td>2.5</td><td>5</td><td>4.00</td><td>3.0</td><td>2.72</td></tr><tr><td>3.0</td><td>6</td><td>4.10</td><td>3.0</td><td>2.66</td></tr><tr><td>3.5</td><td>7</td><td>4.20</td><td>3.0</td><td>2.59</td></tr><tr><td>4.0</td><td>8</td><td>4.30</td><td>3.0</td><td>2.53</td></tr><tr><td>4.5</td><td>9</td><td>4.35</td><td>3.0</td><td>2.47</td></tr><tr><td>5.0</td><td>10</td><td>4.40</td><td>103.0</td><td>82.86</td></tr><tr><td></td><td></td><td></td><td>Total</td><td>107.32</td></tr></table>

To compute the key rate duration of the 5-year bond, we must select some key rates. We assume the key rates are 0.5, 3, and 5 years. To compute the 0.5-year key rate duration, we shift the 0.5-year rate upwards by 20 basis points and adjust the neighboring spot rates between 0.5 and 3 years as described earlier. (The choice of 20 basis points is arbitrary.) Figure 2 shows the initial spot curve and the spot curve after the 0.5-year key rate and neighboring rates are shifted. The next step is to compute the bond's new value as a result of the shift. This calculation is shown in Table 6. The bond's value to the shift is 107.30. To estimate the 0.5-year key rate duration, we divide the percentage change in the bond's price as a result of the shift in the spot curve by the change in the 0.5-year key rate. Accordingly, we employ the following formula:

$$
\text{Ke yr at ed ur at io n} = \frac{P_{0} - P_{1}}{P_{0} (\Delta y)}
$$ where


$$
P_{0} = \text{th eb on d 's va lu eu si ng th ei ni ti al sp ot}
$$

$$
\begin{array}{l} P_{1} = \text{th eb on d 's va lu ea ft er th es hi ft in th e} \\ \text{sp ot cu rv e} \end{array}
$$

$$
\Delta y = \text{sh if t}
$$

Substituting in numbers from our illustration presented above, we can compute the 0.5-year

Table 6 Valuation of the 5-Year  $6\%$  Coupon Bond after 0.5-Year Key Rate and Neighboring Spot Rates Change

<table><tr><td>Years</td><td>Period</td><td>Spot Rate (in percent)</td><td>Cash Flow (in dollars)</td><td>Present Value (in dollars)</td></tr><tr><td>0.5</td><td>1</td><td>3.20</td><td>3.0</td><td>2.95</td></tr><tr><td>1.0</td><td>2</td><td>3.41</td><td>3.0</td><td>2.90</td></tr><tr><td>1.5</td><td>3</td><td>3.62</td><td>3.0</td><td>2.84</td></tr><tr><td>2.0</td><td>4</td><td>3.83</td><td>3.0</td><td>2.78</td></tr><tr><td>2.5</td><td>5</td><td>4.04</td><td>3.0</td><td>2.71</td></tr><tr><td>3.0</td><td>6</td><td>4.10</td><td>3.0</td><td>2.66</td></tr><tr><td>3.5</td><td>7</td><td>4.20</td><td>3.0</td><td>2.59</td></tr><tr><td>4.0</td><td>8</td><td>4.30</td><td>3.0</td><td>2.53</td></tr><tr><td>4.5</td><td>9</td><td>4.35</td><td>3.0</td><td>2.47</td></tr><tr><td>5.0</td><td>10</td><td>4.40</td><td>103.0</td><td>82.86</td></tr><tr><td></td><td></td><td></td><td>Total</td><td>107.30</td></tr></table> key rate duration as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/6608e1176dc2b5f5b878021f050e58549efb5af9b47a7f93b59ecdcc5312276d.jpg)
Figure 2 Graph of the Initial Spot Curve and the Spot Curve after the 0.5-Year Key Rate Shift


$$
P_{0} = 1 0 7. 3 2
$$

$$
P_{1} = 1 0 7. 3 0
$$

$$
\Delta y = 0. 0 0 2
$$

0.5-year key rate duration  $= \frac{107.32 - 107.30}{107.32(0.002)}$

$$
= 0. 0 9 3 2
$$

To compute the 3-year key rate duration, we repeat this process. We shift the 3-year rate by 20 basis points and adjust the neighboring spot rates as described earlier. Figure 3 shows the initial spot curve and the spot curve after the 3-year key rate and neighboring rates are shifted. Note that in this case the only two spot rates that do not change are the 0.5-year and the

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/7d95900fafd1cb45075ff30fe44932d44fe08433397658afa3c420f858fc300a.jpg)
Figure 3 Graph of the Initial Spot Curve and the Spot Curve after the 3-Year Key Rate Shift

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/e8ead6427a1dbbe62f25ff21318ca4e27a5318f330d40dfdfcc5d46f9a7f5670.jpg)
Figure 4 Graph of the Initial Spot Curve and the Spot Curve after the 5-Year Key Rate Shift

5-year key rates. Then, we compute the bond's new value as a result of the shift. The bond's postshift value is 107.25 and the calculation appears in Table 7. Accordingly, the 3-year key rate duration is computed as follows:

$$
\begin{array}{l} 3 - \text{ye ar ke yr at ed ur at io n} = \frac{1 0 7 . 3 2 - 1 0 7 . 2 5}{1 0 7 . 3 2 (0 . 0 0 2)} \\ = 0. 3 2 6 1 \\ \end{array}
$$

The final step is to compute the 5-year key duration. We shift the 5-year rate by 20 basis points and adjust the neighboring spot rates. Figure 4 presents a graph of the initial spot curve and the spot curve after the 5-year key rate and neighboring rates are shifted. The bond's postshift value is 106.48 and the calculation appears in Table 8. Accordingly, the 5-year key rate duration is computed as follows:


$$
\begin{array}{l} 5 \text{ye ar ke yr at ed ur at io n} = \frac{1 0 7 . 3 2 - 1 0 6 . 4 8}{1 0 7 . 3 2 (0 . 0 0 2)} \\ = 3. 9 1 3 5 \\ \end{array}
$$

Table 7 Valuation of the 5-Year  $6 \%$  Coupon Bond After 3-Year Key Rate and Neighboring Spot Rates Change

<table><tr><td>Years</td><td>Period</td><td>Spot Rate (in percent)</td><td>Cash Flow (in dollars)</td><td>Present Value (in dollars)</td></tr><tr><td>0.5</td><td>1</td><td>3.00</td><td>3.0</td><td>2.96</td></tr><tr><td>1.0</td><td>2</td><td>3.29</td><td>3.0</td><td>2.90</td></tr><tr><td>1.5</td><td>3</td><td>3.58</td><td>3.0</td><td>2.84</td></tr><tr><td>2.0</td><td>4</td><td>3.87</td><td>3.0</td><td>2.78</td></tr><tr><td>2.5</td><td>5</td><td>4.16</td><td>3.0</td><td>2.71</td></tr><tr><td>3.0</td><td>6</td><td>4.30</td><td>3.0</td><td>2.64</td></tr><tr><td>3.5</td><td>7</td><td>4.35</td><td>3.0</td><td>2.58</td></tr><tr><td>4.0</td><td>8</td><td>4.40</td><td>3.0</td><td>2.52</td></tr><tr><td>4.5</td><td>9</td><td>4.40</td><td>3.0</td><td>2.47</td></tr><tr><td>5.0</td><td>10</td><td>4.40</td><td>103.0</td><td>82.86</td></tr><tr><td></td><td></td><td></td><td>Total</td><td>107.25</td></tr></table>

Table 8 Valuation of the 5-Year  $6 \%$  Coupon Bond after 5-Year Key Rate and Neighboring Spot Rates Change

<table><tr><td>Years</td><td>Period</td><td>Spot Rate (in percent)</td><td>Cash Flow (in dollars)</td><td>Present Value (in dollars)</td></tr><tr><td>0.5</td><td>1</td><td>3.00</td><td>3.0</td><td>2.96</td></tr><tr><td>1.0</td><td>2</td><td>3.25</td><td>3.0</td><td>2.90</td></tr><tr><td>1.5</td><td>3</td><td>3.50</td><td>3.0</td><td>2.85</td></tr><tr><td>2.0</td><td>4</td><td>3.75</td><td>3.0</td><td>2.79</td></tr><tr><td>2.5</td><td>5</td><td>4.00</td><td>3.0</td><td>2.72</td></tr><tr><td>3.0</td><td>6</td><td>4.10</td><td>3.0</td><td>2.66</td></tr><tr><td>3.5</td><td>7</td><td>4.25</td><td>3.0</td><td>2.59</td></tr><tr><td>4.0</td><td>8</td><td>4.40</td><td>3.0</td><td>2.52</td></tr><tr><td>4.5</td><td>9</td><td>4.50</td><td>3.0</td><td>2.46</td></tr><tr><td>5.0</td><td>10</td><td>4.60</td><td>103.0</td><td>82.05</td></tr><tr><td></td><td></td><td></td><td>Total</td><td>106.48</td></tr></table>

What information can be gleaned from these key rate durations? Each key rate duration by itself means relatively little. However, the distribution of the bond's key rate durations helps us assess its exposure to yield curve risk. Intuitively, the sum of the key rate durations is approximately equal to a bond's duration. (The reason it is only approximate is that modified duration assumes a flat yield curve, whereas key rate duration takes the spot curve as given.)

As a result, it is useful to think of a set of key rate durations as a decomposition of duration into sensitivities to various portions of the yield curve. In our illustration, it is not surprising that the lion's share of the yield curve risk exposure of the coupon bond in our illustration is due to the bond's terminal cash flow, so the 5-year key rate duration is the largest of the three. Simply put, the 5-year bond's value is more sensitive to movements in longer spot rates and less sensitive to movements in shorter spot rates.

Key rate durations are most useful when comparing two (or more) bond portfolios that have approximately the same duration. If the spot curve is flat and experiences a parallel shift, these two bond portfolios can be expected to experience approximately the same percentage change in value. However, the performance of the two portfolios will generally not be the same for a nonparallel shift in the spot curve. The key rate duration profile of each portfolio will give the portfolio manager some clues about the relative performance of the two portfolios when the yield curve changes shape and slope.

# SLOPE ELASTICITY MEASURE

The slope elasticity measure, introduced by Schumacher, Dektar, and Fabozzi (1994) for managing the yield curve risk of portfolios of collateralized mortgage obligation bonds, also looks at the sensitivity of a position or portfolio to changes in the slope of the yield curve. They define the yield curve slope as the spread between the 30-year on-the-run Treasury yield and the 3-month Treasury bill yield (that is, basically the longest and the shortest points on the Treasury yield curve).


They find that while this is not a perfect definition, it captures most of the effect of changes in yield curve slope. They then define changes in the yield curve as follows: Half of any basis point change in the yield curve slope results from a change in the 3-month yield and half from a change in the 30-year yield. For example, with a 200-basis-point steepening of the yield curve, the assumption is that 100 basis points of that steepening come from a rise in the 30-year yield, and another 100 basis points come from a fall in the 3-month yield.

The sensitivity of a bond's price to changes in the yield curve is simply its slope elasticity. They define slope elasticity as the approximate negative percentage change in a bond's price resulting from a 100-basis-point change in the slope of the curve. Slope elasticity is calculated as follows: Increase and decrease the yield curve slope, calculate the price change for these two scenarios after adjusting for the price effect of a change in the level of yields, and compare the prices to the initial price. More specifically, the slope elasticity for each scenario is calculated as follows:

Price effect of a change in slope/Base price

Change in yield curve slope

The slope elasticity is then the average of the slope elasticity for the two scenarios.

A bond or bond portfolio that benefits when the yield curve flattens is said to have positive slope elasticity; a bond or a bond portfolio that benefits when the yield curve steepens is said to have negative slope elasticity. The definition of yield curve risk follows from that of slope elasticity. It is defined as the exposure of the bond to changes in the slope of the yield curve.

# YIELD CURVE RESHAPING DURATION

Yield curve reshaping duration, introduced by Klaffky, Ma, and Nozari (1992), focuses on three points on the yield curve: 2-year, 10-year, and 30-year, and the spread between the 10-year and 2-year issues and the spread between the 30-year and 10-year issues. The former spread is referred to as the short end of the yield curve, and the latter spread the long end of the yield curve. Klaffky, Ma, and Nozari refer to the sensitivity of a portfolio to changes in the short end of the yield curve as short-end duration (SEDUR) and to changes in the long end of the yield curve as long-end duration (LEDUR). These concepts, however, are applicable to other points on the yield curve.


To calculate the SEDUR of each security in the portfolio, the percentage change in the security's price is calculated for (1) a steepening of the yield curve at the short end by 50 basis points, and (2) a flattening of the yield curve at the short end of the yield curve by 50 basis points. Then the security's SEDUR is computed as follows:

$$
\mathrm{SE DU R} = \frac{P_{s} - P_{f}}{2 P_{0} (\Delta y)}
$$ where


$P_{s} =$  security's price if the short end of the yield curve steepens by 50 basis points

$P_{f} =$  security's price if the short end of the yield curve flattens by 50 basis points

$P_{0} =$  security's current market price

$\Delta y =$  number of basis points by which the yield curve is changed

To calculate the LEDUR, the same procedure is used for each security in the portfolio: Calculate the price for (1) a flattening of the yield curve at the long end by 50 basis points, and (2) a steepening of the yield curve at the long end of the yield curve by 50 basis points. Then the security's LEDUR is computed as follows:

$$
\mathrm{LE DU R} = \frac{P_{f} - P_{s}}{2 P_{0} (\Delta y)}
$$

For an illustration, see Fabozzi (1999).

# ANALYSIS OF LIKELY YIELD CURVE SHIFTS

While key rate duration is a useful measure for identifying the exposure of a portfolio to different potential shifts in the yield curve, it is difficult to employ this approach to yield curve risk in hedging a portfolio. An alternative approach is to investigate how yield curves have changed historically and incorporate typical yield curve change scenarios into the hedging process. This approach of using likely yield curve changes obtained from principal component analysis has been suggested by Richard and Gord (1997), Golub and Tilman (1997), and Axel and Vankudre (2000).

Empirically, studies have found that yield curve changes are not parallel. Rather, when the level of interest rates changes, studies have found that short-term rates move more than longer-term rates. Some firms develop their own proprietary models that decompose historical movements in the rate changes of Treasury strips with different maturities in order to analyze typical or likely rate movements. The statistical technique used to decompose rate movements is principal component analysis.

# KEY POINTS

- When using a portfolio's duration and convexity to measure the exposure to interest rates, it is assumed that the yield curve shifts in a parallel fashion.
- For a nonparallel shift in the yield curve, duration and convexity may not provide adequate information about the risk exposure to changes in interest rates.
- Yield curve risk is the exposure of a portfolio to a change in the shape of the yield curve. There are several approaches that have been proposed for measuring a portfolio's yield curve risk.
- A simple approach to measuring yield curve risk, an approach commonly used by index managers, is an analysis of the cash flow distribution of a portfolio relative to a benchmark.


Key rate duration measures how changes in Treasury yields at different points on the spot rate curve affect the value of a bond.
- Slope elasticity looks at the sensitivity of a position or portfolio to changes in the slope of the yield curve and is defined as the approximate negative percentage change in a bond's price resulting from a 100-basis-point change in the slope of the curve.
- Yield curve reshaping duration decomposes the yield curve into a short end and a long end. The sensitivity of a portfolio to changes in the short end of the yield curve is called short-end duration (SEDUR) and to changes in the long end of the yield curve is called long-end duration (LEDUR).
- Using principal component analysis, a portfolio manager can determine likely yield curve shifts and use those shifts to assess the exposure of a portfolio to yield curve risk.

# NOTE

1. See, e.g., Litterman and Scheinkman (1991) and Jones (1991).

# REFERENCES

Axel, R., and Vankudre, P. (2000). Managing the yield curve with principal component analysis. In F. J. Fabozzi (ed.), Professional Perspectives on

Fixed Income Portfolio Management, Volume 3 (pp. 37-49). Hoboken, NJ: John Wiley & Sons.
Dattatreya, R. E., and Fabozzi, F. J. (1995). The risk point method for measuring and controlling yield curve risk. Financial Analysts Journal, July-August: 45-54.
Fabozzi, F. J. (1999). Duration, Convexity, and Other Bond Risk Measures. Hoboken, NJ: John Wiley & Sons.
Golub, B. W., and Tilman, L. M. (1997). Measuring plausibility of hypothetical interest rate shocks. In F. J. Fabozzi (ed.), Managing Fixed Income Portfolios (pp. 73-86). Hoboken, NJ: John Wiley & Sons.
Ho, T. S. Y. (1992). Key rate durations: Measures of interest rate risk. Journal of Fixed Income, September: 29-44.
Jones, F. J. (1991). Yield curve strategies. Journal of Fixed Income, September: 43-51.
Litterman, R., and Scheinkman, J. (1991). Common factors affecting bond returns. Journal of Fixed Income, June: 54-61.
Richard, S. F., and Gord, B. J. (1997). Measuring and managing interest-rate risk. In F. J. Fabozzi (ed.), Managing Fixed Income Portfolios (pp. 19-30). Hoboken, NJ: John Wiley & Sons.
Schumacher, M. P., Dektar, D. C., and Fabozzi, F. J. (1994). Yield curve risk of CMO bonds. In F. J. Fabozzi (ed.), CMO Portfolio Management (pp. 271-310). Hoboken, NJ: John Wiley & Sons.
Volpert, K. E. (2000). Managing indexed and enhanced indexed bond portfolios. In F. J. Fabozzi (ed.), Fixed Income Readings for the Chartered Financial Analyst Program (pp. 85-100). New Hope, PA: Frank J. Fabozzi Associates.

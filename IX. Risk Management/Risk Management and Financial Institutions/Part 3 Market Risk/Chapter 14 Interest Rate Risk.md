---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 14
linter-yaml-title-alias: Chapter 14
---

# Chapter 14

# Interest Rate Risk

Interest rate risk is more difficult to manage than the risk arising from market variables such as equity prices, exchange rates, and commodity prices. One complication is that there are many different interest rates in any given currency (Treasury rates, interbank borrowing and lending rates, swap rates, and so on). Although these tend to move together, they are not perfectly correlated. Another complication is that we need more than a single number to describe the interest rate environment. We need a function describing the variation of the interest rate with maturity. This is known as the term structure of interest rates or the yield curve. The interest rate considered is usually a zero-coupon interest rate, sometimes just referred to as a "zero." It is the rate of interest that would apply for the maturity being considered if all interest and principal are paid at the end (i.e., there are no periodic payments such as those that are usually made on bonds).

Consider, for example, the situation of a U.S. government bond trader. The trader's portfolio is likely to consist of many bonds with different maturities. There is an exposure to movements in the one-year rate, the two-year rate, the three-year rate, and so on. The trader's delta exposure is therefore more complicated than that of a gold trader, for example. He or she must be concerned with all the different ways in which the U.S. Treasury yield curve can change its shape through time.

This chapter starts by explaining some of the interest rates that are important to financial institutions. It then moves on to consider how the methods for calculating VaR and ES in Chapters 12 and 13 can be used for interest rate exposures. The management of net interest income is then considered. Finally, the chapter explains the use of duration and convexity measures.

This chapter does not cover issues such as the compounding frequency with which interest rates are measured and how the term structure of zero-coupon interest rates is calculated. These topics are covered in Appendices A and B.

# 14.1 Types of Rates

An interest rate in a particular situation defines the amount of money a borrower promises to pay the lender. For any given currency, many different types of interest rates are regularly quoted. These include mortgage rates, deposit rates, prime borrowing rates, and so on. One important factor influencing interest rates is credit risk. This is the risk that there will be a default by the borrower of funds, so that the interest and principal are not paid to the lender as promised. The higher the credit risk, the higher the interest rate that is promised by the borrower. The extra amount added to a risk-free interest rate to allow for credit risk is known as a credit spread. Interest rates are often expressed in basis points. One basis point is  $0.01\%$  per annum.

# 14.1.1 Treasury Rates

Treasury rates are the rates an investor earns on Treasury bills and Treasury bonds. These are the instruments used by a government to borrow in its own currency. Japanese Treasury rates are the rates at which the Japanese government borrows in yen; U.S. Treasury rates are the rates at which the U.S. government borrows in U.S. dollars; and so on. It is usually assumed that there is no chance that the government of a developed country will default on an obligation denominated in its own currency. A developed country's Treasury rates are therefore regarded as risk-free in the sense that an investor who buys a Treasury bill or Treasury bond is certain that interest and principal payments will be made as promised.

# 14.1.2 Overnight Rates

There is a great deal of borrowing and lending between banks in the overnight market and the rates paid are monitored. For the U.S. dollar, the most important overnight rate is the secured overnight funding rate (SOFR). As its name implies, this is a secured rate (i.e., backed by collateral). A similar secured overnight rate for the Swiss franc is the Swiss average rate overnight (SARON). Important unsecured overnight rates in the United Kingdom, the Eurozone, and Japan are the sterling overnight index average (SONIA), the euro short-term rate (ESTER), and the Tokyo overnight average rate (TONAR), respectively.

# 14.1.3 Reference Rates

Reference interest rates are important in financial markets. The parties to transactions frequently enter into contracts where the future interest rate paid or received is uncertain, but will be calculated based on the value of an agreed reference interest rate. LIBOR used to be the most important reference rate. But as explained in Section 5.3.3, its use has now been discontinued. Regulators have suggested that reference rates be replaced by the overnight rates just mentioned.

Longer rates such as three-month rates, six-month rates, or one-year rates can be determined from overnight rates by compounding them daily. Suppose that the annualized SOFR rate for the  $i$ th business day in a period is  $r_i$  and the rate applies to  $d_i$  days. The annualized SOFR rate is a rate per 360 days. The annualized interest rate for the period is therefore

$$
[ (1 + r _ {1} \hat {d} _ {1}) (1 + r _ {2} \hat {d} _ {2}) \dots (1 + r _ {n} \hat {d} _ {n}) - 1 ] \times \frac {3 6 0}{D}
$$ where  $\hat{d}_i = d_i / 360$  and  $D = \sum_{i}d_{i}$  is the number of days in the period. On most days  $d_{i} = 1$ , but weekends and holidays lead to overnight rates being applied to more than one day. (For example, on a Friday  $d_{i}$  will usually be 3.)


As mentioned in Section 5.3.3, there are important differences between the new reference rates proposed by regulators and the old ones. LIBOR rates are forward looking. They are determined at the beginning of the period to which they will apply. The new reference rates are backward looking in the sense that the rate for a period is not known until the end of the period when all the relevant overnight rates have been observed. Another difference is that the new rates are regarded as risk-free because they are derived from one-day loans to creditworthy financial institutions. LIBOR, by contrast, incorporates a credit spread. The spread between three-month LIBOR and a three-month rate based on overnight rates is usually about 10 basis points  $(0.1\%)$ , but it can be much higher in stressed market conditions. For example, it spiked to an all-time high of 364 basis points  $(3.64\%)$  in the United States in October 2008 during the Global Financial Crisis.

If a bank offers a loan at a reference rate plus  $x\%$ , where  $x$  is a constant, it would usually like the rate to reflect ups and downs in average credit spreads. LIBOR, when used as a reference rate, did this, but the overnight rates (because they are essentially risk-free) do not. As mentioned in Section 5.3.3, this has led to the development of some alternatives to the rates proposed by regulators. One is the Bloomberg Short-Term Yield Index (BSBY), which estimates the average yield at which large banks in the United States access unsecured funds. Another is AMERIBOR, which reflects the actual borrowing costs of thousands of community and regional banks in the United States. It will be interesting to see which of the reference rates that have been proposed as replacements for LIBOR become most actively used.

# 14.1.4 Repo Rates

In a repo (or repurchase agreement), a financial institution that owns securities agrees to sell the securities for a certain price and to buy them back at a later time for a slightly higher price. The financial institution is obtaining a loan, and the interest it pays is the difference between the price at which the securities are sold and the price at which they are repurchased. The interest rate is referred to as the repo rate.

If structured carefully, a repo involves very little credit risk. If the borrower does not honor the agreement, the lending company simply keeps the securities. If the lending company does not keep to its side of the agreement, the original owner of the securities keeps the cash provided by the lending company. The most common type of repo is an overnight repo, which may be rolled over day to day. However, longer-term arrangements, known as term repos, are sometimes used.

# 14.2 Calculating Risk Measures

Term structures create complications for the application of the approaches for calculating VaR and ES in Chapters 12 and 13. One instrument in a company's portfolio might lead to a cash flow in 3.32 years so that the change in the value of the portfolio over the next short period of time depends on what will happen to the 3.32-year interest rate. Another instrument might lead to a cash flow at the 4.48-year point so that the financial institution also has an exposure to that rate. The 3.32-year rate and the 4.48-year rate will tend to move together, but they are not perfectly correlated.

It is clearly not possible to consider separately every single maturity to which a financial institution is exposed. Typically, the financial institution will calculate, from the yields on available instruments, zero-coupon interest rates for certain standard maturities such as three months, six months, one year, etc. The way this is done is outlined in Appendix B. It will monitor the movements in these interest rates and calculate other rates as needed using linear interpolation. It will do this for all the different term structures of interest rates to which it is exposed.

When the historical simulation approach is used, the rate for each standard maturity for each term structure is considered as a separate risk factor. The change in each of these rates in the  $i$ th scenario is the observed change between Day  $i-1$  and Day  $i$  of the historical data. As discussed in Section 13.1 calculations are based on actual changes rather than percentage changes in risk factors. Required rates for nonstandard maturities can be calculated using linear interpolation between the rates for standard maturities as indicated in Appendix B.

When the model-building approach is used, the rate for each standard maturity on each term structure can also be defined as a separate risk factor. A delta for the rate at the  $i$ th point is calculated as  $\Delta P / \Delta r$  where  $\Delta r$  is a small change in the rate and  $\Delta P$  the change in the portfolio value when that rate is changed and others are kept fixed. Figure 14.1 considers a term structure defined by points corresponding to maturities 3 months, 6 months, 1 year, 2 years, 3 years, 5 years, 10 years, 15 years, 20 years, and 30 years, and shows the effect on the term structure making a small change to the five-year rate. The deltas for other points on the term structure are calculated similarly. All rates less than the shortest rate (three months in our example) are changed by the same amount  $\Delta r$  and rates between that rate and the next rate are changed in the same way as the rates between five years and ten years in Figure 14.1. Similarly, for the longest maturity rate, all rates greater than the longest rate are changed by  $\Delta r$  and the rates between the second-longest and the longest maturity are changed in the same way as rates between three years and five years in Figure 14.1. (This is consistent with the usual convention for constructing zero-coupon term structures described in Appendix B.) The result of all of this is that the sum on the deltas for the points on the term structure is the delta for a parallel shift in the whole term structure. The DV01 of a portfolio is defined as the effect on it of a one-basis-point parallel shift. The deltas we have described are in effect a way of dividing this into components, one for each point on the term structure.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/d55506269272da247b58427931d0bc12f26818042c0767a38f6174de8bede357.jpg)
Figure 14.1 Five-Year Rate Is Changed with Other Rates Kept Constant


Consider a portfolio whose value depends on only one term structure. Define  $\delta_{i}$  as the delta for the  $i$ th point on the term structure. If  $\sigma_{i}$  is the standard deviation of a one-day change in the rate corresponding to this point and  $\rho_{ij}$  is the correlation between movements in rates at the  $i$ th and  $j$ th points, the standard deviation of the change in the value of the portfolio in one day is

$$

\sigma_ {P} = \sqrt {\sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \rho_ {i j} \delta_ {i} \delta_ {j} \sigma_ {i} \sigma_ {j}} \tag {14.1}

$$ where  $n$  is the number of points on the term structure.

Any given future cash flow has a delta with respect to the two adjacent maturities. For example, a cash flow in 3.5 years has a delta with respect to the three-year rate and the five-year rate, but none with respect to the other rates. When the exposure to the 3.5-year rate is  $X$ , the nature of the changes indicated in Figure 14.1 shows that this translates to an exposure of  $0.75X$  to the three-year rate and  $0.25X$  to the five-year rate.

Note that equation (14.1) is the same as equation (13.2). The only difference is that equation (13.2) works with proportional changes in the risk factors (the  $\delta$ -variables measure the impact on the portfolio of a proportional changes, and the  $\sigma$ -variables are volatilities), whereas equation (14.1) works with actual changes in the risk factors (the  $\delta$ -variables measure the impact of actual changes in the risk factors and the  $\sigma$ -variables are standard deviations). Equations (13.2) and (14.1) can be extended to cover a portfolio where proportional changes are considered for some risk factors and actual changes are considered for others.

Suppose now that portfolio  $P$  depends on  $K$  term structures. Define  $\delta_{ik}, \sigma_{ik}$ , and  $\rho_{ijk}$  as the values of  $\delta_i, \sigma_i$ , and  $\rho_{ij}$  for term structure  $k$  ( $1 \leq k \leq K$ ). Also define

$$
V _ {k} ^ {2} = \sum_ {i = 1} ^ {N _ {k}} \sum_ {j = 1} ^ {N _ {k}} \rho_ {i j k} \delta_ {i k} \delta_ {j k} \sigma_ {i k} \sigma_ {j k}
$$

$$
U _ {k} = \sum_ {i = 1} ^ {N _ {k}} \delta_ {i k} \sigma_ {i k}
$$ where  $N_{k}$  is the number of vertices used for term structure  $k$ .


It is usual to describe the correlation between the two term structures with a single parameter. Suppose that  $\rho(k_1, k_2)$  is the correlation between term structures  $k_1$  and  $k_2$ . Two ways of defining it are as follows:

1. The correlation between rate  $i$  for term structure  $k_{1}$  and rate  $j$  for term structure  $k_{2}$  is  $\rho(k_{1}, k_{2})$  for all  $i$  and  $j$ .
2. The change in the value of the portfolio due to movements in term structure  $k_{1}$  and the change in the value of the portfolio due to movements in term structure  $k_{2}$  have a correlation of  $\rho (k_1,k_2)$ .

The first definition leads to

$$

\sigma_ {P} = \sqrt {\sum_ {k} V _ {k} ^ {2} + \sum_ {k _ {1} \neq k _ {2}} \rho \left(k _ {1} , k _ {2}\right) U _ {k _ {1}} U _ {k _ {2}}} \tag {14.2}

$$ whereas the second gives


$$

\sigma_ {P} = \sqrt {\sum_ {k} V _ {k} ^ {2} + \sum_ {k _ {1} \neq k _ {2}} \rho \left(k _ {1} , k _ {2}\right) V _ {k _ {1}} V _ {k _ {2}}} \tag {14.3}

$$

# Example 14.1

Suppose that a portfolio has exposures to two different interest rate term structures. The standard deviations of rate moves per day and the delta exposures to rate moves are shown in Table 14.1. For example, the standard deviation of daily changes in the two-year rate in term structure 1 is 5.6 basis points (0.056\%), while that for term structure 2 is 11.4 basis points. The impact of a one-basis-point change in the two-year rate is  $85 million for term structure 1 and$ 65 million for term structure 2. We assume that correlations  $\rho_{ij}$  are the same for both term structures and are those shown in Table 14.2. Thus the correlation between the change in the one-year rate in term structure 1 and the change in the two-year rate in term structure 1 is 0.92. The same is true for term structure 2.

Table 14.1 Standard Deviations (in basis points) and Delta Exposures (in millions of dollars per basis point)

<table><tr><td></td><td>3m</td><td>6m</td><td>1yr</td><td>2yr</td><td>3yr</td><td>5yr</td><td>10yr</td><td>15yr</td><td>20yr</td><td>30yr</td></tr><tr><td>TS1 SD per day</td><td>8.8</td><td>7.4</td><td>6.7</td><td>5.6</td><td>5.4</td><td>5.4</td><td>5.2</td><td>5.2</td><td>5.5</td><td>6.4</td></tr><tr><td>TS2 SD per day</td><td>10.2</td><td>10.8</td><td>12.0</td><td>11.4</td><td>11.0</td><td>11.4</td><td>10.0</td><td>11.2</td><td>11.2</td><td>11.3</td></tr><tr><td>Delta TS1</td><td>55</td><td>65</td><td>80</td><td>85</td><td>90</td><td>70</td><td>65</td><td>40</td><td>20</td><td>5</td></tr><tr><td>Delta TS2</td><td>85</td><td>75</td><td>70</td><td>65</td><td>50</td><td>45</td><td>40</td><td>30</td><td>20</td><td>20</td></tr></table>

Table 14.2 Correlations between Rates of Different Maturities

<table><tr><td></td><td>3m</td><td>6m</td><td>1yr</td><td>2yr</td><td>3yr</td><td>5yr</td><td>10yr</td><td>15yr</td><td>20yr</td><td>30yr</td></tr><tr><td>3m</td><td>1.00</td><td>0.78</td><td>0.62</td><td>0.50</td><td>0.44</td><td>0.36</td><td>0.27</td><td>0.20</td><td>0.17</td><td>0.13</td></tr><tr><td>6m</td><td>0.78</td><td>1.00</td><td>0.84</td><td>0.74</td><td>0.67</td><td>0.57</td><td>0.44</td><td>0.37</td><td>0.35</td><td>0.30</td></tr><tr><td>1yr</td><td>0.62</td><td>0.84</td><td>1.00</td><td>0.92</td><td>0.86</td><td>0.76</td><td>0.63</td><td>0.55</td><td>0.53</td><td>0.47</td></tr><tr><td>2yr</td><td>0.50</td><td>0.74</td><td>0.92</td><td>1.00</td><td>0.98</td><td>0.89</td><td>0.75</td><td>0.69</td><td>0.66</td><td>0.60</td></tr><tr><td>3yr</td><td>0.44</td><td>0.67</td><td>0.86</td><td>0.98</td><td>1.00</td><td>0.96</td><td>0.83</td><td>0.78</td><td>0.75</td><td>0.69</td></tr><tr><td>5yr</td><td>0.36</td><td>0.57</td><td>0.76</td><td>0.89</td><td>0.96</td><td>1.00</td><td>0.92</td><td>0.89</td><td>0.86</td><td>0.81</td></tr><tr><td>10yr</td><td>0.27</td><td>0.44</td><td>0.63</td><td>0.75</td><td>0.83</td><td>0.92</td><td>1.00</td><td>0.98</td><td>0.96</td><td>0.93</td></tr><tr><td>15yr</td><td>0.20</td><td>0.37</td><td>0.55</td><td>0.69</td><td>0.78</td><td>0.89</td><td>0.98</td><td>1.00</td><td>0.99</td><td>0.97</td></tr><tr><td>20yr</td><td>0.17</td><td>0.35</td><td>0.53</td><td>0.66</td><td>0.75</td><td>0.86</td><td>0.96</td><td>0.99</td><td>1.00</td><td>0.99</td></tr><tr><td>30yr</td><td>0.13</td><td>0.30</td><td>0.47</td><td>0.60</td><td>0.69</td><td>0.81</td><td>0.93</td><td>0.97</td><td>0.99</td><td>1.00</td></tr></table>

Finally, we assume that the correlation parameter between the two term structures is 0.4. In millions of dollars, the results are:

$$

U _ {1} = 3, 5 2 9 U _ {2} = 5, 5 0 1

$$

$$

V _ {1} = 3, 0 0 4. 9 V _ {2} = 4, 6 0 4. 3

$$

The portfolio standard deviation per day given by equation (14.2) is 6,163.9, and the portfolio standard deviation given by equation (14.3) is 5,980.2. These must be multiplied by  $\sqrt{10}$  and 2.326 to get the 10-day  $99\%$  VaR. The expected shortfall can be calculated using equation (11.2).

The calculations are shown on the author's website: www-2.rotman.utoronto.ca/\~hull/riskman.


# 14.3 Principal Components Analysis

A statistical tool for handling groups of highly correlated risk factors is principal components analysis (PCA). The approach is best illustrated with an example. We consider daily data on changes in 1-year, 2-year, 3-year, 5-year, 7-year, 10-year, 20-year, and 30-year U.S. Treasury rates between January 2010 and July 2020. Tables 14.3 and 14.4 show results produced by a PCA analysis. The columns labeled PC1, PC2, etc. show the eight

Table 14.3 Factor Loadings for U.S. Treasury Rates

<table><tr><td></td><td>PC1</td><td>PC2</td><td>PC3</td><td>PC4</td><td>PC5</td><td>PC6</td><td>PC7</td><td>PC8</td></tr><tr><td>1yr</td><td>0.083</td><td>-0.242</td><td>0.685</td><td>-0.682</td><td>-0.006</td><td>-0.025</td><td>-0.021</td><td>-0.004</td></tr><tr><td>2yr</td><td>0.210</td><td>-0.465</td><td>0.376</td><td>0.574</td><td>-0.517</td><td>-0.031</td><td>0.011</td><td>-0.008</td></tr><tr><td>3yr</td><td>0.286</td><td>-0.467</td><td>0.006</td><td>0.185</td><td>0.728</td><td>0.347</td><td>0.106</td><td>-0.074</td></tr><tr><td>5yr</td><td>0.386</td><td>-0.315</td><td>-0.332</td><td>-0.145</td><td>0.061</td><td>-0.604</td><td>-0.348</td><td>0.361</td></tr><tr><td>7yr</td><td>0.430</td><td>-0.099</td><td>-0.349</td><td>-0.265</td><td>-0.266</td><td>-0.008</td><td>0.263</td><td>-0.688</td></tr><tr><td>10yr</td><td>0.428</td><td>0.119</td><td>-0.153</td><td>-0.172</td><td>-0.269</td><td>0.515</td><td>0.254</td><td>0.589</td></tr><tr><td>20yr</td><td>0.426</td><td>0.394</td><td>0.172</td><td>0.099</td><td>0.027</td><td>0.244</td><td>-0.722</td><td>-0.205</td></tr><tr><td>30yr</td><td>0.411</td><td>0.478</td><td>0.323</td><td>0.204</td><td>0.234</td><td>-0.434</td><td>0.461</td><td>0.036</td></tr></table>

Table 14.4 Standard Deviation of Factor Scores

<table><tr><td>PC1</td><td>PC2</td><td>PC3</td><td>PC4</td><td>PC5</td><td>PC6</td><td>PC7</td><td>PC8</td></tr><tr><td>11.54</td><td>3.55</td><td>1.78</td><td>1.25</td><td>0.91</td><td>0.69</td><td>0.62</td><td>0.57</td></tr></table> components or factors describing the rate moves. The first factor, labeled PC1, represents a shift where all rates move in the same direction. When we have one unit of that factor, the 1-year rate increases by 0.083 basis points, the 2-year rate increases by 0.210 basis points, and so on. The second factor is shown in the column labeled PC2. It represents a "twist" or change in the slope of the yield curve. Rates with maturities between 1 year and 7 years move in one direction; rates with maturities between 10 and 30 years move in the other direction. The third factor corresponds to a "bowing" of the yield curve. Relatively short rates and relatively long rates move in one direction; the intermediate rates move in the other direction. The interest rate movement for a particular factor is known as factor loading. In our example, the first factor's loading for the 1-year rate is  $0.083$ . (Note that the signs for factor loadings are somewhat arbitrary. We can change the signs for all factor loadings corresponding to a particular factor without changing the model. For example, if we did so for the first factor,  $-1$  unit of that factor would result in the same yield curve changes as  $+1$  unit does in Table 14.3.)


Because there are eight rates and eight factors, the interest rate changes observed on any given day can always be expressed as a linear sum of the factors by solving a set of eight simultaneous equations. The quantity of a particular factor in the interest rate changes on a particular day is known as the factor score for that day.

The importance of a factor is measured by the standard deviation of its factor score. The standard deviations of the factor scores in our example are shown in Table 14.4, and the factors are listed in order of their importance. The numbers in Table 14.4 are measured in basis points. A quantity of the first factor equal to 1 standard deviation, therefore, corresponds to the 1-year rate moving by  $0.083 \times 11.54 = 0.96$  basis points; the 2-year rate moving by  $0.210 \times 11.54 = 2.42$  basis points, and so on.

Software for carrying out the calculations underlying Tables 14.3 and 14.4 is on the author's website. The calculations are explained in Appendices H and I at the end of the book. The factors have the property that the factor scores are uncorrelated across the data. For instance, in our example, the first factor score is uncorrelated with the second factor score for the days considered. The variances of the factor scores have the property that they add up to the total variance of the data. From Table 14.4, the total variance of the original data (that is, sum of the variance of the observations on the 1-year rate, the variance of the observations on the 2-year rate, and so on) is

$$

1 1. 5 4 ^ {2} + 3. 5 5 ^ {2} + 1. 7 8 ^ {2} + \dots + 0. 5 7 ^ {2} = 1 5 2. 5

$$

From this it can be seen that the first factor accounts for  $11.54^{2} / 152.5 = 87.3\%$  of the variance in the original data; the first two factors account for

$$

\frac{11.54^{2} + 3.55^{2}}{152.5} = 95.6\%

$$ of the variance in the data; the third factor accounts for a further  $2.1\%$  of the variance. This shows that most of the risk in interest rate moves is accounted for by the first two or three factors. It suggests that we can relate the risks in a portfolio of interest rate dependent instruments to movements in these factors instead of considering all eight interest rates.

The three most important factors from Table 14.3 are plotted in Figure 14.2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/367aff10606ae767d758cf52688244051860bd5d88537781b7817f23e8ec6c88.jpg)

Figure 14.2 The Three Most Important Factors Driving Treasury Rates in the United States Using Daily Data between 2010 and 2020

Table 14.5 Change in Portfolio Value for a 1-Basis-Point Rate Move

<table><tr><td>2-Year Rate</td><td>3-Year Rate</td><td>5-Year Rate</td><td>7-Year Rate</td><td>10-Year Rate</td></tr><tr><td>+10</td><td>+4</td><td>-8</td><td>-7</td><td>+2</td></tr></table>

# 14.3.1 Calculating VaR and ES

To illustrate how a principal components analysis can be used to calculate VaR and ES, consider a portfolio with the exposures to interest rate moves shown in Table 14.5. A one-basis-point change in the 2-year rate causes the portfolio value to increase by  $10 million; a one-basis-point change in the 3-year rate causes it to increase by$ 4 million, and so on. Suppose the first two factors are used to model rate moves. (As mentioned above, this captures 95.6\% of the variance in rate moves.) Using the data in Table 14.2, the exposure to the first factor (measured in millions of dollars per factor score basis point) is

$$
1 0 \times 0. 2 1 0 + 4 \times 0. 2 8 6 - 8 \times 0. 3 8 6 - 7 \times 0. 4 3 0 + 2 \times 0. 4 2 8 = - 1. 9 9
$$ and the exposure to the second factor is


$$

1 0 \times (- 0. 4 6 5) + 4 \times (- 0. 4 6 7) - 8 \times (- 0. 3 1 5) - 7 \times (- 0. 0 9 9) + 2 \times 0. 1 1 9 = - 3. 0 6

$$

Suppose that  $f_{1}$  and  $f_{2}$  are the factor scores (measured in basis points). The change in the portfolio value is, to a good approximation, given by

$$

\Delta P = - 1. 9 9 f _ {1} - 3. 0 6 f _ {2}

$$

The factor scores are uncorrelated and have the standard deviations given in Table 14.2. The standard deviation of  $\Delta P$  is therefore

$$

\sqrt {1 . 9 9 ^ {2} \times 1 1 . 5 4 ^ {2} + 3 . 0 6 ^ {2} \times 3 . 5 5 ^ {2}} = 2 5. 4 5

$$

Assuming normally distributed factors, the one-day  $99\%$  VaR is  $25.45 \times 2.326 = 59.2$ . The one-day  $99\%$  ES is from equation 11.2:

$$

2 5. 4 5 \times \frac {e ^ {- 2 . 3 2 6 ^ {2} / 2}}{\sqrt {2 \pi} \times 0 . 0 1} = 6 7. 9:

$$

A principal components analysis can in theory be used for market variables other than interest rates. Suppose that a financial institution has exposures to a number of different stock indices. A principal components analysis can be used to identify factors describing movements in the indices, and the most important of these can be used to replace the market indices in a VaR analysis. How effective a principal components analysis is for a group of market variables depends on how closely correlated they are.

# 14.4 The Management of Net Interest Income

A key risk management activity for a bank is the management of net interest income. As explained in Section 2.2, the net interest income is the excess of interest received over interest paid. It is the role of the asset-liability management function within the bank to ensure that the net interest margin, which is net interest income divided by income-producing assets, remains roughly constant through time. This section considers how this is done.

How can fluctuations in net interest margin occur? Consider a simple situation where a bank offers consumers a one-year and a five-year deposit rate as well as a one-year and five-year mortgage rate. The rates are shown in Table 14.6. We make the simplifying assumption that the expected one-year interest rate for future time periods equals the one-year rate prevailing in the market today. Loosely speaking, this means that market participants consider interest rate increases to be just as likely as interest rate decreases. As a result, the rates in Table 14.6 are "fair" in that they reflect the market's expectations. Investing money for one year and reinvesting for four further one-year periods leads to an uncertain return. But, given our assumptions, the expected overall return is the same as a single five-year investment. Similarly, borrowing money for one year and refinancing each year for the next four years leads to the same expected financing costs as a single five-year loan.

Suppose you have money to deposit and agree with the prevailing view that interest rate increases are just as likely as interest rate decreases. Would you choose to deposit your money for one year at  $3\%$  per annum or for five years at  $3\%$  per annum? The chances are that you would choose one year because this gives you more financial flexibility. It ties up your funds for a shorter period of time.

Now suppose that you want a mortgage. Again, you agree with the prevailing view that interest rate increases are just as likely as interest rate decreases. Would you choose a one-year mortgage at  $6\%$  or a five-year mortgage at  $6\%$ ? The chances are that you would choose a five-year mortgage because it fixes your borrowing rate for the next five years and subjects you to less refinancing risk.

When the bank posts the rates shown in Table 14.6, it is likely to find that the majority of its depositors opt for a one-year maturity and the majority of the customers seeking mortgages opt for a five-year maturity. This creates an asset/liability mismatch for the bank and subjects its net interest income to risks. The deposits that are financing

Table 14.6 Example of Rates Offered by a Bank to Its Customers

<table><tr><td>Maturity (years)</td><td>Deposit Rate</td><td>Mortgage Rate</td></tr><tr><td>1</td><td>3\%</td><td>6\%</td></tr><tr><td>5</td><td>3\%</td><td>6\%</td></tr></table>

Table 14.7 Five-Year Rates Are Increased in an Attempt to Match Maturities of Assets and Liabilities

<table><tr><td>Maturity (years)</td><td>Deposit Rate</td><td>Mortgage Rate</td></tr><tr><td>1</td><td>3\%</td><td>6\%</td></tr><tr><td>5</td><td>4\%</td><td>7\%</td></tr></table> the five-year  $6\%$  mortgages are rolled over every year. There is no problem if interest rates fall. After one year, the bank will find itself financing the five-year  $6\%$  mortgages with deposits that cost less than  $3\%$  and net interest income will increase. However, if interest rates rise, the deposits that are financing the  $6\%$  mortgages will cost more than  $3\%$  and net interest income will decline. Suppose that there is a  $3\%$  rise in interest rates during the first two years. This would reduce net interest income for the third year to zero.


It is the job of the asset-liability management group to ensure that this type of interest rate risk is minimized. One way of doing this is to ensure that the maturities of the assets on which interest is earned and the maturities of the liabilities on which interest is paid are matched. In our example, the matching can be achieved by increasing the five-year rate on both deposits and mortgages. For example, the bank could move to the situation in Table 14.7 where the five-year deposit rate is  $4\%$  and the five-year mortgage rate is  $7\%$ . This would make five-year deposits relatively more attractive and one-year mortgages relatively more attractive. Some customers who chose one-year deposits when the rates were as in Table 14.6 will choose five-year deposits when rates are as in Table 14.7. Some customers who chose five-year mortgages when the rates were as in Table 14.6 will choose one-year mortgages. This may lead to the maturities of assets and liabilities being matched. If there is still an imbalance with depositors tending to choose a one-year maturity and borrowers a five-year maturity, five-year deposit and mortgage rates could be increased even further. Eventually the imbalance will disappear.

The net result of all banks behaving in the way we have just described is that long-term rates tend to be higher than those predicted by expected future short-term rates. This phenomenon is referred to as liquidity preference theory. It leads to long-term rates being higher than short-term rates most of the time. Even when the market expects a small decline in short-term rates, liquidity preference theory is likely to cause long-term rates to be higher than short-term rates. Only when a steep decline in interest rates is expected will long-term rates be less than short-term rates.

Many banks now have sophisticated systems for monitoring the decisions being made by customers so that, when they detect small differences between the maturities of the assets and liabilities being chosen, they can fine-tune the rates they offer. Often derivatives such as interest rate swaps are used to manage their exposures (see Example 5.1 in Chapter 5). The result of all this is that net interest margin is usually stable. This has not always been the case. In the 1980s in the United States, the failures of savings and loans companies were largely a result of their failure to match maturities for assets and liabilities.

# 14.4.1 Liquidity

In addition to eroding net interest margin, a mismatch of assets and liabilities can lead to liquidity problems. A bank that funds long-term loans with short-term deposits has to replace maturing deposits with new deposits on a regular basis. (This is sometimes referred to as rolling over the deposits.) If depositors lose confidence in the bank, it might find it difficult to do this. A well-known example of a financial institution that failed because of liquidity problems is Northern Rock in the United Kingdom. It chose to finance much of its mortgage portfolio with wholesale deposits, some lasting only three months. Starting in September 2007, the depositors became nervous because of the problems surfacing in the United States. As a result, Northern Rock was unable to finance its assets and was taken over by the UK government in early 2008 (see Business Snapshot 21.1 for more details). In the United States, Bear Stearns and Lehman Brothers experienced similar problems in rolling over their wholesale deposits.

Many of the problems during the Global Financial Crisis that started in 2007 were caused by a shortage of liquidity. As often happens during stressed market conditions, there was a flight to quality where investors looked for very safe investments and were not prepared to take credit risks. Bank regulators have now recognized the need to set liquidity requirements, as well as capital requirements, for banks. Chapter 21 discusses liquidity issues in more detail and Chapter 26 explains the liquidity requirements of regulators.

# 14.5 Duration

Duration is a widely used measure of a portfolio's exposure to yield curve movements. Suppose  $\gamma$  is a bond's yield and  $B$  is its market price. The duration  $D$  of the bond is defined as

$$

D = - \frac {1}{B} \frac {\Delta B}{\Delta \gamma} \tag {14.4}

$$ so that


$$

\Delta B = - D B \Delta \gamma \tag {14.5}

$$ where  $\Delta \gamma$  is a small change in the bond's yield and  $\Delta B$  is the corresponding change in its price. Duration measures the sensitivity of percentage changes in the bond's price to changes in its yield. Using calculus notation, we can write

$$
D = - \frac {1}{B} \frac {d B}{d y} \tag {14.6}
$$

Consider a bond that provides cash flows  $c_{1}, c_{2}, \ldots, c_{n}$  at times  $t_{1}, t_{2}, \ldots, t_{n}$ . (The cash flows consist of the coupon and principal payments on the bond.) The bond yield,  $\gamma$ , is defined as the discount rate that equates the bond's theoretical price to its market price. We denote the present value of the cash flow  $c_{i}$ , discounted from time  $t_{i}$  to today at rate  $\gamma$ , by  $\nu_{i}$  so that the price of the bond is

$$
B = \sum_ {i = 1} ^ {n} v _ {i}
$$

An alternative definition of duration is

$$
D = \sum_ {i = 1} ^ {n} t _ {i} \left(\frac {v _ {i}}{B}\right) \tag {14.7}
$$

The term in parentheses in equation (14.7) is the ratio of the present value of the cash flow at time  $t_i$  to the bond price. Equation (14.7) therefore defines duration as a weighted average of the times when payments are made, with the weight applied to time  $t_i$  being equal to the proportion of the bond's total present value provided by the cash flow at time  $t_i$ . (The sum of the weights is 1.0.) This definition explains where the term duration comes from. Duration is a measure of how long the bondholder has to wait for cash flows. A zero-coupon bond that lasts  $n$  years has a duration of  $n$  years. However, a coupon-bearing bond lasting  $n$  years has a duration of less than  $n$  years, because the holder receives some of the cash payments prior to year  $n$ .

If the bond's yield,  $\gamma$ , in equation (14.4) is measured with continuous compounding, it turns out that the definitions of duration in equations (14.4) and (14.7) are the same. (See Problem 14.15.)

Consider a three-year 10\% coupon bond with a face value of $100. Suppose that the yield on the bond is 12\% per annum with continuous compounding. This means that γ = 0.12. Coupon payments of $5 are made every six months. Table 14.8 shows the calculations necessary to determine the bond's duration. The present values of the bond's cash flows, using the yield as the discount rate, are shown in column 3. (For example, the present value of the first cash flow is 5e-0.12×0.5 = 4.709.) The sum of the numbers in column 3 is the bond's market price, 94.213. The weights are calculated by dividing the numbers in column 3 by 94.213. The sum of the numbers in column 5 gives the duration as 2.653 years.

Small changes in interest rates are often measured in basis points. A basis point is  $0.01\%$  per annum. The following example shows that equation (14.5) is correct when duration is defined as in equation (14.7) and yields are measured with continuous compounding.

Table 14.8 Calculation of Duration

<table><tr><td>Time (years)</td><td>Cash Flow ($)</td><td>Present Value</td><td>Weight</td><td>Time × Weight</td></tr><tr><td>0.5</td><td>5</td><td>4.709</td><td>0.050</td><td>0.025</td></tr><tr><td>1.0</td><td>5</td><td>4.435</td><td>0.047</td><td>0.047</td></tr><tr><td>1.5</td><td>5</td><td>4.176</td><td>0.044</td><td>0.066</td></tr><tr><td>2.0</td><td>5</td><td>3.933</td><td>0.042</td><td>0.083</td></tr><tr><td>2.5</td><td>5</td><td>3.704</td><td>0.039</td><td>0.098</td></tr><tr><td>3.0</td><td>105</td><td>73.256</td><td>0.778</td><td>2.333</td></tr><tr><td>Total</td><td>130</td><td>94.213</td><td>1.000</td><td>2.653</td></tr></table>

# Example 14.2

For the bond in Table 14.8, the bond price,  $B$ , is 94.213 and the duration,  $D$ , is 2.653, so that equation (14.5) gives

$$
\Delta B = - 9 4. 2 1 3 \times 2. 6 5 3 \Delta \gamma
$$ or


$$

\Delta B = - 2 4 9. 9 5 \Delta y

$$

When the yield on the bond increases by 10 basis points  $(= 0.1\%)$ ,  $\Delta \gamma = +0.001$ . The duration relationship predicts that  $\Delta B = -249.95 \times 0.001 = -0.250$  so that the bond price goes down to  $94.213 - 0.250 = 93.963$ . How accurate is this? When the bond yield increases by 10 basis points to  $12.1\%$ , the bond price is

$$

\begin{array}{l} 5 e ^ {- 0. 1 2 1 \times 0. 5} + 5 e ^ {- 0. 1 2 1 \times 1. 0} + 5 e ^ {- 0. 1 2 1 \times 1. 5} + 5 e ^ {- 0. 1 2 1 \times 2. 0} \\ + 5 e ^ {- 0. 1 2 1 \times 2. 5} + 1 0 5 e ^ {- 0. 1 2 1 \times 3. 0} = 9 3. 9 6 3 \\ \end{array}

$$ which is (to three decimal places) the same as that predicted by the duration relationship.


# 14.5.1 Modified Duration

The definition of duration in equation (14.7) was suggested by Frederick Macaulay in 1938. It is referred to as Macaulay's duration. As mentioned, when the yield  $\gamma$  on the bond is measured with continuous compounding, it is equivalent to the definition in equation (14.4). When duration is defined using equation (14.4) and other compounding frequencies are used for  $\gamma$ , a small adjustment is necessary to Macaulay's duration. When  $\gamma$  is measured with annual compounding, it can be shown that the expression for  $D$  in equation (14.7) must be divided by  $1 + \gamma$ . More generally, when  $\gamma$  is expressed with a compounding frequency of  $m$  times per year, it must be divided by  $1 + \gamma / m$ . (See Problem 14.15.) Duration defined with these adjustments to equation (14.7) is referred to as modified duration.

# Example 14.3

The bond in Table 14.8 has a price of 94.213 and a duration of 2.653. The yield, expressed with semiannual compounding, is  $12.3673\%$ . (See Appendix A.) The (modified) duration appropriate for calculating sensitivity to the yield when it is expressed with semiannual compounding is

$$

\frac {2 . 6 5 3}{1 + 0 . 1 2 3 6 7 3 / 2} = 2. 4 9 8 5

$$

From equation (14.5),

$$

\Delta B = - 9 4. 2 1 3 \times 2. 4 9 8 5 \Delta \gamma

$$ or


$$

\Delta B = - 2 3 5. 3 9 \Delta y

$$

When the yield (semiannually compounded) increases by 10 basis points  $(= 0.1\%)$ ,  $\Delta y = +0.001$ . The duration relationship predicts that we expect  $\Delta B$  to be  $-235.39 \times 0.001 = -0.235$  so that the bond price goes down to  $94.213 - 0.235 = 93.978$ . How accurate is this? When the bond yield (semiannually compounded) increases by 10 basis points to  $12.4673\%$  (or to  $12.0941\%$  with continuous compounding), an exact calculation similar to that in the previous example shows that the bond price becomes 93.978. This shows that the modified duration is accurate for small yield changes.

# 14.5.2 Dollar Duration

The dollar duration of a bond is defined as the product of its duration and its price. If  $D_{\mathbb{S}}$  is dollar duration, it follows from equation (14.5) that

$$

\Delta B = - D _ {\S} \Delta \gamma

$$ or using calculus notation


$$

D _ {\S} = - \frac {d B}{d \gamma}

$$

Whereas duration relates proportional changes in a bond's price to its yield, dollar duration relates actual changes in the bond's price to its yield. Dollar duration is analogous to the delta measure.

# 14.6 Convexity

The duration relationship measures exposure to small changes in yields. This is illustrated in Figure 14.3, which shows the relationship between the percentage change in value and change in yield for two bonds with the same duration. The gradients of the two curves are the same at the origin. This means that both portfolios change in value by the same percentage for small yield changes, as predicted by equation (14.5). For large yield changes, the bonds behave differently. Bond  $X$  has more curvature in its relationship with yields than bond  $Y$ . A factor known as convexity measures this curvature and can be used to improve the relationship between bond prices and yields.

The convexity for a bond is

$$

C = \frac {1}{B} \frac {d ^ {2} B}{d \gamma^ {2}} = \frac {\sum_ {i = 1} ^ {n} c _ {i} t _ {i} ^ {2} e ^ {- \gamma t _ {i}}}{B}

$$ where  $\gamma$  is the bond's yield measured with continuous compounding. This is the weighted average of the square of the time to the receipt of cash flows. From Appendix G, a second order approximation to the change in the bond price is

$$
\Delta B = \frac {d B}{d \gamma} \Delta \gamma + \frac {1}{2} \frac {d ^ {2} B}{d \gamma^ {2}} \Delta \gamma^ {2}
$$

This leads to

$$
\frac {\Delta B}{B} = - D \Delta \gamma + \frac {1}{2} C (\Delta \gamma) ^ {2} \tag {14.8}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/97d387741a185eab2c904fb710973067b801eb9dc21ffb1c0af8ab432d31f82f.jpg)

Figure 14.3 Two Bonds with the Same Duration and Different Convexities

# Example 14.4

Consider again the bond in Table 14.8. The bond price,  $B$ , is 94.213, and the duration,  $D$ , is 2.653. The convexity is

$$
\begin{array}{l} 0. 0 5 \times 0. 5 ^ {2} + 0. 0 4 7 \times 1. 0 ^ {2} + 0. 0 4 4 \times 1. 5 ^ {2} + 0. 0 4 2 \times 2. 0 ^ {2} + 0. 0 3 9 \times 2. 5 ^ {2} \\ + 0. 7 7 9 \times 3. 0 ^ {2} = 7. 5 7 0 \\ \end{array}
$$

The convexity relationship in equation (14.8) is therefore

$$
\frac {\Delta B}{B} = - 2. 6 5 3 \Delta y + \frac {1}{2} \times 7. 5 7 0 \times (\Delta y) ^ {2}
$$

Consider a  $2\%$  change in the bond yield from  $12\%$  to  $14\%$ . The duration relationship predicts that the dollar change in the value of the bond will be  $-94.213 \times 2.653 \times 0.02 = -4.999$ . The convexity relationship predicts that it will be

$$
- 9 4. 2 1 3 \times 2. 6 5 3 \times 0. 0 2 + 0. 5 \times 9 4. 2 1 3 \times 7. 5 7 0 \times 0. 0 2 ^ {2} = - 4. 8 5 6
$$

The actual change in the value of the bond is  $-4.859$ . This shows that the convexity relationship gives much more accurate results than duration for a large change in the bond yield.

# 14.6.1 Dollar Convexity

The dollar convexity of a bond,  $C_{\mathbb{S}}$ , can be defined analogously to dollar duration as the product of convexity and the value of the bond. This means that

$$
C _ {\S} = \frac {d ^ {2} B}{d \gamma^ {2}}
$$ and shows that dollar convexity is analogous to the gamma measure, which will be introduced in Chapter 15.


# 14.7 Generalization

So far we have used duration and convexity to measure the sensitivity of the price of a single bond to interest rates. The definitions of duration and convexity can be generalized so that they apply to a portfolio of bonds—or to any portfolio of interest-rate-dependent instruments. We define a parallel shift in the zero-coupon yield curve as a shift where all zero-coupon interest rates change by the same amount, as indicated in Figure 14.4.

Suppose that  $P$  is the value of the portfolio of interest-rate-dependent securities. We can make a small parallel shift in the zero-coupon yield curve and observe the change  $\Delta P$  in  $P$ . Duration is defined as

$$

D = - \frac {1}{P} \frac {\Delta P}{\Delta \gamma} \tag {14.9}

$$ where  $\Delta y$  is the size of the small parallel shift. Equation (14.9) is equivalent to

$$
\frac {\Delta P}{P} = - D \Delta \gamma \tag {14.10}
$$

Suppose a portfolio consists of a number of interest-rate-dependent assets. The  $i$ th asset is worth  $X_{i}$  and has a duration  $D_{i}$  ( $i = 1,2,\ldots,n$ ). Define  $\Delta X_{i}$  as the change in the value of  $X_{i}$  arising from the yield curve shift  $\Delta y$ . It follows that  $P = \sum_{i=1}^{n} X_{i}$  and  $\Delta P = \sum_{i=1}^{n} \Delta X_{i}$  so that from equation (14.9) the duration of the portfolio is given by

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/aa96fc8a71c72efe8db903951dd97e3672e157a03bcbc197d1a3f6c8ea4ade88.jpg)

Figure 14.4 A Parallel Shift in Zero Rates

$$
D = - \frac {1}{P} \sum_ {i = 1} ^ {n} \frac {\Delta X _ {i}}{\Delta \gamma}
$$

The duration of the  $i$ th asset is

$$
D _ {i} = - \frac {1}{X _ {i}} \frac {\Delta X _ {i}}{\Delta \gamma}
$$

Hence

$$
D = \sum_ {i = 1} ^ {n} \frac {X _ {i}}{P} D _ {i}
$$

This shows that the duration  $D$  of a portfolio is the weighted average of the durations of the individual assets comprising the portfolio with the weight assigned to an asset being proportional to the value of the asset.

The dollar duration  $D_{\S}$  of a portfolio can be defined as duration of the portfolio times the value of the portfolio:

$$
D _ {\S} = - \frac {\Delta P}{\Delta \gamma}
$$

This is a measure of the delta of the portfolio with respect to interest rates. The dollar duration of a portfolio consisting of a number of interest-rate-dependent assets is the sum of the dollar durations of the individual assets.

The convexity measure can be generalized in the same way as duration. For any interest-rate-dependent portfolio whose value is  $P$  we define the convexity  $C$  as  $1 / P$  times the second partial derivative of the value of the portfolio with respect to a parallel shift in the zero-coupon yield curve. Equation (14.8) is correct with  $B$  replaced by  $P$ :

$$
\frac {\Delta P}{P} = - D \Delta \gamma + \frac {1}{2} C (\Delta \gamma) ^ {2} \tag {14.11}
$$

The relationship between the convexity of a portfolio and the convexity of the assets comprising the portfolio is similar to that for duration: the convexity of the portfolio is the weighted average of the convexities of the assets with the weights being proportional to the value of the assets. For a portfolio with a particular duration, the convexity tends to be greatest when the portfolio provides payments evenly over a long period of time. It is least when the payments are concentrated around one particular point in time.

The dollar convexity for a portfolio worth  $P$  can be defined as  $P$  times the convexity. This is a measure of the gamma of the portfolio with respect to interest rates. The dollar convexity of a portfolio consisting of a number of interest-rate-dependent positions is the sum of the dollar convexities of the individual assets.

# 14.7.1 Portfolio Immunization

A portfolio consisting of long and short positions in interest-rate-dependent assets can be protected against relatively small parallel shifts in the yield curve by ensuring that its duration is zero. It can be protected against relatively large parallel shifts in the yield curve by ensuring that its duration and convexity are both zero or close to zero.

# 14.8 Nonparallel Yield Curve Shifts

Unfortunately the basic duration relationship in equation (14.10) only quantifies exposure to parallel yield curve shifts. The duration plus convexity relationship in equation (14.11) allows the shift to be relatively large, but it is still a parallel shift.

# 14.8.1 Partial Duration

Some researchers have extended duration measures so that nonparallel shifts can be considered. Reitano (1992) suggests a partial duration measure where just one point on the zero-coupon yield curve is shifted and all other points remain the same. Suppose that the zero curve is as shown in Table 14.9 and Figure 14.5. Shifting the five-year point involves changing the zero curve as indicated in Figure 14.6. In general, the partial duration of the portfolio for the  $i$ th point on the zero curve is

$$
D _ {i} = - \frac {1}{P} \frac {\Delta P _ {i}}{\Delta \gamma_ {i}}
$$

Table 14.9 Zero-Coupon Yield Curve (rates continuously compounded)

<table><tr><td>Maturity (years)</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>7</td><td>10</td></tr><tr><td>Rate (\%)</td><td>4.0</td><td>4.5</td><td>4.8</td><td>5.0</td><td>5.1</td><td>5.2</td><td>5.3</td></tr></table> where  $\Delta \gamma_{i}$  is a small change made to the  $i$ th point on the yield curve and  $\Delta P_{i}$  is the resulting change in the portfolio value. The changes are calculated as explained in Section 14.2 so that the sum of the partial durations equals the usual duration measure. The percentage change in the portfolio value arising from  $\Delta \gamma_{i}$  is  $-D_{i}\Delta \gamma_{i}$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/27d95dfb5a6a4cc404c8aba2dda4bd8139eef6165c0915b67be11c7a2313593c.jpg)

Figure 14.5 The Zero-Coupon Yield Curve (as shown in Table 14.9)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/e2bed64dd851b4a662d65117b95acc65bf1b46528f9da7878977007d96de7069.jpg)

Figure 14.6 Change in Zero-Coupon Yield Curve When One Point Is Shifted

Suppose that the partial durations for a particular portfolio are as shown in Table 14.10. The duration of the portfolio (sum of the partial durations) is only 0.2. This means that the portfolio is relatively insensitive to parallel shifts in the yield curve. However, the durations for short maturities are positive while those for long maturities are negative. This means that the portfolio loses (gains) in value when short rates rise (fall). It gains (losses) in value when long rates rise (fall).

We are now in a position to go one step further and calculate the sensitivity of a portfolio value to any nonparallel shifts. Suppose that, in the case of the yield curve shown in Figure 14.5, we define a rotation where the changes to the 1-year, 2-year, 3-year, 4-year, 5-year, 7-year, and 10-year are  $-3e$ ,  $-2e$ ,  $-e$ , 0,  $e$ ,  $3e$ , and  $6e$  for some small  $e$ . This is illustrated in Figure 14.7. From the partial durations in Table 14.10, the percentage change in the value of the portfolio arising from the rotation is

$$
\begin{array}{l} - [ 0. 2 \times (- 3 e) + 0. 6 \times (- 2 e) + 0. 9 \times (- e) + 1. 6 \times 0 + 2. 0 \times e \\ - 2. 1 \times 3 e - 3. 0 \times 6 e ] = 2 5. 0 e \\ \end{array}
$$

For a parallel shift of  $e$  in the yield curve, the percentage change in the value of the portfolio is  $-0.2e$ . This shows that a portfolio that gives rise to the partial durations in Table 14.10 is much more heavily exposed to a rotation of the yield curve than to a parallel shift.

In Section 14.8 we explained how the usual duration measure can be converted to a dollar duration measure by multiplying by the value of the portfolio. The same is true of

Table 14.10 Partial Durations for a Portfolio

<table><tr><td>Maturity (years)</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>7</td><td>10</td><td>Total</td></tr><tr><td>Duration</td><td>0.2</td><td>0.6</td><td>0.9</td><td>1.6</td><td>2.0</td><td>-2.1</td><td>-3.0</td><td>0.2</td></tr></table> partial duration measures. The result is deltas describing the rate of change in the value of the portfolio with respect to a small change in one vertex of the term structure.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/1e3e6fec1df94a2a891390d0b9970f3586e14be3ab7ab3bc3df1934fa77696ae.jpg)

Figure 14.7 A Rotation of the Yield Curve

# 14.8.2 Bucket Deltas

A variation on the partial duration approach is to divide the yield curve into a number of segments or buckets and calculate for each bucket the dollar impact of changing all the zero rates corresponding to the bucket by one basis point while keeping all other zero rates unchanged. This approach is often used in asset-liability management (see Section 14.4) and is referred to as  $\text{GAP}$  management. Figure 14.8 shows the type of change that would be considered for the segment of the zero curve between 2.0 and 3.0 years in Figure 14.5. The sum of the deltas for all the segments equals the dollar impact of a one-basis-point parallel shift (i.e., a DV01.)

# 14.8.3 Calculating Deltas to Facilitate Hedging

One of the problems with the exposure measures that we have considered so far is that they are not designed to make hedging easy. Consider the partial durations in Table 14.10. If we plan to hedge our portfolio with zero-coupon bonds, we can calculate the position in a one-year zero-coupon bond to zero out the exposure to the one-year rate, the position in a two-year zero-coupon bond to zero out the exposure to the two-year rate, and so on. But, if other instruments such as swaps or coupon-bearing bonds are used, a much more complicated analysis is necessary.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/bf7790a3db36bb39994f82c983c1ad62baab3e66d0d395002a6ad691be22b957.jpg)

Figure 14.8 Change Considered to Yield Curve When Bucketing Approach Is Used

Often traders tend to use positions in the instruments that have been used to construct the zero curve to hedge their exposure. For example, a government bond trader is likely to take positions in the actively traded government bonds that were used to construct the Treasury zero curve when hedging. To facilitate hedging, traders therefore often calculate the impact of small changes in the quotes for each of the instruments used to construct the zero curve. The quote for the instrument is changed by a small amount, the zero-coupon yield curve is recomputed, and the portfolio revalued.

# Summary

A financial institution has exposures to many different yield curves. To calculate VaR and ES, it can either regard each rate as a separate risk factor or use principal components analysis to find a small number of factors that describe movements in a yield curve. A bank's net interest margin is a measure of the excess of the interest rate it earns over the interest rate it pays. There are now well-established asset/liability management procedures to ensure that this remains roughly constant from year to year.

An important concept in interest rate markets is duration. Duration measures the sensitivity of the value of a portfolio to a small parallel shift in the zero-coupon yield curve. The relationship is

$$
\Delta P = - P D \Delta y
$$ where  $P$  is the value of the portfolio,  $D$  is the duration of the portfolio,  $\Delta y$  is the size of a small parallel shift in the zero curve, and  $\Delta P$  is the resultant effect on the value of the portfolio. A more precise relationship is


$$

\Delta P = - P D \Delta \gamma + \frac {1}{2} P C (\Delta \gamma) ^ {2}

$$ where  $C$  is the convexity of the portfolio. This relationship is accurate for relatively large parallel shifts in the yield curve but does not quantify the exposure to nonparallel shifts.

To quantify exposure to all the different ways the yield curve can change through time, several duration or delta measures are necessary. There are a number of ways these can be defined. A principal components analysis can be a useful alternative to calculating multiple deltas. It shows that the yield curve shifts that occur in practice are, to a large extent, a linear sum of two or three standard shifts. If a portfolio manager is hedged against these standard shifts, he or she is therefore also well hedged against the shifts that occur in practice.

# Further Reading

Duffie, D. "Debt Management and Interest Rate Risk." In Risk Management: Challenges and Solutions, edited by W. Beaver and G. Parker. New York: McGraw-Hill, 1994.

Fabozzi, F. J. Bond Markets, Analysis and Strategies. 8th ed. Upper Saddle River, NJ: Pearson, 2012.

Jorion, P. Big Bets Gone Bad: Derivatives and Bankruptcy in Orange County. New York: Academic Press, 1995.

Reitano, R. "Nonparallel Yield Curve Shifts and Immunization." Journal of Portfolio Management (Spring 1992): 36-43.

# Practice Questions and Problems (Answers at End of Book)

14.1 Suppose that a bank has $5 billion of one-year loans and $20 billion of five-year loans. These are financed by $15 billion of one-year deposits and $10 billion of five-year deposits. Explain the impact on the bank's net interest income of interest rates increasing by 1\% every year for the next three years.
14.2 Explain why long-term rates are higher than short-term rates most of the time. Under what circumstances would you expect long-term rates to be lower than short-term rates?
14.3 Describe two ways of handling interest-rate-dependent instruments when the model-building approach is used to calculate VaR.
 14.4 Suppose that the value of a portfolio increases by 50,000 for each one-basis-point increase in the 12-year rate and has no other sensitivities. The multiple-vertex approach is used to model with the following vertices: 3 months, 6 months, 1 year, 2 years, 3 years, 5 years, 10 years, 15 years, 20 years, and 30 years. What is the sensitivity of the portfolio to a one-basis-point increase in each vertex of the term structure?
14.5 A portfolio has exposure to the two-year interest rate and the five-year interest rate. A one-basis-point increase in the two-year rate causes the value of the portfolio to increase in value by $10,000. A one-basis-point increase in the five-year rate causes the value of the portfolio to increase by $8,000. The standard deviation per day of the two-year rate and that of the five-year rate are 7 and 8 basis points, respectively, and the correlation between the two rates is 0.8. What is the portfolio's expected shortfall when the confidence level is  $98\%$  and the time horizon is five days?

14.6 What does duration tell you about the sensitivity of a bond portfolio to interest rates? What are the limitations of the duration measure?
14.7 A five-year bond with a yield of  $11\%$  (continuously compounded) pays an  $8\%$  coupon at the end of each year.

(a) What is the bond's price?

(b) What is the bond's duration?

(c) Use the duration to calculate the effect on the bond's price of a  $0.2\%$  decrease in its yield.

(d) Recalculate the bond's price on the basis of a  $10.8\%$  per annum yield and verify that the result is in agreement with your answer to (c).

14.8 Repeat Problem 14.7 on the assumption that the yield is compounded annually. Use modified durations.
14.9 A six-year bond with a continuously compounded yield of  $4\%$  provides a  $5\%$  coupon at the end of each year. Use duration and convexity to estimate the effect of a  $1\%$  increase in the yield on the price of the bond. How accurate is the estimate?
14.10 Explain three ways in which multiple deltas can be calculated to manage nonparallel yield curve shifts.
14.11 Why are partial durations potentially more useful to an analyst than the usual duration measure?
14.12 Use the partial durations in Table 14.10 to calculate the impact of a shift in the yield curve on a 10 million portfolio where the 1-, 2-, 3-, 4-, 5-, 7-, and 10-year rates increase by 10, 8, 7, 6, 5, 3, and 1 basis points, respectively.
14.13 How are "dollar duration" and "dollar convexity" defined?
14.14 What is the relationship between (a) the duration, (b) the partial durations, and (c) the DV01 of a portfolio?

# Further Questions

14.15 Prove (a) that the definitions of duration in equations (14.4) and (14.7) are the same when  $\gamma$  is continuously compounded and (b) that when  $\gamma$  is compounded  $m$  times per year they are the same if the right hand side of equation (14.7) is divided by  $1 + \gamma / m$ .
 14.16 Suppose that a bank has $10 billion of one-year loans and $30 billion of five-year loans. These are financed by $35 billion of one-year deposits and $5 billion of five-year deposits. The bank has equity totaling 2 billion and its return on equity is currently 12\%. Estimate what change in interest rates next year would lead to the bank's return on equity being reduced to zero. Assume that the bank is subject to a tax rate of 30\%.

14.17 Portfolio A consists of a one-year zero-coupon bond with a face value of $2,000 and a 10-year zero-coupon bond with a face value of $6,000. Portfolio B consists of a 5.95-year zero-coupon bond with a face value of 5,000. The current yield on all bonds is 10\% per annum (continuously compounded).

(a) Show that both portfolios have the same duration.

(b) Show that the percentage changes in the values of the two portfolios for a  $0.1\%$  per annum increase in yields are the same.

(c) What are the percentage changes in the values of the two portfolios for a  $5\%$  per annum increase in yields?

14.18 What are the convexities of the portfolios in Problem 14.17? To what extent do (a) duration and (b) convexity explain the difference between the percentage changes calculated in part (c) of Problem 14.17?
14.19 When the partial durations are as in Table 14.10, estimate the effect of a shift in the yield curve where the ten-year rate stays the same, the one-year rate moves up by  $9e$ , and the movements in intermediate rates are calculated by interpolation between  $9e$  and 0. How could your answer be calculated from the results for the rotation calculated in Section 14.8?
 14.20 Suppose that the change in a portfolio value for a one-basis-point shift in the 1-, 2-, 3-, 5-, 7-, 10-, 20-, and 30-year rates are (in $ million) +5, -3, -1, +2, +5, +7, +8, and +1, respectively. Estimate the delta of the portfolio with respect to the first three factors in Table 14.3. Quantify the relative importance of the three factors for this portfolio.
14.21 The text calculates a VaR estimate for the example in Table 14.5 assuming two factors. How does the estimate change if you assume (a) one factor and (b) three factors?
 14.22 A company has a long position in a two-year bond and a three-year bond, as well as a short position in a five-year bond. Each bond has a principal of 100 million and pays a 5\% coupon annually. Calculate the company's exposure to the one-year, two-year, three-year, four-year, and five-year rates.
14.23 A company has a position in bonds worth 6 million. The modified duration of the portfolio is 5.2 years. Assume that only parallel shifts in the yield curve can take place and that the standard deviation of the daily yield change (when yield is measured in percent) is 0.09. Use the duration model to estimate the 20-day 90\% VaR for the portfolio. Explain carefully the weaknesses of this approach to calculating VaR. Explain two alternatives that give more accuracy.


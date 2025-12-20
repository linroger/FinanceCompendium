---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 2
linter-yaml-title-alias: Chapter 2
---

# Chapter 2

# Term and Volatility Structures of Interest Rates

The fundamental knowledge underlying the entire universe of fixed income securities lies in the term structure of interest rates (or commonly known as the yield curve) and the term structure of volatilities (or volatility curve). The former is the foundation for fixed income securities that do not have any optionality and the latter is the foundation for those that do. In this chapter, we study both term structures at a very superficial level. In a later chapter, we study the fundamental factors that lie under these two term structures.

# 2.1 Introduction

Different from stocks, fixed income securities are like (interest rate) derivatives – duh!, in that the contracts will expire (and cease to exist) at a given future time. As a result, for a given issuer, there are usually contracts with different expiration dates. These contracts share the same fundamental risk (issuer risk which is usually the credit risk) and yet they differ in time risk (time-to-maturity risk, or term risk). Hence there exist interesting relationships among these securities of the same issuer and often depicted in two term structures: return and volatility.

The return term structure, i.e. the term structure of interest rates, describes how various returns of these securities (of the same issuer) are related. In the fixed-income language, these returns are also called yield. Hence this term structure is also known as the yield curve.

The volatility term structure, a.k.a. the term structure of volatilities, describes how their volatilities are related. It is also called the volatility curve.

The information of the yield curve can be inferred from traded prices of these securities and the information of the volatility curve can be inferred from the prices of the options written on these securities. Take US Treasuries as an example, there are well over 100 US Treasuries traded in the marketplace (over the counter) and Treasury bond futures options are traded also very frequently on the Chicago Mercantile Exchange.

To analyze the yield and volatility curves separately and in combination, we need to build an interest rate model. In this chapter, we will focus on the markets and in Chapter ?? we will discuss how an interest rate model can be used.

# 2.2 What Is a Yield Curve (Term Structure of Interest Rates)?

A yield curve (or term structure of interest rates) is a collection of yields with various maturities. In Chapter 1, we have seen various interest rates. Hence theoretically each interest rate category has a yield curve of its own. However, due to (lack of) liquidity and too few contracts, it is usually not easy to see a full yield curve of any of these interest rates except for US Treasuries and LIBOR (and more recently Is).

# 2.2.1 A Sample: US Treasuries

There are a large number of US Treasury securities traded publicly, as mentioned in Chapter 1. Treasury bills, notes, and bonds are the most important Treasury securities. As of January of 2020, there are  $40\mathrm{T}$  bills,  $295\mathrm{T}$  notes and bonds, and 43 TIPS. $^{1}$

Treasury securities (bills, notes, bonds, and TIPS) of chosen maturities are auctioned regularly periodically.2 As we can see from Figure 2.1, the auctioned securities are: 4-week (1-month), 8-week (2-month), 13-week (3-month), 26-week (6-month), and 52-week (1-year) T bills, and 2-year, 3-year, 5-year, 7-year, 10-year, 20-year, and 30-year T notes and bonds.

# Treasury Auction System: TAAPS

According to Investopedia:

"Treasury Automated Auction Processing System (TAAPS) is a computer network system developed by the Federal Reserve Bank. It is facilitated by Fed banks, to process bids and tenders received for Treasury securities.

Treasury auctions began in 1929 with the auctioning of 3-Month Treasury Bills. From 1973 through 1976 the auction system expanded to include bills, notes, bonds, Treasury Inflation Protected Securities, or TIPS, and Floating Rate Notes, or FRNs. Until 1993, bids were received in paper form and processed manually, which was an extremely time-consuming and inefficient process. The TAAPS system created the streamlined and efficient process needed to handle the growing volume of treasury securities trades."

The participants must be certified by the Treasury department. In general, commercial banks are all certified.

# TreasuryDirect: retail

TreasuryDirect was established during the Clinton administration which argued that individuals should be able to participate Treasury auctions as well as financial institutions. Prior to that, individuals can only participate in mutual funds to own Treasury returns.

One hurdle to let individuals participate in Treasury auctions is the denomination of the Treasuries – \$100,000.4 Hence, to facilitate individual participation, the denomination is dropped to \$1,000.

TreasuryDirect is a website run by the Bureau of the Fiscal Service under the United States Department of the Treasury that allows US individual investors to purchase Treasury securities such as Treasury Bills directly from the U.S. government.

The individuals who participate in purchasing Treasuries via TreasuryDirect cannot participate in bidding but can only take TAAPS prices as given.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/55bcf99776711eb4423ea2a5c4bd54e942b5276024ccb2155cf9d5a8ce447347.jpg)

Figure 2.1: Treasury Auction Schedule (partial list)

# On-the-run Treasuries

These auctioned Treasuries are known as "on-the-run" issues. As time goes by and new on-the-run issues roll out, existing old on-the-run issues become "off-the-run" as then roll down in their maturities. These off-the-run issues in general have low liquidity, compared to on-the-run ones. Due to this liquidity difference, their prices are not comparable as off-the-run issues bear an extra risk (and hence their prices should be lower). Hence, when we build a Treasury yield curve, it is customary that we use only on-the-run issues. Nevertheless, some institutions will use all issues to build the yield curve.

When we use only on-the-run issues to build the yield curve, every issue must be correctly repriced. When we use all issues to build the yield curve, we try to reprice on-the-run issues as much as possible and allow for larger errors for off-the-run issues. The allowed errors are quite subjective and there is no science in determining how much errors are appropriate. We shall discuss both methods in this chapter.

Figure 2.2 is an example taken from barchart.com website, a snapshot on 8/24/2020. As we can see, the yield curve is not flat. This is because of inflation, changing expectations and risk premiums for uncertainty.

To explain the shape of the yield curve, the old literature (John Keynes) has provided three hypotheses, which we shall discuss later. In modern finance, due to the needs for trading and hedging, we try to quantify such a shape. Various models have been proposed. In a later chapter, we shall discuss them in much greater details. In this chapter, we shall give a short introduction.

The following plot is a yield curve of selected Treasuries on a given day. This is generally called "par curve" because (except for zero coupon bonds) these are "on-the-run" bonds which are usually traded at par.[5]

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/38f86eb4be889df7cc91cbfd4cf2964e42a932b2b82fde619731ea11dacee43a.jpg)

Figure 2.2: On-the-run Treasury Issues

# 2.2.2 Coupon-bearing Yield Curve and Par Yield Curve

This regards mainly US Treasury securities. US Treasuries are one of the most liquid fixed income securities traded publicly. The prices of these hundreds of Treasuries are available every day. In Chapter 1, equation (1.3) as follows:

$$
P = \frac{1}{(1 + y / 2)^{t}} \left(\frac{c}{2} + \frac{c / 2}{1 + y / 2} + \frac{c / 2}{(1 + y / 2)^{2}} + \dots + \frac{1 + c / 2}{(1 + y / 2)^{2 \times n}}\right) \tag {2.1}
$$ where  $t$  is the yearfraction under the semi-annual basis (see equation (1.3) for the numerical demonstration). As a result, every Treasury issue can obtain a yield which can be plotted as the following example (taken from Chen and Scott (2002)):


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/bced175528068e6ccc20baf074b8beda824897dfe0010d5e9f4ede1fc1844ff6.jpg)
Figure 2.3: All Treasury Issues

# A Remark

It should be noted that there is another yield curve calculation that takes no year-fraction into account but use the clean prices. Yields using clean prices and without yearfraction are not the correct internal rate of return of the bond.

# Par Yield Curve

At issuance, yearfraction is 0 and all issues are auctioned at par. As a result, the formula used in Chapter 1:

$$

P = \frac{c / 2}{1 + y / 2} + \frac{c / 2}{(1 + y / 2)^{2}} + \dots + \frac{1 + c / 2}{(1 + y / 2)^{n}}

$$ where  $c$  is the coupon rate and the face value is set at 1. This formula has the following property:

$$
P = 1 \iff c = y
$$

Over time, if rates go up, then previously issued Treasuries will become less than par (discount). Conversely, if rates drop, then previously issued Treasuries will become more than par (premium). Hence at any given time, the hundreds of Treasuries are mixed with par, discount and premium issues. The plot of all these mixed yields against their corresponding times to maturity (or duration).

# Constant Maturity Treasury (CMT) Curve

We should note that the on-the-run Treasury notes and bonds shown in Figure 2.2 are par at issuance. The prices will start fluctuating after issuance. Nevertheless they remain on-the-run until their replacements come to auction.

According to the Treasury Auction Schedule (Figure 2.1), a 10-year note is auctioned on August 5, 2020 first, and then on September 03, 2020 next. Hence, the 10-year note issued on August 5, 2020 will be on-the-run until its replacement on August 5, 2020. During this period, the price of the 10-year note issued on August 5 will fluctuate away from par, although it still appears publicly as in Figure 2.2. As a result, those rates shown in Figure 2.2 are not par yields.

Hence, the Treasury department "adjusts" those on-the-run prices and try to result in a par yield for each bond. As a result, we can regard CMT rates as par rates. But note that these rates are not actual market rates but computed by the Treasury department.

# 2.2.3 Zero Coupon Yield Curve

Zero coupon bond yield curve (or zero curve) is the most important yield curve. This is because from this yield curve, we can compute discount factors (or discount curve) for all maturities. These discount factors are used to discount cash flows of the futures. The relationship between the discount factor and the yield for any given maturity is, under continuous time,

$$ y_{t, T} = - \frac{\ln P (t , T)}{T - t}
$$ or under discrete time,


$$ y_{t, T} = \sqrt [ T - t ]{\frac{1}{P (t , T)}} - 1
$$

For example,  $r_0 = y_{01} = 6\%$  and  $f_{12} = 8\%$  (both annual), then  $P(0,2) = e^{-(8\% +6\%)} = 0.8694$  (continuous) or  $P(0,2) = \frac{1}{(1 + 6\%) (1 + 8\%)} = 0.8735$  (discrete). Hence, the two year yield  $y_{02} = -\frac{\ln 0.8694}{2} = 7\%$  (continuous) or  $y_{02} = \sqrt{\frac{1}{0.8735}} - 1 = 6.995\%$ .

# A comment

Note that the coupon bond price is taken by the market, which is a result of no arbitrage trading. Coupon bond price is determined by arbitrage (if zeros are available)

$$
\begin{array}{l} \Pi (t, T_{1}, \dots T_{n}; c) = c P (t, T_{1}) + c P (t, T_{2}) + \dots + (1 0 0 + c) P (t, T_{n}) \\ = c \sum_{i = 1}^{n} P (t, T_{i}) + 1 0 0 P (t, T_{n}) \\ \end{array}
$$ where P(t,T_i) is today's (i.e. t = T_0) price of a zero-coupon bond (face value \$1) maturing at time T_i. It is also a risk-free discount factor (discounting back to today t = T_0) of \$1 paid at time T_i. This is no-arbitrage pricing because both zero-coupon bonds and the coupon bond are traded securities and this relationship must hold or arbitrage profits take place.7


The yield to maturity of this coupon bond is the internal solution to:

$$

\Pi (t, T_{1}, T_{2}, \dots T_{n}; c) = \sum_{i = 1}^{n} e^{- y_{0 i} \times (T_{i} - t)} c + e^{- y_{0 n} \times (T_{n} - t)} 1 0 0

$$ or


$$

\Pi (t, T_{1}, T_{2}, \dots T_{n}; c) = \sum_{i = 1}^{n} \frac{c}{(1 + y_{0 i})^{T_{i} - t}} + \frac{1 0 0}{(1 + y_{0 n})^{T_{n} - t}}

$$

For example, a 1-yr  $7\%$  coupon bond should be sold at 100.77(100 face) because:

$$

107 e^{-6 \%} = 100.77

$$ and 2-yr  $7 \%$  should be: $^{8}$

$$
7 e^{-6 \%} + 107 e^{-6 \% -8 \%} = 99.61
$$

# 2.2.4 Forward Rate Curve

It is important to construct a forward rate curve, once the yield curve is constructed, as demonstrated in Chapter 1. With a spline method, we obtain a continuous function for the yield curve, and hence it is quite easy to use the continuous discounting to construct a forward rate curve.

Recall the continuous yield and forward rate are, respectively:

$$
\begin{array}{l} y (t, T) = - \frac{1}{T - t} \ln P (t, T) \\ f (t, T) = - \frac{\partial \ln P (t , T)}{\partial T} \\ \end{array}
$$

As a result,

$$ f (t, T) = - \frac{\partial y (t , T)}{\partial T}
$$ which implies that the forward rate is the first order differentiation (with respect to maturity) of the yield. Or reversely, yield is an integration of the forward rate. Readers are encouraged to compare this result with the discrete result in Chapter 1.


# 2.3 How to Fit a Yield Curve Function

The first step toward understanding a yield curve is to fit a function through the market observed prices. There are two popular methods of doing so, each serves a purpose. The first method is bootstrapping which is suitable for on-the-run Treasury rates (and later on for LIBOR and OIS curves as well). The second method is a functional form which can be a polynomial or a particularly parameterized function (e.g. Nelson and Siegel (1987)). This method is useful if all Treasuries are considered. It is also important to note that the bootstrapping method is best used for zero-coupon bonds (i.e. zero rates) while the functional form method can blend zero-coupon bonds and coupon bonds together.

# 2.3.1 Bootstrapping

As mentioned, the bootstrapping method is best to use zero rates. Hence, to demonstrate the bootstrapping method, we use the CMT (constant maturity Treasury) rates compiled by the Treasury department. CMT rates are calculated by the US Department of Treasury and are published daily on its website at Daily Treasury Yield Curve Rates page by 6:00 PM Eastern Time each trading day.

CMT rates are weighted averages of on-the-run Treasuries. The exact methodology can be found on the Treasury website: https://home.treasury.gov/policy-issues/financing-the-government/interest-rate-statistics/treasury-yield-curve-methodology, if readers are interested. Given that on-the-run Treasuries are presumably par bonds (but they can be off par so CMT essentially practically "restore" them back to par), we can reasonably assume that CMT rates are par rates. Table 2.4 is collected from the St. Louis Federal website (FRED). These are CMT rates on 2/19/2016. CMT rates are:

<table><tr><td>t</td><td colspan="2">CMT (\%)</td></tr><tr><td>0.083333</td><td>0.26</td><td>not used</td></tr><tr><td>0.25</td><td>0.30</td><td>not used</td></tr><tr><td>0.5</td><td>0.44</td><td></td></tr><tr><td>1</td><td>0.53</td><td></td></tr><tr><td>2</td><td>0.74</td><td></td></tr><tr><td>3</td><td>0.91</td><td></td></tr><tr><td>5</td><td>1.24</td><td></td></tr><tr><td>7</td><td>1.54</td><td></td></tr><tr><td>10</td><td>1.78</td><td></td></tr><tr><td>20</td><td>2.19</td><td></td></tr><tr><td>30</td><td>2.64</td><td></td></tr></table>

The bootstrapping process can be seen from the following table.

Table 2.1: CMT Rates on 2/19/2016

<table><tr><td></td><td></td><td></td><td>0.5</td><td>1</td><td>2</td><td>3</td><td>5</td><td>...</td><td>30</td></tr><tr><td></td><td></td><td></td><td>0.44</td><td>0.53</td><td>0.74</td><td>0.91</td><td>1.24</td><td>...</td><td>2.64</td></tr><tr><td>rate</td><td>disc. fact</td><td>t</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>0.44\%</td><td>1.0000</td><td>0.5</td><td>not used</td><td>0.265</td><td>0.37</td><td>0.455</td><td>0.62</td><td>...</td><td>1.32</td></tr><tr><td>0.53\%</td><td>0.9947</td><td>1</td><td></td><td>100.265</td><td>0.37</td><td>0.455</td><td>0.62</td><td>...</td><td>1.32</td></tr><tr><td>0.74\%</td><td>0.9890</td><td>1.5</td><td></td><td></td><td>0.37</td><td>0.455</td><td>0.62</td><td>...</td><td>1.32</td></tr><tr><td>0.74\%</td><td>0.9853</td><td>2</td><td></td><td></td><td>100.37</td><td>0.455</td><td>0.62</td><td>...</td><td>1.32</td></tr><tr><td>0.91\%</td><td>0.9775</td><td>2.5</td><td></td><td></td><td></td><td>0.455</td><td>0.62</td><td>...</td><td>1.32</td></tr><tr><td>0.91\%</td><td>0.9731</td><td>3</td><td></td><td></td><td></td><td>100.455</td><td>0.62</td><td>...</td><td>1.32</td></tr><tr><td>1.25\%</td><td>0.9575</td><td>3.5</td><td></td><td></td><td></td><td></td><td>0.62</td><td>...</td><td>1.32</td></tr><tr><td>1.25\%</td><td>0.9515</td><td>4</td><td></td><td></td><td></td><td></td><td>0.62</td><td>...</td><td>1.32</td></tr><tr><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td></tr><tr><td>2.79\%</td><td>0.4544</td><td>28.5</td><td></td><td></td><td></td><td></td><td></td><td>...</td><td>1.32</td></tr><tr><td>2.79\%</td><td>0.4482</td><td>29</td><td></td><td></td><td></td><td></td><td></td><td>...</td><td>1.32</td></tr><tr><td>2.79\%</td><td>0.4420</td><td>29.5</td><td></td><td></td><td></td><td></td><td></td><td>...</td><td>1.32</td></tr><tr><td>2.79\%</td><td>0.4359</td><td>30</td><td></td><td></td><td></td><td></td><td></td><td>...</td><td>101.32</td></tr></table>

Table 2.2: Cash Flows of CMTs

<table><tr><td></td><td></td><td></td><td>0.5</td><td>1</td><td>2</td><td>3</td><td>5</td><td>...</td><td>30</td></tr><tr><td></td><td></td><td></td><td></td><td>100</td><td>100</td><td>100</td><td>100</td><td>...</td><td>100</td></tr><tr><td>rate</td><td>disc. fact</td><td>t</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>0.44\%</td><td>1.0000</td><td>0.5</td><td>not used</td><td>0.264994</td><td>0.369992</td><td>0.45499</td><td>0.619986</td><td>...</td><td>1.319971</td></tr><tr><td>0.53\%</td><td>0.9947</td><td>1</td><td></td><td>99.73501</td><td>0.368044</td><td>0.452595</td><td>0.616723</td><td>...</td><td>1.313023</td></tr><tr><td>0.74\%</td><td>0.9890</td><td>1.5</td><td></td><td></td><td>0.365917</td><td>0.449979</td><td>0.613159</td><td>...</td><td>1.305435</td></tr><tr><td>0.74\%</td><td>0.9853</td><td>2</td><td></td><td></td><td>98.89605</td><td>0.448318</td><td>0.610895</td><td>...</td><td>1.300616</td></tr><tr><td>0.91\%</td><td>0.9775</td><td>2.5</td><td></td><td></td><td></td><td>0.444764</td><td>0.606053</td><td>...</td><td>1.290305</td></tr><tr><td>0.91\%</td><td>0.9731</td><td>3</td><td></td><td></td><td></td><td>97.74935</td><td>0.603301</td><td>...</td><td>1.284447</td></tr><tr><td>1.25\%</td><td>0.9575</td><td>3.5</td><td></td><td></td><td></td><td></td><td>0.593619</td><td>...</td><td>1.263835</td></tr><tr><td>1.25\%</td><td>0.9515</td><td>4</td><td></td><td></td><td></td><td></td><td>0.589943</td><td>...</td><td>1.256008</td></tr><tr><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td></tr><tr><td>2.79\%</td><td>0.4544</td><td>28.5</td><td></td><td></td><td></td><td></td><td></td><td>...</td><td>0.59984</td></tr><tr><td>2.79\%</td><td>0.4482</td><td>29</td><td></td><td></td><td></td><td></td><td></td><td>...</td><td>0.591597</td></tr><tr><td>2.79\%</td><td>0.4420</td><td>29.5</td><td></td><td></td><td></td><td></td><td></td><td>...</td><td>0.583467</td></tr><tr><td>2.79\%</td><td>0.4359</td><td>30</td><td></td><td></td><td></td><td></td><td></td><td>...</td><td>44.17008</td></tr></table>

As we can see, the method used here is piece-wise flat. Now we can see how the other methods can be used.

# Piece-wise Flat

In the next few subsections, we use a hypothetical example as follows:

Table 2.3: CMT Valuation (at Par)

<table><tr><td>i</td><td>τ</td><td>y(τ) = (ai)</td></tr><tr><td>0</td><td>0</td><td>1\%</td></tr><tr><td>1</td><td>0.25</td><td>2</td></tr><tr><td>2</td><td>0.5</td><td>3</td></tr><tr><td>3</td><td>1</td><td>4</td></tr><tr><td>4</td><td>2</td><td>5</td></tr><tr><td>5</td><td>3</td><td>6</td></tr><tr><td>6</td><td>5</td><td>7</td></tr><tr><td>7</td><td>7</td><td>8</td></tr><tr><td>8</td><td>10</td><td>9</td></tr></table>

Table 2.4: Hypothetical Zero Rates

Piece-wise flat is the most fundamental method in building the yield curve. It is obvious that it is non-continuous (or more precisely left-continuous). The curve jumps at every knot point.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/75708748990761c2f385953e697c52a1fe364736b222f2f54c1a2c383688f429.jpg)
Figure 2.4: Piece-wise Flat

# Piece-wise Linear

Piece-wise linear is continuous but non-smooth (i.e. non-differentiable). The first order derivative is non-continuous.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/00019a63ee21e537e2557ceb7a04cbed98054aa3dc0e489cd0226cd6ba1847f9.jpg)
Figure 2.5: Piece-wise Linear

# Splines

The spline method is a polynomial function between any two yields.

$$

\begin{array}{l} y (\tau) = a_{i} + b_{i} (\tau - \tau_{i}) + c_{i} (\tau - \tau_{i})^{2} \\ y (\tau) = a_{i} + b_{i} \left(\tau - \tau_{i}\right) + c_{i} \left(\tau - \tau_{i}\right)^{2} + d_{i} \left(\tau - \tau_{i}\right)^{3} \tag {2.2} \\ \end{array}

$$

： where  $\tau_{i} < \tau < \tau_{i + 1}$  and for convenience  $\tau_0 = 0$


The two most popular ones are quadratic and cubic (power 2 and power 3). One can go one more power to have quartic splines. Adams (2001) argues that the quartic spline gives the smoothest interpolator of the forward curve, $^{10}$  yet many agree that this is an overkill.


Quadratic spline is not only continuous but smooth (first order differentiable). Hence it makes sense to connect the slopes from the left and the right. The quadratic equation given in equation (2.2) is:

$$ y (\tau) = a_{i} + b_{i} \left(\tau - \tau_{i}\right) + c_{i} \left(\tau - \tau_{i}\right)^{2} \tag {2.3}
$$

First of all, it is obvious that at any  $\tau = \tau_{i}$

$$ y \left(\tau_{i}\right) = a_{i} \tag {2.4}
$$ for all  $i = 0,1,\dots ,n$ . Hence we know that the constants of the quadratic equation are key rates at the knot points.


First of all, at  $\tau = 0$ ,  $y(0) = a_0$  which is the instantaneous rate. This rate does not exist in reality (only in theory). Hence it must be estimated (using a model) or approximated by a very short term rate (e.g. overnight rate).

From equation (2.4), we know that  $y(\tau_{i+1}) = a_{i+1}$ . Given that the function is continuous, by equation (2.3), it must be the case that:

$$

\begin{array}{l} a_{i + 1} = y \left(\tau_{i + 1}\right) \tag {2.5} \\ = a_{i} + b_{i} \left(\tau_{i + 1} - \tau_{i}\right) + c_{i} \left(\tau_{i + 1} - \tau_{i}\right)^{2} \\ \end{array}

$$ which allows us to solve for  $c_{i}$  as follows:

$$ c_{i} = \frac{\left(a_{i + 1} - a_{i}\right) - b_{i} \left(\tau_{i + 1} - \tau_{i}\right)}{\left(\tau_{i + 1} - \tau_{i}\right)^{2}} \tag {2.6}
$$

$c_{0}$  hence is:

$$ c_{0} = \frac{(a_{1} - a_{0}) - b_{0} \tau_{1}}{\tau_{1}^{2}}
$$ which relies on  $b_{0}$ . To solve for  $b_{0}$ , we need another equation.


Now we take the first order derivative:

$$ y^{\prime} (\tau) = b_{i} + 2 c_{i} (\tau - \tau_{i}) \tag {2.7}
$$

At  $\tau_0 = 0$ ,  $y'(0) = b_0$ . This is an extra degree of freedom, and we can, for the sake of convenience, set it to 0. That is:  $b_0 = 0$ . Then  $c_0 = \frac{(a_1 - a_0)}{\tau_1^2}$ .

As a general case, the slope must be the same at the knot points, which means that the slopes from two ends must be equal. From equation (2.7)

$$
\begin{array}{l} \# 1 \quad y^{\prime} (\tau_{i}) = b_{i - 1} + 2 c_{i - 1} \left(\tau_{i - 1} - \tau_{i}\right) \tag {2.8} \\ \# 2 \qquad y^{\prime} (\tau_{i}) = b_{i} + 2 c_{i} (\tau_{i} - \tau_{i}) = b_{i} \\ \end{array}
$$

Hence,  $b_{i}$  is:

$$ b_{i} = b_{i - 1} + 2 c_{i - 1} \left(\tau_{i - 1} - \tau_{i}\right) \tag {2.9}
$$ which relies on previous coefficients  $b_{i-1}$  and  $c_{i-1}$  only. Using this result, we can then obtain  $c_i$  by plugging it in equation (2.6).


The following is an example of a quadratic spline.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/a27bbb62cca8f42f591c70d5790874918e4ebba38a40149407cd29fa53787668.jpg)
Figure 2.6: Quadratic Spline

As we can see, at the knot points  $(t = 0.25, 0.5, 1, 2)$  the function is both continuous and differentiable.

Cubic spline is twice-differentiable. There are many varieties of cubic spline.[11] natural cubic spline.


The second derivative of the interpolator at  $\tau_{1}$  and at  $\tau_{n}$  are zero.

- financial cubic spline

The function is linear on the left and horizontal on the right.

quadratic-natural spline proposed in McCulloch and Kochin (2000)

The function is linear on the right and quadratic on the left.

- Bessel method

It is also often called the Hermite method. It is popular among software vendors. The values of  $b_{i}$  for  $1 < i < n$  are chosen to be the slope at  $\tau_{i}$  of the quadratic that passes through  $(\tau_{i}, r_{j})$  for  $j = i - 1, i, i + 1$ . The value of  $b_{1}$  is chosen to be the slope at  $\tau_{1}$  of the quadratic that passes through  $(\tau_{i}, r_{j})$  for  $j = 1, 2, 3$ ; the value of  $b_{n}$  is chosen likewise.

- monotone preserving cubic spline by Hyman (1983)

The values of  $b_{i}$  for  $1 \leq i \leq n$ .

# 2.3.2 Using a Functional Form

# Nelson-Siegel

The following is the Nelson and Siegel function.

$$ y (\tau) = \beta_{0} + \beta_{1} \left(\frac{1 - \exp \left(- \tau / \lambda_{1}\right)}{\tau / \lambda_{1}}\right) + \beta_{2} \left(\frac{1 - \exp \left(- \tau / \lambda_{2}\right)}{\tau / \lambda_{2}} - \exp \left(- \tau / \lambda_{2}\right)\right)
$$ where  $\tau$  is the time to maturity measured in years and  $\lambda_{1}$  and  $\lambda_{2}$  are two arbitrary constants (to make the yield curve more flexibly shaped). The corresponding formula for the instantaneous forward rate is:


$$ f (\tau) = \beta_{0} + \beta_{1} \exp \left(- \tau / \lambda_{1}\right) + \beta_{2} \frac{\tau}{\lambda_{2}} \exp \left(- \tau / \lambda_{2}\right)
$$

The model is typically applied by fitting the zero rate curve,  $y(\tau)$ , to a set of bond prices, but one can alternatively fit a model for the forward rate curve using the formula for  $f(\tau)$ . Yet Gurkaynak, Sack, and Wright (2006) use a variation of the model to fit the par yield curve. $^{12}$

# Haugen

Haugen suggests the following function:

$$ y (\tau) = \beta_{0} + (\beta_{1} + \beta_{2} \tau) e^{- \beta_{3} \tau}
$$

# Arbitrary Function

Given that there is no theoretical foundation of any of the fitting methods, one can simply seek the function of the best fit. Hence, one can just use a polynomial function between yields and times to maturity.

$$ y (\tau) = \beta_{0} + \beta_{1} \tau + \beta_{2} \tau^{2} + \dots
$$

# 2.3.3 Using a Model

See the example Figure 2.3 which is a three-factor CIR model.

# 2.3.4 A Discussion

In this section, I demonstrate how to construct a yield curve. The example of the bootstrapping is a piece-wise flat spot curve. Although this is the standard method used by the industry (e.g. Bloomberg), it should be noted that it is not theoretically preferred. As indicated in Section 2.2.4, forward rates are differentiation of the spot rates. Hence if the spot rate curve is non-continuous (and hence non-differentiable), then the forward curve will not exist. As a result, it is more preferred that the forward curve to be piece-wise flat. Later in this chapter, we will see how bootstrapping is applied on the forward curve.

The purpose of having a function for the yield curve is that now discount factor can be computed at any time to maturity. In reality cash flows arrive throughout the calendar year. In order to discount any cash flow at any given time, we must know the discount factor at that time.

# 2.4 Three Hypotheses

# Pure expectation hypothesis

There is no uncertainty of interest rates. The shape of the yield curve is entirely determined by the expectations of future interest rates.

# Liquidity preference

This hypothesis is proposed to explain upward sloping yield curve. It adds to the pure expectation hypothesis by including liquid premiums on longer term Treasury issues. It assumes that investors demand a higher yield for a longer term Treasury issue.

# Market segmentation (Preferred habitat)

Market segmentation or preferred habitat hypothesis argues that different bonds have different clientele who demand different yields.

# Modern theories

None of the above hypotheses assumes random interest rates. Interest rates move randomly. Furthermore, the more volatile interest rates move, the more curvature is the yield curve. As a result, modern interest rate theories now replace the traditional hypotheses to explain the yield curve.

One such theory is Cox-Ingersoll-Ross (1985) where interest rates that are driven by multiple economic factors move randomly. The shape of the yield curve is a function of the parameters of the model.

# 2.5 How Treasury Rates Change

As we have discussed, prices of Treasuries move around after issuance. So what cause the movements? Unlike stocks whose prices are moved in general by the fundamentals of the companies (disregarding noise trading), Treasury rates are U.S. government rates and hence the drivers must be related macroeconomic conditions of the nation.

Not only is it important to understand why Treasury rates move, but it is also important to know how differently they move. That is, long term rates move very differently from short term rates (and medium term rates too). Here we examine a few popular ones.

# 2.5.1 Roll Down Effect

As time goes by, fixed income securities become closer and closer to maturity. As a result, assuming no new issues are introduced to the market, not only will the yield curve become shorter and shorter, the shape of the yield curve will change, even if nothing else changes.

This roll down effect is very similar to the "time decay" (a.k.a. theta) in options whose prices will change over time even though the market is completely still. This is important in that such change in value must be considered when calculating the price change of a derivative security.

It is quite obvious to see that if there is absolutely no uncertainty, then today's forward curve will become tomorrow's yield curve. As a result, the difference between today's yields are their corresponding forward rates give the roll down effect.

# 2.5.2 Curve Steepening/Flattening

According to Investopedia (for dummies):

"A flattening yield curve can indicate economic weakness as it signals that inflation and interest rates are expected to stay low for a while. Markets expect little economic growth, and the willingness of banks to lend is weak."

and

"A steepening curve typically indicates stronger economic activity and rising inflation expectations, and thus, higher interest rates. When the yield curve is steep, banks are able to borrow money at lower interest rates and lend at higher interest rates. An example of a steepening yield curve can be seen in a 2-year note with a  $1.5\%$  yield and a 20-year bond with a  $3.5\%$  yield. If after a month, both Treasury yields increase to  $1.55\%$  and  $3.65\%$ , respectively, the spread increases to 210 basis points, from 200 basis points."

# 2.5.3 Hump

"The humped yield curve does not happen very often, but it is an indication that some period of uncertainty or volatility may be expected in the economy. When the curve is bell-shaped, it reflects investor uncertainty about specific economic policies or conditions, or it may reflect a transition of the yield curve from a normal to inverted curve or from an inverted to normal curve. Although a humped yield curve is often an indicator of slowing economic growth, it should not be confused with an inverted yield curve. An inverted yield curve occurs when short-term rates are higher than long-term rates or, to put it another way, when long-term rates fall below short-term rates. An inverted yield curve indicates that investors expect the economy to slow or decline in the future, and this slower growth may lead to lower inflation and lower interest rates for all maturities."

A humped yield curve has important implications to those investors who speculate/arbitrage on the butterfly trading strategy. Here is Investopedia again:

"When short-term and long-term interest rates decrease by a greater degree than intermediate-term rates, a humped yield curve known as a negative butterfly results. The connotation of a butterfly is given because the intermediate maturity sector is likened to the body of the butterfly and the short maturity and long maturity sectors are viewed as the wings of the butterfly."

# 2.5.4 Inversion

"On rare occasions, the yield on short-term bonds is higher than the yield on long-term bonds. When this happens, the curve becomes inverted. An inverted yield curve indicates that investors will tolerate low rates now if they believe rates are going to fall even lower later on. So, investors expect lower inflation rates, and interest rates, in the future."

Given that this is not normal (and does not make sense), one should look out for substantial macroeconomic risks.

Take a look at this. On July 25, 2019:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/2e44f221ae72e7772677647303fae5f76de68de2f3830667327fa54d045bd9e7.jpg)

Figure 2.7: Swiss Yield Curve

# 2.6 Yield Curves of Various Interest Rates

In Chapter 1, we discussed various interest rates. For any interest rate mentioned in Lesson 1III, there exists a yield curve to reflect how investors view the future dynamics and uncertainty of this interest rate. We give a few examples of how a yield curve is constructed.

# 2.6.1 LIBOR Curve

According to Wikipedia (adapted):

"The London Inter-bank Offered Rate is an interest-rate average calculated from estimates submitted by the leading banks in London. Each bank estimates what it would be charged were it to borrow from other banks. The resulting rate is usually abbreviated to LIBOR. It was formerly known as BBA LIBOR (British Bankers' Association) before the responsibility for the administration was transferred to Intercontinental Exchange. It is the primary benchmark, along with the Euribor, for short-term interest rates around the world."14

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/5b811ccfc8523fee5a5b4d3dd137ae3f2e981b793d2f52d3c98ed04ca8a29702.jpg)

Figure 2.8: LIBOR

These LBIOR rates are only up to a year (Figure 2.8). To complete the LIBOR curve, derivative contracts must be involved: Eurodollar futures and fixed-floating interest rate swaps. An example of the ED futures quotes is given in Figure 2.9. Only up to 4 years of ED futures will be selected. Beyond 4 years, industry use interest rate swaps (Figure 2.10).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/0003ab4192b060cb5494792c18e2c31aefdcc6374517cff2f811638ba246be6d.jpg)

Figure 2.9: EuroDollar Futures

ED futures prices are not forward prices. The former is the risk-neutral expectation of the bond price and the latter is the ratio of two bond prices. Hence to generate LIBOR curve, we must convert the futrues prices to forward prices. There are a number of different ways to do that. The easiest way is to do a simple convexity adjustment.

$$
\text{fo rw ar d} = \text{fu tu re s} - \frac{1}{2} \sigma^{2} \tau_{i} \tau_{j}
$$ where  $\tau_{1} = T_{i} - t$  and  $\tau_{2} = T_{j} - t$  are times to maturity of the futures contract and and the underlying bond respectively. $^{15}$


In Chapter 9, we have the following futures rate equation (equation (9.19)):

$$

\text{fu tu re sr at e} = 1 0 0 - \mathrm{QF P} \tag {2.10}

$$ where QFP is quoted futures price. Hence the forward rate can be computed as:


$$

\text{fo rw ar d} = \text{fu tu re s} - \frac{1}{2} \sigma^{2} \tau_{i}^{1 / 4}

$$

Recall that the forward rate is:

$$

\Psi \left(t, T_{i}, T_{i} + 1 / 4\right) = \frac{1}{1 + \frac{\text{fo rw ar dr at e}}{4}} \tag {2.11}

$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/424ac96fdd5c2bf54c7d7a41fb25d03ddb179dc9499f0e17b42a272060091998.jpg)
Figure 2.10: IRS Quotes (Reuters)

If we want to be really rigorous, we need to employ a pricing model (Vasicek, CIR, HJM, or LMM).

Lastly, we need to use swap rates to fulfill the LIBOR curve beyond 4 years (note that the fixed leg of a swap is semi-annual and floating leg is quarterly - see Chapter 1 for the conventions):

$$

\mathrm{NP V} = \sum_{i = 1}^{2 n} P (t, T_{i}) \frac{w (t , T_{2 n})}{2} - \sum_{j = 1}^{4 m} P (t, T_{j}) f (t, T_{j - 1}, T_{j}) \left(\frac{\text{da ys} (T_{j - 1} , T_{j})}{3 6 0}\right) \tag {2.12}

$$ where  $4m = 2n$ ,  $w(t, T_{2n})$  is the fixed swap rate for maturity of  $n$  years, and  $f(t, T_{j-1}, T_j)$  is the forward 3 month LIBOR rate for the payment period from  $T_{j-1}$  to  $T_j$ . We solve for the discount factors (recursively) by setting the NPV's for all of the swaps are set to zero to build the forward 3 month LIBOR curve.

Note that the above NPV is evaluated right on the coupon date of both legs. Otherwise, the equation will be very complex. This is because the daycount convention is Act/360 of the floating leg and is 30/360 for the fixed leg (see Chapter 1 for daycount conventions) and furthermore the fixed leg coupon frequency is semiannually (mimicking Treasuries) and the floating leg coupons are paid quarterly (mimicking corporate floaters). For the details of interest rate swaps, see Chapter 5.

Because the equation is evaluated on the coupon date of both legs, the fixed leg will have exactly every half year for its year fraction (again, see Chapter 1) while the floating leg will be the exact number of days (Actual) divided by 360 days for the year.

<SeeExcel>

# Remark

It is understandable that LIBOR market (interbanks), Eurodollar futures market (CME), and swap market (OTC) are quite different in may ways (market microstructure, participants, locations, regulations, etc.) and hence no one would expect their rates are consistent. As a result, when building a curve using prices from these different markets, it is expected that the curve will not be continuous. As a result of that, various smoothing techniques are used. There is no consensus to which smoothing method is best.

# 2.6.2 Is Curve

Due to the LIBOR scandal, Is (overnight index swap) rates have replaced LIBOR as the industry standard discount rates. The LIBOR scandal was a series of fraudulent actions connected to the Libor (London Inter-bank Offered Rate) and also the resulting investigation and reaction. LIBOR is an average interest rate calculated through submissions of interest rates by major banks across the world. The scandal arose when it was discovered that banks were falsely inflating or deflating their rates so as to profit from trades, or to give the impression that they were more creditworthy than they were. LIBOR underpins approximately 350 trillion in derivatives. It is currently administered by Intercontinental Exchange, which took over running the Libor in January 2014.

The most liquid instruments that can be used to build Is curve are Fed Fund Futures and Is swaps that pay at the daily compounded Fed Fund rate. However, Fed Fund Futures are currently only liquid up to two years and Is swaps up to ten years. Beyond ten years, the most liquid instruments are Fed Fund versus 3M LIBOR basis swaps, which are liquid up to thirty years.

The problem is that to price these basis swaps one needs both the Is curve, to project the Fed Fund rate, and the LIBOR curve, to project the LIBOR rate. In the past one could have generated the LIBOR curve data separately, by using the single curve for both forward projection and discounting.[16]

$$
D (t, T) = \exp \left(\int_{t}^{T} r (u) d u\right) = \prod_{i = 0}^{n - 1} \left(1 + \frac{R_{i}}{3 6 0}\right)
$$ where  $R_{i}$  is the daily Fed Funds rate for day  $i$ ,  $n$  is the number of days, and  $T - t = \frac{n}{\text{daysperyear}}$ . Note that  $D(t,T)$  is random.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/62f41ad0cf20544355fad6b719ee6f4b6bc453626554c3a470993147e58b24ec.jpg)
Figure 2.11: OIS Curve


The discount function is derived from market input quotes by setting the net present value (NPV) of each swap to be equal to zero. For OIS with one cash flow, the fixed rate is swapped versus the compounding of the Fed Funds rate, and the NPV is calculated as follows.

$$

\mathrm{NP V} = D (t, T) w (t, T) \frac{\mathrm{da ys ti ll} T}{3 6 0} - \frac{1}{D (t , T)} \left[ \prod_{i = 0}^{n - 1} \left(1 + \frac{R_{i}}{3 6 0}\right) - 1 \right]

$$

$$

0 = \frac{1}{D (t , T)} \left[ w (t, T) \frac{\mathrm{da ys ti ll} T}{3 6 0} + 1 - \frac{1}{D (t , T)} \right]

$$

$$

D (t, T) = \frac{1}{w (t , T)^{\frac{\mathrm{da ys ti ll} T}{3 6 0}} + 1}

$$ where  $w(t,T)$  is the fixed swap rate for maturity  $T$ . By setting the NPV = 0, one can solve for the discount function for maturity  $T$ .

# 2.6.3 Credit Curve

A credit curve is a term structure of credit spreads over a benchmark risk-free curve (which could be U.S. Treasuries, LIBOR, or Is). Either Treasury yield curve, LIBOR yield curve, or Is yield curve is like a "government" yield curve. The issuer represents the government. Hence ideally, we would like to have a yield curve of a company (which is an issuer). However, no company can issue enough bonds to complete a meaningful yield curve.

However, corporate bonds are complex (many covenants and optionalities). Hence, the price-yield relationship is not clear, which impacts the clarity of the yield curve.

There are two important risk aspects of a corporation's credit risk. The first is its business nature. The credit risk from different natures of business (e.g. high tech versus retail, manufacturing versus financial) cannot be fairly compared. Another is credit rating. Companies in different rating groups are also viewed as different types of companies. As a result, most media report "cohort curves" which is a sector-rating yield curve.

The yield curve construction method is complex and lack of consensus. An example is given below (as a muni-AAA (sector-rating) curve):

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/bd0c3e5469a4f7c5a69960472ea88e73d4d277a5e94d57162b52e325a785dc7f.jpg)

Figure 2.12: Muni AAA Curve

# 2.6.4 FX Curve

Forward FX trades are very popular not only for speculators and arbitrageurs who seek trading profits but also for international corporations that would like to stabilize their revenues and costs. Corporations engage in FX forwards to lock in desired FX rates in the future.

FX forwards are a very liquid market (unlike other assets that are more actively traded in futures markets, which are centralized exchanges). As a result, it is quite straightforward to build a forward for a currency.

A sample is given below Figure 2.13.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/4683d898c0d7f8f6b64e704498cb4b6c275dd389fa99ecee4b0be43526f78b8d.jpg)

Figure 2.13: FX Forward Quotes

# 2.6.5 Inflation Curve

Inflation curves are important for the government to monitor their monetary policies. As well-known, high expected inflation (which usually is accompanied by prosperity) urges the Central Bank to raise interest rates and reversely during recession (low inflation) the Central Bank tends to lower interest rates.

While we observe current inflation levels, expected inflation must be estimated. Historically, expected inflation is conducted via surveys (of prominent macroeconomists), until U.S. Treasury TIPS came along.

They were first auctioned in January 1997 after the market expressed a strong interest in the inflation-indexed asset class. In 2009, 20-year TIPS were discontinued in favor of 30-year TIPS. Treasury now offers 5-year, 10-year, and 30-year TIPS.[17]

Given that the coupons of TIPS are inflation protected (i.e. inflation-indexed), the prices of TIPS reflect how the market views the expected inflation.

Coupons paid on TIPS are inflation-indexed (CPI, consumer price index). Let  $I(t)$  be the CPI index at time  $t$  and  $c_0$  is the contractual coupon rate (and the face value is assumed to be 1).

$$
\begin{array}{l} \Pi_{\mathrm{TI PS}} (t, \underline {{T}}; c_{0}) = \sum_{i = 1}^{n} c_{i} P (t, T_{i}) + c_{n} P (t, T_{n}) \\ = \sum_{i = 1}^{n} c_{0} \frac{I (T_{i})}{I (t)} P (t, T_{i}) + \frac{I (T_{n})}{I (t)} P (t, T_{n}) \\ = \sum_{i = 1}^{n} c_{0} P_{\text{re al}} (t, T_{i}) + P_{\text{re al}} (t, T_{n}) \\ \end{array}
$$ where  $P_{\mathrm{real}}$  is under the real economy. Note that:


$$

\frac{- 1}{T_{i} - t} \ln P_{\mathrm{re al}} (t, T_{i}) = \left\{- (\ln I (T_{i}) - \ln I (t)) - \ln P (t, T_{i}) \right\} \frac{1}{T_{i} - t}

$$

$$

\iota (t, T_{i}) = y_{t, T_{i}} - y_{t, T_{i}}^{\mathrm{re al}}

$$ indicating that expected inflation  $(\iota)$  is the difference between nominal and real yields. This is the usual common sense that nominal rate is equal to real rate plus inflation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/c2a8abaffc307bf72e0a578934838d8fc38e11bf8d89ac934713fd7c6d985373.jpg)

Figure 3. Time Series Graph of 3y, 5y, 10y, and 20y Real CMT (Jan.1, 1999-Dec.30, 2003)

Figure 2.14: Real Rates Time Series (Chen, Cheng, and Liu)

# 2.7 LIBOR Floater

Floaters, or floating rate bonds, pay floating coupons that are indexed to some benchmark interest rate, say the 3 month LIBOR. Floating rate bonds are popular for corporations to fund their operations. Like fixed rate bonds, floaters are always priced at par at inception. The company (or the underwriter, usually an investment bank) will set the spread so that the price of the floater is at par. The spread is then called LIBOR spread. Usually the index is the 3-month LIBOR. A timeline of LIBOR is given below:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/407c8a5f06f1b42b716b02409fca08322fd90991fa601e06e4d44ea88acb7bc1.jpg)

Figure 2.15: LIBOR Timeline

A risk free floater is a floater whose spread is 0. That is, such a floater pays the benchmark interest rate. For such a floater, the value is always at par at coupon dates. In between coupon dates, the value can deviate slightly from par but it must converge to par when it approaches the coupon date.

$$
P = \left[ \frac{L_{1}}{(1 + L_{1})} + \frac{L_{2}}{(1 + L_{1}) (1 + L_{2})} + \dots + \frac{L_{n - 1}}{\prod_{i = 1}^{n - 1} (1 + L_{i})} + \frac{1 + L_{n}}{\prod_{i = 1}^{n} (1 + L_{i})} \right] \tag {2.13}
$$ where  $L$  is the LIBOR that is changing over time. Note that this equation always leads to 1, because:


$$

\frac{1 + L_{n}}{(1 + L_{1}) (1 + L_{2}) \cdots (1 + L_{n})} = \frac{1}{(1 + L_{1}) (1 + L_{2}) \cdots (1 + L_{n - 1})}

$$ which combines with the coupon in the previous period  $L_{n - 1}$  to become:

$$
\frac{1 + L_{n - 1}}{(1 + L_{1}) (1 + L_{2}) \cdots (1 + L_{n - 1})}
$$ which is exactly parallel to the result of n coupons. Repeating this process we obtain the following result for the risk free floater:


$$

P = \frac{1 + L_{1}}{(1 + L_{1})} = 1

$$

As a result, we can see that no matter how many coupons to be paid by the floater, its value is always equal to 1 plus the next coupon discounted by the LIBOR. Hence, the risk free floater is always priced at par at coupon dates. In between coupon dates, the discounting is not perfect. The cash flow is still  $1 + L_{1}$  and yet the discounting is not a full period. For example, if we purchase the floater in exactly the middle of the period, then we could compute the value as:

$$

P = \frac{1 + L_{1}}{1 +^{1} /_{2} L_{1}} > 1

$$

While the value is no longer par, it is still very close to par. For example, if the LIBOR is  $3\%$ , then the above value is 1.014.

It is easy to tell that the maximum of the above value is  $1 + L_{1}$ . This happens immediately before the coupon is paid. At  $3\%$  LIBOR, the value is 1.03.

Because the value of the risk free floater does not fluctuate more than its coupon rate, it has a very small sensitivity to the interest rate. Hence, it has very short duration. It is easy to compute the Fisher-Well duration to be just the length of the coupon period.

A corporate floater varies slightly. A corporate floater has a spread at inception due to its default probability. The larger is the default probability, the larger is the spread.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/79a3eac5e89f88224ee290a740dfa835276f853155e96d1ce01c400475bd07a7.jpg)
Figure 2.16: LIBOR Spread Timeline

The equation is  $(P_0$  is used to present the time of issuance 0 and reflect that the spread to be  $s_0$ ):

$$

\begin{array}{l} P_{0} = \left[ \frac{L_{1} + s_{0}}{\left(1 + L_{1} + s_{0}\right)} + \frac{L_{2} + s_{0}}{\left(1 + L_{1} + s_{0}\right) \left(1 + L_{2} + s_{0}\right)} + \dots + \frac{1 + L_{n} + s_{0}}{\prod_{i = 1}^{n} \left(1 + L_{i} + s_{0}\right)} \right] \\ = 1 \tag {2.14} \\ \end{array}

$$ where  $s_0$  is the initial spread. By the same math, we can show that the value is 1. As times goes by the default risk of the firm may change and hence the spread at time 1 is different from the initial spread. The price at time 1 will not be par if the spread has changed.

$$
\begin{array}{l} P_{1} = \left[ \frac{L_{2} + s_{0}}{(1 + L_{2} + s_{1})} + \dots + \frac{1 + L_{n} + s_{0}}{\prod_{i = 2}^{n} (1 + L_{i} + s_{0})} \right] \\ \neq 1 \\ \end{array}
$$

Note that now the numerator and the denominator have different spreads and they will not cancel each other. Hence the value will not be par. Should the spread remain the same (i.e.  $s_1 = s_0$ ), the bond price would still be at par.

This demonstrates that even on the coupon dates, the value of a corporate floater will not be priced at par. If the value cannot be at par on coupon dates, it will deviate from par even more in between coupon dates. Hence, corporate floaters have much more interest rate risk (duration) than the risk free floater.

Another way to look at it is that a corporate floater is actually a mixture of fixed rate bond (fixed initial spread as part of the coupon) and floating rate bond (LIBOR coupon). The floating portion has no interest rate risk but the fixed portion does. The larger is the fixed rate portion, i.e. spread, the larger is the duration.

In many high yield bonds where the spreads can be quite comparable to (or even larger than) the LIBOR, the duration can be quite long.

# Remark

Note that corporate floaters pay semi-annual coupons and swaps have a quarterly floating leg. The formula needs to be adjusted accordingly (i.e.  $L_{i} / m$ ) and the number of coupons/periods is  $m \times n$ .

# 2.8 Volatility and Volatility Term Structure

Volatility is important in pricing options. As a result, in addition to the term structure of interest rates that depict the level of interest rates, we must also concern the volatility of various interest rates.

Many models assume a constant volatility value, or flat volatility curve. Yet reality suggests that the volatility curve is non-flat. For interest rates, it is particularly not so. By construction, interest rate volatility curve is non-flat, as we shall see in the section.

# 2.8.1 Volatility Smile and Volatility Term Structure in Equities

Volatility is defined as the standard deviation of the log price. In equity, volatility is defined as  $\sqrt{\mathbb{V}_t(\ln S_T) / (T - t)}$  where  $t$  is current time and  $T$  is maturity time of the option. In the Black-Scholes model, this quantity is assumed to be constant,  $\sigma$ . However, empirically, a overwhelming body of evidence suggests that this is not true.

First, the literature has documented that stock returns are fat-tailed. That is, the possibility of extreme large profits and losses are more likely than what normality suggests. This causes the option prices for deep-in and deep-out-of the money to be underpriced by the Black-Scholes model. In other words, The Black-Scholes price is less than the market price using the same volatility as the at-the-money. As a result, we must jag up the volatility for in and out-of money options to match the market prices, causing a volatility smile.[18] See Figure 2.17 below.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/4eb90eb2e18e1d0672c49bbe6965a395c5479c5f57bf6f595e563c9eb81b479c.jpg)

Figure 2.17: Volatility Smile/Skew

Another empirical fact is that volatility is not constant over time. Figure 2.18 shows how volatile S&P 500 index is over time. Individual stocks are even more volati

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/ab12455670028101e5b93d0b8a4e06754b89ede8e6e56d6a7dd3dd7dd664a3ba.jpg)

Figure 2.18: S&P Volatility

In the Black-Scholes, the volatility that enters into the option formula is:

$$
\sigma^{2} (T - t) = \int_{t}^{T} \sigma^{2} (u) d u = \int_{t}^{T} \sigma^{2} d u
$$

If the volatility  $\sigma(u)$  is not constant (or even random) as the data suggest, then the result of the Black-Scholes will fail terribly. Then,

$$
\frac{1}{T - t} \int_{t}^{T} \sigma^{2} (u) d u
$$ will demonstrate a curve (as a function of  $T$ ).


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/24cf8ea1b44062ea9d83721530a20c21d19162340a0797ed7e6de9cdc5114823.jpg)
Figure 2.19: S&P Volatility Term Strucure

Note that the volatility term structure is downward sloping empirically. This is partially known as the put option puzzle. $^{19}$  What it says is that short term put options are unreasonably expensive (calls as well). There are several explanations of such a phenomenon:

- bid-ask spread

Since out-of-money options are low in price, same bid-ask spreads will account for more price biases than more at or in-the-money options.

- hedge

Put options are common hedges (to prevent large losses). Since they are in high demand, their prices are unreasonably high.

Combining volatility smile and term structure, practitioners watch over the entire volatility surface:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/1337ca577d72b1d325309468bbe2e5ce93de0d6dab2a8b802ef308a10ef42c12.jpg)
Figure 2.20: S&P Volatility Surface

# 2.8.2 Volatility Surface in Fixed Income

Similarly, here the volatility is the standard deviation of the long bond price

$$

\sqrt{\mathbb {V} \left[ \frac{\ln P (T , s)}{s - T} \right]}

$$

But since log bond price is yield  $-\ln P(T,s) / (s - T) = y_{T,s}$  shown above, the volatility of log bond price is equivalent to the volatility of the yield

$$

\sqrt{\mathbb {V} (y_{T , s})}

$$

Note that at any future time  $T$ , the yield till  $s$  is the same as the spot rate. Hence, the volatility computed here is also known as the "rate volatility" or "rate vol".

Given that the future time  $T$  and the time to maturity  $s^{\vee}T$  are arbitrary, there are a whole matrix of volatilities to specify, known as the volatility cube, as the diagram below depicts.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/93af7c33680cb88e997c96e1157730049797e4855bd891e2b8da9eabf1af9226.jpg)
Figure 2.21: Interest Rate Volatility Cube

In the above diagram, some models take "yield vols" as inputs. Yield vols are volatilities of all the yields one period (could be one month or one week) from now. In the above table, this would be the first column of the table. Note that in continuous time,  $y_{T,s_2} = y_{T,s_1} + f_{T,s_1,s_2}$ . As a result, we can write any yield vol as:

$$

\mathbb {V} [ y_{T, s_{2}} ] = \mathbb {V} [ y_{T, s_{1}} ] + \mathbb {V} [ f_{T, s_{1}, s_{2}} ] + 2 \mathbb {K} [ y_{T, s_{1}}, f_{T, s_{1}, s_{2}} ]

$$ and this is the relationship between two rate vols, forward vol, and the covariance between the two. To link the rate volatility to the yield volatility, we need an interest rate model. The following is the market of swaptions:


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/801426378a82e03e7201664fccdc6a84c3411b7ffad4c8dbe34aad783e7ed460.jpg)
Figure 2.22: Swaption Quotes

# 2.8.3 Shape Restriction

Fixed income securities have maturity dates. Near the maturity date the volatility must be small as the value of the security should be very close to the face value. However, the farther into the future, the volatility should be larger. As a result, the volatility curve for the diagonal (lower left to upper right) of the above table (given maturity times but changing T) must present a humped shape as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/aa5b66fe9da679aba4864a17cc8926dd0be2d6d2d172d273d75d4c80d454022b.jpg)
Figure 2.23: Volatility

On each column of the above table, the general shape is downward sloping as empirically long term yields tend to fluctuate less than the short term yields.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/176e2b14ca530d9697048ed166dcc495f50a042de5cdd71415d34a3e28ec9793.jpg)
Any time to maturity  $s - T$  where  $T$  is fixed
Figure 2.24: Volatility

As Figure 2.22 shows, the market quotes in terms of volatility, more specifically the Black volatility. Hence we must know how to compute the Black volatility:

$$

C = P (t, T) [ w (t, T, s) N (d_{+}) - w_{K} N (d_{-}) ]

$$ where


$$ d_{\pm} = \frac{\ln w (t , T , s) - \ln w_{K}}{v (t , T , s)} \pm \frac{1}{2} v (t, T, s)^{2}
$$ and  $P(t,T)$  is the discount factor,  $w(t)$  is the current swap rate,  $w_{K}$  is the strike price,  $T$  is the option maturity,  $s$  is the maturity of the swap contract, and  $v(t,T,s)$  is the volatility of the swap rate.


# 2.8.4 Sources of Volatility

From option prices, we can back out the volatilities.

# US Treasuries

Available options on US Treasuries are options various interest rates and T bond futures options. Options on various Treasury interest rates (13-week, 5-year, 10-year, and 30-year) $^{20}$  are cash settled contracts but these contracts are not liquid. On the other hand, options on T bond futures are very liquid. However they contain complex delivery options (details are discussed in Chapter 9) and futures themselves are already derivatives. Hence T bond futures options are derivatives on derivatives.

There are not enough options to construct a volatility surface for Treasuries, as shown in Figure 10.5.

# LIBOR

However, the LIBOR market has a large number of options written on swaps (a.k.a. swaptions) which have the described structure by Figure 2.22. Hence, swaptions can provide a complete volatility surface for underlying LIBOR.

Actually, besides swaptions, caps and floors and Eurodollar futures options are also LIBOR based options that can provide volatility information. In reality, these volatility numbers are often inconsistent with those from swaptions. While there seems to be arbitrage opportunities, we need to note that there is a liquidity difference (swaptions and caps/floors are traded on over-the-counter and Eurodollar futures options are traded on the exchanges (CME and LIFFE).)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/c5d4fd1469317a70b0ccf9c944a98bd4d66fb3e20cf3bb16bc0f6edcc84aaea2.jpg)
Figure 2.25: Swap

Figures 2.25 and 2.26 are Bloomberg screen shots of swap cash flows and swaption volatilities respectively. These volatility numbers are known as the Black vol.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/c3c916daace17d2c3985e829d9ebe73da4c36384f1b73af1d65b20f49ac641f9.jpg)
Figure 2.26: Swaption Volatilities

# FX

FX forward curve is demonstrated in Figure 2.13. FX options are quoted quite differently from those of Treasuries or LIBOR. They are not quoted by strikes but by deltas. Also they are not quoted by a single option, but by a portfolio of options. The typical quotes of FX options are:

- RR (risk reversal):  $x$  Delta Call -  $x$  Delta Put
- BF (butterfly):  $(x$  Delta Call  $+ x$  Delta Put)  $\div 2 - \mathrm{ATM}$

# over

10 delta
25 delta
- ATM (50 delta)
75 delta
90 delta

The quotes are in Black volatility and one must translate the quotes to prices in order trade.

We will discuss the details of FX market in Chapter 6.

<table><tr><td></td><td colspan="2">ATM</td><td colspan="2">25D RR</td><td colspan="2">10D RR</td></tr><tr><td>Exp</td><td>Bid</td><td>Ask</td><td>Bid</td><td>Ask</td><td>Bid</td><td>Ask</td></tr><tr><td>1D</td><td>10.977</td><td>13.477</td><td>-1.533</td><td>0.221</td><td>-2.668</td><td>0.333</td></tr><tr><td>1W</td><td>8.755</td><td>9.700</td><td>-0.720</td><td>-0.055</td><td>-1.245</td><td>-0.110</td></tr><tr><td>2W</td><td>8.845</td><td>9.570</td><td>-0.800</td><td>-0.295</td><td>-1.395</td><td>-0.525</td></tr><tr><td>3W</td><td>9.075</td><td>9.590</td><td>-0.870</td><td>-0.510</td><td>-1.545</td><td>-0.925</td></tr><tr><td>1M</td><td>9.265</td><td>9.605</td><td>-0.965</td><td>-0.725</td><td>-1.700</td><td>-1.290</td></tr><tr><td>2M</td><td>9.745</td><td>10.090</td><td>-1.385</td><td>-1.145</td><td>-2.455</td><td>-2.045</td></tr><tr><td>3M</td><td>10.050</td><td>10.400</td><td>-1.745</td><td>-1.500</td><td>-3.135</td><td>-2.715</td></tr><tr><td>6M</td><td>11.035</td><td>11.360</td><td>-2.135</td><td>-1.905</td><td>-3.880</td><td>-3.490</td></tr><tr><td>1Y</td><td>11.860</td><td>12.185</td><td>-2.460</td><td>-2.235</td><td>-4.520</td><td>-4.130</td></tr><tr><td>18M</td><td>11.885</td><td>12.250</td><td>-2.480</td><td>-2.225</td><td>-4.620</td><td>-4.185</td></tr><tr><td>2Y</td><td>11.900</td><td>12.275</td><td>-2.495</td><td>-2.235</td><td>-4.605</td><td>-4.155</td></tr><tr><td>3Y</td><td>11.775</td><td>12.275</td><td>-2.435</td><td>-2.085</td><td>-4.555</td><td>-3.955</td></tr><tr><td>5Y</td><td>11.670</td><td>12.165</td><td>-2.390</td><td>-2.040</td><td>-4.505</td><td>-3.910</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/7b58ee9900db9aeb0895be6a19fbbb92058dd969e682e2579b7724dcf00efdf6.jpg)
Figure 2.27: FX Option Quotes
Figure 2.28: FX Volatility Curve

# Lognormal Vol (Black Vol) vs. Normal Vol (Basis Point Vol)

Theoretically speaking, volatility is a result of a chosen model. Identically speaking, we match an option pricing model with the market price and solve for the volatility input as the implied volatility. To obtain a lognormal vol, the model must assume lognormality of the underlying asset. Similarly, to obtain a normal vol, the model must assume normality of the underlying asset, which is quite different from a lognormal model.

However, a short cut can be obtained via a stochastic process formula:[21]

$$

\begin{array}{l} d V = \mu_{L N} V d t + \sigma_{L N} V d W \tag {2.15} \\ = \mu_{N} d t + \sigma_{N} d W \\ \end{array}

$$ where  $W$  is a Brownian motion and  $dW$  is understood as a normal random variable with mean 0 and variance  $dt$ .

As a result, if one believes that  $\sigma_{LN}$  is constant, then the asset  $V$  follows a lognormal distribution and  $\sigma_{LN}$  is the volatility (as lognormal vol). On the other hand, if one believes that  $\sigma_N$  is constant (and hence  $\sigma_{LN}$  is not) then the asset  $V$  follows a normal distribution and  $\sigma_N$  is the volatility (as normal or bp vol).

It is an empirical observation that when  $V$  is close to 0, then normal vol is more reasonable. If  $V$  is high, then lognormal vol is more reasonable. The two can be related via equation (2.15):

$$
\sigma_{L N} V = \sigma_{N}
$$

For example, a swaption option has a 0.5 lognormal volatility and the swap rate is  $2.5\%$ . Then its normal (bp) vol is  $1.25\%$ .

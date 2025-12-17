# Chapter 3: Duration and Convexity

## 3.1 Introduction

Duration and convexity are very close to delta and gamma in option. It is first and second order derivatives of the bond price (or any fixed income security) with respect to a specific interest rate (or a collection of interest rates). Depending on which interest rate(s) chosen, we have different durations and convexities. This lesson introduces various duration and convexity calculations and how to use them. Finally, we shall talk about a very simple idea of immunization.

Recall equation (1.2) in Chapter 1 which will be used in our first part of the chapter as a demonstration. In that equation, the discount periods are integers. There is no yearfraction which is the reality when we compute the duration and convexity of an actual case.

### 3.1.1 Taylor's Series Expansion

In the universe of fixed income, participants believe that the price of a fixed income security (bond, swap, ...) is a function of the yield curve. Hence, the change in the price is then a result of the rate change. Taylor's series expansion then provides a nice tool to analyze how the changes of various interest rates affect the price of the fixed income security.

Let $P$ (later, time indices will be added for accuracy) be the price of a fixed income security and $y_i$ be the $i$-th interest rate on the yield curve that affects the price. Then Taylor's series expansion gives:

$$ dP\left(y_1, y_2, \dots y_n, t\right) = \frac{\partial P}{\partial t} dt + \sum_{j=1}^{n} \frac{\partial P}{\partial y_j} dy_j + \frac{1}{2} \sum_{i=1}^{n} \sum_{j=1}^{n} \frac{\partial^2 P}{\partial y_i \partial y_j} dy_i dy_j + o(dt) \tag{3.1} $$

where $o(dt)$ includes terms that are small and $\lim_{dt\to 0}\frac{o(dt)}{dt} = 0$. The first term is similar to Theta in option and known as "roll-down" on the yield curve. As time goes by, the life of a fixed income security becomes shorter. If nothing else in the economy changes (hence, the yield curve stays exactly the same), the yield will become less (in an upward sloping situation). The second term is duration with respect to various interest rates, and the third is convexity with respect to various interest rates.

## 3.2 Duration

We return to equation (1.2) where no yearfraction is considered. We first use the case of annual coupons to demonstrate and then use both annual and semi-annual coupons in the numerical examples.

### 3.2.1 MaCaulay Duration

MaCaulay duration is to treat the bond as a function of only its own yield. And more importantly it is computed off the clean price and assume the next coupon date. In other words, there is no yearfraction in the MaCaulay duration calculation. As a result, the MaCaulay duration is not an accurate measure of interest rate risk. However, the MaCaulay duration does have some insight and interesting interpretations and hence remains quite popular.

Recall equation (1.2) in Chapter 1. We first assume a coupon bond that pays annual coupons (where we can best see the intuition):

$$ P = \sum_{i=1}^{n} \frac{c_i}{(1 + y)^i} $$

or

$$ P = \sum_{i=1}^{n} \frac{c}{(1 + y)^i} + \frac{1}{(1 + y)^n} $$

The MaCaulay duration is defined as the interest rate sensitivity but scaled by the price and yield, as follows:

$$ D_{\mathrm{MaCaulay}} = - \frac{\partial P}{\partial y} \frac{1 + y}{P} \tag{3.2} $$

which can be shown as:

$$
\begin{array}{l}
\frac{\partial P}{\partial y} \frac{1 + y}{P} = \frac{1}{P} \sum_{i=1}^{n} i \frac{c_i}{(1 + y)^i} \tag{3.3} \\
= \sum_{i=1}^{n} i \times w_i \\
\end{array}
$$

Equation (3.3) is very intuitive and has nice interpretations:

1. **Interest rate elasticity**

$$ - \frac{dP}{dy} \frac{1 + y}{P} = - \frac{dP / P}{d(1 + y) / 1 + y} = - \frac{\% \Delta \text{in } P}{\% \Delta \text{in } 1 + y} $$

2. **Weighted average of coupon payment times**

$$ \sum_{i=1}^{n} i \times w_i $$

where $\sum_{i=1}^{n} w_i = 1$. Because of this interpretation, the MaCaulay duration can be regarded as the payback method popular in capital budgeting.

3. **Mass center**

In physics, MaCaulay has an interpretation of "mass center":

![Duration is the mass center](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/29cb3c6a276bf5255a88bff29b978681ffa214d54da4a377232c9986be4249a1.jpg)

**Figure 3.1: Duration is the mass center**

Recall in the previous chapter, and in most text books, we use integer periods to simplify the calculation: annual coupons:

$$ P = \left[ \frac{c}{(1 + y)} + \frac{c}{(1 + y)^2} + \dots + \frac{1 + c}{(1 + y)^n} \right] N \tag{3.4} $$

semi-annual coupons:

$$ P = \left[ \frac{c / 2}{(1 + y / 2)} + \frac{c / 2}{(1 + y / 2)^2} + \dots + \frac{1 + c / 2}{(1 + y / 2)^{2n}} \right] N \tag{3.5} $$

- any arbitrary frequency:

$$ P = \left[ \frac{c / m}{(1 + y / m)} + \frac{c / m}{(1 + y / m)^2} + \dots + \frac{1 + c / m}{(1 + y / m)^{mn}} \right] N \tag{3.6} $$

The MaCaulay duration in the general case:

$$ D_{\mathrm{MaCaulay}} = \frac{1}{m} \frac{1}{P} \left[ \sum_{i=1}^{mn} i \frac{c / m}{(1 + y / m)^i} + mn \frac{1}{(1 + y)^{mn}} \right] N \tag{3.7} $$

#### Modified MaCaulay Duration

The modified MaCaulay duration is simply to multiply the MaCaulay duration by $1 + y$.

$$ D_{\mathrm{mod}} = D_{\mathrm{MaCaulay}} \times (1 + y) \tag{3.8} $$

#### Example

Assume a $8\%$, 10-year, face = $100,000 coupon bond and its current price = $105,000.

If the coupons are paid annually, then we solve the following equation for the yield (e.g. Excel Solver to solve for the yield so that the price which at the bottom of Table 3.1 is equal to 105,000):

$$ 1.05 = \sum_{i=1}^{10} \frac{0.08}{(1 + y)^i} + \frac{1.08}{(1 + y)^{10}} $$

and the answer is $y = 7.2789\%$.

The duration under annual coupons is to apply equation (3.7) and set $m = 1$. A convenient tabulated form is given in Table 3.1. The discount factor in the Table is

**Table 3.1: Duration: Annual Coupons**

| i | payment | disc fact | PV | PV × i |
|---|---------|-----------|----|--------|
| 1 | $8,000 | 0.93215 | $7,457.20 | $7,457.20 |
| 2 | $8,000 | 0.868903 | $6,951.22 | $13,902.45 |
| 3 | $8,000 | 0.809948 | $6,479.58 | $19,438.75 |
| 4 | $8,000 | 0.754993 | $6,039.94 | $24,159.76 |
| 5 | $8,000 | 0.703766 | $5,630.13 | $28,150.64 |
| 6 | $8,000 | 0.656015 | $5,248.12 | $31,488.73 |
| 7 | $8,000 | 0.611504 | $4,892.04 | $34,244.25 |
| 8 | $8,000 | 0.570014 | $4,560.11 | $36,480.88 |
| 9 | $8,000 | 0.531338 | $4,250.70 | $38,256.34 |
| 10 | $108,000 | 0.495287 | $53,490.96 | $534,909.56 |
| | | sum: | $105,000.00 | $768,488.55 |

annual: $(1 + 0.072789)^i$. PV is just coupon amount multiplied by the corresponding discount factor. The last column is PV multiplied by the first column $t$.

The MaCaulay duration is simply the sum of $\mathrm{PV} \times t$ and divided by the current price of the bond:

$$ \$768,488.55 \div \$105,000.00 = 7.32 \text{ (years)} $$

This tabulation method is quite popular as it lays out all the details and very efficient to be used in Excel.

If the coupons are paid semi-annually, then we solve the following equation for the yield (e.g. Excel Solver):

$$ 1.05 = \sum_{i=1}^{20} \frac{0.04}{(1 + y / 2)^i} + \frac{1.04}{(1 + y / 2)^{20}} $$

and the answer is $y = 7.2872\%$.

The duration under semi-annual coupons is to apply equation (3.7) and set $m = 2$. A convenient tabulated form is given in Table 3.2.

Again, the MaCaulay duration is simply the sum of $\mathrm{PV} \times t$ and divided by the current price of the bond:

$$ \$1,500,666.81 \div \$105,000.00 = 14.2921 \text{ (half-years)} $$

which is equal to 7.15 years.

**Table 3.2: Duration: Semi-annual Coupons**

| t | payment | disc fact | PV | PV × t |
|---|---------|-----------|----|--------|
| 1 | $4,000 | 0.964845 | $3,859.38 | $3,859.38 |
| 2 | $4,000 | 0.930926 | $3,723.70 | $7,447.40 |
| 3 | $4,000 | 0.898199 | $3,592.79 | $10,778.38 |
| 4 | $4,000 | 0.866622 | $3,466.49 | $13,865.96 |
| : | : | : | : | : |
| 16 | $4,000 | 0.564053 | $2,256.21 | $36,099.37 |
| 17 | $4,000 | 0.544223 | $2,176.89 | $37,007.18 |
| 18 | $4,000 | 0.525091 | $2,100.36 | $37,806.55 |
| 19 | $4,000 | 0.506631 | $2,026.53 | $38,503.98 |
| 20 | $104,000 | 0.488821 | $50,837.35 | $1,016,747.00 |
| | | | $105,000.00 | 1,500,666.81 |

The reader can easily practice other popular frequencies: $m = 4$ (quarterly for swaps) and $m = 12$ (monthly for mortgage-backed securities). As we see, more frequent discounting shortens the duration because of the higher yield.

#### Price-Yield Plot

It is very common and useful to understand the price-yield relationship which is depicted in Figure 3.2 (which uses annual coupons). Duration is roughly represented by the slope of this convex function. As we can see, as the discount rate goes up, the slope goes down and consequently the duration goes down (shorter).

Using the same yield $(y = 7.2789\%)$ but lower the coupon to $10\%$, we can compute the bond price to be $118,867.83$ (using the same yield) and now its duration is 7.04 years which is shorter than the duration under $8\%$. Hence, we can conclude that when the yield is higher or the coupon is higher, the duration is shorter.

This gives an interesting case for zero-coupon bonds. As the coupon is zero, a zero-coupon bond must have very long duration. As it turns out, the time to maturity of a zero-coupon bond is its duration. As a bond starts paying coupons, its duration shortens (hence higher the coupon, shorter is the duration). This coincides with the payback intuition discussed earlier. If a bond does not pay coupons, then it pays back its investors at the maturity and hence the payback time is time to maturity and so is its duration. Once the bond starts to pay coupons, its duration shortens and so is its payback time (investors get their investment back sooner).

![Price-Yield Relationship](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/5c4963fdab3dcac8d19a4af604e5821d0394a8ef9e7c233cae021cbddf859085.jpg)

**Figure 3.2: Price-Yield Relationship (Semi-annual Coupons)**

#### Alternative Method

Despite that the tabulation method is quite insightful and easy to set up, it can take a very large space in Excel if the bond has many coupons. This is the case in, for example, mortgage-backed securities whose coupons are monthly and a typical mortgage is 30 years long (hence 360 months). As a result, it might be more convenient to use an alternative method which is numerical derivatives.

From equation (3.2), we know that the MaCaulay duration is:

$$
\begin{array}{l}
D_{\mathrm{MaCaulay}} = - \frac{\partial P}{\partial y} \frac{1 + y}{P} \\
= \left\{\begin{array}{l}
\frac{P(y) - P\left(y^{+}\right)}{y^{+} - y} \frac{1 + y}{P(y)} \\
\frac{P\left(y^{-}\right) - P(y)}{y - y^{-}} \frac{1 + y}{P(y)} \\
\frac{P\left(y^{-}\right) - P\left(y^{+}\right)}{\left(y^{+} - y^{-}\right) / 2} \frac{1 + y}{P(y)}
\end{array}\right. \tag{3.9} \\
\end{array}
$$

where $y^{+}$ is a (VERY) little bit more than $y$ and $y^{-}$ is (VERY) little bit less; furthermore $P(y)$ is the price at the current yield which is the market price, $P(y^{+})$ is price discounted at $y^{+}$ which is less than $P(y)$; and $P(y^{-})$ is price discounted at $y^{-}$ which is more than $P(y)$.

It is clear that the partial derivative is replaced (approximated) by the tiny change of yield. $P(y)$ is still the current price but $P(y^{+})$ and $P(y^{-})$ are recomputed prices using $y$ and $y^{-}$. Using Excel PV(r,n,c) where $r$ is rate, $n$ is number of payments, and $\mathsf{c}$ is payment amount, we can easily compute the present value of all coupons. Then separately adding the discounted principal (face value $\div (1 + y / m)^i$, we obtain the price of the bond.

Now, we can easily change the yield $y$ to $y^{+}$ or $y^{-}$. It is obvious that in equation (3.9) $\partial P / \partial y$ which is a continuous differentiation is replaced (approximated) by the bracketed term which is a discrete difference. As we know, as $y^{+}$ or $y^{-}$ gets closer and closer to $y$, this discrete approximation will be more and more accurate.

The first equation of the bracketed term is using only $y^{+}$ (and similarly the second equation which uses only $y^{-}$) is a one-sided first-order difference and the third equation is two-sided. Frankly, as $y^{+}$ or $y^{-}$ gets closer and closer to $y$, they all converge. Yet the error is the smallest in the third equation. Readers are welcomed to try all three and compare. For the sake of simplicity and demonstration, we use the first equation: $y^{+}$ only. The results are shown in Figure 3.3.

![Numerical Duration](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/0776a608e630f4ff11cc9ae60c1c0b5e979fd05fd7ae9feab3706f5304796160.jpg)

**Figure 3.3: Numerical Duration**

The market yield is $y = 7.2872\%$. At this market yield we have the market price of the bond as $105,000. Arbitrarily (provided that it is small), we add 1 basis point (0.01%) to the yield to have $y^{+} = 7.2972\%$ and recompute the price to be $104,927.64. As a result, we obtain the duration as follows:

$$\frac{105,000 - 104,927.64}{0.0001} \times \frac{1}{105,000} \times (1 + 7.2872\%) = 7.14$$

which is almost equal to the duration result computed earlier. As the shift size $(\varepsilon)$ gets smaller (e.g. one-tenth of 1 basis point), the result gets more accurate.

#### Problems with MaCaulay Duration

MaCaulay duration does not measure true interest rate risk. Two bonds with the same MaCaulay duration do not necessarily have the same interest rate risk, hence the same yield. In other words, when we find two bonds with the same duration but different yields it does not mean that there is an arbitrage opportunity. As a result, the MaCaulay duration can be at most viewed as a rough or crude way to understand interest rate risk. Should the yield curve be flat, MaCaulay would be more useful.

### 3.2.2 MaCaulay Duration with Yearfraction

The demonstrations in the above sub-section apparently are text-book-only demonstrations and nowhere close to reality. Nevertheless, they do provide the basic knowledge for us to quickly adapt to real cases. As we discussed in previous chapters, bond prices move constantly and hence yields change constantly. As each day goes by, the time to maturity gets shorter by one day and yearfraction needs to be computed by the chosen convention (see Chapter 1).

To do that, we first redraw the timeline with the current date in between two coupon payment dates, as shown in Figure 3.4.

![Time Line](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/761e38a659c9d405ccfc74118828d4c46c2af458487f5f7f0ede386c35d8234b.jpg)

**Figure 3.4: Time Line**

In between any two coupon dates (e.g. $T_{i-1}$ and $T_i$ for $i = 1, \dots, n$ and $T_0 = t$), it is assumed to be half year (semi-annual coupons), or 0.5. In general,

$$ T_i - T_{i-1} = \frac{1}{m} $$

where $m$ is frequency.

Readers can assume any frequency as needed. There is a yearfraction which between the current time $t$ and the next coupon date $(T_1)$.

Recall the discussion in Chapter 1 on two-step discounting (equation (1.3)). We can discount all the coupons till time $T_1$ and the result is further discounted to today using yearfraction. That is, recall from Chapter 1 the yield to maturity formula:

$$
\begin{array}{l}
P = \left[ \frac{c / 2}{(1 + y / 2)^{2(T_1 - t)}} + \frac{c / 2}{(1 + y / 2)^{2(T_2 - t)}} + \dots + \frac{1 + c / 2}{(1 + y / 2)^{2(T_n - t)}} \right] N \\
= \frac{c / 2}{(1 + y / 2)^{2(T_1 - t)}} \left[ \frac{c / 2}{(1 + y / 2)} + \frac{c / 2}{(1 + y / 2)^{2(T_2 - T_1)}} + \dots + \frac{1 + c / 2}{(1 + y / 2)^{2(T_n - T_{n-1})}} \right] N \\
= \frac{c / 2}{(1 + y / 2)^{2(T_1 - t)}} \left[ \frac{c / 2}{(1 + y / 2)} + \frac{c / 2}{(1 + y / 2)^2} + \dots + \frac{1 + c / 2}{(1 + y / 2)^{2n}} \right] N \\
\end{array}
$$

where $c$ is coupon rate, $T_j$ is the coupon time, $y$ is yield to maturity and $N$ is notional. Duration is the first order derivative:

$$\frac{dP}{dy} = \left[ \sum_{j=1}^{n} -2(T_j - t) \frac{c / 2}{(1 + y / 2)^{2(T_j - t) - 1}} - 2(T_n - t) \frac{1}{(1 + y / 2)^{2(T_n - t) - 1}} \right] N$$

MaCaulay duration is "scaled" interest rate sensitivity measure:

$$ D_{\mathrm{MaCaulay}} = - \frac{dP}{dy} \frac{1 + y}{P} $$

Following the same example as in Chapter 1, equation (1.3) and assume the maturity of the bond is December 31, 2030, and current date is August 26, 2020. Hence the half-year yearfraction is 0.694. The result is given in Table 3.3. This is similar to Table 3.2 but with yearfraction (daycount A/A).

### 3.2.3 Fisher-Weil Duration

The Fisher-Weil duration is similar to the MaCaulay duration. The difference is that Fisher-Weil duration allows the yield curve to be non-flat. But we know that MaCaulay duration does not assume a flat yield curve (this is misunderstanding) but rather using a bond's own yield as the risk factor.

This is rarely used in practice nowadays but occasionally referenced due to the early reference to the non-flat yield curve.

**Table 3.3: Duration with Yearfraction**

| t | payment | disc fact | PV | PV × t |
|---|---------|-----------|----|--------|
| 0.694 | 4000 | 0.975469 | $3,901.88 | $2,707.86 |
| 1.194 | $4,000 | 0.95817 | $3,832.68 | $4,576.18 |
| 1.694 | $4,000 | 0.941177 | $3,764.71 | $6,377.37 |
| 2.194 | $4,000 | 0.924485 | $3,697.94 | $8,113.24 |
| 2.694 | $4,000 | 0.908089 | $3,632.36 | $9,785.53 |
| : | : | : | : | : |
| 8.694 | $4,000 | 0.732611 | $2,930.44 | $25,477.25 |
| 9.194 | $4,000 | 0.719618 | $2,878.47 | $26,464.65 |
| 9.694 | $4,000 | 0.706856 | $2,827.42 | $27,409.02 |
| 10.194 | $4,000 | 0.69432 | $2,777.28 | $28,311.56 |
| 10.694 | $104,000 | 0.682006 | $70,928.66 | $758,510.36 |
| | | | $133,215.82 | 1,096,486.48 |
| | | | duration | 0.627669 |

### 3.2.4 Partial Duration (Key Rate Duration)

Given the following example of zero rates:

**Table 3.4: Zero Rates**

| t | zero rates | |
|---|------------|-|
| 0.083333 | 0.26 | not used |
| 0.25 | 0.30 | not used |
| 0.5 | 0.44% | |
| 1 | 0.53% | |
| 2 | 0.74% | |
| 3 | 0.91% | |
| 5 | 1.25% | |
| 7 | 1.55% | |
| 10 | 1.80% | |
| 20 | 2.23% | |
| 30 | 2.79% | |

Move one rate at a time. These are zero rates.

$$
\begin{array}{l}
D_{\mathrm{key}} = \frac{P^{+} - P^{-}}{0.0002} \\
= \frac{P(\text{yield shifted down by 1 bp}) - P(\text{yield shifted up by 1 bp})}{0.0002} \\
\end{array}
$$

The results are: key rate duration are $1.98\%$, $3.93\%$, $5.81\%$, $9.34\%$, $645.03\%$ respectively.

### 3.2.5 Effective Duration

Effective duration measures the price change of the entire yield curve change (parallel shift). Hence it is more than just the sum of key rate durations. Other rates must be moved as well.

The computation:

$$
\begin{array}{l}
D_{\mathrm{eff}} = \frac{1}{P} \frac{P^{+} - P^{-}}{0.0002} \\
= \frac{1}{P} \frac{P(\mathrm{whole y.c. shifted down by 1 bp}) - P(\mathrm{whole y.c. shifted up by 1 bp})}{0.0002} \\
\end{array}
$$

![Triangular Rule for Key Rate Duration](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/c4ae3f90b9bf8a406e3c79fb33d6eebb58dc60abef8cd1cfbba5565981c13e0a.jpg)

**Figure 3.5: Triangular Rule for Key Rate Duration**

### 3.2.6 PV01 (DV01)

This is price sensitivity with respective to any chosen risk factor change (1 bp usually). This is very similar to duration except that it is strictly differentiation. This is not scaling by price. Also the risk factors are necessary the yield curve. PV01 or DV01 hence can refer to spreads, equities, or foreign currency factors. A pricing model is usually required.

#### ABS/MBS Deals

https://www.sec.gov/comments/s7-08-10/s70810-170.pdf has all INTEX screenshots

A mortgage-backed security (MBS) is a type of asset-backed security (an 'instrument') which is secured by a mortgage or collection of mortgages. The mortgages are aggregated and sold to a group of individuals (a government agency or investment bank) that securitizes, or packages, the loans together into a security that investors can buy. Bonds securitizing mortgages are usually treated as a separate class, termed residential;¹ another class is commercial, depending on whether the underlying asset is mortgages owned by borrowers or assets for commercial purposes ranging from office space to multi-dwelling buildings.

![Deal Screenshot](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/cc5f23ea596628bfcfbb7f33c66e01280aab58ac85196947e83dc4b43a0fb7c4.jpg)

**Figure 3.6: Deal Screenshot (from INTEX)**

An asset-backed security (ABS) is a security whose income payments and hence value are derived from and collateralized (or "backed") by a specified pool of underlying assets.

INTEX is the most dominant vendor in the world of ABS/MBS to provide ABS/MBS deal information. It also provide modeling options should subscribers choose to use them. Details of ABS/MBS will be discussed in Chapter 12.

> Intex Solutions, Inc. is the world's leading provider of structured fixed-income cashflow models and related analytical software. Our clients include the world's best known financial institutions including most major investment banks, regional broker dealers, issuers and investment managers. Intex was founded in 1985, and remains an independent, privately-held company with headquarters near Boston, Massachusetts. Intex also supports its extensive international client base with staff and representatives in London, Shanghai and Tokyo.

ABS/MBS are complex deals associated with various varieties of securitization. As a result of that, the cash flows of a particular ABS/MBS are irregular and random. INTEX has a cash flow model to estimate the cash flow stream of each deal.

The following is a sample (screenshot) of an INTEX deal screen.

This is about detailed deal information. One can use the CUSIP to look up INTEX or Bloomberg for other functions.

![Deal Screenshot](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/6bc8c3831672c4104a7005dcf9a5d3abf66d8809e65b3f994e533cd55132759f.jpg)

**Figure 3.7: Deal Screenshot (from INTEX)**

![Deal Cash Flows](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/b16b5f0f4b47d177b093c7484c4a99bd779324142429f3e266e80119deff6f7e.jpg)

**Figure 3.8: Deal Cash Flows (from INTEX)**

Now let us compute the duration of the sample. Unlike bonds that pay semi-annual coupons, ABS/MBS deals pay monthly coupons Table 3.5. The trade date of this deal is October 1, 2010. The yield of this deal is

**Table 3.5: Example**

| t | date | cash flow | PV | t × PV |
|---|------|-----------|----|--------|
| 0.046575 | 10/18/2010 | | | |
| 0.123288 | 11/15/2010 | 8733.71 | 8680.038 | 1070.144 |
| 0.232877 | 12/25/2010 | 8733.71 | 8632.606 | 2010.335 |
| 0.317808 | 1/25/2011 | 8733.71 | 8596.025 | 2731.885 |
| 0.40274 | 2/25/2011 | 8733.71 | 8559.598 | 3447.293 |
| 0.479452 | 3/25/2011 | 8733.71 | 8526.83 | 4088.206 |
| 0.564384 | 4/25/2011 | 8733.71 | 8490.697 | 4792.013 |
| 0.646575 | 5/25/2011 | 8733.71 | 8455.875 | 5467.358 |
| 0.731507 | 6/25/2011 | 8733.71 | 8420.043 | 6159.32 |
| 0.813699 | 7/25/2011 | 8216.22 | 7888.652 | 6418.988 |
| 0.89863 | 8/25/2011 | 7129.52 | 6816.27 | 6125.305 |
| 0.983562 | 9/25/2011 | 6062.01 | 5771.104 | 5676.238 |
| 1.065753 | 10/25/2011 | 5013.5 | 4753.336 | 5065.882 |
| 1.150685 | 11/25/2011 | 3983.55 | 3760.828 | 4327.528 |
| 1.232877 | 12/25/2011 | 2971.72 | 2794.064 | 3444.737 |
| 1.317808 | 1/25/2012 | 1977.61 | 1851.505 | 2439.928 |
| 1.40274 | 2/25/2012 | 1000.8 | 933.0119 | 1308.773 |
| 1.479452 | 3/25/2012 | 40.9 | 37.98371 | 56.19508 |
| | | | 102968.5 | 64630.13 |
| | | | duration | 0.627669 |

#### WAL

The weighted average life (WAL) is the average length of time that each dollar of unpaid principal on a loan, a mortgage, or an amortizing bond remains outstanding. Calculating WAL shows an investor, an analyst, or a portfolio manager how many years it will take to receive roughly half of the amount of the outstanding principal. The formula is useful in measuring the credit risk associated with fixed-income securities.

See mortgage-backed securities in Chapter 12

$$\mathrm{WAL} = \frac{1}{P} \sum_{i=1}^{n} i \times c_i$$

which is similar to equation (3.3) but without discounting.

Weighted average life = $91,000 / $23,000 = 3.96 years

**Table 3.6: WAL Example**

| time | cash flow | txcf |
|------|-----------|------|
| 1 | $1,000 | $1,000 |
| 2 | $2,000 | $4,000 |
| 3 | $4,000 | $12,000 |
| 4 | $6,000 | $24,000 |
| 5 | $10,000 | $50,000 |
| | $23,000 | $91,000 |

WAL gives investors or analysts a rough idea of how quickly the bond in question pays out returns. Since rational investors want to receive returns earlier, if two bonds were compared, the investor would select the one with the shorter WAL. Stated differently, the most significant credit risk of a loan is the risk of loss of principal and a smaller WAL indicates a higher likelihood that the principal will be repaid in full.

#### WAM

WAM (weighted average maturity) is similar to duration:

$$\mathrm{WAM} = \sum_{i=1}^{n} w_i T_i$$

$$w_i = \frac{c_i}{\sum_{i=1}^{n} c_i}$$

#### WALA

**Investopedia:**

The weighted average loan age (WALA) measures the average age of the loans in a pool of mortgage-backed securities (MBS). The weights are based on the dollar amount of each loan at each maturity in proportion to the aggregate total of the pool and can be weighted on the remaining principal balance dollar figure or the nominal value of the loan.

## 3.3 Convexity

Convexity measures the secondary interest rate risk - large sudden movements of interest rates. When interest rates move gradually slowly, the duration alone can hedge the risk away. But when changes are large, then duration alone cannot hedge the risk completely and one must have the additional protection by hedging the convexity.

### 3.3.1 MaCaulay Convexity

Convexity is the second derivative of the price with respective to a chosen risk factor. Take equation (3.1) as an example, if we recognize the bond price as a function of only its own yield, then the second derivative of equation (3.1) can be taken as:

$$ \frac{1}{2} \frac{1}{P} \frac{\partial^2 P}{\partial y^2} $$

Convexity measures the curvature. It is second order derivative. We use the same example as in duration but we need to move the yield both up and down. To achieve better accuracy, the shift size is 0.000002 which is much smaller than 1 bp in the duration example.

$$
\begin{array}{l}
\mathbb{C} = \frac{1}{2P} \frac{P^{+} - 2P + P^{-}}{\varepsilon^2} \\
= \frac{1}{2P(y)} \frac{P(y - \varepsilon) - 2P(y) + P(y + \varepsilon)}{\varepsilon^2} \tag{3.10} \\
\end{array}
$$

where $\varepsilon$ is the shift size.

The numerical result is given in Figure 3.9:

The convexity is 240.68. Note that convexity does not have a unit. Hence, the number by itself has little meaning. Only if it is compared with another convexity number (of another bond), we can draw any conclusion.

### 3.3.2 Dollar Convexity

Besides the MaCaulay convexity, we can also compute convexity results for key rates and the whole yield curve, or any chosen risk factors (which then require pricing models). The formula is same as equation (3.10) but without dividing by half of the bond price.³ Readers are welcomed to perform all the exercises and compare results of various methods.

![Compute Convexity](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/2708d5fa94b29abfc11f999d06a2ca2efe129adb4b997fa87e3a1bf00cd04200.jpg)

**Figure 3.9: Compute Convexity**

In doing so, dollar convexity is exactly the same as gamma in derivatives. Given that it is not scaled by price, as in gamma, the second derivative directly has a dollar unit. As a result, it can be added (or multiplied) to other derivatives (obviously delta, or dollar duration).

In a later section, we will discuss trading strategies (immunization, yield curve riding, and barbell), dollar duration and dollar convexity will be used. Also note that dollar duration and dollar convexity are used for P&L attribution in risk management.

## 3.4 Yield Curve Trading Strategies

Modern fixed income hedge funds have complex trading strategies based upon sophisticated interest rate models. Yet, good old yield curve trading strategies still worth a lot of attention. The basic principles of fixed income trading remain unchanged.

### 3.4.1 Immunization

One of the most important applications of duration and convexity is immunization. The example provided in this section is based upon MaCaulay duration and convexity which can only be valid under a flat yield curve. While unrealistic, it still provides the basic intuition of how immunization works.

**Table 3.7: Zero-coupon Bond**

| 10-year zero | | duration | 10 |
|--------------|-|----------|-----|
| coupon rate | 0% | yield/0.5yr | 10.00% |
| # of years | 10 | # of periods | 10 |
| principal | $1,931 | | |
| yield to maturity | 10% | pvifa | 6.144567106 |
| coupon value | $ - | pay at the end (annuity) | $ - |
| principal value | $744.48 | | |
| bond value | $744.48 | | |

**Table 3.8: Coupon Bond**

| 20-year 7% | | duration | 10 |
|------------|-|----------|-----|
| coupon rate | 7% | yield/0.5yr | 10.00% |
| # of years | 20 | # of periods | 20 |
| principal | $1,000 | | |
| yield to maturity | 10% | pvifa | 8.51356 |
| coupon value | $595.95 | pay at the end (annuity) | $70.00 |
| principal value | $148.64 | | |
| bond value | $744.59 | | |

Behind the brilliance of immunization, although it needs to be substantially modified in order to work in reality, provides the golden rule in fixed income trading. It is equivalent to the equity trading rule: buy low, sell high. As we will see in the following example (under MaCaulay), duration neutral and convexity maximization is equivalent to buy low and sell high.

In fixed income trading, it always involves two securities. Whose prices being closely related, fixed income securities (e.g. various Treasuries) are highly connected (via common risk factors, and in the MaCaulay case - yield), we can easily find a trading rule through which there is an arbitrage profit.

The following example is taken from Modern Investment Theory by Robert Haugen. Assume two Treasury securities. The first is a 10 year zero-coupon bond, face value = $1931 and price = $744.48. The second is a 20 year, 7\% coupon (semi-annual), and face value = $1000. The price = $744.59.

Using the formulas given before, we can easily compute the yield for both securities to be $10\%$. Given that the first security is a zero coupon bond, its duration must be equal to its maturity $= 10$ yrs. The second security is a coupon-bond so we need to use the formula of equation (3.5) and it is also 10 yrs. Hence these two bonds have equal price and equal duration.

If we buy one and sell the other then there is no dollar investment today. Since they also have the same duration, the risk is 0. But since the coupon bond has a higher convexity than the zero-coupon bond, we should buy the coupon bond and sell the zero-coupon bond (positive convexity). Doing so, we are guaranteed to make money and not lose money. The result is explained in Table 3.9.

As we can see, no matter if the yield rises (to $12\%$) or falls (to $4\%$), this portfolio always makes money. This seems too good to be true! So what is the catch? The catch is that in the example, the yield can only move once (and it must move right away) and then stays fixed for the rest of the lives the bonds.

**Table 3.9: Immunization Explained**

| Immunization | rate stay at 10% | | rate fall to 4% | | rate rise to 16% | |
|--------------|------------------|-|----------------|-|------------------|-|
| | coupon | future value | | | | |
| 1 | 70 | 165.06 | 70 | 99.63 | 70 | 266.21 |
| 2 | 70 | 150.05 | 70 | 95.8 | 70 | 229.49 |
| 3 | 70 | 136.41 | 70 | 92.12 | 70 | 197.84 |
| 4 | 70 | 124.01 | 70 | 88.57 | 70 | 170.55 |
| 5 | 70 | 112.74 | 70 | 85.17 | 70 | 147.02 |
| 6 | 70 | 102.49 | 70 | 81.89 | 70 | 126.74 |
| 7 | 70 | 93.17 | 70 | 78.74 | 70 | 109.26 |
| 8 | 70 | 84.7 | 70 | 75.71 | 70 | 94.19 |
| 9 | 70 | 77 | 70 | 72.8 | 70 | 81.2 |
| 10 | 70 | 70 | 70 | 70 | 70 | 70 |
| future value of past coupons | | 1115.62 | | 840.43 | | 1492.5 |
| present value of future coupons | | 815.66 | | 1243.33 | | 565.01 |
| 20 year bond value in 10 years | | 1931.28 | | 2083.75 | | 2057.51 |
| liability value | | 1931 | | 1931 | | 1931 |
| portfolio value | | 0.28 | | 152.75 | | 126.51 |

Figure 3.10 explains what is going on. Bond 1 (zero-coupon) and bond 2 (coupon) have their price-yield curves (see Figure 3.2) tangent at $10\%$ (current yield) and $744.5$. However, bond 2 (coupon bond) has a higher curvature (i.e. convexity). As a result, no matter how yield changes (rises or falls), bond 2 always has a higher value than bond 1. This indicates that if you buy bond 2 and sell bond 1, you are guaranteed to make money (and will not lose money if the yield stays the same at $10\%$).

Certainly both bonds have very long lives and this diagram is a static description of the two bonds. As economy changes, they will no longer be tangent and there is no guarantee that bond 2 will be more convex than bond 1 in the new environment. Consequently, continuous rebalancing is required and under continuous rebalancing there is no guarantee of an arbitrage profit.

Nevertheless, the concept of immunization remains valid - keep DURATION-NEUTRAL and POSITIVE CONVEXITY and do it as frequently as environment demands. Undoubtedly, when interest rates change over time, immunization becomes quite challenging.

![Immunization](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/ac4fbbc8dc95c90599660f960b35eaccb8e03763474b3facc2eb360ae9c24952.jpg)

**Figure 3.10: Immunization**

### 3.4.2 Riding on the Yield Curve

The yield curve is generally upward sloping. This means that the short term interest rates are always lower than the long term interest rates. Hence, it makes sense to borrow at the short end of the yield curve (short sell) and invest in the long end of the yield curve.

When the yield curve is steep, this strategy generate attractive profits.

The risk of this strategy is that it ignores the fact that the shape of the yield curve is changing over time. The slope of the yield curve can steepen or flatten. This strategy will lose money if the yield curve flattens.

### 3.4.3 Barbell

The Barbell strategy is less risky than riding the yield curve. The Barbell strategy picks three points of the yield curve. It longs the two ends and short the middle one.

To implement the strategy, one must make sure the duration of the portfolio is 0 (duration neutral). Hence, there is no short term fluctuation risk. Also, it is not subject to the risk of changing slope of the yield curve.

The Barbell trade is a convexity trade. It takes advantage of the three point shape of the yield curve. If the yield curve is linear, then there is no profit to be made.

Although there is no duration risk, the strategy will have convexity risk. That is, similar to riding the yield curve, once convexity changes the strategy will lose money.
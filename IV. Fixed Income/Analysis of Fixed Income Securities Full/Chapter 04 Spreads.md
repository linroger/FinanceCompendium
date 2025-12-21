---
title: "Chapter 4: Spreads"
parent_directory: "Analysis of Fixed Income Securities Full"
formatted: "2025-12-21 05:15:00 PM"
formatter_model: "kimi-k2-turbo"
cli_tool: "claude-code"
primary_tags:
  - "option adjusted spread"
  - "credit spread analysis"
  - "yield spread measures"
  - "liquidity spread models"
secondary_tags:
  - "z spread calculation"
  - "libor spread dynamics"
  - "cds bond basis"
  - "spread duration metrics"
  - "basis swap analysis"
  - "discount margin"
  - "spread convexity"
cssclasses: academia
---

# Chapter 4: Spreads

## 4.1 Introduction

Spreads carry important information about risks of securities. There are many reasons to cause a spread. The most popular one is credit spread which refers to likelihoods of default. Besides default, other reasons include liquidity, noise trading, market segmentation, among numerous others.

A spread could be used to explain a particular source of risk, such as credit or liquidity. It could also be used to explain market imperfections such as noise trading and market segmentation.

## 4.2 Option Adjusted Spread (OAS)

OAS has a very long history in the fixed income markets. In the early days, it was regarded as a credit spread (i.e. default likelihood). Over time, as the markets grew more sophisticated, people realized that credit spreads can be separately evaluated and regarded OAS as the value of various optionalities embedded in fixed income securities. Then as more and more models can price optionalities accurately, OAS has become a trading index signaling profit potentials.

### 4.2.1 Static OAS

Given that OAS is the most ancient spread, we begin our chapter with OAS. Our first example is a static OAS. Assume a 5-year corporate bond that pays $4\%$ coupon (semi-annual) with 100 face value. The corporate bond is priced at par (assuming at issuance).

The zero curve has been bootstrapped out to be the following table:

**Table 4.1: Zero Curve**

| t | zero rate |
|---|-----------|
| 1 | 1.2408% |
| 2 | 1.9340% |
| 3 | 2.3394% |
| 4 | 2.6271% |
| 5 | 2.8502% |
| 6 | 3.0326% |
| 7 | 3.1867% |
| 8 | 3.3202% |
| 9 | 3.4380% |
| 10 | 3.5434% |

A bench marked 5-year Treasury issue is paying $3.5\%$ and is priced at par:

$$
\begin{array}{l}
100 = \sum_{i=1}^{10} \frac{c_i}{\left(1 + r_i\right)^i} \\
= \frac{1.75}{(1 + 1.2408\% / 2)} + \frac{1.75}{(1 + 1.9340\% / 2)^2} + \dots + \frac{101.75}{(1 + 3.5434\% / 2)^{10}} \\
\end{array}
$$

This is reasonable as Treasuries do not suffer default risk and hence their coupons should be less than the corresponding corporate bonds. The OAS of the corporate bond can be computed as:

$$
\begin{array}{l}
100 = \sum_{i=1}^{10} \frac{c_i}{(1 + (r_i + s) / 2)^i} \\
= \frac{2}{(1 + (1.2408\% + s) / 2)} + \frac{2}{(1 + (1.9340\% + s) / 2)^2} + \dots + \frac{102}{(1 + (3.5434\% + s) / 2)^{10}} \\
\end{array}
$$

and then we can solve for the spread as $0.5062\%$, or 50.62 basis points.

The second static example is embedded optionality. For example, some Treasury bonds (longer than 10 years to maturity) can be called. And hence for these callable Treasuries, they must offer higher coupons. As a result, the analysis is identical to that of the corporate bond. Using the same example and assume a callable Treasury pays a $4\%$ coupon, we can calculate the OAS to be 50.62 basis points.

As we can see now, static OAS is just to fill the gap between the zero Treasury yield curve and price of the target bond. It does not distinguish where the spread comes from - either it is a credit risk or a call option.

We should note that it is possible for OAS to be negative. For example, an embedded put option can generate a negative OAS.

Finally, we should note that today's OAS is different from what is discussed here. Today's OAS is computed after considering all possible optionalities (e.g. put and call) and risks (e.g. credit and liquidity). Apparently these optionalities and risks must be evaluated via models. Hence, today's OAS is a trading indicator. In other words, after considering all optionalities and risks, if there is a positive OAS, then it indicates that the bond is too cheap (buy indication). Otherwise (a negative OAS), then the bond is too expensive (sell (or short-sell) indication.

### 4.2.2 With Model

We use the Ho-Lee model for interest rate risk, Jarrow-Turnbull model for credit, and Chen model for liquidity. These models are reviewed in Chapter 14. For those who are not familiar with these models, please review Chapter 14 first.

<See Excel>.

Our example is a callable Treasury. A 3-year, 7\% coupon bond is priced at $100.25 (no accrued interest so the quoted price is 100:08). In this case, we can calculate the OAS. This OAS is a static one that can be easily computed off today's yield curve, as follows:

**Table 4.2: Ho-Lee Model (yield curve)**

| yield | yld + spd | disc fact | PV |
|-------|-----------|-----------|----|
| 4.9979% | 5.4582% | 0.9482 | 6.6377 |
| 5.9998% | 6.4601% | 0.8823 | 6.1762 |
| 6.5021% | 6.9624% | 0.8172 | 87.4361 |

The spread can be solved to be $0.4603\%$ (or 46 basis points). As this spread is added to the yields, the sum of PVs will be precisely 100.25.

Note that in this case the OAS reflects only liquidity and trading noise – which is regarded as a trading opportunity. If the OAS is positive, then the bond is underpriced and it is a good buy. Conversely, if the OAS is negative, then the bond is a good sell.

A 3-year callable bond pays an 8.5\% coupon (it must be higher than the straight bond in order to compensate the call option) and is priced at $99.5 (no accrued interest). The first call date is at year 2 (so only year 2 and year 3 can be called) and the call price is $108.

**Table 4.3: Ho-Lee Model**

| 0 | 1 | 105.3494 | | | | 99.5 | | |
|---|---|----------|-|-|-|------|-|-|
| 1 | 2 | 98.5471 | 118.7408 | | | 98.5471 | 108.5 | |
| 2 | 3 | 96.9331 | 106.7549 | 117.6670 | | 96.9331 | 106.7549 | 108.5 |
| 3 | 4 | 108.5 | 108.5 | 108.5 | 108.5 | | | |

The OAS solved is $0.0462\%$ (or 4.62 basis points). As emphasized before, this OAS is in addition to the call option value. We can see the comparable $8\%$ straight bond has a value of $105.35 under the same OAS. Hence the option value is $5.85. In other words, for the callable bond selling at 99.5, it contains an OAS of 25.66 bps and also an option value of 5.85.

The following table (Table 4.4) presents the calculations of the yields with and without OAS. The left panel contains yields directly from the HL model. The right panel are added by OAS. Discount factors (discrete) are computed then from the OAS-added yields. These discount factors are used to discount cash flows (coupons and principal).

### 4.2.3 Z Spread

Z spread is to set the volatility of a model to 0. In the HL case, it is $\delta = 1$. In such a case, there is no uncertainty. Note that the OAS for the $7\%$ straight bond is not impacted as it is only a result of today's yield curve. The OAS remains at 46 basis points.

For the callable bond, the OAS becomes $2.26\%$ and the optionality has no value (since no volatility). This is the same OAS as the $8.5\%$ straight bond.

One may question that if $Z$ spread is the same as static OAS then why would anyone want to build a model for Z spread. The answer lies in technology convenience. Usually a bank will have a large portfolio of bonds, some with and some without optionalities. It is a lot easier to set the volatility to 0 to obtain the static OAS than building a separate system for just static OAS. Also note that the static OAS discussed previously usually is applied to flat yield curve. For non-flat market yield curve, it is a lot easier to just set the volatility to 0.

**Table 4.4: Yields (in %)**

| 0 | 1 | 4.9979 | | | | 5.2545 | 0.9501 | |
|---|---|--------|-|-|-|--------|--------|-|
| | 2 | 5.9998 | | | | 6.2564 | 0.8857 | |
| | 3 | 6.5021 | | | | 6.7587 | 0.8218 | |
| | 4 | 6.8009 | | | | 7.0575 | 0.7613 | |
| 1 | 2 | 14.1453 | 2.7308 | | | 14.4019 | 2.9874 | |
| | 3 | 14.5620 | 3.1058 | | | 14.8185 | 3.3623 | |
| | 4 | 14.8649 | 3.3784 | | | 15.1214 | 3.6349 | |
| 2 | 3 | 22.6455 | 10.3809 | -0.6572 | | 22.9020 | 10.6375 | -0.4006 |
| | 4 | 23.0680 | 10.7612 | -0.3149 | | 23.3246 | 11.0178 | -0.0583 |
| 3 | 4 | 31.7248 | 18.5523 | 6.6971 | -3.9726 | 31.9814 | 18.8089 | 6.9537 |

**Table 4.5: Discount Factors**

| 0 | 1 | 0.950078 | | | | |
|---|---|----------|-|-|-|
| | 2 | 0.885707 | | | | |
| | 3 | 0.821846 | | | | |
| | 4 | 0.761258 | | | | |
| 1 | 2 | 0.874111 | 0.970993 | | | |
| | 3 | 0.758536 | 0.935999 | | | |
| | 4 | 0.655438 | 0.898424 | | | |
| 2 | 3 | 0.813656 | 0.903853 | 1.004022 | | |
| | 4 | 0.657507 | 0.811362 | 1.001168 | | |
| 3 | 4 | 0.757683 | 0.841688 | 0.934984 | 1.038595 | |

## 4.3 LIBOR Spread

LIBOR is introduced in Chapter 2. The LIBOR rates that are quoted are: 1-week, 1-month, 2-month, 3-month, 6-month, and 1-year.

Note that LIBOR are regarded as risk-free rate in this case. However, we know that it is not in that these are lending (offer) rates among commercial banks in London. Nevertheless, for the sake of convenience, they are adopted as risk-free. Another argument (historically only) is that A-rated banks borrow funds at LIBOR and as a result, to those banks, LIBOR is risk-free.

A LIBOR spread refers to corporate bonds that pay floating coupons indexed to LIBOR, that is LIBOR and an added spread, symbolized as $L + s$. As an index for the floating coupons, LIBOR here is commonly referred to as the 3-month LIBOR.

The spread is purely meant as a credit spread, i.e. an extra coupon compensating a default likelihood. This is because upon default, investors will not receive the principal back (known as loss given default, or LGD) and hence at normal times the coupon is a bit higher.

### 4.3.1 Floating Rate Corporate Bond

A floating rate corporate bond, or often called a corporate floater, pays an extra amount over LIBOR as in equation (2.14), which we restate under semi-annual coupons as follows:

$$ 1 = \frac{\left(L_1 + s_0\right) / 2}{\left(1 + \frac{L_1 + s_0}{2}\right)} + \frac{\left(L_2 + s_0\right) / 2}{\left(1 + \frac{L_1 + s_0}{2}\right) \left(1 + \frac{L_2 + s_0}{2}\right)} + \dots + \frac{1 + \left(L_{2n} + s_0\right) / 2}{\prod_{i=1}^{2n} \left(1 + \frac{L_i + s_0}{2}\right)} \tag{4.1} $$

We have explained why this equation is an identity of 1 (par value). Unlike the risk-free floater whose value is always at par on coupon payment dates, corporate floaters will not be. This is because the spread will change as time goes on. For example, after 6 months, the spread will move up or down to $s_1$ and the price will not be at par:

$$ 1 \neq \frac{\left(L_1 + s_0\right) / 2}{\left(1 + \frac{L_1 + s_1}{2}\right)} + \frac{\left(L_2 + s_0\right) / 2}{\left(1 + \frac{L_1 + s_1}{2}\right) \left(1 + \frac{L_2 + s_1}{2}\right)} + \dots + \frac{1 + \left(L_{2n-1} + s_1\right) / 2}{\prod_{i=1}^{2n-1} \left(1 + \frac{L_i + s_1}{2}\right)} \tag{4.2} $$

Obviously, this is because the numerator and the denominator do not match anymore. Unlike fixed rate bonds, floaters do not have known coupons at trade date. As a result, it is not possible to compute the yield. To remedy this problem, industry use forward rates (introduced in Chapter 1) to compute the yield.

The diagram clearly depicts how each future LIBOR can be replaced with the proper forward as follows:

- $L_1 = f(0,1/4,1/2)$
- $L_2 = f(0,3/4,1)$
- $L_{2n} = f\left(0, 2n - \frac{1}{4}, 2n\right)$

$$ P = \frac{\frac{f(0, 1/4, 1/2) + s_0}{2}}{\left(1 + \frac{y}{2}\right)} + \frac{\frac{f(0, 1/2, 3/4) + s_0}{2}}{\left(1 + \frac{y}{2}\right)^2} + \dots + \frac{1 + \frac{f(0, 2n - 1/4, 2n) + s_0}{2}}{\left(1 + \frac{y}{2}\right)^{2n}} \tag{4.3} $$

where $f(t,T_i,T_j)$ is the discrete forward rate between $T_i$ and $T_j$ observed today $t$. See the example: <See Excel>

**Table 4.6: Example ($y = {4.6269}\%$)**

| | LIBOR | fwd rate | coupon | disc fact | PV | disc fact | PV |
|-|-------|----------|--------|-----------|----|-----------|----|
| 0.25 | 1.2408% | 2.6271% | | | | | |
| 0.5 | 1.9340% | | 0.016886 | 0.986758 | 0.016662 | 0.977389 | 0.016504 |
| 0.75 | 2.3394% | 3.4901% | | | | | |
| 1 | 2.6271% | | 0.021201 | 0.967065 | 0.020502 | 0.955289 | 0.020253 |
| 1.25 | 2.8502% | 3.9442% | | | | | |
| 1.5 | 3.0326% | | 0.023471 | 0.945342 | 0.022188 | 0.933688 | 0.021914 |
| 1.75 | 3.1867% | 4.2550% | | | | | |
| 2 | 3.3202% | | 0.025025 | 0.922574 | 0.023087 | 0.912576 | 0.022837 |
| 2.25 | 3.4380% | 4.4916% | | | | | |
| 2.5 | 3.5434% | | 0.026208 | 0.899246 | 0.023568 | 0.891942 | 0.023376 |
| 2.75 | 3.6363% | 4.6025% | | | | | |
| 3 | 3.7168% | | 0.026763 | 0.875876 | 0.023441 | 0.871774 | 0.023331 |
| 3.25 | 3.7849% | 4.5643% | | | | | |
| 3.5 | 3.8406% | | 0.026572 | 0.85312 | 0.022669 | 0.852062 | 0.022641 |
| 3.75 | 3.8839% | 4.3771% | | | | | |
| 4 | 3.9147% | | 1.025635 | 0.831566 | 0.852883 | 0.832795 | 0.854144 |

### 4.3.2 Relationship with CDS

LIBOR spreads are often compared to CDS spreads. If these two securities have the same payment frequency, then it is said that they must be equal to avoid arbitrage.

**Table 4.7: Arbitrage between Corporate Floater and CDS**

| 0 | i | ... | n |
|---|---|-----|---|
| sell risk-free floater | default-(1+a1) | no default-L1 | ... | default-(1+a1) | no default-(1+Ln) |
| buy risky floater | R+a2 | L1+s0 | | R+a2 | 1+Ln+s0 |
| buy CDS | 1-R+a3 | -s0 | | 1-R+a3 | -s0 |
| | 0 | 0 | ... | 0 | 0 |

where $a$ is accrued interest. The analysis shows that if the frequency of CDS is matched with that of corporate, then it must be true that CDS spread and LIBOR spread are same.

However, CDS pays quarterly and corporate floaters pay semi-annually, and hence their spreads are not equal.

## 4.4 Yield Spread

Yield spread is commonly referred to fixed rate corporate bonds. Unlike corporate floaters that are indexed to LIBOR, fixed rate corporate bonds are indexed to Treasuries. As a result, the extra yield in excess to the corresponding Treasury is called the yield spread.

### 4.4.1 Fixed Rate Corporate Bond

Yield spread of a corporate fixed contains credit and liquidity. In this subsection, we discuss the credit part using the Jarrow-Turnbull model and in a later subsection, we discuss the liquidity part using the Chen model. Here, we focus on credit part only. The Jarrow-Turnbull model is described by Figure 4.2.

Each coupon is weighted by the corresponding survival probability $Q(t, T_i)$ and then discounted by the risk-free discount factor $P(t, T_i)$:

![Jarrow-Turnbull Model](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/fbdad77714015aaf9c78afb7312dcd93e3bf426eb3db249bd2c3ad226e03fd1d.jpg)

**Figure 4.2: Jarrow-Turnbull Model**

$$
\begin{array}{l}
\Pi^*(t, \underline{T}; c) = \sum_{i=1}^{2n} \frac{c^{*}}{2} P(t, T_i) Q(t, T_i) + P(t, T_{2n}) Q(t, T_{2n}) \\
+ \sum_{i=1}^{2n} R_i P(t, T_i) [Q(t, T_i) - Q(t, T_{i-1})] \\
\end{array}
$$

where $\Pi^{*}$ and $c^*$ are corporate bond price and coupon rate respectively, and (intensity $\lambda$):

$$ Q(t, T_i) = Q(t, T_{i-1}) e^{-\lambda_i(T_i - T_{i-1})} $$

and then the spread is:

$$ s = y^{*} - y $$

The notation is parallel to that of risk-free but with an asterisk in superscript. The yield of this bond is:

$$\Pi^* = 1 = \sum_{i=1}^{2n} \frac{c^{*} / 2}{(1 + y^{*} / 2)^i} + \frac{1}{(1 + y^{*} / 2)^n}$$

$$\Pi = 1 = \sum_{i=1}^{2n} \frac{c / 2}{(1 + y / 2)^i} + \frac{1}{(1 + y / 2)^n}$$

If the risk-free rate is flat and the default intensity is flat, and recovery is 0, then:

$$P(t, T) = e^{-r(T - t)}$$

$$Q(t, T) = e^{-\lambda(T - t)}$$

and $\lambda$ is the spread.

Take two corporate bonds as an example: one 5-year, $6\%$ (semi-annual $3\%$) and the other 10-year, $7\%$ (semi-annual $3.5\%$). Also assume piece-wise flat $\lambda$ and recovery rate of 0.4. Both bonds are issued at par value. Solve for the two $\lambda$'s as in the following table.

<SeeExcel>

**Table 4.8: Yield Spread**

| A | B | C | D | E | F | G | H | I |
|---|---|---|---|---|---|---|---|---|
| t | P | $\lambda$ | Q | -dQ | c/2 = 3% | rec=0.4 | c/2 = 3.5% | rec=0.4 |
| 0.5 | 0.9753 | 0.0149 | 0.9926 | 0.0074 | 0.029042 | 0.0029 | 0.033882 | 0.0029 |
| 1 | 0.9512 | 0.0149 | 0.9852 | 0.0074 | 0.028114 | 0.0028 | 0.0328 | 0.0028 |
| 1.5 | 0.9277 | 0.0149 | 0.9779 | 0.0073 | 0.027216 | 0.0027 | 0.031752 | 0.0027 |
| 2 | 0.9048 | 0.0149 | 0.9706 | 0.0073 | 0.026347 | 0.0026 | 0.030738 | 0.0026 |
| 2.5 | 0.8825 | 0.0149 | 0.9634 | 0.0072 | 0.025505 | 0.0025 | 0.029756 | 0.0025 |
| 3 | 0.8607 | 0.0149 | 0.9562 | 0.0072 | 0.02469 | 0.0025 | 0.028805 | 0.0025 |
| 3.5 | 0.8395 | 0.0149 | 0.9491 | 0.0071 | 0.023902 | 0.0024 | 0.027885 | 0.0024 |
| 4 | 0.8187 | 0.0149 | 0.9420 | 0.0071 | 0.023138 | 0.0023 | 0.026995 | 0.0023 |
| 4.5 | 0.7985 | 0.0149 | 0.9350 | 0.0070 | 0.022399 | 0.0022 | 0.026132 | 0.0022 |
| 5 | 0.7788 | 0.0149 | 0.9281 | 0.0070 | 0.74447 | 0.0022 | 0.025298 | 0.0022 |
| 5.5 | 0.7596 | 0.0330 | 0.8339 | 0.0942 | | | 0.022168 | 0.0286 |
| 6 | 0.7408 | 0.0330 | 0.8202 | 0.0137 | | | 0.021267 | 0.0040 |
| 6.5 | 0.7225 | 0.0330 | 0.8068 | 0.0134 | | | 0.020385 | 0.0039 |

Column F is the coupon present value (including principal) and column E is recovery value. The total is $100\%$. Similarly, columns H and I are survival and recovery values respectively and also sum to $100\%$. Hence $\lambda = 0.0149$ and $\lambda = 0.0330$ are the two intensity values in the Poisson process.

Note that as default likelihoods go up, the survival value goes down but the recovery value goes up. Hence there is a tradeoff between the two values. See Figure 4.3. The net result is going down. This is because the sensitivity of the survival value with respect to intensity is higher than that of the default value.

The yields of the two bonds are $6\%$ and $7\%$ respectively because they are both priced at par (otherwise, we need to solve for the yields using the semi-annual formula in Chapter 1). And hence the yield spreads are $1\%$ and $2\%$ respectively.

![Survival and Recovery](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/7d6d57008c6e605e2c416cb77d8a4eff936413e5b89a7ed15c300cf9bf8fdf4c.jpg)

**Figure 4.3: Survival and Recovery (Default) Value**

### 4.4.2 Par Spread

The above example is par spread since the bonds are evaluated at issuance so at par. On any trading day, bond prices are above (premium) or below (discount) par. And we need to use yearfraction to discount.

<SeeExcel>

Say in two months the prices of the two bonds drop to 0.98 and 0.95 respectively. Assume no change in the risk-free rate and hence these changes are due to worsening credit of the company.

In this example, the spread is not a par spread. However, market participants would like to know where the market stands and par spread is the only way to see that. But if there is no new issuance, then we need to recreate a "fake" par bond in order to compute the par spread.

To do that, we need to artificially reduce or raise the coupon (which is equal to yield as we are solving for a par bond), till the bond price is at par. Then the difference between this artificial yield and the par risk-free yield is the par spread.

The results are $4.8775\%$ and $9.8352\%$ for the 5-year and 1-year bonds respectively.

### 4.4.3 Spread Duration and Spread 01

Spread duration can be defined the same way as interest rate duration introduced in Chapter 3 as:

**Table 4.9: Par Spread Example**

| t | P | lam | Q | -dQ | 0.06 | 0.4 | 0.07 | 0.4 |
|---|----|-------|--------|--------|--------|--------|--------|--------|
| 0.333333 | 0.9835 | 0.0269 | 0.9911 | 0.0089 | 0.029241 | 0.0035 | 0.034115 | 0.0035 |
| 0.833333 | 0.9592 | 0.0269 | 0.9779 | 0.0132 | 0.028138 | 0.0051 | 0.032828 | 0.0051 |
| 1.333333 | 0.9355 | 0.0269 | 0.9648 | 0.0131 | 0.027077 | 0.0049 | 0.03159 | 0.0049 |
| 1.833333 | 0.9124 | 0.0269 | 0.9519 | 0.0129 | 0.026056 | 0.0047 | 0.030399 | 0.0047 |
| 2.333333 | 0.8899 | 0.0269 | 0.9392 | 0.0127 | 0.025074 | 0.0045 | 0.029253 | 0.0045 |
| 2.833333 | 0.8679 | 0.0269 | 0.9267 | 0.0125 | 0.024128 | 0.0044 | 0.02815 | 0.0044 |
| 3.333333 | 0.8465 | 0.0269 | 0.9143 | 0.0124 | 0.023219 | 0.0042 | 0.027088 | 0.0042 |
| 3.833333 | 0.8256 | 0.0269 | 0.9021 | 0.0122 | 0.022343 | 0.0040 | 0.026067 | 0.0040 |
| 4.333333 | 0.8052 | 0.0269 | 0.8901 | 0.0120 | 0.021501 | 0.0039 | 0.025084 | 0.0039 |
| 4.833333 | 0.7853 | 0.0269 | 0.8782 | 0.0119 | 0.710354 | 0.0037 | 0.024138 | 0.0037 |
| 5.333333 | 0.7659 | 0.0754 | 0.8457 | 0.0325 | | | 0.022671 | 0.0100 |
| 5.833333 | 0.7470 | 0.0754 | 0.8144 | 0.0313 | | | 0.021293 | 0.0094 |
| 6.333333 | 0.7286 | 0.0754 | 0.7842 | 0.0301 | | | 0.0...

$$\Pi^* = \sum_{i=1}^{2n} \frac{C_i}{(1 + \frac{y + s_0}{2})^i}$$

$$D^* = - \frac{d\Pi^{*}}{ds} \frac{1}{\Pi^{*}} = \frac{1}{\Pi^{*}} \frac{1}{2(1 + \frac{y + s_0}{2})} \sum_{i=1}^{2n} i \frac{c_i}{(1 + \frac{y + s_0}{2})^i}$$

Hence, it is extremely similar to the duration of the interest rate. This indicates that the risk of a corporate bond with respect to its spread is just the same as to its yield. We can verify this via the differentiation method.

The spread 01 is similar to the DV01 in interest rate. We can perturb only one spread in the market or the entire spread curve. Again, the magnitudes are similar to the DV01s in interest rate.

### 4.4.4 Spread Convexity and Spread 10/Spread 25

Often banks compute large shocks in the spread. This is to design to capture some convexity effect. This is because gammas often times are difficult to compute, especially in a complex portfolio. This is also seen when vega is used to replace gamma.

It captures 1 to $2\%$ in addition to duration. However, large shock sizes can be problematic in situations where spreads are small (then 25 basis shocks will lead to negative spreads).

## 4.5 Liquidity Spread

### 4.5.1 Bid/Ask Spread

The most known liquidity spread is the bid-ask (or bid-offer) spread. Market makers (especially in OTC markets) provide liquidity (help transactions) to the market and then charge b/a spreads as their profit. The higher is the liquidity in the market (i.e. stiffer competition), the narrower is the b/a spread.

Unfortunately, OTC markets consist of mostly a handful institution traders and they buy and sell in large quantities. Also note that many fixed income securities have large denominations. Hence, the b/a spreads are always wide.

The dealer's revenue comes from investors who are willing to pay $K_a - S$ or $S - K_b$ as a price for immediacy where $S$ is the true (informed) price, $K_a$ and $K_b$ are ask and bid.

The objective of a dealer is to choose the b/a spread which maximizes his/er expected profit:

$$\max p \mathbb{E}[\max\{K_a - S, 0\}] + (1 - p) \mathbb{E}[\max\{S - K_b, 0\}]$$

where $p$ is the percentage of investors who seek to buy and $1 - p$ is the percentage of investors who seek to sell. The former is a put option and the latter is a call option.

An order flow is given in the following example:

In this example, we can see both the sell orders and the buy orders arranged in the order of their prices. The buy orders are arranged in a decreasing order and the sell orders are arranged in an increasing order. It is seen that in the top of the table the two order flows intersect. However, the sell order indicates 59,100 shares and yet the buy order wants a lot more (134,084 shares). This would force the market maker to move a bit in order to accommodate a trade.

Here is another example from the CDS market (taken from Chen, Fabozzi, and Sverdlove). In Table 4.10, we can see on average how bid and ask quotes differ in the CDS market. The data are broken down by credit ratings - AAA, AA, A, BBB, and BB and two business sectors (financial and industrial). The total number of observations in their dataset is 9316. The left column of each sector is the liquidity spread estimated with only the hazard factor and the right column is estimated with both the hazard and liquidity factors.

![Order Flow](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/b1234f239669ef9490cd52197587a09258be703a4eb91746ca1b8c6d0dd45ded.jpg)

**Figure 4.4: Order Flow**

**Table 4.10: Percentage difference between Mid-implied and Ask-implied Liquidity Spreads**

| | **FIN** | | **INDU** | | **Total** | |
|-|--------|-|----------|-|-----------|-|
| **AAA** | 2.67% | -0.24% | 0.77% | -0.13% | 1.54% | -0.18% |
| | 164 | | 240 | | 404 | |
| **AA** | 1.18% | -0.20% | 13.49% | -0.31% | 8.66% | -0.28% |
| | 195 | | 386 | | 581 | |
| **A** | 5.09% | -0.06% | 8.31% | -0.43% | 6.96% | -0.27% |
| | 2182 | | 3435 | | 5617 | |
| **BBB** | 2.82% | -0.24% | 3.87% | -0.10% | 3.78% | -0.11% |
| | 191 | | 2022 | | 2213 | |
| **BB** | 0.32% | -0.25% | 2.67% | 0.09% | 1.04% | 0.22% |
| | 181 | | 144 | | 325 | |
| **Total** | 4.21% | -0.07% | 6.69% | -0.29% | 5.75% | -0.21% |
| | 2913 | | 6261 | | 9316 | |

### 4.5.2 Liquidity Gap

This is analogous to the b/a spread analysis. Lack of demand will bring the price down and lack of supply will bring the price up. A former model is provided by Chen (2014).

![Demand Squeeze](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/1823f8c725419d57ba42b95ef4ac21c22c1e2d625b5a61431fa7dcb7ada1f39e.jpg)

**Figure 4.5: Demand Squeeze**

$$
\begin{array}{l}
X^*(t) = e^{-r(T - t)} \left\{K N(-h_{-}) - V(t) e^{\mu(T - t)} N(-h_{+}) - \frac{e^{\mu(T - t)} - e^{r(T - t)}}{e^{\mu(T - t)} \left(e^{\sigma^2(T - t)} - 1\right)} \times \right. \\
\frac{e^{\mu(T - t)}}{\left(e^{\mu^2(T - t)}\right)} \left\{K [N(h_{-}) - N(h_{+})] + V(t) e^{\mu(T - t)} \left[ N(-h_{+}) - e^{\sigma^2(T - t)} N(-h_{+} - \sigma \sqrt{T - t}) \right] \right\} \\
\end{array}
$$

where

$$ h_{\pm} = \frac{\ln V(t) - \ln K + (\mu \pm 1/2 \sigma^2)(T - t)}{\sigma \sqrt{T - t}} $$

To compare, we present the liquid price (put option) as follows:

$$ X(t) = K e^{-r(T - t)} N(-d_{-}) - V(t) N(-d_{+}) $$

where

$$ d_{\pm} = \frac{\ln V(t) - \ln K + (r \pm 1/2 \sigma^2)(T - t)}{\sigma \sqrt{T - t}} $$

## 4.6 Discount Margin

**Investopedia:**

![Liquidity Discount](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/880bdc12fd6d89d1f47832a04d67c12a290040915ea02fec797d0e590b807212.jpg)

**Figure 4.6: Liquidity Discount**

> "A discount margin (DM) is the average expected return of a floating-rate security (typically a bond) that's earned in addition to the index underlying, or reference rate of, the security. The size of the discount margin depends on the price of the floating- or variable-rate security. The return of floating-rate securities changes over time, so the discount margin is an estimate based on the security's expected pattern between issue and maturity.
> 
> Another way to view the discount margin is to think of it as the spread that, when added to the bond's current reference rate, will equate the bond's cash flows to its current price."

As we have learned in Chapter 2, "bonds and other securities with variable interest rates are usually priced close to their par value. This is because the interest rate (coupon) on a variable rate bond adjusts to current interest rates based on changes in the bond's reference rate."

"The discount margin is one of the most common calculations: It estimates the security's spread above the reference index that equates the present value of all expected future cash flows to the current market price of the floating rate note.

There are three basic situations involving a discount margin:

- If the price of floating rate security, or floater, is equal to par, the investor's discount margin would be equal to the reset margin.
- Due to the tendency for bond prices to converge to par as the bond reaches maturity, the investor can make an additional return over the reset margin if the floating rate bond was priced at a discount. The additional return plus the reset margin equals the discount margin.
- Should the floating rate bond be priced above par, the discount margin would equal the reference rate less the reduced earnings."

From the above description of Investopedia, it is clear that DM is very close to LIBOR spread as LIBOR is a common benchmark for floating rate fixed income securities. Yet, it is not limited to LIBOR but any reference benchmark index interest rate.

Again from Investopedia:

"The discount margin formula is a complicated equation that takes into account the time value of money and typically needs a financial spreadsheet or calculator to calculate accurately. There are seven variables involved in the formula. They are:

$P =$ the floating rate note's price plus any accrued interest

$c(i) =$ the cash flow received at the end of time period $i$ (include principal in period $n$)

$I(i) =$ the assumed index level at time period i

$I(1) =$ the current index level

$d(i) =$ number of actual days in period $i$, assuming the A/360-day count convention $d(s) =$ number of days from the start of the time period until settlement date

$\mathrm{DM} =$ the discount margin, the variable to solve for

All coupon payments are unknown, with the exception of the first, and must be estimated in order to calculate the discount margin. The formula, which must be solved by iteration to find DM, is as follows:

The current price, $P$, equals the summation of the following fraction for all time periods from the beginning time period to maturity:

$$ P = \sum_{i=1}^{n} \frac{c(i)}{\left(1 + \frac{I(1) + \mathrm{DM}}{100} \frac{d(1) - d(s)}{360}\right) \prod_{j=2}^{i} \left(1 + \frac{I(j) + \mathrm{DM}}{100} \frac{d(j)}{360}\right)}, $$

It is easily seen that if $I(i) = L(i)$ which is LIBOR, then $c(i)$ could be $(L(i) + s_0) \times 100$ and DM is very close to $s_0$ which is LIBOR spread at current time 0.

## 4.7 Basis

Basis can be regarded as a spread, although it is mostly caused by market imperfections. Since such bases exist and they directly impact P&L's, they must be understood (modeled) and managed.

### 4.7.1 Futures Basis

Futures basis is the difference between two futures prices with different maturities. The following is an example from CME. There are three maturities in the example. Because futures prices will converge to the spot price at the maturity, it is quite popular for futures traders to speculate on the changes in spot.

![Treasury Bond Futures](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/866650be53dca62cd2a73bc1f810d9b7c6960b9da0f06ad4dc602f3de6a4a01f.jpg)

**Figure 4.7: Treasury Bond Futures (CME)**

### 4.7.2 FX Basis

There are two meanings to FX basis, depending on which market you are in. The first basis is the discrepancy between market quotes and the curve. The other basis is the interest rate differential between two countries, e.g. LIBOR and T bills. This market is usually floating-floating interest rate swap.

### 4.7.3 CDS - Bond Yield Basis

This refers to the difference between bond yield spread and its corresponding CDS spread. Many believe that the major source of the difference is liquidity. Yet market infrastructure has a substantial influence.

**Table 4.11: CDS Spread as a Percentage of Bond Yield**

| | **FIN** | | **INDU** | | **Total** | |
|-|--------|-|----------|-|-----------|-|
| **AAA** | 20.85% | 24.31% | 5.68% | 10.49% | 11.84% | 16.10% |
| | 164 | | 240 | | 404 | |
| **AA** | 16.66% | 19.84% | 14.44% | 20.30% | 15.18% | 20.15% |
| | 195 | | 386 | | 581 | |
| **A** | 27.60% | 36.72% | 28.18% | 35.69% | 27.95% | 36.09% |
| | 2182 | | 3435 | | 5617 | |
| **BBB** | 35.60% | 47.98% | 58.68% | 136.37% | 56.69% | 128.74% |
| | 191 | | 2022 | | 2213 | |
| **BB** | 83.20% | 98.68% | 53.88% | 70.55% | 70.21% | 86.22% |
| | 181 | | 144 | | 325 | |
| **Total** | 30.46% | 39.48% | 37.46% | 67.78% | 34.70% | 57.90% |
| | 2913 | | 6261 | | 9316 | |

### 4.7.4 LIBOR basis

LIBOR basis swaps are swaps of one LIBOR maturity for another LIBOR maturity with a spread added to one of the LIBOR's. One leg of the swap is the 3M LIBOR index rate and the other leg is another LIBOR rate (1M, 6M, or 12M). These basis swaps are used to build LIBOR forward curves for 1M, 6M, and 12M.

### 4.7.5 LIBOR Treasury Basis

LIBOR is traditionally empirically higher than Treasury rates.

### 4.7.6 LIBOR OIS Basis

Due to LIBOR scandal, the industry has moved to OIS discounting (see Chapter 2). To build the OIS curve, one needs information from LIBOR-OIS basis swaps.

## 4.8 Gamma and Vega

Finally, we review the related risk measures to convexity. As we know, convexity is similar to gamma which is second order differentiation with respect to the underlying asset, and hence the similarity is obvious. Vega is the first order differentiation with respect to the volatility of the underlying asset. How on earth vega is related to convexity?

Lets look at the Taylor's series expansion of equation (3.1) in Chapter 3:

$$ dP = \frac{\partial P}{\partial \underline{y}} d\underline{y} + \frac{\partial^2 P}{\partial \underline{y}^2} d\underline{y}^2 + \frac{\partial P}{\partial \underline{v}} d\underline{v} + \frac{\partial P}{\partial t} dt + o(dt) $$

where $\underline{y}$ represents the whole yield curve (i.e. vector of yields) and $\underline{v}$ represents the whole volatility curve. The first term is clearly the effective duration (i.e. price impact on whole yield curve shift). The second term is the convexity on the whole yield curve. The last term is the vega which the price impact of the volatility curve shift.

In the fixed income world, the P&L is explained by four major factors: delta, gamma, vega, and theta. Note that theta is not a random effect. It is completely deterministic and known as the roll down effect (introduced in Chapter 2). Delta is similar to duration and is kept neutral when trading. Gamma and vega are similar to convexity that need to be maximized (see immunization in Chapter 3).

### 4.8.1 Supplementary Effect

Theoretically speaking, vega is the first order risk $(\partial V / \partial \sigma)$ but since the volatility is not a traded asset, and also the only way to retrieve the market volatility information is through options, it is regarded as the second order risk, similar to gamma. Hence, often it is used to replace gamma.

But vega is much easier to compute since it is technically a first order differentiation.

### 4.8.2 Complementary Effect

After all, vega and gamma are not the same. Indeed one is convexity on the underlying asset and the other is the volatility sensitivity of the underlying asset. Theoretically, gamma is caused by the distribution of the underlying asset of a chosen maturity and vega is caused by either jumps (short term) or volatility being random over time (long term).

If a model is accurate, then the two cannot substitute each other as described in the previous subsection.
---
title: Chapter 4 - Spreads
parent_directory: Analysis
formatted: 2025-12-21 10:00:00 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - credit spreads
  - option adjusted spreads
  - yield spreads
  - liquidity spreads
secondary_tags:
  - static OAS
  - z spread
  - libor spreads
  - floating rate corporate bonds
  - cds spreads
  - jarrow-turnbull model
  - spread duration
  - discount margin
  - futures basis
  - fx basis
  - cds bond basis
  - gamma and vega
formatted: 2025-12-21 11:00:00 AM
cssclasses: academia
---

# Chapter 4 - Spreads

## 4.1 Introduction

Spreads carry important information about risks of securities. There are many reasons to cause a spread. The most popular one is credit spread which refers to likelihoods of default. Besides default, other reasons include liquidity, noise trading, market segmentation, among numerous others.

A spread could be used to explain a particular source of risk, such as credit or liquidity. It could also be used to explain market imperfections such as noise trading and market segmentation.

## 4.2 Option Adjusted Spread (OAS)

OAS has a very long history in the fixed income markets. In the early days, it was regarded as a credit spread (i.e. default likelihood). Over time, as the markets grew more sophisticated, people realized that credit spreads can be separately evaluated and regarded OAS as the value of various optionalities embedded in fixed income securities. Then as more and more models can price optionalities accurately, OAS has become a trading index signaling profit potentials.

# 4.2.1 Static OAS

Given that OAS is the most ancient spread, we begin our chapter with OAS. Our first example is a static OAS. Assume a 5-year corporate bond that pays $4\%$ coupon (semi-annual) with 100 face value. The corporate bond is priced at par (assuming at issuance).

The zero curve has been bootstrapped out to be the following table:

<table><tr><td>t</td><td>zero rate</td></tr><tr><td>1</td><td>1.2408\%</td></tr><tr><td>2</td><td>1.9340\%</td></tr><tr><td>3</td><td>2.3394\%</td></tr><tr><td>4</td><td>2.6271\%</td></tr><tr><td>5</td><td>2.8502\%</td></tr><tr><td>6</td><td>3.0326\%</td></tr><tr><td>7</td><td>3.1867\%</td></tr><tr><td>8</td><td>3.3202\%</td></tr><tr><td>9</td><td>3.4380\%</td></tr><tr><td>10</td><td>3.5434\%</td></tr></table>

Table 4.1: Zero Curve

A benchmark 5-year Treasury issue is paying $3.5\%$ and is priced at par:

$$
\begin{array}{l} 100 = \sum_{i=1}^{10} \frac{c_{i}}{(1 + r_{i})^{i}} \\ = \frac{1.75}{(1 + 1.2408\% / 2)} + \frac{1.75}{(1 + 1.9340\% / 2)^{2}} + \dots + \frac{101.75}{(1 + 3.5434\% / 2)^{10}} \\ \end{array}
$$

This is reasonable as Treasuries do not suffer default risk and hence their coupons should be less than the corresponding corporate bonds. The OAS of the corporate bond can be computed as:

$$
\begin{array}{l} 100 = \sum_{i=1}^{10} \frac{c_{i}}{(1 + (r_{i} + s)/2)^{i}} \\ = \frac{2}{(1 + (1.2408\% + s)/2)} + \frac{2}{(1 + (1.9340\% + s)/2)^{2}} + \dots + \frac{102}{(1 + (3.5434\% + s)/2)^{10}} \\ \end{array}
$$ and then we can solve for the spread as $0.5062\%$, or 50.62 basis points.


The second static example is embedded optionality. For example, some Treasury bonds (longer than 10 years to maturity) can be called. And hence for these callable Treasuries, they must offer higher coupons. As a result, the analysis is identical to that of the corporate bond. Using the same example and assume a callable Treasury pays a $4\%$ coupon, we can calculate the OAS to be 50.62 basis points.

As we can see now, static OAS is just to fill the gap between the zero Treasury yield curve and price of the target bond. It does not distinguish where the spread comes from - either it is a credit risk or a call option.

We should note that it is possible for OAS to be negative. For example, an embedded put option can generate a negative OAS.

Finally, we should note that today's OAS is different from what is discussed here. Today's OAS is computed after considering all possible optionalities (e.g. put and call) and risks (e.g. credit and liquidity). Apparently these optionalities and risks must be evaluated via models. Hence, today's OAS is a trading indicator. In other words, after considering all optionalities and risks, if there is a positive OAS, then it indicates that the bond is too cheap (buy indication). Otherwise (a negative OAS), then the bond is too expensive (sell (or short-sell) indication.

### 4.2.2 With Model

We use the Ho-Lee model for interest rate risk, Jarrow-Turnbull model for credit, and Chen model for liquidity. These models are reviewed in Chapter ??. For those who are not familiar with these models, please review Chapter ?? first.

< See Excel >.

Our example is a callable Treasury. A 3-year, 7\% coupon bond is priced at \100.25 (no accrued interest so the quoted price is 100:08). In this case, we can calculate the OAS. This OAS is a static one that can be easily computed off today's yield curve, as follows:

<table><tr><td>yield</td><td>yld + spd</td><td>disc fact</td><td>PV</td></tr><tr><td>4.9979\%</td><td>5.4582\%</td><td>0.9482</td><td>6.6377</td></tr><tr><td>5.9998\%</td><td>6.4601\%</td><td>0.8823</td><td>6.1762</td></tr><tr><td>6.5021\%</td><td>6.9624\%</td><td>0.8172</td><td>87.4361</td></tr></table>

Table 4.2: Ho-Lee Model (yield curve)

The spread can be solved to be  $0.4603\%$  (or 46 basis points). As this spread is added to the yields, the sum of PVs will be precisely 100.25.


Note that in this case the OAS reflects only liquidity and trading noise – which is regarded as a trading opportunity. If the OAS is positive, then the bond is underpriced and it is a good buy. Reversely, if the OAS is negative, then the bond is a good sell.

A 3-year callable bond pays an 8.5\% coupon (it must be higher than the straight bond in order to compensate the call option) and is priced at \$99.5 (no accrued interest). The first call date is at year 2 (so only year 2 and year 3 can be called) and the call price is \$108.

<table><tr><td>0</td><td>1</td><td>105.3494</td><td></td><td></td><td></td><td>99.5</td><td></td><td></td></tr><tr><td>1</td><td>2</td><td>98.5471</td><td>118.7408</td><td></td><td></td><td>98.5471</td><td>108.5</td><td></td></tr><tr><td>2</td><td>3</td><td>96.9331</td><td>106.7549</td><td>117.6670</td><td></td><td>96.9331</td><td>106.7549</td><td>108.5</td></tr><tr><td>3</td><td>4</td><td>108.5</td><td>108.5</td><td>108.5</td><td>108.5</td><td></td><td></td><td></td></tr></table>

Table 4.3: Ho-Lee Model

The OAS solved is  $0.0462\%$  (or 4.62 basis points). As emphasized before, this OAS is in addition to the call option value. We can see the comparable  $8\%$  straight bond has a value of \$105.35 under the same OAS. Hence the option value is \$ 5.85. In other words, for the callable bond selling at 99.5, it contains an OAS of 25.66 bps and also an option value of 5.85.

The following table (Table 4.4) presents the calculations of the yields with and without OAS. The left panel contains yields directly from the HL model. The right panel are added by OAS. Discount factors (discrete) are computed then from the OAS-added yields. These discount factors are used to discount cash flows (coupons and principal).

# 4.2.3 Z Spread

Z spread is to set the volatility of a model to 0. In the HL case, it is  $\delta = 1$ . In such a case, there is no uncertainty. Note that the OAS for the  $7\%$  straight bond is not impacted as it is only a result of today's yield curve. The OAS remains at 46 basis points.

For the callable bond, the OAS becomes  $2.26\%$  and the optionality has no value (since no volatility). This is the same OAS as the  $8.5\%$  straight bond.

One may question that if Z spread is the same as static OAS then why would anyone want to build a model for Z spread. The answer lies in technology convenience. Usually a bank will have a large portfolio of bonds, some with and some without optionalities. It is a lot easier to set the volatility to 0 to obtain the static OAS than building a separate system for just static OAS. Also note that the static OAS discussed previously usually is applied to flat yield curve. For non-flat market yield curve, it is a lot easier to just set the volatility to 0.

Table 4.5: Discount Factors


## 4.3 LIBOR Spread

LIBOR is introduced in Chapter 2. The LIBOR rates that are quoted are: 1-week, 1-month, 2-month, 3-month, 6-month, and 1-year.

Note that LIBOR is regarded as a risk-free rate in this case. However, we know that it is not in that these are lending (offer) rates among commercial banks in London. Nevertheless, for the sake of convenience, they are adopted as risk-free. Another argument (historically only) is that A-rated banks borrow funds at LIBOR and as a result to those banks, LIBOR is risk-free.

A LIBOR spread refers to corporate bonds that pay floating coupons indexed to LIBOR, that is LIBOR and an added spread, symbolized as  $L + s$ . As an index for the floating coupons, LIBOR here is commonly referred to as the 3-month LIBOR.

The spread is purely meant as a credit spread, i.e. an extra coupon compensating a default likelihood. This is because upon default, investors will not receive the principal back (known as loss given default, or LGD) and hence at normal times the coupon is a bit higher.

### 4.3.1 Floating Rate Corporate Bond

A floating rate corporate bond, or often called a corporate floater, pays an extra amount over LIBOR as in equation (2.14), which we restate under semi-annual coupons as follows:

$$

1 = \frac{\left(L_{1} + s_{0}\right) / 2}{\left(1 + \frac{L_{1} + s_{0}}{2}\right)} + \frac{\left(L_{2} + s_{0}\right) / 2}{\left(1 + \frac{L_{1} + s_{0}}{2}\right) \left(1 + \frac{L_{2} + s_{0}}{2}\right)} + \dots + \frac{1 + \left(L_{2 n} + s_{0}\right) / 2}{\prod_{i = 1}^{2 n} \left(1 + \frac{L_{i} + s_{0}}{2}\right)} \tag {4.1}

$$

We have explained why this equation is an identity of 1 (par value). Unlike the risk-free floater whose value is always at par on coupon payment dates, corporate floaters will not be. This is because the spread will change as time goes on. For example, after 6 months, the spread will move up or down to  $s_1$  and the price will not be at par:

$$

1 \neq \frac{\left(L_{1} + s_{0}\right) / 2}{\left(1 + \frac{L_{1} + s_{1}}{2}\right)} + \frac{\left(L_{2} + s_{0}\right) / 2}{\left(1 + \frac{L_{1} + s_{1}}{2}\right) \left(1 + \frac{L_{2} + s_{1}}{2}\right)} + \dots + \frac{1 + \left(L_{2 n - 1} + s_{1}\right) / 2}{\prod_{i = 1}^{2 n - 1} \left(1 + \frac{L_{i} + s_{1}}{2}\right)} \tag {4.2}

$$

Obviously, this is because the numerator and the denominator do not match anymore. Unlike fixed rate bonds, floaters do not have known coupons at trade date. As a result, it is not possible to compute the yield. To remedy this problem, industry uses forward rates (introduced in Chapter 1) to compute the yield.

The diagram clearly depicts how each future LIBOR can be replaced with the proper forward as follows:

$L_{1} = f(0,1 / 4,1 / 2)$
$L_{2} = f(0,3/4,1)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/8698b153db27dc4371cbdac7ee687be05aa8fd13ea666877048f46cb811e96ef.jpg)
Figure 4.1: Corporate Floater Example

$$

\bullet L_{2n} = f\left(0, 2n - 1/4, 2n\right)

$$

$$

P = \frac{\frac{f(0, 1/4, 1/2) + s_{0}}{2}}{\left(1 + \frac{y}{2}\right)} + \frac{\frac{f(0, 1/2, 3/4) + s_{0}}{2}}{\left(1 + \frac{y}{2}\right)^{2}} + \dots + \frac{1 + \frac{f(0, 2n - 1/4, 2n) + s_{0}}{2}}{\left(1 + \frac{y}{2}\right)^{2n}} \tag{4.3}

$$ where  $f(t,T_i,T_j)$  is the discrete forward rate between  $T_{i}$  and  $T_{j}$  observed today  $t$ . See the example: <See Excel>

<table><tr><td></td><td>LIBOR</td><td>fwd rate</td><td>coupon</td><td>disc fact</td><td>PV</td><td>disc fact</td><td>PV</td></tr><tr><td>0.25</td><td>1.2408\%</td><td>2.6271\%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>0.5</td><td>1.9340\%</td><td></td><td>0.016886</td><td>0.986758</td><td>0.016662</td><td>0.977389</td><td>0.016504</td></tr><tr><td>0.75</td><td>2.3394\%</td><td>3.4901\%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td>2.6271\%</td><td></td><td>0.021201</td><td>0.967065</td><td>0.020502</td><td>0.955289</td><td>0.020253</td></tr><tr><td>1.25</td><td>2.8502\%</td><td>3.9442\%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1.5</td><td>3.0326\%</td><td></td><td>0.023471</td><td>0.945342</td><td>0.022188</td><td>0.933688</td><td>0.021914</td></tr><tr><td>1.75</td><td>3.1867\%</td><td>4.2550\%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>3.3202\%</td><td></td><td>0.025025</td><td>0.922574</td><td>0.023087</td><td>0.912576</td><td>0.022837</td></tr><tr><td>2.25</td><td>3.4380\%</td><td>4.4916\%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2.5</td><td>3.5434\%</td><td></td><td>0.026208</td><td>0.899246</td><td>0.023568</td><td>0.891942</td><td>0.023376</td></tr><tr><td>2.75</td><td>3.6363\%</td><td>4.6025\%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>3.7168\%</td><td></td><td>0.026763</td><td>0.875876</td><td>0.023441</td><td>0.871774</td><td>0.023331</td></tr><tr><td>3.25</td><td>3.7849\%</td><td>4.5643\%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3.5</td><td>3.8406\%</td><td></td><td>0.026572</td><td>0.85312</td><td>0.022669</td><td>0.852062</td><td>0.022641</td></tr><tr><td>3.75</td><td>3.8839\%</td><td>4.3771\%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>3.9147\%</td><td></td><td>1.025635</td><td>0.831566</td><td>0.852883</td><td>0.832795</td><td>0.854144</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>1.005000</td><td></td><td>1.005000</td></tr></table>

Table 4.6: Example ($y = 4.6269\%$)

### 4.3.2 Relationship with CDS

LIBOR spreads are often compared to CDS spreads. If these two securities have the same payment frequency, then it is said that they must be equal to avoid arbitrage.

<table><tr><td>0</td><td colspan="2">i</td><td>…</td><td colspan="2">n</td></tr><tr><td>sell risk-free floater</td><td>default-(1+a1)</td><td>no default-L1</td><td>…</td><td>default-(1+a1)</td><td>no default-(1+Ln)</td></tr><tr><td>buy risky floater</td><td>R+a2</td><td>L1+s0</td><td></td><td>R+a2</td><td>1+Ln+s0</td></tr><tr><td>buy CDS</td><td>1-R+a3</td><td>-s0</td><td></td><td>1-R+a3</td><td>-s0</td></tr><tr><td></td><td>0</td><td>0</td><td>…</td><td>0</td><td>0</td></tr></table> where  $a$  is accrued interest. The analysis shows that if the frequency of CDS is matched with that of corporate, then it must be true that CDS spread and LIBOR spread are the same.

Table 4.7: Arbitrage between Corporate Floater and CDS

However, CDS pays quarterly and corporate floaters pay semi-annually, and hence their spreads are not equal.

## 4.4 Yield Spread

Yield spread is commonly referred to as fixed rate corporate bonds. Unlike corporate floaters that are indexed to LIBOR, fixed rate corporate bonds are indexed to Treasuries. As a result, the extra yield in excess to the corresponding Treasury is called the yield spread.

### 4.4.1 Fixed Rate Corporate Bond

Yield spread of a fixed-rate corporate bond contains credit and liquidity. In this subsection, we discuss the credit part using the Jarrow-Turnbull model and in a later subsection, we discuss the liquidity part using the Chen model. Here, we focus on credit part only. The Jarrow-Turnbull model is described by Figure 4.2.

Each coupon is weighted by the corresponding survival probability  $Q(t, T_i)$  and then discounted by the risk-free discount factor  $P(t, T_i)$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/fbdad77714015aaf9c78afb7312dcd93e3bf426eb3db249bd2c3ad226e03fd1d.jpg)

Figure 4.2: Jarrow-Turnbull Model

$$
\begin{array}{l} \Pi^{*}(t, \underline{T}; c) = \sum_{i=1}^{2n} \frac{c^{*}}{2} P(t, T_{i}) Q(t, T_{i}) + P(t, T_{2n}) Q(t, T_{2n}) \\ + \sum_{i=1}^{2n} R_{i} P(t, T_{i}) [ Q(t, T_{i}) - Q(t, T_{i-1}) ] \\ \end{array}
$$ where  $\Pi^{*}$  and  $c^*$  are corporate bond price and coupon rate respectively, and (intensity  $\lambda$ ):


$$

Q(t, T_{i}) = Q(t, T_{i-1}) e^{-\lambda_{i} (T_{i} - T_{i-1})}

$$ and then the spread is:


$$ s = y^{*} - y
$$

The notation is parallel to that of risk-free but with an asterisk in superscript. The yield of this bond is:

$$
\Pi^{*} = 1 = \sum_{i=1}^{2n} \frac{c^{*}/2}{(1 + y^{*}/2)^{i}} + \frac{1}{(1 + y^{*}/2)^{n}}
$$

$$
\Pi = 1 = \sum_{i=1}^{2n} \frac{c/2}{(1 + y/2)^{i}} + \frac{1}{(1 + y/2)^{n}}
$$

If the risk-free rate is flat and the default intensity is flat, and recovery is 0, then:

$$
P(t, T) = e^{-r (T - t)}
$$

$$
Q(t, T) = e^{-\lambda (T - t)}
$$ and  $\lambda$  is the spread.


Take two corporate bonds as an example: one 5-year, $6\%$ (semi-annual $3\%$) and the other 10-year, $7\%$ (semi-annual $3.5\%$). Also assume piecewise flat $\lambda$ and recovery rate of 0.4. Both bonds are issued at par value. Solve for the two $\lambda$'s as in the following table.

<SeeExcel>

<table><tr><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td></tr><tr><td>t</td><td>P</td><td>λ</td><td>Q</td><td>-dQ</td><td>c/2 = 3\%</td><td>rec=0.4</td><td>c/2 = 3.5\%</td><td>rec=0.4</td></tr><tr><td>0.5</td><td>0.9753</td><td>0.0149</td><td>0.9926</td><td>0.0074</td><td>0.029042</td><td>0.0029</td><td>0.033882</td><td>0.0029</td></tr><tr><td>1</td><td>0.9512</td><td>0.0149</td><td>0.9852</td><td>0.0074</td><td>0.028114</td><td>0.0028</td><td>0.0328</td><td>0.0028</td></tr><tr><td>1.5</td><td>0.9277</td><td>0.0149</td><td>0.9779</td><td>0.0073</td><td>0.027216</td><td>0.0027</td><td>0.031752</td><td>0.0027</td></tr><tr><td>2</td><td>0.9048</td><td>0.0149</td><td>0.9706</td><td>0.0073</td><td>0.026347</td><td>0.0026</td><td>0.030738</td><td>0.0026</td></tr><tr><td>2.5</td><td>0.8825</td><td>0.0149</td><td>0.9634</td><td>0.0072</td><td>0.025505</td><td>0.0025</td><td>0.029756</td><td>0.0025</td></tr><tr><td>3</td><td>0.8607</td><td>0.0149</td><td>0.9562</td><td>0.0072</td><td>0.02469</td><td>0.0025</td><td>0.028805</td><td>0.0025</td></tr><tr><td>3.5</td><td>0.8395</td><td>0.0149</td><td>0.9491</td><td>0.0071</td><td>0.023902</td><td>0.0024</td><td>0.027885</td><td>0.0024</td></tr><tr><td>4</td><td>0.8187</td><td>0.0149</td><td>0.9420</td><td>0.0071</td><td>0.023138</td><td>0.0023</td><td>0.026995</td><td>0.0023</td></tr><tr><td>4.5</td><td>0.7985</td><td>0.0149</td><td>0.9350</td><td>0.0070</td><td>0.022399</td><td>0.0022</td><td>0.026132</td><td>0.0022</td></tr><tr><td>5</td><td>0.7788</td><td>0.0149</td><td>0.9281</td><td>0.0070</td><td>0.74447</td><td>0.0022</td><td>0.025298</td><td>0.0022</td></tr><tr><td>5.5</td><td>0.7596</td><td>0.0330</td><td>0.8339</td><td>0.0942</td><td></td><td></td><td>0.022168</td><td>0.0286</td></tr><tr><td>6</td><td>0.7408</td><td>0.0330</td><td>0.8202</td><td>0.0137</td><td></td><td></td><td>0.021267</td><td>0.0040</td></tr><tr><td>6.5</td><td>0.7225</td><td>0.0330</td><td>0.8068</td><td>0.0134</td><td></td><td></td><td>0.020402</td><td>0.0039</td></tr><tr><td>7</td><td>0.7047</td><td>0.0330</td><td>0.7936</td><td>0.0132</td><td></td><td></td><td>0.019572</td><td>0.0037</td></tr><tr><td>7.5</td><td>0.6873</td><td>0.0330</td><td>0.7806</td><td>0.0130</td><td></td><td></td><td>0.018776</td><td>0.0036</td></tr><tr><td>8</td><td>0.6703</td><td>0.0330</td><td>0.7678</td><td>0.0128</td><td></td><td></td><td>0.018013</td><td>0.0034</td></tr><tr><td>8.5</td><td>0.6538</td><td>0.0330</td><td>0.7552</td><td>0.0126</td><td></td><td></td><td>0.01728</td><td>0.0033</td></tr><tr><td>9</td><td>0.6376</td><td>0.0330</td><td>0.7428</td><td>0.0124</td><td></td><td></td><td>0.016578</td><td>0.0032</td></tr><tr><td>9.5</td><td>0.6219</td><td>0.0330</td><td>0.7307</td><td>0.0122</td><td></td><td></td><td>0.015904</td><td>0.0030</td></tr><tr><td>10</td><td>0.6065</td><td>0.0330</td><td>0.7187</td><td>0.0120</td><td></td><td></td><td>0.451165</td><td>0.0029</td></tr></table>

Table 4.8: Yield Spread

Column F is the coupon present value (including principal) and column E is recovery value. The total is $100\%$. Similarly, columns H and I are survival and recovery values respectively and also sum to $100\%$. Hence $\lambda = 0.0149$ and $\lambda = 0.0330$ are the two intensity values in the Poisson process.

Note that as default likelihoods go up, the survival value goes down but the recovery value goes up. Hence there is a tradeoff between the two values. See Figure 4.3. The net result is going down. This is because the sensitivity of the survival value with respect to intensity is higher than that of the default value.

The yields of the two bonds are $6\%$ and $7\%$ respectively because they are both priced at par (otherwise, we need to solve for the yields using the semi-annual formula in Chapter 1). And hence the yield spreads are $1\%$ and $2\%$ respectively.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/7d6d57008c6e605e2c416cb77d8a4eff936413e5b89a7ed15c300cf9bf8fdf4c.jpg)
Figure 4.3: Survival and Recovery (Default) Value

### 4.4.2 Par Spread

The above example is par spread since the bonds are evaluated at issuance so at par. On any trading day, bond prices are above (premium) or below (discount) par. And we need to use year fraction to discount.

<SeeExcel>

Say in two months the prices of the two bonds drop to 0.98 and 0.95 respectively. Assume no change in the risk-free rate and hence these changes are due to worsening credit of the company.

In this example, the spread is not a par spread. However, market participants would like to know where the market stands and par spread is the only way to see that. But if there is no new issuance, then we need to recreate a "fake" par bond in order to compute the par spread.

To do that, we need to artificially reduce or raise the coupon (which is equal to yield as we are solving for a par bond), till the bond price is at par. Then the difference between this artificial yield and the par risk-free yield is the par spread.

The results are $4.8775\%$ and $9.8352\%$ for the 5-year and 10-year bonds respectively.

### 4.4.3 Spread Duration and Spread 01

Spread duration can be defined as the same way as interest rate duration introduced in Chapter 3 as:


<table><tr><td>t</td><td>P</td><td>lam</td><td>Q</td><td>-dQ</td><td>0.06</td><td>0.4</td><td>0.07</td><td>0.4</td></tr><tr><td>0.333333</td><td>0.9835</td><td>0.0269</td><td>0.9911</td><td>0.0089</td><td>0.029241</td><td>0.0035</td><td>0.034115</td><td>0.0035</td></tr><tr><td>0.833333</td><td>0.9592</td><td>0.0269</td><td>0.9779</td><td>0.0132</td><td>0.028138</td><td>0.0051</td><td>0.032828</td><td>0.0051</td></tr><tr><td>1.333333</td><td>0.9355</td><td>0.0269</td><td>0.9648</td><td>0.0131</td><td>0.027077</td><td>0.0049</td><td>0.03159</td><td>0.0049</td></tr><tr><td>1.833333</td><td>0.9124</td><td>0.0269</td><td>0.9519</td><td>0.0129</td><td>0.026056</td><td>0.0047</td><td>0.030399</td><td>0.0047</td></tr><tr><td>2.333333</td><td>0.8899</td><td>0.0269</td><td>0.9392</td><td>0.0127</td><td>0.025074</td><td>0.0045</td><td>0.029253</td><td>0.0045</td></tr><tr><td>2.833333</td><td>0.8679</td><td>0.0269</td><td>0.9267</td><td>0.0125</td><td>0.024128</td><td>0.0044</td><td>0.02815</td><td>0.0044</td></tr><tr><td>3.333333</td><td>0.8465</td><td>0.0269</td><td>0.9143</td><td>0.0124</td><td>0.023219</td><td>0.0042</td><td>0.027088</td><td>0.0042</td></tr><tr><td>3.833333</td><td>0.8256</td><td>0.0269</td><td>0.9021</td><td>0.0122</td><td>0.022343</td><td>0.0040</td><td>0.026067</td><td>0.0040</td></tr><tr><td>4.333333</td><td>0.8052</td><td>0.0269</td><td>0.8901</td><td>0.0120</td><td>0.021501</td><td>0.0039</td><td>0.025084</td><td>0.0039</td></tr><tr><td>4.833333</td><td>0.7853</td><td>0.0269</td><td>0.8782</td><td>0.0119</td><td>0.710354</td><td>0.0037</td><td>0.024138</td><td>0.0037</td></tr><tr><td>5.333333</td><td>0.7659</td><td>0.0754</td><td>0.8457</td><td>0.0325</td><td></td><td></td><td>0.022671</td><td>0.0100</td></tr><tr><td>5.833333</td><td>0.7470</td><td>0.0754</td><td>0.8144</td><td>0.0313</td><td></td><td></td><td>0.021293</td><td>0.0094</td></tr><tr><td>6.333333</td><td>0.7286</td><td>0.0754</td><td>0.7842</td><td>0.0301</td><td></td><td></td><td>0.019998</td><td>0.0088</td></tr><tr><td>6.833333</td><td>0.7106</td><td>0.0754</td><td>0.7552</td><td>0.0290</td><td></td><td></td><td>0.018782</td><td>0.0083</td></tr><tr><td>7.333333</td><td>0.6930</td><td>0.0754</td><td>0.7273</td><td>0.0280</td><td></td><td></td><td>0.017641</td><td>0.0077</td></tr><tr><td>7.833333</td><td>0.6759</td><td>0.0754</td><td>0.7003</td><td>0.0269</td><td></td><td></td><td>0.016568</td><td>0.0073</td></tr><tr><td>8.333333</td><td>0.6592</td><td>0.0754</td><td>0.6744</td><td>0.0259</td><td></td><td></td><td>0.015561</td><td>0.0068</td></tr><tr><td>8.833333</td><td>0.6430</td><td>0.0754</td><td>0.6494</td><td>0.0250</td><td></td><td></td><td>0.014615</td><td>0.0064</td></tr><tr><td>9.333333</td><td>0.6271</td><td>0.0754</td><td>0.6254</td><td>0.0240</td><td></td><td></td><td>0.013727</td><td>0.0060</td></tr><tr><td>9.833333</td><td>0.6116</td><td>0.0754</td><td>0.6023</td><td>0.0232</td><td></td><td></td><td>0.381237</td><td>0.0057</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>0.937132</td><td>0.042867</td><td>0.830805</td><td>0.119195</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>0.98</td><td></td><td>0.95</td></tr></table>

Table 4.9: Par Spread Example

$$

\Pi^{*} = \sum_{i=1}^{2n} \frac{C_{i}}{(1 + \frac{y + s_{0}}{2})^{i}}

$$

$$

D^{*} = -\frac{d \Pi^{*}}{d s} \frac{1}{\Pi^{*}} = \frac{1}{\Pi^{*}} \frac{1}{2 (1 + \frac{y + s_{0}}{2})} \sum_{i=1}^{2n} i \frac{c_{i}}{(1 + \frac{y + s_{0}}{2})^{i}}

$$

Hence, it is extremely similar to the duration of the interest rate. This indicates that the risk of a corporate bond with respect to its spread is just the same as to its yield. We can verify this via the differentiation method.

The spread 01 is similar to the DV01 in interest rate. We can perturb only one spread in the market or the entire spread curve. Again, the magnitudes are similar to the DV01s in interest rate.

### 4.4.4 Spread Convexity and Spread 10/Spread 25

Often banks compute large shocks in the spread. This is designed to capture some convexity effect. This is because gammas often are difficult to compute, especially in a complex portfolio. This is also seen when vega is used to replace gamma.

It captures 1 to $2\%$ in addition to duration. However, large shock sizes can be problematic in situations where spreads are small (then 25 basis point shocks will lead to negative spreads).


## 4.5 Liquidity Spread

### 4.5.1 Bid/Ask Spread

The most known liquidity spread is the bid-ask (or bid-offer) spread. Market makers (especially in OTC markets) provide liquidity (help transactions) to the market and then charge b/a spreads as their profit. The higher the liquidity in the market (i.e. stiffer competition), the narrower the b/a spread.

Unfortunately, OTC markets consist of mostly a handful of institutional traders and they buy and sell in large quantities. Also note that many fixed income securities have large denominations. Hence, the b/a spreads are always wide.

The dealer's revenue comes from investors who are willing to pay  $K_{a} - S$  or  $S - K_{b}$  as a price for immediacy where  $S$  is the true (informed) price,  $K_{a}$  and  $K_{b}$  are ask and bid.

The objective of a dealer is to choose the b/a spread which maximizes his/her expected profit:

$$

\max p \mathbb {E} [ \max \{K_{a} - S, 0 \} ] + (1 - p) \mathbb {E} [ \max \{S - K_{b}, 0 \} ]

$$ where  $p$  is the percentage of investors who seek to buy and  $1 - p$  is the percentage of investors who seek to sell. The former is a put option and the latter is a call option.

An order flow is given in the following example:

In this example, we can see both the sell orders and the buy orders arranged in the order of their prices. The buy orders are arranged in a decreasing order and the sell orders are arranged in an increasing order. It is seen that in the top of the table the two order flows intersect. However, the sell order indicates 59,100 shares and yet the buy order wants a lot more (134,084 shares). This would force the market maker to move a bit in order to accommodate a trade.

Here is another example from the CDS market (taken from Chen, Fabozzi, and Sverdlove). In Table 4.10, we can see on average how bid and ask quotes differ in the CDS market. The data are broken down by credit ratings - AAA, AA, A, BBB, and BB and two business sectors (financial and industrial). The total number of observations in their dataset is 9316. The left column of each sector is the liquidity spread estimated with only the hazard factor and the right column is estimated with both the hazard and liquidity factors.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/b1234f239669ef9490cd52197587a09258be703a4eb91746ca1b8c6d0dd45ded.jpg)

Figure 4.4: Order Flow

<table><tr><td></td><td colspan="2">FIN</td><td colspan="2">INDU</td><td colspan="2">Total</td></tr><tr><td rowspan="2">AAA</td><td>2.67\%</td><td>-0.24\%</td><td>0.77\%</td><td>-0.13\%</td><td>1.54\%</td><td>-0.18\%</td></tr><tr><td colspan="2">164</td><td colspan="2">240</td><td colspan="2">404</td></tr><tr><td rowspan="2">AA</td><td>1.18\%</td><td>-0.20\%</td><td>13.49\%</td><td>-0.31\%</td><td>8.66\%</td><td>-0.28\%</td></tr><tr><td colspan="2">195</td><td colspan="2">386</td><td colspan="2">581</td></tr><tr><td rowspan="2">A</td><td>5.09\%</td><td>-0.06\%</td><td>8.31\%</td><td>-0.43\%</td><td>6.96\%</td><td>-0.27\%</td></tr><tr><td colspan="2">2182</td><td colspan="2">3435</td><td colspan="2">5617</td></tr><tr><td rowspan="2">BBB</td><td>2.82\%</td><td>-0.24\%</td><td>3.87\%</td><td>-0.10\%</td><td>3.78\%</td><td>-0.11\%</td></tr><tr><td colspan="2">191</td><td colspan="2">2022</td><td colspan="2">2213</td></tr><tr><td rowspan="2">BB</td><td>0.32\%</td><td>-0.25\%</td><td>2.67\%</td><td>0.09\%</td><td>1.04\%</td><td>0.22\%</td></tr><tr><td colspan="2">181</td><td colspan="2">144</td><td colspan="2">325</td></tr><tr><td rowspan="2">Total</td><td>4.21\%</td><td>-0.07\%</td><td>6.69\%</td><td>-0.29\%</td><td>5.75\%</td><td>-0.21\%</td></tr><tr><td colspan="2">2913</td><td colspan="2">6261</td><td colspan="2">9316</td></tr></table>

Table 4.10: Percentage difference between Mid-implied and Ask-implied Liquidity Spreads

### 4.5.2 Liquidity Gap

This is analogous to the b/a spread analysis. Lack of demand will bring the price down and lack of supply will bring the price up. A former model is provided by

Chen (2014).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/1823f8c725419d57ba42b95ef4ac21c22c1e2d625b5a61431fa7dcb7ada1f39e.jpg)

Figure 4.5: Demand Squeeze

$$
\begin{array}{l} X^{*}(t) = e^{-r (T - t)} \left\{K N(-h_{-}) - V(t) e^{\mu (T - t)} N(-h_{+}) - \frac{e^{\mu (T - t)} - e^{r (T - t)}}{e^{\mu (T - t)} \left(e^{\sigma^{2} (T - t)} - 1\right)} \times \right. \\ \frac{e^{\mu (T - t)}}{\left(e^{\mu^{2} (T - t)}\right)} \left\{K [ N(h_{-}) - N(h_{+}) ] + V(t) e^{\mu (T - t)} \left[ N(-h_{+}) - e^{\sigma^{2} (T - t)} N(-h_{+} - \sigma \sqrt{T - t}) \right] \right\} \\ \end{array}
$$ where


$$ h_{\pm} = \frac{\ln V(t) - \ln K + (\mu \pm 1/2 \sigma^{2})(T - t)}{\sigma \sqrt{T - t}}
$$

To compare, we present the liquid price (put option) as follows:

$$
X(t) = K e^{-r (T - t)} N(-d_{-}) - V(t) N(-d_{+})
$$ where


$$ d_{\pm} = \frac{\ln V(t) - \ln K + (r \pm 1/2 \sigma^{2})(T - t)}{\sigma \sqrt{T - t}}
$$

## 4.6 Discount Margin

Investopedia:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/880bdc12fd6d89d1f47832a04d67c12a290040915ea02fec797d0e590b807212.jpg)

Figure 4.6: Liquidity Discount

"A discount margin (DM) is the average expected return of a floating-rate security (typically a bond) that's earned in addition to the index underlying, or reference rate of, the security. The size of the discount margin depends on the price of the floating or variable-rate security. The return of floating-rate securities changes over time, so the discount margin is an estimate based on the security's expected pattern between issue and maturity.

Another way to view the discount margin is to think of it as the spread that, when added to the bond's current reference rate, will equate the bond's cash flows to its current price."

As we have learned in Chapter 2, "bonds and other securities with variable interest rates are usually priced close to their par value. This is because the interest rate (coupon) on a variable rate bond adjusts to current interest rates based on changes in the bond's reference rate."

"The discount margin is one of the most common calculations: It estimates the security's spread above the reference index that equates the present value of all expected future cash flows to the current market price of the floating rate note.

There are three basic situations involving a discount margin:

- If the price of floating rate security, or floater, is equal to par, the investor's discount margin would be equal to the reset margin.
- Due to the tendency for bond prices to converge to par as the bond reaches maturity, the investor can make an additional return over the reset margin if the floating rate bond was priced at a discount. The additional return plus the reset margin equals the discount margin.
- Should the floating rate bond be priced above par, the discount margin would equal the reference rate less the reduced earnings."

From the above description of Investopedia, it is clear that DM is very close to LIBOR spread as LIBOR is a common benchmark for floating rate fixed income securities. Yet, it is not limited to LIBOR but any reference benchmark index interest rate.

Again from Investopedia:

"The discount margin formula is a complicated equation that takes into account the time value of money and typically needs a financial spreadsheet or calculator to calculate accurately. There are seven variables involved in the formula. They are:

$P =$  the floating rate note's price plus any accrued interest

$c(i) =$  the cash flow received at the end of time period  $i$  (include principal in period  $n$ )

$I(i) =$  the assumed index level at time period i

$I(1) =$  the current index level

$d(i) =$  number of actual days in period  $i$ , assuming the A/360-day count convention  $d(s) =$  number of days from the start of the time period until settlement date

$\mathrm{DM} =$  the discount margin, the variable to solve for

All coupon payments are unknown, with the exception of the first, and must be estimated in order to calculate the discount margin. The formula, which must be solved by iteration to find DM, is as follows:

The current price,  $P$ , equals the summation of the following fraction for all time periods from the beginning time period to maturity:

$$
P = \sum_{i=1}^{n} \frac{c(i)}{\left(1 + \frac{I(1) + \mathrm{DM}}{100} \frac{d(1) - d(s)}{360}\right) \prod_{j=2}^{i} \left(1 + \frac{I(j) + \mathrm{DM}}{100} \frac{d(j)}{360}\right)},
$$

It is easily seen that if $I(i) = L(i)$ which is LIBOR, then $c(i)$ could be $(L(i) + s_0) \times 100$ and DM is very close to $s_0$ which is LIBOR spreads at current time 0.

## 4.7 Basis

Basis can be regarded as a spread, although it is mostly caused by market imperfections. Since such bases exist and they directly impact P&Ls, they must be understood (modeled) and managed.

### 4.7.1 Futures Basis

Futures basis is the difference between two futures prices with different maturities. The following is an example from CME. There are three maturities in the example. Because futures prices will converge to the spot price at the maturity, it is quite popular for futures traders to speculate on the changes in spot.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/866650be53dca62cd2a73bc1f810d9b7c6960b9da0f06ad4dc602f3de6a4a01f.jpg)

Figure 4.7: Treasury Bond Futures (CME)

# 4.7.2 FX Basis

There are two meanings to FX basis, depending on which market you are in. The first basis is the discrepancy between market quotes and the curve. The other basis is the interest rate differential between two countries, e.g. LIBOR and T bills. This market is usually floating-floating interest rate swap.

# 4.7.3 CDS - Bond Yield Basis

This refers to the difference between bond yield spread and its corresponding CDS spread. Many believe that the major source of the difference is liquidity. Yet market infrastructure has a substantial influence.

<table><tr><td></td><td colspan="2">FIN</td><td colspan="2">INDU</td><td colspan="2">Total</td></tr><tr><td rowspan="2">AAA</td><td>20.85\%</td><td>24.31\%</td><td>5.68\%</td><td>10.49\%</td><td>11.84\%</td><td>16.10\%</td></tr><tr><td colspan="2">164</td><td colspan="2">240</td><td colspan="2">404</td></tr><tr><td rowspan="2">AA</td><td>16.66\%</td><td>19.84\%</td><td>14.44\%</td><td>20.30\%</td><td>15.18\%</td><td>20.15\%</td></tr><tr><td colspan="2">195</td><td colspan="2">386</td><td colspan="2">581</td></tr><tr><td rowspan="2">A</td><td>27.60\%</td><td>36.72\%</td><td>28.18\%</td><td>35.69\%</td><td>27.95\%</td><td>36.09\%</td></tr><tr><td colspan="2">2182</td><td colspan="2">3435</td><td colspan="2">5617</td></tr><tr><td rowspan="2">BBB</td><td>35.60\%</td><td>47.98\%</td><td>58.68\%</td><td>136.37\%</td><td>56.69\%</td><td>128.74\%</td></tr><tr><td colspan="2">191</td><td colspan="2">2022</td><td colspan="2">2213</td></tr><tr><td rowspan="2">BB</td><td>83.20\%</td><td>98.68\%</td><td>53.88\%</td><td>70.55\%</td><td>70.21\%</td><td>86.22\%</td></tr><tr><td colspan="2">181</td><td colspan="2">144</td><td colspan="2">325</td></tr><tr><td rowspan="2">Total</td><td>30.46\%</td><td>39.48\%</td><td>37.46\%</td><td>67.78\%</td><td>34.70\%</td><td>57.90\%</td></tr><tr><td colspan="2">2913</td><td colspan="2">6261</td><td colspan="2">9316</td></tr></table>

Table 4.11: CDS Spread as a Percentage of Bond Yield

# 4.7.4 LIBOR basis

LIBOR basis swaps are swaps of one LIBOR maturity for another LIBOR maturity with a spread added to one of the LIBOR's. One leg of the swap is the 3M LIBOR index rate and the other leg is another LIBOR rate (1M, 6M, or 12M). These basis swaps are used to build LIBOR forward curves for 1M, 6M, and 12M.

# 4.7.5 LIBOR Treasury Basis

LIBOR is traditionally empirically higher than Treasury rates.

# 4.7.6 LIBOR Is Basis

Due to LIBOR scandal, the industry has moved to Is discounting (see Chapter 2 To build the Is curve, one needs information from LIBOR-OIS basis swaps.

# 4.8 Gamma and Vega

Finally, we review the related risk measures to convexity. As we know, convexity is similar to gamma which is second order differentiation with respect to the underlying asset, and hence the similarity is obvious. Vega is the first order differentiation with respect to the volatility of the underlying asset. How on earth vega is related to convexity?

Let's look at the Taylor's series expansion of equation (3.1) in Chapter 3:

$$ dP = \frac{\partial P}{\partial \underline{y}} d\underline{y} + \frac{\partial^{2} P}{\partial \underline{y}^{2}} d\underline{y}^{2} + \frac{\partial P}{\partial \underline{v}} d\underline{v} + \frac{\partial P}{\partial t} dt + o(dt)
$$ where  $\underline{y}$  represents the whole yield curve (i.e. vector of yields) and  $\underline{v}$  represents the whole volatility curve. The first term is clearly the effective duration (i.e. price impact on whole yield curve shift). The second term is the convexity on the whole yield curve. The last term is the vega which is the price impact of the volatility curve shift.


In the fixed income world, the P&L is explained by four major factors: delta, gamma, vega, and theta. Note that theta is not a random effect. It is completely deterministic and known as the roll down effect (introduced in Chapter 2). Delta is similar to duration and is kept neutral when trading. Gamma and vega are similar to convexity that need to be maximized (see immunization in Chapter 3).

# 4.8.1 Supplementary Effect

Theoretically speaking, vega is the first order risk $(\partial V / \partial \sigma)$ but since the volatility is not a traded asset, and also the only way to retrieve the market volatility information is through options, it is regarded as the second order risk, similar to gamma. Hence, often it is used to replace gamma.

But vega is much easier to compute since it is technically a first order differentiation.

# 4.8.2 Complementary Effect

After all, vega and gamma are not the same. Indeed one is convexity on the underlying asset and the other is the volatility sensitivity of the underlying asset. Theoretically, gamma is caused by the distribution of the underlying asset of a chosen maturity and vega is caused by either jumps (short term) or volatility being random over time (long term).

If a model is accurate, then the two cannot substitute each other as described in the previous subsection.


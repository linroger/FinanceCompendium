---
title: Term Structure of Interest Rates
parent_directory: PPHA Applied Financial Management
formatted: 2025-12-21 03:42:00 PM
formatter_model: grok-code-fast-1
cli-tool: opencode
primary_tags:
  - term structure models
  - yield curve dynamics
  - forward rate agreements
  - zero coupon bonds
  - interest rate derivatives
secondary_tags:
  - bond valuation
  - discount factors
  - spot rate derivation
  - martingale measure
  - change of numeraire
  - risk neutral pricing
  - Heath-Jarrow-Morton
  - short rate models
  - calibration methods
  - no arbitrage pricing
  - cap and floor pricing
  - swaption pricing
  - volatility smile
cssclasses: academia
---

# Term Structure of Interest Rates

Lecture 6

Thomas S. Coleman

4 April 2023; Draft April 1, 2023

## Outline

### Contents

## 1 Term Structure of Interest Rates

### 1.1 Graphing "Yield Curve" - 2yr & 5yr Example
### 1.2 "Yield Curve" - Some Terminology & Math
### 1.3 Calculating "Yield Curve" - 2yr & 5yr Example
### 1.4 Mathematics of Forward and Zero (Spot) Rates - Skip This Section
### 1.5 PV for New 4-yr Bond: Using Forward and Zero (Spot) Rates

## 1 Term Structure of Interest Rates

Lecture Notes and Section I of "Practical Guide to Yield Curves" (Canvas)

## 1.1 Graphing "Yield Curve" - 2yr & 5yr Example

#### Contents

## 2yr & 5yr Have Different Yield-to-Maturity

Consider 2yr & 5yr bonds (both trading at \$100)

- 2yr, 1.162% sab coupon (& yield)
- 5yr, $1.721\%$ sab coupon (& yield)

Naively, "Yield Curve" connects dots

- May be upward or downward sloping
- More often upward
- Thinking about preferences (and costs) for short-term vs long-term investing
- 2yr yield tells us market-wide trade-off between future and present CFs between now & 2yrs
- Can graph for either (both) nominal yields or real yields

Naively, "Yield Curve" connects dots

- It's a start, but some problems

2yr & 5yr different

- As if each lives in their own private world - 2 separate lines  
Instead, recognize 5yr is partly 0-2yr, partly 2-5yr

Two reasons for looking at "The Yield Curve"

1. Conceptual: preferences, trade-off between today vs 2yrs vs 5yrs  
2. Practical: use for discounting new or different cash flows

```d2
direction: down
yield_curve_purpose: Yield Curve Purpose {
  conceptual: Conceptual Analysis {
    shape: rectangle
    label: Preferences and trade-offs\nbetween different maturities
  }
  
  practical: Practical Application {
    shape: rectangle
    label: Discounting cash flows\nfor valuation
  }
  
  conceptual -> practical: Requires consistent rates
}
```

Need to introduce some new concepts (and new math)

- Yield Curve & Term Structure of Interest Rates: general terms for the pattern of yields (discount rates) across maturities  
- General terms which could apply to the top graph (naive, yield-to-maturity vs maturity) or bottom graph (sophisticated, forward rate curve)  
- Forward Curve and Zero Curve: specific mathematical concepts relating cash flows and PV  
- Cannot be right: cash flows overlap for 0-2yrs  
- Use ideas of zero rates and forward rates to do better

What is yield for a 4yr  $2 \%$  coupon bond?

- No way to say from the 2yr & 5yr yields  
- Must use the 0-2yr and 2-5yr fwd rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/47c2e5be0577359a18d9f6a0840669d8463b432cccbb680544847b90a65ce490.jpg)

## Bring in 5-year: Shows Problem with Naïve Yield-to-Maturity

Yield-to-Maturity: discount each bond at own rate

But cannot be the right way: cash flows overlap

- Law of One Price: Discount all CFs during yr 1 & 2 at same rate  
- We know rate is  $1.162\%$  for yr 1 & 2

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/bc7b49b6907c24dfc72d1a9859f28907621600c6e8caea6f0f0a5c475f504026.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/b608588a60cbd019bc417f928093c61f6bf641ada6cdfeca60450b45b71da7b7.jpg)

Yield for 5yr bond is complicated average of 0-2 and 2-5 yr rates

## Must Discount CFs at Same (Consistent) Forward Rates

We know $f_{0\rightarrow 2} = 1.162\%$ - discount coupons for yr 1 & 2 at $1.162\%$

$$
\begin{array}{l} PV_{5yr} = \frac{1.721/2}{(1 + 0.01162/2)^{1}} + \dots + \frac{1.721/2}{(1 + 0.01162/2)^{4}} \\ + \frac{1}{(1 + 0.01162/2)^{4}} \left[ \frac{1.721/2}{(1 + f_{2 \rightarrow 5}/2)^{1}} + \dots + \frac{1.721/2}{(1 + f_{2 \rightarrow 5}/2)^{6}} + \frac{100}{(1 + f_{2 \rightarrow 5}/2)^{6}} \right] \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/b37148708df486005c9bbfcf2ce4d455d6753e3baf133b5cc4d12285d893e86f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/8822883eb5219759f33c2edf1890d1c462ae8d9d6566b56ea9950b97cd552eca.jpg)

Now bonds consistent - just need to solve for  $f_{2\rightarrow 5} = \ref{eq:1}$

## Graphing Yield-to-Maturity - Results

Three graphs saying the same in different ways

1. Yield-to-maturity: treat each bond in its own world  
2. Zero rate: rate from today to some date (eg  $0 \to 2yr$ ,  $0 \to 5yr$ )  
3. Forward rate: rate between dates (eg  $2yr\rightarrow 5yr$

```d2
direction: down
yield_curve_representations: Yield Curve Representations {
  ytm: Yield-to-Maturity {
    shape: rectangle
    label: Average rate for entire bond
  }
  
  zero: Zero Rate {
    shape: rectangle
    label: Rate from today to specific date
  }
  
  forward: Forward Rate {
    shape: rectangle
    label: Rate between two future dates
  }
  
  ytm -> zero -> forward: Increasing precision
}
```

Look at some actual bonds prices & yields:

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Zero sab</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.162%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>1.731%</td></tr><tr><td>10-year</td><td>100</td><td>\$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.216%</td></tr></table>

1. 5yr Yield of  $1.721\%$  : for the 5yr bond (all CFs)  
2. 5yr Zero of  $1.731\%$  : for the CF at yr 5  
3. $2yr\rightarrow 5yr$  Forward of  $2.111\%$  : for CFs between 2 & 5

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/db53d3079d15a6f27a5eba2c789db964a1405171149ab9db4836cdbb2bba5f7a.jpg)
 
## 1.2 "Yield Curve" - Some Terminology & Math
 
## Contents

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/a976c8ff5b62f51c93714d97d3b0e8879268ec9e5c2535a6b219ddab35288c12.jpg)

## "Yield Curve" - Some Terminology & Math

- General terms for the graph of rates versus maturity  
- "Yield Curve", "Term Structure of Interest Rates", "Forward Curve", "Zero Curve"
- Specific mathematical terms:
- "Yield-to-Maturity": "average" discount rate for a bond  
- "Zero rate" or "Spot rate": discount rate for a specific maturity  
- "Forward rate": discount rate between two dates

Write 2yr swap (coup  $1.162/yr, PV=$ 100) various ways

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/a86b0ede63c473109ef24870cf59b9532d7205b8babe2986bbb78b53e292718d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/059c51643b9982981afd68e14896c03399782a9fbfab09123189585599fed708.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/23c135fb8a6fbe416cd11899ca411ec08f2d752515426b75d76a4d21cd543e49.jpg)
 
## Yield, Zero, Forward for 2-year Swap
 
Write 2yr swap (coup  $1.162/yr, PV=$ 100) various ways

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/9535b1605f65fc6fd91b51eb919dbb6759ed00803db8d86e525ca735d0caa9d9.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/53435f623c5eee4504fd8b2c7b209931b0c3d20ce61b2946693941db41e9196a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/6ac0aafbf9c9c0f7bf7859b0d67f219b476d5b92488eb84cecedc029224d337f.jpg)

$$
YTM: PV = \frac{1.162/2}{(1 + y/2)} + \frac{1.162/2}{(1 + y/2)^{2}} + \dots + \frac{100}{(1 + y/2)^{4}}
$$

$$
Zero: PV = \frac{1.162/2}{(1 + z_{5}/2)} + \frac{1.162/2}{(1 + z_{1}/2)^{2}} + \dots + \frac{100}{(1 + z_{2}/2)^{4}}
$$

$$
Fwd: PV = \frac{1.162/2}{(1 + f_{0 \rightarrow 0.5}/2)} + \frac{1.162/2}{(1 + f_{0 \rightarrow 0.5}/2)(1 + f_{0.5 \rightarrow 1}/2)} + \dots + \frac{100}{(1 + f_{0 \rightarrow 0.5}/2) \cdots (1 + f_{1.5 \rightarrow 2}/2)}
$$

Here they are all the same number (1.162%sab) - flat curve 0-2 years

## Zero (Spot) vs Forward: Simple Relationship

Compare 2-year spot rate vs forwards  $0 \to 1$  &  $1 \to 2$  (annual instead of sab rates):

$$
\frac {1}{(1 + z _ {1})} = \frac {1}{(1 + f _ {0 \rightarrow 1})}
$$

$$
\frac {1}{(1 + z _ {2}) ^ {2}} = \frac {1}{(1 + f _ {0 \rightarrow 1})} \cdot \frac {1}{(1 + f _ {1 \rightarrow 2})}
$$

Zero (spot) rates are a kind of "average" of forward rates

$$
1 + f _ {1 \rightarrow 2} = \frac {(1 + z _ {2}) ^ {2}}{(1 + f _ {0 \rightarrow 1})}
$$

If  $z_{2} = 6\% \& z_{1} = f_{0\rightarrow 1} = 4\%$ ,  $f_{1\rightarrow 2} = 8.04\% : 1.080385 = (1.06)^{2} / 1.04$ .

In general,

$$
1 + f _ {n - 1 \rightarrow n} = \frac {(1 + z _ {n}) ^ {n}}{(1 + z _ {n - 1}) ^ {n - 1}}
$$

## Actual Bonds - Nothing Simple

Textbook highlights "stripped" or zero-coupon Treasuries

- Dealers pull out each coupon and sell it separately - Treasury makes it easy

"Zero-Coupon Bond"

Bond with single final payment (\$100) and coupon = \$0  
Particularly simple  

- BUT, most actively-traded bonds are coupon bonds

For actual bonds and bond yields, nothing simple: read my paper (Canvas & https://papers.ssrn.com/abstract=994870)

- Dealers use coupon bonds to calculate zero-coupon rates (not vice-versa)

Paper on estimating forward rates: "Fitting Forward Rates to Market Data" https://papers.ssrn.com/abstract=994870
 
## 1.3 Calculating "Yield Curve" - 2yr & 5yr Example

## Contents

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/0c7713871f2fb34b8b3a1f6e723985a3a36f6d599bbc76b20afa5fefecee36aa.jpg)

## Solving for Forward: Split 5yr into Two: 0-2 & 2-5 Years

We can forward value the  $1.721\%$  coupon to get FV as of yr 2

Then we calculate yield for that forward bond

- Result is  $2.111\% \mathrm{Sab}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/ad928641e09b68546b1c3d93ced872d4a859db1169c1dea7541efa46e96b97b1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/e46d80496c3697571b7c4210fc68270919e3fcde3d09809d5cd38fde36d3eb8b.jpg)

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Zero sab</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.162%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>1.731%</td></tr><tr><td>10-year</td><td>100</td><td>\$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.216%</td></tr></table>

I have verified these from the spread-sheet "yld_fwd6.xls"

For reference, here the last column are forward rates, cc

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Fwd Rate cc</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.1586%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>2.0999%</td></tr><tr><td>10-year</td><td>100</td><td>\$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.6849%</td></tr></table>

## Split 5yr into Two: 0-2 & 2-5 Years

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>1.162</td><td>-100</td><td>0.8605</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>98.87222</td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>6</td><td></td><td>-98.8722</td><td>0.8605</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>2.111</td><td></td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/7f7ccccba9e6e89705a9f246246e0416cdb21423cba98cc6a99b61efcdde27e0.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/9817e5f41c25fe7340c8c057834ffd0675a9657ce7ea941b449c1d2e74369b33.jpg)

## Yield as "Average" of Forward Rates

$$
P V _ {5 y r} = \frac {1 . 7 2 1 / 2}{(1 + y _ {5} / 2) ^ {1}} + \frac {1 . 7 2 1 / 2}{(1 + y _ {5} / 2) ^ {2}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + y _ {5} / 2) ^ {1 0}} + \frac {1 0 0}{(1 + y _ {5} / 2) ^ {1 0}}
$$

$$
\begin{array}{l} {P V _ {5 y r}} = {\frac {1 . 7 2 1 / 2}{(1 + f _ {0 \rightarrow 2} / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + f _ {0 \rightarrow 2} / 2) ^ {4}}} \\ + \frac {1}{(1 + f _ {0 \rightarrow 2} / 2) ^ {4}} \left[ \frac {1 . 7 2 1 / 2}{(1 + f _ {2 \rightarrow 5} / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + f _ {2 \rightarrow 5} / 2) ^ {6}} + \frac {1 0 0}{(1 + f _ {2 \rightarrow 5} / 2) ^ {6}} \right] \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/de9dd402a2fafb6249d45762f56caeb100a0a2cc1a021761bf6540555572e8f6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/3e1e98cc92a8288a09adddcf84555b953227e14ea2e6ed09ff991a21e6a5aef3.jpg)

## Solving Equation for  $2\rightarrow 5$  -yr Forward

$$
\begin{array}{l} {P V _ {5 y r}} = {\frac {1 . 7 2 1 / 2}{(1 + f _ {0 \rightarrow 2} / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + f _ {0 \rightarrow 2} / 2) ^ {4}}} \\ + \frac {1 . 7 2 1 / 2}{\left(1 + f _ {0 \rightarrow 2} / 2\right) ^ {4} \left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2 + 1 0 0}{\left(1 + f _ {0 \rightarrow 2} / 2\right) ^ {4} \left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {6}} \\ \end{array}
$$

$$
\begin{array}{l} 1 0 0 = \frac {1 . 7 2 1 / 2}{(1 + . 0 1 1 6 2 / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + . 0 1 1 6 2 / 2) ^ {4}} \\ + \frac {1}{(1 + . 0 1 1 6 2 / 2) ^ {4}} \left[ \frac {1 . 7 2 1 / 2}{(1 + . 0 2 1 1 1 / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + . 0 2 1 1 1 / 2) ^ {6}} + \frac {1 0 0}{(1 + . 0 2 1 1 1 / 2) ^ {6}} \right] \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/d527d82ea7954150f9d67f2170f73b3d725367da1492be3c792c3f892511e03b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/3df345edf66f0fcdd75d17ac3ce2989708428beb9cf5bede17de9bb975c36825.jpg)

NB - this is using  $2\mathrm{p / yr}$

The point here is that we know the  $0 - > 2$  year rate from the 2-yr bond. We should use that, and then ask "what is the  $2 - > 5$  yr forward?"
 
## 1.4 Mathematics of Forward and Zero (Spot) Rates - Skip This Section Contents
 
Mathematics of Zero (Spot) and Forward Rates

For semi-annual compounding:

$$
P V = \frac {C F}{\left(1 + z _ {y r} / 2\right) ^ {2 \cdot y r}} \Rightarrow \left(1 + z _ {y r} / 2\right) = \left[ \frac {C F}{P V} \right] ^ {1 / (2 \cdot y r)}
$$

$$
P V = \frac {C F}{\left(1 + f _ {0 \rightarrow . 5} / 2\right)\left(1 + f _ {. 5 \rightarrow 1} / 2\right) \cdots \left(1 + f _ {y r - . 5 \rightarrow y r} / 2\right)}
$$

$$
\left(1 + z _ {y r} / 2\right) ^ {2 \cdot y r} = \left(1 + f _ {0 \rightarrow . 5} / 2\right)\left(1 + f _ {. 5 \rightarrow 1} / 2\right) \dots \left(1 + f _ {y r -. 5 \rightarrow y r} / 2\right)
$$

$$
\left(1 + z _ {y r} / 2\right) = \left[\left(1 + f _ {0 \rightarrow . 5} / 2\right)\left(1 + f _ {. 5 \rightarrow 1} / 2\right) \dots \left(1 + f _ {y r -. 5 \rightarrow y r} / 2\right)\right] ^ {1 / (2 \cdot y r)}
$$

Zero Rates as "Average" of Forward Rates (Annual Compounding)

The zero rate will be some sort of an "average" of forward rates.

- Let's consider rates for 2 years, annually-compounded.

The formula is:

$$
(1 + z _ {2}) = \left[ (1 + f _ {0 \rightarrow . 1}) (1 + f _ {1 \rightarrow 2}) \right] ^ {1 / 2}
$$

We get this by comparing the formula for the PV of a single cash flow, discounting by zero rates versus forward rates:

$$
P V = \frac {C F}{\left(1 + z _ {2}\right) ^ {2}} \Rightarrow \left(1 + z _ {2}\right) ^ {2} = \frac {C F}{P V}
$$

$$
P V = \frac {C F}{\left(1 + f _ {0 \rightarrow 1}\right)\left(1 + f _ {1 \rightarrow 2}\right)} \Rightarrow \left(1 + f _ {0 \rightarrow 1}\right)\left(1 + f _ {1 \rightarrow 2}\right) = \frac {C F}{P V}
$$

$$
\left(1 + z _ {2}\right) ^ {2} = \left(1 + f _ {0 \rightarrow 1}\right)\left(1 + f _ {1 \rightarrow 2}\right)
$$

$$
\left(1 + z _ {2}\right) = \left[\left(1 + f _ {0 \rightarrow 1}\right)\left(1 + f _ {1 \rightarrow 2}\right)\right] ^ {1 / 2}
$$

Messy, but not horrible. More generally, for the zero rate for  $yr$  years:

$$
(1 + z _ {y r}) = \left[\left(1 + f _ {0 \rightarrow 1}\right) (1 + f _ {1 \rightarrow 2}) \dots (1 + f _ {y r - 1 \rightarrow y r}) \right] ^ {1 / y r}
$$

Yield as "Average" of Forward Rates (Annual Compounding)

We can also think of the yield-to-maturity for a specific bond (say a 2-year annual-coupon bond that pays 1.162 per year)

- The yield will also be an "average" of forward rates. But terribly messy.

Once again, compare the PV using yield and PV using forwards:

$$
F w d: P V = \frac {1 . 1 6 2}{\left(1 + f _ {0 \rightarrow 1}\right)} + \frac {1 . 1 6 2}{\left(1 + f _ {0 \rightarrow 1}\right)\left(1 + f _ {1 \rightarrow 2}\right)} + \frac {1 0 0}{\left(1 + f _ {0 \rightarrow 1}\right)\left(1 + f _ {1 \rightarrow 2}\right)}
$$

$$
Y T M: P V = \frac {1 . 1 6 2}{(1 + y)} + \frac {1 . 1 6 2}{(1 + y) ^ {2}} + \frac {1 0 0}{(1 + y) ^ {2}}
$$

No simple formula to calculate the YTM as the "average" of forwards:

1. Calculate the PV from the Forwards  $(PV = PV(f_{0\to 1},f_{1\to 2},\text{coupon} = 1.162))$  
2. Calculate the YTM from the  $PV(f_{0\to 1},f_{1\to 2}, \text{coupon} = 1.162)$  
3. YTM function of forwards and coupon:  $(y = y(f_{0\rightarrow 1},f_{1\rightarrow 2},\text{coupon} = 1.162))$

YTM for each bond will be its own average

- Different for each maturity and coupon

Zero and Forward Rates Easier with Continuous Compounding

$\mathbf{df}_{t}$  Discount Factor for date  $t$ , to discount a cash flow at date  $t$  back to present value today (PV of  $\$1$ ).

$\mathbf{f}_{\mathbf{cc}}(\mathbf{u})$  (Instantaneous) Forward Rate at date  $u$

$\mathbf{z}_{\mathbf{cc}}(t)$  Zero Rate (also called Spot Rate), or the discount rate that applies for discounting back to today from a future date  $t$ .

$\mathbf{f_{t1 \rightarrow t2}}$  Forward Rate between  $t_1$  to  $t_2$ , or the discount rate that applies from  $t_1$  to  $t_2$ , that is for discounting back to  $t_1$  from a more distant date  $t_2$ .

$$
PV = \sum_{t} CF_{t} df_{t}
$$

$$
df(t) = \exp\left(-t \cdot z_{cc}(t)\right) = \exp\left(-\int_{0}^{t} f_{cc}(u) du\right)
$$

$$
z_{cc}(t) = \frac{1}{t} \int_{0}^{t} f_{cc}(u) du \quad f_{t1 \rightarrow t2} = \frac{1}{t2 - t1} \int_{t1}^{t2} f_{cc}(u) du
$$

Example, 2, 5, 10yr

Example Bonds and Implied Forward Rates

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Zero sab</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.162%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>1.731%</td></tr><tr><td>10-year</td><td>100</td><td>\$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.216%</td></tr></table>

With the forward or zero rates, we can PV any CF

$$
df(t) = \frac{1}{(1 + z_{ab})^{t}} = \exp(-t \cdot z_{t}) = \exp\left(-\int_{0}^{t} f(u) du\right)
$$

$$
z_{cc}(t) = \frac{1}{t} \int_{0}^{t} f_{cc}(u) du = \frac{1}{t} \ln\left(\frac{1}{d\bar{f}(t)}\right) \quad z_{ab}(t) = \left(\frac{1}{d\bar{f}(t)}\right)^{(1/t)}
$$

$$
f_{cc}(t1 \rightarrow t2) = \frac{1}{t2 - t1} \int_{t1}^{t2} f_{cc}(u) du \quad f_{ab}(t1 \rightarrow t2) = \left(\frac{df(t1)}{df(t2)}\right)^{(1/(t2 - t1))}
$$

## 1.5 PV for New 4-yr Bond: Using Forward and Zero (Spot) Rates Contents

### Using Forward Rates: PV for Arbitrary CFs

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Zero sab</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.162%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>1.731%</td></tr><tr><td>10-year</td><td>100</td><td>\$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.216%</td></tr></table>

What is PV for 4yr,  $2\%$  bond? Or swap? Break into two as before

1. Bond from yr 4 back to yr 2: 2yr  $2\%$  coupon bond at  $2.111\%$  sab  
2. "Bond" from yr 2 (FV not 100) back to yr 0: 2yr  $2\%$  "bond" (with FV not 100) at  $1.162\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/405e8bfc3c6d89c93befab39c5bf2ee7833fc5f4a0225f61dfdaf0fbd8e53048.jpg)

4yr,  $2\%$  bond,  $\mathbf{PV} = 101.4406$  yield  $= 1.627$

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>2.111</td><td></td><td>1.0</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-99.7837</td><td></td><td></td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>1.162</td><td></td><td>1.0</td><td>99.7837</td></tr><tr><td>Solve For</td><td></td><td></td><td>-101.4406</td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/8caa8d29f976335bd1994d7ff67f6c0de5ae36eaa0bff4c94da15bfa6ca7e7e3.jpg)

Note a few things:

- Previous version of this slide had "yield  $= 1.574$  but this was an error by leaving  $\mathrm{FV} = 99.7837$  
- YTM for this 4yr  $2\%$  coupon bond is  $1.627\%$ . But the par rate for this set of forwards is  $1.6282\%$ . The difference is (of course) because the par bond is the coupon (& yield) for a bond with  $\mathrm{PV} = 100$ .

The formula for a par bond is

$$
100 = c \cdot PV(\$1 annuity) + PV(\$100)
$$

In this case

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>2.111</td><td>0.5</td><td>0</td><td>0</td></tr><tr><td>Solve For</td><td></td><td></td><td>-1.948319</td><td></td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td>-3.874974</td><td></td><td></td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>2.111</td><td></td><td>0</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-95.887099</td><td></td><td></td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>1.162</td><td></td><td>0</td><td>95.887099</td></tr><tr><td>Solve For</td><td></td><td></td><td>-93.690678</td><td></td><td></td></tr></table>

$$
100 = c \cdot PV(\$1 annuity) + PV(\$100)
$$

$$
100 = c \cdot 3.874974 + 93.690678
$$

and so  $c = 1.6282$

4yr,  $2\%$  bond,  $\mathrm{PV} = 101.4406$ , yield  $= 1.627$

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Zero sab</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.162%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>1.731%</td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>8</td><td></td><td>-101.4406</td><td>1.0</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>1.627</td><td></td><td></td><td></td></tr></table>

- 4-yr yield is "avg" of 2-yr & 5-yr  
- Between ytm for 2yr & 5yr  
- Need fwd rates to figure out precise 4yr ytm

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/605846d25f534e10a44f49314bb4cd747aef6dfb74e831372989fbb4c839d1b3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ec236eec-a238-43bc-b6da-a316d9fe7afe/343741d189935cf59df7680fa95e5a42751a35637dd73e1ddd4e3f6bc66a24b0.jpg)

## References
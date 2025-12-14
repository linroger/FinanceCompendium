---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Outline
linter-yaml-title-alias: Outline
---

Lecture 6

Thomas S. Coleman

4 April 2023; Draft April 1, 2023

# Outline

# Contents

# 1 Term Structure of Interest Rates 2

1.1 Graphing "Yield Curve" - 2yr & 5yr Example 2  
1.2 "Yield Curve" - Some Terminology & Math 4  
1.3 Calculating "Yield Curve" - 2yr & 5yr Example 6  
1.4 Mathematics of Forward and Zero (Spot) Rates - Skip This Section 9  
1.5 PV for New 4-yr Bond: Using Forward and Zero (Spot) Rates 10

# 1 Term Structure of Interest Rates

Lecture Notes and Section I of "Practical Guide to Yield Curves" (Canvas)

# 1.1 Graphing "Yield Curve" - 2yr & 5yr Example

# Contents

# 2yr & 5yr Have Different Yield-to-Maturity

Consider 2yr & 5yr bonds (both trading at $100)

- 2yr, 1.162% sab coupon (& yield)  
- 5yr,  $1.721\%$  sab coupon (& yield)

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

Need to introduce some new concepts (and new math)

- Yield Curve & Term Structure of Interest Rates: general terms for the pattern of yields (discount rates) across maturities  
- General terms which could apply to the top graph (naive, yield-to-maturity vs maturity) or bottom graph (sophisticated, forward rate curve)  
- Forward Curve and Zero Curve: specific mathematical concepts relating cash flows and PV  
- Cannot be right: cash flows overlap for 0-2yrs  
- Use ideas of zero rates and forward rates to do better

What is yield for a 4yr  $2 \%$  coupon bond?

- No way to say from the 2yr & 5yr yields  
- Must use the 0-2yr and 2-5yr fwd rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/3a13eeff59d8b1bbeacd6f0fbead8df0b2905fe99acfcb2fa03c21e5d2ef8586.jpg)

# Bring in 5-year: Shows Problem with Naïve Yield-to-Maturity

Yield-to-Maturity: discount each bond at own rate

But cannot be the right way: cash flows overlap

- Law of One Price: Discount all CFs during yr 1 & 2 at same rate  
We know rate is  $1.162\%$  for yr 1 & 2

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/0fd0ef63dc358e29cfe8fbc5b95558654bf909cac233ea8140d62015a8d85799.jpg)  
Yield for 5yr bond is complicated average of 0-2 and 2-5 yr rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a893721d9da4b8b59515bd476101e80f10b5b1490f10e485d29b7f627848e389.jpg)

# Must Discount CFs at Same (Consistent) Forward Rates

We know  $f_{0\rightarrow 2} = 1.162\%$  - discount coupons for yr 1 & 2 at  $1.162\%$

$$
\begin{array}{l} P V _ {5 y r} = \frac {1 . 7 2 1 / 2}{(1 + . 0 1 1 6 2 / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + . 0 1 1 6 2 / 2) ^ {4}} \\ + \frac {1}{(1 + . 0 1 1 6 2 / 2) ^ {4}} \left[ \frac {1 . 7 2 1 / 2}{(1 + f _ {2 \rightarrow 5} / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + f _ {2 \rightarrow 5} / 2) ^ {6}} + \frac {1 0 0}{(1 + f _ {2 \rightarrow 5} / 2) ^ {6}} \right] \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/e7be2bd20bdcd4db5d283d66020e31ac90f0f2564a01ce2ca7791c01123c9350.jpg)  
Now bonds consistent - just need to solve for  $f_{2\rightarrow 5} = \ref{eq:1}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/7d9c8586e814f7507ed10b1871eed33dfdb671cfb115fbc61c8cf2f85e938e6e.jpg)

# Graphing Yield-to-Maturity - Results

Three graphs saying the same in different ways

1. Yield-to-maturity: treat each bond in its own world  
2. Zero rate: rate from today to some date (eg  $0 \to 2yr$ ,  $0 \to 5yr$ )  
3. Forward rate: rate between dates (eg  $2yr\rightarrow 5yr$

Look at some actual bonds prices & yields:

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Zero sab</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.162%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>1.731%</td></tr><tr><td>10-year</td><td>100</td><td>$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.216%</td></tr></table>

1. 5yr Yield of  $1.721\%$  : for the 5yr bond (all CFs)  
2. 5yr Zero of  $1.731\%$  : for the CF at yr 5  
3. $2yr\rightarrow 5yr$  Forward of  $2.111\%$  : for CFs between 2 & 5

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/0149b9613f1981fe3b164132013b04f99cf58056b458b8cbe0cc4b15913ef1c7.jpg)

# 1.2 "Yield Curve" - Some Terminology & Math

# Contents

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/696bd7f2933b14899e2655e19d18ae1d8ecd9775200ec60798cc7e760a396f86.jpg)

# "Yield Curve" - Some Terminology & Math

- General terms for the graph of rates versus maturity  
- "Yield Curve", "Term Structure of Interest Rates", "Forward Curve", "Zero Curve"
- Specific mathematical terms:
- "Yield-to-Maturity": "average" discount rate for a bond  
- "Zero rate" or "Spot rate": discount rate for a specific maturity  
- "Forward rate": discount rate between two dates

Write 2yr swap (coup  $1.162/yr, PV=$ 100) various ways

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/a298c7f1aa1648750ac60eff11207a3facde7444724c4dcd5023c243b28bd754.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/940decf8a667c19b3b10ac8053c7b6fe1ad71b034b24872231d937f3d157a836.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b69e5071598d862384153e2cfce25a4ed3a40fdcd1e65d21c25e90f13f93ca34.jpg)

# Yield, Zero, Forward for 2-year Swap

Write 2yr swap (coup  $1.162/yr, PV=$ 100) various ways

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/507b0f69d529822d988660556605220f983a3a2edb8d9c074a60d543e061e44d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/53522e16d7539c0843545e672f384c0b02fc5c5f898718593890cbbe09e3b910.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/693fc124b34bbbdfc560019a1580950fb21b2b7c4e71fd06b0d2a619c4420ed9.jpg)

$$
Y T M: P V = \frac {1 . 1 6 2 / 2}{(1 + y / 2)} + \frac {1 . 1 6 2 / 2}{(1 + y / 2) ^ {2}} + \dots + \frac {1 0 0}{(1 + y / 2) ^ {4}}
$$

$$
Z e r o: P V = \frac {1 . 1 6 2 / 2}{(1 + z _ {5} / 2)} + \frac {1 . 1 6 2 / 2}{(1 + z _ {1} / 2) ^ {2}} + \dots + \frac {1 0 0}{(1 + z _ {2} / 2) ^ {4}}
$$

$$
F w d: P V = \frac {1 . 1 6 2 / 2}{\left(1 + f _ {0 \rightarrow . 5} / 2\right)} + \frac {1 . 1 6 2 / 2}{\left(1 + f _ {0 \rightarrow . 5} / 2\right)\left(1 + f _ {5 \rightarrow 1} / 2\right)} + \dots + \frac {1 0 0}{\left(1 + f _ {0 \rightarrow . 5} / 2\right) \cdots \left(1 + f _ {1 . 5 \rightarrow 2} / 2\right)}
$$

Here they are all the same number (1.162%sab) - flat curve 0-2 years

# Zero (Spot) vs Forward: Simple Relationship

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

# Actual Bonds - Nothing Simple

Textbook highlights "stripped" or zero-coupon Treasuries

- Dealers pull out each coupon and sell it separately - Treasury makes it easy

"Zero-Coupon Bond"

Bond with single final payment ($100) and coupon = $0  
Particularly simple  

- BUT, most actively-traded bonds are coupon bonds

For actual bonds and bond yields, nothing simple: read my paper (Canvas & https://papers.ssrn.com/abstract=994870)

- Dealers use coupon bonds to calculate zero-coupon rates (not vice-versa)

Paper on estimating forward rates: "Fitting Forward Rates to Market Data" https://papers.ssrn.com/abstract=994870

# 1.3 Calculating "Yield Curve" - 2yr & 5yr Example

# Contents

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/836034bbc420d1cd903abb6a39403fd43ac61db887e2e365c24ba93593f98f0a.jpg)

# Solving for Forward: Split 5yr into Two: 0-2 & 2-5 Years

We can forward value the  $1.721\%$  coupon to get FV as of yr 2

Then we calculate yield for that forward bond

- Result is  $2.111\% \mathrm{stab}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/65bb65539acd681c203f473b829e8a80b70fd7f6cd3280b17916cc4a823e5bb7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/0a5dee6fa4a494137c464383d8d164137b5b7d38a8dba6c83fb1e9e2357af78d.jpg)

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Zero sab</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.162%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>1.731%</td></tr><tr><td>10-year</td><td>100</td><td>$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.216%</td></tr></table>

I have verified these from the spread-sheet "yld_fwd6.xls"

For reference, here the last column are forward rates, cc

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Fwd Rate cc</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.1586%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>2.0999%</td></tr><tr><td>10-year</td><td>100</td><td>$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.6849%</td></tr></table>

Split 5yr into Two: 0-2 & 2-5 Years

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>1.162</td><td>-100</td><td>0.8605</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>98.87222</td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>6</td><td></td><td>-98.8722</td><td>0.8605</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>2.111</td><td></td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/ac7773613cac37a2e8050067f5ffd2de4ed344d7d635cae45668a7d92a87c425.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/44eef77d10aaa61f2d8e108174d330285ececd0105024a7f951401880a501e5a.jpg)

Yield as "Average" of Forward Rates

$$
P V _ {5 y r} = \frac {1 . 7 2 1 / 2}{(1 + y _ {5} / 2) ^ {1}} + \frac {1 . 7 2 1 / 2}{(1 + y _ {5} / 2) ^ {2}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + y _ {5} / 2) ^ {1 0}} + \frac {1 0 0}{(1 + y _ {5} / 2) ^ {1 0}}
$$

$$
\begin{array}{l} {P V _ {5 y r}} = {\frac {1 . 7 2 1 / 2}{(1 + f _ {0 \rightarrow 2} / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + f _ {0 \rightarrow 2} / 2) ^ {4}}} \\ + \frac {1}{(1 + f _ {0 \rightarrow 2} / 2) ^ {4}} \left[ \frac {1 . 7 2 1 / 2}{(1 + f _ {2 \rightarrow 5} / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + f _ {2 \rightarrow 5} / 2) ^ {6}} + \frac {1 0 0}{(1 + f _ {2 \rightarrow 5} / 2) ^ {6}} \right] \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b081c360331b207a719a8ee4c3eeb82dbf4a58a80d2efea6e30b9e7ab0df0816.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/00daf4270e1aaf2e45839b5ca1f648a473a95c08f248d961ea60fc133bb1fabc.jpg)

Solving Equation for  $2\rightarrow 5$  -yr Forward

$$
\begin{array}{l} {P V _ {5 y r}} = {\frac {1 . 7 2 1 / 2}{(1 + f _ {0 \rightarrow 2} / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + f _ {0 \rightarrow 2} / 2) ^ {4}}} \\ + \frac {1 . 7 2 1 / 2}{\left(1 + f _ {0 \rightarrow 2} / 2\right) ^ {4} \left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2 + 1 0 0}{\left(1 + f _ {0 \rightarrow 2} / 2\right) ^ {4} \left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {6}} \\ \end{array}
$$

$$
\begin{array}{l} 1 0 0 = \frac {1 . 7 2 1 / 2}{(1 + . 0 1 1 6 2 / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + . 0 1 1 6 2 / 2) ^ {4}} \\ + \frac {1}{(1 + . 0 1 1 6 2 / 2) ^ {4}} \left[ \frac {1 . 7 2 1 / 2}{(1 + . 0 2 1 1 1 / 2) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{(1 + . 0 2 1 1 1 / 2) ^ {6}} + \frac {1 0 0}{(1 + . 0 2 1 1 1 / 2) ^ {6}} \right] \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b872a920910e7d3aa7e3525ab2dc09d79a80f9ca04959deeffe4b736a5493960.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/f2c3d762ca432d5152817390f257eac1366bb3004d6e5ef2169ef5ba501651a0.jpg)

NB - this is using  $2\mathrm{p / yr}$

The point here is that we know the  $0 - > 2$  year rate from the 2-yr bond. We should use that, and then ask "what is the  $2 - > 5$  yr forward?"

# 1.4 Mathematics of Forward and Zero (Spot) Rates - Skip This Section Contents

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
(1 + z _ {2}) = \left[\left(1 + f _ {0 \rightarrow . 1}\right)\left(1 + f _ {1 \rightarrow 2}\right)\right] ^ {1 / 2}
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
2. Calculate the YTM from the  $PV(f_{0\rightarrow 1},f_{1\rightarrow 2}, \text{coupon} = 1.162)$  
3. YTM function of forwards and coupon:  $(y = y(f_{0\rightarrow 1},f_{1\rightarrow 2},\text{coupon} = 1.162))$

YTM for each bond will be its own average

- Different for each maturity and coupon

Zero and Forward Rates Easier with Continuous Compounding

$\mathbf{df}_{t}$  Discount Factor for date  $t$ , to discount a cash flow at date  $t$  back to present value today (PV of  $\$1$ ).

$\mathbf{f}_{\mathbf{cc}}(\mathbf{u})$  (Instantaneous) Forward Rate at date  $u$

$\mathbf{z}_{\mathbf{cc}}(t)$  Zero Rate (also called Spot Rate), or the discount rate that applies for discounting back to today from a future date  $t$ .

$\mathbf{f_{t1 - > t2}}$  Forward Rate between  $t_1$  to  $t_2$ , or the discount rate that applies from  $t_1$  to  $t_2$ , that is for discounting back to  $t_1$  from a more distant date  $t_2$ .

$$
P V = \sum_ {t} C F _ {t} d f _ {t}
$$

$$
d f (t) = e x p \left(- t \cdot z _ {c c} (t)\right) = e x p \left(- \int_ {0} ^ {t} f _ {c c} (u) d u\right)
$$

$$
z _ {c c} (t) = \frac {1}{t} \int_ {0} ^ {t} f _ {c c} (u) d u \quad f _ {t 1 \rightarrow t 2} = \frac {1}{t 2 - t 1} \int_ {t 1} ^ {t 2} f _ {c c} (u) d u
$$

Example, 2, 5, 10yr

Example Bonds and Implied Forward Rates

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Zero sab</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.162%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>1.731%</td></tr><tr><td>10-year</td><td>100</td><td>$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.216%</td></tr></table>

With the forward or zero rates, we can PV any CF

$$
d f (t) = \frac {1}{(1 + z _ {a b}) ^ {t}} = e x p (- t \cdot z _ {t}) = e x p \left(- \int_ {0} ^ {t} f (u) d u\right)
$$

$$
z _ {c c} (t) = \frac {1}{t} \int_ {0} ^ {t} f _ {c c} (u) d u = \frac {1}{t} \ln \left(\frac {1}{d f (t)}\right) \quad z _ {a b} (t) = \left(\frac {1}{d f (t)}\right) ^ {(1 / t)}
$$

$$
f _ {c c} (t 1 \rightarrow t 2) = \frac {1}{t 2 - t 1} \int_ {t 1} ^ {t 2} f _ {c c} (u) d u \quad f _ {a b} (t 1 \rightarrow t 2) = \left(\frac {d f (t 1)}{d f (t 2)}\right) ^ {(1 / (t 2 - t 1))}
$$

# 1.5 PV for New 4-yr Bond: Using Forward and Zero (Spot) Rates Contents

# Using Forward Rates: PV for Arbitrary CFs

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Zero sab</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.162%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>1.731%</td></tr><tr><td>10-year</td><td>100</td><td>$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.216%</td></tr></table>

What is PV for 4yr,  $2\%$  bond? Or swap? Break into two as before

1. Bond from yr 4 back to yr 2: 2yr  $2\%$  coupon bond at  $2.111\%$  sab  
2. "Bond" from yr 2 (FV not 100) back to yr 0: 2yr  $2\%$  "bond" (with FV not 100) at  $1.162\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/411537d7ddd56c5d7ea3893d0012c3e099833ccb56a7ff5b5b0b2250a018b06b.jpg)

4yr,  $2\%$  bond,  $\mathbf{PV} = 101.4406$  yield  $= 1.627$

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>2.111</td><td></td><td>1.0</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-99.7837</td><td></td><td></td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>1.162</td><td></td><td>1.0</td><td>99.7837</td></tr><tr><td>Solve For</td><td></td><td></td><td>-101.4406</td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/2f35c46a09fa90310b43b82e8170ae1bc6fbcf9b5a1e3855ba80154ded1e8e76.jpg)

Note a few things:

- Previous version of this slide had "yield  $= 1.574$  but this was an error by leaving  $\mathrm{FV} = 99.7837$  
- YTM for this 4yr  $2\%$  coupon bond is  $1.627\%$ . But the par rate for this set of forwards is  $1.6282\%$ . The difference is (of course) because the par bond is the coupon (\& yield) for a bond with  $\mathrm{PV} = 100$ .

The formula for a par bond is

$$
1 0 0 = c \cdot P V (\S 1 a n n u i t y) + P V (\S 1 0 0)
$$

In this case

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>2.111</td><td></td><td>0.5</td><td>0</td></tr><tr><td>Solve For</td><td></td><td></td><td>-1.948319</td><td></td><td></td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>1.162</td><td></td><td>0.5</td><td>1.948319</td></tr><tr><td>Solve For</td><td></td><td></td><td>-3.874974</td><td></td><td></td></tr><tr><td>Given</td><td>4</td><td>2.111</td><td></td><td>0</td><td>100</td></tr><tr><td>Solve For</td><td></td><td></td><td>-95.887099</td><td></td><td></td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>4</td><td>1.162</td><td></td><td>0</td><td>95.887099</td></tr><tr><td>Solve For</td><td></td><td></td><td>-93.690678</td><td></td><td></td></tr></table>

$$
1 0 0 = c \cdot P V (\S 1 a n n u i t y) + P V (\S 1 0 0)
$$

$$
1 0 0 = c \cdot 3. 8 7 4 9 7 4 + 9 3. 6 9 0 6 7 8
$$

and so  $c = 1.6282$

4yr,  $2\%$  bond,  $\mathrm{PV} = 101.4406$ , yield  $= 1.627$

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Zero sab</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.162%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>1.731%</td></tr></table>

<table><tr><td></td><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td></tr><tr><td>Given</td><td>8</td><td></td><td>-101.4406</td><td>1.0</td><td>100</td></tr><tr><td>Solve For</td><td></td><td>1.627</td><td></td><td></td><td></td></tr></table>

- 4-yr yield is "avg" of 2-yr & 5-yr  
- Between ytm for 2yr & 5yr  
- Need fwd rates to figure out precise 4yr ytm

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/98fa470ff34b7b0624f049708f6d2ac023bfc3b611d1b2aa96b06998aa3141f5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/cda0f23d-ff5d-4f20-bae2-7d01d7e8f6a6/b034560e49931d1f168f0db4dc63647d17dfc64c18c89142d35b26323618b13c.jpg)

# References

# Bond Sensitivity: BPV, DV01, and Duration


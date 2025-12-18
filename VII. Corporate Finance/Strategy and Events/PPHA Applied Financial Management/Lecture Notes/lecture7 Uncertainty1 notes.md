---
parent_directory:
title: PV for Uncertain Cash Flows
tags:
aliases:
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: PV for Uncertain Cash Flows
---

# PV for Uncertain Cash Flows

Lecture 7

Thomas S. Coleman

10 April 2023 Draft April 12, 2023

# Outline

# Contents

1 Uncertainty versus Risk 1  
2 Problem - We Don't Know How to PV Uncertain CFs (notes) 2.0.1 Section II of "Practical Guide to Yield Curves" (Canvas). Plus lecture notes 2

2.1 We Think We're Smart - But Can't PV FIS 2  
2.2 Simple Example for Solution 4  
2.3 Program for Valuing Uncertain CFs 5

3 PV for Uncertain CFs: Utility and Certainty Equivalent 7

3.1 Defining Certainty Equivalent - CF Equivalent to Utility 7  
3.2 Risk-Adjusted Discounting: Adjust CFs 10  
3.3 Return to UST & FIS 12

4 Securitization 15

# 1 Uncertainty versus Risk

Section II of "Practical Guide to Yield Curves, Discounting, and Derivatives" (Canvas); ch 2 of "Practical Guide to Risk Mgmt" (Amazon or CFA)

[?]

What Is Uncertainty? What is Risk?

Uncertainty: the spread of cash flows, the cause of risk

Distribution of cash flows,  

- Spread, often summarized by Standard Deviation

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/b340c39a98653ef74598f49434fd8f1f1fed878969059287ff50ad1a83b900cf.jpg)

Risk: the price or value we assign to the Uncertainty

- Difference in PV between certain and uncertain CFs

# We are all Sloppy about Uncertainty vs Risk

Everyone uses "Uncertainty" and "Risk" interchangeably

- "Uncertainty" is about nature - spread of CFs  
- "Risk" is about us - how much we love or hate uncertainty

# Standard Deviation (Volatility) - Measures Uncertainty

Reminder about Standard Deviation

- Simply a convenient way to measure spread of distribution

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/5e4fc5bfc4df3dae437c3967ef0364dd5f6e263315f5cfe9c2cac1705b23114c.jpg)

We will often use Standard Deviation

- But nothing magical about it - sometimes use other measures

# 2 Problem – We Don't Know How to PV Uncertain CFs (notes)

2.0.1 Section II of "Practical Guide to Yield Curves" (Canvas). Plus lecture notes [?]

# 2.1 We Think We're Smart - But Can't PV FIS

# Contents

# We Think We're Smart, But Why Different Yields for UST & FIS?

Turns out we don't even how to PV our FIS bond Let's look at UST & FIS, and calculate yields

- UST:  $2.25\%$  coupon, 15-nov-25 (31-dec-15)  $\mathrm{P} = 99.84375$ ,  $\mathrm{Y} = 2.268\%$ .

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>A/A Semi</td><td>12.312015</td><td>11.152025</td><td>2.25</td><td></td><td>99.84375</td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>2.268</td><td></td></tr></table>

FIS: 30/360, semi  $5\%$  coupon, 15-oct-25 (31-dec-15)  $\mathrm{P} = 103.626$ $\mathrm{Y} = 4.536\%$

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>360 Semi</td><td>12.312015</td><td>10.152025</td><td>5</td><td></td><td>103.626</td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>4.536</td><td></td></tr></table>

These UST and FIS prices (and yields) are from December 2015.

# Our Discounting for FIS Totally Wrong

- UST:  $2.25\%$  coupon, 15-nov-25 (31-dec-15)  $\mathrm{P} = 99.84375$ ,  $\mathrm{Y} = 2.268\%$ .  
FIS:  $5\%$  coupon, 15-oct-25 (31-dec-15)  $\mathrm{P} = 103.626$ $\mathrm{Y} = 4.536\%$

This cannot be right - such huge discounting differences

We should discount CFs at (roughly) same rate. Problem is promised CFs:

- The UST CFs will be paid; the FIS promise may be broken  
 - FIS maybe 90% chance $5, but 10% $0. Can't even draw CF diagram!

Fact is, we don't really have a clue how to PV the FIS bond!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/78bf95be57974b3b72577f0776ec8676a3a6f08a400c313176c787b2d54f1251.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/e1d6d27afbaaef6b3f7e016304d2b805cf5a11cc78d487cfd15dfe8b02dd55eb.jpg)

We often draw the future FIS cash flows as if they were a single value but what we always put down is the "promised" CF, or maybe the expected (average) CF. That simple diagram misleads us into thinking that we understand when in fact we don't have a clue

# CF Diagrams Misleading - Can't Discount (so far)

We draw FIS and UST same way - but actually very different

- UST: actual known future CFs - we discount to get PV:  $\frac{CF}{(1 + y)^n}$  
FIS: promised CF

- Uncertain, distribution, say 90% $5, 10% $0

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/74ec9c7e4b96eca59d80bd0a2f16bf8b5dcf003c05af053aa6948ce0dadace4a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/149a613b6269f0ba945a1dcb34cbb04c25aa09751b930c02f00898fa6342759e.jpg)

Pictures make it look like we can discount, but we can't (so far)

Let's turn to a simplified example to show us why we can't do simple discounting, and how we can get back to something that looks and acts like simple discounting.

# 2.2 Simple Example for Solution

# Contents

# Simple Example Shows Problems & Solutions

Real Estate project: invest today, get uncertain payout in 1 year

Cash flow in one year expected \$800  

- Equal chance low (\$711.41) or high (\$888.59)  
- (Known) value today is \$714.29 and risk-free rate is 7%

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/12b52d138abbfddcaf29262ca2ccb4d37a856051a64822feb6f8643574a648b6.jpg)  
Value of Office Building

- If future CF known, get PV by discounting  
Uncertain CFs: how do we "discount" multiple CFs???  
- Don't even know how to draw CF diagram

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/32ed845888350bd29c73990c13ea15763e34677f89a3c553345e3fdbe3893bae.jpg)  
Discounting for Known (Certain) CFs

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/6dda4a60b1cbce64e54888db97b3bb6c95027c3cd627d73242f328736f17ad21.jpg)  
How do we Discount with Multiple Uncertain CFs?

# We Really and Truly Don't Know What to Do

This is a fundamental conceptual problem

Right picture (uncertain CFs) - don't know what to discount or how

- Bigger problem than people usually let on  
- Solution looks like simple discounting  
- Allows us to pretend problem doesn't exist

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/077fb8b25769082867fe883436750d447612a4ee9d64d8e114f6fd89586c6d84.jpg)  
But I want you to understand why risk-adjusted discounting works

This example happens to be derived from an example in Brealey & Myers textbook. From my edition, p. 20 & 232

# 2.3 Program for Valuing Uncertain CFs

# Contents

# Our Goal - Method for "Discounting" Uncertain CFs

Two fundamental issues we have to address:

1. How to get convert uncertain CFs into (equivalent) certain CFs - this lecture

- Tool to convert uncertain CFs (distribution) to single PV today  
- Analogue of simple discounting  $(PV = \frac{CF}{(1 + y)^n})$  applied to distribution

2. What is the right "price" of uncertainty - future lectures

This lecture is about first: the how

Preview of answer - looks just like discounting known CFs

- Convert distribution to promised or expected CF  
- Add risk premium and discount at risk-adjusted rate:  $\frac{P r o m i s e d C F}{(1 + y + r p)^n}$

# Framework for Discounting Uncertain CFs

Theory issues we need to address

- What do we mean when we say "uncertain cash flows"? (Answer: Cash flow distribution - graph of amount versus probability)  
- Why can't we just use discounting as we have for certain (known) cash flows? (Answer: Multiple values, using average CFs simply does not work - Expected utility and concavity.)  
- What is uncertainty versus risk? (Answer: Uncertainty = distribution; risk = cost or price of uncertainty - Certainty Equivalent.)  
- How do we adjust for uncertainty? (Answer: Adjust cash flow distribution until the expected value of the adjusted CFs equals the CE.)

Practical issue we need to address

- We want a method that works just like discounting, so we can use all the PV and NPV ideas we have worked on

# We Have Two Methods - Risk-Adjusted & Risk-Neutral

Both methods adjust the CF distribution

Risk-Adjusted Discounting - we use this most often

- Adjust CFs themselves  
- But looks like discounting:  $CF_{adj} = \frac{CF_{orig}}{1 + rp}$  then  $PV = \frac{CF_{adj}}{1 + y}$  
Used for most of our problems

Risk-Neutral Discounting - use this for options

- Adjust probabilities  
Used for derivatives, mainly options  
- "Risk-neutral valuation" is bad name - really "Risk-adjusted probabilities"

You won't read this lecture in most texts, but it is the way things work

The "problem" with risk-adjusted discounting (risk premium) is that it works so well we forget that we are in fact adjusting the whole distribution, and we start thinking we are discounting the average value. But really what we are doing is

1. Adjusting the CF distribution until the average of this adjusted distribution equals the certainty equivalent

- This removes the risk premium - produces the certainty equivalent  
- We do this b multiplicatively adjusting the whole distribution

# 3 PV for Uncertain CFs: Utility and Certainty Equivalent

# 3.1 Defining Certainty Equivalent - CF Equivalent to Utility Contents

# Value of Distribution - Look at Utility

Two things we need to do to PV uncertain CFs

1. Transform future known (certain) cash flows (CFs) into present value  
- We know how to do this - Discounting

2. Transform distribution of uncertain CFs into a single known value.

- We do not yet have any idea how to do this.  
- Expected Utility - Certainty Equivalent - single CF replaces distribution  
- Want "trick" allowing us to continue using Average (\$800)

Need to go back to basics: think about utility and value of the distribution

- How do we value the CF distribution?  
- Simplify by ignoring discounting, stick to yr 1  
- Want method to convert distribution to single, certain, known value  
- Call this Certainty Equivalent  
 - Also: trick to use \$800

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/af199b2bed17e79a639086613fd0a033a24f173540d0616e3ef2d9df174765f8.jpg)  
Value of Office Building

# Averaging Utility - Not CFs

We want utility or value of those two possibilities

We have to average the utility not CFs (expected utility not expected CF)

$$
E U = U \left(C _ {l}, C _ {h}\right) = p \cdot u \left(C _ {l}\right) + (1 - p) \cdot u \left(C _ {h}\right) \neq u \left(p \cdot C _ {l} + (1 - p) \cdot C _ {h}\right)
$$

To make concrete, Constant Relative Risk Aversion:  $u(C) = \frac{C^{1 - \gamma}}{1 - \gamma}$ , with  $\gamma = 8$

<table><tr><td></td><td>Low</td><td>Avg</td><td>High</td></tr><tr><td>Probability</td><td>1/2</td><td></td><td>1/2</td></tr><tr><td>CF Dist&#x27;n</td><td>$711.411</td><td></td><td>$888.59</td></tr><tr><td>Expect CF</td><td></td><td>\$800</td><td></td></tr><tr><td>Utility</td><td>-15.490E-22</td><td></td><td>-3.266E-22</td></tr><tr><td>Expected Utility</td><td></td><td>-9.378E-22</td><td></td></tr><tr><td>Certainty Eqv</td><td></td><td>764.28</td><td></td></tr></table>

But we can always ask "what single CF is equivalent to our utility?"

Solve for Certainty Equivalent:

$$
U \left(C _ {C E}\right) = E U \left(C _ {l}, C _ {h}\right) = U \left(C _ {l}, C _ {h}\right) = p \cdot u \left(C _ {l}\right) + (1 - p) \cdot u \left(C _ {h}\right)
$$

$\gamma = 8$  (a reasonable number which produces reasonable risk aversion)

Certainty Equivalent - CF that Gives Correct Utility

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/5def918447a545356fa69565ae70179ee1ef7ea0574fff91f1b48c9c1661672f.jpg)

Solve for Certainty Equivalent:

$$
U \left(C _ {C E}\right) = E U \left(C _ {l}, C _ {h}\right) = U \left(C _ {l}, C _ {h}\right) = p \cdot u \left(C _ {l}\right) + (1 - p) \cdot u \left(C _ {h}\right)
$$

Avg utility (exp utility), not CF (exp CF)

$$
E U = U \left(C _ {l}, C _ {h}\right) = p \cdot u \left(C _ {l}\right) + (1 - p) \cdot u \left(C _ {h}\right) \neq u \left(p \cdot C _ {l} + (1 - p) \cdot C _ {h}\right)
$$

But we can always ask "what single CF is equivalent to our utility?"

Call this certainty equivalent

To make concrete, Constant Relative Risk Aversion function:  $u(C) = \frac{C^{1 - \gamma}}{1 - \gamma}$  with  $\gamma = 8$  (a reasonable number which produces reasonable risk aversion)

<table><tr><td></td><td>Low</td><td>Avg</td><td>High</td></tr><tr><td>Probability</td><td>1/2</td><td></td><td>1/2</td></tr><tr><td>CF Dist&#x27;n</td><td>$711.411</td><td></td><td>$888.59</td></tr><tr><td>Expect CF</td><td></td><td>\$800</td><td></td></tr><tr><td>Utility</td><td>-15.490E-22</td><td></td><td>-3.266E-22</td></tr><tr><td>Expected Utility</td><td></td><td>-9.378E-22</td><td></td></tr><tr><td>Certainty Eqv</td><td></td><td>764.28</td><td></td></tr></table>

$\pmb{p}$  = probability of low outcome

\(C_{l} =\) low cash flow (\\(711.41k in our example)

\(C_{h} =\) high cash flow \((\\) 888.59k\) in our example)

$$
\boldsymbol {u} (C) = \text {u t i l i t y o f c a s h f l o w C}
$$

Certainty Equivalent:

$$
U \left(C _ {C E}\right) = E U \left(C _ {l}, C _ {h}\right) = U \left(C _ {l}, C _ {h}\right) = p \cdot u (C _ {l}) + (1 - p) \cdot u (C _ {h})
$$

# Expected Utility And Certainty Equivalent

For our simple distribution (Figure ??) the average of the cash flows (the expected cash flow) is  \$800k. Most people, however, would rather have\$ 800k for sure (probability 1) rather than a 50/50 chance of high or low - most people are risk averse. Whatever the attitude towards risk, we can use utility theory and represent the value in expected utility terms:

$$
E U = U \left(C _ {l}, C _ {h}\right) = p \cdot u \left(C _ {l}\right) + (1 - p) \cdot u \left(C _ {h}\right) \tag {1}
$$

where

$\pmb{p}$  = probability of low outcome

\(C_l = \text{low cash flow (\)711.41k in our example)}\)

\(C_{h} =\) high cash flow (\\(888.59k in our example)

$\pmb{u}(\pmb{C}) = \text{utility of cash flow } C$

The fundamental issue is that utility is usually not linear  $(u(Y) \neq Y)$  and so the expected utility does not equal the utility of expected income:  $EU \neq u(p \cdot Y_l + (1 - p) \cdot Y_h)$ . If utility were linear then we would have risk neutrality and we could just take expectations.

We can, however, calculate what cash flow would correspond to the expected utility EU (-9.4E-22 for our sample utility function). This is the Certainty Equivalent, the single cash flow that is valued the same (in utility terms) as the distribution of the two cash flows, \$711.41 and \$888.59. We just need to solve

$$
U \left(C _ {C E}\right) = E U \left(C _ {l}, C _ {h}\right) = U \left(C _ {l}, C _ {h}\right) = p \cdot u (C _ {l}) + (1 - p) \cdot u (C _ {h}).
$$

In our case (with our sample CRRA utility function,  $\gamma = 8$ ), this is:

$$
- 9. 3 7 8 E - 2 2 = \frac {C _ {C E} ^ {1 - \gamma}}{1 - \gamma}
$$

and the Certainty Equivalent turns out to be \(764.28. This is the certain cash flow with the same value as the distribution of cash flows. More generally, the certainty equivalent is the solution to:

$$
u (C E) = p \cdot u \left(C _ {l}\right) + (1 - p) \cdot u \left(C _ {h}\right)
$$

It is no accident that the certainty equivalent from our utility example is the same as the market value, the certain value determined by the market. In a sense, this has to be the case: the market value is the cash value adjusted for the risk of the distribution of risky cash flows.

Distribution  $\rightarrow$  Utility  $\rightarrow$  Certainty Equivalent

So far we have converted distribution to a single number, using expected utility

Next we see how to use Certainty Equivalent to get PV

1. Risk-Adjusted Discounting (risk premium): adjust CFs  
2. Risk-Neutral Discounting: adjust probabilities

Finally, ask how we get the adjustments (to CFs or probabilities)

From the market

# 3.2 Risk-Adjusted Discounting: Adjust CFs

# Contents

"Trick" Allows Us to Use Original Average - Adjust CFs

Now perform a backwards trick: adjust CFs (in a neat way) so that

$$
C E = p \cdot C F _ {a d j} ^ {l o} + (1 - p) \cdot C F _ {a d j} ^ {h i}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/a748e8ff61784b5c7d318c1ac29ba978f4903f2e12cd81bdb3091bfc06cf97c5.jpg)

# Adjusting CFs by Risk Premium – To Use Original Average

We have multiple steps:

1. Get CE (certainty equivalent) from dist'n using utility

$$
u (C E) = p \cdot u \left(C _ {l}\right) + (1 - p) \cdot u \left(C _ {h}\right)
$$

$$
u (7 4 6. 2 8) = \frac {1}{2} \cdot u (7 1 1. 4 1) + \frac {1}{2} \cdot u (8 8 8. 5 9)
$$

2. Adjust CFs so they average to CE:

$$
C E = p \cdot C F _ {a d j} ^ {l o} + (1 - p) \cdot C F _ {a d j} ^ {h i}
$$

$$
7 6 4. 2 8 = \frac {1}{2} \cdot 6 7 9. 6 6 + \frac {1}{2} \cdot 8 4 8. 9 3
$$

3. Write adjustment as  $1 / 1 + rp$ :

$$
C E = p \cdot \frac {C F _ {o r i g} ^ {l o}}{1 + r p} + (1 - p) \cdot \frac {C F _ {o r i g} ^ {h i}}{1 + r p}
$$

$$
C E = \frac {1}{1 + r p} \left[ p \cdot C F _ {o r i g} ^ {l o} + (1 - p) \cdot C F _ {o r i g} ^ {h i} \right] = \frac {C F _ {o r i g} ^ {a v g}}{1 + r p}
$$

$$
C E = p \cdot \frac {C F _ {o r i g} ^ {t o}}{1 + r p} + (1 - p) \cdot \frac {C F _ {o r i g} ^ {h i}}{1 + r p}
$$

$$
7 6 4. 2 8 = \frac {1}{1 + . 0 4 6 7 3} \left[ \frac {1}{2} \cdot 7 1 1. 4 1 + \frac {1}{2} \cdot 8 8 8. 5 9 \right] = \frac {8 0 0}{1 + . 0 4 6 7 3}
$$

4. Discount CE at risk-free, original avg CF at  $rf + rp$ :

$$
P V = \frac {C E}{1 + r f} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + r f) (1 + r p)} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + y _ {\text {r i s k y}})}
$$

$$
7 1 4. 2 9 = \frac {7 6 4 . 2 9}{1 + . 0 7} = \frac {8 0 0}{(1 + . 0 7) (1 + . 0 4 6 7 3)} = \frac {8 0 0}{(1 + . 1 2)}
$$

Looks like regular yield-to-maturity, just a higher "risk-adjusted" rate

Now perform a backwards trick: adjust CFs (via  $CF_{adj} = \frac{CF_{orig}}{1 + rp}$ ) so that

$$
C E = p \cdot C F _ {a d j} ^ {l o} + (1 - p) \cdot C F _ {a d j} ^ {h i}
$$

$$
7 6 4. 2 8 = \frac {1}{2} \cdot 6 7 9. 6 6 + \frac {1}{2} \cdot 8 4 8. 9 3.
$$

This looks pretty arbitrary but it turns out to be very general and works wonderfully well. Let's continue on for a moment and write this adjustment as  $1 / 1 + \mathrm{rp}$ ):

$$
\begin{array}{l} C E = p \cdot \frac {C F _ {o r i g} ^ {l o}}{1 + r p} + (1 - p) \cdot \frac {C F _ {o r i g} ^ {h i}}{1 + r p} \\ = \frac {1}{1 + r p} \left[ p \cdot C F _ {o r i g} ^ {l o} + (1 - p) \cdot C F _ {o r i g} ^ {h i} \right] \\ = \frac {C F _ {\text {o r i g}} ^ {a v g}}{1 + r p} \\ \end{array}
$$

Now we have something that looks surprisingly like discounting. In fact, we can now discount back to today because the Certainty Equivalent is a known and certain cash flow so we can discount with the risk-free rate, just as we have been doing for any known cash flow:

$$
P V = \frac {C E}{1 + r f} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + r f) (1 + r p)} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + y _ {\text {r i s k y}})}
$$

So now we can use the average CF (or promised CF) from the distribution, which is usually easy to get, and use this single number to discount in the way we always have, but with the additional adjustment of the  $\frac{1}{1 + rp}$ .

# Adjusting CFs Looks Like Discounting Average CF

Discounting Certainty Equivalent at Risk-Free Rate

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/de2dfb12eed6e9d47ca51308acc2f3604fc8f6912d42796bd05cbef0788fc142.jpg)

Discounting Avg (Promised) CF at Risk-Adjusted Rate

$$
P V = \frac {C E}{1 + r f} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + r f) (1 + r p)} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + y _ {\text {r i s k y}})}
$$

$$
7 1 4. 2 9 = \frac {7 6 4 . 2 9}{1 + . 0 7} = \frac {8 0 0}{(1 + . 0 7) (1 + . 0 4 6 7 3)} = \frac {8 0 0}{(1 + . 1 2)}
$$

Looks like regular yield-to-maturity, just a higher "risk-adjusted" rate

# 3.3 Return to UST & FIS

# Contents

# Return to UST & FIS

Apply our ideas of Risk Adjusted Discounting

- Ideas and theory can seem complicated

But using these ideas simple

- Everyone in financial markets uses them every day  
Calculate Yield, using "Promised CFs"

- Calculate as if the Promised CF is Known CF  
- Yield we get is "Risk Adjusted"
- I did for many years, without knowing or understanding or caring about the underlying theory

So let's go back to UST & FIS and see what happens

# FIS - Standard Yield Calculations - Promised CFs

Settle 31-dec-15 - Calculate FIS Yield using Promised CF Market gives us risk premium - spread = 4.536% - 2.268% = 227bp

- Embedded in bond prices - market gives us risk premium

<table><tr><td>31-dec-2015</td><td>Coupon</td><td>Maturity</td><td>Price</td><td>Yield</td></tr><tr><td>10-yr US Treasury</td><td>2.25%</td><td>15 nov-25</td><td>99.84375</td><td>2.268%</td></tr><tr><td>FIS</td><td>5.0%</td><td>15-oct-25</td><td>103.626</td><td>4.536%</td></tr></table>

- UST:  $2.25\%$  coupon, 15-nov-25 (31-dec-15)  $\mathrm{P} = 99.84375$ ,  $\mathrm{Y} = 2.268\%$ .

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>A/A Semi</td><td>12.312015</td><td>11.152025</td><td>2.25</td><td></td><td>99.84375</td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>2.268</td><td></td></tr></table>

Calculate FIS:  $5\%$  coupon, 15-oct-25 (31-dec-15)  $\mathrm{P} = 103.626$ $\mathrm{Y} = 4.536\%$

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>360 Semi</td><td>12.312015</td><td>10.152025</td><td>5</td><td></td><td>103.626</td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td>4.536</td><td></td></tr></table>

# Bond Market & FIS Example - Risk-Adjusted Yield

Market gives us risk premium - embedded in price (settle 31-dec-15)

- UST:  $2.25\%$  coupon, 15-nov-25  $\mathrm{P} = 99.84375$ ,  $\mathrm{Y} = 2.268\% \mathrm{stab}$

$$
- 1. 0 2 2 6 8 = (1 + r f)
$$

FIS:  $5\%$  coupon, 15-oct-25 P=103.626, Y=4.536%Sab

$$
- 1.04536 = (1 + r f) \cdot (1 + r p) \Rightarrow 1 + r p = 1.02218 \text {or} r p = 2.218 \%
$$

The UST CFs are known, the FIS only promised CFs, but CF diagram useful. We can just calculate yield, market gives us risk premium!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/5da5adacac894d634e3751232125367ed77969190e3dcc372f1685ce5e7de1a7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/f1a2c87009db372a7930028b9de9b23d4e1b8ec02acad6bc539b7e223cc4bc9e.jpg)

Generally use spread:  $\mathrm{rp} = 4.54\% -2.27\% = 227\mathrm{bp}$

# Risk Premium From Market Yields

For FIS 31-dec-2015, decompose sensitivity into discounting and credit

- UST:  $2.25\%$  coupon, 15-nov-25  $\mathrm{P} = 99.84375$ ,  $\mathrm{Y} = 2.268\% \mathrm{stab}$  
FIS:  $5\%$  coupon, 15-oct-25 P=103.626, Y=4.536%sab

Usually use approximation

- ${rp} \approx  y - {rf}$  
- 227bp = 4.54% - 2.27%

Overall (risky) yield separates into two parts:

1. Risk-free discounting  $(rf)$  - overall market  
2. Risk premium  $(rp)$  - specific to FIS (or whatever company)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/aaff38e167f6ae0a20a468d6b20edf49a9dc38a4f6885f9a27d0ce5aeb510f18.jpg)

# Alternative (less useful): Risk Premium in Dollars

Risk Premium  $(1 + rp)$  tells us value or price of uncertainty in rate or yield terms. Can also measure in up-front dollar terms

Discount FIS at UST (risk-free) yield  $(2.268\%)$ : what FIS would be if certain CFs  
FIS:  $5\%$  coupon, 15-oct-25 (31-dec-15)  $\mathrm{Y} = 4.536\%$ $\mathrm{P} = 103.626$

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>360 Semi</td><td>12.312015</td><td>10.152025</td><td>5</td><td>4.536</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>103.626</td></tr></table>

FIS:  $5\%$  coupon, 15-oct-25 (31-dec-15)  $\mathrm{Y} = 2.268\%$ $\mathrm{P} = 123.859$

<table><tr><td></td><td>Type</td><td>Settle</td><td>Mat</td><td>CPN%</td><td>YLD%</td><td>Price</td></tr><tr><td>Given</td><td>360 Semi</td><td>12.312015</td><td>10.152025</td><td>5</td><td>2.268</td><td></td></tr><tr><td>Solve For</td><td></td><td></td><td></td><td></td><td></td><td>123.859</td></tr></table>

Difference -  \$20.23 - is$  value of uncertainty

- But less useful than risk premium in yield (227bp)  
- 227bp applies every year, to any similar CFs

# 4 Securitization

# Contents

# Securitization - Pooling Assets & Cash Flows

Pooling of assets and repackaging of the underlying cashflows

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/31a2c454395519bab38b61ea5a43f635efacb18de3810b1e585c379e5917ac55.jpg)

# Examples

- Mutual Funds, hedge funds, Exchange Traded Funds  
- Mortgage-backed and asset-back securities  
Common Stocks  
- "Equity" (mutual fund) vs "bond" pools (MBS, "Securitization")

# Legal Structure

- "Fund" and "Manager" separate legal entities  
- Mutual Funds in US - Investment Co & Advisors Acts, 1940  
- Hedge Funds - often off-shore (eg Caymans) - tax & regulatory  
- Mortgage-backed and other asset-backed securities (bonds)

# Reasons for Pooling

- Spreads & Diversifies risk (mortgage-backed bonds)  
- Lowers cost (mutual funds); professional management (hedge funds)  
- Investors: Access to assets unavailable otherwise  
- Sponsors/Owners: Move assets off balance sheet (borrow)

# Securitization

- Pooling of assets and repackaging of the underlying cashflows  
- Often into bonds  
- Sometimes "trancheing" to create different payment or credit characteristics from those of the underlying assets

# Securitization Assets:

- Assets that go into the pool  
- Often fixed income instruments such as mortgages or loans or corporate bonds or credit card receivables

Securitization Liabilities:

- Often bonds but also mutual funds, common stocks  
- Sometimes structured in tranches ordered in terms of payment priority

# Examples

- Mutual Funds  
Hedge Funds  
- Mortgage-backed securities
- Pass-through (Agency - Fannie Mae & Freddie Mac - pass-throughs). Simply pool together a group of mortgages and pass through the income - payment of income and principal.  
- Tanched. Pool together a group of mortgages but sell different
- Other Asset-Backed securities - student loans, credit card receivables, even David Bowie's bond (1997 - revenues from 25 albums recorded before 1990)  
Common Stocks

- Not usually talked about as a securitization or pooled assets, but in many ways that is exactly what a share in a publicly-listed company is - a share in the cash flows generated by the pooled activities from the company.  
- Usually we talk about securitization of passive assets (things like other bonds or mortgages) and not active assets like for an on-going business.  
- This ties back nicely to the South Sea Co and the Mississippi Co, although the South Sea Co was truly a pooling of passive assets - simply government annuities
- Distinction between "equity"-type pools and "bond"-type pools
- Equity-type: mutual funds, hedge funds, ETFs. For these the investors get a proportionate share of whatever profits  
- Bond-type: Senior tranches for branched securities: promised CFs. Here investors are promised a CF. The pooling is valuable usually because it improves diversification and makes the "promise" more reliable, more certain to be paid.

# Legal Structure

- "Fund" and "Manager" separate legal entities
- Manager may be Corporation  
- Fund often a Trust or a Partnership or itself a Corporation  
– The Fund hires the the manager and pays a fee plus various expenses  
- The Fund will often have a Board of Directors who represent the interests of the shareholders (owners of the Fund and thus beneficiaries of the fund's assets)  
- Assets are held in custody for the fund. Custodian is hired by the Fund, legally responsible to the fund and the Board
- Mutual Funds in US
- Investment Company (fund) which holds assets and sells shares in itself - proportionate share of cash flows
- Investment Manager (manager) who manages the assets of the Investment Company. But a legally separate entity that cannot take the assets from the Investment Company  
- Investment Co Act 1940 - sets rules and regulations for Investment Co structure and operations  
- Investment Advisors Act 1940 
- rules and regulations for managers

Hedge Funds

- Often the "Fund" is off-shore - say Carmen islands - for tax and regulator reasons.
- Mortgage-backed and other asset-backed securities (bonds)
- Special Purpose Vehicle (SPV) - separate legal entity that holds the assets, sells securities that are usually more bond-like than equity-like  
- Investors are lending money to the SPV with the promise to get paid back - that promise may be a good or a poor promise.

# Reasons for securitization

- Spreads & Diversifies risk
- Big reason for mortgage-backed bonds. If you invest \$100k in one mortgage then if the homeowner defaults you are out. There may be only a 5% chance but on that you lose everything. But if you invest \$100k in a mortgage-backed bond with 1,000 mortgages then there's a pretty good chance that 5% will default but then you only lose 5%, and in any case you can price that in up-front because it becomes pretty certain how much you will lose (5% of your investment) rather than all or nothing.
- Lowers cost of access (mutual funds) or provides professional management expertise (hedge funds)

One of the biggest reasons for mutual funds and ETFs

- Helps monitor and discipline (maybe 1720, South Sea & Mississippi)
- This may have been a reasons for the South Sea Co and the Mississippi Co. Although they did it very poorly - in fact the South Sea managers were really fraudsters.  
- But the Bank of England that managed the government debt, while not really pooling the government assets, played this role.  
- Not something we think is necessary today for government debt, at least not in developed countries. But in 1720 could have been very valuable.
- Widens audience and market
- For investors can provide access to markets not available otherwise.

* E.g. for credit-card receivables, investors would have a hard time investing (buying) except through securitization.  
* David Bowie's records is another example - investors could not get invest if not securitized

- For Sponsors / Owners or assets, can be a way to "move assets off balance-sheet"

* What this really means is that it is a way to raise money, to borrow - collateralized.  
* e.g. mortgages. A bank makes mortgages, using its money to lend to homeowners.  
* It then pools those mortgages together, puts into an SPV, and sells bonds against those mortgages.  
* The investors are lending to the bank, with the mortgages as collateral.

# Pass-Through vs Trancheing (Waterfall)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/daa3f1a4-5858-41cb-8186-d3dbc3b8410a/c96cb0d88860d4cae7dddfa872bd29a7263771e75aad1758c566aabf4903033e.jpg)

# Outline

- Pass-through: all investors get same CFs
- Tranched: sell senior & junior (equity) tranches  
- Pre-specified rules ("waterfall") for how cash is distributed

# Simple Trancheing Example

"Senior": gets  $20\%$  of CFs, first priority  

- "Equity":  $80\%$  of CFs, but lowest priority  
Equity loses money first

Probability of  $10\%$  loss - pay back either  $\$ 100$  or  $\$ 90$

- Senior is first priority, always gets \$20 (100%) back  
- Equity suffers the loss, gets either  \$80 (100\%) or\$ 70 (87.5%)  
- Senior riskless, Equity more risky (lose more than  $10\%$  of original)

Pricing (5yr, \$5 coup, 5% risky, 4% risk-free yield)

- Underlying must be $100 (PV($5 @ 5%))  
 Senior now risk-free, must be $104.45 (PV($5 @ 4%) - pay \$20.89 for 20%  
- Equity implied  $98.89 (100 = .2^{*}104.45 + .8^{*}98.89) - pay$ 79.11 for 80%

<table><tr><td></td><td>Share of pool</td><td>PV ($)</td><td></td><td>$ Paid</td></tr><tr><td>Senior Tranche</td><td>20%</td><td>$104.4518</td><td>→</td><td>$20.8904</td></tr><tr><td></td><td></td><td></td><td></td><td>↓</td></tr><tr><td>Equity Tranche</td><td>80%</td><td>$98.8870</td><td>←</td><td>$79.1096</td></tr></table>

# Pass-through versus tranching

This detail (for example on trancheing) is not necessary for History of Financial Crises – for Applied Financial Management

- Pass-through: all investors get same cash-flows - proportional to their ownership (investment)  
- Tranched: the cash-flows are "tranched" according to some set of rules
- Assets pooled, but then cash flows are "tranched" according to some rule, and different classes of securities (shares in the pool) sold.

Example:

- \$100 of mortgages.  
 - Mortgage is 5yrs, 5% coupon, pays back \$100 in 5 years. Price \$100, yld = 5%  
* Current risk-free rate is 4%. 100bp spread (risky 5%, risk-free 4%)

- But this mortgage is risky.  $54\%$  chance that  $10\%$  of the mortgages will default on the final principal repayment

* 54% chance that all coupons will be paid but that 10% of the mortgages will not repay the final \$100  
 * in other words 54% chance you get \$90 instead of \$100 at the end

- Trancheing can change the risk profile. Here will will tranche into senior (with no risk) and equity (with the remaining or residual or increased risk)
- Make 2 branches: Split  $100\%$  (100 shares) into top  $20\%$  and bottom  $80\%$

* Top tranche is called the "senior" tranche - 20% of this pool is "senior"  
* Bottom tranche is called "equity" tranche - 80% of this pool is "equity"
* Senior tranche (top 20%) gets first priority for cash flows – either coupon or principal. Every \$1 that is supposed to come in, these shares get the first 20¢
* Equity tranche (bottom 80%) gets whatever is left. Every \$1 that is supposed to come in, these shares get whatever is left after paying the 20¢ to the top tranche  
 * Example: \$100 is promised. \$90 comes in. Senior tranche gets \$20 (20% of the \$100 promised). Equity tranche gets \$70 (what is left). Since the equity tranche was promised \$80, this \$70 is only 87.5% of what they were promised.  
 * Result: Overall loss was 10% (promised \$100, paid \$90). Senior tranche loss was 0% (promised \$20, paid \$20). Equity tranche loss was 12.5% (promised \$80, paid \$70).

Senior tranche has reduced risk, equity tranche increased risk

- Example of cash flow tranche or cash-flow cascade or waterfall (with  $20\%$  senior,  $80\%$  equity)

Promised CF = \$100, Actual CF = \$100  

<table><tr><td></td><td>Share of pool</td><td>$ Paid</td><td>% Paid</td></tr><tr><td>Senior Tranche</td><td>20%</td><td>\$20</td><td>100%</td></tr><tr><td>Equity Tranche</td><td>80%</td><td>\$80</td><td>100%</td></tr></table>

Promised CF = \$100, Actual CF = \$90  

<table><tr><td></td><td>Share of pool</td><td>$ Paid</td><td>% Paid</td></tr><tr><td>Senior Tranche</td><td>20%</td><td>\$20</td><td>100%</td></tr><tr><td>Equity Tranche</td><td>80%</td><td>\$70</td><td>87.5%</td></tr></table>

How do we price this? Actually very easy in this case.

- We know the price of the risky mortgages ( $100, 5\%$  yield) and the risk-free rate (4%, for risk-free cash flows)
- PV(risky mortgages) = \$100  
- PV(5% coupon @ 4% yield) = 104.4518
- The senior tranche is now risk-free so this must be priced at \$104.4518. We are selling 20% of the shares at this price, so this is $20.8904 ($104.4518*0.20). The balance we have to sell at \$79.1096 (to make the total \$100)

<table><tr><td></td><td>Share of pool</td><td>PV ($)</td><td></td><td>$ Paid</td></tr><tr><td>Senior Tranche</td><td>20%</td><td>$104.4518</td><td>→</td><td>$20.8904</td></tr><tr><td></td><td></td><td></td><td></td><td>↓</td></tr><tr><td>Equity Tranche</td><td>80%</td><td>$98.8870</td><td>←</td><td>$79.1096</td></tr></table>

Details for pricing of "mortgage bond"

- 5-year, 5% annual coupon, \$100 bullet re-payment (not amortizing like a true mortgage).  
- Chance that  $10\%$  of mortgages will fail to repay principal  
- Price \$100, so yield (risky yield) 5%  
- Risk-free rate  $4 \%$  , so risk-free bond PV(5yr bond,  $5 \%$  coupon,  $4 \%$  yield) = \$104.4518  
 - Assume that all coupons paid with certainty, 10% of principal will default with some probability (either no-default and get \$100, or yes-default at year 5 and get \$90)  
- Use risk-neutral (risk-adjusted) pricing:

$$
\begin{array}{l} PV (r i s k y 5 \% c o u o n @ 4 \% r i s k - f r e e) \\ = P V (\$ 5 a n n u i t y @ 4 \%) + (1 - \phi) \cdot P V (\$ 100 @ 4 \%) + \phi \cdot P V (\$ 90 @ 4 \%) \\ \end{array}
$$

Implies (risk-neutral) probability of default is  $\phi = 54.16\%$

- PV of tranched risky bond with recovery  $87.5\%$  (using risk-neutral pricing):

$$
\begin{array}{l} PV(\text{tranched} 5\% \text{couon} @4\% \text{risk} -\text{free}) \\ = P V (\$ 5 a n n u i t y @ 4 \%) + (1 - \phi) \cdot P V (\$ 100 @ 4 \%) + \phi \cdot P V (\$ 87.5 @ 4 \%) \\ \end{array}
$$

Bond is tranched  $20\%$  senior,  $80\%$  equity:

# References
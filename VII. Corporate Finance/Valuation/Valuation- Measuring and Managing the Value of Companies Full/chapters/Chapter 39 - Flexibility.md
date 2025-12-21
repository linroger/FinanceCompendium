---
title: "Chapter 39 - Flexibility"
parent_directory: VII. Corporate Finance/Valuation/Valuation- Measuring and Managing the Value of Companies Full/chapters
formatted: 2025-12-20 07:07:30 PM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - managerial flexibility
  - real options valuation
secondary_tags:
  - decision tree analysis
  - contingent valuation
  - option value drivers
cssclasses: academia
---

# Chapter 39 - Flexibility

Properly managing a modern business is about making choices to create value. Valuation provides important insights for executives faced with making decisions on corporate strategy, acquisitions and divestments, capital structure, and other management actions. All these decisions take place against a backdrop of uncertainty about the outcomes of alternative courses of action. However, in some cases, you can face decisions where not only is uncertainty present, but so is flexibility.

Managerial flexibility and uncertainty are not the same. In cases of uncertainty, the future of a company or a project may be extremely difficult to predict and depends on a single management decision—for example, to launch a new product line or to invest in a new production facility. Flexibility, in contrast, refers to choices managers may make between alternative plans in response to events. This is especially true when you are conducting valuations of investment projects.

The difference is important in deciding your approach to valuation. Whatever the degree of uncertainty, it is possible to value the asset in question by using a standard discounted-cash-flow (DCF) approach combined with either different scenarios or a stochastic simulation (see, for example, Chapter 17). But suppose management has planned to stage its investments in a business start-up. In that case, the managers may decide at each stage whether to proceed, depending on information arising from the previous stage. Where managers expect to respond flexibly to events, they need so-called contingent valuation approaches. These forecast, implicitly or explicitly, the future free cash flows, depending on the future states of the world and management decisions, and then discount these to today's value. For such decisions, alternative approaches provide more accurate valuation results and, perhaps even more important, deeper insights into what creates value.

Flexibility comes in many forms and can substantially alter the value of a business or project. But the business or project can have value only if executives actively manage it to make better decisions. This chapter concentrates on the basic concepts of valuing managerial flexibility and real options in businesses and projects. It focuses on the following topics:

- Fundamental concepts behind uncertainty, flexibility, and value (when and why flexibility has value)
- Managing flexibility in terms of real options to defer investments; making follow-on investments; and expanding, changing, or abandoning production
- Comparison of decision tree analysis (DTA) and real-option valuation (ROV) to valuing flexibility, including situations in which each approach is more appropriate
- A four-step approach to analyzing and valuing real options, illustrated with numerical examples using ROV and DTA

## A HIERARCHY OF APPROACHES

It is possible to illustrate a hierarchy of standard and contingent approaches to valuation under situations of uncertainty and flexibility and suggest when it is best to apply each (Exhibit 39.1). When a flexible response is neither expected

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/69ab1b76-099f-46d2-9341-d47072e8fd93/50a1c4128eb94249fddce6ecc1a7b3bde8d7c107bac9c06ba4e5c8819d87bacb.jpg)

EXHIBIT 39.1 Valuation under Uncertainty: Approaches nor required, you can choose from the following three variations of a standard DCF approach, depending on the level of uncertainty:

1. Single-path DCF valuation. When little uncertainty exists about future outcomes or when uncertainty is evenly spread around the expected outcomes, use a standard, single-path DCF analysis based on point estimates of future cash flows.
2. Scenario-based DCF. When significant uncertainty exists, especially when there is a possibility of much more upside than downside (or vice versa) in future cash flows, it is best to model future outcomes in two or more scenarios that capture the variation in the paths of future cash flow. This approach is easy to apply in, for example, valuing corporate or business strategies.
3. Stochastic simulation DCF. If you have reliable estimates about the underlying probability distributions of cash flows into the future, such as mean, standard deviation, and possibly skewness, it may be worthwhile to use a stochastic simulation DCF approach. In this approach, future cash flow paths are explicitly modeled and valued in a stochastic simulation. Because this approach is complex and requires voluminous data, applications are mostly restricted to specific industries, such as the valuation of insurance companies, and commodity-based businesses.

When managerial flexibility is called for, you need one of the following contingent valuation approaches, selected according to the amount of information available:

- Decision tree analysis (DTA). If there is limited information about the distribution of future cash flow paths and the decisions that management can take depending on these cash flows, use a decision tree analysis. As the following sections discuss, it builds on scenario DCF valuation and is straightforward and transparent. DTA is especially effective for valuing flexibility related to technological risks that are not priced in the market, such as investments in research and development (R&D) projects, product launches, and plant-decommissioning decisions.
- Real-option valuation (ROV). If you have reliable information about the underlying probability distributions of future cash flow paths, like those required for stochastic simulation, ROV could provide better results and insights. However, it requires sophisticated, formal option-pricing models that are harder for managers to decipher than DTA. The ROV approach is best suited to decisions in commodity-based businesses, such as investments in oil and gas fields, refining facilities, chemical plants, and power generators, because the underlying commodity risk is priced in the market.[2]

There are advantages to using either ROV or DTA, depending on the types of risks involved. In theory, ROV is more accurate. But it is not the right approach in every case. It cannot replace traditional discounted cash flow, because valuing an option using ROV still depends on knowing the value of the underlying assets. Unless the assets have an observable market price, you will have to estimate that value using traditional DCF.

Company-wide valuation models rarely take flexibility into account. To analyze and model flexibility accurately, you must be able to describe the set of specific decisions managers could make in response to future events and include the cash flow implications of those decisions. In valuing a company, flexibility therefore becomes relevant only in cases where management responds to specific events that may change the course of the whole company. For example, to value internet or biotech companies with a handful of promising new products in development, you could project sales, profit, and investments for the company as a whole that are conditional on the success of product development. Another example is a company that has built its strategy around buying up smaller players and integrating them into a bigger entity, capturing synergies along the way. The first acquisitions may not create value in their own right but may open opportunities for value creation through further acquisitions.

Flexibility is typically more relevant in the valuation of individual businesses and projects, as it mostly concerns detailed decisions related to production, capacity investment, marketing, research and development, and other factors.

## UNCERTAINTY, FLEXIBILITY, AND VALUE

To appreciate the value of flexibility and its key value drivers, consider a simple example. Suppose you are deciding whether to invest  \$6,000 one year from now to produce and distribute a new pharmaceutical drug already under development. In the upcoming final development stage, the product will undergo clinical tests on patients for one year, for which all investments have already been made. These tests involve no future cash flows. The trials could have one of two possible outcomes. If the drug proves to be highly effective, it will generate an annual net cash inflow of\$ 500 into perpetuity. If it is only somewhat effective, the annual net cash inflow will be 100 into perpetuity. These outcomes are equally probable.

Based on this information, the expected future net cash flow is  \$300, the probability-weighted average of the risky outcomes (\$ 500 and 100). To keep it simple, we assume that success in developing the new product and the value of the new product are unrelated to what happens in the overall economy, so this risk is fully diversifiable by the company's investors. Therefore, the beta for this product is zero, and the cost of capital equals the risk-free rate—say, 5 percent. Assuming that the company will realize its first year's product sales immediately upon completing the trials and at the end of each year thereafter, the net present value (NPV) of the investment is estimated as follows:

$$
\mathrm {N P V} = \frac {- \$ 6 , 0 0 0}{1 . 0 5} + \sum_ {t = 1} ^ {\infty} \frac {\$ 3 0 0}{(1 . 0 5) ^ {t}} = \$ 2 8 6
$$

To apply the NPV approach, we discount the incremental expected project cash flows at the cost of capital. Any prior development expenses are irrelevant, because they are sunk costs. Alternatively, if the project is canceled, the NPV equals  \$0. Therefore, management should approve the incremental investment of\$ 6,000.

In this example of the NPV decision rule, undertaking development creates value. But there are more alternatives than deciding today whether to invest. Using an approach like the scenario approach described in Chapter 17, we can rewrite the previous NPV calculation in terms of the probability-weighted values of the drug, discounted to today:

$$
\begin{array}{l} \mathrm {N P V} = 0. 5 \left[ \frac {- \$ 6 , 0 0 0}{1 . 0 5} + \sum_ {t = 1} ^ {\infty} \frac {\$ 5 0 0}{(1 . 0 5) ^ {t}} \right] + 0. 5 \left[ \frac {- \$ 6 , 0 0 0}{1 . 0 5} + \sum_ {t = 1} ^ {\infty} \frac {\$ 1 0 0}{(1 . 0 5) ^ {t}} \right] \\ = 0. 5 (\$ 4, 2 8 6) + 0. 5 (- \$ 3, 7 1 4) \\ = \$ 286 \\ \end{array}
$$

Here, the NPV is shown as the weighted average of two distinct results: a positive NPV of 4,286 following a favorable trial outcome and a negative NPV of -3,714 for an unfavorable outcome. If the decision to invest can be deferred until trial results are known, the project becomes much more attractive. Specifically, if the drug proves to be less effective, the project can be halted, avoiding the negative NPV. You invest only if the drug is highly effective, and the annual cash flow of \$500 more than compensates for the investment required. In practice, there would likely be an upfront investment need for the trial, regardless of its outcome, but we have abstracted from such costs to keep the example simple.

This flexibility is an option to defer the investment decision. To value the option, a contingent NPV approach can be used, working from right to left in the payoff tree shown in Exhibit 39.2.

$$
\begin{array}{l} \mathrm {N P V} = 0. 5 \times \operatorname {M a x} \left[ \left(\frac {- \$ 6 , 0 0 0}{1 . 0 5} + \sum_ {t = 1} ^ {\infty} \frac {\$ 5 0 0}{(1 . 0 5) ^ {t}}\right), 0 \right] \\ + 0. 5 \times \operatorname {M a x} \left[ \left(\frac {- \$ 6 , 0 0 0}{1 . 0 5} + \sum_ {t = 1} ^ {\infty} \frac {\$ 1 0 0}{(1 . 0 5) ^ {t}}\right), 0 \right] \\ = 0. 5 (\mathbb {S} 4, 2 8 6) + 0. 5 (0) = \mathbb {S} 2, 1 4 3 \\ \end{array}
$$

EXHIBIT 39.2 Value of Flexibility to Defer Investment

<table><tr><td>$ t=0</td><td></td><td>Successful product</td><td>t=1</td><td>t=2</td><td>…</td><td>?</td></tr><tr><td rowspan="3">Contingent NPV = 2,143</td><td rowspan="3">p=1 - p=50\%</td><td>Cash flow</td><td>500</td><td>500</td><td>…</td><td>500</td></tr><tr><td>Investment</td><td>(6,000)</td><td>-</td><td>…</td><td>-</td></tr><tr><td>Cash flow</td><td>100</td><td>100</td><td>…</td><td>100</td></tr><tr><td>Cost of capital = 5\%</td><td>Unsuccessful product</td><td>Investment</td><td>(6,000)</td><td>-</td><td>…</td><td>-</td></tr></table>

Note:  $t =$  time, in years

$p =$  probability

The contingent NPV of  \$2,143 is considerably higher than the\$ 286 NPV of committing today. Therefore, the best alternative is to defer a decision until the trial outcomes are known. The value of the option to defer investment is the difference between the value of the project with flexibility and its value without flexibility: $2,143 - $286 = 1,857.

Based on this example, it is possible to summarize the distinction between the standard and contingent NPVs. The standard NPV is the maximum, decided today, of the expected discounted cash flows or zero:

$$
\text {S t a n d a r d N P V} = \max  _ {t = 0} \left(\frac {\text {E x p e c t e d (C a s h F l o w s)}}{\text {C o s t o f C a p i t a l}}, 0\right)
$$

The contingent NPV is the expected value of the maximums, decided when information arrives, of the discounted cash flows in each future state or zero:

Contingent NPV = Expectedt=0

$$
\times \left[ \operatorname {M a x} \left(\frac {\text {C a s h F l o w s C o n t i n g e n t o n I n f o r m a t i o n}}{\text {C o s t o f C a p i t a l}}, 0\right) \right]
$$

These two NPV approaches use information quite differently. Standard NPV forces a decision based on today's expectation of future information, whereas contingent NPV permits the flexibility of making decisions after the information arrives. Unlike standard NPV, it captures the value of flexibility. A project's contingent NPV will always be greater than or equal to its standard NPV.

The value of flexibility is related to the degree of uncertainty and the room for managerial reaction (see Exhibit 39.3). It is greatest when uncertainty is high and managers can react to new information. In contrast, if there is little uncertainty, managers are unlikely to receive new information that would alter future decisions, so flexibility has little value. Similarly, if managers cannot act on new information that becomes available, the value of flexibility is low.

Including flexibility in a project valuation is most important when the project's standard NPV is close to zero—that is, when the decision whether to go ahead with the project is a close call. Sometimes senior management intuitively overrules standard NPV results and accepts an investment project for strategic reasons, for example, because the project creates an initial market position that can be expanded at a later stage if and when the company has

EXHIBIT 39.3 When Is Flexibility Valuable?

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/69ab1b76-099f-46d2-9341-d47072e8fd93/a537503cdee2c5a76282e3865e921b849221d5aff93b87edad1f8dbc4b3efdc5.jpg)

Uncertainty, likelihood of receiving new information the competitive products or services to offer. In these cases, the flexibility recognized in contingent valuation fits better with strategic intuition than do the rigid assumptions of standard NPV approaches.

### What Creates Flexibility Value

## MANAGING FLEXIBILITY

## METHODS FOR VALUING FLEXIBILITY

### Real-Option Valuation

### Valuation Based on Decision Tree Analysis

### Comparing ROV and DTA Approaches

## FOUR STEPS TO VALUING FLEXIBILITY

### Real-Option Valuation: A Numerical Example

#### Underlying asset

#### Assumptions

#### Underlying asset values

#### Management decisions  $(t = 5)$

#### Risk-neutral valuation

#### Value of option  $(t = 4)$

## REAL-OPTION VALUATION AND DECISION TREE ANALYSIS: A NUMERICAL EXAMPLE

### DTA Approach: Technological Risk

### ROV Approach: Technological and Commercial Risk

## SUMMARY

Managerial flexibility lets executives defer or change investment decisions as a business or project develops. It can substantially alter the value of a business or project. Rigidly applying standard DCF analysis fails to account for the impact that exercising flexibility can have on present value.

Flexibility takes many forms, such as the option to defer, expand, contract, or abandon projects, or to switch them on and off. This chapter has illustrated only a few applications. Contingent NPV analysis, in the form of decision tree analysis (DTA) or real-option valuation (ROV) models, correctly captures flexibility's impact on value. The ROV approach is theoretically superior to DTA, but applying it is more complicated. So ROV is often limited to valuing flexibility in commodity-based industries where prices are measurable, making its application more straightforward. In most other cases, a careful DTA approach delivers results that are reasonably solid and can provide more valuable insights.

# Discounted Economic Profit Equals Discounted Free Cash Flow

This appendix demonstrates algebraically the equivalence between discounted cash flow and discounted economic profit. In the first section, we convert the key value driver formula presented in Chapter 3 into a value driver formula based on economic profit. This formula is used in Chapter 10 to estimate continuing value in the economic-profit valuation. The second section of this appendix generalizes the proof to any set of cash flows.

# PROOF USING PERPETUITIES

To convert the key value driver formula into an economic-profit-based formula, start with the growing cash flow perpetuity:

$$
V = \frac {\mathrm {F C F} _ {t = 1}}{\mathrm {W A C C} - g}
$$ where  $V =$  value of operations


$\mathrm{FCF}_{t = 1} =$  free cash flow in year 1

WACC = weighted average cost of capital

$g =$  growth in NOPAT

In Chapter 3, we convert the growing perpetuity into the key value driver formula:

$$

V = \frac {\mathrm {N O P A T} _ {t = 1} \left(1 - \frac {g}{\mathrm {R O N I C}}\right)}{\mathrm {W A C C} - g}

$$ where  $\mathrm{NOPAT}_{t=1} = \text{net operating profit after taxes}$

RONIC = return on new invested capital

The key value driver formula can be rearranged further into a formula based on economic profit. We do this to demonstrate that discounted cash flow is equivalent to the book value of invested capital plus the present value of future economic profit.

To begin, start with the key value driver formula, and replace NOPAT with invested capital times return on invested capital (ROIC):

$$
V = \frac {\text {I n v e s t e d C a p i t a l} _ {0} \times \text {R O I C} \times \left(1 - \frac {g}{\text {R O N I C}}\right)}{\text {W A C C} - g}
$$

If we assume that the return on new invested capital (RONIC) equals the return on existing invested capital (ROIC), it is possible to simplify the preceding equation by distributing ROIC in the numerator: $^1$

$$
V = \mathrm {I n v e s t e d C a p i t a l} _ {0} \left(\frac {\mathrm {R O I C} - g}{\mathrm {W A C C} - g}\right)
$$

To complete the transformation to economic profit, add and subtract WACC in the numerator:

$$
V = \text {I n v e s t e d C a p i t a l} _ {0} \left(\frac {\text {R O I C - W A C C + W A C C - g}}{\text {W A C C - g}}\right)
$$

Separate the fraction into two components, and then simplify:

$$
\begin{array}{l} V = \text {I n v e s t e d C a p i t a l} _ {0} \left(\frac {\text {R O I C - W A C C}}{\text {W A C C} - g}\right) + \text {I n v e s t e d C a p i t a l} _ {0} \left(\frac {\text {W A C C} - g}{\text {W A C C} - g}\right) \\ = \text {I n v e s t e d C a p i t a l} _ {0} + \text {I n v e s t e d C a p i t a l} _ {0} \left(\frac {\text {R O I C - W A C C}}{\text {W A C C} - g}\right) \\ \end{array}
$$

Economic profit is defined as invested capital times the difference of ROIC minus WACC. Substituting this definition into the previous equation leads to our final equation:

$$
V = \text {I n v e s t e d C a p i t a l} _ {0} + \frac {\text {E c o n o m i c P r o f i t} _ {1}}{\text {W A C C} - g}
$$

According to this formula, a company's operating value equals the book value of its invested capital plus the present value of all future economic profits. (The final term is a growing perpetuity of economic profits.) If future economic profits are expected to be zero, the intrinsic value of a company equals its book value. In addition, if future economic profits are expected to be less than zero, then enterprise value should trade at less than the book value of invested capital—an occurrence observed in practice.

# GENERALIZED PROOF

The previous section limited our proof to a set of cash flows growing at a constant rate. This section generalizes the proof to any set of cash flows. To demonstrate equivalence, start by computing the present value of a periodic stream of cash flows:

$$
V = \sum_ {t = 1} ^ {\infty} \frac {\mathrm {F C F} _ {t}}{\left(1 + \mathrm {W A C C}\right) ^ {t}}
$$ where  $V =$  value of operations


$\mathrm{FCF}_t =$  free cash flow in year  $t$

WACC = weighted average cost of capital

To this value, add and subtract the cumulative sum of all current and future amounts of invested capital (IC):

$$

V = \sum_ {t = 0} ^ {\infty} \frac {\mathrm {I C} _ {t}}{\left(1 + \text {W A C C}\right) ^ {t}} - \sum_ {t = 0} ^ {\infty} \frac {\mathrm {I C} _ {t}}{\left(1 + \text {W A C C}\right) ^ {t}} + \sum_ {t = 1} ^ {\infty} \frac {\mathrm {F C F} _ {t}}{\left(1 + \text {W A C C}\right) ^ {t}}

$$ where  $\mathrm{IC}_t =$  invested capital for year  $t$ .

Next, adjust the preceding equation slightly to restate the same value using terms that can be canceled later. First, strip invested capital at time zero from the first cumulative sum. Then modify the second cumulative sum to  $t = 1$  to infinity, by changing each  $t$  inside the second cumulative sum to  $t - 1$ . This new representation is identical to the original representation but will allow us to cancel terms later. The new representation is as follows:

$$
V = \mathrm {I C} _ {0} + \sum_ {t = 1} ^ {\infty} \frac {\mathrm {I C} _ {t}}{\left(1 + \mathrm {W A C C}\right) ^ {t}} - \sum_ {t = 1} ^ {\infty} \frac {\mathrm {I C} _ {t - 1}}{\left(1 + \mathrm {W A C C}\right) ^ {t - 1}} + \sum_ {t = 1} ^ {\infty} \frac {\mathrm {F C F} _ {t}}{\left(1 + \mathrm {W A C C}\right) ^ {t}}
$$

Multiply the second cumulative sum by  $(1 + \mathrm{WACC}) / (1 + \mathrm{WACC})$ . This action converts the exponent  $t - 1$  in the denominator of the cumulative sum to  $t$ . Also substitute for free cash flow in the third cumulative sum, using its definition, NOPAT less the increase in invested capital:

$$
V = \mathrm {I C} _ {0} + \sum_ {t = 1} ^ {\infty} \frac {\mathrm {I C} _ {t}}{\left(1 + \mathrm {W A C C}\right) ^ {t}} - \sum_ {t = 1} ^ {\infty} \frac {\left(1 + \mathrm {W A C C}\right) \mathrm {I C} _ {t - 1}}{\left(1 + \mathrm {W A C C}\right) ^ {t}} + \sum_ {t = 1} ^ {\infty} \frac {\mathrm {N O P A T} _ {t} - \left(\mathrm {I C} _ {t} - \mathrm {I C} _ {t - 1}\right)}{\left(1 + \mathrm {W A C C}\right) ^ {t}}
$$

Because there is now a consistent denominator across all three cumulative sums, combine them into a single cumulative sum:

$$
V = \mathrm {I C} _ {0} + \sum_ {t = 1} ^ {\infty} \frac {\mathrm {I C} _ {t} - (1 + \mathrm {W A C C}) \mathrm {I C} _ {t - 1} + \mathrm {N O P A T} _ {t} - \mathrm {I C} _ {t} + \mathrm {I C} _ {t - 1}}{(1 + \mathrm {W A C C}) ^ {t}}
$$

In the second term of the numerator, distribute  $(1 + \mathrm{WACC})\mathrm{IC}_{t - 1}$  into its two components,  $\mathrm{IC}_{t - 1}$  and  $\mathrm{WACC}(\mathrm{IC}_{t - 1})$ :

$$
V = \mathrm {I C} _ {0} + \sum_ {t = 1} ^ {\infty} \frac {\mathrm {I C} _ {t} - \mathrm {I C} _ {t - 1} - \mathrm {W A C C} (\mathrm {I C} _ {t - 1}) + \mathrm {N O P A T} _ {t} - \mathrm {I C} _ {t} + \mathrm {I C} _ {t - 1}}{(1 + \mathrm {W A C C}) ^ {t}}
$$

Simplify by collecting terms:

$$
V = \mathrm {I C} _ {0} + \sum_ {t = 1} ^ {\infty} \frac {\mathrm {N O P A T} _ {t} - \mathrm {W A C C} \left(\mathrm {I C} _ {t - 1}\right)}{\left(1 + \mathrm {W A C C}\right) ^ {t}}
$$

The numerator is the definition of economic profit, so the result is a valuation based on economic profit:

$$
V = \mathrm {I C} _ {0} + \sum_ {t = 1} ^ {\infty} \frac {\text {E c o n o m i c P r o f i t} _ {t}}{\left(1 + \mathrm {W A C C}\right) ^ {t}}
$$

The enterprise value of a company equals the book value of its invested capital plus the present value of all future economic profits. To calculate the value correctly, you must calculate economic profit using last year's (i.e., beginning-of-year) invested capital—a subtle but important distinction.

The interdependence of invested capital, economic profit, and free cash flow is not surprising. Think of discounted cash flow this way: a portion of future cash flows is required to cover the required return for the investor's capital. The remaining cash flow is either used to grow invested capital (to generate additional future cash flows) or returned to investors as an extra bonus. This bonus is valuable, so investors are willing to pay a premium for cash flows above the amount required. Subsequently, companies with positive economic profits will trade at a premium to the book value of invested capital.

# Derivation of Free Cash Flow, Weighted Average Cost of Capital, and Adjusted Present Value

Chapter 10 demonstrated numerically the equivalence of enterprise discounted cash flow (DCF), adjusted present value (APV), and the cash-flow-to-equity valuation when leverage (as measured by the market-based debt-to-equity ratio) is constant. This appendix derives the key terms in each model—namely, free cash flow (FCF) and the weighted average cost of capital (WACC)—and demonstrates their equivalence algebraically.

To simplify the analysis, we assume cash flows to equity are growing at a constant rate,  $g$ . This way we can use growth perpetuities to analyze the relationship between methods.

# ENTERPRISE DISCOUNTED CASH FLOW

By definition, enterprise value (V) equals the market value of debt (D) plus the market value of equity (E):

$$
V = D + E
$$

To examine the components of enterprise value, multiply the right side of the equation by a complex fraction equivalent to 1 (the numerator equals the denominator, an algebraic trick we will use many times):

$$
V = (D + E) \left(\frac {D \left(1 - T _ {m}\right) k _ {d} + C F _ {e} - D (g)}{D \left(1 - T _ {m}\right) k _ {d} + C F _ {e} - D (g)}\right) \tag {B.1}
$$ where  $T_{m} =$  marginal tax rate


$k_{d} =$  cost of debt

$\mathrm{CF}_e =$  cash flow to equity holders

$g =$  growth in cash flow to equity holders

Over the next few steps, the fraction's numerator will be converted to free cash flow (FCF). We will show later that the denominator equals the weighted average cost of capital. Start by defining the numerator as FCF:

$$

\mathrm {F C F} = D \left(1 - T _ {m}\right) k _ {d} + \mathrm {C F} _ {e} - D (g)

$$

If the market value of debt equals the face value of debt, the cost of debt will equal the coupon rate, and  $D$  times  $k_{d}$  will equal the company's interest expense. Therefore,

$$

\mathrm {F C F} = \text {I n t e r e s t} \left(1 - T _ {m}\right) + \mathrm {C F} _ {e} - D (g)

$$

By definition, cash flow to equity  $(\mathrm{CF}_e)$  equals earnings before interest and taxes (EBIT) minus interest, taxes, and net investment, plus the increase in debt. Assuming the ratio of debt to equity is constant, the annual increase in debt will equal  $D(g)$ . Why? Since cash flows to equity are growing at  $g$ , the value of equity also grows at  $g$ . Since the ratio of debt to equity remains constant (a key assumption), the value of debt must also grow at  $g$ . Substitute the definition of cash flow to equity into the preceding equation:

$$

\mathrm {F C F} = \text {I n t e r e s t} \left(1 - T _ {m}\right) + \text {E B I T} - \text {I n t e r e s t} - \text {T a x e s} - \text {N e t I n v e s t m e n t} + D (g) - D (g)

$$

Next, distribute the after-tax interest expression into its two components, and cancel  $D(g)$ :

$$

\mathrm {F C F} = \text {I n t e r s t} - T _ {m} (\text {I n t e r s t}) + \text {E B I T} - \text {I n t e r s t} - \text {T a x e s} - \text {N e t I n v e s t m e n t}

$$

Simplify by canceling the interest terms and rearranging the remaining terms:

$$

\mathrm {F C F} = \mathrm {E B I T} - \left[ \text {T a x e s} + T _ {m} (\text {I n t e r e s t}) \right] - \text {N e t I n v e s t m e n t}

$$

Chapter 11 defines operating taxes as the taxes a company would pay if the company were financed entirely with equity. Operating taxes therefore equal reported taxes plus the interest tax shield (as interest is eliminated, taxes would rise by the interest tax shield). This leads to the definition of free cash flow we use throughout the book:

$$

\mathrm {F C F} = \mathrm {E B I T} - \text {O p e r a t i n g T a x e s} - \text {N e t I n v e s t m e n t}

$$

Next, we focus on the denominator. To derive the weighted average cost of capital (WACC), start with Equation B.1, and multiply  $\mathrm{CF}_e$  by 1, denoted as  $(k_e - g) / (k_e - g)$ :

$$

V = (D + E) \left(\frac {\mathrm {F C F}}{D (1 - T _ {m}) k _ {d} + \frac {\mathrm {C F} _ {e}}{k _ {e} - g} (k _ {e} - g) - D (g)}\right)

$$ where  $k_{e} =$  cost of equity.

If equity cash flows are growing at a constant rate, the value of equity equals  $\mathrm{CF}_e$  divided by  $(k_e - g)$ . Therefore, the growing perpetuity in the denominator can be replaced by the value of equity  $(E)$  and distributed:

$$
V = (D + E) \left(\frac {\mathrm {F C F}}{D (1 - T _ {m}) k _ {d} + E (k _ {e}) - E (g) - D (g)}\right)
$$

In the denominator, collapse  $E(g)$  and  $D(g)$  into a single term:

$$
V = (D + E) \left(\frac {\mathrm {F C F}}{D (1 - T _ {m}) k _ {d} + E (k _ {e}) - (D + E) g}\right)
$$

To complete the derivation of WACC in the denominator, divide the numerator and denominator by  $(D + E)$ . This will eliminate the  $(D + E)$  expression on the left and place it in the denominator as a divisor. Distributing the term across the denominator, the result is the following equation:

$$
V = \frac {\mathrm {F C F}}{\frac {D}{D + E} \left(k _ {d}\right) \left(1 - T _ {m}\right) + \frac {E}{D + E} \left(k _ {e}\right) - \frac {D + E}{D + E} (g)}
$$

The expression in the denominator is the weighted average cost of capital (WACC) minus the growth in cash flow  $(g)$ . Therefore, Equation B.1 can be rewritten as:

$$
V = \frac {\mathrm {F C F}}{\mathrm {W A C C} - g}
$$ such that:


$$

\mathrm {W A C C} = \frac {D}{D + E} \left(k _ {d}\right) \left(1 - T _ {m}\right) + \frac {E}{D + E} \left(k _ {e}\right)

$$

Note how the after-tax cost of debt and the cost of equity are weighted by each security's market-based weight to enterprise value. This is why you should use market-based values, and not book values, to build the cost of capital. This is also why you should discount free cash flow at the weighted average cost of capital to determine enterprise value. Remember, however, that you can only use a constant WACC when leverage is expected to remain constant (i.e., debt grows as the business grows).

# ADJUSTED PRESENT VALUE

To determine enterprise value using adjusted present value, once again start with  $V = D + E$  and multiply by a fraction equal to 1. This time, however, do not include the marginal tax rate in the fraction:

$$

V = (D + E) \left(\frac {D \left(k _ {d}\right) + \mathrm {C F} _ {e} - D (g)}{D \left(k _ {d}\right) + \mathrm {C F} _ {e} - D (g)}\right)

$$

Following the same process as before, convert each cash flow in the denominator to its present value times its expected return, and divide the fraction by  $(D + E) / (D + E)$ :

$$

V = \frac {D \left(k _ {d}\right) + C F _ {e} - D (g)}{\frac {D}{D + E} \left(k _ {d}\right) + \frac {E}{D + E} \left(k _ {e}\right) - g}

$$

Appendix C shows that if the company's interest tax shields have the same risk as the company's operating assets (as one would expect when the company maintains a constant capital structure), the fraction's denominator equals  $k_{u}$ , the unlevered cost of equity, minus the growth in cash flow ( $g$ ). Make this substitution into the previous equation:

$$

V = \frac {D (k _ {d}) + C F _ {e} - D (g)}{k _ {u} - g}

$$

Next, focus on the numerator. Substitute the definitions of cash flow to debt and cash flow to equity, as we did earlier in this appendix:

$$

V = \frac {\text {I n t e r e s t} + \text {E B I T} - \text {I n t e r e s t} - \text {T a x e s} - \text {N e t I n v e s t m e n t} + D (g) - D (g)}{k _ {u} - g}

$$

In this equation, the two interest terms cancel and the two  $D(g)$  terms cancel, so simplify by canceling these terms. Also insert  $T_{m}(\text{Interest}) - T_{m}(\text{Interest})$  into the numerator of the expression:

$$

V = \frac {\text {E B I T} - \text {T a x e s} + T _ {m} (\text {I n t e r e s t}) - T _ {m} (\text {I n t e r e s t}) - \text {N e t I n v e s t m e n t}}{k _ {u} - g}

$$

Aggregate reported taxes and the negative expression for  $T_{m}$  (Interest) into all-equity taxes. Move the positive expression for  $T_{m}$  (Interest) into a separate fraction:

$$

V = \frac {\text {E B I T} - \left[ \text {T a x e s} + T _ {m} (\text {I n t e r e s t}) \right] - \text {N e t I n v e s t m e n t}}{k _ {u} - g} + \frac {T _ {m} (\text {I n t e r e s t})}{k _ {u} - g}

$$

At this point, we once again have free cash flow in the numerator of the first fraction. The second fraction equals the present value of the interest tax shield. Thus, enterprise value equals free cash flow discounted by the unlevered cost of equity plus the present value of the interest tax shield:

$$

V = \frac {\mathrm {F C F}}{k _ {u} - g} + \mathrm {P V} (\text {I n t e r e s t T a x S h i e l d})

$$

This expression is commonly referred to as adjusted present value.

In this simple proof, we assumed tax shields should be discounted at the unlevered cost of equity. This need not be the case. Some financial analysts discount expected interest tax shields at the cost of debt. If you do this, however, free cash flow discounted at the traditional WACC (defined earlier) and adjusted present value will lead to different valuations. In this case, WACC must be adjusted to reflect the alternative assumption concerning the risk of tax shields.

# Levering and Unlevering the Cost of Equity

This appendix derives various formulas that can be used to compute unlevered beta and the unlevered cost of equity under different assumptions. Unlevered betas are required to estimate an industry beta, as detailed in Chapter 15. We prefer using an industry beta rather than a company beta to determine the cost of capital because company betas cannot be estimated accurately. As discussed in Chapter 10, the unlevered cost of equity is used to discount free cash flow to compute adjusted present value. For companies with substantial postretirement obligations, the appendix concludes by incorporating pensions and other postretirement benefits into the unlevering process.

# UNLEVERED COST OF EQUITY

Franco Modigliani and Merton Miller postulated that the market value of a company's economic assets, such as operating assets  $(V_{u})$  and tax shields  $(V_{txa})$ , should equal the market value of its financial claims, such as debt  $(D)$  and equity  $(E)$ :

$$

V _ {u} + V _ {t x a} = \text {E n t e r p r i s e V a l u e} = D + E \tag {C.1}

$$

A second result of Modigliani and Miller's work is that the total risk of the company's economic assets, operating and financial, must equal the total risk of the financial claims against those assets:

$$

\frac {V _ {u}}{V _ {u} + V _ {t x a}} \left(k _ {u}\right) + \frac {V _ {t x a}}{V _ {u} + V _ {t x a}} \left(k _ {t x a}\right) = \frac {D}{D + E} \left(k _ {d}\right) + \frac {E}{D + E} \left(k _ {e}\right) \tag {C.2}

$$ where  $k_{u} =$  unlevered cost of equity

$$ k _ {t x a} = \text {c o s t}
$$

$$ k _ {d} = \text {c o s t}
$$

$$ k _ {e} = \text {c o s t o f e q u i t y}
$$

The four terms in this equation represent the proportional risk of operating assets, tax assets, debt, and equity, respectively.

Since the cost of operating assets  $(k_{u})$  is unobservable, it is necessary to solve for it using the equation's other inputs. The required return on tax shields  $(k_{txa})$  also is unobservable. With two unknowns and only one equation, it is therefore necessary to impose additional restrictions to solve for  $k_{u}$ . If debt is a constant proportion of enterprise value (i.e., debt grows as the business grows),  $k_{txa}$  equals  $k_{u}$ . Imposing this restriction leads to the following equation:

$$
\frac {V _ {u}}{V _ {u} + V _ {t x a}} \left(k _ {u}\right) + \frac {V _ {t x a}}{V _ {u} + V _ {t x a}} \left(k _ {u}\right) = \frac {D}{D + E} \left(k _ {d}\right) + \frac {E}{D + E} \left(k _ {e}\right)
$$

Combining terms on the left side generates an equation for the unlevered cost of equity when debt is a constant proportion of enterprise value:

$$ k _ {u} = \frac {D}{D + E} \left(k _ {d}\right) + \frac {E}{D + E} \left(k _ {e}\right) \tag {C.3}
$$

Since most companies manage their debt-to-value ratio to stay within a particular range, we believe this formula and its resulting derivations are the most appropriate for standard valuation.

# Unlevered Cost of Equity When  $k_{txa}$  equals  $k_d$

Some financial analysts set the required return on interest tax shields equal to the cost of debt. In this case, Equation C.2 can be expressed as follows:

$$
\frac {V _ {u}}{V _ {u} + V _ {t x a}} \left(k _ {u}\right) + \frac {V _ {t x a}}{V _ {u} + V _ {t x a}} \left(k _ {d}\right) = \frac {D}{D + E} \left(k _ {d}\right) + \frac {E}{D + E} \left(k _ {e}\right)
$$

To solve for  $k_{\mu}$ , multiply both sides by enterprise value:

$$
V _ {u} \left(k _ {u}\right) + V _ {t x a} \left(k _ {d}\right) = D \left(k _ {d}\right) + E \left(k _ {e}\right)
$$ and move  $V_{txa}(k_d)$  to the right side of the equation:


$$

V _ {u} \left(k _ {u}\right) = \left(D - V _ {t x a}\right) k _ {d} + E \left(k _ {e}\right)

$$

EXHIBIT C.1 Unlevered Cost of Equity

<table><tr><td></td><td>Dollar level of debt fluctuates</td><td>Dollar level of
debt is constant</td></tr><tr><td>Tax shields have same risk as
operating assets ktxa = ku</td><td>ku = D/D + Ekd + E/D + Eke</td><td>ku = D/D + Ekd + E/D + Eke</td></tr><tr><td>Tax shields have
same risk as debt
ktxa = kdd</td><td>ku = D - Vtxa/D - Vtxa + Ekd + E/D - Vtxa + Eke</td><td>ku = D(1-Tm)/D(1-Tm) + Ekd + E(D(1-Tm) + Eke</td></tr><tr><td colspan="3">Note: ke = cost of equity kd = cost of debt
ku = unlevered cost of equity ktxa = cost of capital for tax shields
Tm = marginal tax rate
D = debt
E = equity
Vtxa = present value of tax shields</td></tr></table>

To eliminate  $V_{u}$  from the left side of the equation, rearrange Equation C.1 to  $V_{u} = D - V_{txa} + E$ , and divide both sides by this value:

$$ k _ {u} = \frac {D - V _ {t x a}}{D - V _ {t x a} + E} \left(k _ {d}\right) + \frac {E}{D - V _ {t x a} + E} \left(k _ {e}\right) \tag {C.4}
$$

Equation C.4 mirrors Equation C.2 closely. It differs from Equation C.2 only in that the market value of debt is reduced by the present value of expected tax shields.

# Unlevered Cost of Equity When Debt Is Constant

Exhibit C.1 summarizes three methods to estimate the unlevered cost of equity. The two formulas in the top row assume that the risk associated with interest tax shields  $(k_{txa})$  equals the risk of operations  $(k_u)$ . When this is true, whether debt is constant or expected to change, the formula remains the same.

The bottom-row formulas assume that the risk of interest tax shields equals the risk of debt. On the left, future debt can take on any value. On the right, an additional restriction is imposed that debt remains constant—in absolute terms, not as a percentage of enterprise value. In this case, the annual interest payment equals  $D(k_d)$ , and the annual tax shield equals  $D(k_d)(T_m)$ . Since tax shields are constant, they can be valued using a constant perpetuity:

$$
\mathrm {P V} (\text {T a x S h i e l d s}) = \frac {D (k _ {d}) (T _ {m})}{k _ {d}} = D (T _ {m})
$$

Consequently,  $V_{txa}$  in the formula in the bottom left corner is replaced with  $D(T_m)$ . The equation is simplified by converting  $D - D(T_m)$  into  $D(1 - T_m)$ . The resulting equation is presented in the bottom right corner.

# LEVERED COST OF EQUITY

In certain situations, you will have already estimated the unlevered cost of equity and need to relever the cost of equity to a new target structure. In this case, use Equation C.2 to solve for the levered cost of equity,  $k_{e}$ :

$$
\frac {V _ {u}}{V _ {u} + V _ {t x a}} \left(k _ {u}\right) + \frac {V _ {t x a}}{V _ {u} + V _ {t x a}} \left(k _ {t x a}\right) = \frac {D}{D + E} \left(k _ {d}\right) + \frac {E}{D + E} \left(k _ {e}\right)
$$

Multiply both sides by enterprise value:

$$
V _ {u} \left(k _ {u}\right) + V _ {t x a} \left(k _ {t x a}\right) = D \left(k _ {d}\right) + E \left(k _ {e}\right)
$$

Next, subtract  $D(k_{d})$  from both sides of the equation:

$$
V _ {u} \left(k _ {u}\right) - D \left(k _ {d}\right) + V _ {t x a} \left(k _ {t x a}\right) = E \left(k _ {e}\right)
$$ and divide the entire equation by the market value of equity,  $E$ :


$$ k _ {e} = \frac {V _ {u}}{E} \left(k _ {u}\right) - \frac {D}{E} \left(k _ {d}\right) + \frac {V _ {t x a}}{E} \left(k _ {t x a}\right)
$$

To eliminate  $V_{u}$  from the right side of the equation, rearrange Equation C.1 to  $V_{u} = D - V_{txa} + E$ , and use this identity to replace  $V_{u}$ :

$$ k _ {e} = \frac {D - V _ {t x a} + E}{E} \left(k _ {u}\right) - \frac {D}{E} \left(k _ {d}\right) + \frac {V _ {t x a}}{E} \left(k _ {t x a}\right)
$$

Distribute the first fraction into its component parts:

$$ k _ {e} = \frac {D}{E} \left(k _ {u}\right) - \frac {V _ {t x a}}{E} \left(k _ {u}\right) + k _ {u} - \frac {D}{E} \left(k _ {d}\right) + \frac {V _ {t x a}}{E} \left(k _ {t x a}\right) \tag {C.5}
$$

Consolidating terms and rearranging leads to the general equation for the cost of equity:

$$ k _ {e} = k _ {u} + \frac {D}{E} \left(k _ {u} - k _ {d}\right) - \frac {V _ {t x a}}{E} \left(k _ {u} - k _ {t x a}\right) \tag {C.6}
$$

If debt is a constant proportion of enterprise value (i.e., debt grows as the business grows),  $k_{u}$  will equal  $k_{txa}$ . Consequently, the final term drops out:

$$ k _ {e} = k _ {u} + \frac {D}{E} \left(k _ {u} - k _ {d}\right)
$$

We believe this equation best represents the relationship between the levered cost of equity and the unlevered cost of equity.

The same analysis can be repeated under the assumption that the risk of interest tax shields equals the risk of debt. Rather than repeat the first few steps, we start with Equation C.5:

$$ k _ {e} = \frac {D}{E} \left(k _ {u}\right) - \frac {V _ {t x a}}{E} \left(k _ {u}\right) + k _ {u} - \frac {D}{E} \left(k _ {d}\right) + \frac {V _ {t x a}}{E} \left(k _ {t x a}\right)
$$

To solve for  $k_{e}$ , replace  $k_{txa}$  with  $k_{d}$ :

$$ k _ {e} = \frac {D}{E} (k _ {u}) - \frac {V _ {t x a}}{E} (k _ {u}) + k _ {u} - \frac {D}{E} (k _ {d}) + \frac {V _ {t x a}}{E} (k _ {d})
$$

Consolidate like terms and reorder:

$$ k _ {e} = k _ {u} + \frac {D - V _ {t x a}}{E} (k _ {u}) - \frac {D - V _ {t x a}}{E} (k _ {d})
$$

Finally, further simplify the equation by once again combining like terms:

$$ k _ {e} = k _ {u} + \frac {D - V _ {t x a}}{E} \left(k _ {u} - k _ {d}\right)
$$

The resulting equation is the levered cost of equity for a company whose debt can take any value but whose interest tax shields have the same risk as the company's debt.

Exhibit C.2 summarizes the formulas that can be used to estimate the levered cost of equity. The top row in the exhibit contains formulas that assume  $k_{txa}$  equals  $k_u$ . The bottom row contains formulas that assume  $k_{txa}$  equals  $k_d$ . The formulas on the left side are flexible enough to handle any future capital structure but require valuing the tax shields separately. The formulas on the right side assume the dollar level of debt is fixed over time.

EXHIBIT C.2 Levered Cost of Equity

<table><tr><td></td><td>Dollar level of debt fluctuates</td><td>Dollar level of
debt is constant</td></tr><tr><td>Tax shields have same risk as
operating assets ktxa = ku</td><td>ke=ku+D/E(ku-kd)</td><td>ke=ku+D/E(ku-kd)</td></tr><tr><td>Tax shields have
same risk as debt
ktxa = kd</td><td>ke=ku+D-Vtxa/E(ku-kd)</td><td>ke=ku+(1-Tm)D/E(ku-kd)</td></tr><tr><td colspan="3">Note: ke = cost of equity kd = cost of debt
ku = unlevered cost of equity ktxa = cost of capital for tax shields
Tm = marginal tax rate
D = debt
E = equity
Vtxa = present value of tax shields</td></tr></table>

# LEVERED BETA

Similar to the cost of capital, the weighted average beta of a company's assets, both operating and financial, must equal the weighted average beta of its financial claims:

$$
\frac {V _ {u}}{V _ {u} + V _ {t x a}} \left(\beta_ {u}\right) + \frac {V _ {t x a}}{V _ {u} + V _ {t x a}} \left(\beta_ {t x a}\right) = \frac {D}{D + E} \left(\beta_ {d}\right) + \frac {E}{D + E} \left(\beta_ {e}\right)
$$

Since the form of this equation is identical to the cost of capital, it is possible to rearrange the formula using the same process as previously described. Rather than repeat the analysis, we provide a summary of levered beta in Exhibit C.3. As expected, the first two columns are identical in form to Exhibit C.2, except that the beta  $(\beta)$  replaces the cost of capital  $(k)$ .

By using beta, it is possible to make one additional simplification. If debt is risk free, the beta of debt is 0, and  $\beta_{d}$  drops out. This allows us to convert the following general equation (when  $\beta_{txa}$  equals  $\beta_{u}$ ):

$$
\beta_ {e} = \beta_ {u} + \frac {D}{E} \left(\beta_ {u} - \beta_ {d}\right)
$$ into the following:


$$

\beta_ {e} = \left(1 + \frac {D}{E}\right) \beta_ {u}

$$

EXHIBIT C.3 Levered Beta

<table><tr><td></td><td>Dollar level of debt fluctuates</td><td>Dollar level of debt is constant and debt is risky</td><td>Debt is risk free</td></tr><tr><td>Tax shields have same risk as operating assets βtxa = βu</td><td>βe= βu + D/E (βu - βd)</td><td>βe= βu + D/E (βu - βd)</td><td>βe=(1 + D/E)βu</td></tr><tr><td>Tax shields have same risk as debt βtxa = βd</td><td>βe= βu + D-Vtxa/E (βu - βd)</td><td>βe= βu + (1 - Tm)/D/E (βu - βd)</td><td>βe=[1 + (1 - Tm)/D/E]βu</td></tr><tr><td colspan="4">Note: βe = beta of equity βd = beta of debt βu = unlevered beta of equity βtxa = beta of capital for tax shields Tm = marginal tax rate D = debt E = equity Vtxa = present value of tax shields</td></tr></table>

This last equation is an often-applied formula for levering (and unlevering) beta when the risk of interest tax shields  $(\beta_{txa})$  equals the risk of operating assets  $(\beta_u)$  and the company's debt is risk free. For investment-grade companies, debt is nearly risk free, so any errors using this formula will be small. If the company is highly leveraged, however, errors can be large. In this situation, estimate the beta of debt, and use the more general version of the formula.

# UNLEVERED BETA AND PENSIONS

Since stockholders are responsible for future pension payments and other retirement obligations, the risks associated with these employee benefits can affect a company's beta. If a company has significant pensions, especially unfunded pensions, make sure to include them in the unlevering process.

If you believe the risk of pension assets matches the risk of future obligations, only the unfunded portion of benefit obligations affects the equity beta. In this case, use the unlevering equations in the preceding sections, but treat any unfunded benefit obligations identically to debt.

If you believe the risk of pension assets does not match the risk of future obligations, the unlevering formulas can be reworked such that the risk of pension assets and risk of benefit obligations are evaluated separately. To do this, start with the portfolio equation for beta:


$$

\frac {V _ {u}}{V} \beta_ {u} + \frac {V _ {p a}}{V} \beta_ {p a} = \frac {V _ {p b o}}{V} \beta_ {p b o} + \frac {D}{V} \beta_ {d} + \frac {E}{V} \beta_ {e}

$$ where  $V_{pa} =$  value of pension assets

$V_{pbo} =$  present value of pension benefit obligations

$\beta_{pa} =$  beta of pension assets

$\beta_{pbo} =$  beta of pension benefit obligations

$V =$  sum of debt, equity, and benefit obligations

Next, multiply both sides by  $V$ :

$$
V _ {u} \beta_ {u} + V _ {p a} \beta_ {p a} = V _ {p b o} \beta_ {p b o} + D \beta_ {d} + E \beta_ {e}
$$

Subtract the term related to pension assets from both sides of the equation:

$$
V _ {u} \beta_ {u} = V _ {p b o} \beta_ {p b o} + D \beta_ {d} + E \beta_ {e} - V _ {p a} \beta_ {p a}
$$

To isolate  $\beta_{u}$ , divide both sides by  $V_{u}$ . This leads to the general equation for estimating unlevered beta, inclusive of pensions:

$$
\beta_ {u} = \frac {V _ {p b o}}{V _ {u}} \beta_ {p b o} + \frac {V _ {d}}{V _ {u}} \beta_ {d} + \frac {V _ {e}}{V _ {u}} \beta_ {e} - \frac {V _ {p a}}{V _ {u}} \beta_ {p a}
$$

If debt and pension liabilities have the same beta, simplify the last equation by combining terms:

$$
\beta_ {u} = \frac {D + V _ {p b o}}{V _ {u}} \beta_ {d} + \frac {E}{V _ {u}} \beta_ {e} - \frac {V _ {p a}}{V _ {u}} \beta_ {p a}
$$

Chapter 23 discusses how to incorporate pensions into a valuation. In Exhibit 23.5, we use the equation above to unlever beta for a set of food manufacturers. Given the small size of each company's pension relative to the respective company's market value of equity, the difference in unlevered beta with and without the pension adjustment is minor. We therefore recommend adjusting beta for pensions only when pension assets and liabilities are substantial. In most situations, the unlevering equations that classify the unfunded portion of pensions as debt will suffice.

# Leverage and the Price-to-Earnings Multiple

This appendix demonstrates that the price-to-earnings (P/E) multiple of a levered company depends on its unlevered (all-equity) P/E, its cost of debt, and its debt-to-value ratio. When the unlevered P/E is less than  $1 / k_{d}$  (where  $k_{d}$  equals the cost of debt), the P/E falls as leverage rises. Conversely, when the unlevered P/E is greater than  $1 / k_{d}$ , the P/E rises with increased leverage.

In this proof, we assume the company faces no taxes and no distress costs. We do this to avoid modeling the complex relationship between capital structure and enterprise value. Instead, our goal is to show that there is a systematic relationship between the debt-to-value ratio and the P/E.

# STEP 1: DEFINING UNLEVERED P/E

To determine the relationship between P/E and leverage, start by defining the unlevered P/E  $(\mathrm{PE}_u)$ . When a company is entirely financed with equity, its enterprise value equals its equity value, and its net operating profit after taxes (NOPAT) equals its net income:

$$
\mathrm {P E} _ {u} = \frac {V _ {\mathrm {E N T}}}{\mathrm {N O P A T} _ {t + 1}}
$$ where  $V_{\mathrm{ENT}} =$  enterprise value


$\mathrm{NOPAT}_{t + 1} = \mathrm{net}$  operating profit after taxes in year  $t + 1$

This equation can be rearranged to solve for the enterprise value, which we will use in the next step:

$$

V _ {\text {E N T}} = \mathrm {N O P A T} _ {t + 1} \left(\mathrm {P E} _ {u}\right) \tag {D.1}

$$

# STEP 2: LINKING NET INCOME TO NOPAT

For a company partially financed with debt, net income (NI) equals NOPAT less after-tax interest payments. Assuming the value of debt equals its face value, the company's interest expense will equal the cost of debt times the value of debt, which can be defined by multiplying enterprise value by the debt-to-value ratio:

$$

\mathrm {N I} _ {t + 1} = \mathrm {N O P A T} _ {t + 1} - V _ {\mathrm {E N T}} \left(\frac {D}{V}\right) k _ {d}

$$

Substitute Equation D.1 for the enterprise value:

$$

\mathrm {N I} _ {t + 1} = \mathrm {N O P A T} _ {t + 1} - \mathrm {N O P A T} _ {t + 1} \left(\mathrm {P E} _ {u}\right) \left(\frac {D}{V}\right) k _ {d}

$$

Factor NOPAT into a single term:

$$

\mathrm {N I} _ {t + 1} = \mathrm {N O P A T} _ {t + 1} \left[ 1 - \mathrm {P E} _ {u} \left(\frac {D}{V}\right) k _ {d} \right] \tag {D.2}

$$

# STEP 3: DERIVING LEVERED P/E

At this point, we are ready to solve for the company's price-to-earnings ratio. Since  $\mathrm{P} / \mathrm{E}$  is based on equity values, first convert enterprise value to equity value. To do this, once again start with Equation D.1:

$$

V _ {\mathrm {E N T}} = \mathrm {N O P A T} _ {t + 1} \left(\mathrm {P E} _ {u}\right)

$$

To convert enterprise value into equity value, multiply both sides by 1 minus the debt-to-value ratio:

$$

V _ {\mathrm {E N T}} \left(1 - \frac {D}{V _ {\mathrm {E N T}}}\right) = \mathrm {N O P A T} _ {t + 1} \left(\mathrm {P E} _ {u}\right) \left(1 - \frac {D}{V _ {\mathrm {E N T}}}\right)

$$

Distribute  $V_{\mathrm{ENT}}$  into the parentheses:

$$

V _ {\mathrm {E N T}} - D = \mathrm {N O P A T} _ {t + 1} \left(\mathrm {P E} _ {u}\right) \left(1 - \frac {D}{V _ {\mathrm {E N T}}}\right)

$$

Replace enterprise value  $(V_{ENT})$  minus debt  $(D)$  with equity value  $(E)$ :

$$

E = \mathrm {N O P A T} _ {t + 1} \left(\mathrm {P E} _ {u}\right) \left(1 - \frac {D}{V _ {\mathrm {E N T}}}\right)

$$

Next, use Equation D.2 to eliminate  $\mathrm{NOPAT}_{t + 1}$ :

$$

E = \frac {\mathrm {N I} _ {t + 1} \left(\mathrm {P E} _ {u}\right) \left(1 - \frac {D}{V}\right)}{1 - \mathrm {P E} _ {u} \left(\frac {D}{V}\right) k _ {d}}

$$

Divide both sides by net income to find the levered P/E:

$$

\frac {E}{\mathrm {N I} _ {t + 1}} = \frac {\mathrm {P E} _ {u} - \mathrm {P E} _ {u} \left(\frac {D}{V}\right)}{1 - \mathrm {P E} _ {u} \left(\frac {D}{V}\right) k _ {d}}

$$

At this point, we have a relationship between equity value and net income, which depends on the unlevered P/E, the debt-to-value ratio, and the cost of debt. Debt-to-value, however, is in both the numerator and the denominator, so it is difficult to distinguish how leverage affects the levered P/E. To eliminate the debt-to-value ratio in the numerator, use a few algebraic tricks. First, multiply both the numerator and denominator by  $k_{d}$ :

$$

\frac {E}{\mathrm {N I} _ {t + 1}} = \frac {\mathrm {P E} _ {u} \left(k _ {d}\right) - \mathrm {P E} _ {u} \left(\frac {D}{V}\right) \left(k _ {d}\right)}{k _ {d} \left[ 1 - \mathrm {P E} _ {u} \left(\frac {D}{V}\right) \left(k _ {d}\right) \right]}

$$

Next, subtract and add 1 (a net difference of 0) in the numerator:

$$

\frac {E}{\mathrm {N I} _ {t + 1}} = \frac {\left[ \mathrm {P E} _ {u} \left(k _ {d}\right) - 1 \right] + \left[ 1 - \mathrm {P E} _ {u} \left(\frac {D}{V}\right) \left(k _ {d}\right) \right]}{k _ {d} \left[ 1 - \mathrm {P E} _ {u} \left(\frac {D}{V}\right) \left(k _ {d}\right) \right]}

$$

After separating the numerator into two distinct terms, you can eliminate the components of the right-hand term by canceling them with the denominator. This allows you to remove debt-to-value from the numerator:

$$

\frac {E}{\mathrm {N I} _ {t + 1}} = \frac {\mathrm {P E} _ {u} (k _ {d}) - 1}{k _ {d} \left[ 1 - \mathrm {P E} _ {u} \left(\frac {D}{V}\right) (k _ {d}) \right]} + \frac {1}{k _ {d}}

$$

To simplify the expression further, divide both the numerator and denominator of the complex fraction by  $k_{d}$ :

$$

\frac {E}{\mathrm {N I} _ {t + 1}} = \frac {1}{k _ {d}} + \frac {\mathrm {P E} _ {u} - \frac {1}{k _ {d}}}{1 - \mathrm {P E} _ {u} \left(\frac {D}{V}\right) \left(k _ {d}\right)}

$$

Finally, multiply the numerator and denominator of the second term by  $-1$ :

$$

\frac {E}{\mathrm {N I} _ {t + 1}} = \frac {1}{k _ {d}} + \frac {\frac {1}{k _ {d}} - \mathrm {P E} _ {u}}{\left(\frac {D}{V}\right) k _ {d} \left(\mathrm {P E} _ {u}\right) - 1}

$$

As this final equation shows, a company's P/E is a function of its unlevered P/E, its cost of debt, and its debt-to-value ratio. When the unlevered P/E equals the reciprocal of the cost of debt, the numerator of the second fraction equals zero, and leverage has no effect on the P/E. For companies with large unlevered P/Es, P/E systematically increases with leverage. Conversely, companies with small unlevered P/Es would exhibit a drop in P/E as leverage rises.

# Other Capital Structure Issues

This appendix discusses alternative models of capital structure and credit rating estimations. These models offer some interesting insights but tend to be less useful in practice for designing a company's capital structure. Finally, the appendix shows the similarities and differences between widely used credit ratios such as leverage, coverage, and solvency.

# PECKING-ORDER THEORY

An alternative to the view that there are trade-offs between equity and debt is a school of thought in finance theory that sees a pecking order in financing. According to this theory, companies meet their investment needs first by using internal funds (from retained earnings), then by issuing debt, and finally by issuing equity. One of the causes of this pecking order is that investors interpret financing decisions by managers as signals of a company's financial prospects. For example, investors will interpret an equity issue as a signal that management believes shares are overvalued. Anticipating this interpretation, rational managers will turn to equity funding only as a last resort, because it could cause the share price to fall. An analogous argument holds for debt issues, although the overvaluation signal is much smaller because the value of debt is much less sensitive to a company's financial success.

According to the theory, companies will have lower leverage when they are more mature and profitable, simply because they can fund internally and do not need any debt or equity funding. However, evidence for the theory is not conclusive. For example, mature companies generating strong cash flows are among the most highly leveraged, whereas the pecking-order theory would predict them to have the lowest leverage. High-tech start-up companies are among the least leveraged, rather than debt loaded, as the theory would predict. Empirical research shows how the signaling hypotheses underlying the pecking-order theory are more relevant to financial managers in selecting and timing specific funding alternatives than for setting long-term capital structure targets. Surveys among financial executives confirm these findings.

# MARKET-BASED RATING APPROACH

Alternative metrics to credit ratings have been developed based on the notion that equity can be modeled as a call option on the company's enterprise value, with the debt obligations as the exercise price. Using option valuation models and market data on price and volatility of the shares, these approaches estimate the future probability of default—that is, the probability that enterprise value will be below the value of debt obligations. The advantage is that all information captured by the equity markets is directly translated into the default estimates. Traditional credit ratings tend to lag changes in a company's performance and outlook because they aim to measure credit quality "through the cycle" and are less sensitive to short-term fluctuations in quality.

The disadvantage of market-based ratings is that no fundamental analysis is performed on the company's underlying business and financial health. If equity markets have missed some critical information, the resulting estimates of default probability do not reflect their omission. As discussed in Chapter 7, markets reflect company fundamentals most of the time, but not always. When they do not, the market-based rating approaches would incorrectly estimate default risk as well.[9]


# LEVERAGE, COVERAGE, AND SOLVENCY

The leverage measure used in the academic literature is typically defined as the market value of debt  $(D)$  over the market value of debt plus equity  $(E)$ :

$$

\text {L e v e r a g e} = \frac {D}{D + E}

$$

This ratio measures how much of the company's enterprise value is claimed by debt holders and is an important concept for estimating the benefits of tax shields arising from debt financing. It is therefore also a crucial input in calculating the weighted average cost of capital (WACC; see Chapter 15 on capital structure weights).

Compared with coverage ratios such as earnings before interest, taxes, and amortization (EBITA) to interest, leverage ratios suffer from several drawbacks as a way to measure and target a company's capital structure. First, companies could have very low leverage in terms of market value but still be at a high risk of financial distress if their short-term cash flow is low relative to interest payments. High-growth companies usually have very low levels of leverage, but this does not mean their debt is low-risk. A second drawback is that market value can change radically (especially for high-growth, high-multiple companies), making leverage a fast-moving indicator. For example, during the stock market boom of the late 1990s, several European telecom companies had what appeared to be reasonable levels of debt financing in terms of leverage. Credit providers appeared willing to provide credit even though the underlying near-term cash flows were not very high relative to debt service obligations. But when the companies' market values plummeted in 2001, leverage for these companies shot up, and financial distress loomed. Thus, it is risky to base a capital structure target on a market-value-based measure.

This does not mean that leverage and coverage are fundamentally divergent measures. Far from it: they actually measure the same thing but over different time horizons. For ease of explanation, consider a company that has no growth in revenues, profit, or cash flows. For this company, it is possible to express the leverage and coverage as follows: $^{10}$


$$

\begin{array}{l} \text {L e v e r a g e} = \frac {D}{D + E} \\ = \frac {\text {I n t e r e s t} _ {1} + \mathrm {P V} (\text {I n t e r e s t} _ {2}) + \dots + \mathrm {P V} (\text {I n t e r e s t} _ {\infty})}{\mathrm {N O P A T} _ {1} + \mathrm {P V} (\mathrm {N O P A T} _ {2}) + \dots + \mathrm {P V} (\mathrm {N O P A T} _ {\infty})} \\ \end{array}

$$

$$

\text {C o v e r a g e} = \frac {\text {E B I T A}}{\text {I n t e r e s t}} = \frac {1}{(1 - T)} \times \frac {\text {N O P A T}}{\text {I n t e r e s t}}

$$ where  $D =$  market value of debt

$$
E = \text {m a r k e t}
$$

$\mathrm{NOPAT}_t = \text{net operating profit after taxes in year } t$

$\mathrm{Interest}_t =$  interest expenses in year  $t$

$$
T = \text {t a x r a t e}
$$

The market value of debt captures the present value of all future interest payments, assuming perpetual rollover of debt financing. The enterprise value  $(E + D)$  is equal to the present value of future NOPAT, because depreciation equals capital expenditures for a zero-growth company. A leverage ratio therefore measures the company's ability to cover its interest payments over a very long term. The problem is that short-term interest obligations are what mainly get a company into financial distress. Coverage, in contrast, focuses on the short-term part of the leverage definition, keeping in mind that NOPAT roughly equals EBITA  $\times (1 - T)$ . It indicates how easily a company can service its debt in the near term.

Both measures are meaningful, and they are complementary. For example, if market leverage were very high in combination with strong current interest coverage, this could indicate the possibility of future difficulties in sustaining current debt levels in, for example, a single-product company faced with rapidly eroding margins and cash flows because the product is approaching the end of its life cycle. Despite very high interest coverage today, such a company might not be given a high credit rating, and its capacity to borrow could be limited.

Solvency measures of debt over book value of total assets or equity are seldom as meaningful as coverage or leverage. The key reason is that these book value ratios fail to capture the company's ability to comply with debt service requirements in either the short term or the long term. Market-to-book ratios can vary significantly across sectors and over time, making solvency a poor proxy for long-term ability to service debt.

Solvency becomes more relevant in times of financial distress, when a company's creditors use it as a rough measure of the available collateral. Higher levels of solvency usually indicate that debt holders stand better chances of recovering their principal and interest due—assuming that asset book values are reasonable approximations of asset liquidation values. However, in a going concern, solvency is much less relevant for deciding capital structure than coverage and leverage measures.

# Technical Issues in Estimating the Market Risk Premium

In its simplest form, the historical market risk premium can be measured by subtracting the return on government bonds from the return (total return to shareholders) on a large sample of companies over some time frame. But this requires many choices that will affect the results. For the best measurement of the risk premium using historical data, follow the guidelines presented in this appendix.

# CALCULATE PREMIUM RELATIVE TO LONG-TERM GOVERNMENT BONDS

When calculating the market risk premium, compare historical market returns with the return on ten-year government bonds. Long-term government bonds match the duration of a company's cash flows better than short-term bonds.

# USE THE LONGEST PERIOD POSSIBLE

How far back should you look when using historical observations to predict future results? If the market risk premium is stable, a longer history will reduce estimation error. Alternatively, if the premium changes and estimation error is small, a shorter period is better. To determine the appropriate historical period, consider any trends in the market risk premium compared with the imprecision associated with short-term estimates.

To test for the presence of a long-term trend, we regress the U.S. market risk premium against time. Over the past 119 years, no statistically significant trend is observable. Based on regression results, the average excess return has fallen by two basis points a year, but this result cannot be statistically distinguished from zero. Premiums calculated over shorter periods are too volatile to be meaningful. For instance, U.S. stocks outperformed bonds by 18 percent in the 1950s but offered no premium in the 1970s. Given the lack of any discernible trend and the significant volatility of shorter periods, use the longest time series possible.

# USE AN ARITHMETIC AVERAGE OF LONGER-DATED (E.G., TEN-YEAR) INTERVALS

When reporting market risk premiums, most data providers report an annual number, such as 6.3 percent per year. But how do they convert a century of data into an annual number? And is the annualized number even relevant?

Annual returns can be calculated using either an arithmetic average or a geometric average. An arithmetic (simple) average sums each year's observed premium and divides by the number of observations:

$$
\text {A r i t h m e t i c A v e r a g e} = \frac {1}{T} \sum_ {t = 1} ^ {T} \frac {1 + R _ {m} (t)}{1 + r _ {f} (t)} - 1
$$ where  $T =$  number of observations


$$

R _ {m} (t) = \text {m a r k e t}

$$

$$ r _ {f} (t) = \text {r i s k - f r e e r a t e i n y e a r} t
$$

A geometric average compounds each year's excess return and takes the root of the resulting product:

$$
\text {G e o m e t r i c A v e r a g e} = \left(\prod_ {t = 1} ^ {T} \frac {1 + R _ {m} (t)}{1 + r _ {f} (t)}\right) ^ {1 / T} - 1
$$

The choice of averaging methodology will affect the results. For instance, between 1900 and 2019, U.S. stocks outperformed long-term government bonds by 6.3 percent per year when averaged arithmetically. Using a geometric average, the outperformance drops to 4.2 percent. This difference is not random; arithmetic averages always exceed geometric averages when returns are volatile.

So which averaging method on historical data best estimates the expected rate of return? Well-accepted statistical principles dictate that the best unbiased estimator of the mean (expectation) for any random variable is the arithmetic average. Therefore, to determine a security's expected return for one period, the best unbiased predictor is the arithmetic average of many one-period returns. A one-period risk premium, however, can't value a company with many years of cash flow. Instead, long-dated cash flows must be discounted using a compounded rate of return. But when compounded, the arithmetic average will generate a discount factor that is biased upward (too high).

The cause of the bias is quite technical, so we provide only a summary here. There are two reasons why compounding the historical arithmetic average leads to a biased discount factor. First, the arithmetic average is measured with error. Although this estimation error will not affect a one-period forecast (the error has an expectation of zero), squaring the estimate (as you do in compounding) in effect squares the measurement error, causing the error to be positive. This positive error leads to a multiyear expected return that is too high. Second, a number of researchers have argued that stock market returns are negatively autocorrelated over time. If positive returns are typically followed by negative returns (and vice versa), then squaring the average will lead to a discount factor that overestimates the actual two-period return, again causing an upward bias.

We have two choices to correct for the bias caused by estimation error and negative autocorrelation in returns. First, we can calculate multiyear returns directly from the data, rather than compound single-year averages. Using this method, a cash flow received in ten years will be discounted by the average ten-year market risk premium, not by the annual market risk premium compounded ten times.[2] From 1900 through 2019, the average one-year excess return equaled 6.3 percent. The average ten-year cumulative excess return equaled 71.3 percent.[3] This translates to an annual rate of 5.5 percent. Alternatively, researchers have used simulation to show that an estimator proposed

 Jay Ritter writes, "There is no theoretical reason why one year is the appropriate holding period. People are used to thinking of interest rates as a rate per year, so reporting annualized numbers makes it easy for people to focus on the numbers. But I can think of no reason other than convenience for the use of annual returns." J. Ritter, "The Biggest Mistakes We Teach," Journal of Financial Research 25 (2002): 159-168.

3 To compute the average ten-year cumulative return, we use overlapping ten-year periods. To avoid underweighting early and late observations (for instance, the first observation would be included only once, whereas a middle observation would be included in ten separate samples), we create a synthetic ten-year period by combining the most recent observations with the oldest observations. Nonoverlapping windows lead to similar results but are highly dependent on the starting year.

by Marshall Blume best adjusts for problems caused by estimation error and autocorrelation of returns: $^4$

$$
R = \left(\frac {T - N}{T - 1}\right) R _ {A} + \left(\frac {N - 1}{T - 1}\right) R _ {G}
$$ where  $T =$  number of historical observations in sample


$N =$  forecast period being discounted

$R_{A} =$  arithmetic average of historical sample

$R_{G} =$  geometric average of historical sample

Blume's estimator depends on the length of time for which you plan to discount. The first year's cash flow should be discounted using the arithmetic average  $(T = 119, N = 1)$ , whereas the tenth year's cash flow should be discounted based on a return constructed with a 92.4 percent weighting on the arithmetic average and an 8.3 percent weighting on the long-term geometric average  $(T = 119, N = 10)$ . The resulting estimator for the ten-year cash flow equals 6.2 percent.

Even with the best statistical techniques, however, these estimates are probably too high, because our sample includes only U.S. data, representing the best-performing market over the past century. Since it is unlikely that the U.S. stock market will replicate its performance over the next century, we adjust downward the historical market risk premium. Research shows that the U.S. arithmetic annual return exceeded a 17-country composite return by 0.8 percent in real terms. If we subtract an 0.8 percent survivorship premium from the values presented above, this leads to an expected return of between 5.0 percent and 5.5 percent.

# Global, International, and Local CAPM

The standard capital asset pricing model (CAPM), introduced in Chapter 15, for estimating the cost of capital, does not explicitly account for foreign assets, foreign investors, or currencies. This raises the question whether such a model can provide the right cost of capital for investments in foreign currencies. If foreign-currency rates are changing, the same investment will generate different returns to investors from different countries. Take the case of a German government bond denominated in euros. From the perspective of a German or Dutch investor, this bond generates a risk-free return (assuming there is no inflation), because the euro is also the investor's domestic currency. But the bond's return is not risk free for investors in the United States, because the return measured in U.S. dollars will vary with the dollar-to-euro exchange rate.

As a general rule, investors from countries with different currencies are likely to disagree about an asset's expected return and risk. In theory, this means that the standard CAPM no longer holds, and a more complex, international CAPM is required. In practice, however, we find that the CAPM-based approach as laid out in Chapter 15 is still valid for estimating the cost of capital for cross-border investments. This appendix provides further background for our recommendations and practical guidelines for estimating the cost of capital in foreign currency.

# GLOBAL CAPM

Investors' disagreement about the return and risk of international investments disappears if purchasing power parity (PPP) holds across all currencies. In that case, changes in exchange rates perfectly match differences in inflation between currencies:

$$

X _ {t} = X _ {t - 1} \left(\frac {1 + i _ {A}}{1 + i _ {B}}\right)

$$ where  $X_{t} =$  exchange rate of currency  $B$  expressed in units of currency  $A$  at time  $t$

$\dot{a}_A,\dot{a}_B =$  inflation rate for currency  $A,B$

As a result, the expected return and risk in real terms for any asset will be the same for all investors, regardless of their domestic currency. In the German bond example, any appreciation of the U.S. dollar relative to the euro would make the nominal bond return for U.S. investors lower. But if PPP holds, the inflation rate in the United States would be lower by exactly the same amount, so the payoff in real terms for U.S. and German investors would be equal. In real terms, there is no currency risk for investors. They will all hold the same global market portfolio of risky assets and face the same real risk-free rate as if there were only a single currency.

The resulting so-called global CAPM is in fact the standard CAPM with a global market portfolio. It expresses the expected real return for an asset  $j$  as follows:

$$
E (r _ {j}) = r _ {f} + \beta_ {j, G} \Big [ E (r _ {G}) - r _ {f} \Big ]
$$ where  $r_j =$  return for asset  $j$


$$ r _ {f} = \text {r i s k - f r e e r a t e}
$$

$\beta_{j,G} =$  beta of asset  $j$  versus global market portfolio  $G$

$r_{G} =$  return for global market portfolio  $G$

According to the global CAPM, the cost of capital for domestic as well as foreign assets follows from the asset's beta relative to the global market portfolio and the market risk premium of that market portfolio relative to the risk-free rate.

Technically, the global CAPM is valid only if PPP holds. Evidence on PPP has been mixed, but academic research appears to conclude that deviations from PPP between currencies are typically reduced to half their value within three to five years. In other words, exchange rates do adjust for differences in inflation between countries, although not immediately and perfectly.

For investors and companies able to invest outside their home markets without restrictions, we recommend using the global CAPM to estimate the cost of capital for foreign as well as domestic investments. Effectively, this means applying the approach described in Chapter 15. Although the alternative, international CAPM (discussed next), may be theoretically superior, it is far more complex and does not lead to materially different results in practice.

# INTERNATIONAL CAPM

If PPP does not hold, real returns from foreign assets are no longer free from currency risk, because changes in exchange rates are not offset by differences in inflation. The greater the correlation between the return on a foreign asset and the relevant currency rate, the higher the risk for an investor. Take, for example, a Dutch company whose stock returns, measured in euros, tend to be higher when the euro appreciates against the U.S. dollar and vice versa (for instance, because the company imports components from the United States and sells end products in Europe). The stock's returns will be riskier for an American investor than for a European investor, because the exchange rate tends to amplify the returns when translated into U.S. dollars. The absence of PPP means that disparities between dollar and euro inflation will not offset this difference in returns when measured in real terms.

To hold foreign assets, rational investors will require some compensation in the form of a higher expected return for an asset, depending on its exposure to currency risk. As a result, what matters for an asset's expected return is no longer only the asset's beta versus the global market portfolio (as in case of the global CAPM). The international CAPM captures the additional return requirements by also including asset betas versus currency exchange rates. For example, in a world consisting of three countries, each with its own currency, the international CAPM would define the expected return on asset  $j$  in a given home currency as follows:3

$$
E \left(r _ {j}\right) = r _ {f} + \beta_ {j, G} \left[ E \left(r _ {G}\right) - r _ {f} \right] + \beta_ {j, A} C R P _ {A} + \beta_ {j, B} C R P _ {B} \tag {G.1}
$$ where  $r_j =$  return for asset  $j$


$$ r _ {f} = \text {r i s k - f r e e r a t e}
$$

$\beta_{j,G} =$  beta of asset  $j$  versus global market portfolio  $G$

$\beta_{j,A}, \beta_{j,B} =$  beta of asset  $j$  versus currency rate  $X_A, X_B$

$\mathrm{CRP}_A, \mathrm{CRP}_B =$  risk premium for currency  $A, B$

The currency risk premiums are defined as follows:

$$
\mathrm {C R P} _ {n} = \frac {E \left(X _ {n 1}\right) - F _ {n 1}}{X _ {n 0}} \tag {G.2}
$$ where  $X_{nt} =$  exchange rate of home currency expressed in units of currency  $n$  at time  $t$  where  $n = A, B$


$F_{n1} =$  forward rate for  $t = 1$  of home currency expressed in units of currency  $n$

Although theoretically correct, the international CAPM is probably too cumbersome for practical use. In particular, it is not clear how many of the world's currencies to include in estimating the cost of capital. Even taking only a handful of leading global currencies would require that you estimate as many currency risk premiums. Further, in addition to an asset's market beta, you would need to estimate its beta versus each of these currencies.

Another reason not to use the international CAPM is that empirical research has shown that the currency risk premiums are typically too small to matter when estimating a cost of capital. According to recent research that compared cost of capital estimates from a global and an international CAPM for large U.S. companies, differences are probably less than half a percentage point. As we can see from Equations G.1 and G.2, the international CAPM simplifies to the global CAPM when currency risk premiums are negligible. In other words, PPP apparently holds sufficiently well for the global CAPM to lead to the same cost of capital as the international CAPM. Expressed either way, this evidence reinforces our recommendation to use the global CAPM.

# LOCAL CAPM

Some practitioners and academic researchers propose estimating the cost of capital for an investment opportunity in a particular country by using a local CAPM. The investment's beta is then estimated versus the market portfolio of the country, and the market risk premium follows from the excess return of that same market portfolio over the local risk-free rate. The approach is theoretically correct if stocks are correlated to the global market portfolio only through the local market:

$$

\boldsymbol {\beta} _ {j, G} = \boldsymbol {\beta} _ {j, L} \times \boldsymbol {\beta} _ {L, G} \tag {G.3}

$$ where  $\beta_{j,G} =$  beta of asset  $j$  versus global market portfolio  $G$

$\beta_{j,L} =$  beta of asset  $j$  versus local market portfolio  $L$

$\beta_{L,G} =$  beta of local market portfolio  $L$  versus global market portfolio  $G$

This implies that any international risk factors influencing the returns of companies in a given country are fully captured by the local market portfolio of that country. You can then indirectly estimate any asset's global beta by multiplying its local beta by the global beta of the local market. If the local stock market is fully integrated and correctly priced in the global market, its expected return is:

$$
E \left(r _ {L}\right) = r _ {f} + \beta_ {L, C} \left[ E \left(r _ {G}\right) - r _ {f} \right] \tag {G.4}
$$ where  $r_L =$  expected return for local market portfolio  $L$


$r_f =$  risk-free rate

$r_{G} =$  return for global market portfolio  $G$

Combining Equations G.3 and G.4 shows that the expected return for a stock  $j$  estimated via the local and global CAPM should be equal as well. Following the global CAPM, this return is given by:

$$

E \left(r _ {j}\right) = r _ {f} + \beta_ {j, G} \left[ E \left(r _ {G}\right) - r _ {f} \right]

$$

Substituting the asset's global beta by the indirect beta defined previously in Equation G.3 leads to:

$$

E \left(r _ {j}\right) = r _ {f} + \beta_ {j, L} \times \beta_ {L, G} \left[ E \left(r _ {G}\right) - r _ {f} \right]

$$

This can be rearranged to show equivalence with the local CAPM:

$$

E (r _ {j}) = r _ {f} + \beta_ {j, L} [ E (r _ {L}) - r _ {f} ]

$$

Although the assumptions may not seem very realistic at face value, there is evidence that the local and global CAPM generate similar results. Empirical research finds that the cost of capital estimated for U.S. companies with a local CAPM is very close to the estimate based on a global CAPM.[7] For U.S. stocks, this may not be surprising, as the U.S. market portfolio is well diversified and highly correlated with the global market portfolio. But supporting evidence also comes from nine developed economies, including not only the United States but also the United Kingdom, Germany, France, and smaller economies such as the Netherlands and Switzerland. An analysis of beta estimates for companies versus a local and global market portfolio has shown that for these countries, the betas are typically related, as indicated by Equation G.3.[8]

However, the local CAPM approach, when compared with the global CAPM, has some practical drawbacks. First is that when you apply the local CAPM to investments in different countries, you should estimate the local market risk premium and beta for each of these countries, instead of only the global market risk premium, as you would do when applying the global CAPM. Also, with a local CAPM, you cannot make a straightforward estimate of a company's beta based on the average of the estimated betas for a sample of industry peers (which Chapter 15 recommends to reduce the standard error of the company's beta). The reason is that if the peers are in different countries, their local betas are not directly comparable. Finally, local risk premiums are typically less stable over time than their aggregate, the global risk premium. For example, Exhibit G.1 compares the realized premiums on local stock market indexes with government bond returns for several countries and a globally diversified portfolio, using data from Dimson, Marsh, and Staunton's analysis of long-term average returns on equities and corporate and government bonds.[9] The individual countries' risk premiums vary considerably, depending on the time period over which they are measured, while the global premium remains almost unchanged.

Note that the risk premium differences shown in Exhibit G.1 do not mean that the price for risk varies across these countries. These differences are driven by several factors. First, levels of economic development and, therefore, profit

R. Harris, F. Marston, D. Mishra, and T. O'Brien, "Ex-Ante Cost of Equity Estimates of S&P 500 Firms: The Choice between Domestic and Global CAPM," Financial Management 32, no. 3 (2003): 51-66.
 See C. Koedijk, C. Kool, P. Schotman, and M. van Dijk, "The Cost of Capital in International Financial Markets: Local or Global?", Journal of International Money and Finance 21, no. 6 (2002): 905-929.
 E. Dimson, P. Marsh, and M. Staunton, *Triumph of the Optimists: 101 Years of Global Investment Returns* (Princeton, NJ: Princeton University Press, 2002); and E. Dimson, P. Marsh, M. Staunton, and J. Wilmot, *Credit Suisse Global Investment Returns Yearbook* 2016 (London: Credit Suisse Research Institute, 2016).

# EXHIBIT G.1 Comparing Risk Premiums across Countries and over Time

Annualized market risk premium over 1-year Treasury bills, \%

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/69ab1b76-099f-46d2-9341-d47072e8fd93/be8ecdfbaf3c9cd1c7b77e6b49910325e8127ee20a67e57f7de65cf66d20533c.jpg)
Source: E. Dimson, P. Marsh, and M. Staunton, *Triumph of the Optimists: 101 Years of Global Investment Returns* (Princeton, NJ: Princeton University Press, 2002); E. Dimson, P. Marsh, M. Staunton, and J. Wilmot, *Credit Suisse Global Investment Yearbook* 2016 (London: Credit Suisse Research Institute, February 2016).
1 Globally diversified portfolio.

growth have varied over the past century among the countries. Second, capital markets were less integrated in the past, so prices across countries may not have been equalized. The main reason, though, is that many of the stock market indexes used had different levels of diversification and beta. Therefore, their performance was skewed by different industry concentrations. In most European countries, the key stock market indexes, which account for the majority of their stock markets' total capitalization, typically include only 25 to 40 companies, often from a limited range of industries. Indeed, research has shown that a large fraction of the variation in returns on European market indexes could be explained by their industry composition (see Exhibit G.2).

Adjusted  $R^2$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/69ab1b76-099f-46d2-9341-d47072e8fd93/151a8da7dd52d410cd8228b1dae3bcb767044bd656b5aa3bba4015d6271c00e3.jpg)
EXHIBIT G.2 Share of Equity Returns Explained by Industry Composition of Index

Source: R. Roll, "Industrial Structure and the Comparative Behaviour of International Stock Market Indexes," Journal of Finance 47, no. 1 (1992): 3-42.

We recommend a local CAPM only for investors and companies facing restrictions on investing abroad. In that case, the local market portfolio is the right reference to estimate the cost of capital. As a result, valuations in such restricted markets can be out of line with those in global markets—which is what we have encountered in the past for valuations in, for example, Asian stock markets.

# A Valuation of Costco Wholesale

This appendix shows a typical outside-in valuation model, using Costco Wholesale as an example. Our historical analysis is based on Costco's published income statements and balance sheets from its 2015 to 2019 annual reports. Companies rarely restate balance sheets more than one or two years back in time, so we use original data to avoid confusion. The line item names and references to footnotes are worded according to the conventions of the 2019 annual report.

The valuation process we apply here is detailed in Part Two. The following commentary provides an informal guide to each of the exhibits, including clarification of items that may not be apparent. We hope our references to specific chapters will help readers connect the exhibits to general principles explored in the book.

# MODELING THE FINANCIAL STATEMENTS

The valuation process begins by modeling the financial statements in a spreadsheet, including the income statement, the balance sheet, the statement of shareholders' equity, and the tax reconciliation table. The first three statements for Costco are presented in the annual report following the auditor's letter. The company's tax reconciliation table is found in the notes to the financial statements.

Exhibit H.1: Income Statement. We present the income statement as reported by the company, with two exceptions. First, the exhibit separates depreciation from selling, general, and administrative expenses. Costco reports depreciation in its statement of cash flows. Second, we separate interest income from other income. We do this to enable the modeling of income generated from future balances of excess cash. Costco provides details on interest and other income in the section on management's discussion and analysis.

For each of the financial statements, we provide the historical values reported by the company as well as our forecasts of future performance. The final year is denoted by CV, which represents the base year used in continuing value. We discuss continuing value later in this appendix.

Exhibit H.2: Balance Sheet. We present the balance sheet as reported by the company, with three exceptions. First, we aggregate cash and short-term investments into a single account.

Second, we separate deferred taxes from other current assets, other assets, and other liabilities. This allows us to estimate cash taxes, identify tax loss carryforwards, and reclassify remaining amounts as equity equivalents during reorganization. Costco reports deferred taxes and their location on the balance sheet in Note 8, Taxes.

Third, because capital leases are a form of debt financing, we separate them from other current liabilities and other liabilities. In our experience, most companies embed capital leases within debt, but this is not the case for Costco. The company reports capital leases and their location on the balance sheet in Note 5, Leases.

Exhibit H.3: Statement of Shareholders' Equity. The statement of shareholders' equity explains the change in equity from one year to the next. The statement includes the translation adjustment for foreign operations, stock-based compensation, repurchases of common stock, and dividends. These accounts are required for reconciling free cash flow to cash flow available to investors. For some accounts, like dividends, the account appears directly in the reconciliation of cash flow. In other cases, it is used to eliminate a noncash change in a balance sheet account, such as the foreign-currency translation adjustment.

Exhibit H.4: Tax Reconciliation Table. The tax reconciliation table is required to estimate operating taxes and reconcile net operating profit after taxes (NOPAT) to net income. Costco reports the tax reconciliation table in Note 8, Taxes. While most companies report the table in either their home currency or percentages, Costco reports both versions.

# REORGANIZING THE FINANCIAL STATEMENTS

With financial statements in hand, we next reorganize them into NOPAT, operating taxes, invested capital, and total funds invested. Here we briefly describe the reorganization; Chapter 11 presents a full description of how to reorganize the financial statements.

Exhibit H.5: NOPAT. This exhibit reorganizes the income statement into NOPAT and reconciles NOPAT to net income. In the case of Costco, unadjusted EBITA matches operating profit as reported on the company's income statement. This is not always the case. As we discuss in Chapter 21, many companies include nonrecurring items such as restructuring costs as part of operating profit. Only ongoing operating expenses should be deducted from revenue to estimate EBITA.


As we prescribed in Chapter 11, we remove operating lease interest from operating profit and treat it as a financial expense. The lease interest is calculated by multiplying the cost of debt by capitalized operating leases in the previous year, which can be found in Exhibit H.8. Do not add back interest expense related to capital leases. This item is already incorporated into interest expense.

Exhibit H.6: Taxes. To calculate NOPAT and its reconciliation to net income, it is necessary to disaggregate taxes into operating taxes, taxes on nonoperating accounts, and other nonoperating taxes. Exhibit H.6 estimates operating cash taxes, using the three-step method introduced in Chapter 11 and discussed in detail in Chapter 20. First, multiply EBITA by the statutory tax rate presented in Exhibit H.4. The statutory tax rate equals the sum of the federal income and state income tax rates.

Next, adjust statutory taxes on EBITA by ongoing, operating-related adjustments. Use judgment to identify which adjustments are ongoing and operating related. For Costco, we adjust statutory taxes on EBITA by two items: the foreign tax differential and tax related to the employee stock ownership plan. Finally, to convert operating taxes into operating cash taxes, subtract the increase in operating-related deferred-tax liabilities, net of deferred-tax assets. An increase in deferred tax liabilities means the company paid less in taxes than reported on its income statement.

Exhibit H.7: Deferred Taxes. To create the inputs needed for the cash tax rate, reorganize the deferred-tax table into tax loss carryforwards; operating deferred-tax assets, net of liabilities; and nonoperating deferred-tax assets, net of liabilities. As with the tax reconciliation table, classification of an account as operating or nonoperating requires judgment. Ask yourself which accounts are operating related and likely to scale with revenue. To calculate the amount of operating taxes that are deferred, add (subtract) the increase (decrease) in the operating deferred account to (from) operating taxes.

For more on the concepts underpinning the operating tax rate and the treatment of deferred taxes, see Chapter 20.

Exhibit H.8: Invested Capital and Total Funds Invested. To estimate invested capital, pull each account directly from the balance sheet, except two: operating cash and capitalized operating leases. Operating cash is estimated at 2 percent of revenues. Cash in excess of 2 percent of revenues is classified as excess cash.

Starting with fiscal years that end in December 2019, new accounting standards require companies to capitalize operating leases onto their balance sheet. Costco uses an August 31 year-end, so its 2019 financial statements are reported under the previous standards, whereby the value of the leases is not capitalized. Given this circumstance, we add the capitalized value of leases to invested capital and the reconciliation of total funds invested. Going forward, this step will no longer be necessary. Chapter 22 explains how to adjust for operating leases under the new standards. Exhibit 22.10 demonstrates how to value operating leases for 2019, the last year of our Costco historical data, by using the present value of rental commitments.


Exhibit H.9: Reconciliation of Total Funds Invested. To better understand how the business is financed and to assure accuracy through a second set of calculations, recalculate total funds invested, but this time using sources of capital. Exhibit H.9 calculates debt and debt equivalents, which include capitalized operating leases. Equity includes common stock and retained earnings. Equity equivalents include deferred-tax accounts, except for tax loss carryforwards. For Costco, the deferred-tax accounts are negative in some years and act as an offset to equity because deferred-tax assets are larger than the corresponding liabilities.

Costco's total funds invested are financed mostly by equity. For more on how to evaluate and create an appropriate capital structure to support the operations of a business, see Chapter 33.

# FORECASTING THE FINANCIALS

For each financial statement, we present a ten-year forecast. Chapter 13 demonstrates how to create a set of forecasts, link your forecasts to the financial statements, and avoid common pitfalls.

Exhibit H.10: Income Statement Forecast Ratios. To estimate revenue growth and cost of sales for Costco, we rely on analyst reports from September 2019. One such report is detailed in Exhibit 13.3. We forecast the remaining accounts using financial ratios from either the last fiscal year or an average of the last five fiscal years, depending on the account's stability.

To forecast the interest expense on debt, we estimate interest expense as a percentage of prior-year debt. Since we value operations using free cash flow, our forecast of interest expense will not affect the value of operations. We create a forecast solely for the purpose of cash flow planning and to create an integrated set of financial statements. Integrated financials reduce the likelihood of modeling errors.

Exhibit H.11: Balance Sheet Forecast Ratios. For the balance sheet, we organize the forecast ratios into working capital, long-term assets, debt, and equity. Most working-capital items are forecast using days in revenues. The exceptions are merchandise inventories and accounts payable, which are linked to merchandise cost. Long-term assets and liabilities are estimated at a constant percent of revenues.

To estimate leverage, we assume Costco will maintain its current debt-to-value ratio. We then split total leverage across short-term debt, long-term debt, and capital leases based on the five-year averages. Stock-based compensation is forecast as a percent of revenues. Dividends are forecast as a percent of net income. Excess cash is paid out over five years, and cash flows not required for investment, payments to debt holders, or dividends are used to repurchase shares. (Share repurchases become a plug in this model to balance the cash flows after all other items are accounted for.)


While the forecasts related to debt and share repurchases affect the income statement and balance sheet, they will have no effect on value in an enterprise DCF. Capital structure affects valuation only through the weighted average cost of capital (WACC).

Exhibit H.12: Free Cash Flow and Cash Flow to Investors. Exhibit H.12 shows how free cash flow is estimated. Most accounts, such as operating working capital, equal the change in the corresponding invested-capital account. Capital expenditures are reported on the statement of cash flows. Because of currency translations, capital expenditures do not equal the change in net property, plant, and equipment plus depreciation. The link between capital expenditures and the change in net property, plant, and equipment (PP&E) is detailed in Exhibit 11.14. Unexplained currency translations are treated as a nonoperating cash flow. $^{1}$

Exhibit H.13: Reconciliation of Cash Flow to Investors. To reconcile cash flow to investors, we accumulate the changes in debt and equity accounts. Debt includes traditional debt, capital leases, and capitalized operating leases. Equity includes stock-based compensation, repurchases of common stock, dividends, and payments to noncontrolling interests.

# ESTIMATING CONTINUING VALUE

Next, use a continuing-value formula to estimate the value of cash flows beyond the explicit forecast period. Start using the continuing-value formula only at the point when the company has reached a steady state.

Exhibit H.14: Continuing Value. We use the key value driver formula to estimate continuing value. The formula requires a forecast of NOPAT in 2030 (known as the continuing-value year, abbreviated as CV in Exhibits H.1, H.5, H.6, H.10, and H.17) to determine the continuing value as of 2029. We do not generate forecasts for continuing value for invested capital or free cash flow in the continuing-value year; they are unnecessary for the calculation.

One critical forecast in the continuing value is long-run revenue growth. Given the historical strength of Costco's ability to grow, we use a growth rate of 4 percent to estimate the long-run growth rate. For a comprehensive discussion of how to estimate continuing value, see Chapter 14.


# ESTIMATING THE WEIGHTED AVERAGE COST OF CAPITAL

To value operations, discount cash flow at the weighted average cost of capital. The WACC incorporates the required return from all sources of capital into a single number.

Exhibit H.15: Weighted Average Cost of Capital. Net of excess cash, Costco uses less debt than any of its industry peers. With this in mind, we assume that Costco will disgorge excess cash and set their target debt-to-value ratio to their current debt-to-value as measured on a gross basis.

Likewise, when we estimate the cost of debt and cost of equity, we use the same debt-to-value ratio. For a comprehensive discussion of the cost of capital, see Chapter 15.

# VALUING THE ENTERPRISE AND CONVERTING TO EQUITY

To value Costco, we use both enterprise DCF and discounted economic profit. Free cash flow (FCF) models measure how cash flows in and out of the company, regardless of accounting. Economic profit links better to value creation. Implemented correctly, both models will lead to the same valuation result.

Exhibit H.16: Enterprise DCF Valuation. To arrive at the present value of cash flow, we sum each year's discounted FCF with the discounted value of continuing value. Then we adjust the resulting value by half a year to estimate the value of operations, reflecting that cash flows are generated throughout the year. To the value of operations, we add any nonoperating assets that are excluded from free cash flow—in this case, excess cash and the value of tax loss carryforwards. For simplicity, we value tax loss carryforwards at book value less the valuation allowance.

Do not add other deferred-tax assets, such as those related to equity compensation or deferred membership fees, to the value of operations. The value of these tax assets is already incorporated into NOPAT using cash-based taxes. Consequently, they are classified as an equity equivalent and ignored.

To estimate intrinsic equity value, subtract debt and debt equivalents from enterprise value. This includes all debt, capitalized operating leases, and noncontrolling interests. While we use the book values for ease of exposition, use the market value of each account when available. Dividing equity value by the number of shares leads to a value of almost 220 per share, which matches the share price in early 2019. For more on converting enterprise value into equity value by adding nonoperating assets and subtracting debt equivalents, see Chapter 16.

Exhibit H.17: ROIC and Economic Profit. A robust valuation will focus not only on the resulting share price, but also on the critical value drivers that result from the model. Exhibit H.17 presents ROIC and economic profit by year. When benchmarking across companies or over time, we usually calculate ROIC using a two-year average of invested capital. In this situation, we calculate ROIC using invested capital from the beginning of the year, in order to create an economic-profit valuation that matches the results from enterprise DCF. In this exhibit, we present only a high-level analysis of performance. For more on how to disaggregate and assess ROIC in depth, see Chapter 12.

Exhibit H.18: Valuation Using Economic Profit. To determine the value of operations, add discounted economic profit to invested capital. As expected, an economic-profit-based valuation leads to the same value of operations as an enterprise DCF valuation.

# PUTTING THE MODEL TO WORK

While the valuation model is complete, a good financial analyst or investor will now put it to work. Ask yourself several questions: Which variables are the most critical to value? What is the value if performance remains unchanged? How does this value differ from one based on other forecasts? What is the value with proposed improvements? Are there scenarios that may provide additional insights on various strategies?

A model is more than its resulting valuation. As we discuss in Chapter 17, the most important insights are the ones you develop by testing alternatives and creating scenarios.

EXHIBIT H.1 Costco: Income Statement

<table><tr><td colspan="17">$ million</td></tr><tr><td rowspan="2"></td><td colspan="5">Historical</td><td colspan="11">Forecast</td></tr><tr><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td><td>CV^2</td></tr><tr><td>Merchandise sales</td><td>113,666</td><td>116,073</td><td>126,172</td><td>138,434</td><td>149,351</td><td>163,570</td><td>174,630</td><td>185,926</td><td>197,112</td><td>208,140</td><td>218,970</td><td>229,565</td><td>239,896</td><td>249,937</td><td>259,934</td><td>270,331</td></tr><tr><td>Membership fees</td><td>2,533</td><td>2,646</td><td>2,853</td><td>3,142</td><td>3,352</td><td>3,671</td><td>3,919</td><td>4,173</td><td>4,424</td><td>4,671</td><td>4,915</td><td>5,152</td><td>5,384</td><td>5,610</td><td>5,834</td><td>6,067</td></tr><tr><td>Revenues</td><td>116,199</td><td>118,719</td><td>129,025</td><td>141,576</td><td>152,703</td><td>167,241</td><td>178,549</td><td>190,099</td><td>201,536</td><td>212,811</td><td>223,884</td><td>234,718</td><td>245,281</td><td>255,546</td><td>265,768</td><td>276,399</td></tr><tr><td>Merchandise costs</td><td>(101,065)</td><td>(102,901)</td><td>(111,882)</td><td>(123,152)</td><td>(132,886)</td><td>(145,370)</td><td>(155,021)</td><td>(164,859)</td><td>(174,777)</td><td>(184,555)</td><td>(194,158)</td><td>(203,553)</td><td>(212,713)</td><td>(221,616)</td><td>(230,481)</td><td>(239,700)</td></tr><tr><td>Selling and general</td><td>(10,318)</td><td>(10,813)</td><td>(11,580)</td><td>(12,439)</td><td>(13,502)</td><td>(14,787)</td><td>(15,787)</td><td>(16,809)</td><td>(17,820)</td><td>(18,817)</td><td>(19,796)</td><td>(20,754)</td><td>(21,688)</td><td>(22,595)</td><td>(23,499)</td><td>(24,439)</td></tr><tr><td>Depreciation1</td><td>(1,127)</td><td>(1,255)</td><td>(1,370)</td><td>(1,437)</td><td>(1,492)</td><td>(1,584)</td><td>(1,734)</td><td>(1,852)</td><td>(1,971)</td><td>(2,090)</td><td>(2,207)</td><td>(2,322)</td><td>(2,434)</td><td>(2,544)</td><td>(2,650)</td><td>(2,756)</td></tr><tr><td>Preopening expenses</td><td>(65)</td><td>(78)</td><td>(82)</td><td>(68)</td><td>(86)</td><td>(94)</td><td>(101)</td><td>(107)</td><td>(114)</td><td>(120)</td><td>(126)</td><td>(132)</td><td>(138)</td><td>(144)</td><td>(150)</td><td>(156)</td></tr><tr><td>Operating income</td><td>3,624</td><td>3,672</td><td>4,111</td><td>4,480</td><td>4,737</td><td>5,406</td><td>5,906</td><td>6,473</td><td>6,854</td><td>7,229</td><td>7,597</td><td>7,957</td><td>8,307</td><td>8,647</td><td>8,988</td><td>9,348</td></tr><tr><td>Interest expense</td><td>(124)</td><td>(133)</td><td>(134)</td><td>(159)</td><td>(150)</td><td>(277)</td><td>(302)</td><td>(315)</td><td>(327)</td><td>(340)</td><td>(354)</td><td>(368)</td><td>(382)</td><td>(397)</td><td>(413)</td><td>(429)</td></tr><tr><td>Interest income</td><td>50</td><td>41</td><td>50</td><td>75</td><td>126</td><td>64</td><td>51</td><td>38</td><td>26</td><td>13</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Other income</td><td>54</td><td>39</td><td>12</td><td>46</td><td>52</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Earnings before taxes</td><td>3,604</td><td>3,619</td><td>4,039</td><td>4,442</td><td>4,765</td><td>5,192</td><td>5,655</td><td>6,197</td><td>6,552</td><td>6,902</td><td>7,244</td><td>7,589</td><td>7,925</td><td>8,250</td><td>8,575</td><td>8,918</td></tr><tr><td>Provision for income taxes</td><td>(1,195)</td><td>(1,243)</td><td>(1,325)</td><td>(1,263)</td><td>(1,061)</td><td>(1,255)</td><td>(1,369)</td><td>(1,503)</td><td>(1,590)</td><td>(1,676)</td><td>(1,760)</td><td>(1,845)</td><td>(1,928)</td><td>(2,008)</td><td>(2,088)</td><td>(2,172)</td></tr><tr><td>Net income, consolidated</td><td>2,409</td><td>2,376</td><td>2,714</td><td>3,179</td><td>3,704</td><td>3,937</td><td>4,286</td><td>4,694</td><td>4,962</td><td>5,226</td><td>5,484</td><td>5,744</td><td>5,997</td><td>6,242</td><td>6,488</td><td>6,746</td></tr><tr><td>Noncontrolling interests</td><td>(32)</td><td>(26)</td><td>(35)</td><td>(45)</td><td>(45)</td><td>(49)</td><td>(53)</td><td>(56)</td><td>(59)</td><td>(63)</td><td>(66)</td><td>(69)</td><td>(72)</td><td>(75)</td><td>(78)</td><td>(81)</td></tr><tr><td>Net income, Costco</td><td>2,377</td><td>2,350</td><td>2,679</td><td>3,134</td><td>3,659</td><td>3,888</td><td>4,233</td><td>4,638</td><td>4,903</td><td>5,163</td><td>5,418</td><td>5,675</td><td>5,925</td><td>6,167</td><td>6,409</td><td>6,665</td></tr></table>

Aggregated in selling, general, and administrative expenses in original filings.
Continuing-value forecast.

EXHIBIT H.2 Costco:Balance Sheet

<table><tr><td colspan="16">$ million</td></tr><tr><td rowspan="2"></td><td colspan="5">Historical</td><td colspan="10">Forecast</td></tr><tr><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td></tr><tr><td colspan="16">Assets</td></tr><tr><td>Cash and cash equivalents1</td><td>6,419</td><td>4,729</td><td>5,779</td><td>7,259</td><td>9,444</td><td>8,457</td><td>7,405</td><td>6,358</td><td>5,309</td><td>4,256</td><td>4,478</td><td>4,694</td><td>4,906</td><td>5,111</td><td>5,315</td></tr><tr><td>Receivables, net</td><td>1,224</td><td>1,252</td><td>1,432</td><td>1,669</td><td>1,535</td><td>1,681</td><td>1,795</td><td>1,911</td><td>2,026</td><td>2,139</td><td>2,251</td><td>2,359</td><td>2,466</td><td>2,569</td><td>2,672</td></tr><tr><td>Merchandise inventories</td><td>8,908</td><td>8,969</td><td>9,834</td><td>11,040</td><td>11,395</td><td>12,466</td><td>13,293</td><td>14,137</td><td>14,987</td><td>15,826</td><td>16,649</td><td>17,455</td><td>18,240</td><td>19,004</td><td>19,764</td></tr><tr><td>Deferred income taxes2</td><td>521</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Other current assets</td><td>227</td><td>268</td><td>272</td><td>321</td><td>1,111</td><td>1,217</td><td>1,299</td><td>1,383</td><td>1,466</td><td>1,548</td><td>1,629</td><td>1,708</td><td>1,785</td><td>1,859</td><td>1,934</td></tr><tr><td>Total current assets</td><td>17,299</td><td>15,218</td><td>17,317</td><td>20,289</td><td>23,485</td><td>23,820</td><td>23,792</td><td>23,789</td><td>23,788</td><td>23,769</td><td>25,006</td><td>26,216</td><td>27,396</td><td>28,543</td><td>29,684</td></tr><tr><td>Property, plant, and equipment</td><td>15,401</td><td>17,043</td><td>18,161</td><td>19,681</td><td>20,890</td><td>22,879</td><td>24,426</td><td>26,006</td><td>27,570</td><td>29,113</td><td>30,628</td><td>32,110</td><td>33,555</td><td>34,959</td><td>36,357</td></tr><tr><td>Deferred income taxes2</td><td>109</td><td>202</td><td>254</td><td>316</td><td>398</td><td>513</td><td>640</td><td>797</td><td>868</td><td>1,002</td><td>1,241</td><td>1,410</td><td>1,587</td><td>1,770</td><td>1,956</td></tr><tr><td>Other assets</td><td>631</td><td>700</td><td>615</td><td>544</td><td>627</td><td>687</td><td>733</td><td>781</td><td>828</td><td>874</td><td>919</td><td>964</td><td>1,007</td><td>1,049</td><td>1,091</td></tr><tr><td>Total assets</td><td>33,440</td><td>33,163</td><td>36,347</td><td>40,830</td><td>45,400</td><td>47,899</td><td>49,591</td><td>51,372</td><td>53,053</td><td>54,758</td><td>57,794</td><td>60,700</td><td>63,544</td><td>66,321</td><td>69,089</td></tr><tr><td colspan="16">Liabilities and shareholders&#x27; equity</td></tr><tr><td>Accounts payable</td><td>9,011</td><td>7,612</td><td>9,608</td><td>11,237</td><td>11,679</td><td>12,776</td><td>13,624</td><td>14,489</td><td>15,361</td><td>16,220</td><td>17,064</td><td>17,890</td><td>18,695</td><td>19,477</td><td>20,256</td></tr><tr><td>Accrued salaries and benefits</td><td>2,468</td><td>2,629</td><td>2,703</td><td>2,994</td><td>3,176</td><td>3,478</td><td>3,714</td><td>3,954</td><td>4,192</td><td>4,426</td><td>4,656</td><td>4,882</td><td>5,101</td><td>5,315</td><td>5,528</td></tr><tr><td>Accrued member rewards</td><td>813</td><td>869</td><td>961</td><td>1,057</td><td>1,180</td><td>1,292</td><td>1,380</td><td>1,469</td><td>1,557</td><td>1,644</td><td>1,730</td><td>1,814</td><td>1,895</td><td>1,975</td><td>2,054</td></tr><tr><td>Deferred membership fees</td><td>1,269</td><td>1,362</td><td>1,498</td><td>1,624</td><td>1,711</td><td>1,874</td><td>2,001</td><td>2,130</td><td>2,258</td><td>2,384</td><td>2,509</td><td>2,630</td><td>2,748</td><td>2,863</td><td>2,978</td></tr><tr><td>Current portion of long-term debt</td><td>1,283</td><td>1,100</td><td>86</td><td>90</td><td>1,699</td><td>1,038</td><td>1,082</td><td>1,028</td><td>953</td><td>1,137</td><td>1,357</td><td>1,256</td><td>1,296</td><td>1,335</td><td>1,395</td></tr><tr><td>Current portion of capital leases3</td><td>10</td><td>10</td><td>7</td><td>7</td><td>26</td><td>14</td><td>15</td><td>16</td><td>18</td><td>20</td><td>19</td><td>20</td><td>21</td><td>22</td><td>23</td></tr><tr><td>Other current liabilities</td><td>1,686</td><td>1,993</td><td>2,632</td><td>2,917</td><td>3,766</td><td>4,125</td><td>4,403</td><td>4,688</td><td>4,970</td><td>5,248</td><td>5,521</td><td>5,789</td><td>6,049</td><td>6,302</td><td>6,554</td></tr><tr><td>Total current liabilities</td><td>16,540</td><td>15,575</td><td>17,495</td><td>19,926</td><td>23,237</td><td>24,597</td><td>26,218</td><td>27,774</td><td>29,309</td><td>31,081</td><td>32,857</td><td>34,279</td><td>35,805</td><td>37,290</td><td>38,788</td></tr><tr><td>Long-term debt</td><td>4,864</td><td>4,061</td><td>6,573</td><td>6,487</td><td>5,124</td><td>6,408</td><td>6,661</td><td>7,038</td><td>7,430</td><td>7,576</td><td>7,697</td><td>8,154</td><td>8,488</td><td>8,837</td><td>9,185</td></tr><tr><td>Capital leases3</td><td>286</td><td>364</td><td>373</td><td>390</td><td>395</td><td>432</td><td>467</td><td>470</td><td>493</td><td>511</td><td>532</td><td>555</td><td>574</td><td>598</td><td>622</td></tr><tr><td>Deferred income taxes2</td><td>462</td><td>297</td><td>312</td><td>317</td><td>543</td><td>700</td><td>873</td><td>1,087</td><td>1,184</td><td>1,367</td><td>1,693</td><td>1,924</td><td>2,165</td><td>2,415</td><td>2,669</td></tr><tr><td>Other liabilities</td><td>445</td><td>534</td><td>515</td><td>607</td><td>517</td><td>566</td><td>605</td><td>644</td><td>682</td><td>721</td><td>758</td><td>795</td><td>830</td><td>865</td><td>900</td></tr><tr><td>Total liabilities</td><td>22,597</td><td>20,831</td><td>25,268</td><td>27,727</td><td>29,816</td><td>32,704</td><td>34,824</td><td>37,013</td><td>39,098</td><td>41,256</td><td>43,537</td><td>45,706</td><td>47,863</td><td>50,005</td><td>52,163</td></tr><tr><td>Costco shareholders&#x27; equity</td><td>10,617</td><td>12,079</td><td>10,778</td><td>12,799</td><td>15,243</td><td>14,854</td><td>14,425</td><td>14,018</td><td>13,615</td><td>13,161</td><td>13,916</td><td>14,652</td><td>15,340</td><td>15,975</td><td>16,585</td></tr><tr><td>Noncontrolling interests</td><td>226</td><td>253</td><td>301</td><td>304</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td></tr><tr><td>Total shareholders&#x27; equity</td><td>10,843</td><td>12,332</td><td>11,079</td><td>13,103</td><td>15,584</td><td>15,195</td><td>14,766</td><td>14,359</td><td>13,956</td><td>13,502</td><td>14,257</td><td>14,993</td><td>15,681</td><td>16,316</td><td>16,926</td></tr><tr><td>Liabilities and shareholders&#x27; equity</td><td>33,440</td><td>33,163</td><td>36,347</td><td>40,830</td><td>45,400</td><td>47,899</td><td>49,591</td><td>51,372</td><td>53,053</td><td>54,758</td><td>57,794</td><td>60,700</td><td>63,544</td><td>66,321</td><td>59,089</td></tr></table>

1 Includes short-term investments.
Deferred taxes are aggregated in other current assets, other assets, and other liabilities in original filings.
3 Capital leases are aggregated in other current liabilities and other liabilities in original filings.

EXHIBIT H.3 Costco: Statement of Shareholders' Equity

<table><tr><td rowspan="2">$ million</td><td colspan="5">Historical</td><td colspan="9">Forecast</td></tr><tr><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td></tr><tr><td>Equity, beginning of year</td><td>12,303</td><td>10,617</td><td>12,079</td><td>10,778</td><td>12,799</td><td>15,243</td><td>14,854</td><td>14,425</td><td>14,018</td><td>13,615</td><td>13,161</td><td>13,916</td><td>14,652</td><td>15,340</td></tr><tr><td>Net income</td><td>2,377</td><td>2,350</td><td>2,679</td><td>3,134</td><td>3,659</td><td>3,888</td><td>4,233</td><td>4,638</td><td>4,903</td><td>5,163</td><td>5,418</td><td>5,675</td><td>5,925</td><td>6,167</td></tr><tr><td>Foreign-currency translation adjustment</td><td>(1,045)</td><td>22</td><td>85</td><td>(185)</td><td>(237)</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Comprehensive income</td><td>1,332</td><td>2,372</td><td>2,764</td><td>2,949</td><td>3,422</td><td>3,888</td><td>4,233</td><td>4,638</td><td>4,903</td><td>5,163</td><td>5,418</td><td>5,675</td><td>5,925</td><td>6,167</td></tr><tr><td>Stock-based compensation</td><td>394</td><td>459</td><td>518</td><td>547</td><td>598</td><td>655</td><td>699</td><td>744</td><td>789</td><td>833</td><td>877</td><td>919</td><td>961</td><td>1,001</td></tr><tr><td>Stock options exercised</td><td>69</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Release of vested restricted stock units</td><td>(122)</td><td>(146)</td><td>(165)</td><td>(217)</td><td>(272)</td><td>(298)</td><td>(318)</td><td>(339)</td><td>(359)</td><td>(379)</td><td>(399)</td><td>(418)</td><td>(437)</td><td>(455)</td></tr><tr><td>Repurchases of common stock</td><td>(494)</td><td>(477)</td><td>(473)</td><td>(322)</td><td>(247)</td><td>(2,128)</td><td>(2,315)</td><td>(2,463)</td><td>(2,577)</td><td>(2,744)</td><td>(1,649)</td><td>(1,782)</td><td>(1,942)</td><td>(2,104)</td></tr><tr><td>Cash dividends declared</td><td>(2,865)</td><td>(746)</td><td>(3,945)</td><td>(936)</td><td>(1,057)</td><td>(2,505)</td><td>(2,728)</td><td>(2,989)</td><td>(3,160)</td><td>(3,327)</td><td>(3,491)</td><td>(3,657)</td><td>(3,818)</td><td>(3,974)</td></tr><tr><td>Equity, end of year</td><td>10,617</td><td>12,079</td><td>10,778</td><td>12,799</td><td>15,243</td><td>14,854</td><td>14,425</td><td>14,018</td><td>13,615</td><td>13,161</td><td>13,916</td><td>14,652</td><td>15,340</td><td>15,975</td></tr></table>

EXHIBIT H.4 Costco: Tax Reconciliation Table

<table><tr><td>$ million</td><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td></tr><tr><td>Federal taxes at statutory rate</td><td>1,262</td><td>1,267</td><td>1,414</td><td>1,136</td><td>1,001</td></tr><tr><td>State taxes, net</td><td>85</td><td>91</td><td>116</td><td>154</td><td>171</td></tr><tr><td>Foreign taxes, net</td><td>(125)</td><td>(21)</td><td>(64)</td><td>32</td><td>(1)</td></tr><tr><td>Employee stock ownership plan (ESOP)</td><td>(66)</td><td>(17)</td><td>(104)</td><td>(14)</td><td>(18)</td></tr><tr><td>2017 Tax Act</td><td>—</td><td>—</td><td>—</td><td>19</td><td>(123)</td></tr><tr><td>Other</td><td>39</td><td>(77)</td><td>(37)</td><td>(64)</td><td>31</td></tr><tr><td>U.S. and foreign tax expense (benefit)</td><td>1,195</td><td>1,243</td><td>1,325</td><td>1,263</td><td>1,061</td></tr><tr><td>Tax rates1</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Federal income tax rate, \%</td><td>35.0</td><td>35.0</td><td>35.0</td><td>25.6</td><td>21.0</td></tr><tr><td>State income tax rate, \%</td><td>2.4</td><td>2.5</td><td>2.9</td><td>3.5</td><td>3.6</td></tr><tr><td>Statutory tax rate, \%</td><td>37.4</td><td>37.5</td><td>37.9</td><td>29.0</td><td>24.6</td></tr></table>

To determine each tax rate, divide each tax amount by earnings before taxes. Earnings before taxes are reported in Exhibit H.1. Source: Reported in Costco's annual report, note 8: Income Taxes.

EXHIBIT H.5 Costco: NOPAT and Its Reconciliation to Net Income

<table><tr><td colspan="18">$ million</td></tr><tr><td rowspan="2"></td><td colspan="5">Historical</td><td colspan="12">Forecast</td></tr><tr><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td><td>CV</td><td></td></tr><tr><td>Revenues</td><td>116,199</td><td>118,719</td><td>129,025</td><td>141,576</td><td>152,703</td><td>167,241</td><td>178,549</td><td>190,099</td><td>201,536</td><td>212,811</td><td>223,884</td><td>234,718</td><td>245,281</td><td>255,546</td><td>265,768</td><td>276,399</td><td></td></tr><tr><td>Merchandise costs</td><td>(101,065)</td><td>(102,901)</td><td>(111,882)</td><td>(123,152)</td><td>(132,886)</td><td>(145,370)</td><td>(155,021)</td><td>(164,859)</td><td>(174,777)</td><td>(184,555)</td><td>(194,158)</td><td>(203,553)</td><td>(212,713)</td><td>(221,616)</td><td>(230,481)</td><td>(239,700)</td><td></td></tr><tr><td>Selling and general</td><td>(10,318)</td><td>(10,813)</td><td>(11,580)</td><td>(12,439)</td><td>(13,502)</td><td>(14,787)</td><td>(15,787)</td><td>(16,809)</td><td>(17,820)</td><td>(18,817)</td><td>(19,796)</td><td>(20,754)</td><td>(21,688)</td><td>(22,595)</td><td>(23,499)</td><td>(24,439)</td><td></td></tr><tr><td>Depreciation</td><td>(1,127)</td><td>(1,255)</td><td>(1,370)</td><td>(1,437)</td><td>(1,492)</td><td>(1,584)</td><td>(1,734)</td><td>(1,852)</td><td>(1,971)</td><td>(2,090)</td><td>(2,207)</td><td>(2,322)</td><td>(2,434)</td><td>(2,544)</td><td>(2,650)</td><td>(2,756)</td><td></td></tr><tr><td>Preopening expenses</td><td>(65)</td><td>(78)</td><td>(82)</td><td>(68)</td><td>(86)</td><td>(94)</td><td>(101)</td><td>(107)</td><td>(114)</td><td>(120)</td><td>(126)</td><td>(132)</td><td>(138)</td><td>(144)</td><td>(150)</td><td>(156)</td><td></td></tr><tr><td>EBITA, unadjusted1</td><td>3,624</td><td>3,672</td><td>4,111</td><td>4,480</td><td>4,737</td><td>5,406</td><td>5,906</td><td>6,473</td><td>6,854</td><td>7,229</td><td>7,597</td><td>7,957</td><td>8,307</td><td>8,647</td><td>8,988</td><td>9,348</td><td></td></tr><tr><td>Operating lease interest2</td><td>73</td><td>75</td><td>57</td><td>74</td><td>91</td><td>88</td><td>96</td><td>103</td><td>109</td><td>116</td><td>122</td><td>129</td><td>135</td><td>141</td><td>147</td><td>153</td><td></td></tr><tr><td>EBITA, adjusted</td><td>3,697</td><td>3,747</td><td>4,168</td><td>4,554</td><td>4,828</td><td>5,493</td><td>6,002</td><td>6,576</td><td>6,963</td><td>7,345</td><td>7,719</td><td>8,085</td><td>8,442</td><td>8,788</td><td>9,135</td><td>9,500</td><td></td></tr><tr><td>Operating cash taxes3</td><td>(1,184)</td><td>(1,149)</td><td>(1,493)</td><td>(1,455)</td><td>(1,009)</td><td>(1,287)</td><td>(1,409)</td><td>(1,538)</td><td>(1,665)</td><td>(1,736)</td><td>(1,790)</td><td>(1,905)</td><td>(1,990)</td><td>(2,073)</td><td>(2,157)</td><td>(2,239)</td><td></td></tr><tr><td>NOPAT</td><td>2,513</td><td>2,598</td><td>2,675</td><td>3,098</td><td>3,818</td><td>4,206</td><td>4,593</td><td>5,037</td><td>5,298</td><td>5,609</td><td>5,929</td><td>6,180</td><td>6,451</td><td>6,715</td><td>6,978</td><td>7,262</td><td></td></tr><tr><td colspan="17">Reconciliation to net income</td><td></td></tr><tr><td>Net income, consolidated</td><td>2,409</td><td>2,376</td><td>2,714</td><td>3,179</td><td>3,704</td><td>3,937</td><td>4,286</td><td>4,694</td><td>4,962</td><td>5,226</td><td>5,484</td><td>5,744</td><td>5,997</td><td>6,242</td><td>6,488</td><td>6,746</td><td></td></tr><tr><td>Operating taxes deferred3</td><td>7</td><td>219</td><td>(82)</td><td>(115)</td><td>159</td><td>42</td><td>46</td><td>57</td><td>26</td><td>49</td><td>87</td><td>62</td><td>64</td><td>67</td><td>68</td><td>76</td><td></td></tr><tr><td>Adjusted net income</td><td>2,416</td><td>2,595</td><td>2,632</td><td>3,064</td><td>3,863</td><td>3,979</td><td>4,332</td><td>4,751</td><td>4,988</td><td>5,275</td><td>5,570</td><td>5,806</td><td>6,062</td><td>6,309</td><td>6,556</td><td>6,823</td><td></td></tr><tr><td>Interest expense</td><td>124</td><td>133</td><td>134</td><td>159</td><td>150</td><td>277</td><td>302</td><td>315</td><td>327</td><td>340</td><td>354</td><td>368</td><td>382</td><td>397</td><td>413</td><td>429</td><td></td></tr><tr><td>Operating lease interest2</td><td>73</td><td>75</td><td>57</td><td>74</td><td>91</td><td>88</td><td>96</td><td>103</td><td>109</td><td>116</td><td>122</td><td>129</td><td>135</td><td>141</td><td>147</td><td>153</td><td></td></tr><tr><td>Interest income</td><td>(50)</td><td>(41)</td><td>(50)</td><td>(75)</td><td>(126)</td><td>(64)</td><td>(51)</td><td>(38)</td><td>(26)</td><td>(13)</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td></td></tr><tr><td>Other income4</td><td>(54)</td><td>(39)</td><td>(12)</td><td>(46)</td><td>(52)</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td></td></tr><tr><td>Taxes related to nonoperating accounts5</td><td>(35)</td><td>(48)</td><td>(49)</td><td>(32)</td><td>(15)</td><td>(74)</td><td>(85)</td><td>(93)</td><td>(101)</td><td>(109)</td><td>(117)</td><td>(122)</td><td>(127)</td><td>(132)</td><td>(138)</td><td>(143)</td><td></td></tr><tr><td>Other nonoperating taxes3</td><td>39</td><td>(77)</td><td>(37)</td><td>(45)</td><td>(92)</td><td>—</td><td>0</td><td>0</td><td>(0)</td><td>(0)</td><td>(0)</td><td>(0)</td><td>—</td><td>—</td><td>—</td><td>—</td><td></td></tr><tr><td>NOPAT</td><td>2,513</td><td>2,598</td><td>2,675</td><td>3,098</td><td>3,818</td><td>4,206</td><td>4,593</td><td>5,037</td><td>5,298</td><td>5,609</td><td>5,929</td><td>6,180</td><td>6,451</td><td>6,715</td><td>6,978</td><td>7,226</td><td></td></tr></table>

Earnings before interest, taxes, and amortization.
2 Estimated by multiplying beginning-of-year capitalized operating leases by the interest rate on 10-year AA-rated debt. Capitalized operating leases are reported in Exhibit H.8. Interest rates are reported in Exhibit H.10.
3 Operating cash taxes and other nonoperating taxes are detailed in Exhibit H 6.
A
4 Other income consists primarily of foreign-currency transaction gains and is treated as nonoperating for simplicity of exposition.
Estimated by multiplying the statutory tax rate by the sum of interest and operating lease interest expense, less the sum of interest and other income. The statutory tax rate is reported in Exhibit H.6.

EXHIBIT H.6 Costco: Taxes

<table><tr><td colspan="17">$ million</td></tr><tr><td rowspan="2"></td><td colspan="5">Historical</td><td colspan="11">Forecast</td></tr><tr><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td><td>CV</td></tr><tr><td>EBITA</td><td>3,697</td><td>3,747</td><td>4,168</td><td>4,554</td><td>4,828</td><td>5,493</td><td>6,002</td><td>6,576</td><td>6,963</td><td>7,345</td><td>7,719</td><td>8,085</td><td>8,442</td><td>8,788</td><td>9,135</td><td>9,500</td></tr><tr><td>× Statutory tax rate1</td><td>37.4\%</td><td>37.5\%</td><td>37.9\%</td><td>29.0\%</td><td>24.6\%</td><td>24.6\%</td><td>24.6\%</td><td>24.6\%</td><td>24.6\%</td><td>24.6\%</td><td>24.6\%</td><td>24.6\%</td><td>24.6\%</td><td>24.6\%</td><td>24.6\%</td><td>24.6\%</td></tr><tr><td>Statutory taxes on EBITA</td><td>1,382</td><td>1,406</td><td>1,579</td><td>1,322</td><td>1,187</td><td>1,351</td><td>1,476</td><td>1,617</td><td>1,713</td><td>1,807</td><td>1,899</td><td>1,989</td><td>2,076</td><td>2,161</td><td>2,247</td><td>2,337</td></tr><tr><td>Foreign taxes, net2</td><td>(125)</td><td>(21)</td><td>(64)</td><td>32</td><td>(1)</td><td>(1)</td><td>(1)</td><td>(1)</td><td>(1)</td><td>(1)</td><td>(1)</td><td>(1)</td><td>(1)</td><td>(1)</td><td>(1)</td><td></td></tr><tr><td>Employee stock ownership plan (ESOP)2</td><td>(66)</td><td>(17)</td><td>(104)</td><td>(14)</td><td>(18)</td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td><td></td></tr><tr><td>Operating taxes</td><td>1,191</td><td>1,368</td><td>1,411</td><td>1,340</td><td>1,168</td><td>1,330</td><td>1,455</td><td>1,596</td><td>1,691</td><td>1,785</td><td>1,877</td><td>1,967</td><td>2,055</td><td>2,140</td><td>2,225</td><td>2,315</td></tr><tr><td>Operating taxes deferred3</td><td>(7)</td><td>(219)</td><td>82</td><td>115</td><td>(159)</td><td>(42)</td><td>(46)</td><td>(57)</td><td>(26)</td><td>(49)</td><td>(87)</td><td>(62)</td><td>(64)</td><td>(67)</td><td>(68)</td><td>(76)</td></tr><tr><td>Operating cash taxes</td><td>1,184</td><td>1,149</td><td>1,493</td><td>1,455</td><td>1,009</td><td>1,287</td><td>1,409</td><td>1,538</td><td>1,665</td><td>1,736</td><td>1,790</td><td>1,905</td><td>1,990</td><td>2,073</td><td>2,157</td><td>2,239</td></tr><tr><td colspan="17">Tax rates, \% of EBITA</td></tr><tr><td>Statutory tax rate1</td><td>37.4</td><td>37.5</td><td>37.9</td><td>29.0</td><td>24.6</td><td>24.6</td><td>24.6</td><td>24.6</td><td>24.6</td><td>24.6</td><td>24.6</td><td>24.6</td><td>24.6</td><td>24.6</td><td>24.6</td><td>24.6</td></tr><tr><td>Other operating taxes</td><td>(5.2)</td><td>(1.0)</td><td>(4.0)</td><td>0.4</td><td>(0.4)</td><td>(0.4)</td><td>(0.4)</td><td>(0.4)</td><td>(0.4)</td><td>(0.4)</td><td>(0.4)</td><td>(0.4)</td><td>(0.4)</td><td>(0.4)</td><td>(0.4)</td><td></td></tr><tr><td>Operating tax rate</td><td>32.2</td><td>36.5</td><td>33.8</td><td>29.4</td><td>24.2</td><td>24.2</td><td>24.2</td><td>24.2</td><td>24.2</td><td>24.2</td><td>24.2</td><td>24.2</td><td>24.2</td><td>24.2</td><td>24.2</td><td>24.2</td></tr><tr><td>\% deferred</td><td>0.6</td><td>16.0</td><td>(5.8)</td><td>(8.6)</td><td>13.6</td><td>3.2</td><td>3.2</td><td>3.6</td><td>1.5</td><td>2.7</td><td>4.6</td><td>3.1</td><td>3.1</td><td>3.1</td><td>3.0</td><td>3.3</td></tr><tr><td>Operating cash tax rate4</td><td>32.0</td><td>30.7</td><td>35.8</td><td>32.0</td><td>20.9</td><td>23.4</td><td>23.5</td><td>23.4</td><td>23.9</td><td>23.6</td><td>23.2</td><td>23.6</td><td>23.6</td><td>23.6</td><td>23.6</td><td>23.6</td></tr></table>

1 Estimated by dividing federal plus state income taxes by earnings before taxes.
2Reported in the tax reconciliation table presented in Exhibit H 4.
${}^{3}$  Computed as the decrease (increase) in operating deferred taxes,as reported in Exhibit H.9.
4 The operating cash tax rate equals the operating tax rate times one minus the percent of operating taxes deferred.

EXHIBIT H.7 Costco: Reorganized Deferred Taxes

<table><tr><td rowspan="2">$ million</td><td colspan="3">As reported</td><td colspan="3">Reorganized</td></tr><tr><td>2017</td><td>2018</td><td>2019</td><td>2017</td><td>2018</td><td>2019</td></tr><tr><td>Deferred-tax assets</td><td></td><td></td><td></td><td colspan="3">Operating deferred-tax assets, net of liabilities</td></tr><tr><td>Equity compensation</td><td>109</td><td>72</td><td>74</td><td>Equity compensation</td><td>109</td><td>72</td></tr><tr><td>Deferred income/membership fees</td><td>167</td><td>136</td><td>180</td><td>Deferred income/membership fees</td><td>167</td><td>136</td></tr><tr><td>Foreign tax credit carryforward</td><td>—</td><td>—</td><td>65</td><td>Accrued liabilities and reserves</td><td>647</td><td>484</td></tr><tr><td>Accrued liabilities and reserves</td><td>647</td><td>484</td><td>566</td><td>Property and equipment</td><td>(747)</td><td>(478)</td></tr><tr><td>Other</td><td>18</td><td>—</td><td>—</td><td>Merchandise inventories</td><td>(252)</td><td>(175)</td></tr><tr><td>Total deferred-tax assets</td><td>941</td><td>692</td><td>885</td><td>Valuation allowance</td><td>—</td><td>—</td></tr><tr><td></td><td></td><td></td><td></td><td>Operating deferred-tax assets, net of liabilities</td><td>(76)</td><td>39</td></tr><tr><td>Valuation allowance</td><td>—</td><td>—</td><td>(76)</td><td></td><td></td><td></td></tr><tr><td>Total net deferred-tax assets</td><td>941</td><td>692</td><td>809</td><td colspan="3">Nonoperating deferred-tax assets, net of liabilities</td></tr><tr><td></td><td></td><td></td><td></td><td>Other assets</td><td>18</td><td>—</td></tr><tr><td></td><td></td><td></td><td></td><td>Foreign-branch deferreds</td><td>—</td><td>—</td></tr><tr><td></td><td></td><td></td><td></td><td>Other liabilities</td><td>—</td><td>(40)</td></tr><tr><td></td><td></td><td></td><td></td><td>Nonoperating deferred-tax assets, net of liabilities</td><td>18</td><td>(40)</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>(90)</td></tr><tr><td>Deferred-tax liabilities</td><td></td><td></td><td></td><td colspan="3">Tax loss carryforwards</td></tr><tr><td>Property and equipment</td><td>(747)</td><td>(478)</td><td>(677)</td><td></td><td></td><td></td></tr><tr><td>Merchandise inventories</td><td>(252)</td><td>(175)</td><td>(187)</td><td></td><td></td><td></td></tr><tr><td>Foreign-branch deferreds</td><td>—</td><td>—</td><td>(69)</td><td></td><td></td><td></td></tr><tr><td>Other</td><td>—</td><td>(40)</td><td>(21)</td><td></td><td></td><td></td></tr><tr><td>Total deferred-tax liabilities</td><td>(999)</td><td>(693)</td><td>(954)</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>Foreign tax credit carryforward</td><td>—</td><td>—</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>65</td></tr><tr><td>Deferred-tax assets, net of liabilities</td><td>(58)</td><td>(1)</td><td>(145)</td><td>Deferred-tax assets, net of liabilities</td><td>(58)</td><td>(1)</td></tr></table>

EXHIBIT H.8 Costco: Invested Capital and Total Funds Invested

<table><tr><td colspan="16">$ million</td></tr><tr><td rowspan="2"></td><td colspan="5">Historical</td><td colspan="10">Forecast</td></tr><tr><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td></tr><tr><td>Operating  \text{cash}^1 </td><td>2,324</td><td>2,374</td><td>2,581</td><td>2,832</td><td>3,054</td><td>3,345</td><td>3,571</td><td>3,802</td><td>4,031</td><td>4,256</td><td>4,478</td><td>4,694</td><td>4,906</td><td>5,111</td><td>5,315</td></tr><tr><td>Receivables, net</td><td>1,224</td><td>1,252</td><td>1,432</td><td>1,669</td><td>1,535</td><td>1,681</td><td>1,795</td><td>1,911</td><td>2,026</td><td>2,139</td><td>2,251</td><td>2,359</td><td>2,466</td><td>2,569</td><td>2,672</td></tr><tr><td>Merchandise inventories</td><td>8,908</td><td>8,969</td><td>9,834</td><td>11,040</td><td>11,395</td><td>12,466</td><td>13,293</td><td>14,137</td><td>14,987</td><td>15,826</td><td>16,649</td><td>17,455</td><td>18,240</td><td>19,004</td><td>19,764</td></tr><tr><td>Other current assets</td><td>227</td><td>268</td><td>272</td><td>321</td><td>1,111</td><td>1,217</td><td>1,299</td><td>1,383</td><td>1,466</td><td>1,548</td><td>1,629</td><td>1,708</td><td>1,785</td><td>1,859</td><td>1,934</td></tr><tr><td>Operating current assets</td><td>12,683</td><td>12,863</td><td>14,119</td><td>15,862</td><td>17,095</td><td>18,708</td><td>19,958</td><td>21,233</td><td>22,510</td><td>23,769</td><td>25,006</td><td>26,216</td><td>27,396</td><td>28,543</td><td>29,684</td></tr><tr><td>Accounts payable</td><td>(9,011)</td><td>(7,612)</td><td>(9,608)</td><td>(11,237)</td><td>(11,679)</td><td>(12,776)</td><td>(13,624)</td><td>(14,489)</td><td>(15,361)</td><td>(16,220)</td><td>(17,064)</td><td>(17,890)</td><td>(18,695)</td><td>(19,477)</td><td>(20,256)</td></tr><tr><td>Accrued salaries and benefits</td><td>(2,468)</td><td>(2,629)</td><td>(2,703)</td><td>(2,994)</td><td>(3,176)</td><td>(3,478)</td><td>(3,714)</td><td>(3,954)</td><td>(4,192)</td><td>(4,426)</td><td>(4,656)</td><td>(4,882)</td><td>(5,101)</td><td>(5,315)</td><td>(5,528)</td></tr><tr><td>Accrued member rewards</td><td>(813)</td><td>(869)</td><td>(961)</td><td>(1,057)</td><td>(1,180)</td><td>(1,292)</td><td>(1,380)</td><td>(1,469)</td><td>(1,557)</td><td>(1,644)</td><td>(1,730)</td><td>(1,814)</td><td>(1,895)</td><td>(1,975)</td><td>(2,054)</td></tr><tr><td>Deferred membership fees</td><td>(1,269)</td><td>(1,362)</td><td>(1,498)</td><td>(1,624)</td><td>(1,711)</td><td>(1,874)</td><td>(2,001)</td><td>(2,130)</td><td>(2,258)</td><td>(2,384)</td><td>(2,509)</td><td>(2,630)</td><td>(2,748)</td><td>(2,863)</td><td>(2,978)</td></tr><tr><td>Other current liabilities</td><td>(1,686)</td><td>(1,993)</td><td>(2,632)</td><td>(2,917)</td><td>(3,766)</td><td>(4,125)</td><td>(4,403)</td><td>(4,688)</td><td>(4,970)</td><td>(5,248)</td><td>(5,521)</td><td>(5,789)</td><td>(6,049)</td><td>(6,302)</td><td>(6,554)</td></tr><tr><td>Operating current liabilities</td><td>(15,247)</td><td>(14,465)</td><td>(17,402)</td><td>(19,829)</td><td>(21,512)</td><td>(23,545)</td><td>(25,122)</td><td>(26,730)</td><td>(28,338)</td><td>(29,924)</td><td>(31,481)</td><td>(33,004)</td><td>(34,489)</td><td>(35,933)</td><td>(37,370)</td></tr><tr><td>Operating working capital</td><td>(2,564)</td><td>(1,602)</td><td>(3,284)</td><td>(3,967)</td><td>(4,417)</td><td>(4,837)</td><td>(5,164)</td><td>(5,497)</td><td>(5,828)</td><td>(6,154)</td><td>(6,474)</td><td>(6,788)</td><td>(7,093)</td><td>(7,390)</td><td>(7,686)</td></tr><tr><td>Property, plant, and equipment</td><td>15,401</td><td>17,043</td><td>18,161</td><td>19,681</td><td>20,890</td><td>22,879</td><td>24,426</td><td>26,006</td><td>27,570</td><td>29,113</td><td>30,628</td><td>32,110</td><td>33,555</td><td>34,959</td><td>36,357</td></tr><tr><td>Capitalized operating leases2</td><td>2,230</td><td>2,320</td><td>2,528</td><td>2,500</td><td>2,414</td><td>2,644</td><td>2,823</td><td>3,005</td><td>3,186</td><td>3,364</td><td>3,539</td><td>3,711</td><td>3,878</td><td>4,040</td><td>4,202</td></tr><tr><td>Other assets3</td><td>631</td><td>700</td><td>615</td><td>544</td><td>627</td><td>687</td><td>733</td><td>781</td><td>828</td><td>874</td><td>919</td><td>964</td><td>1,007</td><td>1,049</td><td>1,091</td></tr><tr><td>Other liabilities3</td><td>(445)</td><td>(534)</td><td>(515)</td><td>(607)</td><td>(517)</td><td>(566)</td><td>(605)</td><td>(644)</td><td>(682)</td><td>(721)</td><td>(758)</td><td>(795)</td><td>(830)</td><td>(865)</td><td>(900)</td></tr><tr><td>Invested capital</td><td>15,253</td><td>17,928</td><td>17,506</td><td>18,151</td><td>18,997</td><td>20,806</td><td>22,213</td><td>23,651</td><td>25,073</td><td>26,476</td><td>27,854</td><td>29,202</td><td>30,516</td><td>31,793</td><td>33,065</td></tr><tr><td>Excess  \text{cash}^1 </td><td>4,095</td><td>2,355</td><td>3,199</td><td>4,427</td><td>6,390</td><td>5,112</td><td>3,834</td><td>2,556</td><td>1,278</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Foreign tax credit carryforward4</td><td>—</td><td>—</td><td>—</td><td>—</td><td>65</td><td>65</td><td>65</td><td>65</td><td>65</td><td>65</td><td>65</td><td>65</td><td>65</td><td>65</td><td>65</td></tr><tr><td>Total funds invested</td><td>19,348</td><td>20,282</td><td>20,704</td><td>22,578</td><td>25,452</td><td>25,983</td><td>26,112</td><td>26,272</td><td>26,416</td><td>26,541</td><td>27,919</td><td>29,267</td><td>30,581</td><td>31,858</td><td>33,130</td></tr></table>

1 Operating cash is estimated at  $2\%$  of revenues. Remaining cash is treated as excess cash.
2 Capitalized operating leases are estimated for 2019 in Exhibit 22.10.
3 Other assets and liabilities are classified as operating because no description is provided by the company.
4 Foreign tax credit carryforward is reported in Exhibit H.7.

EXHIBIT H.9 Costco: Reconciliation of Total Funds Invested

<table><tr><td colspan="16">$ million</td></tr><tr><td rowspan="2"></td><td colspan="5">Historical</td><td colspan="10">Forecast</td></tr><tr><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td></tr><tr><td>Long-term debt and capital leases1</td><td>6,443</td><td>5,535</td><td>7,039</td><td>6,974</td><td>7,244</td><td>7,892</td><td>8,225</td><td>8,552</td><td>8,894</td><td>9,245</td><td>9,606</td><td>9,984</td><td>10,379</td><td>10,792</td><td>11,224</td></tr><tr><td>Capitalized operating leases2</td><td>2,230</td><td>2,320</td><td>2,528</td><td>2,500</td><td>2,414</td><td>2,644</td><td>2,823</td><td>3,005</td><td>3,186</td><td>3,364</td><td>3,539</td><td>3,711</td><td>3,878</td><td>4,040</td><td>4,202</td></tr><tr><td>Debt and debt equivalents</td><td>8,673</td><td>7,855</td><td>9,567</td><td>9,474</td><td>9,658</td><td>10,536</td><td>11,048</td><td>11,558</td><td>12,080</td><td>12,609</td><td>13,145</td><td>13,695</td><td>14,257</td><td>14,832</td><td>15,426</td></tr><tr><td>Deferred income taxes, operating3</td><td>(61)</td><td>158</td><td>76</td><td>(39)</td><td>120</td><td>162</td><td>208</td><td>265</td><td>291</td><td>340</td><td>427</td><td>489</td><td>553</td><td>620</td><td>688</td></tr><tr><td>Deferred income taxes, nonoperating3</td><td>(107)</td><td>(63)</td><td>(18)</td><td>40</td><td>90</td><td>90</td><td>90</td><td>90</td><td>90</td><td>90</td><td>90</td><td>90</td><td>90</td><td>90</td><td>90</td></tr><tr><td>Noncontrolling interests</td><td>226</td><td>253</td><td>301</td><td>304</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td><td>341</td></tr><tr><td>Costco shareholders&#x27; equity</td><td>10,617</td><td>12,079</td><td>10,778</td><td>12,799</td><td>15,243</td><td>14,854</td><td>14,425</td><td>14,018</td><td>13,615</td><td>13,161</td><td>13,916</td><td>14,652</td><td>15,340</td><td>15,975</td><td>16,585</td></tr><tr><td>Equity and equity equivalents</td><td>10,675</td><td>12,427</td><td>11,137</td><td>13,104</td><td>15,794</td><td>15,447</td><td>15,065</td><td>14,714</td><td>14,337</td><td>13,932</td><td>14,774</td><td>15,572</td><td>16,324</td><td>17,026</td><td>17,704</td></tr><tr><td>Total funds invested</td><td>19,348</td><td>20,282</td><td>20,704</td><td>22,578</td><td>25,452</td><td>25,983</td><td>26,112</td><td>26,272</td><td>26,416</td><td>26,541</td><td>27,919</td><td>29,267</td><td>30,581</td><td>31,858</td><td>33,130</td></tr></table>

1 Including current portion.
2 Capitalized operating leases are estimated for 2019 in Exhibit 22.10.
3 Deferred-tax liabilities, net of assets. Deferred taxes are detailed in Exhibit H.7.

EXHIBIT H.10 Costco: Income Statement Forecast Ratios

<table><tr><td rowspan="2">\%</td><td colspan="5">Historical</td><td colspan="11">Forecast</td><td></td></tr><tr><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td><td>CV</td><td>Forecast ratio</td></tr><tr><td>Revenue growth</td><td>3.2</td><td>2.2</td><td>8.7</td><td>9.7</td><td>7.9</td><td>9.5</td><td>6.8</td><td>6.5</td><td>6.0</td><td>5.6</td><td>5.2</td><td>4.8</td><td>4.5</td><td>4.2</td><td>4.0</td><td>4.0</td><td>\% of prior-year revenues</td></tr><tr><td colspan="18">Revenue split</td></tr><tr><td>Merchandise sales</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>97.8</td><td>\% of revenues</td></tr><tr><td>Membership fees</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>2.2</td><td>\% of revenues</td></tr><tr><td>Revenues</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td></td></tr><tr><td colspan="18">Operating expenses</td></tr><tr><td>Merchandise  costs^1 </td><td>87.0</td><td>86.7</td><td>86.7</td><td>87.0</td><td>87.0</td><td>86.9</td><td>86.8</td><td>86.7</td><td>86.7</td><td>86.7</td><td>86.7</td><td>86.7</td><td>86.7</td><td>86.7</td><td>86.7</td><td>86.7</td><td>\% of revenues</td></tr><tr><td>Selling, general, and administrative</td><td>8.9</td><td>9.1</td><td>9.0</td><td>8.8</td><td>8.8</td><td>8.8</td><td>8.8</td><td>8.8</td><td>8.8</td><td>8.8</td><td>8.8</td><td>8.8</td><td>8.8</td><td>8.8</td><td>8.8</td><td>8.8</td><td>\% of revenues</td></tr><tr><td>Depreciation</td><td>7.6</td><td>8.1</td><td>8.0</td><td>7.9</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>\% of net PP&amp;E</td></tr><tr><td>Preopening expenses</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>\% of revenues</td></tr><tr><td colspan="18">Nonoperating items</td></tr><tr><td>Interest rate on  debt^2 </td><td>3.5</td><td>3.6</td><td>2.6</td><td>3.1</td><td>3.8</td><td>3.8</td><td>3.8</td><td>3.8</td><td>3.8</td><td>3.8</td><td>3.8</td><td>3.8</td><td>3.8</td><td>3.8</td><td>3.8</td><td>3.8</td><td>\% of total debt</td></tr><tr><td>Interest rate on leases</td><td>3.2</td><td>3.4</td><td>2.4</td><td>2.9</td><td>3.6</td><td>3.6</td><td>3.6</td><td>3.6</td><td>3.6</td><td>3.6</td><td>3.6</td><td>3.6</td><td>3.6</td><td>3.6</td><td>3.6</td><td>3.6</td><td>\% of leases</td></tr><tr><td>Interest rate on excess cash</td><td>1.0</td><td>1.0</td><td>2.1</td><td>2.3</td><td>2.8</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>\% of excess cash</td></tr><tr><td>Other  income^3 </td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>&lt;0.1</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>\% of revenues</td></tr></table>

1 Estimated as a percentage of total revenues to better understand components of operating margin. To compare with companies that do not charge for membership, exclude fees.
2Interest expense forecast based on 10-year A-rated debt. The cost of debt is used to estimate cost of capital is based on the average long-run real rate plus expected inflation. For more on the cost of capital, see Chapter 15.
3 Other income consists primarily of foreign-currency transaction gains and set to 0 in forecast.

EXHIBIT H.11 Costco: Balance Sheet Forecast Ratios

<table><tr><td colspan="17">Working capital in days; all other accounts in \%</td></tr><tr><td rowspan="2"></td><td colspan="5">Historical</td><td colspan="10">Forecast</td><td rowspan="2">Forecast Ratio</td></tr><tr><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td></tr><tr><td colspan="17">Working capital</td></tr><tr><td>Operating cash</td><td>20.2</td><td>14.5</td><td>16.3</td><td>18.7</td><td>22.6</td><td>7.3</td><td>7.3</td><td>7.3</td><td>7.3</td><td>7.3</td><td>7.3</td><td>7.3</td><td>7.3</td><td>7.3</td><td>7.3</td><td>Days in revenues</td></tr><tr><td>Receivables, net</td><td>3.8</td><td>3.8</td><td>4.1</td><td>4.3</td><td>3.7</td><td>3.7</td><td>3.7</td><td>3.7</td><td>3.7</td><td>3.7</td><td>3.7</td><td>3.7</td><td>3.7</td><td>3.7</td><td>3.7</td><td>Days in merchandise cost</td></tr><tr><td>Merchandise inventories</td><td>32.2</td><td>31.8</td><td>32.1</td><td>32.7</td><td>31.3</td><td>31.3</td><td>31.3</td><td>31.3</td><td>31.3</td><td>31.3</td><td>31.3</td><td>31.3</td><td>31.3</td><td>31.3</td><td>31.3</td><td>Days in revenues</td></tr><tr><td>Other current assets</td><td>0.7</td><td>0.8</td><td>0.8</td><td>0.8</td><td>2.7</td><td>2.7</td><td>2.7</td><td>2.7</td><td>2.7</td><td>2.7</td><td>2.7</td><td>2.7</td><td>2.7</td><td>2.7</td><td>2.7</td><td>Days in revenues</td></tr><tr><td>Accounts payable</td><td>32.5</td><td>27.0</td><td>31.3</td><td>33.3</td><td>32.1</td><td>32.1</td><td>32.1</td><td>32.1</td><td>32.1</td><td>32.1</td><td>32.1</td><td>32.1</td><td>32.1</td><td>32.1</td><td>32.1</td><td>Days in merchandise cost</td></tr><tr><td>Accrued salaries and benefits</td><td>7.8</td><td>8.1</td><td>7.6</td><td>7.7</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>7.6</td><td>Days in revenues</td></tr><tr><td>Accrued member rewards</td><td>2.6</td><td>2.7</td><td>2.7</td><td>2.7</td><td>2.8</td><td>2.8</td><td>2.8</td><td>2.8</td><td>2.8</td><td>2.8</td><td>2.8</td><td>2.8</td><td>2.8</td><td>2.8</td><td>2.8</td><td>Days in revenues</td></tr><tr><td>Deferred membership fees</td><td>4.0</td><td>4.2</td><td>4.2</td><td>4.2</td><td>4.1</td><td>4.1</td><td>4.1</td><td>4.1</td><td>4.1</td><td>4.1</td><td>4.1</td><td>4.1</td><td>4.1</td><td>4.1</td><td>4.1</td><td>Days in revenues</td></tr><tr><td>Other current liabilities</td><td>5.3</td><td>6.1</td><td>7.4</td><td>7.5</td><td>9.0</td><td>9.0</td><td>9.0</td><td>9.0</td><td>9.0</td><td>9.0</td><td>9.0</td><td>9.0</td><td>9.0</td><td>9.0</td><td>9.0</td><td>Days in revenues</td></tr><tr><td colspan="17">Long-term assets and liabilities</td></tr><tr><td>Property, plant, and equipment</td><td>13.3</td><td>14.4</td><td>14.1</td><td>13.9</td><td>13.7</td><td>13.7</td><td>13.7</td><td>13.7</td><td>13.7</td><td>13.7</td><td>13.7</td><td>13.7</td><td>13.7</td><td>13.7</td><td>13.7</td><td>\% of revenues</td></tr><tr><td>Capitalized operating leases</td><td>1.9</td><td>2.0</td><td>2.0</td><td>1.8</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td><td>\% of revenues</td></tr><tr><td>Other assets</td><td>0.5</td><td>0.6</td><td>0.5</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>\% of revenues</td></tr><tr><td>Other liabilities</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.3</td><td>0.3</td><td>0.3</td><td>0.3</td><td>0.3</td><td>0.3</td><td>0.3</td><td>0.3</td><td>0.3</td><td>0.3</td><td>0.3</td><td>\% of revenues</td></tr><tr><td colspan="17">Debt and capital leases1</td></tr><tr><td>Current portion of long-term debt</td><td>19.9</td><td>19.9</td><td>1.2</td><td>1.3</td><td>23.5</td><td>13.2</td><td>13.2</td><td>12.0</td><td>10.7</td><td>12.3</td><td>14.1</td><td>12.6</td><td>12.5</td><td>12.4</td><td>12.4</td><td>\% of total debt</td></tr><tr><td>Current portion of capital leases</td><td>0.2</td><td>0.2</td><td>0.1</td><td>0.1</td><td>0.4</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>\% of total debt</td></tr><tr><td>Long-term debt</td><td>75.5</td><td>73.4</td><td>93.4</td><td>93.0</td><td>70.7</td><td>81.2</td><td>81.0</td><td>82.3</td><td>83.5</td><td>82.0</td><td>80.1</td><td>81.7</td><td>81.8</td><td>81.9</td><td>81.8</td><td>\% of total debt</td></tr><tr><td>Capital leases</td><td>4.4</td><td>6.6</td><td>5.3</td><td>5.6</td><td>5.5</td><td>5.5</td><td>5.7</td><td>5.5</td><td>5.5</td><td>5.5</td><td>5.5</td><td>5.6</td><td>5.5</td><td>5.5</td><td>5.5</td><td>\% of total debt</td></tr><tr><td>Debt and capital leases</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td>100.0</td><td></td></tr><tr><td colspan="17">Equity accounts2</td></tr><tr><td>Stock-based compensation</td><td>0.3</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>\% of revenues</td></tr><tr><td>Stock options exercised</td><td>0.1</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>\% of revenues</td></tr><tr><td>Release of vested restricted stock units</td><td>0.1</td><td>0.1</td><td>0.1</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>0.2</td><td>\% of revenues</td></tr><tr><td>Dividends</td><td>120.5</td><td>31.7</td><td>147.3</td><td>29.9</td><td>28.9</td><td>64.4</td><td>64.4</td><td>64.4</td><td>64.4</td><td>64.4</td><td>64.4</td><td>64.4</td><td>64.4</td><td>64.4</td><td>64.4</td><td>\% of net income</td></tr></table>

1 The sum of debt and debt equivalents, inclusive of leases, is forecast as a fixed percentage of projected enterprise value, using a target debt-to-value ratio. Total debt is split between debt and capital leases and between current and long-term, based on a 5-year historical average.
2 Excess cash is paid out over 5 years. Remaining cash flow is used to repurchase shares.

EXHIBIT H.12 Costco: Free Cash Flow and Cash Flow to Investors

<table><tr><td colspan="15">$ million</td></tr><tr><td rowspan="2"></td><td colspan="4">Historical</td><td colspan="10">Forecast</td></tr><tr><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td></tr><tr><td>NOPAT</td><td>2,598</td><td>2,675</td><td>3,098</td><td>3,818</td><td>4,206</td><td>4,593</td><td>5,037</td><td>5,298</td><td>5,609</td><td>5,929</td><td>6,180</td><td>6,451</td><td>6,715</td><td>6,978</td></tr><tr><td>Depreciation</td><td>1,255</td><td>1,370</td><td>1,437</td><td>1,492</td><td>1,584</td><td>1,734</td><td>1,852</td><td>1,971</td><td>2,090</td><td>2,207</td><td>2,322</td><td>2,434</td><td>2,544</td><td>2,650</td></tr><tr><td>Gross cash flow</td><td>3,853</td><td>4,045</td><td>4,535</td><td>5,310</td><td>5,790</td><td>6,328</td><td>6,889</td><td>7,269</td><td>7,699</td><td>8,136</td><td>8,502</td><td>8,886</td><td>9,259</td><td>9,628</td></tr><tr><td>Decrease (increase) in working capital</td><td>(962)</td><td>1,682</td><td>684</td><td>449</td><td>420</td><td>327</td><td>334</td><td>331</td><td>326</td><td>320</td><td>313</td><td>305</td><td>297</td><td>296</td></tr><tr><td>Less: Capital expenditures1</td><td>(2,649)</td><td>(2,502)</td><td>(2,969)</td><td>(2,998)</td><td>(3,573)</td><td>(3,281)</td><td>(3,432)</td><td>(3,536)</td><td>(3,633)</td><td>(3,722)</td><td>(3,804)</td><td>(3,879)</td><td>(3,948)</td><td>(4,049)</td></tr><tr><td>Decrease (increase) in capitalized operating leases</td><td>(91)</td><td>(208)</td><td>28</td><td>86</td><td>(230)</td><td>(179)</td><td>(183)</td><td>(181)</td><td>(178)</td><td>(175)</td><td>(171)</td><td>(167)</td><td>(162)</td><td>(162)</td></tr><tr><td>Decrease (increase) in other assets, net of liabilities</td><td>20</td><td>66</td><td>163</td><td>(173)</td><td>(10)</td><td>(8)</td><td>(8)</td><td>(8)</td><td>(8)</td><td>(8)</td><td>(8)</td><td>(8)</td><td>(7)</td><td>(7)</td></tr><tr><td>Free cash flow</td><td>171</td><td>3,083</td><td>2,441</td><td>2,675</td><td>2,397</td><td>3,186</td><td>3,600</td><td>3,875</td><td>4,206</td><td>4,552</td><td>4,832</td><td>5,137</td><td>5,438</td><td>5,706</td></tr><tr><td>Interest income</td><td>41</td><td>50</td><td>75</td><td>126</td><td>64</td><td>51</td><td>38</td><td>26</td><td>13</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Other income</td><td>39</td><td>12</td><td>46</td><td>52</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Taxes related to nonoperating accounts</td><td>48</td><td>49</td><td>32</td><td>15</td><td>74</td><td>85</td><td>93</td><td>101</td><td>109</td><td>117</td><td>122</td><td>127</td><td>132</td><td>138</td></tr><tr><td>Other nonoperating taxes</td><td>77</td><td>37</td><td>45</td><td>92</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Decrease (increase) in excess cash</td><td>1,740</td><td>(844)</td><td>(1,229)</td><td>(1,962)</td><td>1,278</td><td>1,278</td><td>1,278</td><td>1,278</td><td>1,278</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Decrease (Increase) in tax credit carryforward</td><td>0</td><td>—</td><td>—</td><td>(65)</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Unexplained foreign-currency translation2</td><td>(226)</td><td>99</td><td>(173)</td><td>60</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Cash flow to investors</td><td>1,890</td><td>2,486</td><td>1,238</td><td>993</td><td>3,813</td><td>4,601</td><td>5,009</td><td>5,280</td><td>5,606</td><td>4,669</td><td>4,954</td><td>5,264</td><td>5,570</td><td>5,844</td></tr></table>

Capital expenditures are reported on the statement of cash flows.
2 Foreign-currency translation adjustment, less the portion estimated in the change of property, plant, and equipment; detailed in Exhibit 11.14.

EXHIBIT H.13 Costco: Reconciliation of Cash Flow to Investors

<table><tr><td colspan="15">$ million</td></tr><tr><td rowspan="2"></td><td colspan="4">Historical</td><td colspan="10">Forecast</td></tr><tr><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td></tr><tr><td>Interest expense</td><td>133</td><td>134</td><td>159</td><td>150</td><td>277</td><td>302</td><td>315</td><td>327</td><td>340</td><td>354</td><td>368</td><td>382</td><td>397</td><td>413</td></tr><tr><td>Operating lease interest</td><td>75</td><td>57</td><td>74</td><td>91</td><td>88</td><td>96</td><td>103</td><td>109</td><td>116</td><td>122</td><td>129</td><td>135</td><td>141</td><td>147</td></tr><tr><td>Decrease (increase) in long-term debt</td><td>908</td><td>(1,504)</td><td>65</td><td>(270)</td><td>(648)</td><td>(333)</td><td>(327)</td><td>(341)</td><td>(351)</td><td>(361)</td><td>(378)</td><td>(395)</td><td>(413)</td><td>(432)</td></tr><tr><td>Decrease (increase) in capitalized operating leases</td><td>(91)</td><td>(208)</td><td>28</td><td>86</td><td>(230)</td><td>(179)</td><td>(183)</td><td>(181)</td><td>(178)</td><td>(175)</td><td>(171)</td><td>(167)</td><td>(162)</td><td>(162)</td></tr><tr><td>Cash flow to debt and debt equivalents</td><td>1,025</td><td>(1,521)</td><td>326</td><td>57</td><td>(513)</td><td>(114)</td><td>(93)</td><td>(86)</td><td>(73)</td><td>(60)</td><td>(54)</td><td>(45)</td><td>(38)</td><td>(34)</td></tr><tr><td>Nonoperating deferred income taxes</td><td>(44)</td><td>(45)</td><td>(58)</td><td>(50)</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>Shares issued for stock-based compensation, net1</td><td>(313)</td><td>(353)</td><td>(330)</td><td>(326)</td><td>(357)</td><td>(381)</td><td>(406)</td><td>(430)</td><td>(454)</td><td>(478)</td><td>(501)</td><td>(524)</td><td>(546)</td><td>(567)</td></tr><tr><td>Repurchases of common stock</td><td>477</td><td>473</td><td>322</td><td>247</td><td>2,128</td><td>2,315</td><td>2,463</td><td>2,577</td><td>2,744</td><td>1,649</td><td>1,782</td><td>1,942</td><td>2,104</td><td>2,236</td></tr><tr><td>Dividends</td><td>746</td><td>3,945</td><td>936</td><td>1,057</td><td>2,505</td><td>2,728</td><td>2,989</td><td>3,160</td><td>3,327</td><td>3,491</td><td>3,657</td><td>3,818</td><td>3,974</td><td>4,130</td></tr><tr><td>Payments to (investments in) noncontrolling interests2</td><td>(1)</td><td>(13)</td><td>42</td><td>8</td><td>49</td><td>53</td><td>56</td><td>59</td><td>63</td><td>66</td><td>69</td><td>72</td><td>75</td><td>78</td></tr><tr><td>Cash flow to equity and equity equivalents</td><td>865</td><td>4,007</td><td>912</td><td>936</td><td>4,326</td><td>4,715</td><td>5,102</td><td>5,365</td><td>5,679</td><td>4,729</td><td>5,008</td><td>5,309</td><td>5,608</td><td>5,878</td></tr><tr><td>Cash flow to investors</td><td>1,890</td><td>2,486</td><td>1,238</td><td>993</td><td>3,813</td><td>4,601</td><td>5,009</td><td>5,280</td><td>5,606</td><td>4,669</td><td>4,954</td><td>5,264</td><td>5,570</td><td>5,844</td></tr></table>

1 Includes stock-based compensation, stock options exercised, net of the release of vested restricted stock units.
2 equals net income to nonconsolidated interests minus (plus) the increase (decrease) in noncontrolling interests.

EXHIBIT H.14 Costco: Continuing Value

<table><tr><td colspan="3">$ million</td></tr><tr><td colspan="3">Key inputs</td></tr><tr><td>Projected NOPAT in final forecast year</td><td>7,261.7</td><td></td></tr><tr><td>NOPAT growth rate in perpetuity (g)</td><td>4.0\%</td><td></td></tr><tr><td>Return on new invested capital (RONIC)</td><td>22.0\%</td><td></td></tr><tr><td>Weighted average cost of capital (WACC)</td><td>8.0\%</td><td></td></tr><tr><td></td><td></td><td>Continuing Value_t = \frac{NOPAT_{t+1}\left(1 - \frac{g}{RONIC}\right)}{WACC - g}</td></tr><tr><td></td><td></td><td>= 148,301.9</td></tr></table>

Note: Continuing value of  \ {148},{301.9}  million is calculated from unrounded data. Rounded inputs calculate to  \$ {148},{534.8}  million.

EXHIBIT H.15 Costco: Weighted Average Cost of Capital

<table><tr><td>\%</td><td>Target proportion of total capital</td><td>Cost of capital</td><td>Marginal tax rate</td><td>After-tax cost of capital</td><td>Contribution to weighted average</td></tr><tr><td>Debt</td><td>10.4</td><td>4.9</td><td>24.6</td><td>3.7</td><td>0.4</td></tr><tr><td>Equity</td><td>89.6</td><td>8.5</td><td></td><td>8.5</td><td>7.6</td></tr><tr><td>WACC</td><td>100.0</td><td></td><td></td><td></td><td>8.0</td></tr></table>

EXHIBIT H.16 Costco: Enterprise DCF Valuation

<table><tr><td colspan="4">$ million, except where noted</td></tr><tr><td>Forecast year</td><td>Free cash flow (FCF)</td><td>Discount factor at 8.0\%</td><td>Present value of FCF</td></tr><tr><td>2020</td><td>2,397</td><td>0.926</td><td>2,219</td></tr><tr><td>2021</td><td>3,186</td><td>0.857</td><td>2,731</td></tr><tr><td>2022</td><td>3,600</td><td>0.794</td><td>2,857</td></tr><tr><td>2023</td><td>3,875</td><td>0.735</td><td>2,848</td></tr><tr><td>2024</td><td>4,206</td><td>0.680</td><td>2,862</td></tr><tr><td>2025</td><td>4,552</td><td>0.630</td><td>2,868</td></tr><tr><td>2026</td><td>4,832</td><td>0.583</td><td>2,819</td></tr><tr><td>2027</td><td>5,137</td><td>0.540</td><td>2,775</td></tr><tr><td>2028</td><td>5,438</td><td>0.500</td><td>2,719</td></tr><tr><td>2029</td><td>5,706</td><td>0.463</td><td>2,642</td></tr><tr><td>Continuing value</td><td>148,302</td><td>0.463</td><td>68,662</td></tr><tr><td>Present value of cash flow</td><td></td><td></td><td>96,002</td></tr><tr><td>Midyear adjustment factor</td><td></td><td></td><td>1.039</td></tr><tr><td>Value of operations</td><td></td><td></td><td>99,770</td></tr><tr><td>Value of excess cash</td><td></td><td></td><td>6,390</td></tr><tr><td>Value of foreign tax credit carryforward</td><td></td><td></td><td>65</td></tr><tr><td>Enterprise value</td><td></td><td></td><td>106,225</td></tr><tr><td>Less: Value of debt and capital leases</td><td></td><td></td><td>(7,244)</td></tr><tr><td>Less: Value of capitalized operating leases</td><td></td><td></td><td>(2,414)</td></tr><tr><td>Less: Value of noncontrolling interests</td><td></td><td></td><td>(341)</td></tr><tr><td>Equity value</td><td></td><td></td><td>96,226</td></tr><tr><td>Shares outstanding, millions</td><td></td><td></td><td>440</td></tr><tr><td>Equity value</td><td></td><td></td><td>218.80</td></tr></table>

EXHIBIT H.17 Costco: ROIC and Economic Profit

<table><tr><td colspan="17">$ million, except where noted</td></tr><tr><td rowspan="2"></td><td colspan="5">Historical</td><td colspan="11">Forecast</td></tr><tr><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td><td>CV</td></tr><tr><td colspan="17">Method 1</td></tr><tr><td>Return on invested capital,1 \%</td><td>16.8(6.5)</td><td>17.0(6.3)</td><td>14.9(5.5)</td><td>17.7(6.4)</td><td>21.0(7.0)</td><td>22.1(8.0)</td><td>22.1(8.0)</td><td>22.7(8.0)</td><td>22.4(8.0)</td><td>22.4(8.0)</td><td>22.4(8.0)</td><td>22.2(8.0)</td><td>22.1(8.0)</td><td>22.0(8.0)</td><td>21.9(8.0)</td><td>22.0(8.0)</td></tr><tr><td>Weighted average cost of capital, \%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Economic spread, \%</td><td>10.4</td><td>10.7</td><td>9.4</td><td>11.3</td><td>14.0</td><td>14.1</td><td>14.1</td><td>14.7</td><td>14.4</td><td>14.4</td><td>14.4</td><td>14.2</td><td>14.1</td><td>14.0</td><td>13.9</td><td>14.0</td></tr><tr><td>× Invested capital1</td><td>14,941</td><td>15,253</td><td>17,928</td><td>17,506</td><td>18,151</td><td>18,997</td><td>20,806</td><td>22,213</td><td>23,651</td><td>25,073</td><td>26,476</td><td>27,854</td><td>29,202</td><td>30,516</td><td>31,793</td><td>33,065</td></tr><tr><td>Economic profit</td><td>1,549</td><td>1,639</td><td>1,682</td><td>1,978</td><td>2,541</td><td>2,685</td><td>2,928</td><td>3,259</td><td>3,405</td><td>3,602</td><td>3,810</td><td>3,950</td><td>4,114</td><td>4,272</td><td>4,433</td><td>4,615</td></tr><tr><td colspan="17">Method 2</td></tr><tr><td>Invested capital1</td><td>14,941</td><td>15,253</td><td>17,928</td><td>17,506</td><td>18,151</td><td>18,997</td><td>20,806</td><td>22,213</td><td>23,651</td><td>25,073</td><td>26,476</td><td>27,854</td><td>29,202</td><td>30,5,16</td><td>31,793</td><td>33,065</td></tr><tr><td>× Weighted average cost of capital, \%</td><td>6.5\%</td><td>6.3\%</td><td>5.5\%</td><td>6.4\%</td><td>7.0\%</td><td>8.0\%</td><td>8.0\%</td><td>8.0\%</td><td>8.0\%</td><td>8.0\%</td><td>8.0\%</td><td>8.0\%</td><td>8.0\%</td><td>8.0\%</td><td>8.0\%</td><td>8.0\%</td></tr><tr><td>Capital charge</td><td>964</td><td>959</td><td>993</td><td>1,120</td><td>1,277</td><td>1,521</td><td>1,665</td><td>1,778</td><td>1,893</td><td>2,007</td><td>2,119</td><td>2,230</td><td>2,338</td><td>2,443</td><td>2,545</td><td>2,647</td></tr><tr><td>NOPAT</td><td>2,513</td><td>2,598</td><td>2,675</td><td>3,098</td><td>3,818</td><td>4,206</td><td>4,593</td><td>5,037</td><td>5,298</td><td>5,609</td><td>5,929</td><td>6,180</td><td>6,451</td><td>6,715</td><td>6,978</td><td>7,262</td></tr><tr><td>Capital charge</td><td>(964)</td><td>(959)</td><td>(993)</td><td>(1,120)</td><td>(1,277)</td><td>(1,521)</td><td>(1,665)</td><td>(1,778)</td><td>(1,893)</td><td>(2,007)</td><td>(2,119)</td><td>(2,230)</td><td>(2,338)</td><td>(2,443)</td><td>(2,545)</td><td>(2,647)</td></tr><tr><td>Economic profit</td><td>1,549</td><td>1,639</td><td>1,682</td><td>1,978</td><td>2,541</td><td>2,685</td><td>2,928</td><td>3,259</td><td>3,405</td><td>3,602</td><td>3,810</td><td>3,950</td><td>4,114</td><td>4,272</td><td>4,433</td><td>4,415</td></tr></table>

Invested capital measured at the beginning of the year.

EXHIBIT H.18 Costco: Valuation Using Economic Profit

<table><tr><td colspan="7">$ million, except where noted</td></tr><tr><td>Forecast year</td><td>Invested capital1</td><td>ROIC,1\%</td><td>WACC, \%</td><td>Economic profit</td><td>Discount factor at 8.0\%</td><td>Present value of economic profit</td></tr><tr><td>2020</td><td>18,997</td><td>22.1</td><td>8.0</td><td>2,685</td><td>0.926</td><td>2,486</td></tr><tr><td>2021</td><td>20,806</td><td>22.1</td><td>8.0</td><td>2,928</td><td>0.857</td><td>2,510</td></tr><tr><td>2022</td><td>22,213</td><td>22.7</td><td>8.0</td><td>3,259</td><td>0.794</td><td>2,587</td></tr><tr><td>2023</td><td>23,651</td><td>22.4</td><td>8.0</td><td>3,405</td><td>0.735</td><td>2,502</td></tr><tr><td>2024</td><td>25,073</td><td>22.4</td><td>8.0</td><td>3,602</td><td>0.680</td><td>2,451</td></tr><tr><td>2025</td><td>26,476</td><td>22.4</td><td>8.0</td><td>3,810</td><td>0.630</td><td>2,400</td></tr><tr><td>2026</td><td>27,854</td><td>22.2</td><td>8.0</td><td>3,950</td><td>0.583</td><td>2,304</td></tr><tr><td>2027</td><td>29,202</td><td>22.1</td><td>8.0</td><td>4,114</td><td>0.540</td><td>2,222</td></tr><tr><td>2028</td><td>30,516</td><td>22.0</td><td>8.0</td><td>4,272</td><td>0.500</td><td>2,136</td></tr><tr><td>2029</td><td>31,793</td><td>21.9</td><td>8.0</td><td>4,433</td><td>0.463</td><td>2,052</td></tr><tr><td>Continuing value</td><td></td><td></td><td></td><td>115,237</td><td>0.463</td><td>53,354</td></tr><tr><td>Present value of economic profit</td><td></td><td></td><td></td><td></td><td></td><td>77,005</td></tr><tr><td>Invested capital in 2019</td><td></td><td></td><td></td><td></td><td></td><td>18,997</td></tr><tr><td>Invested capital and economic profit</td><td></td><td></td><td></td><td></td><td></td><td>96,002</td></tr><tr><td>Midyear adjustment factor</td><td></td><td></td><td></td><td></td><td></td><td>1,039</td></tr><tr><td>Value of operations</td><td></td><td></td><td></td><td></td><td></td><td>99,770</td></tr><tr><td>Value of excess cash</td><td></td><td></td><td></td><td></td><td></td><td>6,390</td></tr><tr><td>Value of foreign tax credit carryforward</td><td></td><td></td><td></td><td></td><td></td><td>65</td></tr><tr><td>Enterprise value</td><td></td><td></td><td></td><td></td><td></td><td>106,225</td></tr><tr><td>Less: Value of debt and capital leases</td><td></td><td></td><td></td><td></td><td></td><td>(7,244)</td></tr><tr><td>Less: Value of capitalized operating leases</td><td></td><td></td><td></td><td></td><td></td><td>(2,414)</td></tr><tr><td>Less: Value of noncontrolling interests</td><td></td><td></td><td></td><td></td><td></td><td>(341)</td></tr><tr><td>Equity value</td><td></td><td></td><td></td><td></td><td></td><td>96,226</td></tr></table>

Invested capital measured at the beginning of the year.

# Two-Stage Formula for Continuing Value

In certain situations, you may want to break up the continuing-value (CV) period into two periods with different assumptions for growth and return on invested capital (ROIC). In a situation such as this, you can use a two-stage variation of the value driver formula for discounted cash flow (DCF) valuations. The first stage is based on a limited-life annuity formula, and the second stage is based on a perpetuity:

$$

C V = \text {A n n u i t y S t a g e} + \text {P e r p e t u i t y S t a g e}

$$ such that


$$

\text {A n n u i t y S t a g e} = \left[ \frac {\mathrm {N O P A T} _ {t + 1} \left(1 - \frac {g _ {A}}{\mathrm {R O N I C} _ {A}}\right)}{\mathrm {W A C C} - g _ {A}} \right] \left[ 1 - \left(\frac {1 + g _ {A}}{1 + \mathrm {W A C C}}\right) ^ {N} \right]

$$

$$

\mathrm {P e r p e t u i t y S t a g e} = \frac {1}{(1 + \mathrm {W A C C}) ^ {N}} \times \frac {\mathrm {N O P A T} _ {t + 1} (1 + g _ {A}) ^ {N} \left(1 - \frac {g _ {B}}{\mathrm {R O N I C} _ {B}}\right)}{\left(\mathrm {W A C C} - g _ {B}\right)}

$$ where NOPAT = net operating profit after taxes


$g_{A} =$  expected growth rate in the first stage of the CV period

$\mathrm{RONIC}_A =$  expected return on new invested capital during the first stage of the CV period

WACC = weighted average cost of capital

$N =$  number of years in the first stage of the CV period

$g_{B} =$  expected growth rate in the second stage of the CV period

$\mathrm{RONIC}_B =$  expected return on new invested capital during the second stage of the CV period

Note that  $g_{A}$  can take any value; it does not have to be less than the weighted average cost of capital. Conversely,  $g_{B}$  must be less than WACC for this perpetuity formula to be valid. Otherwise the formula goes to infinity, and the company eventually overtakes the world economy.

A two-stage variation can also be used for the economic-profit continuing-value formula:

$$

\begin{array}{l} C V = \frac {\text {E c o n o m i c P r o f i t} _ {t + 1}}{\text {W A C C}} \\ + \left[ \frac {\mathrm {N O P A T} _ {t + 1} \left(\frac {g _ {A}}{\mathrm {R O N I C} _ {A}}\right) \left(\mathrm {R O N I C} _ {A} - \mathrm {W A C C}\right)}{\mathrm {W A C C} \left(\mathrm {W A C C} - g _ {A}\right)} \right] \left[ 1 - \left(\frac {1 + g _ {A}}{1 + \mathrm {W A C C}}\right) ^ {N} \right] \\ + \frac {\mathrm {N O P A T} \left(1 + g _ {A}\right) ^ {N} \left(\frac {g _ {B}}{\mathrm {R O N I C} _ {B}}\right) \left(\mathrm {R O N I C} _ {B} - \mathrm {W A C C}\right)}{\mathrm {W A C C} \left(\mathrm {W A C C} - g _ {B}\right) \left(1 + \mathrm {W A C C}\right) ^ {N}} \\ \end{array}

$$

These formulas assume that the return on the base level of capital remains constant. If you want to model a decline in ROIC for all capital, including the base level of capital, it is best to model this into the explicit forecast.

It is difficult to model changes in average ROIC with formulas, because the growth rate in revenues and NOPAT will not equal the growth rate in free cash flow (FCF), and there are multiple ways for the ROIC to decline. You could model declining ROIC by setting the growth rate for capital and reducing NOPAT over time (in which case NOPAT will grow much more slowly than capital). Or you could set the growth rate for NOPAT and adjust FCF each period (so FCF growth again will be slower than NOPAT growth). The dynamics of these relationships are complex, and we do not recommend embedding the dynamics in continuing-value formulas, especially if the key value drivers become less transparent.
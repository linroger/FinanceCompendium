---
title: Investment Project Call Option
parent_directory: Options Futures & Forwards
formatted: 2025-12-21 02:15:25 PM
formatter_model: kimi-k2-turbo
cli-tool: claude-code
primary_tags:
  - real options analysis
  - investment timing decisions
  - commodity extraction options
  - project valuation methods
  - option pricing applications
secondary_tags:
  - npv rule limitations
  - binomial option valuation
  - perpetual option models
  - peak load pricing
  - research development options
  - shutdown restart options
  - hysteresis effects
  - operating flexibility
  - strategic investment decisions
  - capital budgeting techniques
cssclasses: academia
---

# Investment Project Call Option

Investment cost  $=$  Strike price

Present value of project  $=$  Price of underlying asset

This comparison suggests that we can view any investment project as a call option, with the investment cost equal to the strike price and the present value of cash flows equal to the asset price. The exploitation of this and other analogies between real investment projects and financial options has come to be called real options, which we define as the application of derivatives theory to the operation and valuation of real investment projects. Note the phrase "operation and valuation." We will see in this chapter that you cannot value a real asset without also understanding how you will operate it. You cannot value any option without understanding when you will exercise it.

## I. INVESTMENT AND THE NPV RULE

We first consider a simple investment decision of the sort you would encounter in a basic finance course when studying net present value (NPV). Despite its simplicity, the example illustrates the issues that will arise again later in this chapter.

From Chapter 17 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

Suppose we can invest in a machine, costing \$10, that will produce one widget a year forever. In addition, each widget costs \$0.90 to produce. The price of widgets will be 0.55 next year and will increase at 4\% per year. The effective annual risk-free rate is 5\% per year. We can invest, at any time, in one such machine. There is no uncertainty.

Before reading further, you should try to answer this question: What is the most you would pay to acquire the rights to this project?

## Static NPV

A natural first step is to compute the NPV if we invested in the project today. We obtain

$$
\begin{array}{l} \mathrm{NPV}_{\text{Invest today}} = -\$0.9 \times \left(\frac{1}{1.05} + \frac{1}{1.05^{2}} + \frac{1}{1.05^{3}} + \dots\right) - \$10 \\ = \frac{\$0.55}{1.04} \times \left(\frac{1}{\frac{1.05}{1.04} - 1}\right) - \frac{\$0.9}{0.05} - \$10 = \frac{\$0.55}{0.01} - \$28 = \$27 \\ \end{array}
$$

This calculation tells us that if widget production were to start next year, we would pay 27 for the project. For reasons that will become obvious, we call this the project's static NPV.

Notice that in the early years, the project has an operating loss. If we activate the project today, then next year we will have negative operating cash flows, spending \$0.90 to produce a \$0.55 widget. In addition, at a 5\% rate of interest, the opportunity cost of the \$10 investment is \$0.50/year.

Why is NPV positive if we will be producing at a loss? Although the initial cash flows are negative, the widget price is growing. The project will become profitable in the future. This eventual profitability is why NPV is positive. This analysis suggests that we might consider waiting until later to invest.

Suppose we wait 5 years to invest instead of investing immediately. NPV is then

$$
\frac{1}{1.05^{5}} \left[ (1.04)^{5} \frac{\$0.55}{0.01} - \$28 \right] = \$30.49
$$

Thus, it is better to wait 5 years than to invest today. What is the maximum NPV we can attain?

Common sense points to an approximate answer: We should not invest until annual widget revenue covers marginal production cost (\$0.90) plus the opportunity cost of the project (\$0.50); i.e., cost is at least \$1.40. The widget price will be \$1.40 when  $n$  satisfies

$$
(1.04)^{n} \times 0.55 = 1.40
$$

Solving for  $n$  gives us  $n = 23.82$ . After 23.82 years, the widget price will have reached a break-even level. The value today of waiting that long to invest in the project is

$$
\left[ \frac{(1.04)^{23.82} \times \$0.55}{0.01} - \frac{\$0.90}{0.05} - \$10 \right] \frac{1}{(1.05)^{23.82}} = \$35.03
$$

Problem 4 asks you to verify this result. You will discover that 23.82 years is not exactly optimal. Rather, waiting approximately 24.32 years—not 23.82 years—maximizes NPV. At this point the widget price will be about 1.43.

We will see the reason for this slight difference in Section 4. It occurs because the effective annual interest and growth rates of  $5\%$  and  $4\%$  are not the relevant rates since the decision to put off the investment is made on a day-to-day basis. It is instead the equivalent continuously compounded rates that matter.

This example demonstrates the important point that making an investment decision requires thinking carefully about alternatives, even under certainty.

We are left with (at least) two questions:

- How do we approach this kind of problem in general?
- Why didn't the NPV rule work? Or did it?

## The Correct Use of NPV

The NPV rule worked correctly in the above example. The NPV rule for making investment decisions entails two steps:

1. Compute NPV by discounting expected cash flows at the opportunity cost of capital.
2. Accept a project if and only if its NPV is positive and it exceeds the NPV of all mutually exclusive alternative projects.

When we computed the widget machine's NPV in equation (1), we neglected to take into account the NPV of alternative mutually exclusive projects, namely investing in the project tomorrow or at some other future date. Static NPV—NPV if we accept the project today—ignores project delay. Because static NPV measures the value of an action we could take, namely investing today, it at least provides a lower bound on the value of the project.

In this example it would be correct to invest in the project today if not activating the project today meant that we would lose it forever. Under this assumption, the mutually exclusive alternative (never taking the project) has a value of 0, so taking it today would be correct.

To decide whether and when to invest in an arbitrary project, we need to be able to compute the value of delaying that investment. As suggested at the start of the chapter, option pricing theory can help us to value delay.

## The Project as an Option

The decision to invest in the project involves a comparison of net present values. In what sense is this an option?

We can interpret equation (1) so as to make the option analogy more apparent. When we take the project, we pay \$10 and we commit to paying \$0.90/year forever. The present value of this stream of costs is

$$
\frac{S_{+1}}{0.01} = \frac{\$0.55}{0.01} = \$55
$$

As we discussed earlier, we can view this present value as analogous to the exercise price in an option valuation. In return for paying 28, we receive a cash flow with a present value of

$$
\text{Present value of widget revenue} = \frac{S_{+1}}{0.01}
$$ where $S_{+1}$ is the widget price the year after we make the investment. When $S_{+1} = \$0.55$, the present value of cash flow is \$55. This present value of widget revenue is the price the revenue stream would have if it were traded separately. It is analogous to the stock price in an option valuation, and therefore it is sometimes called the twin security or the traded present value of the project.


The dividends forgone by not acquiring the asset today, the interest saved by deferring the payment of the strike price, and the value of the insurance that is lost by exercising the option. It turns out that the same three considerations govern the decision to invest in the widget project.

First, by delaying investment, we lose the cash flow from selling widgets. The cash flow we do not receive is analogous to stock dividends we do not receive by holding an option rather than the underlying stock. The first period cash flow is \$0.55. The present value of future cash flows is \$0.55/0.01 = 55. Thus, the dividend yield is approximately 1\%. (We can also think of the dividend yield as the difference between the discount rate [5\%] and the growth rate of the cash flows [4\%].)

Second, once we begin widget production, we are committed to spending the present value of the marginal widget cost,  \$18, along with the\$ 10 initial investment. The annual value of delaying investment is interest on the total investment cost, or $0.05 \times 28 = 1.40$ per year.

Third and finally, in the widget project, there is no uncertainty and therefore no insurance value to delaying investment.

We can compute the value of the widget project option using the perpetual call calculation. The formula assumes continuously compounded rates, so for the interest rate we use  $\ln (1.05) = 4.879\%$ , and for the dividend yield we use the difference between the continuously compounded interest rate and growth rate, or  $\ln (1.05) - \ln (1.04) = 0.9569\%$ .

With  $S = \$ 55  (the present value of revenue),  $K = \28$  (the present value of costs),  $r = 0.04879$ ,  $\sigma = 0$ , and  $\delta = 0.009569$ , the equation  $(H_c - K)\left(\frac{S}{H_c}\right)^{h_1}$  gives an option price of  $\$ 35.03  and investment when the widget price equals  $\1.4276$ . We will call this price the investment trigger price. We reach this price after about 24.32 years, which verifies the answer we discussed earlier.

The example in this section illustrates the importance of thinking dynamically about a project and shows how this specific problem can be modeled as an option.

### 2. INVESTMENT UNDER UNCERTAINTY

We first examine a particularly simple valuation problem in order to better understand the link between discounted cash flow (DCF), real options, and financial options.

```d2
direction: right

DCF Valuation: {
  Expected Cash Flow
  Discount Rate
  NPV Calculation
}

Real Options: {
  DCF + Flexibility
  Option to Delay/Abandon/Expand
  Binomial/Black-Scholes Models
}
```

Suppose an analyst is evaluating a project that will generate a single cash flow,  $X$ , occurring at time  $T$ . As with many investment projects, it is not possible to observe market characteristics of the project. There is no way to directly estimate project returns, project volatility, or the covariances of the project with the stock market. Instead, suppose the analyst considers the economic fundamentals of the project and makes educated inferences about these characteristics. The analyst might also look for public firms with a business resembling the project. The analyst could then use information about these public firms to infer characteristics (such as beta) of the project.

After examining all available data, the analyst estimates that the cash flow will be  $X_{u}$  if the economy is doing well—an event with the probability  $p$ —and  $X_{d}$  if the economy is doing poorly. The project requires expenditures of  $I_{0}$  at time 0 and  $I_{T}$  at time  $T$ . The analyst determines that projects with comparable risk have an effective annual expected rate of return of  $\alpha$ .

We can use this description to compute the value of the project,  $V$ . The standard discounted cash flow methodology calls for computing the expected cash flow, and using as a discount rate the expected return on a project of comparable risk:

$$

V = \frac{p X_{u} + (1 - p) X_{d}}{(1 + \alpha)^{T}} \tag{2}

$$

Assuming that we either take the project now or never, we invest in the project if  $V \geq I_0 + I_T / (1 + r)^T$ .

Example 1. Suppose that the risk-free rate is  $r = 6\%$ , the expected return on the market is  $r_M = 10\%$ , the project beta is  $\beta = 1.25$ ,  $p = 0.60$ ,  $T = 1$ ,  $X_u = \120$ , and  $X_d = \$ 80 . The expected return on an asset with the same risk as the project is

$$

\alpha = 0.06 + 1.25 \times (0.10 - 0.06) = 0.11

$$

The expected cash flow is

$$

\operatorname{E}(X) = 0.60 \times \$120 + 0.40 \times \$80 = \$104

$$

Using (2), the present value of the project cash flows is

$$

V = \frac {\mathbb {S} 1 0 4}{1 + 0 . 1 1} = \mathbb {S} 9 3. 6 9 4

$$

Suppose that  I_0 = \10  and  I_1 = \95  and that the manager commits at time 0 to paying the \95 at time 1. Then net present value is

$$

\begin{array}{l} V - I _ {0} - I _ {1} / (1 + r) = 9 3. 6 9 4 - \$ 1 0 - \$ 9 5 / 1. 0 6 \\ = - \mathbb {S} 5. 9 2 9 \\ \end{array}

$$

## Valuing Derivatives on the Cash Flow

The calculation in Example 1 is standard but it is nevertheless based on strong assumptions: We have specified the future cash flows in different states, the probabilities of those states, and the comparability of the project to a traded asset.4 It turns out that in valuing the project we have already made all the assumptions we need to make in order to value derivatives related to the project.

To see how to perform capital budgeting calculations involving options, suppose that if we invest  $I_0$  to start the project, the subsequent investment of  $I_1$  is optional: We make this further investment only if the project at time 1 has sufficient value. Since the project has a good and bad outcome, it is natural to think about using binomial option valuation. In order to do so, we need to know the risk-neutral probability of the high outcome.

Fortunately, we can easily compute risk-neutral probabilities for this project. The expected risk-neutral price is the forward price. We have computed  $V$ , which is the price of an asset paying a single cash flow at time  $T$ . The forward price is

$$

F _ {0, T} = V (1 + r) ^ {T}

$$

The risk-neutral probability must therefore satisfy

$$ p^* X_{u} + (1 - p^*) X_{d} = F_{0,T}
$$

Thus, we have

$$ p^* = \frac{F_{0,T} - X_{d}}{X_{u} - X_{d}}
$$

This gives us the binomial tree  $(X_{u}$  and  $X_{d}$ ) and the risk-neutral probability of a high outcome  $(p^{*})$ . Notice that if we value the project using the risk-neutral distribution, then by construction we will obtain the original project value,  $V$ .

Example 2. Consider the same parameters as in Example 1. The forward price for the project is

$$
F_{0,T} = S_0 \left(\frac{1 + r}{1 + \delta}\right)^{T}
$$

The risk-neutral probability of the good outcome is

$$ p^* = \frac{99.315 - 80}{120 - 80} = 0.4829
$$

If we value the project using the risk-neutral probability, we obtain

$$
= 0.07 + 1.33 (0.06)
$$

Now make the same assumptions as in Example 1, except that we decide at time 1 whether to incur the  \$95 cost. We will choose to produce output in time 1 only when the cash flow is\$ 120, since we would lose \$15 by paying \$95 to produce when the output sells for 80. The value of the project is

$$
\frac{0.4829 \times \$120 + (1 - 0.4829) \times \$80}{1.06} = \$93.694
$$

Given the risk-neutral probability and the cash flow distribution, we can value projects with options or other nonlinear cash flows.

You may be thinking that there appears to be little difference between standard discounted cash flow valuation and real options valuation. Recognize that any financial valuation entails assigning a dollar value today to a (possibly uncertain) cash flow that occurs in the future. This description applies to the valuation of a project, as well as to valuing a bond, a stock, or an option.

When we value an option on a stock, we rely on the market to have already performed part of the valuation—namely, valuing the stock. When we value an option on a project, we have to estimate the value of the project since we cannot observe it. This is true whether or not the project contains options.

This discussion illustrates the point that risk-neutral pricing and discounted cash flow are alternative means of valuing a future cash flow. If done using the same assumptions, the two methods give the same answer. In practice, of course, it is common to make simplifying assumptions for tractability. Answers may differ because the simplifying assumptions for different valuation methods are inconsistent.

## Evaluating a Project with a 2-Year Investment Horizon

We now consider the problem of when to invest in a risky project. As before, the decision to invest in such a project is like exercising an American option: We pay the investment cost

(strike price) to receive the asset (present value of future cash flows). The widget project in the previous section had cash flows that were certain.

Suppose a project costs  \$100 and begins producing an infinite stream of cash flows 1 year after investment. Expected annual cash flows for the first year are\$ 18, and are expected to grow annually at a rate of  $3\%$ . Suppose further that the risk-free rate is  $7\%$ , the risk premium on the market is  $6\%$ , and the beta of the project is 1.33. Using the Capital Asset Pricing Model (CAPM), we compute the discount rate for the project in the usual way:

$$
r_{\text{project}} = r_{\text{risk-free}} + \beta (r_{\text{market}} - r_{\text{risk-free}})
$$

To value the project, we perform a standard discounted cash flow calculation. Since the project lives forever, we treat it as a perpetual growing annuity. The present value is

$$
\mathrm{PV} = \frac{\mathrm{E}(\mathrm{CF}_{1})}{r_{\text{project}} - \text{growth rate}}
$$

Static NPV is therefore  $150 -$ 100 = 50.

Suppose we have 2 years in which to decide whether to accept the project; at the end of that time, we either invest in the project or lose it. (Imagine, for example, that the licensing rights for a technology will revert at that time to the original owner.) The static NPV rule will apply after 2 years because further deferral is not possible. However, at time 0, we must evaluate the option to wait.

The forgone initial cash flow (the dividend on the project) is  \$18 and the interest saving is\$ 7 (7\% × 100). Thus, considering only dividends and interest, it makes sense to start the project immediately. However, the project also has implicit insurance that we lose by investing in the project. To value the insurance we need to know the project volatility.

A Tree for Project Value. Suppose that cash flows are lognormally distributed with a  $50\%$  volatility. Figure 1 uses the Cox-Ross-Rubinstein approach to construct a binomial tree for the evolution of cash flows with a binomial period of 1 year. If we wait to take the project, initial cash flows in 1 year will be either  $\$18e^{0.5} = \$29.677$  or  $\$18e^{-0.5} = \$10.918$ . Since the project value is proportional to cash flows, the value of the project is also lognormally distributed with a  $50\%$  volatility.

In 1 year, project value will be either  $29.677 / (0.15 - 0.03) =$ 247.31 or $10.918/ (0.15 - 0.03) = $91. If we will continue to learn about the project at the same rate over time, we can build a binomial tree with constant volatility that shows the evolution of project value. This tree, constructed by discounting at each node the cash flows in Figure 1, is in Figure 2.

Figure 2 describes the evolution of the project's present value. The project does not exist prior to investment, but the tree provides the information we need in order to decide whether to invest. The tree in Figure 2 is exactly the same tree we would construct for the stock price of a company that had the project as its only asset and that paid dividends equal to the cash flow of the project. Such a stock would have an initial price of 150 and a 50\% volatility.

**FIGURE I**

Binomial tree for project cash flows, assuming binomial distribution with  $50\%$  volatility.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/f48a3c7bb255cb4dd2894149620414044e3e5e3bcf2fa0138aab04b9a0432a55.jpg)

**FIGURE 2**

Binomial tree for project value, assuming  $50\%$  volatility. The value at each node is the project value if investment occurs at that node.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/32e21789c7fec60cba2715135b38fb907b1639e56bd939707596aa776c970b54.jpg)

It may trouble you that in valuing this project, option pricing formulas are being used in a context where literal replication of the option is not possible because the twin security does not exist. The binomial procedure also works in a setting where we perform valuation using the CAPM or other pricing model. Thus, we are using option pricing formulas to create fair prices, not arbitrage-free prices.

Solving for the Optimal Investment Decision. We can use Figure 2 to solve the investment problem exactly as we would use it in a binomial option pricing problem. The inputs are initial project value,  S = \150 ; investment cost,  K = \100 ; continuously compounded risk-free rate,  r = \ln (1.07) = 6.766\% ; volatility,  \sigma = 0.50 ; and time to expiration,  t = 2  years. Since the market value of the project today is  \150  and the cash flow in a year would be  \$18

**FIGURE 3**

Value of the investment option for the project in Figure 2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/ae0e16a9643c92bdfca940ec3bd83dea10e9f61d11a163eba2a9daa99c6f5862.jpg)

YEAR 0

YEAR 1

YEAR 2 if the project were developed, the dividend yield is 12\% (18/150). Since project value is proportional to next year's cash flow, the dividend yield never changes. The continuously compounded dividend yield is \delta = \ln(1.12) = 0.1133.

The up and down moves can be modeled using any of the binomial trees. We can then solve for the value of the investment option just as we solve for the price of an American call option. The risk-neutral probability of the project value increasing in any period,  $p^*$ , is given by

$$ p^* = \frac{e^{0.0676 - 0.1133} - e^{-0.5}}{e^{0.5} - e^{-0.5}} = 0.335
$$

Using  $p^*$ , we work backward through the tree. The results are in Figure 3. Notice that the initial value of the project option is  \$55.80, which is greater than the static NPV of\$ 50. Problem 11 asks you to verify these calculations.

In practice, decision trees are often used to analyze this kind of problem. Figure 2—like any binomial option problem—is a decision tree, albeit with probabilities and nodes constructed in a very particular way. If the discount rate applicable to the underlying asset is constant, then when valuing an option using true probabilities, the correct discount rate varies across the nodes of the tree. Analysts using a decision tree often use true (not risk-neutral) probabilities and a constant discount rate along the tree. Binomial pricing per se does not imply that any particular true expected return is constant; instead, it tells us how to perform valuation so that the assumptions about the project and the assumptions about the tree are consistent with each other.

### Evaluating the Project with an Infinite Investment Horizon

The above example assumes that we must start the project by year 2 and that we evaluate it annually. Suppose instead that the project can be started at any time and then will live forever. The project is then a perpetual call option that we can evaluate using the perpetual option pricing formula. Using continuously compounded inputs, we compute

$$
\text{Call Perpetual} (\$150, \$100, 0.50, 0.0676, 0.1133) = \{\$63.396, \$245.71\}
$$

When the project value is \$150, the option value is \$63.396 and the optimal investment trigger is \$245.71. In other words, we invest when the project is worth \$245.71, more than twice the investment cost. If we invest immediately, the project is worth \$50. The ability to wait increases that value by \$13.396.

### 3. REAL OPTIONS IN PRACTICE

Real investment decisions often have optionlike features. Consider the following:

1. The decision about whether and when to invest in investment projects.
2. The ability to shut down, restart, and permanently abandon projects.
3. The ability to invest in projects that may give rise to future options.
4. The ability to be flexible in the future about the choice of inputs, outputs, or production technologies.

We have already discussed the first—an investment project is a call option. We can view the ability to shut down a money-losing project (item 2 in the list above) as having the project plus a put option—an insurance policy to protect against even greater losses. The ability to invest in a way that gives rise to future investment options (item 3, sometimes called "strategic options") should remind you of a compound option (an option to buy an option). So-called flexibility options (item 4) are analogous to a type of exotic option called a rainbow option.

Despite the many similarities between real options and financial options, there is usually no simple and straightforward way to make real-life investment problems fit an option pricing formula. As with any valuation problem, it is necessary to analyze the specific problem. In this section, we look at two examples that use option analysis to value assets: peak-load electricity generation and pharmaceutical research and development. Box 1 describes an investment problem at Intel that was similar to a peak-load problem.

### Peak-Load Electricity Generation

Electricity forward prices can vary over the course of a day. They also vary seasonally: In the United States, electricity forward prices are high in the summer and low in the winter. In addition to this predictable variation, electricity prices can be volatile. On extremely hot days, for example, prices can spike to 100 times their average price.

### BOX I: Peak-Load Manufacturing at Intel

Manufacturers investing in production capacity and facing uncertain demand experience the same peak-load production problem as electricity producers. Consider a manufacturer investing in production capacity and facing uncertain demand. How should the manufacturer choose plant capacity? Consider choosing the plant's capacity to meet expected demand. If demand turns out to be less than forecast, the firm will either produce at a loss or have an idle plant. If demand is greater, the firm will forgo revenue. If it is necessary to produce whether demand is high or low, then extra capacity has no option value. However, if it is possible to idle an unused plant when demand is low, then extra production capacity is like a peak-load facility. The extra capacity gives the firm a call option.

Intel in 1997 had to decide upon the capacity of a new plant. Semiconductor fabrication facilities

("fabs") cost about  \$2 billion and take 2 years to construct, 1 year for the shell—the building—and 1 year for the equipment. The shell cost was about\$ 350 million, with the rest reflecting equipment cost.

Intel analysts proposed building a shell 1 year ahead of schedule. If demand were high, the firm would be able to install equipment a year early and earn an extra year of revenue. If demand were low, the firm would maintain the building until needed, which was relatively inexpensive.

The planners sought to persuade senior management that early construction of a shell provided benefits. Intel analysts developed a simple binomial model that illustrated the costs and benefits of early construction. They verified that the Black-Scholes formula gave approximately the same option value. Intel then built the shell 1 year early.

A peak-load plant, as the name suggests, produces only when it is profitable to do so, exploiting spikes in the price of electricity. Such plants are designed so that they can be idled when the price of electricity is less than the cost of fuel, but they can be quickly brought online to produce power when the price of electricity is high or when the price of fuel declines. Because it is turned on only when profitable, owning a peak-load plant is like owning a strip of call options, with options maturing daily.[9] The underlying asset is electricity. The strike price is the cost of inputs required to produce a unit of electricity, including the cost of the fuel—typically natural gas—and other variable costs associated with operating the plant.[10] The heat rate,  $H$ , of a plant is the efficiency with which it turns gas into electricity (the number of MMBtus required to produce a megawatt hour (MWh)).[11]

For the moment, let's consider only electricity and gas prices, and assume that we can ignore distribution costs and marginal operating, maintenance, and other costs. Then

**FIGURE 4**

Forward price (top panel) and volatility (middle panel) curves for electricity and natural gas. The bottom panel depicts the spark spread implied by the forward price curves, assuming a heat rate of 9000.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/c7d6e1b6d4b86f2897e685772f2a5cead090a3879f997d8ac0a5db15ed5bb959.jpg) the profit of the plant is

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/6b48c5c6c695b1d2e69326641a8f6d78181aaf997345a2a15f6141a09d1fc1e2.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/cd5fab9b00f001a4ec989121e1c8c0eba449abfda20f77b314d76f51bf7a9c6b.jpg)

$$
\operatorname{Profit} = \max(S_{\mathrm{elec}} - H \times S_{\mathrm{gas}}, 0)
$$

This is the payoff to a European exchange option. The difference between the price of electricity and the cost of generation,  $S_{\mathrm{elec}} - H \times S_{\mathrm{gas}}$ , is called the spark spread. There are operating costs besides gas, but the spark spread is the variable component of marginal profit.

In order to value the option we need forward prices and volatilities for electricity and gas and the correlation between the two. The top panel in Figure 4 shows representative forward curves for electricity and gas. The price curve for gas has a shape that exhibits seasonal winter peaks. The electricity curve, by contrast, exhibits summer peaks. The bottom panel shows the spark spread implied by the prices in the first panel.

The value of a plant is the sum of the operating options it provides. Let  $F_{E,t_i}$  and  $F_{G,t_i}$  represent the time 0 forward prices for electricity and gas delivered at time  $t_i$ . If we ignore other marginal operating costs, then the value of the operating plant is

$$
\text {V a l u e o f p l a n t} = \sum_ {i = 1} ^ {n} \operatorname {B S C a l l} \left(F _ {E, t _ {i}}, H \times F _ {G, t _ {i}}, \hat {\sigma} _ {t _ {i}}, r, t _ {i}, r\right) \tag {3}
$$ where  $\hat{\sigma}_{t_i}^2 = \sigma_{E,t_i}^2 +\sigma_{G,t_i}^2 -2\rho \sigma_{E,t_i}\sigma_{G,t_i}$ . Because volatility changes with the time horizon in Figure 4, volatility in expression 3 has a time subscript. Equation (3) provides the value of the plant taking account of optionality. We could also value the plant assuming operation at all times; this would be a static NPV calculation. We can see how the static value relates to the true value by using put-call parity to rewrite equation (3):


$$

\begin{array}{l} \sum_ {i = 1} ^ {n} \left[ e ^ {- r t _ {i}} \left(F _ {E, t _ {i}} - H \times F _ {G, t _ {i}}\right) + \operatorname {B S P u t} \left(F _ {E, t _ {i}}, H \times F _ {G, t _ {i}}, \hat {\sigma} _ {t _ {i}}, r, t _ {i}, r\right) \right] \tag {4} \\ = \underbrace {\sum_ {i = 1} ^ {n} e ^ {- r t _ {i}} \left(F _ {E , t _ {i}} - H \times F _ {G , t _ {i}}\right)} _ {\text {S t a t i c N P V}} + \underbrace {\sum_ {i = 1} ^ {n} \operatorname {B S P u t} \left(F _ {E , t _ {i}} , H \times F _ {G , t _ {i}} , \hat {\sigma} _ {t _ {i}} , r , t _ {i} , r\right)} _ {\text {O p t i o n n o t t o o p e r a t e}} \\ \end{array}

$$

This way of writing the plant's value makes apparent the difference between a static NPV calculation and the real options valuation. The static calculation assumes operation at all times; we can value the plant by simply discounting the spark spread computed using forward prices. Equation (3) also makes it clear that the value of a peak-load plant does not stem from operating when prices are high—all plants operate when prices are high—but rather from shutting down when prices are low.

In reality, equation (4) is overly simplified. There are marginal distribution, operation, and maintenance costs associated with an operating plant. Represent these costs as  $c$ . When we take these into account, marginal profit is

$$

\text {P r o f i t} = \max  \left[ S _ {\mathrm {e l e c}} - (H \times S _ {\mathrm {g a s}} + c), 0 \right]

$$

This payoff is that of a spread option, since the payoff is positive if the spread  $S_{\mathrm{elec}} - H \times S_{\mathrm{gas}}$  exceeds  $c$ . An option with this payoff cannot be valued using the Black-Scholes formula because neither  $S_{\mathrm{elec}} - H \times S_{\mathrm{gas}}$  nor  $H \times S_{\mathrm{gas}} + c$  is lognormally distributed. Equation (3) is therefore an approximation once nonfuel costs are added to the strike price.[13]

When we include other costs, the static NPV of a peak-load plant is typically negative. Adding the shutdown option, however, makes NPV positive. One implication is that, in equilibrium, after the optimal number of peak-load plants have been constructed, electricity prices will continue to be variable. Otherwise, the marginal peak-load plant would have negative NPV. Thus, the existence of peak-load technology will not eliminate equilibrium variability in electricity prices.

As a final point, note that the volatility curves in Figure 4 are declining over time. From the standpoint of year 0, a 2-year volatility is less than a 1-year volatility. This is in contrast with stocks, for which we typically assume volatility is constant over time.

The assumption that a stock price follows a random walk implies that volatility increases with the square root of time. Thus, volatility enters the Black-Scholes model as

$\sigma \sqrt{T - t}$ ; this expression measures the volatility of the stock price over the horizon from  $t$  to  $T$ . By contrast, we do not expect electricity prices to follow a random walk. When the electricity price is high, users consume less electricity and producers increase production. When prices are low, users consume more and producers produce less. Thus, the price of electricity reverts to a level reflecting the cost of production. When prices revert in this fashion, volatility grows with  $T$  at a rate less than  $\sqrt{T - t}$ .

To consider a specific example, suppose it is January. From this perspective, the July price this year and the July price next year have similar distributions; we won't learn much about the July price this year or next until we approach July. (This is not strictly true because economic activity and even weather can follow long-term cycles, but suppose that it is a good approximation.) To compute an option price, we require annualized volatility,  $\sigma$ , which the option pricing formula transforms into volatility over the life of the option,  $\sigma \sqrt{T - t}$ . If you believe the uncertainty this July and next July is the same, the annualized volatility will be lower for next July since a given amount of uncertainty, when annualized, is spread across a greater period of time. If  $\sigma \sqrt{T_i - t}$  is the same for two different  $T_{i}$ s, the  $\sigma$ s will be different and the volatility curve will decline with horizon.

### Research and Development

Research and development is a capital expenditure like any other, in that it involves paying R&D costs today to receive cash flows later. If R&D is successful, a project using the new technology can be undertaken if its NPV is positive. This final option is a call option, just like the other projects we have analyzed. The R&D leading up to this project is therefore like an option premium: We pay R&D costs to acquire the project. R&D can be thought of as acquiring future investment options.

Drug development by pharmaceutical firms provides a particularly clear example of the options in R&D, since the drug development process has clearly delineated points at which there is a decision to abandon or continue development. Figure 5, based on a description in Schwartz and Moon (2000), summarizes the process, along with the probabilities of progressing from one stage to the next. In practice, stages sometimes run together, but Figure 5 reflects a standard description of the process.

As R&D costs are paid over time, pharmaceutical firms are able to resolve uncertainties about their technical ability to produce and market the product. Specifically, they answer the questions: Will the project work, and, if it works, will anyone want it? At all

# FIGURE 5

The development process for a new drug. Probabilities are the percentage of pharmaceutical drugs proceeding from one stage to the next. For example,  $74\%$  of drugs submitted for FDA approval receive it.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/9c485348563739890db33022f5b59430c26c784a071cb76641923c91327e64f1.jpg) times, project managers have the option to continue or stop the research. In effect, each ongoing investment purchases an option to continue development.


Figure 5 shows that most potential drugs are abandoned before Phase I trials. As with peak-load electricity generation, value arises from what is not done. A pharmaceutical company that pursued all potential drugs, no matter how unpromising, would reap full rewards from successful drugs but would be bankrupted by the unsuccessful drugs. The put option to abandon a drug is what creates value for the firm.

How do we evaluate pharmaceutical investments? The underlying asset is the value of the drug if brought to market. How do we find the value of this asset? With the peak-load electricity plant, we have forward prices for both the input (natural gas) and the output (electricity). We can estimate volatilities from market prices. However, in pharmaceuticals, we must estimate development costs, potential revenues, volatilities, and correlations without the benefit of observing market prices. Project payoffs will vary with the state of the economy and, hence, have systematic risk, which must also be estimated.

Assuming that all of these inputs are known, we can evaluate the sequential investment as in Figure 6. The figure presents an example in which, in each period, it is necessary to

# FIGURE 6

An example of staged investment. The value of the project, if developed, is in the top line at each node. The value of the option to develop the project is shown below the value of the project. In each year, it is necessary to pay the amount in the Investment row to keep the project alive in the next period. The tree is generated as a forward tree assuming  S_0 = \100 ,  \sigma = 0.50 ,  r = 0.10 , and  \delta = 0.15 .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/d787537155a19e8285796b8adf7f9b752b71ebae35bdf1747532f66187b985a8.jpg) pay an investment cost (shown in the "investment" row) to keep the project alive for another period. The static NPV of the project is negative, since the initial value of the developed investment is  \$100, but the present value of the investment costs at a 10\%$  rate of interest is 108.60. This static calculation ignores the staging of the investment, which permits making later-year investment costs only if the project shows promise. With staging, the value of the development option is 2.812. Schwartz and Moon (2000), building on work by Pindyck (1993a), developed a general valuation model, with staging, which is applicable to pharmaceutical R&D.


Peak-load pricing and research and development are examples of how option techniques are used in making investment decisions. In the next two sections we develop an extended example of commodity extraction, which is yet another area in which real option considerations are essential.

### 4. COMMODITY EXTRACTION AS AN OPTION

Natural resources investments are an important application of option techniques to investment decisions. $^{14}$  The extraction of a resource from the ground exhibits many similarities to the exercise of a financial option. The resource has a value that can be realized by paying an extraction cost. The market for the resource is typically competitive so that the behavior of one producer does not affect the price.

In this section we will consider the problem of extracting oil from the ground. There is an initial cost to sink a well to commence production, after which we assume we keep producing forever.

Our goal in studying the oil extraction problem will be to understand the economics of this problem. The analysis is an example illustrating the costs and benefits of deferring investment and stopping and starting production. The specific formulas do not apply in every situation.

### Single-Barrel Extraction under Certainty

Suppose there is a plot of land that contains one barrel of oil. The current price of a barrel of oil is  $15, the oil forward curve is such that the effective annual lease rate, \delta , is 4\% (constant over time and across maturities at a point in time), and the effective annual risk-free rate, r,$  is  $5 \%$  (also constant over time). There is no uncertainty about the future price of oil. The barrel can be extracted at any time by paying 13.60, which we denote  $X.$  Finally, to make matters simple, suppose that the land is completely worthless once the oil is extracted.

If the price of oil at time 0 is  $S_{t}$ , the time 0 forward price for delivery at time  $T$  is given by

$$

F _ {0, T} = S _ {0} \left(\frac {1 + r}{1 + \delta}\right) ^ {T} \tag {5}

$$

Since prices are certain, the future spot price will equal the forward price; hence, the spot price of oil will grow forever at the rate  $(1 + r) / (1 + \delta) - 1 = 1.05 / 1.04 - 1 = 0.9615\%$  per year.

How much would you pay for this plot of land? The obvious answer—a bid of $1.40 (= $15 - \$13.60)—ignores the possibility of delaying investment. As with the widget project, you cannot value the land without first deciding under what circumstances you will extract oil from the ground. A bid of \$1.40 is too low. The correct answer is to select T to maximize the present value of net extraction revenue,

$$

\frac {S _ {T} - X}{(1 + r) ^ {T}} \tag {6}

$$

Using equation (3) to model the change in the oil price over time, we can mechanically find the  $T$  that maximizes expression (6). However, we want to discuss the reasons for delaying investment.

Optimal Extraction. The costs and benefits of extraction are probably familiar by now. If we delay extraction, the barrel of oil in the ground appreciates at  $0.9615\%$  per year, less than the risk-free rate. We lose  $4\%$  per year—the lease rate—on the value of the barrel. However, extracting the barrel costs 13.60. By delaying extraction 1 year we earn another year's interest on this amount.

Thinking about costs and benefits in this way suggests a simple decision rule, familiar from the widget project: Delay extraction as long as the cost exceeds the benefit. The benefit in this case is constant from year to year since the extraction cost is constant, but the cost of delaying extraction—the forgone dollar lease payment—grows with the oil price.

This line of thinking leads to a back-of-the-envelope extraction rule. Since the interest rate (5\%) is 25\% greater than the dividend yield (4\%), the dividend yield lost by not investing will equal the interest saved when  S = 1.25 \times \13.60 = \$17 . Thus, we should expect it to be optimal to extract the oil when  S \approx \$17 .

A more precise calculation is to compare the NPV of investing today with that of investing tomorrow. At a minimum, if we are to invest, we must decide that the NPV of investing today exceeds that of waiting until tomorrow to invest. If we let  $r_d$  and  $\delta_d$  represent the daily interest rate and lease rate, then we defer investing as long as the present value of producing tomorrow exceeds the value of producing today. Since tomorrow's oil price is today's oil price times  $(1 + r_d) / (1 + \delta_d)$ , we delay investing as long as

$$

\frac {1}{1 + r _ {d}} \left(S \frac {1 + r _ {d}}{1 + \delta_ {d}} - X\right) > S - X

$$

This expression shows that we defer investment as long as

$$

\frac {S}{X} <   \frac {\frac {r _ {d}}{1 + r _ {d}}}{\frac {\delta_ {d}}{1 + \delta_ {d}}} \tag {7}

$$

In this case we have  $r_d = 1.05^{1/365} - 1 = 0.013368\%$ , with the daily lease rate  $\delta_d = 0.010746\%$ . The trigger price, at which  $S = X \frac{r_d}{\delta_d} \left( \frac{1 + \delta_d}{1 + r_d} \right)$ , is 16.918.

Note that, since daily rates are essentially the same as continuously compounded rates, we get the same answer by using continuous compounding. We invest when

$$

S _ {t} = \frac {\ln (1 . 0 5)}{\ln (1 . 0 4)} \times \$ 1 3. 6 0 = \$ 1 6. 9 1 8

$$

This shows why our back-of-the-envelope answer of 17 is not exactly right. Instead of computing the ratio of effective annual rates (5\%/4\%), we want to compute the ratio of continuously compounded rates \left(\ln(1.05) / \ln(1.04)\right).

Value and Appreciation of the Land. We know that we will extract when oil reaches a price of 16.918/barrel. How long will this take? The annual growth rate of the price of oil is 1.05/1.04 - 1 = 0.9615\%. We have to find the t such that \mathbb{S}15\times (1.009615)^{t} = \mathbb{S}16.918. Solving gives us t = 12.575 years. At that point the value of extraction will be \$16.918 - 13.60. Hence, NPV today is

$$

\frac {\mathbb {S} 1 6 . 9 1 8 - \mathbb {S} 1 3 . 6 0}{1 . 0 5 ^ {1 2 . 5 7 5}} = \mathbb {S} 1. 7 9 6

$$

This is what we would pay for the land today. This substantially exceeds the value of 1.40 were we to extract the oil immediately.

At what rate does the land appreciate? The oil in the land is appreciating at  $0.9615\%$  per year; nevertheless, the land itself appreciates at  $5\%$ . If the land appreciated at less than  $5\%$ , no one would be willing to own it since bonds would earn a higher return. In fact, our valuation procedure ensures that the land earns  $5\%$  since that is the rate at which we discount the future payoff. The properly operated oil reserve, whether producing or not, must at all times pay the owner a fair return (in this case,  $5\%$ ).

Using the Option Pricing Formula. This problem is equivalent to deciding when to exercise a call option. By paying the extraction cost (the strike price), we can receive oil (the stock). As with a financial call, early exercise is a trade-off between interest saved by delaying exercise and dividends forgone. Once we have possession of the oil, we can lease it; hence, oil's lease rate is the dividend yield. We can verify our answers by using the formula for a perpetual call option, CallPerpetual. Set  $S = \15$ ,  $K = \$ 13.60 ,  $\sigma = 0.0001$ ,  $r = \ln(1.05)$ , and  $\delta = \ln(1.04)$ . We get

CallPerpetual($15, $13.60, 0.0001, ln(1.05), ln(1.04)) = { $1.796, $16.918}

The option price is  \$1.796 and the optimal decision is to exercise when the oil price reaches\$ 16.918, exactly the answer we just obtained. The option formula implicitly makes the same calculations.

Like the widget example, this situation illustrates the similarity between the exercise of a financial and a real option.

Changing Extraction Costs. What if the cost of extraction,  $X$ , changes over time? Inflation might cause  $X$  to grow, while technological progress might cause  $X$  to decline. Intuitively, real growth in the extraction cost will accelerate investment. The reason is that the benefit from delaying investment is less: We earn interest on money set aside to fund extraction, but some of that money has to be reinvested to fund the growth in extraction cost. Thus, if  $g$  is the growth rate of the extraction cost, our benefit from delay is  $r - g$  instead of  $r$ .

If we view the option to extract oil as a general option to exchange one asset (cash) for another (oil), our willingness to make the exchange depends on the relative dividend yields of the two assets. The option is equivalent to being long the underlying asset without receiving its dividend, and short the strike asset without having to pay its dividend. A high dividend yield on the asset we are giving up (the strike asset) makes us less willing to make the exchange, other things equal. Positive growth in the extraction cost reduces the dividend yield on the asset we are giving up, making us more anxious to give it up; hence, there is a lower trigger price.


In the example, if the growth rate of the extraction cost is  $0.5\%$  per annum (effective annual), then we would invest when, using continuously compounded rates,

$$

S = \frac {r - g}{\delta} X = \frac {0 . 0 4 8 7 9 - 0 . 0 0 4 9 8}{0 . 0 3 9 2 2} \\ \mathbb {S} 1 3. 6 0 = \mathbb {S} 1 5. 1 9

$$

It will take 1.32 years to reach this price, and the land would therefore be worth

$$

\left(\mathbb {S} 1 5. 1 9 - \mathbb {S} 1 3. 6 0 \times (1. 0 0 5) ^ {1. 3 2}\right) / 1. 0 5 ^ {1. 3 2} = \mathbb {S} 1. 4 0 7

$$

Growth in the extraction cost hastens extraction and lowers the value of the property.

Gold Extraction. We can see that if the lease rate of gold were zero, it would never be optimal to mine gold.[16] If a commodity has a zero lease rate, then the cost of delaying extraction is zero: It is always preferable to wait to extract.

To see why a zero lease rate implies that we would never extract gold, think about the comparison we just made between extracting oil today or tomorrow. If oil had a zero lease rate, then by definition the forward curve would be growing at the risk-free rate. The present value of oil tomorrow would be the value of oil today; nothing is lost by leaving it in the ground. The gain to deferral, however, would be interest saved on the extraction cost. Thus there would have been no reason ever to extract the oil. In effect, oil in the ground is worth as much as oil out of the ground, so why pay the extraction cost? Equation (7) and the option pricing formula give the same answer, with the extraction barrier approaching infinity as the lease rate approaches zero. Thus, gold, or any extractive resource, will never be extracted if the lease rate is zero.

This discussion provides an answer to the question of why gold has a positive lease rate. Investors hold a large stock of gold above ground despite the positive lease rate. The lease rate must therefore reflect a convenience yield earned by gold investors. This convenience yield is reflected in the forward curve as a positive lease rate. The positive lease rate in turn makes producers willing to extract new gold.

### Single-Barrel Extraction under Uncertainty

Now we consider the effects of uncertainty on the oil extraction decision. Before proceeding, try to answer this question: If we keep all variables unchanged (the lease rate, extraction cost, and so forth), except that the oil price is uncertain, how do the extraction trigger price and the value of the undeveloped land change?

Option reasoning gives unambiguous answers to this question: The extraction trigger price goes up and the land becomes more valuable. The comparison of dividends (the lease rate) to interest savings in the previous example captures two of the three reasons for early exercise. The third is insurance that results from the ability to delay taking the project. With uncertainty the insurance has value, which increases the value of delay. The forgone dividend has to be greater before it is worth giving up the implicit insurance. Another way to think about the investment decision is that by deferring extraction of the oil, we have more time to see if the oil price will decline or rise further. This effect induces additional delay, in the sense that we will optimally invest at a higher price.


If we decide to extract the oil when the price is  $\overline{S}$ , we will receive  $\overline{S} - X$  when  $S$  reaches  $\overline{S}$ . Using the equation

$$

\text {V a l u e o f} \S 1 \text {r e c e i v e d w h e n} S \text {f i r s t r e a c h e s} H \text {f r o m b e l o w} = \left(\frac {S _ {0}}{H}\right) ^ {h _ {1}},

$$ the value of the extraction option is


$$

(\bar {S} - \$ 13. 6 0) \left(\frac {S}{\bar {S}}\right) ^ {h _ {1}}

$$ where


$$ h _ {1} = \frac {1}{2} - \frac {r - \delta}{\sigma^ {2}} + \sqrt {\left(\frac {r - \delta}{\sigma^ {2}} - \frac {1}{2}\right) ^ {2} + \frac {2 r}{\sigma^ {2}}}
$$

This is the present value of our investment strategy.

By varying  \overline{S} , we can see how the present value of the project is affected by different extraction trigger prices. Figure 7 compares the value of the land under different rules about when to pay 13.60 and extract the oil. When oil price volatility is 15\%, the trigger price is higher and the land is more valuable. The trigger price that maximizes the value of the land is  \overline{S} = 25.3388 . At this price, we have a project value of

$$
(\bar{S} - \$13.60) \left(\frac{S_0}{\bar{S}}\right)^{h_1} = \$3.7856
$$

# FIGURE 7

Value of land containing one barrel of oil as a function of the trigger extraction price,  $\overline{S}$ , for four different oil volatilities. For the curve where  $\sigma = 0.00001$ , the maximum is attained at  $\overline{S} = \16.918$  with a corresponding value of  $\$ 1.796 . For the curve where  $\sigma = 0.15$ , the maximum is attained at  $\overline{S} = \25.3388$  with a corresponding value of  $\$ 3.786 .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/d0d302e3776a3a4ec269828a52cf8286e1a07dd8d0da30d98b0a4bc25fb829b6.jpg)

We can verify this calculation by exploiting the insight that for option pricing purposes the lease rate is the dividend yield, and use the perpetual call formula:

$$
\text{Call Perpetual} [\$15, \$13.60, 0.15, \ln(1.05), \ln(1.04)] = \{\$3.7856, \$25.3388\}
$$

The perpetual call calculation also gives \overline{S} = \25.3388 as the price at which exercise should occur.

### Valuing an Infinite Oil Reserve

Now suppose that the land contains an infinite number of barrels of oil that can be extracted at the rate of one barrel per year. We will assume that the firm can at any time invest  $I$  in order to turn the undeveloped reserve into a developed reserve. Exactly 1 year after that, the reserve will begin to produce one barrel of oil a year forever at a cost  $c$  per barrel. We solve this problem by working backward. We first compute the value of the firm supposing that it is already producing, and we then study the decision about when to invest.

**Valuing the Producing Firm.** Once the firm has invested, it will continue producing forever since the price of oil is always rising. The lease rate is the discount rate linking the future commodity price with the current commodity price. Thus, the time  $t$  value of a barrel received at time  $T$  is  $\mathrm{PV}_t(F_{t,T}) = F_{t,T} / (1 + r)^{T - t} = S_t / (1 + \delta)^{T - t}$ . The value of the producing firm at time 0 is therefore

$$
h_1 = \frac{1}{2} - \frac{r - \delta}{\sigma^2} + \sqrt{\left(\frac{r - \delta}{\sigma^2} - \frac{1}{2}\right)^2 + \frac{2r}{\sigma^2}}
$$

You might wonder why the present value of a barrel of oil a year forever is  $S_0 / \delta$ . We know that a perpetual-coupon bond paying  $c$  /year is worth  $c / r$  (the second term on the right in equation (8)). The lease rate on a commodity bond is analogous to the interest rate on a cash bond. The operating well is like a bond paying one unit of the commodity forever, so the lease rate  $\delta$  is the appropriate discount rate for a bond denominated in a commodity, and  $S_0 / \delta$  is the value of the well.

Valuing the Option to Invest. If the firm invests at the price  $S_{T}$ , the value of the land at that time is the value of the producing well less the investment cost,  $I$ , or  $S_{T} / \delta - c / r - I$ . The value of the land today is

$$
\frac{1}{(1 + r)^T} \left(\frac{S_T}{\delta} - \frac{c}{r} - I\right) = \frac{1}{(1 + r)^T} \frac{1}{\delta} \left(S_T - \delta \left[ \frac{c}{r} + I \right]\right)
$$

This is the value of the undeveloped oil reserve. Note the similarity with equation (6). If in equation (6) we replace  $S_{T}$  with the present value of oil extracted,  $S_{T} / \delta$ , and replace the extraction cost,  $X$ , with the present value of all extraction costs,  $c / r + I$ , then we have a problem that appears the same as in the single-barrel case. We want to select  $T$  to maximize equation (9). The right-hand side of equation (9) expresses the value on a per-barrel basis, times  $1 / \delta$ . Having multiple barrels in the ground does not change anything fundamental about the problem if there is certainty and the oil price grows indefinitely.

Example 3. Suppose  S_0 = \15, r = 5\% ,  \delta = 4\% ,  c = \8 , and the value of the producing well is  \15 / 0.04 - \8 / 0.05 = \215 . If the investment cost,  I , is  \180 , then the per-barrel extraction cost is  \delta (c / r + I) = 0.04 \times (\$8 / 0.05 + \$180) = \$13.60 . The problem is the same as having  1 / \delta  options to extract at a cost of  \13.60 ; hence, the solution is exactly the same as in the single-barrel case. To appreciate the similarity, use the option pricing formula:

$$
\text{Call Perpetual} \left[ \frac{\$15}{0.04}, \frac{\$8}{0.05} + 180, 0.000001, \ln(1.05), \ln(1.04) \right] = \{\$44.914, \$422.956\}
$$

The value of the well at which extraction occurs is  $422.956. Thus, extraction occurs when S = 0.04 \times$ 422.956 = 16.918.

With uncertainty, we could have the ability to shut a producing well. We will assume for the moment that production continues forever. In that case, the problem is the same as in the single-barrel case.

Example 4. Make the same assumptions as in Example 3, except suppose that the price of oil is lognormally distributed with a constant lease rate and volatility is  $\sigma = 0.15$ . The land value and optimal extraction decision is given by

$$
\text{Call Perpetual} \left[ \frac{\$15}{0.04}, \frac{\$8}{0.05} + \$180, 0.15, \ln(1.05), \ln(1.04) \right] = \{\$94.639, \$633.469\}
$$

The well is worth 94.639 and we invest when it is worth S / 0.04 = \633.469, or when S = \25.3388. . On a per-barrel basis, the well is worth 0.04 \times \94.639 = \3.7856. With these assumptions, the solution is the same as in the single-barrel case.

In the absence of any shutdown options, the singleand infinite-barrel cases differ only in scale. The interesting difference arises when it is possible to avoid operating losses by shutting down, which matters only in the multiple-barrel case.

## 5. COMMODITY EXTRACTION WITH SHUTDOWN AND RESTART OPTIONS

With production occurring over time and uncertainty about the price of oil, we face two new operating decisions: whether to keep the well operating, or, if it has been shut down, whether to reopen it. There are thus three stages of production:

Initial investment in the well. We begin with an empty field containing oil. This is an undeveloped well. At what point do we drill the well and begin extraction? We answered this question in Section 4, assuming that the well operates until the resource is exhausted.

Continuing to produce. Once we have made the investment in an oil well, we say that the property is developed. However, a developed well may or may not be producing. If we are extracting oil from the ground, we have a developed and producing well. However, if the oil price drops below extraction cost, it may make sense to pay a cost in order to shut down the well and avoid future operating losses. Then it is a shutdown well.

# FIGURE 8

Investment and operating decisions for an oil well. Initial investment occurs when the oil price crosses the investment trigger price,  $\overline{S}$ , at point A. Shutdown of production occurs when the price falls to the shutdown trigger,  $S_{*}$  (point B). Production is restarted at the restart trigger,  $S^{*}$ , at point C.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/a311b89f8f46f6741611a71bb5b3c92494219cb1d82b92df04df53ffbd9a1bd5.jpg)

Oil Price ($)

Time

Restarting an operating well. Having shut down the well, if the oil price rises again, it may be possible to pay a cost and restart the well, turning it back into a producing well.

Thus, the well can be in one of three states: undeveloped, producing, and shutdown (developed but not producing). Figure 8 shows a hypothetical price path of oil over time and possible operating rules. Investment occurs the first time the oil price reaches the investment trigger price,  $\overline{S}$ . Production is shut down at the shutdown trigger price,  $S_{*}$ , and restarted at the restart trigger price,  $S^{*}$ . Thus, before point A the well is undeveloped. Between points A and B, and after C, the well is producing. Between B and C the well is shutdown. Key questions are: How do we determine the investment, shutdown, and restart triggers,  $\overline{S}$ ,  $S_{*}$ , and  $S^{*}$ , and what is the value of the land on which the oil is located?

Once again, we have to work backward, as in the binomial valuation of a stock option. Before we can decide the rule for investing (determining  $\overline{S}$ ), we have to determine the value of a producing well (this is the present value of future cash flows at the point we invest). In order to value a producing well, we need to understand operating decisions, specifically how  $S_{*}$  and  $S^{*}$  are determined.

It is helpful to analyze shutting down and restarting by considering three separate cases:

1. Production can be shut down once permanently. After the well has been shut, the land has no additional value.
2. Production can be shut down once, then restarted once, this time permanently.
3. Production can be shut down and restarted an infinite number of times.[17]

Each case layers a new option on the previous case. In addition to allowing additional shutting down and restarting, we can impose costs of doing so. We focus in this section on the case where the well can be shut down never or once after the initial investment. Appendix B adds restarting to the analysis.

### Permanent Shutting Down

Suppose that we are operating the well. If the current price is  $S$  and we ignore shutting down, the value of the operating well is simply

$$
V_{\text{operating, no shutdown}} = \frac{S}{\delta} - \frac{c}{r}
$$

Suppose that we can at any time pay a cost of  $k_{s}$ , abandon the well, and never produce again.  $S_{*}$  is the price at which we shut down.

What is the value of shutting down? There are three considerations:

1. Once we shut down, we no longer sell oil. Thus, we give up the revenue stream with present value  $S / \delta$ .
2. We no longer pay the extraction cost, so we gain the present value  $c / r$ .
3. We give up  $k_{s}$ , the shutdown cost.

Thus, the value of shutting down at price  $S_{*}$  at a cost of  $k_{s}$  is

$$
\sum_{i=1}^{\infty} \frac{F_{0,i} - c}{(1 + r)^i} = \sum_{i=1}^{\infty} \left(\frac{S_0}{(1 + \delta)^i} - \frac{c}{(1 + r)^i}\right) = \frac{S_0}{\delta} - \frac{c}{r}
$$

This is the payoff to a put option with strike price  $c / r - k_s$  and asset price  $S_*/\delta$ . If we are operating and the price is  $S$ , we can value this put to determine the value of the option to shut down, as well as the trigger price,  $S_*$ , for shutting down.

Example 5. Suppose the oil well is operating and the oil price is  S = \10 . We also have  c = \8, \sigma = 0.15 , and effective annual  r  and  \delta  are  5\%  and  4\% , respectively. If  k_{s} = \0 , the value of the option to shut down is

$$
\text{Put Perpetual} [\$10/0.04, \$8/0.05, 0.15, \ln(1.05), \ln(1.04)] = \{\$9.633, \$106.830\}
$$

Thus, we shut down production when S/δ = \$106.83 or when S = 0.04 × \$106.83 = 4.273. At this point, the present value of continuing to produce is

$$
V - I_{0} - I_{1}/(1 + r) = 93.694 - \$10 - \$95/1.06
$$

By shutting down production, we avoid losses of 53.17.

When $k_s = $25, the shutdown solution is

PutPerpetual(10/0.04, 8/0.05 - 25, 0.15, 0.04879, 0.03922) = {\5.778,\90.137}

The shutdown trigger is then  $S = 0.04 \times \$ 90.137 = \ $3.605$ . We pay \ $25 to avoid losses with a present value of -\$ 69.863.

To interpret the shutdown results, there are two natural benchmark prices to consider. The first is the price at which the NPV of the operating will become zero, which occurs when  S = \delta \times c / r = \6.40 . The second is the price equal to the marginal cost of production,  c = \$8 . If  S > \$8 , then we are making money by operating and we will not shut down. If  \$8 > S > \$6.40 , then we are losing money on an operating basis but the NPV of operating the well is positive. In this case we would consider shutting down if we could later restart production, but, because the NPV of operation is positive, we would not shut the well if the shutdown were permanent. Finally, if  S < \$6.40 , it may make sense to shut the well even if the shutdown were permanent. Note that in all cases, the initial investment is sunk and therefore irrelevant.

In Example 5, shutdown is permanent so the zero NPV price (S = \6.40)6.40) is the natural benchmark. The usual option exercise logic applies: We won't shut down as soon as present value is negative, because the decision is irreversible. In fact, we wait until the price is below \5. The price might subsequently increase; by shutting down we are unable to benefit from this reversal. This is the counterpart to not investing as soon as NPV is positive.

The value of the producing well. Given that shutdown is possible, what is the value of a producing well? The answer is that the value of the well is the value of the perpetually producing well plus the value of the shutdown option:

$$
V_{\text{operating}}(S) = V_{\text{no shutdown}}(S) + V_{\text{shutdown option}}(S)
$$

Figure 9 graphs equation (12) for a range of oil prices and four different volatilities, along with the value of the well without a shutdown option. Without the shutdown option, the value of the well is like a stock and declines to  $-c / r = -\$ 160$  when  $S = 0$ . With the option, the well is worth zero once it is shut. (Recall that once the well has been shut, the land has no additional value.)

When the oil price is significantly above the shutdown price, the shutdown option is worth little and the value of the well changes by  $1 / \delta$  for each \$1 change in the oil price. (The  $\Delta$  of the well is  $1 / \delta$ .) Close to the shutdown price, however, the value of the well becomes less sensitive to the oil price, because the shutdown option is increasing in value to absorb the effect of declines in the oil price. In each case, the value of the well smoothly approaches zero as we approach the shutdown price.

This example illustrates how the shutdown option affects valuation of an operating well. The next question is how the shutdown option affects the decision to invest in the well in the first place.

# FIGURE 9

Value of a producing well that can never be shut down (equation (8)), and that can be shut once with no shutdown cost (equation (12)). The shutdown triggers for the different volatilities are  $6.40 (\sigma = 0.00001),$ 5.01 ( $\sigma = 0.10$ ),  $4.27 (\sigma = 0.15)$ , and $2.68 ( $\sigma = 0.30\$ ).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/6ecadb9573e330a27a9f1759a64240cf920f123df5b4ed77e04dd8fc2c09e10b.jpg)

### Investing When Shutdown Is Possible

How does the ability to shut the well affect the initial investment decision? Once we drill the well, the maximum potential loss is less because of the shutdown option. The ability to shut down makes us willing to invest sooner.

To account for the value of the shutdown option we work backward. Equation (12) gives the value of a producing well. Call this  $V_{p}(S)$ . If we invest at the price  $\bar{S}$ , paying an investment cost of  $I$ , then the value at the time we invest is

Value of well at time of investment  $= V_{p}(\overline{S}) - I$

$$
= \frac{\bar{S}}{\delta} - \frac{c}{r} + \text{Put Perpetual} \left[ \frac{\bar{S}}{\delta}, \frac{c}{r} - k_s, \sigma, \ln(1 + r), \ln(1 + \delta) \right] - I
$$

To solve for  $\overline{S}$ , we need to find the present value of equation (13), and then choose  $\overline{S}$  to maximize this present value. For a given  $\overline{S}$ , equation (13) tells us the value of investing when  $S = \overline{S}$ . If the oil price today is  $S < \overline{S}$ , we can compute the present value of equation (13) using equation (14). The value will depend upon the current oil price (the lower the price, the longer it will take to hit  $\overline{S}$ ), so we denote it as  $V_{\mathrm{Invest}}(S; \overline{S})$ . This present value is

$$
V_{\text{invest}}(S; \bar{S}) = \left(\frac{S}{\bar{S}}\right)^{h_1} \times \left(\frac{\bar{S}}{\delta} - \frac{c}{r} + \text{Put Perpetual} \left[ \frac{\bar{S}}{\delta}, \frac{c}{r} - k_s, \sigma, \ln(1 + r), \ln(1 + \delta) \right] - I\right)
$$

Equation (14) can be maximized with respect to  $\overline{S}$  using a spreadsheet or other numerical program.

Example 6. Suppose δ = 0.04, r = 0.05, σ = 0.15, c = $8, k_s = $0, and I = \$180. If the current oil price, S, is \$15, then the value of S that maximizes equation (14) is \$25.12, and the value of the undeveloped well is V_invest($15, $25.12) = $95.13. If k_s = $25, then S = \$25.21 and the value of the undeveloped well is 94.93.

If we increase the current oil price to S = \$20, then the value of the undeveloped well increases to \$177.01 when k_s = \$0 and \$176.64 when k_s = \$25. S is the same as when S = \$15.

This example illustrates some key points. First, as discussed earlier, the ability to shut down reduces the investment trigger, from \$25.34 with no shutting down, to \$25.12 with shutting down. Second, if there is a cost of shutting down, shutting down occurs at a lower price and provides less protection. This mitigates the benefit of shutting down, raising the shutdown trigger to \$25.21. Finally, a point that may be obvious but is important to understand: The investment trigger implied by maximizing equation (14) is independent of S, the current oil price. To see why, suppose that S = $25. If S = $15, it must pass \$20 before reaching \$25. Thus, if we evaluate the option when S = \$20, we must obtain the same S as when S = 15. Thus, S is independent of S.

### Restarting Production

The preceding example assumed that the firm could never restart once it had shut down. In this section we examine the restart strategy if the firm could restart after it permanently had shut down.

Suppose the firm can pay  $k_{r}$  to restart production. The ability to restart is a call option in which the firm receives  $S / \delta$  by paying  $c / r + k_{r}$ , future production costs plus the restart cost.

Example 7. The value of a shutdown well is

$$
\text{Call Perpetual} \left[ \frac{S}{\delta}, \frac{c}{r} + k_r, \sigma, \log(1 + r), \log(1 + \delta) \right]
$$

Assuming that  $S = \$ 10, \delta = 0.04, r = 0.05, \sigma = 0.15, c = \$8, and k_r = \$0, the option pricing formula gives us the value of the well as \$94.46, and \$11.92 as the price at which to restart.

The ability to restart affects the decision to shut down. When we shut down, we not only cut off future losses but we also acquire a call option to restart. In equation (14) we acquired a put option when we invested, so in this case we acquire a call option when we exercise the put option! And when we invest in the first place, we acquire the put option to shut down, but the value of that put now implicitly contains the call option to restart. The solution for this problem appears in Appendix B.

Comparison of investment  $(\overline{S})$ , shutdown  $(S_{*})$ , and restart  $(S^{*})$  triggers under different assumptions.  $k_{s}$  is the cost of shutting down the well and  $k_{r}$  is the cost of restarting once it is shut. In all cases,  $r = 5\%$  and the lease rate is  $\delta = 4\%$ .

### TABLE I

| σ    | ks   | kr   | Shutdown | Restart | S      | S*    | S**   |
|------|------|------|----------|---------|--------|-------|-------|
| 0.0  | —    | —    | 0        | 0       | 16.92  | —     | —     |
| 0.15 | —    | —    | 0        | 0       | 25.34  | —     | —     |
| 0.15 | 0    | —    | 1        | 0       | 25.12  | 4.27  | —     |
| 0.15 | 25   | —    | 1        | 0       | 25.14  | 3.60  | —     |
| 0.15 | 0    | 0    | 1        | 1       | 25.00  | 6.03  | 11.92 |
| 0.15 | 25   | 25   | 1        | 1       | 25.17  | 4.33  | 13.79 |
| 0.15 | 25   | 25   | ∞        | ∞       | 25.17  | 4.37  | 13.18 |

## Additional Options

The firm might be able to restart and shut down production many times. We can determine triggers and solve for the value of the well by following the strategy in the previous sections. Details of the solution are in Appendix B.

Table 1 summarizes the price triggers for several different cases. The qualitative results are intuitive. As with any American option, we require that the oil well have positive NPV before we invest—we are reluctant to kill the put option implicit in the option to take the project. If shutting down in the future is possible, there is an additional put option available besides that from deferring investment, and we are willing to invest at a lower price. The addition of an option to restart once we have shut down makes us more willing to shut down, and, hence, more willing to invest. Adding costs to restarting and shutting down makes us more reluctant to restart, to shut down, and, hence, to invest initially. More options generally mean more value and investment at a lower price; greater costs mean lower value and investment at a higher price.

The results in Table 1 illustrate a phenomenon called hysteresis, which Dixit (1989, p. 622) defines as "the failure of an effect to reverse itself as the underlying cause is reversed." Suppose that all oil producers have a marginal extraction cost of  \$8. The current oil price is\$ 7, following a period in which it was 30, and there is a shutdown cost. Oil production is currently unprofitable, and we would not invest in new capacity at this price, but production from existing wells is not unprofitable enough to shut down production. We are in a situation where the cause (the oil price) reversed itself, but the effect (the creation of an oil well) did not. Oil producers lose money on an operating basis, but are not losing enough to shut down production.

Real-life investment decisions exhibit hysteresis. To illustrate hysteresis in a different context, Dixit (1989) considers investment decisions of a manufacturer with operations in a foreign country. Exchange rate fluctuations will change the profitability of the foreign investment. However, since investing and disinvesting are costly, it will be optimal to wait until the investment is sufficiently profitable before investing, and sufficiently unprofitable before disinvesting. What appear to be sluggish investment decisions may simply result from costs of undoing what has been done.

## CHAPTER SUMMARY

Real options is the analysis of investment decisions taking into account the ability to revise future operating decisions. Examples of real options include timing options (the ability to choose when to make an investment), shutdown options (the ability to stop production in order to avoid losses), sequential investments where the decision to make later investments depends on the outcome of earlier investments (common in R&D), and natural resource extraction. Investment decisions in which such options are present can be analyzed using pricing tools, such as the Black-Scholes model, perpetual options, binomial trees, and barrier present value calculations. In some cases the optimal decision is equivalent to the problem of when to exercise an American option. In general, however, as illustrated by the oil extraction problem, a simple option formulation is just a starting point for analysis.

Even when standard option pricing models are not directly applicable, understanding the economics of derivatives is helpful in understanding the economics of investment and operation decisions.

## FURTHER READING

Early papers that used techniques from financial options to analyze real assets include Brennan and Schwartz (1985) and McDonald and Siegel (1985, 1986). These papers study investment timing and the option to shut down and restart. Brennan (2000) insightfully summarizes the literature since then. There are several valuable books on real options, including Dixit and Pindyck (1994) and Trigeorgis (1996).

A number of papers have applied real options to understanding the real estate market. These include Titman (1985), Grenadier (1996), and Grenadier (1999).

Many firms use capital budgeting techniques more sophisticated than simple discounted cash flow. Triantis and Borison (2001) survey managers on their use of real options, identifying three categories of real options usage: as an analytical tool, as a language and framing device for investment problems, and as an organizational process. McDonald (2000) argues that the use of high hurdle rates in capital budgeting could be an approximate way to account for real options.

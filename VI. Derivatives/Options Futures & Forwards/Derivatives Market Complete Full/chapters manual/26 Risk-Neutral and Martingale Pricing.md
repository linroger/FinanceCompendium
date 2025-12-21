---
title: "Risk-Neutral and Martingale Pricing"
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:35:00 AM
formatter_model: claude-sonnet-4
cli_tool: claude-code
primary_tags:
  - risk neutral pricing
  - martingale pricing
  - change of measure
secondary_tags:
  - stochastic discount factor
  - portfolio selection
  - marginal utility
  - girsanov theorem
  - forward measure
  - black scholes formula
cssclasses: academia
---

# Risk-Neutral and Martingale Pricing

In this chapter we discuss the economic justification for risk-neutral pricing. In the process, we will learn about a different approach to pricing derivatives—namely, martingale pricing.

```d2
direction: right

portfolio_selection: Portfolio Selection Problem {
  shape: rectangle
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
  style.stroke-width: 2
}

stochastic_discount: Stochastic Discount Factor {
  shape: rectangle
  style.fill: "#f3e5f5"
  style.stroke: "#7b1fa2"
}

martingale_property: Martingale Property {
  shape: rectangle
  style.fill: "#e8f5e9"
  style.stroke: "#388e3c"
}

change_of_measure: Change of Measure {
  shape: rectangle
  style.fill: "#fff3e0"
  style.stroke: "#f57c00"
}

risk_neutral_pricing: Risk-Neutral Pricing {
  shape: rectangle
  style.fill: "#fce4ec"
  style.stroke: "#c2185b"
}

physical_measure: Physical Measure {
  shape: oval
  style.fill: "#fafafa"
  style.stroke: "#616161"
}

equivalent_martingale: Equivalent Martingale Measure {
  shape: oval
  style.fill: "#e0f2f1"
  style.stroke: "#00695c"
}

portfolio_selection -> stochastic_discount: Implies
stochastic_discount -> martingale_property: Requires
martingale_property -> change_of_measure: Enables
change_of_measure -> risk_neutral_pricing: Leads to

physical_measure -> equivalent_martingale: Transforms via marginal utility
equivalent_martingale -> risk_neutral_pricing: Foundation of
```

It is common to assume that the observed price of stock $i$ follows the process

$$
\frac{dS_{i}}{S_{i}} = (\alpha_{i} - \delta_{i})dt + \sigma_{i}d\tilde{Z}_{i} \tag{1}
$$ where $\alpha_{i}$ is the expected return on the stock and $\delta_{i}$ the dividend yield. For most stocks, $\alpha_{i} > r$: The risk premium is positive. When pricing derivatives, by contrast, we use the risk-neutral stock return process:

$$
\frac{dS_{i}}{S_{i}} = (r - \delta_{i})dt + \sigma_{i}dZ_{i} \tag{2}
$$

We assume that the stock follows this process and then value derivative claims by computing the expected derivative payoff using equation (2) and discounting this expected payoff at the risk-free rate.

The transformation from equation (1) to equation (2) is the main subject of this chapter. To obtain equation (2), we replace $\alpha_{i}$ in equation (1) with the risk-free rate $r$, and the diffusion $d\tilde{Z}_i$ with $dZ_{i}$. The justification for using equation (2) is far from obvious, but the effect is powerful. In many applications we simply assume that the asset follows (2) and we then proceed with pricing.

Given its importance, it is helpful to understand how equation (2) arises. The transformation from equation (1) to equation (2) has an economic interpretation, and there are related transformations that are useful in pricing particular derivatives, particularly in fixed income.

In order to understand the economic underpinnings of equation (2), we need first to understand how investors make portfolio decisions. All investors must decide how much to hold of each asset; this is called the portfolio selection problem. An investor selecting a portfolio must value each of the assets, assessing and discounting their future payoffs. This valuation provides the link between portfolio selection and risk-neutral valuation: The solution to the portfolio problem implies a valuation procedure that is central in financial economics, and that gives rise to risk-neutral valuation.

Prior to this point you might have wondered how to tell whether a derivative pricing model is legitimate. Can we write down equation (2) for any asset or financial quantity? The answer is that a pricing procedure is legitimate if it is consistent with the solution to the portfolio problem. This consistency takes a surprisingly simple form: An acceptable pricing model is one in which ratios of asset prices follow a martingale:

$$
\mathrm{E}_{t}^{*} \left(\frac{S_{1,T}}{S_{2,T}}\right) = \frac{S_{1,t}}{S_{2,t}} \quad t < T \tag{3}
$$

Here $S_{1,t}$ and $S_{2,t}$ are the prices of two non-dividend-paying assets that investors can own and $\mathrm{E}_t^*$ is computed with respect to a probability distribution under which the martingale condition, equation (3), is true. We will see that risk-neutral pricing arises when the denominator asset in equation (3) is an account that pays the short-term risk-free rate. Different assumptions about the numeraire are convenient in other contexts, such as pricing interest rate derivatives. You may find equation (3) puzzling at this point, but we will discuss it at greater length below.

The rest of the chapter provides an economic explanation of the martingale approach and examples of its use. A key part of the martingale approach to derivatives pricing is the concept of a change of measure, which means transforming the probability distribution of assets into a new probability distribution. In continuous time, this change of measure is achieved using Girsanov's theorem, which we briefly summarize. We then present specific examples of changes of measure, including the risk-neutral measure. Finally, we discuss Warren Buffett's critique of using the Black-Scholes formula to price long-term put options.

As you read the chapter, it is important to keep in mind that pricing a derivative, or any financial claim, amounts to asking how investors would value a particular risky cash flow. This chapter is meant to illuminate the link between investor portfolio decisions and derivatives pricing.

## I. Risk Aversion and Marginal Utility

All investors face two fundamental problems: first, whether to consume today or in the future (the savings/consumption decision) and second, which assets to hold in the savings portfolio (the portfolio selection problem). The two decisions are linked because the savings portfolio is a source of funds for future consumption.2 Portfolio selection is also tied to valuation because an investment decision requires assessing and discounting future payoffs.

The solution to the portfolio selection problem determines demand for an asset. At a point in time there is a given supply of assets, which are priced so that they are held willingly by investors. For each asset the risk premium (the difference between the expected return and the risk-free rate) is at the level necessary to equate asset demand and supply. In equilibrium, assets have a positive risk premium only for risks that cannot be eliminated by diversification. We assume in what follows that markets are complete, i.e., that all risks are tradeable, and that all investors are unconstrained in selecting their portfolios.

It is helpful to think of each possible economic outcome as a distinct event, which is called a state. Strictly speaking, every set of different outcomes is a distinct state. For example, the state in which the level of the S&P index is 1300 is different from the state in which it is 1301. We will use the term more generally to refer to economically distinct conditions, for example referring to "good states" (in which investors are well off) and "bad states" (in which investors are not well off). The price of stock  $i$  in state  $j$  at time  $t$  is  $S_{i}(t,j)$ .

The basic structure of the portfolio selection problem is as follows. At time  $t$  in state  $j$  investors must select an amount to consume,  $C(t, j)$ . Investors do not care about consumption per se; rather, they care about the utility of consumption: their perceived level of well-being due to consumption. Investors consume part of their wealth and invest the remainder. At a future time  $T$ , they consume again, saving what they do not consume, and so on. This can continue indefinitely. Each period, investors choose the level of consumption and the portfolio that maximizes their utility, taking into account the implications of their choice for future consumption.

Consumption of  $C(t)$  at time  $t$  produces utility of  $U[C(t), t]$ . Since utility is received at different times, it is necessary to express utility in terms of a common unit. We will implicitly assume that all utility is expressed in terms of time 0 utility. Looking forward from any time  $t$ , wealth at a future time  $T$  is a random variable, with the investor assigning probabilities to the different states that are possible. Because the future state is unknown, consumption at a future date is a random variable that we will denote  $\tilde{C}(T)$ . Thus, the present value of time  $T$  utility is  $\mathrm{E}_t[U[\tilde{C}(T), T]]$ . If consumption in state  $j$  is  $C(T, j)$ , this means that the investor has decided to consume  $C(T, j)$ , taking into account the amount of wealth they have at that time and the investment and consumption opportunities they face going forward.

We assume that investors have a utility function resembling that in Figure 1. The two important features of this utility function are that first, it is increasing (the investor prefers consuming more to less), and second, it is concave (utility increases at a decreasing rate). An investor with a utility function like that in Figure 1 is risk-averse. Such an investor will not accept a fair bet.

**FIGURE I**

A utility function that exhibits decreasing marginal utility. Marginal utility is high when consumption and utility are low; marginal utility is low when consumption and utility are high.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/afb7a19b7f5a1fd25c772b306214618df46269eb20179d0100e6d71ef2700967.jpg)
Utility  $U(C)$

A critical concept in the following discussion is that of marginal utility, which is the additional utility that an investor receives from a one-unit increase in  $C(t)$ . Mathematically, the marginal utility in state  $j$  is

$$

\frac {\partial U [ C (t , j) , t ]}{\partial C (t , j)} \equiv U ^ {\prime} [ C (t, j), t ]

$$

Where it does not cause confusion, we will abbreviate  $U^{\prime}[C(t,j),t]$  as  $U^{\prime}(t)$ .

The important idea in Figure 1 is that marginal utility is a measure of whether consumption is high or low, and thus whether investors are in a good state or a bad state. You can see in Figure 1 that the slope of the utility function decreases as the level of consumption is greater: Marginal utility is decreasing with the level of consumption. Risk-averse investors with high consumption (those at point B in Figure 1) assign less value to an additional dollar than when consumption is low (those at point A in Figure 1). Thus, investors at point A have low consumption and high marginal utility (this is the bad state), while investors at point B have high consumption and low marginal utility (this is the good state). The more you are able to consume, the less you value 1 of additional consumption.

## 2. The First-Order Condition for Portfolio Selection

Suppose that the investor allocates savings across $n$ assets: $n-1$ non-dividend-paying risky assets with prices $S_{i}(t)$ ($i = 1, \dots, n-1$) and a default-free money-market account, which always earns the currently prevailing short-term risk-free rate, $r(t)$. An investment of $B(t)$ in the money-market account at time $t$ will accumulate to $B(t)\exp\left[\int_t^T r(s)ds\right]$ at time $T$. If the interest rate is stochastic, $B(T)$ will be a random variable.


The statement of the investor's problem along with the solution is presented in Appendix A. The main result is given by equation (42). This equation must be satisfied by a utility-maximizing investor who can freely invest (either long or short) in all assets. We say that such an investor is "unconstrained" with respect to portfolio choices. The result is that for each asset $i$, we have

$$
\mathrm{E}_{t} \left[ U^{\prime}(T) \frac{S_{i}(T)}{S_{i}(t)} \right] = U^{\prime}(t) \tag{4}
$$

We have simplified the notation to let  $U'(T)$  denote the random variable  $U'[C(T, j), T]$ , when the state  $j$  is not known. The marginal utility  $U'(T)$  is a random variable from the perspective of time  $t$ . Equation (4) states that the expected product of the future marginal utility of consumption times one plus the realized return on asset  $i$  equals the marginal utility of consumption today. Note that at time  $t$ ,  $U'(T)$  and  $S_i(T)$  are both random variables, whereas  $U'(t)$  and  $S_i(t)$  are both known. The interpretation of equation (4) is that the investor is indifferent between consuming one unit less today ( $U'(t)$ ) and consuming an uncertain extra amount in the future. The expected marginal benefit from consuming in the future—the left-hand side of equation (4)—is the same for all assets, and is equal to  $U'(t)$ .

Equation (4) holds for an individual investor who has made an optimal portfolio decision. Without additional assumptions, the equation does not tell you what that optimum is and it does not tell you how much of each asset the investor holds. In addition, equation (4) has buried in it information about the investor's optimism concerning different assets (in the expectation) and about the investor-specific level of risk aversion (in the utility functions).

In equilibrium, asset prices will be such that the aggregate demand by investors for assets equals their supply. This equilibrium does not imply or require that investors agree about the prospects for all assets, and in general investors will not all hold the same portfolios. Instead, equilibrium means that, given their chosen portfolios and the market prices for assets, investors have no desire to change their position. An implication is that all investors will agree on asset prices; if they did not, investors with a high valuation would buy from investors with a low valuation.[6]

By moving $S_{i}(t)$ to the right-hand side of equation (4), we can also write the equation as

$$
\mathrm{E}_{t} \left[ \frac{U^{\prime}(T)}{U^{\prime}(t)} S_{i}(T) \right] = S_{i}(t) \tag{5}
$$

The marginal value in utility terms of an extra unit of asset  $i$  in state  $j$  is  $U'[C(T, j), T] \in S_i(T, j)$ . In equation (5), future cash flows are weighted by both marginal utility and probability. The ratio of the future uncertain marginal utility to the present known marginal utility,  $U'(T) / U'(t)$ , is called the stochastic discount factor. Equation (5) makes clear the reason for this terminology: The future stock price is discounted by the ratio of marginal utilities in order to determine the current stock price.


To interpret equation (5), recall that marginal utility,  $U^{\prime}(T)$ , is low in good times. Equation (5) will assign a low weight (low marginal utility) to stock prices that occur in good times and a high weight to stock prices that occur in bad times. Thus, if there are two stocks with the same expected future price, the stock that has higher prices in bad times will be worth today more than the stock that has high prices occurring in good times.

It is instructive to compare equation (5) with traditional discounted cash flow (DCF). With standard DCF, we compute an expected cash flow and discount it at a rate that appropriately adjusts for the risk of the asset. Thus, for a stock, we would write

$$

\frac {\mathrm {E} _ {t} \left[ S _ {i} (T) \right]}{1 + \mu_ {i}} = S _ {i} (t) \tag {6}

$$ where  $\mu_{i}$  is the specific discount factor for stock  $i$ . From examining equation (5), it is clear that  $\mu_{i}$  implicitly incorporates marginal utilities. (See equation (47) in Appendix A for an explicit expression for  $\mu_{i}$ .)

By contrast, if we let  $1 / (1 + \tilde{\mu}_j) = U'(C(T,j),T) / U'(t)$ , equation (5) can be written

$$
= \Pr \left[ z \leq \frac{\ln(S_t / K P_t(t,T)) - 0.5\sigma^2(T-t)}{\sigma\sqrt{T-t}} \right] = N(d_2) \tag{32}
$$

Here,  $\tilde{\mu}_j$  is a random variable, which is a rewritten version of the stochastic discount factor. The discount factor  $1 + \tilde{\mu}_j$  differs across states, changing with the level of consumption, but for a given state it is the same for every asset.

Thus, we can have either a set of asset-specific state-independent discount rates (traditional DCF, equation (6)), or we can have an asset-independent, state-dependent discount rate that correctly discounts all cash flows (the stochastic discount factor, equation (7)). In practice it is common to use DCF. However, understanding the stochastic discount factor approach is helpful in understanding both derivative pricing and DCF. When implemented correctly, the two approaches give the same present value.

## 3. Change of Measure and Change of Numeraire

In the preceding section we showed that there is a direct link between discounting and the solution to the portfolio selection problem, summarized by equation (4). Another way to write equation (4) is

$$
\mathrm{E}_{t} \left[ \frac{U^{\prime}(T)}{U^{\prime}(t)} \frac{S_{i}(T)}{S_{i}(t)} \right] = 1 \tag{8}
$$

In this section we show that equation (8) implies that marginal utilities can be used to redefine the probability distribution of future returns: We will create new probabilities by using marginal utility to reweight the original probabilities. The process of moving from one probability distribution to another is called a change of measure. When defining a change of measure, it is also typical to redefine the units in which a payoff is measured; this is called a change of numeraire. We begin by reviewing some results from probability theory and we then show the link to the portfolio selection problem.

#### Change of Measure

Suppose there is a discrete random variable with  $m$  possible outcomes. Denote the probability of the  $i$ th outcome as  $p_i$ . Probabilities are nonnegative and the sum over all possible outcomes is one. Thus, we have

$$ p _ {i} \geq 0 \quad i \in \{1 \dots m \} \quad \text {a n d} \quad \sum_ {i = 1} ^ {m} p _ {i} = 1
$$

If  $\operatorname{E}[\cdot]$  is the expectation operator for the process, and if  $\tilde{x}$  is a random variable that takes a defined value,  $x_{i}$ , over each of the  $m$  outcomes, we can write

$$
\operatorname {E} (\tilde {x}) = \sum_ {i = 1} ^ {m} p _ {i} x _ {i}
$$

Now suppose that  $\tilde{x}$  is a nonnegative random variable defined over the  $m$  events, such that

$$
d_2 = d_1 - \sigma\sqrt{T}
$$

Thus,  $x$  has a mean of 1. The key step is to define the new probability  $p_i^x$ :

$$ p _ {i} ^ {x} = x _ {i} p _ {i} \tag {10}
$$

We are using the random variable  $x$  to reweight the probabilities  $p_i$  to obtain new probabilities  $p_i^x$ . This is a change of measure: We are assigning new probabilities to states. The  $p_i^x$  are probabilities because  $p_i^x \geq 0$  ( $p_i$  and  $x_i$  are both nonnegative) and  $\sum_{i=1}^{m} p_i^x = 1$  (from equation (9)). Whether this new probability distribution is interesting or useful depends upon  $x_i$ , which determines how the probabilities are transformed. Whenever  $x_i > 1$ , we will have  $p_i^x > p_i$ . We can see this by rewriting (10)

$$ p _ {i} ^ {x} = p _ {i} + p _ {i} \times [ x _ {i} - 1 ] \tag {11}
$$

To summarize this discussion, a nonnegative random variable with a mean of 1 can be used to perform a change of measure. If you look back at equation (8), you can see why we are discussing this. The expectation operator in equation (8),  $\mathrm{E}_t$ , is taken with respect to the actual or physical probabilities of different returns on the stock. However, marginal utilities and asset prices are nonnegative, and the ratio in equation (8) has an expectation of 1. Thus, we can use the ratio  $U'(T)S_i(T) / U'(t)S_i(t)$  to construct a new probability distribution, i.e., a change of measure.

## The Martingale Property

From equation (5), the valuation equation for asset  $k$  is

$$
S _ {k} (t) = \mathrm {E} _ {t} \left[ \frac {U ^ {\prime} (T) S _ {k} (T)}{U ^ {\prime} (t)} \right]
$$

If there are  $m$  possible states and we explicitly write out the probabilities, we can rewrite the valuation equation for  $S_{k}(t)$  as

$$
S _ {k} (t) = \sum_ {j = 1} ^ {m} p _ {j} \frac {U ^ {\prime} [ C (T , j) , T ]}{U ^ {\prime} (t)} S _ {k} (T, j) \tag {12}
$$

We are now going to construct a new probability distribution using an arbitrary asset, which we will call asset number 1. We can multiply and divide the marginal utilities by  $S_{1}(T)$  and  $S_{1}(t)$ . (It's important to keep a careful watch on subscripts because we are valuing asset  $k$  using a probability distribution constructed using asset 1.) We obtain

$$
\frac {S _ {k} (t)}{S _ {1} (t)} = \sum_ {j = 1} ^ {m} p _ {j} \frac {U ^ {\prime} [ C (T , j) , T ] S _ {1} (T , j)}{U ^ {\prime} (t) S _ {1} (t)} \frac {S _ {k} (T , j)}{S _ {1} (T , j)} \tag {13}
$$

Note that we are measuring the payoff  $S_{k}(T,j)$  in terms of units of asset 1. This is a change of numeraire. We can also say that we use the price  $S_{1}(t)$  as a deflator. Now we perform a change of measure, where we define a new probability,  $p_j^{S_1}$ , obtained by weighting the physical probabilities by marginal utilities:

$$ p _ {j} ^ {S _ {1}} = p _ {j} \frac {U ^ {\prime} [ C (T , j) , t ] S _ {1} (T ; j)}{U ^ {\prime} (t) S _ {1} (t)} \tag {14}
$$

We can then write equation (13) as

$$
V(F_0,0) = F_0 N(d_1) - K N(d_2)
$$

Equation (15) is equivalent to the original valuation problem but embodies two changes. First, we measure the value and payoff in terms of units of asset 1; this is the change in numeraire. Second, the probabilities  $p_j^{S_1}$  define a new probability distribution; this is a change of measure.

How do probabilities change with a change of measure? From equation (11), the new measure has the effect of increasing the probability in those states where the product of marginal utility and the asset price is greater than average. If the numeraire asset is risk-free (for example, a default-free zero-coupon bond maturing at time  $T$ ), then probabilities are increased (relative to physical probabilities) when the state of the economy is bad, i.e., when marginal utilities are high, and reduced when the state of the economy is good.

We have been writing  $\mathrm{E}_t[\cdot ]$  to denote an expectation with respect to the original, physical measure. We can similarly write  $\mathrm{E}_t^{S_1}[\cdot ]$  to denote an expectation computed using the  $p_j^{S_1}$  defined in equation (14). We can then write the valuation equation for  $S_{k}(t)$  as

$$
V(S_0,0) = P_0(0,T) \frac{S_0}{P_0(0,T)} \exp\left( -\frac{1}{2}\sigma^2 T \right) \exp\left( \frac{1}{2}\sigma^2 T \right) N(d_1) = S_0 N(d_1) \tag{36}
$$

Equation (16) shows that, when using the probability measure induced by the numeraire— $S_{1}$  in this case—the asset price ratio  $S_{k}(t) / S_{1}(t)$  is a martingale. We could have selected any asset as numeraire. The fact that price ratios are martingales is an important observation, and we will see that it places strong restrictions on acceptable pricing models.

A change of measure can be used in performing a valuation. Suppose there is a random future cash flow  $\tilde{x}(T)$  with present value  $x(t)$ . We wish to compute  $x(t)$ . From equation (4) we have

$$ x (t) = \mathrm {E} _ {t} \left[ \frac {\tilde {U} ^ {\prime} (T)}{U ^ {\prime} (t)} \tilde {x} (T) \right]
$$

With a change of numeraire and a change of measure, we can rewrite this valuation as

$$
V(F_0,0) = \mathrm{E}_0^{P(T)} \left[ \max(0, F_T - K) \right]
$$

We will see examples where such a transformation is extremely helpful.

## Girsanov's Theorem

Thus far, nothing we have discussed in this section presumes that the asset follows any particular stochastic process. However, in many applications it is natural to assume that the price of an asset follows an Itô process. In that case, Girsanov's theorem provides a way to construct a change of measure. Girsanov's theorem is often summarized as showing the equivalence of a change of drift and a change of measure.

A Brownian motion is a martingale:  $\mathrm{E}_t[Z(t + s)] = Z(t)$ . A process is a martingale only for a specific probability distribution (a weighting of future outcomes). If  $Z(t)$  is a martingale under the original measure, it will not generally be a martingale if we alter the measure (create a new probability distribution). Similarly, if we construct a new process

$\hat{Z}(t) = Z(t) + \eta t$ , this new process will not be a martingale under the original measure, but it will be a martingale if we can construct an appropriate new measure. Girsanov's theorem shows how to transform the original probability distribution so that  $Z(t) + \eta t$  is a martingale under the new, transformed distribution. (Of course,  $Z(t)$  will not be a martingale under this new distribution.) Specifically, the following is possible:

1. Start with a Brownian process  $dZ$  and add a drift to it, to obtain the process  $d\hat{Z} = dZ + \eta dt$ .
2. Multiply the original probability distribution for  $Z(t)$  by  $\zeta(t) = \exp[-\eta Z(t) - 0.5\eta^2 t]$ ; this process is a positive martingale with a mean of 1. The original distribution multiplied by  $\zeta(t)$  defines a new probability distribution.
3. Under this new probability distribution,  $\hat{Z}(t)$  is a martingale.

Girsanov's theorem tells us that if we add a drift to a Brownian motion, we can then alter the probability distribution so as to convert the Brownian motion plus drift into a Brownian motion which has zero drift under the new distribution.

The importance of Girsanov's theorem is that it assures us that it is possible to create the risk-neutral and other distributions that arise when we change numeraire and wish to use the associated measure. Girsanov's theorem also tells us how to construct this transformation should that be necessary. We will not make active use of Girsanov's theorem, but we will refer to it. Appendix B discusses Girsanov's theorem in greater detail.

## 4. EXAMPLES OF NUMERAIRE AND MEASURE CHANGE

We now have most of the background to understand how changes of numeraire and measure are used in pricing derivatives. We select a convenient asset price ratio to be a martingale. We then adhere to this martingale restriction in modeling asset prices. $^{10}$

The requirements for a pricing model that is consistent with investor utility maximization are embodied in equation (15) and its counterparts: Under the measure associated with asset  $i$ , the value of any other asset is a martingale when asset  $i$  is used as numeraire. This requirement imposes tight restrictions on the form of an acceptable pricing model. There are two issues worth emphasizing:

- The choice of a particular numeraire provides an internally consistent framework for valuation. Once you select a numeraire/measure combination, you are restricted by that choice. For example, we will see that standard risk-neutral pricing arises when we choose as numeraire a default-free money-market account. Under this framework, you can assume that investors expect all assets to appreciate at the current short-term risk-free rate. However, this statement is not true when using other assets as numeraire, and it is not true for objects that are not asset prices.
- The martingale restriction does not provide any additional guidance about selecting the particular statistical process to use in modeling asset returns. It is common to assume that a stock follows geometric Brownian motion. This is a specific, often-reasonable assumption that gives rise to analytically convenient and widely used pricing formulas. However, the theory we have outlined does not imply that geometric Brownian motion is correct or necessary. Other assumptions are possible and in practice the selection should be based on empirical plausibility and practicality. Theory simply tells us that whatever process we assume must satisfy the martingale restriction associated with a particular numeraire and measure.

Throughout this section we will assume that assets do not pay dividends. You can think of this as an assumption that investors own prepaid forward contracts instead of the underlying asset. Suppose the stock follows the process

$$
\frac{dQ}{Q} = (r - \delta_Q) dt + \sigma_Q dZ_Q
$$

The prepaid forward contract price is  $F_{t,T}^{P}(S) = S_{t}e^{-\delta (T - t)}$ . By Ito's Lemma, the prepaid forward price follows the process

$$
dZ_Q = \rho dZ_S + \sqrt{1 - \rho^2} d\tilde{Z}
$$

By assuming that we invest in prepaid forward contracts it is often possible to ignore dividends. Once we obtain a solution, we can express the answer in terms of the stock price by replacing  $F_{t,T}^{P}$  with  $S_{t}e^{-\delta (T - t)}$ . Thus, in this section, we assume that all risky assets follow the process

$$
\frac {d S _ {i} (t)}{S _ {i} (t)} = \alpha_ {i} d t + \sigma_ {i} d \tilde {Z} _ {i} \tag {17}
$$

We now present three commonly used numeraires and measures.

## The Money-Market Account as Numeraire (Risk-Neutral Measure)

The risk-neutral measure arises when we select the money-market account as numeraire. With this numeraire choice, we measure prices of other assets in terms of money-market units. We act as if asset returns follow equation (2).

The Money-Market Account. Between time  $t$  and time  $t + dt$ , the money-market account earns the current instantaneous risk-free rate,  $r(t)$ , which can be random but is known at a moment in time. An instant later, the account will appreciate at whatever rate prevails at that time, and so forth. The money-market account thus follows the process

$$
\frac {d B (t)}{B (t)} = r (t) d t \tag {18}
$$

If we start with an initial investment of  $B(0)$  in the account, then after  $t$  periods, the value of the account is

$$
\sigma = \sqrt{\sigma_S^2 + \sigma_Q^2 - 2\rho\sigma_S\sigma_Q}
$$

The value  $B(t)$  is the realized value of the account. If  $r(s)$  in equation (19) is a random variable, then  $B(t)$  is also a random variable, with a value depending on the realizations of  $r(s)$ . At this point you can view  $r(t)$  as a general stochastic process.

The Money-Market Account as Numeraire. With the money-market account as numeraire, equation (15) implies that for each of the  $n$  assets,

$$
V(S_0,Q_0,0) = \mathrm{E}_0^{P(T)} \left[ \max\left(0, \frac{S_T}{Q_T} - 1\right) \right] = \frac{S_0}{Q_0} N(d_1) - N(d_2)
$$

This states that under the measure generated by the money-market account, the ratio of the asset price to the money-market account is a martingale. Multiplying both sides by  $B(t)$  and using equation (19), this can be rewritten as

$$
\boxed {S _ {i} (t) = \mathrm {E} _ {t} ^ {B} \left[ S _ {i} (T) e ^ {- \int_ {t} ^ {T} r (s) d s} \right]} \tag {21}
$$

The asset price today is the expectation under the risk-neutral measure of the future asset price discounted at the realized money-market return. It is important to understand that the discount factor in equation (21),  $\exp [-\int_t^T r(s)ds]$ , is random. In general, the realizations of the stock price and the realizations of the discount factor can be correlated. This is the proper definition of risk-neutral pricing: The expected payoff is evaluated using the probability measure induced by the money-market account and discounted for each particular outcome using the realized return on the money-market account for that outcome.

In the special case when  $r$  is nonstochastic, we have

$$
S _ {i} (t) = e ^ {- \int_ {t} ^ {T} r (s) d s} \mathrm {E} _ {t} ^ {B} [ S _ {i} (T) ] \tag {22}
$$

This will likely seem more familiar than equation (21) because we have previously assumed that interest rates were nonstochastic.

Constructing a Process for  $S_{i}(t)$ . Assuming that  $S_{i}(t)$  follows an Itô process, as in equation (1), Itô's Lemma implies that under the physical measure we have

$$ d \left[ \frac {S _ {i} (t)}{B (t)} \right] \left[ \frac {B (t)}{S _ {i} (t)} \right] = (\alpha_ {i} - r) d t + \sigma_ {i} d \tilde {Z} _ {i} \tag {23}
$$

The ratio  $S_{i}(t) / B(t)$  will not be a martingale when  $\alpha \neq r$ . However, we know from equation (20) that we can construct a measure such that  $S_{i}(t) / B(t)$  is a martingale.

Let  $dZ_{i}^{B} = d\tilde{Z}_{i} + \frac{\alpha_{i} - r}{\sigma_{i}} dt$ . We can then rewrite the physical process for the stock to obtain the risk-neutral process:

$$
\begin{array}{l} \frac {d S _ {i} (t)}{S _ {i} (t)} = \alpha_ {i} d t + \sigma_ {i} d \tilde {Z} _ {i} (t) \\ = r d t + \sigma_ {i} \left(d \tilde {Z} _ {i} (t) + \frac {\alpha_ {i} - r}{\sigma_ {i}} d t\right) \\ = r d t + \sigma_ {i} d Z _ {i} ^ {B} (t) \tag {24} \\ \end{array}
$$

In equilibrium, the risk premium,  $\alpha - r$ , is determined by investor demands resulting from utility maximization. Generally speaking, if investors are more risk-averse,  $\alpha - r$  will be greater. Therefore, when we use the Sharpe ratio to construct the new measure, we implicitly account for marginal utility.

Girsanov's theorem tells us that there is a probability distribution such that  $dZ_{i}^{B}(t)$  is a martingale. (Of course,  $d\tilde{Z}_i(t)$  is not a martingale under this alternative distribution.) Treating  $dZ_{i}^{B}(t)$  as a martingale, we can once again evaluate  $d\left[S_i(t) / B(t)\right]$ , obtaining

$$ d \left[ \frac {S _ {i} (t)}{B (t)} \right] \times \left[ \frac {B (t)}{S _ {i} (t)} \right] = (r - r) d t + \sigma d Z _ {i} ^ {B} = \sigma d Z _ {i} ^ {B} \tag {25}
$$

Under the measure for which  $dZ^{B}$  is a martingale,  $S_{i}(t) / B(t)$  is a martingale.

In practice, we can use the risk-neutral measure by simply replacing  $\alpha_{i}$  with  $r$  for every asset.

Interpretation. It is possible for  $d\tilde{Z}_i$  and  $dZ_i^B$  to both be martingales, albeit under different measures, because they represent different perspectives.

A statistician examining historical asset returns is looking at the physical measure. From this perspective, the Brownian increment  $d\tilde{Z}_i$  is a martingale. The ratio  $S_i(t) / B(t)$  is not a martingale when the drift on stock  $i$  and on the money-market fund are different. Someone who states that "stocks on average outperform bonds" is asserting that  $\alpha_i > r$ , which is a statement about the physical measure.

For a risk-averse investor, the utility earned from  $d\tilde{Z}_i$  is not a martingale. It is apparent from Figure 1 that the utility gain from a unit increase in  $\tilde{Z}$  will be less than the magnitude of the utility loss from a unit decrease in  $\tilde{Z}$ . The risk-averse investor who will not take a fair bet also will not invest in an asset with a return that is a martingale because the expected utility value is negative. This is the reason the average asset has a positive risk premium: The risk premium offsets the loss from bearing risk that is a martingale. The portfolio first-order condition, equation (5), tells us that in equilibrium, the net effect is such that returns weighted by marginal utility are a martingale.

In equation (24), we add the Sharpe ratio to  $d\tilde{Z}_i$  to obtain  $dZ_i^B$ . By adding a positive Sharpe ratio to  $d\tilde{Z}$ , we increase the probability of outcomes when marginal utility is low (good outcomes) and decrease the probability when marginal utility is high (bad outcomes). This makes  $dZ^B$  a martingale when evaluated in terms of marginal utility. The risk-neutral process thus implicitly incorporates marginal utility into the change of measure, using the risk premium to construct the new probabilities. The economic intuition behind the change of measure is that investors in equilibrium are indifferent to a small change in the allocation of their portfolio between risky and risk-free assets. The Sharpe ratio appears in the transformation because it measures the equilibrium risk premium that investors require in order to absorb additional risk.

Although we invoked Girsanov's theorem in obtaining equation (25), in practice it is sufficient to replace  $\alpha$  with  $r(t)$  in equation (1) and discount expected payoffs at the risk-free rate. No special work is required to use the risk-neutral process; we simply proceed as if the stock had an expected return equal to the risk-free rate. The discussion in this section explains the logic behind the risk-neutral measure, but it is not necessary to duplicate these steps in practical applications.

## Risky Asset as Numeraire

An arbitrary risky asset can also be numeraire. If we select asset 1, then under the associated measure,  $S_{i}(t) / S_{1}(t)$  must be a martingale for each asset. To see how this works, start by assuming that all assets follow equation (2), with  $\delta_{i} = 0$ , under the risk-neutral measure. Using Ito's Lemma, we have

$$
\begin{array}{l} d \left[ \frac {S _ {i} (t)}{S _ {1} (t)} \right] \frac {S _ {1} (t)}{S _ {i} (t)} = \frac {d S _ {i} (t)}{S _ {i} (t)} - \frac {d S _ {1} (t)}{S _ {1} (t)} + \sigma_ {1} ^ {2} d t - \sigma_ {1} \sigma_ {i} \rho_ {1, i} d t \\ = \sigma_ {i} d Z _ {i} ^ {B} - \sigma_ {1} d Z _ {1} ^ {B} + \sigma_ {1} ^ {2} d t - \sigma_ {1} \sigma_ {i} \rho_ {1, i} d t \tag {26} \\ \end{array}
$$

In general,  $\sigma_1^2 \neq \sigma_1 \sigma_i \rho_{1,i}$ , so this expression is not a martingale. To understand the necessary change of measure when  $S_1$  is numeraire, suppose that asset  $i$  in equation (26) is the money-market account, for which  $\sigma_B^2 = 0$ . Equation (26) then becomes

$$ d \left[ \frac {B (t)}{S _ {1} (t)} \right] \frac {S _ {1} (t)}{B (t)} = - \sigma_ {1} d Z _ {1} ^ {B} + \sigma_ {1} ^ {2} d t \tag {27}
$$

From equation (26), the change of measure that makes the numeraire asset a martingale is

$$ d Z _ {1} ^ {S _ {1}} = d Z _ {1} ^ {B} - \sigma_ {1} d t
$$

Given this process for  $dZ_{1}^{S_{1}}$ ,  $S_{i}(t) / S_{1}(t)$  is a martingale provided that  $dZ_{i}^{S_{1}} = dZ_{i}^{B} - \rho_{1,i}\sigma_{1}\sigma_{i}dt$ . Thus, we can write

$$
\frac{S_T}{Q_T} = \frac{S_0}{Q_0} \exp\left[ \left( \delta_Q - \delta_S - \frac{1}{2} (\sigma_S^2 - 2\rho\sigma_S\sigma_Q + \sigma_Q^2) \right) T + \sigma_S z_1 \sqrt{T} - \sigma_Q z_2 \sqrt{T} \right]
$$

The drift for asset  $i$  under the  $S_{1}$  measure is greater by the covariance of asset  $i$  and asset 1  $(\rho_{1,i}\sigma_1\sigma_i)$ , divided by the standard deviation of asset  $i$  ( $\sigma_{i}$ ).

## Zero Coupon Bond as Numeraire (Forward Measure)

An important special case of a risky asset as numeraire occurs when we select a zero-coupon bond maturing at time  $T$  as numeraire. The resulting measure is called the forward measure. Mathematically this case is identical to the preceding, but the interpretation is important enough to discuss it separately.

To understand the "forward measure" terminology, we should remember that the no-arbitrage forward price is  $F_{t,T} = S_i(t) / P_t(t,T)$ , where  $P_{t}(t,T)$  is the time  $t$  price of a zero-coupon bond maturing at time  $T$ . Any time-  $T$  forward price is a martingale when the zero-coupon bond maturing at time  $T$  is used as numeraire. Thus, under the forward measure we can write

$$ d F _ {t, T} = \sigma d Z ^ {F}
$$

The forward measure and the risk-neutral measure are different, although both use fixed income assets as numeraire. The forward measure tells us that prices deflated by zero-coupon bonds are martingales, while the risk-neutral measure tells us that prices deflated by the money-market account are martingales. Under the risk-neutral measure, asset expected returns over the next instant are equal to the instantaneous risk-free rate,  $r(t)$ . Under the forward measure, asset expected returns over the next instant are equal to  $r(t) + \rho_{P,i}\sigma_{P}\sigma_{i}$ , where  $\rho_{P,i}$  is the correlation between the returns on the bond and asset  $i$ , and  $\sigma_{P}$  is the standard deviation of the bond return.

The forward measure plays an important role in interest rate models.

## 5. EXAMPLES OF MARTINGALE PRICING

In this section we illustrate how one can use the martingale property of asset price ratios to derive various option pricing formulas in a relatively simple fashion. We will price both an ordinary and an outperformance call option. In the first example, we will go slowly through the derivation to be clear about the logic.

We first derive the prices of two binary options: a cash-or-nothing call, which pays \$1 when  $S_T > K$ , and an asset-or-nothing call, which pays one share (worth  $S_T$ ) when  $S_T > K$ . As a by-product, we will obtain the Black-Scholes formula. However, we will also obtain the pricing formula for an outperformance option and for an option where a zero-coupon bond is the underlying asset (the Black formula).

## Cash-or-Nothing Call

A cash-or-nothing call pays \$1 if S_T > K and 0 otherwise. We can rewrite the condition for a payoff as S_T > K P_T(T, T), where P_t(s, T) is the time t value of a default-free \$1 zero-coupon bond bought at s and expiring at T. By definition, we have P_T(T, T) = 1. Writing the strike price in this way emphasizes that the strike asset can be viewed as K zero-coupon bonds. We can also view the claim, if it is in-the-money, as paying a zero-coupon bond. The payoff can therefore be written

$$
V(S_T,T) = S_T \mathbf{1}[S_T > K]
$$

\begin{array}{l} V (S _ {0}, 0) = \mathrm {E} _ {0} \left[ \begin{array}{c c} \frac {U ^ {\prime} (T)}{U ^ {\prime} (0)} P _ {T} (T, T) & \mathbf {1} [ S (T) \geq K P _ {T} (T, T) ] \end{array} \right] \\ = P _ {0} (0, T) \mathrm {E} _ {0} \left[ \frac {U ^ {\prime} (T) P _ {T} (T , T)}{U ^ {\prime} (0) P _ {0} (0 , T)} \quad \mathbf {1} \left(\frac {S (T)}{P _ {T} (T , T)} \geq K\right) \right] \\ = P _ {0} (0, T) \mathrm {E} _ {0} ^ {P (T)} \left[ \mathbf {1} \left(\frac {S (T)}{P _ {T} (T , T)} \geq K\right) \right] \tag {30} \\ \end{array}

$$

In going from the second to the third line, we have implicitly multiplied the physical probabilities in the expectation by  $U'(T)P_T(T,T) / U'(0)P_0(0,T)$ , effecting a change of measure. The expectation  $\mathrm{E}^{P(T)}$  is computed with respect to the measure that uses the zero-coupon bond as numeraire—namely, the forward measure. Under this measure, the price of any asset divided by the bond price is a martingale. The valuation problem entails computing

$$

\mathrm {E} _ {0} ^ {P (T)} \left[ \mathbf {1} \left(\frac {S (T)}{P _ {T} (T , T)} \geq K\right) \right] = \Pr^ {P (T)} \left(\frac {S (T)}{P _ {T} (T , T)} \geq K\right) \tag {31}

$$ where  $\mathbf{E}^{P(T)}$  and  $\operatorname{Pr}^{P(T)}$  denote calculations with respect to the forward measure.

In order to compute equation (31), we must specify a stochastic process for the price ratio  $S(t) / P_t(t, T)$ ; theory requires only that this process be a martingale. We will use the familiar assumption that the price ratio follows a Brownian motion with constant volatility; a different specification will lead to a different pricing model. Note that  $S(t) / P_t$  is the forward price of the stock, so we are assuming that the forward price has a constant volatility.

With the constant volatility assumption, we can write

$$ d \left[ \frac {S (t)}{P _ {t} (t , T)} \right] \times \frac {P _ {t} (t , T)}{S (t)} = \sigma d Z
$$

Taking the natural log of the price ratio, we have

$$ d \ln \left[ \frac {S (t)}{P _ {t} (t , T)} \right] = - 0. 5 \sigma^ {2} d t + \sigma d Z
$$

This implies that

$$
d_1 = \frac{\ln(F_0/K) + \frac{1}{2}\sigma^2 T}{\sigma\sqrt{T}}
$$

\begin{array}{l} \Pr^ {P (T)} \left[ \ln \left(S (T) / P _ {T} (T, T)\right) \geq \ln (K) \right] \\ = \Pr \left[ \ln (S (t) / P _ {t} (t, T)) - 0. 5 \sigma^ {2} (T - t) + z \sigma \sqrt {T - t} \geq \ln (K) \right] \\ = \Pr \left[ - z \leq \frac {\ln \left[ S (t) / K P _ {t} (t , T) \right] - 0 . 5 \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}} \right] \\ \end{array}

$$

Referring back to equation (30), we have

$$

V \left(S _ {t}, t\right) = P _ {t} (t, T) N \left(\frac {\ln \left[ S (t) / K P _ {t} (t , T) \right] - 0 . 5 \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}}\right) \tag {32}

$$

Note that we can write  $\ln (P_t(t,T)) = -r(T - t)$ , where  $r$  is the continuously compounded yield to maturity on the zero-coupon bond. Equation (32) is therefore the second term in the Black-Scholes formula:

$$

V (S _ {t}, t) = e ^ {- r (T - t)} N \left(\frac {\ln (S _ {t} / K) + (r - 0 . 5 \sigma^ {2}) (T - t)}{\sigma \sqrt {T - t}}\right)

$$

Interpretation of Volatility. The derivation permitted both the stock and bond returns to be stochastic. In this case, the instantaneous  $\sigma$  will be the blended volatility of  $S_{t}$  and  $P_{t}(t,T)$ :

$$

\sigma^ {2} = \sigma_ {S} ^ {2} + \sigma_ {P} ^ {2} - 2 \rho \sigma_ {S} \sigma_ {P}

$$ where  $\rho dt = dZ_{S} \times dZ_{P}$ . In practice,  $\sigma$  is often treated as if it were the stock volatility. For short-term options, the volatility of the stock will be substantially greater than the volatility of the bond, so that  $\sigma \approx \sigma_{S}$ . For long-term options, it is more important to account for bond price uncertainty.

An additional issue is that the volatility of the bond will change over time, generally diminishing as the bond approaches maturity. The appropriate volatility will then be the integral of the blended volatility over the life of the option.[12]

Dividends. The foregoing derivation assumed that the underlying asset did not pay a dividend. When the asset does pay a dividend, we can view the price as a prepaid forward price. It is then simple to express the derivative price in terms of the stock price, rather than the prepaid forward, by replacing the price  $S_{t}$  with  $S_{t}e^{-\delta (T - t)}$ . Doing so, we obtain the formula when the stock pays a continuous dividend.

## Asset-or-Nothing Call

An asset-or-nothing call pays one share worth  $S_{T}$  if  $S_{T} > K$  and 0 otherwise. As with the cash-or-nothing call, we compute the time 0 value of the payoff:

$$
\begin{array}{l} W (S _ {0}, 0) = \mathrm {E} _ {0} \left[ \begin{array}{c c} \frac {U ^ {\prime} (T)}{U ^ {\prime} (0)} S (T) & \mathbf {1} [ S (T) \geq K P _ {T} (T, T) ] \end{array} \right] \\ = S (0) \mathrm {E} _ {0} \left[ \begin{array}{c c} \frac {U ^ {\prime} (T) S (T)}{U ^ {\prime} (0) S (0)} & \mathbf {1} [ S (T) \geq K P _ {T} (T, T) ] \end{array} \right] \\ = S (0) \mathrm {E} _ {0} ^ {S} \left\{\left[ \mathbf {1} [ S (T) \geq K P _ {T} (T, T) ] \right] \right\} \tag {33} \\ \end{array}
$$

This resembles the derivation of the cash-or-nothing call. Because the payoff is a share, however, it is natural to use the stock measure rather than the forward measure. Equation (33) can be rewritten

$$
V(S_0,0) = P_0(0,T) \mathrm{E}_0^{P(T)} \left[ \frac{S_T}{P_T(T,T)} \mathbf{1} \left[ \frac{S_T}{P_T(T,T)} > K \right] \right]
$$

We evaluate this probability by using the fact that, under the  $S(t)$  measure, the ratio  $P_{t}(t,T) / S(t)$  is a martingale.

Before proceeding, it is instructive to compare equation (34) with equation (31). In equation (31),  $S(t) / P_t(t,T)$  is a martingale; in equation (34), the other case, the inverse is a martingale. Itô's Lemma tells us that the drifts of  $x$  and  $1/x$  differ by  $\sigma^2 dt$ . This is the reason that the  $d_1$  and  $d_2$  terms in the Black-Scholes formula differ by  $\sigma^2 T$ .

As in the case of the cash-or-nothing call, we will assume that the ratio is a martingale with a constant standard deviation:

$$ d \left[ \frac {P _ {t} (t , T)}{S (t)} \right] \times \frac {S (t)}{P _ {t} (t , T)} = \sigma d Z
$$

Taking the natural log of the price ratio and using Itô's Lemma, we have

$$ d \ln \left[ \frac {P _ {t} (t , T)}{S (t)} \right] = - 0. 5 \sigma^ {2} d t + \sigma d Z
$$

With this process, we have

$$
\ln \left[ \frac {P _ {T} (T , T)}{S (T)} \right] = \ln \left[ \frac {P _ {t} (t , T)}{S (t)} \right] - 0. 5 \sigma^ {2} (T - t) + \sigma z \sqrt {T - t}
$$ where  $z\sim \mathcal{N}(0,1)$  . The probability at time  $t$  is therefore


$$

\begin{array}{l} \Pr \left[ \ln \left(P _ {T} (T, T) / S (T)\right) \leq \ln (1 / K) \right] \\ = \operatorname * {P r} \left[ \ln (P _ {t} (t, T) / S (t)) - 0. 5 \sigma^ {2} (T - t) + z \sigma \sqrt {T - t} \leq \ln (1 / K) \right] \\ \end{array}

$$

Rearranging terms and referring back to equation (33), we have

$$

W \left(S _ {0}, 0\right) = S _ {0} N \left(\frac {\ln \left[ S (t) / P _ {t} (t , T) K \right] + 0 . 5 \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}}\right) \tag {35}

$$

Again, by substituting  $\ln [P_t(t,T)] = -r(T - t)$ , this becomes  $SN(d_1)$ , the first term in the Black-Scholes formula.

As with the cash-or-nothing option, the volatility is the blended volatility of the bond and stock. For the same reason as before, it is common in many applications to assume that  $\sigma \approx \sigma_{S}$ .

You may be surprised by the relative simplicity of this derivation. The first term in the Black-Scholes equation requires evaluating the conditional expectation  $\operatorname{E}[S_T | S_T \geq K]$ , yet we only compute a probability. The simplicity is due to the change of numeraire: When we denominate the payoff in terms of the stock, we no longer receive  $S_T$  dollars—instead, we receive one share. The payoff is then either 0 (shares) or 1 (share). The expectation of a quantity that is either 0 or 1 is equivalent to a probability calculation. The change of numeraire simplifies the derivation by converting the calculation of a conditional expectation into the calculation of a probability. These remarkable derivations are due to Geman et al. (1995).

# The Black-Scholes Formula

The payoff to a call is replicated by buying one asset-or-nothing option, with value given by equation (35), and subtracting  $K$  cash-or-nothing calls, with a value given by  $K$  times equation (32):

$$

\begin{array}{l} S _ {0} N \left(\frac {\ln \left[ S (t) / P _ {t} (t , T) K \right] + 0 . 5 \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}}\right) \tag {36} \\ - K P _ {t} (t, T) N \left(\frac {\ln [ S (t) / K P _ {t} (t , T) ] - 0 . 5 \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}}\right) \\ \end{array}

$$

The interest rate appropriate for valuing the option is the yield on a default-free bond with the same maturity as the option, and that the volatility is that of the difference between the returns on the stock and on the zero-coupon default-free bond.

# European Outperformance Option

An outperformance option has the payoff  $\max[S_1(T) - KS_2(T), 0]$ . To value this option we can take the difference of two asset- or nothing options, one that pays  $S_1$  if  $S_1(T) > KS_2(T)$ , and the other that pays  $KS_2(T)$  under the same condition. This is exactly the problem we just solved. The solution for the cash-or-nothing outperformance option is equation (32) with  $P_t(t, T)$  replaced by  $S_2(t)$ , and the solution for the first is equation (35) with the same substitution. As before the volatility is the blended volatility.

Although outperformance options are typically discussed as if they were different than ordinary options, they are really the same. For an ordinary option, the strike asset is a zero coupon bond, while for an outperformance option, the strike asset is a stock or index.

# Option on a Zero-Coupon Bond

Consider a call option expiring at time  $T$  that permits the holder to pay  $K$  to buy a zero-coupon bond with  $s$  periods to maturity. We can write the payoff as

$$

\left. \max  \left[ 0, P _ {T} (T, T + s) - K P _ {T} (T, T) \right] \right. \tag {37}

$$

This is an option where the underlying asset is a zero-coupon bond maturing at time  $T + s$  and the strike asset is  $K$  zero-coupon bonds maturing at time  $T$ . The structure of this option is the same as an ordinary call on a stock, with the stock price replaced by the price of the bond maturing at  $T + s$ . Equation (36) with  $S_{t}$  replaced by  $P_{t}(t,T + s)$  is called the Black formula.

# 6. EXAMPLE: LONG-MATURITY PUT OPTIONS

In this section we discuss the pricing of long-dated put options. In his 2009 Letter to Shareholders, Berkshire-Hathaway CEO Warren Buffett offered a critique of the Black-Scholes formula for pricing puts (Buffett, 2009, pp. 18-21). See the excerpt on the next page. In this passage, Buffett explains why he thinks the Black-Scholes price for an at-themoney put option with 100 years to expiration is too high.[13]

Buffett implicitly asks how we know whether an option price is correct. We will address this question in the context of Buffett's example. Our answer will hinge on an

# Box I: Warren Buffett's Written Put Option

# The following is an excerpt from Buffett (2009):

We use [the Black-Scholes formula] when valuing our equity put options for financial statement purposes. . . . If the formula is applied to extended time periods, however, it can produce absurd results. . .

It's often useful in testing a theory to push it to extremes. So let's postulate that we sell a 100-year \$1 billion put option on the S&P 500 at a strike price of 903 (the index's level on 12/31/08). Using the implied volatility assumption for long-dated contracts that we do, and combining that with appropriate interest and dividend assumptions, we would find the "proper" Black-Scholes premium for this contract to be \$2.5 million.

To judge the rationality of that premium, we need to assess whether the S&P will be valued a century from now at less than today. Certainly the dollar will then be worth a small fraction of its present value (at only  $2\%$  inflation it will be worth roughly  $14\phi$ ). So that will be a factor pushing the stated value of the index higher. . . Far more important, however, is that one hun dred years of retained earnings will hugely increase the value of most of the companies in the index. Considering everything, I believe the probability of a decline in the index over a one-hundred-year period to be far less than  $1\%$ . But let's use that figure and also assume that the most likely decline—should one occur—is  $50\%$ . Under these assumptions, the mathematical expectation of loss on our contract would be \$5 million (\$1 billion  $\times$ $1\% \times 50\%$ ). But if we had received our theoretical premium of \$2.5 million up front, we would have only had to invest it at  $0.7\%$  compounded annually to cover this loss expectancy. Everything earned above that would have been profit. Would you like to borrow money for 100 years at a  $0.7\%$  rate?


Let's look at my example from a worst-case standpoint. Remember that  $99\%$  of the time we would pay nothing if my assumptions are correct. But even in the worst case among the remaining  $1\%$  of possibilities—that is, one assuming a total loss of \$1 billion—our borrowing cost would come to only  $6.2\%$ . Clearly, either my assumptions are crazy or the formula is inappropriate.

understanding of the difference between the physical and risk-neutral measures, and in particular the role of marginal utility in pricing.

# The Black-Scholes Put Price Calculation

In the excerpt, Buffett does not state his assumptions. It turns out that it is easy to reproduce his price and probability calculations using the Black-Scholes formula with reasonable inputs.[14] In Buffett's example, the written options are at-the-money, so both  $S$  and  $K$  are \$1 billion, and  $T = 100$ . We assume that  $\sigma = 0.20$ ,  $r = 0.044$ , and  $\delta = 0.015$ . The 4.4\% interest rate is slightly greater than the 30-year rate in early 2009. The strike price is denominated in dollars and the interest rate is nominal; no adjustment is necessary for inflation. There are no observable 100-year option prices, and therefore we cannot obtain implied volatility or implied dividend estimates.


With these inputs, the Black-Scholes put price is  \$2,412,997, close to Buffett's\$ 2.5 million. To place this price in perspective, at a 4.4\% rate of interest, the \$1 billion strike price has a 100-year present value of \$12.277 million. The put premium of 2.4 million therefore is equal to 20\% of the present value of the option's maximum payoff.

# Is the Put Price Reasonable?

We now want to discuss Buffett's argument that the 2.4 million put price is unreasonably high. As a starting point, we should remember that the Black-Scholes formula provides the correct option price within a specific, internally consistent economic model that implicitly incorporates the investor portfolio selection problem we discussed earlier in this chapter. Given this setting, the Black-Scholes put price is a mathematical result. Any complaint about the model price must therefore be a complaint about the underlying assumptions or the posited economic model. To assess the plausibility of the assumptions, it is helpful to think about the economics of the option.

The Likelihood of Exercise and Expected Payoff. The option price is determined by the risk-neutral probability that the option will expire in-the-money, and the conditional expected payoff of the option. Buffett states that the probability of the put ending up in-the-money is below  $1\%$ . This is a statement about the physical probability that the value of the index will have increased over a 100-year horizon. If stock prices are lognormally distributed, we can compute this probability as  $N(-d_2^*)$ , where  $d_2^*$  uses the actual expected return on the market in place of the risk-free rate. For example, if we assume that the equity index risk premium is  $4\%$ , we would substitute  $8.4\%$  for the  $4.4\%$  risk-free rate, obtaining  $N(-d_2^*) = 0.0071$ , a probability less than  $1\%$ .

Buffett assumes that the expected loss on the index, conditional on the index underperforming bonds, will be  $50\%$ . This is again a statement about the physical distribution. With an  $8.4\%$  expected return on the market, the expectation of  \$1 billion of the index conditional on S_{100} < S_0\$  is 596,452,294, or  $59.6\%$  of the current index value. Again, this is close to Buffett's assumption.

The probability and value of the index conditional on the put being in-the- money are presented in Table 1, for a variety of assumed risk premiums. Calculations under the risk-neutral measure are in the first row, where the risk premium is zero. Calculations in the other rows are under the physical measure and depend upon the assumed risk premium. Given the other assumed Black-Scholes inputs, Buffett's statements about the likely future behavior of the index correspond to assuming that the risk premium is about  $4\%$ .

It is worth noting that Buffett's calculations ignore the different marginal utilities associated with good and bad performance of the index. If the S&P index were to sustain a  $50\%$  loss over the next 100 years, the economy would have performed poorly and we would expect marginal utility at that time to be high. This is why the Black-Scholes price may seem high.

Understanding the Option Price. Following Buffett, we can view put writing as borrowing and compute the expected borrowing cost. The expected payout on the option is the expected payoff conditional upon the option expiring in-the-money, times the probability that it expires in-the-money. We can divide this expected cost by the option price and convert it to a rate of return. Buffett's calculation assumes that the option seller receives 2.5 million

Risk premium, physical probability of put exercise, and expected index value conditional on exercise. Assumes the underlying asset is  \$1 billion of the index, the strike equals\$ 1 billion, and  $\sigma = 0.20$ ,  $T = 100$  years,  $\delta = 0.015$ , and  $r = 0.044$ . The expected index return is the risk-free rate plus the risk premium. The Black-Scholes put price for these inputs is 2.413 million.

TABLEI

<table><tr><td>Risk Premium</td><td>Expected Index Return</td><td>Physical Probability that ST ≤ K</td><td>E0(ST|ST &lt; K) (Millions of $)</td></tr><tr><td>0.00</td><td>0.044</td><td>0.3264</td><td>$397.77</td></tr><tr><td>0.01</td><td>0.054</td><td>0.1711</td><td>$458.88</td></tr><tr><td>0.02</td><td>0.064</td><td>0.0735</td><td>$511.91</td></tr><tr><td>0.03</td><td>0.074</td><td>0.0256</td><td>$557.45</td></tr><tr><td>0.04</td><td>0.084</td><td>0.0071</td><td>$596.45</td></tr><tr><td>0.05</td><td>0.094</td><td>0.0016</td><td>629.93</td></tr></table> today and in 100 years will pay 500 million with a 1\% probability:


$$

\begin{array}{l} \frac {1}{T} \ln \left[ \frac {\mathrm {E} _ {0} \left(K - S _ {T} \mid S _ {T} <   K\right) \times \Pr \left(S _ {T} <   K\right)}{\text {P u t p r i c e}} \right] \tag {38} \\ = \frac {1}{1 0 0} \ln \left[ \frac {(1 0 0 0 - 5 0 0) \times 0 . 0 1}{2 . 5 0 0} \right] = 0. 0 0 7 \\ \end{array}

$$

This is an expected borrowing cost of  $0.7\%$ . Using the numbers we computed above for a  $4\%$  risk premium, the written option looks like an even better deal:

$$

\frac {1}{1 0 0} \ln \left[ \frac {(1 0 0 0 - 5 9 6 . 4 5) \times 0 . 0 0 7 1}{2 . 4 1 2} \right] = 0. 0 0 2

$$

The expected annual borrowing cost here is  $0.2\%$ .

In contrast to calculations under the physical measure, the risk-neutral calculation implicitly weights the physical probabilities by marginal utilities, and therefore takes into account the high marginal utility associated with a market decline. Examine the first row of Table 1. The risk-neutral probability that the put will be in-the-money is  $N(-d_2) = 0.326$ . The expected value of the index conditional on the put being in-the-money is 397.77 million, giving a conditional average payoff equal to 60\% of the maximum possible payoff.

Repeating the expected borrowing cost calculation in equation (38), but using risk-neutral quantities, there is a  $32.6\%$  probability that the option will be exercised. When the put is exercised, the average payoff will be  $60\%$  of the maximum possible payoff. The implicit borrowing cost in this case is

$$

\begin{array}{l} \frac {1}{T} \ln \left[ \frac {\mathrm {E} _ {0} (K - S _ {T} | S _ {T} <   K) \times \Pr (S _ {T} <   K)}{\text {P u t p r i c e}} \right] \\ = \frac {1}{1 0 0} \ln \left[ \frac {(1 0 0 0 - 3 9 7 . 7 7) \times 0 . 3 2 6 4}{2 . 4 1 2} \right] = 0. 0 4 4 \\ \end{array}

$$

In other words, under the risk-neutral measure the expected cost of borrowing by selling a 100-year put is  $4.4\%$ . This is the risk-free rate used to price the put. The Black-Scholes put price formula is internally consistent, as it must be.

You can repeat Buffett's analysis for different rows in Table 1. The greater the risk premium you assume, the lower will be the expected borrowing cost under the physical measure.

# Discussion

As we discussed earlier in the chapter, an investor who is optimally selecting a portfolio, and who is unconstrained, would invest in different risky assets to the point where the risk premium for an asset just compensates for the additional risk due to the additional investment. This is the investor described by the portfolio first-order condition, equation (5). Such an investor would be indifferent to small portfolio reallocations and would have no incentive to take an additional large leveraged bet on the market.

An investor who, by contrast, is constrained—who for some reason is not able to take as long or short a position as desired—would look for opportunities to invest in a fashion that makes the constraint less binding. To take one example, consider an investor who is fully invested in stocks but nevertheless finds the risk premium for stocks attractively high. Some ways to exploit this perception would include borrowing to buy more of the index, entering into an index swap or forward contract, buying an index call, or selling an index put. All of these are simply leveraged equity bets that make money if the index outperforms bonds. Buffett's sale of index put options is thus consistent with an optimistic view about the stock index that has not been completely offset by investing in the index.[15] An end-of-chapter problem asks you to speculate about why Buffett selected put writing as opposed to some of these other strategies.

A more general version of Buffett's argument is that stocks are a good investment for the "long run" because stocks on average are expected to outperform bonds. Such discussions typically do not take into account the difference in marginal utilities associated with gains and losses. One example of a decision based on the positive risk premium is presented in Box 2, which discusses the Pension Benefit Guaranty Corporation's trust fund, in what assets it should be invested, how it should be hedged, and the role that the risk premium plays in its risk-management decisions.

## CHAPTER SUMMARY

Investors at all times must decide how to invest their savings. This portfolio decision by investors determines the equilibrium demand for different assets and thus the pricing of assets. Investors selecting optimal portfolios give up utility today for expected utility in the future. The portfolio selection first-order condition (the mathematical condition that holds when an investor holds an optimal portfolio) states that the utility investors give up

# Box 2: Hedging the PBGC's Liabilities

The Pension Benefit Guaranty Corporation (PBGC) is a quasi-public corporation that was created in 1974 by the U.S. Congress as part of the Employee Retirement Income Security Act (ERISA). The PBGC insures defined-benefit corporate pension plans, in which the corporation promises retirees a fixed sum for the rest of their lives. (In the other leading form of retirement plan, "defined contribution," employees fund their own retirement with their accumulated savings.) Prior to ERISA, if the corporation failed, its retirees most likely lost their pensions. Corporations pay for PBGC insurance by making annual insurance payments into the PBGC's trust fund, which is used to rescue failed pension plans.

How should the PBGC invest its trust fund? To answer this, we first need to understand the risk the PBGC faces. The PBGC must make pension payments if two things occur. First, a company must fail, and second, the pension must have insufficient assets to meet its obligations. The PBGC on average will make insurance payments when the stock market falls—some companies will fail, and their pension funds will also likely have declined in value. The delta of the PBGC insurance liability is therefore positive: When the stock market falls, the PBGC expects to make greater payments. The logic of delta-hedging suggests that in order to hedge its exposure, the PBGC trust fund should short the shares of companies it insures.

To restate this from an economic perspective, PBGC insurance will be called upon at times when marginal utility is high. Logically, the insurer should invest in positions that increase in value, or at least do not decrease, when marginal utility increases. Government bonds and short-equity positions both satisfy this requirement.


You can probably imagine the corporate and congressional reaction if a government entity were to short-sell corporate stock. With shorting politically infeasible, the PBGC could instead invest the trust fund in government bonds. In practice, what does the PBGC do?

Prior to 2008, the trust fund had largely been invested in bonds. In 2008, at the urging of PBGC director Charles E. F. Millard, the PBGC board adopted an Investment Policy Statement calling for it to invest more in stocks. The rationale was that the fund would earn the higher average return on stocks. Of course, from a risk-management perspective, investing the PBGC's trust fund in stocks is a "Texas Hedge": a strategy that increases risk rather than reducing it. Boston University Finance Professor Zvi Bodie "likened the agency's strategy to a company that insures against hurricane damage and then invests the premiums in beachfront property" ("Pension Insurer Shifted to Stocks," Boston Globe, March 30, 2009).

Ultimately, 18 months after announcing it would invest more in stocks, and in the wake of much criticism, the PBGC board decided to reduce investment in public equities.

today to buy an asset must equal the additional utility expected in the future. This first-order condition also implies that the ratio of any two asset prices is a martingale under an appropriately constructed probability distribution.

Price ratios arise naturally when we choose a numeraire—i.e., denominate the value of an asset in terms of another asset. Given a numeraire, the construction of a new probability distribution is called a change of measure. Each choice of numeraire implies a change of measure under which asset price ratios are a martingale. The requirement that asset price ratios be a numeraire imposes a restriction on the behavior of asset price ratios and thus on asset prices.

Selecting different assets as numeraire gives rise to different standard asset pricing models. When a risk-free money-market account is the numeraire, the distribution that makes price ratios a martingale is the risk-neutral distribution. When a zero-coupon bond price is selected as numeraire, bond and interest rate forward prices are martingales.

The idea that asset price ratios are martingales can be used to simplify derivations of pricing formulas. The two components of the Black-Scholes formula, for example, can be separately derived, each using a different numeraire.

The fact that derivative pricing formulas are intimately connected with portfolio decisions by investors provides insight into the economics underlying derivative pricing models. For example, Warren Buffett's argument that the Black-Scholes put price gives unreasonable prices for very long-term puts must ultimately be interpretable in terms of the pricing of stocks and bonds.

## FURTHER READING

Risk-neutral pricing is implicit in the original option pricing derivation in Black and Scholes (1973). However, Cox and Ross (1976) were the first to systematically exploit the idea that one could price options as if investors were risk-neutral. The link between risk-neutral pricing and the consumption and portfolio choice problems was first articulated in Harrison and Kreps (1979). Finally, the systematic development of the martingale approach to pricing is presented in Geman et al. (1995). Warren Buffett's discussion of his option writing strategy is in Buffett (2009; see especially pp. 19-21).

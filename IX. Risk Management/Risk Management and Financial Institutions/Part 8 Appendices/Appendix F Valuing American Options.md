---
title: "Appendix F: Valuing American Options"
parent_directory: "IX. Risk Management/Risk Management and Financial Institutions/Part 8 Appendices"
formatted: "2025-12-21 03:50:00 AM"
formatter_model: "claude-sonnet-4"
cli-tool: "claude-code"
primary_tags:
  - american options valuation
  - binomial tree model
  - option pricing theory
secondary_tags:
   - early exercise decision
   - risk neutral pricing
   - greeks calculation
   - put option valuation
   - non-dividend-paying stock
cssclasses: academia
---

# Appendix F Valuing American Options

To value American-style options, we divide the life of the option into  $n$  time steps of length  $\Delta t$ . Suppose that the asset price at the beginning of a step is  $S$ . At the end of the time step it moves up to  $Su$  with probability  $p$  and down to  $Sd$  with probability  $1 - p$ . For an investment asset that provides no income the values of  $u$ ,  $d$ , and  $p$  are given by

$$
u = e^{\sigma \sqrt{\Delta t}} \qquad d = \frac{1}{u} \qquad p = \frac{a - d}{u - d}
$$

with

$$
a = e^{r \Delta t}
$$

where $r$ is the risk-free rate and $\sigma$ is the volatility.

```d2
direction: right

S: Stock Price $S$ {
  shape: circle
  style.fill: "#e3f2fd"
}

up: ↑ $uS$ (prob $p$) {
  shape: circle
  style.fill: "#c8e6c9"
}

down: ↓ $dS$ (prob $1-p$) {
  shape: circle
  style.fill: "#ffcdd2"
}

S -> up: Up move
S -> down: Down move

note: American options can be exercised early at any node {
  shape: hexagon
  style.fill: "#fff3e0"
}
```

**Figure F.2: Basic Binomial Tree Structure for American Options**

At each node, the option value is the maximum of:
- **Intrinsic value**: Immediate exercise payoff
- **Continuation value**: Expected value of holding to next period

Figure F.1 shows the tree constructed for valuing a five-month American put option on a non-dividend-paying stock where the initial stock price is 50, the strike price is 50, the risk-free rate is $10\%$, and the volatility is $40\%$. In this case, there are five steps so that $\Delta t = 0.08333$, $u = 1.1224$, $d = 0.8909$, $a = 1.0084$, and $p = 0.5073$. The upper number at each node is the stock price and the lower number is the value of the option.

At the final nodes of the tree, the option price is its intrinsic value. For example, at node G, the option price is $50 - 35.36 = 14.64$. At earlier nodes, we first calculate a value assuming that the option is held for a further time period of length $\Delta t$ and then check to see whether early exercise is optimal. Consider first node E. If the option is held for a further time period, it will be worth 0.00 if there is an up move (probability: $p$) and 5.45 if there is a down move (probability: $1 - p$). The expected value in time $\Delta t$ is therefore $0.5073 \times 0 + 0.4927 \times 5.45$ or 2.686, and the 2.66 value at node E is calculated by discounting this at the risk-free rate of $10\%$ for one month. The option should not be exercised at node E as the payoff from early exercise would be zero. Consider next node A. A calculation similar to that just given shows that, assuming it is held for a further time period, the option's value at node A is 9.90. If exercised, its value is $50 - 39.69 = 10.31$. In this case, it should be exercised and the value of being at node A is 10.31.

At each node: Upper value = Underlying asset price Lower value = Option price Shading indicates where option is exercised.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/050de8ff19eb3daf4b45d2b0e183cdf10900261a4f137715f0ccc1b38162094d.jpg)

Figure F.1 Binomial Tree for American Put on Non-Dividend-Paying Stock

Continuing to work back from the end of the tree to the beginning, the value of the option at the initial node $D$ is found to be 4.49. As the number of steps on the tree is increased, the accuracy of the option price increases. With 30, 50, and 100 time steps, we get values for the option of 4.263, 4.272, and 4.278, respectively.

To calculate delta, we consider the two nodes at time $\Delta t$. In our example, as we move from the lower node to the upper node, the option price changes from 6.96 to 2.16 and the stock price changes from 44.55 to 56.12. The estimate of delta is the change in the option price divided by the change in the stock price:

$$
\mathrm{Delta} = \frac{2.16 - 6.96}{56.12 - 44.55} = -0.41
$$

To calculate gamma we consider the three nodes at time $2\Delta t$. The delta calculated from the upper two nodes (C and F) is $-0.241$. This can be regarded as the delta for a stock price of $(62.99 + 50)/2 = 56.49$. The delta calculated from the lower two nodes (B and C) is $-0.639$. This can be regarded as the delta for a stock price of $(50 + 39.69)/2 = 44.84$. The estimate of gamma is the change in delta divided by the change in the stock price:

$$
\mathrm{Gamma} = \frac{-0.241 - (-0.639)}{56.49 - 44.84} = 0.034
$$

We estimate theta from nodes D and C as

$$
\Theta = \frac{3.77 - 4.49}{2 \times 0.08333}
$$

or $-4.30$ per year. This is $-0.0118$ per calendar day. Vega is estimated by increasing the volatility, constructing a new tree, and observing the effect of the increased volatility on the option price. Rho is calculated similarly.

When the asset underlying the option provides a yield at rate $q$, the procedure is exactly the same except that $a = e^{(r - q)\Delta t}$ instead of $e^{r\Delta t}$ in the equation for $p$. (When the asset is a foreign currency $q$ is set equal to the foreign risk-free rate.) When the option is on the forward or futures price, $a$ is set equal to one and the tree shows the forward or futures price at each node. The calculations we have described can be done using the RMFI software, available on the author's website, by selecting Option Type: Binomial American. Binomial trees and other numerical procedures are described more fully in Hull (2022).

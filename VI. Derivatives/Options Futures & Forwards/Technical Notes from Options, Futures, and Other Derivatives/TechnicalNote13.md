---
title: Technical Note 13 - Efficient Procedure For Valuing American-Style Lookback Options
tags:
  - american_options
  - lookback_options
  - binomial_tree
  - option_valuation
  - derivatives
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
key_concepts:
  - American-style lookback option valuation
  - Binomial tree approach with price ratios
  - Rollback procedure with stock price units
cssclasses: academia
---

# Technical Note 13 - Efficient Procedure For Valuing American-Style Lookback Options

**Author:** John Hull
**Source:** Options, Futures, and Other Derivatives

A number of researchers have suggested an interesting and instructive approach to valuing lookback options.² Consider an American-style lookback put. The initial stock price is $50, the stock price volatility is $40\%$, the risk-free interest rate is $10\%$, and the life of the option is 3 months. We suppose that three steps are used to model the stock price movements.

When exercised, the option provides a payoff equal to the excess of the maximum stock price over the current stock price. We define $G(t)$ as the maximum stock price achieved up to time $t$ and set

$$
Y(t) = \frac{G(t)}{S(t)}
$$

We next use the Cox, Ross, and Rubinstein tree for the stock price to produce a tree for $Y$. Initially, $Y = 1$ because $G = S$ at time zero. If there is an up movement in $S$ during the first time step, both $G$ and $S$ increase by a proportional amount $u$ and $Y = 1$. If there is a down movement in $S$ during the first time step, $G$ stays the same, so that $Y = 1/d = u$. Continuing with these types of arguments, we produce the tree shown in Figure 1 for $Y$. (Note that in this example $\Delta t = 0.08333$, $u = 1.1224$, $d = 0.8909$, $a = 1.0084$, and $p = 0.5073$). The rules defining the geometry of the tree are

1. When $Y = 1$ at time $t$, it is either $u$ or $1$ at time $t + \Delta t$.
2. When $Y = u^m$ at time $t$ for $m \geq 1$, it is either $u^{m+1}$ or $u^{m-1}$ at time $t + \Delta t$.

An up movement in $Y$ corresponds to a down movement in the stock price, and vice versa. The probability of an up movement in $Y$ is, therefore, always $1 - p$ and the probability of a down movement in $Y$ is always $p$.

We use the tree to value the American lookback option in units of the stock price rather than in dollars. In dollars, the payoff from the option is

$$
SY - S
$$

In stock price units, the payoff from the option, therefore, is

$$
Y - 1
$$

We roll back through the tree in the usual way, valuing a derivative that provides this payoff except that we adjust for the differences in the stock price (i.e., the unit of measurement) at the nodes. If $f_{ij}$ is the value of the lookback at the $j$th node at time $i\Delta t$ and $Y_{ij}$ is the value of $Y$ at this node, the rollback procedure gives

$$
f_{ij} = \max\left(Y_{ij} - 1, e^{-r\Delta t}\left[(1-p)f_{i+1,j+1}d + pf_{i+1,j-1}u\right]\right)
$$

when $j \geq 1$

Note that $f_{i+1,j+1}$ is multiplied by $d$ and $f_{i+1,j-1}$ is multiplied by $u$ in this equation. This takes into account that the stock price at node $(i,j)$ is the unit of measurement. The stock price at node $(i+1,j+1)$, which is the unit of measurement for $f_{i+1,j+1}$ is $d$ times the stock price at node $(i,j)$ and the stock price at node $(i+1,j-1)$, which is the unit of measurement for $f_{i+1,j-1}$, is $u$ times the stock price at node $(i,j)$.

Similarly, when $j = 0$ the rollback procedure gives

$$
f_{ij} = \max\left(Y_{ij} - 1, e^{-r\Delta t}\left[(1-p)f_{i+1,j+1}d + pf_{i+1,j}u\right]\right)
$$

The calculations for our example are shown in Figure 1. The tree estimates the value of the option at time zero (in stock price units) as 0.1094. This means that the dollar value of the option is $0.1094 \times 50 = 5.47$.

![](images/2ade1251a1f1ff2cd87a796253499b3ff425bf404c34dfdd9f3f3017a5c9433c.jpg)

Figure 1: Procedure for valuing an American-style lookback option.
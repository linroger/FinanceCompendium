---
aliases:
  - Proof That Forward and Futures Prices Are Equal When Interest Rates Are Constant
tags:
  - forward_prices
  - futures_prices
  - interest_rates
  - arbitrage
  - risk_free_rate
key_concepts:
  - Forward and futures price equality under constant rates
  - Investment strategy comparison for arbitrage proof
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 24 - Proof That Forward and Futures Prices Are Equal When Interest Rates Are Constant
---

# Proof That Forward and Futures Prices Are Equal When Interest Rates Are Constant

*Technical Note No. 24*  
*Options, Futures, and Other Derivatives*  
*John Hull*

This note demonstrates that forward and futures prices are equal when interest rates are constant. Suppose that a futures contract lasts for $n$ days and that $F_{i}$ is the futures price at the end of day $i$ ($0 < i < n$). Define $\delta$ as the risk-free rate per day (assumed constant). Consider the following strategy.$^{1}$

1. Take a long futures position of $e^{\delta}$ at the end of day 0 (i.e., at the beginning of the contract).
2. Increase long position to $e^{2\delta}$ at the end of day 1.
3. Increase long position to $e^{3\delta}$ at the end of day 2.

And so on.

**Table 1: The Investment Strategy to Show That Futures and Forward Prices Are Equal**

| Day | 0 | 1 | 2 | … | n-1 | n |
|-----|---|---|---|---|-----|---|
| Futures price | $F_0$ | $F_1$ | $F_2$ | … | $F_{n-1}$ | $F_n$ |
| Futures position | $e^{\delta}$ | $e^{2\delta}$ | $e^{3\delta}$ | … | $e^{n\delta}$ | 0 |
| Gain/loss | 0 | $(F_1-F_0)e^{\delta}$ | $(F_2-F_1)e^{2\delta}$ | … | … | $(F_n-F_{n-1})e^{n\delta}$ |
| Gain/loss compounded to day n | 0 | $(F_1-F_0)e^{n\delta}$ | $(F_2-F_1)e^{n\delta}$ | … | … | $(F_n-F_{n-1})e^{n\delta}$ |

This strategy is summarized in Table 1. By the beginning of day $i$, the investor has a long position of $e^{\delta i}$. The profit (possibly negative) from the position on day $i$ is

$$
(F_{i} - F_{i-1}) e^{\delta i}
$$

Assume that the profit is compounded at the risk-free rate until the end of day $n$. Its value at the end of day $n$ is

$$
(F_{i} - F_{i-1}) e^{\delta i} e^{(n-i)\delta} = (F_{i} - F_{i-1}) e^{n\delta}
$$

The value at the end of day $n$ of the entire investment strategy is therefore

$$
\sum_{i=1}^{n} (F_{i} - F_{i-1}) e^{n\delta}
$$

This is

$$
\begin{aligned}
&[(F_{n} - F_{n-1}) + (F_{n-1} - F_{n-2}) + \dots + (F_{1} - F_{0})] e^{n\delta} \\
&= (F_{n} - F_{0}) e^{n\delta}
\end{aligned}
$$

Because $F_{n}$ is the same as the terminal asset spot price, $S_{T}$, the terminal value of the investment strategy can be written

$$
(S_{T} - F_{0}) e^{n\delta}
$$

An investment of $F_{0}$ in a risk-free bond combined with the strategy involving futures just given yields

$$
F_{0} e^{n\delta} + (S_{T} - F_{0}) e^{n\delta} = S_{T} e^{n\delta}
$$

at time $T$. No investment is required for all the long futures positions described. It follows that an amount $F_{0}$ can be invested to give an amount $S_{T}e^{n\delta}$ at time $T$.

Suppose next that the forward price at the end of day 0 is $G_{0}$. Investing $G_{0}$ in a riskless bond and taking a long forward position of $e^{n\delta}$ forward contracts also guarantees an amount $S_{T}e^{n\delta}$ at time $T$. Thus, there are two investment strategies—one requiring an initial outlay of $F_{0}$ and the other requiring an initial outlay of $G_{0}$—both of which yield $S_{T}e^{n\delta}$ at time $T$. It follows that in the absence of arbitrage opportunities

$$
F_{0} = G_{0}
$$

In other words, the futures price and the forward price are identical. Note that in this proof there is nothing special about the time period of one day. The futures price based on a contract with weekly settlements is also the same as the forward price when corresponding assumptions are made.
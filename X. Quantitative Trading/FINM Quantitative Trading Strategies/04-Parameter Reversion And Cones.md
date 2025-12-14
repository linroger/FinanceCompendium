---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: PARAMETER REVERSION
linter-yaml-title-alias: PARAMETER REVERSION
---

# PARAMETER REVERSION

# From  $\mathbf{Q}$  Parameters To  $\mathbf{P}$  models

To the extent we trust our sense of what parameters in a model are reasonable, "stress" in model parameters equates to profit opportunity. How do we decide when parameters are truly stressed?

# Parameter Cones

Burghardt (1990) pointed out an elegant visual means to measure current parameter values of a parameter (in his case, volatility) against past quantiles.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/c63ea053-23b7-4cf1-85c7-7d8f7f218eb1/9c3630f56bf28f7f89abc5c3bffbde7d2cb47bb8c6b430963d1a7364a672ec61.jpg)  
FIGURE 1. Volatility cones show recent vols are fairly normal, except perhaps at the 60 day scale.

# Taxonomy Of Reversion

Parameters that tend to revert include (some) 10-Q financial accounting ratios, volatility surfaces and varvol, yield curve shapes, default rates and risks, and general correlation.

Parameters that revert, but not reliably, include a few other financial accounting ratios, FX fundamentals, betas and pairwise correlations, and post-shock prices.

# Beware Of Regime Shifts

The less well a model fits the market, and the more parameters it has, the likelier it is to fall victim to apparent changes in regime that have no economic basis. This can lead to an optimization algorithm finding jumps in model parameters that ultimately lead to noise trading or worse.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/c63ea053-23b7-4cf1-85c7-7d8f7f218eb1/8b5df3ea5ed9f57d996fd5cf13f01cb7f73da3ee8a59a5cb4e3975e97a355e64.jpg)  
FIGURE 2. An objective function used for parameter choice may change as time passes and incoming information is updated.

# The Uses Of Decaying Weights

Traditional statistics and parameter estimation from historical data have tended to use data windows (rolling ones if necessary). We see this in Burghardt's original definition of volatility cones.

In many cases, however, it is more reasonable to use some weighting scheme, where the weights decay toward zero as data items age. If we choose particular functional forms, particularly exponential weighting, computation costs can be greatly reduced as well.

# EWMA

The simplest example of this is the exponentially-weighted moving average where we take some  $0 < \lambda < 1$  and compute the average

$$
\bar {x} = \frac {\sum_ {n = 0} ^ {\infty} \lambda^ {n} x _ {- n}}{\sum_ {n = 0} ^ {\infty} \lambda^ {n}}
$$

# EWMA Update

This doesn't necessarily look cheap or simple, but it enjoys a 1-pass or online algorithm where we take (now for increasing  $n$ )

$$
\bar {x} _ {0} = x _ {0}
$$

and

$$
\bar {x} _ {n + 1} = \lambda \bar {x} _ {n} + (1 - \lambda) x _ {n + 1}
$$

# Update Algorithms

Online algorithms, also known as update algorithms are algorithms in which a small amount of state information is stored, and each incoming datum allows us to derive the new desired output, and new algorithm state, in relatively few computations.

# Nontrivial State Example

In the case of the EWMA, this state is simply the EWMA value  $\bar{x}$  itself. For exponentially-weighted (or even windowed) estimates of variance, the state is actually two data elements corresponding roughly to the sum of squares and sum of square differences.

Many stochastic control perspectives and machine learning algorithms make heavy use of update algorithms.
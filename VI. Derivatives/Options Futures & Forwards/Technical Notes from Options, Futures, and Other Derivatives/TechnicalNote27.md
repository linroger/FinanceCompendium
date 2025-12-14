---
aliases:
  - Calculation of Moments for Valuing Asian Options
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 27 - Calculation of Moments for Valuing Asian Options
linter-yaml-title-alias: Technical Note No. 27 - Calculation of Moments for Valuing Asian Options
---

# Technical Note No. 27* Options, Futures, and Other Derivatives John Hull

# Calculation of Moments for Valuing Asian Options

We consider the problem of calculating the first two moments of the arithmetic average price of an asset in a risk-neutral world when the average is calculated from discrete observations. Suppose that the asset price is observed at times  $T_{i}$  ( $1 \leq i \leq m$ ). We define variables as follows:

$S_{i}$  : The value of the asset at time  $T_{i}$

$F_{i}$  : The forward price of the asset for a contract maturing at time  $T_{i}$

$\sigma_{i}$  : The implied volatility for an option on the asset with maturity  $T_{i}$

$\rho_{ij}$  : Correlation between return on asset up to time  $T_{i}$  and the return on the asset up to time  $T_{j}$

$P$  : Value of the arithmetic average

$M_{1}$  : First moment of  $P$  in a risk-neutral world

$M_2$  : Second moment of  $P$  in a risk-neutral world

With these definitions

$$
M _ {1} = \frac {1}{m} \sum_ {i = 1} ^ {m} F _ {i}
$$

Also

$$
P ^ {2} = \frac {1}{m ^ {2}} \sum_ {i = 1} ^ {m} \sum_ {j = 1} ^ {m} S _ {i} S _ {j}
$$

In this case

$$
\hat {E} (S _ {i} S _ {j}) = F _ {i} F _ {j} e ^ {\rho_ {i j} \sigma_ {i} \sigma_ {j}} \sqrt {T _ {i} T _ {j}}
$$

It can be shown that when  $i \leq j$

$$
\rho_ {i j} = \frac {\sigma_ {i} \sqrt {T _ {i}}}{\sigma_ {j} \sqrt {T _ {j}}}
$$

so that

$$
\hat {E} (S _ {i} S _ {j}) = F _ {i} F _ {j} e ^ {\sigma_ {i} ^ {2} T _ {i}}
$$

and

$$
M _ {2} = \frac {1}{m ^ {2}} \left[ \sum_ {i = 1} ^ {m} F _ {i} ^ {2} e ^ {\sigma_ {i} ^ {2} T _ {i}} + 2 \sum_ {j = 1} ^ {m} \sum_ {i = 1} ^ {j - 1} F _ {i} F _ {j} e ^ {\sigma_ {i} ^ {2} T _ {i}} \right]
$$
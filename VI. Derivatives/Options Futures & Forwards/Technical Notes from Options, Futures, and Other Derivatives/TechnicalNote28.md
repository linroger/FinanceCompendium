---
aliases:
  - Calculation of Moments for Valuing Basket Options
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 28 - Calculation of Moments for Valuing Basket Options
linter-yaml-title-alias: Technical Note No. 28 - Calculation of Moments for Valuing Basket Options
---

# Technical Note No. 28*  

Options, Futures, and Other Derivatives  
John Hull

# Calculation of Moments for Valuing Basket Options

Consider the problem of calculating the first two moments of the value of a basket of assets at a future time,  $T$ , in a risk-neutral world. The price of each asset in the basket is assumed to be lognormal. Define

n : The number of assets

$S_{i}$  : The value of the  $i$ th asset at time  $T^{1}$

$F_{i}$  : The forward price of the  $i$ th asset for a contract maturing at time  $T$ .

$\sigma_{i}$  : The volatility of the  $i$ th asset between time zero and time  $T$

$\rho_{ij}$  : Correlation between returns from the  $i$ th and  $j$ th asset

P : Value of basket at time T

$M_{1}$  : First moment of  $P$  in a risk-neutral world

$M_2$  : Second moment of  $P$  in a risk-neutral world

Because  $P = \sum_{i=1}^{n} S_i$ ,  $\hat{E}(S_i) = F_i$ ,  $M_1 = \hat{E}(P)$  and  $M_2 = \hat{E}(P^2)$  where  $\hat{E}$  denotes expected value in a risk-neutral world, it follows that

$$
M _ {1} = \sum_ {i = 1} ^ {n} F _ {i}
$$

Also,

$$
P ^ {2} = \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} S _ {i} S _ {j}
$$

From the properties of lognormal distributions

$$
\hat {E} (S _ {i} S _ {j}) = F _ {i} F _ {j} e ^ {\rho_ {i j} \sigma_ {i} \sigma_ {j} T}
$$

Hence

$$
M _ {2} = \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} F _ {i} F _ {j} e ^ {\rho_ {i j} \sigma_ {i} \sigma_ {j} T}
$$
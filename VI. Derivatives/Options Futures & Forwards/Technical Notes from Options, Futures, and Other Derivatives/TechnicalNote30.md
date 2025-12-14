---
aliases:
  - The Return for a Security Dependent on Multiple sources of Uncertainty
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 30 - The Return for a Security Dependent on Multiple sources of Uncertainty
linter-yaml-title-alias: Technical Note No. 30 - The Return for a Security Dependent on Multiple sources of Uncertainty
---

# Technical Note No. 30*  

Options, Futures, and Other Derivatives  
John Hull

# The Return for a Security Dependent on Multiple sources of Uncertainty

In this Note we prove a result relating the excess return to market prices of risk when there are multiple sources of uncertainty.

Suppose there are  $n$  stochastic variables following Wiener processes. Consider  $n + 1$  traded securities whose prices depend on some or all of the  $n$  stochastic variables. Define  $f_{j}$  as the price of the  $j$ th security ( $1 \leq j \leq n + 1$ ). We assume that no dividends or other income is paid by the  $n + 1$  traded securities.<sup>1</sup> It follows from Ito's lemma in Technical Note 29 that the securities follow processes of the form

$$
d f _ {j} = \mu_ {j} f _ {j} d t + \sum_ {i = 1} ^ {n} \sigma_ {i j} f _ {j} d z _ {i} \tag {1}
$$

Since there are  $n + 1$  traded securities and  $n$  Wiener processes, it is possible to form an instantaneously riskless portfolio,  $\Pi$ , using the securities. Define  $k_{j}$  as the amount of the  $j$ th security in the portfolio, so that

$$
\Pi = \sum_ {j = 1} ^ {n + 1} k _ {j} f _ {j} \tag {2}
$$

The  $k_{j}$  must be chosen so that the stochastic components of the returns from the securities are eliminated. From equation (1) this means that

$$
\sum_ {j = 1} ^ {n + 1} k _ {j} \sigma_ {i j} f _ {j} = 0 \tag {3}
$$

for  $1 \leq i \leq n$ . The return from the portfolio is then given by

$$
d \Pi = \sum_ {j = 1} ^ {n + 1} k _ {j} \mu_ {j} f _ {j} d t
$$

The cost of setting up the portfolio is

$$
\sum_ {j = 1} ^ {n + 1} k _ {j} f _ {j}
$$

If there are no arbitrage opportunities, the portfolio must earn the risk-free interest rate, so that

$$
\sum_ {j = 1} ^ {n + 1} k _ {j} \mu_ {j} f _ {j} = r \sum_ {j = 1} ^ {n + 1} k _ {j} f _ {j} \tag {4}
$$

or

$$
\sum_ {j = 1} ^ {n + 1} k _ {j} f _ {j} \left(\mu_ {j} - r\right) = 0 \tag {5}
$$

Equations (3) and (5) can be regarded as  $n + 1$  homogeneous linear equations in the  $k_j$ 's. The  $k_j$ 's are not all zero. From a well-known theorem in linear algebra, equations (3) and (5) can be consistent only if for all  $j$

$$
f _ {j} \left(\mu_ {j} - r\right) = \sum_ {i = 1} ^ {n} \lambda_ {i} \sigma_ {i j} f _ {j} \tag {6}
$$

or

$$
\mu_ {j} - r = \sum_ {i = 1} ^ {n} \lambda_ {i} \sigma_ {i j} \tag {7}
$$

for some  $\lambda_{i}$  ( $1 \leq i \leq n$ ) that are dependent only on the state variables and time. Dropping the  $j$  subscript, this shows that for any security  $f$  dependent on the  $n$  stochastic variables

$$
d f = \mu f d t + \sum_ {i = 1} ^ {n} \sigma_ {i} f d z _ {i}
$$

where

$$
\mu - r = \sum_ {i = 1} ^ {n} \lambda_ {i} \sigma_ {i}
$$

This proves the required result.
---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Option Pricing and Implied Volatility
linter-yaml-title-alias: Option Pricing and Implied Volatility
---

# Option Pricing and Implied Volatility

# 1. Black-Scholes Model of Option Pricing

# 1.1. Parameters

1. Stock price:  $S$
2. Strike price:  $K$
3. Interest rate on risk-free asset (continuously compounded):  $r$
4. Maturity:  $T$
5. Stock volatility:  $\sigma$

# 1.2. Optimal Pricing Formula

1. Delta hedging.

$$
d _ {1} (S, K, T, r, \sigma) = \frac {\ln \left[ \frac {S}{K} \right] + \left(r + \frac {\sigma^ {2}}{2}\right) \cdot T}{\sigma \cdot \sqrt {T}}
$$

$$
d _ {2} (S, K, T, r, \sigma) = d _ {1} - \sigma \cdot \sqrt {T}
$$

2. Standard normal cumulative distribution function.

$$
\Phi (x) := \frac {1}{\sigma \cdot \sqrt {2 \pi}} \cdot \int_ {- \infty} ^ {x} \exp \left(- \frac {1}{2} \cdot u ^ {2}\right) d u
$$

3. Call option price.

$$
c = S \cdot \Phi \big (d _ {1} (S, K, T, r, \sigma) \big) - K \cdot \exp (- r \cdot T) \cdot \Phi \big (d _ {2} (S, K, T, r, \sigma) \big)
$$

4. Put option price.

$$
p = - S \cdot \Phi \bigl (- d _ {1} (S, K, T, r, \sigma) \bigr) + K \cdot \exp (- r \cdot T) \cdot \Phi \bigl (- d _ {2} (S, K, T, r, \sigma) \bigr)
$$

# 1.2.1. Implied Volatility

1. Suppose we observe option prices  $(c, p)$ .
2. Question: What is the volatility parameter  $\sigma$  implied by the Black-Scholes model?
3. Answer: It is the volatility parameter that solves a non-linear equation.

$$
c = S \cdot \Phi \left(d _ {1} (S, K, T, r, \sigma_ {c} ^ {*})\right) - K \cdot \exp (- r \cdot T) \cdot \Phi \left(d _ {2} (S, K, T, r, \sigma_ {c} ^ {*})\right)
$$

$$
p = - S \cdot \Phi \left(- d _ {1} (S, K, T, r, \sigma_ {p} ^ {*})\right) + K \cdot \exp (- r \cdot T) \cdot \Phi \left(- d _ {2} (S, K, T, r, \sigma_ {p} ^ {*})\right)
$$

5. Use non-linear equation solve function to solve for implied volatility values  $\left(\sigma_c^*,\sigma_p^*\right)$

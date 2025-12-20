---
title: Technical Note No. 2 - Properties of Lognormal Distribution
aliases:
  - Properties of Lognormal Distribution
tags:
  - lognormal_distribution
  - probability_density
  - moments_calculation
  - stock_price_modeling
  - expected_value
  - variance
key_concepts:
  - Lognormal distribution properties and moments
  - Stock price modeling with lognormal distribution
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
---

# Technical Note No. 2 - Properties of Lognormal Distribution

A variable $V$ has a lognormal distribution if $X = \ln(V)$ has a normal distribution. Suppose that $X$ is $\phi(m, s^2)$; that is, it has a normal distribution with mean $m$ and standard deviation $s$. The probability density function for $X$ is

$$
\frac{1}{\sqrt{2\pi}s} \exp\left(-\frac{(X - m)^2}{2s^2}\right)
$$

The probability density function for $V$ is therefore

$$
h(V) = \frac{1}{\sqrt{2\pi}sV} \exp\left(-\frac{[\ln(V) - m]^2}{2s^2}\right)
$$

Consider the nth moment of $V$

$$
\int_{0}^{+\infty} V^n h(V) dV
$$

Substituting $V = \exp X$ this is

$$
\begin{aligned}
\int_{-\infty}^{+\infty} \frac{\exp(nX)}{\sqrt{2\pi}s} \exp\left(-\frac{(X - m)^2}{2s^2}\right) dX &= \int_{-\infty}^{+\infty} \frac{1}{\sqrt{2\pi}s} \exp\left(-\frac{(X - m - ns^2)^2}{2s^2}\right) \exp\left(\frac{2mns^2 + n^2s^4}{2s^2}\right) dX \\
&= \exp(nm + n^2s^2/2) \int_{-\infty}^{+\infty} \frac{1}{\sqrt{2\pi}s} \exp\left(-\frac{(X - m - ns^2)^2}{2s^2}\right) dX
\end{aligned}
$$

The integral in this expression is the integral of a normal density function with mean $m + ns^2$ and standard deviation $s$ and is therefore 1.0. It follows that

$$
\int_{0}^{+\infty} V^n h(V) dV = \exp(nm + n^2s^2/2) \tag{1}
$$

The expected value of $V$ is given when $n = 1$. It is

$$
\exp(m + s^2/2)
$$

The formula for the mean of a stock price at time $T$ in the text is given by setting $m = \ln(S_0) + (\mu - \sigma^2/2)T$ and $s = \sigma\sqrt{T}$

The variance of $V$ is $E(V^2) - [E(V)]^2$. Setting $n = 2$ in equation (1) we get

$$
E(V^2) = \exp(2m + 2s^2)
$$

The variance of $V$ is therefore

$$
\exp(2m + 2s^2) - \exp(2m + s^2) = \exp(2m + s^2)[\exp(s^2) - 1]
$$

The formula for the variance of a stock price at time $T$ in the text is given by setting $m = \ln(S_0) + (\mu - \sigma^2/2)T$ and $s = \sigma\sqrt{T}$.
---
cssclasses: academia
title: "Technical Note 12 - Cumulative Non-Central Chi Square Distribution"
tags:
  - non_central_chi_square
  - statistical_distributions
  - gamma_function
  - numerical_methods
  - derivatives_pricing
  - probability_calculations
key_concepts:
  - "Ding's algorithm for non-central chi square distribution"
  - "Gamma function computation and properties"
  - "Cumulative probability series expansion"
parent_directory: "Technical Notes from Options, Futures, and Other Derivatives"
---

# Technical Note 12 - Cumulative Non-Central Chi Square Distribution

Options, Futures, and Other Derivatives  
John Hull

## The Calculation of the Cumulative Non-Central Chi Square Distribution

We present an algorithm proposed by Ding (1992).<sup>1</sup> Suppose that the non-centrality parameter is $v$ and the number of degrees of freedom is $k$ and we require the cumulative probability that the variable will be less than $z$. We define

$$
t_{0} = \frac{1}{\Gamma(k/2 + 1)} \left(\frac{z}{2}\right)^{k/2} \exp\left(-\frac{z}{2}\right)
$$

$$
t_{i} = t_{i-1} \frac{z}{k + 2i}
$$

We also define

$$
w_{0} = u_{0} = \exp(-v/2)
$$

$$
u_{i} = \frac{u_{i-1} v}{2i}
$$

$$
w_{i} = w_{i-1} + u_{i}
$$

The required probability that the variable with the non-central chi square distribution will be less than $z$ is

$$
\sum_{i=0}^{\infty} w_{i} t_{i}
$$

By taking a sufficient number of terms in this series the required accuracy can be obtained.

## The Gamma Function

In the above formulas $\Gamma(\cdot)$ is the gamma function. It has the property that $\Gamma(n) = (n-1)!$ when $n$ is an integer. In general $\Gamma(x+1) = x\Gamma(x)$. The computation of the gamma function is discussed in Numerical Recipes.²

$$
\Gamma(x) = \left[ \frac{\sqrt{2\pi}}{x} \left(p_{0} + \sum_{n=1}^{6} \frac{p_{n}}{x + n}\right) \right] (x + 5.5)^{x + 0.5} e^{-(x + 5.5)}
$$

where

$$
p_{0} = 1.000000000190015
$$

$$
p_{1} = 76.18009172947146
$$

$$
p_{2} = -86.50532032941677
$$

$$
p_{3} = 24.01409824083091
$$

$$
p_{4} = -1.231739572450155
$$

$$
p_{5} = 1.208650973866179 \times 10^{-3}
$$

$$
p_{6} = -5.395239384953 \times 10^{-6}
$$

To avoid overflow problems it is best to compute $\ln\Gamma(x)$ rather than $\Gamma(x)$.
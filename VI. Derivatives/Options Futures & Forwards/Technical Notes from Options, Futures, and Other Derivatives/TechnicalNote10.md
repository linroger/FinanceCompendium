---
title: "Technical Note 10 - Cornish-Fisher Expansion to Estimate VaR"
tags:
  - cornish_fisher_expansion
  - value_at_risk
  - skewness_adjustment
  - portfolio_risk
  - statistical_methods
  - derivatives_pricing
key_concepts:
  - "Cornish-Fisher expansion for non-normal distributions"
  - "VaR estimation with skewness adjustment"
  - "Portfolio risk moments calculation"
parent_directory: "Options Futures & Forwards"
cssclasses: academia
---

# Technical Note 10 - Cornish-Fisher Expansion to Estimate VaR

Options, Futures, and Other Derivatives  
John Hull

## The Cornish-Fisher expansion to estimate VaR

As indicated in the text, $\alpha_{i}$'s and $\beta_{ij}$'s can be defined so that $\Delta P$ for a portfolio containing options is approximated as

$$
\Delta P = \sum_{i=1}^{n} \alpha_{i} \Delta x_{i} + \sum_{i=1}^{n} \sum_{j=1}^{n} \beta_{ij} \Delta x_{i} \Delta x_{j}
$$

Define $\sigma_{ij}$ as the covariance between variable $i$ and $j$:

$$
\sigma_{ij} = \rho_{ij} \sigma_{i} \sigma_{j}
$$

It can be shown that when the $\Delta x_{i}$ are multivariate normal

$$
E(\Delta P) = \sum_{i,j} \beta_{ij} \sigma_{ij}
$$

$$
E[(\Delta P)^{2}] = \sum_{i,j} \alpha_{i} \alpha_{j} \sigma_{ij} + \sum_{i,j,k,l} \beta_{ij} \beta_{kl} (\sigma_{ij} \sigma_{kl} + \sigma_{ik} \sigma_{jl} + \sigma_{il} \sigma_{jk})
$$

$$
E[(\Delta P)^{3}] = 3 \sum_{i,j,k,l} \alpha_{i} \alpha_{j} \beta_{kl} (\sigma_{ij} \sigma_{kl} + \sigma_{ik} \sigma_{jl} + \sigma_{il} \sigma_{jk}) + \sum_{i_{1},i_{2},i_{3},i_{4},i_{5},i_{6}} \beta_{i_{1}i_{2}} \beta_{i_{3}i_{4}} \beta_{i_{5}i_{6}} Q
$$

The variable, $Q$, consists of fifteen terms of the form $\sigma_{k_1k_2}\sigma_{k_3k_4}\sigma_{k_5k_6}$ where $k_{1}, k_{2}, k_{3}, k_{4}, k_{5}$, and $k_{6}$ are permutations of $i_{1}, i_{2}, i_{3}, i_{4}, i_{5}$, and $i_{6}$.

Define $\mu_P$ and $\sigma_P$ as the mean and standard deviation of $\Delta P$ so that

$$
\mu_{P} = E(\Delta P)
$$

$$
\sigma_{P}^{2} = E[(\Delta P)^{2}] - [E(\Delta P)]^{2}
$$

The skewness of the probability distribution of $\Delta P$, $\xi_{P}$, is defined as

$$
\xi_{P} = \frac{1}{\sigma_{P}^{3}} E[(\Delta P - \mu_{P})^{3}] = \frac{E[(\Delta P)^{3}] - 3E[(\Delta P)^{2}]\mu_{P} + 2\mu_{P}^{3}}{\sigma_{P}^{3}}
$$

Using the first three moments of $\Delta P$, the Cornish-Fisher expansion estimates the $q$th percentile of the distribution of $\Delta P$ as

$$
\mu_{P} + w_{q} \sigma_{P}
$$

where

$$
w_{q} = z_{q} + \frac{1}{6}(z_{q}^{2} - 1)\xi_{P}
$$

and $z_{q}$ is qth percentile of the standard normal distribution $\phi(0,1)$.

## Example

Suppose that for a certain portfolio we calculate $\mu_{P} = -0.2$, $\sigma_{P} = 2.2$, and $\xi_{P} = -0.4$. If we assume that the probability distribution of $\Delta P$ is normal, the first percentile of the probability distribution of $\Delta P$ is

$$
-0.2 - 2.33 \times 2.2 = -5.326
$$

In other words, we are $99\%$ certain that

$$
\Delta P > -5.326
$$

When we use the Cornish-Fisher expansion to adjust for skewness and set $q = 0.01$, we obtain

$$
w_{q} = -2.33 - \frac{1}{6}(2.33^{2} - 1) \times 0.4 = -2.625
$$

so that the first percentile of the distribution is

$$
-0.2 - 2.625 \times 2.2 = -5.976
$$

Taking account of skewness, therefore, changes the VaR from 5.326 to 5.976.
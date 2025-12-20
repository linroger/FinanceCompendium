---
aliases:
  - Valuation of a Variance Swap
tags:
  - variance_swaps
  - derivatives_valuation
  - options_replication
  - risk_neutral_pricing
  - stochastic_volatility
key_concepts:
  - Variance swap valuation using options replication
  - Risk-neutral valuation of realized variance
  - Integration of European options for variance pricing
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 22 - Valuation of a Variance Swap
---

# Technical Note No. 22 - Valuation of a Variance Swap

*Options, Futures, and Other Derivatives*  
John Hull

This note proves the result in the text for the valuation of a variance swap. Suppose that the stock price follows process

$$
\frac{dS}{S} = (r - q)dt + \sigma dz
$$

in a risk-neutral world where $\sigma$ is itself stochastic. From Ito's lemma

$$
d\ln S = (r - q - \sigma^2/2)dt + \sigma dz
$$

By subtracting these two equations we obtain

$$
\frac{\sigma^2}{2}dt = \frac{dS}{S} - d\ln S
$$

Integrating between time 0 and time $T$, the realized average variance rate, $\overline{V}$, between time 0 and time $T$ is given by

$$
\frac{1}{2}\overline{V}T = \int_{0}^{T} \frac{dS}{S} - \ln\frac{S_T}{S_0}
$$

or

$$
\overline{V} = \frac{2}{T}\int_{0}^{T} \frac{dS}{S} - \frac{2}{T}\ln\frac{S_T}{S_0} \tag{1}
$$

Taking expectations in a risk-neutral world

$$
\hat{E}(\overline{V}) = \frac{2}{T}(r - q)T - \frac{2}{T}\hat{E}\left(\ln\frac{S_T}{S_0}\right)
$$

or

$$
\hat{E}(\overline{V}) = \frac{2}{T}\ln\frac{F_0}{S_0} - \frac{2}{T}\hat{E}\left(\ln\frac{S_T}{S_0}\right) \tag{2}
$$

where $F_0$ is the forward price of the asset for a contract maturing at time $T$.

Consider

$$
\int_{K = 0}^{S^*} \frac{1}{K^2} \max(K - S_T, 0)dK
$$

for some value $S^*$ of $S$. When $S^* < S_T$ this integral is zero. When $S^* > S_T$ it is

$$
\int_{K = S_T}^{S^*} \frac{1}{K^2}(K - S_T)dK = \ln\frac{S^*}{S_T} + \frac{S_T}{S^*} - 1
$$

Consider next

$$
\int_{K = S^*}^{\infty} \frac{1}{K^2} \max(S_T - K, 0)dK
$$

When $S^* > S_T$ this is zero. When $S^* < S_T$ it is

$$
\int_{K = S^*}^{S_T} \frac{1}{K^2}(S_T - K)dK = \ln\frac{S^*}{S_T} + \frac{S_T}{S^*} - 1
$$

From these results it follows that

$$
\int_{K = 0}^{S^*} \frac{1}{K^2} \max(K - S_T, 0)dK + \int_{K = S^*}^{\infty} \frac{1}{K^2} \max(S_T - K, 0)dK = \ln\frac{S^*}{S_T} + \frac{S_T}{S^*} - 1
$$

for all values of $S^*$ so that

$$
\ln\frac{S_T}{S^*} = \frac{S_T}{S^*} - 1 - \int_{K = 0}^{S^*} \frac{1}{K^2} \max(K - S_T, 0)dK - \int_{K = S^*}^{\infty} \frac{1}{K^2} \max(S_T - K, 0)dK \quad (3)
$$

This shows that a variable that pays off $\ln S_T$ can be replicated using options. This result can be used in conjunction with equation (1) to provide a replicating portfolio for $\overline{V}$. Taking expectations in a risk-neutral world in equation (3)

$$
\hat{E}\left(\ln\frac{S_T}{S^*}\right) = \frac{F_0}{S^*} - 1 - \int_{K = 0}^{S^*} \frac{1}{K^2} e^{RT} p(K)dK - \int_{K = S^*}^{\infty} \frac{1}{K^2} e^{RT} c(K)dK \tag{4}
$$

where $c(K)$ and $p(K)$ are the prices of European call and put options with strike price $K$ and maturity $T$ and $R$ is the risk-free interest rate for a maturity of $T$.

Combining equations (2) and (4) and noting that

$$
\hat{E}\left(\ln\frac{S_T}{S_0}\right) = \ln\frac{S^*}{S_0} + \hat{E}\left(\ln\frac{S_T}{S^*}\right)
$$

$$
\begin{array}{l} 
\hat{E}(\overline{V}) = \frac{2}{T}\ln\frac{F_0}{S_0} - \frac{2}{T}\ln\frac{S^*}{S_0} \\ 
- \frac{2}{T}\left[ \frac{F_0}{S^*} - 1 \right] + \frac{2}{T}\left[ \int_{K = 0}^{S^*} \frac{1}{K^2} e^{RT} p(K)dK + \int_{K = S^*}^{\infty} \frac{1}{K^2} e^{RT} c(K)dK \right] 
\end{array}
$$

which reduces to

$$
\hat{E}(\overline{V}) = \frac{2}{T}\ln\frac{F_0}{S^*} - \frac{2}{T}\left[ \frac{F_0}{S^*} - 1 \right] + \frac{2}{T}\left[ \int_{K = 0}^{S^*} \frac{1}{K^2} e^{RT} p(K)dK + \int_{K = S^*}^{\infty} \frac{1}{K^2} e^{RT} c(K)dK \right]
$$

This is the result in the text.
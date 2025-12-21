---
title: Useful Formulas for 35100
primary_tags:
  - forward contracts
  - currency swaps
  - option pricing
  - black-scholes model
  - the greeks
secondary_tags:
  - put call parity
  - binomial trees
  - delta hedging
  - gamma
  - vega
  - rho
  - theta
  - risk neutral pricing
  - financial derivatives
  - quantitative finance
cssclasses: academia
---

# Useful Formulas for 35100

## Forward Contract, Currency

$$
F_{0,T} = M_{0} \times e^{(r_{\$} - r_{e})T}
$$

## Value of a Forward Contract

Value of a forward contract to sell the underlying at $F_{0,T}$:

$$
f_{t,T} = e^{-r_{\$} \times (T - t)} \times (F_{0,T} - F_{t,T})
$$

## Examples of Other Forward Contracts

- Stock with a fixed dividend yield $q$: $F_{0,T} = S_0 \times e^{(r - q)T}$
- Stock with known dividend: $F_{0,T} = (S_0 - D \times e^{-rT_1}) \times e^{rT}$
- Commodity with storage cost $U$: $F_{0,T} = (S_0 + PV(U)) \times e^{rT}$
- Commodity with % storage cost $u$: $F_{0,T} = S_0 \times e^{(r + u)T}$
- Commodity with % storage cost $u$, convenience yield $y$: $F_{0,T} = S_0 \times e^{(r + u - y)T}$

## Currency Swap Rate

Swap rate for one euro paid and $K$ dollars received for every six months for the next $T$ years:

$$
\text{Currency Swap Rate} = K = M_{0} \frac{e^{-r_{e} \times 0.5} + e^{-r_{e} \times 1} + \ldots + e^{-r_{e} \times T}}{e^{-r_{\$} \times 0.5} + e^{-r_{\$} \times 1} + \ldots + e^{-r_{\$} \times T}}
$$

## Value of Swap After Initiation

$$
V_{t}^{\text{swap}} = K \times \left(\sum_{i=1}^{n} e^{-r_{\$} (T_i - t)}\right) - M_{t} \times \left(\sum_{i=1}^{n} e^{-r_{e} (T_i - t)}\right)
$$

## Plain Vanilla Swap

Exchange of principal and coupons:

$$
K = M_{0} \times \frac{B^{e}(0, T)}{B^{\$}(0, T)}
$$

## Put-Call Parity

No dividends, European Options:

$$
\text{Put} = \text{Call} + e^{-r \times T} \times K - S_{0}
$$

## Binomial Trees

Example with one-period:

- Let $V_{1,u}$ be the value of the derivative when the stock goes up and $V_{1,d}$ be the value of the option when the stock goes down.
- Delta: $\Delta = \frac{V_{1,u} - V_{1,d}}{S_{1,u} - S_{1,d}}$
- $B_{0} = e^{-rT} \times (V_{1,u} - \Delta \times S_{1,u})$
- Value of option at time 0: $V_{0} = \Delta \times S_{0} + B_{0}$
- Risk-neutral pricing: $q^{*} = \frac{S_{0} \times e^{r \times T} - S_{1,d}}{S_{1,u} - S_{1,d}}$
- $V_{0} = e^{-rT}(q^{*}V_{1,u} + (1 - q^{*})V_{1,d})$

## Black-Scholes Formula

With known dividend yield $q$:

$$
c = S e^{-qT} N(d_{1}) - K e^{-rT} N(d_{2}); \quad p = K e^{-rT} N(-d_{2}) - S e^{-qT} N(-d_{1})
$$

Where:

$$
d_{1} = \frac{\ln(S/K) + (r - q + \sigma^{2}/2)T}{\sigma \sqrt{T}}; \quad d_{2} = d_{1} - \sigma \sqrt{T}
$$

## Option Sensitivities from Black-Scholes: "The Greeks"

### Delta

$$
\Delta = \frac{d\text{Option Price}}{dS} = \begin{cases} N(d_{1}) & \text{for Calls} \\ -N(-d_{1}) & \text{for Puts} \end{cases}
$$

### Gamma

$$
\Gamma = \frac{d\Delta}{dS} = \frac{e^{-qT} N'(d_{1})}{S \sigma \sqrt{T}} \quad \text{with } N'(x) = \frac{e^{\frac{-x^{2}}{2}}}{\sqrt{2 \pi}}
$$

### Theta

$$
\Theta = \frac{d\text{Option Price}}{dt} = \text{Long ugly formula}
$$

### Rho

$$
\text{Rho} = \frac{d\text{Option Price}}{dr} = \begin{cases} K T e^{-rT} N(d_{2}) > 0 & \text{for Calls} \\ -K T e^{-rT} N(-d_{2}) < 0 & \text{for Puts} \end{cases}
$$

### Vega

$$
\text{Vega} = \frac{d\text{Option Price}}{d\sigma} = S \sqrt{T} N'(d_{1}) > 0
$$
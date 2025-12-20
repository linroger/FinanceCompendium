---
aliases:
  - The Hull-White Two Factor Model
tags:
  - hull_white_model
  - two_factor_model
  - interest_rate_derivatives
  - term_structure
  - stochastic_differential_equations
key_concepts:
  - Two-factor interest rate modeling
  - Stochastic differential equations
  - Term structure volatility
  - Zero-coupon bond pricing
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note 14 - The Hull-White Two Factor Model
linter-yaml-title-alias: Technical Note 14 - The Hull-White Two Factor Model
---

# Technical Note 14 - The Hull-White Two Factor Model

*Options, Futures, and Other Derivatives, John Hull*

## Introduction

As explained in the text, Hull and White have proposed a model where the risk-neutral process for the short rate, $r$, is

$$
df(r) = [\theta(t) + u - af(r)]dt + \sigma_{1}dz_{1} \tag{1}
$$

where $u$ has an initial value of zero and follows the process

$$
du = -budt + \sigma_{2}dz_{2}
$$

As in the case of one-factor no-arbitrage models, the parameter $\theta(t)$ is chosen to make the model consistent with the initial term structure. The stochastic variable $u$ is a component of the reversion level of $r$ and itself reverts to a level of zero at rate $b$. The parameters $a$, $b$, $\sigma_1$, and $\sigma_2$ are constants and $dz_1$ and $dz_2$ are Wiener processes with instantaneous correlation $\rho$.

This model provides a richer pattern of term structure movements and a richer pattern of volatility structures than one-factor no-arbitrage models. For example, when $f(r) = r$, $a = 1$, $b = 0.1$, $\sigma_{1} = 0.01$, $\sigma_{2} = 0.0165$, and $\rho = 0.6$ the model exhibits, at all times, a "humped" volatility structure similar to that observed in the market. The correlation structure implied by the model is also plausible with these parameters.

When $f(r) = r$ the model is analytically tractable. The price at time $t$ of a zero-coupon bond that provides a payoff of \$1 at time $T$ is

$$
P(t, T) = A(t, T) \exp[-B(t, T)r - C(t, T)u]
$$

where

$$
B(t, T) = \frac{1}{a}[1 - e^{-a(T - t)}]
$$

$$
C(t, T) = \frac{1}{a(a - b)}e^{-a(T - t)} - \frac{1}{b(a - b)}e^{-b(T - t)} + \frac{1}{ab}
$$

and $A(t,T)$ is as given in the Appendix to this note.

The prices, $c$ and $p$, at time zero of European call and put options on a zero-coupon bond are given by

$$
c = LP(0, s)N(h) - KP(0, T)N(h - \sigma_{P})
$$

$$
p = KP(0, T)N(-h + \sigma_{P}) - LP(0, s)N(-h)
$$

where $T$ is the maturity of the option, $s$ is the maturity of the bond, $K$ is the strike price, $L$ is the bond's principal

$$
h = \frac{1}{\sigma_{P}}\ln\frac{LP(0, s)}{P(0, T)K} + \frac{\sigma_{P}}{2}
$$

and $\sigma_{P}$ is as given in the Appendix. Because this is a two-factor model, an option on a coupon-bearing bond cannot be decomposed into a portfolio of options on zero-coupon bonds as described in Technical Note 15. However, we can obtain an approximate analytic valuation by calculating the first two moments of the price of the coupon-bearing bond and assuming the price is lognormal.

## Constructing a Tree

To construct a tree for the model in equation (1), we simplify the notation by defining $x = f(r)$ so that

$$
dx = [\theta(t) + u - ax]dt + \sigma_{1}dz_{1}
$$

with

$$
du = -budt + \sigma_{2}dz_{2}
$$

Assuming $a \neq b$ we can eliminate the dependence of the first stochastic variable on the second by defining

$$
y = x + \frac{u}{b - a}
$$

so that

$$
dy = [\theta(t) - ay]dt + \sigma_{3}dz_{3}
$$

$$
du = -budt + \sigma_{2}dz_{2}
$$

where

$$
\sigma_{3}^{2} = \sigma_{1}^{2} + \frac{\sigma_{2}^{2}}{(b - a)^{2}} + \frac{2\rho\sigma_{1}\sigma_{2}}{b - a}
$$

and $dz_{3}$ is a Wiener process. The correlation between $dz_{2}$ and $dz_{3}$ is

$$
\frac{\rho\sigma_{1} + \sigma_{2}/(b - a)}{\sigma_{3}}
$$

A three-dimensional tree for $y$ and $u$ can be constructed on the assumption that $\theta(t) = 0$ and the initial values of $y$ and $u$ are zero. A methodology similar to that for one-factor models can then be used to construct the final tree by increasing the values of $y$ at time $i\Delta t$ by $\alpha_i$. In the $f(r) = r$ case, an alternative approach is to use the analytic expression for $\theta(t)$, given in the Appendix to this note.

Rebonato gives some examples of how the model can be calibrated and used in practice.²

## Appendix: The Functions in the Two-Factor Hull-White Model

The $A(t,T)$ function is

$$
\ln A(t, T) = \ln\frac{P(0, T)}{P(0, t)} + B(t, T)F(0, t) - \eta
$$

where

$$
\eta = \frac{\sigma_{1}^{2}}{4a}(1 - e^{-2at})B(t, T)^{2} - \rho\sigma_{1}\sigma_{2}[B(0, t)C(0, t)B(t, T) + \gamma_{4} - \gamma_{2}]
$$

$$
- \frac{1}{2}\sigma_{2}^{2}[C(0, t)^{2}B(t, T) + \gamma_{6} - \gamma_{5}]
$$

$$
\gamma_{1} = \frac{e^{-(a + b)T}[e^{(a + b)t} - 1]}{(a + b)(a - b)} - \frac{e^{-2aT}(e^{2at} - 1)}{2a(a - b)}
$$

$$
\gamma_{2} = \frac{1}{ab}\left[\gamma_{1} + C(t, T) - C(0, T) + \frac{1}{2}B(t, T)^{2} - \frac{1}{2}B(0, T)^{2} + \frac{t}{a} - \frac{e^{-a(T - t)} - e^{-aT}}{a^{2}}\right]
$$

$$
\gamma_{3} = -\frac{e^{-(a + b)t} - 1}{(a - b)(a + b)} + \frac{e^{-2at} - 1}{2a(a - b)}
$$

$$
\gamma_{4} = \frac{1}{ab}\left[\gamma_{3} - C(0, t) - \frac{1}{2}B(0, t)^{2} + \frac{t}{a} + \frac{e^{-at} - 1}{a^{2}}\right]
$$

$$
\gamma_{5} = \frac{1}{b}\left[\frac{1}{2}C(t, T)^{2} - \frac{1}{2}C(0, T)^{2} + \gamma_{2}\right]
$$

$$
\gamma_{6} = \frac{1}{b}\left[\gamma_{4} - \frac{1}{2}C(0, t)^{2}\right]
$$

where $F(t,T)$ is the instantaneous forward rate at time $t$ for maturity $T$.

The volatility function, $\sigma_P$, is

$$
\sigma_{P}^{2} = \int_{0}^{t}\{\sigma_{1}^{2}[B(\tau, T) - B(\tau, t)]^{2} + \sigma_{2}^{2}[C(\tau, T) - C(\tau, t)]^{2} 
+ 2\rho\sigma_{1}\sigma_{2}[B(\tau, T) - B(\tau, t)][C(\tau, T) - C(\tau, t)]\}d\tau
$$

This shows that $\sigma_P^2$ has three components. Define

$$
U = \frac{1}{a(a - b)}[e^{-aT} - e^{-at}]
$$

and

$$
V = \frac{1}{b(a - b)}[e^{-bT} - e^{-bt}]
$$

The first component of $\sigma_P^2$ is

$$
\frac{\sigma_{1}^{2}}{2a}B(t, T)^{2}(1 - e^{-2at})
$$

The second is

$$
\sigma_{2}^{2}\left[\frac{U^{2}}{2a}(e^{2at} - 1) + \frac{V^{2}}{2b}(e^{2bt} - 1) - 2\frac{UV}{a + b}(e^{(a + b)t} - 1)\right]
$$

The third is

$$
\frac{2\rho\sigma_{1}\sigma_{2}}{a}(e^{-at} - e^{-aT})\left[\frac{U}{2a}(e^{2at} - 1) - \frac{V}{a + b}(e^{(a + b)t} - 1)\right]
$$

Finally, the $\theta(t)$ function is

$$
\theta(t) = F_{t}(0, t) + aF(0, t) + \phi_{t}(0, t) + a\phi(0, t)
$$

where the subscript denotes a partial derivative and

$$
\phi(t, T) = \frac{1}{2}\sigma_{1}^{2}B(t, T)^{2} + \frac{1}{2}\sigma_{2}^{2}C(t, T)^{2} + \rho\sigma_{1}\sigma_{2}B(t, T)C(t, T)
$$
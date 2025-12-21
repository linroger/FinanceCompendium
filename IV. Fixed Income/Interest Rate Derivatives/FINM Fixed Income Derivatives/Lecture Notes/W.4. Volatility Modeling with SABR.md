---
aliases: [Volatility Modeling with SABR]
parent_directory: FINM Fixed Income Derivatives/Lecture Notes
formatted: 2025-12-21 10:30:00 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - SABR model
  - volatility modeling
  - stochastic volatility
secondary_tags:
  - implied volatility
  - volatility surface
  - black scholes model
  - delta hedging
cssclasses: academia
title: "W.4. Volatility Modeling with SABR"
---

# Week 4 - Volatility Modeling with SABR

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

$$\newcommand{\ivol}{\sigma_{\text{imp}}}$$

$$\newcommand{\vega}{\mathcal{V}}$$

$$\newcommand{\dwF}{dW^{[1]}}$$

$$\newcommand{\dwS}{dW^{[2]}}$$

# Volatility Models

## Motivation

As we have seen, 

* implied volatility is not constant for an underlying
* it varies substantially with **moneyness** (strike vs underlying) and time-to-expiration.
* and it is not stable over time!

Why do we care? Suppose you hold…

* a 3-month call struck at 100
* a 1-month call struck at 90

What is the right hedge ratio?

How is this impacted by the inconsistency across

* strikes
* maturity

## Volatility Surface and Skew

To ensure model (internal) consistency and hopefully (external) performance, we need a 

* volatility surface

In practice, there is much more focus on the 

* volatility curve / smile /skew

That is, the inconsistency of the volatility across strikes is more problematic than across maturities.

## This is about hedging as much as it is about pricing!

To know whether we are hedged, we need to know the true delta.

* Model inconsistency in implied vol will lead to model inconsistency in delta and gamma.

If implied vol were constant (as in BS) for a given point in time, we would still care how it shifts over time!

* Remember the "greek" vega
$$\vega \equiv \frac{\partial f}{\partial \ivol}$$

## Which Type of Model?

### Parametric 
* impose structure, 
* which leads to statistical power
* protects against overfitting.

Examples

* polynomials

### Non-parametric and semi-parametric
* flexibility
* "let the data speak"

Examples 

* splines
* regularized (ML) models

### Stochastic Volatility
* specify a stochastic process for volatility
* ensures no-arbitrage
* provides insights beyond the output

Examples

* Local volatility
* SABR
* ZABR?

### Modeling the Discount (yield) Curve

This discussion and its tradeoffs should feel familiar!

# SABR

## Stochastic Alpha Beta Rho (SABR)

The SABR model is used in conjunction with Black's Model.

* Can be used for generalized versions, such as the "Libor Market Model".
* Key is that SABR just handles the implied volatility.
* Provides an input for a pricing model, (most notably, Black.)

Instead of a constant diffusion term, $\sigma$, we want

* not just a function $\sigma(F,t)$
* but rather a stochastic process

## The Model

Suppose the underlying is the forward process, $F$.

* Typically using forwards or futures, as fitting with Black's model.

Under the **forward measure**, this process has no drift!

* So no "$dt$" term in the stochastic differential.
$$dF = \sigma F^{\beta}\dwF$$

Here, $\dwF$ is simply a pure Brownian motion as usual in these equations.

* The superscript is anticipating we will have a second such process.
* It is not an exponent.

### Role of Beta $\beta$

Note that $\beta$ is controlling whether this is

* lognormal: $\beta=1$
* normal: $\beta=0$
* CEV: $0<\beta<1$

Typically, this parameter is not estimated but is set according to the desired model.

* Could parameterize with a regression (in logs) but not typically done.

In interest-rate derivatives, it is typical to choose

* $\beta=0.5$

## Stochastic Volatility

Now onto the stochastic volatility. Model $\sigma$ as a process characterized by

$$d\sigma = \nu \sigma \dwS$$

So $\sigma$ is a geometric Brownian motion!

* Why geometric Brownian (lognormal) instead of Brownian (normal)?

## Role of alpha $\alpha$

Alpha, sometimes denoted $\sigma_0$, is the initialized value of this process.

* It is controlling the level of realized volatility.

In the formula below, 

* $\alpha$ is being written as $\sigma_0$ to emphasize this.

## Role of rho $\rho$

The process $\dwS$ is another Brownian motion, different than $\dwF$. 

* Remember the superscript is an identifier, not an exponent!
* They are not necessarily independent.

The parameter, $\rho$, governs the correlation between the two processes (shocks) $\dwF$ and $\dwS$.

### Question

Do you think $\rho$ will typically be positive or negative?

* Why?
* For all assets?

## Role of "nu" $\nu$

Note that $\nu$ is a constant (parameter), and it is the "vol" of the volatility process.

## The Equation

It can be shown that under these dynamics,

$$\ivol(F_0,K) = AB\frac{\phi}{\chi}$$

where, not joking,

<img src="../refs/options/SABRformula.png" width="600" />

### At-the-money

For an ATM option, $\ln(F_0/K)$ is zero, and we get

$$\ivol^*(F_0,K) = \frac{\sigma_0B}{F_0^{1-\beta}}$$

Money implementations make use of this fact to solve for $\alpha$ (denoted here $\sigma_0$) as a function of the other two parameters and the observed ATM implied vol $\ivol^*$:

$$\alpha = \alpha\left(\nu,\rho,\ivol^{*,\text{market}}\right)$$

This reduces the problem from 3 parameters to 2 parameters. 

* For nonlinear equations, even this modest reduction can be helpful.

### Benefit?

This function is a mess, but it is a closed-form solution!

* Traders may need to recompute the volatility curve every day / hour / second.
* A closed-form solution is attractive as it allows this frequent recalculation of the entire curve.

### Missing?

This function 

* has a parameter for expiration $T$
* but it is not a **function**.

What is the difference?

This is in line with what we mentioned above, the main goal is to model the vol curve, and glue together (incompatible?) slices to form the vol surface.

## Fitting SABR

Use observed market implied volatilities to fit SABR on a set of options.

1. Use the reference set of $(F_0,K,\ivol^{\text{mkt}})$.
2. Numerically try sets of parameters $(\alpha,\nu,\rho)$ 
	* or $(\nu, \rho)$ if using the ATM relationship for alpha above.
3. For each parameterization, check how close the SABR vol is to the market implied vol across all securities, using a penalty function of
$$\sum_{i}\left(\ivol^{\text{SABR}}(i) - \ivol^{\text{market}}(i)\right)^2$$
4. Set the parameters that minimize this error.

Now, use the solution parameters to set the implied volatility curve. 

* This gives you $\sigma(F,K)$ to insert into Black's formula.

Use this curve for 

* pricing other strikes / maturities / options on this underlying.
* better measuring the greeks of even these reference securities.

# Delta Hedging

As one example, consider the simple problem of delta hedging.

Given that implied volatility is not constant, we can expect that 

* delta changes when implied vol changes!

This is sometimes referred to as **vanna**

$$\frac{\partial \Delta}{\partial \ivol}$$

Suppose a call option has value $C(F)$, where $F$ is the forward price.

Consider a delta that takes account of Black's (direct) delta effect and the implied volatility effect through the vol path:

$$C\left(F, \ivol(F)\right)$$

$$\begin{align*}
\frac{dC}{dF} =& \frac{\partial C}{\partial F} + \frac{\partial C}{\partial \ivol}\frac{\partial \ivol}{\partial F}
\end{align*}$$

## Why SABR?

Other well-known models are useful for some things, but do not handle volatility skew well.

### Black's Formulas

Black's formula (and Black-Scholes) completely ignores this effect.
* This can cause substantial risk and portfolio variation day-over-day, especially in volatile markets.

### Local Volatility
The famed, "local volatility" model fits a function $\sigma(F,K)$ **exactly** to the market quoted implied vols.

So this is better than SABR, which minimizes the error but does not fit perfectly, right?
* No!
* Local volatility does not get the time dynamics right, such that this vega channel of the hedging ends up being worse than Black Scholes!

---
aliases:
  - Changing the Market Price of Risk for Variables That Are not the Prices of Traded Securities
tags:
  - market_price_of_risk
  - stochastic_processes
  - risk_neutral_valuation
  - itos_lemma
  - derivatives_pricing
key_concepts:
  - Market price of risk adjustments for non-traded variables
  - Ito's lemma application to risk premium changes
  - Consistency between traded and non-traded security processes
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 20 - Changing the Market Price of Risk for Variables That Are not the Prices of Traded Securities
---

# Technical Note No. 20 - Changing the Market Price of Risk for Variables That Are not the Prices of Traded Securities

Options, Futures, and Other Derivatives  
John Hull

## Changing the Market Price of Risk for Variables That Are not the Prices of Traded Securities

This Note shows that the rules for changing the stochastic process when there is a change in the market price of risk are the same, regardless of whether the variable is or is not the price of a traded security.

Suppose that a single variable $\theta$ (not the price of a traded security) follows the process

$$
d\theta = m\theta dt + s\theta dz
$$

and that a traded security $f$ dependent on $\theta$ follows the process

$$
df = \mu f dt + \sigma f dz
$$

When the growth rate of $\theta$ increases by $\Delta m$ so that the drift of $\theta$ increases by $\theta\Delta m$, we know from Ito's lemma that the growth rate of $f$ increases by $\Delta\mu$ where

$$
f\Delta\mu = \theta\Delta m\frac{\partial f}{\partial\theta}
$$

Also using Ito's lemma

$$
\sigma f = s\theta\frac{\partial f}{\partial\theta}
$$

Hence

$$
\frac{\Delta\mu}{\sigma} = \frac{\Delta m}{s} \tag{1}
$$

Consider the situation where the market price of risk changes from $\lambda$ to $\lambda^{*}$. We know that

$$
\Delta\mu = (\lambda^{*} - \lambda)\sigma
$$

Equation (1) shows that

$$
\Delta m = (\lambda^{*} - \lambda)s
$$

This shows that when the market price of risk changes, the stochastic processes of variables that are not traded securities are adjusted in the same way as the stochastic processes of those that are.

This analysis can be extended to the situation where there are several sources of uncertainty so that

$$
d\theta = m\theta dt + \sum_{i=1}^{n} s_{i}\theta dz_{i}
$$

and

$$
df = \mu f dt + \sum_{i=1}^{n} \sigma_{i} f dz_{i}
$$

In this case we still have

$$
f\Delta\mu = \theta\Delta m\frac{\partial f}{\partial\theta}
$$

Using Ito's lemma

$$
\sigma_{i} f = s_{i}\theta\frac{\partial f}{\partial\theta}
$$

Hence

$$
\frac{\Delta\mu}{\sigma_{i}} = \frac{\Delta m}{s_{i}} \tag{2}
$$

When

$$
\Delta\mu = \sum_{i=1}^{n} \left(\lambda_{i}^{*} - \lambda_{i}\right) \sigma_{i}
$$

Equation (2) shows that

$$
\Delta m = \sum_{i=1}^{n} (\lambda^{*} - \lambda) s_{i}
$$

which is the required result.
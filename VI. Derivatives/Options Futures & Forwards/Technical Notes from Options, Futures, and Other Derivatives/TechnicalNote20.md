---
aliases:
  - Changing the Market Price of Risk for Variables That Are not the Prices of Traded Securities
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 20 - Changing the Market Price of Risk for Variables That Are not the Prices of Traded Securities
linter-yaml-title-alias: Technical Note No. 20 - Changing the Market Price of Risk for Variables That Are not the Prices of Traded Securities
---

# Technical Note No. 20*  

Options, Futures, and Other Derivatives  
John Hull

# Changing the Market Price of Risk for Variables That Are not the Prices of Traded Securities

This Note shows that the rules for changing the stochastic process when there is a change in the market price of risk are the same, regardless of whether the variable is or is not the price of a traded security.

Suppose that a single variable  $\theta$  (not the price of a traded security) follows the process

$$
d \theta = m \theta d t + s \theta d z
$$

and that a traded security  $f$  dependent  $\theta$  follows the process

$$
d f = \mu f d t + \sigma f d z
$$

When the growth rate of  $\theta$  increases by  $\Delta m$  so that the drift of  $\theta$  increases by  $\theta \Delta m$  we know from Ito's lemma that the growth rate of  $f$  increases by  $\Delta \mu$  where

$$
f \Delta \mu = \theta \Delta m \frac {\partial f}{\partial \theta}
$$

Also using Ito's lemma

$$
\sigma f = s \theta \frac {\partial f}{\partial \theta}
$$

Hence

$$
\frac {\Delta \mu}{\sigma} = \frac {\Delta m}{s} \tag {1}
$$

Consider the situation where the market price of risk changes from  $\lambda$  to  $\lambda^{*}$ . We know that

$$
\Delta \mu = (\lambda^ {*} - \lambda) \sigma
$$

Equation(1) shows that

$$
\Delta m = (\lambda^ {*} - \lambda) s
$$

This shows that when the market price of risk changes, the stochastic processes of variables that are not traded securities are adjusted in the same way as the stochastic processes of those that are.

This analysis can be extended to the situation where there are several sources of uncertainty so that

$$
d \theta = m \theta d t + \sum_ {i = 1} ^ {n} s _ {i} \theta d z _ {i}
$$

and

$$
d f = \mu f d t + \sum_ {i = 1} ^ {n} \sigma_ {i} f d z _ {i}
$$

In this case we still have

$$
f \Delta \mu = \theta \Delta m \frac {\partial f}{\partial \theta}
$$

Using Ito's lemma

$$
\sigma_ {i} f = s _ {i} \theta \frac {\partial f}{\theta}
$$

Hence

$$
\frac {\Delta \mu}{\sigma_ {i}} = \frac {\Delta m}{s _ {i}} \tag {2}
$$

When

$$
\Delta \mu = \sum_ {i = 1} ^ {n} \left(\lambda_ {i} ^ {*} - \lambda_ {i}\right) \sigma_ {i}
$$

Equation(2) shows that

$$
\Delta m = \sum_ {i = 1} ^ {n} (\lambda^ {*} - \lambda) s _ {i}
$$

which is the required result.
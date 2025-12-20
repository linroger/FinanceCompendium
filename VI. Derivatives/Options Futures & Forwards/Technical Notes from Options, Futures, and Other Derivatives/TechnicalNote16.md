---
aliases:
  - Technical Note 16
tags:
  - interest_rate_trees
  - hull_white_model
  - time_steps
  - derivatives_pricing
  - term_structure
  - one_factor_models
key_concepts:
  - Interest rate tree construction with variable parameters
  - Non-constant time steps in tree models
  - Generalized Hull-White model implementation
  - One-factor interest rate models
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note 16 - Construction of an Interest Rate Tree with Non-Constant Time Steps and Non-Constant Parameters
---

# Technical Note 16 - Construction of an Interest Rate Tree with Non-Constant Time Steps and Non-Constant Parameters

*Options, Futures, and Other Derivatives - John Hull*

Consider a one-factor model of the form

$$
df(r) = [\theta(t) - a(t)f(r)]dt + \sigma(t)dz
$$

As in the text, we let $x = f(r)$ and first build a tree for the process

$$
dx = -a(t)xdt + \sigma(t)dz
$$

The procedure for doing this is given in Technical Note 9. We then convert this tree to a tree for the process

$$
dx = [\theta(t) - a(t)x]dt + \sigma(t)dz
$$

so that the zero curve is fitted using the approach given in the text. For more details see "The Generalized Hull-White Model and Supercalibration," *Financial Analysts Journal*, 57, 6, Nov-Dec, 2001. The article is also available on John Hull's website.
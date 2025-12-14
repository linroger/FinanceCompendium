---
aliases:
  - Construction of an Interest Rate Tree with Non-Constant Time Steps and Non-Constant Parameters
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 16 - Construction of an Interest Rate Tree with Non-Constant Time Steps and Non-Constant Parameters
linter-yaml-title-alias: Technical Note No. 16 - Construction of an Interest Rate Tree with Non-Constant Time Steps and Non-Constant Parameters
---

# Technical Note No. 16* Options, Futures, and Other Derivatives John Hull

# Construction of an Interest Rate Tree with Non-Constant Time Steps and Non-Constant Parameters

Consider a one-factor model of the form

$$
d f (r) = [ \theta (t) - a (t) f (r) ] d t + \sigma (t) d z
$$

As in the text, we let  $x = f(r)$  and first build a tree for the process

$$
d x = - a (t) x d t + \sigma (t) d z
$$

The procedure for doing this is given in Technical Note 9. We then convert this tree to a tree for the process

$$
d x = [ \theta (t) - a (t) x ] d t + \sigma (t) d z
$$

so that the zero curve is fitted using the approach given in the text. For more details see "The Generalized Hull-White Model and Supercalibration," *Financial Analysts Journal*, 57, 6, Nov-Dec, 2001. The article is also available on John Hull's website.
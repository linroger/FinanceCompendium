---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Technical Note No. 12*  "
linter-yaml-title-alias: "Technical Note No. 12*  "
---

# Technical Note No. 12*  

Options, Futures, and Other Derivatives  
John Hull

# The Calculation of the Cumulative Non-Central Chi Square Distribution

We present an algorithm proposed by Ding (1992).<sup>1</sup> Suppose that the non-centrality parameter is  $v$  and the number of degrees of freedom is  $k$  and we require the cumulative probability that the variable will be less than  $z$ . We define

$$
t _ {0} = \frac {1}{\Gamma (k / 2 + 1)} \left(\frac {z}{2}\right) ^ {k / 2} \exp \left(- \frac {z}{2}\right)
$$

$$
t _ {i} = t _ {i - 1} \frac {z}{k + 2 i}
$$

We also define

$$
w _ {0} = u _ {0} = \exp (- v / 2)
$$

$$
u _ {i} = \frac {u _ {i - 1} v}{2 i}
$$

$$
w _ {i} = w _ {i - 1} + u _ {i}
$$

The required probability that the variable with the non-central chi square distribution will be less than  $z$  is

$$
\sum_ {i = 0} ^ {\infty} w _ {i} t _ {i}
$$

By taking a sufficient number of terms in this series the required accuracy can be obtained.

# The Gamma Function

In the above formulas  $\Gamma(.)$  is the gamma function. It has the property that  $\Gamma(n) = (n - 1)!$  when  $n$  is an integer. In general  $\Gamma(x + 1) = x\Gamma(x)$ . The computation of the gamma function is discussed in Numerical Recipes.².

$$
\Gamma (x) = \left[ \frac {\sqrt {2 \pi}}{x} \left(p _ {0} + \sum_ {n = 1} ^ {6} \frac {p _ {n}}{x + n}\right) \right] (x + 5. 5) ^ {x + 0. 5} e ^ {- (x + 5. 5)}
$$

where

$$
p _ {0} = 1. 0 0 0 0 0 0 0 0 0 1 9 0 0 1 5
$$

$$
p _ {1} = 7 6. 1 8 0 0 9 1 7 2 9 4 7 1 4 6
$$

$$
p _ {2} = - 8 6. 5 0 5 3 2 0 3 2 9 4 1 6 7 7
$$

$$
p _ {3} = 2 4. 0 1 4 0 9 8 2 4 0 8 3 0 9 1
$$

$$
p _ {4} = - 1. 2 3 1 7 3 9 5 7 2 4 5 0 1 5 5
$$

$$
p _ {5} = 1. 2 0 8 6 5 0 9 7 3 8 6 6 1 7 9 \times 1 0 ^ {- 3}
$$

$$
p _ {6} = - 5. 3 9 5 2 3 9 3 8 4 9 5 3 \times 1 0 ^ {- 6}
$$

To avoid overflow problems it is best to compute  $\ln \Gamma (x)$  rather than  $\Gamma (x)$ .
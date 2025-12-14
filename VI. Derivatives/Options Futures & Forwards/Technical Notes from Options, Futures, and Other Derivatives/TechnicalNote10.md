---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Technical Note No. 10*  "
linter-yaml-title-alias: "Technical Note No. 10*  "
---

# Technical Note No. 10*  

Options, Futures, and Other Derivatives  
John Hull

# The Cornish-Fisher expansion to estimate VaR

As indicated in the text,  $\alpha_{i}$ 's and  $\beta_{ij}$ 's can be defined so that  $\Delta P$  for a portfolio containing options is approximated as

$$
\Delta P = \sum_ {i = 1} ^ {n} \alpha_ {i} \Delta x _ {i} + \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \beta_ {i j} \Delta x _ {i} \Delta x _ {j}
$$

Define  $\sigma_{ij}$  as the covariance between variable  $i$  and  $j$ :

$$
\sigma_ {i j} = \rho_ {i j} \sigma_ {i} \sigma_ {j}
$$

It can be shown that when the  $\Delta x_{i}$  are multivariate normal

$$
E (\Delta P) = \sum_ {i, j} \beta_ {i j} \sigma_ {i j}
$$

$$
E [ (\Delta P) ^ {2} ] = \sum_ {i, j} \alpha_ {i} \alpha_ {j} \sigma_ {i j} + \sum_ {i, j, k, l} \beta_ {i j} \beta_ {k l} (\sigma_ {i j} \sigma_ {k l} + \sigma_ {i k} \sigma_ {j l} + \sigma_ {i l} \sigma_ {j k})
$$

$$
E [ (\Delta P) ^ {3} ] = 3 \sum_ {i, j, k, l} \alpha_ {i} \alpha_ {j} \beta_ {k l} (\sigma_ {i j} \sigma_ {k l} + \sigma_ {i k} \sigma_ {j l} + \sigma_ {i l} \sigma_ {j k}) + \sum_ {i _ {1}, i _ {2}, i _ {3}, i _ {4}, i _ {5}, i _ {6}} \beta_ {i _ {1} i _ {2}} \beta_ {i _ {3} i _ {4}} \beta_ {i _ {5} i _ {6}} Q
$$

The variable,  $Q$ , consists of fifteen terms of the form  $\sigma_{k_1k_2}\sigma_{k_3k_4}\sigma_{k_5k_6}$  where  $k_{1}, k_{2}, k_{3}, k_{4}, k_{5}$ , and  $k_{6}$  are permutations of  $i_{1}, i_{2}, i_{3}, i_{4}, i_{5}$ , and  $i_{6}$ .

Define  $\mu_P$  and  $\sigma_P$  as the mean and standard deviation of  $\Delta P$  so that

$$
\mu_ {P} = E (\Delta P)
$$

$$
\sigma_ {P} ^ {2} = E [ (\Delta P) ^ {2} ] - [ E (\Delta P) ] ^ {2}
$$

The skewness of the probability distribution of  $\Delta P$ ,  $\xi_{P}$ , is defined as

$$
\xi_ {P} = \frac {1}{\sigma_ {P} ^ {3}} E [ (\Delta P - \mu_ {P}) ^ {3} ] = \frac {E [ (\Delta P) ^ {3} ] - 3 E [ (\Delta P) ^ {2} ] \mu_ {P} + 2 \mu_ {P} ^ {3}}{\sigma_ {P} ^ {3}}
$$

Using the first three moments of  $\Delta P$ , the Cornish-Fisher expansion estimates the  $q$ th percentile of the distribution of  $\Delta P$  as

$$
\mu_ {P} + w _ {q} \sigma_ {P}
$$

where

$$
w _ {q} = z _ {q} + \frac {1}{6} (z _ {q} ^ {2} - 1) \xi_ {P}
$$

and  $z_{q}$  is qth percentile of the standard normal distribution  $\phi(0,1)$ .

# Example

Suppose that for a certain portfolio we calculate  $\mu_{P} = -0.2$ ,  $\sigma_{P} = 2.2$ , and  $\xi_{P} = -0.4$ . If we assume that the probability distribution of  $\Delta P$  is normal, the first percentile of the probability distribution of  $\Delta P$  is

$$
- 0. 2 - 2. 3 3 \times 2. 2 = - 5. 3 2 6
$$

In other words, we are  $99\%$  certain that

$$
\Delta P > - 5. 3 2 6
$$

When we use the Cornish-Fisher expansion to adjust for skewness and set  $q = 0.01$ , we obtain

$$
w _ {q} = - 2. 3 3 - \frac {1}{6} (2. 3 3 ^ {2} - 1) \times 0. 4 = - 2. 6 2 5
$$

so that the first percentile of the distribution is

$$
- 0. 2 - 2. 6 2 5 \times 2. 2 = - 5. 9 7 6
$$

Taking account of skewness, therefore, changes the VaR from 5.326 to 5.976.
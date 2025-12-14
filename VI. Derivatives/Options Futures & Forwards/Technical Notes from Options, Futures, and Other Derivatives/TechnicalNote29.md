---
aliases:
  - Proof of Extensions to Ito's Lemma
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 29 - Proof of Extensions to Ito's Lemma
linter-yaml-title-alias: Technical Note No. 29 - Proof of Extensions to Ito's Lemma
---

# Technical Note No. 29*  

Options, Futures, and Other Derivatives  
John Hull

# Proof of Extensions to Ito's Lemma

Options, Futures and Other Derivatives proves Ito's lemma for a function of a single stochastic variable. Here we present a generalized version of Ito's lemma for the situation where there are several sources of uncertainty.

Suppose that a function,  $f$ , depends on the  $n$  variables  $x_{1}, x_{2}, \ldots, x_{n}$  and time,  $t$ . Suppose further that  $x_{i}$  follows an Ito process with instantaneous drift  $a_{i}$  and instantaneous variance  $b_{i}^{2}$  ( $1 \leq i \leq n$ ), that is,

$$
d x _ {i} = a _ {i} d t + b _ {i} d z _ {i} \tag {1}
$$

where  $dz_{i}$  is a Wiener process ( $1 \leq i \leq n$ ). Each  $a_{i}$  and  $b_{i}$  may be any function of all the  $x_{i}$ 's and  $t$ . A Taylor series expansion of  $\Delta f$  gives

$$
\Delta f = \sum_ {i = 1} ^ {n} \frac {\partial f}{\partial x _ {i}} \Delta x _ {i} + \frac {\partial f}{\partial t} \Delta t + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \frac {\partial^ {2} f}{\partial x _ {i} \partial x _ {j}} \Delta x _ {i} \Delta x _ {j} + \frac {1}{2} \sum_ {i = 1} ^ {n} \frac {\partial^ {2} f}{\partial x _ {i} \partial t} \Delta x _ {i} \Delta t + \dots (2)
$$

Equation (1) can be discretized as

$$
\Delta x _ {i} = a _ {i} \Delta t + b _ {i} \epsilon_ {i} \sqrt {\Delta t}
$$

where  $\epsilon_{i}$  is a random sample from a standardized normal distribution. The correlation,  $\rho_{ij}$ , between  $dz_{i}$  and  $dz_{j}$  is defined as the correlation between  $\epsilon_{i}$  and  $\epsilon_{j}$ . In the book's proof of Ito's lemma when there is only one stochastic variable it was argued that

$$
\lim _ {\Delta t \to 0} \Delta x _ {i} ^ {2} = b _ {i} ^ {2} d t
$$

Similarly,

$$
\lim _ {\Delta t \to 0} \Delta x _ {i} \Delta x _ {j} = b _ {i} b _ {j} \rho_ {i j} d t
$$

As  $\Delta t\to 0$ , the first three terms in the expansion of  $\Delta f$  in equation (2) are of order  $\Delta t$ . All other terms are of higher order. Hence

$$
d f = \sum_ {i = 1} ^ {n} \frac {\partial f}{\partial x _ {i}} d x _ {i} + \frac {\partial f}{\partial t} d t + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \frac {\partial^ {2} f}{\partial x _ {i} \partial x _ {j}} b _ {i} b _ {j} \rho_ {i j} d t
$$

This is the generalized version of Ito's lemma. Substituting for  $dx_{i}$  from equation (1) gives

$$
d f = \left(\sum_ {i = 1} ^ {n} \frac {\partial f}{\partial x _ {i}} a _ {i} + \frac {\partial f}{\partial t} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \frac {\partial^ {2} f}{\partial x _ {i} \partial x _ {j}} b _ {i} b _ {j} \rho_ {i j}\right) d t + \sum_ {i = 1} ^ {n} \frac {\partial f}{\partial x _ {i}} b _ {i} d z _ {i} (3)
$$

For an alternative generalization of Ito's lemma suppose that  $f$  depends on a single variable  $x$  and that the process for  $x$  involves more than one Wiener process:

$$
d x = a d t + \sum_ {i = 1} ^ {m} b _ {i} d z _ {i}
$$

In this case

$$
\Delta f = \frac {\partial f}{\partial x} \Delta x + \frac {\partial f}{\partial t} \Delta t + \frac {1}{2} \frac {\partial^ {2} f}{\partial x ^ {2}} \Delta x ^ {2} + \frac {1}{2} \frac {\partial^ {2} f}{\partial x \partial t} \Delta x \Delta t + \dots
$$

$$
\Delta x = a \Delta t + \sum_ {i = 1} ^ {m} b _ {i} \epsilon_ {i} \sqrt {\Delta t}
$$

and

$$
\lim _ {\Delta t \to 0} \Delta x _ {i} ^ {2} = \sum_ {i = 1} ^ {m} \sum_ {j = 1} ^ {m} b _ {i} b _ {j} \rho_ {i j} d t
$$

where as before  $\rho_{ij}$  is the correlation between  $dz_{i}$  and  $dz_{j}$ . This leads to

$$
d f = \left(\frac {\partial f}{\partial x} a + \frac {\partial f}{\partial t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial x ^ {2}} \sum_ {i = 1} ^ {m} \sum_ {j = 1} ^ {m} b _ {i} b _ {j} \rho_ {i j}\right) d t + \frac {\partial f}{\partial x} \sum_ {i = 1} ^ {m} b _ {i} d z _ {i} \tag {4}
$$

Finally consider the more general case where  $f$  depends on variables  $x_{i}$  ( $1 \leq i \leq n$ ) and

$$
d x _ {i} = a _ {i} d t + \sum_ {k = 1} ^ {m} b _ {i k} d z _ {k}
$$

A similar analysis shows that

$$
d f = \left(\sum_ {i = 1} ^ {n} \frac {\partial f}{\partial x _ {i}} a _ {i} + \frac {\partial f}{\partial t} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \frac {\partial^ {2} f}{\partial x _ {i} \partial x _ {j}} \sum_ {k = 1} ^ {m} \sum_ {l = 1} ^ {m} b _ {i k} b _ {j l} \rho_ {k l}\right) d t + \sum_ {i = 1} ^ {n} \frac {\partial f}{\partial x _ {i}} \sum_ {k = 1} ^ {m} b _ {i k} d z _ {k} (5)
$$
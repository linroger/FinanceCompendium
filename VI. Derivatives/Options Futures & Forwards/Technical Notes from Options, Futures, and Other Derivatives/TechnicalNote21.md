---
aliases:
  - Hermite Polynomials and Their Use for Integration
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 21 - Hermite Polynomials and Their Use for Integration
linter-yaml-title-alias: Technical Note No. 21 - Hermite Polynomials and Their Use for Integration
---

# Technical Note No. 21* Options, Futures, and Other Derivatives John Hull

# Hermite Polynomials and Their Use for Integration

As explained in the chapter on credit derivatives in the text, the Gaussian copula model requires functions to be integrated over a normal distribution between  $-\infty$  and  $+\infty$ . Gaussian quadrature approximates the integral as

$$
\int_ {- \infty} ^ {\infty} \frac {1}{\sqrt {2 \pi}} e ^ {- F ^ {2} / 2} g (F) d F \approx \sum_ {k = 1} ^ {M} w _ {k} g \left(F _ {k}\right) \tag {1}
$$

The approximation gets better as  $M$  increases. It has the property that it is exact when  $g(F)$  is a polynomial of order  $M$ .

The determination the  $w_{k}$  and  $F_{k}$  involves Hermite polynomials. If you want to avoid getting into the details of this, values of  $w_{k}$  and  $F_{k}$  for different values of  $M$  can be downloaded from a spread sheet on the author's web site.

The first few Hermite polynomials are

$$
H _ {0} (x) = 1
$$

$$
H _ {1} (x) = 2 x
$$

$$
H _ {2} (x) = 4 x ^ {2} - 2
$$

$$
H _ {3} (x) = 8 x ^ {3} - 1 2 x
$$

$$
H _ {4} (x) = 1 6 x ^ {4} - 4 8 x ^ {2} + 1 2
$$

A recurrence relationship for calculating higher order polynomials is

$$
H _ {n + 1} (x) = 2 x H _ {n} (x) - 2 n H _ {n - 1} (x)
$$

and an equation for the derivative with respect to  $x$  is

$$
H _ {n} ^ {\prime} (x) = 2 n H _ {n - 1} (x)
$$

Define  $x_{k}$  ( $1 \leq k \leq n$ ) as the  $n$  roots of  $H_{n}(x)$  (that is, the  $n$  values of  $x$  for which  $H_{n}(x) = 0$ ) and

$$
w _ {k} ^ {*} = \frac {2 ^ {n - 1} n ! \sqrt {\pi}}{n ^ {2} [ H _ {n - 1} (x _ {k}) ] ^ {2}}
$$

A key result is

$$
\int_ {- \infty} ^ {\infty} f (x) d x \approx \sum_ {k = 1} ^ {n} w _ {k} ^ {*} e ^ {x _ {k} ^ {2}} f (x _ {k}) \tag {2}
$$

Setting  $x = F / \sqrt{2}$  and

$$
f (x) = \frac {1}{\sqrt {\pi}} e ^ {- x ^ {2}} g (\sqrt {2} x)
$$

equation (2) gives

$$
\int_ {- \infty} ^ {\infty} \frac {1}{\sqrt {2 \pi}} e ^ {- F ^ {2} / 2} g (F) d F \approx \sum_ {k = 1} ^ {n} \frac {1}{\pi} w _ {k} ^ {*} g (F _ {k})
$$

or alternatively

$$
\int_ {- \infty} ^ {\infty} \frac {1}{\sqrt {2 \pi}} e ^ {- F ^ {2} / 2} g (F) d y \approx \sum_ {k = 1} ^ {n} w _ {k} g (F _ {k})
$$

where

$$
w _ {k} = \frac {w _ {k} ^ {*}}{\sqrt {\pi}} F _ {k} = \sqrt {2} x _ {k}
$$

This is the result in equation (1), with  $n = M$ .

This leaves the problem of calculating the  $n$  roots of a Hermite polynomial. A program for doing this is 'gauher' in "Numerical Recipes for C: The Art of Scientific Computing" by Press, Flanery, Teukolsky, and Vetterling, Cambridge University Press.
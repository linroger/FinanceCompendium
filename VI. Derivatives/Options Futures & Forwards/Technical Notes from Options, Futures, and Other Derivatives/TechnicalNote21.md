---
title: Technical Note No. 21 - Hermite Polynomials and Their Use for Integration
aliases:
  - Hermite Polynomials and Their Use for Integration
tags:
  - hermite_polynomials
  - gaussian_quadrature
  - numerical_integration
  - normal_distribution
key_concepts:
  - Hermite polynomial basis functions
  - Gaussian quadrature integration method
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
---

# Hermite Polynomials and Their Use for Integration

**Technical Note No. 21** - Options, Futures, and Other Derivatives by John Hull

As explained in the chapter on credit derivatives in the text, the Gaussian copula model requires functions to be integrated over a normal distribution between $-\infty$ and $+\infty$. Gaussian quadrature approximates the integral as

$$
\int_{-\infty}^{\infty} \frac{1}{\sqrt{2\pi}} e^{-F^2/2} g(F) dF \approx \sum_{k=1}^{M} w_k g(F_k) \tag{1}
$$

The approximation gets better as $M$ increases. It has the property that it is exact when $g(F)$ is a polynomial of order $M$.

The determination of $w_k$ and $F_k$ involves Hermite polynomials. If you want to avoid getting into the details of this, values of $w_k$ and $F_k$ for different values of $M$ can be downloaded from a spreadsheet on the author's website.

The first few Hermite polynomials are

$$
H_0(x) = 1
$$

$$
H_1(x) = 2x
$$

$$
H_2(x) = 4x^2 - 2
$$

$$
H_3(x) = 8x^3 - 12x
$$

$$
H_4(x) = 16x^4 - 48x^2 + 12
$$

A recurrence relationship for calculating higher order polynomials is

$$
H_{n+1}(x) = 2x H_n(x) - 2n H_{n-1}(x)
$$

and an equation for the derivative with respect to $x$ is

$$
H_n'(x) = 2n H_{n-1}(x)
$$

Define $x_k$ ($1 \leq k \leq n$) as the $n$ roots of $H_n(x)$ (that is, the $n$ values of $x$ for which $H_n(x) = 0$) and

$$
w_k^* = \frac{2^{n-1} n! \sqrt{\pi}}{n^2 [H_{n-1}(x_k)]^2}
$$

A key result is

$$
\int_{-\infty}^{\infty} f(x) dx \approx \sum_{k=1}^{n} w_k^* e^{x_k^2} f(x_k) \tag{2}
$$

Setting $x = F/\sqrt{2}$ and

$$
f(x) = \frac{1}{\sqrt{\pi}} e^{-x^2} g(\sqrt{2}x)
$$

equation (2) gives

$$
\int_{-\infty}^{\infty} \frac{1}{\sqrt{2\pi}} e^{-F^2/2} g(F) dF \approx \sum_{k=1}^{n} \frac{1}{\pi} w_k^* g(F_k)
$$

or alternatively

$$
\int_{-\infty}^{\infty} \frac{1}{\sqrt{2\pi}} e^{-F^2/2} g(F) dF \approx \sum_{k=1}^{n} w_k g(F_k)
$$

where

$$
w_k = \frac{w_k^*}{\sqrt{\pi}}, \quad F_k = \sqrt{2} x_k
$$

This is the result in equation (1), with $n = M$.

This leaves the problem of calculating the $n$ roots of a Hermite polynomial. A program for doing this is 'gauher' in "Numerical Recipes for C: The Art of Scientific Computing" by Press, Flannery, Teukolsky, and Vetterling, Cambridge University Press.
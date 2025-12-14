---
aliases:
  - Properties of Lognormal Distribution
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 2 - Properties of Lognormal Distribution
linter-yaml-title-alias: Technical Note No. 2 - Properties of Lognormal Distribution
---

# Technical Note No.  $2^{*}$  Options, Futures, and Other Derivatives John Hull

# Properties of Lognormal Distribution

A variable  $V$  has a lognormal distribution if  $X = \ln (V)$  has a normal distribution. Suppose that  $X$  is  $\phi(m, s^2)$ ; that is, it has a normal distribution with mean  $m$  and standard deviation,  $s$ . The probability density function for  $X$  is

$$
\frac {1}{\sqrt {2 \pi} s} \exp \left(- \frac {(X - m) ^ {2}}{2 s ^ {2}}\right)
$$

The probability density function for  $V$  is therefore

$$
h (V) = \frac {1}{\sqrt {2 \pi} s V} \exp \left(- \frac {[ \ln (V) - m ] ^ {2}}{2 s ^ {2}}\right)
$$

Consider the nth moment of  $V$

$$
\int_ {0} ^ {+ \infty} V ^ {n} h (V) d V
$$

Substituting  $V = \exp X$  this is

$$
\begin{array}{l} \int_ {- \infty} ^ {+ \infty} \frac {\exp (n X)}{\sqrt {2 \pi} s} \exp \left(- \frac {(X - m) ^ {2}}{2 s ^ {2}}\right) d X \\ = \int_ {- \infty} ^ {+ \infty} \frac {1}{\sqrt {2 \pi} s} \exp \left(- \frac {(X - m - n s ^ {2}) ^ {2}}{2 s ^ {2}}\right) \exp \left(\frac {2 m n s ^ {2} + n ^ {2} s ^ {4}}{2 s ^ {2}}\right) d X \\ = \exp (n m + n ^ {2} s ^ {2} / 2) \int_ {- \infty} ^ {+ \infty} \frac {1}{\sqrt {2 \pi} s} \exp \left(- \frac {(X - m - n s ^ {2}) ^ {2}}{2 s ^ {2}}\right) d X \\ \end{array}
$$

The integral in this expression is the integral of a normal density function with mean  $m + ns^2$  and standard deviation  $s$  and is therefore 1.0. It follows that

$$
\int_ {0} ^ {+ \infty} V ^ {n} h (V) d V = \exp (n m + n ^ {2} s ^ {2} / 2) \tag {1}
$$

The expected value of  $V$  is given when  $n = 1$ . It is

$$
\exp (m + s ^ {2} / 2)
$$

The formula for the mean of a stock price at time  $T$  in the text is given by setting  $m = \ln(S_0) + (\mu - \sigma^2 / 2)T$  and  $s = \sigma \sqrt{T}$

The variance of  $V$  is  $E(V^2) - [E(V)]^2$ . Setting  $n = 2$  in equation (1) we get

$$
E (V ^ {2}) = \exp (2 m + 2 s ^ {2})
$$

The variance of  $V$  is therefore

$$
\exp (2 m + 2 s ^ {2}) - \exp (2 m + s ^ {2}) = \exp (2 m + s ^ {2}) [ \exp (s ^ {2}) - 1 ]
$$

The formula for the variance of a stock price at time  $T$  in the text is given by setting  $m = \ln(S_0) + (\mu - \sigma^2 / 2)T$  and  $s = \sigma \sqrt{T}$ .
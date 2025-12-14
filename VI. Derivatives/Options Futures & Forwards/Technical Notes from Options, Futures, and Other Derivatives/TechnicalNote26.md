---
aliases:
  - A Binomial Measure of Credit Correlation
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 26 - A Binomial Measure of Credit Correlation
linter-yaml-title-alias: Technical Note No. 26 - A Binomial Measure of Credit Correlation
---

# Technical Note No. 26*  

Options, Futures, and Other Derivatives  
John Hull

# A Binomial Measure of Credit Correlation

A credit correlation measure sometimes used by rating agencies is the binomial correlation measure. For two companies, A and B, this is the coefficient of correlation between:

1. A variable that equals 1 if company A defaults between times 0 and  $T$  and zero otherwise; and  
2. A variable that equals 1 if company B defaults between times 0 and  $T$  and zero otherwise

The measure is

$$
\beta_ {A B} (T) = \frac {P _ {A B} (T) - Q _ {A} (T) Q _ {B} (T)}{\sqrt {[ Q _ {A} (T) - Q _ {A} (T) ^ {2} ] [ Q _ {B} (T) - Q _ {B} (T) ^ {2} ]}} \tag {1}
$$

where  $P_{AB}(T)$  is the joint probability of A and B defaulting between time zero and time  $T$ ,  $Q_A(T)$  is the cumulative probability that company A will default by time  $T$ , and  $Q_B(T)$  is the cumulative probability that company B will default by time  $T$ . Typically  $\beta_{AB}(T)$  depends on  $T$ , the length of the time period considered. Usually it increases as  $T$  increases.

From the definition of a Gaussian copula model  $P_{AB}(T) = M[x_A(T), x_B(T); \rho_{AB}]$  where  $x_A(T) = N^{-1}(Q_A(T))$  and  $x_B(T) = N^{-1}(Q_B(T))$  are the transformed times to default for companies A and B, and  $\rho_{AB}$  is the Gaussian copula correlation for the times to default for A and B.  $M(a, b; \rho)$  is the probability that, in a bivariate normal distribution where the correlation between the variables is  $\rho$ , the first variable is less than  $a$  and the second variable is less than  $b$ .<sup>1</sup> It follows that

$$
\beta_ {A B} (T) = \frac {M [ x _ {A} (T) , x _ {B} (T) ; \rho_ {A B} ] - Q _ {A} (T) Q _ {B} (T)}{\sqrt {[ Q _ {A} (T) - Q _ {A} (T) ^ {2} ] [ Q _ {B} (T) - Q _ {B} (T) ^ {2} ]}} \tag {2}
$$

This shows that, if  $Q_A(T)$  and  $Q_B(T)$  are known,  $\beta_{AB}(T)$  can be calculated from  $\rho_{AB}$  and vice versa. Usually  $\rho_{AB}$  is markedly greater than  $\beta_{AB}(T)$ . This illustrates the important point that the magnitude of a correlation measure depends on the way it is defined.

# Example

Suppose that the probability of company A defaulting in one-year period is  $1\%$  and the probability of company B defaulting in a one-year period is also  $1\%$ . In this case  $x_{A}(1) = x_{B}(1) = N^{-1}(0.01) = -2.326$ . If  $\rho_{AB}$  is 0.20,  $M(x_{A}(1), x_{B}(1), \rho_{AB}) = 0.000337$  and equation (2) shows that  $\beta_{AB}(T) = 0.024$  when  $T = 1$ .
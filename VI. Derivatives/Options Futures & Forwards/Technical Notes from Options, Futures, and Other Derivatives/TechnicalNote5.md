---
title: "Technical Note 5 - Bivariate Normal Distribution"
tags: [bivariate_normal, cumulative_probability, options_pricing, derivatives, statistical_methods]
key_concepts: ["Cumulative probability calculation", "Bivariate normal distribution", "Drezner's method", "Correlation coefficients"]
parent_directory: "Technical Notes from Options, Futures, and Other Derivatives"
cssclasses: academia
---

# Technical Note 5 - Calculation of Cumulative Probability in Bivariate Normal Distribution

*Options, Futures, and Other Derivatives - John Hull*

Define $M(a, b; \rho)$ as the cumulative probability in a standardized bivariate normal distribution that the first variable is less than $a$ and the second variable is less than $b$, when the coefficient of correlation between the variables is $\rho$. Drezner provides a way of calculating $M(a, b; \rho)$ to four-decimal-place accuracy. If $a \leq 0$, $b \leq 0$, and $\rho \leq 0$,

$$
M(a, b; \rho) = \frac{\sqrt{1 - \rho^{2}}}{\pi} \sum_{i, j = 1}^{4} A_{i} A_{j} f(B_{i}, B_{j})
$$

where

$$
f(x, y) = \exp{[a^{\prime}(2x - a^{\prime}) + b^{\prime}(2y - b^{\prime}) + 2\rho(x - a^{\prime})(y - b^{\prime})]}
$$

$$
a^{\prime} = \frac{a}{\sqrt{2(1 - \rho^{2})}} \qquad b^{\prime} = \frac{b}{\sqrt{2(1 - \rho^{2})}}
$$

$$
A_{1} = 0.3253030 \quad A_{2} = 0.4211071 \quad A_{3} = 0.1334425 \quad A_{4} = 0.006374323
$$

$$
B_{1} = 0.1337764 \quad B_{2} = 0.6243247 \quad B_{3} = 1.3425378 \quad B_{4} = 2.2626645
$$

In other circumstances where the product of $a, b$, and $\rho$ is negative or zero, one of the following identities can be used:

$$
M(a, b; \rho) = N(a) - M(a, -b; -\rho)
$$

$$
M(a, b; \rho) = N(b) - M(-a, b; -\rho)
$$

$$
M(a, b; \rho) = N(a) + N(b) - 1 + M(-a, -b; \rho)
$$

In circumstances where the product of $a, b$, and $\rho$ is positive, the identity

$$
M(a, b; \rho) = M(a, 0; \rho_{1}) + M(b, 0; \rho_{2}) - \delta
$$

can be used in conjunction with the previous results, where

$$
\rho_{1} = \frac{(\rho a - b) \operatorname{sgn}(a)}{\sqrt{a^{2} - 2\rho a b + b^{2}}} \qquad \rho_{2} = \frac{(\rho b - a) \operatorname{sgn}(b)}{\sqrt{a^{2} - 2\rho a b + b^{2}}}
$$

$$
\delta = \frac{1 - \operatorname{sgn}(a) \operatorname{sgn}(b)}{4} \qquad \operatorname{sgn}(x) = \left\{ \begin{array}{ll} +1 & \text{when } x \geq 0 \\ -1 & \text{when } x < 0 \end{array} \right.
$$
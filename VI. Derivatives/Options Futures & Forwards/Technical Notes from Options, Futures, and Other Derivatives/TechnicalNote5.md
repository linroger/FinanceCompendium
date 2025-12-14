---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Technical Note No. 5*  "
linter-yaml-title-alias: "Technical Note No. 5*  "
---

# Technical Note No. 5*  

Options, Futures, and Other Derivatives  
John Hull

# Calculation of Cumulative Probability in Bivariate Normal Distribution

Define  $M(a, b; \rho)$  as the cumulative probability in a standardized bivariate normal distribution that the first variable is less than  $a$  and the second variable is less than  $b$ , when the coefficient of correlation between the variables is  $\rho$ . Drezner provides a way of calculating  $M(a, b; \rho)$  to four-decimal-place accuracy. If  $a \leq 0$ ,  $b \leq 0$ , and  $\rho \leq 0$ ,

$$
M (a, b; \rho) = \frac {\sqrt {1 - \rho^ {2}}}{\pi} \sum_ {i, j = 1} ^ {4} A _ {i} A _ {j} f (B _ {i}, B _ {j})
$$

where

$$
f (x, y) = \exp {[ a ^ {\prime} (2 x - a ^ {\prime}) + b ^ {\prime} (2 y - b ^ {\prime}) + 2 \rho (x - a ^ {\prime}) (y - b ^ {\prime}) ]}
$$

$$
a ^ {\prime} = \frac {a}{\sqrt {2 (1 - \rho^ {2})}} \qquad b ^ {\prime} = \frac {b}{\sqrt {2 (1 - \rho^ {2})}}
$$

$$
A _ {1} = 0. 3 2 5 3 0 3 0 \quad A _ {2} = 0. 4 2 1 1 0 7 1 \quad A _ {3} = 0. 1 3 3 4 4 2 5 \quad A _ {4} = 0. 0 0 6 3 7 4 3 2 3
$$

$$
B _ {1} = 0. 1 3 3 7 7 6 4 \quad B _ {2} = 0. 6 2 4 3 2 4 7 \quad B _ {3} = 1. 3 4 2 5 3 7 8 \quad B _ {4} = 2. 2 6 2 6 6 4 5
$$

In other circumstances where the product of  $a, b$ , and  $\rho$  is negative or zero, one of the following identities can be used:

$$
M (a, b; \rho) = N (a) - M (a, - b; - \rho)
$$

$$
M (a, b; \rho) = N (b) - M (- a, b; - \rho)
$$

$$
M (a, b; \rho) = N (a) + N (b) - 1 + M (- a, - b; \rho)
$$

In circumstances where the product of  $a, b$ , and  $\rho$  is positive, the identity

$$
M (a, b; \rho) = M (a, 0; \rho_ {1}) + M (b, 0; \rho_ {2}) - \delta
$$

can be used in conjunction with the previous results, where

$$
\rho_ {1} = \frac {(\rho a - b) \operatorname {s g n} (a)}{\sqrt {a ^ {2} - 2 \rho a b + b ^ {2}}} \qquad \rho_ {2} = \frac {(\rho b - a) \operatorname {s g n} (b)}{\sqrt {a ^ {2} - 2 \rho a b + b ^ {2}}}
$$

$$
\delta = \frac {1 - \operatorname {s g n} (a) \operatorname {s g n} (b)}{4} \qquad \operatorname {s g n} (x) = \left\{ \begin{array}{l l} + 1 & \mathrm {w h e n} x \geq 0 \\ - 1 & \mathrm {w h e n} x <   0 \end{array} \right.
$$
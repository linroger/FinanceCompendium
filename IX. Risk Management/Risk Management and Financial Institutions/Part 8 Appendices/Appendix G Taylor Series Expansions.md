---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Appendix G
linter-yaml-title-alias: Appendix G
---

# Appendix G

# Taylor Series Expansions

Consider a function  $z = F(x)$ . When a small change  $\Delta x$  is made to  $x$ , there is a corresponding small change  $\Delta z$  in  $z$ . A first approximation to the relationship between  $\Delta z$  and  $\Delta x$  is

$$
\Delta z = \frac {d z}{d x} \Delta x \tag {G.1}
$$

This relationship is exact if  $z$  is a linear function of  $x$  and approximate in other situations. A more accurate approximation is

$$
\Delta z = \frac {d z}{d x} \Delta x + \frac {1}{2} \frac {d ^ {2} z}{d x ^ {2}} (\Delta x) ^ {2} \tag {G.2}
$$

This relationship is exact if  $z$  is a quadratic function of  $x$  and approximate in other situations. By adding more terms in the series, we can increase accuracy. The full expansion is

$$
\Delta z = \frac {d z}{d x} \Delta x + \frac {1}{2 !} \frac {d ^ {2} z}{d x ^ {2}} (\Delta x) ^ {2} + \frac {1}{3 !} \frac {d ^ {3} z}{d x ^ {3}} (\Delta x) ^ {3} + \frac {1}{4 !} \frac {d ^ {4} z}{d x ^ {4}} (\Delta x) ^ {4} + \dots
$$ where! denotes the factorial function:  $2! = 2\times 1 = 2$  .  $3! = 3\times 2\times 1 = 6$  .  $4! = 4\times 3\times$ $2\times 1 = 24$  ; and so on.


# Example G.1

Consider the function  $z = \sqrt{x}$  so that

$$

{\frac {d z}{d x}} = {\frac {1}{2 x ^ {1 / 2}}} \qquad {\frac {d ^ {2} z}{d x ^ {2}}} = - {\frac {1}{4 x ^ {3 / 2}}} \qquad {\frac {d ^ {3} z}{d x ^ {3}}} = {\frac {3}{8 x ^ {5 / 2}}}

$$

Suppose that  $x = 2$  and  $\Delta x = 0.1$  so that  $\Delta z = \sqrt{2.1} - \sqrt{2} = 0.034924$ . When  $x = 2$ ,

$$

\frac {d z}{d x} = 0. 3 5 3 5 5 \qquad \frac {d ^ {2} z}{d x ^ {2}} = - 0. 0 8 8 3 9 \qquad \frac {d ^ {3} z}{d x ^ {3}} = 0. 0 6 6 2 9

$$

The first order approximation to  $\Delta z$ , given by equation (G.1), is

$$

\Delta z = 0. 3 5 3 5 5 \times 0. 1 = 0. 0 3 5 3 5 5

$$

The second order approximation, given by equation (G.2), is

$$

\Delta z = 0. 3 5 3 5 5 \times 0. 1 + \frac {1}{2} \times (- 0. 0 8 8 3 9) \times 0. 1 ^ {2} = 0. 0 3 4 9 1 3

$$

The third order approximation is

$$

\Delta z = 0. 3 5 3 5 5 \times 0. 1 + \frac {1}{2} \times (- 0. 0 8 8 3 9) \times 0. 1 ^ {2} + \frac {1}{6} \times 0. 0 6 6 2 9 \times 0. 1 ^ {3} = 0. 0 3 4 9 2 4

$$

It can be seen that the series expansion quickly converges to the correct answer of 0.034924.

# G.1 Functions of Two Variables

Consider next a function of two variables,  $z = F(x,\gamma)$ . Suppose that  $\Delta x$  and  $\Delta y$  are small changes in  $x$  and  $\gamma$ , respectively, and that  $\Delta z$  is the corresponding small change in  $z$ . In this case, the first order approximation is

$$

\Delta z = \frac {\partial z}{\partial x} \Delta x + \frac {\partial z}{\partial y} \Delta y \tag {G.3}

$$

The second order approximation is

$$

\Delta z = \frac {\partial z}{\partial x} \Delta x + \frac {\partial z}{\partial \gamma} \Delta \gamma + \frac {1}{2} \frac {\partial^ {2} z}{\partial x ^ {2}} (\Delta x) ^ {2} + \frac {1}{2} \frac {\partial^ {2} z}{\partial \gamma^ {2}} (\Delta \gamma) ^ {2} + \frac {\partial^ {2} z}{\partial x \partial \gamma} (\Delta x \Delta \gamma) \qquad (G. 4)

$$

# Example G.2

Consider the function  $z = \sqrt{xy}$  so that

$$

\frac {\partial z}{\partial x} = \frac {\gamma^ {1 / 2}}{2 x ^ {1 / 2}} \qquad \frac {\partial z}{\partial \gamma} = \frac {x ^ {1 / 2}}{2 \gamma^ {1 / 2}}

$$

$$

\frac {\partial^ {2} z}{\partial x ^ {2}} = - \frac {\gamma^ {1 / 2}}{4 x ^ {3 / 2}} \qquad \frac {\partial^ {2} z}{\partial \gamma^ {2}} = - \frac {x ^ {1 / 2}}{4 \gamma^ {3 / 2}} \qquad \frac {\partial^ {2} z}{\partial x \partial \gamma} = \frac {1}{4 (x \gamma) ^ {1 / 2}}

$$

Suppose that  $x = 2$ ,  $\gamma = 1$ ,  $\Delta x = 0.1$ , and  $\Delta \gamma = 0.1$  so that

$$

\Delta z = \sqrt {2 . 1 \times 1 . 1} - \sqrt {2 \times 1} = 0. 1 0 5 6 5

$$

When  $x = 2$  and  $\gamma = 1$

$$

\frac {\partial z}{\partial x} = 0. 3 5 3 5 5 \qquad \frac {\partial z}{\partial y} = 0. 7 0 7 1 1

$$

$$

\frac {\partial^ {2} z}{\partial x ^ {2}} = - 0. 0 8 8 3 9 \qquad \frac {\partial^ {2} z}{\partial y ^ {2}} = - 0. 3 5 3 5 5 \qquad \frac {\partial^ {2} z}{\partial x \partial y} = 0. 1 7 6 7 8

$$

The first order approximation to  $\Delta z$ , given by equation (G.3), is

$$

\Delta z = 0. 3 5 3 5 5 \times 0. 1 + 0. 7 0 7 1 1 \times 0. 1 = 0. 1 0 6 0 7

$$

The second order approximation, given by equation (G.4), is

$$

\begin{array}{l} \Delta z = 0. 3 5 3 5 5 \times 0. 1 + 0. 7 0 7 1 1 \times 0. 1 \\ + \frac {1}{2} \times (- 0. 0 8 8 3 9) \times (0. 1) ^ {2} + \frac {1}{2} \times (- 0. 3 5 3 5 5) \times (0. 1) ^ {2} \\ + 0. 1 7 6 7 8 \times 0. 1 \times 0. 1 = 0. 1 0 5 6 2 \\ \end{array}

$$

The series solution is converging to the correct answer of 0.10565.

# G.2 General Result

For a function  $z$  of  $n$  variables,  $x_{1}, x_{2}, \ldots, x_{n}$ , the second order approximation given by a Taylor series for  $\Delta z$  is

$$

\Delta z = \sum_ {i = 1} ^ {n} \frac {\partial z}{\partial x _ {i}} \Delta x _ {i} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \frac {\partial^ {2} z}{\partial x _ {i} \partial x _ {j}} \Delta x _ {i} \Delta x _ {j}

$$


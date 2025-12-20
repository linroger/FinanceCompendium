---
title: "Technical Note 8 - Analytic Approximation for Valuing American Options"
tags:
  - american_options
  - option_pricing
  - analytic_approximation
  - critical_stock_price
  - black_scholes
  - dividend_yield
key_concepts:
  - American vs European options
  - Analytic approximation methods
  - Critical stock price calculation
  - Dividend yield effects
parent_directory: "Options Futures & Forwards"
cssclasses: academia
---

# Technical Note 8 - Analytic Approximation for Valuing American Options

**Source:** Options, Futures, and Other Derivatives by John Hull

## Analytic Approximation for Valuing American Options

Consider an option on a stock providing a dividend yield equal to $q$. We will denote the difference between the American and European option prices by $v$. Because both the American and the European option prices satisfy the Black-Scholes differential equation, $v$ also does so. Hence,

$$
\frac{\partial v}{\partial t} + (r - q) S \frac{\partial v}{\partial S} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 v}{\partial S^2} = r v
$$

For convenience, we define

$$
\tau = T - t
$$

$$
h(\tau) = 1 - e^{-r\tau}
$$

$$
\alpha = \frac{2r}{\sigma^2}
$$

$$
\beta = \frac{2(r - q)}{\sigma^2}
$$

We also write, without loss of generality,

$$
v = h(\tau)g(S, h)
$$

With appropriate substitutions and variable changes, this gives

$$
S^2 \frac{\partial^2 g}{\partial S^2} + \beta S \frac{\partial g}{\partial S} - \frac{\alpha}{h} g - (1 - h) \alpha \frac{\partial g}{\partial h} = 0
$$

The approximation involves assuming that the final term on the left-hand side is zero, so that

$$
S^2 \frac{\partial^2 g}{\partial S^2} + \beta S \frac{\partial g}{\partial S} - \frac{\alpha}{h} g = 0 \tag{1}
$$

The ignored term is generally fairly small. When $\tau$ is large, $1 - h$ is close to zero; when $\tau$ is small, $\partial g / \partial h$ is close to zero.

The American call and put prices at time $t$ will be denoted by $C(S, t)$ and $P(S, t)$, where $S$ is the stock price, and the corresponding European call and put prices will be denoted by $c(S, t)$ and $p(S, t)$. Equation (1) can be solved using standard techniques. After boundary conditions have been applied, it is found that

$$
C(S, t) = \begin{cases}
c(S, t) + A_2 \left(\frac{S}{S^*}\right)^{\gamma_2} & \text{when } S < S^* \\
S - K & \text{when } S \geq S^*
\end{cases}
$$

The variable $S^{*}$ is the critical price of the stock above which the option should be exercised. It is estimated by solving the equation

$$
S^* - K = c(S^*, t) + \left\{1 - e^{-q(T - t)} N[d_1(S^*)]\right\} \frac{S^*}{\gamma_2}
$$

iteratively. For a put option, the valuation formula is

$$
P(S, t) = \begin{cases}
p(S, t) + A_1 \left(\frac{S}{S^{**}}\right)^{\gamma_1} & \text{when } S > S^{**} \\
K - S & \text{when } S \leq S^{**}
\end{cases}
$$

The variable $S^{**}$ is the critical price of the stock below which the option should be exercised. It is estimated by solving the equation

$$
K - S^{**} = p(S^{**}, t) - \left\{1 - e^{-q(T - t)} N[-d_1(S^{**})]\right\} \frac{S^{**}}{\gamma_1}
$$

iteratively. The other variables that have been used here are

$$
\gamma_1 = \frac{ - (\beta - 1) - \sqrt{(\beta - 1)^2 + \frac{4\alpha}{h}} }{2}
$$

$$
\gamma_2 = \frac{ - (\beta - 1) + \sqrt{(\beta - 1)^2 + \frac{4\alpha}{h}} }{2}
$$

$$
A_1 = - \left(\frac{S^{**}}{\gamma_1}\right) \left\{1 - e^{-q(T - t)} N[-d_1(S^{**})]\right\}
$$

$$
A_2 = \left(\frac{S^*}{\gamma_2}\right) \left\{1 - e^{-q(T - t)} N[d_1(S^*)]\right\}
$$

$$
d_1(S) = \frac{\ln(S/K) + (r - q + \sigma^2/2)(T - t)}{\sigma\sqrt{T - t}}
$$

Options on stock indices, currencies, and futures contracts are analogous to options on a stock providing a constant dividend yield. Hence the quadratic approximation approach can easily be applied to all of these types of options.

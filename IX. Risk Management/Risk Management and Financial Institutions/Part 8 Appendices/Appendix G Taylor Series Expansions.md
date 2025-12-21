---
title: "Appendix G Taylor Series Expansions"
parent_directory: Part 8 Appendices
formatted: 2025-12-21 12:00:00 PM
formatter_model: kimi-k2-turbo
cli-tool: claude-code
primary_tags:
  - taylor series expansions
  - mathematical approximations
  - derivatives and differentials
secondary_tags:
  - partial derivatives
  - series convergence
  - multivariable functions
  - approximation methods
cssclasses: academia
---

# Appendix G Taylor Series Expansions

Consider a function $z = F(x)$. When a small change $\Delta x$ is made to $x$, there is a corresponding small change $\Delta z$ in $z$. A first approximation to the relationship between $\Delta z$ and $\Delta x$ is

$$
\Delta z = \frac {d z}{d x} \Delta x \tag {G.1}
$$

This relationship is exact if $z$ is a linear function of $x$ and approximate in other situations. A more accurate approximation is

$$
\Delta z = \frac {d z}{d x} \Delta x + \frac {1}{2} \frac {d ^ {2} z}{d x ^ {2}} (\Delta x) ^ {2} \tag {G.2}
$$

```d2
direction: right

Taylor Approximation Process {
  shape: hexagon
  style.fill: "#e8f5e9"
  style.stroke: "#2e7d32"

  Function: f(x₀ + Δx) {
    shape: circle
    style.fill: "#fff3e0"
  }

  Linear: f(x₀) + f'(x₀)Δx {
    shape: rectangle
    style.fill: "#e3f2fd"
  }

  Quadratic: + (1/2)f''(x₀)(Δx)² {
    shape: rectangle
    style.fill: "#f3e5f5"
  }

  Higher Terms: + higher derivatives {
    shape: rectangle
    style.fill: "#fce4ec"
  }

  Exact Value: Converges to true f(x₀ + Δx) {
    shape: circle
    style.fill: "#c8e6c9"
  }

  Function -> Linear: First order approximation
  Linear -> Quadratic: Second order approximation
  Quadratic -> Higher Terms: Better accuracy
  Higher Terms -> Exact Value: Converges with more terms
}
```

This relationship is exact if $z$ is a quadratic function of $x$ and approximate in other situations. By adding more terms in the series, we can increase accuracy. The full expansion is

$$
\Delta z = \frac {d z}{d x} \Delta x + \frac {1}{2 !} \frac {d ^ {2} z}{d x ^ {2}} (\Delta x) ^ {2} + \frac {1}{3 !} \frac {d ^ {3} z}{d x ^ {3}} (\Delta x) ^ {3} + \frac {1}{4 !} \frac {d ^ {4} z}{d x ^ {4}} (\Delta x) ^ {4} + \dots
$$ where ! denotes the factorial function: $2! = 2\times 1 = 2$. $3! = 3\times 2\times 1 = 6$. $4! = 4\times 3\times 2\times 1 = 24$; and so on.

## Example G.1

Consider the function $z = \sqrt{x}$ so that

$$

{\frac {d z}{d x}} = {\frac {1}{2 x ^ {1 / 2}}} \qquad {\frac {d ^ {2} z}{d x ^ {2}}} = - {\frac {1}{4 x ^ {3 / 2}}} \qquad {\frac {d ^ {3} z}{d x ^ {3}}} = {\frac {3}{8 x ^ {5 / 2}}}

$$

Suppose that $x = 2$ and $\Delta x = 0.1$ so that $\Delta z = \sqrt{2.1} - \sqrt{2} = 0.034924$. When $x = 2$,

$$

 \frac {d z}{d x} = 0.35355 \qquad \frac {d ^ {2} z}{d x ^ {2}} = - 0.08839 \qquad \frac {d ^ {3} z}{d x ^ {3}} = 0.06629

$$

The first order approximation to $\Delta z$, given by equation (G.1), is

$$

 \Delta z = 0.35355 \times 0.1 = 0.035355

$$

The second order approximation, given by equation (G.2), is

$$

 \Delta z = 0.35355 \times 0.1 + \frac {1}{2} \times (- 0.08839) \times 0.1 ^ {2} = 0.034913

$$

The third order approximation is

$$

 \Delta z = 0.35355 \times 0.1 + \frac {1}{2} \times (- 0.08839) \times 0.1 ^ {2} + \frac {1}{6} \times 0.06629 \times 0.1 ^ {3} = 0.034924

$$

It can be seen that the series expansion quickly converges to the correct answer of 0.034924.

## G.1 Functions of Two Variables

Consider next a function of two variables, $z = F(x,\gamma)$. Suppose that $\Delta x$ and $\Delta y$ are small changes in $x$ and $\gamma$, respectively, and that $\Delta z$ is the corresponding small change in $z$. In this case, the first order approximation is

$$

\Delta z = \frac {\partial z}{\partial x} \Delta x + \frac {\partial z}{\partial y} \Delta y \tag {G.3}

$$

The second order approximation is

$$

\Delta z = \frac {\partial z}{\partial x} \Delta x + \frac {\partial z}{\partial \gamma} \Delta \gamma + \frac {1}{2} \frac {\partial^ {2} z}{\partial x ^ {2}} (\Delta x) ^ {2} + \frac {1}{2} \frac {\partial^ {2} z}{\partial \gamma^ {2}} (\Delta \gamma) ^ {2} + \frac {\partial^ {2} z}{\partial x \partial \gamma} (\Delta x \Delta \gamma) \qquad (G. 4)

$$

## Example G.2

Consider the function $z = \sqrt{xy}$ so that

$$

\frac {\partial z}{\partial x} = \frac {\gamma^ {1 / 2}}{2 x ^ {1 / 2}} \qquad \frac {\partial z}{\partial \gamma} = \frac {x ^ {1 / 2}}{2 \gamma^ {1 / 2}}

$$

$$

\frac {\partial^ {2} z}{\partial x ^ {2}} = - \frac {\gamma^ {1 / 2}}{4 x ^ {3 / 2}} \qquad \frac {\partial^ {2} z}{\partial \gamma^ {2}} = - \frac {x ^ {1 / 2}}{4 \gamma^ {3 / 2}} \qquad \frac {\partial^ {2} z}{\partial x \partial \gamma} = \frac {1}{4 (x \gamma) ^ {1 / 2}}

$$

Suppose that $x = 2$, $\gamma = 1$, $\Delta x = 0.1$, and $\Delta \gamma = 0.1$ so that

$$

 \Delta z = \sqrt {2.1 \times 1.1} - \sqrt {2 \times 1} = 0.10565

$$

When $x = 2$ and $\gamma = 1$

$$

 \frac {\partial z}{\partial x} = 0.35355 \qquad \frac {\partial z}{\partial y} = 0.70711

$$

$$

 \frac {\partial^ {2} z}{\partial x ^ {2}} = - 0.08839 \qquad \frac {\partial^ {2} z}{\partial y ^ {2}} = - 0.35355 \qquad \frac {\partial^ {2} z}{\partial x \partial y} = 0.17678

$$

The first order approximation to $\Delta z$, given by equation (G.3), is

$$

 \Delta z = 0.35355 \times 0.1 + 0.70711 \times 0.1 = 0.10607

$$

The second order approximation, given by equation (G.4), is

$$

 \begin{array}{l} \Delta z = 0.35355 \times 0.1 + 0.70711 \times 0.1 \\ + \frac {1}{2} \times (- 0.08839) \times (0.1) ^ {2} + \frac {1}{2} \times (- 0.35355) \times (0.1) ^ {2} \\ + 0.17678 \times 0.1 \times 0.1 = 0.10562 \\ \end{array}

$$

The series solution is converging to the correct answer of 0.10565.

## G.2 General Result

For a function $z$ of $n$ variables, $x_{1}, x_{2}, \ldots, x_{n}$, the second order approximation given by a Taylor series for $\Delta z$ is

$$

\Delta z = \sum_ {i = 1} ^ {n} \frac {\partial z}{\partial x _ {i}} \Delta x _ {i} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \frac {\partial^ {2} z}{\partial x _ {i} \partial x _ {j}} \Delta x _ {i} \Delta x _ {j}

$$


# Quantitative Equations Handbook

## A Canonical Reference for Graduate-Level Economics, Finance, and Quantitative Research

---

## Calculus

### Derivative Definition (Limit Definition)

**Equation:**
```latex
f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}
```

**Notes:**
Defines the instantaneous rate of change of function f at point x. Fundamental to differential calculus, used in marginal analysis, optimization, and sensitivity calculations. f(x) must be continuous at x for the limit to exist. h represents an infinitesimal change in x. Essential for understanding elasticity in economics and Greeks in derivatives pricing.

---

### Power Rule

**Equation:**
```latex
\frac{d}{dx}[x^n] = nx^{n-1}
```

**Notes:**
Differentiates power functions where n is any real constant. Applies to polynomial, rational, and radical functions. Used extensively in utility functions, production functions, and cost curves. For n = 0, derivative is zero (constant rule). Forms the basis for differentiating returns and growth rates in financial models.

---

### Product Rule

**Equation:**
```latex
\frac{d}{dx}[f(x)g(x)] = f'(x)g(x) + f(x)g'(x)
```

**Notes:**
Differentiates the product of two functions. f(x) and g(x) must be differentiable at x. Critical for decomposing multiplicative relationships such as revenue (price × quantity), present value calculations, and compounded growth models. Used in Ito's lemma for stochastic calculus.

---

### Quotient Rule

**Equation:**
```latex
\frac{d}{dx}\left[\frac{f(x)}{g(x)}\right] = \frac{f'(x)g(x) - f(x)g'(x)}{[g(x)]^2}
```

**Notes:**
Differentiates the quotient of two functions where g(x) ≠ 0. Essential for ratios such as price-to-earnings, debt-to-equity, Sharpe ratio derivatives, and elasticity calculations. Denominator must be non-zero in the domain of interest. Used in marginal rate of substitution and transformation in microeconomics.

---

### Chain Rule

**Equation:**
```latex
\frac{d}{dx}[f(g(x))] = f'(g(x)) \cdot g'(x)
```

**Notes:**
Differentiates composite functions. Fundamental for nested relationships common in finance (e.g., option pricing models, utility of wealth). Also written as (f ∘ g)'(x) = f'(g(x))g'(x) or in Leibniz notation: dy/dx = (dy/du)(du/dx). Critical for computing sensitivities in multi-layered models and risk management.

---

### Exponential and Logarithmic Derivatives

**Equation:**
```latex
\frac{d}{dx}[e^x] = e^x, \quad \frac{d}{dx}[\ln(x)] = \frac{1}{x}
```

**Notes:**
Natural exponential function e^x is its own derivative. Natural logarithm derivative is 1/x for x > 0. These functions are fundamental in continuous compounding, present value calculations, log-returns, and growth models. For general exponential a^x, derivative is a^x ln(a). Used in entropy measures and maximum likelihood estimation.

---

### L'Hôpital's Rule

**Equation:**
```latex
\lim_{x \to c} \frac{f(x)}{g(x)} = \lim_{x \to c} \frac{f'(x)}{g'(x)}
```

**Notes:**
Evaluates indeterminate forms 0/0 or ∞/∞ by differentiating numerator and denominator separately. Apply repeatedly if needed until determinate form is reached. Requires f and g to be differentiable near c. Used in asymptotic analysis, limit pricing models, and evaluating complex financial ratios at boundary conditions.

---

### Fundamental Theorem of Calculus (Part I)

**Equation:**
```latex
\frac{d}{dx}\left[\int_a^x f(t)\,dt\right] = f(x)
```

**Notes:**
If F(x) = ∫ₐˣ f(t)dt, then F'(x) = f(x) for continuous f. Links differentiation and integration as inverse operations. Shows that accumulation function F has derivative equal to the original function f. Essential for understanding cumulative distributions, total revenue from marginal revenue, and wealth accumulation from income flows.

---

### Fundamental Theorem of Calculus (Part II)

**Equation:**
```latex
\int_a^b f(x)\,dx = F(b) - F(a)
```

**Notes:**
Evaluates definite integrals using antiderivatives, where F'(x) = f(x). F is any antiderivative of continuous function f on [a,b]. Provides practical method for computing areas, total surplus, present values, and expected values. Foundation for numerical integration and Monte Carlo methods in quantitative finance.

---

### Integration by Parts

**Equation:**
```latex
\int u\,dv = uv - \int v\,du
```

**Notes:**
Technique for integrating products of functions. Derived from product rule. Choose u and dv such that ∫v du is simpler than ∫u dv. Commonly use LIATE rule (Logarithmic, Inverse trig, Algebraic, Trigonometric, Exponential) to choose u. Essential for integrating functions in option pricing (e.g., expectation calculations) and partial differential equations.

---

### Taylor Series Expansion

**Equation:**
```latex
f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \cdots
```

**Notes:**
Approximates function f near point a using derivatives at a. f must be infinitely differentiable at a. Series converges within radius of convergence. Used for delta-gamma approximations in derivatives, local approximations of utility functions, and linearization in dynamic models. First-order truncation gives linear approximation; second-order gives quadratic.

---

### Maclaurin Series

**Equation:**
```latex
f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!}x^n = f(0) + f'(0)x + \frac{f''(0)}{2!}x^2 + \cdots
```

**Notes:**
Special case of Taylor series centered at a = 0. Common expansions: e^x = Σ(x^n/n!), sin(x) = Σ((-1)^n x^(2n+1)/(2n+1)!), ln(1+x) = Σ((-1)^(n+1) x^n/n) for |x| < 1. Used in approximating option pricing formulas, probability distributions, and moment generating functions.

---

### Gradient Vector

**Equation:**
```latex
\nabla f = \left(\frac{\partial f}{\partial x_1}, \frac{\partial f}{\partial x_2}, \ldots, \frac{\partial f}{\partial x_n}\right)
```

**Notes:**
Vector of partial derivatives for multivariable function f: ℝⁿ → ℝ. Points in direction of steepest ascent; magnitude indicates rate of increase. Used in portfolio optimization, gradient descent algorithms, and first-order conditions for maximization. Set ∇f = 0 to find critical points. Essential for machine learning and numerical optimization.

---

### Hessian Matrix

**Equation:**
```latex
H(f) = \begin{bmatrix}
\frac{\partial^2 f}{\partial x_1^2} & \frac{\partial^2 f}{\partial x_1 \partial x_2} & \cdots & \frac{\partial^2 f}{\partial x_1 \partial x_n} \\
\frac{\partial^2 f}{\partial x_2 \partial x_1} & \frac{\partial^2 f}{\partial x_2^2} & \cdots & \frac{\partial^2 f}{\partial x_2 \partial x_n} \\
\vdots & \vdots & \ddots & \vdots \\
\frac{\partial^2 f}{\partial x_n \partial x_1} & \frac{\partial^2 f}{\partial x_n \partial x_2} & \cdots & \frac{\partial^2 f}{\partial x_n^2}
\end{bmatrix}
```

**Notes:**
Symmetric matrix of second-order partial derivatives for f: ℝⁿ → ℝ. Characterizes local curvature and convexity. If H is positive definite at critical point, f has local minimum; negative definite implies local maximum. Used for second-order conditions in optimization, risk assessment (gamma effects), and Newton-Raphson methods. Eigenvalues determine definiteness.

---

### Jacobian Matrix

**Equation:**
```latex
J = \begin{bmatrix}
\frac{\partial f_1}{\partial x_1} & \frac{\partial f_1}{\partial x_2} & \cdots & \frac{\partial f_1}{\partial x_n} \\
\frac{\partial f_2}{\partial x_1} & \frac{\partial f_2}{\partial x_2} & \cdots & \frac{\partial f_2}{\partial x_n} \\
\vdots & \vdots & \ddots & \vdots \\
\frac{\partial f_m}{\partial x_1} & \frac{\partial f_m}{\partial x_2} & \cdots & \frac{\partial f_m}{\partial x_n}
\end{bmatrix}
```

**Notes:**
Matrix of first-order partial derivatives for vector-valued function f: ℝⁿ → ℝᵐ. Generalizes gradient to multiple outputs. Jacobian determinant (when m=n) measures local volume distortion under transformation. Used in change of variables for integration, sensitivity analysis of systems, and general equilibrium models. Critical for multivariate delta hedging.

---

### Implicit Function Theorem

**Equation:**
```latex
F(x,y) = 0 \implies \frac{dy}{dx} = -\frac{\partial F/\partial x}{\partial F/\partial y}
```

**Notes:**
Provides derivative of implicitly defined function y(x) from F(x,y) = 0, assuming ∂F/∂y ≠ 0. Generalizes to systems: if F: ℝⁿ⁺ᵐ → ℝᵐ and det(∂F/∂y) ≠ 0, then y is locally a function of x. Used in comparative statics, finding marginal rates of substitution, and solving equilibrium conditions without explicit solutions.

---

### Leibniz Integral Rule

**Equation:**
```latex
\frac{d}{dx}\left[\int_{a(x)}^{b(x)} f(x,t)\,dt\right] = \int_{a(x)}^{b(x)} \frac{\partial f}{\partial x}(x,t)\,dt + f(x,b(x))b'(x) - f(x,a(x))a'(x)
```

**Notes:**
Differentiates integral with variable limits and integrand. Special case with constant limits: d/dx[∫ₐᵇ f(x,t)dt] = ∫ₐᵇ (∂f/∂x)dt. Requires f and ∂f/∂x to be continuous. Used in dynamic optimization, envelope theorems, and deriving pricing formulas where integration bounds depend on parameters. Essential for stochastic control and option pricing.

---

### Lagrangian Multiplier Condition

**Equation:**
```latex
\nabla f(x^*) = \lambda \nabla g(x^*)
```

**Notes:**
First-order necessary condition for constrained optimization: maximize f(x) subject to g(x) = c. At optimum x*, gradients of objective f and constraint g are parallel. λ (Lagrange multiplier) represents shadow price: marginal value of relaxing constraint. Forms Lagrangian: L(x,λ) = f(x) - λ(g(x) - c). Used in utility maximization, portfolio optimization with constraints, and general equilibrium.

---

### Euler-Lagrange Equation

**Equation:**
```latex
\frac{\partial F}{\partial y} - \frac{d}{dx}\left(\frac{\partial F}{\partial y'}\right) = 0
```

**Notes:**
Necessary condition for extremizing functional I[y] = ∫ₐᵇ F(x, y, y')dx in calculus of variations. y(x) is the function that extremizes I; y' = dy/dx. Boundary conditions y(a) and y(b) are specified. Generalizes to multiple functions and higher derivatives. Used in optimal control theory, continuous-time portfolio selection, and deriving economic growth paths.

---

### Mean Value Theorem

**Equation:**
```latex
\frac{f(b) - f(a)}{b - a} = f'(c)
```

**Notes:**
For continuous f on [a,b] and differentiable on (a,b), there exists c ∈ (a,b) where instantaneous rate equals average rate. Guarantees existence of point where derivative equals difference quotient. Foundation for Taylor's theorem and optimization. Used to bound pricing errors, establish convergence rates, and prove monotonicity in comparative statics.

---

### Partial Derivative

**Equation:**
```latex
\frac{\partial f}{\partial x_i} = \lim_{h \to 0} \frac{f(x_1, \ldots, x_i + h, \ldots, x_n) - f(x_1, \ldots, x_i, \ldots, x_n)}{h}
```

**Notes:**
Derivative of multivariable function f with respect to variable xᵢ, holding all other variables constant. Measures marginal effect of xᵢ on f. Essential for marginal analysis in economics: marginal product, marginal utility, marginal cost. Used in sensitivity analysis and computing Greeks in options. Assumes f is differentiable at the point.

---

### Green's Theorem

**Equation:**
```latex
\oint_C (L\,dx + M\,dy) = \iint_D \left(\frac{\partial M}{\partial x} - \frac{\partial L}{\partial y}\right) dA
```

**Notes:**
Relates line integral around simple closed curve C to double integral over region D enclosed by C. L(x,y) and M(x,y) must have continuous partial derivatives on open region containing D. C traversed counterclockwise. Connects circulation to curl. Used in fluid dynamics, conservative vector fields in economics, and verifying path independence of line integrals in finance.

---

### Stokes' Theorem

**Equation:**
```latex
\int_S (\nabla \times \mathbf{F}) \cdot d\mathbf{S} = \oint_{\partial S} \mathbf{F} \cdot d\mathbf{r}
```

**Notes:**
Generalizes Green's theorem to three dimensions. Relates surface integral of curl over surface S to line integral around boundary ∂S. F is a vector field with continuous partial derivatives. dS is oriented surface element; dr is line element. Used in physics-based financial models, electromagnetic analogies in market dynamics, and path-dependent options. Fundamental theorem for differential forms.

---

### Divergence Theorem (Gauss's Theorem)

**Equation:**
```latex
\iiint_V (\nabla \cdot \mathbf{F})\,dV = \iint_{\partial V} \mathbf{F} \cdot d\mathbf{S}
```

**Notes:**
Relates volume integral of divergence over region V to flux through boundary surface ∂V. F is a vector field with continuous partial derivatives. dS points outward from V. Converts between volume and surface integrals. Used in conservation laws, flow models in economics, and relating aggregate quantities to boundary behavior. Essential for PDEs in mathematical finance.

---

### Integration by Substitution (Change of Variables)

**Equation:**
```latex
\int f(g(x))g'(x)\,dx = \int f(u)\,du, \quad u = g(x)
```

**Notes:**
Reverse of chain rule for integration. Substitution u = g(x) simplifies integral; du = g'(x)dx. For definite integrals, transform limits: ∫ₐᵇ f(g(x))g'(x)dx = ∫_{g(a)}^{g(b)} f(u)du. Essential for computing expectations with transformed random variables, change of measure in probability, and evaluating option payoffs.

---

### Partial Integration (Multivariable)

**Equation:**
```latex
\int_a^b \frac{\partial F}{\partial x}(x,y)\,dx = F(b,y) - F(a,y)
```

**Notes:**
Extends fundamental theorem to partial derivatives. Integrates with respect to one variable while treating others as constants. Used in solving PDEs (e.g., Black-Scholes), computing marginal distributions from joint densities, and analyzing multi-factor models. Fubini's theorem allows interchanging order of integration when conditions are met.

---

### Cauchy-Schwarz Inequality

**Equation:**
```latex
\left|\int f(x)g(x)\,dx\right| \leq \sqrt{\int f(x)^2\,dx} \cdot \sqrt{\int g(x)^2\,dx}
```

**Notes:**
Fundamental inequality for inner products in L² spaces. Discrete form: |Σxᵢyᵢ| ≤ √(Σxᵢ²)√(Σyᵢ²). Equality holds when f and g are linearly dependent. Used in portfolio theory (correlation bounds), deriving variance inequalities, and proving convergence in functional analysis. Foundation for correlation coefficient being in [-1,1].

---

### Convexity and Jensen's Inequality

**Equation:**
```latex
f'(x)(y-x) \leq f(y) - f(x) \leq f'(y)(y-x), \quad f''(x) \geq 0
```

**Notes:**
For convex function f (f'' ≥ 0), function lies above all tangent lines. Concave if f'' ≤ 0. Jensen's inequality: f(E[X]) ≤ E[f(X)] for convex f. Used in risk aversion analysis, option pricing bounds, portfolio optimization, and utility theory. Strict convexity (f'' > 0) ensures unique global minimum.

---

### Envelope Theorem

**Equation:**
```latex
\frac{dV(a)}{da} = \frac{\partial L(x^*(a), a)}{\partial a}
```

**Notes:**
For optimization problem V(a) = max_x L(x,a), derivative of value function V with respect to parameter a equals partial derivative of Lagrangian at optimum x*(a). Direct effects only; indirect effects through x* vanish by first-order condition. Used in comparative statics, computing derivatives of optimal portfolios, and dynamic programming. Fundamental for sensitivity analysis.

---

### Intermediate Value Theorem

**Equation:**
```latex
f(a) \leq k \leq f(b) \implies \exists c \in (a,b): f(c) = k
```

**Notes:**
For continuous f on [a,b], f attains all values between f(a) and f(b). Guarantees existence of solutions (e.g., roots, equilibria). Used to prove existence of market-clearing prices, fixed points, and equilibrium strategies. Does not guarantee uniqueness; additional conditions (monotonicity, convexity) required for that.

---

### Total Derivative

**Equation:**
```latex
\frac{df}{dt} = \frac{\partial f}{\partial x}\frac{dx}{dt} + \frac{\partial f}{\partial y}\frac{dy}{dt}
```

**Notes:**
Rate of change of f(x(t), y(t)) along a path. Generalizes to n variables: df/dt = Σᵢ(∂f/∂xᵢ)(dxᵢ/dt). Chain rule for multivariable functions. Used in dynamic models where state variables evolve over time, computing sensitivities along trajectories, and stochastic calculus (Ito's lemma). Essential for time-series analysis of dependent variables.

---

## Microeconomics

### Budget Constraint

**Equation:**
```latex
\sum_{i=1}^{n} p_i x_i \leq m
```

**Notes:**
The budget constraint states that total expenditure on all goods cannot exceed income. Fundamental to consumer choice theory. Where $p_i$ is the price of good $i$ ($p_i > 0$), $x_i$ is the quantity of good $i$ ($x_i \geq 0$), and $m$ is income ($m > 0$). The constraint is typically binding at optimum: $\sum_{i=1}^{n} p_i x_i = m$.

---

### Utility Maximization (Lagrangian)

**Equation:**
```latex
\mathcal{L}(x_1, \ldots, x_n, \lambda) = u(x_1, \ldots, x_n) - \lambda \left( \sum_{i=1}^{n} p_i x_i - m \right)
```

**Notes:**
The Lagrangian formulation for utility maximization subject to budget constraint. FOCs: $\frac{\partial \mathcal{L}}{\partial x_i} = \frac{\partial u}{\partial x_i} - \lambda p_i = 0$ for all $i$, and $\frac{\partial \mathcal{L}}{\partial \lambda} = m - \sum_{i=1}^{n} p_i x_i = 0$. Where $u(\cdot)$ is utility function (continuous, differentiable, strictly quasi-concave), $\lambda$ is the Lagrange multiplier (marginal utility of income). Solution yields Marshallian demand functions.

---

### Marginal Rate of Substitution

**Equation:**
```latex
\text{MRS}_{x,y} = -\frac{dy}{dx}\bigg|_{\bar{u}} = \frac{\partial u / \partial x}{\partial u / \partial y} = \frac{MU_x}{MU_y}
```

**Notes:**
The rate at which a consumer is willing to trade good $y$ for good $x$ while maintaining constant utility. At optimum, MRS equals price ratio: $\text{MRS}_{x,y} = \frac{p_x}{p_y}$. Where $MU_x = \frac{\partial u}{\partial x}$ is marginal utility of good $x$, $\bar{u}$ is constant utility level. Assumes diminishing MRS for convex preferences.

---

### Marshallian Demand

**Equation:**
```latex
x_i^* = x_i(p_1, \ldots, p_n, m)
```

**Notes:**
Marshallian (uncompensated) demand functions result from utility maximization. Dependent on all prices and income. Properties: homogeneous of degree zero in $(p, m)$, satisfy budget constraint, satisfy Slutsky symmetry. Aggregates to market demand. Used in welfare analysis and elasticity calculations.

---

### Hicksian (Compensated) Demand

**Equation:**
```latex
h_i(p_1, \ldots, p_n, \bar{u}) = \arg\min_{x} \sum_{j=1}^{n} p_j x_j \quad \text{s.t.} \quad u(x_1, \ldots, x_n) \geq \bar{u}
```

**Notes:**
Hicksian (compensated) demand functions result from expenditure minimization at fixed utility level $\bar{u}$. Properties: homogeneous of degree zero in $p$, no income effect (pure substitution effect), satisfy compensated law of demand: $\frac{\partial h_i}{\partial p_i} \leq 0$. Related to Marshallian demand via $h_i(p, u) = x_i(p, e(p, u))$ where $e(\cdot)$ is expenditure function.

---

### Indirect Utility Function

**Equation:**
```latex
v(p_1, \ldots, p_n, m) = \max_{x} u(x_1, \ldots, x_n) \quad \text{s.t.} \quad \sum_{i=1}^{n} p_i x_i = m
```

**Notes:**
Maximum utility attainable given prices and income. Properties: homogeneous of degree zero in $(p, m)$, strictly increasing in $m$, decreasing in $p_i$, quasi-convex in $p$. Satisfies $v(p, m) = u(x^*(p, m))$ where $x^*$ is Marshallian demand. Foundation for welfare comparisons and Roy's Identity.

---

### Expenditure Function

**Equation:**
```latex
e(p_1, \ldots, p_n, \bar{u}) = \min_{x} \sum_{i=1}^{n} p_i x_i \quad \text{s.t.} \quad u(x_1, \ldots, x_n) = \bar{u}
```

**Notes:**
Minimum expenditure needed to achieve utility level $\bar{u}$ at prices $p$. Properties: homogeneous of degree one in $p$, strictly increasing in $\bar{u}$ and $p_i$, concave in $p$. Dual to indirect utility function: $e(p, v(p, m)) = m$ and $v(p, e(p, \bar{u})) = \bar{u}$. Foundation for Shephard's Lemma and consumer welfare measurement.

---

### Roy's Identity

**Equation:**
```latex
x_i(p, m) = -\frac{\partial v(p, m) / \partial p_i}{\partial v(p, m) / \partial m}
```

**Notes:**
Derives Marshallian demand from indirect utility function using envelope theorem. Assumes $v(\cdot)$ is differentiable and $\frac{\partial v}{\partial m} \neq 0$. Powerful tool for recovering demand functions from indirect utility. Application of duality theory in consumer choice.

---

### Shephard's Lemma

**Equation:**
```latex
h_i(p, \bar{u}) = \frac{\partial e(p, \bar{u})}{\partial p_i}
```

**Notes:**
Derives Hicksian demand from expenditure function using envelope theorem. Assumes $e(\cdot)$ is differentiable. Shows that compensated demand equals derivative of expenditure function. Fundamental duality result linking expenditure minimization to compensated demand. Used in welfare analysis and deadweight loss calculations.

---

### Slutsky Equation

**Equation:**
```latex
\frac{\partial x_i(p, m)}{\partial p_j} = \frac{\partial h_i(p, \bar{u})}{\partial p_j} - \frac{\partial x_i(p, m)}{\partial m} \cdot x_j(p, m)
```

**Notes:**
Decomposes price effect into substitution effect (first term) and income effect (second term). Where $\frac{\partial h_i}{\partial p_j}$ is substitution effect (always non-positive for $i=j$), $\frac{\partial x_i}{\partial m} \cdot x_j$ is income effect. Matrix form: $D_p x = D_p h - D_m x \cdot x^T$ where $D_p h$ is negative semidefinite. Critical for classifying goods (normal, inferior, Giffen).

---

### Elasticity of Demand

**Equation:**
```latex
\epsilon_{x,p} = \frac{\partial x}{\partial p} \cdot \frac{p}{x} = \frac{d \ln x}{d \ln p}
```

**Notes:**
Price elasticity of demand: percentage change in quantity demanded per percentage change in price. Where $\epsilon_{x,p} < 0$ for normal goods (law of demand), $|\epsilon_{x,p}| > 1$ is elastic (revenue decreases with price), $|\epsilon_{x,p}| < 1$ is inelastic (revenue increases with price), $|\epsilon_{x,p}| = 1$ is unit elastic. Income elasticity: $\epsilon_{x,m} = \frac{\partial x}{\partial m} \cdot \frac{m}{x}$. Cross-price elasticity: $\epsilon_{x,p_y} = \frac{\partial x}{\partial p_y} \cdot \frac{p_y}{x}$.

---

### Cobb-Douglas Utility Function

**Equation:**
```latex
u(x_1, \ldots, x_n) = \prod_{i=1}^{n} x_i^{\alpha_i} \quad \text{where} \quad \sum_{i=1}^{n} \alpha_i = 1, \; \alpha_i > 0
```

**Notes:**
Homothetic preferences with constant expenditure shares. Marshallian demand: $x_i^* = \frac{\alpha_i m}{p_i}$. Expenditure share: $\frac{p_i x_i}{m} = \alpha_i$ (constant). Elasticity of substitution $\sigma = 1$. Income elasticity equals 1 for all goods (homothetic). No income effects, only substitution effects. Widely used in macro and CGE models. Log-linear indifference curves.

---

### CES Utility Function

**Equation:**
```latex
u(x_1, \ldots, x_n) = \left( \sum_{i=1}^{n} \alpha_i x_i^{\rho} \right)^{1/\rho} \quad \text{where} \quad \rho \leq 1, \; \rho \neq 0, \; \alpha_i > 0, \; \sum \alpha_i = 1
```

**Notes:**
Constant Elasticity of Substitution utility. Elasticity of substitution: $\sigma = \frac{1}{1-\rho}$. Special cases: $\rho \to 0$ yields Cobb-Douglas ($\sigma = 1$), $\rho = 1$ yields perfect substitutes ($\sigma = \infty$), $\rho \to -\infty$ yields Leontief/perfect complements ($\sigma = 0$). Homothetic preferences. Flexible functional form for empirical work. Widely used in international trade and growth theory.

---

### Cobb-Douglas Production Function

**Equation:**
```latex
Y = A K^{\alpha} L^{\beta} \quad \text{where} \quad A > 0, \; \alpha, \beta \in (0, 1)
```

**Notes:**
Production function with capital $K$ and labor $L$. Where $A$ is total factor productivity, $\alpha$ is output elasticity of capital, $\beta$ is output elasticity of labor. Returns to scale: $\alpha + \beta < 1$ (decreasing), $\alpha + \beta = 1$ (constant), $\alpha + \beta > 1$ (increasing). Factor shares constant: $\frac{\alpha Y}{K} = r$ (capital), $\frac{\beta Y}{L} = w$ (labor). Elasticity of substitution $\sigma = 1$. Widely used in growth theory and empirical work.

---

### CES Production Function

**Equation:**
```latex
Y = A \left[ \alpha K^{\rho} + (1-\alpha) L^{\rho} \right]^{1/\rho} \quad \text{where} \quad \rho \leq 1, \; \rho \neq 0, \; \alpha \in (0,1)
```

**Notes:**
Constant Elasticity of Substitution production function. Elasticity of substitution: $\sigma = \frac{1}{1-\rho}$. Special cases: $\rho \to 0$ yields Cobb-Douglas, $\rho = 1$ yields linear (perfect substitutes), $\rho \to -\infty$ yields Leontief (perfect complements). Where $A > 0$ is productivity parameter, $\alpha$ is distribution parameter. Assumes constant returns to scale. Allows flexible substitution between inputs. Used in empirical production analysis and trade models.

---

### Returns to Scale

**Equation:**
```latex
f(tK, tL) = t^{\gamma} f(K, L) \quad \text{where} \quad \begin{cases} \gamma < 1 & \text{DRS} \\ \gamma = 1 & \text{CRS} \\ \gamma > 1 & \text{IRS} \end{cases}
```

**Notes:**
Measures how output scales with proportional increases in all inputs. Where $t > 1$ is scaling factor, $\gamma$ is degree of homogeneity. Decreasing returns to scale (DRS) often due to managerial constraints. Constant returns to scale (CRS) implies perfect replication, homogeneous of degree 1, and $\sum_i \frac{\partial f}{\partial x_i} x_i = f$ (Euler's theorem). Increasing returns to scale (IRS) from specialization, network effects, or fixed costs. CRS critical for competitive equilibrium existence.

---

### Marginal Rate of Technical Substitution

**Equation:**
```latex
\text{MRTS}_{L,K} = -\frac{dK}{dL}\bigg|_{\bar{Y}} = \frac{\partial f / \partial L}{\partial f / \partial K} = \frac{MP_L}{MP_K}
```

**Notes:**
Rate at which capital can be substituted for labor while maintaining constant output. At cost minimum, MRTS equals input price ratio: $\text{MRTS}_{L,K} = \frac{w}{r}$. Where $MP_L = \frac{\partial f}{\partial L}$ is marginal product of labor, $MP_K = \frac{\partial f}{\partial K}$ is marginal product of capital, $w$ is wage rate, $r$ is rental rate of capital. Assumes diminishing MRTS (convex isoquants). Slope of isoquant in $(L, K)$ space.

---

### Cost Minimization (Lagrangian)

**Equation:**
```latex
\mathcal{L}(K, L, \lambda) = wL + rK - \lambda \left( f(K, L) - \bar{Y} \right)
```

**Notes:**
Lagrangian formulation for cost minimization subject to production constraint. FOCs: $\frac{\partial \mathcal{L}}{\partial L} = w - \lambda \frac{\partial f}{\partial L} = 0$, $\frac{\partial \mathcal{L}}{\partial K} = r - \lambda \frac{\partial f}{\partial K} = 0$, $\frac{\partial \mathcal{L}}{\partial \lambda} = \bar{Y} - f(K, L) = 0$. Where $w$ is wage, $r$ is capital rental rate, $\bar{Y}$ is target output, $\lambda$ is marginal cost. Solution yields conditional factor demands $K^c(w, r, \bar{Y})$ and $L^c(w, r, \bar{Y})$, and cost function $C(w, r, \bar{Y})$.

---

### Profit Maximization Condition

**Equation:**
```latex
\max_{K, L} \pi = p \cdot f(K, L) - wL - rK \implies \begin{cases} p \cdot \frac{\partial f}{\partial L} = w \\ p \cdot \frac{\partial f}{\partial K} = r \end{cases}
```

**Notes:**
Competitive firm sets marginal revenue product equal to factor price. Where $p$ is output price (exogenous in perfect competition), $\pi$ is profit. FOCs imply $\frac{w}{r} = \frac{\partial f / \partial L}{\partial f / \partial K}$ (cost minimization condition). Under CRS, FOCs determine factor demands but not output scale (zero profit in equilibrium). SOCs require concave production function or DRS. Yields unconditional factor demands $K^*(p, w, r)$ and $L^*(p, w, r)$.

---

### Hotelling's Lemma

**Equation:**
```latex
y^*(p, w) = \frac{\partial \pi(p, w)}{\partial p} \quad \text{and} \quad x_i^*(p, w) = -\frac{\partial \pi(p, w)}{\partial w_i}
```

**Notes:**
Derives supply and factor demands from profit function using envelope theorem. Where $\pi(p, w) = \max_{y, x} \{py - w \cdot x : f(x) \geq y\}$ is profit function, $y^*$ is output supply, $x_i^*$ is demand for input $i$, $w_i$ is price of input $i$. Assumes $\pi(\cdot)$ is differentiable. Profit function is convex in $p$ and concave in $w$. Application of duality in producer theory. Used for comparative statics.

---

### Envelope Theorem

**Equation:**
```latex
\frac{dV^*(\alpha)}{d\alpha} = \frac{\partial V(x^*(\alpha), \alpha)}{\partial \alpha}\bigg|_{x=x^*(\alpha)}
```

**Notes:**
The derivative of the value function with respect to a parameter equals the partial derivative of the objective function, holding choice variables at their optimal values. Where $V^*(\alpha) = V(x^*(\alpha), \alpha)$ is value function, $x^*(\alpha) = \arg\max_x V(x, \alpha)$ is optimal choice. The indirect effect through $\frac{dx^*}{d\alpha}$ vanishes by FOC. Foundation for Roy's Identity, Shephard's Lemma, and Hotelling's Lemma. Critical for comparative statics in optimization problems.

---

### Monopoly Pricing (MR=MC)

**Equation:**
```latex
MR(Q) = p(Q) + Q \frac{dp}{dQ} = MC(Q) \implies p^* = \frac{MC(Q^*)}{1 + \frac{1}{\epsilon}}
```

**Notes:**
Monopolist sets marginal revenue equal to marginal cost. Where $p(Q)$ is inverse demand function, $\epsilon = \frac{dp}{dQ} \cdot \frac{Q}{p} < 0$ is price elasticity of demand, $Q^*$ is optimal quantity. Since $\frac{dp}{dQ} < 0$, we have $MR < p$ (monopolist produces less than competitive level). Markup: $\frac{p - MC}{p} = -\frac{1}{\epsilon}$ (Lerner Index). Requires $|\epsilon| > 1$ for positive output. Dead-weight loss arises from underproduction.

---

### Lerner Index

**Equation:**
```latex
L = \frac{p - MC(Q)}{p} = -\frac{1}{\epsilon_d}
```

**Notes:**
Measures market power as percentage markup of price over marginal cost. Where $\epsilon_d$ is price elasticity of demand. Range: $L \in [0, 1]$ where $L = 0$ for perfect competition ($p = MC$) and $L \to 1$ for highly inelastic demand or high market power. Under Cournot competition with $n$ symmetric firms: $L = \frac{s}{|\epsilon|}$ where $s = \frac{1}{n}$ is market share. Requires $|\epsilon_d| > 1$ for profit maximization. Empirically estimated from industry data.

---

### Nash Equilibrium Condition

**Equation:**
```latex
s_i^* \in \arg\max_{s_i \in S_i} u_i(s_i, s_{-i}^*) \quad \forall i \in N
```

**Notes:**
A strategy profile $(s_1^*, \ldots, s_n^*)$ is a Nash equilibrium if no player can unilaterally improve by deviating. Where $s_i$ is player $i$'s strategy, $S_i$ is player $i$'s strategy space, $s_{-i}^*$ denotes strategies of all players except $i$, $u_i$ is player $i$'s payoff function, $N$ is set of players. Existence guaranteed by Nash's theorem for finite games or compact, convex strategy spaces with continuous, quasi-concave payoffs. May be in pure or mixed strategies. Foundation of non-cooperative game theory.

---

### Cournot Equilibrium

**Equation:**
```latex
q_i^* = \arg\max_{q_i} \left[ p\left(\sum_{j=1}^{n} q_j\right) q_i - C_i(q_i) \right] \implies p'(Q^*) q_i^* + p(Q^*) = C_i'(q_i^*)
```

**Notes:**
Oligopoly model where firms simultaneously choose quantities. Where $q_i$ is firm $i$'s output, $Q = \sum_{j=1}^{n} q_j$ is total output, $p(Q)$ is inverse demand, $C_i(\cdot)$ is firm $i$'s cost function. FOC for firm $i$: $MR_i = p + q_i \frac{dp}{dQ} = MC_i$. Symmetric equilibrium with $n$ identical firms: $q^* = \frac{-p(nq^*)}{np'(nq^*) + C''(q^*)}$. As $n \to \infty$, Cournot converges to perfect competition. More competitive than monopoly, less than Bertrand.

---

### Bertrand Equilibrium

**Equation:**
```latex
p_i^* = \arg\max_{p_i} \left[ (p_i - c) D_i(p_i, p_{-i}^*) \right]
```

**Notes:**
Oligopoly model where firms simultaneously choose prices. Where $D_i(p_i, p_{-i})$ is demand for firm $i$ given its price and rivals' prices, $c$ is marginal cost (assumed constant). With homogeneous products and $n \geq 2$ firms: $p_i^* = c$ (Bertrand paradox - competitive outcome with just two firms). With differentiated products: $p_i^* > c$ and $\frac{\partial D_i}{\partial p_i} + (p_i - c) \frac{\partial^2 D_i}{\partial p_i^2} = 0$ at equilibrium. More competitive than Cournot with homogeneous products. Capacity constraints can soften competition.

---

### Stackelberg Leader Output

**Equation:**
```latex
q_L^* = \arg\max_{q_L} \left[ p(q_L + R(q_L)) q_L - C_L(q_L) \right] \quad \text{where} \quad R(q_L) = \arg\max_{q_F} \left[ p(q_L + q_F) q_F - C_F(q_F) \right]
```

**Notes:**
Sequential quantity competition where leader moves first, anticipating follower's response. Where $q_L$ is leader's output, $q_F$ is follower's output, $R(q_L)$ is follower's reaction function. Leader incorporates $\frac{dR}{dq_L} < 0$ into optimization (strategic substitutes). FOC for leader: $p'(Q^*)(q_L^* + q_F^* \frac{dR}{dq_L}) + p(Q^*) = C_L'(q_L^*)$. Leader produces more and earns higher profit than in simultaneous Cournot. First-mover advantage from commitment. Total output between Cournot and perfect competition.

---

### Consumer Surplus

**Equation:**
```latex
CS = \int_0^{Q^*} p(q) \, dq - p^* Q^* = \int_{p^*}^{\infty} D(p) \, dp
```

**Notes:**
Area between demand curve and market price, representing consumer welfare gain from trade. Where $p(q)$ is inverse demand (willingness to pay), $D(p)$ is demand function, $p^*$ is market price, $Q^*$ is equilibrium quantity. Measures benefit consumers receive beyond what they pay. Changes in CS used for welfare analysis of policies (taxes, subsidies, price controls). Exact measure requires no income effects (quasi-linear utility) or uses compensating/equivalent variation. With linear demand $p = a - bQ$: $CS = \frac{1}{2}(a - p^*)Q^*$.

---

### Producer Surplus

**Equation:**
```latex
PS = p^* Q^* - \int_0^{Q^*} MC(q) \, dq = \int_0^{p^*} S(p) \, dp
```

**Notes:**
Area between market price and supply curve (marginal cost), representing producer welfare gain from trade. Where $MC(q)$ is marginal cost, $S(p)$ is supply function, $p^*$ is market price, $Q^*$ is equilibrium quantity. Equals variable profit (revenue minus variable cost). In long-run competitive equilibrium with free entry: $PS = 0$ (zero economic profit). Changes in PS measure producer welfare impact of policies. With linear supply $p = c + dQ$: $PS = \frac{1}{2}(p^* - c)Q^*$. In short run, PS equals quasi-rent to fixed factors.

---

### Welfare Loss (Deadweight Loss)

**Equation:**
```latex
DWL = \frac{1}{2} (Q^c - Q^*)(p^* - p^c) = \frac{1}{2} \epsilon_s \epsilon_d \frac{(t)^2}{(\epsilon_s - \epsilon_d)^2} p^c Q^c
```

**Notes:**
Loss of total surplus due to market distortions (taxes, monopoly, price controls). Where $Q^c, p^c$ are competitive equilibrium, $Q^*, p^*$ are distorted equilibrium, $\epsilon_s$ is supply elasticity, $\epsilon_d$ is demand elasticity (absolute value), $t$ is per-unit tax or wedge. First expression assumes linear demand/supply. Second expression is Harberger's triangle formula for small distortions. DWL increases with square of tax rate. For monopoly: $DWL = \frac{1}{2}(Q^c - Q^m)(p^m - MC(Q^m))$ where $Q^m$ is monopoly quantity. Larger with more elastic demand/supply.

---

## Equity Valuation

### Dividend Discount Model (General)

**Equation:**
```latex
V_0 = \sum_{t=1}^{\infty} \frac{D_t}{(1 + r)^t}
```

**Notes:**
The general dividend discount model states that the intrinsic value of a stock equals the present value of all expected future dividends. Used as the foundational framework for equity valuation under the assumption that dividends represent cash flows to equity holders. Variables: $V_0$ = current stock value; $D_t$ = expected dividend at time $t$ (where $t \in \mathbb{Z}^+$); $r$ = required rate of return on equity (discount rate, $r > 0$). Assumes dividends are the only cash flows to shareholders, markets are frictionless, and dividends can be forecasted with certainty or risk-adjusted.

---

### Gordon Growth Model (Constant Growth DDM)

**Equation:**
```latex
V_0 = \frac{D_1}{r - g}
```

**Notes:**
The Gordon Growth Model (constant growth DDM) values a stock assuming dividends grow at a constant perpetual rate. Widely used for mature, stable companies with predictable dividend growth. Variables: $V_0$ = current stock value; $D_1$ = expected dividend next period; $r$ = required return on equity; $g$ = constant dividend growth rate. Critical assumption: $r > g$ (otherwise value is undefined or negative). Derived from the general DDM by assuming $D_t = D_0(1+g)^t$ and applying the geometric series formula.

---

### Two-Stage Dividend Discount Model

**Equation:**
```latex
V_0 = \sum_{t=1}^{n} \frac{D_0(1+g_1)^t}{(1+r)^t} + \frac{D_{n+1}}{r - g_2} \cdot \frac{1}{(1+r)^n}
```

**Notes:**
The two-stage DDM accommodates companies with distinct growth phases: an initial high-growth period followed by stable perpetual growth. Used for firms transitioning from growth to maturity. Variables: $V_0$ = current stock value; $D_0$ = current dividend; $g_1$ = growth rate during initial phase (periods $1$ to $n$); $g_2$ = perpetual growth rate after period $n$ (where $g_2 < r$); $r$ = discount rate; $n$ = length of high-growth phase. The first term values dividends during high growth; the second term is the terminal value using Gordon Growth Model.

---

### H-Model

**Equation:**
```latex
V_0 = \frac{D_0(1+g_L)}{r - g_L} + \frac{D_0 \cdot H \cdot (g_S - g_L)}{r - g_L}
```

**Notes:**
The H-Model assumes dividend growth rate declines linearly from a short-term rate $g_S$ to a long-term rate $g_L$ over $2H$ periods. Provides a closed-form solution for gradual growth transitions without multi-stage complexity. Variables: $V_0$ = current stock value; $D_0$ = current dividend; $g_S$ = initial short-term growth rate; $g_L$ = long-term stable growth rate (where $g_L < r$); $H$ = half-life of the high-growth period (in years); $r$ = required return. Assumes linear decline: $g(t) = g_L + (g_S - g_L) \cdot (1 - t/(2H))$ for $0 \leq t \leq 2H$.

---

### Free Cash Flow to Firm (FCFF)

**Equation:**
```latex
\text{FCFF} = \text{EBIT}(1 - T) + \text{Dep} - \text{CapEx} - \Delta \text{NWC}
```

**Notes:**
Free cash flow to the firm represents cash available to all investors (debt and equity holders) after operating expenses, taxes, and reinvestment in the business. Used in enterprise valuation and discounted cash flow (DCF) analysis. Variables: EBIT = earnings before interest and taxes; $T$ = corporate tax rate ($0 \leq T < 1$); Dep = depreciation and amortization (non-cash charges); CapEx = capital expenditures (cash outflows for fixed assets); $\Delta$NWC = change in net working capital (increase is a use of cash). FCFF is independent of capital structure.

---

### Free Cash Flow to Equity (FCFE)

**Equation:**
```latex
\text{FCFE} = \text{NI} + \text{Dep} - \text{CapEx} - \Delta \text{NWC} + \text{Net Borrowing}
```

**Notes:**
Free cash flow to equity represents cash available to equity holders after all expenses, reinvestment, and debt obligations. Used to value equity directly by discounting at the cost of equity. Variables: NI = net income (after interest and taxes); Dep = depreciation and amortization; CapEx = capital expenditures; $\Delta$NWC = change in net working capital; Net Borrowing = new debt issued minus debt repayments. Alternative formulation: FCFE = FCFF $-$ Interest$(1-T)$ + Net Borrowing.

---

### Enterprise Value

**Equation:**
```latex
\text{EV} = \text{Market Cap} + \text{Total Debt} - \text{Cash}
```

**Notes:**
Enterprise value represents the total value of a firm to all investors, including equity holders and debt holders, net of cash. Used in M&A and valuation multiples (e.g., EV/EBITDA). Variables: Market Cap = market value of equity = $P \times N$ where $P$ = share price and $N$ = shares outstanding; Total Debt = market value of debt (or book value as proxy); Cash = cash and cash equivalents. EV reflects the cost to acquire the entire firm. Some formulations add preferred equity and minority interests, subtract investments.

---

### Equity Value from Enterprise Value

**Equation:**
```latex
\text{Equity Value} = \text{EV} - \text{Total Debt} + \text{Cash}
```

**Notes:**
Equity value is derived from enterprise value by removing debt claims and adding back cash. Used to reconcile enterprise-level valuations (FCFF-based) to equity value. Variables: Equity Value = market value of common equity; EV = enterprise value; Total Debt = market value of all debt; Cash = cash and equivalents. Represents the residual claim after debt holders are satisfied. Extended formula may adjust for preferred stock, minority interests, and non-operating assets.

---

### Weighted Average Cost of Capital (WACC)

**Equation:**
```latex
\text{WACC} = \frac{E}{V} r_E + \frac{D}{V} r_D (1 - T)
```

**Notes:**
WACC is the average rate a company must pay to finance its assets, weighted by the proportion of equity and debt in the capital structure. Used as the discount rate for FCFF in DCF valuation. Variables: $E$ = market value of equity; $D$ = market value of debt; $V = E + D$ = total firm value; $r_E$ = cost of equity; $r_D$ = cost of debt; $T$ = corporate tax rate. The $(1-T)$ term reflects the tax shield on debt interest. Assumes target capital structure weights.

---

### Cost of Equity (CAPM)

**Equation:**
```latex
r_E = r_f + \beta_E (r_m - r_f)
```

**Notes:**
The Capital Asset Pricing Model (CAPM) estimates the cost of equity as the risk-free rate plus a risk premium proportional to the stock's systematic risk. Widely used in corporate finance and valuation. Variables: $r_E$ = cost of equity (expected return); $r_f$ = risk-free rate (e.g., government bond yield); $\beta_E$ = equity beta (covariance of stock returns with market returns divided by market variance, $\beta_E \in \mathbb{R}$); $r_m$ = expected market return; $(r_m - r_f)$ = market risk premium. Assumes markets are efficient, investors are rational and risk-averse, and only systematic risk is priced.

---

### Cost of Debt (After-Tax)

**Equation:**
```latex
r_D^{\text{after-tax}} = r_D (1 - T)
```

**Notes:**
The after-tax cost of debt accounts for the tax deductibility of interest payments, reducing the effective cost of debt financing. Used in WACC calculations. Variables: $r_D$ = pre-tax cost of debt (yield to maturity on debt or interest rate); $T$ = marginal corporate tax rate ($0 \leq T < 1$). The tax shield $T \cdot r_D$ represents the tax savings per dollar of interest. Assumes the firm is profitable and can utilize the tax shield.

---

### Unlevered Beta

**Equation:**
```latex
\beta_U = \frac{\beta_L}{1 + (1-T)\frac{D}{E}}
```

**Notes:**
Unlevered beta (asset beta) measures the systematic risk of a firm's assets without the effect of financial leverage. Used to compare business risk across firms with different capital structures or to estimate beta for private firms. Variables: $\beta_U$ = unlevered beta; $\beta_L$ = levered (equity) beta; $D$ = market value of debt; $E$ = market value of equity; $T$ = tax rate. Assumes debt beta is zero. Derived from Hamada's formula by rearranging to isolate $\beta_U$.

---

### Levered Beta (Hamada Equation)

**Equation:**
```latex
\beta_L = \beta_U \left[1 + (1-T)\frac{D}{E}\right]
```

**Notes:**
The Hamada equation relates levered (equity) beta to unlevered (asset) beta, adjusting for financial leverage. Shows that financial leverage amplifies systematic risk. Variables: $\beta_L$ = levered equity beta; $\beta_U$ = unlevered asset beta; $D$ = market value of debt; $E$ = market value of equity; $T$ = corporate tax rate. Assumes debt is risk-free ($\beta_D = 0$). Used to re-lever beta when estimating cost of equity for firms with target debt-to-equity ratios.

---

### Modigliani-Miller Proposition I (No Taxes)

**Equation:**
```latex
V_L = V_U
```

**Notes:**
Modigliani-Miller Proposition I (without taxes) states that the value of a levered firm equals the value of an unlevered firm; capital structure is irrelevant to firm value. Foundational result in corporate finance showing that in perfect markets, financing decisions do not affect firm value. Variables: $V_L$ = value of levered firm; $V_U$ = value of unlevered firm. Assumptions: no taxes, no bankruptcy costs, no agency costs, symmetric information, and perfect capital markets. The result relies on arbitrage arguments and the law of one price.

---

### Modigliani-Miller Proposition II (No Taxes)

**Equation:**
```latex
r_E = r_A + \frac{D}{E}(r_A - r_D)
```

**Notes:**
MM Proposition II (without taxes) states that the cost of equity increases linearly with the debt-to-equity ratio, reflecting increased financial risk. Shows that the benefit of cheaper debt is exactly offset by higher equity costs. Variables: $r_E$ = cost of equity; $r_A$ = cost of assets (WACC for unlevered firm); $r_D$ = cost of debt; $D$ = market value of debt; $E$ = market value of equity. Derived from WACC and MM Prop I. The spread $(r_A - r_D)$ is the premium equity holders demand for leverage.

---

### Modigliani-Miller with Corporate Taxes

**Equation:**
```latex
V_L = V_U + T \cdot D
```

**Notes:**
MM Proposition I with taxes states that the value of a levered firm exceeds the unlevered firm value by the present value of the tax shield on debt. Implies a tax advantage to debt financing. Variables: $V_L$ = value of levered firm; $V_U$ = value of unlevered firm; $T$ = corporate tax rate; $D$ = market value of debt. The term $T \cdot D$ is the present value of the perpetual tax shield assuming constant debt level. This result assumes no bankruptcy costs and that debt is permanent.

---

### Adjusted Present Value (APV)

**Equation:**
```latex
\text{APV} = V_U + \text{PV(Tax Shield)} - \text{PV(Financial Distress Costs)}
```

**Notes:**
Adjusted present value values a levered firm by starting with the unlevered firm value and adding/subtracting financing side effects. Used when capital structure changes over time or for leveraged buyouts. Variables: $V_U$ = value of unlevered firm (discounted at $r_U$, the unlevered cost of equity); PV(Tax Shield) = present value of interest tax shields (typically $\sum T \cdot r_D \cdot D_t / (1+r_D)^t$); PV(Financial Distress Costs) = expected costs of bankruptcy weighted by probability. APV is more flexible than WACC for complex capital structures.

---

### Residual Income Model

**Equation:**
```latex
V_0 = B_0 + \sum_{t=1}^{\infty} \frac{\text{RI}_t}{(1+r)^t}
```

**Notes:**
The residual income model values equity as book value plus the present value of expected residual income (earnings above the required return on equity). Equivalent to DDM under clean surplus accounting. Variables: $V_0$ = equity value; $B_0$ = current book value of equity; $\text{RI}_t = \text{NI}_t - r \cdot B_{t-1}$ = residual income at time $t$; $\text{NI}_t$ = net income; $r$ = cost of equity; $B_{t-1}$ = beginning book value. Assumes clean surplus: $B_t = B_{t-1} + \text{NI}_t - D_t$. Useful when dividends are unpredictable but earnings are more stable.

---

### Economic Value Added (EVA)

**Equation:**
```latex
\text{EVA} = \text{NOPAT} - \text{WACC} \times \text{Capital}
```

**Notes:**
Economic value added measures the dollar surplus value created above the cost of capital employed. Used as a performance metric and for value-based management. Variables: NOPAT = net operating profit after taxes = $\text{EBIT}(1-T)$; WACC = weighted average cost of capital; Capital = invested capital = total assets minus non-interest-bearing current liabilities (or equivalently, debt plus equity). EVA > 0 indicates value creation. Conceptually equivalent to residual income but applied at the firm (not equity) level.

---

### Price-to-Earnings Ratio (P/E)

**Equation:**
```latex
\text{P/E} = \frac{P_0}{E_1}
```

**Notes:**
The price-to-earnings ratio is a valuation multiple comparing share price to earnings per share. Widely used for relative valuation and market sentiment analysis. Variables: $P_0$ = current stock price; $E_1$ = expected earnings per share (EPS) for the next period. Trailing P/E uses historical EPS; forward P/E uses forecasted EPS. High P/E suggests growth expectations or overvaluation; low P/E suggests value or distress. Undefined or meaningless for firms with zero or negative earnings.

---

### PEG Ratio

**Equation:**
```latex
\text{PEG} = \frac{\text{P/E}}{g \times 100}
```

**Notes:**
The PEG ratio adjusts the P/E ratio for expected earnings growth, allowing comparison of firms with different growth rates. A PEG near 1 is often considered fair value. Variables: P/E = price-to-earnings ratio; $g$ = expected annual earnings growth rate (expressed as a percentage, e.g., 15 for 15%). Used in growth stock analysis. Assumes growth is sustainable and comparable across firms. Does not account for differences in risk or capital intensity.

---

### Price-to-Book Ratio (P/B)

**Equation:**
```latex
\text{P/B} = \frac{P_0}{B_0}
```

**Notes:**
The price-to-book ratio compares market value of equity to book value, indicating how much investors are willing to pay per dollar of net assets. Variables: $P_0$ = current stock price; $B_0$ = book value per share (shareholders' equity divided by shares outstanding). P/B < 1 may signal undervaluation or distress; P/B > 1 suggests intangible value or profitability above book returns. More relevant for asset-heavy industries (e.g., banks, manufacturing). Book value may not reflect fair value, especially for intangibles.

---

### Price-to-Sales Ratio (P/S)

**Equation:**
```latex
\text{P/S} = \frac{P_0}{S_1}
```

**Notes:**
The price-to-sales ratio compares market capitalization to revenue, useful for valuing firms with negative or volatile earnings. Variables: $P_0$ = current stock price; $S_1$ = sales (revenue) per share for the next period. Trailing P/S uses historical sales; forward P/S uses forecasted sales. Less susceptible to accounting manipulation than earnings. Does not account for profitability or cost structure differences.

---

### EV/EBITDA Multiple

**Equation:**
```latex
\text{EV/EBITDA} = \frac{\text{EV}}{\text{EBITDA}}
```

**Notes:**
The EV/EBITDA multiple compares enterprise value to earnings before interest, taxes, depreciation, and amortization. Widely used in M&A and capital-structure-neutral comparisons. Variables: EV = enterprise value = Market Cap + Debt $-$ Cash; EBITDA = operating earnings before interest, taxes, depreciation, and amortization. Neutralizes differences in capital structure, tax regimes, and depreciation policies. Preferred over P/E for leveraged firms. Does not account for capital expenditures or working capital needs.

---

### Justified P/E from Gordon Growth Model

**Equation:**
```latex
\text{Justified P/E} = \frac{1 - b}{r - g}
```

**Notes:**
The justified P/E ratio derived from the Gordon Growth Model links the P/E multiple to fundamental drivers: payout ratio, required return, and growth. Used to assess whether current P/E is justified by fundamentals. Variables: $b$ = retention ratio (fraction of earnings retained, $0 \leq b \leq 1$); $(1-b)$ = payout ratio; $r$ = cost of equity; $g$ = dividend growth rate (where $g = b \times \text{ROE}$ and $r > g$). Derived from $V_0 = D_1/(r-g)$ and $D_1 = E_1(1-b)$, then dividing by $E_1$.

---

### Sustainable Growth Rate

**Equation:**
```latex
g = b \times \text{ROE}
```

**Notes:**
The sustainable growth rate is the maximum rate at which a firm can grow earnings and dividends using internally generated funds without changing its capital structure. Variables: $g$ = sustainable growth rate; $b$ = retention ratio (fraction of earnings retained, $0 \leq b \leq 1$); ROE = return on equity = $\text{NI}/\text{Equity}$. Assumes constant ROE, payout ratio, and no new equity issuance. Growth above $g$ requires external financing or increased leverage.

---

### DuPont Analysis (ROE Decomposition)

**Equation:**
```latex
\text{ROE} = \frac{\text{Net Income}}{\text{Sales}} \times \frac{\text{Sales}}{\text{Assets}} \times \frac{\text{Assets}}{\text{Equity}}
```

**Notes:**
The DuPont identity decomposes return on equity into profit margin, asset turnover, and financial leverage. Used to diagnose the drivers of profitability and identify operational or financial weaknesses. Variables: ROE = return on equity; $\text{Net Income}/\text{Sales}$ = net profit margin; $\text{Sales}/\text{Assets}$ = asset turnover; $\text{Assets}/\text{Equity}$ = equity multiplier (leverage). Extended versions further decompose profit margin and include tax burden and interest burden.

---

### Return on Invested Capital (ROIC)

**Equation:**
```latex
\text{ROIC} = \frac{\text{NOPAT}}{\text{Invested Capital}}
```

**Notes:**
Return on invested capital measures the efficiency and profitability of capital deployed in operations, independent of financing. Used to assess value creation relative to WACC. Variables: NOPAT = net operating profit after taxes = $\text{EBIT}(1-T)$; Invested Capital = total assets minus non-interest-bearing current liabilities (or equivalently, debt plus equity). ROIC > WACC indicates value creation. Unlike ROE, ROIC is unaffected by capital structure.

---

### Terminal Value (Gordon Growth)

**Equation:**
```latex
\text{TV}_n = \frac{\text{FCF}_{n+1}}{r - g}
```

**Notes:**
The terminal value using the Gordon Growth formula estimates the present value at time $n$ of all cash flows beyond the explicit forecast period, assuming perpetual constant growth. Used in DCF valuations. Variables: $\text{TV}_n$ = terminal value at end of period $n$; $\text{FCF}_{n+1}$ = free cash flow in first year beyond forecast (either FCFF or FCFE); $r$ = discount rate (WACC for FCFF, $r_E$ for FCFE); $g$ = perpetual growth rate (typically GDP growth rate, $g < r$). Assumes firm reaches steady state.

---

### Terminal Value (Exit Multiple)

**Equation:**
```latex
\text{TV}_n = \text{Multiple} \times \text{Metric}_n
```

**Notes:**
The terminal value using the exit multiple method estimates value at period $n$ by applying a valuation multiple to a financial metric at that time. Used in DCF and LBO models. Variables: $\text{TV}_n$ = terminal value at end of period $n$; Multiple = chosen valuation multiple (e.g., EV/EBITDA, P/E); $\text{Metric}_n$ = corresponding financial metric at time $n$ (e.g., EBITDA$_n$, Earnings$_n$). Multiples typically derived from comparable companies or historical averages. Less theoretically rigorous than perpetuity growth but more practical for cyclical firms.

---


## Probability

### Kolmogorov Axiom 1: Non-Negativity

**Equation:**
```latex
P(A) \geq 0 \quad \forall A \in \mathcal{F}
```

**Notes:**
The probability of any event is non-negative. First axiom of probability theory established by Kolmogorov (1933). Variables: A = event in the sample space, F = sigma-algebra of measurable events. Applied in all probability-based modeling including risk assessment, option pricing, and statistical inference.

---

### Kolmogorov Axiom 2: Unitarity

**Equation:**
```latex
P(\Omega) = 1
```

**Notes:**
The probability of the entire sample space equals one. Ω denotes the sample space containing all possible outcomes. This axiom normalizes the probability measure, ensuring the total probability across all possible events sums to unity.

---

### Kolmogorov Axiom 3: Countable Additivity

**Equation:**
```latex
P\left(\bigcup_{i=1}^{\infty} A_i\right) = \sum_{i=1}^{\infty} P(A_i) \quad \text{for pairwise disjoint } A_i
```

**Notes:**
For countably many mutually exclusive events, the probability of their union equals the sum of their individual probabilities. Events are pairwise disjoint if A_i ∩ A_j = ∅ for i ≠ j. Critical for continuous-time financial modeling.

---

### Conditional Probability

**Equation:**
```latex
P(A|B) = \frac{P(A \cap B)}{P(B)} \quad \text{for } P(B) > 0
```

**Notes:**
The probability of event A given that event B has occurred. Foundation for Bayesian inference, information updating in financial markets, and credit risk modeling. Used extensively in derivative pricing under filtration structures.

---

### Bayes' Theorem

**Equation:**
```latex
P(A|B) = \frac{P(B|A)P(A)}{P(B)} = \frac{P(B|A)P(A)}{\sum_{i} P(B|A_i)P(A_i)}
```

**Notes:**
Relates conditional probabilities of events A and B. P(A) is prior probability, P(B|A) is likelihood, P(B) is marginal probability (evidence), P(A|B) is posterior probability. Central to Bayesian econometrics, machine learning in finance, and credit scoring models.

---

### Law of Total Probability

**Equation:**
```latex
P(B) = \sum_{i=1}^{n} P(B|A_i)P(A_i)
```

**Notes:**
Computes the marginal probability of event B by conditioning on a partition {A_i} of the sample space. Used to decompose complex probability calculations into simpler conditional components. Applied in scenario analysis and risk aggregation.

---

### Independence of Events

**Equation:**
```latex
P(A \cap B) = P(A)P(B)
```

**Notes:**
Events A and B are independent if their joint probability equals the product of their marginal probabilities. Equivalently, P(A|B) = P(A). Critical assumption in portfolio theory and Monte Carlo simulation methods.

---

### Probability Mass Function (PMF)

**Equation:**
```latex
p_X(x) = P(X = x) \quad \text{where} \quad \sum_{x \in \mathcal{X}} p_X(x) = 1
```

**Notes:**
Describes the probability distribution of a discrete random variable X taking values in countable set X. Probabilities sum to one with each p_X(x) ≥ 0. Used for discrete outcomes: defaults, rating transitions, jump processes.

---

### Probability Density Function (PDF)

**Equation:**
```latex
f_X(x) \geq 0 \quad \text{and} \quad \int_{-\infty}^{\infty} f_X(x) \, dx = 1
```

**Notes:**
Characterizes the distribution of a continuous random variable X. The probability of X falling in interval [a,b] is P(a ≤ X ≤ b) = ∫_a^b f_X(x)dx. The PDF itself is not a probability but a density. Fundamental to continuous-time finance and stochastic calculus.

---

### Cumulative Distribution Function (CDF)

**Equation:**
```latex
F_X(x) = P(X \leq x)
```

**Notes:**
The probability that random variable X takes a value less than or equal to x. Right-continuous, non-decreasing, with lim_{x→-∞} F_X(x) = 0 and lim_{x→∞} F_X(x) = 1. For continuous variables, f_X(x) = dF_X(x)/dx. Used in VaR computation and quantile-based analysis.

---

### Expected Value (Discrete)

**Equation:**
```latex
E[X] = \sum_{x \in \mathcal{X}} x \cdot p_X(x)
```

**Notes:**
The expectation or mean of discrete random variable X with PMF p_X(x). Assumes Σ|x|p_X(x) < ∞ for existence. Represents the probability-weighted average outcome. Central to utility theory, asset pricing, and decision theory.

---

### Expected Value (Continuous)

**Equation:**
```latex
E[X] = \int_{-\infty}^{\infty} x \cdot f_X(x) \, dx
```

**Notes:**
The expectation of continuous random variable X with PDF f_X(x). Requires ∫|x|f_X(x)dx < ∞ for existence. Used throughout quantitative finance in risk-neutral pricing, mean-variance optimization, and expected utility maximization.

---

### Law of the Unconscious Statistician (LOTUS)

**Equation:**
```latex
E[g(X)] = \int_{-\infty}^{\infty} g(x) f_X(x) \, dx
```

**Notes:**
Computes expected value of a function g(X) without deriving the distribution of the transformed variable. g: ℝ → ℝ is a measurable function. Essential for computing moments, option payoffs, and utility expectations.

---

### Variance

**Equation:**
```latex
\text{Var}(X) = E[(X - E[X])^2] = E[X^2] - (E[X])^2
```

**Notes:**
Measures the dispersion of random variable X around its mean μ = E[X]. Always non-negative: Var(X) ≥ 0. Standard deviation is σ_X = √Var(X). Fundamental to portfolio theory (Markowitz), volatility modeling, and risk measurement. For constant a and b: Var(aX + b) = a²Var(X).

---

### Covariance

**Equation:**
```latex
\text{Cov}(X, Y) = E[(X - E[X])(Y - E[Y])] = E[XY] - E[X]E[Y]
```

**Notes:**
Measures the joint variability of random variables X and Y. If Cov(X,Y) > 0, variables tend to move together; if < 0, they move inversely; if = 0, they are uncorrelated (though not necessarily independent). Central to portfolio diversification and factor models.

---

### Correlation Coefficient

**Equation:**
```latex
\rho_{X,Y} = \frac{\text{Cov}(X, Y)}{\sigma_X \sigma_Y}
```

**Notes:**
Normalized covariance of X and Y. Always satisfies -1 ≤ ρ_{X,Y} ≤ 1 by Cauchy-Schwarz inequality. ρ = 1 indicates perfect positive linear relationship, ρ = -1 perfect negative, ρ = 0 no linear relationship. Critical for portfolio construction and correlation trading strategies.

---

### Moment Generating Function (MGF)

**Equation:**
```latex
M_X(t) = E[e^{tX}]
```

**Notes:**
Generates all moments of random variable X when it exists for t in a neighborhood of zero. The n-th moment is E[X^n] = M_X^{(n)}(0). Uniquely determines the distribution. Used in proving convergence theorems and deriving distributions of sums of independent variables.

---

### Characteristic Function

**Equation:**
```latex
\phi_X(t) = E[e^{itX}] = \int_{-\infty}^{\infty} e^{itx} f_X(x) \, dx
```

**Notes:**
The Fourier transform of the PDF, where i = √-1 is the imaginary unit. Always exists for any random variable (unlike MGF) and uniquely determines the distribution. Essential in mathematical finance for option pricing via Fourier methods (Carr-Madan), Lévy processes, and heavy-tailed distributions.

---

### Normal (Gaussian) Distribution PDF

**Equation:**
```latex
f_X(x) = \frac{1}{\sigma\sqrt{2\pi}} \exp\left(-\frac{(x-\mu)^2}{2\sigma^2}\right)
```

**Notes:**
The probability density of normal random variable X ~ N(μ, σ²). Parameters: μ ∈ ℝ (mean), σ² > 0 (variance). Domain: x ∈ ℝ. Symmetric about μ, with 68% of mass within μ ± σ, 95% within μ ± 2σ. Foundational in Black-Scholes (log-normal returns), linear regression, and CAPM.

---

### Standard Normal CDF

**Equation:**
```latex
\Phi(x) = \frac{1}{\sqrt{2\pi}} \int_{-\infty}^{x} e^{-t^2/2} \, dt
```

**Notes:**
The cumulative distribution function of standard normal variable Z ~ N(0,1). No closed-form expression exists; computed via numerical approximation or tables. For X ~ N(μ, σ²): P(X ≤ x) = Φ((x-μ)/σ). Extensively used in Black-Scholes formula, VaR calculations, and hypothesis testing.

---

### Log-Normal Distribution PDF

**Equation:**
```latex
f_X(x) = \frac{1}{x\sigma\sqrt{2\pi}} \exp\left(-\frac{(\ln x - \mu)^2}{2\sigma^2}\right) \quad \text{for } x > 0
```

**Notes:**
Random variable X is log-normally distributed if ln X ~ N(μ, σ²). Domain: x > 0. Mean: E[X] = e^{μ + σ²/2}, Variance: Var(X) = e^{2μ+σ²}(e^{σ²}-1). Models asset prices in Black-Scholes framework, ensuring prices remain positive. Exhibits positive skewness.

---

### Poisson Distribution PMF

**Equation:**
```latex
P(X = k) = \frac{\lambda^k e^{-\lambda}}{k!} \quad \text{for } k = 0, 1, 2, \ldots
```

**Notes:**
Models the number of events X occurring in a fixed interval when events occur independently at constant rate λ > 0. Domain: k ∈ {0, 1, 2, ...}. Mean and variance both equal λ. Used for modeling rare events: defaults, jumps in jump-diffusion models, order arrivals in market microstructure.

---

### Exponential Distribution PDF

**Equation:**
```latex
f_X(x) = \lambda e^{-\lambda x} \quad \text{for } x \geq 0
```

**Notes:**
Models time until an event occurs under constant hazard rate λ > 0. Domain: x ≥ 0. Mean: E[X] = 1/λ, Variance: 1/λ². CDF: F_X(x) = 1 - e^{-λx}. Exhibits memoryless property: P(X > s+t | X > s) = P(X > t). Used in survival analysis, default time modeling, and queueing theory.

---

### Binomial Distribution PMF

**Equation:**
```latex
P(X = k) = \binom{n}{k} p^k (1-p)^{n-k} \quad \text{for } k = 0, 1, \ldots, n
```

**Notes:**
Models the number of successes X in n independent Bernoulli trials, each with success probability p ∈ [0,1]. C(n,k) = n!/(k!(n-k)!) is the binomial coefficient. Mean: E[X] = np, Variance: np(1-p). Used in discrete-time option pricing (binomial tree model) and credit portfolio modeling.

---

### Law of Large Numbers

**Equation:**
```latex
\frac{1}{n}\sum_{i=1}^{n} X_i \xrightarrow{P} \mu \quad \text{as } n \to \infty
```

**Notes:**
For i.i.d. random variables {X_i} with mean E[X_i] = μ and finite variance, the sample mean converges in probability to the population mean μ. Justifies using sample averages to estimate population parameters and underpins Monte Carlo methods in computational finance.

---

### Central Limit Theorem

**Equation:**
```latex
\frac{\sqrt{n}\left(\bar{X}_n - \mu\right)}{\sigma} \xrightarrow{d} N(0, 1) \quad \text{as } n \to \infty
```

**Notes:**
For i.i.d. random variables {X_i} with mean μ and variance σ² < ∞, the standardized sample mean converges in distribution to standard normal. Justifies normal approximations in statistical inference, bootstrapping, and asymptotic option pricing theory. Critical for confidence interval construction.

---

### Chebyshev's Inequality

**Equation:**
```latex
P(|X - \mu| \geq k\sigma) \leq \frac{1}{k^2} \quad \text{for any } k > 0
```

**Notes:**
Bounds the probability that random variable X deviates from its mean μ by k standard deviations σ. Applies to any distribution with finite variance. For k=2: at least 75% of mass lies within 2 standard deviations. Used in risk management and outlier detection.

---

### Markov's Inequality

**Equation:**
```latex
P(X \geq a) \leq \frac{E[X]}{a} \quad \text{for any } a > 0
```

**Notes:**
For non-negative random variable X ≥ 0, bounds the tail probability. Requires only the existence of E[X] < ∞. Weaker than Chebyshev's but more general. Used in theoretical analysis and deriving concentration inequalities.

---

### Jensen's Inequality

**Equation:**
```latex
E[g(X)] \geq g(E[X]) \quad \text{if } g \text{ is convex}
```

**Notes:**
For convex function g and random variable X, the expectation of the transformed variable is at least the function applied to the expectation. If g is concave, inequality reverses. Critical in utility theory (risk aversion), option pricing (convexity adjustments), and volatility estimation.

---

### Conditional Expectation (Law of Iterated Expectations)

**Equation:**
```latex
E[E[X|Y]] = E[X]
```

**Notes:**
The expectation of the conditional expectation equals the unconditional expectation. Also called the tower property or law of total expectation. E[X|Y] is a random variable (function of Y). Fundamental in martingale theory, Bayesian updating, and derivatives pricing.

---

### Variance Decomposition Formula

**Equation:**
```latex
\text{Var}(X) = E[\text{Var}(X|Y)] + \text{Var}(E[X|Y])
```

**Notes:**
Total variance of X equals expected conditional variance plus variance of conditional mean. Also called the law of total variance or Eve's law. Used to decompose uncertainty into explained and unexplained components, ANOVA, and factor model risk attribution.

---

### Skewness

**Equation:**
```latex
\text{Skew}(X) = E\left[\left(\frac{X-\mu}{\sigma}\right)^3\right] = \frac{E[(X-\mu)^3]}{\sigma^3}
```

**Notes:**
Measures asymmetry of the distribution. Skewness = 0 for symmetric distributions (e.g., normal), > 0 for right-skewed (positive tail), < 0 for left-skewed. Important in risk management for capturing asymmetric risk, option pricing beyond Black-Scholes.

---

### Kurtosis

**Equation:**
```latex
\text{Kurt}(X) = E\left[\left(\frac{X-\mu}{\sigma}\right)^4\right] = \frac{E[(X-\mu)^4]}{\sigma^4}
```

**Notes:**
Measures tail heaviness and peakedness. Normal distribution has kurtosis = 3. Excess kurtosis is Kurt(X) - 3. Distributions with kurtosis > 3 are leptokurtic (heavy tails, important for extreme events), < 3 are platykurtic. Critical for VaR modeling and crisis risk assessment.

---

### Covariance Matrix

**Equation:**
```latex
\boldsymbol{\Sigma} = E[(\mathbf{X} - \boldsymbol{\mu})(\mathbf{X} - \boldsymbol{\mu})^T]
```

**Notes:**
For random vector X = (X_1, ..., X_n)^T with mean vector μ = E[X], the covariance matrix Σ is n × n and symmetric positive semi-definite. Diagonal elements are variances: Σ_{ii} = Var(X_i). Off-diagonal elements are covariances. Fundamental in portfolio optimization (Markowitz), PCA, and factor models.

---

## Statistics & Econometrics

### Sample Mean

**Equation:**
```latex
\bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i
```

**Notes:**
The sample mean is the arithmetic average of observed values. Unbiased estimator of the population mean and minimizes the sum of squared deviations. Variables: x̄ = sample mean, x_i = individual observation (i = 1, ..., n), n = sample size (n ∈ ℕ).

---

### Sample Variance

**Equation:**
```latex
s^2 = \frac{1}{n-1} \sum_{i=1}^{n} (x_i - \bar{x})^2
```

**Notes:**
Measures dispersion around the sample mean using Bessel's correction (n-1 denominator) to provide an unbiased estimate of population variance. Essential for hypothesis testing and confidence intervals. Variables: s² = sample variance, x_i = observation, x̄ = sample mean, n = sample size (n ≥ 2).

---

### Standard Error of the Mean

**Equation:**
```latex
\text{SE}(\bar{x}) = \frac{s}{\sqrt{n}}
```

**Notes:**
Quantifies the precision of the sample mean as an estimator of the population mean. Decreases with sample size following the law of large numbers. Critical for constructing confidence intervals and test statistics. Variables: SE(x̄) = standard error, s = sample standard deviation, n = sample size.

---

### OLS Estimator (Matrix Form)

**Equation:**
```latex
\hat{\beta} = (X^T X)^{-1} X^T y
```

**Notes:**
The OLS estimator provides the best linear unbiased estimator (BLUE) under Gauss-Markov assumptions. Minimizes the sum of squared residuals. Requires X^T X to be non-singular. Variables: β̂ = k × 1 coefficient vector, X = n × k design matrix, y = n × 1 response vector.

---

### OLS Normal Equations

**Equation:**
```latex
X^T X \beta = X^T y
```

**Notes:**
The normal equations represent the first-order conditions for minimizing the sum of squared residuals. Derived by setting the gradient of the loss function to zero. Solution exists when X has full column rank. Variables: X = n × k design matrix, β = k × 1 parameter vector, y = n × 1 response vector.

---

### Gauss-Markov Conditions

**Equation:**
```latex
\mathbb{E}[\varepsilon | X] = 0, \quad \text{Var}(\varepsilon | X) = \sigma^2 I_n
```

**Notes:**
These conditions ensure OLS is BLUE: conditional mean independence (exogeneity) and homoskedasticity with no serial correlation. Does not require normality. Variables: ε = n × 1 error vector, X = design matrix, σ² = constant error variance, I_n = n × n identity matrix.

---

### R-squared

**Equation:**
```latex
R^2 = 1 - \frac{\sum_{i=1}^{n} (y_i - \hat{y}_i)^2}{\sum_{i=1}^{n} (y_i - \bar{y})^2} = 1 - \frac{\text{SSR}}{\text{SST}}
```

**Notes:**
Measures the proportion of variance in the dependent variable explained by the model. Ranges from 0 to 1, but can be inflated by adding regressors. Not suitable for comparing models with different numbers of predictors. Variables: y_i = observed value, ŷ_i = fitted value, ȳ = mean of y, SSR = sum of squared residuals, SST = total sum of squares.

---

### Adjusted R-squared

**Equation:**
```latex
\bar{R}^2 = 1 - \frac{n-1}{n-k} (1 - R^2)
```

**Notes:**
Penalizes model complexity to prevent overfitting. Unlike R², it can decrease when adding irrelevant variables. Preferred for model comparison when models have different numbers of regressors. Variables: n = sample size, k = number of parameters (including intercept), R² = unadjusted R-squared.

---

### F-statistic

**Equation:**
```latex
F = \frac{(R^2 / (k-1))}{((1 - R^2) / (n-k))} = \frac{\text{MSM}}{\text{MSE}}
```

**Notes:**
Tests the joint null hypothesis that all slope coefficients are zero. Under the null, F ~ F_{k-1, n-k}. Requires normality of errors. Used for overall model significance testing. Variables: R² = coefficient of determination, k = number of parameters, n = sample size, MSM = mean square model, MSE = mean square error.

---

### t-statistic

**Equation:**
```latex
t_j = \frac{\hat{\beta}_j - \beta_j^0}{\text{SE}(\hat{\beta}_j)}
```

**Notes:**
Tests hypotheses about individual regression coefficients. Under the null and normality assumption, t_j ~ t_{n-k}. Commonly used with β_j^0 = 0 to test significance. Variables: β̂_j = estimated coefficient, β_j^0 = hypothesized value (typically 0), SE(β̂_j) = standard error, n-k = degrees of freedom.

---

### Maximum Likelihood Estimator

**Equation:**
```latex
\hat{\theta}_{\text{MLE}} = \arg\max_{\theta} \sum_{i=1}^{n} \log f(x_i; \theta)
```

**Notes:**
The MLE selects parameter values that maximize the likelihood of observing the sample data. Asymptotically efficient and normally distributed under regularity conditions. Log-likelihood used for computational convenience. Variables: θ̂_MLE = MLE estimate, θ ∈ Θ = parameter vector, f = probability density function.

---

### Fisher Information

**Equation:**
```latex
\mathcal{I}(\theta) = \mathbb{E}\left[ \left( \frac{\partial \log f(X; \theta)}{\partial \theta} \right)^2 \right] = -\mathbb{E}\left[ \frac{\partial^2 \log f(X; \theta)}{\partial \theta^2} \right]
```

**Notes:**
Quantifies the amount of information a random variable carries about an unknown parameter. Higher information implies more precise estimation. Used in asymptotic variance of MLEs and the Cramér-Rao bound. Variables: I(θ) = Fisher information, θ = parameter, f = probability density.

---

### Cramér-Rao Lower Bound

**Equation:**
```latex
\text{Var}(\hat{\theta}) \geq \frac{1}{n \mathcal{I}(\theta)}
```

**Notes:**
The CRLB provides the minimum possible variance for any unbiased estimator. An estimator achieving this bound is called efficient. The MLE achieves this bound asymptotically. Variables: Var(θ̂) = variance of estimator, n = sample size, I(θ) = Fisher information per observation.

---

### Likelihood Ratio Test

**Equation:**
```latex
\text{LR} = 2 [\ell(\hat{\theta}_1) - \ell(\hat{\theta}_0)]
```

**Notes:**
The LR test compares nested models by testing parameter restrictions. Under the null hypothesis, LR ~ χ²_r where r is the number of restrictions. More powerful than Wald and score tests asymptotically. Variables: ℓ = log-likelihood, θ̂_0 = restricted MLE, θ̂_1 = unrestricted MLE, r = number of restrictions.

---

### Wald Test

**Equation:**
```latex
W = (\hat{\theta} - \theta_0)^T \left[ \widehat{\text{Var}}(\hat{\theta}) \right]^{-1} (\hat{\theta} - \theta_0)
```

**Notes:**
The Wald test evaluates parameter restrictions using only the unrestricted estimates. Under the null, W ~ χ²_r asymptotically. Easier to compute than LR test but not invariant to reparameterization. Variables: θ̂ = unrestricted MLE, θ_0 = hypothesized value, Var̂(θ̂) = estimated covariance matrix.

---

### AIC (Akaike Information Criterion)

**Equation:**
```latex
\text{AIC} = 2k - 2\ell(\hat{\theta})
```

**Notes:**
Balances model fit and complexity, penalizing additional parameters. Lower AIC indicates better model. Based on Kullback-Leibler divergence. Tends to select larger models than BIC asymptotically. Variables: k = number of parameters, ℓ(θ̂) = maximized log-likelihood.

---

### BIC (Bayesian Information Criterion)

**Equation:**
```latex
\text{BIC} = k \log(n) - 2\ell(\hat{\theta})
```

**Notes:**
Imposes a stronger penalty for model complexity than AIC, especially for large samples. Consistent for model selection (selects true model as n → ∞). Derived from Bayesian posterior probability approximation. Variables: k = number of parameters, n = sample size, ℓ(θ̂) = maximized log-likelihood.

---

### Heteroskedasticity-Consistent Standard Errors (White)

**Equation:**
```latex
\widehat{\text{Var}}(\hat{\beta}) = (X^T X)^{-1} X^T \hat{\Omega} X (X^T X)^{-1}
```

**Notes:**
White's heteroskedasticity-robust covariance matrix estimator provides valid inference under heteroskedasticity of unknown form. Ω̂ = diag(ε̂₁², ..., ε̂ₙ²) where ε̂_i are OLS residuals. Does not improve efficiency, only corrects standard errors. Also known as HC0.

---

### Newey-West HAC Estimator

**Equation:**
```latex
\widehat{\text{Var}}_{\text{NW}}(\hat{\beta}) = (X^T X)^{-1} \left( \sum_{j=-L}^{L} w_j \hat{\Gamma}_j \right) (X^T X)^{-1}
```

**Notes:**
Provides heteroskedasticity and autocorrelation consistent (HAC) standard errors. Uses Bartlett kernel weights w_j = 1 - |j|/(L+1). Critical for time series regression. Lag length L typically chosen as ⌊4(n/100)^{2/9}⌋. Variables: Γ̂_j = autocovariance matrix at lag j.

---

### Two-Stage Least Squares (2SLS) Estimator

**Equation:**
```latex
\hat{\beta}_{2SLS} = (X^T P_Z X)^{-1} X^T P_Z y
```

**Notes:**
2SLS provides consistent estimation when regressors are endogenous. P_Z = Z(Z^T Z)^{-1}Z^T is projection matrix. Instruments Z must be correlated with endogenous variables but uncorrelated with errors (exclusion restriction). Variables: X = regressor matrix, Z = instrument matrix (m ≥ k).

---

### Generalized Method of Moments (GMM) Estimator

**Equation:**
```latex
\hat{\theta}_{GMM} = \arg\min_{\theta} \left[ \frac{1}{n} \sum_{i=1}^{n} g(x_i, \theta) \right]^T W \left[ \frac{1}{n} \sum_{i=1}^{n} g(x_i, \theta) \right]
```

**Notes:**
Generalizes method of moments and IV estimation using moment conditions E[g(x, θ_0)] = 0. Optimal weighting matrix W is inverse of moment covariance for efficiency. Allows overidentification testing via J-statistic. Variables: g(·) = moment function, W = positive definite weighting matrix.

---

### Panel Data Fixed Effects Estimator

**Equation:**
```latex
\hat{\beta}_{FE} = \left( \sum_{i=1}^{N} \sum_{t=1}^{T} (x_{it} - \bar{x}_i)(x_{it} - \bar{x}_i)^T \right)^{-1} \left( \sum_{i=1}^{N} \sum_{t=1}^{T} (x_{it} - \bar{x}_i)(y_{it} - \bar{y}_i) \right)
```

**Notes:**
The within transformation eliminates time-invariant individual effects by demeaning. Controls for all time-invariant unobserved heterogeneity. Cannot estimate coefficients on time-invariant regressors. Variables: y_{it} = outcome for unit i at time t, x_{it} = regressor vector, x̄_i = individual mean.

---

### Hausman Test

**Equation:**
```latex
H = (\hat{\beta}_{FE} - \hat{\beta}_{RE})^T \left[ \widehat{\text{Var}}(\hat{\beta}_{FE}) - \widehat{\text{Var}}(\hat{\beta}_{RE}) \right]^{-1} (\hat{\beta}_{FE} - \hat{\beta}_{RE})
```

**Notes:**
Tests whether individual effects are correlated with regressors, evaluating RE validity. Under the null (no correlation), both FE and RE are consistent but RE is efficient. Large H rejects RE in favor of FE. Under null, H ~ χ²_k.

---

### Durbin-Watson Statistic

**Equation:**
```latex
DW = \frac{\sum_{t=2}^{n} (\hat{\varepsilon}_t - \hat{\varepsilon}_{t-1})^2}{\sum_{t=1}^{n} \hat{\varepsilon}_t^2}
```

**Notes:**
Tests for first-order serial correlation in regression residuals. Approximately DW ≈ 2(1 - ρ̂) where ρ̂ is estimated autocorrelation. Values near 2 indicate no autocorrelation; below 2 suggests positive; above 2 suggests negative. Range: 0 ≤ DW ≤ 4.

---

### Breusch-Pagan Test

**Equation:**
```latex
BP = n R^2_{\text{aux}}
```

**Notes:**
Tests for heteroskedasticity by regressing squared residuals ε̂² on original regressors. Under null of homoskedasticity, BP ~ χ²_{k-1} where k-1 is number of regressors excluding constant. Rejection indicates heteroskedasticity.

---

### Granger Causality

**Equation:**
```latex
y_t = \alpha_0 + \sum_{i=1}^{p} \alpha_i y_{t-i} + \sum_{j=1}^{q} \beta_j x_{t-j} + \varepsilon_t
```

**Notes:**
Tests whether past values of x help predict y beyond past values of y alone. Tests null H_0: β_1 = ... = β_q = 0 using F-test or LR test. "Causality" refers to predictive power, not true causation. Requires stationarity.

---

### Engle-Granger Cointegration

**Equation:**
```latex
\Delta \hat{\varepsilon}_t = \rho \hat{\varepsilon}_{t-1} + \sum_{i=1}^{k} \gamma_i \Delta \hat{\varepsilon}_{t-i} + u_t
```

**Notes:**
Tests whether non-stationary series y_t and x_t share a common stochastic trend (are cointegrated). First, estimate long-run relationship via OLS. Second, test residuals for unit root using augmented Dickey-Fuller test with special critical values. Null: no cointegration (ρ = 0).

---

### GARCH(1,1) Model

**Equation:**
```latex
\sigma_t^2 = \omega + \alpha \varepsilon_{t-1}^2 + \beta \sigma_{t-1}^2
```

**Notes:**
Captures volatility clustering in financial time series where ε_t = σ_t z_t with z_t ~ N(0,1). Conditional variance depends on past squared shocks and past variance. Requires ω > 0, α, β ≥ 0, and α + β < 1 for stationarity. Widely used in risk management and option pricing.

---

### Vector Autoregression (VAR)

**Equation:**
```latex
\mathbf{y}_t = \mathbf{c} + \Phi_1 \mathbf{y}_{t-1} + \Phi_2 \mathbf{y}_{t-2} + \cdots + \Phi_p \mathbf{y}_{t-p} + \boldsymbol{\varepsilon}_t
```

**Notes:**
Models multiple time series jointly, allowing each variable to depend on its own lags and lags of all other variables. Treats all variables symmetrically. Used for forecasting, impulse response analysis, and variance decomposition. Requires stationarity. Variables: y_t = m × 1 vector, Φ_i = m × m coefficient matrices.

---

## Linear Algebra

### Matrix Multiplication

**Equation:**
```latex
(AB)_{ij} = \sum_{k=1}^{n} A_{ik} B_{kj}
```

**Notes:**
Defines the product of two matrices. For matrices A ∈ ℝ^{m×n} and B ∈ ℝ^{n×p}, the product AB ∈ ℝ^{m×p}. Non-commutative: AB ≠ BA in general. Essential for linear transformations, portfolio returns, and state-space models.

---

### Matrix Transpose Properties

**Equation:**
```latex
(AB)^T = B^T A^T
```

**Notes:**
The transpose of a product equals the product of transposes in reverse order. Related properties: (A^T)^T = A, (A + B)^T = A^T + B^T. Fundamental in deriving covariance matrices and OLS normal equations.

---

### Matrix Inverse

**Equation:**
```latex
AA^{-1} = A^{-1}A = I
```

**Notes:**
A square matrix A ∈ ℝ^{n×n} is invertible if there exists A^{-1} satisfying this equation. Exists iff det(A) ≠ 0. Properties: (AB)^{-1} = B^{-1}A^{-1}, (A^T)^{-1} = (A^{-1})^T. Critical for solving linear systems and computing optimal portfolios.

---

### Determinant (Leibniz Formula)

**Equation:**
```latex
\det(A) = \sum_{\sigma \in S_n} \text{sgn}(\sigma) \prod_{i=1}^{n} A_{i,\sigma(i)}
```

**Notes:**
The determinant as a sum over all permutations σ in the symmetric group S_n. sgn(σ) is the sign of permutation (+1 for even, -1 for odd). Properties: det(AB) = det(A)det(B), det(A^T) = det(A). Used in testing matrix invertibility.

---

### Cramer's Rule

**Equation:**
```latex
x_i = \frac{\det(A_i)}{\det(A)}
```

**Notes:**
Solves the linear system Ax = b for A ∈ ℝ^{n×n} invertible. A_i is formed by replacing the i-th column of A with vector b. Valid when det(A) ≠ 0. Important for comparative statics in economic models.

---

### Eigenvalue Equation

**Equation:**
```latex
Av = \lambda v
```

**Notes:**
Defines eigenvalue λ ∈ ℂ and eigenvector v ∈ ℂ^n (with v ≠ 0) for matrix A ∈ ℝ^{n×n}. Essential for PCA, dynamic systems stability analysis, and Markov chain convergence. For symmetric matrices, eigenvalues are real and eigenvectors are orthogonal.

---

### Characteristic Polynomial

**Equation:**
```latex
p(\lambda) = \det(A - \lambda I) = 0
```

**Notes:**
The roots of this polynomial are the eigenvalues of A. For n × n matrix, this is a degree-n polynomial. The sum of eigenvalues equals tr(A) (trace), and the product equals det(A). Used in spectral analysis and stability testing.

---

### Spectral Decomposition

**Equation:**
```latex
A = Q\Lambda Q^T
```

**Notes:**
For symmetric matrix A ∈ ℝ^{n×n}, Q is orthogonal (Q^TQ = I) with eigenvectors as columns, and Λ = diag(λ_1, ..., λ_n) contains eigenvalues. All eigenvalues are real. Fundamental for PCA, covariance matrix analysis, and quadratic form optimization.

---

### Singular Value Decomposition (SVD)

**Equation:**
```latex
A = U\Sigma V^T
```

**Notes:**
For any matrix A ∈ ℝ^{m×n}, U ∈ ℝ^{m×m} and V ∈ ℝ^{n×n} are orthogonal, Σ ∈ ℝ^{m×n} is diagonal with singular values σ_1 ≥ σ_2 ≥ ... ≥ σ_r > 0 (r = rank(A)). Used in dimensionality reduction, matrix approximation, and factor models.

---

### Cholesky Decomposition

**Equation:**
```latex
A = LL^T
```

**Notes:**
For positive definite matrix A, there exists a unique lower triangular matrix L with positive diagonal entries. Exists iff A is positive definite. Efficient for simulating correlated random variables, solving normal equations, and portfolio optimization.

---

### QR Decomposition

**Equation:**
```latex
A = QR
```

**Notes:**
For A ∈ ℝ^{m×n} with m ≥ n and full column rank, Q ∈ ℝ^{m×n} has orthonormal columns (Q^TQ = I_n), and R ∈ ℝ^{n×n} is upper triangular. Used in solving least squares problems. More stable than normal equations for ill-conditioned problems.

---

### LU Decomposition

**Equation:**
```latex
A = LU
```

**Notes:**
For square matrix A, L is lower triangular with unit diagonal, U is upper triangular. May require row permutations (PA = LU form). Efficient for solving multiple linear systems with same coefficient matrix. Complexity O(n³) for decomposition, O(n²) for each solve.

---

### Trace Properties

**Equation:**
```latex
\text{tr}(AB) = \text{tr}(BA)
```

**Notes:**
The trace is the sum of diagonal elements: tr(A) = Σ_i A_{ii}. Cyclic property: tr(ABC) = tr(CAB) = tr(BCA). Also: tr(A + B) = tr(A) + tr(B), tr(A) = Σλ_i. Used in matrix derivatives and likelihood functions.

---

### Rank-Nullity Theorem

**Equation:**
```latex
\text{rank}(A) + \text{nullity}(A) = n
```

**Notes:**
For matrix A ∈ ℝ^{m×n}, the rank (dimension of column space) plus the nullity (dimension of null space) equals n (number of columns). Fundamental for determining solution existence and uniqueness. Used in econometric identification.

---

### Positive Definite Matrix Conditions

**Equation:**
```latex
x^T A x > 0 \quad \forall x \neq 0
```

**Notes:**
For symmetric matrix A and all non-zero vectors x. Equivalent conditions: (1) all eigenvalues λ_i > 0, (2) all leading principal minors positive, (3) Cholesky decomposition exists. Positive semi-definite: x^TAx ≥ 0. Essential for covariance matrices and optimization.

---

### Sherman-Morrison Formula

**Equation:**
```latex
(A + uv^T)^{-1} = A^{-1} - \frac{A^{-1}uv^T A^{-1}}{1 + v^T A^{-1}u}
```

**Notes:**
Updates the inverse of A after rank-one modification by outer product uv^T. Reduces complexity from O(n³) to O(n²). Used in recursive least squares, Kalman filtering, and online learning algorithms.

---

### Woodbury Matrix Identity

**Equation:**
```latex
(A + UCV)^{-1} = A^{-1} - A^{-1}U(C^{-1} + VA^{-1}U)^{-1}VA^{-1}
```

**Notes:**
Generalizes Sherman-Morrison to rank-k updates. Reduces complexity from O(n³) to O(k²n + k³) when k << n. Essential for Kalman filter updates, portfolio optimization with constraints, and factor model computations.

---

### Matrix Differentiation (Gradient of Quadratic Form)

**Equation:**
```latex
\frac{\partial}{\partial x}(x^T A x) = (A + A^T)x
```

**Notes:**
For x ∈ ℝ^n and A ∈ ℝ^{n×n}. If A is symmetric, simplifies to 2Ax. Also: ∂(a^Tx)/∂x = a and ∂(x^TAy)/∂x = Ay. Used in portfolio optimization, GMM estimation, and maximum likelihood with quadratic forms.

---

### Kronecker Product Properties

**Equation:**
```latex
(A \otimes B)(C \otimes D) = (AC) \otimes (BD)
```

**Notes:**
The Kronecker product of A ∈ ℝ^{m×n} and B ∈ ℝ^{p×q} is (A ⊗ B) ∈ ℝ^{mp×nq}. Properties: (A ⊗ B)^T = A^T ⊗ B^T, (A ⊗ B)^{-1} = A^{-1} ⊗ B^{-1}. Used in vectorization: vec(AXB) = (B^T ⊗ A)vec(X). Essential for VAR models.

---

### Moore-Penrose Pseudoinverse

**Equation:**
```latex
A^+ = (A^T A)^{-1} A^T
```

**Notes:**
For A ∈ ℝ^{m×n} with full column rank (rank(A) = n), the pseudoinverse A^+ ∈ ℝ^{n×m}. Gives least squares solution: x = A^+b minimizes ||Ax - b||₂. General form via SVD: A^+ = VΣ^+U^T. Used in overdetermined systems and rank-deficient regression.

---

### Projection Matrix

**Equation:**
```latex
P = A(A^T A)^{-1}A^T
```

**Notes:**
Projects vectors onto column space of A with full column rank. Properties: P is symmetric (P^T = P), idempotent (P² = P), rank(P) = rank(A). In OLS regression: ŷ = Py gives fitted values, ê = (I-P)y gives residuals.

---

### Orthogonal Projection

**Equation:**
```latex
\text{proj}_v(u) = \frac{u^T v}{v^T v} v
```

**Notes:**
Projects vector u onto vector v (with v ≠ 0). For unit vector v: (u^Tv)v. The orthogonal component is u - proj_v(u). Matrix form: proj_v(u) = (vv^T/(v^Tv))u. Used in Gram-Schmidt orthogonalization.

---

### Gram-Schmidt Process

**Equation:**
```latex
v_k = a_k - \sum_{j=1}^{k-1} \frac{a_k^T v_j}{v_j^T v_j} v_j
```

**Notes:**
Orthogonalizes linearly independent vectors {a_1, ..., a_n} to produce orthogonal vectors {v_1, ..., v_n}. Initialize v_1 = a_1. Normalize to get orthonormal basis: u_k = v_k/||v_k||₂. Basis for QR decomposition algorithms.

---

### Frobenius Norm

**Equation:**
```latex
\|A\|_F = \sqrt{\sum_{i=1}^{m} \sum_{j=1}^{n} |A_{ij}|^2} = \sqrt{\text{tr}(A^T A)}
```

**Notes:**
For matrix A ∈ ℝ^{m×n}, the Frobenius norm is the Euclidean norm of the vectorized matrix. Properties: ||A||_F² = Σσ_i² where σ_i are singular values. Used in matrix approximation, regularization, and measuring model fit.

---

### Condition Number

**Equation:**
```latex
\kappa(A) = \|A\| \|A^{-1}\| = \frac{\sigma_{\max}(A)}{\sigma_{\min}(A)}
```

**Notes:**
Measures sensitivity of solution x in Ax = b to perturbations. κ(A) ≥ 1 always; κ(A) = 1 for orthogonal matrices. Large κ(A) indicates ill-conditioning (near-singularity). Used to assess numerical stability and multicollinearity.

---

### Schur Complement

**Equation:**
```latex
M/A = D - CA^{-1}B
```

**Notes:**
For block matrix M = [A B; C D] where A is invertible, the Schur complement of A in M is D - CA^{-1}B. Used in block matrix inversion. det(M) = det(A)det(M/A). Essential for conditional distributions in multivariate normal and portfolio risk decomposition.

---

## Macroeconomics

### National Income Identity (GDP)

**Equation:**
```latex
Y = C + I + G + NX
```

**Notes:**
The fundamental national income accounting identity for an open economy. Total output equals consumption, investment, government spending, and net exports. Forms the basis for IS-LM analysis. Variables: Y = GDP, C = consumption, I = investment, G = government spending, NX = net exports (X - M).

---

### Consumption Function (Keynesian)

**Equation:**
```latex
C = C_0 + c(Y - T)
```

**Notes:**
Keynesian consumption function relating consumption to disposable income. Foundational for multiplier analysis. Variables: C = aggregate consumption, C_0 = autonomous consumption (> 0), c = marginal propensity to consume (0 < c < 1), Y = income, T = taxes.

---

### Investment-Savings Identity

**Equation:**
```latex
S = I
```

**Notes:**
The equilibrium condition that national savings equals investment in a closed economy. Derived from national income identity. Critical for understanding capital accumulation and growth. In open economy: S = I + NX.

---

### IS Curve

**Equation:**
```latex
Y = \frac{1}{1-c(1-t)}[C_0 + I_0 - bi + G_0 + NX_0]
```

**Notes:**
Goods market equilibrium showing negative relationship between output and interest rate. The coefficient 1/(1-c(1-t)) is the Keynesian multiplier. Variables: c = MPC, t = tax rate, b = investment interest sensitivity, i = interest rate.

---

### Phillips Curve (Expectations-Augmented)

**Equation:**
```latex
\pi = \pi^e - \alpha(u - u^*) + \varepsilon
```

**Notes:**
Friedman-Phelps expectations-augmented Phillips curve. Inflation depends on expected inflation, unemployment gap, and supply shocks. No long-run tradeoff at u = u*. Variables: π = actual inflation, π^e = expected inflation, u* = natural rate (NAIRU), α = sacrifice ratio.

---

### Okun's Law

**Equation:**
```latex
\Delta Y = \bar{g} - \beta(u - u_{-1})
```

**Notes:**
Empirical relationship between output growth and unemployment changes. Output growth exceeds trend when unemployment falls. Coefficient β typically around 2-3 (Okun's coefficient). Variables: ΔY = GDP growth, ḡ = trend growth, β = Okun's coefficient.

---

### Quantity Theory of Money

**Equation:**
```latex
MV = PY
```

**Notes:**
The equation of exchange, foundation of monetarism. With constant velocity V, changes in money supply M cause proportional changes in nominal GDP (PY). Long-run neutrality of money. Variables: M = money supply, V = velocity, P = price level, Y = real output.

---

### Fisher Equation

**Equation:**
```latex
i = r + \pi^e
```

**Notes:**
Relates nominal interest rate to real rate and expected inflation. Fisher effect: nominal rate adjusts one-for-one with expected inflation in long run. Fundamental for bond pricing and monetary policy. Variables: i = nominal rate, r = real rate, π^e = expected inflation.

---

### Taylor Rule

**Equation:**
```latex
i_t = r^* + \pi_t + \alpha(\pi_t - \pi^*) + \beta(y_t - y^*)
```

**Notes:**
Taylor's (1993) monetary policy rule for central bank interest rate setting. Original coefficients: α = β = 0.5. Variables: i_t = target nominal rate, r* = equilibrium real rate (~2%), π* = inflation target, y_t - y* = output gap. Taylor principle: α > 0 ensures determinacy.

---

### Solow Growth Model (Fundamental Equation)

**Equation:**
```latex
\dot{k} = sf(k) - \delta k
```

**Notes:**
Fundamental dynamic equation of Solow-Swan growth model. Capital per worker grows when investment sf(k) exceeds depreciation δk. Converges to steady state where dk/dt = 0. Variables: k = capital per worker, s = savings rate (0 < s < 1), δ = depreciation rate.

---

### Solow Steady State

**Equation:**
```latex
sf(k^*) = (n + \delta)k^*
```

**Notes:**
Steady-state condition with population growth. Investment per worker equals break-even investment. At k*, capital and output per worker are constant. Variables: k* = steady-state capital per worker, n = population growth rate.

---

### Golden Rule of Capital Accumulation

**Equation:**
```latex
f'(k_{gold}) = n + \delta
```

**Notes:**
Determines optimal steady-state capital stock that maximizes consumption per capita. At k_gold, marginal product of capital equals effective depreciation rate. Phelps (1961) condition; policy benchmark.

---

### Ramsey-Cass-Koopmans Euler Equation

**Equation:**
```latex
\frac{\dot{c}}{c} = \frac{1}{\theta}[f'(k) - \delta - \rho]
```

**Notes:**
Consumption Euler equation from optimal growth theory. Consumption grows when return on capital f'(k) - δ exceeds discount rate ρ. Foundation of DSGE models. Variables: θ = coefficient of relative risk aversion, ρ = rate of time preference.

---

### Bellman Equation (Dynamic Programming)

**Equation:**
```latex
V(k) = \max_{k'} \left\{ u(f(k) - k' + (1-\delta)k) + \beta V(k') \right\}
```

**Notes:**
Value function satisfies recursive relationship: current utility plus discounted continuation value. Envelope theorem yields Euler equation. Foundation of computational methods in macro. Variables: V(k) = value function, β = discount factor (0 < β < 1).

---

### New Keynesian Phillips Curve

**Equation:**
```latex
\pi_t = \beta \mathbb{E}_t[\pi_{t+1}] + \kappa \tilde{y}_t
```

**Notes:**
NKPC derived from Calvo pricing with forward-looking expectations. Current inflation depends on expected future inflation and output gap. Core of New Keynesian DSGE models. Variables: β = discount factor, κ = slope parameter from Calvo pricing, ỹ_t = output gap.

---

### Uncovered Interest Parity (UIP)

**Equation:**
```latex
i_t - i_t^* = \mathbb{E}_t[s_{t+1}] - s_t
```

**Notes:**
Interest rate differential equals expected depreciation. No arbitrage condition for international bonds without hedging. Empirically fails (forward premium puzzle). Variables: i_t = domestic rate, i_t* = foreign rate, s_t = log spot exchange rate.

---

### Covered Interest Parity (CIP)

**Equation:**
```latex
i_t - i_t^* = f_t - s_t
```

**Notes:**
Interest rate differential equals forward premium/discount. No arbitrage with forward hedging. Holds almost exactly in practice. Defines arbitrage-free forward rate. Variables: f_t = log forward rate, s_t = log spot rate.

---

### Purchasing Power Parity (PPP)

**Equation:**
```latex
S_t = \frac{P_t}{P_t^*}
```

**Notes:**
Absolute PPP: exchange rate equals ratio of price levels. Long-run anchor but fails short-run. Relative PPP: Δs = π - π*. Holds better for tradables and long-run. Variables: S_t = nominal exchange rate, P_t = domestic price level, P_t* = foreign price level.

---

### Permanent Income Hypothesis

**Equation:**
```latex
C_t = r \cdot W_t = r \left( A_t + \sum_{s=0}^{\infty} \frac{Y_{t+s}}{(1+r)^s} \right)
```

**Notes:**
Friedman's PIH: consumption equals annuity value of total wealth (human + non-human). Consumption smoothing over lifetime. Temporary income changes don't affect consumption. Variables: C_t = consumption, W_t = total wealth, A_t = financial assets.

---

### DSGE Household Euler Equation

**Equation:**
```latex
u'(C_t) = \beta \mathbb{E}_t \left[ u'(C_{t+1}) \frac{1+r_{t+1}}{\Pi_{t+1}} \right]
```

**Notes:**
Consumption Euler equation in DSGE models with nominal rigidities. Marginal utility today equals expected discounted marginal utility tomorrow adjusted for real return. Variables: Π_{t+1} = gross inflation rate, (1+r)/Π = gross real return.

---

### Aggregate Demand (New Keynesian IS)

**Equation:**
```latex
\tilde{y}_t = \mathbb{E}_t[\tilde{y}_{t+1}] - \frac{1}{\sigma}(i_t - \mathbb{E}_t[\pi_{t+1}] - r^n)
```

**Notes:**
Dynamic IS curve in New Keynesian model. Output gap depends negatively on real interest rate gap. Forward-looking: expected future output gap matters. Core of three-equation NK model. Variables: σ = inverse of elasticity of intertemporal substitution.

---

### Solow Residual (TFP Measurement)

**Equation:**
```latex
\log A_t = \log Y_t - \alpha \log K_t - (1-\alpha) \log L_t
```

**Notes:**
Measures total factor productivity (TFP) as the part of output growth not explained by input growth. Calculated as residual from production function. Used in growth accounting and RBC models. Variables: α = capital share (~1/3).

---

## Finance & Asset Pricing

### Present Value

**Equation:**
```latex
PV = \frac{FV}{(1 + r)^t}
```

**Notes:**
Fundamental time value of money formula. The present value of a future cash flow discounted at rate r. Used in all valuation contexts. Variables: PV = present value (≥0), FV = future value, r = discount rate per period (>-1), t = number of periods.

---

### Net Present Value

**Equation:**
```latex
NPV = \sum_{t=0}^{T} \frac{C_t}{(1 + r)^t}
```

**Notes:**
Sum of discounted cash flows. Investment decision rule: accept if NPV > 0. Assumes cash flows can be reinvested at discount rate r. Variables: NPV = net present value, C_t = cash flow at time t (C_0 typically negative), T = terminal period.

---

### Internal Rate of Return

**Equation:**
```latex
0 = \sum_{t=0}^{T} \frac{C_t}{(1 + IRR)^t}
```

**Notes:**
Discount rate that makes NPV equal to zero. Solution may not be unique or exist. Decision rule: accept if IRR > required return. May conflict with NPV for mutually exclusive projects.

---

### Continuous Compounding

**Equation:**
```latex
A = P e^{rt}
```

**Notes:**
Limit of compound interest as compounding frequency approaches infinity. Used in derivatives pricing, theoretical finance. Mathematically tractable for stochastic calculus. Variables: A = accumulated amount, P = principal, r = continuous rate, t = time.

---

### Bond Pricing

**Equation:**
```latex
P = \sum_{t=1}^{T} \frac{C}{(1 + y)^t} + \frac{F}{(1 + y)^T}
```

**Notes:**
Present value of coupon payments plus face value. Inverse relationship between price and yield. Variables: P = bond price, C = coupon payment, F = face value, y = yield per period, T = maturity in periods.

---

### Duration (Macaulay)

**Equation:**
```latex
D_{Mac} = \frac{1}{P} \sum_{t=1}^{T} t \cdot \frac{C_t}{(1 + y)^t}
```

**Notes:**
Weighted average time to receive bond cash flows. Measures interest rate sensitivity. First-order approximation to price change. Variables: D_Mac = Macaulay duration, P = bond price, C_t = cash flow at time t, y = yield.

---

### Modified Duration

**Equation:**
```latex
D_{Mod} = \frac{D_{Mac}}{1 + y}
```

**Notes:**
Sensitivity of bond price to parallel yield shift. Approximation: ΔP/P ≈ -D_Mod · Δy. More directly measures price elasticity than Macaulay duration. Used in hedging and risk management.

---

### Convexity

**Equation:**
```latex
C = \frac{1}{P} \sum_{t=1}^{T} \frac{t(t+1) \cdot C_t}{(1 + y)^{t+2}}
```

**Notes:**
Second-order sensitivity of bond price to yield changes. Improved approximation: ΔP/P ≈ -D_Mod · Δy + (1/2) · C · (Δy)². Always positive for standard bonds.

---

### Stochastic Discount Factor

**Equation:**
```latex
P_t = E_t[M_{t+1} X_{t+1}]
```

**Notes:**
Fundamental asset pricing equation. Price equals expected discounted payoff under physical measure. M is the unique SDF under complete markets. Also called pricing kernel. Variables: P_t = asset price, M_{t+1} = stochastic discount factor, X_{t+1} = payoff.

---

### Risk-Neutral Pricing

**Equation:**
```latex
V_t = e^{-r(T-t)} E_t^{\mathbb{Q}}[V_T]
```

**Notes:**
Derivative value as discounted expected payoff under risk-neutral measure. All assets earn risk-free rate under Q. Martingale pricing. Variables: V_t = derivative value, r = risk-free rate, E^Q = risk-neutral expectation.

---

### Mean-Variance Portfolio Optimization

**Equation:**
```latex
\min_w \quad w^T \Sigma w \quad \text{s.t.} \quad w^T \mu = \mu_p, \; w^T \mathbf{1} = 1
```

**Notes:**
Markowitz portfolio selection. Minimize variance for target expected return. Assumes normally distributed returns or quadratic utility. Foundation of modern portfolio theory. Variables: w = weight vector, Σ = covariance matrix, μ = expected return vector.

---

### Minimum Variance Portfolio

**Equation:**
```latex
w_{MVP} = \frac{\Sigma^{-1} \mathbf{1}}{\mathbf{1}^T \Sigma^{-1} \mathbf{1}}
```

**Notes:**
Portfolio with lowest possible variance. Unique solution at base of efficient frontier. Does not depend on expected returns. Useful when returns are poorly estimated. Variables: Σ = covariance matrix, 1 = vector of ones.

---

### Market Portfolio Weights

**Equation:**
```latex
w_M = \frac{\Sigma^{-1} (\mu - r_f \mathbf{1})}{\mathbf{1}^T \Sigma^{-1} (\mu - r_f \mathbf{1})}
```

**Notes:**
Tangency portfolio weights in presence of risk-free asset. Maximizes Sharpe ratio. In CAPM equilibrium, this is the market portfolio. All investors hold this risky portfolio.

---

### CAPM (Capital Asset Pricing Model)

**Equation:**
```latex
E[R_i] = R_f + \beta_i (E[R_M] - R_f)
```

**Notes:**
Equilibrium relation between expected return and systematic risk. Beta measures sensitivity to market portfolio. Investors compensated only for non-diversifiable risk. Variables: E[R_i] = expected return, R_f = risk-free rate, β_i = cov(R_i, R_M)/var(R_M).

---

### Security Market Line

**Equation:**
```latex
E[R_i] - R_f = \beta_i (E[R_M] - R_f)
```

**Notes:**
CAPM in excess return form. Linear relationship between beta and expected excess return. Assets plot on line in (β, E[R]) space if correctly priced. Used to identify mispriced securities.

---

### Fama-French Three-Factor Model

**Equation:**
```latex
E[R_i] - R_f = \beta_{i,M} (E[R_M] - R_f) + \beta_{i,SMB} E[SMB] + \beta_{i,HML} E[HML]
```

**Notes:**
Extended CAPM with size and value factors. SMB = Small Minus Big (size premium), HML = High Minus Low (value premium). Explains cross-sectional returns better than CAPM. Widely used in performance attribution.

---

### Arbitrage Pricing Theory (APT)

**Equation:**
```latex
E[R_i] = R_f + \sum_{k=1}^{K} \beta_{i,k} \lambda_k
```

**Notes:**
Multifactor model with K systematic risk factors. Expected return linear in factor betas. No specific factors required (unlike CAPM). Based on no-arbitrage and diversification. Variables: β_{i,k} = loading on factor k, λ_k = risk premium for factor k.

---

### Sharpe Ratio

**Equation:**
```latex
SR = \frac{E[R_p] - R_f}{\sigma_p}
```

**Notes:**
Excess return per unit of total risk. Measures risk-adjusted performance. Maximized by tangency portfolio. Assumes normally distributed returns. Variables: SR = Sharpe ratio, E[R_p] = expected portfolio return, σ_p = portfolio standard deviation.

---

### Treynor Ratio

**Equation:**
```latex
TR = \frac{E[R_p] - R_f}{\beta_p}
```

**Notes:**
Excess return per unit of systematic risk. Appropriate for well-diversified portfolios. Uses beta instead of total volatility. Variables: TR = Treynor ratio, β_p = portfolio beta.

---

### Jensen's Alpha

**Equation:**
```latex
\alpha_i = E[R_i] - \left( R_f + \beta_i (E[R_M] - R_f) \right)
```

**Notes:**
Excess return above CAPM prediction. Positive alpha indicates outperformance. Tests market efficiency and manager skill. Zero alpha implies asset is correctly priced by CAPM.

---

### Information Ratio

**Equation:**
```latex
IR = \frac{E[R_p - R_B]}{\sigma(R_p - R_B)}
```

**Notes:**
Active return per unit of active risk (tracking error). Measures manager skill relative to benchmark. Sharpe ratio of active portfolio. Higher IR indicates more consistent outperformance.

---

### Hansen-Jagannathan Bound

**Equation:**
```latex
\frac{\sigma(M)}{\mathbb{E}[M]} \geq \frac{|E[R_e]|}{\sigma(R_e)}
```

**Notes:**
Lower bound on SDF volatility from observed asset returns. Any valid SDF must satisfy this inequality. Used to test asset pricing models. Violation indicates model misspecification.

---

## Quantitative Methods

### Newton-Raphson Method

**Equation:**
```latex
x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}
```

**Notes:**
Iterative root-finding algorithm using tangent line approximations. Quadratic convergence near simple roots. Used in implied volatility calculation and model calibration. Requires f'(x_n) ≠ 0 and good initial guess.

---

### Bisection Method

**Equation:**
```latex
x_{n+1} = \frac{a_n + b_n}{2}
```

**Notes:**
Robust root-finding via interval bisection. Guarantees convergence if f continuous and f(a_0)f(b_0) < 0. Linear convergence (halves interval each iteration). Used when derivatives unavailable or Newton-Raphson fails.

---

### Numerical Integration (Simpson's Rule)

**Equation:**
```latex
\int_a^b f(x) dx \approx \frac{h}{3} \left[ f(x_0) + 4\sum_{i=1,3,5,...}^{n-1} f(x_i) + 2\sum_{i=2,4,6,...}^{n-2} f(x_i) + f(x_n) \right]
```

**Notes:**
Quadratic interpolation for higher accuracy. Error O(h⁴). Requires even n. h = (b-a)/n. Preferred for option pricing and smooth integrands. More accurate than trapezoidal rule.

---

### Monte Carlo Integration

**Equation:**
```latex
\int_{\Omega} f(x) dx \approx \frac{|\Omega|}{N} \sum_{i=1}^N f(x_i), \quad x_i \sim \text{Uniform}(\Omega)
```

**Notes:**
Estimates integral by averaging at random points. Convergence O(N^{-1/2}) regardless of dimension. Effective for high-dimensional derivative pricing. Variables: |Ω| = volume of domain, N = number of samples.

---

### Importance Sampling

**Equation:**
```latex
\mathbb{E}_p[f(X)] = \int f(x) \frac{p(x)}{q(x)} q(x) dx \approx \frac{1}{N} \sum_{i=1}^N f(x_i) w_i
```

**Notes:**
Variance reduction via proposal distribution q. w_i = p(x_i)/q(x_i) are importance weights. Effective when q concentrates where |fp| is large. Used in rare event simulation and credit risk.

---

### Kalman Filter (Prediction)

**Equation:**
```latex
\hat{x}_{t|t-1} = F_t \hat{x}_{t-1|t-1} + B_t u_t, \quad P_{t|t-1} = F_t P_{t-1|t-1} F_t^T + Q_t
```

**Notes:**
Predicts state and covariance using transition model. Optimal for linear Gaussian systems. First step of Kalman recursion. Used in macro forecasting and term structure modeling. Variables: F_t = state transition matrix, Q_t = process noise covariance.

---

### Kalman Filter (Update)

**Equation:**
```latex
K_t = P_{t|t-1} H_t^T (H_t P_{t|t-1} H_t^T + R_t)^{-1}
```

**Notes:**
Kalman gain determines how much to trust observation vs prediction. Update: x̂_{t|t} = x̂_{t|t-1} + K_t(y_t - H_t x̂_{t|t-1}). Minimizes MSE for linear Gaussian systems. Variables: H_t = observation matrix, R_t = observation noise covariance.

---

### Principal Component Analysis

**Equation:**
```latex
\max_{w: \|w\|=1} \text{Var}(X w) = \max_{w: \|w\|=1} w^T \Sigma w
```

**Notes:**
Finds orthogonal directions of maximum variance. First PC maximizes variance, subsequent PCs maximize remaining variance orthogonally. Solution: eigenvectors of covariance matrix Σ. Used in factor construction and risk decomposition.

---

### Gradient Descent Update

**Equation:**
```latex
\theta_{t+1} = \theta_t - \alpha \nabla_\theta L(\theta_t)
```

**Notes:**
Iterative update in steepest descent direction. Converges to local minimum for convex L with appropriate learning rate α. Variables: θ = parameter vector, L = loss function, α = learning rate (step size).

---

### Stochastic Gradient Descent

**Equation:**
```latex
\theta_{t+1} = \theta_t - \alpha_t \nabla_\theta L_i(\theta_t)
```

**Notes:**
Updates using single sample gradient. Enables online learning and escapes shallow minima. Requires decaying learning rate for convergence. Used in neural network training. Variables: L_i = loss for sample i.

---

### Backpropagation (Chain Rule)

**Equation:**
```latex
\frac{\partial L}{\partial W^{(l)}} = \frac{\partial L}{\partial a^{(l+1)}} \frac{\partial a^{(l+1)}}{\partial z^{(l+1)}} \frac{\partial z^{(l+1)}}{\partial W^{(l)}}
```

**Notes:**
Computes gradients efficiently via backward error propagation. Enables deep network training via chain rule. Variables: W^{(l)} = weights at layer l, a = activation, z = pre-activation. Foundation for all neural network applications.

---

### Logistic Regression (Sigmoid)

**Equation:**
```latex
P(Y=1|x) = \sigma(w^T x + b) = \frac{1}{1 + e^{-(w^T x + b)}}
```

**Notes:**
Models binary outcome probability via sigmoid. Convex log-likelihood enables global optimization. Used in default prediction and directional forecasting. Variables: w = weight vector, b = bias, σ(z) = 1/(1 + e^{-z}).

---

### Softmax Function

**Equation:**
```latex
P(Y=k|x) = \frac{e^{z_k}}{\sum_{j=1}^K e^{z_j}}
```

**Notes:**
Generalizes logistic to multi-class. Outputs probability distribution over K classes. Sum of probabilities equals 1. Used in credit rating classification and regime prediction. Variables: z = Wx + b.

---

### Cross-Entropy Loss

**Equation:**
```latex
L = -\frac{1}{n} \sum_{i=1}^n \sum_{k=1}^K y_{ik} \log(\hat{y}_{ik})
```

**Notes:**
Measures dissimilarity between true and predicted distributions. Equivalent to negative log-likelihood. Penalizes confident wrong predictions. Variables: y_{ik} = true label (one-hot), ŷ_{ik} = predicted probability.

---

### Ridge Regression (L2 Regularization)

**Equation:**
```latex
\hat{\beta}_{\text{ridge}} = \arg\min_\beta \left\{ \|y - X\beta\|^2 + \lambda \|\beta\|^2 \right\} = (X^T X + \lambda I)^{-1} X^T y
```

**Notes:**
Quadratic penalty prevents overfitting. Closed-form solution always exists. Shrinks coefficients toward zero but never to exact zero. Used in factor models and yield curve fitting. Variables: λ = regularization parameter.

---

### Lasso Regression (L1 Regularization)

**Equation:**
```latex
\hat{\beta}_{\text{lasso}} = \arg\min_\beta \left\{ \frac{1}{2n} \|y - X\beta\|^2 + \lambda \|\beta\|_1 \right\}
```

**Notes:**
L1 penalty induces sparsity. Performs simultaneous estimation and variable selection. No closed-form solution; solved via coordinate descent. Used in factor selection and sparse portfolios.

---

### Elastic Net

**Equation:**
```latex
\hat{\beta} = \arg\min_\beta \left\{ \frac{1}{2n} \|y - X\beta\|^2 + \lambda \left( \alpha \|\beta\|_1 + \frac{1-\alpha}{2} \|\beta\|^2 \right) \right\}
```

**Notes:**
Combines L1 and L2 penalties. Encourages grouping effect for correlated variables. Effective when p > n or high correlation. Variables: α ∈ [0,1] balances L1/L2.

---

### MCMC Metropolis-Hastings Acceptance

**Equation:**
```latex
\alpha(x^*, x^{(t)}) = \min\left\{1, \frac{p(x^*) q(x^{(t)} | x^*)}{p(x^{(t)}) q(x^* | x^{(t)})} \right\}
```

**Notes:**
Generates posterior samples via accept/reject. Detailed balance ensures correct stationary distribution. Symmetric proposal simplifies to ratio of targets. Used in Bayesian inference. Variables: p = target distribution, q = proposal distribution.

---

### Gibbs Sampling

**Equation:**
```latex
x_j^{(t+1)} \sim p(x_j | x_1^{(t+1)}, \ldots, x_{j-1}^{(t+1)}, x_{j+1}^{(t)}, \ldots, x_d^{(t)})
```

**Notes:**
Special MCMC sampling each variable from full conditional. Acceptance always 1. Effective when conditionals are standard distributions. Used in hierarchical models and missing data imputation.

---

### Expectation-Maximization Algorithm

**Equation:**
```latex
Q(\theta | \theta^{(t)}) = \mathbb{E}_{Z|X,\theta^{(t)}}[\log p(X,Z|\theta)], \quad \theta^{(t+1)} = \arg\max_\theta Q(\theta | \theta^{(t)})
```

**Notes:**
Iterative estimation in latent variable models. E-step computes expected log-likelihood. M-step maximizes. Monotonic increase guaranteed. Used in Gaussian mixture models and regime-switching.

---

## Derivatives & Fixed Income

### Forward Price

**Equation:**
```latex
F_0 = S_0 e^{(r-q)T}
```

**Notes:**
No-arbitrage forward price for an asset with continuous dividend yield. Derived from cash-and-carry arbitrage. Variables: F_0 = forward price, S_0 = spot price, r = risk-free rate, q = continuous dividend yield, T = time to maturity.

---

### Put-Call Parity

**Equation:**
```latex
C_t + Ke^{-r(T-t)} = P_t + S_t
```

**Notes:**
Fundamental relationship between European call and put prices with same strike and maturity. Violation creates arbitrage opportunities. Variables: C_t = call price, P_t = put price, S_t = stock price, K = strike, r = risk-free rate, T = maturity.

---

### Geometric Brownian Motion

**Equation:**
```latex
dS_t = \mu S_t dt + \sigma S_t dW_t
```

**Notes:**
Stochastic differential equation modeling asset price dynamics. Foundation of modern derivatives pricing. Ensures positive stock prices and log-normal distribution. Variables: S_t = asset price (>0), μ = drift, σ = volatility, W_t = Brownian motion.

---

### Black-Scholes PDE

**Equation:**
```latex
\frac{\partial V}{\partial t} + rS\frac{\partial V}{\partial S} + \frac{1}{2}\sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} = rV
```

**Notes:**
Partial differential equation governing European option prices under GBM. Derived via Itô's lemma and delta-hedging. Terminal condition: V(S,T) = payoff function. Assumes constant r and σ.

---

### Black-Scholes Call Option Price

**Equation:**
```latex
C = S_0 e^{-qT} N(d_1) - K e^{-rT} N(d_2)
```

**Notes:**
Closed-form solution for European call option. d_1 = [ln(S_0/K) + (r - q + σ²/2)T]/(σ√T), d_2 = d_1 - σ√T. N(·) = cumulative standard normal CDF. N(d_2) = risk-neutral probability of exercise.

---

### Black-Scholes Put Option Price

**Equation:**
```latex
P = K e^{-rT} N(-d_2) - S_0 e^{-qT} N(-d_1)
```

**Notes:**
Closed-form solution for European put option. Alternatively derivable from put-call parity: P = C - S_0e^{-qT} + Ke^{-rT}. For American puts, early exercise premium requires numerical methods.

---

### Delta (Option Greek)

**Equation:**
```latex
\Delta = \frac{\partial V}{\partial S}
```

**Notes:**
First derivative of option value with respect to underlying price. Hedge ratio for delta-neutral position. For BS call: Δ_C = e^{-qT}N(d_1) ∈ [0,1]. For put: Δ_P = -e^{-qT}N(-d_1) ∈ [-1,0].

---

### Gamma (Option Greek)

**Equation:**
```latex
\Gamma = \frac{\partial^2 V}{\partial S^2} = \frac{\partial \Delta}{\partial S}
```

**Notes:**
Second derivative; rate of change of delta. Measures curvature and hedging error from discrete rebalancing. For BS: Γ = e^{-qT}n(d_1)/(S_0σ√T). Always positive for long options. Peaks at-the-money.

---

### Theta (Option Greek)

**Equation:**
```latex
\Theta = \frac{\partial V}{\partial t}
```

**Notes:**
Time decay of option value. Typically negative for long options (time decay). Related to gamma via BS PDE: Θ + rSΔ + ½σ²S²Γ = rV. Accelerates near expiration.

---

### Vega (Option Greek)

**Equation:**
```latex
\nu = \frac{\partial V}{\partial \sigma}
```

**Notes:**
Sensitivity to volatility changes. Always positive for long vanilla options. For BS: ν = S_0e^{-qT}√T n(d_1). Peaks at-the-money. Used for volatility trading and managing implied vol exposure.

---

### Itô's Lemma

**Equation:**
```latex
dF = \left(\frac{\partial F}{\partial t} + \mu S \frac{\partial F}{\partial S} + \frac{1}{2}\sigma^2 S^2 \frac{\partial^2 F}{\partial S^2}\right)dt + \sigma S \frac{\partial F}{\partial S} dW_t
```

**Notes:**
Fundamental result in stochastic calculus; chain rule for Itô processes. Gives dynamics of F(S,t) when dS = μSdt + σSdW. The ½σ²S²∂²F/∂S² term from (dW)² = dt. Foundation for BS PDE derivation.

---

### Girsanov Theorem

**Equation:**
```latex
dW_t^{\mathbb{Q}} = dW_t^{\mathbb{P}} + \theta_t dt
```

**Notes:**
Enables change between probability measures via drift adjustment. Transforms physical measure P to risk-neutral measure Q. Market price of risk θ_t = (μ - r)/σ. Under Q, W^Q is a Brownian motion. Foundation for risk-neutral pricing.

---

### Feynman-Kac Formula

**Equation:**
```latex
V(S,t) = \mathbb{E}^{\mathbb{Q}}\left[e^{-\int_t^T r(s)ds} g(S_T) \bigg| S_t = S\right]
```

**Notes:**
Links PDEs to stochastic expectations. Solution to parabolic PDEs expressible as conditional expectation of terminal payoff. Enables Monte Carlo pricing when closed-form solutions unavailable. g(S_T) = terminal payoff function.

---

### Binomial Option Pricing Model

**Equation:**
```latex
V_0 = e^{-rT} \sum_{k=0}^n \binom{n}{k} p^k (1-p)^{n-k} \max(S_0 u^k d^{n-k} - K, 0)
```

**Notes:**
Discrete-time lattice model. Stock moves up by u or down by d each period. Risk-neutral probability p = (e^{rΔt} - d)/(u - d). Converges to Black-Scholes as n→∞. Handles American options via backward induction.

---

### Vasicek Model

**Equation:**
```latex
dr_t = \kappa(\theta - r_t)dt + \sigma dW_t
```

**Notes:**
Mean-reverting Ornstein-Uhlenbeck process for short rate. First equilibrium interest rate model. Variables: r_t = short rate (can be negative), κ = mean reversion speed, θ = long-term mean, σ = volatility. Closed-form bond pricing.

---

### Cox-Ingersoll-Ross Model

**Equation:**
```latex
dr_t = \kappa(\theta - r_t)dt + \sigma\sqrt{r_t} dW_t
```

**Notes:**
Mean-reverting square-root diffusion for short rate. Ensures non-negative rates if 2κθ ≥ σ² (Feller condition). Volatility proportional to √r_t. Bond prices via non-central chi-squared distribution. Used for rates and credit modeling.

---

### Hull-White Model

**Equation:**
```latex
dr_t = [\theta(t) - \kappa r_t]dt + \sigma dW_t
```

**Notes:**
Extended Vasicek with time-dependent mean reversion level θ(t) calibrated to match observed term structure. Fits current yield curve exactly. Used for Bermudan swaptions, callable bonds, and exotic rates derivatives.

---

### Heath-Jarrow-Morton Framework

**Equation:**
```latex
df(t,T) = \alpha(t,T)dt + \sigma(t,T)dW_t
```

**Notes:**
Models evolution of entire forward rate curve f(t,T). Drift α(t,T) determined by volatility via no-arbitrage: α(t,T) = σ(t,T)∫_t^T σ(t,s)ds. General arbitrage-free framework for term structure modeling.

---

### Black's Model (Caplet)

**Equation:**
```latex
\text{Caplet} = \tau P(0,T_{i+1}) [L_i N(d_1) - K N(d_2)]
```

**Notes:**
Market standard for pricing interest rate caplets (call on LIBOR). d_1 = [ln(L_i/K) + σ²T_i/2]/(σ√T_i), d_2 = d_1 - σ√T_i. Cap = strip of caplets. Put-call parity: Cap - Floor = Swap. Variables: L_i = forward LIBOR, τ = accrual.

---

### Swaption Pricing (Black's Formula)

**Equation:**
```latex
V_{\text{payer}} = P(0,T_0) \cdot A(T_0,T_n) [S_{0,n}(0) N(d_1) - K N(d_2)]
```

**Notes:**
Payer swaption: option to enter swap at future time T_0 paying fixed K. A = swap annuity = Σ_i τ_i P(T_0,T_i). S_{0,n} = forward swap rate. Used for callable bonds and mortgage hedging.

---

### Credit Default Swap Pricing

**Equation:**
```latex
V_{CDS} = \sum_{i=1}^n P(0,T_i) Q(T_i) (1 - R) - s \sum_{i=1}^n \tau_i P(0,T_i) [1 - Q(T_i)]
```

**Notes:**
Value to protection buyer. First term = protection leg (expected default payments). Second term = premium leg. At par, spread s chosen so V_CDS = 0. Variables: Q(T_i) = cumulative default probability, R = recovery rate (typically 0.4).

---

### Merton's Structural Model

**Equation:**
```latex
E = V_0 N(d_1) - D e^{-rT} N(d_2)
```

**Notes:**
Treats equity as call option on firm value V with strike equal to debt D. Firm defaults if V_T < D. Default probability: P(V_T < D) = N(-d_2). d_1 = [ln(V_0/D) + (r + σ_V²/2)T]/(σ_V√T). Foundation for structural credit models.

---

### Heston Stochastic Volatility Model

**Equation:**
```latex
dS_t = \mu S_t dt + \sqrt{v_t} S_t dW_t^S, \quad dv_t = \kappa(\theta - v_t)dt + \xi \sqrt{v_t} dW_t^v
```

**Notes:**
Two-factor model with stochastic variance v_t (CIR process). Correlation ρ between W^S and W^v generates volatility smile. Variables: κ = variance mean reversion, θ = long-run variance, ξ = vol-of-vol. Feller condition: 2κθ ≥ ξ².

---

### SABR Model

**Equation:**
```latex
dF_t = \alpha_t F_t^\beta dW_t^F, \quad d\alpha_t = \nu \alpha_t dW_t^\alpha
```

**Notes:**
Stochastic Alpha Beta Rho for forward rates. β = CEV exponent (0: normal, 0.5: CIR-like, 1: log-normal). ν = vol-of-vol, ρ = correlation. Hagan formula gives implied vol approximation. Industry standard for rates and FX.

---

### Local Volatility (Dupire)

**Equation:**
```latex
\sigma_{local}^2(K,T) = \frac{\frac{\partial C}{\partial T} + (r-q)K\frac{\partial C}{\partial K} + qC}{\frac{1}{2}K^2\frac{\partial^2 C}{\partial K^2}}
```

**Notes:**
Dupire's formula for local volatility implied by market option prices. Unique diffusion that fits entire implied volatility surface: dS = (r-q)Sdt + σ_local(S,t)SdW. Perfect calibration but deterministic volatility dynamics.

---

### Value at Risk (Parametric)

**Equation:**
```latex
VaR_\alpha = -(\mu \Delta t - \sigma \sqrt{\Delta t} \, \Phi^{-1}(1-\alpha))
```

**Notes:**
Maximum expected loss over time horizon Δt at confidence level α. Variables: μ = expected return, σ = volatility, Φ^{-1} = inverse normal CDF (e.g., Φ^{-1}(0.99) ≈ 2.326). Basel regulatory capital based on 10-day 99% VaR.

---

### Expected Shortfall (CVaR)

**Equation:**
```latex
ES_\alpha = \mathbb{E}[L \mid L \geq VaR_\alpha] = \frac{1}{\alpha}\int_0^\alpha VaR_u \, du
```

**Notes:**
Conditional VaR: expected loss given loss exceeds VaR threshold. Coherent risk measure (satisfies subadditivity). For normal: ES_α = μΔt + σ√Δt φ(Φ^{-1}(α))/α. Basel III uses ES for trading book capital.

---

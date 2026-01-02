# Consolidated Financial Equations

## Formulas and Derivations

**Equation:**

$$
---
$$

**Description:**
Advanced Option Trading Strategies

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/jules-primer/primer.md; eq3/claude-primer/financial-instruments-primer.md; eq3/gemini-primer/gemini_primer.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas_part2.md*

---

## Forward Swap Rate

**Equation:**

$$
S_{m
$$

**Description:**
T_m) - P(t

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Caplet Price (Black)

**Equation:**

$$
C = P(0
$$

**Description:**
T_{i-1} | Interest Rate Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Floorlet Price (Black)

**Equation:**

$$
P = P(0
$$

**Description:**
T_{i-1} | Interest Rate Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Copula Functions

**Equation:**

$$
F_{X1
$$

**Description:**
x_2) = C(F_{X1}(x_1)

*Source: eq3/minimax-primer/formulas.csv*

---

## Stochastic Grid Method

**Equation:**

$$
V(s_0
$$

**Description:**
v^{(m)})

*Source: eq3/minimax-primer/formulas.csv*

---

## Brownian Motion Initial Condition

**Equation:**

$$
W_0 = 0
$$

**Description:**
The process starts at zero with probability one. This initial condition is crucial for the construction of Brownian motion and ensures the uniqueness of the probability measure.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Itô's Lemma (Univariate)

**Equation:**

$$
df(S_t
$$

**Description:**
Stochastic Foundations

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Quadratic Variation

**Equation:**

$$
[W]_T = T
$$

**Description:**
Quadratic variation of Brownian motion over [0,T]. Cumulative variance. Differential form: d[W]_t = dt. For general semimartingale: d[X]_t = (dX_t)^2.

*Source: eq3/minimax-primer/formulas.csv*

---

## Markov-Functional Model

**Equation:**

$$
r_t = f(t
$$

**Description:**
Term Structure

*Source: eq3/minimax-primer/formulas.csv*

---

## Brownian Motion Quadratic Variation

**Equation:**

$$
[W]_t = t
$$

**Description:**
The quadratic variation process equals time itself. This property is fundamental to Ito's lemma and explains why the second-order term appears in stochastic calculus while it vanishes in ordinary calculus.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## MM Prop I (No Tax)

**Equation:**

$$
V_L = V_U
$$

**Description:**
Levered equals unlevered value in perfect markets.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Barone-Adesi Whaley (American)

**Equation:**

$$
C_{Am}(S
$$

**Description:**
t) + A_2 (S/S^*)^{q_2}

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## HJM Drift Condition

**Equation:**

$$
\alpha(t
$$

**Description:**
T) \int_t^T \sigma(t

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## 1. Merton Structural Model

**Equation:**

$$
V_T = D + E_T
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Local Volatility (Dupire)

**Equation:**

$$
sigma^2(K
$$

**Description:**
Local Volatility Models

*Source: eq3/minimax-primer/formulas.csv*

---

## Neural Network Approximation

**Equation:**

$$
\hat{V}(S
$$

**Description:**
t

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Constant Product AMM

**Equation:**

$$
x \cdot y = k
$$

**Description:**
Uniswap invariant.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## General SDE Form

**Equation:**

$$
dX_t = \mu(t
$$

**Description:**
X_t)dW_t

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Knock-Out Call

**Equation:**

$$
V_{KO}(S_0
$$

**Description:**
T

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Knock-In Put

**Equation:**

$$
V_{KI}(S_0
$$

**Description:**
T

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Explicit Finite Difference

**Equation:**

$$
\frac{v_{i
$$

**Description:**
j}}{\Delta t} + r S_i \frac{v_{i+1 | j}}{\Delta t} = \frac{1}{2} \mathcal{L}_h v_{i

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Quantum Credit Scoring

**Equation:**

$$
U = e^{-iHt}
$$

**Description:**
Quantum walk for graph-based scoring.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## The Doob-Meyer decomposition theorem states that any submartingale X_t of class D (uniformly integrable) can be uniquely decomposed as:

**Equation:**

$$
X_t = M_t + A_t
$$

**Description:**
where M_t is a martingale and A_t is a predictable increasing process with A_0 = 0. This decomposition is fundamental for understanding the structure of semimartingales.

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
dW dZ = \rho dt
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Change of Numeraire (Radon-Nikodym)

**Equation:**

$$
dQ^T/dQ = P(t
$$

**Description:**
T) B_t]

*Source: eq3/minimax-primer/formulas.csv*

---

## Bitcoin Option

**Equation:**

$$
C_{BTC} = C / S
$$

**Description:**
Option quoted in BTC convention.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## If E[Z_T] = 1 (Novikov condition: E[exp{½∫₀^T λ_s² ds}] < ∞), then Z_t is a true martingale and defines a new probability measure Q via:

**Equation:**

$$
dQ/dP|F_t = Z_t
$$

**Description:**
Under Q, the process W_t^Q = W_t + ∫₀^t λ_s ds becomes a Brownian motion. This transformation is the cornerstone of risk-neutral pricing.

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
p_m = 1 - p_u - p_d
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Implied Volatility (Dupire)

**Equation:**

$$
sigma_imp^2(K
$$

**Description:**
Local Volatility Models

*Source: eq3/minimax-primer/formulas.csv*

---

## Eurodollar Futures Price

**Equation:**

$$
100 - R_3M LIBOR
$$

**Description:**
Quarterly interest rate contract. Price = 100 - rate. Convexity adjustment from futures vs forward. Used for LIBOR term structure.

*Source: eq3/minimax-primer/formulas.csv*

---

## Digital Caplet/Floorlet

**Equation:**

$$
V_digital = P(0
$$

**Description:**
Interest Rate Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## FX Vega

**Equation:**

$$
nu = dV/d_sigma
$$

**Description:**
Sensitivity to vol. Vega from Black-Scholes. Smile vega from skew. Vol surface dynamics.

*Source: eq3/minimax-primer/formulas.csv*

---

## Call Delta

**Equation:**

$$
\Delta = N(d_1)
$$

**Description:**
Delta measures the sensitivity of option price to changes in the underlying asset price ranging from 0 to 1 for calls. | Put delta ranges from -1 to 0 representing the hedge ratio for put options.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## SABR Implied Volatility

**Equation:**

$$
\sigma_{BS}(K
$$

**Description:**
Equity Derivatives | Volatility Modeling

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## MM Prop I (Tax)

**Equation:**

$$
V_L = V_U + \tau D
$$

**Description:**
Debt tax shield adds value.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\pi_t = n_t - r_t
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
π_t = e^{-rt} ζ_t
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
SSR = 2 - 1/(2H+1)
$$

*Source: eq3/rough_volatility_primer.txt*

---

## Equation

**Equation:**

$$
u = ln(S_0/K) + rT
$$

*Source: eq3/jump-diffusion-primer.txt*

---

## Statistical Arbitrage

**Equation:**

$$
Z = (X - mu)/sigma
$$

**Description:**
Standardized deviation from mean. Mean-reversion trading. Pairs trading, index arbitrage. Stationarity assumptions critical.

*Source: eq3/minimax-primer/formulas.csv*

---

## Standard Brownian Motion Increment

**Equation:**

$$
W_t - W_s \sim N(0
$$

**Description:**
Stochastic Calculus Fundamentals

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Brownian Motion Covariance

**Equation:**

$$
\text{Cov}(W_s
$$

**Description:**
t)

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Best-of Rainbow

**Equation:**

$$
max\left(max(S_1(T)
$$

**Description:**
S_n(T)) - K

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Equation

**Equation:**

$$
dW_S dW_y = \rho dt
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## G-Spread (Government Spread)

**Equation:**

$$
G = y_bond - y_govt
$$

**Description:**
Spread to government curve at each maturity. Yield curve comparison. Basis for credit spread analysis.

*Source: eq3/minimax-primer/formulas.csv*

---

## FX Gamma

**Equation:**

$$
Gamma = d^2V/dS^2
$$

**Description:**
Convexity of option value. Theta from gamma decay. Gamma scalping strategy. Volatility trading.

*Source: eq3/minimax-primer/formulas.csv*

---

## Interest Rate Swap Valuation

**Equation:**

$$
V_{swap}(t) = P(t
$$

**Description:**
T_n) - K \sum_{i=1}^n \tau_i P(t

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Standard Barrier Option

**Equation:**

$$
C_{do} = C_{BS}(S
$$

**Description:**
K)

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Seasonality Fourier

**Equation:**

$$
\ln S_t = f(t) + X_t
$$

**Description:**
Decomposition of commodity prices into seasonal and stochastic components.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Real Option to Abandon

**Equation:**

$$
A(V) = \max(S - V 0)
$$

**Description:**
Put option on project salvage value.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equivalence Principle

**Equation:**

$$
P \ddot{a}_x = A_x
$$

**Description:**
Premium equals expected benefits.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
dζ_t = -λ_t ζ_t dW_t
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
τ = inf{t ≥ 0 : V_t ≤ L}
$$

*Source: eq3/credit_derivatives_structural_models.txt*

---

## Option-Adjusted Duration

**Equation:**

$$
D_OA = D_eff + D_OAS
$$

**Description:**
D_OA represents the option-adjusted duration, which decomposes effective duration into the sum of duration from cash flow timing (D_eff under static prepayment) and duration from the prepayment option (D_OAS). D_OAS = -∂P/∂OAS × (1/P) measures the sensitivity of OAS to yield changes and captures the optionality contribution. This decomposition helps investors understand how much of the MBS duration comes from option risk versus cash flow timing. For deep discount MBS, D_OAS is large and positive, while for premium MBS, D_OAS is large and negative.

*Source: eq3/fixed_income_primer.txt*

---

## Basket Option (Moment Matching)

**Equation:**

$$
E[S_T] = sum w_i S_i
$$

**Description:**
Exotic Options

*Source: eq3/minimax-primer/formulas.csv*

---

## Cheyette Model (Quadratic)

**Equation:**

$$
r_t = 1/2 x_t^2 + y_t
$$

**Description:**
Term Structure

*Source: eq3/minimax-primer/formulas.csv*

---

## PIT

**Equation:**

$$
u_t = F_{t-1}(y_t)
$$

**Description:**
Probability integral transform backtest.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
X̃^(1)(k) = X(k) - X̄
$$

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## The one-factor Gaussian copula framework models default dependencies through a latent variable structure:

**Equation:**

$$
X_i = ρZ + √(1-ρ²)ε_i
$$

**Description:**
where X_i represents the standardized asset return of obligor i, Z is the systematic factor common to all obligors, ε_i are idiosyncratic factors independent of Z and each other, and ρ is the asset correlation parameter. Default occurs when X_i falls below a threshold Φ⁻¹(PD_i), where PD_i is the risk-neutral default probability.

*Source: eq3/CDO_Primer_Content.txt*

---

## Control Variates

**Equation:**

$$
V* = V + beta (X - E[X])
$$

**Description:**
Use correlated control variable X with known expectation. Beta estimated by regression. Variance reduction proportional to correlation^2. Effective for path-dependent exotics.

*Source: eq3/minimax-primer/formulas.csv*

---

## Shifted Black (SABR with Shift)

**Equation:**

$$
F_shifted = F + alpha
$$

**Description:**
Volatility Models

*Source: eq3/minimax-primer/formulas.csv*

---

## Prepayment Model (PSA)

**Equation:**

$$
CPR_t = CPR_0 * min(1
$$

**Description:**
Fixed Income

*Source: eq3/minimax-primer/formulas.csv*

---

## Decarbonization Pathway

**Equation:**

$$
dC_t/dt = -alpha C_t
$$

**Description:**
Exponential decay of emissions. Pathway to net zero. Required reduction rate alpha. Carbon budget remaining.

*Source: eq3/minimax-primer/formulas.csv*

---

## Kolmogorov Forward Equation

**Equation:**

$$
\frac{\partial p(x
$$

**Description:**
t_0)}{\partial t} = -\frac{\partial}{\partial x}[\mu(x | t)}{\partial t} = -\mu(x

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Margrabe's Formula

**Equation:**

$$
V = X N(d_1) - Y N(d_2)
$$

**Description:**
Pricing formula for option to exchange one asset for another.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## For the specific case of Ito processes, if under P we have:

**Equation:**

$$
dX_t = μ_t dt + σ_t dW_t
$$

**Description:**
then under Q the dynamics become:

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
dε(X)_t = ε(X)_t dX_t
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Antithetic Variates:

**Equation:**

$$
X_i^{anti} = f(-Z_i)
$$

**Description:**
The antithetic counterpart constructed using the negative of the standard normal random variables Z_i ~ N(0,1) used in the original path generation. The combined estimator becomes X̄ = (1/2N)Σ_{i=1}^N [f(Z_i) + f(-Z_i)], achieving variance Var(X̄) = (1/2N)[Var(f(Z)) + Cov(f(Z),f(-Z))]. The effectiveness depends on the monotonicity of f: for monotone payoffs, Cov(f(Z),f(-Z)) < 0 yielding guaranteed variance reduction. For European call options, the correlation between f(Z) and f(-Z) approaches -1 as the option becomes deep in-the-money, providing near-perfect variance elimination. However, the method fails for symmetric payoffs where f(Z) = f(-Z), and can actually increase variance for certain payoff structures exhibiting non-monotonic behavior.

*Source: eq3/monte-carlo-numerical-methods.txt*

---

## The hazard rate process emerges endogenously from the structural framework:

**Equation:**

$$
h(t) = f_τ(t) / P(τ > t)
$$

**Description:**
This time-varying hazard rate reflects the firm's deteriorating financial health as assets approach the default barrier, providing crucial insight into credit term structure dynamics.

*Source: eq3/credit_derivatives_structural_models.txt*

---

## 2. SABR Model

**Equation:**

$$
dF = \sigma F^\beta dW
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## G2++ Model Dynamics

**Equation:**

$$
r_t = x_t + y_t + phi(t)
$$

**Description:**
Two-factor Gaussian model capturing slope and curvature. x, y mean-reverting factors. Deterministic shift phi(t) fits initial curve. Correlation between factors.

*Source: eq3/minimax-primer/formulas.csv*

---

## Risk-Neutral Density (Breeden-Litzenberger)

**Equation:**

$$
f_S_T(K) = d^2C/dK^2
$$

**Description:**
Second derivative of call prices w.r.t. strike gives risk-neutral density. Breeden-Litzenberger formula provides state-price density directly from market prices. Useful for smile extraction.

*Source: eq3/minimax-primer/formulas.csv*

---

## Longstaff-Schwartz Algorithm

**Equation:**

$$
V_j = max( Exercise_j
$$

**Description:**
Numerical Methods

*Source: eq3/minimax-primer/formulas.csv*

---

## Calendar Roll Return

**Equation:**

$$
RY = ln F(T_2)/F(T_1)
$$

**Description:**
Return from rolling futures from near to far contract. Negative in contango (must buy high), positive in backwardation. Determinant of commodity index returns.

*Source: eq3/minimax-primer/formulas.csv*

---

## Stochastic Local Volatility

**Equation:**

$$
dS_t = sigma_loc(S_t
$$

**Description:**
dsigma_loc = nu(S_t

*Source: eq3/minimax-primer/formulas.csv*

---

## PCA Risk Factors

**Equation:**

$$
\Sigma = V \Lambda V^T
$$

**Description:**
Covariance matrix decomposition into orthogonal factors.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Stoll Spread

**Equation:**

$$
S = 2 \gamma \sigma^2 Q
$$

**Description:**
Bid-ask spread as inventory risk compensation.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
X_t = X_0 + M_t^Q + A_t^Q
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
M_t = M_0 + ∫₀^t H_s dW_s
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
dW_t^S dW_t^v = \rho dt
$$

*Source: eq3/heston-dynamics.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
d\sigma = \nu \sigma dZ
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## **Antithetic Variates:**

**Equation:**

$$
S' = 2\mathbb{E}[S] - S
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 2. Zero-Beta Portfolio (Factor Mimicking Portfolio)

**Equation:**

$$
\mathbb{E}[R_p] = r_f
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Coupon Bond Price (Decomposition)

**Equation:**

$$
P = sum_{i=1}^n c_i P(t
$$

**Description:**
T_n)

*Source: eq3/minimax-primer/formulas.csv*

---

## Variance Swap Fair Strike

**Equation:**

$$
sigma_fair^2 = (1/P(0
$$

**Description:**
T)) int_0^T E^Q[sigma_s^2] ds

*Source: eq3/minimax-primer/formulas.csv*

---

## Forward CDS

**Equation:**

$$
V_forward = V_CDS(T_f
$$

**Description:**
T_e)

*Source: eq3/minimax-primer/formulas.csv*

---

## Cancelable Swap (Callable Swap)

**Equation:**

$$
V = V_swap - V_swaption
$$

**Description:**
Swap with issuer's call option. Value = swap minus payer swaption. Bermudan features for multiple call dates. Callable at par or make-whole.

*Source: eq3/minimax-primer/formulas.csv*

---

## Control Variate (Analytical)

**Equation:**

$$
V = V_MC + beta (C - E[C])
$$

**Description:**
Control variable C with known analytical price. Beta estimated by regression across paths. Variance reduction factor (1 - rho^2). Effective for path-dependent options.

*Source: eq3/minimax-primer/formulas.csv*

---

## Brownian Motion Second Moment

**Equation:**

$$
\mathbb{E}[W_t^2] = t
$$

**Description:**
The quadratic variation property demonstrates that Brownian motion has infinite first variation but finite quadratic variation. This is essential for the development of stochastic integration theory.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Black's Model (Caplet)

**Equation:**

$$
Caplet = L \delta_k P(0
$$

**Description:**
Interest Rates

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
S = \sum_{i=1}^{N} X_i
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
dF = α F^β dW_1
dα = ν α dW_2
$$

*Source: eq3/volatility_modeling_primer.txt*

---

## Control Variates:

**Equation:**

$$
Y_i = X_i - c*(Z_i - E[Z])
$$

**Description:**
The optimally controlled estimator where X_i represents the original payoff, Z_i is the control variable with known expectation E[Z], and c* = Cov(X,Z)/Var(Z) is the optimal coefficient minimizing variance. The variance reduction achieved is Var(Y) = Var(X)(1-ρ²), where ρ is the correlation between X and Z. For option pricing, delta-hedging control variates use Z_i = Δ_i(S_{i+1} - S_i e^{rΔt}) with Δ_i being the Black-Scholes delta, achieving correlations above 0.9 for at-the-money options. The method extends to multiple controls via regression: Y = X - β'(Z - E[Z]) where β = Var(Z)^{-1}Cov(Z,X), requiring matrix inversion but providing exponential variance reduction in the number of effective controls.

*Source: eq3/monte-carlo-numerical-methods.txt*

---

## Under the risk-neutral measure Q, the asset dynamics transform to:

**Equation:**

$$
dV_t = μV_tdt + σV_tdW_t
$$

**Description:**
where r is the constant risk-free rate and W_t^Q is Brownian motion under the risk-neutral measure. This transformation is achieved via Girsanov's theorem with the market price of risk λ = (μ-r)/σ.

*Source: eq3/credit_derivatives_structural_models.txt*

---

## Compound Rate Relationship

**Equation:**

$$
(1+y)^(T-t) = 1/P(t,T)
$$

**Description:**
This connects annually compounded rates y to discount factors. For different compounding frequencies m times per year: (1+y/m)^(m(T-t)) = 1/P(t,T). As m approaches infinity, this converges to continuous compounding exp(y(T-t)) = 1/P(t,T). The choice of compounding frequency affects quoted rates but not present values when applied consistently.

*Source: eq3/fixed_income_primer.txt*

---

## MBS Cash Flow Scheduled Principal

**Equation:**

$$
SP_t = MP_t - Interest_t
$$

**Description:**
SP_t represents the scheduled principal payment at time t, calculated as the total mortgage payment MP_t minus the interest portion. For a level-payment mortgage with balance B_{t-1}, WAC_t, and remaining term N-t+1: MP_t = B_{t-1} × WAC_t/12 × (1 + WAC_t/12)^{N-t+1} / [(1 + WAC_t/12)^{N-t+1} - 1]. Interest_t = B_{t-1} × WAC_t/12. The scheduled amortization component is deterministic given the mortgage terms and declines over time as the balance decreases. This forms the baseline cash flow before accounting for prepayments.

*Source: eq3/fixed_income_primer.txt*

---

## Weighted Average Maturity

**Equation:**

$$
WAM = ∑[i=1 to M] w_i × T_i
$$

**Description:**
WAM represents the weighted average maturity of loans within an MBS pool, calculated as the weighted sum of individual loan maturities T_i with weights w_i proportional to their outstanding balances. WAM measures the time-weighted maturity of the underlying mortgage pool and is disclosed for all agency MBS. As loans prepay, the WAM declines because older loans are removed from the pool. This metric helps investors understand the pool's maturity characteristics and how they evolve through prepayment activity.

*Source: eq3/fixed_income_primer.txt*

---

## Weighted Average Coupon

**Equation:**

$$
WAC = ∑[i=1 to M] w_i × r_i
$$

**Description:**
WAC represents the weighted average coupon rate of loans within an MBS pool, calculated as the balance-weighted sum of individual mortgage rates r_i. WAC determines the gross interest income of the pool and is a primary determinant of the MBS yield. As loans prepay, the WAC evolves because loans with higher or lower coupons are removed differentially depending on rate environment. Investors earn the net coupon: WAC minus servicing spread minus guarantee fee for agency MBS.

*Source: eq3/fixed_income_primer.txt*

---

## Negative Convexity Condition

**Equation:**

$$
∂^2P/∂y^2 < 0 when WAC > r
$$

**Description:**
This condition states that MBS exhibits negative convexity when the weighted average coupon exceeds current market rates r. In this regime, the prepayment option is valuable and will be exercised by homeowners when refinancing incentive exists. The negative second derivative arises because price appreciation is capped by prepayment acceleration as rates fall, while price losses are uncapped as prepayments slow when rates rise. The magnitude of negative convexity depends on the prepayment speed sensitivity to rate changes and the option value embedded in the pool.

*Source: eq3/fixed_income_primer.txt*

---

## I-Spread (Interpolated Spread)

**Equation:**

$$
I = y_bond - y_benchmark
$$

**Description:**
Spread to specific benchmark curve. Point-in-time comparison. Used for relative value analysis. Not curve-dependent.

*Source: eq3/minimax-primer/formulas.csv*

---

## Credit Spread Duration

**Equation:**

$$
D_spread = - (1/P) dP/ds
$$

**Description:**
Sensitivity to credit spread changes. Used for credit risky bonds. Separate from interest rate sensitivity. Combines with OAS for total risk.

*Source: eq3/minimax-primer/formulas.csv*

---

## Unknown

**Equation:**

$$
dW_t \cdot dZ_t = \rho dt
$$

**Description:**
This represents the correlation between the Brownian motions driving the forward price and volatility in the SABR model.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Black-Scholes Delta (Call)

**Equation:**

$$
\Delta_{call} = N(d_1)
$$

**Description:**
Sensitivity of option price to underlying price changes.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## ZCIS Payoff

**Equation:**

$$
N [ (I_T/I_0) - (1 + K)^T ]
$$

**Description:**
Zero-coupon inflation swap payoff at maturity.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## NSFR

**Equation:**

$$
NSFR = ASF / RSF \ge 100\%
$$

**Description:**
Net stable funding ratio requirement.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Principal Protected Note

**Equation:**

$$
PPN_0 = P(0 T) + C(S_0 K T)
$$

**Description:**
Zero-coupon bond plus call option.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Single Monthly Mortality (SMM)

**Equation:**

$$
SMM = 1 - (1 - CPR)^{1/12}
$$

**Description:**
SMM_t represents the Single Monthly Mortality rate, which is the conditional probability that a given mortgage will be prepaid during month t. The relationship derives SMM from CPR by solving for the monthly rate that compounds to the annual CPR. SMM ranges from 0 to 1 and is typically expressed as a percentage. For practical MBS valuation, SMM is applied to the outstanding principal balance at the beginning of each month: Prepayment_t = SMM_t × Balance_{t-1} × (1 - SMM_t/2), where the factor (1 - SMM_t/2) represents the average balance during the month.

*Source: eq3/gemini-primer/gemini_primer.md; eq3/fixed_income_primer.txt*

---

## Equation

**Equation:**

$$
P \cdot \ddot{a}_x = A_x
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
where ρ_{ii} = 1 for all i.
$$

*Source: eq3/exotic-options-basket-rainbow.txt*

---

## Liquidity-Adjusted VaR

**Equation:**

$$
L_VaR = VaR + LC * Position
$$

**Description:**
VaR with liquidity cost adjustment. LC = bid-ask spread x position. Reflects market impact of liquidation. Dynamic liquidity adjustment.

*Source: eq3/minimax-primer/formulas.csv*

---

## Carbon Intensity (Scope 3)

**Equation:**

$$
CI = sum Activity_i * EF_i
$$

**Description:**
Life cycle emissions per unit output. Supply chain emissions. Used in carbon accounting and offsetting. Green premium calculation.

*Source: eq3/minimax-primer/formulas.csv*

---

## Infeasible NBRLS Estimator

**Equation:**

$$
hat beta = (X'X)^{-1} X'Y
$$

**Description:**
Non-parametric regression for SDF. Beta = covariance of payoffs with SDF divided by variance. Moment conditions from pricing equation. Basis for factor model estimation.

*Source: eq3/minimax-primer/formulas.csv*

---

## SDE Integral Form

**Equation:**

$$
X_t = X_0 + \int_0^t \mu(s
$$

**Description:**
X_s)dW_s

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Chooser Option

**Equation:**

$$
V_{chooser} = max(C(S_t
$$

**Description:**
T-t)

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Realized Volatility

**Equation:**

$$
RV_t = \sum_{i=1}^m r_{t
$$

**Description:**
Volatility Modeling

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Portfolio Variance

**Equation:**

$$
\sigma_P^2 = w^T \Sigma w
$$

**Description:**
Matrix form of portfolio risk aggregation.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Kyle's Lambda

**Equation:**

$$
\Delta P = \lambda \cdot Q
$$

**Description:**
Linear price impact measure.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Basel RWA

**Equation:**

$$
RWA = \sum w_i \cdot EAD_i
$$

**Description:**
Risk-weighted assets (standardized approach).

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Real Option to Delay

**Equation:**

$$
F(V) = A V^\beta for V < V^*
$$

**Description:**
McDonald-Siegel option to wait to invest.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
Corr(V_t, \lambda_t) > 0
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## For local martingales, the stochastic exponential (Doléans-Dade exponential) is defined as:

**Equation:**

$$
ε(X)_t = exp{X_t - ½[X]_t}
$$

**Description:**
This process satisfies the stochastic differential equation:

*Source: eq3/stochastic_calculus_primer.md*

---

## The volatility structure σ(t,T) is central to the HJM framework. For implementation, common specifications include:

**Equation:**

$$
σ(t,T) = σ_0 exp(-λ(T-t))
$$

**Description:**
This exponential volatility structure generates the Hull-White model, where σ_0 > 0 controls overall volatility level and λ > 0 determines the rate of decay with maturity. The parameter λ captures the empirical observation that short-term forward rates exhibit higher volatility than long-term rates.

*Source: eq3/hjm-framework.txt*

---

## Equation

**Equation:**

$$
N_{j,t} = N_j - Loss_{j,t}
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Conditional Prepayment Rate (CPR)

**Equation:**

$$
CPR_t = 1 - (1 - SMM_t)^{12}
$$

**Description:**
CPR_t represents the Conditional Prepayment Rate at time t, defined as the annualized prepayment rate. SMM_t is the Single Monthly Mortality rate for month t. The relationship converts monthly prepayment probability to an annual rate by compounding monthly survival rates. CPR measures the percentage of outstanding mortgage principal that will be prepaid during a given year assuming prepayment behavior remains constant. This is the standard industry convention for quoting prepayment speeds in MBS markets.

*Source: eq3/fixed_income_primer.txt*

---

## MBS Total Return

**Equation:**

$$
TR = ∑[t=1 to T] CF_t / P_0 - 1
$$

**Description:**
TR represents the total return of holding MBS from purchase to horizon T, where CF_t includes all interest, principal, and reinvestment income. P_0 is the initial purchase price. This ex-post measure captures realized performance including return from price changes if sold before maturity. Total return differs from yield because it incorporates actual prepayment experience versus model assumptions and realized reinvestment rates. For performance attribution, total return can be decomposed into income return, price return, and roll-down return components.

*Source: eq3/fixed_income_primer.txt*

---

## 4. Two-Factor Gaussian Model (G2++)

**Equation:**

$$
r_t = x_t + y_t + \varphi(t)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## 1. Forward Price with Storage and Convenience Yield

**Equation:**

$$
F_0(T) = S_0 e^{(r + u - y)T}
$$

**Description:**
**Variables:** - S_0: Spot commodity price - r: Risk-free interest rate (cost of financing) - u: Storage cost (annualized, proportional to value) - y: Convenience yield (benefit of physical ownership) - T: Time to delivery

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Martingale Representation Theorem

**Equation:**

$$
M_t = M_0 + int_0^t H_s dW_s
$$

**Description:**
Every martingale can be represented as stochastic integral with respect to Brownian motion. Unique integrand H_t. Foundation of hedging in complete markets.

*Source: eq3/minimax-primer/formulas.csv*

---

## FX Forward Points

**Equation:**

$$
Points = S_0 * (r_d - r_f) * T
$$

**Description:**
Forward premium/discount. Points = F - S. Quoted as pips. Basis from CIP deviation.

*Source: eq3/minimax-primer/formulas.csv*

---

## Strangle (Risk Reversal + Butterfly)

**Equation:**

$$
sigma_strangle = RR/2 + BF
$$

**Description:**
Out-of-the-money vol. Combination of skew and curvature. Used for delta-neutral vol quotes.

*Source: eq3/minimax-primer/formulas.csv*

---

## Vega

**Equation:**

$$
\nu = S\sqrt{T-t}N'(d_1)
$$

**Description:**
Vega measures sensitivity to changes in implied volatility. Identical for calls and puts with matching parameters. | Sensitivity to volatility (not a true Greek but market convention).

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv; eq3/gemini-primer/gemini_primer.csv*

---

## Basket Option

**Equation:**

$$
G_T = (\prod S_i^T)^{1/n}
$$

**Description:**
Geometric basket option (tractable).

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## The risk-neutral default probability under Merton's framework is:

**Equation:**

$$
PD^Q = Q(V_T < K) = N(-d_2^Q)
$$

**Description:**
where d_2^Q uses the risk-neutral drift r instead of μ. The physical default probability differs:

*Source: eq3/credit_derivatives_structural_models.txt*

---

## Equation

**Equation:**

$$
PD^P = P(V_T < K) = N(-d_2^P)
$$

*Source: eq3/credit_derivatives_structural_models.txt*

---

## Equation

**Equation:**

$$
X_i = √{ρ_i} Z + √{1-ρ_i} ε_i
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## **Continuous Compounding Approximation (Constant Rate Case):**

**Equation:**

$$
P(t,T) = e^{-y(t,T)(T-t)}
$$

**Description:**
**Variables:** - y(t,T): Continuously compounded yield to maturity (annualized) - T-t: Time to maturity in years | **Variables:** - \(y(t,T)\): Continuously compounded yield to maturity | See markdown for detailed variables and explanation | Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas.csv*

---

## Black-Cox First Passage

**Equation:**

$$
tau = inf{ t >= 0: V_t <= K(t) }
$$

**Description:**
Default can occur anytime before maturity when assets hit barrier K(t). Time-dependent barrier (often exponential decay). Captures early default dynamics.

*Source: eq3/minimax-primer/formulas.csv*

---

## Cost of Carry (Commodities)

**Equation:**

$$
F_0(T) = S_0 exp((r + u - y)T)
$$

**Description:**
Futures price = spot x cost of carry. r: financing, u: storage, y: convenience yield. Backwardation: F < S (high y). Contango: F > S (low y).

*Source: eq3/minimax-primer/formulas.csv*

---

## Negative Carry

**Equation:**

$$
Carry = r_asset - r_funding
$$

**Description:**
Cost of funding assets. Funding spread over benchmark. Negative carry increases required spread. Spread compression risk.

*Source: eq3/minimax-primer/formulas.csv*

---

## CMS Spread Option

**Equation:**

$$
CMS Spread = max(S_A - S_B - K
$$

**Description:**
Interest Rate Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Science-Based Target (SBT)

**Equation:**

$$
Reduction = 1 - (1 - gamma)^T
$$

**Description:**
Required emissions reduction. gamma from IPCC scenarios. T years to target. Absolute vs intensity-based targets.

*Source: eq3/minimax-primer/formulas.csv*

---

## Merton Model

**Equation:**

$$
A_T = V_T\quad D_T = min(V_T
$$

**Description:**
0)

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
J_t = \sum_{i=1}^{N_t} Y_i
$$

**Description:**
Where N_t is a Poisson process with intensity \lambda and Y_i are i.i.d. random variables representing jump sizes, typically assumed to follow a normal distribution.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Glosten-Milgrom

**Equation:**

$$
A - B = 2 \alpha (V_H - V_L) \pi
$$

**Description:**
Adverse selection spread due to information asymmetry.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## VWAP

**Equation:**

$$
VWAP = \sum P_i V_i / \sum V_i
$$

**Description:**
Volume weighted average price benchmark.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Modified Duration

**Equation:**

$$
D_{Mod} = D_{Mac} / (1 + y/m)
$$

**Description:**
Price sensitivity to yield changes.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## VPIN

**Equation:**

$$
VPIN = \sum |V_B - V_S| / (n V)
$$

**Description:**
Order flow toxicity measure.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Crypto Basis

**Equation:**

$$
y = (F - S)/S \cdot 365/(T-t)
$$

**Description:**
Annualized basis for cash-and-carry.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Grover Arbitrage

**Equation:**

$$
N_{queries} = O(\sqrt{N})
$$

**Description:**
Quadratic speedup for arbitrage search.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
y_t = \alpha + \beta x_t + u_t
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Price:**
P = \frac{y}{x}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
[X,Y]_t = ∫₀^t σ_s^X σ_s^Y ds
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
dW_t^F dW_t^\alpha = \rho dt
$$

*Source: eq3/equity-derivatives-stochastic-volatility-primer.txt; eq3/sabr-model.txt; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Continuous Compounding

**Equation:**

$$
r(t,T) = -ln(P(t,T))/(T-t)
$$

**Description:**
This defines the continuously compounded zero rate r(t,T) between times t and T. The negative logarithm of the bond price normalized by maturity gives the constant continuous rate that would produce the same discount factor. This rate is fundamental in continuous-time finance because it eliminates compounding frequency complications. The relationship is invertible: P(t,T) = exp(-r(t,T)(T-t)).

*Source: eq3/fixed_income_primer.txt*

---

## Merton Structural Model

**Equation:**

$$
V_T = D + E_T; Default if V_T < D
$$

**Description:**
Equity as call option on firm assets. Assets pay debt D at maturity; equity is residual. Default occurs at maturity if assets insufficient. Foundation of credit derivatives.

*Source: eq3/minimax-primer/formulas.csv*

---

## Quasi-Monte Carlo (Sobol)

**Equation:**

$$
X_i = Phi^{-1}(Sobol_i(k))
$$

**Description:**
Low-discrepancy sequences instead of random. Sobol sequence covers [0,1] more uniformly. Dimension reduction via Brownian bridge. Faster convergence O(1/N).

*Source: eq3/minimax-primer/formulas.csv*

---

## Girsanov Theorem

**Equation:**

$$
dW_t^Q = dW_t^P + lambda_t dt
$$

**Description:**
Change of measure via drift adjustment. lambda_t is market price of risk. Relates physical (P) and risk-neutral (Q) measures. Fundamental for risk-neutral pricing.

*Source: eq3/minimax-primer/formulas.csv*

---

## Composite Option (Options on Options)

**Equation:**

$$
V = C_option(C_underlying)
$$

**Description:**
Option on another option. Price depends on underlying option's vol of vol. Decomposes into integral of bivariate normal. Strike and maturity for both options.

*Source: eq3/minimax-primer/formulas.csv*

---

## Target Redemption Note (TARN)

**Equation:**

$$
V = sum_{i=1}^n max( min(C_i
$$

**Description:**
C_min )

*Source: eq3/minimax-primer/formulas.csv*

---

## Basis Swap

**Equation:**

$$
V_basis = sum delta_i (R_flt
$$

**Description:**
B) P(0

*Source: eq3/minimax-primer/formulas.csv*

---

## Rational Prepayment Model

**Equation:**

$$
R_t = (dV/dr) / (dV/dr_refi)
$$

**Description:**
Prepayment rate as ratio of yield incentive to refinance incentive. Burnout effect: fewer refiable mortgages remaining. Seasonality and burnout adjustment.

*Source: eq3/minimax-primer/formulas.csv*

---

## Impact Investing Return

**Equation:**

$$
IR = r_market + alpha_impact
$$

**Description:**
Return premium/penalty for impact. Evidence mixed on outperformance. Risk-adjusted returns similar to conventional. Non-financial utility from impact.

*Source: eq3/minimax-primer/formulas.csv*

---

## Forward Variance Model

**Equation:**

$$
d(sigma_t^2 * t) = omega_t dt
$$

**Description:**
Forward variance curve dynamics. Variance swap fair strike = initial forward variance. Volatility derivatives depend on forward variance structure. ARCH-like dynamics.

*Source: eq3/minimax-primer/formulas.csv*

---

## Swap Convexity

**Equation:**

$$
C_{swap} \approx C_{fixed}
$$

**Description:**
Similar to duration, the convexity of a swap is dominated by the fixed leg. This means swaps exhibit the same desirable convexity properties as bonds, making them effective hedging instruments for bond portfolios.

*Source: eq3/jules-primer/primer.csv*

---

## Lookback Call (Floating Strike)

**Equation:**

$$
S_T - min_{0\leq t\leq T} S_t
$$

**Description:**
Payoff is terminal price minus minimum price achieved guaranteeing buying at the lowest price.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Cliquet Payoff

**Equation:**

$$
\prod_{k=1}^n max(min(R_k
$$

**Description:**
F) - 1

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
dW^1_t \cdot dW^2_t = \rho dt
$$

**Description:**
This represents the correlation between the two Brownian motions in the Schwartz-Smith model.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## CDS Par Spread

**Equation:**

$$
s = \frac{(1-R) \int_0^T P(0
$$

**Description:**
t) e^{-\int_0^t \lambda(u)du} dt}

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Credit-Linked Note

**Equation:**

$$
CLN_0 = P(0 T) - CDS_{seller}
$$

**Description:**
Bond with embedded credit default swap.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
d_2 = d_1 - \sigma \sqrt{T-t}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## A stochastic process M_t on a filtered probability space (Ω, F, {F_t}, P) is a martingale if:

**Equation:**

$$
E[M_t | F_s] = M_s for all 0 ≤ s ≤ t
$$

**Description:**
This fundamental equality represents the fair game property where the conditional expectation of future values equals the current value. The process must be adapted to the filtration {F_t} and integrable (E[|M_t|] < ∞ for all t).

*Source: eq3/stochastic_calculus_primer.md*

---

## Fractional kernel specification:

**Equation:**

$$
K^H(t) = t^{H-1/2}/Γ(H+1/2)
$$

**Description:**
The fractional kernel K^H(t) with Hurst parameter H ∈ (0,1/2) generalizes the classical exponential kernel of standard Heston. The Gamma function Γ(H+1/2) ensures proper normalization. This power-law decay captures the empirical roughness of volatility observed in high-frequency financial data, where H ≈ 0.1 typically fits market data. The singularity at t = 0 creates the rough behavior, fundamentally changing the model's analytical properties compared to smooth stochastic volatility models.

*Source: eq3/rough-heston-primer.md*

---

## Simple Rate Conversion

**Equation:**

$$
L(t,T) = (1/P(t,T) - 1)/(T-t)
$$

**Description:**
L(t,T) represents the simple (act/360 or act/365) rate between times t and T, commonly used in money markets and LIBOR settings. This linear compounding convention calculates interest as principal times rate times day count fraction. The relationship shows how simple rates relate to discount factors: higher simple rates correspond to lower discount factors. Simple rates are additive over periods but do not account for compounding within periods.

*Source: eq3/fixed_income_primer.txt*

---

## MBS Cash Flow Prepayment

**Equation:**

$$
PP_t = (B_{t-1} - SP_t) × SMM_t
$$

**Description:**
PP_t represents the unscheduled prepayment of principal at time t, calculated as the balance remaining after scheduled payment times the SMM rate. The term (B_{t-1} - SP_t) is the balance at the beginning of period t after accounting for scheduled principal payment. This calculation assumes prepayments occur mid-month on average, though some models use end-of-month timing. The prepayment component represents the optionality embedded in mortgages, as homeowners can prepay when it's economically advantageous, particularly when rates have fallen.

*Source: eq3/fixed_income_primer.txt*

---

## Value at Risk (Parametric)

**Equation:**

$$
VaR_alpha = mu - z_alpha sigma
$$

**Description:**
z_alpha: alpha-quantile of standard normal (e.g., z_0.95 = 1.645). Assets normally distributed. Underestimates tail risk for fat-tailed distributions. Simple for linear portfolios.

*Source: eq3/minimax-primer/formulas.csv*

---

## Margrabe Exchange Option

**Equation:**

$$
C = S_1 Phi(d_1) - S_2 Phi(d_2)
$$

**Description:**
2 = [ln(S_1/S_2) +/- sigma^2 T/2]/(sigma sqrt(T))

*Source: eq3/minimax-primer/formulas.csv*

---

## Real Yield

**Equation:**

$$
y_real = (1 + y_nom)/(1 + pi) - 1
$$

**Description:**
Yield after inflation adjustment. Important for TIPS analysis. Break-even inflation comparison. Real rate expectations.

*Source: eq3/minimax-primer/formulas.csv*

---

## Cheyette Model

**Equation:**

$$
dx_t = kappa x_t dt + sigma dW_t
$$

**Description:**
Term Structure | Mean-reverting Gaussian process. Stationary distribution: x_infty ~ N(0, sigma^2/(2kappa)). Mean reversion speed kappa controls return to mean theta. Used for spread and mean-reversion modeling.

*Source: eq3/minimax-primer/formulas.csv*

---

## Unknown

**Equation:**

$$
d\sigma_t = \nu \sigma_t dZ_t
$$

**Description:**
This SDE describes the evolution of the volatility process \sigma_t in the SABR model, where it follows a geometric Brownian motion.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Z-Spread

**Equation:**

$$
P = \sum C_i / (1 + z_i + Z)^{t_i}
$$

**Description:**
Constant spread over spot curve.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Reverse Convertible

**Equation:**

$$
RC_0 = P(0 T) - P_{put}(S_0 K T)
$$

**Description:**
Bond with embedded short put.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Realized Variance

**Equation:**

$$
RV_t = \sum_{i=1}^n r_{t i}^2
$$

**Description:**
Model-free variance from intraday data.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Lévy-Khintchine

**Equation:**

$$
E[e^{iuX_t}] = e^{t\psi(u)}
$$

**Description:**
Characteristic function formula.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
**Subject to:**
\sum_i q_i = Q
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
Î_LHS = (1/n) Σ_{i=1}^n f(X_i)
$$

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## Effective Duration

**Equation:**

$$
D_eff = -(P_+ - P_-) / (2P_0 × Δy)
$$

**Description:**
D_eff represents the effective duration of MBS, calculated using the price response to parallel yield curve shifts. P_+ is the price after a small upward yield shift Δy, P_- is the price after an equivalent downward shift, and P_0 is the original price. Unlike Macaulay or modified duration, effective duration accounts for the optionality of prepayments by revaluing along shifted rate paths. The Δ in denominator is 2Δy because it's an average of up and down moves. Effective duration is negative for MBS when prepayment speeds increase significantly on rate declines.

*Source: eq3/fixed_income_primer.txt*

---

## **Risk-Neutral Default Probability:**

**Equation:**

$$
PD^{\mathbb{Q}} = \Phi(-d_2)
$$

**Description:**
**Theoretical Context:** Under the risk-neutral measure, the probability of default is Φ(-d_2), which depends on asset value, debt level, volatility, and time to maturity. This probability is used to price risky bonds and credit derivatives. The implied credit spread can be backed out by equating the model bond price to market prices. | 2. Black-Cox First Passage Time Model

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Local Risk Minimization

**Equation:**

$$
V_t = V_0 + int_0^t H_s dS_s + L_t
$$

**Description:**
Adjusted predictor process L_t. Minimizes E[(V_T - V_T^*)^2]. Risk decomposition: intrinsic + hedging. Used when perfect replication impossible.

*Source: eq3/minimax-primer/formulas.csv*

---

## Constant Maturity Swap (CMS)

**Equation:**

$$
V_CMS = E^Q[ int_t^T max(S_u - K
$$

**Description:**
Interest Rate Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Natural Gas Storage (Working's Model)

**Equation:**

$$
V = E[ max( S_T - S_0 exp((r+u)T)
$$

**Description:**
0) ) ]

*Source: eq3/minimax-primer/formulas.csv*

---

## Transmission Option

**Equation:**

$$
V = E[ max( S_T^A - S_T^B - Tariff
$$

**Description:**
Commodity Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Kelly Criterion

**Equation:**

$$
f^* = \frac{\mu - r}{\sigma^2}
$$

**Description:**
The formula for the optimal bet size to maximize the long-term growth rate of wealth (log-utility). Betting more than f^* increases volatility such that the geometric growth rate actually declines (volatility drag). It is widely used in gambling and aggressive trading strategies. | Optimal betting size for maximizing logarithmic wealth growth.

*Source: eq3/jules-primer/primer.csv; eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Lookback Call (Fixed Strike)

**Equation:**

$$
max\left(max_{0\leq t\leq T} S_t - K
$$

**Description:**
Exotic Options

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Compound Call-on-Call

**Equation:**

$$
c_{on_c} = S_0 e^{-qT_2}M(a_1
$$

**Description:**
b_2;\sqrt{T_1/T_2}) - K_1 e^{-rT_1}N(a_2)

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Implied Volatility

**Equation:**

$$
\sigma_{BS} = f^{-1}(C_{mkt}
$$

**Description:**
K

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
dF_t = \sigma_t F_t^\beta dW_t
$$

**Description:**
This SDE describes the evolution of the forward price F_t in the SABR model, where the volatility \sigma_t is stochastic and depends on the forward price level.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Unknown

**Equation:**

$$
dr_t = a(b - r_t) dt + \sigma dW_t
$$

**Description:**
This SDE describes the evolution of the short-term interest rate r_t in the Vasicek model, which is a mean-reverting process.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Roll Spread

**Equation:**

$$
S = 2\sqrt{-Cov(r_t r_{t-1})}
$$

**Description:**
Implied spread from return autocorrelation.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## XGBoost Default

**Equation:**

$$
\hat{y} = \sum_{m=1}^M f_m(x)
$$

**Description:**
Gradient boosted trees for credit scoring.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Infinite Activity

**Equation:**

$$
\int_{|x|<1} \nu(dx) = \infty
$$

**Description:**
Condition for infinite jumps in any interval.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\min_\theta \|y - \hat{y}\|^2
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
V^* = \frac{\beta}{\beta - 1} I
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
λ(t) = λ_0(t)exp(β'X_t + γ'Z_t)
$$

*Source: eq3/credit_derivatives_intensity_models.txt*

---

## Equation

**Equation:**

$$
d(lnσ_k(t))/d(lnF_k(t)) = β_k
$$

*Source: eq3/lmm_content.txt*

---

## MBS Price Approximation with Duration and Convexity

**Equation:**

$$
ΔP/P ≈ -D_eff × Δy + 0.5 × C × (Δy)^2
$$

**Description:**
This equation approximates the percentage price change of MBS using Taylor expansion around the current yield. The first-order term -D_eff × Δy captures the linear price sensitivity (duration effect), while the second-order term 0.5 × C × (Δy)^2 captures the curvature (convexity effect). For MBS with negative convexity, the convexity term subtracts from price changes, amplifying losses when yields move significantly in either direction. This approximation works well for small yield movements but becomes inaccurate for large shifts or when prepayment behavior changes dramatically.

*Source: eq3/fixed_income_primer.txt*

---

## **Vasicek Bond Price (Affine Term Structure):**

**Equation:**

$$
P(t,T) = A(t,T) e^{-B(t,T) r_t}
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/gemini-primer/gemini_primer.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
dW_S^{(1)} dW_v^{(2)} = \rho dt
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Covered Interest Rate Parity

**Equation:**

$$
F_0 = S_0 * [(1 + r_d T)/(1 + r_f T)]
$$

**Description:**
No-arbitrage relationship between FX forward and spot. S_0: spot (domestic per foreign), F_0: forward. Deviation implies arbitrage: swap points, carry trade.

*Source: eq3/minimax-primer/formulas.csv*

---

## Asian Option (Moment Matching)

**Equation:**

$$
E[A_T] = (1/T) int_0^T E[S_t] dt
$$

**Description:**
S_s) dt ds

*Source: eq3/minimax-primer/formulas.csv*

---

## Net Zero Portfolio

**Equation:**

$$
NP = sum_{i=1}^n w_i Emission_i
$$

**Description:**
Portfolio carbon footprint. Weighted average emissions intensity. Carbon beta to market. Alignment with Paris Agreement goals.

*Source: eq3/minimax-primer/formulas.csv*

---

## FX Vanna

**Equation:**

$$
dDelta/dsigma = -d_1 d_2 / sigma
$$

**Description:**
Delta change with vol. Cross-greek. Important for smile trading. Can be positive or negative.

*Source: eq3/minimax-primer/formulas.csv*

---

## Transition Risk (Climate)

**Equation:**

$$
V_trans = V_base - Adjustment(T
$$

**Description:**
ESG Metrics

*Source: eq3/minimax-primer/formulas.csv*

---

## Unscented Kalman Filter

**Equation:**

$$
mathcal X_t = sigma(hat x_{t-1}
$$

**Description:**
Econometrics

*Source: eq3/minimax-primer/formulas.csv*

---

## Cap Valuation

**Equation:**

$$
Cap(t) = \sum_{i=1}^n Caplet(t
$$

**Description:**
T_i

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Basket Call Payoff

**Equation:**

$$
max\left(\sum_{i=1}^n w_i S_i(T) - K
$$

**Description:**
Exotic Options

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Geometric Brownian Motion

**Equation:**

$$
dS_t = \mu S_t dt + \sigma S_t dW_t
$$

**Description:**
Fundamental SDE for asset prices assuming log-normal returns.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Ho-Lee Model

**Equation:**

$$
dr_t = \theta(t) dt + \sigma dW_t
$$

**Description:**
No-arbitrage model allowing exact fit to initial yield curve.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## LSTM Volatility

**Equation:**

$$
h_t = LSTM(h_{t-1} x_t; \theta)
$$

**Description:**
Recurrent architecture for volatility forecasting.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## PSA Prepayment

**Equation:**

$$
CPR(t) = \min(t/30 1) \times 6\%
$$

**Description:**
Standard prepayment benchmark for MBS.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Variance Gamma

**Equation:**

$$
X_t = \theta G_t + \sigma W_{G_t}
$$

**Description:**
Pure jump Lévy process for returns.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Solvency II SCR

**Equation:**

$$
SCR = VaR_{99.5\%}(\Delta BOF)
$$

**Description:**
Regulatory capital requirement.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Differential Evolution

**Equation:**

$$
x_{new} = x_{base} + F(x_1 - x_2)
$$

**Description:**
Global optimization algorithm.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Quoted in BTC:**
C_{BTC} = C / S
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## SABR MODEL

**Equation:**

$$
dF_t = \alpha_t F_t^\beta dW_t^F
$$

**Description:**
The SABR (Stochastic Alpha, Beta, Rho) model describes forward price dynamics where \alpha_t represents the stochastic volatility parameter. The exponent \beta controls the backbone of the volatility smile - \beta = 1 gives lognormal dynamics, \beta = 0 gives normal dynamics, and intermediate values produce a CEV-type structure. This parameterization captures the empirical observation that implied volatility varies with the level of forward rates. | When volatility of volatility \nu = 0, SABR reduces to Constant Elasticity of Variance (CEV) model. The instantaneous variance is \sigma^2(F_t) = \alpha^2 F_t^{2\beta}, making volatility power-dependent on underlying level. This local volatility model generates skew without smile curvature. For \beta < 1, variance decreases as price falls, preventing extreme negative movements and creating skew consistent with leverage effect. The CEV model lacks the time-dependent smile dynamics provided by stochastic volatility. | Standard industry model for volatility smiles in rates/FX. | To accommodate negative rates observed in Eurodollar and SOFR markets post-2008, shifted SABR introduces shift parameter s > 0 ensuring F_t + s > 0. The implied volatility formula generalizes by replacing F_t with F_t + s throughout. This shift preserves lognormal dynamics for shifted forward, maintaining analytical tractability. Calibration involves solving for \alpha, \beta, \nu, \rho, s simultaneously, though s is often set to absolute value of lowest observed rate to ensure positivity. Shifted SABR with \beta = 0 is equivalent to displaced diffusion model with stochastic volatility extension.

*Source: eq3/equity-derivatives-stochastic-volatility-primer.txt; eq3/sabr-model.txt; eq3/gemini-primer/gemini_primer.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
V_B = argmax_{V_B} [E(V_0; V_B)]
$$

*Source: eq3/credit_derivatives_structural_models.txt*

---

## Equation

**Equation:**

$$
p = \frac{e^{r\Delta t} - d}{u - d}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## **Control Variates:**

**Equation:**

$$
V^* = V + \beta \left( X - \mathbb{E}[X] \right)
$$

**Description:**
**Importance Sampling:**

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Markowitz Mean-Variance

**Equation:**

$$
min_w w^T Sigma w s.t. w^T mu = mu_p
$$

**Description:**
Portfolio Theory

*Source: eq3/minimax-primer/formulas.csv*

---

## Forward Start Option

**Equation:**

$$
C = E^Q[ exp(-rT) max(S_T / S_t* - K
$$

**Description:**
Exotic Options

*Source: eq3/minimax-primer/formulas.csv*

---

## CGMY Model

**Equation:**

$$
dS_t = (r - omega) dt + Y_t dW_t + J_t
$$

**Description:**
Finite activity, infinite variation jumps. Parameters: C (activity), G (negative jumps), M (positive jumps), Y (jump intensity decay). Generalizes Kou model. Closed-form characteristic function.

*Source: eq3/minimax-primer/formulas.csv*

---

## Hamilton-Jacobi-Bellman (HJB)

**Equation:**

$$
0 = max_u ( -L^u V + lambda (V - V^u) )
$$

**Description:**
Dynamic programming equation for stochastic control. V: value function. L: generator of controlled diffusion. Optimal control u*. Used in optimal trading.

*Source: eq3/minimax-primer/formulas.csv*

---

## Stochastic Volatility LMM

**Equation:**

$$
dS_j = mu_j dt + sqrt(v_t) S_j dW_j
$$

**Description:**
Andersen-Andreasen model. Stochastic vol integrated into LMM drift. Captures term structure of swaption vol. More realistic for long-dated products.

*Source: eq3/minimax-primer/formulas.csv*

---

## ESG Score Weighting

**Equation:**

$$
Score = sum_{i=1}^n w_i Factor_i
$$

**Description:**
Environmental, Social, Governance factors weighted. ESG ratings from MSCI, Sustainalytics. Integration into portfolio construction. Factor tilts.

*Source: eq3/minimax-primer/formulas.csv*

---

## Call Rho

**Equation:**

$$
\rho = K(T-t)e^{-r(T-t)}N(d_2)
$$

**Description:**
Rho measures sensitivity to changes in the risk-free interest rate. Calls have positive rho. | Put rho is negative reflecting that put values decrease as rates increase.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Gaussian Copula (Li)

**Equation:**

$$
p_{12} = \Phi_2(\Phi^{-1}(p_1)
$$

**Description:**
\rho)

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## YYIIS Payoff

**Equation:**

$$
N [ I_{T_i}/I_{T_{i-1}} - (1 + K) ]
$$

**Description:**
Year-on-year inflation swap periodic payment.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Rainbow Option

**Equation:**

$$
Payoff = \max(S_1^T ... S_n^T) - K
$$

**Description:**
Best-of option on multiple assets.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## NPV

**Equation:**

$$
NPV = \sum_{t=0}^T CF_t / (1+r)^t
$$

**Description:**
Fundamental project valuation discounting future cash flows.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## IRR

**Equation:**

$$
\sum_{t=0}^T CF_t / (1+IRR)^t = 0
$$

**Description:**
Discount rate making NPV zero.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Model Risk

**Equation:**

$$
Model Risk = V^{true} - V^{model}
$$

**Description:**
Potential loss from model inadequacy.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
NSFR = \frac{ASF}{RSF} \ge 100\%
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
dX_t = (μ_t - σ_t λ_t) dt + σ_t dW_t^Q
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
Var(∫_0^T V_t dt) ~ T^{2H+1} as T → 0
$$

*Source: eq3/rough_volatility_primer.txt*

---

## where X_i^k are samples from the conditional distribution within stratum k. The optimal allocation that minimizes variance follows Neyman allocation:

**Equation:**

$$
n_k* = n · p_k σ_k / Σ_{j=1}^K p_j σ_j
$$

**Description:**
with σ_k² = Var(f(X)|X ∈ Ω_k). For path-dependent options, adaptive stratification based on the Brownian bridge construction yields dimension-independent convergence rates. The variance reduction achieved is:

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## Credit default swaps pricing under structural models follows from the expected discounted loss:

**Equation:**

$$
CDS = (1-R) ∫_0^T e^{-rt} f_τ(t) dt
$$

**Description:**
R represents the recovery rate, typically modeled as exogenous but more sophisticated frameworks incorporate endogenous recovery tied to asset value at default.

*Source: eq3/credit_derivatives_structural_models.txt*

---

## Lognormal Forward Rate Dynamics:

**Equation:**

$$
dF_k(t) = F_k(t) * σ_k(t) * dW_k(t)
$$

**Description:**
This is the fundamental SDE for the forward rate F_k(t) under its natural measure, where F_k(t) represents the forward LIBOR rate for the period [T_k, T_{k+1}]. The volatility function σ_k(t) is deterministic and typically piecewise constant across tenor dates. The Brownian motion W_k(t) is measure-specific - under the terminal measure Q^{T_N}, this becomes the key building block for the entire model structure.

*Source: eq3/lmm_content.txt*

---

## Default occurs when the latent variable falls below a threshold determined by the hazard rate h_i and time horizon t:

**Equation:**

$$
τ_i ≤ t ⇔ X_i ≤ Φ^{-1}(1 - e^{-h_i t})
$$

**Description:**
This threshold derives from the identity P(τ_i ≤ t) = 1 - e^{-h_i t} for exponential default times. The joint probability that a set of obligors default by time t is:

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## The conditional portfolio loss distribution under LHP approximation is:

**Equation:**

$$
P(L_t ≤ x | Z = z) = 1_{\{L(z,t) ≤ x\}}
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Discount Factor Curve Construction

**Equation:**

$$
P(t,T) = exp(-∑[i=1 to n] f_iΔt_i)
$$

**Description:**
This discrete representation constructs discount factors from piecewise constant forward rates. The sum accumulates forward rates over subintervals, where f_i applies to the i-th interval of length Δt_i. This bootstrap approach is fundamental to yield curve construction from market instruments. The relationship enables calibration to observed prices by solving for forward rates that reproduce market quotes.

*Source: eq3/fixed_income_primer.txt*

---

## Convexity

**Equation:**

$$
C = (P_+ + P_- - 2P_0) / (P_0 × (Δy)^2)
$$

**Description:**
C represents the convexity of MBS, measuring the curvature of the price-yield relationship. For positively convex bonds, C > 0, meaning prices rise more when rates fall than they decline when rates rise by the same amount. For MBS, convexity is typically negative (C < 0), particularly when prepayment options are in-the-money. Negative convexity occurs because accelerated prepayments on rate declines cap price appreciation, while slowed prepayments on rate increases amplify price declines. The (Δy)^2 denominator scales the curvature measure.

*Source: eq3/fixed_income_primer.txt*

---

## Equation

**Equation:**

$$
\text{Default occurs when } V_T < D
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Floating Rate Note Reset Pricing

**Equation:**

$$
P(t) = sum_{i=1}^n E^Q[L(T_{i-1}
$$

**Description:**
Fixed Income

*Source: eq3/minimax-primer/formulas.csv*

---

## Modified Duration

**Equation:**

$$
D_Mod = - (1/P) dP/dy = D_Mac/(1+y)
$$

**Description:**
Percentage price change for 1% (100bp) yield change. First derivative of price w.r.t. yield, normalized by price. Key risk measure for bonds.

*Source: eq3/minimax-primer/formulas.csv*

---

## Z-Spread (Zero-Volatility Spread)

**Equation:**

$$
P = sum_{i=1}^n CF_i/(1 + y_i + z)^T
$$

**Description:**
Constant spread added to all Treasury yields. Prices bond to market. Ignores optionality. Basis for OAS calculation.

*Source: eq3/minimax-primer/formulas.csv*

---

## FX Risk Reversal

**Equation:**

$$
RR = sigma_25d Call - sigma_25d Put
$$

**Description:**
Skew indicator: difference between 25-delta call and put vols. Positive RR = calls more expensive (market bullish or put skew). Standard market quote.

*Source: eq3/minimax-primer/formulas.csv*

---

## Wind Power Forecast

**Equation:**

$$
dW_t = Seasonal + AR(p) + epsilon_t
$$

**Description:**
Wind power modeled with ARIMA. Forecast error distribution. Physical constraints: capacity factor. Revenue at risk from forecast error.

*Source: eq3/minimax-primer/formulas.csv*

---

## Stratified Sampling

**Equation:**

$$
W^{(i)} = Phi^{-1}( (i-1 + U_i)/N )
$$

**Description:**
Divide [0,1] into N strata, sample one per stratum. Reduces variance compared to crude MC. Optimal allocation proportional to variance per stratum.

*Source: eq3/minimax-primer/formulas.csv*

---

## Jump Detection Test

**Equation:**

$$
hat J_n / hat sigma_n > z_{1-alpha}
$$

**Description:**
Test for presence of jumps. J_n = BiPower - QuadPower. Test statistic converges to normal. Reject null of no jumps if statistic exceeds critical value.

*Source: eq3/minimax-primer/formulas.csv*

---

## Fisher Equation

**Equation:**

$$
1 + r_{nom} = (1 + r_{real})(1 + \pi)
$$

**Description:**
Fundamental link between nominal real and inflation rates.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Sticky Strike

**Equation:**

$$
\sigma(K t) = \sigma_{market}(K)
$$

**Description:**
Implied vol constant for given strike.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Worst-of Autocallable

**Equation:**

$$
S_{worst} = \min_i (S_i^T / S_i^0)
$$

**Description:**
Multi-asset autocallable on worst performer.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
D_{Mod} = \frac{D_{Mac}}{1 + y/m}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## The quadratic covariation between two semimartingales X and Y is:

**Equation:**

$$
[X,Y]_t = ½([X+Y]_t - [X]_t - [Y]_t)
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
\Delta = \Phi(d_1) - 1 \text{ (put)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Binomial Tree Price (Complete)

**Equation:**

$$
V_0 = exp(-r T) sum_{j=0}^n binom(n
$$

**Description:**
0)

*Source: eq3/minimax-primer/formulas.csv*

---

## Breakeven Inflation

**Equation:**

$$
BEI = (P_nominal/P_real)^(1/T) - 1
$$

**Description:**
Market expectation of inflation. TIPS spread to nominal. Inflation risk premium. Forward BEI from term structure.

*Source: eq3/minimax-primer/formulas.csv*

---

## Swing Option

**Equation:**

$$
V = max_swing E[ sum_t Payoff(Q_t) ]
$$

**Description:**
Option to vary daily/weekly quantity within bounds. Multiple exercise opportunities. Min/max quantity constraints. Value = call option on underlying + flexibility premium.

*Source: eq3/minimax-primer/formulas.csv*

---

## Par CDS Spread

**Equation:**

$$
s_{par} = \frac{(1-R) \int_0^T P(0
$$

**Description:**
T_i) Q(\tau > T_i)}

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Lookback Call Payoff

**Equation:**

$$
Payoff = S_T - \min_{0 \le t \le T} S_t
$$

**Description:**
Path dependent option paying difference between final and minimum price.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Convenience Yield

**Equation:**

$$
F(t T) = S_t e^{(r - \delta + c)(T-t)}
$$

**Description:**
Futures pricing incorporating storage cost and convenience yield.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Convexity

**Equation:**

$$
C = (1/P) \partial^2 P / \partial y^2
$$

**Description:**
Second-order price sensitivity (curvature).

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## WACC

**Equation:**

$$
WACC = (E/V) r_e + (D/V) r_d (1-\tau)
$$

**Description:**
Weighted average cost of capital for firm valuation.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Hamada Equation

**Equation:**

$$
\beta_E = \beta_A [1 + (1-\tau) D/E]
$$

**Description:**
Levered beta from unlevered beta.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## CGMY Process

**Equation:**

$$
\nu(dx) = C e^{-G|x|}/|x|^{1+Y} dx
$$

**Description:**
Generalized variance gamma with fine structure.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Momentum (UMD)

**Equation:**

$$
UMD_t = R_{winners t} - R_{losers t}
$$

**Description:**
Up-minus-down factor.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Short-Term Reversal

**Equation:**

$$
r_{t+1} \sim -\gamma r_t + \epsilon
$$

**Description:**
Weekly negative autocorrelation.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Asian Option Geometric Mean

**Equation:**

$$
G_T = \left(\prod_{i=1}^n S_i^T\right)^{1/n}
$$

**Description:**
Geometric average of prices used in Asian options (lognormal tractability).

*Source: eq3/gemini-primer/gemini_primer.md; eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
C_market = S N(d_1) - K e^{-rT} N(d_2)
$$

*Source: eq3/volatility_modeling_primer.txt*

---

## Equation

**Equation:**

$$
E[(∫₀^t H_s dW_s)²] = E[∫₀^t H_s² ds]
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
dX_i(t) = -λ_i X_i(t)dt + σ_i dW_i(t)
$$

*Source: eq3/hjm-framework.txt*

---

## HESTON MODEL DYNAMICS

**Equation:**

$$
dS_t = rS_tdt + \sqrt{v_t}S_tdW_t^S
$$

**Description:**
This equation describes the stock price dynamics under the Heston model. S_t represents the stock price at time t, r is the risk-free rate, and v_t is the stochastic variance process. The Brownian motion dW_t^S drives the stock price with volatility \sqrt{v_t}. The key innovation is that volatility itself follows a stochastic process rather than being constant as in Black-Scholes. | This stochastic differential equation (SDE) describes the evolution of the spot price S_t in the Heston model, where the volatility is itself a stochastic process. The spot price follows a geometric Brownian motion with stochastic volatility. | Models asset price with stochastic variance v_t.

*Source: eq3/heston-dynamics.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt; eq3/iflow-model-primer/derivatives-primer.csv; eq3/gemini-primer/gemini_primer.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## **Par Value at Reset:**

**Equation:**

$$
P(t) = 1 \quad \text{if } t = T_{i-1}^+
$$

**Description:**
**Theoretical Context:** Immediately following a coupon reset, the floating rate note trades at par value. This is because the reset sets the next coupon equal to the prevailing forward rate, which ensures the bond's value equals its principal. This par-trading property simplifies mark-to-market for FRNs.

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
dy = \lambda(\theta - y) dt + \eta dW_y
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 3. Factor Risk Premium (Lambda) Definition

**Equation:**

$$
\lambda_j = \mathbb{E}[F_j^*] - r_f
$$

**Description:**
where F_j^* is the return on a portfolio with unit exposure to factor j and zero exposure to all other factors.

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## SABR-LMM (Multi-Factor)

**Equation:**

$$
dF_j = mu_j dt + sigma_j F_j^beta dW_j
$$

**Description:**
Vector SABR for multiple forwards. Correlation matrix for dW_j. Captures joint dynamics of forward curve. Used for multi-asset interest rate derivatives.

*Source: eq3/minimax-primer/formulas.csv*

---

## Convexity Adjustment (Futures)

**Equation:**

$$
F_fut = F_fwd - 1/2 Cov( int_t^T r_s ds
$$

**Description:**
Interest Rate Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Silver Lease Rate

**Equation:**

$$
SilverLeaseRate = r_risk-free + u - y
$$

**Description:**
Silver has industrial demand (negative convenience yield). Lease rate reflects storage costs and demand. Basis for silver forward pricing.

*Source: eq3/minimax-primer/formulas.csv*

---

## Girsanov Theorem

**Equation:**

$$
W_t^Q = W_t^P + \int_0^t \lambda_s ds
$$

**Description:**
If W_t^P is Brownian motion under P then this expression is Brownian motion under the new measure Q defined by dQ/dP|_{\mathcal{F}_t} = Z_t. The drift adjustment compensates for the change in probability measure.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Implementation Shortfall

**Equation:**

$$
IS = (P_{decision} - P_{avg}) \cdot Q
$$

**Description:**
Execution quality benchmark.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Bergomi Variance Curve

**Equation:**

$$
d\xi_t^T = \xi_t^T \omega(T-t) dW_t
$$

**Description:**
Forward variance consistent with VIX options.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Stationarity:**
\alpha + \beta < 1
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
E[|W_{t+Δ}^H - W_t^H|^q] = C_q Δ^{qH}
$$

*Source: eq3/rough_volatility_primer.txt*

---

## Equation

**Equation:**

$$
𝔼[(Î_n^IS - 𝔼[f(X)])²] = O(n^{-2+ε})
$$

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## Equation

**Equation:**

$$
d\alpha_t = \nu\alpha_t dW_t^\alpha
$$

*Source: eq3/equity-derivatives-stochastic-volatility-primer.txt; eq3/sabr-model.txt; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## The equity value E_t is modeled as a European call option on the assets:

**Equation:**

$$
E_t = V_tN(d_1) - Ke^{-r(T-t)}N(d_2)
$$

**Description:**
where N(·) is the standard normal cumulative distribution function, and: | Models equity as call option on firm assets V with strike debt D.

*Source: eq3/credit_derivatives_structural_models.txt; eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## MBS Hedging with Key Rate Durations

**Equation:**

$$
ΔV = ∑[i=1 to K] w_i × D_{i}^{MBS} × Δr_i
$$

**Description:**
ΔV represents the change in MBS value from yield curve movements, decomposed using key rate durations D_{i}^{MBS} at tenor i with weight w_i representing exposure. This decomposition enables precise hedging by taking offsetting positions in Treasury futures or swaps at each key tenor. For example, to hedge an MBS position, sell Treasury futures with durations matching the key rate duration profile. The hedge accounts for non-parallel curve movements better than a single duration hedge. Residual exposure after hedging reflects basis risk between MBS and hedging instruments.

*Source: eq3/fixed_income_primer.txt*

---

## Equation

**Equation:**

$$
\gamma = \sqrt{\kappa^2 + 2\sigma^2}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
d = \frac{F_t - K}{\sigma \sqrt{T-t}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Charm

**Equation:**

$$
dDelta/dt = dTheta/dS = -d^2V/(dt dS)
$$

**Description:**
Delta decay: how delta changes over time. Used for delta hedging adjustments. Also called delta decay. Decay accelerates near expiration.

*Source: eq3/minimax-primer/formulas.csv*

---

## Interest Rate Swap PV (Fixed)

**Equation:**

$$
V_fixed = tau sum_{i=1}^n R_fixed P(0
$$

**Description:**
t_i)

*Source: eq3/minimax-primer/formulas.csv*

---

## Heston Model Dynamics

**Equation:**

$$
dS_t = (r - q) S_t dt + sqrt(v_t) S_t dW_S
$$

**Description:**
dW_S dW_v = rho dt | Stochastic Vol Models

*Source: eq3/minimax-primer/formulas.csv*

---

## Convexity Adjustment

**Equation:**

$$
F_convex = F + 1/2 Var( int_t^T f(s) ds )
$$

**Description:**
Adjustment from forward rate expectation to futures price. Futures price lower than forward for positive correlation between rates and discount factors. Crucial for Eurodollar futures.

*Source: eq3/minimax-primer/formulas.csv*

---

## Change of Numeraire (General)

**Equation:**

$$
V(t)/N(t) = E^{Q^N}[ V(T)/N(T) | F_t ]
$$

**Description:**
Any tradable asset divided by numeraire is martingale under associated measure. Choose numeraire to simplify pricing. T-forward measure for bonds, swap measure for annuities.

*Source: eq3/minimax-primer/formulas.csv*

---

## Cliquet (Ratchet) Option

**Equation:**

$$
V_cliquet = sum_{i=1}^n max( min(R_i
$$

**Description:**
F_i ) + global floor + notional

*Source: eq3/minimax-primer/formulas.csv*

---

## Chooser Option (As You Like It)

**Equation:**

$$
C_choose = C_vanilla + compound value
$$

**Description:**
Choose call or put at future date. Decomposes into call and compound option on underlying. Critical date: when choice is made. Value depends on forward vol.

*Source: eq3/minimax-primer/formulas.csv*

---

## Solar Power Forecast

**Equation:**

$$
dS_t = Seasonal + ClearSky + epsilon_t
$$

**Description:**
Solar production from irradiance models. Cloud cover stochasticity. Ramp rates from dawn/dusk. Forecast error with diurnal pattern.

*Source: eq3/minimax-primer/formulas.csv*

---

## Regression Basis Polynomials

**Equation:**

$$
L_n(x) = e^x/n! d^n/dx^n (x^n e^{-x})
$$

**Description:**
Laguerre polynomials for positive state space. Hermite for real line. Orthogonal polynomials with weight function. Efficient basis for regression.

*Source: eq3/minimax-primer/formulas.csv*

---

## CDS Protection Leg

**Equation:**

$$
PV_{protection} = (1-R) \int_0^T P(0
$$

**Description:**
Credit Derivatives

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Gaussian Process

**Equation:**

$$
f(x) \sim \mathcal{GP}(m(x) k(x x'))
$$

**Description:**
Non-parametric term structure fitting.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Correlation Swap

**Equation:**

$$
Payoff = N_\rho ( \hat{\rho} - K_\rho )
$$

**Description:**
Exchange realized for fixed correlation.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
Z_t = exp{-∫₀^t λ_s dW_s - ½∫₀^t λ_s² ds}
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
Ĥ = argmin_H (m_T - m(H))^T W (m_T - m(H))
$$

*Source: eq3/rough_volatility_primer.txt*

---

## A more flexible specification allowing for humped volatility structures is:

**Equation:**

$$
σ(t,T) = (σ_0 + σ_1(T-t))exp(-λ(T-t))
$$

**Description:**
This structure can match observed volatility patterns in interest rate markets where intermediate maturities exhibit peak volatility. The linear term (T-t) allows for initial increases in volatility before the exponential decay dominates.

*Source: eq3/hjm-framework.txt*

---

## The portfolio loss distribution for a homogeneous CDO with n identical obligors is given by:

**Equation:**

$$
L(t) = (1-R) * Σ(i=1 to n) D_i * 1_{τ_i ≤ t}
$$

**Description:**
where L(t) represents the cumulative portfolio loss at time t, R is the recovery rate (typically 40% for corporate debt), D_i is the notional amount of obligor i, and 1_{τ_i ≤ t} is the indicator function equal to 1 if the default time τ_i of obligor i occurs before time t. The loss distribution is characterized by its probability density function f_L(x,t) which satisfies the Kolmogorov forward equation under the risk-neutral measure Q.

*Source: eq3/CDO_Primer_Content.txt*

---

## The conditional default probability given the systematic factor is:

**Equation:**

$$
PD_i(Z) = Φ((Φ⁻¹(PD_i) - ρZ) / √(1-ρ²))
$$

**Description:**
This formulation enables analytical tractability through the conditional independence assumption. The portfolio loss distribution becomes computationally feasible via the law of iterated expectations, where the conditional loss distribution given Z follows a compound Poisson process. The Gaussian copula's analytical convenience comes at the cost of generating insufficient tail dependence, leading to the well-documented correlation smile phenomenon in CDO pricing.

*Source: eq3/CDO_Primer_Content.txt*

---

## Equation

**Equation:**

$$
N_t - ∫_0^t λ(s)ds is an ℱ_t-martingale
$$

*Source: eq3/credit_derivatives_intensity_models.txt*

---

## Terminal Measure Pricing:

**Equation:**

$$
V(t) = P(t,T_N) * E^{T_N}[V(T_N) | F_t]
$$

**Description:**
The terminal measure pricing formula uses the longest-maturity zero-coupon bond P(t,T_N) as numeraire. This measure choice eliminates drift terms from the last forward rate F_{N-1}(t), making it lognormally distributed. For derivatives with payoff at T_N, this provides significant computational advantages - the expectation can be computed via Monte Carlo simulation without discretization errors from drift terms.

*Source: eq3/lmm_content.txt*

---

## LIBOR Market Model (LMM)

**Equation:**

$$
dF_j(t) = mu_j(t) F_j(t) dt + sigma_j(t
$$

**Description:**
Interest Rate Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Mortgage-Backed Security (MBS)

**Equation:**

$$
V_MBS = sum_{t=1}^n CashFlow_t * OAS_t
$$

**Description:**
Value with option-adjusted spread. OAS adjusts for embedded options. Prepayment model drives cash flows. Duration, convexity with OAS.

*Source: eq3/minimax-primer/formulas.csv*

---

## Location Basis (WTI-Brent)

**Equation:**

$$
Basis = S_t^WTI - S_t^Brent - Transport
$$

**Description:**
Price difference between locations. Reflects transportation costs, quality differentials. WTI-Brent basis changed after Cushing bottlenecks. Basis swaps for location risk.

*Source: eq3/minimax-primer/formulas.csv*

---

## Gold Lease Rate

**Equation:**

$$
LeaseRate = r_risk-free - Cost of Carry
$$

**Description:**
Return on gold lending. Negative lease rate common (gold has cost of storage but no income). Basis for gold forward pricing: F = S(1 + r - l).

*Source: eq3/minimax-primer/formulas.csv*

---

## Malliavin Derivative of GBM

**Equation:**

$$
D_t S_u = S_u I(u >= t) sigma int_t^u dW_s
$$

**Description:**
Derivative of path with respect to Brownian motion. For GBM: explicit formula. Chain rule extends to functions of S.

*Source: eq3/minimax-primer/formulas.csv*

---

## Unknown

**Equation:**

$$
C(S,t) = SN(d_1) - Ke^{-r(T-t)}N(d_2)
$$

**Description:**
This formula provides the theoretical price of a European call option, which gives the holder the right (but not the obligation) to buy an underlying asset at a specified strike price on or before the expiration date.

*Source: eq3/iflow-model-primer/derivatives-primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Ornstein-Uhlenbeck Process

**Equation:**

$$
dx_t = \theta (\mu - x_t) dt + \sigma dW_t
$$

**Description:**
Mean-reverting stochastic process used in Vasicek and volatility models.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## TIPS Pricing

**Equation:**

$$
P^{TIPS}(t T) = P^{real}(t T) \cdot I_t
$$

**Description:**
Inflation-linked bond pricing formula.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## CEV Model

**Equation:**

$$
dS_t = \mu S_t dt + \sigma S_t^\beta dW_t
$$

**Description:**
Constant elasticity of variance capturing leverage effect.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Key Rate Duration

**Equation:**

$$
KRD_k = -(1/P) \partial P / \partial y_k
$$

**Description:**
Sensitivity to specific yield curve points.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
σ_SVI²(x) = a + b (ρ (x - m) + √((x - m)² + σ²))
$$

*Source: eq3/volatility_modeling_primer.txt*

---

## Equation

**Equation:**

$$
V_t = ξ_0(t) exp{ηW_t^H - 1/2 η^2 t^{2H}}
$$

*Source: eq3/rough_volatility_primer.txt*

---

## Equation

**Equation:**

$$
∂_k σ_BS(k,T)|_{k=0} ~ T^{H-1/2} as T → 0
$$

*Source: eq3/rough_volatility_primer.txt*

---

## Equation

**Equation:**

$$
M_t = N_t - ∫_0^t λ_s ds, dM_t = dN_t - λ_t dt
$$

*Source: eq3/credit_derivatives_intensity_models.txt*

---

## Total MBS Cash Flow

**Equation:**

$$
CF_t = SP_t + PP_t + CF_t^{interest} - S_t
$$

**Description:**
CF_t represents the total cash flow to MBS investors at time t, including scheduled principal SP_t, prepaid principal PP_t, interest CF_t^{interest}, and subtracting servicing fees S_t. Servicing fees are typically a spread over the WAC, paid to servicers for administering the loan pool. For agency MBS, this spread plus guarantee fee is subtracted from the gross WAC to determine the net coupon received by investors. The cash flow waterfall ensures that interest and fees are paid before principal distributions, with principal allocated pro-rata among all investors in pass-through structures.

*Source: eq3/fixed_income_primer.txt*

---

## MBS Yield Curve Key Rate Duration

**Equation:**

$$
D_{key} = -(P_+ - P_-) / (2P_0 × Δr_{key})
$$

**Description:**
D_{key} represents key rate duration, measuring sensitivity to a localized shift in the yield curve at a specific key tenor (e.g., 2-year, 5-year, 10-year). Unlike parallel shift duration, key rate duration captures how MBS value responds to non-parallel yield curve movements. This is crucial for MBS because prepayments depend on mortgage rates which are tied to intermediate-term yields. The sum of all key rate durations across the curve equals the parallel shift duration. Key rate durations help assess exposure to yield curve flattening or steepening scenarios.

*Source: eq3/fixed_income_primer.txt*

---

## Negative Convexity Cost

**Equation:**

$$
Cost_{convexity} ≈ 0.5 × |C| × σ_y^2 × WAM
$$

**Description:**
Cost_{convexity} represents the annualized cost of holding MBS with negative convexity, approximated using the magnitude of convexity |C| squared yield volatility σ_y, and weighted average maturity WAM. This cost arises because negative convexity causes underperformance when yields move significantly. Investors demand compensation for bearing this cost, reflected in higher OAS. In high volatility environments, the convexity cost increases, making MBS less attractive relative to positively convex bonds. This framework quantifies the tradeoff between carry (coupon income) and convexity cost.

*Source: eq3/fixed_income_primer.txt*

---

## **Price as Portfolio of Zero-Coupon Bonds:**

**Equation:**

$$
P = \sum_{i=1}^n c_i P(t,T_i) + P(t,T_n)
$$

**Description:**
**Variables:** - c_i: Coupon payment at time T_i (can be fixed or floating) - P(t,T_i): Price of zero-coupon bond maturing at T_i - P(t,T_n): Principal repayment (par value) at final maturity T_n - n: Total number of coupon payments - T_i: Time of i-th cash flow | See markdown for detailed variables and explanation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas_clean.csv*

---

## Vega

**Equation:**

$$
nu = dV/d_sigma = S_t phi(d_1) sqrt(T-t)
$$

**Description:**
Sensitivity to volatility. Same for calls and puts. Volatility is not directly traded; vega measures exposure to volatility views. Always positive.

*Source: eq3/minimax-primer/formulas.csv*

---

## Base Correlation Skew

**Equation:**

$$
sum_{i=1}^n w_i Phi_2( Phi^{-1}(PD_i)
$$

**Description:**
rho_i ) = Target

*Source: eq3/minimax-primer/formulas.csv*

---

## Spread Option (Kirk Approximation)

**Equation:**

$$
C approx (F_1 - F_2) Phi(d_1) - K Phi(d_2)
$$

**Description:**
Option on spread between two assets. Kirk: Black formula with forward = F1-F2 and vol^2 = sigma1^2 + sigma2^2 - 2rho sigma1 sigma2. Good for exchange options, crack spreads.

*Source: eq3/minimax-primer/formulas.csv*

---

## Digital Option (Cash-or-Nothing)

**Equation:**

$$
V_cash-or-nothing = exp(-rT) Q(S_T > K)
$$

**Description:**
Pays fixed amount if in-the-money. Price = discounted risk-neutral probability. Black formula with indicator function. Used in gap options, barriers.

*Source: eq3/minimax-primer/formulas.csv*

---

## Affine Jump-Diffusion (AJD)

**Equation:**

$$
dX_t = mu(X_t) dt + sigma(X_t) dW_t + dZ_t
$$

**Description:**
State-dependent jump intensity. Characteristic function remains affine (exponential of linear function). Used in Heston (stochastic vol) and Merton (constant jump).

*Source: eq3/minimax-primer/formulas.csv*

---

## Pairs Trading

**Equation:**

$$
Z_t = (S_t^(1) - beta S_t^(2) - mu)/sigma
$$

**Description:**
Spread of cointegrated pair. Trade when Z deviates from 0. Mean-reversion expected. Beta from regression, spread normalized.

*Source: eq3/minimax-primer/formulas.csv*

---

## Geometric Average Return

**Equation:**

$$
R_G = \left( \prod_{i=1}^n (1+R_i) \right)^{1/n} - 1
$$

**Description:**
The geometric average return represents the compound growth rate of an investment. It is the correct metric for measuring past performance over multiple periods because it accounts for the compounding effect. It is always less than or equal to the arithmetic average return (Volatility Drag); the difference increases with the volatility of the returns.

*Source: eq3/jules-primer/primer.csv*

---

## Generalized Pareto Distribution (GPD)

**Equation:**

$$
G_\xi(x) = 1 - (1+\xi x/\beta)^{-1/\xi}
$$

**Description:**
EVT states that for a wide class of distributions, the excesses over a high threshold 'u' converge to the GPD. This is crucial for modeling tail risk (VaR, Expected Shortfall) in finance, where normal distributions dangerously underestimate the probability of extreme crashes (the 'Black Swans'). \xi determines the tail thickness (fat tails if \xi > 0).

*Source: eq3/jules-primer/primer.csv*

---

## Unknown

**Equation:**

$$
dr_t = (\theta(t) - ar_t) dt + \sigma dW_t
$$

**Description:**
This SDE describes the evolution of the short-term interest rate r_t in the Hull-White model, which is a generalization of the Vasicek model that allows for time-dependent parameters. | Extended Vasicek model with time-dependent parameters.

*Source: eq3/iflow-model-primer/derivatives-primer.csv; eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Unknown

**Equation:**

$$
C = e^{-r(T-t)}\mathbb{E}[(A_T - K)^+]
$$

**Description:**
Where A_T = \left(\prod_{i=1}^n S_{t_i}\right)^{1/n} is the geometric average of the underlying asset prices at times t_1, ..., t_n. Asian options have payoffs that depend on the average price of the underlying asset over a specified period, reducing volatility risk compared to vanilla options.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## KVA

**Equation:**

$$
KVA = \int_0^T h \cdot RC_t \cdot DF(t) dt
$$

**Description:**
Capital valuation adjustment for regulatory capital cost.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Total XVA

**Equation:**

$$
Total XVA = CVA - DVA + FVA + ColVA + MVA + KVA
$$

**Description:**
Comprehensive fair value adjustment formula.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
P(t) \to 100 \quad \text{as} \quad t \to T
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\Delta u_t = \gamma u_{t-1} + \epsilon_t
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
VPIN = \frac{\sum |V_B - V_S|}{n \cdot V}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\text{Basis} = F - S = S \cdot r \cdot (T-t)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
C = S \cdot N(d_1) - K \cdot e^{-rT} N(d_2)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\mathbb{E}[e^{iuX_t}] = e^{t\psi(u)}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Cash-or-Nothing Call

**Equation:**

$$
C_{\text{CN}} = e^{-r(T-t)} \Phi(d_2)
$$

**Description:**
Variables: ; Explanation: * Pays a fixed cash amount if the underlying finishes above the strike. Price is the discounted risk-neutral probability of finishing in-the-money. | **Explanation:** Pays a fixed cash amount if the underlying finishes above the strike. Price is the discounted risk-neutral probability of finishing in-the-money. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## For continuous semimartingales X_t = M_t + A_t, the stochastic integral ∫₀^t H_s dX_s is defined as:

**Equation:**

$$
∫₀^t H_s dX_s = ∫₀^t H_s dM_s + ∫₀^t H_s dA_s
$$

**Description:**
where the first integral is an Ito integral and the second is a Stieltjes integral.

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
DD = ln(V_t/DP) + (μ - σ²/2)(T-t) / σ√(T-t)
$$

*Source: eq3/credit_derivatives_structural_models.txt*

---

## The tranche expected loss at time t is:

**Equation:**

$$
L_t^{(A,D)} = \min[\max(L_t - A, 0), D - A]
$$

**Description:**
which can be expressed in terms of the portfolio loss distribution F_L(x,t) = P(L_t ≤ x) as:

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Vasicek Short Rate Dynamics

**Equation:**

$$
dr_t = kappa(theta - r_t) dt + sigma dW_t^Q
$$

**Description:**
One-factor equilibrium model with mean-reverting Gaussian short rate. Kappa: speed of mean reversion, theta: long-term mean, sigma: volatility. Allows negative rates. Closed-form bond prices. | The Vasicek model assumes normally distributed rates with mean reversion parameter kappa long-term mean theta and volatility sigma. | First mean-reverting model for instantaneous interest rates.

*Source: eq3/minimax-primer/formulas.csv; eq3/kimi-primer/financial-derivatives-pricing-formulas.csv; eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Binomial Tree Price

**Equation:**

$$
V_0 = exp(-r Delta t) sum_{i=0}^n binom(n
$$

**Description:**
0) | 0) with early exercise check at each node

*Source: eq3/minimax-primer/formulas.csv*

---

## Gaussian Copula

**Equation:**

$$
X_i = sqrt(rho) Z + sqrt(1 - rho) epsilon_i
$$

**Description:**
Common factor model for credit portfolios. Z: systematic factor, epsilon_i: idiosyncratic. Conditional independence given Z. Vasicek asymptotic dependence.

*Source: eq3/minimax-primer/formulas.csv*

---

## Laplace Transform Method

**Equation:**

$$
E[exp(-u tau)] = exp( -int_0^u psi(s) ds )
$$

**Description:**
First passage time Laplace transform. psi(s) is Laplace exponent. For OU process: psi(s) = (s + kappa theta) - sqrt((s+kappa theta)^2 + 2sigma^2s). Inversion gives density.

*Source: eq3/minimax-primer/formulas.csv*

---

## Green Bond Premium

**Equation:**

$$
GreenPremium = y_green - y_conventional
$$

**Description:**
Yield spread of green vs conventional bonds. Demand effect from ESG investors. Information signaling effect. Liquidity premium for green bonds.

*Source: eq3/minimax-primer/formulas.csv*

---

## Latency Arbitrage

**Equation:**

$$
V = E[S_{t+delta} - S_t | Information at t]
$$

**Description:**
Profit from faster information processing. Latency: time delay delta. Sub-microsecond competition. Regulatory limits on colocation.

*Source: eq3/minimax-primer/formulas.csv*

---

## Regression Basis Functions

**Equation:**

$$
V(s) approx sum_{k=1}^K beta_k phi_k(s)
$$

**Description:**
Continuation value as linear combination of basis functions. Common choices: Laguerre, Hermite, power polynomials. Number of basis functions affects bias-variance tradeoff.

*Source: eq3/minimax-primer/formulas.csv*

---

## Effective Duration

**Equation:**

$$
D_{eff} = \frac{P_- - P_+}{2 P_0 \Delta y}
$$

**Description:**
Effective Duration is required for bonds with embedded options (like Mortgage-Backed Securities or Callable bonds) where cash flows are path-dependent on rates. It is calculated numerically by shifting the entire yield curve up and down and observing the price change from the valuation model.

*Source: eq3/jules-primer/primer.csv*

---

## Reinforcement Learning (Bellman)

**Equation:**

$$
Q(s,a) = E [ r + \gamma \max_{a'} Q(s', a') ]
$$

**Description:**
The core equation of Q-learning. An agent (algo trader) in state 's' (market condition) takes action 'a' (buy/sell) to maximize expected cumulative reward 'r' (PnL). In finance, this is applied to optimal execution and hedging, where the agent learns to navigate market impact and transaction costs through trial and error (simulation) rather than closed-form optimization.

*Source: eq3/jules-primer/primer.csv*

---

## Asian Option (Arithmetic)

**Equation:**

$$
max\left(\frac{1}{n} \sum_{i=1}^n S(t_i) - K
$$

**Description:**
Exotic Options

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
P(S,t) = Ke^{-r(T-t)}N(-d_2) - SN(-d_1)
$$

**Description:**
This formula provides the theoretical price of a European put option, which gives the holder the right (but not the obligation) to sell an underlying asset at a specified strike price on or before the expiration date.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Garman-Kohlhagen (FX)

**Equation:**

$$
c = S e^{-r_f T} N(d_1) - K e^{-r_d T} N(d_2)
$$

**Description:**
Extension of Black-Scholes for foreign exchange with foreign rate as dividend.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Markowitz MVO

**Equation:**

$$
\min_w 0.5 w^T \Sigma w s.t. w^T \mu = \mu_p
$$

**Description:**
Mean-variance optimization for optimal portfolio weights.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Autocallable

**Equation:**

$$
Payoff = (1 + c_i) N if S_{t_i} \ge B_{call}
$$

**Description:**
Early redemption structure with barrier observation.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Greenium

**Equation:**

$$
Greenium = y_{conventional} - y_{green}
$$

**Description:**
Green bond yield premium.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
\text{Model Risk} = V^{true} - V^{model}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## For a tranche with attachment point a and detachment point d, the tranche loss is:

**Equation:**

$$
L_{[a,d]}(t) = min{L(t), d} - min{L(t), a}
$$

**Description:**
This piecewise linear function creates the characteristic payoff structure where equity tranches (0-3%) absorb first losses, mezzanine tranches (3-7%, 7-10%) provide intermediate protection, and senior tranches (10-15%, 15-30%) offer the highest credit enhancement. The expected tranche loss E^Q[L_{[a,d]}(T)] forms the basis for premium calculations through the fundamental theorem of asset pricing.

*Source: eq3/CDO_Primer_Content.txt*

---

## For pricing, we condition on the systematic factor(s) Z at multiple levels. The inner conditional expectation for each CDO i given Z = z is:

**Equation:**

$$
E[L_t^{(i)} | Z = z] = EL_t^{(A_i,D_i)}(z)
$$

**Description:**
where EL_t^{(A_i,D_i)}(z) is the expected loss on tranche i computed under the one-factor model. The outer expectation over Z gives:

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## MBS Price with Option-Adjusted Spread

**Equation:**

$$
P = E[∑[t=1 to N] CF_t × exp(-(r_t + OAS) × t)]
$$

**Description:**
P represents the present value of MBS cash flows discounted at risk-free rates plus the Option-Adjusted Spread (OAS). The expectation E[·] is taken over multiple interest rate paths generated by a term structure model (e.g., Hull-White or Heath-Jarrow-Morton). r_t represents the short rate at time t from each simulated path, and CF_t are the path-dependent cash flows incorporating prepayments. OAS is the constant spread added to all discount rates that equates the model price to the market price. This framework explicitly accounts for optionality by simulating prepayment behavior along each rate path.

*Source: eq3/fixed_income_primer.txt*

---

## Rho (Call)

**Equation:**

$$
rho = dV/dr = K (T-t) exp(-r(T-t)) Phi(d_2)
$$

**Description:**
Sensitivity to interest rates. Positive for calls (borrowing cost), negative for puts (discounting). Less important than other Greeks in normal conditions.

*Source: eq3/minimax-primer/formulas.csv*

---

## Stress Testing Framework

**Equation:**

$$
Loss = sum_{i=1}^n w_i SectorLoss_sector
$$

**Description:**
i

*Source: eq3/minimax-primer/formulas.csv*

---

## Yield Maintenance

**Equation:**

$$
V = int_{T_call}^{T_mat} CF_t exp(-r t) dt
$$

**Description:**
Make-whole call adjustment. Present value of remaining cash flows. Makes call value independent of rates. Higher cost for issuer than par call.

*Source: eq3/minimax-primer/formulas.csv*

---

## FX Volga

**Equation:**

$$
d^2V/dsigma^2 = S d_1 d_2 sqrt(T) phi(d_1)
$$

**Description:**
Vol convexity. Second order vega. Gamma of vega. Smile curvature exposure.

*Source: eq3/minimax-primer/formulas.csv*

---

## Crack Spread (Oil-Products)

**Equation:**

$$
Crack = alpha S_t_crude - beta S_t_product
$$

**Description:**
Refining margin between crude and products. 3:2:1 crack: 3 barrels crude -> 2 gasoline + 1 heating oil. Option on crack spread protects refinery margin.

*Source: eq3/minimax-primer/formulas.csv*

---

## Battery Storage Arbitrage

**Equation:**

$$
V_battery = E[ sum_{t=1}^T max_{Q_t in [-C
$$

**Description:**
Commodity Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Malliavin Weight for Delta

**Equation:**

$$
H_1 = (1/S_0) int_0^T (dS_s/S_s) circ dW_s
$$

**Description:**
Pathwise sensitivity for Greeks. Stochastic integration by parts. Replaces finite difference for discontinuous payoffs. Valid under Ito.

*Source: eq3/minimax-primer/formulas.csv*

---

## Target Redemption Note (TARN)

**Equation:**

$$
\sum_{i=1}^{\tau} C_i \ge \text{Target}
$$

**Description:**
A popular structured product. The investor receives high coupons (inverse floater type) until the *sum* of coupons reaches a Target amount, at which point the note terminates (knocks out). The maturity is uncertain (stochastic). Pricing requires a full term-structure model (like LMM or Hull-White 2-Factor) to capture the correlation between the coupon levels and the discount factors.

*Source: eq3/jules-primer/primer.csv*

---

## MVA

**Equation:**

$$
MVA = \int_0^T s_F(t) \mathbb{E}[IM_t] dt
$$

**Description:**
Margin valuation adjustment for initial margin funding cost.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Longstaff-Schwartz

**Equation:**

$$
C_t(S_t) = \sum_{j=0}^M \beta_j L_j(S_t)
$$

**Description:**
Least-squares Monte Carlo regression for American options.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Impermanent Loss

**Equation:**

$$
IL = 2\sqrt{p_{ratio}}/(1 + p_{ratio}) - 1
$$

**Description:**
AMM liquidity provision loss.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Esscher Transform

**Equation:**

$$
dQ/dP = e^{\theta X_t} / E[e^{\theta X_t}]
$$

**Description:**
Measure change for Lévy processes.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Sentiment Index

**Equation:**

$$
SENT = PC_1(CEFD TURN NIPO RIPO S P^{D-ND})
$$

**Description:**
Aggregate investor sentiment.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
CPR(t) = \min\left(\frac{t}{30}, 1\right) \times 6\%
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
NPV = \sum_{t=0}^T \frac{CF_t}{(1+r)^t}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\sum_{t=0}^T \frac{CF_t}{(1+IRR)^t} = 0
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
λ(t) = lim_{Δt→0} P(t ≤ τ < t+Δt | τ ≥ t, ℱ_t) / Δt
$$

*Source: eq3/credit_derivatives_intensity_models.txt*

---

## 1. Covered Interest Rate Parity

**Equation:**

$$
F_0 = S_0 \cdot \frac{(1 + r_d T)}{(1 + r_f T)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Cox Process Survival

**Equation:**

$$
Q(tau > T) = E^Q[ exp(-int_0^T lambda_s ds) ]
$$

**Description:**
Doubly stochastic framework: intensity lambda_s independent of default history. Survival probability is expectation of exponential functional. Basis for intensity modeling.

*Source: eq3/minimax-primer/formulas.csv*

---

## Ito's Lemma (Multi-Dimensional)

**Equation:**

$$
dV = dV/dt dt + sum_i dV/dx_i dx_i + 1/2 sum_{i
$$

**Description:**
Stochastic Calculus

*Source: eq3/minimax-primer/formulas.csv*

---

## Time-Changed Levy Processes

**Equation:**

$$
S_t = X_{tau(t)} with tau(t) = int_0^t v_s ds
$$

**Description:**
Subordination: time change by variance process. Variance gamma_t: CIR, OU, or inverse Gaussian. Generates stochastic volatility from Levy base. Captures leverage effect.

*Source: eq3/minimax-primer/formulas.csv*

---

## Kalman Filter (Linear-Gaussian)

**Equation:**

$$
x_{t|t} = x_{t|t-1} + K_t (y_t - H x_{t|t-1})
$$

**Description:**
Optimal recursive filter for linear state space. K_t = P_{t|t-1} H' (H P_{t|t-1} H' + R)^{-1}. Prediction and update steps. Smoother for full path estimation.

*Source: eq3/minimax-primer/formulas.csv*

---

## Carbon Credit Price

**Equation:**

$$
dC_t = kappa(bar C - C_t) dt + sigma_t C_t dW_t
$$

**Description:**
Stochastic volatility for carbon credits. Floor price mechanism creates lower bound. Weather and energy mix affect demand. Voluntary vs compliance markets.

*Source: eq3/minimax-primer/formulas.csv*

---

## Spark Spread (Gas-Electricity)

**Equation:**

$$
Spark = S_t_elec - lambda S_t_gas - Heat Rate
$$

**Description:**
Arbitrage between electricity and gas. Gas plants set marginal cost. Spark spread reflects power generation profitability. Calendar spark spreads for seasonal patterns.

*Source: eq3/minimax-primer/formulas.csv*

---

## Holding Period Return

**Equation:**

$$
HPR = \frac{P_{t} - P_{t-1} + D_t}{P_{t-1}}
$$

**Description:**
The Holding Period Return measures the total return earned on an asset over a single period, including both capital appreciation (Price change) and income (Dividends or Coupons). It is the building block for calculating multi-period returns.

*Source: eq3/jules-primer/primer.csv*

---

## CDS Premium Leg

**Equation:**

$$
PV_{premium} = s \sum_{i=1}^n \Delta_i P(0
$$

**Description:**
Credit Derivatives

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
df(t,T) = \alpha(t,T)dt + \sigma(t,T)dW_t
$$

**Description:**
This SDE describes the evolution of the instantaneous forward rate f(t,T) in the HJM framework, which provides a general approach to modeling interest rate derivatives.

*Source: eq3/iflow-model-primer/derivatives-primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Jarrow-Turnbull Intensity

**Equation:**

$$
P(\tau > t) = \exp\left( -\int_0^t \lambda(s) ds \right)
$$

**Description:**
Reduced form model where default is a Poisson arrival with intensity lambda.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Optimal Spread

**Equation:**

$$
\delta = (2/\gamma) \ln(1 + \gamma/\kappa)
$$

**Description:**
Inventory-based spread formula.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Compound Poisson

**Equation:**

$$
S = \sum_{i=1}^N X_i with E[S] = \lambda E[X]
$$

**Description:**
Aggregate claims distribution.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
\beta_i = \frac{Cov(R_i, R_m)}{Var(R_m)}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
S_{worst} = \min_i \left( \frac{S_i^T}{S_i^0} \right)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Asset-or-Nothing Call

**Equation:**

$$
C_{\text{AN}} = S_t e^{-q(T-t)} \Phi(d_1)
$$

**Description:**
Variables: ; Explanation: * Pays one unit of the underlying asset if in-the-money. The replicating portfolio is a vanilla call minus a cash-or-nothing call times strike. | **Explanation:** Pays one unit of the underlying asset if in-the-money. The replicating portfolio is a vanilla call minus a cash-or-nothing call times strike. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
Premium_t = s_{A,D} N_0 (D - A) 1_{\{τ_m > t\}}
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## 1. Black-Scholes-Merton Model

**Equation:**

$$
E_t = V_t \Phi(d_1) - D e^{-r(T-t)} \Phi(d_2)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 2. Black-76 Model (Futures/Forward Options)

**Equation:**

$$
C = e^{-r(T-t)} \left( F_t \Phi(d_1) - K \Phi(d_2) \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Hull-White Short Rate

**Equation:**

$$
dr_t = (theta(t) - kappa r_t) dt + sigma dW_t^Q
$$

**Description:**
No-arbitrage extension of Vasicek with time-dependent drift theta(t). Calibrated to fit initial term structure exactly. Maintains analytical tractability.

*Source: eq3/minimax-primer/formulas.csv*

---

## Gaussian Copula Loss Distribution

**Equation:**

$$
L = sum_{i=1}^N I(X_i < Phi^{-1}(PD)) * LGD_i
$$

**Description:**
X_i = sqrt(rho) Z + sqrt(1-rho) epsilon_i. Common factor Z, idiosyncratic epsilon_i ~ N(0,1). rho: correlation. Conditional on Z, defaults independent. Portfolio loss is sum.

*Source: eq3/minimax-primer/formulas.csv*

---

## Conditional Default Probability

**Equation:**

$$
Q(tau_i <= t | Z) = 1 - exp( -int_0^t lambda_i(s
$$

**Description:**
CDO Tranches

*Source: eq3/minimax-primer/formulas.csv*

---

## Supershare Option

**Equation:**

$$
V_supershare = 1/(K_2 - K_1) I(K_1 < S_T < K_2)
$$

**Description:**
Pays fraction of fund if S in range. Combination of digital options. Fractional supershare divides range into n parts. Used in unit-linked insurance.

*Source: eq3/minimax-primer/formulas.csv*

---

## Threshold Estimator

**Equation:**

$$
hat sigma^2 = sum_{j=1}^n I(|r_j| <= u) r_j^2
$$

**Description:**
Jump-robust variance estimator. Threshold u removes large jumps. Consistent for diffusive variance. Used in volatility measurement.

*Source: eq3/minimax-primer/formulas.csv*

---

## Sustainability-Linked Loan

**Equation:**

$$
SLL = Loan * (1 - step-up * I(KPI > KPI_target))
$$

**Description:**
Loan with coupon step-down for meeting KPIs. KPIs: emissions reduction, ESG score. Incentivizes sustainable behavior. Credit spread reflects sustainability risk.

*Source: eq3/minimax-primer/formulas.csv*

---

## Growth Option

**Equation:**

$$
G(V) = \max(V_{expanded} - K_{expansion} 0)
$$

**Description:**
Call option on expansion projects.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Realized Kernel

**Equation:**

$$
RK = \sum_{h=-H}^{H} k(h/H) \hat{\gamma}_h
$$

**Description:**
Noise-robust variance estimator.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Levenberg-Marquardt

**Equation:**

$$
(J^T J + \lambda I) \delta = J^T (y - f(\theta))
$$

**Description:**
Damped least squares optimization.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Model Uncertainty Reserve

**Equation:**

$$
R_{model} = \alpha Notional \sigma_{model}
$$

**Description:**
Capital buffer for model risk.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
\beta_E = \beta_A \left[ 1 + (1-\tau)\frac{D}{E} \right]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**If default:**
CLN_{payoff} = (1-R) \cdot N
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Variables:

**Equation:**

$$
- \(G_t\): Geometric average up to time \(t\)
$$

**Description:**
Variables: ; Explanation: * Geometric Asian options have closed-form solutions because the geometric average of lognormal variables is lognormal. Arithmetic Asian options require numerical methods (moment matching, Monte Carlo).

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## SABR Probability Density via Collocation Method

**Equation:**

$$
p(F_T) \approx \sum_{j=1}^M c_j \phi_j(F_T)
$$

**Description:**
Since exact SABR density lacks closed form, numerical methods approximate it. Collocation represents density as linear combination of basis functions \phi_j (often Hermite polynomials or cubic splines). Coefficients c_j are chosen to match model moments: E[F_T^k] = \int F^k p(F) dF for k = 1, 2, ..., M. The moments can be computed via simulation or series expansion. This approach provides density needed for pricing path-dependent options and computing risk-neutral expectations beyond vanilla European options.

*Source: eq3/sabr-model.txt*

---

## 1. Heston Model

**Equation:**

$$
dS_t = (r - q) S_t dt + \sqrt{v_t} S_t dW_S^{(1)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Quanto Option

**Equation:**

$$
C_quanto = exp(-r_f T) E[(S_T - K)^+ | FX fixed]
$$

**Description:**
Payoff in foreign currency converted at fixed rate. Underlying correlation with FX affects adjusted drift. Currency-protected payoff with FX hedge.

*Source: eq3/minimax-primer/formulas.csv*

---

## Chen Model

**Equation:**

$$
dr_t = (theta_t - kappa_t r_t) dt + sigma_t dW_t
$$

**Description:**
Mean reversion speed and level stochastic. Four-factor model: r, theta, kappa, sigma. Interest rate dynamics with stochastic volatility. More realistic term structure dynamics.

*Source: eq3/minimax-primer/formulas.csv*

---

## Jarrow-Yildirim

**Equation:**

$$
dI_t/I_t = (r_n(t) - r_r(t)) dt + \sigma_I dW_I
$$

**Description:**
This model treats the CPI index I_t like a foreign currency. The 'Domestic' rate is the nominal interest rate r_n, and the 'Foreign' rate is the real interest rate r_r. The evolution of CPI is driven by the differential between nominal and real rates, plus an inflation volatility term. It uses HJM dynamics for both real and nominal rate curves.

*Source: eq3/jules-primer/primer.csv*

---

## Deep BSDE Solver

**Equation:**

$$
Y_0 = \phi_0(S_0;\theta_0)\quad Z_t = \phi(t
$$

**Description:**
Advanced Topics

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Sticky Delta

**Equation:**

$$
\sigma(\Delta t) = \sigma_{market}(\Delta)
$$

**Description:**
Implied vol constant for given moneyness.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Stranded Asset Risk

**Equation:**

$$
L_{stranded} = \sum p_i^{strand} V_i^{book}
$$

**Description:**
Expected carbon transition loss.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
\min_{x_k} \mathbb{E}[C] + \phi \cdot Var[C]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\lambda = \frac{r-q+\sigma^2/2}{\sigma^2}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
λ_t = μ + σ_t^2, dσ_t^2 = κ(θ - σ_t^2)dt + ησ_t dW_t
$$

*Source: eq3/credit_derivatives_intensity_models.txt*

---

## Equation

**Equation:**

$$
Loss_{j,t} = \min[\max(L_t - A_j, 0), D_j - A_j]
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Equation: B(t,T)

**Equation:**

$$
B(t,T) = \frac{1 - e^{-\kappa(T-t)}}{\kappa}
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
P_t = K e^{-r(T-t)} \Phi(-d_2) - S_t \Phi(-d_1)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 3. Bachelier (Normal) Model

**Equation:**

$$
C = (F_t - K) \Phi(d) + \sigma \sqrt{T-t} \phi(d)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 1. Gaussian Copula

**Equation:**

$$
X_i = \sqrt{\rho} Z + \sqrt{1 - \rho} \epsilon_i
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 2. Factor Extraction via Principal Components

**Equation:**

$$
\mathbf{F}_t = \mathbf{V}^\top \mathbf{R}_t
$$

**Description:**
Variables: - \mathbf{F}_t: k×1 vector of factor realizations at time t - \mathbf{R}_t: n×1 vector of asset returns at time t - \mathbf{V}: n×k matrix of eigenvectors (principal component loadings)

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## FX Swap

**Equation:**

$$
V_FX swap = S_0 (1 + r_d delta) - F_0 (1 + r_f delta)
$$

**Description:**
FX swap: spot buy/sell + forward sell/buy. Used for funding in foreign currency. Rollover risk. Pricing from interest rate differential.

*Source: eq3/minimax-primer/formulas.csv*

---

## Clark-Ocone Formula

**Equation:**

$$
M_t = E[F | F_t] = E[F] + int_0^t E[D_s F | F_s] dW_s
$$

**Description:**
Malliavin derivative D_s F gives sensitivity to Brownian path. Clark-Ocone gives martingale representation. Used for Greeks and hedging.

*Source: eq3/minimax-primer/formulas.csv*

---

## Gamma

**Equation:**

$$
\Gamma = \frac{N'(d_1)}{S\sigma\sqrt{T-t}}
$$

**Description:**
Gamma measures the rate of change of delta with respect to the underlying price representing convexity. Identical for calls and puts. | Second derivative of value w.r.t price (convexity).

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv; eq3/gemini-primer/gemini_primer.csv*

---

## Efficient Frontier

**Equation:**

$$
\sigma_p^2 = (A\mu_p^2 - 2B\mu_p + C)/(AC - B^2)
$$

**Description:**
Parametric form of the efficient frontier.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## FRTB SBA

**Equation:**

$$
K = \sqrt{\sum K_b^2 + \sum \gamma_{bc} S_b S_c}
$$

**Description:**
Market risk capital sensitivities-based approach.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Climate VaR

**Equation:**

$$
CVaR_\alpha = \sum p_s L_s 1_{L_s > VaR_\alpha}
$$

**Description:**
Losses under climate scenarios.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
Approximation: r_{nom} \approx r_{real} + \pi
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
CR = LR + ER = \frac{Losses + Expenses}{Premium}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Variables:

**Equation:**

$$
- \(F_t\): Forward/futures price at time \(t\)
$$

**Description:**
Variables: ; Explanation: * Black-76 is used for options on futures contracts. It assumes the futures price follows geometric Brownian motion. Commonly used for interest rate options (caps, floors, swaptions) and commodity options.

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## Equation: mu(t,T)

**Equation:**

$$
mu(t,T) = \sigma(t,T) \int_t^T \sigma(t,s) ds
$$

**Description:**
Automatically extracted equation

*Source: eq3/iflow-primer/formulas.csv; eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## The debt value D_t follows from the accounting identity V_t = E_t + D_t:

**Equation:**

$$
D_t = V_t - E_t = V_tN(-d_1) + Ke^{-r(T-t)}N(d_2)
$$

**Description:**
This represents the present value of the promised payment K discounted at the risk-free rate, adjusted for the probability of default.

*Source: eq3/credit_derivatives_structural_models.txt*

---

## MBS Cash Flow Interest

**Equation:**

$$
CF_t^{interest} = (B_{t-1} - SP_t/2) × WAC_t/12
$$

**Description:**
CF_t^{interest} represents the interest payment at time t, calculated on the average outstanding balance during the month. The balance (B_{t-1} - SP_t/2) approximates the mid-month balance, assuming scheduled principal amortizes evenly. For more precision with prepayments: CF_t^{interest} = (B_{t-1} - SP_t - PP_t/2) × WAC_t/12, which accounts for prepayments occurring mid-month. Interest payments are the primary source of cash flow for pass-through MBS and decrease over time as the outstanding balance declines through both scheduled and unscheduled payments.

*Source: eq3/fixed_income_primer.txt*

---

## Equation

**Equation:**

$$
where \mathbf{w}^\top \mathbf{B} = \mathbf{0}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Macaulay Duration

**Equation:**

$$
D_Mac = (1/P) sum_{i=1}^n T_i CF_i/(1+y)^(T_i)
$$

**Description:**
Weighted average time to receive cash flows. Weights are PV of each cash flow relative to bond price. Measures interest rate elasticity. Units: time.

*Source: eq3/minimax-primer/formulas.csv*

---

## Black-Scholes PDE

**Equation:**

$$
dV/dt + 1/2 sigma^2 S^2 d^2V/dS^2 + r S dV/dS - r V = 0
$$

**Description:**
Backward parabolic PDE governing option value. Terminal condition V(S,T) = payoff. Boundary conditions depend on option type. Solved via transformation to heat equation.

*Source: eq3/minimax-primer/formulas.csv*

---

## Range Accrual Swap

**Equation:**

$$
V_range = sum_{i=1}^n I(L < L_ti < H) r delta_i P(0
$$

**Description:**
Structured Products

*Source: eq3/minimax-primer/formulas.csv*

---

## Yield to Maturity (YTM)

**Equation:**

$$
P_{mkt} = \sum_{i=1}^n C e^{-y t_i} + F e^{-y t_n}
$$

**Description:**
The YTM is the internal rate of return (IRR) of the bond. It is the single constant discount rate 'y' that equates the present value of the bond's cash flows to its current market price. It relies on the assumptions that the bond is held to maturity and that all coupons can be reinvested at the same rate 'y'.

*Source: eq3/jules-primer/primer.csv*

---

## Sobol Sequence (Quasi-Monte Carlo)

**Equation:**

$$
D_N^*(x_1, ..., x_N) = O\left(\frac{(\log N)^s}{N}\right)
$$

**Description:**
Standard Monte Carlo uses pseudo-random numbers, converging at rate 1/\sqrt{N}. Quasi-Monte Carlo uses low-discrepancy sequences (like Sobol) which are deterministic but fill the space more uniformly, avoiding gaps and clusters. This improves convergence to nearly 1/N, effectively squaring the speed of the simulation for dimensions s < 20.

*Source: eq3/jules-primer/primer.csv*

---

## LCR

**Equation:**

$$
LCR = HQLA / Net Cash Outflows_{30-day} \ge 100\%
$$

**Description:**
Liquidity coverage ratio requirement.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Staking Yield

**Equation:**

$$
r_{staking} = Rewards/Staked \cdot 365/period
$$

**Description:**
Proof-of-stake yield derivative.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Meixner Process

**Equation:**

$$
\psi(u) = 2d \ln(\cos(b/2) / \cosh((au - ib)/2))
$$

**Description:**
Fat-tailed Lévy process.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
P = \sum_{i=1}^n \frac{C_i}{(1 + z_i + Z)^{t_i}}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
Price_{market}[0,K] = Price_{model}[0,K; ρ_K]
$$

*Source: eq3/CDO_Primer_Content.txt*

---

## Equation

**Equation:**

$$
S(t,T) = P(τ > T | ℱ_t) = E[exp(-∫_t^T λ(s)ds) | ℱ_t]
$$

*Source: eq3/credit_derivatives_intensity_models.txt*

---

## Equation

**Equation:**

$$
L_t = (1 - R) Φ( \frac{Φ^{-1}(h) - √{ρ} Z}{√{1-ρ}} )
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## The expected tranche loss conditioned on Z = z is:

**Equation:**

$$
EL_t^{(A,D)}(z) = \min[\max(L(z,t) - A, 0), D - A]
$$

**Description:**
Since conditioning makes the loss deterministic given Z, the unconditional expected tranche loss is:

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Mean-Variance Hedging

**Equation:**

$$
V_t = V_0 + int_0^t H_s dS_s + int_0^t lambda_s dM_s
$$

**Description:**
Hedging portfolio H in risky asset S and martingale M. Quadratic variation minimized. Galtchouk-Kunita-Watanabe decomposition. Complete markets: no M term.

*Source: eq3/minimax-primer/formulas.csv*

---

## Range Accrual Swap

**Equation:**

$$
V_range = sum_{i=1}^n delta_i r * I(L < S_ti < H) P(0
$$

**Description:**
Interest Rate Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Latin Hypercube Sampling

**Equation:**

$$
X_i^{(j)} = Phi^{-1}( (pi_j^{(i)} - delta_j)/N )
$$

**Description:**
Multi-dimensional extension of stratification. N samples fill unit hypercube evenly. Better coverage than stratified in high dimensions.

*Source: eq3/minimax-primer/formulas.csv*

---

## Sobol Sequence (Low Discrepancy)

**Equation:**

$$
W_i^{(j)} = 1/2^j + 1/2^{2j} + ... + 1/2^{nj} base 2
$$

**Description:**
Deterministic sequence with low discrepancy. j-th dimension uses 2^j bits. Owen scrambling for variance reduction. Excellent for high-dimensional integration.

*Source: eq3/minimax-primer/formulas.csv*

---

## Floating Rate Bond

**Equation:**

$$
V_{float}(t_i) = \underbrace{F}_{\text{Par}}
$$

**Description:**
A floating rate note (FRN) pays a coupon linked to a reference rate (e.g., LIBOR + Spread). At each reset date $t_i$, the coupon adjusts to the market rate, making the bond's value reset to Par (ignoring changes in the issuer's credit spread). This makes floaters immune to interest rate risk (Duration \approx 0).

*Source: eq3/jules-primer/primer.csv*

---

## Spectral Risk Measures

**Equation:**

$$
M_\phi(L) = \int_0^1 \text{VaR}_u(L) \phi(u) du
$$

**Description:**
General framework for coherent risk measurement through weighted averages of quantiles with risk aversion function phi.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Schwartz One-Factor Model

**Equation:**

$$
dS_t = \kappa(\mu - \ln S_t) S_t dt + \sigma S_t dW_t
$$

**Description:**
Mean-reverting spot price model for commodities.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Gibson-Schwartz Two-Factor

**Equation:**

$$
dS_t = (\mu - \delta_t) S_t dt + \sigma_S S_t dW_t^S
$$

**Description:**
Models spot price and convenience yield as joint stochastic processes.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Jarrow-Yildirim Model

**Equation:**

$$
dn_t = (\theta_n(t) - a_n n_t) dt + \sigma_n dW_t^n
$$

**Description:**
Three-factor model for nominal rate real rate and inflation index.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## SLV Model

**Equation:**

$$
dS_t = (r-q)S_t dt + L(S_t t) \sqrt{v_t} S_t dW_t^S
$$

**Description:**
Stochastic-local volatility combining LV with stochastic vol.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Risk Parity

**Equation:**

$$
w_i \partial \sigma_p / \partial w_i = \sigma_p / N
$$

**Description:**
Equal risk contribution allocation.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## OAS

**Equation:**

$$
P = \sum \mathbb{E}[ CF_i / e^{\int (r_s + OAS) ds} ]
$$

**Description:**
Spread after removing embedded option value.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Queue Position Value

**Equation:**

$$
V_{queue} = \int_0^\infty e^{-\lambda t} f(t) dt
$$

**Description:**
Option value of queue priority.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Life Annuity PV

**Equation:**

$$
\ddot{a}_x = \sum_{k=0}^{\omega-x} v^k {}_k p_x
$$

**Description:**
Actuarial present value of annuity.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\text{Payoff} = N \left[ \left( \frac{I_T}{I_0} \right) - (1 + K)^T \right]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
WACC = \frac{E}{V} r_e + \frac{D}{V} r_d (1-\tau)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Variables:**
*   I_{t-1} = 1 if \epsilon_{t-1} < 0
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
IL = \frac{2\sqrt{p_{ratio}}}{1 + p_{ratio}} - 1
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
dF = \alpha F^{\beta} dW_1
d\alpha = \nu \alpha dW_2
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## Equation

**Equation:**

$$
θ(t) = ∂f(0,t)/∂t + αf(0,t) + σ²/(2α)(1 - e^{-2αt})
$$

*Source: eq3/hull-white-primer.txt*

---

## In the context of Girsanov's theorem, the Radon-Nikodym process is:

**Equation:**

$$
ζ_t = dQ/dP|F_t = exp{-∫₀^t λ_s dW_s - ½∫₀^t λ_s² ds}
$$

**Description:**
This process satisfies the stochastic differential equation:

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
σ_BS(k,T) = σ_0 [1 + ρη/(2H+1) T^{H-1/2} k + O(k^2)]
$$

*Source: eq3/rough_volatility_primer.txt*

---

## For a CDO with N tranches, define attachment points A_j and detachment points D_j for j = 1,...,N satisfying:

**Equation:**

$$
0 = A_1 < D_1 = A_2 < D_2 = A_3 < ... < D_{N-1} = A_N < D_N = 1
$$

**Description:**
The j-th tranche bears losses proportional to portfolio losses L_t according to:

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Equation

**Equation:**

$$
Protection_t = (1 - R_{avg}) N_0 Σ_{i=1}^M ΔL_i(t)
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## 4. Forward Curve Extraction

**Equation:**

$$
f(t,T) = -\frac{\partial}{\partial T} \ln P(t,T)
$$

**Description:**
**Variables:** - f(t,T): Instantaneous forward rate at time t for maturity T - P(t,T): Zero-coupon bond price - ∂/∂T: Partial derivative with respect to maturity | **Variables:** - \(f(t,T)\): Instantaneous forward rate at time \(t\) for maturity \(T\) | Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## 1. Garman-Kohlhagen Model

**Equation:**

$$
C = S_0 e^{-r_f T} \Phi(d_1) - K e^{-r_d T} \Phi(d_2)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 4. Number of Factors in APT vs. CAPM

**Equation:**

$$
\text{CAPM: } k = 1 \text{ (market portfolio only)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Bootstrap Method

**Equation:**

$$
P(T_i) = [1 - sum_{j=1}^{i-1} c_j P(T_j)]/(1 + c_i)
$$

**Description:**
Recursive extraction of zero-coupon prices from coupon bond prices. Assumes linear interpolation. Ensures exact fit to market data. Foundation of curve construction.

*Source: eq3/minimax-primer/formulas.csv*

---

## Garman-Kohlhagen Model

**Equation:**

$$
C = S_0 exp(-r_f T) Phi(d_1) - K exp(-r_d T) Phi(d_2)
$$

**Description:**
Black-Scholes with two rates: domestic r_d, foreign r_f. Underlying is spot FX rate. Forward F = S_0 exp((r_d-r_f)T). Risk-neutral drift uses interest rate differential.

*Source: eq3/minimax-primer/formulas.csv*

---

## Sharpe Ratio Maximization

**Equation:**

$$
w* = Sigma^{-1} (mu - r 1) / (1^T Sigma^{-1} (mu - r 1))
$$

**Description:**
Maximum Sharpe ratio portfolio (tangency portfolio). Weights proportional to inverse covariance times excess return vector. Risk-free rate r as numeraire.

*Source: eq3/minimax-primer/formulas.csv*

---

## Butterfly

**Equation:**

$$
BF = (sigma_25d Call + sigma_25d Put)/2 - sigma_ATM
$$

**Description:**
Curvature indicator: average of 25-delta vol minus ATM. Measures smile convexity. Positive BF = smile convex (U-shaped).

*Source: eq3/minimax-primer/formulas.csv*

---

## Spin-Off Value

**Equation:**

$$
Value_spin-off = sum_{i=1}^n w_i V_i/Total Value
$$

**Description:**
Value of subsidiary vs parent. Sum-of-parts analysis. Unlock value from discount. Distribution method affects value.

*Source: eq3/minimax-primer/formulas.csv*

---

## Scenario Analysis

**Equation:**

$$
Delta V = sum_{i=1}^n dV/dX_i Delta X_i + 1/2 sum_{i
$$

**Description:**
Risk Measures

*Source: eq3/minimax-primer/formulas.csv*

---

## Student-t Copula

**Equation:**

$$
C^t(u,v) = t_\nu(t_\nu^{-1}(u), t_\nu^{-1}(v))
$$

**Description:**
Unlike the Gaussian copula which has zero tail dependence (assets become independent in extremes), the Student-t copula has positive tail dependence. This models the empirical reality that "in a crisis, all correlations go to 1". \nu (degrees of freedom) controls the strength of this tail dependence. Low \nu implies high crash correlation.

*Source: eq3/jules-primer/primer.csv*

---

## HAR Model

**Equation:**

$$
RV_{t+1} = \beta_0 + \beta_d RV_t + \beta_w RV_{t-5
$$

**Description:**
t} + \epsilon_{t+1}

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
dr_t = \kappa(\theta - r_t) dt + \xi\sqrt{r_t} dW_t
$$

**Description:**
This SDE describes the evolution of the short-term interest rate r_t in the CIR model, which is also mean-reverting but ensures non-negative interest rates. | This SDE describes the evolution of the variance process v_t in the Heston model, where it follows a mean-reverting square-root process (CIR process). This ensures that variance remains positive. | CIR process describing the evolution of instantaneous variance in Heston model. | The CIR model modifies Vasicek by making volatility proportional to sqrt(r_t) ensuring positive interest rates. | Square-root diffusion model ensuring positive interest rates.

*Source: eq3/iflow-model-primer/derivatives-primer.csv; eq3/gemini-primer/gemini_primer.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md; eq3/kimi-primer/financial-derivatives-pricing-formulas.csv; eq3/gemini-primer/gemini_primer.md*

---

## Unknown

**Equation:**

$$
\mathbb{P}(\tau > t) = e^{-\int_0^t \lambda_s ds}
$$

**Description:**
This equation gives the survival probability, which is the probability that default has not occurred by time t.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Discrete Barrier Correction

**Equation:**

$$
H_{eff} = H \exp\left( \pm \beta \sigma \sqrt{\Delta t} \right)
$$

**Description:**
Broadie-Glasserman correction for discrete monitoring bias.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## SVI Parameterization

**Equation:**

$$
w(k) = a + b ( \rho(k - m) + \sqrt{(k-m)^2 + \sigma^2} )
$$

**Description:**
Gatheral SVI parameterization for implied variance smile.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## FVA

**Equation:**

$$
FVA = \int_0^T s_F(t) \mathbb{E}[(V_t - C_t)^+] dt
$$

**Description:**
Funding valuation adjustment for uncollateralized positions.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Perpetual Funding Rate

**Equation:**

$$
F = P \max(-0.05\% \min(0.05\% (P-I)/I + \Delta r))
$$

**Description:**
Mechanism anchoring perpetual to spot.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## ESG Integration

**Equation:**

$$
E[r_i] = r_f + \beta_i \lambda_{MKT} + \gamma ESG_i
$$

**Description:**
ESG-adjusted expected return.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
\text{Payoff} = \max(S_1^T, S_2^T, ..., S_n^T) - K
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Variables:**
*   p_{ratio} = P_1/P_0: Price ratio
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Variables:

**Equation:**

$$
- \(r_s^{\text{real}}\): Real short rate process
$$

**Description:**
Variables: ; Explanation: * Inflation-linked bonds (e.g., TIPS) are priced using real interest rates. The nominal price is obtained by multiplying by the cumulative inflation index ratio.

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## The Markovian reduction extends to multi-factor models. For a two-factor model with volatility structure:

**Equation:**

$$
σ(t,T) = [σ_1 exp(-λ_1(T-t)), σ_2 exp(-λ_2(T-t))]
$$

**Description:**
the system reduces to a two-dimensional Markov process in state variables X_1(t) and X_2(t) where:

*Source: eq3/hjm-framework.txt*

---

## Equation

**Equation:**

$$
d_n = [ln(S_0/K) + (r - σ²/2 - λκ)T + nμ_J] / √(σ²T + nδ²)
$$

*Source: eq3/jump-diffusion-primer.txt*

---

## Equation

**Equation:**

$$
P(τ > T | ℱ_t^λ ∨ {τ > t}) = E[exp(-∫_t^T λ_s ds) | ℱ_t^λ]
$$

*Source: eq3/credit_derivatives_intensity_models.txt*

---

## Volatility Calibration:

**Equation:**

$$
σ_k^{market}² = (1/(T_k-t)) * ∫_t^{T_k} σ_k(s)² ds
$$

**Description:**
The market-implied volatility from caplet prices relates to the time-averaged model volatility. Calibration involves solving this integral equation for the piecewise constant volatility function σ_k(t). The typical parameterization uses constant volatility within each tenor period: σ_k(t) = σ_{k,j} for t ∈ [T_{j-1}, T_j], creating a lower-triangular volatility matrix.

*Source: eq3/lmm_content.txt*

---

## Equation

**Equation:**

$$
EL_t^{(A,D)} = ∫_{-∞}^{∞} EL_t^{(A,D)}(z) φ(z) dz
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## MBS Carry Return

**Equation:**

$$
Carry = (WAC - Servicing_Spread) - Cost_of_Funding
$$

**Description:**
Carry represents the periodic return earned from holding MBS, calculated as the net coupon received (WAC minus servicing and guarantee fees) minus the funding cost. For financed positions, Cost_of_Funding represents the repo rate or borrowing cost. Positive carry indicates the position earns more from coupons than funding costs, while negative carry means the position costs to hold. Carry is the primary driver of short-term MBS returns, independent of price movements. High carry can compensate for negative convexity risk in certain market environments.

*Source: eq3/fixed_income_primer.txt*

---

## 2. Schwartz Two-Factor Model

**Equation:**

$$
d(\ln S) = \kappa(\ln \bar{S} - \ln S) dt + \sigma dW_S
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## CIR Short Rate Dynamics

**Equation:**

$$
dr_t = kappa(theta - r_t) dt + sigma sqrt(r_t) dW_t^Q
$$

**Description:**
Extends Vasicek with volatility proportional to sqrt(rt). Ensures non-negative rates. Square-root process has non-central chi-squared transition density. More realistic for low rates.

*Source: eq3/minimax-primer/formulas.csv*

---

## Merton Equity Value

**Equation:**

$$
E_t = V_t Phi(d_1) - D exp(-r(T-t)) Phi(d_2) with d_1
$$

**Description:**
Credit Risk | Equity Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Black-76 (Futures Options)

**Equation:**

$$
C = exp(-r(T-t)) [ F_t Phi(d_1) - K Phi(d_2) ] with d_1
$$

**Description:**
Equity Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Gamma

**Equation:**

$$
Gamma = d^2V/dS^2 = phi(d_1)/(S_t sigma sqrt(T-t))
$$

**Description:**
Second-order price sensitivity. Rate of change of delta. High gamma positions need frequent rebalancing. Convexity of option value.

*Source: eq3/minimax-primer/formulas.csv*

---

## Bi-Power Variation

**Equation:**

$$
hat sigma^2 = pi/2 sum_{j=1}^{n-1} |r_j| |r_{j+1}|
$$

**Description:**
Jump-robust: converges to integrated variance. Min(QuadPower, BiPower) test for jumps. Lower variance than threshold for continuous paths.

*Source: eq3/minimax-primer/formulas.csv*

---

## Linear Quadratic Gaussian (LQG)

**Equation:**

$$
J = E[ int_0^T (x_t' Q x_t + u_t' R u_t) dt + x_T' Q_T x_T ]
$$

**Description:**
Quadratic cost, linear dynamics, Gaussian noise. Closed-form solution via Riccati ODE. Optimal control: u_t = -K_t x_t. Basis for optimal execution.

*Source: eq3/minimax-primer/formulas.csv*

---

## Cash Flow Waterfall (CDO)

**Equation:**

$$
V = sum_{i=1}^n I(Loss <= Attachment_i) * Tranche_i
$$

**Description:**
Priority of payments to tranches. Seniority structure: equity, mezz, senior. Interest and principal waterfalls. Trigger events and cleanup calls.

*Source: eq3/minimax-primer/formulas.csv*

---

## Snowball Swap

**Equation:**

$$
V_snowball = sum_{i=1}^n delta_i max(S_ti - K_snow
$$

**Description:**
H])

*Source: eq3/minimax-primer/formulas.csv*

---

## Renewable Energy Certificates (REC)

**Equation:**

$$
V_REC = E[ sum_{t=1}^T Certificate_t P_t exp(-rt) ]
$$

**Description:**
Certificate for renewable generation. Separated from electricity price. Premium for green attributes. Voluntary market dynamics.

*Source: eq3/minimax-primer/formulas.csv*

---

## Perpetual American Put

**Equation:**

$$
P_\infty(S) = \frac{K}{1 - \gamma} (S/S^*)^\gamma
$$

**Description:**
Closed-form solution for perpetual American put.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Almgren-Chriss

**Equation:**

$$
x_k^* = X_0 \sinh(\kappa(T - t_k)) / \sinh(\kappa T)
$$

**Description:**
Optimal execution trajectory minimizing cost and variance.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Dispersion Trading

**Equation:**

$$
P&L \propto \sigma_{idx}^2 - \sum w_i^2 \sigma_i^2
$$

**Description:**
Index vs single-stock variance swap strategy.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Total Return Swap

**Equation:**

$$
TRS_{payer} = (S_T - S_0) + Dividends - (L + spread) dt
$$

**Description:**
Synthetic asset return exposure.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Berkowitz Test

**Equation:**

$$
LR = -2(\ln L_{restricted} - \ln L_{unrestricted})
$$

**Description:**
Full density backtest.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\alpha(t, T) = \sigma(t, T) \int_t^T \sigma(t, u) du
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\sigma_p^2 = \frac{A\mu_p^2 - 2B\mu_p + C}{AC - B^2}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\frac{\Delta P}{P} \approx -D_{Mod} \cdot \Delta y
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation: phi(u)

**Equation:**

$$
phi(u) = \exp\left( iu \ln S_t + C(u,\tau) + D(u,\tau) v_t \right)
$$

**Description:**
Automatically extracted equation

*Source: eq3/iflow-primer/formulas.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Applied to log-volatility increments, this yields the regression-based estimator:

**Equation:**

$$
log E[|log σ_{t+Δ} - log σ_t|^q] = log C_q + qH log Δ + ε_t
$$

**Description:**
The optimal choice q = 2 provides the variance-based estimator, while robustness to outliers suggests using q ∈ [0.5,1]. The moment ratio method compares different moment orders:

*Source: eq3/rough_volatility_primer.txt*

---

## Equation

**Equation:**

$$
\frac{\partial^2 C}{\partial K^2} = e^{-rT} f(K,T)
$$

*Source: eq3/volatility-calibration.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## Equation

**Equation:**

$$
L_t^{(i)} = \min[\max(L_t^{(i)} - A_i, 0), D_i - A_i]
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Equation

**Equation:**

$$
The CDO² spread s^{(2)}_{A^{(2)},D^{(2)}} is then:
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Equation

**Equation:**

$$
dW_t^{1,\mathbb{Q}} dW_t^{2,\mathbb{Q}} = \rho dt
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
P = K e^{-r_d T} \Phi(-d_2) - S_0 e^{-r_f T} \Phi(-d_1)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
\frac{dC}{d\tau} = r D + (r - q) i u + \frac{1}{2} u (u - i)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Maximum Likelihood (MLE)

**Equation:**

$$
hat theta = argmax_theta prod_{t=1}^T f(X_t | theta)
$$

**Description:**
Parametric density estimation. Asymptotically efficient under correct specification. Requires complete likelihood. Challenges for latent variable models.

*Source: eq3/minimax-primer/formulas.csv*

---

## Overnight Index Swap (OIS)

**Equation:**

$$
V_OIS = sum_{i=1}^n (1/n sum_{j in period i} r_oj) P(0
$$

**Description:**
Interest Rate Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Co-integration

**Equation:**

$$
Y_t = alpha + beta X_t + epsilon_t with epsilon_t ~ I(0)
$$

**Description:**
Long-run equilibrium relationship. Error correction model: Delta Y_t = gamma( Y_{t-1} - alpha - beta X_{t-1}) + ... Stationary error term.

*Source: eq3/minimax-primer/formulas.csv*

---

## LMM (LIBOR Market Model)

**Equation:**

$$
\frac{dL_k}{L_k} = \mu_k dt + \sigma_k dW^{Q_{k+1}}
$$

**Description:**
Also known as the BGM (Brace-Gatarek-Musiela) model. Unlike short-rate models involving unobservable instantaneous rates, LMM models the dynamics of observable market rates (Forward LIBORs L_k). It assumes L_k follows geometric Brownian motion under its associated forward measure Q_{k+1}. This makes calibration to Caplets (which are options on L_k) straightforward and consistent with Black's formula.

*Source: eq3/jules-primer/primer.csv*

---

## Color (Gamma Decay)

**Equation:**

$$
\text{Color} = \frac{\partial \Gamma}{\partial t}
$$

**Description:**
Color measures how Gamma changes with time. It is a third-order Greek. It is relevant for maintaining a Gamma-neutral portfolio over time.

*Source: eq3/jules-primer/primer.csv*

---

## Occupation Time Formula

**Equation:**

$$
\int_0^t f(B_s) ds = \int_{\mathbb{R}} f(a) L_t^a da
$$

**Description:**
The occupation time formula establishes a fundamental relationship between time averages along Brownian paths and spatial integrals weighted by local time. This demonstrates that local time L_t^a serves as the Radon-Nikodym derivative of the occupation measure with respect to Lebesgue measure.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Credit Valuation Adjustment

**Equation:**

$$
CVA = (1-R) \int_0^T E^{\mathbb{Q}} [ (V_t)^+ ] dPD(0
$$

**Description:**
Credit Derivatives

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Neural Network Pricing

**Equation:**

$$
V(S K T \sigma r) \approx f_{NN}(S K T \sigma r; \theta)
$$

**Description:**
Universal approximation for option prices.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Limits to Arbitrage

**Equation:**

$$
|\alpha| < c_{transaction} + c_{margin} + c_{short}
$$

**Description:**
Constraints preventing arbitrage.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
F(V) = A V^\beta, \quad V < V^*
F(V) = V - I, \quad V \ge V^*
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
CF_{tranche_i} = \min(CF_{available}, Balance_i)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## AIC/BIC

**Equation:**

$$
AIC = 2k - 2\ln(\hat{L})
BIC = k \ln(n) - 2\ln(\hat{L})
$$

**Description:**
Model selection criteria.

*Source: eq3/gemini-primer/gemini_primer.md; eq3/gemini-primer/gemini_primer.csv*

---

## Lognormal SABR (\beta = 1) Dynamics

**Equation:**

$$
d\ln F_t = \alpha_t dW_t^F - \frac{1}{2} \alpha_t^2 dt
$$

**Description:**
For \beta = 1, applying Ito's formula to ln(F_t) yields this SDE. The forward price becomes F_T = F_0 \exp\left( \int_0^T \alpha_t dW_t^F - \frac{1}{2} \int_0^T \alpha_t^2 dt \right), similar to stochastic volatility version of Black-Scholes. The lognormal backbone ensures F_t > 0, suitable for commodities and some FX markets. Implied volatility formula simplifies in this case, with skew determined entirely by \rho \nu / \alpha term.

*Source: eq3/sabr-model.txt*

---

## Discount Factor Relationships

**Equation:**

$$
DF(t,T) = P(t,T) = 1/(1+y(T-t))^(T-t) = exp(-r(T-t))
$$

**Description:**
This equation shows three equivalent representations of discount factors: the bond price representation, the discrete compounding form with yield y, and the continuous compounding form with rate r. The relationship demonstrates how different compounding conventions affect the same underlying present value calculation. For discrete compounding, the frequency matters: semi-annual gives (1+y/2)^(-2(T-t)), quarterly gives (1+y/4)^(-4(T-t)), converging to continuous compounding as frequency approaches infinity.

*Source: eq3/fixed_income_primer.txt*

---

## Equation

**Equation:**

$$
z = \frac{\nu}{\alpha} (F K)^{(1-\beta)/2} \ln(F/K)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Yield to Maturity (YTM) Equation

**Equation:**

$$
P = sum_{i=1}^n c_i/(1+y)^(T_i-t) + 1/(1+y)^(T_n-t)
$$

**Description:**
YTM is single discount rate equating PV of cash flows to market price. Nonlinear equation solved numerically for y. Represents internal rate of return.

*Source: eq3/minimax-primer/formulas.csv*

---

## Lookback Option (Floating Strike)

**Equation:**

$$
C = S_0 Phi(d_1) - S_0 sigma^2/(2r) Phi(-d_1) exp(-rT)
$$

**Description:**
Payoff max(S_T - S_min, 0) or max(S_max - S_T, 0). Depends on running minimum/maximum. No closed form in general; approximation methods used.

*Source: eq3/minimax-primer/formulas.csv*

---

## Make-Whole Spread

**Equation:**

$$
MW Spread = y_Treasury + delta such that V_MW = V_market
$$

**Description:**
Spread for make-whole call. Calibrated to market price. Higher than par call spread. Basis for callable bond valuation.

*Source: eq3/minimax-primer/formulas.csv*

---

## Dispersion Trading

**Equation:**

$$
V_disp = Index Option - sum_{i=1}^n w_i Stock Option_i
$$

**Description:**
Short correlation trade. Index variance less than sum of individual variances. Correlation risk premium. Volatility swap dispersion.

*Source: eq3/minimax-primer/formulas.csv*

---

## Density from Characteristic Function

**Equation:**

$$
f(x) = 1/(2pi) int_{-infty}^infty e^{-iux} phi(u) du
$$

**Description:**
Fourier inversion gives probability density. Characteristic function phi(u) = E[e^{iuX}]. For Levy processes, closed-form phi(u). Numerical integration required.

*Source: eq3/minimax-primer/formulas.csv*

---

## Skorokhod Reflection Problem

**Equation:**

$$
Y_t = X_t + L_t \quad L_t = \sup_{0 \leq s \leq t} (-X_s)^+
$$

**Description:**
The Skorokhod reflection problem constructs a process Y_t that remains non-negative by reflecting an underlying process X_t at the zero boundary. The reflection is achieved through the local time process L_t which represents the cumulative force required to keep Y_t above zero.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Asian Option (Geometric)

**Equation:**

$$
max\left(\exp\left(\frac{1}{n} \sum_{i=1}^n \ln(S(t_i))\right) - K
$$

**Description:**
Exotic Options

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
C_{FS} = S_{max}N(d_1) - KN(d_2) - S_0N(d_3) + KN(d_4)
$$

**Description:**
Where: S_{max}: Maximum price of the underlying asset during the option's life, d_1 = \frac{\ln(S_{max}/K) + (r + \sigma^2/2)(T-t)}{\sigma\sqrt{T-t}}, d_2 = d_1 - \sigma\sqrt{T-t}, d_3 = \frac{\ln(S_{max}/S_0) + (r + \sigma^2/2)(T-t)}{\sigma\sqrt{T-t}}, d_4 = d_3 - \sigma\sqrt{T-t}. Lookback options allow the holder to \look back\" at the asset price history and choose the most favorable price for exercising the option."

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Bilateral CVA

**Equation:**

$$
CVA = (1-R_C) \int_0^T \mathbb{E}[(V_t)^+] dPD_C(t)
$$

**Description:**
Credit valuation adjustment for counterparty default risk.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Bermudan Swaption

**Equation:**

$$
V_n = \max(g_n \mathbb{E}[V_{n+1} | \mathcal{F}_n])
$$

**Description:**
Backward induction for Bermudan exercise optimization.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Concentrated Liquidity

**Equation:**

$$
L = \Delta x \sqrt{P_a P_b} / (\sqrt{P_b} - \sqrt{P_a})
$$

**Description:**
Uniswap V3 liquidity provision.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Whole Life NSP

**Equation:**

$$
A_x = \sum_{k=0}^{\omega-x} v^{k+1} {}_k p_x q_{x+k}
$$

**Description:**
Net single premium for life insurance.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Cross-Validation

**Equation:**

$$
CV = (1/K) \sum ||y_{test}^{(k)} - \hat{y}^{(k)}||^2
$$

**Description:**
Out-of-sample error estimation.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
dI_t = \pi_t I_t dt + \sigma_I I_t dW_t^{I,\mathbb{Q}}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## The Burkholder-Davis-Gundy inequalities provide crucial bounds for martingales. For any p > 0, there exist constants c_p, C_p such that:

**Equation:**

$$
c_p E[[M]_t^{p/2}] ≤ E[(M_t*)^p] ≤ C_p E[[M]_t^{p/2}]
$$

**Description:**
where M_t* = sup_{0≤s≤t} |M_s| is the running maximum. These inequalities connect the moments of the maximum process to the quadratic variation.

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
dx_t = -\kappa_1 x_t dt + \sigma_1 dW_t^{1,\mathbb{Q}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
dy_t = -\kappa_2 y_t dt + \sigma_2 dW_t^{2,\mathbb{Q}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## 5. Heath-Jarrow-Morton (HJM) Framework

**Equation:**

$$
df(t,T) = \mu(t,T) dt + \sigma(t,T) dW_t^{\mathbb{Q}}
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## 2. Black-Cox First Passage Time Model

**Equation:**

$$
\text{Default time } \tau = \inf\{ t \ge 0 : V_t \le K(t) \}
$$

**Description:**
**Variables:** - K(t): Time-dependent default barrier (often exponential) - τ: First hitting time of the barrier

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Effective Duration

**Equation:**

$$
D_Eff = - (1/P) [P(y+Delta y) - P(y-Delta y)]/(2 Delta y)
$$

**Description:**
Used for bonds with embedded options where price-yield is non-linear. Computed via finite difference with parallel yield shift. Captures effective sensitivity.

*Source: eq3/minimax-primer/formulas.csv*

---

## Capital Asset Pricing Model

**Equation:**

$$
E[R_i] - r_f = beta_i (E[R_m] - r_f) with beta_i = Cov(R_i
$$

**Description:**
Factor Models

*Source: eq3/minimax-primer/formulas.csv*

---

## Semimartingale Decomposition

**Equation:**

$$
\int_0^t H_s dX_s = \int_0^t H_s dM_s + \int_0^t H_s dA_s
$$

**Description:**
For general semimartingale X = M + A the integral decomposes into a stochastic integral with respect to the local martingale M and a Lebesgue-Stieltjes integral with respect to the finite variation process A. This decomposition is unique.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Monte Carlo Error

**Equation:**

$$
\epsilon \propto \frac{\sigma_{sample}}{\sqrt{M}}
$$

**Description:**
Convergence rate proportional to inverse square root of paths M.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Leverage Function

**Equation:**

$$
L^2(S t) = \sigma_{LV}^2(S t) / \mathbb{E}[v_t | S_t = S]
$$

**Description:**
Calibration of leverage function via conditional expectation.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Rough Volatility

**Equation:**

$$
\log v_t = \log v_0 + \eta \int_0^t (t-s)^{H-1/2} dW_s^v
$$

**Description:**
Fractional BM with Hurst H < 0.5.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## CDO Synthetic Tranche

**Equation:**

$$
L_{tranche} = \max(L_{port} - A 0) - \max(L_{port} - D 0)
$$

**Description:**
Tranched credit exposure via CDS.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## IV Calibration

**Equation:**

$$
\sigma^{imp}: C^{BS}(S K T \sigma^{imp}) = C^{market}
$$

**Description:**
Root finding for implied vol.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Vega-Weighted Divergence

**Equation:**

$$
D_{vega} = \sum \nu_i |C_i^{model_1} - C_i^{model_2}|
$$

**Description:**
Model comparison across strikes.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
Caplet = L \delta_k P(0, t_{k+1}) [F_k N(d_1) - K N(d_2)]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
VWAP = \frac{\sum_{i=1}^N P_i V_i}{\sum_{i=1}^N V_i}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
KRD_k = -\frac{1}{P} \frac{\partial P}{\partial y_k}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Applying Black's formula yields the closed-form solution:

**Equation:**

$$
\text{Payer Swaption} = A(0) \left[ r_{FWD} N(d_1) - K N(d_2) \right]
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## Equation

**Equation:**

$$
Î_strat = Σ_{k=1}^K p_k (1/n_k) Σ_{i=1}^{n_k} f(X_i^k)
$$

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## Equation

**Equation:**

$$
dv_t = \kappa(\theta - v_t)dt + \sigma\sqrt{v_t}dW_t^v
$$

*Source: eq3/heston-dynamics.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## Seasoned CPR Model

**Equation:**

$$
CPR_t^seasoned = CPR_t^base × Seasonality_{month(t)}
$$

**Description:**
This equation incorporates seasonal prepayment patterns by adjusting the base CPR with multiplicative seasonal factors. Seasonality_{month(t)} is a factor typically ranging from approximately 0.6 to 1.4 depending on the month, reflecting empirical observations that prepayments peak during spring and summer (home buying season) and decline during fall and winter. The model captures the cyclical nature of housing market activity and refinancing behavior. Seasonal adjustments are crucial for accurate cash flow projection, as ignoring seasonality can lead to systematic mispricing of MBS.

*Source: eq3/fixed_income_primer.txt*

---

## 3. Bootstrap Method for Discount Factors

**Equation:**

$$
P(T_i) = \frac{1 - \sum_{j=1}^{i-1} c_j P(T_j)}{1 + c_i}
$$

**Description:**
**Variables:** - P(T_i): Zero-coupon bond price for maturity T_i - c_j: Coupon rate of the j-th coupon bond - P(T_j): Previously bootstrapped discount factor - 1 + c_i: Gross return including coupon | Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
\mathbb{E}[f(X)] = \mathbb{E}\left[ f(X) \frac{dP}{dP^*} \right]
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
\mathbb{E}[R_i] - r_f = \beta_i (\mathbb{E}[R_M] - r_f)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## CDO-Squared (CDO2)

**Equation:**

$$
V_CDO2 = sum_{i=1}^M w_i V_Tranche_i^{underlying CDO}
$$

**Description:**
Tranche on tranche. Second-order CDO. Nested tranche structure. More complex correlation exposure. Higher-order risk premia.

*Source: eq3/minimax-primer/formulas.csv*

---

## Extended Kalman Filter

**Equation:**

$$
hat x_{t|t} = hat x_{t|t-1} + K_t (y_t - h(hat x_{t|t-1}))
$$

**Description:**
First-order Taylor approximation of non-linearities. Linearized around current estimate. Used when E[dh/dx] computable. May diverge for strong non-linearities.

*Source: eq3/minimax-primer/formulas.csv*

---

## Malliavin Weight for Vega

**Equation:**

$$
H_2 = (1/xi) int_0^T (v_s - theta)/sqrt(v_s) dW_s^{(2)}
$$

**Description:**
Weight for variance parameter sensitivity. Vol of vol xi. Integration against variance process. Alternative to bump-and-revalue.

*Source: eq3/minimax-primer/formulas.csv*

---

## Ratchet Floater

**Equation:**

$$
C_t = \max(C_{t-1} + S, \min(C_{t-1} + \text{Cap}, L_t))
$$

**Description:**
A ratchet pays a coupon that can typically step up but not down (or adjust slowly). It is a path-dependent option embedded in a bond. The value depends heavily on the autocorrelation of interest rates. If rates are mean-reverting, ratchets are less valuable than if rates trend.

*Source: eq3/jules-primer/primer.csv*

---

## Linear SDE Solution

**Equation:**

$$
X_t = X_0 \exp\left[\left(\mu - \frac{\sigma^2}{2}\right)t + \sigma W_t\right]
$$

**Description:**
This geometric Brownian motion solution includes the volatility adjustment -sigma^2/2 known as the drift correction. This adjustment ensures that the discounted price process is a martingale under the risk-neutral measure which is fundamental to no-arbitrage pricing theory.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
dS_t = (r - \lambda\mu_J)S_t dt + \sigma S_t dW_t + S_t dJ_t
$$

**Description:**
This SDE describes the evolution of the spot price S_t in the Merton jump-diffusion model, which extends the Black-Scholes framework by incorporating jumps in the underlying asset price.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Swaption Pricing (Bachelier)

**Equation:**

$$
V_{payer} = A(t) [(S(t) - K) N(d) + \sigma \sqrt{T} N'(d)]
$$

**Description:**
Normal model for swaptions used in low/negative rate environments.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Expected Shortfall

**Equation:**

$$
ES_\alpha = \frac{1}{1-\alpha} \int_\alpha^1 VaR_u du
$$

**Description:**
Conditional expectation of loss for losses exceeding VaR (coherent risk measure).

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Free Boundary Problem

**Equation:**

$$
\partial V/\partial t + \mathcal{L}V - rV = 0 for S > S^*(t)
$$

**Description:**
American put PDE with exercise boundary conditions.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## CAPM

**Equation:**

$$
\mathbb{E}[R_i] = R_f + \beta_i (\mathbb{E}[R_m] - R_f)
$$

**Description:**
Equilibrium expected return based on systematic risk.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## VIX Definition

**Equation:**

$$
VIX^2 = (2/T) \sum (\Delta K_i / K_i^2) e^{rT} Q(K_i) - ...
$$

**Description:**
CBOE model-free implied volatility index.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Prospect Theory

**Equation:**

$$
v(x) = x^\alpha for x \ge 0 and -\lambda(-x)^\beta for x < 0
$$

**Description:**
Kahneman-Tversky value function.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Probability Weighting

**Equation:**

$$
w(p) = p^\gamma / (p^\gamma + (1-p)^\gamma)^{1/\gamma}
$$

**Description:**
Overweighting small probabilities.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Advanced term structure models like the LIBOR Market Model (LMM) provide more accurate pricing through:

**Equation:**

$$
dL_i(t) = \mu_i(t) L_i(t) dt + \sigma_i(t) L_i(t) dW_i(t)
$$

**Description:**
Where L_i(t) represents the forward LIBOR rate for period [T_i, T_{i+1}], and correlation structure between Brownian motions captures the realistic co-movement of rates across the curve. Monte Carlo simulation of this system enables consistent pricing of both cash and physically settled swaptions within a unified framework. | The LMM specifies lognormal forward rate dynamics with drift adjustments under different measures.

*Source: eq3/interest_rate_derivatives_primer.txt; eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Equation

**Equation:**

$$
d = \sqrt{(\rho\sigma ui - \kappa)^2 + \sigma^2(ui + u^2)}
$$

*Source: eq3/heston-characteristic.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## The inverse Radon-Nikodym derivative is given by:

**Equation:**

$$
dP/dQ|F_t = ζ_t^{-1} = exp{∫₀^t λ_s dW_s^Q - ½∫₀^t λ_s² ds}
$$

**Description:**
For asset pricing, the state price density π_t is related to the Radon-Nikodym derivative via:

*Source: eq3/stochastic_calculus_primer.md*

---

## 1. Vasicek Model

**Equation:**

$$
dr_t = \kappa(\theta - r_t) dt + \sigma dW_t^{\mathbb{Q}}
$$

**Description:**
**Variables:** - κ: Speed of mean reversion (positive constant) - θ: Long-term mean level of the short rate - σ: Volatility of the short rate - dW_t^{\mathbb{Q}}: Brownian motion under risk-neutral measure - r_t: Short rate at time t | **Variables:** - σ√r_t: Volatility proportional to square root of rate - √: Square root (ensures non-negativity) - Other variables as in Vasicek | **Explanation:** CIR extends Vasicek by making volatility proportional to \(\sqrt{r_t}\), ensuring non-negative rates. The square-root process has a non-central chi-squared transition density.

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## 2. Swap Market Model (SMM)

**Equation:**

$$
dS_j(t) = \mu_j(t) S_j(t) dt + \sigma_j(t) S_j(t) dW_j(t)
$$

**Description:**
**Variables:** - S_j(t): Forward swap rate for swap j - σ_j(t): Volatility of swap rate j - dW_j(t): Brownian motion under annuity measure

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
dv_t = \kappa(\theta - v_t) dt + \xi \sqrt{v_t} dW_v^{(2)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Cross Currency Basis Swap

**Equation:**

$$
V_basis = sum_{i=1}^n delta_i (R_dom - R_for * FX_fwd) P(0
$$

**Description:**
FX Derivatives

*Source: eq3/minimax-primer/formulas.csv*

---

## Yield to Put (YTP)

**Equation:**

$$
P = sum_{i=1}^{n_put} C_i/(1+y)^ti + 100/(1+y)^{T_put}
$$

**Description:**
Yield assuming put at first put date. Maximum of YTM and YTP is YTW. Used for yield comparison with put risk.

*Source: eq3/minimax-primer/formulas.csv*

---

## Gauss-Laguerre Quadrature

**Equation:**

$$
int_0^infty e^{-x} f(x) dx approx sum_{i=1}^n w_i f(x_i)
$$

**Description:**
Integration for Black-Scholes with characteristic function. Roots x_i and weights w_i from Laguerre polynomials. Exponential convergence for smooth integrands.

*Source: eq3/minimax-primer/formulas.csv*

---

## Brownian Bridge Approximation

**Equation:**

$$
W_t^{(n)} = j/n Z_1 + ... + (n-j)/n Z_n + sqrt(j(n-j)/n) Z_0
$$

**Description:**
Conditional simulation of Brownian path given endpoints. Reduces dimension from N to 1. Used in quasi-Monte Carlo and conditioning techniques.

*Source: eq3/minimax-primer/formulas.csv*

---

## LIBOR Market Model (LMM)

**Equation:**

$$
\frac{dL_k(t)}{L_k(t)} = \mu_k(t) dt + \sigma_k(t) dW_t
$$

**Description:**
Models dynamics of observable discrete forward rates.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Value at Risk (Parametric)

**Equation:**

$$
VaR_\alpha = \sigma_{port} \Phi^{-1}(\alpha) V_{port}
$$

**Description:**
Maximum loss metric at confidence alpha.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## ColVA

**Equation:**

$$
ColVA = \int_0^T (r_{coll} - r_{OIS}) \mathbb{E}[C_t] dt
$$

**Description:**
Collateral valuation adjustment for rate differential.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Early Exercise Premium

**Equation:**

$$
C_{Am} = C_{Eu} + \int_t^T e^{-r(u-t)} q S^*(u) N(-d_1) du
$$

**Description:**
Carr-Jarrow-Myneni decomposition of American option.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Obizhaeva-Wang

**Equation:**

$$
dS_t = \sigma dW_t - \eta \dot{x}_t dt + \rho (S_t - S_t^0) dt
$$

**Description:**
Optimal execution with temporary impact.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Smart Order Routing

**Equation:**

$$
\min_{q_i} \sum [p_i(q_i) q_i + c_i(q_i)] s.t. \sum q_i = Q
$$

**Description:**
Multi-venue execution optimization.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
p_{12} = \Phi_2(\Phi^{-1}(p_1), \Phi^{-1}(p_2), \rho)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\hat{y} = \sum_{m=1}^M f_m(x), \quad f_m \in \mathcal{F}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\psi(u) = 2d \ln\left(\frac{\cos(b/2)}{\cosh((au - ib)/2)}\right)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
Cov(W_t^H, W_s^H) = 1/2(|t|^{2H} + |s|^{2H} - |t-s|^{2H})
$$

*Source: eq3/rough_volatility_primer.txt*

---

## Euler-Maruyama Discretization:

**Equation:**

$$
X_{t+Δt} = X_t + μ(X_t,t)Δt + σ(X_t,t)√Δt Z, where Z ~ N(0,1)
$$

**Description:**
This represents the first-order strong Taylor approximation for stochastic differential equations. X_t is the state variable following dX_t = μ(X_t,t)dt + σ(X_t,t)dW_t. The method achieves strong order 0.5 and weak order 1.0, meaning the strong error E[|X_T - X_T^h|] = O(h^{0.5}) and weak error |E[f(X_T)] - E[f(X_T^h)]| = O(h) for sufficiently smooth test functions f. The Gaussian increment approximation becomes exact as Δt → 0, but for finite step sizes introduces discretization bias that compounds multiplicatively over paths. The stability condition requires Δt < 2/|μ'(X_t)| for mean-reverting processes, and the method exhibits poor performance for highly nonlinear drift coefficients or small noise intensities.

*Source: eq3/monte-carlo-numerical-methods.txt*

---

## Equation

**Equation:**

$$
d_1 = ln(V_t/K) + (r + σ²/2)(T-t) / σ√(T-t)
d_2 = d_1 - σ√(T-t)
$$

*Source: eq3/credit_derivatives_structural_models.txt*

---

## Equation

**Equation:**

$$
dF_k(t) = F_k(t) * [μ_k(t)dt + σ_k(t) * dW_k^{T_{k+1}}(t)]
$$

*Source: eq3/lmm_content.txt*

---

## Equation

**Equation:**

$$
\mathbb{E}[f(S)] = \frac{1}{2} \mathbb{E}[f(S) + f(S')]
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Physical Risk (Climate)

**Equation:**

$$
V_phys = V_base - sum Loss_i * Exposure_i * Vulnerability_i
$$

**Description:**
Value impact from climate events. Acute: floods, hurricanes. Chronic: sea level rise. Geographic exposure analysis.

*Source: eq3/minimax-primer/formulas.csv*

---

## Cosine Method (COS)

**Equation:**

$$
V(x,t_0) \approx e^{-r \Delta t} \sum_{k=0}^{N-1} A_k V_k
$$

**Description:**
The COS method expands the probability density function as a Fourier-Cosine series. It typically converges exponentially fast for smooth densities (like Heston), outperforming the FFT method in terms of speed and accuracy for small N. It is highly efficient for computing Greeks.

*Source: eq3/jules-primer/primer.csv*

---

## Binomial Tree

**Equation:**

$$
u_i^n = e^{-r\Delta t}[p u_{i+1}^{n+1} + (1-p) u_i^{n+1}]
$$

**Description:**
Backward induction for option pricing with risk-neutral probability p = (e^{r\Delta t} - d)/(u-d).

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
\phi_{\theta}(u) = \exp\left( C_T(u) + D_T(u)v_0 + iu\ln(S_0) \right)
$$

**Description:**
The characteristic function is crucial for pricing European options in the Heston model using Fourier inversion techniques.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Macaulay Duration

**Equation:**

$$
D_{Mac} = \sum t_i C_i/(1+y)^{t_i} / \sum C_i/(1+y)^{t_i}
$$

**Description:**
Weighted average time to bond cash flows.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Cointegration

**Equation:**

$$
y_t = \alpha + \beta x_t + u_t with \Delta u_t = \gamma u_{t-1}
$$

**Description:**
Long-run equilibrium relationship.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Hawkes Process

**Equation:**

$$
\lambda(t) = \mu + \sum_{t_i < t} \alpha e^{-\beta(t - t_i)}
$$

**Description:**
Self-exciting point process for order arrivals.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Quantum Option Pricing

**Equation:**

$$
|\psi\rangle = \sum \sqrt{p_i} |i\rangle |f(S_i)\rangle
$$

**Description:**
Payoff encoded in quantum state.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
K = \sqrt{\sum_b K_b^2 + \sum_{b \ne c} \gamma_{bc} S_b S_c}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## **Spread Options (Kirk Approximation for Two Assets)**

**Equation:**

$$
C \approx e^{-r(T-t)} \left( F_1 \Phi(d_1) - (F_2 + K) \Phi(d_2) \right)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Early Exercise Boundary:

**Equation:**

$$
S*(t) = inf{S : G(S) ≥ e^{-rΔt}E[V(S_{t+Δt},t+Δt)|S_t = S]}
$$

**Description:**
The early exercise boundary S*(t) represents the critical asset price below (for puts) or above (for calls) which immediate exercise becomes optimal. This free boundary is determined endogenously as part of the solution and satisfies the smooth pasting condition: ∂V/∂S|_{S=S*(t)} = ∂G/∂S|_{S=S*(t)} ensuring continuity of the delta at the boundary. Near expiration, the boundary exhibits singular behavior with asymptotic expansion S*(t) ~ K(1 - σ√(-2t ln(t))) for put options, where K is the strike price. The boundary is monotonic in time (decreasing for puts, increasing for calls) and satisfies the integral equation representation derived from the early exercise premium decomposition. Numerical approximation requires careful treatment of the boundary's singular behavior near expiration, often employing specialized algorithms such as the method of lines or integral equation approaches. The boundary's location directly impacts option values through the early exercise premium, making its accurate determination crucial for American option pricing. In tree methods, the boundary is implicitly determined by comparing exercise and continuation values at each node, with the finest resolution occurring at the final time step before expiration.

*Source: eq3/tree_methods_primer.txt*

---

## Refinancing Incentive Model

**Equation:**

$$
CPR_t^{refi} = α × Φ(β × (r_t - WAC_t) + γ × (WAC_t - r_t)_+ + ε_t)
$$

**Description:**
This equation models refinancing-driven prepayments as a function of the incentive to refinance. r_t represents the current mortgage rate, WAC_t is the weighted average coupon of the MBS pool, and (x)_+ denotes the positive part function max(x,0). The term (r_t - WAC_t) captures the burnout effect (prepayments slow as high-coupon mortgages are removed), while (WAC_t - r_t)_+ captures refinancing incentive when current rates fall below pool coupon. Φ is the standard normal CDF, α scales overall prepayment speed, β controls sensitivity to burnout, γ measures refinancing intensity, and ε_t represents random shocks. This structure captures the path-dependent nature of refinancing behavior.

*Source: eq3/fixed_income_primer.txt*

---

## Equation: chi(z)

**Equation:**

$$
x(z) = \ln\left( \frac{\sqrt{1-2\rho z + z^2} + z - \rho}{1 - \rho} \right)
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/formulas.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## 1. Fundamental APT Pricing Formula (No Arbitrage)

**Equation:**

$$
\mathbb{E}[R_i] = r_f + \sum_{j=1}^k \beta_{ij} \lambda_j
$$

**Description:**
Variables: - r_f: Risk-free rate - \lambda_j: Risk premium (factor price) for factor j - \beta_{ij}: Factor sensitivity of asset i to factor j - \sum_{j=1}^k \beta_{ij} \lambda_j: Total systematic risk premium | Multi-factor linear model for expected returns.

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Vasicek Portfolio Loss Distribution

**Equation:**

$$
Loss = LGD * Phi( [Phi^{-1}(PD) - sqrt(rho) Z]/sqrt(1-rho) )
$$

**Description:**
Large homogeneous portfolio loss conditional on systematic factor Z. Integration over Z gives unconditional distribution. PD, LGD, rho determine tranche pricing.

*Source: eq3/minimax-primer/formulas.csv*

---

## Black-Litterman Formula

**Equation:**

$$
Pi = tau Sigma [ (tau Sigma)^{-1} Pi_eq + Omega^{-1} mu_view ]
$$

**Description:**
Bayesian blend of market equilibrium and views. tau: scaling parameter, Omega: view uncertainty. Result: posterior expected returns incorporating views with uncertainty.

*Source: eq3/minimax-primer/formulas.csv*

---

## Compound Poisson

**Equation:**

$$
dS_t = (r - lambda kappa) S_t dt + sigma S_t dW_t + S_t (Y - 1) dN_t
$$

**Description:**
Jumps with intensity lambda, jump size distribution Y. kappa = E[Y-1] compensates drift. Log-returns have compound Poisson-plus-normal distribution. | Compound Poisson jumps with intensity lambda. Jump size distribution: log Y ~ N(mu_J, sigma_J^2). Compensation lambda kappa ensures martingale: kappa = E[Y-1]. Captures fat tails.

*Source: eq3/minimax-primer/formulas.csv*

---

## Fast Fourier Transform (FFT)

**Equation:**

$$
C(k) = F^{-1}{ phi(u - i alpha) / [(alpha+1)(iu+alpha)] }(k)
$$

**Description:**
Carr-Madan formula via FFT. O(N log N) complexity vs O(N^2) quadrature. Strike spacing Deltak determines accuracy. Modifications for non-uniform grids.

*Source: eq3/minimax-primer/formulas.csv*

---

## Snowball (Accrual)

**Equation:**

$$
V_snowball = Notional * sum_{i=1}^n I(L < S_ti < H) * r_snow/n
$$

**Description:**
Coupon accrues when spot in range. Skewed payoff: benefits from range-bound markets. Early redemption feature. Valuation via PDE or MC.

*Source: eq3/minimax-primer/formulas.csv*

---

## Optimal Execution (Almgren-Chriss)

**Equation:**

$$
min_u E[ sum_{t=1}^T ( (S_t + eta dQ/dt) u_t - phi (dQ/dt)^2 ) ]
$$

**Description:**
Minimize execution cost and market impact. Trade-off: fast execution reduces price risk but increases impact. Closed-form solution: deterministic trajectory.

*Source: eq3/minimax-primer/formulas.csv*

---

## Yield to Call (YTC)

**Equation:**

$$
P = sum_{i=1}^{n_call} C_i/(1+y)^ti + 100/(1+y)^{T_call}
$$

**Description:**
Yield assuming call at first call date. Minimum of YTM and YTC is YTW. Used for yield comparison with call risk.

*Source: eq3/minimax-primer/formulas.csv*

---

## Key Rate Duration

**Equation:**

$$
D_{KR}(t) = -\frac{1}{P} \frac{\partial P}{\partial r_t}
$$

**Description:**
Key Rate Duration (or Partial Duration) measures the price sensitivity to a shift in a specific point (tenor) of the yield curve (e.g., 2y, 5y, 10y), while holding other rates constant. This allows for hedging non-parallel shifts (twists/turns) in the yield curve.

*Source: eq3/jules-primer/primer.csv*

---

## Tanaka's Formula

**Equation:**

$$
|B_t - a| = |B_0 - a| + \int_0^t \text{sgn}(B_s - a) dB_s + L_t^a
$$

**Description:**
Tanaka's formula extends Ito's lemma to non-differentiable functions specifically the absolute value function. This decomposition reveals that |B_t - a| consists of three components: initial displacement stochastic integral and local time that accounts for time spent at the critical level.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Credit Value Adjustment

**Equation:**

$$
CVA = (1-R) \int_0^T \mathbb{E}[e^{-rt} V_t^+ 1_{\tau=t}]
$$

**Description:**
CVA represents the present value of expected losses from counterparty default with recovery rate R and default time tau. | DVA is the present value of expected gains from the calculating party's own default.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Explicit Euler Scheme

**Equation:**

$$
u_i^{n+1} = u_i^n + \lambda(u_{i+1}^n - 2u_i^n + u_{i-1}^n)
$$

**Description:**
Conditionally stable (lambda <= 1/2) first-order accurate in time finite difference scheme for parabolic PDEs.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## RL Portfolio

**Equation:**

$$
V^*(s) = \max_a [ R(s a) + \gamma \sum_{s'} P(s'|s a) V^*(s') ]
$$

**Description:**
Bellman equation for portfolio allocation.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Valid when:**
Cov(r_t, r_{t-1}) < 0 due to bid-ask bounce.
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\delta = \frac{2}{\gamma} \ln\left(1 + \frac{\gamma}{\kappa}\right)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Mark-to-Market Valuation:

**Equation:**

$$
MTM(t) = (S_par(t,t_N) - S_contract) * RiskyAnnuity(t,t_N)
$$

*Source: eq3/cds-primer-content.txt*

---

## D^Hψ(t,u) = F(u,ψ(t,u)), ψ(0,u) = 0

**Equation:**

$$
where D^Hψ(t,u) = (1/Γ(1-H)) d/dt ∫_0^t (t-s)^{-H}ψ(s,u)ds
$$

**Description:**
The fractional Riccati equation governs the characteristic function exponent, where D^H denotes the fractional derivative operator. The nonlinear function F(u,v) = κ(θv - 1) + (1/2)σ^2v^2 + ρσuv incorporates model parameters and correlation ρ between price and volatility shocks. This fractional differential equation requires specialized numerical methods, typically involving discretization of the Volterra integral or Laplace transform techniques, fundamentally differing from classical ODE solutions.

*Source: eq3/rough-heston-primer.md*

---

## Equation

**Equation:**

$$
P(N_t = k) = (Λ(t)^k / k!)exp(-Λ(t)), where Λ(t) = ∫_0^t λ(s)ds
$$

*Source: eq3/credit_derivatives_intensity_models.txt*

---

## 3. Hull-White (Extended Vasicek) Model

**Equation:**

$$
dr_t = (\theta(t) - \kappa r_t) dt + \sigma dW_t^{\mathbb{Q}}
$$

**Description:**
**Variables:** - θ(t): Time-dependent function calibrated to fit initial curve - κ: Mean reversion speed - σ: Volatility - Other variables as in Vasicek | **Variables:** - \(\theta(t)\): Time-dependent function calibrated to fit initial yield curve

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## B. Risk-Neutral Density Extraction

**Equation:**

$$
f_{S_T}(K) = \frac{\partial^2 C}{\partial K^2} \bigg|_{K}
$$

**Description:**
**Variables:** - f_{S_T}(K): Risk-neutral density of terminal price at strike K - ∂²C/∂K²: Second derivative of call price with respect to strike

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Social Cost of Carbon

**Equation:**

$$
SCC = \int D'(C_t) (\partial C_t/\partial E_0) e^{-\rho t} dt
$$

**Description:**
Marginal damage of CO2 emissions.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
\text{Payoff}_i = N \left[ \frac{I_{T_i}}{I_{T_{i-1}}} - (1 + K) \right]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\hat{\rho} = \frac{2}{n(n-1)} \sum_{i<j} \hat{\rho}_{ij}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Simplified Post-Reset Valuation

**Equation:**

$$
P(t) = 1 \quad \text{if } t \text{ is immediately after a reset}
$$

**Description:**
Variables: ; Explanation: * Immediately after a reset, a floating rate note trades at par because the coupon is set to the market rate for the next period. | **Explanation:** Immediately after a reset, a floating rate note trades at par because the coupon is set to the market rate for the next period. | See markdown for detailed variables and explanation | Automatically extracted equation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
**Variables:**
- \(y_{t_i}\): Yield at key maturity \(t_i\)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
\text{Receiver Swaption} = A(0) \left[ K N(-d_2) - r_{FWD} N(-d_1) \right]
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## Equation

**Equation:**

$$
g = \frac{\kappa - \rho\sigma ui - d}{\kappa - \rho\sigma ui + d}
$$

*Source: eq3/heston-characteristic.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## Equation

**Equation:**

$$
[M]_t = lim_{n→∞} Σ_{k=0}^{⌊nt⌋-1} (M_{(k+1)/n} - M_{k/n})²
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
W_t^H = c_H ∫_{-∞}^t [(t-s)_+^{H-1/2} - (-s)_+^{H-1/2}] dW_s
$$

*Source: eq3/rough_volatility_primer.txt*

---

## 2. Swaption Pricing (Black-76)

**Equation:**

$$
C_{\text{swaption}} = P(0, T_e) \left( S_0 \Phi(d_1) - K \Phi(d_2) \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Monte Carlo Euler Scheme

**Equation:**

$$
S_{t+Deltat} = S_t + (r - q) S_t Deltat + sigma S_t sqrt(Deltat) Z
$$

**Description:**
First-order weak scheme for GBM. Z ~ N(0,1). Used for path simulation. Order of convergence: O(Deltat). Variance reduction improves efficiency. | **Variables:** - S_{t+\Delta t}: Simulated asset price at next time step - S_t: Current asset price - Δt: Time step size - Z ~ N(0,1): Standard normal random variable

*Source: eq3/minimax-primer/formulas.csv; eq3/minimax-primer/comprehensive-formulas.md*

---

## Excess Spread

**Equation:**

$$
ES = sum_{i=1}^n (AssetRate_i - LiabilityRate_i) * Balance_i
$$

**Description:**
Credit enhancement from spread between assets and liabilities. First loss protection. Reduces required subordination. Critical for mezzanine tranches.

*Source: eq3/minimax-primer/formulas.csv*

---

## Arbitrage Conditions

**Equation:**

$$
\partial w / \partial T \ge 0 and \partial^2 C / \partial K^2 \ge 0
$$

**Description:**
Calendar and butterfly no-arbitrage constraints.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
LR = \frac{\text{Incurred Losses}}{\text{Earned Premium}}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
H = 1/q_1 log(E[|Δ log σ|^q_1]/E[|Δ log σ|^q_2]) / log(Δ_1/Δ_2)
$$

*Source: eq3/rough_volatility_primer.txt*

---

## The relationship between consecutive base correlations follows from the additivity of expected losses:

**Equation:**

$$
E[L_{[0,K_j]}] = E[L_{[0,K_{j-1}]}] + E[L_{[K_{j-1},K_j]}]
$$

**Description:**
This recursive structure ensures no-arbitrage conditions across the capital structure. Base correlations typically exhibit an upward-sloping term structure, reflecting investors' preference for senior tranche protection and the corresponding risk premium. The interpolation method using cubic splines with monotonicity constraints maintains arbitrage-free conditions while providing smooth correlation surfaces for risk management applications.

*Source: eq3/CDO_Primer_Content.txt*

---

## Volterra process:

**Equation:**

$$
V_t = V_0 + ∫_0^t K^H(t-s)κ(θ - V_s)ds + ∫_0^t K^H(t-s)σ√V_s dW_s
$$

**Description:**
The variance process V_t follows a Volterra stochastic integral equation, where the fractional kernel induces non-Markovian dynamics. The parameter κ represents the speed of mean reversion, θ the long-term variance level, and σ the volatility of volatility. The fractional integration creates memory effects where past volatility shocks persist with power-law decay, generating the rough volatility paths consistent with empirical observations of log-periodic power spectra.

*Source: eq3/rough-heston-primer.md*

---

## Equation

**Equation:**

$$
EL_t^{(A,D)} = ∫_{A}^{D} (x - A) dF_L(x,t) + (D - A)[1 - F_L(D,t)]
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Equation

**Equation:**

$$
\mathbb{E}[V_{j+1} | S_j] = \sum_{k=1}^K \beta_k \phi_k(S_j)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Variance Swap Realized Variance

**Equation:**

$$
sigma_realized^2 = (252/N) sum_{i=1}^N [ln(S_ti/S_ti-1)]^2
$$

**Description:**
Realized variance is sum of squared log returns. Annualized by 252 trading days. Discretization introduces sampling bias. Robust estimator uses realized kernel.

*Source: eq3/minimax-primer/formulas.csv*

---

## Option on Variance Swap

**Equation:**

$$
V = int_0^T E[ Vega(K) (sigma^2 - K)^+ ] dK / int_0^T E[Vega(K)] dK
$$

**Description:**
Option on realized variance. Fair variance swap strike as weighted average of option prices. Static replication: variance swap = integral of binary options. Jensen adjustment for vol swap.

*Source: eq3/minimax-primer/formulas.csv*

---

## Cost of Carry (Storage)

**Equation:**

$$
F(t,T) = S_t e^{(r + \underbrace{u}_{\text{Storage}}) (T-t)}
$$

**Description:**
For commodities that are expensive to store (like Oil or Wheat), the futures price F must account for the cost of storage 'u'. Arbitrage: buy Spot, pay storage, sell Future. If Future > Spot * exp(r+u), risk-free profit. This explains why commodity curves can be in 'Contango' (Future > Spot).

*Source: eq3/jules-primer/primer.csv*

---

## Cost of Carry (Convenience Yield)

**Equation:**

$$
F(t,T) = S_t e^{(r + u - \underbrace{y}_{\text{Yield}}) (T-t)}
$$

**Description:**
Often, futures trade below the cost-of-carry model (Backwardation). This is explained by the 'Convenience Yield' y. It represents the non-monetary benefit of holding the physical inventory (e.g., to keep a refinery running during a shortage). It acts like a dividend yield. High scarcity \implies High Convenience Yield \implies Backwardation.

*Source: eq3/jules-primer/primer.csv*

---

## SABR Model

**Equation:**

$$
dF_t = sigma_t F_t^beta dW_t\quad dsigma_t = alpha sigma_t dZ_t
$$

**Description:**
The SABR model parameterizes forward dynamics with stochastic volatility. Beta controls backbone elasticity alpha is vol-of-vol and rho is spot-vol correlation.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Survival Probability

**Equation:**

$$
P(\tau > T \mid \mathcal{F}_t) = \exp\left(-\int_t^T \lambda(s) ds\right)
$$

**Description:**
The probability that no default occurs before time T given information at time t.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
dW_t^\mathbb{Q} = dW_t^\mathbb{P} + \frac{\mu - r}{\sigma} dt
$$

**Description:**
This theorem provides the relationship between Brownian motions under the physical measure \mathbb{P} and the risk-neutral measure \mathbb{Q}, where \mu is the drift under \mathbb{P} and r is the risk-free rate.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Deep Hedging

**Equation:**

$$
\min_\theta \rho( -H_T + \sum \delta_i^\theta \Delta S_{t_i} )
$$

**Description:**
End-to-end learned hedging strategy.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Least Squares Calibration

**Equation:**

$$
\min_\theta \sum w_i (C_i^{market} - C_i^{model}(\theta))^2
$$

**Description:**
Minimize squared pricing errors.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
r_{FIX} = \frac{1 - P(0,T_n)}{\sum_{i=1}^{n} \tau_i P(0,T_i)}
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## Equation

**Equation:**

$$
where M_t^Q = M_t - ∫₀^t (1/Z_s) d[Z,M]_s is a Q-local martingale.
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
L(H,σ^2) = -1/2π ∫_{-π}^π [log f(λ;H,σ^2) + I(λ)/f(λ;H,σ^2)] dλ
$$

*Source: eq3/rough_volatility_primer.txt*

---

## SABR Calibration Bootstrap Across Tenors

**Equation:**

$$
\{\alpha(T_i), \beta(T_i), \nu(T_i), \rho(T_i)\}_{i=1}^{N}
$$

**Description:**
SABR parameters can be made time-dependent to capture term structure of smile dynamics. Common approach involves calibrating separate SABR models to option surfaces at different maturities (e.g., 1Y, 2Y, 5Y, 10Y caps/floors). The parameters \alpha(T) and \nu(T) typically exhibit term structure: \alpha increases with maturity (longer-dated volatility), while \nu(T) may decrease (less vol-of-vol uncertainty for distant events). Correlation \rho(T) often remains relatively stable across tenors. Bootstrap requires ensuring smooth parameter transitions to avoid arbitrage opportunities between adjacent maturities.

*Source: eq3/sabr-model.txt*

---

## MBS Convexity Adjustment for Yield Curve Exposure

**Equation:**

$$
Convexity_{curve} = ∑[i=1 to K] (∂^2P/∂r_i∂r_j) × Cov(r_i, r_j)
$$

**Description:**
This equation extends convexity to multiple dimensions by capturing curvature in the full yield curve rather than a single yield level. The term ∂^2P/∂r_i∂r_j represents the cross-derivative with respect to rates at tenors i and j, and Cov(r_i, r_j) represents the covariance between those rates. For MBS, convexity exposure is not uniform across the curve but concentrated in mortgage rate tenors (typically 5-7 years). This multi-dimensional convexity measure is important for portfolios with MBS because yield curve rotations and butterfly trades affect value differently than parallel shifts.

*Source: eq3/fixed_income_primer.txt*

---

## Equation

**Equation:**

$$
P_{\text{swaption}} = P(0, T_e) \left( K \Phi(-d_2) - S_0 \Phi(-d_1) \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 1. Exact APT Pricing (Factor Pricing Portfolio)

**Equation:**

$$
\lambda = \mathbf{B}^{-1} (\boldsymbol{\mu} - r_f \mathbf{1})
$$

**Description:**
where \mathbf{B} is invertible (k factors and k assets with independent beta vectors)

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Vanna

**Equation:**

$$
dDelta/dsigma = dnu/dS = d^2V/(dS dsigma) = -d_1 phi(d_1)/sigma
$$

**Description:**
Cross-sensitivity: delta change with volatility. Important for exotic options and volatility trading. Can be positive or negative.

*Source: eq3/minimax-primer/formulas.csv*

---

## Vasicek Short Rate Distribution

**Equation:**

$$
r_T | r_t ~ N( r_t exp(-kappa(T-t)) + theta(1 - exp(-kappa(T-t)))
$$

**Description:**
Term Structure

*Source: eq3/minimax-primer/formulas.csv*

---

## Power Reverse Dual Currency (PRDC)

**Equation:**

$$
V_PRDC = Notional * max( product_{i=1}^n (S_ti/S_0)^{alpha_i}
$$

**Description:**
Structured Products

*Source: eq3/minimax-primer/formulas.csv*

---

## Black's Formula (Swaption)

**Equation:**

$$
V = \underbrace{A(0)}_{\text{Annuity}} [F_0 N(d_1) - K N(d_2)]
$$

**Description:**
The standard market model for pricing Swaptions (options to enter a swap). Unlike options on stocks (priced vs spot), swaptions are priced vs the Forward Swap Rate F_0. The numeraire is the Annuity Factor A(0) (the PV of 1bp paid on all swap coupon dates). It assumes the forward swap rate follows a log-normal distribution.

*Source: eq3/jules-primer/primer.csv*

---

## Kyle's Lambda (Market Impact)

**Equation:**

$$
\lambda = \frac{1}{2} \sqrt{\frac{\sigma_v^2}{\sigma_u^2}}
$$

**Description:**
Albert Kyle's model defines 'Market Liquidity' in an equilibrium with informed traders and noise traders. \lambda measures the price impact: how much the price moves per unit of order flow. It is proportional to the volatility of the asset's fundamental value \sigma_v (info asymmetry) and inversely proportional to the volatility of noise trading \sigma_u (camouflaging liquidity).

*Source: eq3/jules-primer/primer.csv*

---

## ADI (Alternating Direction Implicit)

**Equation:**

$$
(1 - \frac{\Delta t}{2} A_x) u^* = (1 + \frac{\Delta t}{2} A_y) u^n
$$

**Description:**
For multi-dimensional PDEs (e.g., Heston with S and v, or Basket options), standard Finite Difference matrices become massive and slow to invert. ADI splits the time step into substeps, solving implicitly in one dimension (x) while explicit in the other (y), then swapping. This reduces a complex 2D problem into a sequence of fast 1D tridiagonal matrix solves.

*Source: eq3/jules-primer/primer.csv*

---

## SVI Parameterization

**Equation:**

$$
\sigma_{BS}^2(k) = a + b(\rho(k-m) + \sqrt{(k-m)^2 + \sigma^2})
$$

**Description:**
Stochastic Volatility Inspired parameterization provides five-parameter fit to implied variance with guaranteed no-arbitrage conditions where k = ln(K/F) is log-moneyness.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
\nu = \frac{\partial V}{\partial \sigma} = SN'(d_1)\sqrt{T-t}
$$

**Description:**
Vega measures the rate of change of the option price with respect to changes in the volatility of the underlying asset. It is the same for both call and put options and is always positive, indicating that option prices increase with higher volatility. | **Variables:** - ∂V/∂σ: Partial derivative of option value with respect to volatility - √(T-t): Time to expiration - Other variables as defined

*Source: eq3/iflow-model-primer/derivatives-primer.csv; eq3/minimax-primer/comprehensive-formulas.md*

---

## Basel IRB

**Equation:**

$$
K = LGD [ N((G(PD) + \sqrt{R} G(0.999))/\sqrt{1-R}) - PD ] \cdot MA
$$

**Description:**
Internal ratings-based capital requirement.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Latency Arbitrage

**Equation:**

$$
\Pi = \sum \mathbb{1}_{fast}(t) |p_t^{stale} - p_t^{true}| q_t
$$

**Description:**
Profit from speed advantage.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Betting Against Beta

**Equation:**

$$
BAB = r_{low\beta}/\beta_{low} - r_{high\beta}/\beta_{high}
$$

**Description:**
Low-beta outperformance factor.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\nu = \frac{\partial V}{\partial \sigma} = S \sqrt{T-t} N'(d_1)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
R_t \approx \bar{R} + \sum_{k=1}^K \sqrt{\lambda_k} v_k f_{kt}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Annualized Basis:**
y = \frac{F - S}{S} \cdot \frac{365}{T-t}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
R_{model} = \alpha \cdot \text{Notional} \cdot \sigma_{model}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## FORWARD STARTING OPTION VALUE

**Equation:**

$$
V_{forward-start} = e^{-r(T-t_0)} E^Q[max(S_T/S_{t_0} - K, 0)]
$$

**Description:**
This equation gives the value of a forward-starting option that begins at time t_0 with strike price K set as a percentage of the asset price at t_0. The expectation E^Q is taken under the risk-neutral measure. The key feature is that the strike price is determined at the forward start date t_0 rather than at inception, making the moneyness unknown initially. The ratio S_T/S_{t_0} represents the return from the forward start date to maturity. This structure is fundamental to cliquet options, as each period essentially contains an embedded forward-starting option. The pricing depends on the joint distribution of S_{t_0} and S_T, requiring modeling of the entire price path rather than just the terminal distribution.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## Correlation Structure:

**Equation:**

$$
ρ_{i,j} = exp(-|T_i - T_j|/λ) * [α + (1-α) * exp(-min(T_i,T_j)/λ)]
$$

**Description:**
This parametric correlation function captures the empirical observation that nearby forward rates are highly correlated while distant rates decorrelate. The parameter λ controls the exponential decay rate, while α represents the asymptotic correlation level. Calibration to historical data typically yields λ ≈ 0.1-0.3 years^{-1} and α ≈ 0.3-0.5, though these parameters vary significantly across different market regimes and should be stress-tested for model risk.

*Source: eq3/lmm_content.txt*

---

## Average Life

**Equation:**

$$
AL = ∑[t=1 to N] t × CF_t^{principal} / ∑[t=1 to N] CF_t^{principal}
$$

**Description:**
AL represents the weighted average time to receipt of principal payments (both scheduled and unscheduled). CF_t^{principal} = SP_t + PP_t denotes total principal received at time t. Average life measures the timing uncertainty of MBS cash flows and is a key metric for assessing exposure to reinvestment risk and rate movements. Higher prepayment speeds reduce average life by accelerating principal return, while slower speeds extend average life. This metric is particularly important for asset-liability management and duration matching. | WAL represents the weighted average life with timing convention using mid-period cash flows. The factor (t - 0.5) assumes cash flows occur evenly throughout each period, providing a more precise measure than using period-end timing. For monthly cash flows, this adjustment shifts timing by approximately half a month. WAL is the standard convention used in MBS markets for reporting and comparing the maturity characteristics of different pools or tranches.

*Source: eq3/fixed_income_primer.txt*

---

## 1. Linear Factor Model (Single-Period)

**Equation:**

$$
R_i = \mathbb{E}[R_i] + \sum_{j=1}^k \beta_{ij} F_j + \epsilon_i
$$

**Description:**
Variables: - R_i: Return on asset i - \mathbb{E}[R_i]: Expected return on asset i - \beta_{ij}: Factor sensitivity (beta) of asset i to factor j - F_j: Return on factor j (zero-mean, E[F_j] = 0) - \epsilon_i: Idiosyncratic return to asset i (zero-mean, E[\epsilon_i] = 0) - k: Number of systematic factors

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Pre-Averaging Estimator

**Equation:**

$$
hat theta^2 = (1/g bar g) sum_{j=1}^{m-1} g(j/m) (X_{j+1} - X_j)^2
$$

**Description:**
Robust estimator for noisy high-frequency data. Pre-average observations. Asymptotically efficient. Combines realized kernel and OIV.

*Source: eq3/minimax-primer/formulas.csv*

---

## Euler-Maruyama Scheme

**Equation:**

$$
S_{t+\Delta t} = S_t + rS_t\Delta t + \sigma S_t \sqrt{\Delta t} Z_t
$$

**Description:**
First-order approximation for SDEs converging strongly with rate O(\sqrt{\Delta t}) and weakly with rate O(\Delta t). | Standard discretization for simulating SDEs.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv; eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Control Variate Estimator

**Equation:**

$$
\hat{V}_{cv} = \hat{V}_{MC} + \beta(C_{theory} - \hat{C}_{MC})
$$

**Description:**
Optimal variance reduction using correlated payoff with known theoretical price. Beta = -Cov(\hat{V}

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## DVA

**Equation:**

$$
DVA = (1-R_{self}) \int_0^T \mathbb{E}[(V_t)^-] dPD_{self}(t)
$$

**Description:**
Debit valuation adjustment for own default risk.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Autoencoder Yield

**Equation:**

$$
z = f_{enc}(y; \theta_{enc})
\hat{y} = f_{dec}(z; \theta_{dec})
$$

**Description:**
Yield curve dimensionality reduction.

*Source: eq3/gemini-primer/gemini_primer.md; eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
LCR = \frac{HQLA}{\text{Net Cash Outflows}_{30-day}} \ge 100\%
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## **Black-76 Formula (Futures Options)**

**Equation:**

$$
C(F_t, K, T, r, \sigma) = e^{-r(T-t)} [F_t \Phi(d_1) - K \Phi(d_2)]
$$

**Description:**
Automatically extracted equation

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas.csv; eq3/iflow-primer/formulas_part2.md*

---

## 1. Delta (First-Order Price Sensitivity)

**Equation:**

$$
\Delta = \frac{\partial V}{\partial S} = \Phi(d_1) \text{ (call)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
F_0 = S_0 e^{(r_d - r_f)T} \quad \text{(continuously compounded)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Ito's Lemma (1D)

**Equation:**

$$
dV = [dV/dt + mu dV/dS + 1/2 sigma^2 S^2 d^2V/dS^2] dt + sigma S dV/dS dW
$$

**Description:**
Fundamental theorem for stochastic differentiation. dt term includes drift adjustment. dW term is diffusion. Applied to derive Black-Scholes PDE.

*Source: eq3/minimax-primer/formulas.csv*

---

## Arbitrage Pricing Theory

**Equation:**

$$
R_i = r_f + beta_i^1 F_1 + beta_i^2 F_2 + ... + beta_i^k F_k + epsilon_i
$$

**Description:**
Multi-factor linear model. No arbitrage implies linear factor structure. Factor loadings beta estimated by regression. Number of factors determined empirically.

*Source: eq3/minimax-primer/formulas.csv*

---

## Realized Kernel

**Equation:**

$$
hat sigma^2 = sum_{k=-H}^H k(R) 1/H sum_{t=k+1}^{n-k} r_t r_{t+k}
$$

**Description:**
Noise-robust realized variance estimator. Weights k(R) with Bartlett kernel. Optimal bandwidth H = c n^{1/3}. Consistent under market microstructure noise.

*Source: eq3/minimax-primer/formulas.csv*

---

## Yield Spread

**Equation:**

$$
S = y_{bond} - \underbrace{y_{benchmark}}_{\text{Govt or Swap}}
$$

**Description:**
The Yield Spread measures the risk premium of a bond over a risk-free benchmark (like Treasuries) or a funding benchmark (like Swaps). It compensates investors for credit risk, liquidity risk, and option risk. Widening spreads indicate market stress or deteriorating credit quality.

*Source: eq3/jules-primer/primer.csv*

---

## Ultima

**Equation:**

$$
\text{Ultima} = \frac{\partial \text{Volga}}{\partial \sigma}
$$

**Description:**
Ultima is the sensitivity of Volga to changes in volatility. It is a third-order Greek used to risk-manage positions that are essentially betting on the 'Vol of Vol'.

*Source: eq3/jules-primer/primer.csv*

---

## Martingale Property

**Equation:**

$$
\mathbb{E}[M_t \mid \mathcal{F}_s] = M_s \text{ for } 0 \leq s \leq t
$$

**Description:**
A stochastic process M_t is a martingale if its conditional expectation equals its current value given the information up to any earlier time. In finance this property represents fair games where the best prediction of future wealth is current wealth.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
\rho = \frac{\partial V}{\partial r} = \pm Ke^{-r(T-t)}N(\pm d_2)
$$

**Description:**
Rho measures the rate of change of the option price with respect to changes in the risk-free interest rate. For call options, it is positive, and for put options, it is negative.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Unknown

**Equation:**

$$
s(t,T) = \frac{1}{T-t}\ln\left( \frac{1-R}{1-\mathbb{P}(\tau > T)} \right)
$$

**Description:**
Where R is the recovery rate. This equation relates the credit spread s(t,T) to the default probability and recovery rate.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## VECM

**Equation:**

$$
\Delta Y_t = \Pi Y_{t-1} + \sum \Gamma_i \Delta Y_{t-i} + \epsilon_t
$$

**Description:**
Vector error correction model.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Johansen Trace

**Equation:**

$$
\lambda_{trace}(r) = -T \sum_{i=r+1}^n \ln(1 - \hat{\lambda}_i)
$$

**Description:**
Test for cointegrating relationships.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Kupiec POF Test

**Equation:**

$$
LR_{POF} = -2\ln((1-p)^{n-x} p^x / (1-\hat{p})^{n-x} \hat{p}^x)
$$

**Description:**
VaR proportion of failures test.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
L^2(S, t) = \frac{\sigma_{LV}^2(S, t)}{\mathbb{E}[v_t | S_t = S]}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
TRS_{payer} = (S_T - S_0) + \sum Dividends - \sum (L + spread) \cdot dt
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\min_{q_1, ..., q_n} \sum_{i=1}^n [p_i(q_i) \cdot q_i + c_i(q_i)]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
r_{staking} = \frac{Rewards}{Staked} \cdot \frac{365}{period}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Variables:**
- \(r_s^{\text{real}}\): Real short rate process
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## **Delta**

**Equation:**

$$
\Delta_C = \frac{\partial C}{\partial S} = e^{-q(T-t)} \Phi(d_1)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## CLIQUET OPTION PAYOFF

**Equation:**

$$
V_{cliquet} = e^{-rT} \notag_{i=1}^{n} max(min(R_i, Cap), Floor)
$$

**Description:**
This equation represents the terminal payoff of a cliquet option, which is a series of forward-starting options with reset dates. The variable R_i denotes the return over the i-th period, calculated as (S_{t_i}/S_{t_{i-1}} - 1), where S_{t_i} is the asset price at reset date t_i. The Cap and Floor parameters provide upper and lower bounds on each period's return. The summation indicates that the option pays the sum of capped and floored returns across all n periods, discounted to present value using the risk-free rate r. This structure provides exposure to multiple periods while limiting both upside and downside participation in each individual period.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## **Explicit Scheme:**

**Equation:**

$$
V_i^{j+1} = \alpha_i V_{i-1}^j + \beta_i V_i^j + \gamma_i V_{i+1}^j
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
\lambda = 2 t_{\nu+1}\left( -\sqrt{\frac{(\nu+1)(1-\rho)}{1+\rho}} \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Expected Shortfall (CVaR)

**Equation:**

$$
CVaR_alpha = E[L | L > VaR_alpha] = mu + sigma/(1-alpha) phi(z_alpha)
$$

**Description:**
Coherent risk measure (subadditive). Average loss beyond VaR. For normal: CVaR = mu + (sigma/(1-alpha)) phi(z_alpha). More conservative than VaR. Regulatory capital standard.

*Source: eq3/minimax-primer/formulas.csv*

---

## Eigenvalue Decomposition

**Equation:**

$$
A = V \underbrace{\Lambda}_{\text{Diagonal Eigenvalues}} V^{-1}
$$

**Description:**
Decomposes a square matrix A into eigenvectors V and eigenvalues \Lambda. In finance, this is the basis of Principal Component Analysis (PCA), used to identify the main drivers of risk in a yield curve (Level, Slope, Curvature) or a portfolio of equities.

*Source: eq3/jules-primer/primer.csv*

---

## Swap Duration

**Equation:**

$$
D_{swap} \approx D_{fixed} - \underbrace{D_{float}}_{\approx 0}
$$

**Description:**
The duration of a receiver swap (receive fixed, pay float) is approximately equal to the duration of the fixed leg, because the floating leg has negligible duration (resets to par). Thus, entering a receiver swap is equivalent to buying a long-term bond funded by short-term borrowing.

*Source: eq3/jules-primer/primer.csv*

---

## Large Pool Model (Vasicek)

**Equation:**

$$
F(x) = \Phi\left( \frac{\sqrt{\rho}Y - \Phi^{-1}(p)}{\sqrt{1-\rho}} \right)
$$

**Description:**
This model provides an analytical approximation for the loss distribution of a large, homogeneous portfolio of loans. It assumes asset values are driven by a single common factor Y (market risk) and idiosyncratic risk. \rho is the correlation to the factor. It is the theoretical basis for the Basel II/III capital charges for credit risk.

*Source: eq3/jules-primer/primer.csv*

---

## Distance to Default

**Equation:**

$$
DD = \frac{\ln(V_0/F) + (\mu - \sigma_V^2/2)T}{\sigma_V \sqrt{T}}
$$

**Description:**
Distance to default measures how many standard deviations firm assets are from default threshold. | Key metric in KMV model for default probability estimation.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv; eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Quanto Option

**Equation:**

$$
C_{quanto} = e^{-r_d T} \mathbb{E}^{\mathbb{Q}_d}[(S_T^f - K)^+]
$$

**Description:**
Foreign asset option with domestic currency payoff.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
V(t, S) = e^{-r(T-t)} \mathbb{E}^{\mathbb{Q}}[ \Phi(S_T) | S_t = S ]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
Subject to cumulative constraints: Q_{min} \le \sum q_i \le Q_{max}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Variables:**
*   s_k = x_{k+1} - x_k
*   y_k = \nabla f_{k+1} - \nabla f_k
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
d_1 = \frac{\ln(S_t/K) + (r + \sigma^2/2)(T-t)}{\sigma \sqrt{T-t}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## 2. Forward Rate Agreement (FRA)

**Equation:**

$$
V_{FRA} = \delta \left( F_{\text{actual}} - F_{\text{contract}} \right) P(0, T)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 1. CAPM as Single-Factor APT Special Case

**Equation:**

$$
R_i = \mathbb{E}[R_i] + \beta_i (R_M - \mathbb{E}[R_M]) + \epsilon_i
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Key Rate Duration

**Equation:**

$$
dP/dy_ti approx - [P(y_ti+Delta) - P(y_ti-Delta)]/(2 Delta) * (1/P)
$$

**Description:**
Sensitivity to specific yield curve points while others held constant. Decomposes total duration into term structure components. Essential for curve hedging.

*Source: eq3/minimax-primer/formulas.csv*

---

## Volga (Vomma)

**Equation:**

$$
nuGamma = d^2V/dsigma^2 = dnu/dsigma = S_t phi(d_1) d_1 d_2 sqrt(T-t)
$$

**Description:**
Second-order vol sensitivity. Gamma of vega. Measures convexity of value w.r.t. volatility. Positive for long options.

*Source: eq3/minimax-primer/formulas.csv*

---

## Ito Isometry

**Equation:**

$$
\mathbb{E}\left[\left(\int_0^t H_s dW_s\right)^2\right] = \mathbb{E}\left[\int_0^t H_s^2 ds\right]
$$

**Description:**
This fundamental identity ensures the Ito integral is well-defined for processes H in L^2 space. The isometry extends to cross-moments and enables definition of stochastic integration as an isometry between L^2 spaces.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Carr-Madan Formula

**Equation:**

$$
C(k) = \frac{e^{-\alpha k}}{\pi} \int_0^\infty e^{-ivk} \psi(v) dv
$$

**Description:**
Characteristic function approach enabling option pricing via Fourier inversion when only phi is known.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Merton Jump-Diffusion

**Equation:**

$$
\frac{dS_t}{S_{t-}} = (\mu - \lambda k) dt + \sigma dW_t + (e^J - 1) dN_t
$$

**Description:**
Models sudden jumps in asset prices using Poisson process.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
h_t = LSTM(h_{t-1}, x_t; \theta)
\hat{\sigma}_{t+1}^2 = W_o h_t + b_o
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
Var(Î_strat) = (1/n) Σ_{k=1}^K p_k σ_k² - (1/n) Σ_{k=1}^K p_k (μ_k - μ)²
$$

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## Equation

**Equation:**

$$
Price_{market}[a,d] = ∫(0 to T) e^{-rt} dE^Q[L_{[a,d]}(t); ρ_{a,d}]
$$

*Source: eq3/CDO_Primer_Content.txt*

---

## CDS Protection Leg:

**Equation:**

$$
DLPV = (1-R) * integral_{t_V}^{t_N} Z(t_V,s) * Q(t_V,s) * lambda(s) ds
$$

*Source: eq3/cds-primer-content.txt*

---

## Equation

**Equation:**

$$
The covariance matrix Σ for n assets has elements
Σ_{ij} = σ_i σ_j ρ_{ij}
$$

*Source: eq3/exotic-options-basket-rainbow.txt*

---

## Equation

**Equation:**

$$
P(L_t ≤ x) = Φ( \frac{√{1-ρ} Φ^{-1}(x/(1-R)) - √{ρ} Φ^{-1}(h)}{√{ρ}} )
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Equation

**Equation:**

$$
PV(Protection) = N_0 ∫_0^T E[e^{-∫_0^t (r_s + λ_s) ds}] dEL_t^{(A,D)}
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## **Cox Process Framework (Doubly Stochastic):**

**Equation:**

$$
\lambda_t = \lambda(t, X_t) \text{ where } X_t \text{ is a state vector}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
S_0 = \frac{P(0, T_a) - P(0, T_b)}{\sum_{i=a+1}^b \delta_i P(0, T_i)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Malliavin Greeks

**Equation:**

$$
Delta = (1/S_0) E[ Payoff * H_1 ] where H_1 = int_0^T (dS_s/S_s) circ dW_s
$$

**Description:**
Integration by parts in Wiener space. Stochastic weight H_1 replaces finite difference. Pathwise computation for discontinuous payoffs. Efficient for path-dependent options.

*Source: eq3/minimax-primer/formulas.csv*

---

## Levy-Khintchine Formula

**Equation:**

$$
psi(u) = iu a - 1/2 u^2 sigma^2 + int_R (e^{iux} - 1 - iux I_{|x|<1}) nu(dx)
$$

**Description:**
Characteristic exponent of Levy process. Drift a, Gaussian sigma^2, jump measure nu. Levy-Khintchine triplet (a, sigma^2, nu) completely characterizes process.

*Source: eq3/minimax-primer/formulas.csv*

---

## GAN Market Sim

**Equation:**

$$
\min_G \max_D \mathbb{E}[\log D(x)] + \mathbb{E}[\log(1 - D(G(z)))]
$$

**Description:**
Generative model for synthetic market scenarios.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## GARCH(1 1)

**Equation:**

$$
\sigma_t^2 = \omega + \alpha \epsilon_{t-1}^2 + \beta \sigma_{t-1}^2
$$

**Description:**
Conditional heteroskedasticity model.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## BFGS

**Equation:**

$$
B_{k+1} = B_k + y_k y_k^T/(y_k^T s_k) - B_k s_k s_k^T B_k/(s_k^T B_k s_k)
$$

**Description:**
Quasi-Newton Hessian approximation.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
S^* = \frac{\gamma K}{\gamma - 1}, \quad \gamma = \frac{2r}{\sigma^2}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
CV = \frac{1}{K} \sum_{k=1}^K \|y_{test}^{(k)} - \hat{y}^{(k)}\|^2
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## 1. Jarrow-Yildirim Model

**Equation:**

$$
dn_t = (\theta_n(t) - \kappa_n n_t) dt + \sigma_n dW_t^{n,\mathbb{Q}}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## The Kunita-Watanabe inequality provides bounds for stochastic integrals:

**Equation:**

$$
|∫₀^t H_s K_s d[X,Y]_s| ≤ (∫₀^t H_s² d[X]_s)^{½} (∫₀^t K_s² d[Y]_s)^{½}
$$

**Description:**
The martingale representation theorem states that for any square-integrable martingale M_t adapted to the filtration generated by Brownian motion W_t, there exists a unique predictable process H_t such that:

*Source: eq3/stochastic_calculus_primer.md*

---

## where X̄ = (1/N) Σ_{k=1}^N X(k). The second-order moment matching incorporates covariance adjustment:

**Equation:**

$$
X̃^(2)(k) = Σ^{1/2}(Σ^{-1/2}Σ̄Σ^{-1/2})^{-1/2}Σ^{-1/2}[X(k) - X̄]
$$

**Description:**
with Σ̄ = (1/N) Σ_{k=1}^N X(k)X(k)^T - X̄X̄^T. The asymptotic variance for normal distributions is:

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## Equation

**Equation:**

$$
d_{1,2} = \frac{\ln(F_t/K) \pm \sigma^2(T-t)/2}{\sigma \sqrt{T-t}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
u = e^{\sigma \sqrt{2\Delta t}}, \quad d = e^{-\sigma \sqrt{2\Delta t}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 1. Value at Risk (VaR)

**Equation:**

$$
\text{VaR}_\alpha = -\inf\{ x : F_L(x) \ge \alpha \} = F_L^{-1}(\alpha)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 1. Radon-Nikodym Derivative

**Equation:**

$$
\frac{d\mathbb{Q}^T}{d\mathbb{Q}} = \frac{P(t,T) B_0}{P(0,T) B_t}
$$

**Description:**
**Variables:** - \mathbb{Q}^T: T-forward measure (bond as numeraire) - \mathbb{Q}: Risk-neutral measure (money market as numeraire) - P(t,T): Zero-coupon bond price - B_t: Money market account value - B_0 = 1: Initial money market value

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Convexity

**Equation:**

$$
C = (1/P) d^2P/dy^2 = (1/P) sum_{i=1}^n T_i(T_i+1) CF_i/(1+y)^(T_i+2)
$$

**Description:**
Second-order price sensitivity to yield. Positive convexity beneficial: prices increase more when yields fall than decrease when yields rise. Captures curvature.

*Source: eq3/minimax-primer/formulas.csv*

---

## Swap Spread

**Equation:**

$$
SS = R_{swap} - \underbrace{Y_{treasury}}_{\text{Risk-Free Proxy}}
$$

**Description:**
The Swap Spread is the difference between the swap rate and the yield of a government bond of the same maturity. It reflects the credit risk of the interbank market relative to the government, as well as supply/demand dynamics for hedging and balance sheet constraints.

*Source: eq3/jules-primer/primer.csv*

---

## Constant Dividend Commodity (Lease Rate)

**Equation:**

$$
F(t,T) = S_t e^{(r - \underbrace{\delta}_{\text{Lease Rate}}) (T-t)}
$$

**Description:**
For investment commodities like Gold, storage is negligible, but lending markets exist. \delta is the Gold Lease Rate. Central banks or holders lend gold to earn \delta. It is analogous to the dividend yield in equities.

*Source: eq3/jules-primer/primer.csv*

---

## Volga (Vomit)

**Equation:**

$$
\frac{\partial^2 V}{\partial \sigma^2} = \nu \frac{d_1 d_2}{\sigma}
$$

**Description:**
Volga (or Vol Gamma) measures the convexity of the option price with respect to volatility. It is the rate of change of Vega. Long Volga positions profit from volatility of volatility. It is essential for hedging exotic options and for managing the risk of the 'Smile' (the curvature of the implied vol surface).

*Source: eq3/jules-primer/primer.csv*

---

## **Rho**

**Equation:**

$$
\rho_C = \frac{\partial C}{\partial r} = K (T-t) e^{-r(T-t)} \Phi(d_2)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## The Ito integral for a predictable process H_t with respect to Brownian motion W_t is defined as:

**Equation:**

$$
∫₀^t H_s dW_s = lim_{n→∞} Σ_{k=0}^{n-1} H_{t_k} (W_{t_{k+1}} - W_{t_k})
$$

**Description:**
This limit exists in L² when E[∫₀^t H_s² ds] < ∞. The Ito isometry provides:

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
df_t = (1-\beta)\alpha^2 f_t^{2\beta-1} dt + \alpha f_t^{\beta} dW_t^F
$$

*Source: eq3/sabr-model.txt*

---

## Moment-Generating Function

**Equation:**

$$
M(t) = E[F_t] = \exp\left( (1-\beta)\alpha^2 \int_0^t F_s^{2\beta-2} ds \right) F_0
$$

**Description:**
The first moment provides martingale condition for forward measure pricing. Under normal SABR (\beta=0), E[F_t] = F_0 since the drift term vanishes, confirming martingale property. For \beta \neq 0, the expectation depends on volatility path through F_t^{2\beta-2} term. Higher moments involve increasingly complex path-dependent integrals, explaining the need for approximation schemes beyond characteristic function approaches.

*Source: eq3/sabr-model.txt*

---

## Volatility Process Path Integral

**Equation:**

$$
\alpha_T = \alpha_0 \exp\left( \nu \int_0^T dW_t^\alpha - \frac{\nu^2}{2} T \right)
$$

**Description:**
Geometric Brownian motion for volatility yields lognormal distribution: \ln(\alpha_T/\alpha_0) \sim N(-\nu^2 T/2, \nu^2 T). The term -\nu^2 T/2 ensures E[\alpha_T] = \alpha_0, making volatility a martingale under the forward measure. This specification lacks mean reversion, contrasting with Heston model. While theoretically problematic (volatility can grow arbitrarily), empirically reasonable over calibration horizons. For longer maturities, some implementations replace with mean-reverting variants.

*Source: eq3/sabr-model.txt*

---

## Autocallable Note

**Equation:**

$$
V_autocall = Notional - sum_{i=1}^n I(S_ti >= K_i) Coupon_i + contingent
$$

**Description:**
Knock-in contingent coupon. Autocall if underlying above barrier. Principal return at maturity if no autocall. Capital protection with digital features.

*Source: eq3/minimax-primer/formulas.csv*

---

## Commodity Index (Total Return)

**Equation:**

$$
TR_t = TR_{t-1} * F_t/F_{t-1} * exp(-(r_collateral + roll yield) Deltat)
$$

**Description:**
Total return of commodity futures index. Roll yield from contango/backwardation. Collateral return on margin posted. Spot return not included.

*Source: eq3/minimax-primer/formulas.csv*

---

## Vasicek

**Equation:**

$$
dr_t = \underbrace{a(b-r_t)}_{\text{Mean Reversion}} dt + \sigma dW_t
$$

**Description:**
The Vasicek model is an Ornstein-Uhlenbeck process for the short rate r_t. It introduces mean reversion: if rates are high, the drift is negative; if low, positive. This pulls rates towards the long-term mean 'b' with speed 'a'. Its main flaw is that it is Gaussian, allowing interest rates to become negative, which was considered a theoretical defect until recent years (post-2015) when negative rates became a reality in Europe/Japan.

*Source: eq3/jules-primer/primer.csv*

---

## SABR-LMM

**Equation:**

$$
dL_k = \alpha_k L_k^\beta dW_L, \quad d\alpha_k = \nu \alpha_k dW_\alpha
$$

**Description:**
A hybrid model combining the LMM structure (for evolving the yield curve) with the SABR volatility model (for capturing the smile of each rate). This is essential for pricing complex interest rate exotics like Bermudan Swaptions or TARNs where both the correlation structure of the curve and the volatility smile of each rate matter significantly.

*Source: eq3/jules-primer/primer.csv*

---

## Call Theta

**Equation:**

$$
\Theta = -\frac{SN'(d_1)\sigma}{2\sqrt{T-t}} - rKe^{-r(T-t)}N(d_2)
$$

**Description:**
Theta measures time decay - the rate at which option value decreases as expiration approaches. | Put theta shows similar time decay characteristics but adjusted for put option payoffs.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Expected Shortfall

**Equation:**

$$
\text{ES}_\alpha(L) = \mathbb{E}[L \mid L \geq \text{VaR}_\alpha(L)]
$$

**Description:**
ES measures the expected loss in the worst (1-\alpha)% of cases. It is coherent and provides better tail risk information.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Equation

**Equation:**

$$
L = \frac{\Delta x \cdot \sqrt{P_a \cdot P_b}}{\sqrt{P_b} - \sqrt{P_a}}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## **Gap Options**

**Equation:**

$$
C_{\text{gap}} = S_t e^{-q(T-t)} \Phi(d_1) - K_2 e^{-r(T-t)} \Phi(d_2)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
p_u = 1/6 + (α²j²Δt² - αjΔt)/2
p_m = 2/3 - α²j²Δt²
p_d = 1/6 + (α²j²Δt² + αjΔt)/2
$$

*Source: eq3/hull-white-primer.txt*

---

## Equation

**Equation:**

$$
For Ito processes dX_t = μ_t^X dt + σ_t^X dW_t and dY_t = μ_t^Y dt + σ_t^Y dW_t:
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Characteristic Function of SABR Model

**Equation:**

$$
\phi(u,t) = E[e^{iu \ln F_t}] = \exp\left( iu \ln F_0 - \frac{u^2 \sigma^2 t}{2} \right)
$$

**Description:**
Under normal SABR (\beta=0), the characteristic function takes lognormal form with effective volatility \sigma = \sqrt{\frac{1}{t}\int_0^t \alpha_s^2 ds}. For \beta=1 (lognormal SABR), the characteristic function becomes \phi(u,t) = \exp\left(iu \ln F_0 - \frac{u^2 \alpha^2 t}{2} \right) when \nu=0, recovering Black-Scholes. For general \beta, exact characteristic function lacks closed form, requiring approximation methods. The characteristic function enables pricing via Fourier transform techniques.

*Source: eq3/sabr-model.txt*

---

## Binomial Tree for American Options:

**Equation:**

$$
V_n^i = max{G(S_n^i), e^{-rΔt}[pV_{n+1}^{i+1} + (1-p)V_{n-1}^{i+1}]}
$$

**Description:**
This represents the backward induction algorithm for American option pricing where V_n^i is the option value at node n and time step i, G(S_n^i) is the immediate exercise payoff, and the second term represents the continuation value. The probability p of upward movement is calibrated as p = (e^{(r-q)Δt} - d)/(u - d) where u and d are the upward and downward multipliers satisfying ud = 1. For American options, this algorithm must check at each node whether immediate exercise is optimal, making the pricing problem a free boundary problem. The early exercise premium is implicitly captured through the max operator, which enforces the constraint that the American option value cannot fall below its intrinsic value. The convergence rate is O(1/N) where N is the number of time steps, but can be improved to O(1/N^2) using Richardson extrapolation. The tree structure naturally handles the early exercise feature by allowing comparison between exercise and continuation values at every node before expiration.

*Source: eq3/tree_methods_primer.txt*

---

## **Yield to Maturity (YTM) Equation:**

**Equation:**

$$
P = \sum_{i=1}^n \frac{c_i}{(1+y)^{T_i-t}} + \frac{1}{(1+y)^{T_n-t}}
$$

**Description:**
**Variables:** - y: Yield to maturity (annualized, discrete compounding) - T_i-t: Time to i-th cash flow in years - 1+y: Gross return per period | **Variables:** - \(y\): Yield to maturity (annualized, discrete compounding) | See markdown for detailed variables and explanation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas_clean.csv*

---

## Total Return

**Equation:**

$$
TR = \underbrace{(1+R_1)(1+R_2)...(1+R_n)}_{\text{Wealth Index}} - 1
$$

**Description:**
Total Return reflects the cumulative growth of an investment over a specific horizon, assuming all income is reinvested. It provides a clearer picture of wealth generation than simple price appreciation.

*Source: eq3/jules-primer/primer.csv*

---

## Black-Cox Model (First Passage)

**Equation:**

$$
\tau = \inf \{ t > 0 : \underbrace{V_t \le H(t)}_{\text{Barrier Breach}} \}
$$

**Description:**
An extension of the Merton model. While Merton checks default only at maturity, Black-Cox models default as the first time the asset value V_t touches a lower barrier H(t) (representing bond covenants or safety thresholds). This allows for early default, making the model more realistic for pricing corporate bonds and CDS.

*Source: eq3/jules-primer/primer.csv*

---

## Riccati Equation

**Equation:**

$$
\frac{\partial B}{\partial \tau} = 1 - \kappa B - \frac{1}{2}\sigma^2 B^2
$$

**Description:**
This governs the B coefficient in affine term structure models where tau = T - t.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## VaR Definition

**Equation:**

$$
\text{VaR}_\alpha(L) = \inf\{l \in \mathbb{R} : P(L \leq l) \geq \alpha\}
$$

**Description:**
Value at Risk represents the maximum loss not exceeded with probability alpha. It is a quantile of the loss distribution.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Importance Sampling

**Equation:**

$$
\hat{V}_{IS} = \frac{1}{N} \sum_{i=1}^N h(X_i) \frac{f(X_i)}{q(X_i)}
$$

**Description:**
Technique crucial for rare event simulation where standard Monte Carlo is inefficient. Optimal q*(x) propto |h(x)|f(x).

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Kou Jump-Diffusion

**Equation:**

$$
\nu(dx) = \lambda [p \eta_1 e^{-\eta_1 x} + (1-p) \eta_2 e^{\eta_2 |x|}] dx
$$

**Description:**
Double exponential jumps.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
P_\infty(S) = \frac{K}{1 - \gamma} \left( \frac{S}{S^*} \right)^\gamma, \quad S > S^*
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## **Price under Black-Scholes**

**Equation:**

$$
C = S_t e^{-q(T-t)} \left( e^{-q\tau} \Phi(d_1) - e^{-r\tau} \alpha \Phi(d_2) \right)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
\hat{\sigma} = \sqrt{\sigma_1^2 + \sigma_2^2 - 2\rho\sigma_1\sigma_2}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## 4. Monte Carlo Simulation (Least-Squares for American Options)

**Equation:**

$$
V_j = \max\left( \text{Exercise}_j, e^{-r\Delta t} \mathbb{E}[V_{j+1} | S_j] \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
F(t, T, T+\delta) = \frac{1}{\delta} \left( \frac{P(t, T)}{P(t, T+\delta)} - 1 \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 1. Caplet/Floorlet Pricing (Black-76)

**Equation:**

$$
C_{\text{caplet}} = P(0, T_i) \left( F(0, T_{i-1}, T_i) \Phi(d_1) - K \Phi(d_2) \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Stochastic Correlation Model

**Equation:**

$$
d rho_t = kappa_rho (theta_rho - rho_t) dt + sigma_rho sqrt(1-rho_t^2) dW_t
$$

**Description:**
Correlation itself follows mean-reverting process. Prevents static correlation assumption. Used in multi-asset pricing with dynamic dependence.

*Source: eq3/minimax-primer/formulas.csv*

---

## Wishart Stochastic Volatility

**Equation:**

$$
d\Sigma_t = \sqrt{\Sigma_t} dW_t Q + Q^T dW_t^T \sqrt{\Sigma_t} + \Omega dt
$$

**Description:**
For multi-asset options, modeling the correlation matrix dynamics is hard. The Wishart process models the entire covariance matrix \Sigma_t as a stochastic process. Its mathematical construction ensures that the matrix \Sigma_t remains positive semi-definite at all times (a valid covariance matrix), which is difficult to guarantee with ad-hoc correlation models.

*Source: eq3/jules-primer/primer.csv*

---

## Ito Integral for Simple Processes

**Equation:**

$$
I_t = \int_0^t H_s dW_s = \sum_{i=0}^{n-1} H_{t_i}(W_{t_{i+1}} - W_{t_i})
$$

**Description:**
For simple predictable processes the Ito integral is defined as a sum of discrete increments weighted by the process values. The non-anticipating property ensures H_{t_i} is known before the increment occurs.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
V = SN(d_1) - Ke^{-r(T-t)}N(d_2) + \sigma S \sqrt{T-t} N'(d_1) \frac{g}{r}
$$

**Description:**
Where g is the growth rate of the underlying asset. This formula extends the Black-Scholes model to incorporate the value of growth opportunities, which is particularly relevant for real options in investment decisions.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## 4. Merton Jump Diffusion

**Equation:**

$$
\frac{dS_t}{S_t} = (r-q-\lambda \bar{\mu}) dt + \sigma dW_t + (J_t - 1) dN_t
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
\text{Payer Swaption} = A(0) \mathbb{E}^A[\max(r_{T_S}(T_S,T_E) - K, 0)]
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## For the exponential volatility structure, the forward rate dynamics can be reduced to:

**Equation:**

$$
dr(t) = [∂f(0,t)/∂t + λf(0,t) + η(t)^2/λ (1-exp(-λt)) - λr(t)]dt + η(t)dW(t)
$$

**Description:**
where r(t) = f(t,t) is the short rate and η(t) = σ_0 exp(-λt). This transformation shows that the short rate follows a Markovian process when the volatility has exponential form.

*Source: eq3/hjm-framework.txt*

---

## Credit Value Adjustment (CVA)

**Equation:**

$$
CVA = -LGD × Σ_{i=1}^{n} EE(t_i) × PD(t_{i-1}, t_i) × (1 - PD_own(0, t_{i-1}))
$$

**Description:**
Where LGD represents loss given default (1 - recovery rate), EE(t_i) denotes the discounted expected exposure at time t_i, PD(t_{i-1}, t_i) is the marginal probability of counterparty default between times t_{i-1} and t_i, and PD_own(0, t_{i-1}) represents the survival probability of the calculating party until t_{i-1}. This formulation captures bilateral counterparty risk by incorporating the possibility that the calculating entity may default before the counterparty, thereby eliminating future exposure.

*Source: eq3/credit_derivatives_xva_primer.txt*

---

## 1. Macaulay Duration

**Equation:**

$$
D_{\text{Mac}} = \frac{1}{P} \sum_{i=1}^n T_i \frac{CF_i}{(1+y)^{T_i}}
$$

**Description:**
**Variables:** - CF_i: Cash flow at time T_i - P: Current bond price - y: Yield to maturity per period - T_i: Time to cash flow - (1+y)^{-T_i}: Discount factor

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## 2. t-Copula

**Equation:**

$$
C(u_1, u_2; \rho, \nu) = t_{\nu, \rho}\left( t_\nu^{-1}(u_1), t_\nu^{-1}(u_2) \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 1. Time-Varying Factor Loadings

**Equation:**

$$
\beta_{ij}(t) = \beta_{ij}^{(0)} + \sum_{m=1}^M \beta_{ij}^{(m)} g_m(t)
$$

**Description:**
Variables: - \beta_{ij}(t): Time-varying sensitivity of asset i to factor j - \beta_{ij}^{(m)}: Loading coefficient for basis function m - g_m(t): Basis function of time (e.g., polynomial, spline) - M: Number of basis functions

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Theta (Call)

**Equation:**

$$
Theta = dV/dt = -S_t phi(d_1) sigma/(2 sqrt(T-t)) - r K exp(-r(T-t)) Phi(d_2)
$$

**Description:**
Time decay. Theta is generally negative for long positions. Decomposition into theta from diffusion and theta from discounting. Daily theta decay for option sellers.

*Source: eq3/minimax-primer/formulas.csv*

---

## Multi-Level Monte Carlo

**Equation:**

$$
E_P[f] = sum_{l=0}^L (1/M_l) sum_{m=1}^{M_l} (Y_l^{(m)} - Y_{l-1}^{(m)})
$$

**Description:**
Variance reduction across levels of discretization. Coarse paths approximated with few steps, fine with many. Complexity O(epsilon^{-2}) vs O(epsilon^{-3}) for standard MC.

*Source: eq3/minimax-primer/formulas.csv*

---

## Portfolio Variance

**Equation:**

$$
\sigma_p^2 = w^T \Sigma w = \sum_i \sum_j w_i w_j \sigma_i \sigma_j \rho_{ij}
$$

**Description:**
Portfolio variance captures diversification effects through correlation structure in the covariance matrix.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Fama-French 3-Factor

**Equation:**

$$
R_i - R_f = \alpha + \beta^{MKT}(R_m - R_f) + \beta^{SMB} SMB + \beta^{HML} HML
$$

**Description:**
Empirical extension of CAPM with size and value factors.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Avellaneda-Stoikov

**Equation:**

$$
p^{bid} = s - (1/\gamma) \ln(1 + \gamma/\kappa) - (\gamma \sigma^2 (T-t)/2) q
$$

**Description:**
Optimal market making bid quote.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
\text{Equity as a call option: } E_t = V_t \Phi(d_1) - D e^{-r(T-t)} \Phi(d_2)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
where z = ν/α (FK)^{(1-β)/2} ln(F/K) and x(z) = ln((√(1-2ρz+z²) + z - ρ)/(1-ρ))
$$

*Source: eq3/volatility_modeling_primer.txt*

---

## A. Fundamental Theorem of Asset Pricing

**Equation:**

$$
V(t) = e^{-r(T-t)} \mathbb{E}^{\mathbb{Q}}\left[ V(T) \middle| \mathcal{F}_t \right]
$$

**Description:**
**Variables:** - V(t): Derivative price at time t - r: Risk-free rate - T: Terminal time - \mathbb{Q}: Risk-neutral measure - \mathcal{F}_t: Information up to time t

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Bachelier Normal Model

**Equation:**

$$
C = (F_t - K) Phi(d) + sigma sqrt(T-t) phi(d) with d = (F_t - K)/(sigma sqrt(T-t))
$$

**Description:**
Normal (arithmetic Brownian motion) model for low rates/volatility regimes. Linear in forward. Important for vol products, market models with normal dynamics.

*Source: eq3/minimax-primer/formulas.csv*

---

## Stratified Sampling

**Equation:**

$$
\hat{V}_{strat} = \sum_{k=1}^K p_k \frac{1}{n_k} \sum_{i=1}^{n_k} h(X_{k
$$

**Description:**
Advanced Topics

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Black-Scholes d1

**Equation:**

$$
d_1 = \frac{\ln(S/K) + (r + \frac{1}{2}\sigma^2)(T-t)}{\sigma \sqrt{T-t}}
$$

**Description:**
Auxiliary variable for Black-Scholes representing standardized moneyness.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Tikhonov Regularization

**Equation:**

$$
\min_\theta ||C^{market} - C^{model}||^2 + \lambda ||\theta - \theta_0||^2
$$

**Description:**
Penalize parameter magnitude.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
C_{do} = C_{BS}(S, K) - \left( \frac{S}{H} \right)^{2\lambda} C_{BS}(\frac{H^2}{S}, K)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Objective:**
\mathcal{L} = \sum_i l(y_i, \hat{y}_i) + \sum_m \Omega(f_m)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
K = LGD \cdot \left[ N\left(\frac{G(PD) + \sqrt{R} G(0.999)}{\sqrt{1-R}}\right) - PD \right] \cdot MA
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## **Basket Options (Moment Matching Approximation)**

**Equation:**

$$
\text{Approximate basket as single lognormal: } B_t = \sum_{i=1}^n w_i S^i_t
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## MBS Monte Carlo Valuation

**Equation:**

$$
P = (1/N) ∑[j=1 to N] ∑[t=1 to T_j] CF_t^{(j)} × exp(-∑[s=1 to t] r_s^{(j)} × Δt_s)
$$

**Description:**
This equation represents Monte Carlo valuation of MBS using N simulated interest rate paths. For each path j, cash flows CF_t^{(j)} are generated conditional on the rate trajectory r_s^{(j)}. The inner sum calculates the discounted present value along each path, and the outer sum averages across all simulations. This methodology explicitly handles path-dependent prepayment behavior by updating burnout and seasoning states along each rate path. The number of simulations N is typically 500-1000 for standard MBS valuation, with more paths required for higher accuracy or exotic structures.

*Source: eq3/fixed_income_primer.txt*

---

## 1. Factor Mimicking Portfolio Weights

**Equation:**

$$
\mathbf{w}_F = \mathbf{W} (\mathbf{B}^\top \mathbf{W})^{-1} \mathbf{e}_j
$$

**Description:**
Variables: - \mathbf{w}_F: n×1 vector of weights for factor mimicking portfolio - \mathbf{W}: n×k matrix of k factor mimicking portfolios (one per factor) - \mathbf{B}: n×k beta matrix - \mathbf{e}_j: k×1 vector with 1 in position j and 0 elsewhere - (\mathbf{B}^\top \mathbf{W})^{-1}: Inverse of factor exposure matrix

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Particle Filter (SMC)

**Equation:**

$$
p(x_{1:T} | y_{1:T}) approx sum_{i=1}^N w_t^{(i)} delta_{x_t^{(i)}}(dx_t)
$$

**Description:**
Sequential Monte Carlo for state estimation. Importance sampling and resampling. Efficient Girsanov for change of measure. Used for filtering in stochastic vol.

*Source: eq3/minimax-primer/formulas.csv*

---

## CEV Model (Constant Elasticity of Variance)

**Equation:**

$$
dS_t = \mu S_t dt + \sigma \underbrace{S_t^\gamma}_{\text{Elasticity}} dW_t
$$

**Description:**
The Constant Elasticity of Variance model relaxes the assumption of constant volatility. By setting \gamma < 1, the model captures the 'leverage effect' commonly observed in equity markets: as the stock price S decreases, the volatility term \sigma S^\gamma increases. This creates a negative skew in the return distribution, consistent with the volatility smile seen in markets. \gamma=1 recovers the geometric Brownian motion.

*Source: eq3/jules-primer/primer.csv*

---

## Ho-Lee Model

**Equation:**

$$
dr_t = \underbrace{\theta(t)}_{\text{Time-Varying Drift}} dt + \sigma dW_t
$$

**Description:**
Ho-Lee was the first 'no-arbitrage' model of the term structure. Unlike Vasicek/CIR which imply a specific yield curve shape, Ho-Lee introduces a time-dependent parameter \theta(t) that can be calibrated to fit the *current* market yield curve exactly. However, it lacks mean reversion, implying that interest rate volatility grows linearly with time, which is unrealistic for long horizons.

*Source: eq3/jules-primer/primer.csv*

---

## Rough Volatility

**Equation:**

$$
\ln \sigma_t - \ln \sigma_0 \sim \underbrace{W_t^H}_{\text{Fractional BM}}
$$

**Description:**
A paradigm shift in volatility modeling (Jim Gatheral, Mathieu Rosenbaum). Empirical studies show that log-volatility behaves like a fractional Brownian motion with Hurst parameter H \approx 0.1, making paths extremely rough (holder continuous with exponent 0.1). This 'Rough Vol' model fits the explosive behavior of the short-term skew (power law decay) perfectly, which standard diffusion models (H=0.5) cannot do.

*Source: eq3/jules-primer/primer.csv*

---

## Exponential Martingale

**Equation:**

$$
Z_t = \exp\left\{-\int_0^t \lambda_s dW_s - \frac{1}{2}\int_0^t \lambda_s^2 ds\right\}
$$

**Description:**
This process defines the Radon-Nikodym derivative for measure transformation from physical measure P to risk-neutral measure Q. Under technical conditions this is a true martingale with \mathbb{E}[Z_t] = 1.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Ruin Probability

**Equation:**

$$
\psi(u) = (\lambda\mu/c) \exp(-(c - \lambda\mu) u / (\lambda E[X^2]/(2\mu)))
$$

**Description:**
Cramér-Lundberg insolvency probability.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Quantum Amplitude Estimation

**Equation:**

$$
\epsilon_{quantum} \propto 1/M vs \epsilon_{classical} \propto 1/\sqrt{M}
$$

**Description:**
Quadratic speedup for Monte Carlo.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

v(x) = \begin{cases} x^\alpha & x \ge 0 \\ -\lambda(-x)^\beta & x < 0 \end{cases}

*Source: eq3/gemini-primer/gemini_primer.md*

---

## **Black-Scholes-Merton Formula**

**Equation:**

$$
C(S_t, K, T, r, q, \sigma) = S_t e^{-q(T-t)} \Phi(d_1) - K e^{-r(T-t)} \Phi(d_2)
$$

**Description:**
Automatically extracted equation

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas.csv; eq3/iflow-primer/formulas_part2.md*

---

## The swap's value at any time t post-inception derives from the difference between the contractual fixed rate and the prevailing market swap rate:

**Equation:**

$$
V_t = NA \times (r_{FIX,0} - r_{FIX,t}) \times \sum_{i=1}^{n'} \tau_i P(t,T_i)
$$

**Description:**
Where NA denotes the notional amount, r_{FIX,0} is the original contract fixed rate, r_{FIX,t} represents the current market swap rate for the remaining tenor, and the summation constitutes the forward annuity factor. This expression reveals that swap values exhibit linear sensitivity to interest rate movements, making duration and convexity calculations essential for risk management applications.

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## Margin Value Adjustment (MVA)

**Equation:**

$$
MVA = Σ_{i=1}^{n} E[IM(t_i)] × (r_funding(t_i) - r_collateral(t_i)) × DF(t_i)
$$

**Description:**
Where E[IM(t_i)] represents expected initial margin requirement at time t_i, r_funding(t_i) denotes the bank's unsecured funding rate for margin posting, r_collateral(t_i) is the rate received on posted collateral (typically OIS or government bond yield), and DF(t_i) is the discount factor.

*Source: eq3/credit_derivatives_xva_primer.txt*

---

## Equation

**Equation:**

$$
Jump Component Pricing:
P(S_T > K | jumps) = Σ_{n=0}^∞ (λT)^n e^{-λT}/n! * Φ(d_n)
$$

*Source: eq3/jump-diffusion-primer.txt*

---

## Drift Adjustments:

**Equation:**

$$
μ_k(t) = σ_k(t) * Σ_{j=1}^{k} * [τ_j * F_j(t) * σ_j(t) * ρ_{k,j}] / [1 + τ_j * F_j(t)]
$$

**Description:**
This drift adjustment emerges when moving from the terminal measure Q^{T_N} to the spot LIBOR measure. The summation runs over all forward rates maturing after T_k, with τ_j representing the day count fraction for period j. The correlation structure ρ_{k,j} between forward rates drives the non-zero drift - perfectly correlated rates would simplify this expression significantly. The denominator [1 + τ_j * F_j(t)] reflects the convexity adjustment from the discrete compounding of forward rates.

*Source: eq3/lmm_content.txt*

---

## Equation

**Equation:**

$$
\mathbb{Q}(\tau > T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_0^T \lambda_s ds} \right]
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
P_{\text{floorlet}} = P(0, T_i) \left( K \Phi(-d_2) - F(0, T_{i-1}, T_i) \Phi(-d_1) \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
F(0, T_{i-1}, T_i) = \frac{1}{\delta_i} \left( \frac{P(0, T_{i-1})}{P(0, T_i)} - 1 \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 2. Market Beta in Multi-Factor Context

**Equation:**

$$
\beta_{iM} = \sum_{j=1}^k \beta_{ij} \text{Cov}(F_j, R_M) / \text{Var}(R_M)
$$

**Description:**
Variables: - \beta_{iM}: Traditional CAPM market beta - \text{Cov}(F_j, R_M): Covariance between factor j and market return - \text{Var}(R_M): Variance of market return - R_M: Market index return

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Constant Maturity CDS (CMCDS)

**Equation:**

$$
V_CMCDS = E^Q[ int_{T_0}^{T_1} (s_fix - s_flt) exp(-int_0^t (r+lambda) ds) dt ]
$$

**Description:**
CDS with floating spread based on CDS curve. Rate-like behavior. Pricing requires model of CDS spread dynamics. Hybrid credit-interest rate product.

*Source: eq3/minimax-primer/formulas.csv*

---

## Martingale Representation Theorem

**Equation:**

$$
M_t = M_0 + \int_0^t \underbrace{\phi_s}_{\text{Replicating Strategy}} dW_s
$$

**Description:**
This theorem states that in a filtration generated by Brownian motion, any martingale M_t can be represented as an Itô integral of some adapted process \phi_s. In financial terms, M_t represents the discounted value of a contingent claim. The theorem implies that markets driven by Brownian motion are 'complete', meaning every derivative can be perfectly replicated (hedged) by a dynamic trading strategy \phi_s in the underlying asset.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
Where:
- B: Barrier level
- \lambda = \frac{r - \frac{1}{2}\sigma^2}{\sigma^2}
$$

*Source: eq3/iflow-model-primer/derivatives-primer.md*

---

## RATCHET FEATURE MECHANICS

**Equation:**

$$
R_{accumulated} = \notag_{i=1}^{n} max(min(ln(S_{t_i}/S_{t_{i-1}}), c), f)
$$

**Description:**
This equation describes the accumulated return under ratchet mechanisms, where c represents the local cap and f represents the local floor on logarithmic returns. The ratchet feature locks in positive returns while providing downside protection, creating a path-dependent payoff structure. The logarithmic return formulation is common in continuous-time models and provides mathematical tractability. The mechanism ensures that extreme returns in either direction are truncated, creating a smoother return profile. The product structure means that each period's capped/floored return contributes multiplicatively to the final payoff, leading to complex interactions between consecutive periods' performance.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## GLOBAL FLOOR AND CAP

**Equation:**

$$
V_{global} = e^{-rT} max(min(\notag_{i=1}^{n} R_i, GlobalCap), GlobalFloor)
$$

**Description:**
This equation incorporates global floor and cap provisions that apply to the total accumulated return across all periods, distinct from local caps/floors that apply period-by-period. The GlobalCap and GlobalFloor represent the maximum and minimum total returns achievable, providing ultimate downside protection and upside limitation. This dual structure - local limits on individual periods plus global limits on total performance - creates sophisticated risk-return profiles. The global features are particularly important for risk management, as they bound the extreme tail behavior that could arise from consecutive periods of extreme performance. The interaction between local and global constraints requires careful modeling of the entire path-dependent structure, making Monte Carlo simulation essential for accurate pricing.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## Funding Value Adjustment (FVA)

**Equation:**

$$
FVA = Σ_{i=1}^{n} [E[Funding_Cost(t_i)] - E[Funding_Benefit(t_i)]] × DF(t_i)
$$

**Description:**
Where E[Funding_Cost(t_i)] represents expected funding costs for negative cash flows at time t_i, E[Funding_Benefit(t_i)] denotes expected funding benefits from positive cash flows, and DF(t_i) is the discount factor to time t_i. The funding spread is typically calculated as the difference between the bank's average funding cost and the risk-free rate.

*Source: eq3/credit_derivatives_xva_primer.txt*

---

## Prepayment Model Calibration Loss Function

**Equation:**

$$
L(θ) = ∑[i=1 to K] w_i × (Prepayment_i^{model}(θ) - Prepayment_i^{observed})^2
$$

**Description:**
L(θ) represents the loss function for calibrating prepayment model parameters θ to historical data. The function minimizes the weighted sum of squared errors between model-predicted prepayments and observed prepayments across K historical periods. The weights w_i can prioritize more recent observations or specific loan segments. This least-squares calibration ensures the model captures empirical patterns while avoiding overfitting. Alternative specifications include maximum likelihood estimation assuming prepayments follow binomial distributions or incorporating regularization terms to prevent extreme parameter values.

*Source: eq3/fixed_income_primer.txt*

---

## 3. Effective Duration (Option-Adjusted)

**Equation:**

$$
D_{\text{Eff}} = -\frac{1}{P} \frac{P(y+\Delta y) - P(y-\Delta y)}{2\Delta y}
$$

**Description:**
**Variables:** - P(y+Δy): Price when yield increases by Δy - P(y-Δy): Price when yield decreases by Δy - Δy: Small parallel shift in yield curve (typically 1bp) | **Variables:** - \(\Delta y\): Small parallel shift in yield curve

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
\text{VaR}_\alpha(L) = \mu - z_\alpha \sigma \quad \text{(normal assumption)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
where dx_i dx_j = \rho_{ij} \sigma_i \sigma_j dt for correlated Brownian motions
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Stochastic Discount Factor (SDF)

**Equation:**

$$
p_t = E_t [ \underbrace{m_{t+1}}_{\text{Pricing Kernel}} (p_{t+1} + d_{t+1}) ]
$$

**Description:**
This is the fundamental equation of asset pricing. It states that the price of any asset p_t is the expected discounted value of its future payoff (price + dividend), where the discounting is done by a stochastic process m_{t+1} known as the Pricing Kernel or Stochastic Discount Factor. This framework unifies all asset pricing models: in CAPM, m is linear in market return; in Black-Scholes, m is related to the Radon-Nikodym derivative; in Consumption-based models, m is the ratio of marginal utilities of consumption.

*Source: eq3/jules-primer/primer.csv*

---

## Zero Coupon Bond (ZCB)

**Equation:**

$$
P(t,T) = \underbrace{E^Q\left[ \exp\left(-\int_t^T r_u du\right) \right]}_{\text{Risk Neutral Exp}}
$$

**Description:**
A Zero Coupon Bond pays a single cash flow at maturity. Its price P(t,T) is the fundamental building block of the term structure of interest rates (discount curve). In a deterministic world, it is simply $(1+y)^{-(T-t)}$. In a stochastic world, it is the expected discounted value under the risk-neutral measure.

*Source: eq3/jules-primer/primer.csv*

---

## Hazard Rate

**Equation:**

$$
\lambda(t) = \lim_{\Delta t \to 0} \frac{P(t \leq \tau < t+\Delta t \mid \tau \geq t
$$

**Description:**
Credit Derivatives

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
\frac{d\mathbb{Q}}{d\mathbb{P}}\bigg|_{\mathcal{F}_t} = \frac{M_t}{M_0}
$$

**Description:**
Where M_t is the stochastic discount factor, and \mathbb{Q} is the risk-neutral measure. This equation defines the Radon-Nikodym derivative that transforms the physical measure \mathbb{P} to the risk-neutral measure \mathbb{Q}.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## NIG Process

**Equation:**

$$
\psi(u) = -\delta(\sqrt{\alpha^2 - (\beta + iu)^2} - \sqrt{\alpha^2 - \beta^2})
$$

**Description:**
Normal inverse Gaussian.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## QAOA Portfolio

**Equation:**

$$
|\gamma \beta\rangle = \prod e^{-i\beta_l H_M} e^{-i\gamma_l H_C} |+\rangle^n
$$

**Description:**
Quantum approximate optimization.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
\Delta_{call} = \frac{\partial C}{\partial S} = N(d_1)
\Delta_{put} = N(d_1) - 1
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\Pi = \sum_{t} \mathbb{1}_{fast}(t) \cdot |p_t^{stale} - p_t^{true}| \cdot q_t
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Zomma

**Equation:**

$$
\frac{\partial \Gamma}{\partial \sigma} = \Gamma \left( \frac{d_1 d_2 - 1}{\sigma} \right)
$$

**Description:**
Variables: ; Explanation: * Zomma measures sensitivity of gamma to changes in volatility. Important for gamma hedging under stochastic volatility. | **Explanation:** Zomma measures sensitivity of gamma to changes in volatility. Important for gamma hedging under stochastic volatility. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## Equation: P(S_t, K, T, r, q, \sigma)

**Equation:**

$$
P(S_t, K, T, r, q, \sigma) = K e^{-r(T-t)} \Phi(-d_2) - S_t e^{-q(T-t)} \Phi(-d_1)
$$

**Description:**
Automatically extracted equation

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas.csv; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
\ln J_t \sim N(\mu_J, \sigma_J^2), \quad \bar{\mu} = e^{\mu_J + \sigma_J^2/2} - 1
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
dS_t/S_t = √V_t dZ_t
V_t = ξ_0(t) exp{η∫_0^t K(t-s) dW_s - 1/2 η^2 ∫_0^t K(t-s)^2 ds}
$$

*Source: eq3/rough_volatility_primer.txt*

---

## Prepayment Function along Rate Paths

**Equation:**

$$
CF_t^{path} = f(B_{t-1}^{path}, WAC, r_t^{path}, Season_t, History_t^{path})
$$

**Description:**
This equation represents the path-dependent cash flow generation, where f is the prepayment function that determines SP_t and PP_t based on the current balance B_{t-1}^{path}, pool characteristics (WAC), current short rate r_t^{path}, seasonal factor Season_t, and the entire history of rates experienced by the pool History_t^{path}. The prepayment function incorporates burnout (refinancing exhaustion), refinancing incentive, seasoning, and seasoning effects. Path-dependence arises because prepayment history affects current burnout state, making cash flows contingent on the specific trajectory of rates rather than just current rates.

*Source: eq3/fixed_income_primer.txt*

---

## 2. Multifactor Model in Vector Form

**Equation:**

$$
\mathbf{R} = \boldsymbol{\mu} + \mathbf{B} \mathbf{F} + \boldsymbol{\epsilon}
$$

**Description:**
Variables: - \mathbf{R}: n×1 vector of asset returns - \boldsymbol{\mu}: n×1 vector of expected returns - \mathbf{B}: n×k matrix of factor loadings (betas) - \mathbf{F}: k×1 vector of factor realizations - \boldsymbol{\epsilon}: n×1 vector of idiosyncratic errors - n: Number of assets, k: Number of factors

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Current Yield

**Equation:**

$$
Y_{curr} = \underbrace{\frac{C_{annual}}{P_{mkt}}}_{\text{Income Return}}
$$

**Description:**
Current Yield provides a snapshot of the income return relative to the current price. Unlike YTM, it ignores capital gains/losses (pull to par) and the time value of money. It is a simplistic measure often used by income-focused investors.

*Source: eq3/jules-primer/primer.csv*

---

## Hill Estimator

**Equation:**

$$
\hat{\alpha} = \left( \frac{1}{k} \sum_{i=0}^{k-1} (\ln x_{n-i} - \ln x_{n-k}) \right)^{-1}
$$

**Description:**
A statistical estimator for the tail index \alpha (inverse of \xi) of a power-law distribution. It uses the top 'k' order statistics (the k largest losses in history). It is used to calibrate the GPD for VaR calculations. Selecting 'k' is an art: too small = high variance, too large = bias from the body of the distribution.

*Source: eq3/jules-primer/primer.csv*

---

## Particle Filter Weights

**Equation:**

$$
w_t^i = w_{t-1}^i \frac{p(y_t|x_t^i) p(x_t^i|x_{t-1}^i)}{q(x_t^i|x_{t-1}^i
$$

**Description:**
Advanced Topics

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Variance Swap Payoff

**Equation:**

$$
N_{var} \left( \frac{252}{N} \sum_{i=1}^N \ln^2\left(\frac{S_i}{S_{i-1}}\right) - K_{var}^2 \right)
$$

**Description:**
Payoff based on realized variance vs strike variance.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
dS_t^f = (r_f - q_f - \rho_{S,X}\sigma_S\sigma_X) S_t^f dt + \sigma_S S_t^f dW_t^S
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## **Asian Options (Geometric Average, Continuous)**

**Equation:**

$$
C_{\text{geom}} = e^{-r(T-t)} \left( G_t e^{\bar{\mu}(T-t)} \Phi(d_1) - K \Phi(d_2) \right)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
where d_1 = (ln(S/K) + (r + σ_imp^2/2)T) / (σ_imp sqrt(T)) and d_2 = d_1 - σ_imp sqrt(T)
$$

*Source: eq3/volatility_modeling_primer.txt*

---

## Equation

**Equation:**

$$
u = e^{\sigma \sqrt{\Delta t}}, \quad d = e^{-\sigma \sqrt{\Delta t}} = \frac{1}{u}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Radon-Nikodym Derivative

**Equation:**

$$
\zeta_t = \frac{dQ}{dP}|_{\mathcal{F}_t} = \mathbb{E}[Z_T \mid \mathcal{F}_t]
$$

**Description:**
This process is a P-martingale that relates conditional expectations under different measures. For pricing derivatives this allows computation of expectations under the risk-neutral measure Q using simulations under the physical measure P with appropriate reweighting.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
d\mathbb{1}_{\{\tau \leq t\}} = -\lambda_t \mathbb{1}_{\{\tau \leq t\}} dt + dJ_t
$$

**Description:**
This SDE describes the default event in a reduced-form credit model, where \tau is the default time and \lambda_t is the stochastic default intensity.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Large Homogeneous Pool (LHP)

**Equation:**

$$
P(L < x) = \Phi\left( \frac{\sqrt{1-\rho} \Phi^{-1}(x) - \Phi^{-1}(p)}{\sqrt{\rho}} \right)
$$

**Description:**
Approximation for synthetic CDO tranche losses in large portfolio.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Affine structure preservation:

**Equation:**

$$
E[exp(uX_T + vV_T)|F_t] = exp(ϕ(T-t,u,v) + ψ(T-t,u,v)V_t + ∫_t^T χ(T-s,u,v)Z_s ds)
$$

**Description:**
Despite the non-Markovian nature, the Rough Heston model maintains affine structure through the characteristic function. The functions ϕ, ψ, and χ solve fractional Riccati equations, where Z_t represents the history process. This preservation enables Fourier-based option pricing methods, though computational complexity increases due to the Volterra structure requiring numerical integration over the entire path history.

*Source: eq3/rough-heston-primer.md*

---

## Risk Concentration Measures

**Equation:**

$$
H = \sum_{i=1}^N \text{RC}_i^2 = \sum_{i=1}^N \left(\frac{\text{CR}_i}{\sigma_p}\right)^2
$$

**Description:**
The Herfindahl index H for risk concentration measures the degree to which risk is concentrated in a few positions rather than diversified across many. Ranging from 1/N (perfectly diversified) to 1 (all risk in one position), this measure provides a scalar summary of portfolio diversification quality. The index relates to the effective number of independent bets through N_{eff} = 1/H, which represents the number of equally-sized, uncorrelated positions that would produce the same diversification level. For factor-based portfolios, the concentration measure should be computed on factor risk contributions rather than asset-level contributions to avoid spurious diversification from exposure to common factors. The statistical properties of H depend on the underlying return distribution, with heavier tails generally increasing concentration due to higher kurtosis affecting tail risk measures.

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## Hull-White (Extended Vasicek)

**Equation:**

$$
dr_t = (\underbrace{\theta(t)}_{\text{Calibrating Term}} - a r_t)dt + \sigma dW_t
$$

**Description:**
Hull-White extends Vasicek by adding the time-dependent drift \theta(t). This combines the best of both worlds: mean reversion (controlled by 'a') and the ability to fit the initial term structure of interest rates exactly (via \theta(t)). It remains a Gaussian model, allowing for fast analytic pricing of bonds and swaptions (using Jamshidian's decomposition). It is the workhorse single-factor model for risk management.

*Source: eq3/jules-primer/primer.csv*

---

## Unknown

**Equation:**

$$
\Gamma = \frac{\partial^2 V}{\partial S^2} = \frac{N'(d_1)}{S\sigma\sqrt{T-t}}
$$

**Description:**
Gamma measures the rate of change of Delta with respect to changes in the underlying asset price. It is the same for both call and put options and is always positive, indicating that Delta will change more for larger price movements in the underlying asset. | **Variables:** - ∂²V/∂S²: Second derivative of option value with respect to spot - φ(d_1): Standard normal density at d_1 - S_t: Current stock price

*Source: eq3/iflow-model-primer/derivatives-primer.csv; eq3/gemini-primer/gemini_primer.md; eq3/minimax-primer/comprehensive-formulas.md*

---

## Swing Option

**Equation:**

$$
V = \max_{q_i} \mathbb{E}^{\mathbb{Q}} [ \sum_{i=1}^N e^{-r t_i} q_i (S_{t_i} - K) ]
$$

**Description:**
Energy option with flexible exercise quantity on multiple dates.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation

**Equation:**

$$
**Variables:**
*   H: Barrier level (H < S)
*   \lambda: \frac{r + \sigma^2/2}{\sigma^2}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
w_i \frac{\partial \sigma_p}{\partial w_i} = \frac{\sigma_p}{N}, \quad \forall i
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
B_{k+1} = B_k + \frac{y_k y_k^T}{y_k^T s_k} - \frac{B_k s_k s_k^T B_k}{s_k^T B_k s_k}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## **Exchange Options (Margrabe)**

**Equation:**

$$
V(S^1_t, S^2_t, T) = S^1_t e^{-q_1(T-t)} \Phi(d_1) - S^2_t e^{-q_2(T-t)} \Phi(d_2)
$$

**Description:**
Automatically extracted equation

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas.csv; eq3/iflow-primer/formulas_part2.md*

---

## 1. Zero-Coupon Bond Pricing (Risk-Neutral Framework)

**Equation:**

$$
P(t,T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T r_s \, ds} \middle| \mathcal{F}_t \right]
$$

**Description:**
**Variables:** - P(t,T): Price at time t of zero-coupon bond maturing at T - \mathbb{E}^{\mathbb{Q}}: Expectation under risk-neutral measure \mathbb{Q} - r_s: Instantaneous short rate at time s (stochastic process) - \mathcal{F}_t: Filtration representing information up to time t - T-t: Time to maturity | See markdown for detailed variables and explanation | Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas.csv*

---

## 5. Rho (Interest Rate Sensitivity)

**Equation:**

$$
\rho_{\text{call}} = \frac{\partial V}{\partial r} = K (T-t) e^{-r(T-t)} \Phi(d_2)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Hazard Rate (Intensity)

**Equation:**

$$
\lambda(t) = \lim_{\Delta t \to 0} \frac{P(t < \tau \le t+\Delta t | \tau > t)}{\Delta t}
$$

**Description:**
In reduced-form models, the mechanism of default is not modeled (unlike Structural models). Instead, default is a random 'surprise' event governed by a Poisson process. \lambda(t) is the intensity (or hazard rate) of this process. It represents the instantaneous probability of defaulting in the next instant, given survival up to now. Credit spreads are roughly equal to \lambda * (1 - Recovery).

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
C_{Am}(S, t) = C_{Eu}(S, t) + \int_t^T e^{-r(u-t)} q S^*(u) N(-d_1(S, S^*(u), u-t)) du
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\frac{\Delta P}{P} \approx -D_{Mod} \cdot \Delta y + \frac{1}{2} C \cdot (\Delta y)^2
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\mathbb{E}[S] = \lambda \cdot \mathbb{E}[X]
Var[S] = \lambda \cdot \mathbb{E}[X^2]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Probability of Default (Risk-Neutral)

**Equation:**

$$
PD^{\mathbb{Q}} = \Phi(-d_2) \text{Default time } \tau = \inf\{ t \ge 0 : V_t \le K(t) \}
$$

**Description:**
Variables:

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## HESTON CHARACTERISTIC FUNCTION

**Equation:**

$$
\phi(u) = E[e^{iu\ln(S_T)}] = \exp\left(A(u,\tau) + B(u,\tau)v_0 + iu\ln(S_0e^{r\tau})\right)
$$

**Description:**
The characteristic function \phi(u) represents the Fourier transform of the log-stock price density under the risk-neutral measure. This closed-form solution is the cornerstone of Heston model applications, enabling efficient option pricing through Fourier inversion. The function depends on the Fourier parameter u, time to maturity \tau = T-t, and current state variables.

*Source: eq3/heston-characteristic.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## Normal SABR (\beta = 0) Exact Density

**Equation:**

$$
p(F_T) = \frac{1}{\sqrt{2\pi \sigma^2 T}} \exp\left( -\frac{(F_T - F_0)^2}{2\sigma^2 T} \right)
$$

**Description:**
When \beta = 0 and \nu = 0, SABR reduces to Bachelier model with constant volatility \sigma = \alpha/F_0. The forward price follows normal distribution with mean F_0 and variance \sigma^2 T. This specification is particularly relevant for interest rate markets where rates can theoretically become negative, making normal models preferable to lognormal. The absence of skew and smile in this degenerate case highlights that smile dynamics require either \nu \neq 0 (stochastic volatility) or \beta \neq 0 (local volatility) or both.

*Source: eq3/sabr-model.txt*

---

## Equation

**Equation:**

$$
\text{CR}_i = w_i \times \text{MCR}_i = w_i \frac{(\Sigma \mathbf{w})_i}{\sigma_p}
$$

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## Equation

**Equation:**

$$
P(τ_i ≤ t for all i ∈ S) = Φ_S( \{Φ^{-1}(1 - e^{-h_i t)}\}_{i∈S} ; \{√{ρ_i ρ_j}\}_{i,j∈S} )
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Equation

**Equation:**

$$
d_{1,2} = \frac{\ln(S_0/K) + (r_d - r_f \pm \frac{1}{2}\sigma^2)T}{\sigma \sqrt{T}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Tanaka's Formula (Local Time)

**Equation:**

$$
|W_t| = \int_0^t \text{sgn}(W_s) dW_s + \underbrace{L_t^0}_{\text{Local Time at 0}}
$$

**Description:**
Tanaka's formula generalizes Itô's Lemma for convex functions with discontinuous derivatives, such as the absolute value function |x|. The term L_t^0, known as Local Time, measures the amount of time the Brownian motion W_t spends at the origin (or any barrier). This concept is crucial for pricing American options (related to the early exercise boundary) and barrier options, as well as for understanding the risk of 'pin risk' near strikes.

*Source: eq3/jules-primer/primer.csv*

---

## Merton Model

**Equation:**

$$
Equity = \underbrace{\text{Call}(Asset, Strike=Debt)}_{\text{Option on Assets}}
$$

**Description:**
Robert Merton's structural model treats a company's equity as a European Call option on the firm's total assets, with the strike price equal to the face value of the debt. If assets > debt at maturity, shareholders keep the residual. If assets < debt, limited liability means shareholders get zero (default). This links credit spreads directly to equity volatility and leverage.

*Source: eq3/jules-primer/primer.csv*

---

## CVA (Credit)

**Equation:**

$$
\text{CVA} = (1-R) \int_0^T \underbrace{\text{EPE}(t)}_{\text{Exposure}} dPD(t)
$$

**Description:**
Credit Valuation Adjustment is the market value of counterparty credit risk. It is the expected loss. EPE(t) (Expected Positive Exposure) is the option-like profile of the derivative value max(V, 0). dPD(t) is the default probability density. CVA is subtracted from the risk-free value.

*Source: eq3/jules-primer/primer.csv*

---

## FVA (Funding)

**Equation:**

$$
\text{FVA} = \int_0^T E^Q[\underbrace{(r_f(t) - r)}_{\text{Spread}} (V_t - C_t)] dt
$$

**Description:**
Funding Valuation Adjustment accounts for the cost of funding uncollateralized trades. If a bank buys an uncollateralized option, it must borrow cash from its treasury at a funding rate r_f (usually > risk-free r) to pay the premium. This spread cost over the life of the trade is the FVA. C_t represents any collateral held.

*Source: eq3/jules-primer/primer.csv*

---

## Switching Option

**Equation:**

$$
V = \max(V_{mode1}, V_{mode2} - \underbrace{\text{Cost}}_{\text{Switching Fee}})
$$

**Description:**
Valuation of flexible assets, like a power plant that can burn either gas or coal depending on which is cheaper (Spark spread vs Dark spread). This flexibility is a collection of options to switch states. The valuation typically requires solving a system of coupled PDEs (Hamilton-Jacobi-Bellman equations).

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
dF_t = \alpha_t F_t^\beta dW_t^1
d\alpha_t = \nu \alpha_t dW_t^2
dW_t^1 dW_t^2 = \rho dt
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
f(t) = a_0 + \sum_{k=1}^K \left[ a_k \cos\left(\frac{2\pi k t}{T}\right) + b_k \sin\left(\frac{2\pi k t}{T}\right) \right]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Optimal Trajectory:**
x_k^* = X_0 \frac{\sinh(\kappa(T - t_k))}{\sinh(\kappa T)}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\min_\theta \rho\left( -H_T + \sum_{i=0}^{N-1} \delta_i^\theta (\theta) \Delta S_{t_i} \right)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\min_\theta \|C^{market} - C^{model}(\theta)\|^2 + \lambda \|\theta - \theta_0\|^2
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Variance Swap Payoff

**Equation:**

$$
\frac{N}{T} \left( \sum_{i=1}^n \left( \ln\frac{S_{t_i}}{S_{t_{i-1}}} \right)^2 - K_{\text{var}} \right)
$$

**Description:**
Variables: | **Variables:** - \(N\): Notional (variance notional) - \(n\): Number of sampling points | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
\bar{\mu} = r - q - \frac{\sigma^2}{6}, \quad \bar{\sigma} = \frac{\sigma}{\sqrt{3}}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## 2. Cross-Currency Basis Swap

**Equation:**

$$
V_{\text{basis}} = \sum_{i=1}^n \delta_i \left( R_{dom} - R_{for} \cdot FX_{fwd} \right) P(0, T_i)
$$

**Description:**
**Variables:** - R_{dom}: Domestic floating rate - R_{for}: Foreign floating rate - FX_{fwd}: Forward FX rate - P(0, T_i): Discount factor - δ_i: Day count fraction

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 1. Chen-Roll-Ross (CRR) Three-Factor Model

**Equation:**

$$
R_i = \mathbb{E}[R_i] + \beta_{i1} IP_t + \beta_{i2} EI_t + \beta_{i3} UI_t + \epsilon_i
$$

**Description:**
Variables: - IP_t: Industrial production growth rate (unanticipated component) - EI_t: Expected inflation change (unanticipated) - UI_t: Unexpected inflation - \beta_{i1}, \beta_{i2}, \beta_{i3}: Sensitivities to macro factors - \epsilon_i: Idiosyncratic return

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Longstaff-Schwartz LSMC

**Equation:**

$$
V_0 = (1/M) sum_{m=1}^M sum_{t=0}^T Delta t * Payoff_t^(m) * I(not exercised) * exp(-r t)
$$

**Description:**
Monte Carlo with regression for continuation value. Regresses discounted future payoffs on state variables. Enables American option pricing in high dimensions. Gold standard for path-dependent American options.

*Source: eq3/minimax-primer/formulas.csv*

---

## Virtual Power Plant (VPP)

**Equation:**

$$
V_VPP = E[ max_{Q_t} ( sum_{t=1}^T S_t Q_t - sum_{t=1}^T C(Q_t) - startup cost ) exp(-rt) ]
$$

**Description:**
Optimization of flexible generation/storage. Dispatch against electricity prices. Real options from flexibility. Value of arbitrage and balancing.

*Source: eq3/minimax-primer/formulas.csv*

---

## Sobol Sequence

**Equation:**

$$
x_i = i g \oplus \frac{g}{2} \oplus \frac{g}{4} \oplus ... \quad (\text{XOR operation})
$$

**Description:**
Low-discrepancy sequence using primitive polynomials and direction numbers achieving O((\ln N)^d/N) discrepancy.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## SABR for Swaption Volatility Skew

**Equation:**

$$
\frac{\partial \sigma_{swap}}{\partial \ln K} \approx \frac{\rho \nu}{S^{1-\beta}}
$$

**Description:**
Swaptions are priced using SABR with forward swap rate S as underlying. The skew in swaption volatility surfaces reflects correlation between swap rates and volatility of those rates. In normal SABR (\beta = 0), skew is constant \frac{\rho \nu}{\alpha} across moneyness levels. For caps/floors, SABR is typically applied to forward LIBOR rates with \beta calibrated to produce observed smile shapes. Market practice often uses normal SABR (\beta = 0) for negative rate environments post-2008 crisis. | This leading-order approximation shows that skew depends directly on correlation \rho and vol-of-vol \nu. For normal SABR (\beta=0), skew simplifies to \frac{\rho \nu}{\alpha}, independent of forward level. Lognormal SABR (\beta=1) produces \frac{\rho \nu}{\alpha}, constant skew in log-moneyness space. The sign of \rho determines skew direction: positive \rho yields upward-sloping skew (higher volatility for higher strikes), matching equities markets; negative \rho produces downward skew typical of FX and some interest rate markets.

*Source: eq3/sabr-model.txt*

---

## Euler Allocation Principle

**Equation:**

$$
\rho(\mathbf{w}) = \sum_{i=1}^N w_i \frac{\partial \rho(\mathbf{w})}{\partial w_i}
$$

**Description:**
Euler's allocation principle states that any positively homogeneous risk measure \rho of degree 1 can be decomposed into a sum of weighted marginal contributions. This fundamental result from convex analysis provides the theoretical foundation for coherent risk allocation. The homogeneity property \rho(c\mathbf{w}) = c\rho(\mathbf{w}) for c > 0 ensures that scaling the portfolio scales the risk proportionally. For risk measures satisfying this property (including portfolio volatility, VaR under normality, and Expected Shortfall), the allocation is unique and satisfies the full allocation property. The partial derivatives \frac{\partial \rho(\mathbf{w})}{\partial w_i} represent infinitesimal changes in risk per unit change in position size, providing a natural basis for performance attribution and capital allocation in financial institutions.

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## Trinomial Tree Advantages:

**Equation:**

$$
V_n^i = max{G(S_n^i), e^{-rΔt}[p_uV_{n+1}^{i+1} + p_mV_n^{i+1} + p_dV_{n-1}^{i+1}]}
$$

**Description:**
Trinomial trees offer superior numerical stability compared to binomial trees through the additional middle branch, allowing for larger time steps while maintaining stability. The three-branch structure provides better approximation of the underlying diffusion process, particularly valuable for American options where the early exercise boundary must be accurately determined. The trinomial framework naturally accommodates mean-reverting processes and stochastic volatility models through appropriate parameter selection. The additional degree of freedom enables exact matching of the first three moments of the underlying process (mean, variance, and skewness) rather than just the first two moments in binomial trees. This moment-matching capability proves crucial for capturing volatility smile effects and ensuring no-arbitrage conditions across the entire term structure. The computational complexity remains O(N^2) for N time steps, similar to binomial trees, but the enhanced stability allows coarser discretization while maintaining accuracy. The trinomial structure also facilitates implementation of implicit finite difference schemes through its matrix representation, enabling efficient solution of the underlying partial differential equation.

*Source: eq3/tree_methods_primer.txt*

---

## 3. Well-Diversified Portfolio Return

**Equation:**

$$
R_{WD} = r_f + \sum_{j=1}^k \beta_{pj} F_j + \frac{1}{n} \sum_{i=1}^n w_{pi} \epsilon_i
$$

**Description:**
Variables: - R_{WD}: Return on well-diversified portfolio - w_{pi}: Weight of asset i in portfolio p - \frac{1}{n} \sum_{i=1}^n w_{pi} \epsilon_i: Average idiosyncratic error

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Black-Scholes (Continuous Dividend)

**Equation:**

$$
C = \underbrace{S e^{-q(T-t)}}_{\text{Discounted Spot}} N(d_1) - K e^{-r(T-t)} N(d_2)
$$

**Description:**
Merton's extension to the Black-Scholes model for assets paying a continuous dividend yield 'q'. This is the standard model for stock indices (where q is the dividend yield) and Foreign Exchange (where q is the foreign risk-free rate, via the Garman-Kohlhagen model). The spot price is effectively discounted by 'q' because holding the option does not entitle the holder to the dividends paid before maturity.

*Source: eq3/jules-primer/primer.csv*

---

## Bond Convexity

**Equation:**

$$
C = \underbrace{\frac{1}{P} \frac{\partial^2 P}{\partial y^2}}_{\text{Curvature}}
$$

**Description:**
Convexity measures the curvature of the price-yield relationship (second derivative). A positive convexity implies that prices rise more when yields fall than they drop when yields rise. This is a desirable property for long positions ("long gamma"), protecting against large market moves.

*Source: eq3/jules-primer/primer.csv*

---

## CIR (Cox-Ingersoll-Ross)

**Equation:**

$$
dr_t = k(\theta - r_t)dt + \sigma \underbrace{\sqrt{r_t}}_{\text{State Dep. Vol}} dW_t
$$

**Description:**
CIR improves on Vasicek by making the volatility proportional to \sqrt{r_t}. This ensures that if the rate touches zero, the volatility vanishes, preventing the rate from becoming negative (provided the Feller condition 2k\theta \ge \sigma^2 is met). The resulting distribution is non-central chi-squared. It is an 'affine' model, meaning bond prices are of the form A(t)e^{-B(t)r_t}.

*Source: eq3/jules-primer/primer.csv*

---

## Heston Model Dynamics

**Equation:**

$$
dS_t = rS_t dt + sqrt{v_t} S_t dW_t^S\quad dv_t = kappa(theta - v_t)dt + xi sqrt{v_t} dW_t^v
$$

**Description:**
The Heston model features mean-reverting variance with speed kappa long-term mean theta and volatility of variance xi. Correlation rho captures leverage effect.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## GJR-GARCH

**Equation:**

$$
\sigma_t^2 = \omega + (\alpha + \gamma I_{t-1}) \epsilon_{t-1}^2 + \beta \sigma_{t-1}^2
$$

**Description:**
Threshold GARCH asymmetric response.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\min_w \frac{1}{2} w^T \Sigma w
\text{s.t.} \quad w^T \mu = \mu_p, \quad w^T \mathbf{1} = 1
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Vega

**Equation:**

$$
\mathcal{V} = \frac{\partial C}{\partial \sigma} = S e^{-q(T-t)} \sqrt{T-t} \phi(d_1)
$$

**Description:**
Variables: ; Explanation: * Vega measures sensitivity to volatility. Vega is positive for both calls and puts; options gain value with increased volatility. Vega is highest for at-the-money options. | **Explanation:** Vega measures sensitivity to volatility. Vega is positive for both calls and puts; options gain value with increased volatility. Vega is highest for at-the-money options. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## Equation: D(u,\tau)

**Equation:**

$$
D(u,\tau) = \frac{\kappa - \rho \xi i u - d}{\xi^2} \frac{1 - e^{-d\tau}}{1 - g e^{-d\tau}}
$$

**Description:**
Automatically extracted equation

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas.csv; eq3/iflow-primer/formulas_part2.md*

---

## HEDGING PORTFOLIO DYNAMICS

**Equation:**

$$
d\Pi = \sum_{i=1}^{n} \Delta_i dS_t + \frac{1}{2}\Gamma_i (dS_t)^2 + \theta_i dt - r\Pi dt
$$

**Description:**
The hedging portfolio \Pi for cliquet options requires dynamic rebalancing across multiple periods. The Greeks \Delta_i, \Gamma_i, and \theta_i represent sensitivities to the underlying price for each embedded forward-starting option. The challenge is that these sensitivities evolve stochastically as reset dates approach, creating time-dependent hedge ratios. The quadratic variation term (dS_t)^2 captures gamma effects, while the theta term represents time decay across all embedded options. The final term reflects the cost of financing the hedge portfolio at the risk-free rate. Perfect hedging is impossible due to the discrete reset mechanism and path-dependent strikes, requiring approximation using portfolios of vanilla options with nearby strikes and maturities.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## where L_t^{(i)} is the portfolio loss rate of CDO i. For a CDO² tranche defined by [A^{(2)}, D^{(2)}], the aggregate loss is:

**Equation:**

$$
L_t^{(2)} = \min[\max(\frac{1}{M} Σ_{i=1}^M L_t^{(i)} - A^{(2)}, 0), D^{(2)} - A^{(2)}]
$$

**Description:**
The key challenge is that losses L_t^{(i)} from different CDOs are correlated through overlapping obligors and common systematic factors. If the underlying CDOs share common obligors, the correlation structure becomes highly non-trivial.

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Equation

**Equation:**

$$
\text{APT: } k \text{ factors where } k \ge 1, \text{ with } k \text{ determined empirically}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Merton Jump Diffusion

**Equation:**

$$
S_t = S_0 \exp\left( (\mu - \frac{\sigma^2}{2} - \lambda k)t + \sigma W_t + \sum_{i=1}^{N_t} Y_i \right)
$$

**Description:**
Merton added a compound Poisson jump process to the standard geometric Brownian motion to account for sudden market shocks (crashes). N_t is a Poisson process with intensity \lambda (frequency of jumps), and Y_i are independent normal random variables representing the log-size of the jumps. This model generates heavy tails (fat tails) and skewness in the return distribution, better matching empirical data than pure diffusion models.

*Source: eq3/jules-primer/primer.csv*

---

## Quanto Adjustment

**Equation:**

$$
\mu_{adj} = \mu - \underbrace{\rho_{S,X} \sigma_S \sigma_X}_{\text{Covariance Term}}
$$

**Description:**
A Quanto is an instrument where the underlying is in one currency (e.g., Nikkei in JPY) but the payoff is settled in another (e.g., USD) at a fixed exchange rate. The drift of the asset must be adjusted by the covariance between the asset and the FX rate. If correlation is negative, the asset appears to drift lower in the pricing measure, making calls cheaper.

*Source: eq3/jules-primer/primer.csv*

---

## First Passage Time Density

**Equation:**

$$
f_{tau_B}(t) = \frac{|B|}{sigma sqrt{2\pi t^3}} \exp\left(-\frac{(B-mu t)^2}{2sigma^2 t}\right)
$$

**Description:**
Density describing the distribution of the first time a Brownian motion with drift reaches barrier level B.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Equation

**Equation:**

$$
V_{i,j} = \max\left( e^{-r\Delta t} (p V_{i+1,j+1} + (1-p) V_{i+1,j}), \text{exercise value} \right)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
\sigma_p^2 = \sum_{i=1}^N w_i \text{Cov}(R_i, R_p) = \sum_{i=1}^N w_i \beta_i \sigma_p^2
$$

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## MBS Yield Spread Decomposition

**Equation:**

$$
Spread_{MBS} = OAS + Liquidity_Premium + Credit_Risk_Premium + Volatility_Risk_Premium
$$

**Description:**
This equation decomposes the observed MBS yield spread into economic components. OAS captures compensation for prepayment optionality after accounting for interest rate volatility. Liquidity premium reflects the discount for lower trading volume and higher transaction costs relative to Treasuries. Credit risk premium compensates for default losses, though this is minimal for agency MBS with explicit guarantees. Volatility risk premium compensates investors for uncertainty in future prepayment behavior and the path-dependence of cash flows. This decomposition helps identify whether MBS are attractive relative to other fixed income securities.

*Source: eq3/fixed_income_primer.txt*

---

## Equation: B(t,T)

**Equation:**

$$
B(t,T) = \frac{2(e^{\gamma(T-t)} - 1)}{(\gamma + \kappa)(e^{\gamma(T-t)} - 1) + 2\gamma}
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## **Volga (Vomma, Second-Order Vol Sensitivity):**

**Equation:**

$$
\text{Volga} = \frac{\partial^2 V}{\partial \sigma^2} = S_t \phi(d_1) d_1 d_2 \sqrt{T-t}
$$

**Description:**
**Variables:** - d_1, d_2: Black-Scholes parameters - Other variables as defined

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 1. Binomial Tree (Cox-Ross-Rubinstein)

**Equation:**

$$
V_0 = e^{-r\Delta t} \sum_{i=0}^n \binom{n}{i} p^i (1-p)^{n-i} \max(S_0 u^i d^{n-i} - K, 0)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 2. Asymptotic APT (Approximate Arbitrage)

**Equation:**

$$
\lim_{n \to \infty} \max_i \left| \mathbb{E}[R_i] - r_f - \sum_{j=1}^k \beta_{ij} \lambda_j \right| = 0
$$

**Description:**
Variables: - n: Number of assets - \lim_{n \to \infty}: Limit as number of assets approaches infinity - \max_i: Maximum absolute pricing error across all assets - \left| \cdot \right|: Absolute value

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Swap Pricing Formula

**Equation:**

$$
V_{payer} = \underbrace{\sum_{i=1}^n \tau_i P(0, T_i) (L_i - K)}_{\text{Net Cashflows}}
$$

**Description:**
The value of a vanilla interest rate swap is the present value of the net cash flows. For a payer swap (pay fixed K, receive floating L), the value is the sum of the discounted difference between the forward rate L_i and the fixed rate K. Alternatively, it is $V_{float} - V_{fixed}$.

*Source: eq3/jules-primer/primer.csv*

---

## Longstaff-Schwartz (LSMC)

**Equation:**

$$
E[Y|X] \approx \sum_{k=1}^K \beta_k \underbrace{\phi_k(X)}_{\text{Basis Functions}}
$$

**Description:**
The Least Squares Monte Carlo (LSMC) method revolutionized the pricing of American options. It estimates the conditional expectation (continuation value) by regressing the realized discounted payoffs from simulated paths against a set of basis functions (like Laguerre polynomials) of the state variables. This converts a nested integration problem into a simple linear regression.

*Source: eq3/jules-primer/primer.csv*

---

## Local Time

**Equation:**

$$
L_t^a = \lim_{\epsilon \to 0} \frac{1}{2\epsilon} \int_0^t 1_{\{|B_s - a| < \epsilon\}} ds
$$

**Description:**
The local time represents the amount of time that Brownian motion spends in an infinitesimal neighborhood around level a up to time t measured on a logarithmic scale. This continuous increasing process is fundamental to understanding the fine structure of Brownian paths.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Equation

**Equation:**

$$
**Variables:**
*   RV^{(d)}, RV^{(w)}, RV^{(m)}: Daily, weekly, monthly realized variance
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Variables:**
- \(CF_i\): Cash flow at time \(T_i\)
- \(y\): Yield to maturity (per period)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
Fourier Transform Methods:
C(K) = S_0 - e^{-rT}K/π ∫_0^∞ Re[e^{-iuk} φ(u - i/2)] / (u² + 1/4) du
$$

*Source: eq3/jump-diffusion-primer.txt*

---

## Equation

**Equation:**

$$
s_{A,D} N_0 (D - A) ∫_0^T E[e^{-∫_0^t r_s ds}] dt = N_0 ∫_0^T E[e^{-∫_0^t r_s ds} dL_t^{(A,D)}]
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## 2. Fama-French Three-Factor Model

**Equation:**

$$
R_i - r_f = \alpha_i + \beta_{iM} (R_M - r_f) + \beta_{iSMB} SMB + \beta_{iHML} HML + \epsilon_i
$$

**Description:**
Variables: - R_M - r_f: Market excess return (market factor) - SMB: Size premium (Small Minus Big) - HML: Value premium (High Minus Low) - \beta_{iM}: Market beta - \beta_{iSMB}: Size factor sensitivity - \beta_{iHML}: Value factor sensitivity - \alpha_i: Intercept (Jensen's alpha) | Variables: - MOM: Momentum factor (winners minus losers) - \beta_{iMOM}: Momentum sensitivity - Other factors as in Fama-French

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 1. Statistical Arbitrage Pricing Theory (Ross Approximate)

**Equation:**

$$
\lim_{n \to \infty} \frac{1}{n} \sum_{i=1}^n \left( R_i - r_f - \sum_{j=1}^k \beta_{ij} F_j \right)^2 = 0
$$

**Description:**
Variables: - n: Number of assets - \frac{1}{n} \sum_{i=1}^n: Average across all assets - (\cdot)^2: Squared deviation - Limit: As n approaches infinity, average squared error goes to zero

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 3. APT with Idiosyncratic Risk Premium

**Equation:**

$$
\mathbb{E}[R_i] = r_f + \sum_{j=1}^k \beta_{ij} \lambda_j + \theta_i \sigma_{\epsilon,i}
$$

**Description:**
Variables: - \theta_i: Price of idiosyncratic risk for asset i - \sigma_{\epsilon,i}: Idiosyncratic volatility of asset i - \theta_i \sigma_{\epsilon,i}: Idiosyncratic risk premium

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Large Portfolio Approximation

**Equation:**

$$
E[Loss] = LGD int_{-infty}^infty Phi( [Phi^{-1}(PD) - sqrt(rho) z]/sqrt(1-rho) ) phi(z) dz
$$

**Description:**
Expected loss for large homogeneous portfolio. Integral over systematic factor. Vasicek formula. Provides asymptotic tranche pricing.

*Source: eq3/minimax-primer/formulas.csv*

---

## Swap Rate Formula

**Equation:**

$$
R_{swap} = \frac{1 - P(0,T)}{\sum_{i=1}^n \underbrace{\tau_i P(0,T_i)}_{\text{PVBP}}}
$$

**Description:**
The Par Swap Rate is the fixed rate K that makes the initial value of the swap zero. It equates the value of the fixed leg (PV of coupons) to the value of the floating leg (which equals Par - PV of Principal). This rate represents the market's aggregate expectation of future LIBOR rates.

*Source: eq3/jules-primer/primer.csv*

---

## Marginal Risk Contribution

**Equation:**

$$
\text{MCTR}_i = \frac{\partial \sigma_p}{\partial w_i} = \frac{(\Sigma w)_i}{\sigma_p}
$$

**Description:**
Measures how much total portfolio risk changes from a small increase in position i.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Equation

**Equation:**

$$
P = \sum_i \mathbb{E}^{\mathbb{Q}} \left[ \frac{CF_i(path)}{e^{\int_0^{t_i} (r_s + OAS) ds}} \right]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\frac{d\mathbb{Q}}{d\mathbb{P}} = \frac{e^{\theta X_t}}{\mathbb{E}[e^{\theta X_t}]}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
Var[(1/N) Σ_{k=1}^N f(X̃^(1)(k))] = (1/N)(Var[f(X)] - 𝔼[∂f(X)]Σ𝔼[∂f(X)]^T) + O(N^{-3/2})
$$

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## Equation

**Equation:**

$$
where:
z = ν/σ0 * (F*K)^((1-β)/2) * ln(F/K)
x(z) = ln( (√(1-2ρz+z²) + z - ρ) / (1-ρ) )
F_mid = √(F*K)
$$

*Source: eq3/interest_rate_derivatives_caps_floors_pricing_primer.txt*

---

## Equation

**Equation:**

$$
The basket volatility σ_B is approximated by
σ_B^2 = Σ_{i=1}^n Σ_{j=1}^n w_i w_j ρ_{ij} σ_i σ_j
$$

*Source: eq3/exotic-options-basket-rainbow.txt*

---

## Equation

**Equation:**

$$
G = \frac{1}{2N^2 \bar{\text{RC}}} \sum_{i=1}^N \sum_{j=1}^N |\text{RC}_i - \text{RC}_j|
$$

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## Equation

**Equation:**

$$
d_2 = d_1 - \sigma \sqrt{T-t} = \frac{\ln(S_t/K) + (r - \sigma^2/2)(T-t)}{\sigma \sqrt{T-t}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Milstein Scheme

**Equation:**

$$
S_{t+Deltat} = S_t + (r - q) S_t Deltat + sigma S_t sqrt(Deltat) Z + 1/2 sigma^2 S_t (Z^2 - 1) Deltat
$$

**Description:**
First-order strong scheme for diffusion. Adds correction term for non-constant diffusion. Required for exact simulation of CEV and local vol models.

*Source: eq3/minimax-primer/formulas.csv*

---

## Geometric Series

**Equation:**

$$
\sum_{k=0}^\infty r^k = \underbrace{\frac{1}{1-r}}_{\text{Sum}} \quad \text{for } |r| < 1
$$

**Description:**
The geometric series is the mathematical foundation for discounting cash flows. It underpins the formulas for perpetuities, annuities, and the dividend discount model. In risk management, the approximation $1/(1-r) \approx 1+r$ is often used for small rates, but the exact series is required for summing infinite streams of coupons or dividends.

*Source: eq3/jules-primer/primer.csv*

---

## PVBP (DV01)

**Equation:**

$$
\text{PVBP} = \underbrace{|\Delta P|}_{\text{Price Chg}} \text{ for } \Delta y = 1\text{bp}
$$

**Description:**
Price Value of a Basis Point (also DV01 - Dollar Value of an 01) measures the absolute change in the price of a bond (or portfolio) for a 1 basis point (0.01%) change in yield. It is a dollar-denominated risk metric, widely used by traders for hedging.

*Source: eq3/jules-primer/primer.csv*

---

## Schwartz Model (One Factor)

**Equation:**

$$
d(\ln S_t) = \underbrace{\kappa(\alpha - \ln S_t)}_{\text{Mean Reversion}} dt + \sigma dW_t
$$

**Description:**
Unlike stocks, commodities exhibit mean reversion because high prices induce supply (mining/planting) and reduce demand, pushing prices back down. The Schwartz model captures this by using an Ornstein-Uhlenbeck process for the log-price. 'alpha' is the long-run equilibrium price level.

*Source: eq3/jules-primer/primer.csv*

---

## Year-on-Year Inflation Swap

**Equation:**

$$
\text{Payoff} = N \left( \underbrace{\frac{I_T}{I_{T-1}} - 1}_{\text{Realized Inflation}} - K \right)
$$

**Description:**
A YoY swap exchanges a fixed rate K for the realized annual inflation rate. Unlike Zero-Coupon Inflation Swaps (which depend on I_T/I_0), YoY swaps depend on the path I_T/I_{T-1}. Pricing requires a convexity adjustment if using the standard Zero-Coupon inflation curve, because the forward inflation rate and the discount factor are correlated.

*Source: eq3/jules-primer/primer.csv*

---

## Reflection Principle

**Equation:**

$$
P(\sup_{0\leq t\leq T} W_t^mu \geq B) = 2P(W_T^mu \geq B) = 2N\left(-\frac{B-mu T}{sigma sqrt{T}}\right)
$$

**Description:**
The probability of hitting a barrier equals twice the probability of ending above the barrier showing the symmetry of Brownian motion.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
V_t = \mathbb{E}^\mathbb{Q}\left[ e^{-\int_t^T r ds} \cdot \text{Payoff} \bigg| \mathcal{F}_t \right]
$$

**Description:**
This fundamental equation states that the price of any derivative at time t is the discounted expected value of its future payoff under the risk-neutral measure.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## CHARACTERISTIC FUNCTION FOR CLIQUET OPTIONS

**Equation:**

$$
\phi_{cliquet}(u) = E^Q[exp(iu \sum_{j=1}^{n} max(min(ln(S_{t_j}/S_{t_{j-1}}), c), f))]
$$

**Description:**
The characteristic function represents the Fourier transform of the accumulated return distribution under the risk-neutral measure Q. This formulation is essential for pricing cliquet options via Fourier inversion methods, particularly when the underlying follows a Levy process or stochastic volatility model. The nested max-min structure reflects the local cap and floor constraints applied to each period's logarithmic return. The characteristic function approach enables efficient computation of option prices across multiple strikes without repeated Monte Carlo simulation. The independence of increments in Brownian motion or certain Levy processes allows decomposition of the characteristic function into products of individual period contributions, though the cap/floor constraints introduce path dependence that complicates this factorization.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## Equation

**Equation:**

$$
\sigma_p^2 = \sum_{i=1}^N w_i^2 \sigma_i^2 + \sum_{i=1}^N \sum_{j \neq i} w_i w_j \sigma_{ij}
$$

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## Equation

**Equation:**

$$
where dProtection_t^{(A,D)} = N_0 dL_t^{(A,D)} is the tranche-specific protection payment.
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## 2. Modified Duration

**Equation:**

$$
D_{\text{Mod}} = -\frac{1}{P} \frac{\partial P}{\partial y} = \frac{D_{\text{Mac}}}{1+y}
$$

**Description:**
**Variables:** - y: Yield to maturity (per period) - P: Bond price - \partial P/\partial y: First derivative of price with respect to yield | **Explanation:** Modified duration measures the percentage change in bond price for a 1% (100 basis point) change in yield. It is the first derivative of price with respect to yield, normalized by price.

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
\mathbb{Q}(\tau_i \le t | Z) = \Phi\left( \frac{\Phi^{-1}(PD_i) - \sqrt{\rho} Z}{\sqrt{1 - \rho}} \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 2. Conditional APT (Given Information Set)

**Equation:**

$$
\mathbb{E}[R_{i,t+1} | \mathcal{F}_t] = r_{f,t} + \sum_{j=1}^k \beta_{ij,t} \lambda_{j,t}
$$

**Description:**
Variables: - \mathbb{E}[R_{i,t+1} | \mathcal{F}_t]: Conditional expectation given information at time t - \mathcal{F}_t: Filtration (information available at time t) - \beta_{ij,t}, \lambda_{j,t}: Time-varying betas and factor prices

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## LMM Drift (Terminal Measure)

**Equation:**

$$
mu_j(t) = - sum_{k=j+1}^{n} [delta sigma_j(t) sigma_k(t) rho_{jk} F_k(t)]/[1 + delta F_k(t)]
$$

**Description:**
Drift term in LMM under T_N-forward measure. Ensures martingale property of discount factors. Complex multi-dimensional simulation.

*Source: eq3/minimax-primer/formulas.csv*

---

## CSA Discounting (OIS)

**Equation:**

$$
V(t) = E^Q [ \exp(-\int_t^T \underbrace{c(u)}_{\text{Collateral Rate}} du) \text{Payoff} ]
$$

**Description:**
Post-2008, the market realized that the risk-free rate is defined by the collateral agreement (CSA). If I post cash collateral earning the Fed Funds rate, the trade is effectively discounted at Fed Funds (OIS). LIBOR is no longer the risk-free proxy; it contains bank credit risk. This shift to 'Dual Curve' pricing (OIS for discounting, LIBOR for forwarding) fundamentally changed fixed income analytics.

*Source: eq3/jules-primer/primer.csv*

---

## Cheapest-to-Deliver (Bond Futures)

**Equation:**

$$
\text{Basis} = P_{bond} - (P_{future} \times \underbrace{CF}_{\text{Conversion Factor}})
$$

**Description:**
Bond futures contracts allow the seller to deliver any of a basket of eligible bonds. Naturally, they will deliver the one that costs them the least. This 'Cheapest-to-Deliver' (CTD) bond drives the futures price. The Basis is the cost to carry the position. The option to switch the CTD bond is a valuable 'Delivery Option' embedded in the contract.

*Source: eq3/jules-primer/primer.csv*

---

## Christoffersen Test

**Equation:**

$$
LR_{ind} = -2\ln((1-\pi)^{n_{00}+n_{10}} \pi^{n_{01}+n_{11}} / \prod \pi_{ij}^{n_{ij}})
$$

**Description:**
VaR independence test.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
d_1 = \frac{(r-q+\sigma^2/2)\tau}{\sigma\sqrt{\tau}}, \quad d_2 = d_1 - \sigma\sqrt{\tau}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## 1. Vanilla Interest Rate Swap Valuation

**Equation:**

$$
V_{\text{swap}} = \sum_{i=1}^n \delta_i \left( R_{\text{fixed}} - R_{\text{floating}} \right) P(0, T_i)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## HJM Drift Condition

**Equation:**

$$
\mu(t,T) = \sigma(t,T) \underbrace{\int_t^T \sigma(t,u) du}_{\text{Volatility Integral}}
$$

**Description:**
The Heath-Jarrow-Morton (HJM) framework models the evolution of the entire forward rate curve f(t,T) rather than just the short rate. The drift condition is a profound no-arbitrage result: it shows that the drift of the forward rates under the risk-neutral measure is fully determined by the volatility structure \sigma(t,T). You cannot freely choose both drift and volatility; choosing vol dictates the drift to prevent arbitrage.

*Source: eq3/jules-primer/primer.csv*

---

## HAR-RV

**Equation:**

$$
RV_{t+1}^{(d)} = c + \beta^{(d)} RV_t^{(d)} + \beta^{(w)} RV_t^{(w)} + \beta^{(m)} RV_t^{(m)}
$$

**Description:**
Heterogeneous autoregressive realized variance.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Speed

**Equation:**

$$
\frac{\partial \Gamma}{\partial S} = -\frac{\Gamma}{S} \left( 1 + \frac{d_1}{\sigma \sqrt{T-t}} \right)
$$

**Description:**
Variables: ; Explanation: * Speed measures sensitivity of gamma to underlying price (third derivative). It captures the asymmetry of gamma across spot levels. | **Explanation:** Speed measures sensitivity of gamma to underlying price (third derivative). It captures the asymmetry of gamma across spot levels. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## Variables:

**Equation:**

$$
- \(H\): Barrier level (\(H < S_t\)) - \(C_{\text{BS}}(S, K, \dots)\): Black-Scholes call price
$$

**Description:**
Variables: ; Explanation: * Barrier options are knocked in or out when the underlying crosses a barrier. Pricing uses reflection principle and image solutions. Discrete monitoring requires correction factors (Broadie-Glasserman-Kou).

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## **Parisian Options**

**Equation:**

$$
\text{Price via PDE with cumulative time variable } A_t = \int_0^t \mathbf{1}_{\{S_u \le H\}} du
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Debit Value Adjustment (DVA)

**Equation:**

$$
DVA = -LGD_own × Σ_{i=1}^{n} NEE(t_i) × PD_own(t_{i-1}, t_i) × (1 - PD_counterparty(0, t_{i-1}))
$$

**Description:**
Where LGD_own represents the calculating party's own loss given default, NEE(t_i) denotes negative expected exposure (the counterparty's exposure to the calculating entity) at time t_i, PD_own(t_{i-1}, t_i) is the marginal probability of the calculating party's default, and PD_counterparty(0, t_{i-1}) represents the counterparty's survival probability.

*Source: eq3/credit_derivatives_xva_primer.txt*

---

## 4. Theta (Time Decay)

**Equation:**

$$
\Theta_{\text{call}} = -\frac{S_t \phi(d_1) \sigma}{2\sqrt{T-t}} - r K e^{-r(T-t)} \Phi(d_2)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## TIPS Pricing

**Equation:**

$$
P_TIPS = 1/2 sum_{i=1}^{2n} (C/2 * IndexRatio_ti)/(1+y/2)^ti + (100 * IndexRatio_T)/(1+y/2)^T
$$

**Description:**
Inflation-adjusted principal and coupons. Semi-annual index ratio adjustment. Real yield from TIPS spread.

*Source: eq3/minimax-primer/formulas.csv*

---

## Markowitz Mean-Variance

**Equation:**

$$
\min \underbrace{w^T \Sigma w}_{\text{Portfolio Variance}} \quad \text{s.t.} \quad w^T \mu = R
$$

**Description:**
The foundation of Modern Portfolio Theory. It assumes investors care only about expected return and variance. By minimizing variance for a given return, one derives the 'Efficient Frontier'. The solution w involves the inverse of the covariance matrix \Sigma^{-1}, which makes the model unstable (sensitive to estimation errors) in practice.

*Source: eq3/jules-primer/primer.csv*

---

## Black-Litterman

**Equation:**

$$
E[R] = [(\tau \Sigma)^{-1} + P^T \Omega^{-1} P]^{-1} [(\tau \Sigma)^{-1} \Pi + P^T \Omega^{-1} Q]
$$

**Description:**
Addresses the instability of Markowitz optimization. It starts with the 'Equilibrium' returns \Pi (implied by market cap weights) as a prior, and updates them with the investor's subjective 'Views' Q (with uncertainty \Omega) using Bayesian methodology. The result is a set of stable expected returns that produces intuitive portfolios deviations from the benchmark. | Combining equilibrium returns with investor views.

*Source: eq3/jules-primer/primer.csv; eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
B(u,\tau) = \frac{\kappa - \rho\sigma ui - d}{\sigma^2}\left(\frac{1 - e^{-d\tau}}{1 - ge^{-d\tau}}\right)
$$

*Source: eq3/heston-characteristic.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## Equation

**Equation:**

$$
The general rainbow option payoff on n assets with weights α_i is
max(Σ_{i=1}^n α_i S_T^{(i)} - K, 0)
$$

*Source: eq3/exotic-options-basket-rainbow.txt*

---

## Equation

**Equation:**

$$
\text{RC}_i = \frac{w_i \frac{\partial \rho(\mathbf{w})}{\partial w_i}}{\rho(\mathbf{w})}
$$

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## Equation

**Equation:**

$$
d_{1,2} = \frac{\ln(F/K) \pm \frac{1}{2} \sigma^2 (T_{i-1} - T_i)}{\sigma \sqrt{T_{i-1} - T_i}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Schwartz-Smith (Two Factor)

**Equation:**

$$
\ln S_t = \underbrace{\chi_t}_{\text{Short-Term}} + \underbrace{\xi_t}_{\text{Long-Term}}
$$

**Description:**
This model decomposes the spot price into two stochastic factors: a short-term mean-reverting deviation \chi_t (driven by temporary supply shocks, weather) and a long-term equilibrium price \xi_t (driven by inflation, technological costs, following a Random Walk). This better fits the term structure of futures volatility (high short-term vol, low long-term vol).

*Source: eq3/jules-primer/primer.csv*

---

## Kendall's Tau

**Equation:**

$$
\tau = \underbrace{P(\text{Concordant}) - P(\text{Discordant})}_{\text{Rank Correlation}}
$$

**Description:**
A robust, non-parametric measure of dependence. Unlike Pearson correlation (which measures linear dependence), Kendall's Tau measures monotonic dependence (rank order). It is invariant under non-linear transformations of variables, making it the preferred metric for calibrating copulas.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
R_i - R_f = \alpha_i + \beta_i^{MKT}(R_m - R_f) + \beta_i^{SMB} SMB + \beta_i^{HML} HML + \epsilon_i
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Barrier Option (Down-and-Out)

**Equation:**

$$
V = C_{BS}(S) - \underbrace{(S/B)^{1 + 2r/\sigma^2}}_{\text{Reflection Factor}} C_{BS}(B^2/S)
$$

**Description:**
This is the analytical formula for a Down-and-Out Call option, derived using the Reflection Principle of Brownian Motion. B is the barrier level. The value is the price of a standard call minus a 'reflected' call. The term (S/B)^{...} represents the probability density adjustment for paths that touch the barrier. If the spot S hits B, the option knocks out and becomes worthless.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
\frac{\partial V}{\partial t} + \mathcal{L}V - rV = 0, \quad S > S^*(t)
V(S, t) = K - S, \quad S \le S^*(t)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Gamma

**Equation:**

$$
\Gamma = \frac{\partial^2 C}{\partial S^2} = \frac{e^{-q(T-t)} \phi(d_1)}{S \sigma \sqrt{T-t}}
$$

**Description:**
Variables: ; Explanation: * Gamma measures convexity of option price with respect to underlying price (second derivative). It is the same for calls and puts. Gamma is highest for at-the-money options and increases as maturity approaches. | **Explanation:** Gamma measures convexity of option price with respect to underlying price (second derivative). It is the same for calls and puts. Gamma is highest for at-the-money options and increases as maturity approaches. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## Portfolio Variance Decomposition

**Equation:**

$$
\sigma_p^2 = \mathbf{w}^\prime \Sigma \mathbf{w} = \sum_{i=1}^N \sum_{j=1}^N w_i w_j \sigma_{ij}
$$

**Description:**
This fundamental equation represents the total variance of a portfolio with N assets, where \mathbf{w} is the N-dimensional vector of portfolio weights, \Sigma is the covariance matrix of asset returns, and \sigma_{ij} represents the covariance between assets i and j. The double summation captures both individual asset variances (when i=j) and pairwise covariances. For PhD-level analysis, note that this decomposition assumes the covariance matrix is positive semi-definite, which ensures \sigma_p^2 \geq 0. The quadratic form \mathbf{w}^\prime \Sigma \mathbf{w} is homogeneous of degree 2 in portfolio weights, making it suitable for optimization using quadratic programming techniques. Advanced considerations include the impact of estimation error in \Sigma, particularly when N approaches or exceeds the number of observations, leading to eigenvalue shrinkage and regularization techniques.

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## 1. Realized Variance

**Equation:**

$$
\sigma_{\text{realized}}^2 = \frac{252}{N} \sum_{i=1}^N \left( \ln \frac{S_{t_i}}{S_{t_{i-1}}} \right)^2
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## **Heston Characteristic Function:**

**Equation:**

$$
\phi(u, t, v) = \mathbb{E}^{\mathbb{Q}}\left[ e^{iu \ln S_T} \middle| v_t = v \right] = e^{C(t) + D(t) v + iu \ln S_t}
$$

**Description:**
where C(t) and D(t) solve the Riccati ODEs:

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Cholesky Decomposition

**Equation:**

$$
\Sigma = \underbrace{L}_{\text{Lower Triangular}} \cdot \underbrace{L^T}_{\text{Transpose}}
$$

**Description:**
A method to decompose a Hermitian, positive-definite matrix \Sigma into the product of a lower triangular matrix and its transpose. In finance, it is essential for Monte Carlo simulations of correlated assets. To generate correlated random variables, one multiplies a vector of uncorrelated standard normals by L.

*Source: eq3/jules-primer/primer.csv*

---

## Snell Envelope

**Equation:**

$$
V_t = \operatorname{ess\sup}_{\tau \ge t} \mathbb{E}[e^{-r(\tau-t)} g(S_\tau) | \mathcal{F}_t]
$$

**Description:**
Value function for American options as smallest supermartingale.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Auxiliary Update:**
d_1 = \frac{\ln(S/K) + (r_d - r_f + \frac{1}{2}\sigma^2)T}{\sigma \sqrt{T}}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\psi(u) = \frac{\lambda \mu}{c} \exp\left(-\frac{c - \lambda\mu}{\lambda \mathbb{E}[X^2]/(2\mu)} u\right)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## VOLATILITY SURFACE CALIBRATION

**Equation:**

$$
\min_{\Theta} \sum_{i=1}^N w_i \left(\sigma_{market}(K_i,T_i) - \sigma_{model}(K_i,T_i;\Theta)\right)^2
$$

**Description:**
This weighted least-squares objective function represents the standard approach for calibrating stochastic volatility models to market implied volatilities. The parameter set \Theta includes all model-specific parameters (Heston: \{\kappa,\theta,\sigma,\rho,v_0\}, SABR: \{\alpha,\beta,\rho,\nu\}). Weights w_i typically reflect liquidity considerations, with higher weights for more liquid options near-the-money and shorter maturities.

*Source: eq3/volatility-calibration.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## Correlation Impact on Skew-Smile Trade-off

**Equation:**

$$
Skew = \frac{\partial \sigma_{impl}}{\partial \ln K} = \frac{\rho \nu \alpha}{F_{mid}^{1-\beta}}
$$

*Source: eq3/sabr-model.txt*

---

## Equation

**Equation:**

$$
P(τ > T) = N((ln(V_t/L) - ν(T-t))/(σ√(T-t))) - (V_t/L)^{-2ν/σ²}N((-ln(V_t/L) - ν(T-t))/(σ√(T-t)))
$$

*Source: eq3/credit_derivatives_structural_models.txt*

---

## Equation

**Equation:**

$$
p_i(z,t) = P(X_i ≤ Φ^{-1}(1 - e^{-h_i t}) | Z = z) = Φ( \frac{Φ^{-1}(1 - e^{-h_i t}) - √{ρ_i} z}{√{1-ρ_i}} )
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## Put-Call Parity

**Equation:**

$$
C_t - P_t = \underbrace{S_t}_{\text{Long Stock}} - \underbrace{K e^{-r(T-t)}}_{\text{PV Strike}}
$$

**Description:**
Put-Call parity is a model-independent no-arbitrage relationship. It states that a portfolio of a Long Call and Short Put is synthetically equivalent to a Forward contract (Long Stock + Borrowing PV of Strike). Any deviation from this equality represents a risk-free arbitrage opportunity (conversions/reversals). It holds for European options on non-dividend paying stocks (adjusted for dividends if necessary).

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
C_{Am}(S, t) = C_{Eu}(S, t) + A_2 \left( \frac{S}{S^*} \right)^{q_2}, \quad S < S^*
C_{Am}(S, t) = S - K, \quad S \ge S^*
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\min_G \max_D \mathbb{E}_{x \sim p_{data}}[\log D(x)] + \mathbb{E}_{z \sim p_z}[\log(1 - D(G(z)))]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
d_1 = \frac{\ln(F_t/K) + (\sigma^2/2)(T-t)}{\sigma \sqrt{T-t}}, \quad d_2 = d_1 - \sigma \sqrt{T-t}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md; eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
\frac{dD}{d\tau} = \kappa\theta D - \frac{1}{2} \xi^2 D^2 + (\rho \xi i u - \kappa) D + \frac{1}{2} u (u - i)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
\text{ES}_\alpha = \mu + \frac{\sigma}{1-\alpha} \phi(z_\alpha) \quad \text{(normal assumption)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Yield to Call (YTC)

**Equation:**

$$
P = \sum_{i=1}^{t_{call}} \frac{C}{(1+y_{call})^i} + \frac{P_{call}}{(1+y_{call})^{t_{call}}}
$$

**Description:**
For callable bonds, the YTC calculates the yield assuming the issuer exercises the call option at the earliest (or a specific) call date. If interest rates drop, the issuer is likely to call the bond to refinance, making YTC the relevant metric.

*Source: eq3/jules-primer/primer.csv*

---

## Hawkes Process (Order Arrival)

**Equation:**

$$
\lambda(t) = \mu + \sum_{t_i < t} \underbrace{\alpha e^{-\beta(t-t_i)}}_{\text{Self-Excitation}}
$$

**Description:**
High-frequency order arrivals are not independent Poisson events; they cluster. A Hawkes process captures this 'self-exciting' property: the arrival of a trade at t_i increases the intensity \lambda(t) of future trades, decaying exponentially over time. This models order book dynamics, where one large order triggers a cascade of algos reacting, creating liquidity avalanches.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
dS_t = (r-q)S_t dt + L(S_t, t) \sqrt{v_t} S_t dW_t^S
dv_t = \kappa(\theta - v_t) dt + \xi \sqrt{v_t} dW_t^v
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Smooth Pasting Conditions:**
V(S^*(t), t) = K - S^*(t)
\frac{\partial V}{\partial S}(S^*(t), t) = -1
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
r_{PAR} = \frac{\sum_{i=1}^{n} f(0,T_{i-1},T_i) \tau_i P(0,T_i)}{\sum_{i=1}^{n} \tau_i P(0,T_i)}
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## Equation

**Equation:**

$$
\text{Convexity Adjustment} \approx -\frac{1}{2} \frac{\partial^2 A}{\partial r^2} \text{Var}(r)
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## CHANGE OF NUMERAIRE TECHNIQUE

**Equation:**

$$
V_{cliquet} = S_0 E^{S}[\sum_{i=1}^{n} max(min(R_i/S_{t_{i-1}}, c/S_{t_{i-1}}), f/S_{t_{i-1}})]
$$

**Description:**
Using the asset price as numeraire simplifies pricing by eliminating the discount factor and converting to the equivalent martingale measure associated with the asset price. The expectation E^{S} is taken under the measure where the discounted asset price is a martingale. This change of measure technique is particularly useful for cliquet options because it handles the ratio structure naturally. The normalized returns R_i/S_{t_{i-1}} represent percentage returns, making the analysis dimensionless. However, the strike normalization creates state-dependent caps and floors, requiring careful treatment in numerical implementations.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## Equation

**Equation:**

$$
\text{EC}_i = w_i \frac{\partial \rho(\mathbf{w})}{\partial w_i} = \mathbb{E}[X_i | X = q_\alpha(X)]
$$

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## 3. Volatility Swap Fair Strike

**Equation:**

$$
\sigma_{\text{fair}} = \sqrt{\frac{1}{P(0,T)} \mathbb{E}^{\mathbb{Q}}\left[ \int_0^T \sigma_s^2 ds \right]}
$$

**Description:**
**Variables:** - σ_{\text{fair}}: Fair volatility strike (square root of fair variance) - Other variables as defined

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Product Rule (Calculus)

**Equation:**

$$
d(uv) = \underbrace{u \, dv}_{\text{Hold u Constant}} + \underbrace{v \, du}_{\text{Hold v Constant}}
$$

**Description:**
The Product Rule describes how to differentiate the product of two functions u and v. In stochastic calculus (Itô's Lemma), an additional term (du dv) appears if u and v are stochastic processes driven by Brownian motion. This rule is fundamental for deriving pricing formulas where the payoff depends on multiple changing variables (e.g., Numeraire changes).

*Source: eq3/jules-primer/primer.csv*

---

## Newey-West HAC

**Equation:**

$$
\hat{\Sigma}_{NW} = \hat{\Gamma}_0 + \sum_{j=1}^q (1 - j/(q+1)) (\hat{\Gamma}_j + \hat{\Gamma}_j^T)
$$

**Description:**
HAC standard errors.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## 3. VIX Calculation

**Equation:**

$$
VIX^2 = \frac{2}{T} \sum_i \frac{\Delta K_i}{K_i^2} e^{rT} Q(K_i) - \frac{1}{T}\left(\frac{F}{K_0} - 1\right)^2
$$

*Source: eq3/gemini-primer/gemini_primer.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Variables:

**Equation:**

$$
- \(\rho\): Correlation between the two assets - \(\hat{\sigma}\): Volatility of the ratio \(S^1/S^2\)
$$

**Description:**
Variables: ; Explanation: * Exchange options give the right to exchange one asset for another. The Margrabe formula reduces to Black-Scholes with the ratio as underlying and zero strike.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
Alternative discrete form:
DLPV = (1-R) * sum_{m=1}^{M*t_N} Z(t_V,t_m) * (Q(t_V,t_{m-1}) - Q(t_V,t_m))
$$

*Source: eq3/cds-primer-content.txt*

---

## Equation

**Equation:**

$$
where S_T^Basket represents the basket value at maturity, calculated as
S_T^Basket = Σ_{i=1}^n w_i S_T^i
$$

*Source: eq3/exotic-options-basket-rainbow.txt*

---

## SABR Stochastic Integration for Forward Prices

**Equation:**

$$
F_T = F_0 \exp\left( \int_0^T \alpha_t F_t^{\beta} dW_t^F - \frac{1}{2} \int_0^T \alpha_t^2 F_t^{2\beta} dt \right)
$$

**Description:**
The forward price under SABR follows this exponential representation via Ito's formula. The quadratic variation term -1/2 \int \alpha_t^2 F_t^{2\beta} dt provides drift required for martingale under risk-neutral measure. Unlike Black-Scholes where volatility is constant, the stochastic nature of \alpha_t and state-dependent diffusion F_t^{\beta} introduce path dependence, making direct Monte Carlo simulation challenging but providing rich smile structure.

*Source: eq3/sabr-model.txt*

---

## Equation

**Equation:**

$$
d_{1,2} = \frac{\ln(S_0/K) \pm \frac{1}{2} \sigma_{swaption}^2 T_e}{\sigma_{swaption} \sqrt{T_e}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
The second moment is
E[(S_T^Basket)^2] = Σ_{i=1}^n Σ_{j=1}^n w_i w_j S_0^i S_0^j e^{(2r + σ_i σ_j ρ_{ij})T}
$$

*Source: eq3/exotic-options-basket-rainbow.txt*

---

## Equation

**Equation:**

$$
s_{A,D} = \frac{E[∫_0^T e^{-rt} dProtection_t^{(A,D)}]}{∫_0^T e^{-rt} E[1_{\{τ_m > t\}}] dt N_0 (D - A)}
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## 3. Duffie-Singleton Reduced-Form Model

**Equation:**

$$
\tilde{P}(t,T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T (r_s + \lambda_s) ds} \middle| \mathcal{F}_t \right]
$$

**Description:**
**Variables:** - λ_t: Hazard rate (default intensity) process - r_s: Risk-free short rate - \tilde{P}(t,T): Price of defaultable bond

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Rough Volatility Process

**Equation:**

$$
v_t = \xi(t) \exp\left(\eta \sqrt{2\alpha+1} \int_0^t (t-s)^\alpha dW_s - \frac{1}{2}\eta^2 t^{2\alpha+1}\right)
$$

**Description:**
Non-Markovian stochastic volatility model generating realistic dynamics with rough paths where alpha = H - 1/2.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Ito's Lemma (Multiple Variables)

**Equation:**

$$
For f(t,X_t^(1),...,X_t^(n)) where each X_t^(i) follows dX_t^(i) = μ_i(t,X_t)dt + σ_i(t,X_t)dW_t^(i):
$$

*Source: eq3/kimi-primer/financial-derivatives-pricing-primer.md*

---

## Equation

**Equation:**

$$
a_1 = \frac{\ln(S_t/S^*) + (r-q+\sigma^2/2)T_1}{\sigma\sqrt{T_1}}, \quad a_2 = a_1 - \sigma\sqrt{T_1}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Tree Calibration to Volatility:

**Equation:**

$$
σ_implied = √[(2/Δt) * ln((e^{rΔt}V_{market} - p_dV_{n-1}^{i+1} - p_uV_{n+1}^{i+1})/(p_mV_n^{i+1}))]
$$

**Description:**
Tree calibration involves determining the local volatility surface σ(S,t) such that the tree reproduces observed market prices of European options across all strikes and maturities. This inverse problem requires solving a system of nonlinear equations where the unknowns are the local volatilities at each node. The calibration process must ensure positive probabilities and maintain the no-arbitrage condition that forward prices grow at the risk-free rate. The implied volatility function is typically parameterized using spline interpolation or parametric forms to ensure smoothness and stability. The calibration algorithm iteratively adjusts local volatilities to minimize the sum of squared differences between model and market prices, often employing Levenberg-Marquardt optimization or similar techniques. Regularization terms may be added to penalize excessive volatility variation and ensure numerical stability. The resulting local volatility surface must satisfy the Dupire equation: σ_local^2(K,T) = 2∂C/∂T + rK∂C/∂K / K^2 ∂^2C/∂K^2 where C(K,T) is the call price as a function of strike and maturity. This calibration framework extends naturally to stochastic volatility models by augmenting the state space to include volatility as an additional dimension.

*Source: eq3/tree_methods_primer.txt*

---

## 6. DV01 (Dollar Value of 01)

**Equation:**

$$
\text{DV01} = -\frac{\partial P}{\partial y} \times 0.0001 \approx D_{\text{Mod}} \times P \times 0.0001
$$

**Description:**
**Variables:** - ∂P/∂y: Dollar change in price for 1bp yield change - 0.0001: 1 basis point in decimal form - P: Bond price - D_Mod: Modified duration | **Explanation:** DV01 measures the change in bond price (in currency units) for a 1 basis point (0.01%) change in yield. Used for hedging and risk management.

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## **G2++ Bond Price:**

**Equation:**

$$
P(t,T) = \frac{P(0,T)}{P(0,t)} \exp\left( -\frac{1}{2}(V(t,T) - V(0,T) + V(0,t)) - M_x(t,T) x_t - M_y(t,T) y_t \right)
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## LIBOR-in-Arrears

**Equation:**

$$
V = N \cdot D(0,T) \cdot [L_0 + \underbrace{\frac{\sigma^2 L_0^2 T}{1+L_0 \tau}}_{\text{Convexity Adj}}]
$$

**Description:**
A standard swap resets at T-1 and pays at T. An 'In-Arrears' swap resets at T and pays at T. Because the payment happens later relative to the fixing, and higher rates imply lower discount factors, there is a correlation between the rate and the discount factor. This requires a convexity adjustment (positive) to the forward rate.

*Source: eq3/jules-primer/primer.csv*

---

## Investment Timing (McDonald-Siegel)

**Equation:**

$$
F(V) = A V^\beta, \quad \text{Threshold} = \underbrace{\frac{\beta}{\beta-1} I}_{\text{Hurdle > Cost}}
$$

**Description:**
Treats an investment opportunity as an American Call option on the project's value V. Because uncertainty exists and the investment is irreversible, there is an 'Option Value of Waiting'. The optimal rule is not to invest when NPV > 0 (V > I), but only when V exceeds the cost I by a factor \beta/(\beta-1). This explains why firms delay investment even when profitable.

*Source: eq3/jules-primer/primer.csv*

---

## Variance Swap Replication

**Equation:**

$$
E[V] = \frac{2}{T} e^{rT} \left( \int_0^{F_0} \frac{1}{K^2} P(K) dK + \int_{F_0}^\infty \frac{1}{K^2} C(K) dK \right)
$$

**Description:**
Replication of variance via continuum of OTM options.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
V = \max_{q_i \in [q_{min}, q_{max}]} \mathbb{E}^{\mathbb{Q}} \left[ \sum_{i=1}^N e^{-r t_i} q_i (S_{t_i} - K) \right]
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
(\mathbf{J}^T \mathbf{J} + \lambda \mathbf{I}) \delta = \mathbf{J}^T (\mathbf{y} - \mathbf{f}(\theta))
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\text{Continuation value approximated by regression: } \hat{C}(t_i, S) = \sum_{k=0}^K \beta_k \psi_k(S)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## P(t,T) = exp[-A(t,T) - B(t,T)r(t)]

**Equation:**

$$
where B(t,T) = (1 - e^{-α(T-t)})/α and A(t,T) = ∫_t^T θ(s)B(s,T)ds - σ²/(4α³)[1 - e^{-α(T-t)}]²[1 - e^{-2αt}]
$$

**Description:**
This closed-form solution for zero-coupon bond prices is a key advantage of the Hull-White model. The function A(t,T) captures the convexity adjustment and ensures the model matches the initial term structure. The exponential affine form arises from the Gaussian nature of the short rate process.

*Source: eq3/hull-white-primer.txt*

---

## **Break-Even Inflation Rate:**

**Equation:**

$$
\pi_{\text{BE}}(t,T) = \left( \frac{P_{\text{nominal}}(t,T)}{P_{\text{real}}(t,T)} \right)^{\frac{1}{T-t}} - 1
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas_clean.csv*

---

## 2. Trinomial Tree

**Equation:**

$$
V_0 = e^{-r\Delta t} \left[ p_u \sum_{i=0}^n \binom{n}{i} p^i (1-p)^{n-i} V_u + p_m \sum_{j} V_m + p_d \sum_{k} V_d \right]
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
\nu(dx) = \frac{C e^{-G|x|}}{|x|^{1+Y}} \mathbf{1}_{x<0} + \frac{C e^{-Mx}}{x^{1+Y}} \mathbf{1}_{x>0}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
Var(Î_ELHS) ≤ (1/n) Var(f(X)) - (1/n²) Σ_{j=1}^d ∫_0^1 (∫_[0,1]^{d-1} f(x) dx_{-j} - ∫_[0,1]^d f(x) dx)² dx_j
$$

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## DVA (Debit)

**Equation:**

$$
\text{DVA} = (1-R_{own}) \int_0^T \underbrace{\text{ENE}(t)}_{\text{Negative Exposure}} dPD_{own}(t)
$$

**Description:**
Debit Valuation Adjustment is the mirror of CVA. It reflects the value of the bank's *own* default risk. If the bank defaults while owing money (Negative Exposure), it effectively pays only the recovery rate, creating a gain for shareholders. It is controversial but required by accounting standards (IFRS 13) to ensure bilateral symmetry.

*Source: eq3/jules-primer/primer.csv*

---

## Vanna

**Equation:**

$$
\frac{\partial \Delta}{\partial \sigma} = \frac{\partial \nu}{\partial S} = \frac{-N'(d_1) d_2}{\sigma}
$$

**Description:**
Vanna is a second-order Greek measuring the sensitivity of Delta to Volatility (or equivalently, Vega to Spot). It is crucial in FX markets. A non-zero Vanna implies that as vol rises, the hedge ratio changes, forcing a delta rebalance. It is the primary risk managed when hedging the 'Skew'.

*Source: eq3/jules-primer/primer.csv*

---

## Brownian Bridge

**Equation:**

$$
W(t) = \underbrace{(1-t)W(0) + tW(1)}_{\text{Linear Interp}} + \underbrace{B(t)}_{\text{Bridge Noise}}
$$

**Description:**
A Brownian Bridge conditions a Brownian path to start at A and end at B. In Monte Carlo, it is used for variance reduction and for refining paths. For example, if a coarse simulation step crosses a barrier, a Brownian Bridge can be used to sample the path *between* steps to check if the barrier was hit in the interim, reducing discretization bias.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
**Marginal Risk Contribution:**
\frac{\partial \sigma_p}{\partial w_i} = \frac{(\Sigma w)_i}{\sigma_p}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation: A(t,T)

**Equation:**

$$
A(t,T) = \exp\left( \left(\theta - \frac{\sigma^2}{2\kappa^2}\right)(B(t,T) - (T-t)) - \frac{\sigma^2}{4\kappa} B(t,T)^2 \right)
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## 2. Milstein Scheme

**Equation:**

$$
S_{t+\Delta t} = S_t + (r - q) S_t \Delta t + \sigma S_t \sqrt{\Delta t} Z + \frac{1}{2} \sigma^2 S_t (Z^2 - 1) \Delta t
$$

**Description:**
**Variables:** - (Z² - 1)Δt: Correction term for non-constant diffusion - Other variables as defined

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 3. Return Covariance Structure Under APT

**Equation:**

$$
\boldsymbol{\Sigma} = \mathbf{B} \boldsymbol{\Sigma}_F \mathbf{B}^\top + \boldsymbol{\Sigma}_\epsilon
$$

**Description:**
Variables: - \boldsymbol{\Sigma}: n×n covariance matrix of asset returns - \boldsymbol{\Sigma}_F: k×k covariance matrix of factors - \boldsymbol{\Sigma}_\epsilon: n×n diagonal matrix of idiosyncratic variances - \mathbf{B}: n×k beta matrix

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Barrier Option (Standard)

**Equation:**

$$
C_down-out = S_0 Phi(d_1) - K exp(-rT) Phi(d_2) - (S_0/H)^lambda [ Phi(-d_3) - (K/H) exp(-rT) Phi(-d_4) ] for H < K
$$

**Description:**
Standard Black formula for down-and-out call with H < K. Complex boundary conditions. Parameters lambda = 1 - 2mu/sigma^2, d_3 = (ln(H^2/S_0K) + (r+sigma^2/2)T)/(sigma sqrt(T)).

*Source: eq3/minimax-primer/formulas.csv*

---

## Lookback Option (Floating Strike)

**Equation:**

$$
C = S N(a_1) - S_{min} e^{-rT} N(a_2) + \underbrace{S \frac{\sigma^2}{2r} [...]}_{\text{Strike Adjustment}}
$$

**Description:**
A floating strike lookback call allows the holder to buy the asset at the minimum price S_{min} observed during the option's life. This creates perfect market timing. The pricing formula involves terms dependent on the distribution of the minimum of a Brownian motion. Because the option minimizes regret, it is significantly more expensive than a vanilla call.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
D_{Mac} = \frac{\sum_{i=1}^n t_i \cdot \frac{C_i}{(1+y)^{t_i}}}{\sum_{i=1}^n \frac{C_i}{(1+y)^{t_i}}}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\nu(dx) = \lambda [p \eta_1 e^{-\eta_1 x} \mathbf{1}_{x>0} + (1-p) \eta_2 e^{\eta_2 |x|} \mathbf{1}_{x<0}] dx
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Volga (Vomma)

**Equation:**

$$
\frac{\partial \mathcal{V}}{\partial \sigma} = S e^{-q(T-t)} \sqrt{T-t} \phi(d_1) \frac{d_1 d_2}{\sigma}
$$

**Description:**
Variables: ; Explanation: * Volga measures second-order sensitivity of option price to volatility (volatility gamma). It is positive for away-from-the-money options and zero for at-the-money. | **Explanation:** Volga measures second-order sensitivity of option price to volatility (volatility gamma). It is positive for away-from-the-money options and zero for at-the-money. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
**Variables:**
- \(\lambda_1, \lambda_2\): Two decay parameters
- \(\beta_3\): Additional curvature factor
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
Where:
d_1 = \frac{\ln(r_{FWD}/K) + \frac{1}{2} \sigma^2 T_S}{\sigma \sqrt{T_S}}
d_2 = d_1 - \sigma \sqrt{T_S}
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## MARTINGALE PRICING FRAMEWORK

**Equation:**

$$
V_{cliquet}(t) = E^Q[e^{-r(T-t)} \sum_{i=1}^{n} max(min(ln(S_{t_i}/S_{t_{i-1}}), c), f) | \mathcal{F}_t]
$$

**Description:**
This martingale representation provides the fundamental pricing equation under no-arbitrage conditions. The conditional expectation is taken under the risk-neutral measure Q given the filtration \mathcal{F}_t representing all available information at time t. The key insight is that each period's return can be decomposed into a Brownian motion increment plus drift, but the cap/floor constraints create non-linear payoffs that prevent closed-form solutions. The tower property of conditional expectations allows recursive computation, working backward from the final period. However, the path-dependent nature means the pricing functional depends on the entire history of the underlying asset, requiring storage of intermediate values in numerical implementations.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## Equation

**Equation:**

$$
C_{vulnerable} = V_0N(d_1) - Ke^{-rT}N(d_2) - V_0(L/V_0)^{2ν/σ²+2}N(d_3) + Ke^{-rT}(L/V_0)^{2ν/σ²}N(d_4)
$$

*Source: eq3/credit_derivatives_structural_models.txt*

---

## 2. Expected Shortfall (ES/CVaR)

**Equation:**

$$
\text{ES}_\alpha = \mathbb{E}[L | L > \text{VaR}_\alpha] = \frac{1}{1-\alpha} \int_\alpha^1 \text{VaR}_u du
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## KMV Model (Distance to Default)

**Equation:**

$$
DD = \frac{\ln(V_A/F) + (\mu - \sigma_A^2/2)T}{\underbrace{\sigma_A \sqrt{T}}_{\text{Asset Volatility}}}
$$

**Description:**
The KMV (Kealhofer, McQuown, and Vasicek) model is a commercial implementation of the structural framework. 'DD' (Distance to Default) measures how many standard deviations the asset value is away from the default point F. F is typically defined as Short Term Debt + 0.5 * Long Term Debt. The DD is then empirically mapped to an Expected Default Frequency (EDF) using historical database of defaults, avoiding assumptions about the normal distribution of asset returns.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
d = \sqrt{(\rho \xi i u - \kappa)^2 + \xi^2 (i u + u^2)}, \quad g = \frac{\kappa - \rho \xi i u - d}{\kappa - \rho \xi i u + d}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
dlnF_k(t) = -½σ_k(t)²dt + σ_k(t)dW_k^{T_N}(t) - Σ_{j=k+1}^{N-1} [τ_jF_j(t)σ_j(t)ρ_{k,j}]/[1+τ_jF_j(t)] dt
$$

*Source: eq3/lmm_content.txt*

---

## 2. Zero-Beta Portfolio Construction

**Equation:**

$$
\mathbf{w}_{ZB} \in \{\mathbf{w}: \mathbf{w}^\top \mathbf{B} = \mathbf{0}, \mathbf{w}^\top \mathbf{1} = 1\}
$$

**Description:**
Variables: - \mathbf{w}_{ZB}: Zero-beta portfolio weights - \mathbf{w}^\top \mathbf{B} = \mathbf{0}: Zero exposure to all factors - \mathbf{w}^\top \mathbf{1} = 1: Weights sum to 1 (fully invested)

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Yield to Worst (YTW)

**Equation:**

$$
YTW = \min(\text{YTM}, \underbrace{\text{YTC}_1, \text{YTC}_2, ...}_{\text{Call Schedules}}, \text{YTP})
$$

**Description:**
YTW is the most conservative yield measure for bonds with embedded options (callable/puttable). It is the minimum of the YTM and all possible Yields to Call/Put. Investors should value callable bonds based on YTW to avoid overestimating expected returns.

*Source: eq3/jules-primer/primer.csv*

---

## Gaussian Copula

**Equation:**

$$
C(u_1, ..., u_n) = \Phi_\Sigma (\underbrace{\Phi^{-1}(u_1), ..., \Phi^{-1}(u_n)}_{\text{Mapped Normals}})
$$

**Description:**
The Gaussian Copula is the industry standard for modeling correlation in CDOs (Collateralized Debt Obligations). It takes marginal default probabilities u_i (from CDS curves) and maps them to standard normal variables. These variables are then correlated using a correlation matrix \Sigma. While mathematically elegant, it lacks tail dependence, meaning it underestimates the probability of simultaneous defaults during extreme market crashes (a flaw highlighted in the 2008 crisis).

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
dS_t = \mu S_t dt + \sqrt{v_t} S_t dW_t^S
dv_t = \kappa(\theta - v_t) dt + \xi \sqrt{v_t} dW_t^v
dW_t^S dW_t^v = \rho dt
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\psi(u) = i\gamma u - \frac{1}{2}\sigma^2 u^2 + \int_{\mathbb{R}} (e^{iux} - 1 - iux \mathbf{1}_{|x|<1}) \nu(dx)
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## **Binomial Tree (Cox-Ross-Rubinstein)**

**Equation:**

$$
u = e^{\sigma \sqrt{\Delta t}}, \quad d = e^{-\sigma \sqrt{\Delta t}}, \quad p = \frac{e^{(r-q)\Delta t} - d}{u - d}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
\text{MaxRC} = \max_{i \in \{1,...,N\}} \text{RC}_i, \quad \text{MinRC} = \min_{i \in \{1,...,N\}} \text{RC}_i
$$

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## Equation: M_x(t,T)

**Equation:**

$$
M_x(t,T) = \frac{1 - e^{-\kappa_1(T-t)}}{\kappa_1}, \quad M_y(t,T) = \frac{1 - e^{-\kappa_2(T-t)}}{\kappa_2}
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## 3. APT Risk Premium Decomposition

**Equation:**

$$
\mathbb{E}[R_i] - r_f = \beta_{iM} (\mathbb{E}[R_M] - r_f) + \sum_{j=2}^k \beta_{ij} \lambda_j + \alpha_i^{APT}
$$

**Description:**
Variables: - \beta_{iM} (\mathbb{E}[R_M] - r_f): CAPM predicted return - \sum_{j=2}^k \beta_{ij} \lambda_j: Additional APT risk premiums from non-market factors - \alpha_i^{APT}: Abnormal return not explained by market and other factors

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Risk Parity

**Equation:**

$$
w_i \frac{\partial \sigma_p}{\partial w_i} = w_j \frac{\partial \sigma_p}{\partial w_j} = \frac{\sigma_p}{N}
$$

**Description:**
A portfolio construction method that allocates risk equally rather than capital. In a traditional 60/40 portfolio, equities contribute 90% of the risk. Risk Parity leverages low-volatility assets (bonds) so their risk contribution equals that of equities, ostensibly creating a more robust portfolio across different economic regimes.

*Source: eq3/jules-primer/primer.csv*

---

## For second-order matching:

**Equation:**

$$
Var[(1/N) Σ_{k=1}^N f(X̃^(2)(k))] = (1/N)(Var[f(X)] - 𝔼[∂f(X)]Σ𝔼[∂f(X)]^T - ½ tr[(Σ𝔼[∂²f(X)])²]) + O(N^{-3/2})
$$

**Description:**
The critical theoretical result establishes that normal distributions are uniquely characterized by the asymptotic universal moment matching property - they are the only distributions for which moment matching guarantees variance reduction for all smooth functions. For non-normal distributions, nonlinear transformation to normality via X = Φ^{-1}(F_Y(Y)) followed by moment matching in the transformed space ensures asymptotic variance reduction.

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## Equation

**Equation:**

$$
\frac{\partial \text{VaR}_\alpha}{\partial w_i} = \mu_i + \frac{(\Sigma \mathbf{w})_i}{\sigma_p} q_\alpha^Z
$$

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## Integration by Parts

**Equation:**

$$
\int u \, dv = \underbrace{uv}_{\text{Boundary Term}} - \int \underbrace{v \, du}_{\text{Transformed Integral}}
$$

**Description:**
Integration by Parts is the integral counterpart to the Product Rule. It is heavily used in quantitative finance to derive closed-form solutions (e.g., transforming the Black-Scholes expectation integral) and in deriving the pricing PDEs via the replicating portfolio argument.

*Source: eq3/jules-primer/primer.csv*

---

## Interest Rate Cap

**Equation:**

$$
V_{cap} = \sum_{i=1}^N \underbrace{\tau_i N P(0, T_{i+1})}_{\text{Discounted Notional}} [L_i N(d_1) - K N(d_2)]
$$

**Description:**
A Cap is a portfolio of 'Caplets', each being a call option on a forward LIBOR rate L_i with strike K. It protects a floating-rate borrower from rates rising above K. The formula is simply a sum of Black-76 formulas for each caplet. P(0, T_{i+1}) is the discount factor to the payment date. \tau_i is the year fraction for the period.

*Source: eq3/jules-primer/primer.csv*

---

## Charm (Delta Decay)

**Equation:**

$$
\frac{\partial \Delta}{\partial t} = -N'(d_1) \frac{2r(T-t) - d_2 \sigma \sqrt{T-t}}{2(T-t)\sigma\sqrt{T-t}}
$$

**Description:**
Charm measures the instantaneous change in Delta as time passes. Also called 'Delta Bleed'. For an option trader hedging a book, Charm tells them how much their delta hedge will naturally drift over the weekend, allowing them to adjust the hedge on Friday close to be neutral on Monday open.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
\frac{v_{i,j+1} - v_{i,j}}{\Delta t} = \frac{1}{2} \mathcal{L}_h v_{i,j} + \frac{1}{2} \mathcal{L}_h v_{i,j+1}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## REGULATORY CAPITAL REQUIREMENTS

**Equation:**

$$
K_{regulatory} = \alpha \cdot VaR_{99\%}(V_{cliquet}) + \beta \cdot Expected\ Shortfall_{97.5\%}(V_{cliquet})
$$

**Description:**
This equation represents simplified regulatory capital requirements under Basel frameworks, where \alpha and \beta are risk weighting factors. The Value-at-Risk and Expected Shortfall measures must account for the full distribution of cliquet option values under stressed market conditions. The path-dependent nature creates challenges for risk measurement, as historical simulation must preserve the temporal dependence structure. The multiple embedded options create non-normal return distributions with significant skewness and kurtosis, requiring sophisticated Monte Carlo simulation with variance reduction techniques. Regulatory stress testing must consider scenarios where multiple consecutive periods hit cap or floor limits, creating extreme but plausible losses.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## Equation

**Equation:**

$$
A(u,\tau) = \frac{\kappa\theta}{\sigma^2}\left[\left(\kappa - \rho\sigma ui - d\right)\tau - 2\ln\left(\frac{1 - ge^{-d\tau}}{1 - g}\right)\right]
$$

*Source: eq3/heston-characteristic.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## Hansen-Jagannathan Bound

**Equation:**

$$
\frac{\sigma(m)}{E[m]} \ge \underbrace{\max_i \left| \frac{E[R^e_i]}{\sigma(R^e_i)} \right|}_{\text{Max Sharpe Ratio}}
$$

**Description:**
The HJ bound provides a stringent test for any asset pricing model. It states that the volatility of the Stochastic Discount Factor (SDF), standardized by its mean, must be at least as large as the highest Sharpe Ratio available in the market. Historically, the high Sharpe ratio of equities implies that the SDF must be very volatile, which standard utility functions with reasonable risk aversion parameters fail to generate (the Equity Premium Puzzle).

*Source: eq3/jules-primer/primer.csv*

---

## Interest Rate Floor

**Equation:**

$$
V_{floor} = \sum_{i=1}^N \tau_i N P(0, T_{i+1}) [\underbrace{K N(-d_2) - L_i N(-d_1)}_{\text{Put Option Payoff}}]
$$

**Description:**
A Floor is a portfolio of 'Floorlets', equivalent to put options on forward LIBOR rates. It protects a lender from rates falling below K. By Put-Call parity, buying a Cap and selling a Floor at the same strike is equivalent to entering a Receiver Swap.

*Source: eq3/jules-primer/primer.csv*

---

## Ultima

**Equation:**

$$
\frac{\partial \text{Volga}}{\partial \sigma} = \frac{\mathcal{V}}{\sigma} \left( d_1 d_2 (1 - d_1 d_2) + d_1^2 + d_2^2 \right)
$$

**Description:**
Variables: ; Explanation: * Ultima measures third-order volatility sensitivity. It is relevant for volatility hedging in models with stochastic volatility of volatility. | **Explanation:** Ultima measures third-order volatility sensitivity. It is relevant for volatility hedging in models with stochastic volatility of volatility. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
**Variables:**
- \(P(T_i)\): Zero-coupon bond price for maturity \(T_i\)
- \(c_i\): Coupon rate of the \(i\)-th bond
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## **Barrier Options (Down-and-Out Call)**

**Equation:**

$$
C_{\text{DAO}} = C_{\text{BS}} - \left( \frac{H}{S_t} \right)^{2\lambda} C_{\text{BS}}\left( \frac{H^2}{S_t}, K, T, r, q, \sigma \right)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Variables:

**Equation:**

$$
- \(y(t,T)\): Continuously compounded yield to maturity #### 2. Coupon Bonds P = \sum_{i=1}^n c_i P(t,T_i) + P(t,T_n)
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
s^{(2)}_{A^{(2)},D^{(2)}} = \frac{E[∫_0^T e^{-rt} dEL_t^{(2)}]}{∫_0^T e^{-rt} dt N_0^{(2)} (D^{(2)} - A^{(2)})}
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## **Real Price Under Jarrow-Yildirim Framework:**

**Equation:**

$$
P_{\text{real}}(t,T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T r_s^{\text{real}} \, ds} \middle| \mathcal{F}_t \right]
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas_clean.csv*

---

## Equation

**Equation:**

$$
**Correlations:**
dW_t^n dW_t^r = \rho_{nr} dt, \quad dW_t^n dW_t^I = \rho_{nI} dt, \quad dW_t^r dW_t^I = \rho_{rI} dt
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Variables:

**Equation:**

$$
- \(w_i\): Weights - \(F_i\): Forward price of asset \(i\) - \(\rho_{ij}\): Correlation between assets \(i\) and \(j\)
$$

**Description:**
Variables: ; Explanation: * Basket options lack closed-form solutions due to the sum of lognormals not being lognormal. Moment matching approximates the basket distribution by a lognormal with matching first two moments.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
\tilde{\sigma} = \sqrt{\sigma_1^2 + \left( \frac{F_2}{F_2+K} \sigma_2 \right)^2 - 2\rho \sigma_1 \sigma_2 \frac{F_2}{F_2+K}}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
R_{\text{floating}} = \frac{1 - P(0, T_i)}{\delta_i P(0, T_i)} = \frac{P(0, T_{i-1}) - P(0, T_i)}{\delta_i P(0, T_i)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## COS Method

**Equation:**

$$
C = sum_{n=0}^infty Re( phi(n pi/(b-a)) e^{-i n pi (c-a)/(b-a)) ) * (2/(b-a) int_a^b cos(n pi (x-c)/(b-a)) Payoff(x) dx)
$$

**Description:**
Characteristic function to option price via cosine expansion. Truncation range [a,b] based on distribution support. Fast convergence for affine models.

*Source: eq3/minimax-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(\tau\): Time between forward start date and maturity - \(\alpha\): Strike multiplier (strike = \(\alpha S_{T_0}\))
$$

**Description:**
Variables: ; Explanation: * Forward start options have a strike set as a percentage of the underlying price at a future date. Under Black-Scholes with constant parameters, the price is proportional to the current spot.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## and forward rates are recovered via:

**Equation:**

$$
f(t,T) = f(0,T) + Σ_{i=1}^2 X_i(t)exp(-λ_i(T-t)) - ∫_0^t Σ_{i=1}^2 σ_i^2 exp(-λ_i(T-s)) (1-exp(-λ_i(T-s)))/(λ_i) ds
$$

**Description:**
The implementation requires careful attention to the forward rate curve initialization. The theoretical framework assumes continuous forward rates, but market data provides discrete points. Cubic spline interpolation typically generates smooth forward curves while preserving no-arbitrage conditions.

*Source: eq3/hjm-framework.txt*

---

## Equation

**Equation:**

$$
The star discrepancy D_N^* of a point set P = {x_1, ..., x_N} in [0,1)^d is defined as:
D_N^*(P) = sup_{J} |A(J;P)/N - λ_d(J)|
$$

*Source: eq3/qmc-primer.txt*

---

## Law of Total Probability

**Equation:**

$$
P(A) = \sum_n \underbrace{P(A|B_n)}_{\text{Conditional Prob}} \cdot \underbrace{P(B_n)}_{\text{Scenario Prob}}
$$

**Description:**
This law expresses the total probability of an outcome A as the weighted average of its probabilities under different mutually exclusive scenarios (partitions) B_n. In finance, this is used for stress testing and calculating expected values across different economic regimes.

*Source: eq3/jules-primer/primer.csv*

---

## Asian Option (Geometric)

**Equation:**

$$
E[G_T] = S_0 \exp\left( \frac{1}{2}(\underbrace{\mu - \frac{\sigma^2}{2}}_{\text{Adj Drift}})T + \frac{\sigma^2 T}{6} \right)
$$

**Description:**
Asian options payoff depends on the average price over time. Geometric Asian options (where the average is geometric) have closed-form solutions because the product of log-normal variables is log-normal. The effective volatility reduces to \sigma/\sqrt{3}, reflecting the averaging effect which dampens volatility. This formula is often used as a control variate to reduce variance when pricing Arithmetic Asian options via Monte Carlo.

*Source: eq3/jules-primer/primer.csv*

---

## Modified Duration

**Equation:**

$$
D_{mod} = \underbrace{-\frac{1}{P} \frac{\partial P}{\partial y}}_{\text{Sensitivity}} = \frac{D_{mac}}{1+y/k}
$$

**Description:**
Modified Duration measures the percentage change in bond price for a unit change in yield. It is the first derivative of the price-yield relationship. It is derived from Macaulay Duration (weighted average time to cash flows). It holds for parallel shifts in the yield curve and small changes.

*Source: eq3/jules-primer/primer.csv*

---

## KVA (Capital)

**Equation:**

$$
\text{KVA} = \int_0^T \underbrace{h(t)}_{\text{Hurdle Rate}} \cdot E[\underbrace{K(t)}_{\text{Reg Capital}}] dt
$$

**Description:**
Capital Valuation Adjustment is the lifetime cost of holding regulatory capital (Basel III) against the trade. Banks must set aside capital K(t) for potential losses. This capital is expensive (equity investors demand return h(t), e.g., 10-15%). KVA prices this cost into the trade. It makes capital-intensive trades (like long-dated uncollateralized swaps) significantly more expensive.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
Where A_T = \left(\prod_{i=1}^n S_{t_i}\right)^{1/n} is the geometric average of the underlying asset prices at times t_1, ..., t_n.
$$

*Source: eq3/iflow-model-primer/derivatives-primer.md*

---

## Equation

**Equation:**

$$
This yields the approximate parameters
σ^2 = log(E[(S_T^Basket)^2] / (E[S_T^Basket])^2)
μ = log(E[S_T^Basket]) - σ^2/2
$$

*Source: eq3/exotic-options-basket-rainbow.txt*

---

## Equation

**Equation:**

$$
EL_t^{(2)} = ∫_{-∞}^{∞} \min[\max(\frac{1}{M} Σ_{i=1}^M EL_t^{(A_i,D_i)}(z) - A^{(2)}, 0), D^{(2)} - A^{(2)}] φ(z) dz
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## 5. Convexity

**Equation:**

$$
C = \frac{1}{P} \frac{\partial^2 P}{\partial y^2} = \frac{1}{P} \sum_{i=1}^n \frac{T_i(T_i+1) CF_i}{(1+y)^{T_i+2}}
$$

**Description:**
**Variables:** - ∂²P/∂y²: Second derivative of price with respect to yield - CF_i: Cash flow at time T_i - T_i: Time to cash flow - y: Yield to maturity | **Explanation:** Convexity measures the second-order sensitivity of bond price to yield changes. Positive convexity is beneficial: bond prices increase more when yields fall than they decrease when yields rise.

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## CMS (Constant Maturity Swap) Convexity Adjustment

**Equation:**

$$
E^T[S_T] = S_0 + \underbrace{\frac{1}{2} S_0 \sigma_S^2 T \frac{P''(S_0)}{P'(S_0)}}_{\text{Convexity Adjustment}}
$$

**Description:**
CMS rates (e.g., 10y Swap rate) are paid at T but their value is derived from a stream of payments over a long horizon (10 years). Standard forward rates relate to single periods. To price a payoff on a CMS rate using the standard forward curve, one must add a convexity adjustment. This corrects for the fact that the 'Bond Price' vs 'Yield' relationship is non-linear (convex).

*Source: eq3/jules-primer/primer.csv*

---

## Unknown

**Equation:**

$$
C(S_0,K,T) = \sum_{n=0}^\infty \frac{e^{-\lambda T}(\lambda T)^n}{n!} C_{BS}(S_0 e^{\lambda\mu_J}, K, T, \sigma_J)
$$

**Description:**
This formula represents the call option price in the Merton jump-diffusion model as an infinite series of Black-Scholes prices, each weighted by the probability of n jumps occurring during the option's life.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Dupire Local Volatility

**Equation:**

$$
\sigma_{LV}^2(K T) = \frac{\partial C/\partial T + (r-q)K \partial C/\partial K + qC}{0.5 K^2 \partial^2 C/\partial K^2}
$$

**Description:**
Unique local vol surface derived from vanilla option prices.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Equation: C(u,\tau)

**Equation:**

$$
C(u,\tau) = (r-q) i u \tau + \frac{\kappa \theta}{\xi^2} \left( (\kappa - \rho \xi i u - d) \tau - 2 \ln \frac{1 - g e^{-d\tau}}{1 - g} \right)
$$

**Description:**
Automatically extracted equation

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas.csv; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
Characteristic Function:
φ(u) = E[e^{iu ln(S_T)}] = exp(iu ln(S_0) + iu(r - σ²/2 - λκ)T - u²σ²T/2 + λT(e^{iuμ_J - u²δ²/2} - 1))
$$

*Source: eq3/jump-diffusion-primer.txt*

---

## 4. Minimum Variance Hedge Portfolio

**Equation:**

$$
\mathbf{w}^* = \frac{\boldsymbol{\Sigma}^{-1} \mathbf{1}}{\mathbf{1}^\top \boldsymbol{\Sigma}^{-1} \mathbf{1}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Fama-French Five-Factor Model

**Equation:**

$$
R_i - r_f = alpha_i + beta_i^{MKT} MKT + beta_i^{SMB} SMB + beta_i^{HML} HML + beta_i^{RMW} RMW + beta_i^{CMA} CMA + epsilon_i
$$

**Description:**
RMW: robust minus weak profitability, CMA: conservative minus aggressive investment. Five factors: market, size, value, profitability, investment. Explains most cross-sectional variation.

*Source: eq3/minimax-primer/formulas.csv*

---

## Equation

**Equation:**

$$
\text{Discretization: } \frac{V^{n+1}_j - V^n_j}{\Delta t} + \theta L V^{n+1}_j + (1-\theta) L V^n_j = 0, \quad \theta = 0.5
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## **Hull-White Bond Price:**

**Equation:**

$$
P(t,T) = \frac{P(0,T)}{P(0,t)} \exp\left( B(t,T) f(0,t) - \frac{\sigma^2}{4\kappa} B(t,T)^2 (1 - e^{-2\kappa t}) - B(t,T) r_t \right)
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
**Where:**
A = \mathbf{1}^T \Sigma^{-1} \mathbf{1}, \quad B = \mathbf{1}^T \Sigma^{-1} \mu, \quad C = \mu^T \Sigma^{-1} \mu
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Variables:

**Equation:**

$$
- \(L(T_{i-1}, T_i)\): Forward LIBOR rate for period \([T_{i-1}, T_i]\) - \(\delta_i\): Day count fraction for period \(i\)
$$

**Description:**
Variables: ; Explanation: * Floating rate note valuation requires modeling the future LIBOR fixings. Under the forward measure, each floating payment can be expressed in terms of forward rates.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
Smile = \frac{\partial^2 \sigma_{impl}}{\partial (\ln K)^2} = \frac{(\rho^2 + 3) \nu^2 \alpha^2}{12 F_{mid}^{2-2\beta}}
$$

*Source: eq3/sabr-model.txt*

---

## Black-Scholes Formula (Call)

**Equation:**

$$
C(S,t) = \underbrace{S N(d_1)}_{\text{Expected Asset Value}} - \underbrace{K e^{-r(T-t)} N(d_2)}_{\text{PV of Strike}}
$$

**Description:**
The Nobel-prize winning formula for a European call option. N(d_2) is the risk-neutral probability that the option finishes in-the-money. N(d_1) is the delta of the option. The formula can be interpreted as the expected value of receiving the stock (conditional on exercise) minus the expected cost of paying the strike (conditional on exercise). It assumes Geometric Brownian Motion, constant volatility, and frictionless markets.

*Source: eq3/jules-primer/primer.csv*

---

## Variables:

**Equation:**

$$
- \(n_t\): Nominal short rate - \(r_t\): Real short rate - \(I_t\): Inflation index - \(\pi_t\): Instantaneous inflation rate
$$

**Description:**
Variables: ; Explanation: * Jarrow-Yildirim is a three-factor model with correlated nominal rate, real rate, and inflation index. It ensures arbitrage-free pricing of nominal and real bonds as well as inflation derivatives.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
d_1 = \frac{\ln(F_1/(F_2+K)) + \tilde{\sigma}^2 T/2}{\tilde{\sigma} \sqrt{T}}, \quad d_2 = d_1 - \tilde{\sigma} \sqrt{T}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## 4. Key Rate Duration

**Equation:**

$$
\frac{\partial P}{\partial y_{t_i}} \approx -\frac{P(y_{t_i}+\Delta) - P(y_{t_i}-\Delta)}{2\Delta} \cdot \frac{1}{P}
$$

**Description:**
**Variables:** - y_{t_i}: Yield at key maturity t_i - ∂P/∂y_{t_i}: Partial derivative with respect to key rate - Δ: Small shift in key rate (typically 1bp)

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## 2. FX Volatility Smile

**Equation:**

$$
\sigma_{imp}(K) = \sigma_{ATM} + \text{Skew} \cdot \ln\left(\frac{K}{F}\right) + \frac{1}{2} \text{Volga} \cdot \ln^2\left(\frac{K}{F}\right)
$$

**Description:**
**Variables:** - σ_{imp}(K): Implied volatility as function of strike - σ_{ATM}: At-the-money implied volatility - Skew: First-order volatility smile parameter (typically negative for major currencies) - Volga: Second-order volatility smile parameter (curvature) - F: Forward FX rate - K: Strike price

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Autocallable Payoff

**Equation:**

$$
\text{Payoff}_i = N \times (1 + C \times i) \times \underbrace{1_{\{S_{t_i} \ge B_{call}\}}}_{\text{Knock-out Condition}}
$$

**Description:**
Autocallables (or Auto-Redeemables) are structured products that automatically mature ('kick out') if the underlying asset is above a certain barrier B_{call} on observation date t_i. If called, the investor receives the principal plus a high coupon C. The product is essentially short a digital Down-and-In Put (or similar barrier risk), selling volatility and skew to fund the coupon.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
s = \frac{(1-R) \int_0^T P(0,t) \lambda(t) e^{-\int_0^t \lambda(u)du} dt}{\int_0^T P(0,t) e^{-\int_0^t \lambda(u)du} dt}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
C = \frac{1}{P} \frac{\partial^2 P}{\partial y^2} = \frac{1}{P(1+y)^2} \sum_{i=1}^n \frac{C_i t_i (t_i + 1)}{(1+y)^{t_i}}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Second-Order Implied Volatility Correction

**Equation:**

$$
\sigma_{impl}^{(2)} = \sigma_{impl}^{(1)} \left[ 1 + \left( \frac{1}{4} + \frac{\beta^2}{12} \right) \nu^2 \alpha^2 F_{mid}^{2\beta-2} T^2 \right]
$$

**Description:**
This second-order term captures smile convexity effects omitted in first-order Hagan approximation. The correction scales with \nu^2 \alpha^2, making it significant when vol-of-vol is large or when considering long-dated options. The dependence on \beta^2 reflects that backbone dynamics influence smile curvature. For short maturities (T < 1), this correction is typically negligible compared to first-order terms, explaining widespread use of Hagan's first-order formula in practice.

*Source: eq3/sabr-model.txt*

---

## Central Limit Theorem (CLT)

**Equation:**

$$
\sqrt{n} \left( \frac{1}{n} \sum_{i=1}^n X_i - \mu \right) \xrightarrow{d} \underbrace{N(0, \sigma^2)}_{\text{Normal Distribution}}
$$

**Description:**
The CLT states that the sum (or average) of a large number of independent random variables tends toward a normal distribution, regardless of the underlying distribution. This justifies the use of the Normal distribution (and Geometric Brownian Motion) for modeling asset returns over longer horizons.

*Source: eq3/jules-primer/primer.csv*

---

## Neural SDEs

**Equation:**

$$
dX_t = \underbrace{\mu_\theta(X_t)}_{\text{NN Drift}} dt + \underbrace{\sigma_\theta(X_t)}_{\text{NN Diffusion}} dW_t
$$

**Description:**
A modern approach where the drift and diffusion functions of an SDE are parameterized by Neural Networks. These networks are trained on path data (time series) to learn the underlying dynamics of the asset, rather than assuming a specific form (like Heston or Vasicek). It is a universal approximator for stochastic processes.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
**Note:**
Volatility used is the volatility of the ratio X/Y: \sigma = \sqrt{\sigma_X^2 + \sigma_Y^2 - 2\rho\sigma_X\sigma_Y}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Probability of Default (Risk-Neutral)

**Equation:**

$$
PD^{\mathbb{Q}} = \Phi(-d_2) #### 2. Black-Cox First Passage Time Model \text{Default time } \tau = \inf\{ t \ge 0 : V_t \le K(t) \}
$$

**Description:**
See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_clean.csv*

---

## Combinations (Binomial Coefficient)

**Equation:**

$$
\binom{n}{k} = \frac{\underbrace{n!}_{\text{Total Permutations}}}{\underbrace{k! (n-k)!}_{\text{Order Correction}}}
$$

**Description:**
Calculates the number of ways to choose k items from a set of n without regard to order. It is central to the Binomial Option Pricing Model, representing the number of paths that lead to a specific number of "up" moves in the tree.

*Source: eq3/jules-primer/primer.csv*

---

## Unknown

**Equation:**

$$
\Delta = \frac{\partial V}{\partial S} = N(d_1) \quad \text{(Call)} \quad \text{or} \quad \Delta = N(d_1) - 1 \quad \text{(Put)}
$$

**Description:**
Delta measures the rate of change of the option price with respect to changes in the underlying asset price. For a call option, Delta is between 0 and 1, indicating that the option price increases as the underlying price increases. For a put option, Delta is between -1 and 0.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Real Zero-Coupon Bond Price

**Equation:**

$$
P_{\text{real}}(t,T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T r_s ds} \middle| \mathcal{F}_t \right] = A_r(t,T) e^{-B_r(t,T) r_t}
$$

**Description:**
Variables: | **Nominal Zero-Coupon Bond Price** | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas_clean.csv*

---

## Equation

**Equation:**

$$
The radical inverse function φ_b(n) forms the building block for many low-discrepancy sequences:
φ_b(n) = ∑_{j=0}^∞ a_j b^{-j-1}
$$

*Source: eq3/qmc-primer.txt*

---

## Equation

**Equation:**

$$
\frac{\partial w}{\partial T} \ge 0 \quad \text{(Calendar)}
\frac{\partial^2 C}{\partial K^2} \ge 0 \quad \text{(Butterfly)}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## 1. Variance Swaps

**Equation:**

$$
\text{Fair Variance Strike } K_{\text{var}} = \frac{2}{T} \left( \int_0^F \frac{P(K)}{K^2} dK + \int_F^\infty \frac{C(K)}{K^2} dK \right)
$$

**Description:**
**Variables:** - \(F\): Forward price of underlying - \(P(K), C(K)\): Market prices of out-of-the-money puts and calls

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## CDS Premium Leg:

**Equation:**

$$
PLPV = S(t_0,t_N) * sum_{n=1}^{N} Delta(t_{n-1},t_n,B) * Z(t_V,t_n) * [Q(t_V,t_n) + (1_{PA}/2) * (Q(t_V,t_{n-1}) - Q(t_V,t_n))]
$$

**Description:**
Variables: - PLPV: Present value of premium leg - S(t_0,t_N): CDS spread for maturity t_N - Delta(t_{n-1},t_n,B): Day count fraction between premium dates using basis convention B - Z(t_V,t_n): Risk-free discount factor from valuation date t_V to premium date t_n - Q(t_V,t_n): Survival probability from valuation date to premium date - 1_{PA}: Indicator function (1 if premium accrued included, 0 otherwise) - N: Total number of premium payment dates

*Source: eq3/cds-primer-content.txt*

---

## SABR Calibration via Least Squares

**Equation:**

$$
\min_{\alpha, \beta, \nu, \rho} \sum_{i=1}^N w_i \left( \sigma_{market}(K_i, T) - \sigma_{SABR}(K_i, T; \alpha, \beta, \nu, \rho) \right)^2
$$

**Description:**
Calibration typically involves minimizing weighted sum of squared errors between market volatilities and SABR model across strikes. Weights w_i often assign higher importance to ATM options, where liquidity is greatest. The non-convex optimization landscape can lead to local minima; multiple starting points recommended. For computational efficiency, \beta is often fixed (commonly 0.5 for swaptions) and only \alpha, \nu, \rho are calibrated to cross-sectional smile.

*Source: eq3/sabr-model.txt*

---

## Arbitrage Pricing Theory (APT)

**Equation:**

$$
E[R_i] = R_f + \sum_{k=1}^K \underbrace{\beta_{ik}}_{\text{Factor Loading}} \underbrace{\lambda_k}_{\text{Risk Premium}}
$$

**Description:**
APT is a multi-factor equilibrium model. Unlike CAPM, which assumes a single market factor, APT assumes returns are generated by K systematic factors (like inflation, industrial production, yield spread). \beta_{ik} measures the sensitivity of asset i to factor k, and \lambda_k is the excess return the market demands for bearing unit risk of factor k. It relies on the assumption that in a large, well-diversified economy, idiosyncratic risk can be diversified away, leaving only factor risk priced.

*Source: eq3/jules-primer/primer.csv*

---

## Carr-Madan (FFT Pricing)

**Equation:**

$$
C_T(k) = \frac{e^{-\alpha k}}{\pi} \int_0^\infty e^{-ivk} \underbrace{\psi_T(v-i(\alpha+1))}_{\text{Damped Char Func}} dv
$$

**Description:**
Peter Carr and Dilip Madan introduced the use of the Fast Fourier Transform (FFT) to price options. By integrating the characteristic function (which is known for Levy processes) rather than the density (which is unknown), they can price a whole range of strikes 'k' simultaneously in milliseconds. The damping factor \alpha is needed to ensure the integral converges (as call prices don't decay to zero as k \to -\infty).

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
**Auxiliary Formulas:**
d_1 = \frac{\ln(S/K) + (r + \frac{1}{2}\sigma^2)(T-t)}{\sigma \sqrt{T-t}}
d_2 = d_1 - \sigma \sqrt{T-t}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Variables:

**Equation:**

$$
- \(f(t,T)\): Instantaneous forward rate at time \(t\) for maturity \(T\) dr_t = \kappa(\theta - r_t) dt + \sigma dW_t^{\mathbb{Q}}
$$

**Description:**
Variables: ; Explanation: * The forward curve is the derivative of the logarithm of zero-coupon prices with respect to maturity. It represents the market's expectation of future short rates.

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## **Inflation Index Ratio**

**Equation:**

$$
\frac{I_T}{I_t} = \exp\left( \int_t^T \pi_s ds + \frac{1}{2} \sigma_I^2 (T-t) + \sigma_I (W_T^{I,\mathbb{Q}} - W_t^{I,\mathbb{Q}}) \right)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
r_{PAR} = \frac{\sum_{i=1}^{n} [f_{LIBOR}(0,T_{i-1},T_i) + s] \tau_i P_{OIS}(0,T_i)}{\sum_{i=1}^{n} \tau_i P_{OIS}(0,T_i)}
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## Equation

**Equation:**

$$
Where:
RiskyAnnuity(t,t_N) = sum_{n: t_n > t}^{N} Delta(t_{n-1},t_n,B) * Z(t,t_n) * Q(t,t_n) * (1 + (1_{PA}/2) * lambda_n * Delta_n)
$$

*Source: eq3/cds-primer-content.txt*

---

## Conditional Expectation (Projection)

**Equation:**

$$
E[X|\mathcal{G}] = \underbrace{\text{argmin}_{Y \in \mathcal{L}^2(\mathcal{G})}}_{\text{Best Approximation}} E[(X-Y)^2]
$$

**Description:**
In the language of Hilbert spaces, the conditional expectation of a random variable X given information sigma-algebra G is the orthogonal projection of X onto the space of G-measurable functions. This implies it is the 'best guess' of X given the information G, minimizing the mean squared error. In pricing, the price of an asset at time t is its projection onto the information available at time t, \mathcal{F}_t.

*Source: eq3/jules-primer/primer.csv*

---

## Unknown

**Equation:**

$$
dS_t = (r_t - \lambda_1(\mu_1 - S_t))dt + \sigma_1 S_t dW^1_t, d\lambda_t = \kappa(\theta - \lambda_t)dt + \sigma_2 \lambda_t dW^2_t
$$

**Description:**
This two-factor model describes the spot price S_t and the convenience yield \lambda_t, which are both stochastic processes.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Equation

**Equation:**

$$
p_d = \left( \frac{u - e^{r\Delta t/2}}{u - d} \right) \left( \frac{u - e^{r\Delta t/2} e^{\sigma\sqrt{2\Delta t}}}{u - d e^{\sigma\sqrt{2\Delta t}}} \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Swaption (Bermudan) - Longstaff-Schwartz

**Equation:**

$$
V_t = \max(h_t, \underbrace{E[V_{t+1} | \mathcal{F}_t]}_{\text{Continuation Value}}) \approx \max(h_t, \beta \cdot \Psi(X_t))
$$

**Description:**
A Bermudan swaption can be exercised on multiple specific dates (e.g., every year on the coupon date). Pricing requires comparing the immediate exercise value h_t with the value of holding the option (Continuation Value). The Longstaff-Schwartz algorithm uses Least Squares Monte Carlo (LSMC) to regress the realized future payoffs against basis functions \Psi of the current state, providing an efficient estimate of the conditional expectation.

*Source: eq3/jules-primer/primer.csv*

---

## Spark Spread

**Equation:**

$$
\text{Payoff} = \max(\underbrace{P_{elec}}_{\text{Output}} - \underbrace{H \cdot P_{gas}}_{\text{Input}} - C_{emission}, 0)
$$

**Description:**
The Spark Spread is the theoretical gross margin of a gas-fired power plant. It is a cross-commodity option (spread option). H is the Heat Rate (efficiency, MMBtu per MWh). The plant runs only when the spread is positive (Real Option). Valuation requires modeling the correlation between Electricity and Gas prices.

*Source: eq3/jules-primer/primer.csv*

---

## EGARCH

**Equation:**

$$
\ln \sigma_t^2 = \omega + \alpha (|\epsilon_{t-1}|/\sigma_{t-1}) + \gamma \epsilon_{t-1}/\sigma_{t-1} + \beta \ln \sigma_{t-1}^2
$$

**Description:**
Exponential GARCH with leverage.

*Source: eq3/gemini-primer/gemini_primer.csv*

---

## Vanna

**Equation:**

$$
\frac{\partial \Delta}{\partial \sigma} = \frac{\partial \mathcal{V}}{\partial S} = -e^{-q(T-t)} \phi(d_1) \frac{d_2}{\sigma}
$$

**Description:**
Variables: ; Explanation: * Vanna measures sensitivity of delta to volatility (or vega to spot). It is important for delta hedging under stochastic volatility and for volatility smile dynamics. | **Explanation:** Vanna measures sensitivity of delta to volatility (or vega to spot). It is important for delta hedging under stochastic volatility and for volatility smile dynamics. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
d_1 = \frac{\ln(G_t/K) + (\bar{\mu} + \bar{\sigma}^2/2)(T-t)}{\bar{\sigma} \sqrt{T-t}}, \quad d_2 = d_1 - \bar{\sigma} \sqrt{T-t}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## **Vasicek Short Rate Distribution:**

**Equation:**

$$
r_T | r_t \sim \mathcal{N}\left( r_t e^{-\kappa(T-t)} + \theta(1 - e^{-\kappa(T-t)}), \frac{\sigma^2}{2\kappa} (1 - e^{-2\kappa(T-t)}) \right)
$$

**Description:**
**Theoretical Context:** Under Vasicek, the conditional distribution of the short rate is Gaussian with mean that reverts to θ and variance that increases with time but is bounded above by σ²/(2κ). The distribution is fully characterized by these moments, enabling analytical computation of expectations and probabilities. The conditional normality simplifies option pricing through the bond price formula.

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## **Black-Scholes Partial Differential Equation:**

**Equation:**

$$
\frac{\partial V}{\partial t} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} + r S \frac{\partial V}{\partial S} - r V = 0
$$

**Description:**
**Variables:** - V(S,t): Option value as function of stock price and time - ∂V/∂t: Time derivative (theta) - ∂V/∂S: Delta (first derivative w.r.t. stock) - ∂²V/∂S²: Gamma (second derivative w.r.t. stock) | This PDE governs the price evolution of European derivative securities on a non-dividend-paying stock. | This partial differential equation (PDE) represents the fundamental relationship governing the price of a European option in the Black-Scholes framework. It describes how the option price V changes over time as a function of the underlying asset price S, volatility σ, and risk-free rate r. | Partial differential equation satisfying no-arbitrage condition for derivatives.

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/kimi-primer/financial-derivatives-pricing-formulas.csv; eq3/iflow-model-primer/derivatives-primer.csv; eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Variance Swap

**Equation:**

$$
K_{var} = \frac{2}{T} \left( rT - (S_0/S_* e^{rT} - 1) - \ln(S_*/S_0) + e^{rT} \int \underbrace{\frac{1}{K^2} P(K)}_{\text{Weighting}} dK \right)
$$

**Description:**
A Variance Swap pays the difference between realized variance and a fixed strike K_{var}. The fair strike can be replicated by a static portfolio of OTM puts and calls weighted by 1/K^2. This remarkable result means variance swaps can be priced and hedged without specifying a volatility model (model-independent), assuming the whole strip of options is traded.

*Source: eq3/jules-primer/primer.csv*

---

## Girsanov Theorem

**Equation:**

$$
\frac{d\mathbb{Q}}{d\mathbb{P}} = \mathcal{E}_t(\lambda) = \exp\left( -\int_0^t \lambda_s dW_s - \frac{1}{2} \int_0^t \lambda_s^2 ds \right)
$$

**Description:**
Describes measure change from physical P to risk-neutral Q via market price of risk lambda.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## **Least-Squares Monte Carlo (Longstaff-Schwartz)**

**Equation:**

$$
V(t_i, S_{t_i}) = \max\left( \text{exercise value}, \mathbb{E}^{\mathbb{Q}}[ e^{-r(t_{i+1}-t_i)} V(t_{i+1}, S_{t_{i+1}}) | S_{t_i} ] \right)
$$

**Description:**
Automatically extracted equation

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas.csv; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
\text{Payoff} = \text{Notional} \times \text{max}(r_{T_S} - K, 0) \times \sum_{i=1}^{n} \frac{\tau_i}{(1 + r_{T_S})^{\tau_{0,i}}}
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## 3. Overnight Index Swap (OIS)

**Equation:**

$$
V_{OIS} = \sum_{i=1}^n \left( \frac{1}{n} \sum_{j \in \text{period } i} r_{oj} \right) P(0, T_i) - \sum_{i=1}^n R_{\text{fixed}} \delta_i P(0, T_i)
$$

**Description:**
**Variables:** - r_{oj}: Overnight rate (SOFR, SONIA, etc.) for day j - n: Number of days in accrual period - R_{\text{fixed}}: Fixed swap rate - P(0, T_i): Discount factor to payment date

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Variables:

**Equation:**

$$
- \(c_i\): Coupon payment at time \(T_i\) - \(P(t,T_i)\): Price of zero-coupon bond maturing at \(T_i\) - \(n\): Number of coupon payments
$$

**Description:**
Variables: ; Explanation: * A coupon bond can be decomposed into a portfolio of zero-coupon bonds, one for each coupon and the principal. This additive pricing is exact under no-arbitrage and forms the basis for bootstrapping the yield curve.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## **Option on a Call (Geske Formula)**

**Equation:**

$$
C_{\text{compound}} = S_t e^{-qT_2} M\left( a_1, b_1; \sqrt{T_1/T_2} \right) - K_2 e^{-r T_2} M\left( a_2, b_2; \sqrt{T_1/T_2} \right) - e^{-r T_1} K_1 \Phi(a_2)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation: A(t,T)

**Equation:**

$$
A(t,T) = \left( \frac{2\gamma e^{(\kappa+\gamma)(T-t)/2}}{(\gamma + \kappa)(e^{\gamma(T-t)} - 1) + 2\gamma} \right)^{2\kappa\theta/\sigma^2}
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## Vanna-Volga Pricing

**Equation:**

$$
V^{mkt} = V^{BS} + \underbrace{w_{rr} P_{rr}}_{\text{Skew Cost}} + \underbrace{w_{str} P_{str}}_{\text{Smile Cost}} + w_{bf} P_{bf}
$$

**Description:**
FX markets exhibit strong smiles and skews. Vanna-Volga is an interpolation/hedging method that adjusts the Black-Scholes price V^{BS} by adding the cost of a hedging portfolio consisting of Risk Reversals (sensitive to Skew/Vanna), Strangles (sensitive to Smile/Volga), and Butterflies. It ensures the price is consistent with the liquid market prices of these hedging instruments.

*Source: eq3/jules-primer/primer.csv*

---

## Delta

**Equation:**

$$
\Delta_C = \frac{\partial C}{\partial S} = e^{-q(T-t)} \Phi(d_1) \Delta_P = \frac{\partial P}{\partial S} = e^{-q(T-t)} (\Phi(d_1) - 1)
$$

**Description:**
Variables: ; Explanation: * Delta measures sensitivity of option price to changes in underlying price. For vanilla calls, delta is between 0 and 1; for puts, between -1 and 0. Delta hedging involves holding \(\Delta\) units of underlying. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## **Charm (Delta Decay):**

**Equation:**

$$
\text{Charm} = \frac{\partial^2 V}{\partial t \partial S} = -\frac{\partial \Delta}{\partial t} = -\frac{\partial \Theta}{\partial S}
$$

**Description:**
**Variables:** - ∂²V/∂t∂S: Mixed partial derivative of option value

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Cliquet Option (Locally Capped)

**Equation:**

$$
Payoff = \sum_{i=1}^N \min(\max(\underbrace{\frac{S_{t_i}}{S_{t_{i-1}}} - 1}_{\text{Period Return}}, \text{Floor}), \text{Cap})
$$

**Description:**
A Cliquet (or Ratchet) option consists of a series of forward-start options. Each period's return is locked in, subject to a local Floor and Cap. This protects the investor from long-term bear markets (resetting the strike each period) but caps the upside in bull runs. Valuation is highly sensitive to the forward skew and the pricing of forward volatility.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
\text{Defaultable bond price: } \tilde{P}(t,T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T (r_s + \lambda_s) ds} \middle| \mathcal{F}_t \right]
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Equation

**Equation:**

$$
d_1 = \frac{\ln(S^1_t/S^2_t) + (q_2 - q_1 + \hat{\sigma}^2/2)(T-t)}{\hat{\sigma} \sqrt{T-t}}, \quad d_2 = d_1 - \hat{\sigma} \sqrt{T-t}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Garman-Kohlhagen

**Equation:**

$$
C = \underbrace{S e^{-r_f T} N(d_1)}_{\text{Foreign Currency Value}} - \underbrace{K e^{-r_d T} N(d_2)}_{\text{Domestic Strike Value}}
$$

**Description:**
The standard extension of Black-Scholes for FX options. It treats the foreign currency as an asset paying a continuous dividend yield equal to the foreign risk-free rate r_f. The domestic rate r_d is the discount rate. It reflects that holding foreign currency earns interest at r_f, which reduces the cost of carry.

*Source: eq3/jules-primer/primer.csv*

---

## **Finite Difference Method (Crank-Nicolson)**

**Equation:**

$$
\frac{\partial V}{\partial t} + (r-q)S \frac{\partial V}{\partial S} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} - rV = 0
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation: phi(u)

**Equation:**

$$
phi(u) = \exp\left( iu \ln S_t + iu (r-q-\lambda\bar{\mu})\tau - \frac{1}{2} u^2 \sigma^2 \tau + \lambda\tau (e^{iu\mu_J - u^2\sigma_J^2/2} - 1) \right)
$$

**Description:**
Automatically extracted equation | **Explanation:** Jump diffusion adds Poisson jumps with lognormal sizes to the geometric Brownian motion. It can produce steep short-term smiles and excess kurtosis. Pricing via Fourier transform or PIDE (partial integro-differential equation). | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## Chain Rule (Calculus)

**Equation:**

$$
\frac{dy}{dx} = \underbrace{\frac{dy}{du}}_{\text{Outer Derivative}} \cdot \underbrace{\frac{du}{dx}}_{\text{Inner Derivative}}
$$

**Description:**
The Chain Rule allows differentiation of composite functions. It is the basis for "Backpropagation" in neural networks and for calculating Greeks (sensitivities) in finance. For example, Vega is the derivative of Price w.r.t Volatility, which often involves chaining through the d1 and d2 terms in Black-Scholes.

*Source: eq3/jules-primer/primer.csv*

---

## Taylor Series Expansion

**Equation:**

$$
f(x) = \sum_{n=0}^{\infty} \underbrace{\frac{f^{(n)}(a)}{n!}}_{\text{Coefficient}} \underbrace{(x-a)^n}_{\text{Displacement}}
$$

**Description:**
The Taylor Series is the bedrock of approximation in finance. It allows complex non-linear functions (like bond prices or option values) to be approximated by polynomials near a specific point 'a'. In risk management, 'a' is the current market state and 'x' is the potential future state. The first derivative term corresponds to Delta (or Duration), and the second derivative term corresponds to Gamma (or Convexity). This expansion is also the theoretical basis for Itô's Lemma, where terms higher than order dt (or dW^2) vanish.

*Source: eq3/jules-primer/primer.csv*

---

## Characteristic Function

**Equation:**

$$
\phi_X(u) = E[e^{iuX}] = \int_{-\infty}^{\infty} \underbrace{e^{iux}}_{\text{Oscillatory Term}} \underbrace{f(x)}_{\text{PDF}} dx
$$

**Description:**
The characteristic function is the Fourier transform of the probability density function f(x). In quantitative finance, especially with affine jump-diffusion models (like Heston or Bates), the PDF is often unknown or intractable, but the characteristic function has a closed-form solution. This allows for option pricing via Fourier inversion methods (like Carr-Madan). It fully characterizes the distribution of the random variable X.

*Source: eq3/jules-primer/primer.csv*

---

## Bond Pricing Formula

**Equation:**

$$
P = \sum_{t=1}^T \underbrace{\frac{C}{(1+y)^t}}_{\text{Disc. Coupons}} + \underbrace{\frac{F}{(1+y)^T}}_{\text{Disc. Principal}}
$$

**Description:**
The fundamental Discounted Cash Flow (DCF) formula for a coupon bond. C is the coupon payment, F is the face value (principal), and y is the Yield to Maturity (YTM). It equates the market price P to the present value of all future cash flows.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
For moment matching to a lognormal distribution with parameters μ and σ, we solve
E[S_T^Basket] = e^{μ + σ^2/2}
E[(S_T^Basket)^2] = e^{2μ + 2σ^2}
$$

*Source: eq3/exotic-options-basket-rainbow.txt*

---

## Almgren-Chriss (Optimal Execution)

**Equation:**

$$
E[C] = \sum \underbrace{\tau |n_k|}_{\text{Temp Impact}} + \underbrace{\frac{1}{2} \gamma n_k^2}_{\text{Perm Impact}} + \lambda \sigma^2
$$

**Description:**
The classic model for minimizing execution costs. It balances 'Implementation Shortfall' (slippage) against 'Market Risk'. Executing quickly (large n_k) incurs high market impact costs (moving the price against you). Executing slowly (small n_k) incurs low impact but exposes the order to market volatility \sigma^2 over a longer time. The solution is an optimal trading trajectory (usually VWAP-like or front-loaded).

*Source: eq3/jules-primer/primer.csv*

---

## Marginal Risk Contributions

**Equation:**

$$
\text{MCR}_i = \frac{\partial \sigma_p}{\partial w_i} = \frac{\text{Cov}(R_i, R_p)}{\sigma_p} = \frac{(\Sigma \mathbf{w})_i}{\sigma_p}
$$

**Description:**
The marginal contribution to risk (MCR) for asset i represents the instantaneous rate of change in portfolio volatility with respect to a change in weight w_i, holding all other weights constant. The numerator (\Sigma \mathbf{w})_i equals \sum_{j=1}^N w_j \sigma_{ij}, which is the covariance between asset i and the portfolio. This measure is homogeneous of degree zero in portfolio weights and satisfies Euler's theorem for homogeneous functions. For risk management applications, MCR_i indicates which assets provide the greatest opportunity for risk reduction through position adjustments. Under normality assumptions, MCR_i also represents the sensitivity of portfolio Value-at-Risk to weight changes, making it crucial for dynamic hedging strategies. The vector \text{MCR} = \Sigma \mathbf{w}/\sigma_p forms the gradient of portfolio volatility and points in the direction of steepest risk increase.

*Source: eq3/portfolio_risk_measures_phd.txt*

---

## Equation

**Equation:**

\text{Payoff} = \begin{cases} (1 + c_i) \cdot N & \text{if } S_{t_i} \ge B_{call} \\ \max(S_T/S_0, 1-PDI) \cdot N & \text{at maturity} \end{cases}

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Rho

**Equation:**

$$
\rho_C = \frac{\partial C}{\partial r} = K (T-t) e^{-r(T-t)} \Phi(d_2) \rho_P = \frac{\partial P}{\partial r} = -K (T-t) e^{-r(T-t)} \Phi(-d_2)
$$

**Description:**
Variables: ; Explanation: * Rho measures sensitivity to interest rates. Calls have positive rho (benefit from higher rates); puts have negative rho. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## VEGA EXPOSURE ANALYSIS

**Equation:**

$$
\frac{\partial V_{cliquet}}{\partial \sigma} = \notag_{i=1}^{n} E^Q[e^{-rT} \frac{\partial}{\partial \sigma} max(min(R_i, Cap), Floor)]
$$

**Description:**
This equation represents the sensitivity of cliquet option value to changes in volatility parameter \sigma. The vega exposure is complex due to the path-dependent nature and multiple embedded options. Each period's contribution depends on the volatility surface at different forward dates, making the total vega a weighted average across the term structure. The cap and floor constraints create non-linear vega profiles - when returns are near the boundaries, vega sensitivity is reduced as the payoff becomes insensitive to further volatility changes. This creates vega compression effects similar to barrier options. The forward-starting nature means vega exposure is distributed across multiple future volatility levels, requiring modeling of the entire volatility term structure rather than a single volatility parameter.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## Crank-Nicolson

**Equation:**

$$
\frac{u^{n+1}-u^n}{\Delta t} = \frac{1}{2} \underbrace{L u^{n+1}}_{\text{Implicit}} + \frac{1}{2} \underbrace{L u^n}_{\text{Explicit}}
$$

**Description:**
A Finite Difference method for solving PDEs. It is the average of the Explicit scheme (stable only for small steps) and the Implicit scheme (unconditionally stable). Crank-Nicolson is unconditionally stable and has second-order accuracy in both time and space O(\Delta t^2, \Delta x^2), making it the standard choice for 1D pricing PDEs.

*Source: eq3/jules-primer/primer.csv*

---

## Fokker-Planck

**Equation:**

$$
\frac{\partial p}{\partial t} = -\frac{\partial}{\partial S}[(r-q)Sp] + \frac{1}{2}\frac{\partial^2}{\partial S^2}[\sigma_{LV}^2 S^2 p]
$$

**Description:**
Forward PDE for probability density under local vol.

*Source: eq3/gemini-primer/gemini_primer.csv; eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
**Variables:**
- r_s^{\text{real}}: Real short rate process (inflation-adjusted)
- P_{\text{real}}(t,T): Real price of inflation-linked bond
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## VIX Index Formula

**Equation:**

$$
\sigma^2 = \frac{2}{T} \sum_i \frac{\Delta K_i}{K_i^2} e^{RT} \underbrace{Q(K_i)}_{\text{Option Price}} - \frac{1}{T} \left( \frac{F}{K_0} - 1 \right)^2
$$

**Description:**
This formula calculates the VIX (volatility index), representing the market's expectation of 30-day forward volatility. It is a model-free estimate derived from a portfolio of out-of-the-money puts and calls Q(K_i) weighted by the inverse square of their strikes (1/K^2). This weighting scheme effectively replicates the payout of a variance swap, making the VIX a proxy for the square root of the fair variance swap strike.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
dS_t = (\mu - \delta_t) S_t dt + \sigma_S S_t dW_t^S
d\delta_t = \kappa(\alpha - \delta_t) dt + \sigma_\delta dW_t^\delta
dW_t^S dW_t^\delta = \rho dt
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Bayes' Theorem

**Equation:**

$$
P(A|B) = \frac{\underbrace{P(B|A)}_{\text{Likelihood}} \cdot \underbrace{P(A)}_{\text{Prior}}}{\underbrace{P(B)}_{\text{Evidence}}}
$$

**Description:**
Bayes' Theorem describes how to update probabilities based on new evidence. P(A) is the prior belief, and P(A|B) is the posterior belief after observing B. It is the foundation of Bayesian inference, widely used in parameter estimation (e.g., Black-Litterman model) and regime-switching models.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
dn_t = (\theta_n(t) - a_n n_t) dt + \sigma_n dW_t^n
dr_t = (\theta_r(t) - a_r r_t) dt + \sigma_r dW_t^r
\frac{dI_t}{I_t} = (n_t - r_t) dt + \sigma_I dW_t^I
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## 1. Nelson-Siegel Model

**Equation:**

$$
y(\tau) = \beta_0 + \beta_1 \left( \frac{1 - e^{-\lambda \tau}}{\lambda \tau} \right) + \beta_2 \left( \frac{1 - e^{-\lambda \tau}}{\lambda \tau} - e^{-\lambda \tau} \right)
$$

**Description:**
**Variables:** - τ: Time to maturity - β_0: Level factor (long-term yield) - β_1: Slope factor (short-term component) - β_2: Curvature factor (medium-term hump) - λ: Decay parameter controlling hump location - e^{-\lambda \tau}: Exponential decay term | Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## Bates Model

**Equation:**

\begin{cases} dS_t/S = (\mu - \lambda \bar{k})dt + \sqrt{v_t}dW_1 + (e^J-1)dN \\ dv_t = \kappa(\theta-v_t)dt + \sigma_v \sqrt{v_t}dW_2 \end{cases}

**Description:**
The Bates model is a hybrid, combining Heston stochastic volatility with Merton jumps. This allows it to calibrate to both the long-term volatility smile patterns (handled by Heston) and the short-term skew/smiles (handled by Jumps). Pure Heston struggles with very short-term skews, while pure Jump models struggle with the term structure of volatility. Bates solves both.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
\mathbb{E}[B_T] = \sum w_i F_i, \quad \text{Var}(\ln B_T) \approx \frac{\sum_{i,j} w_i w_j F_i F_j \rho_{ij} \sigma_i \sigma_j T}{(\sum w_i F_i)^2}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## **Vanna (Cross Sensitivity Delta-Vol):**

**Equation:**

$$
\text{Vanna} = \frac{\partial^2 V}{\partial S \partial \sigma} = \frac{\partial^2 V}{\partial \sigma \partial S} = -\frac{d_1 \phi(d_1)}{\sigma}
$$

**Description:**
**Variables:** - d_1: Black-Scholes d_1 parameter - φ(d_1): Standard normal density

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## CIR Conditional Density

**Equation:**

$$
r_T | r_t ~ Non-central chi^2 with df = 4kappa theta/sigma^2 and non-centrality lambda = 4kappa r_t exp(-kappa(T-t))/[sigma^2 (1 - exp(-kappa(T-t)))]
$$

**Description:**
Non-central chi-squared distribution with 4kappa theta/sigma^2 degrees of freedom. Non-centrality parameter lambda depends on current rate. Feller condition ensures positivity.

*Source: eq3/minimax-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(\lambda_1, \lambda_2\): Two decay parameters - \(\beta_3\): Additional curvature factor P(T_i) = \frac{1 - \sum_{j=1}^{i-1} c_j P(T_j)}{1 + c_i}
$$

**Description:**
Variables: ; Explanation: * Svensson extension adds a second curvature term for better fitting flexibility, especially useful for fitting complex yield curve shapes observed in markets.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(P(T_i)\): Zero-coupon bond price for maturity \(T_i\) - \(c_i\): Coupon rate of the \(i\)-th bond f(t,T) = -\frac{\partial}{\partial T} \ln P(t,T)
$$

**Description:**
Variables: ; Explanation: * The bootstrap method recursively extracts zero-coupon prices from coupon bond prices, assuming linear interpolation between maturities. It ensures exact fit to market data.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas.csv*

---

## CDS Spread Equation

**Equation:**

$$
s = [(1-R) int_0^T E^Q[ exp(-int_0^t r_s ds) lambda_t exp(-int_0^t lambda_s ds) ] dt] / [int_0^T E^Q[ exp(-int_0^t r_s ds) exp(-int_0^t lambda_s ds) ] dt]
$$

**Description:**
Equates PV of premium leg to PV of protection leg. Numerator: expected discounted loss given default. Denominator: expected discounted survival annuity.

*Source: eq3/minimax-primer/formulas.csv*

---

## Equation

**Equation:**

$$
\text{Kullback-Leibler: } D_{KL}(P_{market}||P_{model}) = \int_{-\infty}^{\infty} f_{market}(x)\ln\left(\frac{f_{market}(x)}{f_{model}(x)}\right)dx
$$

*Source: eq3/volatility-calibration.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## 4. APT in Continuous Time

**Equation:**

$$
dR_i(t) = (r_f(t) + \sum_{j=1}^k \beta_{ij} \lambda_j(t)) dt + \sum_{j=1}^k \beta_{ij} \sigma_j(t) dW_j(t) + \sigma_{\epsilon,i} dW_{\epsilon,i}(t)
$$

**Description:**
Variables: - dR_i(t): Instantaneous return on asset i - r_f(t): Instantaneous risk-free rate - \lambda_j(t): Instantaneous factor risk premium - \sigma_j(t): Instantaneous factor volatility - \sigma_{\epsilon,i}: Idiosyncratic volatility - dW_j(t), dW_{\epsilon,i}(t): Independent Brownian motions

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## **Theta**

**Equation:**

$$
\Theta_C = -\frac{\partial C}{\partial t} = -\frac{S e^{-q(T-t)} \sigma \phi(d_1)}{2\sqrt{T-t}} + q S e^{-q(T-t)} \Phi(d_1) - r K e^{-r(T-t)} \Phi(d_2)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
**Variables:**
- \(Q(K_i)\): Midpoint of bid-ask spread for out-of-the-money option with strike \(K_i\)
- \(K_0\): First strike below forward price \(F\)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## CDS Pricing (Par Spread)

**Equation:**

$$
S = \frac{\underbrace{(1-R) \int e^{-rt} Q(t) \lambda(t) dt}_{\text{Protection Leg}}}{\underbrace{\int e^{-rt} Q(t) dt}_{\text{Premium Leg (PV01)}}}
$$

**Description:**
The Credit Default Swap (CDS) spread S is the premium paid to insure against default. The fair spread equates the Present Value of the Protection Leg (expected payout (1-R) upon default) to the Present Value of the Premium Leg (annuity payments S made while the entity survives). Q(t) is the survival probability. Intuitively, Spread \approx (1-R) * Default Probability.

*Source: eq3/jules-primer/primer.csv*

---

## Variables:

**Equation:**

$$
- \(r_s^{\text{real}}\): Real short rate process \pi_{\text{BE}}(t,T) = \left( \frac{P_{\text{nominal}}(t,T)}{P_{\text{real}}(t,T)} \right)^{\frac{1}{T-t}} - 1
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Local Volatility (Dupire)

**Equation:**

$$
\sigma_{LV}^2(K, T) = \frac{\frac{\partial C}{\partial T} + (r-q)K\frac{\partial C}{\partial K} + q C}{\frac{1}{2} K^2 \frac{\partial^2 C}{\partial K^2}}
$$

**Description:**
Bruno Dupire's formula allows the construction of a unique deterministic volatility surface \sigma(S,t) that perfectly matches all observed market option prices C(K,T). It assumes that the market is complete and consistent. While it fits the smile perfectly, the dynamics of the smile in a local vol model (which tend to flatten as spot moves) are often unrealistic compared to stochastic volatility models. | **Explanation:** Dupire's formula extracts the unique deterministic volatility surface \(\sigma(S,t)\) that matches all observed vanilla option prices. It is derived from the forward PDE for call prices.

*Source: eq3/gemini-primer/gemini_primer.md; eq3/jules-primer/primer.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Bachelier (Normal) Model

**Equation:**

$$
C(S_t, K, T, r, \sigma_N) = e^{-r(T-t)} \left[ (S_t - K) \Phi\left( \frac{S_t - K}{\sigma_N \sqrt{T-t}} \right) + \sigma_N \sqrt{T-t} \phi\left( \frac{S_t - K}{\sigma_N \sqrt{T-t}} \right) \right]
$$

**Description:**
Variables: | **Variables:** - \(\sigma_N\): Normal volatility (absolute volatility, units of currency) | See markdown for detailed variables and explanation | Automatically extracted equation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas.csv; eq3/iflow-primer/formulas_part2.md*

---

## GAMMA RISK IN RATCHET OPTIONS

**Equation:**

$$
\Gamma_{ratchet} = \frac{\partial^2 V_{ratchet}}{\partial S_0^2} = \notag_{i=1}^{n} \frac{\partial^2}{\partial S_0^2} E^Q[e^{-rT} max(min(R_i, c), f)]
$$

**Description:**
Gamma risk measures the convexity of option value with respect to the initial asset price S_0. For ratchet options, gamma exhibits complex behavior due to the multi-period structure and reset mechanisms. The gamma profile changes dynamically as the underlying price moves, with each reset date effectively creating a new option with strike determined by the current price level. This creates gamma spikes near reset dates when the underlying is close to the previous reset level. The path-dependent nature means gamma depends not just on current price but on the entire price history since the last reset. The local cap and floor constraints create regions where gamma becomes negative, similar to written options, particularly when accumulated returns approach the boundaries.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## Equation

**Equation:**

$$
Under APT: \mathbf{w}^* \approx \frac{\boldsymbol{\Sigma}_\epsilon^{-1} \mathbf{1}}{\mathbf{1}^\top \boldsymbol{\Sigma}_\epsilon^{-1} \mathbf{1}}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Stratonovich Integral

**Equation:**

$$
\int_0^t X_s \circ dY_s = \underbrace{\int_0^t X_s dY_s}_{\text{Itô Integral}} + \underbrace{\frac{1}{2} \langle X, Y \rangle_t}_{\text{Correction Term}}
$$

**Description:**
The Stratonovich integral follows the standard rules of calculus (chain rule) but is not a martingale, making it less suitable for finance than the Itô integral. However, it is often used in physical definitions of SDEs. The equation explicitly links the two definitions: the Stratonovich integral is the Itô integral plus half the quadratic covariation. This correction term explains the "convexity bias" when moving between physical continuous-time limits and discrete financial modeling.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
a_1 = \frac{\ln(S_t/m_t) + (r-q+\sigma^2/2)(T-t)}{\sigma \sqrt{T-t}}, \quad a_2 = a_1 - \sigma \sqrt{T-t}, \quad a_3 = a_1 - \frac{2(r-q)\sqrt{T-t}}{\sigma}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Hagan's asymptotic expansion yields the celebrated SABR implied volatility formula for strike K and forward F:

**Equation:**

$$
σ_SABR(K) = α / ((FK)^{(1-β)/2} [1 + (1-β)²/24 ln²(F/K) + (1-β)⁴/1920 ln⁴(F/K)]) * z / x(z) * [1 + ((1-β)²α²/24(FK)^{1-β} + ρβνα/4(FK)^{(1-β)/2} + (2-3ρ²)ν²/24) T]
$$

*Source: eq3/volatility_modeling_primer.txt*

---

## Kou Double Exponential Jump Diffusion

**Equation:**

$$
f_Y(y) = p \cdot \underbrace{\eta_1 e^{-\eta_1 y} 1_{\{y>0\}}}_{\text{Up Jumps}} + q \cdot \underbrace{\eta_2 e^{\eta_2 y} 1_{\{y<0\}}}_{\text{Down Jumps}}
$$

**Description:**
Kou's model improves on Merton's by using a double exponential distribution for jump sizes instead of a normal distribution. The memoryless property of the exponential distribution allows for analytical solutions to many path-dependent options (like barrier and lookback options) via the Laplace transform. It captures the 'asymmetric leptokurtic' nature of returns, where crashes (down jumps) are often larger and more frequent than rallies.

*Source: eq3/jules-primer/primer.csv*

---

## Barrier Options (Down-and-Out Call)

**Equation:**

$$
C_{\text{DAO}} = C_{\text{BS}} - \left( \frac{H}{S_t} \right)^{2\lambda} C_{\text{BS}}\left( \frac{H^2}{S_t}, K, T, r, q, \sigma \right) \lambda = \frac{r-q+\sigma^2/2}{\sigma^2}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Equation

**Equation:**

$$
\mu_j(t) = -\sum_{k=j+1}^{N-1} \frac{\delta_k \sigma_j(t) \sigma_k(t) \rho_{jk} F_k(t)}{1 + \delta_k F_k(t)} \quad \text{(under } \mathbb{Q}^{T_N}\text{)}
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Heston Stochastic Volatility

**Equation:**

\begin{cases} dS_t = \mu S_t dt + \sqrt{v_t} S_t dW_t^S \\ dv_t = \underbrace{\kappa(\theta - v_t) dt}_{\text{Mean Reversion}} + \xi \sqrt{v_t} dW_t^v \end{cases}

**Description:**
The Heston model introduces a second stochastic process v_t for the variance of the asset. The variance follows a CIR process (mean-reverting square root diffusion). Crucially, the two Brownian motions W^S and W^v are correlated with parameter \rho. A negative \rho generates the skew (downside puts are more expensive). This model is standard for pricing options where the volatility smile is significant and dynamic.

*Source: eq3/jules-primer/primer.csv*

---

## Charm (Delta Decay)

**Equation:**

$$
\frac{\partial \Delta}{\partial t} = -q e^{-q(T-t)} \Phi(d_1) + e^{-q(T-t)} \phi(d_1) \left( \frac{2(r-q)\tau - d_2 \sigma \sqrt{\tau}}{2\tau \sigma \sqrt{\tau}} \right)
$$

**Description:**
Variables: ; Explanation: * Charm measures the rate of change of delta over time. Important for delta hedging rebalancing frequency. | **Explanation:** Charm measures the rate of change of delta over time. Important for delta hedging rebalancing frequency. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas_part2.md*

---

## ARIMA Model

**Equation:**

$$
(1 - \sum_{i=1}^p \phi_i L^i) \underbrace{(1 - L)^d}_{\text{Differencing}} X_t = (1 + \sum_{j=1}^q \theta_j L^j) \underbrace{\epsilon_t}_{\text{White Noise}}
$$

**Description:**
The ARIMA(p,d,q) model is a staple of time series forecasting. 'p' is the order of the AutoRegressive (AR) term, capturing momentum/mean reversion. 'd' is the degree of differencing required to make the series stationary (removing trends). 'q' is the order of the Moving Average (MA) term, smoothing past shock effects. L is the lag operator (L X_t = X_{t-1}). While less used for derivative pricing, it is fundamental for statistical arbitrage and risk factor modeling.

*Source: eq3/jules-primer/primer.csv*

---

## Unknown

**Equation:**

$$
C(S_0,K,T) = S_0 - \sqrt{K} \cdot \frac{1}{\pi}\int_0^\infty \text{Re}\left[ \frac{\phi_{\theta}(-iu)}{iu} \cdot \frac{e^{-rT}}{e^{-iu\ln K} - e^{-iu\ln S_0}} \right] du
$$

**Description:**
This integral equation provides the price of a European call option in the Heston model using the characteristic function. It requires numerical integration techniques for computation.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Variables:

**Equation:**

$$
- \(V_t\): Firm asset value - \(D\): Debt face value (default barrier) - \(E_t\): Equity value - \(\sigma_V\): Asset volatility - \(\Phi(\cdot)\): Standard normal CDF
$$

**Description:**
Variables: ; Explanation: * Merton models equity as a European call option on firm assets with strike equal to debt. Default occurs at maturity if assets are below debt. Credit spreads are derived from this option pricing framework.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## **Rainbow Options (Maximum of Two Assets)**

**Equation:**

$$
C_{\max} = S^1_t e^{-q_1(T-t)} \Phi(d_{11}) + S^2_t e^{-q_2(T-t)} \Phi(d_{22}) - K e^{-r(T-t)} M(d_{11}-\sigma_1\sqrt{T-t}, d_{22}-\sigma_2\sqrt{T-t}; \rho)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## 2. Volatility Swaps

**Equation:**

$$
\text{Fair Volatility Strike } K_{\text{vol}} \approx \sqrt{K_{\text{var}}} - \frac{\text{Var}(\sqrt{\text{Realized Variance}})}{2 K_{\text{vol}}^{3/2}}
$$

**Description:**
**Explanation:** Volatility swaps pay realized volatility minus strike. Due to convexity (Jensen's inequality), the fair volatility strike is less than the square root of the variance strike. The convexity adjustment depends on the volatility of volatility.

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## SABR Model

**Equation:**

\begin{cases} dF_t = \alpha_t \underbrace{F_t^\beta}_{\text{Backbone}} dW_t^1 \\ d\alpha_t = \underbrace{\nu \alpha_t dW_t^2}_{\text{Vol of Vol}} \end{cases}

**Description:**
SABR (Stochastic Alpha Beta Rho) is the industry standard for Interest Rate Swaptions and FX options. It captures the volatility smile through \nu (vol of vol) and correlation \rho, and the 'backbone' of the surface (how ATM vol changes with the forward) through \beta. \alpha_t is the stochastic volatility level. It provides an accurate closed-form approximation for implied volatility, making it extremely fast for calibration.

*Source: eq3/jules-primer/primer.csv*

---

## Black-76 Formula (Futures Options)

**Equation:**

$$
C(F_t, K, T, r, \sigma) = e^{-r(T-t)} [F_t \Phi(d_1) - K \Phi(d_2)] d_1 = \frac{\ln(F_t/K) + (\sigma^2/2)(T-t)}{\sigma \sqrt{T-t}}, \quad d_2 = d_1 - \sigma \sqrt{T-t}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## CORRELATION STRUCTURE IMPACT

**Equation:**

$$
\rho_{ij} = Corr(ln(S_{t_i}/S_{t_{i-1}}), ln(S_{t_j}/S_{t_{j-1}})) = \delta_{ij} - \frac{\sigma^2 min(t_i-t_{i-1}, t_j-t_{j-1})}{\sqrt{Var(R_i)Var(R_j)}}
$$

**Description:**
This equation describes the correlation structure between returns in different periods under Brownian motion. For cliquet options, the independence of non-overlapping periods in Brownian motion simplifies pricing, but stochastic volatility or jump models introduce complex correlation patterns. The \delta_{ij} represents the Kronecker delta, indicating zero correlation between distinct periods in the Black-Scholes framework. However, empirical evidence suggests volatility clustering creates positive autocorrelation in squared returns, violating this independence assumption. The correlation structure becomes crucial when pricing cliquet options under realistic market conditions, as it affects the probability of consecutive periods hitting cap or floor limits. Advanced models incorporating stochastic volatility or regime-switching mechanisms capture these empirical regularities but require sophisticated numerical methods for pricing and hedging.

*Source: eq3/exotic-options-cliquet-ratchet-primer.txt*

---

## 2. Multi-Dimensional Itô's Lemma

**Equation:**

$$
dV = \frac{\partial V}{\partial t} dt + \sum_i \frac{\partial V}{\partial x_i} dx_i + \frac{1}{2} \sum_{i,j} \frac{\partial^2 V}{\partial x_i \partial x_j} dx_i dx_j
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
\ln \sigma_t^2 = \omega + \alpha \left( \frac{|\epsilon_{t-1}|}{\sigma_{t-1}} - \sqrt{2/\pi} \right) + \gamma \frac{\epsilon_{t-1}}{\sigma_{t-1}} + \beta \ln \sigma_{t-1}^2
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Price under Black-Scholes

**Equation:**

$$
C = S_t e^{-q(T-t)} \left( e^{-q\tau} \Phi(d_1) - e^{-r\tau} \alpha \Phi(d_2) \right) d_1 = \frac{(r-q+\sigma^2/2)\tau}{\sigma\sqrt{\tau}}, \quad d_2 = d_1 - \sigma\sqrt{\tau}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Equation

**Equation:**

$$
\text{Regularized Objective: } L(\Theta) = \sum_i w_i(\sigma_{market}^i - \sigma_{model}^i)^2 + \lambda_1||\Theta||_1 + \lambda_2||\Theta - \Theta_{prior}||_2^2
$$

*Source: eq3/volatility-calibration.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## 2. Variance Swap Fair Strike

**Equation:**

$$
\sigma_{\text{fair}}^2 = \frac{1}{P(0,T)} \mathbb{E}^{\mathbb{Q}}\left[ \int_0^T \sigma_s^2 ds \right] = \frac{1}{P(0,T)} \int_0^T \mathbb{E}^{\mathbb{Q}}[\sigma_s^2] ds
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## 2. Forward Measure Pricing

**Equation:**

$$
V(t) = P(t,T) \mathbb{E}^{\mathbb{Q}^T}\left[ \frac{V(T)}{P(T,T)} \middle| \mathcal{F}_t \right] = P(t,T) \mathbb{E}^{\mathbb{Q}^T}\left[ \text{Payoff} \middle| \mathcal{F}_t \right]
$$

**Description:**
**Variables:** - \mathbb{Q}^T: T-forward measure - P(t,T): Discount factor to T - V(T): Terminal value of derivative

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
**Variables:**
- N: Number of sampling days
- 252: Annualization factor (trading days per year)
- S_{t_i}: Spot price at observation i
- ln(S_{t_i}/S_{t_{i-1}}): Log return
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Feynman-Kac Theorem

**Equation:**

$$
\underbrace{\frac{\partial V}{\partial t} + \mathcal{A}V - rV = 0}_{\text{PDE}} \iff V(t,x) = \underbrace{E^Q[e^{-r(T-t)} \psi(X_T) | X_t=x]}_{\text{Expectation}}
$$

**Description:**
This powerful theorem establishes a dual relationship between parabolic Partial Differential Equations (PDEs) and Stochastic Differential Equations (SDEs). It asserts that the solution V(t,x) to the Black-Scholes PDE (and its generalizations) is identically the risk-neutral expectation of the discounted terminal payoff \psi(X_T). This allows quants to choose between solving the PDE (using Finite Differences) or simulating the process (using Monte Carlo) depending on the problem's dimensionality.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
Where C_{BS} is the Black-Scholes call option price with adjusted parameters to account for jumps, and \sigma_J^2 = \sigma^2 + \lambda(\sigma_J^2 + \mu_J^2) - \lambda\mu_J^2.
$$

*Source: eq3/iflow-model-primer/derivatives-primer.md*

---

## Equation

**Equation:**

$$
d_{11} = \frac{\ln(S^1_t/K) + (r-q_1+\sigma_1^2/2)(T-t)}{\sigma_1\sqrt{T-t}}, \quad d_{22} = \frac{\ln(S^2_t/K) + (r-q_2+\sigma_2^2/2)(T-t)}{\sigma_2\sqrt{T-t}}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Variables:

**Equation:**

$$
- \(\Delta y\): Small parallel shift in yield curve \frac{\partial P}{\partial y_{t_i}} \approx -\frac{P(y_{t_i}+\Delta) - P(y_{t_i}-\Delta)}{2\Delta} \cdot \frac{1}{P}
$$

**Description:**
Variables: ; Explanation: * Effective duration is used for bonds with embedded options (callable/putable) where price-yield relationship is non-linear. It is computed via finite difference approximation.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
\mathbb{E}^{\text{Cash}}[\text{Payoff}] = \mathbb{E}^{\text{Physical}}\left[ \text{Payoff} \times \frac{d\mathbb{Q}^{\text{Cash}}}{d\mathbb{Q}^{\text{Physical}}} \right]
$$

*Source: eq3/interest_rate_derivatives_primer.txt*

---

## Crank-Nicholson Scheme

**Equation:**

$$
-\frac{\lambda}{2} u_{i+1}^{n+1} + (1+\lambda)u_i^{n+1} - \frac{\lambda}{2} u_{i-1}^{n+1} = \frac{\lambda}{2} u_{i+1}^n + (1-\lambda)u_i^n + \frac{\lambda}{2} u_{i-1}^n
$$

**Description:**
Unconditionally stable second-order accurate implicit finite difference scheme requiring solution of tridiagonal linear systems.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Unknown

**Equation:**

$$
C_{DO} = SN(d_1) - Ke^{-r(T-t)}N(d_2) - \left(\frac{B}{S}\right)^{2\lambda}\left[ SN\left(d_1 - \frac{\sigma\sqrt{T-t}}{\sqrt{2}}\right) - Ke^{-r(T-t)}N\left(d_2 - \frac{\sigma\sqrt{T-t}}{\sqrt{2}}\right)\right]
$$

**Description:**
Where: B: Barrier level, \lambda = \frac{r - \frac{1}{2}\sigma^2}{\sigma^2}. Barrier options have payoffs that depend on whether the underlying asset price has reached a certain level (the barrier) during the life of the option.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Equation

**Equation:**

$$
\frac{v_{i,j+1} - v_{i,j}}{\Delta t} + r S_i \frac{v_{i+1,j} - v_{i-1,j}}{2\Delta S} + \frac{1}{2} \sigma^2 S_i^2 \frac{v_{i+1,j} - 2v_{i,j} + v_{i-1,j}}{\Delta S^2} = r v_{i,j}
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Variables:

**Equation:**

$$
- \(f(t,T)\): Instantaneous forward rate at time \(t\) for maturity \(T\) ### D. Term Structure Models #### 1. Vasicek Model dr_t = \kappa(\theta - r_t) dt + \sigma dW_t^{\mathbb{Q}}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(\kappa\): Speed of mean reversion - \(\theta\): Long-term mean level - \(\sigma\): Volatility of short rate - \(W_t^{\mathbb{Q}}\): Brownian motion under risk-neutral measure
$$

**Description:**
Variables: ; Explanation: * Vasicek is a one-factor equilibrium model with mean-reverting Gaussian short rate. It allows negative rates and has closed-form solutions for bond prices and options.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Variables:

**Equation:**

$$
- \(u, d\): Up and down factors - \(p\): Risk-neutral probability of up move - \(\Delta t\): Time step length - \(V_{i,j}\): Option value at node \(i\) (time step) and \(j\) (price level)
$$

**Description:**
Variables: ; Explanation: * The CRR binomial tree discretizes the geometric Brownian motion into a lattice. American exercise is handled via backward induction with immediate exercise check at each node. Convergence to Black-Scholes as \(\Delta t \to 0\).

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Gap Options

**Equation:**

$$
C_{\text{gap}} = S_t e^{-q(T-t)} \Phi(d_1) - K_2 e^{-r(T-t)} \Phi(d_2) d_1 = \frac{\ln(S_t/K_1) + (r-q+\sigma^2/2)(T-t)}{\sigma\sqrt{T-t}}, \quad d_2 = d_1 - \sigma\sqrt{T-t}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## 1. One-Dimensional Itô's Lemma

**Equation:**

$$
dV = \left( \frac{\partial V}{\partial t} + \mu \frac{\partial V}{\partial S} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} \right) dt + \sigma S \frac{\partial V}{\partial S} dW
$$

**Description:**
**Variables:** - V(S,t): Function of state variable S and time t - dS = μ dt + σ dW: Stochastic differential equation for S - ∂V/∂t: Partial derivative with respect to time - ∂V/∂S: First partial with respect to S (delta) - ∂²V/∂S²: Second partial with respect to S (gamma)

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/gemini-primer/gemini_primer.md*

---

## SABR Smile Dynamics: Volatility of Volatility Dominance

**Equation:**

$$
\frac{\partial \sigma_{impl}}{\partial \nu} = \frac{\alpha}{F_{mid}^{1-\beta}} \left( \frac{\rho\beta F_{mid}^{1-\beta}}{4\alpha} + \frac{2-3\rho^2}{12}\nu \right) T \frac{z}{x(z)}
$$

**Description:**
Increasing \nu amplifies smile curvature proportionally to T. For longer-dated options, vol-of-vol effects become more pronounced. The dependence on \rho through term (2-3\rho^2)/12 \nu means that correlation modulates how vol-of-vol impacts smile. When \rho^2 = 2/3, the curvature contribution from \nu is minimized. For typical market values \rho \in [-0.7, -0.3] (negative correlation in rate markets), the factor (2-3\rho^2)/12 is positive, ensuring \nu contributes to smile convexity.

*Source: eq3/sabr-model.txt*

---

## SABR Implied Volatility (Hagan)

**Equation:**

$$
sigma_BS(K) = alpha/((F K)^((1-beta)/2) (1 + ((1-beta)^2/24) ln^2(F/K) + ((1-beta)^4/1920) ln^4(F/K))) * z/x(z) * (1 + (((1-beta)^2/24) + (1/4) rho beta nu + ((2-3rho^2)/24) nu^2) T )
$$

**Description:**
Closed-form approximation for implied vol. z = (nu/alpha) (F K)^((1-beta)/2) ln(F/K). x(z) = ln((sqrt(1-2rho z + z^2) + z - rho)/(1 - rho)). Asymptotic expansion.

*Source: eq3/minimax-primer/formulas.csv*

---

## Equation

**Equation:**

$$
under the critical growth condition sup_u ‖∂^u(f/q)‖ ≤ Ce^{½‖x‖²+B‖x‖} with Gaussian proposals satisfying the light-tailed condition 𝔼_q[‖X‖⁴e^{2B‖X‖}𝟙{‖X‖≥R-1}] ≤ C₀R^αe^{-βR^γ}.
$$

*Source: eq3/monte_carlo_variance_reduction_II.txt*

---

## Variables:

**Equation:**

$$
- \(F\): Forward price of underlying - \(P(K), C(K)\): Market prices of out-of-the-money puts and calls \frac{N}{T} \left( \sum_{i=1}^n \left( \ln\frac{S_{t_i}}{S_{t_{i-1}}} \right)^2 - K_{\text{var}} \right)
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## **Implied Volatility Approximation (Hagan formula)**

**Equation:**

$$
\sigma_{\text{imp}}(K, F) \approx \frac{\alpha}{(FK)^{(1-\beta)/2} \left[ 1 + \frac{(1-\beta)^2}{24} \ln^2(F/K) + \frac{(1-\beta)^4}{1920} \ln^4(F/K) + \cdots \right]} \cdot \frac{z}{\chi(z)}
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Fokker-Planck Equation (Kolmogorov Forward)

**Equation:**

$$
\frac{\partial p}{\partial t} = -\frac{\partial}{\partial x}[\underbrace{\mu(x,t)}_{\text{Drift}} p] + \frac{\partial^2}{\partial x^2}[\underbrace{D(x,t)}_{\text{Diffusion}} p]
$$

**Description:**
The Fokker-Planck equation describes the time evolution of the probability density function p(x,t) of a stochastic process. Unlike the Feynman-Kac equation (which is backward in time for prices), this is forward in time for probabilities. It is used in the calibration of local volatility models, where the market prices of options across strikes and maturities are used to deduce the implied probability density of the underlying asset.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
where L(z,t) = (1-R) Φ( \frac{Φ^{-1}(1-e^{-ht}) - √{ρ} z}{√{1-ρ}} ) for homogeneous case with hazard rate h. This degeneracy (point mass) reflects the complete elimination of idiosyncratic risk.
$$

*Source: eq3/cdo-tranching-valuation-primer.md*

---

## At-the-Money-Forward Approximation

**Equation:**

$$
\sigma_{ATMF} = \frac{\alpha}{F_0^{1-\beta}} \left( 1 + \left[ \frac{(1-\beta)^2}{24} \frac{\alpha^2}{F_0^{2-2\beta}} + \frac{\rho\beta\nu\alpha}{4F_0^{1-\beta}} + \frac{2-3\rho^2}{24} \nu^2 \right] T \right)
$$

**Description:**
When strike K equals forward F_0, the log-moneyness term z = 0 and x(z) simplifies. This ATM-forward volatility is most liquid point in most markets, making it critical for model calibration. The term proportional to T captures volatility term structure: ATM volatility evolves linearly with time at this order of approximation. Practitioners often calibrate \alpha to match ATM-forward volatility first, then solve for \beta, \nu, \rho to capture skew and smile curvature. | At-the-money volatility depends linearly on maturity T in this first-order approximation. The coefficient of T determines volatility term structure. When \rho = \frac{\beta\nu\alpha}{F_0^{1-\beta} (2-3\rho^2)\nu^2/(24)} \cdot \frac{4}{\beta}, ATM volatility becomes flat across maturities. This term structure arises from convexity corrections and correlation effects. Empirical calibration typically shows negative correlation producing decreasing ATM volatility with maturity, consistent with mean reversion in volatility.

*Source: eq3/sabr-model.txt*

---

## Equation

**Equation:**

$$
p^{bid} = s - \frac{1}{\gamma} \ln\left(1 + \frac{\gamma}{\kappa}\right) - \frac{\gamma \sigma^2 (T-t)}{2} q
p^{ask} = s + \frac{1}{\gamma} \ln\left(1 + \frac{\gamma}{\kappa}\right) - \frac{\gamma \sigma^2 (T-t)}{2} q
$$

*Source: eq3/gemini-primer/gemini_primer.md*

---

## Equation

**Equation:**

$$
\frac{\partial V}{\partial t} + (r-q)S \frac{\partial V}{\partial S} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} - rV + \mathbf{1}_{\{S \le H\}} \frac{\partial V}{\partial A} = 0
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Characteristic Function

**Equation:**

$$
\phi(u) = \exp\left( iu \ln S_t + iu (r-q-\lambda\bar{\mu})\tau - \frac{1}{2} u^2 \sigma^2 \tau + \lambda\tau (e^{iu\mu_J - u^2\sigma_J^2/2} - 1) \right) *(Continued in next section: Interest Rate Derivatives)*
$$

**Description:**
Variables: ; Explanation: * Jump diffusion adds Poisson jumps with lognormal sizes to the geometric Brownian motion. It can produce steep short-term smiles and excess kurtosis. Pricing via Fourier transform or PIDE (partial integro-differential equation). ---

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## Equation

**Equation:**

$$
**Variables:**
- P(0,T): Risk-neutral discount factor to maturity
- \mathbb{E}^{\mathbb{Q}}[\sigma_s^2]: Expected variance under risk-neutral measure
- ∫_0^T \sigma_s^2 ds: Integrated variance
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Equation

**Equation:**

$$
Or equivalently:
S_par(t_0,t_N) = (1-R) * integral_{t_V}^{t_N} Z(t_V,s) * Q(t_V,s) * lambda(s) ds / sum_{n=1}^{N} Delta(t_{n-1},t_n,B) * Z(t_V,t_n) * Q(t_V,t_n) * (1 + (1_{PA}/2) * lambda_n * Delta_n)
$$

*Source: eq3/cds-primer-content.txt*

---

## Equation

**Equation:**

$$
**Variables:**
- \pi_{\text{BE}}(t,T): Break-even inflation rate between t and T
- P_{\text{nominal}}(t,T): Price of nominal zero-coupon bond
- P_{\text{real}}(t,T): Price of real zero-coupon bond
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## **CIR Conditional Density (Non-Central Chi-Squared):**

**Equation:**

$$
r_T | r_t \sim \text{Non-Central } \chi^2 \text{ with } df = \frac{4\kappa\theta}{\sigma^2} \text{ and non-centrality } \lambda = \frac{4\kappa r_t e^{-\kappa(T-t)}}{\sigma^2 (1 - e^{-\kappa(T-t)})}
$$

**Description:**
**Theoretical Context:** The CIR conditional distribution is a non-central chi-squared distribution with degrees of freedom determined by the Feller condition parameter 4κθ/σ² and non-centrality parameter λ that depends on the current rate r_t. This distribution has the property that its density is zero at zero when the Feller condition holds, ensuring strict positivity. The distribution's heavy right tail makes it suitable for capturing occasional high-rate regimes.

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Binomial Tree (Cox-Ross-Rubinstein)

**Equation:**

$$
u = e^{\sigma \sqrt{\Delta t}}, \quad d = e^{-\sigma \sqrt{\Delta t}}, \quad p = \frac{e^{(r-q)\Delta t} - d}{u - d} V_{i,j} = \max\left( e^{-r\Delta t} (p V_{i+1,j+1} + (1-p) V_{i+1,j}), \text{exercise value} \right)
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## **Survival Probability:**

**Equation:**

$$
\mathbb{Q}(\tau > T) = \Phi\left( \frac{\ln(V_0/K(0)) + (\mu - \sigma^2/2)T}{\sigma\sqrt{T}} \right) - \left( \frac{K(0)}{V_0} \right)^{2\mu/\sigma^2 - 1} \Phi\left( \frac{\ln(K(0)/V_0) + (\mu - \sigma^2/2)T}{\sigma\sqrt{T}} \right)
$$

**Description:**
**Variables:** - μ: Drift of asset value under physical measure - K(0): Initial barrier level - Other variables as defined | 3. Duffie-Singleton Reduced-Form Model

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Variables:

**Equation:**

$$
- \(F_t\): Forward/futures price at time \(t\) C(S_t, K, T, r, \sigma_N) = e^{-r(T-t)} \left[ (S_t - K) \Phi\left( \frac{S_t - K}{\sigma_N \sqrt{T-t}} \right) + \sigma_N \sqrt{T-t} \phi\left( \frac{S_t - K}{\sigma_N \sqrt{T-t}} \right) \right]
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## 4. Credit Default Swap (CDS) Pricing

**Equation:**

$$
s = \frac{(1-R) \int_0^T \mathbb{E}^{\mathbb{Q}}[ e^{-\int_0^t r_s ds} \lambda_t e^{-\int_0^t \lambda_s ds} ] dt}{\int_0^T \mathbb{E}^{\mathbb{Q}}[ e^{-\int_0^t r_s ds} e^{-\int_0^t \lambda_s ds} ] dt}
$$

**Description:**
**Variables:** - s: CDS spread (annual premium in basis points) - R: Recovery rate (fraction of face value recovered upon default) - λ_t: Hazard rate (default intensity) - e^{-\int_0^t r_s ds}: Risk-neutral discount factor - e^{-\int_0^t \lambda_s ds}: Survival factor - T: CDS maturity | **Variables:** - \(R\): Recovery rate (fraction of face value recovered upon default) - \(s\): CDS spread (premium paid per year)

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## **Reset Date Valuation:**

**Equation:**

$$
P(t) = \sum_{i=1}^n \mathbb{E}^{\mathbb{Q}}\left[ L(T_{i-1}, T_i) \delta_i e^{-\int_t^{T_i} r_s \, ds} \middle| \mathcal{F}_t \right] + \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^{T_n} r_s \, ds} \middle| \mathcal{F}_t \right]
$$

**Description:**
**Variables:** - L(T_{i-1}, T_i): Forward LIBOR rate for period [T_{i-1}, T_i] - \delta_i: Day count fraction (accrual factor) for period i - r_s: Short rate process - T_i: Reset dates and payment dates | See markdown for detailed variables and explanation | Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(c_i\): Coupon payment at time \(T_i\) - \(P(t,T_i)\): Price of zero-coupon bond maturing at \(T_i\) - \(n\): Number of coupon payments P = \sum_{i=1}^n \frac{c_i}{(1+y)^{T_i-t}} + \frac{1}{(1+y)^{T_n-t}}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Inflation Index Ratio

**Equation:**

$$
\frac{I_T}{I_t} = \exp\left( \int_t^T \pi_s ds + \frac{1}{2} \sigma_I^2 (T-t) + \sigma_I (W_T^{I,\mathbb{Q}} - W_t^{I,\mathbb{Q}}) \right) --- *(Continued in next section: Equity Derivatives)*## II. Equity Derivatives
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Multivariate Ito's Lemma (Differential Form)

**Equation:**

$$
df = \frac{\partial f}{\partial t} dt + \sum_{i=1}^n \frac{\partial f}{\partial x_i} dX_t^{(i)} + \frac{1}{2}\sum_{i=1}^n \sum_{j=1}^n \frac{\partial^2 f}{\partial x_i\partial x_j} dX_t^{(i)}dX_t^{(j)}
$$

**Description:**
The cross-variation terms dX_t^{(i)}dX_t^{(j)} = sigma_i(t

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## **Lookback Options (Floating Strike)**

**Equation:**

$$
C_{\text{floating}} = S_t e^{-q(T-t)} \Phi(a_1) - m_t e^{-r(T-t)} \Phi(a_2) + \frac{S_t e^{-r(T-t)} \sigma^2}{2(r-q)} \left( \left( \frac{S_t}{m_t} \right)^{-\frac{2(r-q)}{\sigma^2}} \Phi(-a_3) - e^{(r-q)(T-t)} \Phi(-a_1) \right)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Nelson-Siegel Model

**Equation:**

$$
y(\tau) = \beta_0 + \beta_1 \underbrace{\frac{1-e^{-\tau/\lambda}}{\tau/\lambda}}_{\text{Slope}} + \beta_2 \underbrace{\left(\frac{1-e^{-\tau/\lambda}}{\tau/\lambda} - e^{-\tau/\lambda}\right)}_{\text{Curvature}}
$$

**Description:**
The Nelson-Siegel model is a widely used parametric curve fitting method for the term structure of interest rates. It decomposes the yield curve into three components: level ($\beta_0$), slope ($\beta_1$), and curvature ($\beta_2$). The decay factor $\lambda$ controls the location of the hump in the curve. This parsimonious model provides a smooth and flexible fit for yield curves, essential for central banks and bond traders.

*Source: eq3/jules-primer/primer.csv*

---

## Basket Options (Moment Matching Approximation)

**Equation:**

$$
\text{Approximate basket as single lognormal: } B_t = \sum_{i=1}^n w_i S^i_t \mathbb{E}[B_T] = \sum w_i F_i, \quad \text{Var}(\ln B_T) \approx \frac{\sum_{i,j} w_i w_j F_i F_j \rho_{ij} \sigma_i \sigma_j T}{(\sum w_i F_i)^2}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Radon-Nikodym Derivative (Girsanov)

**Equation:**

$$
\frac{dQ}{dP}\bigg|_{\mathcal{F}_t} = \mathcal{E}(L)_t = \exp\left( -\int_0^t \underbrace{\theta_u}_{\text{Market Price of Risk}} dW_u - \frac{1}{2} \int_0^t \underbrace{\|\theta_u\|^2}_{\text{Jensen Correction}} du \right)
$$

**Description:**
This equation defines the Radon-Nikodym derivative, which is the density process used to change probability measures from the objective 'Physical Measure' P (where assets have risk premiums) to the 'Risk-Neutral Measure' Q (where assets drift at the risk-free rate). \theta_u represents the market price of risk (Sharpe ratio). The exponential martingale structure ensures that probabilities sum to 1. This transformation is necessary to use risk-neutral pricing, where the price of a derivative is simply the expected discounted payoff.

*Source: eq3/jules-primer/primer.csv*

---

## Equation

**Equation:**

$$
**Variables:**
- \(F_t\): Forward price
- \(\alpha_t\): Stochastic volatility
- \(\beta\): Elasticity parameter (\(0 \le \beta \le 1\))
- \(\nu\): Volatility of volatility
- \(\rho\): Correlation between forward and volatility
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
where ⊕ denotes bitwise exclusive-or, and initial values v_{j,1}, ..., v_{j,d_j} must be chosen as odd integers satisfying 0 < v_{j,k} < 2^k. The k-th Sobol point in dimension j is then:
x_{n,j} = n_1 v_{j,1} ⊕ n_2 v_{j,2} ⊕ ... ⊕ n_m v_{j,m}
$$

*Source: eq3/qmc-primer.txt*

---

## Equation

**Equation:**

$$
\sigma_{impl}(K) = \frac{\alpha}{F_{mid}^{1-\beta}}\left[1 + \left(\frac{(1-\beta)^2}{24}\frac{\alpha^2}{F_{mid}^{2-2\beta}} + \frac{\rho\beta\nu\alpha}{4F_{mid}^{1-\beta}} + \frac{2-3\rho^2}{24}\nu^2\right)T\right]\frac{z}{x(z)}
$$

*Source: eq3/equity-derivatives-stochastic-volatility-primer.txt; eq3/sabr-model.txt*

---

## Equation

**Equation:**

$$
**Variables:**
- \(\tau\): Time to maturity
- \(\beta_0\): Level factor (long-term yield)
- \(\beta_1\): Slope factor (short-term component)
- \(\beta_2\): Curvature factor
- \(\lambda\): Decay parameter (controls hump location)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md*

---

## Variables:

**Equation:**

$$
- \(m_t\): Minimum price observed up to time \(t\) (for a call on minimum) C_{\text{DAO}} = C_{\text{BS}} - \left( \frac{H}{S_t} \right)^{2\lambda} C_{\text{BS}}\left( \frac{H^2}{S_t}, K, T, r, q, \sigma \right) \lambda = \frac{r-q+\sigma^2/2}{\sigma^2}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
\frac{\partial\sigma_{impl}}{\partial\kappa} = \frac{\partial\sigma_{impl}}{\partial\theta}\frac{\partial\theta}{\partial\kappa} + \frac{\partial\sigma_{impl}}{\partial v_0}\frac{\partial v_0}{\partial\kappa}
$$

*Source: eq3/volatility-calibration.txt; eq3/equity-derivatives-stochastic-volatility-primer.txt*

---

## Unknown

**Equation:**

$$
\Theta = -\frac{\partial V}{\partial t} = -\frac{SN'(d_1)\sigma}{2\sqrt{T-t}} - rKe^{-r(T-t)}N(d_2) \quad \text{(Call)} \quad \text{or} \quad \Theta = -\frac{SN'(d_1)\sigma}{2\sqrt{T-t}} + rKe^{-r(T-t)}N(-d_2) \quad \text{(Put)}
$$

**Description:**
Theta measures the rate of change of the option price with respect to the passage of time (time decay). It is typically negative for long options, indicating that the option loses value as time passes.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Least-Squares Monte Carlo (Longstaff-Schwartz)

**Equation:**

$$
V(t_i, S_{t_i}) = \max\left( \text{exercise value}, \mathbb{E}^{\mathbb{Q}}[ e^{-r(t_{i+1}-t_i)} V(t_{i+1}, S_{t_{i+1}}) | S_{t_i} ] \right) \text{Continuation value approximated by regression: } \hat{C}(t_i, S) = \sum_{k=0}^K \beta_k \psi_k(S)
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## 2. Svensson (Nelson-Siegel-Svensson) Extended Model

**Equation:**

$$
y(\tau) = \beta_0 + \beta_1 \left( \frac{1 - e^{-\lambda_1 \tau}}{\lambda_1 \tau} \right) + \beta_2 \left( \frac{1 - e^{-\lambda_1 \tau}}{\lambda_1 \tau} - e^{-\lambda_1 \tau} \right) + \beta_3 \left( \frac{1 - e^{-\lambda_2 \tau}}{\lambda_2 \tau} - e^{-\lambda_2 \tau} \right)
$$

**Description:**
**Variables:** - λ_1: First decay parameter (controls initial hump) - λ_2: Second decay parameter (controls secondary hump) - β_3: Second curvature factor - Other variables as in Nelson-Siegel | Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Where:
- C_T(u) = \frac{2\kappa\theta}{\xi^2}\ln\left( \frac{g_1 e^{g_1 T} - 1}{g_1 - g_2 e^{g_2 T}} \right)
- D_T(u) = \frac{g_1 - g_2}{\xi^2}\left( \frac{g_1 e^{g_1 T} - 1}{g_1 - g_2 e^{g_2 T}} \right)
- g_{1,2} = \kappa - \xi^2u \pm \sqrt{(\kappa - \xi^2u)^2 + \xi^2u^2}
$$

*Source: eq3/iflow-model-primer/derivatives-primer.md*

---

## **SABR Implied Volatility (Hagan et al. approximation):**

**Equation:**

$$
\sigma_{BS}(K) = \frac{\alpha}{(F K)^{(1-\beta)/2} \left(1 + \frac{(1-\beta)^2}{24} \ln^2(F/K) + \frac{(1-\beta)^4}{1920} \ln^4(F/K)\right)} \frac{z}{x(z)} \left(1 + \left( \frac{(1-\beta)^2}{24} + \frac{1}{4} \rho \beta \nu + \frac{2-3\rho^2}{24} \nu^2 \right) T \right)
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Variables:

**Equation:**

$$
- \(CF_i\): Cash flow at time \(T_i\) - \(y\): Yield to maturity (per period) D_{\text{Mod}} = -\frac{1}{P} \frac{\partial P}{\partial y} = \frac{D_{\text{Mac}}}{1+y} D_{\text{Eff}} = -\frac{1}{P} \frac{P(y+\Delta y) - P(y-\Delta y)}{2\Delta y}
$$

**Description:**
Variables: ; Explanation: * Modified duration measures the percentage change in bond price for a 1% (100 basis point) change in yield. It is the first derivative of price with respect to yield, normalized by price.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas.csv*

---

## Zero-Coupon Bond Price in Vasicek

**Equation:**

$$
P(t,T) = A(t,T) e^{-B(t,T) r_t} B(t,T) = \frac{1 - e^{-\kappa(T-t)}}{\kappa} A(t,T) = \exp\left( \left(\theta - \frac{\sigma^2}{2\kappa^2}\right)(B(t,T) - (T-t)) - \frac{\sigma^2}{4\kappa} B(t,T)^2 \right) dr_t = \kappa(\theta - r_t) dt + \sigma \sqrt{r_t} dW_t^{\mathbb{Q}}
$$

**Description:**
Variables: ; Explanation: * CIR extends Vasicek by making volatility proportional to \(\sqrt{r_t}\), ensuring non-negative rates. The square-root process has a non-central chi-squared transition density. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Black-Scholes-Merton Formula

**Equation:**

$$
C(S_t, K, T, r, q, \sigma) = S_t e^{-q(T-t)} \Phi(d_1) - K e^{-r(T-t)} \Phi(d_2) P(S_t, K, T, r, q, \sigma) = K e^{-r(T-t)} \Phi(-d_2) - S_t e^{-q(T-t)} \Phi(-d_1) d_1 = \frac{\ln(S_t/K) + (r - q + \sigma^2/2)(T-t)}{\sigma \sqrt{T-t}} d_2 = d_1 - \sigma \sqrt{T-t}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Finite Difference Method (Crank-Nicolson)

**Equation:**

$$
\frac{\partial V}{\partial t} + (r-q)S \frac{\partial V}{\partial S} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} - rV = 0 \text{Discretization: } \frac{V^{n+1}_j - V^n_j}{\Delta t} + \theta L V^{n+1}_j + (1-\theta) L V^n_j = 0, \quad \theta = 0.5
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Unknown

**Equation:**

$$
\sigma_{ATM}^{approx} = \frac{\alpha}{F^{1-\beta}}\left[ 1 + \frac{(1-\beta)^2}{24}\left(\frac{\alpha}{F^{1-\beta}}\right)^2\frac{T_{exp}}{F^{2(1-\beta)}} + \frac{\rho\beta\nu\alpha}{4F^\beta}\frac{T_{exp}}{F^{2(1-\beta)}} + \frac{(2-3\rho^2)\nu^2}{24}T_{exp} \right]
$$

**Description:**
This is the approximate formula for at-the-money (ATM) volatility in the SABR model, which is often used for practical applications when exact solutions are not available.

*Source: eq3/iflow-model-primer/derivatives-primer.csv*

---

## Equation

**Equation:**

$$
**Variables:**
- \(T_1\): Maturity of compound option
- \(T_2\): Maturity of underlying option (\(T_2 > T_1\))
- \(K_1\): Strike of compound option
- \(K_2\): Strike of underlying option
- \(S^*\): Critical stock price at \(T_1\) such that underlying option price equals \(K_1\)
$$

*Source: eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part2.md*

---

## Equation

**Equation:**

$$
Geometric Average Process (Discrete)
\bar{G}_T = \left(\prod_{i=1}^N S_{t_i}\right)^{1/N}
where N is the number of observation points and t_i are the observation times. The discrete geometric average can be expressed in log-space as: \ln \bar{G}_T = \frac{1}{N} \sum_{i=1}^N \ln S_{t_i}.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Multivariate Ito's Lemma (Full Form)

**Equation:**

$$
df = \left[\frac{\partial f}{\partial t} + \sum_{i=1}^n \mu_i\frac{\partial f}{\partial x_i} + \frac{1}{2}\sum_{i=1}^n \sum_{j=1}^n (\sigma\sigma^T)_{ij}\frac{\partial^2 f}{\partial x_i\partial x_j}\right]dt + \sum_{i=1}^n \sigma_i\frac{\partial f}{\partial x_i} dW_t^{(i)}
$$

**Description:**
The matrix sigma sigma^T represents the instantaneous covariance matrix of the underlying processes. This multivariate form is crucial for pricing multi-asset derivatives and modeling complex financial instruments.

*Source: eq3/kimi-primer/financial-derivatives-pricing-formulas.csv*

---

## Equation

**Equation:**

$$
FFT Implementation:
The discrete approximation uses a grid v_j = η(j-1) for j=1,...,N and k_n = -b + λ(n-1) for n=1,...,N, where λ = 2π/(Nη). The FFT computes C(k_n) ≈ e^{-αk_n}/π Σ_{j=1}^N e^{-i(2π/N)(j-1)(n-1)} e^{ibv_j} ψ(v_j) η, yielding prices across strikes in O(N log N) operations.
$$

*Source: eq3/kimi-primer/financial-derivatives-pricing-primer.md*

---

## Equation

**Equation:**

$$
Where:
- S_{max}: Maximum price of the underlying asset during the option's life
- d_1 = \frac{\ln(S_{max}/K) + (r + \sigma^2/2)(T-t)}{\sigma\sqrt{T-t}}
- d_2 = d_1 - \sigma\sqrt{T-t}
- d_3 = \frac{\ln(S_{max}/S_0) + (r + \sigma^2/2)(T-t)}{\sigma\sqrt{T-t}}
- d_4 = d_3 - \sigma\sqrt{T-t}
$$

*Source: eq3/iflow-model-primer/derivatives-primer.md*

---

## Variables:

**Equation:**

$$
- \(\pi_{\text{BE}}(t,T)\): Break-even inflation rate between times \(t\) and \(T\) - \(P_{\text{nominal}}(t,T)\): Price of nominal zero-coupon bond - \(P_{\text{real}}(t,T)\): Price of real zero-coupon bond D_{\text{Mac}} = \frac{1}{P} \sum_{i=1}^n T_i \frac{CF_i}{(1+y)^{T_i}}
$$

**Description:**
Variables: ; Explanation: * The break-even inflation rate represents the market's expectation of average inflation over the period, adjusted for inflation risk premium.

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## Variables:

**Equation:**

$$
- \(V_t\): Firm asset value - \(D\): Debt face value (default barrier) - \(E_t\): Equity value - \(\sigma_V\): Asset volatility - \(\Phi(\cdot)\): Standard normal CDF PD^{\mathbb{Q}} = \Phi(-d_2) #### 2. Black-Cox First Passage Time Model \text{Default time } \tau = \inf\{ t \ge 0 : V_t \le K(t) \}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Parisian Options

**Equation:**

$$
\text{Price via PDE with cumulative time variable } A_t = \int_0^t \mathbf{1}_{\{S_u \le H\}} du \frac{\partial V}{\partial t} + (r-q)S \frac{\partial V}{\partial S} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} - rV + \mathbf{1}_{\{S \le H\}} \frac{\partial V}{\partial A} = 0
$$

**Description:**
Variables: ; Explanation: * Parisian options require the underlying to stay beyond the barrier for a consecutive period (cumulative time). Pricing involves an extra state variable for accumulated time. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Variables:

**Equation:**

$$
- \(P(t,T)\): Price at time \(t\) of a zero-coupon bond maturing at time \(T\) - \(\mathbb{E}^{\mathbb{Q}}\): Expectation under the risk-neutral measure \(\mathbb{Q}\) - \(r_s\): Instantaneous short rate at time \(s\) - \(\mathcal{F}_t\): Filtration representing information up to time \(t\)
$$

**Description:**
Variables: ; Explanation: * The fundamental pricing equation for default-free zero-coupon bonds under no-arbitrage. The bond price equals the expected discounted value of the terminal payment (1 unit) where discounting uses the stochastic short rate process. This formula is the cornerstone of modern term structure modeling.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## Exchange Options (Margrabe)

**Equation:**

$$
V(S^1_t, S^2_t, T) = S^1_t e^{-q_1(T-t)} \Phi(d_1) - S^2_t e^{-q_2(T-t)} \Phi(d_2) d_1 = \frac{\ln(S^1_t/S^2_t) + (q_2 - q_1 + \hat{\sigma}^2/2)(T-t)}{\hat{\sigma} \sqrt{T-t}}, \quad d_2 = d_1 - \hat{\sigma} \sqrt{T-t} \hat{\sigma} = \sqrt{\sigma_1^2 + \sigma_2^2 - 2\rho\sigma_1\sigma_2}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Equation

**Equation:**

$$
where \alpha = \frac{1}{2} \Delta t (r S \frac{\Delta S}{\Delta S} - \sigma^2 S^2 \frac{\Delta t}{(\Delta S)^2}), \quad \beta = 1 - \sigma^2 S^2 \frac{\Delta t}{(\Delta S)^2} - r \Delta t, \quad \gamma = -\frac{1}{2} \Delta t (r S \frac{\Delta S}{\Delta S} + \sigma^2 S^2 \frac{\Delta t}{(\Delta S)^2})
$$

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Variables:

**Equation:**

$$
- \(y\): Yield to maturity (annualized, discrete compounding) #### 3. Floating Rate Notes P(t) = \sum_{i=1}^n \mathbb{E}^{\mathbb{Q}}\left[ L(T_{i-1}, T_i) \delta_i e^{-\int_t^{T_i} r_s \, ds} \middle| \mathcal{F}_t \right] + \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^{T_n} r_s \, ds} \middle| \mathcal{F}_t \right]
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Spread Options (Kirk Approximation for Two Assets)

**Equation:**

$$
C \approx e^{-r(T-t)} \left( F_1 \Phi(d_1) - (F_2 + K) \Phi(d_2) \right) d_1 = \frac{\ln(F_1/(F_2+K)) + \tilde{\sigma}^2 T/2}{\tilde{\sigma} \sqrt{T}}, \quad d_2 = d_1 - \tilde{\sigma} \sqrt{T} \tilde{\sigma} = \sqrt{\sigma_1^2 + \left( \frac{F_2}{F_2+K} \sigma_2 \right)^2 - 2\rho \sigma_1 \sigma_2 \frac{F_2}{F_2+K}}
$$

**Description:**
Variables: ; Explanation: * Kirk's approximation transforms a spread option \((S^1_T - S^2_T - K)^+\) into an option on a ratio by adding the strike to the second asset. It works well for small strikes and moderate correlations. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Asian Options (Geometric Average, Continuous)

**Equation:**

$$
C_{\text{geom}} = e^{-r(T-t)} \left( G_t e^{\bar{\mu}(T-t)} \Phi(d_1) - K \Phi(d_2) \right) \bar{\mu} = r - q - \frac{\sigma^2}{6}, \quad \bar{\sigma} = \frac{\sigma}{\sqrt{3}} d_1 = \frac{\ln(G_t/K) + (\bar{\mu} + \bar{\sigma}^2/2)(T-t)}{\bar{\sigma} \sqrt{T-t}}, \quad d_2 = d_1 - \bar{\sigma} \sqrt{T-t}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Variables:

**Equation:**

$$
- \(\sigma_N\): Normal volatility (absolute volatility, units of currency) #### 2. American Options u = e^{\sigma \sqrt{\Delta t}}, \quad d = e^{-\sigma \sqrt{\Delta t}}, \quad p = \frac{e^{(r-q)\Delta t} - d}{u - d} V_{i,j} = \max\left( e^{-r\Delta t} (p V_{i+1,j+1} + (1-p) V_{i+1,j}), \text{exercise value} \right)
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
df = ∂f/∂t dt + Σ_{i=1}^n ∂f/∂x_i dX_t^(i) + (1/2)Σ_{i=1}^n Σ_{j=1}^n ∂²f/∂x_i∂x_j dX_t^(i)dX_t^(j)
The cross-variation terms dX_t^(i)dX_t^(j) = σ_i(t,X_t)σ_j(t,X_t)ρ_{ij}dt capture the correlation structure between different Brownian motions, where ρ_{ij} denotes the instantaneous correlation.
$$

*Source: eq3/kimi-primer/financial-derivatives-pricing-primer.md*

---

## Implied Volatility Approximation (Hagan formula)

**Equation:**

$$
\sigma_{\text{imp}}(K, F) \approx \frac{\alpha}{(FK)^{(1-\beta)/2} \left[ 1 + \frac{(1-\beta)^2}{24} \ln^2(F/K) + \frac{(1-\beta)^4}{1920} \ln^4(F/K) + \cdots \right]} \cdot \frac{z}{\chi(z)} z = \frac{\nu}{\alpha} (FK)^{(1-\beta)/2} \ln(F/K) \chi(z) = \ln \left( \frac{\sqrt{1 - 2\rho z + z^2} + z - \rho}{1 - \rho} \right)
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Theta

**Equation:**

$$
\Theta_C = -\frac{\partial C}{\partial t} = -\frac{S e^{-q(T-t)} \sigma \phi(d_1)}{2\sqrt{T-t}} + q S e^{-q(T-t)} \Phi(d_1) - r K e^{-r(T-t)} \Phi(d_2) \Theta_P = -\frac{\partial P}{\partial t} = -\frac{S e^{-q(T-t)} \sigma \phi(d_1)}{2\sqrt{T-t}} - q S e^{-q(T-t)} \Phi(-d_1) + r K e^{-r(T-t)} \Phi(-d_2)
$$

**Description:**
Variables: ; Explanation: * Theta measures time decay (negative for long options). It represents the rate of change of option value as time passes, holding all else constant. | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Variables:

**Equation:**

$$
- \(R\): Recovery rate (fraction of face value recovered upon default) - \(s\): CDS spread (premium paid per year) dn_t = (\theta_n(t) - \kappa_n n_t) dt + \sigma_n dW_t^{n,\mathbb{Q}} dr_t = (\theta_r(t) - \kappa_r r_t) dt + \sigma_r dW_t^{r,\mathbb{Q}} dI_t = \pi_t I_t dt + \sigma_I I_t dW_t^{I,\mathbb{Q}} \pi_t = n_t - r_t
$$

**Description:**
Variables: ; Explanation: * The CDS spread equates the present value of premium payments (leg) to the present value of protection payments (contingent leg). The numerator is expected discounted loss given default; denominator is expected discounted survival-weighted premium annuity.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(\rho\): Correlation between the two assets - \(\hat{\sigma}\): Volatility of the ratio \(S^1/S^2\) \text{Approximate basket as single lognormal: } B_t = \sum_{i=1}^n w_i S^i_t \mathbb{E}[B_T] = \sum w_i F_i, \quad \text{Var}(\ln B_T) \approx \frac{\sum_{i,j} w_i w_j F_i F_j \rho_{ij} \sigma_i \sigma_j T}{(\sum w_i F_i)^2}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(f(t,T)\): Instantaneous forward rate - \(\sigma(t,T)\): Volatility structure of forward rates V_T = D + E_T \text{Default occurs when } V_T < D \text{Equity as a call option: } E_t = V_t \Phi(d_1) - D e^{-r(T-t)} \Phi(d_2) d_1 = \frac{\ln(V_t/D) + (r + \sigma_V^2/2)(T-t)}{\sigma_V \sqrt{T-t}}, \quad d_2 = d_1 - \sigma_V \sqrt{T-t}
$$

**Description:**
Variables: ; Explanation: * HJM models the entire forward curve directly. The drift condition ensures no-arbitrage: the drift of forward rates is determined by the volatility structure. This is a general framework encompassing many short-rate models.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(L(T_{i-1}, T_i)\): Forward LIBOR rate for period \([T_{i-1}, T_i]\) - \(\delta_i\): Day count fraction for period \(i\) P(t) = 1 \quad \text{if } t \text{ is immediately after a reset} #### 4. Inflation-Linked Bonds P_{\text{real}}(t,T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T r_s^{\text{real}} \, ds} \middle| \mathcal{F}_t \right]
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Itô's Lemma (Multivariate)

**Equation:**

$$
df(t, \mathbf{X}_t) = \underbrace{\frac{\partial f}{\partial t}dt}_{\text{Time Decay}} + \sum_i \underbrace{\frac{\partial f}{\partial x_i} dX_i}_{\text{First Order Drift}} + \frac{1}{2} \sum_{i,j} \underbrace{\frac{\partial^2 f}{\partial x_i \partial x_j} d\langle X_i, X_j \rangle_t}_{\text{Second Order Convexity}}
$$

**Description:**
Itô's Lemma is the fundamental chain rule of stochastic calculus. Unlike ordinary calculus, the second-order terms (convexity/gamma) do not vanish because dW ~ \sqrt{dt}, so dW^2 ~ dt. This equation shows how the value of a derivative f changes with time and the underlying assets X. The term d\langle X_i, X_j \rangle_t represents the instantaneous covariance (quadratic covariation) between asset i and asset j.

*Source: eq3/jules-primer/primer.csv*

---

## Rainbow Options (Maximum of Two Assets)

**Equation:**

$$
C_{\max} = S^1_t e^{-q_1(T-t)} \Phi(d_{11}) + S^2_t e^{-q_2(T-t)} \Phi(d_{22}) - K e^{-r(T-t)} M(d_{11}-\sigma_1\sqrt{T-t}, d_{22}-\sigma_2\sqrt{T-t}; \rho) d_{11} = \frac{\ln(S^1_t/K) + (r-q_1+\sigma_1^2/2)(T-t)}{\sigma_1\sqrt{T-t}}, \quad d_{22} = \frac{\ln(S^2_t/K) + (r-q_2+\sigma_2^2/2)(T-t)}{\sigma_2\sqrt{T-t}}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Equation

**Equation:**

**Theoretical Context:**
DV01 (also called PV01, Dollar Value of 01) measures the change in bond price in currency units (dollars, euros, etc.) for a 1 basis point change in yield. It is fundamental to hedging fixed income portfolios and is used to calculate hedge ratios. A DV01 of $100 means the bond's price changes by $100 for every 1bp move in yield.

*Source: eq3/minimax-primer/comprehensive-formulas.md*

---

## Survival Probability

**Equation:**

$$
\mathbb{Q}(\tau > T) = \Phi\left( \frac{\ln(V_0/K(0)) + (\mu - \sigma^2/2)T}{\sigma\sqrt{T}} \right) - \left( \frac{K(0)}{V_0} \right)^{2\mu/\sigma^2 - 1} \Phi\left( \frac{\ln(K(0)/V_0) + (\mu - \sigma^2/2)T}{\sigma\sqrt{T}} \right) \text{Defaultable bond price: } \tilde{P}(t,T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T (r_s + \lambda_s) ds} \middle| \mathcal{F}_t \right]
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Option on a Call (Geske Formula)

**Equation:**

$$
C_{\text{compound}} = S_t e^{-qT_2} M\left( a_1, b_1; \sqrt{T_1/T_2} \right) - K_2 e^{-r T_2} M\left( a_2, b_2; \sqrt{T_1/T_2} \right) - e^{-r T_1} K_1 \Phi(a_2) a_1 = \frac{\ln(S_t/S^*) + (r-q+\sigma^2/2)T_1}{\sigma\sqrt{T_1}}, \quad a_2 = a_1 - \sigma\sqrt{T_1} b_1 = \frac{\ln(S_t/K_2) + (r-q+\sigma^2/2)T_2}{\sigma\sqrt{T_2}}, \quad b_2 = b_1 - \sigma\sqrt{T_2}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Variables:

**Equation:**

$$
- \(\psi_k(S)\): Basis functions (e.g., polynomials, Laguerre) - \(\beta_k\): Regression coefficients estimated via cross-sectional least squares #### 3. Forward Start Options C = S_t e^{-q(T-t)} \left( e^{-q\tau} \Phi(d_1) - e^{-r\tau} \alpha \Phi(d_2) \right) d_1 = \frac{(r-q+\sigma^2/2)\tau}{\sigma\sqrt{\tau}}, \quad d_2 = d_1 - \sigma\sqrt{\tau}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(N\): Notional (variance notional) - \(n\): Number of sampling points \text{Fair Volatility Strike } K_{\text{vol}} \approx \sqrt{K_{\text{var}}} - \frac{\text{Var}(\sqrt{\text{Realized Variance}})}{2 K_{\text{vol}}^{3/2}} \text{VIX}^2 = \frac{2}{T} \sum_i \frac{\Delta K_i}{K_i^2} e^{rT} Q(K_i) - \frac{1}{T} \left( \frac{F}{K_0} - 1 \right)^2
$$

**Description:**
Variables: ; Explanation: * Volatility swaps pay realized volatility minus strike. Due to convexity (Jensen's inequality), the fair volatility strike is less than the square root of the variance strike. The convexity adjustment depends on the volatility of volatility.

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## Equation

**Equation:**

$$
Quadratic covariation:
[X,Y]_t = plim_{|Π|→0} Σ_{i=0}^{n-1} (X_{t_{i+1}} - X_{t_i})(Y_{t_{i+1}} - Y_{t_i})
For continuous semimartingales, [X,Y]_t captures the instantaneous correlation between processes. For Brownian motions, [W^i,W^j]_t = δ_{ij}t where δ_{ij} is the Kronecker delta. For Ito processes, [X,Y]_t = ∫_0^t σ_s^X σ_s^Y ρ_s^{XY} ds.
$$

*Source: eq3/kimi-primer/financial-derivatives-pricing-primer.md*

---

## Variables:

**Equation:**

$$
- \(\pi_{\text{BE}}(t,T)\): Break-even inflation rate between times \(t\) and \(T\) - \(P_{\text{nominal}}(t,T)\): Price of nominal zero-coupon bond - \(P_{\text{real}}(t,T)\): Price of real zero-coupon bond ### B. Duration and Convexity Measures #### 1. Macaulay Duration D_{\text{Mac}} = \frac{1}{P} \sum_{i=1}^n T_i \frac{CF_i}{(1+y)^{T_i}}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Tree Methods

**Equation:**

$$
Binomial Tree:
u_i^n = e^{-rΔt}[p u_{i+1}^{n+1} + (1-p) u_i^{n+1}]
where p = (e^{rΔt} - d)/(u - d) is the risk-neutral probability, u = e^{σ√Δt}, d = e^{-σ√Δt}. This backward induction prices options by working from expiry to present. For American options, we apply the early exercise condition: u_i^n = max(h_i^n, e^{-rΔt}[p u_{i+1}^{n+1} + (1-p) u_i^{n+1}]).
$$

**Description:**
Trinomial Tree: The trinomial method uses three possible moves (up, middle, down) with probabilities p_u, p_m, p_d that match the first two moments of the underlying process. It offers better stability than binomial trees and can handle more complex processes like mean-reversion. The transition probabilities are chosen to ensure risk-neutral pricing while maintaining non-negative probabilities.

*Source: eq3/kimi-primer/financial-derivatives-pricing-primer.md*

---

## CIR Bond Price

**Equation:**

$$
P(t,T) = A(t,T) e^{-B(t,T) r_t} B(t,T) = \frac{2(e^{\gamma(T-t)} - 1)}{(\gamma + \kappa)(e^{\gamma(T-t)} - 1) + 2\gamma} A(t,T) = \left( \frac{2\gamma e^{(\kappa+\gamma)(T-t)/2}}{(\gamma + \kappa)(e^{\gamma(T-t)} - 1) + 2\gamma} \right)^{2\kappa\theta/\sigma^2} \gamma = \sqrt{\kappa^2 + 2\sigma^2} dr_t = (\theta(t) - \kappa r_t) dt + \sigma dW_t^{\mathbb{Q}}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Hull-White Bond Price

**Equation:**

$$
P(t,T) = \frac{P(0,T)}{P(0,t)} \exp\left( B(t,T) f(0,t) - \frac{\sigma^2}{4\kappa} B(t,T)^2 (1 - e^{-2\kappa t}) - B(t,T) r_t \right) B(t,T) = \frac{1 - e^{-\kappa(T-t)}}{\kappa} r_t = x_t + y_t + \varphi(t) dx_t = -\kappa_1 x_t dt + \sigma_1 dW_t^{1,\mathbb{Q}} dy_t = -\kappa_2 y_t dt + \sigma_2 dW_t^{2,\mathbb{Q}} dW_t^{1,\mathbb{Q}} dW_t^{2,\mathbb{Q}} = \rho dt
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Equation: V(t,T)

**Equation:**

$$
V(t,T) = \frac{\sigma_1^2}{\kappa_1^2} \left( (T-t) - 2M_x(t,T) + \frac{1 - e^{-2\kappa_1(T-t)}}{2\kappa_1} \right) + \frac{\sigma_2^2}{\kappa_2^2} \left( (T-t) - 2M_y(t,T) + \frac{1 - e^{-2\kappa_2(T-t)}}{2\kappa_2} \right) + 2\rho \frac{\sigma_1 \sigma_2}{\kappa_1 \kappa_2} \left( (T-t) - M_x(t,T) - M_y(t,T) + \frac{1 - e^{-(\kappa_1+\kappa_2)(T-t)}}{\kappa_1+\kappa_2} \right)
$$

**Description:**
Automatically extracted equation

*Source: eq3/minimax-primer/comprehensive-formulas.md; eq3/iflow-primer/financial-derivatives-primer.md; eq3/iflow-primer/formulas_part.md; eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(L\): Spatial differential operator - \(\theta\): Weighting parameter (0=explicit, 1=implicit, 0.5=Crank-Nicolson) V(t_i, S_{t_i}) = \max\left( \text{exercise value}, \mathbb{E}^{\mathbb{Q}}[ e^{-r(t_{i+1}-t_i)} V(t_{i+1}, S_{t_{i+1}}) | S_{t_i} ] \right) \text{Continuation value approximated by regression: } \hat{C}(t_i, S) = \sum_{k=0}^K \beta_k \psi_k(S)
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Crank-Nicolson Implicit Scheme:
-λ/2 u_{i+1}^{n+1} + (1+λ)u_i^{n+1} - λ/2 u_{i-1}^{n+1} = λ/2 u_{i+1}^n + (1-λ)u_i^n + λ/2 u_{i-1}^n
This method is unconditionally stable and second-order accurate in both time and space. It requires solving a tridiagonal linear system at each time step. While stable, it can produce oscillations for non-smooth payoffs if λ is too large.
$$

*Source: eq3/kimi-primer/financial-derivatives-pricing-primer.md*

---

## Variables:

**Equation:**

$$
- \(F_t\): Forward price - \(\alpha_t\): Stochastic volatility - \(\beta\): Elasticity parameter (\(0 \le \beta \le 1\)) - \(\nu\): Volatility of volatility - \(\rho\): Correlation between forward and volatility \frac{dS_t}{S_t} = (r-q-\lambda \bar{\mu}) dt + \sigma dW_t + (J_t - 1) dN_t \ln J_t \sim N(\mu_J, \sigma_J^2), \quad \bar{\mu} = e^{\mu_J + \sigma_J^2/2} - 1
$$

**Description:**
Variables: ; Explanation: * SABR is a stochastic volatility model popular for interest rate markets. The Hagan approximation provides an analytical implied volatility smile that fits market data well.

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## Characteristic Function

**Equation:**

$$
\phi(u) = \exp\left( iu \ln S_t + C(u,\tau) + D(u,\tau) v_t \right) C(u,\tau) = (r-q) i u \tau + \frac{\kappa \theta}{\xi^2} \left( (\kappa - \rho \xi i u - d) \tau - 2 \ln \frac{1 - g e^{-d\tau}}{1 - g} \right) D(u,\tau) = \frac{\kappa - \rho \xi i u - d}{\xi^2} \frac{1 - e^{-d\tau}}{1 - g e^{-d\tau}} d = \sqrt{(\rho \xi i u - \kappa)^2 + \xi^2 (i u + u^2)}, \quad g = \frac{\kappa - \rho \xi i u - d}{\kappa - \rho \xi i u + d}
$$

**Description:**
See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_clean.csv*

---

## Equation

**Equation:**

$$
This is the celebrated SABR implied volatility formula, where F_{mid} = \sqrt{F_0 K} represents the geometric mean of current forward and strike. The function x(z) = \ln\left(\frac{\sqrt{1-2\rho z+z^2}+z-\rho}{1-\rho}\right) captures the correlation effects, while z = \frac{\nu}{\alpha}F_{mid}^{1-\beta}\ln(F_0/K) represents the log-moneyness scaled by volatility parameters.
$$

*Source: eq3/equity-derivatives-stochastic-volatility-primer.txt; eq3/sabr-model.txt*

---

## Under Cox Process (doubly stochastic)

**Equation:**

$$
\lambda_t = \lambda(t, X_t) \text{ where } X_t \text{ is a state vector} \mathbb{Q}(\tau > T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_0^T \lambda_s ds} \right] \text{CDS Spread } s = \frac{(1-R) \int_0^T \mathbb{E}^{\mathbb{Q}}[ e^{-\int_0^t r_s ds} \lambda_t e^{-\int_0^t \lambda_s ds} ] dt}{\int_0^T \mathbb{E}^{\mathbb{Q}}[ e^{-\int_0^t r_s ds} e^{-\int_0^t \lambda_s ds} ] dt}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Equation

**Equation:**

$$
The cross-currency funding basis adjustment:
FVA_{CCY} = \sum_i (r_{USD}^{F,i} - r_{USD}^{OIS,i} - \text{basis}_i) \times \text{exposure}_i \times \text{discount factor}_i
This quantifies the additional funding cost arising from currency mismatches between trade denomination and actual funding sources, where basis_i represents the cross-currency basis swap spread.
$$

*Source: eq3/fixed_income_repo_funding.md*

---

## Lookback Options (Floating Strike)

**Equation:**

$$
C_{\text{floating}} = S_t e^{-q(T-t)} \Phi(a_1) - m_t e^{-r(T-t)} \Phi(a_2) + \frac{S_t e^{-r(T-t)} \sigma^2}{2(r-q)} \left( \left( \frac{S_t}{m_t} \right)^{-\frac{2(r-q)}{\sigma^2}} \Phi(-a_3) - e^{(r-q)(T-t)} \Phi(-a_1) \right) a_1 = \frac{\ln(S_t/m_t) + (r-q+\sigma^2/2)(T-t)}{\sigma \sqrt{T-t}}, \quad a_2 = a_1 - \sigma \sqrt{T-t}, \quad a_3 = a_1 - \frac{2(r-q)\sqrt{T-t}}{\sigma}
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv; eq3/iflow-primer/formulas.csv*

---

## For typical path-dependent derivatives, d_T(ε) ≪ d even when the nominal dimension d is large, explaining QMC's empirical success.

**Equation:**

$$
Brownian bridge construction exploits this structure by generating Brownian motion paths with optimal coordinate ordering. Given time points 0 = t_0 < t_1 < ... < t_d = T, the Brownian bridge algorithm generates W_{t_k} conditional on surrounding values:
W_{t_k} | W_{t_i}, W_{t_j} ~ N((t_j-t_k)W_{t_i}/(t_j-t_i) + (t_k-t_i)W_{t_j}/(t_j-t_i), (t_j-t_k)(t_k-t_i)/(t_j-t_i))
$$

**Description:**
The optimal ordering generates the midpoint first, then recursively fills in intermediate values, ensuring that the most important coordinates (capturing most variance) correspond to the first few QMC dimensions with lowest discrepancy.

*Source: eq3/qmc-primer.txt*

---

## Advanced Stochastic Integration

**Equation:**

$$
The Ito integral for simple processes:
I_t = ∫_0^t H_s dW_s = Σ_{i=0}^{n-1} H_{t_i}(W_{t_{i+1}} - W_{t_i})
For simple predictable processes H_s that are constant on intervals [t_i, t_{i+1}), the Ito integral is defined as a sum of discrete increments weighted by the process values. The non-anticipating property ensures H_{t_i} is known before the increment W_{t_{i+1}} - W_{t_i} occurs.
$$

**Description:**
Ito isometry: E[(∫_0^t H_s dW_s)²] = E[∫_0^t H_s² ds] This fundamental identity ensures that the Ito integral is well-defined for processes H in L² space. The isometry extends to: E[∫_0^t H_s dW_s ∫_0^t K_s dW_s] = E[∫_0^t H_s K_s ds], enabling the definition of stochastic integration as an isometry between L² spaces.

*Source: eq3/kimi-primer/financial-derivatives-pricing-primer.md*

---

## Equation

**Equation:**

$$
Sobol sequence generation employs a more sophisticated approach using primitive polynomials over F_2. For dimension j, select a primitive polynomial P_j(x) = x^d + a_1 x^{d-1} + ... + a_{d-1} x + 1 of degree d_j in F_2[x]. The direction numbers v_{j,k} are generated via the recurrence:
v_{j,k} = a_1 v_{j,k-1} ⊕ a_2 v_{j,k-2} ⊕ ... ⊕ a_{d_j-1} v_{j,k-d_j+1} ⊕ v_{j,k-d_j} ⊕ (v_{j,k-d_j}/2^{d_j})
$$

*Source: eq3/qmc-primer.txt*

---

## Variables:

**Equation:**

$$
- \(T_1\): Maturity of compound option - \(T_2\): Maturity of underlying option (\(T_2 > T_1\)) - \(K_1\): Strike of compound option - \(K_2\): Strike of underlying option - \(S^*\): Critical stock price at \(T_1\) such that underlying option price equals \(K_1\) \text{Fair Variance Strike } K_{\text{var}} = \frac{2}{T} \left( \int_0^F \frac{P(K)}{K^2} dK + \int_F^\infty \frac{C(K)}{K^2} dK \right)
$$

**Description:**
Variables: ; Explanation: * Compound options are options on options. The Geske formula uses the bivariate normal distribution to account for the correlation between the stock price at the two dates.

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Dupire's PDE for Call Prices
\frac{\partial C}{\partial T} = \frac{1}{2}\sigma_{loc}^2(S,T) S^2 \frac{\partial^2 C}{\partial S^2} - rS \frac{\partial C}{\partial S} + rC
This forward PDE must be satisfied by the call price surface C(S,T). Given market-observed prices, Dupire's local volatility formula can be used to compute \sigma_{loc}(S,T), which then satisfies this PDE by construction.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Variables:

**Equation:**

$$
- \(M(a,b;\rho)\): Bivariate normal cumulative distribution function with correlation \(\rho\) #### 3. Digital and Binary Options C_{\text{CN}} = e^{-r(T-t)} \Phi(d_2) C_{\text{AN}} = S_t e^{-q(T-t)} \Phi(d_1) C_{\text{gap}} = S_t e^{-q(T-t)} \Phi(d_1) - K_2 e^{-r(T-t)} \Phi(d_2) d_1 = \frac{\ln(S_t/K_1) + (r-q+\sigma^2/2)(T-t)}{\sigma\sqrt{T-t}}, \quad d_2 = d_1 - \sigma\sqrt{T-t}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(N\): Notional (variance notional) - \(n\): Number of sampling points #### 2. Volatility Swaps \text{Fair Volatility Strike } K_{\text{vol}} \approx \sqrt{K_{\text{var}}} - \frac{\text{Var}(\sqrt{\text{Realized Variance}})}{2 K_{\text{vol}}^{3/2}} #### 3. VIX Calculation \text{VIX}^2 = \frac{2}{T} \sum_i \frac{\Delta K_i}{K_i^2} e^{rT} Q(K_i) - \frac{1}{T} \left( \frac{F}{K_0} - 1 \right)^2
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Asian Option Forward Start
\bar{A}_{T_2}^{FS} = \frac{1}{T_2 - T_1} \int_{T_1}^{T_2} S_t dt
where T_1 is the start date and T_2 is the maturity. Forward-start Asian options have averaging that begins at a future date rather than inception. The pricing formula incorporates the forward price starting at T_1: \mathbb{E}[\bar{A}_{T_2}^{FS}] = \frac{F(T_1, T_2)}{T_2 - T_1} where F is the forward price.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Lookback Options

**Equation:**

$$
Floating Strike Lookback Call Payoff:
S_T - min_{0≤t≤T} S_t
The payoff is the difference between the terminal price and the minimum price achieved during the option's life. This option guarantees buying at the lowest price. Under Black-Scholes, the price is:
C_{float} = S_0 e^{-qT}N(a₁) - S_0 e^{-qT}(σ²/(2(r-q)))N(-a₁) - S_0 e^{-qT}(1 - σ²/(2(r-q)))e^{(r-q)T}N(-a₂)
where a₁ = (r-q+σ²/2)√T/σ and a₂ = (r-q-σ²/2)√T/σ.
$$

**Description:**
Fixed Strike Lookback Call Payoff: max(max_{0≤t≤T} S_t - K, 0) The payoff is the maximum price appreciation above the fixed strike K. The pricing formula involves the distribution of the running maximum and reflection principle. The value is: C_{fixed} = S_0 e^{-qT}N(b₁) - Ke^{-rT}N(b₂) + S_0 e^{-rT}(σ²/(2(r-q)))[e^{(r-q)T}N(b₃) - N(b₄)] with appropriate definitions of b₁ through b₄ incorporating the maximum distribution.

*Source: eq3/kimi-primer/financial-derivatives-pricing-primer.md*

---

## Equation

**Equation:**

$$
Variance of Geometric Average (Discrete Sampling)
\text{Var}(\ln \bar{G}_T) = \frac{\sigma^2}{N^2} \sum_{i,j=1}^N \min(t_i, t_j)
where N is the number of observation points. For equally spaced observations t_i = iT/N, this simplifies to: \text{Var}(\ln \bar{G}_T) = \frac{\sigma^2 T}{N^2} \sum_{i=1}^N (2i-1) = \frac{\sigma^2 T (2N+1)(N-1)}{6N^2}. The discrete variance converges to \sigma^2 T/3 as N \to \infty.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Monte Carlo Path Generation for Asian Options
S_{t_{i+1}} = S_{t_i} \exp\left[\left(r - \frac{\sigma^2}{2}\right)\Delta t_i + \sigma \sqrt{\Delta t_i} Z_i\right]
where \Delta t_i = t_{i+1} - t_i and Z_i \sim N(0,1) are independent normal draws. For Asian option pricing, the running average \bar{A}_n = \frac{1}{n} \sum_{i=1}^n S_{t_i} is computed and updated at each observation point. The final payoff is evaluated using the complete average.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Cointegrating Vector
\beta = -\frac{\text{Cov}(\sum_{t=1}^T y_{1t}, \sum_{t=1}^T y_{2t})}{\text{Var}(\sum_{t=1}^T y_{2t})}
where y_{1t} and y_{2t} are log price series of two assets. The cointegrating vector \beta defines the hedge ratio for a stationary spread: z_t = y_{1t} - \beta y_{2t}. This spread is stationary even though individual prices are non-stationary random walks, enabling mean-reversion trading.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Moment Matching Approximation:
E[A] = S_0 (1/n) Σ_{i=1}^n e^{rt_i}
Var(A) = (1/n²)[Σ Var(S_i) + 2 Σ_{i<j} Cov(S_i,S_j)]
The moment matching approach approximates the arithmetic average distribution as lognormal by matching the first two moments. Under geometric Brownian motion, E[S(t_i)] = S_0 e^{rt_i} and Cov(S_i,S_j) = S_0² e^{r(t_i+t_j)}[e^{σ²min(t_i,t_j)} - 1]. This enables closed-form approximation pricing.
$$

*Source: eq3/kimi-primer/financial-derivatives-pricing-primer.md*

---

## Variables:

**Equation:**

$$
- \(y_{t_i}\): Yield at key maturity \(t_i\) C = \frac{1}{P} \frac{\partial^2 P}{\partial y^2} = \frac{1}{P} \sum_{i=1}^n \frac{T_i(T_i+1) CF_i}{(1+y)^{T_i+2}} \text{DV01} = -\frac{\partial P}{\partial y} \times 0.0001 \approx D_{\text{Mod}} \times P \times 0.0001 y(\tau) = \beta_0 + \beta_1 \left( \frac{1 - e^{-\lambda \tau}}{\lambda \tau} \right) + \beta_2 \left( \frac{1 - e^{-\lambda \tau}}{\lambda \tau} - e^{-\lambda \tau} \right)
$$

**Description:**
Variables: ; Explanation: * DV01 measures the change in bond price (in currency units) for a 1 basis point (0.01%) change in yield. Used for hedging and risk management.

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## Variables:

**Equation:**

$$
- \(Q(K_i)\): Midpoint of bid-ask spread for out-of-the-money option with strike \(K_i\) - \(K_0\): First strike below forward price \(F\) \sigma_{\text{loc}}(K, T)^2 = \frac{\frac{\partial C}{\partial T} + (r-q)K \frac{\partial C}{\partial K} + qC}{\frac{1}{2} K^2 \frac{\partial^2 C}{\partial K^2}} dS_t = (r-q) S_t dt + \sqrt{v_t} S_t dW_t^S dv_t = \kappa (\theta - v_t) dt + \xi \sqrt{v_t} dW_t^v dW_t^S dW_t^v = \rho dt
$$

**Description:**
Variables: ; Explanation: * Dupire's formula extracts the unique deterministic volatility surface \(\sigma(S,t)\) that matches all observed vanilla option prices. It is derived from the forward PDE for call prices.

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## Equation

**Equation:**

$$
Kalman Filter State Update for Cointegration
\beta_{t|t} = \beta_{t|t-1} + K_t (y_{2t} - \beta_{t|t-1} y_{1t})
where K_t = P_{t|t-1} y_{1t} (y_{1t}^T P_{t|t-1} y_{1t} + R)^{-1} is Kalman gain, P_{t|t-1} is prior covariance matrix, and R is observation noise variance. The Kalman gain optimally balances between prior hedge ratio estimate and new price information, giving more weight to observations when uncertainty is high.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Moment Matching for Floating Strike Asian Options
C_{float} \approx e^{-rT} \mathbb{E}[\max(S_T - \bar{A}_T, 0)] = e^{-rT} \left[\mathbb{E}[S_T] N(d_1') - \mathbb{E}[\bar{A}_T] N(d_2')\right]
where d_1' and d_2' are adjusted to account for the correlation between S_T and \bar{A}_T. The correlation \rho = \text{Corr}(S_T, \bar{A}_T) = \sqrt{\frac{3}{4 + (r/\sigma^2)(1 - e^{-2rT})}} plays a crucial role in floating strike pricing.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Cross-currency basis:

**Equation:**

$$
The no-arbitrage condition for cross-currency basis swaps:
(1 + r_{USD}^{OIS})^T = (1 + r_{EUR}^{OIS})^T \times \frac{FX_{spot}}{FX_{forward}} \times (1 + \text{basis}_{EUR/USD})^T
This equation demonstrates how deviations from covered interest rate parity create persistent cross-currency basis, where the basis term represents the market-clearing price for exchanging EUR versus USD funding across different tenors.
$$

**Description:**
The dynamic evolution of cross-currency basis under funding constraints: d\text{basis}_{i/j} = \kappa (\text{basis}_{i/j}^{long-run} - \text{basis}_{i/j}) dt + \sigma dW_t + \text{jump terms} This mean-reverting process captures both the temporary nature of funding dislocations and the structural components driving persistent basis levels, where jump terms represent funding market stress events.

*Source: eq3/fixed_income_repo_funding.md*

---

## Equation

**Equation:**

$$
Vanna and Volga in Black-Scholes
\text{Vanna}_{BS} = -e^{-rT} N'(d_1) \sqrt{T} \left(1 - \frac{d_1}{\sigma\sqrt{T}}\right)
\text{Volga}_{BS} = \text{Vega}_{BS} \cdot \frac{d_1 d_2}{\sigma}
where N'(\cdot) is the standard normal PDF. These expressions show that Vanna and Volga both decay to zero as T \to 0 (very short maturities), which is why the Vanna-Volga method works best for liquid tenors where these sensitivities are meaningful.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Black-Scholes Implied Volatility Equation
C_{BS}(S_0, K, T, r, \sigma) = S_0 N(d_1) - Ke^{-rT} N(d_2)
with d_1 = \frac{\ln(S_0/K) + (r + \sigma^2/2)T}{\sigma\sqrt{T}}, d_2 = d_1 - \sigma\sqrt{T}
This is the fundamental equation that defines implied volatility. For a given market price C^{mkt}(K, T), we numerically invert this equation to find \sigma_{imp}(K, T). The smile emerges when \sigma_{impl} varies systematically with K and T.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Asian Option Theta (Geometric)
\Theta_{geo} = -\frac{e^{(r - \frac{\sigma^2}{2})\frac{T}{2} + \frac{v^2}{2}} N(d_1) S_0 \left(r - \frac{\sigma^2}{2} + \frac{v^2}{T}\right) + rKe^{-rT} N(d_2)
where the time decay incorporates both standard option theta effects and the reduction in averaging period as T approaches. Asian options typically have smaller theta in magnitude than vanilla options because the average already incorporates price history.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Variables:

**Equation:**

$$
- \(u, d\): Up and down factors - \(p\): Risk-neutral probability of up move - \(\Delta t\): Time step length - \(V_{i,j}\): Option value at node \(i\) (time step) and \(j\) (price level) \frac{\partial V}{\partial t} + (r-q)S \frac{\partial V}{\partial S} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} - rV = 0 \text{Discretization: } \frac{V^{n+1}_j - V^n_j}{\Delta t} + \theta L V^{n+1}_j + (1-\theta) L V^n_j = 0, \quad \theta = 0.5
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Optimal Execution with CVaR Constraints
\min_{x} \mathbb{E}\left[\sum_{t=1}^T p_t x_t\right] \quad \text{s.t.} \quad \text{CVaR}_\alpha\left(\sum_{t=1}^T p_t x_t - \mathbb{E}[\sum_{t=1}^T p_t x_t]\right) \leq C
where p_t is random execution price, x_t is trade schedule, and C is maximum allowed tail risk. This formulation trades off expected execution cost against extreme tail risk, which is crucial for large orders where market impact can be highly uncertain.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Variables:

**Equation:**

$$
- \(K(t)\): Time-dependent default barrier (often exponential) \mathbb{Q}(\tau > T) = \Phi\left( \frac{\ln(V_0/K(0)) + (\mu - \sigma^2/2)T}{\sigma\sqrt{T}} \right) - \left( \frac{K(0)}{V_0} \right)^{2\mu/\sigma^2 - 1} \Phi\left( \frac{\ln(K(0)/V_0) + (\mu - \sigma^2/2)T}{\sigma\sqrt{T}} \right) #### 3. Duffie-Singleton Reduced-Form Model \text{Defaultable bond price: } \tilde{P}(t,T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T (r_s + \lambda_s) ds} \middle| \mathcal{F}_t \right]
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(S_t\): Underlying asset price at time \(t\) - \(K\): Strike price - \(T\): Maturity time - \(r\): Risk-free interest rate (constant) - \(q\): Continuous dividend yield - \(\sigma\): Volatility of underlying returns - \(\Phi(\cdot)\): Cumulative distribution function of standard normal C(F_t, K, T, r, \sigma) = e^{-r(T-t)} [F_t \Phi(d_1) - K \Phi(d_2)] d_1 = \frac{\ln(F_t/K) + (\sigma^2/2)(T-t)}{\sigma \sqrt{T-t}}, \quad d_2 = d_1 - \sigma \sqrt{T-t}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Delta of Geometric Asian Option
\Delta_{geo} = e^{(r - \frac{\sigma^2}{2})\frac{T}{2} + \frac{v^2}{2}} N(d_1)
where v^2 = \frac{\sigma^2 T}{3} and d_1 = \frac{\ln S_0 + (r - \frac{\sigma^2}{2})\frac{T}{2} + v^2 - \ln K}{v}. The delta of a geometric Asian option measures sensitivity to the current spot price. Unlike vanilla options, this delta incorporates the averaging horizon and reduces in magnitude compared to vanilla options due to the averaging effect.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Variables:

**Equation:**

$$
- \(\tau\): Time to maturity - \(\beta_0\): Level factor (long-term yield) - \(\beta_1\): Slope factor (short-term component) - \(\beta_2\): Curvature factor - \(\lambda\): Decay parameter (controls hump location) y(\tau) = \beta_0 + \beta_1 \left( \frac{1 - e^{-\lambda_1 \tau}}{\lambda_1 \tau} \right) + \beta_2 \left( \frac{1 - e^{-\lambda_1 \tau}}{\lambda_1 \tau} - e^{-\lambda_1 \tau} \right) + \beta_3 \left( \frac{1 - e^{-\lambda_2 \tau}}{\lambda_2 \tau} - e^{-\lambda_2 \tau} \right)
$$

**Description:**
Variables: ; Explanation: * Nelson-Siegel provides a parsimonious parametric form for the yield curve with interpretable factors. It ensures smoothness and can capture various curve shapes (normal, inverted, humped).

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas.csv*

---

## Characteristic Function

**Equation:**

$$
\phi(u) = \exp\left( iu \ln S_t + C(u,\tau) + D(u,\tau) v_t \right) C(u,\tau) = (r-q) i u \tau + \frac{\kappa \theta}{\xi^2} \left( (\kappa - \rho \xi i u - d) \tau - 2 \ln \frac{1 - g e^{-d\tau}}{1 - g} \right) D(u,\tau) = \frac{\kappa - \rho \xi i u - d}{\xi^2} \frac{1 - e^{-d\tau}}{1 - g e^{-d\tau}} d = \sqrt{(\rho \xi i u - \kappa)^2 + \xi^2 (i u + u^2)}, \quad g = \frac{\kappa - \rho \xi i u - d}{\kappa - \rho \xi i u + d} dF_t = \alpha_t F_t^\beta dW_t^F d\alpha_t = \nu \alpha_t dW_t^\alpha dW_t^F dW_t^\alpha = \rho dt
$$

**Description:**
Variables: ; Explanation: * Heston model assumes volatility follows a square-root process (CIR). The characteristic function is known in closed form, allowing pricing via Fourier inversion (e.g., FFT). It generates volatility smiles and term structures.

*Source: eq3/iflow-primer/formulas_v2.csv*

---

## Variables:

**Equation:**

$$
- \(\lambda_t\): Hazard rate (default intensity) process \lambda_t = \lambda(t, X_t) \text{ where } X_t \text{ is a state vector} \mathbb{Q}(\tau > T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_0^T \lambda_s ds} \right] #### 4. Credit Default Swap (CDS) Pricing \text{CDS Spread } s = \frac{(1-R) \int_0^T \mathbb{E}^{\mathbb{Q}}[ e^{-\int_0^t r_s ds} \lambda_t e^{-\int_0^t \lambda_s ds} ] dt}{\int_0^T \mathbb{E}^{\mathbb{Q}}[ e^{-\int_0^t r_s ds} e^{-\int_0^t \lambda_s ds} ] dt}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(\theta(t)\): Time-dependent function calibrated to fit initial yield curve P(t,T) = \frac{P(0,T)}{P(0,t)} \exp\left( B(t,T) f(0,t) - \frac{\sigma^2}{4\kappa} B(t,T)^2 (1 - e^{-2\kappa t}) - B(t,T) r_t \right) B(t,T) = \frac{1 - e^{-\kappa(T-t)}}{\kappa} #### 4. Two-Factor Gaussian Model (G2++) r_t = x_t + y_t + \varphi(t) dx_t = -\kappa_1 x_t dt + \sigma_1 dW_t^{1,\mathbb{Q}} dy_t = -\kappa_2 y_t dt + \sigma_2 dW_t^{2,\mathbb{Q}} dW_t^{1,\mathbb{Q}} dW_t^{2,\mathbb{Q}} = \rho dt
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Moment Matching Approximation (Levy)
\bar{A}_T \approx e^{\mu_M + \sigma_M Z}
where Z \sim N(0,1), \mu_M = \frac{1}{T} \mathbb{E}[\int_0^T \ln S_t dt] = \ln S_0 + (r - \frac{\sigma^2}{2})\frac{T}{2}, and \sigma_M^2 = \text{Var}(\frac{1}{T}\int_0^T \ln S_t dt) = \frac{\sigma^2 T}{3}. The Levy (1992) method approximates the arithmetic average by a lognormal distribution with matching first two moments. This approximation is accurate when the coefficient of variation is small.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Variables:

**Equation:**

$$
- \(K_1\): Trigger strike (determines if option pays off) - \(K_2\): Payment strike (amount paid if triggered) #### 4. Compound Options C_{\text{compound}} = S_t e^{-qT_2} M\left( a_1, b_1; \sqrt{T_1/T_2} \right) - K_2 e^{-r T_2} M\left( a_2, b_2; \sqrt{T_1/T_2} \right) - e^{-r T_1} K_1 \Phi(a_2) a_1 = \frac{\ln(S_t/S^*) + (r-q+\sigma^2/2)T_1}{\sigma\sqrt{T_1}}, \quad a_2 = a_1 - \sigma\sqrt{T_1} b_1 = \frac{\ln(S_t/K_2) + (r-q+\sigma^2/2)T_2}{\sigma\sqrt{T_2}}, \quad b_2 = b_1 - \sigma\sqrt{T_2}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Asian Option Pricing via Moment Generating Function
M_{\bar{G}_T}(\theta) = \mathbb{E}[e^{\theta \ln \bar{G}_T}] = \exp\left(\theta \ln S_0 + \frac{\theta^2 \sigma^2 T}{6}\right)
where \bar{G}_T is the geometric average. The moment generating function characterizes all moments of the log-geometric average. Since \ln \bar{G}_T is normally distributed, its MGF has the characteristic form \exp(\mu \theta + \frac{1}{2}\sigma^2 \theta^2) with \mu = \ln S_0 and variance \frac{\sigma^2 T}{3}.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Carr-Madan FFT Pricing
C(k, T) = \frac{e^{-\alpha k}}{\pi} \int_0^{\infty} e^{-i v k} \psi(v) dv
where k = \ln K, \alpha > 0 is a damping factor, and \psi(v) = \frac{e^{-rT} \phi_T(v - (\alpha + 1)i)}{\alpha^2 + \alpha - v^2 + i(2\alpha + 1)v}
This fast Fourier transform method enables efficient computation of option prices for a range of strikes simultaneously. It is particularly valuable for calibration and risk management applications where many option prices need to be computed quickly.
$$

*Source: eq3/jump-diffusion-primer.txt*

---

## Equation

**Equation:**

$$
Asian Option Vega (Geometric)
\mathcal{V}_{geo} = e^{-rT} S_0 N(d_1) \frac{\partial d_1}{\partial \sigma} - e^{-rT} K N(d_2) \frac{\partial d_2}{\partial \sigma}
where \frac{\partial d_1}{\partial \sigma} = \frac{3}{T} \left[\frac{T}{2} + \frac{\sigma T}{3}\right] - \frac{d_1}{\sigma} and similarly for d_2. Vega for Asian options captures sensitivity to volatility, but the averaging reduces vega relative to vanilla options because the average has lower effective volatility than the underlying.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Moment Matching Variance (Continuously Sampled Arithmetic Average)
\text{Var}(\bar{A}_T) = \frac{2S_0^2 e^{2rT}\sigma^2}{T^2} \left[\frac{e^{(2r+\sigma^2)T} - 1}{2(r+\sigma^2)} - \frac{e^{rT} - 1}{r}\right] - \left[\mathbb{E}(\bar{A}_T) - \frac{S_0(e^{rT} - 1)}{rT}\right]^2
The exact variance of the continuously sampled arithmetic average under geometric Brownian motion, which is used in moment matching methods. This expression captures the complex time-integral structure of the arithmetic average.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Curran's Conditional Expectation Method
C_{arithmetic} = e^{-rT} \mathbb{E}\left[\max(\bar{G}_T + \mathbb{E}[\bar{A}_T - \bar{G}_T | \bar{G}_T] - K, 0)\right]
where the conditional expectation of the difference between arithmetic and geometric averages given the geometric average is computed analytically. Curran (1994) exploits the fact that \bar{A}_T and \bar{G}_T are correlated, and the conditional distribution of \bar{A}_T given \bar{G}_T can be approximated, yielding an efficient analytical approximation.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Geometric Asian Option Pricing (Exact)
C_{geo} = e^{-rT} \mathbb{E}^Q[\max(\bar{G}_T - K, 0)]
Under the Black-Scholes model, \ln \bar{G}_T is normally distributed with mean m = \ln S_0 + (r - \frac{\sigma^2}{2})\frac{T}{2} and variance v^2 = \frac{\sigma^2 T}{3}. This allows closed-form pricing using the Black-Scholes formula with adjusted parameters. The call price is: C_{geo} = S_0 e^{(r - \frac{\sigma^2}{2})\frac{T}{2} + \frac{v^2}{2}} N(d_1) - Ke^{-rT} N(d_2) where d_1 = \frac{m + v^2 - \ln K}{v} and d_2 = d_1 - v.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Importance Sampling for Out-of-the-Money Asian Options
S_{t_{i+1}} = S_{t_i} \exp\left[\left(r - \frac{\sigma^2}{2} + \theta_i\right)\Delta t_i + \sigma \sqrt{\Delta t_i} Z_i\right]
where \theta_i is a drift adjustment chosen to shift the distribution toward paths where \bar{A}_T \approx K. For out-of-the-money Asian calls, positive drift increases probability of positive payoffs. The likelihood ratio correction L = \exp\left[-\sum_{i=1}^N \theta_i Z_i \sqrt{\Delta t_i} - \frac{1}{2}\sum_{i=1}^N \theta_i^2 \Delta t_i\right] removes the bias.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Antithetic Variates for Asian Options
C_{AV} = \frac{1}{2M} \sum_{j=1}^M \left[\max(\bar{A}_T^{(j)} - K, 0) + \max(\bar{A}_T^{\prime(j)} - K, 0)\right]
where \bar{A}_T^{\prime(j)} is computed using the antithetic path S_{t_{i+1}}^{\prime} = S_{t_i}^{\prime} \exp\left[\left(r - \frac{\sigma^2}{2}\right)\Delta t_i - \sigma \sqrt{\Delta t_i} Z_i\right]. The antithetic variate technique uses negatively correlated pairs, ensuring that if one sample produces a high payoff, the antithetic produces a low payoff, reducing variance through correlation.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Variables:

**Equation:**

$$
- \(y_{t_i}\): Yield at key maturity \(t_i\) #### 5. Convexity C = \frac{1}{P} \frac{\partial^2 P}{\partial y^2} = \frac{1}{P} \sum_{i=1}^n \frac{T_i(T_i+1) CF_i}{(1+y)^{T_i+2}} #### 6. DV01 (Dollar Value of 01) \text{DV01} = -\frac{\partial P}{\partial y} \times 0.0001 \approx D_{\text{Mod}} \times P \times 0.0001 ### C. Yield Curve Construction #### 1. Nelson-Siegel Model y(\tau) = \beta_0 + \beta_1 \left( \frac{1 - e^{-\lambda \tau}}{\lambda \tau} \right) + \beta_2 \left( \frac{1 - e^{-\lambda \tau}}{\lambda \tau} - e^{-\lambda \tau} \right)
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Viceira (2007) Optimal Execution with Market Impact
\min_{x} \mathbb{E}\left[\sum_{t=1}^T (\bar{p}_t - p_0)x_t\right] + \lambda \text{Var}\left[\sum_{t=1}^T (\bar{p}_t - p_0)x_t\right]
where x_t is trade size at time t, \bar{p}_t = p_0 + \eta \sum_{s=1}^t x_s is execution price with permanent linear market impact \eta, p_0 is initial mid-price, and \lambda is risk aversion parameter. The objective minimizes implementation shortfall (cost of execution) while penalizing variance, representing trade-off between price impact and execution timing risk.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Variance Swap Pricing via Implied Volatility
\sigma_{VS}^2(T) = \frac{2}{T}\int_0^{\infty} \frac{1 - \Phi(-d_2)}{K^2} dK
where \Phi is the standard normal CDF and d_2 = \frac{\ln(F/K)}{\sigma_{imp}\sqrt{T}} - \frac{\sigma_{imp}\sqrt{T}}{2}. This formula, derived from the log-contract replication, expresses the fair variance swap strike as an integral over OTM options weighted by 1/K^2. Variance swaps provide direct exposure to realized volatility and are priced using the full implied volatility surface, not just ATMF volatility.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Dynamically Adjusted Cointegration
y_{1t} = \beta_{0t} + \beta_{1t} y_{2t} + \epsilon_t, \quad \beta_{0t} = \beta_{0,t-1} + \eta_{0t}, \quad \beta_{1t} = \beta_{1,t-1} + \eta_{1t}
where both intercept \beta_{0t} and slope \beta_{1t} follow random walks with process noise \eta_{it}. This specification allows both the level (intercept) and hedge ratio (slope) of the cointegration relationship to evolve, capturing structural changes more flexibly than just allowing the slope to change. The Kalman filter can estimate both states simultaneously.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Low-Discrepancy Sequences for Asian Options (Quasi-Monte Carlo)
\bar{A}_T^{(q)} = \frac{1}{N} \sum_{i=1}^N S_0 \exp\left[\left(r - \frac{\sigma^2}{2}\right)t_i + \sigma \sqrt{t_i} \Phi^{-1}(u_i^{(q)})\right]
where u_i^{(q)} are points from a low-discrepancy sequence (e.g., Sobol, Halton, Faure), and \Phi^{-1} is the inverse CDF of the standard normal. Quasi-Monte Carlo methods achieve convergence rate O(1/M) versus O(1/\sqrt{M}) for standard Monte Carlo, where M is the number of paths, significantly reducing computational requirements for Asian option pricing.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Hurst Exponent for Mean Reversion vs. Trending
H = \lim_{k \to \infty} \frac{\log[R(k)/S(k)]}{\log(k)}, \quad R(k) = \max_{1 \leq i \leq T-k} \left(\sum_{j=1}^{i+k} y_j - \sum_{j=1}^i y_j\right) - \min_{1 \leq i \leq T-k} \left(\sum_{j=1}^{i+k} y_j - \sum_{j=1}^i y_j\right)
where R(k) is the range of partial sums over interval k, and S(k) is standard deviation. Hurst exponent H < 0.5 indicates mean reversion, H = 0.5 indicates random walk, and H > 0.5 indicates trending (persistence). Estimating H helps classify assets as suitable for mean-reversion versus momentum strategies.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Kou Characteristic Function
\phi_T(u) = \exp(iu (\ln S_0 + (r - \frac{1}{2}\sigma^2 - \lambda \kappa)T) - \frac{1}{2}\sigma^2 u^2 T + \lambda T (\frac{p \eta_1}{\eta_1 - iu} + \frac{q \eta_2}{\eta_2 + iu} - 1))
where \kappa = \frac{p \eta_1}{\eta_1 - 1} + \frac{q \eta_2}{\eta_2 + 1} - 1
The closed-form characteristic function for the Kou model exploits the fact that the Laplace transform of the double exponential distribution is rational. This leads to efficient Fourier-based pricing methods and makes the model computationally attractive for practical applications.
$$

*Source: eq3/jump-diffusion-primer.txt*

---

## Equation

**Equation:**

$$
Moment Generating Function of Arithmetic Average (Jump-Diffusion)
M_{\bar{A}_T}(\theta) = \exp\left[\theta \frac{S_0(e^{rT} - 1)}{rT} + \frac{\theta^2 \sigma^2}{2T^2} \int_0^T \int_0^T e^{r(u+v)} \min(u,v) du dv + \frac{\lambda}{T^2} \int_0^T \int_0^T \left[e^{\theta S_0 e^{ru} \mathbb{E}[Y^{(\theta+1)v}]} - e^{\theta S_0 e^{ru} + \theta S_0 e^{rv} + \theta S_0 e^{r(u+v)}}\right] du dv\right]
This captures the complex interaction of diffusion and jump components in the arithmetic average. Numerical inversion of this MGF (via Fourier methods) provides prices for Asian options with jumps.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Multilevel Monte Carlo for Asian Options
\hat{C}_{MLMC} = \frac{1}{M_0} \sum_{j=1}^{M_0} \hat{P}_0^{(j)} + \sum_{\ell=1}^L \frac{1}{M_\ell} \sum_{j=1}^{M_\ell} \left(\hat{P}_\ell^{(j)} - \hat{P}_{\ell-1}^{(j)}\right)
where \hat{P}_\ell^{(j)} is the payoff computed with n_\ell observation points (mesh level \ell). Giles (2008) showed that by computing differences between levels and allocating samples optimally across levels, the computational complexity can be reduced from O(M^{-2}) for standard Monte Carlo to O(M^{-2} \log M) or better for path-dependent options like Asian options.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Variables:

**Equation:**

$$
- \(F_t\): Forward price - \(\alpha_t\): Stochastic volatility - \(\beta\): Elasticity parameter (\(0 \le \beta \le 1\)) - \(\nu\): Volatility of volatility - \(\rho\): Correlation between forward and volatility #### 4. Merton Jump Diffusion \frac{dS_t}{S_t} = (r-q-\lambda \bar{\mu}) dt + \sigma dW_t + (J_t - 1) dN_t \ln J_t \sim N(\mu_J, \sigma_J^2), \quad \bar{\mu} = e^{\mu_J + \sigma_J^2/2} - 1 \phi(u) = \exp\left( iu \ln S_t + iu (r-q-\lambda\bar{\mu})\tau - \frac{1}{2} u^2 \sigma^2 \tau + \lambda\tau (e^{iu\mu_J - u^2\sigma_J^2/2} - 1) \right) --- *(Continued in next section: Interest Rate Derivatives)*
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Dynamic Conditional CAPM (DCAPM)
\beta_{i,t} = \frac{\text{Cov}_t(R_{i,t+1}, R_{m,t+1})}{\text{Var}_t(R_{m,t+1})}
where the conditional covariance and variance are modeled with GARCH processes: \text{Var}_t(R_{m,t+1}) = \omega + \alpha \epsilon_{m,t}^2 + \beta \text{Var}_{t-1}(R_{m}). Similarly for the conditional covariance. This captures time-varying second moments. Empirical implementations find that conditional variances are highly persistent, implying that risk premiums vary with market volatility. During high volatility periods, expected returns increase for a given beta.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Asian Option Pricing via Partial Differential Equation
\frac{\partial V}{\partial \tau} = \frac{1}{2}\eta^2 S^2 \frac{\partial^2 V}{\partial S^2} + (r + \eta^2)S \frac{\partial V}{\partial S} - rV + \frac{1}{\tau}(S \frac{\partial V}{\partial S} - V)
where \tau = T - t, \eta^2 = \sigma^2 \frac{1 - e^{-2r(T-t)}}{2r(T-t)}, and V = V(S, A, t) is the option value with current asset price S and accumulated average A. This is the PDE derived by Vecer (2001) for continuously monitored arithmetic Asian options. The PDE is three-dimensional (S, A, t) but can be reduced to two dimensions using dimensional reduction techniques.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

SVI Jump-Wings Parameterization
w(K, T) = \begin{cases}
a + b\{-\rho + 2\lambda - \sqrt{1 - \rho^2}}[K - x_1] & \text{if } K < x_1 \\
a + b\{\rho(K - x_2) + \sqrt{(K - x_2)^2 + \sigma^2}} & \text{if } x_1 \leq K \leq x_2 \\
a + b\{\rho(K - x_2) + \sqrt{(K - x_2)^2 + \sigma^2}} & \text{if } K > x_2
\end{cases}
where x_1 and x_2 are knot points controlling the left and right wings, and \lambda is an additional parameter for fine-tuning the left wing. This parameterization, developed by Gatheral and Jacquier (2014), guarantees no-arbitrage conditions by construction and provides more flexibility in matching market data than the basic SVI form.

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Stochastic Volatility: Implied Volatility Approximation
\sigma_{imp}^2(K,T) \approx \bar{\sigma}^2 - \frac{\rho \xi \bar{\sigma} d}{\sqrt{T}} + \frac{(5\rho^2/4 - 3/2)\xi^2}{T}
where \bar{\sigma} is average volatility, \xi is volatility-of-volatility, and d = \frac{\ln(F/K)}{\bar{\sigma}\sqrt{T}} is standardized log-moneyness. This approximation, valid for small volatility-of-volatility \xi, shows that stochastic volatility generates skew proportional to correlation \rho and smile curvature proportional to \xi^2. Negative correlation (\rho < 0) produces the characteristic negative skew of equity markets.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Kou Option Pricing Formula
V(S, t) = \sum_{n=0}^{\infty} \sum_{k=0}^{n} \frac{e^{-\lambda \tau}(\lambda \tau)^n}{n!} \binom{n}{k} p^k q^{n-k} V_{BS}(S, t; \sigma^2, r - \lambda \kappa + \frac{k \eta_1}{\tau} - \frac{(n-k)\eta_2}{\tau} - \frac{k}{\tau} - \frac{n-k}{\tau})
where the double sum accounts for both the total number of jumps n and the number of upward jumps k
This formula extends the Merton representation by distinguishing between upward and downward jumps. The binomial coefficient captures all possible sequences of jump directions, allowing for a more detailed representation of the jump process compared to the Merton model.
$$

*Source: eq3/jump-diffusion-primer.txt*

---

## Equation

**Equation:**

$$
European Option Pricing Formula
V(S, t) = \sum_{n=0}^{\infty} \frac{e^{-\lambda \tau}(\lambda \tau)^n}{n!} V_{BS}(S, t; \sigma^2 + n \frac{\sigma_J^2}{\tau}, r - \lambda \kappa + \frac{n}{\tau}(\mu_J + \frac{1}{2}\sigma_J^2))
where \tau = T - t is the time to maturity and V_{BS} is the standard Black-Scholes formula
This elegant formula shows that a jump diffusion option price can be expressed as a weighted sum of Black-Scholes prices with modified volatility and drift parameters. The weights follow a Poisson distribution representing the number of jumps, providing a connection between the jump diffusion model and the familiar Black-Scholes framework.
$$

*Source: eq3/jump-diffusion-primer.txt*

---

## Equation

**Equation:**

$$
Conditional CAPM with Stochastic Discount Factor
E_t[M_{t+1}R_{i,t+1}] = 1
where M_{t+1} = \delta - \lambda_t \eta_{t+1} is the stochastic discount factor, \delta is the time preference parameter, \lambda_t is the market price of risk at time t, and \eta_{t+1} is the market return innovation. The discount factor is conditionally log-normal. This yields the conditional CAPM: E_t[R_{i,t+1}] = \frac{1}{E_t[M_{t+1}]} + \frac{\text{Cov}_t(M_{t+1}, R_{i,t+1})}{E_t[M_{t+1}]}. Conditional moments replace unconditional moments in the standard CAPM derivation, allowing the risk-free rate, market risk premium, and betas to all vary with the information set.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Black CAPM with Inefficient Market Proxy Test
\hat{\lambda}_0 = \frac{\sum_{i=1}^N \frac{1}{\hat{\beta}_i}(\bar{R}_i - R_f)}{\sum_{i=1}^N \frac{1}{\hat{\beta}_i^2}}
where \hat{\lambda}_0 estimates the zero-beta rate when using an inefficient market proxy, \hat{\beta}_i are estimated betas, and \bar{R}_i are sample mean returns. Stambaugh (1982) derived this minimum-distance estimator. When the market proxy is inefficient, the estimated zero-beta rate is biased. The bias direction depends on how the proxy deviates from the true market portfolio. This test helps assess whether CAPM rejections stem from theoretical failure or from proxy inefficiency.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Heston Characteristic Function
\phi_{Heston}(u, t) = \exp\left\{i u \ln(S_t) + \frac{\kappa \theta}{\xi^2}\left[(\kappa - \rho \xi i u - d)t - 2 \ln\left(\frac{1 - g e^{-dt}}{1 - g}\right)\right] + \frac{v_t ( \kappa - \rho \xi i u - d)(1 - e^{-dt})}{\xi^2 (1 - g e^{-dt})}\right\}
where d = \sqrt{(\rho \xi i u - \kappa)^2 + \xi^2(i u + u^2)}, g = \frac{\kappa - \rho \xi i u - d}{\kappa - \rho \xi i u + d}, and v_t is current variance. This characteristic function, derived from affine structure of the Heston model, enables pricing via fast Fourier transform methods (Carr-Madan, Lewis). The existence of a closed-form characteristic function makes Heston computationally efficient compared to general stochastic volatility models.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Bond Price in G2++

**Equation:**

$$
P(t,T) = \frac{P(0,T)}{P(0,t)} \exp\left( -\frac{1}{2}(V(t,T) - V(0,T) + V(0,t)) - M_x(t,T) x_t - M_y(t,T) y_t \right) M_x(t,T) = \frac{1 - e^{-\kappa_1(T-t)}}{\kappa_1}, \quad M_y(t,T) = \frac{1 - e^{-\kappa_2(T-t)}}{\kappa_2} V(t,T) = \frac{\sigma_1^2}{\kappa_1^2} \left( (T-t) - 2M_x(t,T) + \frac{1 - e^{-2\kappa_1(T-t)}}{2\kappa_1} \right) + \frac{\sigma_2^2}{\kappa_2^2} \left( (T-t) - 2M_y(t,T) + \frac{1 - e^{-2\kappa_2(T-t)}}{2\kappa_2} \right) + 2\rho \frac{\sigma_1 \sigma_2}{\kappa_1 \kappa_2} \left( (T-t) - M_x(t,T) - M_y(t,T) + \frac{1 - e^{-(\kappa_1+\kappa_2)(T-t)}}{\kappa_1+\kappa_2} \right) df(t,T) = \mu(t,T) dt + \sigma(t,T) dW_t^{\mathbb{Q}} \mu(t,T) = \sigma(t,T) \int_t^T \sigma(t,s) ds
$$

**Description:**
Variables: | See markdown for detailed variables and explanation

*Source: eq3/iflow-primer/formulas_v2.csv; eq3/iflow-primer/formulas_clean.csv*

---

## Equation

**Equation:**

$$
Explicit Finite Difference Scheme
V_{i,j+1} = V_{i,j} + Δt (μ_{i,j} \frac{V_{i+1,j} - V_{i-1,j}}{2ΔS} + \frac{1}{2}σ_{i,j}² \frac{V_{i+1,j} - 2V_{i,j} + V_{i-1,j}}{ΔS²} - rV_{i,j})
where V_{i,j} represents option value at asset price S_i = iΔS and time t_j = jΔt, μ_{i,j} is the drift coefficient, σ_{i,j} is the volatility, r is the risk-free rate, ΔS is the asset price grid spacing, and Δt is the time step. This scheme approximates the Black-Scholes PDE using forward difference in time and central differences in space. The explicit nature means V_{i,j+1} can be computed directly from known values at time step j, making it computationally efficient but subject to strict stability constraints.
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Variables:

**Equation:**

$$
- \(H\): Barrier level (\(H < S_t\)) - \(C_{\text{BS}}(S, K, \dots)\): Black-Scholes call price \text{Price via PDE with cumulative time variable } A_t = \int_0^t \mathbf{1}_{\{S_u \le H\}} du \frac{\partial V}{\partial t} + (r-q)S \frac{\partial V}{\partial S} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} - rV + \mathbf{1}_{\{S \le H\}} \frac{\partial V}{\partial A} = 0 #### 2. Multi-Asset Options V(S^1_t, S^2_t, T) = S^1_t e^{-q_1(T-t)} \Phi(d_1) - S^2_t e^{-q_2(T-t)} \Phi(d_2) d_1 = \frac{\ln(S^1_t/S^2_t) + (q_2 - q_1 + \hat{\sigma}^2/2)(T-t)}{\hat{\sigma} \sqrt{T-t}}, \quad d_2 = d_1 - \hat{\sigma} \sqrt{T-t} \hat{\sigma} = \sqrt{\sigma_1^2 + \sigma_2^2 - 2\rho\sigma_1\sigma_2}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
Zero-Beta Portfolio Construction
w_z = \frac{\Sigma^{-1}\mathbf{1} - \frac{\mathbf{1}'\Sigma^{-1}\mu_w}{\sigma_w^2}w_m}{\mathbf{1}'\Sigma^{-1}\mathbf{1} - \frac{(\mathbf{1}'\Sigma^{-1}\mu_w)^2}{\sigma_w^2}}
where w_z is the vector of zero-beta portfolio weights, w_m is the market portfolio weights, \mu_w is the vector of expected returns for the market portfolio, and \sigma_w^2 is the market portfolio variance. The zero-beta portfolio is found by minimizing variance subject to the zero covariance constraint with the market portfolio and full investment constraint. This portfolio lies on the minimum-variance frontier and serves as the risk-free benchmark in the absence of a true riskless asset.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Equation

**Equation:**

$$
Crank-Nicolson Scheme
V_{i,j+1} = V_{i,j} + \frac{Δt}{2} [μ_{i,j} \frac{V_{i+1,j} - V_{i-1,j}}{2ΔS} + \frac{1}{2}σ_{i,j}² \frac{V_{i+1,j} - 2V_{i,j} + V_{i-1,j}}{ΔS²} - rV_{i,j} + μ_{i,j+1} \frac{V_{i+1,j+1} - V_{i-1,j+1}}{2ΔS} + \frac{1}{2}σ_{i,j+1}² \frac{V_{i+1,j+1} - 2V_{i,j+1} + V_{i-1,j+1}}{ΔS²} - rV_{i,j+1}]
The Crank-Nicolson scheme averages the explicit and implicit discretizations, providing second-order accuracy in both time and space O(Δt² + ΔS²). This scheme is unconditionally stable and converges faster than purely implicit methods while maintaining computational efficiency. The averaging operator creates a tridiagonal system at each time step, preserving the advantageous matrix structure of the implicit scheme.
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Variables:

**Equation:**

$$
- \(w_i\): Weights - \(F_i\): Forward price of asset \(i\) - \(\rho_{ij}\): Correlation between assets \(i\) and \(j\) C \approx e^{-r(T-t)} \left( F_1 \Phi(d_1) - (F_2 + K) \Phi(d_2) \right) d_1 = \frac{\ln(F_1/(F_2+K)) + \tilde{\sigma}^2 T/2}{\tilde{\sigma} \sqrt{T}}, \quad d_2 = d_1 - \tilde{\sigma} \sqrt{T} \tilde{\sigma} = \sqrt{\sigma_1^2 + \left( \frac{F_2}{F_2+K} \sigma_2 \right)^2 - 2\rho \sigma_1 \sigma_2 \frac{F_2}{F_2+K}} C_{\max} = S^1_t e^{-q_1(T-t)} \Phi(d_{11}) + S^2_t e^{-q_2(T-t)} \Phi(d_{22}) - K e^{-r(T-t)} M(d_{11}-\sigma_1\sqrt{T-t}, d_{22}-\sigma_2\sqrt{T-t}; \rho) d_{11} = \frac{\ln(S^1_t/K) + (r-q_1+\sigma_1^2/2)(T-t)}{\sigma_1\sqrt{T-t}}, \quad d_{22} = \frac{\ln(S^2_t/K) + (r-q_2+\sigma_2^2/2)(T-t)}{\sigma_2\sqrt{T-t}}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
ADI Method for Two Dimensions
Step 1 (x-direction implicit, y-direction explicit):
V_{i,j}^* = V_{i,j} + \frac{Δt}{2} (a_x δ_x^2 V_{i,j}^* + a_y δ_y^2 V_{i,j})
Step 2 (x-direction explicit, y-direction implicit):
V_{i,j}^{n+1} = V_{i,j}^* + \frac{Δt}{2} (a_x δ_x^2 V_{i,j}^* + a_y δ_y^2 V_{i,j}^{n+1})
where δ_x^2 and δ_y^2 represent the second difference operators in x and y directions respectively, and a_x, a_y are the diffusion coefficients. The Alternating Direction Implicit (ADI) method reduces the computational complexity of two-dimensional problems from O(N^4) to O(N^3) per time step by solving a sequence of one-dimensional implicit problems. The method maintains unconditional stability and second-order accuracy when the operators commute.
$$

*Source: eq3/stochastic_calculus_primer.md*

---

## Equation

**Equation:**

$$
Vanna-Volga Volatility Interpolation
\sigma_{imp}(K, T) \approx \sigma_{ATMF}(T) \exp\left[\frac{\text{Vanna}}{\text{Vega}_0} \cdot \text{RR} + \frac{\text{Volga}}{\text{Vega}_0} \cdot \frac{\text{BF}}{2}\right]
where \text{Vanna} = \frac{\partial \Delta}{\partial \sigma} is the second-order cross sensitivity between delta and volatility, \text{Volga} = \frac{\partial^2 V}{\partial \sigma^2} is the convexity with respect to volatility, \text{RR} is the risk reversal measure capturing skew, and \text{BF} is the butterfly spread measure capturing smile curvature. The Vanna-Volga method uses market-observed risk reversal and butterfly spreads to construct the full implied volatility surface from ATMF volatilities. It assumes that higher-order Greeks can explain the smile structure.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Variables:

**Equation:**

$$
- \(x_t, y_t\): Two latent state variables - \(\varphi(t)\): Deterministic shift to fit initial curve - \(\rho\): Correlation between factors P(t,T) = \frac{P(0,T)}{P(0,t)} \exp\left( -\frac{1}{2}(V(t,T) - V(0,T) + V(0,t)) - M_x(t,T) x_t - M_y(t,T) y_t \right) M_x(t,T) = \frac{1 - e^{-\kappa_1(T-t)}}{\kappa_1}, \quad M_y(t,T) = \frac{1 - e^{-\kappa_2(T-t)}}{\kappa_2} V(t,T) = \frac{\sigma_1^2}{\kappa_1^2} \left( (T-t) - 2M_x(t,T) + \frac{1 - e^{-2\kappa_1(T-t)}}{2\kappa_1} \right) + \frac{\sigma_2^2}{\kappa_2^2} \left( (T-t) - 2M_y(t,T) + \frac{1 - e^{-2\kappa_2(T-t)}}{2\kappa_2} \right) + 2\rho \frac{\sigma_1 \sigma_2}{\kappa_1 \kappa_2} \left( (T-t) - M_x(t,T) - M_y(t,T) + \frac{1 - e^{-(\kappa_1+\kappa_2)(T-t)}}{\kappa_1+\kappa_2} \right) #### 5. Heath-Jarrow-Morton (HJM) Framework df(t,T) = \mu(t,T) dt + \sigma(t,T) dW_t^{\mathbb{Q}} \mu(t,T) = \sigma(t,T) \int_t^T \sigma(t,s) ds
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(\kappa\): Speed of mean reversion - \(\theta\): Long-term mean level - \(\sigma\): Volatility of short rate - \(W_t^{\mathbb{Q}}\): Brownian motion under risk-neutral measure P(t,T) = A(t,T) e^{-B(t,T) r_t} B(t,T) = \frac{1 - e^{-\kappa(T-t)}}{\kappa} A(t,T) = \exp\left( \left(\theta - \frac{\sigma^2}{2\kappa^2}\right)(B(t,T) - (T-t)) - \frac{\sigma^2}{4\kappa} B(t,T)^2 \right) #### 2. Cox-Ingersoll-Ross (CIR) Model dr_t = \kappa(\theta - r_t) dt + \sigma \sqrt{r_t} dW_t^{\mathbb{Q}} P(t,T) = A(t,T) e^{-B(t,T) r_t} B(t,T) = \frac{2(e^{\gamma(T-t)} - 1)}{(\gamma + \kappa)(e^{\gamma(T-t)} - 1) + 2\gamma} A(t,T) = \left( \frac{2\gamma e^{(\kappa+\gamma)(T-t)/2}}{(\gamma + \kappa)(e^{\gamma(T-t)} - 1) + 2\gamma} \right)^{2\kappa\theta/\sigma^2} \gamma = \sqrt{\kappa^2 + 2\sigma^2} #### 3. Hull-White (Extended Vasicek) Model dr_t = (\theta(t) - \kappa r_t) dt + \sigma dW_t^{\mathbb{Q}}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(n_t\): Nominal short rate - \(r_t\): Real short rate - \(I_t\): Inflation index - \(\pi_t\): Instantaneous inflation rate P_{\text{real}}(t,T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T r_s ds} \middle| \mathcal{F}_t \right] = A_r(t,T) e^{-B_r(t,T) r_t} P_{\text{nominal}}(t,T) = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T n_s ds} \middle| \mathcal{F}_t \right] = A_n(t,T) e^{-B_n(t,T) n_t} \frac{I_T}{I_t} = \exp\left( \int_t^T \pi_s ds + \frac{1}{2} \sigma_I^2 (T-t) + \sigma_I (W_T^{I,\mathbb{Q}} - W_t^{I,\mathbb{Q}}) \right) --- *(Continued in next section: Equity Derivatives)*## II. Equity Derivatives ### A. Vanilla Options #### 1. European Options C(S_t, K, T, r, q, \sigma) = S_t e^{-q(T-t)} \Phi(d_1) - K e^{-r(T-t)} \Phi(d_2) P(S_t, K, T, r, q, \sigma) = K e^{-r(T-t)} \Phi(-d_2) - S_t e^{-q(T-t)} \Phi(-d_1) d_1 = \frac{\ln(S_t/K) + (r - q + \sigma^2/2)(T-t)}{\sigma \sqrt{T-t}} d_2 = d_1 - \sigma \sqrt{T-t}
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Equation

**Equation:**

$$
SABR Volatility Surface Model
\sigma_{loc}(F, T) = \frac{\alpha}{F^{1-\beta} \left[1 + \left(\frac{1-\beta}{2}\right)^2 \alpha^2 T + \frac{\rho \beta \nu \alpha T}{F^{1-\beta}} + \left(\frac{2 - 3\rho^2}{24}\right)\nu^2 T\right]}
\cdot \left[1 + \left(1 - \beta + \frac{\rho \nu \alpha T}{F^{1-\beta}}\right)\ln\left(\frac{F}{K}\right) + \frac{(1-\beta)^2 \alpha^2 T}{6F^{2(1-\beta)}} + \frac{2 - 3\rho^2}{24}\nu^2 T\right]
where \alpha is the at-the-money volatility level, \beta \in [0,1] controls elasticity of volatility to underlying price, \nu is volatility of volatility, and \rho is correlation between asset price and volatility. The SABR (Stochastic Alpha Beta Rho) model, developed by Hagan et al. (2002), provides a parametric form for the implied volatility smile that captures key features: level, skew, and term structure. The model dynamics are: dF_t = \alpha_t F_t^\beta dW_t^F, d\alpha_t = \nu \alpha_t dW_t^\alpha, with dW_t^F dW_t^\alpha = \rho dt.
$$

*Source: eq3/asian-options-phd-equations.md*

---

## Variables:

**Equation:**

$$
- \(Q(K_i)\): Midpoint of bid-ask spread for out-of-the-money option with strike \(K_i\) - \(K_0\): First strike below forward price \(F\) ### E. Volatility Modeling #### 1. Local Volatility (Dupire Formula) \sigma_{\text{loc}}(K, T)^2 = \frac{\frac{\partial C}{\partial T} + (r-q)K \frac{\partial C}{\partial K} + qC}{\frac{1}{2} K^2 \frac{\partial^2 C}{\partial K^2}} #### 2. Heston Stochastic Volatility Model dS_t = (r-q) S_t dt + \sqrt{v_t} S_t dW_t^S dv_t = \kappa (\theta - v_t) dt + \xi \sqrt{v_t} dW_t^v dW_t^S dW_t^v = \rho dt \phi(u) = \exp\left( iu \ln S_t + C(u,\tau) + D(u,\tau) v_t \right) C(u,\tau) = (r-q) i u \tau + \frac{\kappa \theta}{\xi^2} \left( (\kappa - \rho \xi i u - d) \tau - 2 \ln \frac{1 - g e^{-d\tau}}{1 - g} \right) D(u,\tau) = \frac{\kappa - \rho \xi i u - d}{\xi^2} \frac{1 - e^{-d\tau}}{1 - g e^{-d\tau}} d = \sqrt{(\rho \xi i u - \kappa)^2 + \xi^2 (i u + u^2)}, \quad g = \frac{\kappa - \rho \xi i u - d}{\kappa - \rho \xi i u + d} #### 3. SABR Model dF_t = \alpha_t F_t^\beta dW_t^F d\alpha_t = \nu \alpha_t dW_t^\alpha dW_t^F dW_t^\alpha = \rho dt \sigma_{\text{imp}}(K, F) \approx \frac{\alpha}{(FK)^{(1-\beta)/2} \left[ 1 + \frac{(1-\beta)^2}{24} \ln^2(F/K) + \frac{(1-\beta)^4}{1920} \ln^4(F/K) + \cdots \right]} \cdot \frac{z}{\chi(z)} z = \frac{\nu}{\alpha} (FK)^{(1-\beta)/2} \ln(F/K) \chi(z) = \ln \left( \frac{\sqrt{1 - 2\rho z + z^2} + z - \rho}{1 - \rho} \right)
$$

*Source: eq3/iflow-primer/formulas.csv*

---

## Variables:

**Equation:**

$$
- \(\tau\): Time between forward start date and maturity - \(\alpha\): Strike multiplier (strike = \(\alpha S_{T_0}\)) ### B. Option Sensitivities (Greeks) #### 1. First-Order Greeks \Delta_C = \frac{\partial C}{\partial S} = e^{-q(T-t)} \Phi(d_1) \Delta_P = \frac{\partial P}{\partial S} = e^{-q(T-t)} (\Phi(d_1) - 1) \mathcal{V} = \frac{\partial C}{\partial \sigma} = S e^{-q(T-t)} \sqrt{T-t} \phi(d_1) \Theta_C = -\frac{\partial C}{\partial t} = -\frac{S e^{-q(T-t)} \sigma \phi(d_1)}{2\sqrt{T-t}} + q S e^{-q(T-t)} \Phi(d_1) - r K e^{-r(T-t)} \Phi(d_2) \Theta_P = -\frac{\partial P}{\partial t} = -\frac{S e^{-q(T-t)} \sigma \phi(d_1)}{2\sqrt{T-t}} - q S e^{-q(T-t)} \Phi(-d_1) + r K e^{-r(T-t)} \Phi(-d_2) \rho_C = \frac{\partial C}{\partial r} = K (T-t) e^{-r(T-t)} \Phi(d_2) \rho_P = \frac{\partial P}{\partial r} = -K (T-t) e^{-r(T-t)} \Phi(-d_2) #### 2. Second-Order Greeks \Gamma = \frac{\partial^2 C}{\partial S^2} = \frac{e^{-q(T-t)} \phi(d_1)}{S \sigma \sqrt{T-t}} \frac{\partial \Delta}{\partial \sigma} = \frac{\partial \mathcal{V}}{\partial S} = -e^{-q(T-t)} \phi(d_1) \frac{d_2}{\sigma} \frac{\partial \mathcal{V}}{\partial \sigma} = S e^{-q(T-t)} \sqrt{T-t} \phi(d_1) \frac{d_1 d_2}{\sigma} \frac{\partial \Delta}{\partial t} = -q e^{-q(T-t)} \Phi(d_1) + e^{-q(T-t)} \phi(d_1) \left( \frac{2(r-q)\tau - d_2 \sigma \sqrt{\tau}}{2\tau \sigma \sqrt{\tau}} \right) #### 3. Third-Order Greeks \frac{\partial \Gamma}{\partial S} = -\frac{\Gamma}{S} \left( 1 + \frac{d_1}{\sigma \sqrt{T-t}} \right) \frac{\partial \text{Volga}}{\partial \sigma} = \frac{\mathcal{V}}{\sigma} \left( d_1 d_2 (1 - d_1 d_2) + d_1^2 + d_2^2 \right) \frac{\partial \Gamma}{\partial \sigma} = \Gamma \left( \frac{d_1 d_2 - 1}{\sigma} \right) ### C. Exotic Options #### 1. Path-Dependent Options C_{\text{geom}} = e^{-r(T-t)} \left( G_t e^{\bar{\mu}(T-t)} \Phi(d_1) - K \Phi(d_2) \right) \bar{\mu} = r - q - \frac{\sigma^2}{6}, \quad \bar{\sigma} = \frac{\sigma}{\sqrt{3}} d_1 = \frac{\ln(G_t/K) + (\bar{\mu} + \bar{\sigma}^2/2)(T-t)}{\bar{\sigma} \sqrt{T-t}}, \quad d_2 = d_1 - \bar{\sigma} \sqrt{T-t}
$$

*Source: eq3/iflow-primer/formulas.csv*

---


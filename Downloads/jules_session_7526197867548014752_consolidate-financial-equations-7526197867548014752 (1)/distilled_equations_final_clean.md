# Financial Equations Reference

This document contains a comprehensive collection of financial equations organized by category.

## Credit Models

**Tranche Loss Valuation**
$$\text{Price}_{\text{market}}[a d] = \int_0^T e^{-rt} d\mathbb{E}^\mathbb{Q}[L_{[a d]}(t);\rho_{a d}]$$
Market price of CDO tranche with attachment point a and detachment point d. Integrates discounted expected tranche losses over time.

**CDO Protection Leg Valuation**
$$\text{PV}(\text{Protection}) = N_0 \int_0^T \mathbb{E}\left[e^{-\int_0^t (r_s + \lambda_s) ds}\right] dEL_t^{(A D)}$$
Present value of protection leg for CDO tranche. Accounts for both interest rate and credit risk through stochastic discounting.

**Survival Probability**
$$\mathbb{Q}(\tau > T) = \mathbb{E}^\mathbb{Q}\left[e^{-\int_0^T \lambda_s ds}\right]$$
Probability of survival until time T under risk-neutral measure. Expressed as expectation of exponential integral of hazard rate process.

**Joint Default Probability**
$$P(\tau_i \leq t \text{ for all } i \in S) = \Phi_S\left(\{\Phi^{-1}(1 - e^{-h_i t})\}_{i\in S}; \{\sqrt{\rho_i \rho_j}\}_{i j\in S}\right)$$
Probability of joint default for a set of obligors using Gaussian copula framework. Correlation structure captured through systematic factor.

**Tranche Spread Valuation**
$$s_{A D} N_0 (D - A) \int_0^T \mathbb{E}\left[e^{-\int_0^t r_s ds}\right] dt = N_0 \int_0^T \mathbb{E}\left[e^{-\int_0^t r_s ds} dL_t^{(A D)}\right]$$
Equilibrium condition equating premium leg to protection leg for CDO tranche. Fundamental pricing relationship for synthetic CDOs.

**Second Tranche Spread**
$$s^{(2)}_{A^{(2)} D^{(2)}} = \frac{\mathbb{E}\left[\int_0^T e^{-rt} dEL_t^{(2)}\right]}{\int_0^T e^{-rt} dt N_0^{(2)} (D^{(2)} - A^{(2)})}$$
Pricing formula for second-loss tranche in CDO structure. Similar to first-loss but with different attachment/detachment points.

**CDS Par Spread**
$$s = \frac{(1-R) \int_0^T P(0 t) \lambda(t) e^{-\int_0^t \lambda(u)du} dt}{\int_0^T P(0 t) e^{-\int_0^t \lambda(u)du} dt}$$
Par spread for credit default swap equating premium leg to protection leg. Expresses credit spread in terms of hazard rate and discount factors.

**Basel IRB Capital Formula**
$$K = \text{LGD} \left[N\left(\frac{G(\text{PD}) + \sqrt{R} G(0.999)}{\sqrt{1-R}}\right) - \text{PD}\right] \times \text{MA}$$
Basel Internal Ratings-Based approach for regulatory capital calculation. Combines probability of default loss given default and maturity adjustments.

**Black-Cox First Passage Model**
$$\tau = \inf\{t \geq 0: V_t \leq K(t)\}$$
First passage time model for credit risk where default occurs when asset value hits time-dependent barrier. Extension of Merton model allowing early default.

**CDS Par Spread Pricing**
$$S = \frac{(1-R) \int e^{-rt} Q(t) \lambda(t) dt}{\int e^{-rt} Q(t) dt}$$
Credit default swap spread equating premium leg to protection leg. Q(t) represents survival probability and λ(t) is hazard rate.

**CSA Discounting (OIS)**
$$V(t) = \mathbb{E}^\mathbb{Q}\left[\exp\left(-\int_t^T c(u) du\right) \text{Payoff}\right]$$
Post-crisis discounting using collateral rate c(u) instead of LIBOR. Reflects funding costs and credit risk mitigation through collateral.

**Expected Shortfall**
$$\text{CVaR}_\alpha = \mathbb{E}[L|L > \text{VaR}_\alpha] = \mu + \frac{\sigma}{1-\alpha} \phi(z_\alpha)$$
Coherent risk measure representing expected loss beyond VaR threshold. More conservative than VaR for tail risk measurement.

**Hazard Rate Process**
$$\lambda_t = \lambda(t, X_t) \text{ where } X_t \text{ is state vector}$$
General specification for hazard rate process in credit models. Allows for time-varying and state-dependent default intensity.

**Black-Scholes for Equity as Call**
$$E_t = V_t \Phi(d_1) - D e^{-r(T-t)} \Phi(d_2)$$
Merton model treating equity as call option on firm value. Strike equals debt face value D with maturity matching debt maturity.

## Fixed Income

**Discount Factor Relationships**
$$\text{DF}(t, T) = P(t, T) = \frac{1}{(1+y(T-t))^{T-t}} = \exp(-r(T-t))$$
Equivalence between discount factors bond prices and different compounding conventions. Fundamental relationship in fixed income mathematics.

**I-Spread (Interpolated Spread)**
$$I = y_{\text{bond}} - y_{\text{benchmark}}$$
Interpolated spread measures credit spread relative to benchmark yield curve. Used for relative value analysis in credit markets.

**Key Rate Duration**
$$\text{KRD}_k = -\frac{1}{P} \frac{\partial P}{\partial y_k}$$
Sensitivity of bond price to change in specific point on yield curve. Allows for hedging non-parallel yield curve shifts.

**Geometric Series**
$$\sum_{k=0}^\infty r^k = \frac{1}{1-r} \text{ for } |r| < 1$$
Infinite geometric series formula. Foundation for perpetuity valuation and infinite cash flow streams in finance.

**MBS Carry Return**
$$\text{Carry} = (\text{WAC} - \text{Servicing\_Spread}) - \text{Cost\_of\_Funding}$$
Net carry return for mortgage-backed securities. Difference between weighted average coupon and funding costs.

**MBS Interest Cash Flow**
$$\text{CF}_t^{\text{interest}} = (B_{t-1} - \text{SP}_t/2) \times \frac{\text{WAC}_t}{12}$$
Interest cash flow calculation for mortgage-backed securities. Based on beginning balance minus scheduled principal payments.

**MBS Scheduled Principal**
$$\text{SP}_t = \text{MP}_t - \text{Interest}_t$$
Scheduled principal payment for mortgage-backed securities. Total mortgage payment minus interest portion.

**Modified Duration**
$$D_{\text{mod}} = \frac{D_{\text{mac}}}{1+y}$$
Modified duration measures price sensitivity to yield changes. Adjusts Macaulay duration for compounding frequency.

**Negative Convexity Cost**
$$\text{Cost}_{\text{convexity}} \approx 0.5 \times |C| \times \sigma_y^2 \times \text{WAM}$$
Estimated cost of negative convexity for mortgage-backed securities. Combines convexity magnitude yield volatility and weighted average maturity.

**Nelson-Siegel Yield Curve Model**
$$y(\tau) = \beta_0 + \beta_1 \frac{1-e^{-\tau/\lambda}}{\tau/\lambda} + \beta_2 \left(\frac{1-e^{-\tau/\lambda}}{\tau/\lambda} - e^{-\tau/\lambda}\right)$$
Parametric yield curve model with level slope and curvature factors. Widely used for yield curve fitting and forecasting.

**PSA Prepayment Model**
$$\text{CPR}(t) = \min(t/30, 1) \times 6\%$$
Public Securities Association prepayment benchmark for mortgage-backed securities. Standard industry convention for prepayment modeling.

**Rational Prepayment Model**
$$R_t = \frac{dV/dr}{dV/dr_{\text{refi}}}$$
Prepayment rate as ratio of yield incentive to refinance incentive. Captures economic rationality of mortgage prepayment decisions.

**Real Yield**
$$y_{\text{real}} = \frac{1 + y_{\text{nom}}}{1 + \pi} - 1$$
Real yield adjusted for inflation. Important for inflation-linked securities analysis.

**TIPS Pricing**
$$P^{\text{TIPS}}(t, T) = P^{\text{real}}(t, T) \cdot I_t$$
Treasury Inflation-Protected Securities pricing formula. Real bond price multiplied by inflation index ratio.

**Weighted Average Coupon**
$$\text{WAC} = \sum_{i=1}^M w_i \times r_i$$
Weighted average coupon rate for mortgage-backed securities pool. Balance-weighted average of individual mortgage rates.

**Weighted Average Maturity**
$$\text{WAM} = \sum_{i=1}^M w_i \times T_i$$
Weighted average maturity for mortgage-backed securities. Balance-weighted average of remaining loan terms.

**Yield to Maturity**
$$P_{\text{mkt}} = \sum_{i=1}^n C e^{-y t_i} + F e^{-y t_n}$$
Internal rate of return calculation for bonds. Discount rate that equates present value of cash flows to market price.

## Foreign Exchange

**Put Option Price (Garman-Kohlhagen)**
$$P = K e^{-r_d T} \Phi(-d_2) - S_0 e^{-r_f T} \Phi(-d_1)$$
Black-Scholes extension for FX options with domestic and foreign interest rates. Used for currency options pricing.

**Covered Interest Rate Parity**
$$F_0 = S_0 e^{(r_d - r_f)T}$$
No-arbitrage relationship between spot and forward exchange rates. Fundamental relationship in international finance.

**Garman-Kohlhagen Model**
$$C = S_0 e^{-r_f T} \Phi(d_1) - K e^{-r_d T} \Phi(d_2)$$
Black-Scholes extension for currency options. Incorporates both domestic and foreign interest rates for FX option pricing.

**Jarrow-Yildirim Inflation Model**
$$\frac{dI_t}{I_t} = (r_n(t) - r_r(t)) dt + \sigma_I dW_I$$
Treats inflation index like foreign currency with nominal rate as domestic and real rate as foreign rate. Used for inflation derivatives pricing.

**Power Reverse Dual Currency**
$$V_{\text{PRDC}} = \text{Notional} \times \max\left(\prod_{i=1}^n \left(\frac{S_{t_i}}{S_0}\right)^{\alpha_i}, 0\right)$$
Structured FX product with power option features. Common in Japanese retail market with complex payoff structures.

**FX Forward Points**
$$\text{Points} = S_0 \times (r_d - r_f) \times T$$
Forward premium or discount in FX markets. Points represent difference between forward and spot rates due to interest rate differential.

## Commodities

**Optimal Storage Valuation**
$$V = \max_{q_i \in [q_{\min}, q_{\max}]} \mathbb{E}^\mathbb{Q}\left[\sum_{i=1}^N e^{-r t_i} q_i (S_{t_i} - K)\right]$$
Optimal valuation of commodity storage facilities. Maximizes expected discounted cash flows from storage operations under constraints.

**Gold Lease Rate**
$$\text{LeaseRate} = r_{\text{risk-free}} - \text{Cost of Carry}$$
Lease rate for gold represents return from lending gold. Often negative due to storage costs and convenience yield considerations.

**Silver Lease Rate**
$$\text{SilverLeaseRate} = r_{\text{risk-free}} + u - y$$
Silver lease rate accounting for storage costs and convenience yield. Reflects industrial demand characteristics of silver.

## Stochastic Calculus

**State Price Density Process**
$$\pi_t = e^{-rt} \zeta_t$$

## Enhanced Notes for π_t = e^{-rt} ζ_t

**State Price Density Process**: The state price density process represents the fundamental pricing mechanism in continuous-time finance, defining how contingent claims are valued under the risk-neutral measure. Here, π_t denotes the state price density at time t, r represents the risk-free interest rate (assumed constant for simplicity), and ζ_t is the stochastic discount factor or pricing kernel.

### Mathematical Foundation and Derivation

The state price density process emerges from the fundamental theorem of asset pricing, which establishes that a market is arbitrage-free if and only if there exists an equivalent martingale measure (EMM) under which all discounted asset prices are martingales. Under this EMM (often the risk-neutral measure Q), the state price density π_t provides the bridge between physical and risk-neutral pricing.

Starting from the fundamental relationship that the price of any contingent claim X at time 0 is given by:
$$P_0(X) = \mathbb{E}^Q[e^{-\int_0^T r_s ds} X_T]$$

The state price density can be derived by considering the pricing of elementary Arrow-Debreu securities. An Arrow-Debreu security pays 1 unit if a specific state ω occurs at time T and 0 otherwise. The price of such a security at time t is:
$$π_t(ω) = \mathbb{E}^Q[e^{-\int_t^T r_s ds} | \mathcal{F}_t](ω)$$

This leads to the representation:
$$π_t = e^{-\int_0^t r_s ds} ζ_t$$

where ζ_t is the pricing kernel process satisfying:
$$ζ_t = \mathbb{E}^Q[e^{-\int_0^t r_s ds} | \mathcal{F}_t]$$

The pricing kernel ζ_t is typically modeled as:
$$dζ_t = -r_t ζ_t dt - ζ_t dM_t$$

where M_t is a martingale under the physical measure, ensuring that discounted prices are martingales under the risk-neutral measure.

### Key Assumptions and Limitations

The state price density framework relies on several critical assumptions:

1. **Market Completeness**: The model assumes that all contingent claims can be perfectly replicated through dynamic trading in underlying assets, requiring a complete market with no arbitrage opportunities.

2. **Frictionless Markets**: Transaction costs, liquidity constraints, and market impact are assumed away. In reality, these frictions can significantly affect pricing and hedging strategies.

3. **Constant Risk-Free Rate**: The derivation assumes r is constant. Variable interest rates (stochastic r_t) require more complex formulations involving the savings account process B_t = exp(∫r_s ds).

4. **Equivalent Martingale Measure**: The existence of an EMM requires the absence of arbitrage but not necessarily market completeness. In incomplete markets, multiple EMMs may exist, leading to non-unique pricing.

5. **Information Filtration**: The process assumes perfect information flow through the filtration (ℱ_t), but real markets face asymmetric information, insider trading, and delayed price discovery.

### Practical Applications in Finance

The state price density process serves as the cornerstone for derivative pricing and risk management:

**Derivative Pricing**: All options and exotic derivatives are priced using the risk-neutral expectation. For instance, a European call option becomes:
$$C_0 = e^{-rT} \mathbb{E}^Q[(S_T - K)^+] = \int (S_T - K)^+ π_T d\mathbb{P}^Q$$

**Risk-Neutral Valuation**: The process enables consistent pricing across all asset classes, from equities and commodities to interest rates and credit products.

**Hedging Strategies**: The pricing kernel informs delta-hedging approaches. The hedge ratio for a derivative is derived from the sensitivity of the pricing kernel to underlying factors.

**Asset Allocation**: Portfolio optimization uses state prices to determine efficient frontiers, where the pricing kernel represents aggregate risk preferences.

**Credit Risk Modeling**: In structural models like Merton (1974), the pricing kernel incorporates default risk through the firm's value process.

**Real Options Analysis**: Corporate finance applications use state prices to value investment opportunities with embedded options.

### Related Concepts and Extensions

The state price density connects to several foundational concepts:

**Pricing Kernel vs. Stochastic Discount Factor**: While often used interchangeably, the pricing kernel typically refers to ζ_t, while the state price density includes the deterministic discount factor.

**Fundamental Theorem Extensions**: Harrison and Kreps (1979) extended the theorem to semimartingale models, while Harrison and Pliska (1981) generalized to countable state spaces.

**Market Price of Risk**: The pricing kernel's dynamics reveal the market price of risk λ_t, where dM_t = λ_t dt + dW_t^Q, connecting to CAPM and consumption-based asset pricing.

**Multi-Asset Extensions**: In multi-dimensional models, the pricing kernel becomes vector-valued, requiring careful specification of correlation structures.

**Jump-Diffusion Models**: Extensions incorporating Poisson jumps (Merton 1976) modify the pricing kernel to include discontinuous components.

**Local Volatility Models**: Dupire (1994) showed that European option prices uniquely determine the local volatility function, which relates directly to state price dynamics.

**Stochastic Volatility**: Models like Heston (1993) introduce stochastic volatility in the pricing kernel, improving fit to observed option surfaces.

### Implementation Considerations

Practical implementation requires careful consideration of several factors:

**Numerical Methods**: Monte Carlo simulation under the risk-neutral measure is most common, requiring discretization of the pricing kernel process. For high-dimensional problems, quasi-Monte Carlo or variance reduction techniques improve efficiency.

**Calibration Challenges**: The pricing kernel must be calibrated to observed market prices. This involves solving inverse problems to match option surfaces, yield curves, and other market observables.

**Model Risk**: Different pricing kernel specifications (lognormal, exponential, etc.) can lead to significantly different valuations, especially for exotic products.

**Computational Complexity**: High-dimensional state spaces require efficient approximation methods. Fast Fourier transforms (FFT) can accelerate pricing for certain model classes.

**Parameter Estimation**: Historical data provides physical measure parameters, but risk-neutral parameters must be inferred from market prices, creating potential overfitting risks.

**Stability Issues**: Numerical implementation must handle potential instabilities in the pricing kernel, particularly near singularities or when the market price of risk becomes extreme.

The state price density process remains the unifying framework for modern quantitative finance, providing both theoretical elegance and practical pricing power across derivative instruments.

**Risk-Neutral Valuation**
$$V(t, S) = e^{-r(T-t)} \mathbb{E}^\mathbb{Q}[\Phi(S_T)|S_t = S]$$
Fundamental theorem of asset pricing. Any derivative price equals discounted expected payoff under risk-neutral measure.

**Lognormal Jump Size Distribution**
$$\ln J_t \sim N(\mu_J, \sigma_J^2), \quad \bar{\mu} = e^{\mu_J + \sigma_J^2/2} - 1$$
The lognormal jump size distribution is a fundamental component of Merton's (1976) jump-diffusion model for asset pricing. **Mathematical Foundation**: The jump size J_t follows a lognormal distribution, meaning ln J_t ~ N(μ_J, σ_J²). The expected jump size ̄μ = E[J_t] = e^{μ_J + σ_J²/2} - 1 derives from the moment-generating property of lognormal distributions, where the mean of a lognormal random variable X = e^Y with Y ~ N(μ,σ²) is E[X] = e^{μ + σ²/2}. This formulation ensures jump sizes are always positive and can capture large market movements while maintaining analytical tractability. **Theoretical Basis**: In the Merton model, asset returns follow dS/S = (r - λ̄μ)dt + σdW + (J-1)dN, where λ is jump intensity and N is a Poisson process. The lognormal specification allows for fat-tailed return distributions that better match empirical observations than pure diffusion models. The drift adjustment (r - λ̄μ) compensates for the expected jump impact to maintain risk-neutral pricing. **Key Assumptions**: Jump sizes are independent of the diffusion process and occur at Poisson arrival times. All jumps are multiplicative (percentage changes) rather than additive. The model assumes constant parameters and ignores stochastic volatility-jump interactions. **Limitations**: Underestimates extreme tail events (jumps are too small); cannot capture time-varying jump intensity or volatility smiles in implied volatility surfaces; assumes jumps are uncorrelated with diffusion volatility, which empirical evidence suggests may not hold. **Practical Applications**: Used in volatility modeling for equity indices and individual stocks to capture crash risk; essential for pricing exotic options with barrier or lookback features that are sensitive to large moves; employed in risk management for Value-at-Risk calculations under extreme market conditions; forms basis for more advanced models like Bates (1996) stochastic volatility with jumps. **Related Concepts**: Extends to compound Poisson processes with lognormal jumps; foundation for Lévy process models including Variance Gamma and Normal Inverse Gaussian; connects to catastrophe modeling in insurance where jump sizes represent large loss events; generalizes to time-changed Lévy processes in models like Carr-Wu finite activity approximations. **Implementation Considerations**: Parameters (μ_J, σ_J², λ) estimated via maximum likelihood using historical return data with filtering to identify jump components; numerical methods like Fast Fourier Transform accelerate option pricing when analytical solutions exist; calibration challenges arise from identifiability issues between diffusion and jump parameters; Monte Carlo simulation requires careful discretization of jump times to avoid bias in path-dependent options.

**Fokker-Planck Equation**
$$\frac{\partial p}{\partial t} = -\frac{\partial}{\partial S}[(r-q)Sp] + \frac{1}{2}\frac{\partial^2}{\partial S^2}[\sigma_{LV}^2 S^2 p]$$
Forward equation for probability density under local volatility model. Describes evolution of state price density over time.

**Kolmogorov Forward Equation**
$$\frac{\partial p(x, t|x_0, t_0)}{\partial t} = -\frac{\partial}{\partial x}[\mu(x|t)p] + \frac{1}{2}\frac{\partial^2}{\partial x^2}[\sigma^2(x|t)p]$$
Forward Kolmogorov equation describing evolution of transition probability density for diffusion processes.

**CGMY Process Characteristic**
$$\nu(dx) = C \frac{e^{-G|x|}}{|x|^{1+Y}} dx_{x<0} + C \frac{e^{-Mx}}{x^{1+Y}} dx_{x>0}$$
CGMY Lévy process characteristic function component. Generalizes variance gamma model with four parameters controlling jump behavior.

**Growth Condition for Convergence**
$$\text{under critical growth condition } \sup_u \|\partial^u(f/q)\| \leq Ce^{\frac{1}{2}\|x\|^2+B\|x\|} \text{ with Gaussian proposals}$$
Technical condition for convergence of Monte Carlo methods. Ensures proposal distribution adequately covers target distribution.

## Numerical Methods

**Neural Network Approximation**
$$\hat{V}(S, t;\theta) \approx V(S, t)$$
Deep learning approximation for option pricing. Neural network trained to approximate complex pricing functions.

**Crank-Nicolson Finite Difference**
$$\frac{\partial V}{\partial t} + (r-q)S \frac{\partial V}{\partial S} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} - rV = 0$$
Partial differential equation for option pricing solved using Crank-Nicolson scheme. Unconditionally stable finite difference method.

**Binomial Tree Price (Complete)**
$$V_0 = \exp(-rT) \sum_{j=0}^n C(n,j) p^j (1-p)^{n-j} \text{Payoff}(S_0 u^j d^{n-j})$$
Complete binomial tree pricing formula. Sum over all paths weighted by risk-neutral probabilities.

**Cholesky Decomposition**
$$\Sigma = L \times L^T$$
Matrix decomposition for generating correlated random variables. Essential for Monte Carlo simulation of multiple assets.

**Crank-Nicolson Scheme**
$$-\frac{\lambda}{2} u_{i+1}^{n+1} + (1+\lambda)u_i^{n+1} - \frac{\lambda}{2} u_{i-1}^{n+1} = \frac{\lambda}{2} u_{i+1}^n + (1-\lambda)u_i^n + \frac{\lambda}{2} u_{i-1}^n$$
Second-order accurate implicit finite difference scheme. Unconditionally stable for parabolic PDEs in option pricing.

**Density from Characteristic Function**
$$f(x) = \frac{1}{2\pi} \int_{-\infty}^\infty e^{-iux} \varphi(u) du$$
Fourier inversion for probability density function. Enables option pricing when characteristic function is known but density is not.

**Explicit Euler Scheme**
$$u_i^{n+1} = u_i^n + \lambda(u_{i+1}^n - 2u_i^n + u_{i-1}^n)$$
First-order explicit finite difference scheme for PDEs. Conditionally stable requiring small time steps.

**Importance Sampling**
$$\hat{V}_{IS} = \frac{1}{N} \sum_{i=1}^N h(X_i) \frac{f(X_i)}{q(X_i)}$$
Variance reduction technique for Monte Carlo simulation. Uses different sampling distribution to improve efficiency.

**Least-Squares Monte Carlo**
$$V(t_i, S_{t_i}) = \max(\text{exercise value}, \mathbb{E}^\mathbb{Q}[e^{-r(t_{i+1}-t_i)} V(t_{i+1}, S_{t_{i+1}})|S_{t_i}])$$
Longstaff-Schwartz algorithm for American option pricing. Uses regression to estimate continuation values.

**Longstaff-Schwartz Algorithm**
$$V_j = \max(\text{Exercise}_j, e^{-r\Delta t} \mathbb{E}[V_{j+1}|S_j])$$
Backward induction algorithm for American options using least-squares regression to estimate continuation values.

**Monte Carlo Error**
$$\varepsilon \propto \frac{\sigma_{\text{sample}}}{\sqrt{M}}$$
Convergence rate for Monte Carlo simulation. Error decreases with inverse square root of number of paths M.

**Multi-Level Monte Carlo**
$$\mathbb{E}_P[f] = \sum_{l=0}^L \frac{1}{M_l} \sum_{m=1}^{M_l} (Y_l^{(m)} - Y_{l-1}^{(m)})$$
Variance reduction technique using multiple discretization levels. Achieves optimal complexity for SDE simulation.

**Sobol Sequence (Quasi-Monte Carlo)**
$$D_N^*(x_1, ..., x_N) = O\left(\frac{(\log N)^s}{N}\right)$$
Low-discrepancy sequence for quasi-Monte Carlo integration. Achieves nearly 1/N convergence rate compared to 1/√N for random sampling.

## Option Pricing

**Put Option Price (Black-Scholes)**
$$P_t = K e^{-r(T-t)} \Phi(-d_2) - S_t \Phi(-d_1)$$
Black-Scholes formula for European put option. d_1 and d_2 calculated using standard Black-Scholes parameters.

**Risk-Neutral Density (Breeden-Litzenberger)**
$$\frac{\partial^2 C}{\partial K^2} = e^{-rT} f(K,T)$$
Extracts risk-neutral probability density from option prices. Second derivative of call price with respect to strike gives the implied density.

**Jump-Diffusion Option Pricing**
$$P(S_T > K|\text{jumps}) = \sum_{n=0}^\infty \frac{(\lambda T)^n e^{-\lambda T}}{n!} \cdot \Phi(d_n)$$
Option pricing under Merton jump-diffusion model. Sum over Poisson-distributed jump counts with adjusted Black-Scholes formulas.

**Fourier Transform Option Pricing**
$$C(K) = S_0 - \frac{e^{-rT}K}{\pi} \int_0^\infty \frac{\text{Re}[e^{-iuk} \varphi(u - i/2)]}{u^2 + 1/4} du$$
Option pricing via Fourier transform methods when characteristic function φ(u) is known. Efficient for models with closed-form characteristic functions.

**Basket Moment Matching**
$$\text{For moment matching to lognormal: } \mathbb{E}[S_T^{\text{Basket}}] = e^{\mu + \sigma^2/2} \text{ and } \mathbb{E}[(S_T^{\text{Basket}})^2] = e^{2\mu + 2\sigma^2}$$
Moment matching approximation for basket options. Matches first two moments of basket to equivalent lognormal distribution for pricing.

**Heston Characteristic Function**
$$\varphi(u) = \mathbb{E}[e^{iu \ln(S_T)}] = \exp(iu \ln(S_0) + iu(r - \sigma^2/2 - \lambda\kappa)T - u^2\sigma^2T/2 + \lambda T(e^{iu\mu_J - u^2\delta^2/2} - 1))$$
Characteristic function for Heston stochastic volatility model with jumps. Enables Fourier-based option pricing methods.

**Asian Options (Geometric Average)**
$$C_{\text{geom}} = e^{-r(T-t)} (G_t e^{\bar{\mu}(T-t)} \Phi(d_1) - K \Phi(d_2))$$
Closed-form solution for geometric Asian options. Effective volatility reduced to σ/√3 due to averaging effect.

**Barrier Options (Down-and-Out Call)**
$$C_{\text{DAO}} = C_{\text{BS}} - \left(\frac{H}{S_t}\right)^{2\lambda} C_{\text{BS}}(H^2/S_t, K, T, r, q, \sigma)$$
Analytical formula for down-and-out barrier options using reflection principle. λ = (r-q+σ²/2)/σ².

**Basket Options (Moment Matching)**
$$\mathbb{E}[B_T] = \sum w_i F_i \text{ and } \text{Var}(\ln B_T) \approx \frac{\sum_{i j} w_i w_j F_i F_j \rho_{ij} \sigma_i \sigma_j T}{(\sum w_i F_i)^2}$$
Moment matching approximation for basket options. Treats basket as single lognormal asset with matched moments.

**Black-76 Formula (Futures Options)**
$$C(F_t, K, T, r, \sigma) = e^{-r(T-t)} [F_t \Phi(d_1) - K \Phi(d_2)]$$
Black's model for options on futures. Standard market model for interest rate and commodity derivatives.

**Black-Scholes Partial Differential Equation**
$$\frac{\partial V}{\partial t} + \frac{1}{2} \sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} + r S \frac{\partial V}{\partial S} - rV = 0$$
Fundamental PDE governing European option prices under Black-Scholes assumptions. Must satisfy terminal payoff condition.

**Black-Scholes-Merton Formula**
$$C(S_t, K, T, r, q, \sigma) = S_t e^{-q(T-t)} \Phi(d_1) - K e^{-r(T-t)} \Phi(d_2)$$
Nobel Prize-winning formula for European call options. Fundamental pricing relationship in quantitative finance.

**CIR Conditional Density**
$$r_T | r_t \sim \text{Non-central } \chi^2 \text{ with df} = \frac{4\kappa\theta}{\sigma^2} \text{ and } \lambda = \frac{4\kappa r_t e^{-\kappa(T-t)}}{\sigma^2(1-e^{-\kappa(T-t)})}$$
Conditional distribution for Cox-Ingersoll-Ross short rate model. Non-central chi-squared with parameters ensuring positivity.

**Charm (Delta Decay)**
$$\text{Charm} = \frac{\partial^2 V}{\partial t\partial S} = -\frac{\partial \Delta}{\partial t} = -\frac{\partial \Theta}{\partial S}$$
Third-order Greek measuring how delta changes over time. Important for delta hedging rebalancing frequency decisions.

**Continuous Compounding**
$$P(t, T) = e^{-y(t, T)(T-t)}$$
Relationship between discount factors and continuously compounded yields. Fundamental time value of money relationship.

**Delta Sensitivity**
$$\Delta_C = \frac{\partial C}{\partial S} = e^{-q(T-t)} \Phi(d_1)$$
First-order price sensitivity to underlying asset price. Measures hedge ratio for options and ranges from 0 to 1 for calls.

**Exchange Options (Margrabe)**
$$V(S^1_t, S^2_t, T) = S^1_t e^{-q_1(T-t)} \Phi(d_1) - S^2_t e^{-q_2(T-t)} \Phi(d_2)$$
Option to exchange one asset for another. Closed-form solution using ratio of asset prices as underlying variable.

**Explicit Finite Difference Scheme**
$$V_i^{j+1} = \alpha_i V_{i-1}^j + \beta_i V_i^j + \gamma_i V_{i+1}^j$$
First-order explicit scheme for option pricing PDEs. Simple implementation but conditionally stable requiring small time steps.

**G2++ Bond Price Formula**
$$P(t, T) = \frac{P(0, T)}{P(0, t)} \exp\left(-\frac{1}{2}(V(t, T) - V(0, T) + V(0, t)) - M_x(t, T)x_t - M_y(t, T)y_t\right)$$
Closed-form bond price solution for G2++ two-factor Gaussian model. Affine term structure with explicit formulas.

**Gap Options**
$$C_{\text{gap}} = S_t e^{-q(T-t)} \Phi(d_1) - K_2 e^{-r(T-t)} \Phi(d_2)$$
Options with trigger level K_1 different from strike K_2. Pays off only if underlying exceeds trigger and strike conditions.

**Hull-White Bond Price**
$$P(t, T) = \frac{P(0, T)}{P(0, t)} \exp(B(t, T)f(0, t) - \sigma^2B(t, T)^2\frac{1-e^{-2\kappa t}}{4\kappa} - B(t, T)r_t)$$
Bond price formula for Hull-White extended Vasicek model. Time-dependent parameters allow exact fit to initial yield curve.

**Least-Squares Monte Carlo**
$$V(t_i, S_{t_i}) = \max(\text{exercise value}, \mathbb{E}^\mathbb{Q}[e^{-r(t_{i+1}-t_i)} V(t_{i+1}, S_{t_{i+1}})|S_{t_i}])$$
American option pricing using regression to estimate continuation values. Backward induction with least-squares approximation.

**Lookback Options (Floating Strike)**
$$C_{\text{floating}} = S_t e^{-q(T-t)} \Phi(a_1) - m_t e^{-r(T-t)} \Phi(a_2) + \text{additional terms}$$
Options with payoff based on minimum price achieved during option life. Path-dependent exotic with closed-form solutions.

**Option on a Call (Compound)**
$$C_{\text{compound}} = S_t e^{-qT_2} M(a_1, b_1;\sqrt{T_1/T_2}) - K_2 e^{-rT_2} M(a_2, b_2;\sqrt{T_1/T_2}) - e^{-rT_1} K_1 \Phi(a_2)$$
Compound option to buy another option. Requires bivariate normal distribution M for valuation due to two exercise decisions.

**Rainbow Options (Maximum of Two)**
$$C_{\max} = S^1_t e^{-q_1(T-t)} \Phi(d_{11}) + S^2_t e^{-q_2(T-t)} \Phi(d_{22}) - K e^{-r(T-t)} M(d_{11}-\sigma_1\sqrt{T-t}, d_{22}-\sigma_2\sqrt{T-t}; \rho)$$
Option on maximum of two assets. Uses bivariate normal distribution to account for correlation between underlying assets.

**Reset Date Valuation**
$$P(t) = \sum_{i=1}^n \mathbb{E}^\mathbb{Q}[L(T_{i-1}, T_i) \delta_i e^{-\int_t^{T_i} r_s ds}|\mathcal{F}_t] + \mathbb{E}^\mathbb{Q}[e^{-\int_t^{T_n} r_s ds}|\mathcal{F}_t]$$
Floating rate note valuation at reset dates. Present value of future LIBOR payments plus principal repayment.

**Rho Interest Rate Sensitivity**
$$\rho_C = \frac{\partial C}{\partial r} = K(T-t) e^{-r(T-t)} \Phi(d_2)$$
Sensitivity of option price to changes in risk-free interest rate. Calls have positive rho puts have negative rho.

**SABR Implied Volatility**
$$\sigma_{\text{BS}}(K) = \frac{\alpha}{(FK)^{(1-\beta)/2}} \times \frac{z}{x(z)} \times [1 + \text{adjustment terms}]$$
Market standard model for interest rate volatility smile. Four-parameter model capturing ATM volatility skew and smile.

**Spread Options (Kirk Approximation)**
$$C \approx e^{-r(T-t)} (F_1 \Phi(d_1) - (F_2 + K) \Phi(d_2))$$
Approximation for options on spread between two assets. Useful for crack spreads location spreads and similar instruments.

**Theta Time Decay**
$$\Theta_C = -\frac{\partial C}{\partial t} = -\frac{S e^{-q(T-t)} \sigma \phi(d_1)}{2\sqrt{T-t}} + qS e^{-q(T-t)} \Phi(d_1) - rK e^{-r(T-t)} \Phi(d_2)$$
Time decay measuring how option value changes as expiration approaches. Always negative for European options.

**Vanna Cross Sensitivity**
$$\text{Vanna} = \frac{\partial^2 V}{\partial S\partial \sigma} = -\frac{d_1 \phi(d_1)}{\sigma}$$
Second-order Greek measuring sensitivity of delta to volatility changes. Important for volatility trading strategies.

**Vasicek Bond Price**
$$P(t, T) = A(t, T) e^{-B(t, T) r_t}$$
Affine solution for Vasicek model bond prices. Closed-form expression with A and B functions of model parameters.

**Vasicek Short Rate Distribution**
$$r_T | r_t \sim \mathcal{N}(r_t e^{-\kappa(T-t)} + \theta(1-e^{-\kappa(T-t)}), \frac{\sigma^2}{2\kappa}(1-e^{-2\kappa(T-t)}))$$
Conditional distribution of short rate in Vasicek model. Gaussian with mean-reverting drift and time-dependent variance.

**Volga Second-Order Volatility**
$$\text{Volga} = \frac{\partial^2 V}{\partial \sigma^2} = S_t \phi(d_1) d_1 d_2 \sqrt{T-t}$$
Second-order volatility sensitivity measuring convexity of option price to volatility changes. Important for volatility gamma.

**Binomial Tree Pricing**
$$V_0 = e^{-r\Delta t} \sum_{i=0}^n C(n,i) p^i (1-p)^{n-i} \max(S_0 u^i d^{n-i} - K, 0)$$
Cox-Ross-Rubinstein binomial model for option pricing. Complete enumeration of all paths with risk-neutral probabilities.

**Black-Scholes for Equity as Call**
$$E_t = V_t \Phi(d_1) - D e^{-r(T-t)} \Phi(d_2)$$
Merton model treating equity as call option on firm value. Strike equals debt face value D with maturity matching debt maturity.

**Black-76 for Futures Options**
$$C = e^{-r(T-t)} [F_t \Phi(d_1) - K \Phi(d_2)]$$
Black's model for European options on futures contracts. Standard for interest rate and commodity derivatives.

**Binomial Tree Parameters**
$$u = e^{\sigma\sqrt{\Delta t}}, \quad d = e^{-\sigma\sqrt{\Delta t}}, \quad p = \frac{e^{(r-q)\Delta t} - d}{u - d}$$
Cox-Ross-Rubinstein binomial tree parameters. Up and down factors plus risk-neutral probability for option pricing.

**Bootstrap for Discount Factors**
$$P(T_i) = \frac{1 - \sum_{j=1}^{i-1} c_j P(T_j)}{1 + c_i}$$
Iterative construction of zero-coupon yield curve from coupon bond prices. Fundamental bootstrapping technique.

**Cross-Currency Swap Valuation**
$$V_{\text{basis}} = \sum_{i=1}^n \delta_i (R_{\text{dom}} - R_{\text{for}} \times \text{FX}_{\text{fwd}}) P(0, T_i)$$
Valuation of cross-currency basis swaps accounting for FX forward points and interest rate differentials.

**FX Volatility Smile**
$$\sigma_{\text{imp}}(K) = \sigma_{\text{ATM}} + \text{Skew} \times \ln(K/F) + \frac{1}{2} \text{Volga} \times \ln^2(K/F)$$
Parametric representation of FX implied volatility smile. Captures ATM volatility skew and curvature characteristics.

**Forward Rate Agreement**
$$V_{\text{FRA}} = \delta (F_{\text{actual}} - F_{\text{contract}}) P(0, T)$$
Valuation of Forward Rate Agreement based on difference between actual and contracted forward rates.

**Milstein SDE Discretization**
$$S_{t+\Delta t} = S_t + (r-q)S_t \Delta t + \sigma S_t \sqrt{\Delta t}Z + \frac{1}{2} \sigma^2 S_t (Z^2-1)\Delta t$$
Higher-order SDE discretization scheme. Includes additional term for improved convergence in Monte Carlo simulation.

**Nelson-Siegel Extended**
$$y(\tau) = \beta_0 + \beta_1 \frac{1-e^{-\lambda_1 \tau}}{\lambda_1 \tau} + \beta_2 \left(\frac{1-e^{-\lambda_1 \tau}}{\lambda_1 \tau} - e^{-\lambda_1 \tau}\right) + \beta_3 \left(\frac{1-e^{-\lambda_2 \tau}}{\lambda_2 \tau} - e^{-\lambda_2 \tau}\right)$$
Svensson extension of Nelson-Siegel model with additional curvature factor. Improved flexibility for yield curve fitting.

**Trinomial Tree Pricing**
$$V_0 = e^{-r\Delta t} \left[p_u \sum V_u + p_m \sum V_m + p_d \sum V_d\right]$$
Trinomial tree extension allowing for middle branch. Improved stability and convergence for certain option types.

**t-Copula for Dependence**
$$C(u_1, u_2; \rho, \nu) = t_{\nu, \rho}(t_\nu^{-1}(u_1), t_\nu^{-1}(u_2))$$
Copula function with Student-t marginal distributions. Captures tail dependence better than Gaussian copula for extreme events.

**APT with Idiosyncratic Risk**
$$\mathbb{E}[R_i] = r_f + \sum_{j=1}^k \beta_{ij} \lambda_j + \theta_i \sigma_{\varepsilon i}$$
Extended APT incorporating idiosyncratic risk premium. Allows for pricing of non-systematic risk components.

**Effective Duration Calculation**
$$D_{\text{Eff}} = -\frac{1}{P} \frac{P(y+\Delta y) - P(y-\Delta y)}{2\Delta y}$$
Numerical duration calculation for bonds with embedded options. Captures effective interest rate sensitivity.

**Hull-White Extended Vasicek**
$$dr_t = (\theta(t) - \kappa r_t) dt + \sigma dW_t^\mathbb{Q}$$
Time-dependent extension of Vasicek model allowing exact calibration to initial yield curve through θ(t) function.

**OIS Swap Valuation**
$$V_{\text{OIS}} = \sum_{i=1}^n \left(\frac{1}{n} \sum_{j \in \text{period } i} r_{oj}\right) P(0, T_i) - \sum_{i=1}^n R_{\text{fixed}} \delta_i P(0, T_i)$$
Overnight Index Swap valuation using compounded overnight rates versus fixed leg payments.

**VIX Index Calculation**
$$\text{VIX}^2 = \frac{2}{T} \sum_i \frac{\Delta K_i}{K_i^2} e^{rT} Q(K_i) - \frac{1}{T}\left(\frac{F}{K_0} - 1\right)^2$$
CBOE Volatility Index calculation from SPX options. Model-free estimate of expected 30-day volatility.

**Forward Rate Extraction**
$$f(t, T) = -\frac{\partial}{\partial T} \ln P(t, T)$$
Relationship between instantaneous forward rates and discount factors. Fundamental for yield curve analysis.

**Key Rate Duration Numerical**
$$\frac{\partial P}{\partial y_{t_i}} \approx -\frac{P(y_{t_i}+\Delta) - P(y_{t_i}-\Delta)}{2\Delta} \times \frac{1}{P}$$
Numerical calculation of key rate duration measuring sensitivity to specific yield curve points.

**American Option Monte Carlo**
$$V_j = \max(\text{Exercise}_j, e^{-r\Delta t} \mathbb{E}[V_{j+1}|S_j])$$
Least-squares Monte Carlo for American options. Regression-based estimation of continuation values for optimal exercise.

**Theta Time Decay Calculation**
$$\Theta_{\text{call}} = -\frac{S_t \phi(d_1) \sigma}{2\sqrt{T-t}} - rK e^{-r(T-t)} \Phi(d_2)$$
Time decay for European call options. Measures rate of value loss as expiration approaches.

**Heath-Jarrow-Morton Framework**
$$df(t, T) = \mu(t, T)dt + \sigma(t, T)dW_t^\mathbb{Q}$$
General framework for arbitrage-free modeling of entire forward rate curve evolution.

**Rho Interest Rate Sensitivity**
$$\rho_{\text{call}} = \frac{\partial V}{\partial r} = K(T-t)e^{-r(T-t)} \Phi(d_2)$$
Sensitivity of option price to risk-free rate changes. Positive for calls negative for puts due to present value effects.

**ADI Finite Difference Method**
$$(1 - \Delta t/2 A_x) u^* = (1 + \Delta t/2 A_y) u^n$$
Alternating Direction Implicit method for multi-dimensional PDEs. Efficient for options with multiple state variables.

**ARIMA Time Series Model**
$$(1 - \sum_{i=1}^p \phi_i L^i)(1 - L)^d X_t = (1 + \sum_{j=1}^q \theta_j L^j) \varepsilon_t$$
Autoregressive Integrated Moving Average model for time series forecasting. Standard tool for statistical arbitrage.

**LIBOR Market Model Advanced**
$$dL_i(t) = \mu_i(t)L_i(t)dt + \sigma_i(t)L_i(t)dW_i(t)$$
Multi-factor model for forward LIBOR rates with correlation structure. Captures realistic co-movement across yield curve.

**Rough Heston Affine Structure**
$$\mathbb{E}[\exp(uX_T + vV_T)|\mathcal{F}_t] = \exp(\phi(T-t, u, v) + \psi(T-t, u, v)V_t + \int_t^T \chi(T-s, u, v)Z_s ds)$$
Characteristic function for rough Heston model with fractional volatility dynamics. Preserves affine structure despite non-Markovian properties.

**Almgren-Chriss Optimal Execution**
$$\mathbb{E}[C] = \sum \tau|n_k| + \frac{1}{2} \gamma n_k^2 + \lambda \sigma^2$$
Classic model balancing market impact costs against timing risk in optimal trade execution. Fundamental for algorithmic trading.
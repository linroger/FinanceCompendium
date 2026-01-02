# Financial Equations - Corrected and Distilled

## Commodities

### Calendar Roll Return
**Equation:** `RY = ln F(T_2)/F(T_1)`  
**Notes:** Return from rolling futures from near to far contract. Negative in contango (must buy high), positive in backwardation. Determinant of commodity index returns.

### Natural Gas Storage (Working's Model)
**Equation:** `V = E[ max( S_T - S_0 exp((r+u)T), 0) ) ]`  
**Notes:** Commodity pricing model for storage valuation

## Credit Models

### Risk-Neutral Default Probability
**Equation:** `PD^{Q} = Φ(-d_2)`  
**Notes:** Theoretical Context: Under risk-neutral measure, probability of default is Φ(-d_2) which depends on asset value, debt level, volatility, and time to maturity

### Merton Structural Model
**Equation:** `V_T = D + E_T`  
**Notes:** Credit risk modeling framework where firm value equals debt plus equity

### Black-Cox First Passage Time Model
**Equation:** `τ = inf{ t ≥ 0 : V_t ≤ K(t) }`  
**Notes:** Default time as first hitting time of barrier K(t). Time-dependent barrier often exponential

### Duffie-Singleton Reduced-Form Model
**Equation:** `P̃(t,T) = E^{Q}[ e^{-∫_t^T (r_s + λ_s) ds} | ℱ_t ]`  
**Notes:** λ_t: Hazard rate (default intensity) process. r_s: Risk-free short rate. P̃(t,T): Price of defaultable bond

### Merton Jump Diffusion
**Equation:** `dS_t/S_t = (r-q-λ μ̄) dt + σ dW_t + (J_t - 1) dN_t`  
**Notes:** Models sudden jumps in asset prices using Poisson process

### Bilateral CVA
**Equation:** `CVA = (1-R_C) ∫_0^T E[(V_t)^+] dPD_C(t)`  
**Notes:** Credit valuation adjustment for counterparty default risk

### Black-Cox Model (First Passage)
**Equation:** `τ = inf { t > 0 : V_t ≤ H(t) }`  
**Notes:** Extension of Merton model allowing early default when asset value touches barrier

### CDO Synthetic Tranche
**Equation:** `L_{tranche} = max(L_{port} - A, 0) - max(L_{port} - D, 0)`  
**Notes:** Tranched credit exposure via CDS

### CDS Par Spread
**Equation:** `s = (1-R) ∫_0^T P(0,t) λ(t) e^{-∫_0^t λ(u)du} dt / ∫_0^T P(0,t) e^{-∫_0^t λ(u)du} dt`  
**Notes:** Fair CDS spread equating premium leg to protection leg

### CDS Protection Leg
**Equation:** `PV_{protection} = (1-R) ∫_0^T P(0,t) λ(t) e^{-∫_0^t λ(u)du} dt`  
**Notes:** Present value of CDS protection payments

### Credit Valuation Adjustment
**Equation:** `CVA = (1-R) ∫_0^T E^{Q}[ (V_t)^+ ] dPD(0,t)`  
**Notes:** CVA represents present value of expected losses from counterparty default

### Distance to Default
**Equation:** `DD = (ln(V_0/F) + (μ - σ_V^2/2)T)/(σ_V √T)`  
**Notes:** Measures how many standard deviations firm assets are from default threshold

### Excess Spread
**Equation:** `ES = Σ_{i=1}^n (AssetRate_i - LiabilityRate_i) * Balance_i`  
**Notes:** Credit enhancement from spread between assets and liabilities

### Forward CDS
**Equation:** `V_{forward} = V_{CDS}(T_f, T_e)`  
**Notes:** Forward starting credit default swap

### G-Spread (Government Spread)
**Equation:** `G = y_{bond} - y_{govt}`  
**Notes:** Spread to government curve at each maturity

### Jarrow-Turnbull Intensity
**Equation:** `P(τ > t) = exp(-∫_0^t λ(s) ds)`  
**Notes:** Reduced form model where default is Poisson arrival with intensity λ

### Merton Equity Value
**Equation:** `E_t = V_t Φ(d_1) - D exp(-r(T-t)) Φ(d_2)`  
**Notes:** Merton model equity valuation using Black-Scholes framework

### Merton Jump-Diffusion
**Equation:** `dS_t/S_{t-} = (μ - λk) dt + σ dW_t + (e^J - 1) dN_t`  
**Notes:** Models sudden jumps in asset prices using Poisson process

### Par CDS Spread
**Equation:** `s_{par} = (1-R) ∫_0^T P(0, T_i) Q(τ > T_i) / ∫_0^T P(0, T_i) Q(τ > T_i)`  
**Notes:** Fair par spread for CDS

### Probability of Default (Risk-Neutral)
**Equation:** `PD^{Q} = Φ(-d_2)`  
**Notes:** Risk-neutral default probability under Merton framework

### Survival Probability
**Equation:** `P(τ > T | ℱ_t) = exp(-∫_t^T λ(s) ds)`  
**Notes:** Probability that no default occurs before time T given information at time t

## Econometrics

### Kalman Filter (Linear-Gaussian)
**Equation:** `x_{t|t} = x_{t|t-1} + K_t (y_t - H x_{t|t-1})`  
**Notes:** Optimal recursive filter for linear state space models

### Pairs Trading
**Equation:** `Z_t = (S_t^(1) - β S_t^(2) - μ)/σ`  
**Notes:** Spread of cointegrated pair. Trade when Z deviates from 0

## Fixed Income

### Average Life
**Equation:** `AL = Σ_{t=1}^N t × CF_t^{principal} / Σ_{t=1}^N CF_t^{principal}`  
**Notes:** Weighted average time to receipt of principal payments for MBS

### Bond Pricing Formula
**Equation:** `P = Σ_{t=1}^T C/(1+y)^t + F/(1+y)^T`  
**Notes:** Fundamental DCF formula for coupon bond

### Bootstrap Method
**Equation:** `P(T_i) = [1 - Σ_{j=1}^{i-1} c_j P(T_j)]/(1 + c_i)`  
**Notes:** Recursive extraction of zero-coupon prices from coupon bonds

### Breakeven Inflation
**Equation:** `BEI = (P_{nominal}/P_{real})^{1/T} - 1`  
**Notes:** Market expectation of inflation from TIPS spread

### Continuous Compounding
**Equation:** `r(t,T) = -ln(P(t,T))/(T-t)`  
**Notes:** Continuously compounded zero rate from discount factor

### Convexity
**Equation:** `C = (1/P) ∂²P/∂y²`  
**Notes:** Second-order price sensitivity to yield changes

### Cost of Carry (Commodities)
**Equation:** `F_0(T) = S_0 exp((r + u - y)T)`  
**Notes:** Futures price equals spot times cost of carry factors

### Coupon Bond Price (Decomposition)
**Equation:** `P = Σ_{i=1}^n c_i P(t, T_i)`  
**Notes:** Bond price as sum of discounted cash flows

### State Price Density Process
**Equation:** `π_t = e^{-rt} ζ_t`  
**Notes:** State price density under risk-neutral measure

### Put Option Price (Black-Scholes)
**Equation:** `P_t = K e^{-r(T-t)} Φ(-d_2) - S_t Φ(-d_1)`  
**Notes:** Black-Scholes put option pricing formula

### Risk-Neutral Density (Breeden-Litzenberger)
**Equation:** `∂²C/∂K² = e^{-rT} f(K,T)`  
**Notes:** Extract risk-neutral density from option prices

### Put Option Price (Garman-Kohlhagen)
**Equation:** `P = K e^{-r_d T} Φ(-d_2) - S_0 e^{-r_f T} Φ(-d_1)`  
**Notes:** FX put option pricing with domestic and foreign rates

### Covered Interest Rate Parity
**Equation:** `F_0 = S_0 e^{(r_d - r_f)T}`  
**Notes:** No-arbitrage relationship between spot and forward FX rates

### Derivative Pricing Formula
**Equation:** `V(t, S) = e^{-r(T-t)} E^{Q}[ Φ(S_T) | S_t = S ]`  
**Notes:** Fundamental risk-neutral pricing formula

### CDO Tranche Pricing
**Equation:** `Price_{market}[a,d] = ∫_0^T e^{-rt} dE^Q[L_{[a,d]}(t)]`  
**Notes:** Market price of CDO tranche with attachment/detachment points

### CDS Protection PV
**Equation:** `PV(Protection) = N_0 ∫_0^T E[e^{-∫_0^t (r_s + λ_s) ds}] dEL_t^{(A,D)}`  
**Notes:** Present value of CDS protection leg

### Jump-Diffusion Option Pricing
**Equation:** `P(S_T > K | jumps) = Σ_{n=0}^∞ (λT)^n e^{-λT}/n! Φ(d_n)`  
**Notes:** Option pricing with jump-diffusion dynamics

### Survival Probability
**Equation:** `Q(τ > T) = E^{Q}[ e^{-∫_0^T λ_s ds} ]`  
**Notes:** Survival probability under risk-neutral measure

### Jump Size Distribution
**Equation:** `ln J_t ~ N(μ_J, σ_J^2), μ̄ = e^{μ_J + σ_J^2/2} - 1`  
**Notes:** Lognormal jump size distribution in Merton model

### Joint Default Probability
**Equation:** `P(τ_i ≤ t for all i ∈ S) = Φ_S( {Φ^{-1}(1 - e^{-h_i t})}_{i∈S} ; {√{ρ_i ρ_j}}_{i,j∈S} )`  
**Notes:** Joint default probability using Gaussian copula

### Fourier Transform Option Pricing
**Equation:** `C(K) = S_0 - e^{-rT}K/π ∫_0^∞ Re[e^{-iuk} φ(u - i/2)] / (u² + 1/4) du`  
**Notes:** Option pricing using characteristic function

### CDS Premium Leg
**Equation:** `s_{A,D} N_0 (D - A) ∫_0^T E[e^{-∫_0^t r_s ds}] dt = N_0 ∫_0^T E[e^{-∫_0^t r_s ds} dL_t^{(A,D)}]`  
**Notes:** CDS premium leg equals protection leg

### Bond Pricing with OAS
**Equation:** `P = Σ_i E^{Q} [ CF_i(path)/e^{∫_0^{t_i} (r_s + OAS) ds} ]`  
**Notes:** Bond pricing with option-adjusted spread

### Conditional Default Probability
**Equation:** `p_i(z,t) = Φ( (Φ^{-1}(1 - e^{-h_i t}) - √{ρ_i} z)/√{1-ρ_i} )`  
**Notes:** Default probability conditional on systematic factor

### Basket Option Moment Matching
**Equation:** `E[(S_T^Basket)^2] = Σ_{i=1}^n Σ_{j=1}^n w_i w_j S_0^i S_0^j e^{(2r + σ_i σ_j ρ_{ij})T}`  
**Notes:** Second moment of basket for moment matching

### CDO Tranche Spread
**Equation:** `s_{A,D} = E[∫_0^T e^{-rt} dProtection_t^{(A,D)}]/∫_0^T e^{-rt} E[1_{τ_m > t}] dt N_0 (D - A)`  
**Notes:** Fair spread for CDO tranche

### Optimal Storage Policy
**Equation:** `V = max_{q_i ∈ [q_{min}, q_{max}]} E^{Q} [ Σ_{i=1}^N e^{-r t_i} q_i (S_{t_i} - K) ]`  
**Notes:** Optimal commodity storage valuation

### CGMY Model
**Equation:** `ν(dx) = C e^{-G|x|}/|x|^{1+Y} 1_{x<0} + C e^{-Mx}/x^{1+Y} 1_{x>0}`  
**Notes:** CGMY jump measure for infinite activity processes

### Moment Matching Conditions
**Equation:** `E[S_T^Basket] = e^{μ + σ^2/2}, E[(S_T^Basket)^2] = e^{2μ + 2σ^2}`  
**Notes:** Moment matching to lognormal distribution

### Discount Factor Relationships
**Equation:** `DF(t,T) = P(t,T) = 1/(1+y(T-t))^{T-t} = exp(-r(T-t))`  
**Notes:** Equivalent representations of discount factors

### FX Forward Points
**Equation:** `Points = S_0 * (r_d - r_f) * T`  
**Notes:** Forward premium/discount in FX markets

### Fokker-Planck Equation
**Equation:** `∂p/∂t = -∂/∂S[(r-q)Sp] + ½∂²/∂S²[σ_{LV}² S² p]`  
**Notes:** Forward PDE for probability density under local volatility

### Geometric Series
**Equation:** `Σ_{k=0}^∞ r^k = 1/(1-r) for |r| < 1`  
**Notes:** Foundation for discounting cash flows

### Gold Lease Rate
**Equation:** `LeaseRate = r_{risk-free} - Cost of Carry`  
**Notes:** Return on gold lending transactions

### I-Spread (Interpolated Spread)
**Equation:** `I = y_{bond} - y_{benchmark}`  
**Notes:** Spread to specific benchmark curve

### Key Rate Duration
**Equation:** `KRD_k = -(1/P) ∂P/∂y_k`  
**Notes:** Sensitivity to specific yield curve points

### Modified Duration
**Equation:** `D_{Mod} = D_{Mac}/(1 + y/m)`  
**Notes:** Price sensitivity to yield changes

### Nelson-Siegel Model
**Equation:** `y(τ) = β_0 + β_1 (1-e^{-τ/λ})/(τ/λ) + β_2 ((1-e^{-τ/λ})/(τ/λ) - e^{-τ/λ})`  
**Notes:** Parametric yield curve fitting model

### PSA Prepayment Model
**Equation:** `CPR(t) = min(t/30, 1) × 6%`  
**Notes:** Standard prepayment benchmark for MBS

### Rational Prepayment Model
**Equation:** `R_t = (dV/dr)/(dV/dr_{refi})`  
**Notes:** Prepayment rate as ratio of yield incentives

### Real Yield
**Equation:** `y_{real} = (1 + y_{nom})/(1 + π) - 1`  
**Notes:** Yield after inflation adjustment

### Silver Lease Rate
**Equation:** `SilverLeaseRate = r_{risk-free} + u - y`  
**Notes:** Silver forward pricing relationship

### TIPS Pricing
**Equation:** `P^{TIPS}(t,T) = P^{real}(t,T) ⋅ I_t`  
**Notes:** Inflation-linked bond pricing formula

### Weighted Average Coupon
**Equation:** `WAC = Σ_{i=1}^M w_i × r_i`  
**Notes:** Weighted average coupon rate of MBS pool

### Weighted Average Maturity
**Equation:** `WAM = Σ_{i=1}^M w_i × T_i`  
**Notes:** Weighted average maturity of MBS pool

### Yield to Maturity (YTM)
**Equation:** `P_{mkt} = Σ_{i=1}^n C e^{-y t_i} + F e^{-y t_n}`  
**Notes:** Internal rate of return for bonds

## Foreign Exchange

### Garman-Kohlhagen Call Option
**Equation:** `C = S_0 e^{-r_f T} Φ(d_1) - K e^{-r_d T} Φ(d_2)`  
**Notes:** Currency option pricing model

### Jarrow-Yildirim Inflation Model
**Equation:** `dI_t/I_t = (r_n(t) - r_r(t)) dt + σ_I dW_I`  
**Notes:** Treats CPI index like foreign currency with nominal and real rates

### Power Reverse Dual Currency
**Equation:** `V_{PRDC} = Notional * max( Π_{i=1}^n (S_{ti}/S_0)^{α_i}, 0)`  
**Notes:** Structured FX product payoff

## Interest Rate Models

### Heston Characteristic Function
**Equation:** `φ(u,t,v) = E^{Q}[ e^{iu ln S_T} | v_t = v ] = e^{C(t) + D(t)v + iu ln S_t}`  
**Notes:** Characteristic function for Heston stochastic volatility model

### Floating Rate Note Par Value
**Equation:** `P(t) = 1 if t = T_{i-1}^+`  
**Notes:** FRN trades at par immediately after coupon reset

### CAPM Single-Factor Model
**Equation:** `R_i = E[R_i] + β_i (R_M - E[R_M]) + ε_i`  
**Notes:** Single-factor asset pricing model

### Caplet Pricing (Black-76)
**Equation:** `C_{caplet} = P(0,T_i) ( F(0,T_{i-1},T_i) Φ(d_1) - K Φ(d_2) )`  
**Notes:** Interest rate caplet pricing using Black model

### Heston Stochastic Volatility
**Equation:** `dS_t = (r - q) S_t dt + √{v_t} S_t dW_S^{(1)}`  
**Notes:** Stochastic volatility model for asset prices

### Market Beta in Multi-Factor Context
**Equation:** `β_{iM} = Σ_{j=1}^k β_{ij} Cov(F_j,R_M)/Var(R_M)`  
**Notes:** Beta decomposition in multi-factor models

### Swaption Pricing (Black-76)
**Equation:** `C_{swaption} = P(0,T_e) ( S_0 Φ(d_1) - K Φ(d_2) )`  
**Notes:** Interest rate swaption pricing using Black model

### Variance Swap Fair Strike
**Equation:** `σ_{fair}² = (1/P(0,T)) E^{Q}[ ∫_0^T σ_s² ds ]`  
**Notes:** Fair strike for variance swap

### Vasicek Model
**Equation:** `dr_t = a(b - r_t) dt + σ dW_t`  
**Notes:** Mean-reverting Gaussian interest rate model

## Option Pricing

### Asian Option (Geometric)
**Equation:** `C_{geom} = e^{-r(T-t)} ( G_t e^{μ̄(T-t)} Φ(d_1) - K Φ(d_2) )`  
**Notes:** Geometric average Asian option pricing

### Barrier Option (Down-and-Out)
**Equation:** `C_{DAO} = C_{BS} - (H/S_t)^{2λ} C_{BS}(H²/S_t, K, T, r, q, σ)`  
**Notes:** Down-and-out barrier option pricing

### Basket Option Approximation
**Equation:** `B_t = Σ_{i=1}^n w_i S^i_t`  
**Notes:** Moment matching approximation for basket options

### Binomial Tree Parameters
**Equation:** `u = e^{σ √Δt}, d = e^{-σ √Δt}, p = (e^{(r-q)Δt} - d)/(u - d)`  
**Notes:** Cox-Ross-Rubinstein binomial tree parameters

### Black-76 Formula
**Equation:** `C(F_t, K, T, r, σ) = e^{-r(T-t)} [F_t Φ(d_1) - K Φ(d_2)]`  
**Notes:** Black model for futures and forward options

### Black-Scholes PDE
**Equation:** `∂V/∂t + ½ σ² S² ∂²V/∂S² + r S ∂V/∂S - r V = 0`  
**Notes:** Fundamental PDE for derivative pricing

### Black-Scholes-Merton Formula
**Equation:** `C(S_t, K, T, r, q, σ) = S_t e^{-q(T-t)} Φ(d_1) - K e^{-r(T-t)} Φ(d_2)`  
**Notes:** Fundamental option pricing formula

### Delta Sensitivity
**Equation:** `Δ_C = ∂C/∂S = e^{-q(T-t)} Φ(d_1)`  
**Notes:** First-order price sensitivity to underlying

### Exchange Option (Margrabe)
**Equation:** `V(S^1_t, S^2_t, T) = S^1_t e^{-q_1(T-t)} Φ(d_1) - S^2_t e^{-q_2(T-t)} Φ(d_2)`  
**Notes:** Option to exchange one asset for another
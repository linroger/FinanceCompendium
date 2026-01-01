CDO TRANCHE LOSS DISTRIBUTION

For a CDO with M reference entities and tranche defined by attachment point A and detachment point D (where 0 ≤ A < D ≤ 1), the loss on the tranche at time t is:

L_t^{(A,D)} = \min[\max(L_t - A, 0), D - A]

where L_t = (1/M) Σ_{i=1}^M (1 - R_i) 1_{τ_i ≤ t} is the portfolio loss rate, R_i is the recovery rate for entity i, and τ_i is the default time of entity i. This piecewise linear function captures the key characteristic of tranching: equity tranches (near A=0) bear first losses while senior tranches (near D=1) are protected until junior tranches are exhausted.

The tranche expected loss at time t is:

EL_t^{(A,D)} = E[ \min[\max(L_t - A, 0), D - A] ]

which can be expressed in terms of the portfolio loss distribution F_L(x,t) = P(L_t ≤ x) as:

EL_t^{(A,D)} = ∫_{A}^{D} (x - A) dF_L(x,t) + (D - A)[1 - F_L(D,t)]

This integral representation separates losses occurring within the tranche (first term) from the probability that losses exceed detachment (second term). For pricing, the critical object is the loss distribution over the tranche interval.

LARGE HOMOGENEOUS PORTFOLIO APPROXIMATION

In the large homogeneous portfolio (LHP) approximation, we take the limit M → ∞ with all obligors having identical hazard rate h and recovery rate R. The law of large numbers implies the portfolio loss rate converges to a deterministic function of the systematic risk factor Z:

L_t = (1 - R) Φ( \frac{Φ^{-1}(h) - √{ρ} Z}{√{1-ρ}} )

where Φ is the standard normal CDF, ρ is the correlation parameter, and Z ~ N(0,1) is the systematic risk factor. This approximation eliminates idiosyncratic risk entirely, making the portfolio loss rate a deterministic function of Z. The probability that losses exceed level x becomes:

P(L_t ≤ x) = Φ( \frac{√{1-ρ} Φ^{-1}(x/(1-R)) - √{ρ} Φ^{-1}(h)}{√{ρ}} )

for x ∈ [0,1-R]. Under LHP, the tranche expected loss simplifies to a single integral over the systematic factor rather than requiring M-dimensional integration. This computational efficiency made LHP the standard approach for synthetic CDO pricing before the 2007 crisis.

ONE-FACTOR GAUSSIAN COPULA MODEL

The one-factor Gaussian copula model specifies default times through a latent variable structure. For each obligor i, define standardized asset value X_i as:

X_i = √{ρ_i} Z + √{1-ρ_i} ε_i

where Z ~ N(0,1) is the single systematic factor, ε_i ~ N(0,1) are idiosyncratic shocks independent of Z and each other, and ρ_i ∈ [0,1] is the correlation of obligor i to the systematic factor. The X_i values have a Gaussian copula dependence structure with correlation matrix where Corr(X_i, X_j) = √{ρ_i ρ_j} for i ≠ j.

Default occurs when the latent variable falls below a threshold determined by the hazard rate h_i and time horizon t:

τ_i ≤ t ⇔ X_i ≤ Φ^{-1}(1 - e^{-h_i t})

This threshold derives from the identity P(τ_i ≤ t) = 1 - e^{-h_i t} for exponential default times. The joint probability that a set of obligors default by time t is:

P(τ_i ≤ t for all i ∈ S) = Φ_S( \{Φ^{-1}(1 - e^{-h_i t)}\}_{i∈S} ; \{√{ρ_i ρ_j}\}_{i,j∈S} )

where Φ_S denotes the multivariate normal CDF with specified correlation matrix. For large portfolios, analytical tractability emerges through conditioning on the systematic factor Z.

BASE CORRELATION

Base correlation addresses the problem that implied correlations from CDO tranches vary across attachment points, creating a correlation smile. For tranche [A,D], the base correlation β_A is defined as the single correlation parameter that would make the equity tranche [0,A] market price match its model price under the one-factor Gaussian copula:

MarketPrice([0,A]) = ModelPrice([0,A]; β_A)

The base correlation curve β_A as a function of attachment point A must be monotonically increasing with A (equity correlation < mezzanine correlation < senior correlation) to avoid arbitrage. This monotonicity constraint is equivalent to requiring the correlation smile to be arbitrage-free.

The implied tranche correlation ρ_{A,D} for tranche [A,D] is defined by:

MarketPrice([A,D]) = ModelPrice([A,D]; ρ_{A,D})

Unlike base correlation, tranche correlation can vary arbitrarily across tranches. The relationship between base and tranche correlations involves nonlinear equations due to the recursive structure of tranche pricing.

EXPECTED TRANCHE LOSS UNDER ONE-FACTOR MODEL

Conditioning on the systematic factor Z = z, each obligor's default probability becomes deterministic under the one-factor model. The conditional default probability for obligor i is:

p_i(z,t) = P(X_i ≤ Φ^{-1}(1 - e^{-h_i t}) | Z = z) = Φ( \frac{Φ^{-1}(1 - e^{-h_i t}) - √{ρ_i} z}{√{1-ρ_i}} )

The conditional portfolio loss distribution under LHP approximation is:

P(L_t ≤ x | Z = z) = 1_{\{L(z,t) ≤ x\}}

where L(z,t) = (1-R) Φ( \frac{Φ^{-1}(1-e^{-ht}) - √{ρ} z}{√{1-ρ}} ) for homogeneous case with hazard rate h. This degeneracy (point mass) reflects the complete elimination of idiosyncratic risk.

The expected tranche loss conditioned on Z = z is:

EL_t^{(A,D)}(z) = \min[\max(L(z,t) - A, 0), D - A]

Since conditioning makes the loss deterministic given Z, the unconditional expected tranche loss is:

EL_t^{(A,D)} = ∫_{-∞}^{∞} EL_t^{(A,D)}(z) φ(z) dz

where φ(z) = (1/√{2π}) exp(-z²/2) is the standard normal density. This one-dimensional integral is computationally tractable and forms the basis for most CDO pricing implementations.

TRANCHE ATTACHMENT AND DETACHMENT POINTS

For a CDO with N tranches, define attachment points A_j and detachment points D_j for j = 1,...,N satisfying:

0 = A_1 < D_1 = A_2 < D_2 = A_3 < ... < D_{N-1} = A_N < D_N = 1

The j-th tranche bears losses proportional to portfolio losses L_t according to:

Loss_{j,t} = \min[\max(L_t - A_j, 0), D_j - A_j]

The notional of tranche j is N_j = N_0 (D_j - A_j) where N_0 is total portfolio notional. After accounting for losses, the remaining notional on tranche j is:

N_{j,t} = N_j - Loss_{j,t}

For synthetic CDOs trading as credit default swaps on tranches, the credit default swap spread s_{A,D} is determined by equating the present value of premium legs to protection legs:

s_{A,D} N_0 (D - A) ∫_0^T E[e^{-∫_0^t r_s ds}] dt = N_0 ∫_0^T E[e^{-∫_0^t r_s ds} dL_t^{(A,D)}]

where r_t is the risk-free rate and T is the maturity. The spread s_{A,D} is quoted in basis points and represents the annual premium per unit of tranche notional.

SYNTHETIC CDO PRICING

A synthetic CDO is created by selling protection on a portfolio of credit default swaps and redistributing the default risk across tranches. For portfolio with M entities, the protection leg cash flow at time t is:

Protection_t = (1 - R_{avg}) N_0 Σ_{i=1}^M ΔL_i(t)

where R_{avg} is average recovery rate, N_0 is portfolio notional, and ΔL_i(t) is the increment in loss from entity i at time t. The premium leg for tranche [A,D] with spread s_{A,D} pays:

Premium_t = s_{A,D} N_0 (D - A) 1_{\{τ_m > t\}}

where τ_m = \min_i τ_i is the first default time among entities in the portfolio and 1_{\{condition\}} is indicator function. The fair spread equates discounted expectation:

s_{A,D} = \frac{E[∫_0^T e^{-rt} dProtection_t^{(A,D)}]}{∫_0^T e^{-rt} E[1_{\{τ_m > t\}}] dt N_0 (D - A)}

where dProtection_t^{(A,D)} = N_0 dL_t^{(A,D)} is the tranche-specific protection payment.

The defaultable present value factor accounts for correlation with market interest rates. If the risk-free rate follows r_t and default intensity λ_t is correlated with the systematic factor Z, then:

PV(Protection) = N_0 ∫_0^T E[e^{-∫_0^t (r_s + λ_s) ds}] dEL_t^{(A,D)}

where EL_t^{(A,D)} is the expected tranche loss. This joint modeling of credit and interest rate risk is essential for long-dated synthetic CDOs.

CDO-SQUARED PRICING

A CDO-squared (CDO²) has CDO tranches as underlying collateral rather than individual credit default swaps. Consider a CDO² with M underlying CDOs, each with homogeneous tranche structure. The loss on CDO i's [A_i,D_i] tranche is:

L_t^{(i)} = \min[\max(L_t^{(i)} - A_i, 0), D_i - A_i]

where L_t^{(i)} is the portfolio loss rate of CDO i. For a CDO² tranche defined by [A^{(2)}, D^{(2)}], the aggregate loss is:

L_t^{(2)} = \min[\max(\frac{1}{M} Σ_{i=1}^M L_t^{(i)} - A^{(2)}, 0), D^{(2)} - A^{(2)}]

The key challenge is that losses L_t^{(i)} from different CDOs are correlated through overlapping obligors and common systematic factors. If the underlying CDOs share common obligors, the correlation structure becomes highly non-trivial.

For pricing, we condition on the systematic factor(s) Z at multiple levels. The inner conditional expectation for each CDO i given Z = z is:

E[L_t^{(i)} | Z = z] = EL_t^{(A_i,D_i)}(z)

where EL_t^{(A_i,D_i)}(z) is the expected loss on tranche i computed under the one-factor model. The outer expectation over Z gives:

EL_t^{(2)} = ∫_{-∞}^{∞} \min[\max(\frac{1}{M} Σ_{i=1}^M EL_t^{(A_i,D_i)}(z) - A^{(2)}, 0), D^{(2)} - A^{(2)}] φ(z) dz

The CDO² spread s^{(2)}_{A^{(2)},D^{(2)}} is then:

s^{(2)}_{A^{(2)},D^{(2)}} = \frac{E[∫_0^T e^{-rt} dEL_t^{(2)}]}{∫_0^T e^{-rt} dt N_0^{(2)} (D^{(2)} - A^{(2)})}

where N_0^{(2)} is the total notional of the CDO². This nested conditioning structure leads to significant computational complexity, especially when accounting for correlation between losses across underlying CDOs beyond the common systematic factor.

The correlation smile effect is amplified in CDO² structures because the nonlinearity of tranche loss functions compounds. Base correlation for CDO² tranches typically shows more pronounced smile than for single CDOs, reflecting the increased model sensitivity to correlation assumptions in these complex products.

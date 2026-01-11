# Financial Mathematics Equations Primer

This primer accompanies the Financial Mathematics Equations Dataset. It mirrors the dataset's main categories and provides expanded educational context for the key formulas used in quantitative finance.

---

## 1. Time Value of Money
The foundation of finance: a dollar today is worth more than a dollar tomorrow.

### Present Value of a Growing Perpetuity
$$ PV = \frac{C_1}{r - g} $$

**Context**: Valuation of an infinite stream of cash flows growing at a constant rate $g$. This is the mathematical engine behind the **Gordon Growth Model** for stock valuation and the **Terminal Value** calculation in Discounted Cash Flow (DCF) models. The condition $r > g$ is critical; otherwise, the sum diverges (infinite value).

### Present Value of Ordinary Annuity
$$ PV = C \cdot \left[ \frac{1 - (1+r)^{-n}}{r} \right] $$

**Context**: Valuing a finite stream of constant payments. This equation is ubiquitous in retail finance (mortgages, auto loans) and institutional finance (pension liabilities, structured settlements). It represents the sum of a geometric series.

### Effective Annual Rate (EAR)
$$ EAR = \left( 1 + \frac{r_{\text{nom}}}{m} \right)^m - 1 $$

**Context**: Comparing rates with different compounding frequencies. A 10% nominal rate compounded monthly yields more than 10% annually due to "interest on interest". In derivatives, we often take the limit as $m \to \infty$ to get continuous compounding ($e^r - 1$).

### Fisher Equation (Inflation)
$$ (1 + i) = (1 + r)(1 + \pi^e) \approx 1 + r + \pi^e $$

**Context**: Decomposing nominal returns ($i$) into real purchasing power growth ($r$) and inflation compensation ($\pi^e$). Essential for fixed income markets, particularly for comparing nominal Treasuries against TIPS (Treasury Inflation-Protected Securities) to extract "breakeven inflation".

---

## 2. Fixed Income
Pricing and risk management of debt instruments.

### Bond Pricing Formula
$$ P = \sum_{t=1}^{n} \frac{C}{(1+y)^t} + \frac{F}{(1+y)^n} $$

**Context**: The fundamental DCF equation for bonds. It links Price ($P$), Yield ($y$), Coupon ($C$), and Maturity ($n$). Because $P(y)$ is convex, price increases more when yields fall than it decreases when yields rise (for the same magnitude of yield shock).

### Accrued Interest
$$ \text{AI} = C \times \frac{\text{Days since last coupon}}{\text{Days in coupon period}} $$

**Context**: Bonds trade at a "Dirty Price" (which includes AI), but are quoted at a "Clean Price". The buyer compensates the seller for the interest earned since the last payment. Day count conventions (Actual/Actual, 30/360) dictate exactly how "Days" are counted.

### Macaulay Duration
$$ D_{\text{mac}} = \frac{1}{P} \sum_{t=1}^n \frac{t \cdot CF_t}{(1+y)^t} $$

**Context**: The weighted average time to receive cash flows. For a zero-coupon bond, duration equals maturity. For coupon bonds, it is always less. It is a measure of time, but directly related to price risk.

### Modified Duration
$$ D_{\text{mod}} = \frac{D_{\text{mac}}}{1 + y/k} $$

**Context**: The percentage change in price for a unit change in yield: $\frac{\Delta P}{P} \approx -D_{\text{mod}} \times \Delta y$. It is the first-order (linear) sensitivity of the bond price.

### Bond Convexity
$$ C = \frac{1}{P} \frac{d^2P}{dy^2} $$

**Context**: The second-order sensitivity. It captures the curvature of the price-yield relationship. Adding convexity improves the accuracy of price approximations for large yield moves and explains why investors pay a premium for "positive convexity".

### Asset Swap Spread (ASW)
**Context**: The spread added to the swap curve (LIBOR/SOFR) to reprice a bond to par. It isolates the credit/liquidity risk of the bond relative to the bank swap market, effectively converting a fixed-rate bond into a synthetic floating-rate note.

---

## 3. Option Pricing
Valuation of contingent claims.

### Black-Scholes Call Option
$$ C = S_0 N(d_1) - K e^{-rT} N(d_2) $$

**Context**: The Nobel-winning formula for European options. It assumes lognormal prices and dynamic hedging.
- **$N(d_1)$**: The Delta (hedge ratio).
- **$N(d_2)$**: The probability of the option expiring in-the-money (risk-neutral).
It remains the standard language for quoting option prices (via "Implied Volatility").

### Put-Call Parity
$$ C - P = S_0 - K e^{-rT} $$

**Context**: A "no-arbitrage" relationship enforced by market mechanics. It links Call prices, Put prices, the Stock, and the Bond. If this equation is violated, risk-free profits exist. It allows synthetic creation of positions (e.g., Synthetic Call = Long Put + Long Stock - Cash).

### KMV Merton Model (Distance to Default)
$$ DD = \frac{\ln(V_0/D) + (\mu_V - \sigma_V^2/2)T}{\sigma_V \sqrt{T}} $$

**Context**: A structural credit risk model that applies Option Theory to corporate finance. Equity is viewed as a Call Option on the firm's assets with a strike price equal to its debt. If assets fall below debt, the firm defaults.

---

## 4. Risk Management
Quantifying exposure to adverse market moves.

### Parametric Value at Risk (VaR)
$$ \text{VaR}_{\alpha} = P \cdot \sigma \cdot z_{\alpha} $$

**Context**: The industry standard for market risk capital (Basel Accords). It estimates the maximum expected loss over a horizon at a specific confidence level (e.g., 99%). While useful, it relies on normal distribution assumptions, often underestimating "tail risk" (extreme events).

---

## 5. Portfolio Theory
Optimizing risk vs. return.

### Portfolio Variance (2 Assets)
$$ \sigma_p^2 = w_1^2 \sigma_1^2 + w_2^2 \sigma_2^2 + 2 w_1 w_2 \rho_{1,2} \sigma_1 \sigma_2 $$

**Context**: The mathematical proof of diversification. If assets are imperfectly correlated ($\rho < 1$), the portfolio risk is lower than the weighted average risk of the components. This concept builds the "Efficient Frontier".

### Sharpe Ratio
$$ S_a = \frac{E[R_a - R_f]}{\sigma_a} $$

**Context**: The gold standard for risk-adjusted performance. It asks: "How much excess return did I get for each unit of volatility I took?"

### Capital Asset Pricing Model (CAPM)
$$ E[R_i] = R_f + \beta_i (E[R_m] - R_f) $$

**Context**: An equilibrium model stating that investors are only compensated for **Systematic Risk** (Beta). Idiosyncratic risk (specific to the company) can be diversified away and thus earns no premium.

---

## 6. Interest Rate Derivatives
Modeling the term structure of interest rates.

### Vasicek Model
$$ dr_t = a(b - r_t)dt + \sigma dW_t $$

**Context**: One of the first models to capture **Mean Reversion** in interest rates. Rates tend to be pulled back to a long-term average level $b$. While elegant, it allows for negative rates.

### Par Swap Rate
$$ s = \frac{1 - P(0,T_n)}{\text{PV01}} $$

**Context**: The "fair" fixed rate in an interest rate swap. It equates the value of fixed cash flows to floating cash flows. The swap curve is the primary benchmark for fixed income pricing today.

---

## 7. Stochastic Models
The mathematics of randomness in finance.

### Geometric Brownian Motion (GBM)
$$ dS_t = \mu S_t dt + \sigma S_t dW_t $$

**Context**: The continuous-time process assumed for stock prices in Black-Scholes. It implies returns are normal, but prices are lognormal (bounded at 0).

### Ito's Lemma
$$ df = \left( f_t + \mu S f_S + \frac{1}{2} \sigma^2 S^2 f_{SS} \right) dt + \sigma S f_S dW_t $$

**Context**: The "Chain Rule" for stochastic calculus. Because Brownian motion is so jagged, second-order terms ($dt$) matter. This lemma is used to derive the Black-Scholes Partial Differential Equation (PDE).

---

## 8. Equities
Valuation of shares in public and private companies.

### Gordon Growth Model
$$ P_0 = \frac{D_1}{r - g} $$

**Context**: A specific application of the Growing Perpetuity formula used to value stocks. It states that the price is the next year's expected dividend divided by the difference between the required return and the growth rate. It decomposes expected return into dividend yield ($D_1/P_0$) and capital gains ($g$).

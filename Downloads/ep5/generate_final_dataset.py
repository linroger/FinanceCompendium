import csv

dataset = []

def add_equation(title, equation, category, tags, notes):
    # Process notes to ensure format compliance
    # 1. Add Tags section at the bottom
    full_notes = notes.strip()
    if tags:
        full_notes += f"\n\n## Tags\n{tags}"
    
    # Store clean notes (wrappers will be added at CSV export time)
    dataset.append({
        "title": title,
        "equation": equation,
        "main_category": category,
        "notes": full_notes
    })

# ==========================================
# CATEGORY: Time Value of Money
# ==========================================

add_equation(
    title="Present Value of a Growing Perpetuity",
    equation="PV = \\frac{C_1}{r - g}",
    category="Time Value of Money",
    tags="tvm, valuation, gordon-growth, perpetuity, dcf",
    notes="""## Variables
- **$PV$**: Present Value of the growing perpetuity.
- **$C_1$**: Cash flow expected at the end of the first period (time $t=1$).
- **$r$**: Discount rate (required rate of return).
- **$g$**: Constant growth rate of the cash flows per period.

## Interpretation
Valuation of an infinite stream of cash flows that grows at a constant rate $g$ forever. The denominator $(r-g)$ can be thought of as a "capitalization rate". As $g$ approaches $r$, the value explodes towards infinity.

## Derivation
The PV is the sum of an infinite geometric series:
$PV = \\frac{C_1}{(1+r)} + \\frac{C_1(1+g)}{(1+r)^2} + \\frac{C_1(1+g)^2}{(1+r)^3} + \\dots$
This can be rewritten as:
$PV = \\frac{C_1}{1+r} \\sum_{t=0}^{\\infty} \\left( \\frac{1+g}{1+r} \\right)^t$
For the sum to converge, we must have $\\left| \\frac{1+g}{1+r} \\right| < 1$, which implies $r > g$.
Using the formula for the sum of an infinite geometric series $S = \\frac{a}{1-x}$ where $a = \\frac{C_1}{1+r}$ and $x = \\frac{1+g}{1+r}$:
$PV = \\frac{\\frac{C_1}{1+r}}{1 - \\frac{1+g}{1+r}} = \\frac{\\frac{C_1}{1+r}}{\\frac{(1+r) - (1+g)}{1+r}} = \\frac{C_1}{r - g}$

## Applications
1. **Gordon Growth Model**: Used to value equities. If a stock pays a dividend $D_1$ next year and dividends grow at $g$:
   $P_0 = \\frac{D_1}{k_e - g}$
2. **Terminal Value in DCF**: In discounted cash flow analysis, it estimates the value of the firm beyond the explicit forecast period (the "going concern" value)."""
)

add_equation(
    title="Present Value of Ordinary Annuity",
    equation="PV = C \\cdot \\underbrace{\\left[ \\frac{1 - (1+r)^{-n}}{r} \\right]}_{\\text{Annuity Factor}}",
    category="Time Value of Money",
    tags="tvm, annuity, mortgage, pension, structured-settlement",
    notes="""## Variables
- **$PV$**: Present Value.
- **$C$**: Constant periodic cash flow.
- **$r$**: Periodic interest rate.
- **$n$**: Total number of periods.

## Derivation
An annuity is the difference between two perpetuities: one starting at $t=1$ and one starting at $t=n+1$.
$PV = \\frac{C}{r} - \\frac{C}{r} (1+r)^{-n} = C \\left[ \\frac{1 - (1+r)^{-n}}{r} \\right]$

## Applications
1. **Mortgages**: Calculating the monthly payment $M$ on a loan principal $L$.
   $L = M \\cdot A(r, n) \\implies M = \\frac{L}{A(r, n)}$
2. **Pension Obligations**: A Defined Benefit pension plan must value the stream of future fixed payments to retirees to determine the current liability.
3. **Structured Settlements**: In legal cases, a lump sum settlement is often converted into a stream of payments; this formula determines the fair lump sum equivalent."""
)

add_equation(
    title="Effective Annual Rate (EAR)",
    equation="EAR = \\left( 1 + \\frac{r_{\\text{nom}}}{m} \\right)^m - 1",
    category="Time Value of Money",
    tags="tvm, rates, compounding, conversion, apr, apy",
    notes="""## Variables
- **$EAR$**: Effective Annual Rate (or APY).
- **$r_{\\text{nom}}$**: Nominal annual rate (APR).
- **$m$**: Compounding periods per year.

## Conversions
- **Semi-annual to EAR**: $m=2$. $EAR = (1 + r/2)^2 - 1$.
- **Monthly to EAR**: $m=12$. $EAR = (1 + r/12)^{12} - 1$.
- **Continuous to EAR**: $EAR = e^r - 1$.
- **EAR to Nominal**: $r_{\\text{nom}} = m \\left[ (1+EAR)^{1/m} - 1 \\right]$.

## Intuition
A nominal rate of 10% compounded monthly pays $10\%/12 = 0.833\%$ per month. Due to compounding, the interest earned in month 1 earns its own interest in month 2. The EAR captures this "interest on interest", resulting in a rate higher than 10% (approx 10.47%)."""
)

add_equation(
    title="Fisher Equation (Inflation)",
    equation="(1 + i) = (1 + r)(1 + \\pi^e)",
    category="Time Value of Money",
    tags="economics, inflation, real-rates, tips, treasuries",
    notes="""## Variables
- **$i$**: Nominal interest rate (observed market rate).
- **$r$**: Real interest rate (purchasing power growth).
- **$\\pi^e$**: Expected inflation rate.

## Derivation of Approximation
Expand the terms:
$1 + i = 1 + r + \\pi^e + r\\pi^e$
Subtract 1 from both sides:
$i = r + \\pi^e + r\\pi^e$
For small rates (e.g., $r=2\\%, \\pi=2\\%$), the interaction term $r\\pi^e = 0.0004$ is negligible.
Thus, the approximation **$i \\approx r + \\pi^e$** is widely used.

## Applications
1. **TIPS Pricing**: Treasury Inflation-Protected Securities (TIPS) are quoted in real yields ($r$). Nominal Treasuries trade at $i$.
2. **Breakeven Inflation**: The difference between the nominal yield and the TIPS yield of the same maturity is the market's expectation of inflation (plus a liquidity/risk premium).
   $\\pi^e \\approx Y_{\\text{Nominal}} - Y_{\\text{TIPS}}$."""
)

# ==========================================
# CATEGORY: Fixed Income
# ==========================================

add_equation(
    title="Bond Pricing Formula",
    equation="P = \\sum_{t=1}^{n} \\frac{C}{(1+y)^t} + \\frac{F}{(1+y)^n}",
    category="Fixed Income",
    tags="fixed-income, pricing, dcf, yield",
    notes="""## Variables
- **$P$**: Bond Price.
- **$C$**: Coupon payment ($Rate \\times Face / Freq$).
- **$F$**: Face/Par value.
- **$y$**: Yield to maturity (per period).

## Derivation
The bond is a package of a coupon annuity and a zero-coupon principal payment.
$P = C \\times \\text{AnnuityFactor}(y, n) + F \\times \\text{DiscountFactor}(y, n)$

## Applications
Used to determine the fair value of a bond given a required yield, or conversely, to solve for the Yield to Maturity (YTM) given a market price (requires iterative numerical methods like Newton-Raphson)."""
)

add_equation(
    title="Accrued Interest",
    equation="\\text{AI} = C \\times \\frac{\\text{Days since last coupon}}{\\text{Days in coupon period}}",
    category="Fixed Income",
    tags="fixed-income, accrued-interest, day-count, dirty-price, conventions",
    notes="""## Variables
- **$AI$**: Accrued Interest.
- **$C$**: Periodic coupon payment.

## Day Count Conventions & Applications
1. **Actual/Actual (ICMA)**:
   - *Used for*: US Treasuries, JGBs.
   - *Calculation*: Computes exact calendar days between dates. Denominator is exact days in the reference period.
   - *Precision*: Highest.

2. **30/360**:
   - *Used for*: US Corporate Bonds, US Municipals, Agency MBS.
   - *Calculation*: Assumes every month has 30 days and a year has 360 days. Simplifies calculation but introduces slight inaccuracy.
   
3. **Actual/360**:
   - *Used for*: Money market instruments (CDs, Commercial Paper), Eurodollar loans.
   - *Calculation*: Actual days in numerator, fixed 360 in denominator. This slightly inflates the yield (the "banker's year").

## Dirty Price Formula
$P_{\\text{Dirty}} = P_{\\text{Clean}} + \\text{AI}$
Trades settle at the Dirty Price (Invoice Price)."""
)

add_equation(
    title="Macaulay Duration",
    equation="D_{\\text{mac}} = \\frac{1}{P} \\sum_{t=1}^n \\frac{t \\cdot CF_t}{(1+y)^t}",
    category="Fixed Income",
    tags="fixed-income, duration, sensitivity, risk",
    notes="""## Variables
- **$D_{\\text{mac}}$**: Weighted average time to maturity.
- **$CF_t$**: Cash flow at time $t$.

## Derivation
Differentiate the price equation with respect to $(1+y)$:
$\\frac{dP}{d(1+y)} = \\sum -t CF_t (1+y)^{-t-1}$
Rearranging terms leads to the weighted average definition.

## Applications
1. **Immunization**: A portfolio is immunized against small parallel rate shifts if the Duration of Assets equals the Duration of Liabilities.
2. **Concept**: For a zero-coupon bond, $D_{\\text{mac}} = T$."""
)

add_equation(
    title="Modified Duration",
    equation="D_{\\text{mod}} = \\frac{D_{\\text{mac}}}{1 + y/k}",
    category="Fixed Income",
    tags="fixed-income, duration, sensitivity, hedging, dv01",
    notes="""## Variables
- **$D_{\\text{mod}}$**: Modified duration.
- **$y$**: Annual yield.
- **$k$**: Coupons per year.

## Applications
1. **Price Sensitivity**: $\\frac{\\Delta P}{P} \\approx -D_{\\text{mod}} \\times \\Delta y$.
2. **DV01 (Dollar Value of an 01)**: The dollar change in price for a 1 basis point change in yield.
   $DV01 = P \\times D_{\\text{mod}} \\times 0.0001$.
3. **Hedge Ratio**: To hedge a bond position with value $V_B$ using a hedging instrument $V_H$:
   $\\text{Hedge Ratio} = -\\frac{V_B \\times D_{\\text{mod}, B}}{V_H \\times D_{\\text{mod}, H}}$."""
)

add_equation(
    title="Bond Convexity",
    equation="C = \\frac{1}{P} \\frac{d^2P}{dy^2} = \\frac{1}{P(1+y)^2} \\sum_{t=1}^n \\frac{t(t+1)CF_t}{(1+y)^t}",
    category="Fixed Income",
    tags="fixed-income, convexity, second-order, risk",
    notes="""## Derivation
Take the second derivative of the pricing function $P = \\sum CF_t (1+y)^{-t}$.
$P'' = \\sum (-t)(-t-1) CF_t (1+y)^{-t-2} = \\frac{1}{(1+y)^2} \\sum (t^2+t) \\frac{CF_t}{(1+y)^t}$.
Convexity is normalized by dividing by Price.

## Applications
1. **Price Approximation**: Improves the duration estimate for large yield changes.
   $\\frac{\\Delta P}{P} \\approx -D_{\\text{mod}} \\Delta y + \\frac{1}{2} C (\\Delta y)^2$.
2. **Portfolio Management**: Investors generally prefer positive convexity (assets gain more when rates fall than they lose when rates rise) and will pay a premium (lower yield) for it."""
)

add_equation(
    title="Asset Swap Spread (ASW)",
    equation="P_{\\text{mkt}} = \\sum_{t=1}^n \\frac{C}{(1 + r_{\\text{swap}}(t) + \\text{ASW})^t} + \\frac{F}{(1 + r_{\\text{swap}}(n) + \\text{ASW})^n}",
    category="Fixed Income",
    tags="fixed-income, swaps, relative-value, credit, spread",
    notes="""## Variables
- **$P_{\\text{mkt}}$**: Market price of the bond.
- **$r_{\\text{swap}}(t)$**: The zero-coupon swap rate for maturity $t$.
- **$ASW$**: The Asset Swap Spread.

## Intuition
The ASW is the constant spread added to the swap curve that forces the discounted value of the bond's cash flows to equal its market price.
It represents the credit risk and liquidity premium of the bond relative to the swap market (which is often considered the "bank" risk-free reference).

## Application: Asset Swap Package
An investor can lock in a floating return by buying the bond and entering an interest rate swap:
1. Buy Bond (pays Fixed Coupon).
2. Pay Swap Counterparty Fixed Coupon.
3. Receive from Swap Counterparty Floating Rate + Spread.
The **ASW** is roughly the spread over LIBOR/SOFR that the investor earns in this synthetic floating rate note."""
)

# ==========================================
# CATEGORY: Option Pricing
# ==========================================

add_equation(
    title="Black-Scholes Call Option",
    equation="C = S_0 N(d_1) - K e^{-rT} N(d_2)",
    category="Option Pricing",
    tags="options, black-scholes, valuation, greeks, european",
    notes="""## Variables
- **$S_0$**: Spot price.
- **$K$**: Strike price.
- **$N(\\cdot)$**: Standard normal CDF.
- **$d_1, d_2$**: $\\frac{\\ln(S_0/K) + (r + \\sigma^2/2)T}{\\sigma\\sqrt{T}}$ and $d_1 - \\sigma\\sqrt{T}$.

## Intuition
- **$S_0 N(d_1)$**: Expected value of the stock acquired, contingent on exercise. $N(d_1)$ is the Delta.
- **$K e^{-rT} N(d_2)$**: Present value of the strike cash paid, contingent on exercise. $N(d_2)$ is the risk-neutral probability of exercise ($S_T > K$).
The price is the discounted expected payoff under the risk-neutral measure $\\mathbb{Q}$."""
)

add_equation(
    title="KMV Merton Model (Distance to Default)",
    equation="DD = \\frac{\\ln(V_0/D) + (\\mu_V - \\sigma_V^2/2)T}{\\sigma_V \\sqrt{T}}",
    category="Option Pricing",
    tags="credit-risk, kmv, merton, default, structural-model",
    notes="""## Variables
- **$DD$**: Distance to Default (number of standard deviations).
- **$V_0$**: Market value of firm's assets.
- **$D$**: Default point (often Short Term Debt + 0.5 * Long Term Debt).
- **$\\mu_V$**: Expected return on assets.
- **$\\sigma_V$**: Asset volatility.

## Application
The KMV model treats the firm's equity as a call option on its assets (Strike = Debt).
1. Solve for Asset Value $V_0$ and Asset Volatility $\\sigma_V$ using observed Equity Value $E$ and Equity Volatility $\\sigma_E$ (using the Black-Scholes equations).
2. Calculate **Distance to Default ($DD$)**.
3. Map $DD$ to an **Expected Default Frequency (EDF)** using historical default databases.
This connects option pricing theory directly to real-world corporate credit risk assessment."""
)

add_equation(
    title="Put-Call Parity",
    equation="C - P = S_0 - K e^{-rT}",
    category="Option Pricing",
    tags="options, arbitrage, parity, fundamental",
    notes="""## Variables
- **$C$**: Call Price.
- **$P$**: Put Price.

## Derivation / Arbitrage Argument
Consider two portfolios:
- **Portfolio A**: Long Call + Cash amount $Ke^{-rT}$. At expiry $T$:
  - If $S_T > K$: Payoff is $(S_T - K) + K = S_T$.
  - If $S_T < K$: Payoff is $0 + K = K$.
  - Payoff = $\\max(S_T, K)$.
- **Portfolio B**: Long Put + Long Stock. At expiry $T$:
  - If $S_T > K$: Put expires worthless. Payoff = $S_T$.
  - If $S_T < K$: Put pays $K - S_T$. Total = $(K - S_T) + S_T = K$.
  - Payoff = $\\max(S_T, K)$.
Since payoffs are identical, present values must be identical: $C + Ke^{-rT} = P + S_0$."""
)

# ==========================================
# CATEGORY: Risk Management
# ==========================================

add_equation(
    title="Parametric Value at Risk (VaR)",
    equation="\\text{VaR}_{\\alpha} = P \\cdot \\sigma \\cdot z_{\\alpha}",
    category="Risk Management",
    tags="risk, var, market-risk, banking, basel",
    notes="""## Variables
- **$P$**: Portfolio value.
- **$\\sigma$**: Portfolio volatility (over the time horizon).
- **$z_{\\alpha}$**: Inverse normal CDF at confidence level $\\alpha$ (e.g., 2.33 for 99%).

## Intuition
VaR answers: "What is the worst loss I might expect over a given timeframe with X% confidence?"
For a 1-day horizon at 99% confidence, we expect losses to exceed the VaR only 1 in 100 trading days.

## Limitations
- Assumes normal distribution of returns (fat tails are underestimated).
- Doesn't describe the magnitude of the loss *beyond* the VaR threshold (Expected Shortfall addresses this)."""
)

# ==========================================
# CATEGORY: Equities
# ==========================================

add_equation(
    title="Gordon Growth Model",
    equation="P_0 = \\frac{D_1}{r - g}",
    category="Equities",
    tags="valuation, ddm, equities, fundamental",
    notes="""## Derivation
See "Present Value of a Growing Perpetuity". The stock is viewed as a perpetuity of dividends growing at rate $g$.

## Applications
1. **Implied Cost of Equity**: Rearrange to solve for $r$:
   $r = \\frac{D_1}{P_0} + g$
   Total Return = Dividend Yield + Capital Appreciation (Growth).
2. **Terminal Value**: Estimating the exit value of a business in year $N$ of a DCF model."""
)

# ==========================================
# CATEGORY: Portfolio Theory
# ==========================================

add_equation(
    title="Portfolio Variance (2 Assets)",
    equation="\\sigma_p^2 = w_1^2 \\sigma_1^2 + w_2^2 \\sigma_2^2 + 2 w_1 w_2 \\rho_{1,2} \\sigma_1 \\sigma_2",
    category="Portfolio Theory",
    tags="portfolio-theory, risk, diversification, variance, correlation",
    notes="""## Variables
- **$\\sigma_p^2$**: Portfolio variance.
- **$w_i$**: Weight of asset $i$ in the portfolio.
- **$\\sigma_i$**: Standard deviation (volatility) of asset $i$.
- **$\\rho_{1,2}$**: Correlation coefficient between asset 1 and asset 2 ($-1 \\le \\rho \\le 1$).

## Intuition
This formula quantifies the benefit of diversification. Unless $\\rho = 1$ (perfect positive correlation), the portfolio risk is *less* than the weighted average of the individual risks.
If $\\rho < 1$, the term $2 w_1 w_2 \\rho \\sigma_1 \\sigma_2$ reduces the total variance.
In the general case of $N$ assets:
$\\sigma_p^2 = \\sum_i \\sum_j w_i w_j \\sigma_{ij}$ where $\\sigma_{ij}$ is the covariance.

## Application
- **Efficient Frontier**: Used to construct the set of optimal portfolios offering the highest expected return for a defined level of risk.
- **Risk Management**: Fundamental to calculating portfolio VaR."""
)

add_equation(
    title="Sharpe Ratio",
    equation="S_a = \\frac{E[R_a - R_f]}{\\sigma_a}",
    category="Portfolio Theory",
    tags="portfolio-theory, performance, risk-adjusted-return, ratio",
    notes="""## Variables
- **$S_a$**: Sharpe ratio.
- **$R_a$**: Asset return.
- **$R_f$**: Risk-free rate.
- **$E[R_a - R_f]$**: Expected excess return (risk premium).
- **$\\sigma_a$**: Standard deviation of the asset's excess return.

## Interpretation
Measures the "reward-to-variability" ratio. It describes how much excess return you are receiving for the extra volatility that you endure for holding a risky asset.
A higher Sharpe ratio implies better risk-adjusted performance.

## Practical Use
- **Fund Ranking**: Used to rank the performance of portfolio managers.
- **Optimization**: Modern Portfolio Theory (MPT) often seeks to maximize the Sharpe ratio (the Tangency Portfolio)."""
)

add_equation(
    title="Capital Asset Pricing Model (CAPM)",
    equation="E[R_i] = R_f + \\beta_i (E[R_m] - R_f)",
    category="Portfolio Theory",
    tags="portfolio-theory, capm, beta, cost-of-equity, equilibrium",
    notes="""## Variables
- **$E[R_i]$**: Expected return on asset $i$.
- **$R_f$**: Risk-free rate.
- **$\\beta_i$**: Beta of the asset (sensitivity to market movements).
- **$E[R_m]$**: Expected return of the market portfolio.
- **$(E[R_m] - R_f)$**: Market risk premium.

## Interpretation
In market equilibrium, investors are only compensated for **systematic risk** (beta risk) which cannot be diversified away. Idiosyncratic risk earns no premium.
Beta is defined as: $\\beta_i = \\frac{\\text{Cov}(R_i, R_m)}{\\text{Var}(R_m)}$.

## Applications
- **Cost of Capital**: Used to calculate the Cost of Equity ($k_e$) in WACC calculations.
- **Alpha Generation**: $\\alpha = R_{\\text{realized}} - E[R_{\\text{capm}}]$. Positive alpha implies the asset outperformed its risk-adjusted benchmark."""
)

# ==========================================
# CATEGORY: Interest Rate Derivatives
# ==========================================

add_equation(
    title="Vasicek Model (Short Rate SDE)",
    equation="dr_t = a(b - r_t)dt + \\sigma dW_t",
    category="Interest Rate Derivatives",
    tags="rates, stochastic-calculus, sde, short-rate, vasicek, mean-reversion",
    notes="""## Variables
- **$dr_t$**: Change in the short-term interest rate.
- **$a$**: Speed of mean reversion ($a > 0$).
- **$b$**: Long-term mean level of the rate.
- **$\\sigma$**: Volatility of the interest rate.
- **$dW_t$**: Increment of a Wiener process (Brownian motion).

## Interpretation
This Stochastic Differential Equation (SDE) models the evolution of interest rates with **mean reversion**.
If $r_t > b$, the drift term $a(b-r_t)$ is negative, pulling the rate down.
If $r_t < b$, the drift is positive, pushing the rate up.

## Properties & Limitations
- **Ornstein-Uhlenbeck Process**: The rates are normally distributed.
- **Flaw**: It allows negative interest rates (which, historically considered a flaw, has become a reality in some regimes, but is theoretically problematic for nominal rates in standard theory)."""
)

add_equation(
    title="Par Swap Rate",
    equation="s = \\frac{1 - P(0,T_n)}{\\sum_{i=1}^n \\delta_i P(0,T_i)}",
    category="Interest Rate Derivatives",
    tags="rates, swaps, pricing, par-rate, annuity",
    notes="""## Variables
- **$s$**: The fixed par swap rate.
- **$P(0, T_i)$**: Price of a zero-coupon bond maturing at $T_i$ (discount factor).
- **$\\delta_i$**: Day count fraction for period $i$ (year fraction).

## Intuition
The par swap rate is the fixed rate $s$ that makes the Present Value of the Fixed Leg equal to the Present Value of the Floating Leg at inception (PV = 0).
Since the Floating Leg PV is usually equal to Par ($1$) minus the final discount bond (conceptually), the formula simplifies to:
$\\text{Fixed Leg PV} = s \\times \\text{PV01}$
$\\text{Floating Leg PV} = 1 - P(0, T_n)$
$s = \\frac{1 - P(0, T_n)}{\\text{PV01}}$

## Application
- **Curve Construction**: Swap rates are the primary inputs for bootstrapping the yield curve (e.g., SOFR curve) beyond the liquid money market points."""
)

# ==========================================
# CATEGORY: Stochastic Models
# ==========================================

add_equation(
    title="Geometric Brownian Motion (SDE)",
    equation="dS_t = \\mu S_t dt + \\sigma S_t dW_t",
    category="Stochastic Models",
    tags="stochastic-calculus, sde, gbm, black-scholes, dynamics",
    notes="""## Variables
- **$S_t$**: Asset price at time $t$.
- **$\\mu$**: Drift (expected return).
- **$\\sigma$**: Volatility.
- **$dW_t$**: Wiener process increment.

## Interpretation
The standard model for stock prices in the Black-Scholes framework.
- The return $\\frac{dS_t}{S_t}$ has a constant mean $\\mu$ and variance $\\sigma^2$ over $dt$.
- It implies that log-prices are normally distributed (prices are lognormal).
- Consistent with the "limited liability" of stocks (price stays positive)."""
)

add_equation(
    title="Ito's Lemma",
    equation="df(t, S_t) = \\left( \\frac{\\partial f}{\\partial t} + \\mu S_t \\frac{\\partial f}{\\partial S} + \\frac{1}{2} \\sigma^2 S_t^2 \\frac{\\partial^2 f}{\\partial S^2} \\right) dt + \\sigma S_t \\frac{\\partial f}{\\partial S} dW_t",
    category="Stochastic Models",
    tags="stochastic-calculus, ito-lemma, derivation, fundamental",
    notes="""## Variables
- **$f(t, S_t)$**: A function of time and the stochastic process $S_t$.
- **$S_t$**: Follows GBM: $dS_t = \\mu S_t dt + \\sigma S_t dW_t$.

## Significance
This is the "Fundamental Theorem of Stochastic Calculus".
Unlike standard calculus, where $df = f_t dt + f_S dS$, stochastic calculus requires a second-order term $\\frac{1}{2} \\sigma^2 S_t^2 f_{SS} dt$ because $(dW_t)^2 = dt$ (it does not vanish).

## Applications
- **Deriving Black-Scholes**: Used to find the differential $df$ of the option price function, which is then hedged to form a risk-free portfolio.
- **Log-Returns**: Used to show that if $S_t$ is GBM, then $\\ln(S_t)$ is Brownian motion with drift $(\\mu - \\sigma^2/2)$."""
)

# ==========================================
# EXPORT
# ==========================================

import json

# 1. Export CSV
with open('financial_equations_dataset.csv', 'w', newline='', encoding='utf-8') as f:
    writer = csv.DictWriter(f, fieldnames=["title", "equation", "main_category", "notes"], quoting=csv.QUOTE_ALL)
    writer.writeheader()
    
    # Create a copy for CSV export with wrapped notes
    csv_dataset = []
    for item in dataset:
        csv_item = item.copy()
        csv_item['notes'] = f"«{item['notes']}»"
        csv_dataset.append(csv_item)
        
    writer.writerows(csv_dataset)

# 2. Export JSON
with open('financial_equations_dataset.json', 'w', encoding='utf-8') as f:
    json.dump(dataset, f, indent=2, ensure_ascii=False)

print(f"Generated {len(dataset)} equations.")
print("- financial_equations_dataset.csv")
print("- financial_equations_dataset.json")

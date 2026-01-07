# Financial Mathematics Equations Primer

This primer provides a comprehensive reference for the significant equations used in the pricing, risk management, and analysis of financial instruments and derivatives. Each section corresponds to a main category and includes detailed explanations of the equations within.

---

## Options Pricing

The Options category encompasses the foundational models for pricing and hedging options on various underlying assets. This includes the Black-Scholes framework for European options, binomial tree methods for American options, and the comprehensive family of Greeks that measure sensitivity to various parameters.

### Subcategories
- **European Options**: Black-Scholes model and closed-form solutions
- **American Options**: Binomial and trinomial tree methods
- **Greeks**: Delta, Gamma, Vega, Theta, Rho, Vanna, Volga
- **Implied Volatility**: Calibration and surface construction

### Binomial Tree Option Pricing (CRR)

**Equation:**

```
C = \frac{p \cdot C_u + (1-p) \cdot C_d}{r}
```

## Equation Variables
The Cox–Ross–Rubinstein (CRR) binomial tree model provides a discrete-time framework for pricing options by approximating the continuous-time Black–Scholes dynamics through a recombinant tree structure. This single-period formulation forms the building block for multi-period models that can accommodate American early exercise features.

- **$C$**: The option price at time $t=0$, derived from the risk-neutral expected discounted payoff across all possible price paths in the tree.
- **$C_{u}$**: The option value in the "up" state, where the underlying price has increased to $S_{0}u$. This value is computed as $\max(S_{0}u-K,0)$ for calls or $\max(K-S_{0}u,0)$ for puts.
- **$C_{d}$**: The option value in the "down" state, where the underlying price has decreased to $S_{0}d$. Similarly computed as $\max(S_{0}d-K,0)$ for calls or $\max(K-S_{0}d,0)$ for puts.
- **$p$**: The risk-neutral up probability, which makes the expected return on the stock equal to the risk-free rate under the risk-neutral measure:
  $$p=\frac{r-d}{u-d}$$
- **$1-p$**: The risk-neutral down probability, representing the probability of the down state under the risk-neutral measure.
- **$u$**: The up factor multiplying the spot price in the up state. In the CRR specification, $u=e^{\sigma\sqrt{\Delta t}}$, ensuring the tree's recombinant property.
- **$d$**: The down factor in the CRR specification, set to $d=1/u=e^{-\sigma\sqrt{\Delta t}}$, which ensures symmetry and the tree's recombinant nature.
- **$r$**: The per-period risk-free return factor, typically $r=e^{r_{f}\Delta t}$ for continuous compounding or $1+r_{f}\Delta t$ for discrete compounding.
- **$\Delta t$**: The time step size, equal to $T/n$ for an $n$-period tree spanning time $T$ to expiration.
- **$\sigma$**: The annualized volatility of the underlying asset's returns, used to construct the up and down factors.

## Interpretation
The binomial model provides an intuitive, pathwise interpretation of option pricing that complements the closed-form Black–Scholes solution. The option price represents the expected discounted payoff under the risk-neutral measure, where expectations are taken over all possible price paths. In this single-period case, there are exactly two paths: an up movement followed by either exercise or expiration without exercise, and a down movement with similar possibilities.

The risk-neutral probability $p=(r-d)/(u-d)$ is the key insight that enables arbitrage-free pricing in discrete time. Unlike physical probabilities that reflect investor risk preferences, the risk-neutral probability is chosen specifically to make the expected return on the stock equal to the risk-free rate. This "probability adjustment" replaces the complex risk premium calculations of continuous-time finance with a simple algebraic formula.

The CRR specification $u=e^{\sigma\sqrt{\Delta t}}$ and $d=1/u$ ensures that the tree is recombinant, meaning that an up movement followed by a down movement leads to the same price as a down movement followed by an up movement. This recombination dramatically reduces the number of nodes from $2^{n}$ to $(n+1)(n+2)/2$ for an $n$-period tree, making computations tractable while maintaining accuracy.

The ratio $u/d=1$ in the CRR specification creates symmetric price movements in log-space, which matches the lognormal distribution assumption of the Black–Scholes model. As the number of periods increases and $\Delta t\rightarrow 0$, the binomial distribution of prices converges to the lognormal distribution, and the binomial option price converges to the Black–Scholes price.

## Assumptions
The binomial model relaxes some Black–Scholes assumptions while introducing its own framework requirements:

1. **Discrete Trading**: Prices can only change at discrete time intervals $\Delta t$, not continuously. This discrete-time structure enables backward induction but introduces discretization error.

2. **Lognormal Approximation**: The up and down factors are calibrated to match the first two moments of the lognormal distribution, approximating the continuous-time price dynamics.

3. **No Arbitrage**: The risk-neutral probability ensures that no risk-free profits can be extracted from the tree structure.

4. **Constant Parameters**: Volatility $\sigma$ and risk-free rate $r$ remain constant throughout each time step, though they can vary across steps in extended models.

5. **Perfect Markets**: No transaction costs, taxes, or liquidity constraints affect price movements or option exercise.

6. **Recursive Valuation**: Option values are computed through backward induction from expiration to present, with American options checked for early exercise at each node.

## Practical Use
The binomial model serves as the primary method for pricing American options, compound options, and path-dependent derivatives that cannot be handled by closed-form Black–Scholes formulas. By checking for early exercise at each node, the binomial framework captures the premium associated with American exercise features that European options lack.

In practice, traders and risk managers use binomial trees with 100-500 periods for accurate pricing, as this provides sufficient resolution to approximate the continuous Black–Scholes limit while maintaining computational efficiency. The tree structure also provides insight into how option values evolve across different price scenarios, supporting scenario analysis and stress testing.

The binomial framework extends naturally to handle dividends (through adjusted forward prices), stochastic volatility (through regime-dependent parameters), and interest rate term structure (through time-varying discount factors). These extensions make binomial trees versatile tools for pricing complex derivatives that violate Black–Scholes assumptions.

---

### Black-Scholes Call Delta

**Equation:**

```
\Delta_{call} = N(d_1)
```

## Equation Variables
The Black–Scholes delta represents the first derivative of the option price with respect to the underlying asset price, capturing the instantaneous rate of change and serving as the fundamental hedge ratio for risk management. This single-period sensitivity provides the foundation for dynamic hedging strategies that attempt to isolate option returns from underlying price movements.

- **$\Delta_{call}$**: The call option's sensitivity to changes in the underlying price, defined mathematically as $\partial C/\partial S_{0}$. This Greek measures how much the option price changes for a small change in the underlying price.
- **$N(d_{1})$**: The standard normal cumulative distribution function evaluated at the $d_{1}$ composite term from the Black–Scholes pricing formula. This transforms the standardized distance to strike into a probability-equivalent value.
- **$d_{1}$**: The composite term defined as:
  $$d_{1}=\frac{\ln(S_{0}/K)+(r+\sigma^{2}/2)T}{\sigma\sqrt{T}}$$
  which captures the log-moneyness, risk-adjusted drift, and volatility scaling.
- **$S_{0}$**: The current spot price of the underlying asset, serving as the base price for sensitivity calculations.
- **$K$**: The strike price, defining the exercise level and intrinsic value threshold for the option.
- **$r$**: The continuously compounded risk-free interest rate, influencing the drift component of $d_{1}$.
- **$T$**: The time to maturity in years, affecting both the magnitude of $d_{1}$ and its rate of change.
- **$\sigma$**: The annualized volatility, which along with time determines the uncertainty in the underlying price.

## Interpretation
The call delta has multiple equivalent interpretations that provide intuition for its practical application. Most directly, $\Delta_{call}=N(d_{1})$ represents the hedge ratio needed to create a locally risk-free portfolio. If you sell one call option and purchase $N(d_{1})$ shares of the underlying, the portfolio's value becomes insensitive to small price changes in either direction—at least instantaneously.

The delta also represents an approximate probability. Under the risk-neutral measure, $N(d_{1})$ is approximately equal to the probability that the option will expire in-the-money, adjusted for the present value of expected dividends. This probability interpretation explains why delta ranges from 0 to 1 for call options: deep out-of-the-money calls have delta near 0 (low exercise probability), while deep in-the-money calls have delta near 1 (high exercise probability).

For at-the-money options where $S_{0}\approx K$, the delta is approximately 0.5, reflecting the roughly equal probability of finishing in-the-money versus out-of-the-money. This 50% probability assumes no dividends and that the risk-free rate is negligible compared to the drift adjustment.

The delta's behavior over time provides crucial insight into option dynamics. As expiration approaches, at-the-money deltas move rapidly toward 0.5 (if remaining near ATM) or toward 0/1 (if moving ITM or OTM). This "gamma acceleration" near expiration creates hedging challenges because small price movements cause large delta changes, requiring frequent rebalancing.

## Assumptions
The delta formula inherits all assumptions from the Black–Scholes framework, with additional considerations for the sensitivity analysis:

1. **Continuous Differentiability**: The option price function must be continuously differentiable with respect to the underlying price, which holds under Black–Scholes dynamics.

2. **No Jumps**: Price movements are continuous, ensuring delta provides accurate sensitivity for infinitesimal price changes. Jump processes would require different sensitivity measures.

3. **Constant Volatility**: Volatility $\sigma$ is constant, so delta changes only through price and time movements.

4. **European Exercise**: No early exercise features complicate the delta calculation with optionality beyond the underlying price sensitivity.

5. **No Dividends**: The derivation assumes no dividends during the option's life; dividend-paying options require adjusted delta formulas.

## Practical Use
Delta serves as the primary risk metric for options traders and portfolio managers engaged in dynamic hedging strategies. Market makers quote delta alongside prices, and traders use delta to manage their exposure to underlying price movements. The goal of delta hedging is to isolate the option's time value and volatility exposure from its directional exposure.

In practice, delta hedging involves maintaining a delta-neutral portfolio by adjusting the quantity of underlying held as prices change. For a short call position, this means buying shares as prices rise and selling as prices fall. The profit or loss from these hedging transactions, combined with the option premium received, determines the overall trading P&L.

Delta also enables position sizing and risk budgeting. A trader wanting exposure equivalent to 100 shares of stock could buy 100/$\Delta$ call options (for ATM calls, approximately 200 options). This leverage is why options are attractive for capital-efficient position establishment.

The delta-gamma relationship ($\Gamma=\partial\Delta/\partial S_{0}$) helps traders anticipate how delta will change as prices move. High-gamma positions require more frequent rebalancing, increasing transaction costs and potentially eroding the benefits of dynamic hedging.

---

### Black-Scholes Call Option Price

**Equation:**

```
C = S_0 N(d_1) - K e^{-rT} N(d_2)
```

## Equation Variables
The Black–Scholes model provides a closed-form expression for the no-arbitrage price of a European call option under specific assumptions about market dynamics and the behavior of the underlying asset. This foundational equation revolutionized options pricing by establishing a rigorous mathematical framework for valuing derivatives.

- **$C$**: The theoretical value (fair price) of a European call option at time $t=0$, representing the present value of the option's expected payoff under the risk-neutral measure. This price ensures no arbitrage opportunities exist in the market.
- **$S_{0}$**: The current spot price of the underlying asset at the valuation date, observed directly in the market and serving as the starting point for all price dynamics.
- **$K$**: The strike (exercise) price specified in the option contract, representing the price at which the holder has the right (but not obligation) to purchase the underlying asset upon exercise.
- **$r$**: The continuously compounded risk-free interest rate, typically derived from government bond yields with maturity matching the option's time to expiration.
- **$T$**: The time to maturity measured in years, representing the duration until the option's expiration date when the holder's exercise right expires.
- **$N(\cdot)$**: The standard normal cumulative distribution function, defined as $N(x)=\mathbb{P}(Z\le x)$ where $Z\sim\mathcal{N}(0,1)$, which transforms standardized values into probability equivalents.
- **$d_{1}$**: The first composite term combining multiple factors:
  $$d_{1}=\frac{\ln(S_{0}/K)+(r+\sigma^{2}/2)T}{\sigma\sqrt{T}}$$
  This term captures the log-moneyness, risk-adjusted drift, and volatility scaling.
- **$d_{2}$**: The second composite term:
  $$d_{2}=d_{1}-\sigma\sqrt{T}$$
  This adjusts $d_{1}$ by the total volatility over the option's life.
- **$\sigma$**: The annualized volatility (standard deviation) of the underlying asset's log returns, representing the magnitude of price fluctuations expected over the coming year.
- **$e^{-rT}$**: The present value factor under continuous compounding, which discounts future cash flows back to the current time.

## Interpretation
The Black–Scholes call price equation decomposes into two fundamental components that together capture the complete economic value of the option. The first term, $S_{0}N(d_{1})$, represents the expected discounted value of receiving the stock if the option expires in-the-money under the risk-neutral measure. This term reflects the option's intrinsic value adjusted for the probability of exercise and the stock price dynamics. The second term, $K e^{-rT}N(d_{2})$, represents the expected discounted cost of paying the strike price if exercise occurs. This component can be interpreted as the present value of a contingent liability.

The difference between these two terms—$S_{0}N(d_{1})-K e^{-rT}N(d_{2})$—captures the time value and leverage premium inherent in the option contract. This premium exists because options provide asymmetric payoff profiles: holders can profit from favorable price movements while limiting losses to the premium paid. The convexity of option payoffs makes volatility valuable, and this value is embedded in the pricing formula through the $N(d_{1})$ and $N(d_{2})$ terms.

The $N(d_{1})$ term has a particularly important interpretation as an approximate risk-neutral probability that the option will expire in-the-money, adjusted for the present value of expected dividends. The $N(d_{2})$ term can be interpreted as the risk-neutral probability that the option will be exercised, which determines the expected present value of the strike payment.

## Assumptions
The Black–Scholes model relies on several critical assumptions that define its domain of validity and guide proper application in practice:

1. **European Exercise**: The option can only be exercised at expiration, not before. This assumption simplifies the pricing problem by eliminating early exercise considerations that would require backward induction solutions.

2. **Lognormal Price Dynamics**: The underlying asset price follows geometric Brownian motion with constant drift and volatility, ensuring that log returns are normally distributed. This implies prices cannot become negative and exhibit the characteristic exponential growth pattern observed in financial markets.

3. **Constant Parameters**: The risk-free rate $r$ and volatility $\sigma$ remain constant throughout the option's life, eliminating term structure effects and stochastic volatility considerations.

4. **No Dividends**: The underlying asset pays no dividends during the option's life. When dividends exist, they must be incorporated through appropriate adjustments to the forward price or through separate dividend-yield models.

5. **Perfect Markets**: There are no transaction costs, taxes, or bid-ask spreads. Trading can occur continuously at any price, and markets are perfectly liquid.

6. **No Arbitrage**: The market is arbitrage-free, meaning no risk-free profits can be extracted from price discrepancies. This assumption underlies the risk-neutral valuation principle.

7. **Risk-Neutral Pricing**: Under these assumptions, investors are risk-neutral with respect to the underlying asset, meaning expected returns equal the risk-free rate regardless of risk preferences.

## Practical Use
The Black–Scholes formula serves as the foundational tool for multiple applications in options markets and quantitative finance. Its most prevalent use is in calculating implied volatility from observed market prices, a process called "volatility surface construction." By inverting the Black–Scholes equation, traders and risk managers back out the volatility that, when plugged into the formula, produces the market price. This implied volatility becomes the primary quoting convention for options markets and enables relative value analysis across different strikes and expirations.

The formula supports delta-hedging strategies where traders construct risk-neutral portfolios by holding appropriate quantities of the underlying asset to offset option exposure. The delta $\Delta=N(d_{1})$ provides the exact hedge ratio needed to create a locally risk-free position. Greeks derived from the Black–Scholes framework—gamma, vega, theta, and rho—enable comprehensive risk management and sensitivity analysis for portfolios containing options and other derivatives.

Beyond direct option pricing, the Black–Scholes framework extends to employee stock options, convertible bonds, and various structured products. Its closed-form nature makes it computationally efficient and suitable for real-time pricing applications. However, practitioners must recognize the model's limitations when underlying assumptions are violated, particularly regarding volatility dynamics and early exercise features.

---

### Black-Scholes Call Rho

**Equation:**

```
\rho_{call} = K T e^{-rT} N(d_2)
```

## Equation Variables
Rho measures the sensitivity of an option's price to changes in the risk-free interest rate, capturing how the cost of financing affects option values. This Greek is particularly important for longer-dated options and in environments with significant interest rate movements, though it is typically less impactful than delta, gamma, or vega for short-term trading.

- **$\rho_{call}$**: The call option's interest rate sensitivity, defined as $\partial C/\partial r$, representing the option price change for a 0.01 (1 percentage point) increase in the risk-free rate.
- **$K$**: The strike price of the option, which determines the present value of the payment that call buyers defer by holding options instead of the stock.
- **$T$**: The time to maturity in years, scaling the interest rate effect proportionally to the duration of the deferral.
- **$e^{-rT}$**: The continuous discount factor that brings the strike payment to present value; this factor depends on the interest rate $r$.
- **$N(d_{2})$**: The risk-neutral exercise probability, which determines the expected value of the strike payment under the risk-neutral measure.
- **$d_{2}$**: The standard Black–Scholes composite term:
  $$d_{2}=d_{1}-\sigma\sqrt{T}$$
  that incorporates moneyness, drift, and volatility into the exercise probability.
- **$r$**: The continuously compounded risk-free interest rate, the parameter to which rho measures sensitivity.
- **$S_{0}$**: The current spot price (does not appear directly in the call rho formula, distinguishing it from put rho).

## Interpretation
Rho captures the opportunity cost of deferring payment for the underlying asset. When you buy a call option instead of the stock, you defer paying the strike price $K$ until (and only if) you exercise at expiration. The present value of this deferred payment depends on the interest rate: higher rates mean lower present value, which benefits call holders.

The formula $\rho_{call}=K T e^{-rT} N(d_{2})$ shows that call rho is always positive. Higher interest rates increase call values because they reduce the present value of the strike payment more than they increase the discount rate applied to expected stock returns. This is intuitive: borrowing money to buy stock costs more at high rates, making the limited-liability call option relatively more attractive.

The $N(d_{2})$ factor adjusts rho for the probability of exercise. At-the-money options ($d_{2}\approx 0$) have $N(d_{2})\approx 0.5$, meaning only half the interest benefit is realized on average. Deep ITM options have $N(d_{2})\approx 1$, capturing the full interest benefit, while deep OTM options have $N(d_{2})\approx 0$, with minimal rho exposure.

The $T$ scaling shows that longer-dated options are more sensitive to interest rates. A two-year option defers the strike payment twice as long as a one-year option, doubling the interest rate effect. This makes rho particularly relevant for LEAPS (Long-Term Equity Anticipation Securities) and other long-dated options.

## Assumptions
Rho calculations depend on specific assumptions about interest rate modeling:

1. **Flat Term Structure**: The formula assumes a single risk-free rate applicable to all maturities, ignoring the yield curve shape.

2. **Constant Rates**: Rho is calculated for a specific rate level; actual sensitivity may vary with the rate level itself.

3. **No Rate Uncertainty**: Deterministic interest rates simplify the calculation; stochastic rate models require extended Greeks.

4. **Continuous Compounding**: The use of continuous compounding affects the functional form; discrete compounding would require adjustment.

## Practical Use
Rho is relevant for macro-sensitive trading strategies and long-dated option positions where interest rate movements can significantly impact returns. During periods of monetary policy changes or yield curve shifts, rho exposure becomes more material for option portfolios.

Portfolio rho aggregation helps measure aggregate interest rate sensitivity. A portfolio with positive rho benefits from rising rates, while negative rho (typical of long puts) benefits from falling rates. This exposure can be hedged using interest rate derivatives or by adjusting option position durations.

For LEAPS and long-dated options, rho can represent 10-20% of total option value, making it a meaningful factor in pricing and hedging decisions. Traders must consider not just the underlying price and volatility but also the interest rate environment when evaluating these positions.

Currency options and cross-currency products involve multiple interest rates (domestic and foreign), requiring modified rho calculations that account for the rate differential between currencies. These "quanto adjustments" add complexity to international derivatives pricing.

---

### Black-Scholes Call Theta

**Equation:**

```
\Theta_{call} = -\frac{S_0 N'(d_1) \sigma}{2\sqrt{T}} - r K e^{-rT} N(d_2)
```

## Equation Variables
Theta represents the rate of time decay in an option's price, measuring how much value the option loses each day as expiration approaches. This Greek is essential for understanding the cost of holding options over time and for strategies that seek to profit from time decay through premium selling approaches.

- **$\Theta_{call}$**: The call option's time decay rate, defined as $-\partial C/\partial T$. By convention, theta is usually quoted as the daily decay (option loses $\Theta$ per day), so practitioners often divide by 365.
- **$S_{0}$**: The current spot price of the underlying asset, appearing in the first term to scale the decay contribution from the underlying's volatility-driven value.
- **$N'(d_{1})$**: The standard normal probability density at $d_{1}$, which captures the option's moneyness-dependent contribution to time decay.
- **$\sigma$**: The annualized volatility, representing the magnitude of price uncertainty that contributes to the option's time value through potential future price movements.
- **$\sqrt{T}$**: The square root of time to expiration, appearing in the denominator to scale the volatility contribution appropriately.
- **$r$**: The continuously compounded risk-free interest rate, which affects the present value of the strike payment and appears in the second term.
- **$K$**: The strike price, whose present value contributes to the option's time decay through the interest cost of the deferred payment.
- **$e^{-rT}$**: The continuous discount factor that brings the strike payment to present value.
- **$N(d_{2})$**: The risk-neutral exercise probability, which along with the strike determines the present value of the contingent payment.
- **$d_{1}, d_{2}$**: The standard Black–Scholes composite terms defining moneyness and exercise probability.

## Interpretation
Theta captures the erosion of an option's time value as expiration approaches. This decay occurs because the window for favorable price movements narrows, reducing the probability of large payoffs while maintaining the same limited downside (the premium already paid).

The first term, $-\frac{S_{0}N'(d_{1})\sigma}{2\sqrt{T}}$, represents the volatility component of time decay. This component is always negative because the potential for future price movements (the source of option value) diminishes as time passes. At-the-money options have maximum $N'(d_{1})$, maximizing this decay component.

The second term, $-rK e^{-rT}N(d_{2})$, represents the interest cost of deferring the strike payment. When you buy a call option rather than the stock, you defer paying the strike price, saving the interest you could have earned on that money. This "interest benefit" diminishes as expiration approaches, creating negative theta.

For at-the-money options near expiration, theta becomes extremely large in magnitude. A one-day change in a near-term ATM option can cause significant price changes, creating both opportunities and risks for traders. Short-dated options are often called "theta burn" positions because they lose value rapidly.

The put theta formula is similar but includes an additional positive term: $\Theta_{put}=\Theta_{call}+rK e^{-rT}N(d_{2})+rK e^{-rT}N(-d_{2})$. This reflects that puts benefit from high interest rates (you receive the strike payment earlier) while calls suffer from them.

## Assumptions
Theta calculations depend on Black–Scholes assumptions with specific implications for time decay:

1. **Continuous Time**: Theta assumes time passes continuously, while actual decay occurs in discrete daily increments. The daily theta is approximately $\Theta/365$.

2. **Constant Volatility**: Theta is calculated at current volatility; actual decay depends on realized volatility versus implied.

3. **No Early Exercise**: European options cannot be exercised early, so theta reflects only time value decay, not early exercise value.

4. **Smooth Decay**: The formula assumes smooth decay; actual decay may exhibit discontinuities around ex-dividend dates or corporate events.

## Practical Use
Theta is the primary metric for income-focused option strategies that seek to profit from time decay. Covered call sellers, naked put sellers, and iron condor traders all benefit from theta—the options they sell decay toward zero over time, generating profit if prices remain stable.

Position theta aggregations help traders understand whether their portfolio benefits from time passing (positive theta) or loses value over time (negative theta). Most option sellers have positive theta positions and are hurt by large price moves that overwhelm decay profits.

The theta-gamma tradeoff is fundamental to options market making. Positions with large negative theta (long options) typically have large positive gamma, meaning they benefit from volatility. Positions with large positive theta (short options) have negative gamma, meaning they are hurt by volatility. This relationship constrains the possible risk-return profiles in options markets.

Theta decay accelerates exponentially near expiration. For at-the-money options within one week of expiration, daily theta can exceed 10% of the option's value. This "last week" behavior requires careful management by traders holding short-dated option positions.

---

### Black-Scholes Gamma

**Equation:**

```
\Gamma = \frac{N'(d_1)}{S_0 \sigma \sqrt{T}}
```

## Equation Variables
The Black–Scholes gamma represents the second derivative of the option price with respect to the underlying asset price, measuring the rate of change of delta and capturing the option's curvature or convexity. This second-order Greek is critical for understanding how delta changes as the underlying price moves and for managing the risks of dynamic hedging strategies.

- **$\Gamma$**: The gamma value representing $\partial^{2}C/\partial S_{0}^{2}$, which measures how much delta changes for a one-unit change in the underlying price. Gamma is the same for calls and puts due to the linear relationship between their deltas.
- **$N'(d_{1})$**: The standard normal probability density function evaluated at $d_{1}$, defined as $N'(x)=\frac{1}{\sqrt{2\pi}}e^{-x^{2}/2}$. This term captures the shape of the normal distribution at the option's moneyness point.
- **$S_{0}$**: The current spot price of the underlying asset, appearing in the denominator to scale the gamma appropriately.
- **$\sigma$**: The annualized volatility, which influences the width of the price distribution and thus the curvature of option values.
- **$T$**: The time to maturity in years, with $\sqrt{T}$ appearing in the denominator to reflect how uncertainty accumulates with time.
- **$d_{1}$**: The standard Black–Scholes composite term that determines the option's moneyness and the location of the probability density.

## Interpretation
Gamma measures the convexity of the option's value curve with respect to the underlying price. A high gamma means that delta changes rapidly as prices move, requiring frequent rebalancing of delta-hedged portfolios. Conversely, low gamma indicates that delta remains relatively stable, reducing hedging transaction costs.

The normal PDF $N'(d_{1})$ is maximized at $d_{1}=0$ (at-the-money) and decreases as $d_{1}$ moves away from zero (into or out-of-the-money). This mathematical property explains the familiar gamma pattern: gamma is highest for at-the-money options and lowest for deep in-the-money or out-of-the-money options.

The denominator $S_{0}\sigma\sqrt{T}$ reveals how gamma scales with market conditions. Higher volatility reduces gamma by spreading the probability mass more widely, making delta change more gradually. Longer time to expiration similarly reduces gamma by allowing more time for prices to move before delta stabilizes. Lower spot prices increase gamma proportionally, though this is typically offset by lower absolute option prices.

Gamma is always positive for long option positions, reflecting the convexity benefit of holding options. Short option positions have negative gamma, meaning the position becomes more exposed as prices move away from the strike. This gamma exposure is the source of "gamma risk" that can cause large losses for improperly hedged portfolios during volatile periods.

## Assumptions
Gamma calculations inherit Black–Scholes assumptions with specific implications for second-order sensitivity:

1. **Smooth Price Function**: The option price must be twice continuously differentiable with respect to the underlying, requiring continuous price paths without jumps.

2. **No Discontinuities**: At-the-money gamma spikes near expiration, but the formula assumes smooth behavior that may not capture extreme near-expiry dynamics.

3. **Constant Volatility**: Gamma is calculated for a specific volatility level; stochastic volatility requires gamma calculations conditional on volatility states.

4. **European Exercise**: American options may have different gamma behavior near expiration due to early exercise considerations.

## Practical Use
Gamma is the primary metric for managing delta-hedging costs and understanding portfolio convexity. Traders monitor gamma exposure closely because large gamma positions require frequent rebalancing, generating transaction costs that eat into returns.

At expiration, at-the-money gamma becomes extremely large as tiny price movements cause delta to swing from -0.5 to +0.5 (for straddles) or from near-zero to near-one (for single-sided positions). This "gamma squeeze" creates trading opportunities for market makers who can manage the rebalancing efficiently.

Portfolio gamma calculations aggregate gamma across all positions. A portfolio with net positive gamma benefits from price volatility (gains from delta changes exceed hedging losses), while net negative gamma suffers from volatility (hedging losses exceed delta change gains). This relationship is the foundation of gamma trading strategies that attempt to profit from volatility regardless of price direction.

The gamma-theta tradeoff is central to options market making. High-gamma positions (typically short-dated, at-the-money options) earn theta (time decay) but risk large losses if prices move significantly. Market makers must balance these exposures to maintain profitability across various market scenarios.

---

### Black-Scholes Put Delta

**Equation:**

```
\Delta_{put} = N(d_1) - 1
```

## Equation Variables
The put delta represents the sensitivity of a put option's price to changes in the underlying asset's price, capturing the fundamental difference in directional exposure between long put and long call positions. While calls benefit from price increases, puts benefit from price decreases, resulting in negative delta values that reflect this inverse relationship.

- **$\Delta_{put}$**: The put option's price sensitivity to underlying price changes, defined as $\partial P/\partial S_{0}$. Unlike call delta, put delta is always negative because put prices move inversely to the underlying price.
- **$N(d_{1})$**: The standard normal CDF evaluated at the $d_{1}$ composite term, which for puts serves as the starting point for the sensitivity calculation.
- **$d_{1}$**: The standard Black–Scholes composite term:
  $$d_{1}=\frac{\ln(S_{0}/K)+(r+\sigma^{2}/2)T}{\sigma\sqrt{T}}$$
  that captures the option's moneyness and volatility characteristics.
- **$S_{0}$**: The current spot price, which inversely affects put value: as prices rise, puts become less valuable, and vice versa.
- **$K$**: The strike price, with the put's intrinsic value increasing as $S_{0}$ falls below $K$.
- **$r$**: The risk-free rate, which affects the present value of the strike and the drift component of $d_{1}$.
- **$T$**: Time to expiration, influencing the option's time value and moneyness dynamics.
- **$\sigma$**: Volatility, which increases put value by increasing the probability of large downward price movements.

## Interpretation
The put delta formula $\Delta_{put}=N(d_{1})-1$ can be understood through the put-call delta relationship and the economic asymmetry between long and short positions in the underlying. For every call option, a corresponding put with the same strike and expiration has a delta exactly one unit lower than the call's delta.

This relationship emerges from put-call parity. Consider a portfolio long one call and short one put with the same strike: the combined position has delta $N(d_{1})-(N(d_{1})-1)=1$, equivalent to being long one share. The put's negative delta reflects this short-equity exposure.

The delta range for puts is (-1, 0), contrasting with calls' (0, 1) range. Deep out-of-the-money puts (low $S_{0}/K$) have deltas near 0, as small price changes barely affect the already-small probability of exercise. Deep in-the-money puts (high $S_{0}/K$) have deltas near -1, as the put behaves almost like a short stock position.

At-the-money puts have deltas near -0.5, reflecting the roughly equal probability of finishing in-the-money versus out-of-the-money, with the negative sign indicating the inverse price relationship. The symmetry with at-the-money calls ($\Delta_{call}\approx 0.5$) demonstrates the fundamental put-call relationship in option pricing.

## Assumptions
The put delta formula maintains the same Black–Scholes assumptions while incorporating the specific characteristics of put options:

1. **European Exercise**: Put can only be exercised at expiration, eliminating American early exercise features.

2. **No Dividends**: Assumes no dividend payments during the option's life that would affect the forward price and delta.

3. **Lognormal Dynamics**: Underlying follows geometric Brownian motion with constant parameters.

4. **Continuous Trading**: Delta is defined for infinitesimal price changes, requiring continuous price paths.

5. **Constant Volatility**: No stochastic volatility or volatility surface complications.

## Practical Use
Put delta is essential for constructing protective put strategies and managing downside exposure. An investor holding 100 shares who wants protection against a 10% market decline could purchase put options with delta approximately -0.1 per share, requiring 1,000 put options to hedge the position effectively.

Portfolio managers use put delta to measure and manage tail risk exposure. A portfolio with aggregate put delta of -5% means the portfolio benefits from market declines (positive P&L when prices fall) and is hurt by market rallies (negative P&L when prices rise). This negative delta exposure provides insurance against adverse market movements.

Traders constructing delta-neutral portfolios must account for put delta's negative sign. Combining long puts with long calls, short puts with short calls, or balancing puts against underlying positions requires careful attention to the directional signs of each delta component.

The relationship $\Delta_{put}=\Delta_{call}-1$ provides a practical check for position Greeks. Any apparent discrepancy between put and call deltas for the same strike and expiration indicates an error in calculation or market data.

---

### Black-Scholes Put Option Price

**Equation:**

```
P = K e^{-rT} N(-d_2) - S_0 N(-d_1)
```

## Equation Variables
The Black–Scholes put option pricing formula provides the theoretical no-arbitrage value for a European put option, complementing the call price formula through fundamental put-call parity relationships. While the call formula captures the right to buy an asset, the put formula captures the right to sell an asset at a predetermined strike price.

- **$P$**: The theoretical value of a European put option at time $t=0$, representing the fair price for the right to sell the underlying asset at strike $K$ upon expiration. Put options provide insurance-like protection against downside movements.
- **$S_{0}$**: The current spot price of the underlying asset, serving as the reference point for the option's moneyness and intrinsic value calculation.
- **$K$**: The strike (exercise) price at which the put holder has the right to sell the underlying asset upon exercise at expiration.
- **$r$**: The continuously compounded risk-free interest rate, representing the time value of money and the appropriate discount rate for risk-free cash flows.
- **$T$**: The time to maturity in years, determining the duration of the option's protection and the opportunity for favorable price movements.
- **$N(\cdot)$**: The standard normal cumulative distribution function, which transforms standardized normal values into probability equivalents ranging from 0 to 1.
- **$N(-d_{1})$**: The probability factor for the stock component, representing the complementary CDF value at the positive $d_{1}$ value.
- **$N(-d_{2})$**: The probability factor for the strike component, representing the complementary CDF value at the positive $d_{2}$ value.
- **$d_{1}$ and $d_{2}$**: Identical composite terms as in the call formula:
  $$d_{1}=\frac{\ln(S_{0}/K)+(r+\sigma^{2}/2)T}{\sigma\sqrt{T}}$$
  $$d_{2}=d_{1}-\sigma\sqrt{T}$$
- **$\sigma$**: The annualized volatility of the underlying asset's log returns, measuring the magnitude of expected price fluctuations.
- **$e^{-rT}$**: The continuous discount factor that brings future cash flows back to present value.

## Interpretation
The put pricing formula has an intuitive economic interpretation that mirrors the call formula's structure while reflecting the fundamental asymmetry between long and short positions in the underlying asset. The first term, $K e^{-rT}N(-d_{2})$, represents the present value of receiving the strike price if the option expires in-the-money (when the underlying falls below the strike). This is the insurance benefit that put holders receive when prices decline. The second term, $S_{0}N(-d_{1})$, represents the present value of the underlying asset that would need to be delivered if exercise occurs.

The put price can be understood through the lens of portfolio insurance: the put provides protection against the underlying asset falling below the strike price. The value of this protection depends on the probability of such a decline (captured by $N(-d_{2})$) and the potential magnitude of losses (determined by the strike price and time to expiration). The $N(-d_{1})$ term adjusts this value based on the underlying's expected path and volatility.

The put-call parity relationship provides crucial insight: $C-P=S_{0}-Ke^{-rT}$ (for non-dividend-paying assets). This parity ensures that call and put prices remain consistent with each other and with the underlying asset price. Violations of put-call parity would create arbitrage opportunities that sophisticated traders would immediately exploit until prices re-equilibrate.

## Assumptions
The assumptions underlying the Black–Scholes put formula are identical to those for the call formula, reflecting the symmetry of the theoretical framework:

1. European exercise only, meaning early exercise is not permitted
2. Lognormal price dynamics following geometric Brownian motion
3. Constant risk-free rate and volatility throughout the option's life
4. No dividends or other distributions paid by the underlying
5. No transaction costs, taxes, or market frictions
6. Continuous trading and perfect market liquidity
7. Risk-neutral pricing under the no-arbitrage framework

These assumptions define the conditions under which the put formula provides accurate theoretical prices. In practice, deviations from these assumptions—particularly American early exercise features and dividend payments—require modifications to the basic formula.

## Practical Use
The Black–Scholes put formula enables multiple practical applications in options markets and risk management. The most common use is in calculating implied volatility from observed put prices, similar to the call price inversion process. Implied volatility derived from puts often serves as a benchmark for downside protection costs and can differ slightly from call-implied volatility due to market microstructure effects.

Put options serve as the foundation for protective put strategies, where investors hold the underlying asset while purchasing puts to limit downside exposure. The put pricing formula helps investors understand the cost of this insurance and evaluate whether the protection premium is justified by their risk preferences and market outlook.

The formula supports delta-hedging for put positions, where the put delta $\Delta_{put}=N(d_{1})-1=-N(-d_{1})$ provides the hedge ratio for creating synthetic positions or managing portfolio exposure. Portfolio managers use put options to hedge concentrated positions, tail risk, or market exposure during periods of elevated uncertainty.

In corporate finance, puts appear in structured products, convertible bonds, and employee stock option plans. The pricing framework helps value these instruments and understand their risk characteristics. The symmetry between calls and puts in the Black–Scholes framework means that insights derived from call analysis often translate directly to put analysis, facilitating comprehensive derivatives risk management.

---

### Black-Scholes Vega

**Equation:**

```
\nu = S_0 N'(d_1) \sqrt{T}
```

## Equation Variables
Vega represents the sensitivity of an option's price to changes in the implied volatility of the underlying asset. This critical Greek measures how much the option value changes for a one-percentage-point change in volatility, making it the primary risk metric for volatility exposure and the foundation of volatility trading strategies.

- **$\nu$ (vega)**: The volatility sensitivity defined as $\partial C/\partial\sigma$, representing the option price change for a 0.01 (1 percentage point) change in annualized volatility. Vega is always positive for long option positions.
- **$S_{0}$**: The current spot price of the underlying asset, which scales vega proportionally to the level of the underlying.
- **$N'(d_{1})$**: The standard normal probability density function evaluated at $d_{1}$, which is maximized when $d_{1}=0$ (at-the-money) and decreases as the option moves ITM or OTM.
- **$\sqrt{T}$**: The square root of time to expiration, showing how vega increases with the uncertainty accumulation from longer time horizons.
- **$d_{1}$**: The standard Black–Scholes composite term:
  $$d_{1}=\frac{\ln(S_{0}/K)+(r+\sigma^{2}/2)T}{\sigma\sqrt{T}}$$
  that determines the location of the probability density.
- **$\sigma$**: The current (or baseline) annualized volatility, which appears implicitly in $d_{1}$ and determines the distribution's spread.
- **$T$**: Time to expiration in years, reflecting the duration over which volatility can impact the option's payoff.

## Interpretation
Vega measures the time value component of option pricing that arises from uncertainty about future price movements. Higher volatility increases the probability of both large gains and large losses, but because option payoffs are asymmetric (limited downside, unlimited upside), the expected value to long option holders increases with volatility.

The normal PDF $N'(d_{1})$ ensures vega follows the familiar pattern: maximum at-the-money (where $d_{1}\approx 0$) and decreasing as options move ITM or OTM. This occurs because at-the-money options derive the most value from volatility—their payoff can swing dramatically in either direction. Deep ITM options behave more like the underlying, and deep OTM options have low probability of any payoff regardless of volatility.

The $\sqrt{T}$ scaling reflects how volatility exposure accumulates over time. Longer-dated options have more time for price uncertainty to manifest, increasing their vega. However, vega per unit time ($\nu/T$) actually decreases with maturity, meaning shorter-dated options have more vega per day of life.

Vega is symmetric between calls and puts due to put-call parity. Long a call and long a put with the same strike and expiration have the same vega exposure because both derive value from the same volatility of the underlying. This symmetry enables pure volatility positions through combinations of calls and puts.

## Assumptions
Vega calculations depend on Black–Scholes assumptions with particular sensitivity to volatility modeling:

1. **Lognormal Distribution**: Vega assumes prices follow a lognormal distribution; different return distributions would alter vega's relationship to strike and expiration.

2. **Deterministic Volatility**: The formula treats volatility as a parameter, not a stochastic process. Stochastic volatility models require conditional vega calculations.

3. **Constant Volatility**: Vega is calculated at a specific volatility level; the actual sensitivity to changes in volatility may vary with the volatility level itself (volga effect).

4. **No Jumps**: Continuous price paths ensure vega represents true volatility exposure; jump processes would require additional sensitivity measures.

## Practical Use
Vega is the cornerstone of volatility trading and risk management. Traders use vega to measure their exposure to volatility changes, construct volatility-neutral portfolios, and price new options relative to existing ones. The goal of many options strategies is to isolate and profit from volatility exposure rather than directional price movements.

Portfolio vega aggregates across all positions: $\nu_{portfolio}=\sum w_{i}\nu_{i}$. A portfolio with positive vega benefits from increased volatility (option prices rise), while negative vega benefits from decreased volatility (option prices fall). Volatility traders aim to be right about future volatility levels rather than price directions.

The vega-gamma relationship helps explain why near-term options have disproportionately high vega relative to their prices. These "high-leverage" vega positions attract speculative traders seeking efficient volatility exposure, while market makers must manage the corresponding gamma risk.

Vega also enables relative value analysis across strikes and expirations. When implied volatilities differ across strikes (volatility skew) or expirations (term structure), traders compare actual vega-weighted vol levels to identify overpriced or underpriced options.

---

### Black-Scholes Volga (Vega Convexity)

**Equation:**

```
Volga = \frac{S_0 N'(d_1) d_1 d_2}{\sigma}
```

## Equation Variables
Volga (also called Vomma) measures the second derivative of the option price with respect to volatility, capturing the curvature of option value with respect to changes in implied volatility. This second-order Greek helps traders understand how vega itself changes as volatility levels change, which is critical for managing volatility exposure in changing market conditions.

- **Volga**: The volatility convexity defined as $\partial^{2}C/\partial\sigma^{2}$, measuring how vega changes for a one-percentage-point change in volatility. Volga is always positive for long option positions.
- **$S_{0}$**: The current spot price of the underlying asset, scaling volga proportionally to the level of the underlying.
- **$N'(d_{1})$**: The standard normal probability density function at $d_{1}$, which is maximized at-the-money and decreases with moneyness.
- **$d_{1}$ and $d_{2}$**: The standard Black–Scholes composite terms:
  $$d_{1}=\frac{\ln(S_{0}/K)+(r+\sigma^{2}/2)T}{\sigma\sqrt{T}}$$
  $$d_{2}=d_{1}-\sigma\sqrt{T}$$
- **$\sigma$**: The current annualized volatility level, appearing in the denominator to scale the convexity measure.
- **$T$**: Time to expiration, implicitly affecting volga through $d_{1}$ and $d_{2}$.

## Interpretation
Volga measures the rate of change of vega: as volatility changes, vega increases or decreases depending on the current volatility level and the option's moneyness. Positive volga means vega increases when volatility rises, creating a convex relationship between option value and volatility.

The product $d_{1}d_{2}$ determines volga's moneyness profile. For at-the-money options ($d_{1}\approx 0$), $d_{1}d_{2}\approx 0$, but the actual volga is not zero—it is maximized near ATM because $N'(d_{1})$ is largest there. The combination of $N'(d_{1})$ and $d_{1}d_{2}$ creates a volga curve that peaks near-the-money but not exactly at-the-money.

The sign of volga is always positive for long option positions. This means vega increases as volatility rises—options become more sensitive to volatility when volatility is already high. This positive convexity is valuable: long option positions benefit disproportionately from volatility spikes.

Short option positions have negative volga, meaning their vega decreases as volatility rises. This creates a challenging dynamic for volatility sellers: they receive premium when volatility is high but become less hedged (lower vega) just when they most need protection against further volatility increases.

## Assumptions
Volga calculations depend on Black–Scholes assumptions with particular sensitivity to volatility dynamics:

1. **Deterministic Volatility**: Volga treats volatility as a parameter for which we compute second-order sensitivity. Stochastic volatility models would require conditional volga calculations.

2. **Smooth Sensitivity**: The formula assumes vega changes smoothly with volatility, which holds under Black–Scholes but may not hold in markets with jumps or regime changes.

3. **No Volatility Smile**: Flat volatility surface assumptions ignore the relationship between moneyness and volga that exists in actual markets.

4. **European Exercise**: American options may exhibit different volga behavior due to early exercise features.

## Practical Use
Volga is essential for understanding the dynamic behavior of vega exposure as market conditions change. Traders with large vega positions must monitor volga to anticipate how their exposure will evolve if volatility changes significantly.

Portfolio volga aggregation helps measure second-order volatility exposure. A portfolio with positive volga benefits from volatility changes in either direction (as long as it remains long vol), while negative volga positions suffer when volatility changes significantly.

During volatility regime changes—moving from calm to turbulent markets or vice versa—volga determines how quickly vega exposure changes. High-volga portfolios experience rapid vega increases during volatility spikes, potentially exceeding risk limits if not properly managed.

Volga also affects the pricing of volatility derivatives and the hedging of options portfolios. The interaction between vega and volga must be considered when constructing hedges that will remain effective across different volatility scenarios.

---

### Black-Scholes d1 and d2 Terms

**Equation:**

```
d_1 = \frac{\ln(S_0/K) + (r + \sigma^2/2)T}{\sigma \sqrt{T}} \quad ; \quad d_2 = d_1 - \sigma \sqrt{T}
```

## Equation Variables
The $d_{1}$ and $d_{2}$ terms are composite expressions that appear throughout the Black–Scholes framework, serving as the critical inputs to the standard normal cumulative distribution function $N(\cdot)$ that transforms these standardized values into option pricing components. These terms encapsulate the essential dynamics of the underlying asset's price evolution relative to the strike price.

- **$d_{1}$**: The primary composite term combining log-moneyness, risk-adjusted drift, and volatility. It represents the standardized distance to the strike price under the risk-neutral measure, adjusted for the volatility over the option's life.
- **$d_{2}$**: The secondary composite term derived by subtracting total volatility from $d_{1}$. This term represents the effective threshold for the underlying price at expiration and is directly related to the probability of the option expiring in-the-money.
- **$\ln(S_{0}/K)$**: The natural logarithm of the money-ness ratio, measuring how far in-the-money or out-of-the-money the option is at inception. Positive values indicate in-the-money calls (or out-of-the-money puts), while negative values indicate the opposite.
- **$r$**: The continuously compounded risk-free interest rate, representing the expected return on risk-free capital over the option's life.
- **$\sigma^{2}/2$**: One-half of the variance of log returns, which, when combined with the risk-free rate, creates the risk-adjusted drift term that appears in the exponent of the lognormal distribution.
- **$T$**: The time to maturity in years, scaling both the drift and volatility components appropriately for the option's duration.
- **$\sigma$**: The annualized volatility (standard deviation) of the underlying asset's log returns, measuring the amplitude of price fluctuations expected over one year.
- **$\sigma\sqrt{T}$**: The total volatility over the option's life, representing the standard deviation of the log price change from time 0 to time $T$. This is often called the "volatility over life" and is a key determinant of option value.

## Interpretation
The $d_{1}$ term has a profound statistical and economic interpretation within the Black–Scholes framework. It represents the standardized distance from the current spot price to the strike price, measured in units of future volatility, while incorporating the risk-adjusted drift that accounts for both the time value of money and the variance compensation required for holding risky assets. The numerator $\ln(S_{0}/K)+(r+\sigma^{2}/2)T$ can be understood as the expected log-price under the risk-neutral measure at expiration, and dividing by $\sigma\sqrt{T}$ standardizes this expected value relative to its uncertainty.

The $N(d_{1})$ probability has multiple equivalent interpretations. It represents the risk-neutral probability that the option will expire in-the-money, adjusted for the present value of expected dividends. It also represents the delta of the option, which is the hedge ratio needed to create a locally risk-free portfolio. Additionally, $N(d_{1})$ can be interpreted as the conditional expectation of the indicator function for exercise, making it a fundamental component of risk-neutral valuation.

The $d_{2}=d_{1}-\sigma\sqrt{T}$ relationship emerges from the lognormal distribution of prices at expiration. When the log-price follows a normal distribution with mean $\ln(S_{0})+(r-\sigma^{2}/2)T$ and variance $\sigma^{2}T$, the condition $S_{T}>K$ transforms through logarithms to $d_{2}>0$. Thus, $N(d_{2})$ is the exact risk-neutral probability of exercise, while $N(d_{1})$ is this probability adjusted for the present value of the underlying asset's expected value.

The difference between $d_{1}$ and $d_{2}$—which is exactly $\sigma\sqrt{T}$—captures the convexity value of the option. This convexity arises because options provide asymmetric payoffs: unlimited upside potential with limited downside loss to the premium paid. The larger this difference, the more valuable the option's convexity, which is why options with longer maturities and higher volatilities command higher premiums.

## Assumptions
The interpretation and validity of $d_{1}$ and $d_{2}$ depend fundamentally on the Black–Scholes assumptions about price dynamics and market structure:

1. **Lognormal Distribution**: The underlying price follows a lognormal distribution at expiration, meaning log-returns are normally distributed. This assumption is embedded in the $\ln(S_{0}/K)$ term and the variance $\sigma^{2}T$ scaling.

2. **Constant Volatility**: The volatility $\sigma$ is constant and known with certainty, ensuring that $\sigma^{2}T$ accurately represents the total variance over the option's life.

3. **Risk-Neutral Measure**: The risk-adjusted drift $r+\sigma^{2}/2$ correctly reflects the expected return under the equivalent martingale measure, which eliminates arbitrage opportunities.

4. **No Dividends**: The derivation assumes no dividends are paid during the option's life, as dividend payments would modify the forward price and drift term.

5. **Continuous Compounding**: The use of continuous compounding for both the risk-free rate and the lognormal drift is essential to the algebraic structure of the expressions.

When these assumptions are violated, $d_{1}$ and $d_{2}$ may require modification or replacement with more complex expressions that account for stochastic volatility, jumps, or early exercise features.

## Practical Use
In practice, $d_{1}$ and $d_{2}$ serve as the computational core of the Black–Scholes pricing framework. Every derivative calculation—whether for options, futures, or structured products—requires evaluating these terms as inputs to the standard normal CDF. Understanding their structure helps practitioners diagnose pricing anomalies and recognize when model adjustments may be necessary.

The $d_{1}$ term directly yields the option's delta: $\Delta=N(d_{1})$ for calls and $\Delta=N(d_{1})-1$ for puts. This relationship enables real-time hedging calculations as market prices change. The delta's accuracy depends on the accuracy of $d_{1}$, which in turn depends on correctly estimating volatility $\sigma$. Small errors in volatility estimates propagate through $d_{1}$ and into delta calculations.

The $d_{2}$ term governs the probability of exercise: $N(d_{2})$ is the exact risk-neutral exercise probability. Traders use this probability to assess whether options are appropriately priced relative to their statistical exercise likelihood. When market prices imply exercise probabilities that differ significantly from model predictions, relative value opportunities may emerge.

The difference $d_{1}-d_{2}=\sigma\sqrt{T}$ provides insight into the option's time value and convexity. Larger differences (higher volatility or longer time) indicate greater convexity value. This relationship helps explain why out-of-the-money options with long maturities can be expensive despite having low intrinsic value—they derive substantial value from convexity.

---

### Compound Option (Geske's Formula)

**Equation:**

```
C_{compound} = S_0 N_2(d_1, h_1; \rho) - K_1 e^{-rT_1} N_2(d_2, h_2; \rho) - K_2 e^{-rT_2} N(h_2)
```

## Equation Variables
Compound options are options on options, providing the right to buy or sell another option at a predetermined strike. Geske's formula extends the Black–Scholes framework to value these nested options using the bivariate normal distribution, which captures the joint probability of exercise decisions at two different expiration dates.

- **$C_{compound}$**: The value of the compound call option, representing the right to purchase an underlying call option at time $T_{1}$ for strike $K_{1}$.
- **$S_{0}$**: The current spot price of the underlying asset.
- **$K_{1}$**: The strike price of the compound option (outer option), paid at $T_{1}$ if the holder exercises into the underlying option.
- **$K_{2}$**: The strike price of the underlying option (inner option), which will be exercised at $T_{2}$ if the compound option is exercised.
- **$T_{1}$**: The expiration date of the compound option (outer option).
- **$T_{2}$**: The expiration date of the underlying option (inner option), with $T_{2}>T_{1}$.
- **$r$**: The continuously compounded risk-free interest rate.
- **$q$**: The continuously compounded dividend yield on the underlying asset.
- **$\sigma$**: The annualized volatility of the underlying asset.
- **$N(\cdot)$**: The standard normal cumulative distribution function.
- **$N_{2}(\cdot,\cdot;\rho)$**: The bivariate normal cumulative distribution function with correlation $\rho$.
- **$d_{1}, d_{2}$**: Standard Black–Scholes terms for the underlying option.
- **$h_{1}, h_{2}$**: Modified terms for compound option pricing:
  $$h_{1}=\frac{\ln(K_{1}/S_{0})+(r-q-\sigma^{2}/2)T_{1}}{\sigma\sqrt{T_{1}}}$$
  $$h_{2}=h_{1}-\sigma\sqrt{T_{1}}$$
- **$\rho$**: The correlation between the standardized variables, equal to $\sqrt{T_{1}/T_{2}}$.

## Interpretation
Compound options involve two decision dates and two strikes, creating a two-dimensional optimization problem. The holder of a call on a call must decide at $T_{1}$ whether exercising and paying $K_{1}$ to receive the underlying option is profitable, given the underlying option's value at that time.

The bivariate normal distribution $N_{2}(d_{1},h_{1};\rho)$ captures the joint probability that the underlying option expires in-the-money (related to $d_{1}$) and that the compound option should be exercised (related to $h_{1}$). The correlation $\rho=\sqrt{T_{1}/T_{2}}$ reflects the information common to both decisions.

The first term $S_{0}N_{2}(d_{1},h_{1};\rho)$ represents the expected value of receiving the underlying option's stock component if both exercise decisions favor the holder. The second term $-K_{1}e^{-rT_{1}}N_{2}(d_{2},h_{2};\rho)$ represents the present value of paying the compound option strike if exercise occurs. The third term $-K_{2}e^{-rT_{2}}N(h_{2})$ adjusts for the expected value of the underlying option's strike payment.

The formula captures the interaction between the two exercise decisions. The holder exercises the compound option only if the underlying option's value exceeds $K_{1}$, which itself depends on whether the underlying option will be exercised at $T_{2}$. This nested optionality creates value that depends on the entire volatility structure over both periods.

## Assumptions
Geske's compound option model extends Black–Scholes with specific assumptions:

1. **Two Deterministic Maturities**: The two expiration dates $T_{1}$ and $T_{2}$ are known and fixed.

2. **Single Underlying**: The compound option and underlying option have the same underlying asset.

3. **Lognormal Dynamics**: The underlying follows geometric Brownian motion with constant volatility.

4. **Known Correlation**: The temporal correlation $\rho=\sqrt{T_{1}/T_{2}}$ is determined by the ratio of time periods.

5. **European Exercise**: Both the compound and underlying options can only be exercised at their respective expirations.

6. **No Dividends**: Assumes no dividend payments during either period; dividends require adjustment.

## Practical Use
Compound options model decision problems in corporate finance and capital markets. The option to acquire another company, the option to expand a project, and callable/cancelable structures all exhibit compound option characteristics.

Employee stock options often have compound option features when there are multiple vesting dates. Each vesting date provides a new option (or the right to exercise existing options), creating a sequence of compound options on the original grant.

Interest rate caps and floors can be viewed as compound options on forward rates, where each payment date provides a new option on the forward rate applicable to the next period. Geske's framework extends to these multi-period structures.

The compound option framework also applies to callable bonds and convertible bonds, where the issuer's call decision and the holder's conversion decision create nested optionality. Understanding these interactions is essential for pricing and hedging complex fixed income derivatives.

---

### Exchange Option (Margrabe Formula)

**Equation:**

```
C = S_2 N(d_1) - S_1 N(d_2)
```

## Equation Variables
The Margrabe formula provides the no-arbitrage price for an exchange option—the right to exchange one asset for another at a predetermined ratio. This generalization of Black–Scholes accommodates options where the payoff depends on the relative performance of two assets rather than the absolute price of a single asset.

- **$C$**: The value of the exchange option, representing the right to receive asset 2 in exchange for asset 1 at the predetermined exchange ratio (typically 1:1 unless specified otherwise).
- **$S_{1}$**: The current price of asset 1 (the asset to be given up upon exercise).
- **$S_{2}$**: The current price of asset 2 (the asset to be received upon exercise).
- **$r$**: The continuously compounded risk-free interest rate, serving as the common discount rate for both assets under the risk-neutral measure.
- **$T$**: The time to expiration of the exchange option.
- **$\sigma_{1}$**: The annualized volatility of asset 1's log returns.
- **$\sigma_{2}$**: The annualized volatility of asset 2's log returns.
- **$\rho$**: The correlation coefficient between the log returns of asset 1 and asset 2, ranging from -1 to +1.
- **$\sigma$**: The volatility of the relative price $S_{2}/S_{1}$:
  $$\sigma=\sqrt{\sigma_{1}^{2}+\sigma_{2}^{2}-2\rho\sigma_{1}\sigma_{2}}$$
- **$N(\cdot)$**: The standard normal cumulative distribution function.
- **$d_{1}, d_{2}$**: Modified composite terms:
  $$d_{1}=\frac{\ln(S_{2}/S_{1})+(r+\sigma^{2}/2)T}{\sigma\sqrt{T}}$$
  $$d_{2}=d_{1}-\sigma\sqrt{T}$$

## Interpretation
The Margrabe formula transforms the two-asset problem into a single-asset problem by focusing on the ratio $S_{2}/S_{1}$. The exchange option pays $\max(S_{2}/S_{1}-1,0)$ at expiration (for a 1:1 exchange ratio), which is exactly the payoff of a call option on the ratio with strike 1.

The effective volatility $\sigma$ captures how the relative price fluctuates, accounting for both individual asset volatilities and their correlation. Higher individual volatilities increase $\sigma$ and option value, while higher correlation reduces $\sigma$ and option value. This negative correlation effect makes intuitive sense: if assets move together, the ratio remains stable, reducing the value of the exchange right.

When $\rho=1$ (perfect positive correlation), the two assets move in lockstep and their ratio is constant (assuming no dividend differences). The exchange option has zero value because you can never profit from exchanging. When $\rho<1$, the ratio can drift, creating value for the right to exchange at favorable ratios.

The formula reduces to standard Black–Scholes when one asset is a bond (asset 1 with $\sigma_{1}=0$). In this case, $\sigma=\sigma_{2}$ and the formula becomes $C=S_{2}N(d_{1})-Ke^{-rT}N(d_{2})$ with $K=1$, which is the standard call formula on asset 2 with strike 1.

## Assumptions
The Margrabe formula requires specific assumptions beyond standard Black–Scholes:

1. **Known Correlation**: The correlation $\rho$ between asset returns is known and constant. Stochastic correlation requires extended models.

2. **Lognormal Dynamics**: Both assets follow geometric Brownian motion with constant parameters.

3. **No Income**: No dividends or other income from either asset during the option's life. Income requires adjustment to the forward prices.

4. **Constant Volatility**: Volatilities $\sigma_{1}$ and $\sigma_{2}$ remain constant over the option's life.

5. **Single Exchange Ratio**: The exchange ratio is fixed and known at inception; varying ratios require modified formulas.

## Practical Use
Exchange options appear in numerous financial applications where payoffs depend on relative rather than absolute performance. M&A transactions with stock-for-stock exchanges, currency options, and commodity conversion options all exhibit exchange option characteristics.

In corporate finance, Margrabe's formula values the option to exchange one security for another, which appears in convertible bonds (exchange option on the conversion value), warrant pricing, and structured products with asset exchange features.

Currency options can be viewed as exchange options where one asset is domestic currency and the other is foreign currency. The foreign interest rate plays the role of the "dividend yield" on the foreign asset.

The correlation sensitivity of exchange options makes them useful for trading relative value between assets. A trader who believes correlation will decrease (increasing relative volatility) might buy exchange options to profit from the expected increase in value.

---

### Forward Price of Underlying

**Equation:**

```
F = S_0 e^{(r-q)T}
```

## Equation Variables
The forward price formula establishes the no-arbitrage relationship between the spot price of an asset and its forward price, accounting for the cost of carry including financing costs and any benefits from holding the asset (such as dividends or convenience yield). This fundamental relationship underpins derivatives pricing across all asset classes.

- **$F$**: The forward price, representing the agreed-upon price for delivery of the underlying asset at time $T$ in a forward contract. This is a deterministic value determined by current market conditions.
- **$S_{0}$**: The current spot price of the underlying asset, observable in the market today and serving as the starting point for the forward price calculation.
- **$r$**: The continuously compounded risk-free interest rate, representing the cost of financing the spot purchase over the forward period.
- **$q$**: The continuously compounded dividend yield (for equities) or foreign interest rate (for currencies), representing the benefit from holding the underlying asset.
- **$T$**: The time to delivery in years, determining the duration over which carry costs and benefits accumulate.
- **$e^{(r-q)T}$**: The net carry factor, growing the spot price at the net cost of carry rate $r-q$ over time $T$.

## Interpretation
The forward price reflects the no-arbitrage relationship between spot and forward markets. If the forward price differed from $S_{0}e^{(r-q)T}$, arbitrageurs could execute cash-and-carry or reverse-cash-and-carry strategies to lock in risk-free profits until the forward expires.

The cash-and-carry arbitrage works as follows: if $F > S_{0}e^{(r-q)T}$, borrow money at rate $r$, buy the underlying at $S_{0}$, hold it while collecting dividends at rate $q$, and deliver into a forward contract at $F$. The profit is $F - S_{0}e^{(r-q)T}$ (less transaction costs). If $F < S_{0}e^{(r-q)T}$, reverse the strategy: sell short the underlying, invest the proceeds, and buy the forward to cover the short.

The net carry rate $r-q$ represents the cost of holding the underlying asset. For non-dividend-paying stocks, $q=0$, so the forward grows at the risk-free rate. For dividend-paying stocks, $q$ reduces the forward price because dividends offset financing costs. For currencies, $q$ is the foreign interest rate, making the forward depend on the interest rate differential between domestic and foreign currencies.

The forward price equals the expected future spot price under the risk-neutral measure: $F = \mathbb{E}^{Q}[S_{T}]$. This follows from the martingale property of discounted asset prices under the risk-neutral measure. However, the forward is not a prediction of the actual future spot price—it is purely an arbitrage-free pricing relationship.

## Assumptions
The forward price formula relies on several key assumptions about market structure and asset characteristics:

1. **No Arbitrage**: The fundamental assumption underlying all derivative pricing; arbitrage opportunities are immediately exploited until prices equilibrate.

2. **Constant Rates**: Risk-free rate and dividend yield are constant over the forward period, or their expected values are used for the calculation.

3. **Known Income**: Dividends or other income are known with certainty (or their expected values are used). Stochastic income requires adjustment.

4. **Perfect Markets**: No transaction costs, bid-ask spreads, taxes, or borrowing constraints. Continuous trading and perfect liquidity.

5. **Cash Settlement**: The formula assumes delivery of the underlying; cash-settled derivatives may have slight adjustments.

6. **No Storage Costs**: The basic formula assumes zero storage costs; commodities with storage require adding storage costs to the carry calculation.

## Practical Use
The forward price is fundamental to derivatives pricing, hedging, and relative value analysis across all asset classes. Every forward contract, futures contract, and many option pricing formulas reference the forward price as a key input.

In interest rate markets, forward rates are derived from the yield curve and used to price interest rate swaps, caps, and floors. The forward rate represents the expected future borrowing rate under the no-arbitrage framework.

In currency markets, forward exchange rates incorporate interest rate differentials between currencies. This relationship is central to hedging international investments and understanding carry trade strategies that profit from interest rate differentials.

For equity derivatives, the forward price determines the relationship between option strikes and underlying prices. At-the-money options are defined relative to the forward, not the spot, for dividend-paying stocks. The forward also determines the correct strike for stock dividends and corporate actions.

---

### Forward-Start Option Price

**Equation:**

```
C_{fs} = S_0 e^{-qT} N(d_1^{fs}) - K S_0 N(d_2^{fs})
```

## Equation Variables
Forward-start options are compound options that grant the right to receive (for a call) or purchase (for a put) another option at a future date with a strike set relative to the spot price at that date. These options are characterized by a predetermined strike percentage and a start date when the underlying option is "born."

- **$C_{fs}$**: The price of the forward-start option at time $t=0$, representing the present value of the expected option that will exist at the start date.
- **$S_{0}$**: The current spot price of the underlying asset, serving as the reference for both the forward-start option pricing and the eventual strike determination.
- **$K_{rel}$**: The relative strike expressed as a percentage of the spot price at the start date. A 100% relative strike means the underlying option will be at-the-money when it starts.
- **$T$**: The total time to final expiration, which encompasses both the waiting period until the start date and the life of the underlying option.
- **$r$**: The continuously compounded risk-free interest rate, used for discounting and the drift component.
- **$q$**: The continuously compounded dividend yield, which reduces the effective carry on the underlying asset.
- **$\sigma$**: The annualized volatility of the underlying, assumed constant over the entire period in the basic model.
- **$N(\cdot)$**: The standard normal cumulative distribution function for transforming composite terms into probabilities.
- **$d_{1}^{fs}, d_{2}^{fs}$**: Modified composite terms for forward-start pricing that incorporate the volatility over the total period.

## Interpretation
Forward-start options can be understood as options on options. At the start date $t_{s}$, a new standard option is created with strike $K=K_{rel}S_{t_{s}}$. The value of this new option depends on the spot price at that time and the remaining time to final expiration $T-t_{s}$.

The pricing formula averages over all possible spot prices at the start date, weighting by their risk-neutral probabilities. The expected value of the underlying option is computed, then discounted to present value. For a standard ATM forward start (100% relative strike), this simplifies to a Black–Scholes-style formula with modified parameters.

The key insight is that the forward-start option price depends on the total variance from $t=0$ to $t=T$, not just the variance from $t_{s}$ to $t=T$. The uncertainty about the future spot price at $t_{s}$ affects the strike at which the underlying option begins trading, and this uncertainty has value.

For relative strikes of 100% (ATM), the forward-start option price is approximately $S_{0}e^{-qT}N(d_{1})-K_{rel}S_{0}N(d_{2})$, where the $d$-terms use the total variance $\sigma^{2}T$. This looks similar to a standard Black–Scholes call but with the forward price modified by the relative strike structure.

## Assumptions
Forward-start option pricing builds on Black–Scholes assumptions with additional considerations:

1. **Time-Homogeneous Volatility**: The same volatility $\sigma$ applies to both the pre-start period and the post-start period. Stochastic or regime-dependent volatility requires more complex models.

2. **Known Strike Percentage**: The relative strike $K_{rel}$ is known and fixed at inception, not subject to adjustment based on market conditions.

3. **Deterministic Rates**: Interest rates and dividends are known and constant (or their expected values are used).

4. **European Exercise**: Both the forward-start option and the underlying option are European-style.

5. **No Jumps**: Continuous price paths ensure the lognormal distribution applies throughout the entire period.

## Practical Use
Forward-start options are commonly used in employee stock option compensation programs. Employees receive options that vest over time, with new options "starting" at each vesting date with strikes set at the then-current stock price. This creates a forward-start structure where each tranche of options has different start dates.

The pricing model helps companies value employee compensation expense and helps employees understand the value of their option grants. The total value of a multi-tranche grant equals the sum of forward-start option values with different start dates.

In institutional finance, forward-start options appear in performance-based compensation, bonus structures, and structured products. They provide payoff patterns that depend on future relative performance rather than absolute price levels.

Rolling volatility strategies use forward-start concepts to maintain consistent volatility exposure over time. By continuously rolling forward-start options, investors can achieve exposure to volatility without the theta decay of longer-dated options.

---

### Implied Volatility Newton-Raphson

**Equation:**

```
\sigma_{n+1} = \sigma_n - \frac{C(\sigma_n) - C_{mkt}}{\nu(\sigma_n)}
```

## Equation Variables
The Newton–Raphson method for implied volatility calculates the volatility level that, when plugged into the Black–Scholes formula, produces the observed market price of an option. This numerical root-finding technique is the workhorse algorithm for volatility surface construction and options market analysis.

- **$\sigma_{n}$**: The current iteration's volatility estimate, initialized from historical volatility, ATM implied vol, or other reasonable guess.
- **$\sigma_{n+1}$**: The updated volatility estimate after applying the Newton–Raphson correction.
- **$C(\sigma_{n})$**: The Black–Scholes call price evaluated at the current volatility estimate $\sigma_{n}$. This represents the theoretical price if the market's implied volatility equals the current estimate.
- **$C_{mkt}$**: The observed market price of the call option, typically the mid-point of bid-ask quotes or the last traded price.
- **$\nu(\sigma_{n})$**: The vega of the option evaluated at $\sigma_{n}$, representing how much the option price changes per unit change in volatility:
  $$\nu=S_{0}N'(d_{1})\sqrt{T}$$
- **$d_{1}$**: The standard Black–Scholes composite term evaluated at $\sigma_{n}$.
- **$S_{0}$**: The current spot price of the underlying asset.
- **$T$**: The time to expiration in years.
- **$N'(d_{1})$**: The standard normal probability density function.

## Interpretation
The Newton–Raphson formula solves the equation $C(\sigma)=C_{mkt}$ for $\sigma$ by iteratively improving volatility estimates. The correction term $(C(\sigma_{n})-C_{mkt})/\nu(\sigma_{n})$ represents the pricing error divided by the sensitivity to volatility, which indicates how much to adjust the volatility estimate to reduce the error.

If $C(\sigma_{n}) > C_{mkt}$, the current estimate is too high (produces too high a price), so the next estimate should be lower by the error scaled by vega. Similarly, if $C(\sigma_{n}) < C_{mkt}$, the estimate needs to increase. This binary adjustment continues until the pricing error falls below a tolerance threshold (typically $0.01 or less).

The method converges quickly—often within 3-5 iterations—when starting from a reasonable initial guess and when vega is not near zero. Convergence is quadratic near the root, meaning the number of correct digits approximately doubles each iteration.

However, Newton–Raphson can fail or become unstable when vega is small (deep ITM or OTM options) or when the initial guess is poor. In these cases, alternative methods like bisection provide more robust convergence at the cost of slower speed.

## Assumptions
The Newton–Raphson method for implied volatility assumes:

1. **Monotonic Pricing**: The Black–Scholes price is monotonic in volatility, so each market price corresponds to at most one implied volatility. This holds for European options under standard assumptions.

2. **Positive Vega**: Vega is positive, ensuring the derivative exists and the correction term is well-defined. Vega approaches zero at extreme moneyness, causing numerical issues.

3. **Arbitrage-Free Prices**: The market price must be within the theoretical no-arbitrage bounds (greater than intrinsic value, less than forward price for calls) for a valid solution to exist.

4. **Constant Parameters**: Other Black–Schassis assumptions hold during the iteration; dividends, rates, and time are fixed.

## Practical Use
Implied volatility calculation is fundamental to options market analysis. Traders, risk managers, and quants use implied volatility to compare options across strikes and expirations, identify relative value opportunities, and construct volatility surfaces.

The Newton–Raphson algorithm is implemented in virtually all options pricing systems and electronic trading platforms. Modern implementations include safeguards for convergence failure, alternative methods (bisection, Brent's method) as fallbacks, and smoothing for noisy market prices.

Implied volatility feeds into volatility trading strategies, where traders compare implied vol to historical realized vol or forward-looking volatility forecasts. Significant discrepancies may indicate overvalued or undervalued options, though transaction costs and other frictions must be considered.

The output from Newton–Raphson calibration—the implied volatility surface—supports pricing of illiquid options, risk management for option portfolios, and hedging decisions for exotic derivatives that reference vanilla option prices.

---

### Quanto Option Price

**Equation:**

```
C_{quanto} = S_0 e^{-qT} N(d_1^{Q}) - K e^{-rT} N(d_2^{Q})
```

## Equation Variables
Quanto options are cross-currency derivatives where the payoff is calculated in one currency (typically the investor's domestic currency) but the underlying is denominated in another currency (foreign currency). The defining feature is that the exchange rate is fixed at inception, eliminating FX risk for the option holder but introducing correlation risk for the pricing model.

- **$C_{quanto}$**: The quanto call option price, representing the value of the right to receive a payoff in domestic currency based on a foreign-denominated underlying.
- **$S_{0}$**: The current spot price of the underlying asset in foreign currency.
- **$r$**: The domestic risk-free interest rate (continuously compounded), used for discounting the domestic-strike payoff.
- **$r_{f}$**: The foreign risk-free interest rate, which appears as the foreign dividend yield $q$ in the adjusted formula.
- **$q$**: The dividend yield or foreign interest rate equivalent, which is $r_{f}$ for currency-underlying options.
- **$T$**: The time to expiration in years.
- **$\sigma_{S}$**: The volatility of the underlying asset's returns in foreign currency.
- **$\sigma_{V}$**: The volatility of the exchange rate (foreign currency per domestic currency).
- **$\rho_{Q}$**: The correlation between the underlying asset returns and the exchange rate returns.
- **$\sigma$**: The effective volatility of the quanto-adjusted underlying:
  $$\sigma=\sqrt{\sigma_{S}^{2}+\sigma_{V}^{2}+2\rho_{Q}\sigma_{S}\sigma_{V}}$$
- **$d_{1}^{Q}, d_{2}^{Q}$**: Modified composite terms incorporating the quanto adjustment to the drift:
  $$d_{1}^{Q}=\frac{\ln(S_{0}/K)+(r-q+\rho_{Q}\sigma_{S}\sigma_{V})T}{\sigma\sqrt{T}}$$
  $$d_{2}^{Q}=d_{1}^{Q}-\sigma\sqrt{T}$$

## Interpretation
Quanto options solve the problem of cross-currency investing where an investor wants exposure to a foreign asset but wants to eliminate FX risk. The payoff is fixed in domestic currency regardless of how the exchange rate moves between inception and expiration. This "FX-fixed" feature means the option's value depends on the correlation between the underlying asset and the exchange rate.

The key adjustment from standard Black–Scholes is the $\rho_{Q}\sigma_{S}\sigma_{V}$ term in the drift. This correlation term arises because the exchange rate and underlying price movements are not independent—they are linked through economic relationships, market correlations, and common risk factors. The effective drift includes a correction for this correlation.

The interpretation of $\rho_{Q}$ is crucial: a positive correlation means the underlying tends to appreciate when the domestic currency strengthens (foreign currency weakens). This hurts quanto option holders because the domestic-currency payoff is reduced. A negative correlation means the underlying tends to appreciate when the domestic currency weakens, which benefits quanto holders.

The effective volatility $\sigma$ includes both individual volatilities and the correlation term. Unlike the Margrabe formula (where correlation reduces effective volatility), here correlation increases effective volatility when $\rho_{Q}>0$. This makes sense: correlation creates additional uncertainty in the domestic-currency payoff beyond the sum of individual uncertainties.

## Assumptions
Quanto pricing requires specific assumptions about the relationship between asset and FX dynamics:

1. **Known Correlation**: The correlation $\rho_{Q}$ between asset returns and FX returns is known and constant. In practice, this correlation is difficult to estimate and may be unstable.

2. **Lognormal Dynamics**: Both the underlying asset and the exchange rate follow geometric Brownian motion with constant volatilities.

3. **Deterministic Rates**: Domestic and foreign interest rates are constant (or their expected values are used).

4. **Fixed Exchange Rate**: The exchange rate for payoff conversion is fixed at inception and known with certainty.

5. **No Early Exercise**: Standard quanto options are European; American features require numerical methods.

## Practical Use
Quanto options are essential tools for international portfolio management and emerging market investing. An American investor wanting exposure to Brazilian stocks but concerned about BRL/USD volatility can purchase quanto options that pay in USD based on BRL-denominated performance.

The correlation risk embedded in quanto pricing makes these instruments complex to value and hedge. Traders must carefully estimate and monitor the correlation between underlying and FX, as this parameter significantly affects pricing and risk management.

Equity index quanto options allow investors to gain emerging market exposure while eliminating currency risk. The fixed exchange rate feature means the payoff depends only on the underlying index performance, not on FX movements.

The quanto adjustment also applies to other cross-currency derivatives including swaps, forwards, and exotic options. Understanding the correlation structure is essential for pricing and hedging any derivative where payoff currency differs from underlying currency.

---

## Fixed Income and Bond Pricing

Fixed Income covers the mathematics of bond valuation, yield curve construction, and interest rate risk measures. This includes both the fundamental pricing formulas for coupon and zero-coupon bonds, as well as the modern term structure models that capture the dynamics of interest rates.

### Subcategories
- **Bond Pricing**: Zero-coupon and coupon-bearing bond valuation
- **Duration and Convexity**: Interest rate sensitivity measures
- **Term Structure Models**: Vasicek, CIR, Hull-White, and affine models
- **Yield Curve Construction**: Interpolation and bootstrapping methods

### Asset Swap Spread

**Equation:**

```
ASW = \frac{P_{bond} - P_{swap}}{ASW_{\text{duration}}}
```

## Equation Variables
The asset swap spread (ASW) measures the yield difference between a bond and a par swap, isolating credit risk from interest rate risk.

- **$ASW$**: Asset swap spread in basis points
- **$P_{bond}$**: Market price of the bond
- **$P_{swap}$**: Price of a synthetic fixed-rate bond created from the swap curve
- **$ASW_{\text{duration}}$**: Duration of the asset swap position

For a par asset swap: $ASW = \text{Spread}$ such that $P_{bond} = \text{Par}$ when discounted at swap rates plus $ASW$.

## Interpretation
Asset swaps isolate credit risk by combining a bond with a receive-fixed/pay-floating swap. The swap converts the bond's fixed coupons to floating rates, removing interest rate exposure. The spread above the swap curve represents pure credit compensation. A 100 bp ASW means the bond yields 1% more than comparable-maturity swaps—equivalent to a 100 bp credit spread. ASW differs from Z-spread because ASW uses par swaps as benchmark while Z-spread uses zero rates. Par asset swaps match the bond's coupon frequency; market asset swaps use swap curve dates. ASW enables comparing bonds with different coupons and maturities on a common basis.

## Assumptions
- Swap curve represents the risk-free benchmark
- Liquidity in both bond and swap markets
- No counterparty risk in the swap
- Standard coupon and day count conventions

## Practical Use
Asset swap spreads are the primary relative value metric for investment grade bonds. A bond trading at tight ASW is rich relative to its peers; wide ASW suggests cheapness. ASW analysis drives relative value trades between bonds and swaps. The spread reflects credit quality, liquidity, and market conditions. Comparing ASW to OAS (option-adjusted spread) helps identify embedded options. During crises, ASW widens dramatically as credit risk premia increase. ASW time series reveal credit cycle dynamics. The metric is essential for credit portfolio management.

---

### Bond Convexity

**Equation:**

```
CV = \frac{1}{P} \cdot \frac{1}{(1+y/k)^2} \sum_{i=1}^{n} \frac{CF_i \cdot t_i(t_i+1)}{(1+y/k)^{t_i}}
```

## Equation Variables
Convexity measures the curvature of the price-yield relationship, capturing the second-order effect of yield changes on bond prices.

- **$CV$**: Convexity measure (dimensionless)
- **$P$**: Bond price
- **$y$**: Annual yield to maturity
- **$k$**: Number of coupon periods per year
- **$t_i$**: Time to cash flow $i$ (in years)
- **$CF_i$**: Cash flow at time $t_i$
- **$n$**: Total number of cash flows

## Interpretation
While duration provides a linear (first-order) approximation of price changes, convexity captures the curvature—the fact that price increases more when yields fall than price decreases when yields rise by the same amount. This asymmetry exists because the price-yield curve is convex, not linear. The formula weights each cash flow by $t_i(t_i+1)$, reflecting that later cash flows have greater convexity. Zero-coupon bonds have higher convexity than coupon bonds of the same maturity because all cash flows are concentrated at maturity. Convexity is always positive for bonds without embedded options, meaning prices benefit from volatility regardless of yield direction.

## Assumptions
- Small to moderate yield changes (Taylor series approximation)
- Parallel yield curve shifts
- No embedded options (simple bullet bonds)
- Known cash flows with certainty

## Practical Use
For precise pricing and risk management, the price change approximation is $\Delta P/P \approx -D_{mod} \cdot \Delta y + \frac{1}{2} \cdot CV \cdot (\Delta y)^2$. Convexity becomes important for large yield moves, long-duration bonds, and portfolios sensitive to volatility. Callable bonds have negative convexity at low yields (price appreciation is limited), making convexity analysis crucial for evaluating embedded options. Portfolio optimization considers convexity to improve risk-adjusted returns.

---

### Bond Convexity with Embedded Options

**Equation:**

```
C_{effective} = \frac{P_{-} + P_{+} - 2P}{P \cdot (\Delta y)^2}
```

## Equation Variables
Effective convexity measures curvature of the price-yield relationship for bonds with embedded options, capturing the asymmetric response to yield changes.

- **$C_{effective}$**: Effective convexity
- **$P$**: Current bond price at yield $y$
- **$P_{-}$**: Price at yield $y - \Delta y$
- **$P_{+}$**: Price at yield $y + \Delta y$
- **$\Delta y$**: Yield shift (typically 100 bp)

## Interpretation
For option-free bonds, effective convexity equals modified convexity. For callable bonds, convexity differs in up and down markets. When yields rise, the call option moves out of the money, and convexity increases (bond behaves like longer maturity). When yields fall, the call option becomes more valuable, and convexity decreases or becomes negative. This asymmetric convexity—high when rates rise, low when rates fall—harms investors. Effective convexity captures this by measuring actual price changes at shifted yields rather than using the analytical formula. The formula is symmetric only if the yield shift is small. Large shifts may reveal asymmetric behavior. Negative effective convexity is characteristic of callable bonds at low yields.

## Assumptions
- Parallel yield curve shifts
- Sufficient yield shift to observe convexity
- Model prices at shifted yields are accurate
- Cash flows recomputed at new yields

## Practical Use
Effective convexity analysis reveals option cost: callable bonds sacrifice convexity for higher yields. MBS investors analyze convexity exposure as a risk factor. Duration alone understates risk when convexity is asymmetric. Comparing effective and modified convexity quantifies the option's impact. High convexity is valuable in volatile rate environments. The metric informs portfolio construction and hedging strategies. MBS duration and convexity are both option-adjusted, reflecting prepayment modeling complexity. Understanding effective convexity is crucial for managing portfolios with embedded options.

---

### Bond Duration with Embedded Options

**Equation:**

```
D_{effective} = \frac{1}{P} \sum_{i=1}^{n} t_i \cdot \mathbb{E}[CF_i] \cdot DF(t_i)
```

## Equation Variables
Effective duration measures price sensitivity for bonds with embedded options by computing price changes at different yield levels.

- **$D_{effective}$**: Effective duration
- **$P$**: Current bond price
- **$t_i$**: Time to expected cash flow $i$
- **$\mathbb{E}[CF_i]$**: Expected cash flow at time $t_i$
- **$DF(t_i)$**: Discount factor for time $t_i$

Effective duration is calculated as: $D_{eff} = \frac{P_{-} - P_{+}}{2 \cdot P \cdot \Delta y}$ where $P_{-}$ and $P_{+}$ are prices at yields $y - \Delta y$ and $y + \Delta y$.

## Interpretation
Unlike modified duration (for option-free bonds), effective duration accounts for changing cash flows when yields change. For callable bonds, lower yields increase call probability, reducing duration. The calculation prices the bond at two yield levels (+/- 25-100 bp), measures price changes, and divides by total yield shift. This captures the option effect: as yields fall, the bond behaves more like a shorter-maturity instrument (higher coupons, earlier maturity). The formula weights cash flows by their expected values at the new yield levels, not the current levels. Effective duration is always less than or equal to modified duration for callable bonds, reflecting the embedded option's value.

## Assumptions
- Interest rate model captures yield curve dynamics
- Sufficient yield shift to observe price changes
- Cash flow projections are model-consistent
- Parallel yield curve shifts

## Practical Use
Effective duration is essential for mortgage-backed securities, callable corporates, and any bond with optionality. MBS duration is highly sensitive to prepayment rates, which depend on interest rates. Portfolio duration management requires effective duration for accurate exposure measurement. Comparing effective and modified duration reveals option value: large differences indicate significant embedded option cost. The metric is used in risk reports, VaR calculations, and regulatory reporting. MBS investors monitor duration closely as prepayments accelerate when rates fall, potentially shortening duration unexpectedly.

---

### Bond Futures Pricing

**Equation:**

```
F = \left(P + AI\right) \times \left(1 + r_{c} \cdot \frac{D}{360}\right) - C
```

## Equation Variables
Bond futures pricing incorporates the forward price of the underlying bond, including accrued interest, financing costs, and cash flows during the futures life.

- **$F$**: Futures price
- **$P$**: Spot clean price of the bond
- **$AI$**: Accrued interest
- **$r_{c}$**: Cost of carry rate (repo rate)
- **$D$**: Days to futures delivery
- **$C$**: Coupon income received before delivery

## Interpretation
The futures price reflects the forward price of the deliverable bond. The spot price $P + AI$ is the full cost of owning the bond. Financing this position at the repo rate $r_c$ for $D$ days adds cost $P(1 + r_c D/360)$. Coupon payments $C$ received before delivery reduce the net cost. The delivery option makes futures pricing complex: the short position chooses which bond to deliver (CTD) and when to deliver. The conversion factor system normalizes prices across bonds with different coupons. Basis risk arises when the actual futures price differs from the theoretical forward price due to delivery options, liquidity, and model risk. Convergence to the spot price occurs as delivery approaches.

## Assumptions
- Short position delivers the cheapest-to-deliver bond
- Sufficient liquidity for repo financing at quoted rates
- No delivery option exercise uncertainty
- Clean convergence between futures and spot prices

## Practical Use
Treasury bond futures are among the most liquid interest rate derivatives. The CTD analysis determines which bond the market expects to be delivered. Convexity adjustments convert futures rates to forward rates for term structure modeling. Basis trading exploits price differences between futures and cash bonds. Delivery options create value for the short position (timing options) and long position (quality options). The pricing formula underpins hedging strategies and relative value analysis. Understanding futures pricing is essential for rates traders, portfolio managers, and risk managers.

---

### Bootstrapping the Zero Curve

**Equation:**

```
P_i = \frac{C_i + F_i}{(1 + y_i)^{t_i}}
```

## Equation Variables
Bootstrapping iteratively extracts zero-coupon discount factors from coupon-bearing bond prices, building a zero curve from the shortest to longest maturity.

- **$P_i$**: Clean price of the $i$-th bond in the bootstrap basket
- **$C_i$**: Coupon payment at time $t_i$
- **$F_i$**: Face value (principal) at maturity
- **$y_i$**: Yield to maturity of the $i$-th bond
- **$t_i$**: Time to the coupon/maturity date

## Interpretation
Bootstrapping solves for discount factors sequentially: the shortest-maturity bond has a known discount factor $DF(t_1) = 1/(1+y_1)^{t_1}$. The next bond has coupons at $t_1$ and $t_2$, where $DF(t_1)$ is known. Solving $P_2 = C_2 DF(t_1) + (C_2 + F_2)DF(t_2)$ gives $DF(t_2)$. Continuing this process produces discount factors for all maturities. From discount factors, zero rates are computed as $z(t) = \ln(1/DF(t))/t$. The bootstrap assumes each bond's yield reflects all shorter-term rates already extracted—this is the no-arbitrage condition. The method produces a consistent term structure from market-observable prices.

## Assumptions
- Market prices are arbitrage-free
- Coupons are fixed and known
- No default risk (high-quality bonds only)
- Sufficient liquid instruments across maturities

## Practical Use
Bootstrapping is the standard method for constructing the risk-free zero curve from deposits, futures, and swaps. The initial curve prices short-term instruments (deposits), then extends to longer tenors. Futures-implied rates require convexity adjustment before bootstrapping. Swap curves bootstrap from the par swap rate curve (par yields are interpolated). The resulting discount factors price any fixed income instrument. The bootstrap curve is the foundation for valuation, risk management, and relative value analysis. Accuracy depends on data quality and interpolation choices between knot points.

---

### Continuous to Discrete Rate Conversion

**Equation:**

```
y_{discrete} = \left(1 + \frac{y_{continuous}}{m}\right)^m - 1
```

## Equation Variables
This formula converts continuously compounded rates to periodically compounded rates, enabling comparison across different quoting conventions.

- **$y_{discrete}$**: Periodically compounded (discrete) yield
- **$y_{continuous}$**: Continuously compounded yield
- **$m$**: Number of compounding periods per year

## Interpretation
Continuous compounding assumes interest is compounded an infinite number of times per year, at an instantaneous rate. Discrete compounding occurs $m$ times annually—$m=1$ for annual, $m=2$ for semi-annual, $m=4$ for quarterly, $m=12$ for monthly. The formula shows discrete rates are always greater than continuous rates for the same effective annual return. As $m \to \infty$, the discrete rate approaches the continuous rate: $\lim_{m \to \infty} (1 + y_c/m)^m - 1 = e^{y_c} - 1$. The inverse conversion is $y_{continuous} = m \ln(1 + y_{discrete})$. Markets use different conventions: LIBOR quoted semi-annually, money market rates semi-annually or quarterly, swaps annually.

## Assumptions
- Constant yields over the compounding period
- No mid-period payments affecting returns
- Compounding is regular and predictable
- Conventions are consistently applied

## Practical Use
Essential for comparing rates quoted on different bases. Converting swap rates to continuous compounding enables model inputs. Understanding the conversion prevents misinterpretation of yields. Different instruments use different conventions: T-bills use discount yield, corporates use semi-annual yield, mortgages use monthly. The formula underpins yield curve construction when mixing instruments. Convexity adjustments account for different compounding when comparing rates. For pricing, all rates must be on the same compounding basis for consistency.

---

### Coupon-Bearing Bond Price

**Equation:**

```
P = \sum_{i=1}^{n} C \cdot e^{-r t_i} + F \cdot e^{-r T}
```

## Equation Variables
The coupon-bearing bond price sums the present values of all future cash flows including coupon payments and principal repayment.

- **$P$**: Current market price of the coupon-bearing bond
- **$C$**: Fixed coupon payment (typically annual or semi-annual)
- **$t_i$**: Time until the $i$-th coupon payment
- **$F$**: Face value (par value) repaid at maturity
- **$T$**: Time to maturity (final payment date)
- **$r$**: Yield to maturity or appropriate discount rate
- **$n$**: Total number of coupon payments

## Interpretation
This equation applies the time-value-of-money principle: a dollar received today is worth more than a dollar received tomorrow. Each coupon payment $C$ is discounted back to present value using $e^{-rt_i}$, reflecting continuous compounding. The face value $F$ received at maturity is similarly discounted. The sum represents the maximum price a rational investor would pay given the expected cash flows and required return. When yields rise, bond prices fall; when yields fall, prices rise—this inverse relationship is the foundation of fixed income analysis.

## Assumptions
- Constant yield $r$ across all maturities (flat yield curve assumption)
- No default risk (risk-free bond)
- Couins are paid as scheduled with no prepayment
- Market participants are price-takers

## Practical Use
Used for bond valuation, price discovery, and relative value analysis. In practice, a term structure of discount factors replaces the constant $r$, yielding $P = \sum CF_i \cdot DF(t_i)$ where $DF(t_i)$ is the discount factor for time $t_i$. This enables pricing bonds on an imperfect curve and identifying mispriced securities. Bond yields are calculated by solving $P = \sum CF_i e^{-y t_i}$ for $y$, the yield to maturity.

---

### Cox-Ingersoll-Ross (CIR) Model

**Equation:**

```
dr_t = a(b - r_t)dt + \sigma \sqrt{r_t} \, dW_t
```

## Equation Variables
The CIR model describes short rate dynamics with state-dependent volatility, ensuring rates remain non-negative.

- **$r_t$**: Short rate at time $t$
- **$dr_t$**: Change in short rate over time interval $dt$
- **$a$**: Mean reversion speed
- **$b$**: Long-run mean level of the short rate
- **$\sigma$**: Volatility parameter (scale of interest rate uncertainty)
- **$\sqrt{r_t}$**: State-dependent volatility (volatility proportional to $\sqrt{r_t}$)
- **$dW_t$**: Wiener process increment under risk-neutral measure

## Interpretation
The CIR model addresses a key limitation of Vasicek: square-root volatility $\sigma\sqrt{r_t}$ ensures the short rate stays non-negative. When rates approach zero, volatility also approaches zero, reducing the probability of negative rates—a "reflection barrier" effect. The drift $a(b - r_t)$ is identical to Vasicek, pulling rates toward long-run mean $b$. The distribution of $r_t$ is non-central chi-squared, not normal, leading to different term structure dynamics. The model's popularity stems from combining analytical tractability (affine term structure) with more realistic rate behavior—rates cannot be negative, and volatility increases with rate levels.

## Assumptions
- Short rate follows square-root diffusion process
- Volatility is state-dependent (proportional to $\sqrt{r_t}$)
- Mean reversion is constant
- Market price of interest rate risk is proportional to $\sqrt{r_t}$

## Practical Use
The CIR model prices bonds, interest rate options, and credit derivatives. Bond prices remain affine: $P(t,T) = A(t,T)e^{-B(t,T)r_t}$ with different $A$ and $B$ than Vasicek. The model captures credit spread dynamics because $r_t$ can be interpreted as short-term default intensity in reduced-form credit models. Calibration is more complex than Vasicek but achievable. The model is used for pricing mortgage-backed securities (where prepayment depends on rates) and in multi-curve frameworks for OIS and non-OIS discounting.

---

### Credit Spread Decomposition

**Equation:**

```
\text{Spread}_{total} = \text{EL} + \text{LP} + \text{LIQ} + \text{TAX} + \text{OTHER}
```

## Equation Variables
Credit spread decomposition breaks the total bond spread into its constituent risk premia, enabling deeper analysis of what drives yield differences.

- **$\text{Spread}_{total}$**: Total observed spread over risk-free rates
- **$EL$**: Expected loss component ($EL = PD \times LGD$)
- **$LP$**: Loss given default (percentage of exposure)
- **$LIQ$**: Liquidity premium for trading costs and price impact
- **$TAX$**: Tax premium (e.g., tax-exempt municipal bonds)
- **$OTHER$**: Other factors (convexity, supply/demand, model risk)

## Interpretation
The total spread above risk-free rates compensates investors for multiple risks. Expected loss ($PD \times LGD$) is the actuarially fair compensation for credit risk—average loss over many defaults. The risk premium ($Spread_{total} - EL$) compensates for uncertainty about actual losses (volatility risk). Liquidity premium reflects difficulty selling the bond without significant price impact. Tax effects can create negative spreads (e.g., municipal bonds yielding less than Treasuries after tax adjustment). Supply/demand imbalances cause temporary mispricing. Understanding decomposition helps identify when spreads are too tight (insufficient compensation) or too wide (panic selling). The decomposition is model-dependent—different assumptions yield different estimates.

## Assumptions
- Default probability and loss given default are estimable
- Historical data approximates forward-looking expectations
- Market prices reflect all available information
- Risk premia are stable over time

## Practical Use
Decomposition guides investment decisions: wide spreads may indicate undercompensation for risk. Liquidity premia are highest during crises when markets freeze. Expected loss is the minimum reasonable spread for risky bonds. Comparing decomposition across issuers reveals relative value. The analysis helps structure portfolios with desired risk profiles. Regulators use decomposition to assess capital requirements for credit risk. The framework extends to structured finance where spread components include tranche-specific effects. Decomposition is essential for sophisticated credit analysis.

---

### Cubic Spline Yield Curve Interpolation

**Equation:**

```
S''(t_i) = \frac{3}{\Delta t_i} \left(\frac{y_{i+1} - y_i}{\Delta t_{i+1}} - \frac{y_i - y_{i-1}}{\Delta t_i}\right) - \frac{\Delta t_{i+1}}{\Delta t_i} S''(t_{i-1})
```

## Equation Variables
Cubic spline interpolation fits piecewise cubic polynomials between observed data points, ensuring continuous first and second derivatives at knot points.

- **$S''(t_i)$**: Second derivative (curvature) of the spline at knot $t_i$
- **$t_i$**: Maturity of the $i$-th observed point
- **$y_i$**: Observed yield at maturity $t_i$
- **$\Delta t_i = t_i - t_{i-1}$**: Interval between consecutive knots

## Interpretation
The cubic spline recurrence relation computes curvatures at each knot, propagating information from boundary conditions through the curve. At interior points, curvature depends on adjacent yield changes and the neighboring curvature. This tridiagonal system is solved efficiently using Thomas' algorithm. The resulting curvatures $S''(t_i)$ determine the cubic coefficients for each polynomial segment. The spline ensures $C^2$ continuity (continuous function, slope, and curvature) across all knots, producing a smooth, differentiable curve. Different boundary conditions (natural, clamped, not-a-knot) affect edge behavior. Natural splines set end curvatures to zero; clamped splines specify end slopes.

## Assumptions
- Market yields are observable at chosen knot points
- The true yield curve is reasonably smooth
- Sufficient data points exist for stable interpolation
- Computational resources allow matrix operations

## Practical Use
Cubic splines produce smooth discount factor curves from discrete market quotes (deposits, futures, swaps). The smooth curve enables accurate interpolation for any maturity, supporting pricing of non-standard instruments. Nelson-Siegel and Svensson parametric forms are alternatives but may not fit all curve shapes. Splines can overshoot (oscillate) with noisy data, requiring regularization. Bootstrap methods with linear or quadratic interpolation are simpler but less smooth. The choice of interpolation method affects derivatives (DV01, duration) and thus hedging accuracy. Robust curve building combines spline interpolation with market data calibration.

---

### Forward Price of a Coupon-Bearing Bond

**Equation:**

```
F(t,T) = \frac{P(t) - AI(t)}{1 + r_c (T-t)} + AI(T) - \sum_{i} C_i \cdot \frac{1 + r_c (T-t_i)}{1 + r_c (T-t)}
```

## Equation Variables
The forward price of a coupon-bearing bond accounts for spot price, accrued interest, financing costs, and coupons paid before delivery.

- **$F(t,T)$**: Forward price at time $t$ for delivery at $T$
- **$P(t)$**: Spot clean price at time $t$
- **$AI(t)$**: Accrued interest at time $t$
- **$AI(T)$**: Accrued interest at delivery time $T$
- **$r_c$**: Cost of carry rate (repo rate)
- **$T-t$**: Time to delivery
- **$C_i$**: Coupons paid between $t$ and $T$
- **$t_i$**: Payment dates for coupons $C_i$

## Interpretation
The forward price is the spot price adjusted for carrying costs (financing) and carrying benefits (coupons). Financing the full price $P(t) + AI(t)$ costs $r_c(T-t)$. Coupon payments received before delivery reduce net carrying costs. The forward price exceeds the spot price when coupons are small relative to financing costs (contango). When coupons exceed financing costs, the forward trades below spot (backwardation). The formula ensures no arbitrage: the forward payoff equals the net cost of holding the bond to delivery. Forward contracts on bonds enable locking in future purchase prices and hedging interest rate exposure without immediate cash outlay.

## Assumptions
- Continuous compounding for simplicity (discrete adjustments possible)
- Known coupon schedule
- Constant repo rate $r_c$
- No counterparty risk
- Standard settlement conventions

## Practical Use
Forward contracts on bonds are used for hedging, speculation, and tactical asset allocation. They provide leverage (small initial margin) and avoid settlement costs of spot transactions. Portfolio managers use forwards to adjust duration without trading cash bonds. The forward curve provides insights into expected future prices and financing conditions. Combining forwards with swaps creates synthetic positions. The pricing formula underpins forward curve construction from spot curves. Understanding bond forwards is essential for rates trading and portfolio management.

---

### Forward Rate Agreement (FRA) Rate

**Equation:**

```
f(t,T_1,T_2) = \frac{\ln P(t,T_1) - \ln P(t,T_2)}{T_2 - T_1}
```

## Equation Variables
The forward rate represents the agreed-upon interest rate for a future period, derived from the term structure of zero-coupon bond prices.

- **$f(t,T_1,T_2)$**: Forward rate for period $[T_1, T_2]$ as seen from time $t$
- **$P(t,T_1)$**: Time-$t$ price of a zero-coupon bond maturing at $T_1$
- **$P(t,T_2)$**: Time-$t$ price of a zero-coupon bond maturing at $T_2$
- **$T_2 - T_1$**: Length of the forward period (in years)
- **$t$**: Current time (observation date)

## Interpretation
Forward rates are implied by the yield curve—they represent the market's expectation of future interest rates, adjusted for convexity. A higher $P(t,T_1)$ relative to $P(t,T_2)$ implies a lower forward rate (bond prices and yields move inversely). The formula derives from no-arbitrage: investing from $T_1$ to $T_2$ at the forward rate should equal investing from $0$ to $T_2$ minus investing from $0$ to $T_1$. Forward rates are pure expectations only if the expectations hypothesis holds; in practice, they include a liquidity premium. The forward curve reveals market expectations about future monetary policy, inflation, and economic growth.

## Assumptions
- No arbitrage opportunities exist (law of one price)
- Bond markets are efficient and liquid
- Same risk-free rate applies across all maturities
- Continuous compounding convention

## Practical Use
Forward rates price FRAs (Forward Rate Agreements), interest rate futures, and forward-starting swaps. They decompose the yield curve into expected future spot rates, enabling term structure analysis. Portfolio managers use forward rates to lock in future borrowing costs. The spread between forward rates and current spot rates indicates market expectations. Convexity adjustments convert forward rates to futures rates for contracts with daily marking to market. Forward rate analysis helps identify steepening or flattening yield curve expectations.

---

### Hull-White Short Rate Model

**Equation:**

```
dr_t = \left[\theta(t) - a r_t\right]dt + \sigma dW_t
```

## Equation Variables
The Hull-White model extends Vasicek with a time-dependent mean reversion level $\theta(t)$, enabling exact calibration to the initial yield curve.

- **$r_t$**: Short rate at time $t$
- **$dr_t$**: Change in short rate over time interval $dt$
- **$\theta(t)$**: Time-dependent mean reversion level (chosen for perfect calibration)
- **$a$**: Mean reversion speed
- **$\sigma$**: Volatility of the short rate
- **$dW_t$**: Wiener process increment under risk-neutral measure

## Interpretation
Hull-White is Vasicek with a time-dependent drift: $\theta(t)$ is chosen so the model perfectly reproduces the initial term structure. Without $\theta(t)$, Vasicek can only fit the curve approximately. The term $-\alpha r_t$ maintains mean reversion, while $\theta(t)$ adjusts the level. For $t < T$, the expected short rate $\mathbb{E}^{\mathbb{Q}}[r_T \mid r_t]$ reverts toward $\theta(s)$ for $s \in (t,T)$. The model remains Gaussian, preserving analytical tractability. When $\theta(t)$ is set to zero, the model reduces to basic Vasicek. The flexibility to match any initial curve makes Hull-White popular for pricing exotic interest rate products.

## Assumptions
- Short rate follows Gaussian process
- Volatility $\sigma$ is constant
- Mean reversion speed $a$ is constant
- $\theta(t)$ is deterministic and can be solved from the initial curve

## Practical Use
Hull-White is the workhorse model for interest rate derivatives in banking. It prices caps, floors, swaptions, and exotics with analytical formulas. The model extends to multiple factors for better calibration. Calibration to caps (using Black's model implied vol) determines $\sigma$; the initial curve determines $\theta(t)$. The Gaussian property enables Monte Carlo simulation without importance sampling for rate paths. Limitations include allowing negative rates (addressed by shifted-Hull-White) and single-factor restrictions.

---

### Instantaneous Forward Rate

**Equation:**

```
f(t,T) = -\frac{\partial}{\partial T} \ln P(t,T)
```

## Equation Variables
The instantaneous forward rate is the limit of forward rates as the period length approaches zero, representing the continuously compounded spot rate at a future date.

- **$f(t,T)$**: Instantaneous forward rate at time $T$ as seen from time $t$
- **$P(t,T)$**: Time-$t$ price of a zero-coupon bond maturing at $T$
- **$\partial/\partial T$**: Partial derivative with respect to maturity
- **$t$**: Current observation time
- **$T$**: Future maturity time ($T \geq t$)

## Interpretation
The instantaneous forward rate is the continuously compounded return from investing for an infinitesimally short period starting at $T$. Taking the derivative of $\ln P(t,T)$ captures how quickly the log-price changes with maturity. For a constant short rate $r$, $P(t,T) = e^{-r(T-t)}$ and $f(t,T) = r$. In general, $f(t,T)$ can vary with $T$, creating the forward curve. At $T = t$, $f(t,t) = r_t$ (the current short rate). The forward rate satisfies $P(t,T) = \exp\left(-\int_t^T f(t,u)\,du\right)$, connecting discrete and continuous formulations. This is the building block for all continuous-time interest rate models.

## Assumptions
- The discount factor function $P(t,T)$ is differentiable in $T$
- No arbitrage (monotonic decreasing $P$ with $T$)
- The term structure is observable and smooth
- Continuously compounded rates are used

## Practical Use
Instantaneous forward rates are fundamental to interest rate modeling—they are the inputs to HJM-type models. The HJM framework models the entire forward curve dynamics, not just a single short rate. Forward rates help price interest rate derivatives by providing the expected evolution of the term structure. Bootstrapping algorithms extract the forward curve from market instruments (deposits, futures, swaps). The forward curve's shape (upward, downward, humped) reveals market expectations and risk premiums. Understanding instantaneous forwards is essential for advanced derivatives pricing.

---

### Interest Rate Parity (Bond Futures)

**Equation:**

```
F = (S + AI_S) \cdot (1 + r_d \cdot \Delta t) - AI_F - \text{Cash Flows}
```

## Equation Variables
Interest rate parity relates spot and forward prices across currencies, essential for pricing currency-hedged bond futures and international fixed income positions.

- **$F$**: Forward/futures price
- **$S$**: Spot exchange rate (domestic per foreign)
- **$AI_S$**: Accrued interest in spot currency
- **$r_d$**: Domestic interest rate
- **$r_f$**: Foreign interest rate
- **$\Delta t$**: Time to delivery
- **$AI_F$**: Accrued interest at delivery
- **$\text{Cash Flows}$**: Coupons, dividends, or other income

The covered interest parity formula is: $F = S \cdot \frac{1 + r_d \Delta t}{1 + r_f \Delta t}$

## Interpretation
Interest rate parity ensures no arbitrage between spot forex, forward forex, and interest rates across currencies. If domestic rates exceed foreign rates, the domestic currency trades at a forward discount (lower forward than spot). The parity condition holds when hedging costs equal interest differentials. Deviations create arbitrage opportunities: borrowing in the low-rate currency, converting to high-rate currency, investing, and locking the forward rate. In bond futures, parity applies when comparing domestic and foreign bonds of similar risk. The carry trade exploits deviations from uncovered interest rate parity, accepting exchange rate risk for yield enhancement.

## Assumptions
- Capital mobility and frictionless markets
- Same credit quality across currencies
- Known interest rates and exchange rates
- No transaction costs or taxes

## Practical Use
CIP deviations are rare in liquid markets but emerged during the 2020 crisis, indicating funding stress. Hedging international bond exposure requires CIP calculations. The carry trade strategy involves borrowing in low-yield currencies and investing in high-yield currencies. Basis swap pricing reflects CIP deviations. Global fixed income portfolios use parity analysis for country allocation. The relationship helps forecast currency movements and identify mispriced forwards. Understanding CIP is essential for global bond trading and currency hedging.

---

### Macaulay Duration

**Equation:**

```
D_{mac} = \frac{\sum_{i=1}^{n} t_i \cdot CF_i \cdot e^{-y t_i}}{P}
```

## Equation Variables
Macaulay duration measures the weighted average time until cash flows are received, weighting each payment by its present value contribution.

- **$D_{mac}$**: Macaulay duration (in years)
- **$t_i$**: Time until the $i$-th cash flow
- **$CF_i$**: Cash flow amount at time $t_i$
- **$y$**: Yield to maturity (periodic compounding)
- **$P$**: Current bond price
- **$n$**: Total number of cash flows

## Interpretation
Macaulay duration answers: "On average, when do I receive my money back?" A 5-year bond with annual coupons has duration less than 5 years because coupons received earlier reduce the weight of later payments. For a zero-coupon bond, duration equals maturity since all cash flows occur at once. Duration measures interest rate sensitivity: a bond with higher duration experiences larger price changes for a given yield change. The formula weights each cash flow by its present value contribution $CF_i e^{-yt_i}$, normalized by total price $P$. This makes duration independent of coupon size—only timing matters.

## Assumptions
- Small yield changes (first-order approximation)
- Parallel shifts in the yield curve
- Cash flows are fixed and known with certainty
- No embedded options (bullet bonds)

## Practical Use
Essential for portfolio immunization, interest rate risk management, and bond selection. Portfolio duration is weighted average of individual bond durations. Immunization strategies match asset and liability durations. Relative duration analysis compares interest rate sensitivity across bonds. Duration explains why long-term bonds are more volatile than short-term bonds, and why low-coupon bonds have higher duration than high-coupon bonds of identical maturity.

---

### Modified Duration

**Equation:**

```
D_{mod} = \frac{D_{mac}}{1 + y/k}
```

## Equation Variables
Modified duration adjusts Macaulay duration for the compounding frequency of the yield, providing direct sensitivity to yield changes.

- **$D_{mod}$**: Modified duration (dimensionless, or in years)
- **$D_{mac}$**: Macaulay duration
- **$y$**: Annual yield to maturity
- **$k$**: Number of coupon payments per year (compounding frequency)

## Interpretation
Modified duration measures the percentage change in bond price for a 1 percentage point change in yield. If $D_{mod} = 5$, a 1% (100 basis point) increase in yield causes approximately a 5% decrease in price. The denominator $1 + y/k$ converts from periodic to continuous compounding effects. For annual compounding ($k=1$), $D_{mod} = D_{mac}/(1+y)$. For semi-annual bonds ($k=2$), the denominator becomes $1 + y/2$. This adjustment is critical for accurate price sensitivity estimates. The approximation $\Delta P/P \approx -D_{mod} \cdot \Delta y$ works well for small yield changes.

## Assumptions
- Small yield changes (second-order effects negligible)
- Parallel yield curve shifts
- No optionality (non-callable bonds)
- Yield quoted with same compounding as coupons

## Practical Use
Used for hedging, risk management, and relative value analysis. DV01 is modified duration multiplied by price and by 0.0001 (1 basis point). Portfolio managers use modified duration to adjust interest rate exposure. When constructing a hedge, matching modified durations of long and short positions isolates specific risk. Modified duration is preferred over Macaulay duration for practical applications because it directly translates yield changes to price changes.

---

### Option-Adjusted Spread (OAS)

**Equation:**

```
P_{market} = \sum_{i=1}^{n} \frac{\mathbb{E}[CF_i]}{(1 + y_{swap} + OAS)^{t_i}}
```

## Equation Variables
The option-adjusted spread adjusts the Z-spread for the value of embedded options, providing a cleaner measure of credit compensation.

- **$P_{market}$**: Market price of the bond
- **$\mathbb{E}[CF_i]$**: Expected cash flow at time $t_i$ (incorporating optionality)
- **$y_{swap}$**: Risk-free swap rate at time $t_i$
- **$OAS$**: Option-adjusted spread in basis points
- **$t_i$**: Time to cash flow

## Interpretation
For option-free bonds, OAS equals the Z-spread. For callable bonds, OAS subtracts the option value: $OAS = Z-spread - \text{Option Value}$. The option value reflects the issuer's right to call the bond, which benefits the issuer at the bondholder's expense. Callable bonds trade at lower prices (higher yields) than equivalent option-free bonds—the difference is the option cost. OAS uses a model to simulate interest rate paths and value the option embedded in the bond. The spread is "option-adjusted" because it removes the option's impact, isolating pure credit compensation. A lower OAS means tighter spreads (richer prices); higher OAS indicates cheaper valuation.

## Assumptions
- Interest rate model accurately captures volatility and dynamics
- Option value is correctly estimated via simulation
- Cash flow expectations reflect realistic interest rate paths
- The swap curve represents the risk-free benchmark

## Practical Use
OAS is the standard spread measure for callable bonds, mortgage-backed securities, and other instruments with embedded options. Comparing OAS across securities with different optionality isolates credit quality. MBS OAS analysis incorporates prepayment modeling, which is complex but essential. The OAS time series tracks credit market conditions for structured products. Relative value analysis uses OAS to identify mispriced securities. The spread is used in portfolio construction, risk management, and performance attribution. OAS analysis is critical for understanding mortgage REITs and other interest rate-sensitive strategies.

---

### Repo Rate and Repo Spread

**Equation:**

```
r_{repo} = \frac{F - P}{P} \cdot \frac{360}{D}
```

## Equation Variables
The repo rate is the effective interest rate on a repurchase agreement, calculated from the price difference between sale and repurchase.

- **$r_{repo}$**: Repo rate (annualized)
- **$F$**: Forward (repurchase) price
- **$P$**: Spot (sale) price
- **$D$**: Repurchase term in days
- **$360$**: Day count convention (banking convention)

The repo spread is $\Delta r_{repo} = r_{repo} - r_{benchmark}$, typically the overnight index rate (SOFR, SONIA).

## Interpretation
A repurchase agreement (repo) is a collateralized loan: the seller (borrower) sells securities with an agreement to repurchase them later. The difference $F - P$ is the interest cost. The annualized rate enables comparison across different repo terms. The 360-day convention (ACT/360) is standard for money markets. GC (general collateral) repos use government securities as collateral; special repos use specific securities with demand exceeding supply, trading at lower rates (higher prices). The repo spread reflects credit risk, liquidity risk, and specialness of the collateral. Tight repo spreads indicate abundant liquidity; wide spreads signal stress.

## Assumptions
- Collateral is of acceptable quality (specified haircut)
- No default during the repo term
- Standard settlement procedures
- Market participants are price-takers

## Practical Use
Repo rates benchmark secured funding costs for banks. The SOFR repo rate is the primary US secured overnight rate, replacing LIBOR for many applications. Repo spreads measure funding advantage of specific securities. The General Collateral (GC) repo rate curve shows aggregate funding conditions. Special spreads indicate demand for specific securities (e.g., on-the-run Treasuries). Repo markets are crucial for securities lending, monetary policy implementation, and short-selling. The 2020 repo market stress highlighted systemic importance of repo financing.

---

### Vasicek Bond Price Formula

**Equation:**

```
P(t,T) = A(t,T) \cdot e^{-B(t,T) \cdot r_t}
```

## Equation Variables
The Vasicek bond price has an affine (linear-exponential) form, enabling analytical solutions for zero-coupon bond pricing.

- **$P(t,T)$**: Time-$t$ price of a zero-coupon bond maturing at $T$
- **$A(t,T)$**: Time-dependent coefficient (deterministic function)
- **$B(t,T)$**: Time-dependent coefficient (deterministic function)
- **$r_t$**: Short rate at time $t$
- **$\tau = T-t$**: Time to maturity

Where:
- $B(t,T) = \frac{1 - e^{-a\tau}}{a}$
- $\ln A(t,T) = (B(t,T) - \tau)\left(\frac{a^2 b - \sigma^2/2}{a^2}\right) - \frac{\sigma^2 B(t,T)^2}{4a}$

## Interpretation
The affine form $A(t,T)e^{-B(t,T)r_t}$ means bond prices are exponential in the short rate. As time passes ($t$ increases toward $T$), $B(t,T)$ decreases, reducing sensitivity to the current short rate. The coefficient $A(t,T)$ captures the deterministic component from the drift and volatility parameters. This formula shows how bond prices depend on current rates—higher $r_t$ means lower bond prices, as expected. The mean reversion parameter $a$ affects how quickly the term structure responds to rate changes. The volatility $\sigma$ creates a risk premium reflected in $A(t,T)$.

## Assumptions
- Short rate follows Vasicek dynamics $dr_t = a(b - r_t)dt + \sigma dW_t$
- Market price of interest rate risk is $\lambda = \frac{\sigma\lambda}{\sigma}$ (constant)
- Risk-neutral measure $\mathbb{Q}$ exists
- All parameters are constant over time

## Practical Use
This closed-form solution enables rapid pricing of zero-coupon bonds without numerical methods. Extending the formula gives prices for coupon-bearing bonds, interest rate caps, floors, and swaptions. The model calibrates to the initial yield curve by choosing $b$ appropriately. Risk management benefits from knowing analytical sensitivities to $r_t$, $a$, $b$, and $\sigma$. The Vasicek model's analytical tractability makes it popular for teaching and as a benchmark for more complex models.

---

### Vasicek Short Rate Model

**Equation:**

```
dr_t = a(b - r_t)dt + \sigma dW_t
```

## Equation Variables
The Vasicek model describes short rate dynamics as an Ornstein-Uhlenbeck process, capturing mean reversion in interest rates.

- **$r_t$**: Short rate (instantaneous risk-free rate) at time $t$
- **$dr_t$**: Change in short rate over time interval $dt$
- **$a$**: Mean reversion speed (positive constant)
- **$b$**: Long-run mean level of the short rate
- **$\sigma$**: Volatility of the short rate
- **$dt$**: Infinitesimal time interval
- **$dW_t$**: Wiener process (standard Brownian motion increment)

## Interpretation
The drift term $a(b - r_t)$ pulls the short rate toward its long-term mean $b$: if $r_t > b$, the drift is negative; if $r_t < b$, the drift is positive. This mean-reverting behavior reflects empirical observations that interest rates oscillate around equilibrium levels. The diffusion term $\sigma dW_t$ introduces randomness, modeling unpredictable economic shocks. Unlike some models where rates can become negative (potentially unrealistic), the Vasicek model with appropriate parameters typically keeps rates positive. The model is analytically tractable—rates follow a normal distribution conditional on the current state, enabling closed-form bond and option prices.

## Assumptions
- Short rate follows Gaussian (normal) distribution
- Mean reversion is instantaneous and constant
- Volatility is constant (homoscedastic)
- Market price of interest rate risk is constant

## Practical Use
The Vasicek model enables analytical pricing of interest rate derivatives including bonds, caps, floors, and swaptions. It captures key empirical features of interest rates: mean reversion and stochastic volatility. However, the normal distribution allows negative rates, and constant volatility may understate market dynamics during stress periods. The model serves as a foundation for more sophisticated formulations like the Hull-White model. Calibration to market data uses historical parameter estimates or optimization to fit the initial term structure.

---

### Z-Spread (Zero-Volatility Spread)

**Equation:**

```
P_{bond} = \sum_{i=1}^{n} \frac{CF_i}{(1 + y_{swap} + z)^{t_i}}
```

## Equation Variables
The Z-spread is the constant basis point spread added to each point on the swap curve to discount a bond's cash flows to its market price.

- **$P_{bond}$**: Market price of the bond
- **$CF_i$**: Cash flow at time $t_i$
- **$y_{swap}$**: Risk-free rate from swap curve at time $t_i$
- **$z$**: Z-spread (constant across all maturities)
- **$t_i$**: Time to cash flow

## Interpretation
The Z-spread answers: "How much yield must I add to every point on the risk-free curve to justify this bond's price?" It is the single spread that, when added to each swap rate, discounts all cash flows to the market price. Unlike asset swap spreads (benchmarking against par swaps), Z-spread uses the entire zero curve. For option-free bonds, Z-spread equals the spread over Treasuries plus the swap spread. The spread compensates for credit risk, liquidity risk, and other premiums. A wider Z-spread indicates higher perceived risk. The Z-spread assumes parallel shifts only—no curve reshaping. For callable bonds, OAS adjusts Z-spread for optionality.

## Assumptions
- The spread is constant across all maturities
- The bond is option-free (or OAS is used for callable bonds)
- Cash flows are known with certainty
- The swap curve represents the risk-free benchmark

## Practical Use
Z-spread is used for credit analysis, relative value, and portfolio construction. Comparing Z-spreads across bonds of similar maturity isolates credit quality differences. Tracking Z-spread changes over time monitors credit sentiment. Z-spread is an input to discounted cash flow models for bond valuation. The spread can be decomposed into expected loss, liquidity premium, and other components. Z-spread analysis identified mispricing during the 2008 crisis when Z-spreads diverged from fundamentals. For complex securities, OAS extends Z-spread by modeling optionality.

---

## Risk Metrics and Greeks

Risk Metrics encompasses the quantitative measures used to assess and manage financial risk. This includes Value at Risk (VaR), Expected Shortfall, and the comprehensive family of option Greeks that measure sensitivity to various market parameters.

### Subcategories
- **Market Risk**: VaR, CVaR, stress testing
- **Option Greeks**: Delta, Gamma, Vega, Theta, Rho and cross-Greeks
- **Performance Metrics**: Sharpe, Sortino, Treynor ratios
- **Portfolio Risk**: Variance, correlation, and aggregation methods

### Black-Scholes Delta

**Equation:**

```
\Delta = \frac{\partial V}{\partial S} = N(d_1)
```

## Equation Variables
Delta measures the first-order sensitivity of an option's price to changes in the underlying asset price, representing the hedge ratio needed to create a risk-neutral position.

- **$\Delta$**: Option Delta, the rate of change of option value with respect to underlying price.
- **$V$**: Option value (call or put price).
- **$S$**: Current price of the underlying asset.
- **$N(\cdot)$**: Cumulative standard normal distribution function.
- **$d_1$**: Dimensionless quantity combining stock price, strike, time, volatility, and interest rate.
- **$d_1 = \frac{\ln(S/K) + (r + \sigma^2/2)T}{\sigma\sqrt{T}}$** where:
  - $K$ = strike price
  - $r$ = risk-free interest rate
  - $\sigma$ = volatility of underlying
  - $T$ = time to expiration

## Interpretation
Delta ranges from 0 to 1 for calls and -1 to 0 for puts. A call option with $\Delta = 0.5$ means the option price increases $0.50 for every $1 increase in the stock price. Delta of 0.5 also means you need 2 options to hedge 1 share of stock (hedge ratio). Deep in-the-money options approach Delta of 1 (calls) or -1 (puts), behaving almost like the underlying. At-the-money options typically have Delta near 0.5. Delta changes as the underlying moves, requiring dynamic hedging to maintain neutrality.

## Assumptions
- Underlying follows geometric Brownian motion with constant volatility
- No arbitrage opportunities exist
- Risk-free rate is constant over option life
- No dividends paid during option life (for basic formula)
- Markets are efficient and continuous
- European option exercise (can only expire at maturity)

## Practical Use
Delta is the most important Greek for hedging and risk management. Traders use Delta to create Delta-neutral portfolios where gains in one position offset losses in another. Delta hedging requires continuous rebalancing as Delta changes (Gamma effect). Delta also represents the risk-neutral probability of the option expiring in-the-money under the Black-Scholes pricing measure, providing an intuitive probability interpretation.

---

### Black-Scholes Rho

**Equation:**

```
\rho = \frac{\partial V}{\partial r} = K T e^{-rT} N(d_2)
```

## Equation Variables
Rho measures the sensitivity of option prices to changes in the risk-free interest rate, capturing the present value effect of funding costs or yields.

- **$\rho$**: Rho, the change in option value per 1 percentage point change in interest rates.
- **$V$**: Option value or premium.
- **$r$**: Risk-free interest rate (annual continuously compounded).
- **$K$**: Strike price of the option.
- **$T$**: Time to expiration in years.
- **$N(d_2)$**: Cumulative standard normal distribution at $d_2$ where $d_2 = d_1 - \sigma\sqrt{T}$.
- **$e^{-rT}$**: Discount factor reducing the present value of the strike.

## Interpretation
For call options, Rho is positive because higher interest rates increase the present value discount, making future strike payment cheaper in present value terms, which benefits call holders. For put options, Rho is negative (given by $-K T e^{-rT} N(-d_2)$) because higher rates reduce the present value of the put's payoff. The magnitude of Rho increases with time to expiration (longer discounting period) and with moneyness (in-the-money options have more rate sensitivity). In low-rate environments, Rho is typically small and often ignored in practical trading, but can become significant when rates change substantially.

## Assumptions
- Risk-free rate is known and constant over option life
- A single risk-free rate applies across all maturities (flat yield curve)
- Interest rate changes affect all instruments equally
- No credit spread or funding differentials
- Option is European style

## Practical Use
Rho is generally the least important Greek for most trading strategies because interest rates change slowly and predictably. However, in certain environments (rising rate cycles, carry trades, long-dated options), Rho can become significant. Interest rate derivatives (caps, floors, swaptions) have much larger Rho exposure. For equity options, the dividend yield $q$ is often more important than Rho, and the formula generalizes by replacing $r$ with $r-q$ (cost of carry adjustment). Traders should monitor Rho when expecting rate decisions or implementing strategies involving long-dated options.

---

### Black-Scholes Theta (Call Option)

**Equation:**

```
\Theta = \frac{\partial V}{\partial T} = -\frac{S_0 N'(d_1) \sigma}{2\sqrt{T}} - r K e^{-rT} N(d_2)
```

## Equation Variables
Theta measures the rate of option value decay as time passes, representing the "time decay" or "holding cost" of maintaining an option position.

- **$\Theta$**: Theta, usually expressed as change in option value per day (often reported divided by 365).
- **$V$**: Option value or premium.
- **$T$**: Time to expiration (in years for the formula, typically converted to days for reporting).
- **$S_0$**: Current underlying price.
- **$N'(d_1)$**: Standard normal PDF at $d_1$.
- **$\sigma$**: Volatility of underlying.
- **$r$**: Risk-free interest rate.
- **$K$**: Strike price.
- **$N(d_2)$**: Cumulative normal at $d_2$ where $d_2 = d_1 - \sigma\sqrt{T}$.
- **$e^{-rT}$**: Discount factor for present value calculation.

## Interpretation
Theta is almost always negative for long option positions, meaning options lose value as expiration approaches (time decay). The first term represents the decay of time value due to reduced time for favorable price moves (often called "volatility theta"). The second term is the cost of carry for calls, representing the present value of strike payment that must be funded until expiration. At-the-money options experience maximum Theta (greatest daily decay), while deep in/out-of-the-money options have lower Theta. Theta becomes more negative as expiration approaches, especially for at-the-money options (Theta "explosion").

## Assumptions
- Time passes uniformly and deterministically
- Volatility remains constant over the decay period
- No dividends or other cash flows from underlying during decay
- Trading is continuous and no gaps occur
- Option cannot be exercised early (European style)

## Practical Use
Theta is the "enemy" of long option buyers and "friend" of option sellers. Option sellers collect Theta as premium decay while bearing the risk of adverse moves. Understanding Theta helps in strategy selection: income strategies (selling options) profit from Theta, while directional strategies (buying options) must overcome Theta to profit. Calendar spreads exploit differences in Theta across expirations. Theta should always be considered alongside Gamma - high Theta strategies often have high Gamma risk requiring careful management.

---

### Calmar Ratio

**Equation:**

```
\text{Calmar} = \frac{\text{Annual Return}}{|\text{Maximum Drawdown}|}
```

## Equation Variables
The Calmar Ratio relates annualized returns to maximum drawdown, providing a simple risk-adjusted performance measure commonly used for commodity trading advisors and absolute return strategies.

- **Calmar**: Calmar Ratio, named after the California Management Associates who developed it.
- **Annual Return**: Compound Annual Growth Rate (CAGR) or average annualized return.
- **|Maximum Drawdown|**: Absolute value of the maximum drawdown (always positive).

## Interpretation
The Calmar Ratio answers: "How many years of average return would it take to recover from the worst drawdown?" A Calmar of 2.0 means the annual return is twice the maximum drawdown magnitude. Higher Calmar is better, indicating more return per unit of drawdown risk. Values above 1.0 are generally desirable, above 2.0 are excellent. The Calmar Ratio is particularly popular for evaluating managed futures and hedge fund strategies where drawdowns are a primary concern. Like all ratios, it's sensitive to the observation period and can be gamed by optimizing for specific time windows.

## Assumptions
- Returns are annualized consistently (CAGR or arithmetic mean)
- Maximum drawdown is calculated over the same period
- The period is representative of long-term performance
- No survivorship bias in the data
- Drawdown and return distributions are stationary

## Practical Use
Calmar Ratio is widely used in the hedge fund and managed futures industry for strategy comparison and selection. Many funds advertise their Calmar as a key selling point. A Calmar of 3.0 is often considered a target for systematic trend-following strategies. However, Calmar has limitations: it uses only the worst drawdown, ignoring frequency and depth of other drawdowns. It's also sensitive to the observation period - a fund with a large historical drawdown will have suppressed Calmar even if current conditions are improved. Combining Calmar with average drawdown and return statistics provides a more complete picture.

---

### Charm (Delta Decay)

**Equation:**

```
\text{Charm} = \frac{\partial \Delta}{\partial T} = -N'(d_1) \left[ \frac{d_2 \sigma}{2\sqrt{T}} + \frac{r N(d_2)}{N'(d_1)} \right]
```

## Equation Variables
Charm measures the rate of change of Delta with respect to time, capturing how an option's hedge ratio "bleeds" toward 0 (for calls) or toward -1 (for puts) as expiration approaches.

- **Charm**: Also called "Delta decay" or "DvegaDtime", measures Delta change per unit time.
- **$\Delta$**: Option Delta (hedge ratio).
- **$T$**: Time to expiration.
- **$N'(d_1)$**: Standard normal probability density at $d_1$.
- **$d_2$**: Second Black-Scholes parameter.
- **$\sigma$**: Volatility.
- **$r$**: Risk-free interest rate.
- **$N(d_2)$**: Cumulative normal at $d_2$.

## Interpretation
Charm tells Delta-hedgers how much their hedge ratio will change as time passes, even if the underlying price stays constant. For call options, Charm is typically negative, meaning Delta decreases (moves toward 0) as expiration approaches. For example, a call with Delta 0.60 today might have Delta 0.55 tomorrow if Charm is -0.05, requiring the trader to sell 0.05 shares to maintain Delta-neutrality. At-the-money options have the most negative Charm near expiration because their Delta changes most rapidly as the option approaches maturity. Ignoring Charm leads to "Delta slippage" and unexpected P&L in hedged portfolios.

## Assumptions
- Time passes while underlying price remains constant
- Volatility and interest rates are constant
- No dividends occur during the time decay period
- Option exercise is European (no early assignment risk)
- Black-Scholes assumptions hold throughout the decay period

## Practical Use
Charm is essential for managing Delta-hedged portfolios over time. Traders must "pay" Charm through continuous rebalancing - selling shares as call Deltas decay (if long calls) or buying shares as put Deltas increase (if long puts). This rebalancing cost is a significant component of the "cost of carry" for hedged option strategies. Charm interacts with other Greeks: Charm is often combined with Vanna in the "Vanna-Charm" matrix for more complete P&L attribution. Near expiration, Charm becomes very large in magnitude for at-the-money options, making last-day hedging particularly costly and critical.

---

### Coherent Risk Measure Properties

**Equation:**

```
\begin{aligned} &\text{Monotonicity: } X \leq Y \implies \rho(X) \leq \rho(Y) \\ &\text{Translation: } \rho(X + a) = \rho(X) + a \\ &\text{Positive Homogeneity: } \rho(\lambda X) = \lambda \rho(X) \text{ for } \lambda \geq 0 \\ &\text{Subadditivity: } \rho(X + Y) \leq \rho(X) + \rho(Y) \end{aligned}
```

## Equation Variables
Coherent risk measures satisfy four fundamental axioms that ensure mathematically sound and economically sensible risk quantification, established by Artzner, Delbaen, Eber, and Heath (1999).

- **$\rho$**: Risk measure mapping random variables (portfolio outcomes) to real numbers.
- **$X, Y$**: Random variables representing portfolio outcomes (profits or losses).
- **$a$**: Constant (deterministic amount).
- **$\lambda$**: Non-negative scalar.
- **$\leq$**: Stochastic dominance ordering (random variable ordering).

## Interpretation
Coherence ensures risk measures behave consistently with economic intuition. Monotonicity means riskier positions (worse outcomes) get higher risk numbers. Translation invariance means adding cash reduces risk by exactly that amount. Positive homogeneity means scaling risk scales risk proportionally (10x position = 10x risk). Subadditivity means diversification reduces or at least doesn't increase risk - this is the most important property, ensuring merged portfolios aren't riskier than separate portfolios. VaR fails subadditivity (counterexample exists), while Expected Shortfall satisfies all four axioms, explaining regulatory preference for ES.

## Assumptions
- Outcomes are in a space of random variables (e.g., bounded or integrable)
- Ordering $\leq$ is proper (antisymmetric)
- Risk measure is real-valued
- Scalar multiplication and addition are defined
- No transaction costs or other frictions in combining portfolios

## Practical Use
Coherence provides the theoretical foundation for modern risk management. Basel III replaced VaR with Expected Shortfall partly because ES is coherent. Risk measures that violate subadditivity can encourage regulatory arbitrage through portfolio splitting. Other coherent risk measures include: entropic risk measures, spectral risk measures, and distorted risk measures. The dual representation of coherent risk measures connects them to sets of probability measures (risk envelopes), providing computational and interpretive insights. Understanding coherence helps practitioners evaluate new risk measures and recognize when their risk assessments may be misleading.

---

### Greeks for Asian Options

**Equation:**

```
\text{Asian Delta} \approx \frac{\partial V}{\partial S} \approx \frac{A}{nS} \sum_{i=1}^{n} e^{-\alpha(t_i - t)} \frac{\partial V_{\text{geometric}}}{\partial K}
```

## Equation Variables
Asian options depend on the average price of the underlying over time, making their Greeks more complex to compute than European options and requiring specialized techniques.

- **Asian Delta**: Sensitivity of Asian option value to current underlying price.
- **$V$**: Value of the Asian (average price) option.
- **$S$**: Current underlying price.
- **$A$**: Average price (arithmetic or geometric) of underlying.
- **$n$**: Number of averaging observations.
- **$t_i$**: Observation times.
- **$t$**: Current time.
- **$V_{\text{geometric}}$**: Value of geometric Asian option (analytically tractable).
- **$K$**: Strike price.

## Interpretation
Asian options reduce manipulation risk and volatility of the underlying by using average prices. Their Delta is lower than European options because the average price moves less than the spot price (averaging smooths out fluctuations). For an Asian call, Delta is approximately $\frac{A}{nS}$ times the European Delta at each observation, weighted by time to observation. This "averaging effect" reduces Delta, Gamma, and Vega compared to vanilla options of the same strike and maturity. Asian options are often cheaper than European options due to this reduced sensitivity.

## Assumptions
- Underlying follows geometric Brownian motion (or jump-diffusion)
- Average is observable and non-manipulable (close enough sampling)
- Geometric average approximation is reasonable for arithmetic averages
- No early exercise (American Asian options require numerical methods)
- Volatility is constant (or term structure of volatility is specified)

## Practical Use
Computing Greeks for Asian options typically requires Monte Carlo simulation with control variates or finite difference methods on the pricing grid. The geometric average Asian option has an analytical solution (Kemna-Vorst model), providing a useful control variate for Monte Carlo and an approximation for the arithmetic case. Popular approximations include: Turnbull-Wakeman (approximate continuous average), Levy (approx for discrete average), and exact numerical integration for small $n$. Greeks for path-dependent options show path-wise behavior - different paths can have very different sensitivities, making Greeks stochastic themselves.

---

### Greeks for Barrier Options

**Equation:**

```
\text{Barrier Delta} = \frac{\partial V}{\partial S} = \Delta_{\text{vanilla}} \times \frac{\text{Rebate Factor}}{1 + \text{Barrier Factor}}
```

## Equation Variables
Barrier options become worthless (knock-out) or begin to exist (knock-in) when the underlying price reaches a specified barrier level, making their Greeks discontinuous at the barrier.

- **Barrier Delta**: Sensitivity of barrier option to underlying price.
- **$V$**: Barrier option value.
- **$S$**: Current underlying price.
- **$\Delta_{\text{vanilla}}$**: Delta of equivalent vanilla option.
- **Rebate Factor**: Cash payment if barrier is touched (for rebate barriers).
- **Barrier Factor**: Adjustment for barrier proximity and type (down-and-out, up-and-call, etc.).

## Interpretation
Barrier options have complex Greeks because their value can change discontinuously at the barrier. As the underlying approaches the barrier, Delta can spike as the probability of barrier touch changes rapidly. A down-and-out option near its barrier has high Gamma as small price moves determine whether the option lives or dies. Vega is also concentrated near the barrier because volatility affects barrier touch probability. The "reflection principle" provides analytical solutions for barrier option Greeks under Black-Scholes, but numerical methods are needed for path-dependent or American features.

## Assumptions
- Underlying follows continuous diffusion (no jumps that skip over barrier)
- Barrier is observable and monitorable (continuous or discrete monitoring)
- No rebates unless specified (or rebates are known amounts)
- Standard barrier types: down-and-out, up-and-out, down-and-in, up-and-in
- Correlation between underlying and volatility is ignored (simplified model)

## Practical Use
Barrier options are popular for hedging and structured products because they offer tailored payoff profiles at lower cost than vanilla options. Greeks for barrier options are critical for hedging, especially near the barrier where sensitivities change rapidly. Numerical methods (finite differences, Monte Carlo with pathwise derivatives) are often used. Hedge ratios must account for the discrete monitoring adjustment - a daily monitored barrier has higher survival probability than a continuously monitored one with the same level. The barrier option Greeks illustrate the general principle that path-dependent options have Greeks that are themselves path-dependent.

---

### Greeks for Lookback Options

**Equation:**

```
\text{Lookback Delta} = \frac{\partial V}{\partial S} = N(d_1) \times \frac{S_{\text{max}} - S}{S_{\text{max}}}
```

## Equation Variables
Lookback options have payoffs based on the maximum or minimum underlying price during the option life, creating Greeks that depend on the entire price path, not just current price.

- **Lookback Delta**: Sensitivity of lookback option to current underlying price.
- **$V$**: Value of the lookback option (floating strike call or put).
- **$S$**: Current underlying price.
- **$N(d_1)$**: Standard normal CDF.
- **$S_{\text{max}}$**: Maximum underlying price observed (for floating strike call).

## Interpretation
Lookback options have unique Greeks because their payoff depends on the extreme price achieved. A floating strike lookback call gives the right to buy at the minimum price, so its value depends on how close current price is to the running minimum. The Delta is reduced compared to a vanilla option because some of the option's value is already "locked in" by the extreme price observation. If $S$ is close to $S_{\text{max}}$ (near the running maximum), the lookback call Delta approaches zero because the strike is already favorable. Conversely, if $S$ is far from $S_{\text{max}}$, Delta approaches the vanilla Delta.

## Assumptions
- Underlying price path is fully observable and continuous
- Maximum/minimum is observed continuously (or discrete sampling specified)
- No early exercise constraint (European style lookback)
- Volatility is constant or term structure specified
- No dividends (or appropriate adjustments made)

## Practical Use
Lookback options are used for hedging uncertain timing decisions or capturing trend-following returns. Their Greeks are path-dependent, meaning Monte Carlo simulation with pathwise differentiation or the Likelihood Ratio Method is needed for accurate estimation. The continuous monitoring assumption is often adjusted for discrete observation (daily max/min). Lookback options are more expensive than vanilla options because they offer better payoffs, and their Greeks show interesting dynamics: Delta increases when the underlying moves away from the extreme, and Gamma spikes when the extreme price is updated (when a new maximum/minimum is reached).

---

### Incremental VaR

**Equation:**

```
\text{IVaR}_{\text{position}} = \text{VaR}_{\text{with}} - \text{VaR}_{\text{without}}
```

## Equation Variables
Incremental VaR (IVaR) measures the change in portfolio VaR resulting from adding or removing a position, enabling risk attribution and capital allocation.

- **$\text{IVaR}_{\text{position}}$**: Change in portfolio VaR from adding/removing the position.
- **$\text{VaR}_{\text{with}}$**: Portfolio VaR including the position.
- **$\text{VaR}_{\text{without}}$**: Portfolio VaR excluding the position (original portfolio).

## Interpretation
IVaR answers: "How much does my portfolio risk increase if I add this position?" If portfolio VaR is $1M without a trade, and $1.1M with the trade, IVaR is $100K. This directly measures the risk contribution of individual positions, useful for limit monitoring and capital allocation. IVaR is not the same as standalone position VaR because it accounts for diversification effects - a position that reduces portfolio VaR through negative correlation has negative IVaR. The relationship between IVaR, marginal VaR, and component VaR provides the basis for risk budgeting.

## Assumptions
- VaR can be computed accurately for both portfolio states
- Marginal change is approximately linear (IVaR ≈ Marginal VaR for small positions)
- Portfolio diversification effects are properly captured
- VaR horizon and confidence level are held constant
- No position interactions beyond those captured in VaR calculation

## Practical Use
IVaR is essential for risk attribution and trader limit management. Risk managers use IVaR to justify risk limits and evaluate new trades. However, IVaR has limitations: it's not additive (IVaR(A+B) ≠ IVaR(A) + IVaR(B) generally) and can be sensitive to portfolio composition. Marginal VaR (derivative of VaR with respect to position) provides a continuous approximation: $\text{MVaR} = \frac{\partial \text{VaR}}{\partial w}$. Component VaR extends IVaR by decomposing portfolio VaR into additive components that sum to total VaR, improving risk budgeting accuracy.

---

### Information Ratio

**Equation:**

```
\text{IR} = \frac{R_p - R_b}{\text{TE}} = \frac{\alpha}{\text{TE}}
```

## Equation Variables
The Information Ratio measures risk-adjusted excess returns relative to a benchmark, quantifying how much active return is generated per unit of tracking error risk.

- **IR**: Information Ratio, measuring active management skill and consistency.
- **$R_p$**: Portfolio return (often annualized).
- **$R_b$**: Benchmark return (typically a market index).
- **$\alpha$**: Alpha or active return, representing return above the benchmark.
- **TE**: Tracking Error, the standard deviation of excess returns $(R_p - R_b)$.

## Interpretation
The Information Ratio answers: "How much excess return do I generate per unit of active risk taken?" An IR of 0.5 means the manager generates 0.5% excess return for every 1% of tracking error. Higher IRs indicate more efficient active management. IRs above 0.5 are generally considered good, above 1.0 are excellent, and above 2.0 are exceptional. The IR is closely related to the Sharpe Ratio but replaces the risk-free rate with the benchmark return. The "information coefficient" (correlation between predictions and returns) times the "breadth" (number of independent forecasts) determines IR according to Grinold's fundamental law of active management: IR = IC × √Breadth.

## Assumptions
- Returns are normally distributed (for statistical interpretation)
- Benchmark is appropriate and investable
- Tracking error is measured over a sufficiently long period
- Returns are excessable (benchmark can be achieved)
- Time period is representative of typical conditions

## Practical Use
The Information Ratio is the primary metric for evaluating active fund managers and comparing active strategies. Institutional investors use IR to set targets for external managers and allocate capital to internal teams. An IR of 0.5 with 2% tracking error means a target of 1% active return. The IR can be decomposed for attribution analysis: sector allocation IR, security selection IR, etc. Long time series are needed for reliable IR estimation due to the noise in tracking error estimates, especially for low-tracking-error strategies.

---

### Liquidity-Adjusted VaR

**Equation:**

```
\text{LVaR} = \text{VaR} + \text{Liquidity Adjustment} = \text{VaR} + \text{Spread} \times \sqrt{\text{Holding Period}}
```

## Equation Variables
Liquidity-Adjusted VaR (LVaR) incorporates the cost of liquidating positions under adverse market conditions, adding transaction cost risk to price risk.

- **LVaR**: Liquidity-adjusted Value at Risk including liquidation costs.
- **VaR**: Standard Value at Risk (price-based loss).
- **Liquidity Adjustment**: Additional loss from bid-ask spreads and market impact.
- **Spread**: Bid-ask spread (often expressed as a percentage of notional).
- **Holding Period**: Time to liquidate the position (hours to days).

## Interpretation
LVaR recognizes that in stressed markets, you cannot instantly liquidate positions at mid-prices. The adjustment adds the expected transaction cost to potential losses: $\text{LVaR}_{\alpha} = \text{VaR}_{\alpha} + \text{bid-ask spread} \times \text{notional}$. More sophisticated models include market impact: larger trades move prices, creating additional cost proportional to trade size and market depth. LVaR is higher for less liquid positions (credit derivatives, emerging market bonds, structured products) and in stressed markets when spreads widen. The holding period scaling matters because longer liquidation periods increase both price risk and cost accumulation.

## Assumptions
- Liquidity conditions during the VaR horizon match the spread assumption
- Position can be fully liquidated within the holding period
- Market impact is linear with trade size (often violated for large trades)
- No feedback effects from liquidation on market prices (unless explicitly modeled)
- Bid-ask spreads are representative of execution costs

## Practical Use
LVaR is used for illiquid positions and portfolios where liquidity risk is material. Basel III introduced liquidity coverage ratios and considers liquidity in market risk capital. Trading desks monitor "liquidity-adjusted limits" that account for the cost of exiting positions. Advanced LVaR models include: Almgren-Chriss optimal execution framework, queue-based models (matching engine dynamics), and endogenous liquidity models where fire sales cause feedback effects. For the most illiquid assets (ABS, CDO tranches), LVaR can be 2-3x higher than standard VaR, significantly affecting capital allocation.

---

### Maximum Drawdown

**Equation:**

```
\text{MDD} = \max_{t \in [0,T]} \frac{\text{Peak}(t) - \text{Trough}(t)}{\text{Peak}(t)}
```

## Equation Variables
Maximum Drawdown (MDD) measures the largest peak-to-trough decline in portfolio value, capturing the worst-case loss scenario over a specified period.

- **MDD**: Maximum Drawdown, expressed as a percentage (or decimal) loss from peak.
- **$t$**: Time index over the observation period $[0, T]$.
- **$\text{Peak}(t)$**: Maximum portfolio value observed up to time $t$ (running maximum).
- **$\text{Trough}(t)$**: Portfolio value at time $t$ (current or minimum value since peak).
- **$T$**: End of observation period.

## Interpretation
Maximum Drawdown answers: "What is the worst peak-to-trough decline experienced over the period?" If a portfolio grows from $100 to $200, then falls to $120 before recovering, the maximum drawdown is $(200-120)/200 = 40\%$. This metric captures loss magnitude, not just probability, making it essential for risk-averse investors and in capital preservation contexts. Drawdowns have psychological and practical importance: a 50% loss requires a 100% gain to recover. MDD is often reported alongside average drawdown, frequency of drawdowns, and time to recovery.

## Assumptions
- Portfolio value is marked-to-market regularly
- Observation period is sufficiently long to capture market cycles
- No contributions or withdrawals during the period (or they are treated appropriately)
- Peak is measured before trough (no look-ahead bias)
- Returns are compounded properly (geometric linking)

## Practical Use
Maximum Drawdown is critical for risk management, stress testing, and investor communication. It's often a key constraint in portfolio mandates (e.g., "maximum drawdown not to exceed 20%"). Fund managers report drawdown statistics prominently in marketing materials. The relationship between return and drawdown follows a power law in many markets, suggesting that larger drawdowns are more probable than Gaussian assumptions would suggest. Calmar Ratio uses MDD to assess risk-adjusted returns. Drawdown-based risk measures like the Calmar Ratio and Sterling Ratio provide alternative perspectives on performance.

---

### Portfolio Variance (Matrix Form)

**Equation:**

```
\sigma_p^2 = \mathbf{w}' \boldsymbol{\Sigma} \mathbf{w}
```

## Equation Variables
Portfolio variance in matrix form compactly represents the risk of a multi-asset portfolio, capturing both individual volatilities and pairwise correlations through the covariance matrix.

- **$\sigma_p^2$**: Portfolio variance (square of portfolio standard deviation).
- **$\mathbf{w}$**: Column vector of portfolio weights (summing to 1 for fully invested portfolios).
- **$\mathbf{w}'$**: Transpose of weight vector (row vector).
- **$\boldsymbol{\Sigma}$**: Covariance matrix where element $\Sigma_{ij}$ is the covariance between assets $i$ and $j$.

## Interpretation
This matrix equation shows that portfolio risk depends not just on individual asset risks (diagonal of $\Sigma$) but also on correlations between assets (off-diagonal elements). The expansion of this formula reveals: $\sigma_p^2 = \sum_i w_i^2 \sigma_i^2 + \sum_{i \neq j} w_i w_j \sigma_i \sigma_j \rho_{ij}$. Diversification benefits arise when correlations are less than 1, reducing portfolio variance below the weighted average of individual variances. Minimum variance portfolios seek weights that minimize $\mathbf{w}'\boldsymbol{\Sigma}\mathbf{w}$ subject to constraints, while mean-variance optimization trades off variance against expected returns.

## Assumptions
- Covariance matrix $\boldsymbol{\Sigma}$ is known and positive definite (invertible)
- Returns follow a multivariate normal distribution (or are characterized by covariance)
- Weights can be chosen freely (no constraints beyond specified)
- Portfolio is rebalanced to maintain target weights
- Covariance is stable over the investment horizon

## Practical Use
This formulation is the foundation of Modern Portfolio Theory (MPT) and all portfolio optimization. The covariance matrix is typically estimated from historical data using shrinkage estimators or factor models to improve stability. For large portfolios, computing $\boldsymbol{\Sigma}$ directly is expensive; factor models reduce dimensionality by expressing returns as exposures to common factors plus idiosyncratic components. Risk parity strategies equalize risk contribution ($\frac{\partial \sigma_p}{\partial w_i}$) across assets, which can be expressed in terms of the covariance matrix. Numerical optimization algorithms (quadratic programming) solve the constrained optimization problems built on this formula.

---

### Risk Budgeting (Equal Risk Contribution)

**Equation:**

```
\text{RC}_i = w_i \times \frac{\partial \sigma_p}{\partial w_i} = w_i \times \frac{(\boldsymbol{\Sigma} \mathbf{w})_i}{\sigma_p}
```

## Equation Variables
Risk budgeting allocates risk across portfolio components such that each contributes equally, creating diversified portfolios without relying on return forecasts.

- **$\text{RC}_i$**: Risk contribution of asset $i$ to total portfolio risk.
- **$w_i$**: Weight of asset $i$ in the portfolio.
- **$\frac{\partial \sigma_p}{\partial w_i}$**: Marginal risk contribution (sensitivity of total risk to weight change).
- **$\sigma_p$**: Portfolio volatility (standard deviation).
- **$(\boldsymbol{\Sigma}\mathbf{w})_i$**: $i$-th element of the covariance-weighted return vector.

## Interpretation
Risk budgeting answers: "How should I allocate weights so each asset contributes equally to total risk?" The risk contribution formula shows RC depends on both weight and how the asset interacts with the portfolio. An equal-risk-contribution (ERC) portfolio satisfies $\text{RC}_i = \text{RC}_j$ for all $i, j$. For uncorrelated assets, ERC implies equal weights; for correlated assets, lower-correlation assets get higher weights. Risk parity extends this to equal risk contribution from risk factors (equity beta, duration, credit exposure) rather than individual assets.

## Assumptions
- Covariance matrix $\boldsymbol{\Sigma}$ is known and positive definite
- Portfolio weights are unconstrained (or constraints are handled)
- Risk is measured by volatility (other measures possible)
- Equal risk contribution is the objective (not return maximization)
- No transaction costs for rebalancing

## Practical Use
Risk budgeting has grown popular since the 2008 crisis as an alternative to mean-variance optimization. It's particularly useful when return forecasts are unreliable or when investors want diversified outcomes regardless of return predictions. Risk parity funds manage hundreds of billions globally. Implementation requires numerical optimization (Newton-Raphson or similar) to find weights satisfying the ERC conditions. Risk budgeting can be extended to factor risk budgeting (equal contribution from equity, rates, credit, commodities factors) or to budget by trading strategy.

---

### Sharpe Ratio

**Equation:**

```
\text{Sharpe} = \frac{R_p - R_f}{\sigma_p}
```

## Equation Variables
The Sharpe Ratio measures risk-adjusted returns by comparing excess returns to total portfolio volatility, providing a benchmark-free assessment of risk efficiency.

- **Sharpe**: Sharpe Ratio or Reward-to-Volatility Ratio.
- **$R_p$**: Portfolio return (typically annualized).
- **$R_f$**: Risk-free rate (often T-bill rate or proxy).
- **$R_p - R_f$**: Excess return or risk premium.
- **$\sigma_p$**: Standard deviation of portfolio returns (total risk).

## Interpretation
The Sharpe Ratio answers: "How much excess return do I earn per unit of total risk taken?" A Sharpe Ratio of 1.0 means the portfolio earns 1 unit of excess return for each unit of volatility. Historically, equity markets have Sharpe ratios around 0.3-0.5, while hedge fund strategies might target 0.5-1.0. The Sharpe Ratio enables comparison across assets with different risk levels - a high-return, high-volatility portfolio can have the same Sharpe as a low-return, low-volatility portfolio. Developed by William Sharpe (1994 Nobel laureate), it has become the standard metric for evaluating portfolio performance and setting risk budgets.

## Assumptions
- Returns are normally distributed (for proper risk interpretation)
- Risk-free rate is appropriate for the portfolio's currency and duration
- Volatility is measured over a representative period
- Risk-free rate is available and liquid (no significant credit risk)
- Returns are arithmetic (not geometric) for calculation

## Practical Use
The Sharpe Ratio is used for portfolio comparison, manager selection, and capital allocation decisions. Risk parity strategies often target equal risk contribution, implicitly optimizing Sharpe. Modern Portfolio Theory uses Sharpe for the Capital Market Line. However, critics note that Sharpe can be manipulated through leverage or by using smoothed/volatility-adjusted returns. Alternatives like the Sortino Ratio address some limitations by focusing only on downside risk. Sharpe should be calculated using consistent methodology (e.g., annualized returns, rolling windows) for meaningful comparisons.

---

### Sortino Ratio

**Equation:**

```
\text{Sortino} = \frac{R_p - R_f}{\sigma_{\text{down}}}}
```

## Equation Variables
The Sortino Ratio improves upon the Sharpe Ratio by using only downside volatility, focusing on the risk that matters most to investors: losses rather than upside volatility.

- **Sortino**: Sortino Ratio or Downside Risk-adjusted return.
- **$R_p$**: Portfolio return (typically annualized).
- **$R_f$**: Target return or minimum acceptable return (often risk-free rate).
- **$R_p - R_f$**: Excess return above target.
- **$\sigma_{\text{down}}$**: Downside deviation, calculated as $\sqrt{\frac{1}{n} \sum_{t=1}^{n} \min(R_t - R_f, 0)^2}$.

## Interpretation
The Sortino Ratio answers: "How much excess return do I earn per unit of downside risk taken?" Unlike Sharpe, Sortino doesn't penalize upside volatility (good returns), making it more appropriate for asymmetric return distributions common in many strategies. A Sortino of 1.0 is equivalent to a Sharpe of 1.0 in terms of risk-adjusted return, but Sortino is typically higher when upside volatility exists. For skewed strategies (e.g., options selling, carry trades), Sortino provides a more meaningful measure because large upside returns shouldn't increase the risk denominator.

 ## Assumptions
- Target return is appropriately set (risk-free rate or MAR - Minimum Acceptable Return)
- Downside deviation captures the relevant tail risk
- Return distribution is sufficiently asymmetric that upside volatility should be excluded
- Sufficient observations for stable downside deviation estimate
- Returns below target are the only relevant risk

## Practical Use
Sortino is increasingly popular for evaluating hedge funds, alternative investments, and asymmetric strategies. It's particularly appropriate for strategies with positive skewness (most gains, limited losses) or negative skewness (limited gains, potential large losses). The choice of target return $R_f$ matters: using a higher target makes the denominator smaller, increasing the Sortino. Many practitioners prefer Sortino over Sharpe for its intuitive appeal, though both metrics have their place. Research shows Sortino ratios are more stable over time than Sharpe ratios for asymmetric strategies.

---

### Stress Testing (Scenario Analysis)

**Equation:**

```
\text{Stress P\&L} = \sum_{i=1}^{n} w_i \times \Delta S_i \times \text{Sensitivity}_i
```

## Equation Variables
Stress testing evaluates portfolio performance under extreme but plausible scenarios, using sensitivity-based or full revaluation methods to estimate potential losses.

- **Stress P&L**: Projected profit or loss under the stress scenario.
- **$w_i$**: Current position size (notional or DV01-weighted).
- **$\Delta S_i$**: Stress scenario change in risk factor $i$ (e.g., -20% equity, +100bps rates).
- **$\text{Sensitivity}_i$**: Position sensitivity to risk factor $i$ (Delta, DV01, etc.).
- **$n$**: Number of risk factors or positions.

## Interpretation
Stress testing answers: "How much would I lose if a specified crisis scenario occurred?" A typical equity stress scenario might be: S&P 500 -30%, VIX +50%, USDJPY +10%, High Yield spreads +500bps. The total stress P&L is the sum of each position's loss under these factor shifts. Sensitivity-based approaches use Delta and Gamma approximations, while full revaluation values the portfolio under the stressed scenario (e.g., shifted yield curves, changed volatilities). Stress tests complement VaR by exploring tail events rather than probability-weighted outcomes.

## Assumptions
- Scenarios are plausible and internally consistent (no contradictory assumptions)
- Correlations in the scenario are appropriate (e.g., equities down when spreads widen)
- Positions are static during the stress period
- Liquidity and market impact are either included or acknowledged as omitted
- sensitivities remain valid under stressed conditions (often violated)

## Practical Use
Stress testing is regulatory requirement (Basel stress testing, CCAR, EBA) and best practice for risk management. Scenarios include historical (2008 crisis, COVID-2020), hypothetical (cyber attack, commodity shock), and reverse stress (scenarios causing failure). Advanced stress testing includes multi-period scenarios, path dependencies, and second-order effects. Enterprise-wide stress testing (EWST) considers contagion across risks. The results inform capital buffers, risk limits, and contingency planning. Stress testing reveals model limitations as Greeks often break down in crisis conditions.

---

### Stress VaR (Filtered Historical)

**Equation:**

```
\text{SVaR}_{\alpha} = -\mu_{\text{filtered}} - z_{\alpha} \sigma_{\text{filtered}}
```

## Equation Variables
Stress VaR (or Stressed VaR) uses historical data from a period of significant market stress, scaled to current volatility levels, to capture tail risk during crisis conditions.

- **$\text{SVaR}_{\alpha}$**: Stressed Value at Risk at confidence level $\alpha$.
- **$\mu_{\text{filtered}}$**: Mean of filtered/scaled historical returns.
- **$z_{\alpha}$**: $\alpha$-quantile of standard normal distribution.
- **$\sigma_{\text{filtered}}$**: Filtered volatility (current volatility applied to stressed period returns).

## Interpretation
Stressed VaR addresses VaR's failure to capture non-stationary volatility by deliberately using stressed market conditions. Under Basel 2.5, banks must compute VaR using a 60-day rolling window of the most volatile 60-day period in the past 4 years. The filtered historical approach scales historical returns by the ratio of current volatility to historical volatility: $r_{\text{scaled}} = r_{\text{historical}} \times (\sigma_{\text{current}} / \sigma_{\text{historical}})$. This produces a VaR that reflects both the correlation structure from history and current volatility levels, intended to represent the "worst case" under recent memory.

## Assumptions
- Historical stressed period is representative of future stressed conditions
- Volatility scaling preserves correlation structure
- Current volatility is a reasonable estimate of future volatility
- Linear scaling is adequate for the portfolio
- The 4-year lookback period captures meaningful stress periods

## Practical Use
Stressed VaR became regulatory requirement after the 2008 crisis, adding approximately 3x to VaR capital for many trading books. It forces banks to consider what losses would be if current volatility persisted during a crisis period. Limitations include: depends on arbitrary window choices, may miss unprecedented scenarios, and creates procyclical capital requirements (high volatility causes high SVaR which causes high capital which may constrain market-making when most needed). Some jurisdictions allow internal models for stressed calibration, while others require standardized approaches.

---

### Treynor Ratio

**Equation:**

```
\text{Treynor} = \frac{R_p - R_f}{\beta_p}
```

## Equation Variables
The Treynor Ratio measures risk-adjusted returns using systematic (beta) risk rather than total risk, appropriate for well-diversified portfolios where unsystematic risk has been eliminated.

- **Treynor**: Treynor Ratio or Reward-to-Beta Ratio.
- **$R_p$**: Portfolio return (typically annualized).
- **$R_f$**: Risk-free rate.
- **$R_p - R_f$**: Excess return over risk-free rate.
- **$\beta_p$**: Portfolio beta measuring systematic risk relative to market.

## Interpretation
The Treynor Ratio answers: "How much excess return do I earn per unit of systematic (market) risk taken?" Unlike Sharpe which uses total volatility, Treynor uses beta, making it appropriate for diversified portfolios where idiosyncratic risk has been minimized through diversification. A Treynor of 0.05 means the portfolio earns 5% excess return for each unit of beta. Higher Treynor indicates better compensation for market risk. Treynor is particularly useful when comparing diversified portfolios with similar diversification levels, as it focuses on the risk that cannot be diversified away.

## Assumptions
- Portfolio is well-diversified (idiosyncratic risk is negligible)
- Beta is stable and meaningful measure of systematic risk
- Capital Asset Pricing Model (CAPM) assumptions hold
- Market proxy is appropriate for the portfolio
- Beta estimation period is representative

## Practical Use
Treynor is useful for evaluating fund managers who are expected to take on systematic risk rather than idiosyncratic risk. It's commonly used by institutional investors with diversified portfolios. The ratio can be decomposed using Fama-French models to understand sources of return. Limitations include: beta can be unstable over time, assumes linear relationship with market, and may not capture all systematic factors. Combining Treynor with Sharpe provides a fuller picture: high Sharpe with low Treynor suggests idiosyncratic alpha, while high Treynor suggests market timing skill.

---

### Value at Risk (Historical Simulation)

**Equation:**

```
\text{VaR}_{\alpha} = -Q_{\alpha}(R)
```

## Equation Variables
Historical simulation VaR calculates risk measures using the empirical distribution of past returns, making no distributional assumptions about return patterns.

- **$\text{VaR}_{\alpha}$**: Value at Risk at confidence level $\alpha$ (e.g., 95% or 99%), representing the $\alpha$-th percentile loss.
- **$Q_{\alpha}(R)$**: The $\alpha$-quantile function applied to the historical return distribution $R$, returning the $\alpha$-th percentile return.
- **$R$**: Vector or distribution of historical portfolio returns over the lookback period.
- **Negative sign**: Converts the $\alpha$-th percentile return to a loss amount (since losses are negative returns).

## Interpretation
This method directly uses historical data to estimate VaR without assuming any distribution. If we have 1000 days of historical returns and want 95% VaR, we find the 50th worst return (since $1-0.95 = 0.05$, and $1000 \times 0.05 = 50$). The 50th worst return represents the threshold such that 95% of historical observations were better (less negative). This approach naturally captures fat tails, volatility clustering, and non-normal return distributions present in actual market data.

## Assumptions
- Historical returns are representative of future return distribution
- Market conditions and portfolio composition remain similar
- Sufficient historical data available for statistical significance
- No structural breaks between historical and future periods
- Lookback period appropriately chosen (balancing stability vs. relevance)

## Practical Use
Historical simulation is widely used because it's intuitive, doesn't require distributional assumptions, and automatically incorporates all empirical features of returns including fat tails and skewness. It's particularly popular in risk management departments for its transparency and ease of explanation to non-technical stakeholders. Drawbacks include: requires large datasets, may miss unprecedented events not in history, and can be sensitive to lookback period selection.

---

### Value at Risk (Parametric)

**Equation:**

```
\text{VaR}_{\alpha} = \mu - z_{\alpha} \cdot \sigma
```

## Equation Variables
Value at Risk (VaR) is the most widely used market risk measure in finance, quantifying the potential loss in value of a portfolio over a defined period for a given confidence level.

- **$\text{VaR}_{\alpha}$**: Value at Risk at confidence level $\alpha$ (e.g., 95% or 99%). This represents the threshold loss level such that the probability of exceeding this loss is $1-\alpha$.
- **$\mu$**: Expected return (or mean) of the portfolio value change distribution.
- **$z_{\alpha}$**: $\alpha$-quantile of the standard normal distribution (e.g., 1.645 for 95%, 2.326 for 99%).
- **$\sigma$**: Standard deviation (volatility) of portfolio returns.

## Interpretation
VaR answers the question: "What is my worst-case loss at confidence level $\alpha$ under normal market conditions?" For a 95% VaR of $1M, there is a 5% chance of losing more than $1M over the horizon. The parametric method assumes normally distributed returns, which enables analytical computation but may underestimate tail risk. This method is also known as the variance-covariance approach because it relies on the mean and covariance of returns.

## Assumptions
- Returns are normally distributed (log-normal for prices)
- Volatility and correlation are constant over the horizon
- Linear approximation adequate for the portfolio
- No extreme events or regime changes
- Portfolio positions remain constant during the horizon

## Practical Use
VaR is a regulatory requirement (Basel Accords for banks), used for setting risk limits, capital allocation, and risk reporting. It provides a single number that summarizes total portfolio risk. Limitations include: doesn't capture loss magnitude beyond VaR, assumes normal distribution (underestimates fat tails commonly observed in markets), and is not coherent (fails subadditivity). Expected Shortfall addresses some of these limitations by averaging losses beyond the VaR threshold.

---

### Vanna (Cross Gamma)

**Equation:**

```
\text{Vanna} = \frac{\partial^2 V}{\partial S \partial \sigma} = \frac{\partial \Delta}{\partial \sigma} = N'(d_1) \frac{d_2}{\sigma}
```

## Equation Variables
Vanna measures the cross-sensitivity of option prices to simultaneous changes in underlying price and volatility, capturing the interaction between Delta and Vega exposures.

- **Vanna**: Rate of change of Delta with respect to volatility (equivalently, rate of change of Vega with respect to underlying).
- **$V$**: Option value.
- **$S$**: Underlying price.
- **$\sigma$**: Volatility.
- **$\Delta$**: Option Delta.
- **$N'(d_1)$**: Standard normal probability density function at $d_1$.
- **$d_2$**: Second Black-Scholes parameter where $d_2 = d_1 - \sigma\sqrt{T}$.
- **$\sigma$**: Volatility in the denominator normalizing the effect.

## Interpretation
Vanna captures the intuitive fact that Delta changes when volatility changes. Specifically, when volatility increases, at-the-money options become more likely to finish in-the-money, increasing their Delta toward 0.5. Similarly, when the underlying price changes, the option's sensitivity to volatility (Vega) changes. Vanna is typically small for deep in/out-of-the-money options and largest for at-the-money options with moderate time to expiration. Understanding Vanna is crucial for understanding why Delta-hedged portfolios can still experience P&L from volatility changes even when hedged for pure Delta.

## Assumptions
- Black-Scholes model assumptions apply
- Volatility and price changes are independent (this is what Vanna measures the cross-effect of)
- No jumps or discontinuities in price or volatility paths
- Constant volatility over the option life
- European exercise style

## Practical Use
Vanna is important for understanding P&L attribution in Delta-hedged option portfolios. A Delta-hedged, Vega-neutral portfolio can still lose money if price and volatility move together in the "wrong" direction. For example, if a portfolio has positive Vanna, a simultaneous price increase and volatility decrease (common in equity markets during rallies) will create losses. Vanna risk is inherently linked to the volatility surface - different strikes and expiries have different Vanna, creating cross-gamma effects when the vol surface shifts.

---

### Volga (Vega Gamma)

**Equation:**

```
\text{Volga} = \frac{\partial^2 V}{\partial \sigma^2} = S_0 N'(d_1) \sqrt{T} \, d_1 d_2
```

## Equation Variables
Volga (also called Vomma) measures the convexity of option value with respect to volatility, showing how Vega itself changes as volatility changes.
- **Volga**: Rate of change of Vega with respect to volatility, or second derivative of option value with respect to volatility.
- **$V$**: Option value.
- **$\sigma$**: Volatility.
- **$S_0$**: Current underlying price.
- **$N'(d_1)$**: Standard normal PDF at $d_1$.
- **$T$**: Time to expiration.
- **$d_1$**: First Black-Scholes parameter combining moneyness and time-vol.
- **$d_2$**: Second Black-Scholes parameter where $d_2 = d_1 - \sigma\sqrt{T}$.

## Interpretation
Volga is always positive, meaning Vega increases with volatility for all options. This positive convexity means options become more sensitive to volatility changes as volatility itself increases. At-the-money options typically have the highest Volga because small volatility changes have the largest impact on options near the money where probability mass is concentrated. Volga decay is similar to Gamma decay - Volga increases as expiration approaches (for at-the-money options), making short-dated options more sensitive to volatility changes. A Volga of 0.1 means Vega increases by 0.1 for every 1 percentage point increase in volatility.

## Assumptions
- Volatility surface is smooth and differentiable
- Volatility changes are small enough for second-order approximation
- No volatility jumps or regime changes
- Standard Black-Scholes model applies
- No correlation between volatility and underlying returns

## Practical Use
Volga is crucial for understanding volatility risk beyond simple Vega exposure. Long volatility positions benefit from Volga because they gain from both volatility increases and the increasing sensitivity to further volatility changes (volatility of volatility). Short volatility positions face the risk that Vega increases when volatility spikes, amplifying losses. Trading the "vol of vol" is essentially trading Volga. Options with similar Vega can have very different Volga, so pure Vega-neutral portfolios can still have significant Volga exposure requiring careful management.

---

### Wrong-Way Risk

**Equation:**

```
\text{WWR Factor} = \frac{\text{Correlation}(X, Y)}{\sqrt{\text{Correlation}(X, X) \times \text{Correlation}(Y, Y)}}
```

## Equation Variables
Wrong-Way Risk (WWR) occurs when exposure to a counterparty is positively correlated with the counterparty's default probability, creating amplified losses when both events happen together.

- **WWR Factor**: Measure of inappropriate correlation between exposure and default.
- **$X$**: Random variable representing exposure to counterparty.
- **$Y$**: Random variable representing counterparty default intensity or probability.
- **$\text{Correlation}(\cdot, \cdot)$**: Correlation coefficient between the two variables.

## Interpretation
Wrong-Way Risk exists when $\text{Correlation}(X, Y) > 0$. If a bank is most exposed to a counterparty precisely when that counterparty is most likely to default, the exposure and default move together, causing worse losses than standard CVA models assume. For example, an interest rate swap where the bank receives fixed rates: if rates rise (increasing mark-to-market exposure), the counterparty (perhaps a levered real estate company) becomes more likely to default due to higher funding costs. WWR can double or triple CVA capital requirements for highly correlated positions.

## Assumptions
- Exposure and default can be modeled as correlated random variables
- Correlation is stable over time and across scenarios
- Sufficient data exists to estimate the correlation
- Default is modeled as intensity-based (Poisson process) or reduced-form
- Wrong-way risk is not captured by standard CVA models

## Practical Use
Wrong-Way Risk is a key focus of Basel III CVA capital requirements and credit risk management. Banks must identify, measure, and mitigate WWR in their derivative portfolios. Methods to address WWR include: limiting exposure to correlated counterparties, using collateral agreements, buying CVA hedges, and stress testing extreme wrong-way scenarios. Advanced modeling uses copulas (Gaussian, t-, or Clayton) to model the joint distribution of exposure and default intensity. WWR is particularly important for emerging market counterparties, commodities exposures, and structured products with embedded leverage.

---

## Interest Rate Derivatives

Interest Rate Derivatives covers the pricing and risk management of instruments whose value depends on interest rates. This includes swaps, caps, floors, swaptions, and the term structure models that underpin their valuation.

### Subcategories
- **Interest Rate Swaps**: Fixed-for-floating exchanges and basis swaps
- **Cap/Floor**: Interest rate options using Black's model
- **Swaptions**: Options on swaps
- **Term Structure**: Forward rates and multi-curve framework

### Annuity (Swap Present Value Factor)

**Equation:**

```
A(t, T) = \sum_{i=1}^{n} \delta_i P(t, t_i)
```

## Equation Variables
The annuity (also called the present value of a basis point, PVBP, or DV01) is the sum of discounted accrual factors for a series of fixed cash flows.

- **$A(t, T)$**: Annuity (PV factor) from valuation date $t$ to swap maturity $T$.
- **$\delta_i$**: Accrual factor for the $i$-th payment period.
- **$P(t, t_i)$**: Discount factor from $t$ to payment date $t_i$.
- **$n$**: Number of remaining payment dates.
- **$T$**: Swap maturity (last payment date).

## Interpretation
The annuity represents the present value of receiving 1 basis point per period on the fixed leg of a swap. It is the key scaling factor for converting basis point sensitivities into present values. A 1 bp change in the swap rate changes the PV by exactly the annuity amount. The annuity is central to swap pricing, hedging, and risk management.

## Assumptions
- Fixed payments are regular (annual, semiannual, quarterly).
- Day count conventions are consistent across all periods.
- No optionality (plain vanilla swap).
- Annuity is calculated using the valuation discount curve.

## Practical Use
The annuity is used to quote swap spreads, calculate DV01 for hedging, and scale option-adjusted spreads (OAS). It decreases as the swap approaches maturity (fewer payments remaining). The annuity-to-par ratio is used in CMS pricing and swap rate interpolation.

---

### Basis Swap Spread

**Equation:**

```
s_{\text{basis}} = s_{\text{float1}} - s_{\text{float2}}
```

## Equation Variables
A basis swap exchanges cash flows between two different floating rate indices (e.g., USD-LIBOR and Fed Funds), with the spread as the key pricing parameter.

- **$s_{\text{basis}}$**: Basis swap spread (quoted in basis points per annum).
- **$s_{\text{float1}}$**: Par swap rate for the first floating leg (e.g., 3M USD-LIBOR).
- **$s_{\text{float2}}$**: Par swap rate for the second floating leg (e.g., Fed Funds).
- **$n$**: Number of payment periods in the swap.
- **$\delta_i$**: Accrual factors for each floating leg.

## Interpretation
The basis spread reflects the relative value and liquidity of two floating rate indices. When $s_{\text{float1}} > s_{\text{float2}}$, the basis is positive (the first index is more expensive). The basis swap exchanges floating-for-floating at this spread, isolating the basis risk from the underlying rate level. The spread compensates for differences in credit risk, liquidity, and market depth.

## Assumptions
- Both legs use the same notional principal.
- Payment frequencies and day counts are aligned.
- No optionality in the basis swap.
- Market liquidity allows quoting tight bid-ask spreads.

## Practical Use
Basis swaps are used to transform exposure from one floating index to another (e.g., LIBOR to Fed Funds for collateralized trades). They capture funding spreads and relative value between money markets. The basis widens during stress (e.g., 2008, 2020) when LIBOR funding becomes expensive relative to OIS.

---

### Black's Forward Rate Model

**Equation:**

```
F_i = \frac{1}{\delta_i} \left[ \frac{P(0, t_{i-1})}{P(0, t_i)} - 1 \right]
```

## Equation Variables
Black's forward rate model provides the relationship between discount factors and forward rates for a given term structure.

- **$F_i$**: Forward rate for the period $[t_{i-1}, t_i]$.
- **$\delta_i$**: Accrual factor for period $i$ ($t_i - t_{i-1}$ in years).
- **$P(0, t_{i-1})$**: Discount factor to the start of the forward period.
- **$P(0, t_i)$**: Discount factor to the end of the forward period.
- **$t_{i-1}$**: Start date of the forward period (fixing date).
- **$t_i$**: End date of the forward period (payment date).

## Interpretation
The forward rate is the break-even rate that equates the return from investing from $t_{i-1}$ to $t_i$ with rolling shorter investments. Algebraically, $P(0, t_i) = P(0, t_{i-1}) / (1 + \delta_i F_i)$. This relationship holds regardless of the underlying rate type (LIBOR, EURIBOR, SOFR) and is the foundation of forward curve construction from discount factors.

## Assumptions
- No arbitrage between instruments of different maturities.
- Consistent day count conventions across the curve.
- Discount factors are derived from observable market instruments.
- Forward rates are simple (not continuously compounded).

## Practical Use
Forward rates are the building blocks of interest rate derivatives pricing. They are extracted from FRAs, futures prices, and swap rates during curve bootstrapping. Forward curves enable forward-starting swaps, FRAs, and basis swap pricing. Changes in forward rates drive P&L in interest rate positions.

---

### Cap Price (Black's Model)

**Equation:**

```
\text{Cap} = \sum_{i=1}^{n} \delta_i P(0, t_i) \left[ F_i N(d_1) - K N(d_2) \right]
```

## Equation Variables
An interest rate cap is a series of caplets (call options on interest rates) that pay when the floating rate exceeds a predetermined strike.

- **$\text{Cap}$**: Total present value of the cap (sum of caplet values).
- **$\delta_i$**: Accrual factor for the $i$-th caplet period.
- **$P(0, t_i)$**: Discount factor to the $i$-th payment date.
- **$F_i$**: Forward rate for the $i$-th period, the underlying of the $i$-th caplet.
- **$K$**: Cap strike rate (typically the ATM rate at inception).
- **$N(\cdot)$**: Cumulative standard normal distribution function.
- **$d_1 = \frac{\ln(F_i/K) + \frac{1}{2}\sigma^2 t_i}{\sigma\sqrt{t_i}}$**
- **$d_2 = d_1 - \sigma\sqrt{t_i}$**
- **$\sigma$**: Black-implied volatility for the forward rate.
- **$t_i$**: Time to the $i$-th caplet expiration.

## Interpretation
Each caplet is valued as a Black-style option on the forward rate $F_i$. When $F_i > K$, the caplet pays $(F_i - K)\delta_i$, which is discounted to today. The normal distribution weights this payoff by the probability (under the forward measure) that the rate exceeds the strike. Higher volatility increases option value through the $\sigma^2 t_i$ term.

## Assumptions
- Forward rates are lognormally distributed under the appropriate measure.
- Constant volatility across strikes and maturities (flat vol surface).
- No correlation between caplets (analytical tractability).
- Settlement at period end (European-style).

## Practical Use
Caps protect borrowers against rising rates and are used in mortgage-backed securities (MBS) as prepayment hedges. The cap price is sensitive to implied volatility (Vega). Cap-floor parity relates caps, floors, and swaps. The market uses Black's model despite its simplifying assumptions.

---

### Constant Maturity Swap Rate

**Equation:**

```
\text{CMS}(T_0) = \sum_{i=1}^{n} w_i R(t_0, t_{i-1}, t_i)
```

## Equation Variables
A Constant Maturity Swap (CMS) exchanges a fixed or floating leg for payments based on a constantly maturing swap rate (e.g., 10Y swap rate).

- **$\text{CMS}(T_0)$**: CMS rate at observation time $T_0$ (e.g., 10Y swap rate observed today).
- **$w_i$**: Weights derived from the CMS product specifications (often $\delta_i P(t_0, t_i)$).
- **$R(t_0, t_{i-1}, t_i)$**: Swap rate for tenor $(t_i - t_{i-1})$ observed at $t_0$.
- **$t_0$**: CMS observation date (rate setting date).
- **$t_i$**: CMS payment dates.
- **$n$**: Number of CMS payment periods.

## Interpretation
The CMS rate is the market-quoted swap rate for a standard tenor (e.g., 2Y, 5Y, 10Y, 30Y) observed at each fixing date. The weights depend on the specific CMS structure (linear vs. non-linear payoffs). CMS products are sensitive to the volatility of long-term swap rates, making them attractive for yield enhancement strategies.

## Assumptions
- CMS rate is observed from liquid market quotes.
- Weights are fixed at trade inception.
- CMS rate follows a lognormal distribution (for Black-style pricing).
- No early termination or American-style features.

## Practical Use
CMS swaps and options are used for yield enhancement and duration management. CMS caps/floors are priced using a shifted lognormal model with correlation inputs. The CMS market is less liquid than vanilla swaps but offers unique exposure to the long end of the curve.

---

### Convexity Adjustment

**Equation:**

```
F^{\text{convex}} = F^{\text{forward}} + \frac{1}{2} \sigma^2 T_1 T_2
```

## Equation Variables
The convexity adjustment corrects the relationship between futures prices and forward rates, accounting for the mark-to-market feature of futures contracts.

- **$F^{\text{convex}}$**: Convexity-adjusted forward rate (from futures price).
- **$F^{\text{forward}}$**: Forward rate from the term structure model (no convexity adjustment).
- **$\sigma$**: Volatility of the underlying interest rate (annualized).
- **$T_1$**: Time to first rate fixing.
- **$T_2$**: Time to second rate fixing.
- **$T = T_1 + \delta/2$**: Average time to the rate observation.

## Interpretation
Futures prices differ from forward prices due to daily mark-to-market. When rates are volatile, the daily reset feature creates a correlation between rate levels and the reinvestment of variation margin. This correlation (convexity) is positive for long positions when rates are positively correlated with the reinvestment rate. The adjustment is typically small (1-5 bps) but material for pricing precision.

## Assumptions
- Constant volatility $\sigma$ for the underlying rate.
- Linear payoff structure (no optionality).
- Correlations drive the adjustment magnitude.
- Rate and reinvestment are positively correlated.

## Practical Use
Convexity adjustments are critical when bootstrapping curves from futures prices (e.g., Eurodollar futures). Traders adjust futures quotes to match forward rates for swap curve construction. The adjustment depends on the correlation between rates and is calibrated to swaption volatilities.

---

### Cross-Currency Basis

**Equation:**

```
\text{basis} = s_{\text{ccy}} - (r_{\text{dom}} - r_{\text{for}})
```

## Equation Variables
The cross-currency (XCCY) basis reflects the deviation from covered interest rate parity (CIP) in currency pairs, capturing funding and liquidity imbalances.

- **$\text{basis}$**: Cross-currency basis spread (in basis points, added to foreign leg).
- **$s_{\text{ccy}}$**: Quoted cross-currency basis swap spread.
- **$r_{\text{dom}}$**: Domestic interest rate (e.g., USD OIS).
- **$r_{\text{for}}$**: Foreign interest rate (e.g., EUR EURIBOR or OIS).
- **$r_{\text{dom}} - r_{\text{for}}$**: Interest rate differential between currencies.

## Interpretation
Under perfect CIP, the basis would be zero. In practice, the basis reflects funding constraints: when banks cannot borrow cheaply in a currency, the basis becomes negative (they pay extra to borrow the currency in the XCCY market). The basis compensates for credit risk, collateral scarcity, and regulatory costs (balance sheet usage).

## Assumptions
- Basis swaps involve exchanging notional and interest in two currencies.
- FX spot rate is fixed at trade inception (no currency risk).
- Basis is quoted for standard tenors (1Y, 5Y, 10Y).
- Basis is typically added to the foreign currency leg.

## Practical Use
XCCY basis is a key indicator of funding stress in currency markets. Negative bases (e.g., EUR/USD, USD/JPY) indicate dollar shortage. Hedge funds exploit basis convergence trades. The basis widened dramatically in 2008 and 2020, revealing structural fragilities in FX swap markets.

---

### Floor Price (Black's Model)

**Equation:**

```
\text{Floor} = \sum_{i=1}^{n} \delta_i P(0, t_i) \left[ K N(-d_2) - F_i N(-d_1) \right]
```

## Equation Variables
An interest rate floor is a series of floorlets (put options on interest rates) that pay when the floating rate falls below a predetermined strike.

- **$\text{Floor}$**: Total present value of the floor (sum of floorlet values).
- **$\delta_i$**: Accrual factor for the $i$-th floorlet period.
- **$P(0, t_i)$**: Discount factor to the $i$-th payment date.
- **$F_i$**: Forward rate for the $i$-th period, the underlying of the $i$-th floorlet.
- **$K$**: Floor strike rate.
- **$N(\cdot)$**: Cumulative standard normal distribution function.
- **$d_1 = \frac{\ln(F_i/K) + \frac{1}{2}\sigma^2 t_i}{\sigma\sqrt{t_i}}$**
- **$d_2 = d_1 - \sigma\sqrt{t_i}$**
- **$\sigma$**: Black-implied volatility for the forward rate.
- **$t_i$**: Time to the $i$-th floorlet expiration.

## Interpretation
Each floorlet is valued as a put option on the forward rate. When $F_i < K$, the floorlet pays $(K - F_i)\delta_i$, discounted to today. The negative arguments in the normal distribution $N(-d_1)$ and $N(-d_2)$ account for the put payoff structure. Floor and cap values are related through cap-floor parity: Cap - Floor = Annuity(K), where the annuity is the present value factor.

## Assumptions
- Forward rates are lognormally distributed under the appropriate measure.
- Constant volatility across strikes and maturities.
- No early exercise (European-style settlement).
- Floor and cap are treated as separate instruments.

## Practical Use
Floors protect lenders and investors (e.g., in floating-rate notes) against declining rates. They are used in structured products and as part of collar strategies (long cap, short floor, or vice versa). Floor volatility is typically lower than cap volatility due to the sticky-delta phenomenon.

---

### Forward Rate Agreement Value

**Equation:**

```
V_{FRA} = (F - K) \cdot \delta \cdot P(0, T_2)
```

## Equation Variables
A Forward Rate Agreement (FRA) is an over-the-counter contract specifying a forward borrowing/lending rate to be paid at a future date.

- **$V_{FRA}$**: Present value of the FRA position (positive = receiver benefits).
- **$F$**: Forward rate agreed upon at contract inception for the period $[T_1, T_2]$.
- **$K$**: Contract rate (strike) at which the FRA is settled.
- **$\delta$**: Accrual factor (day count) for the forward period $T_2 - T_1$.
- **$P(0, T_2)$**: Discount factor to the settlement date $T_2$.
- **$T_1$**: Start of the forward period (fixing date).
- **$T_2$**: End of the forward period (payment date).

## Interpretation
The FRA value represents the present value of the difference between the contracted rate and the actual realized rate. If the market rate $F$ exceeds the strike $K$, the FRA receiver receives $(F - K)\delta$ times the notional at $T_2$, discounted to today. This captures the time value of money and the uncertainty in future rates.

## Assumptions
- Settlement occurs at $T_2$ (end of forward period) with cash exchange.
- No initial premium payment (FRA is priced off-market initially).
- Uses LIBOR/SOFR as underlying forward rate.
- Linear approximation valid for short-dated FRAs.

## Practical Use
FRAs are used for short-term interest rate hedging (3M to 24M forward start). They form the building blocks of the forward curve, interpolated between deposit rates and swap rates. Corporate treasurers use FRAs to lock in future borrowing costs.

---

### Instantaneous Forward Rate Covariance

**Equation:**

```
dF(t,T) \cdot dF(t,S) = \rho(t,T,S) \sigma_F(t,T) \sigma_F(t,S) dt
```

## Equation Variables
The instantaneous covariance structure defines how forward rates at different maturities move together, a cornerstone of multifactor interest rate models.

- **$dF(t,T)$**: Diffusion of the forward rate for maturity $T$ at time $t$.
- **$dF(t,S)$**: Diffusion of the forward rate for maturity $S$ at time $t$.
- **$\rho(t,T,S)$**: Instantaneous correlation between forward rates at maturities $T$ and $S$.
- **$\sigma_F(t,T)$**: Volatility of the forward rate with maturity $T$.
- **$\sigma_F(t,S)$**: Volatility of the forward rate with maturity $S$.
- **$dt$**: Infinitesimal time increment.

## Interpretation
The covariance structure captures how rates of different tenors move together. $\rho = 1$ implies perfect correlation (parallel shifts); $\rho < 1$ allows for twists and bends in the yield curve. The full covariance matrix enables Monte Carlo simulation of the yield curve evolution. This structure underpins the Heath-Jarrow-Morton (HJM) framework.

## Assumptions
- Forward rate dynamics are driven by Brownian motions.
- Volatility and correlation are deterministic (Gaussian models).
- No arbitrage is enforced through the HJM drift condition.
- Market prices of risk are incorporated.

## Practical Use
The covariance structure is calibrated to swaption volatilities and correlations. Principal component analysis (PCA) typically finds 2-3 dominant factors (level, steepness, curvature). Gaussian models (e.g., G2++, LMM) use this structure for pricing complex exotics. Correlation matrices are critical for Bermudan swaption and CMS product pricing.

---

### Interest Rate Swap Present Value

**Equation:**

```
V_{\text{pay}} = \sum_{i=1}^{n} \delta_i (F_{i-1} - K) P(0, t_i)
```

## Equation Variables
The interest rate swap is the most widely traded interest rate derivative, exchanging fixed for floating cash flows based on a notional principal.

- **$V_{\text{pay}}$**: Present value of the swap from the perspective of the fixed-rate payer (negative when in-the-money for the fixed payer).
- **$\delta_{i}$**: Accrual factor (day count fraction) for period $i$, typically Actual/360 for USD LIBOR swaps.
- **$F_{i-1}$**: Forward rate for period $i$, set at the beginning of the period $t_{i-1}$ and paid at $t_i$.
- **$K$**: Fixed swap rate (strike) agreed at trade inception.
- **$P(0, t_i)$**: Discount factor from the valuation curve for payment date $t_i$.
- **$n$**: Number of payment periods.

## Interpretation
The swap value is the present value of the difference between floating and fixed cash flows. The floating leg equals the par value at each payment (because the forward rate exactly discounts the expected payment), so only the fixed leg requires full discounting. When rates rise, the fixed payer owes more (negative value); when rates fall, they benefit (positive value).

## Assumptions
- Standard vanilla swap structure with regular payments
- No early termination or optionality
- Collateralized with overnight rates as proxy for risk-free
- Use of OIS discounting for collateralized trades

## Practical Use
Swaps are used for interest rate hedging, speculation, and curve construction. The swap rate (which makes PV = 0) provides the par swap curve. Basis swaps exchange floating-for-floating (e.g., USD-LIBOR vs Fed Funds). Cross-currency basis reflects funding spreads between currencies.

---

### LIBOR Forward Rate

**Equation:**

```
L(t, T, T+\delta) = \frac{1}{\delta} \left[ \frac{P(t, T)}{P(t, T+\delta)} - 1 \right]
```

## Equation Variables
The LIBOR forward rate is the implied future LIBOR rate observed at time $t$ for the period $[T, T+\delta]$.

- **$L(t, T, T+\delta)$**: Forward LIBOR rate at time $t$ for the period beginning at $T$ and ending at $T+\delta$.
- **$t$**: Valuation date (today).
- **$T$**: Start of the forward period (fixing date).
- **$T+\delta$**: End of the forward period (payment date).
- **$\delta$**: Length of the forward period in years (day count).
- **$P(t, T)$**: Discount factor from $t$ to $T$ (price of $1 at $T$).
- **$P(t, T+\delta)$**: Discount factor from $t$ to $T+\delta$.

## Interpretation
The LIBOR forward rate is the risk-neutral expectation of the future LIBOR rate, derived from the ratio of discount factors. Under the $T$-forward measure, the forward rate $L(t, T, T+\delta)$ becomes a martingale (its expected future value equals its current value). This property is fundamental to pricing interest rate derivatives.

## Assumptions
- LIBOR rates are risk-neutral expectations of future overnight rates.
- No credit risk in the theoretical LIBOR rate.
- Market completeness for the underlying forward measure.
- Consistent discounting across all tenors.

## Practical Use
LIBOR forward rates underlie all interest rate derivative pricing (FRAs, swaps, caps, floors). The transition from LIBOR to risk-free rates (SOFR, SONIA) requires rebuilding curves and adjusting models. Forward rates also appear in convexity adjustments for futures-style products.

---

### Mean Reversion Rate

**Equation:**

```
\kappa = -\frac{1}{dt} \mathbb{E}\left[ \frac{dr_t}{r_t} \right]
```

## Equation Variables
The mean reversion rate $\kappa$ (kappa) characterizes how quickly the short rate reverts to its long-run mean in affine term structure models.

- **$\kappa$**: Mean reversion rate (speed of reversion to mean).
- **$dr_t$**: Change in the short rate over interval $dt$.
- **$r_t$**: Current short rate level.
- **$dt$**: Small time increment.
- **$\mathbb{E}[\cdot]$**: Expectation operator under the risk-neutral measure.
- **$\theta$**: Long-run mean level of the short rate.

## Interpretation
In models like Vasicek or Hull-White, the short rate follows $dr_t = \kappa(\theta - r_t)dt + \sigma dW_t$. The mean reversion rate $\kappa$ determines how quickly deviations from the mean decay. Higher $\kappa$ means faster reversion (shorter effective horizon) and lower sensitivity to long-term rate movements. $\kappa$ is calibrated to market data (swaptions, caps/floors).

## Assumptions
- Mean reversion is linear (affine drift).
- Volatility $\sigma$ is constant or deterministic.
- Short rate remains positive (may require shift for negative rates).
- Model fits the initial term structure exactly.

## Practical Use
$\kappa$ is a key calibration parameter affecting all interest rate derivative prices. Typical values range from 0.01 to 0.15 for major currencies. Higher $\kappa$ (faster reversion) compresses swaption volatilities across expiries. The mean reversion-holding period relationship is critical for VaR and stress testing.

---

### Payer Swaption Price

**Equation:**

```
\text{PayerSwaption} = P(0, T_0) \left[ s_0 N(d_1) - K N(d_2) \right]
```

## Equation Variables
A payer swaption gives the holder the right (but not obligation) to enter into a swap as the fixed-rate payer at a predetermined strike.

- **$\text{PayerSwaption}$**: Present value of the payer swaption (right to pay fixed).
- **$P(0, T_0)$**: Discount factor to the swaption expiration date $T_0$.
- **$s_0$**: Forward swap rate at inception for the underlying swap (the ATM rate).
- **$K$**: Swaption strike rate (the fixed rate at which the holder can enter the swap).
- **$N(\cdot)$**: Cumulative standard normal distribution.
- **$d_1 = \frac{\ln(s_0/K) + \frac{1}{2}\sigma_s^2 T_0}{\sigma_s\sqrt{T_0}}$**
- **$d_2 = d_1 - \sigma_s\sqrt{T_0}$**
- **$\sigma_s$**: Swaption volatility (Black-implied, annual).
- **$T_0$**: Time to swaption expiration.

## Interpretation
The payer swaption is equivalent to a call option on the swap rate. If the market swap rate $s_0$ exceeds the strike $K$, exercising the swaption and entering a pay-fixed swap is profitable (the holder pays above-market fixed rates). The value equals the discounted expected payoff, where $N(d_1)$ captures the probability of exercise adjusted for the option's delta.

## Assumptions
- Swap rate is lognormally distributed at expiration (Black's model).
- Swap rate volatility is constant over the swaption's life.
- Exercise is European (at expiry only).
- Underlying swap has the same fixed and floating specifications as the swaption.

## Practical Use
Payer swaptions are used to hedge against rising rates (e.g., mortgage lenders hedging pipelines). Receiver swaptions (puts on swap rates) hedge falling rates. Swaptions are quoted by expiry, tenor, and strike. Swaption volatility surfaces are critical inputs for pricing exotic derivatives.

---

### Swap Par Rate

**Equation:**

```
s = \frac{1 - P(0, T)}{\sum_{i=1}^{n} \delta_i P(0, t_i)}
```

## Equation Variables
The swap par rate (or par swap rate) is the fixed rate that makes an interest rate swap have zero present value at inception.

- **$s$**: Par swap rate (annualized, semiannual if $\delta_i$ reflects semiannual payments).
- **$P(0, T)$**: Discount factor to the swap maturity $T = t_n$ from the valuation curve.
- **$P(0, t_i)$**: Discount factor to each payment date $t_i$.
- **$\delta_i$**: Accrual factor for the $i$-th payment period.
- **$n$**: Number of fixed payment periods over the swap life.
- **$T$**: Total swap tenor (maturity date).

## Interpretation
The par swap rate is the weighted average of forward rates implied by the discount curve, where weights are the discounted accrual factors. This rate is called "par" because it equates the present value of the fixed leg to the present value of the floating leg (which equals par at inception). The denominator is the annuity or present value of a basis point (PVBP).

## Assumptions
- Fixed leg payments are regular (annual, semiannual, quarterly).
- Floating leg resets to prevailing LIBOR/SOFR at each period start.
- No convexity adjustment for daily/continuous compounding.
- Bootstrap the discount curve from market instruments (deposits, FRAs, futures, swaps).

## Practical Use
The par swap rate is quoted in the market for standard tenors (2Y, 5Y, 10Y, 30Y). It forms the "par swap curve" used for discounting and forward rate extraction. Trading the swap curve involves basis swaps, asset swaps, and relative value trades between tenors.

---

## Credit Risk and CVA/DVA

Credit Risk addresses the mathematics of default risk, credit spreads, and counterparty credit exposure. This includes both structural models (Merton) and reduced-form (intensity) models, as well as valuation adjustments.

### Subcategories
- **Default Probability**: Hazard rates and survival probabilities
- **CVA/DVA**: Counterparty valuation adjustments
- **Credit Derivatives**: CDS, CDOs, and credit indices
- **Structural Models**: Merton, Black-Cox first-passage

### Black-Cox First Passage Model

**Equation:**

```
V(t) = K \exp(-r(T-t))  when barrier breached
```

## Equation Variables
The Black-Cox first passage model enables default to occur before maturity when firm value crosses a barrier.

- **$V(t)$**: Firm value at time $t$
- **$K$**: Default barrier, typically total debt value
- **$r$**: Risk-free interest rate
- **$T$**: Time horizon (final maturity)
- **$t$**: Current time
- **$\exp$**: Exponential function
- **$r(T-t)$**: Risk-free return over remaining period

## Interpretation
First-passage models recognize that default need not wait until maturity—creditors can act when firm value deteriorates significantly. The barrier $K$ represents the point where debt renegotiation or liquidation becomes optimal, and $K \exp(-r(T-t))$ shows the barrier's present value under risk-free discounting. The model produces default probabilities higher than Merton's because default can occur at any time before $T$, not just at maturity. The solution involves hitting probabilities for Brownian motion, typically using the method of images or conformal mapping techniques from barrier option pricing.

## Assumptions
- Firm value follows geometric Brownian motion: $dV = \mu V dt + \sigma_v V dW$
- Default barrier is constant over time
- Instantaneous default upon barrier crossing
- No reorganization or restructuring possibilities (absorbing barrier)
- Complete markets with continuous trading
- Risk-neutral pricing framework for valuation
- Barrier represents debt present value with continuous compounding

## Practical Use
Black-Cox provides more realistic default timing than Merton, particularly for firms with high leverage or volatile assets. The barrier interpretation maps to covenant violations in debt contracts—crossing certain thresholds triggers default events. Extensions include: declining barriers (as debt amortizes over time), moving barriers (dependent on interest rates), and multiple barriers (senior and subordinated debt with different priorities). The first-passage framework underlies many modern reduced-form intensity models and provides the theoretical foundation for understanding credit events in structural models.

---

### CDS Present Value Standard Model

**Equation:**

```
PV = \sum \Delta_i Q_i P(0,t_i) - s \sum \Delta_i Q_i P(0,t_i) / 2
```

## Equation Variables
The standard CDS PV formula from the protection buyer's perspective equates protection and premium legs.

- **$PV$**: Present value of the CDS (protection buyer positive = cheap protection)
- **$\Delta_i$**: Accrual factor for period $i$ (time between payment dates)
- **$Q_i$**: Risk-neutral survival probability to time $t_i$
- **$P(0,t_i)$**: Discount factor from 0 to $t_i$ (risk-free)
- **$s$**: CDS spread (annualized)
- **$\sum$**: Sum over all premium/payment periods
- **$/2$**: Approximation for risky present value of premium leg

## Interpretation
The first term is the protection leg PV: expected present value of protection payments received if default occurs. The second term is the premium leg PV: expected present value of premium payments made, weighted by survival probability. At fair spread, these legs are equal and $PV = 0$. The formula uses the "risky annuity" or "CDS duration" to weight payments by survival probability. The protection leg pays $(1-R)$ if default occurs between dates, while the premium leg sums coupon payments weighted by survival (we only pay if no default).

## Assumptions
- Recovery rate $R$ is constant and known
- Default can only occur at period ends (discrete approximation)
- No accrued premium on default (simplified for standard formula)
- Risk-neutral measure for pricing
- Flat hazard rate within each period (piecewise constant)
- Standard payment frequencies (quarterly, semiannual)
- Actual/360 or 30/360 day count conventions

## Practical Use
This formula is the workhorse of CDS valuation. In practice, iterative methods solve for the fair spread given market quotes. The formula extends to: forward-starting CDS (hazard rate curves), recovery swaps (endogenous recovery), credit indices (portfolio of entities), and contingent CDS (triggers based on other events). The discrete version uses the actual accrual convention and includes proper default probability calculation within each period. Market standard is ISDA CDS model for exact calculations.

---

### CDS Spread Approximation

**Equation:**

```
s \approx (1 - R) \lambda
```

## Equation Variables
This simple approximation shows that CDS spread approximately equals LGD times hazard rate.

- **$s$**: CDS spread (annualized, in basis points or decimal)
- **$R$**: Recovery rate (expected recovery as fraction of notional)
- **$(1-R)$**: Loss Given Default (LGD)
- **$\lambda$**: Hazard rate (annual default intensity)
- **$\approx$**: Approximation symbol (exact under continuous assumptions)

## Interpretation
The formula reveals the economic essence of credit risk pricing: the CDS spread compensates the protection seller for expected losses. The spread should equal the product of loss given default and default intensity. Higher default risk (higher $\lambda$) requires higher spreads. Lower expected recovery (higher LGD) requires higher spreads. This decomposition is fundamental to all credit derivative pricing. The approximation assumes continuous premium payments, no accrual on defaults, and standard day count conventions. It provides intuition for pricing and hedging credit risk.

## Assumptions
- Continuous premium payments (discrete effects small for standard tenors)
- No upfront CDS payments (standardized spread quotes)
- Protection starts immediately (spot-start CDS)
- Default occurs at Poisson intensity $\lambda$
- Constant hazard rate over CDS term
- Risk-neutral default probability equals physical probability
- No accrued premium on default (simplified for approximation)

## Practical Use
This approximation is used for quick pricing and for understanding CDS dynamics. Actual CDS pricing requires solving for the hazard rate that makes the CDS PV zero, which involves iterative methods. The approximation is accurate for standard CDS tenors when hazard rates are moderate. For steep credit curves or long tenors, the continuous approximation needs correction for discrete default timing and term structure effects. Traders use this as a sanity check: implied hazard rates from CDS should be consistent with observed spreads and assumed recovery rates.

---

### CVA with Gaussian Copula

**Equation:**

```
CVA = (1 - R) \int_0^T D(t)  EPE(t)  dQ(t)
```

## Equation Variables
The Gaussian Copula CVA formula uses risk-neutral default probability and expected positive exposure.

- **$CVA$**: Credit Valuation Adjustment
- **$(1-R)$**: Loss Given Default
- **$D(t)$**: Discount factor to time $t$ (risk-free)
- **$EPE(t)$**: Expected Positive Exposure at time $t$
- **$dQ(t)$**: Risk-neutral default probability measure
- **$\int_0^T$**: Integration over full horizon

## Interpretation
This formula is the standard single-name CVA calculation under the risk-neutral measure. $EPE(t)$ is typically computed from simulating future market variables (interest rates, FX, equities) and revaluing the portfolio at each future date. The integration weights each potential exposure by its probability of occurrence and the probability of default before receiving the exposure. The discount factor ensures time-value of money is respected. The Gaussian Copula reference often extends to portfolio credit modeling where asset correlations use the Gaussian copula structure.

## Assumptions
- Exposure and default are independent (base case, no wrong-way risk)
- Risk-neutral default probabilities are known and calibrated
- $EPE$ is computed under the risk-neutral measure
- Recovery rate is constant
- Linear exposure profiles or full distribution available
- Monte Carlo simulation provides accurate exposure estimates

## Practical Use
This formula is the starting point for CVA calculations. In practice: Monte Carlo simulation generates exposure paths (thousands of scenarios), $EPE$ replaces expected exposure with expected positive exposure (one-sided, counting only positive MtM), portfolio CVA sums individual CVA with correlation adjustments, and wrong-way risk adjustments modify the formula for dependent exposure-default scenarios. Numerical integration or summation replaces the continuous integral for discrete simulation time steps.

---

### Credit Spread Yield Difference

**Equation:**

```
s = -\frac{\ln P_{risky}(T)}{T} + y_{risk-free}(T)
```

## Equation Variables
Credit spread is the yield difference between a risky bond and a risk-free bond of the same maturity.

- **$s$**: Credit spread (annualized, typically in basis points)
- **$P_{risky}(T)$**: Risky discount factor (price of T-year risky zero-coupon bond)
- **$y_{risk-free}(T)$**: Risk-free yield for maturity $T$
- **$\ln$**: Natural logarithm
- **$T$**: Time to maturity in years
- **$+$**: Addition (spread equals yield difference)

## Interpretation
Credit spreads are observable market measures of default risk. They capture the extra compensation investors require for bearing default risk beyond the risk-free rate. The logarithmic formula converts bond prices to yields properly, ensuring correct compounding. A higher spread means the risky bond yields more but trades at a lower price relative to risk-free equivalents. The spread decomposition reveals: $s \approx$ expected loss component ($LGD \times \lambda$) plus risk premium (compensation for uncertainty in default timing and recovery). Spreads reflect both fundamental credit risk and technical market factors.

## Assumptions
- Bonds are zero-coupon for clean yield calculation (Z-spread extends to coupons)
- Risk-free yield curve is well-defined and observable (sovereign curve)
- No liquidity effects (or liquidity premium is constant across tenors)
- Credit spread is primarily compensation for default risk
- Interest rates and credit risk are independent (no correlation)
- Default occurs at maturity only (for zero-coupon simplification)

## Practical Use
Credit spreads are monitored daily across markets (sovereign, investment grade, high yield). They enable cross-asset comparison: bond spreads versus CDS spreads should be equivalent under no-arbitrage. Spread changes signal credit quality deterioration (widening) or improvement (tightening). Spread decomposition is used in credit research to separate fundamentals (expected loss) from technical factors (liquidity, demand-supply). The Z-spread adds a constant to risk-free rates to match risky bond prices, while the OAS adjusts for embedded options.

---

### Credit Triangle

**Equation:**

```
s \approx \frac{\lambda}{1 - R}
```

## Equation Variables
The Credit Triangle is the foundational relationship between CDS spreads, hazard rates, and recovery rates.

- **$s$**: CDS spread or credit spread
- **$\lambda$**: Default intensity (hazard rate)
- **$R$**: Recovery rate
- **$(1-R)$**: Loss Given Default
- **$\approx$**: Approximation symbol

## Interpretation
The Credit Triangle provides the bridge between market prices (CDS spreads) and default risk parameters (hazard rates). It states that the spread should approximately equal the hazard rate divided by one minus recovery. If we observe a 100bp CDS spread and assume 40% recovery, the implied hazard rate is approximately 60bp. This intensity can then be used for pricing other instruments, calculating CVA, or estimating default probabilities. The approximation is exact in continuous time with constant parameters. The "triangle" visualizes the three interconnected quantities.

## Assumptions
- Continuous premium payments
- Default at Poisson intensity $\lambda$
- No recovery at default moment (recovery comes post-default)
- Risk-neutral probabilities equal physical probabilities
- Constant hazard rate and recovery rate over the horizon
- No discrete effects from payment timing

## Practical Use
The Credit Triangle is used daily by traders and risk managers to: imply hazard rates from CDS spreads, check for arbitrage between bonds and CDS, calibrate reduced-form models, estimate CVA for new counterparties, and perform quick mental calculations for credit analysis. The formula is the starting point for any credit risk calculation involving market data. Deviations from the triangle signal opportunities (if spread > implied) or concerns (if spread < implied, possibly illiquidity or distress).

---

### Credit Valuation Adjustment

**Equation:**

```
CVA = (1 - R) \int_0^T EE(t)  dPD(t)
```

## Equation Variables
CVA represents the market value of counterparty credit risk, calculated as the present value of expected losses from default.

- **$CVA$**: Credit Valuation Adjustment, the amount to subtract from the risk-free derivative value
- **$R$**: Recovery rate, expected recovery as a fraction of exposure
- **$(1-R)$**: Loss Given Default (LGD), the proportion of exposure lost in default
- **$EE(t)$**: Expected Exposure at time $t$, the mean of positive mark-to-market values
- **$dPD(t)$**: Risk-neutral default probability measure, the probability of default in $[t, t+dt)$
- **$T$**: Time horizon of the derivative or portfolio
- **$\int_0^T$**: Integration over the full time horizon

## Interpretation
CVA answers the question: "How much should we subtract from our derivative value because the counterparty might default before we receive our expected cash flows?" The $(1-R)$ term converts expected exposure to expected loss by applying LGD. The integral captures the timing structure—earlier defaults matter more because their losses are less discounted. $EE(t)$ is typically computed from Monte Carlo simulation of exposure paths, as exposure profiles depend on future market variable evolution (interest rates, FX, equities). A higher exposure, higher default probability, or lower recovery all increase CVA.

## Assumptions
- Risk-neutral default probabilities calibrated to market prices (CDS, bonds)
- Independence between exposure and default (base case, no wrong-way risk)
- Known recovery rate $R$ (or deterministic assumption)
- No bilateral netting benefits considered in unilateral CVA
- $EE(t)$ computed under the risk-neutral measure
- Exposure is positive from our perspective (we are owed money)

## Practical Use
CVA is a fundamental adjustment in OTC derivative pricing post-2008 crisis. It is calculated daily for risk management, disclosure (IFRS 9, ASC 820), and regulatory capital purposes. The integral form enables numerical integration once exposure profiles are known through Monte Carlo simulation. Advanced implementations use full exposure distributions (Expected Positive Exposure, Effective EPE) rather than just point estimates. CVA trading has emerged as a distinct desk activity, with CVA desks hedging exposure to counterparty credit risk through CDS positions and other derivatives.

---

### Debit Valuation Adjustment

**Equation:**

```
DVA = (1 - R_L) \int_0^T DFE(t)  dPD_L(t)
```

## Equation Variables
DVA represents the benefit to the derivative holder from their own potential default, the counterparty to CVA.

- **$DVA$**: Debit Valuation Adjustment, the amount to add from potential own default
- **$R_L$**: Own recovery rate, expected recovery as a fraction of liability
- **$(1-R_L)$**: LGD from the counterparty's perspective when we default
- **$DFE(t)$**: Discounted Expected Funding cost or Expected Liability at time $t$
- **$dPD_L(t)$**: Own risk-neutral default probability measure
- **$T$**: Time horizon of the derivative or portfolio
- **$\int_0^T$**: Integration over the full time horizon

## Interpretation
DVA creates an apparent paradox: a company with worse credit quality appears to have more valuable derivatives! This is economically correct—we benefit from our own potential default when we owe money to the counterparty. If the counterparty would receive money from us and we default, they lose the expected payment—creating a benefit that increases our derivative value. The bilateral CVA framework includes both CVA (counterparty default risk) and DVA (own default risk), typically as $CVA - DVA$. The $DFE$ term captures funding costs—if we must fund our obligations at a spread, this creates additional value.

## Assumptions
- Bilateral counterparty relationship where both parties can default
- Counterparty can enforce claims against us
- Own default is independent of exposure (no wrong-way DVA)
- Recovery rate applicable to our obligations is known
- $DFE$ represents the economic cost of funding positions
- Legal framework allows counterparty to claim against us in default

## Practical Use
DVA is included in bilateral CVA calculations ($CVA - DVA$). Some institutions have moved to unilateral CVA (CVA only) to avoid DVA volatility and accounting asymmetry. DVA hedges typically involve buying CDS protection on the firm's own name—a strategy that has drawn regulatory scrutiny. The debate over DVA accounting treatment continues, with some arguing it should be eliminated from fair value accounting entirely because it creates pro-cyclicality (improving credit quality increases losses). Basel III and IFRS 13 guidance continue to evolve on this topic.

---

### Default Probability from Merton Model

**Equation:**

```
PD = N(-DD)
```

## Equation Variables
The default probability from the Merton model uses the standard normal cumulative distribution function to convert Distance to Default.

- **$PD$**: Default probability (annual or period probability)
- **$N(\cdot)$**: Standard normal cumulative distribution function
- **$-DD$**: Negative of Distance to Default
- **$DD$**: Distance to Default from the Merton model

## Interpretation
The normal distribution mapping provides an analytical default probability estimate from the Merton framework. The formula's elegance is a key reason for the model's persistence: DD can be estimated from market data (equity prices, equity volatility), and PD follows directly. Under the lognormal assumption for firm value, log-returns are normally distributed, making $N(-DD)$ the exact default probability. When $DD$ is positive (assets above the barrier), $-DD$ is negative, and $N(\text{negative})$ gives a probability less than 0.5. A $DD$ of 0 (at the barrier) gives $PD = 0.5$, while $DD = 2$ gives $PD \approx 0.0228$.

## Assumptions
- Asset returns are normally distributed
- Firm value process has no jumps (continuous diffusion)
- The normal distribution is a good approximation for extreme events
- Volatility is constant over the horizon
- Barrier is fixed and known
- Implicit assumption of continuous monitoring for barrier crossing

## Practical Use
Merton PDs are used for credit analysis, risk pricing, and regulatory capital. However, the model systematically underestimates default probability for highly levered firms because the normal distribution has thin tails and doesn't capture rare catastrophic events. Extensions include: jump-diffusion models (to capture rare events), stochastic volatility models, and alternative distributions (Student-t, skewed-t) for better tail modeling. The model is foundational for understanding the link between equity markets and credit risk, even if its empirical performance varies across firms and market conditions.

---

### Expected Loss

**Equation:**

```
EL = PD \times LGD \times EAD
```

## Equation Variables
Expected Loss combines the three fundamental components of credit risk into a single loss estimate.

- **$EL$**: Expected Loss (average loss over many exposures)
- **$PD$**: Probability of Default (probability of default over the horizon)
- **$LGD$**: Loss Given Default (proportion of exposure lost in default)
- **$EAD$**: Exposure at Default (exposure level when default occurs)
- **$\times$**: Multiplication of all three components

## Interpretation
Expected Loss answers: "On average, how much will we lose from this exposure?" It is the statistical mean loss across many similar exposures—not a single outcome but the central tendency. EL is the baseline credit cost embedded in pricing. If we charge less than EL in credit spread, we expect to lose money on the exposure over time. The multiplicative structure means each component must be estimated carefully—a small error in any factor propagates to EL. EL applies to individual exposures and can be aggregated to portfolio level by summing or using correlation adjustments.

## Assumptions
- PD, LGD, EAD are independent (or independence is a reasonable approximation)
- Single-period horizon (or components defined consistently across periods)
- PD is unconditional (not dependent on macroeconomic conditions)
- EAD captures the maximum exposure or CCF correctly converts limit to EAD
- LGD is independent of the cause of default
- Large portfolio where law of large numbers applies

## Practical Use
Expected Loss is embedded in regulatory capital (minimum capital = EL under Basel), loan pricing (spread $\geq$ EL / expected return), and risk reporting. It is the baseline for portfolio credit risk: actual losses hover around EL in benign environments but can exceed EL dramatically in stress. Stress testing increases PDs and potentially LGDs while keeping EL as the central benchmark. Provisioning (IFRS 9, CECL) uses EL-type calculations for expected credit losses. Banks price loans to cover EL plus capital costs plus return requirements.

---

### Hazard Rate to Default Probability

**Equation:**

```
Q(t,T) = 1 - \exp\left(-\int_t^T \lambda_s\,ds\right)
```

## Equation Variables
The hazard rate framework is the foundation of reduced-form credit risk models, converting an intensity (hazard rate) into a probability of default over a time interval.

- **$Q(t,T)$**: Default probability between times $t$ and $T$, representing $\mathbb{P}(\tau \le T \mid \tau > t)$.
- **$\lambda_{s}$**: Hazard rate (default intensity) at time $s$, interpreted as the instantaneous conditional default rate: $\lambda_s = \lim_{\Delta \to 0} \frac{1}{\Delta} \mathbb{P}(\tau \le s+\Delta \mid \tau > s)$.
- **$\int_{t}^{T} \lambda_{s}\,ds$**: Integrated hazard rate over the survival period.
- **$\exp(\cdot)$**: Exponential survival function for constant or time-varying intensity.

## Interpretation
The survival probability $P_{surv}(t,T) = \exp\left(-\int_t^T \lambda_s\,ds\right)$ is the probability of no default by $T$ given survival at $t$. The default probability is one minus survival. This framework captures default as a surprise event with no recovery in the default state. A constant hazard rate $\lambda$ gives exponentially distributed default times with the memoryless property, while time-varying $\lambda_t$ enables fitting complex credit curves. The hazard rate represents the market price of default risk embedded in observable instruments like CDS spreads.

## Assumptions
- Default intensity $\lambda_t$ is $\mathcal{F}_t$-adapted and non-negative
- Hazard rate can be deterministic or stochastic (affine, mean-reverting)
- No recovery at default (recovery is handled separately in pricing formulas)
- Market prices of default risk are captured in the calibrated $\lambda_t$
- Default is an unexpected event that cannot be perfectly predicted

## Practical Use
Hazard rates are calibrated to CDS spreads or bond prices. For constant hazard models, $\lambda$ is directly recovered using the credit triangle approximation. Time-varying hazard rates (affine processes, Cox-Ingersoll-Ross) enable fitting the entire term structure of credit spreads. This framework is essential for CVA/DVA calculations, wrong-way risk modeling, counterparty credit exposure analysis, and pricing credit derivatives. The analytical tractability of constant intensity makes it the starting point for more sophisticated reduced-form models.

---

### Jarrow-Turnbull Reduced Form Model

**Equation:**

```
d\lambda(t) = \mu_\lambda(t) dt + \sigma_\lambda(t) dW(t)
```

## Equation Variables
The Jarrow-Turnbull model specifies stochastic dynamics for default intensity in a reduced-form framework.

- **$d\lambda(t)$**: Change in default intensity (infinitesimal)
- **$\mu_\lambda(t)$**: Drift term (mean reversion speed × long-term level)
- **$\sigma_\lambda(t)$**: Volatility of intensity (diffusion coefficient)
- **$dW(t)$**: Brownian motion increment (Wiener process)
- **$dt$**: Infinitesimal time increment

## Interpretation
The SDE specifies how intensity evolves: the drift $\mu_\lambda(t)$ determines the expected path (often mean-reverting toward a long-term level), while $\sigma_\lambda(t) dW(t)$ adds random variation. This framework captures the observation that credit spreads vary even without default events, reflecting changing market risk premiums and economic conditions. The diffusion term makes intensity uncertain—future credit conditions are not perfectly predictable. This contrasts with deterministic intensity models and enables more realistic credit derivative pricing.

## Assumptions
- Intensity follows a diffusion process (continuous paths)
- Brownian motion is adapted to the filtration
- Parameters are deterministic or deterministic functions of time
- Market prices of risk are incorporated in drift modification
- No jumps (extendable to jump-diffusions for rare events)
- Affine class for analytical tractability

## Practical Use
Jarrow-Turnbull dynamics are used in CVA modeling (stochastic intensity captures credit spread volatility), credit derivative pricing (affine solutions available), and multi-curve frameworks (joint interest rate and credit modeling). The affine class (where drift and volatility are affine in $\lambda$) provides analytical solutions for survival probabilities and CDS pricing. Extensions include: Cox-Ingersoll-Ross intensity (ensures non-negativity), jump-diffusions, and forward rate credit models. The framework bridges reduced-form models with interest rate modeling traditions.

---

### Loss Given Default

**Equation:**

```
LGD = 1 - Recovery Rate
```

## Equation Variables
Loss Given Default is the complement of Recovery Rate, representing the proportion of exposure lost in default.

- **$LGD$**: Loss Given Default (proportion of exposure lost)
- **$1$**: Total exposure (100%)
- **$Recovery Rate$**: Proportion of exposure recovered after default

## Interpretation
LGD is the key determinant of loss severity in credit portfolios. A 60% LGD means we recover only 40% of our exposure when default occurs. LGD is more volatile than recovery rates suggest because it captures all costs of default: legal fees, workout costs, administrative expenses, and time value of money during the recovery period. LGD varies by seniority (senior secured recovers more than senior unsecured), collateral coverage, industry, economic cycle, and legal jurisdiction. Downturn LGD (experienced in stressed conditions) is higher than average LGD.

## Assumptions
- Recovery rate is observable and estimable from historical data
- LGD is independent of PD (usually a simplifying assumption)
- Recovery occurs at a single point in time (simplified)
- No additional costs beyond the recovery calculation
- Sovereign versus corporate LGDs follow similar principles
- Recovery process is stationary over time

## Practical Use
LGD is a critical input to EL, regulatory capital, and pricing. Basel II/III use supervisory LGD values (45% for senior unsecured, 75% for subordinated). Internal models estimate LGD from historical recovery data, adjusting for collateral and seniority. Downturn LGD (stressed conditions) is required for regulatory capital. Recovery trading (buying defaulted bonds at deep discounts) is a niche credit strategy. LGD volatility is increasingly modeled stochastically in advanced credit risk frameworks.

---

### Merton Distance to Default

**Equation:**

```
DD = \frac{\ln(V/K) + (\mu - \sigma_v^2/2)T}{\sigma_v \sqrt{T}}
```

## Equation Variables
The Merton Distance to Default measures how many standard deviations the firm's asset value is from the default barrier.

- **$DD$**: Distance to Default, number of standard deviations to the default barrier
- **$V$**: Current firm value (market value of assets)
- **$K$**: Default barrier, typically total debt or strike price
- **$\mu$**: Expected return on assets (drift of asset value process)
- **$\sigma_v$**: Volatility of firm value (asset volatility)
- **$T$**: Time horizon, typically one year
- **$\ln$**: Natural logarithm
- **$\sqrt{T}$**: Square root of time (volatility scales with square root of horizon)

## Interpretation
Distance to Default is intuitive: it measures safety in terms of asset volatility. A $DD = 2$ means firm assets are 2 standard deviations from the default barrier, implying roughly 2.5% annual default probability under normality assumptions. Higher leverage (lower $V/K$) reduces DD. Higher volatility increases the denominator (reducing DD) and the negative drift term $\sigma_v^2/2$ (also reducing DD through volatility drag). The model views equity as a call option on the firm's assets, with default occurring when asset value falls below the debt barrier.

## Assumptions
- Firm value follows geometric Brownian motion: $dV = \mu V dt + \sigma_v V dW$
- Volatility $\sigma_v$ is constant over the horizon
- No dividends or coupon payments during the period
- Default is instantaneous when $V \le K$
- Capital structure is simple (equity and zero-coupon debt)
- Markets are efficient and complete
- Risk-neutral pricing applies for derivative valuation

## Practical Use
Distance to Default is used by Moody's Analytics (KMV model) and widely in credit portfolio management. The DD is converted to default probabilities using the standard normal distribution: $PD = N(-DD)$. Key advantages: market-implied (uses equity prices), forward-looking, and sensitive to volatility changes. Limitations include requiring solving for $V$ and $\sigma_v$ from equity prices (non-linear system), assuming lognormal distribution, and oversimplified capital structure. The model systematically underestimates default probability for highly levered firms due to thin tails.

---

### Portfolio Credit Value at Risk

**Equation:**

```
VaR_\alpha = \mu_L + \sigma_L \cdot z_\alpha
```

## Equation Variables
Portfolio Credit VaR estimates the unexpected loss at a specified confidence level using the normal approximation.

- **$VaR_\alpha$**: Value at Risk at confidence level $\alpha$
- **$\mu_L$**: Mean portfolio loss (Expected Loss)
- **$\sigma_L$**: Standard deviation of portfolio loss (Unexpected Loss)
- **$z_\alpha$**: $\alpha$-quantile of the standard normal distribution
- **$\alpha$**: Confidence level (e.g., 99.9% for regulatory capital)

## Interpretation
Credit VaR answers: "What is the maximum loss we expect to exceed only $\alpha\%$ of the time?" For $\alpha = 99.9\%$, we expect to lose more than VaR only 0.1% of the time (approximately once every 1,000 periods). The z-score scales standard deviation to the desired confidence: $z_{99.9\%} \approx 3.09$. Credit VaR is much larger than Expected Loss because credit losses are highly skewed—most periods have low losses, but occasional default clusters create large tails. The normal approximation is a starting point; actual credit loss distributions have fatter tails.

## Assumptions
- Loss distribution is approximately normal (or transformation applied)
- Mean and standard deviation are stable (or estimated for current period)
- Portfolio composition is fixed over the horizon
- Correlations are correctly specified
- Large portfolio approximation (granularity adjustments for small portfolios)
- Systematic factor model captures concentration risk

## Practical Use
Credit VaR is central to Basel capital requirements and internal risk limits. Methods to improve accuracy include: historical simulation (no distribution assumptions), Monte Carlo simulation (granular portfolio modeling), Vasicek/one-factor model (regulatory standard formula), stress testing beyond VaR (Expected Shortfall, scenarios), and granularity adjustments for concentrated portfolios. Credit VaR differs from market risk VaR in having more skewed, fat-tailed distributions and default correlation as a key driver.

---

### Survival Probability Constant Hazard

**Equation:**

```
P_{surv}(t,T) = e^{-\lambda(T-t)}
```

## Equation Variables
The survival probability under constant hazard rate follows the exponential distribution, providing the simplest reduced-form credit model.

- **$P_{surv}(t,T)$**: Survival probability from time $t$ to time $T$, the probability of no default occurring
- **$\lambda$**: Constant hazard rate (annualized), representing the instantaneous conditional default rate
- **$T-t$**: Time horizon in years, the duration of the survival period
- **$e$**: Base of natural logarithm, approximately 2.71828
- **Exponent**: Negative of hazard rate times time horizon

## Interpretation
The exponential survival function has the memoryless property—default probability depends only on the remaining time horizon, not on how long the reference entity has already survived. This is both a mathematical convenience and a limitation. The survival probability decreases monotonically with time, with the rate of decrease determined by $\lambda$. At $t=0$, $P_{surv}(0,T) = e^{-\lambda T}$, and as $T \to \infty$, survival approaches zero. The parameter $\lambda$ directly gives the expected time to default as $1/\lambda$.

## Assumptions
- Constant hazard rate $\lambda$ over the entire time horizon
- Memoryless default time distribution (exponential)
- No deterministic or stochastic intensity variations
- Infinite horizon survival probability approaches zero
- No jumps or regime changes in credit quality
- Default occurs as a Poisson process with rate $\lambda$

## Practical Use
Constant hazard models are used for initial approximations, quick calculations, and pedagogical purposes. They are embedded in many analytical formulas for CVA and CDS pricing. When calibrated to a single-point CDS spread using the credit triangle, the constant hazard provides a baseline for more sophisticated time-varying intensity models. The analytical simplicity makes it useful for teaching credit risk concepts, rapid prototyping, and benchmarking more complex models. It serves as the foundation before extending to affine intensity models with term structure.

---

### Unexpected Loss

**Equation:**

```
UL = \sqrt{PD(1-PD)LGD^2EAD^2 + PD \cdot LGD^2 \cdot EAD^2 \cdot \sigma_{PD}^2}
```

## Equation Variables
Unexpected Loss measures the volatility or dispersion of potential losses around Expected Loss.

- **$UL$**: Unexpected Loss (standard deviation of loss distribution)
- **$PD$**: Probability of Default
- **$LGD$**: Loss Given Default
- **$EAD$**: Exposure at Default
- **$\sigma_{PD}$**: Volatility of PD (standard deviation of default probability)
- **$(1-PD)$**: Probability of survival
- **$\sqrt{\cdot}$**: Square root of the variance expression

## Interpretation
Expected Loss is the mean; Unexpected Loss is the standard deviation. A loan with $EL = 1\%$ and $UL = 2\%$ has high uncertainty—actual losses could range from $-3\%$ to $+5\%$ with significant probability. The first term in the bracket captures default timing uncertainty (binomial variance), while the second captures PD uncertainty (cyclical and model risk). The square root combines these independent sources of variance. UL is critical for capital adequacy because it captures the risk that actual losses will deviate from expectations.

## Assumptions
- PD uncertainty is independent of default timing
- LGD and EAD are constant (no variance in these components modeled)
- PD volatility is estimated externally (from ratings migrations or models)
- Loss distribution is approximately normal for UL calculation
- Single-factor or additivity assumptions for portfolio aggregation
- Independence between systematic and idiosyncratic risk components

## Practical Use
Unexpected Loss drives economic capital requirements. Banks hold capital against UL, not EL—regulatory capital formulas (Basel IRB) incorporate UL through risk weights. Portfolio UL is typically less than sum of individual ULs due to diversification benefits. Credit portfolio models (CreditMetrics, PortfolioManager, CreditRisk+) quantify portfolio UL by incorporating default correlations. UL estimates are sensitive to PD volatility assumptions, which can vary significantly across economic cycles and portfolios.

---

### Wrong-Way CVA

**Equation:**

```
CVA_{WW} = CVA \times \rho_{C,EE}
```

## Equation Variables
Wrong-Way CVA adjusts the base CVA for the risk that exposure increases when counterparty credit deteriorates.

- **$CVA_{WW}$**: Wrong-Way CVA (adjusted for dependent default)
- **$CVA$**: Base CVA assuming independence between exposure and default
- **$\rho_{C,EE}$**: Correlation between counterparty credit and exposure
- **$\rho \in [-1, 1]$**: Correlation coefficient

## Interpretation
When $\rho > 0$, default is more likely when we are most exposed, increasing CVA. When $\rho < 0$, default is less likely when exposed, decreasing CVA. This correlation adjustment captures the empirical observation that some counterparties' creditworthiness is linked to our exposure. For example, a derivative counterparty whose credit spreads widen when the underlying market moves against us. A correlation of 0.3 (moderately positive) increases CVA by 30%. A correlation of -0.2 (mildly negative) decreases CVA by 20%.

## Assumptions
- Correlation is constant or predictable over time
- Linear relationship between credit and exposure
- Joint distribution is bivariate normal or similar
- No regime-switching or extreme dependence changes
- Sufficient data to estimate correlation reliably
- Stationary relationship between credit and market factors

## Practical Use
Wrong-Way CVA is a regulatory requirement for sophisticated banks (Basel CVA charge). Methods include: joint simulation of market and credit factors, sensitivity analysis (stress correlation scenarios), credit exposure mapping (link market variables to credit spreads), copula-based joint default-exposure modeling, and historical backtesting of correlation estimates. CVA desks hedge wrong-way risk through diversification, CDS positions, and collateral agreements. Model risk is significant—correlation estimates are often uncertain.

---

## Portfolio Theory and CAPM

Portfolio Theory covers the mathematics of optimal portfolio construction and asset pricing. This includes mean-variance optimization, the Capital Asset Pricing Model, and related performance and risk measures.

### Subcategories
- **Mean-Variance Optimization**: Portfolio variance and efficient frontier
- **CAPM**: Beta, alpha, and the Security Market Line
- **Performance Ratios**: Sharpe, Information, Treynor ratios
- **Risk Budgeting**: Risk parity and factor models

### Appraisal Ratio

**Equation:**

```
\text{Appraisal} = \frac{\alpha}{\omega}
```

## Equation Variables
The Appraisal ratio measures risk-adjusted alpha per unit of residual (idiosyncratic) risk, providing a measure of security selection skill that complements the Treynor ratio's focus on systematic risk.

- **$\text{Appraisal}$**: The Appraisal ratio, representing alpha (risk-adjusted outperformance) per unit of residual risk. Higher values indicate better security selection ability.
- **$\alpha$**: Jensen's alpha, representing the portion of return not explained by systematic risk exposure. This is the "true" active return after adjusting for market risk.
- **$\omega$**: The residual risk (sometimes denoted $\sigma_\varepsilon$), representing the standard deviation of the error term in the CAPM regression. This measures idiosyncratic or diversifiable risk.

## Interpretation
The Appraisal ratio answers: "How much risk-adjusted excess return does this portfolio generate per unit of idiosyncratic risk undertaken?" Unlike the Treynor ratio which divides by beta (systematic risk), the Appraisal ratio divides by residual risk, making it sensitive to security selection decisions that affect idiosyncratic rather than systematic risk. A higher Appraisal ratio indicates the portfolio's alpha comes from good stock selection rather than exposure to systematic risk factors. This metric is particularly useful for evaluating concentrated portfolios, equity managers, or situations where idiosyncratic risk is significant and investors care about both the level and efficiency of active returns.

## Assumptions
- The CAPM regression model is correctly specified with no omitted risk factors.
- Residuals are homoskedastic and serially uncorrelated.
- The alpha estimate is statistically significant and not simply noise.

## Practical Use
The Appraisal ratio has specialized applications: concentrated portfolio evaluation assesses security selection skill for portfolios with high idiosyncratic risk, performance attribution separates stock selection from market allocation effects, manager style analysis evaluates whether performance comes from selection or market exposure, and backtesting validates whether historical alpha persists. While less commonly used than Sharpe or Information ratios, the Appraisal ratio provides valuable insight for portfolios where residual risk is material.

---

### Beta Definition

**Equation:**

```
\beta_i = \frac{\text{Cov}(R_i, R_M)}{\text{Var}(R_M)} = \frac{\sigma_{iM}}{\sigma_M^2} = \rho_{iM} \frac{\sigma_i}{\sigma_M}
```

## Equation Variables
Beta measures the sensitivity of an asset's returns to market returns, quantifying the asset's systematic risk exposure. This regression-based measure is fundamental to CAPM and forms the basis for risk-adjusted performance evaluation.

- **$\beta_i$**: The beta of asset $i$, a dimensionless number representing the expected change in asset returns for a 1% change in market returns. Beta is unit-free because it is a ratio of covariances.
- **$\text{Cov}(R_i, R_M)$**: The covariance between asset $i$ returns and market returns, measuring their co-movement regardless of individual volatilities.
- **$\text{Var}(R_M)$**: The variance of market returns, representing total market risk that cannot be diversified away.
- **$\sigma_{iM}$**: The covariance between asset $i$ and the market, sometimes denoted $\text{Cov}(R_i, R_M)$.
- **$\sigma_M^2$**: The variance of market returns, which normalizes the covariance to produce a sensitivity measure.
- **$\rho_{iM}$**: The correlation coefficient between asset $i$ and the market, bounded between -1 and +1.
- **$\sigma_i$**: The standard deviation of asset $i$ returns, measuring individual asset volatility.
- **$\sigma_M$**: The standard deviation of market returns, representing market-wide volatility.

## Interpretation
Beta measures how much systematic risk an asset contributes to a diversified portfolio. A beta of 1 indicates the asset moves with the market (same systematic risk), while beta of 1.5 means the asset amplifies market movements (50% more sensitive). Beta is calculated as the slope coefficient in the regression $R_i - r_f = \alpha_i + \beta_i (R_M - r_f) + \varepsilon_i$, where $\beta_i = \frac{\text{Cov}(R_i - r_f, R_M - r_f)}{\text{Var}(R_M - r_f)}$. This regression framework also provides the residual variance (idiosyncratic risk) that cannot be explained by market movements. Beta is not fixed over time; it tends to regress toward 1 over long horizons and varies with business cycle phases, leverage changes, and operational dynamics.

## Assumptions
- The market proxy used is a true representation of the market portfolio, not a limited subset that could bias beta estimates.
- The regression relationship is linear and stable over the estimation period.
- Returns are measured over consistent intervals (typically daily or monthly) and annualized appropriately.

## Practical Use
Beta has numerous practical applications: portfolio construction uses beta to target desired market exposure, risk management uses beta to estimate portfolio sensitivity to market movements, performance evaluation adjusts returns for systematic risk exposure, capital budgeting uses beta to estimate discount rates for projects, and cost of equity calculation applies beta in CAPM to determine required returns. Betas are typically estimated from historical data using rolling windows (2-5 years) and adjusted for reliability based on estimation error and residual volatility.

---

### CAPM Expected Return

**Equation:**

```
E[R_i] = r_f + \beta_i (E[R_M] - r_f)
```

## Equation Variables
The Capital Asset Pricing Model (CAPM) provides the theoretical expected return for any asset based on its systematic risk as measured by beta. This single-factor model revolutionized asset pricing by showing that only systematic (non-diversifiable) risk is priced in equilibrium.

- **$E[R_i]$**: The expected return required by investors for holding asset $i$, which should compensate for the time value of money (risk-free rate) and the asset's systematic risk contribution.
- **$r_f$**: The risk-free rate, representing the return on a default-free investment that serves as the baseline compensation for delaying consumption.
- **$\beta_i$**: The beta of asset $i$, measuring the sensitivity of the asset's returns to market returns. Beta represents the asset's systematic risk that cannot be eliminated through diversification.
- **$E[R_M]$**: The expected return of the market portfolio, which represents the aggregate return on all risky assets in the economy weighted by market capitalization.
- **$E[R_M] - r_f$**: The market risk premium (MRP), representing the additional return investors demand for bearing the average level of market risk above the risk-free rate.

## Interpretation
The CAPM equation decomposes any asset's expected return into two components: the risk-free rate $r_f$ compensates for the time value of money, while $\beta_i (E[R_M] - r_f)$ compensates for systematic risk exposure. An asset with $\beta_i = 1$ has the same systematic risk as the market and should earn the market return. An asset with $\beta_i > 1$ (aggressive) earns more than the market risk premium when the market rises but loses more when the market falls. Conversely, $\beta_i < 1$ (defensive) provides lower upside but more downside protection. The CAPM implies that idiosyncratic (firm-specific) risk is not priced because rational investors can diversify it away at no cost, making only beta the relevant risk measure for expected return determination.

## Assumptions
- All investors are mean-variance optimizers with homogeneous expectations regarding expected returns, variances, and correlations.
- Unlimited risk-free borrowing and lending is available at the same rate.
- No taxes, transaction costs, or other market frictions exist.
- All assets are perfectly divisible and marketable.

## Practical Use
The CAPM has extensive practical applications: estimating cost of equity capital for corporate finance decisions, setting discount rates for valuation, evaluating portfolio performance by comparing actual returns to CAPM-predicted returns, explaining cross-sectional variation in average returns across assets, and determining required returns for capital budgeting. Despite empirical challenges, the CAPM remains foundational and extensions like Fama-French three-factor models build upon its core insights about systematic risk pricing.

---

### Capital Market Line

**Equation:**

```
E[R_p] = r_f + \frac{E[R_M] - r_f}{\sigma_M} \cdot \sigma_p
```

## Equation Variables
The Capital Market Line (CML) describes the linear relationship between expected return and standard deviation for all efficient portfolios when a risk-free asset exists. It represents the equilibrium risk-return trade-off available to investors in a complete market with risk-free borrowing and lending.

- **$E[R_p]$**: The expected return of an efficient portfolio lying on the CML, which must be fully invested in the market portfolio and the risk-free asset with no idiosyncratic risk.
- **$r_f$**: The risk-free rate, representing the return available on a default-free, liquidity premium-free investment. This serves as the intercept of the CML and the baseline for all risky investments.
- **$E[R_M]$**: The expected return of the market portfolio, which in equilibrium contains all assets weighted by their market capitalizations.
- **$\sigma_M$**: The standard deviation of the market portfolio returns, representing the systematic risk of the overall market.
- **$\frac{E[R_M] - r_f]}{\sigma_M}$**: The slope of the CML, which equals the market portfolio's Sharpe ratio. This represents the risk premium per unit of total market risk.
- **$\sigma_p$**: The standard deviation of the efficient portfolio, which must be fully diversified with no idiosyncratic risk component.

## Interpretation
The Capital Market Line states that efficient portfolios earn expected returns equal to the risk-free rate plus the market risk premium scaled by the portfolio's total risk. The linear relationship emerges because efficient portfolios differ only in their allocation between the risk-free asset and the market portfolio, both of which have a perfectly linear risk-return trade-off. Portfolios not on the CML contain idiosyncratic risk that is not compensated in equilibrium, as rational investors can eliminate such risk through diversification. The slope of the CML represents the market price of risk—the additional return investors demand for bearing one unit of systematic risk. In equilibrium, the market portfolio itself lies on the CML, and its composition is determined by aggregate investor preferences and wealth.

## Assumptions
- All investors have homogeneous expectations and access to the same investment opportunities, leading to identical efficient frontiers.
- Unlimited borrowing and lending at the risk-free rate is available to all investors, enabling any desired risk level through risk-free asset allocation.
- Markets are in equilibrium, meaning all risky assets are held and their prices reflect fundamental values.

## Practical Use
The CML provides theoretical foundations for practical applications: it defines the benchmark for evaluating portfolio performance (efficient portfolios should lie on the CML), it enables calculation of required returns for any efficient portfolio given its volatility, it demonstrates the benefits of diversification (eliminating idiosyncratic risk), and it validates whether active managers add value by achieving returns above the CML for their risk level. While real markets violate some CML assumptions, the framework remains a cornerstone of modern finance theory.

---

### Efficient Frontier (Two Assets)

**Equation:**

```
\sigma_p^2 = w_1^2 \sigma_1^2 + (1-w_1)^2 \sigma_2^2 + 2 w_1 (1-w_1) \rho_{12} \sigma_1 \sigma_2
```

## Equation Variables
The efficient frontier for two assets traces all possible portfolio combinations of two risky assets, showing how portfolio variance varies with the weight allocation between them. This two-dimensional case provides intuitive insights into diversification that extend to multi-asset portfolios.

- **$\sigma_p^2$**: The variance of the two-asset portfolio return, which varies from the variance of asset 1 (when $w_1 = 1$) to the variance of asset 2 (when $w_1 = 0$).
- **$w_1$**: The weight allocated to asset 1, ranging from 0 to 1 for long-only portfolios, and extending beyond these bounds for portfolios allowing short sales.
- **$\sigma_1^2$**: The variance (squared volatility) of asset 1 returns, representing the individual risk contribution when the portfolio is fully invested in asset 1.
- **$\sigma_2^2$**: The variance of asset 2 returns, analogous to asset 1's variance for the fully invested-in-asset-2 case.
- **$\rho_{12}$**: The correlation coefficient between assets 1 and 2, ranging from -1 to +1. This parameter critically determines the shape and minimum achievable variance of the portfolio.
- **$\sigma_1$**: The standard deviation (volatility) of asset 1 returns.
- **$\sigma_2$**: The standard deviation (volatility) of asset 2 returns.
- **$w_2 = 1 - w_1$**: The weight allocated to asset 2, determined residually from the budget constraint for fully invested portfolios.

## Interpretation
The two-asset variance formula demonstrates the three components of portfolio risk: individual variance of asset 1 ($w_1^2 \sigma_1^2$), individual variance of asset 2 ($(1-w_1)^2 \sigma_2^2$), and the diversification benefit from correlation ($2w_1(1-w_1)\rho_{12}\sigma_1\sigma_2$). When correlation equals +1, the portfolio variance reduces to the weighted average of variances, eliminating diversification benefits. When correlation equals -1, the two variance terms can perfectly offset, potentially achieving zero portfolio variance at the optimal hedge ratio. For realistic correlations between -1 and +1, the efficient frontier forms a hyperbolic curve connecting the two individual assets, with the minimum variance point occurring at $w_{1,MVP} = \frac{\sigma_2^2 - \rho_{12}\sigma_1\sigma_2}{\sigma_1^2 + \sigma_2^2 - 2\rho_{12}\sigma_1\sigma_2}$.

## Assumptions
- Assets are held over the same time horizon, typically one year for standard variance calculations.
- The correlation coefficient is constant over the investment horizon and accurately estimated from historical data.
- Short selling constraints (if any) are explicitly accounted for by limiting $w_1$ to [0,1] bounds.

## Practical Use
The two-asset efficient frontier provides fundamental intuition for portfolio construction: it demonstrates why diversification works (correlation < 1), shows how portfolio risk depends on both weights and correlations, identifies the minimum variance allocation, and reveals how expected returns shift the efficient frontier. This framework extends to multi-asset portfolios where the efficient frontier becomes a curve in risk-return space, and optimal portfolios lie along this curve depending on investor risk preferences.

---

### Jensen's Alpha

**Equation:**

```
\alpha_i = E[R_i] - \left[r_f + \beta_i (E[R_M] - r_f)\right]
```

## Equation Variables
Jensen's alpha measures the risk-adjusted excess return of an asset or portfolio relative to its CAPM-predicted return. This metric separates skill-based returns from those attributable to systematic risk exposure, providing a fundamental measure of portfolio manager performance.

- **$\alpha_i$**: Jensen's alpha, representing the portion of return not explained by systematic risk exposure. Positive alpha indicates outperformance relative to the risk-adjusted benchmark.
- **$E[R_i]$**: The expected return of asset $i$, typically measured as the realized average return over a performance evaluation period.
- **$r_f$**: The risk-free rate applicable during the evaluation period, representing the baseline return available without bearing any risk.
- **$\beta_i$**: The beta of asset $i$, measuring its systematic risk exposure to the market portfolio.
- **$E[R_M]$**: The expected return of the market portfolio, which along with $r_f$ determines the market risk premium.
- **$E[R_M] - r_f$**: The market risk premium, representing the compensation investors require for bearing systematic market risk.

## Interpretation
Jensen's alpha answers the question: "Did this asset/portfolio earn more than it should have given its systematic risk exposure?" The CAPM-predicted return $r_f + \beta_i (E[R_M] - r_f)$ represents the return required to compensate for the asset's market risk. Any excess return above this level ($\alpha_i > 0$) indicates value added through security selection, market timing, or other active management skills. Conversely, negative alpha indicates underperformance relative to the risk-adjusted benchmark. In the context of the regression $R_i - r_f = \alpha_i + \beta_i (R_M - r_f) + \varepsilon_i$, alpha is the intercept term, representing the average return when the market excess return is zero. Alpha is often called the "true" return because it strips out the systematic risk component.

## Assumptions
- The market portfolio proxy used in beta estimation is appropriate and sufficiently diversified.
- The CAPM is the correct pricing model, implying no other risk factors are priced.
- Returns are measured over sufficiently long horizons to distinguish skill from luck.

## Practical Use
Jensen's alpha is widely used in performance evaluation: mutual fund performance attribution compares fund alphas to assess manager skill, portfolio performance measurement evaluates whether active strategies generate positive risk-adjusted returns, benchmark selection validates whether funds are appropriately compared to their beta-matched benchmarks, and backtesting of trading strategies assesses risk-adjusted profitability. While alpha is intuitive, critics note its sensitivity to the market proxy and the possibility that apparent alpha may simply reflect exposure to omitted risk factors (as in Fama-French models).

---

### Portfolio Expected Shortfall

**Equation:**

```
\text{ES}_p = \mathbf{w}' \text{ES}
```

## Equation Variables
Expected Shortfall (ES), also known as Conditional VaR or Average VaR, measures the expected loss given that the loss exceeds the VaR threshold. It addresses VaR's limitation of ignoring tail losses beyond the quantile threshold.

- **$\text{ES}_p$**: The Expected Shortfall of the portfolio, representing the average loss in the worst $\alpha$% of scenarios. This is the expected value of losses exceeding VaR.
- **$\mathbf{w}$**: The vector of portfolio weights across assets or risk factors.
- **$\text{ES}$**: The vector of individual component Expected Shortfalls, each representing tail risk contribution.
- **$\alpha$**: The confidence level (typically 95% or 97.5%), determining the tail portion over which losses are averaged.
- **$\text{VaR}_{\alpha}$**: The Value at Risk at level $\alpha$, representing the loss threshold.

## Interpretation
Expected Shortfall answers: "If I experience a loss worse than VaR, what is my expected loss?" Unlike VaR which gives a single threshold, ES provides the average loss in the tail, making it more sensitive to extreme events. For normally distributed returns, ES is greater than VaR by a factor that depends on the distribution: $\text{ES}_{\alpha} = \sigma_p \cdot \frac{\phi(z_\alpha)}{1-\alpha}$ where $z_\alpha$ is the standard normal quantile. ES is a coherent risk measure, satisfying subadditivity (portfolio risk is less than or equal to the sum of component risks), convexity, and other desirable properties that VaR lacks. This mathematical coherence makes ES preferable for portfolio optimization and regulatory capital.

## Assumptions
- The loss distribution has sufficient historical data to estimate tail behavior reliably.
- The aggregation formula holds exactly for elliptical distributions (normal, t-distribution) and approximately for others.
- Extreme losses beyond the historical record are captured through modeling (e.g., EVT).

## Practical Use
Expected Shortfall has growing applications: it is being adopted as the regulatory market risk measure (FRTB), it improves portfolio optimization by being convex, it provides better incentives than VaR by penalizing tail risk, it is used for risk budgeting in the tail, and it informs stress testing by quantifying average losses in extreme scenarios. Despite computational complexity for non-linear portfolios, ES's superior properties make it increasingly preferred over VaR for sophisticated risk management applications.

---

### Portfolio Value at Risk

**Equation:**

```
\text{VaR}_p = \mathbf{w}' \text{VaR}
```

## Equation Variables
Value at Risk (VaR) measures the maximum loss not exceeded with a given confidence level over a specified time horizon. For linear portfolios, portfolio VaR can be computed as the weighted sum of individual asset VaRs.

- **$\text{VaR}_p$**: The Value at Risk of the portfolio at the specified confidence level, representing the loss threshold that is exceeded with probability $1-\alpha$.
- **$\mathbf{w}$**: The vector of portfolio weights, representing the allocation across assets or risk factors.
- **$\text{VaR}$**: The vector of individual asset or factor VaRs, each representing the standalone risk of that component.
- **$\alpha$**: The confidence level (typically 95%, 99%, or 99.9%), determining the quantile of the loss distribution.
- **$n$**: The number of components (assets or risk factors) in the portfolio.

## Interpretation
Portfolio VaR answers: "What is the maximum loss I can expect with X% confidence over the next period?" For a 95% VaR of $1M, the portfolio loses more than $1M only 5% of the time. The linear aggregation formula holds exactly for normally distributed returns and approximately for other elliptical distributions. For non-linear portfolios (options, convex securities), VaR aggregation requires full portfolio revaluation or Monte Carlo simulation. VaR became a regulatory standard following the Basel accords and remains the most widely used risk measure, though it has been criticized for not being coherent (failing subadditivity) and for incentivizing risk concentration just below the VaR threshold.

## Assumptions
- Returns are jointly normally distributed, or at least elliptical, for the linear aggregation formula to hold exactly.
- VaR is estimated at a single quantile; tail losses beyond VaR are not captured.
- Volatilities and correlations are stable over the time horizon matching the VaR measurement period.

## Practical Use
VaR has ubiquitous applications: it is the regulatory standard for bank capital requirements (Basel VaR), it is used for market risk limits and position sizing, it supports risk reporting to senior management and boards, it enables backtesting of risk model performance, and it informs trading decisions by quantifying potential losses. Despite criticisms, VaR remains the dominant risk measure in financial institutions and will likely continue to be used as a complement to more coherent measures like Expected Shortfall.

---

### Tracking Error

**Equation:**

```
\text{TE} = \sigma(R_p - R_b) = \sqrt{\text{Var}(R_p - R_b)}
```

## Equation Variables
Tracking error measures the volatility of a portfolio's returns relative to its benchmark, quantifying the uncertainty or variability in active returns. This metric is essential for understanding how much a portfolio deviates from its benchmark and the consistency of that deviation.

- **$\text{TE}$**: The tracking error, representing the standard deviation of the difference between portfolio and benchmark returns. It is expressed in the same units as returns (percentage points).
- **$R_p$**: The return of the portfolio over a specified period (typically daily or monthly).
- **$R_b$**: The return of the benchmark index over the same period.
- **$R_p - R_b$**: The active return or tracking difference for a single period.
- **$\sigma(R_p - R_b)$**: The standard deviation (square root of variance) of active returns over the measurement period.
- **$\text{Var}(R_p - R_b)$**: The variance of active returns, measuring the squared dispersion around the mean active return.

## Interpretation
Tracking error answers: "How much does this portfolio's performance vary from its benchmark?" A tracking error of 2% means the portfolio typically deviates from the benchmark by about 2 percentage points in either direction. Low tracking error (near zero) indicates a passive index hugger, while high tracking error signals active management with significant deviation from the benchmark. The tracking error can be decomposed into two sources: portfolio weights different from the benchmark (intentional active bets) and returns different from expectations (unexpected performance). Unlike total risk (standard deviation of absolute returns), tracking error measures only benchmark-relative risk, making it ideal for evaluating active managers who are explicitly trying to outperform a benchmark.

## Assumptions
- The benchmark is investable and appropriate for the portfolio's strategy and constraints.
- Returns are measured over consistent intervals with proper handling of cash flows and dividends.
- The tracking error estimate uses sufficient historical data (typically 2-3 years of monthly observations) for statistical reliability.

## Practical Use
Tracking error has numerous applications: risk budgeting allocates active risk across strategies or managers, performance monitoring detects style drift or unintended deviations, active share calculation uses tracking error components, capacity analysis estimates how much active risk is sustainable, and regulatory compliance monitors risk limits for benchmark-relative strategies. Different strategies target different tracking error levels: enhanced index strategies typically target TE of 1-3%, active equity strategies may target TE of 3-8%, while high-conviction strategies can exceed 10%.

---

## Stochastic Processes and Martingales

Stochastic Processes provides the mathematical foundation for modeling asset price dynamics and derivative pricing. This includes Itô calculus, change of measure, and the martingale approach to pricing.

### Subcategories
- **Diffusion Processes**: GBM, OU, CIR models
- **Stochastic Calculus**: Itô's Lemma and stochastic integrals
- **Change of Measure**: Girsanov theorem and risk-neutral pricing
- **Feynman-Kac**: Connection between SDEs and PDEs

### Cox-Ingersoll-Ross Model

**Equation:**

```
dr_t = \kappa(\theta - r_t) dt + \sigma \sqrt{r_t} dW_t
```

## Equation Variables
The Cox-Ingersoll-Ross (CIR) model extends the Vasicek framework by making volatility proportional to the square root of the rate, ensuring positivity and providing realistic volatility behavior.

- **$r_t$**: Short rate at time $t$
- **$\kappa$ (kappa)**: Speed of mean reversion ($\kappa > 0$)
- **$\theta$ (theta)**: Long-term mean level
- **$\sigma$**: Volatility coefficient
- **$\sqrt{r_t}$**: Square root of the rate (volatility)
- **$dW_t$**: Brownian increment

## Interpretation
The CIR model addresses the key limitation of Vasicek: the ability to generate negative rates. The volatility term $\sigma \sqrt{r_t} dW_t$ shrinks as $r_t \to 0$, preventing the rate from crossing below zero. The process stays strictly positive (with probability 1) when the Feller condition $2\kappa\theta \geq \sigma^2$ holds.

When rates are low, volatility is low; when rates are high, volatility is high. This captures the empirical observation that volatile periods correspond to higher interest rate levels. The drift $\kappa(\theta - r_t)$ is identical to Vasicek, pulling rates toward the long-term mean $\theta$.

## Assumptions
- Mean reversion speed $\kappa > 0$
- Long-term mean $\theta > 0$
- Volatility $\sigma > 0$
- Feller condition: $2\kappa\theta \geq \sigma^2$
- Risk-neutral measure for pricing
- Parameters deterministic functions of time

## Practical Use
The CIR model is an affine term structure model, meaning zero-coupon bond prices have the form $P(t, T) = A(t, T) e^{-B(t, T) r_t}$. This enables analytical pricing of interest rate derivatives including caps, floors, and swaptions. The model also serves as the foundation for stochastic intensity modeling in credit risk (CIR intensity for default times). The non-central chi-squared distribution of $r_t$ provides tractable density for computing barrier option prices and default probabilities.

---

### GBM Solution Log-Normal

**Equation:**

```
S_T = S_0 \exp\left(\left(\mu - \frac{\sigma^2}{2}\right)T + \sigma W_T\right)
```

## Equation Variables
The closed-form solution to the Geometric Brownian Motion SDE reveals the log-normal distribution of asset prices and provides the foundation for option pricing and Monte Carlo simulation.

- **$S_T$**: Terminal asset price at time $T$
- **$S_0$**: Initial asset price at time 0
- **$\exp$**: Exponential function $e^x$
- **$\mu$**: Drift coefficient (expected return under physical measure)
- **$\sigma$**: Volatility coefficient
- **$T$**: Time to maturity
- **$W_T$**: Brownian motion at time $T$, with $W_T \sim N(0, T)$

## Interpretation
The solution demonstrates that asset prices follow a log-normal distribution under GBM dynamics. The drift term is adjusted by subtracting $\sigma^2/2$ to account for Itô's lemma: since $E[\exp(\sigma W_T)] = \exp(0.5\sigma^2 T)$, we must subtract $0.5\sigma^2 T$ from the exponent to achieve the correct drift $\mu T$ under the physical measure.

The terminal distribution is $S_T \sim \text{LogNormal}(\ln S_0 + (\mu - \sigma^2/2)T, \sigma^2 T)$. The expected value is $E[S_T] = S_0 \exp(\mu T)$, and the variance is $\text{Var}(S_T) = S_0^2 \exp(2\mu T + \sigma^2 T)(\exp(\sigma^2 T) - 1)$.

## Assumptions
- Identical to GBM assumptions
- Brownian motion is Gaussian with mean zero
- The stochastic integral is well-defined (Itô integral)
- Parameters are constant over the horizon
- No jumps or discontinuities in the price process

## Practical Use
This closed-form solution enables direct simulation of terminal asset prices for Monte Carlo pricing without discretizing the SDE. It underlies the derivation of the Black-Scholes formula, provides the distribution needed for computing expected payoffs, and serves as the baseline for understanding how volatility and drift affect the distribution of terminal prices. The solution also enables analytical computation of Greeks and model risk metrics.

---

### Geometric Brownian Motion

**Equation:**

```
dS_t = \mu S_t dt + \sigma S_t dW_t
```

## Equation Variables
The Geometric Brownian Motion (GBM) SDE describes the canonical model for asset price dynamics in continuous time. This foundational equation appears throughout derivatives pricing, risk management, and quantitative finance.

- **$S_t$**: Asset price at time $t$, strictly positive for $S_0 > 0$
- **$\mu$**: Drift coefficient representing the expected instantaneous return
- **$\sigma$**: Volatility coefficient representing the standard deviation of returns
- **$dW_t$**: Increment of standard Brownian motion (Wiener process)
- **$dt$**: Infinitesimal time interval
- **$t$**: Time variable

## Interpretation
The GBM equation states that the instantaneous return $dS_t/S_t$ follows a normal distribution with mean $\mu dt$ and variance $\sigma^2 dt$. This implies that log-returns are normally distributed: $\ln(S_T/S_t) \sim N((\mu - \sigma^2/2)(T-t), \sigma^2(T-t))$. The multiplicative nature of the equation ensures that asset prices remain positive, which is economically necessary for stock prices, indices, and other non-dividend-paying assets.

The model captures the essential empirical observation that percentage changes in asset prices over short horizons are approximately normally distributed. While this assumption is violated in practice for longer horizons (fat tails, skewness), GBM remains the baseline model for derivatives pricing due to its analytical tractability.

## Assumptions
- The market is efficient and arbitrage-free
- Asset returns follow a log-normal distribution
- Volatility $\sigma$ is constant over time
- The drift $\mu$ is constant
- Sample paths are continuous but nowhere differentiable
- Brownian motion has independent, stationary increments
- Quadratic variation equals time: $[W]_t = t$

## Practical Use
GBM serves as the foundation for the Black-Scholes option pricing formula, the most widely used derivatives pricing framework in financial markets. It enables analytical solutions for European options, provides benchmarks for model calibration, and serves as the baseline for Monte Carlo simulation of asset price paths. The log-normal distribution implies that expected returns under the physical measure differ from those under the risk-neutral measure by the convexity adjustment $\sigma^2/2$.

---

### Girsanov Theorem Drift Change

**Equation:**

```
dW_t^\mathbb{Q} = dW_t^\mathbb{P} + \theta dt
```

## Equation Variables
Girsanov's Theorem provides the mechanism for transforming Brownian motion under a change of measure, showing that Brownian motion remains Brownian motion but with shifted drift.

- **$dW_t^\mathbb{Q}$**: Brownian increment under risk-neutral measure $\mathbb{Q}$
- **$dW_t^\mathbb{P}$**: Brownian increment under physical measure $\mathbb{P}$
- **$\theta$**: Market price of risk (constant for simplicity)
- **$dt$**: Time differential
- **$\mathbb{P}$**: Physical measure
- **$\mathbb{Q}$**: Risk-neutral measure

## Interpretation
Under a change of measure defined by the Radon-Nikodym derivative, a Brownian motion remains a Brownian motion, but its drift changes. Under the new measure $\mathbb{Q}$, the Brownian increment has the form $dW_t^\mathbb{Q} = dW_t^\mathbb{P} + \theta dt$. This means $W_t^\mathbb{Q} = W_t^\mathbb{P} + \int_0^t \theta_s ds$, so the $\mathbb{Q}$-Brownian motion has drift $\theta$ under the $\mathbb{P}$-measure.

For an Itô process $dS_t = \mu dt + \sigma dW_t^\mathbb{P}$, substituting $dW_t^\mathbb{P} = dW_t^\mathbb{Q} - \theta dt$ gives the risk-neutral dynamics $dS_t = (\mu - \sigma\theta) dt + \sigma dW_t^\mathbb{Q}$. The market price of risk $\theta = (\mu - r)/\sigma$ ensures the drift becomes $r$.

## Assumptions
- $Z_t = d\mathbb{Q}/d\mathbb{P}|_t$ is a martingale under $\mathbb{P}$
- Novikov's condition for measure change validity
- $\theta$ is deterministic or adapted
- Brownian motion is the only source of randomness

## Practical Use
Girsanov's Theorem is essential for constructing risk-neutral measures, deriving risk-neutral drift terms, building forward measures for interest rate derivatives, and performing numeraire changes. It provides the theoretical foundation for understanding why all assets earn the risk-free rate under $\mathbb{Q}$ and how market risk is priced through $\theta$.

---

### Heston Stochastic Volatility

**Equation:**

```
dS_t = \mu S_t dt + \sqrt{v_t} S_t dW_1, \quad dv_t = \kappa(\theta - v_t) dt + \xi \sqrt{v_t} dW_2, \quad dW_1 dW_2 = \rho dt
```

## Equation Variables
The Heston model is the most widely used stochastic volatility model, capturing the empirically observed correlation between asset returns and volatility changes (the leverage effect).

- **$S_t$**: Asset price at time $t$
- **$v_t$**: Instantaneous variance (volatility squared)
- **$\mu$**: Drift of the asset price
- **$\sqrt{v_t}$**: Standard deviation of returns
- **$\kappa$**: Mean reversion speed of variance
- **$\theta$**: Long-run mean of variance
- **$\xi$ (xi)**: Volatility of variance (vol-of-vol)
- **$dW_1, dW_2$**: Correlated Brownian motions
- **$\rho$**: Correlation between $W_1$ and $W_2$ ($-1 \leq \rho \leq 0$)

## Interpretation
Heston separates the modeling of price and volatility. The variance $v_t$ follows a CIR process (ensuring positivity), while the asset return $dS_t/S_t$ depends on the current variance through $\sqrt{v_t}$. The correlation $\rho$ captures the leverage effect: when prices fall, volatility typically rises, so $\rho < 0$.

This model explains volatility clustering (high volatility periods persist) and generates the implied volatility smile/skew observed in options markets. The closed-form characteristic function enables efficient Fourier-based option pricing, making the model computationally tractable for calibration.

## Assumptions
- Variance stays positive (Feller condition: $2\kappa\theta \geq \xi^2$)
- Brownian motions are correlated with constant $\rho$
- Parameters satisfy regularity conditions
- Risk-neutral drift for variance under pricing measure
- Variance and price adapted to the same filtration

## Practical Use
Heston is the workhorse model for equity option pricing, particularly for capturing the SPX implied volatility surface. It prices vanilla options via Fourier transform (Carr-Madan, Lewis-Lipton methods), enables smile-consistent exotic option pricing, and provides realistic dynamics for hedging volatility exposure. The model extends to joint SPX-VIX modeling and serves as the foundation for stochastic volatility models in foreign exchange.

---

### Itô's Lemma

**Equation:**

```
df(t, S_t) = \left( \frac{\partial f}{\partial t} + \mu S_t \frac{\partial f}{\partial S} + \frac{1}{2} \sigma^2 S_t^2 \frac{\partial^2 f}{\partial S^2} \right) dt + \sigma S_t \frac{\partial f}{\partial S} dW_t
```

## Equation Variables
Itô's Lemma is the fundamental chain rule of stochastic calculus, enabling the differentiation of functions of stochastic processes and connecting stochastic differential equations to partial differential equations.

- **$f(t, S_t)$**: Twice differentiable function of time and state variable
- **$\partial f / \partial t$**: Partial derivative with respect to time
- **$\partial f / \partial S$**: First partial derivative with respect to state (Delta)
- **$\partial^2 f / \partial S^2$**: Second partial derivative with respect to state (Gamma)
- **$\mu$**: Drift coefficient of the underlying process
- **$\sigma$**: Volatility coefficient of the underlying process
- **$S_t$**: State variable (typically asset price)
- **$dW_t$**: Brownian increment

## Interpretation
Unlike ordinary calculus, stochastic differentials contain an additional second-order term $0.5\sigma^2 S^2 f_{SS}$ due to the non-differentiability of Brownian motion. This term captures the convexity adjustment required when differentiating non-linear functions of noisy processes. Without this term, the Itô integral would not be a martingale, and the fundamental theorem of asset pricing would not hold.

The lemma transforms functions of Itô processes: if $dS_t = \mu_t dt + \sigma_t dW_t$, then for $f(t, S_t)$, we have the stochastic differential shown above. The presence of the $dt$ term in the drift and the $dW_t$ term in the diffusion reflects the structure of the underlying process.

## Assumptions
- $S_t$ follows an Itô process: $dS_t = \mu_t dt + \sigma_t dW_t$
- $f(t, x)$ is $C^1$ in $t$ and $C^2$ in $x$
- $\mu_t$ and $\sigma_t$ satisfy Lipschitz and growth conditions
- The filtration satisfies the usual conditions
- Regularity conditions for Itô's formula applicability

## Practical Use
Itô's Lemma derives the Black-Scholes partial differential equation by requiring a hedged portfolio to be a martingale under the risk-neutral measure. It computes option Greeks (Delta, Gamma) and their dynamics, prices path-dependent options by tracking the evolution of auxiliary variables, and serves as the foundation for developing new pricing models including local volatility, stochastic volatility, and jump-diffusion models. The lemma is the bridge connecting stochastic differential equations to PDE representations via the Feynman-Kac formula.

---

### Martingale Property

**Equation:**

```
\mathbb{E}^{\mathbb{Q}}[V_T \mid \mathcal{F}_t] = V_t
```

## Equation Variables
The martingale property is the mathematical expression of the no-arbitrage principle in continuous time, stating that properly discounted asset prices have zero expected growth under the risk-neutral measure.

- **$\mathbb{E}^{\mathbb{Q}}$**: Expectation under risk-neutral measure $\mathbb{Q}$
- **$V_T$**: Value at terminal time $T$
- **$V_t$**: Value at current time $t$
- **$\mathcal{F}_t$**: Filtration (information up to time $t$)
- **$|$**: Conditional on given information

## Interpretation
The martingale property states that the conditional expectation of the future value, given all available information, equals the current value. This implies that you cannot expect to profit from trading based on available information, which is the mathematical definition of no arbitrage.

For the discounted stock price $S_t / B_t$ (where $B_t = e^{\int_0^t r_s ds}$ is the bank account), this property holds under $\mathbb{Q}$. Similarly, any self-financing portfolio replicating a derivative must be a $\mathbb{Q}$-martingale when discounted. This is the foundation of risk-neutral pricing.

## Assumptions
- $\mathbb{Q}$ is an equivalent martingale measure
- Filtration $\mathcal{F}_t$ represents available market information
- Markets are arbitrage-free (Fundamental Theorem of Asset Pricing)
- Trading strategy is admissible
- Discounting uses the risk-free rate

## Practical Use
The martingale property enables risk-neutral valuation: option prices are expectations of discounted payoffs. It verifies the absence of arbitrage in market models, constructs replicating portfolios for derivatives, provides the theoretical foundation for hedging strategies, and serves as the consistency condition for any valid pricing model. When the martingale property fails, arbitrage opportunities exist.

---

### Mean-Reverting Process Solution

**Equation:**

```
r_t = r_0 e^{-at} + b(1 - e^{-at}) + \sigma e^{-at} \int_0^t e^{as} dW_s
```

## Equation Variables
The closed-form solution to the Ornstein-Uhlenbeck process provides explicit expressions for the mean, variance, and distribution of the mean-reverting process.

- **$r_t$**: Rate at time $t$
- **$r_0$**: Initial rate at time 0
- **$a$**: Mean reversion speed
- **$b$**: Long-term mean level
- **$\sigma$**: Volatility coefficient
- **$e$**: Base of natural logarithm
- **$\int_0^t$**: Stochastic integral from 0 to $t$
- **$dW_s$**: Brownian increment at time $s$

## Interpretation
The solution decomposes $r_t$ into three components: (1) the initial value decaying exponentially as $r_0 e^{-at}$, (2) the long-term mean being pulled in over time as $b(1 - e^{-at})$, and (3) a stochastic integral representing random fluctuations around the deterministic path.

The stochastic integral $\int_0^t e^{as} dW_s$ is Gaussian with mean zero and variance $\frac{\sigma^2}{2a}(e^{2at} - 1)$. Thus $r_t$ is normally distributed with:

$$E[r_t] = r_0 e^{-at} + b(1 - e^{-at})$$
$$\text{Var}[r_t] = \frac{\sigma^2}{2a}(1 - e^{-2at})$$

As $t \to \infty$, the distribution converges to $N(b, \sigma^2/(2a))$, the stationary distribution.

## Assumptions
- Same as OU process assumptions
- Stochastic integral is well-defined (Itô integral)
- Parameters constant for analytical tractability
- Brownian motion increments are Gaussian

## Practical Use
This solution enables efficient Monte Carlo simulation of interest rate paths without Euler discretization. It provides the analytical framework for calibrating the Hull-White model to the initial yield curve, computing bond prices as expectations of discounted payoffs, and understanding the distribution of rates at future dates. The explicit variance formula aids in risk management and scenario analysis.

---

### Ornstein-Uhlenbeck Process

**Equation:**

```
dr_t = a(b - r_t) dt + \sigma dW_t
```

## Equation Variables
The Ornstein-Uhlenbeck (OU) process is the continuous-time analogue of the discrete-time AR(1) process and serves as the foundation for mean-reverting interest rate and volatility modeling.

- **$r_t$**: Short rate (or mean-reverting quantity) at time $t$
- **$a$**: Speed of mean reversion ($a > 0$)
- **$b$**: Long-term mean level (steady-state mean)
- **$\sigma$**: Volatility coefficient
- **$dW_t$**: Brownian motion increment
- **$dt$**: Infinitesimal time interval

## Interpretation
The OU process exhibits mean-reverting behavior: the term $a(b - r_t)$ pulls the process toward the long-term mean $b$ at speed $a$. When $r_t > b$, the drift is negative; when $r_t < b$, the drift is positive. This behavior models short-term interest rates, which tend to revert to some long-run equilibrium level over time.

Unlike Geometric Brownian Motion, the OU process is Gaussian and can take negative values. This is appropriate for modeling short rates that may be near zero or negative in modern interest rate environments. The stationary distribution is normal with mean $b$ and variance $\sigma^2/(2a)$.

## Assumptions
- Mean reversion speed $a > 0$ for stationarity
- Long-term mean $b$ is constant
- Volatility $\sigma > 0$
- Brownian motion has independent increments
- Under the physical measure P for simulation
- Parameters constant or deterministic functions of time

## Practical Use
The OU process forms the basis of the Vasicek interest rate model, a foundational affine term structure model. It enables analytical pricing of zero-coupon bonds and interest rate derivatives. The process also models mean-reverting commodity prices, stochastic volatility in the Hull-White extension, and credit spreads in reduced-form credit models. The Gaussian nature simplifies simulation and calibration.

---

### Radon-Nikodym Derivative

**Equation:**

```
\frac{d\mathbb{Q}}{d\mathbb{P}} = \exp\left(-\int_0^t \theta_s dW_s^\mathbb{P} - \frac{1}{2} \int_0^t \theta_s^2 ds\right)
```

## Equation Variables
The Radon-Nikodym derivative defines the density process for transforming probability measures, enabling the transition from physical (real-world) to risk-neutral pricing measures.

- **$d\mathbb{Q}/d\mathbb{P}$**: Radon-Nikodym derivative (likelihood ratio)
- **$\theta_s$**: Market price of risk (Sharpe ratio)
- **$dW_s^\mathbb{P}$**: Brownian increment under physical measure $\mathbb{P}$
- **$\int_0^t$**: Stochastic integral from 0 to $t$
- **$\exp$**: Exponential ensuring positivity
- **$\mathbb{P}$**: Physical (real-world) probability measure
- **$\mathbb{Q}$**: Risk-neutral probability measure

## Interpretation
The RN derivative $Z_t = d\mathbb{Q}/d\mathbb{P}|_t$ is a martingale under $\mathbb{P}$ that defines how to transform expectations between measures. The exponential form (stochastic exponential or Doléans-Dade exponential) ensures $Z_t > 0$ and $E^\mathbb{P}[Z_t] = 1$, making $\mathbb{Q}$ a valid probability measure.

Novikov's condition $E^\mathbb{P}[\exp(0.5 \int_0^T \theta_s^2 ds)] < \infty$ guarantees that the stochastic exponential is a true martingale. The process transforms the drift of all Itô processes: under $\mathbb{Q}$, the drift changes from $\mu$ to $r$ (risk-free rate).

## Assumptions
- $\theta_s$ is adapted to the filtration
- Novikov's condition holds (or Kazamaki's condition)
- Girsanov's theorem applicability conditions
- $\mathbb{Q}$ and $\mathbb{P}$ are equivalent measures
- Parameters satisfy regularity conditions

## Practical Use
The RN derivative constructs the risk-neutral measure from the physical measure, enabling risk-neutral pricing. It is used in change of numeraire techniques, forward measure construction, volatility derivatives pricing, and multi-factor model calibration. The market price of risk $\theta$ captures the compensation investors require for bearing risk.

---

### Risk-Neutral Pricing Formula

**Equation:**

```
V_t = \mathbb{E}^{\mathbb{Q}}\left[ e^{-\int_t^T r_s ds} V_T \mid \mathcal{F}_t \right]
```

## Equation Variables
The risk-neutral pricing formula is the cornerstone of modern derivatives pricing, expressing option values as discounted expected payoffs under the risk-neutral measure.

- **$V_t$**: Derivative value at time $t$
- **$\mathbb{E}^{\mathbb{Q}}$**: Risk-neutral expectation
- **$e^{-\int_t^T r_s ds}$**: Stochastic discount factor
- **$r_s$**: Short rate at time $s$
- **$V_T$**: Terminal payoff at maturity $T$
- **$\mathcal{F}_t$**: Information up to time $t$
- **$T$**: Maturity date

## Interpretation
Risk-neutral pricing states that the value of any derivative is the conditional expectation of its discounted payoff under the risk-neutral measure. The discount factor $e^{-\int_t^T r_s ds}$ accounts for the time value of money using the risk-free rate, not the asset's actual expected return.

This remarkable result implies that risk preferences (investor risk aversion) are not needed for pricing—they are embedded in the change of measure to $\mathbb{Q}$. The market prices risk through the RN derivative, not through discounting. For European options, $V_T$ is the payoff function (e.g., $(S_T - K)^+$ for calls).

## Assumptions
- $\mathbb{Q}$ is an equivalent martingale measure
- Markets are arbitrage-free
- Complete markets (unique $\mathbb{Q}$) or incomplete (range of prices)
- Short rate $r_s$ is adapted and integrable
- Payoff $V_T$ is $\mathcal{F}_T$-measurable

## Practical Use
This formula derives the Black-Scholes closed form, prices all European-style derivatives, provides the foundation for numerical methods (Monte Carlo, PDE, tree methods), and serves as the consistency condition for model validation. Under stochastic rates, the formula extends to forward measures, simplifying the expectation by changing numeraire.

---

## Volatility Models and Calibration

Volatility Models addresses the estimation and forecasting of asset volatility, including GARCH models, realized volatility measures, and the volatility smile/surface.

### Subcategories
- **GARCH Models**: Conditional variance and persistence
- **Realized Volatility**: High-frequency estimation methods
- **Range-Based Estimators**: Parkinson, Garman-Klass
- **Volatility Surface**: SABR, smile/skew parametrization

### EWMA (RiskMetrics) Conditional Variance

**Equation:**

```
\sigma_t^2 = \lambda \sigma_{t-1}^2 + (1 - \lambda) \epsilon_{t-1}^2
```

## Equation Variables
The Exponentially Weighted Moving Average (EWMA) model is the RiskMetrics approach to volatility estimation. It gives more weight to recent observations while allowing older observations to decay exponentially.

- **$\sigma_t^2$**: Conditional variance estimate at time $t$.
- **$\lambda$**: Decay factor (lambda), typically between 0 and 1; RiskMetrics uses $\lambda = 0.94$.
- **$\sigma_{t-1}^2$**: Previous period's variance estimate.
- **$\epsilon_{t-1}^2$**: Squared residual (return minus mean) at time $t-1$.

## Interpretation
EWMA differs from GARCH in that it has no long-run variance term $\omega$ and no ARCH term $\alpha$ separate from $\beta$. The model can be rewritten as:

$$\sigma_t^2 = (1 - \lambda) \sum_{j=0}^{\infty} \lambda^j \epsilon_{t-1-j}^2$$

This shows that the current variance is a weighted sum of all past squared residuals, with weights decaying geometrically at rate $\lambda$.

The decay factor $\lambda$ controls how quickly old information is forgotten:
- **High $\lambda$ (e.g., 0.99)**: Long memory, slow decay.
- **Low $\lambda$ (e.g., 0.80)**: Short memory, fast decay.

RiskMetrics chose $\lambda = 0.94$ for daily data based on empirical fit to financial time series. The effective half-life of information is $\ln(0.5) / \ln(\lambda)$, approximately 11 days for $\lambda = 0.94$.

## Assumptions
- Returns are serially uncorrelated (or returns minus a constant mean are used).
- The decay factor $\lambda$ is specified or estimated from data.
- The model is used for short-term volatility forecasting.

## Practical Use
EWMA is widely used for:

1. **Risk Management**: Basel framework allows EWMA for VaR calculations.
2. **Correlation Estimation**: The same EWMA framework applies to correlations (RiskMetrics approach).
3. **Computational Efficiency**: Simple recursive update, no numerical optimization required.
4. **Stress Testing**: Easy to compute volatility under different scenarios.
5. **Limitations**: Does not capture asymmetric volatility responses to positive/negative returns (no leverage effect).

---

### Forward Variance Dynamics

**Equation:**

```
d\xi_t = \xi_t \left( \nu_1 dW_t^1 + \nu_2 dW_t^2 \right)
```

## Equation Variables
The forward variance process $\xi_t$ describes the instantaneous variance at future times. The HJM-type dynamics ensure no-arbitrage and provide a flexible framework for volatility modeling.

- **$\xi_t$**: Forward variance at time $t$, defined as $\xi_t = \sigma_t^2$ (instantaneous variance).
- **$\nu_1, \nu_2$**: Volatility loadings determining how forward variance responds to Brownian motions.
- **$dW_t^1, dW_t^2$**: Standard Brownian motions under the risk-neutral measure.
- **$t$**: Time (current time in the dynamics).

## Interpretation
Forward variance is defined as $\xi_t(u) = \mathbb{E}[\sigma_u^2 \mid \mathcal{F}_t]$ for $u \ge t$. The dynamics specify how this expected future variance evolves:

$$d\xi_t(u) = \xi_t(u) \left( \eta_1(u) dW_t^1 + \eta_2(u) dW_t^2 \right)$$

The drift is zero under the risk-neutral measure (martingale property). The structure:

- **$\nu_1$**: Controls the correlation between spot and variance (affects skew).
- **$\nu_2$**: Controls independent variance fluctuations (affects term structure).

This framework subsumes many popular models:
- **Heston**: $\nu_1 = -\rho \sqrt{\xi_t}$, $\nu_2 = \sqrt{1-\rho^2} \sqrt{\xi_t}$.
- **GARCH**: Forward variance is deterministic under the physical measure.
- **SABR**: Forward variance follows a log-normal process.

## Assumptions
- The forward variance curve is well-defined and arbitrage-free.
- Brownian motions are defined under the risk-neutral measure.
- The model is specified in a Markovian framework (typically).
- Volatility loadings are deterministic functions of time.

## Practical Use
Forward variance modeling is fundamental for:

1. **Volatility Derivatives**: Pricing variance swaps, volatility swaps, and options on variance.
2. **Term Structure**: Capturing how vol changes across expiries.
3. **Model Arbitrage**: Ensuring no-arbitrage conditions are satisfied.
4. **Calibration**: Fitting the entire volatility surface consistently.
5. **Research**: Basis for advanced models like the 3/2 model, 4/2 model, and GJR models.

---

### GARCH(1,1) Conditional Variance

**Equation:**

```
\sigma_t^2 = \omega + \alpha \epsilon_{t-1}^2 + \beta \sigma_{t-1}^2
```

## Equation Variables
GARCH(1,1) is the foundational model for capturing time-varying volatility in financial returns. The equation specifies how the conditional variance at time $t$ depends on past observations and past variance.

- **$\sigma_{t}^{2}$**: Conditional variance at time $t$, representing $\mathbb{E}[r_t^2 \mid \mathcal{F}_{t-1}]$, the expected squared return given all available information.
- **$\omega$**: Constant term ($\omega > 0$), representing the long-run variance level or baseline volatility floor.
- **$\alpha$**: ARCH coefficient ($\alpha \ge 0$), measuring the contribution of yesterday's squared shock to today's variance.
- **$\beta$**: GARCH coefficient ($\beta \ge 0$), measuring the persistence of past variance into the current period.
- **$\epsilon_{t-1}^{2}$**: Squared residual (shock) at time $t-1$, calculated as $\epsilon_{t-1} = r_{t-1} - \mu_{t-1}$.

## Interpretation
The GARCH(1,1) model captures the empirical observation that volatility clusters in financial markets—large changes tend to be followed by large changes, and small by small. Today's conditional variance is a weighted average of the long-run level $\omega$, the recent shock magnitude $\alpha \epsilon_{t-1}^2$, and yesterday's variance $\beta \sigma_{t-1}^2$.

The sum $\alpha + \beta$ represents **volatility persistence**. Values close to 1 indicate that shocks have long-lasting effects on volatility (volatility takes a long time to revert to its mean), while lower values imply faster mean reversion. This parameter is critical for risk management and forecasting.

## Assumptions
- Returns $r_t$ are serially uncorrelated when conditioned on $\mathcal{F}_{t-1}$: $\mathbb{E}[r_t \mid \mathcal{F}_{t-1}] = \mu_t$.
- The conditional variance follows the GARCH dynamics specified above.
- The conditional distribution of innovations can be normal, Student's $t$ (for fat tails), or GED.
- Parameters must satisfy $\omega > 0$, $\alpha \ge 0$, $\beta \ge 0$, and $\alpha + \beta < 1$ for stationarity.

## Practical Use
GARCH(1,1) is the workhorse model for volatility forecasting in financial econometrics. It is widely used for:

1. **Risk Management**: Generating volatility forecasts for VaR calculations and expected shortfall.
2. **Option Pricing**: When combined with risk-neutral valuation (e.g., Duan's risk-neutral GARCH).
3. **Portfolio Optimization**: Dynamic volatility estimates for time-varying covariance matrices.
4. **Market Timing**: Using volatility forecasts to adjust trading strategies.

Extensions include EGARCH (log-variance for asymmetry), GJR-GARCH (leverage effects), and Realized GARCH (incorporating intraday data).

---

### GARCH(1,1) Unconditional Variance

**Equation:**

```
\sigma_{\infty}^2 = \frac{\omega}{1 - \alpha - \beta}
```

## Equation Variables
The unconditional (long-run, or steady-state) variance represents the variance to which the GARCH(1,1) process reverts over infinite time. It is the variance of the marginal distribution of returns.

- **$\sigma_{\infty}^{2}$**: Unconditional variance, also denoted $\sigma^2$ or $\bar{\sigma}^2$, representing $\lim_{t \to \infty} \mathbb{E}[\sigma_t^2]$.
- **$\omega$**: GARCH constant term from the conditional variance equation.
- **$\alpha$**: ARCH coefficient from the conditional variance equation.
- **$\beta$**: GARCH coefficient from the conditional variance equation.

## Interpretation
Under stationarity assumptions ($\alpha + \beta < 1$), the GARCH(1,1) process is mean-reverting to the unconditional variance level $\sigma_{\infty}^2$. This represents the long-run average volatility that the process converges to as $t \to \infty$.

The formula shows that $\sigma_{\infty}^2$ is a weighted average of $\omega$ with weights that depend on $\alpha$ and $\beta$. As $\alpha + \beta$ approaches 1 (the boundary of stationarity), the denominator approaches 0, causing $\sigma_{\infty}^2$ to become very large. This reflects the intuitive idea that highly persistent volatility processes have high long-run variance levels.

In practice, this unconditional variance can be interpreted as the "normal" level of volatility around which the market fluctuates. It serves as a reference point for assessing whether current volatility is above or below its typical level.

## Assumptions
- The GARCH(1,1) process is covariance-stationary, requiring $\alpha + \beta < 1$.
- The unconditional variance exists and is finite (guaranteed by the stationarity condition).
- The process is ergodic, so time averages converge to ensemble averages.

## Practical Use
The unconditional variance has several important applications:

1. **Model Validation**: The estimated $\omega$, $\alpha$, and $\beta$ should produce a reasonable $\sigma_{\infty}^2$ that matches sample variance.
2. **Initial Values**: In MLE estimation, $\sigma_{\infty}^2$ often serves as an initial guess for the variance state.
3. **Economic Interpretation**: The ratio $\sigma_t^2 / \sigma_{\infty}^2$ indicates how far current volatility is from its long-run level.
4. **Calibration Targets**: When fitting GARCH models, practitioners often target the sample variance as $\sigma_{\infty}^2$.

---

### GARCH(1,1) Volatility Persistence

**Equation:**

```
\lambda = \alpha + \beta
```

## Equation Variables
The persistence parameter $\lambda$ (lambda) measures how long volatility shocks persist in the GARCH(1,1) framework. It is the sum of the ARCH and GARCH coefficients.

- **$\lambda$**: Volatility persistence, a scalar between 0 and 1 (for stationary processes).
- **$\alpha$**: ARCH coefficient, capturing the impact of recent squared shocks.
- **$\beta$**: GARCH coefficient, capturing the persistence of past variance.

## Interpretation
The persistence parameter $\lambda = \alpha + \beta$ is arguably the most important summary statistic of a GARCH(1,1) model. It answers the question: "If volatility increases today, how much of that increase remains in future periods?"

- **$\lambda \approx 0$**: Volatility is nearly i.i.d.; shocks dissipate immediately.
- **$\lambda \approx 0.5$**: Moderate persistence; shocks have noticeable but finite effects.
- **$\lambda \approx 0.99$**: High persistence; volatility shocks persist for long periods (common in equity markets).

The **volatility half-life** can be computed as $h_{1/2} = \ln(0.5) / \ln(\lambda)$, representing the time required for a volatility shock to decay by half. For $\lambda = 0.99$, this is approximately 69 days. For $\lambda = 0.95$, it's about 13.5 days.

Values of $\lambda \ge 1$ indicate non-stationarity (explosive volatility), which is typically rejected by data but may occur during crisis periods.

## Assumptions
- The GARCH(1,1) process is properly specified and estimated.
- For meaningful interpretation, $\lambda < 1$ (stationary process).
- The persistence is estimated with sufficient precision.

## Practical Use
Volatility persistence is crucial for:

1. **Risk Assessment**: High persistence implies that high-volatility regimes persist, requiring longer memory in risk models.
2. **Forecasting Horizon**: The forecast horizon at which volatility reverts to the mean depends on persistence.
3. **Model Comparison**: Persistence helps distinguish across assets—cryptocurrencies often show higher persistence than currencies.
4. **Trading Strategies**: Mean-reversion strategies work better for assets with low persistence.
5. **Stress Testing**: The persistence parameter determines how long stress conditions might last.

---

### Garman-Klass Volatility

**Equation:**

```
\sigma_{gk} = 0.511 \left[ \ln^2\left(\frac{H}{L}\right) + (2 \ln 2 - 1) \ln^2\left(\frac{C}{O}\right) \right]^{1/2}
```

## Equation Variables
The Garman-Klass (1980) estimator extends the Parkinson range-based estimator by incorporating open and close prices, achieving higher efficiency while using only OHLC data.

- **$\sigma_{gk}$**: Garman-Klass volatility estimate (not yet annualized).
- **$H$**: Daily high price.
- **$L$**: Daily low price.
- **$C$**: Daily close price.
- **$O$**: Daily open price.
- **$0.511 \approx \frac{1}{2\sqrt{\pi \ln 2}}$**: Scaling constant for optimal efficiency under Brownian motion.
- **$2 \ln 2 - 1 \approx 0.386$**: Constant from the derivation.

## Interpretation
The Garman-Klass estimator combines two sources of information:

1. **Range component**: $\ln^2(H/L)$, capturing the high-low range (as in Parkinson).
2. **Open-close component**: $(2 \ln 2 - 1) \ln^2(C/O)$, capturing the close-to-open movement.

The constant $0.511$ provides asymptotic efficiency of 98% relative to the variance of the true price process (compared to 40-50% for close-to-close). This means Garman-Klass uses the OHLC information nearly as efficiently as intraday data.

The formula can be expressed more compactly as:

$$\sigma_{gk}^2 = 0.261 \left[ \ln^2\left(\frac{H}{L}\right) + 0.099 \ln^2\left(\frac{C}{O}\right) \right]$$

## Assumptions
- Prices follow geometric Brownian motion (lognormal, no jumps).
- The open and close prices are for the same day (not overnight returns).
- The price process is continuous within the day.
- Drift is negligible over the sampling period.

## Practical Use
Garman-Klass is widely used because:

1. **Efficiency**: Uses OHLC data (widely available) with near-optimal efficiency.
2. **Jump Robustness**: Better than close-to-close for intraday jumps, but still affected by large jumps.
3. **No Intraday Data Required**: Doesn't need tick-by-tick data like realized variance.
4. **Comparison**: Should be close to realized variance if markets are efficient.
5. **Limitations**: Underestimates volatility when there are significant price jumps.

---

### Implied Volatility as Variance Swap

**Equation:**

```
\sigma_{IV}^2 = \frac{2}{T} \sum_i \frac{e^{rT} \Delta K_i}{K_i^2} \left[ Q(K_i) - Q(K_i + \Delta K_i) \right]
```

## Equation Variables
This formula expresses model-free implied variance as the limit of a Riemann sum approximating the continuous integral of option prices. It provides an alternative, often more stable, implementation of the VIX formula.

- **$\sigma_{IV}^2$**: Model-free implied variance (annualized).
- **$T$**: Time to expiration in years.
- **$\Delta K_i$**: Strike price increment between adjacent options.
- **$K_i$**: Strike price of the $i$-th option.
- **$e^{rT}$**: Discount factor (present value factor for risk-free rate).
- **$Q(K_i)$**: Option quote (bid-ask midpoint) at strike $K_i$.
- **The difference**: $Q(K_i) - Q(K_i + \Delta K_i)$ represents the contribution of the price density at strike $K_i$.

## Interpretation
This formula is mathematically equivalent to the VIX formula but written as a forward difference. As $\Delta K_i \to 0$, the sum converges to the continuous integral:

$$\sigma_{IV}^2 = \frac{2e^{rT}}{T} \int_{0}^{\infty} \frac{Q(K)}{K^2} dK$$

The difference $Q(K_i) - Q(K_i + \Delta K_i)$ is proportional to the risk-neutral density at strike $K_i$, weighted by $1/K^2$. This reflects the continuous replication of a variance swap payoff.

The formula can be derived from the identity:

$$\int_0^F \frac{P(K)}{K^2} dK + \int_F^{\infty} \frac{C(K)}{K^2} dK = \frac{1}{F} \left[ \frac{F}{K^*} - 1 \right]^2 + \frac{2}{T} \int_0^{\infty} \frac{Q(K)}{K^2} dK$$

## Assumptions
- Options exist for a continuum of strikes (approximated by discrete strikes).
- The risk-neutral density has bounded support (or tail behavior is properly handled).
- Option prices are arbitrage-free and represent the true market.
- The discretization error from finite $\Delta K$ is acceptable.

## Practical Use
This formulation is useful for:

1. **Numerical Implementation**: Forward differences can be more stable than centered differences.
2. **Interpolation**: Easier to handle when strikes are unevenly spaced.
3. **Tail Handling**: Explicit treatment of extreme strikes (far OTM puts/calls).
4. **Research**: Understanding the relationship between option prices and the risk-neutral density.
5. **Calibration**: Used in extracting the implied volatility surface.

---

### Parkinson Volatility (High-Low Range)

**Equation:**

```
\sigma_p = \sqrt{\frac{1}{4 \ln 2} \ln^2\left(\frac{H}{L}\right)}
```

## Equation Variables
The Parkinson (1980) estimator uses the high-low range of the trading day to estimate volatility. It captures more information than close-to-close returns by utilizing the entire price range.

- **$\sigma_p$**: Parkinson volatility estimate (annualized or not, depending on scaling).
- **$H$**: Highest price observed during the trading day.
- **$L$**: Lowest price observed during the trading day.
- **$\ln 2 \approx 0.693$**: Natural logarithm of 2, a constant from the derivation.

## Interpretation
Under geometric Brownian motion with constant variance, the expected value of the high-low range is:

$$\mathbb{E}\left[\ln^2\left(\frac{H}{L}\right)\right] = 4 \ln 2 \cdot \sigma^2 \Delta t$$

Thus, the volatility estimator is:

$$\hat{\sigma} = \sqrt{\frac{1}{4 \ln 2} \ln^2\left(\frac{H}{L}\right)}$$

The factor $1/(4 \ln 2) \approx 0.3607$ adjusts for the fact that the range underestimates variance for short horizons. For daily data, Parkinson vol is approximately 2.5 times more efficient than close-to-close volatility.

The estimator works because, for a Brownian motion, the maximum and minimum jointly contain more information about variance than a single endpoint observation.

## Assumptions
- The price process follows geometric Brownian motion (lognormal prices, constant variance).
- The high and low are observed within the same day without price jumps.
- Trading is continuous throughout the day.
- The sampling period is short (intraday or daily), making drift negligible.

## Practical Use
Parkinson volatility has several advantages:

1. **Efficiency**: 2-5 times more efficient than close-to-close volatility for short horizons.
2. **Jump Robustness**: Less affected by price jumps at the close (uses range, not close).
3. **Data Availability**: High and low are commonly reported (OHLC data).
4. **Limitations**: Underestimates volatility when there are jumps or drift is significant.
5. **Extensions**: The estimator can be improved by incorporating open and close prices (Garman-Klass).

---

### Realized Variance (Sum of Squared Returns)

**Equation:**

```
RV = \sum_{i=1}^{M} r_{t+i/M}^2
```

## Equation Variables
Realized Variance (RV) is the sum of squared intraday returns, providing a consistent estimator of integrated variance for an observable price process.

- **$RV$**: Realized variance, typically annualized by multiplying by the number of trading periods.
- **$M$**: Number of intraday intervals (e.g., $M = 78$ for 5-minute returns in a 6.5-hour trading day).
- **$r_{t+i/M}$**: Log return from time $t + (i-1)/M$ to $t + i/M$, computed as $\ln(P_{t+i/M}) - \ln(P_{t+(i-1)/M})$.

## Interpretation
Under the assumption that the price process is an Itô semimartingale:

$$P_T = P_0 + \int_0^T \mu_s ds + \int_0^T \sigma_s dW_s$$

Realized variance converges in probability to the **integrated variance**:

$$RV \xrightarrow{p} \int_t^{t+1} \sigma_s^2 ds \equiv IV_t$$

This is the total variance accumulated over the measurement period. For daily RV, this represents the daily variance of the underlying price process, excluding jumps.

The number of intraday observations $M$ involves a bias-variance trade-off:
- **Too few observations**: High estimation variance.
- **Too many observations**: Microstructure noise dominates (bid-ask bounce, discrete prices).

Optimal sampling typically uses 5-30 minute intervals for liquid equities.

## Assumptions
- Prices follow a continuous-path Itô semimartingale (no jumps).
- Returns are correctly measured (no market microstructure effects).
- The sampling frequency is appropriate for the asset's liquidity.
- No asynchronous trading or stale prices.

## Practical Use
Realized variance revolutionized empirical finance:

1. **Volatility Forecasting**: RV provides a more efficient volatility estimate than daily returns.
2. **Model-Free Volatility**: No distributional assumptions needed; directly observable.
3. **GARCH Fitting**: RV can replace squared daily returns in GARCH estimation.
4. **Volatility Trading**: Realized variance swaps pay based on actual RV vs. a fixed strike.
5. **Model Validation**: Comparing RV to model-implied variance tests model specification.

---

### Realized Volatility

**Equation:**

```
\sigma_{realized} = \sqrt{252 \times RV}
```

## Equation Variables
Realized volatility is the square root of annualized realized variance, converting the quadratic variation measure to a standard deviation-like scale comparable to option prices and traditional volatility estimates.

- **$\sigma_{realized}$**: Annualized realized volatility, typically expressed in percentage points.
- **$RV$**: Realized variance, computed as $\sum_{i=1}^{M} r_{t+i/M}^2$ (not annualized).
- **$252$**: Approximate number of trading days per year (used for annualization).

## Interpretation
Realized variance $RV$ measures the variance over a single day (or other measurement period). To express this on an annualized basis comparable to implied volatilities and historical volatilities, we scale by the number of trading periods:

$$\sigma_{annual}^2 = 252 \times \sigma_{daily}^2 \implies \sigma_{annual} = \sqrt{252} \times \sigma_{daily}$$

For example, if daily RV is 0.0001 (1% daily variance), then:

$$\sigma_{realized} = \sqrt{252 \times 0.0001} = \sqrt{0.0252} \approx 0.159 \approx 15.9\%$$

The factor 252 reflects the convention of using trading days rather than calendar days. Some practitioners use 260 or 365, but 252 is standard in derivatives markets.

Realized volatility is preferred to historical volatility because it uses intraday data, providing 50-100 times more information than daily return-based estimates.

## Assumptions
- RV is computed from sufficiently many intraday observations.
- The price process follows an Itô semimartingale with continuous paths.
- 252 trading days is an appropriate annualization factor for the asset.
- Returns are computed from prices without microstructure bias.

## Practical Use
Realized volatility is fundamental for:

1. **Volatility Comparison**: Comparing model-implied vol, historical vol, and realized vol.
2. **Volatility Forecasting**: ARFIMA and HAR models use lagged realized vol for prediction.
3. **Trading**: Volatility trading strategies use realized vol as the payoff metric.
4. **Model Calibration**: GARCH and SV models can be calibrated to realized vol measures.
5. **Risk Assessment**: Current realized vol indicates today's risk level better than historical vol.

---

### Risk-Neutral GARCH Adjustment

**Equation:**

```
\mu - \lambda \nu = r - \frac{1}{2} \sigma^2
```

## Equation Variables
The risk-neutral GARCH adjustment relates physical-world drift to risk-neutral drift, essential for option pricing under GARCH models. It derives from Duan's (1999) local risk-neutral measure.

- **$\mu$**: Physical-world drift (expected return under the real-world measure $\mathbb{P}$).
- **$\lambda$**: Market price of variance risk, defined as the coefficient relating physical and risk-neutral variance dynamics.
- **$\nu$**: Variance risk premium parameter.
- **$r$**: Risk-free interest rate (continuously compounded).
- **$\sigma^2$**: Conditional variance under the physical measure.

## Interpretation
In continuous-time derivatives pricing, the drift under the risk-neutral measure $\mathbb{Q}$ differs from the physical drift. For GARCH models, this adjustment captures the compensation investors require for bearing volatility risk.

The equation states that the risk-neutral drift $r - \frac{1}{2}\sigma^2$ equals the physical drift $\mu$ minus the risk premium $\lambda \nu$. For the standard case where $\lambda \nu = \mu - (r - \frac{1}{2}\sigma^2)$, the physical drift translates to the familiar Black-Scholes drift under $\mathbb{Q}$.

The **variance risk premium** $\nu$ measures the difference between implied and physical variance. Typically, $\nu > 0$, meaning implied variance exceeds expected physical variance (investors pay a premium for protection).

## Assumptions
- The GARCH model follows specific dynamics under both measures.
- The market price of variance risk $\lambda$ is constant or follows a specified form.
- The underlying asset follows a lognormal distribution under the risk-neutral measure.
- Interest rate $r$ is constant or deterministic.

## Practical Use
The risk-neutral GARCH adjustment enables:

1. **Option Pricing**: GARCH option pricing formulas require simulation under the risk-neutral measure.
2. **Volatility Forecasting**: Risk-neutral dynamics differ from physical dynamics; both are important.
3. **Variance Swap Valuation**: The fair variance swap strike equals the risk-neutral expected variance.
4. **Model Calibration**: Fitting GARCH models to option prices requires the risk-neutral adjustment.
5. **Risk Premium Estimation**: Comparing physical and risk-neutral volatilities reveals market risk appetite.

---

### Rogers-Satchell Volatility

**Equation:**

```
\sigma_{rs} = \sqrt{\frac{1}{2} \ln^2\left(\frac{H}{O}\right) - (2 \ln 2 - 1) \ln^2\left(\frac{C}{O}\right) + \frac{1}{2} \ln^2\left(\frac{H}{C}\right) + (2 \ln 2 - 1) \ln^2\left(\frac{C}{L}\right) - \frac{1}{2} \ln^2\left(\frac{L}{O}\right) + (2 \ln 2 - 1) \ln^2\left(\frac{L}{H}\right)}
```

## Equation Variables
The Rogers-Satchell (1991) estimator is a range-based volatility estimator that remains unbiased even when the underlying price process has drift (non-zero expected return).

- **$\sigma_{rs}$**: Rogers-Satchell volatility estimate.
- **$H, L, O, C$**: Daily high, low, open, and close prices respectively.
- **$\ln$**: Natural logarithm.

The full expression can be simplified using the notation $h = \ln H$, $l = \ln L$, $o = \ln O$, $c = \ln C$:

$$\sigma_{rs}^2 = \frac{1}{2}(h - o)^2 - (2\ln 2 - 1)(c - o)^2 + \frac{1}{2}(h - c)^2 + (2\ln 2 - 1)(c - l)^2 - \frac{1}{2}(l - o)^2 + (2\ln 2 - 1)(l - h)^2$$

## Interpretation
Unlike Parkinson and Garman-Klass, the Rogers-Satchell estimator is **unbiased** even when the price process has drift. This is crucial because financial assets typically have non-zero expected returns, violating the zero-drift assumption used in deriving those estimators.

The estimator can be written more compactly as:

$$\sigma_{rs}^2 = \frac{1}{T} \sum_{t=1}^{T} \left( U_t \cdot (H_t - O_t) - D_t \cdot (O_t - L_t) \right)$$

where $U_t$ and $D_t$ are up-range and down-range indicators.

The formula systematically accounts for all six possible sign combinations of open, high, low, and close prices.

## Assumptions
- The price process is an Itô semimartingale (can have drift and stochastic volatility).
- Jumps are absent or small relative to continuous price movement.
- The measurement period is short enough that volatility is approximately constant.

## Practical Use
Rogers-Satchell is important for:

1. **Drift-Robust Estimation**: Works correctly even when prices have significant drift.
2. **Component Analysis**: Forms the basis of the Yang-Zhang estimator.
3. **Jump Detection**: The difference between RS and other estimators indicates jump activity.
4. **Limitations**: Still assumes no large jumps; overestimates vol when jumps occur.
5. **Research**: Used in studies comparing different volatility estimation methods.

---

### SABR Approximation (Hagan et al.)

**Equation:**

```
\sigma_{BS}(F,K) = \frac{\alpha}{(F K)^{(1-\beta)/2} \left[1 + \left(\frac{(1-\beta)^2}{24} \alpha^2 + \frac{\rho \beta \nu \alpha}{4} + \frac{2-3\rho^2}{24} \nu^2\right) T \right]} \cdot \frac{z}{x(z)}
```

## Equation Variables
The Hagan et al. (2002) SABR approximation provides an explicit formula for Black-Scholes implied volatility as a function of strike and forward, avoiding costly Monte Carlo simulation.

- **$\sigma_{BS}(F,K)$**: Black-Scholes implied volatility for strike $K$, forward $F$.
- **$\alpha$**: SABR volatility of volatility parameter.
- **$\beta$**: SABR CEV exponent.
- **$\rho$**: Correlation between forward and volatility.
- **$\nu$**: SABR volatility of volatility.
- **$T$**: Time to expiration.
- **$z$**: Dimensionless variable, $z = \frac{\nu}{\alpha} (F K)^{(1-\beta)/2} \ln(F/K)$.
- **$x(z)$**: Function mapping $z$ to log-normal equivalent, $x(z) = \ln\left( \frac{\sqrt{1 - 2\rho z + z^2} + z - \rho}{1 - \rho} \right)$.

## Interpretation
The SABR approximation has three components:

1. **Base term**: $\frac{\alpha}{(F K)^{(1-\beta)/2}} \frac{z}{x(z)}$, the leading-order approximation.
2. **Convexity adjustment**: The term in brackets corrects for $\beta \neq 1$, correlation, and vol-of-vol.
3. **The function $z/x(z)$**: Ensures the correct limit as $K \to F$ (ATM) and handles far OTM strikes.

For ATM options ($K \approx F$):

$$\sigma_{ATM} \approx \frac{\alpha}{F^{1-\beta}} \left[ 1 + \left( \frac{(1-\beta)^2}{24} \frac{\alpha^2}{F^{2(1-\beta)}} + \frac{\rho \beta \nu \alpha}{4 F^{1-\beta}} + \frac{2 - 3\rho^2}{24} \nu^2 \right) T \right]$$

This shows how ATM vol drifts over time due to the convexity adjustment.

## Assumptions
- Parameters are constant over the option's lifetime.
- The expansion is accurate for moderate $\nu \sqrt{T}$.
- Extreme strikes (very low or very high) may require correction terms.
- The correlation $\rho$ is not too close to $\pm 1$.

## Practical Use
The SABR approximation is essential because:

1. **Speed**: Analytical formula instead of numerical integration.
2. **Calibration**: Easy to fit to market smiles.
3. **Interpolation**: Smooth vol surface across strikes and maturities.
4. **Greeks**: Can be differentiated for risk sensitivities.
5. **Limitations**: Needs correction terms for very long tenors or extreme vol-of-vol.

---

### SABR Model Dynamics

**Equation:**

```
dF = \sigma F^{\beta} dW_1, \quad d\sigma = \nu \sigma dW_2, \quad dW_1 dW_2 = \rho dt
```

## Equation Variables
The SABR (Stochastic-Alpha-Beta-Rho) model describes the joint dynamics of the forward price $F$ and volatility $\sigma$ under risk-neutral measure $\mathbb{Q}$. It has become the industry standard for smile interpolation.

- **$F$**: Forward price of the underlying (or spot price if $F = S_0 e^{rT}$).
- **$\sigma$**: instantaneous volatility (not the same as implied vol).
- **$\alpha$**: Initial volatility parameter ($\alpha > 0$), often called "vol-of-vol."
- **$\beta$**: CEV exponent ($0 \le \beta \le 1$), controlling the shape of volatility vs. underlying.
- **$\rho$**: Correlation between forward and volatility innovations ($-1 < \rho < 0$ typically).
- **$\nu$**: Volatility of volatility ($\nu > 0$), controlling the rate of volatility changes.
- **$dW_1, dW_2$**: Standard Brownian motions with correlation $\rho$.

## Interpretation
The SABR model extends the Black-Scholes log-normal dynamics:

- **$\beta = 1$**: Log-normal dynamics (Black-Scholes), $dF/F = \sigma dW_1$.
- **$\beta = 0$**: Normal dynamics (Bachelier), $dF = \sigma dW_1$.
- **$0 < \beta < 1$**: CEV dynamics, intermediate behavior.

The correlation $\rho$ captures the **leverage effect**: when $\rho < 0$ (typical for equity indices), volatility increases when prices fall. This generates the volatility skew.

The parameters have intuitive interpretations:
- $\alpha$: Overall volatility level.
- $\beta$: How volatility scales with the underlying price.
- $\rho$: Asymmetry of the smile.
- $\nu$: Width of the smile (convexity in log-moneyness).

## Assumptions
- The model is specified under the risk-neutral measure.
- Parameters are constant (or follow deterministic functions of time).
- No jumps in either $F$ or $\sigma$.
- The correlation $\rho$ is bounded away from $\pm 1$.

## Practical Use
SABR is the industry standard for:

1. **Smile Interpolation**: Fitting the entire smile from ATM vol, skew, and curvature.
2. **Delta Hedging**: Computing option sensitivities across strikes.
3. **Product Pricing**: Used for caps, swaptions, and other interest rate derivatives.
4. **Risk Management**: Managing smile risk across portfolios.
5. **Extensions**: Time-dependent parameters, stochastic rates, jump SABR.

---

### Term Structure of Volatility

**Equation:**

```
\sigma^2(T) = \frac{1}{T} \int_0^T \sigma_u^2 du
```

## Equation Variables
The term structure of volatility relates the average (integrated) variance over a period to the instantaneous variance dynamics. It provides the link between short-term and long-term volatility behavior.

- **$\sigma^2(T)$**: Average (integrated) variance from time 0 to $T$.
- **$T$**: Time horizon (typically in years).
- **$\sigma_u^2$**: Instantaneous variance at time $u$.
- **$\int_0^T$**: Time integral accumulating variance over the period.

## Interpretation
The term structure equation states that variance accumulated over time $T$ equals the time-average of instantaneous variance:

$$\sigma^2(T) = \frac{1}{T} \int_0^T \sigma_u^2 du$$

This is the definition of **average variance** over the period. For comparison:
- **Instantaneous variance**: $\sigma_t^2$ at a specific point in time.
- **Realized variance**: $\sum r_i^2$ from observations over the period.
- **Integrated variance**: $\int_0^T \sigma_u^2 du$, the theoretical limit of realized variance.

The term structure captures how volatility varies across different investment horizons:
- **Upward sloping**: Volatility expected to increase over time.
- **Downward sloping**: Volatility expected to decrease (mean reversion).
- **Flat**: Constant volatility assumption (Black-Scholes).

## Assumptions
- The instantaneous variance process $\sigma_t^2$ is well-defined.
- Integration captures the full variance accumulation (no jumps).
- The horizon $T$ is defined consistently across assets.
- The variance process is integrable over the period.

## Practical Use
The term structure of volatility is crucial for:

1. **Option Pricing**: Longer-dated options should embed the term structure.
2. **Volatility Trading**: VIX and variance swaps target specific term structure points.
3. **Portfolio Construction**: Allocating across horizons based on expected vol.
4. **Risk Management**: VaR and stress testing require vol at different horizons.
5. **Model Calibration**: Matching the full volatility surface, not just ATM vol.

---

### VIX Formula (Black-Scholes Implied Variance)

**Equation:**

```
\sigma^2 = \frac{2}{T} \sum_{i} \frac{\Delta K_i}{K_i^2} e^{rT} Q(K_i) - \frac{1}{T} \left( \frac{F}{K^*} - 1 \right)^2
```

## Equation Variables
The VIX formula computes the model-free implied variance from a cross-section of out-of-the-money option prices. It represents the expected variance under the risk-neutral measure, consistent with a variance swap payoff.

- **$\sigma^2$**: Model-free implied variance (annualized).
- **$T$**: Time to expiration of the options (in years).
- **$\Delta K_i$**: Strike price interval (difference between adjacent strikes).
- **$K_i$**: Strike price of the $i$-th option.
- **$r$**: Risk-free interest rate.
- **$Q(K_i)$**: Midpoint of the bid-ask quote for the out-of-the-money call or put at strike $K_i$.
- **$F$**: Forward index level, derived from call-put parity.
- **$K^*$**: First strike at or below the forward price (the "at-the-money" reference strike).

## Interpretation
The VIX formula derives from the variance swap replication strategy. The first term represents the present value of expected squared returns (the "upside" and "downside" variances), while the second term adjusts for the convexity of log-returns around the forward price.

The summation includes both calls and puts, with the convention:
- For $K < K^*$: Use put prices (out-of-the-money puts).
- For $K > K^*$: Use call prices (out-of-the-money calls).

The factor $2/T$ annualizes the variance from the measurement period to 1 year. VIX is then $\sqrt{\sigma^2} \times 100$, so a VIX of 20 corresponds to 20% annualized volatility.

## Assumptions
- Options are European-style and can be exercised only at expiration.
- No arbitrage holds (put-call parity is satisfied).
- The forward price $F$ is correctly inferred from the term structure.
- Bid-ask spreads are reasonable (wide spreads indicate illiquidity).
- The entire range of strikes captures the full distribution of returns.

## Practical Use
VIX and the model-free implied variance are:

1. **Market Fear Gauge**: VIX rising indicates increased uncertainty and risk aversion.
2. **Risk-Neutral Distribution**: The option prices encode the market's aggregate expectation.
3. **Variance Swap Pricing**: The formula gives the fair variance swap strike.
4. **Volatility Trading**: VIX futures and options allow trading on volatility directly.
5. **Tail Risk Hedging**: High VIX indicates demand for crash protection.

---

### Volatility Smile (Quadratic Parametrization)

**Equation:**

```
\sigma(K) = a + b \ln\left(\frac{K}{F}\right) + c \ln^2\left(\frac{K}{F}\right)
```

## Equation Variables
The quadratic volatility smile model captures the empirical observation that implied volatility varies with strike price, typically showing higher vol for deep out-of-the-money puts and (to a lesser extent) deep out-of-the-money calls.

- **$\sigma(K)$**: Implied volatility as a function of strike price $K$.
- **$a$**: ATM (at-the-money) volatility level, $\sigma(F)$ where $F$ is the forward price.
- **$b$**: Skew coefficient, measuring the linear term (volatility slope with respect to log-moneyness).
- **$c$**: Curvature coefficient, measuring the quadratic term (smile convexity).
- **$K$**: Strike price.
- **$F$**: Forward price of the underlying asset.
- **$\ln(K/F)$**: Log-moneyness, negative for puts (K < F), positive for calls (K > F).

## Interpretation
The quadratic model captures three key features of the implied volatility surface:

1. **Level ($a$)**: The ATM volatility, often the most liquid and reference point.
2. **Skew ($b$)**: The slope of volatility with respect to log-moneyness. Typically $b < 0$ for equity indices (downside puts have higher vol than upside calls).
3. **Curvature ($c$)**: The smile shape, often positive for pronounced smile patterns.

The **forward moneyness** $\ln(K/F)$ is preferred to simple moneyness $K/F$ because:
- It is symmetric around the forward price.
- It accounts for the forward curve term structure.
- It is consistent with the log-normal assumption underlying Black-Scholes.

The skew is often expressed as "vol per delta" or "25-delta skew," the slope at specific delta levels.

## Assumptions
- The smile can be approximated by a quadratic function in log-moneyness.
- The forward price $F$ is known (or can be inferred from futures/forward curve).
- The smile is time-invariant or varies predictably with maturity.

## Practical Use
Quadratic smile models are used for:

1. **Option Pricing**: Interpolating/extrapolating vol at strikes without liquid quotes.
2. **Risk Management**: Computing Greeks for portfolios with non-ATM options.
3. **Arbitrage Detection**: Identifying violations of no-arbitrage conditions.
4. **Model Comparison**: Comparing smile parameters across assets and time.
5. **Limitations**: Can produce arbitrageable regions; may not capture wing behavior well.

---

### Yang-Zhang Volatility

**Equation:**

```
\sigma_{yz} = \sqrt{\sigma_o^2 + k \cdot \sigma_c^2 + k \cdot \sigma_{rs}^2} \quad \text{where} \quad k = \frac{0.34}{1.34 + \frac{N}{N-1}}
```

## Equation Variables
The Yang-Zhang (2000) estimator combines open-close volatility, close volatility, and Rogers-Satchell range volatility with optimal weights, achieving the lowest possible variance among OHLC estimators.

- **$\sigma_{yz}$**: Yang-Zhang volatility estimate (not yet annualized).
- **$\sigma_o^2$**: Open volatility, $\frac{1}{N-1} \sum_{t=1}^{N} (\ln(O_t/O_{t-1}) - \overline{\ln(O_t/O_{t-1})})^2$.
- **$\sigma_c^2$**: Close volatility, $\frac{1}{N-1} \sum_{t=1}^{N} (\ln(C_t/C_{t-1}) - \overline{\ln(C_t/C_{t-1})})^2$.
- **$\sigma_{rs}^2$**: Rogers-Satchell variance for each day, averaged.
- **$k$**: Weighting factor depending on the number of observations $N$.
- **$N$**: Total number of days in the sample.

## Interpretation
The Yang-Zhang estimator combines three orthogonal components:

1. **$\sigma_o^2$**: Volatility from open-to-previous-close returns.
2. **$\sigma_c^2$**: Volatility from close-to-previous-close returns.
3. **$\sigma_{rs}^2$**: Intraday range-based volatility (drift-robust).

The weight $k$ optimally combines these components. For large $N$, $k \approx 0.34 / 2.34 \approx 0.145$. The formula becomes:

$$\sigma_{yz} \approx \sqrt{\sigma_o^2 + 0.145 \sigma_c^2 + 0.145 \sigma_{rs}^2}$$

Yang and Zhang proved that this estimator has the minimum variance among all OHCL estimators and is consistent even in the presence of drift.

## Assumptions
- The underlying price process is an Itô semimartingale.
- The sample size $N$ is large enough for the asymptotic weights to apply.
- Prices are correctly measured (no microstructure effects).

## Practical Use
Yang-Zhang is considered the best OHLC-based volatility estimator:

1. **Optimal Efficiency**: Has the lowest variance among range-based estimators.
2. **Drift-Robust**: Works correctly for assets with significant drift.
3. **Jump-Robust**: More robust than pure close-to-close estimates.
4. **Standard**: Often used as the benchmark for comparing other estimators.
5. **Implementation**: Requires daily OHL C data and some computational effort.

---

## FX and Currency Derivatives

FX Derivatives covers the pricing of foreign exchange instruments including forwards, options, and cross-currency products. This includes covered interest parity and the Garman-Kohlhagen currency option model.

### Subcategories
- **FX Forwards**: Covered interest parity and forward pricing
- **Currency Options**: Garman-Kohlhagen model
- **Cross-Currency Products**: Basis swaps and quantos
- **FX Risk Measures**: Delta, gamma, vega for FX options

### Basis Swap Present Value

**Equation:**

```
V = \sum (L_1 - L_2 + basis) \delta_i P_{d}(t_i) + N (P_{d}(T) - 1)
```

## Equation Variables
A basis swap exchanges floating interest payments between currencies with a basis spread adjustment.

- **$V$**: Present value of the basis swap.
- **$L_1, L_2$**: Floating leg rates of each currency.
- **$basis$**: Cross-currency basis spread.
- **$\delta_i$**: Day count fraction for period $i$.
- **$P_{d}(t_i)$**: Domestic discount factor.
- **$N$**: Notional amount.
- **$T$**: Final maturity.

## Interpretation
PV discounts each net payment to valuation date. The spread adjustment reflects relative funding value of one currency versus another. Positive basis means receiver of foreign currency pays extra for scarcity. The formula shows value depends on rate spread, basis, and discount factors. Allows transforming currency composition while managing basis exposure.

## Assumptions
- No collateral postings affecting discount rates.
- Deterministic interest rate curves.
- Perfect collateralization with overnight rates.

## Practical Use
Basis swaps manage cross-currency funding positions for multinational banks and corporations. Investors use them to express views on relative currency funding. Valuation requires bootstrapping discount curves and incorporating basis spreads. Basis swap spreads quote the relative funding cost across currencies.

---

### Composite Exchange Option

**Equation:**

```
V = S_0 e^{-r_{f}T} N(d_1) - K e^{-r_{d}T} N(d_2) - S_0^* e^{-r_{f}^* T} N(e_1) + K e^{-r_{d}^* T} N(e_2)
```

## Equation Variables
A composite exchange option gives the right to exchange one currency pair for another at a fixed rate.

- **$V$**: Value of composite exchange option.
- **$S_0, S_0^*$**: Spot rates of two currency pairs.
- **$K$**: Strike rate.
- **$r_d, r_d^*$**: Domestic rates for each pair.
- **$r_f, r_f^*$**: Foreign rates for each pair.
- **$d_1, d_2, e_1, e_2$**: Normal parameters for each option.

## Interpretation
Equivalent to holding a call on one currency and a put on another, with strike adjustment. Value is the difference between receiving currency A at favorable rate versus currency B. Captures optionality of switching between currency pairs based on relative performance.

## Assumptions
- Two independent currency pairs follow lognormal diffusion.
- No correlation effects between pairs.
- European exercise only.

## Practical Use
Used in cross-currency hedging and structured products offering currency flexibility. Relevant for institutions managing multi-currency exposures who want optionality in allocations. Pricing requires volatilities for both pairs and their correlation.

---

### Covered Interest Rate Parity

**Equation:**

```
F = S_0 e^{(r_{d} - r_{f})T}
```

## Equation Variables
Covered Interest Rate Parity is the fundamental no-arbitrage condition linking spot and forward exchange rates.

- **$F$**: Forward exchange rate (units of domestic per foreign currency).
- **$S_{0}$**: Spot exchange rate.
- **$r_{d}$**: Domestic risk-free rate (continuously compounded).
- **$r_{f}$**: Foreign risk-free rate (continuously compounded).
- **$T$**: Time to maturity.

## Interpretation
CIP states that the forward rate exactly offsets the interest rate differential between two currencies. When CIP holds, there is no arbitrage: borrowing domestic currency, buying foreign at spot, investing abroad, and selling forward yields zero profit. CIP is one of the most robust no-arbitrage relationships in financial economics, involving transactions in liquid markets. Post-2008, CIP deviations (cross-currency basis) emerged as important indicators of funding stress.

## Assumptions
- Perfect capital mobility without restrictions.
- Zero transaction costs and perfect market liquidity.
- Identical borrowing and lending rates (no credit spread).
- Continuous compounding convention.

## Practical Use
CIP serves as the foundation for pricing all FX forward contracts. Traders use it to detect arbitrage when forward rates deviate from theory. The basis (deviation from CIP) indicates cross-currency funding conditions. Central banks monitor CIP deviations as a measure of market stress and financial fragmentation.

---

### Currency Swaption Valuation

**Equation:**

```
V = P_{d}(0,T) [s N(d_1) - K N(d_2)]
```

## Equation Variables
A currency swaption gives the right to enter a cross-currency swap at a predetermined rate.

- **$V$**: Value of the currency swaption.
- **$P_{d}(0,T)$**: Domestic discount factor to maturity $T$.
- **$s$**: Current spot exchange rate.
- **$K$**: Strike rate of the swaption.
- **$N(d_1), N(d_2)$**: Standard normal cumulative distributions.
- **$d_1, d_2$**: Standard swaption parameters.

## Interpretation
This represents a receiver swaption (right to receive foreign currency, pay domestic), valued as a call on the exchange rate. Payoff at expiration is $\max(s - K, 0)$, the benefit of exchanging at favorable rates. Extends Black model to currency options where underlying is the exchange rate itself, not an interest rate.

## Assumptions
- European exercise only.
- Constant volatility of exchange rates.
- Deterministic interest rate curves for discounting.
- No counterparty risk or credit spreads.

## Practical Use
Currency swaptions hedge foreign currency debt service and international project financing. Provide flexibility that forwards cannot. Investment banks use them in structured products. Pricing requires volatility surfaces for exchange rates.

---

### FX Butterfly Spread

**Equation:**

```
BF = (\Delta_{call} + \Delta_{put} - 2 \Delta_{atm}) / 2
```

## Equation Variables
Butterfly measures the curvature of implied volatility across strikes.

- **$BF$**: Butterfly spread value (volatility points).
- **$\Delta_{call}$**: Delta of OTM call option.
- **$\Delta_{put}$**: Delta of OTM put option.
- **$\Delta_{atm}$**: Delta of ATM option (50-delta).

## Interpretation
BF represents average OTM volatility minus ATM volatility, normalized by distance from ATM. Positive BF indicates OTM options have higher IV than ATM: volatility "smile" or "smirk." Captures extra premium for tail risk protection. Related to distribution skewness: positive BF means fatter tails than lognormal.

## Assumptions
- Smooth, arbitrage-free volatility surface.
- Consistent delta conventions.
- Quotes represent market prices for the spread.

## Practical Use
Traded as volatility products by traders with views on surface shape. Input for volatility surface construction and exotic pricing. Monitors tail risk pricing across currency pairs.

---

### FX Delta Garman-Kohlhagen

**Equation:**

```
\Delta_{call} = e^{-r_{f}T} N(d_1), \quad \Delta_{put} = e^{-r_{f}T} (N(d_1) - 1)
```

## Equation Variables
Delta measures option price sensitivity to spot rate changes under Garman-Kohlhagen.

- **$\Delta$**: Option Delta (first derivative of price w.r.t. spot).
- **$N(d_1)$**: Standard normal cumulative distribution at $d_1$.
- **$r_{f}$**: Foreign risk-free rate.
- **$T$**: Time to expiration.

## Interpretation
Delta ranges from 0 (deep OTM) to $e^{-r_f T}$ (deep ITM) for calls, and $-e^{-r_f T}$ to 0 for puts. Unlike equity options where max delta is 1.0, FX options have max $<1.0$ due to $e^{-r_f T}$ discount. Delta represents hedge ratio: units of foreign currency needed per option for neutrality. Market conventions differ from equities: FX traders quote delta by forward moneyness.

## Assumptions
- Garman-Kohlhagen model assumptions apply.
- Delta calculated under current spot and volatility.
- Static parameters between rebalancing.

## Practical Use
Delta is the most important Greek for FX option traders and risk managers. Used for hedging (delta-neutral strategies), position sizing, and directional exposure assessment. 25-delta risk reversals and butterflies are constructed using deltas at specific moneyness levels.

---

### FX Duration

**Equation:**

```
D_{FX} = - \frac{1}{F} \frac{\partial F}{\partial r_{d}}
```

## Equation Variables
FX duration measures sensitivity of forward rate to interest rate changes.

- **$D_{FX}$**: FX duration.
- **$F$**: Forward exchange rate.
- **$r_{d}$**: Domestic risk-free rate.

## Interpretation
Duration shows proportional forward rate change per unit interest rate change. Negative sign indicates rate increase causes forward decrease (domestic appreciation). For standard forward, duration equals time to maturity $T$, reflecting compounding effect. Longer-dated forwards have higher duration, more sensitive to rate changes.

## Assumptions
- Foreign rate remains constant.
- Rate changes are parallel shifts.
- No convexity adjustment.

## Practical Use
Used in asset-liability management for multi-currency exposures. Quantifies sensitivity of forwards to rate movements and informs hedging. Duration-based hedging more efficient than notional matching for long-dated derivatives. Portfolio managers use FX duration to manage interest rate component of currency returns.

---

### FX Forward Price

**Equation:**

```
F = S_0 \frac{1 + r_{d} T}{1 + r_{f} T} = S_0 e^{(r_{d} - r_{f})T}
```

## Equation Variables
The FX forward price represents the agreed-upon exchange rate for delivery of one currency for another at a future date, determined by no-arbitrage principles.

- **$F$**: Forward exchange rate (units of domestic currency per unit of foreign currency at time $T$).
- **$S_{0}$**: Spot exchange rate (current rate).
- **$r_{d}$**: Domestic risk-free rate (continuously compounded or discrete).
- **$r_{f}$**: Foreign risk-free rate (continuously compounded or discrete).
- **$T$**: Time to delivery in years.

## Interpretation
Covered interest parity states that the forward rate must equal the spot rate adjusted for the interest rate differential between the two currencies. If $r_d > r_f$, the domestic currency trades at a forward discount; if $r_d < r_f$, it trades at a forward premium. This relationship eliminates arbitrage: a trader cannot earn excess returns by borrowing in one currency, converting at spot, investing in another, and hedging FX risk with a forward. The discrete and continuous formulations are equivalent when properly applied.

## Assumptions
- No transaction costs, bid-ask spreads, or capital controls exist.
- Borrowing and lending occur at the same risk-free rate.
- Perfect collateralization enables OIS discounting.
- Continuous or discrete compounding is consistently applied.

## Practical Use
FX forwards are extensively used for hedging FX exposure in international trade and investments. Multinational corporations use them to lock in exchange rates for future receivables or payables. The forward points ($F - S_0$) reflect the cost of carry, which includes the interest rate differential. Deviations from CIP indicate funding pressures or credit risk; the cross-currency basis emerged significantly post-2008.

---

### FX Risk Reversal

**Equation:**

```
RR = \Delta_{call} - \Delta_{put}
```

## Equation Variables
Risk reversal captures the difference between out-of-the-money call and put implied volatilities.

- **$RR$**: Risk reversal value (volatility points).
- **$\Delta_{call}$**: Delta of OTM call (e.g., 25-delta).
- **$\Delta_{put}$**: Delta of OTM put (e.g., 25-delta).

## Interpretation
Positive RR means calls have higher IV than puts: market expects upward moves or demands call protection. Negative RR indicates opposite skew. Risk reversal reflects directional expectations and supply/demand for option protection. Strongly positive EUR/USD RR suggests euro appreciation expectations.

## Assumptions
- Consistent delta conventions.
- Volatility surface is arbitrage-free.
- Quotes represent market consensus.

## Practical Use
Traded directly in FX options markets for trading, hedging, and analysis. Traders position based on mispricing relative to expectations. Input for volatility surface construction. Monitored as market sentiment indicator across currency pairs.

---

### FX Strangle

**Equation:**

```
ST = \Delta_{call,out} + \Delta_{put,out}
```

## Equation Variables
Strangle combines OTM call and put at the same delta level.

- **$ST$**: Strangle value (volatility points).
- **$\Delta_{call,out}$**: Delta of OTM call.
- **$\Delta_{put,out}$**: Delta of OTM put.

## Interpretation
Strangle measures overall OTM volatility level, capturing cost of protection against large bidirectional moves. Directionally neutral at initiation. High strangle values indicate expensive tail protection. Cheaper than straddles but requires larger moves to profit. Captures market uncertainty and tail risk pricing.

## Assumptions
- Symmetric delta levels for wings.
- Volatility surface is arbitrage-free.
- Quotes reflect current market prices.

## Practical Use
Used in volatility trading when large moves expected but direction is uncertain. Cost-efficient alternative to straddles. Monitored as uncertainty indicator and tail risk measure. In portfolio hedging, strangles may be preferred for cost efficiency.

---

### FX Vega

**Equation:**

```
Vega = S_0 \sqrt{T} e^{-r_{f}T} N'(d_1)
```

## Equation Variables
Vega measures option price sensitivity to changes in implied volatility.

- **$Vega$**: Price change per 1% change in volatility.
- **$S_{0}$**: Current spot exchange rate.
- **$T$**: Time to expiration.
- **$r_{f}$**: Foreign risk-free rate.
- **$N'(d_1)$**: Standard normal PDF at $d_1$.

## Interpretation
Vega is highest for ATM options and decreases for ITM/OTM options. Proportional to $\sqrt{T}$, so longer-dated options are more volatility-sensitive. Foreign rate adjustment $e^{-r_f T}$ reflects present value. Long vega profits from volatility increases; short vega benefits from decreases. Time-dependent: vega concentrates in longer-dated options initially, decays as expiration approaches.

## Assumptions
- Only volatility changes (other parameters constant).
- Parallel vol surface shifts across strikes.
- No jump risk or stochastic volatility.

## Practical Use
Traders use vega for volatility exposure management. Volatility surfaces are calibrated across strikes/maturities. Delta-hedged strategies described by vega exposure (e.g., "long 50,000 vega"). Risk profiles are time-dependent with vega concentrated in longer-dated options.

---

### Forward Premium

**Equation:**

```
FP = \frac{F - S_0}{S_0} = (r_{d} - r_{f}) T
```

## Equation Variables
Forward premium measures the percentage deviation of forward from spot rate.

- **$FP$**: Forward premium (decimal or percentage).
- **$F$**: Forward exchange rate.
- **$S_{0}$**: Spot exchange rate.
- **$r_{d}$**: Domestic risk-free rate.
- **$r_{f}$**: Foreign risk-free rate.
- **$T$**: Time to delivery.

## Interpretation
Positive FP means domestic currency trades at forward premium (forward > spot), occurring when $r_d > r_f$. Approximately equals interest rate differential times time. Often confused with expected appreciation; related only through UIP. Empirically, high-premium currencies tend to depreciate (forward premium puzzle).

## Assumptions
- Covered interest parity holds.
- Interest rates are known and constant.
- Compounding consistently applied.

## Practical Use
Calculated by traders to assess hedging costs over time. Used in international investment performance attribution. Forward points quoted in basis points (e.g., "100 points forward premium"). Helps corporations evaluate hedging strategies and timing decisions.

---

### Garman-Kohlhagen Call Price

**Equation:**

```
C = S_0 e^{-r_{f}T} N(d_1) - K e^{-r_{d}T} N(d_2)
```

## Equation Variables
The Garman-Kohlhagen model extends Black-Scholes to price currency options with two distinct interest rates.

- **$C$**: Price of a European call option on FX rate.
- **$S_{0}$**: Spot exchange rate (foreign per domestic).
- **$K$**: Strike price.
- **$r_{d}$**: Domestic risk-free rate.
- **$r_{f}$**: Foreign risk-free rate.
- **$T$**: Time to expiration.
- **$N(x)$**: Cumulative standard normal distribution.
- **$d_1, d_2$**: Intermediate calculations.

## Interpretation
GK treats the foreign currency as an asset paying continuous dividend yield $r_f$, while domestic rate represents financing cost. The call has two components: discounted expected payoff if ITM (first term) and PV of strike (second term). Foreign rate reduces growth of underlying value from domestic investor perspective. The model assumes lognormal exchange rate dynamics.

## Assumptions
- Exchange rate follows geometric Brownian motion with constant volatility.
- Risk-free rates are constant throughout option life.
- Markets are efficient with no transaction costs.
- European exercise only.
- No dividends on foreign currency.

## Practical Use
GK is the industry-standard model for European currency options. Banks, corporates, and institutions use it for FX hedging. The model forms the basis for FX option pricing systems and is calibrated to volatility surfaces for complex structures. Traders use GK to evaluate fair values and calculate Greeks.

---

### Garman-Kohlhagen d1 d2 Parameters

**Equation:**

```
d_1 = \frac{\ln(S_0/K) + (r_{d} - r_{f} + \sigma^2/2)T}{\sigma \sqrt{T}}, \quad d_2 = d_1 - \sigma \sqrt{T}
```

## Equation Variables
These parameters determine option pricing and Greeks in the Garman-Kohlhagen framework.

- **$S_{0}$**: Current spot exchange rate.
- **$K$**: Strike price.
- **$r_{d}$**: Domestic risk-free rate.
- **$r_{f}$**: Foreign risk-free rate.
- **$\sigma$**: Annualized volatility of exchange rate.
- **$T$**: Time to expiration.
- **$\ln$**: Natural logarithm.

## Interpretation
$d_1$ and $d_2$ are standardized distance measures determining probability-weighted payoff. The term $(r_d - r_f)$ captures the interest rate differential affecting forward rate and moneyness. The $\sigma^2/2$ term adjusts for expected growth under risk-neutral measure. $\ln(S_0/K)$ measures log-moneyness; $\sigma\sqrt{T}$ standardizes by uncertainty over remaining life. $d_2$ is the critical exercise threshold.

## Assumptions
- Lognormal distribution of exchange rates under risk-neutral measure.
- Constant volatility (implied volatility from market prices).
- Known, constant interest rates.
- Geometric Brownian motion dynamics.

## Practical Use
$d_1$ and $d_2$ are essential for all GK pricing and Greeks. $d_1$ determines Delta directly, while $d_2$ affects probability weighting. Understanding these parameters helps traders interpret how volatility, time decay, and moneyness affect option values.

---

### Local Currency Pricing Measure

**Equation:**

```
V_{local} = E^{Q^{local}} \left[ e^{-\int r_{f} ds} V_T \right]
```

## Equation Variables
This defines pricing under the foreign currency measure for derivatives.

- **$V_{local}$**: Value in local currency measure.
- **$E^{Q^{local}}$**: Expectation under local measure.
- **$\int r_{f} ds$**: Integral of foreign rate over time.
- **$e^{-\int r_{f} ds}$**: Stochastic discount factor (foreign money market).
- **$V_T$**: Payoff at terminal time.

## Interpretation
Foreign currency pays continuous dividend yield $r_f$, analogous to equity dividends. Expectation under foreign money market numeraire changes exchange rate drift. From domestic perspective, holding foreign currency foregoes $r_d$ but earns $r_f$, creating cost of carry $(r_d - r_f)$. This justifies Garman-Kohlhagen and extends to path-dependent options.

## Assumptions
- Foreign rate is stochastic but adapted.
- Markets are complete under chosen measure.
- Discount factor uses appropriate money market account.

## Practical Use
Fundamental to all currency derivative pricing. Justifies Garman-Kohlhagen and extends to barrier, Asian, and lookback options. Path-dependent option pricing by transforming expectation under appropriate measure. Connects to quanto pricing and cross-currency structures with multiple measures.

---

### Quanto Forward Price

**Equation:**

```
F_q = S_0 e^{(r_{d} - r_{f} - \rho \sigma_S \sigma_q)T}
```

## Equation Variables
A quanto adjusts the standard forward for correlation between exchange rate and underlying asset.

- **$F_q$**: Quanto-adjusted forward price.
- **$S_{0}$**: Current spot exchange rate.
- **$r_{d}, r_{f}$**: Domestic and foreign risk-free rates.
- **$\rho$**: Correlation between spot rate and underlying variable.
- **$\sigma_S$**: Volatility of spot exchange rate.
- **$\sigma_q$**: Volatility of foreign underlying.
- **$T$**: Time to maturity.

## Interpretation
The correlation adjustment $\rho \sigma_S \sigma_q$ represents covariance drag from stochastic exchange rate. Positive correlation reduces forward (favorable asset performance coincides with stronger currency, reducing domestic payoff). Negative correlation increases forward (favorable performance with currency depreciation increases domestic value).

## Assumptions
- Constant correlations over option life.
- Joint lognormal distribution of asset returns and exchange rates.
- No stochastic volatility or jumps.

## Practical Use
Quantos provide emerging market exposure without currency risk (e.g., Nikkei quanto swap). Examples include commodity quanto options. Correlation is crucial and often hedged with correlation swaps. Pricing requires sophisticated models incorporating correlation risk.

---

### Uncovered Interest Rate Parity

**Equation:**

```
E[S_T] = S_0 e^{(r_{d} - r_{f})T}
```

## Equation Variables
Uncovered Interest Rate Parity extends covered parity to expectations about future spot rates.

- **$E[S_T]$**: Expected future spot rate at time $T$.
- **$S_{0}$**: Current spot exchange rate.
- **$r_{d}$**: Domestic risk-free rate.
- **$r_{f}$**: Foreign risk-free rate.
- **$T$**: Time horizon.

## Interpretation
UIP states that expected spot rate changes offset the interest rate differential. If domestic rates exceed foreign rates ($r_d > r_f$), UIP predicts domestic currency depreciation by that differential. Unlike CIP, UIP is a behavioral hypothesis about expectation formation. Empirically, UIP performs poorly in short horizons—the "forward premium puzzle" shows higher-yielding currencies tend to appreciate, not depreciate.

## Assumptions
- Markets are efficient with all information incorporated.
- No risk premium exists (or is constant).
- Expectations are rational and unbiased.
- The relationship holds in expectation, not point-in-time.

## Practical Use
UIP is used in macroeconomic models to explain exchange rate dynamics and as a benchmark for currency valuation. Central banks use UIP-based frameworks to assess over/undervaluation. Forecasting models use deviations from UIP to signal potential moves, though predictive power is limited by empirical failures.

---

## Commodity Derivatives and Energy

Commodity Derivatives addresses the unique characteristics of commodity markets, including storage costs, convenience yields, and the mean-reverting nature of energy prices.

### Subcategories
- **Cost of Carry**: Futures pricing with storage and convenience yield
- **Spread Options**: Kirk's approximation and crack spreads
- **Energy Models**: Mean-reverting spot and Schwartz models
- **Spark/Crack Spreads**: Electricity and refinery margin products

### Black's Spread Option Model

**Equation:**

```
V = e^{-rT} \left[ F_1 N(d_1) - F_2 N(d_2) \right]
```

## Equation Variables
Black's spread option model extends the standard Black option pricing framework to options on the spread between two futures contracts, providing a closed-form solution for exchange options.

- **$V$**: Present value of the spread option.
- **$F_1$**: Futures price of the first underlying (long position).
- **$F_2$**: Futures price of the second underlying (short position).
- **$r$**: Risk-free interest rate.
- **$T$**: Time to option expiration.
- **$K$**: Strike price (triggering spread level).
- **$N(d_1), N(d_2)$**: Standard normal cumulative distribution functions.
- **$d_1 = \frac{\ln(F_1/F_2) + \frac{1}{2}\sigma^2 T}{\sigma\sqrt{T}}$**
- **$d_2 = d_1 - \sigma\sqrt{T}$**
- **$\sigma$**: Volatility of the spread.

## Interpretation
Black's spread option model prices options that pay off the positive difference between two futures prices at expiration. This formulation captures the exchange option nature of spread options, where the holder chooses between receiving one asset versus another. The model assumes bivariate log-normal distribution of the underlying futures prices, which implies that the spread itself follows a distribution that can be approximated. The key insight is that the spread option's value depends on the ratio of futures prices rather than their absolute levels, analogous to currency options. The correlation between underlying assets affects the spread's volatility and thus the option value.

## Assumptions
- Futures prices follow log-normal distributions
- Constant volatility of the spread
- No dividends or convenience yields during option life
- European exercise style
- Risk-neutral valuation applies
- Correlation between assets is constant and captured in spread volatility

## Practical Use
Black's spread option model is fundamental for pricing energy crack spread options, spark spread options, and other processing margin derivatives. The model enables market makers to provide quotes for these complex products and allows risk managers to hedge margin exposure. Energy companies use spread options to lock in processing margins while retaining upside participation. The model's simplicity makes it suitable for real-time pricing systems and margin calculations. However, for long-dated options or extreme correlation scenarios, more sophisticated approaches like Monte Carlo simulation with stochastic convenience yields may be necessary. The spread option framework also extends to weather derivatives and multi-commodity optimization problems.

---

### Calendar Option on Futures Spread

**Equation:**

```
V = e^{-rT} \mathbb{E} \left[ (F_2 - F_1)^+ \right]
```

## Equation Variables
A calendar option provides the right to enter into a spread position at a predetermined spread level, offering exposure to the time value of the spread between two futures contracts.

- **$V$**: Present value of the calendar option.
- **$r$**: Risk-free interest rate.
- **$T$**: Time to option expiration.
- **$F_2$**: Price of the far futures contract at expiration.
- **$F_1$**: Price of the near futures contract at expiration.
- **$K$**: Strike spread level (not shown but implied).
- **$(x)^+$**: Payoff function = $\max(x, 0)$.
- **$\mathbb{E}$**: Risk-neutral expectation.

## Interpretation
Calendar options are compound options that give the holder the right (but not obligation) to establish a spread position at a future date. The payoff depends on the spread between two futures contracts at expiration, making the option valuable when market expectations suggest significant spread widening or narrowing. The holder benefits from favorable spread movements while limiting downside risk to the option premium. Calendar options are commonly used by physical market participants to hedge timing uncertainty—for example, a producer uncertain about the optimal timing of physical sales might purchase a calendar option to lock in favorable spread levels. The option captures the optionality in choosing when to establish the spread position.

## Assumptions
- European exercise (only at expiration)
- Known and constant volatilities
- Correlated futures prices (captured in spread dynamics)
- No early exercise value
- Risk-neutral valuation applies
- Standardized contract specifications

## Practical Use
Calendar options are traded on major energy exchanges and over-the-counter markets, providing hedging and trading tools for spread exposure. They are particularly valuable for managing timing uncertainty in production, consumption, and storage decisions. The options allow market participants to benefit from favorable spread movements while capping downside exposure. Quantitatively, calendar options require modeling the joint dynamics of the two underlying futures, often using bivariate log-normal or more complex stochastic processes. Trading strategies include spread position protection, directional spread bets with limited risk, and volatility trading on the spread. The calendar option structure also extends to other compound option strategies such as chooser options and ladder options.

---

### Calendar Spread Value

**Equation:**

```
V_{spread} = (F_1 - F_2) = e^{-rT_2} \left(S_0 e^{-y_1 T_1} - S_0 e^{-y_2 T_2}\right)
```

## Equation Variables
Calendar spreads (also called time spreads or horizontal spreads) capture the price difference between futures contracts with different delivery dates, reflecting the cost of carry across time.

- **$V_{spread}$**: Value of the calendar spread (long near-month, short far-month).
- **$F_1$**: Futures price for near-term delivery at $T_1$.
- **$F_2$**: Futures price for far-term delivery at $T_2$.
- **$S_0$**: Current spot price.
- **$y_1$**: Convenience yield applicable to near-term period.
- **$y_2$**: Convenience yield applicable to far-term period.
- **$r$**: Risk-free interest rate.
- **$T_1, T_2$**: Times to delivery for the two contracts ($T_1 < T_2$).

## Interpretation
Calendar spreads isolate the time value component of futures pricing by offsetting spot price exposure. The spread value reflects the differential cost of carry between two time periods, incorporating potential changes in convenience yield, storage costs, and interest rates. In energy markets, calendar spreads often exhibit seasonal patterns reflecting storage requirements, demand cycles, and production constraints. A narrowing calendar spread (bullish spread) may indicate improving supply-demand conditions for near-term delivery, while widening spreads suggest near-term supply stress. The spread captures market expectations about future convenience yields and inventory trajectories.

## Assumptions
- Constant interest rate across both periods
- Convenience yields may differ by period but are deterministic
- No delivery option value or quality specifications
- Perfect correlation between spot prices at both maturities
- Sufficient liquidity for both contract months

## Practical Use
Calendar spreads are among the most liquid and widely traded energy derivatives, offering lower margin requirements and reduced directional exposure compared to outright futures positions. Traders use calendar spreads to express views on the term structure of commodity prices without taking spot risk. Seasonal trading strategies involve rolling calendar spreads to capture the seasonal storage arbitrage. Energy producers use calendar spreads to hedge production timing uncertainty, while consumers hedge future procurement costs. The spread's sensitivity to inventory data and supply disruptions makes it a key indicator for market structure analysis.

---

### Clean Spark Spread

**Equation:**

```
CSS = P_{power} - (HHV \times P_{gas}) - Costs_{emission}
```

## Equation Variables
The clean spark spread extends the standard spark spread to include carbon emission costs, providing a more accurate representation of the true margin available to gas-fired generation in carbon-constrained markets.

- **$CSS$**: Clean spark spread ($/MWh).
- **$P_{power}$**: Electricity price ($/MWh).
- **$HHV$**: Higher heating value of natural gas (BTU/scf).
- **$P_{gas}$**: Natural gas price ($/MMBtu).
- **$Costs_{emission}$**: Carbon emission costs ($/MWh) = EmissionsRate × CarbonPrice.
- **$EmissionsRate$**: CO2 emissions per MWh (typically 0.4-0.5 tons CO2/MWh for gas).
- **$CarbonPrice$**: Price per ton of CO2 under cap-and-trade or carbon tax.

## Interpretation
The clean spark spread adjusts the gross generation margin for carbon emission costs, reflecting the true economics of fossil fuel generation in markets with carbon pricing. Gas-fired generation produces approximately 0.4-0.5 tons of CO2 per MWh, so carbon prices significantly impact generation economics. The clean spark spread determines which generators are economically dispatched in carbon-constrained markets and affects investment in renewable generation. A positive clean spark spread indicates profitable operation even after accounting for carbon costs, while a negative spread may lead to reduced generation or fuel switching. The metric is increasingly important as carbon pricing mechanisms expand globally.

## Assumptions
- Known and constant carbon price (or appropriately hedged)
- Fixed emission rate based on fuel chemistry
- Carbon costs are fully passed through in market pricing
- No carbon leakage or border adjustment effects
- Standardized emissions accounting methodology

## Practical Use
Clean spark spread analysis is essential for power market participants operating in carbon-constrained regions such as the European Union (EU ETS), California (Cap-and-Trade), and increasingly in other jurisdictions. Generation companies use clean spark spread hedges to lock in carbon-adjusted margins. Investment decisions in new generation capacity now require clean spark spread projections over multi-decade asset lifetimes. Carbon allowance prices directly impact clean spark spreads and thus the economics of gas versus coal and renewable generation. The clean spark spread also affects power purchase agreement negotiations and corporate renewable energy procurement strategies.

---

### Coal Derivatives Pricing

**Equation:**

```
F_{coal} = S_0 e^{(r + u - y)T} \times QC \times CV
```

## Equation Variables
Coal derivatives incorporate quality adjustments that convert between different coal specifications, reflecting the energy content and usage characteristics of various coal types.

- **$F_{coal}$**: Price of specific coal contract.
- **$S_0$**: Base index price or reference coal price.
- **$r$**: Risk-free interest rate.
- **$u$**: Ocean freight and shipping costs.
- **$y$**: Time charter equivalent or convenience yield.
- **$T$**: Time to delivery.
- **$QC$**: Quality coefficient (ash, sulfur, moisture adjustments).
- **$CV$**: Calorific value ratio (heating content adjustment).

## Interpretation
Coal derivatives differ from other commodity derivatives due to significant quality variation between coal types. Thermal coal (for power generation) is priced based on energy content (kcal/kg) and impurity levels (ash, sulfur), while coking coal (for steel production) commands premium prices based on caking properties and metallurgical characteristics. The quality adjustment formula converts between actual delivered coal and reference specifications, protecting against basis risk from specification differences. Physical coal contracts typically reference published indices (such as Argus/McCloskey for thermal coal, Platts for metallurgical coal) with price adjustments for delivery location, timing, and quality. The coal market has unique dynamics influenced by mine production costs, shipping constraints, and demand from emerging market power sectors.

## Assumptions
- Reference indices accurately reflect market conditions
- Quality adjustments follow standardized formulas
- Shipping costs are known or hedged
- No quality disputes or sampling variability
- Contract specifications are unambiguous

## Practical Use
Coal derivatives provide hedging tools for mining companies, power generators, and trading firms. Forward contracts and swaps dominate the over-the-counter market, while exchange-traded products provide clearing and standardization. The complexity of coal quality adjustments requires sophisticated risk management to avoid basis losses. Coal price indices serve as reference points for long-term supply contracts and investment decisions. The energy transition is reshaping coal derivatives markets, with increasing focus on emissions costs, transition risk, and potential stranded assets. Coal price forecasting incorporates mine supply costs, shipping economics, renewable competition, and policy trajectories.

---

### Commodity Index Roll Yield Optimization

**Equation:**

```
Y_{roll} = \sum_{i=1}^{n} w_i \left( \frac{F_{i+1}}{F_i} - 1 \right)
```

## Equation Variables
Commodity index roll yield optimization addresses the challenge of maintaining index exposure while minimizing the adverse impact of rolling futures contracts across the forward curve.

- **$Y_{roll}$**: Cumulative roll yield over the rebalancing period.
- **$w_i$**: Weight of contract $i$ in the index.
- **$F_i$**: Futures price for contract $i$.
- **$F_{i+1}$**: Futures price for the next contract in the roll hierarchy.
- **$n$**: Number of contracts in the roll.

## Interpretation
The roll yield component of commodity index returns significantly impacts long-term performance, particularly in contango markets where systematic roll losses erode spot returns. Traditional index methodologies roll contracts according to fixed schedules, but enhanced approaches seek to optimize roll timing and contract selection to reduce negative roll yield. Strategies include rolling only when contango exceeds thresholds, using longer-dated contracts to reduce roll frequency, and dynamically adjusting weights to capture favorable curve movements. The optimization problem balances roll yield improvement against tracking error and transaction costs. Research shows that optimized rolling can add 1-3% annual return in contango markets without significantly increasing risk.

## Assumptions
- Historical roll yield patterns are predictive of future behavior
- Transaction costs are acceptable for enhanced strategies
- Tracking error relative to benchmark is within tolerance
- Market liquidity supports strategy implementation
- No regime changes that invalidate historical patterns

## Practical Use
Institutional investors and commodity trading advisors employ roll yield optimization to enhance index returns and differentiate products. The methodology requires sophisticated modeling of forward curve dynamics, transaction cost analysis, and risk budgeting. Backwardation harvesting strategies specifically target markets where positive roll yield enhances returns, while contango mitigation strategies reduce losses in markets with negative roll characteristics. The optimization is ongoing, as market structure evolves with changing storage economics, production patterns, and investor flows. Performance attribution separates roll yield from spot return and collateral yield, providing transparency for investors evaluating commodity strategies.

---

### Contango/Backwardation Measure (Basis)

**Equation:**

```
Basis = F - S = (r + u - y) S T
```

## Equation Variables
The basis represents the difference between futures and spot prices, providing a direct measure of market structure (contango or backwardation) and the implied cost of carry.

- **$Basis$**: Futures minus spot price (can be positive or negative).
- **$F$**: Futures price for delivery at time $T$.
- **$S$**: Current spot price.
- **$r$**: Risk-free interest rate (financing cost).
- **$u$**: Storage cost as proportion of spot price.
- **$y$**: Convenience yield (benefit from physical ownership).
- **$T$**: Time to delivery.

## Interpretation
The basis measures the market's contango or backwardation, directly reflecting the net cost of carry. A positive basis (futures > spot) indicates contango, where the market pays for the privilege of deferred delivery to cover storage and financing costs. A negative basis (futures < spot) indicates backwardation, where the convenience yield from physical ownership exceeds carrying costs, often during supply concerns or inventory drawdowns. The basis determines the economics of cash-and-carry arbitrage: when the basis exceeds carrying costs, arbitrageurs buy spot, store, and deliver against futures, driving the basis toward equilibrium. The relationship is linear for small $T$ but requires the exponential formulation for longer horizons.

## Assumptions
- Perfect correlation between spot and futures returns
- Known and constant carry costs and benefits
- No transaction costs or execution risk
- Available storage capacity and financing
- Standardized delivery specifications

## Practical Use
The basis is closely monitored by physical traders, arbitrageurs, and risk managers as a real-time indicator of market structure. Storage arbitrage profitability depends on the basis relative to actual carrying costs. Hedging effectiveness depends on the basis risk (imperfect correlation between spot and futures). The basis varies seasonally, reflecting inventory cycles and production patterns. In natural gas markets, basis trading (trading location differentials) is a major activity, with prices quoted for various delivery points relative to benchmark contracts. Understanding basis dynamics is essential for physical procurement, logistics optimization, and financial hedging programs.

---

### Crack Spread (3:2:1 Ratio)

**Equation:**

```
CrackSpread = 3P_{gasoline} - 2P_{crude} - P_{heating-oil}
```

## Equation Variables
The 3:2:1 crack spread is the most common refinery margin metric, representing the theoretical profit from processing one barrel of crude oil into three barrels of gasoline and two barrels of other products (accounting for the 2:1 output ratio).

- **$CrackSpread$**: Theoretical refining margin per barrel of crude processed.
- **$P_{gasoline}$**: Price of gasoline (often RBOB or conventional blendstock).
- **$P_{crude}$**: Price of crude oil (often WTI or Brent).
- **$P_{heating-oil}$**: Price of heating oil or diesel (light-heavy differential).
- **$3$**: Gallons of gasoline produced per barrel (represents 42 gallons total output).
- **$2$**: Weighting factor balancing gasoline and distillate output.

## Interpretation
The crack spread captures the value added by the refining process, representing the gross margin available to convert crude oil into finished products. A positive crack spread indicates that product revenues exceed crude costs, while a negative spread signals margin compression or loss. The 3:2:1 ratio reflects typical U.S. refinery configuration optimized for gasoline production, though actual refiners may have different yield configurations. The spread is monitored daily by traders, investors, and energy analysts as a leading indicator of refinery profitability and crude oil demand strength. Seasonal patterns in the crack spread reflect demand cycles for transportation fuels and seasonal gasoline specifications.

## Assumptions
- Fixed yield assumptions (3:2:1 ratio approximates actual refinery output)
- Product prices reflect current market values
- No operating costs beyond crude acquisition (simplified margin)
- Refinery can sell all products at quoted prices
- Standardized product specifications (RBOB, ULSD)

## Practical Use
The crack spread is the most actively traded energy spread, with exchange-traded crack spread futures available on major exchanges. Refiners use crack spread hedges to lock in margins by selling crude oil forward and buying products forward (or using crack spread futures directly). The spread's historical volatility provides risk management parameters for margin-at-risk calculations. Quantitative trading strategies exploit crack spread mean reversion and seasonal patterns. The crack spread also serves as an economic indicator, with widening spreads suggesting strong product demand or crude oversupply, while narrowing spreads indicate product oversupply or crude shortage.

---

### Electricity Spot Price (Langevin Model)

**Equation:**

```
dS_t = -\lambda (S_t - \mu) dt + \sigma dW_t
```

## Equation Variables
The Langevin model extends the Ornstein-Uhlenbeck process to capture the unique dynamics of electricity spot prices, characterized by rapid mean-reversion, extreme spikes, and high volatility.

- **$S_t$**: Electricity spot price at time $t$ ($/MWh).
- **$\lambda$**: Mean-reversion rate (speed of price adjustment).
- **$\mu$**: Long-run mean price level or fundamental value.
- **$\sigma$**: Instantaneous volatility parameter.
- **$dW_t$**: Brownian motion increment.
- **$S_t - \mu$**: Price deviation from equilibrium.

## Interpretation
The Langevin model (a specific form of OU process) captures electricity price dynamics characterized by rapid mean-reversion following price spikes. Unlike many commodities, electricity cannot be economically stored, resulting in prices that spike dramatically during supply-demand imbalances and then rapidly revert to normal levels. The mean-reversion rate ($\lambda$) is typically much higher for electricity than for storable commodities, reflecting the market's rapid adjustment through supply response and demand elasticity. The model captures the empirical observation that electricity prices spend most of their time near normal levels with occasional extreme excursions. The volatility parameter ($\sigma$) captures the magnitude of normal price variations, while the model may be extended with jump components to better capture extreme events.

## Assumptions
- Mean-reversion is instantaneous and continuous
- Price spikes are not explicitly modeled (requires jump extension)
- Volatility is constant and homoscedastic
- Long-run mean is constant and known
- No seasonal patterns in parameters (may be calendar-dependent)
- Perfect market efficiency in price discovery

## Practical Use
The Langevin model serves as a foundation for electricity spot price modeling in power markets. It enables pricing of standard power derivatives including forwards, options, and swaps. Risk management applications include calculating Value-at-Risk for power portfolios and stress testing extreme scenarios. The model's analytical tractability supports real-time risk assessment and margining. Extended versions incorporating seasonality, spikes (jump-diffusion), and stochastic volatility better capture observed power price dynamics. The model informs capacity expansion decisions, generator dispatch optimization, and demand response program design. Quantitative trading strategies exploit mean-reversion tendencies captured by the Langevin dynamics.

---

### Emissions Allowance Valuation

**Equation:**

```
V_{EUA} = \mathbb{E} \left[ e^{-rT} \max(S_T - K, 0) \right]
```

## Equation Variables
Emissions allowance valuation applies option pricing methodology to carbon markets, where allowances represent the right to emit one ton of CO2 equivalent.

- **$V_{EUA}$**: Value of EU Allowances (EU ETS) or similar emissions credits.
- **$S_T$**: Spot price of allowances at time $T$.
- **$K$**: Strike price or cost floor.
- **$r$**: Risk-free discount rate.
- **$T$**: Time to allowance delivery or compliance deadline.
- **$\mathbb{E}$**: Risk-neutral expectation.
- **$\max(S_T - K, 0)$**: Call option payoff structure.

## Interpretation
Emissions allowance prices in cap-and-trade systems reflect the marginal cost of abatement and the stringency of the emissions cap. The EU Allowance (EUA) price in the European Emissions Trading Scheme demonstrates how carbon prices have evolved from single digits to over 100 EUR/tCO2, driven by policy reforms and market reforms. Allowances function like commodities with unique supply dynamics determined by policy decisions rather than production costs. The option-like structure captures the asymmetric impact of carbon costs: installations face unlimited downside from high carbon prices but limited upside from low prices. Forward curves in carbon markets reflect expectations about future policy, economic activity, and technology costs.

## Assumptions
- Policy framework remains stable over the valuation horizon
- Allowances are fungible across sectors and time periods
- Perfect enforcement and monitoring
- Market liquidity sufficient for accurate price discovery
- Correlation with energy prices is captured in dynamics

## Practical Use
Emissions derivatives include spot allowances, forward contracts, options, and futures across multiple compliance markets (EU ETS, California, UK ETS, China national market). Industrial companies hedge compliance costs using forwards and options, while financial traders position on policy outcomes and macro trends. The interaction between carbon prices and energy markets creates cross-commodity trading opportunities, particularly between coal-to-gas switching in power generation. Carbon credit quality distinctions (forestry, renewable energy, avoidance versus removal) affect pricing and regulatory acceptance. The evolution of carbon markets toward broader coverage and higher prices makes emissions derivatives increasingly important for corporate risk management and investment decisions.

---

### Futures Forward Spread Pricing

**Equation:**

```
Spread = F_1 - F_2
```

## Equation Variables
The forward spread represents the pure price differential between two futures contracts, serving as the fundamental building block for spread trading strategies in commodity markets.

- **$Spread$**: Price difference between two futures contracts.
- **$F_1$**: Price of the first futures contract (typically the lead month).
- **$F_2$**: Price of the second futures contract (typically the following month).

## Interpretation
The forward spread captures the market's assessment of the cost of carry between two delivery periods. Unlike calendar spreads based on the same underlying commodity, inter-commodity spreads compare related but distinct commodities (such as crude oil vs. gasoline). The spread filters out common price movements driven by macroeconomic factors, isolating the relative value between the two instruments. In contango markets, the spread is typically positive (near-month cheaper than far-month), while in backwardation, the spread may be negative or small. The spread's evolution over time provides insight into changing market structure, storage economics, and supply-demand dynamics.

## Assumptions
- Both contracts share the same underlying delivery specifications
- Sufficient liquidity for accurate price observation
- No delivery option value differential between contracts
- Normal market conditions without extreme dislocations

## Practical Use
Spread trading is fundamental to commodity markets, offering reduced volatility and directional risk while maintaining exposure to relative value opportunities. Traders distinguish between intra-commodity spreads (same commodity, different maturities) and inter-commodity spreads (related commodities). The spread's historical relationship provides mean-reversion trading signals, while fundamental analysis identifies structural changes in the spread relationship. Energy traders closely monitor crack spread, spark spread, and other processing spreads that capture refining and generation margins. Spread orders constitute a significant portion of exchange volume, particularly in crude oil and natural gas markets.

---

### Futures Price (Cost of Carry)

**Equation:**

```
F = S_0 e^{(r + u - y)T}
```

## Equation Variables
The futures price for a commodity reflects the spot price adjusted for the cost of carry, which includes financing costs, storage, and the convenience yield from holding the physical commodity.

- **$F$**: Futures price for delivery at time $T$.
- **$S_{0}$**: Current spot price of the commodity.
- **$r$**: Risk-free interest rate (cost of financing).
- **$u$**: Storage cost as a proportion of spot price per unit time.
- **$y$**: Convenience yield (benefit from physically holding the commodity).
- **$T$**: Time to delivery in years.

## Interpretation
The cost-of-carry model generalizes the covered interest parity to commodities. The futures price exceeds the spot price when the cost of carry ($r + u$) exceeds the convenience yield ($y$), creating contango. When $y > r + u$, the futures price is below spot (backwardation), reflecting the premium for immediate access to the commodity. For energy commodities with limited storage, this relationship is dynamic and can shift rapidly based on inventory levels and supply disruptions. The exponential form reflects continuous compounding conventions common in derivatives pricing.

## Assumptions
- Perfect correlation between spot and futures price movements
- No transaction costs, bid-ask spreads, or delivery frictions
- Ability to store the commodity and borrow at known rates
- Constant convenience yield (may be state-dependent in practice)
- No credit risk or counterparty default considerations
- Continuous trading and instantaneous arbitrage execution

## Practical Use
Cost-of-carry models are fundamental for futures valuation, calendar spread pricing, and identifying arbitrage opportunities. Traders use deviations from this relationship to construct trading strategies. In practice, convenience yield varies with inventory levels, seasonal demand patterns, and market conditions. The model underpins the theory of optimal storage (Hotelling's rule) and explains the shape of the forward curve across different maturities. Energy traders particularly focus on the cost-of-carry relationship for crude oil, natural gas, and refined products.

---

### Futures Price with Discrete Storage Costs

**Equation:**

```
F = (S_0 + U)e^{rT} - V
```

## Equation Variables
This formulation of futures pricing accounts for explicit storage costs and convenience benefits over discrete time periods, providing a more practical framework for commodities with substantial storage requirements.

- **$F$**: Futures price for delivery at time $T$.
- **$S_{0}$**: Current spot price of the commodity.
- **$U$**: Present value of total storage costs over the holding period.
- **$V$**: Present value of convenience benefits or scrap value.
- **$r$**: Risk-free interest rate.
- **$T$**: Time to delivery in years.

## Interpretation
This model extends the continuous-time cost-of-carry formula to handle explicit storage costs and benefits. The futures price equals the future value of the spot price plus storage costs, minus any convenience benefits or residual value. For physical traders, storage costs ($U$) include warehousing, insurance, and handling fees, while convenience yield ($V$) represents the economic benefit of having physical inventory available. The relationship is fundamental to cash-and-carry arbitrage, where traders buy spot, store, and deliver against futures contracts. The arbitrage bounds established by this model define trading opportunities and price relationships across the forward curve.

## Assumptions
- Storage costs are known and deterministic
- Convenience benefits can be quantified and valued
- No restrictions on physical storage capacity
- Perfect hedge ratio between spot and futures positions
- Continuous monitoring and rebalancing capability
- No quality degradation or spoilage during storage

## Practical Use
This formulation is particularly valuable for commodities with significant storage infrastructure requirements, such as crude oil, refined products, and agricultural goods. Trading desks use it to evaluate the economics of physical storage (contango plays) and to identify mispriced futures contracts. The model informs decisions about tank farms, pipeline capacity, and inventory management. For agricultural commodities, it incorporates storage seasonability and helps determine optimal release strategies from strategic petroleum reserves or grain elevators.

---

### Gas Storage Valuation (Dynamic Programming)

**Equation:**

```
V_t(S_t) = \max \left\{ \mathbb{E}_t \left[ e^{-r\Delta} V_{t+\Delta}(S_{t+\Delta}) \right] , S_t - C_t \right\}
```

## Equation Variables
Gas storage valuation uses dynamic programming to determine the optimal injection and withdrawal strategy, valuing the storage asset as the maximum of the continuation value and the immediate value from selling physical inventory.

- **$V_t(S_t)$**: Value of storage at time $t$ with inventory level $S_t$.
- **$\mathbb{E}_t$**: Conditional expectation given information at time $t$.
- **$e^{-r\Delta}$**: Discount factor over the decision interval.
- **$V_{t+\Delta}(S_{t+\Delta})$**: Value at the next decision point.
- **$S_t$**: Current inventory level.
- **$C_t$**: Cost of holding inventory (storage fees, financing).
- **$r$**: Risk-free discount rate.
- **$\Delta$**: Time step size.

## Interpretation
Gas storage valuation exemplifies the real options approach to commodity assets, where the storage operator faces a sequential decision problem: inject gas (increase inventory), withdraw gas (decrease inventory), or hold (do nothing). The value function captures the optimal decision at each point, balancing the time value of optionality against immediate profits. The continuation value represents the expected value of maintaining flexibility, while the immediate value ($S_t - C_t$) captures the value from selling inventory now. The optimal strategy creates a trigger structure where injection occurs when prices are low relative to expected future prices, and withdrawal occurs when prices are high. The value of storage represents the difference between forward prices and spot prices in contango markets.

## Assumptions
- Perfect foresight of future price distributions
- Known and deterministic convenience yields
- Storage capacity and withdrawal/injection rate constraints
- No operational constraints (outages, maintenance)
- Continuous or discrete time with appropriate time step
- Risk-neutral valuation applies

## Practical Use
Storage valuation is critical for energy companies, natural gas utilities, and trading firms managing storage assets. The dynamic programming framework informs trading decisions, operational planning, and asset valuations. Modern implementations use finite difference methods, Monte Carlo simulation with regression (Least Squares Monte Carlo), or tree-based methods to handle the high-dimensional state space. The valuation incorporates seasonal price patterns, weather derivatives, and correlation with other energy markets. Storage assets are often hedged using calendar spreads and options that capture the roll yield. The optionality embedded in storage is particularly valuable during periods of high price volatility and supply uncertainty.

---

### Implicit Convenience Yield Calculation

**Equation:**

```
y = r + u - \frac{1}{T} \ln\left(\frac{F}{S_0}\right)
```

## Equation Variables
The implicit convenience yield is derived from observed market prices, providing insight into the market's assessment of the value of holding physical commodity inventory.

- **$y$**: Implicit convenience yield (annualized continuous rate).
- **$r$**: Risk-free interest rate.
- **$u$**: Storage cost as proportion of spot price.
- **$F$**: Observed futures price.
- **$S_{0}$**: Current spot price.
- **$T$**: Time to futures delivery.

## Interpretation
The convenience yield captures the economic benefit of physically possessing a commodity, including supply security, production flexibility, and processing optionality. High convenience yields indicate strong immediate demand for physical access relative to future availability, often occurring during supply disruptions or inventory drawdowns. The formula rearranges the cost-of-carry relationship to solve for the implied yield given observed market prices. When futures trade at a discount to spot ($F < S_0$), the implied convenience yield exceeds the sum of financing and storage costs, signaling backwardation. This metric is closely monitored by market participants as a leading indicator of supply-demand tightness and inventory levels.

## Assumptions
- Observed futures and spot prices reflect market equilibrium
- Storage costs are known and constant over the period
- No market frictions or transaction costs
- Interest rates are constant or appropriately term-structured
- Futures prices are for standard delivery specifications

## Practical Use
Convenience yield estimation is critical for physical traders, risk managers, and quantitative analysts. It serves as an input for inventory optimization models, production planning, and storage valuation. Trading strategies often involve taking positions based on expected changes in convenience yield, such as buying physical inventory when implied yields suggest undervaluation. Energy companies use implied convenience yields to evaluate the economics of holding inventory versus selling forward. The metric also helps identify structural market regime changes, such as the transition from contango to backwardation during supply crises.

---

### LNG Derivatives and Destination Flexibility

**Equation:**

```
V_{LNG} = \max \left\{ F_{spot}, F_{dest} - C_{shipping} - C_{regas} \right\}
```

## Equation Variables
LNG derivatives incorporate the unique flexibility of destination choice and shipping logistics that distinguish LNG from pipeline gas trading.

- **$V_{LNG}$**: Value of LNG cargo or contract.
- **$F_{spot}$**: Spot price at destination market (e.g., Asian LNG, European TTF).
- **$F_{dest}$**: Forward price at alternative destination.
- **$C_{shipping}$**: Shipping cost (vessel charter or spot rate).
- **$C_{regas}$**: Regasification and terminal costs.
- **$\max$**: Optionality to route cargo to highest-value market.

## Interpretation
LNG derivatives are complicated by the physical constraints of liquefaction, shipping, and regasification that create significant optionality in cargo routing. Unlike pipeline gas with fixed delivery points, LNG cargoes can be redirected to markets offering the highest netback price (destination option). This flexibility is valuable during price dislocations between regional markets and has driven the development of spot LNG trading. The destination option is analogous to a multi-asset option where the holder can choose the optimal delivery point. Recent market developments include the emergence of global LNG hubs, increased liquidity in spot trading, and the development of derivatives that capture shipping optionality. The relationship between Henry Hub, TTF, JKM, and other regional gas benchmarks creates arbitrage opportunities and trading strategies.

 ## Assumptions
- Sufficient shipping capacity and scheduling flexibility
- Terminal access and regasification capacity available
- No destination restrictions or contractual limitations
- Known shipping costs and regasification fees
- Complete markets for destination pricing

## Practical Use
LNG derivatives enable trading firms, utilities, and integrated energy companies to manage price risk across multiple regional markets. The development of LNG shipping as a tradable service has increased market efficiency and arbitrage opportunities. Destination flexibility options are valued using multi-factor models that capture regional price correlations and shipping cost dynamics. Portfolio optimization incorporates the optionality of cargo routing in supply chain planning. The growth of spot LNG trading has created new hedging needs addressed by over-the-counter derivatives and exchange-traded products. Understanding LNG derivatives is essential for market participants navigating the globalized gas market.

---

### Multi-Commodity Optimization Framework

**Equation:**

```
\max_{x} \quad \mu^T x - \frac{1}{2} \lambda x^T \Sigma x \quad \text{s.t.} \quad Ax \leq b, \quad Cx = d
```

## Equation Variables
Multi-commodity optimization extends portfolio theory to commodity portfolios, incorporating the unique characteristics of commodity returns including roll yield, basis risk, and physical constraints.

- **$x$**: Vector of commodity positions (futures, physical, derivatives).
- **$\mu$**: Expected return vector for commodity positions.
- **$\Sigma$**: Covariance matrix of commodity returns.
- **$\lambda$**: Risk aversion coefficient.
- **$Ax \leq b$**: Inequality constraints (e.g., concentration limits, gross exposure).
- **$Cx = d$**: Equality constraints (e.g., beta target, sector allocation).

## Interpretation
Multi-commodity optimization provides the mathematical framework for constructing optimal commodity portfolios that balance expected returns against risk subject to trading and portfolio constraints. The objective function maximizes risk-adjusted return (mean-variance framework), while constraints capture practical limitations including concentration limits, liquidity constraints, and strategic allocation targets. Commodity portfolios require special consideration of roll yield, which can dominate spot returns over time, and basis risk from imperfect correlation between spot and futures. The covariance matrix captures not only volatility but also cross-commodity correlations, which are often high within energy complexes (crude, gasoline, heating oil) and between related commodities (natural gas, power, coal). Optimization enables systematic hedging of existing exposures and tactical positioning based on relative value views.

## Assumptions
- Expected returns are forecastable and stable
- Covariance matrix is invertible and constant (or appropriately estimated)
- Constraints are linear and tractable
- Transaction costs are either negligible or incorporated separately
- Risk measures beyond variance (VaR, CVaR) are not required

## Practical Use
Multi-commodity optimization is employed by commodity trading advisors, energy company treasury functions, and institutional investors allocating to commodities. The framework supports both strategic asset allocation (long-term target weights) and tactical trading (short-term positioning based on market views). Risk budgeting approaches decompose portfolio risk into commodity and factor contributions, enabling informed risk allocation decisions. Constraint sets commonly include gross exposure limits, sector concentration limits, liquidity-based position limits, and regulatory requirements for managed funds. The optimization is typically implemented using quadratic programming solvers, with robustness considerations for estimation error in expected returns and covariances.

---

### Schwartz One-Factor Model

**Equation:**

```
d\ln S_t = \kappa(\theta - \ln S_t)dt + \sigma dW_t
```

## Equation Variables
The Schwartz one-factor model extends the Ornstein-Uhlenbeck framework to log-prices, combining mean-reversion with log-normal dynamics to capture the proportional relationship between price shocks and price levels.

- **$S_t$**: Commodity spot price at time $t$.
- **$\kappa$**: Mean-reversion speed in log-space.
- **$\theta$**: Long-run mean of log-price (log of fundamental value).
- **$\sigma$**: Volatility of log-returns.
- **$\ln S_t$**: Natural logarithm of spot price.
- **$dW_t$**: Wiener process increment.

## Interpretation
The Schwartz model addresses a key limitation of the standard OU model: the proportional relationship between price shocks and price levels. In log-space, the model captures the observation that percentage changes are more constant than absolute changes across different price levels. The log-price follows an OU process, which implies that prices follow a log-normal distribution in levels. The model captures the long-run equilibrium where prices revert to a fundamental value determined by marginal production costs, demand elasticity, and available resources. The risk-neutral dynamics incorporate a risk premium that compensates investors for holding commodity exposure. This model is widely used for commodity derivatives pricing and serves as the foundation for more complex multi-factor extensions.

## Assumptions
- Log-prices follow mean-reverting dynamics
- Risk-adjusted drift is known and constant
- Volatility is constant and proportional to price level
- No seasonal patterns or calendar effects
- Single source of uncertainty (one-factor)
- Complete markets for hedging

## Practical Use
The Schwartz one-factor model enables analytical pricing of commodity forwards, futures, and European options. Calibration to market data yields implied parameters that inform risk management and trading decisions. The model's forward curve dynamics provide insight into term structure evolution and roll yield expectations. Energy trading companies use Schwartz-type models for asset valuation, portfolio optimization, and scenario analysis. The model also serves as a benchmark for comparing more complex pricing approaches. Despite its simplicity, the Schwartz model captures key features of commodity price behavior and remains widely used in both academic research and industry applications.

---

### Schwartz Two-Factor Model

**Equation:**

```
dS_t = \kappa_S (\theta_S - \ln S_t)dt + \sigma_S dW_S \quad ; \quad d\delta_t = \kappa_{\delta}(\theta_{\delta} - \delta_t)dt + \sigma_{\delta} dW_{\delta}
```

## Equation Variables
The Schwartz two-factor model introduces stochastic convenience yield as a second state variable, enabling more realistic capture of the relationship between commodity prices, inventory levels, and the cost of carry.

- **$S_t$**: Commodity spot price at time $t$.
- **$\delta_t$**: Convenience yield (or its proxy such as net investment return).
- **$\kappa_S$**: Mean-reversion speed of log-price.
- **$\theta_S$**: Long-run mean of log-price.
- **$\kappa_{\delta}$**: Mean-reversion speed of convenience yield.
- **$\theta_{\delta}$**: Long-run mean of convenience yield.
- **$\sigma_S$**: Volatility of log-price.
- **$\sigma_{\delta}$**: Volatility of convenience yield.
- **$dW_S, dW_{\delta}$**: Correlated Wiener processes.
- **$\rho$**: Correlation between price and convenience yield shocks.

## Interpretation
The two-factor Schwartz model addresses a fundamental limitation of single-factor models: the observed correlation between commodity prices and convenience yields. When inventories are low, convenience yields rise (reflecting the value of physical access) while prices may also be high (due to supply constraints), creating negative correlation between price and convenience yield innovations. The model captures this relationship through correlated state variables, improving the model's ability to match observed forward curve shapes and option volatility surfaces. The two-factor structure allows for separate dynamics of short-term price movements (influenced by convenience yield shocks) and long-term equilibrium (governed by fundamental factors). This formulation provides more realistic term structure dynamics and improves option pricing accuracy.

## Assumptions
- Convenience yield is observable or proxied (e.g., by net investment return)
- State variables follow correlated mean-reverting dynamics
- Volatilities are constant
- Market is complete with respect to the two factors
- Correlation parameter is constant over time
- No jumps or regime changes

## Practical Use
The two-factor Schwartz model enables more accurate pricing of path-dependent derivatives and options with longer maturities. It improves the modeling of forward curve dynamics, particularly the relationship between near-term and long-term prices. Energy trading desks use the model for valuation of storage assets, swing contracts, and other complex derivatives with optionality. The stochastic convenience yield captures the inventory effect that is crucial for commodities with storage. Calibration requires market data from both forward prices and options, providing a richer parameter set that better reflects market expectations. The model serves as a foundation for more complex multi-factor and hybrid models used by sophisticated commodity market participants.

---

### Spark Spread

**Equation:**

```
SparkSpread = P_{power} - HHV \times P_{gas}
```

## Equation Variables
The spark spread represents the theoretical margin available to a natural gas-fired power plant, calculated as the difference between electricity price and the cost of fuel required to generate one unit of power.

- **$SparkSpread$**: Gross margin for gas-fired generation ($/MWh).
- **$P_{power}$**: Electricity price ($/MWh).
- **$HHV$**: Higher heating value of natural gas (typically 1,027-1,035 BTU/scf).
- **$P_{gas}$**: Natural gas price ($/MMBtu).
- **$HeatRate$**: Heat rate in BTU/kWh (gas plants typically 7,000-12,000 BTU/kWh).

## Interpretation
The spark spread captures the economic viability of gas-fired power generation, representing the margin available to cover fixed costs (capital, operations, maintenance) and provide profit. When spark spreads are positive, gas-fired generation is economically dispatched and generators earn margin; when negative, generators prefer not to run and may seek alternative arrangements. The spark spread is fundamental to electricity market economics, as gas-fired plants often set the marginal price in many power markets. The heat rate conversion ($1,000 \text{ BTU/kWh} = 1 \text{ MMBtu/MWh}$) allows direct comparison between fuel costs and power prices. Seasonal patterns reflect varying demand for both electricity and gas.

## Assumptions
- Constant heat rate efficiency for the generating unit
- No start-up costs or minimum load constraints
- Perfect market liquiditity for power and gas
- No capacity payments or ancillary service revenue
- Standardized BTU content for gas pricing

## Practical Use
Spark spread options and futures are among the most liquid power market derivatives, allowing generators to hedge generation margins and electricity consumers to manage procurement costs. Power plant valuations heavily depend on expected spark spreads over the asset's lifetime. The spark spread drives investment decisions in new generation capacity and retirement decisions for existing plants. In merit-order dispatch systems, the spark spread determines which generators operate and when. Trading strategies include spark spread arbitrage, spark spread correlation trading with other energy markets, and spark spread seasonal positioning based on weather and demand forecasts.

---

### Spread Option Pricing (Kirk's Approximation)

**Equation:**

```
V \approx C(F_1, K^*, \sigma_{spread}) \quad \text{where} \quad K^* = K e^{-(r + u_2)T_2}
```

## Equation Variables
Kirk's approximation provides a computationally efficient method for pricing spread options on two futures contracts, adjusting for the correlation between underlying assets.

- **$V$**: Value of the spread option.
- **$C$**: Standard Black's call option pricing function.
- **$F_1$**: Futures price of the first underlying.
- **$K^*$**: Adjusted strike price incorporating carry costs.
- **$K$**: Original strike price (spread level).
- **$F_2$**: Futures price of the second underlying.
- **$r$**: Risk-free interest rate.
- **$u_2$**: Storage cost for the second underlying.
- **$T$**: Time to option expiration.
- **$\sigma_{spread}$**: Effective volatility of the spread.

## Interpretation
Spread options provide the right to realize a positive difference between two commodity prices, offering exposure to relative value movements while limiting downside risk. Kirk's approximation extends Black's model to the spread context by adjusting the strike and volatility to account for the correlation between the two underlying futures. The approximation works well when the correlation between assets is not extreme and when the at-the-money assumption holds approximately. The effective spread volatility combines the individual volatilities and correlation: $\sigma_{spread} = \sqrt{\sigma_1^2 + \sigma_2^2 - 2\rho\sigma_1\sigma_2}$. This formulation allows traders to price options on crack spreads, spark spreads, and other processing margins common in energy markets.

## Assumptions
- Log-normal distribution of underlying futures prices
- Constant correlation between the two underlying prices
- No early exercise (European-style option)
- Known and constant volatilities
- No dividends or convenience yields (or included in futures pricing)

## Practical Use
Spread options are extensively used in energy markets to hedge processing margins, storage economics, and time value differences. Refiners use crack spread options to protect refining margins against crude oil and product price movements. Power generators purchase spark spread options to hedge the margin between electricity and natural gas prices. The Kirk approximation provides quick pricing for market-making and risk management purposes, though more complex models (such as multidimensional trees or Monte Carlo simulation) may be used for exact pricing of long-dated or highly correlated spreads. Trading desks use spread options to express views on the relative strength of different energy markets.

---

### Stack-and-Roll Strategy

**Equation:**

```
Roll = \sum_{i=1}^{n} \Delta F_i
```

## Equation Variables
The stack-and-roll strategy describes a hedging or investment approach that maintains continuous futures exposure by systematically rolling expiring positions into longer-dated contracts.

- **$Roll$**: Total roll cost or benefit over the holding period.
- **$\Delta F_i$**: Change in futures price from roll $i-1$ to roll $i$.
- **$n$**: Number of rolls during the holding period.
- **$F_i$**: Futures price at the time of roll $i$.

## Interpretation
The stack-and-roll strategy is fundamental to commodity index investing and hedging programs that require continuous futures exposure. As near-dated futures contracts approach expiration, positions must be closed and rolled into longer-dated contracts to maintain exposure. The roll return (or roll yield) is the difference between the return of the rolled futures position and the underlying spot return. In contango markets, rolling forward creates negative roll yield (long positions sell low and buy high), while backwardation creates positive roll yield. The cumulative roll effect significantly impacts long-term commodity index returns and must be factored into investment decisions and hedging strategies. The strategy can be implemented with monthly, quarterly, or custom roll schedules depending on liquidity and exposure needs.

## Assumptions
- Sufficient liquidity in rolled-to contracts
- Roll timing is predetermined or optimally selected
- No transaction costs or bid-ask slippage
- Perfect execution at observed prices
- Consistent contract specifications and delivery terms

## Practical Use
Stack-and-roll strategies are essential for commodity index funds, pension fund allocations, and corporate hedging programs. Commodity index providers (such as Bloomberg, S&P GSCI) publish roll schedules that define how indices manage expiration. Quantitative hedge funds develop optimized roll strategies to minimize negative roll yield in contango and maximize positive roll yield in backwardation. The strategy's effectiveness depends on the shape of the forward curve and expectations about future curve evolution. Roll analysis is incorporated into performance attribution, separating returns into spot return, roll return, and collateral return components. For physical market participants, understanding roll dynamics informs decisions about physical inventory timing and forward contracting strategies.

---

### Weather Derivative (Heating Degree Days)

**Equation:**

```
HDD = \max \left(0, 18 - \frac{T_{max} + T_{min}}{2} \right)
```

## Equation Variables
Weather derivatives are financial instruments that pay based on weather measurements, with Heating Degree Days (HDD) being the most common structure for winter-related weather risk.

- **$HDD$**: Daily heating degree day accumulation.
- **$T_{max}$**: Maximum daily temperature (typically in Celsius).
- **$T_{min}$**: Minimum daily temperature.
- **$T_{avg}$**: Average daily temperature = $(T_{max} + T_{min})/2$.
- **$18$**: Base temperature (varies by location and application).
- **$\max(0, \cdot)$**: Floor function ensuring non-negative accumulation.

## Interpretation
HDD measures the deviation of temperature from a heating threshold, capturing the demand for space heating. Each degree below the base temperature accumulates one HDD, representing additional heating requirement. The relationship is linear: colder weather increases HDD accumulation and associated heating demand. Weather derivatives pay based on cumulative HDD or CDD over a defined period (typically monthly or seasonal), providing hedge protection for companies exposed to temperature-related revenue variability. Natural gas utilities, heating oil distributors, and retail businesses with weather-sensitive sales use HDD derivatives to hedge earnings volatility. The payout structure is typically linear or capped, with the latter protecting against extreme weather while limiting premium costs.

 ## Assumptions
- Base temperature is appropriate for the location and building stock
- Temperature data is measured at standardized locations
- No spatial correlation issues (for portfolio purposes)
- Linear relationship between HDD and energy demand
- Sufficient liquidity for hedging at reasonable costs

## Practical Use
Weather derivatives were pioneered in the energy sector but now cover precipitation, wind, and other meteorological variables. The over-the-counter market allows customized structures tailored to specific exposure profiles, while exchange-traded products provide standardized hedging tools. Pricing uses historical temperature data, actuarial analysis, and weather forecast models. Catastrophe bonds extend the weather derivative concept to natural disaster risk. Corporate risk managers use weather derivatives to hedge earnings volatility from weather-sensitive operations, including retail sales, agricultural production, and construction scheduling. The market continues to develop with new indices, improved data sources, and enhanced modeling approaches.

---

## Exotic Options and Path-Dependent Derivatives

Exotic Options covers non-vanilla option structures whose payoff depends on the path of the underlying price or other exotic features. This includes Asian, barrier, lookback, and compound options.

### Subcategories
- **Asian Options**: Average price and average strike variants
- **Barrier Options**: Knock-in, knock-out, and rebate features
- **Lookback Options**: Floating and fixed strike variants
- **Compound Options**: Options on options (Geske's model)

### Arithmetic Average Asian Turnbull-Wakeman

**Equation:**

```
V \approx S_0 e^{-qT} N(d_1) - K e^{-rT} N(d_2)
```

## Equation Variables
The Turnbull-Wakeman approximation provides a computationally efficient analytical approach to pricing arithmetic average Asian options, widely used in practice for its balance of accuracy and speed.

- **$V$**: Approximate price of the arithmetic average Asian option
- **$S_0$**: Initial spot price of the underlying asset
- **$q$**: Continuous dividend yield on the underlying
- **$K$**: Strike price for the arithmetic average payoff
- **$r$**: Risk-free interest rate for discounting
- **$T$**: Time to maturity and averaging period length
- **$N(\cdot)$**: Standard normal cumulative distribution function
- **$d_1, d_2$**: Black-Scholes-style terms computed with effective parameters

The effective $d$ terms use the forward price and effective volatility:
$$d_1 = \frac{\ln(S_0/K) + (r - q + \sigma^2/2)T}{\sigma\sqrt{T}}, \quad d_2 = d_1 - \sigma\sqrt{T}$$

where $\sigma$ represents the effective volatility of the arithmetic average.

## Interpretation
The Turnbull-Wakeman approximation applies the Black-Scholes formula to the arithmetic average by approximating the distribution of the average as lognormal with matched moments. The key insight is that the first two moments (mean and variance) of the arithmetic average under GBM are analytically tractable.

For a continuous arithmetic average $A_T = \frac{1}{T} \int_0^T S_t dt$:
- The mean of $A_T$ equals the forward price $F = S_0 e^{(r-q)T}$
- The variance of $\ln(A_T)$ is $\sigma^2 T / 3$ for continuous averaging

This variance reduction ($\sigma^2 T / 3$ vs. $\sigma^2 T$ for terminal price) reflects the averaging effect and explains why arithmetic Asian options are cheaper than vanilla options.

The approximation works well when:
- The number of sampling points is moderate (not too sparse)
- The strike is near-the-money
- The underlying has moderate volatility

For extreme moneyness or sparse sampling, the approximation error increases, and numerical methods become necessary.

## Assumptions
- Arithmetic average is approximated as lognormally distributed
- First two moments match the true average distribution under GBM
- Regular sampling schedule (approximation extends to irregular sampling)
- Constant volatility and interest rates
- Risk-neutral pricing framework

## Practical Use
The Turnbull-Wakeman approximation forms the backbone of most commercial Asian option pricing models, providing near-instantaneous prices suitable for real-time trading and risk management. Its computational efficiency enables calibration procedures that would be impossible with simulation-based methods.

The approximation serves as a starting point for more sophisticated numerical methods, providing initial guesses for iterative procedures and validation benchmarks for simulation results. When simulation prices diverge significantly from Turnbull-Wakeman, this often indicates discretization issues or model misspecification.

Extensions of the method handle discrete sampling, forward-start patterns, and Asian options on underlying assets with stochastic volatility or jumps.

---

### Asset-or-Nothing Digital Option

**Equation:**

```
V = S_0 e^{-qT} N(d_1)
```

## Equation Variables
The asset-or-nothing digital option pays the underlying asset value if it exceeds the barrier level, providing variable rather than fixed payoff based on the asset's terminal price.

- **$V$**: Price of the asset-or-nothing digital option
- **$S_0$**: Initial spot price of the underlying
- **$K$**: Barrier/strike level for payoff activation
- **$r$**: Risk-free interest rate
- **$q$**: Continuous dividend yield
- **$T$**: Time to maturity
- **$\sigma$**: Volatility of the underlying
- **$N(d_1)$**: Standard normal cumulative distribution function

The $d_1$ term is:
$$d_1 = \frac{\ln(S_0/K) + (r - q + \sigma^2/2)T}{\sigma\sqrt{T}}$$

## Interpretation
The asset-or-nothing digital option payoff is $V_T = S_T \cdot \mathbf{1}_{\{S_T > K\}}$. Unlike cash-or-nothing, the payoff scales with the underlying price when in-the-money.

The pricing formula derives from:
$$V = e^{-rT} \mathbb{E}[S_T \cdot \mathbf{1}_{\{S_T > K\}}] = e^{-rT} \int_K^\infty S_T f(S_T) dS_T$$

Under Black-Scholes, this conditional expectation simplifies to $S_0 e^{-qT} N(d_1)$, where $N(d_1)$ represents the risk-neutral probability-weighted value of the asset given it exceeds $K$.

The key insight is that $N(d_1)$ is not the raw probability $P(S_T > K) = N(d_2)$, but the conditional expectation:
$$N(d_1) = \mathbb{E}[e^{-qT} \mathbf{1}_{\{S_T > K\}} | \mathcal{F}_0]$$

This creates a decomposition of vanilla options:
$$C = V_{asset-or-nothing} - K e^{-rT} V_{cash-or-nothing}$$
$$C = S_0 e^{-qT} N(d_1) - K e^{-rT} N(d_2)$$

This Black-Scholes decomposition shows how complex payoffs can be built from digital building blocks.

## Assumptions
- Binary payoff at expiration
- Geometric Brownian motion dynamics
- Risk-neutral pricing framework
- Dividend yield $q$ affects the conditional expectation
- Barrier level observed at expiration

## Practical Use
Asset-or-nothing options provide variable exposure to upside moves:
- Building block for complex structured products
- Replication of vanilla options through digital decomposition
- Hedging with forward integration features

Common applications:
- Creating payoff profiles with discontinuities
- Hedging binary events with scaled exposure
- Constructing target redemption features

The decomposition $C = S e^{-qT} N(d_1) - K e^{-rT} N(d_2)$ is fundamental to understanding option Greeks and hedging behavior.

---

### Barrier Option Rebate Valuation

**Equation:**

```
V_{rebate} = R \cdot \mathbb{E}[e^{-r\tau}] \quad \text{where} \quad \tau = \min(T, \tau_{hit})
```

## Equation Variables
Barrier option rebates provide cash payments upon barrier hit, compensating holders for the loss of option value when knock-in or knock-out conditions are triggered.

- **$V_{rebate}$**: Present value of the barrier rebate
- **$R$**: Fixed rebate amount paid upon barrier hit
- **$\tau$**: First-passage time to barrier, capped at maturity $T$
- **$\tau_{hit}$**: First time the underlying touches the barrier
- **$r$**: Risk-free interest rate for discounting
- **$\mathbb{E}[\cdot]$**: Risk-neutral expectation over first-passage time distribution

For constant rebate paid at the moment of barrier hit:
$$V_{rebate} = R \cdot P(\text{hit before } T) \cdot e^{-r \cdot E[\tau | \text{hit}]}$$

## Interpretation
The rebate value equals the discounted expected value of the contingent payment. The expectation integrates over the first-passage time distribution under the risk-neutral measure, weighting by both the probability of hitting and the timing of the hit.

The probability of hitting a barrier depends on barrier type and position:
- **Down barrier** ($H < S$): Higher hit probability with lower barriers
- **Up barrier** ($H > S$): Lower hit probability with higher barriers

For continuous barriers under GBM, the hit probability has closed form:
$$P(\text{down barrier hit}) = \left(\frac{S}{H}\right)^{\lambda-1} N(y) + \left(\frac{S}{H}\right)^{\lambda+1} N(y - 2\lambda h/\sqrt{T})$$

where $y = \frac{\ln(S/H) + (r - q - \sigma^2/2)T}{\sigma\sqrt{T}}$ and $h = \ln(S/H)$.

Rebate timing affects pricing:
- **Paid at hit**: Higher value (earlier payment)
- **Paid at maturity**: Lower value (delayed payment)
- **Partial rebates**: Proportional payments at specified conditions

## Assumptions
- Barrier monitoring is continuous (discrete requires adjustment)
- Rebate amount is fixed and known at initiation
- First-passage time follows GBM dynamics
- Risk-neutral expectation accounts for early payment

## Practical Use
Rebates are essential features in barrier options for structured products:
- Provide consolation when barrier conditions are met
- Reduce the cost of barrier protection
- Enable creation of partial barrier features

Common rebate structures include:
- Full rebate: Pays the full option premium upon knock-out
- Partial rebate: Pays a fraction of the option value
- Tiered rebate: Different rebates based on barrier proximity or timing

Rebates can also be time-varying, with higher rebates for earlier hits, creating incentives for barrier crossing at specific times.

---

### Basket Option Price Approximation

**Equation:**

```
V \approx \sum_{i=1}^n w_i \cdot \text{BS}(S_i, K, T, r, q_i, \sigma_i) \quad \text{but with portfolio volatility}
```

## Equation Variables
Basket options provide exposure to a weighted portfolio of assets, with pricing requiring the multivariate distribution of basket components under correlation.

- **$V$**: Approximate price of the basket option
- **$w_i$**: Weights of assets in the basket ($\sum w_i = 1$)
- **$S_i$**: Spot prices of individual underlying assets
- **$K$**: Strike price for the basket level
- **$r$**: Risk-free interest rate
- **$q_i$**: Dividend yields on individual assets
- **$T$**: Time to maturity
- **$\sigma_i$**: Volatilities of individual assets
- **$\rho_{ij}$**: Correlation between assets $i$ and $j$

The portfolio volatility is:
$$\sigma_p^2 = \sum_{i=1}^n \sum_{j=1}^n w_i w_j \sigma_i \sigma_j \rho_{ij}$$

## Interpretation
The basket option payoff is $\left(\sum w_i S_i(T) - K\right)^+$. Exact pricing requires the multivariate lognormal distribution of basket components, which has no closed-form solution.

The approximation applies Black-Scholes to the basket as a whole:
1. Calculate portfolio drift: $\mu_p = \sum w_i (r - q_i)$
2. Calculate portfolio variance: $\sigma_p^2$ as shown above
3. Apply Black-Scholes with $(\mu_p, \sigma_p)$

This assumes the basket value is approximately lognormal, which holds reasonably well when:
- The number of assets is large
- Weights are not extremely unbalanced
- Correlations are moderate

More sophisticated approximations include:
- **Prb approximation**: Match first three moments
- **GMS (Gentle, Moser, Staum)**: Improved moment matching
- **Brennan, Magill, Surya**: Empirical correction factors

The approximation error increases with:
- Small number of assets (fewer than 5)
- Extreme weight concentrations
- High correlations combined with volatility differences

## Assumptions
- Multivariate lognormal distribution for basket components
- Constant correlations over the option life
- Risk-neutral pricing framework
- Geometric Brownian motion for each asset
- No path dependencies within basket components

## Practical Use
Basket options are essential for multi-asset hedging:
- Hedging portfolio exposure with options on the aggregate
- Gaining exposure to correlated asset classes
- Index-like payoffs on custom asset combinations

Common applications:
- Equity index options (basket of all index constituents)
- Currency basket options (weighted FX exposure)
- Commodity basket options (energy, agricultural portfolios)

Monte Carlo simulation with control variates provides accurate pricing for small baskets. For large baskets (indices), the approximation accuracy is typically sufficient for practical purposes.

---

### Cash-or-Nothing Digital Option

**Equation:**

```
V = e^{-rT} Q N(d_2)
```

## Equation Variables
The cash-or-nothing digital option pays a fixed amount if the underlying price exceeds a barrier level at expiration, providing simple binary exposure to directional moves.

- **$V$**: Price of the cash-or-nothing digital option
- **$S$**: Current spot price of the underlying
- **$K$**: Barrier/strike level that determines payoff
- **$r$**: Risk-free interest rate
- **$T$**: Time to maturity
- **$\sigma$**: Volatility of the underlying
- **$Q$**: Fixed cash payoff paid if the option expires in-the-money
- **$N(d_2)$**: Standard normal cumulative distribution function

The $d_2$ term is:
$$d_2 = \frac{\ln(S/K) + (r - \sigma^2/2)T}{\sigma\sqrt{T}}$$

## Interpretation
The cash-or-nothing digital option payoff is binary: $V_T = Q \cdot \mathbf{1}_{\{S_T > K\}}$. This makes it a pure bet on whether the underlying will exceed the barrier at expiration.

The pricing formula shows that digital options price the risk-neutral probability of an event:
$$V = e^{-rT} \mathbb{E}[Q \cdot \mathbf{1}_{\{S_T > K\}}] = e^{-rT} Q \cdot P(S_T > K)$$

The term $N(d_2)$ is exactly $P(S_T > K)$ under the risk-neutral measure with Black-Scholes dynamics. This is a fundamental result: digital options are probability-measuring instruments.

The relationship with vanilla options provides crucial hedging insight:
$$\frac{\partial C}{\partial K} = -e^{-rT} N(d_2) = -V_{digital}$$

The digital option equals the derivative of the vanilla call with respect to strike. This allows replication: a tight call spread approximates a digital payoff.

For put digital options, use $N(-d_2)$ with appropriate signs:
$$V_{put} = e^{-rT} Q N(-d_2) = e^{-rT} Q (1 - N(d_2))$$

## Assumptions
- Binary payoff at single expiration date
- Geometric Brownian motion dynamics
- Risk-neutral pricing framework
- No dividends (can be incorporated)
- Barrier level is observed at expiration only

## Practical Use
Cash-or-nothing digital options are fundamental building blocks:
- Speculation on binary events (election outcomes, M&A announcements)
- Hedging binary risks (credit events, default triggers)
- Creating complex payoff structures through option strips

Replication strategies:
- Narrow call spread: $(C(K-\epsilon) - C(K+\epsilon)) / (2\epsilon) \approx V_{digital}$
- Static replication with vanilla options
- Dynamic hedging through delta management

Common digital variants:
- Asset-or-nothing: Pays $S_T$ if $S_T > K$
- Supershare: Pays fraction of asset in price range
- Binary range: Pays if price stays in band

---

### Chooser Option Price Formula

**Equation:**

```
V_{choose} = e^{-rT_c} C(S_0, K, T - T_c) + e^{-rT_p} P(S_0, K, T - T_p)
```

## Equation Variables
A chooser option gives the holder the right to select, at a specified date, whether the option will become a call or a put. This flexibility creates value when the investor is uncertain about future market direction.

- **$V_{choose}$**: Price of the chooser option
- **$S_0$**: Initial spot price of the underlying asset
- **$K$**: Strike price (typically identical for both call and put choices)
- **$T$**: Final maturity of the option after choice
- **$T_c$**: Time at which the choice is made
- **$T_p$**: Time to put expiration after choice (often $T_p = T - T_c$)
- **$C(S_0, K, \tau)$**: Call price with maturity $\tau = T - T_c$
- **$P(S_0, K, \tau)$**: Put price with maturity $\tau = T - T_p$
- **$e^{-rT_c}, e^{-rT_p}$**: Discount factors for payment timing

For a symmetric chooser where both call and put have the same remaining maturity:
$$V_{choose} = e^{-rT_c} \max(C(S_0, K, T - T_c), P(S_0, K, T - T_c))$$

## Interpretation
At the choice date $T_c$, the holder compares the values of the potential call and put and selects the more valuable one. The initial price equals the present value of this expected payoff.

The decomposition into call and put components works because:
1. At $T_c$, the holder receives a call worth $C(S_{T_c}, K, T - T_c)$ OR a put worth $P(S_{T_c}, K, T - T_c)$
2. The value at $T_0$ is the risk-neutral expectation of this payoff
3. By put-call symmetry, this simplifies to the given formula

For symmetric choosers (same remaining maturity for call and put):
- At high spot prices, the call is more valuable
- At low spot prices, the put is more valuable
- Near-the-money, the put value dominates due to forward premium

Common chooser variants include:
- **Simple chooser**: Choice at $T/2$, becomes call or put to $T$
- **Complex chooser**: Different strikes or maturities after choice
- **Progressive chooser**: Multiple choice dates with expanding rights

## Assumptions
- European exercise at the choice date
- Same strike for call and put after choice
- Geometric Brownian motion dynamics
- Risk-neutral pricing framework
- Known dividend yield and interest rates

## Practical Use
Chooser options are used when investors face uncertainty about market direction:
- Hedging scenarios with unknown catalyst timing
- Speculation on volatility with uncertain directional bias
- Structured products with flexible payoff profiles

The choice date creates a form of volatility exposure: the holder benefits from large moves in either direction (as long as one option becomes valuable).

Chooser options can be decomposed into standard options:
$$V_{choose} = C(S_0, K, T) + P(S_0, K, T_c)$$

---

### Compound Option Call on Call

**Equation:**

```
V = C(S^*, K_2, T_2) \quad \text{where} \quad S^* = C(S_T, K_1, T_1)
```

## Equation Variables
A compound option is an option on an option, giving the holder the right to acquire an underlying option at a specified price at a future date. The call on call specifically provides rights to a call option.

- **$V$**: Price of the compound option (call on call)
- **$S^*$**: Price of the underlying call option at the compound expiration date
- **$K_2$**: Strike price of the compound option (price paid for the underlying call)
- **$T_1$**: Time to compound option expiration (decision date)
- **$T_2$**: Time to underlying call expiration ($T_2 > T_1$)
- **$K_1$**: Strike price of the underlying call option
- **$S_T$**: Price of the underlying asset at time $T_1$

The compound option payoff at $T_1$ is:
$$V_{T_1} = \max(C(S_{T_1}, K_1, T_2 - T_1) - K_2, 0)$$

## Interpretation
The compound option gives the holder flexibility: at $T_1$, they observe $S_{T_1}$ and can evaluate whether exercising the compound to acquire the underlying call makes economic sense. This creates a two-layer optionality that depends on both the underlying asset and the underlying option value.

The compound option can be valued through risk-neutral expectation:
$$V = e^{-rT_1} \mathbb{E}[\max(C(S_{T_1}, K_1, T_2 - T_1) - K_2, 0)^+]$$

This expectation requires integrating over the distribution of $S_{T_1}$ and computing the conditional value of the underlying call at each $S_{T_1}$. The correlation between $S_{T_1}$ and the underlying call value creates complexity.

The holder exercises the compound if:
$$C(S_{T_1}, K_1, T_2 - T_1) > K_2$$

This condition depends on:
- The terminal asset price $S_{T_1}$
- Time remaining on the underlying call: $T_2 - T_1$
- Volatility of the underlying asset
- Interest rates and dividends

## Assumptions
- European-style exercise for both compound and underlying options
- Known correlation between asset price and option value
- Geometric Brownian motion for the underlying
- Risk-neutral pricing framework
- Strike $K_2$ is set at initiation

## Practical Use
Compound options provide sophisticated exposure to volatility of volatility:
- Hedging options positions with uncertain timing
- Leveraged exposure to directional moves
- Capturing views on future option premiums

Common applications include:
- Swaptions (options on interest rate swaps)
- Options on credit default swap spreads
- Contingent value rights in M&A transactions

The next equation (Geske's formula) provides the closed-form solution for call-on-call options.

---

### Compound Option Geske Formula

**Equation:**

```
V = S_0 M(h_1, k_1, \rho) - K_2 e^{-rT_2} M(h_2, k_2, \rho) - K_1 e^{-rT_1} N(h_3)
```

## Equation Variables
Geske's formula provides the exact closed-form solution for compound options under Black-Scholes assumptions, requiring bivariate normal integration to capture the joint distribution of asset prices at two maturities.

- **$V$**: Price of the call-on-call compound option
- **$S_0$**: Initial spot price of the underlying asset
- **$K_1$**: Strike price of the underlying call option
- **$K_2$**: Strike price of the compound option
- **$T_1$**: Time to compound option expiration
- **$T_2$**: Time to underlying call expiration ($T_2 > T_1$)
- **$r$**: Risk-free interest rate
- **$q$**: Continuous dividend yield
- **$\sigma$**: Volatility of the underlying
- **$\rho = \sqrt{T_1/T_2}$**: Correlation between $S_{T_1}$ and $S_{T_2}$
- **$M(\cdot, \cdot, \cdot)$**: Bivariate normal cumulative distribution function

The auxiliary terms are:
$$h_1 = \frac{\ln(S_0/K_1) + (r - q + \sigma^2/2)T_1}{\sigma\sqrt{T_1}}, \quad h_2 = h_1 - \sigma\sqrt{T_1}$$
$$h_3 = \frac{\ln(S_0/K_1) - (r - q - \sigma^2/2)T_1}{\sigma\sqrt{T_1}}$$
$$k_1 = \frac{\ln(S_0/K_2) + (r - q + \sigma^2/2)T_2}{\sigma\sqrt{T_2}}, \quad k_2 = k_1 - \sigma\sqrt{T_2}$$

## Interpretation
Geske (1979) derived the elegant closed-form solution by recognizing that the compound option payoff depends on the joint distribution of $(S_{T_1}, S_{T_2})$, which follows a bivariate lognormal distribution under Black-Scholes.

The three terms correspond to:
1. **Value if both options are exercised**: $S_0 M(h_1, k_1, \rho)$ - Present value of receiving $S_{T_2}$ if both compound and underlying are ITM
2. **Cost of compound strike**: $-K_2 e^{-rT_2} M(h_2, k_2, \rho)$ - Present value of paying $K_2$ if compound is exercised and underlying is ITM
3. **Cost of underlying strike**: $-K_1 e^{-rT_1} N(h_3)$ - Present value of paying $K_1$ at $T_1$ if compound is exercised

The bivariate normal $M(h, k, \rho)$ captures the probability that:
- The underlying asset is above $K_1$ at $T_1$ (for compound exercise)
- The underlying asset is above $K_2$ at $T_2$ (for underlying call value)

The correlation $\rho = \sqrt{T_1/T_2}$ accounts for the path dependence: knowing $S_{T_1}$ provides information about the distribution of $S_{T_2}$.

## Assumptions
- European exercise for both compound and underlying options
- Geometric Brownian motion dynamics
- Risk-neutral pricing framework
- Constant volatility and interest rates
- No dividends (can be incorporated via drift adjustment)

## Practical Use
Geske's formula enables exact pricing of compound options without numerical integration, forming the foundation for:
- Swaption pricing (options on interest rate swaps)
- Options on bonds (contingent coupon bonds)
- Contingent value rights in M&A transactions
- Credit derivatives with optionality features

The formula requires bivariate normal integration, available in standard numerical libraries. Extensions handle American-style exercise, stochastic volatility, and jump diffusion dynamics.

---

### Continuous Average Price Asian Call

**Equation:**

```
V_A = S_0 I - K e^{-rT} N(d_1^*) \quad \text{where} \quad I = \frac{1}{T} \int_0^T S_t dt
```

## Equation Variables
The continuous average price Asian option derives its value from the time-average of the underlying asset's price over the option's lifetime. This averaging mechanism creates a smoothing effect that reduces the impact of extreme price movements near expiration.

- **$V_A$**: Price of the continuous Asian call option, representing the present value of the expected payoff based on average price
- **$S_0$**: Initial spot price of the underlying asset at time zero
- **$I$**: Time-average of the underlying price, computed as the integral $\frac{1}{T} \int_0^T S_t dt$ over the interval $[0, T]$
- **$K$**: Strike price at which the average can be converted to cash at expiration
- **$r$**: Risk-free interest rate used for discounting the expected payoff
- **$T$**: Time to maturity, defining the observation window for averaging
- **$N(d_1^*)$**: Modified cumulative normal distribution function adjusting for the averaging effect on the terminal distribution
- **$d_1^*$**: Adjusted first-order term in the Black-Scholes framework that accounts for the correlation between terminal price and the time-average

## Interpretation
The Asian option payoff takes the form $(A_T - K)^+$ where $A_T$ represents the time-average of the underlying. Unlike vanilla options that depend solely on terminal price, Asian options incorporate the entire price path, creating a fundamentally different risk profile.

The continuous average $I$ has a closed-form representation under geometric Brownian motion, though the joint distribution of $(S_T, I)$ remains analytically intractable. The modification $d_1^*$ adjusts the standard Black-Scholes $d_1$ to account for this correlation structure, reflecting how the average price evolves alongside the terminal price.

The averaging mechanism provides three key benefits: reduced sensitivity to end-of-period manipulation (critical in emerging markets), lower option premiums due to smoothed volatility, and natural hedging properties for businesses exposed to average price exposure over time.

## Assumptions
- Underlying follows geometric Brownian motion: $dS_t = \mu S_t dt + \sigma S_t dW_t$
- Continuous monitoring of the underlying price without gaps
- Risk-neutral pricing framework with constant risk-free rate
- No dividends paid during the averaging period (can be incorporated via drift adjustment)
- The average is arithmetic, requiring numerical integration for exact pricing

## Practical Use
Continuous average Asian options are extensively used in energy markets, particularly for crude oil, natural gas, and electricity derivatives where settlement is based on average prices over defined periods. The smoothing effect protects against price spikes caused by supply disruptions, weather events, or political instability.

In commodity markets, average-priced options align hedging instruments with physical delivery contracts that settle on monthly or quarterly average prices. This matching reduces basis risk and provides more effective corporate hedging. The reduced cost relative to vanilla options makes them attractive for budget-conscious hedging programs.

The continuous formulation provides a theoretical benchmark that can be approximated through discrete sampling with adjustment factors. Monte Carlo simulation remains the most common practical implementation, often using geometric Asian options as control variates to reduce variance.

---

### Discretely Sampled Asian Option Price

**Equation:**

```
V = e^{-rT} \mathbb{E}\left[\left(A - K\right)^+\right] \quad \text{where} \quad A = \frac{1}{n} \sum_{i=1}^{n} S_{t_i}
```

## Equation Variables
The discretely sampled Asian option prices based on observations at specific time points rather than continuous monitoring, reflecting the practical reality of observable settlement prices in markets.

- **$V$**: Price of the discretely sampled Asian option under risk-neutral measure
- **$e^{-rT}$**: Risk-free discount factor converting terminal payoff to present value
- **$\mathbb{E}[\cdot]$**: Risk-neutral expectation operator over all possible price paths
- **$(A - K)^+$**: Payoff function, equal to $\max(A - K, 0)$ for a call option
- **$A$**: Arithmetic average computed at discrete observation times
- **$K$**: Strike price defining the conversion level for the average
- **$n$**: Number of sampling points in the observation period
- **$t_i$**: Specific observation times where prices are sampled
- **$S_{t_i}$**: Underlying price at each observation time $t_i$

## Interpretation
Discretely sampled Asian options sample the underlying price at predetermined dates, which may be daily, weekly, monthly, or aligned with specific market conventions. The arithmetic average lacks the elegant analytical properties of the geometric average, making numerical methods essential for pricing.

The number and timing of sampling points significantly affect both the option's value and its sensitivity to discretization error. More frequent sampling increases the option's correlation with continuous averaging but introduces computational overhead and potential liquidity constraints.

The expectation formulation highlights that pricing requires integrating over the joint distribution of sampled prices, a computationally intensive task for large $n$. The path-dependent nature means that the distribution of $A$ depends not just on marginal distributions of $S_{t_i}$ but on their entire correlation structure.

Key approximation approaches include the Levy approximation (matching first two moments of the average), Turnbull-Wakeman (forward-backward moment matching), and Monte Carlo simulation with variance reduction techniques.

## Assumptions
- Prices are sampled at deterministic, known times without observation gaps
- Risk-neutral measure applies to all price paths
- Underlying follows geometric Brownian motion or more general diffusion
- No dividends or known income during the averaging period
- Sampling is observable and trades occur at sampled prices

## Practical Use
Discrete averaging aligns with actual market settlement conventions, making these options the practical standard for energy and agricultural commodity markets. NYMEX crude oil futures settle on monthly average prices, making discretely sampled Asian options natural hedging instruments.

The sampling frequency must balance computational tractability with hedging accuracy. Daily sampling (250+ points) provides close approximation to continuous averaging but may exceed practical constraints. Monthly sampling (12 points) is common for longer-dated contracts.

Monte Carlo simulation remains the most flexible implementation, with variance reduction through geometric Asian control variates, importance sampling for tail scenarios, and quasi-random sequences (Sobol) for faster convergence.

---

### Down-and-Out Barrier Call Option

**Equation:**

```
V_{do} = S N(d_1) - K e^{-rT} N(d_2) - \left(\frac{S}{H}\right)^\lambda \left[ S N(d_3) - K e^{-rT} N(d_4) \right]
```

## Equation Variables
The down-and-out barrier option prices a call that becomes worthless if the underlying price touches or falls below a specified barrier level during the option's lifetime. The elegant solution uses the reflection principle to adjust the vanilla price.

- **$V_{do}$**: Price of the down-and-out call option
- **$S$**: Current spot price of the underlying asset
- **$K$**: Strike price of the option
- **$H$**: Barrier level, set below the current spot price for down-and-out options
- **$r$**: Risk-free interest rate
- **$T$**: Time to maturity
- **$\sigma$**: Volatility of the underlying
- **$\lambda$**: Exponent parameter defined as $\lambda = \frac{2r}{\sigma^2} - 1$
- **$N(\cdot)$**: Standard normal cumulative distribution function

The auxiliary terms $d_1, d_2, d_3, d_4$ are computed as:
$$d_1 = \frac{\ln(S/K) + (r + \sigma^2/2)T}{\sigma\sqrt{T}}, \quad d_2 = d_1 - \sigma\sqrt{T}$$
$$d_3 = \frac{\ln(H^2/SK) + (r + \sigma^2/2)T}{\sigma\sqrt{T}}, \quad d_4 = d_3 - \sigma\sqrt{T}$$

## Interpretation
The down-and-out call price equals the vanilla Black-Scholes call price minus an adjustment term that accounts for barrier hit scenarios. The reflection principle shows that the probability of hitting the barrier and the corresponding adjustment factor can be computed analytically.

The adjustment term $\left(\frac{S}{H}\right)^\lambda$ measures the barrier's proximity to spot: closer barriers create larger adjustments (higher probability of knock-out). When $\lambda > 0$ (positive drift environments), the barrier adjustment is amplified; when $\lambda < 0$, it is attenuated.

The terms $d_3$ and $d_4$ use the barrier-crossing condition $H^2/SK$, which reflects the image technique: the price adjustment equals the value of a vanilla option on an "image" asset priced at $H^2/S$.

Key boundary conditions:
- If $H \ge S$, the option is worthless (already knocked out)
- If $H \to 0$, the option converges to the vanilla Black-Scholes call
- If $H = K$, the option equals vanilla call minus a digital call

## Assumptions
- Continuous monitoring of the barrier without gaps
- Barrier is observable but not tradeable
- No dividends paid during the option life (can be incorporated)
- Geometric Brownian motion dynamics for the underlying
- European exercise (no early redemption features)
- No rebate upon knock-out (rebate is calculated separately)

## Practical Use
Down-and-out options are widely used in structured products and hedging strategies where protection against large downward moves is desired at reduced cost. The lower premium makes them attractive for risk-averse investors who expect the underlying to remain above the barrier.

Common applications include:
- Capital-protected notes with barrier features
- Autocallable securities that deactivate if underlying falls
- Hedging strategies in volatile markets where tail protection is prioritized

Discrete barrier monitoring requires adjustment using approaches by Broadie, Glasserman, and Kou, which account for the probability of barrier crossings between observation dates.

---

### Exchange Option Margrabe Formula

**Equation:**

```
V = S_1 N(d_1) - S_2 N(d_2) \quad \text{where} \quad d_1 = \frac{\ln(S_1/S_2) + 0.5\sigma^2 T}{\sigma\sqrt{T}}
```

## Equation Variables
The exchange option gives the right to exchange one asset for another at a fixed ratio, serving as the fundamental multi-asset option upon which spread options and currency options are built.

- **$V$**: Price of the exchange option
- **$S_1$**: Current price of asset 1 (received)
- **$S_2$**: Current price of asset 2 (given)
- **$T$**: Time to maturity
- **$\sigma$**: Volatility of the ratio $S_1/S_2$

The ratio volatility $\sigma$ is:
$$\sigma^2 = \sigma_1^2 + \sigma_2^2 - 2\rho\sigma_1\sigma_2$$

where $\sigma_1, \sigma_2$ are individual volatilities and $\rho$ is their correlation.

The $d$ terms:
$$d_1 = \frac{\ln(S_1/S_2) + 0.5\sigma^2 T}{\sigma\sqrt{T}}, \quad d_2 = d_1 - \sigma\sqrt{T}$$

## Interpretation
The exchange option payoff is $\max(S_1(T) - S_2(T), 0)$ — the right to receive asset 1 and give asset 2. Margrabe (1978) derived the elegant solution using change of numeraire.

The key insight is to change measure so that asset 2 becomes the numeraire. Under this measure:
- The ratio $S_1/S_2$ follows GBM with volatility $\sigma$
- The exchange option becomes a standard call on $S_1/S_2$ with strike 1
- The drift under the new measure eliminates the risk-free rate

The formula simplifies because:
- No risk-free rate appears (rates embedded in forward prices)
- No strike price (inherent 1-for-1 exchange)
- Only relative volatility matters (not individual drifts)

The exchange option is symmetric: exchanging 2 for 1 has price:
$$V_{2\to1} = S_2 N(-d_2) - S_1 N(-d_1)$$

This satisfies $V_{1\to2} + V_{2\to1} = S_1 - S_2$, the forward exchange value.

## Assumptions
- Geometric Brownian motion for both assets
- Constant correlation between assets
- No dividends (can be added via drift adjustment)
- 1-for-1 exchange ratio
- Risk-neutral pricing framework

## Practical Use
The exchange option is fundamental to many applications:
- **Currency options**: Exchange domestic for foreign currency
- **M&A contingent value rights**: Exchange cash for equity
- **Debt-to-equity conversion**: Exchange debt principal for shares
- **Commodity exchange rights**: Exchange one commodity for another

The Margrabe formula is exact for exchange options and forms the basis for:
- Kirk's spread option approximation (with strike adjustment)
- Currency options with fixed exchange
- Any option on relative value between two assets

The formula demonstrates the power of change of numeraire in option pricing.

---

### Fixed Strike Lookback Put

**Equation:**

```
V = K e^{-rT} N(b_1) - K e^{-rT} e^{-qT} N(b_2) + S_0 e^{-qT} N(b_3)
```

## Equation Variables
The fixed strike lookback put maximizes payoff by allowing exercise at the maximum price observed during the option's life, effectively capturing the optimal exit point for selling assets.

- **$V$**: Price of the fixed strike lookback put
- **$K$**: Fixed strike price of the option
- **$S_0$**: Initial spot price of the underlying
- **$S_{max}$**: Maximum price of the underlying over $[0, T]$
- **$r$**: Risk-free interest rate
- **$q$**: Continuous dividend yield
- **$T$**: Time to maturity
- **$N(\cdot)$**: Standard normal cumulative distribution function

The auxiliary terms use the maximum distribution:
$$b_1 = \frac{\ln(S_0/K) - (r - q - \sigma^2/2)T}{\sigma\sqrt{T}}, \quad b_2 = b_1 - \sigma\sqrt{T}$$
$$b_3 = \frac{\ln(S_0/K) + (r - q + \sigma^2/2)T}{\sigma\sqrt{T}}$$

## Interpretation
The fixed strike lookback put payoff is $\max(K - S_{max}, 0)$, allowing the holder to sell the underlying at the highest observed price. This creates the maximum possible put payoff by eliminating the risk of selling at suboptimal prices.

The reflection principle for the maximum of Brownian motion enables the analytical pricing formula. The three terms correspond to:
1. Present value of strike if expired in-the-money: $K e^{-rT} N(b_1)$
2. Adjustment for dividends and maximum effect: $-K e^{-rT} e^{-qT} N(b_2)$
3. Present value of underlying if expired in-the-money: $S_0 e^{-qT} N(b_3)$

The fixed strike lookback is more expensive than the floating strike lookback because the payoff $K - S_{max}$ can extend beyond the range of observed prices, while $S_T - S_{min}$ is bounded by $S_T$.

When dividends are present ($q > 0$), the holder benefits differently:
- For calls: Dividends reduce the minimum observation value
- For puts: Dividends reduce the maximum observation benefit

## Assumptions
- Continuous observation of the maximum price
- Geometric Brownian motion dynamics
- Risk-neutral pricing framework
- European exercise features (no early redemption)
- Dividend yield affects maximum observation value

## Practical Use
Fixed strike lookback puts are used by producers and investors seeking to lock in maximum sale prices:
- Commodity producers hedging peak price exposure
- Asset managers protecting against upside shortfall
- Investors wanting to capture optimal market exits

The lookback put can be decomposed into a portfolio of European puts or replicated through dynamic hedging. Semi-static approaches use option strips with varying strikes and maturities.

For perpetual lookback puts (no maturity), the price is $V = \frac{K}{1 - \lambda} - \frac{S_0}{\lambda}$ where $\lambda = \frac{2r}{\sigma^2}$.

---

### Floating Strike Lookback Call

**Equation:**

```
V = S_0 N(a_1) - S_0 e^{-rT} N(a_2) - S_0 e^{-qT} N(a_3) + S_0 e^{-qT} N(a_4)
```

## Equation Variables
The floating-strike lookback call maximizes payoff by allowing exercise at the minimum price observed during the option's life, effectively capturing the optimal entry point.

- **$V$**: Price of the floating-strike lookback call
- **$S_0$**: Initial spot price of the underlying
- **$S_{min}$**: Minimum price of the underlying over $[0, T]$
- **$r$**: Risk-free interest rate
- **$q$**: Continuous dividend yield
- **$T$**: Time to maturity
- **$N(\cdot)$**: Standard normal cumulative distribution function

The auxiliary terms capture the joint distribution of $(S_T, S_{min})$:
$$a_1 = \frac{\ln(S_0/S_{min}) + (r - q + \sigma^2/2)T}{\sigma\sqrt{T}}, \quad a_2 = a_1 - \sigma\sqrt{T}$$
$$a_3 = \frac{\ln(S_0/S_{min}) - (r - q + \sigma^2/2)T}{\sigma\sqrt{T}}, \quad a_4 = a_3 - \sigma\sqrt{T}$$

## Interpretation
The floating-strike lookback call payoff is $\max(S_T - S_{min}, 0)$, allowing the holder to purchase the underlying at the lowest observed price and sell at the terminal price. This creates the maximum possible payoff for a call option on a single asset.

The pricing formula uses the joint distribution of terminal price and minimum, which is known for Brownian motion. The four terms account for different scenarios of terminal price relative to the minimum.

Intuitively:
- $S_0 N(a_1)$: Present value if exercised at terminal price
- $-S_0 e^{-rT} N(a_2)$: Adjustment for discounting and minimum effect
- $-S_0 e^{-qT} N(a_3)$: Dividend adjustment for minimum observation
- $+S_0 e^{-qT} N(a_4)$: Present value of dividend-adjusted payoff

The lookback call is always more expensive than the corresponding vanilla call because $S_{min} \le S_T$ always, making $(S_T - S_{min})^+ \ge (S_T - K)^+$ for any $K$.

For the perpetual lookback call (no maturity), the price simplifies to $V = \frac{S_0}{1 - \lambda}$ where $\lambda = \frac{2r}{\sigma^2}$.

## Assumptions
- Continuous observation of the minimum price
- Geometric Brownian motion dynamics
- Risk-neutral pricing framework
- European-style exercise (no early redemption)
- Dividend yield $q$ affects the minimum observation value

## Practical Use
Lookback options are used by investors seeking optimal timing for market entry:
- Hedging against adverse price movements with uncertain timing
- Capturing upside while minimizing downside through optimal entry
- Currency markets where optimal exchange rate timing matters

The floating-strike lookback can be decomposed into a strip of forward-start options or replicated dynamically through continuous rebalancing. Semi-static hedging approaches use portfolios of European options with varying strikes.

---

### Geometric Average Asian Closed Form

**Equation:**

```
V_{geo} = S_0 e^{-qT} N(y) - K e^{-rT} N(y - \sigma\sqrt{\tau})
```

## Equation Variables
The geometric average Asian option enjoys a rare distinction in exotic options: an exact closed-form solution derived from the mathematical property that the geometric mean of lognormal variables remains lognormal.

- **$V_{geo}$**: Price of the geometric average Asian option
- **$S_0$**: Initial spot price of the underlying asset
- **$q$**: Continuous dividend yield or foreign interest rate (for currency applications)
- **$K$**: Strike price at which the geometric average can be exercised
- **$r$**: Risk-free interest rate for discounting
- **$T$**: Time to maturity and observation window length
- **$N(\cdot)$**: Standard normal cumulative distribution function
- **$y$**: Modified log-moneyness term incorporating averaging effects
- **$\sigma$**: Volatility of the underlying asset
- **$\tau$**: Time parameter representing the averaging intensity, $\tau = T/2$ for continuous monitoring

The modified log-moneyness $y$ is computed as:
$$y = \frac{\ln(S_0/K) + (r - q + \sigma^2/2)T + \sigma^2\tau/2}{\sigma\sqrt{\tau}}$$

## Interpretation
The geometric average's closed-form solution emerges from the fundamental property that if $S_t$ is lognormal, then the geometric mean $\prod S_{t_i}^{1/n}$ (or the continuous equivalent) is also lognormally distributed. This mathematical elegance has profound practical implications.

The effective parameters for the geometric average option mirror Black-Scholes but with adjusted drift and variance:
- **Effective drift**: $\mu_{eff} = r - q + \sigma^2/2$ adjusted for averaging
- **Effective variance**: $\sigma_{eff}^2 = \sigma^2(1 - \tau/T)$ where $\tau/T = 1/2$ for continuous averaging

For continuous monitoring, $\tau = T/2$ meaning the geometric average has half the variance of the terminal price. This variance reduction directly explains why geometric Asian options are cheaper than equivalent vanilla options.

The parameter $\tau$ varies with sampling pattern: for discrete sampling with $n$ points, $\tau = T(n+1)/(2n)$ approaches $T/2$ as $n$ increases.

## Assumptions
- Continuous monitoring of the geometric average (or regularly spaced discrete sampling)
- Geometric Brownian motion dynamics for the underlying asset
- Risk-neutral pricing framework with constant parameters
- No jumps or stochastic volatility (would destroy analytical tractability)
- The geometric mean has exact lognormal distribution

## Practical Use
The geometric average Asian option serves as the primary benchmark and control variate in Monte Carlo pricing of arithmetic Asian options. When computing the price of an arithmetic Asian option via simulation, pricing the corresponding geometric Asian option with known exact value provides a variance reduction mechanism that dramatically accelerates convergence.

Academically, this solution demonstrates how averaging affects option pricing and provides intuition for understanding more complex path-dependent derivatives. The formula appears in virtually every derivatives pricing textbook as an example of analytical tractability in exotic options.

In practice, traders use geometric Asian prices as quick approximations and sanity checks for more complex numerical implementations. The exact solution also enables calibration procedures that would be computationally prohibitive with pure simulation.

---

### Parasian Option Cumulative Barrier

**Equation:**

```
V \propto P\left(\int_0^T \mathbf{1}_{\{S_t \in B\}} dt > \Delta\right)
```

## Equation Variables
Parasian options generalize Parisian options by requiring cumulative (not consecutive) time in the barrier region, allowing activation through multiple brief excursions that accumulate to the threshold duration.

- **$V$**: Price of the Parasian option
- **$S_t$**: Underlying price at time $t$
- **$B$**: Barrier region defined by boundaries
- **$\Delta$**: Required cumulative time in barrier
- **$T$**: Time to maturity
- **$\int_0^T \mathbf{1}_{\{S_t \in B\}} dt$**: Total time spent in barrier region

The activation condition is:
$$T_B = \int_0^T \mathbf{1}_{\{S_t \in B\}} dt > \Delta$$

## Interpretation
Parasian options provide a "soft" barrier activation mechanism where multiple brief excursions into the barrier region accumulate toward the trigger. This differs from Parisian options which require consecutive time.

The cumulative time-in-barrier follows known distributions under Brownian motion. The arc-sine law for Brownian motion states that the proportion of time spent above a level has a specific distribution with heavy tails.

This creates an interesting property: the distribution of cumulative barrier time is concentrated at extremes—either very little time or a lot of time—with less probability mass near the mean. This affects pricing significantly.

Comparison of barrier types:
- **Standard knock-in**: Activates on first touch
- **Parisian**: Activates on $\Delta$ consecutive time
- **Parasian**: Activates on $\Delta$ cumulative time

Parasian options are priced between Parisian and standard knock-ins:
- Easier to activate than Parisian (cumulative counts)
- Harder to activate than standard knock-in (need duration)

## Assumptions
- Continuous monitoring of cumulative time
- Cumulative (not consecutive) time accumulation
- Geometric Brownian motion dynamics
- Barrier region boundaries are fixed
- Risk-neutral pricing framework

## Practical Use
Parasian options are used when multiple brief breaches should count:
- Markets with frequent but short-lived price excursions
- Structured products with step-up features
- Hedging scenarios with gradual barrier approach

Common applications:
- Soft barrier features in structured notes
- Step-up coupons based on time-in-regions
- Conditional participation features

The cumulative nature makes Parisians suitable for creating smoother activation profiles than standard Parisian options.

---

### Parisian Option Time-in-Barrier

**Equation:**

```
V \propto P\left(\int_0^T \mathbf{1}_{\{S_t \in B\}} dt > \Delta\right)
```

## Equation Variables
Parisian options generalize standard barrier options by requiring the underlying to spend a specified duration $\Delta$ in a barrier region before activation, preventing accidental triggers from brief price spikes.

- **$V$**: Price of the Parisian option
- **$S_t$**: Underlying price at time $t$
- **$B$**: Barrier region (e.g., $S_t < L$ for down-barrier, $S_t > U$ for up-barrier)
- **$\Delta$**: Required consecutive time spent in barrier region
- **$T$**: Time to maturity
- **$\tau$**: First passage time to barrier boundary
- **$\mathbf{1}_{\cdot}$**: Indicator function for barrier region occupancy

The option activates if:
$$\tau_B = \min\{t: S_t \text{ exits barrier } B\} > T \quad \text{or}$$
$$\int_0^T \mathbf{1}_{\{S_t \in B\}} dt > \Delta \quad \text{consecutively}$$

## Interpretation
Parisian options address a key weakness of standard barrier options: sensitivity to brief barrier touches caused by market noise or temporary volatility. By requiring consecutive time in the barrier region, Parisiennes provide more robust activation conditions.

The required duration $\Delta$ creates a buffer against accidental triggers. For example, if $\Delta = 5$ days, a single day's dip below the barrier doesn't activate the option; only sustained breach triggers activation.

The pricing requires computing the distribution of first passage time with duration constraint, which involves complex hitting time distributions for Brownian motion.

For continuous monitoring, the joint density of (first passage time, duration above threshold) can be expressed in terms of Airy functions or computed via numerical methods.

Variants include:
- **Standard Parisian**: Single duration requirement
- **Double Parisian**: Requires time in both up and down barriers
- **Partial Parisian**: Duration-weighted activation probabilities

## Assumptions
- Continuous monitoring of barrier duration
- Consecutive (not cumulative) time requirement
- Geometric Brownian motion dynamics
- Barrier region is contiguous
- Risk-neutral pricing framework

## Practical Use
Parisian options are used when protection against brief spikes is essential:
- Currency markets where temporary breaches occur during volatility
- Equity markets during earnings season or announcements
- Commodity markets subject to weather-related price swings

The duration requirement creates more predictable activation:
- More robust than standard barriers
- Cheaper than perpetual barriers
- Provides controlled sensitivity to barrier proximity

Pricing requires numerical methods: Monte Carlo simulation with Brownian bridge techniques or finite difference solutions to partial differential equations.

---

### Quanto Option Fixed Exchange Rate

**Equation:**

```
V = e^{-r_f T} C(S_0, K, \sigma, r_d, T)
```

## Equation Variables
A quanto option provides exposure to a foreign asset with the payoff calculated in domestic currency at a fixed exchange rate, eliminating FX risk while maintaining exposure to the foreign asset's price movements.

- **$V$**: Price of the quanto option
- **$S_0$**: Initial price of the underlying in foreign currency
- **$K$**: Strike price in foreign currency
- **$r_f$**: Foreign risk-free interest rate
- **$r_d$**: Domestic risk-free interest rate
- **$T$**: Time to maturity
- **$\sigma$**: Volatility of the underlying in foreign currency
- **$e^{-r_f T}$**: Foreign currency discount factor

The payoff in domestic currency is:
$$V_T = e^{-r_d T} \max(S_T^f - K, 0) \times FX_0$$

## Interpretation
The quanto payoff depends only on the foreign asset price $S_T^f$, not on the FX rate at maturity. The fixed exchange rate $FX_0$ is set at initiation and not subject to FX risk.

This creates a unique pricing structure:
1. The underlying is valued in foreign currency using $r_f$ and $\sigma$
2. The payoff is converted at the fixed rate $FX_0$ to domestic currency
3. The discounting uses the domestic rate $r_d$

The correlation between asset and FX does not affect pricing because the FX exposure is hedged at initiation. This differs from "float-to-fixed" quantos where the exchange rate is set at maturity.

The formula shows that a quanto is equivalent to:
- A foreign-denominated option discounted at foreign rates
- Converted at spot FX rate to domestic currency
- Valued under domestic measure

Key properties:
- FX exposure is hedged at initiation
- Correlation between asset and FX doesn't affect value
- The quanto price exceeds the domestic option (foreign rates may differ)

## Assumptions
- Fixed exchange rate set at initiation
- No correlation between asset and FX in pricing
- Geometric Brownian motion for underlying
- Constant rates or forward rates for term structure
- European exercise features

## Practical Use
Quantos are essential for international investment:
- Emerging market equity exposure without FX risk
- Foreign commodity exposure for domestic investors
- Cross-currency structured products

Common applications:
- Nikkei-linked notes for US investors
- Emerging market equity quantos
- Commodity-linked notes in investor's home currency

Variants include:
- **Partial quanto**: Only portion at fixed rate
- **Float-to-fixed quanto**: Rate set at maturity (correlated)
- **Quantoed swaption**: Option on foreign currency swap

The fixed exchange feature makes quantos particularly attractive for investors who believe in foreign asset appreciation but are bearish on foreign currency.

---

### Spread Option Kirk Approximation

**Equation:**

```
V = e^{-rT} \left[ F_1 N(d_1) - F_2 N(d_2) \right]
```

## Equation Variables
Spread options provide exposure to the price difference between two assets, with applications in energy markets for refining margin hedging and commodity basis risk management.

- **$V$**: Price of the spread option
- **$F_1$**: Forward price of asset 1
- **$F_2$**: Forward price of asset 2
- **$r$**: Risk-free interest rate
- **$T$**: Time to maturity
- **$\sigma_1, \sigma_2$**: Volatilities of assets 1 and 2
- **$\rho$**: Correlation between the two assets

The effective spread volatility and $d$ terms:
$$\sigma_{spread} \approx \sqrt{\sigma_1^2 + \sigma_2^2 - 2\rho\sigma_1\sigma_2}$$
$$d_1 = \frac{\ln(F_1/F_2) + 0.5 \sigma_{spread}^2 T}{\sigma_{spread} \sqrt{T}}, \quad d_2 = d_1 - \sigma_{spread} \sqrt{T}$$

## Interpretation
The spread option payoff is $\max(S_1(T) - S_2(T) - K, 0)$. For simplicity, Kirk's approximation assumes $K = 0$ (exchange option) or adjusts for non-zero strikes.

Kirk's insight was recognizing that the spread can be approximated as lognormal with the spread volatility formula. This extends Black-Scholes to the two-asset case.

The spread volatility formula shows:
- Higher individual volatilities increase spread volatility
- Higher correlation reduces spread volatility
- Perfect correlation ($\rho = 1$) eliminates spread volatility

The approximation is exact when:
- One asset is deterministic (zero volatility)
- Strike $K = 0$ (Margrabe exchange option)

For non-zero strikes, the approximation error increases with $K / \text{spread value}$.

The Margrabe formula is exact for $K = 0$:
$$V = S_1 N(d_1) - S_2 N(d_2) \quad \text{with} \quad d_1 = \frac{\ln(S_1/S_2) + 0.5\sigma^2 T}{\sigma\sqrt{T}}$$

## Assumptions
- Geometric Brownian motion for both assets
- Constant correlation
- Risk-neutral pricing framework
- Approximate lognormality of the spread
- Forward prices incorporate dividend/convenience yields

## Practical Use
Spread options are fundamental in energy markets:
- **Crack spread**: Crude oil $\to$ gasoline/heating oil
- **Spark spread**: Natural gas $\to$ electricity
- **Frac spread**: Natural gas liquids vs. natural gas

These spreads represent refining or processing margins. Hedging margin risk protects against input-output price dislocations.

The Kirk approximation provides fast pricing suitable for:
- Real-time trading and market-making
- Risk management of spread positions
- Calibration of spread option models

Monte Carlo simulation or bivariate tree methods provide more accurate pricing for wide spreads or extreme strikes.

---

### Up-and-In Barrier Put Option

**Equation:**

```
V_{ui} = -S N(-d_1) + K e^{-rT} N(-d_2) + \left(\frac{S}{H}\right)^\lambda \left[ S N(-d_3) + K e^{-rT} N(-d_4) \right]
```

## Equation Variables
The up-and-in barrier put option activates only if the underlying price rises to touch a specified barrier level during the option's lifetime, providing upside participation with conditional activation.

- **$V_{ui}$**: Price of the up-and-in put option
- **$S$**: Current spot price of the underlying asset
- **$K$**: Strike price of the option
- **$H$**: Barrier level, set above the current spot price for up-and-in options
- **$r$**: Risk-free interest rate
- **$T$**: Time to maturity
- **$\sigma$**: Volatility of the underlying
- **$\lambda = \frac{2r}{\sigma^2} - 1$**: Exponent parameter from barrier option theory
- **$N(-\cdot)$**: Survival probability for upward barrier movements

The auxiliary terms mirror the down-and-out formulation with sign adjustments:
$$d_1 = \frac{\ln(S/K) + (r + \sigma^2/2)T}{\sigma\sqrt{T}}, \quad d_2 = d_1 - \sigma\sqrt{T}$$
$$d_3 = \frac{\ln(SK/H^2) + (r + \sigma^2/2)T}{\sigma\sqrt{T}}, \quad d_4 = d_3 - \sigma\sqrt{T}$$

## Interpretation
The up-and-in put becomes a standard put option only if the underlying rises to touch the barrier $H$. Before barrier activation, the option has no value; after activation, it behaves like a vanilla put with remaining time to maturity.

The sign changes from the call formula reflect the put payoff structure. The negative terms $N(-d_1)$ and $N(-d_2)$ represent scenarios where the option would expire in-the-money without barrier hit.

A crucial parity relationship connects all barrier option types:
$$V_{ui} + V_{uo} = V_{vanilla} \quad \text{(calls)}$$
$$V_{ui} + V_{di} = V_{put} \quad \text{(puts)}$$

This parity enables consistent pricing across barrier combinations: once any two are known, the others can be derived. It also simplifies hedging, as barrier option portfolios can be decomposed into vanilla options with barrier adjustments.

The $(S/H)^\lambda$ term again captures barrier proximity, but for up-and-in options, higher barriers (farther from spot) result in lower activation probability and lower price.

## Assumptions
- Continuous monitoring of the upward barrier
- Barrier is above the initial spot price
- Risk-neutral pricing framework
- Geometric Brownian motion dynamics
- No dividends during the option life
- European exercise features

## Practical Use
Up-and-in options are used in structured products where upside participation is desired with conditional activation based on market rally. Common in autocallable notes and barrier reverse convertibles where coupon payment or principal protection depends on price movements.

The parity relationships make up-and-in options particularly useful for:
- Hedging barrier option book positions
- Creating synthetic barrier features from vanilla options
- Risk decomposition for portfolio management

When combined with knock-out options, up-and-in options enable creation of "window barriers" that are only active during specific periods.

---

---

## Appendices

### A. Mathematical Notation Reference

| Symbol | Meaning |
|--------|---------|
| $S_0$ | Spot price at time 0 |
| $K$ | Strike price |
| $r$ | Risk-free interest rate |
| $T$ | Time to maturity |
| $\sigma$ | Volatility |
| $N(\cdot)$ | Standard normal CDF |
| $\mathbb{E}$ | Expectation operator |
| $\mathbb{Q}$ | Risk-neutral measure |
| $\mathcal{F}_t$ | Filtration at time $t$ |

### B. Model Assumptions Summary

1. **Black-Scholes**: Lognormal dynamics, constant parameters, frictionless markets
2. **Binomial Trees**: Recombining price lattice, no early exercise (European)
3. **GARCH(1,1)**: Conditional normality, stationarity
4. **Vasicek/ CIR/ Hull-White**: Affine term structure, mean reversion

### C. Practical Calibration Notes

- **Implied Volatility**: Solve using Newton-Raphson or bisection
- **GARCH Parameters**: Maximum likelihood estimation
- **Term Structure**: Bootstrap from market instruments
- **Credit Spreads**: Calibrate to CDS or bond prices

---

*This primer is automatically generated from the financial_equations_dataset.*

# Options Equations - Documentation

## Overview
Options are financial derivatives that provide the right, but not the obligation, to buy (call) or sell (put) an underlying asset at a predetermined price within a specified time period. Options pricing and risk management form the cornerstone of modern quantitative finance, enabling sophisticated hedging strategies, volatility trading, and risk assessment.

## Key Concepts

### European vs American Options
European options can only be exercised at expiration, while American options can be exercised at any time before expiration. This flexibility makes American options more valuable but computationally more complex.

### The Greeks
Options sensitivities that measure how option prices respond to changes in underlying factors. Each Greek provides crucial information for risk management and trading strategies.

### Volatility
The most critical factor in options pricing. Implied volatility reflects market expectations of future price movements, while historical volatility measures past price fluctuations.

### Risk-Neutral Valuation
The fundamental principle that options can be priced by assuming investors are risk-neutral, leading to the risk-neutral probability measure used in all major pricing models.

## Core Equations and Applications

### 1. Black-Scholes Call Option Pricing
**Equation**: `C = S_{0} N(d_{1}) - K e^{-rT} N(d_{2})`

**Applications**:
- Pricing European call options on stocks, indices, and futures
- Foundation for all modern options pricing theory
- Input for volatility surface construction

**Example**: Pricing a call option on Apple stock
- Current stock price: $150
- Strike price: $155
- Time to expiration: 6 months (0.5 years)
- Risk-free rate: 4%
- Volatility: 25%
- Call price ≈ $6.78

**Key Insight**: The model assumes lognormal stock prices, constant volatility, and no dividends, providing a theoretical benchmark for all options pricing.

### 2. Black-Scholes Put Option Pricing
**Equation**: `P = K e^{-rT} N(-d_{2}) - S_{0} N(-d_{1})`

**Applications**:
- Pricing European put options
- Put-call parity validation
- Synthetic position construction

**Example**: Pricing a put option
- Using same parameters as call example above
- Put price ≈ $9.72
- Notice: Call + Put > Intrinsic value due to time value

**Key Insight**: Put pricing is derived from put-call parity, ensuring no arbitrage opportunities exist between calls and puts.

### 3. Put-Call Parity
**Equation**: `C - P = S_{0} - K e^{-rT}`

**Applications**:
- Arbitrage detection and enforcement
- Synthetic position creation
- Options pricing consistency checks

**Example**: Verifying parity
- Call price: $6.78, Put price: $9.72
- Stock price: $150, Strike: $155, PV(K): $155 × e^(-0.04×0.5) ≈ $149.77
- Left side: $6.78 - $9.72 = -$2.94
- Right side: $150 - $149.77 = $0.23
- Difference indicates mispricing opportunity

**Key Insight**: This fundamental relationship must hold in efficient markets, providing the basis for synthetic options strategies.

### 4. Option Delta
**Equation**: `Δ_Call = N(d_1)`, `Δ_Put = N(d_1) - 1`

**Applications**:
- Hedge ratio calculation (delta hedging)
- Portfolio risk management
- Options strategy replication

**Example**: Delta interpretation
- At-the-money call: Δ ≈ 0.50 (50% exposure to stock movement)
- Deep in-the-money call: Δ ≈ 0.90 (90% exposure)
- Out-of-the-money put: Δ ≈ -0.10 (10% negative exposure)

**Key Insight**: Delta measures directional risk, with calls having positive delta and puts having negative delta.

### 5. Option Gamma
**Equation**: `Γ = \frac{N'(d_1)}{S_0 σ √T}`

**Applications**:
- Delta hedging adjustment frequency
- Convexity measurement
- Gamma scalping strategies

**Example**: Gamma behavior
- At-the-money options have highest gamma
- Gamma decreases as options move in/out of the money
- Gamma is highest when delta is near 0.50

**Key Insight**: Gamma measures how quickly delta changes, becoming critical for dynamic hedging strategies.

### 6. Option Theta
**Equation**: `Θ_Call = -[S_0 N'(d_1) σ / (2√T) + r K e^{-rT} N(d_2)]`

**Applications**:
- Time decay analysis
- Options timing strategies
- Portfolio theta management

**Example**: Theta impact
- Out-of-the-money options have negative theta (lose value each day)
- In-the-money options have less negative theta
- Theta increases (becomes less negative) as expiration approaches

**Key Insight**: Theta represents time decay, which accelerates as options approach expiration.

### 7. Option Vega
**Equation**: `V = S_0 √T N'(d_1)`

**Applications**:
- Volatility trading strategies
- Vega hedging (volatility risk management)
- Implied volatility analysis

**Example**: Vega sensitivity
- At-the-money options have highest vega
- Vega decreases for deep in/out-of-the-money options
- Long volatility positions have positive vega

**Key Insight**: Vega measures exposure to volatility changes, crucial for volatility-based trading strategies.

### 8. Binomial Tree Model
**Equation**: `u = e^{σ √Δt}`, `d = e^{-σ √Δt}`, `p^* = \frac{e^{r Δt} - d}{u - d}`

**Applications**:
- American options pricing (early exercise)
- Dividend-paying stock options
- Path-dependent options valuation

**Example**: Binomial pricing
- Stock price: $100, Strike: $100, σ = 20%, r = 5%, T = 1 year
- Using 100 time steps for accuracy
- Call price converges to Black-Scholes as steps increase

**Key Insight**: Binomial model can handle American options and discrete dividends, providing more flexibility than Black-Scholes.

## Practical Applications by Strategy

### Hedging Applications
**Delta Hedging**: Using options delta to create neutral positions
- Buy underlying, sell calls with matching delta
- Adjust position as delta changes (gamma risk)
- Effective for short-term risk management

**Protective Puts**: Buying puts to hedge long stock positions
- Cost: Put premium
- Protection: Limited downside risk
- Breakeven: Stock price - put premium

### Volatility Trading
**Long Volatility**: Buying options when expecting increased volatility
- Buy calls and puts (straddles/strangles)
- Profit from vega when volatility increases
- Risk: Time decay if volatility doesn't increase

**Short Volatility**: Selling options when expecting stable/declining volatility
- Sell options, collect premium
- Risk: Unlimited loss potential if volatility spikes
- Management: Close positions before expiration

### Income Strategies
**Covered Calls**: Selling calls against owned stock
- Income: Call premium
- Risk: Capped upside if stock rallies significantly
- Best for: Stable stocks you want to hold

**Cash-Secured Puts**: Selling puts with cash to buy stock
- Income: Put premium
- Risk: Obligation to buy stock at strike price
- Best for: Stocks you want to own at lower prices

## Advanced Concepts

### Implied Volatility
The volatility that makes the Black-Scholes model price match the market price. Higher implied volatility means higher option prices.

### Volatility Skew
The tendency for out-of-the-money puts to have higher implied volatility than calls, reflecting crash risk preferences.

### Jump Diffusion Models
Extensions to Black-Scholes that incorporate sudden large price movements (jumps) in addition to continuous diffusion.

### Stochastic Volatility Models
Models where volatility itself follows a random process, better capturing the volatility clustering observed in markets.

## Risk Management Considerations

### Greeks-Based Risk
- **Delta Risk**: Directional exposure requiring rebalancing
- **Gamma Risk**: Delta changes requiring frequent adjustments
- **Theta Risk**: Time decay requiring position management
- **Vega Risk**: Volatility exposure requiring volatility hedges
- **Rho Risk**: Interest rate exposure (usually minor)

### Position Sizing
- Maximum loss calculations for each strategy
- Margin requirements for complex positions
- Liquidity considerations for large positions

### Market Conditions
- High volatility environments favor option sellers
- Low volatility favors option buyers
- Directionality affects optimal strategies
- Time to expiration impacts risk/reward profiles

This comprehensive framework enables sophisticated options trading and risk management across all market conditions and investment objectives.</content>
<parameter name="filePath">options_documentation.md
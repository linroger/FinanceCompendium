# Futures Equations - Documentation

## Overview
Futures contracts are standardized agreements to buy or sell an underlying asset at a predetermined price on a future date. Futures pricing and risk management form the foundation of derivatives markets, enabling sophisticated hedging strategies, speculation, and arbitrage across commodities, financial instruments, and currencies.

## Key Concepts

### Cost-of-Carry Model
The fundamental principle that futures prices reflect the cost of holding the underlying asset, including financing costs, storage costs, and opportunity costs.

### Convergence
Futures prices converge to spot prices as expiration approaches, eliminating arbitrage opportunities.

### Margin and Leverage
Futures provide extraordinary leverage through margin requirements that are typically 5-15% of contract value.

### Basis and Hedging
The difference between futures and spot prices, and the use of futures to hedge spot positions.

### Market Structure
Exchange-traded standardized contracts with daily mark-to-market settlement.

## Core Equations and Applications

### 1. Futures Pricing (Cost-of-Carry)
**Equation**: `F₀ = S₀ × e^(rT)`

**Applications**:
- Stock index futures pricing
- Basic futures valuation model
- Theoretical fair value calculations

**Example**: S&P 500 futures pricing
- Spot index: 4,200
- Risk-free rate: 2.5%
- Time to expiration: 3 months (0.25 years)
- Futures price = 4,200 × e^(0.025 × 0.25) = 4,215.63

**Key Insight**: Futures trade at a premium to spot prices due to financing costs, creating normal backwardation.

### 2. Commodity Futures Pricing
**Equation**: `F₀ = S₀ × e^((r - y)T)`

**Applications**:
- Agricultural commodities (wheat, corn, soybeans)
- Energy products (crude oil, natural gas)
- Industrial metals (copper, aluminum)

**Example**: Crude oil futures
- Spot price: $75 per barrel
- Risk-free rate: 3%
- Convenience yield: 1% (storage and insurance benefits)
- Time to expiration: 6 months
- Futures price = $75 × e^((0.03 - 0.01) × 0.5) = $76.14

**Key Insight**: Convenience yield reduces futures prices below cost-of-carry levels, sometimes creating contango.

### 3. Currency Futures Pricing
**Equation**: `F₀ = S₀ × e^((r_domestic - r_foreign)T)`

**Applications**:
- Foreign exchange risk management
- International trade hedging
- Currency speculation

**Example**: EUR/USD futures
- Spot rate: 1.085 (1.085 USD per EUR)
- US interest rate: 3%
- Eurozone interest rate: 1.5%
- Time to expiration: 3 months
- Futures price = 1.085 × e^((0.03 - 0.015) × 0.25) = 1.088

**Key Insight**: Interest rate differentials drive currency futures pricing through covered interest arbitrage.

### 4. Index Futures Pricing
**Equation**: `F₀ = S₀ × e^((r - q)T)`

**Applications**:
- Equity index hedging (S&P 500, NASDAQ, FTSE)
- Portfolio insurance strategies
- Index arbitrage

**Example**: NASDAQ-100 futures
- Spot index: 15,500
- Risk-free rate: 2.5%
- Dividend yield: 1.2%
- Time to expiration: 2 months
- Futures price = 15,500 × e^((0.025 - 0.012) × 0.167) = 15,529

**Key Insight**: Dividend yields reduce futures prices below pure cost-of-carry levels.

### 5. Margin Requirements
**Equation**: `Initial Margin = k × Contract Value × Volatility Factor`

**Applications**:
- Risk management for exchange clearing houses
- Position sizing for traders
- Regulatory capital requirements

**Example**: Gold futures margin
- Contract value: $180,000 (100 oz × $1,800)
- Margin multiplier: 5%
- Volatility factor: 1.3 (30% above base)
- Initial margin = 0.05 × 180,000 × 1.3 = $11,700

**Key Insight**: Higher volatility requires higher margins to protect against adverse price movements.

### 6. Maintenance Margin
**Equation**: `Maintenance Margin = Initial Margin × (1 - Margin Call Threshold)`

**Applications**:
- Preventing excessive losses
- Ensuring position viability
- Exchange risk controls

**Example**: Maintenance margin calculation
- Initial margin: $11,700
- Margin call threshold: 25%
- Maintenance margin = 11,700 × (1 - 0.25) = $8,775

**Key Insight**: Maintenance margins are lower than initial margins, creating a buffer zone.

### 7. Futures Profit/Loss
**Equation**: `Π = (F_T - F₀) × Contract Size × Position`

**Applications**:
- Daily settlement calculations
- Performance measurement
- Risk assessment

**Example**: Long gold futures position
- Entry price: $1,800 per ounce
- Exit price: $1,850 per ounce
- Contract size: 100 ounces
- Profit = ($1,850 - $1,800) × 100 × 1 = $5,000

**Key Insight**: Futures provide symmetric profit/loss potential with limited downside risk through margin calls.

### 8. Minimum Variance Hedge Ratio
**Equation**: `β = Cov(R_s, R_f) / Var(R_f)`

**Applications**:
- Optimal hedge construction
- Portfolio risk minimization
- Cross-hedging strategies

**Example**: Corn producer hedging
- Spot corn returns: [2%, 5%, -1%, 8%, -3%]
- Corn futures returns: [1.5%, 4%, -0.5%, 6%, -2%]
- Hedge ratio ≈ 0.95 (use 95 futures contracts per 100 spot contracts)

**Key Insight**: Statistical relationship between spot and futures determines optimal hedge size.

### 9. Basis
**Equation**: `B = F - S`

**Applications**:
- Hedging effectiveness measurement
- Arbitrage opportunity identification
- Market condition assessment

**Example**: Soybean basis
- Futures price: $13.50 per bushel
- Local cash price: $13.20 per bushel
- Basis = $13.50 - $13.20 = $0.30 (backwardation)

**Key Insight**: Positive basis indicates backwardation (futures premium), negative indicates contango.

### 10. Basis Risk
**Equation**: `σ_basis = √Var(B)`

**Applications**:
- Hedge effectiveness evaluation
- Risk-adjusted hedging decisions
- Portfolio risk measurement

**Example**: Basis risk assessment
- Historical basis observations: [$0.25, $0.30, $0.15, $0.35, $0.20]
- Standard deviation = $0.08 per bushel
- 95% VaR = $0.08 × 1.96 = $0.157 (15.7¢ risk)

**Key Insight**: Basis risk represents the uncertainty of hedge effectiveness.

## Specialized Futures Applications

### Eurodollar Futures
**Equation**: `F₀ = 100 - 3-month LIBOR`

**Applications**:
- Interest rate hedging
- Federal Reserve policy anticipation
- Money market risk management

### Treasury Futures
**Equation**: `CF = [1/(1 + y/2)] × [(0.6/0.5) + (0.4/0.25)]`

**Applications**:
- Government bond portfolio hedging
- Duration risk management
- Yield curve speculation

### Commodity Hedging Strategies

#### Long Hedge (Producer Protection)
- **Objective**: Lock in selling price
- **Action**: Sell futures contracts
- **Example**: Wheat farmer sells Chicago futures to hedge harvest

#### Short Hedge (Consumer Protection)
- **Objective**: Lock in buying price
- **Action**: Buy futures contracts
- **Example**: Bakery buys wheat futures to hedge flour costs

#### Cross-Hedging
- **Objective**: Hedge with imperfectly correlated instrument
- **Example**: Airline hedges jet fuel with crude oil or heating oil futures

### Basis Trading
- **Objective**: Profit from basis movements
- **Strategy**: Buy spot, sell futures when basis is attractive
- **Risk**: Basis risk and convergence risk

### Spread Trading
- **Objective**: Profit from relative price movements
- **Strategy**: Simultaneously buy and sell related contracts
- **Example**: Crack spread (oil vs. refined products)

## Risk Management Considerations

### Margin Risk
- Initial margin protects against adverse movements
- Maintenance margin prevents excessive losses
- Margin calls require immediate equity restoration

### Liquidity Risk
- Thinly traded contracts may have wide bid-ask spreads
- Position unwinding may be difficult during market stress
- Volume and open interest indicate liquidity levels

### Basis Risk
- Hedge effectiveness depends on basis stability
- Cross-hedging increases basis risk
- Time decay affects basis convergence

### Operational Risk
- Delivery logistics for physical commodities
- Contract specifications and delivery months
- Exchange-specific rules and procedures

## Integration with Modern Finance

Futures markets integrate with other financial instruments through:
- **Arbitrage**: Price discrepancies between futures and related instruments
- **Synthetic Positions**: Creating futures-like exposure with options
- **Portfolio Insurance**: Dynamic hedging using futures
- **Risk Parity**: Allocating capital based on risk contributions
- **Factor Investing**: Using futures for factor exposure (commodities, currencies)

This comprehensive framework enables sophisticated risk management and investment strategies across all asset classes and market conditions.</content>
<parameter name="filePath">futures_documentation.md
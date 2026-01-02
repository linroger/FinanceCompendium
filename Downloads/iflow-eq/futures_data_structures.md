# Futures Equations - Data Structures and Variable Definitions

## Overview
This document defines the data structures and variable specifications for futures equations. Futures contracts are standardized agreements to buy or sell an underlying asset at a predetermined price on a future date, requiring robust handling of pricing, margin, and risk management.

## Core Variables

### Basic Futures Parameters
- **F₀**: Futures Price (Number, > 0)
  - Current futures contract price
  - Units: Currency amount per contract
  - Validation: Must be positive, typically close to spot price

- **S₀**: Spot Price (Number, > 0)
  - Current market price of the underlying asset
  - Units: Currency amount per unit of underlying
  - Validation: Must be positive

- **T**: Time to Expiration/Delivery (Number, T > 0)
  - Time remaining until contract delivery date
  - Units: Years (e.g., 0.25 for 3 months)
  - Validation: Must be positive, typically < 2 years for most contracts

- **r**: Risk-Free Rate (Number, 0 ≤ r ≤ 1)
  - Continuously compounded risk-free interest rate
  - Units: Decimal (e.g., 0.05 for 5%)
  - Validation: Must be between 0 and 1

### Carrying Cost Variables
- **y**: Convenience Yield (Number, 0 ≤ y ≤ 1)
  - Non-monetary benefit of holding physical commodity
  - Units: Decimal
  - Validation: Must be between 0 and 1, typically < r

- **q**: Dividend Yield (Number, 0 ≤ q ≤ 1)
  - Continuous dividend yield for indices
  - Units: Decimal
  - Validation: Must be between 0 and 1

- **r_domestic**: Domestic Interest Rate (Number, 0 ≤ r_domestic ≤ 1)
  - Risk-free rate in domestic currency
  - Units: Decimal

- **r_foreign**: Foreign Interest Rate (Number, 0 ≤ r_foreign ≤ 1)
  - Risk-free rate in foreign currency
  - Units: Decimal

### Margin and Risk Variables
- **Initial Margin**: Initial Margin Requirement (Number, > 0)
  - Minimum equity required to enter position
  - Units: Currency amount
  - Validation: Must be positive

- **Maintenance Margin**: Maintenance Margin Level (Number, > 0)
  - Minimum equity level before margin call
  - Units: Currency amount
  - Validation: Must be < initial margin

- **Margin Call Threshold**: Margin Call Trigger (Number, 0 < threshold < 1)
  - Fraction of initial margin that triggers calls
  - Units: Decimal (e.g., 0.25 for 25%)
  - Validation: Must be between 0 and 1

- **Equity**: Account Equity (Number)
  - Current account value
  - Units: Currency amount
  - Can be positive or negative

### Contract Specifications
- **Contract Size**: Contract Multiplier (Integer, > 0)
  - Number of units per contract
  - Units: Quantity (e.g., 1000 barrels for oil, 100 ounces for gold)
  - Validation: Must be positive integer

- **Tick Size**: Minimum Price Movement (Number, > 0)
  - Smallest allowable price increment
  - Units: Currency amount per contract
  - Validation: Must be positive

- **Tick Value**: Value per Tick (Number, > 0)
  - Dollar value of one tick movement
  - Formula: Tick Size × Contract Size
  - Units: Currency amount

### Market Data Variables
- **Open Interest**: Outstanding Contracts (Integer, ≥ 0)
  - Total number of outstanding contracts
  - Units: Number of contracts
  - Validation: Must be non-negative

- **Volume**: Daily Trading Volume (Integer, ≥ 0)
  - Number of contracts traded in period
  - Units: Number of contracts per period
  - Validation: Must be non-negative

- **F_T**: Futures Price at Expiration (Number)
  - Settlement price at contract expiration
  - Units: Currency amount per contract

### Hedging Variables
- **β**: Hedge Ratio/Beta (Number)
  - Optimal hedge ratio for minimum variance hedge
  - Units: Dimensionless ratio
  - Formula: β = Cov(R_s, R_f) / Var(R_f)

- **h**: Hedge Ratio (Number)
  - Number of futures contracts per unit of spot exposure
  - Formula: h = (β × Spot Position) / Contract Size
  - Units: Number of contracts

- **Basis**: Futures Basis (Number)
  - Difference between futures and spot prices
  - Formula: Basis = F₀ - S₀
  - Units: Currency amount

- **Basis Risk**: Basis Uncertainty (Number)
  - Risk that basis changes unfavorably
  - Units: Currency amount (standard deviation of basis)

### Delivery and Settlement Variables
- **Delivery Month**: Contract Month (String/Date)
  - Month when contract expires/delivers
  - Format: YYYY-MM (e.g., "2024-12")

- **Last Trading Day**: Final Trading Date (Date)
  - Last day contract can be traded
  - Format: Calendar date

- **Delivery Date**: Settlement Date (Date)
  - When delivery/settlement occurs
  - Format: Calendar date

## Data Structure Specifications

### Futures Pricing Models

#### Basic Futures Pricing Parameters
```json
{
  "S0": "number > 0",
  "T": "number > 0",
  "r": "number 0-1",
  "contract_size": "integer > 0",
  "futures_price": "number > 0 (calculated)"
}
```

#### Commodity Futures Parameters
```json
{
  "S0": "number > 0",
  "T": "number > 0",
  "r": "number 0-1",
  "convenience_yield": "number 0-1",
  "storage_costs": "number >= 0",
  "futures_price": "number > 0 (calculated)"
}
```

#### Currency Futures Parameters
```json
{
  "spot_rate": "number > 0",
  "T": "number > 0",
  "domestic_rate": "number 0-1",
  "foreign_rate": "number 0-1",
  "contract_size": "integer > 0",
  "futures_price": "number > 0 (calculated)"
}
```

### Margin and Risk Management Parameters
```json
{
  "contract_value": "number > 0",
  "volatility_factor": "number > 0",
  "margin_multiplier": "number 0-1",
  "initial_margin": "number > 0 (calculated)",
  "maintenance_margin": "number > 0 (calculated)"
}
```

### Hedging Strategy Parameters
```json
{
  "spot_position": "number",
  "futures_beta": "number",
  "contract_size": "integer > 0",
  "correlation": "number -1 to 1",
  "hedge_ratio": "number (calculated)",
  "contracts_needed": "number (calculated)"
}
```

### Market Data and Analytics Parameters
```json
{
  "open_interest": "integer >= 0",
  "volume": "integer >= 0",
  "contract_month": "string (YYYY-MM)",
  "tick_size": "number > 0",
  "tick_value": "number > 0 (calculated)",
  "daily_range": "number >= 0",
  "settlement_price": "number > 0"
}
```

### Portfolio Margin Parameters (SPAN)
```json
{
  "position_sizes": "array of numbers",
  "volatilities": "array of numbers 0-1",
  "correlations": "matrix of numbers -1 to 1",
  "stress_scenarios": "array of numbers",
  "portfolio_margin": "number > 0 (calculated)"
}
```

## Validation Rules

### Mathematical Constraints
1. For cost-of-carry model: Futures price should exceed spot price for normal backwardation
2. For commodities: Convenience yield cannot exceed risk-free rate significantly
3. For hedging: Correlation coefficients must be between -1 and 1
4. For margins: Maintenance margin must be less than initial margin

### Business Logic Constraints
1. Contract sizes must be standardized for exchange-traded futures
2. Delivery dates must follow exchange calendars and holidays
3. Margin requirements vary by volatility and position size
4. Open interest cannot exceed deliverable supply for physical commodities

### Market Reality Constraints
1. Futures prices converge to spot prices at expiration
2. Basis risk increases with time to expiration
3. Liquidity decreases for distant contract months
4. Margin calls must be met within exchange-specified timeframes

## Usage Examples

### Futures Pricing Calculation
```javascript
const futuresParams = {
  S0: 100,           // Spot price: $100
  r: 0.05,           // Risk-free rate: 5%
  T: 0.25,           // 3 months to expiration
  contract_size: 100 // 100 units per contract
};
// F₀ = 100 × e^(0.05 × 0.25) = 101.27
```

### Margin Requirement Calculation
```javascript
const marginParams = {
  contract_value: 10127,    // Contract value: $10,127
  volatility_factor: 0.15,  // 15% volatility
  margin_multiplier: 0.05   // 5% of value
};
// Initial Margin = 0.05 × 10127 × (1 + 0.15) ≈ 538
```

### Hedge Ratio Calculation
```javascript
const hedgeParams = {
  spot_position: 100000,    // $100,000 spot exposure
  futures_beta: 0.95,       // Hedge instrument beta
  contract_size: 100,       // 100 units per contract
  correlation: 0.85         // 85% correlation
};
// Hedge Ratio = (0.95 × 100000) / 100 = 950 contracts
```

This data structure specification ensures consistent parameter handling and validation across all futures pricing and risk management equations.</content>
<parameter name="filePath">futures_data_structures.md
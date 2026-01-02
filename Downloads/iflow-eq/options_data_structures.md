# Options Equations - Data Structures and Variable Definitions

## Overview
This document defines the data structures and variable specifications for options equations. Options pricing and risk management require precise handling of time, volatility, and probability distributions.

## Core Variables

### Basic Option Parameters
- **S₀**: Current Stock Price (Number, S₀ > 0)
  - Spot price of the underlying asset
  - Units: Currency amount per share
  - Validation: Must be positive

- **K**: Strike Price (Number, K > 0)
  - Exercise price of the option
  - Units: Currency amount per share
  - Validation: Must be positive

- **T**: Time to Expiration (Number, T > 0)
  - Time remaining until option expires
  - Units: Years (e.g., 0.25 for 3 months)
  - Validation: Must be positive, typically < 2 years

- **r**: Risk-Free Rate (Number, 0 ≤ r ≤ 1)
  - Continuously compounded risk-free interest rate
  - Units: Decimal (e.g., 0.05 for 5%)
  - Validation: Must be between 0 and 1

- **σ**: Volatility (Number, 0 < σ ≤ 1)
  - Annualized standard deviation of stock returns
  - Units: Decimal (e.g., 0.30 for 30% volatility)
  - Validation: Must be between 0 and 1, typically 0.10-0.80

### Black-Scholes Parameters
- **d₁**: First Black-Scholes Parameter (Number)
  - Key parameter in Black-Scholes formula
  - Formula: d₁ = [ln(S₀/K) + (r + σ²/2)T] / (σ√T)
  - Units: Dimensionless

- **d₂**: Second Black-Scholes Parameter (Number)
  - Second parameter in Black-Scholes formula
  - Formula: d₂ = d₁ - σ√T
  - Units: Dimensionless

- **N(x)**: Cumulative Normal Distribution (Number, 0 ≤ N(x) ≤ 1)
  - Standard normal cumulative distribution function
  - Units: Probability (0 to 1)

- **N'(x)**: Normal Density Function (Number, ≥ 0)
  - Standard normal probability density function
  - Formula: N'(x) = (1/√(2π)) * e^(-x²/2)
  - Units: Probability density

### Option Greeks
- **Δ (Delta)**: Option Delta (-1 ≤ Δ ≤ 1)
  - Rate of change of option price with respect to underlying price
  - Call delta: 0 to 1, Put delta: -1 to 0
  - Units: Dimensionless ratio

- **Γ (Gamma)**: Option Gamma (Number, ≥ 0)
  - Rate of change of delta with respect to underlying price
  - Measures convexity of option price
  - Units: Dimensionless (per currency unit)

- **Θ (Theta)**: Option Theta (Number)
  - Rate of change of option price with respect to time
  - Time decay (negative for long positions)
  - Units: Currency per year

- **ν (Vega)**: Option Vega (Number, ≥ 0)
  - Rate of change of option price with respect to volatility
  - Measures volatility sensitivity
  - Units: Currency per percentage point of volatility

- **ρ (Rho)**: Option Rho (Number)
  - Rate of change of option price with respect to interest rates
  - Measures interest rate sensitivity
  - Units: Currency per percentage point of interest rate

### Binomial Model Parameters
- **u**: Up Factor (Number, u > 1)
  - Multiplicative factor for upward price movement
  - Formula: u = e^(σ√(Δt))
  - Units: Multiplier

- **d**: Down Factor (Number, 0 < d < 1)
  - Multiplicative factor for downward price movement
  - Formula: d = e^(-σ√(Δt))
  - Units: Multiplier

- **Δt**: Time Step (Number, Δt > 0)
  - Length of each time interval in binomial tree
  - Formula: Δt = T/N where N is number of steps
  - Units: Years

- **p**: Risk-Neutral Probability (Number, 0 ≤ p ≤ 1)
  - Probability of upward movement under risk-neutral measure
  - Formula: p = (e^(rΔt) - d) / (u - d)
  - Units: Probability

### Implied Volatility and Surfaces
- **IV**: Implied Volatility (Number, 0 < IV ≤ 1)
  - Volatility implied by observed option prices
  - Units: Decimal
  - Validation: Must match market prices when plugged into model

- **σ(K,T)**: Volatility Surface (Function)
  - Implied volatility as function of strike and time
  - Units: Matrix of volatilities
  - Validation: Must be arbitrage-free

### American vs European Options
- **C_American**: American Call Price (Number, ≥ C_European)
  - Price of American call (can exercise early)
  - Units: Currency
  - Validation: ≥ European call price

- **P_American**: American Put Price (Number, ≥ P_European)
  - Price of American put (can exercise early)
  - Units: Currency
  - Validation: ≥ European put price

## Data Structure Specifications

### Black-Scholes Option Parameters
```json
{
  "S0": "number > 0",
  "K": "number > 0",
  "T": "number > 0",
  "r": "number 0-1",
  "sigma": "number 0-1",
  "dividend_yield": "number 0-1 (optional)",
  "C": "number >= 0 (calculated)",
  "P": "number >= 0 (calculated)"
}
```

### Option Greeks Parameters
```json
{
  "S0": "number > 0",
  "K": "number > 0",
  "T": "number > 0",
  "r": "number 0-1",
  "sigma": "number 0-1",
  "delta": "number -1 to 1 (calculated)",
  "gamma": "number >= 0 (calculated)",
  "theta": "number (calculated)",
  "vega": "number >= 0 (calculated)",
  "rho": "number (calculated)"
}
```

### Binomial Tree Parameters
```json
{
  "S0": "number > 0",
  "K": "number > 0",
  "T": "number > 0",
  "r": "number 0-1",
  "sigma": "number 0-1",
  "N": "integer > 0 (steps)",
  "option_type": "string: 'call'|'put'",
  "exercise_type": "string: 'european'|'american'",
  "price": "number >= 0 (calculated)"
}
```

### Volatility Surface Parameters
```json
{
  "strikes": "array of numbers > 0",
  "expirations": "array of numbers > 0",
  "market_prices": "matrix of numbers >= 0",
  "r": "number 0-1",
  "S0": "number > 0",
  "implied_vols": "matrix of numbers 0-1 (calculated)"
}
```

### Monte Carlo Simulation Parameters
```json
{
  "S0": "number > 0",
  "K": "number > 0",
  "T": "number > 0",
  "r": "number 0-1",
  "sigma": "number 0-1",
  "N_simulations": "integer > 1000",
  "N_steps": "integer > 10",
  "price": "number >= 0 (calculated)",
  "std_error": "number >= 0 (calculated)"
}
```

## Validation Rules

### Mathematical Constraints
1. For Black-Scholes: Time to expiration T must be > 0
2. For binomial models: Number of steps N should be large enough for convergence (typically N ≥ 100)
3. For volatility: Implied volatility must produce model prices matching market prices
4. For Greeks: All sensitivities must be finite and reasonable in magnitude

### Arbitrage Constraints
1. Call prices must be ≥ max(S₀ - PV(K), 0) (no arbitrage lower bound)
2. Put prices must be ≥ max(PV(K) - S₀, 0) (no arbitrage lower bound)
3. Put-call parity must hold for European options
4. American options must be worth at least European options

### Numerical Stability
1. Very short time to expiration (T < 0.001) may cause numerical issues
2. Very low volatility (σ < 0.001) may cause division by zero
3. Very out-of-the-money options may have very small probabilities

## Usage Examples

### Black-Scholes Pricing
```javascript
const bsParams = {
  S0: 100,     // $100 stock price
  K: 105,      // $105 strike
  T: 1.0,      // 1 year to expiration
  r: 0.05,     // 5% risk-free rate
  sigma: 0.20  // 20% volatility
};
// Call price ≈ $8.02, Put price ≈ $7.90
```

### Greeks Calculation
```javascript
const greekParams = {
  S0: 100,
  K: 105,
  T: 1.0,
  r: 0.05,
  sigma: 0.20
};
// Delta ≈ 0.45, Gamma ≈ 0.02, Theta ≈ -3.50
```

### Binomial Tree
```javascript
const binomialParams = {
  S0: 100,
  K: 105,
  T: 1.0,
  r: 0.05,
  sigma: 0.20,
  N: 100,      // 100 time steps
  option_type: 'call',
  exercise_type: 'american'
};
// Price converges to Black-Scholes as N increases
```

This data structure specification ensures consistent parameter handling and validation across all options pricing equations.</content>
<parameter name="filePath">options_data_structures.md
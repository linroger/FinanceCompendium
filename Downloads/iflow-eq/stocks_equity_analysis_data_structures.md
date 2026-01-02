# Stocks & Equity Analysis - Data Structures and Variable Definitions

## Overview
This document defines the data structures and variable specifications for stocks and equity analysis equations. Variables cover stock valuation models, fundamental analysis metrics, risk measures, and technical indicators.

## Core Variables

### Stock Valuation Variables
- **P**: Stock Price per Share (Number, > 0)
  - Market price of a single share of stock
  - Units: Currency amount per share
  - Validation: Must be positive

- **D_1**: Next Period Dividend (Number, ≥ 0)
  - Expected dividend payment in the next period
  - Units: Currency amount per share
  - Validation: Must be non-negative

- **D_0**: Current Period Dividend (Number, ≥ 0)
  - Most recent dividend payment
  - Units: Currency amount per share
  - Validation: Must be non-negative

- **r**: Required Rate of Return/Discount Rate (Number, 0 < r < 1)
  - Expected return required by investors
  - Units: Decimal (e.g., 0.08 for 8%)
  - Validation: Must be between 0 and 1, typically 0.05-0.15

- **g**: Dividend Growth Rate (Number, 0 ≤ g < r)
  - Constant annual growth rate of dividends
  - Units: Decimal
  - Validation: Must be less than required rate of return for convergence

- **g_1, g_2, g_3**: Multi-Stage Growth Rates (Number, 0 ≤ g < r)
  - Growth rates for different stages in multi-stage models
  - Units: Decimal
  - Validation: Each must be less than required rate of return

### Valuation Ratios and Multiples
- **EPS**: Earnings Per Share (Number)
  - Net income available to common shareholders per share
  - Units: Currency amount per share
  - Validation: Can be positive or negative

- **BVPS**: Book Value Per Share (Number)
  - Shareholders' equity divided by shares outstanding
  - Units: Currency amount per share
  - Validation: Can be positive or negative

- **SPS**: Sales Per Share (Number, > 0)
  - Total revenue divided by shares outstanding
  - Units: Currency amount per share
  - Validation: Must be positive

- **EV**: Enterprise Value (Number)
  - Total value of the company including debt and excluding cash
  - Units: Currency amount
  - Formula: Market Cap + Debt - Cash

- **EBITDA**: Earnings Before Interest, Taxes, Depreciation, and Amortization (Number)
  - Operating profit before certain expenses
  - Units: Currency amount

- **CFPS**: Cash Flow Per Share (Number)
  - Operating cash flow per share
  - Units: Currency amount per share

- **FCF**: Free Cash Flow (Number)
  - Cash available after capital expenditures
  - Units: Currency amount
  - Formula: Operating Cash Flow - CapEx

### Beta and Risk Variables
- **β**: Beta Coefficient (Number, ≥ 0)
  - Measure of systematic risk relative to market
  - Units: Dimensionless ratio
  - β = 1: Market risk, β > 1: Higher volatility, β < 1: Lower volatility

- **R_i**: Stock Return Series (Array of Numbers)
  - Historical returns for the individual stock
  - Units: Decimal returns (e.g., 0.05 for 5%)

- **R_m**: Market Return Series (Array of Numbers)
  - Historical returns for the market index
  - Units: Decimal returns

- **σ_i**: Stock Standard Deviation (Number, ≥ 0)
  - Volatility of stock returns
  - Units: Decimal

- **σ_m**: Market Standard Deviation (Number, ≥ 0)
  - Volatility of market returns
  - Units: Decimal

- **ρ_i,m**: Correlation Coefficient (Number, -1 ≤ ρ ≤ 1)
  - Correlation between stock and market returns
  - Units: Dimensionless ratio

- **D/E**: Debt-to-Equity Ratio (Number, ≥ 0)
  - Ratio of total debt to shareholders' equity
  - Units: Ratio

- **T**: Corporate Tax Rate (Number, 0 ≤ T ≤ 1)
  - Marginal tax rate for the corporation
  - Units: Decimal

### Fundamental Analysis Variables
- **Net Income**: Net Profit After All Expenses (Number)
  - Bottom line profit after all expenses and taxes
  - Units: Currency amount

- **Preferred Dividends**: Dividends Paid to Preferred Shareholders (Number, ≥ 0)
  - Dividend payments to preferred stock holders
  - Units: Currency amount

- **Shares Outstanding**: Total Common Shares Issued (Integer, > 0)
  - Number of shares available in the market
  - Units: Number of shares

- **Total Shareholders' Equity**: Book Value of Equity (Number)
  - Assets minus liabilities
  - Units: Currency amount

- **Assets**: Total Company Assets (Number, > 0)
  - Everything owned by the company
  - Units: Currency amount

- **Total Dividends**: Total Dividend Payments (Number, ≥ 0)
  - All dividend payments made
  - Units: Currency amount

- **Reinvested Earnings**: Retained Earnings (Number)
  - Portion of net income not paid as dividends
  - Units: Currency amount

### Technical Analysis Variables
- **P_t**: Price at Time t (Number, > 0)
  - Stock price at time period t
  - Units: Currency amount per share

- **SMA_n**: Simple Moving Average (Number, > 0)
  - Average price over n periods
  - Units: Currency amount per share

- **EMA_t**: Exponential Moving Average (Number, > 0)
  - Weighted average giving more importance to recent prices
  - Units: Currency amount per share

- **k**: Smoothing Factor (Number, 0 < k ≤ 1)
  - Weight given to most recent price in EMA
  - Formula: k = 2/(n+1)

- **RS**: Relative Strength (Number, ≥ 0)
  - Ratio of average gains to average losses
  - Units: Ratio

- **RSI**: Relative Strength Index (Number, 0 ≤ RSI ≤ 100)
  - Momentum oscillator measuring price change velocity
  - Units: Index (0-100)

- **MACD**: Moving Average Convergence Divergence (Number)
  - Difference between fast and slow EMAs
  - Units: Currency amount per share

- **Signal**: MACD Signal Line (Number)
  - EMA of MACD line
  - Units: Currency amount per share

- **BB_Upper**: Bollinger Band Upper (Number, > 0)
  - Upper standard deviation band
  - Units: Currency amount per share

- **BB_Lower**: Bollinger Band Lower (Number, > 0)
  - Lower standard deviation band
  - Units: Currency amount per share

## Data Structure Specifications

### Stock Valuation Models

#### Dividend Discount Model Parameters
```json
{
  "P": "number > 0 (calculated)",
  "D_1": "number >= 0",
  "r": "number 0-1",
  "g": "number 0 to < r"
}
```

#### Multi-Stage DDM Parameters
```json
{
  "D_0": "number >= 0",
  "g_1": "number >= 0",
  "g_2": "number >= 0",
  "r": "number 0-1",
  "n": "integer > 0",
  "P": "number > 0 (calculated)"
}
```

### Valuation Ratios Parameters
```json
{
  "P": "number > 0",
  "EPS": "number",
  "BVPS": "number",
  "SPS": "number > 0",
  "market_cap": "number > 0",
  "debt": "number >= 0",
  "cash": "number >= 0",
  "EBITDA": "number",
  "CFPS": "number",
  "FCF": "number"
}
```

### Beta Calculation Parameters
```json
{
  "stock_returns": "array of numbers",
  "market_returns": "array of numbers",
  "correlation": "number -1 to 1",
  "stock_volatility": "number >= 0",
  "market_volatility": "number > 0",
  "beta": "number >= 0 (calculated)"
}
```

#### Levered Beta Parameters
```json
{
  "unlevered_beta": "number >= 0",
  "debt_to_equity": "number >= 0",
  "tax_rate": "number 0-1",
  "levered_beta": "number >= 0 (calculated)"
}
```

### Fundamental Analysis Parameters
```json
{
  "net_income": "number",
  "preferred_dividends": "number >= 0",
  "shares_outstanding": "number > 0",
  "total_equity": "number",
  "total_assets": "number > 0",
  "EPS": "number (calculated)",
  "BVPS": "number (calculated)",
  "ROE": "number (calculated)"
}
```

### Technical Analysis Parameters
```json
{
  "prices": "array of numbers > 0",
  "period": "integer > 0",
  "SMA": "array of numbers > 0 (calculated)",
  "EMA": "array of numbers > 0 (calculated)",
  "RSI": "array of numbers 0-100 (calculated)",
  "MACD": "array of numbers (calculated)",
  "signal_line": "array of numbers (calculated)"
}
```

#### Bollinger Bands Parameters
```json
{
  "prices": "array of numbers > 0",
  "period": "integer >= 2",
  "standard_deviations": "number > 0",
  "upper_band": "array of numbers > 0 (calculated)",
  "lower_band": "array of numbers > 0 (calculated)",
  "percent_b": "array of numbers 0-1 (calculated)"
}
```

## Validation Rules

### Business Logic Constraints
1. For DDM models: Growth rate g must be less than required return r for mathematical convergence
2. For multi-stage models: Later stage growth rates should be lower than earlier stages
3. For beta calculations: Correlation coefficient must be between -1 and 1
4. For technical indicators: Price arrays must contain sufficient data points for the chosen period
5. For valuation ratios: Share counts and prices must be positive

### Mathematical Constraints
1. All monetary values should have appropriate decimal precision (typically 2-4 decimal places)
2. Return series should be properly aligned by date for beta calculations
3. Time series data should be sorted chronologically
4. Standard deviations must be calculated from adequate sample sizes (minimum 30 observations recommended)

### Data Type Constraints
1. Prices and monetary amounts: Floating point with 2-4 decimal places
2. Ratios and rates: Decimal between 0 and appropriate upper bounds
3. Share counts: Positive integers
4. Return series: Arrays of decimals representing percentage returns
5. Time periods: Positive integers

## Usage Examples

### Dividend Discount Model Calculation
```javascript
const ddmParams = {
  D_1: 2.50,    // $2.50 expected next dividend
  r: 0.10,      // 10% required return
  g: 0.03       // 3% growth rate
};
// P = 2.50 / (0.10 - 0.03) = 35.71
```

### Beta Calculation
```javascript
const betaParams = {
  stock_returns: [0.02, 0.05, -0.01, 0.08, -0.03],
  market_returns: [0.01, 0.03, 0.00, 0.06, -0.02],
  correlation: 0.85,
  stock_volatility: 0.12,
  market_volatility: 0.08
};
// β = 0.85 * (0.12 / 0.08) = 1.275
```

### Technical Analysis - RSI Calculation
```javascript
const rsiParams = {
  prices: [100, 102, 101, 105, 107, 106, 108, 110, 109, 112],
  period: 14
};
// RSI calculated from price changes over 14 periods
```

This data structure specification ensures consistent parameter handling and validation across all stocks and equity analysis equations.</content>
<parameter name="filePath">stocks_equity_analysis_data_structures.md
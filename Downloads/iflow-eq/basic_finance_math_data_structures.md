# Basic Finance Math - Data Structures and Variable Definitions

## Overview
This document defines the data structures and variable specifications for basic finance mathematics equations. All variables follow consistent naming conventions and include validation rules.

## Core Variables

### Time Value of Money Variables
- **PV**: Present Value (Number, > 0)
  - Current worth of a future sum of money
  - Units: Currency amount
  - Validation: Must be positive for investment calculations

- **FV**: Future Value (Number, > 0)
  - Value of an investment at a future date
  - Units: Currency amount
  - Validation: Must be positive for future cash flows

- **r**: Interest Rate/Discount Rate (Number, 0 ≤ r ≤ 1)
  - Periodic interest rate or discount rate
  - Units: Decimal (e.g., 0.05 for 5%)
  - Validation: Must be between 0 and 1 (or 0 to 100% if expressed as percentage)

- **n**: Number of Periods (Integer, n ≥ 1)
  - Time periods for compounding or discounting
  - Units: Periods (years, months, etc.)
  - Validation: Must be positive integer

- **t**: Time in Years (Number, t ≥ 0)
  - Total time span in years
  - Units: Years
  - Validation: Must be non-negative

### Annuity Variables
- **PMT**: Periodic Payment (Number)
  - Regular payment amount in annuity calculations
  - Units: Currency amount per period
  - Validation: Can be positive (inflows) or negative (outflows)

- **PVA**: Present Value of Annuity (Number)
  - Current value of series of future payments
  - Units: Currency amount
  - Validation: Calculated value

- **FVA**: Future Value of Annuity (Number)
  - Future value of series of payments
  - Units: Currency amount
  - Validation: Calculated value

### Compound Interest Variables
- **P**: Principal/Initial Amount (Number, > 0)
  - Initial investment or loan amount
  - Units: Currency amount
  - Validation: Must be positive

- **A**: Final Amount/Accumulated Value (Number, ≥ P)
  - Amount after interest accumulation
  - Units: Currency amount
  - Validation: Must be ≥ principal

- **m**: Compounding Frequency (Integer, m ≥ 1)
  - Number of compounding periods per year
  - Units: Compounding periods per year
  - Common values: 1 (annual), 2 (semi-annual), 4 (quarterly), 12 (monthly), 365 (daily)
  - Validation: Must be positive integer

### Rate Variables
- **EAR**: Effective Annual Rate (Number, 0 ≤ EAR ≤ 1)
  - True annual rate accounting for compounding
  - Units: Decimal
  - Validation: Must be between 0 and 1

- **NAR**: Nominal Annual Rate (Number, 0 ≤ NAR ≤ 1)
  - Stated annual rate before compounding
  - Units: Decimal
  - Validation: Must be between 0 and 1

### Growing Annuity Variables
- **g**: Growth Rate (Number, -1 < g < 1, g ≠ r)
  - Constant growth rate of payments or dividends
  - Units: Decimal
  - Validation: Must be between -1 and 1, cannot equal discount rate r

- **PVGA**: Present Value of Growing Annuity (Number)
  - Current value of growing payment stream
  - Units: Currency amount

- **PVG_∞**: Present Value of Growing Perpetuity (Number)
  - Current value of perpetual growing payments
  - Units: Currency amount

### Loan and Investment Variables
- **IC**: Initial Cost/Investment (Number, > 0)
  - Initial capital outlay
  - Units: Currency amount
  - Validation: Must be positive

- **CF_t**: Cash Flow at Time t (Number)
  - Net cash flow in period t
  - Units: Currency amount per period
  - Validation: Can be positive or negative

- **CF_0**: Initial Cash Flow (Number, typically < 0)
  - Initial investment (usually negative)
  - Units: Currency amount
  - Validation: Usually negative for investments

### Valuation Metrics
- **NPV**: Net Present Value (Number)
  - Difference between PV of inflows and outflows
  - Units: Currency amount
  - Positive NPV indicates profitable investment

- **IRR**: Internal Rate of Return (Number, 0 ≤ IRR ≤ 1)
  - Discount rate where NPV = 0
  - Units: Decimal
  - Validation: Must be between 0 and 1

- **PI**: Profitability Index (Number, ≥ 0)
  - Ratio of PV of inflows to initial investment
  - Units: Ratio (dimensionless)
  - PI > 1 indicates potentially profitable investment

- **MIRR**: Modified Internal Rate of Return (Number, ≥ 0)
  - Modified IRR addressing reinvestment assumptions
  - Units: Decimal

### Payback Variables
- **PB**: Payback Period (Number, > 0)
  - Time to recover initial investment
  - Units: Years or periods
  - Validation: Must be positive

- **DPB**: Discounted Payback Period (Number, > 0)
  - Time to recover investment in present value terms
  - Units: Years or periods
  - Validation: Must be positive

### Bond and Security Variables
- **F**: Face Value/Par Value (Number, > 0)
  - Principal amount of bond or security
  - Units: Currency amount
  - Validation: Must be positive

- **ZCB**: Zero-Coupon Bond Price (Number, 0 < ZCB < F)
  - Price of zero-coupon bond
  - Units: Currency amount
  - Validation: Must be between 0 and face value

### CAPM Variables
- **r_f**: Risk-Free Rate (Number, 0 ≤ r_f ≤ 1)
  - Return on risk-free investment
  - Units: Decimal
  - Validation: Must be between 0 and 1

- **β**: Beta Coefficient (Number, ≥ 0)
  - Measure of systematic risk
  - Units: Dimensionless ratio
  - β = 1 indicates market risk, β > 1 higher risk, β < 1 lower risk

- **r_m**: Market Return (Number, r_f ≤ r_m ≤ 1)
  - Expected return of market portfolio
  - Units: Decimal
  - Validation: Must be ≥ risk-free rate

### Dividend Variables
- **D_1**: Next Period Dividend (Number, ≥ 0)
  - Dividend payment in next period
  - Units: Currency amount per share
  - Validation: Must be non-negative

- **DDM**: Dividend Discount Model Value (Number, ≥ 0)
  - Stock value based on dividend discounting
  - Units: Currency amount per share

## Data Structure Specifications

### Equation Parameter Sets

#### Single Payment Equations
```json
{
  "PV": "number > 0",
  "FV": "number > 0",
  "r": "number 0-1",
  "n": "integer >= 1"
}
```

#### Annuity Equations
```json
{
  "PMT": "number",
  "r": "number 0-1",
  "n": "integer >= 1",
  "PVA": "number (calculated)",
  "FVA": "number (calculated)"
}
```

#### Compound Interest Equations
```json
{
  "P": "number > 0",
  "A": "number >= P",
  "r": "number 0-1",
  "m": "integer >= 1",
  "t": "number >= 0"
}
```

#### Investment Evaluation Equations
```json
{
  "CF_0": "number (usually negative)",
  "CF_t": "array of numbers",
  "r": "number 0-1",
  "n": "integer >= 1",
  "NPV": "number (calculated)",
  "IRR": "number 0-1 (calculated)"
}
```

## Validation Rules

### Business Logic Constraints
1. For growing annuities/perpetuities: g < r (required for convergence)
2. For IRR calculations: Must have at least one positive and one negative cash flow
3. For bond pricing: Price must be less than face value for positive yields
4. For CAPM: Market return must exceed risk-free rate

### Mathematical Constraints
1. Rates must be between 0 and 1 (or appropriately scaled)
2. Time periods must be positive
3. Principal amounts must be positive
4. Growth rates must be less than discount rates for convergence

### Data Type Constraints
1. Monetary amounts: Floating point with appropriate precision
2. Rates: Decimal between 0 and 1
3. Periods: Positive integers
4. Ratios: Positive floating point numbers

## Usage Examples

### Time Value of Money Calculation
```javascript
const tvParams = {
  PV: 1000,    // $1000 initial investment
  r: 0.05,     // 5% annual rate
  n: 10        // 10 years
};
// FV = 1000 * (1 + 0.05)^10 = 1628.89
```

### Annuity Valuation
```javascript
const annuityParams = {
  PMT: 100,    // $100 monthly payment
  r: 0.005,    // 0.5% monthly rate
  n: 360       // 30 years * 12 months
};
// PVA = 100 * [1 - (1.005)^(-360)] / 0.005
```

This data structure specification ensures consistent parameter handling and validation across all basic finance math equations.
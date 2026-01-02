# Bonds and Fixed Income - Data Structures and Variable Definitions

## Overview
This document defines the data structures and variable specifications for bonds and fixed income equations. All variables follow consistent naming conventions and include validation rules specific to fixed income securities.

## Core Bond Variables

### Basic Bond Parameters
- **F**: Face Value/Par Value (Number, F > 0)
  - Principal amount of the bond
  - Units: Currency amount (typically $1,000 or $100)
  - Validation: Must be positive
  - Common values: 1000, 100

- **C**: Annual Coupon Payment (Number, C ≥ 0)
  - Annual interest payment amount
  - Units: Currency amount per year
  - Validation: Must be non-negative
  - Zero for zero-coupon bonds

- **c**: Coupon Rate (Number, 0 ≤ c ≤ 1)
  - Annual coupon rate as decimal
  - Units: Decimal (e.g., 0.05 for 5%)
  - Validation: Must be between 0 and 1
  - c = C / F (relationship to coupon payment)

- **P**: Bond Price (Number, 0 < P < F for premium bonds, P > F for discount bonds)
  - Current market price of the bond
  - Units: Currency amount
  - Validation: Must be positive, typically between 0.5F and 1.5F

- **n**: Number of Periods to Maturity (Integer, n ≥ 1)
  - Time periods remaining until maturity
  - Units: Periods (years for annual, periods for semi-annual)
  - Validation: Must be positive integer

### Yield and Discount Rate Variables
- **y**: Yield to Maturity (Number, 0 ≤ y ≤ 1)
  - Annual yield to maturity as decimal
  - Units: Decimal (e.g., 0.04 for 4%)
  - Validation: Must be between 0 and 1
  - Also called internal rate of return of the bond

- **y_m**: Yield with m Compounding Periods (Number, 0 ≤ y_m ≤ 1)
  - Periodic yield for semi-annual bonds
  - Units: Decimal
  - Validation: Must be between 0 and 1
  - y_m = y / m where m is compounding frequency

- **m**: Number of Compounding Periods per Year (Integer, m ≥ 1)
  - Coupon payment frequency
  - Units: Payments per year
  - Common values: 1 (annual), 2 (semi-annual), 4 (quarterly)
  - Validation: Must be positive integer

### Duration and Risk Measures
- **D_mac**: Macaulay Duration (Number, 0 < D_mac ≤ n)
  - Weighted average time to receive cash flows
  - Units: Years or periods
  - Validation: Must be positive and ≤ time to maturity

- **D_mod**: Modified Duration (Number, 0 < D_mod < D_mac)
  - Price sensitivity measure
  - Units: Years or periods
  - Validation: Must be positive and < Macaulay duration

- **D_eff**: Effective Duration (Number, ≥ 0)
  - Duration accounting for embedded options
  - Units: Years or periods
  - Validation: Must be non-negative

- **C**: Convexity (Number, ≥ 0)
  - Measure of price curvature
  - Units: Dimensionless (typically 0-200 for bonds)
  - Validation: Must be non-negative

- **C_eff**: Effective Convexity (Number, ≥ 0)
  - Convexity accounting for embedded options
  - Units: Dimensionless
  - Validation: Must be non-negative

### Cash Flow Variables
- **CF_t**: Cash Flow at Time t (Number)
  - Payment received at period t
  - Units: Currency amount
  - Validation: Coupon payments positive, final payment includes principal
  - For t < n: CF_t = C (coupon only)
  - For t = n: CF_t = C + F (coupon + principal)

- **PMT_t**: Mortgage Payment at Time t (Number)
  - Mortgage-backed security cash flow
  - Units: Currency amount
  - Validation: Includes principal and interest components

### Yield Curve Variables
- **y_t**: t-Period Spot Rate (Number, 0 ≤ y_t ≤ 1)
  - Zero-coupon yield for maturity t
  - Units: Decimal
  - Validation: Must be between 0 and 1

- **f_{t,t+1}**: One-Period Forward Rate (Number, 0 ≤ f_{t,t+1} ≤ 1)
  - Forward rate from period t to t+1
  - Units: Decimal
  - Validation: Must be between 0 and 1

- **y_{spot}**: Spot Rate (Number, 0 ≤ y_{spot} ≤ 1)
  - Zero-coupon rate for specific maturity
  - Units: Decimal
  - Validation: Must be between 0 and 1

- **y_{gov}**: Government Bond Yield (Number, 0 ≤ y_{gov} ≤ 1)
  - Yield of comparable government bond
  - Units: Decimal
  - Validation: Must be between 0 and 1

### Spread Variables
- **Z**: Z-Spread (Number, Z ≥ 0)
  - Constant spread over spot curve
  - Units: Basis points or decimal
  - Validation: Must be non-negative

- **I**: I-Spread (Number)
  - Interpolated spread over government curve
  - Units: Basis points or decimal

- **NS**: Nominal Spread (Number, NS ≥ 0)
  - Simple yield difference
  - Units: Basis points or decimal
  - Validation: Must be non-negative

- **OAS**: Option-Adjusted Spread (Number)
  - Spread adjusted for embedded options
  - Units: Basis points or decimal

### Price Sensitivity Variables
- **DV01**: Dollar Value of 01 (Number, DV01 > 0)
  - Dollar change for 1 bp yield change
  - Units: Currency amount
  - Validation: Must be positive

- **PV01**: Present Value of 01 (Number, PV01 > 0)
  - Same as DV01
  - Units: Currency amount
  - Validation: Must be positive

- **KRD_i**: Key Rate Duration (Number)
  - Duration for specific maturity bucket
  - Units: Years or periods

### Accrued Interest Variables
- **Clean**: Clean Price (Number, Clean > 0)
  - Quoted price excluding accrued interest
  - Units: Currency amount
  - Validation: Must be positive

- **Dirty**: Dirty Price (Number, Dirty > 0)
  - Settlement price including accrued interest
  - Units: Currency amount
  - Validation: Must be positive

- **Accrued**: Accrued Interest (Number, Accrued ≥ 0)
  - Interest earned since last coupon
  - Units: Currency amount
  - Validation: Must be non-negative

- **d**: Days Since Last Coupon (Integer, 0 ≤ d ≤ D)
  - Number of days since last coupon payment
  - Units: Days
  - Validation: Must be between 0 and coupon period length

- **D**: Days in Coupon Period (Integer, D > 0)
  - Total days in coupon period
  - Units: Days
  - Common values: 360 (money market), 365 (actual), actual calendar days
  - Validation: Must be positive

### Mortgage-Backed Security Variables
- **PSA**: Public Securities Association Speed (Number, PSA ≥ 0)
  - Prepayment speed measure
  - Units: PSA percentage (100 = standard, 200 = twice standard)
  - Validation: Must be non-negative

- **AL**: Average Life (Number, 0 < AL < original term)
  - Weighted average time to receive payments
  - Units: Years
  - Validation: Must be positive and less than original term

### Bond Type Variables
- **P_straight**: Straight Bond Price (Number, P_straight > 0)
  - Price assuming no embedded options
  - Units: Currency amount
  - Validation: Must be positive

- **P_callable**: Callable Bond Value (Number, P_callable > 0)
  - Value considering call option
  - Units: Currency amount
  - Validation: Must be positive

- **P_putable**: Putable Bond Value (Number, P_putable > 0)
  - Value considering put option
  - Units: Currency amount
  - Validation: Must be positive

- **P_conversion_option**: Conversion Option Value (Number, P_conversion_option ≥ 0)
  - Value of equity conversion feature
  - Units: Currency amount
  - Validation: Must be non-negative

### Yield Measures
- **CY**: Current Yield (Number, CY ≥ 0)
  - Annual coupon divided by current price
  - Units: Decimal
  - Validation: Must be non-negative

- **BEY**: Bond Equivalent Yield (Number, BEY ≥ 0)
  - T-bill yield annualized for comparison
  - Units: Decimal
  - Validation: Must be non-negative

- **DY**: Discount Yield (Number, DY ≥ 0)
  - T-bill discount yield
  - Units: Decimal
  - Validation: Must be non-negative

## Data Structure Specifications

### Bond Pricing Equation Sets

#### Basic Coupon Bond
```json
{
  "F": "number > 0",
  "C": "number >= 0",
  "y": "number 0-1",
  "n": "integer >= 1",
  "m": "integer >= 1",
  "P": "number > 0 (calculated)"
}
```

#### Duration and Convexity Analysis
```json
{
  "CF_t": "array of numbers",
  "y": "number 0-1",
  "P": "number > 0",
  "n": "integer >= 1",
  "D_mac": "number 0-n (calculated)",
  "D_mod": "number 0-D_mac (calculated)",
  "C": "number >= 0 (calculated)"
}
```

#### Yield Curve Construction
```json
{
  "bond_prices": "array of numbers",
  "cash_flows": "array of arrays",
  "maturities": "array of integers",
  "y_t": "array of numbers 0-1 (calculated)",
  "f_t": "array of numbers 0-1 (calculated)"
}
```

#### Spread Analysis
```json
{
  "y": "number 0-1",
  "y_gov": "number 0-1",
  "y_spot": "number 0-1",
  "Z": "number >= 0 (calculated)",
  "I": "number (calculated)",
  "OAS": "number (calculated)"
}
```

## Validation Rules

### Business Logic Constraints
1. For coupon bonds: C ≤ F (coupon payment ≤ face value)
2. For zero-coupon bonds: C = 0
3. Bond price relationships: For premium bonds P > F, for discount bonds P < F
4. Duration bounds: 0 < D_mod < D_mac ≤ n
5. Convexity: Always positive for standard bonds
6. Forward rates: f_{t,t+1} > 0 and related to spot rates by no-arbitrage

### Mathematical Constraints
1. Yields must be positive but reasonable (typically < 20%)
2. Time to maturity must be positive
3. Cash flows must be non-negative
4. Day count fractions must be between 0 and 1

### Data Type Constraints
1. Monetary amounts: Floating point with 2-4 decimal precision
2. Rates/yields: Decimal between 0 and 1
3. Periods: Positive integers
4. Durations: Positive floating point numbers
5. Convexity: Positive floating point numbers

## Usage Examples

### Standard Corporate Bond Valuation
```javascript
const bondParams = {
  F: 1000,        // $1000 face value
  c: 0.05,        // 5% coupon rate
  y: 0.045,       // 4.5% YTM
  n: 10,          // 10 years to maturity
  m: 2            // Semi-annual payments
};
// P = 1056.71 (premium bond)
```

### Duration Calculation
```javascript
const durationParams = {
  cashFlows: [50, 50, 50, 50, 50, 1050],  // Semi-annual coupons + principal
  y: 0.045,     // 4.5% YTM
  P: 1056.71,   // Current price
  periods: 10   // 10 periods
};
// D_mac = 8.47 years, D_mod = 8.29 years
```

### Yield Curve Bootstrapping
```javascript
const yieldCurveParams = {
  bondPrices: [980, 950, 1050],
  cashFlows: [[60, 60, 1060], [70, 70, 70, 1070], [40, 40, 40, 40, 1040]],
  maturities: [3, 4, 5]
};
// y_t = [0.03, 0.035, 0.032, 0.038, 0.036]
```

This data structure specification ensures consistent parameter handling and validation across all bonds and fixed income equations, supporting both standard bond mathematics and advanced fixed income analytics.
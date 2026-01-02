# Bonds and Fixed Income Equations - Documentation

## Overview

Bonds and fixed income securities represent debt obligations issued by governments, corporations, and other entities. The mathematics of bonds involves pricing, risk assessment, and yield analysis. These equations form the foundation of fixed income portfolio management, interest rate risk hedging, and credit analysis.

## Core Concepts

### Bond Pricing
The value of a bond is the present value of its future cash flows (coupon payments and principal repayment), discounted at an appropriate yield.

### Yield Measures
Various yield calculations provide different perspectives on bond returns, from simple current yield to complex yield-to-maturity calculations.

### Duration and Convexity
These measures quantify interest rate risk and the non-linear price-yield relationship.

### Yield Curve Analysis
Bootstrapping spot rates and calculating forward rates from market bond prices.

## Key Equations and Applications

### 1. Zero-Coupon Bond Price
**Equation**: `P = \frac{F}{(1 + y)^n}`

**Applications**:
- Treasury bill pricing
- Strip bond valuation
- Discount instrument analysis
- Building block for yield curve construction

**Example**: A 5-year zero-coupon Treasury bond with $1,000 face value and 4% yield
- F = $1,000, y = 0.04, n = 5
- P = $1,000 ÷ (1.04)^5 = $821.93

**Key Insight**: Zero-coupon bonds provide pure discount pricing without coupon reinvestment risk.

### 2. Coupon Bond Price
**Equation**: `P = \sum_{t=1}^{n} \frac{C}{(1 + y)^t} + \frac{F}{(1 + y)^n}`

**Applications**:
- Corporate bond valuation
- Government bond pricing
- Callable bond analysis (as baseline)
- Bond portfolio valuation

**Example**: 10-year corporate bond, $1,000 face, 6% coupon, 5% market yield
- C = $60/year, F = $1,000, y = 0.05, n = 10
- P = $1,079.85 (premium bond due to coupon > yield)

**Key Insight**: Bond price depends on the relationship between coupon rate and market yield.

### 3. Semi-Annual Coupon Bond Price
**Equation**: `P = \sum_{t=1}^{2n} \frac{C/2}{(1 + y/2)^t} + \frac{F}{(1 + y/2)^{2n}}`

**Applications**:
- Most U.S. corporate and government bonds
- Mortgage-backed securities
- International bond markets with different conventions

**Example**: 5-year bond, 6% annual coupon, 5% yield, semi-annual payments
- Semi-annual coupon = $30, y/2 = 0.025, 10 periods
- P = $1,025.68

**Key Insight**: Semi-annual compounding is standard in bond markets and affects pricing.

### 4. Current Yield
**Equation**: `CY = \frac{C}{P}`

**Applications**:
- Quick bond comparison
- Income-oriented investor analysis
- Preliminary yield assessment

**Example**: Bond with $60 annual coupon trading at $1,050
- CY = $60 ÷ $1,050 = 5.71%

**Key Insight**: Simple measure but ignores capital gains/losses and time value.

### 5. Macaulay Duration
**Equation**: `D_{mac} = \frac{\sum_{t=1}^{n} t \times \frac{CF_t}{(1 + y)^t}}{P}`

**Applications**:
- Interest rate risk measurement
- Bond portfolio immunization
- Asset-liability matching
- Hedge ratio calculation

**Example**: 5-year bond, 6% coupon, 5% yield
- D_mac = 4.58 years

**Key Insight**: Duration measures weighted average time to receive cash flows.

### 6. Modified Duration
**Equation**: `D_{mod} = \frac{D_{mac}}{1 + \frac{y}{m}}`

**Applications**:
- Price sensitivity to yield changes
- Risk management
- Duration hedging
- Bond swap analysis

**Example**: Macaulay duration 4.58 years, annual yield 5%
- D_mod = 4.58 ÷ 1.05 = 4.36 years

**Key Insight**: Modified duration gives the percentage price change for a 1% yield change.

### 7. Convexity
**Equation**: `C = \frac{\sum_{t=1}^{n} t(t+1) \times \frac{CF_t}{(1 + y)^{t+2}}}{P}`

**Applications**:
- Improved price change estimates
- Risk management for large yield changes
- Callable bond analysis
- Portfolio optimization

**Example**: Same 5-year bond as above
- C ≈ 24.5

**Key Insight**: Convexity improves duration estimates by accounting for price curvature.

### 8. Price Change Approximation
**Equation**: `\frac{\Delta P}{P} \approx -D_{mod} \times \Delta y + \frac{1}{2} C \times (\Delta y)^2`

**Applications**:
- Estimating bond price changes
- Scenario analysis
- Risk assessment
- Portfolio stress testing

**Example**: 1% yield increase, D_mod = 4.36, C = 24.5
- ΔP/P ≈ -4.36% + 0.5 × 24.5 × (0.01)^2 ≈ -4.36% + 0.001% ≈ -4.36%

**Key Insight**: Second-order approximation accounts for convexity effects.

### 9. Spot Rate Bootstrapping
**Equation**: Complex iterative process using market bond prices

**Applications**:
- Yield curve construction
- Risk-free rate derivation
- Forward rate calculation
- Derivative pricing

**Example**: Using 1-year, 2-year, and 3-year bond prices to build spot curve

**Key Insight**: Bootstrapping extracts implied spot rates from market prices.

### 10. Forward Rate
**Equation**: `f_{t,t+1} = \left( \frac{(1 + y_{t+1})^{t+1}}{(1 + y_t)^t} \right) - 1`

**Applications**:
- Future interest rate expectations
- Forward contract pricing
- Immunization strategies
- Term structure analysis

**Example**: 1-year spot rate 3%, 2-year spot rate 3.5%
- f_{1,2} = [(1.035)^2 ÷ (1.03)^1] - 1 = 4.01%

**Key Insight**: Forward rates represent market expectations of future rates.

### 11. Z-Spread
**Equation**: `Z = y - y_{spot}`

**Applications**:
- Credit spread analysis
- Risk premium assessment
- Relative value analysis
- Credit derivative pricing

**Example**: Corporate bond YTM = 5.5%, spot rate = 3.5%
- Z = 5.5% - 3.5% = 2.0%

**Key Insight**: Z-spread measures constant credit spread over the entire term structure.

### 12. DV01 (Dollar Value of 01)
**Equation**: `DV01 = -D_{mod} \times P \times 0.0001`

**Applications**:
- Interest rate risk quantification
- Hedge sizing
- Portfolio risk limits
- Regulatory capital calculations

**Example**: $1,000 bond, modified duration 4.36 years
- DV01 = -4.36 × 1,000 × 0.0001 = -$0.436

**Key Insight**: DV01 measures dollar price change for 1 basis point yield change.

### 13. Clean vs Dirty Price
**Equations**:
- `Clean = Dirty - Accrued`
- `Dirty = Clean + Accrued`

**Applications**:
- Bond trading and settlement
- Accrued interest calculations
- Tax and accounting treatment
- Price quotation standards

**Example**: Quoted clean price $1,010, accrued interest $12.50
- Dirty price = $1,010 + $12.50 = $1,022.50

**Key Insight**: Clean price excludes accrued interest, dirty price includes it.

### 14. Accrued Interest
**Equation**: `Accrued = C \times \frac{d}{D}`

**Applications**:
- Bond settlement calculations
- Interest income accounting
- Tax calculations
- Trading cost analysis

**Example**: $60 annual coupon, 45 days since last payment, 180-day period
- Accrued = $60 × (45 ÷ 180) = $15

**Key Insight**: Seller receives accrued interest for holding period since last coupon.

### 15. Bond Equivalent Yield (T-bills)
**Equation**: `BEY = \left( \frac{F}{P} - 1 \right) \times \frac{365}{d}`

**Applications**:
- T-bill yield calculations
- Money market instrument comparison
- Short-term investment analysis

**Example**: 90-day T-bill, $10,000 face, purchased for $9,800
- BEY = (($10,000 ÷ $9,800) - 1) × (365 ÷ 90) = 8.16%

**Key Insight**: Annualizes discount yield for comparison with coupon securities.

## Practical Applications in Finance

### Bond Portfolio Management
Using duration and convexity to manage interest rate risk and immunize portfolios against rate changes.

### Credit Analysis
Employing spread measures (Z-spread, I-spread) to assess credit risk and relative value.

### Risk Management
Calculating DV01 and other sensitivity measures to quantify and hedge interest rate risk.

### Trading and Arbitrage
Using clean/dirty price conversions and accrued interest calculations for precise trading.

### Valuation and Pricing
Applying present value principles to price bonds and fixed income securities.

## Bond Types and Special Cases

### Zero-Coupon Bonds
- No periodic payments, only face value at maturity
- Price always less than face value (pure discount)
- Duration equals maturity
- High interest rate sensitivity

### Coupon Bonds
- Regular interest payments plus principal at maturity
- Can trade at premium, par, or discount
- Duration less than maturity
- Convex price-yield relationship

### Callable Bonds
- Issuer can redeem before maturity
- Price limited by call price
- Effective duration accounts for call risk
- Negative convexity possible

### Putable Bonds
- Holder can sell back before maturity
- Protects against rising rates
- Positive convexity enhanced

### Mortgage-Backed Securities
- Cash flows depend on prepayment behavior
- Average life shorter than stated maturity
- Prepayment risk affects valuation
- PSA model for prepayment speed

## Mathematical Foundations

### Present Value
All bond pricing reduces to discounting future cash flows at appropriate rates.

### Annuity Mathematics
Coupon payments form an annuity stream, principal is a lump sum.

### Taylor Series Approximation
Duration and convexity derive from first and second derivatives of price with respect to yield.

### No-Arbitrage Principle
Yield curve construction assumes no arbitrage opportunities between different maturities.

This comprehensive framework enables quantitative analysis of fixed income securities, from simple bond pricing to complex portfolio risk management strategies.
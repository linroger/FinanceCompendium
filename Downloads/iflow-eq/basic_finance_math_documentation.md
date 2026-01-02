# Basic Finance Math Equations - Documentation

## Overview
Basic finance mathematics forms the foundation of financial analysis and valuation. These equations deal with the time value of money, compound interest, annuities, and fundamental investment calculations. Understanding these concepts is essential for pricing financial instruments, evaluating investment opportunities, and making informed financial decisions.

## Key Concepts

### Time Value of Money
The principle that money available today is worth more than the same amount in the future due to its potential earning capacity. This fundamental concept underlies all financial mathematics.

### Compound Interest
Interest earned on both the initial principal and the accumulated interest from previous periods. Unlike simple interest, compound interest leads to exponential growth.

### Annuities
Series of equal payments made at regular intervals. Can be ordinary annuities (payments at end of period) or annuities due (payments at beginning of period).

## Core Equations and Applications

### 1. Future Value of Single Payment
**Equation**: `FV = PV \times (1 + r)^n`

**Applications**:
- Certificate of Deposit (CD) maturity value calculations
- Bond investment future value
- Retirement account projections
- Loan principal plus interest calculations

**Example**: Investing $10,000 at 7% annual return for 20 years
- PV = $10,000, r = 0.07, n = 20
- FV = $10,000 × (1.07)^20 = $38,697

**Key Insight**: Shows how investments grow exponentially over time.

### 2. Present Value of Single Payment
**Equation**: `PV = \frac{FV}{(1 + r)^n}`

**Applications**:
- Bond pricing (discounting future cash flows)
- Lottery winnings valuation
- Insurance settlement present value
- Capital budgeting (discounting future benefits)

**Example**: Valuing $50,000 received in 10 years at 6% discount rate
- FV = $50,000, r = 0.06, n = 10
- PV = $50,000 ÷ (1.06)^10 = $27,917

**Key Insight**: Determines what future cash flows are worth in today's dollars.

### 3. Compound Interest
**Equation**: `A = P \times (1 + \frac{r}{m})^{mt}`

**Applications**:
- Savings account calculations
- Mortgage interest accumulation
- Investment portfolio growth
- Credit card debt calculations

**Example**: $5,000 invested at 8% APR compounded monthly for 5 years
- P = $5,000, r = 0.08, m = 12, t = 5
- A = $5,000 × (1 + 0.08/12)^(12×5) = $7,347

**Key Insight**: More frequent compounding leads to higher returns.

### 4. Effective Annual Rate
**Equation**: `EAR = (1 + \frac{r}{m})^m - 1`

**Applications**:
- Comparing investment returns with different compounding frequencies
- Credit card interest rate comparisons
- Loan rate evaluations
- Investment performance analysis

**Example**: 12% nominal rate compounded quarterly
- r = 0.12, m = 4
- EAR = (1 + 0.12/4)^4 - 1 = 12.55%

**Key Insight**: Reveals the true annual cost or return of financial products.

### 5. Ordinary Annuity Calculations

#### Future Value of Ordinary Annuity
**Equation**: `FVA = PMT \times \frac{(1 + r)^n - 1}{r}`

**Applications**:
- Retirement savings calculations
- Mortgage principal and interest
- Lease payment valuations
- Insurance premium accumulation

#### Present Value of Ordinary Annuity
**Equation**: `PVA = PMT \times \frac{1 - (1 + r)^{-n}}{r}`

**Applications**:
- Bond coupon payment valuation
- Lease obligations
- Insurance annuity pricing
- Mortgage affordability analysis

**Example**: Monthly retirement savings of $500 at 7% annual return for 30 years
- PMT = $500, r = 0.07/12 = 0.005833, n = 360
- FVA = $500 × [(1.005833)^360 - 1] ÷ 0.005833 = $1,036,000

**Key Insight**: Regular, consistent investments compound significantly over time.

### 6. Annuity Due vs Ordinary Annuity
**Equations**:
- Future Value Due: `FVAD = FVA \times (1 + r)`
- Present Value Due: `PVAD = PVA \times (1 + r)`

**Applications**:
- Rent payments (paid at beginning of month)
- Insurance premiums (paid upfront)
- Lease payments (due at period start)
- Subscription services

**Example**: Rent payments of $1,200/month for 12 months at 6% annual rate
- Ordinary annuity PV: $13,400
- Annuity due PV: $13,400 × 1.06 = $14,204 (higher value)

**Key Insight**: Timing of payments affects valuation - payments received sooner are worth more.

### 7. Perpetuity Valuation
**Equation**: `PV_{\infty} = \frac{PMT}{r}`

**Applications**:
- Preferred stock valuation
- Real estate investment valuation
- Perpetual bond pricing
- Royalty payment valuation

**Example**: Rental property generating $10,000 annual rent at 8% required return
- PMT = $10,000, r = 0.08
- PV = $10,000 ÷ 0.08 = $125,000

**Key Insight**: Simplifies valuation when cash flows continue indefinitely.

### 8. Growing Annuity Calculations
**Equation**: `PVGA = PMT \times \frac{1 - (\frac{1+g}{1+r})^n}{r - g}`

**Applications**:
- Dividend-paying stock valuation
- Salary increase projections
- Rental escalation clauses
- Royalty payment with growth

**Example**: Salary of $50,000 growing 3% annually for 25 years at 8% discount rate
- Initial PMT = $50,000, g = 0.03, r = 0.08, n = 25
- PVGA = $50,000 × [1 - (1.03/1.08)^25] ÷ (0.08 - 0.03) = $680,000

**Key Insight**: Accounts for systematic growth in payment streams.

### 9. Loan Payment Calculation
**Equation**: `PMT = PV \times \frac{r(1 + r)^n}{(1 + r)^n - 1}`

**Applications**:
- Mortgage payment calculations
- Auto loan payments
- Business loan amortization
- Student loan repayment

**Example**: $200,000 mortgage at 4.5% for 30 years
- PV = $200,000, r = 0.045/12 = 0.00375, n = 360
- PMT = $200,000 × [0.00375(1.00375)^360] ÷ [(1.00375)^360 - 1] = $1,013

**Key Insight**: Equal payments consist of both principal reduction and interest expense.

### 10. Net Present Value
**Equation**: `NPV = \sum_{t=1}^{n} \frac{CF_t}{(1 + r)^t} - CF_0`

**Applications**:
- Capital investment evaluation
- Project profitability analysis
- Merger and acquisition valuation
- Equipment purchase decisions

**Example**: Project with initial investment $100,000 and annual cash flows of $30,000 for 5 years at 10% discount rate
- NPV = -$100,000 + $30,000×(P/A,10%,5) = $16,300

**Key Insight**: Positive NPV indicates value-creating investments.

### 11. Internal Rate of Return
**Equation**: `0 = \sum_{t=1}^{n} \frac{CF_t}{(1 + IRR)^t} - CF_0`

**Applications**:
- Investment performance measurement
- Project ranking and selection
- Portfolio management decisions
- Private equity valuation

**Example**: Investment with -$50,000 initial outlay and $20,000 annual cash flows for 4 years
- IRR ≈ 18.9% (found by solving the equation iteratively)

**Key Insight**: IRR represents the discount rate that makes NPV zero.

### 12. Capital Asset Pricing Model (CAPM)
**Equation**: `E[R] = r_f + \beta (r_m - r_f)`

**Applications**:
- Stock expected return estimation
- Portfolio risk assessment
- Asset pricing theory
- Cost of equity calculation

**Example**: Stock with β=1.3, risk-free rate=3%, market return=8%
- E[R] = 3% + 1.3×(8% - 3%) = 9.5%

**Key Insight**: Expected return increases with systematic risk (beta).

### 13. Dividend Discount Model
**Equation**: `P = \frac{D_1}{r - g}`

**Applications**:
- Mature company stock valuation
- Dividend-paying stock analysis
- Growth stock evaluation
- Cost of equity estimation

**Example**: Stock paying $2.50 dividend next year, required return 10%, growth rate 4%
- P = $2.50 ÷ (0.10 - 0.04) = $41.67

**Key Insight**: Stock price equals present value of future dividend stream.

## Common Pitfalls and Best Practices

### 1. Rate Conventions
- Ensure rates are expressed consistently (decimal vs percentage)
- Distinguish between nominal and effective rates
- Match compounding frequency to rate quotation

### 2. Time Period Alignment
- Ensure discount rate period matches cash flow timing
- Be consistent with annual vs periodic rates
- Account for partial periods when necessary

### 3. Cash Flow Timing
- Distinguish between ordinary annuities and annuities due
- Verify payment timing assumptions
- Consider transaction costs and taxes

### 4. Growth Assumptions
- Validate growth rate assumptions for growing annuities
- Ensure growth rate < discount rate for convergence
- Test sensitivity to growth rate changes

### 5. Model Limitations
- Recognize that models assume perfect markets
- Consider liquidity and transaction costs
- Account for taxes and inflation in real applications

## Practical Applications in Finance

### Retirement Planning
Using annuity formulas to calculate required savings and projected accumulation.

### Investment Analysis
Applying NPV and IRR to evaluate potential investments and projects.

### Loan Analysis
Understanding payment structures and total interest costs over loan life.

### Bond Valuation
Discounting future cash flows to determine fair bond prices.

### Stock Valuation
Using DDM and CAPM to estimate intrinsic stock values and required returns.

## Mathematical Foundations

### Exponential Growth
Most finance equations rely on exponential functions due to compound growth.

### Series Summations
Annuity formulas use geometric series summation formulas.

### Iterative Solutions
Some equations (like IRR) require numerical methods for solution.

### Risk-Return Tradeoff
Modern portfolio theory extends basic time value concepts to include risk.

This foundation in basic finance mathematics provides the building blocks for understanding more complex financial instruments and valuation methodologies.
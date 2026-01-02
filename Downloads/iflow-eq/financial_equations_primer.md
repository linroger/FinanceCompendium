# Financial Mathematics Equations Dataset - Primer

## Overview

This dataset contains **600 equations** covering the core mathematical foundations of financial analysis, derivatives pricing, risk management, and quantitative finance. The equations are organized by category and include detailed explanations of variables, applications, and significance.

## Dataset Structure

### File Format
- **Filename**: `financial_equations_dataset.csv`
- **Format**: Comma-separated values (CSV)
- **Encoding**: UTF-8
- **Delimiter**: Comma (`,`)
- **Quote Character**: Double quote (`"`)
- **Header Row**: Required

### Column Specification

#### 1. Title (String)
Descriptive name of the equation
- **Purpose**: Human-readable identifier
- **Examples**:
  - "Black-Scholes Call Option Price"
  - "Value at Risk (Historical Simulation)"
  - "Capital Asset Pricing Model"

#### 2. Equation (String - LaTeX)
Mathematical equation without delimiters
- **Format**: Raw LaTeX math syntax
- **No Delimiters**: No `$` signs or `\[...\]` wrappers
- **Examples**:
  - `C = S_0 N(d_1) - K e^{-rT} N(d_2)` (Black-Scholes)
  - `VaR = -\mu + z \sigma` (Normal VaR)
  - `E[R] = r_f + \beta (r_m - r_f)` (CAPM)

#### 3. Main Category (String)
High-level classification
- **Allowed Values**: 14 predefined categories
- **Purpose**: MECE (Mutually Exclusive, Collectively Exhaustive) organization
- **Categories**:
  1. Basic Finance Math
  2. Bonds and Fixed Income
  3. Stocks and Equity Analysis
  4. Options
  5. Futures
  6. Swaps
  7. Risk Metrics and Measures
  8. Portfolio Theory
  9. Derivatives
  10. Interest Rate Theory
  11. Corporate Finance
  12. Quantitative Finance
  13. Financial Modeling
  14. Statistical Methods in Finance

#### 4. Notes (String - Plain Text)
Detailed explanation and context
- **Format**: Plain text only (no markdown)
- **Content**: What the equation expresses, significance, variable explanations
- **Structure**: Use numbered/bulleted lists for clarity
- **Required Elements**:
  - Equation purpose and significance
  - Variable definitions and units
  - Practical applications
  - Mathematical relationships

## LaTeX Rendering Guide

### Basic Setup
To render equations in markdown or documentation:

```markdown
# Inline equations
The Black-Scholes formula $C = S_0 N(d_1) - K e^{-rT} N(d_2)$ prices call options.

# Display equations
The present value formula is:
$$PV = \frac{FV}{(1 + r)^n}$$

# Raw LaTeX (no delimiters in dataset)
C = S_0 N(d_1) - K e^{-rT} N(d_2)
```

### Common LaTeX Symbols and Notation

#### Greek Letters
- `\alpha, \beta, \gamma, \delta, \epsilon` (α, β, γ, δ, ε)
- `\mu, \nu, \pi, \rho, \sigma, \tau` (μ, ν, π, ρ, σ, τ)
- `\Delta, \Gamma, \Theta, \Lambda, \Omega` (Δ, Γ, Θ, Λ, Ω)

#### Mathematical Operators
- `\sum` (∑) - Summation
- `\prod` (∏) - Product
- `\int` (∫) - Integral
- `\frac{a}{b}` (a/b) - Fractions
- `\sqrt{x}` (√x) - Square root
- `x^n` (xⁿ) - Superscripts
- `x_n` (xₙ) - Subscripts

#### Finance-Specific Notation
- `e^{-rt}` - Exponential discount factor
- `N(x)` - Cumulative normal distribution
- `\mathbb{E}[X]` - Expected value
- `\mathbb{P}(A)` - Probability
- `\mathbb{Q}` - Risk-neutral measure

### Rendering Tools
- **Jupyter Notebooks**: Built-in LaTeX rendering
- **Markdown Editors**: Use MathJax or KaTeX
- **Documentation Sites**: GitHub, GitLab support LaTeX
- **Python**: matplotlib, sympy for equation rendering

## Category Overview and Examples

### 1. Basic Finance Math
**Focus**: Time value of money, compound interest, annuities

**Example Equation**:
```
Title: Future Value of Ordinary Annuity
Equation: FVA = PMT \times \frac{(1 + r)^n - 1}{r}
Category: Basic Finance Math
Notes: This equation calculates the future value of an ordinary annuity. FVA represents the accumulated value, PMT is the periodic payment amount, r is the interest rate per period, and n is the number of periods. An ordinary annuity has payments made at the end of each period. This formula is commonly used for retirement savings calculations, mortgage principal accumulation, and lease payment valuations. The equation shows how regular investments grow over time through compound interest.
```

**Key Applications**:
- Retirement planning
- Loan amortization
- Investment accumulation
- Present value calculations

### 2. Bonds and Fixed Income
**Focus**: Bond pricing, yield calculations, duration, convexity

**Example Equation**:
```
Title: Bond Modified Duration
Equation: D_{mod} = \frac{D}{1 + \frac{y}{m}}
Category: Bonds and Fixed Income
Notes: This equation calculates the modified duration of a bond. D_mod represents the modified duration, D is the Macaulay duration, y is the bond's yield to maturity, and m is the number of coupon payments per year. Modified duration measures the percentage change in bond price for a 1% change in yield. It provides a better approximation of price sensitivity than Macaulay duration. This metric is essential for bond portfolio management and interest rate risk assessment.
```

**Key Applications**:
- Bond portfolio immunization
- Interest rate risk management
- Yield curve analysis
- Credit spread analysis

### 3. Options
**Focus**: Black-Scholes model, Greeks, binomial trees

**Example Equation**:
```
Title: Black-Scholes Call Option Delta
Equation: \Delta = N(d_1)
Category: Options
Notes: This equation calculates the delta of a European call option using the Black-Scholes model. Delta represents the rate of change of option price with respect to underlying asset price. N(d_1) is the cumulative normal distribution function evaluated at d_1. Delta ranges from 0 to 1 for calls. A delta of 0.6 means the option price increases $0.60 for every $1 increase in underlying price. This Greek is crucial for hedging and risk management of option positions.
```

**Key Applications**:
- Option pricing and valuation
- Dynamic hedging strategies
- Risk management (Greeks)
- Volatility trading

### 4. Risk Management
**Focus**: VaR, CVaR, hedging ratios, stress testing

**Example Equation**:
```
Title: Value at Risk (Normal Distribution)
Equation: VaR = -(\mu + z \sigma)
Category: Risk Metrics and Measures
Notes: This equation calculates Value at Risk using the normal distribution assumption. VaR represents the maximum potential loss over a specific time period at a given confidence level. μ is the expected return, σ is the standard deviation, and z is the critical value from the normal distribution corresponding to the confidence level. For 95% confidence, z ≈ -1.645. This metric is widely used in financial risk management to quantify downside risk exposure.
```

**Key Applications**:
- Portfolio risk assessment
- Regulatory capital requirements
- Risk limit setting
- Performance evaluation

### 5. Portfolio Theory
**Focus**: Modern portfolio theory, CAPM, efficient frontier

**Example Equation**:
```
Title: Portfolio Variance (Two Assets)
Equation: \sigma_p^2 = w_1^2 \sigma_1^2 + w_2^2 \sigma_2^2 + 2 w_1 w_2 \sigma_1 \sigma_2 \rho_{12}
Category: Portfolio Theory
Notes: This equation calculates the variance of a two-asset portfolio. σ_p² represents portfolio variance, w1 and w2 are asset weights, σ1² and σ2² are individual asset variances, and ρ12 is the correlation coefficient between assets. The equation shows how diversification reduces portfolio risk through correlation effects. When assets are perfectly correlated (ρ=1), no diversification benefit occurs. When uncorrelated (ρ=0), maximum risk reduction is achieved.
```

**Key Applications**:
- Portfolio optimization
- Asset allocation decisions
- Risk-return analysis
- Diversification strategies

### 6. Corporate Finance
**Focus**: NPV, IRR, WACC, capital budgeting

**Example Equation**:
```
Title: Weighted Average Cost of Capital
Equation: WACC = \frac{E}{V} r_e + \frac{D}{V} r_d (1 - T_c)
Category: Corporate Finance
Notes: This equation calculates the weighted average cost of capital. WACC represents the blended cost of equity and debt financing. E is market value of equity, D is market value of debt, V is total firm value (E+D), re is cost of equity, rd is cost of debt, and Tc is corporate tax rate. WACC represents the minimum return required on new investments. This metric is fundamental to capital budgeting and valuation analysis.
```

**Key Applications**:
- Capital investment decisions
- Company valuation
- Project financing analysis
- Optimal capital structure

## Usage Instructions

### Loading the Dataset

#### Python
```python
import pandas as pd

# Load the dataset
df = pd.read_csv('financial_equations_dataset.csv')

# View by category
options_equations = df[df['main_category'] == 'Options']

# Search for specific equations
black_scholes = df[df['title'].str.contains('Black-Scholes', case=False)]
```

#### R
```r
# Load the dataset
equations <- read.csv('financial_equations_dataset.csv')

# Filter by category
bond_equations <- subset(equations, main_category == 'Bonds and Fixed Income')
```

### Rendering Equations

#### Python with matplotlib
```python
import matplotlib.pyplot as plt
from matplotlib import rc

# Enable LaTeX rendering
rc('text', usetex=True)

# Example equation
equation = r"C = S_0 N(d_1) - K e^{-rT} N(d_2)"

plt.text(0.5, 0.5, f'${equation}$', fontsize=16, ha='center')
plt.axis('off')
plt.show()
```

#### Jupyter Notebook
```python
from IPython.display import display, Markdown, Latex

# Display equation
equation = "C = S_0 N(d_1) - K e^{-rT} N(d_2)"
display(Latex(f'$${equation}$$'))
```

### Searching and Filtering

#### By Category
```python
# Get all equations for a specific category
category_equations = df[df['main_category'] == 'Risk Metrics and Measures']
```

#### By Keywords
```python
# Search in titles and notes
keyword_results = df[
    df['title'].str.contains('VaR', case=False) |
    df['notes'].str.contains('Value at Risk', case=False)
]
```

#### By Complexity
```python
# Find equations with complex LaTeX (proxy for complexity)
complex_equations = df[df['equation'].str.contains('\\\\[a-zA-Z]+')]
```

## Best Practices

### Data Integrity
- Always validate LaTeX syntax before using equations
- Check variable consistency across related equations
- Verify mathematical accuracy for critical applications

### Performance Considerations
- Load dataset once and cache filtered results
- Use vectorized operations for bulk calculations
- Implement lazy loading for large equation sets

### Documentation
- Include equation sources and derivation references
- Document assumptions and limitations
- Provide practical examples with real data

### Maintenance
- Regularly update with new financial equations
- Validate LaTeX rendering across different platforms
- Review category classifications for consistency

## Applications in Practice

### Academic Research
- Financial mathematics education
- Derivatives pricing research
- Risk management studies

### Financial Industry
- Trading system development
- Risk management software
- Financial modeling platforms

### Regulatory Compliance
- Basel capital requirements
- Dodd-Frank risk metrics
- IFRS valuation standards

### Investment Analysis
- Portfolio optimization tools
- Valuation models
- Performance analytics

This primer provides the foundation for effectively using the financial mathematics equations dataset across various applications in finance, research, and industry.
# Financial Mathematics Equations Dataset - CSV Format Specification

## Overview
This specification defines the format for the consolidated financial equations dataset stored in `financial_equations_dataset.csv`.

## File Structure
- **Filename**: `financial_equations_dataset.csv`
- **Encoding**: UTF-8
- **Delimiter**: Comma (`,`)
- **Quote Character**: Double quote (`"`)
- **Header Row**: Required (first line)

## Column Specification

### Column 1: title
- **Type**: String
- **Description**: Descriptive name of the equation
- **Requirements**:
  - Unique within the dataset
  - Concise but descriptive (3-10 words typically)
  - Uses standard mathematical terminology
  - Examples: "Black-Scholes Call Option Price", "Markowitz Portfolio Variance", "Bond Modified Duration"

### Column 2: equation
- **Type**: String (LaTeX)
- **Description**: Mathematical equation in LaTeX format without delimiters
- **Requirements**:
  - NO dollar signs ($) or other delimiters
  - Valid LaTeX math syntax
  - Properly escaped for CSV (commas and quotes handled by quoting)
  - Examples: `P = \frac{C}{r} (1 - (1+r)^{-n}) + \frac{F}{(1+r)^n}`, `C = S_0 N(d_1) - K e^{-rT} N(d_2)`

### Column 3: main_category
- **Type**: String
- **Description**: High-level classification category
- **Requirements**:
  - One of the predefined MECE categories
  - Consistent capitalization (Title Case)
  - No subcategories in this field
- **Allowed Values**:
  - Basic Finance Math
  - Bonds and Fixed Income
  - Stocks and Equity Analysis
  - Options
  - Futures
  - Swaps
  - Risk Metrics and Measures
  - Portfolio Theory
  - Derivatives
  - Interest Rate Theory
  - Corporate Finance
  - Quantitative Finance
  - Financial Modeling
  - Statistical Methods in Finance

### Column 4: notes
- **Type**: String (Plain text)
- **Description**: Detailed explanation and context
- **Requirements**:
  - Plain text only (no markdown formatting)
  - Comprehensive but concise explanation
  - Include:
    - What the equation expresses
    - Significance and applications
    - Variable definitions and relationships
    - Practical usage context
  - Use numbered/bulleted lists for clarity when appropriate
  - Examples of variables and their meanings

## CSV Formatting Rules

### Escaping and Quoting
- Fields containing commas, quotes, or newlines must be enclosed in double quotes
- Double quotes within fields are escaped by doubling them (`""`)
- No trailing spaces after commas (except within quoted fields)

### Data Validation Rules
1. **Uniqueness**: Title column must be unique across all rows
2. **Completeness**: No empty cells in any column
3. **LaTeX Validity**: Equation column must contain valid LaTeX math syntax
4. **Category Validity**: Main category must match one of the allowed values
5. **Notes Quality**: Notes must be informative and detailed (minimum 100 characters)

### Example Row
```
"Black-Scholes Call Option Price","C = S_0 N(d_1) - K e^{-rT} N(d_2)","Options","This equation prices a European call option using the Black-Scholes model. C represents the call option price, S_0 is the current stock price, K is the strike price, r is the risk-free rate, T is time to expiration, and N(d) is the cumulative normal distribution function. d_1 and d_2 are calculated as intermediate variables that account for volatility and time decay. This model assumes lognormal stock prices, constant volatility, and no dividends. It revolutionized derivatives pricing by providing a closed-form solution for option valuation."
```

## File Organization
- **Location**: Root directory of the project
- **Naming Convention**: `financial_equations_dataset.csv`
- **Backup**: Create timestamped backups during development

## Quality Assurance
- Validate CSV structure before final output
- Test LaTeX rendering of sample equations
- Verify category consistency
- Check for duplicate titles
- Ensure notes provide adequate context
# Tag Generation Examples

## Finance Domain Examples

### Fixed Income Document

**Content discusses:** Bond pricing, yield curves, duration, convexity, term structure of interest rates

**Good Tags:**
```yaml
primary_tags:
  - fixed_income
  - bond_pricing
  - term_structure
secondary_tags:
  - duration_convexity
  - yield_curve_construction
  - spot_rates
  - forward_rates
  - zero_coupon_bonds
```

**Bad Tags:**
- `finance` (too broad)
- `chapter_7_bonds` (instance-specific)
- `example_yield_curve_2020` (too specific)

---

### Derivatives Document

**Content discusses:** Options pricing, Black-Scholes model, Greeks, hedging strategies

**Good Tags:**
```yaml
primary_tags:
  - derivatives
  - option_pricing
  - black_scholes_model
secondary_tags:
  - greeks_hedging
  - implied_volatility
  - risk_neutral_valuation
  - put_call_parity
  - delta_hedging
```

**Bad Tags:**
- `math` (too broad)
- `problem_set_4_options` (instance-specific)
- `call_option_example_page_42` (too specific)

---

### Macroeconomics Document

**Content discusses:** Monetary policy, inflation targeting, central bank operations, interest rate rules

**Good Tags:**
```yaml
primary_tags:
  - macroeconomics
  - monetary_policy
  - central_banking
secondary_tags:
  - inflation_targeting
  - interest_rate_rules
  - taylor_rule
  - open_market_operations
  - quantitative_easing
```

**Bad Tags:**
- `economics` (too broad)
- `fed_march_2020_meeting` (instance-specific)
- `figure_3_phillips_curve` (too specific)

---

### Corporate Finance Document

**Content discusses:** Capital structure, WACC, M&A valuation, DCF analysis

**Good Tags:**
```yaml
primary_tags:
  - corporate_finance
  - capital_structure
  - valuation_methods
secondary_tags:
  - dcf_analysis
  - weighted_average_cost_of_capital
  - mergers_and_acquisitions
  - enterprise_value
  - free_cash_flow
```

**Bad Tags:**
- `business` (too broad)
- `tesla_case_study` (instance-specific)
- `table_5_wacc_calculation` (too specific)

---

## Tag Generation Decision Tree

```
Is this concept...
├── Specific to ONE example/figure/problem in this document?
│   └── NO - Don't use as tag
├── A named model/theory/framework that appears in multiple contexts?
│   └── YES - Good candidate for tag
├── A general methodology that could apply to other documents?
│   └── YES - Good candidate for tag
├── The main domain/field of study?
│   └── YES - Use as primary tag (1-2 max)
└── Something a researcher would search for?
    └── YES - Good candidate for tag
```

## Primary vs Secondary Tags

**Primary Tags:**
- The 1-10 MOST important key phrases
- Core concepts, central themes, main methodologies
- Must appear in title or main heading
- Example: `option_pricing`, `black_scholes_model`

**Secondary Tags:**
- Up to 25 supporting key phrases
- Related concepts, peripheral topics, additional context
- Example: `implied_volatility`, `risk_neutral_valuation`

## Common Domain Tags Reference

### Finance
- `fixed_income`, `derivatives`, `corporate_finance`, `portfolio_theory`
- `risk_management`, `asset_pricing`, `market_microstructure`

### Economics
- `macroeconomics`, `microeconomics`, `monetary_economics`, `international_economics`
- `labor_economics`, `public_finance`, `development_economics`

### Quantitative Methods
- `econometrics`, `time_series`, `stochastic_calculus`, `optimization`
- `numerical_methods`, `monte_carlo`, `machine_learning`

### Specific Models/Theories
- `black_scholes`, `capm`, `apt`, `term_premia`
- `is_lm`, `dsge`, `var_models`, `garch`

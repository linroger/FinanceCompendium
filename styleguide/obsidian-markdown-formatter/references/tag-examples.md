# Tag Generation Examples

## Finance Domain Examples

### Fixed Income Document

**Content discusses:** Bond pricing, yield curves, duration, convexity, term structure of interest rates

**Good Tags:**
```yaml
tags:
  - fixed_income
  - bond_pricing
  - term_structure
  - duration_convexity
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
tags:
  - derivatives
  - option_pricing
  - black_scholes
  - greeks_hedging
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
tags:
  - macroeconomics
  - monetary_policy
  - inflation_targeting
  - central_banking
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
tags:
  - corporate_finance
  - capital_structure
  - valuation_methods
  - dcf_analysis
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
│   └── YES - Use as primary domain tag (1-2 max)
└── Something a researcher would search for?
    └── YES - Good candidate for tag
```

## Key Concepts vs Tags

**Tags:** Short, searchable, snake_case, highly reusable
```yaml
tags:
  - option_pricing
  - no_arbitrage
```

**Key Concepts:** More descriptive, can be phrases, document-specific applications
```yaml
key_concepts:
  - American vs European option exercise
  - No-arbitrage pricing in complete markets
  - Risk-neutral valuation framework
```

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

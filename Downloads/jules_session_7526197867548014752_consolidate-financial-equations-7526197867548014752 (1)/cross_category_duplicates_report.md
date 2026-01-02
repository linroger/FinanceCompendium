# Cross-Category Duplicate Equations Analysis Report
**Analysis Date**: January 2, 2026
**Total Files Analyzed**: 8 enhanced category files
**Total Equations**: 180
**Cross-Category Duplicates Found**: 15 exact duplicates + 30 similar equations

---

## Executive Summary

Critical consolidation opportunities identified across all categories. Most duplicates exist between **Option Pricing** and **Interest Rate Models**, with CAPM, variance swap pricing, and volatility models appearing in inappropriate categories. Additionally, numerical methods and stochastic calculus contain mathematical foundations that overlap with option pricing.

---

## 1. EXACT DUPLICATES (15 instances)

### 1.1 Black-76 Formula Family (5 duplicates)

| Equation Title | Category 1 | Category 2 | Recommended Location |
|---------------|------------|------------|----------------------|
| Black-76 Futures Option Model | Option Pricing | Interest Rate Models | Keep in **Option Pricing** - specialized for futures options |
| Black-76 Futures Option Formula | Option Pricing | Interest Rate Models | DUPLICATE - remove from Option Pricing |
| Black-76 Caplet Pricing | Interest Rate Models | Interest Rate Models | Keep - distinct instrument (caplets) |
| Black-76 Swaption Pricing | Interest Rate Models | Interest Rate Models | Keep - distinct instrument (swaptions) |
| Black-76 Caplet Pricing (variant) | Interest Rate Models | Interest Rate Models | DUPLICATE - merge with line 3 |

**Action**: Consolidate to 3 unique Black-76 applications:
- Black-76 Futures Options (keep in Option Pricing)
- Black-76 Caplets (keep in Interest Rate Models)
- Black-76 Swaptions (keep in Interest Rate Models)

---

### 1.2 Heston Stochastic Volatility Model (2 duplicates)

| Equation Title | Category 1 | Category 2 | Recommended Location |
|---------------|------------|------------|----------------------|
| Heston Stochastic Volatility Model | Option Pricing | Interest Rate Models | Keep in **Option Pricing** - pricing focus |
| Heston Stochastic Volatility Characteristic Function | Option Pricing | Interest Rate Models | DUPLICATE - remove from Interest Rate Models |

**Rationale**: The Option Pricing version has complete derivation and context. The Interest Rate Models version is redundant.

---

### 1.3 Nelson-Siegel Yield Curve Models (2 duplicates)

| Equation Title | Category 1 | Category 2 | Recommended Location |
|---------------|------------|------------|----------------------|
| Nelson-Siegel Yield Curve Model | Option Pricing | Interest Rate Models | Keep in **Interest Rate Models** |
| Nelson-Siegel-Svensson Yield Curve Model | Option Pricing | Interest Rate Models | Keep in **Interest Rate Models** |

**Rationale**: Yield curve models are fundamentally interest rate tools. The Option Pricing versions are references to calibration for option pricing under different yield curve assumptions.

**Action**: Move both to **Interest Rate Models** with notes explaining option pricing applications.

---

### 1.4 Cox-Ross-Rubinstein Models (2 duplicates)

| Equation Title | Category 1 | Category 2 | Recommended Location |
|---------------|------------|------------|----------------------|
| Cox-Ross-Rubinstein Binomial Model | Option Pricing | Numerical Methods | Keep in **Option Pricing** (primary) |
| Cox-Ross-Rubinstein Parameters | Option Pricing | Numerical Methods | DUPLICATE - remove from Numerical Methods |

**Rationale**: The main entry in Option Pricing provides complete model. The Parameters entry in Numerical Methods is redundant.

---

### 1.5 Vasicek Model Family (3 duplicates)

| Equation Title | Category 1 | Category 2 | Recommended Location |
|---------------|------------|------------|----------------------|
| Vasicek Bond Price Formula | Option Pricing | Interest Rate Models | Keep in **Interest Rate Models** |
| Vasicek Short Rate Model | Option Pricing | Interest Rate Models | Keep in **Interest Rate Models** |
| Vasicek Short Rate Conditional Distribution | Option Pricing | Interest Rate Models | Keep in **Interest Rate Models** |

**Rationale**: Vasicek is fundamentally an interest rate model. Option Pricing versions provide context for bond options but should reference Interest Rate Models.

**Action**: Move all Vasicek equations to **Interest Rate Models** with cross-reference to option pricing applications.

---

### 1.6 Hull-White Extended Vasicek (2 duplicates)

| Equation Title | Category 1 | Category 2 | Recommended Location |
|---------------|------------|------------|----------------------|
| Hull-White Extended Vasicek Model | Option Pricing | Interest Rate Models | Keep in **Interest Rate Models** |
| Hull-White Bond Price Formula | Option Pricing | Interest Rate Models | DUPLICATE - remove from Option Pricing |

**Rationale**: This is fundamentally an interest rate model. Should be in Interest Rate Models with optional cross-reference.

---

### 1.7 G2++ Two-Factor Model (2 duplicates)

| Equation Title | Category 1 | Category 2 | Recommended Location |
|---------------|------------|------------|----------------------|
| G2++ Two-Factor Bond Price | Option Pricing | Interest Rate Models | Keep in **Interest Rate Models** |
| G2++ Two-Factor Interest Rate Model | Option Pricing | Interest Rate Models | DUPLICATE - remove from Option Pricing |

---

## 2. SIMILAR EQUATIONS WITH CATEGORIZATION ISSUES (30 instances)

### 2.1 CAPM Family - Should NOT be in Interest Rate Models (4 equations)

| Equation Title | Current Category | Recommended Location |
|---------------|-----------------|----------------------|
| Capital Asset Pricing Model (CAPM) | Interest Rate Models | **Asset Pricing** (new category) |
| Market Beta Decomposition in Multi-Factor Models | Interest Rate Models | **Asset Pricing** |
| Arbitrage Pricing Theory Risk Decomposition | Interest Rate Models | **Asset Pricing** |
| Arbitrage Pricing Theory with Idiosyncratic Risk | Option Pricing | **Asset Pricing** |

**Rationale**: CAPM is an asset pricing model, not an interest rate model. It belongs in a general Asset Pricing or Equilibrium Asset Pricing category.

**Impact**: Major - 4 equations misclassified

---

### 2.2 Variance Swap Family - Should be in Option Pricing (3 equations)

| Equation Title | Current Category | Recommended Location |
|---------------|-----------------|----------------------|
| Variance Swap Fair Strike Calculation | Interest Rate Models | **Option Pricing** |
| Volatility Swap Convexity Adjustment | Interest Rate Models | **Option Pricing** |
| Variance Swap Payoff Calculation | Interest Rate Models | **Option Pricing** |

**Rationale**: Variance swaps are volatility derivatives, fundamentally option pricing instruments.

---

### 2.3 Realized Variance - Should be in Option Pricing (1 equation)

| Equation Title | Current Category | Recommended Location |
|---------------|-----------------|----------------------|
| Realized Variance Calculation | Interest Rate Models | **Option Pricing** |

**Rationale**: Realized variance is an option pricing concept used in volatility swap valuation.

---

### 2.4 Heath-Jarrow-Morton Framework (3 duplicates)

| Equation Title | Current Category | Recommended Location |
|---------------|-----------------|----------------------|
| Heath-Jarrow-Morton Interest Rate Framework | Option Pricing | **Interest Rate Models** |
| HJM Forward Rate Dynamics | Interest Rate Models | **Interest Rate Models** (merge) |
| Heath-Jarrow-Morton Drift Condition | Interest Rate Models | **Interest Rate Models** (merge) |

**Rationale**: HJM is fundamentally an interest rate modeling framework.

---

### 2.5 SABR Models (2 duplicates)

| Equation Title | Current Category | Recommended Location |
|---------------|-----------------|----------------------|
| SABR Volatility Smile Model | Option Pricing | **Interest Rate Models** |
| SABR-LMM Hybrid Interest Rate Model | Interest Rate Models | **Interest Rate Models** (consolidate) |

**Rationale**: SABR is primarily an interest rate volatility model, though used in option pricing.

---

### 2.6 LIBOR Market Model Family (3 duplicates)

| Equation Title | Current Category | Recommended Location |
|---------------|-----------------|----------------------|
| LIBOR Market Model with Correlation | Option Pricing | **Interest Rate Models** |
| LIBOR Market Model Drift Adjustment | Interest Rate Models | **Interest Rate Models** (merge) |
| LIBOR Market Model Dynamics | Interest Rate Models | **Interest Rate Models** (merge) |
| Lognormal LIBOR Model Dynamics | Interest Rate Models | **Interest Rate Models** (merge) |

**Rationale**: LIBOR Market Model is fundamentally an interest rate framework.

---

### 2.7 Forward Rate & Swap Valuations (3 duplicates)

| Equation Title | Current Category | Recommended Location |
|---------------|-----------------|----------------------|
| Forward Rate Agreement Valuation | Option Pricing | **Interest Rate Models** |
| Forward Swap Rate Calculation | Interest Rate Models | **Interest Rate Models** (merge) |
| Par Swap Rate Calculation | Interest Rate Models | **Interest Rate Models** (merge) |

**Rationale**: Forward rates and swaps are interest rate instruments.

---

### 2.8 Inflation Models (2 duplicates)

| Equation Title | Current Category | Recommended Location |
|---------------|-----------------|----------------------|
| Year-on-Year Inflation Swap Payoff | Interest Rate Models | **Fixed Income** (new category or Interest Rate Models) |
| Zero-Coupon Inflation Swap Payoff | Interest Rate Models | **Fixed Income** (or Interest Rate Models) |

**Rationale**: Inflation-linked products sit between Fixed Income and Interest Rate Models. Should be in one location with cross-reference.

---

### 2.9 Numerical Methods in Option Pricing (4 equations)

| Equation Title | Current Category | Recommended Location |
|---------------|-----------------|----------------------|
| Explicit Finite Difference Scheme | Option Pricing | Keep in **Option Pricing** (as example) |
| Black-Scholes Partial Differential Equation | Option Pricing | Keep in **Option Pricing** |
| Alternating Direction Implicit Method | Option Pricing | Keep in **Option Pricing** |
| Least-Squares Monte Carlo for American Options | Option Pricing | Keep in **Option Pricing** |

**Rationale**: These are numerical methods used FOR option pricing, but they're best kept in Option Pricing as illustrative examples. Numerical Methods category should focus on general algorithms.

---

## 3. SPECIFIC CONSOLIDATION RECOMMENDATIONS

### 3.1 High-Priority Consolidations (Affecting Consistency)

#### Action 1: Remove duplicate Black-76 Futures Option Formula from Option Pricing
- **File**: enhanced_option_pricing_complete.csv
- **Lines**: 12, 36
- **Impact**: Remove line 36 (duplicate formula)

#### Action 2: Remove duplicate Black-76 Caplet Pricing from Interest Rate Models
- **File**: enhanced_interest_rate_models_complete.csv
- **Lines**: 3, 16
- **Impact**: Remove line 3 or 16 (merge into single entry)

#### Action 3: Remove duplicate Cox-Ross-Rubinstein Parameters from Numerical Methods
- **File**: enhanced_numerical_methods_complete.csv
- **Lines**: 37
- **Impact**: Remove line 37 (redundant)

#### Action 4: Remove duplicate Hull-White Bond Price Formula from Option Pricing
- **File**: enhanced_option_pricing_complete.csv
- **Lines**: 22
- **Impact**: Remove line 22 (should only exist in Interest Rate Models)

#### Action 5: Remove duplicate G2++ from Option Pricing
- **File**: enhanced_option_pricing_complete.csv
- **Lines**: 20
- **Impact**: Remove line 20 (should only exist in Interest Rate Models)

### 3.2 Category Reassignments (Major Structural Changes)

#### Reassignment 1: Create "Asset Pricing" category or move CAPM
- **Impact**: Move 4 CAPM-related equations out of Interest Rate Models and Option Pricing
- **Alternative**: Add notes clarifying CAPM is used in interest rate derivative pricing

#### Reassignment 2: Move all yield curve models to Interest Rate Models
- **Equations to move**: Nelson-Siegel, Nelson-Siegel-Svensson
- **Source**: Option Pricing → Interest Rate Models
- **Impact**: 2 equations

#### Reassignment 3: Move all Vasicek family to Interest Rate Models
- **Equations to move**: Vasicek Bond Price, Short Rate Model, Short Rate Conditional Distribution
- **Source**: Option Pricing → Interest Rate Models
- **Impact**: 3 equations

#### Reassignment 4: Move variance/volatility swap family to Option Pricing
- **Equations to move**: Variance Swap Fair Strike, Volatility Swap Convexity, Variance Swap Payoff, Realized Variance
- **Source**: Interest Rate Models → Option Pricing
- **Impact**: 4 equations

#### Reassignment 5: Move HJM framework to Interest Rate Models
- **Equations to move**: Heath-Jarrow-Morton Interest Rate Framework
- **Source**: Option Pricing → Interest Rate Models
- **Impact**: 1 equation
- **Note**: Consolidate the 3 HJM-related entries in Interest Rate Models

### 3.3 Cross-Reference Strategy

Instead of duplicating equations across categories, implement **cross-references**:

Example for Black-Scholes in Fixed Income:
- Keep equation in **Option Pricing** (primary location)
- In **Fixed Income**, provide brief entry with cross-reference: "See Black-Scholes PDE (Option Pricing line 13) for derivation"

This approach maintains single source of truth while enabling specialized context.

---

## 4. AMBIGUOUS CASES REQUIRING DECISION

### 4.1 Inflation-Linked Securities
- **Question**: Should inflation products be in Fixed Income or Interest Rate Models?
- **Current**: Scattered across both
- **Recommendation**: Consolidate in **Interest Rate Models** with clear note explaining Fixed Income applications
- **Rationale**: Inflation swaps are essentially interest rate swaps with inflation index as floating rate

### 4.2 Commodity Models in Interest Rate
- **Equation**: Schwartz One-Factor Commodity Model
- **Current**: Interest Rate Models
- **Question**: Should this be in Commodities category?
- **Recommendation**: Keep in Interest Rate Models but add cross-reference to Commodities
- **Rationale**: While applied to commodities, Schwartz is a mean-reverting model structure also used for interest rates

### 4.3 CDO Pricing Models
- **Equations**: CDO Tranche Loss Valuation, CDO Protection Leg, etc.
- **Current**: Credit Models
- **Question**: Should CDOs be separate from general Credit Models?
- **Recommendation**: Keep in Credit Models as specialized application
- **Rationale**: CDOs represent structured credit products, distinct from single-name CDS

---

## 5. FINAL CONSOLIDATION SUMMARY

### 5.1 Duplicates to Remove (15 total)

| Category | Duplicates | Net Equations After Consolidation |
|----------|------------|-------------------------------|
| Option Pricing | 5 | 51 |
| Interest Rate Models | 8 | 63 |
| Numerical Methods | 1 | 11 |
| Credit Models | 0 | 13 |
| Fixed Income | 0 | 13 |
| Stochastic Calculus | 0 | 7 |
| Foreign Exchange | 0 | 6 |
| Commodities | 1 | 1 |
| **TOTAL** | **15** | **165** |

### 5.2 Category Reassignments (12 equations)

| From | To | Count |
|------|-----|-------|
| Option Pricing → Interest Rate Models | 6 | Nelson-Siegel, Vasicek family, Hull-White, G2++ |
| Option Pricing → Interest Rate Models | 1 | HJM Framework |
| Interest Rate Models → Option Pricing | 4 | Variance/volatility swaps |
| Interest Rate Models → Asset Pricing (new) | 4 | CAPM family |
| Interest Rate Models → Fixed Income | 2 | Inflation swaps |

### 5.3 Potential New Category: Asset Pricing

**Recommended**: Create separate "Asset Pricing" category containing:
- CAPM and variations
- APT models
- Black-Litterman portfolio optimization
- Market beta decomposition
- Zero-beta rate estimation

**Total equations**: ~4-5

---

## 6. IMPLEMENTATION CHECKLIST

### Phase 1: Remove Exact Duplicates (Priority: HIGH)
- [ ] Remove Black-76 Futures Option Formula (duplicate) from Option Pricing
- [ ] Remove Black-76 Caplet Pricing (duplicate) from Interest Rate Models
- [ ] Remove Cox-Ross-Rubinstein Parameters from Numerical Methods
- [ ] Remove Hull-White Bond Price Formula (duplicate) from Option Pricing
- [ ] Remove G2++ (duplicate) from Option Pricing
- [ ] Remove Heston Characteristic Function (duplicate) from Interest Rate Models
- [ ] Remove duplicate SABR entries if present

### Phase 2: Reassign Categorized Equations (Priority: HIGH)
- [ ] Move Nelson-Siegel models to Interest Rate Models
- [ ] Move Nelson-Siegel-Svensson to Interest Rate Models
- [ ] Move Vasicek family to Interest Rate Models
- [ ] Move Hull-White Extended Vasicek to Interest Rate Models
- [ ] Move HJM Framework to Interest Rate Models
- [ ] Move variance/volatility swaps to Option Pricing
- [ ] Move realized variance to Option Pricing
- [ ] Move CAPM family to Asset Pricing (create new category)

### Phase 3: Consolidate Similar Equations (Priority: MEDIUM)
- [ ] Merge 3 HJM entries in Interest Rate Models into single entry
- [ ] Merge 4 LIBOR Market Model entries in Interest Rate Models
- [ ] Merge 3 Forward Rate/Swap entries in Interest Rate Models
- [ ] Decide on final location for Schwartz commodity model

### Phase 4: Add Cross-References (Priority: MEDIUM)
- [ ] Identify numerical method applications in specialized categories
- [ ] Replace duplicates with cross-references where appropriate
- [ ] Add notes explaining category choices

### Phase 5: Validation (Priority: HIGH)
- [ ] Verify all cross-references point to existing entries
- [ ] Ensure no orphaned equations (no broken links)
- [ ] Check for remaining inconsistencies
- [ ] Verify equation count matches expected (165 after removals)

---

## 7. RECOMMENDED FINAL CATEGORY STRUCTURE

### Proposed 9-Category Structure

1. **Option Pricing** (~51 equations) - Core option pricing theory
2. **Interest Rate Models** (~63 equations) - Rate dynamics, yield curves, swaps
3. **Credit Models** (~13 equations) - CDS, CDOs, default modeling
4. **Fixed Income** (~13 equations) - Bond pricing, duration, MBS
5. **Asset Pricing** (~4-5 equations) - CAPM, APT, portfolio optimization [NEW]
6. **Numerical Methods** (~11 equations) - General computational techniques
7. **Stochastic Calculus** (~7 equations) - SDEs, processes, integrals
8. **Foreign Exchange** (~6 equations) - FX options, forwards
9. **Commodities** (~1-2 equations) - Commodity pricing, storage

**Note**: Inflation products consolidated into Interest Rate Models with cross-references

---

## CONCLUSION

This analysis identified **45 equations** requiring consolidation (15 exact duplicates + 30 similar/categorized issues):

1. **15 exact duplicates** should be removed entirely
2. **12 equations** should be moved between categories
3. **13-15 similar equations** should be consolidated within categories
4. **4-5 equations** should be moved to a new Asset Pricing category

**Net Impact**:
- Reduce from 180 equations to approximately 165 unique equations
- Improve category consistency and logical organization
- Eliminate redundancy while maintaining all valuable content
- Create clearer navigation for users

**Critical Success Metric**: Final dataset should have ZERO cross-category duplicates with all equations in their most appropriate category.

---

**Report Status**: COMPLETE - All files analyzed and consolidated recommendations provided.

---
title: Leverage as a Measure of Risk
primary_tags:
  - leverage
  - risk_management
  - derivatives
  - portfolio_management
  - accounting_leverage
secondary_tags:
  - risk_based_leverage
  - equivalent_security_approach
  - bucketized_risk
  - financial_crisis
  - structured_finance
  - portfolio_risk_control
  - delta_hedging
  - dv01
  - risk_sensitivity
  - portfolio_nav
  - leverage_measurement
  - risk_metrics
  - portfolio_optimization
  - hedge_ratios
  - risk_exposure
  - volatility_analysis
  - option_greeks
  - duration_matching
  - curve_risk
  - interest_rate_sensitivity
cssclasses: academia
---

# Leverage as a Measure of Risk

D. L. Chertok†

January 20, 2009

## Summary

Leverage is treated as a measure of risk factor sensitivity. It can be computed using the "equivalent security" approach to determine "bucketized risk".

## 1 Justification

The unfolding financial crisis has brought the issue of leverage into the limelight. "Overleveraging" is often blamed for the demise of structured finance yet the issue is often viewed from the traditional, purely accounting standpoint. This technical note expands the concept of leverage to derivative products and provides a tool for assessing its impact when the "traditional" approach does not work. The intended audience is non-technical practitioners interested in controlling portfolio risks associated with leverage.

## 2 Accounting and Risk-Based Leverage

Accounting leverage can be defined as

$$
L = \frac{\text{assets}}{\max\{\text{equity}, 0\}} = \frac{\text{assets}}{\max\{\text{assets} - \text{liabilities}, 0\}} \tag{1}
$$

It follows from Eq. (1) that as the value of liabilities approaches that of assets, the leverage of the portfolio grows infinitely. This is not an unduly restrictive assumption for traditional portfolios since in this case the liquidation of the portfolio (e.g., due to bankruptcy) is a rational consequence.

Let us illustrate this with an example.

**Example 1** Suppose that you bought a house last year for $500,000 with $50,000 as a down payment. Considering this house as a self-contained real estate portfolio, its assets last year were $500,000, its equity portion (total assets less liabilities) was $50,000, so its accounting leverage was $\frac{\$500,000}{\$50,000} = 10$. If the value of your house this year grows by 10% to $550,000, your equity increases by 100% to $100,000. If your house value drops to $450,000, your equity decreases by 100% (disappears).

In this example, a $10\%$ return on assets (ROA) ($\frac{50,000}{500,000} = 10\%$) results in a $100\%$ return on equity (ROE), and a $-10\%$ ROA ($\frac{-50,000}{500,000} = -10\%$) yields a $-100\%$ ROE. From (1),

$$
L(t_0) = \frac{\text{assets}(t_0)}{\text{equity}(t_0)} = \frac{\frac{P\&L(t_0, t_1)}{\text{equity}(t_0)}}{\frac{P\&L(t_0, t_1)}{\text{assets}(t_0)}} = \frac{\frac{\text{change in equity}(t_0, t_1)}{\text{equity}(t_0)}}{\frac{\text{change in assets}(t_0, t_1)}{\text{assets}(t_0)}} = \frac{ROE}{ROA} \tag{2}
$$

which gives us an alternative definition of leverage. Note here that this definition only makes sense under the going concern assumptions, i.e., in situations where the portfolio has sufficient equity to prevent liquidation. In fact, if your house value increases to $550,000 (and your debt doesn't change), your leverage falls to $\frac{550,000}{550,000 - 450,000} = 5.5$. If your house value decreases to $450,000 (or less) under the same assumptions, your leverage becomes infinite: $\frac{450,000}{450,000 - 450,000} = \infty$, and (2) becomes meaningless.

**Example 2** (see [1]) Suppose you bought a 3-month European call option struck at $80 on a stock currently trading at $75. Here the underlying stock plays the role of an asset and the call itself plays the role of equity. Assuming (annualized) implied volatility of 20% and simple 3-month risk-free rate at 0.1%, the price of this call is $1.22 and its delta is $\Delta = 0.28^1$. Accounting leverage as defined by (1) is equal to 1, since you bought the option with your own money. Risk-based leverage defined by (2), however, is

$$
L(t_0) = \frac{\frac{\text{change in equity}(t_0, t_1)}{\text{equity}}}{\frac{\text{change in assets}(t_0, t_1)}{\text{assets}}} = \Delta \frac{\text{assets}}{\text{equity}} = 0.28 \frac{75}{1.22} = 17 \tag{3}
$$

which makes sense: a $\frac{\$2}{\$75} = 2.7\%$ change in the (underlying) asset price leads to a $\frac{\$0.55}{\$1.22} = 45\%$ change in equity, and the ratio of the second to the first is 17. Clearly, any reference to "borrowed money" is irrelevant in this case.

Summarizing,

- accounting leverage is irrelevant to derivative securities as a measure of risk;
- risk-based leverage captures risk better than accounting leverage;
- risk-based leverage yields the same result as accounting leverage for "traditional" assets;
- risk-based leverage is a dynamic measure, i.e., it requires that asset and equity P&L be known, whereas accounting leverage is a static measure not requiring such knowledge.

## 3 Application of Risk-Based Leverage to Portfolio Management

As follows from Section 2, risk-based leverage, and not accounting leverage, is an appropriate measure for a portfolio that includes derivative products (futures, swaps, options and other exotics). In this case, "equity" is the current portfolio net asset value (NAV). It is unclear, however, how "assets" can be defined in the case of a complex portfolio. A case can be made for the following algorithm:

- select an easy-to-analyze "equivalent (non-derivative) security" from some intuitive considerations, e.g., a bond with the same duration as the portfolio or a 10-yr Treasury note;
- calculate DV01 of the equivalent security per $1 notional:

$$
DV01_{eq. sec.} = \frac{PV_{\$1}(curve_{up_{10 b.p.}}) - PV_{\$1}(curve_{down_{10 b.p.}})}{20} \tag{4}
$$

- find a "perfect hedge" for the portfolio in terms of the equivalent security, i.e., find the notional amount of this security that has the same DV01 as our portfolio, i.e.,

$$
N_{eq. sec} = \frac{DV01_{port}}{DV01_{eq. sec.}} \tag{5}
$$

- the amount of assets required for (2) is equal to the notional amount found above.

**Example 3** Suppose that portfolio DV01 is $DV01_{port} = \$500,000$ which is calculated by moving the interest rate curve (assuming that we are only concerned with one currency) up and down by 10 b.p. Suppose further that DV01 of a 10-year Treasury note is $DV01_{TY}(\$1) = \$0.001$ per $1 notional. Then the equivalent assets will be $DV01_{port} / DV01_{TY}(\$1) = 500,000 / 0.001 = \$500,000,000$. If the current value of the portfolio is $50,000,000, then equivalent risk-based leverage is $\$500,000,000 / \$50,000,000 = 10$.

Clearly, any number of equivalent assets can be used to calculate portfolio leverage in the general case. One could expand the definition in (2) to include leverage with respect to a collection of "base assets", e.g., 2, 3, 5, 10 and 30-year (on-the-run) Treasury notes. If it is possible to construct a unique portfolio decomposition as presented by (4) - (5), one can perform "sensitivity analysis" with respect to each equivalent security separately. Such analysis would capture "bucketized risk", i.e., exposure to different parts of the interest rate curve. Using an equivalent asset approach yields a more comprehensive picture of the overall portfolio risk compared to the one painted by accounting leverage.

### Appendix A: Calculation of Option Price and $\Delta$ in Example 1

The Black-Scholes equation for the call price (see, e.g., [2]) yields:

$$
c = SN(d_1) - Ke^{-rT}N(d_2) \tag{A.1}
$$

$$
d_1 = \frac{\ln\left(\frac{S}{K}\right) + \left(r + \frac{\sigma^2}{2}\right)T}{\sigma\sqrt{T}} \tag{A.2}
$$

$$
d_2 = d_1 - \sigma\sqrt{T} \tag{A.3}
$$

$$
N(x) = \frac{1}{\sqrt{2\pi}} \int_{-\infty}^{x} e^{-\frac{y^2}{2}} dy \tag{A.4}
$$

where

- $c$ - call price,
- $S$ - spot price of the underlying stock $= 75$
- $N$ - cumulative distribution function of the standard normal distribution,
- $K$ - call strike $= 80$
- $r$ - simple 3-month risk-free rate $= 0.1\% = 0.001$
- $T$ - time to option expiry in years $= 0.25$
- $\sigma$ - volatility of the price of the underlying stock $= 20\% = 0.2$

Differentiating (A.1) - (A.4) with respect to $S$, we obtain $\frac{\partial c}{\partial S} = \Delta = N(d_1)$. Substituting the numbers from Ex. 1 into (A.1) - (A.4), we obtain $c = 1.22$ and $\Delta = 0.28$.

## References

[1] D. Goldman. Seeing is not believing: Fund of funds and hedge fund risk assessment and transparency, survival and leverage. Working paper, MeasuriskTM, 2003.

[2] J. Hull. Options, Futures and Other Derivatives. Prentice Hall, 6th edition, 2006.

## D2 Diagrams for Leverage and Risk Concepts

### Leverage Types Comparison
```d2
# Accounting vs Risk-Based Leverage
accounting_leverage: "Accounting Leverage\nAssets/Equity"
risk_based_leverage: "Risk-Based Leverage\n(Change in Assets)/(Change in Equity)"
traditional_assets: "Traditional Assets"
derivatives: "Derivatives"

accounting_leverage -> traditional_assets: "Works well"
accounting_leverage -> derivatives: "Not relevant"
risk_based_leverage -> traditional_assets: "Equivalent to accounting"
risk_based_leverage -> derivatives: "Captures risk better"
```

### Equivalent Security Approach
```d2
# Equivalent Security Approach for Portfolio Risk
portfolio: "Portfolio"
equivalent_security: "Equivalent Security\n(e.g., 10-yr Treasury)"
dv01_portfolio: "Portfolio DV01"
dv01_equivalent: "Equivalent Security DV01"
notional_amount: "Notional Amount\nN_eq = DV01_port / DV01_eq"

portfolio -> dv01_portfolio: "Calculate risk metrics"
equivalent_security -> dv01_equivalent: "Reference security"
dv01_portfolio -> notional_amount: "Calculate equivalent assets"
dv01_equivalent -> notional_amount: "Denominator"
notional_amount -> "Risk-based leverage\ncalculation"
```

### Risk Sensitivity Analysis
```d2
# Bucketized Risk Analysis
risk_buckets: "Risk Buckets\n(2, 3, 5, 10, 30 yr Treasuries)"
portfolio_exposure: "Portfolio Exposure"
sensitivity_analysis: "Sensitivity Analysis"
bucketized_risk: "Bucketized Risk\nExposure to different\ncurve segments"

risk_buckets -> sensitivity_analysis: "Decompose portfolio"
portfolio_exposure -> sensitivity_analysis: "Map exposures"
sensitivity_analysis -> bucketized_risk: "Capture segment risk"
```

### Leverage Impact on Returns
```d2
# Leverage Impact on Return Amplification
roa: "Return on Assets (ROA)"
roe: "Return on Equity (ROE)"
leverage_ratio: "Leverage Ratio\nL = Assets/Equity"
amplification: "Amplification Effect\nROE = L * ROA"

roa -> amplification: "Amplified by L"
leverage_ratio -> amplification: "Multiplier"
amplification -> roe: "Resulting ROE"
```
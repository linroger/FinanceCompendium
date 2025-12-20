---
title: Three DCF Valuation Approaches - WACC, APV, and CCF Comparison
primary_tags:
  - dcf_valuation
  - weighted_average_cost_of_capital
  - adjusted_present_value
  - capital_cash_flow
  - enterprise_valuation
secondary_tags:
  - free_cash_flow
  - interest_tax_shields
  - tax_shield_valuation
  - cost_of_capital
  - unlevered_firm_value
  - levered_firm_value
  - modigliani_miller
  - capital_structure
  - enterprise_value
  - equity_value
  - debt_valuation
  - cost_of_equity
  - cost_of_debt
  - discount_rate
  - perpetuity_valuation
  - terminal_value
  - unlevered_cash_flow
  - levered_cash_flow
  - tax_advantaged_debt
  - financial_distress_costs
cssclasses: academia
---

# Three DCF Valuation Approaches: WACC, APV, and CCF Comparison

## Authors
Fabrice Bienfait

## Table of Contents

- [Introduction](#introduction)
- [Enterprise Valuation](#enterprise-valuation)
- [The Weighted Average Cost of Capital Approach](#the-weighted-average-cost-of-capital-approach)
- [The Adjusted Present Value Approach](#the-adjusted-present-value-approach)
- [The Capital Cash Flow Approach](#the-capital-cash-flow-approach)
- [Numerical Example](#numerical-example)
- [Conclusions](#conclusions)
- [References](#references)

## Figures and Tables

- Figure 1: WACC as a Function of the Debt Ratio
- Table 1: Assumptions (in €)
- Table 2: WACC Valuation (in €)
- Table 3: APV Valuation (in €)
- Table 4: CCF Valuation (in €)

## Introduction

In this note we compare and contrast three enterprise valuation models: the weighted average cost of capital (WACC), the adjusted present value (APV) and the capital cash flow (CCF). The three approaches value the entire firm but they differ around the way they treat tax shields. We will first review the rational and the underlying assumptions behind each approach. We will then use a numerical example to illustrate the mechanics behind the three approaches and show under which assumptions they yield the same results.

## Enterprise Valuation

According to Modigliani and Miller, the value of a company's economic assets must equal the value of the claims against those assets. Enterprise valuation models value the sum of the cash flows to all claim holders, including equity holders and debt holders and discount them to the appropriate cost of capital. The cash flow available to all claim holders is called the free cash flow (FCF) from operations and is defined below:

$$FCF = EBIAT + Depreciation - Capital Expenditure - Increases in Working Capital$$

EBIAT is the income the company earns after tax without regard to how the company is financed. Non-cash expenses such as Depreciation are then added. Because we are valuing a going concern we also take into account the cash flow management will retain for new capital expenditures and possible increase in working capital. The remaining is in effect the cash available to owners and creditors.

By definition free cash flow is independent from leverage (and is often referred as un-levered free cash flow). Therefore the value derived from the interest tax shield (interest on debt is tax deductible) has still to be incorporated in the enterprise valuation. This is where the three approaches WACC, APV and CCF differ:

- The WACC approach values the tax shield by adjusting the cost of capital
- The APV approach values the tax shield separately from the un-levered free cash flow
- The CCF approach values the tax shield by incorporating it in the cash flow

## The Weighted Average Cost of Capital Approach

To determine the value of the enterprise, the free cash flows from operations have to be discounted to present value. According to Modigliani and Miller's proposition number one without taxes or financial market imperfections the cost of capital does not depend on financing so the weighted average of the expected returns to debt and equity investors equals the opportunity cost of capital regardless of leverage:

$$\mathrm{Rd} \times \mathrm{D} / \mathrm{V} + \mathrm{Re} \times \mathrm{E} / \mathrm{V} = \mathrm{Ra} = \text{Constant independent of D/V}$$

$$\mathrm{Ra} = \text{Opportunity cost of capital} = \text{Un-levered cost of equity} = \text{Return on assets} = \text{pre-tax WACC}$$
$$\mathrm{Rd} = \text{Cost of debt}, \mathrm{Re} = \text{Cost of equity}, \mathrm{D/V} \text{and} \mathrm{E/V} = \text{Target levels of debt and equity using market values}$$

None of the components of the cost of capital are directly observable and therefore need to be approximated using various models and assumptions. The cost of equity is derived from the capital asset pricing model (CAPM) while the cost of debt can be estimated from the firm credit rating and default risk or from yields on publicly traded debt.

However interest on debt is tax deductible so if we were to discount free cash flows from operations using Ra we would not take into account the value of the tax shield. Therefore the after-tax weighted average cost of capital (WACC) is used instead. WACC includes an adjustment to the cost of debt by the marginal tax rate (Tm):

$$\mathrm{WACC} = \mathrm{Rd} \times (1 - \mathrm{Tm}) \times \mathrm{D/V} + \mathrm{Re} \times \mathrm{E/V} (= \mathrm{Ra} - \mathrm{Rd} \times \mathrm{Tm} \times \mathrm{D/V})$$

WACC is less than the opportunity cost of capital Ra because the cost of debt is calculated after tax as Rd(1-Tm). Thus the tax advantages of debt financing are reflected in a lower discount rate. The WACC equals the opportunity cost of capital when there is no debt and declines with financial leverage because of increasing interest tax shields. The WACC increases again when the debt level becomes significant relative to the value of the firm reflecting the main costs associated with borrowing, the costs of bankruptcy.

![Figure 1: WACC as a Function of the Debt Ratio](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/c044f8c8-3897-445c-ae9a-036c5497649c/9bf7f821232a5938f73313beba8c217185544b0886fe7764a387176d5c6a8cff.jpg)

Discounting all future cash flows using a constant WACC assumes that the company manages its capital structure to a fixed debt to value ratio (D/V). Therefore the company's WACC is the right discount rate only if the company's debt ratio (D/V) is expected to remain reasonably close to constant. However if the company is expected to significantly change its capital structure (i.e., constant level of debt, LBO, recapitalization), the WACC would have to be continuously adjusted which makes the approach more difficult to apply.

## The Adjusted Present Value Approach

The APV approach values the cash flows associated with capital structure independently by separating the value of operations into two components: the value of the firm without debt and the benefits and the costs of borrowing:

$$\text{Value of the firm} = \text{Value of the un-levered firm} + \text{Present value of interest tax shields} - \text{Costs of financial distress}$$

The value of the un-levered firm is obtained by discounting free cash flows at the return on assets (Ra). If the company manages its debt-to-value to a target level $(\mathrm{D} / \mathrm{V} = \text{constant})$ then the interest tax shield is as risky as the firm and should be discounted at Ra. In this case the APV approach yields the same results as the WACC approach but is computationally less efficient.

However if the debt is assumed to be a fixed amount (D=constant) the interest tax shield is less risky than the firm but as risky as the debt itself and should be discounted at the cost of debt. In this case the APV approach is not only the only correct approach, it is also computationally very efficient if the tax saving are considered as perpetuity since:

$$\text{Present value of interest tax shields} = \frac{\mathrm{Tm} \times \mathrm{Rd} \times \mathrm{D}}{\mathrm{Rd}} = \mathrm{Tm} \times \mathrm{D}$$

The main risk in using the APV approach is to ignore the costs of financial distress, especially at very high debt ratios, which leads to an overvaluation of the firm.

## The Capital Cash Flow Approach

Capital cash flows are simply derived from free cash flows by adding interest tax shields:

$$\mathrm{CCF} = \mathrm{FCF} + \text{Interest tax shield} = \mathrm{FCF} + \mathrm{Tm} \times \mathrm{Rd} \times \mathrm{D}$$

With this approach capital cash flows are then discounted at the return on assets. This implicitly assumes that interest tax shields are as risky as the firm and are discounted at the return on assets. This is true when debt is a fixed proportion of value. Under this assumption the capital cash flow approach will generate the same results as the WACC approach. Furthermore if the debt is forecasted in levels instead of a debt-to-value ratio the CCF approach is easier to use because the tax shield are simple to calculate and to include in the CCF.

If the forecasted debt levels imply a change in the debt-to-value ratio, the CCF retains his simplicity since the discount rate, the return on assets, is independent of the capital structure and can be used for every forecast period. Therefore the approach is easier to apply in transactions involving change in capital structure such as a LBO or a restructuring. However in this case discounting the interest tax shields at Ra is a simplifying assumption since the risk of those cash flows is not anymore the same as the risk associate with the firm.

## Numerical Example

Table 1 shows the financial assumptions underlying our numerical example. The firm is valued over a period of 5 years during which EBIT is growing at $5\%$ per annum and depreciation, capital expenditure and increase in working capital are constant. However the firm's capital structure changes significantly through the repayment of a major portion of its debt.

### Table 1: Assumptions (in €)

|  | Year 1 | Year 2 | Year 3 | Year 4 | Year 5 |
|---|---|---|---|---|---|
| Risk Free Rate | 5% | 5% | 5% | 5% | 5% |
| Market Risk Premium | 7% | 7% | 7% | 7% | 7% |
| Tax Rate | 40% | 40% | 40% | 40% | 40% |
| Asset Beta | 1.2 | 1.2 | 1.2 | 1.2 | 1.2 |
| Debt Beta | 0.4 | 0.35 | 0.3 | 0.25 | 0.2 |
| EBIT | 100,000 | 105,000 | 110,250 | 115,763 | 121,551 |
| Depreciation | 50,000 | 50,000 | 50,000 | 50,000 | 50,000 |
| Capex | 60,000 | 60,000 | 60,000 | 60,000 | 60,000 |
| Increase in NWC | 10,000 | 10,000 | 10,000 | 10,000 | 10,000 |
| Debt | 100,000 | 50,000 | 25,000 | 12,500 | 6,250 |

We will start valuing the firm using the WACC approach (see table 2). This is the less appropriated and most complex methodology given the forecasted changes in capital structure. Indeed the WACC needs to be recalculated every year and an iterative calculation has to be used since the value of the firm for each year is required to derive the percentage of debt and equity. The firm value in year N is the value of the remaining cash flows. For instance the value of the firm at the beginning of Year 3 is the value of the remaining cash flow in Year 3, 4 and 5 discounted using the WACC in year 3, 4 and 5.

### Table 2: WACC Valuation (in €)

|  | Year 1 | Year 2 | Year 3 | Year 4 | Year 5 |
|---|---|---|---|---|---|
| EBIT | 100,000 | 105,000 | 110,250 | 115,763 | 121,551 |
| - Taxes on EBIT | (40,000) | (42,000) | (44,100) | (46,305) | (48,620) |
| = EBIAT | 60,000 | 63,000 | 66,150 | 69,458 | 72,930 |
| + Depreciation | 50,000 | 50,000 | 50,000 | 50,000 | 50,000 |
| - Capex | (60,000) | (60,000) | (60,000) | (60,000) | (60,000) |
| - Increase in NWC | (10,000) | (10,000) | (10,000) | (10,000) | (10,000) |
| = FCF | 40,000 | 43,000 | 46,150 | 49,458 | 52,930 |
| Percent Debt | 61.3% | 35.2% | 21.5% | 14.7% | 13.3% |
| Cost of Debt | 7.8% | 7.5% | 7.1% | 6.8% | 6.4% |
| After Tax Cost of Debt | 4.7% | 4.5% | 4.3% | 4.1% | 3.8% |
| Percent Equity | 38.7% | 64.8% | 78.5% | 85.3% | 86.7% |
| Return on Assets | 13.4% | 13.4% | 13.4% | 13.4% | 13.4% |
| Cost of Equity | 22.3% | 16.6% | 15.1% | 14.5% | 14.5% |
| WACC | 11.5% | 12.4% | 12.8% | 13.0% | 13.1% |
| Discount Factor | 0.90 | 0.80 | 0.71 | 0.63 | 0.55 |
| PV | 35,878 | 34,329 | 32,666 | 30,979 | 29,325 |
| Firm Value | 163,178 | 141,923 | 116,451 | 85,196 | 46,817 |

The cost of debt is calculated using CAPM:

The cost of equity is calculated using the M&M proposition I:

$$\mathrm{Rd} = \mathrm{Rf} + \beta_d \times \mathrm{MRP}$$
$$\mathrm{Re} = \frac{(\mathrm{Ra} - \mathrm{D/V} \times \mathrm{Rd})}{(\mathrm{E/V})}$$

Using the WACC approach we find a value for the firm of €163,178. Next we use the APV approach to value the firm calculating separately the value of the un-levered firm and the value of the interest tax shield (Tm × Rd × D). The approach is straightforward in this case since we are given a forecast of the level of debt. We find that the APV approach yields the same firm value (€163,178) as the WACC approach when discounting interest tax shield at Ra. We also illustrate that using Rd would yield a higher valuation of the firm (this is not the correct discount rate in this case given that the debt is not constant).

### Table 3: APV Valuation (in €)

|  | Year 1 | Year 2 | Year 3 | Year 4 | Year 5 |
|---|---|---|---|---|---|
| FCF | 40,000 | 43,000 | 46,150 | 49,458 | 52,930 |
| Return on Assets | 13.4% | 13.4% | 13.4% | 13.4% | 13.4% |
| Discount Factor | 0.88 | 0.78 | 0.69 | 0.60 | 0.53 |
| PV | 35,273 | 33,438 | 31,647 | 29,907 | 28,225 |
| **Value of Unlevered Firm** | **158,491** |  |  |  |  |
| Interest Tax Shield | 3,120 | 1,490 | 710 | 338 | 160 |
| Return on Assets Ra | 13.4% | 13.4% | 13.4% | 13.4% | 13.4% |
| Discount Factor | 0.88 | 0.78 | 0.69 | 0.60 | 0.53 |
| PV | 2,751 | 1,159 | 487 | 204 | 85 |
| **Value of Interest Tax Shield @ Ra** | **4,686** |  |  |  |  |
| Interest Tax Shield | 3,120 | 1,490 | 710 | 338 | 160 |
| Cost of Debt Rd | 7.8% | 7.5% | 7.1% | 6.8% | 6.4% |
| Discount Factor | 0.93 | 0.86 | 0.81 | 0.76 | 0.71 |
| PV | 2,894 | 1,286 | 572 | 255 | 114 |
| **Value of Interest Tax Shield @ Rd** | **5,121** |  |  |  |  |
| **Value of Firm with ITS @ Ra** | **163,178** |  |  |  |  |
| **Value of Firm with ITS @ Rd** | **163,613** |  |  |  |  |

Finally we use the CCF approach. The calculation clearly shows how the interest tax shields are incorporated in the cash flows and then discounted at Ra. The CCF approach is equivalent to the WACC approach. Furthermore the approach also produces the same value as the APV method with interest tax shields discounted at Ra.

### Table 4: CCF Valuation (in €)

|  | Year 1 | Year 2 | Year 3 | Year 4 | Year 5 |
|---|---|---|---|---|---|
| EBIT | 100,000 | 105,000 | 110,250 | 115,763 | 121,551 |
| - Taxes on EBIT | (40,000) | (42,000) | (44,100) | (46,305) | (48,620) |
| = EBIAT | 60,000 | 63,000 | 66,150 | 69,458 | 72,930 |
| + Depreciation | 50,000 | 50,000 | 50,000 | 50,000 | 50,000 |
| - Capex | (60,000) | (60,000) | (60,000) | (60,000) | (60,000) |
| - Increase in NWC | (10,000) | (10,000) | (10,000) | (10,000) | (10,000) |
| + Interest tax Shield | 3,120 | 1,490 | 710 | 338 | 160 |
| = CCF | 43,120 | 44,490 | 46,860 | 49,795 | 53,090 |
| Return on Assets | 13.4% | 13.4% | 13.4% | 13.4% | 13.4% |
| Discount Factor | 0.88 | 0.78 | 0.69 | 0.60 | 0.53 |
| PV | 38,025 | 34,597 | 32,134 | 30,112 | 28,311 |
| **Firm Value** | **163,178** |  |  |  |  |

## Conclusions

The three enterprise valuation techniques considered in this paper are different in the way they treat interest tax shields. However we have seen that the WACC approach and the CCF approach are identical and that under certain assumptions the APV approach also yields the same valuation. The WACC approach is easy to use and efficient when the assumption that capital structure will not change in the future can be made (D/V = constant). If debt level is forecasted to remain constant in absolute term (D = constant), the APV approach should be used discounting the interest tax shield at the cost of debt. Finally the CCF approach is the appropriate and most efficient approach when forecasted debt levels imply a change in capital structure. In this case it is also equivalent to the APV approach discounting the interest tax shield at the return on assets.

## References

- Brealey and Myers, "Principles of corporate finance", 7th Edition
- Damodaran, "Investment Valuation", 2nd Edition
- Koller, Goedhart and Wessels, "Valuation", 4th Edition
- Ruback, "Capital Cash Flows: a simple approach to valuing risky cash flows"

## D2 Diagram: Comparison of DCF Valuation Approaches

```d2
# D2 diagram showing the three DCF valuation approaches
# Each approach values the firm differently based on how they treat tax shields

direction: down

approaches: "Three DCF Valuation Approaches" {
  direction: right
  shape: circle
  style: {
    fill: "#e1f5fe"
    stroke: "#0277bd"
    stroke-width: 2
  }
}

wacc: "WACC Approach" {
  shape: rectangle
  style: {
    fill: "#e8f5e9"
    stroke: "#388e3c"
  }
}

apv: "APV Approach" {
  shape: rectangle
  style: {
    fill: "#fff3e0"
    stroke: "#f57c00"
  }
}

ccf: "CCF Approach" {
  shape: rectangle
  style: {
    fill: "#f3e5f5"
    stroke: "#7b1fa2"
  }
}

tax_shield: "Tax Shield Treatment" {
  shape: diamond
  style: {
    fill: "#e0f2f1"
    stroke: "#00695c"
  }
}

wacc -> tax_shield: "Adjusts cost of capital"
apv -> tax_shield: "Values separately"
ccf -> tax_shield: "Incorporates in cash flow"

wacc -> approaches
apv -> approaches
ccf -> approaches

result: "Same Valuation Result" {
  shape: hexagon
  style: {
    fill: "#fff8e1"
    stroke: "#f57f17"
  }
}

tax_shield -> result: "Under certain assumptions"
```

## Additional D2 Diagrams for DCF Valuation

### DCF Valuation Framework
```d2
# DCF Valuation Components
free_cash_flow: "Free Cash Flow (FCF)"
discount_rate: "Discount Rate"
terminal_value: "Terminal Value"
present_value: "Present Value"
firm_value: "Firm Value"

free_cash_flow -> present_value: "Discounted at appropriate rate"
discount_rate -> present_value: "WACC, Ra, or other rate"
terminal_value -> present_value: "Present value of continuing value"
present_value -> firm_value: "Sum of all PVs"
```

### Capital Structure and Valuation
```d2
# Capital Structure Impact on Valuation
equity_value: "Equity Value"
debt_value: "Debt Value"
enterprise_value: "Enterprise Value"
tax_shields: "Tax Shields"

equity_value -> enterprise_value: "Plus"
debt_value -> enterprise_value: "Plus"
tax_shields -> equity_value: "Increases via lower WACC"
enterprise_value -> "Value of operations"
```

### Valuation Method Selection
```d2
# When to Use Each DCF Method
wacc_use: "WACC - When D/V is constant"
apv_use: "APV - When D is constant"
ccf_use: "CCF - When D changes over time"

wacc_use -> "Stable capital structure"
apv_use -> "Constant debt level"
ccf_use -> "Changing capital structure"
```
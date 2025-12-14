# International Finance Management

# A Note on Valuation Models: CCFs vs. APV vs WACC

# Fabrice Bienfait

# Table of Content

Introduction 2  
Enterprise Valuation 2  
The Weighted Average Cost of Capital Approach 2  
The Adjusted Present Value Approach 4  
The Capital Cash Flow Approach 4  
Numerical Example 5  
Conclusions 7  
References 8

# Figures and Tables

Figure 1: WACC as a Function of the Debt Ratio 3

Table 1: Assumptions (in €) 5  
Table 2: WACC Valuation (in €) 5  
Table 3: APV Valuation (in €) 6  
Table 4: CCF Valuation (in €) 7

# Introduction

In this note we compare and contrast three enterprise valuation models: the weighted average cost of capital (WACC), the adjusted present value (APV) and the capital cash flow (CCF). The three approaches value the entire firm but they differ around the way they treat tax shields. We will first review the rational and the underlying assumptions behind each approach. We will then use a numerical example to illustrate the mechanics behind the three approaches and show under which assumptions they yield the same results.

# Enterprise Valuation

According to Modigliani and Miller, the value of a company's economic assets must equal the value of the claims against those assets. Enterprise valuation models value the sum of the cash flows to all claim holders, including equity holders and debt holders and discount them to the appropriate cost of capital. The cash flow available to all claim holders is called the free cash flow (FCF) from operations and is defined below:

FCF = EBIAT + Depreciation - Capital Expenditure – Increases in Working Capital

EBIAT is the income the company earns after tax without regard to how the company is financed. Non-cash expenses such as Depreciation are then added. Because we are valuing a going concern we also take into account the cash flow management will retain for new capital expenditures and possible increase in working capital. The remaining is in effect the cash available to owners and creditors.

By definition free cash flow is independent from leverage (and is often referred as un-levered free cash flow). Therefore the value derived from the interest tax shield (interest on debt is tax deductible) has still to be incorporated in the enterprise valuation. This is where the three approaches WACC, APV and CCF differ:

- The WACC approach values the tax shield by adjusting the cost of capital  
- The APV approach values the tax shield separately from the un-levered free cash flow  
- The CCF approach values the tax shield by incorporating it in the cash flow

# The Weighted Average Cost of Capital Approach

To determine the value of the enterprise, the free cash flows from operations have to be discounted to present value. According to Modigliani and Miller's proposition number one without taxes or financial market imperfections the cost of capital does not depend on financing so the weighted average of the expected returns to debt and equity investors equals the opportunity cost of capital regardless of leverage:

$\mathrm{Rd}\times \mathrm{D} / \mathrm{V} + \mathrm{Re}\times \mathrm{E} / \mathrm{V} = \mathrm{Ra} =$  Constant independent of D/V

$\mathrm{Ra} =$  Opportunity cost of capital  $=$  Un-levered cost of equity  $=$  Return on assets  $=$  pre-tax WACC  $\mathrm{Rd} =$  Cost of debt,  $\mathrm{Re} =$  Cost of equity,  $\mathrm{D / V}$  and  $\mathrm{E / V} =$  Target levels of debt and equity using market values

None of the components of the cost of capital are directly observable and therefore need to be approximated using various models and assumptions. The cost of equity is derived from the capital asset pricing model (CAPM) while the cost of debt can be estimated from the firm credit rating and default risk or from yields on publicly traded debt.

However interest on debt is tax deductible so if we were to discount free cash flows from operations using Ra we would not take into account the value of the tax shield. Therefore the after-tax weighted average cost of capital (WACC) is used instead. WACC includes an adjustment to the cost of debt by the marginal tax rate (Tm):

$$
\mathrm {W A C C} = \mathrm {R d x (1 - T m) x D / V} + \mathrm {R e x E / V} (= \mathrm {R a} - \mathrm {R d x T m x D / V})
$$

WACC is less than the opportunity cost of capital Ra because the cost of debt is calculated after tax as Rd (1-Tm). Thus the tax advantages of debt financing are reflected in a lower discount rate. The WACC equals the opportunity cost of capital when there is no debt and declines with financial leverage because of increasing interest tax shields. The WACC increases again when the debt level becomes significant relative to the value of the firm reflecting the main costs associated with borrowing, the costs of bankruptcy.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/c044f8c8-3897-445c-ae9a-036c5497649c/9bf7f821232a5938f73313beba8c217185544b0886fe7764a387176d5c6a8cff.jpg)  
Figure 1: WACC as a Function of the Debt Ratio

Discounting all future cash flows using a constant WACC assumes that the company manages its capital structure to a fixed debt to value ratio (D/V). Therefore the company's WACC is the right discount rate only if the company's debt ratio (D/V) is expected to remain reasonably close to constant. However if the company is expected to significantly change its capital structure (i.e.

constant level of debt, LBO, recapitalization), the WACC would have to be continuously adjusted which makes the approach more difficult to apply.

# The Adjusted Present Value Approach

The APV approach values the cash flows associated with capital structure independently by separating the value of operations into two components: the value of the firm without debt and the benefits and the costs of borrowing:

Value of the firm = Value of the un-levered firm + Present value of interest tax shields - Costs of financial distress

The value of the un-levered firm is obtained by discounting free cash flows at the return on assets (Ra). If the company manages its debt-to-value to a target level  $(\mathrm{D} / \mathrm{V} = \text{constant})$  then the interest tax shield is as risky as the firm and should be discounted at Ra. In this case the APV approach yields the same results as the WACC approach but is computationally less efficient.

However if the debt is assumed to be a fixed amount (D=constant) the interest tax shield is less risky than the firm but as risky as the debt itself and should be discounted at the cost of debt. In this case the APV approach is not only the only correct approach, it is also computationally very efficient if the tax saving are considered as perpetuity since:

Present value of interest tax shields  $= \left( {\mathrm{{Tm}} \times  \mathrm{{Rd}} \times  \mathrm{D}}\right) /\mathrm{{Rd}} = \mathrm{{Tm}} \times  \mathrm{D}$

The main risk in using the APV approach is to ignore the costs of financial distress, especially at very high debt ratios, which leads to an overvaluation of the firm.

# The Capital Cash Flow Approach

Capital cash flows are simply derived from free cash flows by adding interest tax shields:

$$
\mathrm {C C F} = \mathrm {F C F} + \text {I n t e r s t t a x s h i e l d} = \mathrm {F C F} + \mathrm {T m} \times \mathrm {R d} \times \mathrm {D}
$$

With this approach capital cash flows are then discounted at the return on assets. This implicitly assumes that interest tax shields are as risky as the firm and are discounted at the return on assets. This is true when debt is a fixed proportion of value. Under this assumption the capital cash flow approach will generate the same results as the WACC approach. Furthermore if the debt is forecasted in levels instead of a debt-to-value ratio the CCF approach is easier to use because the tax shield are simple to calculate and to include in the CCF.

If the forecasted debt levels imply a change in the debt-to-value ratio, the CCF retains his simplicity since the discount rate, the return on assets, is independent of the capital structure and can be used for every forecast period. Therefore the approach is easier to apply in transactions involving change in capital structure such as a LBO or a restructuring. However in this case discounting the interest tax shields at Ra is a simplifying assumption since the risk of those cash flows is not anymore the same as the risk associate with the firm.

# Numerical Example

Table 1 shows the financial assumptions underlying our numerical example. The firm is valued over a period of 5 years during which EBIT is growing at  $5\%$  per annum and depreciation, capital expenditure and increase in working capital are constant. However the firm's capital structure changes significantly through the repayment of a major portion of its debt.

Table 1: Assumptions (in €)  

<table><tr><td></td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td></tr><tr><td>Risk Free Rate</td><td>5%</td><td>5%</td><td>5%</td><td>5%</td><td>5%</td></tr><tr><td>Market Risk Premium</td><td>7%</td><td>7%</td><td>7%</td><td>7%</td><td>7%</td></tr><tr><td>Tax Rate</td><td>40%</td><td>40%</td><td>40%</td><td>40%</td><td>40%</td></tr><tr><td>Asset Beta</td><td>1.2</td><td>1.2</td><td>1.2</td><td>1.2</td><td>1.2</td></tr><tr><td>Debt Beta</td><td>0.4</td><td>0.35</td><td>0.3</td><td>0.25</td><td>0.2</td></tr><tr><td>EBIT</td><td>100,000</td><td>105,000</td><td>110,250</td><td>115,763</td><td>121,551</td></tr><tr><td>Depreciation</td><td>50,000</td><td>50,000</td><td>50,000</td><td>50,000</td><td>50,000</td></tr><tr><td>Capex</td><td>60,000</td><td>60,000</td><td>60,000</td><td>60,000</td><td>60,000</td></tr><tr><td>Increase in NWC</td><td>10,000</td><td>10,000</td><td>10,000</td><td>10,000</td><td>10,000</td></tr><tr><td>Debt</td><td>100,000</td><td>50,000</td><td>25,000</td><td>12,500</td><td>6,250</td></tr></table>

We will start valuing the firm using the WACC approach (see table 2). This is the less appropriated and most complex methodology given the forecasted changes in capital structure. Indeed the WACC needs to be recalculated every year and an iterative calculation has to be used since the value of the firm for each year is required to derive the percentage of debt and equity. The firm value in year N is the value of the remaining cash flows. For instance the value of the firm at the beginning of Year 3 is the value of the remaining cash flow in Year 3, 4 and 5 discounted using the WACC in year 3, 4 and 5.

Table 2: WACC Valuation (in €)  

<table><tr><td></td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td></tr><tr><td>EBIT</td><td>100,000</td><td>105,000</td><td>110,250</td><td>115,763</td><td>121,551</td></tr><tr><td>- Taxes on EBIT</td><td>(40,000)</td><td>(42,000)</td><td>(44,100)</td><td>(46,305)</td><td>(48,620)</td></tr><tr><td>= EBIAT</td><td>60,000</td><td>63,000</td><td>66,150</td><td>69,458</td><td>72,930</td></tr><tr><td>+ Depreciation</td><td>50,000</td><td>50,000</td><td>50,000</td><td>50,000</td><td>50,000</td></tr><tr><td>- Capex</td><td>(60,000)</td><td>(60,000)</td><td>(60,000)</td><td>(60,000)</td><td>(60,000)</td></tr><tr><td>- Increase in NWC</td><td>(10,000)</td><td>(10,000)</td><td>(10,000)</td><td>(10,000)</td><td>(10,000)</td></tr><tr><td>= FCF</td><td>40,000</td><td>43,000</td><td>46,150</td><td>49,458</td><td>52,930</td></tr><tr><td>Percent Debt</td><td>61.3%</td><td>35.2%</td><td>21.5%</td><td>14.7%</td><td>13.3%</td></tr><tr><td>Cost of Debt</td><td>7.8%</td><td>7.5%</td><td>7.1%</td><td>6.8%</td><td>6.4%</td></tr><tr><td>After Tax Cost of Debt</td><td>4.7%</td><td>4.5%</td><td>4.3%</td><td>4.1%</td><td>3.8%</td></tr><tr><td>Percent Equity</td><td>38.7%</td><td>64.8%</td><td>78.5%</td><td>85.3%</td><td>86.7%</td></tr><tr><td>Return on Assets</td><td>13.4%</td><td>13.4%</td><td>13.4%</td><td>13.4%</td><td>13.4%</td></tr><tr><td>Cost of Equity</td><td>22.3%</td><td>16.6%</td><td>15.1%</td><td>14.5%</td><td>14.5%</td></tr><tr><td>WACC</td><td>11.5%</td><td>12.4%</td><td>12.8%</td><td>13.0%</td><td>13.1%</td></tr><tr><td>Discount Factor</td><td>0.90</td><td>0.80</td><td>0.71</td><td>0.63</td><td>0.55</td></tr><tr><td>PV</td><td>35,878</td><td>34,329</td><td>32,666</td><td>30,979</td><td>29,325</td></tr><tr><td>Firm Value</td><td>163,178</td><td>141,923</td><td>116,451</td><td>85,196</td><td>46,817</td></tr></table>

The cost of debt is calculated using CAPM:

The cost of equity is calculated using the M&M proposition I:

$\mathrm{Rd} = \mathrm{Rf} + \beta \mathrm{d}\times \mathrm{MRP}$

$\mathrm{Re} = (\mathrm{Ra} - \mathrm{D} / \mathrm{V}\mathrm{Rd}) / (\mathrm{E} / \mathrm{V})$

Using the WACC approach we find a value for the firm of €163,178. Next we use the APV approach to value the firm calculating separately the value of the un-levered firm and the value of the interest tax shield (Tm x Rd x D). The approach is straightforward in this case since we are given a forecast of the level of debt. We find that the APV approach yields the same firm value (€163,178) as the WACC approach when discounting interest tax shield at Ra. We also illustrate that using Rd would yield a higher valuation of the firm (this is not the correct discount rate in this case given that the debt is not constant).

Table 3: APV Valuation (in €)  

<table><tr><td></td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td></tr><tr><td>FCF</td><td>40,000</td><td>43,000</td><td>46,150</td><td>49,458</td><td>52,930</td></tr><tr><td>Return on Assets</td><td>13.4%</td><td>13.4%</td><td>13.4%</td><td>13.4%</td><td>13.4%</td></tr><tr><td>Discount Factor</td><td>0.88</td><td>0.78</td><td>0.69</td><td>0.60</td><td>0.53</td></tr><tr><td>PV</td><td>35,273</td><td>33,438</td><td>31,647</td><td>29,907</td><td>28,225</td></tr><tr><td>Value of Unlevered Firm</td><td>158,491</td><td></td><td></td><td></td><td></td></tr><tr><td>Interest Tax Shield</td><td>3,120</td><td>1,490</td><td>710</td><td>338</td><td>160</td></tr><tr><td>Return on Assets Ra</td><td>13.4%</td><td>13.4%</td><td>13.4%</td><td>13.4%</td><td>13.4%</td></tr><tr><td>Discount Factor</td><td>0.88</td><td>0.78</td><td>0.69</td><td>0.60</td><td>0.53</td></tr><tr><td>PV</td><td>2,751</td><td>1,159</td><td>487</td><td>204</td><td>85</td></tr><tr><td>Value of Interest Tax Shield @ Ra</td><td>4,686</td><td></td><td></td><td></td><td></td></tr><tr><td>Interest Tax Shield</td><td>3,120</td><td>1,490</td><td>710</td><td>338</td><td>160</td></tr><tr><td>Cost of Debt Rd</td><td>7.8%</td><td>7.5%</td><td>7.1%</td><td>6.8%</td><td>6.4%</td></tr><tr><td>Discount Factor</td><td>0.93</td><td>0.86</td><td>0.81</td><td>0.76</td><td>0.71</td></tr><tr><td>PV</td><td>2,894</td><td>1,286</td><td>572</td><td>255</td><td>114</td></tr><tr><td>Value of Interest Tax Shield @ Rd</td><td>5,121</td><td></td><td></td><td></td><td></td></tr><tr><td>Value of Firm with ITS @ Ra</td><td>163,178</td><td></td><td></td><td></td><td></td></tr><tr><td>Value of Firm with ITS @ Rd</td><td>163,613</td><td></td><td></td><td></td><td></td></tr></table>

Finally we use the CCF approach. The calculation clearly shows how the interest tax shields are incorporated in the cash flows and then discounted at Ra. The CCF approach is equivalent to the WACC approach. Furthermore the approach also produces the same value as the APV method with interest tax shields discounted at Ra.

Table 4: CCF Valuation (in €)  

<table><tr><td></td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td></tr><tr><td>EBIT</td><td>100,000</td><td>105,000</td><td>110,250</td><td>115,763</td><td>121,551</td></tr><tr><td>- Taxes on EBIT</td><td>(40,000)</td><td>(42,000)</td><td>(44,100)</td><td>(46,305)</td><td>(48,620)</td></tr><tr><td>= EBIAT</td><td>60,000</td><td>63,000</td><td>66,150</td><td>69,458</td><td>72,930</td></tr><tr><td>+ Depreciation</td><td>50,000</td><td>50,000</td><td>50,000</td><td>50,000</td><td>50,000</td></tr><tr><td>- Capex</td><td>(60,000)</td><td>(60,000)</td><td>(60,000)</td><td>(60,000)</td><td>(60,000)</td></tr><tr><td>- Increase in NWC</td><td>(10,000)</td><td>(10,000)</td><td>(10,000)</td><td>(10,000)</td><td>(10,000)</td></tr><tr><td>+ Interest tax Shield</td><td>3,120</td><td>1,490</td><td>710</td><td>338</td><td>160</td></tr><tr><td>= CCF</td><td>43,120</td><td>44,490</td><td>46,860</td><td>49,795</td><td>53,090</td></tr><tr><td>Return on Assets</td><td>13.4%</td><td>13.4%</td><td>13.4%</td><td>13.4%</td><td>13.4%</td></tr><tr><td>Discount Factor</td><td>0.88</td><td>0.78</td><td>0.69</td><td>0.60</td><td>0.53</td></tr><tr><td>PV</td><td>38,025</td><td>34,597</td><td>32,134</td><td>30,112</td><td>28,311</td></tr><tr><td>Firm Value</td><td>163,178</td><td></td><td></td><td></td><td></td></tr></table>

# Conclusions

The three enterprise valuation techniques considered in this paper are different in the way they treat interest tax shields. However we have seen that the WACC approach and the CCF approach are identical and that under certain assumptions the APV approach also yields the same valuation. The WACC approach is easy to use and efficient when the assumption that capital structure will not change in the future can be made (D/V= constant). If debt level is forecasted to remain constant in absolute term (D=constant), the APV approach should be used discounting the interest tax shield at the cost of debt. Finally the CCF approach is the appropriate and most efficient approach when forecasted debt levels imply a change in capital structure. In this case it is also equivalent to the APV approach discounting the interest tax shield at the return on assets.

# References

Brealey and Myers, "Principles of corporate finance",  $7^{\text{th}}$  Edition  
Damodaran, "Investment Valuation", 2sd Edition  
Koller, Goedhart and Wessels, "Valuation",  $4^{\text{th}}$  Edition  
Ruback, "Capital Cash Flows: a simple approach to valuing risky cash flows"
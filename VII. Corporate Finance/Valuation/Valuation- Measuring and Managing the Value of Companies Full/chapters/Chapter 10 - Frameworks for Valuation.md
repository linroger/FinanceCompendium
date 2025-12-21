---
title: "Chapter 10 - Frameworks for Valuation"
parent_directory: "VII. Corporate Finance/Valuation/Valuation- Measuring and Managing the Value of Companies Full/chapters"
formatted: 2025-12-20 11:45:00 AM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - valuation frameworks
  - discounted cash flow
  - enterprise valuation
secondary_tags:
  - economic profit model
  - adjusted present value
  - wacc
  - capital structure
cssclasses: academia
---

## Chapter 10 - Frameworks for Valuation

In Part One, we built a conceptual framework to show what drives the creation of value for investors. A company's value stems from its ability to earn a healthy return on invested capital (ROIC) and its ability to grow. Healthy rates of return and growth produce future cash flows, the ultimate source of value.

Part Two offers a step-by-step guide for analyzing and valuing a company in practice, including technical details for properly measuring and interpreting the drivers of value. Among the many ways to value a company (see Exhibit 10.1 for an overview), we focus particularly on two: enterprise discounted cash flow (DCF) and discounted economic profit. When applied correctly, both valuation methods yield the same results; however, each model has certain benefits in practice. Enterprise DCF remains a favorite of practitioners and academics because it relies on the flow of cash in and out of the company, rather than on accounting-based earnings. For its part, the discounted economic-profit valuation model can be quite insightful because of its close link to economic theory and competitive strategy. Economic profit highlights whether a company is earning its cost of capital and quantifies the amount of value created each year. Given that the two methods yield identical results and have different but complementary benefits, we recommend creating both enterprise DCF and economic-profit models when valuing a company.

Both the enterprise DCF and economic-profit models rely on the weighted average cost of capital (WACC). WACC-based models work best when a company maintains a relatively stable debt-to-value ratio. If a company's debt-to-value ratio is expected to change, WACC-based models can still yield accurate results but are more difficult to implement correctly. In such cases, we recommend an alternative to WACC-based models: adjusted present value (APV). APV discounts the same free cash flows as the enterprise DCF model but uses the unlevered cost of equity as the discount rate (without the tax benefit of debt).

EXHIBIT 10.1 Frameworks for DCF-Based Valuation

<table><tr><td>Model</td><td>Measure</td><td>Discount factor</td><td>Assessment</td></tr><tr><td>Enterprise discounted cash flow</td><td>Free cash flow</td><td>Weighted average cost of capital</td><td>Works best for projects, business units, and companies that manage their capital structure to a target level.</td></tr><tr><td>Discounted economic profit</td><td>Economic profit</td><td>Weighted average cost of capital</td><td>Explicitly highlights when a company creates value.</td></tr><tr><td>Adjusted present value</td><td>Free cash flow</td><td>Unlevered cost of equity</td><td>Incorporates changing capital structure more easily than WACC-based models.</td></tr><tr><td>Capital cash flow</td><td>Capital cash flow</td><td>Unlevered cost of equity</td><td>Combines free cash flow and the interest tax shield in one number, making it difficult to compare operating performance among companies and over time.</td></tr><tr><td>Equity cash flow</td><td>Cash flow to equity</td><td>Levered cost of equity</td><td>Difficult to implement correctly because capital structure is embedded within the cash flow. Best used when valuing financial institutions.</td></tr></table>

It then values the tax benefits associated with debt and adds them to the all-equity value to determine the total enterprise value. When applied properly, the APV model results in the same value as the enterprise DCF value.

This chapter also includes a brief discussion of capital cash flow and equity cash flow valuation models. Properly implemented, these models will yield the same results as enterprise DCF. However, given that they mix operating performance and capital structure in cash flow, we believe implementation errors occur more easily. For this reason, we avoid capital cash flow and equity cash flow valuation models, except when valuing banks and other financial institutions, where capital structure is an inextricable part of operations (for how to value banks, see Chapter 38).

## ENTERPRISE DISCOUNTED CASH FLOW MODEL

The enterprise DCF model discounts free cash flow (FCF), meaning the cash flow available to all investors—equity holders, debt holders, and any other investors—at the weighted average cost of capital, meaning the blended cost of capital for all investor capital. The company's debt and other nonequity claims on cash flow are subtracted from enterprise value to determine equity value. Equity valuation models, in contrast, value directly the equity holders' cash flows. Exhibit 10.2 demonstrates the relationship between enterprise value and equity value. For this example, it is possible to calculate equity holders'

EXHIBIT 10.2 Enterprise Valuation of a Single-Business Company

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/587b608f344121f0d0972b2e349d1158d3cbfebaa16250eb0d0317a46900b413.jpg)

$ million

1 Debt value equals discounted after-tax cash flow to debt holders plus the present value of interest tax shield.

value either directly at 227.5 million or by estimating enterprise value (427.5 million) and subtracting the value of debt (200.0 million).

The enterprise DCF method is especially useful when applied to a multibusiness company. As Exhibit 10.3 shows, the enterprise value equals the summed value of the individual operating units less the present value of the corporate-center costs, plus the value of nonoperating assets. You can use the enterprise DCF model to value individual projects, business units, and even the entire company with a consistent methodology.

EXHIBIT 10.3 Valuation of a Multibusiness Company

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/824b227b17527c2fef9aaabefc482c3f5de3641d6e1da3cdef09ce9c0f181729.jpg)

Value of operating units

1 Including excess cash and marketable securities.

3 Many investment professionals define enterprise value as interest-bearing debt plus the market value of equity minus cash, whereas we define enterprise value as the value of operations plus nonoperating assets. The investment banker's definition of enterprise value resembles our definition of the value of operations, but only for companies that do not own nonoperating assets (e.g., nonconsolidated subsidiaries) or owe debt equivalents (e.g., unfunded pension liabilities). For companies with significant nonoperating assets or debt equivalents, the banking version of enterprise value can lead to distortions in analysis.

Valuing a company's equity using enterprise DCF is a four-step process:

1. Value the company's operations by discounting free cash flow at the weighted average cost of capital.
2. Identify and value nonoperating assets, such as excess cash and marketable securities, nonconsolidated subsidiaries, and other nonoperating assets not incorporated into free cash flow. Summing the value of operations and nonoperating assets gives enterprise value.
3. Identify and value all debt and other nonequity claims against the enterprise value. Debt and other nonequity claims include fixed-rate and floating-rate debt, debt equivalents such as unfunded pension liabilities and restructuring provisions, employee options, and preferred stock, which are discussed in Chapter 16.
4. Subtract the value of debt and other nonequity claims from enterprise value to determine the value of common equity. To estimate value per share, divide equity value by the number of current shares outstanding.

Exhibit 10.4 presents the results of an enterprise DCF valuation for GlobalCo, an imaginary international logistics company. GlobalCo is used throughout the chapter to compare valuation methods. GlobalCo is a simplified example that ignores the complexities of modern companies. In Appendix H, we present a complete valuation of the global retailer Costco Wholesale.

EXHIBIT 10.4 GlobalCo: Enterprise DCF Valuation

<table><tr><td colspan="4">$ million, except where noted</td></tr><tr><td>Forecast year</td><td>Free cash flow (FCF)</td><td>Discount factor at 7.8\%</td><td>Present value of FCF</td></tr><tr><td>Year 1</td><td>(2.0)</td><td>0.928</td><td>(1.9)</td></tr><tr><td>Year 2</td><td>22.5</td><td>0.861</td><td>19.4</td></tr><tr><td>Year 3</td><td>54.6</td><td>0.798</td><td>43.6</td></tr><tr><td>Continuing value</td><td>1,176.2</td><td>0.798</td><td>938.9</td></tr><tr><td>Value of operations</td><td></td><td></td><td>1,000.0</td></tr><tr><td>Value of nonoperating assets</td><td></td><td></td><td>-</td></tr><tr><td>Enterprise value</td><td></td><td></td><td>1,000.0</td></tr><tr><td>Less: Value of debt</td><td></td><td></td><td>(250.0)</td></tr><tr><td>Less: Debt equivalents and noncontrolling interests</td><td></td><td></td><td>-</td></tr><tr><td>Equity value</td><td></td><td></td><td>750.0</td></tr><tr><td>Shares outstanding, million</td><td></td><td></td><td>12.5</td></tr><tr><td>Equity value per share, $</td><td></td><td></td><td>60.00</td></tr></table>

4 Many investment professionals do not include excess cash when estimating enterprise value and instead net excess cash directly against debt.

We use Costco throughout Part Two to demonstrate in greater detail various parts of the valuation process.

To value GlobalCo, we forecast three years of cash flow. Cash flows generated beyond year 3 are valued using the key value driver formula and reported as continuing value. Next, discount each year's projected free cash flow and the continuing value by the company's weighted average cost of capital. Sum the present values of the annual cash flows and discounted continuing value to determine the present value of operations.

For simplicity, the first year's projected cash flow is discounted by one full year, the second by two full years, and so on. For the purpose of clear exposition, we assume cash flows occur in lump sums. In actuality, cash flows occur throughout the year, not as a lump sum. Therefore, adjust the discount rate as necessary to better match the timing of cash flows. The resulting present value is known as the value of operations, which equals 1 billion for GlobalCo.

To the value of operations, add nonoperating assets, such as excess cash and noncontrolling interests in other companies. Since GlobalCo has no non-operating assets, the value of operations equals enterprise value. To determine equity value, subtract the value of debt and other nonequity claims. GlobalCo has  \$110 million in short-term debt and\$ 140 million in long-term debt, for a total debt of \$250 million. The company has no unfunded pension obligations or noncontrolling interests held by other companies, but if it did, their value would be subtracted as well. Divide the resulting equity value of \$750 million by the number of shares outstanding (12.5 million) to estimate a per-share intrinsic value of 60.

Over the course of the next few sections, we dig deeper into the inputs and the valuation process. Although this chapter presents the enterprise DCF valuation sequentially, valuation is an iterative process.

### Valuing Operations

### Identifying and Valuing Nonoperating Assets

### Identifying and Valuing Debt and Other Nonequity Claims

### Valuing Equity

## ECONOMIC PROFIT-BASED VALUATION MODELS

## ADJUSTED-PRESENT-VALUE MODEL

### Valuing Free Cash Flow at Unlevered Cost of Equity

### Valuing Tax Shields and Other Capital Structure Effects

## CAPITAL CASH FLOW MODEL

## CASH-FLOW-TO-EQUITY VALUATION MODEL

## PROBLEMATIC MODIFICATIONS TO DISCOUNTED CASH FLOW

## ALTERNATIVES TO DISCOUNTED CASH FLOW

### Multiples

### Real Options and Replicating Portfolios

## SUMMARY

Our exploration of the most common DCF valuation models has put a particular focus on the enterprise DCF model and the economic-profit model. Each model has its own rationale, and each has an important place in corporate valuation. The remaining chapters in Part Two describe a step-by-step approach to valuing a company. These chapters explain the technical details of valuation, including how to reorganize the financial statements, analyze return on invested capital and revenue growth, forecast free cash flow, compute the cost of capital, and estimate an appropriate terminal value.

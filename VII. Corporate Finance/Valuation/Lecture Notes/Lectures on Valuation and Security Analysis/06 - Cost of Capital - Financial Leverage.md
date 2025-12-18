---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Lecture Note 6 Computing Cost of Capital: Financial Leverage and Cost of Capital"
linter-yaml-title-alias: "Lecture Note 6 Computing Cost of Capital: Financial Leverage and Cost of Capital"
---

# Lecture Note 6 Computing Cost of Capital: Financial Leverage and Cost of Capital

# Objective

Introduce students to levering and unlevering betas and cost of equity.

# Outline
- Operating risk vs. financial risk
Modigliani & Miller propositions 1 and 2
- Levering and unlevering betas and cost of capital
- Divisional cost of capital
- Adjusted present value (APV) model (bonus)

# Operating Risk Vs Financial Risk

Operating Risk: It refers to the risks (both idiosyncratic and systematic) underlying a firm's business. Idiosyncratic operating risks would include bad management, product defects, labor problems, and etc. Systematic operating risks refer to the sensitivity of a firm's operating cash flows (NOPAT and FCFF) to general economic conditions. E.g.: weakening of the Euro, oil shocks, etc.

Financial Risk: It refers to the additional variability imposed on the free cash flows to shareholders due to the presence of debt. The presence of financial leverage magnifies the operating risks faced by the shareholders.

Financial leverage makes good-times better and bad-times worse for the shareholders. It increases the risk to shareholders who are the residual claimants.

Only systematic risk should matter for cost of capital.

# Trade-off between operating risk and financial leverage

Firms with high operating risk are likely to follow a conservative (low debt) financial leverage policy.

Debt capacity of a firm (the amount of debt it can undertake without significantly increasing its cost of debt) is inversely related to its operating risks.

# Capital Structure and Cost of Capital

Modigliani & Miller (1958), American Economic Review derived two results under the following perfect market assumptions:

(1) Individuals and firms can borrow and lend at the same market rate of interest and no transaction costs.

(2) No agency costs, no bankruptcy costs, and no personal taxes.

(3) No barriers to the free flow of information in the security markets.

# Unlevered Firm

All-equity firm, a firm with no debt.

Following M&M, assume no growth and infinite life. This means the expected free cash flow to the firm (FCFF) are constant and equal to NOPAT.

# Income statement for the unlevered firm

<table><tr><td>Revenues</td><td>Rev</td></tr><tr><td>Less: operating costs</td><td>-OC</td></tr><tr><td>Gross income</td><td>GI</td></tr><tr><td>Less: depreciation</td><td>-Dep</td></tr><tr><td>Earnings before int. &amp; taxes</td><td>EBIT</td></tr><tr><td>Less: Taxes</td><td>-Tax</td></tr><tr><td>Net Operating Profits After Taxes</td><td>NOPAT [=EBIT(1-Tc)]</td></tr></table>

The free cash flows to the shareholders of the unlevered firm:

$$
F C F F = N O P A T + D e p - C a p E x - \Delta W C \tag {2}
$$

FCFF=FCFE since there is no debt. Note that for the no growth case,  $\mathrm{Dep} = \mathrm{CapEx}$  and  $\Delta \mathrm{WC} = 0$ .

Thus,  $\mathrm{FCFF} = \mathrm{EBIT}(1 - \mathrm{T_c}) = \mathrm{NOPAT}$ .

Value of the unlevered firm

$$
V _ {u} = \frac {E (F C F F)}{\rho} \tag {3}
$$ where  $\rho$  is the unlevered cost of equity (cost of capital for the unlevered firm).


# Levered Firm

Consider an identical firm with both debt (perpetual) and equity. D is the market value of debt and E is the market value of equity for the levered firm.

# Income statement for the levered firm

Revenues Rev

Less: operating costs -OC

Gross income GI

Less: depreciation -Dep

Earnings before int. & taxes EBIT

Less: Interest -rdD

Earnings before taxes EBT

Less: Taxes -Tax

Net Income NI

$r_d$  is the cost of debt of a long-term bond with no intermediate principal repayments. Assume market value of debt = face value of debt. Free cash flows to equity (FCFE) of the levered firm:

$$

F C F E = N I + D e p - C a p E x - \Delta W C \tag {4}

$$ is equal to NI since  $\mathrm{CapEx} = \mathrm{Dep}$  and  $\Delta \mathrm{WC} = 0$ .

Free cash flows to debt:  $r_d$  D (no principal repayments)

We now show that the sum of cash flows to shareholders and bondholders equals FCFF plus the interest tax shield:

$$
= \mathrm {N I} + \operatorname {D e p} - \operatorname {C a p E x} - \Delta \mathrm {W C} + \mathrm {r} _ {\mathrm {d}} \mathrm {D}
$$

Since  $\mathrm{NI} = (\mathrm{EBIT} - r_{\mathrm{d}}\mathrm{D})(1 - T_{\mathrm{c}}) = \mathrm{NOPAT} - r_{\mathrm{d}}\mathrm{D}(1 - T_{\mathrm{c}})$

$$
\begin{array}{l} = \mathrm {N O P A T} + \mathrm {D e p} - \mathrm {C a p E x} - \Delta \mathrm {W C} - \mathrm {r} _ {\mathrm {d}} \mathrm {D} \left(1 - \mathrm {T} _ {\mathrm {c}}\right) + \mathrm {r} _ {\mathrm {d}} \mathrm {D} \\ = \mathrm {F C F F} - \mathrm {r} _ {\mathrm {d}} \mathrm {D} \left(1 - \mathrm {T} _ {\mathrm {c}}\right) + \mathrm {r} _ {\mathrm {d}} \mathrm {D} = \mathrm {F C F F} - \mathrm {r} _ {\mathrm {d}} \mathrm {D} + \mathrm {r} _ {\mathrm {d}} \mathrm {D T} _ {\mathrm {c}} + \mathrm {r} _ {\mathrm {d}} \mathrm {D} \\ = \mathrm {F C F F} + \mathrm {r} _ {\mathrm {d}} \mathrm {D T} _ {\mathrm {c}} \tag {5} \\ \end{array}
$$

The first term on the RHS of equation (5) is exactly the same as that for the unlevered firm; we can discount the first term at the unlevered cost of equity  $\rho$ .

The second term is the interest tax shield assumed to have the same risk as the levered firm's debt; we can discount it at  $r >= \mathbf{r_d}$ .

Value of the levered firm,  $V_{L}$

$$
\begin{array}{l} V _ {L} = \frac {E (F C F F)}{\rho} + T _ {c} \times D (6) \\ \Rightarrow V _ {L} = V _ {u} + T _ {c} \times D (7) \\ \end{array}
$$

$\mathrm{T_cD}$  represents the PV of tax shields from debt. Equation (7) forms the basis of the adjusted present value model.

# Modigliani & Miller Proposition 1:

In a world without corporate taxes  $(\mathrm{T_c} = 0)$ , the value of a firm is independent of its capital structure, financial leverage, or debt. In other words:

$$
V _ {L} = V _ {u} \tag {8}
$$

Arbitrage?  $\mathrm{V_L} > \mathrm{V_U}$  ?  $\mathrm{V_L} < \mathrm{V_U}$  ?

Modigliani & Miller Proposition 2 (with corporate taxes):

M&M derived a relation between cost of equity of a levered firm and leverage in a world with corporate taxes:

$$ r _ {e} = \rho + (1 - T _ {c}) (\rho - r _ {d}) \frac {D}{E} \tag {9}
$$

$r_e$  -- Levered cost of equity, compensation for both operating and financial systematic risk.

p -- Unlevered cost of equity, compensation for operating systematic risk.

(1- $\mathrm{T_c}$ ) $(\rho - \mathrm{r_d})\mathrm{D} / \mathrm{E}$  -- Leverage risk premium.

D/E -- Market value debt-to-equity ratio for the levered firm.

$$
V _ {L} = \frac {E (F C F F)}{\rho} + T _ {c} \times D \tag {10}
$$ which is the adjusted present value (APV) valuation model under the perpetuity case.


Define weighted average cost of capital (WACC) such that the value from the following model is equal to the value from the APV model in equation 10:

$$

V _ {L} = \frac {E (F C F F)}{W A C C} \tag {11}

$$ where  $\mathrm{FCFF} = \mathrm{NOPAT}$ . Equation (11) represents a more traditional DCF valuation model (in the perpetuity case).

In the APV valuation model in (10), the tax advantage of debt is explicitly shown as an addition to the unlevered value.

In the WACC valuation model in (11), the tax advantage of debt is implicit in the discount rate (WACC).

# Weighted Average Cost of Capital (M&M derivation)

From equation (11):

$$
\begin{array}{l} W A C C = \frac {E (F C F F)}{V _ {L}} = \rho \times \frac {V _ {u}}{V _ {L}} \\ = \rho \times \left[ \frac {V _ {L} - T _ {c} \times D}{V _ {L}} \right] \\ \end{array}
$$

$$
\Rightarrow \quad W A C C = \rho \times \left[ 1 - T _ {c} \times \frac {D}{V _ {L}} \right] \tag {12a}
$$

$\mathrm{D} / \mathrm{V}_{\mathrm{L}}$  is the market value leverage ratio of the levered firm.

In step 1, we used the fact that  $\mathrm{E(FCFF)} = \rho \times \mathrm{V_u}$  from (3). In step 2, we used the fact that  $\mathrm{V_u} = \mathrm{V_L} - \mathrm{T_c}\times \mathrm{D}$  from (7).

# Proposition 1 (restated)

In a world without corporate taxes  $(\mathrm{T_c} = 0)$ , the WACC of a firm is independent of its capital structure or debt.

$$
\mathrm {W A C C} = \rho
$$

Henceforth, we will remove the subscript  $\mathrm{L}$  from  $\mathrm{V}_{\mathrm{L}}$  and denote  $\mathrm{V}_{\mathrm{L}}$  as  $\mathrm{V}$ .

Substitute for  $\rho$  from equation (9) into equation (12a), the M & M expression for WACC, and simplify. This gives the traditional WACC formula:

$$
W A C C = r _ {e} \frac {E}{V} + \left(1 - T _ {c}\right) r _ {d} \frac {D}{V} \tag {12b}
$$ where D, E, and V represent market values of debt, levered equity, and the firm respectively.


Thus, there is no inconsistency between the traditional definition of WACC and the M & M definition for firms with a target debt level or capital structure.

To summarize:
- Use WACC valuation models when the firm has a permanent level of debt on its balance sheet or has a target debt level.
- WACC formula also assumes that any change in debt level does not have an appreciable effect on the cost of debt.
- Look at the EXCEL file "Example involving FCFF, FCFE and FCFD.xls" on the course website to understand the source of interest tax shields.

# SOURCES AND USES OF CASH FLOWS (Summarizing Valuation Models)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/589a7289-be2c-43df-a71a-97ca24b50ab2/19e0fee75a08255159ace9f008f487a30a09a380bad3a4b80274984ce66c83a4.jpg)

# With direct and indirect costs of financial distress

Recall the value of the firm according to the APV model:

$$

V _ {L} = V _ {u} + T _ {c} \times D

$$

What is the optimal capital structure or debt level according to this model?

With the introduction of bankruptcy costs:

$$

V _ {L} = V _ {u} + T _ {c} \times D - P V (B C)

$$ where  $\mathrm{PV}(\mathrm{BC})$  refers to present value of bankruptcy costs.

Trade-off between increased value from higher debt, due to increased interest tax shields, and the value lost due to greater likelihood of bankruptcy. This trade-off provides a debt level at which value is maximized and WACC is minimized.

# How do we measure D/E and D/V?
- Ratios based on market value of equity and market value of debt. Book value of debt may be appropriate as long as interest rates or default risk has not changed significantly since the debt was originally issued.
- Include all permanent interest bearing debt.

# Levering and Unlevering Cost of Capital

Define:

$\beta_{\mathrm{u}} =$  Beta of an unlevered firm. It is variously called as asset beta, firm beta, or unlevered equity beta. It measures a firm's business risk.

$\beta_{\mathrm{e}} =$  Levered equity beta or simply equity beta. It measures a firm's business risk + leverage risk.

$\beta_{\mathrm{d}} = \mathrm{Debt~beta~(assumed~zero~for~high - grade~debt).}$

Using CAPM:

$$
\rho = r _ {f} + \beta_ {u} E \left(r _ {m} - r _ {f}\right) \tag {13}
$$

$$ r _ {e} = r _ {f} + \beta_ {e} E \left(r _ {m} - r _ {f}\right) \tag {14}
$$

$$ r _ {d} = r _ {f} + \beta_ {d} E \left(r _ {m} - r _ {f}\right) \tag {15}
$$ where:


$\rho =$  the cost of equity for the unlevered firm.

$r_{e} =$  the cost of equity for the levered firm.

$r_d =$  the cost of debt.

Substitute the CAPM definitions for  $\rho, \mathbf{r}_{\mathrm{e}}$ , and  $\mathbf{r}_{\mathrm{d}}$  from equations (13), (14) and (15) into:

$$ r _ {e} = \rho + (1 - T _ {c}) (\rho - r _ {d}) \frac {D}{E} \tag {16}
$$

This gives:

$$
\beta_ {e} = \beta_ {u} + (1 - T _ {c}) (\beta_ {u} - \beta_ {d}) \frac {D}{E} \tag {17}
$$

Equation (17) can be used to find the equity beta given the asset beta and the target debt-equity ratio. Rearranging:

$$
\beta_ {u} = \frac {\left(1 - T _ {c}\right) D / E}{1 + \left(1 - T _ {c}\right) D / E} \beta_ {d} + \frac {1}{1 + \left(1 - T _ {c}\right) D / E} \beta_ {e} \tag {18}
$$

Equation (18) can be used to unlever the equity beta. This is useful in:

- In evaluating how a change in capital structure will affect a firm's cost of capital.
- Computing cost of capital for individual divisions or projects (more on this later).

We can directly get the unlevered cost of equity by inverting equation (16) and solving for  $\rho$ :

$$
\rho = \frac {r _ {e} + r _ {d} (1 - T _ {c}) D / E}{1 + (1 - T _ {c}) D / E} \tag {19}
$$

We can also solve for  $\rho$  from the M&M WACC formula in equation (12a):

$$
\rho = \frac {W A C C}{1 - T _ {c} (D / V)} \tag {20}
$$

Note that both equations will give the same value for  $\rho$  given the same information.

These are not new expressions but algebraic transformations of the original expressions.

If (only if)  $\beta_{\mathrm{d}} = 0$  (for high quality debt such as AAA), then:

$$
\beta_ {u} = \frac {\beta_ {e}}{1 + (1 - T _ {c}) D / E} \tag {21}
$$

Example: The United Southern Construction Company (USC) currently has long-term debt with a book value of \$40MM, current liabilities (does not contain any short-term debt) with a book value of \$5MM, and equity with a book value of \$100MM. The company's treasurer believes that the firm can maintain a long run target capital structure of 35\% debt to value, without losing the firm's ability to borrow at 7\%. The current risk-free rate is 5\%. The firm has a marginal tax rate of 39\%. The expected risk premium on the market next year is estimated to be 5\%, and the equity beta of the company is estimated to be 1.2. The company's stock currently trades at \$20 per share. It has 10 million shares outstanding. The company's long-term debt is in the form of bonds, which are currently trading at 1,002 per bond. The company has 50,000 bonds currently outstanding. Assume that the market value of current liabilities is the same as their book value.

NaN. What is the company's current cost of equity? Its weighted average cost of capital?

NaN. What will be the new weighted average cost of capital if the company changes its capital structure to its target capital structure?

NaN. Gordon Phillips is the treasurer of United Construction & Lumber Associated (UCLA), which is a competitor of USC. He estimates that his firm faces the same risks as USC. By chance, he happens to find out the WACC used by USC. Since the risks faced by the two firms are the same, he concludes that he can use USC's WACC to compute the NPV of a project (with the same risk as that of the entire firm) that he is currently evaluating. Is his analysis right? Why or Why not?

NaN. a) Use only interest-bearing debt.

b) Use market values of debt and equity. If market values are not available for debt, it is reasonable to use book values since for most debt except high yield debt market values are quite close to book values.

Market Value of Debt, D = $1,002×50,000/$1,000,000 = 50.1MM.

Market Value of Equity,  $\mathrm{E} = \$ 20 \times 10\mathrm{MM} = \$ 200\mathrm{MM}$

Market Value of Firm,  $V = D + E = \ 50.1 + \$  200 = \$ 250.1MM

$\mathrm{D} / \mathrm{V} = 0.20, \mathrm{E} / \mathrm{V} = 0.80, \mathrm{D} / \mathrm{E} = 0.25$

$$
\mathrm{r_e} = \mathrm{r_f} + \beta_{\mathrm{e}}\left[\mathrm{E}(\mathrm{r_m} - \mathrm{r_f})\right] = 5\% +1.2\times 5\% = 11\%, \mathrm{r_d} = 7\%
$$

Dr. Bhaskaran Swaminathan

© 2022 Bhaskaran Swaminathan

$$
\mathrm{WACC} = \mathrm{r_e(E / V)} + \mathrm{r_d(1 - T_c)D / V} = 11\times 0.80 + 7\times (1 - 0.39)\times 0.20 = 9.65\%
$$

NaN. There are several ways to solve this. The easiest approach is to use the Modigliani-Miller WACC formula.

# Approach 1 (using the M&M formula for WACC)

$$
\mathrm {W A C C} = \rho \left(1 - \mathrm {T} _ {\mathrm {c}} \times \mathrm {D} / \mathrm {V}\right)
$$

The unlevered cost of equity:

$$
\begin{array}{l} \Rightarrow \rho = \mathrm {W A C C} / \left(1 - \mathrm {T} _ {\mathrm {c}} \times \mathrm {D} / \mathrm {V}\right) \\ \Rightarrow \rho = 9.65 / (1 - 0.39 \times 0.20) = 10.47 \% \\ \end{array}
$$

The new D/V ratio  $= 0.35$ . The new WACC:

$$
\mathrm{WACC} = 10.47 \times (1 - 0.39 \times 0.35) = 9.04 \%
$$

Approach 2 (using the M&M formula for levered cost of equity)

Compute the unlevered cost of equity from:

$$
\begin{array}{l} r _ {e} = \rho + (p - r _ {d}) \left(1 - T _ {c}\right) D / E \\ \Rightarrow \rho = \left[ r _ {e} + r _ {d} \left(1 - T _ {c}\right) D / E \right] / \left[ 1 + \left(1 - T _ {c}\right) D / E \right] \\ \end{array}
$$

$$
\rho = (11 + 7 \times 0.61 \times 0.25) / (1 + 0.61 \times 0.25) = 10.47 \%
$$

Compute levered cost of equity at the new D/E ratio:

$$
\begin{array}{l} \mathrm {D} / \mathrm {E} = (\mathrm {D} / \mathrm {V}) / (\mathrm {E} / \mathrm {V}) = 0. 3 5 / 0. 6 5 = 0. 5 4 \\ \mathrm{r_e} = 10.47 + (10.47 - 7) \times 0.61 \times 0.54 = 11.61\%. \\ \mathrm{WACC} = 11.61 \times 0.65 + 7 \times 0.61 \times 0.35 = 9.04 \% \\ \end{array}
$$

Approach 3 (using levered and unlevered betas)

We will solve this by levering and unlevering betas. The debt is risky. The cost of debt of  $7\%$  is consistent with a debt beta of 0.4 (backout from CAPM). The unlevered beta:

$$
\begin{array}{l} \beta_ {\mathrm {u}} = \beta_ {\mathrm {d}} (1 - \mathrm {T} _ {\mathrm {c}}) (\mathrm {D} / \mathrm {E}) / [ 1 + (1 - \mathrm {T} _ {\mathrm {c}}) \mathrm {D} / \mathrm {E} ] + \beta_ {\mathrm {e}} / [ 1 + (1 - \mathrm {T} _ {\mathrm {c}}) \mathrm {D} / \mathrm {E} ] \\ \beta_ {u} = 0. 4 \times 0. 6 1 \times 0. 2 5 / [ 1 + 0. 6 1 \times 0. 2 5 ] + 1. 2 / [ 1 + 0. 6 1 \times 0. 2 5 ] = 1. 0 9 \\ \end{array}
$$

The new levered equity beta at the new D/E ratio of 0.54:

$$
\beta_ {\mathrm {e}} = 1. 0 9 + (1. 0 9 - 0. 4 0) \times 0. 6 1 \times 0. 5 4 = 1. 3 2
$$

From CAPM,  $r_e = 5\% + 1.32 \times 5\% = 11.6\%$ . Use the new  $r_e$  to compute the new WACC as in approach 2.

NaN. The correct answer is that the treasurer of UCLA should not use the WACC directly since the appropriate capital structure for UCLA may not be the same as that for USC, especially if USC's capital structure is far from the optimal capital structure. UCLA should compute the unlevered cost of equity from USC's WACC and then relever it at the appropriate leverage ratio.

# Divisional (Project) Cost of Capital

Consider an all-equity firm that has two divisions: food processing and computer peripherals. Both F and C contribute equally to the value of the firm. Assume that the risk-free rate is  $5\%$  and the market risk premium is  $5.5\%$ . The following information is available:

Unlevered Cost of capital Equity Beta using CAPM

<table><tr><td>Computer</td><td>1.5</td><td>5+1.5(5.5)=13.3\%</td></tr><tr><td>Food</td><td>0.5</td><td>5+0.5(5.5)=7.8\%</td></tr><tr><td>Firm</td><td>1.0</td><td>5+1.0(5.5)=10.5\%</td></tr></table>
- A project in the computer division has an IRR of  $12\%$ .
- A project in the food division has an IRR of  $9\%$ .

Suppose that the firm uses the firm's overall WACC to evaluate these projects. What decisions will the company reach? Evaluate?

Suppose you want to spin-off the Food division and so you want to determine its value. If you use the Firm's cost of capital to value the division will you gain or lose?

# Input Needed to Compute Divisional WACC
- The target capital structure, D/V, for the division.
- The cost of equity,  $r_e$ , the cost of debt,  $r_d$ , and the effective tax rate,  $T_c$ , for the division.

# The Pure-Play Approach

Divisions and publicly traded firms operating in the same line of business (industry) offering similar products and services face similar systematic operating risks.

NaN. Identify one or more pure-play publicly traded firms that are in the same industry as the division with similar operating risks and product lines.

NaN. Estimate each pure-play firm's levered equity beta. This is just the beta you can get from Yahoo Finance.

NaN. Unlever each levered equity beta using the pure-play firm's market value D/E ratio (see equations (19), (20), and (21)).

NaN. Take the average of unlevered equity betas if there is more than one pure-play firm. The average represents the systematic operating risk of the division.

NaN. Debt ratio to re-lever the unlevered equity beta?

- Use the average debt ratio of pure-play firms.
- Subjectively adjust the pure-play firm debt ratios if you believe they are too high or too low.
- Use the debt ratio of the parent firm.

NaN. You can also directly compute the unlevered cost of equity,  $\rho$ , from equation (20) and relever it to obtain  $r_e$  based on the division's target D/E ratio.

NaN. Cost of debt.

- Use the average cost of debt of the pure-play firms.
- Use the cost of debt of the parent only if you believe that the division's debt is as risky as the parent's debt.

NaN. We can use the effective tax rate of the parent as the effective tax rate of the division.

NaN. Once the cost of equity, cost of debt, debt ratios, and effective tax rates are determined, we can compute the WACC for the division.

# Drawback of the pure-play approach

How easy is it to find a pure-play firm that matched your division?

# Adjusted Present Value Model (general version)

This method is useful when (a) capital structures vary significantly over time and (b) leverage is high and, therefore, it is difficult to estimate levered cost of equity (LBO restructuring situations).

Discount after-tax operating cash flows at the unlevered cost of equity  $\rho$  and discount interest tax shields and the rest at appropriate discount rates.

$$
V _ {0} = \sum_ {t = 1} ^ {T} \frac {F C F F _ {t}}{(1 + \rho) ^ {t}} + \frac {T V _ {T}}{(1 + \rho) ^ {T}} + \sum_ {t = 1} ^ {T} \frac {\text {I N T} _ {t} \times T _ {c}}{(1 + r _ {d}) ^ {t}} + \frac {T _ {c} D _ {T}}{(1 + r _ {d}) ^ {T}} \tag {22}
$$

$\mathrm{FCFF}_{t} = \text{Free cash flows from operations in year 't'}$ .

$\mathrm{INT}_{\mathrm{t}}$  = Interest payments.

$\mathrm{TV}_{\mathrm{T}}$  = Estimated terminal value in period T.

$\mathrm{T_c}$  = Effective corporate income-tax rate.

$\rho$  = Unlevered cost of equity.

$\mathbf{r_d}$  Cost of debt.

$D_{T}$  = Present value of interest payments beyond year T. Typically assumed equal to value of debt outstanding in year T.

Also, there is no direct provision for bankruptcy costs, although it may be indirectly considered through declines in sales or increases in operating costs.

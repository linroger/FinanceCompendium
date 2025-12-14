---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Lecture Note 4 Discounted Cash Flow Valuation: EVA and Discounted EVA Models"
linter-yaml-title-alias: "Lecture Note 4 Discounted Cash Flow Valuation: EVA and Discounted EVA Models"
---

# Lecture Note 4 Discounted Cash Flow Valuation: EVA and Discounted EVA Models

# Objective

Introduce students to the concept of economic profits, valuation models based on economic profits and their relation to the free cash flow model.

# Outline
- Economic Profits vs. Accounting Profits
- Return on Invested Capital (ROIC)
- Economic profit definition and practical aspects of computation
ROIC Tree
- An example involving Smucker
- Valuation model based on economic profits to compute total enterprise value
- Terminal value computation
- Valuing equity based on economic profits/residual income

# Economic Profits Vs Accounting Profits

Economic profits refer to excess profits over and above the minimum profits a firm is expected to earn for its investors.

Thus, in computing economic profits, the minimum profits expected by the investors in return for the use of their capital (the opportunity cost of giving their capital to the firm for its use) is considered an expense.

Similar to a firm paying rent for leasing a warehouse from someone, we have economic rent for the use of capital.

Economic profits are also referred to as Economic Value Added (EVA) (the term popularized by Stern Stewart).

# Return on Invested Capital (ROIC)

While the return on new investment (ROI) is theoretically very appealing, it is not easily available. Typically, the ROI is likely to be available only to analysts inside the firm and even then not too precisely.

There is an alternate measure that computes the return on all existing operating assets of a firm referred to as the return on invested capital (ROIC). The return on invested capital is defined as:

$$
R O I C = \frac {N O P A T _ {t}}{I C _ {t - 1}} \tag {1}
$$

Where  $\mathrm{NOPAT}_{\mathrm{t}}$  is the net operating profits after taxes and  $\mathrm{IC}_{\mathrm{t - 1}}$  is the (beginning of year) invested capital defined as the sum of operating working capital and net fixed and long-term operating assets.

- ROIC is relatively easy to compute for individual firms and even divisions of individual firms.
- ROIC is also a better measure of the operating performance of a firm than either ROA (return on assets) or ROE (return on equity).

# EVA definition

EVA is a flow measure computed each year and is defined as follows:

$$
E V A _ {t + 1} = \left(N O P A T _ {t + 1} - W A C C \times I C _ {t}\right) \tag {2}
$$

$$
E V A _ {t + 1} = \left(R O I C _ {t + 1} - W A C C\right) \times I C _ {t} \tag {3}
$$

$\mathrm{IC}_{t}$  is the beginning of the period invested capital,  $\mathrm{NOPAT}_{t+1}$  is the net operating profits after taxes for period  $t+1$ , and  $\mathrm{ROIC}_{t+1}$  is the return on invested capital for period  $t+1$ .

Equation (3) facilitates setting an EVA target in terms of returns. For instance, the return target could be  $2\%$  in excess of cost of capital.

EVA can improve, if:

- The return on existing capital base improves or the cost of capital declines.
- More capital is invested in new projects that earn a return higher than cost of capital.
- Capital invested in projects earning return lower than cost of capital (negative NPV projects) is liquidated or reassigned to more profitable projects.

# How to measure invested capital?
- Book values: Book values represent historical values and, therefore, can be distorted by inflation. Profits are in this year's dollars while book values are in past dollars. In high inflation environments, this could distort ROIC measures.
- Market Value of Used Assets: This is appropriate only when the market value of used assets is substantially higher than their historical book value (e.g.: real estate, airplanes). In most cases, the market value of used assets is lower. Therefore, using book values is not likely to introduce significant distortions.
- Replacement cost: Using replacement cost of assets ignores the fact that it may not be economically justifiable to replace the assets. An existing firm in the industry that built a plant several years ago at a lower (real) cost does have a competitive advantage over new entrants, who have to achieve the same productive capacity at a higher cost. This advantage should be reflected in its return on investment.

In sum, using book values may be appropriate in most situations.

# Invested capital with and without goodwill

Compute invested capital (and the return on invested capital, ROIC) both with and without goodwill in EVA calculations.

Including goodwill in invested capital allows you to determine how well the company is using investor funds.

Excluding goodwill allows you to measure the performance of the operating assets of the company.

In situations in which a company overpaid for an acquisition, the ROIC including goodwill can often be substantially lower than ROIC excluding goodwill.

Invested Capital (without good will) = Net Fixed Assets + Net long-term operating assets + Net Working Capital

Invested Capital (with good will) = Net Fixed Assets + Net long-term operating assets + Net Working Capital + Good Will & Intangible Assets

Note: Net long-term operating assets are net of long-term operating liabilities.

# ROIC Tree

The return on invested capital can be broken down into two components providing further intuition into the value drivers of the business:

$$
R O I C _ {t} = \frac {N O P A T _ {t}}{I C _ {t - 1}} = \underbrace {\frac {N O P A T _ {t}}{\text {S a l e s} _ {t}}} _ {\text {O p e r a t i n g p r o f i t m a r g i n}} \times \underbrace {\frac {\text {S a l e s} _ {t}}{I C _ {t - 1}}} _ {\text {C a p i t a l t u r n o v e r}} \tag {4}
$$

This is just the Du Point decomposition from your accounting classes. The ratios given here can be further disaggregated into more detailed financial ratios (see pages 166-168 in KGW text book).

- Operating margin measures how effectively the company converts revenues to profits.
- Capital turnover measures how effectively the company employs its invested capital.

These ratios could be used to understand a firm's operating strategy.

Example: Wholesalers typically have slim margins but high turnover. Car companies, on the other hand, have high margins and low turnover.

An Example Involving Smucker (see worksheet 5)

<table><tr><td colspan="5">Economic Value Added and Value Drivers</td><td>WACC</td><td>7.2\%</td><td></td></tr><tr><td colspan="5">(based on the income statement and the statement of cash flows)</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="3">Millions - Detail U.S. Dollars</td><td></td><td>2014</td><td>2013</td><td>2012</td><td>2011</td></tr><tr><td colspan="4">Net Fixed Assets &amp; Other Long-Term Assets</td><td>1,870.20</td><td>1,410.50</td><td>1,294.30</td><td>1,230.10</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="3">Goodwill &amp; Intangibles</td><td></td><td>12,960.10</td><td>6,122.50</td><td>6,142.30</td><td>6,241.60</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="3">All Long-term Operating Assets</td><td></td><td>14,830.30</td><td>7,533.00</td><td>7,436.60</td><td>7,471.70</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="3">Other long-term operating liabilities</td><td></td><td>354.90</td><td>247.90</td><td>331.20</td><td>321.70</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="4">Operating Current Assets (rec &amp; inv)</td><td>1,593.70</td><td>1,240.40</td><td>1,259.20</td><td>1,309.10</td></tr><tr><td colspan="4">Operating Current Liabilities (payables and other)</td><td>796.60</td><td>542.60</td><td>546.80</td><td>566.90</td></tr><tr><td colspan="3">Net Working Capital</td><td></td><td>797.10</td><td>697.80</td><td>712.40</td><td>742.20</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="4">Invested Capital (with goodwill and intangibles)</td><td>15,272.50</td><td>7,982.90</td><td>7,817.80</td><td>7,892.20</td></tr><tr><td colspan="4">Invested Capital (without goodwill and intangibles)</td><td>2,312.40</td><td>1,860.40</td><td>1,675.50</td><td>1,650.60</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="3">NOPAT</td><td></td><td>589.22</td><td>626.58</td><td>631.21</td><td>579.30</td></tr><tr><td colspan="3">FCFF</td><td></td><td>(595.78)</td><td>554.78</td><td>755.21</td><td>(130.48)</td></tr><tr><td colspan="3">Reinvestment Rate, b</td><td></td><td>201.1\%</td><td>11.5\%</td><td>-19.6\%</td><td>122.5\%</td></tr><tr><td colspan="3">Growth in NOPAT, g</td><td></td><td>-6.0\%</td><td>-0.7\%</td><td>9.0\%</td><td>4.9\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="4">ROIC (with goodwill and intangibles)</td><td>7.4\%</td><td>8.0\%</td><td>8.0\%</td><td>8.0\%</td></tr><tr><td colspan="4">ROIC (without goodwill and intangibles)</td><td>31.7\%</td><td>37.4\%</td><td>38.2\%</td><td>39.7\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="4">EVA (with goodwill and intangibles)</td><td>15.6</td><td>64.8</td><td>64.1</td><td>61.1</td></tr><tr><td colspan="3">ROIC - WACC</td><td></td><td>0.2\%</td><td>0.8\%</td><td>0.8\%</td><td>0.8\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="4">EVA (without goodwill and intangibles)</td><td>455.5</td><td>506.2</td><td>512.6</td><td>474.5</td></tr><tr><td colspan="3">ROIC - WACC</td><td></td><td>24.5\%</td><td>30.2\%</td><td>31.1\%</td><td>32.5\%</td></tr></table>

Let us examine the source of the decline in ROIC:

<table><tr><td colspan="4">ROIC Tree (components of ROIC)</td><td></td><td>2014</td><td>2013</td><td>2012</td><td>2011</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="4">After-tax operating profit margin, NOPAT(t)/Sales(t)</td><td>10.4\%</td><td>11.2\%</td><td>10.7\%</td><td>10.5\%</td><td></td></tr><tr><td colspan="4">Inv.Cap. Turnover, Sales(t)/IC(t-1) (with good will)</td><td>0.71</td><td>0.72</td><td>0.75</td><td>0.77</td><td></td></tr><tr><td colspan="4">Working Capital Turnover, Sales(t)/WC(t-1)</td><td>8.16</td><td>7.88</td><td>7.95</td><td>7.62</td><td></td></tr><tr><td colspan="4">Receivables Turnover, Sales(t)/Receivables(t-1)</td><td>18.40</td><td>17.89</td><td>16.97</td><td>16.04</td><td></td></tr><tr><td colspan="4">Inventory Turnover, Sales(t)/Inventory(t-1)</td><td>6.11</td><td>5.93</td><td>6.13</td><td>6.40</td><td></td></tr><tr><td colspan="4">Net Fixed Assets Turnover, Sales(t)/Net Fixed Assets(t-1)</td><td>4.04</td><td>4.33</td><td>4.79</td><td>5.91</td><td></td></tr><tr><td colspan="4">All Long-term Assets Turnover, Sales(t)/LT Assets (t-1)</td><td>0.76</td><td>0.75</td><td>0.79</td><td>0.83</td><td></td></tr></table>

Decline in net fixed asset turnover ratios has led to a decline in ROIC.

Sustainable growth rate calculations

<table><tr><td colspan="5">Average ROIC (with good will &amp; intangibles) over the last 10 years</td><td></td><td>9.1\%</td></tr><tr><td colspan="5">Average ROIC (without good will &amp; intangibles) over the last 10 years</td><td></td><td>37.4\%</td></tr><tr><td colspan="4">Average Reinvestment Rate over the last 10 years</td><td></td><td></td><td>70.4\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="5">Sustainable growth (with good will &amp; intangibles) based on 10 year mean</td><td></td><td>6.4\%</td></tr><tr><td colspan="5">Sustainable growth (w/o good will &amp; intangibles) based on 10 year mean</td><td></td><td>26.3\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="5">Compounded (geometric) average growth in NOPAT over the last 10 years</td><td></td><td>11.3\%</td></tr></table>

# Discounted EVA Valuation Model

The following equation shows how economic profits are related to current total enterprise value of the firm:

$$
V _ {0} = \underbrace {I C _ {0}} _ {\text {I n v e s t e d C a p i t a l}} + \underbrace {\sum_ {t = 1} ^ {\infty} \frac {E \left(N O P A T _ {t} - W A C C \times I C _ {t - 1}\right)}{\left(1 + W A C C\right) ^ {t}}} _ {P V o f a l l f u t u r e E V A} \tag {5}
$$

Equation (5) breaks-up value into invested capital plus the present value of forecasted future economic profits (EVA).

Recall from our earlier discussion:

$$
F C F F _ {t} = N O P A T _ {t} - I _ {t} \tag {6}
$$ where  $I_{t}$  is the net new investment made by the firm each period out of its NOPAT. Thus, the invested capital base of the firm increases each period by the net new investments made by the firm:


$$

I C _ {t} = I C _ {t - 1} + I _ {t} \tag {7}

$$ where  $\mathrm{I}_{\mathrm{t}}$  is the net new investment.

# Characteristics of the EVA Valuation Model
- The FCFF valuation model and the EVA valuation model are mathematically equivalent; they are just two ways of expressing the same value.
- A change in  $IC_0$  independent of any economic change in a firm's investment policy or cash flows will have no effect on firm value.

# NPV and EVA

Recall the definition of NPV of a project,  $NPV = V_0 - I_0$ . where  $V_0$  is the present value of free cash flows of the project and  $I_0$  is the initial (new) investment. Then:

$$
V _ {0} = \underbrace {I _ {0}} _ {\text {I n v e s t e d C a p i t a l}} + \underbrace {N P V} _ {\text {V a l u e A d d e d}} \tag {8}
$$

Thus the present value of all future EVA from equation (5) is to a firm what NPV is to a project. They both represent value added to the shareholders.

# EVA valuation model is equivalent to the FCFF model

Perpetuity Case: Let us prove this for the case in which future economic profits are a constant perpetuity.

This implies  $(\mathrm{NOPAT}_1 - \mathrm{WACC} \times \mathrm{IC}_0) = (\mathrm{NOPAT}_2 - \mathrm{WACC} \times \mathrm{IC}_1) = (\mathrm{NOPAT}_3 - \mathrm{WACC} \times \mathrm{IC}_2)$  and so on.

$$
V _ {0} = I C _ {0} + \sum_ {t = 1} ^ {\infty} \frac {E \left(N O P A T _ {1} - W A C C \times I C _ {0}\right)}{\left(1 + W A C C\right) ^ {t}} \tag {9}
$$

The second term on the RHS of (9) is the present value of a perpetuity. Therefore:

$$
\begin{array}{l} V _ {0} = I C _ {0} + \frac {N O P A T _ {1} - W A C C \times I C _ {0}}{W A C C} \\ = I C _ {0} + \frac {N O P A T _ {1}}{W A C C} - \frac {W A C C \times I C _ {0}}{W A C C} \\ = I C _ {0} + \frac {N O P A T _ {1}}{W A C C} - I C _ {0} \\ = \frac {N O P A T _ {1}}{W A C C} \\ \end{array}
$$

This is just the present value of perpetuity for the FCFF model.

(A more general proof is available on request)

# Practical Implementation of the EVA Valuation Model

The EVA valuation model:

$$
\begin{array}{l} V _ {0} = I C _ {0} + \sum_ {t = 1} ^ {T} \frac {E \left[ N O P A T _ {t} - W A C C \times I C _ {t - 1} \right]}{\left(1 + W A C C\right) ^ {t}} \tag {10} \\ + \frac {T E V _ {T}}{\left(1 + W A C C\right) ^ {T}} \\ \end{array}
$$ where TEV is the PV of economic profits beyond year T.


$$

\begin{array}{l} T E V _ {T} = \frac {N O P A T _ {T + 1} - W A C C \times I C _ {T}}{W A C C} \\ + \frac {N O P A T _ {T + 1} (g / R O I) (R O I - W A C C)}{W A C C (W A C C - g)} \tag {11} \\ \end{array}

$$ where ROI is the return on new investment in the steady state and ‘g’ is the steady state growth.

- The first term on the right hand side is the PV of constant EVA in perpetuity from assets in place as of year T.
- The second term is the PV of incremental economic profits from new investments after T. The second term is also referred to as the present value of growth opportunities (PVGO).

# Perpetual no-growth terminal economic value

In the steady state, if  $\mathrm{ROI} = \mathrm{WACC}$  then the second term on the right hand side of equation (11) equals zero and the terminal economic value is equal to:

$$

T E V _ {T} = \frac {N O P A T _ {T + 1} - W A C C \times I C _ {T}}{W A C C} \tag {12}

$$

# Terminal value of the FCFF model and the terminal value of the EVA model

The terminal value for the free cash flow model is the sum of the terminal economic value of the economic profit model plus the invested capital at T.

$$

\mathrm {T V} _ {\mathrm {T}} = \mathrm {T E V} _ {\mathrm {T}} + \mathrm {I C} _ {\mathrm {T}} \tag {13}

$$

This relationship should hold for any period ‘t’ in the future.

See worksheet 9 in Smucker-July 2015 version 7.0.xls

All these formulas are embedded in the worksheets.

# EVA Model for Direct Valuation of Equity

We can value equity directly using earnings per share (EPS) forecasts.

<table><tr><td>Value Firm</td><td>Value Equity</td></tr><tr><td>NOPAT</td><td>EPS (earnings per share)</td></tr><tr><td>FCFF</td><td>FCFE</td></tr><tr><td>Return on Invested Capital, ROIC</td><td>Return on Equity, ROE</td></tr><tr><td>Reinvestment Rate, b</td><td>Plowback Rate, k</td></tr><tr><td>Growth in NOPAT, g</td><td>Growth in EPS, g</td></tr><tr><td>Invested Capital
ICt = ICt-1 + b*NOPAt</td><td>Book Value per Share
Bt = Bt-1 + k*EPSst</td></tr><tr><td>EVA</td><td>Residual Income (RI)</td></tr><tr><td>WACC</td><td>Cost of Equity, re</td></tr><tr><td>Return on new investments, ROI</td><td>Return on new equity investments,
ROE*</td></tr></table>

# Residual Income Model/EVA Model to Value Equity

$$

V _ {E} = \underbrace {B _ {0}} _ {\text {B o o k E q u i t y}} + \underbrace {\sum_ {t = 1} ^ {\infty} \frac {E \left(F E _ {t} - r _ {e} \times B _ {t - 1}\right)}{\left(1 + r _ {e}\right) ^ {t}}} _ {\text {P V o f a l l f u t u r e r e s i d u a l i n c o m e}} \tag {14}

$$

FE stands for Forecast Earnings Per Share. The EVA model to value equity is often referred to as the EBO model in accounting.

The free cash flow model and the residual income/EBO model are identical models.

# Continuing values for the residual income model

$$

T E V _ {T} = \frac {F E _ {T + 1} - r _ {e} \times B _ {T}}{r _ {e}} + \frac {F E _ {T + 1} (g / R O E ^ {*}) (R O E ^ {*} - r _ {e})}{r _ {e} (r _ {e} - g)} \tag {15}

$$

When incremental investments do not create economic value:

$$

T E V _ {T} = \frac {F E _ {T + 1} - r _ {e} \times B _ {T}}{r _ {e}} \tag {16}

$$

The terminal value for the FCFE model is related to the terminal value for the residual income/EBO model as follows:

$$

\mathrm {T V} _ {\mathrm {T}} = \mathrm {T E V} _ {\mathrm {T}} + \mathrm {B} _ {\mathrm {T}}

$$

See worksheet 10 in the EXCEL workbook Smucker-July 2015 version 7.0.xls.

All these formulas are embedded in the worksheets.


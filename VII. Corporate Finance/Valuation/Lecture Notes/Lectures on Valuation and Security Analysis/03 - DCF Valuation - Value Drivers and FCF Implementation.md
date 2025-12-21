---
title: "Lecture Note 3 Discounted Cash Flow Valuation: Value Drivers and Implementing the Free Cash Flow Model"
parent_directory: "Lectures on Valuation and Security Analysis"
formatted: 2025-12-21 02:40:00 AM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: claude-code
primary_tags:
   - discounted cash flow valuation
   - value drivers
   - free cash flow model
   - enterprise valuation
secondary_tags:
   - nopat forecasting
   - reinvestment rate
   - return on investment
   - terminal value calculation
   - three-stage valuation model
cssclasses: academia
---

# Lecture Note 3 Discounted Cash Flow Valuation: Value Drivers and Implementing the Free Cash Flow Model

## Objective

Introduce students to a practically implementable three-stage free cash flow valuation model based on analyst earnings forecasts and plowback rates.

## Outline
- Firm valuation based on value drivers: growth, ROI, and plowback rate
- Terminal value based on value drivers
- Assets in place and PVGO
- Value drivers and equity valuation

## Economic Value Drivers and Free Cash Flows
- The objective of valuation is to relate firm value to underlying economic value drivers.
- We will discuss how to forecast free cash flows in terms of some key value drivers and show how these value drivers affect firm value.
- We will develop a simple three-stage free cash flow valuation model that can be used to compute total enterprise value (V) and the value of equity (E).
- This approach does not require forecasting income statements, balance sheets, and cash flow statements and can give valuations quite close to that based on full-fledged pro-forma financial statements.

Note that the reference to firm value here is to Total Enterprise Value. You have to add the value of non-operating assets (excess cash, etc.) to get total firm value.

## Some simple formulas of firm (total enterprise) value

## No growth case:

The total enterprise value of a firm whose profits are expected to be constant in perpetuity is equal to:

$$
V _ {0} = \frac {\text {N O P A T} _ {1}}{\text {W A C C}} \tag {1}
$$ where  $\mathrm{NOPAT}_1$  is the constant expected profits (equal to the free cash flows) in perpetuity and WACC is the weighted average cost of capital. This is also referred to as the Earnings Power Value (EPV).


## Constant growth case:

When the free cash flows to the firm are expected to grow at a constant rate  $g$  forever ( $g < WACC$ ), then:

$$

V _ {0} = \frac {F C F F _ {1}}{W A C C - g} \tag {2}

$$

This is simply the Gordon growth model.

To understand valuation in contexts other than these simple ones we need to understand the role of value drivers.

## Value Drivers of free cash flows and firm value

There are three key value drivers of free cash flows:
- The rate of growth of a company's revenues, profits, and operating assets (g).
- The return on new investment (ROI), which determines the profitability of the new investments undertaken by the business.
- The firm's reinvestment rate (b), which determines its capital expenditure (new investments) policy.
- There are only two independent value drivers. Given two value drivers, the third one can be determined as a function of the other two.

CapEx refers to capital expenditures (both new and replacement capital expenditures, includes acquisitions)

$\Delta WC$  refers to change in working capital, which is a measure of new working capital investments.

Dep & Amort refers to all depreciation and amortization (more generally also all non-cash items)

To keep things simple, assume that we are in a low inflation environment.

Consider free cash flows to firm:

$$

F C F F = N O P A T + D e p \& A m o r t - C a p E x - \Delta W C \tag {3}

$$

Define:

$$

G r o s s I n v e s t m e n t = C a p E x + \Delta W C \tag {4}

$$

Gross investment refers to new and replacement capital expenditures and investments. Also define:

Net New Investment  $= \text{CapEx} + \Delta \text{WC} - \text{Dep} \& \text{Amort}$  (5)

Net new investment refers to new capital investments made in excess of replacement capital investments.

Economically, replacement investments are needed to maintain existing production capacity and sales while new investments are needed to generate additional growth.

Now we can define free cash flows to the firm as:

$$

F C F F = N O P A T - N e t N e w I n v e s t m e n t \tag {6}

$$

Thus, free cash flows to firm are the cash left over from NOPAT after a firm has spent sufficient funds on new investments. If a firm makes no net new investment, then  $\mathrm{FCFF} = \mathrm{NOPAT}$  into perpetuity (equation (1)).

Define the reinvestment rate (b) as the rate at which a firm reinvests its NOPAT (for NOPAT  $> = 0$ ):

$$ b = \frac {\text {N e t N e w I n v e s t m e n t}}{\text {N O P A T}} \tag {7}
$$

Can 'b' be  $>1$ ? Can 'b' be  $< 0$ ? Explain?

Using equation (7), write FCFF in equation (6) as:

$$
F C F F = (1 - b) \times N O P A T \tag {8}
$$

(1 - b) is the proportion of NOPAT available for payout to all investors of the firm (capacity to payout all investors).

# We can forecast free cash flows by forecasting growth in profits 'g' and the reinvestment rate 'b'.

Example: Consider two firms A and B with the same operating risks and capital structure. Assume that inflation is close to zero (to avoid any inflation induced growth). Both firms are expected to earn net operating profits after taxes (NOPAT) of  \$100 in Year 1. If the two firms do not invest in new assets, both will continue to earn\$ 100 for ever. The WACC for both firms is 8\%.

NaN. Assume that Firm A reinvests  $15\%$  of its NOPAT in new investments and earns  $20\%$  return on them. Firm B, however, earns only  $10\%$  return on new investments. If firm B wants to achieve the same growth in profits as firm A, what percentage of its NOPAT should it reinvest each year? Which firm will have more free cash flows and which firm will be more valuable?

NaN. Suppose now Firm A and Firm B have the same return on new investments equal to  $20\%$ . Firm A reinvests at a rate of  $30\%$  a year. However, Firm B does not face the same investment opportunities as Firm A and can reinvest only  $15\%$  a year. Which firm will have more free cash flows and which firm will be more valuable?

# Example 1: How return on investment drives firm value?

# Firm A

ROI 20\% b 15\%

Sample NOPAT calculation: Year 2 NOPAT = Year 1 NOPAT + Year 1 Net Investment * ROI = 100 + 15 * 0.20 = 103

# Example 2: How growth drives firm value (provided ROI > WACC)

# Company A

ROI 20\% b 30\% WACC 8\%

<table><tr><td>Firm A</td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td><td>Year 6</td><td>Year 7</td><td>Year 8</td><td>Year 9</td><td>Year 10</td><td>Year 11</td><td>Year 12</td></tr><tr><td>NOPAT</td><td>100.0</td><td>106.0</td><td>112.4</td><td>119.1</td><td>126.2</td><td>133.8</td><td>141.9</td><td>150.4</td><td>159.4</td><td>168.9</td><td>179.1</td><td>189.8</td></tr><tr><td>Net Investment</td><td>30.0</td><td>31.8</td><td>33.7</td><td>35.7</td><td>37.9</td><td>40.1</td><td>42.6</td><td>45.1</td><td>47.8</td><td>50.7</td><td>53.7</td><td>56.9</td></tr><tr><td>FCFF</td><td>70.0</td><td>74.2</td><td>78.7</td><td>83.4</td><td>88.4</td><td>93.7</td><td>99.3</td><td>105.3</td><td>111.6</td><td>118.3</td><td>125.4</td><td>132.9</td></tr></table>

Annual growth rate in NOPAT & FCFF

6.0\%

Firm A's Value

$\S 3,500$  (using the Gordon growth model)

# Company B

ROI 20\% b 15\% WACC 8\%

<table><tr><td>Firm B</td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td><td>Year 6</td><td>Year 7</td><td>Year 8</td><td>Year 9</td><td>Year 10</td><td>Year 11</td><td>Year 12</td></tr><tr><td>NOPAT</td><td>100.0</td><td>103.0</td><td>106.1</td><td>109.3</td><td>112.6</td><td>115.9</td><td>119.4</td><td>123.0</td><td>126.7</td><td>130.5</td><td>134.4</td><td>138.4</td></tr><tr><td>Net Investment</td><td>15.0</td><td>15.5</td><td>15.9</td><td>16.4</td><td>16.9</td><td>17.4</td><td>17.9</td><td>18.4</td><td>19.0</td><td>19.6</td><td>20.2</td><td>20.8</td></tr><tr><td>FCFF</td><td>85.0</td><td>87.6</td><td>90.2</td><td>92.9</td><td>95.7</td><td>98.5</td><td>101.5</td><td>104.5</td><td>107.7</td><td>110.9</td><td>114.2</td><td>117.7</td></tr></table>

Annual growth rate in NOPAT & FCFF

3.0\%

Firm B's Value

$\S 1,700$  (using the Gordon growth model)

# Growth in NOPAT

In the above example, growth in NOPAT is given by:

$$ g _ {t} = \frac {N O P A T _ {t} - N O P A T _ {t - 1}}{N O P A T _ {t - 1}}
$$

$$
\begin{array}{l} \Rightarrow \quad g _ {t} = \frac {N O P A T _ {t} - N O P A T _ {t - 1}}{I _ {t - 1}} \times \frac {I _ {t - 1}}{N O P A T _ {t - 1}} \tag {9a} \\ = R O I _ {t} \times b _ {t - 1} \\ \end{array}
$$ where  $\mathrm{NOPAT}_{\mathrm{t}} - \mathrm{NOPAT}_{\mathrm{t - 1}}$  is the profit from new investment,  $\mathrm{ROI}_{\mathrm{t}}$  is the return on net new investment,  $\mathrm{I}_{\mathrm{t - 1}}$  is the new investment made at the beginning of the year, and  $\mathbf{b}_{\mathrm{t - 1}}$  is the reinvestment rate. In the steady state,  $\mathbf{b}_{\mathrm{t - 1}} = \mathbf{b}_{\mathrm{t}} = \mathbf{b}$  and  $\mathrm{ROI}_{\mathrm{t}} = \mathrm{ROI}_{\mathrm{t - 1}} = \mathrm{ROI}$  then:


$$ g = b \times R O I \tag {9b}
$$ where  $g$  is referred to as the sustainable growth rate. Thus, a firm can increase its growth rate by:

- Improving its return on investments (ROI) (both new and existing assets). E.g.: efficiency improvements.
- Investing more capital (b) in projects with high return on investment. E.g.: expanding markets.

## Practical implementation of the FCFF valuation model

The free cash flow model is implemented as follows in practice to compute total enterprise value:

$$

V _ {0} = \sum_ {t = 1} ^ {T} \frac {E \left(F C F F _ {t}\right)}{\left(1 + W A C C\right) ^ {t}} + \frac {T V _ {T}}{\left(1 + W A C C\right) ^ {T}} \tag {10}

$$ where  $\mathrm{TV}_{\mathrm{T}}$  is the continuing value in period T for the FCFF valuation model (see Chapter 10 of KGW).

## Three stage valuation

1. High Growth: High return on investment (ROI), High reinvestment rate (b), High growth (g) in sales and profits.
2. Transition: Competition drives down ROI on existing and new assets. Firm faces declining investment opportunities (fewer positive NPV projects) leading to lower reinvestment rates. Declining reinvestment rates and ROI are accompanied by declining growth.
3. Mature: Firm reaches a steady state with constant growth, ROI, and reinvestment rates. New investments are likely to earn just the cost of capital.

We will use this intuition in our implementation of the valuation model.

## Continuing value based on the Gordon Growth Model

Free cash flows (FCFF) grow at a constant rate  $g$  after  $T + 1$ . The PV of cash flows after  $T$  as of time  $T$ :

$$
T V _ {T} = \frac {F C F F _ {T + 1}}{W A C C - g} \tag {11}
$$

Since  $\mathrm{FCFF}_{\mathrm{T} + 1} = \mathrm{NOPAT}_{\mathrm{T} + 1}(1 - \mathrm{b})$  (see equation 8) where  $\mathbf{b}$  is the steady-state reinvestment rate starting in year  $\mathrm{T} + 1$ :

$$
T V _ {T} = \frac {N O P A T _ {T + 1} (1 - b)}{W A C C - g} \tag {12}
$$

In the steady-state, from the sustainable growth model (eq. 9):

$$
\mathbf {g} = \quad \mathbf {b} \times \mathbf {R O I} \tag {13}
$$ where  $g$  is the steady-state growth in profits and  $ROI$  is the steady-state return on new investments.

- What would be a good choice for steady-state growth?
- What would be a good choice for steady-state ROI?

## Terminal value based on value drivers

From equation (13),  $\mathbf{b} = \mathbf{g} / \mathbf{ROI}$ . Substitute this into equation (12):

$$

T V _ {T} = \frac {N O P A T _ {T + 1} (1 - g / R O I)}{W A C C - g} \tag {14}

$$

Equation (14) is the value-driver based terminal value formula.

## No Growth Perpetuity Continuing Value Formula

Suppose the return on new investments equals cost of capital, i.e.,  $\mathrm{ROI} = \mathrm{WACC}$ . Substitute  $\mathrm{ROI} = \mathrm{WACC}$  in equation (14):

$$

\begin{array}{l} T V _ {T} = \frac {\text {N O P A T} _ {T + 1} (1 - g / W A C C)}{W A C C - g} \tag {15} \\ = \frac {N O P A T _ {T + 1}}{W A C C - g} \times \frac {W A C C - g}{W A C C} = \frac {N O P A T _ {T + 1}}{W A C C} \\ \end{array}

$$

We get the perpetuity formula for the no-growth case.

This doesn't mean that there is no nominal growth in earnings simply that any such growth does not add to value.

We will use the more general formula in equation (14), which gives us the option to set  $ROI \geq WACC$ .

## Three-Stage FCFF Valuation Model

This model is used to compute the total enterprise value (value of operating assets) of the firm. The model contains three stages. They are:

1) High Growth Stage: (2 years) marked by high NOPAT growth, high reinvestment rates, and high return on investment.
2) Transition Stage: (15 years from Year 2 to Year 17) marked by mean-reversion where growth rates, reinvestment rates, and return on investment all decline to a long run steady state.
3) Steady State: (forever from Year 17) marked by steady-state equilibrium where growth, reinvestment rate, and return on investment settle into long run steady state.

## Inputs to the Model

1) Year 0 NOPAT and Year 0 Invested Capital.
2) Growth forecasts (g) and reinvestment rate (b) for the high growth stage.
3) Steady state growth (g) and return on investment (ROI).
4) Weighted average cost of capital (WACC).
5) Year 0 book value (ideally market value) of debt and preferred stock, excess cash, shares outstanding and current stock price.

See Worksheet (9) for the FCFF model to value the firm in the EXCEL workbook Smucker-July 2015 version 7.0.xls.

## 15-Year Valuation Model

We combine all these elements together and provide the following implementation:

$$

V _ {0} = \sum_ {t = 1} ^ {T} \frac {N O P A T _ {t} \times \left(1 - b _ {t}\right)}{\left(1 + W A C C\right) ^ {t}} + \frac {N O P A T _ {T + 1} \times \left(1 - g / R O I\right)}{\left(1 + W A C C\right) ^ {T} \times \left(W A C C - g\right)} \tag {16}

$$

$\mathrm{NOPAT}_{\mathrm{t}} = \mathrm{Net}$  Operating Profits After Taxes for year 't'.

$b_{t}$  = Reinvestment rate for year 't'.

WACC = Weighted Average Cost of Capital.

g = Steady-state growth in NOPAT and cash flows.

ROI = Steady-state ROI  $\geq$  WACC.

T = Number of years of explicit NOPAT forecasts. We will implement the model with  $T = 15$  years.

$$

E \left(F C F F _ {t}\right) = N O P A T _ {t} \times \left(1 - b _ {t}\right) \tag {17}

$$

$$

N O P A T _ {t + 1} = N O P A T _ {t} \times \left(1 + g _ {t + 1}\right) \tag {18}

$$

Growth rate declines exponentially (or linearly in logs) from (g2) in Year 2 to steady-state growth (g) in Year 17. For  $t = 2$  to 15:

$$ g _ {t + 1} = g _ {t} \times \operatorname {E X P} \left[ \log \left(g / g _ {2}\right) / T \right] \tag {19}
$$

$$ b _ {t} = b _ {t - 1} - \frac {b _ {1} - b}{T} \tag {20}
$$

## Reinvestment Rates for the High Growth Stage

Reinvestment rates are computed as follows:

Reinvestment rate  $(\mathbf{b}) = (1 - \mathrm{FCFF} / \mathrm{NOPAT})$ . FCFF/NOPAT is capacity payout all investors (for  $\mathrm{NOPAT} > 0$ ).

## Sequential Valuation of Equity

Given total firm value, equity is valued sequentially as follows:

$\mathrm{E} =$  Value of the Firm - Value of Pref. Stock & Min. Int. - Value of Debt

## Assets-in-place and PVGO

Total Enterprise Value (V) = Value of assets-in-place + Present Value of Growth Opportunities (PVGO)

Value of assets-in-place  $=$  NOPAT $_1$ /WACC. Value of assets-in-place is simply the no-growth value (earnings power value, EPV).

Whether growth is value adding, value neutral or value destroying depends on whether ROI > WACC, ROI = WACC or ROI < WACC.

PVGO = V - Value of assets in place.

## Value Drivers and Direct Valuation of Equity

We can value equity directly using the same analytical approach that we used to compute the total enterprise value by making the following substitutions.

<table><tr><td>Value Firm</td><td>Value Equity</td></tr><tr><td>NOPAT</td><td>EPS (earnings per share)</td></tr><tr><td>FCFF</td><td>FCFE</td></tr><tr><td>Return on Invested Capital, ROIC</td><td>Return on Equity, ROE</td></tr><tr><td>Reinvestment Rate, b</td><td>Plowback Rate, k</td></tr><tr><td>Growth in NOPAT, g</td><td>Growth in EPS, g</td></tr><tr><td>WACC</td><td>Cost of Equity, re</td></tr><tr><td>Return on new Investments, ROI</td><td>Return on new equity investments, ROE*</td></tr></table>

The plowback rate 'k' represents the proportion of net income that is retained in the firm. Thus:

$$
\mathrm {F C F E} = \mathrm {E P S} ^ {*} (1 - k) (\text {s i m i l a r t o e q u a t i o n (8)})
$$

For Net Income  $>0$ , 'k' is computed from historical data as:

$$
\mathrm {k} = 1 - (\mathrm {F C F E / N e t I n c o m e})
$$

(FCFE/Net Income) is the payout capacity since this represents the firm's capacity to pay its shareholders.

We could use actual payout (dividends + net stock repurchase).

## Free Cash Flow to Equity (FCFE) Valuation Model

$$
V _ {E} = \sum_ {t = 1} ^ {T} \frac {F E _ {t} \times \left(1 - k _ {t}\right)}{\left(1 + r _ {e}\right) ^ {t}} + \frac {F E _ {T + 1} \times \left(1 - g / R O E ^ {*}\right)}{\left(1 + r _ {e}\right) ^ {T} \times \left(r _ {e} - g\right)} \tag {21}
$$

FE stands for forecast earnings per share and ROE* is the return on new equity investments. This approach is referred to as the direct valuation of equity.

The three-stage model to value equity directly is provided in worksheet (10) in the EXCEL workbook Smucker-July 2015 version 7.0.xls.

## Data needed for implementing the equity valuation model

$\succ$  Analyst consensus earnings forecasts for the first two years (FY1 and FY2)

$\succ$  Plowback rates for the first stage

> Long-run steady-state growth and ROI
$\succ$  Beta, market risk premium, and risk-free rate
Number of shares outstanding
> Book (market) value of interest-bearing debt, preferred stock
Cash and short-term investments

## Smucker (SJM) EPS forecasts (as of August 19, 2022)

FY2

<table><tr><td>Earnings Est</td><td>Current Qtr.
Jul 15</td><td>Next Qtr.
Oct 15</td><td>Current Year
Apr 16</td><td>Next Year
Apr 17</td></tr><tr><td>Avg. Estimate</td><td>1.23</td><td>1.54</td><td>5.72</td><td>6.31</td></tr><tr><td>No. of Analysts</td><td>15.00</td><td>15.00</td><td>16.00</td><td>17.00</td></tr><tr><td>Low Estimate</td><td>1.02</td><td>1.43</td><td>5.65</td><td>5.92</td></tr><tr><td>High Estimate</td><td>1.33</td><td>1.60</td><td>5.80</td><td>6.60</td></tr><tr><td>Year Ago EPS</td><td>1.34</td><td>1.53</td><td>5.38</td><td>5.72</td></tr></table> http://finance.yahoo.com/q/ae?s=SJM+Analyst+Estimates

## Estimating 12 month and 24 month ahead forecasts

EPS0

As of August 19, 2022, FY1 is only an eight-month forecast. Trailing 12-month earnings consists  $8/12$  of  $\mathrm{EPS}_0$  and  $4/12$  of  $\mathrm{FY}_1$ . Next 12 month earnings consist  $8/12$  of FY1 and  $4/12$  of FY2. Let  $N =$  number of months to the next fiscal year-end (April 2016); Thus,  $N = 8$ .

Trailing 12-month earnings,  $\mathrm{FE}_0$  and 12-month ahead forecast,  $\mathrm{FE}_1$

$$
\mathrm {F E} _ {0} = \mathrm {E P S} _ {0} * (\mathrm {N} / 1 2) + \mathrm {F Y} _ {1} * (1 - \mathrm {N} / 1 2)
$$

$$
\mathrm {F E} _ {0} = 5. 3 8 * (8 / 1 2) + 5. 7 2 * (1 - 8 / 1 2) = \$ 5. 4 9
$$

$$
\mathrm {F E} _ {1} = \mathrm {F Y} _ {1} * (\mathrm {N} / 1 2) + \mathrm {F Y} _ {2} * (1 - \mathrm {N} / 1 2)
$$

$$
\mathrm {F E} _ {1} = 5. 7 2 * (8 / 1 2) + 6. 3 1 * (1 - 8 / 1 2) = \$ 5. 9 2
$$

$$
\mathrm {g} _ {2} = \mathrm {FY} 2 / \mathrm {FY} 1 - 1 = 5.92 / 5.49 - 1 = 7.8 \%
$$

$$
\mathrm {F E} _ {2} = \mathrm {F E} _ {1} * (1 + \mathrm {g} _ {2}) = 5. 9 2 * 1. 0 7 8 = \$ 6. 3 8
$$

## Smucker beta and market cap

The J. M. Smucker Company (SJM) - NYSE ★ Watchlist

111.88 + 2.91(2.67\%) 4:02PM EDT

After Hours : 111.88 0.00 (0.00\%) 4:16PM EDT - Nasdaq Real Time Price

Prev Close: 108.97

Open: 110.63

Bid: 112.03 x 200

Ask: 112.07 x 600

1y Target Est: 121.11

Beta: 1.22

Next Earnings Date: 27-Aug-15

Day's Range: 110.32 - 112.91

52wk Range: 95.60 - 120.65

Volume: 1,375,400

Avg Vol (3m): 817,120

Market Cap: 13.39B

P/E (ttm): 33.64

EPS (ttm): 3.33

Div & Yield: 2.68 (2.50\%)

You can also get shares outstanding, financial statements for three years, and other key statistics from Yahoo Finance.

http://finance.yahoo.com/q/ks?s=SJM+Key+Statistics

This is a screen capture from August 19, 2022. The current beta and market cap can be obtained from the same link. All of the data in the worksheets are as of July 2015.

## Other data

## Balance sheet data

Cash = Cash & cash equivalents & Short-term Inv.

$=$ 0.1256 billion.

Debt = Long-term debt + Short-term debt

= 6.171 billion.

Shares outstanding = 0.11967 billion

Cost of Equity for Smucker using CAPM

As of July 2015, it was  $9.74\%$ .

Plowback rate in Stage 1

From worksheet 4: Average payout ratio over the last 10 years is about 1. The current payout ratio is 0.81. This gives a plowback rate range of 0 to 0.19. I use the higher number. You can take the most recent number, average it over 5 years, etc. It is your choice.

## Steady-state information

Steady-state growth  $= 3\%$  (assume nominal GDP growth)

Steady-state ROI = Cost of equity,  $9.74\%$

Steady-state plowback rate,  $\mathrm{k} = \mathrm{g} / \mathrm{ROI} = 0.03 / 0.0974 = 0.31$

Smucker intrinsic value  $= \$ 83.59$  per share

Current price (July 8, 2022) = 108.46 per share

P/V ratio = 108.46/83.59 = 1.30 (overvalued by 30\%).

<table><tr><td rowspan="2"></td><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td><td>2027</td><td>2028</td><td>2029</td><td>Year 1 Year T+1</td><td></td></tr><tr><td>Year 0</td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td><td>Year 6</td><td>Year 7</td><td>Year 8</td><td>Year 9</td><td>Year 10</td><td>Year 11</td><td>Year 12</td><td>Year 13</td><td>Year 14</td><td>Year 15</td><td>Year 16</td></tr><tr><td>g</td><td></td><td></td><td>8.7\%</td><td>8.1\%</td><td>7.5\%</td><td>7.0\%</td><td>6.5\%</td><td>6.1\%</td><td>5.7\%</td><td>5.3\%</td><td>4.9\%</td><td>4.6\%</td><td>4.3\%</td><td>4.0\%</td><td>3.7\%</td><td>3.5\%</td><td>3.2\%</td></tr><tr><td>k</td><td>0.19</td><td>0.19</td><td>0.20</td><td>0.21</td><td>0.21</td><td>0.22</td><td>0.23</td><td>0.24</td><td>0.25</td><td>0.25</td><td>0.26</td><td>0.27</td><td>0.28</td><td>0.28</td><td>0.29</td><td>0.30</td><td>0.31</td></tr><tr><td>EPS</td><td>5.44</td><td>5.82</td><td>6.33</td><td>6.88</td><td>7.40</td><td>7.92</td><td>8.43</td><td>8.95</td><td>9.46</td><td>9.96</td><td>10.45</td><td>10.93</td><td>11.40</td><td>11.85</td><td>12.29</td><td>12.72</td><td>13.13</td></tr><tr><td>Net New Equity Investments</td><td>1.03</td><td>1.11</td><td>1.25</td><td>1.41</td><td>1.58</td><td>1.75</td><td>1.93</td><td>2.12</td><td>2.32</td><td>2.52</td><td>2.73</td><td>2.94</td><td>3.15</td><td>3.37</td><td>3.59</td><td>3.82</td><td>4.04</td></tr><tr><td>FCFE</td><td>4.40</td><td>4.71</td><td>5.07</td><td>5.46</td><td>5.82</td><td>6.16</td><td>6.50</td><td>6.83</td><td>7.14</td><td>7.44</td><td>7.72</td><td>7.99</td><td>8.24</td><td>8.48</td><td>8.70</td><td>8.90</td><td>9.08</td></tr><tr><td>Growth in FCFE</td><td></td><td>7.1\%</td><td>7.6\%</td><td>7.6\%</td><td>6.5\%</td><td>6.0\%</td><td>5.5\%</td><td>5.0\%</td><td>4.6\%</td><td>4.2\%</td><td>3.8\%</td><td>3.5\%</td><td>3.2\%</td><td>2.9\%</td><td>2.6\%</td><td>2.3\%</td><td>2.1\%</td></tr><tr><td>Book Value Per Share</td><td>59.27</td><td>60.38</td><td>61.63</td><td>63.04</td><td>64.62</td><td>66.38</td><td>68.31</td><td>70.43</td><td>72.75</td><td>75.27</td><td>77.99</td><td>80.93</td><td>84.08</td><td>87.45</td><td>91.04</td><td>94.86</td><td>98.90</td></tr><tr><td>ROE</td><td></td><td>9.8\%</td><td>10.5\%</td><td>11.2\%</td><td>11.7\%</td><td>12.2\%</td><td>12.7\%</td><td>13.1\%</td><td>13.4\%</td><td>13.7\%</td><td>13.9\%</td><td>14.0\%</td><td>14.1\%</td><td>14.1\%</td><td>14.1\%</td><td>14.0\%</td><td>13.8\%</td></tr><tr><td>ROI</td><td></td><td>37.1\%</td><td>45.8\%</td><td>44.0\%</td><td>36.7\%</td><td>32.9\%</td><td>29.6\%</td><td>26.6\%</td><td>24.0\%</td><td>21.6\%</td><td>19.5\%</td><td>17.6\%</td><td>15.9\%</td><td>14.4\%</td><td>13.1\%</td><td>11.8\%</td><td>10.7\%</td></tr><tr><td>RI (Residual Income)</td><td></td><td>0.05</td><td>0.45</td><td>0.87</td><td>1.26</td><td>1.62</td><td>1.97</td><td>2.30</td><td>2.60</td><td>2.87</td><td>3.12</td><td>3.33</td><td>3.51</td><td>3.66</td><td>3.77</td><td>3.85</td><td>3.89</td></tr><tr><td>(ROE - re)</td><td></td><td>0.1\%</td><td>0.7\%</td><td>1.4\%</td><td>2.0\%</td><td>2.5\%</td><td>3.0\%</td><td>3.4\%</td><td>3.7\%</td><td>3.9\%</td><td>4.1\%</td><td>4.3\%</td><td>4.3\%</td><td>4.4\%</td><td>4.3\%</td><td>4.2\%</td><td>4.1\%</td></tr><tr><td>Discounted Free Cash Flow Valuation</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>PV of FCFE during the first 15 years</td><td></td><td></td><td>50.16</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Continuing value based on cash flows beyond Year 15</td><td></td><td></td><td>33.42</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Intrinsic Value of Equity per share</td><td></td><td></td><td>\$83.59</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Price Per Share</td><td></td><td></td><td>\$108.46</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>P/V</td><td></td><td></td><td>1.30</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="18">Firm Valuation</td></tr><tr><td>Value of assets-in-place and PVGO</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Value of assets-in-place</td><td></td><td></td><td>$59.75</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>PVGO</td><td></td><td></td><td>$23.83</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Intrinsic Value of Equity per share</td><td></td><td></td><td>83.59</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

Worksheet (10) in the EXCEL workbook Smucker-July 2015 version 7.0.xls

## Sensitivity Analysis

Examine how your valuations change when you adjust your key assumptions, for example you can test how Low Estimate and High Estimate of earnings forecasts affect your valuations.

You can examine the sensitivity of your analysis to your cost of capital estimates and the payout ratios.

## Distressed Firms

Even if trailing earnings are negative, as long as the firm has positive earnings forecasts, you can still use the model.

If both FY1 and FY2 forecasts are negative, then it is hard to perform DCF valuation.

If NOPAT is negative, you can use a normalized NOPAT (average or median of the prior 5 or 10 years).

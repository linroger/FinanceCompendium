---
aliases:
  - Estimating Continuing Value
tags:
key_concepts:
parent_directory: Valuation- Measuring and Managing the Value of Companies Full/chapters
cssclasses: academia
title: Chapter 14 - Estimating Continuing Value
linter-yaml-title-alias: Estimating Continuing Value
---

# Estimating Continuing Value

A thoughtful estimate of continuing value is essential to any company valuation. It serves as a useful method for simplifying the valuation process while still incorporating solid economic principles. To estimate a company's value, separate the forecast of expected cash flow into two periods and define the company's value as follows:

$$
\text {V a l u e} = \begin{array}{l} \text {P r e s e n t V a l u e o f C a s h F l o w} \\ \text {d u r i n g E x p l i c i t F o r e c a s t P e r i o d} \end{array} + \begin{array}{l} \text {P r e s e n t V a l u e o f C a s h F l o w} \\ \text {a f t e r E x p l i c i t F o r e c a s t P e r i o d} \end{array}
$$

The second term is the continuing value: the value of the company's expected cash flow beyond an explicit forecast period. By deliberately making some simple assumptions about the company's performance during this second period—for example, assuming a constant rate of growth and return on capital—you can estimate continuing value by using formulas instead of explicitly forecasting and discounting cash flows over an extended period.

Continuing value often accounts for a large percentage of a company's total value. Exhibit 14.1 shows continuing value as a percentage of total value for companies in four industries, given an eight-year explicit forecast. In these examples, continuing value accounts for 56 percent to 125 percent of total value. These large percentages do not necessarily mean that most of a company's value will be created in the continuing-value period. Often, continuing value is large because profits and other inflows in the early years are offset by outflows for capital spending and working-capital investment—investments that should generate higher cash flow in later years. We discuss the interpretation of continuing value in more detail later in this chapter.

The continuing-value formulas developed over the next few pages are consistent with the principles of value creation and discounted cash flow (DCF). This

EXHIBIT 14.1 Continuing Value as a Percentage of Total Value

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/706690a3627344d114120fc6e3e46fdd79b27b60a765eec4bd240a4e70792712.jpg)

8-year forecast period, \% is important, because many investment professionals ignore the economics that underpin their estimate of continuing value. For example, we have seen acquirers estimate the continuing value for a target company by applying the same multiple of earnings five years in the future as the multiple they are currently paying for the acquisition target. By doing this, they are implicitly assuming that someone would be willing to pay the same multiple five years from now, regardless of changes in prospects for growth and return on invested capital over that period. This type of circular reasoning leads to inaccurate valuations that are often overly optimistic. Instead, acquirers should estimate what the multiple will be at the end of the forecast period, given the company's potential at that time.

This chapter begins with the recommended continuing-value formulas for DCF and economic-profit valuation models. It then discusses concerns that arise out of common misinterpretations of continuing value, explaining how proper measurement addresses these concerns. Then we identify common pitfalls in estimation and offer best practices for avoiding these. Finally, we compare the recommended formulas with other common techniques, such as multiples and liquidation values.

# RECOMMENDED FORMULA FOR DCF VALUATION

If you are using the enterprise DCF model, you should estimate continuing value by using the value driver formula derived in Chapter 3:

$$
\text {C o n t i n u i n g V a l u e} _ {t} = \frac {\mathrm {N O P A T} _ {t + 1} \left(1 - \frac {g}{\mathrm {R O N I C}}\right)}{\mathrm {W A C C} - g}
$$ where  $\mathrm{NOPAT}_{t+1} =$  net operating profit after taxes in the first year after the explicit forecast period


$g =$  expected growth rate in NOPAT in perpetuity

RONIC = expected rate of return on new invested capital

WACC = weighted average cost of capital

A simple example demonstrates that the value driver formula does, in fact, replicate the process of projecting the cash flows and discounting them to the present. Begin with the following cash flow projections:

<table><tr><td></td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td></tr><tr><td>NOPAT</td><td>$10.0</td><td>$10.6</td><td>$11.2</td><td>$11.9</td><td>\$12.6</td></tr><tr><td>Net investment</td><td>5.0</td><td>5.3</td><td>5.6</td><td>6.0</td><td>6.3</td></tr><tr><td>Free cash flow</td><td>$ 5.0</td><td>$ 5.3</td><td>$ 5.6</td><td>$ 6.0</td><td>\$ 6.3</td></tr></table>

Beyond year 5, the company continues to reinvest half its after-tax operating profit at a 12 percent rate of return, driving continued growth at 6 percent. The weighted average cost of capital (WACC) is assumed to be 11 percent.

To compare the methods of computing continuing value, first discount a long forecast—say, 100 years:

$$

C V = \frac {\mathbb {S} 5 . 0}{1 . 1 1} + \frac {\mathbb {S} 5 . 3}{(1 . 1 1) ^ {2}} + \frac {\mathbb {S} 5 . 6}{(1 . 1 1) ^ {3}} + \dots + \frac {\mathbb {S} 5 0 (1 . 0 6) ^ {9 9}}{(1 . 1 1) ^ {1 0 0}}

$$

$$

\mathrm {C V} = \$ 9 9

$$

Next, use the growth perpetuity formula:

$$

C V = \frac {\mathbb {S} 5 . 0}{0 . 1 1 - 0 . 0 6}

$$

$$

C V = \$ 100

$$

Finally, use the value driver formula:

$$

C V = \frac {\S 1 0 \left(1 - \frac {0 . 0 6}{0 . 1 2}\right)}{0 . 1 1 - 0 . 0 6}

$$

$$

C V = \$ 100

$$

All three approaches yield virtually the same result. If we had carried out the discounted cash flow beyond 150 years, the result would have been nearly identical.[2]

Although the value driver formula and the cash-flow-based growth perpetuity formula are technically equivalent, applying the growth perpetuity formula is tricky, and it is easy to make the common error of ignoring the interdependence between free cash flow and growth. More specifically, if growth in the continuing-value period is forecast to be lower than the growth at the end of the explicit forecast period (as is normally the case), then required reinvestment is likely to be less, leading to higher free cash flow. If the perpetuity's free cash flow is computed using cash flow from the higher-growth explicit forecast period, this cash flow will be too low, and the calculation will underestimate the continuing value. Later in this chapter, an example illustrates what can go wrong when using the cash flow perpetuity formula rather than the key value driver formula.

Because perpetuity-based formulas rely on parameters that never change, use a continuing-value formula only when the company has reached a steady state, with low revenue growth and stable operating margins. Chapters 8 and 9 provide guidance for thinking about return on capital and long-term growth. In addition, when estimating the continuing-value parameters, keep in mind the following technical considerations:
- NOPAT. The level of NOPAT should be based on a normalized level of revenues, sustainable margin, and return on invested capital (ROIC). This is especially important in a cyclical business; revenues and operating margins should reflect the midpoint of the company's business cycle, not its peak or trough.
- RONIC. The expected rate of return on new invested capital (RONIC) should be consistent with expected competitive conditions beyond the explicit forecast period. Economic theory suggests that competition will eventually eliminate abnormal returns, so for companies in competitive industries, set RONIC equal to WACC. However, for companies with sustainable competitive advantages, such as brands and patents, you might set RONIC equal to the return the company is forecast to earn during later years of the explicit forecast period. Chapter 8 contains data on the long-term returns on capital for companies in different industries.
- Growth rate. A company's growth rate typically reverts to industry growth rates very quickly, and few companies can be expected to grow faster than the economy for long periods. The best estimate is probably the expected long-term rate of consumption growth for the industry's products, plus inflation. Sensitivity analyses are useful for understanding how the growth rate affects continuing-value estimates. Chapter 9 provides empirical evidence on historical corporate growth rates.
- WACC. The weighted average cost of capital should incorporate a sustainable capital structure and an underlying estimate of business risk consistent with expected industry conditions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/1599586999e25e2865402d4c01c0966c40b4fdc5d839974da80bebf052bfaf08.jpg)
EXHIBIT 14.2 Impact of Continuing-Value Assumptions

Exhibit 14.2 shows how continuing value, calculated using the value driver formula, is affected by various combinations of growth rate and RONIC. The example assumes a  \$100 million base level of NOPAT and a 10 percent WACC. For RONIC near the cost of capital, there is little change in value as the growth changes. This is because the company is taking on projects whose net present value is close to zero. At an expected RONIC of 14 percent, however, changing the growth rate from 6 percent to 8 percent increases the continuing value by 50 percent, from about\$ 1.4 billion to about 2.1 billion. The higher the RONIC, the more sensitive the continuing value is to changing growth rates.

# Two-Stage Continuing-Value Models

For high-growth companies or companies undergoing long-term structural changes, we recommend extending the explicit forecast period until the company reaches a steady state. If the resulting model is too cumbersome, use a multistage continuing value that aggregates multiple years into a single formula. In a two-stage model, the continuing value is split into a growth annuity followed by a growth perpetuity. This allows for distinct returns on capital and growth rates for different stages of the company's life, without the burden of year-by-year forecasts. We provide two-stage continuing-value formulas for discounted cash flow and economic-profit models in Appendix I.

# CONTINUING VALUE USING ECONOMIC PROFIT

To estimate continuing value in an economic-profit valuation, we again rely on perpetuity-based formulas. With the economic-profit approach, however, the continuing value does not equal the value of the company following the explicit forecast period, as it does for discounted free cash flow. Instead, it is the incremental value over the company's invested capital at the end of the explicit forecast period. Today's value of the company is as follows:


$$

\begin{array}{r c l r c l} \text {V a l u e} _ {0} & = & \text {I n v e s t e d} & + & \text {P r e s e n t v a l u e o f} & + & \text {P r e s e n t v a l u e o f} \\ & & \text {c a p i t a l} _ {0} & & \text {f o r c a s t e c o n o m i c} & & \text {f o r c a s t e c o n o m i c} \\ & & & & \text {p r o f i t d u r i n g e x p l i c i t} & & \text {p r o f i t a f t e r e x p l i c i t} \\ & & & & \text {f o r c a s t p e r i o d} & & \text {f o r c a s t p e r i o d} \end{array}

$$

The continuing value is the last term in the preceding equation.

The formula to estimate continuing value using economic profit is more complicated than that for discounted cash flow. Unlike the key value driver formula used in an enterprise DCF model, the continuing value for economic profit contains two terms. The first term represents the present value of economic profits on capital in place at the end of the forecast period. The second term represents the present value of economic profits for annual investments beyond the explicit forecast period. The formula is as follows:

$$

C V _ {t} = \frac {I C _ {t} \left(R O I C _ {t + 1} - W A C C\right)}{W A C C} + \frac {P V \left(E c o n o m i c P r o f i t _ {t + 2}\right)}{W A C C - g}

$$ where


$$

\mathrm {P V} \left(\text {E c o n o m i c P r o f i t} _ {t + 2}\right) = \frac {\mathrm {N O P A T} _ {t + 1} \left(\frac {g}{\text {R O N I C}}\right) (\text {R O N I C - W A C C})}{\text {W A C C}}

$$ where


$\mathrm{IC}_t =$  invested capital at the end of the explicit forecast period  $\mathrm{ROIC}_t =$  ROIC on existing capital at the end of the explicit forecast period, measured as  $\mathrm{NOPAT}_{t + 1} / \mathrm{IC}_t$
WACC  $=$  weighted average cost of capital  $g =$  expected growth rate in NOPAT in perpetuity
RONIC  $=$  expected rate of return on new invested capital after the explicit forecast period

According to the formula, total economic profit following the explicit forecast period equals the present value of economic profit in the first year after the explicit forecast in perpetuity plus any incremental economic profit after that year. Incremental economic profit is created by additional growth at returns exceeding the cost of capital. If expected RONIC equals WACC, the third term (economic profits beyond year 1) equals zero, and the continuing economic-profit value is the value of just the first year's economic profit in perpetuity.

# MISUNDERSTANDINGS ABOUT CONTINUING VALUE

Properly applied, continuing value can simplify your valuation while incorporating robust economic principles. In practice, however, proper application often requires correcting three common misunderstandings about continuing value. The first is the perception that the length of the explicit forecast affects the company's value. As we show in this section, only the split of value is changing, not the total value. Second, people incorrectly believe that value creation stops at the end of the explicit forecast period, when return on new invested capital is set equal to WACC in the continuing-value formula. As we demonstrate, since returns from existing capital carry into the continuing-value period, aggregate ROIC will only gradually approach the cost of capital. Finally, some investment professionals incorrectly infer that a large continuing value relative to the company's total value means that value creation occurs primarily after the explicit forecast period. This makes them uneasy about using enterprise DCF. In this section, we show why these concerns are not necessarily justified and why continuing value is more robust than often perceived.

# Why Forecast Length Doesn't Affect a Company's Value

While the length of the explicit forecast period you choose is important, it does not affect the value of the company; it affects only the distribution of the company's value between the explicit forecast period and the years that follow. In Exhibit 14.3, the value of the company is 893 million, regardless of how long the forecast period is. With a forecast horizon of five years, the continuing value accounts for 79 percent of total value. With an eight-year horizon, the continuing value accounts for only 67 percent of total value. As the explicit forecast horizon grows longer, value shifts from the continuing value to the explicit forecast period, but the total value always remains the same.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/7b336da9efeeed3131ef9601bed9b51f2b5041db4e297ee77b9f6070e0c50539.jpg)
EXHIBIT 14.3 Comparison of Total-Value Estimates Using Different Forecast Horizons

<table><tr><td colspan="3">Modeling assumptions</td></tr><tr><td></td><td>Years 1-5</td><td>Years 6+</td></tr><tr><td>Growth</td><td>9</td><td>6</td></tr><tr><td>RONIC</td><td>16</td><td>12</td></tr><tr><td>WACC</td><td>(12)</td><td>(12)</td></tr><tr><td>Spread</td><td>4</td><td>0</td></tr></table>

EXHIBIT 14.4 Valuation Using Five-Year Explicit Forecast Period

<table><tr><td colspan="7">$ million</td></tr><tr><td></td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td><td>Base for CV</td></tr><tr><td>NOPAT</td><td>100.0</td><td>109.0</td><td>118.8</td><td>129.5</td><td>141.2</td><td>149.6</td></tr><tr><td>Depreciation</td><td>20.0</td><td>21.8</td><td>23.8</td><td>25.9</td><td>28.2</td><td></td></tr><tr><td>Gross cash flow</td><td>120.0</td><td>130.8</td><td>142.6</td><td>155.4</td><td>169.4</td><td></td></tr><tr><td>Gross investment</td><td>(76.3)</td><td>(83.1)</td><td>(90.6)</td><td>(98.7)</td><td>(107.6)</td><td></td></tr><tr><td>Free cash flow (FCF)</td><td>43.8</td><td>47.7</td><td>52.0</td><td>56.7</td><td>61.8</td><td></td></tr><tr><td>× Discount factor</td><td>0.893</td><td>0.797</td><td>0.712</td><td>0.636</td><td>0.567</td><td></td></tr><tr><td>Present value of FCF</td><td>39.1</td><td>38.0</td><td>37.0</td><td>36.0</td><td>35.0</td><td></td></tr><tr><td>Present value of FCF1-5</td><td>185.1</td><td colspan="5">Calculation of continuing value (CV)</td></tr><tr><td>Continuing value</td><td>707.5</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Total value</td><td>892.6</td><td colspan="5">CV5 = NOPATCV(1 - g/RONIC) / WACC - g = $149.6(1 - 0.06/0.12)/0.12 - 0.06 = $1,246.9</td></tr><tr><td></td><td></td><td colspan="5">CV0 = CV5/(1 + WACC)^5 = \$1,246.9/(1.12)^5 = 707.5</td></tr></table>

To see how the value shift works, compare Exhibits 14.4 and 14.5. The former details the calculations for the valuation model using a five-year explicit forecast period, whereas the latter repeats the analysis with an eight-year period.

In Exhibit 14.4, NOPAT starts at 100 million. During the first five years, NOPAT grows at 9 percent per year. Following year 5, NOPAT growth slows to 6 percent. Using the definition of free cash flow derived in Chapter 10,

EXHIBIT 14.5 Valuation Using Eight-Year Explicit Forecast Period

<table><tr><td colspan="10">$ million</td></tr><tr><td></td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td><td>Year 6</td><td>Year 7</td><td>Year 8</td><td>Base for CV</td></tr><tr><td>NOPAT</td><td>100.0</td><td>109.0</td><td>118.8</td><td>129.5</td><td>141.2</td><td>149.6</td><td>158.6</td><td>168.1</td><td>178.2</td></tr><tr><td>Depreciation</td><td>20.0</td><td>21.8</td><td>23.8</td><td>25.9</td><td>28.2</td><td>29.9</td><td>31.7</td><td>33.6</td><td></td></tr><tr><td>Gross cash flow</td><td>120.0</td><td>130.8</td><td>142.6</td><td>155.4</td><td>169.4</td><td>179.6</td><td>190.3</td><td>201.7</td><td></td></tr><tr><td>Gross investment</td><td>(76.3)</td><td>(83.1)</td><td>(90.6)</td><td>(98.7)</td><td>(107.6)</td><td>(104.7)</td><td>(111.0)</td><td>(117.7)</td><td></td></tr><tr><td>Free cash flow (FCF)</td><td>43.8</td><td>47.7</td><td>52.0</td><td>56.7</td><td>61.8</td><td>74.8</td><td>79.3</td><td>84.1</td><td></td></tr><tr><td>× Discount factor</td><td>0.893</td><td>0.797</td><td>0.712</td><td>0.636</td><td>0.567</td><td>0.507</td><td>0.452</td><td>0.404</td><td></td></tr><tr><td>Present value of FCF</td><td>39.1</td><td>38.0</td><td>37.0</td><td>36.0</td><td>35.0</td><td>37.9</td><td>35.9</td><td>34.0</td><td></td></tr><tr><td>Present value of  \text{FCF}_{1-8} </td><td>292.9</td><td colspan="7">Calculation of continuing value (CV)</td><td></td></tr><tr><td>Continuing value</td><td>599.8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Total value</td><td>892.6</td><td colspan="7"> CV_8 = \frac{\text{NOPAT}_\text{CV}\left(1 - \frac{g}{\text{RONIC}}\right)}{\text{WACC} - g} = \frac{\text{$178.2}\left(1 - \frac{0.06}{0.12}\right)}{0.12 - 0.06} = $1,485.1 </td><td></td></tr><tr><td></td><td></td><td colspan="7"> CV_0 = \frac{CV_B}{(1 + WACC)^B} = \frac{\text{$1,485.1}}{(1.12)^B} = 599.8 </td><td></td></tr></table> we compute gross cash flow by adding depreciation to NOPAT. Free cash flow equals gross cash flow minus gross investment. To compute the company's gross investment, multiply NOPAT by the reinvestment rate, where the reinvestment rate equals the ratio of growth to ROIC (9 percent divided by 16 percent), plus depreciation. To determine the present value of the company, sum the present value of the explicit forecast period cash flows plus the present value of continuing value. (Since the continuing value is measured as of year 5, the continuing value of  \$1,246.9 million is discounted by five years, not by six, a common mistake.) The total value equals\$ 892.6 million.


Exhibit 14.5 details the calculations for a valuation model that uses an eight-year explicit forecast period and a continuing value that starts in year 9. The structure and forecast inputs of the model are identical to those of Exhibit 14.4. In the first five years, growth is 9 percent, and ROIC equals 16 percent. After five years, growth drops to 6 percent, and ROIC drops to 14 percent. This leads to an explicit forecast value of 292.9 million, which is higher than under the shorter five-year window. Since NOPAT in the continuing value is higher, continuing value also is higher, but since it occurs three years later, its discounted value is lower.

You can see that the amounts under the two valuation methods are identical. Since the underlying value drivers are the same in both valuations, the results will be the same. The length of your forecast horizon should affect only the proportion of total value allocated between the explicit forecast period and continuing value, not the total value.

The choice of forecast horizon will indirectly affect value if it is associated with changes in the economic assumptions underlying the continuing-value estimate. You can unknowingly change the amount of value creation when you change your forecast horizon. Many forecasters assume the company will generate returns above the cost of capital during the explicit forecast period, and they set return on new capital equal to WACC in the continuing value. By extending the explicit forecast period, you increase the number of years the company is creating value. Extending the forecast period indirectly raises the value, even when that is not intended.

So how do you choose the appropriate length of the explicit forecast period? The period should be long enough that the business will have reached a steady state by the end of it. Suppose you expect the company's margins to decline as its customers consolidate. Margins are currently 14 percent, and you forecast they will fall to 9 percent over the next seven years. In this case, the explicit forecast period must be at least seven years, because continuing-value approaches cannot account for the declining margin (at least not without complex computations). The business must be operating at an equilibrium level for the continuing-value approaches to be useful. If the explicit forecast period is more than seven years, there will be no effect on the company's total value.

# Why Continuing Value Doesn't Mark the End of Competitive Advantage

A related but subtle issue is the concept of the competitive-advantage period, or that period during which a company earns supernormal returns above the cost of capital. Although counterintuitive, setting RONIC equal to WACC in the continuing-value formula does not imply that the competitive-advantage period will conclude at the end of the explicit forecast period.

Remember, the key value driver formula is based on the return for new capital invested, not company-wide average ROIC. If you set RONIC in the continuing-value period equal to the cost of capital, you are not assuming that the return on total capital (old and new) will equal the cost of capital. The original capital (prior to the continuing-value period) will continue to earn the returns projected in the last forecast period. In other words, the company's competitive advantage period has not come to an end once the continuing-value period is reached. Existing capital will continue to earn supernormal returns in perpetuity. For example, imagine a retailer that opens its initial stores in high-traffic, high-growth, extremely profitable areas. These stores earn a superior rate of return and fund ongoing expansion. But as the company grows, new locations become difficult to find, and the ROIC related to expansion starts to drop. Eventually, the ROIC on the newest store will approach the cost of capital. But does this imply that ROIC on early stores will drop to the cost of capital as well? Probably not. A great location is hard to beat.

Exhibit 14.6 shows the average ROIC, based on continuing-value growth of 5 percent, the return on base capital is 18 percent, return on new capital is 10 percent, and WACC is 10 percent. Note how the average return on aggregate capital declines only gradually. From its starting point at 18 percent, it declines to 14 percent (the halfway point to RONIC) after 10 years in the continuing-value period. It reaches 12 percent after 21 years, and 11 percent after 37 years. How quickly this decay occurs from ROIC in the forecast period to RONIC in the continuing value depends on the growth rate in the continuing value. The higher the growth rate, the more capital there is to be deployed at lower returns, and the faster the drop.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/67604ad039d39af2828b07bfe250326263a59e40e255a74e1e3ba33103333d7d.jpg)
EXHIBIT 14.6 Gradual Decline in Average ROIC According to Continuing-Value Formula

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/ae1cab847fbe6d6cdb22560aef0cd93acb6d2f7261a19060a65a54a57e283358.jpg)
EXHIBIT 14.7 Innovation Inc.: Free Cash Flow Forecast and Valuation

# Why Value Isn't Just from Continuing Value

"All the value is in the continuing value" is a comment we've often heard from dismayed executives. Exhibit 14.7 illustrates the problem for a hypothetical company, Innovation Inc. Based on discounted free cash flow, it appears that 80 percent of Innovation's value comes from the continuing value. But there are other interesting ways to interpret the source of value.

Exhibit 14.8 suggests an alternative: a business components approach. Innovation Inc. has a base business that earns a steady 20 percent return on capital and is growing at 5 percent per year. It also has developed a new product line that will require several years of negative cash flow for development of a new sales channel, which management hopes will lead to organic growth. As shown in Exhibit 14.8, the base business has a value of 1,326 million,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/cb47df2809883504eaf6c8629782f6c7bcc8b6e8bde976d03f40511155b1bae8.jpg)
EXHIBIT 14.8 Innovation Inc.: Valuation by Components

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/5ac78cf7c5afcfbcc934b13cc183d01380277808aaaa085fe4cea2f33e577d28.jpg)
EXHIBIT 14.9 Innovation Inc.: Comparison of Continuing-Value Approaches or 74 percent of Innovation's total value. In other words, 74 percent of the company's value comes from operations that are currently generating stable, predictable cash flow. Only 26 percent of total value can be attributed to the unpredictable growth business. When the situation is viewed this way, uncertainty plays only a small role in the total value of the company.


It is possible to use the economic-profit model to generate another interpretation of continuing value. Exhibit 14.9 compares the components of value for Innovation Inc., using the discounted-FCF approach, the business components approach, and an economic-profit model. Under the economic-profit model, 35 percent of Innovation's value is simply the book value of invested capital. The rest of the value, 1,172 million, is the present value of projected economic profit. Of that, only 34 percent of total value is generated during the continuing-value period—a much smaller share than under the discounted-FCF model.

# COMMON PITFALLS

Estimating a company's performance 10 to 15 years out is an imprecise exercise. Common mistakes in continuing value estimation include erroneously extrapolating base-year cash flow, as well as making overly conservative assumptions on capital returns, both naively and purposely.

EXHIBIT 14.10 Correct and Incorrect Methods of Forecasting Base FCF

<table><tr><td colspan="6">$ million</td></tr><tr><td></td><td></td><td></td><td colspan="3">Year 11, 5\% growth</td></tr><tr><td></td><td></td><td>Year 9</td><td>Year 10</td><td>Incorrect</td><td>Correct</td></tr><tr><td></td><td>Revenues</td><td>1,000</td><td>1,100</td><td>1,155</td><td>1,155</td></tr><tr><td></td><td>Operating expenses</td><td>(850)</td><td>(935)</td><td>(982)</td><td>(982)</td></tr><tr><td></td><td>EBITA</td><td>150</td><td>165</td><td>173</td><td>173</td></tr><tr><td></td><td>Operating taxes</td><td>(60)</td><td>(66)</td><td>(69)</td><td>(69)</td></tr><tr><td></td><td>NOPAT</td><td>90</td><td>99</td><td>104</td><td>104</td></tr><tr><td></td><td>Depreciation</td><td>27</td><td>30</td><td>32</td><td>32</td></tr><tr><td></td><td>Gross cash flow</td><td>117</td><td>129</td><td>136</td><td>136</td></tr><tr><td></td><td>Capital expenditures</td><td>(30)</td><td>(33)</td><td>(35)</td><td>(35)</td></tr><tr><td></td><td>Increase in working capital</td><td>(27)</td><td>(30)</td><td>(32)</td><td>(17)</td></tr><tr><td></td><td>Gross investment</td><td>(57)</td><td>(63)</td><td>(67)</td><td>(52)</td></tr><tr><td></td><td>Free cash flow</td><td>60</td><td>66</td><td>69</td><td>84</td></tr><tr><td></td><td>Supplemental calculations</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>Working capital, year-end</td><td>300</td><td>330</td><td>362</td><td>347</td></tr><tr><td></td><td>Working capital/revenues, \%</td><td>30.0</td><td>30.0</td><td>31.3</td><td>30.0</td></tr></table>

# Erroneous Base-Year Extrapolation

Exhibit 14.10 illustrates a common error in forecasting the base level of free cash flow: assuming that the investment rate is constant, so that NOPAT, investment, and FCF all grow at the same rate. From year 9 to year 10 (the last forecast year), the company's earnings and cash flow grow by 10 percent. It is believed that revenue growth in the continuing-value period will be 5 percent per year. A common, yet incorrect, forecast for year 11 (the continuing-value base year) simply increases every line item from year 10 by 5 percent, as shown in the third column. This forecast is wrong because the increase in working capital is far too large, given the smaller increase in sales. Since revenues are growing more slowly, the proportion of gross cash flow devoted to working capital requirements should decline significantly, as shown in the last column. In the final column, the increase in working capital should be the amount necessary to maintain the year-end working capital at a constant percentage of revenues.

The erroneous approach continually increases working capital as a percentage of revenues (5 percent) and will significantly understate the value of the company. Note that in the third column, free cash flow is 18 percent lower than it should be. The same problem applies to capital expenditures. To keep the example simple, we limited it to working capital.

To avoid making an error in estimating final-year cash flow, we highly recommend using the value driver formula instead of the cash flow perpetuity model. The value driver model implicitly computes the required investment based on expectations of growth and ROIC.


# Naive Overconservatism

Many investment professionals routinely assume that the incremental return on capital during the continuing-value period will equal the cost of capital. This practice relieves them of having to forecast a growth rate, since growth in this case neither adds nor destroys value. For some businesses, this assumption is too conservative. For example, both Coca-Cola's and PepsiCo's soft-drink businesses earn high returns on invested capital, and their returns are unlikely to fall substantially as they continue to grow, due to the strength of their brands, high barriers to entry, and limited competition. For these businesses, an assumption that RONIC equals WACC would understate their values. This problem applies equally to almost any business selling a product or service that is unlikely to be duplicated, including many pharmaceutical companies, numerous consumer products companies, and some software companies.

However, even if RONIC remains high, growth will drop as the market matures. Therefore, any assumption that RONIC is greater than WACC should be coupled with an economically reasonable growth rate.

# Purposeful Overconservatism

Some investment professionals are overly conservative because of the uncertainty and size of the continuing value. But if continuing value is to be estimated properly, the uncertainty should cut both ways: the results are just as likely to be higher than an unbiased estimate as they are to be lower. So conservatism overcompensates for uncertainty. Uncertainty matters, but it should be modeled using scenarios, not through conservatism regarding ROIC or growth in the continuing-value formula.

# OTHER APPROACHES TO CONTINUING VALUE

Several alternative approaches to estimating continuing value are used in practice. A few approaches are acceptable if applied carefully, but in general, these alternatives often produce misleading results. We prefer the methods

EXHIBIT 14.11 Continuing-Value Estimates for a Sporting Goods Company

<table><tr><td colspan="3">$ million</td></tr><tr><td>Technique</td><td>Assumptions</td><td>Continuing value</td></tr><tr><td>Other DCF approaches</td><td></td><td></td></tr><tr><td>Perpetuity based on final year&#x27;s NOPAT</td><td>Normalized NOPAT growing at inflation rate</td><td>582</td></tr><tr><td>Perpetuity based on final year&#x27;s cash flow</td><td>Normalized FCF growing at inflation rate</td><td>428</td></tr><tr><td>Multiples (comparables)</td><td></td><td></td></tr><tr><td>Price-to-earnings ratio</td><td>Industry average of 15 times earnings</td><td>624</td></tr><tr><td>Market-to-book ratio</td><td>Industry average of 1.4 times book</td><td>375</td></tr><tr><td>Asset-based valuations</td><td></td><td></td></tr><tr><td>Liquidation value</td><td>80\% of working capital</td><td>186</td></tr><tr><td></td><td>70\% of net fixed assets</td><td></td></tr><tr><td>Replacement cost</td><td>Book value adjusted for inflation</td><td>275</td></tr></table> explored earlier in this chapter, because they explicitly rely on the underlying economic assumptions embodied in the company analysis. Other approaches tend to obscure the underlying economic assumptions. Using the example of a sporting goods company, Exhibit 14.11 illustrates the wide dispersion of continuing-value estimates arrived at by different techniques.


The most common techniques fall into three categories: other DCF approaches, multiples, and asset-based valuations. This section describes techniques in these categories and explains why we prefer the approaches we recommended earlier.

# Other DCF Approaches

The recommended DCF formulas can be modified to create additional continuing-value formulas with more restrictive (and sometimes unreasonable) assumptions.

One variation is the convergence formula. For companies in competitive industries, many expect that the return on net new investment will eventually converge to the cost of capital as all the excess profits are competed away. This assumption allows a simpler version of the value driver formula, as follows:

$$

C V = \frac {N O P A T _ {t + 1}}{W A C C}

$$

The derivation begins with the value driver formula:

$$

\mathrm {C V} = \frac {\mathrm {N O P A T} _ {t + 1} \left(1 - \frac {g}{\mathrm {R O N I C}}\right)}{\mathrm {W A C C} - g}

$$

Assume that RONIC = WACC (that is, the return on incremental invested capital equals the cost of capital):

$$

\begin{array}{l} \mathrm {C V} = \frac {\mathrm {N O P A T} _ {t + 1} \left(1 - \frac {g}{\mathrm {W A C C}}\right)}{\mathrm {W A C C} - g} \\ = \frac {\mathrm {N O P A T} _ {t + 1} \left(\frac {\mathrm {W A C C} - g}{\mathrm {W A C C}}\right)}{\mathrm {W A C C} - g} \\ \end{array}

$$

Canceling the term WACC  $-g$  leaves a simple formula:

$$

C V = \frac {N O P A T _ {t + 1}}{W A C C}

$$

The fact that the growth term has disappeared from the equation does not mean that the nominal growth in NOPAT will be zero. The growth term drops out because new growth adds nothing to value, as the RONIC associated with growth equals the cost of capital. This formula is sometimes interpreted as implying zero growth (not even with inflation), but this is not an accurate interpretation.

Misinterpretation of the convergence formula has led to another variant: the aggressive-growth formula. This formula assumes that earnings in the continuing-value period will grow at some rate, most often the inflation rate. Some investment professionals then conclude that earnings should be discounted at the real WACC rather than at the nominal WACC. The resulting formula is:

$$

C V = \frac {N O P A T _ {t + 1}}{W A C C - g}

$$

Here,  $g$  is the inflation rate. This formula can substantially overstate continuing value, because it assumes that NOPAT can grow without any incremental capital investment. This is unlikely, or impossible, because any growth will probably require additional working capital and fixed assets.

To see the critical assumption hidden in the preceding formula, we analyze the key value driver formula as RONIC approaches infinity:

$$

C V = \frac {N O P A T _ {t + 1} \left(1 - \frac {g}{R O N I C}\right)}{W A C C - g}

$$

$$

\mathrm {R O N I C} \rightarrow \infty ; \text {t h e r e f o r e}, \frac {g}{\mathrm {R O N I C}} \rightarrow 0

$$

$$

\begin{array}{l} \mathrm {C V} = \frac {\mathrm {N O P A T} _ {t + 1} (1 - 0)}{\mathrm {W A C C} - g} \\ = \frac {\mathrm {N O P A T} _ {t + 1}}{\mathrm {W A C C} - g} \\ \end{array}

$$

EXHIBIT 14.12 Rates of Return Implied by Alternative Continuing-Value Formulas
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/f063d298dd6989fa01cd69689a1df76eccb816b707276d142db0f7acea961165.jpg)
1 Implied ROIC equals the return on both new and existing capital.

Exhibit 14.12 compares the two variations of the key value driver formula, showing how the average return on invested capital (both existing and new investment) behaves under the two assumptions. In the aggressive-growth case, NOPAT grows without any new investment, so the return on invested capital eventually approaches infinity. In the convergence case, the average return on invested capital moves toward the weighted average cost of capital as new capital becomes a larger portion of the total capital base.

# Multiples

Multiples, also known as comparables, assume that a company will be worth some multiple of future earnings or book value in the continuing period. But how do you estimate an appropriate future multiple?

A common approach is to assume that the company will be worth a multiple of earnings or book value based on the multiple for the company today. Suppose we choose today's industry average enterprise-value-to-EBITDA ratio. This ratio reflects the economic prospects of the industry during the explicit forecast period as well as the continuing-value period. In maturing industries, however, prospects at the end of the explicit forecast period are likely to be very different from today's. Therefore, a different EV-to-EBITDA is needed; one that reflects the company's prospects at the end of the forecast period. What factors will determine that ratio? As discussed in Chapter 3, the primary determinants are the company's expected growth, the rate of return on new capital, and the cost of capital. The same factors are in the key value driver formula. Unless you are comfortable using an arbitrary multiple, you are much better off with the value driver formula.

When valuing an acquisition, companies sometimes fall into the circular reasoning that the multiple for the continuing value should equal the multiple paid for the acquisition. In other words, if I pay 15 times EBITDA today, I should be able to sell the business for 15 times EBITDA at the end of the explicit forecast period. In most cases, the reason a company is willing to pay a particular multiple for an acquisition is that it plans to improve the target's profitability. So the effective EBITDA multiple it is paying on the improved level of EBITDA will be much less than 15. Once the improvements are in place and earnings are higher, buyers will not be willing to pay the same multiple unless they can make additional improvements beyond those already made. Chapter 18 describes other common mistakes made when using multiples.

# Asset-Based Valuations

Unlike the previous methods, which rely on future cash flow or earnings, estimating continuing value using replacement cost or liquidation value is known as an asset-based approach. Since these approaches ignore the future potential of the company, use them only in situations where ongoing operations are in jeopardy.

The liquidation value approach sets the continuing value equal to the estimated proceeds from the sale of the assets, after paying off liabilities at the end of the explicit forecast period. Liquidation value is often far different from the value of the company as a going concern. In a growing, profitable industry, a company's liquidation value is probably well below the going-concern value. In a dying industry, liquidation value may exceed going-concern value. Do not use this approach unless liquidation is likely at the end of the forecast period.

The replacement cost approach sets the continuing value equal to the expected cost to replace the company's assets. This approach has at least two drawbacks. First, not all tangible assets are replaceable. The company's organizational capital can be valued only on the basis of the cash flow the company generates. The replacement cost of just the company's tangible assets may greatly understate the value of the company. Second, not all the company's assets will ever be replaced. Consider a machine used by a particular company. As long as it generates a positive cash flow, the asset is valuable to the ongoing business of the company. But the replacement cost of the asset may be so high that replacing it is not economical. Here, the replacement cost may exceed the value of the business as an ongoing entity.

# CLOSING THOUGHTS

The future is inherently unknowable, so it is understandable why many professionals are skeptical about enterprise DCF models that rely on a continuing-value formula. This skepticism may be warranted in some cases, but for many valuations, disaggregating the continuing value into its economic components can show why these concerns are overstated. Remember, the value of a company is merely its invested capital plus the economic profits it generates on that capital. If most of the value creation occurs during the explicit forecast period, then the continuing value plays a much smaller role than the free cash flow would lead you to believe.


When estimating continuing value, remember to follow a few simple guidelines for successful valuation. First, use the key value driver formula to estimate continuing value. Unlike the free-cash-flow model, the value driver formula implicitly models the correct investment required for growth. Second, carefully assess the value drivers at the time of continuing value. The value drivers should be consistent with the company's potential in the future, rather than today's performance or economic environment. We believe a thoughtful analysis will lead to insights not available with other models.

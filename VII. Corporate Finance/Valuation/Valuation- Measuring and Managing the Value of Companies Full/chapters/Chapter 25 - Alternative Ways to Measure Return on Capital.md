---
aliases:
tags:
key_concepts:
parent_directory: VII. Corporate Finance/Valuation/Valuation- Measuring and Managing the Value of Companies Full/chapters
cssclasses: academia
title: Alternative Ways to Measure Return on Capital
linter-yaml-title-alias: Alternative Ways to Measure Return on Capital
formatted: "2025-12-20 07:52:00 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags: [return on capital, roic alternatives, cfroi]
secondary_tags: [internal rate of return, asset valuation, economic returns]
---

## Alternative Ways to Measure Return on Capital

Valuations often assume that historical return on capital is a good starting point for projecting future returns as a company grows. But if historical return on capital is measured in a way that gives us no meaningful information about value creation, decisions about whether to continue investing in a business may be incorrect. To be truly value based, the measure for return on capital should reflect the internal rate of return (IRR) of the underlying business from the time investments are made until all the cash flows from that investment have been collected. That's not possible in practice, because we can't wait until the end of every project to assess a company's performance; a business is an accumulation of different investments made at different times. So we need a proxy that measures how much value a company has created in the recent past and that can help a company with the particularly important task of planning for the future.

Return on invested capital (ROIC), our primary measure of return on capital, correctly reflects value creation in most cases. But ROIC has some imperfections. For example, it doesn't account for the age of assets or the effect that inflation has on its measurement. Analysts have therefore proposed alternatives to overcome some of ROIC's weaknesses. One of these, cash flow return on investment (CFROI), is estimated from cash flows rather than from accounting measures. CFROI is the better measure of value creation in certain rare situations.

```d2
alternative roic measures: {
  shape: flowchart
  
  roic: "ROIC (Primary Measure - NOPAT / Invested Capital)"
  cfroi: "CFROI (Cash Flow ROI - For lumpy investments)"
  cash_return: "Cash Return on Capital (Flawed - Overestimates IRR)"
  
  roic -> cfroi: "When assets have steady cash flows"
  roic -> cash_return: "Avoid - Ignores depreciation"
}
``` This chapter explores the conditions under which ROIC accurately reflects the true economic return on capital and when to consider a more complex CFROI measure. We then look at some other alternatives and explain why they are flawed measures of value creation.

As we compare these measures, note that all of them apply this important principle: any measure of return on capital should be based on the amount invested, not the current market value of the company or its assets.

Take, for example, the case where the fair value of an asset is based on the intrinsic, discounted-cash-flow (DCF) value of its future cash flows. By definition, the return on capital for the asset at its fair value does not provide any indication of an investment's value creation in such assets. For a growing business, a return on capital measured against the DCF value will always be less than the cost of capital, because the DCF value reflects the value creation of future investments.

# WHEN ROIC EQUALS IRR

The simplest approach to measuring return on capital, which works well in most cases, is the one we use throughout this book: ROIC, or operating earnings divided by the net book value of a company's operating capital (purchase cost less accumulated depreciation). To illustrate when ROIC accurately estimates the IRR of an asset and the business activities it supports, we will use a stylized example, shown in Exhibit 25.1. The initial investment is  \$100, and operating cash flows gradually decline over the asset's five-year lifetime. With linear depreciation charges of\$ 20, the operating profit is proportional to the net invested capital in each year, declining from \$15 in the first year to \$3 in the last. We define ROIC in a particular year as the operating profit for that year divided by the invested capital at the beginning of the year, net of accumulated depreciation (ignoring taxes for simplicity). In this example, the asset's ROIC is constant over the asset's lifetime at 15 percent.

EXHIBIT 25.1 Returns When Profits Are Proportional to Net Invested Capital

<table><tr><td rowspan="3">$</td><td colspan="7">Individual asset</td></tr><tr><td colspan="6">Year</td><td rowspan="2">Business of five assets</td></tr><tr><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Operating cash flow</td><td>(100)</td><td>35</td><td>32</td><td>29</td><td>26</td><td>23</td><td>145</td></tr><tr><td>Depreciation</td><td></td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td><td>(100)</td></tr><tr><td>Operating profit</td><td></td><td>15</td><td>12</td><td>9</td><td>6</td><td>3</td><td>45</td></tr><tr><td>Gross invested capital1</td><td></td><td>100</td><td>100</td><td>100</td><td>100</td><td>100</td><td>500</td></tr><tr><td>Cumulative depreciation1</td><td></td><td>-</td><td>(20)</td><td>(40)</td><td>(60)</td><td>(80)</td><td>(200)</td></tr><tr><td>Net invested capital1</td><td></td><td>100</td><td>80</td><td>60</td><td>40</td><td>20</td><td>300</td></tr><tr><td>IRR, \%</td><td>15.0</td><td></td><td></td><td></td><td></td><td></td><td>15.0</td></tr><tr><td>Cash return on gross invested capital, \%</td><td></td><td>35.0</td><td>32.0</td><td>29.0</td><td>26.0</td><td>23.0</td><td>29.0</td></tr><tr><td>Cash return on net invested capital, \%</td><td></td><td>35.0</td><td>40.0</td><td>48.3</td><td>65.0</td><td>115.0</td><td>48.3</td></tr><tr><td>ROIC, \%</td><td></td><td>15.0</td><td>15.0</td><td>15.0</td><td>15.0</td><td>15.0</td><td>15.0</td></tr><tr><td>CFROI, \%</td><td></td><td>22.1</td><td>18.0</td><td>13.8</td><td>9.4</td><td>4.8</td><td>13.8</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td colspan="5">ROIC is constant over asset lifetime.</td><td>ROIC = IRR</td></tr><tr><td></td><td></td><td colspan="5">CFROI decreases over asset lifetime.</td><td>CFROI &lt; IRR</td></tr></table>

1 At beginning of year.

When ROIC is constant, the asset provides a constant return over the initial investment, net of recovering the initial investment itself. Therefore, this return must also equal the IRR of the cash flows for the asset, or 15 percent. More precisely, the investment's ROIC equals the IRR if the earnings generated from the investment are proportional to the invested capital, net of accumulated depreciation, in each year of the investment's lifetime.

It is possible to generalize the result for a business consisting of a portfolio of five of these individual assets, which have remaining lifetimes of one, two, three, four, and five years, respectively (see the rightmost column in Exhibit 25.1). For this business, the operating cash flow, profit, and invested capital are a straightforward sum of the operating cash flow, profit, and invested capital for each year of the individual asset's lifetime (for example, operating cash flows for the business equal  $35 +$ 32 + $29 + $26 + $23 = $145). What holds for the assets will therefore also hold for the business as a whole, so its ROIC must equal an individual asset's ROIC and IRR of 15 percent. If this business wants to grow its earnings by, say, 10 percent, it will need to expand its net invested capital by 10 percent as well—requiring an investment outlay of 30 in this case. The IRR on that incremental investment for carbon-copy growth equals exactly the business's ROIC of 15 percent.

This means that the ROIC of a business (or company) is equal to the IRR of new investments if the operating earnings for the business are proportional to net invested capital. In these conditions, ROIC is a value-based measure of return on capital, even though it is based on accounting measures of earnings and capital.

# WHEN CFROI EQUALS IRR

CFROI is an alternative measure of return on capital based on cash flow rather than profit and book value. For any given year, CFROI is defined as the discount rate for which the present value of that year's operating cash flow (as an  $N$ -year annuity) equals gross invested capital at the beginning of the year, where  $N$  is the lifetime of the underlying asset. The basic formula for calculating CFROI in a given year  $T$  is

$$
\mathrm {G I C} _ {T} = \sum_ {t = 1} ^ {N} \frac {\mathrm {O C F} _ {T}}{\left(1 + \mathrm {C F R O I}\right) ^ {t}}
$$ where  $\mathrm{GIC}_T =$  gross invested capital at the beginning of year  $T$


$\mathrm{OCF}_T =$  operating cash flow in year  $T$

EXHIBIT 25.2 Returns When Cash Flows Are Proportional to Gross Invested Capital

<table><tr><td rowspan="2">$</td><td colspan="6">Individual asset</td></tr><tr><td>Year 0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Operating cash flow</td><td>(100)</td><td>29</td><td>29</td><td>29</td><td>29</td><td>29</td></tr><tr><td>Depreciation</td><td></td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td><td>(20)</td></tr><tr><td>Operating profit</td><td></td><td>9</td><td>9</td><td>9</td><td>9</td><td>9</td></tr><tr><td>Gross invested capital1</td><td></td><td>100</td><td>100</td><td>100</td><td>100</td><td>100</td></tr><tr><td>Cumulative depreciation1</td><td></td><td>-</td><td>(20)</td><td>(40)</td><td>(60)</td><td>(80)</td></tr><tr><td>Net invested capital1</td><td></td><td>100</td><td>80</td><td>60</td><td>40</td><td>20</td></tr><tr><td>IRR, \%</td><td>13.8</td><td></td><td></td><td></td><td></td><td>13.8</td></tr><tr><td>Cash return on gross invested capital, \%</td><td></td><td>29.0</td><td>29.0</td><td>29.0</td><td>29.0</td><td>29.0</td></tr><tr><td>Cash return on net invested capital, \%</td><td></td><td>29.0</td><td>36.3</td><td>48.3</td><td>72.5</td><td>145.0</td></tr><tr><td>ROIC, \%</td><td></td><td>9.0</td><td>11.3</td><td>15.0</td><td>22.5</td><td>45.0</td></tr><tr><td>CFROI, \%</td><td></td><td>13.8</td><td>13.8</td><td>13.8</td><td>13.8</td><td>13.8</td></tr><tr><td></td><td></td><td colspan="4">ROIC increases over asset lifetime.</td><td>ROIC &gt; IRR</td></tr><tr><td></td><td></td><td colspan="4">CFROI is constant over asset lifetime.</td><td>CFROI = IRR</td></tr></table>

1 At beginning of year.

Any residual value of the asset should be included as an additional cash flow for year  $N$  and discounted at CFROI.

We illustrate CFROI as an alternative measure of returns by showing financial projections for an asset whose economics are different from those of the prior example. In this case, shown in Exhibit 25.2, the operating cash flows are proportional to gross invested capital and constant over the asset's lifetime, at 29 per year. The IRR for the investment is 13.8 percent and exactly equals the CFROI, which is constant over the asset's lifetime. Take, for example, year 2. We estimate the asset's CFROI by solving the following equation:

$$

\$ 100 = \frac{\$ 29}{(1 + \text{CFROI})^{1}} +\ldots +\frac{\$ 29}{(1 + \text{CFROI})^{5}}\Rightarrow \text{CFROI} = 13.8\%

$$

In fact, when the operating cash flow is constant over an asset's lifetime, CFROI must be equal to the IRR, as follows from the preceding formula. We could also say that CFROI equals the IRR of an investment if the operating cash flows generated are proportional to the gross invested capital (before accumulated depreciation).

Let's generalize the results again to a business consisting of five such individual assets, with remaining lifetimes of one, two, three, four, and five years (the right column in Exhibit 25.2). As in the prior example, the business's overall cash flows, earnings, and invested capital derive from those of the underlying five assets. The business's CFROI and IRR therefore equal the CFROI and IRR of each individual asset. If this business wants to grow its cash flows by 10 percent, it must expand its gross invested capital by 10 percent as well—an investment outlay of 50. The IRR on that incremental investment is now equal to its CFROI of 13.8 percent. Note that the business ROIC of 15 percent overestimates the IRR in this case. In general, the business (or company) CFROI is exactly equal to the IRR of new investments if operating cash flows for the business are proportional to gross invested capital.


# CHOOSING BETWEEN ROIC AND CFROI

To understand when to use ROIC and when to use CFROI, let's now compare the two examples in Exhibits 25.1 and 25.2 in more detail. Note that the businesses (not the assets) in both examples have identical ROIC, CFROI, earnings (operating profit), operating cash flow, and invested capital. Nevertheless, the underlying economics and value creation are quite different, as is the "right" measure for return on capital.

For the example in Exhibit 25.1, ROIC is the right measure of return on capital for the asset and the business, equaling the IRR of 15 percent. The reason: the cash flow pattern over the lifetime of the asset leads to earnings that are proportional to net invested capital in each year. At the asset level, this results in a constant ROIC and a changing CFROI over the asset's lifetime. At the business level, it implies that aggregate earnings and net invested capital grow in line with each other (assuming that growth comes only from adding more assets to the business).

For the example in Exhibit 25.2, CFROI is the right measure and equal to the IRR of 13.8 percent, because now the operating cash flows are proportional to gross invested capital. At the asset level, CFROI is constant over the asset's lifetime, and ROIC continues to increase as the capital base is depreciated. For the business, this means that aggregate operating cash flows and gross invested capital grow in line with each other.

These two examples illustrate that there is no single right measure of return on capital. Depending on the earnings and cash flow pattern of the investment projects underlying a business, ROIC or CFROI can be equal to IRR—in theory. The fact that CFROI is calculated based on cash components does not mean it is always superior to the accounting-based ROIC.

# Theoretical Trade-Offs

Although the examples were stylized, it is possible to derive general insights about the theoretical trade-offs between ROIC and CFROI. CFROI is more appropriate in businesses where investments are very lumpy. As two extreme examples, think of infrastructure projects or hydroelectric power plants. These require very substantial up-front investments that generate relatively stable cash flows without significant investments in maintenance or overhauling over many years or even decades. Although accounting conventions may require that the assets be depreciated, their net capital base has little bearing on the capacity to generate cash flows. ROIC often rises to levels that are unrelated to the project's economic return (IRR), but CFROI will be much closer to the IRR because the operating cash flows are very stable.


In contrast, ROIC is likely to be a better estimate of the underlying IRR in businesses where investments occur in a more regular and smoother pattern because they are needed to support the earnings. As an example, think of retail supermarkets or a manufacturing company with many plants and pieces of equipment. These businesses require regular investments as management maintains, upgrades, and renews product lines and shop formats. In the periods between making such investments, pricing and earnings are likely to face pressure from competition with newer products or formats. As a result, the depreciated capital base is a reasonable approximation of the ability to generate earnings, making ROIC a better estimate of underlying IRR. In our experience, this is the case for most companies: maintenance and replacement investments are required on an ongoing basis to support the operating earnings.

# Practical Considerations

Apart from these theoretical considerations, some practical trade-offs exist between ROIC and CFROI. First, it is easier to estimate ROIC and its components, such as operating earnings and book value of invested capital, from standard financial reporting statements with some reorganization and adjustments (as described in Chapter 11). Once you have the components, ROIC is a straightforward ratio that most managers are familiar with. In contrast, CFROI requires a far more complex, iterative calculation that is not transparent to many managers.[5]

Because of the way CFROI is defined and calculated, interpreting it also is less straightforward than in the case of ROIC. For example, it follows that to double the ROIC, managers would need to double their profit margin or double their capital turnover. With this logic, any reductions in inventory levels or costs of raw materials, for example, translate easily into ROIC improvements. In contrast, doubling capital turnover does not necessarily translate to doubling CFROI, because it is not a simple ratio. For the same reason, deriving the CFROI for a division or corporate group does not easily follow from the CFROI calculations of the underlying business units. A group's ROIC, however, is simply the capital-weighted average of the returns on invested capital of the underlying businesses.


An additional feature of CFROI is that, in its precise definition, it includes an adjustment for the effect of inflation on returns. The gross invested capital is indexed for inflation over the years dating to the initial purchase of the assets involved. For most economies in North America and Western Europe, this usually does not make a big difference. But the impact of the adjustment is significant when inflation is more than a couple of percentage points per year. In some cases, we found that this adjustment was the key source of difference between a company's CFROI and ROIC. However, adjustments for inflation can also be made when calculating ROIC. Basically, the adjustment involves using current-year dollars to express depreciation and property, plant, and equipment (PP&E). Adjusting ROIC for inflation and using CFROI with its inflation adjustment typically lead to similar results across widely different inflation rates and asset lifetimes, as illustrated for a range of stylized examples in Exhibit 25.3. (See Chapter 26 for more details about inflation's impact on ROIC and cash flows.)

Differences between ROIC and CFROI could be sizable for specific businesses, depending on their economics, as we saw in the preceding two examples. Nevertheless, when we analyzed 1,000 U.S. companies between 2003

EXHIBIT 25.3 Returns under Inflation: ROIC vs. CFROI

<table><tr><td rowspan="2">Inflation rate</td><td rowspan="2">Asset life, years</td><td colspan="3">Return after 20 years</td></tr><tr><td>ROIC</td><td>CFROI1</td><td>Inflation-adjusted ROIC</td></tr><tr><td>0</td><td>5</td><td>15</td><td>14</td><td>15</td></tr><tr><td>2</td><td>5</td><td>17</td><td>13</td><td>12</td></tr><tr><td>4</td><td>5</td><td>19</td><td>13</td><td>11</td></tr><tr><td>6</td><td>5</td><td>22</td><td>13</td><td>10</td></tr><tr><td>8</td><td>5</td><td>24</td><td>12</td><td>10</td></tr><tr><td>10</td><td>5</td><td>26</td><td>12</td><td>10</td></tr><tr><td>0</td><td>10</td><td>15</td><td>13</td><td>15</td></tr><tr><td>2</td><td>10</td><td>19</td><td>12</td><td>11</td></tr><tr><td>4</td><td>10</td><td>23</td><td>12</td><td>10</td></tr><tr><td>6</td><td>10</td><td>27</td><td>11</td><td>10</td></tr><tr><td>8</td><td>10</td><td>31</td><td>11</td><td>10</td></tr><tr><td>10</td><td>10</td><td>35</td><td>11</td><td>10</td></tr><tr><td>0</td><td>20</td><td>17</td><td>12</td><td>17</td></tr><tr><td>2</td><td>20</td><td>21</td><td>12</td><td>15</td></tr><tr><td>4</td><td>20</td><td>25</td><td>12</td><td>14</td></tr><tr><td>6</td><td>20</td><td>30</td><td>12</td><td>13</td></tr><tr><td>8</td><td>20</td><td>35</td><td>11</td><td>13</td></tr><tr><td>10</td><td>20</td><td>39</td><td>11</td><td>13</td></tr></table>

1 CFROI includes an inflation adjustment.

# EXHIBIT 25.4 Pretax ROIC and CFROI per Sector, 2003-2013

10-year average of median ROIC and CFROI by sector,  ${}^{1}\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/69ab1b76-099f-46d2-9341-d47072e8fd93/20465db8fef8f61e7d314ff69ae7fc290617b78fd8bd80ea90fb18a467db11ab.jpg)
1 For the 1,000 largest U.S. companies by market capitalization.

and 2013, we found that, on average, these differences were not very large (see Exhibit 25.4). For all but one of the ten nonfinancial sectors we considered, the spread between the average ROIC and CFROI was three percentage points or less when taking both ROIC and CFROI without inflation adjustments. The difference between the highest- and lowest-quartile ROIC in a sector was typically four times larger than this spread. Thus, your decision whether to measure a business's return on capital by using ROIC or CFROI is unlikely to make a difference in what the result tells you about the company's relative performance versus that of sector peers.

# FLAWS OF OTHER CASH RETURNS ON CAPITAL

In practice, we see managers and analysts apply other measures of return on capital, not just ROIC and CFROI. Sometimes the only difference is in the name. For example, most definitions of return on capital employed (ROCE) are fairly similar to ROIC and calculated as operating earnings divided by operating capital employed—although the exact definition of earnings and capital varies across applications.


Another set of measures, based on cash return on capital, is fundamentally different. They appear under various names, such as cash return on capital invested (CROCI), cash return on gross investment (CROGI), and cash return on assets (CashROA). These cash returns are typically calculated as operating cash flow divided by invested capital:6

$$

\begin{array}{l} \text {C a s h R e t u r n o n N e t I n v e s t e d C a p i t a l} = \frac {\text {O p e r a t i n g C a s h F l o w}}{\text {N e t I n v e s t e d C a p i t a l}} \\ \text {C a s h R e t u r n o n G r o s s I n v e s t e d C a p i t a l} = \frac {\text {O p e r a t i n g C a s h F l o w}}{\text {G r o s s I n v e s t e d C a p i t a l}} \\ \end{array}

$$

Unfortunately, such cash returns are flawed measures of value creation, as they do not equal the underlying IRR. In Exhibits 25.1 and 25.2, the cash returns on both gross and net invested capital overestimate the true underlying IRR. The main reason is that these cash returns on capital fail to account for the charge of depleting the underlying capital, because they ignore depreciation charges. $^{7}$  For the cash return on invested capital net of cumulative depreciation, the error is magnified, as the denominator becomes smaller over the lifetime of the asset. This makes the overestimation of IRR even worse, as indicated by the results for operating cash flow divided by net invested capital in Exhibits 25.1 and 25.2. Because of these variances from IRR, we advise against using cash returns on capital as measures of business performance.

# SUMMARY

For most businesses, ROIC is a good measure of return on capital. It accurately reflects the economic return, as defined by the internal rate of return of the cash flows that the business generates. In addition, it is derived from information that is readily available from standard financial reports, and it is easy for managers to understand. For businesses with high up-front investments in capital that generate steady cash flows for many years, you can consider whether using CFROI justifies the additional effort and complexity relative to ROIC.

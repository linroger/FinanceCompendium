---
title: Chapter 20 - Taxes
parent_directory: Valuation- Measuring and Managing the Value of Companies Full/chapters
formatted: 2025-12-20 11:50:00 AM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - tax valuation
  - operating taxes
  - deferred taxes
  - cash tax rates
secondary_tags:
  - tax reconciliation
  - effective tax rate
  - statutory tax rate
  - valuation methodology
cssclasses: academia
---

# Taxes

A good valuation begins with good housekeeping. Reorganize the company's income statement and balance sheet into three categories: operating, nonoperating, and financing items. The reorganized statements can then be used to estimate return on invested capital (ROIC) and free cash flow (FCF), which in turn drive the company's valuation.

One line item that incorporates all three categories is taxes. In this chapter, we explore the role of operating taxes in valuation and discuss how to use the notes in the annual report to estimate operating taxes and the operating tax rate. Since some companies can defer a portion of their reported taxes over long periods, we'll also go through the steps for converting operating taxes to operating cash taxes and, as a result, how to incorporate deferred taxes into a valuation.

```d2
tax valuation process: {
  shape: flowchart
  
  reorganize_statements: "Reorganize Income Statement and Balance Sheet"
  estimate_operating_taxes: "Estimate Operating Taxes from Reconciliation Table"
  convert_to_cash_taxes: "Convert to Operating Cash Taxes (Adjust for Deferred Taxes)"
  incorporate_into_valuation: "Incorporate into Valuation (NOPAT, FCF)"
  
  reorganize_statements -> estimate_operating_taxes -> convert_to_cash_taxes -> incorporate_into_valuation
}
```

# ESTIMATING OPERATING TAXES

The operating tax rate is the tax rate a company would pay if the company generated only operating income and was financed entirely with equity. It is the best tax rate for estimating net operating profit after taxes (NOPAT), a key component of free cash flow. The operating tax rate is better suited than two well-known alternatives, the statutory tax rate and the effective tax rate. The statutory tax rate, which equals the domestic tax rate on a dollar of income, fails to account for differences in foreign tax rates and ongoing, operating-related tax credits. For a company that actively manages its tax burden, the statutory tax rate will often overestimate the taxes paid. In contrast, the effective tax rate, which equals income taxes divided by pretax income, includes too many nonoperating items, such as one-time audit resolutions. Because of these one-time nonoperating items, the effective tax rate can be quite volatile, making accurate tax forecasts challenging.

To determine operating taxes, it is necessary to remove the effects of non-operating and financing items from taxes reported on the income statement. This can be challenging because of the complexity of tax accounting and the need for data not often disclosed. We'll introduce a hypothetical company to show several ways to estimate operating taxes, as each approach requires assumptions to fill in gaps left by public financial statements.

To illuminate these trade-offs, we begin by estimating operating taxes when you have complete information, including information that is not typically disclosed to the public. Exhibit 20.1 presents the internal financial statements of a hypothetical global company, TaxCo, for a single year. TaxCo generated  \$2.2 billion in domestic earnings before interest, taxes, and amortization (EBITA) and\$ 600 million in EBITA from foreign operations. TaxCo amortizes domestically held intangible assets of \$400 million per year. The company finances operations with debt raised in its home country and deducts interest of \$600 million on its domestic statements. It recently sold an asset held in a foreign country and recorded a gain of 100 million in that country. TaxCo pays a statutory tax rate of 25 percent on earnings before taxes at home and 15 percent on foreign operations.

TaxCo generates  \$40 million in ongoing research and development (R&D) tax credits (credits determined by the amount and location of the company's R&D activities), which are expected to grow as the company grows. It also has\$ 24 million in one-time tax credits—in this case, a tax rebate from the successful resolution of a historical tax dispute. All told, TaxCo paid an effective tax rate on pretax profits of 17.9 percent, well below its statutory domestic rate of 25 percent.

EXHIBIT 20.1 TaxCo: Income Statement by Geography

<table><tr><td colspan="6">$ million</td></tr><tr><td></td><td>Domestic subsidiary</td><td>Foreign subsidiary</td><td>R&amp;D tax credits</td><td>Resolution of tax dispute</td><td>Consolidated</td></tr><tr><td>EBIT1</td><td>2,200</td><td>600</td><td>-</td><td>-</td><td>2,800</td></tr><tr><td>Amortization</td><td>(400)</td><td>-</td><td>-</td><td>-</td><td>(400)</td></tr><tr><td>EBIT1</td><td>1,800</td><td>600</td><td>-</td><td>-</td><td>2,400</td></tr><tr><td>Interest expense</td><td>(600)</td><td>-</td><td></td><td></td><td>(600)</td></tr><tr><td>Gains on asset sales</td><td>-</td><td>100</td><td>-</td><td>-</td><td>100</td></tr><tr><td>Pretax profit</td><td>1,200</td><td>700</td><td>-</td><td>-</td><td>1,900</td></tr><tr><td>Income taxes</td><td>(300)</td><td>(105)</td><td>40</td><td>24</td><td>(341)</td></tr><tr><td>Net income</td><td>900</td><td>595</td><td>40</td><td>24</td><td>1,559</td></tr><tr><td colspan="6">Tax rates, \%</td></tr><tr><td>Statutory tax rate</td><td>25.0</td><td>15.0</td><td></td><td></td><td></td></tr><tr><td>Effective tax rate</td><td></td><td></td><td></td><td></td><td>17.9</td></tr></table>

1 EBITA is earnings before interest, taxes, and amortization; EBIT is earnings before interest and taxes.

EXHIBIT 20.2 TaxCo: Operating Taxes and NOPAT by Geography

<table><tr><td colspan="6">$ million</td></tr><tr><td></td><td>Domestic subsidiary</td><td>Foreign subsidiary</td><td>R&amp;D tax credits</td><td>Resolution of tax dispute</td><td>Consolidated</td></tr><tr><td>EBITA</td><td>2,200</td><td>600</td><td>-</td><td>-</td><td>2,800</td></tr><tr><td>Operating taxes</td><td>(550)</td><td>(90)</td><td>40</td><td>-</td><td>(600)</td></tr><tr><td>NOPAT1</td><td>1,650</td><td>510</td><td>-</td><td>-</td><td>2,160</td></tr><tr><td>Tax rates, \%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Statutory tax rate</td><td>25.0</td><td>15.0</td><td></td><td></td><td></td></tr><tr><td>Operating tax rate</td><td></td><td></td><td></td><td></td><td>21.4</td></tr></table>

1 Net operating profit after taxes.

As noted earlier, operating taxes are the taxes that would be paid by a company with only operating income and financed entirely with equity. Exhibit 20.2 calculates operating taxes and NOPAT for TaxCo. To determine operating taxes, apply the appropriate statutory tax rate to each jurisdiction's EBITA. (Although the interest tax shield is valuable, it is typically valued not as part of income, but as part of the weighted average cost of capital or valued separately in adjusted present value. And since amortization is typically nondeductible for tax purposes, it has no value. This is the rationale for the calculation being a function of EBITA.) In this case, multiply 25 percent by domestic EBITA of  \$2.2 billion and 15 percent by\$ 600 million in foreign EBITA, which equals statutory taxes of \$640 million. Since the \$40 million in research and development (R&D) credits are related to operations and are expected to grow as the company grows, they are treated as operating. As a result, the company pays \$600 million in operating taxes. To find the operating tax rate, divide operating taxes by global EBITA of \$2.8 billion, for a rate of 21.4 percent.

Note how the statutory, effective, and operating taxes differ. The statutory tax rate on domestic income is 25.0 percent, the effective tax rate (shown in Exhibit 20.1) equals 17.9 percent, and the operating tax rate is 21.4 percent. The operating tax rate is the best tax rate for converting EBITA to NOPAT.

# Using Public Statements to Estimate Operating Taxes

In practice, companies do not publicly disclose income by country. Instead, you must rely on a company-wide income statement and a tax reconciliation table. The tax reconciliation table can be found in the notes that accompany the financial statements. It explains why a company's reported taxes do not equal the product of pretax profit times the statutory rate. At the company's discretion, the table can express amounts in percentages or in the company's reporting currency.

EXHIBIT 20.3 TaxCo: Operating Taxes Using a Tax Table Reported in Percent

<table><tr><td rowspan="2" colspan="2">Tax reconciliation table</td><td colspan="2">Operating taxes</td></tr><tr><td>$ million</td><td></td></tr><tr><td>Statutory tax rate</td><td>25.0\%</td><td>EBITA</td><td>2,800</td></tr><tr><td>Foreign-income adjustment</td><td>(3.7\%)</td><td>× Statutory tax rate</td><td>25.0\%</td></tr><tr><td>R&amp;D tax credits</td><td>(2.1\%)</td><td>= Statutory taxes on EBITA</td><td>700</td></tr><tr><td>Resolution of tax dispute</td><td>(1.3\%)</td><td></td><td></td></tr><tr><td>Effective tax rate</td><td>17.9\%</td><td>Foreign-income adjustment</td><td>(3.7\%)</td></tr><tr><td></td><td></td><td>R&amp;D tax credit</td><td>(2.1\%)</td></tr><tr><td></td><td></td><td>Cumulative adjustments</td><td>(5.8\%)</td></tr><tr><td></td><td></td><td>× Pretax profit</td><td>1,900</td></tr><tr><td></td><td></td><td>= Operating adjustments</td><td>(110)</td></tr><tr><td></td><td></td><td>Operating taxes</td><td>590</td></tr></table>

To illustrate how such a table denoted in percentages explains the difference between statutory and effective rates, the left side of Exhibit 20.3 presents the tax reconciliation table for TaxCo. Because foreign income was taxed at 15 percent, TaxCo paid  \$70 million less in taxes than if it had been taxed at the domestic rate of 25 percent (i.e., it paid\$ 105 million in taxes at 15 percent, rather than \$175 million at 25 percent). To report this difference as a percent of pretax profit, the tax reconciliation table divides the \$70 million by pretax profit of 1.9 billion to obtain 3.7 percent of pretax income. Each of the adjustments is divided by pretax profit to determine the corresponding percentages in the reconciliation table.

The right side of Exhibit 20.3 shows how to use the tax reconciliation table to estimate operating taxes in millions of dollars. Start by calculating statutory taxes on EBITA. Next, work through the table looking for line items that are ongoing and related to operations. Finally, add the statutory taxes on EBITA to the operating-related adjustments. The following paragraphs take a closer look at these steps.

To calculate statutory taxes on EBITA for TaxCo, multiply EBITA by the statutory tax rate: 25 percent times  \ {2.8}  billion equals  \$ {700}  million.

Next, search the tax reconciliation table for tax adjustments that are ongoing and related to operations. The most common operating adjustments are state and foreign taxes. To determine if other adjustments are operating, look for consistency over time, and use the account description. Some account descriptions are cryptic, so an online search may shed light on the adjustment. For TaxCo, we classify R&D tax credits as operating and the resolution of past tax disputes as nonoperating.

To calculate cumulative operating adjustments for TaxCo, sum the foreign-income adjustment (3.7 percent) and the R&D tax credit (2.1 percent), and multiply the results by pretax profit, not EBITA. Use pretax profit because the company creates the tax reconciliation table using pretax profit, not EBITA.

EXHIBIT 20.4 TaxCo: Operating Taxes Using a Tax Table Reported in Dollars

<table><tr><td colspan="4">$ million</td></tr><tr><td colspan="2">Tax reconciliation table</td><td colspan="2">Operating taxes</td></tr><tr><td></td><td>Pretax profits at the statutory rate</td><td>475</td><td>475</td></tr><tr><td></td><td>Foreign-income adjustment</td><td>(70)</td><td>/ Pretax profit</td></tr><tr><td></td><td>R&amp;D tax credits</td><td>(40)</td><td>= Statutory tax rate on EBITA</td></tr><tr><td></td><td>Resolution of tax dispute</td><td>(24)</td><td>25.0\%</td></tr><tr><td></td><td>Income taxes</td><td>341</td><td>× EBITA</td></tr><tr><td></td><td></td><td></td><td>2,800</td></tr><tr><td></td><td></td><td></td><td>700</td></tr><tr><td></td><td></td><td></td><td>(70)</td></tr><tr><td></td><td></td><td></td><td>(40)</td></tr><tr><td></td><td></td><td></td><td>590</td></tr></table>

For TaxCo, operating adjustments equal  \$110 million. Subtracting\$ 110 million from  \$700 million produces operating taxes of\$ 590 million.

While this method is effective, it is only an estimate. In our example, the calculation of  \$590 million using public reports does not match the internal results of\$ 600 million generated in Exhibit 20.2. The difference is explained by the 100 million in gains that were taxed at 15 percent, not at the statutory rate of 25 percent. Had gains been taxed at 25 percent, the methodology in Exhibit 20.3 would have estimated operating taxes without error. Without access to internal financial statements, however, our analysis is limited.

If a company denotes the tax reconciliation table in its home currency, the process for calculating operating taxes follows the same principles, but differs slightly in implementation. The left side of Exhibit 20.4 presents the tax reconciliation table for TaxCo in millions of dollars. The first line item represents what the company would pay if pretax profit were taxed at the statutory tax rate. Often the company's statutory tax rate is reported in the text accompanying the table. However, if it is not, divide the line item by pretax profit to estimate the statutory tax rate.

With the statutory tax rate in hand, multiply EBITA by the statutory tax rate to determine statutory taxes on EBITA (see the right side of Exhibit 20.4). Next, work through the tax table for other operating adjustments. Since operating adjustments are already denoted in dollars, they can be transferred directly to the calculation of operating taxes. The process may vary, but our estimate of operating taxes remains unchanged.

EXHIBIT 20.5 Walmart: Tax Reconciliation Table

<table><tr><td>\%</td><td>2016</td><td>2017</td><td>2018</td></tr><tr><td>U.S. statutory tax rate1</td><td>35.0</td><td>33.8</td><td>21.0</td></tr><tr><td>U.S. state income taxes</td><td>1.7</td><td>1.8</td><td>3.3</td></tr><tr><td>Impact of 2017 tax act</td><td></td><td></td><td></td></tr><tr><td>One-time transition tax</td><td>—</td><td>12.3</td><td>3.6</td></tr><tr><td>Deferred tax effects</td><td>—</td><td>(14.1)</td><td>(0.7)</td></tr><tr><td>Income taxed outside the United States</td><td>(4.5)</td><td>(6.3)</td><td>(3.5)</td></tr><tr><td>Disposition of Walmart Brazil</td><td>—</td><td>—</td><td>6.7</td></tr><tr><td>Valuation allowance</td><td>—</td><td>2.1</td><td>6.4</td></tr><tr><td>Repatriated international earnings</td><td>(1.0)</td><td>(0.1)</td><td>0.8</td></tr><tr><td>Federal tax credits</td><td>(0.6)</td><td>(0.9)</td><td>(1.2)</td></tr><tr><td>Other, net</td><td>(0.3)</td><td>1.8</td><td>1.0</td></tr><tr><td>Effective income tax rate</td><td>30.3</td><td>30.4</td><td>37.4</td></tr></table>

1 Walmart ends its fiscal year on January 31. Therefore, 2017 includes 11 months at a  $35\%$  statutory tax rate and 1 month at  $21\%$ .

Operating Taxes at Walmart To provide a real-world example, Exhibit 20.5 presents the tax reconciliation table for the discount retailer Walmart. In its tax reconciliation table, Walmart expresses its adjustments to the statutory tax rate as percentages. As is the case for all American companies during this period, Walmart's tax reconciliation table includes several adjustments related to recent tax law changes in the United States. The 2017 Tax Cuts and Jobs Act (TCJA) reduced the U.S. corporate income tax rate from 35 percent to 21 percent in 2018.[2] Since Walmart ends its fiscal year on January 31 of the following year, the 2017 fiscal year includes one month of profit at the new tax rate.

In Exhibit 20.6, we use the tax reconciliation table to estimate operating taxes for Walmart using the process described earlier in this section. We do not present the company's income statement but use EBITA and pretax profit as needed. The following paragraphs detail these steps.

To begin, multiply the statutory tax rate by EBITA. In 2018, for example, statutory taxes on EBITA equaled 4,611 million for Walmart. Next, adjust statutory taxes for other operating items. The first two operating adjustments in this step are state and foreign income taxes. While we could have netted these two percentages directly against the statutory rate for simplicity, we instead convert them to dollar amounts, using pretax profit. We do this because the 2018 write-off of Brazilian operations depressed pretax profit, causing the adjustment for state taxes to spike in percentage terms (see Exhibit 20.5). We also treat federal tax credits as operating. While Walmart does not disclose the nature of these credits, they appear with consistency, so we consider them ongoing.

EXHIBIT 20.6 Walmart: Operating Taxes

<table><tr><td>$ million</td><td>2016</td><td>2017</td><td>2018</td></tr><tr><td>Statutory tax rate</td><td>35.0\%</td><td>33.8\%</td><td>21.0\%</td></tr><tr><td>× EBITA</td><td>22,764</td><td>20,437</td><td>21,957</td></tr><tr><td>= Statutory taxes on EBITA</td><td>7,967</td><td>6,908</td><td>4,611</td></tr><tr><td>U.S. state income taxes</td><td>1.7\%</td><td>1.8\%</td><td>3.3\%</td></tr><tr><td>Income taxed outside the United States</td><td>(4.5\%)</td><td>(6.3\%)</td><td>(3.5\%)</td></tr><tr><td>Federal tax credits</td><td>(0.6\%)</td><td>(0.9\%)</td><td>(1.2\%)</td></tr><tr><td>Other operating taxes</td><td>(3.4\%)</td><td>(5.4\%)</td><td>(1.4\%)</td></tr><tr><td>× Earnings before taxes (EBT)</td><td>20,497</td><td>15,123</td><td>11,460</td></tr><tr><td>= Other operating taxes</td><td>(697)</td><td>(817)</td><td>(160)</td></tr><tr><td>Operating taxes</td><td>7,271</td><td>6,091</td><td>4,451</td></tr><tr><td>Operating tax rate1</td><td>31.9\%</td><td>29.8\%</td><td>20.3\%</td></tr></table>

1 Operating taxes divided by EBITA.

We treat the remaining adjustments in Exhibit 20.5 as nonoperating. These include one-time taxes related to the reduction in the U.S. tax rate, the disposition in Brazil, and repatriation of past earnings. Because they are nonoperating, they do not factor into the calculation of operating taxes and the operating tax rate in Exhibit 20.6.

On an aggregate basis, the three adjustments included in Exhibit 20.6 lower statutory taxes on EBITA by 1.4 percentage points in 2018. Multiplying this percentage by earnings before taxes gives us a negative adjustment of  \$160 million, resulting in operating taxes of\$ 4,451 million. Dividing the amount of operating taxes by EBITA of 21,957 million leads to an operating tax rate of 20.3 percent in 2018, slightly below the statutory rate of 21 percent.

# CONVERTING OPERATING TAXES TO OPERATING CASH TAXES

In the previous section, we estimated operating taxes on an accrual basis. For most companies, especially growing companies, the taxes reported on the income statement will not reflect the actual cash taxes paid, because of differences in accounting rules versus tax rules. For instance, tax rules allow for accelerated depreciation of physical assets, whereas financial accounting typically uses straight-line depreciation. With higher expenses and lower pretax profits on its tax books, companies can significantly delay or perhaps even perpetually postpone paying accrual-based taxes. For companies that consistently defer or prepay taxes, we recommend using cash-based operating taxes, which we call operating cash taxes. (In the case of low-growth companies, deferred-tax accounts may rise and fall unpredictably. If the operating

EXHIBIT 20.7 Walmart: Deferred-Tax Assets and Liabilities

<table><tr><td>$ million</td><td>2017</td><td>2018</td></tr><tr><td>Deferred-tax assets</td><td></td><td></td></tr><tr><td>Loss and tax credit carryforwards</td><td>1,989</td><td>2,964</td></tr><tr><td>Accrued liabilities</td><td>2,482</td><td>2,135</td></tr><tr><td>Share-based compensation</td><td>217</td><td>245</td></tr><tr><td>Other</td><td>1,251</td><td>1,131</td></tr><tr><td>Total deferred-tax assets</td><td>5,939</td><td>6,475</td></tr><tr><td>Valuation allowances</td><td>(1,843)</td><td>(2,448)</td></tr><tr><td>Deferred-tax assets, net of allowances</td><td>4,096</td><td>4,027</td></tr><tr><td>Deferred-tax liabilities</td><td></td><td></td></tr><tr><td>Accelerated depreciation1</td><td>(3,954)</td><td>(4,175)</td></tr><tr><td>Acquired intangibles</td><td>(401)</td><td>(2,099)</td></tr><tr><td>Inventory</td><td>(1,153)</td><td>(1,354)</td></tr><tr><td>Other</td><td>(540)</td><td>(899)</td></tr><tr><td>Total deferred-tax liabilities</td><td>(6,048)</td><td>(8,527)</td></tr><tr><td>Deferred-tax assets, net of liabilities</td><td>(1,952)</td><td>(4,500)</td></tr></table>

1 Reported as property and equipment in the annual report.

cash tax rate is volatile, do not adjust for deferrals in order to benchmark historical performance. Instead, use the operating tax rate on an accrual basis.)

To convert operating taxes to operating cash taxes, start with operating taxes and add the increase (or subtract the decrease) in operating-related deferred-tax assets net of deferred-tax liabilities. Since deferred taxes on the balance sheet include both operating and nonoperating items, we need to separate them. To do this, search the notes for a detailed listing of deferred taxes.

Exhibit 20.7 presents the deferred-tax table for Walmart, found in note 9 of the company's annual report. Deferred-tax assets (DTAs) are presented in the upper portion of the table. Walmart recognizes a valuation allowance against tax assets because some tax assets are unlikely to be realized. In the lower portion of the table are deferred-tax liabilities (DTLs). The table concludes by netting deferred-tax liabilities against deferred-tax assets.

Exhibit 20.8 reorganizes deferred-tax assets and liabilities into operating and nonoperating items. Walmart has four deferred-tax accounts related to operations: accrued liabilities, share-based compensation, accelerated depreciation, and inventory. One of these, accrued liabilities, includes things like membership fees, which are collected from the customer upfront but recorded as income over the life of the membership. The government recognizes income when the cash is collected, but the accounting statements recognize income over

EXHIBIT 20.8 Walmart: Reorganization of Deferred-Tax Accounts

<table><tr><td>$ million</td><td>2017</td><td>2018</td></tr><tr><td>Operating deferred-tax assets (DTAs), net of liabilities (DTLs)</td><td></td><td></td></tr><tr><td>Accrued liabilities</td><td>2,482</td><td>2,135</td></tr><tr><td>Share-based compensation</td><td>217</td><td>245</td></tr><tr><td>Accelerated depreciation</td><td>(3,954)</td><td>(4,175)</td></tr><tr><td>Inventory</td><td>(1,153)</td><td>(1,354)</td></tr><tr><td>Operating DTAs, net of DTLs</td><td>(2,408)</td><td>(3,149)</td></tr><tr><td>Nonoperating deferred-tax assets (DTAs), net of liabilities (DTLs)</td><td></td><td></td></tr><tr><td>Loss and tax credit carryforwards</td><td>1,989</td><td>2,964</td></tr><tr><td>Valuation allowances</td><td>(1,843)</td><td>(2,448)</td></tr><tr><td>Loss carryforwards, net of allowances</td><td>146</td><td>516</td></tr><tr><td>Acquired intangibles</td><td>(401)</td><td>(2,099)</td></tr><tr><td>Other assets net of liabilities</td><td>711</td><td>232</td></tr><tr><td>Nonoperating DTAs, net of DTLs</td><td>456</td><td>(1,351)</td></tr><tr><td>DTAs, net of DTLs</td><td>(1,952)</td><td>(4,500)</td></tr></table> time, so a deferred-tax asset is created. As a result, for Walmart and for other growing companies in this situation, cash taxes are higher than reported on the income statement.

Another operating item, accelerated depreciation, is a deferred-tax liability. It is a liability as a result of Walmart using straight-line depreciation for its financial statements and accelerated depreciation for its tax returns (because larger depreciation expenses lead to lower pretax income and hence smaller taxes). For a growing company, accelerated depreciation is typically larger than straight-line depreciation, so accrual-based taxes typically overstate the actual cash taxes paid.

As shown in Exhibit 20.8, operating-related deferred-tax liabilities (such as those associated with accelerated depreciation) should be netted against deferred-tax assets (such as those related to accrued liabilities). This reorganization will make the components of operating taxes, the reorganized balance sheet, and ultimately the final valuation more transparent and less prone to error.

The remaining items in Exhibit 20.8 are classified as nonoperating. Walmart has three nonoperating deferred-tax accounts:

1. Loss carryforwards net of allowances. When a company loses money, it does not receive a cash reimbursement from the government (as negative taxes in the income statement would imply), but rather an offset toward future taxes. Given that these offsets are unrelated to current profitability, they should be analyzed and valued separately from operations. Because most of the offsets are trapped in a particular tax jurisdiction and unlikely to be realized, we net the valuation allowance against the loss carryforwards.
2. Acquired intangibles. When a company buys another company, such as Walmart's purchase of Flipkart in 2018, it recognizes intangible assets on its balance sheet for items such as patents and customer lists. Since these assets are amortized on the income statement but are not deductible for tax purposes, the company will record a deferred tax liability during the year of the acquisition and then draw down the liability as the intangible amortizes. Since operating taxes (computed in Exhibit 20.6) already exclude the amortization tax benefit in calculating NOPAT, no adjustment is required for deferrals related to these intangible assets. Instead, treat deferred taxes related to amortization of intangibles as nonoperating.
3. Other nonoperating assets net of liabilities. Other examples of nonoperating deferred taxes are deferred taxes related to pensions or convertible debt. Without further disclosure, classifying other accounts is tricky. Since we did not see a consistent pattern in other deferred taxes, we treat them as nonoperating.

To convert accrual-based operating taxes into operating cash taxes, add the increase in operating DTAs net of operating DTLs to operating taxes. In most cases, DTLs will exceed DTAs, so this is equivalent to subtracting the increase in operating DTLs net of operating DTAs. For Walmart, net operating DTLs grow from  \$2,408 million in 2017 to\$ 3,149 million in 2018, an increase of \$741 million (see Exhibit 20.8). Subtracting the \$741 million from 2018 operating taxes of \$4,451 million (computed in Exhibit 20.6) gives \$3,710 million of operating cash taxes:

<table><tr><td>$ million</td><td>2018</td></tr><tr><td>Operating taxes</td><td>4,451</td></tr><tr><td>Decrease (increase) in net operating DTLs</td><td>(741)</td></tr><tr><td>Operating cash taxes</td><td>3,710</td></tr></table>

The operating cash tax rate for 2018 equals operating cash taxes of  \$3,710 million divided by EBITA of\$ 21,957 million (given in Exhibit 20.6), which equals 16.9 percent. Because of the operating deferrals, operating cash taxes are approximately 17 percent lower than operating taxes on an accrual basis. The operating cash tax rate can be applied to forecasts of EBITA when projecting future free cash flow.

Once the estimation of cash taxes is complete, analyze the results. For instance, a significant portion of the change in operating-related deferred taxes for Walmart was driven by a decline in the accrued liabilities DTA. Ask yourself if the decline is sustainable or perhaps the result of a one-time reduction in benefits, such as new limitations on accrued vacation. Include only ongoing, operating-related differences in your forecast cash taxes and ultimately free cash flow.

# DEFERRED TAXES ON THE REORGANIZED BALANCE SHEET

One critical component of a well-structured valuation model is a properly reorganized balance sheet. As outlined in Chapter 11, the accounting balance sheet is reorganized into invested capital, nonoperating items, and sources of financing. Since operating DTAs and DTLs flow through NOPAT via cash taxes, they are considered equity equivalents. Why equity? When we convert accrual taxes to cash taxes, income is adjusted, and the difference becomes part of retained earnings, making it an equity equivalent. As discussed in Chapter 11, equity equivalents are not part of invested capital. If operating DTAs and DTLs were mistakenly included as part of invested capital, they could be double-counted in free cash flow: once in NOPAT via cash taxes and again when taking the change in invested capital.

Exhibit 20.9 presents a reorganized balance sheet that includes the deferred-tax items from Exhibit 20.8. Equity equivalents, which appear in the equity section of total funds invested (the right side of Exhibit 20.9), include all deferred-tax accounts, except for loss carryforwards and nondeductible intangibles, which appear elsewhere. In 2018, Walmart's equity equivalents equaled  \$2,917 million. This amount consists of negative\$ 3,149 million in operating DTAs net of DTLs, plus 232 million from other DTAs net of other DTLs. Because we record the result in the equity section (and not as an asset), we reverse the sign.

EXHIBIT 20.9 Walmart: Treatment of Deferred Taxes on the Reorganized Balance Sheet

<table><tr><td colspan="6">$ million</td></tr><tr><td></td><td>2017</td><td>2018</td><td></td><td>2017</td><td>2018</td></tr><tr><td>Total funds invested: Uses</td><td></td><td></td><td>Total funds invested: Sources</td><td></td><td></td></tr><tr><td>Working capital</td><td>(9,195)</td><td>(7,750)</td><td>Short-term borrowing</td><td>5,257</td><td>5,225</td></tr><tr><td>Property, plant, and equipment</td><td>114,818</td><td>111,395</td><td>Debt due within one year</td><td>4,405</td><td>2,605</td></tr><tr><td>Other assets, net of liabilities</td><td>5,396</td><td>7,341</td><td>Long-term debt</td><td>36,825</td><td>50,203</td></tr><tr><td>Invested capital, excluding intangibles</td><td>111,019</td><td>110,986</td><td>Debt and debt equivalents</td><td>46,487</td><td>58,033</td></tr><tr><td>Acquired intangibles</td><td>18,242</td><td>31,181</td><td>Deferred-tax liabilities, net1</td><td>1,697</td><td>2,917</td></tr><tr><td>Less: Nondeductible intangibles</td><td>(401)</td><td>(2,099)</td><td>Noncontrolling interest</td><td>2,953</td><td>7,138</td></tr><tr><td>Acquired intangibles, net of gross-up</td><td>17,841</td><td>29,082</td><td>Walmart shareholders&#x27; equity</td><td>77,869</td><td>72,496</td></tr><tr><td></td><td></td><td></td><td>Equity and equity equivalents</td><td>82,519</td><td>82,551</td></tr><tr><td>Invested capital, including intangibles</td><td>128,860</td><td>140,068</td><td></td><td></td><td></td></tr><tr><td>Tax loss carryforwards</td><td>146</td><td>516</td><td>Total funds invested</td><td>129,006</td><td>140,584</td></tr><tr><td>Total funds invested</td><td>129,006</td><td>140,584</td><td></td><td></td><td></td></tr></table>

1 Deferred-tax liabilities (net of assets), excluding tax loss carryforwards and deferred taxes related to acquired intangibles.

Two nonoperating deferred-tax accounts will not be classified as equity equivalents: tax loss carryforwards and deferred taxes related to acquired intangibles. The DTA for tax loss carryforwards ( \$516 million in 2018) shows up as a nonoperating asset and should be valued separately. The deferred-tax liability related to the acquired intangibles (\$ 2,099 million) is treated as an offset to the intangible asset itself, since the asset was grossed up for nondeductible amortization when the asset was created.

Why deduct deferred taxes for intangible assets from acquired intangibles? When a company buys another company, it typically recognizes as intangible assets those intangibles that are separable and identifiable (such as patents). These intangible assets are amortized over their estimated life on the GAAP income statement. But since, in most countries, the amortization is not deductible for tax purposes, a mismatch will occur. As a result, the company creates a deferred-tax liability when it makes the acquisition. To keep the balance sheet balanced, the company also increases intangible assets (known in accounting as "grossing up") by the size of the new DTL. Since the grossed-up intangible and DTL are purely accounting conventions and do not reflect cash transactions, they should be eliminated from the analysis of intangible assets and deferred taxes.

To apply this offset for 2018 in Exhibit 20.9, we subtract the deferred-tax liability of  \$2,099 million from acquired intangibles of\$ 31,181 million. As shown with the uses of funds on the left side the exhibit, this results in adjusted intangibles of 29,082 million. By calculating taxes on EBITA and subtracting the DTL from acquired intangibles, we have essentially converted accrual taxes to the cash taxes actually paid.

# Finding Deferred Taxes on the Balance Sheet

One practical difficulty with DTAs and DTLs is finding them. Sometimes they are explicitly listed on the balance sheet, but often they are embedded within other assets and other liabilities. Check the tax footnote for embedded items. For instance, in the notes to its 2018 annual report, Walmart discloses that it embeds 1,796 million in deferred-tax assets in "other long-term assets."

# VALUING DEFERRED TAXES

As noted in the previous section, any deferred-tax assets and liabilities classified as operating are incorporated into operating cash taxes. As such, they flow through NOPAT and free cash flow, so they are already embedded in the value of operations. In contrast, the valuation process for nonoperating deferred taxes depends on the particulars of the account.

The valuation of tax loss carryforwards depends on the information provided. If details are elusive, apply the reported valuation allowance against the loss carryforward. If information allows, apply past losses against projections of future income to estimate the timing of tax savings. Discount these cash flows at an appropriate cost of capital, such as the unlevered cost of equity. Be careful to check with local tax experts, since the statutes governing tax loss carryforwards are complex. Also keep in mind that tax loss carryforwards are country specific. A company with tax loss carryforwards in one country cannot use the benefit against profits in another country. For more on tax loss carryforwards and how to value them, see Chapter 16.

Deferred-tax liabilities related to acquired intangibles are netted against intangible assets and ignored. As described in the previous section, amortization is noncash and, in many countries, nondeductible. Thus, amortization and its corresponding deferred-tax liability have no effect on cash flow.[5]

To value the remaining deferred-tax accounts, including pensions and convertible debt, turn to their corresponding accounts. How you will do this depends on the nuances of the account. As an example, deferred taxes related to pensions arise when pension expense differs from the cash contribution. But the deferred-tax account recognized on the balance sheet reflects accumulated historical differences, not future tax savings. Therefore, to value the tax shield associated with unfunded pensions, multiply the current unfunded liability by the marginal tax rate (that is, the expected tax savings attributable to funding the shortfall). We can do this because under U.S. law, cash contributions to close gaps in funding are tax deductible.

Regardless of the deferred-tax account, never use the book value of the account to approximate value. Deferred-tax accounts reflect past differences between accounting and tax statements. They reflect neither future cash flows nor the present value of those flows.

# CLOSING THOUGHTS

Accounting for taxes is complex and can be daunting for even the most seasoned professional. However, given the number of companies whose operating tax rates consistently differ from both the statutory tax rate and the effective tax rate, a careful assessment of the operating tax rate is critical to an accurate valuation.

If you are confused about a particular line item in the tax reconciliation table, rely on the general principles of this book by asking two questions: First, is the item ongoing and related to core operations? Second, does the item materially change your perception of the company's performance or valuation? Finally, when converting from operating taxes to cash operating taxes, always assess whether the deferral rate is reasonable and can be continued. Perhaps an acquisition is causing an artificial jump in a deferred-tax account, making the deferral rate uncharacteristically high. If so, use long-term trends to forecast future deferral rates.

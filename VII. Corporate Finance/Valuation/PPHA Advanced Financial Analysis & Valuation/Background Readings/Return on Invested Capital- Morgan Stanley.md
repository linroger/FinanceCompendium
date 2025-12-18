---
parent_directory:
title: Counterpoint Global Insights
tags:
aliases:
parent_folder: Background Readings
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Counterpoint Global Insights
---

# Counterpoint Global Insights

# Return on Invested Capital

# How to Calculate ROIC and Handle Common Issues

CONSILIENT OBSERVER | October 6, 2022

# Introduction

A company creates value when the present value of the cash flows from its investments are greater than the cost of the investments. In other words, one dollar invested in the business becomes worth more than one dollar in the market. Discounting future cash flows makes sure the investment is attractive relative to the capital's opportunity cost, the return on the next best alternative.

Here is one way to think about it. A company invests  \$10,000 and the opportunity cost is 8 percent. In the first scenario, the investment generates cash flow of\$ 500 per year into perpetuity, which equals a value of $6,250 ($500/.08). This fails the one dollar test and illustrates why positive earnings do not always equate to value creation.

In the second scenario the business earns \$800 in cash flow per year, making the investment worth exactly the cost of $10,000 ($800/.08). This business is value neutral. Note that growth adds no value in this case. Growth is like the speed setting on a treadmill. You can turn it up or down but you are going nowhere.

In the final scenario, the firm produces cash flow of \$1,100. This passes the one dollar test with flying colors, as the \$10,000 is worth $13,750 ($1,100/.08). Growth is good. The faster the company can grow while sustaining these returns, the more value it creates.

Companies constantly make investments in capital expenditures, research and development (R&D), advertising, working capital, and mergers and acquisitions (M&A). Assessing the long-term payoff from investments can be tricky, even for relatively large and discrete deals such as M&A. $^{1}$

This report is about return on invested capital (ROIC), a financial metric that can help with assessing whether a company is creating value with its investments. We will discuss how to calculate ROIC, show how it is connected to free cash flow, economic profit, and growth, work through some of the practical challenges in estimating it properly, show empirical data, and review how the introduction of intangible investments can reshape the figures. All of these ideas will be illuminated through a case study.

# AUTHORS

Michael J. Mauboussin

michael.mauboussin@morganstanley.com

Dan Callahan, CFA

dan.callahan1@morganstanley.com

We will also address how to measure ROIC on the margin, apply it to divisional analysis, and use it to guide strategic analysis. Finally, we will illuminate ROIC's shortcomings. We will see that the answer that ROIC provides depends a lot on the question that is asked.

One way to consider whether the stock market recognizes ROIC is to examine the relationship between ROIC minus the weighted average cost of capital (WACC) and the ratio between the enterprise value and invested capital for a universe of public companies. Enterprise value is the sum of the market value of net debt and equity.

If a company has invested successfully, as reflected in a positive spread between ROIC and WACC, then we would expect the market to accord an enterprise value that is at a premium to the amount of invested capital. Academics have found this to be the case.[2] Exhibit 1 shows that this correlation, while not perfect, is a useful way to demonstrate that the market cares about ROIC.

Exhibit 1: The One Dollar Test for the Top 500 Companies by Sales, 2021  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/bd8613fe44bf83655c5036d24c758e1da0cfc7233a2d403586050188f34d305b.jpg)  
Source: FactSet and Counterpoint Global.  
Note: Top 500 by sales in the Russell 3000 excluding financials and real estate; Enterprise value as of 8/30/22; Winsorized at  $2^{nd}$  and  $98^{th}$  percentiles; Truncated axes for visualization.

Financial metrics are widely used in the managerial and investment communities. But not all measures are created equal. A good metric is one that is well defined in concept and corresponds with desired objectives. ROIC is straightforward in principle but requires numerous judgments in implementation. Shoddy calculations are common.

We recommend that investment organizations use a shared definition to make sure that figures are comparable across industries and companies. Investors who choose to deviate from that norm can do the additional calculation and explain why the changes offer insight into the economics of the business. ROIC can be useful, but only if applied intelligently, consistently, and carefully.

# How to Calculate ROIC

ROIC is easy to define:

$$
\text {R e t u r n o n i n v e s t e d c a p i t a l (R O I C)} = \frac {\text {N e t o p e r a t i n g p r o f i t a f t e r t a x e s (N O P A T)}}{\text {I n v e s t e d c a p i t a l (I C)}}
$$

Net operating profit after taxes. NOPAT, the numerator of the ROIC calculation, is the cash earnings a company would have if it had no debt or excess cash. That means that NOPAT, unlike earnings, is the same whether a company is financed with all equity or if it has a lot of debt. Removing the issue of capital structure allows for effective comparison between businesses.

The calculation of NOPAT starts with operating income, or earnings before interest and taxes (EBIT). You then add amortization from acquired intangible assets (A) and the embedded interest component of operating lease expense.  ${}^{3}$  Operating lease interest expense is added back because it is a financing cost rather than an operating expense. Finally, you subtract cash taxes, which include the tax provision, deferred taxes, and the tax shield.

NOPAT = EBITA - cash taxes

It may seem odd to add back amortization of acquired intangibles but not depreciation even though both are non-cash charges. Here's the rationale. Depreciation is correctly considered an operating expense because it reflects wear and tear on physical assets. For instance, a company that buys a machine with a useful life of five years will record it in property, plant, and equipment (PP&E) on its balance sheet and depreciate the asset on the income statement over its life.

Amortization of acquired intangibles reflects different accounting. Assume a company acquires a customer list. The company would post the list as an intangible asset on the balance sheet and amortize it over its estimated useful life. But the money it spends to maintain and grow the list is expensed on the income statement.

Tangible and acquired intangible assets both lose value, but because the company expenses its investment to replenish the intangible assets, we don't want to penalize the company twice, first through amortization and second through investment in intangibles. The appearance of the customer list on the balance sheet is a one-time event as a result of the acquisition, and spending for future maintenance and growth reverts to the income statement.

Adding back the embedded interest from the operating lease expense is a relatively new adjustment. Starting in early 2019, most companies reporting under U.S. Generally Accepted Accounting Principles (GAAP) or International Financial Reporting Standards (IFRS) must reflect leases on the balance sheet. Under GAAP, the entire lease expense, including embedded interest, is still expensed. Under IFRS, the lease payments are appropriately allocated between depreciation and interest expense.

For companies reporting using GAAP, you need to separate lease payments into these two parts and reflect depreciation as an expense and treat the embedded interest expense as a financing cost. That means the embedded interest expense is added back to EBIT to calculate NOPAT.<sup>4</sup>

The cash tax calculation has three parts. The first is the tax provision. Start with what you see on the income statement, but make sure you adjust the figure for unusual items such as restructuring charges. If you are estimating taxes for a company that spends a lot on R&D, note that the Tax Cuts and Jobs Act of 2017 (TCJA) requires R&D spent in the U.S. to be amortized over five years instead of being expensed immediately. This went into effect in 2022.

For example, Northrop Grumman, an American aerospace and defense technology company, estimated its cash taxes would increase \$1 billion in 2022 as a result of the change. The tax provision lowers net operating profit.

The second is deferred taxes. This has a few components. Companies maintain two sets of books, one for financial reporting and the other for tax purposes. Companies typically use straight-line depreciation for reporting and accelerated depreciation for taxes. This creates a timing difference, with a company's reported taxes being higher than its cash taxes.[5]

These taxes have to be paid eventually, which is why they are recorded as a deferred tax liability. But this liability can remain for years for a growing company that invests consistently in tangible assets. To reflect this item in cash taxes, you calculate the change from one year to the next in the deferred tax liability on the balance sheet. The increase in the deferred tax liability reduces cash taxes.

Companies also have deferred tax assets, which are predominantly taxes the company has already paid and hence won't have to pay in the future. This can be material because the Internal Revenue Service does not recognize stock-based compensation as a deduction until the time of vesting. Companies report the difference between reported taxes and cash taxes as a tax asset.[6]

One way to estimate deferred taxes is to calculate the year-to-year change in operating deferred tax liabilities minus deferred tax assets.<sup>7</sup>

The final component of cash taxes is the tax shield that arises from the deduction associated with interest expense. The tax shield reflects the difference between the taxes the company actually paid and the higher taxes it would have paid had it been financed solely with equity. In other words, interest expense shields the company from having to pay some taxes. While this benefit is removed in the calculation of NOPAT, it is reintroduced in the estimation of the cost of capital.

The tax shield, net interest expense times the marginal tax rate, increases cash taxes for levered companies and puts all companies on an equal footing. But the TCJA also set a limit on the tax deductibility of interest at 30 percent of EBIT that went into effect in 2022. We estimate that this affects 25 percent of the companies in the Russell 3000 that had positive EBIT in the latest fiscal year. This analysis excludes companies in the financial and real estate sectors. About two-thirds of the companies under consideration had positive EBIT.

In a recent survey of chief financial officers of large corporations, only 24 percent cited interest deductibility as an important factor in determining debt levels, down from 60 percent in a similar survey in 2001. This is consistent with a lower federal tax rate (35 percent in 2001 to 21 percent today), lower interest rates (the 10-year Treasury note yield has dropped from about 5 percent to approximately 3.7 percent), and the limit in deductions.[8]

We review the details of the NOPAT calculation to establish a firm foundation of understanding. Determining cash taxes, in particular, can be complicated. But it is usually sufficient to estimate NOPAT as EBITA  $\times$  (1 - cash tax rate). The cash tax rate is commonly a little below the stated tax rate for a growing business. Aswath Damodaran, a professor of finance at the Stern School at New York University and a renowned expert in valuation, estimates that cash taxes for a large population of companies were about 95 percent of reported taxes in 2021.[9]

Exhibit 2 shows the calculation of net operating profit after taxes for Microsoft, a multinational technology company. For the company's fiscal 2022, EBITA is  \$87 billion and cash taxes are\$ 17 billion, leaving it with NOPAT of \$70 billion.

Exhibit 2: Microsoft's Net Operating Profit After Taxes, 2020-2022  

<table><tr><td>($ Billions)</td><td>2020</td><td>2021</td><td>2022</td></tr><tr><td>Operating income (EBIT)</td><td>53</td><td>70</td><td>83</td></tr><tr><td>Amortization of intangibles</td><td>2</td><td>2</td><td>2</td></tr><tr><td>Operating lease payments</td><td>1</td><td>1</td><td>1</td></tr><tr><td>Earnings before interest, taxes, and amortization (EBITA)</td><td>56</td><td>73</td><td>87</td></tr><tr><td>Income tax provision</td><td>9</td><td>10</td><td>11</td></tr><tr><td>Deferred taxes</td><td>(1)</td><td>1</td><td>6</td></tr><tr><td>Tax shield</td><td>0</td><td>0</td><td>0</td></tr><tr><td>Cash taxes</td><td>8</td><td>10</td><td>17</td></tr><tr><td>Net operating profit after taxes</td><td>48</td><td>62</td><td>70</td></tr></table>

Source: Microsoft Corporation and Counterpoint Global.

Invested capital. You can think of invested capital, the denominator of the ROIC calculation, in two ways that are equivalent. The first is the net assets a company needs to generate NOPAT. The second is how the company finances those net assets, typically through a combination of debt and equity. Double-entry bookkeeping makes sure that assets equal liabilities plus equity on a balance sheet. In other words, you can compute invested capital using either the leftor right-hand side of the balance sheet. Exhibit 3 shows the components of invested capital.

Exhibit 3: How to Calculate Invested Capital  

<table><tr><td>Operating Approach</td><td>Financing Approach</td></tr><tr><td>Current assets</td><td>Short-term debt</td></tr><tr><td>- Non-interest-bearing current liabilities</td><td>+ Long-term debt</td></tr><tr><td>Net working capital</td><td>= Total debt</td></tr><tr><td></td><td>+ Deferred taxes</td></tr><tr><td></td><td>+ Other liabilities</td></tr><tr><td>+ Net property, plant, &amp; equipment</td><td></td></tr><tr><td>+ Acquired intangibles</td><td></td></tr><tr><td>+ Goodwill</td><td>+ Preferred stock</td></tr><tr><td>+ Other</td><td>+ Common equity</td></tr><tr><td>= Invested capital</td><td>= Invested capital</td></tr></table>

Source: Counterpoint Global.

Invested capital can be calculated from either side but we would select the operating approach if we had to pick one. The operating side gives us a clear sense of the assets the company is deploying and allows us to track changes in asset efficiency over time. The financing approach tells us how the company finances its operations. It is common for managers and investors to calculate invested capital using debt and equity, which can be very misleading for reasons that we will see.

Let's review the calculation starting with the operating approach. We begin with net working capital, a measure of liquidity that is defined as current assets minus non-interest-bearing current liabilities (NIBCLs). The term "current" means the company expects the item will be an inflow or outflow of cash within the next year. Accounts receivables and inventories are generally the largest components of current assets. You should subtract excess cash and marketable securities in your calculation of current assets.

NIBCLs are basically all current liabilities that are not debt. Accounts payable and other current liabilities are the largest parts of NIBCLs.

There are a few points worth noting on net working capital. First, we want to include only the cash the company needs to run its operations. Excess cash and marketable securities should therefore be excluded. We discuss excess cash in more detail below.

Second, net working capital can be negative when NIBCLs are greater than current assets. Companies in this situation have a negative cash conversion cycle, which is a measure of how long it takes a company to collect on the sale of inventory.[10] In effect, these businesses can sell their inventory and collect cash before they have to pay their suppliers. As a result, suppliers effectively become a source of financing. There is academic research that suggests the cash conversion cycle can be a useful aid in stock picking.[11]

A company can't sustain a negative cash conversion cycle forever, but it can maintain one for a very long time. Net working capital changes are generally tied to a company's growth rate. Be sure to check changes in net working capital if you see an acceleration or deceleration in a company's growth.

Finally, net working capital has declined for companies in the U.S. over the last fifty years, going from nearly 30 percent of assets in the 1970s to under 10 percent of assets today. Reduction in inventory is the largest single contributor to this decline.[12] This change is likely the result of more sophisticated methods for managing inventory and an evolution across the economy from a reliance on tangible to intangible assets.

Next, we add net property, plant, and equipment (PP&E), which reflects gross investment in PP&E less accumulated depreciation. PP&E is a tangible, non-current asset. Some companies also invest in internal-use software. Even though this is an intangible investment, you should treat it the same as PP&E. This intangible investment is amortized over its useful life.[13]

Leases longer than one year also appear on the balance sheet. On the asset side, it shows up as a right-of-use asset, which is the lessee's right to use the asset over the duration of the lease. Accountants quantify it by estimating the present value of lease payments.

Next, we add intangible assets that are recorded on the balance sheet following an acquisition. Accountants recognize an item as an intangible asset if it arises from contractual or other legal rights or can be separated or divided from the company.[14] Acquired intangible assets are amortized over their estimated useful lives.

Goodwill captures the acquired assets that don't meet those criteria. Goodwill is basically the purchase price of an acquisition minus the fair value of tangible assets and identifiable intangible assets net of liabilities. In other words, goodwill represents future economic benefits from acquired assets that are not individually identified and separately recognized.

Goodwill is not amortized, but companies must periodically test goodwill for impairment. A company takes an impairment charge when it deems the fair market value of goodwill to be below its carrying cost.

Finally, we include any other long-term operating assets. The key in estimating invested capital is to reflect all of the assets the company needs to run its business. There are a number of nonoperating assets that should not be part of invested capital but do need to be reflected in valuation. These include excess cash and marketable securities, equity investments in other companies, non-consolidated subsidiaries, finance subsidiaries, overfunded pension funds, and tax loss carryforwards.[15]

Let's now turn to the approach from the financing side. We start with debt, which includes all shortand long-term interest-bearing liabilities. This captures every form of debt from commercial paper to bonds with a 100-year maturity.[16] Operating lease obligations must also be reflected as a source of financing.

To this we add equity, which includes preferred stock, other equity-linked securities, and shareholders' equity.

Finally, we need to account for other long-term liabilities, which are sometimes referred to as "equity equivalents." These include deferred taxes, underfunded pension funds, and unearned revenue.

Exhibit 4 shows the calculation of invested capital for Microsoft, which was \(165 billion in fiscal 2022. A number of items are worthy of comment. First, we assume the company needs cash equivalent to two percent of revenue. Next, notice that net working capital is negative. Goodwill and other intangibles represent nearly one-half of invested capital, which indicates the company has made acquisitions. Finally, other long-term liabilities are about one-third of invested capital from the financing side. Long-term income tax is the largest component within that line item. The company is potentially on the hook for a large tax bill.

Exhibit 4: Microsoft's Invested Capital, 2020-2022  

<table><tr><td colspan="4">Operating approach (traditional)</td><td colspan="4">Financing approach</td></tr><tr><td>($ Billions)</td><td>2020</td><td>2021</td><td>2022</td><td>($ Billions)</td><td>2020</td><td>2021</td><td>2022</td></tr><tr><td>Cash *</td><td>3</td><td>3</td><td>4</td><td>Current portion long-term debt</td><td>4</td><td>8</td><td>3</td></tr><tr><td>Accounts receivable, net</td><td>32</td><td>38</td><td>44</td><td>Long-term debt</td><td>60</td><td>50</td><td>47</td></tr><tr><td>Deferred income taxes</td><td>0</td><td>0</td><td>0</td><td></td><td></td><td></td><td></td></tr><tr><td>Inventories</td><td>2</td><td>3</td><td>4</td><td></td><td></td><td></td><td></td></tr><tr><td>Other current assets</td><td>11</td><td>13</td><td>17</td><td></td><td></td><td></td><td></td></tr><tr><td>Total current assets</td><td>48</td><td>57</td><td>69</td><td></td><td></td><td></td><td></td></tr><tr><td>- NIBCLs</td><td>69</td><td>81</td><td>92</td><td>Other long-term liabilities</td><td>51</td><td>53</td><td>56</td></tr><tr><td>Net working capital</td><td>(20)</td><td>(23)</td><td>(23)</td><td></td><td></td><td></td><td></td></tr><tr><td>Property and equipment, net</td><td>44</td><td>60</td><td>74</td><td></td><td></td><td></td><td></td></tr><tr><td>Operating lease right-of-use assets</td><td>9</td><td>11</td><td>13</td><td></td><td></td><td></td><td></td></tr><tr><td>Goodwill</td><td>43</td><td>50</td><td>68</td><td></td><td></td><td></td><td></td></tr><tr><td>Intangible assets, net</td><td>7</td><td>8</td><td>11</td><td></td><td></td><td></td><td></td></tr><tr><td>Other long-term assets</td><td>13</td><td>15</td><td>22</td><td>Shareholders&#x27; equity</td><td>(18)</td><td>9</td><td>59</td></tr><tr><td>Invested capital</td><td>96</td><td>120</td><td>165</td><td>Invested capital</td><td>96</td><td>120</td><td>165</td></tr></table>

Source: Microsoft Corporation and Counterpoint Global.  
Note: Cash = 2 percent of revenue.

This is the standard way to calculate invested capital. However, it does a poor job of capturing intangible investments. We dedicate a section to that topic below. The idea is that we must recast our calculations of NOPAT and invested capital if some percentage of Microsoft's selling, general, and administrative (SG&A) costs are reasonably classified as an investment. As we will see, NOPAT and invested capital both go up and ROIC goes down.

Let's now return to ROIC. For fiscal 2022, Microsoft's NOPAT was  \$70 billion, its average invested capital was\$ 143 billion (the average of \$120 billion in fiscal 2021 and \$165 billion in fiscal 2022), and its ROIC was 49 percent.

# How ROIC Is Linked to Free Cash Flow, Economic Profit, and Growth

Firm value is determined by projecting future free cash flow (FCF) and discounting it to the present. FCF equals NOPAT minus the investment in future growth.

We have already defined NOPAT. Investment in future growth captures changes in net working capital, capital expenditures net of depreciation, and other investments such as acquisitions. Investment in future growth is therefore equivalent to the change in invested capital.

This creates a convenient opportunity to build a check in a discounted cash flow (DCF) model. Since you have an estimate of the initial invested capital and the model is projecting future NOPAT and investment, you can calculate the ROIC in any future year by taking the NOPAT and dividing it by the corresponding invested capital that your forecast creates.

For example, take a company that in the base year has NOPAT of \$100 and invested capital of \$500, for an ROIC of 20 percent. You model 10 percent NOPAT growth, which puts NOPAT in year 2 at $121 ($100 x [1.10]²), and you assume the investment in each of the next couple of years is \$25. Your ROIC in year 2 would then be $121/$550, or 22 percent. The question is whether the trend in ROIC implied by your model is consistent with the economic and competitive environment that you anticipate.

Historical results show that ROIC tends to regress toward the mean. Regression toward the mean says that outcomes that are far from average are followed by outcomes with expected values closer to the average. Exhibit 5 breaks the population of companies into quintiles based on their ROICs in 2016 and follows each cohort for five years. It shows that the ROICs for the high-return businesses go down on average and the ROICs for the low-return businesses go up on average.

This simple picture belies a lot of richness in the data. Some businesses start with high ROICs and get even better. Others have low ROICs that don't improve. But regression is powerful. You want to make sure that your model reflects your view and considers the base rate.

Exhibit 5: Regression Toward the Mean for Russell 3000, 2016-2021  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/30b7e571568ecd43ae62dd06df6148c542b0e145317dc50de7d0c5876d4f4aad.jpg)  
Source: FactSet and Counterpoint Global. Note: Russell 3000 excluding financials and real estate.

We described the standard definition of FCF in finance. But it is important to acknowledge that the most popular description of FCF that companies and investors use is cash flow from operating activities minus capital expenditures, items found on a company's statement of cash flows.[17] This deviates from the textbook definition in a few meaningful ways. To begin, stock-based compensation is added back to calculate cash flow from operating activities. This means that a potentially significant expense is ignored. Stock-based compensation, really a form of financing, can be a considerable contributor to cash flow from operating activities, in some cases exceeding 100 percent.

Cash flow from operating activities also starts with net income, so it is after financing costs. This is not a problem if your model calculates free cash flow to equity (FCFE). But one survey shows that in practice investors use the free cash flow to the firm (FCFF) model nearly twice as often as the FCFE model.[18]

Finally, the common definition of FCF excludes investments made through lease commitments. These should be considered equivalent to capital expenditures but are recorded in cash flow from financing activities.[19]

ROIC is linked to valuation through economic profit, a measure of residual income. It is called "residual" because it is income after all costs have been taken into consideration, including the cost of capital. The concept has been around for more than a half century.[20]

You can calculate economic profit in two ways that provide identical answers:

Economic profit  $=$  (ROIC - WACC) x Invested capital

$$
= N O P A T - (I n v e s t e d \quad c a p i t a l \times W A C C)
$$

Stern Stewart & Company, a consulting firm, popularized the idea in the 1990s through Economic Value Added (EVA™).21 The main contribution of EVA was the introduction of a slew of adjustments to invested capital. We discuss some of these adjustments below.

The important point is a discounted cash flow model driven by free cash flow or economic profit give the exact same answer if the terms are defined correctly and the inputs are the same. See Appendix A for a discussion.

ROIC also has a link to growth. Specifically, the level of ROIC is the maximum supportable growth rate of the business excluding external financing. This is based on the following formula:

Growth = ROIC x (1 - payout ratio)

The payout ratio is the proportion of NOPAT a company pays out to its shareholders in the form of dividends and buybacks. Money paid out to shareholders leaves less to invest in the business.

Let's go back to our company with NOPAT of \$100 and invested capital of \$500. We'll assume no payout. Because the ROIC is 20 percent and the payout is zero, the formula tells us the business has the potential to grow 20 percent. In this case, the company would reinvest the whole \$100, building invested capital to \$600. Because ROIC remains stable, the NOPAT would grow 20 percent to $120 (.20 x $600). In the following year, invested capital would increase to \$720 and NOPAT to \$144. And so forth.

Another insight from the formula is that companies that have growth rates that are lower than their ROIC will be able to pay out cash to their shareholders without jeopardizing growth. For example, if our company could grow only 10 percent, it would be able to invest  \$50 and pay out\$ 50.

Companies can grow faster than their ROIC of course. But to do so they must have access to additional capital, typically in the form of debt or equity. For example, Walmart's growth rate was roughly double its ROIC for the

first dozen or so years it was public, requiring the company to raise capital to fill the funding gap. But this growth created substantial shareholder value because the company's ROIC was well in excess of the cost of capital.

The research shows that those companies that sustained high ROICs and high sales growth generated much higher total shareholder returns than companies with low returns and growth.[22]

But it is also crucial to bear in mind that incremental investment opportunities often become less attractive over time. We saw this in the chart on regression toward the mean. Companies that can sustain high growth and high ROICs are rare. One study found retailers that cut back their expansion in new stores, avoiding investment that provided earnings growth but no economic value, generated higher returns than those that chased growth.[23]

# Practical Challenges in Calculating ROIC

Estimating ROIC is conceptually straightforward but there are a number of practical matters to consider when doing the calculation. These lead to potential adjustments that require good judgment and reasoning. Without these changes, ROIC loses some of its absolute and relative usefulness.

The four topics we cover include dealing with: 1. excess cash and marketable securities; 2. restructuring, write-offs, and litigation charges; 3. minority interests; and 4. share buybacks.

Excess cash and marketable securities. In order to assess how much cash is necessary we need to start with the reasons that companies hold cash.[24] The first is based on operations. All businesses need some liquidity in the form of cash on hand to go about their business. This figure is generally a relatively small amount.

Another reason is that young businesses, and especially those with substantial intangible assets, hold high cash balances as a precaution.[25] Since these companies know they will need to access capital and recognize that capital markets can be fickle, building a cash balance buffers a business from external vagaries and allows management to dwell on building the business. Consistent with this thinking, cash balances as a percentage of assets tend to decline as companies get bigger.

Some companies think of their excess cash as having option value. An option is the right but not the obligation to make an investment. Companies with surplus cash are in a position to pounce when attractive internal or external investment opportunities arise. This is a reasonable way to think about the cash balances at Berkshire Hathaway, a conglomerate holding company. Warren Buffett, the company's chairman and chief executive officer, has a long and excellent record of capital allocation. The market values the cash of firms with good investment opportunities at a premium to the value on the books.[26] But this cuts both ways. Cash held by firms with poor corporate governance is valued at a discount.[27]

Finally, some companies hold more cash than they need when executives have little incentive to disburse or deploy it. Cash holdings can buffer a company's risk. For example, cash balances tend to be higher in countries where shareholder rights are weaker.[28]

There are two schools of thought with regard to excess cash and marketable securities. The first argues that executives serve as the stewards of capital and hence should have their feet held to the fire to deliver returns above the cost of capital on all of the company's capital. This approach gives no pass to those companies with poor governance or poor incentives. This boils down to an issue of capital allocation. Executives should make sure that all assets are delivering value if their prime responsibility is the judicious allocation of capital.

The second school believes that investors should address the ROIC calculation and capital allocation issues distinctly. The ROIC calculation is meant to provide insight into how efficiently a company uses its operating

capital. An assessment of management's capital allocation skills focuses on how the company allocates its resources and what the prospective returns from those actions may look like.

We are in the second camp. The high levels of cash today, especially in certain sectors, underscores the importance of focusing on capital allocation. But if you are trying to understand the underlying economics of the business you are better off removing excess cash. You then can debate the issues surrounding capital allocation.

So how do you strip out excess cash? Once a company reaches a steady state, a rule of thumb suggests you should include about two percent of revenue as necessary cash. For less predictable companies with greater growth prospects, a ratio of cash to revenue up to five percent may be appropriate.

Take Microsoft as an example. We assumed the company needs cash equivalent to two percent of revenue, or  \$4 billion, for fiscal 2022. The company's cash, cash equivalents, and short-term investments were\$ 105 billion. Including this full amount would take invested capital from  \$165 billion to\$ 266 billion and ROIC from 49 percent to 29 percent.

The issue of surplus cash also shows why it can be dangerous to calculate invested capital with the financing approach only. If you agree that stripping out excess cash is appropriate, you remove it from current assets on the operating side and simultaneously deduct it from shareholders' equity on the financing side. A simplistic focus on the financing side leaves you in no position to know whether there is too much cash, much less what the proper adjustment should be.

One final point, which may at first appear counter to the other points in this discussion. A DCF using FCF derives a firm, or corporate, value. To come up with a value per share, you add nonoperating assets, subtract liabilities, and divide by the shares outstanding. The common prescription is to designate some cash and marketable securities as necessary to run the business and consider only the excess amount to be a nonoperating asset.[29] This is wrong. In fact, all cash and marketable securities should be added to firm value, provided that the estimates for working capital growth include the cash necessary to run the business.[30]

Restructuring, write-offs, and litigation. ROIC seeks to quantify the results of ongoing business operations. But companies also report non-operating items that affect the income statement and balance sheet. Indeed, the average number of non-core items that companies report per year is about one-third higher now than it was 25 years ago.[31]

Non-operating items should be infrequent, unusual, and not anticipated to recur. But distinguishing between operating and non-operating items requires judgment in many cases.[32] For example, what about a company that takes modest restructuring charges in most years? Should you consider that to be an operating, or non-operating, item?

Here we discuss three of the most prominent non-core items—restructuring charges, asset write-offs, and litigation provisions—and discuss their impact on the calculation of ROIC.

- Restructuring. Companies take a restructuring charge when they plan to change the organization of their business. This is often, but not always, based on a plan to reduce costs. Cost cutting includes a reduction in the workforce and closure of facilities. These charges commonly require a cost upfront, for example employee severance payments, and a benefit in the future.

Kimberly-Clark, a multinational personal care company, recently completed a large restructuring program. The company incurred cumulative costs of  \$2.2 billion pre-tax (\$ 1.6 billion after-tax) to reduce its workforce

by about 5,000 people and close 10 facilities. These included costs for workforce reduction, asset write-offs, and additional capital expenditures. The result was \$560 million of pre-tax cost savings.[33]

The workforce reduction costs showed up both on the income statement, reducing NOPAT, and as a liability, affecting invested capital. The asset write-off reduced invested capital and the additional capital expenditures had the opposite effect.

In this case, we would advocate for stripping out the accounting adjustments for the restructuring with the exception of the additional capital spending. Further, it is appropriate to reflect the cost savings, to the degree they are credible, in future NOPAT calculations.

Research shows that investors react favorably to restructuring charges that reduce costs and show little reaction to asset write-offs.[34] A cost-benefit analysis of Kimberly-Clark's restructuring program illuminates why this might be the case. The cash costs of  \$1.6 billion offset a benefit of about\$ 7.0 billion for a net gain of more than \$5 billion.[35]

- Write-offs. A write-off or a write-down is an accounting charge to recognize that the value of an asset is impaired. A write-off means the asset is valued at zero while a write-down reduces the carrying cost. While these terms are used interchangeably, most charges are write-downs.

An asset write-off occurs when a company recognizes that it overstated an asset's useful life. Companies overstate asset lives because they fail to consider technological obsolescence and inflation. Obsolescence occurs when a new and improved asset comes along and renders the old one useless. Inflation is relevant because rising prices mean that capital expenditures will exceed depreciation, even when the business is stable, because new capital expenditures reflect inflation while depreciation is based on historical costs.

Depreciation is often used as a proxy for maintenance capital spending, or the amount of spending a business requires to sustain current operations. But it is common for companies to understate maintenance capital expenditures. Indeed, the gap between maintenance capital expenditures and depreciation is a predictor of future asset write-offs.[36]

Here again, the treatment of asset write-offs requires judgment. For companies that write off assets serially, adding back the charge to invested capital appears appropriate. Otherwise, the company's poor capital allocation will not show up properly in the ROIC figures. If the occurrence is rare and the size of the write-off is not material, it is reasonable to simply let it go without an adjustment.

We discussed goodwill, the difference between the purchase price for an acquisition and the value recorded for tangible and intangible assets. Accountants test the value of goodwill periodically. The company takes an impairment charge if the accountants deem the value to be below the carrying cost. Well-known companies, including AOL Time Warner (now WarnerMedia), Kraft Heinz, and General Electric have each taken impairment charges in the tens of billions of dollars. These are admissions of overpaying for acquisitions.

It is standard to add back goodwill and intangible impairment charges. The thinking is that management should be held accountable for past capital allocation decisions and that the value of goodwill does not wear out in theory.

Microsoft's accumulated goodwill impairment as of year-end fiscal 2022 was  \$11.3 billion, the result of a\$ 6.2 billion write-down in fiscal 2012 for aQuantive, a digital marketing service company acquired in 2007,

and a \$5.1 billion write-down in fiscal 2015 for Nokia, a mobile phone hardware business bought in 2014. We did not add back the goodwill but doing so reduces Microsoft's ROIC for fiscal 2022 by about 3.5 percentage points.

- Litigation. Litigation has been on the rise for years, and high-profile cases such as BP plc, Enron, and Volkswagen show that lawsuits can be costly.[37] The stocks of companies that are sued by shareholders react negatively.[38]

The impact on shareholder value can be meaningful but the impact on ROIC is more subtle. The first is the potential liability to reflect the risk of losing a case and facing monetary penalties. Companies add the estimated liability to the balance sheet, which serves to reduce shareholders' equity. While invested capital does not change, the additional liabilities reduce shareholder value.

For instance, BP plc ended up paying \(20 billion to settle lawsuits associated with the Deepwater Horizon oil spill in 2010, in addition to the costs associated with fines and cleanup costs. Note that defendants rarely pay the headline amount that plaintiffs demand because they generally have insurance that partially offsets the cost.

NOPAT can come under pressure as the result of potential reputational damage. After it falsely disclosed emissions for certain vehicles, Volkswagen was banned from selling diesel vehicles for some time. This would lower ROIC in the future, all else being equal.

Coping with these non-operating items requires discernment. When considering how to account for these items it is useful to bear in mind what we want to learn from a calculation of ROIC. We seek to understand the cash earnings the business earns given the capital it has invested. We want to make sure that the estimates of NOPAT and invested capital are consistent with one another and that management is held accountable for the capital allocation and accounting choices it makes.

Minority interest. You need to make an adjustment for minority interest either when another company owns a meaningful minority percentage of the company you are analyzing or the company you are analyzing owns a meaningful minority stake in another company.

If a company owns part of the firm you are evaluating, you can proceed with the ROIC as normal. This takes little additional analysis since the minority interest is recorded below EBITA. The main item to heed is the tax calculation. You do need to subtract the value of the minority stake to calculate shareholder value.

The approach in the second case, where the company under study owns a meaningful minority stake in another business, is similar to that of the first. Calculate ROIC as you normally would. Taxes can be tricky here, too. Then add the value of the minority stake, net of tax considerations, to corporate value to estimate shareholder value.

Share buybacks. Many investors and executives are under the impression that because share buybacks can increase earnings per share and return on equity (ROE), they must also benefit the level of ROIC. But if you remove excess cash, a step we think is sensible, buybacks have no impact on ROIC whatsoever. This is consistent with the idea that ROIC is a calculation that is unaffected by how a business is financed. This is not true of ROE.

Here's the thinking behind the statement. The source of capital for buybacks comes either from surplus cash or additional debt. If the company is using excess cash, it does not affect NOPAT or invested capital. NOPAT is

unaltered by interest income or interest expense. And invested capital is the same because we remove excess cash on the operating side and deduct the same amount from shareholders' equity on the financing side.

Similarly, funding a buyback with new debt leaves NOPAT and invested capital unchanged. NOPAT is impervious to the additional interest expense, and the operating approach of invested capital remains identical. With the financing approach, the increase in debt is offset dollar for dollar by a decrease in equity.

Buybacks can affect book value per share. Book value per share goes down if a company buys shares at a premium to book value. This is true even if the stock is undervalued. The stock's price-to-book ratio will go up, making it appear more expensive, but this is of no economic consequence. Further, the ratio of enterprise value to invested capital, a better indication of the one dollar test than the price-to-book ratio, does not change.

Each of these practical issues demands some consideration but they can all be addressed in the service of understanding the economics of a business. There is one more adjustment, which deals with internally-generated intangible investments. Because accountants expense intangible investments on the income statement rather than capitalize them on the balance sheet, NOPAT and invested capital are understated for companies that make substantial intangible investments.

We will discuss this in detail. But before we do, we now share some empirical results on the pattern, trend, and distribution of ROICs in the U.S.

# Empirical Data

Exhibit 6 shows the distribution of ROICs for the Russell 3000 in 2021. This sample excludes companies in the financial and real estate sectors. The mode is an ROIC of 5 to 10 percent, and the distribution is shaped like a bell between the tails. But nearly 30 percent of the sample are at the extremes of an ROIC of -20 percent or less or 30 percent or more. Note that these figures consider goodwill and acquired intangibles as part of invested capital, do not add back write-offs, and do not reflect the capitalization of internally-generated intangible assets.

Exhibit 6: Distribution of ROICs for the Russell 3000, 2021  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/b054ade65c7c2a9d3b18769c8484a3722368fab7a29a4b6afa8f320e461267b5.jpg)  
Source: FactSet and Counterpoint Global.  
Note: Excludes financials and real estate.

Exhibit 7 shows the ROICs for 52 non-financial industries, as defined by the Global Industry Classification Standard, over the past 30 years. The dispersion of returns is generally lower for industries in the consumer and industrial sectors and higher for industries in the technology sector.

Exhibit 7: ROICs by Industry for the Russell 3000, 1990-2021  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/4ddee77f3e30051b2cdea439bdd8bf61bb6718b5406020665120192f94de694f.jpg)  
Source: FactSet and Counterpoint Global.  
Note: Excludes financials and real estate; Minimum of 100 million of sales in 2021 U.S. dollars.

ROICs have drifted higher over the past 30 years (see exhibit 8). The aggregate ROIC, which sums the NOPAT and invested capital for all companies, has gone from 7.6 percent to 11.4 percent. The variation in the trend reflects overall economic conditions, industry cycles, and the mix of companies.

Exhibit 8: Aggregate, Sales-Weighted, and Median ROICs for the Russell 3000, 1990-2021  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/89c92143267b18b11ea0d8bf8695764e8a06af1064e9d1f6ac3433e3513ddec6.jpg)  
Source: FactSet and Counterpoint Global.  
Note: Excludes financials and real estate; Sales-weighted ROIC based on ROICs winsorized at  $1^{st}$  and  $99^{th}$  percentiles.

Note that the ROIC weighted by sales is consistently higher than the aggregate, which says that large companies have higher ROICs on average than smaller ones. This is consistent with the fact that the average age of public companies has risen throughout this period.

Exhibit 9 shows the ROIC over time broken down by quintile. Here, we re-sort the population of companies into quintiles in each year and measure the median of each over time. While each series bounces around, the median ROIC rises substantially for the top quintile and drops meaningfully for the bottom quintile from 1990 to 2021. The middle three quintiles remain relatively stable.

Exhibit 9: ROICs Rising for Top Quintile and Declining for Bottom Quintile, 1990-2021  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/d174deabc562f6a729db27f021e44f0c132cd21c560142d2bafef13409e473ec.jpg)  
Source: FactSet and Counterpoint Global. Note: Russell 3000 excluding financials and real estate; Axes truncated for visualization.

The rise of intangible investment may help explain the results for the top and bottom quintiles. Firms with high ROICs, sometimes called "superstar" firms, have been the most aggressive in investing in intangible assets. Including internal investments in intangibles would lower the ROICs for many of these companies.

Exhibit 10 shows the distribution of economic profit for companies in the Russell 3000.<sup>39</sup> Here we broke the universe into deciles for each year from 2017 to 2021. We calculated the sum of economic profit for all of the companies in each decile and adjusted the totals for inflation. We then took the average of those sums over the five years.

The tails are heavy as they are with the distribution of ROICs. The top decile of companies created  \$675 billion of economic profit, the bottom decile destroyed\$ 220 billion of value, and the middle 80 percent contributed only \$70 billion of economic profit. Apple, Microsoft, and Alphabet combined produced \$120 billion of economic profit, or about one-fifth of the total amount, during this period.

Exhibit 10: Distribution of Economic Profit for the Russell 3000, 2017-2021  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/2df12ee642da50accfab8285472f5957c4fed6963c812b05ea58c13ebfbbdace.jpg)  
Source: FactSet and Counterpoint Global. Note: Russell 3000 excluding financials and real estate.

The percentage of companies losing money is substantially higher today than it was in 1990. Companies can be unprofitable because their costs are greater than their sales. Companies can also lose money as the result of substantial intangible investments that will pay off handsomely. These companies may have poor ROICs before adjusting for intangible investments but look substantially better after properly reckoning for them.[40]

# Dealing With Intangible Investments

Our empirical results show a gentle increase in the aggregate ROIC over time. But our calculation did not consider the rise of intangible investments, perhaps the most important challenge in measuring ROIC accurately.

Over the last half century, the mix of investment has shifted from being predominantly tangible to mostly intangible. For example, a retail store is a tangible asset because it is physical and software is an intangible asset as it is non-physical. The nature of an investment is the same in both cases. It is an outlay of money today that creates a stream of cash flows that is hopefully worth more than the cost.

This shift is significant because the importance of tangible assets in explaining firm value has decreased in recent decades and the significance of intangible assets has increased. Intangible assets now contribute roughly twice as much to firm value as tangible assets do.[41]

Here's the analytical problem. Accountants record tangible investments on the balance sheet as assets and depreciate them over their useful lives. The assets show up in our invested capital calculation and the depreciation of those assets factors into NOPAT. This makes sense because depreciation spreads the cost of the asset over its useful life.

Accountants treat most intangible investments as expenses. Take R&D as an example. In late 1974, the Financial Accounting Standards Board decided that companies should expense R&D because the benefits were uncertain and the link between R&D costs and sales was unclear.[42] The logic applied to R&D was extended to advertising, employee training, and the creation of software.

This creates a situation where on average companies that are tangible-asset-intensive have high NOPAT and high invested capital and companies that are intangible-asset-intensive have low NOPAT and low invested capital. If you have heard of an executive or investor refer to a business as being "asset light," you are safe to assume the company invests largely in intangible assets.

We want to put all companies on the same footing in order to measure ROIC consistently. The way to do that is to put intangible assets on the balance sheet and amortize them over their useful lives. We will call the line item "capitalized intangibles, net." This way we treat all investments alike.

To do this effectively, we need to know which items within SG&A are appropriately considered investments and what their useful lives will be.[43] Proper estimation of these items is a lively field of academic research.[44]

We continue with our example of Microsoft to show how to capitalize intangible investments. Charles Hulten, a professor emeritus of economics at the University of Maryland and a top researcher in the field, estimated the percentage of Microsoft's various SG&A line items that can be considered an intangible investment.[45] We use his figures (see exhibit 11).[46]

Exhibit 11: Intangibles on the Income Statement, Microsoft's Fiscal 2022 Figures  

<table><tr><td>Item</td><td>Amount</td><td>Percent Allocated To Intangible Investment</td><td>Intangible Investment</td></tr><tr><td>Research and Development</td><td>$24.5</td><td>100</td><td>$24.5</td></tr><tr><td>Sales and Marketing</td><td>21.8</td><td>70</td><td>15.3</td></tr><tr><td>General and Administrative</td><td>5.9</td><td>20</td><td>1.2</td></tr><tr><td>Total</td><td>\$52.2 billion</td><td></td><td>\$41.0 billion</td></tr></table>

Source: Microsoft Form 10-K for fiscal 2022 and Charles R. Hulten, "Decoding Microsoft: Intangible Capital as a Source of Company Growth," NBER Working Paper 15799, March 2010.

Based on these assumptions, Microsoft spent  \$41 billion on intangible investment in fiscal 2022, more than three-quarters of its total SG&A. That\$ 41 billion is the sum that we will capitalize on the balance sheet.

Just as we depreciate physical assets over their useful lives, we need to amortize these intangible assets over their useful lives. Hulten and Carol Corrado, perhaps the leading economist in this field, estimate the useful lives of various forms of intangible investment. Consistent with their findings, we amortize R&D over six years, and the sales and marketing (S&M) and general and administrative (G&A) investments each over two years.[47]

We now have the pieces we need to capitalize intangible investments. Before we get to the process, let's consider what will happen to NOPAT and invested capital.

On the income statement, we are first going to remove the expense that is considered to be intangible investment. That will increase EBIT. But we also need to expense the amortization of past intangible investment. That will lower the revised EBIT. When we net these adjustments, EBITA and NOPAT will be higher than the traditional figures for a company that is growing.[48]

On the balance sheet, we will reflect a new item, net intangible investment, which is the difference between cumulative gross intangible investment and accumulated amortization. This adjustment will increase assets for businesses that are expanding and therefore make invested capital higher than the traditional sum.

Before doing any calculations, we know NOPAT and invested capital will be higher than they were before the adjustment. ROIC is the ratio between the two, and we will see that capitalizing intangibles lowers ROIC for most profitable companies.

Note that free cash flow is unaltered by these changes because NOPAT and investment increase by the same amount. Capitalizing intangible investments does not vary the value of the business but does provide insight into the magnitude and return on investment.[49]

Exhibit 12 shares a small sample of the process to capitalize intangibles.[50] In this case we are looking at S&M. Recall from exhibit 11 that 70 percent of the expense is allocated to intangible investment and the useful life is assumed to be 2 years.

In the top row are the S&M expenses deemed to be intangible investment. For example, the sum for S&M in 2019,  \$12.7 billion, is 70 percent of the\$ 18.2 billion the company expensed on its income statement. That total is then amortized over the following 2 years, leading to \$6.4 billion of amortization expense in 2020 and 2021.

Exhibit 12: Example of Capitalization Process for Microsoft, 2021-2022  

<table><tr><td>($ Billions)</td><td>2019</td><td>2020</td><td>2021</td><td>2022</td></tr><tr><td>Sales and marketing</td><td>$12.7</td><td>$13.7</td><td>$14.1</td><td>$15.3</td></tr><tr><td>Amortization</td><td></td><td>6.4</td><td>6.4</td><td></td></tr><tr><td></td><td></td><td></td><td>6.9</td><td>6.9</td></tr><tr><td></td><td></td><td></td><td></td><td>7.0</td></tr><tr><td>Total amortization</td><td></td><td></td><td>$13.2</td><td>$13.9</td></tr></table>

Source: Microsoft Corporation and Counterpoint Global.

The total amortization for 2022 is \(13.9 billion, the sum of amortization of investments in S&M in 2020 and 2021.

The adjusted increase in NOPAT and invested capital from that SG&A item in 2022 is  \$1.4 billion, the difference between the allocated intangible investment for S&M of\$ 15.3 billion and the amortization of \$13.9 billion. You repeat the same calculation for R&D and G&A to come up with the complete schedule and the aggregate adjustment. The aggregate amortization was \$31 billion in fiscal 2022.

We now have the two pieces we need to do this calculation for fiscal 2022. Intangible investment was  \$41 billion and amortization was\$ 31 billion, for a net adjustment of \$10 billion. Exhibit 13 shows that NOPAT goes from $70 to $80 billion, a 14 percent increase.

Exhibit 13: Impact of Capitalizing Intangibles on Microsoft's NOPAT, 2020-2022  

<table><tr><td colspan="4">Traditional</td><td colspan="4">With adjustments</td></tr><tr><td>($ Billions)</td><td>2020</td><td>2021</td><td>2022</td><td>($ Billions)</td><td>2020</td><td>2021</td><td>2022</td></tr><tr><td>Operating income (EBIT)</td><td>53</td><td>70</td><td>83</td><td>Operating income (EBIT)</td><td>53</td><td>70</td><td>83</td></tr><tr><td>Amortization of intangibles</td><td>2</td><td>2</td><td>2</td><td>Amortization of intangibles</td><td>2</td><td>2</td><td>2</td></tr><tr><td>Operating lease payments</td><td>1</td><td>1</td><td>1</td><td>Operating lease payments</td><td>1</td><td>1</td><td>1</td></tr><tr><td>EBITA</td><td>56</td><td>73</td><td>87</td><td>EBITA</td><td>56</td><td>73</td><td>87</td></tr><tr><td>Income tax provision</td><td>9</td><td>10</td><td>11</td><td>Income tax provision</td><td>9</td><td>10</td><td>11</td></tr><tr><td>Deferred taxes</td><td>(1)</td><td>1</td><td>6</td><td>Deferred taxes</td><td>(1)</td><td>1</td><td>6</td></tr><tr><td>Tax shield</td><td>0</td><td>0</td><td>0</td><td>Tax shield</td><td>0</td><td>0</td><td>0</td></tr><tr><td>Cash taxes</td><td>8</td><td>10</td><td>17</td><td>Cash taxes</td><td>8</td><td>10</td><td>17</td></tr><tr><td>NOPAT</td><td>48</td><td>62</td><td>70</td><td>NOPAT</td><td>48</td><td>62</td><td>70</td></tr><tr><td></td><td></td><td></td><td></td><td>Intangible investment</td><td>34</td><td>36</td><td>41</td></tr><tr><td></td><td></td><td></td><td></td><td>Amortization of intangibles</td><td>27</td><td>29</td><td>31</td></tr><tr><td></td><td></td><td></td><td></td><td>Intangible investment, net</td><td>7</td><td>7</td><td>10</td></tr><tr><td></td><td></td><td></td><td></td><td>Adjusted NOPAT</td><td>55</td><td>69</td><td>80</td></tr></table>

Source: Microsoft Corporation and Counterpoint Global. Note: EBITA = Earnings before interest, taxes, and amortization; NOPAT = Net operating profit after taxes.

We now turn to invested capital. The process is exactly the same as the treatment of a physical asset in PP&E. For each year, we add the intangible investment to gross intangible assets and subtract the amortization to come up with net capitalized intangibles.

What makes this analysis a challenge is that you need to go back to the company's founding to get a truly accurate assessment of invested capital. Without doing so, you can come to the erroneous conclusion that the capitalization of intangibles increases ROIC for a profitable business.[51] Fortunately, there is a workaround called the perpetual inventory method.[52] This technique uses past intangible investment to estimate the value of the stock of intangible investment.

Exhibit 14 shows how capitalizing intangibles changes invested capital. On the left is the traditional invested capital of  \$165 billion. On the right is the adjusted invested capital of\$ 260 billion after reflecting \$95 billion of net capitalized internally-generated intangibles. Invested capital is 58 percent greater.

Exhibit 14: Impact of Capitalizing Intangibles on Microsoft's Invested Capital, 2020-2022  

<table><tr><td colspan="4">Traditional</td><td colspan="4">With adjustments</td></tr><tr><td>($ Billions)</td><td>2020</td><td>2021</td><td>2022</td><td>($ Billions)</td><td>2020</td><td>2021</td><td>2022</td></tr><tr><td>Cash *</td><td>3</td><td>3</td><td>4</td><td>Cash *</td><td>3</td><td>3</td><td>4</td></tr><tr><td>Accounts receivable, net</td><td>32</td><td>38</td><td>44</td><td>Accounts receivable, net</td><td>32</td><td>38</td><td>44</td></tr><tr><td>Deferred income taxes</td><td>0</td><td>0</td><td>0</td><td>Deferred income taxes</td><td>0</td><td>0</td><td>0</td></tr><tr><td>Inventories</td><td>2</td><td>3</td><td>4</td><td>Inventories</td><td>2</td><td>3</td><td>4</td></tr><tr><td>Other current assets</td><td>11</td><td>13</td><td>17</td><td>Other current assets</td><td>11</td><td>13</td><td>17</td></tr><tr><td>Total current assets</td><td>48</td><td>57</td><td>69</td><td>Total current assets</td><td>48</td><td>57</td><td>69</td></tr><tr><td>- NIBCLs</td><td>69</td><td>81</td><td>92</td><td>- NIBCLs</td><td>69</td><td>81</td><td>92</td></tr><tr><td>Net working capital</td><td>(20)</td><td>(23)</td><td>(23)</td><td>Net working capital</td><td>(20)</td><td>(23)</td><td>(23)</td></tr><tr><td>Property and equipment, net</td><td>44</td><td>60</td><td>74</td><td>Property and equipment, net</td><td>44</td><td>60</td><td>74</td></tr><tr><td>Operating lease right-of-use assets</td><td>9</td><td>11</td><td>13</td><td>Operating lease right-of-use assets</td><td>9</td><td>11</td><td>13</td></tr><tr><td>Goodwill</td><td>43</td><td>50</td><td>68</td><td>Goodwill</td><td>43</td><td>50</td><td>68</td></tr><tr><td>Intangible assets, net</td><td>7</td><td>8</td><td>11</td><td>Intangible assets, net</td><td>7</td><td>8</td><td>11</td></tr><tr><td>Other long-term assets</td><td>13</td><td>15</td><td>22</td><td>Other long-term assets</td><td>13</td><td>15</td><td>22</td></tr><tr><td>Invested capital</td><td>96</td><td>120</td><td>165</td><td>Invested capital</td><td>96</td><td>120</td><td>165</td></tr><tr><td></td><td></td><td></td><td></td><td>Capitalized intangibles, net</td><td>78</td><td>85</td><td>95</td></tr><tr><td></td><td></td><td></td><td></td><td>Adjusted invested capital</td><td>174</td><td>206</td><td>260</td></tr><tr><td>NOPAT</td><td>48</td><td>62</td><td>70</td><td>NOPAT</td><td>55</td><td>69</td><td>80</td></tr><tr><td>Invested capital (average)</td><td>92</td><td>108</td><td>143</td><td>Invested capital (average)</td><td>167</td><td>190</td><td>233</td></tr><tr><td>ROIC</td><td>52%</td><td>58%</td><td>49%</td><td>ROIC</td><td>33%</td><td>37%</td><td>34%</td></tr></table>

Source: Microsoft Corporation and Counterpoint Global.  
Note: * Cash = 2 percent of revenue; NIBCLs = Non-interest-bearing current liabilities.

When we recalculate ROIC we see the number goes from 49 percent (on the left of exhibit 14) to 34 percent (on the right). The adjusted ROIC is still fabulous but it's considerably more modest. This is consistent with academic research.[53] Exhibit 15 shows the difference between the traditional and adjusted ROIC for Microsoft from 2001 through 2022.

Exhibit 15: Microsoft's Traditional and Adjusted ROIC, 2001-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/e1194fe9c0c5fe75857e5445ef2dd520573f95c431507fc5ffe3cf7e64b07e12.jpg)  
Source: Microsoft Corporation and Counterpoint Global.

Capitalizing intangible investments can be analytically onerous but we believe it is a step toward economic truth. The first challenge is discerning which items in SG&A truly reflect discretionary investments. Next is the actual calculation, which requires setting up schedules and, in many cases, estimating the initial stock of intangible assets.

One outcome of this adjustment is that the ROICs for companies with very high or low results get pulled closer to the average. We have already seen this with Microsoft, where the adjusted return was much lower than the traditional one. But this is generally true for companies with low, or negative, ROICs as well. In those cases, the adjusted return is higher than the traditional one. This adjustment makes the overall distribution tighter. See Appendix B for a demonstration.

The exercise may not appear to be worth the effort, especially since it leaves the main driver of value, free cash flow, unchanged. But there are some significant payoffs from doing the work. First, the output provides insight about the magnitude of profits and investments. This is particularly relevant for investors who rely predominantly on multiples, such as price-to-earnings or enterprise value-to-earnings before interest, taxes, depreciation, and amortization (EBITDA) as a proxy to value businesses.

This is important because the larger the component of SG&A that is reasonably considered an investment, the lower the reported earnings will be. As a result, certain businesses that are investing aggressively and with attractive ROICs will appear to be statistically expensive.

Finally, adjusting ROICs brings the figures closer to earth. The distortion caused by the shift from tangible to intangible investment is to some degree mitigated and the ability to compare businesses in different industries improves.

A company's absolute ROIC is a useful figure to know. But stock prices reflect expectations for the future, so what we want to understand is how ROIC might change relative to what's priced into the stock. For that, we need to consider incremental ROIC.

# Measuring Incremental ROIC

The stock market looks to the future. While ROIC provides a great deal of information about a business, what matters is how ROIC will change in the future and whether that change will deviate from the market's expectations.

We need a measure of incremental change. One candidate is return on incremental invested capital (ROIIC), which has been adopted by some investors and companies.[54] ROIIC captures the relationship between the change in NOPAT and the change in invested capital. As such, it ignores sunk costs but in so doing assumes that the return on the existing invested capital remains stable.[55]

Here is the calculation for ROIC:

$$
\mathrm {R O I C} = \frac {\text {Y e a r} _ {1} \text {N O P A T} - \text {Y e a r} _ {0} \text {N O P A T}}{\text {Y e a r} _ {0} \text {i n v e s t e d c a p i t a l} - \text {Y e a r} _ {- 1} \text {i n v e s t e d c a p i t a l}}
$$

ROIC is the ratio of the change in NOPAT in one year to the investments the company made in the year before.

To illustrate, assume a company's year-1 invested capital is \$10,000 and it invests \$1,000 during the year. Year0 invested capital increases to \$11,000. Further, NOPAT goes from \$2,000 in year0 to \$2,300 in year1. In this case, ROIIC is 30 percent [(\$2,300 - \$ 2,000)/(\$11,000-10,000)].

Annual ROIC calculations can be very noisy, especially for businesses with NOPAT variability and lumpy investments. For example, Microsoft agreed to acquire Activision Blizzard, a video game company, in early 2022 for \$69 billion. Microsoft's invested capital will increase around 40 percent when that deal closes.

One way to dampen the noise is to calculate ROIIC over threeor five-year periods. In the case of a three-year rolling ROIIC, you take the change in NOPAT over the last three years (Year $_3$  NOPAT - Year $_0$  NOPAT) and divide it by the change in invested capital, again with a lag (Year $_2$  invested capital - Year $_1$  invested capital).

Exhibit 16 shows Microsoft's rolling three-year ROIC from fiscal 2018 to 2022. The results in recent years have been high. But the figures were much lower following the \(26 billion acquisition in 2016 of LinkedIn, an online service focused on employment, and it will again drop after the Activision Blizzard deal closes.

Exhibit 16: Microsoft's 3-Year Return on Incremental Invested Capital, 2018-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/ea2ef9d28f51086d3629eb4db75aa5a92b10fbe305b3be17a5d877664e3eaa56.jpg)  
Source: Microsoft Corporation and Counterpoint Global.

Companies that earn high ROICs are usually capital efficient or have substantial operating leverage. Operating leverage, which can push ROIC in a positive or negative direction, measures the change in operating profit divided by the change in sales and is important for companies with high fixed costs. Anticipating the change in earnings as the result of operating leverage is challenging and investors are not good at it.[56] All of that noted, a company's historical ROIC can help anticipate potential moves in earnings that are not priced in by the market.

For all of its utility, ROIIC is a substandard measure of economic value. It can shed light on the likelihood of change and point out past patterns, but it should not be compared to the cost of capital or be considered a true measure of return. Specifically, ROIIC overstates economic returns when it is above the cost of capital and understates economic returns when it is below the cost of capital. This problem becomes more acute as the length of the competitive advantage period extends.

We have made the case that market-expected return on investment (MEROI) does a better job of reflecting economic returns. MEROI is the return at which the present value of a company's profits equals the present value of the investments a company makes.[57]

# Analyzing Divisions

ROICs commonly vary a great deal for divisions or segments within a firm that has multiple businesses. Marakon Associates, a consulting firm that is now part of CRA International, estimated that for many companies all of the value creation is concentrated in 50 percent of the invested capital.[58] So getting a sense of ROIC by business can tell you where value resides and where it might be getting wasted. Inertia appears to play a big role in capital allocation across divisions, and managers who allocate capital more proactively enjoy better financial results.[59]

Public companies are required to disclose information about the segments within their businesses. This enables stakeholders, including shareholders, to understand the company's results and prospects. This disclosure should aid investors in understanding the company's value drivers, including sales growth, operating profit margins, and capital needs.

Public companies are expected to adhere to the "management approach," which says that what information a company discloses should be consistent with how the company makes decisions and assesses its operations. As a result, divisional analysis can provide investors with insight about business performance through the same lens that management uses to make decisions.

Most companies provide data on divisional, geographic, or segment results. Microsoft, for example, shares revenue and operating profit data for three segments: "Productivity and Business Processes" (think Office 365 subscriptions and LinkedIn), "Intelligent Cloud" (Azure), and "More Personal Computing" (gaming and Windows licensing). It's geographic breakdown is simply revenues for the U.S. and "other countries." The company does provide specific revenue figures for key businesses, including server products and cloud services, Office products, gaming, LinkedIn, and search.

Disclosures usually include sales and a measure of profit. Some companies share information about assets and capital expenditures. These are the raw materials you have to work with to build to overall ROIC from the divisions. Here are some things to keep in mind as you dive in to divisional analysis.

First, the whole has to equal the sum of the parts. You can estimate how each business adds to the aggregate with a sense of each division's earnings and assets. You can translate assets into invested capital by calculating the ratio for the company overall and assessing how that ratio may vary by division or geography. Microsoft's

invested capital is about 63 percent of total assets ( \$165 billion/\$ 264 billion), excluding excess cash and without adjustments for intangibles. But note the ratio can be very different for various divisions or geographies. You have to figure out how the pieces fit together, but you are always constrained by the aggregate result.

Comparable company analysis can be a useful guide. Consider businesses similar to the division you are analyzing and assess potential similarities and differences. At a minimum, comparable company analysis will generate valuable questions and provide you with insight about how the businesses operate.

The product of your analysis will prepare you for a discussion with management. If they tell you that your numbers are off for one division you can make adjustments knowing that there needs to be an offsetting adjustment in another business to square the figure to the whole. Exchanges like this with executives and competitors will allow you to home in on each division's ROIC.

Smart activist investors are really good at breaking down businesses by ROIC. Doing it well shows where value may be hidden and how capital allocation improvements can add value.

# Return on Invested Capital and Competitive Strategy Analysis

The calculation of ROIC is an effort to understand a company's past and prospective ability to create shareholder value. An ROIC in excess of the cost of capital reflects competitive success that is the result of a strategy. Understanding how a company achieves its returns can provide guidance in assessing whether they will be sustainable.

Michael Porter, a professor of strategy at Harvard Business School, identified differentiation and cost leadership as generic strategies to gain an advantage. Differentiation means that a company can price its good or service at a premium to others. Cost leadership means a company can deliver its offering at a relatively low price.[60] Knowing how a company generates an attractive ROIC can inform competitive strategy analysis.

$$
\mathrm {R O I C} = \frac {\mathrm {N O P A T}}{\mathrm {S a l e s}} \times \frac {\mathrm {S a l e s}}{\mathrm {I n v e s t e d c a p i t a l}}
$$

The first term on the right side, NOPAT/Sales, is the NOPAT margin. This measures profit per unit. The second term, Sales/Invested capital, is the invested capital turnover. This measures capital efficiency. Sales cancel out when the terms are multiplied and the result is NOPAT/Invested capital, or ROIC.

Companies can have different ways to get to the same ROIC. Retailers provide a clear example. For example, a retailer that is a cost leader may have a 3 percent NOPAT/Sales ratio and a 6 times Sales/Invested capital ratio. This would generate an ROIC of 18 percent. A differentiated luxury goods seller, on the other hand, may reach the same ROIC with an 18 percent NOPAT/Sales ratio and 1 times invested capital turnover.

If a business gets to a high ROIC through a high NOPAT margin, you should focus your analysis on differentiation. If the company's high return comes from a high invested capital turnover ratio, emphasize analysis of cost leadership. Rare companies have high NOPAT margins and high invested capital turnover ratios. Generally, those companies have advantages reinforced by economies of scale (see exhibit 17).

Exhibit 17: ROIC and Competitive Advantage  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/0ae64d680cb2faa7a77343816ca22f9b77180074a20e9113b0d6d68c10b21b50.jpg)  
NOPAT Margin  
Source: Counterpoint Global.

Exhibit 18 plots the top 500 companies in the Russell 3000 based on the drivers of their ROIC. The solid black line is an isoquant curve that represents the combinations of NOPAT margin and invested capital turnover that equal an ROIC of five percent, which is also an estimate for the cost of capital in 2021. The companies in the bottom right, with relatively high margins and low invested capital turnover, pursue a strategy of differentiation. The businesses in the upper left, with relatively low margins and high invested capital turnover, seek to be cost leaders. One analysis that can provide insight is to track how a company's NOPAT margin and invested capital turnover change over time.

Exhibit 18: Drivers of ROIC for the Top 500 Companies in the Russell 3000, 2021  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/0c24bb2bf6d4b0dae2fd291ac845f6cb64412b3931fc3c6478b346153155c6dd.jpg)  
Source: FactSet and Counterpoint Global.  
Note: Top 500 companies by 2021 sales; Excludes financials and real estate; Truncated axes for visualization.

We can decompose results further when analyzing specific businesses. As with ROIC, the idea of looking at the factors that drive ROIC has been around a long time. The concepts were developed by Donaldson Brown in 1914. Brown worked at DuPont, the chemical company, which is why this is commonly called the "DuPont formula."61 Exhibit 19 shows the drivers of Microsoft's ROIC in fiscal 2022. We can augment this analysis by comparing Microsoft to appropriate peers to see how it stacks up. Items that deviate substantially from competitors deserve additional analysis.

Exhibit 19: Microsoft ROIC Breakdown, 2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/9d516627-9c12-4ef1-a18f-5737ef8dc1cb/5c7a791eea72d1245ead201dea2a57105b089542c00d3369c5d7fb13dc39ea6c.jpg)  
Source: Microsoft Corporation and Counterpoint Global.

# Limitations of ROIC

We believe that a thoughtful estimation of ROIC can be very useful as part of business analysis and valuation. However, the approach has limitations that are important to discuss. These include the application to companies in the financial sector, the use in assessing M&A, and the various ways to calculate ROIC and what each seeks to answer.

Financial sector. As we saw earlier, most practitioners use a DCF model that estimates enterprise value by discounting free cash flow to the firm using the weighted average cost of capital, or WACC. Shareholder value is the difference between the enterprise value and net debt and other claims. This approach separates operating and financing decisions. Operating results are reflected in the free cash flow, and financing choices are captured in the WACC. ROIC measures the results of the operations and is unaffected by how a firm finances itself.

Financing costs are a component of operations for many financial institutions, including banks. This means you value a financial company by estimating the free cash flows attributable to equity, or FCFE, and discounting them to the present value by the cost of equity capital.

The principle of discounting cash flows applies to all companies. But the proper number to project, and the appropriate discount rate, is different for a financial company as compared to a non-financial company.[62]

Return on equity (ROE) is to financial companies what ROIC is to non-financial firms. The definition of ROE is as follows:

$$
R O E = \frac {\text {A d j u s t e d n e t i n c o m e}}{\text {B o o k v a l u e o f e q u i t y}}
$$

The numerator for a typical large bank, adjusted net income, equals net interest income (less provision for credit losses) plus noninterest income (typically comprised of service charges and fees), less expenses (salaries, benefits, etc.) and cash taxes. The denominator, book value of equity, can be taken directly from the balance sheet because a bank's assets and liabilities are supposed to reasonably reflect market values. The issues we discuss above, including dealing with goodwill and write-offs, are applicable to financials as well.

M&A. ROIC is an inappropriate way to assess M&A because the cost (invested capital) is reflected immediately and the benefit (NOPAT) comes over time. Most deals, even those that create substantial value for the buyer, look poor when viewed through this lens.

Take a simple example of opening a successful restaurant as a way to think about acquiring a business. Assume the restaurant costs \$1 million to open. The ROIC on day one will be awful because the numerator is small and the denominator is large. In the future, ROIC will look extraordinarily good because the numerator will be large as the restaurant is running efficiently and the denominator will be small because the assets will have been depreciated. Neither the low initial ROIC nor the high subsequent ROIC tells you whether the restaurant created shareholder value.

The right way to assess an M&A deal is to do a net present value calculation. The question is whether the present value of future cash flows, including the benefit of synergies, exceeds the purchase price. If so, the deal creates economic value.

There is research that shows that companies that have high ROICs are, on average, better at doing good M&A deals than those that have low ROICs.[63] The suggestion is that capital allocation skills apply both internally and externally.

What question ROIC seeks to answer. Aswath Damodaran, the professor of finance, recently expressed substantial skepticism about the calculation of ROIC, suggesting it is not useful for young companies and that companies can game the figures.[64] The more fundamental issue is that the answer that ROIC gives you can depend a great deal on the question you seek to answer.

As we have seen throughout this discussion, there are a number of judgments you have to make to calculate ROIC in a way that offers insight. These include adjustments for excess cash, capitalization of intangibles, and adding back write-offs. The results can differ significantly based on what you choose to measure. For this reason, investment firms should define ROIC in a consistent manner to make sure that comparisons between companies are valid.

Exhibit 20 looks at the various ways we can calculate ROIC and how the choices affect the outcomes for Microsoft.

Exhibit 20: Various Calculations of ROIC and the Questions They Address  

<table><tr><td>Method to Calculate ROIC</td><td>Result for Microsoft in Fiscal 2022</td><td>Question the Calculation Seeks to Answer</td></tr><tr><td>- Subtract acquired goodwill and intangibles
- Don&#x27;t make intangible adjustment</td><td>94%</td><td>What is the underlying ROIC?</td></tr><tr><td>- Leave in acquired goodwill and intangibles
- Don&#x27;t make intangible adjustment</td><td>49%</td><td>What is ROIC as reported?</td></tr><tr><td>- Subtract acquired goodwill and intangibles
- Make intangible adjustment</td><td>48%</td><td>What is the underlying ROIC after considering intangible investment?</td></tr><tr><td>- Leave in acquired goodwill and intangibles
- Make intangible adjustment</td><td>34%</td><td>What is the ROIC after considering intangible investment?</td></tr></table>

Source: Microsoft Corporation and Counterpoint Global.

Some investors choose to examine ROIC by subtracting acquired goodwill and intangibles and not making intangible adjustments.[65] This calculation seeks to determine what the underlying ROIC looks like excluding the impact of M&A, or the organic ROIC. That figure for Microsoft for fiscal 2022 is 94 percent.

Next, we look at how ROIC is commonly reported. This includes leaving acquired goodwill and intangibles in the calculation but not making adjustments for intangibles. This tells us the ROIC based on reported numbers. That figure is 49 percent, as we have seen.

We can also consider ROIC by subtracting acquired goodwill and intangibles and making intangible adjustments. This addresses the question of the underlying, or organic, ROIC including intangible investment. That comes out to 48 percent for Microsoft. That this is close to the reported number is a coincidence.

Finally, we can show ROIC by leaving in both acquired goodwill and intangibles and making intangible adjustments. We did this calculation above. This shows ROIC after considering intangible investments. The result of this approach is an ROIC of 34 percent.

We did not add back goodwill write-offs in the calculations that included acquired goodwill and intangibles. That adjustment modestly reduces those ROICs.

Microsoft's ROIC has a range of 34 to 94 percent, or 60 percentage points, based on what you are asking of the financial statements. The key is to ask the same question to make sure results are comparable from one company to the next.

# Conclusion

A company creates value when one dollar invested in the business is worth more than one dollar in the market. This happens when the firm is able to make investments that generate a return above the opportunity cost of capital. Companies pursue strategies, often related to differentiation or cost leadership, that allow them to create value over time.

Return on invested capital (ROIC) is a measure of value creation. The metric is simple in principle. The numerator, net operating profit after taxes (NOPAT), is the cash earnings of a business excluding any financing costs. That means that NOPAT is the same no matter how the company chooses to finance itself. The denominator, invested capital, is equivalently the net assets a company needs to run its business (operating) and how it finances those assets (financing). Because balance sheets balance, these approaches are equivalent.

ROIC should be considered relative to the weighted average cost of capital (WACC). All capital has an opportunity cost, which you can think of as the return on the next best alternative. A company is earning a rate above its opportunity cost when its ROIC exceeds its WACC. Further, the components of ROIC are linked directly to free cash flow, the lifeblood of corporate value that is at the core of a discounted cash flow model.

ROIC is conceptually straightforward but a lot of judgment goes into how it is calculated. For example, it is advisable to have a framework for coping with excess cash, restructuring charges, asset write-offs, and share buybacks.

We saw that the distribution of ROICs looks like a bell curve in the middle, with the most common result between 5 and 10 percent, but that there are substantial tails on both sides. Overall, the aggregate ROIC for companies in the Russell 3000 has inched higher since the 1990s, with a consistent finding that the largest companies have ROICs higher than the average. An examination of ROICs by quintiles shows that the ROICs for the top quintile improved substantially since 1990 and the ROICs for the bottom quintile worsened meaningfully. The rise of intangibles may help explain both trends.

How to handle intangible investments is the big topic related to ROIC. In recent decades, intangible investments, including marketing spending and R&D, have become larger than tangible investments such as capital expenditures. The challenge is that most intangible investments are expensed on the income statement, depressing NOPAT, while tangible investments go straight to the balance sheet.

Capitalizing intangible investments can change the ROIC materially for intangible-intensive companies. There are lots of details to attend to in this exercise as well, including determining what part of selling, general, and administrative expense is justifiably deemed to be an investment and estimating an appropriate useful life. Thoughtful capitalization of intangible investments does improve the comparability of results across businesses in the economy.

ROIC is a snapshot in time. But investors should care a great deal about how ROIC will change over time. We can use the tools we have to measure return on incremental invested capital (ROIIC). Rising ROIICs pull aggregate ROICs up. That said, a study of base rates shows that ROIC is, in the aggregate, subject to regression toward the mean. That implies that extreme good or bad outcomes will be followed by outcomes with an expected value closer to the average. Investors should always keep both ideas in mind. Look for increasing returns while understanding that achieving and sustaining high returns is rare.

For many companies, a relatively modest percentage of the invested capital drives a majority of the value. Assessing ROIC by business or geography is one way to discern the source of value. Companies vary in their disclosures, but they are supposed to present information in a way that is consistent with how they manage the business. Understanding ROIC by business is a great way to figure out where value resides and where it is being destroyed.

A company's ROIC is determined in part by the industry it competes in and the strategies it pursues. Two generic strategies to achieve competitive advantage include differentiation and cost leadership. ROIC can be broken down into a measure of margins, or profitability per unit (NOPAT/Sales), and capital efficiency (Sales/Invested capital). Attractive ROICs for companies pursuing a differentiation strategy come via high margins. Similarly good ROICs for companies following a cost leadership strategy are the result of above-average capital efficiency. A decomposition of ROIC can provide concrete clues about a company's strategy and serve as a guide for strategic analysis.

ROIC has limitations. For example, the calculation needs to be modified for companies in the financial sector. ROIC is also a poor way to assess M&A deals. But perhaps the biggest challenge is that ROIC can be calculated many different ways. Two major adjustments are subtracting goodwill and intangible assets that arise from acquisitions, and the capitalization of intangible investment. At the end of the day, the approach you use to calculate ROIC should try to answer the question you are asking about the business.

The use of ROIC has grown in the corporate and investment communities. But you should never take an ROIC figure at face value without understanding how it was calculated. Investment organizations should agree on a common approach to determining ROIC and leave room for investors to share additional calculations if they believe it adds information.

Please see important disclosures on pages 42-44.

# Appendix A: Free Cash Flow and ROIC in a Discounted Cash Flow Model

The concepts of free cash flow, ROIC, and economic profit have common roots. Free cash flow, the cash that a company can distribute to its claimholders, equals NOPAT minus investment. ROIC is NOPAT divided by invested capital, a measure of cumulative net investment. And economic profit is ROIC minus WACC times invested capital and measures a company's residual income after considering the cost of capital.

A discounted cash flow model based either on free cash flow or economic profit will give an identical answer if the inputs are the same and the analysis is done properly. Exhibit 21 shows this equivalence. Our assumptions in this example include a starting NOPAT of \$250, 8 percent NOPAT growth, initial invested capital of \$1,000, a 14.4 percent ROIIC, and a 7 percent cost of capital. Assuming 10 years of value creation, the corporate value in each case is \$5,000.

A few comments are in order. First, it is crucial to use the proper definition of free cash flow, not the one that is used most commonly (cash flow from operating activities minus capital expenditures). The latter fails to reflect stock-based compensation as an expense, is after financing costs, and does not capture investments made through leases. As a result, it is unfit for valuation work without the benefit of numerous adjustments.

Second, the initial invested capital figure, and hence ROIC, does not affect the valuation. We assumed invested capital was \$1,000 in this example, but we could have plugged in any number and the outcome would have been unchanged. The reason is that future cash flows determine value. ROIC is useful only to the degree that past results provide some guidance about the future.

Finally, take note of the mechanics of the two models. NOPAT is the same and the annual investment determines the change in invested capital. The question is whether one is more informative than the other. It is possible to calculate shareholder value added (SVA) and market-expected return on investment (MEROI) for the first model to get a grasp of the magnitude of expected value creation.[66] ROIC is clear and easy to see in the second model.

ROIC has its limitations as a financial measure but is consistent with a standard free cash flow model provided you define the value drivers correctly. Introducing a line in the model to estimate ROIC can be helpful as a way to make sure that the assumptions accurately capture the expected outcomes.

Exhibit 21: Free Cash Flow and Economic Profit Generate the Same Value  

<table><tr><td colspan="12">Free cash flow model</td></tr><tr><td>Year</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td></tr><tr><td>NOPAT</td><td>250.0</td><td>270.0</td><td>291.6</td><td>314.9</td><td>340.1</td><td>367.3</td><td>396.7</td><td>428.5</td><td>462.7</td><td>499.8</td><td>539.7</td></tr><tr><td>Investment</td><td>139.2</td><td>150.3</td><td>162.3</td><td>175.3</td><td>189.4</td><td>204.5</td><td>220.9</td><td>238.5</td><td>257.6</td><td>278.2</td><td></td></tr><tr><td>Free cash flow</td><td>110.8</td><td>119.7</td><td>129.3</td><td>139.6</td><td>150.8</td><td>162.8</td><td>175.9</td><td>189.9</td><td>205.1</td><td>221.5</td><td></td></tr><tr><td>PV free cash flow</td><td>103.6</td><td>104.5</td><td>105.5</td><td>106.5</td><td>107.5</td><td>108.5</td><td>109.5</td><td>110.5</td><td>111.6</td><td>112.6</td><td></td></tr><tr><td>Σ PV free cash flow</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1,080.4</td><td></td></tr><tr><td>Continuing value</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>7,710.4</td><td></td></tr><tr><td>Σ PV free cash flow</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1,080.4</td><td></td></tr><tr><td>PV continuing value</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>3,919.6</td><td></td></tr><tr><td>Corporate value</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>5,000.0</td><td></td></tr></table>

<table><tr><td colspan="12">Economic profit model</td></tr><tr><td>Year</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td></tr><tr><td>Beginning capital</td><td>1,000.0</td><td>1,139.2</td><td>1,289.5</td><td>1,451.8</td><td>1,627.2</td><td>1,816.5</td><td>2,021.0</td><td>2,241.9</td><td>2,480.4</td><td>2,738.0</td><td>3,016.2</td></tr><tr><td>NOPAT</td><td>250.0</td><td>270.0</td><td>291.6</td><td>314.9</td><td>340.1</td><td>367.3</td><td>396.7</td><td>428.5</td><td>462.7</td><td>499.8</td><td>539.7</td></tr><tr><td>Investment</td><td>139.2</td><td>150.3</td><td>162.3</td><td>175.3</td><td>189.4</td><td>204.5</td><td>220.9</td><td>238.5</td><td>257.6</td><td>278.2</td><td></td></tr><tr><td>Capital charge</td><td>70.0</td><td>79.7</td><td>90.3</td><td>101.6</td><td>113.9</td><td>127.2</td><td>141.5</td><td>156.9</td><td>173.6</td><td>191.7</td><td></td></tr><tr><td>Economic profit</td><td>180.0</td><td>190.3</td><td>201.3</td><td>213.3</td><td>226.2</td><td>240.2</td><td>255.2</td><td>271.5</td><td>289.1</td><td>308.1</td><td></td></tr><tr><td>PV economic profit</td><td>168.2</td><td>166.2</td><td>164.3</td><td>162.7</td><td>161.3</td><td>160.0</td><td>159.0</td><td>158.0</td><td>157.3</td><td>156.6</td><td></td></tr><tr><td>Σ PV economic profit</td><td>168.2</td><td>334.4</td><td>498.8</td><td>661.5</td><td>822.8</td><td>982.8</td><td>1,141.8</td><td>1,299.8</td><td>1,457.1</td><td>1,613.7</td><td></td></tr><tr><td>ROIC</td><td>25.0%</td><td>23.7%</td><td>22.6%</td><td>21.7%</td><td>20.9%</td><td>20.2%</td><td>19.6%</td><td>19.1%</td><td>18.7%</td><td>18.3%</td><td></td></tr><tr><td>Continuing value</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>4,694.2</td><td></td></tr><tr><td>Σ PV economic profit</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1,613.7</td><td></td></tr><tr><td>PV continuing value</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>2,386.3</td><td></td></tr><tr><td>Plus: Beginning capital</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1,000.0</td><td></td></tr><tr><td>Corporate value</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>5,000.0</td><td></td></tr></table>

Source: Counterpoint Global.  
Note: Assumes 8% NOPAT growth, 14.4% ROIC, and 7% cost of capital;  $\Sigma = \text{Sum of}$ .

# Appendix B: How Adjusting for Intangibles Affects the ROIC for a Company Losing Money

The case of Microsoft, a company with a high ROIC, showed that an adjustment for intangible investment lowered ROIC. The adjustment increases NOPAT and investment for any particular year by the same amount, but it also reflects the sum of past intangible investments net of amortization. As a result, the incremental increase in NOPAT was modest relative to the increase in invested capital.

Here are the numbers for Microsoft. The traditional ROIC is 49 percent, or  \$70 billion in NOPAT divided by\$ 143 billion of average invested capital. The adjustment adds an ROIC of 11 percent, or \$10 billion to NOPAT and \$90 billion to average invested capital. You can think about it as starting with the high-return part (49% = 70/143) and adding a low-return part (11% = 10/90) to get an adjusted total of 34 percent (34% = 80/233).

The math works in the opposite direction for a company that loses money. Without knowing any of the specific numbers, we know that we will start with a negative ROIC because the numerator reflects a loss and that the adjustment will add positive ROIC as NOPAT is always revised up. As a result, the aggregate ROIC rises following the change.

Let's look at Snowflake Inc., a cloud computing-based data warehousing company, to illustrate the point. In fiscal 2022, the company had NOPAT of negative  \$704 million (see exhibit 22). A majority of the company's\$ 1.475 billion in SG&A expense can be deemed an intangible investment, so we know that the adjustment to NOPAT will have a significant effect. We estimate that adjusted NOPAT for 2022 is \$52 million.[67]

Exhibit 22: Impact of Capitalizing Intangibles on Snowflake's NOPAT, 2020-2022  

<table><tr><td colspan="4">Traditional</td><td colspan="4">With adjustments</td></tr><tr><td>($ Millions)</td><td>2020</td><td>2021</td><td>2022</td><td>($ Millions)</td><td>2020</td><td>2021</td><td>2022</td></tr><tr><td>EBIT</td><td>(358)</td><td>(544)</td><td>(715)</td><td>EBIT</td><td>(358)</td><td>(544)</td><td>(715)</td></tr><tr><td>Amortization of intangibles</td><td>2</td><td>3</td><td>8</td><td>Amortization of intangibles</td><td>2</td><td>3</td><td>8</td></tr><tr><td>EBITA</td><td>(356)</td><td>(541)</td><td>(707)</td><td>EBITA</td><td>(356)</td><td>(541)</td><td>(707)</td></tr><tr><td>Taxes</td><td></td><td></td><td></td><td>Taxes</td><td></td><td></td><td></td></tr><tr><td>Tax provision</td><td>1</td><td>2</td><td>3</td><td>Tax provision</td><td>1</td><td>2</td><td>3</td></tr><tr><td>Deferred taxes</td><td>0</td><td>0</td><td>0</td><td>Deferred taxes</td><td>0</td><td>0</td><td>0</td></tr><tr><td>Tax shield</td><td>(0)</td><td>(0)</td><td>6</td><td>Tax shield</td><td>(0)</td><td>(0)</td><td>6</td></tr><tr><td>Cash taxes</td><td>1</td><td>2</td><td>(3)</td><td>Cash taxes</td><td>1</td><td>2</td><td>(3)</td></tr><tr><td>NOPAT</td><td>(358)</td><td>(543)</td><td>(704)</td><td>NOPAT</td><td>(358)</td><td>(543)</td><td>(704)</td></tr><tr><td></td><td></td><td></td><td></td><td>Adjustment for NOPAT</td><td>328</td><td>494</td><td>756</td></tr><tr><td></td><td></td><td></td><td></td><td>Adjusted NOPAT</td><td>(30)</td><td>(49)</td><td>52</td></tr></table>

Source: Snowflake Inc. and Counterpoint Global.  
Note: EBITA = Earnings before interest, taxes, and amortization; NOPAT = Net operating profit after taxes.

The impact of the adjustment for intangible investment is equally material to invested capital. Exhibit 23 shows that invested capital goes from  \$230 million to nearly\$ 2.1 billion.

The ROIC is -416 percent in 2022, or negative  \$704 million of NOPAT divided by\$ 169 million of average invested capital. This figure does not provide much insight.

The adjustment adds an ROIC of 51 percent, or  \$756 million in NOPAT divided by\$ 1.490 billion in average invested capital. You can think about it as starting with a low-return part (-416% = -704/169) and adding a high-

return part (51% = 756/1,490) to get an adjusted total of 3 percent (3% = 52/1,659). Three percent is not great but it is consistent with a healthy company early in its life cycle.

The main point is that adjustments to reflect intangibles tend to pull ROICs closer to the average. A more accurate distinction between profits and investments is important in a world where intangible investments are significant and becoming more so over time. The impact of the adjustment for intangible investment varies broadly across companies based on their intangible intensity. For some companies the revised numbers are vastly different than the reported ones. For others, the adjustments are immaterial.

Exhibit 23: Impact of Capitalizing Intangibles on Snowflake's Invested Capital, 2020-22  

<table><tr><td colspan="4">Traditional</td><td colspan="4">With adjustments</td></tr><tr><td>($ Millions)</td><td>2020</td><td>2021</td><td>2022</td><td>($ Millions)</td><td>2020</td><td>2021</td><td>2022</td></tr><tr><td>Cash *</td><td>13</td><td>30</td><td>61</td><td>Cash *</td><td>13</td><td>30</td><td>61</td></tr><tr><td>Accounts receivable, net</td><td>179</td><td>294</td><td>546</td><td>Accounts receivable, net</td><td>179</td><td>294</td><td>546</td></tr><tr><td>Deferred commissions, current</td><td>26</td><td>32</td><td>51</td><td>Deferred commissions, current</td><td>26</td><td>32</td><td>51</td></tr><tr><td>Prepaid expenses and other current</td><td>25</td><td>66</td><td>150</td><td>Prepaid expenses and other current</td><td>25</td><td>66</td><td>150</td></tr><tr><td>Total current assets</td><td>244</td><td>422</td><td>808</td><td>Total current assets</td><td>244</td><td>422</td><td>808</td></tr><tr><td>- NIBCLs</td><td>398</td><td>770</td><td>1,372</td><td>- NIBCLs</td><td>398</td><td>770</td><td>1,372</td></tr><tr><td>Net working capital</td><td>(154)</td><td>(347)</td><td>(564)</td><td>Net working capital</td><td>(154)</td><td>(347)</td><td>(564)</td></tr><tr><td>Property and equipment, net</td><td>27</td><td>69</td><td>105</td><td>Property and equipment, net</td><td>27</td><td>69</td><td>105</td></tr><tr><td>Operating lease right-of-use assets</td><td>196</td><td>187</td><td>190</td><td>Operating lease right-of-use assets</td><td>196</td><td>187</td><td>190</td></tr><tr><td>Goodwill</td><td>7</td><td>8</td><td>8</td><td>Goodwill</td><td>7</td><td>8</td><td>8</td></tr><tr><td>Intangible assets, net</td><td>5</td><td>16</td><td>37</td><td>Intangible assets, net</td><td>5</td><td>16</td><td>37</td></tr><tr><td>Deferred commissions, non current</td><td>70</td><td>86</td><td>125</td><td>Deferred commissions, non current</td><td>70</td><td>86</td><td>125</td></tr><tr><td>Other long-term assets</td><td>20</td><td>89</td><td>329</td><td>Other long-term assets</td><td>20</td><td>89</td><td>329</td></tr><tr><td>Invested capital</td><td>170</td><td>108</td><td>230</td><td>Invested capital</td><td>170</td><td>108</td><td>230</td></tr><tr><td></td><td></td><td></td><td></td><td>Capitalized intangibles, net</td><td>617</td><td>1,112</td><td>1,868</td></tr><tr><td></td><td></td><td></td><td></td><td>Adjusted invested capital</td><td>787</td><td>1,220</td><td>2,098</td></tr><tr><td>NOPAT</td><td>(358)</td><td>(543)</td><td>(704)</td><td>NOPAT</td><td>(30)</td><td>(49)</td><td>52</td></tr><tr><td>Invested capital (average)</td><td>95</td><td>139</td><td>169</td><td>Invested capital (average)</td><td>450</td><td>1,004</td><td>1,659</td></tr><tr><td>ROIC</td><td>-377%</td><td>-390%</td><td>-416%</td><td>ROIC</td><td>-7%</td><td>-5%</td><td>3%</td></tr></table>

Source: Snowflake Inc. and Counterpoint Global.  
Note: * Cash = 5 percent of revenue; NIBCLs = Non-interest-bearing current liabilities.

# Endnotes

<sup>1</sup> Robert F. Bruner, "Does M&A Pay? A Survey of Evidence for the Decision-Maker," Journal of Applied Finance, Vol. 12, No. 1, Spring/Summer 2002, 48-68.  
$^{2}$  Wayne R. Landsman and Alan C. Shapiro, "Tobin's q and the Relation Between Accounting ROI and Economic Return," Journal of Accounting, Auditing & Finance, Vol. 10, No. 1, January 1995, 103-118 and F.J. Arcelus, D. Mitra, and G. Srinivasan, "On the Incidence of Deferred Taxes, Intangibles and Non-Linearities in the Relationship Between Tobin's Q and ROI," Journal of Economics and Business, Vol. 57, No. 2, March-April 2005, 165-185.  
<sup>3</sup> Matthew A. Stallings, "The Potential Impact of Lease Accounting on Equity Valuation: Implications of Cost of Capital and Free Cash Flow Estimates," CPA Journal, Vol. 87, No. 11, November 2017, 52-56.  
4 What is most important is to be consistent. Let's say a company buys a store and finances it with debt. It would record the store as an asset and the debt as a liability. It would then subtract interest expense, a financing cost, from operating income. Now consider the case of a firm leasing the same store. It would also reflect the store on the asset and liability sides of the balance sheet according to the new accounting standard. But the lease cost would be recorded as an operating, rather than a financing, expense. The adjustment is to reclassify the embedded interest portion of the lease cost from the operating section of the income statement to the financing section. This increases NOPAT. Notably, the International Accounting Standards Board (IASB) properly treats the depreciation and interest expense components of operating lease payments.  
<sup>5</sup> Here's what Northrop Grumman wrote in its Form 10-K for the year ended December 31, 2021. "Beginning in 2022, the Tax Cuts and Jobs Act of 2017 ('TCJA') eliminates the option to deduct research and development expenditures currently and requires taxpayers to amortize them over five years pursuant to IRC Section 174. Although Congress is considering legislation that would defer the amortization requirement to later years, we have no assurance that the provision will be repealed or otherwise modified. If the requirement is not modified, it will materially reduce our cash flows beginning in 2022."  
During its conference call for the third quarter of 2021, the company's chief financial officer, Dave Keffer, quantified the amount with the following: "…as we've noted in the past, current tax law would require companies to amortize R&D costs over five years, starting in 2022, which would increase our cash taxes by around \$1 billion next year and smaller amounts in subsequent years. There continues to be uncertainty in the tax environment with potential new legislation that could change the R&D amortization provision and other provisions." See www.fool.com/earnings/call-transcripts/2021/10/28/northrop-grumman-noc-q3-2021-earnings-call-transcr/.  
 For example, consider a company with \$125,000 in earnings before stock-based compensation, \$25,000 in stock-based compensation, and a 21 percent tax rate. The pretax income the company reports would be $100,000 ($125,000 - 25,000) and the tax provision would be $21,000 ($100,000 × .21). But since the stock-based compensation is not deductible, the tax bill would be $26,250 ($125,000 × .21). The difference, \$5,250, is recorded as a tax asset. For a useful discussion, see https://sfmagazine.com/post-entry/december-2017-the-impact-of-share-based-compensation/.  
<sup>7</sup> Tim Koller, Marc Goedhart, and David Wessels, Valuation: Measuring and Managing the Value of Companies, 7<sup>th</sup> Edition (Hoboken, NJ: John Wiley & Sons, 2020), 224-227.  
$^{8}$  John R. Graham, "Presidential Address: Corporate Finance and Reality," Journal of Finance, Vol. 77, No. 4, August 2022, 1975-2049.  
9 See "Tax Rate by Industry" for the U.S. at https://pages.stern.nyu.edu/~adamodar/.  
10 The cash conversion cycle (CCC) = days in sales outstanding (DSO) + days in inventory outstanding (DIO) - days in payables outstanding (DPO). DSO = [(Beginning accounts receivable + ending accounts receivable)/2]/(Sales/365). DIO = [(Beginning inventory + ending inventory)/2]/(Cost of goods sold/365). DPO = [(Beginning accounts payable + ending accounts payable)/2]/(Cost of goods sold/365).  
Microsoft's CCC was -3.5 days in fiscal 2022: DSO was 75.8 days, DIO was 18.6 days, and DPO was 97.8 days.  
<sup>11</sup> Baolian Wang, "The Cash Conversion Cycle Spread," Journal of Financial Economics, Vol. 133, No. 2, August 2019, 472-497 and Qi Lin and Xi Lin, "Cash Conversion Cycle and Aggregate Stock Returns," Journal of Financial Markets, Vol. 52, January 2021, 100560.  
<sup>12</sup> Hyun Jong Na, "Disappearing Working Capital: Implications for Accounting Research," Working Paper, November 2019.

Depreciation and amortization are tools to spread the expense of an investment over its useful life. Depreciation is for expensing tangible assets and amortization is for intangible assets. They are functionally the same but in some cases have different implications for tax purposes.  
<sup>14</sup> Financial Accounting Standards Board, "Statement of Financial Accounting Standards No. 141 (Revised 2007): Business Combinations," No. 299-A, December 2007.  
15 Koller, Goedhart, and Wessels, Valuation, 216-218.  
<sup>16</sup> Fred R. Bleakley, "Clinton Budget Would End Tax Cut for 100-Year Bonds," Wall Street Journal, February 4, 1997.  
$^{17}$  Katharine Adame, Jennifer Koski, Katie Lem, and Sarah McVay, "Free Cash Flow Disclosure in Earnings Announcements," Working Paper, June 3, 2020.  
18 Jerald E. Pinto, Thomas R. Robinson, and John D. Stowe, "Equity Valuation: A Survey of Professional Practice," Financial Economics, Vol. 37, No. 2, April 2019, 219-233.  
<sup>19</sup> Michael J. Mauboussin and Dan Callahan, "Categorizing for Clarity: Cash Flow Statement Adjustments to Improve Insight," Consilient Observer: Counterpoint Global Insights, October 6, 2021.  
20 David Solomons, *Divisional Performance: Measurement and Control* (New York: Financial Executives Research Foundation, 1965), 60-71.  
21 G. Bennett Stewart, The Quest for Value: A Guide for Senior Managers (New York: HarperCollins Publishers, 1991).  
22 Vartika Gupta, Tim Koller, and Peter Stumpner, "Which Metrics Really Drive Total Returns to Shareholders?" McKinsey & Company, October 2021.  
$^{23}$  Marshall Fisher, Vishal Gaur, and Herb Kleinberger, "Curing the Addiction to Growth," Harvard Business Review, Vol. 95, No. 1, January-February 2017, 66-74.  
[24] Aswath Damodaran, "Dealing with Cash, Cross Holdings and Other Non-Operating Assets: Approaches and Implications," New York University - Stern School of Business, September 30, 2005.  
25 Tim Opler, Lee Pinkowitz, René Stulz, and Rohan Williamson, "The Determinants and Implications of Corporate Cash Holdings," Journal of Financial Economics, Vol. 52, No. 1, April 1999, 3-46; Richard Passov, "How Much Cash Does Your Company Need?" Harvard Business Review, Vol. 81, No. 11, November 2003, 119-126; and Thomas W. Bates, Kathleen M. Kahle and René M. Stulz, "Why Do U.S. Firms Hold So Much More Cash than They Used To?" Journal of Finance, Vol. 64, No. 5, October 2009, 1985-2021.  
26 Thomas W. Bates, Ching-Hung Chang, and Jianxin Daniel Chi, "Why Has the Value of Cash Increased Over Time?" Journal of Financial and Quantitative Analysis, Vol. 53, No. 2, April 2018, 749-787.  
[27] Amy Dittmar and Jan Mahrt-Smith, "Corporate Governance and the Value of Cash Holdings," Journal of Financial Economics, Vol. 83, No. 3, March 2007, 599-634.  
[28] Amy Dittmar, Jan Mahrt-Smith and Henri Servaes, "International Corporate Governance and Corporate Cash Holdings," Journal of Financial and Quantitative Analysis, Vol. 38, No. 1, March 2003, 111-133.  
29 Koller, Goedhart, and Wessels, Valuation, 338.  
30 James L. Canessa and Gregg A. Jarrell, "The Proper Treatment of Cash Holdings in DCF Valuation Theory and Practice," Journal of Business Valuation and Economic Loss Analysis, forthcoming.  
<sup>31</sup> Ethan Rouen, Eric C. So, and Charles C.Y. Wang, "Core Earnings: New Data and Evidence," Journal of Financial Economics, Vol. 142, No. 3, December 2021, 1068-1091.  
32 For a good chapter on this topic, see Koller, Goedhart, and Wessels, Valuation, 427-442.  
33 "Kimberly-Clark Announces Year-End 2021 Results And 2022 Outlook," January 26, 2022. See www.news.kimberly-clark.com/2022-01-26-KIMBERLY-CLARK-ANNOUNCES-YEAR-END-2021-RESULTSAND-2022-OUTLOOK.  
34 Bikki Jaggi, Beixin Lin, Suresh Govindaraj, and Picheng Lee, "The Value Relevance of Corporate Restructuring Charges," Review of Quantitative Finance and Accounting, Vol. 32, No. 2, February 2009, 101-128.  
35 Here's the calculation: We take  \$560 million, multiply it by the complement of the assumed tax rate of 25 percent (.75 = 1 -.25), and capitalize it by the cost of capital of 6 percent. So,\$ 420 million/.06 = \$7,000 million.  
36 Venkat Ramana Reddy Peddireddy, "Estimating Maintenance CapEx," Columbia University PhD Thesis, 2021.

37 Matteo Arena and Stephen Ferris, "A Survey of Litigation in Corporate Finance," Managerial Finance, Vol 43, No.1, 2017, 4-18.  
38 Amar Gande and Craig M. Lewis, "Shareholder-Initiated Class Action Lawsuits: Shareholder Wealth Effects and Industry Spillovers," Journal of Financial and Quantitative Analysis, Vol. 44, No. 4, August 2009, 823-850.  
39 To simplify this analysis, we used the same cost of capital for all companies in each year based on prevailing interest rates and estimates of risk premia. For example, our 2021 estimate was 5.0 percent. For the cost of equity, we used a risk-free rate of 1.45 percent, based on the yield on the 10-year Treasury note, and an equity risk premium of 4.24 percent as estimated by Aswath Damodaran. This sums to 5.7 percent. We assumed an after-tax cost of debt of 2.2 percent and a debt-to-total-capital ratio of 20 percent. This resulted in an estimate for the weighted average cost of capital of 5.0 percent  $[(0.2 \times 2.2\%) + (0.8 \times 5.7\%)]$ .  
Feng Gu, Baruch Lev, and Chenqi Zhu, "All Losses Are Not Alike: Real versus Accounting-Driven Reported Losses," SSRN Working Paper, May 2022.  
<sup>41</sup> Frederico Belo, Vito D. Gala, Juliana Salomao, Maria Ana Vitorino, "Decomposing Firm Value," Journal of Financial Economics, Vol. 143, No. 2, February 2022, 619-639.  
42 "Accounting for Research and Development Costs," Statement of Financial Accounting Standards No. 2, October 1974.  
43 Luminita Enache and Anup Srivastava, "Should Intangible Investments Be Reported Separately or Commingled with Operating Expenses? New Evidence," Management Science, Vol. 64, No. 7, July 2018, 3446-3468.  
$^{44}$  Ryan H. Peters and Lucian A. Taylor, "Intangible Capital and the Investment-q Relation," Journal of Financial Economics, Vol. 123, No. 2, February 2017, 251-272; Michael Ewens, Ryan H. Peters, and Sean Wang, "Measuring Intangible Capital with Market Prices," NBER Working Paper, October 2020; and Aneel Iqbal, Shivaram Rajgopal, Anup Srivastava, and Rong Zhao, "Value of Internally Generated Intangible Capital," Working Paper, February 2022.  
<sup>45</sup> Charles R. Hulten, "Decoding Microsoft: Intangible Capital as a Source of Company Growth," NBER Working Paper 15799, March 2010.  
46 We would note that a strong case can be made that not all R&D should be considered an intangible investment. See Vijay Govindarajan, Shivaram Rajgopal, Anup Srivastava, and Luminita Enache, "It's Time to Stop Treating R&D as a Discretionary Item," Harvard Business Review, January 29, 2019 and Aneel Iqbal, Shivaram Rajgopal, Anup Srivastava, and Rong Zhao, "Value of Internally Generated Intangible Capital," Working Paper, February 2022.  
47 Carol A. Corrado and Charles R. Hulten, "Innovation Accounting," in Dale W. Jorgenson, J. Steven Landefeld, and Paul Schreyer, eds., Measuring Economic Sustainability and Progress (Chicago: University of Chicago Press, 2014), 614.  
<sup>48</sup> The magnitude of the earnings increase is a function of the relative magnitude of intangible investments. See Michael J. Mauboussin and Dan Callahan, "Intangibles and Earnings: Improving the Usefulness of Financial Statements," Consilient Observer: Counterpoint Global Insights, April 12, 2022.  
49 Note that many DCF models include a continuing value estimate (also known as a residual or terminal value). To the degree to which a continuing value estimate is based on NOPAT or earnings before interest, taxes, depreciation, and amortization (EBITDA), capitalizing intangibles can change the output of the model. Conceptually, the value of a business is the present value of future free cash flows for as long as the company is around. The potential change in output reflects the model rather than the reality.  
50 Aswath Damodaran has posted a webcast on how to do this for R&D. You can use the same process for other items. See www.youtube.com/watch?v=Y_UpzqNk3l4.  
In other words, the upward adjustment in NOPAT is inconsistent with the more limited adjustment in invested capital. For example, see "To Capitalize Expenses or Not? It Doesn't Matter," New Constructs, February 15, 2022.  
52 Michael Berlemann and Jan-Erik Wesselhöft, "Estimating Aggregate Capital Stocks Using the Perpetual Inventory Method: A Survey of Previous Implementations and New Empirical Evidence for 103 Countries," Review of Economics, Vol. 65, No. 1, 2014, 1-34 and Michael Berlemann and Jan-Erik Wesselhöft, "Aggregate Capital Stock Estimations for 122 Countries: An Update," Review of Economics, Vol. 68, No. 2, 2017, 75-92.

53 Meghan Ayyagari, Asli Demirguc-Kunt, Vojislav Maksimovic, "The Rise of Star Firms: Intangible Capital and Competition," Working Paper, September 2021.  
For example, see McDonald's Corporation, Form 10-K, December 31, 2020. For an older example, see the sidebar, "How Much Bang for the Buck?" in G. Dan Hutcheson and Jerry D. Hutcheson, "Technology and Economics in the Semiconductor Industry," Scientific American, Vol. 274, No. 1, January 1996, 54-62.  
This can be a strong assumption, especially for young companies or companies that participate in cyclical industries.  
<sup>56</sup> Huong N. Higgins, "Earnings Forecasts of Firms Experiencing Sales Decline: Why So Inaccurate?" Journal of Investing, Vol. 17, No. 1, Spring 2008, 26-33.  
<sup>57</sup> Michael J. Mauboussin and Dan Callahan, "Market-Expected Return on Investment: Bridging Accounting and Valuation," Consilient Observer: Counterpoint Global Insights, April 14, 2021. For insightful research along the same lines, see Shivaram Rajgopal, Anup Srivastava, and Rong Zhao, "Do Digital Technology Firms Earn Excess Profits? Alternative Perspectives," Accounting Review, forthcoming.  
James M. McTaggart, Peter W. Kontes, and Michael C. Mankins, The Value Imperative: Managing Superior Shareholder Returns (New York: Free Press, 1994), 241.  
59 Dan Loyallo, Alexander L. Brown, David J. Teece, and David Bardolet, "Resource Re-Allocation Capabilities in Internal Capital Markets: The Value of Overcoming Inertia," Strategic Management Journal, Vol. 41, No. 8, August 2020, 1365-1380.  
$^{60}$ Joan Magretta, *Understanding Michael Porter: The Essential Guide to Competition and Strategy* (Boston, MA: Harvard Business Review Press, 2012), 114-115.  
$^{61}$  Dale L. Flesher and Gary John Previts, "Donaldson Brown (1885-1965): The Power of an Individual and His Ideas Over Time," Accounting Historians Journal, Vol. 40, No. 1, June 2013, 79-101.  
62 For an excellent discussion of valuing banks, see Koller, Goedhart, and Wessels, Valuation, 733-758.  
$^{63}$  Jun "QJ" Qian and Julie Lei Zhu, "Return to Invested Capital and the Performance of Mergers and Acquisitions," Management Science, Vol. 64, No. 10, October 2018, 4818-4834.  
64 "Aswath Damodaran-Making Sense of the Market," Invest Like the Best Podcast, May 22, 2022. See www joinsolossus.com/episodes/75305584/damodaran-teaching-the-world-finance?tab=transcript.  
65 "Will Thorndike – The Power of Long Holding Periods," Invest Like the Best Podcast, August 2, 2022. See www joinscolossus.com/episodes/88167992/thorndike-the-power-of-long-holding-periods?tab=transcript. Joel Greenblatt, who came up with the "magic formula," also uses a similar variation. He defines return on capital as EBIT/(Net Working Capital + Net Fixed Assets). This is the same equation, only pretax. See Joel Greenblatt, The Little Book That Beats the Market (Hoboken, NJ: John Wiley & Sons, 2006), 138-140.  
For more on shareholder value added (SVA), see Alfred Rappaport, Creating Shareholder Value: A Guide for Managers and Investors-Revised and Updated (New York: Free Press, 1998), 45-51. For more on MEROI, see Mauboussin and Callahan, "Market-Expected Return on Investment."  
67 According to Iqbal, Rajgopal, Srivastava, and Zhao, "Value of Internally Generated Intangible Capital," 62 percent of research and development (R&D) and 54 percent of both sales and marketing (S&M) and general and administrative (G&A) expenses are considered intangible investments. The assumed useful life is 6.7 years for R&D and 4.4 years for S&M and G&A. In this case, we could not create full amortization schedules because the company went public in 2020 and only shared numbers going back to 2019. To work around this problem, we estimated net capitalized intangible for each year using the perpetual inventory method and took the difference between each year's figure as the intangible adjustment.

# References

Adame, Katharine, Jennifer Koski, Katie Lem, and Sarah McVay, "Free Cash Flow Disclosure in Earnings Announcements," Working Paper, June 3, 2020.  
Almeida, Heitor, Murillo Campello, Igor Cunha, and Michael S. Weisbach, "Corporate Liquidity Management: A Conceptual Framework and Survey," Annual Review of Financial Economics, Vol. 6, December 2014, 135-162.  
Arcelus, F.J., D. Mitra, and G. Srinivasan, "On the Incidence of Deferred Taxes, Intangibles and Non-Linearities in the Relationship Between Tobin's Q and ROI," Journal of Economics and Business, Vol. 57, No. 2, March-April 2005, 165-185.  
Arena, Matteo, and Stephen Ferris, "A Survey of Litigation in Corporate Finance," Managerial Finance, Vol. 43, No. 1, 2017, 4-18.  
Ayyagari, Meghan, Asli Demirguc-Kunt, Vojislav Maksimovic, "The Rise of Star Firms: Intangible Capital and Competition," Working Paper, September 2021.  
Baldwin, Carliss, "Return on Invested Capital," in Mie Augier and David J. Teece, eds., The Palgrave Encyclopedia of Strategic Management (London: Palgrave Macmillan, 2020).  
Bates, Thomas W., Kathleen M. Kahle and René M. Stulz, "Why Do U.S. Firms Hold So Much More Cash than They Used To?" Journal of Finance, Vol. 64, No. 5, October 2009, 1985-2021.  
Bates, Thomas W., Ching-Hung Chang, and Jianxin Daniel Chi, "Why Has the Value of Cash Increased Over Time?" Journal of Financial and Quantitative Analysis, Vol. 53, No. 2, April 2018, 749-787.  
Belo, Frederico, Vito D. Gala, Juliana Salomao, Maria Ana Vitorino, "Decomposing Firm Value," Journal of Financial Economics, Vol. 143, No. 2, February 2022, 619-639.  
Berlemann, Michael, and Jan-Erik Wesselhöft, "Estimating Aggregate Capital Stocks Using the Perpetual Inventory Method: A Survey of Previous Implementations and New Empirical Evidence for 103 Countries," Review of Economics, Vol. 65, No. 1, 2014, 1-34.  
"Aggregate Capital Stock Estimations for 122 Countries: An Update," Review of Economics, Vol. 68, No. 2, 2017, 75-92.  
Bradley, Chris, Angus Dawson, and Sven Smit, "The Strategic Yardstick You Can't Afford to Ignore," McKinsey Quarterly, October 2013.  
Bruner, Robert F., "Does M&A Pay? A Survey of Evidence for the Decision-Maker," Journal of Applied Finance, Vol. 12, No. 1, Spring/Summer 2002, 48-68.  
Canessa, James L., and Gregg A. Jarrell, "The Proper Treatment of Cash Holdings in DCF Valuation Theory and Practice," Journal of Business Valuation and Economic Loss Analysis, forthcoming.  
Cao, Bing, Bin Jiang, and Tim Koller, "Balancing ROIC and Growth to Build Value," McKinsey on Finance, Spring 2006.  
Corrado, Carol A., and Charles R. Hulten, "Innovation Accounting," in Dale W. Jorgenson, J. Steven Landefeld, and Paul Schreyer, eds., Measuring Economic Sustainability and Progress (Chicago: University of Chicago Press, 2014), 614.  
Damodaran, Aswath, "Dealing with Cash, Cross Holdings and Other Non-Operating Assets: Approaches and Implications," New York University - Stern School of Business, September 30, 2005.  
Dittmar, Amy, Jan Mahrt-Smith and Henri Servaes, "International Corporate Governance and Corporate Cash Holdings," Journal of Financial and Quantitative Analysis, Vol. 38, No. 1, March 2003, 111-133.

Dittmar, Amy, and Jan Mahrt-Smith, "Corporate Governance and the Value of Cash Holdings," Journal of Financial Economics, Vol. 83, No. 3, March 2007, 599-634.  
Enache, Luminita, and Anup Srivastava, "Should Intangible Investments Be Reported Separately or Commingled with Operating Expenses? New Evidence," Management Science, Vol. 64, No. 7, July 2018, 3446-3468.  
Ewens, Michael, Ryan H. Peters, and Sean Wang, "Measuring Intangible Capital with Market Prices," NBER Working Paper, October 2020.  
Fisher, Marshall, Vishal Gaur, and Herb Kleinberger, "Curing the Addiction to Growth," Harvard Business Review, Vol. 95, No. 1, January-February 2017, 66-74.  
Flesher, Dale L., and Gary John Previts, "Donaldson Brown (1885-1965): The Power of an Individual and His Ideas Over Time," Accounting Historians Journal, Vol. 40, No. 1, June 2013, 79-101.  
Gande, Amar, and Craig M. Lewis, "Shareholder-Initiated Class Action Lawsuits: Shareholder Wealth Effects and Industry Spillovers," Journal of Financial and Quantitative Analysis, Vol 44, No. 4, August 2009, 823-850.  
Görlitz, Anna, and Michael Dobler, "Financial Accounting for Deferred Taxes: A Systematic Review of Empirical Evidence," Management Review Quarterly, 2021.  
Govindarajan, Vijay, Shivaram Rajgopal, Anup Srivastava, and Luminita Enache, "It's Time to Stop Treating R&D as a Discretionary Item," Harvard Business Review, January 29, 2019.  
Graham, John R., "Presidential Address: Corporate Finance and Reality," Journal of Finance, Vol. 77, No. 4, August 2022, 1975-2049.  
Graham, John R., and Mark T. Leery, "The Evolution of Corporate Cash," Review of Financial Studies, Vol. 31, No. 11, November 2018, 4288-4344.  
Greenblatt, Joel, The Little Book That Beats the Market (Hoboken, NJ: John Wiley & Sons, 2006).  
Gu, Feng, Baruch Lev, and Chenqi Zhu, "All Losses Are Not Alike: Real versus Accounting-Driven Reported Losses," SSRN Working Paper, May 2022.  
Gupta, Vartika, Tim Koller, and Peter Stumpner, "Which Metrics Really Drive Total Returns to Shareholders?" McKinsey & Company, October 2021.  
Higgins, Huong N., "Earnings Forecasts of Firms Experiencing Sales Decline: Why So Inaccurate?" Journal of Investing, Vol. 17, No. 1, Spring 2008, 26-33.  
Hulten, Charles R., "Decoding Microsoft: Intangible Capital as a Source of Company Growth," NBER Working Paper 15799, March 2010.  
Iqbal, Aneel, Shivaram Rajgopal, Anup Srivastava, and Rong Zhao, "Value of Internally Generated Intangible Capital," Working Paper, February 2022.  
Jaggi, Bikki, Beixin Lin, Suresh Govindaraj, and Picheng Lee, "The Value Relevance of Corporate Restructuring Charges," Review of Quantitative Finance and Accounting, Vol. 32, No. 2, February 2009, 101-128.  
Jiang, Bin, and Timothy M. Koller, "Data Focus: A Long-Term Look at ROIC," McKinsey Quarterly, 2006.  
Koller, Tim, Marc Goedhart, and David Wessels, Valuation: Measuring and Managing the Value of Companies, 7<sup>th</sup> Edition (Hoboken, NJ: John Wiley & Sons, 2020).  
Landsman, Wayne R., and Alan C. Shapiro, "Tobin's q and the Relation Between Accounting ROI and Economic Return," Journal of Accounting, Auditing & Finance, Vol. 10, No. 1, January 1995, 103-118.

Lin, Qi, and Xi Lin, "Cash Conversion Cycle and Aggregate Stock Returns," Journal of Financial Markets, Vol. 52, January 2021, 100560.  
Lovallo, Dan, Alexander L. Brown, David J. Teece, and David Bardolet, "Resource Re-Allocation Capabilities in Internal Capital Markets: The Value of Overcoming Inertia," Strategic Management Journal, Vol. 41, No. 8, August 2020, 1365-1380.  
Magerakis, Efstathios, Konstantinos Gkillas, Athanasios Tsagkanos, and Costas Siriopoulos, "Firm Size Does Matter: New Evidence on the Determinants of Cash Holdings," Journal of Risk and Financial Management, Vol. 13, No. 8, 2020.  
Magretta, Joan, Understanding Michael Porter: The Essential Guide to Competition and Strategy (Boston, MA: Harvard Business Review Press, 2012).  
McTaggart, James M., Peter W. Kontes, and Michael C. Mankins, The Value Imperative: Managing Superior Shareholder Returns (New York: Free Press, 1994).  
Na, Hyun Jong, "Disappearing Working Capital: Implications for Accounting Research," Working Paper, November 2019.  
New Constructs and EY, "Getting ROIC Right: How an Accurate View of ROIC Can Drive Improved Shareholder Value," 2017.  
Qian, Jun "QJ," and Julie Lei Zhu, "Return to Invested Capital and the Performance of Mergers and Acquisitions," Management Science, Vol. 64, No. 10, October 2018, 4818-4834.  
Opler, Tim, Lee Pinkowitz, René Stulz, and Rohan Williamson, "The Determinants and Implications of Corporate Cash Holdings," Journal of Financial Economics, Vol. 52, No. 1, April 1999, 3-46.  
Passov, Richard, "How Much Cash Does Your Company Need?" Harvard Business Review, Vol. 81, No. 11, November 2003, 119-126.  
Peddireddy, Venkat Ramana Reddy, "Estimating Maintenance CapEx," Columbia University PhD Thesis, 2021.  
Peters, Ryan H., and Lucian A. Taylor, "Intangible Capital and the Investment-q Relation," Journal of Financial Economics, Vol. 123, No. 2, February 2017, 251-272.  
Pinto, Jerald E., Thomas R. Robinson, and John D. Stowe, "Equity Valuation: A Survey of Professional Practice," Financial Economics, Vol. 37, No. 2, April 2019, 219-233.  
Rajgopal, Shivaram, Anup Srivastava, and Rong Zhao, "Do Digital Technology Firms Earn Excess Profits? Alternative Perspectives," Accounting Review, forthcoming.  
Rappaport, Alfred, Creating Shareholder Value: A Guide for Managers and Investors-Revised and Updated (New York: Free Press, 1998).  
Rouen, Ethan, Eric C. So, and Charles C.Y. Wang, "Core Earnings: New Data and Evidence," Journal of Financial Economics, Vol. 142, No. 3, December 2021, 1068-1091.  
Sloan, Alfred P. Jr., My Years With General Motors (New York: Doubleday & Company, 1963).  
Stallings, Matthew A., "The Potential Impact of Lease Accounting on Equity Valuation: Implications of Cost of Capital and Free Cash Flow Estimates," CPA Journal, Vol. 87, No. 11, November 2017, 52-56.  
Wang, Baolian, "The Cash Conversion Cycle Spread," Journal of Financial Economics, Vol. 133, No. 2, August 2019, 472-497.  
Ye, Yulu, "A Literature Review on the Cash Holding Issues," Modern Economy, Vol. 9, 2018, 1054-1064.  
Zeidan, Rodrigo, and Offer Moshe Shapir, "Cash Conversion Cycle and Value-Enhancing Operations: Theory and Evidence for a Free Lunch," Journal of Corporate Finance, Vol. 45, August 2017, 203-219.

# IMPORTANT INFORMATION

The views and opinions and/or analysis expressed are those of the author as of the date of preparation of this material and are subject to change at any time due to market or economic conditions and may not necessarily come to pass. Furthermore, the views will not be updated or otherwise revised to reflect information that subsequently becomes available or circumstances existing, or changes occurring, after the date of publication. The views expressed do not reflect the opinions of all investment personnel at Morgan Stanley Investment Management (MSIM) and its subsidiaries and affiliates (collectively "the Firm"), and may not be reflected in all the strategies and products that the Firm offers.

Forecasts and/or estimates provided herein are subject to change and may not actually come to pass. Information regarding expected market returns and market outlooks is based on the research, analysis and opinions of the authors or the investment team. These conclusions are speculative in nature, may not come to pass and are not intended to predict the future performance of any specific strategy or product the Firm offers. Future results may differ significantly depending on factors such as changes in securities or financial markets or general economic conditions.

Past performance is no guarantee of future results. This material has been prepared on the basis of publicly available information, internally developed data and other third-party sources believed to be reliable. However, no assurances are provided regarding the reliability of such information and the Firm has not sought to independently verify information taken from public and third-party sources. The views expressed in the books and articles referenced in this whitepaper are not necessarily endorsed by the Firm.

This material is a general communications which is not impartial and has been prepared solely for information and educational purposes and does not constitute an offer or a recommendation to buy or sell any particular security or to adopt any specific investment strategy. The material contained herein has not been based on a consideration of any individual client circumstances and is not investment advice, nor should it be construed in any way as tax, accounting, legal or regulatory advice. To that end, investors should seek independent legal and financial advice, including advice as to tax consequences, before making any investment decision.

Charts and graphs provided herein are for illustrative purposes only. Any securities referenced herein are solely for illustrative purposes only and should not be construed as a recommendation for investment.

The Russell 3000® Index measures the performance of the largest 3,000 U.S. companies representing approximately  $98\%$  of the investable U.S. equity market. The Russell 3000 Index is constructed to provide a comprehensive, unbiased, and stable barometer of the broad market and is completely reconstituted annually to ensure new and growing equities are reflected. The index is unmanaged and does not include any expenses, fees or sales charges. It is not possible to invest directly in an index. The index referred to herein is the intellectual property (including registered trademarks) of the applicable licensor. Any product based on an index is in no way sponsored, endorsed, sold or promoted by the applicable licensor and it shall not have any liability with respect thereto.

This material is not a product of Morgan Stanley's Research Department and should not be regarded as a research material or a recommendation.

The Firm has not authorised financial intermediaries to use and to distribute this material, unless such use and distribution is made in accordance with applicable law and regulation. Additionally, financial intermediaries are required to satisfy themselves that the information in this material is appropriate for any person to whom they provide this material in view of that person's circumstances and purpose. The Firm shall not be liable for, and accepts no liability for, the use or misuse of this material by any such financial intermediary.

The whole or any part of this work may not be directly or indirectly reproduced, copied, modified, used to create a derivative work, performed, displayed, published, posted, licensed, framed, distributed or transmitted or any of its contents disclosed to third parties without MSIM's express written consent. This work may not be linked to unless such hyperlink is for personal and non-commercial use. All information contained herein is proprietary and is protected under copyright and other applicable law.

Eaton Vance is part of Morgan Stanley Investment Management. Morgan Stanley Investment Management is the asset management division of Morgan Stanley.

This material may be translated into other languages. Where such a translation is made this English version remains definitive. If there are any discrepancies between the English version and any version of this material in another language, the English version shall prevail.

# DISTRIBUTION

This communication is only intended for and will only be distributed to persons resident in jurisdictions where such distribution or availability would not be contrary to local laws or regulations.

MSIM, the asset management division of Morgan Stanley (NYSE: MS), and its affiliates have arrangements in place to market each other's products and services. Each MSIM affiliate is regulated as appropriate in the jurisdiction it operates. MSIM's affiliates are: Eaton Vance Management (International) Limited, Eaton Vance Advisers International Ltd, Calvert Research and Management, Eaton Vance Management, Parametric Portfolio Associates LLC, and Atlanta Capital Management LLC.

This material has been issued by any one or more of the following entities:

# EMEA

This material is for Professional Clients/Accredited Investors only.

In the EU, MSIM and Eaton Vance materials are issued by MSIM Fund Management (Ireland) Limited ("FMIL"). FMIL is regulated by the Central Bank of Ireland and is incorporated in Ireland as a private company limited by shares with company registration number 616661 and has its registered address at 24-26 City Quay, Dublin 2, DO2 NY19, Ireland.

Outside the EU, MSIM materials are issued by Morgan Stanley Investment Management Limited (MSIM Ltd) is authorised and regulated by the Financial Conduct Authority. Registered in England. Registered No. 1981121. Registered Office: 25 Cabot Square, Canary Wharf, London E14 4QA.

In Switzerland, MSIM materials are issued by Morgan Stanley & Co. International plc, London (Zurich Branch) Authorised and regulated by the Eidgenössische Finanzmarktaufsicht ("FINMA"). Registered Office: Beethovenstrasse 33, 8002 Zurich, Switzerland.

Outside the US and EU, Eaton Vance materials are issued by Eaton Vance Management (International) Limited ("EVMI") 125 Old Broad Street, London, EC2N 1AR, UK, which is authorised and regulated in the United Kingdom by the Financial Conduct Authority.

Italy: MSIM FMIL (Milan Branch), (Sede Secondaria di Milano) Palazzo Serbelloni Corso Venezia, 16 20121 Milano, Italy. The Netherlands: MSIM FMIL (Amsterdam Branch), Rembrandt Tower, 11th Floor Amstelvein 1 1096HA, Netherlands. France: MSIM FMIL (Paris Branch), 61 rue de Monceau 75008 Paris, France. Spain: MSIM FMIL (Madrid Branch), Called Serrano 55, 28006, Madrid, Spain. Germany: MSIM FMIL Frankfurt Branch, Große Gallusstraße 18, 60312 Frankfurt am Main, Germany (Gattung: Zweigniederlassung (FDI) gem. § 53b KWG). Denmark: MSIM FMIL (Copenhagen Branch), Gorissen Federspiel, Axel Towers, Axeltorv2, 1609 Copenhagen V, Denmark.

# MIDDLE EAST

Dubai: MSIM Ltd (Representative Office, Unit Precinct 3-7th Floor-Unit 701 and 702, Level 7, Gate Precinct Building 3, Dubai International Financial Centre, Dubai, 506501, United Arab Emirates. Telephone: +97 (0)14 709 7158).

This document is distributed in the Dubai International Financial Centre by Morgan Stanley Investment Management Limited (Representative Office), an entity regulated by the Dubai Financial Services Authority ("DFSA"). It is intended for use by professional clients and market counterparties only. This document is not intended for distribution to retail clients, and retail clients should not act upon the information contained in this document.

# U.S.

NOT FDIC INSURED | OFFER NO BANK GUARANTEE | MAY LOSE VALUE | NOT INSURED BY ANY FEDERAL GOVERNMENT AGENCY | NOT A DEPOSIT

# ASIA PACIFIC

Hong Kong: This material is disseminated by Morgan Stanley Asia Limited for use in Hong Kong and shall only be made available to "professional investors" as defined under the Securities and Futures Ordinance of Hong Kong (Cap 571). The contents of this material have not been reviewed nor approved by any regulatory

authority including the Securities and Futures Commission in Hong Kong. Accordingly, save where an exemption is available under the relevant law, this material shall not be issued, circulated, distributed, directed at, or made available to, the public in Hong Kong. Singapore: This material is disseminated by Morgan Stanley Investment Management Company and should not be considered to be the subject of an invitation for subscription or purchase, whether directly or indirectly, to the public or any member of the public in Singapore other than (i) to an institutional investor under section 304 of the Securities and Futures Act, Chapter 289 of Singapore ("SFA"); (ii) to a "relevant person" (which includes an accredited investor) pursuant to section 305 of the SFA, and such distribution is in accordance with the conditions specified in section 305 of the SFA; or (iii) otherwise pursuant to, and in accordance with the conditions of, any other applicable provision of the SFA. This publication has not been reviewed by the Monetary Authority of Singapore. Australia: This material is provided by Morgan Stanley Investment Management (Australia) Pty Ltd ABN 22122040037, AFSL No. 314182 and its affiliates and does not constitute an offer of interests. Morgan Stanley Investment Management (Australia) Pty Limited arranges for MSIM affiliates to provide financial services to Australian wholesale clients. Interests will only be offered in circumstances under which no disclosure is required under the Corporations Act 2001 (Cth) (the "Corporations Act"). Any offer of interests will not purport to be an offer of interests in circumstances under which disclosure is required under the Corporations Act and will only be made to persons who qualify as a "wholesale client" (as defined in the Corporations Act). This material will not be lodged with the Australian Securities and Investments Commission.

# Japan

This material may not be circulated or distributed, whether directly or indirectly, to persons in Japan other than to (i) a professional investor as defined in Article 2 of the Financial Instruments and Exchange Act ("FIEA") or (ii) otherwise pursuant to, and in accordance with the conditions of, any other allocable provision of the FIEA. This material is disseminated in Japan by Morgan Stanley Investment Management (Japan) Co., Ltd., Registered No. 410 (Director of Kanto Local Finance Bureau (Financial Instruments Firms)), Membership: the Japan Securities Dealers Association, The Investment Trusts Association, Japan, the Japan Investment Advisers Association and the Type II Financial Instruments Firms Association.
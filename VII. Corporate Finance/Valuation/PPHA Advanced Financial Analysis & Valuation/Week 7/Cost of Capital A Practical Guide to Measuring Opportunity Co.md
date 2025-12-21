---
parent_directory: VII. Corporate Finance/Valuation/PPHA Advanced Financial Analysis & Valuation/Week 7
title: Cost of Capital A Practical Guide to Measuring Opportunity Cost
formatted: "2025-12-20 07:48:00 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags: [cost of capital, weighted average cost of capital, capital asset pricing model, equity risk premium]
secondary_tags: [risk-free rate, beta estimation, debt cost, capital structure]
tags:
aliases:
  - "Counterpoint Global Insights"
parent_folder: Week 7
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Cost of Capital A Practical Guide to Measuring Opportunity Cost
---

## Counterpoint Global Insights

## Cost of Capital

## A Practical Guide to Measuring Opportunity Cost

CONSILIENT OBSERVER | February 15, 2023

## Introduction

Time preference is a core concept in economics and finance. The idea is that most people place greater value on a dollar today than a dollar in the future. Spending money now allows you to consume with certainty. Saving money allows someone else to consume now. The rate of return on your savings compensates you for deferring consumption.

Edward Chancellor, a financial journalist, asks his readers to imagine the present and future as two countries separated by a river. Finance is the bridge that connects them. Interest is the toll that those who want to consume now must pay and, equivalently, the fee earned by those willing to defer their consumption. The level of the interest rate regulates the movement of capital.<sup>1</sup>

For example, assume that you decide to invest your savings by buying a bond issued by a company. The company, in turn, spends the proceeds seeking to earn an attractive rate of return. If everything works out, the company pays you interest on a timely basis and returns the principal when the bond matures. The company gets to invest today and you get to earn a return for waiting to use the money.

The value of any financial asset is the present value of the future cash flows. Valuation starts with an assessment of the magnitude, timing, and riskiness of cash flows. You then discount tomorrow's cash flows at an appropriate interest rate, or cost of capital, to determine the value today. Investors determine the cost of capital based on their opportunity cost, or the value of the next best alternative.

The cost of capital is a measure of both expected return, which takes us from the present to the future, and the discount rate, which takes us from the future to the present. Expected returns come with varying degrees of certainty, but in all cases a single number reflects a distribution of potential outcomes.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/a7b41b29aec5ede0c0bf861cbfe946390de1cf014527e70c63b335e28b3078c7.jpg)

## Table of Contents

Introduction 1  
High-Level View of the Cost of Capital 5  
Estimating the Cost of Debt 9  
Estimating the Cost of Equity 13  
Risk-Free Rate 14  
Equity Risk Premium. 15  
Beta 20  
Adjusted Beta 23  
Industry Beta 23  
Winsorized Beta 24  
Weighted Average Cost of Capital 26  
Other Forms of Financing 29  
Convertible Bonds 29  
Preferred Stock 29  
Optimal Capital Structure 31  
Trade-Off Theory 31  
Pecking Order Theory 33  
Conclusion 36  
Checklist for Estimating the Cost of Capital 37  
Appendix A: Adjusted Present Value 38  
Appendix B: Fama-French Three-Factor Model 40  
Definitions of Terms 42  
Endnotes 43

## Introduction

The cost of capital varies over time. Periods when the cost of capital is high are followed by periods of returns that are above normal, on average, and a low cost of capital tends to precede subpar returns.[2]

Companies access external capital from investors, primarily in the form of debt and equity, and invest it with the intention of earning a return in excess of the cost of capital. The expected risk and return are lower for debt holders than for equity holders because debt has a senior claim on cash flows. Debt holders get paid before equity holders do.

The terms of debt financing, the magnitude and timing of cash flows, are established by contract. Investors are left to determine only the risk that the company will fail to fulfill its obligations and what they might recover in the case of default. Changes in interest rates, inflation, and overall economic conditions influence the cost of debt, but the rights of the debt holders are stated plainly.

You can think of equity as a residual claim, or what's left over after subtracting the claims of debt holders and preferred shareholders. Companies that earn a return on investment in excess of the cost of capital create value for shareholders because other claims have been satisfied and the additional value accrues to the equity holders.

This report is a practical guide to estimating the weighted average cost of capital (WACC) for a company. Academic approaches to estimating the cost of capital have been criticized in recent decades, and we will discuss some of the issues of concern.<sup>3</sup> Our goal is to find a figure that reflects opportunity cost sensibly, is economically sound, and provides the investor and businessperson with a solution to apply to the problem.

Estimating the cost of debt is relatively straightforward because the details of the agreement between the company and the investor are clear. Investors may disagree with the market's assessment of a bond price, but the company's obligations are in plain view.

Estimating the cost of equity is more difficult because none of the determinants of value are explicit. Dividends, which do reflect elements of the magnitude and timing of cash flows, are at best a quasi-commitment to return cash to shareholders. And unlike a measure such as yield to maturity on a bond, there is no transparent method to observe a stock's expected return. Equity investors need to assess the expectations for the magnitude, timing, and riskiness of future cash flows. Ascribing a value to equity is almost always harder than to debt for this reason.

Methods to assess the cost of equity are commonly based on a model of asset pricing. The capital asset pricing model (CAPM) is the most popular among financial executives and investors.<sup>4</sup> Despite its widespread use, the CAPM has come under fire in recent decades. The focal point is beta, which attempts to capture risk by measuring the sensitivity of a stock's returns relative to those of the market. Beta does a poor job of predicting actual reward. Academics have introduced additional factors in an attempt to better reflect the relationship between risk and reward.<sup>5</sup>

We are not defenders of the faith in the CAPM. But we believe the model, especially with methods to reduce the error in beta, is a useful complement to other indicators of risk and reward that have market prices, including bond yields and implied volatility in option prices. These measures can provide guidance and context for establishing a reasonable cost of capital.

Nearly all investors acknowledge that the present value of future cash flows determines the value of a stock, but many believe a discounted cash flow (DCF) model is unreliable. For example, they point out that predicting cash flows is challenging, much of the value commonly resides beyond the explicit forecast period and has to be captured in the continuing value, and the overall output is very sensitive to small changes in the cost of capital.

One common solution is to avoid DCF models altogether and to default to multiples. These include price/sales (P/S), price/earnings (P/E), enterprise value/earnings before interest, taxes, depreciation, and amortization (EV/EBITDA), and price/book (P/B). Indeed, a survey of almost 2,000 professional equity analysts found that "market multiples" were "[b]y far the most popular approach to valuation." Analysts use P/E and EV/EBITDA multiples most frequently.[6]

The problem is that multiples are at best a proxy for the process of valuation. Using a multiple does not circumvent the problems with forecasting cash flows and discount rates but rather buries them. We believe that it is better to make the assumptions explicit, debate them, and consider alternative scenarios.

There is not a lot of upside in coming up with a sensible cost of capital but there is a lot of downside in applying a figure foolishly. The goal is to blend the economic logic of an asset pricing model with market prices in order to estimate intelligently the opportunity cost of capital. The danger is applying formulas without thought. Charlie Munger, vice chairman of Berkshire Hathaway, has said, "People calculate too much and think too little." A sound estimate of the cost of capital requires some thinking.

Successful investing is ultimately about properly anticipating revisions in expectations about future cash flows. The rate at which those cash flows are discounted is important but is overwhelmed in the long run by getting the cash flows right. We recommend settling on a practical cost of capital and then allocating the bulk of analytical time and attention to thinking about the potential paths of cash flows.

## High-Level View of the Cost of Capital

The cost of capital for a company is the opportunity cost for investors in the setting of a diversified portfolio.

The cost of capital is based on the economic principle of substitution. An investor will not invest in an asset if a comparable asset exists that is more attractive, including consideration for risk. This means that an investor will buy the asset with the highest return for a given level of risk, or the lowest risk for a given level of return. This presumes that more risk is associated with more reward.

Exhibit 1 shows this relationship over 20 years for 8 asset classes (5 in equities and 3 in credit) and inflation. Standard deviation, a measure of variation for a set of values, is the proxy for risk, and total shareholder return (TSR) reflects reward.

Exhibit 1: Risk and Reward for Eight Asset Classes and Inflation, 2003-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/e99a2845db584a24d1280411926a7f88265191efc2aa87b6c68489f2ea879112.jpg)  
Source: FactSet; U.S. Bureau of Labor Statistics; Counterpoint Global. Note: Indexes: MSCI Emerging Markets, Russell 1000, Russell Midcap, Russell 2000, MSCI World, Bloomberg 7-10 Year U.S. Treasury, Bloomberg U.S. Aggregate Bond, Bloomberg 1-3 Month U.S. Treasury Bills, and U.S. Consumer Price Index.

Portfolio diversification reduces the specific risk of an individual stock, or asset class, but even a portfolio that is fully diversified is exposed to market risk. What matters for a particular security or asset class is its contribution to the risk of a diversified portfolio. For instance, the standard deviation of returns for the stock of WD-40 Company, a producer of oil for lubrication, is much higher than that of the market, but adding the stock to a portfolio reduces risk because the stock tends to zig when the market zags.<sup>8</sup> The focus is not on the risk of the stock but rather how that security affects the risk of the overall portfolio.

The cost of capital is a link between corporate finance and investing (see exhibit 2). Companies use the capital that investors save. Companies seek to invest capital, which includes funds generated by the business, at a rate of return above the cost of capital in order to create value. These capital allocation decisions apply to mergers and acquisitions (M&A), internally-generated intangible investments, capital expenditures, and working capital.<sup>9</sup> Companies can only invest so much before the return on investment drops below the cost of capital.

The cost of capital for a company is the opportunity cost of the investor. Investors must evaluate investment opportunities with an eye toward making sure there is an appropriate reward for the risk they take. Investors vary in their risk appetites but all seek to earn a proper payoff.

Exhibit 2: The Link between Companies and Capital Markets  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/deada2b7129c3896333807ff0ac801edf9b53d9ab7c12770520e72cce98fa18b.jpg)  
Source: Based on G. Bennett Stewart, III, The Quest for Value: A Guide for Senior Managers (New York: HarperCollins, 1991), 83.

A company's balance sheet has assets on the left and liabilities and equity on the right. Assets are the resources a company employs to generate cash flows. Liabilities and equity are the way a company finances those resources. Debt and equity are the most popular forms of financial capital.

Debt is a contractual obligation between a company and its lenders, in which the company pledges to make timely payments of interest and to return principal at the end of a period that is specified by contract. Equity is technically a contract between a company and its shareholders that confers limited rights to shareholders, which include the right to vote, transfer ownership, and collect dividends.[10]

Practically, common equity represents a claim on future residual cash flows. The claim is on cash flows after a company has paid other stakeholders, including creditors (interest and principal), suppliers (accounts payable), the government (taxes), and employees (wages).

We have so far used the standard deviation of asset price changes as a measure of risk. But you can think of risk more fundamentally as a combination of business risk and financial risk:11

Corporate risk = business risk + financial risk

Business risk, or asset risk, reflects the variability of operating cash flows. Operating leverage, which measures changes in operating profit as the result of changes in sales, is an important determinant of business risk. $^{12}$  The ratio of fixed to variable operating costs helps explain operating leverage, especially in the short run. Firms with high fixed and low variable costs have more operating leverage than those with low fixed and high variable costs.

Financial risk is determined by the amount of debt a company assumes. The interest expense from debt effectively adds a fixed cost and makes the earnings more volatile.

To see how this works, consider two companies with \$100 in operating profit. The first has no debt, so pre-tax profit and operating profit are the same. The second has debt that incurs \$20 in interest expense, which means that its pre-tax profit is \$80.

Now assume that both companies increase their operating profit to  \$120. The first company will enjoy a 20 percent increase in pre-tax profit (from$ 100 to $120), while the second company will realize 25 percent growth in pre-tax profit (from $80 to $100). Naturally, the math also has a similar effect on the downside. Even with the same operating income, profits are more volatile for the second company than they are for the first. Empirically, companies with high business risk tend to have low financial risk, and companies with low business risk benefit from having some financial risk.[13]

Franco Modigliani and Merton Miller (M&M), economists who received the Nobel Memorial Prize in Economic Sciences, developed a theorem in the late 1950s showing that the value of a firm is independent of its capital structure. Their point, which ran against the conventional wisdom of the time, was that a change in the capital structure does not change risk overall but rather simply transfers risk from one stakeholder to another.

The cost of debt also goes up when a company adds debt because the size of the contractual obligation grows. The cost of equity also goes up because the magnitude of the senior claims on assets is higher, making the return on the residual claim riskier. But overall risk is preserved since debt is less costly than equity due to its seniority in the capital structure.

A simple illustration can help make the point. Assume a company that has \$100 in annual operating profit. We can observe what happens as we add debt to the capital structure.

<table><tr><td></td><td>A</td><td>B</td><td>C</td></tr><tr><td>Operating profit</td><td>$100</td><td>$100</td><td>\$100</td></tr><tr><td>Debt</td><td>0</td><td>200</td><td>400</td></tr><tr><td>Cost of debt</td><td>0.00%</td><td>5.00%</td><td>6.25%</td></tr><tr><td>Cash flow for equity</td><td>100</td><td>90</td><td>75</td></tr><tr><td>Equity</td><td>1,000</td><td>800</td><td>600</td></tr><tr><td>Cost of equity</td><td>10.00%</td><td>11.25%</td><td>12.50%</td></tr><tr><td>Value of the firm</td><td>$1,000</td><td>$1,000</td><td>\$1,000</td></tr></table>

In scenario A, the firm is financed solely with equity that has a cost of 10 percent. Provided the company will earn \$100 into perpetuity with no growth, the value of the firm is \$100 divided by 10 percent, or \$1,000.

In scenario B, the company issues \$200 of debt at a cost of 5 percent. As a result, the cash flow for equity holders drops \$10, from $100 to $90 ($10 = $200 × 5 percent). Shareholders now require a return of 11.25 percent because the addition of debt increases their risk. The debt is \$200, the equity is now worth $800 ($800 = \$90 ÷ 11.25 percent), and the value of the firm remains $1,000 ($1,000 = \$200 debt + \$800 equity).

In scenario C, the company adds more debt, bringing the total to \$400. The additional debt increases the risk for debt holders. As a consequence, the cost of debt goes from 5 to 6.25 percent. The higher interest payment, now $25 ($25 = \$400 × 6.25 percent), means that only \$75 is left over for equity holders. The risk for equity holders also rises, going from 11.25 to 12.5 percent. Here again, the cost of debt and equity are higher but the value of the firm does not change. The debt is worth \$400 and the equity is valued at $600 ($600 = \$75 ÷ 12.5 percent), leaving the total at \$1,000.

M&M's invariance proposition offers insight because it is true only under very specific conditions, including no taxes, bankruptcy costs, or effects on managerial incentives. It also assumes markets are perfect and complete. Since none of these conditions prevail in the real world, we can conclude capital structure does matter.[15]

To see why, we focus on the assumption of no taxes. Many tax codes, including that of the U.S., treat some percentage of interest expense as a deduction from income before paying taxes. That means some debt adds value to the firm up to a point because more cash flow is going to stakeholders and less is going to the government.

Debt's impact on the cost of capital is based on the role of taxes and other factors rather than on how a company slices and dices its capital structure. Further, too much debt is problematic because it introduces the risk of financial distress.

We are about to roll up our sleeves and get into the details. But to summarize, the cost of capital is the opportunity cost of the investors who provide capital. It serves as a crucial link between corporate finance and investing, as it sets the minimum rate of return a company should be willing to accept to invest in its business.

Risk can be disaggregated into business risk, which reflects the volatility of a firm's cash flows, and financial risk, how much debt the company takes on. M&M shows that capital structure does not matter under conditions that are unrealistic. When we introduce realistic conditions, we can see that capital structure does matter and that it affects the cost of capital.

Some investors prefer to discount cash flows at a required rate of return that reflects the minimum threshold of expected return they want to earn. In cases when that rate of return exceeds the cost of capital, the approach is equivalent to discounting at the cost of capital and insisting on paying a price that is sufficiently less than value.

## Estimating the Cost of Debt

The cost of debt is the effective after-tax rate a company has to pay on its long-term debt.

The yield to maturity on a company's long-term, option-free bonds is a good estimate for the pre-tax cost of debt for a company with securities that are rated as investment grade. This is debt that is deemed to have a relatively low risk of default and hence receives a higher rating from the credit agencies (Baa or above from Moody's and BBB or above from S&P Global and Fitch). You can observe this rate directly for most firms.

For companies that have only short-term or illiquid debt, you can take some steps to estimate the cost of debt indirectly. First, determine the credit rating on the company's unsecured long-term debt. Second, look at the average yield to maturity on a portfolio of bonds with a similar credit rating. Bond investors often express this as a spread over a Treasury rate, usually the 10-year note. The treasury yield is a proxy for the risk-free rate.

It is appropriate to use an option-adjusted spread (OAS) for a fixed income security that embeds options. For example, a bond may include an option for the investor to sell it back to the issuer on a specific date at a set price. Or the issuer may have the option to call back, or redeem, the bond at a predetermined time and price.

Some companies finance themselves predominantly with short-term debt. In this case, it may appear appropriate to use the short-term rates as the cost of debt, but the problem is that short-term rates do not reflect expectations about long-term inflation. The time horizon for estimating the cost of capital should match the time horizon of forecasted cash flows, which is rarely less than ten years.

The long-term rate is a better approximation of interest costs over time even for companies that roll over their short-term debt because long-term rates capture the expected cost of repeated borrowing. If a company exclusively relies on short-term debt, use its credit rating to approximate the cost of long-term debt.

Free cash flow, or net operating profit after taxes (NOPAT) less investment needs, does not reflect financial leverage. This is useful for comparing companies with different capital structures. But debt creates a valuable tax shield free cash flow does not capture because some of the interest expense is generally tax deductible.[16]

To capture the value of the tax shield, you must adjust debt from a pre-tax rate to an after-tax rate. To do this, multiply the pre-tax cost of debt by one minus the marginal tax rate. The marginal tax rate is the tax rate a company pays on its last dollar of taxable income. This is how the benefit of the tax shield that debt creates finds its way into the calculation of WACC. The formula is:

After-tax cost of debt = pre-tax cost of debt  $\times$  (1 - marginal tax rate)

Not all companies can take all of their interest expense as a deduction from taxes. For example, the Tax Cuts and Jobs Act of 2017 sets a limit on the tax deductibility of interest at 30 percent of earnings before interest and taxes (EBIT) for U.S. companies with sales of \$25 million or more. This went into effect in 2022. We estimate that this affected about 25 percent of the companies in the Russell 3000 that had positive EBIT in 2022. The Russell 3000 tracks the largest stocks by market capitalization in the United States.

The effective rate is commonly lower than the marginal rate because companies have net operating losses (NOLs), tax loss carrybacks, or investment tax credits.

The cost of debt should reflect the marginal rate, including state and local taxes, of the countries where the company earns its operating profit. This can create a sizeable difference between the tax rate in a company's home country and the tax rate it must actually pay for firms with a large presence outside of their domicile.

For companies with tax loss carryforwards, it may make sense to value the company in two stages. First, assume the company pays normal taxes in its free cash flows. This, of course, will lead to a value that is too low.

Second, calculate the present value of the tax savings. To do this, calculate the annual tax savings and discount that savings at the cost of debt. Note that the company has to produce operating income to realize tax savings. Add that amount back to the value of the firm assuming full tax payment. These two stages allow for comparability to profitable peers and specify the value of the tax savings.

The Tax Cuts and Jobs Act of 2017 also changed the rules for NOLs. Prior to the act, companies could carry back NOLs for two years, carry them forward for 20 years, and offset all taxable income when carried back or forward. Starting in 2018, carrybacks were eliminated and companies are only allowed to use a net operating loss carryforward for up to 80 percent of taxable income.

The book value of debt is in many cases a sensible proxy for the market value of debt. But make an adjustment in your debt-to-total capital ratio if the debt is trading at a substantial premium or discount to par.

The yield to maturity is a reasonable proxy for the pre-tax cost of debt for companies with debt that is rated as investment grade. That yield can be expressed as a spread over a risk-free rate.

Exhibit 3 shows a decomposition of expected returns, calculated monthly, for BBB bonds from 2008 to 2022. The components of the expected return include the real yield on the 10-year U.S. Treasury note, inflation expectations, and the BBB credit spread. The nominal yield on the 10-year U.S. Treasury note equals the real yield plus inflation expectations.

Over this time, the spread peaked at 7.8 percentage points in December 2008 during the financial crisis and troughed at 1.1 percentage points in June 2021 in the throes of COVID.

Exhibit 3: Expected Returns on BBB Bonds Calculated Monthly, 2008-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/db306becfedf9a80613fcea6d6ff6b57c1bbe0f7a0ecc540f7a42fc99396ad02.jpg)  
Source: Aswath Damodaran; FRED at the Federal Reserve Bank of St. Louis; Counterpoint Global. Note: August 2008-December 2022; Treasury note=10-year U.S. Treasury note; BBB spread=ICE BofA BBB U.S. corporate index option-adjusted spread.

Yield to maturity overstates the pre-tax cost of debt for companies issuing high-yield debt, or debt that is rated below investment grade.[17] The reason is that high-yield bonds have a meaningful probability of default. For example, the base rate of default over 10 years is about 2 percent for an investment-grade bond (BBBor higher) and 23 percent for a speculative-grade bond (BB+ or lower).[18]

The following equation is relevant for all bonds:

Cost of debt  $=$  promised yield spread - lost yield due to default

The cost of debt is somewhere between the promised yield and the risk-free rate. Because the lost yield due to default is negligible for companies that issue investment-grade bonds, the cost of debt and promised yield are practically equivalent. That means the yield to maturity is a suitable proxy for the cost of debt for companies that issue investment-grade bonds.

The lost yield due to default can be consequential for companies with non-investment grade ratings. As a consequence, that yield to maturity may overstate materially the cost of debt. We will describe how to estimate the lost yield due to default in a moment.

Exhibit 4 shows a decomposition of expected returns, calculated monthly, for high-yield bonds from 2008 to 2022. The spread peaked at 19.9 percentage points in November 2008, implying an expected return in excess of 20 percent, near the climax of the financial crisis. It bottomed at 3.0 percentage points, or an expected return of 4.5 percent, in June 2021 during COVID.

Exhibit 4: Expected Returns on High Yield Bonds Calculated Monthly, 2008-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/918319b46f2908def8527cf7b449591ecfa27d9889dde39e5dc63252e83a3d5b.jpg)  
Source: Aswath Damodaran; FRED at the Federal Reserve Bank of St. Louis; Counterpoint Global. Note: August 2008-December 2022; Treasury note=10-year U.S. Treasury note; High yield spread=ICE BofA U.S. high-yield index option-adjusted spread.

Robert Merton, a professor of finance who was also accorded the Nobel Memorial Prize in Economic Sciences, developed a model that can provide insight into the risk of lost yield due to default.[19] The model values the equity value of a company as a call option on its assets with a strike price equivalent to the notional value of the liabilities. The key is that the distribution of option values provides insight into the default probability.

Ian Cooper and Sergei Davydenko, professors of finance, use the Merton model to estimate the lost yield due to default. Their inputs include the debt-to-total capital ratio, credit spread, equity risk premium, and volatility of the equity. They estimate, for example, that the proportion of the debt spread attributable to lost yield due to default is 13 basis points, or 13 percent of the spread, for a firm with a 20 percent debt-to-total capital ratio, a 100 basis point credit spread over AAA-rated bonds, an equity risk premium of 6 percent, and a volatility of equity of 30 percent. Accordingly, using the expected return results in a small error.

The picture is very different for a firm with high leverage. Assume a company has a 70 percent debt-to-total capital ratio, a 400 basis point credit spread of AAA-rated bonds, an equity risk premium of 6 percent, and a volatility of equity of 50 percent. The debt spread attributable to lost yield due to default rises to nearly 250 basis points, or 62 percent of the spread. In this case, the promised yield spread greatly overstates the cost of debt.

Leases should also be considered debt. In 2019, new guidelines from the Financial Accounting Standards Board (FASB), which establishes U.S. Generally Accepted Accounting Principles (GAAP), required most companies to reflect leases longer than one year on the balance sheet.[20] Leases appear as a right-of-use asset on the asset side of the balance sheet. This captures the lessee's right to use the asset over the duration of the lease. About three trillion dollars of leases were added to the balance sheets of U.S. companies as a result of this accounting change.[21]

In a quirk of accounting under GAAP, the entire lease payment, including embedded interest, is reflected in the calculation of EBIT. With debt, the interest expense shows up below EBIT. As a result, a company that leases an asset will have lower EBIT than a company that finances the asset with debt, even though pre-tax income will be the same. By contrast, lease payments are appropriately allocated between depreciation and interest expense under International Financial Reporting Standards (IFRS).

Total net debt should include leases and unfunded retirement benefits minus excess cash. Depending on the business, you can treat cash and marketable securities above two to five percent of sales as excess.

For example, Amazon, a multinational technology company, had long-term lease liabilities of \(73.0 billion as of December 31, 2022. This liability was comprised of \)11.4 billion in capital leases and \$61.6 billion in operating leases. Total debt was \(70.1 billion, including short-term debt of \)3.0 billion and long-term debt of \$67.1 billion. Total lease liabilities plus debt equaled \(143.1 billion.

The combination of cash and marketable securities was \$70.0 billion, and sales for 2022 were \$514 billion. Assuming the company requires 2 percent of sales to operate, excess cash was \$59.7 billion ($59.7 = $70.0 - [(\$514 × .02]). Total net debt was \$83.4 billion ($83.4 = $73.0 in leases + \$70.1 in debt - \$59.7 in excess cash). The company's equity value on that date was \$860 billion ($860 = $84.00 stock price × 10.2 billion shares outstanding).

Estimating the cost of debt is a reasonably straightforward process for most companies. The calculation is more challenging for companies that have debt that is rated below investment grade or substantial leases or other liabilities.

## Estimating the Cost of Equity

The cost of equity is the expected total return on a company's stock.

The cost of equity is higher than the cost of debt because equity is a junior claim on the value of a firm. In addition, debt is an even cheaper source of financing because some percentage of the interest expense on debt is tax deductible. An estimate of the cost of equity should never be lower than that of debt.

The cost of equity is difficult to estimate because we cannot observe it directly. For example, when a company issues debt the cost is relatively transparent. The same company offering equity can only approximate the cost. As a consequence, an estimate of the cost of equity requires an asset-pricing model.

The best known of these are the capital asset pricing model (CAPM), developed by a handful of economists, including William Sharpe, and the three-factor model, advanced by Eugene Fama and Kenneth French, professors of finance.[22] Sharpe and Fama were also awarded the Nobel Memorial Prize in Economic Sciences. Academics have continued to add factors in an effort to explain returns more effectively than the CAPM or three-factor model can. This has led to a "zoo" of factors seeking to explain hundreds of purported anomalies.[23]

Financial executives rely heavily on the CAPM but the investment community, led by quantitative funds, uses six factors widely. These include beta (stocks of companies with high betas earn higher returns than those with low betas), size (stocks of companies with small capitalizations generate higher returns than stocks of companies with large capitalizations), $^{24}$  value (stocks with low multiples outperform those with high multiples), $^{25}$  momentum (stocks that have done well continue to do well in the short term), $^{26}$  quality (companies of high quality provide higher returns than companies of low quality), $^{27}$  and asset growth (companies with low asset growth outperform those with high asset growth). $^{28}$

Fama and French now recommend a five-factor model that includes all of the factors above except for momentum. We will focus on the CAPM because it is the model most practitioners use. See appendix B for a discussion of the three-factor model.

The CAPM estimates the expected return of a security by adding the risk-free rate to the security's beta ( $\beta$ ) times the equity risk premium (ERP). The ERP equals the difference between the expected return for the market and the risk-free rate and is similar conceptually to a credit spread.

Expected return  $=$  Risk-free rate +  $\beta$  (Market return - Risk-free rate)

The ERP is the same for all stocks in the CAPM because it captures what is known as "systematic risk," or risk that cannot be diversified away. Beta measures how a company's risk contributes to portfolio risk. "Unsystematic risk" can be reduced through portfolio diversification.

Exhibit 5 shows the security market line, which reflects a linear relationship between risk and reward. Beta measures how much a stock moves relative to a benchmark index.

# Exhibit 5: The Security Market Line

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/0f8cdff9b9dbbf4912fd7d3360a7363a61fa79a21b61b7eaa403182541f6bcb0.jpg)  
Source: Counterpoint Global.

The CAPM was developed in the early 1960s, and empirical tests of the model made it clear pretty early on that it is better in theory than in practice. Even before introducing additional factors, practitioners have to use judgment to answer questions about three of the model's key drivers:

What is the appropriate risk-free rate?  
How should the equity risk premium be estimated?  
What is the best method to estimate beta?

Risk-Free Rate. The best proxy for the risk-free rate is a yield on a long-term, default-free government fixed-income security. The yield on the 10-year U.S. Treasury note is appropriate for businesses based in the United States. This yield is easy to find, is sufficiently long-dated, and has a relatively low risk of default.

Outside of the United States, you can adjust the government borrowing rate in local currencies by the estimated default spread. Aswath Damodaran, a professor of finance at the Stern School of Business at New York University, shares these estimates on his website based on local currency ratings.[29]

Ideally, the security that reflects the risk-free rate should have no covariance with the market, or a beta of zero. Exhibit 6 shows that the 10-year Treasury note has a beta of 0.03 when compared to the S&P 500, an index that tracks the stocks of 500 large companies in the U.S. These are monthly returns for the 60 months ending in December 2022.

Exhibit 6: Beta for 10-Year U.S. Treasury Note versus the S&P 500, 2018 to 2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/8cdbc7d26c05680697c358043c056dc68d41860a870fa68fcfc613a83c2e375a.jpg)  
Source: FactSet and Counterpoint Global.  
Note: Returns for 10-Year Note represented by the Bloomberg U.S. Treasury 7-10 Year TR Index.

Equity Risk Premium. The ERP is the difference between the return of the equity market and the return of the risk-free asset.<sup>30</sup> The ERP is higher than credit spreads in general because equity is riskier than debt. Observing the historical ERP is easy but estimating the premium going forward is a challenge. For example, one survey of 150 finance and valuation textbooks that were written over 3 decades revealed a range of estimated ERPs from 3 to 10 percent, and one-third of the books used different ERPs in various places within the same book.<sup>31</sup>

Leading academics and practitioners who convened a meeting in 2001 to discuss the ERP provided a range of estimates for the ERP at that time from 0 to 7 percent, with an average just under 4 percent.[32] The realized ERP for the following 10 years was minus 4.1 percent.

Determinants of the ERP include collective risk aversion, the perceived level of economic risk, the degree of liquidity in markets, and tax policy.[33] The ERP moves around because these factors change. In fact, academic research suggests the ERP is probably a series that has unstable statistical properties.[34] The practical objective is to come up with an intelligent forecast of the ERP to assess expected returns.

There are three common approaches to estimating the ERP. The first is to look at historical results and assume the future will be similar to the past. The second is to survey investors about their expectations. The third is to estimate a rate the market implies by reverse-engineering assumptions to solve for the market price.

Each approach has its pros and cons. Historical results are supported by lots of data but are highly sensitive to the time period selected, include survivorship bias, and are different whether calculated using arithmetic or geometric averages.[35]

Surveys, which include forecasts by academics, financial executives, and individual and institutional investors, provide snapshots of attitudes at a specific moment but are imperfect because of a strong tendency to extrapolate recent results. The structures of the surveys are not always ideal.[36]

An ERP implied by the market uses current prices but requires forecasts for drivers such as cash flow growth and return on capital. Aswath Damodaran posts an updated estimate of the equity risk premium on his website every month. He also shares a spreadsheet with his assumptions that offers the flexibility to change the variables.

Damodaran has annual estimates for the equity risk premium going back to 1961. The range is from a low of 2.1 percent in 1999 to a high of 6.5 percent in 1979. The estimates are not adjusted for inflation.

Exhibit 7 shows the relationship between Damodaran's cost of equity estimates (x-axis) and the subsequent total returns for the S&P 500 over the following 10 years (y-axis). While not perfect, there is a distinct association between expected and realized returns.

We find Damodaran's estimates to be sensible and note that FactSet uses his equity risk premium as the default in their calculations of the cost of capital.

Exhibit 7: Cost of Equity and Future TSRs, S&P 500, 1961-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/8bebc5a5b85bedfac10a39231fc51bdc36a7e9d117d757c0f4fff3039f91341d.jpg)  
Source: FactSet; Aswath Damodaran; Counterpoint Global.

We ultimately want an ERP that looks forward, but understanding historical averages is helpful to place current conditions in context. Calculating the historical ERP might appear straightforward, but it requires judgment about the appropriate risk-free rate, the time period over which to measure results, and the choice of an arithmetic or geometric average. Damodaran finds that the historical ERP can fall in the range of 3 to 12 percent based on the various combinations of alternatives.[37]

The total return on the 10-year Treasury note works well as a proxy for the risk-free rate. Using returns from Treasury bills or bonds requires a commensurate adjustment to the ERP.

The issue of time horizon is thornier. The argument in favor of shorter time horizons is that they better capture present conditions. The argument against a short time frame is that it may not accurately reflect the full distribution of outcomes. An estimate's accuracy can be measured with the standard error, which is calculated as the observed standard deviation divided by the square root of the sample size.

In plain words, using a small sample of a large distribution of outcomes increases the possibility that your estimate is wrong because you fail to capture a lot of relevant data. For example, returns for the S&P 500 since

1928 have had a standard deviation of just under 20 percent. That series includes more than 90 years, which gets the standard error down to about 2.0 percent  $(0.02 = 0.197 \div 94^{\wedge 0.5})$ . That the standard errors are as large or larger than the ERP for periods of fewer than 20 years supports the case for a longer time period.

Historical averages to estimate the ERP can be calculated using arithmetic or geometric returns. The difference between the two is material. The arithmetic mean is the average of the annual ERPs (equity market - risk-free rate). The geometric mean is the compound annual rate of return. The geometric return is always less than or equal to the arithmetic return and can be approximated by taking one-half of the variance of returns. Variance is the square of the standard deviation.

The difference between arithmetic and geometric returns grows as the standard deviation of the results in the time series increases. For equity less bond returns in the U.S. from 1928-2022, the arithmetic return was 6.6 percent and the geometric mean was 5.1 percent. The difference, 1.5 percentage points, is a large percentage of the value of both totals.

The arithmetic average is appropriate if the objective is to estimate the equity risk premium over the next year. The geometric average is proper over multiple time periods.

The second approach is an estimate of the ERP implied by market prices. The idea is that the key drivers of value, including earnings and dividends, follow long-term trends that are somewhat predictable. With a sense of future cash flows and knowledge of the prevailing price, it is possible to solve for the discount rate that equates the present value of future free cash flows to today's price.

Exhibit 8 shows the expected returns for the U.S. stock market from August 2008 through 2022 using the 10-year Treasury note as the risk-free rate and Damodaran's estimate of the ERP. The average ERP over this period was 5.5 percent, with a high of 7.7 percent in February 2009 and a low of 3.9 percent in July 2021. Expected return, which adds the yield on the 10-year U.S. Treasury note to the ERP, peaked at 10.7 percent in February 2009 and bottomed at 5.1 percent in December 2020. All of these figures are unadjusted for inflation. In 2022, expected returns jumped from 5.8 percent at the beginning of the year to 9.8 percent at the end.

Exhibit 8: Expected Return on U.S. Equities Calculated Monthly, 2008-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/33e13b4c0fce549c76faa56d8e2022acda9873fceec19c758f119b711b67e1ce.jpg)  
Source: Aswath Damodaran; FRED at the Federal Reserve Bank of St. Louis; Counterpoint Global.  
Note: August 2008-December 2022; Treasury note=10-year U.S. Treasury note.

Exhibit 9 shows the risk-free rate, the implied ERP, and the ratio between the two from 1961 to 2022. This provides a sense of the sources of return. From 1961 through about 2000, the ratio of the ERP to the risk-free yield was about 0.6, which means that the ERP was consistently below the risk-free rate.

That ratio started rising following the dot-com bust, jumped after the financial crisis, and spiked to more than five times with the actions taken to deal with COVID. In 2022, the estimated ERP increased 170 basis points and the yield on the risk-free rate rose 230 basis points, lowering the ratio between the ERP and risk-free rate to about 1.5 times. The current ratio is in line with those in the 2000s, while still far from the average of 1961-1999.

Exhibit 9: Equity Risk Premium and the Risk-Free Rate, 1961-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/206f80ccc95230b81f70fbb8e11ce41efc6723e2012264bd2b82e1f597e6ec52.jpg)  
Source: Aswath Damodaran; FRED at the Federal Reserve Bank of St. Louis; Counterpoint Global. Note: Data reflect end of year; Treasury note=10-year U.S. Treasury note.

Comparing the ERP to credit spreads is another way to assess whether it is calibrated sensibly. We can use expected fixed income returns, which are observable, as a benchmark to estimate expected equity returns, which are unobservable.

The ERP is higher than the credit spread because stocks are riskier than bonds. However, there have been periods of very high valuations in the equity markets that implied low future equity returns. The peak of the market in March 2000 is an example.[38] Returns for large-capitalization stocks were poor for the following decade relative to history.

Exhibit 10 shows the relationship between the ERP and the spread between bonds rated Baa by Moody's and the risk-free rate from 1980 through 2022. On average, the ERP has averaged around 2.0 times the credit spread. A ratio above the average suggests that stocks are attractive relative to investment-grade bonds, and a ratio below the average implies that bonds look good relative to stocks. The ratio was 3.0 at the end of 2022.

Exhibit 10: Equity Risk Premium and Baa Spread, 1980-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/db77844597c2fa646ee42bc986d736fd4d4e04b1225eb38d1c652a6163d2d67d.jpg)  
Source: Aswath Damodaran; FRED at the Federal Reserve Bank of St. Louis; Counterpoint Global.  
Note: Data reflect end of year; Baa spread=Moody's Seasoned Baa Corporate Bond Yield minus yield on 10-year U.S. Treasury note.

The Cboe Volatility Index (VIX) is a measure of the implied annual volatility of options on the S&P 500 Index and is considered a gauge of collective risk aversion (see exhibit 11).<sup>39</sup> Generally, a rising VIX indicates an increase in fear among investors and is consistent with poor stock market returns, and a decline in the VIX suggests a decrease in fear and goes with good market results. Note the spikes in March 2009 as a result of the financial crisis and in 2020 because of COVID.

Exhibit 11: Cboe Volatility Index (VIX), Monthly, 1990-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/e4b0047c891ec6353eb1d561e1e42ff904308d552e9d475350661e1a7ffc6646.jpg)  
Source: FRED at the Federal Reserve Bank of St. Louis and Counterpoint Global.  
Note: Data reflect end of month.

Credit spreads and the level of the VIX provide a proxy for collective risk aversion independent of the ERP. Low spreads and volatility imply that investors are seeking risk, and high readings indicate fear of risky assets.

Low risk aversion translates into higher asset prices, holding constant the prospects for future cash flow. High asset prices are associated with less upside and more downside in equity returns. Asset prices are often vulnerable to decline when risk is perceived to be low. Examples include the spring of 2000, summer of 2007, and fall of 2021. Asset prices are often very attractive when risk appears to be high, as we saw in March 2009 and March 2020.

The market places a price on other measures of risk that can be informative when considering the ERP. The signals are strongest when the ERP, credit spreads, and VIX all indicate similar levels of extreme fear or greed.

Beta. Despite the CAPM's popularity among practitioners, the concept of beta has been challenged on empirical and intellectual grounds. The empirical problem is that beta does not predict expected returns the way it is meant to. Specifically, stocks with low betas generate higher returns, and stocks with high betas deliver lower returns, than the model predicts. The intellectual objection is that volatility in general, and beta in particular, are poor ways to measure risk. Value investors generally define risk as potential permanent loss of capital and argue that the volatility of asset prices does a poor job of capturing that risk.

We discuss methods to improve the measurement of beta and also review alternative approaches to estimating the cost of equity. The objective is to come up with an estimate that captures the opportunity cost of equity investors in a portfolio setting and that makes business, economic, and common sense.

Beta measures the return of an individual security relative to the return on the market index. It reflects financial elasticity. You calculate a historical beta by doing a regression analysis with the market's total returns as the independent variable (x-axis) and the asset's total returns as the dependent variable (y-axis). The slope of the best-fit line is the beta.[40]

The slope of the regression line is the rise (up or down) over the run (left to right). The beta is 1.0 for a security that goes up and down the same as the market. The beta is 2.0 for an asset that goes up or down at a percentage twice that of the market. That asset is considered to be riskier than the market. The beta is 0.5 if the security rises and falls at a rate that is one-half of the market's percentage. That security is less risky than the market.

Exhibit 12 shows the beta for Nike, a sportswear company, using monthly returns over the 60 months ended 2022, and the S&P 500 as the index. The beta is 1.09. The equation for the "slope intercept form" of a straight line is  $y = mx + b$ . In this equation, which appears in the top right corner of exhibit 12, "m" equals beta (slope) and "b" is alpha (intercept). Alpha is the y-intercept of a regression line and as such captures the excess return. If you combine all of the assets in an index and correlate it versus the index itself, you will get a beta of 1.0 and an alpha of zero before consideration of any costs.

Exhibit 12: Beta and Alpha for the Stock of Nike, 60 Months Through 2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/64ea55a51b0463faf84596c8da0930490af52d6f8f68b420c3dcbe03997d585b.jpg)  
Source:FactSet.

Similar to the ERP, beta should be a measure that looks forward but is unobservable. As a result, to estimate it we have to examine historical relationships and make adjustments to remove some of the noise.

Calculating beta requires a number of judgments. These include which index to compare to, how far back in history to go, and whether to measure frequency on a daily, weekly, monthly, quarterly, or yearly basis.

The benchmark the marginal buyer of the security is likely to use is a good way to think about the appropriate index for comparison. The S&P 500 is a sensible candidate for investors in the United States as it is by far the most common benchmark. The beta will vary based on the benchmark. Exhibit 13 shows the beta for Nike (60-month, using monthly returns) calculated for four indexes. The betas are clustered for the indexes based in the U.S., but the figure increases to 1.25 using the MSCI ACWI, a global equity index captures the performance of nearly 3,000 largeand mid-capitalization stocks in 23 developed and 24 emerging markets.

Exhibit 13: Nike's Beta Using Four Benchmarks  

<table><tr><td>Relative to:</td><td>Beta</td></tr><tr><td>S&amp;P 500</td><td>1.09</td></tr><tr><td>Russell 1000</td><td>1.07</td></tr><tr><td>Dow Jones</td><td>1.07</td></tr><tr><td>MSCI ACWI</td><td>1.25</td></tr></table>

Source: FactSet and Counterpoint Global. Note: Monthly returns over the 60 months ended 2022.

Another decision is how far back to go in time. The benefit of going back further is that there are more data and the regression result is more reliable as a result. The drawback is that the company may have changed its business model, business mix, or levels of financial leverage. Or it may have simply matured. Longer is better for companies with stable business models and capital structures. Calculate a rolling beta if you sense that data from the past fail to reflect the present. You can consider a shorter period if the beta changes materially during the period you measure.

Exhibit 14 shows the betas for Nike using the S&P 500 and monthly returns over four different time horizons. Here again, the figures for three to seven years are close to one another. There is a modest drop only at 10 years. The exhibit also shows the strength of the correlation, R-squared, between the returns for the market and the stock in each period. The correlations weaken the further you look back.

Exhibit 14: Nike's Beta Using Four Time Periods  

<table><tr><td>Measurement period</td><td>Beta</td><td>R-squared</td></tr><tr><td>Three years</td><td>1.10</td><td>49%</td></tr><tr><td>Five years</td><td>1.09</td><td>49%</td></tr><tr><td>Seven years</td><td>1.06</td><td>43%</td></tr><tr><td>Ten years</td><td>1.00</td><td>37%</td></tr></table>

Source: FactSet and Counterpoint Global. Note: Monthly returns over the 60 months ended 2022.

The frequency of the measurement is the last choice. More frequent measurement creates more data. However, McKinsey's book on valuation and work by Aswath Damodaran both suggest biases associated with daily or weekly data for beta estimation.[41] McKinsey recommends monthly data, and Damodaran recommends using high-frequency data only with certain adjustments. A good place to start is monthly returns over 60 months.

Exhibit 15 shows Nike's beta relative to the S&P 500 using daily, weekly, monthly, quarterly, and yearly frequencies over five years. The results are in the range of 1.03 to 1.09 except for the quarterly measure. Also included are the standard errors.

Exhibit 15: Nike's Beta Relative to the S&P 500 Using Five Measurement Frequencies  

<table><tr><td>Frequency</td><td>Beta</td><td>Standard error</td></tr><tr><td>Daily</td><td>1.07</td><td>0.03</td></tr><tr><td>Weekly</td><td>1.09</td><td>0.07</td></tr><tr><td>Monthly</td><td>1.09</td><td>0.15</td></tr><tr><td>Quarterly</td><td>1.28</td><td>0.26</td></tr><tr><td>Yearly</td><td>1.03</td><td>0.45</td></tr></table>

Source: FactSet and Counterpoint Global. Note: Returns over the 5 years ended 2022.

The process is imprecise even with thoughtful choices in calculating the historical beta. For instance, Amazon's 60-month raw beta versus the S&P 500 based on monthly returns is 1.22 with an  $R^2$  of 44 percent and a standard error of 0.18. These figures suggest you can be 95 percent confident that Amazon's beta is somewhere between 0.86 and 1.58, which reveals the imprecision of a single number. There are a few ways to improve the estimate of beta.

Adjusted Beta. The first method regresses the beta toward 1.0 to create an adjusted beta. Bloomberg and Value Line use this technique. Here's the formula that is commonly used:

Adjusted beta  $=$  Raw beta (0.67) + 1.0 (0.33)

So, for example, Amazon's adjusted beta is 1.15 ([1.22*.67]) + [1.0*.33]).

The justification for this adjustment is the empirical evidence that betas tend toward 1.0 over time.[42] This makes economic and intuitive sense. The value of a company can be broken down into a steady-state value and the present value of growth opportunities (PVGO).[43] The steady-state value comes from assets in place and reflects the cash flows the business currently generates. The PVGO reflects the expected value of future investments that create value.

The value of most companies is a combination of the two, and as a company matures the steady-state contributes more to value and the PVGO adds less. Research shows that the investments in the PVGO are riskier than the assets in place. That means they have higher betas. As the mix of firm value shifts from PVGO toward steady-state, the beta drifts lower.[44]

This adjustment is reasonable but applying proper weights is a challenge. The rate at which betas converge to 1.0 is different from one company to the next. But overall, some regression in the beta toward 1.0 generally improves the estimate of a beta that seeks to reflect future risk.

Acknowledging that betas regress is especially important in calculating a continuing value. In a DCF model, the continuing value is an estimate of the value beyond the explicit forecast period. Healthy businesses tend to become larger, more profitable, and more stable as they mature. That means that the cost of capital used to estimate the continuing value should reflect the business characteristics in the future versus what they are today.

Industry Beta. Another way to improve beta is to use an industry beta rather than the beta of an individual company. The economic rationale is that business risk, or variability of cash flows, will be similar for all companies within an industry. An industry beta can reduce error by using a larger sample, potentially cancelling the noise that appears in the estimation of beta for individual companies.

The calculation of an industry beta has three steps:

1. Unlever the beta. A company's beta combines business risk and financial risk. We want to measure business risk first, so we need to remove the effect of financial leverage from the beta. The equation to unlever the beta is based on M&M's invariance proposition:45

$$
\beta_ {U} = \beta_ {L} / [ 1 + (1 - T) D / E) ]
$$

Where:

$$
\beta_ {U} = \text {B e t a u n l e v e r e d}
$$

$\beta_{\mathrm{L}} =$  Beta levered

T = Tax rate

D = Market value of debt

E = Market value of equity

To illustrate, consider the stock of a company with a raw beta of 1.2, a 25 percent tax rate, and 20 percent debt and 80 percent equity (note that D/E is not the ratio of debt to total capital but of debt to equity):

$$
\begin{array}{l} \beta_ {U} = 1. 2 / [ 1 + (1 -. 2 5) . 2 0 / {. 8 0}) ] \\ = 1. 2 / [ 1 + . 7 5 (. 2 5) ] \\ = 1. 2 / 1. 1 8 7 5 \\ \end{array}
$$

$$
\beta_ {U} = 1. 0
$$

2. Calculate the average beta for the industry. The trick here is defining the industry. Ideally, it is a group of companies with similar business risk because they are exposed to the same markets, create comparable products, and deal with similar customers. The average can be weighted by market capitalization, and calculating the median helps check for potential outliers that might distort the average.
3. Relever the beta for the specific company. Unlevering the beta isolates business risk, which is considered uniform for companies within the same industry. We must now reintroduce financial risk, which can vary for companies within the same industry. Financial risk is estimated using a company's expected long-term capital structure. The formula to lever the beta is:

$$
\beta_ {L} = \beta_ {U} [ 1 + (1 - T) D / E ]
$$

Take for example a company that has an industry beta of 1.05, a 20 percent tax rate, and 25 percent debt and 75 percent equity:

$$
\begin{array}{l} \beta_ {L} = 1. 0 5 [ 1 + (1 - . 2 0) \cdot 2 5 / {. 7 5}) ] \\ = 1. 0 5 [ 1 +. 8 0 (. 3 3 3) ] \\ = 1. 0 5 [ 1. 2 6 7 ] \\ \end{array}
$$

$$
\beta_ {U} = 1. 3 3
$$

The motivation to calculate an industry beta is to come up with a more accurate and stable estimate of a company's risk. But there is not a great deal of evidence that industry betas are much better than firm-specific betas as they face a lot of the same analytical issues.[46] Further, many companies operate in multiple lines of business and estimating the risk for each is cumbersome, even if it provides an improved estimate of beta.[47]

Aswath Damodaran provides his estimates of levered and unlevered betas for dozens of industries and includes a correction for industries with lots of cash. When cash exceeds debt, a company has negative financial risk. This dampens the volatility of cash flows and lowers the risk for shareholders.

Winsorized Beta. Ivo Welch, a professor of finance, finds the predictive value of beta improves when past returns are winsorized.<sup>48</sup> Winsorizing removes extreme values in a data series to reduce the impact of non-representative outliers.

Using daily returns, data are cut off at -2 times and +4 times the market's return. For instance, if the market's return on one day is +5 percent, the stock's returns are winsorized at -10 and +20 percent. If the market is down 5 percent, the returns are winsorized at -20 to +10 percent. This process changes the slope of the regression and hence the beta.

Welch finds that this modification produces a beta that better predicts future betas than does a simple regression or a regression combined with an adjustment.

The cost of equity is an opportunity cost that is implicit and therefore difficult to pin down with precision. But all is not lost. There are procedures, including comparing figures to other measures that are set by the market and applying business sense, that can allow for a useful calculation. Remember, too, that what determines a great investment is how the expectations for future cash flows change over time. The biggest driver of expectations is business results.

To summarize this section, we recommend using the 10-year Treasury note as the risk-free rate, an equity risk premium that looks forward, and a 60-month, monthly beta that is adjusted as appropriate. Each calculation is open to debate but this is a good starting point. Estimates for the cost of equity should also be checked by examining other forms of risk priced by the market.

## Weighted Average Cost of Capital

The weighted average cost of capital (WACC) combines the opportunity cost of the sources of capital with the relative contribution of those sources based on target weights.

We can start with the simple example of a company funded solely with debt and equity. Assume an after-tax cost of debt of 5 percent and a cost of equity of 10 percent that is financed with 20 percent debt and 80 percent equity. The weighted average cost of capital would be 9.0 percent, calculated as follows:

WACC  $=$  (cost of debt  $\times$  weighting of debt) + (cost of equity  $\times$  weighting of equity)

$$
\begin{array}{l} = (5 \% \times 20\%) + (10 \% \times 80\%) \\ = 1.0 \% +8.0 \% \\ = 9.0\% \\ \end{array}
$$

Exhibit 16 shows an estimate of WACC for companies in the Russell 3000, a good proxy for the overall U.S. equity market, from 1985 to 2022. We use Aswath Damodaran's estimates for the cost of equity, the yield on Baa-rated bonds as a proxy for the pre-tax cost of debt, the overall effective corporate tax rate, and the aggregate debt-to-total capital ratio from each year. The average WACC over the full period was 7.9 percent, and the estimate at the end of 2022 was 8.8 percent.

Exhibit 16: Weighted Average Cost of Capital for the Russell 3000, 1985-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/663e40d163e535193164d75bc939b6c6dde617d9390556bb3b1265ff446b9098.jpg)  
Source: FactSet; Moody's; Aswath Damodaran; FRED at the Federal Reserve Bank of St. Louis; Counterpoint Global estimates.  
Note: Excludes financials and real estate; Capital structure reflects book value of total longand short-term debt and market value of equity; cost of debt is the Moody's Seasoned Baa Corporate Bond Yield; cost of equity = yield on 10-year U.S. Treasury note + equity risk premium.

The weighted average cost of capital is the appropriate rate at which to discount the future free cash flows attributable to the firm to determine their present value. This is called free cash flow to the firm (FCFF).

When discounting cash flows attributable to equity holders, which is common practice for financial services firms, the correct discount rate is the cost of equity capital. This is called free cash flow to equity (FCFE). Practitioners report that they use the FCFF model roughly twice as frequently as the FCFE model.[49]

There are a number of items to bear in mind when estimating the WACC:

- Weighting of debt and equity should be based on market values and not book values. The reason is that opportunity cost is based on the prevailing asset price rather than the level at which the company reflects debt or equity on the balance sheet. Indeed, some companies have negative equity as the result of the vagary of accounting.[50]

Companies sometimes share a target for the debt-to-total capital ratio based on book values. In those instances, you should translate the target into one based on market values. Most companies try to stay close to their target capital structures. But use the target weights of debt and equity even if the current weights are different because you want the best estimate of what the capital structure will look like over time.

Exhibit 17 shows the debt-to-total capital ratio for the Russell 3000 from 1985 to 2022. The 2022 figure was 18 percent, below the 30 percent average over the full period. The decline in leverage levels since 2008 notwithstanding, the trend in the U.S. over the last century has been to increase leverage.[51] There is also evidence that companies adjust their capital structures in reaction to changes in tax rates.[52]

Exhibit 17: Debt-to-Total Capital Ratio for the Russell 3000, 1985-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/43d34ffd8e82ffb8915bb0ca0348bf8b7a641ca00f2fa8e1f12627b5df6e120b.jpg)  
Source: FactSet and Counterpoint Global estimates.  
Note: Excludes financials and real estate; Capital structure reflects the book value of total longand short-term debt and the market value of equity.

- The WACC is the discount rate a company should use for investments that have risk consistent with the underlying business. Companies and investors sometimes evaluate the attractiveness of an investment using the cost of funding rather than the cost of capital, especially in cases where the investment is expected to add to earnings per share. This is incorrect.

However, the discount rate for an investment that is more or less risky than that of the company should be higher or lower than the company's overall WACC to reflect that difference. Empirically, companies commonly stick to one cost of capital, which introduces the risk of overinvesting in high-risk investments and underinvesting in low-risk investments.[53]

- Don't adjust your WACC to do scenario analysis. The discount rate should be consistent. You reflect the range of values by considering different potential outcomes for cash flows.

The expectations infrastructure is an analytical tool that can help create scenarios. It starts with "value triggers," including sales growth, operating costs, and investments, and considers how changes in those triggers ultimately affect sales, operating profit margin, and investment rate. The key is the value triggers are refined by considering "value factors," six microeconomic determinants of the ultimate value drivers. The expectations infrastructure guides analysis of how potential changes in value triggers flow through value factors in order to determine value.[54]

A careful examination of the probabilities and values of the various scenarios is the way to capture and assess risk. Financial executives are notoriously poor forecasters and incorrectly compensate for that deficiency by using a hurdle rate that tacks on a premium of about six percentage points to the cost of capital.[55]

- The WACC should be updated relatively frequently. Companies and investors should have a current sense of opportunity cost and what that means for the opportunity set of investment possibilities. Companies tend to be slow to change their cost of capital estimates, often reviewing the calculation annually.[56] A lot can change in a year.  
- The adjusted present value (APV) method is useful if you expect a company's capital structure to change over time. For example, this approach is relevant for a company that levers up and expects to pay down debt rapidly. (See appendix A for a discussion of the approach.) APV relies on the principle of additivity. You value a company as if it were financed solely with equity, value the tax shield, and then add the parts to determine corporate value.

The WACC may include other forms of financing, including convertible bonds and preferred equity. But these are small relative to straight debt and equity.

# Other Forms of Financing

Debt and equity are by far the largest sources of capital for U.S. public companies. As of the end of 2022, the total value of corporate debt and leases was about  \$10 trillion and the market value of equity was approximately\$ 40 trillion. Companies use other forms of external financing as well, such as convertible debt and preferred stock. The size of the convertible debt market was \$240 billion based on market value, and \$250 billion based on par value, in 2022. The value of preferred stocks in 2022 was roughly \$310 billion for stocks listed on major exchanges, and \$540 billion including stocks that trade over-the-counter (OTC). Federal National Mortgage Association and Federal Home Loan Mortgage Corporation, known as Fannie Mae and Freddie Mac, account for nearly all of the OTC issuance.

Convertible Bonds. Convertible bonds combine a straight debt issue with a warrant. A warrant provides the owner with the right, but not the obligation, to buy the stock at a specified exercise price by a certain date. Warrants, unlike options, are for the issuance of new shares. That means that current shareholders are diluted if the convertible holders exercise the warrants. In the calculation of a company's capital structure, the bond portion is debt and the warrant is equity.

Convertible bonds generally have a lower yield than straight debt because the attached warrant has value. Many issuers of convertible bonds have relatively high equity volatility. This makes sense because volatility is a large driver of warrant value. It is common for convertible bonds to be junior to other debt in the capital structure.

The market value of convertible bonds falls into one of three broad regimes. The first is when the stock price is well above the exercise price. Here, convertible bonds trade more like straight equity than debt. Second, when the stock price is close to the exercise price the bond value and warrant are both meaningful sources of value. Finally, when the stock price falls well below the exercise price the convertible bond is "busted," and trades at a yield similar to straight debt.

When the stock price is close to the strike price it is vital to value the debt and warrant properly. To value the straight bond, you proceed as if warrant does not exist. You apply the rate of interest the company would need to pay if it had issued a straight bond. The warrant can be valued using a standard warrant pricing model. The implied volatility of the stock is a key input. Then you add the debt and warrant values to estimate the value of the convertible bond.

Preferred Stock. Preferred stock is an equity instrument that combines the features of debt and equity. Similar to debt, preferred stock typically provides its holder a stream of cash flows in the form of a dividend. Preferred stock, similar to debt, generally has no voting rights. Like equity, the company has no contractual obligation to pay a dividend on preferred stock and the board of directors has discretion in setting the preferred dividend. But companies have to pay the specified dividends on preferred stock before they pay dividends on common stock.

Preferred stock is junior to debt but senior to common equity in the capital structure. As a result, the cost of preferred stock is typically somewhere in between the two. Preferred stock also has a senior claim to common equity in liquidation. The cost of preferred stock equals the preferred dividend per share divided by the market price per share. For example, cost of preferred stock is 8.75 percent for an issue paying a dividend of  \$1.75 per year and a price of$ 20 (8.75 = $1.75 ÷ \$20).

Unlike most interest payments on debt, dividends on preferred stock are not tax deductible for the issuing firm. This deters a lot of companies from issuing preferred stock. The largest issuers are financial institutions, real estate investment trusts (REITs), and public utilities.

It is attractive for companies to own the preferred stock of other companies because the tax laws allow corporate owners to exclude 70 percent of dividend income from their taxable income. This is especially valuable because the yields on preferred stock tend to be higher than the yields on common stock. Financial companies sometimes use preferred stock to improve capital ratios at a cost lower than straight equity.

Most preferred issues include some provision for retirement. For example, preferreds frequently offer an option to retire the issue, convert it into common stock, or repurchase it at a specific time and price. This means that some preferred issues have an embedded option that should be included in valuation.

# Optimal Capital Structure

A company's optimal capital structure finds the trade-off between the financial benefits of debt and the risk of financial distress that maximizes the value of the firm.

Corporate tax policies in many countries favor debt over equity financing. Specifically, equity is subject to taxation at the corporate and individual levels. Individuals must pay taxes on dividends and capital gains in taxable accounts. In fact, share buybacks, another means to return cash to shareholders, are subject to triple taxation in the U.S. following the Inflation Reduction Act of 2022, which introduced a one percent excise tax on buybacks.

Most countries treat some percentage of interest expense as a cost of doing business that a company may deduct from income before paying taxes. This avoids the problem of double taxation. As a result, debt financing is sensible for many companies because it increases the value of the firm by making additional cash flow available for the providers of capital.

Some debt may add value but it stands to reason that too much debt introduces the risk of financial distress. The question is how companies actually behave relative to what might be assessed as ideal.

Surveys of financial executives reveal some interesting evidence. First, companies generally adopt a target capital structure with debt less than the optimal amount because they want to ensure sufficient resilience. Further, a relatively recent survey found that only 24 percent of the chief financial officers of large corporations cited interest deductibility as an important factor in determining debt levels.

This result, which is down from 60 percent in a comparable survey from 2001, suggests that the value of the tax shield is not the guiding factor in setting a target capital structure. That said, federal tax rates and interest rates are lower today than they were at the beginning of this century.[57]

There are a couple of popular approaches to studying capital structure.

Trade-Off Theory. This theory says the optimal capital structure is the ideal trade-off between the benefit of interest tax shields and the cost of financial distress (see exhibit 18). When there is no debt, you can value the firm using an estimate of the cost of equity and an unlevered beta. As a company adds debt (moving to the right on the x-axis), the benefit of the tax shield initially rises at a rate faster than the cost of financial distress.

Exhibit 18: Trade-Off Theory of Optimal Capital Structure  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/57f59fabe2aaa166150cc511774e9c154f34c8bad971e2eff06ce4b1f9e60e36.jpg)  
Source: Based on Stewart C. Myers, "The Capital Structure Puzzle," Journal of Finance, Vol. 39, No. 3, July 1984, 575-592.

But at some point, the cost of financial distress exceeds the benefit of the tax shield and incremental debt reduces firm value. One way to think about it is that interest expense becomes a fixed cost, and therefore declines in operating profit create pre-tax losses. A company must pay taxes for the tax shield to be of value. Adding debt therefore increases the probability that a company will be unprofitable and unable to benefit from tax shields.

We already saw that many companies have a target capital structure that is more conservative than what the trade-off theory would advise. Yet some high level data advise the concept is useful.

For example, the theory proposes that businesses with low business risk are good candidates to use debt. Business risk reflects the volatility of operating profits and is measured with unlevered beta. The use of debt can be quantified with the ratio of debt to total capital. Aswath Damodaran provides these data. Exhibit 19 shows the relationship between unlevered beta and the ratio of debt to total capital for more than 90 industries using Damodaran's figures. As the theory predicts, companies with low business risk tend to have higher debt-to-total capital ratios than businesses with high business risk.

Exhibit 19: Unlevered Beta and Debt-to-Total Capital Ratios by Industry  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/7d3ecc285fb78b7f80f08cdb23d12530905369915283302e961d6528f7854594.jpg)  
Source: Aswath Damodaran and Counterpoint Global.

The trade-off theory also helps explain the rise of the leveraged buyout industry in recent decades. A leveraged buyout is a transaction where a financial sponsor buys a company that has solid and stable cash flows and finances the deal with a high ratio of debt to equity. The framework also explains why companies raise equity when financial distress increases and why companies beyond the optimal debt-to-total capital ratio can add value by paying down debt.[58]

But the theory fails to explain other facts, including why capital structures vary substantially within industries and why companies are not proactive in changing their policies to reflect the drivers of the theory, including changes in the cost associated with financial distress as well as changes in interest and tax rates.

Pecking Order Theory. Companies finance their operations internally through cash from operations or externally by raising debt or equity. This theory assumes that companies prefer internal finance, but if those funds are insufficient firms will raise capital following a pecking order from the least to most risky capital.[59] Specifically, they will start with internal financing, followed by debt, and finally with equity. Capital structure decisions are not motivated by the value of the tax shields but are related to the economics of the business.

A company can rely on internal financing when its growth rate is equal to or lower than its return on invested capital (ROIC). This allows us to test the pecking order theory because, holding growth constant, we should see businesses with high ROICs have lower debt-to-total capital ratios than businesses with low ROICs.

Exhibit 20 again uses Damodaran's data to examine this relationship for more than 90 industries. While far from perfect, the basic pattern holds true. Indeed, many of the best businesses in the world, as measured by ROIC, have very conservative capital structures.

Exhibit 20: Industry ROIC and Debt-to-Total Capital Ratio  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/6edc2ce352f8cac26d67e76a86e61a52ef0aed2437fee2c8fb75cf79f1663da6.jpg)  
Source: Aswath Damodaran and Counterpoint Global.

These theories particularly apply to companies that have capital structures that are expected to remain roughly static. Valuing dynamic capital structures requires a tool such as adjusted present value (see appendix A).

Here are some final thoughts that are more speculative. One way to think about the impact of taxes on the cost of capital is to consider the government as a stakeholder. Use of debt lowers the value of the government's claim on cash flows and increases the value to debt and equity holders.

In the U.S., corporate taxes as a percentage of total federal revenue have drifted lower from a peak of nearly 40 percent in 1943 to 9 percent today (see exhibit 21). There are several factors that explain this drop. The first is that corporate leverage was near its historic low in the 1940s and has risen steadily in the last century or so.

Exhibit 21: Corporate Taxes as Percentage of Federal Tax Revenue, 1934-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/cf2937cb87ff8c8cbaac4ceea0babea74b582ab0e4ca67c17b6773b00fc62af8.jpg)  
Source: www.govinfo.gov/ and Counterpoint Global.

Second is that the top marginal and effective tax rates were higher in the past than they are today. Exhibit 22 tracks the top federal statutory tax rate for U.S. corporations from 1909 to the present, and the effective tax rate since 1947. The top marginal rate exceeded 50 percent for stretches during the 1950s and 1960s but has descended to today's 21 percent rate, which went into effect in 2018.

Exhibit 22: Top Federal Statutory and Effective Tax Rates for U.S. Corporations, 1909-2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/df74b9cc8a217caf9a3dd9aa29949fcf82eaca4410a6e5d5387afec9fceea31f.jpg)  
Source: Tax Policy Center; FRED at the Federal Reserve Bank of St. Louis; Counterpoint Global.

Another reality is the operations of large American companies have become more global over time. That provides them with the opportunity to manage where their profits are taxed, hence lowering the overall tax rate they pay.

But perhaps the biggest and least discussed tax shield is the rise in intangible investment. The important observation is that companies expense intangible investments on their income statement and therefore reduce pre-tax profit. Companies capitalize tangible investments, which means they record them on the balance sheet and depreciate them on the income statement over the asset's estimated useful life. An intangible and tangible investment of the same magnitude and payback can have very different tax treatment.

Exhibit 23 shows our estimate of the investment component of selling, general, and administrative costs (SG&A) excluding research and development (R&D) for companies in the Russell 3000 excluding financial and real estate firms. The total was more than \$1.3 trillion in 2021.[60] An intangible investment is a discretionary outlay in pursuit of growth that creates value. That expense lowered pre-tax income, taxes, and net income.

Exhibit 23: Investment SG&A ex-R&D for the Russell 3000, 1985-2021  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/a714ed59-01d3-453d-97c7-f19f3aef1d4c/03de47d9d68e9ef77b7afe514c7a6beefa9671109fc6e4cec3d4deb010546d74.jpg)  
Source: FactSet; Aneel Iqbal, Shivaram Rajgopal, Anup Srivastava, and Rong Zhao, "Value of Internally Generated Intangible Capital," Working Paper, February 2022; Counterpoint Global. Note: Excludes financial and real estate companies.

We need to treat intangible and tangible investments the same way in order to compare them properly. In this case, we capitalize investment SG&A ex-R&D and amortize it over an appropriate period. We estimate that would have increased the pre-tax earnings for companies in the Russell 3000 by about  \$360 billion in 2021. Applying a 21 percent tax rate would yield about\$ 75 billion in additional corporate tax revenue, all else held equal. Compare that to the \$372 billion in federal taxes that companies paid in 2021.

# Conclusion

The cost of capital is a measure of expected return that reflects compensation for deferring consumption. It allows us to estimate values in the future via compounding and bring future values to the present via discounting. You can think of it as a form of opportunity cost.

Pinpointing the cost of capital is a challenge because while most practitioners agree on the theoretical framework there is wide discretion in how it is applied. As a result, the output can vary widely.[61] Combine this with the fact that the inputs move around and it is easy to see why many investors throw up their hands in frustration.

Our view is a little more optimistic. The main idea to remember is that we are trying to estimate a discount rate that is sound and that makes business and common sense. To that end, we can use risks that are priced by the market to guide our judgment.

The cost of debt is relatively straightforward to calculate because the terms of borrowing are set by contract and required yields are visible. This is particularly true for debt rated as investment grade. For debt rated below investment grade the task is more challenging because of the risk of default and uncertainty of what creditors may recover in that case.

The cost of equity is difficult to estimate because it has an implicit cost. In other words, investors expect a certain rate of return even if it is not spelled out explicitly. The two main hurdles in estimating the cost of equity properly are an estimate of the equity risk premium, the excess compensation over time for owning equities relative to a risk-free asset, and the contribution of a firm's risk to a portfolio.

We find the estimates for the ERP that Aswath Damodaran produces every month to be a sound starting point. Further, Damodaran provides a spreadsheet that allows an investor to use his or her assumptions and to modify them to taste. The relationship between his ERPs and subsequent returns for the market over 10 years are reasonable.

How a stock affects the risk of a portfolio, which beta seeks to measure, is more difficult and controversial. We reviewed techniques such a regression toward the mean, use of industry betas, and winsorizing betas, in order to reduce the noise. Applying these techniques intelligently requires addressing important considerations that in themselves may be a valuable exercise. There is no question that some judgment is required.

The cost of capital is the rate at which future free cash flows are discounted to come up with a present value in a discounted cash flow model. It is important to derive a figure that reflects prevailing market conditions and is sensible.

At the end of the day, successful investing is based on understanding the market's expectations for future cash flows and anticipating how those expectations will change. The biggest driver is the revision of expectations in the fundamentals of a company. These include sales growth and potential, profitability, return on invested capital, and sustainable competitive advantage.

Deriving a practical cost of capital is essential but not as important as understanding a business and its prospects. A solid cost of capital estimate is the price of entrance to the main event of anticipating revisions in expectations for future cash flows.

# Checklist for Estimating the Cost of Capital

Identify all sources of financing

# Debt

Calculate the yield to maturity on the company's long-term debt

If observable, use that yield  
If illiquid, use a credit spread  
If the security contains an option, use the implied option-adjusted spread

Reflect the tax shield  
□ Consider other tax issues, including tax-loss carryforwards and tax credits

# Equity

Look up the current risk-free rate (in the U.S., the 10-year Treasury note)  
Use current equity risk premium estimate  
Estimate the industry beta  
Apply a multi-factor model  
Relever the industry beta to calculate the stock's beta  
Check your cost of equity versus the cost of debt and implied volatility  
For the continuing value, use a beta closer to 1.0 if the beta is currently substantially different than 1.0

# Other Sources of Financing

Calculate return required on preferred stock or convertible bond

# Capital Structure

Determine the company's target debt-to-capital ratio (use market values)  
□ Use adjusted present value if you expect the capital structure to change

# Appendix A: Adjusted Present Value

Adjusted present value (APV) is a flexible way to do discounted cash flow analysis that is particularly helpful in modeling companies that have dynamic capital structures.[62]

Assuming a debt-to-total capital ratio that is steady makes sense for most companies. Further, companies are today holding more cash than they did in the past. But additional analysis is required in cases where the capital structure is likely to change materially over the forecast period. For example, APV has proven useful to value companies that are subject to a buyout by a private equity firm.[63]

An APV analysis has four steps. First, you prepare forecasts for financial statements, including the income statement, balance sheet, and statement of cash flows. This allows you to calculate free cash flow, the cash the business generates excluding any impact from financing decisions. Free cash flow equals net operating profit after taxes minus investment needs. Second, you discount the free cash flows at the cost of equity using an unlevered beta. Third, you value the effect of the tax shield at the cost of debt and, finally, you add the unlevered value to the value of the tax shield to estimate corporate value.

Here is a very simple example:

1. Prepare forecasts for financial statements. We assume sales of \(15,000 in year 1, sales growth of 5 percent, an earnings before interest, taxes, and amortization (EBITA) margin of 15 percent, net working capital (nwc) growth equal to 15 percent of incremental sales, fixed capital (fc) growth equal to 20 percent of incremental sales, and a 25 percent tax rate.

These assumptions solve for \(2,000 of free cash flow (FCF) in year 1, and free cash flow grows 5 percent a year through year 10.

We also assume debt starts at  \$7,500 in year 1 and that\$ 500 gets paid off each year for the following 9 years.

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>Sales</td><td>15,000</td><td>15,750</td><td>16,538</td><td>17,364</td><td>18,233</td><td>19,144</td><td>20,101</td><td>21,107</td><td>22,162</td><td>23,270</td></tr><tr><td>EBITA</td><td>3,000</td><td>3,150</td><td>3,308</td><td>3,473</td><td>3,647</td><td>3,829</td><td>4,020</td><td>4,221</td><td>4,432</td><td>4,654</td></tr><tr><td>Cash taxes</td><td>750</td><td>788</td><td>827</td><td>868</td><td>912</td><td>957</td><td>1,005</td><td>1,055</td><td>1,108</td><td>1,163</td></tr><tr><td>NOPAT</td><td>2,250</td><td>2,363</td><td>2,481</td><td>2,605</td><td>2,735</td><td>2,872</td><td>3,015</td><td>3,166</td><td>3,324</td><td>3,490</td></tr><tr><td>Δ nwc</td><td>107</td><td>113</td><td>118</td><td>124</td><td>130</td><td>137</td><td>144</td><td>151</td><td>158</td><td>166</td></tr><tr><td>Δ fc</td><td>143</td><td>150</td><td>158</td><td>165</td><td>174</td><td>182</td><td>191</td><td>201</td><td>211</td><td>222</td></tr><tr><td>Investment</td><td>250</td><td>263</td><td>276</td><td>289</td><td>304</td><td>319</td><td>335</td><td>352</td><td>369</td><td>388</td></tr><tr><td>NOPAT</td><td>2,250</td><td>2,363</td><td>2,481</td><td>2,605</td><td>2,735</td><td>2,872</td><td>3,015</td><td>3,166</td><td>3,324</td><td>3,490</td></tr><tr><td>Investment</td><td>250</td><td>263</td><td>276</td><td>289</td><td>304</td><td>319</td><td>335</td><td>352</td><td>369</td><td>388</td></tr><tr><td>Free cash flow</td><td>2,000</td><td>2,100</td><td>2,205</td><td>2,315</td><td>2,431</td><td>2,553</td><td>2,680</td><td>2,814</td><td>2,955</td><td>3,103</td></tr><tr><td>Debt</td><td>7,500</td><td>7,000</td><td>6,500</td><td>6,000</td><td>5,500</td><td>5,000</td><td>4,500</td><td>4,000</td><td>3,500</td><td>3,000</td></tr></table>

2. Discount the free cash flows at the unlevered cost of equity. We assume that the cost of equity is 10 percent. The sum of the present value (PV) of cash flows is \$14,880.

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>Free cash flow</td><td>2,000</td><td>2,100</td><td>2,205</td><td>2,315</td><td>2,431</td><td>2,553</td><td>2,680</td><td>2,814</td><td>2,955</td><td>3,103</td></tr><tr><td>PV of FCF</td><td>1,818</td><td>1,736</td><td>1,657</td><td>1,581</td><td>1,509</td><td>1,441</td><td>1,375</td><td>1,313</td><td>1,253</td><td>1,196</td></tr><tr><td>Σ PV CF</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>14,880</td></tr></table>

3. Discount the tax shield at the cost of debt. We assume the cost of debt is 6 percent. The tax rate is 25 percent. The sum of the present value of the tax shield is \$606.

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>Debt</td><td>7,500</td><td>7,000</td><td>6,500</td><td>6,000</td><td>5,500</td><td>5,000</td><td>4,500</td><td>4,000</td><td>3,500</td><td>3,000</td></tr><tr><td>Interest</td><td>450</td><td>420</td><td>390</td><td>360</td><td>330</td><td>300</td><td>270</td><td>240</td><td>210</td><td>180</td></tr><tr><td>Tax shield</td><td>113</td><td>105</td><td>98</td><td>90</td><td>83</td><td>75</td><td>68</td><td>60</td><td>53</td><td>45</td></tr><tr><td>PV tax shield</td><td>106</td><td>93</td><td>82</td><td>71</td><td>62</td><td>53</td><td>45</td><td>38</td><td>31</td><td>25</td></tr><tr><td>Σ tax shield</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>606</td></tr></table>

4. Add the value of the operations and the tax shield. The combined value of the operations is \(15,486, with 96 percent coming from the operations and 4 percent from the tax shield.

Value of operations 14,880

Value of tax shield 606

Adjusted present value of firm 15,486

# Appendix B: Fama-French Three-Factor Model

The Fama-French three-factor model estimates returns using the equity risk premium, the excess returns of small versus large stocks, and the excess returns of cheap versus expensive stocks.

Eugene Fama and Kenneth French published a highly-cited paper in 1992 that showed their tests did not support the CAPM.[64] Rather than settling for a criticism of the theory, they examined past returns and set out to determine what explains them empirically.

The analysis showed that two factors, market capitalization and valuation, help explain returns when combined with the equity risk premium. Specifically, they found that small capitalization companies deliver higher returns than large capitalization companies (small minus big, or SMB) and that cheap, high book-to-price stocks deliver higher returns than expensive, low book-to-price stocks (high minus low, or HML). Note that these returns are relative to what the CAPM predicts by itself.

The equation to estimate expected returns is as follows:

$$
\text {R e t u r n} = \alpha + \beta_ {1} \left(R _ {m} - R _ {f}\right) + \beta_ {2} \left(R _ {S} - R _ {B}\right) + \beta_ {3} \left(R _ {H} - R _ {L}\right) + \varepsilon
$$

Fama and French tested their model using a rational asset-pricing framework. They assumed that small stocks must be riskier than large stocks and that cheap stocks are riskier than expensive stocks. However, the case is not clear cut for either based on first principles.

Exhibit 24 shows the cost of equity for Nike using the Fama-French model. We use the U.S. 10-year Treasury note for the risk-free rate. The result, 8.6 percent, is lower than the cost of equity of 10.3 percent derived from the CAPM (10.3 = 3.9 + 1.09[9.8 - 3.9]).

Exhibit 24: Fama-French Three-Factor Cost of Equity for Nike  

<table><tr><td>Factor</td><td>Average annual premium</td><td>Regression beta</td><td>Contribution to expected return</td></tr><tr><td>Equity risk premium</td><td>5.9%</td><td>1.08</td><td>6.4%</td></tr><tr><td>SMB premium</td><td>2.3%</td><td>-0.16</td><td>-0.4%</td></tr><tr><td>HML premium</td><td>4.3%</td><td>-0.30</td><td>-1.3%</td></tr><tr><td>Premium over risk-free rate</td><td></td><td></td><td>4.8%</td></tr><tr><td></td><td></td><td>Risk-free rate</td><td>3.9%</td></tr><tr><td></td><td></td><td>Cost of equity</td><td>8.6%</td></tr></table>

Source: Kenneth R. French; Aswath Damodaran; Counterpoint Global. Note: Monthly data over the 60 months ended 2022.

Note that the beta associated with the market risk premium, or CAPM, is the most significant factor determining the premium over the risk-free rate. As for the size and value premiums, the question is not whether the stock is small or cheap but rather how it acts relative to small and cheap stocks.

A multi-factor model will naturally outperform the CAPM looking back. Fama and French selected those factors as proxies for risk because they better explained returns. The challenge is to find risk factors that are causal and not simply correlated.

Just as with the basic CAPM, the practical difficulties in using the multi-factor model include the choice of time horizon and frequency of measurement period. Small stocks have delivered higher returns than large stocks and cheap stocks have outperformed expensive ones over long time periods. But there are extended stretches where these relationships do not hold.

Aswath Damodaran recommends going with the Fama-French three-factor model, or other models that use factors as a proxy for risk, to evaluate the records of mutual funds. But he prefers the CAPM, using betas with the appropriate adjustments, for corporate finance and valuation.[65] Empirically, the CAPM does almost as well as the Fama-French model.[66]

# Definitions of Terms

Here are some definitions of the terms that many investors and executives use when discussing opportunity cost:

Weighted average cost of capital: The weighted average cost of capital (WACC) blends the opportunity cost of the sources of capital with the relative contribution of those sources. The cost of capital is the rate at which you discount future cash flows in order to determine the value today.

Discount rate: In finance, the discount rate is generally equivalent to the cost of capital. But companies often use a discount rate that is substantially above the cost of capital.

Further, the discount rate can be specified. For example, the Securities and Exchange Commission (SEC) requires energy companies to use PV-10, which defines the value of reserves as the present value of the estimated future oil and gas revenues, less direct expenses, discounted at an annual rate of 10 percent. The term can also be used as a proxy for the required rate of return (see below) from the point of view of the company.

Capitalization (Cap) rate: Typically used in real estate, the cap rate is the discount rate at which net operating income (income minus all expenses) is capitalized to come up with a value for a building. For example, if the net operating income is  \$100 and the cap rate is 5 percent, the building is worth$ 2,000 ($100/.05). The cap rate works best when net operating income is at a steady state.

Internal rate of return (IRR): Internal rate of return is the annualized effective compound rate of return that sets the net present value of all cash flows in and out of an investment to zero. Generally speaking, when the IRR is in excess of the cost of capital for a project, the company should proceed with the project.

IRR has a lot of quirks. For example, the IRR is the assumed reinvestment rate for cash flows. That means that a high IRR implies a company can reinvest its cash flows at an unrealistically high level.

One solution is to use the modified internal rate of return (MIRR), which calculates the future value of cash flows using the reinvestment rate and the present value of the cash outflows using the financing rate.[67]

Required rate of return: This is typically considered at the fund level. A portfolio may have a minimum threshold of expected return, after consideration for risk, that it must meet to make an investment.

You can use the required rate of return in lieu of the weighted average cost of capital to see if the investment meets your investment hurdle.
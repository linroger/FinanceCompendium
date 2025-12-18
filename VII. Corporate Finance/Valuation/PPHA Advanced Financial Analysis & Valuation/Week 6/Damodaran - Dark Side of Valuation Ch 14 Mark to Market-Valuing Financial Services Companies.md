---
parent_directory: PPHA Advanced Financial Analysis & Valuation/Week 6
title: "Week 6: Mark to Market: Valuing Financial Services Companies"
tags:
aliases:
  - "Mark to Market: Valuing Financial Services Companies"
parent_folder: Week 6
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: "Week 6: Mark to Market: Valuing Financial Services Companies"
---

# Mark to Market: Valuing Financial Services Companies

Banks, insurance companies, and other financial services firms pose special challenges for an analyst attempting to value them—for three reasons. The first is that the nature of their businesses makes defining both debt and reinvestment difficult, which makes the estimation of cash flows also much more difficult. The second reason is that these firms tend to be heavily regulated, and changes in regulatory requirements can have a significant effect on value. The third reason is that the accounting rules that govern bank accounting have historically been very different from the accounting rules for other firms. Assets are marked to market more frequently for financial services firms.

This chapter begins by considering what makes financial services firms unique and ways of dealing with the differences. We move on to look at how the dark side of valuation manifests itself in the valuation of financial services firms in the form of an unhealthy dependence on book values, earnings, and dividends. We then look at how best to adapt discounted cash flow models to value financial services firms by considering three alternatives—a traditional dividend discount model, a cash flow to equity discount model, and an excess return model. With each, we look at examples from the financial services arena. We move on to look at how relative valuation works with financial services firms and what multiples might work best with these firms.

# Financial Services Firms: The Big Picture

Any firm that provides financial products and services to individuals or other firms can be categorized as a financial services firm. We would categorize financial services businesses into four groups from the perspective of how they make their money. A bank makes money on the spread between the interest it pays to those from whom it raises funds and the interest it charges those who borrow from it. It also makes money from other services it offers its depositors and lenders. Insurance companies make their income

in two ways. One is through the premiums they receive from those who buy insurance protection from them. The other is income from the investment portfolios they maintain to service the claims. An investment bank provides advice and supporting products for other firms to raise capital from financial markets or to consummate corporate deals. Investment firms provide investment advice or manage portfolios for clients. Their income comes from advisory fees for the advice and management and sales fees for investment portfolios. With the consolidation in the financial services sector, an increasing number of firms operate in more than one of these businesses. For example, Citigroup, created by the merger of Travelers and Citicorp, operates in all four businesses. At the same time, however, a large number of small banks, boutique investment banks, and specialized insurance firms still derive the bulk of their income from one source.

How big is the financial services sector in the U.S.? We would not be exaggerating if we said that the development of the economy in the U.S. would not have occurred without banks providing much of the capital for growth. Insurance companies predate both equity and bond markets as pioneers in risk sharing. Financial services firms have been the foundation of the U.S. economy for decades, and the results can be seen in many measures. Table 14.1 summarizes the market capitalization (in millions of U.S. dollars) of publicly traded banks, insurance companies, brokerage houses, investment firms, and thrifts in the U.S. and globally at the start of 2017.

Table 14.1 Financial Services Firms: Market Capitalizations on January 1, 2017 (in Millions)  

<table><tr><td></td><td>U.S.Number of firms</td><td>Market Cap (1/1/17)</td><td>Global Number of firms</td><td>Market Cap (1/1/17)</td></tr><tr><td>Asset Management and Custody Banks</td><td>95</td><td>$145,423.43</td><td>398</td><td>$248,987</td></tr><tr><td>Consumer Finance</td><td>40</td><td>$229,656.93</td><td>285</td><td>$316,763</td></tr><tr><td>Diversified Banks</td><td>10</td><td>$1,208,164.90</td><td>596</td><td>$6,289,169</td></tr><tr><td>Diversified Capital Markets</td><td>1</td><td>$118.50</td><td>27</td><td>$175,343</td></tr><tr><td>Financial Exchanges and Data</td><td>17</td><td>$209,051.20</td><td>60</td><td>$303,773</td></tr><tr><td>Insurance Brokers</td><td>11</td><td>$60,998.36</td><td>37</td><td>$106,416</td></tr><tr><td>Investment Banking and Brokerage</td><td>32</td><td>$329,245.87</td><td>480</td><td>$710,884</td></tr></table>

<table><tr><td></td><td>U.S.Number of firms</td><td>Market Cap (1/1/17)</td><td>Global Number of firms</td><td>Market Cap (1/1/17)</td></tr><tr><td>Life and Health Insurance</td><td>24</td><td>$224,520.73</td><td>117</td><td>$956,401</td></tr><tr><td>Mortgage REITs</td><td>42</td><td>$66,866.76</td><td>39</td><td>$53,251</td></tr><tr><td>Multi-Line Insurance</td><td>12</td><td>$119,285.20</td><td>173</td><td>$566,751</td></tr><tr><td>Multi-Sector Holdings</td><td>14</td><td>$477,242.10</td><td>97</td><td>$524,727</td></tr><tr><td>Other Diversified Financial Services</td><td>6</td><td>$7,524.37</td><td>90</td><td>$132,546</td></tr><tr><td>Property and Casualty Insurance</td><td>52</td><td>$212,872.13</td><td>207</td><td>$514,719</td></tr><tr><td>Regional Banks</td><td>627</td><td>$694,520.85</td><td>767</td><td>$959,872</td></tr><tr><td>Reinsurance</td><td>4</td><td>$18,734.90</td><td>35</td><td>$139,007</td></tr><tr><td>Specialized Finance</td><td>17</td><td>$2,272.74</td><td>182</td><td>$68,751</td></tr><tr><td>Thrifts and Mortgage Finance</td><td>175</td><td>$96,149.00</td><td>208</td><td>$162,604</td></tr></table>

At the start of 2017, financial services firms accounted for about a sixth of the overall U.S. market in terms of market capitalization. In addition, the financial services sector accounted for  $5.2\%$  of all full-time employees in the U.S. in 2016, according to the Bureau of Labor Statistics.

Given the importance of financial services companies to the economy, the crisis of 2008 acted as a wake-up call for investors on two fronts. As stock prices at established financial services firms like AIG, Citigroup, and Bank of America collapsed, the system's fragility came to the fore. At the same time, the failure of the banking system also made us more aware of how dependent the entire economy is on the health of financial services firms. Without banks lending money, investment banks backing acquisitions and financing deals, and insurance companies pooling risk, the rest of the real economy came to a standstill. By the end of 2008, financial services firms had seen huge declines in their market capitalizations, but given the pull they exercised on the rest of the market, they preserved their proportional standing for the most part. In the decade since, financial service companies have seen their values ebb and flow and the proportion that they represent of the overall stock market has reflected those changes, as shown in Figure 14.1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/eefd8e70-1ac3-459a-8571-be221937dd60/4be1260d8c18dd1fc5183cf7c3e693763c3d34f1e447c201e903dabeeadfb48a.jpg)  
Figure 14.1 Financial Services Firms as a Proportion of the Market: January 2008 to January 2017

While financial service firms have lost some of their market clout in the U.S., with the rise of technology, they remain the largest sector in terms of market capitalization in much of the rest of the world.

In emerging markets, financial services firms tend to have an even higher profile and account for a larger proportion of overall market value than they do in the U.S. If we bring these firms into the mix, it is quite clear that no one template will value all financial services firms. We have to be flexible in how we use and adapt valuation models to allow for all types of financial services firms.

# Characteristics of Financial Services Firms

Financial services firms differ from other firms in the market in many ways. This section focuses on four key differences and looks at why these differences can create estimation issues in valuation. The first is that many categories (albeit not all) of financial services firms operate under strict regulatory constraints on how they run their businesses and how much capital they need to set aside to keep operating. The second is that accounting rules for recording earnings and asset value at financial services firms are at variance with

accounting rules for the rest of the market. The third is that debt for a financial services firm is more akin to raw material than to a source of capital. The notion of cost of capital and enterprise value might be meaningless as a consequence. The final factor is that the defining reinvestment (net capital expenditures and working capital) for a bank or insurance company might be not just difficult, but impossible, and cash flows cannot be computed, using conventional cash flow inputs.

# The Regulatory Overlay

Financial services firms are heavily regulated all over the world, although the extent of the regulation varies from country to country. In general, these regulations take three forms. First, banks and insurance companies are required to maintain regulatory capital ratios, computed based on the book value of equity and their operations. They do this to ensure that they do not expand beyond their means and put their claimholders or depositors at risk. Second, financial services firms are often constrained in terms of where they can invest their funds. For instance, until the late 1990s, the Glass-Steagall Act in the U.S. restricted commercial banks from investment banking activities as well as from taking active equity positions in nonfinancial services firms. Third, the entry of new firms into the business is often controlled by the regulatory authorities, as are mergers between existing firms.

Why does this matter? From a valuation perspective, assumptions about growth are linked to assumptions about reinvestment. With financial services firms, these assumptions have to be scrutinized to ensure that they pass regulatory constraints. There might also be implications for how we measure risk at financial services firms. If regulatory restrictions are changing or are expected to change, this adds a layer of uncertainty (risk) to the future, which can have an effect on value. Put more simply, to value banks, insurance companies, and investment banks, we have to be aware of the regulatory structure that governs them.

# Differences in Accounting Rules

The accounting rules used to measure earnings and record book value are different for financial services firms than the rest of the market, for two reasons. The first is that the assets of financial services firms tend to be financial instruments (bonds, securitized obligations) that often have an active marketplace. Not surprisingly, marking assets to market value has been an established practice in financial services firms well before other firms even started talking about fair-value accounting. The second reason is that the nature of operations for a financial services firm is such that long periods of profitability are interspersed with short periods of large losses; accounting standards have been developed to counter this tendency and create smoother earnings.

- Mark to market: If the new trend in accounting is toward recording assets at fair value (rather than original costs), financial services firms operate as a laboratory for this experiment. After all, accounting rules for banks, insurance companies, and investment banks have required that assets be recorded at fair value for more than a decade, based on the argument that most of a bank's assets are traded and have market prices and therefore do not require too many subjective judgments. In general, the assets of banks and insurance companies tend to be securities, many of which are publicly traded. Because the market price is observable for many of these investments, accounting rules have tilted toward using market value (actual or estimated) for these assets. To the extent that some or a significant portion of the assets of a financial services firms are marked to market, and the assets of most nonfinancial services firms are not, we face two problems. The first is in comparing ratios based on book value (both market-to-book ratios such as price-to-book and accounting ratios such as return on equity) across financial and nonfinancial services firms. The second problem is in interpreting these ratios after they are computed. While the return on equity for a nonfinancial services firm can be considered a measure of return earned on equity invested originally in assets, the same cannot be said about return on equity at financial services firms. Here the book equity measures not what was originally invested in assets but an updated market value.
- Loss provisions and smoothing out earnings: Consider a bank that makes money the old-fashioned way—by taking in funds from depositors and lending these funds to individuals and corporations at higher rates. While the rate charged to lenders is higher than that promised to depositors, the risk that the bank faces is that lenders might default, and the rate at which they default will vary widely over time—low during good economic times and high during economic downturns. Rather than write off the bad loans as they occur, banks usually create provisions for losses that average out losses over time and charge this amount against earnings every year. Although this practice is logical, it has a catch, insofar as the bank is given the responsibility of making the loan loss assessment. A conservative bank will set aside more for loan losses, given a loan portfolio, than a more aggressive bank, and this will lead to the latter reporting higher profits during good times.

# Debt and Equity

In the financial balance sheet that we used to describe firms, there are only two ways to raise funds to finance a business—debt and equity. While this is true for all firms, financial services firms differ from nonfinancial services firms on three dimensions:

- Debt is raw material, not capital: When we talk about capital for nonfinancial services firms, we tend to talk about both debt and equity. A firm raises funds from both equity investors and bondholders (and banks) and uses these funds to

make its investments. When we value the firm, we value the value of the assets owned by the firm, rather than just the value of its equity. With a financial services firm, debt has a different connotation: Rather than viewing debt as a source of capital, most financial services firms view it as raw material. In other words, debt is to a bank what steel is to a manufacturing company—something to be molded into other products that can then be sold at a higher price and yield a profit. Consequently, capital at financial services firms is narrowly defined as including only equity capital. This definition of capital is reinforced by the regulatory authorities, who evaluate the equity capital ratios of banks and insurance firms.

- Defining debt: The definition of what comprises debt also is murkier with a financial services firm than it is with a nonfinancial services firm. For instance, should deposits made by customers into their checking accounts at a bank be treated as debt by that bank? Especially on interest-bearing checking accounts, there is little distinction between a deposit and debt issued by the bank. If we do categorize this as debt, the operating income for a bank should be measured prior to interest paid to depositors. This would be problematic, because interest expenses are usually a bank's single biggest expense item.
- Degree of financial leverage: Even if we can define debt as a source of capital and can measure it precisely, financial services firms differ from other firms in an additional way. They tend to use more debt in funding their businesses and thus have higher financial leverage than most other firms. Although good reasons can be offered for why they have been able to do this historically—more predictable earnings and the regulatory framework are two that are commonly cited—this high leverage has consequences. Because equity is a sliver of the overall value of a financial services firm, small changes in the value of the firm's assets can translate into big swings in equity value.

# Estimating Cash Flows Is Difficult

We noted earlier that financial services firms are constrained by regulation in both where they invest their funds and how much they invest. If we define reinvestment as necessary for future growth, as we have so far in this book, problems are associated with measuring reinvestment with financial services firms. Note that we consider two items in reinvestment—net capital expenditures and working capital. Unfortunately, measuring either of these items at a financial services firm can be problematic.

Consider net capital expenditures first. Unlike manufacturing firms, which invest in their plant, equipment, and other fixed assets, financial services firms invest primarily in intangible assets such as brand name and human capital. Consequently, their investments for future growth often are categorized as operating expenses in accounting statements. Not surprisingly, the statement of cash flows to a bank shows little or no capital

expenditures and correspondingly low depreciation. With working capital, we run into a different problem. If we define working capital as the difference between current assets and current liabilities, a large proportion of a bank's balance sheet would fall into one of these categories. Changes in this number can be both large and volatile and might have no relationship to reinvestment for future growth.

As a result of this difficulty in measuring reinvestment, we run into two practical problems in valuing these firms. The first is that we cannot estimate cash flows without estimating reinvestment. In other words, if we cannot identify how much a company is reinvesting for future growth, we cannot identify cash flows. The second problem is that estimating expected future growth becomes more difficult if the reinvestment rate cannot be measured.

# The Dark Side of Valuation

The factors that characterize financial services firms—assets that are marked to market, earnings that are after provisions for future losses, and the difficulty we face in defining debt and reinvestment—all have an effect on how these firms are valued. This section considers some common pitfalls in valuing financial services firms.

# Debt

For much of this book, we have adopted the standard practice of forecasting cash flows after taxes and reinvestment, but before debt payments, and discounting these cash flows back at a composite cost of capital. Adopting this practice with financial services firms can have disastrous consequences for several reasons, but one of the biggest is in the computation of the cost of capital. As we noted in the preceding section, defining debt in a bank or insurance company is very difficult. If we decide to treat all short-term and long-term borrowing as debt, the debt ratios we arrive at for banks will be stratospheric. After all, even deposits at bank branches meet many of the criteria for debt. If we combine these high debt ratios with the low costs of debt, we will end up with costs of capital that are unrealistically small— $4\%$  or lower for many banks.

If we decide to go with a narrower definition of debt, we have to decide what to include in debt and what to exclude, with all its subjective components. Thus, we can decide to include only long-term debt in the cost-of-capital computation and end up with more reasonable-looking numbers, but this choice has no logical rationale.

# Cash Flow Substitutes

In the preceding section, we noted that our inability to identify and separate capital expenditures and working capital investments in financial services firms makes it difficult, if not impossible, to estimate cash flows with any degree of precision. Some analysts

plow on using either implausible variants on cash flows or the conventional definition of cash flow, in spite of the limitations.

- Earnings as cash flows: Some analysts value banks by discounting their earnings back to the present. They argue that banks have little or no net capital expenditure needs and that working capital needs—inventory, accounts receivable—are nonexistent. The problem, though, is that they couple the discounting of earnings with a positive (or even high) expected growth rate in these earnings. This is clearly not feasible. To see why, consider a bank that pays out  $100\%$  of its earnings as dividends. If this firm issues no new equity, its book equity stays frozen at current levels forever. If this bank continues to grow its loan portfolio, it will eventually end up with capital ratios that are lower than the regulatory minimum. That is why reinvestment has to include investments in regulatory capital, acquisitions, and other such investments that banks need to make to continue growing. That is also why even mature banks with low growth rates cannot afford to pay out  $100\%$  of their earnings as dividends.
- Pseudo cash flow: If analysts stick with the conventional definition of cash flows as net of reinvestment and use the capital expenditure and working capital number that they compute for banks, they can generate measures of cash flows that are even more skewed than earnings. First, the net capital expenditures at a financial services firm, at least as defined by conventional accounting statements, will be a very small or negative number. Second, defining working capital as the difference between noncash current assets and nondebt current liabilities can yield strange numbers in any given year.

In effect, analysts who claim to use cash flows to value banks are using numbers that are not good measures of cash flows, and they end up with values that reflect them.

# Go with the Flow: Dividends

Many analysts accept the reality that estimating cash flows for financial services firms is not feasible and fall back on the only observable cash flow—dividends. While this makes sense, these analysts are implicitly assuming that the dividends that are paid out by a bank or insurance company are sustainable and reasonable. However, that is not always true. We know that some banks pay out less in dividends than they can and use the excess to pad their capital ratios, whereas other banks pay dividends that are far too high and then try to compensate by issuing new shares. If we value the former using actual dividends paid, we will undervalue them, because we will build in the current practice of paying too little into their cash flows in perpetuity. If we value the latter using actual dividends paid, we will overvalue them.

The focus on current dividends can also create problems when valuing financial services firms that have growth potential. If these firms hold back on paying larger dividends, given their needs to fund growth, the dividends paid will be lower than those paid by

more mature firms. In some cases, there might be no dividends. If we use these dividends as our basis for valuation, and do not adjust the dividend payout as growth becomes lower, we will significantly undervalue firms. In the special case of firms that do not pay dividends, we will arrive at the result of a zero value for equity.

# Dividends and Growth: Wells Fargo in early 2009

Wells Fargo paid out dividends per share of \(1.30 in 2008, reflecting growth of about \(4\%\) a year from 2001 to 2008. If we allow for a cost of equity for banks of approximately \(9\%\) and assume that dividends will continue to grow at \(4\%\) a year forever, we can derive the value of equity per share from a stable growth dividend discount model:

$$
\begin{array}{l} \text {V a l u e o f E q u i t y p e r S h a r e} = \frac {\text {E x p e c t e d D i v i d e n d s p e r S h a r e} _ {\text {N e x t Y e a r}}}{(\text {C o s t o f E q u i t y - S t a b l e G r o w t h R a t e})} \\ = \frac {1 . 3 0 (1 . 0 4)}{(. 0 9 -. 0 4)} = \$ 2 7. 0 4 \\ \end{array}
$$

Because the stock was trading at \(15.75 a share at the time of this analysis, this indicates a significantly undervalued stock. However, there are reasons to be skeptical about the valuation:

The earnings per share dropped from $4.47 in 2007 to $1.71 in 2008, with the expectation that it would drop further to \$1.34 a share in 2009. In effect, we are assuming that the dividends will be higher than earnings in 2009.  

- The growth in dividends between 2001 and 2008 reflected the fact that Wells Fargo was going through a boom period, with net income increasing from  \$3.4 billion in 2001 to\$ 8.1 billion in 2007. In 2008, net income dropped to \$2.8 billion, reflecting deteriorating business conditions. It is likely that Wells Fargo will have to cut dividends to reflect the deterioration of earnings.

Using the current dividends per share and historical growth in dividends in these circumstances will yield too high a value of equity per share.

# Trusting Book Value

There are two reasons why marking assets to market value has been an accepted practice in financial services companies for years. The first is that many of the assets are financial assets that are traded, and getting market value is relatively straightforward; these assets have lesser need for estimation and subjective judgment. The second reason is that financial services firms are less likely to hold assets to maturity; banks often securitize their loan portfolios and sell them to investors. Consequently, the market prices of these securities are more relevant when analyzing firms.

Because assets reflect current market value, rather than original cost, it can be argued that analysts should be in a much better position to value financial services firms than the rest of the market. While this might be true, some costs are created in the process as well:

- Book value equals market value: Assets might be marked to market, but that does remove the need to assess their value independently. Analysts who equate book value to market value because of marking to market not only abandon their responsibility for estimating value but also can make significant errors for two reasons. First, even if there is an active market from which market prices are extracted, markets can make mistakes, and these mistakes will then be embedded in the book value. For instance, the book values of mortgage-backed securities at banks at the start of 2008 reflected the market prices of these securities at the time. Only when the market prices collapsed did we realize that the book values of financial services firms overstated their true values. Second, in many cases, assets are marked to market based not on an observable market price but on models used by the appraiser. In fact, the firm that holds the securities often assesses their value for accounting purposes. Not surprisingly, there is a tendency to overstate values, and a lag occurs in recognizing changes in those values.
- Measuring investment quality: While we can take issue with the fact that the book value of assets at many companies reflects what was originally invested in them, rather than current value, the conventional accounting approach has a benefit. One of the key determinants of a company's value is the quality of its investments, and the most widely used measures of investment quality are accounting returns—returns on equity and capital. By looking at earnings relative to original investment, we get an estimate of how much return that original investment is making. Thus, a firm that invested  \$800 in an asset three years ago and is generating\$ 200 in after-tax earnings currently is earning a 25% return on its investment. By marking assets to market, we lose this important piece of information. In fact, if assets are truly marked to market, the return on equity on every asset should be equal to the cost of equity. Nothing distinguishes firms making good investments from those making bad investments.

# Regulation and Risk

When investing in financial services firms, we accept the fact that we know far less about their assets than we would like to know, because they are regulated. In effect, we assume that the regulatory authorities will keep banks and insurance companies in check and ensure that they do not overreach in their risk taking. As with marking to market, this trust can expose us to significant dangers in investing. When analysts compare the price earnings ratios of banks, for instance, and do not control for the risk of the loan portfolios of these banks, they assume that all banks are equally risky. Not surprisingly, riskier banks look cheaper in this comparison.

The problem gets worse when you compare financial services firms that are covered by different regulatory regimes. A relative valuation of banks that operate in different countries is flawed if it does not control for the regulatory differences and the resulting risk differences across these countries. Even within the same market, like the U.S., investment banks, insurance companies, and commercial banks face different regulatory rules, some stricter than others. We have to consider these differences when valuing and analyzing these firms.

# The Light Side of Valuation

Rather than follow the pathway of taking last year's dividends as cash flows, assuming that all banks are equally risky and that growth is costless, we need to consider the rules of consistency in valuation that we introduced in prior chapters in both discounted cash flow and relative valuation.

# Discounted Cash Flow Models

In a discounted cash flow model, we consider the value of an asset to be the present value of the expected cash flows generated by that asset. In this section, we will first argue that financial services firms should be valued on an equity basis, rather than on a firm basis. We also argue that dividends, for better or worse, are often the only tangible cash flow that we can observe or estimate. Consequently, our focus will be on variants of the dividend discount model and how they can best be used to value banks and insurance companies.

# Equity Versus Firm Valuation

Equity Valuation

Early in this book, we noted the distinction between valuing a firm and valuing the equity in the firm. We value firms by discounting expected after-tax cash flows prior to debt payments at the weighted average cost of capital. We value equity by discounting cash flows to equity investors at the cost of equity. Estimating cash flows prior to debt payments at a weighted average cost of capital is problematic when debt and debt payments cannot be easily identified. As we discussed earlier, this is the case with financial services firms. Equity can be valued directly, however, by discounting cash flows to equity at the cost of equity. Consequently, we would argue for the latter approach for financial services firms. Even with equity valuation, we have a secondary problem. To value the equity in a firm, we normally estimate the free cash flow to equity. In Chapter 2, "Intrinsic Valuation," we defined the free cash flow to equity:

Free Cash Flow to Equity = Net Income - Net Capital Expenditures  

- Change in Noncash Working Capital  
-(Debt Repaid-New Debt Issued)

If we cannot estimate net capital expenditures or noncash working capital, we clearly cannot estimate the free cash flow to equity. Because this is the case with financial services firms, we have three choices. The first is to use dividends as cash flows to equity and assume that firms over time pay out their free cash flows to equity as dividends. Because dividends are observable, we therefore do not have to confront the question of how much firms reinvest. The second choice is to adapt the free cash flow to equity measure to allow for the types of reinvestment that financial services firms make. For instance, given that banks operate under a regulatory capital ratio constraint, it can be argued that these firms have to increase regulatory capital in order to make more loans in the future. The third choice is to keep the focus on excess returns, rather than on earnings, dividends, and growth rates, and to value these excess returns.

# Dividend Discount Models

In the basic dividend discount model, the value of a stock is the present value of the expected dividends on that stock. While many analysts view this model as old-fashioned, it retains a strong following among analysts who value financial services companies because of the difficulties we face in estimating cash flows. This section begins by laying out the basic model. Then it considers ways in which we can streamline its usage when valuing financial services companies.

The Standard Model If we start with the assumption that equity in a publicly traded firm has an infinite life, we arrive at the most general version of the dividend discount model:

$$
\text {V a l u e p e r S h a r e o f E q u i t y} = \sum_ {t = 1} ^ {t = \infty} \frac {D P S _ {t}}{(1 + k _ {e}) ^ {t}}
$$

where

$\mathrm{DPS}_{\mathrm{t}} =$  Expected dividend per share in period t

$$
k _ {e} = C o s t o f e q u i t y
$$

In the special case where the expected growth rate in dividends is constant forever, this model collapses into the Gordon growth model:

$$
\text {V a l u e p e r S h a r e o f E q u i t y i n S t a b l e G r o w t h} = \frac {D P S _ {1}}{\left(k _ {e} - g\right)}
$$

In this equation,  $g$  is the expected growth rate in perpetuity, and  $\mathrm{DPS}_1$  is the expected dividends per share next year. In the more general case, dividends grow at a rate that is not expected to be sustainable or constant forever during a period (called the extraordinary growth period). In this case, we can still assume that the growth rate will be constant

forever at some point in the future. This allows us to then estimate a stock's value, in the dividend discount model, as the sum of the present values of the dividends over the extraordinary growth period and the present value of the terminal price, which itself is estimated using the Gordon growth model:

$$
\text {E x t r a o r d i n a r y G r o w t h} = \sum_ {t = 1} ^ {t = n} \frac {\mathrm {D P S} _ {t}}{(1 + k _ {e , h g}) ^ {t}} + \frac {\mathrm {D P S} _ {n + 1}}{(k _ {e , s t} - g _ {n}) (1 + k _ {e , h g}) ^ {n}}
$$

The extraordinary growth is expected to last n years,  $\mathbf{g}_{\mathrm{n}}$  is the expected growth rate after n years, and  $\mathbf{k}_{\mathrm{e}}$  is the cost of equity (hg is high growth period and st is stable growth period).

While the dividend discount model is intuitive and has deep roots in equity valuation, dangers exist in using the model blindly. As we noted in the section on the dark side, many analysts start with the bank's current dividends as a base. Then they apply a growth rate to these earnings, based on either history or analyst forecasts, and compute a present value. For the model to yield a reasonable value, the assumptions have to be internally consistent, with the expected growth rate numbers jelling with the dividend forecasts and risk measures.

A Consistent Dividend Discount Model Looking at the inputs into the dividend discount model, three sets of inputs determine the value of equity. The first is the cost of equity that we use to discount cash flows, with the possibility that the cost might vary across time, at least for some firms. The second input is the proportion of the earnings that we assume will be paid out in dividends. This is the dividend payout ratio. Higher payout ratios will translate into more dividends for any given level of earnings. The third input is the expected growth rate in dividends over time, which will be a function of the earnings growth rate and the accompanying payout ratio. In addition to estimating each set of inputs well, we also need to ensure that the inputs are consistent with each other.

RISK AND COST OF EQUITY In keeping with how we have estimated the cost of equity for firms so far in this book, the cost of equity for a financial services firm has to reflect the portion of the risk in the equity that cannot be diversified away by the marginal investor in the stock. This risk is estimated using a beta (in the capital asset pricing model) or betas (in a multifactor or arbitrage pricing model). You should keep in mind three estimation notes when estimating the cost of equity for a financial services firm:

- Use bottom-up betas: In our earlier discussions of betas, we argued against the use of regression betas because of the noise in the estimates (standard errors) and the possibility that the firm has changed over the period of the regression. We will continue to hold to that proposition when valuing financial services firms. In fact, the large numbers of publicly traded firms in this domain should make estimating bottom-up betas much easier.
- Do not adjust for financial leverage: When estimating betas for nonfinancial services firms, we emphasized the importance of unlevering betas (whether they be historical or sector averages) and then releveraging them using a firm's current debt-to-equity ratio. With financial services firms, we would skip this step for two reasons. First, financial services firms tend to be much more homogeneous in terms of capital structure. They tend to have similar financial leverage primarily due to regulations. Second, and this is a point made earlier, debt is difficult to measure for financial services firms. In practical terms, this means that we will use the average levered beta for comparable firms as the bottom-up beta for the firm being analyzed.
- Adjust for regulatory and business risk: If we use sector betas and do not adjust for financial leverage, we are in effect using the same beta for every company in the sector. As we noted earlier, there can be significant regulatory differences across markets, and even within a market, across different classes of financial services firms. To reflect this, we would define the sector narrowly. Thus, we would look at the average beta across large money center banks when valuing a large money center bank and across small regional banks when valuing one of these. We would also argue that financial services firms that expand into riskier businesses—securitization, trading, and investment banking—should have different (and higher) betas for these segments, and that the beta for the company should be a weighted average. Table 14.2 summarizes the betas for different groups of financial services companies, categorized by region, in January 2017.

Table 14.2 Betas for Financial Services Businesses  

<table><tr><td>Category</td><td>U.S.</td><td>Europe</td><td>Emerging Markets</td><td>Global</td></tr><tr><td>Bank (Money Center)</td><td>0.86</td><td>1.12</td><td>0.64</td><td>0.88</td></tr><tr><td>Bank (Regional)</td><td>0.47</td><td>0.61</td><td>0.61</td><td>0.57</td></tr><tr><td>Brokerage and Investment Banking</td><td>1.08</td><td>0.63</td><td>0.87</td><td>0.91</td></tr><tr><td>Financial Svcs. (Non-Bank and Insurance)</td><td>0.65</td><td>0.94</td><td>0.69</td><td>0.74</td></tr><tr><td>Insurance (General)</td><td>0.90</td><td>1.12</td><td>0.57</td><td>0.71</td></tr><tr><td>Insurance (Life)</td><td>1.03</td><td>1.63</td><td>0.77</td><td>1.02</td></tr><tr><td>Insurance (Prop./Cas.)</td><td>0.83</td><td>0.84</td><td>0.45</td><td>0.61</td></tr><tr><td>Investments and Asset Management</td><td>0.90</td><td>0.79</td><td>0.75</td><td>0.81</td></tr></table>

- Consider the relationship between risk and growth: Throughout this book, we have emphasized the importance of modifying a company's risk profile to reflect changes that we are assuming to its growth rate. As growth companies mature,

betas should move toward 1. We see no need to abandon that principle when valuing banks. We would expect high-growth banks to have higher betas (and costs of equity) than mature banks. In valuing such banks, we would therefore start with higher costs of equity, but as we reduce growth, we would also reduce betas and costs of equity.

A final point needs to be emphasized. The average betas that we get across financial services firms reflect the regulatory constraints that they operated under during that period. When significant changes to regulation are expected, we should consider the potential impact on betas across the board. For instance, the crisis of 2008 caused banking regulations to be tightened globally and contributed to pushing up the betas for all banks, at least for the first few years after the crisis.

GROWTH AND PAYOUT An inherent trade-off exists between dividends and growth. When a company pays a larger segment of its earnings as dividends, it is reinvesting less and thus should grow more slowly. With financial services firms, this link is reinforced by the fact that the activities of these firms are subject to regulatory capital constraints. Banks and insurance companies have to maintain equity (in book value terms) at specified percentages of their activities. When a company is paying out more in dividends, it is retaining less in earnings; the book value of equity increases by the retained earnings. In recent years, in keeping with a trend that is visible in other sectors as well, financial services firms have increased stock buybacks as a way of returning cash to stockholders. In this context, focusing purely on dividends paid can provide a misleading picture of the cash returned to stockholders. An obvious solution is to add the stock buybacks each year to the dividends paid and to compute the composite payout ratio. If we do so, however, we should look at the number over several years, because stock buybacks vary widely across time. A buyback of billions in one year might be followed by three years of relatively meager buybacks, for instance.

To ensure that assumptions about dividends, earnings, and growth are internally consistent, we have to bring in a measure of how well the retained equity is reinvested; the return on equity is the variable that ties together payout ratios and expected growth. Chapter 2 introduced a fundamental growth measure for earnings:

Expected Growth in Earnings = Return on Equity × (1 - Dividend Payout Ratio)

For instance, a bank that pays out  $60\%$  of its earnings as dividends and earns a return on equity of  $12\%$  has an expected growth rate in earnings of  $4.8\%$ . When we introduced the fundamental equation in Chapter 2, we also noted that firms can deliver growth rates that deviate from this expectation if the return on equity is changing:

$$
\text {E x p e c t e d G r o w t h} _ {\mathrm {E P S}} = (1 - \text {P a y o u t R a t i o}) (\mathrm {R O E} _ {\mathrm {t + 1}}) + \frac {\mathrm {R O E} _ {\mathrm {t + 1}} - \mathrm {R O E} _ {\mathrm {t}}}{\mathrm {R O E} _ {\mathrm {t}}}
$$

Thus, if the bank can improve the return on equity on existing assets from  $10\%$  to  $12\%$ , the efficiency growth rate in that year will be  $20\%$ . However, efficiency growth is temporary; all firms ultimately revert to the fundamental growth relationship.

The linkage between return on equity, growth, and dividends is therefore critical in determining value in a financial services firm. At the risk of hyperbole, the key number in valuing a bank is not dividends, earnings, or growth rate, but what we believe it will earn as return on equity in the long term. That number, in conjunction with payout ratios, will help determine the value of growth. Alternatively, the return on equity, together with expected growth rates, can be used to estimate dividends. This linkage is particularly useful when we get to stable growth, where growth rates can be very different from the initial growth rates. To preserve consistency in the valuation, the payout ratio that we use in stable growth, to estimate the terminal value, should be as follows:

$$
\text {P a y o u t R a t i o n i n S t a b l e G r o w t h} = 1 - \frac {\mathrm {g}}{\mathrm {R O E} _ {\text {S t a b l e G r o w t h}}}
$$

The risk of the firm should also adjust to reflect the stable-growth assumption. In particular, if betas are used to estimate the cost of equity, they should converge toward one in stable growth.

# A Consistent Dividend Discount Model: Wells Fargo Bank in February 2009

The preceding sidebar examined the effects of leaving dividends unchanged and using historical dividend growth to value Wells Fargo in early 2009. It concluded that we would overvalue the firm for two reasons. First, we are overstating the expected dividends in the future by basing them on the dividends paid in 2008. Second, the growth rate we were assuming for the future (4%) might be inconsistent with the payout ratio we assumed in the valuation. Based on the 2008 numbers, where dividends per share were  \$1.30 per share and earnings per share were\$ 1.71, the payout ratio is 76%. To deliver a growth rate of 4% a year forever, the return on equity that Wells Fargo would have to deliver on its new investment is 16.67%:

$$
\text{Implied Return on Equity} = \frac {g}{(1 - \text{Payout Ratio})} = \frac {4 \%}{(1 - .76)} = 16.67 \%
$$

If we believe that Wells Fargo's future return on equity will be lower than  $16.67\%$ , we have to either lower growth or reduce dividends.

Rather than base the valuation on the 2008 dividend and earnings numbers, which are unstable and reflect the market crisis, we chose a different path. We started with the book

value of equity of \(47,628 million that Wells Fargo reported at the end of 2008. We then estimated what earnings and dividends would be at a normalized return on equity. For instance, consider the most optimistic scenario, in which the return on equity at Wells Fargo quickly reverts to \(18.91\%\), the average ROE from 2001 to 2007. The normalized net income for next year would be as follows:

Normalized Net Income  $=$  Book Value of Equity  $\times$  Normalized ROE

$$
= \$ 47,628 \text {m i l l o n} \times . 1 8 9 1 = \$ 9,0 0 6 \text {m i l l o n}
$$

Assuming that these earnings would grow at a stable rate of  $3\%$  a year in perpetuity, we next estimate the dividend payout ratio:

$$
\text{Dividend Payout Ratio} = 1 - \frac{\mathrm{g}}{\mathrm{ROE}} = 1 - \frac{.03}{.1891} = .8414\text{or} 84.14\%
$$

If we assume that the cost of equity of  $9\%$  that we estimated earlier is a reasonable value, we can estimate the value of equity in Wells Fargo:

$$
\begin{array}{l} \text {V a l u e o f E q u i t y} = \frac {\text {E x p e c t e d D i v i d e n d s N e x t Y e a r}}{(\text {C o s t o f E q u i t y - S t a b l e G r o w t h R a t e})} \\ = \frac {\text {N e t I n c o m e} \times \text {P a y o u t R a t i o}}{(\text {C o s t o f E q u i t y} - \text {S t a b l e G r o w t h R a t e})} \\ = \frac {9 , 0 0 6 \times (0 . 8 4 1 4)}{(. 0 9 - . 0 3)} = \$ 1 2 6, 2 9 3 m i l l o n \\ \end{array}
$$

Under the most optimistic scenario, Wells Fargo is significantly undervalued in February 2009 at its existing market value for equity of \(66,640 million.

The two inputs that determine the value of equity at Wells Fargo are the return on equity and the cost of equity. As we lower the return on equity, the normalized net income decreases, and so does the payout ratio (for the given growth rate of  $3\%$ ). The cost of equity can also change if we perceive that banks have become riskier. Following the same procedure that we did for the most optimistic scenario, we can value equity at Wells Fargo under two other scenarios. The first is an intermediate scenario in which the normalized return on equity drops to  $15\%$  and the cost of equity increases to  $10\%$ . The second is a pessimistic scenario in which the return on equity reverts to  $12\%$  and the cost of equity increases to  $11\%$ . Table 14.3 summarizes our findings under each scenario.

Table 14.3 Value of Wells Fargo Equity: February 2009  

<table><tr><td></td><td>Net
Income</td><td>ROE</td><td>Payout
Ratio</td><td>Cost of
Equity</td><td>Value of
Equity</td></tr><tr><td>Quick bounce back to normalcy</td><td>$9,006.45</td><td>18.91%</td><td>84.14%</td><td>9%</td><td>$126,293.58</td></tr><tr><td>Slow bounce back to normalcy</td><td>$7,144.20</td><td>15.00%</td><td>80.00%</td><td>10%</td><td>$81,648.00</td></tr><tr><td>Long-term change to lower profitability and higher risk</td><td>$5,715.36</td><td>12.00%</td><td>75.00%</td><td>11%</td><td>$53,581.50</td></tr><tr><td>Market cap (2/2009)</td><td></td><td></td><td></td><td></td><td>\$66,643.00</td></tr></table>

While Wells Fargo continues to look undervalued, if we assume a slow bounce back to normalcy, it does not look cheap if we assume that banks will be riskier and less profitable from this point on.

# Cash Flow to Equity Models

At the beginning of this discussion, we noted the difficulty in estimating cash flows when net capital expenditures and noncash working capital cannot be easily identified. It is possible, however, to estimate cash flows to equity for financial services firms if we define reinvestment differently. The cash flow to equity is the cash flow left over for equity investors after debt payments have been made and reinvestment needs met. With financial services firms, the reinvestment generally does not take the form of plant, equipment, or other fixed assets. Instead, the investment is in regulatory capital. This is the capital as defined by the regulatory authorities, which, in turn, determines the limits on future growth:

$$
\mathrm {F C F E} _ {\text {F i n a n c i a l S e r v i c e s F i r m}} = \text {N e t I n c o m e - R e i n v e s t m e n t i n R e g u l a t o r y C a p i t a l}
$$

To estimate the reinvestment in regulatory capital, we have to define two parameters. The first is the book equity capital ratio that will determine the investment. This is heavily influenced by regulatory requirements, but it also reflects the choices a bank makes. Conservative banks might choose to maintain a higher capital ratio than required by regulatory authorities, whereas aggressive banks might push toward the regulatory constraints. For instance, a bank that has a  $5\%$  equity capital ratio can make \$100 in loans for every \$5 in equity capital. When this bank reports net income of \$15 million and pays out only \$5 million, it is increasing its equity capital by \$10 million. This, in turn, allows the bank to make \$200 million in additional loans and presumably increase its growth rate in future periods. The second parameter is the profitability of the activity, defined in terms

of net income. Staying with the bank example, we have to specify how much net income the bank will generate with the additional loans. A  $0.5\%$  profitability ratio translates into additional net income of \$1 million on the additional loans.

# ECFE Model for a Bank: Deutsche Bank in October 2016

Deutsche Bank is a German institution, a global bank of long standing and a reputation for prudence. That is perhaps why its swift slide from grace that occurred from 2008 to 2016 captured so many investors and onlookers by surprise. The extent of the drop off in Deutsche's operating results are shown in Figure 14.2:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/eefd8e70-1ac3-459a-8571-be221937dd60/46961f3fc77826854a71e7d2088e91caf45e42fa10112b6dbe238e8c88b332b5.jpg)  
Figure 14.2 Deutsche Bank's Net Income and Return on Equity

The losses, which cumulated to almost \$16 billion in 2014 and 2015, led to a management change at the bank and to a drop off in regulatory capital in 2015, as is evidenced in Figure 14.3:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/eefd8e70-1ac3-459a-8571-be221937dd60/3adbb4ee9c665d5799cac7345047fe86065feb5c5ed84b38ce331b1020a945e4.jpg)  
Figure 14.3 Deutsche Bank's Tier 1 Capital and Ratio

Even with the drop off, Deutsche's tier 1 regulatory capital ratio of  $14.65\%$  was much higher than it was in years prior. It was a decision by the Department of Justice to fine it an extra \$14 billion that triggered a panic in markets, with Deutsche Bank's stock price dropping to \$13.33, amid rumors of a possible default or state takeover.

To value Deutsche in October 2016, the dividend discount model would have provided little guidance because the bank had suspended paying dividends and its regulatory capital shortfall suggested that it would need to issue new equity to keep itself going. To estimate the free cash flows to equity, we first estimated the expected net income at the company, assuming the return on equity in the bank would recover from current (negative) levels to  $5.85\%$  by year 5 (the  $25^{\text{th}}$  percentile for all banks) and to  $9.44\%$  in year 10.[2] The latter value is our estimate of the cost of equity that year and we are assuming that in steady

2. In valuing Deutsche Bank, we drew on the cross-sectional distributions of costs of equity, return on equity, and regulatory capital ratios across global banks. The following table summarizes those values:  

<table><tr><td colspan="2">25th percentile</td><td>Median</td><td>75th percentile</td></tr><tr><td>ROE</td><td>5.85%</td><td>9.91%</td><td>14.84%</td></tr><tr><td>Cost of Equity</td><td>7.76%</td><td>9.44%</td><td>10.20%</td></tr><tr><td>Tier 1 Ratio</td><td>10.71%</td><td>12.96%</td><td>15.67%</td></tr></table>

state, Deutsche will earn its cost of equity. Table 14.4 summarizes our estimates of return on equity and net income, by year:

Table 14.4 Deutsche Bank-Expected ROE(%) and Net Income Millions of US $  

<table><tr><td>Year</td><td>Common Equity</td><td>ROE</td><td>Expected Net Income</td></tr><tr><td>Base</td><td>$64,609</td><td>-13.70%</td><td>$(8,851)</td></tr><tr><td>1</td><td>$71,161</td><td>-7.18%</td><td>$(5,111)</td></tr><tr><td>2</td><td>$72,754</td><td>-2.84%</td><td>$(2,065)</td></tr><tr><td>3</td><td>$74,372</td><td>0.06%</td><td>$43</td></tr><tr><td>4</td><td>$76,017</td><td>1.99%</td><td>$1,512</td></tr><tr><td>5</td><td>$77,688</td><td>5.85%</td><td>$4,545</td></tr><tr><td>6</td><td>$79,386</td><td>6.57%</td><td>$5,214</td></tr><tr><td>7</td><td>$81,111</td><td>7.29%</td><td>$5,910</td></tr><tr><td>8</td><td>$82,864</td><td>8.00%</td><td>$6,632</td></tr><tr><td>9</td><td>$84,644</td><td>8.72%</td><td>$7,383</td></tr><tr><td>10</td><td>$86,453</td><td>9.44%</td><td>$8,161</td></tr><tr><td>Terminal Year</td><td>$87,326</td><td>9.44%</td><td>$8,244</td></tr></table>

We followed up by assuming that Deutsche would grow its risk adjusted assets only  $2\%$  a year, and improve its tier 1 capital ratio to  $15.67\%$ , set equal to the  $75^{\text{th}}$  percentile of all banks. Table 14.5 encapsulates the resulting investments needed in regulatory capital each year, which become the equity reinvestment needed, by year:

Table 14.5 Deutsche Bank—Regulatory Capital and Reinvestment (In millions of US $)  

<table><tr><td>Year</td><td>Net
Income</td><td>Risk-Adjusted
Assets</td><td>Tier 1 Capital/
Risk-Adjusted
Assets</td><td>Tier 1
Capital</td><td>Change in
Tier 1 Capital</td></tr><tr><td>Base</td><td>$(8,851)</td><td>$445,570</td><td>12.41%</td><td>$55,282</td><td></td></tr><tr><td>1</td><td>$(5,111)</td><td>$450,026</td><td>13.74%</td><td>$61,834</td><td>$6,552</td></tr><tr><td>2</td><td>$(2,065)</td><td>$454,526</td><td>13.95%</td><td>$63,427</td><td>$1,593</td></tr><tr><td>3</td><td>$43</td><td>$459,071</td><td>14.17%</td><td>$65,045</td><td>$1,619</td></tr><tr><td>4</td><td>$1,512</td><td>$463,662</td><td>14.38%</td><td>$66,690</td><td>$1,645</td></tr><tr><td>5</td><td>$4,545</td><td>$468,299</td><td>14.60%</td><td>$68,361</td><td>$1,671</td></tr><tr><td>6</td><td>$5,214</td><td>$472,982</td><td>14.81%</td><td>$70,059</td><td>$1,698</td></tr><tr><td>7</td><td>$5,910</td><td>$477,711</td><td>15.03%</td><td>$71,784</td><td>\$1,725</td></tr></table>

<table><tr><td>Year</td><td>Net Income</td><td>Risk-Adjusted Assets</td><td>Tier 1 Capital/ Risk-Adjusted Assets</td><td>Tier 1 Capital</td><td>Change in Tier 1 Capital</td></tr><tr><td>8</td><td>$6,632</td><td>$482,488</td><td>15.24%</td><td>$73,537</td><td>$1,753</td></tr><tr><td>9</td><td>$7,383</td><td>$487,313</td><td>15.46%</td><td>$75,317</td><td>$1,780</td></tr><tr><td>10</td><td>$8,161</td><td>$492,186</td><td>15.67%</td><td>$77,126</td><td>$1,809</td></tr><tr><td>Terminal Year</td><td>$8,244</td><td>$497,108</td><td>15.67%</td><td>$77,897</td><td>$771</td></tr></table>

Finally, to estimate the cost of equity, rather than use betas and risk premiums, we draw on the cross-sectional distribution of costs of equity across all banks and assume that Deutsche's starting cost of equity is  $10.20\%$  (the  $75^{\text{th}}$  percentile, due to its capital shortfall) and that it will drop to  $9.44\%$  by year 10 (as the bank builds up its capital). Table 14.6 lists the cost of equity, by year, as well as the cumulated cost of equity to be used for discounting cash flows:

Table 14.6 Deutsche Bank—Cost and Cumulated Cost of Equity  

<table><tr><td>Year</td><td>Cost of equity</td><td>Cumulative Cost of Equity</td></tr><tr><td>1</td><td>10.20%</td><td>1.1020</td></tr><tr><td>2</td><td>10.20%</td><td>1.2144</td></tr><tr><td>3</td><td>10.20%</td><td>1.3383</td></tr><tr><td>4</td><td>10.20%</td><td>1.4748</td></tr><tr><td>5</td><td>10.20%</td><td>1.6252</td></tr><tr><td>6</td><td>10.05%</td><td>1.7885</td></tr><tr><td>7</td><td>9.90%</td><td>1.9655</td></tr><tr><td>8</td><td>9.74%</td><td>2.1570</td></tr><tr><td>9</td><td>9.59%</td><td>2.3639</td></tr><tr><td>10</td><td>9.44%</td><td>2.5871</td></tr></table>

Bringing together the net income from Table 14.4, the equity reinvestment from Table 14.5, and the cost of equity from Table 14.6, we estimate the value of equity at Deutsche in Table 14.7:

Table 14.7 Deutsche Bank—FCFE and Value of Equity In millions of US $  

<table><tr><td>Year</td><td>Net Income</td><td>Reinvestment in Regulatory Capital</td><td>FCFE</td><td>Terminal Value</td><td>Cumulated Cost of Equity</td><td>PV</td></tr><tr><td>1</td><td>$(5,111)</td><td>$6,552</td><td>$(11,663)</td><td></td><td>1.1020</td><td>$(10,583.40)</td></tr><tr><td>2</td><td>$(2,065)</td><td>$1,593</td><td>$(3,658)</td><td></td><td>1.2144</td><td>$(3,012.36)</td></tr><tr><td>3</td><td>$43</td><td>$1,619</td><td>$(1,576)</td><td></td><td>1.3383</td><td>$(1,177.54)</td></tr><tr><td>4</td><td>$1,512</td><td>$1,645</td><td>$(133)</td><td></td><td>1.4748</td><td>$(90.34)</td></tr><tr><td>5</td><td>$4,545</td><td>$1,671</td><td>$2,874</td><td></td><td>1.6252</td><td>$1,768.16</td></tr><tr><td>6</td><td>$5,214</td><td>$1,698</td><td>$3,516</td><td></td><td>1.7885</td><td>$1,965.99</td></tr><tr><td>7</td><td>$5,910</td><td>$1,725</td><td>$4,185</td><td></td><td>1.9655</td><td>$2,129.10</td></tr><tr><td>8</td><td>$6,632</td><td>$1,753</td><td>$4,880</td><td></td><td>2.1570</td><td>$2,262.34</td></tr><tr><td>9</td><td>$7,383</td><td>$1,780</td><td>$5,602</td><td></td><td>2.3639</td><td>$2,369.91</td></tr><tr><td>10</td><td>$8,161</td><td>$1,809</td><td>$6,352</td><td>$87,317</td><td>2.5871</td><td>\$36,206.88</td></tr></table>

The terminal value is computed using the expected FCFE of \(7472 million in year 11, a cost (and return) of equity of \(9.44\%\), and a growth rate of \(1\%\) in perpetuity:

Expected Net Income in year 11 = \$8,161 (1.01) = \$ 8,243 million

Expected Retention ratio in perpetuity  $= \frac{\mathrm{g}}{\mathrm{ROE}} = 1\% / 9.44\% = 10.59\%$

Terminal Value of equity = $8,243 (1 - .1059)/(.0944 - .01) = $87,317 million

Note that the value per share already incorporates the expected dilution from having to issue new shares in years 1 through 4. Because there is substantial danger lurking in the near years for Deutsche, we will allow for a  $10\%$  likelihood that another capital shock could render the equity worthless and estimate a value per share in Table 14.8:

Table 14.8 Deutsche Bank—Failure Risk and Value per Share  

<table><tr><td>Value of equity today =</td><td>\$31,838.74</td></tr><tr><td>Number of shares outstanding =</td><td>1386.00</td></tr><tr><td>DCF value per share =</td><td>\$22.97</td></tr><tr><td>Probability of equity wipeout =</td><td>10.00%</td></tr><tr><td>Adjusted value per share =</td><td>\$20.67</td></tr><tr><td>Stock price on October 3, 2016 =</td><td>\$13.33</td></tr></table>

Note that even with the expected losses, dilution, and the risk of failure built in, the stock is valued at  \$20.67, well above the\$ 13.33 per share that it was trading at. At least, based on our estimates, the stock would have been a buy in October 2016.

# Excess Return Models

The third approach to valuing financial services firms is to use an excess return model. In such a model, the value of a firm can be written as the sum of capital currently invested in the firm and the present value of excess returns that the firm expects to make in the future. In this section, we consider how this model can be applied to valuing equity in a financial services firm.

Basic Model Given the difficulty associated with defining total capital in a financial services firm, it makes far more sense to focus on just equity when using an excess return model to value a financial services firm. The value of equity in a firm can be written as the sum of the equity invested in a firm's current investments and the expected excess returns to equity investors from these and future investments:

Value of Equity = Equity Capital Invested Currently + Present Value of Expected Excess Returns to Equity Investors

The most interesting aspect of this model is its focus on excess returns. A firm that invests its equity and earns just the fair-market rate of return on these investments should see the market value of its equity converge on the equity capital currently invested in it. A firm that earns a below-market return on its equity investments will see its equity market value dip below the equity capital currently invested.

The other point that has to be emphasized is that this model considers expected future investments as well. Thus, it is up to the analyst using the model to forecast not only where the financial services firm will direct its future investments but also the returns it will make on those investments.

Inputs to the Model Two inputs are needed to value equity in the excess return model. The first is a measure of equity capital currently invested in the firm. The second and more difficult input is the expected excess returns to equity investors in future periods.

The equity capital currently invested in a firm is usually measured as the book value of equity in the firm. While the book value of equity is an accounting measure and is affected by accounting decisions, it should be a much more reliable measure of equity invested in a financial services firm than in a manufacturing firm for two reasons. The first is that the assets of a financial services firm are often financial assets that are marked up to market. The assets of manufacturing firms are real assets, and deviations between book and market value are usually much larger. The second reason is that depreciation, which can be a big factor in determining book value for manufacturing firms, is often negligible at financial services firms. Notwithstanding this, the book value of equity can be affected by stock buybacks and extraordinary or one-time charges. The book value of equity for financial services firms that have one or both might understate the equity capital invested in the firm.

The excess returns, defined in equity terms, can be stated in terms of the return on equity and the cost of equity:

Excess Equity Return = (Return on Equity - Cost of Equity) (Equity Capital Invested)

Again, we are assuming that the return on equity is a good measure of the economic return earned on equity investments. When analyzing a financial services firm, we can obtain the return on equity from the current and past periods, but the return on equity that is required is the expected future return. This requires an analysis of the firm's strengths and weaknesses as well as the competition faced by the firm.

# Excess Return Valuation: Goldman Sachs in February 2009

In February 2009, Goldman Sachs, perhaps the best-regarded investment bank in the world at the time, was trading at a market capitalization for equity of  \$48.7 billion, well below its book value of equity of\$ 60.6 billion. A significant factor underlying the stock price collapse was the firm's decline in profitability, with  \$2,322 million in net income in 2008, well below the\$ 11,599 million it reported as profits in the previous year. Goldman paid out \$850 million in dividends during 2008.

To value Goldman Sachs, we begin with the current cost of equity. Using the average beta of 1.50 reported by investment banks in 2008, in conjunction with a Treasury bond rate of  $3\%$  and an equity risk premium of  $6\%$ , yields a cost of equity of  $12\%$  for the firm:

$$
\mathrm{Cost~of~Equity} = 3\% +1.5(6\%) = 12\%
$$

Multiplying this cost of equity by the book value of equity yields a dollar cost of equity for Goldman Sachs. While the return on equity at Goldman Sachs ranged from  $16\%$  to  $20\%$  between 2001 and 2007, the expected return on equity, looking forward, will be much lower. For the next five years, we will assume that the return on equity at Goldman will be  $9\%$ , well below not only the historical average return on equity but also its own cost of equity. The resulting negative excess returns and present value are summarized in Table 14.9.

Table 14.9 Excess Returns: High-Growth Period In millions of US $  

<table><tr><td></td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td></tr><tr><td>Net income</td><td>$5,941.08</td><td>$6,384.60</td><td>$6,861.23</td><td>$7,373.44</td><td>\$7,923.89</td></tr><tr><td>- Equity cost
(see below)</td><td>$7,921.44</td><td>$8,512.80</td><td>$9,148.30</td><td>$9,831.25</td><td>\$10,565.18</td></tr><tr><td>Excess equity return</td><td>-$1,980.36</td><td>-$2,128.20</td><td>-$2,287.08</td><td>-$2,457.81</td><td>-\$2,641.30</td></tr><tr><td>Cumulated cost of
equity</td><td>1.12000</td><td>1.25440</td><td>1.40493</td><td>1.57352</td><td>1.76234</td></tr></table>

<table><tr><td></td><td>Year 1</td><td>Year 2</td><td>Year 3</td><td>Year 4</td><td>Year 5</td></tr><tr><td>Present value</td><td>-＄1,768.18</td><td>-＄1,696.59</td><td>-＄1,627.90</td><td>-＄1,561.98</td><td>-＄1,498.74</td></tr><tr><td>Beginning BV of equity</td><td>＄66,012.00</td><td>＄70,939.98</td><td>＄76,235.86</td><td>＄81,927.08</td><td>＄88,043.17</td></tr><tr><td>Cost of equity</td><td>12.00%</td><td>12.00%</td><td>12.00%</td><td>12.00%</td><td>12.00%</td></tr><tr><td>Cost of equity (\$)</td><td>＄7,921.44</td><td>＄8,512.80</td><td>＄9,148.30</td><td>＄9,831.25</td><td>＄10,565.18</td></tr><tr><td>Return on equity</td><td>9.00%</td><td>9.00%</td><td>9.00%</td><td>9.00%</td><td>9.00%</td></tr><tr><td>Net income</td><td>＄5,941.08</td><td>＄6,384.60</td><td>＄6,861.23</td><td>＄7,373.44</td><td>＄7,923.89</td></tr><tr><td>Dividend payout ratio</td><td>17.05%</td><td>17.05%</td><td>17.05%</td><td>17.05%</td><td>17.05%</td></tr><tr><td>Dividends paid</td><td>＄1,013.10</td><td>＄1,088.73</td><td>＄1,170.00</td><td>＄1,257.35</td><td>＄1,351.21</td></tr><tr><td>Retained earnings</td><td>＄4,927.98</td><td>＄5,295.87</td><td>＄5,691.22</td><td>＄6,116.09</td><td>＄6,572.67</td></tr></table>

The net income each year is computed by multiplying the return on equity each year by the beginning book value of equity. The book value of equity each year is augmented by the portion of earnings that is not paid out as dividends. The dividend payout ratio is based on current dividends and normalized earnings.

To put closure on this valuation, we have to make assumptions about excess returns after year 5. We assumed that the net income would grow  $3\%$  a year beyond year 5 and that the beta for the stock would decline to 1.20. For Goldman Sachs, we will assume that the return on equity after year 5 will be  $10.20\%$ , set equal to the cost of equity in stable growth:

$$
\text{Cost of Equity in Stable Growth Period} = 3 \% +1.2(6 \%) = 10.20 \%
$$

$$
\begin{array}{l} \text {N e t I n c o m e} _ {6} = \text {B o o k V a l u e o f E q u i t y a t S t a r t o f Y e a r 6} \times \text {S t a b l e R O E} \\ = (\$ 88,043 \times 1.03) \times . 1 0 2 = \$ 9,2 4 9. 8 2 m i l l o n \\ \end{array}
$$

Note that the net income in year 6 is significantly higher than the net income in year 5, as the return on equity bounces back from  $9\%$  to  $10.20\%$ . The terminal value of excess returns to equity investors can then be computed:

$$
\begin{array}{l} \text {T e r m a l V a l u e o f E x c e s s R e t u r n s} = \frac {\text {N e t I n c o m e} _ {6} - (\text {C o s t o f E q u i t y} _ {6}) (\text {B V o f E q u i t y} _ {6})}{\text {C o s t o f E q u i t y} - \text {E x p e c t e d G r o w t h R a t e}} \\ = \frac {9 , 2 4 9 . 8 2 - (9 0 , 6 8 4 . 4 7) (0 . 1 0 2)}{0 . 1 0 2 - 0 . 0 3} \\ = \$ 0 \\ \end{array}
$$

Because the firm earns its cost of equity after year 5, no value is gained or lost after that year. The value of equity can then be computed as the sum of the three components—the

book value of equity invested today, the present value (PV) of excess equity returns over the next five years, and the present value of the terminal value of equity.

Book Value of Equity Invested Currently = \$66,012

PV of Equity Excess Return in the Next 5 Years = -\\(8,154

PV of Terminal Value of Excess Returns  $= 0$

Value of Equity = \$57,859

Number of Shares  $= 461.874$

Value per Share  $= \$  125.29$

At the time of this valuation in February 2009, Goldman Sachs was trading at \(96.45 a share.

# Asset-Based Valuation

In asset-based valuation, we value the existing assets of a financial services firm, net out debt and other outstanding claims, and report the difference as the value of equity. For example, with a bank, this would require valuing the bank's loan portfolio (which would comprise its assets) and subtracting outstanding debt to estimate the value of equity. For an insurance company, you would value the policies that the company has in force and subtract the expected claims resulting from these policies and other debt outstanding to estimate the value of the equity in the firm.

How would you value a bank's loan portfolio or an insurance company's policies? One approach would be to estimate the price at which the loan portfolio can be sold to another financial services firm, but the better approach is to value it based on the expected cash flows. Consider, for instance, a bank with a  \$1 billion loan portfolio with a weighted average maturity of eight years, on which it earns interest income of\$ 70 million. Furthermore, assume that the default risk on the loans is such that the fair market interest rate on the loans would be 6.50%. This fair market rate can be estimated either by getting the loan portfolio rated by a ratings agency or by measuring the potential for default risk in the portfolio. The value of the loans can be estimated:

$$
\begin{array}{l} \text{Value of Loans} = \$ 70 \text{ million (PV of Annuity, 8 years, 6.5\%) + }\frac{\$ 1,000 \text{ million}}{1.065^8} \\ = \$ 1,030 \text {m i l l o n} \\ \end{array}
$$

This loan portfolio has a fair market value that exceeds its book value because the bank is charging an interest rate that exceeds the market rate. The reverse would be true if the bank charged an interest rate that is lower than the market rate. To value the equity in this book, you would subtract the deposits, debt, and other claims on the bank.

This approach has merit if you are valuing a mature bank or an insurance company with little or no growth potential, but it has two significant limitations. First, it does not assign any value to expected future growth and the excess returns that flow from that growth. For instance, a bank that consistently lends at rates higher than justified by default risk should be able to harvest value from future loans as well. Second, this approach is difficult to apply when a financial services firm enters multiple businesses. A firm like Citigroup that operates in multiple businesses would be difficult to value because the assets in each business—insurance, commercial banking, investment banking, portfolio management—would need to be valued separately, with different income streams and different discount rates.

# Relative Valuation

In the chapters on relative valuation, we examined a series of multiples that are used to value firms, ranging from earnings multiples to book value multiples to revenue multiples. In this section, we consider how relative valuation can be used for financial services firms.

# Choices in Multiples

Firm value multiples such as value to EBITDA or value to EBIT cannot be easily adapted to value financial services firms, because neither value nor operating income can be easily estimated for banks or insurance companies. In keeping with our emphasis on equity valuation for financial services firms, the multiples that we will work with to analyze financial services firms are equity multiples. The three most widely used equity multiples are price earnings ratios, price-to-book value ratios, and price-to-sales ratios. Because sales or revenues cannot really be measured for financial services firms, price-to-sales ratios cannot be estimated or used for these firms. We will look, in this section, at the use of price earnings ratios and price-to-book value ratios to value financial services firms.

# Price Earnings Ratios

The price earnings ratio for a bank or insurance company is measured much the same as it is for any other firm:

$$
\text {P r i c e E a r n i n g s R a t i o} = \frac {\text {P r i c e p e r S h a r e}}{\text {E a r n i n g s p e r S h a r e}}
$$

In Chapter 4, "Relative Valuation/Pricing," we noted that the price earnings ratio is a function of three variables—the expected growth rate in earnings, the payout ratio, and the cost of equity. As with other firms, the price earnings ratio should be higher for financial services firms with higher expected growth rates in earnings, higher payout ratios, and lower costs of equity.

An issue that is specific to financial services firms is the use of provisions for expected expenses. For instance, banks routinely set aside provisions for bad loans. These provisions reduce the reported income and affect the reported price earnings ratio. Consequently, banks that are more conservative about categorizing bad loans will report lower earnings and have higher price earnings ratios. Banks that are less conservative will report higher earnings and lower price earnings ratios.

Another consideration in the use of earnings multiples is the diversification of financial services firms into multiple businesses. The multiple that an investor is willing to pay for a dollar in earnings from commercial lending should be very different from the multiple that the same investor is willing to pay for a dollar in earnings from trading. When a firm is in multiple businesses with different risk, growth, and return characteristics, finding truly comparable firms and comparing the multiples of earnings paid across firms is very difficult. In such a case, breaking down the firm's earnings by business and assessing the value of each business separately makes far more sense.

Comparing PE Ratios: Insurance Companies in February 2009  
Table 14.10 compares the trailing price earnings ratios of life insurance companies in February 2009.  
Table 14.10 PE Ratios and Expected Growth Rates: Insurance Companies  

<table><tr><td>Company Name</td><td>PE Ratio</td><td>Expected Growth in EPS</td><td>Beta</td></tr><tr><td>Torchmark Corp. (NYSE:TMK)</td><td>4.11</td><td>3.60%</td><td>1.87</td></tr><tr><td>Odyssey Re Holdings Corp.
(NYSE:ORH)</td><td>5.15</td><td>4.00%</td><td>1.53</td></tr><tr><td>Manulife Financial Corporation
(TSX:MFC)</td><td>5.4</td><td>5.20%</td><td>2.41</td></tr><tr><td>MetLife, Inc. (NYSE:MET)</td><td>5.45</td><td>4.50%</td><td>1.96</td></tr><tr><td>Assurant, Inc. (NYSE:AIZ)</td><td>5.56</td><td>5.00%</td><td>2.16</td></tr><tr><td>Principal Financial Group, Inc.
(NYSE:PFG)</td><td>5.85</td><td>5.50%</td><td>2.15</td></tr><tr><td>AFLAC, Inc. (NYSE:AFL)</td><td>6.01</td><td>6.40%</td><td>2.4</td></tr><tr><td>Unum Group (NYSE:UNM)</td><td>6.33</td><td>6.00%</td><td>1.47</td></tr><tr><td>Aon Corporation (NYSE:AOC)</td><td>7.04</td><td>6.20%</td><td>1.7</td></tr><tr><td>The Travelers Companies, Inc.
(NYSE:TRV)</td><td>7.58</td><td>6.00%</td><td>1.87</td></tr></table>

<table><tr><td>Company Name</td><td>PE Ratio</td><td>Expected Growth in EPS</td><td>Beta</td></tr><tr><td>HCC Insurance Holdings, Inc. (NYSE:HCC)</td><td>7.75</td><td>7.00%</td><td>2.05</td></tr><tr><td>The Chubb Corporation (NYSE:CB)</td><td>7.94</td><td>10.50%</td><td>1.67</td></tr><tr><td>American Financial Group, Inc. (NYSE:AFG)</td><td>9.41</td><td>11.00%</td><td>1.31</td></tr><tr><td>ProAssurance Corporation (NYSE:PRA)</td><td>10.74</td><td>10.30%</td><td>0.89</td></tr><tr><td>Reinsurance Group of America, Inc. (NYSE:RGA)</td><td>11.71</td><td>11.50%</td><td>1.24</td></tr><tr><td>W.R. Berkeley Corporation (NYSE:WRB)</td><td>12.3</td><td>12.50%</td><td>1.98</td></tr><tr><td>Sun Life Financial, Inc. (TSX:SLF)</td><td>12.8</td><td>10.00%</td><td>1.16</td></tr><tr><td>RLI Corp. (NYSE:RLI)</td><td>13.48</td><td>13.00%</td><td>1.62</td></tr><tr><td>Brown &amp; Brown, Inc. (NYSE:BRO)</td><td>14.36</td><td>13.70%</td><td>1.44</td></tr><tr><td>Arthur J. Gallagher &amp; Co. (NYSE:AJG)</td><td>20.21</td><td>12.67%</td><td>1.21</td></tr><tr><td>Transatlantic Holdings Inc. (NYSE:TRH)</td><td>20.36</td><td>15.00%</td><td>1.22</td></tr><tr><td>Lincoln National Corp. (NYSE:LNC)</td><td>30.5</td><td>10.20%</td><td>0.86</td></tr><tr><td>The Hanover Insurance Group, Inc. (NYSE:THG)</td><td>35.52</td><td>15.00%</td><td>0.98</td></tr></table>

The PE ratios vary widely; they range from 4.11 for Torchmark Corp. to 35.52 for the Hanover Insurance Group. We also report analysts' consensus estimates of the growth rate in earnings per share over the next five years and the equity beta for each of these firms, as a proxy for risk. Some of the variation in PE ratios can be explained by differences in the expected growth rate—higher-growth firms tend to have higher PE ratios—and some of it is due to differences in risk—riskier firms have lower PE ratios. Regressing PE ratios against the expected growth rate and the standard deviation yields the following:

$$
\mathrm{PE Ratio} = \frac{12.41 + 109.95}{(1.61)}\text{Expected Growth Rate} -6.60\text{Beta R}^{2} = 59\%
$$

The regression confirms the intuition that higher-growth and lower-risk firms have higher PE ratios than other firms. Table 14.11 uses this regression to estimate predicted PE ratios for the companies in the table and reports on whether the firms are underor overvalued.

Table 14.11 Predicted and Actual PE Ratios: Insurance Companies in February 2009  

<table><tr><td>Company Name</td><td>PE Ratio</td><td>Predicted PE</td><td>% Underor Overvalued</td></tr><tr><td>American Financial Group, Inc. (NYSE:AFG)</td><td>9.41</td><td>15.86</td><td>-40.66%</td></tr><tr><td>ProAssurance Corporation (NYSE:PRA)</td><td>10.74</td><td>17.86</td><td>-39.87%</td></tr><tr><td>The Chubb Corporation (NYSE:CB)</td><td>7.94</td><td>12.93</td><td>-38.61%</td></tr><tr><td>Unum Group (NYSE:UNM)</td><td>6.33</td><td>9.31</td><td>-31.97%</td></tr><tr><td>Reinsurance Group of America, Inc. (NYSE:RGA)</td><td>11.71</td><td>16.87</td><td>-30.59%</td></tr><tr><td>Odyssey Re Holdings Corp. (NYSE:ORH)</td><td>5.15</td><td>6.71</td><td>-23.25%</td></tr><tr><td>Brown &amp; Brown, Inc. (NYSE:BRO)</td><td>14.36</td><td>17.97</td><td>-20.09%</td></tr><tr><td>Sun Life Financial, Inc. (TSX:SLF)</td><td>12.8</td><td>15.75</td><td>-18.72%</td></tr><tr><td>RLI Corp. (NYSE:RLI)</td><td>13.48</td><td>16.01</td><td>-15.81%</td></tr><tr><td>Aon Corporation (NYSE:AOC)</td><td>7.04</td><td>8.01</td><td>-12.08%</td></tr><tr><td>W.R. Berkeley Corporation (NYSE:WRB)</td><td>12.3</td><td>13.09</td><td>-6.00%</td></tr><tr><td>Transatlantic Holdings, Inc. (NYSE:TRH)</td><td>20.36</td><td>20.85</td><td>-2.35%</td></tr><tr><td>Torchmark Corp. (NYSE:TMK)</td><td>4.11</td><td>4.03</td><td>2.08%</td></tr><tr><td>Arthur J. Gallagher &amp; Co. (NYSE:AJG)</td><td>20.21</td><td>18.35</td><td>10.11%</td></tr><tr><td>The Travelers Companies, Inc. (NYSE:TRV)</td><td>7.58</td><td>6.67</td><td>13.73%</td></tr><tr><td>HCC Insurance Holdings, Inc. (NYSE:HCC)</td><td>7.75</td><td>6.58</td><td>17.84%</td></tr><tr><td>MetLife, Inc. (NYSE:MET)</td><td>5.45</td><td>4.42</td><td>23.25%</td></tr><tr><td>Principal Financial Group, Inc. (NYSE:PFG)</td><td>5.85</td><td>4.27</td><td>37.09%</td></tr><tr><td>Assurant, Inc. (NYSE:AIZ)</td><td>5.56</td><td>3.65</td><td>52.27%</td></tr><tr><td>The Hanover Insurance Group, Inc. (NYSE:THG)</td><td>35.52</td><td>22.43</td><td>58.33%</td></tr><tr><td>AFLAC, Inc. (NYSE:AFL)</td><td>6.01</td><td>3.61</td><td>66.63%</td></tr><tr><td>Lincoln National Corp. (NYSE:LNC)</td><td>30.5</td><td>17.95</td><td>69.93%</td></tr><tr><td>Manulife Financial Corporation (TSX:MFC)</td><td>5.4</td><td>2.22</td><td>143.09%</td></tr></table>

Based on this regression, Manulife Financial looks significantly overvalued, whereas American Financial and ProAssurance look significantly undervalued.

# Price-to-Book Value Ratios

The price to book value ratio for a financial services firm is the ratio of the price per share to the book value of equity per share:

$$
\text {P r i c e} = \frac {\text {P r i c e p e r S h a r e}}{\text {B o o k V a l u e o f E q u i t y p e r S h a r e}}
$$

Other things remaining equal, higher growth rates in earnings, higher payout ratios, lower costs of equity, and higher returns on equity should all result in higher price-to-book ratios. Of these four variables, the return on equity has the biggest impact on the price-to-book ratio, leading us to identify it as the ratio's companion variable.

If anything, the strength of the relationship between price-to-book ratios and returns on equity should be stronger for financial services firms than for other firms. The book value of equity is much more likely to track the market value of equity invested in existing assets. Similarly, the return on equity is less likely to be affected by accounting decisions. The strength of the relationship between price-to-book ratios and returns on equity is shown in Figure 14.4. It plots the two on a scatter plot for U.S. commercial banks with market capitalization exceeding \$1 billion in February 2009.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/eefd8e70-1ac3-459a-8571-be221937dd60/e52bc960d23fb9319f924d6ed76510a4204d5867e06f3a1c450c804e4a4665e8.jpg)  
*Regression line, with 90% confidence range on estimate.  
Figure 14.4 Price-to-Book Ratios and Returns on Equity: Banks

Note that these numbers were extracted in the midst of the biggest crisis in banking since the Great Depression, and in an environment where most analysts have concluded that investors are in crisis mode and that equity values in banks reflect the panic and irrationality. It is therefore astounding how close the link is between price-to-book ratios for banks in February 2009 and the returns on equity, based on trailing 12-month earnings. Banks such as Valley National (VLY) and WestAmerica Bancorp (WABC) that have high price-to-book value ratios tend to have high returns on equity. Banks such as Banco Popular (BPOP) and Wachovia (WB) that have low returns on equity trade at low price-to-book value ratios. The correlation between price-to-book ratios and returns on equity is in excess of 0.70. Put another way, there seems to be a fundamental order to the chaos that has undercut the banking sector.

While emphasizing the relationship between price-to-book ratios and returns on equity, we should not ignore the other fundamentals. For instance, banks vary in terms of risk, and we would expect for any given return on equity that riskier banks should have lower price-to-book value ratios. Similarly, banks with much greater potential for growth should have much higher price-to-book ratios, for any given level of the other fundamentals. In February 2009, one factor that should make a difference is the exposure that different banks have to toxic securities—mortgage-backed bonds and collateralized debt obligations (CDOs)—on their balance sheets.

# Price-to-Book Value Ratios: Small Commercial Banks in 2009

Figure 14.4 noted the strong relationship between price-to-book ratios and returns on equity at large banks. Does the same relationship apply to smaller banks? To answer this question, Table 14.12 looks at banks with market capitalizations between  \$500 million and\$ 1 billion.

Table 14.12 Price-to-Book Ratios and Returns on Equity: Small Commercial Banks  

<table><tr><td>Company Name</td><td>P/BV Ratio</td><td>Expected Growth in EPS: Next Five Years</td><td>Standard Deviation in Stock Prices</td><td>ROE</td></tr><tr><td>East West Bancorp</td><td>0.76</td><td>-2.50%</td><td>57.75%</td><td>13.76%</td></tr><tr><td>Webster Financial</td><td>0.37</td><td>2.00%</td><td>31.06%</td><td>6.44%</td></tr><tr><td>NBT Bancorp</td><td>2.13</td><td>5.00%</td><td>32.72%</td><td>12.66%</td></tr><tr><td>PacWest Bancorp</td><td>0.60</td><td>5.00%</td><td>40.09%</td><td>7.93%</td></tr><tr><td>WesBanco</td><td>1.08</td><td>5.00%</td><td>41.77%</td><td>7.70%</td></tr><tr><td>Chemical Financial</td><td>1.12</td><td>5.00%</td><td>33.98%</td><td>7.67%</td></tr><tr><td>CVB Financial</td><td>2.05</td><td>6.33%</td><td>33.02%</td><td>14.26%</td></tr><tr><td>First Commonwealth</td><td>1.52</td><td>6.50%</td><td>30.81%</td><td>8.14%</td></tr></table>

<table><tr><td>Company Name</td><td>P/BV Ratio</td><td>Expected Growth in EPS: Next Five Years</td><td>Standard Deviation in Stock Prices</td><td>ROE</td></tr><tr><td>Pacific Cap. Bancorp</td><td>1.13</td><td>6.50%</td><td>42.12%</td><td>13.26%</td></tr><tr><td>Community Bank Sys.</td><td>1.43</td><td>7.30%</td><td>24.10%</td><td>8.96%</td></tr><tr><td>First Busey Corp.</td><td>1.17</td><td>8.00%</td><td>30.34%</td><td>5.95%</td></tr><tr><td>Tompkins Financial Corp.</td><td>2.75</td><td>8.00%</td><td>27.89%</td><td>13.39%</td></tr><tr><td>S &amp; T Bancorp</td><td>2.70</td><td>9.00%</td><td>23.69%</td><td>16.62%</td></tr><tr><td>Umpqua Holdings Corporation</td><td>0.68</td><td>10.00%</td><td>30.42%</td><td>5.11%</td></tr><tr><td>MB Financial, Inc.</td><td>1.07</td><td>12.00%</td><td>25.50%</td><td>7.19%</td></tr><tr><td>PrivateBancorp, Inc.</td><td>2.17</td><td>15.60%</td><td>41.03%</td><td>2.57%</td></tr><tr><td>Pinnacle Financial Partners, Inc.</td><td>1.34</td><td>16.00%</td><td>33.69%</td><td>4.93%</td></tr><tr><td>UCBH Holdings, Inc.</td><td>0.61</td><td>24.33%</td><td>77.25%</td><td>11.35%</td></tr></table>

While the relationship between price-to-book ratios and returns on equity is weaker for this sample than it is for commercial banks, higher price-to-book value ratios tend to go with higher returns on equity. Because the assumption about all banks being equally risky was put to the test during this period, we used the standard deviation in stock price as a proxy for this risk. Regressing the price-to-book ratios against the return on equity and standard deviation yields the following:3

$$
\text{Price to Book Ratio} = \frac {1.527}{(2.94)} + \frac {8.63}{(1.93)} (\text {Return on Equity}) - \frac {2.63}{(2.36)} (\sigma_ {\text {Stock Price}}) R ^ {2} = 31 \%
$$

Using this regression yields predicted price-to-book ratios for any firm in the sample. For instance, the predicted price-to-book ratio for Tompkins Financial, which at 2.75 times book value of equity looks expensive, would be as follows:

Predicted P/BV for Tompkins Financial  $= 1.527 + 8.63$  (0.1338) - 2.63 (0.2789) = 1.95 Based on how other small banks are priced, Tompkins looks overvalued by about  $30\%$ .

# Conclusion

The basic principles of valuation apply just as much for financial services firms as they do for other firms. However, a few aspects of financial services firms can affect how they are valued. The first is that debt, for a financial services firm, is difficult to define and measure, making it difficult to estimate firm value or costs of capital. Consequently, valuing the equity directly in a financial services firm by discounting cash flows to equity at the cost of equity is far easier. The second aspect is that capital expenditures and working capital, which are required inputs to estimating cash flows, are often not easily estimated at financial services firms. In fact, much of the reinvestment that occurs at these firms is categorized under operating expenses. To estimate cash flows to equity, therefore, we either have to use dividends (and assume that what is not paid out as dividend is the reinvestment) or modify our definition of reinvestment.

Even if we choose to use multiples, we run into many of the same issues. The difficulties associated with defining debt make equity multiples such as price earnings or price-to-book value ratios better suited for comparing financial services firms than value multiples. In making these comparisons, we have to control for differences in fundamentals—risk, growth, cash flows, loan quality—that affect value.

Finally, regulatory considerations and constraints overlay financial firm valuations. In some cases, regulatory restrictions on competition allow financial services firms to earn excess returns and increase value. In other cases, the same regulatory authorities might restrict the potential excess returns that a firm might be able to make by preventing the firm from entering a business.
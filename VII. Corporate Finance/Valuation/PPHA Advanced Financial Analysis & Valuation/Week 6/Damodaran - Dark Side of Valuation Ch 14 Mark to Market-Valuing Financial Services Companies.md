---
title: "Damodaran - Dark Side of Valuation Ch 14 Mark to Market-Valuing Financial Services Companies"
parent_directory: "VII. Corporate Finance/Valuation/PPHA Advanced Financial Analysis & Valuation/Week 6"
formatted: 2025-12-20 11:45:00 AM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - financial services valuation
  - mark to market accounting
  - banking valuation
secondary_tags:
  - discounted cash flow
  - relative valuation
  - regulatory constraints
  - excess return models
cssclasses: academia
---

## Mark to Market: Valuing Financial Services Companies

Banks, insurance companies, and other financial services firms pose special challenges for an analyst attempting to value them—for three reasons. The first is that the nature of their businesses makes defining both debt and reinvestment difficult, which makes the estimation of cash flows also much more difficult. The second reason is that these firms tend to be heavily regulated, and changes in regulatory requirements can have a significant effect on value. The third reason is that the accounting rules that govern bank accounting have historically been very different from the accounting rules for other firms. Assets are marked to market more frequently for financial services firms.

This chapter begins by considering what makes financial services firms unique and ways of dealing with the differences. We move on to look at how the dark side of valuation manifests itself in the valuation of financial services firms in the form of an unhealthy dependence on book values, earnings, and dividends. We then look at how best to adapt discounted cash flow models to value financial services firms by considering three alternatives—a traditional dividend discount model, a cash flow to equity discount model, and an excess return model. With each, we look at examples from the financial services arena. We move on to look at how relative valuation works with financial services firms and what multiples might work best with these firms.

## Financial Services Firms: The Big Picture

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

## Characteristics of Financial Services Firms

### The Regulatory Overlay

### Differences in Accounting Rules

### Debt and Equity

### Estimating Cash Flows Is Difficult

## The Dark Side of Valuation

The factors that characterize financial services firms—assets that are marked to market, earnings that are after provisions for future losses, and the difficulty we face in defining debt and reinvestment—all have an effect on how these firms are valued. This section considers some common pitfalls in valuing financial services firms.

### Debt

### Cash Flow Substitutes

### Go with the Flow: Dividends

#### Dividends and Growth: Wells Fargo in early 2009

### Trusting Book Value

### Regulation and Risk

## The Light Side of Valuation

Rather than follow the pathway of taking last year's dividends as cash flows, assuming that all banks are equally risky and that growth is costless, we need to consider the rules of consistency in valuation that we introduced in prior chapters in both discounted cash flow and relative valuation.

### Discounted Cash Flow Models

#### Equity Versus Firm Valuation

#### Dividend Discount Models

##### A Consistent Dividend Discount Model: Wells Fargo Bank in February 2009

#### Cash Flow to Equity Models

##### ECFE Model for a Bank: Deutsche Bank in October 2016

#### Excess Return Models

##### Excess Return Valuation: Goldman Sachs in February 2009

#### Asset-Based Valuation

### Relative Valuation

In the chapters on relative valuation, we examined a series of multiples that are used to value firms, ranging from earnings multiples to book value multiples to revenue multiples. In this section, we consider how relative valuation can be used for financial services firms.

#### Choices in Multiples

#### Price Earnings Ratios

#### Price-to-Book Value Ratios

##### Price-to-Book Value Ratios: Small Commercial Banks in 2009

## Conclusion

The basic principles of valuation apply just as much for financial services firms as they do for other firms. However, a few aspects of financial services firms can affect how they are valued. The first is that debt, for a financial services firm, is difficult to define and measure, making it difficult to estimate firm value or costs of capital. Consequently, valuing the equity directly in a financial services firm by discounting cash flows to equity at the cost of equity is far easier. The second aspect is that capital expenditures and working capital, which are required inputs to estimating cash flows, are often not easily estimated at financial services firms. In fact, much of the reinvestment that occurs at these firms is categorized under operating expenses. To estimate cash flows to equity, therefore, we either have to use dividends (and assume that what is not paid out as dividend is the reinvestment) or modify our definition of reinvestment.

Even if we choose to use multiples, we run into many of the same issues. The difficulties associated with defining debt make equity multiples such as price earnings or price-to-book value ratios better suited for comparing financial services firms than value multiples. In making these comparisons, we have to control for differences in fundamentals—risk, growth, cash flows, loan quality—that affect value.

Finally, regulatory considerations and constraints overlay financial firm valuations. In some cases, regulatory restrictions on competition allow financial services firms to earn excess returns and increase value. In other cases, the same regulatory authorities might restrict the potential excess returns that a firm might be able to make by preventing the firm from entering a business.
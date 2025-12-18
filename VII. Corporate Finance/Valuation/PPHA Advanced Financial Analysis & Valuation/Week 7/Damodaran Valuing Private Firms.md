---
parent_directory:
title: What makes private firms different?
tags:
aliases:
parent_folder: Week 7
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: What makes private firms different?
---

So far in this book, we have concentrated on the valuation of publicly traded firms. In this chapter, we turn our attention to the thousands of firms that are private businesses. These businesses range in size from small family businesses to some that rival large publicly traded firms. The principles of valuation remain the same, but there are estimation problems that are unique to private businesses. The information available for valuation tends to be much more limited, both in terms of history and depth, since private firms are often not governed by the strict accounting and reporting standards of publicly traded firms. In addition, the standard techniques for estimating risk parameters (such as beta and standard deviation) require market prices for equity, an input that is lacking for private firms.

When valuing private firms, the motive for the valuation matters and can affect the value. In particular, the value that is attached to a publicly traded firm may be different when it is being valued for sale to an individual, for sale to a publicly traded firm or for an initial public offering. In particular, whether there should be a discount on value for illiquidity and non-diversifiable risk or a premium for control will depend upon the motive for the valuation. We will consider each of these components over the course of this chapter.

# What makes private firms different?

There are a number of common characteristics shared by private firms with publicly traded firms, but there are four significant differences that can affect both how we estimate inputs for valuation.

Publicly traded firms are governed by a set of accounting standards that allow us to identify what each item in a financial statement includes but to also compare earnings across firms. Private firms, especially if they are not incorporated, operate

under far looser standards and there can be wide differences between firms on how items are accounted.

- There is far less information about private firms, both in terms of the number of years of data that is typically available and, more importantly, the amount of information available each year. For instance, publicly traded firms have to break down operations by business segments in their filings with the SEC, and provide information on revenues and earnings by segment. Private firms do not have to, and usually do not, provide this information.  
- A constantly updated price for equity and historical data on this price is a very useful piece of information that we can obtain easily for publicly traded firms but not for private firms. In addition, the absence of a ready market for private firm equity also means that liquidating an equity position in a private business can be far more difficult (and expensive) than liquidating a position in a publicly traded firm.  
- In publicly traded firms, the stockholders tend to hire managers to run the firm, and most stockholders hold equity in several firms in their portfolios. The owner of a private firm tends to be intimately involved with management, and often has all of his or her wealth invested in the firm. The absence of separation between the owner and management can result in an intermingling of personal expenses with business expenses, and a failure to differentiate between management salary and dividends (or their equivalent).

Each of the differences cited above can have change value by affecting discount rates, cash flows and expected growth rates.

To examine the issues that arise in the context of valuing private firms, we will consider two firms. The first firm is the New York Yankees, a fabled baseball franchise and the second is a private software firm called InfoSoft. We will value the Yankees for sale in a private transaction, whereas we will value InfoSoft for sale in an initial public offering.

# Estimating Valuation Inputs at Private Firms

The value of a private firm is the present value of expected cash flows discounted back at an appropriate discount rate. Since this construct is not different from the one we used to value publicly traded firms, the differences between private firms and publicly traded firms have to show up in how we estimate these inputs to the discounted cash flow model.

# Discount Rates

If we choose to value equity, we discount cashflows to equity at the cost of equity, whereas if we choose to value the firm, we discount cashflows at the cost of capital. While the fundamental definitions of these costs have not changed, the process of estimating them may have to be changed given the special circumstances surrounding private firms.

# Cost of Equity

In assessing the cost of equity for publicly traded firms, we looked at the risk of investments through the eyes of the marginal investors in these firms. With the added assumption that these investors were well diversified, we were able to define risk in terms of risk added on to a diversified portfolio or market risk. The beta (in the CAPM) and betas (in the multi-factor models) that measure this risk are usually estimated using historical stock prices. The absence of historical price information for private firm equity and the failure on the part of many private firm owners to diversify can create serious problems with estimating and using betas for these firms.

# Approaches to Estimating Market Betas

The standard process of estimating the beta in the capital asset pricing model involves running a regression of stock returns against market returns. Multi-factor models use other statistical techniques, but they also require historical price information. In the absence of such information, as is the case with private firms, there are three ways in which we can estimate betas:

# 1. Accounting Betas

While price information is not available for private firms, accounting earnings information is. We could regress changes in a private firm's accounting earnings against changes in earnings for an equity index (such as the S&P 500) to estimate an accounting beta

$$
E a r n i n g s _ {\text {P r i v a t e f i r m}} = a + b \quad E a r n i n g s _ {\mathrm {S} \& \mathrm {P} 5 0 0}
$$

The slope of the regression (b) is the accounting beta for the firm. Using operating earnings would yield an unlevered beta, whereas using net income would yield a levered or equity beta.

There are two significant limitations with this approach. The first is that private firms usually measure earnings only once a year, leading to regressions with few observations and limited statistical power. The second is that earnings are often smoothed out and subject to accounting judgments, leading to mismeasurement of accounting betas.

# Illustration 24.1: Estimating Accounting Betas — InfoSoft

InfoSoft, even though it is a private business, has been in existence since 1992 and has accounting earnings going back to that year. Table 24.1 summarizes the quarterly accounting earnings changes at InfoSoft and for the S&P 500 for each quarter between 1992 and 1998.

Table 24.1: Earnings for InfoSoft versus S&P 500  

<table><tr><td>Period</td><td>InfoSoft</td><td>S&amp;P 500</td><td>Period</td><td>InfoSoft</td><td>S&amp;P 500</td></tr><tr><td>1992: Q1</td><td>7.50%</td><td>-1.30%</td><td>1995: Q2</td><td>24.10%</td><td>8.50%</td></tr><tr><td>1992: Q2</td><td>8.30%</td><td>2.20%</td><td>1995: Q3</td><td>17.50%</td><td>6.00%</td></tr><tr><td>1992: Q3</td><td>8.80%</td><td>2.50%</td><td>1995: Q4</td><td>16.00%</td><td>5.00%</td></tr><tr><td>1992: Q4</td><td>7.90%</td><td>3.00%</td><td>1996: Q1</td><td>27.00%</td><td>8.10%</td></tr><tr><td>1993: Q1</td><td>14.30%</td><td>3.60%</td><td>1996: Q2</td><td>21.30%</td><td>7.00%</td></tr><tr><td>1993: Q2</td><td>16.50%</td><td>5.10%</td><td>1996: Q3</td><td>22.50%</td><td>7.20%</td></tr><tr><td>1993: Q3</td><td>17.10%</td><td>5.50%</td><td>1996: Q4</td><td>20.00%</td><td>6.00%</td></tr><tr><td>1993: Q4</td><td>13.50%</td><td>6.20%</td><td>1997: Q1</td><td>17.10%</td><td>5.80%</td></tr><tr><td>1994: Q1</td><td>11.50%</td><td>4.30%</td><td>1997: Q2</td><td>22.20%</td><td>8.00%</td></tr><tr><td>1994: Q2</td><td>12.30%</td><td>4.70%</td><td>1997: Q3</td><td>17.80%</td><td>6.10%</td></tr><tr><td>1994: Q3</td><td>13.00%</td><td>4.50%</td><td>1997: Q4</td><td>14.50%</td><td>4.50%</td></tr><tr><td>1994: Q4</td><td>11.10%</td><td>4.20%</td><td>1998: Q1</td><td>8.50%</td><td>1.30%</td></tr><tr><td>1995: Q1</td><td>18.60%</td><td>7.10%</td><td>1998: Q2</td><td>3.50%</td><td>-0.50%</td></tr></table>

a Earnings changes are over same quarter of previous year

Regressing the changes in earnings at InfoSoft against changes in profits for the S&P 500 yields the following:

InfoSoft Earnings Change  $= 0.05 + 2.15$  (S & P 500 Earnings Change)

Based upon this regression, the beta for InfoSoft is 2.15. In calculating this beta, we used net income to arrive at an equity beta. Using operating earnings for both the firm and the S&P 500 should yield the equivalent of an unlevered beta.

# 2. Fundamental Betas

There have been attempts made by researchers to relate the betas of publicly traded firms to observable variables such as earnings growth, debt ratios and variance in earnings. Beaver, Kettler, and Scholes (1970) examined the relationship between betas and seven variables - dividend payout, asset growth, leverage, liquidity, asset size, earnings variability, and the accounting beta. Rosenberg and Guy (1976) also attempted a similar analysis. The following is a regression that we ran relating the betas of NYSE and AMEX stocks in 1996 to four variables: coefficient of variation in operating income  $(\mathrm{CV}_{\mathrm{OI}})$ , book debt/equity (D/E), historical growth in earnings (g) and the book value of total assets (TA).

$$
\mathrm {Beta} = 0.6507 + 0.25 \mathrm {CV} _ {\mathrm {OI}} + 0.09 \mathrm {D} / \mathrm {E} + 0.54 \mathrm {g} - 0.000009 \mathrm {TA} \quad \mathrm {R} ^ {2} = 18 \%
$$

where

$$
\begin{array}{l} \mathrm {C V} _ {\mathrm {O I}} = \text {C o e f f i c i e n t o f V a r i a t i o n i n O p e r a t i n g I n c o m e} \\ = \text {S t a n d a r d D e v i a t i o n i n O p e r a t i n g I n c o m e / A v e r a g e O p e r a t i n g I n c o m e} \\ \end{array}
$$

We could measure each of these variables for a private firm and use these to estimate the beta for the firm. While this approach is simple, it is only as good as the underlying regression. The low  $\mathbf{R}^2$  suggests that the beta estimates that emerge from it are likely to have large standard errors.

# Illustration 24.2: Estimating a Fundamental Beta: InfoSoft

To use the crosssectional regression that we reported earlier to estimate a beta for InfoSoft, we have to estimate the values for each of the independent variables for the firm:

Variable Value

Coefficient of Variation in Operating Income 0.40

Book Debt to Equity Ratio 128.57%

Growth in earnings (previous 5 years)  $30\%$

Book Value of Total Assets \$ 9 million

Inputting these values into the regression, we obtain a predicted value for the beta:

$$
\mathrm {B e t a} = 0. 6 5 0 7 + 0. 2 5 (. 4 0) + 0. 0 9 (1. 2 8 5 7) + 0. 5 4 (. 3) - 0. 0 0 0 0 0 9 (9) = 1. 0 3
$$

This would yield an estimate of 1.03 for InfoSoft's beta. The standard error on this estimate is 0.18, resulting in a range of 0.85 to 1.21 for the beta, with  $67\%$  probability.

# 3. Bottom-up Betas

When valuing publicly traded firms, we used the unlevered betas of the businesses that the firms operated in to estimate bottom-up betas – the costs of equity were based upon these betas. We did so because of the low standard errors on these estimates (due to the averaging across large numbers of firms) and the forward looking nature of the estimates (because the business mix used to weight betas can be changed). We can estimate bottom-up betas for private firms and these betas have the same advantages that they do for publicly traded firms. Thus, the beta for a private steel firm can be estimated by looking at the average betas for publicly traded steel companies. Any differences in financial or even operating leverage can be adjusted for in the final estimate.

In making the adjustment of unlevered betas for financial leverage, we do run into a problem with private firms, since the debt to equity ratio that should be used is a market value ratio. While many analysts use the book value debt to equity ratio to substitute for the market ratio for private firms, we would suggest one of the following alternatives:

a. Assume that the private firm's market leverage will resemble the average for the industry. If this is the case, the levered beta for the private firm can be written as:

$$
\begin{array}{l} \text {p r i v a t e f i r m} = \quad \text {u n l e v e r e d} (1 + (1 - \text {t a x r a t e}) (\text {I n d u s t r y A v e r a g e D e b t / E q u i t y})) \end{array}
$$

b. Use the private firm's target debt to equity ratio (if management is willing to specify such a target) or its optimal debt ratio (if one can be estimated) to estimate the beta:

$$
\begin{array}{l} \text {p r i v a t e f i r m} = \quad \text {u n l e v e r e d} (1 + (1 - \text {t a x r a t e}) (\text {O p t i m a l D e b t / E q u i t y})) \end{array}
$$

The adjustment for operating leverage is simpler and is based upon the proportion of the private firm's costs that are fixed. If this proportion is greater than is typical in the industry, the beta used for the private firm should be higher than the average for the industry.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/c741776b-b8aa-4b5f-a6b0-fe59f2fc6237/3e5361292417534282035fa5f3d5468c3269eee7641780dd9e4c7c8a18fa8043.jpg)

spearn.xls: This dataset on the web has earnings changes, by year, for the S&P 500 going back to 1960.

# Illustration 24.3: Estimating bottom-up betas - New York Yankees and InfoSoft

Bottom-up Beta for Yankees

To estimate a bottom-up beta for the Yankees, we first had to define what constituted a comparable firm. We considered three choices:

Firms that derive a significant portion of their revenues from baseball (Traded baseball teams, baseball cards & memorabilia…)  
Firms that derive a significant portion of their revenues from professional sports  
Firms that derive a significant portion of their revenues from entertainment

Table 24.2 summarizes the number of firms that we obtained with each definition and the levered and unlevered betas for each group.

Table 24.2: New York Yankees - Comparable Firms  

<table><tr><td>Comparable firms</td><td>Number of firms</td><td>Levered Beta</td><td>Unlevered Beta</td></tr><tr><td>Baseball firms</td><td>2</td><td>0.70</td><td>0.64</td></tr><tr><td>Sports firms</td><td>22</td><td>0.98</td><td>0.90</td></tr><tr><td>Entertainment firms</td><td>91</td><td>0.87</td><td>0.79</td></tr></table>

We abandoned the estimate obtained by looking at baseball firms because of the fact that there were only two firms that had betas available for them. In choosing between the unlevered beta estimated looking at sports firms and entertainment firms, we decided to go with the former larger because entertainment companies included conglomerates such as Disney and Time Warner with holdings in multiple businesses.

With an unlevered beta estimate of 0.90 for the Yankees from table 24.2, we used a target debt to equity ratio<sup>1</sup> of  $25\%$  and a private firm tax rate of  $40\%$  to arrive at a levered beta estimate of 1.04.

$$
\text {L e v e r e d B e t a f o r Y a n k e e s} = 0. 9 0 (1 + (1 -. 4) (. 2 5)) = 1. 0 4
$$

Bottom-up Beta for InfoSoft

To estimate a beta for InfoSoft, we obtained the betas and market debt/equity ratios for publicly traded software firms. Since there are 264 software firms in the sample, with wide variations in market capitalization and growth prospects, we also look, in table 24.3, at sub-classes of these firms that might be more comparable to InfoSoft.

Table 24.3: Betas and Leverage of Publicly Traded Software Firms  

<table><tr><td>Grouping</td><td>Number of Firms</td><td>Beta</td><td>D/E Ratio</td><td>Unlevered Beta</td></tr><tr><td>All Software Firms</td><td>264</td><td>1.15</td><td>3.70%</td><td>1.13</td></tr><tr><td>Small-cap Software Firms</td><td>125</td><td>1.29</td><td>7.09%</td><td>1.24</td></tr><tr><td>Entertainment Software Firms</td><td>31</td><td>1.50</td><td>7.56%</td><td>1.43</td></tr></table>

Note that the debt/equity ratios are market value debt/equity ratios, and that the unlevered betas are similar for all three groups. Note also that the difference in the size of the firms should not affect the betas directly, but it might have an indirect effect, since smaller firms tend to have higher operating leverage. We will use an unlevered beta of 1.24 for InfoSoft, based upon the average beta of small cap software firms.

To estimate a levered beta, we have assumed that InfoSoft is close to the industry average for small-cap software firms (7.09%) in terms of financial leverage. We also use the corporate marginal tax rate of 35%, since InfoSoft is being priced to go public, to estimate a beta of 1.29 for InfoSoft.

$$
\text {B o t t o m - u p B e t a f o r F i n o S o f t} = 1. 2 4 (1 + (1 -. 3 5) (. 0 7 0 9)) = 1. 2 9
$$

# Adjusting for Non-Diversification

Betas measure the risk added by an investment to a diversified portfolio. Consequently, they are best suited for firms where the marginal investor is diversified. With private firms, the owner is often the only investor and thus can be viewed as the marginal investor. Furthermore, in most private firms, the owner tends to have much of his or her wealth invested in the private business and does not have an opportunity to diversify. Consequently, it can be argued that betas will understate the exposure to market risk in these firms.

At the limit, if the owner has all of his or her wealth invested in the private business and is completely undiversified, that owner is exposed to all risk in the firm and not just the market risk (which is what the beta measures). There is a fairly simple adjustment that can allow us to bring in this non-diversifiable risk into the beta computation. To arrive at this adjustment, assume that the standard deviation in the private firm's equity value (which measures total risk) is  $\mathrm{j}$  and that the standard deviation in the market index is  $\mathrm{m}$ . If the

correlation between the stock and the index is defined to be  $\mathrm{~\mu~}_{\mathrm{jm}}$  , the market beta can be written as:

$$
\text {M a r k e t} = _ {\mathrm {j m} \quad \mathrm {j} / \quad \mathrm {m}}
$$

To measure exposure to total risk  $(\mathbf{\mu}_{\mathrm{j}})$ , we could divide the market beta by  $\mathbf{\mu}_{\mathrm{jm}}$ . This would yield the following:

$$
\text {M a r k e t} \quad \text {b e t a /} \quad_ {\mathrm {j m}} = \quad_ {\mathrm {j}} / \quad_ {\mathrm {m}}
$$

This is a relative standard deviation measure, where the standard deviation of the private firm's equity value is scaled against the market index's standard deviation to yield what we will call a total beta.

$$
\text {T o t a l B e t a} = \text {M a r k e t b e t a} / _ {\mathrm {j m}}
$$

The total beta will be higher than the market beta, and will depend upon the correlation between the firm and the market – the lower the correlation, the higher the total beta.

You might wonder how a total beta can be estimated for a private firm, where the absence of market prices seems to rule out the calculation of either a market beta or a correlation coefficient. Note though, that we were able to estimate the market beta of the sector by looking at publicly traded firms in the business. We can obtain the correlation coefficient by looking at the same sample and use it to estimate a total beta for a private firm.

The question of whether the total beta adjustment should be made cannot be answered without examining why the valuation of the private firm is being done in the first place. If the private firm is being valued for sale, whether and how much the market beta should be adjusted will depend upon the potential buyer or buyers. If the valuation is for an initial public offering, there should be no adjustment for non-diversification, since the potential buyers are stock market investors. If the valuation is for sale to another individual or private business, the extent of the adjustment will depend upon the degree to which the buyer's portfolio is diversified; the more diversified the buyer, the higher the correlation with the market and the smaller the total beta adjustment.

# Illustration 24.4: Adjusting bottom-up beta for non-diversification

Consider the estimate of market beta that we obtained for the New York Yankees in the previous illustration. Using firms that derive the bulk of their revenues from sports as our comparable firms, we obtained an unlevered beta of 0.90 for the Yankees. The average correlation coefficient for these publicly traded firms with the markets is 0.50. (The R squared is  $25\%$ .) The total unlevered beta for the Yankees can be estimated as follows:

Total Unlevered Beta  $= 0.90 / 0.5 = 1.80$

Using the Yankee's tax rate of  $40\%$  and a debt to equity ratio of  $25\%$  yields a total levered beta of 2.07.

$$
\text {T o t a l L e v e r e d B e t a} = 1. 8 0 (1 + (1 -. 4) (. 2 5)) = 2. 0 7
$$

This total beta estimate, in a sense, takes the limiting view that the potential buyer will own only the Yankees. To the extent that the buyer has some diversification, the correlation coefficient will be adjusted upwards; if the buyer has a diversified portfolio, the correlation coefficient will approach one and the total beta will converge on the market beta.

# From Cost of Equity to Cost of Capital

To get from the cost of equity to the cost of capital, we need two additional inputs – the cost of debt, which measures the rate at which firms can borrow, and the debt ratio that determines the weights in the cost of capital computation. In this section, we consider how best to estimate each of these inputs for a private firm.

# Cost of Debt

The cost of debt represents the rate at which a firm can borrow money. To estimate it for publicly traded firms, we generally use either the yields on bonds issued by these firms or the ratings for these bonds to get default spreads. Private firms generally are not rated and do not have bonds outstanding. Consequently, we have to use one of the following alternative approaches:

- If the private firm has borrowed money recently (in the last few weeks or months), we can use the interest rate on the borrowing as a cost of debt. Since the cost of debt has to be current, the book interest rate<sup>2</sup> on debt issued in the past is generally not a good measure of the cost of debt.  
- If the private firm is being valued for an initial public offering, we can assume that the cost of debt for the private firm will move towards the average cost of debt for the industry to which the firm belongs. We are essentially assuming that the private firm, once public, will structure its debt policy to resemble those of comparable firms.  
- When estimating the cost of debt for publicly traded firms in chapter 8, we used the interest coverage ratios of these firms to estimate 'synthetic ratings', and then used the default spreads on these ratings to arrive at the costs of debt. To allow for the fact that private firms tend to be smaller and riskier than most publicly traded firms, we would use the relationship between interest coverage ratios and ratings for a subset of smaller, publicly traded firms, summarized in Table 24.4 below.

Table 24.4: Interest coverage Ratios and Bond Ratings  

<table><tr><td>Interest Coverage Ratio</td><td>Rating</td></tr><tr><td>&gt;12.5</td><td>AAA</td></tr><tr><td>9.50 - 12.50</td><td>AA</td></tr><tr><td>7.50 – 9.50</td><td>A+</td></tr><tr><td>6.00 – 7.50</td><td>A</td></tr><tr><td>4.50 – 6.00</td><td>A-</td></tr><tr><td>3.50 – 4.50</td><td>BBB</td></tr><tr><td>3.00 – 3.50</td><td>BB</td></tr><tr><td>2.50 – 3.00</td><td>B+</td></tr><tr><td>2.00 - 2.50</td><td>B</td></tr><tr><td>1.50 – 2.00</td><td>B-</td></tr><tr><td>1.25 – 1.50</td><td>CCC</td></tr><tr><td>0.80 – 1.25</td><td>CC</td></tr><tr><td>0.50 – 0.80</td><td>C</td></tr><tr><td>&lt; 0.65</td><td>D</td></tr></table>

To estimate the cost of debt for a private firm with an interest coverage ratio of 5.1, for instance, we would use a synthetic rating of Aand the default spread associated with that rating. Thus, if Arated firms typically pay  $1.25\%$  above the riskless rate to borrow, we would add that default spread to the riskless rate to estimate the cost of debt for the private firm.

This approach may underestimate the cost of debt if banks charge higher interest rates for private firms than for otherwise similar publicly traded firms. In that case, you would add an additional spread to reflect this difference, if you were valuing the firm for sale in a private transaction, but not if you were valuing it for sale to a publicly traded firm or an initial public offering.

# Illustration 24.3: Estimating Cost of Debt

We will use different approaches to estimate the cost of debt for the Yankees andInfosoft. For the Yankee's, we will use the interest rate from the most recent loans that the firm has taken:

Interest rate on debt  $= 7.00\%$

Using the Yankee's tax rate of  $40\%$ , we obtain an after-tax cost of debt

After-tax cost of debt  $= 7\%$ $(1 - .4) = 4.2\%$

For InfoSoft, we will use the interest coverage ratio estimated using the operating income and interest expenses from the most recent year. Infosoft had earnings before interest and taxes of \$ 2 million and had interest expenses of \$ 265,000.

Interest coverage ratio  $=$  EBIT/ Interest expenses  $= 2000 / 265 = 7.55$

Using Table 24.4 above, we estimate a synthetic rating of  $\mathrm{A + }$  for InfoSoft

Rating based upon interest coverage ratio  $= \mathrm{A} +$

The default spread associated with A+ rated bonds in the market at the time of this valuation was  $0.80\%$  and the treasury bond rate was  $6\%$ . Since we are valuingInfosoft for an initial public offering, we assume that there is no additional private firm spread.

Interest rate on debt  $= 6\% + 0.80\% = 6.80\%$

Finally, we attach a corporate marginal tax rate of  $35\%$ , rather thanInfosoft's current tax rate, because the initial public offering will change the firm's tax status, to yield an after-tax cost of debt.

After-tax cost of debt  $= 6.80\%$ $(1-.35) = 4.42\%$

# Debt Ratios

The debt ratio represents the proportion of the market value of a firm that comes from debt financing. For publicly traded firms, we use the market prices of publicly traded stocks and bonds to arrive at this ratio. Since neither input will be available for private firms, we have to consider one of the following options:

- In estimating levered betas, we suggested that the industry-average or target debt ratios could be used in the computation. Consistency demands that we use the same debt ratio for computing the cost of capital. Thus, if the industry-average debt to equity ratio to estimate the levered beta, the industry-average debt to capital ratio should be used to estimate the cost of capital. If the target debt to equity ratio is used for the levered beta computation, the target debt to capital ratio should be used in the cost of capital calculation.  
- While market values of equity and debt are not available for private firms, we can use our estimated values of equity and debt from the valuation, though this creates circular reasoning in the analysis. You need the cost of capital (and the debt ratio) to estimate firm and equity value, and we need the equity value to estimate the cost of capital. You could overcome this problem by iterating towards a value – you could start with the book debt ratio and cost of capital, estimate a firm and equity value, use these values to arrive at a new debt ratio and cost of capital, and re-estimate firm and equity value. You would continue until the debt and equity values in the cost of capital computation converge on the estimated values.<sup>3</sup>

# Illustration 24.5: Estimating Cost of Capital

To estimate the cost of capital for the New York Yankees and InfoSoft, we will stay consistent with the assumptions we have made about leverage so far in this chapter. The Yankees, we assumed, would stay close to a management target debt to equity ratio of  $25\%$ , which translates into a market debt to capital ratio of  $20\%$ . For InfoSoft, we used the industry average debt to equity of  $7.09\%$ , which results in a debt to capital ratio of  $6.62\%$ . $^4$

For the Yankees, given that we are valuing the firm for sale to a private entity, we estimated a total beta of 2.07. Using the treasury bond rate of  $6\%$  prevalent at the time of this valuation and a market risk premium of  $4\%$ , we estimate a cost of equity of  $14.28\%$ .

Cost of Equity  $= 6\% + 2.07(4\%) = 14.28\%$

Using the cost of debt of  $4.2\%$  estimated in illustration 24.3, we can estimate the cost of capital:

Cost of capital  $= 14.28\%$  (.80) +  $4.2\%$  (.20) = 12.26%

For InfoSoft, where we are pricing an initial public offering, we use the market beta estimate of 1.29. Using the treasury bond rate of  $6\%$  and a risk premium of  $4\%$  yields a cost of equity of  $11.16\%$ .

Cost of equity  $= 6\% + 1.29(4\%) = 11.16\%$

With the after-tax cost of debt of  $4.42\%$  estimated in illustration 24.4 and the industry average debt ratio of  $6.62\%$ , we estimate a cost of capital of  $10.71\%$  for InfoSoft.

Cost of capital  $= 11.16\%$  (.9338) + 4.42% (.0662) = 10.71%

# Cash Flows

The definitions of the cashflows to equity and cash flows to the firm are identical for both private and publicly traded firms. The cash flow to equity is the cash flow after taxes, debt payments & issues and reinvestment needs. The cash flow to the firm is the cash flow after taxes and reinvestment needs, but before debt payments. There are three issues that do

affect estimation of cash flows with private firms. The first is that many private firms do not adequately consider the salaries for owner-managers, since many owners do not distinguish between income that they receive as dividends and income they receive as salaries. The second is the intermingling of personal and business expenses that often occurs at small private businesses that can cause income to be mismeasured. The third is the effect of taxes on value, since individual tax status and tax rates vary much more widely than corporate tax rates.

# Owner Salaries and Equity Cash flows

In valuing firms, we draw a simple distinction between salaries and dividends. Salaries are compensation for professional services rendered to the firm and should be treated as operating expenses. Dividends or other equity cash withdrawals from the firm are returns on equity capital invested and determine the value of equity. The separation between managers and stockholders in publicly traded firms resulting in a distinction between salaries (which are paid to managers) and dividends (which are paid to stockholders) that is clear. In a private business, the owner is often the firm's manager and its only equity investor. If the private firm is not incorporated, the income earned by the owner is taxed at the same rate, whether it is categorized as a salary or as a dividend. Consequently, an owner will be indifferent between receiving a salary of  \$10,000 and a dividend of\$ 90,000 and a salary of \$90,000 and a dividend of \$10,000. As a consequence, owners do not pay themselves a salary in many small private firms, or even if they do, the salary does not reflect the services they render to the firm.

When valuing a private firm, we generally make forecasts based upon the operating income reported by the firm. If that operating income does not reflect a salary adjustment for the owner, it will be overstated and result in a value that is too high. To get a more precise estimate of operating income, we have to estimate the appropriate compensation for the owners/managers, based upon the role they play in the firm and the cost of hiring replacements for them. Thus, the owner of a bookstore might play several roles – cashier,

accountant, stockperson and sales person, and the management salary would have to include the cost of hiring a person or two to provide the same services.

# Intermixing Business and Personal Expenses

The intermingling of business and personal expenses is a particular problem in small private business, since owners often have absolute power over many aspects of the business. Many private business owners maintain offices in their residences, have vehicles that they maintain for personal and business use and share other services – phone, internet – between work and home. In some cases, family members are hired to fill phantom positions in order to distribute income or to reduce taxes.

If personal expenses are consolidated with business expenses or are otherwise a part of business expenses, the operating income for a private firm has to be estimated prior to these expenses. The problem with making these adjustments, however, is that private firm owners are usually not forthcoming about the extent of these expenses and there may be tax consequences.

# Tax Effects

When valuing publicly traded firms, the tax rate that we use in valuation is defined to be the marginal corporate tax rate. While different firms may face different marginal tax rates, the differences in tax rates across potential buyers of a private firm can be much larger. In fact, the tax rate can vary from the corporate tax rate (if the potential buyer is a corporation) to the highest marginal tax rate for individuals (if the potential buyer is a wealthy individual) to a lower marginal tax rate if the potential buyer is an individual with lower income. The tax rate will affect both the cash flows (through the after-tax operating income) and the cost of capital (though the cost of debt). As a consequence, the value of a private firm can vary across different buyers.

# Illustration 24.6: Estimating Operating Income

To estimate the cashflows for the Yankees, we reconstruct the operating income statement based upon publicly available information<sup>5</sup>. We begin in Table 24.5, by estimating the revenue of the Yankees and contrasting them with the revenues of two other baseball teams:

Table 24.5: Revenues for the New York Yankees  

<table><tr><td></td><td>Pittsburg Pirates</td><td>Baltimore Orioles</td><td>New York Yankees</td></tr><tr><td>Net Home Game Receipts</td><td>$22,674,597</td><td>$47,353,792</td><td>\$52,000,000</td></tr><tr><td>Road Receipts</td><td>$1,613,172</td><td>$7,746,030</td><td>\$9,000,000</td></tr><tr><td>Concessions &amp; Parking</td><td>$3,755,965</td><td>$22,725,449</td><td>\$25,500,000</td></tr><tr><td>National TV Revenues</td><td>$15,000,000</td><td>$15,000,000</td><td>\$15,000,000</td></tr><tr><td>Local TV Revenues</td><td>$11,000,000</td><td>$18,183,000</td><td>\$90,000,000</td></tr><tr><td>National Licensing</td><td>$4,162,747</td><td>$3,050,949</td><td>\$6,000,000</td></tr><tr><td>Stadium Advertising</td><td>$100,000</td><td>$4,391,383</td><td>\$5,500,000</td></tr><tr><td>Other Revenues</td><td>$1,000,000</td><td>$9,200,000</td><td>\$6,000,000</td></tr><tr><td>Total Revenues</td><td>$59,306,481</td><td>$127,650,602</td><td>\$209,000,000</td></tr></table>

The expenses are estimated similarly in Table 24.6, with a comparison again to two other teams in professional baseball:

Table 24.6: Expenses for the New York Yankees  

<table><tr><td></td><td>Pittsburg Pirates</td><td>Baltimore Orioles</td><td>New York Yankees</td></tr><tr><td>Player Salaries</td><td>$33,155,366</td><td>$62,771,482</td><td>\$91,000,000</td></tr><tr><td>Team Operating Expenses</td><td>$6,239,025</td><td>$6,803,907</td><td>\$7,853,000</td></tr><tr><td>Player Development</td><td>$8,136,551</td><td>$12,768,399</td><td>\$15,000,000</td></tr><tr><td>Stadium &amp; Game Operations $ 5,270,986</td><td>$4,869,790</td><td>\$7,800,000</td><td></td></tr><tr><td>Other Player Costs</td><td>$2,551,000</td><td>$6,895,751</td><td>\$7,500,000</td></tr><tr><td>G &amp; A Costs</td><td>$6,167,617</td><td>$9,321,151</td><td>$11,000,000</td></tr><tr><td>Broadcasting</td><td>$1,250,000</td><td>$ -</td><td>$ -</td></tr><tr><td>Rent &amp; Amortization</td><td>$ -</td><td>$6,252,151</td><td>$ -</td></tr><tr><td>Total Operating Expenses</td><td>$62,770,545</td><td>$109,682,631</td><td>\$140,153,000</td></tr></table>

While deducting operating expenses from revenues would normally yield operating income, the operating expenses for the Yankees include \$4.5 million in expenses that we are not considering to be part of operations.<sup>6</sup> Table 24.7 summarizes these adjustments for the Yankees:

Table 24.7: Adjusted Operating Income  

<table><tr><td></td><td>Pittsburg Pirates</td><td>Baltimore Orioles</td><td>New York Yankees</td></tr><tr><td>Total Revenues</td><td>$59,306,481</td><td>$127,650,602</td><td>\$209,000,000</td></tr><tr><td>Total Operating Expenses</td><td>$62,770,545</td><td>$109,682,631</td><td>$140,153,000</td></tr><tr><td>EBIT</td><td>($3,464,064)</td><td>$17,967,971</td><td>$68,847,000</td></tr><tr><td>Adjustments</td><td>$1,500,000</td><td>$2,200,000</td><td>\$4,500,000</td></tr><tr><td>Adjusted EBIT</td><td>($1,964,064)</td><td>$20,167,971</td><td>\$73,347,000</td></tr><tr><td>Taxes (at 40%)</td><td>($785,626)</td><td>$8,067,189</td><td>\$29,338,800</td></tr><tr><td>EBIT (1-tax rate)</td><td>($1,178,439)</td><td>$12,100,783</td><td>\$44,008,200</td></tr></table>

InfoSoft, though a private firm, has essentially been run like a public firm, probably as a lead-in to the initial public offering. Table 24.8 reflects the operating income for InfoSoft, and corrects the operating income for the capitalization of R&D expenses; this is a correction we employed for publicly traded high technology firms as well.

Table 24.8: Adjusted Operating Income - InfoSoft (in '000s)  

<table><tr><td>Sales &amp; Other Operating Revenues</td><td>\$20,000.00</td></tr><tr><td>- Operating Costs &amp; Expenses</td><td>\$13,000.00</td></tr><tr><td>- Depreciation</td><td>\$1,000.00</td></tr><tr><td>- Research and Development Expenses</td><td>\$4,000.00</td></tr><tr><td>Operating Income</td><td>\$2,000.00</td></tr><tr><td colspan="2">Adjusted Operating Income</td></tr><tr><td>Operating Income</td><td>\$2,000.00</td></tr><tr><td>+ R&amp; D Expenses</td><td>\$4,000.00</td></tr><tr><td>- Amortization of Research Asset</td><td>\$2,367.00</td></tr><tr><td>Adjusted Operating Income</td><td>\$3,633.00</td></tr></table>

# Growth

The growth rate for a private firm can be estimated by looking at the past (historical growth) or from fundamentals (the reinvestment rate and return on capital). In this section, we will consider some of the issues in estimating private firm growth.

# Estimating Growth

In estimating growth for publicly traded firms, we noted that we could draw on three sources – historical growth, analyst estimates and fundamentals. With private firms, we will not find analyst estimates of growth and historical growth numbers have to be used with caution. The shifting accounting standards that characterize many private firms will mean that reported earnings changes over time may not reflect actual earnings changes.

Furthermore, the fact that earnings are measured annually, rather than quarterly, and the reality that private firms tend to be younger than publicly traded firms will mean far less data in the historical growth estimate.

As a consequence of these gaps in past growth and analyst estimates, there is an even greater reliance on fundamentals in private firms. The expected growth rate in operating income is the product of the reinvestment rate and the return on capital, though changes in return on capital in existing assets can create an additional impact.

Expected Growth Rate  $=$  Reinvestment Rate \* Return on Capital

In making the estimates of reinvestment rates and returns on capital for private firms, we can draw on the experience of publicly traded firms in the business.

# Illustration 24.8: Estimating Growth

The process of estimating growth is different for the two firms under consideration in this chapter. With the Yankees, we are looking at a valuable asset, but one whose cashflows are unlikely to grow at rate higher than the inflation rate in perpetuity. Consequently, we will assume a growth rate of  $3\%$  in nominal terms in perpetuity. While this might seem unduly low for a team that has won the World Series three of the last five years<sup>7</sup>, the current revenues and operating income reflect these successes. Depressing though it might be to fans, the Yankees will not always be world champions and there will be lean years ahead. The expected growth rate of  $3\%$  can be considered a smoothed growth rate over good times and bad. To estimate how much they will need to reinvest to generate this growth, we will assume a return on capital of  $20\%$ .<sup>8</sup> This yields a reinvestment rate of

Reinvestment Rate = Growth Rate / Return on Capital = 3%/20% = 15%

To estimate the growth rate at InfoSoft, we follow a more conventional route. We first estimate the return that they earn on their capital invested currently, by dividing the after-tax operating income from the most recent year by the adjusted capital invested at the beginning of the year. We use the adjusted operating income from table 24.8 and used the corporate marginal tax rate of  $35\%$ .

Return on Capital =  $3,633 (1-.35)/$  12,933 = 23.67%

We then estimate InfoSoft's reinvestment rate by dividing their reinvestments in capital expenditures (including R&D) $^{10}$  and working capital in the most recent year by the after-tax operating income.

Reinvestment Rate  $= ($  2,633 + 500)/ (\$3,633 (1-.35)) = 106.82%

The expected growth rate in operating income for InfoSoft for the immediate future is based upon the assumption that the return on capital and reinvestment rate will remain unchanged over the next 5 years.

Expected Growth Rate  $= 23.67\% * 1.0682 = 25.28\%$

If we had expected the return on capital or the reinvestment rate to change over time, we would have reflected those changes in this growth rate.

# The Persistence of Growth

In valuing publicly traded firms, we generally assumed infinite lives, even though we did allow for the risk that the firm would not survive. With private firms, the perpetual life assumption has to be made with far more caution. Unlike publicly traded firms, where the transition from one CEO to another is common, the transition is much more complicated in a private firm since the owner/manager generally does not want to pass the reins of power to

an outsider. Instead, the owner looks to the next generation in his or her family for the successor, a process that is not always successful.

What are the implications for valuation? One is that the terminal value for a private firm will be lower than the terminal value for a publicly traded firm. If we assume, in fact, that the firm will cease operations at some point in time in the future – say when the current owner retireswe would use a liquidation value for the assets as the terminal value. In general, liquidation values are lower than the value of continuing operations. The other is that private firms where owners plan for the transition to the next generation will be worth more than private firms that do not make these arrangements.

Some private firms, especially as they get larger, resemble publicly traded firms in terms of having professional managers. With these firms, the assumption of infinite growth that we used with publicly traded firms can be sustained.

# Illustration 24.9: Closure in Valuation and Terminal Values

Neither of the two firms that we are valuing are valued with finite lives. With InfoSoft, the reason is simple. We are assuming a growing and healthy publicly traded firm, based upon our projections over the next 10 years. The firm should be worth more based upon continuing operations than from liquidation. Consequently, we assume an expected growth rate of  $5\%$  beyond year 10 for the firm. As the firm becomes larger, it will become more and more difficult for it to sustain its current return on capital of  $23.67\%$ . We will assume that the return on capital will drop to the industry average of  $17.20\%$ . These two assumptions yield a reinvestment rate of  $29.07\%$  after year 10:

Reinvestment rate = Expected Growth Rate / Return on Capital = 5%/17.2% = 29.07%

While we do value the Yankees for sale in a private transaction, it remains a valuable franchise and should not lack for potential buyers, even if the owner or owners no longer are interested in running it. That is why we assumed a growth rate of  $3\%$  in perpetuity.

# Illiquidity Discounts

When you take an equity position in an entity, you generally would like to have the option to liquidate that position if you need to. The need for liquidity arises not only because of cash flow considerations but also because you might want to change your portfolio holdings. With publicly traded firms, liquidation is simple and generally has a low cost – the transactions costs for liquid stocks are a small percent of the value. With equity in a private business, liquidation costs as a percent of firm value can be substantial. Consequently, the value of equity in a private business may need to be discounted for this potential illiquidity. In this section, we will consider the determinants of this discount and how best to estimate it.

# Determinants of Illiquidity Discount

The illiquidity discount is likely to vary across both firms and buyers, which renders rules of thumb useless. Let us consider first some of the factors that may cause the discount to vary across firms:

1. Liquidity of assets owned by the firm: The fact that a private firm is difficult to sell may be rendered moot if its assets are liquid and can be sold with no significant loss in value. A private firm with significant holdings of cash and marketable securities should have a lower illiquidity discount than one with factories or other assets for which there are relatively few buyers.  
2. Financial Health and cashflows of the firm: A private firm that is financially healthy should be easier to sell than one that is not healthy. In particular, a firm with strong income and positive cash flows should be subject to a smaller illiquidity discount than one with negative income and cash flows.  
3. Possibility of going public in the future: The greater the likelihood that a private firm can go public in the future, the lower should be the illiquidity discount attached to its value. In effect, the probability of going public is built into the valuation of the private firm. To illustrate, the owner of a private e-commerce firm in 1998 or 1999 would not

have had to apply much of a illiquidity discount to his firm's value, if at all, because of the ease with which these firms could be taken public in those years.

4. Size of the Firm: If we state the illiquidity discount as a percent of the value of the firm, it should become smaller as the size of the firm increases. In other words, the illiquidity discount should be smaller as a percent of firm value for firms like Cargill and Koch Industries, which are worth billions of dollars, than it should be for a small firm worth \$ 15 million.

The illiquidity discount is also likely to vary across potential buyers because the desire for liquidity varies individuals. It is likely that those buyers who have deep pockets and see little or no need to cash out their equity positions will attach much lower illiquidity discounts to value, for similar firms, than buyers that have less of a safety margin.

# Empirical Evidence and Typical Practice

How large is the illiquidity discount attached to private firm valuations? This is a very difficult question to answer empirically because the discount itself cannot be observed. Even if we were able to obtain the terms of all private firm transactions, note that what is reported is the price at which private firms are bought and sold. The value of these firms is not reported and the illiquidity discount is the difference between the value and the price.

In fact, much of the evidence on illiquidity discounts comes from examining "restricted stock" at publicly traded firms. Restricted securities are securities issued by a publicly traded company, but not registered with the SEC, that can be sold through private placements to investors, but cannot be resold in the open market for a two-year holding period, and limited amounts can be sold after that. When this stock is issued, the issue price is set much lower than the prevailing market price, which is observable, and the difference is viewed as a discount for illiquidity. The results of three studies that have looked at the magnitude of this discount are summarized below:

- Maher examined restricted stock purchases made by four mutual funds in the period 1969-73 and concluded that they traded an average discount of  $35.43\%$  on publicly traded stock in the same companies.  
- Moroney reported a mean discount of  $35\%$  for acquisitions of 146 restricted stock issues by 10 investment companies, using data from 1970.  
- Silber examined restricted stock issues from 1984 to 1989 and found that the median discount for restricted stock is  $33.75\%$ .

In summary, then, there seems to be a substantial discount attached, at least on average, when an investment is not liquid. Much of the practice of estimating illiquidity discounts seems to build on these averages. For instance, rules of thumb often set the illiquidity discount at  $20 - 30\%$  of estimated value and there seems to be little or no variation across firms.

Silber (1991) also examined factors that explained differences in discounts across different restricted stock by relating the size of the discount to observable firm characteristics including revenues and the size of the restricted stock offering. He reported the following regression:

$\mathrm{LN(RPRS)} = 4.33 + 0.036 \mathrm{LN(REV)} - 0.142 \mathrm{LN(RBRT)} + 0.174 \mathrm{DERN} + 0.332 \mathrm{DCUST}$  where,

RPRS = Restricted Stock Price/ Unrestricted stock price = 1 - illiquidity discount  
REV = Revenues of the private firm (in millions of dollars)

RBRT = Restricted Block relative to Total Common Stock in %

DERN = 1 if earnings are positive; 0 if earnings are negative;

DCUST = 1 if there is a customer relationship with the investor; 0 otherwise;

The illiquidity discount tends to be smaller for firms with higher revenues, decreases as the block offering decreases, and is lower when earnings are positive and when the investor has a customer relationship with the firm.

These findings are consistent with some of the determinants that we identified in the previous section for the illiquidity premium. In particular, the discounts tend to be smaller for large firms (at least as measured by revenues) and for healthy firms (with positive earnings being the measure of financial health). This would suggest that the conventional practice of using constant discounts across private firms is wrong and that we should be adjusting for differences across firms.

# Estimating the Illiquidity Discount

If we do decide to adjust the illiquidity discount to reflect the differences across private firms, we are faced with an estimation question. How are we going to measure these differences and build them into an estimate? There are two ways of doing this. The first is to extend the analysis done for restricted securities into the illiquidity discount; in other words, we could adjust the discount factor for the magnitude of a firm's revenues and whether it has positive earnings. The second is to apply some of the empirical work that has been done examining the magnitude of the bid-ask spread for publicly traded firms to estimating illiquidity discounts.

# 1. Adjusted Discount Factors

Consider again the regression that Silber presents on restricted stock. Not only does it yield a result specific to restricted stock, but it provides a measure of how much lower the discount should be as a function of revenues. A firm with revenue of  \$20 million should have a illiquidity discount which is \(1.19\%$  lower than a firm with revenues of \)10 million. Thus, we could establish a benchmark discount for a profitable firm with specified revenues (say \$ 100 million) and adjust this benchmark discount for individual firms that have revenues much higher or lower than this number. The regression can also be used to differentiate between profitable and unprofitable firms. Figure 24.1 presents the difference in illiquidity discounts across both profitable and unprofitable firms with different revenues,

using a benchmark discount of  $25 \%$  for a firm with positive earnings and \$ 10 million revenues.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/c741776b-b8aa-4b5f-a6b0-fe59f2fc6237/9bc0cdb733fd0a19744339f3d8a9644b79b1f44105411ff7ec7d10e9d64492eb.jpg)  
Figure 24.1: Illiquidity Discounts: Base Discount of  $25\%$  for profitable firm with \$ 10 million in revenues

There are clearly dangers associated with extending a regression run on a small number of restricted stock to estimating discounts for private firms, but it does provide at least a road map for adjusting discount factors.

# 2. Bid-Ask Spread Approach

The biggest limitation of using studies based upon restricted stock is that the samples are small. We would be able to make far more precise estimates if we could obtain a large sample of firms with illiquidity discounts. We would argue that such a sample exists, if we consider the fact that an asset which is publicly traded is not completely liquid. In fact, liquidity varies widely across publicly traded stock. A small company listed over-the-counter is much less liquid than a company listed on the New York Stock Exchange which in turn is much less liquid that a large capitalization company that is widely held. In fact, the difference between the bid price and the ask price that we observe on publicly traded assets

can be viewed as a measure of the cost of instant liquidity. An investor who buys an asset, changes her mind and decides to sell the asset immediately will pay the bid-ask spread.

While the bid-ask spread might only be a quarter or half a dollar, it looms as a much larger cost when it is stated as a percent of the price per unit. For a stock that is trading at \$ 2, with a bid-ask spread of 1/4, this cost is  $12.5\%$ . For higher price and very liquid stocks, the illiquidity discount may be less than  $0.5\%$  of the price, but it is not zero.

What relevance does this have for illiquidity discounts on private companies? Think of equity in a private company as a stock that never trades. On the continuum described above, you would expect the bid-ask spread to be high for such a stock, and this would essentially measure the illiquidity discount.

To make estimates of the illiquidity discounts using the bid-ask spread as the measure, you would need to relate the bid-ask spread of publicly traded stocks to variables that can be measured for a private business. For instance, you could regress the bid-ask spread against the revenues of the firm and a dummy variable, reflecting whether the firm is profitable or not, and extend the regression done on restricted stocks to a much larger sample. You could even consider the trading volume for publicly traded stocks as an independent variable and set it to zero for a private firm. Using data from the end of 2000, for instance, we regressed the bid-ask spread against revenues, a dummy variable for positive earnings, cash as a percent of firm value and trading volume.

[ \text{Spread} = 0.145 - 0.0022 \ln (\text{Annual Revenues}) + 0.015 (\text{DERN}) - 0.016 (\text{Cash/Firm Value}) - 0.11 (\text{$ Monthly trading volume/ Firm Value}) ]

Plugging in the corresponding values – with a trading volume of zero - for a private firm should yield an estimate of the bid-ask spread for the firm.

Illustration 24.10: Estimating the Illiquidity Discount for the New York Yankees

To estimate the illiquidity discount for the Yankees, we assume that the base discount for a firm with  \$10 million in revenues would be \(25\%$ . The Yankee's revenues of \)209 million should result in a lower discount on their value. We estimate the difference in

the illiquidity discount between a firm with  \$10 million in revenue and\$ 209 million in revenue to be 9.85%. To do this, we first estimated the illiquidity discount in the Silber equation for a firm with \$10 million in revenues:

Expected illiquidity discount  $= (100 - \exp(4.33 + 0.036\ln(10) - 0.142\ln(100) + 0.174)) / 100$ $= 48.94\%$

We then reestimated the illiquidity discount with revenues of \$ 209 million:

Expected illiquidity discount  $= (100 - \exp(4.33 + 0.036\mathrm{LN}(209) - 0.142\ln(100) + 0.174(1))) / 100 = 43.04\%$

Difference in discount  $= 48.94\% - 43.04\% = 5.90\%$

The estimated illiquidity discount for the Yankees would therefore be  $19.10\%$ , which is the base discount of  $25\%$  adjusted for the revenue difference.

# Valuation Motives and Value Estimates

In the last section, we considered how best to estimate the inputs to use in valuing a private firm. As we considered each input, though, we noted that the process of estimation might be different depending upon the potential buyer of the firm. With betas, for instance, we argued that the market beta should be used if the potential buyer is a publicly traded firm or a stock market investor (in an initial public offering) and that a total beta should be used if the potential buyer is a private party. We made similar arguments about the cost of debt and cash flows. Table 24.9 summarizes the differences in the way we estimate the inputs to valuation for different valuation motives:

Table 24.9: Estimation of Inputs for Valuation: Valuation Motives  

<table><tr><td></td><td>Valuation for sale to a private entity</td><td>Valuation for sale to a publicly traded firm to for ar initial public offering</td></tr><tr><td>Cost of Equity</td><td>Based upon total beta, with correlation reflecting the</td><td>Based upon market beta, since marginal investor is diversified.</td></tr><tr><td></td><td>diversification of potential buyer</td><td></td></tr><tr><td>Cost of Debt</td><td>May reflect additional spread associated with being a private business</td><td>Based upon synthetic rating, estimated by looking at publicly traded firms.</td></tr><tr><td>Operating Cash Flows</td><td>Tax rate used should be that of private business.</td><td>Corporate marginal tax rates used in valuation.</td></tr><tr><td>Firm life</td><td>Finite life terminal value or liquidation value.</td><td>Perpetual life, when estimating terminal value.</td></tr><tr><td>Illiquidity Discount</td><td>Value discounted for illiquidity</td><td>No illiquidity discount</td></tr></table>

The results of using different approaches to estimating discount rates and cash flows, depending upon the potential buyer, can have significant effects on value. In general, a private business that is up for sale will be valued much more highly by a publicly traded firm than by a private entity. This can be traced to the fact that the discount rates are higher, when we assume that the buyer is not diversified. Thus, the owners of private businesses who are interested in selling their businesses will be well served looking for potential buyers who are publicly traded firms. While they might not be able to extract the entire value, they can try to obtain at least a share of the additional value created because the marginal investors are diversified.

The same implications arise when looking at the alternative of going public. The value that a firm can obtain from a public offering will exceed the value that it will receive from a private entity. The values obtained from an initial public offering and sale to a publicly traded firm will be based upon similar discount rates, but may vary because of cost and revenue synergies. If the potential for these synergies is large, selling to a publicly traded firm may result in a higher value than going public.

The inputs for valuing the Yankees as a business are in place. We have estimated the cost of capital of  $12.26\%$  in illustration 24.5, the adjusted after-tax operating income of  $\$ 44.008$  million in illustration 24.6, an expected growth rate of  $3 \%$  and reinvestment rate of  $15 \%$  in illustration 24.7. These estimates yield a value of  $\$ 415$  million for the Yankees:

Value of the Yankees = EBIT (1-t) (1 - Reinvestment Rate)  $(1 + \mathrm{g}) / (\text{Cost of capital} - \mathrm{g})$

$$
= \$ 4 4. 0 0 8 \text {m i l l i o n} (1 -. 1 5) (1. 0 3) / (. 1 2 2 6 -. 0 3) = \$ 4 1 5 \text {m i l l i o n}
$$

Since this a valuation for a private sale, we would apply the illiquidity discount of  $12.5\%$  estimated in illustration 24.9.

Value of the Yankees with discount  $= \$  415 $million (1-.125)$ = \ $363.9\$  million

This valuation is a conservative one and the actual value may well exceed this for two reasons. The first is that publicly traded television and cable companies have expressed interest in the Yankees. Following up, if we substitute in the market beta of 1.03 for the total beta of 2.07, we obtain a cost of capital of  $8.95\%$ . This results in a value of \$647 million, which no longer has to be discounted for illiquidity:

Value to diversified buyer \(= \\) 44.008\( million (1-.15)(1.03)/(.0895-.03) = \\( 647\) million

The second is the power that sports teams seem to have to extort subsidies and financial assistance from the cities that they represent. For instance, if the Yankees can get New York to pick up the tab for the reinvestment needs (15% of the after-tax operating income), the value of the Yankees would increase to \$ 762 million.

Value with subsidies \(= \\) 44.008\( million (1.03)/(.0895-.03) = \\( 762\) million

Of course, the presence of synergies to the buyer may cause the value to increase even further.

# Illustration 24.12: Valuing InfoSoft

The inputs for valuing InfoSoft are summarized in table 24.* below. We assume that InfoSoft will maintain a reinvestment rate of  $112.17\%$  and a return on capital of  $23.67\%$  for the next five years, allowing its operating earnings to grow  $25.28\%$  a year. At the end of 5 years, we assume that the firm will be in stable growth, growing  $5\%$  a year.

Table 24.10: Summary of Inputs - Valuation of InfoSoft  
Table 24.18: Summary of Inputs - InfoSoft  

<table><tr><td></td><td>High Growth Phase</td><td>Stable Growth Phase</td></tr><tr><td>Length</td><td>5 years</td><td>Forever after year 5</td></tr><tr><td>Growth Inputs</td><td></td><td></td></tr><tr><td>- Reinvestment Rate</td><td>106.82%</td><td>29.07%</td></tr><tr><td>- Return on Capital</td><td>23.67%</td><td>17.2%</td></tr><tr><td>- Expected Growth rate</td><td>25.28%</td><td>5.00%</td></tr><tr><td>Cost of Capital Inputs</td><td></td><td></td></tr><tr><td>- Beta</td><td>1.29</td><td>1.20</td></tr><tr><td>- Cost of Debt</td><td>6.00%</td><td>6.00%</td></tr><tr><td>- Debt Ratio</td><td>6.62%</td><td>6.62%</td></tr><tr><td>- Cost of Capital</td><td>10.71%</td><td>10.38%</td></tr></table>

As noted in an earlier section, we use the corporate tax rate of  $35\%$  in this valuation because InfoSoft is being valued for an initial public offering. In addition, we added the cash and marketable securities, valued at \$ 500,000, to the value of the operating assets of the firm. The valuation is summarized in Figure 24.2. Based upon our assumptions, we would value the equity in InfoSoft at \$ 69.826 million.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/c741776b-b8aa-4b5f-a6b0-fe59f2fc6237/579ad8dae4871c3450ed0b6e8543e977f20721239f5270d264a00209c32f3029.jpg)  
Figure 24.2: InfoSoft: A Valuation

# Control Issues

When valuing a firm, you always need to consider the competence and strengths of the management of the firm. With private firms, where the owner is also the manager, this consideration carries special weight, since the owner has absolute control. In contrast, in a publicly traded firm, incompetent management can often be replaced, if enough stockholders can be convinced that it is in their best interests to do so.

There are implications for valuation, if a portion of a private firm is offered for sale. If that portion provides a controlling interest, i.e., the right to pick the firm's management, it should have a substantially higher value than if it does provide this power. Normally, this would mean that  $51\%$  of a private firm's equity should trade at a substantial premium over  $49\%$ . This applies whether a firm is being sold to a private entity or a publicly traded firm, and may be arise in an initial public offering. If, for instance, only non-voting shares or shares with diluted voting rights are offered to investors in the public offering, they should trade at a discount on shares with full voting rights.

While the intuition about the value of control is simple, estimating how much it is worth is a little more difficult. We will defer a full discussion of the topic until we get to the chapter on acquisitions, but we will value it as the difference between two values – the value of the firm run optimally and the value of the firm with the incumbent management. For instance, if the value of a private firm run by incumbent management is \$ 100 million and the value of the firm run optimally is \$ 150 million, the difference in values between the 51% and 49% shares can be computed as follows:

Value of controlling interest = 51% of Optimal Value \(= .51*150 = \\) 76.5 million\( Value of non-controlling interest = 49\%\) of Status Quo Value \(= .49*100 = \\) 49 million\( The additional \(2 \%\) interest (from 49 to \(51 \%\) ) has a disproportionate effect on value because of control. This value of control will be greatest for private firms that are poorly run and will be close to zero for well run firms.

In fact, the same approach can be used to compute the discount that non-voting shares will trade at, relative to voting shares in initial public offerings. For instance, assume that the private firm described above creates 10 million voting shares and offers  $70\%$  to the public. Since the potential for changing management is created by this offering, the value per share will fall between  \$10 and\$ 15, depending upon the probability that is attached to the management change. Thus, if the probability of the management change is  $60\%$ , the value per share will be \$13.00

$$
\begin{array}{l} \text {V a l u e} = \frac {\text {S t a t u s Q u o V a l u e}}{\text {N u m b e r o f s h a r e s}} + \frac {(\text {O p t i m a l - S t a t u s Q u o V a l u e}) * \text {P r o b a b i l i t y o f c h a n g e}}{\text {N u m b e r o f S h a r e s}} \\ = \$ 1 0 0 / 1 0 + (1 5 0 - 1 0 0) ^ {\ast}. 6 / 1 0 = \$ 1 3. 0 0 \\ \end{array}
$$

Now assume that this firm had issued 9 million non-voting shares, with management retaining 1 million voting shares with complete control. In this case, the non-voting shares will get little or none of the estimated value change from optimal management. In fact, the values of the two classes can be estimated as follows:

Value: non-voting share =  $\frac{\text{Status Quo Value}}{(\# \text{voting shares} + \# \text{non-voting shares})}$

$$
= \$ 1 0 0 / (9 + 1) = \$ 1 0 \text {p e r s h a r e}
$$

Value per voting share  $=$

$$
\begin{array}{l} \frac {\text {S t a t u s Q u o V a l u e}}{\# \text {v o t i n g s h a r e s} + \# \text {n o n - v o t i n g s h a r e s}} + \frac {(\text {O p t i m a l} - \text {S t a t u s Q u o V a l u e}) * \text {P r o b a b i l i t y o f c h a n g e}}{\# \text {V o t i n g S h a r e s}} \\ = \\( 100 / (9 + 1) + (150 - 100) ^ {*}.6 / 1 = \\) 40.00 \\ \end{array}
$$

The voting shares in this case would trade at an enormous premium over the non-voting shares, but that is because we have assumed that the probability of change is still  $60\%$ . If the incumbent managers are much more likely to fight a change in management, this probability will drop and reduce the premium with it.

# Illustration 24.13: Estimating a per-share value for InfoSoft

In the last illustration, we valued the equity in InfoSoft at \$ 69.826 million. Assume that the firm decides to create 5 million shares – 4 million shares will be non-voting shares

and 1 million will be voting shares. In the initial offering, only the non-voting shares will be sold to the public and the current owners will retain all of the voting shares.

To value the voting and non-voting shares, we need to value InfoSoft under optimal management. Assume that the firm would be worth \$ 75 million under optimal management.[11] The value of the voting and non-voting shares can then be computed:

Value: non-voting share =  $\frac{\text{Status Quo Value}}{(\# \text{voting shares} + \# \text{non-voting shares})}$

$$
= \$ 6 9. 8 2 6 / (4 + 1) = \$ 1 3. 9 7
$$

Assume that the fact that incumbent managers will retain the voting shares reduces the probability of management change to  $25\%$ .

Value per voting share  $=$

$$
\begin{array}{l} \frac {\text {S t a t u s Q u o V a l u e}}{\# \text {v o t i n g s h a r e s} + \# \text {n o n - v o t i n g s h a r e s}} + \frac {(\text {O p t i m a l} - \text {S t a t u s Q u o V a l u e}) * \text {P r o b a b i l i t y o f c h a n g e}}{\# \text {V o t i n g S h a r e s}} \\ = \$ 69.826 / (4 + 1) + (75 - 69.826) ^ {*}. 25 / 1 = \$ 15.26 \\ \end{array}
$$

# Conclusion

The value of a private firm is the present value of the cash flows it is expected to generate, discounted back at a rate that reflects both the risk in the private firm and the mix of debt and equity it uses. While this statement is identical to the one we used to describe the value of a publicly traded firm, there are differences in the way we estimate these inputs for private firms, and even among private firms, depending upon the motive for the valuation.

When valuing a private firm for sale to an individual or private entity, we have to consider three specific issues. The first is that the cost of equity, which we have hitherto assumed to be determined purely by the risk that cannot be diversified, might have to be

adjusted for the fact that the potential buyer is not well diversified. The second is that equity holdings in private businesses are illiquid, leading to a discount on the estimated value. The discounts on restricted stock issues made by publicly traded firms or the bid-ask spreads of these firms may provide us with useful information on how large this discount should be. The third is that a controlling interest in equity of a private firm can trade at a significant premium over a minority interest.

The valuation of a private firm for sale to a publicly traded firm or initial public offering follows a much more conventional route. We can continue to assume that the cost of equity should be based only upon non-diverisifiable risk and there is no need for an illiquidity discount. There can still be a control value, if less than a controlling interest is sold to the publicly trade firm or if non-voting shares are issued in the initial public offering.
---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Estimating Risk Parameters and Costs of Financing
linter-yaml-title-alias: Estimating Risk Parameters and Costs of Financing
---

# Estimating Risk Parameters and Costs of Financing

The preceding chapter laid the groundwork for estimating the costs of equity and capital for firms by looking at how best to estimate a riskless rate that operates as a base for all costs, an equity risk premium for estimating the cost of equity, and default spreads for estimating the cost of debt. It did not, however, consider how to estimate the risk parameters for individual firms. This chapter examines the process of estimating risk parameters for individual firms, for estimating both the cost of equity and the cost of debt.

For the cost of equity, we look at the standard process of estimating the beta for a firm and consider alternative approaches. For the cost of debt, we examine bond ratings as measures of default risk and the determinants of these ratings.

The chapter closes by bringing together the risk parameter estimates for individual firms and the economy-wide estimates of the risk-free rate and risk premiums to estimate a cost of capital for the firm. To do this, the sources of capital have to be weighted by their relative market values.

# THE COST OF EQUITY AND CAPITAL

Firms raise money from both equity investors and lenders to fund investments. Both groups of investors make their investments expecting to make a return. Chapter 4 argued that the expected return for equity investors would include a premium for the equity risk in the investment. We label this expected return the cost of equity. Similarly, the expected return that lenders hope to make on their investments includes a premium for default risk, and we call that expected return the cost of debt. If we consider all of the financing that the firm takes on, the composite cost of financing will be a weighted average of the costs of equity and debt, and this weighted cost is the cost of capital.

The chapter begins by estimating the equity risk in a firm and using the equity risk to estimate the cost of equity, and follows up by measuring the default risk to estimate a cost of debt. It concludes by determining the weights we should attach to each of these costs to arrive at a cost of capital.

# COST OF EQUITY

The cost of equity is the rate of return investors require on an equity investment in a firm. The risk and return models described in Chapter 4 need a riskless rate and a risk premium (in the CAPM) or premiums (in the APM and multifactor models), which were estimated in the last chapter. They also need measures of a firm's exposure to market risk in the form of betas. These inputs are used to arrive at an expected return on an equity investment:

$$
\text {E x p e c t e d} = \text {R i s k l e s s} + \text {B e t a} (\text {R i s k}
$$

This expected return to equity investors includes compensation for the market risk in the investment and is the cost of equity. This section concentrates on the estimation of the beta of a firm. While much of the discussion is directed at the CAPM, it can be extended to apply to the arbitrage pricing and multifactor models, as well.

# Betas

In the CAPM, the beta of an investment is the risk that the investment adds to a market portfolio. In the APM and multifactor model, the betas of the investment relative to each factor have to be measured. There are three approaches available for estimating these parameters: One is to use historical data on market prices for individual investments; the second is to estimate the betas from the fundamental characteristics of the investment; and the third is to use accounting data. All three approaches are described in this section.

Historical Market Betas The conventional approach for estimating the beta of an investment is a regression of returns on the investment against returns on a market index. For firms that have been publicly traded for a length of time, it is relatively straightforward to estimate returns that an investor would have made on investing in the firms' equity in intervals (such as a week or a month) over that period. In theory, these stock returns on the assets should be related to returns on a market portfolio (i.e., a portfolio that includes all traded assets) to estimate the betas of the assets. In practice, we tend to use a stock index such as the S&P 500 as a proxy for the market portfolio, and we estimate betas for stocks against the index.

Regression Estimates of Betas The standard procedure for estimating betas is to regress stock returns  $(\mathbf{R}_{\mathrm{j}})$  against market returns  $(\mathbf{R}_{\mathrm{m}})$ :

$$
R _ {j} = a + b R _ {m}
$$ where  $a =$  Intercept from the regression


$$ b = \text {S l o p e} = \text {C o v a r i a n c e} \left(R _ {\mathrm {j}}, R _ {\mathrm {m}}\right) / \sigma_ {\mathrm {m}} ^ {2}
$$

The slope of the regression corresponds to the beta of the stock and measures the riskiness of the stock.

The intercept of the regression provides a simple measure of performance of the investment during the period of the regression, when returns are measured against the expected returns from the capital asset pricing model. To see why, consider the following rearrangement of the capital asset pricing model:

$$
\begin{array}{l} R _ {i} = R _ {f} + \beta \left(R _ {m} - R _ {f}\right) \\ = R _ {f} (1 - \beta) + \beta R _ {m} \\ \end{array}
$$

Compare this formulation of the return on an investment to the return equation from the regression:

$$
R _ {j} = a + b R _ {m}
$$

Thus, a comparison of the intercept  $a$  to  $\mathrm{R_f}(1 - \beta)$  should provide a measure of the stock's performance, at least relative to the capital asset pricing model. In summary, then:

If  $a > R_f(1 - \beta) \ldots$  Stock did better than expected during regression period.

$\mathrm{a} = {\mathrm{R}}_{\mathrm{f}}\left( {1 - \beta }\right) \ldots$  Stock did as well as expected during regression period.

$a <   R_{\mathrm{f}}(1 - \beta)$  … Stock did worse than expected during regression period.

The difference between a and  $\mathrm{R_f}(1 - \beta)$  is called Jensen's alpha² and provides a measure of whether the investment in question earned a return greater than or less than its required return, given both market performance and risk. For instance, a firm that earned 15 percent during a period when firms with similar betas earned 12 percent will have earned an excess return of 3 percent; its intercept will also exceed  $\mathrm{R_f}(1 - \beta)$  by 3 percent.

The third statistic that emerges from the regression is the R-squared  $(\mathbb{R}^2)$  of the regression. While the statistical explanation of the R-squared is that it provides a measure of the goodness of fit of the regression, the economic rationale is that it provides an estimate of the proportion of the risk of a firm that can be attributed to market risk; the balance  $(1 - \mathbb{R}^2)$  can then be attributed to firm-specific risk.

The final statistic worth noting is the standard error of the beta estimate. The slope of the regression, like any statistical estimate, may be different from the true value, and the standard error reveals just how much error there could be in the estimate. The standard error can also be used to arrive at confidence intervals for the "true" beta value from the slope estimate.

# ILLUSTRATION 8.1: Estimating a Regression Beta for Boeing

Boeing Company is a firm in both the aerospace and defense businesses, and has been traded on the New York Stock Exchange (NYSE) for decades. In assessing risk parameters for Boeing, we compute the returns on the stock and the market index in two steps:

1. The returns to a stockholder in Boeing are computed month by month from January 1996 to December 2000. These returns include both dividends and price appreciation and are defined as follows:

$$
\text {S t o c k} _ {\text {B o e i n g}, j} = \left(\text {P r i c e} _ {\text {B o e i n g}, j} - \text {P r i c e} _ {\text {B o e i n g}, j - 1} + \text {D i v i d e n d s} _ {j}\right) / \text {P r i c e} _ {\text {B o e i n g}, j - 1}
$$ where Stock return  $\text{return}_{\text{Boeing},j} =$  Returns to a stockholder in Boeing in month  $j$ $\text{Price}_{\text{Boeing},j} =$  Price of Boeing stock at the end of month  $j$ $\text{Dividends}_j =$  Dividends on Boeing stock in month  $j$


Dividends are added to the returns of the month in which stockholders are entitled to the dividend.3 2. The returns on the S&P 500 market index are computed for each month of the period, using the level of the index at the end of each month and the monthly dividend on stocks in the index.

$$

\text {M a r k e t} \quad \text {r e t u r n} _ {\mathrm {j}} = \left(\text {I n d e x} _ {\mathrm {j}} - \text {I n d e x} _ {\mathrm {j - 1}} + \text {D i v i d e n d s} _ {\mathrm {j}}\right) / \text {I n d e x} _ {\mathrm {j - 1}}

$$ where index is the level of the index at the end of month  $j$  and dividends is the dividends paid on the index in month  $j$ . Although the S&P 500 and the NYSE Composite are the most widely used indexes for U.S. stocks, they are, at best, imperfect proxies for the market portfolio in the CAPM, which is supposed to include all assets.

Figure 8.1 graphs monthly returns on Boeing against returns on the S&P 500 index from January 1996 to December 2000.

The regression statistics for Boeing are as follows:

(a) Slope of the regression  $= 0.56$ . This is Boeing's beta, based on monthly returns from 1996 to 2000. Using a different time period for the regression or different return intervals (weekly or daily) for the same period can result in a different beta.

(b) Intercept of the regression  $= 0.54\%$ . This is a measure of Boeing's performance, when it is compared with  $\mathsf{R}_{\mathrm{f}}(1 - \beta)$ . The monthly riskless rate (since the returns used in the regression are monthly returns) between 1996 and 2000 averaged  $0.4\%$ , resulting in the following estimate for the performance:

$$
\mathrm{R}_{\mathrm{f}}(1 - \beta) = 0.4\% (1 - 0.56) = 0.18\%
$$

$$
\operatorname {Intercept} - \mathrm {R} _ {\mathrm {f}} (1 - \beta) = 0.54 \% - 0.18 \% = 0.36 \%
$$

This analysis suggests that Boeing performed  $0.36\%$  better than expected, when expectations are based on the CAPM, on a monthly basis between January 1996 and December 2000. This results in an annualized excess return of approximately  $4.41\%$ .

$$
\begin{array}{l} \text {A n n u a l i z e d e x c e s s r e t u r n} = (1 + \text {M o n t h l y e x c e s s r e t u r n}) ^ {1 2} - 1 \\ = (1 - .0036)^{12} - 1 = 4.41\% \\ \end{array}
$$

Note, however, that this does not imply that Boeing would be a good investment in the future.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/6d7636d27cac6e653299670ab289eb5174892a505d33f56e4bcf799a7745fe0d.jpg)

FIGURE 8.1 Boeing versus S&P 500 from 1996 to 2000

The performance measure also does not provide a breakdown of how much of this excess return can be attributed to the performance of the entire sector (aerospace and defense) and how much is specific to the firm. To make that breakdown, we would need to compute the excess over the same period for other firms in the aerospace and defense industry and compare them with Boeing's excess return. The difference would then be attributable to firm-specific actions. In this case, for instance, the average annualized excess return on other aerospace/defense firms between 1996 and 2000 was  $-0.85\%$ , suggesting that the firm-specific component of performance for Boeing is actually  $5.26\%$  [firm-specific Jensen's alpha =  $4.41\% - (-0.85\%)$ ].

(c)  $R$ -squared of the regression  $= 9.43\%$ . This statistic suggests that  $9.43\%$  of the risk (variance) in Boeing comes from market sources, and that the balance of  $90.57\%$  of the risk comes from firm-specific components. The latter risk should be diversifiable and therefore will not be rewarded with a higher expected return. Boeing's  $R$ -squared is lower than the median  $R$ -squared of companies listed on the New York Stock Exchange, which was approximately  $19\%$  in 2000.

(d) Standard error of beta estimate  $= 0.23$ . This statistic implies that the true beta for Boeing could range from 0.33 to 0.79 (subtracting and adding one standard error to beta estimate of 0.56) with  $67\%$  confidence and from 0.10 to 1.02 (subtracting and adding two standard errors to beta estimate of 0.56) with  $95\%$  confidence. While these ranges may seem large, they are not unusual for most U.S. companies. This suggests that we should consider estimates of betas from regressions with caution.

Using a Service Beta Most of us who use betas obtain them from an estimation service; Merrill Lynch, Barra, Value Line, Standard & Poor's, Morningstar, and Bloomberg are some of the well-known services. All these services begin with the regression beta just described and adjust them to reflect what they feel are better estimates of future risk. Although many of these services do not reveal their estimation procedures, Bloomberg is an exception. Figure 8.2 is the beta calculation page

# HISTORICAL BETA

Number of points may be insufficient for an accurate beta.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/e27f693702d5ca9581ebd7e2bfbf4848882fb3cb2610480dd6b78a471e3008c9.jpg)

BOEING CO

Relative Index

SPX

Period Monthly

Range 1/31/96 To

12/29/00

Market I Trade

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/bd0ea658202be7b627cd47da3ed0ae7d674267c46446ab944bf46d89d42e6119.jpg)

Alpha(Intercept) 0.50

R2 (Correlation) 0.10

Std Dev of Error 8.17

Std Error of Beta 0.23

Number of Points 59

ADJ BETA = (0.67) * RAW BETA

+（0.33）*1.0

Copyright 2001 BLOOMBERG L.P. Frankfurt:69-920410 Hong Kong:207-330-7500 New York:212-318-2000

1153-197-0 17-Apr-01 11:50:53

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/dfe1360cba19155bc020c65cd821448f84116985527c7700fc7889d6eaabb5ad.jpg)

S&P 500 INDEX

*Identifies latest observation

FIGURE 8.2 Beta Estimate for Boeing

Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

from Bloomberg for Boeing, using the same period as our regression (January 1996 to December 2000).

While the time period used is identical to the one used in our earlier regression, there are subtle differences between this regression and the one in Figure 8.1. First, Bloomberg uses price appreciation in the stock and the market index in estimating betas and ignores dividends. The fact that dividends are ignored does not make much difference for a company like Boeing, but it could make a difference for a company that either pays no dividends or pays significantly higher dividends than the market. This explains the mild differences in the intercept (0.50\% versus 0.54\%) and the beta (0.57 versus 0.56).

Second, Bloomberg also computes what it calls an adjusted beta, which is estimated as follows:

$$
\text {A d j u s t e d} = \text {R a w} (0. 6 7) + 1. 0 0 (0. 3 3)
$$

These weights (0.67 and 0.33) do not vary across stocks, and this process pushes all estimated betas toward 1. Most services employ similar procedures to adjust betas toward 1. In doing so, they are drawing on empirical evidence that suggests that the betas for most companies, over time, tend to move toward the average beta, which is 1. This may be explained by the fact that firms get more diversified in their product mix and client base as they get larger. While we agree with the notion that betas move toward 1 over time, the weighting process used by most services strikes us as arbitrary and not particularly useful.

Estimation Choices for Beta Estimation There are three decisions that must be made in setting up the regression described earlier. The first concerns the length of the estimation period. Most estimates of betas, including those by Value Line and Standard & Poor's, use five years of data, while Bloomberg uses two years of data. The trade-off is simple: A longer estimation period provides more data, but the firm itself might have changed in its risk characteristics over the time period. Boeing, during the period of our analysis, acquired both Rockwell and McDonnell Douglas, changing its business mix and its basic risk characteristics.

The second estimation issue relates to the return interval. Returns on stocks are available on an annual, a monthly, a weekly, a daily, and even an intraday basis. Using daily or intraday returns increases the number of observations in the regression, but it exposes the estimation process to a significant bias in beta estimates related to nontrading.[5] For instance, the betas estimated for small firms, which are more likely to suffer from nontrading, are biased downward when daily returns are used. Using weekly or monthly returns can reduce the nontrading bias significantly.[6] In this case, using weekly returns for two years yields a beta estimate for Boeing of only 0.88, while the monthly beta estimate over the same period is 0.96.

The third estimation issue relates to the choice of a market index to be used in the regression. The standard practice used by most beta estimation services is to estimate the betas of a company relative to the index of the market in which its stock trades. Thus, the betas of German stocks are estimated relative to the Frankfurt DAX, British stocks relative to the FTSE, Japanese stocks relative to the Nikkei, and U.S. stocks relative to the NYSE Composite or the S&P 500. While this practice may yield an estimate that is a reasonable measure of risk for the domestic investor, it may not be the best approach for an international or cross-border investor, who would be better served with a beta estimated relative to an international index. For instance, Boeing's beta between 1996 and 2000 estimated relative to the Morgan Stanley Capital International (MSCI) index that is composed of stocks from different global markets yields a value of 0.82.

To the extent that different services use different estimation periods, use different market indexes, and adjust the regression beta differently, they will often provide different beta estimates for the same firm at the same point in time. While these beta differences are troubling, note that the beta estimate delivered by each of these services comes with a standard error, and it is very likely that all the betas reported for a firm fall within the range of standard errors from the regressions.

Historical Beta Estimation for Companies in Smaller (or Emerging) Markets The process for estimating betas in markets with fewer stocks listed on them is no different from the process described earlier, but the estimation choices on return intervals, the market index, and the return period can make a much bigger difference in the estimate.

# INDEX DOMINATION AND BETA ESTIMATES

There are a number of indexes that are dominated by one or a few stocks. One of the most striking cases was the Helsinki Stock Exchange (HEX) in the late 1990s. Nokia, the telecommunications giant, represented 75 percent of the Helsinki Index in terms of market value. Not surprisingly, a regression of Nokia against the HEX yielded the results shown in Figure 8.3.

The regression looks impeccable. In fact, the noise problem that we noted with Boeing, arising from the high standard errors, disappears. The beta estimate has a standard error of 0.03, but the results are deceptive. The low standard error is the result of a regression of Nokia on itself, since it dominates the index. The beta is meaningless to a typical investor in Nokia, who is likely to be diversified, if not globally, at least across European stocks. Worse still, the betas of all other Finnish stocks against the HEX become betas estimated against Nokia. In fact, the beta of every other Finnish stock at the time of this regression was less than 1. How is this possible, you might ask, if the average beta is 1? It is the weighted average beta that is 1, and if Nokia (which comprises three-quarters of the index) has a beta greater than 1 (which it does), every other stock in the index could well end up with a beta less than 1.

# HISTORICAL BETA

# NOK1V FH Equity

Relative Index

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/d230d87764aa869ae71a51c26deb0f5c4895c44b654105d91d1f4562aac1e5bb.jpg)

Period Weekly

Range 8/14/98 To

Market Trade

NOKIA OYJ

HEXGENERAL INDEX

*Identifies latest observation

FIGURE 8.3 Beta Estimate for Nokia

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/76a73eed8b4222f6f54a880f53d5c4b3e1a09f5b2885eb8297f4a1d2fa5063d1.jpg)

Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

ADJ BETA 1.18

RAW BETA 1.27

Alpha(Intercept) 0.42

R2 (Correlation) 0.94

Std Dev of Error 1.87

Std Error of Beta 0.03

Number of Points 103

ADJ BETA = (0.67) * RAW BETA

+ (0.33) * 1.0

Copyright 2000 BLOMBERG L.P. Frankfurt:69-920410

Princeton:609-279-3000

Singapore:65-226-3000

Hong Kong:2-977-6000 London:207-330-7500 New York:212-318-2000

Sudebu:2-9772-8696 Tokyo:3-3201-8900 Saoyu:11-3049-4500

1653-197-0 11-Aug-00 14:56:17

■ When liquidity is limited, as it often is in many stocks in emerging markets, the betas estimated using short return intervals tend to be much more biased. In fact, using daily or even weekly returns in these markets will tend to yield betas that are not good measures of the true market risk of the company.

In many emerging markets, both the companies being analyzed and the market itself change significantly over short periods of time. Using five years of returns, as we did for Boeing, for a regression may yield a beta for a company (and market) that bears little resemblance to the company (and market) as it exists today.

■ Finally, the indices that measure market returns in many smaller markets tend to be dominated by a few large companies. For instance, the Bovespa (the Brazilian index) was dominated for several years by Telebras, which represented almost half the index. Nor is this just a problem with emerging markets. The DAX, the equity index for German stocks, is dominated by Allianz, Deutsche Bank, Siemens, and Daimler. When an index is dominated by one or a few companies, the betas estimated against that index are unlikely to be true measures of market risk. In fact, the betas are likely to be close to 1 for the large companies that dominate the index and wildly variable for all other companies.

# ILLUSTRATION 8.2: Estimating a Beta for Titan Cement Company

Titan Cement is a cement and construction company in Greece. Reproduced in Figure 8.4 is the beta estimate for Titan from April 1999 to April 2001 (using weekly returns) obtained from a beta service (Bloomberg). Note that the index used is the Athens Stock Exchange Index. Based on this regression, we arrive at the following equation:

$$
\begin{array}{l} \text {Returns} _ {\text {Titan Cement}} = 0.31 \% + 0.93 \text {Returns} _ {\text {ASE}} \\ [ 0.08] \end{array} \quad \text {R-squared} = 57 \%
$$

# HISTORICAL BETA

# TITK GA Equity

Relative Index

TASE

Period Weekly Range 4/23/99 Market Trade

4/13/01

ADJ BETA 0.95

RAW BETA 0.93

Alpha(Intercept) 0.31

R2 (Correlation) 0.57

Std Dev of Error 3.85

Std Error of Beta 0.08

Number of Points 103

TITAN CEMENT CO. S.A.

FTSE/ASE 20 INDEX

*Identifies latest observation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/351108ec7ed1660e1e86e3a518efa2febafd8d42054539e64515fee449dbb081.jpg)

FIGURE 8.4 Beta Estimate for Titan Cement: Athens Stock Exchange Index Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

ADJ BETA = (0.67) * RAW BETA + (0.33) * 1.0

Copyright: 2001 BLOOMBERG L. P. Frankfurt; 69-920410 Hong Kong; 2-372-6000 London; 207-330-7500 New York; 212-318-2000 Princeton; 603-279-3000 Singapore; 63-212-1000 Sydney; 2-977-8586 Tokyo; 3-320-818-1900 Tokyo; 1653-197-0-17 Apr-01-11; 52'55

# HISTORICAL BETA

# TITK GA Equity

Relative Index

MSER

Period Weekly

Range 4/23/99 To Market Trade

4/13/01

ADJ BETA RAW BETA

0.55

Alpha(Intercept)

0.24

R2 (Correlation)

0.03

Std Dev of Error

5.78

Std Error of Beta

0.20

Number of Points

103

ADJ BETA = (0.67) * RAW BETA

+ (0.33) * 1.0

Copyright 2001 BLOOMBERG L.P. Frankfurt:69-920410 Hong Kong:2-977-6000 London:207-330-7500 New York:212-318-2000

Princeton:609-279-3000 Singapore:65-212-1000 Sydney:2-9777-8686 Tokyo:3-3201-8900 São Paulo:11-3048-4500

5003 568 Fua16-11-3048-4500

1653-197-0 17-Apr-01 11:54:21

TITAN CEMENT CO. S.A.

MSCI EURO INDEX

*Identifies latest observation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/2d561a3bbdd1af009ab00e17a20f88daed06a3c9c9707b65e282dad99a2e0361.jpg)

FIGURE 8.5 Beta Estimate for Titan Cement: MSCI European Index

FIGURE 8.6 Beta Estimate for Titan Cement: MSCI Global Index

Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

# HISTORICAL BETA

# TITK GA Equity

Relative Index

NFT

Period Weekly

Range 4/23/99 To

4/13/01

Market 1 Trade

DJ BETA

0.55

RAW BETA

Alpha(Intercept) 0.32

R2 (Correlation) 0.03

Std Dev of Error 5.78

Std Error of Beta 0.19

Number of Points 103

ADJ BETA = (0.67) * RAW BETA

+ (0.33) * 1.0

Copyright 2001 BLOOMBERG L.P. Frankfurt:69-920410 Hong Kong:2-977-6000 London:202-330-7500 New York:212-318-2000

Princeton:609-279-3000 Singapore:65-212-1000 Sudan:2-9777-8686 Toku:3-3201-8900 São Paulo:11-3048-4500

1653-197-0 17-Apr-01 11:53:11

Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

The beta for Titan Cement, based upon this regression, is 0.93. The standard error of the estimate, shown in brackets below, is only 0.08, but the caveats about narrow indexes apply to the Athens Stock Exchange Index.

Drawing on the arguments in the previous section, if the marginal investor in Titan Cement is, in fact, an investor diversified across European companies, the appropriate index would have been a European stock index. The Bloomberg beta calculation with the MSCI European index is reported in Figure 8.5. Note the decline in beta to 0.33 and the increase in the standard error of the beta estimate.

In fact, if the marginal investor is globally diversified, Titan Cement's beta (as well as Boeing's beta in Illustration 8.1) should have been estimated against a global index. Using the Morgan Stanley Capital International (MSCI) global index, we get a regression beta of 0.33 in Figure 8.6. In fact, the beta estimate and the standard error look very similar to the ones estimated against the European index.

Estimating the Historical Beta for Private Firms The historical approach to estimating betas works only for assets that have been traded and have market prices. Private companies do not have a market price history. Consequently, we cannot estimate a regression beta for these companies. Nevertheless, we still need estimates of cost of equity and capital for these companies.

You might argue that this is not an issue if you do not value private companies; but you will still be confronted with this issue even when valuing publicly traded firms. Consider, for instance, the following scenarios:

If you have to value a private firm for an initial public offering, you will need to estimate discount rates for the valuation.

Even after a firm has gone public, there will be a period of time lasting as long as two years when there will be insufficient data for a regression.

If you are called upon to value the division of a publicly traded firm that is up for sale, you will not have past prices to draw on to run a regression.

■ Finally, if the firm has gone through significant restructuring—divestitures or recapitalization—in the recent past, regression betas become meaningless because the company itself has changed its risk characteristics.

Thus regression betas are either unavailable or meaningless in a significant number of valuations.

Some analysts assume that discounted cash flow valuation is not feasible in these scenarios; instead they use multiples. Others make assumptions about discount rates based on rules of thumb. Neither approach is appealing. The next section develops an approach for estimating betas that is general enough to apply to all of these companies.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/d2716d8c7c9c0b97f8725514840831f21c3c7e34646bbca588d0e5e06a99c009.jpg)

# risk.xls. This spreadsheet allows you to run a regression of stock returns against market returns and estimate risk parameters.

The Limitations of Regression Betas Much of what has been presented in this section represents an indictment of regression betas. In the case of Boeing, the biggest problem was that the beta had high standard error. In fact, this is not a problem unique to Boeing. Figure 8.7 presents the distribution of standard errors on beta estimates for U.S. companies.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/9a51be8545d183a50db6b93738e4ac4eeb7ced49a02ff5d90d8f047aae9439dc.jpg)

FIGURE 8.7 Distribution of Standard Errors on Beta—U.S. Firms from 2008 to 2010 Source: Bloomberg.

With the Nokia regression, we seem to cure the standard error problem but at a very large cost. The low standard errors reflect the domination of the index by a stock and result in betas that may be precise but bear no resemblance to true risk.

Changing the market index, the return period, and the return interval offers no respite. If the index becomes a more representative index, the standard errors on betas will increase, reflecting the fact that more of the risk in the stock is firm-specific. If the beta changes as the return period or interval changes, it creates more uncertainty about the true beta of the company.

In short, regression betas will almost always be either too noisy or skewed by estimation choices to be useful measures of the equity risk in a company. The cost of equity is far too important an input into a discounted cash flow valuation to be left to statistical chance.

Fundamental Betas A second way to estimate betas is to look at the fundamentals of the business. The beta for a firm may be estimated from a regression, but it is determined by decisions the firm has made on what business to be in and how much operating leverage to use in the business, and by the degree to which the firm uses financial leverage. This section examines an alternative way of estimating betas, where we are less reliant on historical betas and more cognizant of their fundamental determinants.

Determinants of Betas The beta of a firm is determined by three variables: (1) the type of business or businesses the firm is in, (2) the degree of operating leverage of the firm, and (3) the firm's financial leverage. Although we will use these determinants to find betas in the capital asset pricing model, the same analysis can be used to calculate the betas for the arbitrage pricing and the multifactor models as well.

Type of Business Since betas measure the risk of a firm relative to a market index, the more sensitive a business is to market conditions, the higher its beta. Thus, other things remaining equal, cyclical firms can be expected to have higher betas than noncyclical firms. Companies involved in housing and automobiles, two sectors of the economy that are very sensitive to economic conditions, should have higher betas than companies in food processing and tobacco, which are relatively insensitive to business cycles.

This view can be extended to a company's products. The degree to which a product's purchase is discretionary will affect the beta of the firm manufacturing the product. Firms whose products are much more discretionary to their customers—they can defer or delay buying these products—should have higher betas than firms whose products are viewed as necessary or less discretionary. Thus, the beta of Procter & Gamble, which sells diapers and daily household products, should be lower than the beta of Gucci, which manufactures luxury products.

Degree of Operating Leverage The degree of operating leverage is a function of the cost structure of a firm and is usually defined in terms of the relationship between fixed costs and total costs. A firm that has high fixed costs relative to total costs is said to have high operating leverage. A firm with high operating leverage will also have higher variability in operating income than would a firm producing a similar product with low operating leverage. Other things remaining equal, the higher variance in operating income will lead to a higher beta for the firm with high operating leverage.

Can firms change their operating leverage? While some of a firm's cost structure is determined by the business it is in (an energy utility has to build expensive power plants, and airlines have to buy or lease expensive planes), firms in the United States have become increasingly inventive in lowering the fixed cost component in their total costs. For instance, firms have made cost structures more flexible by:

■ Negotiating labor contracts that emphasize flexibility and allow the firm to make its labor costs more sensitive to its financial success.

■ Entering into joint venture agreements, where the fixed costs are borne by someone else.

Subcontracting manufacturing and outsourcing, which reduce the need for expensive plant and equipment.

While the arguments for such actions may be couched in terms of competitive advantage and flexibility, they do also reduce the operating leverage of the firm and its exposure to market risk.

While operating leverage affects betas, it is difficult to measure the operating leverage of a firm, at least from the outside, since fixed and variable costs are often aggregated in income statements. It is possible to get an approximate measure of the operating leverage of a firm by looking at changes in operating income as a function of changes in sales.

Degree of operating leverage  $= \%$  change in operating profit/\% change in sales

For firms with high operating leverage, operating income should change more than proportionately when sales change.

# SIZE, GROWTH, AND BETAS

Generally, smaller firms with higher growth potential are viewed as riskier than larger, more stable firms. While the rationale for this argument is clear when talking about total risk, it becomes more difficult to see when looking at market risk or betas. Should a smaller software firm have a higher beta than a larger software firm? One reason to believe that it should is operating leverage. If there is a setup cost associated with investing in infrastructure or economies of scale, smaller firms will have higher fixed costs than larger firms, leading in turn to higher betas for these firms.

With growth firms, the argument for higher betas rests on the notion of discretionary versus nondiscretionary purchases. For a high-growth firm to deliver on its growth, new customers have to adopt the product or existing customers have to buy more of the product. Whether they do so will depend, in large part, on how well-off they feel. This, in turn, will make the profits of high-growth firms much more dependent on how well the economy is doing, thus increasing their betas.

Degree of Financial Leverage Other things remaining equal, an increase in financial leverage will increase the beta of the equity in a firm. Intuitively, we would expect that the fixed interest payments on debt result in increasing income in good times and decreasing income in bad times. Higher leverage increases the variance in net income and makes equity investment in the firm riskier. If all the firm's risk is borne by the stockholders (i.e., the beta of debt is zero), and debt has a tax benefit to the firm, then,

$$
\beta_ {\mathrm {L}} = \beta_ {\mathrm {u}} [ 1 + (1 - t) (\mathrm {D} / \mathrm {E}) ]
$$ where  $\beta_{\mathrm{L}} =$  Levered beta for equity in the firm


$\beta_{\mathrm{u}} =$  Unlevered beta of the firm (i.e., the beta of the firm without any debt)  $\mathbf{t} =$  Marginal tax rate

$\mathrm{D / E} =$  Debt-to-equity ratio (market value)

Intuitively, we expect that as leverage increases (as measured by the debt-to-equity ratio), equity investors bear increasing amounts of market risk in the firm, leading to higher betas. The tax factor in the equation captures the tax benefits that accrue from interest payments.

The unlevered beta of a firm is determined by the nature of its products and services (cyclicality, discretionary nature) and its operating leverage. It is often also referred to as the asset beta, since it is determined by the assets owned by the firm. Thus, the levered beta, which is also the beta for an equity investment in a firm, is determined both by the riskiness of the business it operates in and by the amount of financial leverage risk it has taken on.

Since financial leverage multiplies the underlying business risk, it stands to reason that firms that have high business risk should be reluctant to take on financial leverage. It also stands to reason that firms that operate in stable businesses should be much more willing to take on financial leverage. Utilities, for instance, have historically had high debt ratios but have not had high betas, mostly because their underlying businesses have been stable and fairly predictable.

# ILLUSTRATION 8.3: Effects of Leverage on Betas: Boeing

From the regression for the period from 1996 to 2000, Boeing had a historical beta of 0.56. Since this regression uses stock prices of Boeing over this period, we began by estimating the average debt-to-equity ratio between 1996 and 2000, using market values for debt and equity.

$$

\text{Average debt-to-equity ratio between 1996 and} 2000 = 15.56 \%

$$

The beta over the 1996-2000 period reflects this average leverage. To estimate the unlevered beta over the period, a marginal tax rate of  $35\%$  is used:

$$

\begin{array}{l} \text {U n l e v e r e d} \beta a = \text {C u r r e n t} \beta a / [ 1 + (1 - \text {T a x} \text {r a t e}) (\text {A v e r a g e} \text {d e b t} / \text {E q u i t y}) ] \\ = 0. 5 6 / [ 1 + (1 - 0. 3 5) (0. 1 5 5 6) ] = 0. 5 1 \\ \end{array}

$$

The unlevered beta for Boeing over the 1996-2000 period is 0.51. The levered beta at different levels of debt can then be estimated:

$$

\text {L e v e r e d} = \text {U n l e v e r e d} \beta a \times [ 1 + (1 - \text {T a x r a t e}) (\text {D e b t / E q u i t y}) ]

$$

For instance, if Boeing were to increase its debt equity ratio to  $10\%$ , its equity beta will be:

$$

\text {Levered beta} (@ 10 \% \mathrm {D} / \mathrm {E}) = 0.51 \times [ 1 + (1 - 0.35) (0.10) ] = 0.543

$$

If the debt equity ratio were raised to  $25\%$ , the equity beta would be:

$$

\text {L e v e r e d b e t a} (@ 25 \% \mathrm {D} / \mathrm {E}) = 0. 5 1 \times [ 1 + (1 - 0. 3 5) (0. 2 5) ] = 0. 5 9

$$

The following table summarizes the beta estimates for different levels of financial leverage ranging from  $0\%$  to  $90\%$  debt.

<table><tr><td>Debt to Capital</td><td>Debt/Equity Ratio</td><td>Beta</td><td>Effect of Leverage</td></tr><tr><td>0\%</td><td>0.00\%</td><td>0.51</td><td>0.00</td></tr><tr><td>10\%</td><td>11.11\%</td><td>0.55</td><td>0.04</td></tr><tr><td>20\%</td><td>25.00\%</td><td>0.59</td><td>0.08</td></tr><tr><td>30\%</td><td>42.86\%</td><td>0.65</td><td>0.14</td></tr><tr><td>40\%</td><td>66.67\%</td><td>0.73</td><td>0.22</td></tr><tr><td>50\%</td><td>100.00\%</td><td>0.84</td><td>0.33</td></tr><tr><td>60\%</td><td>150.00\%</td><td>1.00</td><td>0.50</td></tr><tr><td>70\%</td><td>233.33\%</td><td>1.28</td><td>0.77</td></tr><tr><td>80\%</td><td>400.00\%</td><td>1.83</td><td>1.32</td></tr><tr><td>90\%</td><td>900.00\%</td><td>3.48</td><td>2.98</td></tr></table>

As Boeing's financial leverage increases, the beta increases concurrently.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/5c7517dc2ed3015f5f2c178c08343e7a3330cfc0cd01a995fad0d3f7ca6ba71a.jpg)

# levbeta.xls. This spreadsheet allows you to estimate the unlevered beta for a firm and compute the betas as a function of the leverage of the firm.

Bottom-Up Betas Breaking down betas into their business risk and financial leverage components provides us with an alternative way of estimating betas, in which we do not need past prices on an individual firm or asset to estimate its beta.

To develop this alternative approach, we need to introduce an additional property of betas that proves invaluable. The beta of two assets put together is a weighted average of the individual asset betas, with the weights based on market value. Consequently, the beta for a firm is a weighted average of the betas of all the different businesses it is in. We can estimate the beta for a firm in five steps:

Step 1: Identify the business or businesses the firm operates in.

Step 2: Find other publicly traded firms in each business and obtain their regression betas, which we use to compute an average beta for the firms.

Step 3: Estimate the average unlevered beta for the business by unlevering the average (or median) beta for the firms by their average (or median) debt-to-equity ratio. Alternatively, we could estimate the unlevered beta for each firm and then compute the average of the unlevered betas. The first approach is preferable because unlevering an erroneous regression beta is likely to compound the error.

$$

\text {U n l e v e r e d b e t a} _ {\text {b u s i n e s s}} = \text {B e t a} _ {\text {c o m p a r a b l e f i r m s}} / [ 1 + (1 - t) (\mathrm {D} / \mathrm {E} \text {r a t i o} _ {\text {c o m p a r a b l e f i r m s}}) ]

$$

Step 4: Estimate an unlevered beta for the firm being analyzed, taking a weighted average of the unlevered betas for the businesses it operates in, using the proportion of firm value derived from each business as the weights. If values are not available, use operating income or revenues as weights. This weighted average is called the bottom-up unlevered beta.

$$

\text {U n l e v e r e d} \quad \text {b e t a} _ {\text {f i r m}} = \sum_ {\mathrm {j} = 1} ^ {\mathrm {j} = \mathrm {k}} \left(\text {U n l e v e r e d} \quad \text {b e t a} _ {\mathrm {j}} \times \text {V a l u e w e i g h t} _ {\mathrm {j}}\right)

$$ where the firm is assumed to operating in  $k$  different businesses.

Step 5: Finally, estimate the current market values of debt and equity at the firm and use this debt-to-equity ratio to estimate a levered beta.

The betas estimated using this process are called bottom-up betas.

The Case for Bottom-Up Betas At first sight, the use of bottom-up betas may seem to leave us exposed to all of the problems noted with regression betas. After all, the betas for other publicly traded firms in the business are obtained from regressions. Notwithstanding this, bottom-up betas represent a significant improvement on regression betas for the following reasons:

Although each regression beta is estimated with standard error, the average across a number of regression betas has much lower standard error. The intuition is simple. A high standard error on a beta estimate indicates that it can be significantly higher or lower than the true beta. Averaging across these individual regression betas results in an average beta that is far more precise than the individual betas that went into it. In fact, if the estimation errors on individual firm betas are uncorrelated across firms, the savings in standard error can be stated as a function of the average standard error or beta estimates and the number of firms in the sample.

$$
\text {S t a n d a r d e r r o r} _ {\text {b o t t o m - u p b e t a}} = \frac {\text {A v e r a g e s t a n d a r d e r r o r} _ {\text {c o m p a r a b l e f i r m s}}}{\sqrt {\mathrm {n}}}
$$ where  $n$  is the number of firms in the sample. Thus, if the average standard error in beta estimates for software firms is 0.50 and the number of software firms is 100, the standard error of the average beta is only 0.05 (0.50/√100).


A bottom-up beta can be adapted to reflect actual changes in a firm's business mix and expected changes in the future. Thus if a firm divested a major portion of its operations last week, the weights on the businesses can be modified to reflect the divestiture. The same can be done with acquisitions. In fact, a firm's strategic plans to enter new businesses in the future can be brought into the beta estimates for future periods.
Firms do change their debt ratios over time. Although regression betas reflect the average debt-to-equity ratio maintained by the firm during the regression period, bottom-up betas use the current debt-to-equity ratio. If a firm plans to change its debt-to-equity ratio in the future, the beta can be adjusted to show these changes.
■ Finally, bottom-up betas wean us from our dependence on historical stock prices. While we do need these prices to get betas for comparable firms, all we need for the firm being analyzed is a breakdown of the businesses it is in. Thus, bottom-up betas can be estimated for private firms, divisions of businesses, and stocks that have just started trading in financial markets.

Computational Details Although the idea behind bottom-up betas is fairly simple, there are several computational details that deserve attention.

Defining comparable firms. First, we have to decide how narrowly we want to define a business. Consider, for instance, a firm that manufactures entertainment software. We could define the business as entertainment software and consider only companies that primarily manufacture entertainment software to be comparable firms. We could go even further and define comparable firms as firms manufacturing entertainment software with revenues similar to that of the company being analyzed. While there are benefits to narrowing the comparable firm definition, there is a cost. Each additional criterion added to the definition of comparable will mean that fewer firms make the list, and the savings in standard error that comprise the biggest benefit to bottom-up betas become smaller. A commonsense principle should therefore come into play. If there are hundreds of firms in a business, as there are in the software sector, you can afford to be more selective. If there are relatively few firms, not only do you have to become less selective, you might have to broaden the definition of comparable to bring other firms into the mix.


Estimating betas. Once the comparable firms in a business have been defined, you have to estimate the betas for these firms. Although it would be best to estimate the beta for each of these firms against a common and well-diversified equity index, it is usually easier to use service betas that are available for each of these firms. These service betas may be estimated against different indexes. For instance, if you define your business to be global telecommunications and obtain betas for global telecom firms from Bloomberg, these betas will be estimated against the local indexes. This is usually not a fatal problem, especially with large samples, since errors in the estimates tend to average out.
- Averaging method. The average beta for the firms in the sector can be computed in one of three ways. We could use market-weighted averages, but the savings in standard error that touted in the earlier section will be muted, especially if there are one or two very large firms in the sample. We could estimate the simple average of the betas of the companies, thus weighting all betas equally. The process weights the smallest firms in the sample disproportionately (to their market value), but the savings in standard error are likely to be maximized. If the data being average (betas, debt to equity ratios) have large outliers, we can use the median values.
- Controlling for differences. In essence, when we use betas from comparable firms, we are assuming that all firms in the business are equally exposed to business risk and have similar operating leverage. Note that the process of leveraging and unlevering of betas allows us to control for differences in financial leverage. If there are significant differences in operating leverage—cost structure—across companies, the differences in operating leverage can be controlled for as well. This would require estimation of a business beta, where the effects of operating leverage are taken out from the unlevered beta:

Business beta = Unlevered beta /[1 + (Fixed costs/Variable costs)]

Note the similarity to the adjustment for financial leverage; the only difference is that both fixed and variable costs are eligible for the tax deduction, and the tax rate is therefore no longer a factor. The business beta can then be levered to reflect the differences in operating leverage across firms.

# CASH AND BETAS

In the process for estimating bottom up betas, we suggested a two step process: getting a weighted average of the betas of the businesses that a firm is in, using the sector-average betas of other publicly traded firms in each business and then adjusting for the debt to equity ratio of the firm in question.

In making these adjustments, though, we have to deal that a firm may have a significant portion of its assets as cash. Since cash is usually invested in close to riskless, liquid investments, it should have a beta of zero. So, how does cash enter the computation? It does so in two places. When we computed the sector-average beta, we suggesting unlevering the average regression beta for the sector, using the average debt to equity ratio and marginal tax rate for the sector. Thus, with an average levered beta of 1.30, an average debt to equity ratio of  $50\%$  and an average tax rate of  $40\%$ , we estimate a sector-average unlevered beta of 1.00 for the entertainment business:

$$

\text {U n l e v e r e d} = 1. 3 0 / (1 + (1 -. 4 0) (. 5 0)) = 1. 0 0

$$

However, this is the unlevered beta for companies in this business and these companies will generally have some of these value in cash balances. Assume, for instance, that the average cash balance of entertainment firms in the sector is  $10\%$ . The unlevered beta for the entertainment business alone can then be computed as follows:

Unlevered beta for entertainment (.90) + Beta for cash (.10) = 1.00

Plugging in a beta of zero for cash, we get a beta for just the entertainment business:

Unlevered beta for entertainment business  $= 1.00 / .90 = 1.11$

We call this the beta for the sector, corrected for cash, and use it in the computation of bottom up betas.

The second place it shows up is when we compute the bottom up beta for a company. To estimate the bottom up beta for just the operating assets of a company like Boeing, we would take a weighted average of the cash corrected unlevered betas of the aerospace and defense businesses. This is the beta we would use to compute the cost of equity and cost of capital. To get a bottom up beta for Boeing as a company, we would then bring in the cash holdings as a separate asset and give it a beta of zero. This beta would then be a beta for all of Boeing's assets and for Boeing's equity in those assets. Each beta has a use in valuation.

# ILLUSTRATION 8.4: Estimating a Bottom-Up Beta for Vans Shoes—January 2001

Vans Shoes is a shoe manufacturing firm with a market capitalization of 191 million. To estimate the bottom-up beta for Vans Shoes, consider the betas of all publicly traded shoe companies in the following table:

<table><tr><td>Company Name</td><td>Beta</td><td>Market D/E</td><td>Tax Rate</td><td>Fixed/Variable</td></tr><tr><td>Barry (R.G.)</td><td>1.00</td><td>40.51\%</td><td>36.89\%</td><td>75.66\%</td></tr><tr><td>Brown Shoe</td><td>0.80</td><td>106.64\%</td><td>37.06\%</td><td>61.41\%</td></tr><tr><td>Candie&#x27;s Inc.</td><td>1.20</td><td>75.86\%</td><td>0.00\%</td><td>29.78\%</td></tr><tr><td>Converse Inc.</td><td>0.60</td><td>653.46\%</td><td>0.00\%</td><td>39.64\%</td></tr><tr><td>Deckers Outdoor Corp.</td><td>0.80</td><td>82.43\%</td><td>0.00\%</td><td>62.52\%</td></tr><tr><td>Florsheim Group Inc.</td><td>0.65</td><td>96.79\%</td><td>32.47\%</td><td>79.03\%</td></tr><tr><td>K-Swiss Inc.</td><td>0.65</td><td>0.69\%</td><td>40.94\%</td><td>56.92\%</td></tr><tr><td>Kenneth Cole ‘A’</td><td>1.05</td><td>0.29\%</td><td>39.50\%</td><td>56.97\%</td></tr><tr><td>LaCrosse Footwear Inc.</td><td>0.55</td><td>81.15\%</td><td>39.25\%</td><td>30.36\%</td></tr><tr><td>Maxwell Shoe Inc.</td><td>0.75</td><td>2.24\%</td><td>33.28\%</td><td>20.97\%</td></tr><tr><td>Nike Inc. ‘B’</td><td>0.90</td><td>9.47\%</td><td>39.50\%</td><td>46.07\%</td></tr><tr><td>Reebok Int&#x27;l.</td><td>1.05</td><td>171.90\%</td><td>32.28\%</td><td>35.03\%</td></tr><tr><td>Rocky Shoes &amp; Boots Inc.</td><td>0.80</td><td>93.51\%</td><td>0.00\%</td><td>26.89\%</td></tr><tr><td>Saucony Inc.</td><td>0.15</td><td>34.93\%</td><td>31.11\%</td><td>49.33\%</td></tr><tr><td>Shoe Carnival</td><td>0.85</td><td>2.18\%</td><td>39.97\%</td><td>35.03\%</td></tr><tr><td>Stride Rite Corp.</td><td>0.80</td><td>0.00\%</td><td>36.80\%</td><td>48.23\%</td></tr><tr><td>Timberland Co. ‘A’</td><td>1.10</td><td>15.23\%</td><td>32.00\%</td><td>49.50\%</td></tr><tr><td>Vulcan Int&#x27;l.</td><td>0.65</td><td>3.38\%</td><td>5.61\%</td><td>11.92\%</td></tr><tr><td>Wellco Enterprises Inc.</td><td>0.60</td><td>48.89\%</td><td>0.00\%</td><td>11.52\%</td></tr><tr><td>Weyco Group</td><td>0.30</td><td>11.91\%</td><td>35.74\%</td><td>24.69\%</td></tr><tr><td>Wolverine World Wide</td><td>1.35</td><td>44.37\%</td><td>32.62\%</td><td>32.31\%</td></tr><tr><td>Average (Simple)</td><td>0.79</td><td>75.04\%</td><td>25.95\%</td><td>42.08\%</td></tr><tr><td>Vans Shoes</td><td></td><td>9.41\%</td><td>34.06\%</td><td>31.16\%</td></tr></table>

In addition to the beta for each firm, the table reports the market debt-to-equity ratio, the effective tax rate, and a measure of operating leverage obtained by dividing selling, general, and administrative (SG&A) expenses (which we consider fixed) by other operating expenses (which we consider variable). We can estimate the unlevered beta for the business using the averages for these values:

Average beta  $= 0.79$

Average debt-to-equity ratio  $= 75.04\%$

Using the average tax rate of  $25.95\%$ , we can estimate the unlevered beta.

$$

\text {U n l e v e r e d} \quad \text {b e t a} = 0. 7 9 / [ 1 + (1 -. 2 5 9 5). 7 5 0 4 ] = . 5 0 8 1

$$

The beta for Vans Shoes can then be obtained using the firm's marginal tax rate of  $34.06\%$  and its market debt-to-equity ratio of  $9.41\%$ .

$$

\text {L e v e r e d b e t a} _ {\text {V a n s}} = 0. 5 0 8 1 [ 1 + (1 - . 3 4 0 6). 0 9 4 1 ] = . 5 3 9 7

$$

This levered beta is based on the implicit assumption that all shoe manufacturers have similar operating leverage. In fact, we could adjust the unlevered beta for the average fixed cost/variable cost ratio for the business and then lever back at the operating leverage for Vans Shoes:

$$

\begin{array}{l} \text{Average fixed cost/Variable cost ratio} = 42.08 \% \\ \text {B u s i n e s s} = \text {U n l e v e r e d} \beta a / (1 + \text {F i x e d c o s t s / V a r i a b l e c o s t s}) \\ = . 5 0 8 1 / 1. 4 2 0 8 = . 3 5 7 6 \\ \end{array}

$$

We can then use Vans' fixed cost/variable cost ratio of  $31.16\%$  to estimate an adjusted unlevered and levered beta.

Unlevered beta $_{\text{vans}} = 0.3576(1 + .3116) = .4691$

Levered beta  $= .4691[1 + (1 - .3406).0941] = .4981$

By having a debt-to-equity ratio, and operating leverage, that is lower than the average for the industry, Vans Shoes ends up with a beta much lower than that of the industry.

# ILLUSTRATION 8.5: Estimating a Bottom-Up Beta for Boeing—September 2000

Boeing has undergone a significant change in both its business mix and its financial leverage over the past five years. Not only did it acquire Rockwell and McDonnell Douglas, giving it a major foothold in the defense business, but it borrowed substantial amounts to make these acquisitions. Since these events have occurred over time, the historical regression beta does not fully reflect the effects of these changes. To estimate Boeing's beta in 2000, we broke its business into two areas:

1. Commercial aircraft, which is Boeing's core business of manufacturing commercial jet aircraft and providing related support services.
2. Information, space, and defense systems (ISDS), which include research, development, production, and support of military aircraft, helicopters, and missile systems.

Each of these areas of business has very different risk characteristics, and the unlevered beta for each business was estimated by looking at comparable firms in each business. The following table summarizes these estimates.

<table><tr><td>Segment</td><td>Revenues</td><td>Value/Sales Ratio for Segment</td><td>Estimated Value</td><td>Unlevered Beta</td><td>Segment Weight</td><td>Weighted Beta</td></tr><tr><td>Commercial aircraft</td><td>$26,929</td><td>1.12</td><td>$30,160</td><td>0.91</td><td>70.39\%</td><td>0.6405</td></tr><tr><td>ISDS</td><td>$18,125</td><td>0.70</td><td>$12,688</td><td>0.80</td><td>29.61\%</td><td>0.2369</td></tr><tr><td>Boeing</td><td>$45,054</td><td></td><td>$42,848</td><td></td><td>100.00\%</td><td>0.8774</td></tr></table>

For commercial aircraft there are no truly comparable firms. We looked at Boeing's own beta prior to its expansion in the defense business and computed the unlevered beta using this estimate. For ISDS, we used 17 firms that derived the bulk of their revenues from defense contracting, and computed the average beta and debt-to-equity ratio for these firms. The unlevered beta was computed using these averages. The values for each of the divisions were estimated using the revenues from each segment and a typical revenue multiple for that type of business. The unlevered beta for Boeing as a company in 2000 can be estimated by taking a value-weighted average of the betas of each of the different business areas. This is reported in the last column to be 0.8774.

The equity beta can then be estimated using the debt-to-equity ratio for Boeing in 2000. Combining the market value of equity of  $55.20 billion and the value of debt of$ 7.85 billion, and using a 35\% tax rate for the firm, we arrive at the beta for Boeing.

$$

\text {E q u i t y b e t a f o r B o e i n g} = 0. 8 7 7 4 [ 1 + (1 -. 3 5) (7. 8 5 / 5 5. 2) ] = 0. 9 5 8 5

$$

This is very different from the historical beta of 0.56 that we obtained from the regression, but it is, in our view, a much truer reflection of the risk in Boeing in 2000.

# ILLUSTRATION 8.6: Estimating a Bottom-Up Beta for Titan Cement—January 2000

To estimate a beta for Titan Cement, we began by defining comparable firms as other cement companies in Greece but found only one comparable firm. When we expanded the list to include cement companies across Europe, we increased our sample to nine firms. Since we did not see any reason to restrict our comparison to just European firms, we decided to look at the average beta for cement companies globally. There were 108 firms in this sample, with an average beta of 0.99, an average tax rate of  $34.2\%$ , and an average debt-to-equity ratio of  $27.06\%$ . We used these numbers to arrive at an unlevered beta of 0.84.

$$

\text {U n l e v e r e d b e t a f o r c e m e n t} = 0. 9 9 / [ 1 + (1 - . 3 4 2) (. 2 7 0 6) ] = 0. 8 4

$$

We then used Titan's market values of equity (566.95 million Gdr) and debt (13.38 million Gdr) to estimate a levered beta for its equity:

$$

\text {L e v e r e d} = 0. 8 4 [ 1 + (1 -. 2 4 1 4) (1 3. 3 8 / 5 6 6. 9 5) ] = 0. 8 6

$$

We used Titan's marginal tax rate of  $24.14\%$  in this calculation.

# HOW WELL DO BETAS TRAVEL?

Often, when analyzing firms in small or emerging markets, we have to estimate betas by looking at firms in the same business but traded on other markets. This is what we did when estimating the beta for Titan Cement. Is this appropriate? Should the beta for a steel company in the United States be comparable to that of a steel company in Indonesia? We see no reason why it should not be. But the company in Indonesia has much more risk, you might argue. We do not disagree, but the fact that we use similar betas does not mean that we believe that the costs of equity are identical across all steel companies. In fact, using the approach described in the preceding chapter, the risk premium used to estimate the cost of equity for the Indonesian company will incorporate a country risk premium, whereas the cost of equity for the U.S. company will not. Thus, even if the betas used for the two companies are identical, the cost of equity for the Indonesian company will be much higher.

There are a few exceptions to this proposition. Recall that one of the key determinants of betas is the degree to which a product or service is discretionary. It is entirely possible that products or services that are discretionary in one market (and command high betas) may be nondiscretionary in another market (and have low betas). For instance, phone service is viewed as a nondiscretionary product in most developed markets, but is a discretionary product in emerging markets. Consequently, the average beta estimated by looking at telecom firms in developed markets will understate the true beta of a telecom firm in an emerging market. For the latter beta, the comparable firms should be restricted to include only telecom firms in emerging markets.

Calculating Betas after a Major Restructuring The bottom-up process of estimating betas provides a solution when firms go through major restructurings that change both their business mix and their leverage. In these cases, the regression betas are misleading because they do not reflect fully the effects of these changes. Boeing's beta estimated using the bottom-up approach is likely to provide a more precise estimate than the historical beta from a regression of Boeing's stock prices, given Boeing's acquisitions of Rockwell and McDonnell Douglas and its increase in leverage. In fact, a firm's beta can be estimated using the bottom-up approach even before the restructuring becomes effective. Illustration 8.7, for instance, estimates Boeing's beta just before and after its acquisition of McDonnell Douglas, allowing for the changes in both the business mix and the leverage.

# ILLUSTRATION 8.7: Beta of a Firm after an Acquisition: Boeing and McDonnell Douglas

In 1997, Boeing announced that it was acquiring McDonnell Douglas, another company involved in the aerospace and defense business. At the time of the acquisition, the two firms had the following market values and betas:

<table><tr><td>Company</td><td>Beta</td><td>Debt</td><td>Equity</td><td>Firm Value</td></tr><tr><td>Boeing</td><td>0.95</td><td>$3,980</td><td>$32,438</td><td>$36,418</td></tr><tr><td>McDonnell Douglas</td><td>0.90</td><td>$2,143</td><td>$12,555</td><td>$14,698</td></tr></table>

Note that the market values of equity used for the two firms reflect the market values after the acquisition announcement and reflect the acquisition price agreed on for McDonnell Douglas shares.

In order to evaluate the effects of the acquisition on Boeing's beta, we first examine the effects of the merger on the business risk of the combined firm by estimating the unlevered betas of the two companies and calculating the combined firm's unlevered beta. (We used a marginal tax rate of  $35\%$  for both firms.)

$$

\text {B o e i n g s} = 0. 9 5 / [ 1 + (1 - . 3 5) \times (3, 9 8 0 / 3 2, 4 3 8) ] = 0. 8 8

$$

$$

\text {M c D o n n e l l D o u g l a s s} = 0. 9 0 / [ 1 + (1 -. 3 5) \times (2, 1 4 3 / 1 2, 5 5 5) ] = 0. 8 1

$$

The unlevered beta for the combined firm can be calculated as the weighted average of the two unlevered betas, with the weights based on the market values of the two firms.

$$

\begin{array}{l} \text {U n l e v e r e d} = 0. 8 8 (3 6, 4 1 8 / 5 1, 1 1 6) + 0. 8 1 (1 4, 6 9 8 / 5 1, 1 1 6) \\ = 0. 8 6 \\ \end{array}

$$

Boeing's acquisition of McDonnell Douglas was accomplished by issuing new stock in Boeing to cover the value of McDonnell Douglas' equity of 12,555 million. Since no new debt was used to finance the deal, the debt outstanding in the firm after the acquisition is just the sum of the debt outstanding at the two companies before the acquisition.

$$

\begin{array}{l} D e b t = M c d o n n e l l D o u g l a s \text {s} \text {o l d} \text {d e b t} + B o e i n g \text {s} \text {o l d} \text {d e b t} \\ = \3,980 + \2,143 = \$ 6,123 \text{ million} \\ \end{array}

$$

$$

\begin{array}{l} E q u i t y = B o e i n g s \text {o l d} + N e w \\ = \32,438 + \12,555 = \44,993 \text{ million} \\ \end{array}

$$

The debt/equity ratio can then be computed as follows:

$$

\mathrm{D / E ratio} = 6,123 / 44,993 = 13.61 \%

$$

This debt/equity ratio in conjunction with the new unlevered beta for the combined firm yields a new beta of:

$$

\text {N e w} = 0. 8 6 [ 1 + (1 - . 3 5) (. 1 3 6 1) ] = 0. 9 4

$$

Accounting Betas A third approach is to estimate the market risk parameters from accounting earnings rather than from traded prices. Thus, changes in earnings at a division or a firm, on a quarterly or an annual basis, can be related to changes in earnings for the market, in the same periods, to arrive at an estimate of a accounting beta to use in the CAPM. While the approach has some intuitive appeal, it suffers from three potential pitfalls. First, accounting earnings tend to be smoothed out relative to the underlying value of the company, as accountants spread expenses and income over multiple periods. This results in betas that are "biased down," especially for risky firms, or "biased up" for safer firms. In other words, betas are likely to be closer to 1 for all firms using accounting data.

Second, accounting earnings can be influenced by nonoperating factors, such as changes in depreciation or inventory methods, and by allocations of corporate expenses at the divisional level. Finally, accounting earnings are measured, at most, once every quarter, and often only once every year, resulting in regressions with few observations and not much explanatory power (low R-squared, high standard errors).

# ILLUSTRATION 8.8: Estimating Accounting Betas: Defense Division of Boeing—1995

Having operated in the defense business for decades, Boeing has a record of its profitability. These profits are reported in the following table, together with earnings changes for companies in the S&P 500 from 1980 to 1994.

<table><tr><td>Year</td><td>S&amp;P 500</td><td>Boeing&#x27;s Defense Business</td></tr><tr><td>1980</td><td>-2.10\%</td><td>-12.70\%</td></tr><tr><td>1981</td><td>-6.70\%</td><td>-35.56\%</td></tr><tr><td>1982</td><td>-45.50\%</td><td>27.59\%</td></tr><tr><td>1983</td><td>37.00\%</td><td>159.36\%</td></tr><tr><td>1984</td><td>41.80\%</td><td>13.11\%</td></tr><tr><td>1985</td><td>-11.80\%</td><td>-26.81\%</td></tr><tr><td>1986</td><td>7.00\%</td><td>-16.83\%</td></tr><tr><td>1987</td><td>41.50\%</td><td>20.24\%</td></tr><tr><td>1988</td><td>41.80\%</td><td>18.81\%</td></tr><tr><td>1989</td><td>2.60\%</td><td>-29.70\%</td></tr><tr><td>1990</td><td>-18.00\%</td><td>-40.00\%</td></tr><tr><td>1991</td><td>-47.40\%</td><td>-35.00\%</td></tr><tr><td>1992</td><td>64.50\%</td><td>10.00\%</td></tr><tr><td>1993</td><td>20.00\%</td><td>-7.00\%</td></tr><tr><td>1994</td><td>25.30\%</td><td>11.00\%</td></tr></table>

Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

Regressing the changes in profits in the defense division ( $\Delta$  Earnings $_{\text{defense}}$ ) against changes in profits for the S&P 500 ( $\Delta$  Earnings $_{\text{S&P}}$ ) yields the following:

$$

\Delta E a r n i n g s _ {\text {d e f s e n e}} = - 0. 0 3 + 0. 6 5 \Delta E a r n i n g s _ {\mathrm {S} \& \mathrm {P}}

$$

Based on this regression, the beta for the defense division is 0.65.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/41ba7fe2c5c948cdbabbdfe6306c141d49817d71965b81aca19e2242126a3135.jpg) accbeta.xls: This spreadsheet allows you to estimate the accounting beta on a division or firm.


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/59d9031675fb8a53495b834e8072e2c29128c8950487904ce258d2a59708c246.jpg) spearn.xls: This dataset on the Web has earnings changes, by year, for the S&P 500 going back to 1960.


Market, Bottom-Up, and Accounting Betas: Which One Do We Use? For most publicly traded firms, betas can be estimated using accounting data or market data or from the bottom-up approach. Since the betas will almost never be the same using these different approaches, the question is, which one do we use? We would almost never use accounting betas, for all the reasons specified earlier. We are almost as reluctant to use historical market betas for individual firms because of the standard errors in beta estimates, the failures of the local indexes (as is the case with most emerging market companies), and the inability of these regressions to reflect the effects of major changes in the business mix and financial risk at the firm. Bottom-up betas, in our view, provide us with the best beta estimates for three reasons:

1. They allow us to consider changes in business and financial mix, even before they occur.
2. They use average betas across large numbers of firms, which tend to be less noisy than individual firm betas.
3. They allow us to calculate betas by area of business for a firm, which is useful both in the context of investment analysis and in valuation.

Measuring Country Risk Exposure (Lambda) Chapter 7 introduced the concept of country risk exposure and the notion of lambda—a measure of a company's exposure to country risk. In this section, we want to consider intuitively what factors determine this exposure and how best to estimate lambda. A company's exposure to country risk is affected by almost every aspect of its operations, beginning with where its factories are located and who its customers are and continuing with what currency its contracts are denominated in and how well it manages its exposure to exchange rate risk. Much of this information, however, is internal information and not available to someone valuing the firm from the outside. As a practical matter, then, we can estimate lambda using one of the following approaches:

■ Revenue breakdown. The simplest way of estimating lambda is to use the proportion of a firm's revenues that are generated in a country and scale this to the proportion of the revenues generated by the average firm in that country.

$$

\lambda = \frac {\text {P r o p o r t i o n o f r e v e n u e s i n c o u n t r y} _ {\text {f i r m}}}{\text {P r o p o r t i o n o f r e v e n u e s i n c o u n t r y} _ {\text {a v e r a g e f i r m}}}

$$

Consider Embraer, a Brazilian aerospace company that in 2008 derived about 9 percent of its revenues from Brazil. If the average Brazilian company generates 60 percent of its revenues in Brazil, this would translate into a lambda of 0.15 (0.09/.060). Note, though, that if Embraer gets any of its remaining revenue in other risky emerging markets, you would have to compute lambdas against these markets as well.

■ Regression versus country bond. A second approach to estimating lambdas would be to run regressions of stock returns for each firm in the emerging market against the returns on the country bond. In effect, we are assuming that returns on the country bond are reflections of changes in country risk: Country bond prices increase when country risk decreases and decrease when country risk increases. When we run this regression, we are measuring how sensitive a company's stock price is to changes in country risk perceptions. To provide an illustration: Regressing the stock prices of Embraer against the dollar-denominated Brazilian government bond from 2006 to 2008 yields a slope (lambda) of 0.27. Put in intuitive terms, Embraer's returns moved 0.27 percent for every 1 percent change in returns on the bond. That would be our estimate of lambda for the company.


# LAMBdas: WORTH THE TROUBLE?

The intuition behind the use of lambdas is that a company's risk exposure should be based on where it does business and not where it is incorporated. Thus, an emerging market company that gets the bulk of its revenues in developed markets should be less exposed to the country risk in that emerging market. By the same token, a developed market company that gets large portions of its revenues in emerging markets should see its cost of equity increase because of that exposure.

Having said this, it is often difficult to obtain the information needed to estimate lambdas. The lambda for a company should depend not only on where it gets its revenues, but where it produces its goods and the degree to which it insures against country risk using derivatives or conventional insurance. For most companies, the information on these inputs is either unavailable or incomplete. Thus, any benefits from estimating lambdas may be drowned out by the estimation error in those lambdas. For firms that have revenue exposures that are similar to those of other firms in the market, it may make sense to stick with the standard approach of using beta to capture company risk. There are two scenarios where it does make sense to estimate lambdas:

1. Emerging market companies with disproportionately large developed market exposures. In almost every emerging market, there are a few companies that are incorporated in that market that derive the bulk of their revenues outside the market: Tata Consulting Services in India and Embraer in Brazil are good examples, deriving less than  $10\%$  of their revenues in the domestic market. For these companies, we would expect low lambdas against their local markets, reflecting their lighter domestic risk exposure.
2. Developed market companies with large revenues from risky emerging markets. Note that it is not revenues from foreign markets per se that create a problem but revenues from markets that have significant political and economic risk. Nestle and Coca-Cola, for instance, are developed market companies that have significant revenues from Asia and Latin America. For these companies, we should be adjusting the cost of equity for the additional risk exposure from emerging market countries.

# From Betas to Cost of Equity

Having estimated the riskless rate and the risk premium(s) in Chapter 7 and the beta(s) in this chapter, we can now estimate the expected return from investing in equity at any firm. In the CAPM, this expected return can be written as:

$$

\text {E x p e c t e d} = \text {R i s k l e s s} + \text {B e t a} \times \text {E x p e c t e d}

$$ where the riskless rate would be the rate on a long-term government bond; the beta would be either the historical, fundamental, or accounting betas described earlier; and the risk premium would be either the historical premium or an implied premium.


In the arbitrage pricing and multifactor model, the expected return would be written as follows:

$$

\text {E x p e c t e d} = \text {R i s k l e s s} + \sum_ {\mathrm {j} - 1} ^ {\mathrm {j} = \mathrm {n}} \beta_ {\mathrm {j}} \times \text {R i s k} \text {p r e m i u m} _ {\mathrm {j}}

$$ where the riskless rate is the long-term government bond rate;  $\beta_{j}$  is the beta relative to factor  $j$ , estimated using historical data or fundamentals; and risk premium  $j$  is the risk premium relative to factor  $j$ , estimated using historical data.

The expected return on an equity investment in a firm, given its risk, has implications for both equity investors in the firm and the managers of the firm. For equity investors, it is the rate they need to earn to be compensated for the risk they have taken in investing in the equity of the firm. If, after analyzing an investment, they conclude they cannot make this return, they would not buy this investment; alternatively, if they decide they can make a higher return, they would make the investment. For managers in the firm, the return investors need to make to break even on their equity investments becomes the return they have to try to deliver to keep these investors from becoming restive and rebellious. Thus, it becomes the rate they have to beat in terms of returns on their equity investments in projects. In other words, this is the cost of equity to the firm.

# ILLUSTRATION 8.9: Estimating the Cost of Equity for Boeing—December 2000

Now that we have an estimate of beta of 0.9585 for Boeing, based on the bottom-up estimates, we can estimate its cost of equity. To make the estimate, we used the prevailing Treasury bond rate of  $5\%$  and a historical risk premium of  $5.51\%$ .

$$
\text {Cost of equity} = 5.00 \% + 0.9585(5.51 \%) = 10.28 \%
$$

There are two points to make about this estimate. The first is that the cost of equity would have been significantly lower if we had chosen to use the implied equity premium on December 31, 2000, which was about  $2.87\%$  (see Chapter 7).

$$
\text{Cost of equity} = 5.00 \% + 0.9585(2.87 \%) = 7.75 \%
$$

The second point is that we are not considering the exposure that Boeing has to emerging market risk from its business. If the exposure is significant, we should be adding a country risk premium to the cost of equity estimate.

# ILLUSTRATION 8.10: Estimating the Cost of Equity for Embraer—March 2008

Embraer is a Brazilian aerospace firm. To estimate its cost of equity, we first estimated the unlevered beta by looking at aerospace firms globally.

Unlevered beta for aerospace firms  $= 0.75$

Embraer's debt-to-equity ratio at the time of this analysis was  $26.84\%$ ,[10] resulting in a levered beta for Embraer (with a marginal tax rate of  $34\%$  for Brazil):

Levered beta for Embraer  $= 0.75[1 + (1 - .34).2684] = 0.88$

To estimate the cost of equity for Embraer in U.S. dollar terms, we began with the Treasury bond rate of  $3.8\%$  at the time of the analysis, but incorporated the country risk associated with Brazil into the risk premium. Using the approach described in Chapter 7, we estimated a country risk premium of  $3.66\%$  in March 2008; the default spread for Brazil at the time was  $2.00\%$  and the Bovespa was approximately 1.83 times more volatile than the Brazilian government bond. In conjunction with a mature market risk premium of  $4\%$  estimated for the United States at the time, this yields a cost of equity of  $10.54\%$ .

Cost of equity for Embraer  $= 3.8\% +0.88(4.00\% +3.66\%) = 10.54\%$

Again, there are several points that are worth making on this estimate. The first is that this cost of equity can be expected to change over time as Brazil matures as a market and country risk declines. The second is that we have assumed that betas measure exposure to country risk. A company like Embraer that derives the bulk of its revenues outside Brazil could argue that it is less exposed to country risk. In the preceding section, we introduced the concept of lambda and came up with two estimates for Embraer: 0.15, using revenue exposure, and 0.27, using the regression of Embraer stock returns against the Brazilian dollar bond. We will use the latter to compute the cost of equity:

$$
\begin{array}{l} \text {C o s t} = \text {R i s k - f r e e r a t e} + \text {B e t a (M u t e r m a r k e t r i s k p r e m i u m)} \\ + \lambda (\text {C o u n t r y} \\ = 3.8\% +0.88(4.00\%) + 0.27(3.66\%) = 8.31\% \\ \end{array}
$$

The final point is that the cost of equity in dollar terms can be converted into a nominal Brazilian real (BR) cost of equity fairly simply by considering the differences in expected inflation rates in Brazil and the United States. For instance, if the expected inflation rate in Brazil is  $6\%$  and the expected inflation rate in the United States is  $2\%$ , the cost of equity in nominal BR is as follows:

$$
\begin{array}{l} \text {C o s t} = \text {e q u i t y} _ {\text {n o m i n a l B R}} = (1 + \text {C o s t} \text {o f e q u i t y} _ {\S}) (\text {I n f l a t i o n r a t e} _ {\text {B r a i z}} / \text {I n f l a t i o n r a t e} _ {\text {U . S .}}) - 1 \\ = (1.0831)(1.06 / 1.02) - 1 = 12.56 \% \\ \end{array}
$$

Implicitly, we assume that BR risk-free rates around the world are the same with this approach and that the risk premium scales up with inflation as well. The alternative is to estimate a cost of equity from scratch, beginning with a nominal BR risk-free rate (which was  $8\%$  at the time of this analysis) and adding the premiums from before:

$$
\begin{array}{l} \text {C o s t} = \text {e q u i t y} _ {\text {n o m i a l B R}} = \text {R i s k - f r e e r a t e} + \text {B e t a} (\text {M a t u r e m a t k e r} \\ + \lambda (\text {C o u n t r y} \\ = 8 \% + 0.88(4.00 \%) + 0.27(3.66\%) = 12.51 \% \\ \end{array}
$$

Substituting a real risk-free rate in the equation would yield a real cost of equity. Thus, if we assume that the real risk-free rate is  $1.5\%$  (the rate on an inflation-adjusted TIPS bond), the real cost of equity would have been:

$$
\text{Cost of equity} = 1.5 \% + 0.88 (4 \%) + 0.27 (3.66 \%) = 6.01 \%
$$

# COST OF EQUITY AND A SMALL FIRM PREMIUM

Chapter 6 presented evidence of a small firm premium—small market-cap stocks earn higher returns than large market-cap stocks with equivalent betas. The magnitude and persistence of the small firm premium can be viewed as evidence that the capital asset pricing model understates the risk of smaller companies, and that a cost of equity based purely on a CAPM beta will therefore yield too low a number for these firms. There are some analysts who argue that you should therefore add a premium to the estimated cost of equity for smaller firms. Since small cap stocks have earned about 4 percent more than large cap stocks over the past few decades, you could consider this a reasonable estimate for the small firm premium. To estimate the cost of equity for a small cap stock with a beta of 1.2 (assuming a risk-free rate of 3.5 percent and a market risk premium of 4 percent), for instance, you would do the following:

Cost of equity for small cap stock  $=$  Risk-free rate + Beta

$$
\begin{array}{l} \times \text {M a r k e t} \\ + \text {S m a l l} \\ = 3.5 \% + 1.2 \times 5 \% + 4 \% \\ = 13.5 \% \\ \end{array}
$$

We would introduce four notes of caution with this approach. First, this opens the door to a series of adjustments that you could make to the cost of equity, reflecting the numerous inefficiencies cited in Chapter 6. For instance, you could estimate a low PE premium, a low price-to-book premium, and a high dividend yield premium and add them all to the cost of equity. If our objective in valuation is to uncover market mistakes, it would be a mistake to start off with the presumption that markets are right in their assessments in the first place. Second, a better way of incorporating the small firm premium would be to identify the reasons for the premium and then develop more direct measures of risk. For instance, assume that the higher risk of small cap stocks comes from the higher operating leverage that these firms have, relative to their larger competitors. You could adjust the betas for operating leverage (as we did a few pages ago for Vans Shoes) and use the higher betas for small firms. Third, the small cap premium of 4 percent that we estimated from historical data comes with a significant standard error (of approximately 2 percent). Thus, the true small cap premium can be 8 percent or 0 percent. Fourth, even if your company is a small company today and deserves a small cap premium, assuming a high growth rate for your firm will make it a large cap firm eventually. It follows that you would expect the small cap premium to fade over time.

# FROM COST OF EQUITY TO COST OF CAPITAL

Although equity is undoubtedly an important and indispensable ingredient of the financing mix for every business, it is but one ingredient. Most businesses finance some or much of their operations using debt or some security that is a combination of equity and debt. The costs of these sources of financing are generally very different from the cost of equity, and the cost of financing for a firm should reflect their costs as well, in proportion to their use in the financing mix. Intuitively, the cost of capital is the weighted average of the costs of the different components of financing—including debt, equity, and hybrid securities—used by a firm to fund its financial requirements. This section examines the process of estimating the cost of financing other than equity, and the weights for computing the cost of capital.

# Calculating the Cost of Debt

The cost of debt measures the current cost to the firm of borrowing funds to finance projects. In general terms, it is determined by the following variables:

■ The riskless rate. As the riskless rate increases, the cost of debt for firms will also increase.

- The default risk (and associated default spread) of the company. As the default risk of a firm increases, the cost of borrowing money will also increase. Chapter 7 looked at how the default spread has varied across time and can vary across maturity.
- The tax advantage associated with debt. Since interest is tax deductible, the after-tax cost of debt is a function of the tax rate. The tax benefit that accrues from paying interest makes the after-tax cost of debt lower than the pretax cost. Furthermore, this benefit increases as the tax rate increases.

$$
A f t e r - t a x \text {c o s t} = \text {P r e t a x c o s t} (1 - \text {T a x r a t e})
$$

This section focuses on how best to estimate the default risk in a firm and to convert that default risk into a default spread that can be used to come up with a cost of debt.

Estimating the Default Risk and Default Spread of a Firm The simplest scenario for estimating the cost of debt occurs when a firm has long-term bonds outstanding that are widely traded. The market price of the bond in conjunction with its coupon and maturity can serve to compute a yield that is used as the cost of debt. For instance, this approach works for a firm that has dozens of outstanding bonds that are liquid and trade frequently.

Some firms have bonds outstanding that do not trade on a regular basis. Since these firms are usually rated, we can estimate their costs of debt by using their ratings and associated default spreads. Thus, a firm with an A rating can be expected to have a cost of debt approximately 1.00 percent higher than the Treasury bond rate, since this is the spread typically paid by AA-rated firms.

Many companies choose not to get rated and smaller firms and most private businesses fall into this category. Although ratings agencies have sprung up in many emerging markets, there are still a number of markets where companies are not rated on the basis of default risk. When there is no rating available to estimate the cost of debt, there are two alternatives:

1. Recent borrowing history. Many firms that are not rated still borrow money from banks and other financial institutions. By looking at the most recent borrowings made by a firm, we can get a sense of the types of default spreads being charged the firm and use these spreads to come up with a cost of debt.
2. Estimate a synthetic rating. An alternative is to play the role of a ratings agency and assign a rating to a firm based on its financial ratios; this rating is called a synthetic rating. To make this assessment, we begin with rated firms and examine the financial characteristics shared by firms within each ratings class. To illustrate, Table 8.1 lists the range of interest coverage ratios for small (less than 5 billion in market cap) nonfinancial service firms in each S&P ratings class.[11]

Now consider a small firm that is not rated but has an interest coverage ratio of 6.15. Based on this ratio, a synthetic rating of A would be assessed for the firm, and a default spread of  $1.00\%$  would be added to the risk-free rate to arrive at the pretax cost of debt.

The interest coverage ratios tend to be lower for larger (market cap greater than 5 billion) firms for any given rating. Table 8.2 summarizes these ratios.

This approach can be expanded to allow for multiple ratios and qualitative variables as well. Once a synthetic rating is assessed, it can be used to estimate a default spread, which when added to the risk-free rate yields a pretax cost of debt for the firm.

TABLE 8.1 Interest Coverage Ratios and Ratings: Low Market Cap Firms

<table><tr><td>Interest Coverage Ratio</td><td>Rating</td><td>Spread</td></tr><tr><td>More than 12.5</td><td>AAA</td><td>0.50\%</td></tr><tr><td>9.5 to 12.5</td><td>AA</td><td>0.65\%</td></tr><tr><td>7.5 to 9.5</td><td>A+</td><td>0.85\%</td></tr><tr><td>6 to 7.5</td><td>A</td><td>1.00\%</td></tr><tr><td>4.5 to 6</td><td>A-</td><td>1.10\%</td></tr><tr><td>3.5 to 4.5</td><td>BBB</td><td>1.60\%</td></tr><tr><td>3 to 3.5</td><td>BB</td><td>3.35\%</td></tr><tr><td>2.5 to 3</td><td>B+</td><td>3.75\%</td></tr><tr><td>2 to 2.5</td><td>B</td><td>5.00\%</td></tr><tr><td>1.5 to 2</td><td>B-</td><td>5.25\%</td></tr><tr><td>1.25 to 1.5</td><td>CCC</td><td>8.00\%</td></tr><tr><td>0.8 to 1.25</td><td>CC</td><td>10.00\%</td></tr><tr><td>0.5 to 0.8</td><td>C</td><td>12.00\%</td></tr><tr><td>Less than 0.5</td><td>D</td><td>15.00\%</td></tr></table>

Source for raw data: Capital IQ, BondsOnline.com.

TABLE 8.2 Interest Coverage Ratios and Ratings: High Market Cap Firms

<table><tr><td>Interest Coverage Ratio</td><td>Rating</td><td>Spread</td></tr><tr><td>More than 8.5</td><td>AAA</td><td>0.50\%</td></tr><tr><td>6.5 to 8.5</td><td>AA</td><td>0.65\%</td></tr><tr><td>5.5 to 6.5</td><td>A+</td><td>0.85\%</td></tr><tr><td>4.25 to 5.5</td><td>A</td><td>1.00\%</td></tr><tr><td>3 to 4.25</td><td>A-</td><td>1.10\%</td></tr><tr><td>2.5 to 3</td><td>BBB</td><td>1.60\%</td></tr><tr><td>2 to 2.5</td><td>BB</td><td>3.35\%</td></tr><tr><td>1.75 to 2</td><td>B+</td><td>3.75\%</td></tr><tr><td>1.5 to 1.75</td><td>B</td><td>5.00\%</td></tr><tr><td>1.25 to 1.5</td><td>B-</td><td>5.25\%</td></tr><tr><td>0.8 to 1.25</td><td>CCC</td><td>8.00\%</td></tr><tr><td>0.65 to 0.8</td><td>CC</td><td>10.00\%</td></tr><tr><td>0.2 to 0.65</td><td>C</td><td>12.00\%</td></tr><tr><td>Less than 0.2</td><td>D</td><td>14.00\%</td></tr></table>

Source: Capital IQ, BondsOnline.com.

# EXTENDING THE SYNTHETIC RATINGS APPROACH

By basing the rating on the interest coverage ratio alone, we run the risk of missing the information that is available in the other financial ratios used by ratings agencies. The approach can be extended to incorporate other ratios. The first step would be to develop a score based on multiple ratios. For instance, the Altman Z score, which is used as a proxy for default risk, is a function of five financial ratios that are weighted to generate a Z score. The ratios used and their relative weights are usually estimated by looking at past defaults. The second step is to relate the level of the score to a bond rating, much as is done in Tables 8.1 and 8.2 with interest coverage ratios.

In making this extension, though, note that complexity comes at a cost. While credit or Z scores may, in fact, yield better estimates of synthetic ratings than those based on interest coverage ratios, changes in ratings arising from these scores are much more difficult to explain than those based on interest coverage ratios. That is a reason to prefer the flawed but simpler ratings derived from interest coverage ratios.

Estimating a Tax Rate To estimate the after-tax cost of debt, consider the fact that interest expenses are tax deductible to the firm. While the computation is fairly simple and requires that the pretax cost be multiplied by (1 - tax rate), the question of what tax rate to use can be a difficult one to answer, because there are so many choices. For instance, firms often report an effective tax rate, estimated by dividing the taxes due by the taxable income. The effective tax rate, though, is usually very different from the marginal or statutory tax rate, which is the rate at which the last dollar of income is taxed. Since interest expenses save you taxes at the margin (they are deducted from your last dollar of income), the right tax rate to use is the marginal tax rate.

The other caveat to keep in mind is that interest creates a tax benefit only if a firm has enough income to cover the interest expenses. Firms that have operating losses will not get a tax benefit from interest expenses, at least in the year of the loss. The after-tax cost of debt will be equal to the pretax cost of debt in that year. If you expect the firm to make money in future years, you would need to adjust the after-tax cost of debt for taxes in those years.

We return to this issue and examine it in more detail in Chapter 10, where we look at the same issue in the context of estimating after-tax cash flows.

# ILLUSTRATION 8.11: Estimating the Cost of Debt: Boeing in December 2000

Boeing was rated AA by S&P. Using the typical default spreads for AA-rated firms in December 2000, we could estimate the pretax cost for Boeing by adding the default spread of  $1.00\%$  to the riskless rate of  $5\%$ .

$$
\text{Pretax cost of debt}_{\text{actual rating}} = 5\% +1\% = 6\%
$$

Boeing has an effective tax rate of  $27\%$ , but we use a marginal tax rate of  $35\%$  to estimate the after-tax cost of debt for Boeing.

$$
\text{After - tax cost of debt} = 6.00 \% (1 - .35) = 3.90 \%
$$

Note that we will attach this after-tax cost of debt to all of Boeing's debt, short-term or long-term. While that may seem unfair, since Boeing could have borrowed short term at lower rates, we are assuming that the rollover cost of short-term debt will approximate to the cost of long term debt. Furthermore, we do not want to systematically reward companies with short-term debt by giving them lower costs of capital.

One final point about ratings. The ratings agencies rate both individual bond issues and entire companies. The rating used for the pretax cost of debt should be the rating for the company and not for an individual bond. Even a risky company can structure and issue a safe bond, and estimating a cost of debt based on that bond's rating will underestimate the overall cost of debt.

Estimating the Cost of Debt for an Emerging Market Firm In general, there are three problems that we run into when assessing the cost of debt for emerging market firms. The first is that most of these firms are not rated, leaving us with no option but to estimate the synthetic rating (and associated costs). The second is that the synthetic ratings may be skewed by differences in interest rates between the emerging market and the United States. Interest coverage ratios will usually decline as interest rates increase, and it may be far more difficult for a company in an emerging market to achieve the interest coverage ratios of companies in developed markets. Finally, the existence of country default risk hangs over the cost of debt of firms in that market.

The second problem can be fixed fairly simply by either modifying the tables developed using U.S. firms or restating the interest expenses (and interest coverage ratios) in dollar terms. The question of country risk is a thornier one. Conservative analysts often assume that companies in a country cannot borrow at a rate lower than the country itself can borrow at. With this reasoning, the cost of debt for an emerging market company will include the country default spread for the country.

$$
\begin{array}{l} \text {C o s t} = \text {R i s k l e s s} \\ + \text {C o m p a n y d e f a u l t s p r e a d} _ {\text {s y n t h e t i c r a t i n g}} \\ \end{array}
$$

The counter to this argument is that companies may be safer than the countries in which they operate, and that they bear only a portion or perhaps even none of the country default spread.

# ILLUSTRATION 8.12: Estimating the Cost of Debt: Embraer in March 2008

To estimate Embraer's cost of debt, we first estimated a synthetic rating for the firm. Based on its operating income of  $527 million and interest expenses of$ 176 million in 2007, we arrived at an interest coverage ratio of 2.99 and a BBB rating. While the default spread for BBB rated bonds was only 1.50\% at the time, there is the added consideration that Embraer is a Brazilian firm. Since the Brazilian dollar-denominated government bond had a default spread of 2.00\% at the time of the analysis, you could argue that every Brazilian company should pay this premium in addition to its own default spread. With this reasoning, the pretax cost of debt for Embraer in U.S. dollars (assuming a Treasury bond rate is 3.8\%) can be calculated:

$$
\begin{array}{l} \text {C o s t} = \text {R i s k - f r e e} + \text {D e f a u l t} + \text {D e f a u l t} \\ = 3.8\% +2.00\% +1.50\% = 7.30\% \\ \end{array}
$$

Using a marginal tax rate of  $34\%$ , we can estimate an after-tax cost of debt for Embraer:

$$
\text{After - tax cost of debt} = 7.30 \% (1 - .34) = 4.82 \%
$$

With this approach, the cost of debt for a firm can never be lower than the cost of debt for the country in which it operates. Note, though, that Embraer gets a significant portion of its revenues in dollars from contracts with non-Brazilian airlines. Consequently, it could reasonably argue that it is less exposed to risk than is the Brazilian government and should therefore command a lower cost of debt. Put differently, there are some companies (generally large companies with significant foreign operations) to which, rather than add the entire default spread for the country to the cost of debt, we may add only a portion.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/1ecc04a3d04ac14ba7494ecaf247b22bf9cdb93a3fadb42b012edcd0ea9800bf.jpg) ratings.xls: This spreadsheet allows you to estimate the synthetic rating and cost of debt for any firm.

# Calculating the Cost of Hybrid Securities

While debt and equity represent the fundamental financing choices available for firms, there are some types of financing that share characteristics with both debt and equity. These are called hybrid securities. This section considers how best to estimate the costs of such securities.

Cost of Preferred Stock Preferred stock shares some of the characteristics of debt (the preferred dividend is prespecified at the time of the issue and is paid out before the common dividend) and some of the characteristics of equity (the preferred dividend is not tax deductible). If preferred stock is viewed as perpetual (as it usually is), the cost of preferred stock can be written as follows:

$$ k _ {p s} = \text {P r e f e r e d}
$$

This approach assumes the dividend is constant in dollar terms forever and that the preferred stock has no special features (convertibility, callability, etc.). If such special features exist, they will have to be valued separately to estimate the cost of preferred stock. In terms of risk, preferred stock is safer than common equity, because preferred dividends are paid before dividends on common equity. It is, however, riskier than debt since interest payments are made prior to preferred dividend payments. Consequently, on a pretax basis, it should command a higher cost than debt and a lower cost than equity.

# ILLUSTRATION 8.13: Calculating the Cost of Preferred Stock: Ford in 2011

In April 2011, Ford Motor Company had preferred stock that paid a dividend of  $1.875 annually and traded at$ 26.475 per share. The cost of preferred stock can be estimated as follows:

Cost of preferred stock = Preferred dividend per share/Preferred stock price = \ $1.875/\$ 26.475 = 7.08\%

At the same time, Ford's cost of equity, using an estimated beta of 1.40, a risk-free rate of  $3.5\%$  and an equity risk premium of  $5\%$ , was  $10.5\%$ ; its pretax cost of debt, based on its S&P rating of  $\mathsf{B}+$ , was  $8.50\%$ , and its after-tax cost of debt was  $5.10\%$ . Not surprisingly, its preferred stock was less expensive than equity, but much more expensive than debt.

Calculating the Cost of Other Hybrid Securities A convertible bond is a bond that can be converted into equity at the option of the bondholder. A convertible bond can be viewed as a combination of a straight bond (debt) and a conversion option (equity). Instead of trying to calculate the cost of these hybrid securities individually, we can break down hybrid securities into their debt and equity components and treat the components separately.

# ILLUSTRATION 8.14: Breaking Down a Convertible Bond into Debt and Equity Components: MGM Resorts

In 2010, MGM Resorts, the casino company, issued 5-year convertible bonds with a coupon rate of  $4.25\%$  and a 10-year maturity. Since the firm was losing money, it was rated  $\mathrm{CCC + }$  by S&P and would have had to pay  $10\%$  if it had issued straight bonds at the same time. A year later, the bonds were trading at a price that was  $112\%$  of par, and the total par value of the convertible bond issue was 1.15 billion. The convertible bond can be broken down into straight bond and conversion option components.

Straight bond = Value of a straight  $4.25\%$  coupon bond due in 4 years with  $10\%$  interest rate

= 818 (assuming annual coupons)

Conversion option = $1,120 - $818 = 302

The straight bond component of  $818 is treated as debt, and has the same cost as the rest of debt. The conversion option of$ 302 is treated as equity, with the same cost of equity as other equity issued by the firm. For the entire bond issue of $1,150 million, with an overall market value of $1,288 million, the value of debt is $916 million, and the value of equity is $372 million.

# Calculating the Weights of Debt and Equity Components

Now that we have the costs of debt, equity, and hybrid securities, we have to estimate the weights that should be attached to each. Before we discuss how best to estimate weights, we define what we include in debt. We then make the argument that weights used should be based on market value and not book value. This is so because the cost of capital measures the cost of issuing securities—stocks as well as bonds—to finance projects, and these securities are issued at market value, not at book value.

What Is Debt? The answer to this question may seem obvious since the balance sheet for a firm shows the outstanding liabilities of the firm. There are, however, limitations with using these liabilities as debt in the cost of capital computation. The first is that some of the liabilities on a firm's balance sheet, such as accounts payable and supplier credit, are not interest-bearing. Consequently, applying an after-tax cost of debt to these items can provide a misleading view of the true cost of capital for a firm. The second is that there are items off the balance sheet that create fixed commitments for the firm and provide the same tax deductions that interest payments on debt do. The most prominent of these off-balance sheet items are operating leases. Chapter 3 contrasted operating and capital leases and noted that operating leases are treated as operating expenses rather than financing expenses. Consider, though, what an operating lease involves. A retail firm leases a store space for 12 years and enters into a lease agreement with the owner of the space agreeing to pay a fixed amount each year for that period. We do not see much difference between this commitment and borrowing money from a bank and agreeing to pay off the bank loan over 12 years in equal annual installments.

There are therefore two adjustments we will make when we estimate how much debt a firm has outstanding.

1. We will consider only interest-bearing debt rather than all liabilities. We would include both short-term and long-term borrowings in debt.
2. We will also capitalize operating leases and treat them as debt.

Capitalizing Operating Leases Converting operating lease expenses into a debt equivalent is straightforward. The operating lease commitments in future years, which are revealed in the footnotes to the financial statements for U.S. firms, should be discounted back at a rate that reflects their status as unsecured and fairly risky debt. As an approximation, using the firm's current pretax cost of borrowing as the discount rate yields a good estimate of the value of operating leases.

There are still some countries where companies do not have to reveal their operating lease commitments to investors. When this is the case, you can get a reasonably close estimate of the debt value of operating leases by estimating the present value of an annuity equal to the current year's payment for a period that reflects a typical lease period (8 to 10 years).

There is one final issue relating to capitalization. Earlier in this chapter it was stated that the interest coverage ratio could be used to estimate a synthetic rating for a firm that is not rated. For firms with little in terms of conventional debt and substantial operating leases, the interest coverage ratio used to estimate a synthetic rating has to be adapted to include operating lease expenses.

$$
\text {M o d i f i e d i n t e r e s t c o v e r a g e r a t i o} = (\text {E B I T} + \text {C u r r e n t y e a r ' s o p e r a t i n g l e a s e x p e n s e}) / (\text {I n t e r e s t e x p e n s e s} + \text {C u r r e n t y e a r ' s} \quad \text {o p e r a t i n g l e a s e x p e n s e})
$$

This ratio can then be used in conjunction with Tables 8.1 and 8.2 to estimate a synthetic rating.

# ILLUSTRATION 8.15: The Debt Value of Operating Leases: Boeing in December 2000

Boeing has both conventional debt and operating lease commitments. This illustration estimates the "debt value" of Boeing's operating leases by taking the present value of operating lease expenses over time. To compute the present value of operating leases in the following table (in $millions), we use the pretax cost of borrowing for the firm, estimated in Illustration 8.11 to be  $6\%$ .

<table><tr><td>Year</td><td>Operating Lease Expense</td><td>Present Value at 6\%</td></tr><tr><td>1</td><td>$205</td><td>$193.40</td></tr><tr><td>2</td><td>$167</td><td>$146.83</td></tr><tr><td>3</td><td>$120</td><td>$100.75</td></tr><tr><td>4</td><td>$86</td><td>$68.12</td></tr><tr><td>5</td><td>$61</td><td>$45.58</td></tr><tr><td>6 to 15</td><td>$—</td><td>$0.00</td></tr><tr><td colspan="2">Present value of operating lease expenses</td><td>556.48</td></tr></table>

Thus, Boeing has 556 million more in debt than is reported in the balance sheet.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/c0917ce9e5dc05bbada827124a8bdfd60dab535bc959c6508656029e19064cab.jpg)

Oplease.xls: This spreadsheet allows you to convert operating lease expenses into debt.

Book Value versus Market Value Debt Ratios There are three standard arguments against using market value, and none of them is convincing. First, there are some financial managers who argue that book value is more reliable than market value because it is not as volatile. While it is true that book value does not change as much as market value, this is more a reflection of book value's weakness rather than its strength, since the true value of the firm changes over time as both firm-specific and market information is revealed. We would argue that market value, with its volatility, is a much better reflection of true value than is book value.[13]

Second, the defenders of book value also suggest that using book value rather than market value is a more conservative approach to estimating debt ratios. This assumes that market value debt ratios are always lower than book value debt ratios, an assumption not based on fact. Furthermore, even if the market value debt ratios are lower than the book value ratios, the cost of capital calculated using book value ratios will be lower than those calculated using market value ratios, making it a less conservative estimate, not more. To illustrate this point, assume that the market value debt ratio is 10 percent, while the book value debt ratio is 30 percent, for a firm with a cost of equity of 15 percent and an after-tax cost of debt of 5 percent. The cost of capital can be calculated as follows:

With market value debt ratios:  $15\%(.9) + 5\%(.1) = 14\%$

With book value debt ratios:  $15\%(.7) + 5\%(.3) = 12\%$

Third, it is claimed that lenders will not lend on the basis of market value, but this claim again seems to be based more on perception than on fact. Any homeowner who has taken a second mortgage on a house that has appreciated in value knows that lenders do lend on the basis of market value. It is true, however, that the greater the perceived volatility in the market value of an asset, the lower the borrowing potential on that asset.

Estimating the Market Values of Equity and Debt The market value of equity is generally the number of shares outstanding times the current stock price. If there are other equity claims in the firm such as warrants and management options, these should also be valued and added to the value of the equity in the firm.

The market value of debt is usually more difficult to obtain directly, since very few firms have all their debt in the form of bonds outstanding trading in the market. Many firms have nontraded debt, such as bank debt, which is specified in book value terms but not market value terms. A simple way to convert book value debt into market value debt is to treat the entire debt on the books as one coupon bond, with a coupon set equal to the interest expenses on all the debt and the maturity set equal to the face-value weighted average maturity of the debt, and then to value this coupon bond at the current cost of debt for the company. Thus, the market value of  $1 billion in debt, with interest expenses of$ 60 million (annually) and a maturity of six years, when the current cost of debt is 7.5 percent, can be estimated as follows:

$$
\text {E s t i m a t e d m a r k e t v a l u e o f d e b t} = 6 0 \left(\frac {1 - \frac {1}{1 . 0 7 5 ^ {6}}}{. 0 7 5}\right) + \frac {1 , 0 0 0}{1 . 0 7 5 ^ {6}} = \$ 9 3 0
$$

# ILLUSTRATION 8.16: Difference between Market Value and Book Value Debt Ratios: Boeing in June 2000

This illustration contrasts the book values of debt and equity with the market values. For debt, we estimate the market value of debt using the book value of debt, the interest expense on the debt, the average maturity of the debt, and the pretax cost of debt for each firm. For Boeing, the book value of debt is  $6,972 million, the interest expense on the debt is$ 453 million, the average maturity of the debt is 13.76 years, and the pretax cost of debt is 6\%. The estimated market value is:

$$
\text {E s t i m a t e d M V o f B o e i n g d e b t} = 4 5 3 \left(\frac {1 - \frac {1}{1 . 0 6 ^ {1 3 . 7 6}}}{. 0 6}\right) + \frac {6 , 9 7 2}{(1 . 0 6) ^ {1 3 . 7 6}} = \$ 7, 2 9 1
$$

To this, we need to add the present value of operating leases of  $556 million to arrive at a total market value for debt of$ 7,847 million.

The book value of equity for Boeing was  $12,316 million while the market value of equity was$ 55,197 million. The debt ratios in market value and book value terms are computed as follows:

# Market Value

Debt to equity

7,847/55,197 = 14.22\%

# Book Value

Debt/(Debt + Equity)

$7,847 / (7,847 + 55,197) = 12.45\%$

6,972/12,316 = 56.61\%

6,972/(6,972 + 12,316) = 36.15\%

The market debt ratio is significantly lower than the book debt ratio.

# GROSS DEBT VERSUS NET DEBT

Gross debt refers to all debt outstanding in a firm. Net debt is the difference between gross debt and the cash balance of the firm. For instance, a firm with  $1.25 billion in interest-bearing debt outstanding and a cash balance of$ 1 billion has a net debt balance of 250 million. The practice of netting cash against debt is common in both Latin America and Europe, and debt ratios are usually estimated using net debt.

It is generally safer to value a firm based on gross debt outstanding and to add the cash balance outstanding to the value of operating assets to arrive at the firm value. The interest payment on total debt is then entitled to the tax benefits of debt, and we can assess the effect of whether the company invests its cash balances efficiently on value.

In some cases, especially when firms maintain large cash balances as a matter of routine, analysts prefer to work with net debt ratios. If you choose to use net debt ratios, you have to be consistent all the way through the valuation. To begin, the beta for the firm should be estimated using a net debt-to-equity ratio rather than a gross debt-to-equity ratio. The cost of equity that emerges from the beta estimate can be used to estimate a cost of capital, but the market value weight on debt should be based on net debt. Once you discount the cash flows of the firm at the cost of capital, you should not add back cash. Instead, you should subtract the net debt outstanding to arrive at the estimated value of equity.

Implicitly, when you net cash against debt to arrive at net debt ratios, you are assuming that cash and debt have roughly similar risk. While this assumption may not be outlandish when analyzing highly rated firms, it becomes much shakier when debt becomes riskier. For instance, the debt in a BB-rated firm is much riskier than the cash balance in the firm, and netting out one against the other can provide a misleading view of the firm's default risk. In general, using net debt ratios will overstate the value of riskier firms.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/2886a7865cdf87d3c480d907ad41018f7b51d7d26d789355988d0f40c14ed439.jpg) waccalc.xls: This spreadsheet allows you to convert book values of debt into market values.

# Estimating the Cost of Capital

Since a firm can raise its money from three sources—equity, debt, and preferred stock—the cost of capital is defined as the weighted average of each of these costs. The cost of equity  $(\mathrm{k_e})$  reflects the riskiness of the equity investment in the firm, the after-tax cost of debt  $(\mathrm{k_d})$  is a function of the default risk of the firm, and the cost of preferred stock  $(\mathrm{k_{ps}})$  is a function of its intermediate standing in terms of risk between debt and equity. The weights on each of these components should reflect their market value proportions, since these proportions best measure how the existing firm is being financed. Thus if E, D, and PS are the market values of equity, debt, and preferred stock respectively, the cost of capital can be written as follows:

$$
\text {C o s t} = k _ {\mathrm {e}} [ \mathrm {E} / (\mathrm {D} + \mathrm {E} + \mathrm {P S}) ] + k _ {\mathrm {d}} [ \mathrm {D} / (\mathrm {D} + \mathrm {E} + \mathrm {P S}) ] + k _ {\mathrm {p s}} [ \mathrm {P S} / (\mathrm {D} + \mathrm {E} + \mathrm {P S}) ]
$$

# ILLUSTRATION 8.17: Estimating Cost of Capital: Boeing in December 2000

Having estimated the costs of debt and equity in earlier illustrations, and the market value debt ratio in Illustration 8.16, we can put them together to arrive at a cost of capital for Boeing.

Cost of equity  $= 10.28\%$  (from Illustration 8.9)

Cost of debt  $= 3.90\%$  (from Illustration 8.11)

Market value debt ratio  $= 12.45\%$  (from Illustration 8.16)

Cost of capital  $= 10.28\% (.8755) + 3.90\% (.1245) = 9.49\%$

# ILLUSTRATION 8.18: Estimating Cost of Capital: Embraer in March 2008

To estimate a cost of capital for Embraer, we again draw on the estimates of cost of equity and cost of debt we obtained in prior illustrations. The cost of capital will be estimated using gross debt ratios first in U.S. dollars:

Cost of equity  $= 8.31\%$  (from Illustration 8.10)

After-tax cost of debt  $= 4.82\%$  (from Illustration 8.12)

Market value of debt  $= 2,915$  million BR (book value  $= 3,128$  million BR)

Market value of equity  $= 12,729$  million BR

The cost of capital for Embraer is estimated as follows:

Cost of capital  $= 8.31\% [12,729 / (12,729 + 2,915)] + 4.82\% [2,915 / (12,729 + 2,915)] = 7.66\%$

To convert this into a nominal BR cost of capital, we would apply the differential inflation rates (6\% in Brazil and 2\% in the United States).

$$
\begin{array}{c} \text {Cost of capital} _ {\text {nominal BR}} = (1 + \text {Cost of capital}) (\text {Inflation rate} _ {\text {Brazil}} / \text {Inflation rate} _ {\text {U.S.}}) - 1 \\ 1.0766(1.06 / 1.02) - 1 = 11.88 \% \end{array}
$$

To estimate the cost of capital using the net debt ratio, we bring in the cash balance of 4,437 million BR that Embraer had at the time of the analysis:

Net debt = Gross debt - Cash = 2,915 million BR - 4,437 million BR = -1,422 million BR

Net debt/equity ratio  $= -1,422 / 12,729 = -11.17\%$

Net debt to capital ratio  $= -1,422 / (12,729 - 1,422) = -12.58\%$

Unlevered beta  $= 0.75$

Levered beta using net debt-to-equity ratio  $= 0.75[1 + (1 - .34)(-.1117)] = 0.695$

Intuitively, the levered beta here is lower than the unlevered beta because we are incorporating the cash into the beta computation (with the assumption that cash is riskless).

Cost of equity (U.S. $) = 3.8\% + 0.695(4\%) + 0.27(3.66\%) = 7.57\%

Cost of capital  $= 7.57\%$  [12,729/(12,729-1,422)] + 4.82\%[-1,422/(12,729-1,422)]

$$
= 7.91 \%
$$

Note that the weight on equity is greater than  $100\%$ $(112.57\%)$  and the weight on debt is negative  $(-12.57\%)$  because net debt is negative. Notwithstanding these disconcerting inputs, the cost of capital is close to the cost of capital using the standard debt ratio approach, and the difference can be attributed to the fact that the net debt approach nets out the tax benefit of debt against the tax costs of earning interest income on cash.

# BEST PRACTICES AT FIRMS

We have spent this chapter discussing what firms should do when it comes to estimating the cost of capital. What do they actually do? Bruner, Eades, Harris, and Higgins (1998) surveyed 27 well-regarded corporations, and their findings are summarized in Table 8.3.

TABLE 8.3 Current Practices for Estimating Cost of Capital

<table><tr><td>Cost of Capital Item</td><td>Current Practices</td></tr><tr><td>Cost of equity</td><td>81\% of firms used the capital asset pricing model to estimate the cost of equity, 4\% used a modified capital asset pricing model, and 15\% were uncertain about how they estimated the cost of equity.
70\% of firms used 10-year Treasuries or longer as the riskless rate, 7\% used 3to 5-year Treasuries, and 4\% used the Treasury bill rate.
52\% used a published source for a beta estimate, while 30\% estimated it themselves.
There was wide variation in the market risk premium used, with 37\% using a premium between 5\% and 6\%.</td></tr><tr><td>Cost of debt</td><td>52\% of firms used a marginal borrowing rate and a marginal tax rate, while 37\% used the current average borrowing rate and the effective tax rate.</td></tr><tr><td>Weights for debt and equity</td><td>59\% used market value weights for debt and equity in the cost of capital, 15\% used book value weights, and 19\% were uncertain about what weights they used.</td></tr></table>

Source: Bruner, Eades, Harris, and Higgins (1998).

# CONCLUSION

When we analyze the investments of a firm or assess its value, we need to know the cost that the firm faces in raising equity, debt, and capital. The risk and return models described in earlier chapters can be used to estimate the costs of equity and capital for a firm.

Building on the premise that the cost of equity should reflect the riskiness of equity to investors in the firm, there are three basic inputs we need to estimate the cost of equity for any firm. The riskless rate is the expected return on an investment with no default risk and no reinvestment risk. Since much of the analysis in corporate finance is long term, the riskless rate should be the interest rate on a long-term government bond. The risk premium measures what investors demand as a premium for investing in risky investments instead of riskless investments. This risk premium, which can vary across investors, can be estimated either by looking at past returns on stocks and government securities or by looking at how the market prices stocks currently. The beta for a firm is conventionally measured using a regression of returns on the firm's stock against returns on a market index. This approach yields imprecise beta estimates, and we are better off estimating betas by examining the betas of the businesses that the firm operates in.

The cost of capital is a weighted average of the costs of the different components of financing, with the weights based on the market values of each component. The cost of debt is the market rate at which the firm can borrow, adjusted for any tax advantages of borrowing. The cost of preferred stock, however, is the preferred dividend yield.

The cost of capital is useful at two levels. On a composite basis, it is what these firms have to make collectively on their investments to break even. It is also the appropriate discount rate to use to discount expected future cash flows to arrive at an estimate of firm value.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified and a tax rate of 40 percent where no tax rate is provided.

1. In December 1995, Boise Cascade's stock had a beta of 0.95. The Treasury bill rate at the time was 5.8\%, and the Treasury bond rate was 6.4\%. The firm had debt outstanding of $1.7 billion and a market value of equity of $1.5 billion; the corporate marginal tax rate was 36\%. (The historical risk premium for stocks over Treasury bills is 8.5\% and the risk premium for stocks over Treasury bonds is 5.5\%).

a. Estimate the expected return on the stock for a short-term investor in the company.

b. Estimate the expected return on the stock for a long-term investor in the company.

c. Estimate the cost of equity for the company.

2. Continuing problem 1, Boise Cascade also had debt outstanding of  $1.7 billion and a market value of equity of$ 1.5 billion; the corporate marginal tax rate was 36\%.

a. Assuming that the current beta of 0.95 for the stock is a reasonable one, estimate the unlevered beta for the company.

b. How much of the risk in the company can be attributed to business risk and how much to financial leverage risk?

3. Biogen Inc., a biotechnology firm, had a beta of 1.70 in 1995. It had no debt outstanding at the end of that year.

a. Estimate the cost of equity for Biogen if the Treasury bond rate is  $6.4\%$ .

b. What effect will an increase in long-term bond rates to  $7.5\%$  have on Bio-gen's cost of equity?

c. How much of Biogen's risk can be attributed to business risk?

4. Genting Berhad is a Malaysian conglomerate with holdings in plantations and tourist resorts. The beta estimated for the firm relative to the Malaysian stock exchange is 1.15, and the long-term government borrowing rate in Malaysia is  $11.5\%$ . (The Malaysian risk premium is  $12\%$  and the default spread on Malaysian local currency debt is  $2\%$ .) a. Estimate the expected return on the stock.

b. If you were an international investor, what concerns, if any, would you have about using the beta estimated relative to the Malaysian Index? If you do have concerns, how would you modify the beta?

5. You have just done a regression of monthly stock returns of HeavyTech Inc., a manufacturer of heavy machinery, on monthly market returns over the past five years and have come up with the following regression:

$$
\mathrm{R}_{\text{HeavyTech}} = 0.5\% +1.2 \mathrm{R}_{\mathrm{M}}
$$

The variance of the stock is  $50\%$ , and the variance of the market is  $20\%$ . The current T-bill rate is  $3\%$  (it was  $5\%$  one year ago). The stock is currently selling for  $50, down$ 4 over the past year; it has paid a dividend of $2 during the past year and expects to pay a dividend of $2.50 over the next year. The NYSE Composite has gone down  $8\%$  over the past year, with a dividend yield of  $3\%$ . HeavyTech Inc. has a tax rate of  $40\%$ .

a. What is the expected return on HeavyTech over the next year?

b. What would you expect HeavyTech's price to be one year from today?

c. What would you have expected HeavyTech's stock returns to be over the past year?

d. What were the actual returns on HeavyTech over the past year?

 e. HeavyTech has $100 million in equity and $50 million in debt. It plans to issue $50 million in new equity and retire $50 million in debt. Estimate the new beta.

6. Safecorp, which owns and operates grocery stores across the United States, currently has $50 million in debt and $100 million in equity outstanding. Its stock has a beta of 1.2. It is planning a leveraged buyout (LBO), where it will increase its debt-to-equity ratio of 8. If the tax rate is 40\%, what will the beta of the equity in the firm be after the LBO?
7. Novell, which had a market value of equity of $2 billion and a beta of 1.50, announced that it was acquiring WordPerfect, which had a market value of equity of $1 billion and a beta of 1.30. Neither firm had any debt in its financial structure at the time of the acquisition, and the corporate tax rate was 40\%.

a. Estimate the beta for Novell after the acquisition, assuming that the entire acquisition was financed with equity.

b. Assume that Novell had to borrow the 1 billion to acquire WordPerfect. Estimate the beta after the acquisition.

8. You are analyzing the beta for Hewlett Packard (HP) and have broken down the company into four broad business groups, with market values and betas for each group.

<table><tr><td>Business Group</td><td>Market Value of Equity</td><td>Beta</td></tr><tr><td>Mainframes</td><td>$2.0 billion</td><td>1.10</td></tr><tr><td>Personal computers</td><td>$2.0 billion</td><td>1.50</td></tr><tr><td>Software</td><td>$1.0 billion</td><td>2.00</td></tr><tr><td>Printers</td><td>$3.0 billion</td><td>1.00</td></tr></table> a. Estimate the beta for Hewlett Packard as a company. Is this beta going to be equal to the beta estimated by regressing past returns on HP stock against a market index? Why or why not?

b. If the Treasury bond rate is  $7.5\%$ , estimate the cost of equity for Hewlett Packard. Estimate the cost of equity for each division. Which cost of equity would you use to value the printer division?

c. Assume that HP divests itself of the mainframe business and pays the cash out as a dividend. Estimate the beta for HP after the divestiture. (HP had 1 billion in debt outstanding.)

9. The following table summarizes the percentage changes in operating income, percentage changes in revenue, and betas for four pharmaceutical firms.

<table><tr><td>Firm</td><td>\% Change in Revenue</td><td>\% Change in Operating Income</td><td>Beta</td></tr><tr><td>PharmaCorp</td><td>27\%</td><td>25\%</td><td>1.00</td></tr><tr><td>SynerCorp</td><td>25\%</td><td>32\%</td><td>1.15</td></tr><tr><td>BioMed</td><td>23\%</td><td>36\%</td><td>1.30</td></tr><tr><td>Safemed</td><td>21\%</td><td>40\%</td><td>1.40</td></tr></table> a. Calculate the degree of operating leverage for each of these firms.

b. Use the operating leverage to explain why these firms have different betas.

10. A prominent beta estimation service reports the beta of Comcast Corporation, a major cable TV operator, to be 1.45. The service claims to use weekly returns on the stock over the prior five years and the NYSE Composite as the market index to estimate betas. You replicate the regression using weekly returns over the same period and arrive at a beta estimate of 1.60. How would you reconcile the two estimates?
11. Battle Mountain is a mining company with gold, silver, and copper in mines in South America, Africa, and Australia. The beta for the stock is estimated to be 0.30. Given the volatility in commodity prices, how would you explain the low beta?
12. You have collected returns on AnaDone Corporation (AD Corp.), a large, diversified manufacturing firm, and the NYSE index for five years:

<table><tr><td>Year</td><td>AD Corp.</td><td>NYSE</td></tr><tr><td>1981</td><td>10\%</td><td>5\%</td></tr><tr><td>1982</td><td>5\%</td><td>15\%</td></tr><tr><td>1983</td><td>-5\%</td><td>8\%</td></tr><tr><td>1984</td><td>20\%</td><td>12\%</td></tr><tr><td>1985</td><td>-5\%</td><td>-5\%</td></tr></table> a. Estimate the intercept (alpha) and slope (beta) of the regression.

b. If you bought stock in AD Corp. today, how much would you expect to make as a return over the next year? (The six-month T-bill rate is  $6\%$ .) c. Looking back over the past five years, how would you evaluate AD Corp.'s performance relative to the market?

d. Assume now that you are an undiversified investor and that you have all of your money invested in AD Corp. What would be a good measure of the risk that you are taking on? How much of this risk would you be able to eliminate if you diversify?

e. AD Corp. is planning to sell off one of its divisions. The division under consideration has assets that comprise half of the book value of AD Corp. and  $20\%$  of the market value. Its beta is twice the average beta for AD Corp. (before divestment). What will the beta of AD Corp. be after divesting this division?

13. You run a regression of monthly returns of Mapco Inc., an oiland gas-producing firm, on the S&P 500 index, and come up with the following output for the period 1991 to 1995:

Intercept of the regression  $= 0.06\%$

Slope of the regression  $= 0.46$

Standard error of X-coefficient  $= 0.20$

R-squared  $= 5\%$

There are 20 million shares outstanding, and the current market price is  $2 per share. The firm has$ 20 million in debt outstanding. (The firm has a tax rate of 36\%).

a. What would an investor in Mapco's stock require as a return if the T-bond rate is  $6\%$ ?

b. What proportion of this firm's risk is diversifiable?

c. Assume now that Mapco has three divisions of equal size (in market value terms). It plans to divest itself of one of the divisions for $20 million in cash and acquire another for $50 million (it will borrow 30 million to complete this acquisition). The division it is divesting is in a business line where the average unlevered beta is 0.20, and the division it is acquiring is in a business line where the average unlevered beta is 0.80. What will the beta of Mapco be after this acquisition?

14. You have just run a regression of monthly returns of American Airlines (AMR Corporation) against the S&P 500 over the past five years. You have misplaced some of the output and are trying to derive it from what you have.

a. You know the R-squared of the regression is 0.36, and that your stock has a variance of  $67\%$ . The market variance is  $12\%$ . What is the beta of AMR?

b. You also remember that AMR was not a very good investment during the period of the regression and that it did worse than expected (after adjusting for risk) by  $0.39\%$  a month for the five years of the regression. During this period, the average risk-free rate was  $4.84\%$ . What was the intercept on the regression?

c. You are comparing AMR to another firm, which also has an R-squared of 0.48. Will the two firms have the same beta? If not, why not?

15. You have run a regression of monthly returns on Amgen, a large biotechnology firm, against monthly returns on the S&P 500 index, and come up with the following output:

$$
\mathrm{R}_{\text{stock}} = 3.28\% +1.65 \mathrm{R}_{\text{market}}\quad \mathrm{R}^{2} = 0.20
$$

The current one-year Treasury bill rate is  $4.8\%$  and the current 30-year bond rate is  $6.4\%$ . The firm has 265 million shares outstanding, selling for 30 per share.

a. What is the expected return on this stock over the next year?

b. Would your expected return estimate change if the purpose was to get a discount rate to value the company?

c. An analyst has estimated, correctly, that the stock did  $51.1\%$  better than expected, annually, during the period of the regression. Can you estimate the annualized risk-free rate that she used for her estimate?

d. The firm has a debt/equity ratio of  $3\%$  and faces a tax rate of  $40\%$ . It is planning to issue 2 billion in new debt and acquire a new business for that amount, with the same risk level as the firm's existing business. What will the beta be after the acquisition?

16. You have just run a regression of monthly returns on MAD Inc., a newspaper and magazine publisher, against returns on the S&P 500, and arrived at the following result:

$$
\mathrm{R}_{\mathrm{MAD}} = -0.05\% +1.20 \mathrm{R}_{\mathrm{S&P}}
$$

The regression has an R-squared of  $22\%$ . The current T-bill rate is  $5.5\%$ , and the current T-bond rate is  $6.5\%$ . The risk-free rate during the period of the regression was  $6\%$ . Answer the following questions relating to the regression: a. Based on the intercept, how well or badly did MAD do, relative to expectations, during the period of the regression?

b. You now realize that MAD Inc. went through a major restructuring at the end of last month (which was the last month of your regression), and made the following changes:

The firm sold off its magazine division, which had an unlevered beta of 0.6, for 20 million.

■ It borrowed an additional  $20 million, and bought back stock worth$ 40 million.

After the sale of the division and the share repurchase, MAD Inc. had  $40 million in debt and$ 120 million in equity outstanding. If the firm's tax rate is 40\%, reestimate the beta after these changes.

17. Time Warner Inc., the entertainment conglomerate, had a beta of 1.61 in 1995. Part of the reason for the high beta was the debt left over from the leveraged buyout of Time by Warner in 1989, which amounted to $10 billion in 1995. The market value of equity at Time Warner in 1995 was also $10 billion. The marginal tax rate was 40\%.

a. Estimate the unlevered beta for Time Warner.

b. Estimate the effect of reducing the debt ratio by  $10\%$  each year for the next two years on the beta of the stock.

18. Chrysler, the automotive manufacturer, had a beta of 1.05 in 1995. It had $13 billion in debt outstanding in that year, and 355 million shares trading at $50 per share. The firm had a cash balance of 8 billion at the end of 1995. The marginal tax rate was 36\%.

a. Estimate the unlevered beta of the firm.

b. Estimate the effect of paying out a special dividend of 5 billion on this unlevered beta.

c. Estimate the beta for Chrysler after the special dividend.

19. You are trying to estimate the beta of a private firm that manufactures home appliances. You have managed to obtain betas for publicly traded firms that also manufacture home appliances.

<table><tr><td>Firm</td><td>Beta</td><td>Debt</td><td>MV of Equity</td></tr><tr><td>Black &amp; Decker</td><td>1.40</td><td>$2,500</td><td>$3,000</td></tr><tr><td>Fedders Corp.</td><td>1.20</td><td>$ 5</td><td>$ 200</td></tr><tr><td>Maytag Corp.</td><td>1.20</td><td>$ 540</td><td>$2,250</td></tr><tr><td>National Presto</td><td>0.70</td><td>$ 8</td><td>$ 300</td></tr><tr><td>Whirlpool</td><td>1.50</td><td>$2,900</td><td>$4,000</td></tr></table>

The private firm has a debt equity ratio of  $25\%$  and faces a tax rate of  $40\%$ . The publicly traded firms all have marginal tax rates of  $40\%$  as well.

a. Estimate the beta for the private firm.

b. What concerns, if any, would you have about using betas of comparable firms?

20. As the result of stockholder pressure, RJR Nabisco is considering spinning off its food division. You have been asked to estimate the beta for the division, and decide to do so by obtaining the beta of comparable publicly traded firms. The average beta of comparable publicly traded firms is 0.95, and the average debt-to-equity ratio of these firms is  $35\%$ . The division is expected to have a debt ratio of  $25\%$ . The marginal corporate tax rate is  $36\%$ .

a. What is the beta for the division?

b. Would it make any difference if you knew that RJR Nabisco had a much higher fixed cost structure than the comparable firms used here?

21. Southwestern Bell, a phone company, is considering expanding its operations into the media business. The beta for the company at the end of 1995 was 0.90, and the debt-to-equity ratio was 1. The media business is expected to be  $30\%$  of the overall firm value in 1999, and the average beta of comparable firms is 1.20; the average debt-to-equity ratio for these firms is  $50\%$ . The marginal corporate tax rate is  $36\%$ .

a. Estimate the beta for Southwestern Bell in 1999, assuming that it maintains its current debt-to-equity ratio.

b. Estimate the beta for Southwestern Bell in 1999, assuming that it decides to finance its media operations with a debt-to-equity ratio of  $50\%$ .

22. The chief financial officer of Adobe Systems, a growing software manufacturing firm, has approached you for some advice regarding the beta of his company. He subscribes to a service that estimates Adobe Systems' beta each year, and he has noticed that the beta estimates have gone down every year since 1991—from 2.35 in 1991 to 1.40 in 1995. He would like the answers to the following questions: a. Is this decline in beta unusual for a growing firm?

b. Why would the beta decline over time?

c. Is the beta likely to keep decreasing over time?

23. You are analyzing Tiffany & Company, an upscale retailer, and find that the regression estimate of the firm's beta is 0.75; the standard error for the beta estimate is 0.50. You also note that the average unlevered beta of comparable specialty retailing firms is 1.15.

a. If Tiffany has a debt/equity ratio of  $20\%$ , estimate the beta for the company based on comparable firms. (The tax rate is  $40\%$ .) b. Estimate a range for the beta from the regression.

c. Assume that Tiffany is rated BBB and that the default spread for BBB-rated firms is  $1\%$  over the Treasury bond rate. If the Treasury bond rate is  $6.5\%$ , estimate the cost of capital for the firm.

24. You have been asked to estimate the cost of capital for NewTel, a telecom firm. The firm has the following characteristics:

There are 100 million shares outstanding, trading at 250 per share.

The firm has a book value of debt with a maturity of six years of $10 billion, and interest expenses of $600 million on the debt. The firm is not rated, but it had operating income of 2.5 billion last year. (Firms with an interest coverage ratio of 3.5 to 4.5 were rated BBB, and the default spread was 1\%.)

The tax rate for the firm is  $35\%$ .

The Treasury bond rate is  $6\%$ , and the unlevered beta of other telecom firms is 0.80.

a. Estimate the market value of debt for this firm.

b. Based on the synthetic rating, estimate the cost of debt for this firm.

c. Estimate the cost of capital for this firm.

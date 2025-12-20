
# Credit Spread Decomposition

Abstract: Credit spread decomposition refers to breaking down a bond's option-adjusted spread to Treasuries into market-wide risk premium, expected default loss, and expected liquidity cost components. Credit spread decomposition is implemented empirically by regressing a bond's option-adjusted spread on a measure of its expected default losses (credit default swap spread) and expected liquidity cost. Credit spread decomposition can help investors determine the extent to which credit spreads reflect expected default losses, liquidity costs, or a market-wide risk premium. Investors can also apply spread decomposition analysis to construct targeted hedging strategies and to identify relative value opportunities. Regulators can use spread decomposition to monitor separately the liquidity and credit risk of the institutions they supervise, and to help determine capital adequacy.

At issuance, a credit bond has a positive yield spread (i.e., a credit spread) over comparable maturity Treasury bonds to compensate investors for the chance that the bond may default with a recovery value less than par. However, studies have documented that credit spreads are generally much larger than justified by their subsequent default and recovery experience.

Beyond expected default losses, a portion of the credit spread may reflect the expected liquidity cost to execute a roundtrip trade. This cost is typically greater for a credit bond than for a comparable-maturity Treasury bond. Investors who anticipate selling a credit bond at some point demand compensation for this cost at the time of purchase in the form of a wider spread. Another portion of the credit spread may re flect a market-wide risk premium demanded by risk-averse investors due to the general uncertainty associated with the timing, magnitude, and recovery of defaults and the magnitude of liquidity costs. The greater the degree of this uncertainty, or the more risk-averse the marginal investor, the more the credit spread will exceed the expected default cost. Credit spread decomposition refers to the econometric exercise of breaking down a bond's option-adjusted spread (OAS) to Treasuries into its risk premium, expected default loss, and expected liquidity cost components.


Credit spread decomposition can serve many purposes. For example, suppose an insurance company, typically a buy-and-hold investor, is considering investing in credit bonds trading at wide spreads. The company's decision will likely depend on whether the wide spreads are due to large expected default losses, high liquidity costs, or a high market risk premium. Presumably, the company can ride out periods of high liquidity cost and risk aversion. However, if the wide spreads reflect high expected default losses, the company may decide not to invest.


This entry begins with an example highlighting the ability of credit spread decomposition to reveal additional information hidden in a bond's OAS. Next, the entry outlines the specification of the spread decomposition model and shows how it can be implemented. Following a discussion on how to interpret the model results, the entry illustrates how they can be used in portfolio management applications. The entry concludes with a discussion of some alternative specifications of the spread decomposition model.

# REVEALING THE DRIVERS OF CREDIT SPREADS

To illustrate the informational value of spread decomposition, consider the historical spread behavior of a typical investment-grade bond. As shown in Figure 1 the bond's OAS varied over time. The figure also shows the level of the issuer's credit default swap (CDS) spread—a measure of expected default losses. While movements in the bond's OAS loosely tracked changes in the issuer's CDS, there was a wide and variable gap between the two spreads, reflecting movements in risk premium and expected liquidity costs.


Figure 1 also plots the bond's expected liquidity cost over the same period. To measure a bond's liquidity cost investors can use a bond's bid-ask spread (in price terms) expressed as a percentage of the bond's bid price. This cost is labeled as the bond's liquidity cost score (LCS) by Dastidar and Phelps (2009). Much of the variability in the OAS-CDS spread gap (the CDS-cash basis) mirrored movements in the bond's LCS. The initial rise in the issuer's OAS was driven by both default and liquidity concerns (all three lines moved up), whereas the larger subsequent spike was mainly a liquidity event (the line plotting the LCS moved up sharply while the CDS line was little changed). This example illustrates that investors need to measure the components of OAS separately to more fully understand OAS movements.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/57d9096bc4bd1461e0846ee7f6d97593856cc1d7a94de8aba35427fed06dd333.jpg)
Figure 1 OAS, CDS, and LCS of a Typical Bond over Time

# CREDIT SPREAD DECOMPOSITION:MODEL SPECIFICATION AND IMPLEMENTATION

To decompose credit spreads, a bond's OAS is regressed against three variables: a variable reflecting expected default cost, a variable reflecting expected liquidity cost, and a market-wide variable unrelated to the bond's attributes representing the market-wide risk premium demanded by investors. Conceptually, for every time  $t$ , the cross-sectional OLS regression model is:

$$
\begin{array}{l} O A S_{i t} = \alpha_{t} + \beta_{t} \text{Ex pe ct ed De fa ul tC os t}_{i t} \\ + \gamma_{t} \text{Ex pe ct ed Li qu id it yC os t}_{i t} + \eta_{i t} \\ \end{array}
$$

The risk premium variable (the intercept term,  $\alpha$ ) represents a market-level risk premium, not a risk premium specific to each bond. The value of the intercept is likely, but not necessarily, to be positive, reflecting that equilibrium credit spreads are typically determined at the margin by risk-averse investors.

Any bond-level risk premium is likely to be highly correlated with the bond's default cost or liquidity cost. In other words, an investor will demand a higher spread premium for a bond with a high liquidity cost as compensation for liquidity cost uncertainty. This makes it difficult to decompose a bond's spread into separate expected liquidity cost and liquidity risk premium components. The same applies to default cost and default risk premium. If default risk or liquidity risk premiums are highly correlated with default or liquidity costs, then the regression coefficients  $(\beta$  and  $\gamma)$  will be larger and/or more significant. Any part of the risk premiums that is unrelated to bond-level default and liquidity cost—in other words, a market-level risk premium—will show up in the intercept.

Credit spread decomposition is implemented empirically by running the following regression across a set of bonds (denoted by  $i$ ) at a given time  $t$


$$
O A S_{i t} = \alpha_{t} + \beta_{t} C D S_{i t} + \gamma_{t} L C S_{i t} + \eta_{i t} \tag {1}
$$

The LCS is used to measure bond-level expected liquidity cost. An issuer's CDS (with a similar spread duration as the bond) is used to measure its expected default cost (i.e., default probability and loss given default). If the CDS itself is illiquid, it will contain some illiquidity premium, thereby distorting results. So, only liquid CDS should be chosen. While an issuer's CDS can be used to measure the expected default cost of its bonds, other measures of expected default cost could be used in lieu of CDS. For example, some investors may use firm-specific fundamental information, equity prices, and macroeconomic data to estimate an issuer's default probability and recovery rate.

To get a sense of the value of incorporating a bond-level liquidity variable to explain the cross-sectional distribution of spreads, an investor can first estimate the model without LCS as an explanatory variable. The model can then be re-estimated adding LCS to see if the regression's fit improves and does not detract from the explanatory power of CDS. If LCS is a useful explanatory variable, adding LCS as a regressor should produce an improvement in the adjusted  $\mathbb{R}^2$  and a significant (and positive) LCS coefficient, with little disturbance to the significance and magnitude of the CDS coefficient.

# INTERPRETING THE RESULTS OF THE CREDIT SPREAD DECOMPOSITION MODEL

The estimated regression coefficients can be used to break down the average OAS into the three spread components in terms of basis points. For example, suppose the average OAS, CDS, and LCS are  $2.09\%$ ,  $1.14\%$ , and  $0.73\%$ , respectively. In addition, suppose the estimated coefficients of CDS and LCS are 0.67 and 1.41, respectively. A variable's contribution to the average OAS can be determined by multiplying the average value of the variable by its estimated regression coefficient (e.g.,  $1.41 \times 0.73\%$  is the contribution of LCS to the average OAS). Repeating spread decomposition at different time periods can show fluctuations in the relative contributions to OAS of the three components over time as shown in Figure 2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/fca4c4cb7dcc41fc8d3683ce663ec3442e2eeed1e7f5d010243540d33569e38c.jpg)
Figure 2 Relative Contribution of Default Cost, Liquidity Cost, and Risk Premium over Time


When liquidity is abundant, LCS might not play an important role in explaining spread differences across bonds. In fact, adding LCS to the regression may not meaningfully improve the  $\mathbb{R}^2$ . In contrast, when liquidity conditions deteriorate, adding LCS to the regression will likely improve the  $\mathbb{R}^2$ .

As discussed, the regression intercept captures the portion of (average) spread that is independent of CDS and LCS. The market risk premium is likely to be, at times, an important contributor to the level of OAS. The time series can be used as an indicator of the variation of the market risk premium—or risk aversion—in the credit market. When the intercept explains a relatively high proportion of OAS, this suggests that systematic market factors, rather than bond-specific factors, are driving spreads. This may occur because of very high levels of aggre gate risk aversion or because the market is pricing bonds with little concern for issuer-specific information. When the intercept explains a relatively low proportion of OAS, this suggests that bond-specific factors are driving spreads.


The regression coefficients for both CDS and LCS are expected to be positive. While the relationship of CDS with OAS is naturally tight, it may not be as close as one might think. Since default risk for high-grade bonds has been very low over long periods of time, a relatively large proportion of the OAS is likely liquidity-related.

# APPLICATIONS OF CREDIT SPREAD DECOMPOSITION

The parameter estimates from the spread decomposition model can be used in a variety of portfolio management applications. Active portfolio managers can use spread decomposition to take positions in specific bonds with large liquidity or default components, depending on their views about how these components are likely to evolve. Regulators can use spread decomposition to monitor separately the liquidity and credit risk embedded in the credit portfolios of the institutions they supervise, which can help determine capital adequacy.


Presented below is a discussion of two important applications of credit spread decomposition: identifying bonds that may be trading "rich" or "cheap," and allowing the manager to construct hedges that target specific drivers of OAS fluctuations.

# Identifying Relative Value

So far, credit spread decomposition analysis has been described using contemporaneous data to attribute OAS levels to default and liquidity cost components at a given time. However, investors can apply spread decomposition analysis to ex ante investment decisions as well.

In principle, spread decomposition should help identify relative value opportunities. A bond's OAS can be compared with its estimated OAS using the parameters from the spread decomposition model. If the actual OAS is wider than the estimated OAS, it suggests that the bond is trading too wide, and vice versa. This may be a signal that the bond's OAS may change to correct this "mispricing."

To examine whether the realized residuals  $\hat{\eta}_{i,t}$  from (1) can help predict future OAS changes, one can examine whether the bond's future OAS changes are of the opposite sign to the sign of the residual by running the following regression and testing to see if the  $\theta^{\prime}s$  are negative.

$$
\Delta O A S_{i t, t + j} = \alpha_{t} + \theta_{t} \hat {\eta}_{i t} + \delta_{t} \text{Mo nt hD um my}_{t} + e_{i t} \tag {2}
$$

# Hedging a Credit Bond Portfolio

One method to determine a hedge for a credit is to use regression to examine the historical relationship between the bond's OAS and potential hedge variables. The issuer's CDS may be an effective hedge targeted against changes in expected default losses. Since movements in the volatility index (VIX) are closely related to changes in LCS, VIX futures can potentially be used as a credit hedging instrument to target spread changes related to changes in liquidity.


If an investor seeks to hedge the default or liquidity components separately, then the contribution to OAS in basis points from the credit spread decomposition model (in differences—discussed below) determines the appropriate hedge ratio for each component. Of course, the success of such a hedge depends on the goodness of fit and whether the historical relationship will hold in the future.

# ALTERNATIVE CREDIT SPREAD DECOMPOSITION MODELS

There are alternative formulations of the credit spread decomposition model. As discussed earlier, the analysis has ignored explicit bond-level risk premium variables. Instead, it assumes that any bond-level risk premium is highly related to either the expected liquidity cost or the expected default cost. An alternative model can include a term representing a bond-level liquidity risk premium. This additional term reflects compensation demanded by investors for the risk that the actual cost at liquidation may be different from the expected liquidity cost as measured by the current LCS. A bond's LCS volatility over the prior 12 months can be considered a measure of liquidity risk. For example, two bonds may have the same LCS today, but bond A may have a much more volatile LCS history than bond B. An investor may view bond A as having a riskier liquidity cost and demand an OAS premium versus bond B, all else equal.

The equation below shows the spread decomposition model incorporating a bond-level liquidity risk factor,  $LCSVol_{i,t}$ . Generally, the results may show that  $LCSVol_{i,t}$  is highly significant, but absorbs part of the effect of LCS, thereby not improving the regression's adjusted  $R^2$  substantially.

$$
\begin{array}{l} O A S_{i t} = \alpha_{t} + \beta_{t} C D S_{i t} + \gamma_{t} L C S_{i t} + \phi_{t} L C S V o l_{i t} \\ + \delta_{t} \text{Mo nt hD um my}_{t} + \eta_{i t} \tag {3} \\ \end{array}
$$

The credit spread decomposition model can also be estimated in differences to check if changes in the liquidity and default proxies affect changes in OAS (i.e., contemporaneous returns). The regression model below details the specification, where  $\Delta OAS_{it}$ ,  $\Delta CDS_{it}$ , and  $\Delta LCS_{it}$  refer to changes in a bond's characteristics in consecutive periods. As described above, this model of spread decomposition can be used for designing targeted hedges.

$$
\begin{array}{l} \Delta O A S_{i t} = \alpha_{t} + \beta_{t} \Delta C D S_{i t} + \gamma_{t} \Delta L C S_{i t} \\ + \delta_{t} \text{Mo nt hD um my}_{t} + \eta_{i t} \tag {4} \\ \end{array}
$$

Finally, the spread decomposition model may be susceptible to outliers, especially since default and liquidity are arguably more important considerations for higher spread bonds. To check this, one can run log regressions (e.g., the dependent variable is  $\log(OAS)$  instead of  $OAS$ , similarly for the independent variables), as shown below. If the conclusions from the log model are unchanged, this would indicate that outliers are not driving the results.

$$
\ln \left(O A S_{i t}\right) = \alpha_{t} + \beta_{t} \ln \left(C D S_{i t}\right) + \gamma_{t} \ln \left(L C S_{i t}\right) + \eta_{i t} \tag {5}
$$

# KEY POINTS

- Credit spread decomposition refers to breaking down a bond's option-adjusted spread (OAS) to Treasuries into market risk premium, expected default loss, and expected liquidity cost components.

- To decompose credit spreads, a bond's OAS is regressed on a measure of its expected default cost (CDS) and expected liquidity cost (LCS).
- Credit spread decomposition can help credit investors determine the extent to which spreads reflect expected default losses, high liquidity costs, or a high market-wide risk premium, and make portfolio decisions accordingly.
- Investors can also apply spread decomposition analysis for determining targeted hedging strategies and to help identify relative value opportunities.


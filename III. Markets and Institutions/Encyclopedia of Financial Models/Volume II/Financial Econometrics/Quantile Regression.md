
---
title: Quantile Regression
parent_directory: Financial Econometrics
formatted: 2025-12-21 11:15:00 AM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: opencode
primary_tags:
  - quantile regression
  - statistical methods
  - financial econometrics
secondary_tags:
  - ordinary least squares
  - value at risk
  - robust estimation
  - conditional distribution
  - outlier analysis
cssclasses: academia
---

# Quantile Regression

CHRIS GOWLLAND, CFA

Senior Quantitative Analyst, Delaware Investments

Abstract: Many of the statistical methods that are most commonly used by researchers and practitioners in finance are mainly focused on identifying the central tendency within a data set. However, there are numerous situations where it may be equally or more important to understand the dispersion between outcomes that are higher or lower than the central tendency. One statistical method that can be useful in such investigations is quantile regression, which conceptually can be viewed as a logical extension of ordinary least squares methods.

Many investors use regression methods to gauge the relative attractiveness of different firms, the risks inherent in active or passive portfolios, the historical performance of investment factors, and similar topics. Such research often focuses on understanding the "central tendency" within a data set, and for this purpose perhaps the most commonly used tool is regression based on ordinary least squares (OLS) approaches. OLS methods are designed to find the "line of best fit" by minimizing the sum of squared errors from individual data points. OLS analysis generally does a good job of describing the central tendency within a data set, but typically will be much less effective at describing the behavior of data points that are distant from the line of best fit. Quantile regressions, however, can be useful in such investigations. This statistical approach can be viewed conceptually as a logical extension of ordinary least squares methods. We present a brief overview of quantile regression approaches, together with some examples of how such methods can be applied in practical situations.


## COMPARING QUANTILE AND OLS APPROACHES

Conceptually, OLS statistical analysis can be summarized by the following equation, as expressed in a univariate context where a single independent variable is being used to explain or predict a single dependent variable:

$$
Y_i = \alpha + \beta X_i + \varepsilon
$$
where $\alpha$ represents the intercept (expected value when $X = 0$), $\beta$ represents the slope of the relationship between $X$ and $Y$, and $\varepsilon$ is an error term with an expected mean value of zero.

As a hypothetical example, suppose that  $X$  reflects the expected dividend in dollars for a universe of firms, and  $Y$  represents the stock price for each of those firms. Then the value of  $\beta$  will reflect the value that the market is assigning to each $1 of dividend payment, while the value of  $\alpha$  will reflect the expected price of a stock that does not pay a dividend. (Please note that we are not proposing that such an equation would provide a usable investment thesis.) It is possible to adapt this simple OLS equation to a multivariate context, in which several different independent variables are being used together to explain or predict the value of the dependent variable.

Similarly, quantile regression approaches can be summarized by the following equation, again in a univariate context:

$$
Y_{i} = \alpha^{p} + \sum_{i = 1}^{N} \beta^{p} X_{i} + \varepsilon^{p}
$$ where  $\alpha^p$  represents the intercept for a specified quantile,  $\beta^p$  represents the slope of the relationship between  $X$  and  $Y$  for a specified quantile, and  $\varepsilon^p$  similarly represents the error term for that specified quantile. (The specific form for these two equations has been adapted from Meligkotsidou, Vrontos, and Vrontos, 2007; other authors might use different terminology, but the underlying concepts are the same.) And just as OLS methods can be used in both univariate and multivariate contexts, the same is true for quantile regression approaches.


In this context, what is a quantile? It is a generalized form of a percentile, in other words a measure of spread between the highest and lowest values in a particular range. A quantile can conveniently be expressed in terms of percentages, so that the median will be the 50th quantile. But the same method can be used for any quantile, not just the 50th quantile. In this sense, quantile methods are somewhat similar to value-at-risk (VaR) approaches, which seek to measure the "95th percentile" or "99th percentile" of potential losses in a portfolio.


## REASONS FOR USING QUANTILE METHODS

If a data set is distributed in an approximately normal fashion, and if the analysis focuses specifically on the 50th quantile, then the results will often be quite similar to those derived from conventional OLS analysis. However, OLS methods tend to provide unreliable results if a data set is skewed, has "fat tails," or has some extreme outliers—any or all of which can exist when the relevant data are drawn from economics or finance (Koenker and Hallock, 2001). In such circumstances, quantile regression focusing on the 50th quantile will often provide a more robust estimate of the central tendency than would be available from OLS approaches. Figure 1 provides a hypothetical example of a situation where quantile regression might be useful.

Figure 1 shows a scatter plot of a hypothetical relationship that has three main traits: (1) positive slope, (2) higher dispersion of results when the independent variable is small, and (3) a single outlier toward the top end of the range. The graph shows that the outlier exerts considerable influence on the OLS analysis by tending to skew the relationship upward. A conventional OLS approach might decide to exclude the outlier, but this would effectively mean throwing away the information contained in that data point. By contrast, the quantile analysis includes the outlier, but is less affected by its presence. As a consequence, quantile regression does a better job of identifying the "central tendency" within this data set—in exactly the same way as an analyst might choose to use the median rather than the mean when describing a distribution that has a heavy weight in the left or right tail.

The above analysis shows that quantile regression is more robust than OLS methods in the presence of outliers and other potentially distorting influences. Another useful feature of quantile approaches is that they allow analysis of areas away from the middle of the distribution. Conventional regression techniques focus on the "central tendency" of the data, and thus tend to prioritize describing the relationship that is most representative of the average. However, from the perspective of an active investor or a risk manager, the most interesting information may well be in the tails of the distribution, where the standard OLS approaches are not generally very informative, but where quantile methods can be readily applied.

Figure 2 shows the same scatter plot as Figure 1, but instead of showing the quantile median, it shows estimated lines for the 10th and 90th quantiles. The lines form a funnel-like shape, indicating that there is greater variation on the left of the distribution than the right. From the perspective of an investor, this suggests that the range of possible outcomes from investing in companies on the left of the distribution may be larger, and thus require more careful analysis. From the perspective of a risk manager, the difference in slope between the 10th and 90th percentiles might suggest that greater provisioning would be appropriate if a portfolio tends to have greater weight in the left of the distribution. Once again, the outlier is included in the analysis, but its impact on the estimated intercept and slope for the 10th and 90th percentiles is considerably muted by comparison with what would be expected using OLS-like methods.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/7cae4896028d2f88989c93263032f3b7a14807ca4a59eb32b66ef98fa9372d90.jpg)
Figure 2 Effect of Outliers on OLS and Quantile Analysis: Estimated Lines for the 10th and 90th Quantiles Note: Data are hypothetical and based on a simulated relationship.


## BACKGROUND AND FURTHER EXAMPLES

Quantile regression methods were first developed in the 1970s in the discipline of statistics (Koenker and Bassett, 1978). Koenker (2005) provides a comprehensive overview of quantile regression in general, with numerous examples drawn from finance and from other subject areas. The statistical packages R, S-Plus, Stata, SAS, and SPSS all have quantile regression capabilities, either as part of their base distribution or as separate modules. These packages typically focus on linear quantile regression, but extensions to nonlinear applications are also feasible (Koenker and Hallock, 2001).

In recent years, quantile regression methods have become increasingly popular in finance and economics. Chernozhukov and Umantsev (2000) applied quantile methods to estimate VaR, noting that the basic structure could be applied to various possible modeling approaches. Wu and Xiao (2002) also used quantile methods to estimate VaR and provided an example of how such approaches could be used in the context of an index fund. Engle and Manganelli (2004) provided an example of how to use quantile regression approaches in calculating a conditional VaR measure. Kuester, Mittnik, and Paolella (2006) proposed extending the conditional VaR approach by incorporating some additional autoregressive elements.

An important area of research for academics and practitioners has been the influence of investment style on portfolio returns. One way to perform such analysis is through the analysis of portfolio holdings, but these are typically only available periodically and with a considerable lag. Another approach has been to focus on portfolio returns, which may be available at higher frequency and with a smaller delay. Early work in this area, such as Sharpe (1992) and Carhart (1997), generally relied on OLS approaches, which led to a focus on a portfolio's "central tendency" relative to its benchmark. Bassett and Chen (2001) extended this earlier work by applying quantile methods, and showed that this permits examination of active performance during periods when the portfolio and/or its benchmark are far away from their central tendency.

As shown above, quantile regression provides a more complete picture than OLS approaches of the conditional relationship among financial variables. Landajo, de Andres, and Lorca (2008) used quantile methods to gauge the relationship between size and profitability for publishing firms in Spain, and showed that the patterns for small firms were rather different from those for their larger peers. Similarly, Lee, Chan, Yeh, and Chan (2010) used quantile methods on a sample of firms from Taiwan in order to assess how increasing internationalization affects relative valuation.

Quantile methods can also be used to test whether the quantile-specific parameters are stable over different quantiles and over time, as noted by Koenker and Xiao (2006). Quantile models can thus demonstrate how different variables affect the location, scale, and shape of the conditional distribution of the response. Such methods therefore constitute a significant extension of classical constant coefficient time series models, in which the effect of conditioning is typically confined to a shift of the intercept and/or the slope of the central tendency. Fattouh, Scaramozzino, and Harris (2005) used quantile methods to analyze how the capital structure of firms in Korea had changed over time. Billett and Xue (2008) used quantile approaches to analyze the motivations behind open market share repurchases, and found that firms are generally more likely to repurchase shares when they are at higher risk of being taken over. Pires, Pereira, and Martins (2010) use quantile methods to analyze the determinants of credit default swap spreads over time, and report that some previously reported anomalous results may have occurred due to the emphasis on the conditional mean of the distribution, rather than on the upper and lower tails.


## KEY POINTS

- Quantile regression methods are well established in the statistical literature, and are increasingly being used in finance.
- Quantile regression methods are more robust than conventional OLS approaches to skewed distributions, fat tails, and the presence of outliers—all of which are frequently encountered in real-world financial data.
- Quantile regression approaches can be used to assess the central tendency of a data set, and in this sense can be viewed as a regression-based analogue of the median of a distribution. The same approaches can also be used to examine the upper or lower reaches of a data set, which is not possible using conventional OLS methods.
- For active investors and risk managers, the upper or lower tails of a distribution may well be more interesting than the central tendency, and quantile regression is an appropriate tool for such work.
- Quantile regression methods can be applied to data from a single period, but can also be applied in a time-series context. Such methods can help in analyzing how relationships may have changed over time.

## REFERENCES

Bassett, G. W., Jr., and Chen, H.-L. (2001). Portfolio style: Return-based attribution using quantile regression. Empirical Economics 26, 1: 293-305.

Billett, M. T., and Xue, H. (2008). The takeover deterrent effect of open market share repurchases. Journal of Finance 62, 4: 1827-1850.
Carhart, M. M. (1997). On persistence in mutual fund performance. Journal of Finance 52, 1: 57-82.
Chernozhukov, V., and Umantsev, L. (2001). Conditional value-at-risk: Aspects of modeling and estimation. Empirical Economics 26, 1: 271-292.
Engle, R. F., and Manganelli, S. (2004). CAViaR: Conditional autoregressive value at risk by regression quantiles. Journal of Business & Economic Statistics 22, 4: 367-381.
Fattouh, B., Scaramozzino, P., and Harris, L. Capital structure in South Korea: A quantile regression approach. Journal of Development Economics 76, 1: 231-250.
Koenker, R. (2005). Quantile Regression. New York: Cambridge University Press.
Koenker, R., and Bassett, G. W., Jr. (1978). Regression quantiles. *Econometrica* 46, 1: 33-50.
Koenker, R., and Hallock, K. (2001). Quantile regression. Journal of Economic Perspectives 15, 4: 143-156.
Koenker, R., and Xiao, Z. (2006). Quantile autoregression. Journal of the American Statistical Association 101, 475: 980-990.
Kuester, K., Mittnik, S., and Paolella, M. (2006). Value-at-Risk prediction: A comparison of alternative strategies. Journal of Financial Econometrics 4, 1: 53-89.
Landajo, M., de Andres, J., and Lorca, P. (2008). Measuring firm performance by using linear and non-parametric quantile regressions. Applied Statistics 57, 2: 227-250.
Lee, T., Chan, K., Yeh, J.-H., and Chan, H.-Y. (2010). The impact of internationalization on firm performance: A quantile regression analysis. International Review of Accounting, Banking and Finance 2, 4: 39-59.
Meligkotsidou, L., Vrontos, I. D., and Vrontos, S. D. (2009). Quantile analysis of hedge fund strategies. Journal of Empirical Finance 16, 2: 264-279.
Pires, P., Pereira, J. P., and Martins, L. F. (2010). The complete picture of credit default swap spreads: A quantile regression approach. ISCTE Business School working paper.

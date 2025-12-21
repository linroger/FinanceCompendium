# Index Models

# 8

THE MARKOWITZ PROCEDURE introduced in the preceding chapter suffers from two drawbacks. First, the model requires a huge number of estimates to fill the covariance matrix. Second, it does not provide any guidelines for finding useful estimates of these covariances or the risk premiums that are essential to construct the efficient frontier of risky assets. Because past returns are noisy guides to expected future returns, this drawback can be telling.

In this chapter, we introduce index models that simplify estimation of the covariance matrix and greatly enhance the analysis of security risk premiums. By allowing us to explicitly decompose risk into systematic and firm-specific components, these models also shed considerable light on both the power and the limits of diversification. Further, they allow us to measure these components of risk for particular securities and portfolios.

We begin the chapter by describing a single-factor security market and show how it can justify a single-index model of security returns. Once its properties are analyzed, we proceed to show how the single-index model can be estimated from widely available data. We review the statistical properties of these estimates and show how they relate to the practical issues facing portfolio managers.


Despite the simplification they offer, index models remain true to the concepts of the efficient frontier and portfolio optimization. Moreover, they can be used to identify optimal portfolios nearly as accurately as the much more data-intensive Markowitz algorithm.

Finally, we examine optimal risky portfolios constructed using the index model. While the principles are the same as those employed in the previous chapter, the properties of the portfolio are easier to derive and interpret in this context. We illustrate how to use the index model by constructing an optimal risky portfolio using a small sample of firms. This portfolio is compared to the corresponding portfolio constructed from the Markowitz model.

# 8.1 A Single-Factor Security Market

# The Input List of the Markowitz Model

The success of a portfolio selection rule depends on the quality of the input list, that is, the estimates of expected security returns and the covariance matrix. In the long run, efficient portfolios will beat portfolios with less reliable input lists and consequently inferior reward-to-risk trade-offs.

Suppose your security analysts can thoroughly analyze 50 stocks. This means that your input list will include the following:

$$
\begin{array}{l} n = \quad 5 0 \text {e s t i m a t e s o f e x p e c t e d r e t u r n s} \\ n = \quad 5 0 \text {e s t i m a t e s o f v a r i a n c e s} \\ (n ^ {2} - n) / 2 = \frac {1 , 2 2 5}{1 , 3 2 5} \text {e s t i m a t e s o f c o v a r i a n c e s} \\ \end{array}
$$

This is a formidable task, particularly in light of the fact that a 50-security portfolio is relatively small. Doubling  $n$  to 100 will nearly quadruple the number of estimates to 5,150. If  $n = 3,000$ , still less than the number of issues included in the Wilshire 5000 index, we need more than 4.5 million estimates.

Another difficulty in applying the Markowitz model to portfolio optimization is that errors in the assessment or estimation of correlation coefficients can lead to nonsensical results. This can happen because some sets of correlation coefficients are mutually inconsistent, as the following example demonstrates:

<table><tr><td rowspan="2">Asset</td><td rowspan="2">Standard Deviation (\%)</td><td colspan="3">Correlation Matrix</td></tr><tr><td>A</td><td>B</td><td>C</td></tr><tr><td>A</td><td>20</td><td>1.00</td><td>0.90</td><td>0.90</td></tr><tr><td>B</td><td>20</td><td>0.90</td><td>1.00</td><td>0.00</td></tr><tr><td>C</td><td>20</td><td>0.90</td><td>0.00</td><td>1.00</td></tr></table>

Suppose that you construct a portfolio with weights  $-1.00, 1.00, 1.00$  for assets A, B, C, respectively, and calculate the portfolio variance. If you use the standard formulas for portfolio variance, you will find that it appears to be negative  $(-200)$ ! This, of course, is not possible: Variances cannot be negative. We conclude that the inputs in the estimated correlation matrix must be mutually inconsistent. Of course, true correlation coefficients are always consistent. But we do not know these true correlations and can only estimate them with some imprecision. Unfortunately, as this example illustrates, it is difficult to determine at a quick glance whether a correlation matrix is inconsistent, providing another motivation to seek a model that is easier to implement.

Introducing a model that simplifies the way we describe the sources of security risk allows us to use a smaller, necessarily consistent, and, just as important, more easily interpreted set of estimates of risk parameters and risk premiums. The simplification emerges because positive covariances among security returns arise from common economic forces that affect the fortunes of most firms. Some examples of common economic factors are business cycles, interest rates, and the cost of natural resources. "Shocks" (i.e., unexpected changes) to these macroeconomic variables cause, simultaneously, correlated shocks in the rates of return on stocks across the entire market. By decomposing uncertainty into these systemwide versus firm-specific sources, we vastly simplify the problem of estimating covariance and correlation.


# Systematic versus Firm-Specific Risk

We focus on risk by separating the actual rate of return on any security,  $i$ , into the sum of its previously expected value plus an unanticipated surprise:

$$ r _ {i} = E \left(r _ {i}\right) + \text {u n a n t i c i p a t e d} \tag {8.1}
$$

The unanticipated component of the stock return can be due either to unexpected developments in issues that are particular to the firm or to unexpected changes in conditions that affect the broad economy. We therefore will decompose the sources of return uncertainty into uncertainty about the economy as a whole, which is captured by a systematic market factor that we will call  $m$ , and uncertainty about the firm in particular, which is captured by a firm-specific random variable that we will call  $e_i$ . The common dependence that virtually all firms have to macroeconomic conditions is the source of the correlation between their security returns.

The market factor,  $m$ , measures unanticipated developments in the macroeconomy. For example, it might be the difference between GDP growth and the market's previous expectation of that growth. As such, it has a mean of zero (over time, surprises will average out to zero), with standard deviation of  $\sigma_{m}$ . In contrast,  $e_{i}$  measures only the firm-specific surprise. As a surprise, it too has zero expected value. Notice that  $m$  has no subscript because the same common factor affects all securities. Most important is the fact that  $m$  and  $e_{i}$  are assumed to be uncorrelated: Because  $e_{i}$  is firm-specific, it is independent of shocks to the common factor that affect the entire economy. The variance of  $r_{i}$  thus arises from two uncorrelated sources, systematic and firm-specific.

Finally, we recognize that some securities will be more sensitive than others to macroeconomic shocks. For example, auto firms might respond more dramatically to changes in general economic conditions than pharmaceutical firms. We can capture this refinement by assigning each firm a sensitivity coefficient to macro conditions. Therefore, if we denote the sensitivity coefficient for firm  $i$  by the Greek letter beta,  $\beta_{i}$ , we can write the return on each stock in any period as the sum of three terms: the originally expected return, the impact of the common macroeconomic surprise (which depends on the firm's sensitivity to that surprise), and the impact of firm-specific surprises. Equation 8.2 is the algebraic expression of this single-factor model:

$$ r _ {i} = E \left(r _ {i}\right) + \beta_ {i} m + e _ {i} \tag {8.2}
$$

There are two uncorrelated random terms on the right-hand side of Equation 8.2, so the total variance of  $r_i$  is

$$
\sigma_ {i} ^ {2} = \beta_ {i} ^ {2} \sigma_ {m} ^ {2} + \sigma^ {2} \left(e _ {i}\right) \tag {8.3}
$$

The variance of returns attributable to the marketwide factor is called the systematic risk of the security. This component of variance equals  $\beta_i^2\sigma_m^2$  and is higher when firm  $i$ 's beta coefficient is higher. "Cyclical" firms have greater sensitivity to the market (higher betas) and therefore have greater systematic risk. The firm-specific component of return variance is  $\sigma^2 (e_i)$ .


Because the index model assumes that firm-specific surprises are mutually uncorrelated, the only source of covariance between any pair of securities is their common dependence on the market return. Therefore, the covariance between two firms' returns depends on the sensitivity of each to the market, as measured by their betas:

$$
\operatorname {C o v} \left(r _ {i}, r _ {j}\right) = \operatorname {C o v} \left(\beta_ {i} m + e _ {i}, \beta_ {j} m + e _ {j}\right) = \beta_ {i} \beta_ {j} \sigma_ {m} ^ {2} \tag {8.4}
$$

The decomposition of return variability into components that depend on a common macroeconomic factor versus firm-specific shocks is compelling but, to be useful, we still need a variable that can proxy for this common factor. This variable must be observable, so we can estimate its volatility as well as the sensitivity of individual securities to variation in its outcome.

# 8.2 The Single-Index Model

Because the systematic factor affects the performance of all stocks, the rate of return on a broad market index can plausibly proxy for that common factor. This approach leads to an equation similar to the single-factor model, which is called a single-index model because it uses the market index to stand in for the common factor.

# The Regression Equation of the Single-Index Model

The intuition behind the index model can be seen in Figure 8.1. We begin with a historical sample of paired observations of excess returns on the market index and a particular security, let's say shares in U.S. Steel. In Figure 8.1, we have 60 pairs of monthly excess returns, one for each month in a 5-year sample. Each dot represents the pair of returns in one particular month. For example, in June 2019, U.S. Steel's excess return was  $29.75\%$  while the market's was  $6.93\%$ .

To describe the typical relation between the return on U.S. Steel and the return on the market index, we fit a straight line through this scatter diagram. It is clear from this "line of best fit" that there is a positive relation between U.S. Steel's return and the market's. This is evidence for the importance of broad market conditions on the performance of U.S. Steel's stock. The slope of the line reflects the sensitivity of U.S. Steel's return to market conditions: A steeper line would imply that the rate of return is more responsive to the market return. On the other hand, the scatter diagram also shows that market conditions are not the entire story: If returns perfectly tracked those of the market, then all return pairs would lie exactly on the line. The scatter of points around the line is evidence that firm-specific events also have a significant impact on the company's return.

How do we determine the line of best fit in Figure 8.1? We will denote the market index by  $M$ , with excess return of  $R_{M} = r_{M} - r_{f}$ , and standard deviation of  $\sigma_{M}$ . We estimate the line using a single-variable linear regression. Specifically, denoting U.S. Steel by its ticker symbol  $X$ , we regress its excess return,  $R_{X} = r_{X} - r_{f}$ , on the excess return of the index,  $R_{M}$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/4f27ccacf5face9c4ddb58ead83ae55f12377d1822fbafda5978673b804ded42.jpg)
Figure 8.1 Scatter diagram for U.S. Steel against the market index and U.S. Steel's security characteristic line, 5 years ending December 2021.

More generally, for any stock  $i$ , denote the pair of excess returns in month  $t$  by  $R_{i}(t)$  and  $R_{M}(t)$ . Then the index model can be written as the following regression equation:

$$
R _ {i} (t) = \alpha_ {i} + \beta_ {i} R _ {M} (t) + e _ {i} (t) \tag {8.5}
$$

The intercept of this equation (denoted by the Greek letter alpha, or  $\alpha$ ) is the security's expected excess return when the market excess return is zero. It is the vertical intercept in Figure 8.1. The slope of the line in the figure is the security's beta coefficient,  $\beta_{i}$ . Beta is the amount by which the security return tends to increase or decrease for every  $1\%$  increase or decrease in the return on the index, and therefore measures the security's sensitivity to the market index.  $e_{i}(t)$  is the zero-mean, firm-specific surprise in the security return in month  $t$ , also called the residual. The greater the residuals (positive or negative), the wider is the scatter of returns around the straight line in Figure 8.1.

Notice that so far, there is little "theory" in the index model. It is merely a way to describe the typical relation between market returns and returns on particular firms. The average beta of all stocks in the economy is 1; the average response of a stock to changes in a market index composed of all stocks must be 1-for-1. The beta of the market index is, by definition, 1: The index obviously responds 1-for-1 to changes in itself. "Cyclical" or aggressive stocks have higher-than-average sensitivity to the broad economy and therefore have betas greater than 1. Conversely, the betas of "defensive" stocks are less than 1. The returns of these stocks respond less than 1-for-1 to market returns.

While the index model is mostly descriptive, it nevertheless will help us address these two important questions: (1) What relation might we expect to observe between a stock's beta and its expected return? and (2) What value for alpha should we expect to observe when markets are in equilibrium? We will have much to say on these topics below.

# The Expected Return-Beta Relationship

Because  $E(e_{i}) = 0$ , if we take the expected value of both sides of Equation 8.5, we obtain the expected return-beta relationship of the single-index model:

$$
E \left(R _ {i}\right) = \alpha_ {i} + \beta_ {i} E \left(R _ {M}\right) \tag {8.6}
$$

The second term in Equation 8.6 tells us that part of a security's risk premium is due to the risk premium of the index. The market risk premium is multiplied by the relative sensitivity, or beta, of the individual security. This makes intuitive sense because securities with high betas have a magnified sensitivity to market risk and will therefore provide a greater risk premium as compensation for this risk. We call this the systematic risk premium because it derives from the risk premium that characterizes the market index, which in turn proxies for the condition of the full economy or economic system.

The remainder of the risk premium is given by the first term in the equation,  $\alpha$ . Alpha is a nonmarket premium. For example,  $\alpha$  may be large if you think a security is underpriced and therefore offers an attractive expected return. Later on, we will see that when security prices are in equilibrium, such attractive opportunities ought to be competed away, in which case  $\alpha$  will be driven to zero. But for now, let's assume that security analysts come up with their own estimates of alpha. If managers believe that they can do a superior job of security analysis, then they will be confident in their ability to find stocks with nonzero values of alpha.

We will see shortly that the index model decomposition of an individual security's risk premium to market and nonmarket components greatly clarifies and simplifies the operation of macroeconomic and security analysis within an investment company.

# Risk and Covariance in the Single-Index Model

Remember that one of the problems with the Markowitz model is the large number of parameter estimates required to implement it. Now we will see that the index model vastly reduces the number of parameters that must be estimated. In particular, we saw from Equation 8.4 that the covariance between any pair of stocks is determined by their common exposure to market risk; this insight yields great simplification in estimating an otherwise overwhelming number of covariance pairs. Using Equation 8.5, we can derive the following elements of the input list for portfolio optimization from the parameters of the index model:

Total risk  $=$  Systematic risk + Firm-specific risk

$$
\sigma_ {i} ^ {2} = \beta_ {i} ^ {2} \sigma_ {M} ^ {2} + \sigma^ {2} (e _ {i}); \text {c o m p a r e t o E q u a t i o n 8 . 3}
$$

Covariance = Product of betas × Market-index risk

$$
\operatorname {C o v} \left(r _ {i}, r _ {j}\right) = \beta_ {i} \beta_ {j} \sigma_ {M} ^ {2}; \text {c o m p a r e t o E q u a t i o n 8 . 4} \tag {8.7}
$$

Correlation = Product of correlations with the market index

$$
\operatorname {C o r r} \left(r _ {i}, r _ {j}\right) = \frac {\beta_ {i} \beta_ {j} \sigma_ {M} ^ {2}}{\sigma_ {i} \sigma_ {j}} = \frac {\beta_ {i} \sigma_ {M} ^ {2}}{\sigma_ {i} \sigma_ {M}} \times \frac {\beta_ {j} \sigma_ {M} ^ {2}}{\sigma_ {j} \sigma_ {M}} = \operatorname {C o r r} \left(r _ {i}, r _ {M}\right) \times \operatorname {C o r r} \left(r _ {j}, r _ {M}\right)
$$

Equations 8.6 and 8.7 imply that the set of parameter estimates needed for the single-index model consists of only  $\alpha_{i}$ ,  $\beta_{i}$ , and  $\sigma(e_{i})$  for each individual security, plus the risk premium and variance of the market index.


# Concept Check 8.1

The data below describe a three-stock financial market that satisfies the single-index model.

<table><tr><td>Stock</td><td>Capitalization</td><td>Beta</td><td>Mean Excess Return</td><td>Standard Deviation</td></tr><tr><td>A</td><td>3,000</td><td>1.0</td><td>10\%</td><td>40\%</td></tr><tr><td>B</td><td>1,940</td><td>0.2</td><td>2</td><td>30</td></tr><tr><td>C</td><td>1,360</td><td>1.7</td><td>17</td><td>50</td></tr></table>

The standard deviation of the market-index portfolio is  $25\%$ .

a. What is the mean excess return of the index portfolio?
b. What is the covariance between stock A and stock B?
c. What is the covariance between stock  $B$  and the index?
d. Break down the variance of stock  $B$  into its systematic and firm-specific components.

# The Set of Estimates Needed for the Single-Index Model

We summarize the results for the single-index model in the table below.

<table><tr><td></td><td>Symbol</td></tr><tr><td>1. The stock&#x27;s expected return if the market is neutral, that is, if the market&#x27;s excess return,  r_M - r_f , is zero</td><td> \alpha_i </td></tr><tr><td>2. The component of return due to movements in the overall market in any period;  \beta_i  is the security&#x27;s responsiveness to market movements</td><td> \beta_i(r_M - r_f) </td></tr><tr><td>3. The unexpected component of return in any period due to unexpected events that are relevant only to this security (firm specific)</td><td> e_i </td></tr><tr><td>4. The variance attributable to the uncertainty of the common macro-economic factor</td><td> \beta_i^2\sigma_M^2 </td></tr><tr><td>5. The variance attributable to firm-specific uncertainty</td><td> \sigma^2(e_i) </td></tr></table>

These calculations show that if we have:

-  $n$  estimates of the extra-market expected excess returns,  ${\alpha }_{i}$
-  $n$  estimates of the sensitivity coefficients,  $\beta_{i}$
-  $n$  estimates of the firm-specific variances,  ${\sigma }^{2}\left( {e}_{i}\right)$
1 estimate for the market risk premium,  $E(R_{M})$
1 estimate for the variance of the (common) macroeconomic factor,  $\sigma_M^2$ then these  $(3n + 2)$  estimates will enable us to prepare the entire input list for this single-index-security universe. Thus, for a 10-security portfolio, we cut the number of estimates roughly in half, from 65 to 32. But for a diversified portfolio of 500 stocks, we reduce the number of parameter estimates from 125,750 to 1,502, a decline of nearly  $99\%$


It is easy to see why the index model is such a useful abstraction. For large universes of securities, the number of estimates required for the Markowitz procedure using the index model is only a small fraction of what otherwise would be needed.

Another advantage is less obvious but equally important. The index model abstraction is crucial for specialization of effort in security analysis. If a covariance term had to be calculated directly for each security pair, then security analysts could not specialize by industry. For example, if one group were to specialize in the computer industry and another in the auto industry, who would have the common background to estimate the covariance between Dell and GM? Neither group would have the deep understanding of other industries necessary to make an informed judgment of co-movements among industries. In contrast, the index model suggests a simple way to compute covariances. They are due to the common influence of the single macroeconomic factor, represented by the market index return, and can be easily estimated using Equation 8.7.

The simplification derived from the index model assumption is, however, not without cost. The "cost" of the model lies in the restrictions it places on the structure of asset return uncertainty. The classification of uncertainty into a simple dichotomy—macro versus micro risk—oversimplifies sources of real-world uncertainty and misses some important sources of dependence in stock returns. For example, this dichotomy rules out industry events that may affect many firms within an industry without substantially affecting the broad macroeconomy.

This last point is potentially important. Imagine that the single-index model is perfectly accurate, except that the residuals of two stocks, say, British Petroleum (BP) and Shell Oil, are correlated. The index model will ignore this correlation (it will assume it is zero), while the Markowitz algorithm (which accounts for the full covariance between every pair of stocks) will automatically take the residual correlation into account when minimizing portfolio variance. If the universe of securities from which we construct the optimal portfolio is small, the two models can yield substantively different optimal portfolios. The portfolio resulting from the Markowitz algorithm will place a smaller weight on both BP and Shell because their mutual covariance reduces their diversification value. Conversely, when correlation among residuals is negative, the index model will ignore the potential diversification value of these securities. The resulting "optimal" portfolio will place too little weight on these securities.

The optimal portfolio derived from the single-index model therefore can be significantly inferior to that of the full-covariance (Markowitz) model when stocks with correlated residuals account for a large fraction of the portfolio. If many pairs of the covered stocks exhibit residual correlation, it is possible that a multi-index model, which includes additional factors to capture those extra sources of cross-security correlation, would be better suited for portfolio analysis and construction. We will demonstrate the effect of correlated residuals in the spreadsheet example in this chapter, leaving our discussion of multi-index models to later chapters.


# Concept Check 8.2

Suppose that the index model for the excess returns of stocks  $A$  and  $B$  is estimated with the following results:

$$
R _ {A} = 1.0 \% + .9 R _ {M} + e _ {A}
$$

$$
R _ {B} = - 2.0 \% + 1.1 R _ {M} + e _ {B}
$$

$$
\sigma_ {M} = 20 \%
$$

$$
\sigma \left(\mathrm {e} _ {A}\right) = 30 \%
$$

$$
\sigma \left(e _ {B}\right) = 10 \%
$$

Find the standard deviation of each stock and the covariance between them.

# The Index Model and Diversification

The index model, first suggested by Sharpe, $^{4}$  also offers insight into portfolio diversification. Suppose that we choose an equally weighted portfolio of  $n$  securities. The excess rate of return on each security is given by

$$
R _ {i} = \alpha_ {i} + \beta_ {i} R _ {M} + e _ {i}
$$

Similarly, we can write the excess return on the portfolio of stocks as

$$
R _ {P} = \alpha_ {P} + \beta_ {P} R _ {M} + e _ {P} \tag {8.8}
$$

We now show that, as the number of stocks included in this portfolio increases, the part of the portfolio risk attributable to nonmarket factors becomes ever smaller. This part of the risk is diversified away, and therefore will be of little concern to investors. In contrast, market risk remains, regardless of the number of firms combined into the portfolio.

To understand these results, note that the excess rate of return on an equally weighted portfolio, for which each portfolio weight  $w_{i} = 1 / n$ , is

$$
\begin{array}{l} R _ {P} = \sum_ {i = 1} ^ {n} w _ {i} R _ {i} = \frac {1}{n} \sum_ {i = 1} ^ {n} R _ {i} = \frac {1}{n} \sum_ {i = 1} ^ {n} \left(\alpha_ {i} + \beta_ {i} R _ {M} + e _ {i}\right) \tag {8.9} \\ = \frac {1}{n} \sum_ {i = 1} ^ {n} \alpha_ {i} + \left(\frac {1}{n} \sum_ {i = 1} ^ {n} \beta_ {i}\right) R _ {M} + \frac {1}{n} \sum_ {i = 1} ^ {n} e _ {i} \\ \end{array}
$$

Comparing Equations 8.8 and 8.9, we see that the portfolio has a sensitivity to the market given by

$$
\beta_ {P} = \frac {1}{n} \sum_ {i = 1} ^ {n} \beta_ {i} \tag {8.10}
$$ which is the average of the individual  $\beta_{i}\mathrm{s}$ . It has a nonmarket return component of


$$
\alpha_ {P} = \frac {1}{n} \sum_ {i = 1} ^ {n} \alpha_ {i} \tag {8.11}
$$ which is the average of the individual alphas, plus the zero mean variable


$$ e _ {P} = \frac {1}{n} \sum_ {i = 1} ^ {n} e _ {i} \tag {8.12}
$$ which is the average of the firm-specific components. Hence, the portfolio's variance is


$$
\sigma_ {P} ^ {2} = \beta_ {P} ^ {2} \sigma_ {M} ^ {2} + \sigma^ {2} \left(e _ {P}\right) \tag {8.13}
$$

The systematic component of the portfolio variance, which we defined as the component that depends on marketwide movements, is  $\beta_P^2\sigma_M^2$  and depends on the average beta coefficient of the individual securities. This part of the risk depends on portfolio beta and  $\sigma_M^2$  and will persist regardless of the extent of portfolio diversification. No matter how many stocks are held, their common exposure to the market will result in a positive portfolio beta and be reflected in portfolio systematic risk. $^5$

In contrast, the nonsystematic component of the portfolio variance is  $\sigma^2 (e_P)$  and is attributable to the firm-specific components,  $e_i$ . Because these  $e_i$ s are independent, and all have zero expected value, the law of averages can be applied to conclude that as more and more stocks are added to the portfolio, the firm-specific components tend to cancel out, resulting in ever-smaller nonmarket risk. Such risk is thus termed diversifiable. To see this more rigorously, examine the formula for the variance of the equally weighted "portfolio" of firm-specific components. Because the  $e_i$ s are uncorrelated,

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/e4f0ec1c2ee1bf4b8c58ece40c15a055d2a906bf3987f96426ca73821ccdbb9f.jpg)
Figure 8.2 The variance of an equally weighted portfolio with risk coefficient  $\beta_{P}$  in the single-index economy as a function of the number of firms included in the portfolio


$$
\sigma^ {2} \left(e _ {P}\right) = \operatorname {V a r} \left(\frac {1}{n} \sum_ {i = 1} ^ {n} e _ {i}\right) = \sum_ {i = 1} ^ {n} \left(\frac {1}{n}\right) ^ {2} \sigma^ {2} \left(e _ {i}\right) = \frac {1}{n} \sum_ {i = 1} ^ {n} \frac {\sigma^ {2} \left(e _ {i}\right)}{n} = \frac {1}{n} \bar {\sigma} ^ {2} (e) \tag {8.14}
$$ where  $\overline{\sigma}^2(e)$  is the average of the firm-specific variances. Because the average nonsystematic variance is independent of  $n$ , when  $n$  gets large,  $\sigma^2(e_p)$  becomes negligible.


To summarize, as diversification increases, the total variance of a portfolio approaches the systematic variance, defined as the variance of the market index multiplied by the square of the portfolio sensitivity coefficient,  $\beta_P^2$ . This is shown in Figure 8.2.

Figure 8.2 shows that as more and more securities are combined into a portfolio, the portfolio variance decreases because of the diversification of firm-specific risk. However, the power of diversification is limited. Even for very large  $n$ , part of the risk remains because of the exposure of virtually all assets to the common, or market, factor. Therefore, systematic risk is said to be nondiversifiable.

This analysis is borne out by empirical evidence. We saw the effect of portfolio diversification on portfolio standard deviations in Figure 7.2. These empirical results are similar to the theoretical graph presented here in Figure 8.2.


# Concept Check 8.3

Reconsider the two stocks in Concept Check 8.2. Suppose we form an equally weighted portfolio of  $A$  and  $B$ . What will be the nonsystematic standard deviation of that portfolio?

# 8.3 Estimating the Single-Index Model

Let's pause here to see how one would actually estimate the parameters of the index model. We work with monthly observations of rates of return for the market index and a particular stock. As in Chapter 5, we will use as the market index a comprehensive value-weighted portfolio of the firms that actively trade on the NYSE, AMEX, and NASDAQ. We will treat T-bills as the risk-free asset, and we will estimate the parameters of the model over the 5-year period ending in December 2021.

# The Security Characteristic Line for U.S. Steel

Figure 8.3 shows a graph of the excess returns on U.S. Steel and the market index over the 5-year period. Consistent with Figure 8.1, the graph shows that the firm's returns generally follow those of the index, but with noticeably larger swings. Indeed, the monthly standard deviation of the excess return on the index portfolio over the period was  $4.66\%$ , while that of U.S. Steel was  $17.77\%$ . The larger swings in U.S. Steel's excess returns suggest that we should find a greater-than-average sensitivity to the market index, that is, a beta greater than 1.0.

The index model regression was stated in Equation 8.5 and plotted in Figure 8.1, using U.S. Steel as our example firm. We restate it here as:

$$
R _ {\chi} (t) = \alpha_ {\chi} + \beta_ {\chi} R _ {\text {i n d e x}} (t) + e _ {\chi} (t)
$$

The equation describes the (linear) dependence of U.S. Steel's excess return on the excess return of the market index portfolio. The regression estimates describe a straight line with intercept  $\alpha_{X}$  and slope  $\beta_{X}$ , which we call U.S. Steel's security characteristic line (SCL).

The vertical distance of each point from the regression line in Figure 8.1 is the value of U.S. Steel's residual,  $e_X(t)$ , in that particular month. For example, in June 2019, when the market's excess return was  $6.93\%$ , the regression line would have predicted an excess return for U.S. Steel of  $13.91\%$ . This is the  $y$ -axis value on the regression line corresponding to an  $x$ -axis value (the market's excess return) of  $6.93\%$ . In fact, U.S. Steel's excess return in June was  $29.75\%$ , implying that the residual return in this month was  $29.75\% - 13.91\% =$

15.84\%. This is evidence of good firm-specific news that contributed 15.84\% to U.S. Steel's rate of return.

We estimate the parameters of the regression line in Figure 8.1 using Excel's Regression tool (this tool is available as an Add-In under the Data tab). A portion of the output is shown in Table 8.1.

# The Explanatory Power of U.S. Steel's SCL

Starting with the upper panel of Table 8.1, we see that the correlation of U.S. Steel with the market index is fairly high (.532), telling us that returns on U.S. Steel generally track those of the market index. The  $R$ -square (.283) tells us that variation

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/b6e338756a6220a60e375648026b5346855deddb7e6cec395a787fe8e9d37773.jpg)
Figure 8.3 Excess monthly returns on U.S. Steel and the market index, 5 years ending December 2021.

# Table 8.1

Excel output: Regression statistics for U.S. Steel's SCL. Observations are monthly returns measured as percents (not decimals) from January 2017 through December 2021.

<table><tr><td colspan="5">Regression Statistics</td></tr><tr><td>Multiple R</td><td>0.532</td><td></td><td></td><td></td></tr><tr><td>R-Square</td><td>0.283</td><td></td><td></td><td></td></tr><tr><td>Adjusted R-Square</td><td>0.271</td><td></td><td></td><td></td></tr><tr><td>Standard Error</td><td>15.171</td><td></td><td></td><td></td></tr><tr><td>Observations</td><td>60</td><td></td><td></td><td></td></tr><tr><td>Explanatory variable</td><td>Coefficient</td><td>Standard Error</td><td>t-Statistic</td><td>p-Value</td></tr><tr><td>Intercept</td><td>-2.034</td><td>2.052</td><td>-0.991</td><td>0.326</td></tr><tr><td>Market index</td><td>2.030</td><td>0.424</td><td>4.785</td><td>0.000</td></tr></table> in the excess returns of the market index explains about  $28.3\%$  of the variation in U.S. Steel's returns. $^{6}$  The adjusted  $R$ -square (which is slightly smaller) corrects for an upward bias in  $R$ -square that arises because we use the estimated values of two parameters, $^{7}$  the slope (beta) and intercept (alpha), rather than their true, but unobservable, values. With 60 observations, this bias is small. The standard error of the regression is the standard deviation of the residual,  $e$ . High standard errors imply greater impact (positive and negative) of firm-specific events from one month to the next.


# The Estimate of Alpha

We move now to the lower panel of Table 8.1. The intercept  $(-2.034\%)$  per month is the estimate of U.S. Steel's alpha for the sample period. Although this is an economically large value (an absolute value above  $2\%$  per month), it is not statistically significant. This can be seen from the three statistics next to the estimated coefficient. The first is the standard error of the estimate  $(2.052\%)$ . This is a measure of the imprecision of the estimate. If the standard error is large, the range of likely estimation error is correspondingly large.

The  $t$ -statistic reported in the next column is the ratio of the regression parameter to its standard error. This statistic equals the number of standard errors by which our estimate exceeds zero, and therefore can be used to assess the likelihood that the true but unobserved value might actually be zero rather than the estimate we derived from the data.

6The equation for the  $R$  -square is the ratio of the systemic variance to total variance:

$$
R \text {s q u a r e} = \frac {\beta^ {2} \sigma_ {\text {i n d e x}} ^ {2}}{\beta^ {2} \sigma_ {\text {i n d e x}} ^ {2} + \sigma^ {2} (e)}
$$

In general, the adjusted  $R$ -square  $(R_A^2)$  is derived from the unadjusted by  $R_A^2 = 1 - (1 - R^2)\frac{n - 1}{n - k - 1}$ , where  $k$  is the number of independent variables (here,  $k = 1$ ). An additional degree of freedom is lost to the estimate of the intercept.

The  $t$ -statistic is based on the assumption that returns are normally distributed. In general, if we standardize the estimate of a normally distributed variable by computing its difference from a hypothesized value and dividing by the standard error of the estimate (to express the difference as a number of standard errors), the resulting variable will have a  $t$ -distribution. With a large number of observations, the bell-shaped  $t$ -distribution approaches the normal distribution.

The intuition is that if the true value were zero, we would be unlikely to observe estimated values far away (i.e., many standard errors) from zero. So large  $t$ -statistics imply low probabilities that the true value is zero.

Given the  $t$ -statistic, we can use a table of the  $t$ -distribution (or Excel's TINV function) to find the probability that the true alpha is actually zero despite a regression estimate that differs from zero. This is alternatively called the level of significance or, as in Table 8.1, the probability or  $p$ -value. The conventional cutoff for statistical significance is a probability of less than  $5\%$ , which requires a  $t$ -statistic of about 2.0. The regression output shows that the  $t$ -statistic for U.S. Steel's alpha is -.991, not even close to the cutoff for statistical significance. In other words, we cannot reject the hypothesis that the true value of alpha equals zero. The  $p$ -value for the alpha estimate (.326) indicates that if the true alpha were zero, the probability of obtaining an estimate with an absolute value as large as 2.034 would be  $32.6\%$ . Convention is to deem a finding statistically significant only if the  $p$ -value is below  $5\%$ .

# The Estimate of Beta

The regression output in Table 8.1 shows U.S. Steel's beta estimate to be 2.030, meaning that its share price tended to move  $2.030\%$  for every  $1\%$  move in the market index. Not surprisingly, U.S. Steel's prospects appear to have above-average sensitivity to the economy. The standard error (SE) of the estimate is .424.

The value of beta and its standard error produce a large  $t$ -statistic (4.785), and a  $p$ -value of practically zero. We can confidently reject the hypothesis that U.S. Steel's true beta is zero. This is hardly surprising in light of Figure 8.1, which showed that U.S. Steel's return and that of the market index were clearly related. A more interesting  $t$ -statistic might test the hypothesis that the beta is greater than the marketwide average beta of 1. This  $t$ -statistic would measure how many standard errors separate the estimated beta from a hypothesized value of 1. The following calculation shows that the  $t$ -statistic for this hypothesis is 2.43, allowing us to reject the hypothesis that the true beta is 1.

$$
\frac {\text {E s t i m a t e d v a l u e - H y p o t h e s i z e d v a l u e}}{\text {S t a n d a r d e r r o r}} = \frac {2 . 0 3 0 - 1}{. 4 2 4} = 2. 4 3
$$

In general, precision is not what we would like it to be. For example, if we wanted to construct a confidence interval that includes the true but unobserved value of beta with  $95\%$  probability, we would take the estimated value as the center of the interval and then add and subtract about two standard errors. This produces a range between 1.182 and 2.878, which is quite wide.

# Firm-Specific Risk

The standard deviation of U.S. Steel's residual is  $15.17\%$  per month, or  $52.6\%$  annually. This is quite large, on top of its already high systematic risk. The standard deviation of systematic risk is  $\beta \times \sigma (\mathrm{index}) = 2.03\times 4.66 = 9.46\%$  per month. Notice that U.S. Steel's firm-specific risk is greater than its systematic risk, a common result for individual stocks. In other words, more of the fluctuation in its monthly return derives from firm-specific factors than from marketwide systematic factors.

<table><tr><td>Company</td><td>Beta</td><td>Alpha</td><td>R-Square</td><td>Residual Std Dev</td><td>Standard Error Beta</td><td>Standard Error Alpha</td><td>Adjusted Beta</td></tr><tr><td>Newmont Mining</td><td>0.217</td><td>0.011</td><td>0.016</td><td>0.081</td><td>0.227</td><td>0.011</td><td>0.478</td></tr><tr><td>Campbell Soup</td><td>0.461</td><td>-0.008</td><td>0.109</td><td>0.062</td><td>0.173</td><td>0.008</td><td>0.640</td></tr><tr><td>Intel</td><td>0.510</td><td>0.002</td><td>0.107</td><td>0.069</td><td>0.193</td><td>0.009</td><td>0.673</td></tr><tr><td>McDonald&#x27;s</td><td>0.528</td><td>0.008</td><td>0.246</td><td>0.043</td><td>0.121</td><td>0.006</td><td>0.685</td></tr><tr><td>Pfizer</td><td>0.615</td><td>0.007</td><td>0.176</td><td>0.062</td><td>0.174</td><td>0.008</td><td>0.743</td></tr><tr><td>Coca-Cola</td><td>0.644</td><td>0.000</td><td>0.319</td><td>0.044</td><td>0.124</td><td>0.006</td><td>0.762</td></tr><tr><td>Starbucks</td><td>0.759</td><td>0.004</td><td>0.291</td><td>0.056</td><td>0.156</td><td>0.008</td><td>0.839</td></tr><tr><td>Microsoft</td><td>0.806</td><td>0.019</td><td>0.517</td><td>0.037</td><td>0.102</td><td>0.005</td><td>0.871</td></tr><tr><td>Alphabet (Google)</td><td>1.003</td><td>0.009</td><td>0.523</td><td>0.045</td><td>0.126</td><td>0.006</td><td>1.002</td></tr><tr><td>Amazon</td><td>1.053</td><td>0.012</td><td>0.372</td><td>0.064</td><td>0.180</td><td>0.009</td><td>1.035</td></tr><tr><td>Union Pacific</td><td>1.126</td><td>0.002</td><td>0.587</td><td>0.044</td><td>0.124</td><td>0.006</td><td>1.084</td></tr><tr><td>Walt Disney</td><td>1.175</td><td>-0.007</td><td>0.459</td><td>0.060</td><td>0.168</td><td>0.008</td><td>1.117</td></tr><tr><td>ExxonMobil</td><td>1.295</td><td>-0.018</td><td>0.491</td><td>0.062</td><td>0.173</td><td>0.008</td><td>1.197</td></tr><tr><td>Bank of America</td><td>1.442</td><td>-0.005</td><td>0.662</td><td>0.048</td><td>0.135</td><td>0.007</td><td>1.295</td></tr><tr><td>Boeing</td><td>1.474</td><td>-0.009</td><td>0.306</td><td>0.104</td><td>0.291</td><td>0.014</td><td>1.316</td></tr><tr><td>U.S. Steel</td><td>2.030</td><td>-0.020</td><td>0.283</td><td>0.152</td><td>0.424</td><td>0.021</td><td>1.687</td></tr><tr><td>Marathon Oil</td><td>2.986</td><td>-0.024</td><td>0.477</td><td>0.147</td><td>0.410</td><td>0.020</td><td>2.324</td></tr><tr><td>AVERAGE</td><td>1.066</td><td>-0.001</td><td>0.350</td><td>0.069</td><td>0.194</td><td>0.009</td><td>1.044</td></tr><tr><td>STD DEVIATION</td><td>0.672</td><td>0.012</td><td>0.184</td><td>0.034</td><td>0.095</td><td>0.005</td><td>0.448</td></tr></table>

Index model estimates: Regressions of excess stock returns on the excess return of the broad market index over 60 months, five years ending December 2021.

Table 8.2

Typical Results from Index Model Regressions Table 8.2 shows index model regressions for a sample of well-known companies. Notice that the average beta of the firms is 1.07, almost precisely the expected value of 1.0. As one would expect, firms with high exposure to the state of the macroeconomy (e.g., Boeing, U.S. Steel, Marathon Oil) have betas greater than 1. Firms whose business is less sensitive to the macroeconomy (e.g., Campbell Soup, Newmont Mining, McDonald's) have betas less than 1.

The average alpha for this sample is almost precisely zero. Because the average non-market risk premium is zero, we conclude that these firms, on average, were neither underpriced nor overpriced. Moreover, there are only two firms in the entire sample for which the estimate of alpha is more than twice its standard error (Exxon and Microsoft). One of these alphas is positive, and one negative. In other words, the alpha estimates, by and large, are not statistically significant.

The column titled Residual Standard Deviation is the standard deviation of the residual terms,  $e$ , and is our measure of firm-specific risk. Notice how high that risk is, averaging  $6.9\%$  per month. This reminds us again of the importance of diversification. Anyone who concentrates a portfolio in just one or a few securities is bearing an enormous amount of risk that can easily be diversified.

The high levels of firm-specific risk are reflected as well in the  $R$ -square of these regressions, which average only  $35.0\%$ . For this sample of stocks, only  $35.0\%$  of return variance in this period was due to market factors, implying that  $65.0\%$  was due to firm-specific factors.

# 8.4 The Industry Version of the Index Model

Remember that alpha is a nonmarket risk premium. It is the extra expected return on your portfolio (positive or negative) above and beyond the portion due to market exposure. A portfolio manager who has neither special information about a security nor insight that is unavailable to the general public will take the security's alpha value as zero. Using Equation 8.6, the manager will forecast a risk premium for the security equal to  $\beta_{i}E(R_{M})$ . If we restate this forecast in terms of total returns, one would expect

$$
E \left(r _ {i}\right) = r _ {f} + \beta_ {i} \left[ E \left(r _ {M}\right) - r _ {f} \right] \tag {8.15}
$$

These forecasts depend on beta estimates from regressions like that in Table 8.1. There are several sources for such regression results, for example, Yahoo! Finance or Value Line. The Web sites listed in Connect for this chapter also provide security betas.

Industry beta services, however, typically differ in a few ways from the sort of analysis we presented in Table 8.2. First, they usually use the S&P 500 rather than our broader market index as the proxy for the market factor. Second, they most often use total returns, rather than excess returns (deviations from T-bill rates), in the regressions. In this way, they estimate a variant of our index model, which is

$$ r = a + b r _ {M} + e ^ {*} \tag {8.16}
$$ instead of


$$ r - r _ {f} = \alpha + \beta \left(r _ {M} - r _ {f}\right) + e \tag {8.17}
$$

To see the effect of this departure, we can rewrite Equation 8.17 as

$$ r = r _ {f} + \alpha + \beta r _ {M} - \beta r _ {f} + e = \alpha + r _ {f} (1 - \beta) + \beta r _ {M} + e \tag {8.18}
$$

Comparing Equations 8.16 and 8.18, you can see that if  $r_f$  is constant over the sample period, both equations have the same independent variable,  $r_M$ , and residual,  $e$ . Therefore, the slope coefficient will be the same in the two regressions.

However, the intercept that most providers call ALPHA is really an estimate of  $\alpha + r_f(1 - \beta)$ . On a monthly basis,  $r_f(1 - \beta)$  is small and is likely to be swamped by the volatility of actual stock returns. But it is worth noting that for  $\beta \neq 1$ , the regression intercept in Equation 8.16 will not equal the index model  $\alpha$  as it does when excess returns are used, as in Equation 8.17.


# Concept Check 8.4

Table 8.2 shows that the estimate of Newmont Mining's index-model  $\alpha$  (per month) regression was  $1.1\%$ . If the monthly T-bill rate during this period was  $2\%$ , then what would you predict would be the value of ALPHA given in a standard industry report?

Always remember as well that these alpha estimates are ex post (after the fact) measures. They do not mean that anyone could have forecast these alpha values ex ante

(before the fact). In fact, the name of the game in security analysis is to forecast alpha values ahead of time. A well-constructed portfolio that includes long positions in future positive-alpha stocks and short positions in future negative-alpha stocks will outperform the market index. The key term here is "well constructed," meaning that the portfolio has to balance concentration on high-alpha stocks with the need for risk-reducing diversification. This trade-off is discussed in the next section.

The last column in Table 8.2 is called Adjusted Beta. The motivation for adjusting beta estimates is that, as an empirical matter, beta coefficients seem to move toward 1 over time. One explanation for this phenomenon is intuitive. A business enterprise usually is established to produce a specific product or service, and a new firm may be more unconventional than an older one in many ways, from technology to management style. As it grows, however, a firm often diversifies, first expanding to similar products and later to more diverse operations. As the firm becomes more conventional, it starts to resemble the rest of the economy even more. Thus, its beta coefficient will tend to change in the direction of 1.

Another explanation is statistical. We know that the average beta over all securities is 1. Thus, before estimating the beta of a security, our best forecast would be that it is 1. When we estimate this beta coefficient over a particular sample period, we inevitably sustain some unknown sampling error in the estimated beta. The greater the difference between our beta estimate and 1, the greater is the chance that we have incurred a large estimation error and that beta in a subsequent sample period will be closer to 1.

The estimate of the beta coefficient is the best guess for that particular sample period. Given that beta has a tendency to evolve toward 1, however, a forecast of the future beta coefficient should adjust the sample estimate in that direction.

Table 8.2 adjusts beta estimates in a simple way. $^{10}$  It takes the sample estimate of beta and averages it with 1, using weights of two-thirds and one-third:

$$
\text {A d j u s t e d} = \frac {2}{3} \text {e s t i m a t e d} + \frac {1}{3} (1. 0) \tag {8.19}
$$

# Example 8.1 Adjusted Beta

In Table 8.2, U.S. Steel's beta was estimated at 2.030. Therefore, its adjusted beta is  $\frac{1}{3} \times 2.030 + \frac{1}{3} \times 1 = 1.687$ , taking it a third of the way toward 1.

In the absence of special information concerning U.S. Steel (i.e., setting alpha = 0), if our forecast for the return on the market index is  $8\%$  and T-bills pay  $2\%$ , we will forecast the rate of return on U.S. Steel as:

$$
\begin{array}{l} E \left(r _ {x}\right) = r _ {f} + \text {A d j u s t e d b e t a} \times \left[ E \left(r _ {M}\right) - r _ {f} \right] \\ = 2 + 1.687(8 - 2) = 12.12\% \\ \end{array}
$$

# Predicting Betas

Adjusted betas are a simple way to recognize that betas estimated from past data may not be the best estimates of future betas: Betas seem to drift toward 1 over time. This suggests that we might want a forecasting model for beta.

One simple approach would be to collect data on beta in different periods and then estimate a regression equation:

$$
\text {C u r r e n t} = a + b (\text {P a s t} \beta) \tag {8.20}
$$

Given estimates of  $a$  and  $b$ , we would then forecast future betas using the rule

$$
F o r e c a s t \beta e t a = a + b (\text {C u r r e n t} \beta e t a) \tag {8.21}
$$

There is no reason, however, to limit ourselves to such simple forecasting rules. Why not also investigate the predictive power of other financial variables in forecasting beta? For example, if we believe that firm size and debt ratios are two determinants of beta, we might specify an expanded version of Equation 8.20 and estimate

$$
\text {C u r r e n t} = a + b _ {1} (\text {P a s t} \beta a) + b _ {2} (\text {F i r m} \text {s i z e}) + b _ {3} (\text {D e t h} \text {r a t i o})
$$

Now we would use estimates of  $a$  as well as  $b_{1}$  through  $b_{3}$  to forecast future betas.

Such an approach was suggested in an early study by Rosenberg and Guy, $^{11}$  who found the following variables to help predict betas:

1. Variance of earnings.
2. Variance of cash flow.
3. Growth in earnings per share.
4. Market capitalization (firm size).
5. Dividend yield.
6. Debt-to-asset ratio.

They also found that even after controlling for a firm's financial characteristics, industry group helps to predict beta. For example, they found that the beta values of gold mining companies are, on average, .827 lower than would be predicted based on financial characteristics alone. This should not be surprising; the -.827 "adjustment factor" for the gold industry reflects the fact that gold values have low or even negative correlation with market returns.

Table 8.3 presents beta estimates and adjustment factors for a subset of firms in the Rosenberg and Guy study.


# Concept Check 8.5

Compare the first four and last four industries in Table 8.3. What characteristic seems to determine whether the adjustment factor is positive or negative?

<table><tr><td>Industry</td><td>Beta</td><td>Adjustment Factor</td></tr><tr><td>Agriculture</td><td>0.99</td><td>-0.140</td></tr><tr><td>Drugs and medicine</td><td>1.14</td><td>-0.099</td></tr><tr><td>Energy utilities</td><td>0.60</td><td>-0.237</td></tr><tr><td>Gold</td><td>0.36</td><td>-0.827</td></tr><tr><td>Construction</td><td>1.27</td><td>0.062</td></tr><tr><td>Air transport</td><td>1.80</td><td>0.348</td></tr><tr><td>Trucking</td><td>1.31</td><td>0.098</td></tr><tr><td>Consumer durables</td><td>1.44</td><td>0.132</td></tr></table>

# Table 8.3

Industry betas and adjustment factors

# 8.5 Portfolio Construction Using the Single-Index Model

In this section, we look at the implications of the index model for portfolio construction. These techniques were originally developed by Jack Treynor and Fischer Black and are commonly called the Treynor-Black model. $^{12}$  Our goal is the same as in the previous chapter, the formation of portfolios with an efficient risk-return trade-off, but given the simplification offered by the index model, our techniques will be different. We will see that the index model offers several advantages, not only in terms of parameter estimation, but also for the analytic simplification and organizational decentralization that it makes possible.

# Alpha and Security Analysis

Perhaps the most important advantage of the single-index model is the framework it provides for macroeconomic and security analysis in the preparation of the input list that is so critical to the efficiency of the optimal portfolio. The Markowitz model requires estimates of risk premiums for each security. The estimate of expected return depends on both macroeconomic and individual-firm forecasts. But if many different analysts perform security analysis for a large organization such as a mutual fund company, a likely result is inconsistency in the macroeconomic forecasts that partly underlie expectations of returns across securities.

The single-index model creates a framework that separates these two quite different sources of return variation and makes it easier to ensure consistency across analysts. We can lay down a hierarchy of the preparation of the input list using the framework of the single-index model.

1. Macroeconomic analysis is used to estimate the risk premium and risk of the market index.
2. Statistical analysis is used to estimate the beta coefficients of all securities and their residual variances,  $\sigma^2 (e_i)$
3. The portfolio manager uses the estimates for the market-index risk premium and the beta coefficient of a security to establish the expected return of that security absent any contribution from security analysis. This purely market-driven expected return is conditional on information common to all securities, not on information gleaned from security analysis of particular firms.
4. Security-specific expected return forecasts (specifically, security alphas) are derived from various security-valuation models (such as those discussed in Part Five). Thus, the alpha value distills the incremental risk premium attributable to private information.

Equation 8.6 tells us that the risk premium on a security not subject to security analysis would be  $\beta_{i}E(R_{M})$ . The risk premium would derive solely from the security's tendency to follow the market index. Any alpha (i.e., an expected return beyond this benchmark risk premium) would be due to some nonmarket factor uncovered through security analysis.

The end result of security analysis is a list of alpha values. Statistical methods of estimating beta coefficients are widely known and standardized; hence, we would not expect this portion of the input list to differ greatly across portfolio managers. In contrast, security analysis is far less routine and therefore provides the potential for distinguished performance. Using the index model to disentangle the premiums due to market and nonmarket factors, a portfolio manager can be confident that the security analysts forecasting alpha values are all using consistent estimates for the overall market.

In the context of portfolio construction, alpha is more than just one of the components of expected return. It is the key variable that tells us whether a security is a good or a bad buy. Consider an individual stock for which we have a beta estimate derived from regression analysis and an alpha value from security analysis. We easily can find many other securities with identical betas and therefore identical systematic components of their risk premiums. Therefore, what really makes a security attractive or unattractive to a portfolio manager is its alpha value, its return premium over and above the premium derived from its tendency to track the market index. A positive-alpha security is a bargain and therefore should be overweighted in the overall portfolio. Conversely, a negative-alpha security is overpriced and, other things equal, its portfolio weight should be reduced. In more extreme cases, the desired portfolio weight might even be negative; that is, a short position (if permitted) would be desirable.

# The Index Portfolio as an Investment Asset

Suppose the prospectus of an investment company limits the universe of assets in which the firm may invest to only stocks included in the S&P 500 index. The resources of the company allow coverage of only a relatively small subset of this so-called investable universe. If only these analyzed firms are allowed in the portfolio, the portfolio manager may well be worried about limited diversification.

A simple way to avoid inadequate diversification would be to include the market index in the portfolio. Examination of Equations 8.5 and 8.6 reveals that if we treat the S&P 500 portfolio as the market index, it will have a beta of 1.0 (its sensitivity to itself), no firm-specific risk, and an alpha of zero—there is no nonmarket component in its expected return. Equation 8.7 shows that the covariance of any security,  $i$ , with the market index (in this example, the S&P 500) is  $\beta_{i}\sigma_{M}^{2}$ . To distinguish the S&P 500 from the  $n$  securities actively analyzed by the firm, we will designate it as the  $(n + 1)$ th asset. We can think of the S&P 500 as a passive portfolio that the manager would select in the absence of security analysis. It gives broad market exposure without requiring expensive security analysis. However, if managers are willing to engage in such research, they may be able to devise an active portfolio that can be mixed with the index to provide an even better risk-return trade-off.

# The Single-Index Model Input List

Compiling a portfolio from a list of  $n$  actively researched firms plus a passive market-index portfolio such as the S&P 500 requires the following input list:

1. Risk premium on the S&P 500 portfolio.
2. Standard deviation of the S&P 500 portfolio.
3.  $n$  sets of estimates of (a) beta coefficients, (b) stock residual variances, and (c) alpha values. The alpha values, together with the risk premium of the S&P 500 and the beta of each security, determine the expected excess return on each security.

# The Optimal Risky Portfolio in the Single-Index Model

The single-index model allows us to solve for the optimal risky portfolio and to gain insight into the nature of the solution. First, we confirm that we easily can set up the optimization process to construct the efficient frontier in this framework along the lines of the Markowitz model.

With the estimates of the beta and alpha coefficients, plus the risk premium of the index portfolio, we can generate the  $n + 1$  expected returns using Equation 8.6. With the estimates of the beta coefficients and residual variances, together with the variance of the index portfolio, we can construct the covariance matrix using Equation 8.7. Given the column of risk premiums and the covariance matrix, we can conduct the optimization program described in Chapter 7.

While the index model allows us to more easily implement the Markowitz model for efficient diversification (the focus of Chapter 7), we can take its description of how diversification works a step further. We showed earlier that the alpha, beta, and residual variance of an equally weighted portfolio are the simple averages of those parameters across component securities. This result is not limited to equally weighted portfolios. It applies to any portfolio, where we need only replace "simple average" with "weighted average," using the portfolio weights. Specifically,

$$
\alpha_ {P} = \sum_ {i = 1} ^ {n + 1} w _ {i} \alpha_ {i} \quad \text {a n d f o r t h e i n d e x ,} \alpha_ {n + 1} = \alpha_ {M} = 0
$$

$$
\beta_ {P} = \sum_ {i = 1} ^ {n + 1} w _ {i} \beta_ {i} \quad \text {a n d f o r t h e i n d e x ,} \beta_ {n + 1} = \beta_ {M} = 1 \tag {8.22}
$$

$$
\sigma^ {2} \left(e _ {P}\right) = \sum_ {i = 1} ^ {n + 1} w _ {i} ^ {2} \sigma^ {2} \left(e _ {i}\right) \text {a n d f o r t h e i n d e x ,} \sigma^ {2} \left(e _ {n + 1}\right) = \sigma^ {2} \left(e _ {M}\right) = 0
$$

The objective is to select portfolio weights,  $w_{1}, \ldots, w_{n+1}$ , to maximize the Sharpe ratio of the portfolio. With this set of weights, the expected return, standard deviation, and Sharpe ratio of the portfolio are

$$
E (R _ {P}) = \alpha_ {P} + E (R _ {M}) \beta_ {P} = \sum_ {i = 1} ^ {n + 1} w _ {i} \alpha_ {i} + E (R _ {M}) \sum_ {i = 1} ^ {n + 1} w _ {i} \beta_ {i}
$$

$$
\sigma_ {P} = \left[ \beta_ {P} ^ {2} \sigma_ {M} ^ {2} + \sigma^ {2} \left(e _ {P}\right) \right] ^ {1 / 2} = \left[ \sigma_ {M} ^ {2} \left(\sum_ {i = 1} ^ {n + 1} w _ {i} \beta_ {i}\right) ^ {2} + \sum_ {i = 1} ^ {n + 1} w _ {i} ^ {2} \sigma^ {2} \left(e _ {i}\right) \right] ^ {1 / 2} \tag {8.23}
$$

$$
S _ {P} = \frac {E (R _ {P})}{\sigma_ {P}}
$$

At this point, as in the Markowitz procedure, we could use Excel's optimization program to maximize the Sharpe ratio subject to the adding-up constraint that the portfolio weights sum to 1. However, this is not necessary because when returns follow the index model, the optimal portfolio can be derived explicitly, and the solution for the optimal portfolio provides insight into the efficient use of security analysis in portfolio construction. It is instructive to outline the logical thread of the solution. We will not show every algebraic step, but will instead present the major results and interpretation of the procedure.

Before delving into the results, let us first preview the basic trade-off revealed by the model. If we were interested only in diversification, we would just hold the market index. But security analysis gives us the chance to uncover securities with a nonzero alpha and to take a differential position in those securities. The cost of weighting underpriced securities is a departure from efficient diversification, specifically, the assumption of unnecessary firm-specific risk. The model shows us that the optimal risky portfolio trades off the search for alpha against the departure from efficient diversification.


The optimal risky portfolio turns out to be a combination of two component portfolios: (1) an active portfolio, denoted by  $A$ , comprising the  $n$  analyzed securities (we call this the active portfolio because it follows from active security analysis), and (2) the market-index portfolio, the  $(n + 1)$ th asset we include to aid in diversification, which we call the passive portfolio and denote by  $M$ .

Assume first that the active portfolio has a beta of 1, the same as the index. In that case, the optimal weight in the active portfolio would be proportional to the ratio  $\alpha_{A} / \sigma^{2}(e_{A})$ . This ratio balances the contribution of the active portfolio to risk-adjusted return (its alpha) against its contribution to portfolio variance (via its residual variance). The analogous ratio for the index portfolio is  $E(R_{M}) / \sigma_{M}^{2}$ , and hence the initial position in the active portfolio (by "initial position," we mean if its beta were 1) is

$$ w _ {A} ^ {0} = \frac {\alpha_ {A} / \sigma_ {A} ^ {2}}{E \left(R _ {M}\right) / \sigma_ {M} ^ {2}} \tag {8.24}
$$

Next, we adjust this position to account for the beta of the active portfolio. It turns out that as the beta of the active portfolio increases, its weight in the overall optimal risky portfolio correspondingly increases. The intuition for this result is that if the active portfolio has a higher beta, it more aggressively mimics market performance; because the active position now gives you more market exposure, it crowds out the index portfolio in the overall risky portfolio and thus takes a larger share itself. The precise modification for the position in the active portfolio is

$$ w _ {A} ^ {*} = \frac {w _ {A} ^ {0}}{1 + (1 - \beta_ {A}) w _ {A} ^ {0}} \tag {8.25}
$$

Notice that when  $\beta_{A} = 1, w_{A}^{*} = w_{A}^{0}$ .

# The Information Ratio

Equations 8.24 and 8.25 yield the optimal position in the active portfolio once we know its alpha, beta, and residual variance. With  $w_{A}^{*}$  in the active portfolio and  $1 - w_{A}^{*}$  invested in the index portfolio, we can compute the expected return, standard deviation, and Sharpe ratio of the optimal risky portfolio. The Sharpe ratio of an optimally constructed risky portfolio will exceed that of the index portfolio (the passive strategy). The exact relationship is

$$
S _ {P} ^ {2} = S _ {M} ^ {2} + \left[ \frac {\alpha_ {A}}{\sigma (e _ {A})} \right] ^ {2} \tag {8.26}
$$

Equation 8.26 shows us that the contribution of the active portfolio (when held in its optimal weight,  $w_{A}^{*}$ ) to the Sharpe ratio of the overall risky portfolio is determined by the ratio of its alpha to its residual standard deviation. This important ratio is widely known as the information ratio. $^{14}$  It measures the extra return we can obtain from security analysis compared to the firm-specific risk we incur when we over- or underweight securities relative to the passive market index. Equation 8.26 therefore implies that to maximize the overall Sharpe ratio, we must maximize the information ratio of the active portfolio. It turns out that the information ratio of the active portfolio will be maximized if we invest in each security in proportion to its ratio of  $\alpha_{i} / \sigma^{2}(e_{i})$ .


This result has a compelling interpretation: It says that the position in each security will be proportional to its ratio of alpha (which investors seek) to diversifiable risk (which they wish to avoid). The higher the ratio, the more of the security they will hold in the active portfolio. Scaling this ratio so that the total position in the active portfolio adds up to  $w_{A}^{*}$ , the weight in each security is

$$ w _ {i} ^ {*} = w _ {A} ^ {*} \frac {\alpha_ {i} / \sigma^ {2} \left(e _ {i}\right)}{\sum_ {i = 1} ^ {n} \frac {\alpha_ {i}}{\sigma^ {2} \left(e _ {i}\right)}} \tag {8.27}
$$

With this set of weights, the contribution of each security to the squared information ratio of the active portfolio is the square of its own information ratio, that is,

$$
\left[ \frac {\alpha_ {A}}{\sigma \left(e _ {A}\right)} \right] ^ {2} = \sum_ {i = 1} ^ {n} \left[ \frac {\alpha_ {i}}{\sigma \left(e _ {i}\right)} \right] ^ {2} \tag {8.28}
$$

The model thus reveals the central role of the information ratio in efficiently taking advantage of security analysis. The positive contribution of a security to the active portfolio is made by its addition to the nonmarket risk premium (its alpha). Its negative impact is to increase the portfolio variance through its firm-specific risk (residual variance).

In contrast to alpha, the market (systematic) component of the risk premium,  $\beta_{i}E(R_{M})$ , is offset by the security's nondiversifiable (market) risk,  $\beta_{i}^{2}\sigma_{M}^{2}$ , and both are driven by the same beta. This trade-off is not unique to any security, as any security with the same beta makes the same balanced contribution to both risk and return. Put differently, the beta of a security is neither vice nor virtue. It is a property that simultaneously affects the risk and risk premium of a security.

We see from Equation 8.27 that if a security's alpha is negative, the security will assume a short position in the active portfolio. If short positions are prohibited, a negative-alpha security would simply be taken out of the optimization program and assigned a portfolio weight of zero. As the number of securities with nonzero alpha values (or the number with positive alphas if short positions are prohibited) increases, the active portfolio will itself be better diversified and its weight in the overall risky portfolio will increase at the expense of the passive index portfolio.

Finally, we note that the index portfolio is an efficient portfolio only if all alpha values are zero. This makes intuitive sense. Unless security analysis reveals that a security has a nonzero alpha, including it in the active portfolio would make the portfolio less attractive. In addition to the security's systematic risk, which is compensated for by the market risk premium (through beta), the security would add its firm-specific risk to portfolio variance. With a zero alpha, however, there is no compensation for bearing that firm-specific risk.

Hence, if all securities have zero alphas, the optimal weight in the active portfolio will be zero, and the weight in the index portfolio will be 1. However, when security analysis uncovers securities with nonmarket risk premiums (nonzero alphas), the index portfolio is no longer efficient.

# Summary of Optimization Procedure

Once security analysis is complete, the optimal risky portfolio is formed from the index-model estimates of security and market index parameters using these steps:

1. Compute the initial position of each security in the active portfolio as  $w_{i}^{0} = \alpha_{i} / \sigma^{2}(e_{i})$ .
2. Scale those initial positions to force portfolio weights to sum to 1 by dividing by their sum, that is,  $w_{i} = \frac{w_{i}^{0}}{\sum_{i=1}^{n} w_{i}^{0}}$ .
3. Compute the alpha of the active portfolio:  $\alpha_{A} = \sum_{i = 1}^{n}w_{i}\alpha_{i}$
4. Compute the residual variance of the active portfolio:  $\sigma^2 (e_A) = \sum_{i = 1}^{n}w_i^2\sigma^2 (e_i)$
5. Compute the initial position in the active portfolio:  $w_{A}^{0} = \left[\frac{\alpha_{A} / \sigma^{2}(e_{A})}{E(R_{M}) / \sigma_{M}^{2}}\right]$ .
6. Compute the beta of the active portfolio:  $\beta_{A} = \sum_{i = 1}^{n}w_{i}\beta_{i}$
7. Adjust the initial position in the active portfolio:  $w_{A}^{*} = \frac{w_{A}^{0}}{1 + (1 - \beta_{A})w_{A}^{0}}$ .
8. Note: The optimal risky portfolio now has weights  $w_{M}^{*} = 1 - w_{A}^{*}$  and  $w_{i}^{*} = w_{A}^{*}w_{i}$ .
9. Calculate the risk premium of the optimal risky portfolio from the risk premium of the index portfolio and the alpha of the active portfolio:

[ E(R_{P}) = (w_{M}^{*} + w_{A}^{*}\beta_{A})E(R_{M}) + w_{A}^{*}\alpha_{A}. ] Notice that the beta of the risky portfolio is  $w_{M}^{*} + w_{A}^{*}\beta_{A}$  because the beta of the index portfolio is 1.

10. Compute the variance of the optimal risky portfolio from the variance of the index portfolio and the residual variance of the active portfolio:

$$
\sigma_ {P} ^ {2} = (w _ {M} ^ {*} + w _ {A} ^ {*} \beta_ {A}) ^ {2} \sigma_ {M} ^ {2} + [ w _ {A} ^ {*} \sigma (e _ {A}) ] ^ {2}.
$$

# An Example

We can illustrate the implementation of the index model by constructing an optimal portfolio using the procedure just outlined. To keep the presentation manageable, we will imagine that the investor is limited to an "investment universe" comprising only the market index and the following six large U.S. corporations: Verizon and AT&T from the telecommunications industry, Target and Walmart from the retailing sector, and Ford and GM from the automobile industry. This example entails only six analyzed stocks, but by virtue of selecting three pairs of firms from the same industry with relatively high residual correlations, we put the index model to a severe test. This is because the model ignores the correlation between residuals when producing estimates for the covariance matrix. By ignoring that correlation, the index model will surely underestimate covariances across securities.

# Correlation and Covariance Matrix

Panel A in Spreadsheet 8.1 shows estimates of the risk parameters of the market index and the six analyzed securities. These securities have tremendous firm-specific risk (column E). Portfolios concentrated in these (or other) securities would have unnecessarily

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td></tr><tr><td>1</td><td colspan="7">Panel A: Risk Parameters of the Investable Universe (annualized)</td><td></td><td></td><td></td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td></td><td>SD of Excess Return</td><td>BETA</td><td>SD of Systematic Component</td><td>SD of Residual</td><td>Correlation with the Market Index</td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>Market Index</td><td>0.1206</td><td>1.0000</td><td>0.1206</td><td>0.0000</td><td>1.0000</td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>WMT (Walmart)</td><td>0.1662</td><td>0.2095</td><td>0.0253</td><td>0.1657</td><td>0.1520</td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>TGT (Target)</td><td>0.1925</td><td>0.5265</td><td>0.0635</td><td>0.1833</td><td>0.3298</td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>VZ (Verizon)</td><td>0.1481</td><td>0.2375</td><td>0.0286</td><td>0.1466</td><td>0.1934</td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>T (AT&amp;T)</td><td>0.1358</td><td>0.2981</td><td>0.0360</td><td>0.1321</td><td>0.2648</td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>F (Ford)</td><td>0.2546</td><td>1.3258</td><td>0.1599</td><td>0.1999</td><td>0.6280</td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>GM (General Motors)</td><td>0.2973</td><td>1.6613</td><td>0.2004</td><td>0.2215</td><td>0.6739</td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td colspan="4">Panel B: Correlation of Residuals</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>13</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>14</td><td></td><td>WMT</td><td>TGT</td><td>VZ</td><td>T</td><td>F</td><td>GM</td><td></td><td></td><td></td></tr><tr><td>15</td><td>WMT (Walmart)</td><td>1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>16</td><td>TGT (Target)</td><td>0.405</td><td>1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>17</td><td>VZ (Verizon)</td><td>0.089</td><td>-0.071</td><td>1</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>18</td><td>T (AT&amp;T)</td><td>0.193</td><td>-0.007</td><td>0.624</td><td>1</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>19</td><td>F (Ford)</td><td>0.095</td><td>0.077</td><td>-0.230</td><td>-0.200</td><td>1</td><td></td><td></td><td></td><td></td></tr><tr><td>20</td><td>GM (General Motors)</td><td>0.036</td><td>0.175</td><td>-0.320</td><td>-0.309</td><td>0.699</td><td>1</td><td></td><td></td><td></td></tr><tr><td>21</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>22</td><td colspan="4">Panel C: The Index Model Covariance Matrix</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>23</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>24</td><td></td><td></td><td>Market Index</td><td>WMT</td><td>TGT</td><td>VZ</td><td>T</td><td>F</td><td>GM</td><td></td></tr><tr><td>25</td><td></td><td>Beta</td><td>1.0000</td><td>0.2095</td><td>0.5265</td><td>0.2375</td><td>0.2981</td><td>1.3258</td><td>1.6613</td><td></td></tr><tr><td>26</td><td>Market Index</td><td>1.0000</td><td>0.0145</td><td>0.0030</td><td>0.0077</td><td>0.0035</td><td>0.0043</td><td>0.0193</td><td>0.0242</td><td></td></tr><tr><td>27</td><td>WMT (Walmart)</td><td>0.2095</td><td>0.0030</td><td>0.0276</td><td>0.0016</td><td>0.0007</td><td>0.0009</td><td>0.0040</td><td>0.0051</td><td></td></tr><tr><td>28</td><td>TGT (Target)</td><td>0.5265</td><td>0.0077</td><td>0.0016</td><td>0.0371</td><td>0.0018</td><td>0.0023</td><td>0.0102</td><td>0.0127</td><td></td></tr><tr><td>29</td><td>VZ (Verizon)</td><td>0.2375</td><td>0.0035</td><td>0.0007</td><td>0.0018</td><td>0.0219</td><td>0.0010</td><td>0.0046</td><td>0.0057</td><td></td></tr><tr><td>30</td><td>T (AT&amp;T)</td><td>0.2981</td><td>0.0043</td><td>0.0009</td><td>0.0023</td><td>0.0010</td><td>0.0184</td><td>0.0057</td><td>0.0072</td><td></td></tr><tr><td>31</td><td>F (Ford)</td><td>1.3258</td><td>0.0193</td><td>0.0040</td><td>0.0102</td><td>0.0046</td><td>0.0057</td><td>0.0648</td><td>0.0320</td><td></td></tr><tr><td>32</td><td>GM (General Motors)</td><td>1.6613</td><td>0.0242</td><td>0.0051</td><td>0.0127</td><td>0.0057</td><td>0.0072</td><td>0.0320</td><td>0.0884</td><td></td></tr><tr><td>33</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>34</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>35</td><td colspan="7">Panel D: Macro Forecast and Forecasts of Alpha Values</td><td></td><td></td><td></td></tr><tr><td>36</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>37</td><td>market risk premium =</td><td></td><td colspan="2">0.06</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>38</td><td></td><td>Market index</td><td>WMT</td><td>TGT</td><td>VZ</td><td>T</td><td>F</td><td>GM</td><td></td><td></td></tr><tr><td>39</td><td>Alpha</td><td>0.0000</td><td>0.0150</td><td>-0.0100</td><td>-0.0050</td><td>0.0075</td><td>0.0120</td><td>0.0025</td><td></td><td></td></tr><tr><td>40</td><td>Beta</td><td>1.0000</td><td>0.2095</td><td>0.5265</td><td>0.2375</td><td>0.2981</td><td>1.3258</td><td>1.6613</td><td></td><td></td></tr><tr><td>41</td><td>Risk premium</td><td>0.0600</td><td>0.0276</td><td>0.0216</td><td>0.0092</td><td>0.0254</td><td>0.0915</td><td>0.1022</td><td></td><td></td></tr><tr><td>42</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>43</td><td colspan="7">Panel E: Computation of the Optimal Risky Portfolio</td><td></td><td></td><td></td></tr><tr><td>44</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>45</td><td></td><td>Market index</td><td>Active Pf A</td><td>WMT</td><td>TGT</td><td>VZ</td><td>T</td><td>F</td><td>GM</td><td>Overall Pf</td></tr><tr><td>46</td><td>σ2(e)</td><td></td><td></td><td>0.0275</td><td>0.0336</td><td>0.0215</td><td>0.0174</td><td>0.0399</td><td>0.0491</td><td></td></tr><tr><td>47</td><td>w_i(0) = α_i/σ^2(e)</td><td></td><td>0.7975</td><td>0.5463</td><td>-0.2975</td><td>-0.2328</td><td>0.4301</td><td>0.3004</td><td>0.0509</td><td></td></tr><tr><td>48</td><td>w_i</td><td></td><td>1.0000</td><td>0.6850</td><td>-0.3730</td><td>-0.2918</td><td>0.5393</td><td>0.3767</td><td>0.0639</td><td></td></tr><tr><td>49</td><td>[w_i(0)]^2</td><td></td><td></td><td>0.4693</td><td>0.1392</td><td>0.0852</td><td>0.2908</td><td>0.1419</td><td>0.0041</td><td></td></tr><tr><td>50</td><td>α_A</td><td></td><td>0.0242</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>51</td><td>σ^2(ε_A)</td><td></td><td>0.0303</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>52</td><td>E(R_M)/σ^2(M)</td><td></td><td>4.1249</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>53</td><td>w_A(0)</td><td></td><td>0.1933</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>54</td><td>β_A</td><td></td><td>0.6441</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>55</td><td>w* (Optimal Risky Port)</td><td>0.8191</td><td>0.1809</td><td>0.1239</td><td>-0.0675</td><td>-0.0528</td><td>0.0975</td><td>0.0681</td><td>0.0116</td><td></td></tr><tr><td>56</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>57</td><td>Beta</td><td>1.0000</td><td>0.6441</td><td>0.2095</td><td>0.5265</td><td>0.2375</td><td>0.2981</td><td>1.3258</td><td>1.6613</td><td>0.9356</td></tr><tr><td>58</td><td>Risk premium</td><td>0.0600</td><td>0.0628</td><td>0.0276</td><td>0.0216</td><td>0.0092</td><td>0.0254</td><td>0.0915</td><td>0.1022</td><td>0.0605</td></tr><tr><td>59</td><td>SD</td><td>0.1206</td><td>0.1907</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.1172</td></tr><tr><td>60</td><td>Sharpe Ratio</td><td>0.4975</td><td>0.3295</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.5165</td></tr></table>

# Spreadsheet 8.1

Implementing the index model

# Excel

Please visit us at www.mhhe.com/Bodie13e


high volatility and inferior Sharpe ratios. You can see from these high residual monthly standard deviations the great importance of diversification.

Panel B shows the correlation matrix of the residuals from the regressions of excess returns on the market index. The shaded cells show correlations of pairs of stocks from the same industries, which are as high as .7 for the two auto stocks (GM and Ford). This is in contrast to the assumption of the index model that all residuals are uncorrelated. Of course, these correlations are, to a great extent, high by design because we intentionally selected pairs of firms from the same industry. Cross-industry correlations are typically far smaller, and the empirical estimates of correlations of residuals for industry indexes (rather than individual stocks in the same industry) would be far more in accord with the index model. In fact, a few of the stocks in this sample actually appear to have negatively correlated residuals. Of course, correlation also is subject to statistical sampling error, and this may be a fluke.

Panel C produces covariances (derived from Equation 8.7) of the single-index model. Variances of the market index and the individual covered stocks appear in the shaded diagonal entries. The variance estimates for the individual stocks equal  $\beta_i^2\sigma_M^2 +\sigma^2 (e_i)$ . The off-diagonal terms are covariance values and equal  $\beta_{i}\beta_{j}\sigma_{M}^{2}$ .

Risk Premium Forecasts Panel D of Spreadsheet 8.1 contains estimates of alpha and the risk premium for each stock. These alphas would be the most important product of the investment company in a real-life procedure. Statistics plays a small role here; in this arena, macro/security analysis is king. In this example, we simply use illustrative values to demonstrate the portfolio construction process and possible results. You may wonder why we have chosen such small forecast alpha values. The reason is that even when security analysis appears to uncover meaningful mispricing, that is, large alpha values, these forecasts must be substantially trimmed to account for the fact that such forecasts are subject to large estimation error. We discuss the important procedure of adjusting actual forecasts in Chapter 27.

The Optimal Risky Portfolio Panel E of Spreadsheet 8.1 displays calculations for the optimal risky portfolio. They follow the summary outlined above (you should try to replicate these calculations in your own spreadsheet). In this example, we allow short sales. Notice that the weight of each security in the active portfolio (see row 55) has the same sign as the alpha value. Allowing short sales, the positions in the active portfolio are quite large (e.g., the position in Walmart is .6850, see cell D48); this is an aggressive portfolio. As a result, the alpha of the active portfolio  $(2.42\%)$  is larger than that of any of the individual alpha forecasts. However, this aggressive stance also results in a large residual variance, .0303, which corresponds to a residual standard deviation of  $17.4\%$ . Therefore, the position in the active portfolio in the overall risky portfolio is scaled down considerably (see Equation 8.24) and ends up quite modest (.1809; cell C55), reinforcing the notion that diversification considerations are paramount in building the optimal risky portfolio.

The optimal risky portfolio (which combines the active portfolio with the market index) has a risk premium of  $6.05\%$ , standard deviation of  $11.72\%$ , and a Sharpe ratio of .5165 (cells J58-J60). By comparison, the Sharpe ratio of the index portfolio is .06/.1206 = .4975 (cell B60), which is not far below that of the optimal risky portfolio. The small improvement is a result of the modest alpha forecasts that we used. In Chapter 11 on market efficiency and Chapter 24 on performance evaluation, we demonstrate that such results are common in the mutual fund industry. Of course, a few portfolio managers can and do produce portfolios with better performance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/bdfcae764ba09dcfb5c622ba5496ee8d8302430e7c2eb4d5a5a8ba4189eb9152.jpg)
Figure 8.4 Efficient frontier constructed from the index model and the full-covariance matrix

The interesting question here is the extent to which the index model produces results that differ from that of the full-covariance (Markowitz) model. Figure 8.4 shows the efficient frontiers from the two models with the example data. (We emphasize again that the difference in these figures reflects different estimates of covariances, not differences in investors' actual ability to trade off risk against return. The index model appears to offer greater opportunity for risk reduction, but that is only because it assumes zero covariance among residuals, which, if true, would increase the power of diversification.) However, for standard deviations above  $10\%$ , the efficient frontiers are in fact similar.

Table 8.4 compares the composition and expected performance of the optimal risky portfolios derived from the two models. The portfolio weights using the full-covariance matrix take advantage of the correlation among residuals. For example, Walmart has a positive alpha and Target has a negative alpha, so Walmart is held long and Target is sold short. Because the residuals of the two firms are positively correlated, the full-covariance model dictates a more extreme positive position in Walmart and a more extreme negative position in Target than the index model, relying on the correlation between the two firms to offset the risk from those higher long-short positions. In the end, however, the suggested portfolio weights are not so different, and the optimal risky portfolio from the full-covariance (Markowitz) model has only slightly greater estimated risk premium and slightly greater estimated standard deviation. The Sharpe ratios are nearly identical. Even in this example, where we challenged the index model by applying it to pairs of


# Table 8.4

Comparison of optimal risky portfolios derived from the index model and the full-covariance (Markowitz) model

<table><tr><td></td><td>Index Model</td><td>Full-Covariance Model</td></tr><tr><td colspan="3">A. Weights in Optimal Risky Portfolio</td></tr><tr><td>Market index</td><td>0.82</td><td>0.90</td></tr><tr><td>WMT (Walmart)</td><td>0.13</td><td>0.17</td></tr><tr><td>TGT (Target)</td><td>-0.07</td><td>-0.14</td></tr><tr><td>VZ (Verizon)</td><td>-0.05</td><td>-0.18</td></tr><tr><td>T (AT&amp;T)</td><td>0.10</td><td>0.19</td></tr><tr><td>F (Ford)</td><td>0.07</td><td>0.08</td></tr><tr><td>GM (General Motors)</td><td>0.01</td><td>-0.03</td></tr><tr><td colspan="3">B. Portfolio Characteristics</td></tr><tr><td>Risk premium</td><td>0.0605</td><td>0.0639</td></tr><tr><td>Standard deviation</td><td>0.1172</td><td>0.1238</td></tr><tr><td>Sharpe ratio</td><td>0.5165</td><td>0.5163</td></tr></table> firms that would be expected to have correlated residuals, it provides results that are remarkably close to the full-covariance model.


Is the Index Model Inferior to the Full-Covariance Model? At one level, the index model must be inferior to the full-blown Markowitz model: It imposes additional assumptions that may not be fully accurate. But as our example illustrates, it is far from clear that the index model will be inferior in practical applications.

In addition, practical issues in statistical estimation weaken the case for the full-blown Markowitz model. The Markowitz model allows far more flexibility in our modeling of asset covariance structure compared to the single-index model. But that advantage may be illusory if we can't estimate those covariances with a sufficient degree of accuracy. Using the full-covariance matrix invokes estimation risk of thousands of terms. Even if the full Markowitz model would be better in principle, it is quite possible that the cumulative effect of so many estimation errors will result in a portfolio that is actually inferior to that derived from the single-index model.

Against the potential superiority of the full-covariance model, we have the clear practical advantage of the single-index framework. Its aid in decentralizing macro and security analysis is another decisive advantage.

1. A single-factor model of the economy classifies sources of uncertainty as systematic (macro-economic) factors or firm-specific (microeconomic) factors. The index model assumes that the macro factor can be represented by a broad index of stock returns.
2. The single-index model drastically reduces the necessary inputs in the Markowitz portfolio selection procedure. It also aids in specialization of labor in security analysis.
3. According to the index model specification, the systematic risk of a portfolio or asset equals  $\beta^2\sigma_M^2$  and the covariance between two assets equals  $\beta_i\beta_j\sigma_M^2$ .
4. The index model is estimated by applying regression analysis to excess rates of return. The slope of the regression curve is the beta of an asset, whereas the intercept is the asset's alpha during the sample period. The regression line is also called the security characteristic line.
5. Practitioners routinely estimate the index model using total rather than excess rates of return. This makes their estimate of alpha equal to  $\alpha + r_f(1 - \beta)$ .
6. Betas show a tendency to evolve toward 1 over time. Beta forecasting rules attempt to predict this drift. Moreover, other financial variables can be used to help forecast betas.
7. Optimal active portfolios include analyzed securities in direct proportion to their alpha and in inverse proportion to their firm-specific variance. The full risky portfolio is a mixture of the active portfolio and the passive market-index portfolio. The index portfolio is used to enhance the diversification of the overall risky position.

# SUMMARY

# KEY EQUATIONS

Single-index model (in excess returns):  $R_{i}(t) = \alpha_{i} + \beta_{i}R_{M}(t) + e_{i}(t)$

Security risk in index model:

$$
\text {T o t a l} \quad \text {r i s k} = \text {S y s t e m a t i c} \quad \text {r i s k} + \text {F i r m - s p e c i f i c} \quad \text {r i s k}
$$

$$
\sigma^ {2} \quad = \quad \beta^ {2} \sigma_ {M} ^ {2} \quad + \quad \sigma^ {2} (e)
$$

Covariance  $= \operatorname{Cov}(r_i, r_j) =$  Product of betas  $\times$  Market-index risk  $= \beta_i \beta_j \sigma_M^2$

Active portfolio management in the index model

Sharpe ratio of optimal risky portfolio:  $S_P^2 = S_M^2 + \left[\frac{\alpha_A}{\sigma(e_A)}\right]^2$

Asset weight in active portfolio:  $w_{i}^{*} = w_{A}^{*}\frac{\alpha_{i} / \sigma^{2}(e_{i})}{\sum_{i = 1}^{n}\frac{\alpha_{i}}{\sigma^{2}(e_{i})}}$

Squared information ratio of active portfolio:  $\left[\frac{\alpha_A}{\sigma(e_A)}\right]^2 = \sum_{i=1}^{n}\left[\frac{\alpha_i}{\sigma(e_i)}\right]^2$

# PROBLEM SETS

1. What are the advantages of the index model compared to the Markowitz procedure for obtaining an efficiently diversified portfolio? What are its disadvantages?
2. What is the basic trade-off when departing from pure indexing in favor of an actively managed portfolio?
3. How does the magnitude of firm-specific risk affect the extent to which an active investor will be willing to depart from an indexed portfolio?
4. Why do we call alpha a "nonmarket" return premium? Why are high-alpha stocks desirable investments for active portfolio managers? With all other parameters held fixed, what would happen to a portfolio's Sharpe ratio as the alpha of its component securities increased?
5. A portfolio management organization analyzes 60 stocks and constructs a mean-variance efficient portfolio using only these 60 securities.

a. How many estimates of expected returns, variances, and covariances are needed to optimize this portfolio?
$b$ . If one could safely assume that stock market returns closely resemble a single-index structure, how many estimates would be needed?

6. The following are estimates for two stocks.

<table><tr><td>Stock</td><td>Expected Return</td><td>Beta</td><td>Firm-Specific Standard Deviation</td></tr><tr><td>A</td><td>13\%</td><td>0.8</td><td>30\%</td></tr><tr><td>B</td><td>18</td><td>1.2</td><td>40</td></tr></table>

The market index has a standard deviation of  $22\%$  and the risk-free rate is  $8\%$ .

$a$ . What are the standard deviations of stocks  $A$  and  $B$ ?
$b$ . Suppose that we were to construct a portfolio with proportions:

<table><tr><td>Stock A:</td><td>.30</td></tr><tr><td>Stock B:</td><td>.45</td></tr><tr><td>T-bills:</td><td>.25</td></tr></table>

Compute the expected return, beta, nonsystematic standard deviation, and standard deviation of the portfolio.

7. Consider the following two regression lines for stocks  $A$  and  $B$  in the following figure.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/716ad46db0fc49c7349ed4be7e2ee0c84c37049511b5aa9dee0bdcf5fed5fdfa.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/bfdf0462c9b3e40a7229e66a79ac7c10325f1d10a1888312c0c46ca28b53dadb.jpg)

$a$ . Which stock has higher firm-specific risk?
$b$ . Which stock has greater systematic (market) risk?
c. Which stock has higher  $R^2$ ?
$d$ . Which stock has higher alpha?
$e$ . Which stock has higher correlation with the market?

8. Consider the two (excess return) index model regression results for  $A$  and  $B$ :

$$
R _ {A} = 1 \% + 1.2 R _ {M}
$$

$R$ -square  $= .576$

Residual standard deviation  $= 10.3\%$

$$
R _ {B} = - 2 \% + . 8 R _ {M}
$$

$R$ -square  $= .436$

Residual standard deviation  $= 9.1\%$

$a$ . Which stock has more firm-specific risk?
$b$ . Which has greater market risk?
c. For which stock does market movement explain a greater fraction of return variability?
$d$ . If  $r_f$  were constant at  $6\%$  and the regression had been run using total rather than excess returns, what would have been the regression intercept for stock  $A$ ?

Use the following data for Problems 9 through 14. Suppose that the index model for stocks  $A$  and  $B$  is estimated from excess returns with the following results:

$$
R _ {A} = 3 \% + . 7 R _ {M} + e _ {A}
$$

$$
R _ {B} = - 2 \% + 1.2 R _ {M} + e _ {B}
$$

$$
\sigma_ {M} = 20 \%; R - \text {square} _ {A} = . 20; R - \text {square} _ {B} = . 12
$$

9. What is the standard deviation of each stock?

10. Break down the variance of each stock into its systematic and firm-specific components.
11. What are the covariance and the correlation coefficient between the two stocks?
12. What is the covariance between each stock and the market index?
13. For portfolio  $P$  with investment proportions of .60 in  $A$  and .40 in  $B$ , rework Problems 9, 10, and 12.
14. Rework Problem 13 for portfolio  $Q$  with investment proportions of .50 in  $P$ , .30 in the market index, and .20 in T-bills.

15. A stock recently has been estimated to have a beta of 1.24:

$a$ . What is the "adjusted beta" of this stock?
$b$ . Suppose that you estimate the following regression describing the evolution of beta over time:

$$
\beta_ {t} = . 3 +. 7 \beta_ {t - 1}
$$

What would be your predicted beta for next year?

16. Based on current dividend yields and expected growth rates, the expected rates of return on stocks  $A$  and  $B$  are  $11\%$  and  $14\%$ , respectively. The beta of stock  $A$  is .8, while that of stock  $B$  is 1.5. The T-bill rate is currently  $6\%$ , while the expected rate of return on the S&P 500 index is  $12\%$ . The standard deviation of stock  $A$  is  $10\%$  annually, while that of stock  $B$  is  $11\%$ . If you currently hold a passive index portfolio, would you choose to add either of these stocks to your holdings?
17. A portfolio manager summarizes the input from the macro and micro forecasters in the following table: excel


Please visit us at www.mhhe.com/Bodie13e


Micro Forecasts

<table><tr><td>Asset</td><td>Expected Return (\%)</td><td>Beta</td><td>Residual Standard Deviation (\%)</td></tr><tr><td>Stock A</td><td>20</td><td>1.3</td><td>58</td></tr><tr><td>Stock B</td><td>18</td><td>1.8</td><td>71</td></tr><tr><td>Stock C</td><td>17</td><td>0.7</td><td>60</td></tr><tr><td>Stock D</td><td>12</td><td>1.0</td><td>55</td></tr></table>

Macro Forecasts

<table><tr><td>Asset</td><td>Expected Return (\%)</td><td>Standard Deviation (\%)</td></tr><tr><td>T-bills</td><td>8</td><td>0</td></tr><tr><td>Passive equity portfolio</td><td>16</td><td>23</td></tr></table>

$a$ . Calculate expected excess returns, alpha values, and residual variances for these stocks.
$b$ . Construct the optimal risky portfolio.
c. What is the Sharpe ratio for the optimal portfolio?
$d$ . By how much did the position in the active portfolio improve the Sharpe ratio compared to a purely passive index strategy?
e. What should be the exact makeup of the complete portfolio (including the risk-free asset) for an investor with a coefficient of risk aversion of 2.8?

18. Recalculate Problem 17 for a portfolio manager who is not allowed to short sell securities.

$a$ . What is the cost of the restriction in terms of Sharpe's measure?
$b$ . What is the utility loss to the investor ( $A = 2.8$ ) given his new complete portfolio?

19. Suppose that on the basis of the analyst's past record, you estimate that the relationship between forecast and actual alpha is:

$$
\text {A c t u a l} = . 3 \times \text {A n a l y s t}
$$

$a$ . Redo Problem 17 using appropriately adjusted forecasts of alpha.
b. How much is expected performance affected by recognizing the relation between realized alphas and the original alpha forecasts?

20. Suppose that the alpha forecasts in row 39 of Spreadsheet 8.1 are doubled. All the other data remain the same.

a. Use the Summary of Optimization Procedure to estimate back-of-the-envelope calculations of the information ratio and Sharpe ratio of the newly optimized portfolio.
b. Now recalculate the entire spreadsheet example, find the optimal risky portfolio, and verify your back-of-the-envelope calculation.

eXce1

Please visit us at www.mhhe.com/Bodie13e


eXce1

Please visit us at www.mhhe.com/Bodie13e


1. When the annualized monthly percentage excess rates of return for a stock market index were regressed against the excess returns for ABC and XYZ stocks over the most recent 5-year period, using an ordinary least squares regression, the following results were obtained:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/27a005ee685dd8547a0315bbde9c75aec9de5d78f29e9ee204092c1c06ff6b79.jpg)

<table><tr><td>Statistic</td><td>ABC</td><td>XYZ</td></tr><tr><td>Alpha</td><td>-3.20\%</td><td>7.3\%</td></tr><tr><td>Beta</td><td>0.60</td><td>0.97</td></tr><tr><td>R²</td><td>0.35</td><td>0.17</td></tr><tr><td>Residual standard deviation</td><td>13.02\%</td><td>21.45\%</td></tr></table>

Explain what these regression results tell the analyst about risk-return relationships for each stock over the sample period. Comment on their implications for future risk-return relationships, assuming both stocks were included in a diversified common stock portfolio, especially in view of the following additional data obtained from two brokerage houses, which are based on the most recent two years of weekly returns.

<table><tr><td>Brokerage House</td><td>Beta of ABC</td><td>Beta of XYZ</td></tr><tr><td>A</td><td>0.62</td><td>1.45</td></tr><tr><td>B</td><td>0.71</td><td>1.25</td></tr></table>

2. Assume the correlation coefficient between Baker Fund and the market index is .70. What percentage of Baker Fund's total risk is specific (i.e., nonsystematic)?
3. The correlation between the Charlottesville International Fund and a broad index of world stocks is 1.0. The expected return on the world market index is  $11\%$ , the expected return on Charlottesville International Fund is  $9\%$ , and the risk-free rate is  $3\%$ . Based on this analysis, what is the implied beta of Charlottesville International?
4. The concept of beta is most closely associated with: a. Correlation coefficients.

$b$ . Mean-variance analysis.
c. Nonsystematic risk.
d. Systematic risk.

5. Beta and standard deviation differ as risk measures in that beta measures:

$a$ . Only unsystematic risk, while standard deviation measures total risk.
$b$ . Only systematic risk, while standard deviation measures total risk.
c. Both systematic and unsystematic risk, while standard deviation measures only unsystematic risk.
$d$ . Both systematic and unsystematic risk, while standard deviation measures only systematic risk.

# E-INVESTMENTS EXERCISES

Go to http://finance.yahoo.com and click on Screeners and then Equity Screeners. If you click on Add Another Filter you will find an extensive list of potential characteristics. Choose beta, and search for firms with betas less than 0.2. In what industries do these firms tend to operate? Now repeat and select firms with betas above 1.2. Do the industries containing high-versus low-beta firms match up with your intuition about which industries would be likely to be more cyclical?


# SOLUTIONS TO CONCEPT CHECKS

1.  $a$ . Total market capitalization is  $3,000 + 1,940 + 1,360 = 6,300$ . Therefore, the mean excess return of the index portfolio is

$$
\frac{3,000}{6,300}\times 10 + \frac{1,940}{6,300}\times 2 + \frac{1,360}{6,300}\times 17 = 9.05\%
$$

$b$ . The covariance between stocks  $A$  and  $B$  equals

$$
\operatorname {C o v} \left(R _ {A}, R _ {B}\right) = \beta_ {A} \beta_ {B} \sigma_ {M} ^ {2} = 1 \times . 2 \times 2 5 ^ {2} = 1 2 5
$$

$c$ . The covariance between stock  $B$  and the index portfolio equals

$$
\operatorname {C o v} \left(R _ {B}, R _ {M}\right) = \beta_ {B} \sigma_ {M} ^ {2} = . 2 \times 2 5 ^ {2} = 1 2 5
$$

$d$ . The total variance of  $B$  equals

$$
\sigma_ {B} ^ {2} = \operatorname {V a r} \left(\beta_ {B} R _ {M} + e _ {B}\right) = \beta_ {B} ^ {2} \sigma_ {M} ^ {2} + \sigma^ {2} \left(e _ {B}\right)
$$

The systematic component of risk equals  $\beta_B^2\sigma_M^2 = .2^2\times 25^2 = 25$

Thus, the firm-specific variance of  $B$  equals

$$
\sigma^ {2} \left(e _ {B}\right) = \sigma_ {B} ^ {2} - \beta_ {B} ^ {2} \sigma_ {M} ^ {2} = 3 0 ^ {2} - . 2 ^ {2} \times 2 5 ^ {2} = 8 7 5
$$

2. The variance of each stock is  $\beta^2\sigma_M^2 +\sigma^2 (e)$

For stock  $A$ , we obtain

$$
\begin{array}{l} \sigma_ {A} ^ {2} = . 9 ^ {2} (2 0) ^ {2} + 3 0 ^ {2} = 1, 2 2 4 \\ \sigma_ {A} = 35 \% \\ \end{array}
$$

For stock  $B$

$$
\begin{array}{l} \sigma_ {B} ^ {2} = 1. 1 ^ {2} (2 0) ^ {2} + 1 0 ^ {2} = 5 8 4 \\ \sigma_ {B} = 24 \% \\ \end{array}
$$

The covariance is

$$
\beta_ {A} \beta_ {B} \sigma_ {M} ^ {2} = . 9 \times 1. 1 \times 2 0 ^ {2} = 3 9 6
$$

3.  $\sigma^2 (e_P) = (\frac{1}{2})^2 [\sigma^2 (e_A) + \sigma^2 (e_B)]$

$$
\begin{array}{l} = 1 / 4 (3 0 ^ {2} + 1 0 ^ {2}) \\ = 2 5 0 \\ \end{array}
$$

Therefore,  $\sigma (e_p) = \sqrt{(250)} = 15.8\%$

4. The industry-style ALPHA is related to the index-model  $\alpha$  by

$$
\mathrm {A L P H A} = \alpha_ {\text {i n d e x m o d e l}} + (1 - \beta) r _ {f}
$$

For Newmont Mining,  $\alpha = 1.1\%$ ,  $\beta = .217$ , and we are told that  $r_f$  was  $0.2\%$  per month. Thus,  $\mathrm{ALPHA} = 1.1 + (1 - .217) \times 0.2\% = 1.257\%$ .

The index model and industry ALPHA are quite close in this case because  $r_f$  was so small during this sample period.

5. The industries with positive adjustment factors are most sensitive to the economy. Their betas would be expected to be higher because the business risk of the firms is higher. In contrast, the industries with negative adjustment factors are in business fields with a lower sensitivity to the economy. Therefore, for any given financial profile, their betas are lower.


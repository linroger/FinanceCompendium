# Empirical Evidence on Security Returns

# 13

WHY DO DIFFERENT securities offer different expected rates of return? According to the simple CAPM, one thing and only one thing matters: the systematic risk of the security as measured by its beta. Other measures of risk such as firm-specific volatility should be irrelevant, and expected rates of return should rise in direct proportion to beta.

Early tests of the risk-return relationship focused on these stark implications of the model. The results, as we will see shortly, were ambiguous at best. However, further reflection made it clear that it would be almost impossible to conduct a definitive test of the CAPM, in large part because it is so tied to an inherently unobservable market portfolio encompassing all assets. Accounting for nontraded assets such as human capital could substantially affect the predicted risk-return trade-off.

Moreover, variants on the CAPM came swiftly on the heels of the simple one-factor model. These richer models suggested that the risk-return relationship might entail multiple sources of systematic risk. For example, uncertainty about future interest rates or prices of major consumption goods or asset-return volatility could also generate equilibrium risk premia. This implies that we really ought to be testing a multifactor SML.

In addition, non-risk-related considerations such as liquidity costs surrounding security trading also can lead to substantial variation in expected returns. Finally, behavioral-finance issues can potentially lead to security mispricing and dispersion in expected returns.

These many issues present a long agenda for empirical testing of the risk-return relationship. We have space to provide only a brief overview of this vast literature. We begin with tests of the single-factor security market line, the theater where many of the basic methodologies still used today were developed. We proceed to multifactor models, especially the Fama-French three-factor model and its many variants, which have become the workhorse models for current empirical research. But we also discuss how a dramatic increase in the number of proposed risk factors has created a "factor zoo" that calls into question the validity of many of these findings. We also show how liquidity issues appear to generate variation in expected returns across securities that are roughly as large as those due to differences in risk. Finally, we examine the empirical implications of consumption-based models such as Merton's intertemporal CAPM and the consumption CAPM.

# 13.1 Two-Pass Tests of Asset Pricing

The key prediction of most theories of asset pricing is that expected returns should rise along with exposure to systematic risk. In the simple CAPM, that exposure is measured by beta. Tests of this hypothesis commonly use a two-pass methodology. First, use a time series of returns to estimate systematic risk (beta). Next, given that risk assessment, use a cross-section of assets to test whether riskier assets have, in fact, provided higher average returns. We will illustrate this methodology using tests of the single-factor CAPM. Tests of more complicated models are typically generalizations of the approach illustrated here.

# Testing the Single-Factor SML

Recall that if the expected return-beta relationship holds with respect to an observable ex ante efficient index,  $M$ , the expected rate of return on any security  $i$  is

$$
E \left(r _ {i}\right) = r _ {f} + \beta_ {i} \left[ E \left(r _ {M}\right) - r _ {f} \right] \tag {13.1}
$$ where  $\beta_{i}$  is defined as  $\mathrm{Cov}(r_i,r_M) / \sigma_M^2$


Equation 13.1 tells us that expected return increases along with beta. Therefore, early tests of the CAPM were conducted along the following lines: Collect data on the rates of return on a large sample of stocks as well as the market index and risk-free rate, use those data to estimate the beta of each stock from an index model regression (like the one we employed in Chapter 8), and then test to see whether stocks with high betas have in fact provided higher average returns.

Setting Up the Sample Data Determine a sample period of, for example, 60 monthly holding periods. For each month, collect the rates of return on a large number of stocks, for example, 100; a market portfolio proxy (e.g., the CRSP market index); and 1-month (risk-free) T-bills. Your data thus consist of

$$
\begin{array}{l} \begin{array}{l} r _ {i t} = 6, 0 0 0 \text {r e t u r n s o n t h e 1 0 0 s t o c k s o v e r t h e 6 0 - m o n t h s a m p l e p e r i o d ;} i = 1, \ldots , 1 0 0, \\ \text {a n d} t = 1, \ldots , 6 0. \end{array} \\ r _ {M t} = 6 0 \text {o b s e r v a t i o n s o f t h e r e t u r n s o n t h e C R S P i n d e x o r d e r t h e s a m p l e p e r i o d} (\text {o n e e a c h m o n t h}). \\ r _ {f t} = 6 0 \text {o b s e r v a t i o n s o f t h e r i s k - f r e e r a t e (o n e e a c h m o n t h)}. \\ \end{array}
$$

This constitutes a table of  $102 \times 60 = 6,120$  rates of return.

Estimating the SCL View Equation 13.1 as a security characteristic line (SCL), as in Chapter 8. You want to estimate how the return on each stock responds to the return on the market index. Therefore, for each stock,  $i$ , you estimate the beta coefficient as the slope of a first-pass regression equation. (The terminology first-pass regression reflects the fact that the estimated coefficients will be used as input into a second-pass regression.)

$$ r _ {i t} - r _ {f t} = a _ {i} + b _ {i} (r _ {M t} - r _ {f t}) + e _ {i t}
$$

You will use the following statistics in later analysis:

$\overline{r_i - r_f} =$  Sample averages (over the 60 months) of the excess return on each of the 100 stocks.

$b_{i} =$  Sample estimates of the beta coefficients of each of the 100 stocks.

$\overline{r_M - r_f} =$  Sample average of the excess return of the market index.

$\sigma^2 (e_i) =$  Estimates of the variance of the residuals for each of the 100 stocks.

The sample average excess returns on each stock and the market portfolio are taken as estimates of expected excess returns, and the values of  $b_{i}$  are estimates of the true beta coefficients for the 100 stocks during the sample period.  $\sigma^2 (e_i)$  estimates the nonsystematic risk of each of the 100 stocks. It is understood that all these statistics are subject to estimation error.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/c923c55d61841bde26392b3af4f31745a2eafecc84487c320dd9e9f6728b5222.jpg)

# Concept Check 13.1 a. How many regression estimates of the SCL do we have from the sample?

b. How many observations are there in each of the regressions?
c. According to the CAPM, what should be the average value of the intercept in these regressions?

Estimating the SML Now view Equation 13.1 as a security market line (SML) with 100 observations for the stocks in your sample. Given the estimate of beta from the first pass, we now ask: To what extent does average return increase as beta increases? Therefore, you estimate  $\gamma_0$  and  $\gamma_{1}$  in the following second-pass regression equation with the estimates of beta,  $b_{i}$ , as the explanatory variable:

$$
\overline {{r _ {i} - r _ {f}}} = \gamma_ {0} + \gamma_ {1} b _ {i} \quad i = 1, \dots , 1 0 0 \tag {13.2}
$$

Comparing Equations 13.1 and 13.2, we see that the CAPM predicts that  $\gamma_0$  and  $\gamma_{1}$  are

$$
\gamma_ {0} = 0 \mathrm {a n d} \gamma_ {1} = \overline {{r _ {M} - r _ {f}}}
$$

In fact, you can go a step further and argue that the key property of the expected return-beta relationship described by the SML is that the expected excess return on securities is determined only by systematic risk (as measured by beta) and should be independent of nonsystematic risk, as measured by the variance of the residuals,  $\sigma^2(e_i)$ , which also were estimated from the first-pass regression. These estimates can be added as a variable in Equation 13.2 of an expanded SML that now looks like this:

$$
\overline {{r _ {i} - r _ {f}}} = \gamma_ {0} + \gamma_ {1} b _ {i} + \gamma_ {2} \sigma^ {2} \left(e _ {i}\right) \tag {13.3}
$$

This second-pass regression equation is estimated with the hypotheses

$$
\gamma_ {0} = 0; \gamma_ {1} = \overline {{r _ {M} - r _ {f}}}; \gamma_ {2} = 0
$$

The hypothesis that  $\gamma_{2} = 0$  is consistent with the notion that nonsystematic risk should not be "priced," that is, that there is no risk premium earned for bearing nonsystematic risk.

More generally, according to the CAPM, the risk premium depends only on beta. Therefore, any additional right-hand-side variable in Equation 13.3 beyond beta should have a coefficient that is insignificantly different from zero in the second-pass regression.

The two-stage procedure (i.e., first estimate security betas using a time-series regression and then use those betas to test the SML relationship between risk and average return) seems straightforward. However, it turns out that there are several difficulties with this approach. First and foremost, stock returns are extremely volatile, which lessens the precision of any tests of average return. For example, the average standard deviation of annual returns of even the large stocks in the S&P 500 exceeds  $30\%$ .

In addition, there are fundamental concerns about the validity of these tests. First, the market index they employ is surely not the "market portfolio" of the CAPM. The stock market is far from a complete portfolio of investor wealth. First, the U.S. stock market comprises only about  $40\%$  of world equity value. More importantly, an exclusive focus on equity excludes important asset classes such as real estate, private business enterprises, commodities, or human capital, which collectively have far greater value than the equity market.

Second, in light of asset volatility, the security betas from the first-stage regressions are necessarily estimated with substantial sampling error and therefore cannot readily be used as inputs to the second-stage regression. (If you look back at Chapter 8, Table 8.2, you will see that the average standard error of the estimate of beta even for our sample of large firms was .26. With that level of imprecision, a stock estimated to have a beta of 1.0 would have a two-standard-deviation confidence interval ranging all the way from .48 to 1.52!) It is well known in statistics that if the right-hand-side variable of a regression equation is measured with error (in our case, beta is measured with error and is the right-hand-side variable in the second-pass regression), then the slope coefficient of the regression equation will be biased downward and the intercept biased upward.

Finally, investors cannot borrow at the risk-free rate, as assumed by the simple version of the CAPM. Let us investigate the implications of these problems in turn.

# The Market Index

In what has come to be known as Roll's critique, Richard Roll demonstrated that:

1. There is a single testable hypothesis associated with the CAPM: The market portfolio is mean-variance efficient.
2. All the other implications of the model, the best-known being the linear relation between expected return and beta, follow from the market portfolio's efficiency and therefore are not independently testable. There is an "if and only if" relation between the expected return-beta relationship and the efficiency of the market portfolio.
3. In any sample of observations of individual returns, there will be an infinite number of ex post (i.e., after the fact) mean-variance efficient portfolios using the sample-period returns and covariances (as opposed to the ex ante expected returns and covariances). Sample betas of individual assets estimated against each such ex-post efficient portfolio will be exactly linearly related to the sample average returns of these assets. In other words, if betas are calculated against such portfolios, they will satisfy the SML relation exactly whether or not the true market portfolio was mean-variance efficient in an ex ante sense.


4. The CAPM is not testable unless we know the exact composition of the true market portfolio and use it in the tests. This implies that the theory is not testable unless all assets are included in the sample.
5. Using a proxy such as the CRSP index for the market portfolio is subject to two difficulties. First, the proxy itself might be mean-variance efficient even when the true market portfolio is not. More likely, the proxy may turn out to be inefficient, but obviously, this alone implies nothing about the true market portfolio's efficiency. Furthermore, most market proxies will be highly diversified and therefore highly correlated with each other as well as with the true market portfolio whether or not they are mean-variance efficient. Such a high degree of correlation will make it seem that the exact composition of the market portfolio is unimportant, but the use of different proxies can lead to quite different conclusions. This problem is referred to as benchmark error because it refers to the use of an incorrect benchmark (market proxy) portfolio in the tests of the theory.

Roll and Ross $^{2}$  and Kandel and Stambaugh $^{3}$  expanded Roll's critique. Essentially, they argued that tests that reject a positive relationship between average return and beta point to inefficiency of the market proxy used in those tests, rather than refuting the theoretical expected return-beta relationship. Importantly, they demonstrate that even if the CAPM is true, even highly diversified portfolios, such as the value- or equally weighted portfolios of all stocks in the sample, may fail to produce a significant average return-beta relationship.

Given the impossibility of testing the CAPM directly, we can retreat to testing the APT, which produces the same expected return-beta equation (the security market line). This model depends only on the index portfolio being well diversified. Choosing a broad market index allows us to test the SML as applied to the chosen index.

# Measurement Error in Beta

To overcome the measurement error problem, Black, Jensen, and Scholes suggested tests using diversified portfolios rather than individual securities. Combining securities into portfolios diversifies away most of the firm-specific part of returns, thereby enhancing the precision of the estimates of beta and the expected rate of return of the portfolio of securities. This mitigates the statistical problems that would otherwise result from imprecision in the beta estimates.

$^{2}$ Richard Roll and Stephen A. Ross, "On the Cross-Sectional Relation between Expected Return and Betas," Journal of Finance 50 (1995), pp. 185-224.
Schmuel Kandel and Robert F. Stambaugh, "Portfolio Inefficiency and the Cross-Section of Expected Returns," Journal of Finance 50 (1995), pp. 157–84; Shmuel Kandel and Robert F. Stambaugh, "A Mean-Variance Framework for Tests of Asset Pricing Models," Review of Financial Studies 2 (1989), pp. 125–56; and Shmuel Kandel and Robert F. Stambaugh, "On Correlations and Inferences about Mean-Variance Efficiency," Journal of Financial Economics 18 (1987), pp. 61–90.
Although the APT strictly applies only to well-diversified portfolios, the discussion in Chapter 9 shows that "almost all" individual securities will also satisfy the SML.
Fischer Black, Michael C. Jensen, and Myron Scholes, "The Capital Asset Pricing Model: Some Empirical Tests," in Studies in the Theory of Capital Markets, ed. Michael C. Jensen (New York: Praeger, 1972).

Testing the model with highly diversified portfolios rather than individual securities completes our retreat from the CAPM to the APT. Additionally, combining stocks into portfolios reduces the number of observations left for the second-pass regression. Suppose we group the 100 stocks into five portfolios of 20 stocks each. The portfolio beta in the first-pass regression will be estimated with far better accuracy. However, with portfolios of 20 stocks each, we are left with only five observations for the second-pass regression.

To get the best of this trade-off, we need to construct portfolios with the largest possible dispersion of beta coefficients. Other things equal, a regression yields more accurate estimates the more widely spaced the observations of the independent variables. We therefore will attempt to maximize the range of the independent variable of the second-pass regression, the portfolio betas. Rather than allocate 20 stocks to each portfolio randomly, we first rank stocks by betas. Portfolio 1 is formed from the 20 highest-beta stocks and portfolio 5 from the 20 lowest-beta stocks. A set of portfolios with small nonsystematic components,  $e_{P}$ , and widely spaced betas will yield reasonably powerful tests of the SML.

Fama and MacBeth (FM) $^6$  used this methodology to verify that the observed relationship between average excess returns and beta is indeed linear and that nonsystematic risk does not explain average excess returns. Using 20 portfolios constructed according to the Black, Jensen, and Scholes methodology, FM expanded the estimation of the SML equation to include the square of the estimated beta coefficient (to test for linearity of the relationship between returns and betas) and the estimated standard deviation of the residual (to test for the explanatory power of nonsystematic risk). For a sequence of many subperiods, they estimated for each subperiod the equation

$$
\overline {{r _ {i} - r _ {f}}} = \gamma_ {0} + \gamma_ {1} b _ {i} + \gamma_ {2} b _ {i} ^ {2} + \gamma_ {3} \sigma \left(e _ {i}\right) \tag {13.4}
$$

The term  $\gamma_{2}$  measures potential nonlinearity of return, and  $\gamma_{3}$  measures the explanatory power of nonsystematic risk,  $\sigma(e_i)$ . According to the CAPM,  $\gamma_{0}, \gamma_{2}$ , and  $\gamma_{3}$  all should have coefficients of zero in the second-pass regression, and  $\gamma_{1}$  should equal the average value of  $r_M - r_f$ .

FM estimated Equation 13.4 for every month of the period January 1935 through June 1968. The results are summarized in Table 13.1, which shows average values of coefficients and  $t$ -statistics. For the most part, their results were broadly supportive of the CAPM. The estimate of the intercept,  $\gamma_0$ , was small (8 basis points per month) and, more important, was not even close to statistical significance. The coefficient on beta,  $\gamma_1$ , was positive and highly significant, indicating that average return rose along with beta. However, the relation was shallower than predicted. Whereas the CAPM predicted that coefficient should

# Table 13.1

Risk and return in the Fama-MacBeth study. All rates are in basis points per month. Sample period was 1935-June 1968.

<table><tr><td>Average γ0(t-statistic for test of γ0=0)</td><td>Average γ1(t-statistic for test of γ1=rM−rf)</td><td>Average γ2(t-statistic for test of γ2=0)</td><td>Average γ3(t-statistic for test of γ3=0)</td></tr><tr><td>8</td><td>114</td><td>-26</td><td>516</td></tr><tr><td>(.20)</td><td>(1.85)</td><td>(-.86)</td><td>(1.11)</td></tr></table> have equaled the average market risk premium over the period, 130 basis points per month, the actual slope was only 114. The difference between the predicted and realized slope was borderline statistically significant, with a  $t$ -statistic of 1.85. The factors that the CAPM says should not matter for returns,  $\beta^2$  and  $\sigma(e)$ , turn out not to matter, with neither  $\gamma_2$  nor  $\gamma_3$  statistically significant. On balance, therefore, the results seem consistent with the CAPM, or perhaps (in light of the attenuated reward for bearing beta risk) one of the zero-beta extensions of the model reviewed in Chapter 9, Section 9.2.

Source: Eugene F. Fama and James D. MacBeth, "Risk, Return, and Equilibrium: Empirical Tests," Journal of Political Economy 81 (May-June 1973), pp. 607-36.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/9bc5b91947c559445946edfc1192b0834719cc81123589cf0baba5b3d02131ca.jpg)

# Concept Check 13.2 a. What are the implications of the empirical SML being “too flat” compared to the predictions of the CAPM? Specifically, how will average returns on high- versus low-beta stocks compare to the predictions of the SML?

b. What would you have concluded if Fama and MacBeth had found that the coefficients on  $\beta^2$  and  $\sigma(e)$  were positive?

However, recent years have been far less kind to the CAPM. The relation between beta and average returns seems to have evaporated. For example, Fama and French replicated the average return versus beta regression for the period from July 1963 through December 1990 and found that the average slope on  $\beta$  was only 15 basis points per month in a period that the average excess monthly return on the market portfolio was more than double that, 35 basis points. More to the point, the slope on beta was not even close to statistically significant, with a  $t$ -statistic of only .46. Clearly, there is more to the risk-return relationship than the simple CAPM is able to capture.

# 13.2 Tests of the Multifactor Models

Three types of factors are likely candidates to augment the market risk factor in a multifactor SML: (1) factors that hedge consumption against uncertainty in prices of important consumption categories (e.g., housing or energy) or general inflation, (2) factors that hedge future investment opportunities (e.g., interest rates, market volatility, or the market risk premium), and (3) factors that hedge assets missing from the market index (e.g., labor income or private business).

As we learned from Merton's ICAPM (Chapter 9), these extra-market sources of risk will command a risk premium if there is significant demand to hedge them. We begin with the third source because there is little doubt that nontraded assets in the personal portfolios of investors affect demand for traded risky assets. Hence, a factor representing these assets, that is, one correlated with their returns, should affect risk premiums.

# Labor Income

The major factors in the omitted asset category are labor income and private business. Taking on labor income first, Mayers viewed each individual as being endowed with labor

Eugene F. Fama and Kenneth R. French, “The Cross-Section of Expected Stock Returns,” Journal of Finance 47 (1992), pp. 427–65.
$^{8}$ David Mayers, "Nonmarketable Assets and Capital Market Equilibrium under Uncertainty," in Studies in the Theory of Capital Markets, ed. Michael C. Jensen (New York: Praeger, 1972), pp. 223-48.

income but able to trade only securities and an index portfolio. His model creates a wedge between betas measured against the traded, index portfolio and betas measured against the true market portfolio, which includes aggregate labor income. The result of his model is an SML that is flatter than that of the simple CAPM.

If the value of labor income is not perfectly correlated with the market-index portfolio, then the possibility of negative returns to labor will represent a source of risk not fully captured by the index. But suppose investors can trade a portfolio that is correlated with the return on aggregate human capital. Then their hedging demands against the risk to the value of their human capital might meaningfully influence security prices and risk premia. If so, human capital risk (or some empirical proxy for it) can serve as an additional factor in a multifactor SML. Stocks with a positive beta on the value of labor contribute to exposure to this risk factor; therefore, they will command lower prices or, equivalently, provide a larger-than-CAPM risk premium. Thus, by adding this factor, the SML becomes multidimensional.

Jagannathan and Wang use the rate of change in aggregate labor income as a proxy for changes in the value of human capital. In addition to standard security betas estimated using the value-weighted stock market index, which we denote  $\beta^{\mathrm{vw}}$ , they also estimate betas of assets with respect to labor income growth, which we denote  $\beta^{\mathrm{labor}}$ . Finally, they consider the possibility that business cycles affect asset betas, an issue that has been examined in a number of other studies. These may be viewed as conditional betas, as their values are conditional on the state of the economy.

Jagannathan and Wang use the credit spread between the yields on low- versus high-grade corporate bonds as a proxy for the state of the business cycle and estimate asset betas relative to this business cycle variable; we denote this beta as  $\beta^{\mathrm{credit}}$ . With the estimates of these three betas for several stock portfolios, they estimate a second-pass regression that also includes firm size (market value of equity, denoted ME):

$$
E \left(R _ {i}\right) = c _ {0} + c _ {\text {s i z e}} \log (\mathrm {M E}) + c _ {\mathrm {v w}} \beta^ {\mathrm {v w}} + c _ {\text {c r e d i t}} \beta^ {\text {c r e d i t}} + c _ {\text {l a b o r}} \beta^ {\text {l a b o r}} \tag {13.5}
$$

They test their model with 100 portfolios that are designed to spread securities on the basis of size and beta. Stocks are sorted into 10 size portfolios, and the stocks within each size decile are further sorted by beta into 10 subportfolios, resulting in 100 portfolios in total. Table 13.2 shows a subset of the various versions of the second-pass estimates. The first two rows in Panel A show the coefficients and  $t$ -statistics of a test of the CAPM along the lines of the Fama and MacBeth tests introduced in the previous section. The result is a sound rejection of the model, as the coefficient on beta is negative (albeit not statistically significant), implying that average return falls with beta. The next two rows show that the CAPM is not helped by the addition of the size factor: The coefficient on beta remains negative. The dramatic increase in  $R$ -square (from  $1.35\%$  to  $57.56\%$ ) shows that size explains variations in average returns quite well while beta does not.

In Panel B, the credit spread and labor income are included as explanatory variables, but the CAPM expected return-beta relationship is not redeemed: The coefficient on beta is still negative. The credit risk premium is significant, while labor income is borderline significant. When we add size as well, in the last two rows, we find it is no longer significant and only marginally increases explanatory power.

$^{9}$ Ravi Jagannathan and Zhenyu Wang, "The Conditional CAPM and the Cross-Section of Expected Returns," Journal of Finance 51 (March 1996), pp. 3-54.

For example, Campbell Harvey, "Time-Varying Conditional Covariances in Tests of Asset Pricing Models," Journal of Financial Economics 24 (October 1989), pp. 289-317; Wayne Ferson and Campbell Harvey, "The Variation of Economic Risk Premiums," Journal of Political Economy 99 (April 1991), pp. 385-415; and Wayne Ferson and Robert Korajczyk, "Do Arbitrage Pricing Models Explain the Predictability of Stock Returns?", Journal of Business 68 (July 1995), pp. 309-49.

<table><tr><td>Coefficient</td><td>c0</td><td>cvw</td><td>ccredit</td><td>clabor</td><td>csize</td><td>R2</td></tr><tr><td colspan="7">A. The Static CAPM without Human Capital</td></tr><tr><td>Estimate</td><td>1.24</td><td>-0.10</td><td></td><td></td><td></td><td>1.35</td></tr><tr><td>t-statistic</td><td>5.16</td><td>-0.28</td><td></td><td></td><td></td><td></td></tr><tr><td>Estimate</td><td>2.08</td><td>-0.32</td><td></td><td></td><td>-0.11</td><td>57.56</td></tr><tr><td>t-statistic</td><td>5.77</td><td>-0.94</td><td></td><td></td><td>-2.30</td><td></td></tr><tr><td colspan="7">B. The Conditional CAPM with Human Capital</td></tr><tr><td>Estimate</td><td>1.24</td><td>-0.40</td><td>0.34</td><td>0.22</td><td></td><td>55.21</td></tr><tr><td>t-statistic</td><td>4.10</td><td>-0.88</td><td>1.73</td><td>2.31</td><td></td><td></td></tr><tr><td>Estimate</td><td>1.70</td><td>-0.40</td><td>0.20</td><td>0.10</td><td>-0.07</td><td>64.73</td></tr><tr><td>t-statistic</td><td>4.14</td><td>-1.06</td><td>2.72</td><td>2.09</td><td>-1.30</td><td></td></tr></table>

# Table 13.2

Regression results for various SML specifications

This table gives the estimates for the cross-sectional regression model

$$
E (R _ {i t}) = c _ {0} + c _ {\mathrm {s i z e}} \log (\mathrm {M E} _ {i}) + c _ {\mathrm {v w}} \beta_ {i} ^ {\mathrm {v w}} + c _ {\mathrm {c r e d i t}} \beta_ {i} ^ {\mathrm {c r e d i t}} + c _ {\mathrm {l a b o r}} \beta_ {i} ^ {\mathrm {l a b o r}}
$$ with either a subset or all of the variables. Here,  $R_{it}$  is the excess return on portfolio  $i$  ( $i = 1, 2, \dots, 100$ ) in month  $t$  (July 1963–December 1990),  $R_{t}^{\mathrm{vw}}$  is the excess return on the value-weighted index of stocks,  $R_{t-1}^{\mathrm{credit}}$  is the yield spread (i.e., credit spread) between low- and high-grade corporate bonds, and  $R_{t}^{\mathrm{labor}}$  is the growth rate in per capita labor income. The  $\beta_{i}^{\mathrm{vw}}$  is the slope coefficient in the OLS regression of  $R_{it}$  on a constant and  $R_{t}^{\mathrm{vw}}$ . The other betas are estimated in a similar way. The portfolio size,  $\log(\mathrm{ME}_{i})$ , is calculated as the equally weighted average of the logarithm of the market value (in millions of dollars) of the stocks in portfolio  $i$ . The regression models are estimated by using the Fama-MacBeth procedure. All  $R^{2s}$ s are reported as percentages.


# Private (Nontraded) Business

Whereas Jagannathan and Wang focus on labor income, Heaton and Lucas estimate the importance of proprietary business. We expect that private-business owners will reduce demand for traded securities that are positively correlated with their specific entrepreneurial income. If this effect is sufficiently important, aggregate demand for traded securities will be determined in part by the covariance with aggregate noncorporate business income. The risk premium on securities with high covariance with noncorporate business income should be commensurately higher.

Consistent with theory, Heaton and Lucas find that households with higher investments in private business do in fact reduce the fraction of total wealth invested in equity. They also extend Jagannathan and Wang's equation to include the rate of change in proprietary-business wealth. They find that this variable also is significant and improves the explanatory power of the regression. Again, however, exposure to the market rate of return does not help explain the average rate of return on individual securities and, hence, this implication of the CAPM still finds no support.

# Macroeconomic Risk Factors

The multifactor CAPM and APT are elegant theories of how exposure to multiple systematic risk factors should influence expected returns, but they provide little guidance concerning which factors (sources of risk) ought to result in risk premiums.

Chen, Roll, and Ross propose several macroeconomic variables that might proxy for systematic factors:

$\mathrm{IP} =$  Growth rate in industrial production.

EI = Changes in expected inflation measured by changes in short-term (T-bill) interest rates.

$\mathrm{UI} =$  Unexpected inflation, defined as the difference between actual and expected inflation.

$\mathrm{CG} =$  Unexpected changes in risk premiums measured by the difference between the returns on corporate Baa-rated bonds and long-term government bonds.

$\mathrm{GB} =$  Unexpected changes in the term premium measured by the difference between the returns on long- and short-term government bonds.

Given these potential factors, Chen, Roll, and Ross skip the procedure of identifying factor portfolios (the portfolios that have the highest correlation with the factors). Instead, by using the factors themselves, they implicitly assume that factor portfolios exist that can proxy for the factors. They use these factors in a test similar to that of Fama and MacBeth.

As in Fama-MacBeth, they first use five years of monthly data to estimate the factor betas of 20 size-sorted portfolios in 20 first-pass regressions.

$$ r = a + \beta_ {M} r _ {M} + \beta_ {\mathrm {I P}} \mathrm {I P} + \beta_ {\mathrm {E I}} \mathrm {E I} + \beta_ {\mathrm {U I}} \mathrm {U I} + \beta_ {\mathrm {C G}} \mathrm {C G} + \beta_ {\mathrm {G B}} \mathrm {G B} + e \tag {13.6a}
$$ where  $M$  stands for either the equal- or value-weighted NYSE market index.


Using the 20 sets of first-pass estimates of factor betas as the independent variables, they next estimate the second-pass regression (with 20 observations):

$$ r = \gamma_ {0} + \gamma_ {M} \beta_ {M} + \gamma_ {\mathrm {I P}} \beta_ {\mathrm {I P}} + \gamma_ {\mathrm {E I}} \beta_ {\mathrm {E I}} + \gamma_ {\mathrm {U I}} \beta_ {\mathrm {U I}} + \gamma_ {\mathrm {C G}} \beta_ {\mathrm {C G}} + \gamma_ {\mathrm {G B}} \beta_ {\mathrm {G B}} + e \tag {13.6b}
$$ where the gammas become estimates of the risk premiums on the various factors. This second-pass regression is estimated for every month of their sample period. The estimated risk premiums (the estimates of the slope coefficients,  $\gamma$ ) are averaged over all the second-pass regressions and appear in Table 13.3.


The coefficients on the equal- and value-weighted NYSE market indexes EWNY and VWNY are not statistically significant (their  $t$ -statistics are less than 2). But business cycle risk does seem to matter: Industrial production (IP), the risk premium on corporate bonds (CG), and unanticipated inflation (UI) appear to have significant explanatory power.

# Table 13.3

Economic variables and pricing (percent per month  $\times 10$  ), multivariate approach.

<table><tr><td>A</td><td>EWNY</td><td>IP</td><td>EI</td><td>UI</td><td>CG</td><td>GB</td><td>Constant</td></tr><tr><td></td><td>5.021</td><td>14.009</td><td>-0.128</td><td>-0.848</td><td>0.130</td><td>-5.017</td><td>6.409</td></tr><tr><td></td><td>(1.218)</td><td>(3.774)</td><td>(-1.666)</td><td>(-2.541)</td><td>(2.855)</td><td>(-1.576)</td><td>(1.848)</td></tr><tr><td>B</td><td>VWNY</td><td>IP</td><td>EI</td><td>UI</td><td>CG</td><td>GB</td><td>Constant</td></tr><tr><td></td><td>-2.403</td><td>11.756</td><td>-0.123</td><td>-0.795</td><td>8.274</td><td>-5.905</td><td>10.713</td></tr><tr><td></td><td>(-0.633)</td><td>(3.054)</td><td>(-1.600)</td><td>(-2.376)</td><td>(2.972)</td><td>(-1.879)</td><td>(2.755)</td></tr></table>

VWNY = Return on the value-weighted NYSE index; EWNY = Return on the equally weighted NYSE index; IP = Monthly growth rate in industrial production; EI = Change in expected inflation; UI = Unanticipated inflation; CG = Unanticipated change in the risk premium (Baa and under return – Long-term government bond return); GB = Unanticipated change in the term structure (long-term government bond return – Treasury-bill rate); t-statistics are in parentheses.

Source: Modified from Nai-Fu Chen, Richard Roll, and Stephen Ross, "Economic Forces and the Stock Market," Journal of Business 59 (1986), pp. 383-403.

# 13.3 Fama-French-Type Factor Models

The multifactor models that currently occupy center stage are the three-factor model introduced by Fama and French (FF) and its several variants. The systematic factors in the FF model are firm size and book-to-market ratio (B/M) as well as the market index. These additional factors are empirically motivated by the observations, discussed in Chapter 11, that historical-average returns on stocks of small firms and on stocks with high ratios of book equity to market equity are higher than predicted by the security market line of the CAPM.

However, Fama and French did more than document the empirical role of size and B/M in explaining rates of return. They also introduced a general method to create factor portfolios and applied their method to these constructed factors.

Suppose you find, as Fama and French did, that stock market capitalization (or "market cap") seems to predict alpha values in a CAPM equation. On average, the smaller the market cap, the greater the alpha of a stock. This finding would add size to the list of anomalies that seem to refute the CAPM.

But suppose you believe that size is related to a stock's sensitivity to changes in future investment opportunities. Then, what appears as alpha in a single-factor CAPM is really an extra-market source of risk in a multifactor CAPM. If this sounds far-fetched, here's a story: When investors anticipate a future market downturn, they adjust their portfolios to minimize their exposure to losses. Suppose that small stocks generally are harder hit in down markets, akin to a larger beta in bad times. Then investors will avoid such stocks in favor of the less-sensitive stocks of larger firms. This would explain a risk premium to small size beyond the typical beta on contemporaneous market returns. An "alpha" for size may be instead a risk premium for assets with greater sensitivity to deterioration in future investment opportunities.

Fama and French propose a method to quantify the size risk premium. They first determine the median size of NYSE stocks. They use this median to classify all traded U.S. stocks (NYSE + AMEX + NASDAQ) as big or small and create one portfolio of big stocks and another of small stocks. Each of these portfolios is value-weighted for efficient diversification.

As in the APT, Fama and French construct a zero-net-investment size-factor portfolio by going long the small- and going short the big-stock portfolio. The return of this portfolio, called SMB (Small Minus Big), is simply the return on the small-stock portfolio minus the return on the big-stock portfolio. If size is priced, then this portfolio will exhibit a risk premium. Because the SMB portfolio is highly diversified, it joins the market-index portfolio in a two-factor APT model with size as the extra-market source of risk. In the two-factor SML, the risk premium on any asset should be determined by its loadings (betas) on the two-factor portfolios. This is a testable hypothesis.

Fama and French then generalize this approach to form both size and B/M factors. To create these two extra-market risk factors, they double-sort stocks by both size and B/M. They break the U.S. stock population into three groups based on B/M ratio: the bottom  $30\%$  (low), the middle  $40\%$  (medium), and the top  $30\%$  (high). Now six portfolios are created based on the intersections of the size and B/M sorts: Small/Low, Small/Medium, Small/ High, Big/Low, Big/Medium, Big/High. Each of these six portfolios is value weighted.

The returns on the Big and Small portfolios are

$$
R _ {S} = \mathrm {1 / 3} (R _ {S / L} + R _ {S / M} + R _ {S / H}); R _ {B} = \mathrm {1 / 3} (R _ {B / L} + R _ {B / M} + R _ {B / H})
$$

Similarly, the returns on the high and low (Value and Growth) portfolios are

$$
R _ {H} = 1 / 2 \left(R _ {S / H} + R _ {B / H}\right); R _ {L} = 1 / 2 \left(R _ {S / L} + R _ {B / L}\right)
$$

The returns of the zero-net-investment factors SMB (Small Minus Big, i.e., Long Small and Short Big) and HML (High Minus Low, i.e., Long High B/M and Short Low B/M) are created from these portfolios:

$$
R _ {S M B} = R _ {S} - R _ {B}; R _ {H M L} = R _ {H} - R _ {L}
$$

We measure the sensitivity of individual stocks to the factors by estimating the factor betas from first-pass regressions of stock excess returns on the excess return of the market index as well as on  $R_{SMB}$  and  $R_{HML}$ . These factor betas should, as a group, predict the total risk premium. Therefore, the Fama-French three-factor asset-pricing model is

$$
E \left(r _ {i}\right) - r _ {f} = a _ {i} + b _ {i} \left[ E \left(r _ {M}\right) - r _ {f} \right] + s _ {i} E \left[ R _ {S M B} \right] + h _ {i} E \left[ R _ {H M L} \right] \tag {13.7}
$$

The coefficients  $b_{i}, s_{i}$  and  $h_{i}$  are the betas (also called loadings in this context) of the stock on the three factors. If these are the only risk factors, excess returns on all assets should be fully explained by risk premiums due to these factor loadings. In other words, if these factors fully explain asset returns, the intercept of the equation should be zero.

In a survey of asset pricing tests, Goyal applies Equation 13.7 to the returns of 25 portfolios of all U.S. stocks sorted by size and B/M ratio. Figure 13.1 shows the average actual return of each portfolio over the period 1946-2010 against returns predicted by the CAPM (Panel A) and by the FF three-factor model (Panel B). The FF model provides a clear improvement over the CAPM.

# Size and B/M as Risk Factors

The case for SML and HML as relevant risk factors would be strengthened if they could be related to fundamental sources of asset risk. Liew and Vassalou show that returns on style portfolios (HML or SMB) seem to predict GDP growth, and thus may in fact capture some aspects of business cycle risk. Each bar in Figure 13.2 is the average difference in the return on the HML or SMB portfolio in years before good GDP growth versus in years with poor GDP growth. Positive values mean the portfolio does better in years prior to good macroeconomic performance. The predominance of positive values leads them to conclude that the returns on the HML and SMB portfolios are positively related to future growth in the macroeconomy, and so may be proxies for business cycle risk. Thus, at least part of the size and value premiums may reflect rational rewards for greater risk exposure.


Petkova and Zhang also try to tie the average return premium on value (high B/M) portfolios to risk premiums. Their approach uses a conditional CAPM. In the conventional CAPM, we treat both the market risk premium and firm betas as given parameters. In contrast, as we noted earlier in the chapter, the conditional CAPM allows both of these terms to vary over time, and possibly to co-vary. If a stock's beta is higher when the market risk premium is high, this positive association leads to a "synergy" in its risk premium, which is the product of its incremental beta and market risk premium.

What might lead to such an association between beta and the market risk premium? Zhang focuses on irreversible investments. He notes that firms classified as value firms (with high book-to-market ratios) on average will have greater amounts of tangible capital. Investment irreverses ability puts such firms more at risk for economic downturns because in a severe recession, they will suffer from excess capacity from assets already in place. In contrast, growth firms are better able to deal with a downturn by deferring investment plans. The greater exposure of high book-to-market firms to recessions will result in higher down-market betas. Moreover, some evidence suggests that the market risk premium also is higher in down markets,

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/7b8575f0fd0b674446bb6015093c22d4913935a7a3b560828d4d7751708f2826.jpg)

Figure 13.1 CAPM versus the Fama and French model. The figure plots the average actual returns versus returns predicted by CAPM and the FF model for 25 size and book-to-market double-sorted portfolios.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/06cfcb89de6e1327ef17fdf0ba3b4d036f7525a1c22f955b666bdbb96e1b0f5f.jpg)
Source: Amit Goyal, "Empirical Cross Sectional Asset Pricing: A Survey," Financial Markets and Portfolio Management 26 (2012), pp. 3-38.


Figure 13.2 Difference in return to factor portfolios in year prior to above-average versus below-average GDP growth. Both SMB and HML portfolio returns tend to be higher in years preceding better GDP growth.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/9c0b7558818c71d3f137d2b42ec6a394e61a5d707605a4cd28de3405db53514a.jpg) when investors are feeling more economic pressure and anxiety. The combination of these two factors might impart a positive correlation between the beta of high B/M firms and the market risk premium.
Source: J. Liew and M. Vassalou, "Can Book-to-Market, Size and Momentum Be Risk Factors That Predict Economic Growth?", Journal of Financial Economics 57 (2000), pp. 221-45.


# Behavioral Explanations

On the other side of the debate, several authors make the case that the value premium is a manifestation of market irrationality. The essence of the argument is that analysts tend to extrapolate recent performance too far out into the future, and thus tend to overestimate the value of firms with good recent performance. When the market realizes its mistake, the prices of these firms fall. Thus, on average, "glamour firms," which are characterized by recent good performance, high prices, and lower book-to-market ratios, tend to underperform "value firms" because their high prices reflect excessive optimism relative to those lower book-to-market firms.

Figure 13.3, from a study by Chan, Karceski, and Lakonishok,[20] makes the case for overreaction. Firms are sorted into deciles based on income growth in the past five years. By construction, the growth rates uniformly increase from the first through the tenth decile (see the solid lower line in the figure). The book-to-market ratio for each decile at the end of the five-year period (the dashed line) tracks recent growth very well: B/M falls steadily with growth over the past five years. This is evidence that past growth is extrapolated and then impounded in price. High past growth leads to higher prices and lower B/M ratios.

Figure 13.3 The book-to-market ratio reflects past growth, but not future growth prospects. B/M tends to fall with income growth experienced at the end of a five-year period, but actually increases slightly with future income growth rates.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/99288b4d3188d5b801b708482771df90465ec044d4dcc65391bd6c6c447ffc84.jpg)
Source: L. K. C. Chan, J. Karceski, and J. Lakonishok, "The Level and Persistence of Growth Rates," Journal of Finance 58 (April 2003), pp. 643-84.

But B/M at the beginning of a five-year period shows little or even a positive association with subsequent growth (the upper solid colored line), implying that market valuation today is inversely related to actual growth prospects. In other words, the firms with lower B/M (glamour firms) experience no better or even worse average future income growth than other firms. The implication is that the market ignores evidence that past growth cannot be extrapolated far into the future. The book-to-market ratio may reflect past growth better than future growth, consistent with extrapolation error.

More direct evidence supporting extrapolation error is provided by La Porta, Lakonishok, Shleifer, and Vishny,[21] who examine stock price performance when actual earnings are released to the public. Firms are classified as growth versus value stocks, and the difference in their stock price performance at earnings announcements for four years following the classification date is then examined. Figure 13.4 demonstrates that growth stocks underperform value stocks surrounding these announcements. We conclude that when news of actual earnings is released to the public, the market is relatively disappointed in stocks it has been treating as growth firms.

# Momentum: A Fourth Factor

Since the seminal Fama-French three-factor model was introduced, a fourth factor has come to be added to the standard controls for stock return behavior. This is a momentum factor. As we first saw in Chapter 11, Jegadeesh and Titman uncovered a tendency for good or

21 R. La Porta, J. Lakonishok, A. Shleifer, and R. W. Vishny, "Good News for Value Stocks," Journal of Finance 52 (1997), pp. 859-74.
22Narasimhan Jegadeesh and Sheridan Titman, "Returns to Buying Winners and Selling Losers: Implications for Stock Market Efficiency," Journal of Finance 48 (March 1993), pp. 65-91.

Figure 13.4 Value minus growth returns surrounding earnings announcements, 1971-1992. Announcement effects are measured for each of four years following classification as a value versus a growth firm.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/8949075b7310bcbe1366c0f9440aec9d517906f4818c9dbc40a11a7d54b607f7.jpg) bad performance of stocks to persist over several months, a sort of momentum property. Carhart $^{23}$  added this momentum effect to the three-factor model as a tool to evaluate mutual fund performance. The factor is constructed in the same way and is denoted by WML (Winners Minus Losers). Versions of this factor take winners/losers based on 1–12 months of past returns. Carhart found that much of what appeared to be the alpha of many mutual funds could in fact be explained as due to their loadings or sensitivities to market momentum. The original Fama-French model augmented with a momentum factor has become a common four-factor model used to evaluate abnormal performance of a stock portfolio.
Source: R. La Porta, J. Lakonishok, A. Shleifer, and R. W. Vishny, "Good News for Value Stocks," Journal of Finance 52 (1997), pp. 859-74.


Of course, this additional factor presents further difficulties in interpretation. To characterize the original Fama-French factors as reflecting obvious sources of risk is already a bit of a challenge. A momentum factor seems even harder to position as reflecting a risk-return trade-off.

# The Factor Zoo

Many factors have joined momentum as additions to the Fama-French three-factor model. Table 13.4 presents some of the more prominent ones. The table presents  $t$ -statistics for the impact and statistical significance of each. But this table is just the tip of an ever-growing iceberg. Figure 13.5, from a study by Harvey, Liu, and Zhu shows the growth in the number of factors discovered and published since 1963, the year before the CAPM was published. Until 1991, only about one or two new factors per year appeared in print. But in the last two decades, that number has accelerated dramatically, reaching a cumulative sum exceeding 300 by 2016. Table 13.5, condensed from Harvey, Liu, and Zhu, presents a brief categorization of these factors.

23Mark M. Carhart, "On Persistence in Mutual Fund Performance," Journal of Finance 52 (March 1997), pp. 57-82.
24Campbell Harvey, Yan Liu, and Heqing Zhu, "... and the Cross-Section of Expected Returns," Review of Financial Studies 29 (2016), pp. 5-68.

The Cross Section of Expected Stock Returns

Table 13.4

<table><tr><td></td><td>Slope</td><td>t-Statistic</td></tr><tr><td>Size: Stock market capitalization</td><td>-.15</td><td>-5.01</td></tr><tr><td>Book-to-market ratio</td><td>.35</td><td>6.18</td></tr><tr><td>Momentum: Return in past year</td><td>.96</td><td>6.86</td></tr><tr><td>Stock issues: Growth in shares outstanding</td><td>-.35</td><td>-3.52</td></tr><tr><td>Accruals: Change in net working capital</td><td>-1.38</td><td>-5.69</td></tr><tr><td>Profitability: Return on assets</td><td>1.43</td><td>3.57</td></tr><tr><td>Asset growth: Growth in total assets</td><td>-.54</td><td>-4.49</td></tr><tr><td>Dividend yield</td><td>-.46</td><td>-.27</td></tr><tr><td>Beta: Single index model</td><td>.33</td><td>3.05</td></tr><tr><td>Volatility: Standard deviation of stock returns</td><td>-1.45</td><td>-1.40</td></tr><tr><td>Turnover: Shares traded as a fraction of outstanding shares</td><td>-4.49</td><td>-3.68</td></tr><tr><td>Sales: Total sales as multiple of market capitalization</td><td>.04</td><td>3.10</td></tr></table>

Source: Jonathan Lewellen, "The Cross-Section of Expected Stock Returns," Critical Finance Review 4 (2015), pp. 1-44.

Figure 13.5 Published risk factors appearing in the finance literature
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/3c5037037b82530343707532f5046a2a68bcbd18451253220e65473b3932d79b.jpg)
Source: Campbell Harvey, Yan Liu, and Heqing Zhu, "... and the Cross-Section of Expected Returns," Review of Financial Studies 29 (2016), pp. 5-68.

Table 13.5

Factor classification

A. Common Factors (Variables that may be viewed as proxies for exposure to a source of systematic risk; for example, beta)

<table><tr><td>Risk Type</td><td>Description</td></tr><tr><td>Financial</td><td>Various measures of movement in aggregate financial markets such as the return on a market index</td></tr><tr><td>Macro</td><td>Macroeconomic fundamentals such as inflation, aggregate consumption, or unemployment rates</td></tr><tr><td>Behavioral</td><td>Possibly irrational investor behavior, for example, sentiment</td></tr><tr><td>Accounting</td><td>Common patterns in variables constructed from accounting measures, for example, market-to-book ratio</td></tr><tr><td>Microstructure</td><td>Marketwide variation in trading frictions such as liquidity or trading costs</td></tr></table>

B. Characteristics (Potential factors specific to a particular security; for example, firm-specific risk)

<table><tr><td>Risk Type</td><td>Description</td></tr><tr><td>Financial</td><td>Idiosyncratic financial risk such as firm-specific volatility or tail risk</td></tr><tr><td>Microstructure</td><td>Firm-level frictions such as short-sale constraints or transaction costs</td></tr><tr><td>Behavioral</td><td>Firm-level information issues such as dispersion of analyst forecasts or media coverage</td></tr><tr><td>Accounting</td><td>Firm-level accounting variables such as P/E ratio or debt-to-equity ratio</td></tr></table>

Source: Campbell Harvey, Yan Liu, and Heqing Zhu, "... and the Cross-Section of Expected Returns," Review of Financial Studies 29 (2016), pp. 5-68.

Cochrane points out that order gives way to chaos if we need hundreds of factors to explain or even describe the patterns of expected returns across securities. What is now called the factor zoo calls into question the entire enterprise of trying to understand security returns and risk premia through the lens of a concise factor structure.

What should we make of this empirical sprawl? On the one hand, there may be fewer factors than appear at first blush. Some factors are merely variants on a common theme, for example, related measures of the same underlying characteristic, and so should not be viewed as independent findings. Other factors, even if they are not obviously similar, may be correlated, and thus their predictive power may be evidence of a single underlying priced risk factor. For example, Huo, Xue, and Zhang[26] find that the momentum and HML factors lose much of their statistical significance if one first controls for factors relating to Tobin's  $q$  and profitability (see the discussion of their  $q$ -factor in Chapter 9).

But several other trends raise questions about this entire literature. First, advances in computer power and availability of online databases have made it easier to test for potential factors, with an increase in statistically significant findings an unsurprising outcome. Harvey, Liu, and Zhu argue that at the least, we should respond to this flood of testing by

25John H. Cochrane, "Presidential Address: Discount Rates," Journal of Finance 66 (August 2011), pp. 1047-108.
26Kewei Huo, Chen Xue, and Lu Zhang, "Digesting Anomalies: An Investment Approach," Review of Financial Studies 28 (2015), pp. 650-705.

increasing our standards for statistical significance, for example, increasing the criterion for a significant finding from the traditional  $t$ -statistic of 2 to a higher value of perhaps 3.

But Harvey $^{27}$  notes that increasing the threshold  $t$ -statistic is almost certainly not an adequate solution due to several related but slightly different methodological problems. First is the problem of  $p$ -hacking. This refers to running different tests and reporting only the statistically significant results (i.e., those with an adequate significance level or  $p$ -value). A related problem is multiple testing. This arises when someone tests several factors simultaneously. While the probability of a "false positive" for any single test may be a common value such as  $5\%$ , when we perform multiple tests (again, reporting only the most significant findings), the chance of a false positive is far higher. Data snooping further exacerbates the problem. Here, someone might "test" a factor having already seen evidence of a relationship in the data. It should be clear that specifying a hypothesis only after looking at relationships in the data invalidates a test and borders on research malpractice. A related and equally problematic practice is measuring many empirical relationships, finding one that seems significant, and only then proposing a theory that "predicts" such a relationship that can be "confirmed" by the data.

Harvey, Liu, and Zhu argue that in the absence of these problems, we should have observed a decline in new factor discovery over time as the obvious candidates for risk factors were initially tested, leaving ever-fewer plausible factors remaining to be tested. The fact that we actually find the opposite pattern suggests that the literature is awash in false findings. And several papers, for example, McLean and Pontiff[28] (discussed in more detail in Chapter 9), that document out-of-sample declines in returns to a wide variety of portfolio strategies constitute further evidence of data mining problems.

Is there a way out of the factor zoo? We clearly need to adjust our criteria for statistical significance. Harvey addresses this question in his presidential address to the American Finance Association (see footnote 27) and suggests several modifications to what constitutes a "statistically significant" finding. Feng, Giglio, and Xiu propose a model selection method to evaluate the incremental contribution of a newly proposed factor beyond the explanatory power of an already-known set of factors. They conclude that their approach would have deemed only a small number of recently proposed factors as statistically significant, thus radically reducing the population of the factor zoo. One notable factor that passes their far-more-stringent test relates to measures of firm profitability.

# 13.4 Liquidity and Asset Pricing

In Chapter 9 we saw that an important extension of the CAPM incorporates considerations of asset liquidity. Liquidity embodies several characteristics such as trading costs, ease of sale, necessary price concessions to effect a quick transaction, market depth, and price predictability. As such, it is difficult to measure with any single statistic. Popular measures of liquidity, or, more precisely, illiquidity, focus on the price impact dimension: What price concession might a seller have to offer in order to quickly accomplish a large sale of an asset or, conversely, what premium must a buyer offer to make a large purchase?

27Campbell R. Harvey, "Presidential Address: The Scientific Outlook in Financial Economics," Journal of Finance 72 (August 2017), pp. 1399-440.
$^{28}$ R. David McLean and Jeffrey Pontiff, “Does Academic Research Destroy Stock Return Predictability?,” Journal of Finance 71 (2016), pp. 5–32.
29Guanhao Feng, Stefano Giglio, and Dacheng Xiu, "Taming the Factor Zoo: A Test of New Factors," Journal of Finance 75 (June 2020), pp. 1327-370.

One measure of illiquidity is employed by Pástor and Stambaugh,[30] who look for evidence of price reversals, especially following large trades. Their idea is that if stock price movements tend to be partially reversed on the following day, then we can conclude that part of the original price change was not due to perceived changes in intrinsic value (these price changes would not tend to be reversed) but was, instead, a symptom of price impact associated with the original trade. Reversals suggest that part of the original price change was a concession on the part of trade initiators who needed to offer higher purchase prices or accept lower selling prices to complete their trades in a timely manner. Pástor and Stambaugh use regression analysis to show that reversals do in fact tend to be larger when associated with higher trading volume—exactly the pattern that one would expect if part of the price move is a liquidity phenomenon. They run a regression of returns on lagged returns and trading volume. The coefficient on the latter term measures the tendency of high-volume trades to be accompanied by larger reversals.

Another measure of illiquidity, proposed by Amihud,[31] also focuses on the association between large trades and price movements. His measure is

$$
\text {I L L I Q} = \text {M o n t h l y a v e r a g e o f d a i l y} \left[ \frac {\text {A b s o l u t e v a l u e (S t o c k r e t u r n)}}{\text {D o l l a r v o l u m e}} \right]
$$

This measure of illiquidity is based on the price impact per dollar of transactions in the stock and can be used to estimate both liquidity cost and liquidity risk.

Finally, Sadka uses trade-by-trade data to devise a third measure of liquidity. He begins with the observation that part of price impact, a major component of illiquidity cost, is due to asymmetric information. (See our discussion of liquidity in Chapter 9 for a review of asymmetric information and the bid-ask spread.) He then uses regression analysis to break out the component of price impact that is due to information issues. The liquidity of firms can wax or wane as the prevalence of informationally motivated trades varies, giving rise to liquidity risk.

Any of these liquidity measures can be averaged over stocks to devise measures of marketwide illiquidity. Given market illiquidity, we can then measure the "liquidity beta" of any individual stock (the sensitivity of returns to changes in market liquidity) and estimate the impact of liquidity risk on expected return. If stocks with high liquidity betas have higher average returns, we conclude that liquidity is a "priced factor," meaning that exposure to it offers higher expected return as compensation for the risk.

Pastor and Stambaugh conclude that liquidity risk is in fact a priced factor and that the risk premium associated with it is quantitatively significant. They sort portfolios into deciles based on liquidity beta and then compute the average alphas of the stocks in each decile using two models that ignore liquidity: the CAPM and the Fama-French three-factor model. Figure 13.6 shows that the alpha computed under either model rises substantially across liquidity-beta deciles, clear evidence that when controlling for other factors, average return rises along with liquidity risk. Not surprisingly, the relationship between liquidity risk and alpha across deciles is more regular for the Fama-French model, as it controls for a wider range of other influences on average return.

30L. Pástor and R. F. Stambaugh, "Liquidity Risk and Expected Stock Returns," Journal of Political Economy 111 (2003), pp. 642-85.
31Yakov Amihud, "Illiquidity and Stock Returns: Cross-Section and Time-Series Effects," Journal of Financial Markets 5 (2002), pp. 31-56.
$^{32}$ Ronnie Sadka, "Momentum and Post-earnings Announcement Drift Anomalies: The Role of Liquidity Risk," Journal of Financial Economics 80 (2006), pp. 309-49.

Figure 13.6 Alphas of value-weighted portfolios sorted on liquidity betas
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/6df0a05f143833454c08c0400d93ab26574b035f632c0fbbb8faecea523d75ca.jpg)
Source: L. Pástor and R. F. Stambaugh, "Liquidity Risk and Expected Stock Returns," Journal of Political Economy 111 (2003), pp. 642-85, table 4.

Pastor and Stambaugh also test the impact of the liquidity beta on alpha computed from a four-factor model (that also controls for momentum) and obtain similar results. In fact, they suggest that the liquidity risk factor may account for a good part of the apparent profitability of the momentum strategy.

Acharya and Pedersen use Amihud's measure to test for price effects associated with the average level of illiquidity as well as a liquidity risk premium. They demonstrate that expected stock returns depend on the average level of illiquidity. (Figure 9.4 in Chapter 9 shows a similar result.) But Acharya and Pedersen demonstrate that stock returns depend on several liquidity betas as well: the sensitivity of individual stock illiquidity to market illiquidity, the sensitivity of stock returns to market illiquidity, and the sensitivity of stock illiquidity to market return. They conclude that adding these liquidity effects to the conventional CAPM increases our ability to explain expected asset returns.

# 13.5 The Equity Premium Puzzle

In Chapter 9, we briefly introduced Merton's multifactor or intertemporal CAPM (commonly called the ICAPM) and its close cousin, the consumption CAPM (the CCAPM). Both of these models envision investors attempting to devise an investment plan that will maximize the utility they derive from a lifetime flow of consumption. In each period, the investor must choose how much to consume versus how much to invest to provide for future consumption, as well as how to allocate the investment portfolio.


The consumption model implies that what matters to investors is not their wealth per se, but their lifetime flow of consumption. There can be slippage between wealth and consumption due to variation in factors such as the risk-free rate, the market risk premium, or prices of major consumption items. Therefore, a better measure of consumer well-being than wealth is the consumption flow that such wealth can support.

Given this framework, the generalization of the standard CAPM is that instead of measuring systematic risk based on the covariance of returns with the market return (a measure that focuses only on wealth), we are better off using the covariance of returns with "aggregate" or economywide consumption. Hence, we would expect the risk premium of the market index to be related to that covariance as follows:

$$
E \left(r _ {M}\right) - r _ {f} = A \operatorname {C o v} \left(r _ {M}, r _ {C}\right) \tag {13.8}
$$ where  $A$  reflects average risk aversion and  $r_C$  is the rate of return on a "consumption-tracking portfolio," constructed to have the highest possible correlation with growth in aggregate consumption.


The problem is that consumption growth is not very variable. With such low volatility in consumption, the covariance term on the right-hand side of Equation 13.8 is also low. In turn, with such low "systematic" consumption risk, it is hard to justify a market risk premium as large as the one we have observed historically unless we assume implausibly high levels of risk aversion. This empirical problem is called the equity premium puzzle.[34]

Nevertheless, Jagannathan and Wang find some success with a consumption-tracking portfolio. Table 13.6, excerpted from their study, shows that the Fama-French factors are

Table 13.6
Annual excess returns and consumption betas

<table><tr><td rowspan="2">Size</td><td colspan="3">Book-to-Market</td></tr><tr><td>Low</td><td>Medium</td><td>High</td></tr><tr><td colspan="4">Average annual excess returns* (\%)</td></tr><tr><td>Small</td><td>6.19</td><td>12.24</td><td>17.19</td></tr><tr><td>Medium</td><td>6.93</td><td>10.43</td><td>13.94</td></tr><tr><td>Big</td><td>7.08</td><td>8.52</td><td>9.50</td></tr><tr><td colspan="4">Consumption beta*</td></tr><tr><td>Small</td><td>3.46</td><td>4.26</td><td>5.94</td></tr><tr><td>Medium</td><td>2.88</td><td>4.35</td><td>5.71</td></tr><tr><td>Big</td><td>3.39</td><td>2.83</td><td>4.41</td></tr></table>

*Average annual excess returns on the 25 Fama-French portfolios from 1954 to 2003. Consumption betas estimated by the time series regression
$R_{i,t} = \alpha_{i} + \beta_{i,c}g_{ct} + \epsilon_{i,t}$ where  $R_{it}$  is the excess return over the risk-free rate, and  $g_{ct}$  is annual consumption growth calculated using fourth-quarter consumption data.
Source: Ravi Jagannathan and Yong Wang, "Lazy Investors, Discretionary Consumption, and the Cross-Section of Stock Returns," Journal of Finance 62 (August 2006), pp. 1623-61.

in fact associated with consumption betas as well as excess returns. The top panel contains familiar results: Moving across each row, we see that higher book-to-market ratios are associated with higher average returns. Similarly, moving down each column, we see that larger size generally implies lower average returns. The novel results are in the lower panel: A high book-to-market ratio is associated with higher consumption beta, and larger firm size is generally associated with lower consumption beta. The suggestion is that the explanatory power of the Fama-French factors for average returns may in fact reflect differences in consumption risk of those portfolios. Figure 13.7 shows that the average returns of the 25 Fama-French portfolios are strongly associated with their consumption betas.

Moreover, the standard CCAPM focuses on a representative consumer/investor, thereby ignoring information about heterogeneous investors with different levels of wealth and consumption habits. For exam-

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/798d11c36267d3f0589828f82336a563765d2ce9faa0febd49cdc9f54ab6a54d.jpg)
Figure 13.7 Cross section of stock returns: Fama-French 25 portfolios, 1954-2003.

Annual excess returns and consumption betas. This figure plots the average annual excess returns on the 25 Fama-French portfolios and their consumption betas. Each two-digit number represents one portfolio. The first digit refers to the size quintile (1 = smallest, 5 = largest), and the second digit refers to the book-to-market quintile (1 = lowest, 5 = highest).

ple, the covariance between market returns and consumption is far higher when we focus on the consumption risk of households that actually hold financial securities. This observation mitigates the equity risk premium puzzle.

# Expected versus Realized Returns

Fama and French offer another interpretation of the equity premium puzzle. Using stock index returns from 1872 to 1999, they report the average risk-free rate, average stock market return (represented by the S&P 500 index), and resultant risk premium for the overall period and subperiods:

<table><tr><td>Period</td><td>Risk-Free Rate</td><td>S&amp;P 500 Return</td><td>Equity Premium</td></tr><tr><td>1872–1999</td><td>4.87</td><td>10.97</td><td>6.10</td></tr><tr><td>1872–1949</td><td>4.05</td><td>8.67</td><td>4.62</td></tr><tr><td>1950–1999</td><td>6.15</td><td>14.56</td><td>8.41</td></tr></table>

The big increase in the average excess return on equity after 1949 suggests that the equity premium puzzle is largely a creature of modern times.

Fama and French suspect that estimating the risk premium from average realized returns may be the problem. They use the constant-growth dividend-discount model (for a review, see an introductory finance text or Chapter 18) to estimate expected returns and find that for the period 1872-1949, the dividend discount model (DDM) yields similar estimates of the expected risk premium as the average realized excess return. But for the period 1950-1999, the DDM yields a much smaller risk premium, which suggests that the high average excess return in this period may have exceeded the returns investors actually expected to earn at the time.

In the constant-growth DDM, the expected capital gains rate equals the growth rate of dividends. As a result, the expected total stock return is the sum of dividend yield (dividend/price) plus the expected dividend growth rate,  $g$ :

$$
E (r) = \frac {D _ {1}}{P _ {0}} + g \tag {13.9}
$$ where  $D_{1}$  is end-of-year dividends and  $P_{0}$  is the current price of the stock. Fama and French use Equation 13.9 to produce estimates of  $E(r)$  for the S&P 500.


For each year, they estimate expected return from the sum of the dividend yield  $(D_{t} / P_{t - 1})$  plus the dividend growth rate  $(g_{t} = D_{t} / D_{t - 1} - 1)$ . In contrast, the realized return is the dividend yield plus capital gains  $(P_{t} / P_{t - 1} - 1)$ . The following table shows that while the DDM and actual returns were similar in the earlier period, realized returns in the latter period were far higher. Moreover, the statistical precision of DDM returns was far greater than those of average realized returns, as reflected in a far smaller standard error. Fama and French conclude that the equity premium puzzle may be due at least in part to unanticipated capital gains in the latter period.

<table><tr><td rowspan="2">Period</td><td colspan="2">Mean Return</td><td colspan="2">Standard Error</td><td colspan="2">t-Statistic</td><td colspan="2">Sharpe Ratio</td></tr><tr><td>DDM</td><td>Realized</td><td>DDM</td><td>Realized</td><td>DDM</td><td>Realized</td><td>DDM</td><td>Realized</td></tr><tr><td>1872–1999</td><td>4.03</td><td>6.10</td><td>1.14</td><td>1.65</td><td>3.52</td><td>3.70</td><td>0.22</td><td>0.34</td></tr><tr><td>1872–1949</td><td>4.35</td><td>4.62</td><td>1.76</td><td>2.20</td><td>2.47</td><td>2.10</td><td>0.23</td><td>0.24</td></tr><tr><td>1950–1999</td><td>3.54</td><td>8.41</td><td>1.03</td><td>2.45</td><td>3.42</td><td>3.43</td><td>0.21</td><td>0.51</td></tr></table>

Fama and French's study provides a simple explanation for the equity premium puzzle, namely, that observed rates of return in the recent half-century were unexpectedly high. It also implies that forecasts of future excess returns will be lower than past averages. The fact that the U.S. has been an outlier relative to other countries, providing one of the highest Sharpe ratios (see Figure 5.10), corroborates the view that its historical experience may have been better than market participants originally anticipated.

# Survivorship Bias

The equity premium puzzle emerged from long-term averages of U.S. stock returns. There are reasons to suspect that these estimates of the risk premium are subject to survivorship bias, as the United States had one of the most successful economies in the world, an outcome that would not have seemed inevitable much before the second World War. Jurion and Goetzmann[38] assembled a database of capital appreciation indexes for the stock markets of 39 countries over the period 1921-1996. Figure 13.8 shows that U.S. equities had the highest real return of all countries, at  $4.3\%$  annually, versus a median of  $0.8\%$  for other countries. Moreover, unlike the United States, many other countries have had equity markets that actually closed, either permanently or for extended periods of time, following economic disruptions caused by war or revolution.


The implication of these results is that using average U.S. data may impart a form of survivorship bias to our estimate of expected returns because, unlike many other countries, the United States has never been a victim of such extreme problems. Estimating risk premiums from the experience of the country with the highest average return and ignoring the evidence from stock markets that did not survive for the full sample period will impart an upward bias in estimates of expected returns. The high realized equity premium obtained for the United States may not be indicative of required returns.

Figure 13.8 Real returns on global stock markets. The figure displays average real returns for 39 markets over the period 1921 to 1996. Markets are sorted by years of existence. An asterisk indicates that the market suffered a long-term break.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/b2dfa03f1480ea4de3b48d96d8180a79e2074d082c0610cd2dcf4cc44697b762.jpg)
Source: Philippe Jurion and William N. Goetzmann, "Global Stock Markets in the Twentieth Century," Journal of Finance 54, no. 3 (June 1999), pp. 953-80.


# Extensions to the CAPM May Mitigate the Equity Premium Puzzle

Constantinides argues that the standard CAPM can be extended to account for observed excess returns by relaxing some of its assumptions, in particular, by recognizing that consumers face uninsurable and idiosyncratic income shocks, for example, the loss of employment. The prospect of such events is higher in economic downturns, and bad outcomes such as job loss are not shared evenly across all members of the economy. This observation can take us a long way toward understanding the risk-return trade-off as well as its variation across the business cycle.

In addition, life-cycle considerations are important and often overlooked. Borrowing constraints become important when placed in the context of the life cycle. The imaginary "representative consumer" who holds all stock and bond market wealth does not face borrowing constraints. Young consumers, however, do face meaningful borrowing constraints.

Constantinides traces their impact on the equity premium, the demand for bonds, and the limited participation of many consumers in the capital markets. He also shows that adding habit formation to the conventional utility function helps justify higher risk premiums than those that would be predicted by the covariance of stock returns with aggregate consumption growth. Habit formation refers to the observation that investors may become acclimated to a given level of consumption that they have experienced or observed over extended periods of time. It becomes hard to cut back from a consumption level you have come to view as "normal," even if it might appear luxuriant to someone else. Habit formation can make investors act as if they are more risk averse, as they can become highly sensitive to losses even if it appears that they have a comfortable cushion to absorb poor returns.[40]

Another attempt to resolve the equity premium puzzle appeals to the idea of "long-run risk." Suppose that an increase in consumption growth this year signals to the market that growth likely will be higher for several years to come. In that event, while the covariance between asset returns and contemporaneous consumption growth may be low, the covariance of returns with the present value of the entire consumption stream will be much larger. This long-run forward-looking view generates much higher values for systematic (consumption-based) risk and makes the historical equity premium easier to justify.

Finally, some authors explain the risk premium puzzle by appealing to rare disaster risk.42 Suppose there is a very low probability of a truly calamitous economic crash, on the order of another Great Depression. We may go an entire lifetime without experiencing such a crash, so episodes representing such an extreme outcome may never enter our datasets. But investors may nevertheless be concerned about the potential for such a disaster, in which case risk premia will reflect their concern. If so, asset risk premia may reflect compensation for potential disasters that actually have not (yet!) shown up in the historical record. This can make it appear as if risk premia are excessive compared to the risk that has materialized.

# Liquidity and the Equity Premium Puzzle

We've seen that liquidity risk is potentially important in explaining the cross section of stock returns. The illiquidity premium may be on the same order of magnitude as the market risk premium. Therefore, the common practice of treating the average excess return on a market index as an estimate of a risk premium per se is too simplistic. Part of that average excess return is almost certainly compensation for liquidity risk rather than just the (systematic) volatility of returns. If this is recognized, the equity premium puzzle may be less of a puzzle than it first appears.

$^{40}$ Two influential papers on habit formation are George M. Constantinides, "Habit Formation: A Resolution of the Equity Premium Puzzle," Journal of Political Economy 98 (1990), pp. 519-43, and John Y. Campbell and John H. Cochrane, "By Force of Habit: A Consumption-Based Explanation of Aggregate Stock Market Behavior," Journal of Political Economy (1999), pp. 205-1.
$^{41}$ Ravi Bansal and Amir Yaron, "Risks for the Long Run: A Potential Resolution of Asset Pricing Puzzles," Journal of Finance 59 (2004), pp. 1639-72.
42For a review, see Jerry Tsai and Jessica A. Wachter, "Disaster Risk and Its Implications for Asset Pricing," Annual Review of Financial Economics 7 (2015), pp. 219-52.

# Behavioral Explanations of the Equity Premium Puzzle

Barberis and Huang explain the puzzle as an outcome of irrational investor behavior. The key elements of their approach are loss aversion and narrow framing, two well-known features of decision making under risk in experimental settings. Narrow framing is the idea that investors evaluate every risk they face in isolation. Thus, investors will focus on total volatility rather than the low correlation of a stock portfolio with other components of wealth, and therefore they will require a higher risk premium than rational models would predict. Combined with loss aversion, investor behavior will generate large risk premiums despite the fact that traditionally measured risk aversion is low. (See Chapter 12 for more discussion of loss aversion and other behavioral biases.)

Models that incorporate these effects can generate a large equilibrium equity risk premium and a low and stable risk-free rate, even when consumption growth is smooth and only weakly correlated with the stock market. Moreover, they can do so for parameter values that correspond to plausible predictions about attitudes to independent monetary gambles.

The behavioral analysis of the equity premium also has implications for a closely related puzzle, the stock market participation puzzle. Narrow framing can explain why a segment of the population that one would expect to participate in the stock market still avoids it. The assessment of stock market volatility in isolation ignores its limited impact on consumption. Loss aversion that exaggerates disutility of losses relative to a reference point magnifies this effect.

Nicholas Barberis and Ming Huang, “The Loss Aversion/Narrow Framing Approach to the Equity Premium Puzzle,” in Handbooks in Finance: Handbook of the Equity Risk Premium, ed. Rajnish Mehra (Amsterdam: Elsevier, 2008), pp. 199–229.

# SUMMARY

1. Early tests of the single-factor CAPM were generally supportive of the model, but that support has long since evaporated. The positive relation between beta and average return has not characterized the data for decades.
2. Roll's critique implies that the usual CAPM test is a test only of the mean-variance efficiency of a prespecified market proxy and therefore that tests of the linearity of the expected return-beta relationship do not bear on the validity of the model.
3. Tests of the index model that account for human capital and cyclical variations in asset betas are more supportive of the CAPM and APT. Moreover, anomalies such as the size and book-to-market effects are somewhat mitigated once these variables are accounted for.
4. The dominant multifactor models today are variants of the Fama-French model, incorporating market, size, value, momentum, and, sometimes, liquidity or other factors. However, the recent emergence of an ever-growing collection of discovered factors casts doubt on the validity of many of these findings. This has led to several suggestions that the criteria for widespread acceptance of a priced factor be tightened.
5. In some tests of consumption-based capital asset pricing models, consumption betas help to explain average portfolio returns and are associated with the Fama-French factors. These results support Fama and French's conjecture that their factors proxy for more fundamental sources of risk.
6. The equity premium puzzle originates from the observation that equity returns exceeded the risk-free rate to an extent that is inconsistent with the covariance of returns with consumption risk and reasonable levels of risk aversion—at least when average rates of return are taken to represent expectations. Some explanations for this puzzle focus on incomplete risk sharing or on habit formation. Other explanations are empirically based. For example, the puzzle emerges primarily from excess returns in the post-World War II period. It is plausible that the extent of the economic success of the United States in the post-war period was unexpected, making historical averages unrepresentative of prior expected values. Alternative estimates of expected returns using the dividend growth model instead of average returns suggest that excess returns on stocks were high largely because of unexpectedly large capital gains.


KEY TERMS first-pass regression


second-pass regression benchmark error


# KEY EQUATIONS

First-pass regression equation:  $r_{it} - r_{ft} = a_i + b_i(r_{Mt} - r_{ft}) + e_{it}$

Second-pass regression equation:  $\overline{r_i - r_f} = \gamma_0 + \gamma_1 b_i$

Fama-French three-factor model:  $E(r_{i}) - r_{f} = a_{i} + b_{i}[E(r_{M}) - r_{f}] + s_{i}E[R_{SMB}] + h_{i}E[R_{HML}]$

# PROBLEM SETS

The following annual excess rates of return were obtained for nine individual stocks  $(A - I)$  and a market index. Use this information to complete Problems 1-7.

excel

Please visit us at www.mhhe.com/Bodie13e


Stock Excess Returns (\%)

<table><tr><td>Year</td><td>Market Index</td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td></tr><tr><td>1</td><td>29.65</td><td>33.88</td><td>-25.20</td><td>36.48</td><td>42.89</td><td>-39.89</td><td>39.67</td><td>74.57</td><td>40.22</td><td>90.19</td></tr><tr><td>2</td><td>-11.91</td><td>-49.87</td><td>24.70</td><td>-25.11</td><td>-54.39</td><td>44.92</td><td>-54.33</td><td>-79.76</td><td>-71.58</td><td>-26.64</td></tr><tr><td>3</td><td>14.73</td><td>65.14</td><td>-25.04</td><td>18.91</td><td>-39.86</td><td>-3.91</td><td>-5.69</td><td>26.73</td><td>14.49</td><td>18.14</td></tr><tr><td>4</td><td>27.68</td><td>14.46</td><td>-38.64</td><td>-23.31</td><td>-0.72</td><td>-3.21</td><td>92.39</td><td>-3.82</td><td>13.74</td><td>0.09</td></tr><tr><td>5</td><td>5.18</td><td>15.67</td><td>61.93</td><td>63.95</td><td>-32.82</td><td>44.26</td><td>-42.96</td><td>101.67</td><td>24.24</td><td>8.98</td></tr><tr><td>6</td><td>25.97</td><td>-32.17</td><td>44.94</td><td>-19.56</td><td>69.42</td><td>90.43</td><td>76.72</td><td>1.72</td><td>77.22</td><td>72.38</td></tr><tr><td>7</td><td>10.64</td><td>-31.55</td><td>-74.65</td><td>50.18</td><td>74.52</td><td>15.38</td><td>21.95</td><td>-43.95</td><td>-13.40</td><td>28.95</td></tr><tr><td>8</td><td>1.02</td><td>-23.79</td><td>47.02</td><td>-42.28</td><td>28.61</td><td>-17.64</td><td>28.83</td><td>98.01</td><td>28.12</td><td>39.41</td></tr><tr><td>9</td><td>18.82</td><td>-4.59</td><td>28.69</td><td>-0.54</td><td>2.32</td><td>42.36</td><td>18.93</td><td>-2.45</td><td>37.65</td><td>94.67</td></tr><tr><td>10</td><td>23.92</td><td>-8.03</td><td>48.61</td><td>23.65</td><td>26.26</td><td>-3.65</td><td>23.31</td><td>15.36</td><td>80.59</td><td>52.51</td></tr><tr><td>11</td><td>-41.61</td><td>78.22</td><td>-85.02</td><td>-0.79</td><td>-68.70</td><td>-85.71</td><td>-45.64</td><td>2.27</td><td>-72.47</td><td>-80.26</td></tr><tr><td>12</td><td>-6.64</td><td>4.75</td><td>42.95</td><td>-48.60</td><td>26.27</td><td>13.24</td><td>-34.34</td><td>-54.47</td><td>-1.50</td><td>-24.46</td></tr></table>

1. Perform the first-pass regressions for a single-index model and tabulate the summary statistics.
2. Specify the hypotheses for the second-pass regression used to test the SML of the CAPM.
3. Perform the second-pass SML regression by regressing the average excess return of each portfolio on its beta.
4. Summarize your test results and compare them to the results reported in the text.
5. Group the nine stocks into three portfolios, maximizing the dispersion of the betas of the three resultant portfolios. Repeat the test and explain any changes in the results.
6. Explain Roll's critique as it applies to the tests performed in Problems 1-5.
7. Plot the capital market line (CML), the nine stocks, and the three portfolios on a graph of average returns versus standard deviation. Compare the mean-variance efficiency of the three portfolios and the market index. Does the comparison support the CAPM?

Suppose that, in addition to the market factor that has been considered in Problems 1-7, a second factor is considered. The values of this factor for years 1 to 12 were as follows:

<table><tr><td>Year</td><td>\% Change in Factor Value</td><td>Year</td><td>\% Change in Factor Value</td></tr><tr><td>1</td><td>-9.84</td><td>7</td><td>-3.52</td></tr><tr><td>2</td><td>6.46</td><td>8</td><td>8.43</td></tr><tr><td>3</td><td>16.12</td><td>9</td><td>8.23</td></tr><tr><td>4</td><td>-16.51</td><td>10</td><td>7.06</td></tr><tr><td>5</td><td>17.82</td><td>11</td><td>-15.74</td></tr><tr><td>6</td><td>-13.31</td><td>12</td><td>2.03</td></tr></table>

8. Perform the first-pass regressions as in the Chen, Roll, and Ross study and tabulate the relevant summary statistics. (Hint: Use the multiple regression tool from Excel. Estimate the beta of each stock on the two factors.)
9. Specify the hypothesis for a test of a second-pass regression for the two-factor SML.
10. Do the data suggest a two-factor economy?
11. Can you identify a factor portfolio for the second factor?
12. Suppose you own your own business, which now makes up about half your net worth. On the basis of what you have learned in this chapter, how would you structure your portfolio of financial assets?

1. Identify and briefly discuss three criticisms of beta as used in the capital asset pricing model.
2. Richard Roll, in an article on using the capital asset pricing model (CAPM) to evaluate portfolio performance, indicated that it may not be possible to evaluate portfolio management ability if there is an error in the benchmark used.

a. In evaluating portfolio performance, describe the generally employed procedure, with emphasis on the benchmark portfolio.
b. Explain what Roll meant by benchmark error and identify the specific problem with this benchmark.
c. Draw a graph that shows how a portfolio that has been judged as superior relative to a "measured" security market line (SML) can be inferior relative to the "true" SML.
d. Assume that you are informed that a given portfolio manager has been evaluated as superior when compared to the Dow Jones Industrial Average, the S&P 500, and the NYSE Composite Index. Explain whether this consensus would make you feel more comfortable regarding the portfolio manager's true ability.
e. Although conceding the possible problem with benchmark errors as set forth by Roll, some contend this does not mean the CAPM is incorrect, but only that there is a measurement problem when implementing the theory. Others contend that because of benchmark errors, the whole technique should be scrapped. Take and defend one of these positions.

3. Bart Campbell, CFA, is a portfolio manager who has recently met with a prospective client, Jane Black. After conducting a survey market line (SML) performance analysis using the Dow Jones Industrial Average as her market proxy, Black claims that her portfolio has experienced superior performance. Campbell uses the capital asset pricing model as an investment performance measure and finds that Black's portfolio plots below the SML. Campbell concludes that Black's apparent superior performance is a function of an incorrectly specified market proxy, not superior investment management. Justify Campbell's conclusion by addressing the likely effects of an incorrectly specified market proxy on both beta and the slope of the SML.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/8a67b6bc023054e2827d05d4f222c25d9b5a0717ab7d9702594b01df4988f3ab.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a06fc74c0fd275292867bf97600b999730d6fad883b5546fa52b2cece585ced5.jpg)

# SOLUTIONS TO CONCEPT CHECKS

1. The SCL is estimated for each stock; hence, we need to estimate 100 equations. Our sample consists of 60 monthly rates of return for each of the 100 stocks and for the market index. Thus each regression is estimated with 60 observations. Equation 13.1 in the text shows that when stated in excess return form, the SCL should pass through the origin, that is, have a zero intercept.
2. a. When the SML has a positive intercept and its slope is less than the mean excess return on the market portfolio, it is flatter than predicted by the CAPM. Low-beta stocks therefore have provided returns that, on average, were higher than they should have been on the basis of their beta. Conversely, high-beta stocks were found to have provided, on average, lower returns than they should have on the basis of their betas.
b. A positive coefficient on  $\beta^2$  would indicate that the relationship between risk and return is nonlinear. High-beta securities would provide expected returns more than proportional to risk. A positive coefficient on  $\sigma (e)$  would indicate that firm-specific risk affects expected return, a direct contradiction of the CAPM and APT.


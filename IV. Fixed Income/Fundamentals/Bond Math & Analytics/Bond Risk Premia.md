---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Bond Risk Premia
---

# Bond Risk Premia

By JOHN H. COCHRANE AND MONIKA PIAZZESI*

We study time variation in expected excess bond returns. We run regressions of one-year excess returns on initial forward rates. We find that a single factor, a single tent-shaped linear combination of forward rates, predicts excess returns on oneto five-year maturity bonds with  $\mathbf{R}^2$  up to 0.44. The return-forecasting factor is countercyclical and forecasts stock returns. An important component of the return-forecasting factor is unrelated to the level, slope, and curvature movements described by most term structure models. We document that measurement errors do not affect our central results. (JEL G0, G1, E0, E4)

We study time-varying risk premia in U.S. government bonds. We run regressions of one-year excess returns-borrow at the one-year rate, buy a long-term bond, and sell it in one year-on five forward rates available at the beginning of the period. By focusing on excess returns, we net out inflation and the level of interest rates, so we focus directly on real risk premia in the nominal term structure. We find  $R^2$  values as high as 44 percent. The forecasts are statistically significant, even taking into account the small-sample properties of test statistics, and they survive a long list of robustness checks. Most important, the pattern of regression coefficients is the same for all maturities. A single "return-forecasting factor," a single linear combination of forward rates or yields, describes time-variation in the expected return of all bonds.

This work extends Eugene Fama and Robert Bliss's (1987) and John Campbell and Robert

* Cochrane: Graduate School of Business, University of Chicago, 5807 S. Woodlawn Ave., Chicago, IL 60637 (e-mail: john.cochrane@gsb.uchicago.edu) and NBER; Piazzesi: Graduate School of Business, University of Chicago, 5807 S. Woodlawn Ave., Chicago, IL 60637 (e-mail: monika.piazzesi@gsb.uchicago.edu) and NBER. We thank Geert Bekaert, Michael Brandt, Pierre Collin-Dufresne, Lars Hansen, Bob Hodrick, Narayana Kocherlakota, Pedro Santa-Clara, Martin Schneider, Ken Singleton, two anonymous referees, and many seminar participants for helpful comments. We acknowledge research support from the CRSP and the University of Chicago Graduate School of Business and from an NSF grant administered by the NBER.

Shiller's (1991) classic regressions. Fama and Bliss found that the spread between the  $n$ -year forward rate and the one-year yield predicts the one-year excess return of the  $n$ -year bond, with  $R^2$  about 18 percent. Campbell and Shiller found similar results forecasting yield changes with yield spreads. We substantially strengthen this evidence against the expectations hypothesis. (The expectations hypothesis that long yields are the average of future expected short yields is equivalent to the statement that excess returns should not be predictable.) Our  $p$ -values are much smaller, we more than double the forecast  $R^2$ , and the return-forecasting factor drives out individual forward or yield spreads in multiple regressions. Most important, we find that the same linear combination of forward rates predicts bond returns at all maturities, where Fama and Bliss, and Campbell and Shiller, relate each bond's expected excess return to a different forward spread or yield spread.

Measurement Error. One always worries that return forecasts using prices are contaminated by measurement error. A spuriously high price at  $t$  will seem to forecast a low return from time  $t$  to time  $t + 1$ ; the price at  $t$  is common to leftand right-hand sides of the regression. We address this concern in a number of ways. First, we find that the forecast power, the tent shape, and the single-factor structure are all preserved when we lag the right-hand variables, running returns from  $t$  to  $t + 1$  on variables at time  $t - i / 12$ . In these regressions, the forecasting variables (time  $t - i / 12$  yields or forward rates) do not share a common price with the excess return from  $t$  to  $t + 1$ . Second, we compute the patterns that measurement error can produce and show they are not the patterns we observe. Measurement error produces returns on  $n$ -period bonds that are forecast by the  $n$ -period yield. It does not produce the single-factor structure; it does not generate forecasts in which (say) the five-year yield helps to forecast the two-year bond return. Third, the return-forecasting factor predicts excess stock returns with a sensible magnitude. Measurement error in bond prices cannot generate this result.

Our analysis does reveal some measurement error, however. Lagged forward rates also help to forecast returns in the presence of time- $t$  forward rates. A regression on a moving average of forward rates shows the same tent-shaped single factor, but improves  $R^2$  up to 44 percent. These results strongly suggest measurement error. Since bond prices are time- $t$  expectations of future nominal discount factors, it is very difficult for any economic model of correctly measured bond prices to produce dynamics in which lagged yields help to forecast anything. If, however, the risk premium moves slowly over time but there is measurement error, moving averages will improve the signal to noise ratio on the right-hand side.

These considerations together argue that the core results-a single roughly tent-shaped factor that forecasts excess returns of all bonds, and with a large  $R^2$  are not driven by measurement error. Quite the contrary: to see the core results you have to take steps to mitigate measurement error. A standard monthly AR(1) yield VAR raised to the twelfth power misses most of the one-year bond return predictability and completely misses the single-factor representation. To see the core results you must look directly at the one-year horizon, which cumulates the persistent expected return relative to serially uncorrelated measurement error, or use more complex time series models, and you see the core results better with a moving average right-hand variable.

The single-factor structure is statistically rejected when we regress returns on time-  $t$  forward rates. However, the single factor explains over 99.5 percent of the variance of expected excess returns, so the rejection is tiny on an economic basis. Also, the statistical rejection shows the characteristic pattern of small measurement errors: tiny movements in  $n$ -period bond yields forecast tiny additional excess return on  $n$ -period bonds, and this evidence against the single-factor model is much weaker with lagged right-hand variables. We conclude that the single-factor model is an excellent approximation, and may well be the literal truth once measurement errors are accounted for.

Term Structure Models. We relate the returnforecasting factor to term structure models in finance. The return-forecasting factor is a symmetric, tent-shaped linear combination of forward rates. Therefore, it is unrelated to pure slope movements: a linearly rising or declining yield or forward curve gives exactly the same return forecast. An important component of the variation in the return-forecasting factor, and an important part of its forecast power, is unrelated to the standard "level," "slope," and "curvature" factors that describe the vast bulk of movements in bond yields and thus form the basis of most term structure models. The fourto five-year yield spread, though a tiny factor for yields, provides important information about the expected returns of all bonds. The increased power of the return-forecasting factor over three-factor forecasts is statistically and economically significant.

This fact, together with the fact that lagged forward rates help to predict returns, may explain why the return-forecasting factor has gone unrecognized for so long in this well-studied data, and these facts carry important implications for term structure modeling. If you first posit a factor model for yields, estimate it on monthly data, and then look at one-year expected returns, you will miss much excess return forecastability and especially its single-factor structure. To incorporate our evidence on risk premia, a yield curve model must include something like our tent-shaped return-forecasting factor in addition to such traditional factors as level, slope, and curvature, even though the return-forecasting factor does little to improve the model's fit for yields, and the model must reconcile the difference between our direct annual forecasts and those implied by short horizon regressions.

One may ask, "How can it be that the five-year forward rate is necessary to predict the returns on two-year bonds?" This natural question reflects a subtle misconception. Under the expectations hypothesis, yes, the  $n$ -year forward rate is an optimal forecast of the one-year spot rate  $n - 1$  years from now, so no other variable should enter that forecast. But the expectations hypothesis is false, and we're forecasting one-year excess returns, and not spot rates. Once we abandon the expectations hypothesis (so that returns are forecastable at all), it is easy to generate economic models in which many forward rates are needed to forecast one-year excess returns on bonds of any maturity. We provide an explicit example. The form of the example is straightforward: aggregate consumption and inflation follow time-series processes, and bond prices are generated by expected marginal utility growth divided by inflation. The discount factor is conditionally heteroskedastic, generating a time-varying risk premium. In the example, bond prices are linear functions of state variables, so this example also shows that it is straightforward to construct affine models that reflect our or related patterns of bond return predictability. Affine models, in the style of Darrell Duffie and Rui Kan (1996), dominate the term structure literature, but existing models do not display our pattern of return predictability. A crucial feature of the example, but an unfortunate one for simple storytelling, is that the discount factor must reflect five state variables, so that five bonds can move independently. Otherwise, one could recover (say) the five-year bond price exactly from knowledge of the other four bond prices, and multiple regressions would be impossible.

Related Literature.-Our single-factor model is similar to the "single index" or "latent variable" models used by Lars Hansen and Robert Hodrick (1983) and Wayne Ferson and Michael Gibbons (1985) to capture time-varying expected returns. Robert Stambaugh (1988) ran regressions similar to ours of twoto six-month bond excess returns on oneto six-month forward rates. After correcting for measurement error by using adjacent rather than identical bonds on the leftand right-hand side, Stambaugh found a tent-shaped pattern of coeffi

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/cf132b392727e99996adf2a3fc74396c4a18ca74ac543a2c6466cb89dee23a6f.jpg)

FIGURE 1. REGRESSION COEFFICIENTS OF ONE-YEAR EXCESS RETURNS ON FORWARD RATES

Notes: The top panel presents estimates  $\beta$  from the unrestricted regressions (1) of bond excess returns on all forward rates. The bottom panel presents restricted estimates  $\mathbf{b}\gamma^{\top}$  from the single-factor model (2). The legend (5, 4, 3, 2) gives the maturity of the bond whose excess return is forecast. The x axis gives the maturity of the forward rate on the right-hand side.

cients similar to ours (his Figure 2, p. 53). Stambaugh's result confirms that the basic pattern is not driven by measurement error. Antti Ilmanen (1995) ran regressions of monthly excess returns on bonds in different countries on a term spread, the real short rate, stock returns, and bond return betas.

# I. Bond Return Regressions

# A. Notation

We use the following notation for log bond prices:

$$ p _ {t} ^ {(n)} = \begin{array}{c} \log \text {p r i c e o f n - y e a r d i s c o u n t b o n d} \\ \text {a t t i m e t}. \end{array}
$$

We use parentheses to distinguish maturity from exponentiation in the superscript. The log yield is

$$ y _ {t} ^ {(n)} \equiv - \frac {1}{n} p _ {t} ^ {(n)}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/257772b90279b4dafbd4ff4d0a7840e7dcdad93dfde989a7478b71187a5e1dc5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/28b478c29957761eb80b8af3766b1dd1433d5078f3fa042512c14c72e75c0381.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/6164fb37b5fc53e0cd290ce1296551eaa4a0d2d114c6aa8f0e8ad2988e2fb406.jpg)

FIGURE 2. FACTOR MODELS

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/4315b1c9ea74a8a7a67c2a2f722187a198cd7f99ae66929606269f28a14ffca2.jpg)

Notes: Panel A shows coefficients  $\pmb{\gamma}^{*}$  in a regression of average (across maturities) holding period returns on all yields,  $\overline{rx}_{t + 1} = \pmb{\gamma}^{*\top}\mathbf{y}_t + \pmb{\varepsilon}_{t + 1}$ . Panel B shows the loadings of the first three principal components of yields. Panel C shows the coefficients on yields implied by forecasts that use yield-curve factors to forecast excess returns. Panel D shows coefficient estimates from excess return forecasts that use one, two, three, four, and all five forward rates.

We write the log forward rate at time  $t$  for loans between time  $t + n - 1$  and  $t + n$  as

$$ f _ {t} ^ {(n)} \equiv p _ {t} ^ {(n - 1)} - p _ {t} ^ {(n)}
$$ and we write the log holding period return from buying an  $n$ -year bond at time  $t$  and selling it as an  $n - 1$  year bond at time  $t + 1$  as


$$ r _ {t + 1} ^ {(n)} \equiv p _ {t + 1} ^ {(n - 1)} - p _ {t} ^ {(n)}.
$$

We denote excess log returns by

$$ r x _ {t + 1} ^ {(n)} \equiv r _ {t + 1} ^ {(n)} - y _ {t} ^ {(1)}.
$$

We use the same letters without  $n$  index to denote vectors across maturity, e.g.,

$$
\mathbf {r} \mathbf {x} _ {t + 1} \equiv \left[ \begin{array}{c c c c} r x _ {t} ^ {(2)} & r x _ {t} ^ {(3)} & r x _ {t} ^ {(4)} & r x _ {t} ^ {(5)} \end{array} \right] ^ {\top}.
$$

When used as right-hand variables, these vectors include an intercept, e.g.,

$$
\mathbf {y} _ {t} \equiv \left[ \begin{array}{c c c c c} 1 & y _ {t} ^ {(1)} & y _ {t} ^ {(2)} & y _ {t} ^ {(3)} & y _ {t} ^ {(4)} \\ & & & & y _ {t} ^ {(5)} \end{array} \right] ^ {\top}
$$

$$
\mathbf {f} _ {t} \equiv \left[ \begin{array}{c c c c c c} 1 & y _ {t} ^ {(1)} & f _ {t} ^ {(2)} & f _ {t} ^ {(3)} & f _ {t} ^ {(4)} & f _ {t} ^ {(5)} \end{array} \right] ^ {\top}.
$$

We use overbars to denote averages across maturity, e.g.,

$$
\overline {{r x}} _ {t + 1} \equiv \frac {1}{4} \sum_ {n = 2} ^ {5} r x _ {t + 1} ^ {(n)}.
$$

# B. Excess Return Forecasts

We run regressions of bond excess returns at time  $t + 1$  on forward rates at time  $t$ . Prices, yields, and forward rates are linear functions of each other, so the forecasts are the same for any of these choices of right-hand variables. We focus on a one-year return horizon. We use the Fama-Bliss data (available from CRSP) of one through five-year zero coupon bond prices, so we can compute annual returns directly.

We run regressions of excess returns on all forward rates,

$$
\begin{array}{l} \left(1\right) \quad r x _ {t + 1} ^ {(n)} = \beta_ {0} ^ {(n)} + \beta_ {1} ^ {(n)} y _ {t} ^ {(1)} + \beta_ {2} ^ {(n)} f _ {t} ^ {(2)} \\ + \dots + \beta_ {5} ^ {(n)} f _ {t} ^ {(5)} + \varepsilon_ {t + 1} ^ {(n)}. \\ \end{array}
$$

The top panel of Figure 1 graphs the slope coefficients  $[\beta_1^{(n)}\dots \beta_5^{(n)}]$  as a function of maturity  $n$  . (The Appendix, which is available at http://www.aeaweb.org/aer/contentss/appendices/ mar05_app_cochrane.pdf, includes a table of the regressions.) The plot makes the pattern clear: The same function of forward rates forecasts holding period returns at all maturities. Longer maturities just have greater loadings on this same function.

This beautiful pattern of coefficients cries for us to describe expected excess returns of all maturities in terms of a single factor, as follows:

$$
\begin{array}{l} r x _ {t + 1} ^ {(n)} = b _ {n} \left(\gamma_ {0} + \gamma_ {1} y _ {t} ^ {(1)} + \gamma_ {2} f _ {t} ^ {(2)} \right. \tag {2} \\ + \dots + \gamma_ {5} f _ {t} ^ {(5)}) + \varepsilon_ {t + 1} ^ {(n)}. \\ \end{array}
$$

$b_{n}$  and  $\gamma_{n}$  are not separately identified by this specification, since you can double all the  $b$  and halve all the  $\gamma$ . We normalize the coefficients by imposing that the average value of  $b_{n}$  is one,  $\frac{1}{4} \Sigma_{n=2}^{5} b_{n} = 1$ .

We estimate (2) in two steps. First, we estimate the  $\gamma$  by running a regression of the average (across maturity) excess return on all forward rates,

$$
\begin{array}{l} \frac {1}{4} \sum_ {n = 2} ^ {5} r x _ {t + 1} ^ {(n)} = \gamma_ {0} + \gamma_ {1} y _ {t} ^ {(1)} + \gamma_ {2} f _ {t} ^ {(2)} \tag {3} \\ + \dots + \gamma_ {5} f _ {t} ^ {(5)} + \bar {\varepsilon} _ {t + 1} \\ \overline {{r x}} _ {t + 1} = \boldsymbol {\gamma} ^ {\top} \mathbf {f} _ {t} + \bar {\varepsilon} _ {t + 1}. \\ \end{array}
$$

The second equality reminds us of the vector and average (overbar) notation. Then, we estimate  $b_{n}$  by running the four regressions

$$ r x _ {t + 1} ^ {(n)} = b _ {n} \left(\boldsymbol {\gamma} ^ {\top} \mathbf {f} _ {t}\right) + \varepsilon_ {t + 1} ^ {(n)}, \quad n = 2, 3, 4, 5.
$$

The single-factor model (2) is a restricted model. If we write the unrestricted regression coefficients from equation (1) as  $4 \times 6$  matrix  $\boldsymbol{\beta}$ , the single-factor model (2) amounts to the restriction  $\bar{\mathbf{B}} = \mathbf{b}\boldsymbol{\gamma}^{\top}$ . A single linear combination of forward rates  $\boldsymbol{\gamma}^{\top}\mathbf{f}_t$  is the state variable for time-varying expected returns of all maturities.

Table 1 presents the estimated values of  $\gamma$  and  $\mathbf{b}$ , standard errors, and test statistics. The  $\gamma$  estimates in panel A are just about what one would expect from inspection of Figure 1. The loadings  $b_{n}$  of expected returns on the returnforecasting factor  $\gamma^{\top}\mathbf{f}$  in panel B increase smoothly with maturity. The bottom panel of Figure 1 plots the coefficients of individual-bond expected returns on forward rates, as implied by the restricted model; i.e., for each  $n$ , it presents  $[b_n\gamma_1\dots b_n\gamma_5]$ . Comparing this plot with the unrestricted estimates of the top panel, you can see that the single-factor model almost exactly captures the unrestricted parameter estimates. The specification (2) constrains the constants  $(b_{n}\gamma_{0})$  as well as the regression coefficients plotted in Figure 1, and this restriction also holds closely. The unrestricted constants are  $(-1.62, -2.67, -3.80, -4.89)$ . The values implied from  $b_{n}\gamma_{0}$  in Table 1 are similar, (0.47, 0.87, 1.24, 1.43)  $\times$ $(-3.24) = (-1.52, -2.82, -4.02, -4.63)$ . The restricted and unrestricted estimates are close statistically as well as economically. The largest  $t$ -statistic for the hypothesis that each unconstrained parameter is equal to its restricted value is 0.9 and most of them are around 0.2. Section V considers whether the restricted and unrestricted coefficients are jointly equal, with some surprises.

The right half of Table 1B collects statistics from unrestricted regressions (1). The unrestricted  $R^2$  in the right half of Table 1B are essentially the same as the  $R^2$  from the restricted model in the left half of Table 1B, indicating that the single-factor model's restrictions—that bonds of each maturity are forecast by the same portfolio of forward rates—do little damage to the forecast ability.

TABLE 1-ESTIMATES OF THE SINGLE-FACTOR MODEL

<table><tr><td colspan="9">A. Estimates of the return-forecasting factor, \overline{rx}_{t+1} = \boldsymbol{\gamma}^{\top}\mathbf{f}_t + \bar{\varepsilon}_{t+1}</td></tr><tr><td></td><td>\gamma_0</td><td>\gamma_1</td><td>\gamma_2</td><td>\gamma_3</td><td>\gamma_4</td><td>\gamma_5</td><td>R^2</td><td>\chi^2(5)</td></tr><tr><td>OLS estimates</td><td>-3.24</td><td>-2.14</td><td>0.81</td><td>3.00</td><td>0.80</td><td>-2.08</td><td>0.35</td><td></td></tr><tr><td colspan="9">Asymptotic (Large T) distributions</td></tr><tr><td>HH, 12 lags</td><td>(1.45)</td><td>(0.36)</td><td>(0.74)</td><td>(0.50)</td><td>(0.45)</td><td>(0.34)</td><td></td><td>811.3</td></tr><tr><td>NW, 18 lags</td><td>(1.31)</td><td>(0.34)</td><td>(0.69)</td><td>(0.55)</td><td>(0.46)</td><td>(0.41)</td><td></td><td>105.5</td></tr><tr><td>Simplified HH</td><td>(1.80)</td><td>(0.59)</td><td>(1.04)</td><td>(0.78)</td><td>(0.62)</td><td>(0.55)</td><td></td><td>42.4</td></tr><tr><td>No overlap</td><td>(1.83)</td><td>(0.84)</td><td>(1.69)</td><td>(1.69)</td><td>(1.21)</td><td>(1.06)</td><td></td><td>22.6</td></tr><tr><td colspan="9">Small-sample (Small T) distributions</td></tr><tr><td>12 lag VAR</td><td>(1.72)</td><td>(0.60)</td><td>(1.00)</td><td>(0.80)</td><td>(0.60)</td><td>(0.58)</td><td>[0.22, 0.56]</td><td>40.2</td></tr><tr><td>Cointegrated VAR</td><td>(1.88)</td><td>(0.63)</td><td>(1.05)</td><td>(0.80)</td><td>(0.60)</td><td>(0.58)</td><td>[0.18, 0.51]</td><td>38.1</td></tr><tr><td>Exp. Hypo.</td><td></td><td></td><td></td><td></td><td></td><td></td><td>[0.00, 0.17]</td><td></td></tr></table>

B. Individual-bond regressions

<table><tr><td colspan="6">Restricted, rx(n)t+1 = bn(γTf) + ε(n)t+1</td><td colspan="4">Unrestricted, rx(n)t+1 = βnft + ε(n)t+1</td></tr><tr><td>n</td><td>bn</td><td>Large T</td><td>Small T</td><td>R2</td><td>Small T</td><td>R2</td><td>EH</td><td>Level R2</td><td>χ2(5)</td></tr><tr><td>2</td><td>0.47</td><td>(0.03)</td><td>(0.02)</td><td>0.31</td><td>[0.18, 0.52]</td><td>0.32</td><td>[0, 0.17]</td><td>0.36</td><td>121.8</td></tr><tr><td>3</td><td>0.87</td><td>(0.02)</td><td>(0.02)</td><td>0.34</td><td>[0.21, 0.54]</td><td>0.34</td><td>[0, 0.17]</td><td>0.36</td><td>113.8</td></tr><tr><td>4</td><td>1.24</td><td>(0.01)</td><td>(0.02)</td><td>0.37</td><td>[0.24, 0.57]</td><td>0.37</td><td>[0, 0.17]</td><td>0.39</td><td>115.7</td></tr><tr><td>5</td><td>1.43</td><td>(0.04)</td><td>(0.03)</td><td>0.34</td><td>[0.21, 0.55]</td><td>0.35</td><td>[0, 0.17]</td><td>0.36</td><td>88.2</td></tr></table>

Notes: The 10-percent, 5-percent and 1-percent critical values for a  $\chi^2(5)$  are 9.2, 11.1, and 15.1 respectively. All  $p$ -values are less than 0.005. Standard errors in parentheses "()", 95-percent confidence intervals for  $R^2$  in square brackets "[ ]". Monthly observations of annual returns, 1964–2003.

# C. Statistics and Other Worries

Tests for joint significance of the right-hand variables are tricky with overlapping data and highly cross-correlated and autocorrelated right-hand variables, so we investigate a number of variations in order to have confidence in the results. The bottom line is that the five forward rates are jointly highly significant, and we can reject the expectations hypothesis (no predictability) with a great deal of confidence.

We start with the Hansen-Hodrick correction, which is the standard way to handle forecasting regressions with overlapping data. (See the Appendix for formulas.) The resulting standard errors in Table 1A ("HH, 12 lags") are reasonable, but this method produces a  $\chi^2(5)$  statistic for joint parameter significance of 811, far greater than even the 1-percent critical value of 15. This value is suspiciously large. The Hansen-Hodrick formula does not necessarily produce a positive definite matrix in sample; while this one is positive definite, the  $811\chi^2$  statistic suggests a near-singularity. A  $\chi^2$  statistic calcu lated using only the diagonal elements of the parameter covariance matrix (the sum of squared individual t-statistics) is only 113. The  $811\chi^2$  statistic thus reflects linear combinations of the parameters that are apparently—but suspiciously—well measured.

The "NW, 18 lags" row of Table 1A uses the Newey-West correction with 18 lags instead of the Hansen-Hodrick correction. This covariance matrix is positive definite in any sample. It underweights higher covariances, so we use 18 lags to give it a greater chance to correct for the MA(12) structure induced by overlap. The individual standard errors in Table 1A are barely affected by this change, but the  $\chi^2$  statistic drops from 811 to 105, reflecting a more sensible behavior of the off-diagonal elements. The figure 105 is still a long way above the 1-percent critical value of 15, so we still decisively reject the expectations hypothesis. The individual (unrestricted) bond regressions of Table 1B also use the NW, 18 correction, and reject zero coefficients with  $\chi^2$  values near 100.

With this experience in mind, the following tables all report HH, 12 lag standard errors, but use the NW, 18 lag calculation for joint test statistics.

Both Hansen-Hodrick and Newey-West formulas correct "nonparametrically" for arbitrary error correlation and conditional heteroskedasticity. If one knows the pattern of correlation and heteroskedasticity, formulas that impose this knowledge can work better in small samples. In the row labeled "Simplified HH," we ignore conditional heteroskedasticity, and we impose the idea that error correlation is due only to overlapping observations of homoskedastic forecast errors. This change raises the standard errors by about one-third, and lowers the  $\chi^2$  statistic to 42, which is nonetheless still far above the 1-percent critical value.

As a final way to compute asymptotic distributions, we compute the parameter covariance matrix using regressions with nonoverlapping data. There are 12 ways to do this—January to January, February to February, and so forth—so we average the parameter covariance matrix over these 12 possibilities. We still correct for heteroskedasticity. This covariance matrix is larger than the true covariance matrix, since by ignoring the intermediate though overlapping data we are throwing out information. Thus, we see larger standard errors as expected. The  $\chi^2$  statistic is 23, still far above the 1-percent level. Since we soundly reject using a too-large covariance matrix, we certainly reject using the correct one.

The small-sample performance of test statistics is always a worry in forecasting regressions with overlapping data and highly serially correlated right-hand variables (e.g., Geert Bekaert et al., 1997), so we compute three small-sample distributions for our test statistics. First, we run an unrestricted 12 monthly lag vector autoregression of all 5 yields, and bootstrap the residuals. This gives the "12 Lag VAR" results in Table 1, and the "Small T" results in the other tables. Second, to address unit and near-unit root problems we run a 12 lag monthly VAR that imposes a single unit root (one common trend) and thus four cointegrating vectors. Third, to test the expectations hypothesis ("EH" and "Exp. Hypo." in the tables), we run an unrestricted 12 monthly lag autoregression of the one-year yield, bootstrap the residuals, and calculate other yields according to the expectations hypothesis as expected values of future one-year yields. (See the Appendix for details.)

The small-sample statistics based on the 12 lag yield VAR and the cointegrated VAR are almost identical. Both statistics give small-sample standard errors about one-third larger than the asymptotic standard errors. We compute "small sample" joint Wald tests by using the covariance matrix of parameter estimates across the 50,000 simulations to evaluate the size of the sample estimates. Both calculations give  $\chi^2$  statistics of roughly 40, still convincingly rejecting the expectations hypothesis. The simulation under the null of the expectations hypothesis generates a conventional small-sample distribution for the  $\chi^2$  test statistics. Under this distribution, the 105 value of the NW, 18 lags  $\chi^2$  statistic occurs so infrequently that we still reject at the 0-percent level. Statistics for unrestricted individual-bond regressions (1) are quite similar.

One might worry that the large  $R^2$  come from the large number of right-hand variables. The conventional adjusted  $\bar{R}^2$  is nearly identical, but that adjustment presumes i.i.d. data, an assumption that is not valid in this case. The point of adjusted  $\bar{R}^2$  is to see whether the forecastability is spurious, and the  $\chi^2$  is the correct test that the coefficients are jointly zero. To see if the increase in  $R^2$  from simpler regressions to all five forward rates is significant, we perform  $\chi^2$  tests of parameter restrictions in Table 4 below.

To assess sampling error and overfitting bias in  $R^2$  directly (sample  $R^2$  is of course a biased estimate of population  $R^2$ ), Table 1 presents small-sample 95-percent confidence intervals for the unadjusted  $R^2$ . Our 0.32-0.37 unrestricted  $R^2$  in Table 1B lie well above the 0.17 upper end of the 95-percent  $R^2$  confidence interval calculated under the expectations hypothesis.

One might worry about logs versus levels, that actual excess returns are not forecastable, but the regressions in Table 1 reflect  $1 / 2\sigma^2$  terms and conditional heteroskedasticity. We

TABLE 2—FAMA-BLISS EXCESS RETURN REGRESSIONS

<table><tr><td>Maturity n</td><td>β</td><td>Small T</td><td>R2</td><td>X2(1)</td><td>p-val</td><td>EH p-val</td></tr><tr><td>2</td><td>0.99</td><td>(0.33)</td><td>0.16</td><td>18.4</td><td>&lt;0.00&gt;</td><td>&lt;0.01&gt;</td></tr><tr><td>3</td><td>1.35</td><td>(0.41)</td><td>0.17</td><td>19.2</td><td>&lt;0.00&gt;</td><td>&lt;0.01&gt;</td></tr><tr><td>4</td><td>1.61</td><td>(0.48)</td><td>0.18</td><td>16.4</td><td>&lt;0.00&gt;</td><td>&lt;0.01&gt;</td></tr><tr><td>5</td><td>1.27</td><td>(0.64)</td><td>0.09</td><td>5.7</td><td>&lt;0.02&gt;</td><td>&lt;0.13&gt;</td></tr></table>

Notes: The regressions are  $r_{t+1}^{(n)} = \alpha + \beta (f_t^{(n)} - y_t^{(1)}) + \varepsilon_{t+1}^{(n)}$ . Standard errors are in parentheses "()", probability values in angled brackets "{ }". The 5-percent and 1-percent critical values for a  $\chi^2(1)$  are 3.8 and 6.6.

repeat the regressions using actual excess returns,  $e^{r_{t+1}^{(n)}} - e^{y_t^{(1)}}$  on the left-hand side. The coefficients are nearly identical. The "Level  $R^2$ " column in Table 1B reports the  $R^2$  from these regressions, and they are slightly higher than the  $R^2$  for the regression in logs.

# D. Fama-Bliss Regressions

Fama and Bliss (1987) regressed each excess return against the same maturity forward spread and provided classic evidence against the expectations hypothesis in long-term bonds. Forecasts based on yield spreads such as Campbell and Shiller (1991) behave similarly. Table 2 updates Fama and Bliss's regressions to include more recent data. The slope coefficients are all within one standard error of 1.0. Expected excess returns move essentially one-for-one forward spreads. Fama and Bliss's regressions have held up well since publication, unlike many other anomalies.

In many respects the multiple regressions and the single-factor model in Table 1 provide stronger evidence against the expectations hypothesis than do the updated Fama-Bliss regressions in Table 2. Table 1 shows stronger  $\chi^2$  rejections for all maturities, and more than double Fama and Bliss's  $R^2$ . The Appendix shows that the return-forecasting factor drives out Fama-Bliss spreads in multiple regressions. Of course, the multiple regressions also suggest the attractive idea that a single linear combination of forward rates forecasts returns of all maturities, where Fama and Bliss, and Campbell and Shiller, relate each bond's expected return to a different spread.

# E. Forecasting Stock Returns

We can view a stock as a long-term bond plus cash-flow risk, so any variable that forecasts bond returns should also forecast stock returns, unless a time-varying cash-flow risk premium happens exactly to oppose the time-varying interest rate risk premium. The slope of the term structure also forecasts stock returns, as emphasized by Fama and French (1989), and this fact is important confirmation that the bond return forecast corresponds to a risk premium and not to a bond-market fad or measurement error in bond prices.

The first row of Table 3 forecasts stock returns with the bond return forecasting factor  $\gamma^{\top}\mathbf{f}$ . The coefficient is 1.73, and statistically significant. The five-year bond in Table 1 has a coefficient of 1.43 on the return-forecasting factor, so the stock return corresponds to a somewhat longer duration bond, as one would expect. The  $0.07R^{2}$  is less than for bond returns, but we expect a lower  $R^{2}$  since stock returns are subject to cash flow shocks as well as discount rate shocks.

Regressions 2 to 4 remind us how the dividend yield and term spread forecast stock returns in this sample. The dividend yield forecasts with a 5-percent  $R^2$ . The coefficient is economically large: a one-percentage-point higher dividend yield results in a 3.3-percentage-point higher return. The  $R^2$  for the term spread in the third regression is only 2 percent. The fourth regression suggests that the term spread and dividend yield predict different components of returns, since the coefficients are unchanged in multiple regressions and the  $R^2$  increases. Neither d/p nor the term spread is statistically significant in

TABLE 3-FORECASTS OF EXCESS STOCK RETURNS

<table><tr><td colspan="2">Right-hand variables</td><td>γTf</td><td>(t-stat)</td><td>d/p</td><td>(t-stat)</td><td>y(5) - y(1)</td><td>(t-stat)</td><td>R2</td></tr><tr><td>1</td><td>γTf</td><td>1.73</td><td>(2.20)</td><td></td><td></td><td></td><td></td><td>0.07</td></tr><tr><td>2</td><td>D/p</td><td></td><td></td><td>3.30</td><td>(1.68)</td><td></td><td></td><td>0.05</td></tr><tr><td>3</td><td>Term spread</td><td></td><td></td><td></td><td></td><td>2.84</td><td>(1.14)</td><td>0.02</td></tr><tr><td>4</td><td>D/p and term</td><td></td><td></td><td>3.56</td><td>(1.80)</td><td>3.29</td><td>(1.48)</td><td>0.08</td></tr><tr><td>5</td><td>γTf and term</td><td>1.87</td><td>(2.38)</td><td></td><td></td><td>-0.58</td><td>(-0.20)</td><td>0.07</td></tr><tr><td>6</td><td>γTf and d/p</td><td>1.49</td><td>(2.17)</td><td>2.64</td><td>(1.39)</td><td></td><td></td><td>0.10</td></tr><tr><td>7</td><td>All f</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.10</td></tr><tr><td>8</td><td>Moving average γTf</td><td>2.11</td><td>(3.39)</td><td></td><td></td><td></td><td></td><td>0.12</td></tr><tr><td>9</td><td>MA γTf, term, d/p</td><td>2.23</td><td>(3.86)</td><td>1.95</td><td>(1.02)</td><td>-1.41</td><td>(-0.63)</td><td>0.15</td></tr></table>

Notes: The left-hand variable is the one-year return on the value-weighted NYSE stock return, less the 1-year bond yield. Standard errors use the Hansen-Hodrick correction.

this sample. Studies that use longer samples find significant coefficients.

The fifth and sixth regressions compare  $\pmb{\gamma}^{\top}\mathbf{f}$  with the term spread and  $\mathrm{d / p}$ . The coefficient on  $\pmb{\gamma}^{\top}\mathbf{f}$  and its significance are hardly affected in these multiple regressions. The return-forecasting factor drives the term premium out completely.

In the seventh row, we consider an unrestricted regression of stock excess returns on all forward rates. Of course, this estimate is noisy, since stock returns are more volatile than bond returns. All forward rates together produce an  $R^2$  of 10 percent, only slightly more than the  $\gamma^\top \mathbf{f}R^2$  of 7 percent. The stock return forecasting coefficients recover a similar tent shape pattern (not shown). We discuss the eighth and ninth rows below.

# II. Factor Models

# A. Yield Curve Factors

Term structure models in finance specify a small number of factors that drive movements in all yields. Most such decompositions find "level," "slope," and "curvature" factors that move the yield curve in corresponding shapes. Naturally, we want to connect the returnforecasting factor to this pervasive representation of the yield curve.

Since  $\pmb{\gamma}$  is a symmetric function of maturity, it has nothing to do with pure slope movements; linearly rising and declining forward curves and yield curves give rise to the same expected returns. (A linear yield curve implies a linear forward curve.) Since  $\pmb{\gamma}$  is tent-shaped, it is tempting to conclude it represents a curvature factor, and thus that the curvature factor forecasts returns. This temptation is misleading, because  $\pmb{\gamma}$  is a function of forward rates, not of yields. As we will see,  $\pmb{\gamma}^{\top}\mathbf{f}$  is not fully captured by any of the conventional yield-curve factors. It reflects a fourto five-year yield spread that is ignored by factor models.

Factor Loadings and Variance.-To connect the return-forecasting factor to yield curve models, the top-left panel of Figure 2 expresses the return-forecasting factor as a function of yields. Forward rates and yields span the same space, so we can just as easily express the forecasting factor as a function of yields,  $\mathbf{\nabla}^2\mathbf{y}^{*\top}\mathbf{y}_t = \mathbf{\nabla}\mathbf{y}^\top \mathbf{f}_t$  This graph already makes the case that the return-forecasting factor has little to do with typical yield curve factors or spreads. The returnforecasting factor has no obvious slope, and it is curved at the long end of the yield curve, not the short-maturity spreads that constitute the usual curvature factor.

To make an explicit comparison with yield factors, the top-right panel of Figure 2 plots the

2 The yield coefficients  $\pmb{\gamma}^{*}$  are given from the forward rate coefficients  $\pmb{\gamma}$  by  $\pmb{\gamma}^{*\top}\mathbf{y} = (\gamma_{1} - \gamma_{2})\mathbf{y}^{(1)} + 2(\gamma_{2} - \gamma_{3})\mathbf{y}^{(2)} + 3(\gamma_{3} - \gamma_{4})\mathbf{y}^{(3)} + 4(\gamma_{4} - \gamma_{5})\mathbf{y} + 5\gamma_{5}\mathbf{y}^{(5)}$ . This formula explains the big swing on the right side of Figure 2, panel A. The tent-shaped  $\pmb{\gamma}$  are multiplied by maturity, and the  $\pmb{\gamma}^{*}$  are based on differences of the  $\pmb{\gamma}$ .

TABLE 4-EXCESS RETURN FORECASTS USING YIELD FACTORS AND INDIVIDUAL YIELDS

<table><tr><td rowspan="2">Right-hand variables</td><td rowspan="2">R2</td><td colspan="2">NW, 18</td><td colspan="2">Simple S</td><td colspan="2">Small T</td><td rowspan="2">5 percent crit. value</td></tr><tr><td>x2</td><td>p-value</td><td>x2</td><td>p-value</td><td>x2</td><td>p-value</td></tr><tr><td>Slope</td><td>0.22</td><td>60.6</td><td>&lt;0.00&gt;</td><td>22.6</td><td>&lt;0.00&gt;</td><td>24.9</td><td>&lt;0.00&gt;</td><td>9.5</td></tr><tr><td>Level, slope</td><td>0.24</td><td>37.0</td><td>&lt;0.00&gt;</td><td>20.5</td><td>&lt;0.00&gt;</td><td>18.6</td><td>&lt;0.00&gt;</td><td>7.8</td></tr><tr><td>Level, slope, curve</td><td>0.26</td><td>31.9</td><td>&lt;0.00&gt;</td><td>17.3</td><td>&lt;0.00&gt;</td><td>16.7</td><td>&lt;0.00&gt;</td><td>6.0</td></tr><tr><td>y(5) - y(1)</td><td>0.15</td><td>85.5</td><td>&lt;0.00&gt;</td><td>30.2</td><td>&lt;0.00&gt;</td><td>33.2</td><td>&lt;0.00&gt;</td><td>9.5</td></tr><tr><td>y(1), y(5)</td><td>0.22</td><td>45.7</td><td>&lt;0.00&gt;</td><td>24.6</td><td>&lt;0.00&gt;</td><td>22.2</td><td>&lt;0.00&gt;</td><td>7.8</td></tr><tr><td>y(1), y(4), y(5)</td><td>0.33</td><td>9.1</td><td>&lt;0.01&gt;</td><td>4.6</td><td>&lt;0.10&gt;</td><td>4.9</td><td>&lt;0.09&gt;</td><td>6.0</td></tr></table>

Notes: The  $\chi^2$  test is  $c = 0$  in regressions  $\overline{rx}_{t + 1} = a + bx_t + cz_t + \bar{\varepsilon}_{t + 1}$  where  $x_{t}$  are the indicated right-hand variables and  $z_{t}$  are yields such that  $\{x_{t},z_{t}\}$  span all five yields.

loadings of the first three principal components (or factors) of yields. Each line in this graph represents how yields of various maturities change when a factor moves, and also how to construct a factor from yields. For example, when the "level" factor moves, all yields go up about 0.5 percentage points, and in turn the level factor can be recovered from a combination that is almost a sum of the yields. (We construct factors from an eigenvalue decomposition of the yield covariance matrix. See the Appendix for details.) The slope factor rises monotonically through all maturities, and the curvature factor is curved at the short end of the yield curve. The return-forecasting factor in the top-left panel is clearly not related to any of the first three principal components.

The level, slope, curvature, and two remaining factors explain in turn 98.6, 1.4, 0.03, 0.02, and 0.01 percent of the variance of yields. As usual, the first few factors describe the overwhelming majority of yield variation. However, these factors explain in turn quite different fractions, 9.1, 58.7, 7.6, 24.3, and 0.3 percent of the variance of  $\boldsymbol{\gamma}^{\top}\mathbf{f}$ . The figure 58.7 means that the slope factor explains a large fraction of  $\boldsymbol{\gamma}^{\top}\mathbf{f}$  variance. The return-forecasting factor  $\boldsymbol{\gamma}^{\top}\mathbf{f}$  is correlated with the slope factor, which is why the slope factor forecasts bond returns in single regressions. However, 24.3 means that the fourth factor, which loads heavily on the four-to five-year yield spread and is essentially unimportant for explaining the variation of yields, turns out to be very important for explaining expected returns.

Forecasting with Factors and Related Tests. Table 4 asks the central question: how well can we forecast bond excess returns using yield curve factors in place of  $\boldsymbol{\gamma}^{\top}\mathbf{f}$ ? The level and slope factor together achieve a 22-percent  $R^2$ . Including curvature brings the  $R^2$  up to 26 percent. This is still substantially below the 35-percent  $R^2$  achieved by  $\boldsymbol{\gamma}^{\top}\mathbf{f}$ , i.e., achieved by including the last two other principal components.

Is the increase in  $R^2$  statistically significant? We test this and related hypotheses in Table 4. We start with the slope factor alone. We run the restricted regression

$$
\begin{array}{l} \bar {r x} _ {t + 1} = a + \mathbf {b} \times \operatorname {s l o p e} _ {t} + \varepsilon_ {t + 1} \\ = a + \mathbf {b} \times \left(\mathbf {q} _ {2} ^ {\top} \mathbf {y} _ {t}\right) + \varepsilon_ {t + 1} \\ \end{array}
$$ where  $\mathbf{q}_2$  generates the slope factor from yields. We want to test whether the restricted coefficients  $a$ ,  $(\mathbf{b} \times \mathbf{q}_2)$  are jointly equal to the unrestricted coefficients  $\gamma^*$ . To do this, we add 3 yields to the right-hand side, so that the regression is again unconstrained, and exactly equal to  $\boldsymbol{\gamma}^\top \mathbf{f}_t$ ,


$$

\begin{array}{l} \overline {{r x}} _ {t + 1} = a + \mathbf {b} \times \operatorname {s l o p e} _ {t} + c _ {2} y _ {t} ^ {(2)} + c _ {3} y _ {t} ^ {(3)} \tag {4} \\ + c _ {4} y _ {t} ^ {(4)} + c _ {5} y _ {t} ^ {(5)} + \bar {\varepsilon} _ {t + 1}. \\ \end{array}

$$

Then, we test whether  $c_{2}$  through  $c_{5}$  are jointly equal to zero.3 (So long as the right-hand variables span all yields, the results are the same no matter which extra yields one includes.)


The hypothesis that slope, or any combination of level, slope, and curvature, are enough to forecast excess returns is decisively rejected. For all three computations of the parameter covariance matrix, the  $\chi^2$  values are well above the 5-percent critical values and the p-values are well below 1 percent. The difference between 22-percent and 35-percent  $R^2$  is statistically significant.

To help understand the rejection, the bottom-left panel in Figure 2 plots the restricted and unrestricted coefficients. For example, the coefficient line labeled "level & slope" represents coefficients on yields implied by the restriction that only the level and slope factors forecast returns. The figure shows that the restricted coefficients are well outside individual confidence intervals, especially for four- and five-year maturity. The rejection is therefore straightforward and does not rely on mysterious off-diagonal elements of the covariance matrix or linear combinations of parameters.

In sum, although level, slope, and curvature together explain 99.97 percent of the variance of yields, we still decisively reject the hypothesis that these factors alone are sufficient to forecast excess returns. The slope and curvature factors, curved at the short end, do a poor job of matching the unrestricted regression which is curved at the long end. The tiny four- to five-year yield spread is important for forecasting all maturity bond returns.

Simple Spreads.—Many forecasting exercises use simple spreads rather than the factors common in the affine model literature. To see if the tent-shaped factor really has more information than simple yield spreads, we investigate a number of restrictions on yields and yield spreads.

3 In GMM language, the unrestricted moment conditions are  $E[\mathbf{y}_t\bar{\varepsilon}_{t + 1}]$ . The restrictions set linear combinations of these moments to zero,  $E[\bar{\varepsilon}_{t + 1}]$  and  $\mathbf{q}_2^\top E[\mathbf{y}_t\bar{\varepsilon}_{t + 1}]$  in this case. The Wald test on  $c_{2}$  through  $c_{5}$  in (4) is identical to the overidentifying restrictions test that the remaining moments are zero.

Many people summarize the information in Fama and Bliss (1987) and Campbell and Shiller (1991) by a simple statement that yield spreads predict bond returns. The  $y^{(5)} - y^{(1)}$  row of Table 4 shows that this specification gives the  $0.15R^2$  value typical of Fama-Bliss or Campbell-Shiller regressions. However, the restriction that this model carries all the information of the return-forecasting factor is decisively rejected.

By letting the one- and five-year yield enter separately in the next row of Table 4, we allow a "level" effect as well as the 5-1 spread  $(y^{(1)}$  and  $y^{(5)}$  is the same as  $y^{(1)}$  and  $[y^{(5)} - y^{(1)}]$ ). This specification does a little better, raising the  $R^2$  value to 0.22 and cutting the  $\chi^2$  statistics down, but it is still soundly rejected. The one- and five-year yield carry about the same information as the level and slope factors above.

To be more successful, we need to add yields. The most successful three-yield combination is the one-, four-, and five-year yields as shown in the last row of Table 4. This combination gives an  $R^2$  of 33 percent, and it is not rejected with two of the three parameter covariance matrix calculations. It produces the right pattern of one-, four, and five-year yields in graphs like the bottom-left panel of Figure 2.

Fewer Maturities.-Is the tent-shape pattern robust to the number of included yields or forward rates? After all, the right-hand variables in the forecasting regressions are highly correlated, so the pattern we find in multiple regression coefficients may be sensitive to the precise set of variables we include. The bottom-right panel of Figure 2 is comforting in this respect: as one adds successive forward rates to the right-hand side, one slowly traces out the tent-shaped pattern.

Implications.-If yields or forward rates followed an exact factor structure, then all state variables including  $\pmb{\gamma}^{\top}\mathbf{f}$  would be functions of the factors. However, since yields do not follow an exact factor structure, an important state variable like  $\pmb{\gamma}^{\top}\mathbf{f}$  can be hidden in the small factors that are often dismissed as minor specification errors. This observation suggests a reason why the return-forecast factor  $\pmb{\gamma}^{\top}\mathbf{f}$  has not been noticed before. Most studies first reduce yield data to a small number of factors and then look at expected returns. To see expected returns, it's important first to look at expected returns and then investigate reduced factor structures. A reduced-factor representation for yields that is to capture the expected return facts in this data must include the returnforecasting factor  $\gamma^{\top}\mathbf{f}$  as well as yield curve factors such as level, slope, and curvature, even though inclusion of the former will do almost nothing to fit yields, i.e., to reduce pricing errors.


# B. Affine Models

It has seemed trouble enough to modify term structure models to incorporate Fama-Bliss or Campbell-Shiller predictability (Gregory Duffee, 2002; Qiang Dai and Kenneth Singleton, 2002). Is it that much harder to incorporate the much greater predictability we find into such models? The answer is no. In fact, it is trivial: one can construct market prices of risk that generate exactly our return regressions in an affine model. This discussion also answers the question, "Is there any economic model that generates the observed pattern of bond return forecastability?"

Our task is to construct a time series process for a nominal discount factor (pricing kernel, transformation to risk-neutral measure, marginal utility growth, etc.)  $M_{t + 1}$  that generates bond prices with the required characteristics via  $P_{t}^{(n)} = E_{t}(M_{t + 1}M_{t + 2}\dots M_{t + n})$ . With  $M_{t + 1} = \beta u'(c_{t + 1}) / u'(c_t)\times 1 / \pi_{t + 1}$ , we can as easily express the primitive assumptions with preferences and a time-series process for consumption growth and inflation. Since we do not compare bond prices to consumption and inflation data, however, we follow the affine model tradition and specify the time-series process for  $M_{t + 1}$  directly.

We want to end up with bond prices that satisfy the return-forecasting regressions

$$

(5) \quad \mathbf {r} \mathbf {x} _ {t + 1} = \boldsymbol {\beta} \mathbf {f} _ {t} + \boldsymbol {\varepsilon} _ {t + 1}; \operatorname {c o v} \left(\boldsymbol {\varepsilon} _ {t + 1} \boldsymbol {\varepsilon} _ {t} ^ {\top}\right) = \boldsymbol {\Sigma}.

$$

We work backwards from this end. Consider a discount factor of the form

$$

M _ {t + 1} = \exp \left(- y _ {t} ^ {(1)} - \frac {1}{2} \boldsymbol {\lambda} _ {t} ^ {\top} \boldsymbol {\Sigma} \boldsymbol {\lambda} _ {t} - \boldsymbol {\lambda} _ {t} ^ {\top} \boldsymbol {\varepsilon} _ {t + 1}\right) \tag {6}

$$ with normally distributed shocks  $\varepsilon_{t + 1}$ . (We're constructing a model, so we can specify the distribution.) From  $1 = E_{t}(M_{t + 1}R_{t + 1})$ , one-period log excess returns must obey

(7)

$$
E _ {t} \left(r x _ {t + 1} ^ {(n)}\right) + \frac {1}{2} \sigma_ {t} ^ {2} \left(r x _ {t + 1} ^ {(n)}\right) = \operatorname {c o v} _ {t} \left(r x _ {t + 1} ^ {(n)}, \boldsymbol {\varepsilon} _ {t + 1} ^ {\top}\right) \boldsymbol {\lambda} _ {t}.
$$

The time-varying discount-factor coefficients  $\lambda_{t}$  are thus also the "market prices of risk" that determine how much a unit of covariance translates into an expected return premium. Now, in the notation of regression (5), condition (7) is

$$
\boldsymbol {\beta} \mathbf {f} _ {t} + \frac {1}{2} \operatorname {d i a g} (\boldsymbol {\Sigma}) = \boldsymbol {\Sigma} \boldsymbol {\lambda} _ {t}.
$$

Thus, we can ensure that the model represents the one-period return regression correctly by the form (6) with the choice

$$
\boldsymbol {\lambda} _ {t} = \boldsymbol {\Sigma} ^ {- 1} \left[ \boldsymbol {\beta} \mathbf {f} _ {t} + \frac {1}{2} \operatorname {d i a g} (\boldsymbol {\Sigma}) \right]. \tag {8}
$$

(This is the log version of Lars Hansen and Ravi Jagannathan's 1991 discount factor construction.)

The discount factor (6) is the basis of an affine term structure model, and that model generates exactly the return regression (5). (The model is a special case of the Andrew Ang and Monika Piazzesi 2003 discrete time exponential-Gaussian model.) Here is what that statement means. Write the VAR for prices corresponding to the return regression (5) as

(9)

$$
\mathbf {p} _ {t + 1} = \boldsymbol {\mu} + \phi \mathbf {p} _ {t} + \mathbf {v} _ {t + 1}; \operatorname {c o v} \left(\mathbf {v} _ {t + 1}, \mathbf {v} _ {t} ^ {\top}\right) = \mathbf {V}.
$$

Since returns, yields, and forward rates are all linear functions of each other, this log-price VAR carries all the information of the return regressions (5). Conversely, one can recover the first four rows of  $\Phi$  from the return regressions, since  $rx_{t + 1}^{(n)} = p_{t + 1}^{(n - 1)} - p_t^{(n)} + p_t^{(1)}$ . The return shocks  $\varepsilon_{t + 1}$  are exactly the first four price shocks  $\mathbf{v}_{t + 1}$ , and the return covariance matrix  $\Sigma$  is the first four rows and columns of the price shock covariance matrix  $\mathbf{V}$ .

Now, forget that  $\mathbf{p}_t$  in (9) represents prices. Treat (9) as a time-series process for a general vector of unobserved state variables, with normally distributed shocks. Suppose that the discount factor is related to the state variables by (6) and (8). (To write this out, you include the linear transformation from prices  $\mathbf{p}_t$  to  $\mathbf{f}_t$  and  $y_t^{(1)}$  on the right-hand sides of (6) and (8), so that (6) and (8) are specified in terms of the state variables  $\mathbf{p}_t$ .)

Now we have a time-series process for the discount factor. We want to know what prices are generated by this model. Is  $\log E_t(M_{t+1}M_{t+2}\dots M_{t+n})$  equal to the state variable  $p_t^{(n)}$ ? The answer is yes. The prices that come out of the model are precisely the same as the state variables that go in the model. In this way, we have, in fact, constructed an affine (prices are linear functions of state variables) model that generates the return regression.

The logic of the proof of this statement is transparent. We have constructed the discount factor (6) to capture exactly the one-period yield  $y_{t}^{(1)}$  and one-period expected excess returns  $E_{t}(rx_{t + 1}^{(n)})$ . But any price can always be trivially expressed as its payoff discounted by its expected return, so if a model correctly captures the latter it must correctly capture prices. (Alas, the algebra required to show this simple point takes some space, so we relegate it to the Appendix. The Appendix also discusses the affine model in greater detail.)

Affine models seem puzzling to newcomers. Why start with a price VAR and go through all this bother to end up in the same place? The point of an affine model is to exhibit a stochastic discount factor (or pricing kernel) consistent with the bond price dynamics in (9). We can use this model to predict prices for bonds of other maturities or to predict the prices of term structure derivatives in a way that leaves no arbitrage relative to the included bonds. The affine model by itself does not restrict the time-series process for yields. If one desires further restrictions on the time-series process for the data, such as a  $k$ -factor structure, one can simply add structure to the dynamics (9).

The discount factor also exhibits a possible time series process for marginal utility growth. It shows that there is an economic model that generates our bond return forecastability. However, while it is tempting to look at the time series properties of the discount factor  $M_{t + 1}$ and try to relate them to aggregate consumption, inflation, and macroeconomic events, this is not a simple inquiry, as examination of Hansen-Jagannathan (1991) discount factors for stocks does not quickly lead one to the correct economic model. The result is alias a candidate marginal utility process, not the marginal utility growth process.

This example does no more than advertised: it is a discrete-time affine term structure model that reproduces the pattern of bond return predictability we find in the data at an annual horizon. It is not necessarily a good general-purpose term structure model. We have not specified how to fill in higher frequencies, what  $\pmb{\eta}$ ,  $\pmb{\psi}$  in  $\mathbf{p}_{t + 1 / 12} = \pmb{\eta} + \pmb{\psi}\mathbf{p}_t + \mathbf{v}_{t + 1 / 12}$  imply (9) (i.e.,  $\pmb{\psi}^{12} = \pmb{\phi}$ ), or, better, what continuous-time process  $d\mathbf{p}_t = \pmb {\mu}(\cdot)dt + \pmb {\sigma}(\cdot)\mathbf{d}\mathbf{z}$  does so, and correctly fits the data, including conditional heteroskedasticity and the non-Markovian structure we find below. We have not specified what the monthly or instantaneous market prices of risk and discount factor look like that generate (6) at an annual horizon. (Pierre Collin-Dufresne and Robert Goldstein 2003 write a term structure model that incorporates our forecasts and addresses some of these issues.)

# III. Lags and Measurement Error

# A. Single-Lag Regressions

Are lagged forward rates useful for forecasting bond excess returns? Measurement error is the first reason to investigate this question. A spuriously high price at  $t$  will erroneously indicate that high prices at  $t$  forecast poor returns from  $t$  to  $t + 1$ . If the measurement error is serially uncorrelated, however, the forecast using a one-month lag of the forward rates is unaffected by measurement error, since the price at time  $t$  is no longer common to leftand right-hand sides of the regression. Therefore, we run regressions of average (across maturity) returns  $\overline{r x}_{t + 1}$  on forward rates  $f_{t - i / 12}$  that are lagged by  $i$  months.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/967e450f31d5798768d87576362d51508d5451cf13b13048443c09306385bedf.jpg)

FIGURE 3. COEFFICIENTS IN REGRESSIONS OF AVERAGE (ACROSS MATURITY) EXCESS RETURNS ON LAGGED FORWARD RATES,  $\overline{r x}_{t + 1} = \pmb{\gamma}^{\top}\mathbf{f}_{t - i / 12} + \varepsilon_{t + 1}$

Figure 3 plots the coefficients. The basic tent shape is unaltered at the first and second lags. As we move the right-hand variables backward through time, the shape moves slightly to the right, and this pattern continues through the first year of additional lags (not shown). The reason for this shift is that the return-forecasting factor  $\gamma^{\top}\mathbf{f}$  is not Markovian; if we predict  $\gamma^{\top}\mathbf{f}$  from  $\mathbf{f}_{t - i / 12}$ , the coefficients do not follow the tent-shaped pattern. Thus, as we forecast returns with longer lags of forward rates, the coefficients mix together the tent-shaped pattern by which  $\mathbf{f}_t$  forecasts returns  $\overline{rx}_{t + 1}$  with the pattern by which  $\mathbf{f}_{t - i / 12}$  predicts  $\gamma^{\top}\mathbf{f}_t$ . The  $R^2$  decline slowly with horizon, from 35 percent at lag 0 to 35, 32, and 31 percent at lags 1, 2, and 3, and the coefficients are highly jointly significant. The same pattern holds in forecasts of individual bond returns  $rx_{t + 1}^{(n)}$  on lagged forward rates (not shown): the single-factor model is as evident using lagged forward rates as it is using the time- $t$  forward rates.

We conclude that serially uncorrelated measurement errors, or even errors that are somewhat correlated over time, are not the reason for the forecastability we see, including the large  $R^2$ , the single-factor structure, and the tent-shaped pattern of coefficients. The most natural interpretation of these regressions is instead that  $\boldsymbol{\gamma}^\top \mathbf{f}$  reflects a slow-moving underlying risk pre mium, one almost as well revealed by  $\mathbf{f}_{t - i / 12}$  as it is by  $\mathbf{f}_t$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/62e0d0a7a5dfe1e5c5c1291890f1c3aa975103ec03b868c59a33531f5bf82cbd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/65467a9755d0020c29eb90203faca9e4128b5ea7a362dbe681568e9df4cf7edb.jpg)

FIGURE 4. COEFFICIENTS IN REGRESSIONS OF BOND EXCESS RETURNS ON FORWARD RATES (TOP) AND YIELDS (BOTTOM) GENERATED BY PURE MEASUREMENT ERROR THAT IS UNCORRELATED OVER TIME.

Measurement error also does not easily produce the tent-shaped return-forecasting factor or a single-factor model; it does not produce regressions in which (say) the five-year yield helps to forecast the two-year bond return. Figure 4 plots the entirely spurious coefficients that result from  $rx_{t + 1}^{(n)} = \mathbf{\beta}_{t + 1}^{(n)}\mathbf{f}_{t} + \varepsilon_{t + 1}^{(n)}$  if excess returns are truly unpredictable, but there is measurement error in prices or forward rates. (See the Appendix for details.) The coefficients are step functions of forward rates, not tents. The coefficients for the  $n$ -period bond excess return simply load on the  $n$ -year yield and the one-year yield. The pattern of coefficients differs completely across maturity rather than displaying a single-factor structure. The only way to generate a single-factor prediction from measurement error is if measurement error at time  $t$  is correlated with measurement error one year later at time  $t + 1$ , and in just the right way across bonds, which seems rather far-fetched.

# B. Multiple-Lag Regressions

Do multiple lags of forward rates help to forecast bond returns? We find that they do, and again with an attractive factor structure. We

TABLE 5-ADDITIONAL LAGS

<table><tr><td colspan="8">A. γ estimates</td></tr><tr><td>Max lag</td><td>const</td><td>y(1)</td><td>f(2)</td><td>f(3)</td><td>f(4)</td><td>f(5)</td><td>R2</td></tr><tr><td>0</td><td>-3.24</td><td>-2.14</td><td>0.81</td><td>3.00</td><td>0.80</td><td>-2.08</td><td>0.35</td></tr><tr><td>1</td><td>-3.22</td><td>-2.44</td><td>1.07</td><td>3.68</td><td>1.18</td><td>-3.11</td><td>0.41</td></tr><tr><td>2</td><td>-3.18</td><td>-2.56</td><td>1.33</td><td>3.47</td><td>1.76</td><td>-3.62</td><td>0.43</td></tr><tr><td>3</td><td>-3.20</td><td>-2.61</td><td>1.43</td><td>3.36</td><td>2.17</td><td>-3.98</td><td>0.44</td></tr></table>

B.  $\alpha$  estimates and  $t$  statistics

<table><tr><td>Max lag</td><td>α0</td><td>α1</td><td>α2</td><td>α3</td><td>α0</td><td>α1</td><td>α2</td><td>α3</td></tr><tr><td>0</td><td>1.00</td><td></td><td></td><td></td><td>(8.44)</td><td></td><td></td><td></td></tr><tr><td>1</td><td>0.50</td><td>0.50</td><td></td><td></td><td>(8.95)</td><td>(6.60)</td><td></td><td></td></tr><tr><td>2</td><td>0.38</td><td>0.35</td><td>0.28</td><td></td><td>(6.81)</td><td>(6.45)</td><td>(4.46)</td><td></td></tr><tr><td>3</td><td>0.31</td><td>0.29</td><td>0.20</td><td>0.21</td><td>(4.82)</td><td>(7.17)</td><td>(4.53)</td><td>(3.07)</td></tr></table>

Notes: The model is  $rx_{t + 1}^{(n)} = \pmb{\gamma}^{\top}[\alpha_0\mathbf{f}_t + \alpha_1\mathbf{f}_{t - (1 / 12)} + \alpha_2\mathbf{f}_{t - (2 / 12)} + \dots +\alpha_k\mathbf{f}_{t - (k / 12)}] + \varepsilon_{t + 1}^{(n)}$ .

started with unrestricted regressions. We found that multiple regression coefficients displayed similar tent shapes across maturity, much like the single-lag regression coefficients of Figure 3, and once again bonds of different maturity had the same pattern of regression coefficients blown up by different amounts. These observations suggest a single-factor structure across time as well as maturity,

$$
\begin{array}{l} r x _ {t + 1} ^ {(n)} = b _ {n} \boldsymbol {\gamma} ^ {\top} \left[ \alpha_ {0} \mathbf {f} _ {t} + \alpha_ {1} \mathbf {f} _ {t - (1 / 1 2)} + \alpha_ {2} \mathbf {f} _ {t - (2 / 1 2)} \right. \\ + \dots + \alpha_ {k} \mathbf {f} _ {t - (k / 1 2)} ] + \varepsilon_ {t + 1} ^ {(n)}. \\ \end{array}
$$

We normalize to  $\Sigma_{j=0}^{k} \alpha_{j} = 1$  so that the units of  $\gamma$  remain unaffected. Since we add only one parameter  $(\alpha_{k})$  per new lag introduced, this specification gives a more believable forecast than an unrestricted regression with many lags. Since the single factor restriction works well across maturities  $n$ , we present only the results for forecasting average returns across maturity, corresponding to Table 1A,

$$
\begin{array}{l} \bar {r x} _ {t + 1} = \boldsymbol {\gamma} ^ {\top} \left[ \alpha_ {0} \mathbf {f} _ {t} + \alpha_ {1} \mathbf {f} _ {t - (1 / 1 2)} + \alpha_ {2} \mathbf {f} _ {t - (2 / 1 2)} \right. \\ \left. + \dots + \alpha_ {k} \mathbf {f} _ {t - (k / 1 2)} \right] + \bar {\varepsilon} _ {t + 1}. \\ \end{array}
$$

We can also write the regression as

$$
\begin{array}{l} \bar {r x} _ {t + 1} = \alpha_ {0} \left(\boldsymbol {\gamma} ^ {\top} \mathbf {f} _ {t}\right) + \alpha_ {1} \left(\boldsymbol {\gamma} ^ {\top} \mathbf {f} _ {t - (1 / 1 2)}\right) \tag {12} \\ + \alpha_ {2} (\boldsymbol {\mathcal {Y}} ^ {\top} \mathbf {f} _ {t - (2 / 1 2)}) + \dots + \alpha_ {k} (\boldsymbol {\mathcal {Y}} ^ {\top} \mathbf {f} _ {t - (k / 1 2)}) + \bar {\varepsilon} _ {t + 1}. \\ \end{array}
$$

We can think of the restricted model as simply adding lags of the return-forecasting factor  $\pmb{\gamma}^{\top}\mathbf{f}_t$

Table 5 presents estimates of this model. The  $R^2$  rise from 35 to 44 percent once we have added 3 additional lags. The  $\gamma$  estimates change little as we add lags. They do shift to the right a bit, as we found for the single lag regressions in Figure 3. The restriction that  $\gamma$  is the same for each lag is obviously not one to be used for extreme numbers of lags, but there is little credible gain to generalizing it for the current purpose.

With two lags, the  $\alpha$  estimate wants to use a moving average of the first and second lag. As we add lags, a natural pattern emerges of essentially geometric decay. The  $\alpha$  and the marginal forecast power of additional lags that they represent are statistically significant out to the fourth additional lag.

The  $\mathbf{b}$  loadings across bonds (not shown) are essentially unchanged as we add lags, and the  $R^2$  of the model that imposes the single-factor structure across maturity are nearly identical to

For a given set of  $\alpha$ , we estimate  $\gamma$  by running regression (11). Then, fixing  $\gamma$ , we estimate the  $\alpha$  by running regression (12). When this procedure has iterated to convergence, we estimate  $\mathbf{b}\mathbf{s}$  from (10). The moment conditions are the orthogonality conditions corresponding to regressions (10)-(12). The parameters enter nonlinearly, so a search or this equivalent iterative procedure are necessary to find the parameters.

the  $R^2$  of unrestricted models, as in Table 1B. Returns on the individual bonds display the single-factor structure with the addition of lagged right-hand variables.

Multiple lags also help when we forecast stock excess returns. As indicated by row 8 in Table 3, the  $R^2$  for stocks rises from 7 percent to 12 percent when we include 3 additional lags. The slope coefficient rises to 2.11, which corresponds well to a bond substantially longer than five years. As shown in the last row of Table 3, the multiple regression with term spreads and  $\mathrm{d} / \mathrm{p}$  is also stronger than its counterpart with no lags.

# C. The Failure of Markovian Models

The importance of extra monthly lags means that a VAR(1) monthly representation, of the type specified by nearly every explicit term structure model, does not capture the patterns we see in annual return forecasts. To see the annual return forecastability, one must either look directly at annual horizons as we do, or one must adopt more complex time-series models with lags.

To quantify this point, we fit an unconstrained monthly yield VAR,  $\mathbf{y}_{t + 1 / 12} = \mathbf{A}\mathbf{y}_t + \varepsilon_{t + 1 / 12}$ , and we find the implied annual VAR representation  $\mathbf{y}_{t + 1} = \mathbf{A}^{12}\mathbf{y}_t + \mathbf{u}_{t + 1}$ . Yields, forward rates, and returns are all linear functions of each other, so we can calculate return forecasts and  $R^2$  directly from this annual VAR representation. Figure 5 presents the annual excess return forecasting coefficients for individual bonds implied by this monthly VAR(1). The coefficients here are nothing at all like the tent shape we find in the direct annual horizon regressions or VAR. They are most reminiscent of the coefficients resulting from pure measurement error in Figure 4: the  $n$ -year yield is the most important forecasting variable for the one-year return on the  $n$ -year bond, and the forward rate coefficients, cumulating these, look like step functions. Most important, these coefficients hide the single-factor structure: no single combination of yields or forward rates summarizes return forecastability of bonds across different maturity. The forecast  $R^2$  are cut to 22-26 percent instead of 32-37 percent-and given the pattern, one would be well justified in dismiss ing the whole thing as measurement error. (The implied forecasts of average [across maturity] returns  $\overline{rx}_{t + 1}$  do reveal the usual shapes, as one might guess by visually averaging the lines in Figure 5, but in much attenuated form, and also with only 24 percent  $R^2$ .) By focusing directly on an annual horizon, our original regressions raise the signal-to-noise ratio and uncover the underlying return forecast. (One can alternatively use more complex models to get the same result. For example, the 12 lag monthly VAR we use for bootstraps does imply the tent-shaped single-factor model and the large forecast  $R^2$ .)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/430e660f4c710a6b6dbf05c70ebe49d99eb6618ab84f6d48de0af5705aba0c52.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/7bd091e8d739a2fa1aeb463f6b43976db21100023688a46085f6d45759f874cf.jpg)

FIGURE 5. REGRESSION COEFFICIENTS OF ONE-YEAR EXCESS RETURNS ON FORWARD RATES (TOP) AND YIELDS (BOTTOM) IMPLIED BY A MONTHLY VAR

This observation suggests a second reason why such an important feature of the yield curve could go unrecognized for so long. Yield curve modelers almost always specify and estimate a high-frequency model, using monthly or finer data, and never include lags. If they look at all at annual horizon return forecasts, they find the implied forecasts from these high-frequency Markovian specifications. But since the lags do matter, these implied annual forecasts miss much predictability and completely miss the one-factor structure.

# D. Summary and Implications

Additional lags matter. But additional lags are awkward bond forecasting variables. Bond prices are time- $t$  expected values of future discount factors, so a full set of time- $t$  bond yields should drive out lagged yields in forecasting regressions:  $E_{t}(x)$  drives out  $E_{t-1/12}(x)$  in forecasting any  $x$ . Bond prices reveal all other important state variables. For this reason, term structure models do not include lags.

The most natural interpretation of all these results is instead that time- $t$  yields (or prices, or forwards) truly are sufficient state variables, but there are small measurement errors that are poorly correlated over time. For example, if a true variable  $x_{t} = \boldsymbol{\gamma}^{\mathrm{T}}\mathbf{f}_{t}$  is an AR(1)  $x_{t} = \rho x_{t - 1} + u_{t}$ , but is measured with error  $\tilde{x}_t = x_t + \nu_t$ ,  $\nu_{t}$  i.i.d., then the standard Kalman filter says that the best guess of the true  $x_{t}$  is a geometrically weighted moving average  $E(x_{t}|\tilde{x}_{t},\tilde{x}_{t - 1},\tilde{x}_{t - 2},\ldots) = \mathtt{b}\Sigma_{j = 0}^{\infty}\phi^{j}\tilde{x}_{t - j}$ . This is the pattern that we find in Table 5.

However, measurement error clearly is not the driving force behind return forecastability or the nature of the return-forecasting factor. The tent-shaped single factor is revealed and the  $R^2$  is still large using single lags of forward rates, which avoid the effects of measurement error. Measurement error produces multifactor models (each return forecast by its own yield), not a single-factor model. We reach the opposite conclusion: measurement error conceals the underlying single-factor model unless one takes steps to mitigate it--for example, looking directly at annual horizons as we do-and even then the measurement error cuts down the true  $R^2$  from over 44 percent to "only" 35 percent.

# IV. History

One wants to see that the regression is robust, that it is driven by clear and repeated stylized facts in the data, and that it is not an artifact of one or two data points. To this end, we examine the historical experience underlying the regressions.

Figure 6 plots the forecast and actual average (across maturity) excess returns, along with the history of yields. The top line averages the

Of course, the true state vector might use more than five yields, so lags enter because they are correlated with omitted yields. This seems to us like a remote possibility for explaining the results.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/1d7b7cd39e209ebe0ee1f9e37a391420dcf62d759cfd97f0ac09a3b38c4466f9.jpg)

FIGURE 6. FORECAST AND ACTUAL AVERAGE (ACROSS MATURITY) EXCESS RETURNS.

Notes: The ex-post return line is shifted to the left one year so that the realization lines up with the forecast. The one-year yield in the bottom set of lines is emphasized. The vertical lines mark dates at which Figure 7 plots forward curves.

Fama-Bliss forecasts from Table 2 across maturity. The second line gives the return-forecasting factor. We present the forecast using three lags,  $E_{t}(\overline{rx}_{t + 1}) = \pmb{\gamma}^{\top}\pmb{\Sigma}_{j = 0}^{3}\alpha_{j}\mathbf{f}_{t - j / 12}$ ; the forecast using no lags is nearly indistinguishable. The ex post return line is shifted to the left one year so that the forecast and its result are plotted at the same time period.

The graph verifies that the forecasting power of  $\pmb{\gamma}^{\top}\mathbf{f}$  and the improved  $R^2$  over the Fama-Bliss and other slope-based regressions are not driven by outliers or suspicious forecasts of one or two unusual data points. The return forecast has a clear business cycle pattern, high in troughs and low at peaks. The results do not depend on full-sample regressions, as the forecast using real-time regressions (from 1964 to  $t$ , not shown) is quite similar.

Comparing the return-forecasting factor and the forward spreads embodied in the Fama-Bliss regressions, we see that they agree in many instances. (Forecasts based on the slope of the term structure or simple yield spreads are quite similar to the Fama-Bliss line.) One pattern is visible near 1976, 1982, 1985, 1994, and 2002; in each case there is an upward sloping yield curve that is not soon followed by rises in yields, giving good returns to long-term bond holders.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/e4f35df0-8658-457f-9faf-0c6a58f71226/676680adfe8661afce68baac67e140e5e75d36d32b85748924d03d99bd5f3fca.jpg)

FIGURE 7. FORWARD RATE CURVE ON SPECIFIC DATES

Note: Upward pointing triangles with solid lines are highreturn forecasts; downward pointing triangles with dashed lines are low-return forecasts.

However, the figure also shows the much better fit of the return-forecasting factor in many episodes, including the late 1960s, the turbulent early 1980s, and the mid-1990s. The return-forecasting factor seems to know better when to get out, when the long-anticipated (by an upward-sloping yield curve) rise in rates will actually come, leading to losses on long-term bonds. This difference is dramatic in 1983, 1994, and 2003.

What information is  $\boldsymbol{\gamma}^{\top}\mathbf{f}$  using to make these forecasts? To answer this question, Figure 7 plots the forward curves at selected peaks (solid) and troughs (dashed) of the returnforecasting factor. These dates are marked by vertical lines in Figure 6. In December 1981, the return-forecasting factor signaled a good excess return on long-term bonds, though the yield curve was nearly flat and the Fama-Bliss regression forecast nothing. Figure 7 shows why: though flat, the forward curve has a nice tent shape, which multiplied by  $\pmb{\gamma}$  gives a strong forecast. As shown in Figure 6, that forecast was correct. By April of 1983, however,  $\boldsymbol{\gamma}^{\top}\mathbf{f}$  forecast essentially no excess return on longterm bonds (Figure 6), despite the strong upward slope, because the forward rate lost its tent shape (Figure 7). The Fama-Bliss and other slope forecasts are optimistic, but the returnforecasting factor proves right, and long-term bonds have worse than negative 5-percent excess return as interest rates rise over the next year.

In August of 1985, the level and slope of the term structure are about the same as they were in April of 1983, and the slope-based forecast is the same, mildly optimistic. But the returnforecasting factor predicts a strong, nearly 10-percent expected excess return, and this return is borne out ex post. What's the difference? April 1983 and August 1985 have the same level and slope, but April 1983 has no clear curve, while August 1985 curves down. Interacted with the tent-shaped  $\gamma$  operator, we get the correct strong, positive, and correct forecast.

The peak and trough of April 1992 and August 1993 provide a similar comparison. In April 1992, the yield curve is upward sloping and has a tent shape, so both the returnforecasting factor and the slope-based forecasts are optimistic. During the subsequent year, yields actually went down, giving good returns to long-term bond holders. By August 1993, the slope is still there but the forward curve has lost its tent shape. The Fama-Bliss and other slope forecasts are still positive, but the returnforecasting factor gives the order to bail out. That order proves correct, as yields do rise sharply in the following year giving terrible returns to long-term bond holders. The same pattern has set up through the recession of 2000, and the slope forecast and  $\pmb{\gamma}^{\top}\mathbf{f}$  disagree once again at the end of the sample.

In sum, the pattern is robust. A forecast that looks at the tent shape, ignoring the slope, has made better forecasts in each of the important historical episodes.

# V. Tests

# A. Testing the Single-Factor Model

The parameters of the unrestricted  $(\mathbf{rx}_{t + 1} = \pmb {\beta}\mathbf{f}_t + \pmb{\varepsilon}_{t + 1})$  return forecasting regressions and those of the restricted single-factor model  $(\mathbf{rx}_{t + 1} = \mathbf{b}(\pmb{\gamma}^{\top}\mathbf{f}_t) + \pmb{\varepsilon}_{t + 1})$  are very close individually (Figure 1), and well inside one-standard error bounds, but are they jointly equal? Does an overall test of the single-factor model reject?

TABLE 6-GMM TESTS OF THE SINGLE-FACTOR MODEL

<table><tr><td rowspan="2">Lag i</td><td rowspan="2">Test</td><td colspan="2">NW, 18</td><td colspan="2">Simple S</td><td colspan="2">No overlap</td><td colspan="2">Small sample</td></tr><tr><td> \chi^2 </td><td>p-value</td><td> \chi^2 </td><td>p-value</td><td> \chi^2 </td><td>p-value</td><td> \chi^2 </td><td>p-value</td></tr><tr><td>0</td><td> J_T </td><td>1269</td><td>&lt;0.00&gt;</td><td>110</td><td>&lt;0.00&gt;</td><td>87</td><td>&lt;0.00&gt;</td><td>174</td><td>&lt;0.00&gt;</td></tr><tr><td>0</td><td>Wald</td><td>3460</td><td>&lt;0.00&gt;</td><td>133</td><td>&lt;0.00&gt;</td><td>117</td><td>&lt;0.00&gt;</td><td>838</td><td>&lt;0.00&gt;</td></tr><tr><td>1</td><td> J_T </td><td>157</td><td>&lt;0.00&gt;</td><td>19.8</td><td>&lt;0.18&gt;</td><td>22.1</td><td>&lt;0.11&gt;</td><td>86.4</td><td>&lt;0.00&gt;</td></tr><tr><td>1</td><td>Wald</td><td>327</td><td>&lt;0.00&gt;</td><td>20.0</td><td>&lt;0.18&gt;</td><td>24.5</td><td>&lt;0.06&gt;</td><td>74.4</td><td>&lt;0.00&gt;</td></tr><tr><td>2</td><td> J_T </td><td>134</td><td>&lt;0.00&gt;</td><td>20.4</td><td>&lt;0.16&gt;</td><td>22.7</td><td>&lt;0.09&gt;</td><td>80.4</td><td>&lt;0.00&gt;</td></tr><tr><td>2</td><td>Wald</td><td>240</td><td>&lt;0.00&gt;</td><td>20.5</td><td>&lt;0.15&gt;</td><td>23.9</td><td>&lt;0.07&gt;</td><td>22.8</td><td>&lt;0.05&gt;</td></tr></table>

Notes: Tests of the single-factor model  $\mathbf{rx}_{t + 1} = \mathbf{b}\boldsymbol{\gamma}^{\top}\mathbf{f}_{t - i / 12} + \boldsymbol{\varepsilon}_{t + 1}$  against the unrestricted model  $\mathbf{rx}_{t + 1} = \boldsymbol{\beta}\mathbf{f}_{t - i / 12} + \boldsymbol{\varepsilon}_{t + 1}$ . The 5-percent and 1-percent critical values for all tests are 25.0 and 30.6, respectively.  $J_{T}$  gives the  $\chi^2$  test that all moments of the unrestricted regression  $E(\mathbf{f}_{t - i / 12}\otimes \varepsilon_{t + 1})$  are equal to zero. Wald gives the Wald test of the joint parameter restrictions  $\mathbf{b}\boldsymbol{\gamma}^{\top} = \boldsymbol{\beta}$ . Column headings give the construction of the S matrix. "Small sample" uses the covariance matrix of the unrestricted moments  $E(\mathbf{f}_{t - i / 12}\otimes \boldsymbol{\varepsilon}_{t + 1})$  across simulations of the 12 lag yield VAR to calculate  $g_{T}^{\top}\mathrm{cov}(g_{T})^{+}g_{T}$  and it uses parameter covariance matrix  $\mathrm{cov}(\boldsymbol {\beta})$  of unconstrained estimates across simulations in Wald tests.

The moments underlying the unrestricted regressions (1) are the regression forecast errors multiplied by forward rates (right-hand variables),

$$ g _ {T} (\boldsymbol {\beta}) = E \left(\varepsilon_ {t + 1} \otimes \mathbf {f} _ {t}\right) = \mathbf {0}. \tag {13}
$$

By contrast, our two-step estimate of the single-factor model sets to zero the moments,

$$
\begin{array}{l} E \left[ \left(\mathbf {1} _ {4} ^ {\top} \varepsilon_ {t + 1}\right) \otimes \mathbf {f} _ {t} \right] = \mathbf {0} (14) \\ E \left[ \boldsymbol {\varepsilon} _ {t + 1} \otimes \left(\boldsymbol {\gamma} ^ {\top} \mathbf {f} _ {t}\right) \right] = \mathbf {0}. (15) \\ \end{array}
$$

We use moments (14)-(15) to compute GMM standard errors in Table 1. The restricted model  $\pmb{\beta} = \pmb{b}\pmb{\gamma}^{\top}$  does not set all the moments (13) to zero,  $g_{T}(\mathbf{b}\pmb{\gamma}^{\top})\neq 0$  . We can compute the "  $J_{T}$  "  $\chi^2$  test that the remaining moments are not too large. To do this, we express the moments (14)-(15) of the single-factor model as linear combinations of the unrestricted regression moments (13),  $a_{T}g_{T} = 0$  . Then we apply Lars Hansen's (1982) Theorem 3.1 (details in the Appendix). We also compute a Wald test of the joint parameter restrictions  $\pmb {\beta} = \pmb {b}\pmb{\gamma}^{\top}$  . We find the GMM distribution cov[vec(β)], and then compute the  $\chi^2$  statistic  $[\mathrm{vec}(\mathbf{b}\pmb{\gamma}^{\top}) - \mathrm{vec}(\pmb {\beta})]^{\top}$  cov[vec(β)]- [vec(by-) - vec(β)]. (vec since  $\pmb{\beta}$  is a matrix.) the single-factor model. The NW, 18 S matrix again produces suspiciously large  $\chi^2$  values, but tests with the simplified S matrix, the S matrix from nonoverlapping data, and the small sample also give strong rejections.

Table 6 presents the tests. Surprisingly, given how close the parameters are in Figure 1, the tests in the first two rows all decisively reject

When we consider a forecast lagged one month, however, the evidence against the single-factor model is much weaker. The asymptotic  $\chi^2$  values are cut by factors of 5 to 10. The simple S and nonoverlapping tests no longer reject. The small-sample  $\chi^2$  values also drop considerably, in one case no longer rejecting.

# B. Diagnosing the Rejection

To understand the single-factor model rejection with no lags, we can forecast single-factor model failures. We can estimate  $\tilde{\Gamma}$  in,

$$
\mathbf {r} \mathbf {x} _ {t + 1} - \mathbf {b} \times \bar {r x} _ {t + 1} = \tilde {\mathbf {f}} ^ {\top} \mathbf {f} _ {t} + \mathbf {w} _ {t + 1}. \tag {16}
$$

The left-hand side is a portfolio long the excess return of the  $n$ th bond, and short  $b_{n}$  times the average of all excess returns. The restriction of the single-factor model is precisely that such portfolios should not be forecastable. (Since  $E_{t}(\overline{rx}_{t + 1}) = \pmb{\gamma}^{\top}\mathbf{f}_{t}$ , we can equivalently put  $\mathbf{rx}_{t + 1} - \mathbf{b}\times \pmb{\gamma}^{\top}\mathbf{f}_{t}$  on the left-hand side. Here, we check whether individual forward rates can forecast a bond's return, above and beyond the constrained pattern  $\mathbf{b}\pmb{\gamma}^{\top}\mathbf{f}_{t}$ .

These regressions amount to a characterization of the unconstrained regression coefficients in  $\mathbf{rx}_{t + 1} = \boldsymbol {\beta}\mathbf{f}_t + \boldsymbol{\varepsilon}_{t + 1}$ . The coefficients  $\tilde{\Gamma}$  are simply the difference between the unconstrained and constrained regression coefficients,  $\tilde{\Gamma}^{\top} = \boldsymbol {\beta} - \boldsymbol {b}\boldsymbol{\gamma}^{\top}$ . The Wald test in Table 6 is precisely a test of joint significance of these coefficients. Here, we examine the coefficients for interpretable structure.

Table 7 presents regressions of the form (16). We use yields rather than forward rates on the right-hand side, as yields paint a clearer picture. A pattern emerges: the diagonals (emphasized by boldface type) are large. If the two-year yield is a little high (first row, 0.80) relative to the other yields, meaning that the two-year bond price is low, then two-year bond returns will be better than the one-factor model suggests,  $rx_{t + 1}^{(2)} - b_2\overline{rx}_{t + 1}$  will be large. Similarly, if the three-, four-, or five-year yields are higher than the others (2.36, 1.84, 0.72), then the three-, four-, and five-year bonds will do better than the single-factor model suggests. The forecasts are idiosyncratic. There is no single factor here: each bond is forecast by a different function of yields, and the pattern is quite similar to the pattern induced by measurement error in the bottom panel of Figure 4.

These forecasts are statistically significant, with some impressive t-statistics, and hence they cause the statistical rejection of the single-factor model with no lags. The  $R^2$  from 0.12 to 0.37 are at least as good as the Fama-Bliss forecasts and sometimes as good as the single-factor forecasts of overall excess returns.

So why did the single-factor model look like such a good approximation? Because the deviations from the single-factor model are tiny. The standard deviation of expected portfolio returns  $\sigma (\widetilde{\boldsymbol{\gamma}}^{\top}\mathbf{y})$  ranges from 17 to 21 basis points, and that of the ex post portfolio returns  $\sigma (\mathrm{lhs})$  ranges from 30 to 61 basis points. By contrast, the standard deviation of expected excess returns  $\sigma (b_n\boldsymbol {\gamma}^\top \mathbf{y})$  ranges from 1.12 to 3.45 percentage points, and that of ex post excess returns ranges from 1.93 to 6 percentage points. Tiny returns are forecast by tiny yield spreads, but with good  $R^2$  and statistical significance.

As another way to capture the structure of expected returns, we perform a principal components analysis of expected returns by an eigenvalue decomposition of  $cov(\pmb{\beta}\mathbf{f}_t,\mathbf{f}_t^\top \pmb{\beta}^\top)$ . (Details are provided in the Appendix.) The first principal component is almost exactly the return-forecast factor  $\pmb{\gamma}^{\top}$ , and bond returns load on it with almost exactly the  $\mathbf{b}$  loadings we found above. This first principal component is by far the largest: The standard deviations of the principal components are 5.16, 0.26, 0.20, and 0.16 percentage points. As fractions of variance, they account for 99.51, 0.25 0.15, and 0.09 percent of the total variance of expected returns. Thus, the first factor,  $\pmb{\gamma}^{\top}\mathbf{f}$ , dominates the variance of expected returns.

This is the heart of our result: if one forms an eigenvalue decomposition of the covariance matrix of yields, yield changes, prices, forwards, ex post returns, or just about any other characteristic of the term structure, one obtains "level," "slope," and "curvature" components, which account for almost all variation. If one forms an eigenvalue decomposition of the covariance matrix of expected excess returns, however, the tent-shaped  $\pmb{\gamma}^{\top}\mathbf{f}$ , poorly related to level, slope, and curvature, is by far the dominant component.

But the remaining components are statistically significant, and that is why the single-factor model with no lags is rejected. To see them, we have to finely tune our microscope. If we forecast the returns of portfolios  $\hat{\mathbf{d}}^{\top}\mathbf{r}\mathbf{x}_{t + 1}$  using portfolio weights  $\hat{\mathbf{d}}$  with  $\hat{\mathbf{d}}^{\top}\mathbf{b} = 0$ , then the single-factor model predicts  $E_{t}(\hat{\mathbf{d}}^{\top}\mathbf{r}\mathbf{x}_{t + 1}) = \hat{\mathbf{d}}^{\top}\mathbf{b}(\boldsymbol{\gamma}^{\top}\mathbf{f}_{t}) = 0$ . The left-hand side of (16) and Table 7 give one simple set of such portfolios. This prediction turns out to be false: these portfolios can be predicted, with patterns nothing like  $\pmb{\gamma}$ . But with any other set of portfolios, portfolios  $\hat{\mathbf{d}}^{\top}\mathbf{r}\mathbf{x}_{t + 1}$  with  $\hat{\mathbf{d}}^{\top}\mathbf{b}$  even slightly different from 0, the first factor will overwhelm the smaller additional factors, so the portfolio will be forecast with a pattern very close to  $\pmb{\gamma}^{\top}\mathbf{f}_{t}$ .

Repeating regressions of the form of Table 7 with lagged forward rates, we obtain much smaller forecasts; some  $t$  statistics are a bit above 2, as some of the tests in Table 6 still suggest statistical rejections, but as in Table 6, this depends on how one calculates the test statistics. Most important, there is no interpretable pattern to the coefficients, which leads us further to discount evidence against the single-factor model when we lag the right-hand variables.

TABLE 7-FORECASTING THE FAILURES OF THE SINGLE-FACTOR MODEL

<table><tr><td colspan="7">A. Coefficients and t-statistics</td></tr><tr><td rowspan="2">Left-hand var.</td><td colspan="6">Right-hand variable</td></tr><tr><td>const.</td><td>yt(1)</td><td>yt(2)</td><td>yt(3)</td><td>yt(4)</td><td>yt(5)</td></tr><tr><td>rxt(2)+b2rxt+1(t-stat)</td><td>-0.11(-0.75)</td><td>-0.20(-1.43)</td><td>0.80(2.19)</td><td>-0.30(-0.90)</td><td>-0.66(-1.94)</td><td>0.40(1.68)</td></tr><tr><td>rxt(3)+b3rxt+1(t-stat)</td><td>0.14(1.62)</td><td>0.23(2.22)</td><td>-1.28(-5.29)</td><td>2.36(11.24)</td><td>-1.01(-4.97)</td><td>-0.30(-2.26)</td></tr><tr><td>rxt(4)+b4rxt+1(t-stat)</td><td>0.21(2.33)</td><td>0.20(2.39)</td><td>-0.06(-0.33)</td><td>-1.18(-8.45)</td><td>1.84(9.13)</td><td>-0.82(-5.48)</td></tr><tr><td>rxt(5)+b5rxt+1(t-stat)</td><td>-0.24(-1.14)</td><td>-0.23(-1.06)</td><td>0.55(1.14)</td><td>-0.88(-2.01)</td><td>-0.17(-0.42)</td><td>0.72(2.61)</td></tr><tr><td colspan="7">B. Regression statistics</td></tr><tr><td>Left-hand var.</td><td>R2</td><td>x2(5)</td><td>σ(¯y¯y)</td><td>σ(lhs)</td><td>σ(bnγ¯y)</td><td>σ(rxt(n)+1)</td></tr><tr><td>rxt(2)+b2rxt+1(t-stat)</td><td>0.15</td><td>41</td><td>0.17</td><td>0.43</td><td>1.12</td><td>1.93</td></tr><tr><td>rxt(3)+b2rxt+1(t-stat)</td><td>0.37</td><td>151</td><td>0.21</td><td>0.34</td><td>2.09</td><td>3.53</td></tr><tr><td>rxt(4)+b4rxt+1(t-stat)</td><td>0.33</td><td>193</td><td>0.18</td><td>0.30</td><td>2.98</td><td>4.90</td></tr><tr><td>rxt(5)+b5rxt+1(t-stat)</td><td>0.12</td><td>32</td><td>0.21</td><td>0.61</td><td>3.45</td><td>6.00</td></tr></table>

Notes: In panel A we use the estimates  $\mathbf{b}$  from Table 1 to construct left-hand variables; if the single-factor model  $\mathbf{rx}_{t+1} = \mathbf{b}\pmb{\gamma}^{\top}\mathbf{f}_t + \pmb{\varepsilon}_{t+1}$  holds, these portfolio returns should not be predictable. In panel B,  $\chi^2(5)$  gives the  $\chi^2$  statistic for joint significance of all right-hand variables, excluding the constant. The 5-percent critical value is 11.07;  $p$  values are all below 1 percent.  $\sigma(\tilde{\pmb{\gamma}}^{\top}\mathbf{y})$  gives the standard deviation of the right-hand side variables, and  $\sigma(\mathrm{lhs})$  gives the standard deviation of the left-hand variables.  $\sigma(b_n\pmb{\gamma}^{\top}\mathbf{y})$  gives the standard deviation of the single-factor model forecast of  $rx_{t+1}^{(n)}$  for comparison, and  $\sigma(rx_{t+1}^{(n)})$  gives the standard deviation of that left-hand variable for comparison.

# C. Interpretation

What should we make of these additional return-forecasting factors? They are very small. The factors represent small movements of the bond yields, and they forecast small returns to the corresponding portfolios. They are also idiosyncratic; there is no common structure. When the nth bond price is a bit low (yield is a bit high), that bond has a high subsequent return. Furthermore, the phenomenon lasts only one month, as the evidence against the single-factor model with lagged forecasting variables is much weaker. Thus, the failures seem to represent one-month serially uncorrelated pricing discrepancies.

Even though they are small, they are not necessarily "economically insignificant." The portfolios are zero-cost, so a huge short position matched by a huge long position can make a lot of money from a small pricing discrepancy with a 35-percent  $R^2$ . A bond trader's business is precisely to pick individual bonds that are a little overor under-priced relative to a yield curve, hedge and leverage as much as possible, and wait for the small price fluctuation to melt away. One needs to ask whether 20-basis-point pricing discrepancies survive real-world transactions costs, but our interpolated zero-coupon bond data are too far removed from transactions data to answer this question.

On the other hand, they could simply be measurement errors, and we favor this interpretation. The facts are entirely consistent with a measurement error interpretation. Serially uncorrelated measurement error will cause multiple lags to help to forecast bond returns; will cause a rejection of the single-factor model with zero lags and a failure to reject the single-factor model with lagged right hand variables; and will cause the idiosyncratic nature of the forecasts of failures seen in Table 7. If the failure represents real pricing anomalies, there is no reason those anomalies should be idiosyncratic, rather than follow structures with additional factors that move bonds of all maturities. And, most tellingly, additional factors in expected returns cannot induce the non-Markovian structure that additional lags help to forecast returns.

In any case, the economically interesting variation in expected bond returns (to all but highly leveraged, low transactions cost traders) is clearly represented by the single-factor model, which explains 99.5 percent of the variance of bond expected returns as forecast by forward rates.

# D. Two-Step versus Efficient Estimates

We can finally answer the question, "Why estimate the model in Table 1 with an ad hoc two-step procedure, rather than using efficient GMM?" Under the null that the single-factor model is true, efficient GMM  $(\min_{\{\mathbf{b},\gamma \}}g_T(\mathbf{b}\boldsymbol{\gamma}^\top)^\top \mathbf{S}^{-1}g_T(\mathbf{b}\boldsymbol{\gamma}^\top))$  produces asymptotically efficient estimates. However, the single-factor model is statistically rejected. We want good estimates of an approximate model, not efficient estimates of an exact model. Efficient GMM can do a poor job of that task, even in samples in which one can trust estimation and inversion of a  $24\times 24$  S matrix with 12 lags.

The crucial question is, what moments will GMM use to choose  $\gamma$ , the linear combination of forward rates that forms the single factor? Once the single-factor parameter  $\gamma$  is estimated, even efficient GMM estimates the remaining  $\mathbf{b}$  coefficients by regressions of each return on  $\gamma^{\top} \mathbf{f}_{t}$ . In turn, taking linear combinations of moments is the same thing as forming a portfolio, so the crucial question becomes, "Which single portfolio of excess returns  $\delta^{\top} \mathbf{r} \mathbf{x}_{t+1}$  will efficient GMM regress on all forward rates to estimate  $\gamma$ ?" The answer is that efficient GMM pays attention to well-measured linear combinations of moments, guided by  $\mathbf{S}$ , not "large" or "economically interesting" moments.

For example, suppose that the third row of Table 7A forecasts its corresponding linear combination of returns  $rx_{t + 1}^{(4)} - b_4\overline{rx}_{t + 1}$  with 100 percent  $R^2$ . This moment is exactly measured, so efficient GMM will estimate parameters  $\gamma$  to fit this regression exactly—it will report the third row of Table 7A as the "single-factor model." Efficient GMM will completely miss the economically interesting first factor that describes 99.5 percent of the variance of expected returns.

In our data, the  $R^2$  for all expected return "factors" are roughly comparable (Table 7B), and thus all are about as well measured. That fact means that efficient GMM pays about equal attention to all the regressions in Table 7B along with the regression of  $\overline{r x}_{t + 1} = \boldsymbol{\gamma}^\top \mathbf{f}_t + \bar{\varepsilon}_{t + 1}$  producing a single factor that is roughly an average of  $\pmb{\gamma}$  and the rows of Table 7B. The resulting single factor explains very little of the variance of expected excess returns.

We want a GMM estimate of the approximate single factor that explains most of the variance of expected returns, not the estimate that minimizes the best measured, even if tiny, moments. For that purpose, we want GMM to pay attention to a portfolio such as  $\mathbf{1}^{\top}\mathbf{r}\mathbf{x}_{t + 1}$ , as in the two-step procedure. The return-forecasting factor is so dominant that it doesn't really matter which linear combination we choose, as long as we keep GMM from paying attention to the special linear combinations  $\delta^{\top}\mathbf{r}\mathbf{x}_{t + 1}$  with  $\delta^{\top}\mathbf{b} = 0$  that produce our very small, but statistically significant, additional factors.

# VI. Concluding Remarks

The Appendix presents many additional results and robustness checks. We show that the return forecasts are stable across subsamples, they survive in real-time estimates, they generate trading rule profits, and they are verified in a different dataset. The Appendix shows how  $\boldsymbol{\gamma}^{\top}\mathbf{f}$  forecasts the short rate of interest; it presents individual-bond forecasting regressions; and it details the principal components analysis of expected excess returns. The Appendix also documents the computations and gives a detailed presentation of the affine model.

This analysis is still admittedly incomplete in many respects. We examine only oneto five-year maturity bonds at a one-year horizon. Understanding how expected returns and interest rate forecasts vary across investment horizon and extending the analysis to all maturities are of course both important issues. However, these extensions require some subtle time-series analysis, probably including an explicit treatment of measurement errors. They also require extending the data beyond zero coupon bonds at one-year spaced maturities, and integration with an explicit term structure model when returns cannot be measured directly. We do not mention variances or covariances, and hence we do not mention Sharpe ratios or optimal portfolios. Modeling time-varying second moments is likely to require as much effort as modeling the first moments in this paper. Finally, we do not tie the time-varying premia to macroeconomic or monetary fundamentals. In particular, we do not offer a deep interpretation of what the tent-shaped function of forward rates or the fourto five-year yield spread means, other than to note that the result is suggestively correlated with business cycles. All these and more are important extensions, but we have strained space and the reader's patience enough for now.

# REFERENCES

Ang, Andrew and Piazzesi, Monika. "A No-Arbitrage Vector Autoregression of Term Structure Dynamics with Macroeconomic and Latent Variables." Journal of Monetary Economics, 2003, 50(4), pp. 745-87.

Bekaert, Geert; Hodrick, Robert J. and Marshall, David A. "On Biases in Tests of the Expectations Hypothesis of the Term Structure of Interest Rates." Journal of Financial Economics, 1997, 44(3), pp. 309-48.

Campbell, John Y. and Shiller, Robert J. "Yield Spreads and Interest Rate Movements: A Bird's Eye View." Review of Economic Studies, 1991, 58(3), pp. 495-514.

Collin-Dufresne, Pierre and Goldstein, Robert. "Generalizing the Affine Framework to HJM and Random Field Models." University of California, Berkeley, Working Paper, 2003.

Dai, Qiang and Singleton, Kenneth J. "Expectation Puzzles, Time-Varying Risk Premia, and Affine Models of the Term Structure." Journal of Financial Economics, 2002, 63(3), pp. 415-41.

Duffee, Gregory R. "Term Premia and Interest Rate Forecasts in Affine Models." Journal of Finance, 2002, 57(1), pp. 405-43.

Duffie, Darrell and Kan, Rui. "A Yield-Factor Model of Interest Rates." Mathematical Finance, 1996, 6(4), pp. 379-406.

Fama, Eugene F. and Bliss, Robert R. "The Information in Long-Maturity Forward Rates." American Economic Review, 1987, 77(4), pp. 680-92.

Fama, Eugene F. and French, Kenneth R. "Business Conditions and Expected Returns on Stocks and Bonds." Journal of Financial Economics, 1989, 25(1), pp. 23-49.

Gibbons, Michael R. and Ferson, Wayne. "Testing Asset Pricing Models with Changing Expectations and an Unobservable Market Portfolio." Journal of Financial Economics, 1985, 14(2), pp. 217-36.

Hansen, Lars Peter. "Large Sample Properties of Generalized Method of Moments Estimators." Econometrica, 1982, 50(4), pp. 1029-54.

Hansen, Lars Peter and Hodrick, Robert J. "Risk Aversion Speculation in the Forward Foreign Exchange Market: An Econometric Analysis of Linear Models," in Jacob Frenkel, ed., Exchange rates and international macroeconomics. Chicago: University of Chicago Press, 1983.

Hansen, Lars Peter and Jagannathan, Ravi. "Implications of Security Market Data for Models of Dynamic Economies." Journal of Political Economy, 1991, 99(2), pp. 225-62.

Ilmanen, Antti. "Time Varying Expected Bond Returns in International Bond Markets." Journal of Finance, 1995, 50(2), pp. 481-506.

Stambaugh, Robert F. "The Information in Forward Rates: Implications for Models of the Term Structure." Journal of Financial Economics, 1988, 21(1), pp. 41-70.
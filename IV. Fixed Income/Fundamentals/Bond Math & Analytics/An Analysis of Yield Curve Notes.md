---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: American Finance Association
linter-yaml-title-alias: American Finance Association
---

# American Finance Association

An Analysis of Yield Curve Notes

# An Analysis of Yield Curve Notes

# ABSTRACT

This paper analyzes a new type of security, the yield curve note, which pays interest at a rate that varies inversely with short-term interest rates. A valuation model for yield curve notes is presented, the parameters of the model are estimated empirically, and the estimated model is used to explore, in simulation, the price behavior and risk characteristics of yield curve notes in comparison with fixed-rate notes. The risk of a yield curve note is approximately twice as great as a fixed-rate note with the same maturity. The unique risk characteristics of yield curve notes make them useful (as liabilities) in immunization strategies for financial institutions. Their usefulness in this regard may be the chief rationale for their development.

THE HIGH VOLATILITY OF short-term interest rates observed in recent years has had profound effects on the various markets and institutions dealing with fixed-income securities. Financial institutions, in particular, have had difficulties managing their operations in this environment because their assets generally have a greater average maturity than their liabilities, a condition which exposes them to interest rate risk. To reduce their exposure to this risk, financial institutions have, since 1974, promoted variable-rate loan contracts with their borrowing customers. That is, they have altered the nature of their loan assets in order to reduce risk. Until recently, though, institutions' attempts to reduce risk through liability management have been largely limited to attempts to attract longer-term liabilities.

However, in February 1986, the first of a new type of floating-rate notes, called 'yield curve' notes, appeared. Thus far issued exclusively by financial institutions, within two months of their initial appearance yield curve notes attained an aggregate volume of nearly 1 billion. Yield curve notes have fixed maturities and provide coupon interest at a rate that varies inversely with the level of short-term interest rates. This design causes the price of a yield curve note to be more sensitive to changes in interest rates than a fixed-rate note with the same maturity. As such, yield curve notes provide a more effective means of reducing interest rate risk and therefore represent an innovation in liability management that is perhaps as important as the development of variable-rate loans.

This paper presents a preliminary analysis of several aspects of yield curve notes. The focus of the analysis is the price behavior and risk characteristics of default-free yield curve notes. Yield curve notes and fixed-rate notes are compared, under a variety of conditions, on the bases of (a) price, (b) risk, and (c) usefulness in immunization strategies.

The next section briefly describes the terms of some of the initial issues of yield curve notes. Section II presents a continuous-time valuation model for default-free yield curve notes. In Section III, the parameters of the model are estimated empirically. In Section IV, yield curve notes and fixed-rate notes are compared in simulation. Section V discusses the use of yield curve notes in immunization strategies. Finally, Section VI summarizes the analysis.

# I. Initial Issues of Yield Curve Notes

Descriptions of several initial issues of yield curve notes are provided in Table I.2 All of the issues have five or seven years to maturity and are not subject to redemption prior to maturity. Initial and subsequent interest rates on each issue are computed, at the beginning of each interest period, as the difference between an interest constant and the current six-month London interbank offered rate (LIBOR). Coupon interest is paid and adjusted semiannually for each issue, and, if for any period LIBOR is greater than or equal to the interest constant, no interest is paid for that period.

# II. A Model for Analysis

This section presents a continuous-time valuation model for default-free securities including both fixed-rate notes and yield curve notes. Since this model may be embedded in the general-equilibrium framework developed by Cox, Ingersoll, and Ross [5], it is consistent with a rational-expectations equilibrium.

The following assumptions are required for the analysis:

(A1) Trading in assets takes place continuously in competitive, frictionless markets.

(A2) There are no taxes.

(A3) The instantaneous default-free rate of interest,  $r(t)$ , follows the diffusion process

$$ d r = \beta (\mu - r) d t + \sigma r d z, \tag {1}
$$ where  $\beta, \mu,$  and  $\sigma$  are parameters and  $dz$  is a standard Wiener process.


(A4) The price of any default-free security,  $P(r, t)$ , is a twice-continuously differentiable function of  $r$ .

 Information about these issues was obtained from prospectuses and offering circulars graciously provided by Morgan Stanley & Co., Inc., Salomon Brothers, Inc., Fannie Mae, and Sallie Mae.
3 The focus of the analysis is the effects of interest rate uncertainty on the value and riskiness of yield curve notes, so default risk is ignored. The effects of default risk can be analyzed, however, with a model developed along the lines of Cox, Ingersoll, and Ross [4].
4 This assumption implies that the market for default-free bonds is governed by a single-state variable uniquely defined by  $r$ . While the analysis therefore has obvious limitations, it is nevertheless important to focus on the influence of the short-term interest rate on the prices of yield curve notes. See Cox, Ingersoll, and Ross [5] for multiple-state-variable pricing of bonds.

Table I Descriptions of Initial Issues of Yield Curve Notes

<table><tr><td>Issuer</td><td>When Issued</td><td>Amount ($Millions)</td><td>Initial Price (per \$100 par)</td><td>Maturity (Years)a</td><td>Interest Constant (\%)</td><td>Implied Initial LIBOR (\%)(b)</td><td>Initial Interest Rate (\%)</td></tr><tr><td>Citicorp</td><td>Feb. 1986</td><td>100</td><td>100.00</td><td>5</td><td>17.375</td><td>8.125</td><td>9.250</td></tr><tr><td>Sallie Maec</td><td>Feb. 1986</td><td>250</td><td>99.21</td><td>5</td><td>17.200</td><td>8.000</td><td>9.200</td></tr><tr><td>Sallie Mae</td><td>Feb. 1986</td><td>150</td><td>99.25</td><td>7</td><td>17.600</td><td>8.100</td><td>9.500</td></tr><tr><td>Fannie Mae d</td><td>Mar. 1986</td><td>200</td><td>99.48</td><td>7</td><td>15.950</td><td>7.500</td><td>8.450</td></tr><tr><td>GMACe</td><td>Apr. 1986</td><td>200</td><td>100.00</td><td>7</td><td>15.250</td><td>6.900</td><td>8.350</td></tr></table>

 Issues are not subject to redemption prior to maturity.
 London interbank offered rate (LIBOR) is computed as the interest constant less the initial interest rate. Implied rates correspond closely with actual contemporaneous six-month LIBORs.
c Student Loan Marketing Association.
$^{\mathrm{d}}$  Federal National Mortgage Association.
e General Motors Acceptance Corporation.

(A5) The instantaneous market risk premium on any default-free security may be expressed as

$$

\lambda r P _ {r} / P, \tag {2}

$$ where  $\lambda < 0$  is a constant.

In (2) and henceforth, subscripts denote partial differentiation.

Equation (1) states that changes in  $r$  have both deterministic and random components. The deterministic component,  $\beta (\mu -r)dt$ , specifies that  $r$  tends to drift toward a steady-state mean level  $\mu$ , with the magnitude of the expected adjustment (per unit of time) depending upon the current differential  $(\mu -r)$  and a speed of adjustment coefficient  $\beta \geq 0$ . The random component,  $\sigma rdz$ , is distributed normally with mean zero and instantaneous variance  $\sigma^2 r^2 dt$ .

Under these assumptions, the valuation equation for any default-free security is

$$
\frac {1}{2} \sigma^ {2} r ^ {2} P _ {r r} + [ \beta (\mu - r) - \lambda r ] P _ {r} + P _ {t} + c (r, t) - r P = 0, \tag {3}
$$ where  $c(r, t)$  is the rate of cash flow paid to investors. Given the boundary conditions below, the price of the security may be calculated via numerical methods techniques. For a security with face value \$1 maturing at time  $t = \tau$ , these boundary conditions are


$$

P (r, \tau) = \$ 1, \tag {4}

$$

$$

P _ {r r} (\infty , t) = 0 \quad \text {f o r} \quad t <   \tau , \tag {5}

$$ and


$$

\beta \mu P _ {r} + P _ {t} + c (0, t) = 0 \quad \text {f o r} \quad t <   \tau . \tag {6}

$$

Fixed-rate notes are distinguished from yield curve notes (with the same maturity) only by their coupon payment stream,  $c(r, t)$ . Fixed-rate notes make continuous coupon payments at a constant rate  $c(r, t) = s$ , while yield curve notes pay  $c(r, t) = \max(k - r, 0)$ , where  $k$  is a constant.

# III. Parameter Estimation

The parameters of the process (1) are estimated using a generalized version of Christie's [2] maximum likelihood procedure. The procedure is described in the Appendix and provides simultaneous estimates, and asymptotic standard errors, of the parameters  $\beta$ ,  $\mu$ , and  $\sigma^2$ . The data used for this purpose are the yields on U.S. Treasury bills with approximately ninety days to maturity, observed on the last trading day of each month of the eight-year (ninety-six-month) period from June 1977 through June 1985. These data are obtained from the CRSP Government Bond File.

The resulting annualized parameter estimates (with standard errors in parentheses) are:  $\hat{\beta} = 0.6384$  (0.3768),  $\hat{\mu} = 0.1053$  (0.0177), and  $\hat{\sigma}^2 = 0.0830$  (0.0116).

All three parameter estimates are significant at the 0.05 level, based on one-tailed tests. The value of  $\hat{\beta}$  indicates that  $r$  is expected to revert halfway to  $\mu$  in about one year. The estimated standard deviation of  $r$  is 303 basis points per annum (when  $r = \hat{\mu}$ ).

# IV. Price Behavior and Risk Characteristics of Yield Curve Notes

In this section, the process-parameter estimates obtained in the previous section are placed in the valuation model presented in Section II, and the comparative price behaviors and risk characteristics of fixed-rate and yield curve notes are explored in simulation. Throughout the analysis, the coupon rate on all fixed-rate notes is  $s = \hat{\mu} = 0.1053$ . For all yield curve notes, the constant from which coupon rates are calculated is  $k = 2\hat{\mu} = 0.2106$ , so that, for these notes,  $c = \max(0.2106 - r, 0)$ .

# A. Price Behavior of Yield Curve Notes

Model prices of \$100 par value fixed-rate notes,  $P^{f}(r_{0}, \tau)$ , and yield curve notes,  $P^{y}(r_{0}, \tau)$ , are shown in Figures 1 and 2 for various maturities  $\tau$  and initial interest rates,  $r_{0}$ . Prices for  $\lambda = 0.00$  and  $\lambda = -0.08$  are shown in Figures 1 and 2, respectively. The first point of interest in both figures is that, as expected, the price of the yield curve note is generally greater (less) than the price of the fixed-rate note with the same maturity when  $r_{0} < (\geq) \hat{\mu}$ , primarily because present (and expected future) coupon payments are greater (smaller) for the yield curve note when  $r_{0} < (\geq) \hat{\mu}$ .

When  $r_0 = \hat{\mu}$ , however, the difference in the prices of the two notes depends critically on  $\lambda$ . For  $\lambda = 0.00$  (Figure 1), the price of the yield curve note exceeds the price of the fixed-rate note, and this difference increases with maturity. This is due in part to the fact that expected future coupon payments are slightly greater for the yield curve note and in part to the greater effect of Jensen's inequality on the more risky yield curve notes. (See discussion below.) However, for  $\lambda = -0.08$  (Figure 2), the greater risk premium required for the yield curve note more than offsets the two effects noted above, and the price of the yield curve note is slightly less than the price of the fixed-rate note.

Note also that in both figures, and for any given maturity, the deviation from par of the price of the yield curve note, due to a given deviation in  $r_0$  from  $\hat{\mu}$ , is approximately twice the corresponding deviation for the fixed-rate note. This phenomenon is quite robust to changes in the process parameters and is easily explained. The result is based on the fact that the price of any given finitematurity, fixed-rate note is affected roughly equally by either a given change in the coupon rate or an equally sized, but opposite, change in the discount rate (i.e., yield). It then follows that the change in the price of a yield curve note, in response to a given change in the discount rate(s), will be twice as great as for a fixed-rate note because with the former there is a simultaneous equal but opposite change in the coupon rate(s).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/05232a5e-ac9a-40d5-9712-8894f7ae14ad/2e3b794151f51af239a1afde5008816131c656276d5fd59fd9d5a568bda671b2.jpg)
Figure 1. Prices (per \$100 par) of Fixed-Rate Notes ( $P^{f}(r_{0}, \tau))$  and Yield Curve Notes ( $P^{y}(r_{0}, \tau)$ ) by Maturity for Various Initial Rates  $r_{0}$  and for  $\lambda = 0.00$

# B. Risk Characteristics of Yield Curve Notes

It is clear from the above discussion that yield curve notes are generally more risky than fixed-rate notes with the same maturity. This result is illustrated in Figure 3. Shown are the instantaneous return standard deviations,  $-\hat{\sigma} rP_r / P$ , of yield curve notes and fixed-rate notes for various maturities  $\tau$  and for  $r_0 = \hat{\mu}$ .

Several aspects of Figure 3 are interesting. Note initially that, for both yield curve and fixed-rate notes, the standard deviations increase, but at a decreasing rate, with maturity. These results are due in part to the mean-reversion characteristic of the model. For the fixed-rate notes, these results are qualitatively consistent with results obtained by Cox, Ingersoll, and Ross [3].

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/05232a5e-ac9a-40d5-9712-8894f7ae14ad/710cc8a9fae70c6d74c3fece3b89365e2bd8b00ad0fe8d657d5d83e7a76d951f.jpg)
Figure 2. Prices (per \$100 par) of Fixed-Rate Notes ( $P^{f}(r_{0}, \tau))$  and Yield Curve Notes ( $P^{y}(r_{0}, \tau)$ ) by Maturity for Various Initial Rates  $r_{0}$  and for  $\lambda = -0.08$


Next, note that, for any given maturity, the risk of the yield curve note is approximately twice as large as the risk of the fixed-rate note. These results are consistent with the results, shown in Figures 1 and 2, that the prices of yield curve notes are approximately twice as responsive to a change in interest rates as fixed-rate notes. Perhaps the most remarkable result in Figure 3 is the observation that the risk of a yield curve note with only one year to maturity is nearly as great as the risks of fixed-rate notes with maturities of five to ten years. Moreover, no fixed-rate note attains the level of risk of yield curve notes with maturities greater than about fifteen months, no matter how long its maturity. These results indicate that yield curve notes have unique risk characteristics that may be used, for instance, in immunization strategies. This potential is now explored.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/05232a5e-ac9a-40d5-9712-8894f7ae14ad/9c67d1c47cc7d749bd0646d5e8da33b3ed38d9ba64d4f8f197b36671eaad7993.jpg)
Figure 3. Interest Rate Risks (Instantaneous Return Standard Deviations) of Fixed-Rate Notes and Yield Curve Notes by Maturity


# V. Immunization Using Yield Curve Notes

This section illustrates the use of yield curve notes in a simulated immunization strategy for a financial institution. A simple structure is assumed for the institution's assets and liabilities in order to focus on the relevant aspects of the problem. Specifically, the institution's assets consist of a portfolio of default-free fixed-rate loans with various maturities, and its liabilities consist of two types. Type I liabilities are default-free short-term fixed-rate securities. For type II liabilities, the institution may choose between fixed-rate notes and yield curve notes.

The assumed objective of the institution is to minimize its net interest rate risk, defined as the instantaneous standard deviation of the returns on its assets minus the returns on its liabilities. The institution's equity account absorbs all changes in the difference between the values of its assets and its liabilities, but otherwise plays no role in the analysis, and has an initial value of zero.

Throughout the analysis, the institution's assets are assumed to be distributed equally among fixed-rate securities with maturities of one, three, five, seven, and nine years. In the initial illustration, type I liabilities are one-year fixed-rate securities and constitute seventy percent of total liabilities, while type II liabilities, thirty percent of the total, are assumed to be fixed-rate notes with maturity  $\tau^f$ . The objective of the institution is to choose  $\tau^f$  so as to minimize interest rate risk.  $\tau^f$  is constrained, however, to be no greater than ten years.

Using the estimates shown in Figure 3, the risk of the asset portfolio is approximately

$$
0. 2 (0. 0 1 9) + 0. 2 (0. 0 3 5) + 0. 2 (0. 0 3 9) + 0. 2 (0. 0 4 0) + 0. 2 (0. 0 4 1) = 0. 0 3 4 8.
$$

The risk of the liabilities is

$$
- 0. 7 0 (0. 0 1 9) - 0. 3 0 \left(\phi \left(\tau^ {f}\right)\right) = - 0. 0 1 3 3 - 0. 3 0 \left(\phi \left(\tau^ {f}\right)\right), \tag {7}
$$ where  $\phi(\tau^f)$  is the risk of the type II liabilities (i.e., fixed-rate notes), expressed as a function of  $\tau^f$ . The negative signs in (7) indicate that liabilities contribute negatively to the institution's interest rate risk. After computing the net interest rate risk of the assets and the type I liabilities, the institution's objective may be expressed as

$$
\underset {\tau^ {f}} {\text {M i n}} 0. 0 2 1 5 - 0. 3 0 \left(\phi \left(\tau^ {f}\right)\right). \tag {8}
$$

It is clear from (8) that full immunization obtains only if  $\phi(\tau^f) = 0.0215 / 0.30 = 0.0717$ . However, according to the estimates in Figure 3, no fixed-rate note attains this level of risk. The ten-year note has the greatest level of risk, 0.041. If the ten-year note is chosen, the institution's net interest rate risk is 0.0092, or about one percent per annum.

Let us now assume that the institution uses yield curve notes as its type II liabilities. Based on the calculations above, the institution's objective may be expressed as

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/05232a5e-ac9a-40d5-9712-8894f7ae14ad/d75c185aa3c8faad429132daaa88d914cec659d78348c971e779972de9708402.jpg)

Figure 4. Fully Immunizing Maturities by  $F$ , the Fraction of Type I Liabilities in the Capital Structure

$$
\underset {\tau^ {y}} {\operatorname {M i n}} 0. 0 2 1 5 - 0. 3 0 \left(\phi \left(\tau^ {y}\right)\right), \tag {9}
$$ where  $\phi(\tau^y)$  is the risk of the yield curve notes and  $\tau^y$  is their maturity, constrained to be no greater than ten years. Again, full immunization obtains if  $\phi(\tau^y) = 0.0717$ . According to the estimates in Figure 3, a yield curve note with


about 3.5 years to maturity has approximately this level of risk. Thus, this illustration indicates that yield curve notes can provide full immunization for an institution in situations in which fixed-rate notes can at best provide only partial immunization.

In general, whether type II liabilities can provide full immunization and, if so, what maturity is required to do so depends on (a) the maturity composition of the assets, (b) the fraction of total liabilities that are type I liabilities, and (c) whether the type II liabilities are fixed-rate notes or yield curve notes. For the asset composition used in the above example, fully immunizing maturities for both fixed-rate notes and yield curve notes are computed for various values of  $F$ , the fraction of total liabilities that are type I liabilities. The results are displayed in Figure 4. Note that fixed-rate notes can provide full immunization only for  $F \leq 0.30$ , while yield curve notes can provide full immunization for all  $F \leq 0.74$ .

# VI. Summary

This paper presents a valuation model for default-free yield curve notes, a new type of security issued by financial institutions. The parameters of the model are estimated empirically, and the estimated model is used to explore, in simulation, the price behavior and risk characteristics of yield curve notes in comparison with fixed-rate notes. The simulations indicate that the interest rate risk of a yield curve note is approximately twice as great as that of a fixed-rate note with identical maturity. Simulation also shows that the unique risk characteristics of yield curve notes make them useful (as liabilities) in immunization strategies for financial institutions facing substantial interest rate risk. Their usefulness in this regard may be the chief rationale for their development.

# Appendix: Maximum Likelihood Estimation of the Parameters of the Assumed Process of  $r$

Assume that

$$ d r = \beta (\mu - r) d t + \sigma r d z, \tag {A1}
$$ where  $dz$  is a Wiener process and  $\beta, \mu,$  and  $\sigma$  are parameters.


Denoting as  $\Delta r$  the change in  $r$  over the discrete time interval  $\Delta t$ , the log-likelihood function for a sample of size  $T$  is

$$

\begin{array}{l} L = - T / 2 \ln (2 \pi) - T / 2 \ln \left(\sigma^ {2}\right) - \sum \ln r \\ - \frac {1}{2} \sigma^ {- 2} \sum [ \Delta r - \beta (\mu - r) \Delta r ] ^ {2} r ^ {- 2}, \tag {A2} \\ \end{array}

$$ where the summations are over  $t = 1$ ,  $T$ . Maximizing this function with respect to  $\beta, \mu$ , and  $\sigma^2$  provides

$$
\beta = \sum \left\{r ^ {- 2} \Delta r (\mu - r) \right\} / \sum \left\{r ^ {- 2} (\mu - r) ^ {2} \Delta t \right\} \tag {A3}
$$

$$
\beta = \sum \left\{\left(\Delta r\right) r ^ {- 2} \right\} / \sum \left\{r ^ {- 2} (\mu - r) \Delta t \right\} \tag {A4}
$$

$$
\sigma^ {2} = \frac {1}{T} \sum [ \Delta r - \beta (\mu - r) ] ^ {2} r ^ {- 2}. \tag {A5}
$$

That is, there are three nonlinear equations in the three unknowns. The mathematical algorithm used to estimate the parameters is a variant of the Newton-Raphson method (Rao [8]). Specifically, the algorithm is called ZSPOW, available as part of the International Mathematical and Statistical Libraries, Inc. (IMSL) (1982) package, and uses a finite-difference approximation to the Jacobian in the search process.

The procedure for obtaining an estimated variance-covariance matrix  $\hat{\Sigma}$  of the parameter estimates is described by Kendall and Stuart [6]. The first step is to develop a  $3\times 3$  matrix,  $L^{\prime \prime}(\beta ,\mu ,\sigma^{2})$ , of the second partial derivatives of (A2) with respect to the various parameters. Then substitute the final estimated values  $\hat{\beta},\hat{\mu}$ , and  $\hat{\sigma}^2$  to obtain  $L^{\prime \prime}(\hat{\beta},\hat{\mu},\hat{\sigma}^{2})$ . Finally,  $\hat{\Sigma}$  is the inverse of  $-L^{\prime \prime}(\hat{\beta},\hat{\mu},\hat{\sigma}^{2})$ .

# REFERENCES

1. G. O. Bierwag. "Immunization, Duration, and the Term Structure of Interest Rates." Journal of Financial and Quantitative Analysis 12 (December 1977), 725-42.
2. A. A. Christie. "The Stochastic Behavior of Common Stock Variances: Value, Leverage and Interest Rate Effects." Journal of Financial Economics 10 (December 1982), 407-32.
3. J. C. Cox, J. E. Ingersoll, and S. A. Ross. "Duration and the Measurement of Basis Risk." Journal of Business 52 (January 1979), 51-61.
4. "An Analysis of Variable Rate Loan Contracts." Journal of Finance 35 (May 1980), 389-403.
5. "A Theory of the Term Structure of Interest Rates." Econometrica 53 (March 1985), 385-407.
6. M. G. Kendall and A. Stuart. The Advanced Theory of Statistics, Vol. 2. New York: Hafner Publishing Co., 1961.
7. F. R. Macaulay. Some Theoretical Problems Suggested by the Movements of Interest Rates, Bond Yields, and Stock Prices in the United States Since 1856. New York: Columbia University Press, 1938.
8. C. R. Rao. Linear Statistical Inference and its Applications, 2nd ed. New York: John Wiley & Sons, 1973.
9. E. Schwartz. "The Valuation of Warrants: Implementing a New Approach." Journal of Financial Economics 5 (January 1977), 79-93.
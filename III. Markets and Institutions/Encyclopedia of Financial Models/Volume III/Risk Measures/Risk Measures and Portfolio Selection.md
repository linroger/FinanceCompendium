
# Risk Measures and Portfolio Selection

SVETLOZAR T. RACHEV, PhD, Dr Sci

Frey Family Foundation Chair-Professor, Department of Applied Mathematics and Statistics, Stony Brook University, and Chief Scientist, FinAnalytica

CHRISTIAN MENN, Dr Rer Pol

Managing Partner, RIVACON

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: The standard assumption in financial models is that the distribution for the return on financial assets follows a normal (or Gaussian) distribution and therefore the standard deviation (or variance) is an appropriate measure of risk in the portfolio selection process. This is the risk measure that is used in the well-known Markowitz portfolio selection model (that is, mean-variance model) which is the foundation for modern portfolio theory. With mounting evidence since the early 1960s that return distributions do not follow a normal distribution, researchers have proposed alternative risk measures for portfolio selection. These risk measures fall into two disjoint categories: dispersion measures and safety-first measures. In addition, there has been considerable theoretical work in defining the features of a desirable risk measure.

Most of the concepts in theoretical and empirical finance that have been developed over the last 50 years rest upon the assumption that the return or price distribution for financial assets follow a normal distribution. Yet, with rare exception, studies that have investigated the validity of this assumption since the 1960s fail to find support for the normal distribution. Moreover, there is ample empirical evidence that many—if not most—financial return series are heavy-tailed and, possibly, skewed. The "tails" of the distribution are where the extreme values occur. Empirical distributions for stock prices and returns have found that the extreme values are more likely than would be predicted by the normal distribution. This means that between periods where the market exhibits relatively modest changes in prices and returns, there will be periods where there are changes that are much higher (that is, crashes and booms) than predicted by the normal distribution. This is not only of concern to financial theorists, but also to practitioners seeking, for example, to produce probability estimates for financial


risk assessment. To more effectively implement portfolio selection, alternative risk measures are needed.

In this entry, we review alternative risk measures that can be employed in portfolio selection, which can accommodate non-normal return distributions. These risk measures are classified as dispersion measures and safety-first measures. We begin with a discussion of the desirable features of investment risk measures.

# DESIRABLE FEATURES OF INVESTMENT RISK MEASURES

Szegö (2004, p. 1) categorizes risk measures as one of the three major revolutions in finance and places the start of that revolution in 1997. The other two major revolutions are mean-variance analysis (1952-1956) and continuous-time models (1969-1973). He notes that alternative risk measures have been accepted by practitioners but "rejected by the academic establishment and, so far discarded by regulators!" (Szegö, 2004, p. 4).

# Basic Features of Investment Risk Measures

Balzer (2001) argues that a risk measure is investor specific and, therefore, there is "no single universally acceptable risk measure." He suggests several features that an investment risk measure should capture. Here we describe the following three features:

- Relativity of risk
- Multidimensionality of risk
- Asymmetry of risk

The relativity of risk means that risk should be related to performing worse than some alternative investment or benchmark. Balzer (1994, 2001) and Sortino and Satchell (2001), among others, have proposed that investment risk might be measured by the probability of the investment return falling below a specified risk benchmark. The risk benchmark might itself be a random variable, such as a liability benchmark (e.g., an insurance product), the inflation rate or possibly inflation plus some safety margin, the risk-free rate of return, the bottom percentile of return, a sector index return, a budgeted return, or other alternative investments. Each benchmark can be justified in relation to the goal of the portfolio manager. Should performance fall below the benchmark, there could be major adverse consequences for the portfolio manager.

In addition, the same investor could have multiple objectives and, hence, multiple risk benchmarks. Thus, risk is also a multidimensional phenomenon. However, an appropriate choice of the benchmarks is necessary in order to avoid an incorrect evaluation of opportunities available to investors. For example, too often, little recognition is given to liability targets. This is the major factor contributing to the underfunding of U.S. corporate pension sponsors of defined benefit plans.

Intuition suggests that risk is an asymmetric concept related to the downside outcomes, and any realistic risk measure has to value and consider upside and downside differently. The standard deviation considers the positive and the negative deviations from the mean as a potential risk. In this case overperformance relative to the mean is penalized just as much as underperformance.


# Intertemporal Dependence and Correlation with Other Sources of Risk

The standard deviation is a measure of dispersion and it cannot always be used as a measure of risk. The preferred investment does not always present better returns than the other. It could happen that the worst investment presents the greatest return in some periods. Hence, time could influence the investor's choices.

Clearly, if the degree of uncertainty changes over time, the risk has to change during the time as well. In this case, the investment return process is not stationary; that is, we cannot assume that returns maintain their distribution unvaried in the course of time. In much of the research published, stationary and independent realizations are assumed. The latter assumption implies that history has no impact on the future. More concrete, the distribution of tomorrow's return is the same independent of whether the biggest stock market crash ever recorded took place yesterday or yesterday's return equaled  $10\%$ .

As a result, the oldest observations have the same weight in our decisions as the most recent ones. Is this assumption realistic? Recent studies on investment return processes have shown that historical realizations are not independent and present a clustering of the volatility effect (time-varying volatility). Those phenomena lead to the fundamental timeseries model autoregressive conditional heteroscedasticity (ARCH) formulated by Engle (1981). In particular, the last observations have a greater impact in investment decisions than the oldest ones. Thus, any realistic measure of risk changes and evolves over time taking into consideration the heteroscedastic (time-varying volatility) behavior of historical series. An examination of the returns of say the equity return indexes such as the S&P 500 over some time period would show a propagation effect on another equity market, say the DAX 30. When we observe the highest peaks in one return index series, for example, there is an analogous peak in the other return index series. This propagation effect is known as cointegration of the return series, introduced by the fundamental work of Granger (1981) and elaborated upon further by Engle and Granger (1987). The propagation effect in this case is a consequence of the globalization of financial markets—the risk of a country/sector is linked to the risk of the other countries/sectors. Therefore, it could be important to limit the propagation effect by diversifying the risk. As a matter of fact, it is largely proven that the diversification, opportunistically modeled, diminishes the probability of big losses. Hence, an adequate risk measure values and models correctly the correlation among different investments, sectors, and markets.


# ALTERNATIVE RISK MEASURES FOR PORTFOLIO SELECTION

The goal of portfolio selection is the construction of portfolios that maximize expected returns consistent with individually acceptable levels of risk. Using both historical data and investor expectations of future returns, portfolio selection uses modeling techniques to quantify "expected portfolio returns" and "acceptable levels of portfolio risk," and provides methods to select an optimal portfolio.

It would not be an overstatement to say that modern portfolio theory as developed by Harry Markowitz (1952, 1959) has revolutionized the world of investment management. Allowing managers to appreciate that the investment risk and expected return of a portfolio can be quantified has provided the scientific and objective complement to the subjective art of investment management. More importantly, whereas previously the focus of portfolio management used to be the risk of individual assets, the theory of portfolio selection has shifted the focus to the risk of the entire portfolio. This theory shows that it is possible to combine risky assets and produce a portfolio whose expected return reflects its components, but with considerably lower risk. In other words, it is possible to construct a portfolio whose risk is smaller than the sum of all its individual parts.


Though practitioners realized that the risks of individual assets were related, prior to modern portfolio theory they were unable to formalize how combining them into a portfolio impacted the risk at the entire portfolio level or how the addition of a new asset would change the return/risk characteristics of the portfolio. This is because practitioners were unable to quantify the returns and risks of their investments. Furthermore, in the context of the entire portfolio, they were also unable to formalize the interaction of the returns and risks across asset classes and individual assets. The failure to quantify these important measures and formalize these important relationships made the goal of constructing an optimal portfolio highly subjective and provided no insight into the return investors could expect and the risk they were undertaking. The other drawback, before the advent of the theory of portfolio selection and asset pricing theory, was that there was no measurement tool available to investors for judging the performance of their investment managers.

The theory of portfolio selection set forth by Markowitz was based on the assumption that asset returns are normally distributed. As a result, Markowitz suggested that the appropriate risk measure is the variance of the portfolio's return and portfolio selection involved only two parameters of the asset return distribution: mean and variance. Hence, the approach to portfolio selection he proposed is popularly referred to as mean-variance analysis.

Markowitz recognized that an alternative to the variance is the semivariance. The semivariance is similar to the variance except that, in the calculation, no consideration is given to returns above the expected return. Portfolio selection could be recast in terms of mean-semivariance. However, if the return distribution is symmetric, Markowitz (1959, p. 190) notes that "an analysis based on (expected return) and (standard deviation) would consider these ... (assets) as equally desirable." He rejected the semivariance noting that the variance "is superior with respect to cost, convenience, and familiarity" and when the asset return distribution is symmetric, either measure "will produce the same set of efficient portfolios." (Markowitz 1959, pp. 193-194).

There is a heated debate on risk measures used for valuing and optimizing the investor's risk portfolio. In this section and the one to follow, we describe the various portfolio risk measures proposed in the literature and more carefully look at the properties of portfolio risk measures.

According to the literature on portfolio theory, two disjoint categories of risk measures can be defined: dispersion measures and safety-first risk measures. In the remainder of this entry, we review some of the most well-known dispersion measures and safety-first measures along with their properties.

In the following, we consider a portfolio of  $N$  assets whose individual returns are given by  $r_1,\ldots ,r_N$ . The relative weights of the portfolio are denoted as  $x_{1},\dots x_{n}$  and, therefore, the portfolio return  $r_p$  can be expressed as

$$ r _ {p} = x _ {1} \cdot r _ {1} + \dots + x _ {N} \cdot r _ {N} = \sum_ {i = 1} ^ {N} x _ {i} \cdot r _ {i}
$$

We also provide a sample version of the discussed risk measures. The sample version will be based on a sample of length  $T$  of independent and identically distributed observations  $r_p^{(k)}$ ,  $k - 1, \ldots, T$  of the portfolio return  $r_p$ . These observations can be obtained from a corresponding sample of the individual assets.


# DISPERSION MEASURES

Several portfolio mean dispersion approaches have been proposed in the last few decades. The most significant ones are discussed below, and we provide for each measure an example to illustrate the calculation.

# Mean Standard Deviation

In the mean standard deviation approach the dispersion measure is the standard deviation of the portfolio return  $r_p$  (see Markowitz, 1959, and Tobin, 1958):

$$
\sigma \left(r _ {p}\right) = \sqrt {E \left(r _ {p} - E \left(r _ {p}\right)\right) ^ {2}} \tag {1}
$$

The standard deviation is a special case of the mean absolute moment discussed below. The sample version can be obtained from the general case by setting  $p = 2$ .

# Mean Absolute Deviation

In the mean absolute deviation (MAD) approach, the dispersion measure is based on the absolution deviations from the mean rather than the squared deviations as in the case of the standard deviation. The MAD is more robust with respect to outliers. The MAD for the portfolio return  $r_p$  is defined as

$$
\operatorname {M A D} \left(r _ {p}\right) = E \left(\left| r _ {p} - E \left(r _ {p}\right) \right|\right) \tag {2}
$$

# Mean Absolute Moment

The mean absolute moment (MAM(q)) approach is the logical generalization of the MQ approach. Under this approach the dispersion measure is defined as

$$
\operatorname {M A M} \left(r _ {q}, p\right) = \left(E \left(\left| r _ {p} - E \left(r _ {p}\right) \right| ^ {q}\right)\right) ^ {1 / q}, \quad q \geq 1 \tag {3}
$$

Note that the mean absolute moment for  $q = 2$  coincides with the standard deviation and for

$q = 1$  the mean absolute moment reduces to the mean absolute deviation. One possible sample version of (3) is given by

$$
\operatorname {M A M} \left(r _ {p}, q\right) = \sqrt [ q ]{\frac {1}{T} \sum_ {k = 1} ^ {T} \left| r _ {p} ^ {(k)} - \bar {r} _ {p} \right| ^ {q}}
$$ where


$$
\bar {r} = \frac {1}{T} \sum_ {k = 1} ^ {T} r _ {p} ^ {(k)}
$$ denotes the sample mean of the portfolio return.


# Gini Index of Dissimilarity

The index of dissimilarity is based on the measure introduced by Gini (1912, 1921). Gini objected to the use of the variance or the MAD because they measure deviations of individuals from the individual observations of the mean or location of a distribution. Consequently, these measures linked location with variability, two properties that Gini argued were distinct and do not depend on each other. He then proposed the pairwise deviations between all observations as a measure of dispersion, which is now referred to as the Gini measure.

While this measure has been used for the past 80 years as a measure of social and economic conditions, its interest as a measure of risk in the theory of portfolio selection is relatively recent. Interest in a Gini-type risk measure has been fostered by Rachev (1991) and Rachev and Gamrowski (1995). Mathematically, the Gini risk measure for the random portfolio return  $r_p$  is defined as

$$
\operatorname {G M} \left(r _ {p}, r _ {b}\right) = \operatorname {M i n} \left\{E \left| r _ {p} - r _ {b} \right| \right\} \tag {4}
$$ where the minimum is taken over all joint distributions of  $(r_p, r_b)$  with fixed marginal distribution functions  $F$  and  $G$ :


$$
\begin{array}{l} F (x) = P \left(r _ {p} \leq x\right) \text {a n d} \\ G (x) = P \left(r _ {b} \leq x\right), \quad x \text {r e a l} \\ \end{array}
$$

Here  $r_b$  is the benchmark return, say, the return of a market index, or just the risk-free rate (U.S. Treasury rate or LIBOR, for example).

Expression (4) can be represented as the mean absolute deviation between the two distribution functions  $F$  and  $G$ :

$$
G M (r _ {p}, r _ {b}) = \int_ {- \infty} ^ {+ \infty} | F (x) - G (x) | d x
$$

Given a sample or a distributional assumption for the benchmark return  $r_b$ , the latter expression can be used for estimating the Gini index by calculating the area between the graphs of the empirical distribution function of  $r_p$  and the (empirical) distribution function of  $r_b$ .

# Mean Entropy

In the mean entropy (M-entropy) approach, the dispersion measure is the exponential entropy. Exponential entropy is a dispersion measure only for portfolios with continuous return distribution because the definition of entropy for discrete random variables is formally different and does not satisfy the properties of the dispersion measures (positive and positively homogeneous). The concept of entropy was introduced in the last century in the classical theory of thermodynamics. Roughly speaking, it represents the average uncertainty in a random variable.

Probably its most important application in finance is to derive the probability density function of the asset underlying an option on the basis of the information that some option prices provide. Entropy was used also in portfolio theory by Philippatos and Wilson (1972) and Philippatos and Gressis (1975) and is defined as

$$
\text {E n t r o p y} = - E (\log f (r _ {p}))
$$ where  $f$  is the density of the portfolio return. Thus, the exponential entropy is given by


$$
E E \left(r _ {p}\right) = e ^ {- E \left(\log f \left(r _ {p}\right)\right)} \tag {5}
$$

The valuation of entropy can be done either by considering the empirical density of a portfolio or assuming that portfolio returns belong to a given family of continuous distributions and estimate their unknown parameters.

# Mean Colog

In the mean colog (M-colog) approach, the dispersion measure is the covariance between the random variable and its logarithm.7 That is, the colog of a portfolio return is defined as

$$
\begin{array}{l} \operatorname {C o l o g} \left(1 + r _ {p}\right) = E \left(r _ {p} \log \left(1 + r _ {p}\right)\right) \\ - E \left(r _ {p}\right) E \left(\log \left(1 + r _ {p}\right)\right) \tag {6} \\ \end{array}
$$

Colog can easily be estimated based on a sample of the portfolio return distribution by:

$$
\begin{array}{l} \operatorname {C o l o g} (1 + r _ {p}) \approx \frac {1}{T} \sum_ {k = 1} ^ {T} \left(r _ {p} ^ {(k)} - \bar {r} _ {p}\right) \cdot \left(\log (1 + r _ {p} ^ {(k)}) \right. \\ - \overline {{\log (1 + r _ {p})}}) \\ \end{array}
$$ where


$$
\overline {{\log (1 + r _ {p})}} = \frac {1}{T} \sum_ {k = 1} ^ {T} \log \left(1 + r _ {p} ^ {(k)}\right)
$$ denotes the sample mean of the logarithm of one plus the portfolio return.


# SAFETY-FIRST RISK MEASURES

Many researchers have suggested the safety-first rules as a criterion for decision making under uncertainty. In these models, a subsistence, a benchmark, or a disaster level of returns is identified. The objective is the maximization of the probability that the returns are above the benchmark. Thus, most of the safety-first risk measures proposed in the literature are linked to the benchmark-based approach.

Even if there are not apparent connections between the expected utility approach and a more appealing benchmark-based approach, Castagnoli and LiCalzi (1996) have proven that the expected utility can be reinterpreted in terms of the probability that the return is above a given benchmark. Hence, when it is assumed that investors maximize their expected utility, it is implicitly assumed that investors minimize the probability of the investment return falling below a specified risk benchmark.


Although it is not always simple to identify the underlying benchmark, expected utility theory partially justifies the using of the benchmark-based approach. Moreover, it is possible to prove that the two approaches are in many cases equivalent even if the economic reasons and justifications are different.[9]

Some of the most well-known safety-first risk measures proposed in the literature are described in the next section.

# Classical Safety First

In the classical safety-first portfolio choice problem the risk measure is the probability of loss or, more generally, the probability  $P_{\lambda} = P(r_{p}\leq \lambda)$  of portfolio return less than  $\lambda$ . Generally, safety-first investors have to solve a complex, mixed integer linear programming problem to find the optimal portfolios. However, when short sales are allowed and return distributions are elliptical, depending on a dispersion matrix  $Q$  and a vector mean  $\mu$ , then there exists a closed-form solution to the investor's portfolio selection problem:

$$
\begin{array}{l} \text {M i n i m i z e :} P (r _ {p} \leq \lambda) \\ \text {S u b j e c t} \quad t o: \sum_ {i = 1} ^ {N} x _ {t} = 1, x _ {i} \geq 0 \\ \end{array}
$$

The interesting property of this optimization problem is that we are able to express the set of optimal portfolios explicitly as a function of the shortfall barrier  $\lambda$ , the mean vector  $\mu$ , and the dispersion matrix  $Q$ . The mean  $m$  and the dispersion  $\sigma^2$  of these optimal portfolios can again be expressed as a function of the threshold  $\lambda$ , the mean vector  $\mu$ , and the dispersion matrix  $Q$ . In the case where the elliptical family has finite variance (as, for example, the normal distribution), then the dispersion  $\sigma^2$  corresponds to the variance.

As the risk measure consists of the probability that the return falls below a given barrier  $\lambda$ , we can estimate the risk measure by the ratio between the number of observations being smaller than  $\lambda$  and the total number of observations in the sample.


# Value at Risk

Value at risk  $(\mathrm{VaR}_{1 - \alpha})$  is a closely related possible safety-first measure of risk defined by the following equality:

$$
\operatorname {V a R} _ {1 - \alpha} (r _ {p}) = - \min  \{z | (P (r _ {p} \leq z) > \alpha) \} \tag {7}
$$

Here,  $1 - \alpha$  is denoted as the confidence level and  $\alpha$  usually takes values like  $1\%$  or  $5\%$ . Theoretically, the VaR figure defined by equation (7) can admit negative values. In reality, however, it is likely and often implicitly assumed that the VaR is positive, and it can be interpreted as the level at which the losses will not exceed with a probability of  $1 - \alpha\%$ . Sometimes VaR is, therefore, defined as the maximum of zero and the expression defined in equation (7) to guarantee a positive value for VaR.

VaR can be used as a risk measure to determine reward-risk optimal portfolios. Moreover, this simple risk measure can also be used by financial institutions to evaluate the market risk exposure of their trading portfolios. The main characteristic of VaR is that of synthesizing in a single value the possible losses that could occur with a given probability in a given temporal horizon. This feature, together with the (very intuitive) concept of maximum probable loss, allows the nonexpert investor to figure out how risky the position is and the correcting strategies to adopt. Based on a sample of return observations, VaR estimates coincide with the empirical alphaquantile. VaR and sophisticated methodologies for estimating VaR are explained in Chapter 14 of Rachev, Menn, and Fabozzi (2005).

# Conditional Value at Risk/Expected Tail Loss

The conditional value at risk  $(\mathrm{CVaR}_{1 - \alpha})$  or expected tail loss (ETL) is defined as:

$$
\begin{array}{l} \mathrm {C V a R} _ {1 - \alpha} (r _ {p}) = E (\max  (- r _ {p}, 0) | - r _ {p} \\ \geq \operatorname {V a R} _ {1 - \alpha} \left(r _ {p}\right)) \tag {8} \\ \end{array}
$$ where  $\mathrm{VaR}_{1 - \alpha}(X)$  is defined in equation (7) and we assume that portfolio return distribution is continuous. From this definition we observe that the CVaR can be seen as the expected shortfall assuming the  $\mathrm{VaR}_{1 - \alpha}(X)$  as the benchmark.


A sophisticated estimation of CVaR depends strongly on the estimation of VaR. An explanation and illustration of the calculation of CVaR is provided in Rachev, Menn, and Fabozzi (2005). Based on a large sample of observations, a natural estimate for CVaR can be obtained by averaging all observations in the sample that are smaller than the corresponding VaR estimate.

# MiniMax

An alternative way to derive some safety-first optimal portfolios is minimizing the MiniMax (MM) risk measure (see Young, 1998). The MiniMax of a portfolio return is given by:

$$
M M \left(r _ {p}\right) = - \sup  \left\{c \mid P \left(r _ {p} \leq c\right) = 0 \right\} \tag {9}
$$

This risk measure can be seen as an extreme case of CVaR.

# Lower Partial Moment

A natural extension of semivariance is the lower partial moment risk measure (see Bawa, 1976, and Fishburn, 1977) also called downside risk or probability-weighted function of deviations below a specified target return. This risk measure depends on two parameters:

1. A power index that is a proxy for the investor's degree of risk aversion.
2. The target rate of return that is the minimum return that must be earned to accomplish the goal of funding the plan within a cost constraint.

The lower partial moment of a portfolio  $r_p$  bounded from below is given by

$$
\operatorname {L P M} \left(r _ {p}, q\right) = \sqrt [ q ]{E \left(\max  \left(t - r _ {p} , 0\right) ^ {q}\right)} \tag {10}
$$ where  $q$  is the power index and  $t$  is the target rare of return.


Given a sample of return observations, we can approximate equation (10) as follows:

$$
\mathrm {L P M} (r _ {p}, q) = \sqrt [ q ]{\frac {1}{T} \sum_ {k = 1} ^ {T} \max \left(k _ {p} ^ {(k)} - \bar {r} _ {p} , 0\right) ^ {q}}
$$ where as before


$$
\bar {r} = \frac {1}{T} \sum_ {k = 1} ^ {T} r _ {p} ^ {(k)}
$$ denotes the sample mean of the portfolio return.


# Power Conditional Value at Risk

The power conditional value at risk measure, introduced in Rachev, Jasic, Biglova, and Fabozzi (2005), is the CVaR of the lower partial moment of the return. It depends on a power index that varies with respect to an investor's degree of risk aversion. Power CVaR generalizes the concept of CVaR and is defined as

$$
\begin{array}{l} \mathrm {C V a R} _ {q, 1 - \alpha} (r _ {p}) = E (\max (- r _ {p}, 0) ^ {q} | - r _ {p} \\ \geq \operatorname {V a R} _ {1 - \alpha} (r _ {p})) \tag {11} \\ \end{array}
$$

A sample version of power CVaR can be obtained in the same way as sample version for the regular CVaR, that is, one calculates the  $q$ -th sample moment of all observations in the sample that are smaller than the corresponding VaR estimate.

# KEY POINTS

- While the underpinning of financial theory is that the distribution of the return on financial assets is normally distributed, little evidence supports this assumption. Consequently, the justification for the use of the standard deviation or variance as a measure of risk in financial applications such as portfolio selection is difficult to justify.
- Alternative risk measures that can accommodate the properties of asset returns that have been observed in financial markets have been proposed.

- Alternative risk measures include dispersion measures and safety-first risk measures.
- Dispersion measures include mean standard deviation, mean absolute deviation, mean absolute moment, index of dissimilarity, mean entropy, and mean colog.
- Safety-first risk measures include classical safety first, value at risk, conditional value at risk, expected tail loss, MiniMax, lower partial moment, downside risk, probability-weighted function of deviations below a specified target return, and power conditional value at risk.

# NOTES

1. See Ryan and Fabozzi (2002).
2. The mean semivariance approach was revisited by Stefani and Szegö (1976).
3. For more details, see Rachev, Menn, and Fabozzi (2006).
4. See Konno and Yamazaki (1991), Zenios and Kang (1993), Speranza (1993), and Ogryczak and Ruszczynski (2001).
5. For a further discussion of this index, see Rachev (1991).
6. See Buchen and Kelly (1996) and Avellaneda (1998).
7. See Giacometri and Ortobelli (2001).
8. See, among others, Roy (1952), Tesler (1955/6), and Bawa (1976, 1978).
9. See Castagnoli and LiCalzi (1996, 1999), Bordley and LiCalzi (2000), Ortobelli and Rachev (2001), Rachev and Mittnik (2000, pp. 424-464), and Rachev, Ortobelli, and Schwartz (2004).
10. See Bawa (1978), Uryasev (2000), and Martin, Rachev, and Siboulet (2003).

# REFERENCES

Artzner, P., Delbaen, F., Eber, J-M, and Heath, D. (2000). Coherent measures of risk. Mathematical Finance 9: 203-228.
Artzner, P., Delbaen, F., Eber, J-M, Heath, D., and Ku, H. (2003). Coherent multiperiod measures of risk. Unpublished paper.

Avellaneda, M. (1998). Minimum entropy calibration of asset pricing models. International Journal of Theoretical and Applied Finance 1: 447-472.

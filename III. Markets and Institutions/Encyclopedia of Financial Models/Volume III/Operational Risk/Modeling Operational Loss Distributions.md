
---
title: "Modeling Operational Loss Distributions"
parent_directory: "Operational Risk"
formatted: "2025-12-21 07:15:00 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
   - operational risk modeling
   - loss distribution analysis
   - parametric distributions
   - tail behavior analysis
   - mixture distributions
secondary_tags:
   - nonparametric approach
   - empirical distribution
   - exponential distribution
   - lognormal distribution
   - weibull distribution
   - gamma distribution
   - beta distribution
   - pareto distribution
   - burr distribution
   - goodness of fit tests
   - empirical studies
   - kolmogorov-smirnov test
   - anderson-darling test
   - extreme value theory
   - generalized pareto distribution
cssclasses: academia
---

# Modeling Operational Loss Distributions

**Anna Chernobai, PhD**  
Assistant Professor of Finance, M. J. Whitman School of Management, Syracuse University

**Svetlozar T. Rachev, PhD, Dr Sci**  
Frey Family Foundation Chair Professor, Department of Applied Mathematics and Statistics, Stony Brook University, and Chief Scientist, FinAnalytica

**Frank J. Fabozzi, PhD, CFA, CPA**  
Professor of Finance, EDHEC Business School

Abstract: A major risk faced by financial entities is operational risk. In general terms, operational risk is the risk of loss resulting from inadequate or failed internal processes, people, or systems or from external events. The two principal approaches in modeling operational loss distributions are the nonparametric approach and the parametric approach. It is important to employ a model that captures tail events and for this reason in operational risk modeling, distributions that are characterized as light-tailed distributions should be used with caution.

For financial entities, representing a stream of uncertain operational losses with a specified model is a difficult task: Data can be wrongly recorded, fuzzy, incomplete (e.g., truncated or censored), or simply limited. Two main approaches may be undertaken: nonparametric and parametric. In this entry, we focus on the nonparametric approach, common loss distributions, and mixture distributions. We begin by reviewing the nonparametric approach to modeling operational losses and then proceed to the parametric approach and review some common continuous distributions that can be relevant for modeling operational losses. For each of the distributions, we focus on its major characteristics that are important when using them to model the operational loss data: density, distribution, tail behavior, mean, variance, mode, skewness, and kurtosis.


# APPROACHES TO OPERATIONAL RISK MODELING

The two main approaches to operational risk modeling are:

1. Nonparametric approach. One approach would be to directly use the empirical density of the data or its smoothed curve version. $^{1}$  This nonparametric approach can be relevant in two circumstances: first, when the available data are not believed to follow any conventional distribution,2 and second, when the data set available at hand is believed to be sufficiently comprehensive.3


Figure 2 summarizes possible approaches to modeling operational loss severity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/bf6f071bfd989807b7aa2de21b86cce9fdafdec65d77a8ae01194c235c4426c6.jpg)
Figure 1 Illustration of a Histogram of Loss Data and Fitted Continuous Density

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/ce262bfda45e4fac834f9691a4d9d2ac910ab658d8c48cb55c3cbbe90cce0a73.jpg)
Figure 2 Approaches to Modeling Loss Severity

# NONPARAMETRIC APPROACH: EMPIRICAL DISTRIBUTION FUNCTION

Modeling operational losses with their empirical distribution function is a nonparametric approach as it does not involve estimation of the parameters of a loss distribution. In this sense, it is the simplest approach. On the other hand, it makes the following two critical assumptions regarding future loss data:

- Historic loss data are sufficiently comprehensive.
- All past losses are equally likely to reappear in the future, and losses of other magnitudes (such as potential extreme events that are not a part of existent database) cannot occur.

Suppose we want to find the empirical distribution function of a random variable  $X$ . It is found by:

$$
P(X \leq x) = \frac{\text{number of losses} \leq x}{\text{total number of losses}}
$$

The empirical distribution function looks like a step function, with a step up occurring at each observed value of  $X$ . Figure 3 provides an illustration. The density function is simply a relative frequency histogram with a bar at each observed data value, and the height of each bar shows the proportion of losses of this magnitude out of total.

Note that the empirical distribution is often used in goodness-of-fit tests. One can compare it with a fitted loss distribution, and if the fitted loss distribution follows closely the empirical distribution, then this indicates a good fit; if it does not follow closely the empirical distribution function, then the loss distribution is not optimal.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/81f38fd8570028215cbc2e2080ecfef9dc9981297cecb6d8b70567f14c21c37c.jpg)
Figure 3 Illustration of Empirical Distribution Function


# PARAMETRIC APPROACH: CONTINUOUS LOSS DISTRIBUTIONS

In this section, we review several popular loss distributions. Certainly, a variety of additional distributions may be created by using some transformation of the original data and then fitting a distribution to the transformed data. A popular transformation involves taking the natural logarithm of the data. It is notable that if the original data are severely right-skewed, then the distribution of the log-data often becomes "bell-shaped" and nearly symmetric. For example, fitting the normal distribution to the log-data is equivalent to fitting the lognormal distribution to the original data.

# Exponential Distribution

The exponential distribution for a random variable  $X$  of length  $n$  is described by its density  $f$  and distribution  $F$  of the following form:

$$
f(x) = \lambda e^{-\lambda x}, \quad F(x) = 1 - e^{-\lambda x}, \quad x > 0
$$

The distribution is characterized by only one parameter $\lambda$ ($\lambda > 0$), which is the scale parameter.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/16b2a7000ab34c42e7f95bb0b56e5ee85fd6510dd9d9f797de4b64ef337dfebc.jpg)
Figure 4 Illustration of Exponential Density

Examples of exponential densities are illustrated in Figure 4. The maximum likelihood estimate (MLE) for  $\lambda$  is

$$
\hat {\lambda} = \frac{1}{\bar {x}} \quad \text{where} \quad \bar {x} = \frac{1}{n} \sum_{j = 1}^{n} x_{j}
$$

Raw moments are calculated as:

$$
\mathbb {E} (X^{k}) = \frac{k !}{\lambda^{k}}
$$ and so the population mean and variance are


$$
\operatorname{mean}(X) = 1/\lambda, \quad \operatorname{var}(X) = 1/\lambda^{2}
$$

The mode of an exponential distribution is located at zero. The skewness and kurtosis coefficients are  $\gamma_{1} = 2$  and  $\gamma_{2} = 6$ , respectively.

The inverse of the distribution has a simple form  $F^{-1}(p) = -1 / \lambda \log (1 - p), p \in (0, 1)$  and so an exponential random variate can be simulated using the inverse transform method by  $X = -\frac{1}{\lambda} \log U$ , where  $U$  is distributed uniformly on the  $(0, 1)$  interval. Another popular simulation method uses the Von Neumann algorithm.

The exponential density is monotonically decreasing toward the right and is characterized by an exponentially decaying right tail of the form  $\bar{F} (x) = e^{-\lambda x}$ , which means that high-magnitude events are given a near-zero probability. For this reason, it is unlikely that it would find much use in modeling operational losses, where arguably the central concern is the losses of a very high magnitude (unless, perhaps, some generalizations of the exponential distribution or mixture models are considered).


Note that another parameterization of the exponential distribution is possible, with the density specified as  $f(x) = \frac{1}{\lambda} e^{-\frac{1}{\lambda} x}$ .

# Lognormal Distribution

A random variable  $X$  has a lognormal distribution if its density and distribution are:

$$
f(x) = \frac{1}{\sqrt{2\pi\sigma x}} e^{-\frac{(\log x - \mu)^{2}}{2\sigma^{2}}}
$$

$$
F(x) = \Phi\left(\frac{\log x - \mu}{\sigma}\right), \quad x > 0
$$ where  $\Phi (x)$  is the distribution of a standard normal,  $N(0,1)$ , random variable, and can be obtained by looking up the table of the standard normal quantiles.


Examples of the lognormal density are illustrated in Figure 5. The parameters  $\mu$ $(-\infty < \mu < \infty)$  and  $\sigma$ $(\sigma > 0)$  are the location and scale parameters, respectively, and can be estimated with MLE as:

$$
\hat {\mu} = \frac{1}{n} \sum_{j = 1}^{n} \log x_{j}, \quad \widehat {\sigma^{2}} = \frac{1}{n} \sum_{j = 1}^{n} (\log x_{j} - \hat {\mu})^{2} \tag {1}
$$

Raw moments are calculated as:

$$
\mathbb {E} (X^{k}) = e^{\mu k + \frac{\sigma^{2} k^{2}}{2}}
$$ and so the population mean and variance are calculated to be

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/764fc66e7ea3b776db20adca61d54717069408cc49449b3f6a64eae2be4a1ded.jpg)
Figure 5 Illustration of Lognormal Density


$$
\operatorname{mean}(X) = e^{\mu + \frac{\sigma^{2}}{2}}, \quad \operatorname{var}(X) = \left(e^{\sigma^{2}} - 1\right) e^{2\mu + \sigma^{2}}
$$

The mode is located at  $e^{\mu -\sigma^2}$ . The skewness and kurtosis coefficients are:

$$
\begin{array}{l} \gamma_{1} = \sqrt{e^{\sigma^{2}} - 1} (2 + e^{\sigma^{2}}) \\ \gamma_{2} = e^{4 \sigma^{2}} + 2 e^{3 \sigma^{2}} + 3 e^{2 \sigma^{2}} - 6 \\ \end{array}
$$

The inverse of the distribution is  $F^{-1}(p) = e^{\Phi^{-1}(p)\sigma + \mu}$ , and so a lognormal random variate can be simulated by  $X = e^{\Phi^{-1}(U)\sigma + \mu}$ , where  $\Phi$  is the standard normal distribution. Note that a lognormal random variable can be obtained from a normal random variable  $Y$  with parameters  $\mu$  and  $\sigma$  (this is often written as  $N(\mu, \sigma)$ ) via the transformation  $X = e^{Y}$ . Thus, if  $X$  has a lognormal distribution, then  $\log X$  has a normal distribution with the same parameters.

The lognormal distribution is characterized by moderately heavy tails, with the right tail  $\bar{F} (x)\sim x^{-1}e^{-\log^2 x}$ . To fit a lognormal distribution to the data, one can take the natural logarithm of the dataset, and then fit to it the normal distribution. Note that the MLE will produce the same estimates, but the method of moments will produce different parameter estimates.

# Weibull Distribution

The Weibull distribution is a generalization of the exponential distribution: Two parameters instead of one parameter allow for greater flexibility and heavier tails. The density and distribution are

$$
f(x) = \alpha\beta x^{\alpha-1} e^{-\beta x^{\alpha}}, \quad F(x) = 1 - e^{-\beta x^{\alpha}}, \quad x > 0
$$ with  $\beta (\beta >0)$  being the scale parameter and  $\alpha$ $(\alpha >0)$  the shape parameter.


Examples of the density are illustrated in Figure 6. The MLE estimators for the parameters do not exist in closed form, and should be evaluated numerically. Raw moments are calculated as:

$$
\mathbb {E} (X^{k}) = \beta^{- k / \alpha} \Gamma \left(1 + \frac{k}{\alpha}\right)
$$ and so the population mean and variance are:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/06b43f456346babd0cf07c317f77f6805e7d14ef8319104f49d076122b7c8a7c.jpg)
Figure 6 Illustration of Weibull Density

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/9e36facb2baf0236d6874689633e885850f6c576301efdf118e4acc90b49fc75.jpg)
Figure 7 Illustration of Gamma Density


$$
\begin{array}{l} \operatorname{mean}(X) = \beta^{-1/\alpha} \Gamma\left(1 + \frac{1}{\alpha}\right) \\ \operatorname{var}(X) = \beta^{-2/\alpha} \left(\Gamma\left(1 + \frac{2}{\alpha}\right) - \Gamma^{2}\left(1 + \frac{1}{\alpha}\right)\right) \\ \end{array}
$$

The mode is located at  $\beta^{-1}(1 - \alpha^{-1})^{1 / \alpha}$  for  $\alpha >0$  and at zero otherwise. The formulae for the skewness and kurtosis coefficients are:

$$
\begin{array}{l} \gamma_{1} = \frac{2 \Gamma^{3} (1 + \frac{1}{\alpha}) - 3 \Gamma (1 + \frac{1}{\alpha}) \Gamma (1 + \frac{2}{\alpha}) + \Gamma (1 + \frac{3}{\alpha})}{\left[ \Gamma (1 + \frac{2}{\alpha}) - \Gamma^{2} (1 + \frac{1}{\alpha})^{3 / 2} \right]} \\ \gamma_{2} = \frac{-6 \left[ \Gamma^{4} (1 + \frac{1}{\alpha}) - 12 \Gamma^{2} (1 + \frac{1}{\alpha}) \Gamma (1 + \frac{2}{\alpha}) - 3 \Gamma^{2} (1 + \frac{2}{\alpha}) - 4 \Gamma (1 + \frac{1}{\alpha}) \Gamma (1 + \frac{3}{\alpha}) + \Gamma (1 + \frac{4}{\alpha}) \right]}{\left[ \Gamma (1 + \frac{2}{\alpha}) - \Gamma^{2} (1 + \frac{1}{\alpha}) \right]^{2}} \\ \end{array}
$$

The inverse of a Weibull random variable does not exist in a simple closed form. To generate a Weibull random variable, one can first generate an exponential random variable  $Y$  with parameter  $\beta$  and then follow the transformation  $X = Y^{1 / \alpha}$ .

The right tail behavior of a Weibull random variable follows the form  $\bar{F} (x) = e^{\beta x^{\alpha}}$ , and so the distribution is heavy-tailed for  $\alpha < 1$ . Weibull distribution has been found to be the optimal distribution in reinsurance models as well as in asset returns models.

Note the following regarding the Weibull distribution. First, if  $\alpha = 1$ , then the Weibull distribution reduces to the exponential distribution. Second, other parameterizations of the Weibull distribution are possible. For example, some authors use  $1 / \beta$  instead of  $\beta$ . Sometimes  $1 / \beta^{\alpha}$  is used instead of  $\beta$ .


# Gamma Distribution

The gamma distribution is another generalization of an exponential distribution and is specified by its density and distribution given by


$$
\begin{array}{l} f (x) = \frac{\beta^{\alpha}}{\Gamma (\alpha)} x^{\alpha - 1} e^{- \beta x} \\ F (x) = \Gamma (\alpha; \beta x), \quad x > 0 \\ \end{array}
$$ where the two parameters,  $\alpha$  ( $\alpha > 0$ ) and  $\beta$  ( $\beta > 0$ ), characterize the shape and scale, respectively.


Examples of the density are illustrated in Figure 7. The MLE estimates for the parameters can be only evaluated numerically. The raw moments are found by:

$$
\mathbb {E} (X^{k}) = \frac{\Gamma (\alpha + k)}{\Gamma (\alpha) \beta^{k}}
$$ yielding the population mean and variance as


$$
\operatorname{mean}(X) = \frac{\alpha}{\beta}, \quad \operatorname{var}(X) = \frac{\alpha}{\beta^{2}}
$$

The mode is  $\frac{\alpha - 1}{\beta}$  for  $\alpha > 1$  and zero otherwise. The skewness and kurtosis coefficients are found by

$$
\gamma_{1} = \frac{2}{\sqrt{\alpha}}, \quad \gamma_{2} = \frac{6}{\alpha}
$$

If  $\alpha$  is an integer, then to generate a gamma random variable with parameters  $\alpha$  and  $\beta$  one can generate a sum of  $\alpha$  exponential random variables each with parameter  $\beta$ . Hence, if  $U_{1}, U_{2}, \ldots, U_{\alpha}$  are independent uniform  $(0, 1)$  random variables, then  $X = -1 / \beta \log (\Pi_{j=1}^{\alpha} U_{j})$  has the desired distribution. A variety of methods for generation of a gamma random variable is described in Devroye (1986).

# Beta Distribution

The beta distribution has density and distribution of the following form:11

$$ f (x) = \frac{\Gamma (\alpha + \beta)}{\Gamma (\alpha) \Gamma (\beta)} x^{\alpha - 1} (1 - x)^{\beta - 1}
$$

$$
F (x) = I (x; \alpha , \beta), \quad 0 \leq x \leq 1
$$

Examples of the density are illustrated in Figure 8. Note that  $X$  has a bounded support on [0, 1]. Certainly, operational loss data may be rescaled to fit this interval. In this case, the following version of the beta density and distribution is possible (the parameter $\theta$ is assumed known):

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/7ff28fdb3b6d1e27ecfa8c2f9c70845e22bd69a19e057a6d84bf0e17c68710b4.jpg)
Figure 8 Illustration of Beta Density


$$ f (x) = \frac{\Gamma (\alpha) \Gamma (\beta)}{\Gamma (\alpha + \beta)} \left(\frac{x}{\theta}\right)^{\alpha - 1} \left(1 - \frac{x}{\theta}\right)^{\beta - 1} \frac{1}{x}
$$

$$
F (x) = I \left(\frac{x}{\theta}; \alpha , \beta\right), \quad 0 <   x <   \theta , \quad \theta > 0
$$

The parameters  $\alpha$  ( $\alpha > 0$ ) and  $\beta$  ( $\beta > 0$ ) determine the shape of the distribution. The MLE estimators can be evaluated numerically. The raw moments for the regular version of the beta density can be found by

$$
\mathbb {E} (X^{k}) = \frac{(\alpha + \beta - 1) ! (\alpha + k - 1) !}{(\alpha - 1) ! (\alpha + \beta + k - 1) !}
$$ yielding the mean and the variance:


$$
\operatorname{me an} (X) = \frac{\alpha}{\alpha + \beta}
$$

$$
\operatorname{var}(X) = \frac{\alpha \beta}{(\alpha + \beta)^{2} (\alpha + \beta + 1)}
$$

The mode is equal to  $(\alpha - 1) / (\alpha + \beta - 2)$ . The skewness and kurtosis coefficients are estimated by

$$
\gamma_{1} = \frac{2 (\beta - \alpha) \sqrt{1 + \alpha + \beta}}{\sqrt{\alpha + \beta} (2 + \alpha + \beta)}
$$

$$
\gamma_{2} = \frac{6 [ \alpha^{3} + \alpha^{2} (1 - 2 \beta) + \beta^{2} (1 + \beta) - 2 \alpha \beta (2 + \beta) ]}{\alpha \beta (\alpha + \beta + 2) (\alpha + \beta + 3)}
$$

The beta random variate can be generated using an algorithm described in Ross (2001, 2002) or Devroye (1986).

Note that the beta distribution is related to the gamma distribution. Suppose we have two gamma random variables  $X$  and  $Y$  with parameters  $\alpha_{1}, \beta_{1}$  and  $\alpha_{2}, \beta_{2}$ , respectively. Then the variable  $Z = X / (X + Y)$  has a beta distribution with parameters  $\alpha_{1}, \alpha_{2}$ . This property can be used to generate a beta random variate from two gamma random variates.

# Pareto Distribution

The Pareto distribution is characterized by its density and distribution of the form:

$$
f(x) = \frac{\alpha \beta^{\alpha}}{x^{\alpha + 1}}, \quad F(x) = 1 - \left(\frac{\beta}{x}\right)^{\alpha}, \quad \beta < x < \infty
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/fcfc9c610a32c337cda8c25246053c30ac3b3c16dbafeb7c115f7c3269d32a88.jpg)
Figure 9 Illustration of Pareto Density

Note that the range of permissible values of  $X$  depends on the scale parameter  $\beta$  ( $\beta > 0$ ). The parameter  $\alpha$  ( $\alpha > 0$ ) determines the shape.

Figure 9 illustrates some examples of the density. No closed-form expressions for the MLE estimators exist (except for the case when  $\beta = 1$ , in which case  $\widehat{\alpha} = n / \sum_{j=1}^{n} \log x_j$ ), so they have to be evaluated numerically.

The raw moments are estimated by

$$
\mathbb {E} (X^{k}) = \frac{\alpha \beta^{k}}{\alpha - k}
$$ from which the population mean and variance are found to be


$$
\operatorname{mean}(X) = \frac{\alpha \beta}{\alpha - 1} \quad \text{for } \alpha > 1
$$

$$
\operatorname{var}(X) = \frac{\alpha \beta^{2}}{(\alpha - 1)^{2} (\alpha - 2)} \quad \text{for } \alpha > 2
$$

The mode is equal to zero. The skewness and kurtosis coefficients are:

$$
\gamma_{1} = \sqrt{\frac{\alpha - 2}{\alpha}} \frac{2 (\alpha + 1)}{\alpha - 3}
$$

$$
\gamma_{2} = \frac{6 (\alpha^{3} + \alpha^{2} - 6 \alpha - 2)}{\alpha (\alpha - 3) (\alpha - 4)}
$$

The inverse of the distribution is  $F^{-1}(p) = \beta((1 - p)^{-1/\alpha} - 1)$ , which can be used to generate a Pareto random variate.

The Pareto distribution is a very heavy-tailed distribution, as is seen from the tail behavior.  $\alpha$  determines the heaviness of the right tail, which is monotonically decreasing for the Pareto distribution: The closer it is to zero, the thicker the tail,  $\bar{F} (x) = \left(\frac{\beta}{\beta + x}\right)^{\alpha}$ . Tails proportional to  $x^{-\alpha}$  are called the power tails (as opposed to the exponentially decaying tails) because they follow a power function. The case when  $\alpha \leq 1$  refers to a very heavy-tailed case, in which the mean and the variance are infinite (see the formulas for mean and variance earlier), means that losses of an infinitely high magnitude are possible.


While on one hand the Pareto distribution appears very attractive for modeling operational risk, as it is expected to capture very high-magnitude losses, on the other hand, from the practical point of view, the possibility of infinite mean and variance could pose a problem.

Note the following:

- Different versions of the Pareto distribution are possible. Occasionally a simplified, 1-parameter version of the Pareto distribution is used, with  $\beta = 1$ .
- A 1-parameter Pareto random variable may be obtained from an exponential random variable via a simple transformation. If a random variable  $Y$  follows an exponential distribution with parameter  $\lambda$ , then  $X = e^{Y}$  has the 1-parameter Pareto distribution with the same shape parameter.
- A 2-parameter Pareto distribution may be reparameterized in such a way that we obtain the generalized Pareto distribution (GPD). The GPD can be used to model extreme events that exceed a high threshold.

# Burr Distribution

The Burr distribution is a generalized three-parameter version of the Pareto distribution and allows for greater flexibility in the shape due to additional shape parameter  $\gamma$  ( $\gamma > 0$ ). The density and distribution functions can be written as

$$
\begin{array}{l} f(x) = \gamma \alpha \beta^{\alpha} \frac{x^{\gamma - 1}}{(\beta + x^{\gamma})^{\alpha + 1}} \\ F(x) = 1 - \left(\frac{\beta}{\beta + x^{\gamma}}\right)^{\alpha}, \quad x > 0 \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/fb8d08d758e7a28735ac661764e441f05fdc2cb3972687a460e6786e00efc4a6.jpg)
Figure 10 Illustration of Burr Density

Examples of the density are depicted in Figure 10. The MLE estimators for the parameters can generally be evaluated only numerically. The raw moments are estimated as:

$$
\begin{array}{l} \mathbb{E}(X^{k}) = \frac{\beta^{k / \gamma}}{\Gamma(\alpha)} \Gamma\left(1 + \frac{k}{\gamma}\right) \Gamma\left(\alpha - \frac{k}{\gamma}\right), \\ -\gamma < k < \gamma \alpha \\ \end{array}
$$ from which the population mean and variance are calculated as:


$$
\begin{array}{l} \operatorname{mean}(X) = \frac{\beta^{1 / \gamma}}{\Gamma(\alpha)} \Gamma\left(1 + \frac{1}{\gamma}\right) \Gamma\left(\alpha - \frac{1}{\gamma}\right) \\ \gamma \alpha > 1 \\ \end{array}
$$

$$
\begin{array}{l} \operatorname{var}(X) = \frac{\beta^{2 / \gamma}}{\Gamma(\alpha)} \Gamma\left(1 + \frac{2}{\gamma}\right) \Gamma\left(\alpha - \frac{2}{\gamma}\right) \\ - \frac{\beta^{2 / \gamma}}{\Gamma^{2}(\alpha)} \Gamma^{2}\left(1 + \frac{1}{\gamma}\right) \Gamma^{2}\left(\alpha - \frac{1}{\gamma}\right), \\ \gamma \alpha > 2 \\ \end{array}
$$

The mode is equal to  $\frac{1}{\beta^{1 / \gamma}}\left(\frac{\gamma - 1}{\alpha\gamma + 1}\right)^{1 / \gamma}$  for  $\gamma >1$  and zero otherwise.

The Burr random variable can be generated by the inverse transform method, using  $F^{-1}(p) = (\beta ((1 - p)^{-1 / \alpha} - 1))^{1 / \gamma}$ .

The right tail has the power law property and obeys  $\bar{F} (x) = \left(\frac{\beta}{\beta + x^{\gamma}}\right)^{\alpha}$ . The distribution is heavy-tailed for the case  $\alpha < 2$  and is very heavy-tailed when  $\alpha < 1$ . The Burr distribution has been used in the insurance industry, and has been found to be an optimal distribution for natural catastrophe insurance claims.[12]

Note the following two points. First, if  $\gamma = 1$ , then the Burr distribution reduces to the Pareto distribution. Second, other parameterizations of the Burr distribution are possible. For example, the Burr distribution with  $\beta = 1$  is known as the loglogistic distribution.

# EXTENSION: MIXTURE LOSS DISTRIBUTIONS

Histograms of the operational loss data often reveal a very high peak close to zero and a smaller but distinct peak toward the right tail. This may suggest that the operational loss data often do not follow a pattern of a single distribution, even for data belonging to the same loss type (such as operational losses due to business disruptions) and the same business line (such as commercial banking). One approach in modeling such losses would be to consider the GPD to model the tail events and an empirical or other distribution for the remaining lower-magnitude losses. Alternatively, one may consider a single distribution composed by a mixture of two or more loss distributions.

The density and distribution of a  $m$ -point mixture distribution can be expressed as

$$
f(x) = \sum_{j = 1}^{m} w_{j} f_{j}(x), \quad F(x) = \sum_{j = 1}^{m} w_{j} F_{j}(x)
$$ where  $w_{j}, j = 1,2,\dots,m$ , are the positive weights attached to each member distribution, adding up to 1. It is possible to have a mixture of different types of distributions, such as exponential and Weibull, or of the same type of distribution but with different parameters.


An example of a mixture of two lognormal distributions  $(\mu_{1} = 0.9, \sigma_{1} = 1, \mu_{2} = 3, \sigma_{2} = 0.5)$  is depicted in Figure 11.

```d2
direction: right

mixture_concept: Mixture Distribution {
  shape: hexagon
  style.fill: "#e1f5fe"
  style.stroke: "#0277bd"
}

component_1: Lognormal Distribution 1 {
  shape: rectangle
  style.fill: "#fff3e0"
  μ: 0.9
  σ: 1.0
  weight: w₁
}

component_2: Lognormal Distribution 2 {
  shape: rectangle
  style.fill: "#f3e5f5"
  μ: 3.0
  σ: 0.5
  weight: w₂
}

result: Combined Mixture {
  shape: hexagon
  style.fill: "#e8f5e8"
  style.stroke: "#2e7d32"
  formula: f(x) = w₁·f₁(x) + w₂·f₂(x)
}

mixture_concept -> component_1: Component 1
mixture_concept -> component_2: Component 2
component_1 -> result: Weighted Sum
component_2 -> result: Weighted Sum
```

The MLE estimates of the parameters (including the weights) of mixture distributions can generally be evaluated only numerically. A commonly used procedure to estimate the parameters of mixture distributions is the expectation-maximization algorithm. The raw moments are found as the weighted sum of the  $k$ th moments evaluated individually for each of the  $m$  member distributions. The population mean and variance are found by

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/24138d580a5deba800b7dcb8dbdefeeae8ad2a78c25760b677499facf1d22877.jpg)
Figure 11 Illustration of 2-Point Lognormal Mixture Density


$$
\operatorname{mean}(X) = \sum_{j = 1}^{m} w_{j} \mathbb{E}_{j}(X), \quad \operatorname{var}(X) = \sum_{j = 1}^{m} w_{j}^{2} \sigma_{j}^{2}(X)
$$ where the subscripts  $j$  refer to each member density. The right tail follows  $\bar{F} (x) = \sum_{j = 1}^{m}w_{j}\bar{F}_{j}(x)$


The advantage of using mixture distributions is that they can be fitted to practically all shapes of loss distributions. On the other hand, the models may lack reliability due to a large number of parameters that need to be estimated (in particular, when the available loss data set is not large enough). For example, a 2-point mixture of exponential distributions requires only three parameters, but a 4-point mixture of exponential distributions requires seven parameters. In some cases, this problem may be overcome when certain simplifications are applied to the model. For example, it is possible to achieve a 2-point mixture of Pareto distributions with four, instead of five, unknown parameters; the following distribution has been successfully applied to liability insurance:

$$
F(x) = 1 - a \left(\frac{\beta_{1}}{\beta_{1} + x}\right)^{\alpha} + (1 - a) \left(\frac{\beta_{2}}{\beta_{2} + x}\right)^{\alpha + 2}
$$ with the first distribution covering smaller magnitude events and having a higher weight  $a$  attached, and the second distribution covering infrequent large-magnitude events.[13]


An extension to mixture distributions may be to allow  $m$  to be a parameter, and "let the data decide" on how many distributions should enter the mixture. This, however, makes the model data-dependent and more complex.[14]

Note that the term mixture distribution is sometimes also used for distributions in which an unknown parameter is believed to be random and follows some distribution rather than being fixed. For example, a mixture of Poisson and gamma distributions (i.e., the parameter of the Poisson distribution follows a gamma distribution) will result in a hypergeometric distribution.

# A NOTE ON THE TAIL BEHAVIOR

Operational risk managers are concerned with finding a model that would capture the "tail events." In the context of operational losses, it is understood that tail events refer to the events in the upper tail of the loss distribution. A crucial task in operational risk modeling is to produce a model that would give a realistic account to the possibility of losses exceeding a very high amount (this becomes critical in the estimation of the Value-at-Risk).

In operational risk modeling, thin-tailed distributions should be used with caution. The following example illustrates the danger of fitting a light-tailed distribution to the data whose true distribution is heavy-tailed.[15] We generated 5,000 points from the Pareto distribution (heavy-tailed) with parameters  $\alpha = 1.67$  and  $\beta = 0.6$ . We then fitted an exponential distribution (light-tailed) to the data. The MLE procedure resulted in the exponential parameter of  $\lambda = 1.61$ . Figure 12 demonstrates the difference in the behavior of the tails of both distributions. In the far right, the probability of exceeding any high point is significantly lower (roughly, by $5\%$ ) under the exponential fit.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/2ee52964346c45492ab0946f8d682deb619e162dc7aebdacc9b14b0dac2c35f7.jpg)
Figure 12 Tails of Pareto and Exponential Distributions Fitted to Simulated Pareto Random Variable

This indicates that the probability of high-value events (and exceeding them) will be underestimated if one commits the mistake of fitting a thin-tailed loss distribution to the loss data. Such mistakes may be costly and lead to serious consequences in the operational risk management, if the potential for high-magnitude losses is being inadequately assessed.

In Table 1 common distributions are classified into two categories depending on the heaviness of the right tail. Note that the Weibull distribution can be thin-tailed or heavy-tailed depending on the value of the shape parameter. Regarding the lognormal distribution, some literature refers to it as a thin-tailed distribution, but we follow Embrechts, Kluppelberg, and Mikosch (1997), who put it in the class of medium-tailed distributions. The beta distribution has a bounded support, which makes it a thin-tailed distribution.


# EMPIRICAL EVIDENCE WITH OPERATIONAL LOSS DATA

In this section we provide results from empirical studies based on operational loss data that apply the distributions described in this entry. There are two types of studies: Those based on real operational loss data and those based on simulated data.

The empirical studies indicate that practitioners try a variety of possible loss distributions for the loss data and then determine an optimal one on the basis of goodness-of-fit tests. It is common to use the Kolmogorov-Smirnov (KS) and Anderson-Darling (AD) tests to examine the goodness of fit of the model to the data. The two tests use different measures of the discrepancy between the fitted continuous distribution and the empirical distribution functions. The KS test better captures the discrepancy around the median of the data, while the AD test is more optimal for the tails. A smaller value of the test statistic indicates a

Table 1 Tail Behavior of Common Loss Distributions

<table><tr><td>Name</td><td>Tail F(x)</td><td>Parameters</td></tr><tr><td colspan="3">Thin-Tailed Distributions</td></tr><tr><td>Normal</td><td>F(x) = 1 - Φ(x-μ/σ)</td><td>-∞ &lt; μ &lt; ∞, σ &gt; 0</td></tr><tr><td>Exponential</td><td>F(x) = e-λx</td><td>λ &gt; 0</td></tr><tr><td>Gamma</td><td>F(x) = 1 - Γ(α; βx)</td><td>α, β &gt; 0</td></tr><tr><td>Weibull</td><td>F(x) = e-βxα</td><td>α ≥ 1, β &gt; 0</td></tr><tr><td>Beta</td><td>F(x) = 1 - I(x; α, β)</td><td>α, β &gt; 0</td></tr><tr><td colspan="3">Medium-Tailed and Heavy-Tailed Distributions</td></tr><tr><td>Lognormal</td><td>F(x) = 1 - Φ(log x-μ/σ)</td><td>-∞ &lt; μ &lt; ∞, σ &gt; 0</td></tr><tr><td>Weibull</td><td>F(x) = e-βxα</td><td>0 &lt; α &lt; 1, β &gt; 0</td></tr><tr><td>Pareto</td><td>F(x) = (β/β+x)α</td><td>α, β &gt; 0</td></tr><tr><td>Burr</td><td>F(x) = (β/β+xγ)α</td><td>α, β, γ &gt; 0</td></tr></table> better fit. Other goodness-of-fit tests include Kuiper, Cramér-von Mises, and Pearson's  $\chi^2$  test, among others.


# Studies with Real Data

We review some empirical studies based on real operational loss data from financial institutions.

# Müller Study of 1950-2002 Operational Loss Data

Müller (2002) carried out empirical analysis with external operational loss data obtained from worldwide institutions in the 1950-2002 period, made available then by the IC² Operational Loss F1RST Database. Only data in U.S. dollars for the events whose state of affairs was "closed" or "assumed closed" on an indicated date were considered for the analysis. The data were available for five loss types:

- "Relationship" (such as events related to legal issues, negligence, and sales-related fraud).
- "Human" (such as events related to employee errors, physical injury, and internal fraud).
- "Processes" (such as events related to business errors, supervision, security, and transactions).
- "Technology" (such as events related to technology and computer failures and telecommunications).
- "External" (such as events related to natural and man-made disasters and external fraud).

Figure 13 shows the histograms of the five data sets. There is a clear peak in the beginning, which is captured by the excessive kurtosis; a heavy right tail is also evident and is captured by the high degree of positive skewness (see Table 2).

From the common distributions discussed in this entry, exponential, lognormal, Weibull, gamma, and Pareto distributions were used. Table 2 demonstrates the five samples' MLE parameter estimates and KS and AD statistic values for the five distributions. The center of the data is best explained by the lognormal distribution, as is concluded from the lowest KS statistic values, for all except "Technology" type losses for which Weibull is the best. The same conclusions are drawn regarding the tails of the datasets.


# Cruz Study of Legal Loss Data

Cruz (2002) applies exponential, Weibull, and Pareto distributions to a sample (in U.S. dollars) from a legal database (from an undisclosed source), consisting of 75 points.[16] The sample's descriptive statistics, as well as the MLE parameters for the three distributions[17] and goodness-of-fit statistics are depicted in Table 3. The data are highly leptokurtic and significantly right-skewed. Based on visual and formal tests for the goodness of fit,[18] Cruz concluded that the Pareto distribution fits the data best. Nevertheless, none of the considered loss distributions is able to capture well the heaviness of the upper tail.

# Moscadelli Study of 2002 LDCE Operational Loss Data

Moscadelli (2004) explores the data (in euros) collected by the Risk Management Group (RMG) of the Basel Committee in June 2002's Operational Risk Loss Data Collection Exercise (LDCE). There were 89 participating banks from 19 countries worldwide that provided their internal loss data for the year 2001. The data were classified into eight business lines and pooled together across all banks. The eight business lines are:

- BL1: Corporate Finance.
- BL2: Trading and Sales.
- BL3: Retail Banking.
- BL4: Commercial Banking.
- BL5: Payment and Settlement.
- BL6: Agency Services.
- BL7: Asset Management.
BL8: Retail Brokerage.

The lognormal, gamma, Gumbel, Pareto, and exponential distributions were fitted to the data. The estimation procedure used in the study was somewhat simplified for two reasons. First, different banks used different minimum truncation levels for their internal data, roughly between €6,000 to €10,000. This issue was ignored in the estimation process. Second, the data across all participating banks were pooled together without any consideration given for bank characteristics such as size.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/683102579087393db7324ba2666a99b456011dd8f6616970d7fade3d60c25585.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/8ecf3f89b2e6b1f891f07bfb6d052be6158bed1bfe2b392892ecbd9de3880cac.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/6d349bd3b4df2737b965cf4b8ecdcf9548eb85faf780f2b648b8a180274b9d8b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/066404864f88f470ec86890f07a9be35cfe71c53c7afa4e1ef7f622ab37d1037.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/b7dc2258d97f1be939c4fd6e79b8cd059ccfd070cdc8f67e973ca15b074b11d2.jpg)
Figure 13 Relative Frequency Histograms of Operational Loss Data in Müller Study

Table 4 reproduces the sample descriptive statistic (based on 1,000 bootstrapped samples generated from the original data), MLE

Table 2 Sample Description, Parameter Estimates, and Goodness-of-Fit Tests in the Müller Study

<table><tr><td></td><td>&quot;Relationship&quot;</td><td>&quot;Human&quot;</td><td>&quot;Processes&quot;</td><td>&quot;Technology&quot;</td><td>&quot;External&quot;</td></tr><tr><td colspan="6">1. Sample Description</td></tr><tr><td># obs.</td><td>585</td><td>647</td><td>214</td><td>61</td><td>220</td></tr><tr><td>Mean ($ &#x27;000,000)</td><td>0.0899</td><td>0.1176</td><td>0.3610</td><td>0.0770</td><td>0.0930</td></tr><tr><td>Median ($ &#x27;000)</td><td>12.8340</td><td>6.3000</td><td>50.1708</td><td>11.0475</td><td>8.9076</td></tr><tr><td>St.Dev. ($ &#x27;000,000)</td><td>0.3813</td><td>0.7412</td><td>1.0845</td><td>0.1351</td><td>0.4596</td></tr><tr><td>Skewness</td><td>11.1717</td><td>18.8460</td><td>7.8118</td><td>3.0699</td><td>10.9407</td></tr><tr><td>Kurtosis</td><td>152.2355</td><td>418.8717</td><td>81.5218</td><td>14.7173</td><td>136.9358</td></tr><tr><td colspan="6">2. MLE Parameter Estimates and Goodness-of-Fit Test Statistics</td></tr><tr><td colspan="6">Exponential distribution</td></tr><tr><td>λ</td><td>9.0·107</td><td>0.15·107</td><td>0.36·107</td><td>7.7·107</td><td>9.3·107</td></tr><tr><td>KS test</td><td>0.4024</td><td>0.5489</td><td>0.3864</td><td>0.3909</td><td>0.4606</td></tr><tr><td>AD test</td><td>1.2·105</td><td>8460</td><td>3.9185</td><td>1.9687</td><td>430.2</td></tr><tr><td colspan="6">Lognormal distribution</td></tr><tr><td>μ</td><td>16.2693</td><td>15.9525</td><td>17.6983</td><td>16.1888</td><td>15.9696</td></tr><tr><td>σ</td><td>2.1450</td><td>2.4551</td><td>2.2883</td><td>2.5292</td><td>2.2665</td></tr><tr><td>KS test</td><td>0.0301</td><td>0.0530</td><td>0.0620</td><td>0.1414</td><td>0.0449</td></tr><tr><td>AD test</td><td>0.0787</td><td>0.1213</td><td>0.1600</td><td>0.3043</td><td>0.1597</td></tr><tr><td colspan="6">Weibull distribution</td></tr><tr><td>α</td><td>0.0002</td><td>0.0008</td><td>0.0001</td><td>0.0003</td><td>0.0004</td></tr><tr><td>β</td><td>0.4890</td><td>0.4162</td><td>0.4822</td><td>0.4692</td><td>0.4527</td></tr><tr><td>KS test</td><td>0.0608</td><td>0.0907</td><td>0.0656</td><td>0.1179</td><td>0.0749</td></tr><tr><td>AD test</td><td>0.4335</td><td>0.2231</td><td>0.2247</td><td>0.2372</td><td>0.2696</td></tr><tr><td colspan="6">Gamma distribution</td></tr><tr><td>α</td><td>-</td><td>-</td><td>0.3372</td><td>0.3425</td><td>-</td></tr><tr><td>β</td><td>-</td><td>-</td><td>1.07·109</td><td>0.2·109</td><td>-</td></tr><tr><td>KS test</td><td>-</td><td>-</td><td>0.1344</td><td>0.1357</td><td>-</td></tr><tr><td>AD test</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td colspan="6">Pareto distribution</td></tr><tr><td>α</td><td>-0.8014</td><td>-0.8936</td><td>-0.7642</td><td>-0.6326</td><td>-0.8498</td></tr><tr><td>β</td><td>1.8·107</td><td>1.6·107</td><td>8.5·107</td><td>2.8·107</td><td>1.4·107</td></tr><tr><td>KS test</td><td>0.1296</td><td>0.1979</td><td>0.1504</td><td>0.2812</td><td>0.1783</td></tr><tr><td>AD test</td><td>0.4031</td><td>0.5566</td><td>0.6256</td><td>1.0918</td><td>0.4784</td></tr></table>

Table 3 Sample Descriptive Statistics, Parameter Estimates, and Goodness-of-Fit Tests in the Cruz Study

<table><tr><td colspan="4">1. Sample Description</td></tr><tr><td>Mean ($)</td><td></td><td>439,725.99</td><td></td></tr><tr><td>Median ($)</td><td></td><td>252,200</td><td></td></tr><tr><td>St.dev. ($)</td><td></td><td>538,403.93</td><td></td></tr><tr><td>Skewness</td><td></td><td>4.42</td><td></td></tr><tr><td>Kurtosis</td><td></td><td>23.59</td><td></td></tr><tr><td colspan="4">2. MLE Parameter Estimates and Goodness-of-Fit Test Statistics</td></tr><tr><td>Exponential</td><td>λ = 440,528.63</td><td>KS test: 0.2104</td><td>W² test: 1.3525</td></tr><tr><td>Weibull</td><td>α = 2.8312</td><td>KS test: 0.3688</td><td>W² test: 4.8726</td></tr><tr><td></td><td>β = 0.00263</td><td></td><td></td></tr><tr><td>Pareto</td><td>α = 6.1737</td><td>KS test: 0.1697</td><td>W² test: 0.8198</td></tr><tr><td></td><td>β = 2,275,032.12</td><td></td><td></td></tr></table>

Source: Cruz (2002), pp. 57, 58, and 60, with modifications.

Table 4 Sample Descriptive Statistics, Parameter Estimates, and Goodness-of-Fit Statistics in the Moscadelli Study

<table><tr><td></td><td>BL1</td><td>BL2</td><td>BL3</td><td>BL4</td><td>BL5</td><td>BL6</td><td>BL7</td><td>BL8</td></tr><tr><td colspan="9">1. Sample Description</td></tr><tr><td># obs.</td><td>423</td><td>5,132</td><td>28,882</td><td>3,414</td><td>1,852</td><td>1,490</td><td>1,109</td><td>3,267</td></tr><tr><td>Mean (€&#x27;000)</td><td>646</td><td>226</td><td>79</td><td>356</td><td>137</td><td>222</td><td>195</td><td>125</td></tr><tr><td>St.dev. (€&#x27;000)</td><td>6,095</td><td>1,917</td><td>887</td><td>2,642</td><td>1,320</td><td>1,338</td><td>1,473</td><td>1,185</td></tr><tr><td>Skewness</td><td>16</td><td>23</td><td>55</td><td>15</td><td>24</td><td>13</td><td>25</td><td>32</td></tr><tr><td>Kurtosis</td><td>294</td><td>674</td><td>4,091</td><td>288</td><td>650</td><td>211</td><td>713</td><td>1,232</td></tr><tr><td colspan="9">2. MLE Parameter Estimates and Goodness-of-Fit Test Statistics</td></tr><tr><td colspan="9">Lognormal distribution</td></tr><tr><td>μ</td><td>3.58</td><td>3.64</td><td>3.17</td><td>3.61</td><td>3.37</td><td>3.74</td><td>3.79</td><td>3.58</td></tr><tr><td>σ</td><td>1.71</td><td>1.27</td><td>0.97</td><td>1.41</td><td>1.10</td><td>1.28</td><td>1.28</td><td>1.08</td></tr><tr><td>KS test</td><td>0.18</td><td>0.14</td><td>0.18</td><td>0.16</td><td>0.15</td><td>0.12</td><td>0.11</td><td>0.12</td></tr><tr><td>AD test</td><td>22.52</td><td>181</td><td>1,653</td><td>174</td><td>73.74</td><td>46.33</td><td>25.68</td><td>87.67</td></tr><tr><td colspan="9">Gumbel distribution</td></tr><tr><td>μ</td><td>93.96</td><td>51.76</td><td>25.63</td><td>48.30</td><td>35.86</td><td>54.82</td><td>56.78</td><td>41.03</td></tr><tr><td>σ</td><td>602</td><td>185</td><td>58.80</td><td>204</td><td>110</td><td>181</td><td>154</td><td>93.51</td></tr><tr><td>KS test</td><td>0.43</td><td>0.37</td><td>0.34</td><td>0.37</td><td>0.36</td><td>0.35</td><td>0.32</td><td>0.31</td></tr><tr><td>AD test</td><td>125</td><td>1,224</td><td>6,037</td><td>831</td><td>436</td><td>333</td><td>204</td><td>577</td></tr></table> parameter estimates (based on the original data), and goodness-of-fit test statistics $^{19}$  for the lognormal and Gumbel distributions. $^{20}$  Other considered distributions showed a poor fit. Although lognormal and Gumbel fitted the main body of the data rather well, they performed poorly in the upper tail, according to Moscadelli. This was confirmed by the test statistic values above the  $90\%$  critical values, meaning that it is unlikely that the data come from a selected distribution at the  $90\%$  confidence level.

Source: Moscadelli (2004), pp. 19 and 25.


He further performs the analysis of the data using the extreme value theory argument for modeling high losses with the GPD, finding that GPD outperforms other considered distributions. He also confirms the findings from other empirical studies that operational losses follow a very heavy-tailed distribution.

# De Fontnouvelle-Rosengren-Jordan Study of 2002 LDCE Operational Loss Data

The dataset examined in Moscadelli was also analyzed by de Fontnouvelle, Rosengren, and Jordan (2006). They limited their analysis to the data collected from six banks, and performed the analysis on the bank-by-bank basis, rather than pooling the data as was done in Moscadelli. For confidentiality reasons, only the data belonging to the four business lines—Trading and Sales (BL1), Retail Banking (BL2), Payment and Settlement (BL3), and Asset Management (BL4)—and six loss types—Internal Fraud (LT1), External Fraud (LT2), Employment Practices and Workplace Safety (LT3), Clients, Products and Business Practices (LT4), and Execution, Delivery and Process Management (LT5)—were included in the analysis.


The following distributions were considered for the study: exponential, Weibull, lognormal, gamma, loggamma (i.e., log of data is gamma-distributed), 1-parameter Pareto, Burr, and loglogistic. The distributions were fitted using the MLE method. Overall, heavy-tailed distributions—Burr, loggamma, loglogistic, and 1-parameter Pareto—fit the data very well, while thin-tailed distributions' fit is poor, as expected. In particular, losses of LT3 are well fit by most of the heavy-tailed distributions and lognormal. In many cases, the estimated parameters would be unreasonable, for example resulting in a negative mean loss. For some

Table 5 Sample Descriptive Statistics, Parameter Estimates, and Goodness-of-Fit Tests in the Lewis Study

<table><tr><td colspan="3">1. Sample Description</td></tr><tr><td>Mean (£)</td><td></td><td>151,944.04</td></tr><tr><td>Median (£)</td><td></td><td>103,522.90</td></tr><tr><td>St.dev. (£)</td><td></td><td>170,767.06</td></tr><tr><td>Skewness</td><td></td><td>2.84</td></tr><tr><td>Kurtosis</td><td></td><td>12.81</td></tr><tr><td colspan="3">2. MLE Parameter Estimates and Goodness-of-Fit Test Statistics</td></tr><tr><td>Normal</td><td>μ = 151,944.04, σ = 170,767.06</td><td>AD test: 8.090</td></tr><tr><td>Exponential</td><td>λ = 151,944.04</td><td>AD test: 0.392</td></tr><tr><td>Weibull</td><td>α = 0.95446, β = 0.00001</td><td>AD test: 0.267</td></tr></table>

Source: Lewis (2004), p. 88, with modifications.

BL and LT data sets, the models failed the  $\chi^2$  goodness-of-fit test for all considered cases. Hence, de Fontnouvelle, Rosengren, and Jordan performed additional analysis using the extreme value theory and fitting the GPD to the data exceeding a high threshold.[22]

# Lewis Study of Legal Liability Loss Data

Lewis (2004) reports his findings for a sample (in British pounds) of legal liability losses (from an undisclosed source), consisting of 140 points.[23] He fits the normal, exponential, and Weibull distributions[24] to the data and compares the fit. Table 5 shows the descriptive statistics for the sample, the MLE parameters for three fitted distributions, and the values of the AD goodness-of-fit statistic. The data are highly leptokurtic and significantly right-skewed. As expected, the normal distribution results in a very poor fit, and the Weibull distribution seems the most reasonable assumption, based on the lowest value of the AD test statistic.

# Studies with Simulated Data

A number of studies on operational risk that have appeared in literature were using simulated rather than real data. We present a few examples here.

# Reynolds-Syer Study

Reynolds and Syer (2003) apply a nonparametric approach to modeling operational loss severity. They use a hypothetical sample of six-year internal operational loss data of a firm, with a total of 293 observations. The summary of input data is given in Table 6. Using the sample of historic data, sampling is repeated a large number of times, and 1,000 simulated years are created. For each year, the simulated losses are summed up. The distribution of yearly aggregated

Table 6 Sample Descriptive Statistics of Loss Data in the Reynolds-Syer Study

<table><tr><td>Year</td><td># obs.</td><td>Total ($&#x27;000,000)</td><td>Average ($&#x27;000)</td><td>St. Dev. ($&#x27;000)</td></tr><tr><td>2000</td><td>64</td><td>7.55</td><td>117.9</td><td>109.6</td></tr><tr><td>2001</td><td>57</td><td>6.35</td><td>111.3</td><td>106.2</td></tr><tr><td>2002</td><td>52</td><td>5.14</td><td>98.8</td><td>93.7</td></tr><tr><td>2003</td><td>55</td><td>5.29</td><td>96.1</td><td>88.0</td></tr><tr><td>2004</td><td>43</td><td>3.86</td><td>89.7</td><td>78.5</td></tr><tr><td>2005</td><td>45</td><td>3.41</td><td>75.7</td><td>68.5</td></tr></table> operational losses is assumed to follow the resulting empirical distribution.

Source:Reynolds and Syer (2003),p.204.


# Rosenberg-Schuermann Study

Rosenberg and Schuermann (2006) use a Monte Carlo approach to generate a sample of 200,000 operational losses. For the loss distribution they consider a 1-parameter Pareto distribution with parameter  $1 / 0.65 = 1.5385$ . This parameter is based on the average of the exponential parameters[25] of  $1 / 0.64$  and  $1 / 0.66$ , obtained for logarithmic losses from the OpRisk Analytics database and OpVantage database, respectively, in the empirical study carried out by de Fontnouvelle, DeJesus-Rueff, Jordan, and Rosengren (2003). Recall that since the shape parameter is less than one, then such Pareto distribution has a finite mean but an infinite variance. To guarantee the existence of the first two moments, Rosenberg and Schuermann set a log-loss greater than 1,000 standard deviations equal to a loss of 1,000 standard deviations.

# KEY POINTS

- Broadly, one can classify the approaches to model operational loss magnitudes into two groups: nonparametric approach and parametric approach.
- Under the nonparametric approach, one can either model the losses using the empirical distribution function, or one can fit a smooth curve to the histogram of the data and analyze the properties of the curve instead.
- Under the parametric approach, one can fit one (or more) of common parametric distributions directly to the data (and compare them).
- Because of the specific nature of the operational loss data, the distributions that are most likely to find application to modeling the losses are those that are right-skewed and are defined only on the positive values of the underlying random variable. These distributions include the exponential, lognormal, Weibull, gamma, beta, Pareto, Burr, and mixture distributions.

- Operational risk managers are concerned with finding a model that would capture the "tail events." Common distributions are classified into two categories depending on the heaviness of the right tail: light-tailed and heavy-tailed. In operational risk modeling, light-tailed distributions should be used with caution.
- There have been several empirical studies with operational loss data. Two types of empirical studies are distinctive: studies that use real loss data and studies that use simulated data. Generally, most of the studies suggest that heavy-tailed loss distributions (such as lognormal or Pareto) best describe operational loss magnitudes.

# NOTES

1. An example is cubic spline approximation as is done in Rosenberg and Schuermann (2006). Useful references on this approach include Silverman (1986) and Scott (1992).
2. See Rosenberg and Schuermann (2006).
3. See Cizek, Hardle, and Weron (2005).
4. To be more precise, for a discrete random variable it is called probability mass function.
5. The lognormal distribution was proposed by the Basel Committee for the operational risk modeling in 2001.
6.  $\Gamma(a)$  is the complete gamma function,  $\Gamma(a) = \int_{0}^{\infty} t^{a - 1} e^{-t} dt$ . When  $a$  is an integer, then  $\Gamma(a) = (a - 1)!$
7. See Madan and Unal (2004) and Kremer (1998).
8. See Mittnik and Rachev (1993a, 1993b).
9.  $\Gamma(a; b)$  is the incomplete gamma function defined as  $\Gamma(a; b) = \frac{1}{\Gamma(a)} \int_{0}^{b} t^{a - 1} e^{-t} dt$ .
10. In this case, the gamma distribution is called the Erlang distribution.
11.  $I(x;\alpha ,\beta)$  is the regularized beta function equal to  $\int_0^x u^{\alpha -1}(1 - u)^{\beta -1}\mathrm{d}u\times \frac{\Gamma(\alpha)\Gamma(\beta)}{\Gamma(\alpha + \beta)}$
12. See Cizek, Hardle, and Weron (2005).

13. See Klugman, Panjer, and Willmot (2004).
14. See Klugman, Panjer, and Willmot (2004).
15. In literature, thin-tailed distributions are also called light-tailed distributions, and heavy-tailed distributions are also called fat-tailed distributions. We will use the corresponding terms interchangeably.
16. Original dataset is available from Cruz (2002), Chapter 3, p. 57.

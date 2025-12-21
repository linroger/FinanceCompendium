# Introduction to Bayesian Inference



---
title: Introduction to Bayesian Inference
parent_directory: Volume I/Bayesian Analysis and Financial Modeling Applications
primary_tags:
- bayesian inference
- prior distributions
- posterior analysis
secondary_tags:
- bayesian statistics
- parameter estimation
- predictive inference
- conjugate priors
- noninformative priors
- hypothesis testing
cssclasses: academia
---

Abstract: Bayesian inference is the process of arriving at estimates of the model parameters reflecting the blending of information from different sources. Most commonly, two sources of information are considered: prior knowledge or beliefs and observed data. The discrepancy (or lack thereof) between them and their relative strength determines how far away the resulting Bayesian estimate is from the corresponding classical estimate. Along with the point estimate, which most often is the posterior mean, in the Bayesian setting one has available the whole posterior distribution, allowing for a richer analysis.

In this entry, we focus on the essentials of Bayesian inference. Formalizing the practitioner's knowledge and intuition into prior distributions is a key part of the inferential process. Especially when the data records are not abundant, the choice of prior distributions can influence greatly posterior conclusions. After presenting an overview of some approaches to prior specification, we focus on the elements of posterior analysis. Posterior and predictive results can be summarized in a few numbers, as in the classical statistical approach, but one could also easily examine and draw conclusions about all other aspects of the posterior and predictive distributions of the (functions of the) parameters.


# PRIOR INFORMATION

The prior distribution for the model parameters is an integral component of the Bayesian inference process. The updated (posterior) beliefs are the result of the trade-off between the prior and data distributions. The continuous form of Bayes' theorem is:


$$ p (\theta \mid \mathcal {Y}) \propto L (\theta \mid \mathcal {Y}) \pi (\theta) \tag{1}
$$ where


$\theta =$  unknown parameter whose inference we are interested in.

$y = a$  vector (or a matrix) of recorded observations.

$\pi (\theta) =$  prior distribution of  $\theta$  depending on one or more parameters, called hyperparameters.

$L(\theta \mid \pmb{y}) =$  likelihood function for  $\theta$

$p(\theta \mid \mathbf{y}) =$  posterior (updated) distribution of  $\theta$

Two factors determine the degree of posterior trade-off—the strength of the prior information and the amount of data available. Generally, unless the prior is very informative (in a sense that will become clear), the more observations, the greater the influence of the data on the posterior distribution. On the contrary, when very few data records are available, the prior distribution plays a predominant role in the updated beliefs.

How to translate the prior information about a parameter into the analytical (distributional) form,  $\pi (\theta)$ , and how sensitive the posterior inference is to the choice of prior have been questions of considerable interest in the Bayesian literature. There is, unfortunately, no "best" way to specify the prior distribution and translating subjective views into prior values for the distribution parameters could be a difficult undertaking.

Before we review some commonly used approaches to prior elicitation, we make the following notational and conceptual note. It is often convenient to represent the posterior distribution,  $p(\theta \mid y)$ , in a logarithmic form. Then, it is easy to see that the expression in (1) is transformed according to

$$
\log (p (\theta \mid \mathbf {y})) = \operatorname{co ns t} + \log (L (\theta \mid \mathbf {y})) + \log (\pi (\theta)),
$$ where const is the logarithm of the constant of proportionality.


# Informative Prior Elicitation

Prior beliefs are informative when they modify substantially the information contained in the data sample so that the conclusions we draw about the model parameters based on the posterior distribution and on the data distribution alone differ. The most commonly used approach to representing informative prior beliefs is to select a distribution for the unknown parameter and specify the hyperparameters so as to reflect these beliefs.

# Informative Prior Elicitation for Location and Scale Parameters

Usually, when we think about the average value that a random variable takes, we have the typical value in mind. Therefore, we hold beliefs about the median of the distribution rather than its mean. This distinction does not matter in the case of symmetric distributions, since then the mean and the median coincide. However, when the distribution we selected is not symmetric, care must be taken to ensure that the prior parameter values reflect our beliefs. Formulating beliefs about the spread of the distribution is less intuitive. The easiest way to do so is to ask ourselves questions such as, for instance: Which value of the random variable do a quarter of the observations fall below/above? Denoting the random variable by  $X$ , the answers to these questions give us the following probability statements:

$$
$P(X < x_{0.25}) = 0.25$
$$ and


$$
$P(X > x_{0.75}) = 0.25$
$$ where  $x_{0.25}$  and  $x_{0.75}$  are the values we have subjectively determined and are referred to as the first and third quartiles of the distribution, respectively. Other similar probability statements


can be formulated, depending on the prior beliefs.

As an example, suppose that we model the behavior of the monthly returns on some financial asset and the normal distribution,  $\mathrm{N}(\mu ,\sigma^2)$  (along with the assumption that the returns are independently and identically distributed), describes their dynamics well. Assume for now that the variance is known,  $\sigma^2 = \sigma^{2*}$ , and thus we only need to specify a prior distribution for the unknown mean parameter,  $\mu$ . We believe that a symmetric distribution is an appropriate choice and go for the simplicity of a normal prior:

$$
\mu \sim \mathrm{N} (\eta , \tau^{2}) \tag{2}
$$ where  $\eta$  is the prior mean and  $\tau^2$  is the prior variance of  $\mu$ ; to fully specify  $\mu$ 's prior, we need to (subjectively) determine their values. We believe that the typical monthly return is around  $1\%$ , suggesting that the median of  $\mu$ 's distribution is  $1\%$ . Therefore, we set  $\eta$  to  $1\%$ . Further, suppose we (subjectively) estimate that there is about a  $25\%$  chance that the average monthly return is less than  $0.5\%$  (i.e.,  $\mu_{0.25} = 0.5\%$ ). Then, using the tabulated cumulative probability values of the standard normal distribution, we find that the implied variance,  $\tau^2$ , is approximately equal to  $0.74^2$ . Our choice for the prior distribution of  $\mu$  is thus  $\pi(\mu) = \mathrm{N}(1, 0.74^2)$ .


# Noninformative Prior Distributions

In many cases, our prior beliefs are vague and thus difficult to translate into an informative prior. We therefore want to reflect our uncertainty about the model parameter(s) without substantially influencing the posterior parameter inference. The so-called noninformative priors, also called vague or diffuse priors, are employed to that end.

Most often, the noninformative prior is chosen to be either a uniform (flat) density defined on the support of the parameter or the Jeffreys' prior. The noninformative distribution for a location parameter,  $\mu$ , is given by a uniform distribution on its support  $((-\infty ,\infty))$  , that is,5


$$
\pi (\mu) \propto 1 \tag{3}
$$

The noninformative distribution for a scale parameter,  $\sigma$  (defined on the interval  $(0,\infty)$ ) is

$$
\pi (\sigma) \propto \frac{1}{\sigma} \tag {4}
$$

Notice that the prior densities in both (3) and (4) are not proper densities, in the sense that they do not integrate to one:

$$
\int_{- \infty}^{\infty} 1 \mathrm{d} \mu = \infty
$$ and


$$
\int_{0}^{\infty} \frac{1}{\sigma}   \mathrm{d} \sigma = \infty
$$

Even though the resulting posterior densities are usually proper, care must be taken to ensure that this is indeed the case. To avoid impropriety of the posterior distributions, one could employ proper prior distributions but make them noninformative, as we discuss further on.

When one is interested in the joint posterior inferences for  $\mu$  and  $\sigma$ , these two parameters are often assumed independent, giving the joint prior distribution

$$
\pi (\mu , \sigma) \propto \frac{1}{\sigma} \tag {5}
$$

The prior in (5) is often referred to as the Jeffreys' prior.7

Prior ignorance could also be represented by a (proper) standard distribution with a very large dispersion—the so-called flat or diffuse proper prior distribution. Let us turn again to the example for the monthly returns for some financial asset we considered earlier and suppose that we do not have particular prior information about the range of typical values the mean monthly return could take. To reflect this ignorance, we might center the normal distribution of  $\mu$  around 0 (a neutral value, so to speak) and fix the standard deviation,  $\tau$ , at a large value such as  $10^{6}$ , that is,  $\pi(\mu) = \mathrm{N}(0, (10^{6})^{2})$ .

The prior of  $\mu$  could take alternative distributional forms. For instance, a symmetric

Student's  $t$ -distribution could be asserted. A standard Student's  $t$ -distribution has a single parameter, the degrees of freedom,  $\nu$ , which one can use to regulate the heaviness of the prior's tails—the lower  $\nu$  is, the flatter the prior distribution. Asserting a scaled Student's  $t$ -distribution with a scale parameter,  $\sigma$ , provides additional flexibility in specifying the prior of  $\mu$ . It can be argued that eliciting heavy-tailed prior distributions (with tails heavier than the tails of the data distribution) increases the posterior's robustness, that is, lowers the sensitivity of the posterior to the prior specification.

# Conjugate Prior Distributions

In many situations, the choice of a prior distribution is governed by the desire to obtain analytically tractable and convenient posterior distribution. Thus, if one assumes that the data have been generated by a certain class of distributions, employing the class of the so-called "conjugate prior distributions" guarantees that the posterior distribution is of the same class as the prior distribution.9 Although the prior and posterior distributions have the same form, their parameters differ—the parameters of the posterior distribution reflects the trade-off between prior and sample information. We now consider the case of the normal data distribution, since it is central to our discussions of financial applications.

If the data,  $x$ , are assumed to come from a normal distribution, the conjugate priors for the normal mean,  $\mu$ , and variance,  $\sigma^2$ , are, respectively, a normal distribution and an inverted  $\chi^2$  distribution

$$
\pi (\mu \mid \sigma^{2}) = \mathrm{N} \left(\eta , \frac{\sigma^{2}}{T}\right)
$$ and


$$
\pi \left(\sigma^{2}\right) = \operatorname{In v} - \chi^{2} \left(v_{0}, c_{0}^{2}\right) \tag {6}
$$ where  $\mathrm{Inv} - \chi^2 (\nu ,c^2)$  denotes the inverted  $\chi^2$  distribution with  $\nu_{0}$  degrees of freedom and a scale parameter  $c_0^2$ . The prior parameters (hyperparameters) that need to be (subjectively)


specified in advance are  $\eta, T, \nu_0,$  and  $c_0^2$ . The parameter  $T$  plays the role of a discount factor, reflecting the degree of uncertainty about the distribution of  $\mu$ . Usually,  $T$  is greater than one since one naturally holds less uncertainty about the distribution of the mean,  $\mu$ , (with variance  $\sigma^2 / T$ ) than the data,  $x$  (with variance  $\sigma^2$ ).

In various financial applications, the normal distribution is often not the most appropriate assumption for a data-generation process in view of various empirical features that financial data exhibit. Alternative distributional choices most often do not have corresponding conjugate priors and the resulting posterior distributions might not be recognizable as any known distributions. Then, numerical methods are applied to compute the posteriors.

In general, eliciting conjugate priors should be preceded by an analysis of whether prior beliefs would be adequately represented by them.

# Empirical Bayesian Analysis

So far, we took care to emphasize the subjective manner in which prior information is translated into a prior distribution. This involves specifying the prior hyperparameters (if an informative prior is asserted) before observing/analyzing the set of data used for model evaluation. One approach for eliciting the hyperparameters parts with this tradition—the so-called "empirical Bayesian approach." In it, sample information is used to compute the values of the hyperparameters. Here we provide an example with the natural conjugate prior for a normal data distribution.

Denote the sample of  $n$  observations by  $x = (x_{1}, x_{2}, \ldots, x_{n})$ . It can be shown that the normal likelihood function can be expressed in the following way:

$$
\begin{array}{l} L (\mu , \sigma^{2} \mid x) \\ = \left(2 \pi \sigma^{2}\right)^{- n / 2} \exp \left(- \frac{\sum_{i = 1}^{n} \left(x_{i} - \mu\right)^{2}}{2 \sigma^{2}}\right) \\ = \left(2 \pi \sigma^{2}\right)^{- n / 2} \exp \left(- \frac{1}{2 \sigma^{2}} \left(\nu s^{2} + n (\mu - \hat {\mu})^{2}\right)\right) \tag {7} \\ \end{array}
$$ where


$$
\hat {\mu} = \frac{\sum_{i = 1}^{n} x_{i}}{n}, \quad \nu = n - 1,
$$ and


$$ s^{2} = \frac{\sum_{i = 1}^{n} \left(x_{i} - \hat {\mu}\right)^{2}}{n - 1} \tag {8}
$$

The quantities  $\hat{\mu}$  and  $s^2$  are, respectively, the unbiased estimators of the mean,  $\mu$ , and the variance,  $\sigma^2$ , of the normal distribution.11 It is now easy to see that the likelihood in (7) can be viewed as the product of two distributions—a normal distribution for  $\mu$  conditional on  $\sigma^2$ ,

$$
\mu \mid \sigma \sim \mathrm{N} \left(\hat {\mu}, \frac{\sigma^{2}}{n}\right)
$$ and an inverted  $\chi^2$  distribution for  $\sigma^2$ ,


$$
\sigma^{2} \sim \operatorname{In v} - \chi^{2} (\nu , s^{2})
$$ which become the prior distributions under the empirical Bayesian approach. We can observe that these two distributions are, of course, the same as the ones in (6). Their parameters are functions of the two sufficient statistics for the normal distribution, instead of subjectively elicited quantities. The sample size,  $n$ , above plays the role of the discount factor,  $T$ , in (6)—the more data available, the less uncertain one is about the prior distribution of  $\mu$  (its prior variance decreases).


We now turn to a discussion of the fundamentals of posterior inference. Later in this entry, we provide an illustration of the effect various prior assumptions have on the posterior distribution.

# POSTERIOR INFERENCE

The posterior distribution of a parameter (vector)  $\theta$  given the observed data  $x$  is denoted as  $p(\theta \mid x)$  and obtained by applying the Bayes' theorem given by (1). Being a combination of the data and the prior, the posterior contains all relevant information about the unknown parameter  $\theta$ .

# Posterior Point Estimates

Although the benefit of being able to visualize the whole posterior distribution is unquestionable, it is often more practical to report several numerical characteristics describing the posterior, especially if reporting the results to an audience used to the classical (frequentist) statistical tradition. Commonly used for this purpose are the point estimates, such as the posterior mean, the posterior median, and the posterior standard deviation.12 When the posterior is available in closed form, these numerical summaries can also be expressed in closed form. The posterior parameters in the natural conjugate prior scenario with a normal sampling density (see (6)) are also available analytically. The mean parameter,  $\mu$ , of the normal distribution has a normal posterior, conditional on  $\sigma^2$

$$ p (\mu \mid x, \sigma^{2}) = \mathrm{N} \left(\mu^{*}, \frac{\sigma^{2}}{T + n}\right) \tag {9}
$$

The posterior mean and variance of  $\mu$  are given, respectively, by

$$
\begin{array}{l} \operatorname{E} (\mu \mid x, \sigma^{2}) \equiv \mu^{*} = \hat {\mu} \frac{\frac{n}{\sigma^{2}}}{\frac{n}{\sigma^{2}} + \frac{T}{\sigma^{2}}} + \eta \frac{\frac{T}{\sigma^{2}}}{\frac{n}{\sigma^{2}} + \frac{T}{\sigma^{2}}} \\ = \hat {\mu} \frac{n}{n + T} + \eta \frac{T}{n + T} \tag {10} \\ \end{array}
$$ where  $\hat{\mu}$  is the sample mean as given in (8) and


$$
\operatorname{va r} \left(\mu \mid x, \sigma^{2}\right) = \frac{\sigma^{2}}{T + n} \tag {11}
$$

In practical applications, usually the emphasis is placed on obtaining the posterior distribution of  $\mu$ , not least because it is more difficult to formulate prior beliefs about the variance,  $\sigma^2$  (let alone the whole covariance matrix in the multivariate setting). Often, then, the variance (covariance matrix) is estimated outside of the regression model and then fed into it, as if it were the "known" variance (covariance matrix). Nevertheless, for completeness, we provide  $\sigma^{2}$ 's posterior distribution—an inverted  $\chi^2$ ,

$$ p \left(\sigma^{2} \mid x\right) = \operatorname{In v} - \chi^{2} \left(v^{*}, c^{2^{*}}\right) \tag {12}
$$ where


$$ v^{*} = v_{0} + n, \tag {13}
$$

$$ c^{2^{*}} = \frac{1}{v^{*}} \left(v_{0} c_{0}^{2} + (n - 1) s^{2} + \frac{T n}{T + n} (\hat {\mu} - \eta)^{2}\right) \tag {14}
$$ and  $s^2$  is the unbiased sample estimator of the normal variance as given in (8). Using (13) and (14), one can now compute the posterior mean and variance of  $\sigma^2$  as, respectively


$$
\mathrm{E} \left(\sigma^{2} \mid x\right) = \frac{\nu^{*}}{\nu^{*} - 2} c^{2 *} \tag {15}
$$ and


$$
\operatorname{va r} \left(\sigma^{2} \mid x\right) = \frac{2 v^{* 2}}{\left(v^{*} - 2\right)^{2} \left(v^{*} - 4\right)} \left(c^{2^{*}}\right)^{2} \tag {16}
$$

When the posterior is not of known form and is computed numerically (through simulations), so are the posterior point estimates, as well as the distributions of any functions of these estimates (see Chapter 4 in Rachev et al., 2008).

# Bayesian Intervals

The point estimate for the center of the posterior distribution is not too informative if the posterior uncertainty is significant. To assess the degree of uncertainty, a posterior  $(1 - \alpha)100\%$  interval  $[a,b]$ , called a credible interval, can be constructed. The probability that the unknown parameter,  $\theta$ , falls between  $a$  and  $b$  is  $(1 - \alpha)100\%$ ,

$$
P (a <   \theta <   b \mid x) = \int_{a}^{b} p (\theta \mid x) d \theta = 1 - \alpha
$$

For reasons of convenience, the interval bounds may be determined so that an equal probability,  $\alpha /2$  , is left in the tails of the posterior distribution. For example,  $a$  could be chosen to be the 0.25th quantile, while  $b$  -the 0.75th quantile. The interpretation of the credible interval is often mistakenly ascribed to the classical confidence interval. In the classical setting,  $(1 - \alpha)100\%$  is a coverage probability-if ar bitrarily many repeated samples of data are recorded,  $(1 - \alpha)100\%$  of the corresponding confidence intervals will contain  $\theta$  a much less intuitive interpretation.


The credible interval is computed either analytically, by finding the theoretical quantiles of the posterior distribution (when it is of known form), or numerically, by finding the empirical quantiles using the simulations of the posterior density (see Chapter 4 in Rachev et al., 2008).

# Bayesian Hypothesis Comparison

The title of this section abuses the usual terminology by intentionally using "comparison" instead of "testing" in order to stress that the Bayesian framework affords one more than the mere binary reject/do-not-reject decision of the classical hypothesis testing framework. In the classical setting, the probability of a hypothesis (null or alternative) is either 0 or 1 (since frequentist statistics considers parameters as fixed, although unknown, quantities).

In contrast, in the Bayesian setting (where parameters are treated as random variables), the probability of a hypothesis can be computed (and is different from 0 or 1, in general), allowing for a true hypothesis comparison.[17]

Suppose one wants to compare the null hypothesis

$$
H_{0}: \theta \text{is} \Theta_{0}
$$ with the alternative hypothesis


$$
H_{1}: \theta \mathrm{is} \Theta_{1}
$$ where  $\Theta_0$  and  $\Theta_{1}$  are disjoint sets of possible values for the unknown parameter  $\theta$ . As with point estimates and credible intervals, hypothesis comparison is entirely based on  $\theta$ 's posterior distribution. We compute the posterior probabilities of the null and alternative hypotheses,


$$
P (\theta \text{is in} \Theta_{0} \mid x) = \int_{\Theta_{0}} p (\theta \mid x) \mathrm{d} \theta \tag {17}
$$ and


$$
P (\theta \text{is in} \Theta_{1} \mid x) = \int_{\Theta_{1}} p (\theta \mid x) \mathrm{d} \theta \tag {18}
$$ respectively. These posterior hypotheses probabilities naturally reflect both the prior beliefs and the data evidence about  $\theta$ . An informed decision can now be made incorporating that knowledge. For example, the posterior probabilities could be employed in scenario-generation—a tool of great importance in risk analysis.


# The Posterior Odds Ratio

Although the framework outlined in the previous section is generally sufficient to make an informed decision about the relevance of hypotheses, we briefly discuss a somewhat more formal approach for Bayesian hypothesis testing. That approach consists of summarizing the posterior relevance of the two hypotheses into a single number—the posterior odds ratio. The posterior odds ratio is the ratio of the weighted likelihoods for the model parameters under the null hypothesis and under the alternative hypothesis, multiplied by the prior odds. The weights are the prior parameter distributions (thus, parameter uncertainty is taken into account).

Denote the a priori probability of the null hypothesis by  $\alpha$ . Then, the prior odds are the ratio  $\alpha / (1 - \alpha)$ . The posterior odds, denoted by PO, are simply the prior odds updated with the information contained in the data and are given by

$$
\mathrm{PO} = \frac{\alpha}{1 - \alpha} \times \frac{\int L (\theta \mid x , H_{0}) \pi (\theta) \mathrm{d} \theta}{\int L (\theta \mid x , H_{1}) \pi (\theta) \mathrm{d} \theta} \tag {19}
$$ where  $L(\theta \mid x, H_0)$  is the likelihood function reflecting the restrictions imposed by the null hypothesis and  $L(\theta \mid x, H_1)$  is the likelihood function under the alternative hypothesis.


When no prior evidence in favor or against the null hypothesis exists, the prior odds is usually set equal to one. A low value of the posterior odds generally indicates evidence against the null hypothesis.

# BAYESIAN PREDICTIVE INFERENCE

After performing Bayesian posterior inference about the parameters of the data-generating process, one may use the process to predict the realizations of the random variable ahead in time. The purpose of such a prediction could be to test the predictive power of the model (for example, by analyzing a metric for the distance between the model's predictions and the actual realizations) as part of a backtesting procedure or to directly use it in the decision-making process.

As in the case of posterior inference, predictive inference provides more than simply a point prediction—one has available the whole predictive distribution (either analytically or numerically) and thus increased modeling flexibility.[19] The density of the predictive distribution is the sampling (data) distribution weighted by the posterior parameter density. By averaging out the parameter uncertainty (contained in the posterior), the predictive distribution provides a superior description of the model's predictive ability. In contrast, the classical approach to prediction involves computing point predictions or prediction intervals by plugging in the parameter estimates into the sampling density, treating those estimates as if they were the true parameter values.

Denoting the sampling and the posterior density by  $f(x \mid \theta)$  and  $p(\theta \mid x)$ , respectively, the predictive density one step ahead is given by

$$ f (x_{+ 1} \mid x) = \int f (x_{+ 1} \mid \theta) p (\theta \mid x) d \theta \tag {20}
$$ where  $x_{+1}$  denotes the one-step-ahead realization. Notice that since we integrate (average) over the values of  $\theta$ , the predictive distribution is independent of  $\theta$  and depends only on the past realizations of the random variable  $X$ —it describes the process we assume has generated the data. The predictive density could be used to obtain a point prediction (for example, the predictive mean) or an interval prediction (similar in spirit to the Bayesian interval


discussed above) or to perform a hypotheses comparison.

# ILLUSTRATION: POSTERIOR TRADE-OFF AND THE NORMAL MEAN PARAMETER

Using an illustration, we show the effects prior distributions have on posterior inference. For simplicity, we look at the case of a normal data distribution with a known variance,  $\sigma^2 = 1$ . That is, we need to elicit a prior distribution of the mean parameter,  $\mu$ , only. We investigate the following prior assumptions:

1. A noninformative, improper prior (Jeffreys' prior):  $\pi (\mu)\propto 1$
2. A noninformative, proper prior:  $\pi (\mu) = \mathrm{N}(\eta,\tau^2)$ , where  $\eta = 0$  and  $\tau = 10^{6}$ .
3. An informative conjugate prior with subjectively determined hyperparameters:  $\pi (\mu) = \mathrm{N}(\eta ,\tau^2)$ , where  $\eta = 0.02$  and  $\tau = 0.1$ .

As mentioned earlier in the entry, the relative strengths of the prior and the sampling distribution determine the degree of trade-off of prior and data information in the posterior. When the amount of available data is large, the sampling distribution dominates the prior in the posterior inference. (In the limit, as the number of observations grows indefinitely, only the sampling distribution plays a role in determining posterior results.[21] To illustrate this sample-size effect, we consider the following two samples of data:

1. The monthly return on the S&P 500 stock index for the period January 1999 through December 2005 (a total of 192 returns).
2. The monthly return on the S&P 500 stock index for the period January 2005 through December 2005 (a total of 12 returns).

Let us denote the return data by the  $n \times 1$  vector  $\boldsymbol{r} = (r_1, r_2, \ldots, r_n)$ , where  $n = 192$  or

$n = 12$ . We assume that the sampling (data) distribution is normal,  $R \sim \mathrm{N}(\mu, \sigma^2)$ . Combining the normal likelihood and the noninformative improper prior, we obtain for the posterior distribution of  $\mu$

$$
\begin{array}{l} p (\mu \mid r, \sigma^{2} = 1) \propto (2 \pi)^{- n / 2} \exp \left(- \frac{\sum_{i = 1}^{n} \left(r_{i} - \mu\right)^{2}}{2}\right) \\ \propto \exp \left(- \frac{n (\mu - \hat {\mu})^{2}}{2}\right) \tag{21} \\ \end{array}
$$ where  $\hat{\mu}$  is the sample mean as given in (8). Therefore, the posterior of  $\mu$  is a normal distribution with mean  $\hat{\mu}$  and variance  $1 / n$ . As expected, the data completely determine the posterior distributions for both data samples, since we assumed prior ignorance about  $\mu$ .


When a normal prior for  $\mu$ ,  $\mathrm{N}(\eta, \tau^2)$ , is asserted, the posterior can be shown to be normal as well. In the generic case, for an arbitrary data variance  $\sigma^2$ , we have

$$
\begin{array}{l} p (\mu \mid r, \sigma^{2}) = (2 \pi \sigma^{2})^{- n / 2} \exp \left(- \frac{\sum_{i = 1}^{n} (r_{i} - \mu)^{2}}{\sigma^{2}}\right) \\ \times (2 \pi \tau^{2})^{- 1 / 2} \exp \left(- \frac{(\mu - \eta)^{2}}{2 \tau^{2}}\right) \\ \propto \exp \left(- \frac{\left(\mu - \mu^{*}\right)^{2}}{2 \tau^{2 *}}\right) \tag{22} \\ \end{array}
$$ where the posterior mean,  $\mu^{*}$  , is


$$
\mu^{*} = \hat {\mu} \frac{\frac{n}{\sigma^{2}}}{\frac{n}{\sigma^{2}} + \frac{1}{\tau^{2}}} + \eta \frac{\frac{1}{\tau^{2}}}{\frac{n}{\sigma^{2}} + \frac{1}{\tau^{2}}} \tag{23}
$$ and the posterior variance,  $\tau^{2*}$ , is


$$
\tau^{2^{*}} = \frac{1}{\frac{n}{\sigma^{2}} + \frac{1}{\tau^{2}}} \tag{24}
$$

Notice that the posterior mean is a weighted average of the sample mean,  $\hat{\mu}$ , and the prior mean,  $\eta$ . The quantities  $1 / \sigma^2$  and  $1 / \tau^2$  have self-explanatory names: data precision and prior precision, respectively. The higher the precision, the more concentrated the distribution around its mean value.[22] Let us see how the information trade-off between the data and the prior is reflected in the values of the posterior parameters.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/b33fb5190b56c427a48e9b56b2b0c1ffc55065f30e7e4dd3689ef93f8e8c101a.jpg)
Figure 1 Sample Size and Posterior Trade-Off for the Normal Mean Parameter: The Case of Informative Prior

In the case of the noninformative, proper prior,  $\tau = 10^6$ . The rightmost term in (23) is then negligibly small and the posterior mean is very close to the sample mean:  $\mu^{*} \approx \hat{\mu}$ , while the posterior variance in (24) is approximately equal to  $1 / n$  (substituting in  $\sigma^2 = 1$ ). That is, for both data samples, the noninformative proper prior produced posteriors almost the same as in the case of the noninformative improper prior, as expected.

Consider how the posterior is affected when informativeness of the prior is increased, as in the third prior scenario. Figure 1 helps visualize the posterior trade-off for the long and short data samples, respectively. The smaller the amount of observed data, the larger the influence of the prior on the posterior (the "closer" the posterior to the prior).

# Key Points

- The degree of posterior information trade-off has two determinants: strength of the prior information and amount of historical data available.
- Informative prior beliefs can modify substantially the information content of the observed data.

- Informative prior elicitation most commonly involves two steps: selecting the form of the prior distribution (usually, an analytically convenient one) and specifying its parameters (the hyperparameters) to reflect the prior beliefs.
- Noninformative priors help account for estimation uncertainty without substantially influencing the posterior parameter inference.
- A conjugate prior distribution guarantees that the resulting posterior distribution is of the same form as the prior.
- The posterior distribution can be summarized with point estimates, such as posterior mean, posterior median, posterior standard deviation, and posterior quantiles, as well as interval estimates.
- As in the case of posterior inference, when forecasting, one has available the whole predictive distribution of the random variable(s).


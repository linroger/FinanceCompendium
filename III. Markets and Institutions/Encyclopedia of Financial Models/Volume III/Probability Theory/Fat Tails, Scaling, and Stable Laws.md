---
title: "Fat Tails, Scaling, and Stable Laws"
parent_directory: "Probability Theory"
formatted: "2025-12-21 07:13:00 AM"
formatter_model: "claude-sonnet-4"
cli_tool: "claude-code"
primary_tags:
  - fat tailed distributions
  - stable distributions
  - extreme value theory
  - hill estimator
  - order statistics
  - scaling self similarity
secondary_tags:
  - power law distributions
  - central limit theorem
  - maximum domain of attraction
  - subexponential distributions
  - point process exceedances
  - quantile transformation
  - empirical distribution function
  - moment ratio estimator
  - heavy tailed arma processes
  - arch garch processes
  - subordinated processes
  - markov switching models
  - tail index estimation
  - domain of attraction
  - glivenko-cantelli theorem
  - markov switching models
  - self similar processes
  - scaling laws finance
cssclasses: academia
---
  - maximum domain attraction
  - garch processes
  - subordinated processes
  - markov switching models
  - arch processes
  - central limit theorem
  - point process exceedances
  - quantile transformation
  - generalized extreme value
cssclasses: academia
---
  - scaling laws
  - power law distributions
secondary_tags:
  - heavy tailed processes
  - levy stable distributions
  - subexponential distributions
  - self similarity
  - tail index estimation
  - hill estimator
  - pickands estimator
  - maximum domain attraction
  - garch models
  - subordinated processes
  - markov switching models
  - arch processes
cssclasses: academia
---

# Fat Tails, Scaling, and Stable Laws

SERGIO M. FOCARDI, PhD

Partner, The Interteak Group

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: Fat-tailed laws have been found in many economic variables. Fully approximating a finite economic system with fat-tailed laws depends on an accurate statistical analysis of the phenomena, but also on a number of the theoretical implications of subexponentiality and scaling. Modeling financial variables with stable laws implies the assumption of infinite variance, which seems to contradict empirical observations. Nevertheless, scaling laws might still be an appropriate modeling paradigm given the complex interaction of distributional shape and correlations in price processes. They might help in understanding not only the sheer size of economic fluctuations but also the complexity of economic cycles. There are applications where scaling laws play a fundamental role, in particular in risk management and financial optimization. Ignoring the possibility of large deviations would render financial risk management ineffective and dangerous.

Most models of stochastic processes and time series assume that distributions have finite mean and finite variance. In this entry we describe fat-tailed distributions with infinite variance. Fat-tailed distributions have been found in many financial economic variables ranging from forecasting returns on financial assets to modeling recovery distributions in bankruptcies. They have also been found in numerous insurance applications such as catastrophic insurance claims and in value-at-risk measures employed by risk managers.

In this entry, we review the related concepts of fat-tailed, power-law, and Levy-stable distributions, scaling, and self-similarity, as well as explore the mechanisms that generate these distributions.

We discuss the key intuition relative to the applicability of fat-tailed or scaling processes to finance: In a fat-tailed or scaling world (as opposed to an ergodic world), the past does not offer an exhaustive set of possible configurations. Adopting, as an approximation, a scaling description of financial phenomena implies the belief that only a small space of possible configurations has been explored; vast regions remain unexplored.

We begin with the mathematics of fat-tailed processes, followed by a discussion of classical extreme value theory for independent and identically distributed sequences. We then explore the consequences of eliminating the assumption of independence and discuss different concepts of scaling and self similarity. We will not provide a review of the literature on the evidence of fat tails in financial markets. For a review, see Rachev, Menn, and Fabozzi (2005).


## Fat Tails

Consider a random variable  $X$ . By definition,  $X$  is a real-valued function from the set  $\Omega$  of the possible outcomes to the set  $R$  of real numbers, such that the set  $(X \leq x)$  is an event. If  $P(X \leq x)$  is the probability of the event  $(X \leq x)$ , the function  $F(x) = P(X \leq x)$  is a well-defined function for every real number  $x$ . The function  $F(x)$  is called the cumulative distribution function, or simply the distribution function, of the random variable  $X$ . Note that  $X$  denotes a function  $\Omega \to R$ ,  $x$  is a real variable, and  $F(x)$  is an ordinary real-valued function that assumes values in the interval [0,1]. If the function  $F(x)$  admits a derivative

$$
f(x) = \frac{d F(x)}{dx}
$$

The function  $f(x)$  is called the probability density of the random variable  $X$ . The function  $\bar{F}(x) = 1 - F(x)$  is the tail of the distribution  $F(x)$ . The function  $\bar{F}(x)$  is called the survival function.

Fat tails are somewhat arbitrarily defined. Intuitively, a fat-tailed distribution is a distribution that has more weight in the tails than some reference distribution. The exponential decay of the tail is generally assumed as the borderline separating fat-tailed from light-tailed distributions. In the literature, distributions with a power-law decay of the tails are referred to as heavy-tailed distributions. It is sometimes assumed that the reference distribution is Gaussian (i.e., normal), but this is unsatisfactory; it implies, for instance, that exponential distributions are fat-tailed because Gaussian tails decay as the square of an exponential and thus faster than an exponential.


These characterizations of fat-tailedness (or heavy-tailedness) are not convenient from a mathematical and statistical point of view. It would be preferable to define fat-tailedness in terms of a function of some essential property that can be associated to it. Several proposals have been advanced. Widely used definitions focus on the moments of the distribution. Definitions of fat-tailedness based on a single moment focus either on the second moment, the variance, or the kurtosis, defined as the fourth moment divided by the square of the variance. In fact, a distribution is often considered fat-tailed if its variance is infinite or if it is leptokurtic (i.e., its kurtosis is greater than 3). However, as remarked by Bryson (1982), definitions of this type are too crude and should be replaced by more complete descriptions of tail behavior.

Others consider a distribution fat-tailed if all its exponential moments are infinite,  $E[e^{sX}] = \infty$  for every  $s \geq 0$ . This condition implies that the moment-generating function does not exist. Some suggest weakening this condition, defining fat-tailed distributions as those distributions that do not have a finite exponential moment of first order. Exponential moments are particularly important in finance and economics when the logarithm of variables, for instance logprices, are the primary quantity to be modeled.

Fat-tailedness has a consequence of practical importance: The probability of extremal events (i.e., the probability that the random variable assumes large values) is much higher than in the case of normal distributions. A fat-tailed distribution assigns higher probabilities to extremal events than would a normal distribution.

For instance, a six-sigma event (i.e., a realized value of a random variable whose difference from the mean is six times the size of the standard deviation) has a near zero probability in a Gaussian distribution but might have a nonnegligible probability in fat-tailed distributions.

The notion of fat-tailedness can be made quantitative as different distributions have different degrees of fat-tailedness. The degree of fat-tailedness dictates the weight of the tails and thus the probability of extremal events. Extreme value theory attempts to estimate the entire tail region, and therefore the degree of fat-tailedness, from a finite sample. A number of indicators for evaluating the size of extremal events have been proposed; among these is the extremal claim index proposed in Embrechts, Kluppelberg, and Mikosch (1999), which plays an important role in risk management.

## The Class  $\mathfrak{L}$  of Fat-Tailed Distributions

Many important classes of fat-tailed distributions have been defined; each is characterized by special statistical properties that are important in given application domains. We will introduce a number of such classes in order of inclusion, starting from the class with the broadest membership: the class  $\mathfrak{L}$ , which is defined as follows. Suppose that  $F$  is a distribution function defined in the domain  $(0,\infty)$  with  $F < 1$  in the entire domain (i.e.,  $F$  is the distribution function of a positive random variable with a tail that never decays to zero). It is said that  $F \in \mathfrak{L}$  if, for any  $y > 0$ , the following property holds:

$$
\lim_{x \to \infty} \frac{\bar {F} (x - y)}{\bar {F} (x)} = 1, \forall y > 0
$$

We can rewrite the above property in an equivalent (and perhaps more intuitive from the probabilistic point of view) way. Under the same assumptions as above, it is said that, given a positive random variable  $X$ , its distribution function  $F \in \mathfrak{L}$  if the following property holds for any  $y > 0$ :


$$
\begin{array}{l} \lim_{x \rightarrow \infty} P (X > x + y | X > x) \\ = \lim_{x \rightarrow \infty} \frac{\bar {F} (x + y)}{\bar {F} (x)} = 1, \forall y > 0 \\ \end{array}
$$

Intuitively, this second property means that if it is known that a random variable exceeds a given value  $x$ , then it will exceed any bigger value with certainty as the value  $x$  tends to infinity. Some authors define a distribution as being heavy-tailed if it satisfies this property.[2]

It can be demonstrated that if a distribution  $F(x) \in \mathfrak{L}$ , then it has the following properties:

- Infinite exponential moments of every order:  $E[e^{sX}] = \infty$  for every  $s \geq 0$
- $\lim_{x\to \infty}\bar{F} (x)e^{\lambda x} = \infty ,\forall \lambda >0$

As distributions in class  $\mathfrak{L}$  have infinite exponential moments of every order, they satisfy one of the previous definitions of fat-tailedness. However, they might have finite or infinite mean and variance.

The class  $\mathfrak{L}$  is in fact quite broad. It includes, in particular, the two classes of subexponential distributions and distributions with regularly varying tails that are discussed in the following sections.

## Subexponential Distributions

A class of fat-tailed distributions, widely used in insurance and telecommunications, is the class  $S$  of subexponential distributions. Introduced by Chistyakov (1964), subexponential distributions can be characterized by two equivalent properties: (1) the convolution closure property of the tails and (2) the property of the sums.

The convolution closure property of the tails prescribes that the shape of the tail is preserved after the summation of identical and independent copies of a variable. This property asserts that, for  $x \to \infty$ , the tail of a sum of independent and identical variables has the same shape as the tail of the variable itself. As the distribution of a sum of  $n$  independent variables is the  $n$ -convolution of their distributions, the convolution closure property can be written as


$$
\lim_{x \rightarrow \infty} \frac{\bar {F}^{n^{*}} (x)}{\bar {F} (x)} = n
$$

Note that Gaussian distributions do not have this property although the sum of independent Gaussian distributions is again a Gaussian distribution. Subexponential distributions can be characterized by another important (and perhaps more intuitive) property, which is equivalent to the convolution closure property: In a sum of  $n$  variables, the largest value will be of the same order of magnitude as the sum itself. For any  $n$ , define

$$
S_{n} (x) = \sum_{i = 1}^{n} X_{i}
$$ as a sum of independent and identical copies of a variable  $X$  and call  $M_{n}$  their maxima. In the limit of large  $x$ , the probability that the tail of the sum exceeds  $x$  equals the probability that the largest summand exceeds  $x$ :


$$
\lim_{x \rightarrow \infty} \frac{P (S_{n} > x)}{P (M_{n} > x)} = 1
$$

The class  $S$  of subexponential distributions is a proper subset of the class  $\mathfrak{L}$ . Every subexponential distribution belongs to the class  $\mathfrak{L}$  while it can be demonstrated (but this is not trivial) that there are distributions that belong to the class  $\mathfrak{L}$  but not to the class  $S$ . Distributions that have both properties are called subexponential as it can be demonstrated that, as all distributions in  $\mathfrak{L}$ , they satisfy the property:

$$
\lim_{x \rightarrow \infty} \bar {F} (x) e^{\lambda x} = \infty , \forall \lambda > 0
$$

Note, however, that the class of distributions that satisfies the latter property is broader than the class of subexponential distributions; this is because the former includes, for instance, the class  $\mathfrak{L}$ .

Subexponential distributions do not have finite exponential moments of any order, that is,  $E[e^{sX}] = \infty$  for every  $s \geq 0$ . They may or may not have a finite mean and/or a finite variance. Consider, in fact, that the class of subexponential distributions includes both Pareto and Weibull distributions. The former have infinite variance but might have finite or infinite mean depending on the index; the latter have finite moments of every order (see below).


The key indicators of subexponentiality are (1) the equivalence in the distribution of the tail between a variable and a sum of independent copies of the same variable and (2) the fact that a sum is dominated by its largest term. The importance of the largest terms in a sum can be made more quantitative using measures such as the large claims index introduced in Embrechts, Kluppelberg, and Mikosch (1999) that quantifies the ratio between the largest  $p$  terms in a sum and the entire sum.

The class of subexponential distributions is quite large. It includes not only Pareto and stable distributions but also log-gamma, lognormal, Benkander, Burr, and Weibull distributions. Pareto distributions and stable distributions are a particularly important subclass of subexponential distributions; these will be described in some detail below.

## Power-Law Distributions

Power-law distributions are a particularly important subset of subexponential distributions. Their tails follow approximately an inverse power law, decaying as  $x^{-\alpha}$ . The exponent  $\alpha$  is called the tail index of the distribution. To express formally the notion of approximate power-law decay, we need to introduce the class  $\Re(\alpha)$ , equivalently written as  $\Re_{\alpha}$  of regularly varying functions.

A positive function  $f$  is said to be regularly varying with index  $\alpha$  or  $f\in \Re (\alpha)$  if the following condition holds:

$$
\lim_{x \rightarrow \infty} \frac{f (t x)}{f (x)} = t^{\alpha}
$$

A function  $f \in \Re(\alpha)$  is called slowly varying. It can be demonstrated that a regularly varying function  $f(x)$  of index  $\alpha$  admits the representation  $f(x) = x^{\alpha} l(x)$  where  $l(x)$  is a slowly varying function.

A distribution  $F$  is said to have a regularly varying tail if the following property holds:

$$
\bar {F} = x^{- \alpha} l (x)
$$ where  $l$  is a slowly varying function. An example of a distribution with a regularly varying tail is Pareto's law. The latter can be written in various ways, including the following:


$$
\bar {F} (x) = P (X > x) = \frac{c}{c + x^{\alpha}} \text{for} x \geq 0
$$

Power-law distributions are thus distributions with regularly varying tails. It can be demonstrated that they satisfy the convolution closure property of the tail. The distribution of the sum of  $n$  independent variables of tail index  $\alpha$  is a power-law distribution of the same index  $\alpha$ . Note that this property holds in the limit for  $x \to \infty$ . Distributions with regularly varying tails are therefore a proper subset of subexponential distributions.

Being subexponential, power laws have all the general properties of fat-tailed distributions and some additional ones. One particularly important property of distributions with regularly varying tails, valid for every tail index, is the rank-size order property. Suppose that samples from a power law of tail index  $\alpha$  are ordered by size, and call  $S_{r}$  the size of the  $r$ th sample. One then finds that the law

$$
S_{r} = a r^{- \frac{1}{\alpha}}
$$ is approximately verified. The well-known Zipf's law is an example of this rank-size ordering. Zipf's law states that the size of an observation is inversely proportional to its rank. For example, the frequency of words in an English text is inversely proportional to their rank. The same is approximately valid for the size of U.S. cities.


Many properties of power-law distributions are distinctly different in the three following ranges of  $\alpha$ :  $0 < \alpha \leq 1$ ,  $1 < \alpha \leq 2$ ,  $\alpha > 2$ . The threshold  $\alpha = 2$  for the tail index is important as it marks the separation between the applicability of the standard central limit theorem (CLT); the threshold  $\alpha = 1$  is important as it separates variables with a finite mean from those with infinite mean. Let's take a closer look at the law of large numbers and the CLT.


## The Law of Large Numbers and the Central Limit Theorem

There are four basic versions of the law of large numbers (LLN), two weak laws of large numbers (WLLN), and two strong laws of large numbers (SLLN).

The two versions of the WLLN are formulated as follows.

1. Suppose that the variables  $X_{i}$  are IID with finite mean  $E[X_i] = E[X] = \mu$  Under this condition it can be demonstrated that the empirical average tends to the mean in probability:

$$
\bar {X}_{n} = \frac{\sum_{i = 1}^{n} X_{i}}{n} \xrightarrow [ n \to \infty ]{P} E [ X ] = \mu
$$

2. If the variables are only independently distributed (ID) but have finite means and variances  $(\mu_{i},\sigma_{i})$ , then the following relationship holds:

$$
\bar {X}_{n} = \frac{\sum_{i = 1}^{n} X_{i}}{n} \xrightarrow [ n \to \infty ]{P} \frac{\sum_{i = 1}^{n} \bar {X}_{i}}{n} = \frac{\sum_{i = 1}^{n} \mu_{i}}{n}
$$

In other words, the empirical average of a sequence of finite-mean finite-variance variables tends to the average of the means.

The two versions of the SLLN are formulated as follows.

1. The empirical average of a sequence of IID variables  $X_{i}$  tends almost surely to a constant  $a$  if and only if the expected value of the variables is finite. In addition, the constant  $a$  is equal to  $\mu$ . Therefore, if and only if  $|E[X_i]| = |E[X]| = |\mu| < \infty$  the following relationship holds:

$$
\bar {X}_{n} = \frac{\sum_{i = 1}^{n} X_{i}}{n} \xrightarrow [ n \to \infty ]{A . S.} E [ X ] = \mu
$$ where convergence is in the sense of almost sure convergence.


2. If the variables  $X_{i}$  are only independently distributed (ID) but have finite means and variances  $(\mu_i,\sigma_i)$  and

$$
\lim_{n \rightarrow \infty} \frac{1}{n^{2}} \sum_{i = 1}^{n} \sigma_{i}^{2} <   \infty
$$ then the following relationship holds:


$$
\bar {X}_{n} = \frac{\sum_{i = 1}^{n} X_{i}}{n} \xrightarrow [ n \to \infty ]{A . S .} \frac{\sum_{i = 1}^{n} \bar {X}_{i}}{n} = \frac{\sum_{i = 1}^{n} \mu_{i}}{n}
$$

Suppose the variables are IID. If the scaling factor  $n$  is replaced with  $\sqrt{n}$ , then the limit relation no longer holds as the normalized sum

$$
\frac{\sum_{i = 1}^{n} X_{i}}{\sqrt{n}}
$$ diverges. However, if the variables have finite second-order moments, he classical version of the CLT can be demonstrated. In fact, under the assumption that both first- and second-order moments are finite, it can be shown that


$$
\frac{S_{n} - n \mu}{\sigma \sqrt{n}} \stackrel {D} {\to} \Phi
$$

$$
S_{n} = \sum_{i = 1}^{n} X_{i}
$$ where  $\mu, \sigma$  are respectively the expected value and standard deviation of  $X$ , and  $\Phi$  the standard normal distribution.


If the tail index  $\alpha > 1$ , variables have finite expected value and the SLNN holds. If the tail index  $\alpha > 2$ , variables have finite variance and the CLT in the previous form holds. If the tail index  $\alpha \leq 2$ , then variables have infinite variance: The CLT in the previous form does not hold. In fact, variables with  $\alpha \leq 2$  belong to the domain of attraction of a stable law of index  $\alpha$ . This means that a sequence of properly normalized and centered sums tends to a stable distribution with infinite variance. In this case, the CLT takes the form

$$
\frac{S_{n} - n \mu}{n^{\frac{1}{\alpha}}} \stackrel {D} {\rightarrow} G_{\alpha}, \text{if } 1 <   \alpha \leq 2
$$

$$
\frac{S_{n}}{n^{\frac{1}{\alpha}}} \stackrel {D} {\to} G_{\alpha}, \text{if } 0 <   \alpha \leq 1
$$ where  $G$  are stable distributions as defined below. Note that the case  $\alpha = 2$  is somewhat special: variables with this tail index have infinite variance but fall nevertheless in the domain of attraction of a normal variable, that is,  $G_{2}$ . Below the threshold 1, distributions have neither finite variance nor finite mean. There is a sharp change in the normalization behavior at this tail-index threshold.


## Stable Distributions

Stable distributions are not, in their generality, a subset of fat-tailed distributions as they include the normal distribution. There are different, equivalent ways to define stable distributions. Let's begin with a key property: the equality in distribution between a random variable and the (normalized) independent sum of any number of identical replicas of the same variable. This is a different property than the closure property of the tail insofar as (1) it involves not only the tail but the entire distribution and (2) equality in distribution means that distributions have the same functional form but, possibly, with different parameters. Normal distributions have this property: The sum of two or more normally distributed variables is again a normally distributed variable. But this property holds for a more general class of distributions called stable distributions or Levy-stable distributions.5 Normal distributions are thus a special type of stable distributions.

The above can be formalized as follows: Stable distributions can be defined as those distributions for which the following identity in distribution holds for any number  $n \geq 2$ :

$$
\sum_{i = 1}^{n} X_{i} \stackrel {D} {=} C_{n} X + D_{n}
$$ where  $X_{i}$  are identical independent copies of  $X$  and the  $C_n$ ,  $D_{n}$  are constants. Alternatively, the same property can be expressed stating that stable distributions are distributions for which the following identity in distribution holds:


$$
A X_{1} + B X_{2} \stackrel {D} {=} C X + D
$$

Stable distributions are also characterized by another property that might be used in defining them: a stable distribution has a domain of attraction (i.e., it is the limit in distribution of a normalized and centered sum of identical and independent variables). Stable distributions coincide with all variables that have a domain of attraction.

Except in the special cases of Gaussian  $(\alpha = 2)$ , symmetric Cauchy  $(\alpha = 1, \beta = 0)$ , and stable inverse Gaussian  $(\alpha = \frac{1}{2}, \beta = 0)$  distributions, stable distributions cannot be written as simple formulas; formulas have been discovered but are not simple. However, stable distributions can be characterized in a simple way through their characteristic function, the Fourier transform of the distribution function. In fact, this function can be written as

$$
\Phi_{X} (t) = \exp [ i \gamma t - c | t |^{\alpha} [ 1 - i \beta \operatorname{sign} (t) z (t, \alpha) ] ]
$$ where  $t\in R,\gamma \in R,c > 0,\alpha \in (0,2),\beta \in [-1,1],$  and


$$
\begin{array}{l} z (t, \alpha) = \tan \frac{\pi \alpha}{2} \mathrm{if} \alpha \neq 1 \\ z (t, \alpha) = - 2 \log | t | \text{if } \alpha = 1 \\ \end{array}
$$

It can be shown that only distributions with this characteristic function are stable distributions (i.e., they are the only distributions closed under summation). A stable law is characterized by four parameters:  $\alpha, \beta, c,$  and  $\gamma$ . Normal distributions correspond to the parameters:  $\alpha = 2, \beta = 0, \gamma = 0$ .

Even if stable distributions cannot be written as simple formulas, the asymptotic shape of their tails can be written in a simple way. In fact, with the exception of Gaussian distributions, the tails of stable laws obey an inverse power law with exponent  $\alpha$  (between 0 and 2). Normal distributions are stable but are an exception as their tails decay exponentially.

For stable distributions, the CLT holds in the same form as for inverse power-law distributions. In addition, the functions in the domain of attraction of a stable law of index  $\alpha < 2$  are characterized by the same tail index. This means that a distribution  $G$  belongs to the domain of attraction of a stable law of parameter  $\alpha < 2$  if and only if its tail decays as  $\alpha$ . In particular, Pareto's law belongs to the domain of attraction of stable laws of the same tail index.


## Extreme Value Theory for IID Processes

In this section we introduce a number of important probabilistic concepts that form the conceptual basis of extreme value theory (EVT). The objective of EVT is to estimate the entire tail of a distribution from a finite sample by fitting to an appropriate distribution those values of the sample that fall in the tail. Two concepts play a crucial role in EVT: (1) the behavior of the upper order statistics (i.e., the largest  $k$  values in a sample) and, in particular, of the sample maxima; and (2) the behavior of the points where samples exceed a given threshold. We will explore the limit distributions of maxima and the distribution of the points of exceedances of a high threshold. Based on these concepts a number of estimators of the tail index in sequences of independent and identically distributed (IID) variables are presented.

## Maxima

In the previous sections we explored the behavior of sums. The key result of the theory of sums is that the behavior of sums simplifies in the limit of properly scaled and centered infinite sums regardless of the shape of individual summands. If sums converge, their limit distributions can only be stable distributions. In addition, the normalized sums of finite-mean, finite-variance variables always converge to a normal variable.

A parallel theory can be developed for maxima, informally defined as the largest value in a sample. The limit distribution of maxima, if it exists, belongs to one of three possible distributions: Frechet, Weibull, or Gumbel. This result forms the basis of classical EVT. Each limit distribution of maxima has its own maximum domain of attraction. In addition, limit laws are max-stable (i.e., they are closed with respect to maxima). However, the behavior of maxima is less robust than the behavior of sums. Maxima do not converge to limit distributions for important classes of distributions, such as Poisson or geometric distributions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/4fd06e5b75dea4215c3465841ee384149a1cec03235d9d945fcf5e16b3046861.jpg)
Figure 1 The Distribution of the Maxima of a Normal Variable


Consider a sequence of independent variables  $X_{i}$  with common, nondegenerate distribution  $F$  and the maxima of samples extracted from this sequence:

$$
M_{1} = X_{1}, M_{n} = \max  (X_{1}, \dots , X_{n})
$$

The maxima  $M_{n}$  form a new sequence of random variables, which are not, however, independent.

As the variables of the sequence  $X_{i}$  are assumed to be independent, the distribution  $F_{n}$  of the maxima  $M_{n}$  can be immediately written down:

$$
F (x)_{n} = P \left(X_{1} \leq x \vee \dots \vee X_{n} \leq x\right) = F^{n} (x)
$$ where  $\vee$  is the logical symbol for and.


If the distribution  $F$ , which is a nondecreasing function, reaches 1 at a finite point  $x_{F}$  that is, if  $x_{F} = \sup \{x\colon F(x) < 1\} < \infty$ , then


$$
\lim_{n \rightarrow \infty} P \left(M_{n} <   x\right) = \lim_{n \rightarrow \infty} F_{n} (x) = 0, \text{for} x <   x_{F}
$$

If  $x_{F}$  is finite,

$$
P \left(M_{n} <   x\right) = F_{n} (x) = 1, \text{for} x > x_{F}
$$

The point  $x_{F}$  is called the right endpoint of the distribution  $F$ .

Figure 1 illustrates the behavior of maxima in the case of a normal distribution. Given a normal distribution with mean zero and variance one, 100,000 samples of 20 elements each are selected. For each sample, the maximum is chosen. The distribution of the maxima and the empirical distribution of independent draws from the same normal are illustrated in the figure.

A deeper understanding of the behavior of maxima can be obtained considering sequences of normalized and centered maxima. Consider the following sequence:  $c_{n}^{-1}(M_{n} - d_{n})$  where  $c_{n} > 0, d_{n} \in R$  are constants.

A fundamental result on the behavior of maxima is the Fisher-Tippett theorem, which can be stated as follows. Consider a sequence of IID variables  $X_{i}$  and the relative sequence of maxima  $M_{n}$ . If there exist two sequences of constants  $c_{n} > 0, d_{n} \in R$  and a nondegenerate distribution function  $H$  such that

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/a0da5002f0efb0992cd0eff9f6d2043dd078714ae555a1cf677e0cd553dabee5.jpg)
Figure 2 The Distribution of Frechet, Gumbel, and Weibull


$$ c_{n}^{- 1} (M_{n} - d_{n}) \stackrel {D} {\to} H
$$ then  $H$  is one of the following distributions:


Frechet:  $\Phi_{\alpha}(x) = \left\{ \begin{array}{ll}0 & x\leq 0\\ \exp (-x^{-\alpha}) & x > 0 \end{array} \right.$, $\alpha >0$

Weibull:  $\Psi_{\alpha}(x) = \left\{ \begin{array}{ll}\exp [-(x)^{-\alpha}] & x < 0\\ 1 & x\geq 0 \end{array} \right.$, $\alpha >0$

Gumbel:  $\Lambda (x) = \exp \{-e^{-x}\}$, $x\in R$

The limit distribution  $H$  is unique, in the sense that different sequences of normalizing constants determine the same distribution.

The three above distributions—Frechet, Weibull, and Gumbel—are called standard extreme value distributions. They are continuous functions for every real  $x$ . Random variables distributed according to one of the extreme value distributions are called extremal random variables.

As an example, consider a standard exponential variable  $X$ . As  $F(x) = P(X \leq x) = 1 - e^{-x}$ ,  $x \geq 0$  the distribution of the maxima is  $P(M_{n} \leq x) = F^{n}(x) = (1 - e^{-x})^{n}$ ,  $x \geq 0$ . If we choose  $d_{n} = \ln n$ , we can write:  $P(M_{n} - d_{n} \leq x) = P(M_{n} \leq \ln n + x) = (1 - n^{-1}e^{-x})^{n}$ ,  $x \geq 0$ . For any given  $x$ ,  $(1 - n^{-1}e^{-x})^{n} \to \exp(-e^{-x})$ , which shows that the maxima of standard exponential variables centered with  $d_{n} = \ln n$  tend to a Gumbel distribution. Figure 2 illustrates the three distributions: Frechet, Gumbel, and Weibull.

We can now ask if there are conditions on the distribution  $F$  that ensure the existence of centering and scaling constants and the convergence to an extreme value distribution. To this end, let's first introduce the concept of the maximum domain of attraction (MDA) of an extreme value distribution  $H$  or  $\mathrm{MDA}(H)$ .

A random variable  $X$  is said to belong to the  $\mathrm{MDA}(H)$  of the extreme value distribution  $H$  if there exist constants  $c_{n} > 0$ ,  $d_{n}\in R$  such that

$$ c_{n}^{- 1} \left(M_{n} - d_{n}\right) \stackrel {D} {\rightarrow} H
$$

Two distribution functions  $F, G$  are said to be tail equivalent if they have the same right endpoints and the following condition holds:

$$
\lim_{x \rightarrow \infty} \frac{\bar {F} (x)}{\bar {G} (x)} = c, 0 <   c <   \infty
$$

Tail equivalence is an important concept for characterizing MDAs. In fact, it can be demonstrated that every  $\mathrm{MDA}(H)$  is closed with respect to tail equivalence (i.e., if two distribution functions  $F$  and  $G$  are tail equivalent  $F\in$ $\mathrm{MDA}(H)$  if and only if  $G\in \mathrm{MDA}(H)$ ). Tail equivalence allows for a powerful characterization of the three MDAs.

Let's first define the quantile function. Given a distribution function  $F$ , the quantile function of  $F$ , written  $F^{\leftarrow}(x)$ , is defined as follows:

$$
F^{\leftarrow} (x) = \inf  [ s \in R: F (s) \geq x ], 0 <   x <   1
 $$

 ## The MDA of the Frechet Distribution

The Frechet distribution is written as  $\Phi_{\alpha}(x) = \exp (-x^{-\alpha})$ . Let's start by observing that the tail of the Frechet distribution decays as an inverse power law. In fact, we can write  $1 - \Phi_{\alpha}(x) = 1 - \exp (-x^{-\alpha}) \approx x^{-\alpha}$  for  $x \to \infty$ .

It can be demonstrated that a distribution function  $F$  belongs to the MDA of a Frechet distribution  $\Phi_{\alpha}(x), \alpha > 0$  if and only if there is a slowly varying function  $L$  such that  $\bar{F}(x) = x^{-\alpha} L(x)$ . In this case, the constants assume the values

$$ c_{n} = (1 / F^{\leftarrow}) (n), d_{n} = 0
$$

We can rewrite this condition more compactly as follows:

$$
F \in \operatorname{MD A} \left(\Phi_{\alpha}\right) \Leftrightarrow \bar {F} \in R_{- \alpha}
$$

From the above definitions it can be demonstrated that the following five distributions belong to the MDA of the Frechet distribution: (1) Pareto; (2) Cauchy; (3) Burr; (4) stable laws with exponent  $\alpha < 2$ ; or (5) log-gamma distribution.

## The MDA of the Weibull Distribution

The Weibull distribution is written as follows:

$$
\Psi_{\alpha} = \exp [ - (- x^{- \alpha}) ]
$$

The Weibull and the Frechet distributions are closely related to each other. In fact, it is clear from the definition that the following relationship holds:

$$
\Psi_{\alpha} (x) = \Phi_{\alpha} (- x^{- 1}), x > 0
$$

One can therefore expect that the MDA of the two distributions are closely related. In fact, it can be demonstrated that a distribution function  $F$  belongs to the MDA of a Weibull distribution  $\alpha > 0$  if and only if

$$ x_{F} <   \infty
$$ and


$$
\bar {F} (x_{F} - x^{- 1}) = x^{- \alpha} L (x)
$$ where  $L$  is a slowly varying function.


If

$$
F \in M D A (\Psi_{\alpha})
$$ then


$$ c_{n}^{- 1} (M_{n} - x_{F}) \stackrel {D} {\to} \Psi_{\alpha}
$$

The MDA of the Weibull distribution includes important distributions such as the distribution uniform in (0,1), power laws truncated to the right, and beta distributions.

## The MDA of the Gumbel Distribution

The Gumbel distribution is written as  $\Lambda(x) = \exp[-\exp(-x)]$ . Observe that the Gumbel distribution has exponential tails. This fact can be easily ascertained through Taylor expansion. There is no simple characterization of the MDA of the Gumbel distribution.

The MDA of a Gumbel distribution encompasses a large class of distributions that includes the exponential distribution, the normal distribution, and the lognormal distribution. Though the Gumbel distribution has exponential tails, its MDA includes subexponential distributions such as the Berktander distribution, as explained in Goldie and Resnick (1988).


## Max-Stable Distributions

Stable distributions remain unchanged after summation; max-stable distributions remain unchanged after taking maxima. A nondegenerate random variable  $X$  and the relative distribution is called max-stable if there are constants  $c_{n} > 0$ ,  $d_{n} \in R$  such that the following conditions are satisfied

$$
\max (X_{1}, \ldots , X_{n}) \stackrel {D} {=} c_{n} X + d_{n}
$$ where  $X, X_1, \ldots, X_n$  are IID variables.


It can be demonstrated that the class of max-stable distributions coincides with the class of possible limit laws for normalized and centered maxima. In view of the previous discussions, the max-stable laws are the three possible limit laws: Frechet, Weibull, and Gumbel.

## Generalized Extreme Value Distributions

The three extreme value distributions, Frechet, Weibull, and Gumbel, can be represented as a one-parameter family of distributions through the standard generalized extreme value distribution (GEV) of Jenkinson and Von Mises. Define the distribution function  $H_{\xi}$  as follows:

$$
H_{\xi} = \left\{ \begin{array}{l l} \exp [ - (1 + \xi x)^{- 1 / \xi} ] & \text{for} \xi \neq 0 \\ \exp (- \exp (- x)) & \text{for} \xi = 0 \end{array} \right.
$$ where  $1 + \xi x > 0$ . One can see from the definition that  $\xi = \alpha^{-1} > 0$  corresponds to the Frechet distribution,  $\xi = 0$  corresponds to the Gumbel distribution, and  $\xi = -\alpha^{-1} < 0$  corresponds to the Weibull distribution. We can now introduce the related location-scale dependent family  $H_{\xi ;\mu ,\psi}$  by replacing the argument  $x$  with  $(x - \mu) / \psi$ .


## Order Statistics

The behavior of order statistics is a useful tool for characterizing fat-tailed distributions. For instance, the famous Zipf's law is an example of the behavior of order statistics. Consider a sample  $X_{1},\ldots ,X_{n}$  made of  $n$  independent draws from the same distribution  $F$ . Let's arrange the sample in decreasing order:

$$
X_{n, n} \leq \ldots \leq X_{1, n}
$$

The random variable  $X_{k,n}$  is called the kth upper order statistic. It can be demonstrated that the distribution of the kth upper order statistic is

$$
F_{k, n} = P \left(X_{k, n} <   x\right) = \sum_{r = 0}^{k - 1} \bar {F}^{r} (x) F^{n - r} (x)
$$

In addition, if  $F$  is continuous, it has a density with respect to  $F$  such that

$$
F_{k, n} = \int_{- \infty}^{x} f_{k, n} (z) d F (z)
$$ where


$$ f_{k, n} = \frac{n !}{(k - 1) ! (n - k) !} \bar {F}^{k - 1} (x) F^{n - k} (x)
$$

The differences between two consecutive variables in a sample  $X_{k,n} - X_{k+1,n}$  are random variables called spacings. In the case of variables with finite right endpoint  $x_F$  the zero-th spacing is defined as:  $X_{0,n} - X_{1,n} = x_F - X_{1,n}$ . The distribution of spacings depends on the distribution  $F$ . For instance, it can be demonstrated that the spacings of an exponential random variable are independent, exponential random variables with mean  $1/n$  for an  $n$ -sample. Spacings are a key concept for the definition of the Hill estimator, as explained later in this section.

Another key concept, which is related to spacings, is that of quantile transformation. Let  $X_{1},\ldots ,X_{n}$  be IID variables with distribution function  $F$  and let  $U_{1},\ldots ,U_{n}$  be IID variables uniformly distributed on the interval (0,1). Recall that, given a distribution function  $F$ , the quantile function of  $F$ , written  $F^{\leftarrow}(x)$ , is defined as follows:


$$
F^{\leftarrow} (x) = \inf  \{s \in R: F (s) \geq x \}, 0 <   x <   1
$$

It can be demonstrated that the following results hold:

$F\leftarrow (U_1)\stackrel {D}{=}X_1$
- $(X_{1,n},\ldots ,X_{n,n})\stackrel {D}{=}[F\leftarrow (U_{1,n}),\ldots ,F\leftarrow (U_{n,n})]$
- The random variable  $F(X_{1})$  has a uniform distribution on (0,1) if and only if  $F$  is a continuous function.

To appreciate the importance of the quantile transformation, let's introduce first the notion of empirical distribution function and second the Glivenko-Cantelli theorem. The empirical distribution function  $F_{n}$  of a sample  $X_{1},\ldots ,X_{n}$  is defined as follows:

$$
F_{n} (x) = \frac{1}{n} \sum_{i = 1}^{n} I \left(X_{i} \leq x\right)
$$ where  $I$  is the indicator function. In other words, for each  $x$ , the empirical distribution function counts the number of samples that are less than or equal to  $x$ .


The Glivenko-Cantelli theorem provides the theoretical underpinning of nonparametric statistics. It states that, if the samples  $X_{1},\ldots ,X_{n}$  are independent draws from the distribution  $F$  the empirical distribution function  $F_{n}$  tends to  $F$  for large  $n$  in the sense that

$$
\Delta_{n} = \sup_{x \in R} | F_{n} (x) - F (x) | \stackrel {a. s.} {\rightarrow} 0, \text{for} n \rightarrow \infty
$$

The quantile transformation tells us that in cases where  $F$  is a Pareto distribution, if we approximate  $n$  random draws from a uniformly distributed variable as the sequence  $1,2,\ldots ,n$ , then the corresponding values of the sample  $X_{1},\ldots ,X_{n}$  will be

$$
\frac{1}{1}, \frac{1}{2}, \dots \frac{1}{n}
$$ which is a statement of Zipf's law.


From the quantile transformation, the limit law of the ratio between two successive order statistics can also be inferred. Suppose that an (infinite) population is distributed according to a distribution  $F \in \Re(\alpha)$  with regularly varying tails. Suppose that  $n$  samples are randomly and independently drawn from this distribution and ordered in function of size:  $X_{n,n} \geq X_{n-1,n} \geq \ldots \geq X_{1,n}$ . It can be demonstrated that the following property holds:


$$
\frac{X_{k , n}}{X_{k + 1 , n}} = 1, \frac{k}{n} \rightarrow 0
$$

## Point process of exceedances or peaks over threshold

We have now reviewed the behavior of sums, maxima, and upper order statistics of continuous random variables. Yet another approach to EVT is based on point processes; herein we will use point processes only to define the point process of exceedances.

Point processes can be defined in many different ways. To illustrate the mathematics of point processes, let's first introduce the homogeneous Poisson process. A homogeneous Poisson process is defined as a process  $N(t)$  that starts at zero, i.e.,  $N(0) = 0$ , and has independent stationary increments. In addition, the random variable  $N(t)$  is distributed as a Poisson variable with parameter  $\lambda t$ .  $N(t)$  is therefore a time-dependent discrete variable that can assume nonnegative integer values. Figure 3 illustrates the distribution of a Poisson variable.

A homogeneous Poisson process can also be defined as a random sequence of points on the real line. Consider all discrete sequences of points on the real line separated by random intervals. Intervals are independent random variables with exponential distribution. This is the usual definition of a Poisson process. Call  $N(t)$  the number of points that fall in the interval  $[0, t]$ . It can be demonstrated that  $N(t)$  is a homogeneous Poisson process according to the previous definition.

This latter definition can be generalized to define point processes. Intuitively, a generic point process is a random collection of discrete points in some space. From a mathematical point of view, it is convenient to describe a point process through the distribution of the number of points that fall in an arbitrary set. In the case of homogeneous Poisson processes, we consider the number of points that fall in a given interval; for a generic point process, it is convenient to consider a wider class of sets.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/8196b6c678a22bf957bc74cd94a940aa0d9d95ec7b677320b62ac757d4c1b99c.jpg)
Figure 3 Distribution of a Poisson Variable


Consider a subspace  $E$  of a finite dimensional Euclidean space of dimension  $n$ . Consider also the  $\sigma$ -algebra  $\mathfrak{B}$  of the Borel sets generated by open sets in  $E$ . The space  $E$  is called the state space. For each point  $x$  in  $E$  and for each set  $A \in \mathfrak{B}$ , define the Dirac measure  $\varepsilon_x$  as

$$
\varepsilon_{x} = \left\{ \begin{array}{l l} 1 & \text{if } \quad x \in \mathrm{A} \\ 0 & \text{if } \quad x \notin \mathrm{A} \end{array} \right.
$$

For any given sequence  $x_{i}, i \geq 1$  of points in  $E$ , define the following set function:

$$ m (A) = \sum_{i = 1}^{\infty} \varepsilon_{x_{i}} (A) = \operatorname{card} \{i: X_{i} \in A \}, A \in \mathfrak {B}
$$

It can be verified that  $m(A)$  is a measure  $\mathfrak{B}$ , called a counting measure. If a counting mea sure is finite on each compact set, then it is called a point measure. In other words, any given countable sequence in  $E$  generates a counting measure on  $\mathfrak{V}$ .


A point process is obtained associating to each family of sets  $A_{i} \in \mathfrak{B}$  the joint probability distributions:

$$
\Pr \{m (A_{i}) = n_{i}; i = 1, 2, \dots , k; k = 1, 2, \dots \}
$$

To make this definition mathematically rigorous, a point process can be defined as a measurable map from some probability space to the set of all point measures equipped with an appropriate  $\sigma$ -algebra. Besides the mathematical details, it should be clear that point processes are defined by the probability distribution of the number of points that fall in each set  $A$  of some  $\sigma$ -algebra. The key ingredients of point processes are (1) counting measures that associate to each set  $A$  the number of points of each discrete sequence that falls in  $A$  with the additivity restrictions of measures and (2) probability distributions defined over the space of counting measures.

Equipped with the general concept of point processes, we can now define the point process of exceedances. Consider a threshold formed by any real number  $u$  and a sequence of random variables  $X_{i}, i = 1,2,\ldots$ . The point process of exceedances with state space  $E = (0,1)$  counts the number of instances where the random variables  $X_{i}$  exceed the threshold  $u$ :

$$
N_{n} (A) = \sum_{i = 1}^{\infty} \varepsilon_{i / n} (A) = \operatorname{card} \{i \leq n \text{and} X_{i} > u \}
$$

Note that in this case the state space specifies the size of the sample.

## Estimation

In the previous sections we presented some key topics related to the probability structure of the tails of distributions, be they light- or fat-tailed. Let's now turn to the problem of estimation, which is the key practical task. The problem of estimation for EVT is essentially the problem of estimating the tail of a distribution from a finite sample. The key statistical idea of EVT from the point of view of estimation is to use only those sample data that belong to the tail and not the entire sample. This notion has to be made precise by finding criteria that allow one to separate the tail from the bulk of the distribution. Therefore, the estimation problem of EVT distribution can be broken down into three separate subproblems:

- Identify the beginning of the tail.
- Identify the shape of the tail, in particular discriminate if it is a power-law tail.
- Estimate the tail parameters, in particular the tail index in the case of a power-law tail.

It turns out that these three problems cannot be easily separated. In fact, there is no reliable constructive theory for solving all these problems automatically. In particular, the choice of the statistical model (i.e., the distribution that best describes data) is a classical problem of formulating and validating a scientific hypothesis in a probabilistic context. However, there are many tools and tests to help the modeler in this endeavor.


The first fundamental tool is the graphical representation of data, in particular the quantile plot or QQ-plot defined as the following set:

$$
\left\{X_{k, n}, F^{\leftarrow} \left(\frac{n - k + 1}{n + 1}\right): k = 1, 2, \dots , n \right\}
$$

The quantile transformation and the Glivenko-Cantelli theorem allow concluding that this plot must be approximately linear. Should  $F$  be a Pareto distribution, the linearity of the QQ-plot is another statement of Zipf's law. The quantile plot allows a quick verification of a statistical hypotheses by checking the approximate linearity of the plot. It also allows the modeler to form a preliminary opinion on where the tail begins and whether the model fails at the far end of the tail.

Though invaluable as an exploratory tool, graphics rely on human judgment and intuition. Rigorous tests are needed. A starting point is parameter estimation for the generalized extreme value (GEV) distribution that we write as

$$
\begin{array}{l} H_{\xi ; \mu , \Psi} (x) = \exp \left\{- \left(1 + \xi \frac{x - \mu}{\Psi}\right)^{- 1 / \xi} \right\}, \\ 1 + \xi \frac{x - \mu}{\Psi} > 0 \\ \end{array}
$$ with the convention that the case  $\xi = 0$  corresponds to the Gumbel distribution:


$$
H_{0; \mu , \Psi} (x) = \exp \left\{- e^{- \frac{x - \mu}{\Psi}} \right\}, x \in R
$$

We saw above that these distributions are the limit distributions, if they exist, of the normalized maxima of IID sequences. Suppose that the data to be estimated are independent draws from some EGV. This is a rather strong assumption that we will progressively relax. This assumption might be justified in domains where long series of data are available so that the sample data are the maxima of blocks of consecutive data. Though this assumption is probably too strong in the domain of finance, it is useful to elaborate its consequences.

Standard methodologies exist for parameter estimation in this case. In particular, the usual maximum likelihood (ML) methodology can be used for fitting the best GEV to data. Note that if the above distributions fit maxima we have to divide data into blocks and consider the maxima of each block. To apply ML, we have to compute the likelihood function on the data and choose the parameters that maximize it. This can be done with numerical integration methods.

An estimation method alternative to ML is the method of moments, which consists in equating empirical moments with theoretical moments. An ample literature on various versions of the method of moments exists.[7]

Let's now release the assumption that the sequence of empirical data are independent draws from an exact GEV and replace this with the weaker assumption that empirical data are independent draws from  $F \in \mathrm{MDA}(H_{\xi})$ . If we assume that the limit distribution is a Frechet distribution, then data must be independent draws from some distribution  $F$  whose tail has the form:

$$
\bar {F} = x^{- \alpha} L (x)
$$ where  $L$  is a slowly varying function as described earlier in this entry. For this reason, estimation under this weaker assumption is semiparametric in nature. We will now introduce a number of estimators of the shape parameter  $\xi$ .


## The Pickands Estimator

The Pick and estimator  $\hat{\xi}_{k,n}^{(P)}$  for an  $n$ -sample of independent draws from a distribution  $F \in \mathrm{MDA}(H_{\xi})$  is defined as

$$
\hat {\xi}_{k, n}^{(P)} = \frac{1}{\ln 2} \ln \frac{X_{k , n} - X_{2 k , n}}{X_{2 k , n} - X_{4 k , n}}
$$ where the  $X_{k,n}$  are upper order statistics.


It can be demonstrated that the Pickand estimator has the following properties:

- Weak consistency:

$$
\hat {\xi}_{k, n}^{(P)} \stackrel {P} {\rightarrow} \xi , n \rightarrow \infty , k \rightarrow \infty , \frac{k}{n} \rightarrow 0
$$

Strong consistency:

$$
\hat {\xi}_{k, n}^{(P)} \stackrel {a. s.} {\rightarrow} \xi , n \rightarrow \infty , \frac{k}{\ln (\ln n)} \rightarrow \infty , \frac{k}{n} \rightarrow 0
$$

- Asymptotic normality under technical conditions.

The Pickand estimator is an estimator of the parameter  $\xi$  that does not require any assumption on the type of limit distribution. Let's now examine the Hill estimator, which requires the prior knowledge that sample data are independent draws from a Frechet distribution. Later in this entry we will see that the assumption of independence can be weakened.

## The Hill Estimator

Suppose that  $X_{1},\ldots ,X_{n}$  are independent draws from a distribution  $F\in \mathrm{MDA}(\Phi_{\alpha}),\alpha >0$  so that  $\bar{F} = x^{-\alpha}L(x)$  where  $L$  is a slowly varying function. The Hill estimator can be obtained as an MLE based on the  $k$  upper order statistics. The Hill estimator takes the following form:

$$
\hat {\alpha}^{(H)} = \hat {\alpha}_{k, n}^{(H)} = \left(\frac{1}{k} \sum_{j = 1}^{k} \ln X_{j, n} - \ln X_{k, n}\right)^{- 1}
$$

The Hill estimator has the same weak and strong consistency property as well as asymptotic normality as the Pickard estimator. The Hill estimator is by far the most popular estimator of the tail index. It has the advantage of being robust to some dependency in the data but can perform very poorly in case of deviations from strict Pareto behavior. In addition, it is subject to a bias-variance trade-off in the following sense: The variance of the Hill estimator depends on the ratio  $k / n$ : It decreases for increasing  $k$ . However, using a large fraction of the data will introduce bias in the estimator.

As stated above, a critical tenet of EVT is the idea of fitting the tail rather than the entire distribution. A number of articles on the automatic determination of the optimal subset of samples to be included in the tail have appeared. One approach to the automatic determination of the tail sample using the variance-bias trade-off was proposed by Drees and Kaufmann (2000), while Dacorogna et al. (1995), and Danielsson and de Vries (1977) proposed methods based on a bootstrap approach.


The moment ratio estimator is a generalization of the Hill estimator. Consider the following estimator of the second order moments of the  $k$  upper order statistic:

$$
\hat {M}_{k, n} = \frac{1}{k} \left(\sum_{j = 1}^{k} \ln X_{j, n} - \ln X_{k + 1, n}\right)^{2}
$$

The moment ratio estimator is defined as follows:

$$
\hat {\alpha}_{k, n}^{(m)} = \frac{1}{2} \left(\frac{\hat {M}_{k , n}}{\hat {\alpha}_{k , n}^{(H)}}\right)
$$

Wagner and Marsh (2000) did extensive simulation analysis of various estimators. Their finding is that the moment ratio estimator outperforms the Hill estimator in sequences with a dependence structure (this is discussed further in the next section).

The Hill estimator was extended by Dekkers and de Haan (1989) to cover the entire range of shape parameters  $\xi$ . A number of other estimators have been proposed. In particular, under the assumption that financial data follow a stable process, estimation procedures based on regression analysis have been suggested. In fact, the assumption of stable behavior, or at least of exact Pareto tail, naturally leads to fitting a linear model in a logarithmic scale. There is an ample literature on this topic with a number of useful discussions, though empirical studies based on Monte Carlo simulations are still limited.[8]

The estimation methods reviewed above are based on the behavior of maxima and upper order statistics; another methodology uses the points of exceedances of high thresholds. Estimation methodologies based on the points of exceedances require an appropriate model for the point process of exceedances that was defined in general terms previously in this entry.


## Eliminating the assumption of IID sequences

In the previous sections we reviewed a number of mathematical tools that are used to describe fat-tailed processes under the key assumption of IID sequences. In this section we discuss the implications of eliminating this assumption. However, in finance theory the assumption of stationary sequences of independent variables is only a first approximation; it has been challenged in several instances. Consider individual price time series. The autocorrelation function of returns decays exponentially and goes to near zero at very short-time horizons while the autocorrelation function of volatility decays only hyperbolically and remains different from zero for long periods. In addition, if we consider portfolios made of many securities, price processes exhibit patterns of cross correlations at different time-lags and, possibly, cointegrating relationships. These findings offer additional reasons to consider the assumption of serial independence as only a first approximation.

If we now consider the question of stationarity, empirical findings are more delicate. The nonstationarity that can be removed by differencing is easy to handle and does not present a problem. The critical issue is whether financial time series can be modeled with a single data generation process (DGP) that remains the same for the entire period under consideration or if the model must be modified. Consider, for instance, the question of structural breaks. At a basic level, structural breaks entail nonstationarity as the model parameters change with time and thus the finite-dimension distributions change with time. However, at a higher level one might try to model structural changes, for instance through state-space models or Markov switching models. In this way, stationarity is recovered but at the price of a more complex, serially autocorrelated model.


EVT for multivariate models with complex patterns of serial correlations loses its generality and becomes model-dependent. One has to evaluate each model in terms of its behavior as regards extremes. In this section we will explore a number of models that have been proposed for modeling financial time series: ARCH and GARCH models and, more in general, state-space models. First, however, a number of methodological considerations are in order.

In the context of IID sequences, EVT tries to answer the question of how to estimate a distribution with heavy tails given only a limited amount of data. The model is the simplest (i.e., a sequence of IID variables) and the question is how to extrapolate from finite samples to the entire tail. In the context of IID distributions, conditional and unconditional distributions coincide. However, if we release the IID assumption, we have to specify the model and to estimate the entire model—not just the tail of one variable. Conditional and unconditional distributions no longer coincide. For instance, there are families of models that are conditionally normal and unconditionally fat-tailed.

Here difficulties begin as model estimation might be complex. In addition, estimation of some specific tail might not be the primary concern in model estimation. In the context of variables with a dependence structure, EVT can be thought of as a methodology to estimate the tails of the unconditional distribution, leaving aside the question of full model estimation.

An important methodological question is whether fat-tailedness is generated by the transformation of a sequence of zero-mean, finite variance IID variables (i.e., white noise) or whether innovations themselves have fat tails (i.e., so-called colored noise). For instance, as we will see, GARCH models entail fat-tailed return distributions as the result of the transformation of white noise. On the other hand, one might want to estimate an autoregressive moving average (ARMA) model under the assumption of innovations with infinite variance.


Understanding how power laws and, more in general, fat tails are generated from normal variables has been a primary concern of econometrics and econophysics. Given the universality of power laws in economics, it is clearly important to understand how they are generated. These questions go well beyond the statistical analysis of heavy-tailed processes and involve questions of economic theories. Essentially, one wants to understand how the decisions of a large number of economic agents do not average out but produce cascading and amplification phenomena.

The law of large numbers tells that if individual processes are independent and have finite variance, then phenomena average out in aggregate and tend to an average limit. However, if individual processes have fat tails, phenomena do not average out even in the infinite limit. The weight of individual tails prevails and drives the aggregate process. Philip W. Anderson, the corecipient of the 1997 Nobel Prize in Physics, remarked:

Much of the real world is controlled as much by the "tails" of distributions as by means or averages: by the exceptional, not the mean; by the catastrophe, not the steady drip; by the very rich, not the "middle class." We need to free ourselves from "average" thinking. (Anderson, 1997)

When and if fat-tailed drivers exist, they control the ensemble to which they belong. But what generates these powerful drivers? Models that generate fat tails from standard normal innovations attempt to answer this question. Different types of models have been proposed. One such category of models is purely geometric and exploits mathematical theories such as percolation and random graph. Others exploit phenomena of dynamic nonlinear self-reinforcing cascades of events.

Percolation models are based on the well known mathematical fact that in regular spatial structures of nodes connected by links, a uniform density of links produces connected subsets of nodes whose size is distributed according to power laws. Percolation models are time-transversal models: They model aggregation at any given time. They might be used to explain how fat-tailed IID sequences are generated.

Dynamic financial econometric models exploit cascading phenomena due to nonlinearities, in particular multiplicative noise. In a deterministic setting, it is well known that nonlinear chaotic models generate sequences that, when analyzed statistically, exhibit fat-tailed distributions. The same happens when noise is subject to nonlinear transformation. In the next sections, we explore simple ARMA models, ARCH-GARCH models, subordinated models, and state-space models, all examples of dynamic financial econometric models.

Before doing this, however, let's go back to the question of estimation. As observed above, if variables are not IID but can be considered generated by a DGP, the question of estimation is no longer the estimation of a variable but that of estimating a model or a theory. The estimation of the eventual tail index is part of a larger effort. However, empirical data are a sequence of samples characterized by an unconditional distribution. One might want to understand if estimation procedures used for IID sequences can be applied in this more general setting. For instance, one might want to understand if tail-index estimators such as the Hill estimator can be used in the case of serially correlated sequences generated by a generic DGP.

From a practical standpoint, this question is quite important as one wants to estimate the tails even if one does not know exactly what model generated the sequence. Clearly, there is no general answer to this problem. However, the behavior of a number of estimators under different DGPs has been explored through simulation as explained in the following section.

## Heavy-Tailed ARMA Processes

Let's first consider the infinite moving average representation of a univariate stationary series:

$$ x_{t} = \sum_{i = 0}^{\infty} h_{i} \varepsilon_{t - i} + m
$$ under the assumption that innovations are IID  $\alpha$ -stable laws of tail index  $\alpha$ . By the properties of stable distributions it can be demonstrated that the finite-dimensional distributions of the process  $x$  are  $\alpha$ -stable. However, restrictions on the coefficients need to be imposed. It can be demonstrated that a sufficient condition to ensure that the process  $x$  exists and is stationary is the following:


$$
\sum_{i = 0}^{\infty} \left| h_{i} \right|^{\alpha} <   \infty
$$

A general univariate ARMA  $(p,q)$  model is written as follows:

$$
X_{t} = \sum_{i = 1}^{p} \alpha_{i} X_{t - i} + \sum_{j = 1}^{q} \alpha_{j} Z_{t - j}
$$ where the  $Z$  are IID variables.


Using the lag operator— $L$ —notation,  $L^i$  represents the variable at  $i$  lags, the ARMA $(p,q)$  model is written as follows:

$$
X_{t} = \sum_{i = 1}^{p} L^{i} X_{t} + \sum_{j = 1}^{q} L^{j} Z_{t}
$$

The theory of ARMA processes can be carried over at least partially to cover the case of fat-tailed innovations. In particular, an  $\mathrm{ARMA}(p,q)$  process with IID  $\alpha$ -stable innovations admits a stationary, infinite moving average representation under the same conditions as in the classical finite-variance case. The coefficients of the moving average satisfy the condition

$$
\sum_{i = 0}^{\infty} \left| h_{i} \right|^{\alpha} <   \infty
$$

In the case of fat-tailed innovations, covariances and autocovariances lose their meaning. It can also be demonstrated, however, that the empirical autocorrelation function is meaningful and is asymptotically normal. It can be demonstrated that maximum likelihood estimates can be extended to the infinite variance case, though through a number of ad hoc processes.


## ARCH/GARCH Processes

The simplest ARCH model can be written as follows. Suppose that  $X$  is the random variable to be modeled,  $Z$  is a sequence of independent standard normal variables, and  $\sigma$  is a hidden variable. The ARCH(1) model is written as

$$
X_{t} = \sigma_{t} Z_{t}
$$

$$
\sigma_{t}^{2} = \beta + \delta X_{t - 1}^{2}
$$

This basic model was extended by Bollerslev (1989), who proposed the GARCH(p,q) model written as

$$
X_{t} = \sigma_{t} Z_{t}
$$

$$
\sigma_{t}^{2} = \beta + \sum_{i = 1}^{p} \gamma_{i} \sigma_{t - i}^{2} + \sum_{i = 1}^{q} \delta_{i} X_{t - i}^{2}
$$

The IID variables  $Z$  can be standard normal variables or other symmetrical, eventually fattailed, variables.

Let's first observe that model parameters must be constrained in order to guarantee the stationarity of the model. Stationarity conditions depend on each model. No general simple expression for the stationarity conditions is available.

Due to the multiplicative nature of noise, GARCH models are able to generate fat-tailed distributions even if innovations have finite variance. This fact was established by Kesten (1973). The tail index can be theoretically computed at least in the case GARCH(1,1). Suppose a GARCH(1,1) stationary process with Gaussian innovation is given. It can be demonstrated that

$$
P (X > x) \approx \frac{c}{2} x^{- 2 \kappa}
$$ where  $\kappa$  is the solution of an integral equation. In the generic  $p, q$  case, the return process is still fat-tailed but no practical way to compute the index from model parameter is known.


## Subordinated Processes

Subordinated processes allow the time scale to vary. Subordinated models are, in a sense, the counterpart of stochastic volatility models insofar as they model the change in volatility by contracting and expanding the time scale. The first model was proposed by Clark (1973). Subordinated models have been extensively studied by Ghysels, Gourieroux, and Josiak (1995).

Subordinated models can be applied quite naturally in the context of trading. Individual trades are randomly spaced. In modern electronic exchanges, the time and size of trades are individually recorded, thus allowing for accurate estimates of the distributional properties of inter-trades intervals. Consideration of random spacings between trades naturally leads to the consideration of subordinated models. Subordinated models generate unconditional fat-tailed distributions.

## Markov Switching Models

The GARCH family of models is not the only family of serially correlated models able to produce fat tails starting from normally distributed innovations. State-space models and Markov-switching models present the same feature. The basic ideas of state-space models and Markov switching models is to split the model into two parts: (1) a regressive model that regresses the model variable over a hidden variable and (2) an autoregressive model that describes the hidden variables.

In its simplest linear form, a state-space model is written as follows:

$$
\begin{array}{l} X_{t} = \alpha Z_{t} + \varepsilon_{t} \\ Z_{t} = \beta Z_{t - 1} + \delta_{t} \\ \end{array}
$$ where  $\varepsilon_{t},\delta_{t}$  are normally distributed independent white noises. State-space models can also be written in a multiplicative form:


$$
X_{t} = \alpha Z_{t - 1} + \varepsilon_{t}
$$

$$
\alpha_{t} = \beta \alpha_{t - 1} + \delta_{t}
$$

If the second equation is a Markov chain, the model is called a Markov-switching model. A well-known example of Markov-switching models is the Hamilton model in which a two-state Markov chain drives the switch between two different regressions.

Purely linear state-space models exhibit fat tails only if innovations are fat-tailed. However, multiplicative state-space models and Markov-switching models can exhibit fat tails even if innovations are normally distributed. There is a growing literature on Markov-switching and multiplicative state-space models and a relatively large number of different models, univariate as well as multivariate, have been proposed. Stochastic volatility models are the continuous-time version of multiplicative statespace models.

## Estimation

Let's now go back to the question of model estimation in a non-IID framework. Suppose that we want to estimate the tail index of the unconditional distribution of a set of empirical observations in the general setting of non-IID variables. Note that if variables are fat-tailed, we cannot say that they are serially autocorrelated as moments of second order generally do not exist. Therefore we have to make some hypothesis on the DGP.

There is no general theory of estimation under arbitrary DGP. Both theoretical and simulation work are limited to specific DGPs. ARMA models have been extensively studied. EVT holds for ARMA models under general nonclustering conditions.[9]

Often only simulation results are available. A fairly ample set of results are available for

GARCH(1,1) models. For these models Resnick and Starica (1998) showed that the Hill estimator is a consistent estimator of the tail index. Wagner and Marsh compared the performance of the Hill estimator and of the moment ratio estimator for three model classes: IID  $\alpha$ -stable returns, IID symmetric Student, and GARCH(1,1) with Student-t innovation. They found that, in an adoptive framework, the moment ratio estimator generally yields results superior to the Hill estimator.

## Scaling and Self-Similarity

The concept of scaling is now quite frequently evoked in economics and finance. Let's begin by making a distinction between scaling and self-similarity and some of the properties associated with inverse power laws within or outside the Levy-stable scaling regime. These concepts have different, and not equivalent, definitions.

The concepts of scaling and self-similarity apply to distributions, processes, or structures. Self-similarity was introduced as a property that applies to geometrical self-similar objects (i.e., fractal structures). In this context, self-similarity means that a structure can be put into a one-to-one correspondence with a part of itself. Note that no finite structure can have this property; self-similarity is the mark of infinite structures. Self-similarity entails scaling: If a fractal structure is expanded by a given factor, its measure expands by a power of the same factor.[10] The notion of scaling is often expressed as absence of scale, meaning that a scaling object looks the same at any scale, large or small: It is impossible to ascertain the size of a portion of a scaling object by looking at its shape. The classical illustration is a Norwegian coastline with its fjords and fjords within fjords that look the same regardless of the scale.

However, scaling can be defined without making reference to fractals. In its simplest form, the notion of scaling entails a variable  $x$  and an observable  $A$ , which is a function of  $A = A(x)$ . If the observable obeys a scaling relationship, there is a constant factor between  $x$  and  $A$  in the sense that  $A(\lambda x) = \lambda^s A(x)$ , where  $s$  is the scaling exponent that does not depend on  $x$ . The only function  $A(x)$  that satisfies this relationship is a power law. In the three-dimensional Euclidean space, volume scales as the third power of linear length and surface as the second power, while fractals scale according to their fractal dimension.


The same ideas can be applied in a random context, but require careful reasoning. A power-law distribution has a scaling property as multiplying the variable by a factor multiplies probabilities by a constant factor, regardless of the level of the variable. This means that the ratio between the probability of the events  $X > x$  and  $X > ax$  depends only on a power of  $a$ , not on  $x$ . As an inverse power law is not defined at zero, scaling in this sense is a property of the tails. The probabilistic interpretation of this property is the following: The probability that an observation exceeds  $ax$  conditional on the knowledge that the observation exceeds  $x$  does not depend on  $x$  but only on  $a$ .

There are, however, other meanings attached to scaling and these might be a source of confusion. In the context of physical phenomena, scaling is often intended as identity of distribution after aggregation. The same idea is also behind the theory of groups of renormalization and the notion of self-similarity applied to structures such as coastlines. In the latter case, the intuitive meaning of self-similarity is that if one aggregates portions of the coastline, approximating their shape with a straight line, and then rescales, the resulting picture is qualitatively similar to the original. The same idea applies to percolation structures: By aggregating "sites" (i.e., points in a percolation lattice) into supersites and carefully redefining links, one obtains the same distribution of connected clusters.

Applying the idea of aggregation in a random context, self-similarity seems to mean that, after rescaling, the distribution of the sum of independent copies of a random variable maintains the same shape of the distribution of the variable itself. Note that this property holds only for the tails of subexponential distributions—and it holds strictly only for stable laws that have tails in the (0,2) range but whose shape is not a power law except, approximately, in the tails. It also holds for Gaussian distributions that do not have power-law tails.


Scaling acquires yet another meaning when applied to stochastic processes that are functions of time. The most common among the different meanings is the following: A stochastic process is said to have a scaling property if there is no natural scale for looking at its paths and distributions. Intuitively, this means that it is not possible to gauge the scale of a sample by looking at its distribution; there is absence of scale. An example from finance comes from price patterns. If a price pattern is generated by a process with the scaling property, the plots of average daily and monthly prices will appear to be perfectly similar in distribution; looking at the plot, it's impossible to tell if it refers to daily or monthly prices.

Self-similarity is another way of expressing the same concept. A process is self-similar if a portion of the process is similar to the entire process. As we are considering a random environment, self-similarity applies to distributions, not to the actual realization of a process. Let's now make these concepts more precise.

A stochastic process  $X(t)$  is said to be self-similar (ss) of index H (H-ss) if all its finite-dimensional distributions obey the scaling relationship:

$$
\begin{array}{l} \left(X_{k t_{1}}, X_{k t_{2}}, \dots , X_{k t_{m}}\right) \stackrel {{D}} {{=}} k^{- H} \left(X_{t_{1}}, X_{t_{2}}, \dots , X_{t_{m}}\right) \forall k > 0 \\ 0 <   H <   1, t_{1}, t_{2}, \dots , t_{m} > 0 \\ \end{array}
$$

The above expression means that the scaling of time by the factor  $k$  scales the variables  $X$  by the factor  $k^H$ . It gives precise meaning to the notion of self-similarity applied to stochastic processes.

There is a wide variety of self-similar processes that cannot be characterized in a simple way as scaling laws: The scaling property of stochastic processes might depend upon the shape of distributions as well as the shape of correlations. Let's restrict our attention to processes that are self-similar with stationary increments (sssi) and with index H (H-sssi). These processes can be either Gaussian or non-Gaussian. Note that a Gaussian process is a process whose finite-dimensional distributions are all Gaussian.


Gaussian H-sssi processes might have independent increments or exhibit long-range correlations. The only Gaussian H-sssi process with independent increment is the Brownian motion, but there are an infinite number of fractional Brownian motions, which are Gaussian H-sssi processes with long-range correlations. Thus there are an infinite variety of Gaussian self-similar processes. Among the many non-Gaussian H-sssi processes with independent increments are the stable Levy processes, which are random walks whose increments follow a stable distribution.[11]

There is another definition of self-similarity for stochastic processes that makes use of the concept of aggregation; it is closer, at least in spirit, to the theory of renormalization groups. Consider a stationary infinite sequence of independent and identically distributed variables  $X_{i}$ ,  $i \geq 1$ . Create consecutive nonoverlapping blocks of  $m$  variables and define the corresponding aggregated sequence of level  $m$  averaging over each block as follows:

$$
X_{k}^{(m)} = \frac{1}{m} \sum_{i = (k - 1) m + 1}^{k m} X_{i}
$$

A sequence is called exactly self-similar if, for any integer  $m$  the following relationship holds:

$$
X \stackrel {D} {=} m^{1 - H} X^{(m)}
$$

A stationary sequence is called asymptotically self-similar if the above relationship holds only for  $m\to \infty$

When we apply the notion of scaling to stochastic processes—the natural setting for economics and finance—we have to abandon the simple characterization of scaling as inverse power laws. Though the scaling property is in itself characterized through simple power laws, the scaling processes are complex and rich mathematical structures entailing a variety of distributions and correlation functions. In particular, the long-range correlation structure of the process plays a role as important as the distribution of its variables.

 
 ## Key points

- Fat-tailed laws have been found in many economic variables.
- Fully approximating a finite economic system with fat-tailed laws depends on an accurate statistical analysis of the phenomena, but also on a number of the theoretical implications of subexponentiality and scaling.
- Modeling financial variables with stable laws implies the assumption of infinite variance, which seems to contradict empirical observations.
- Scaling laws might still be an appropriate modeling paradigm given the complex interaction of distributional shape and correlations in price processes.
 - Scaling laws might help in understanding not only the sheer size of economic fluctuations but also the complexity of economic cycles.

 ## NOTES

1. See Bamberg and Dorfleitner (2001).
2. See, for example, Sigman (1999).
3. See, for example, Goldie and Kluppelberg (1998) and Embrechts, Kluppelberg, and Mikosch (1999).
4. See Sigman (1999).
5. See Rachev and Mittnik (2000) and Rachev, Menn, and Fabozzi (2005).
6. Cox and Isham (1980).
7. For a discussion of the different methods, see Smith (1990). For a discussion of the method of probability-weighted moments, see Hosking, Wallis, and Wood (1985).

8. Diebold, Schuermann, and Stroughair (2000).
9. See Embrechts, Kluppelberg, and Mikosch (1999).
10. For an introduction to fractals, see Falconer (1990).
 11. See Samorodnitsky and Taqqu (1994).

 ## REFERENCES

Anderson, R. W. (1997). Some thoughts about distribution in economics. In W. B. Arthur, S. N. Durlaf, and D. A. Lane (eds.), The Economy as an Evolving Complex System II. Reading, MA: Addison-Wesley.
Bamberg, G., and Dorfleitner, D. (2001). Fat tails and traditional capital market theory. Working Paper, University of Augsburg, August.

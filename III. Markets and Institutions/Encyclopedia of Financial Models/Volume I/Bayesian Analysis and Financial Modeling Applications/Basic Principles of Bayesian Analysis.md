
# Basic Principles of Bayesian Analysis



Abstract: One of the basic mechanisms of learning is assimilating the information arriving from the external environment and then updating the existing knowledge base with that information. This mechanism lies at the heart of the Bayesian framework. A Bayesian decision maker learns by revising beliefs in light of the new data that become available. From the Bayesian point of view, probabilities are interpreted as degrees of belief. Therefore, the Bayesian learning process consists of revising probabilities. Contrast this with the way probability is interpreted in the classical (frequentist) statistical theory—as the relative frequency of occurrence of an event in the limit, as the number of observations goes to infinity. Bayes' theorem provides the formal means of putting that mechanism into action; it is a simple expression combining the knowledge about the distribution of the model parameters and the information about the parameters contained in the data.

Quantitative financial models describe in mathematical terms the relationships between financial random variables through time and/or across assets. The fundamental assumption is that the model relationship is valid independent of the time period or the asset class under consideration. Financial data contain both meaningful information and random noise. An adequate financial model not only extracts optimally the relevant information from the his torical data but also performs well when tested with new data. The uncertainty brought about by the presence of data noise makes imperative the use of statistical analysis as part of the process of financial model building, model evaluation, and model testing.


Statistical analysis is employed from the vantage point of either of the two main statistical philosophical traditions—frequentist and Bayesian. An important difference between the two lies with the interpretation of the concept of probability. As the name suggests, advocates of frequentist statistics adopt a frequentist interpretation: The probability of an event is the limit of its long-run relative frequency (i.e., the frequency with which it occurs as the amount of data increases without bound). Strict adherence to this interpretation is not always possible in practice. When studying rare events, for instance, large samples of data may not be available and in such cases proponents of frequentist statistics resort to theoretical results. The Bayesian view of the world is based on the subjectivist interpretation of probability: Probability is subjective, a degree of belief that is updated as information or data are acquired.


The concept of subjective probability is derived from arguments for rationality of the preferences of agents. It originated in the 1930s with the (independent) works of Bruno de Finetti (1931) and Frank Ramsey (1931), and was further developed by Leonard Savage (1954) and Dennis Lindley (1971). The subjective probability interpretation can be traced back to the Scottish philosopher and economist David Hume, who also had philosophical influence over Harry Markowitz (by Markowitz's own words in his autobiography published in Les Prix Nobel, 1991).

Closely related to the concept of probability is that of uncertainty. Proponents of the frequentist approach consider the source of uncertainty to be the randomness inherent in realizations of a random variable. The probability distributions of variables are not subject to uncertainty. In contrast, Bayesian statistics treats probability distributions as uncertain and subject to modification as new information becomes available. Uncertainty is implicitly incorporated by probability updating. The probability beliefs based on the existing knowledge base take the form of the prior probability.

The posterior probability represents the updated beliefs. Since the beginning of the last century, when quantitative methods and models became a mainstream tool to aid in un derstanding financial markets and formulating investment strategies, the framework applied in finance has been the frequentist approach. The term frequentist usually refers to the Fisherian philosophical approach named after Sir Ronald Fisher.


Strictly speaking, "Fisherian" has a broader meaning as it includes not only frequentist statistical concepts such as unbiased estimators, hypothesis tests, and confidence intervals, but also the maximum likelihood estimation framework pioneered by Fisher. Only in the last two decades has Bayesian statistics started to gain greater acceptance in financial modeling, despite its introduction about 250 years ago by Thomas Bayes, a British minister and mathematician. It has been the advancements of computing power and the development of new computational methods that has fostered the growing use of Bayesian statistics in finance.

On the applicability of the Bayesian conceptual framework, consider an excerpt from the speech of the former chairman of the Board of Governors of the Federal Reserve System, Alan Greenspan, at the Meeting of the American Statistical Association in San Diego, California, January 3, 2004:

The Federal Reserve's experiences over the past two decades make it clear that uncertainty is not just a pervasive feature of the monetary policy landscape; it is the defining characteristic of that landscape. The term "uncertainty" is meant here to encompass both "Knightian uncertainty," in which the probability distribution of outcomes is unknown, and "risk," in which uncertainty of outcomes is delimited by a known probability distribution.... This conceptual framework emphasizes understanding as much as possible the many sources of risk and uncertainty that policymakers face, quantifying those risks when possible, and assessing the costs associated with each of the risks. In essence, the risk management approach to monetary policymaking is an application of Bayesian [decision making].

The three steps of Bayesian decision making that Alan Greenspan outlines are:

1. Formulating the prior probabilities to reflect existing information.

2. Constructing the quantitative model, taking care to incorporate the uncertainty intrinsic in model assumptions.
3. Selecting and evaluating a utility function describing how uncertainty affects alternative model decisions.

While these steps constitute the rigorous approach to Bayesian decision making, applications of Bayesian methods to financial modeling often only involve the first two steps or even only the second step. This tendency is a reflection of the pragmatic Bayesian approach that financial modelers often favor.

Applications of the Bayesian framework to financial modeling include:

- Bayesian approach to mean-variance portfolio selection.
- Reflecting degrees of belief in an asset pricing model when selecting an optimal portfolio.
- Bayesian methods of portfolio selection within the context of the Black-Litterman model.
- Computing measures of market efficiency.
- Estimating complex volatility models.

All of these applications are presented in Rachev et al. (2008).

In this entry, we discuss some of the basic principles of Bayesian analysis.

# THE LIKELIHOOD FUNCTION

Suppose we are interested in analyzing the returns on a given stock and have available a historical record of returns. Any analysis of these returns, beyond a very basic one, would require that we make an educated guess about (propose) a process that might have generated these return data. Assume that we have decided on some statistical distribution and denote it by

$$ p (y \mid \theta) \tag {1}
$$ where  $y$  is a realization of the random variable  $Y$  (stock return) and  $\theta$  is a parameter specific to


the distribution,  $p$ . Assuming that the distribution we proposed is the one that generated the observed data, we draw a conclusion about the value of  $\theta$ . Obviously, central to that goal is our ability to summarize the information contained in the data. The likelihood function is a statistical construct with this precise role. Denote the  $n$  observed stock returns by  $y_{1},y_{2},\ldots ,y_{n}$ . The joint density function of  $Y$ , for a given value of  $\theta$ , is

$$ f \left(y_{1}, y_{2}, \dots , y_{n} \mid \theta\right)
$$

By using the term "density function," we implicitly assume that the distribution chosen for the stock return is continuous, which is invariably the case in financial modeling.

We can observe that the function above can also be treated as a function of the unknown parameter,  $\theta$ , given the observed stock returns. That function of  $\theta$  is called the likelihood function. We write it as

$$
L \left(\theta \mid y_{1}, y_{2}, \dots , y_{n}\right) = f \left(y_{1}, y_{2}, \dots , y_{n} \mid \theta\right) \tag {2}
$$

Suppose we have determined from the data two competing values of  $\theta, \theta_1$  and  $\theta_2$ , and want to determine which one is more likely to be the true value (at least, which one is closer to the true value). The likelihood function helps us make that decision. Assuming that our data were indeed generated by the distribution in (1),  $\theta_1$  is more likely than  $\theta_2$  to be the true parameter value whenever  $L(\theta_1 \mid y_1, y_2, \dots, y_n) > L(\theta_2 \mid y_1, y_2, \dots, y_n)$ . This observation provides the intuition behind the method most often employed in "classical" statistical inference to estimate  $\theta$  from the data alone—the method of maximum likelihood. The value of  $\theta$  most likely to have yielded the observed sample of stock return data,  $y_1, y_2, \dots, y_n$ , is the maximum likelihood estimate,  $\widehat{\theta}$ , obtained from maximizing the likelihood function in (2).

To illustrate the concept of a likelihood function, we briefly discuss two examples—one based on the Poisson distribution (a discrete distribution) and another based on the normal distribution (one of the most commonly employed continuous distributions).


# The Poisson Distribution Likelihood Function

The Poisson distribution is often used to describe the random number of events occurring within a certain period of time. It has a single parameter,  $\theta$ , indicating the rate of occurrence of the random event, that is, how many events happen on average per unit of time. The probability distribution of a Poisson random variable,  $X$ , is described by the following expression:

$$ p (X = k) = \frac{\theta^{k}}{k !} e^{- \theta}, \quad k = 0, 1, 2, \dots . \tag {3}
$$

The Poisson distribution is employed in the context of finance (most often, but not exclusively, in the areas of credit risk and operational risk) as the distribution of a stochastic process, called the Poisson process, which governs the occurrences of random events.

Suppose we are interested in examining the annual number of defaults of North American corporate bond issuers and we have gathered a sample of data for the period from 1986 through 2005. Assume that these corporate defaults occur according to a Poisson distribution. Denoting the 20 observations by  $x_{1}, x_{2}, \ldots, x_{20}$ , we write the likelihood function for the Poisson parameter  $\theta$  (the average rate of defaults) as

$$
\begin{array}{l} L \left(\theta \mid x_{1}, x_{2}, \dots , x_{2 0}\right) = \prod_{i = 1}^{2 0} p \left(X = x_{i} \mid \theta\right) = \prod_{i = 1}^{2 0} \frac{\theta^{x_{i}}}{x_{i} !} e^{- \theta} \\ = \frac{\theta^{\sum_{i = 1}^{2 0} x_{i}}}{\prod_{i = 1}^{2 0} x_{i} !} e^{- 2 0 \theta} \tag {4} \\ \end{array}
$$

It is often customary to retain in the expressions for the likelihood function and the probability distributions only the terms that contain the unknown parameter(s); that is, we get rid of the terms that are constant with respect to the pa rameter(s). Thus, (4) could be written as


$$
L \left(\theta \mid x_{1}, x_{2}, \dots , x_{2 0}\right) \propto \theta^{\sum_{i = 1}^{2 0} x_{i}} e^{- 2 0 \theta} \tag {5}
$$ where  $\propto$  denotes "proportional to." Clearly, for a given sample of data, the expressions in (4) and (5) are proportional to each other and therefore contain the same information about  $\theta$ . Maximizing either of them with respect to  $\theta$ , we obtain that the maximum likelihood estimator of the Poisson parameter,  $\theta$ , is the sample mean,  $\overline{x}$ :


$$
\widehat {\theta} = \overline {{x}} = \frac{\sum_{i = 1}^{2 0} x_{i}}{2 0}
$$

For the 20 observations of annual corporate defaults, we get a sample mean of 51.6. The Poisson probability distribution function (evaluated at  $\theta$  equal to its maximum-likelihood estimate,  $\widehat{\theta} = 51.6$ ) and the likelihood function for  $\theta$  can be visualized, respectively, in the left-hand-side and right-hand-side plots in Figure 1.

# The Normal Distribution Likelihood Function

The normal distribution (also called the Gaussian distribution) has been the predominant distribution of choice in finance because of the relative ease of dealing with it and the availability of attractive theoretical results resting on it.2 It is certainly one of the most important distributions in statistics. Two parameters describe the normal distribution—the location parameter,  $\mu$ , which is also its mean, and the scale (dispersion) parameter,  $\sigma$ , also called standard deviation. The probability density function of a normally distributed random variable  $Y$  is expressed as

$$ f (y) = \frac{1}{\sqrt{2 \pi} \sigma} e^{- \frac{(y - \mu)^{2}}{2 \sigma^{2}}} \tag {6}
$$ where  $y$  and  $\mu$  could take any real value and  $\sigma$  can only take positive values. We denote the distribution of  $Y$  by  $Y\sim N(\mu ,\sigma)$ . The normal density is symmetric around the mean,  $\mu$ , and its plot resembles a bell.


Figure 1 The Poisson Distribution Function and Likelihood Function
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/d13bbce6192dce18fbb5458b461d9a4b5f45dd241035b5a511d2b349ea1695c2.jpg)
Note: The graph on the left represents the mass function of the Poisson random variable evaluated at the maximum-likelihood estimate,  $\widehat{\theta} = 51.6$ . The graph on the right represents the likelihood function for the parameter of the Poisson distribution.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/26c1a4c0572825fabe0dfcdd1bee466f2301195157c45bf97fe2e7ec4a6e09b0.jpg)

Suppose we have gathered daily dollar return data on the MSCI-Germany Index for the period January 2, 1998, through December 31, 2003 (a total of 1,548 returns), and we assume that the daily return is normally distributed. Then, given the realized index returns (denoted by  $y_{1}, y_{2}, \ldots, y_{1548}$ ), the likelihood function for the parameters  $\mu$  and  $\sigma$  is written in the following way:

$$
\begin{array}{l} L \left(\mu , \sigma \mid y_{1}, y_{2}, \dots , y_{1 5 4 8}\right) \\ = \prod_{i = 1}^{1 5 4 8} f (y_{i}) \\ = \left(\frac{1}{\sqrt{2 \pi} \sigma}\right)^{1 5 4 8} e^{- \sum_{i = 1}^{1 5 4 8} \frac{(y_{i} - \mu)^{2}}{2 \sigma^{2}}} \\ \propto \sigma^{- 1 5 4 8} e^{- \sum_{i = 1}^{1 5 4 8} \frac{\left(y_{i} - \mu\right)^{2}}{2 \sigma^{2}}} \tag {7} \\ \end{array}
$$

We again implicitly assume that the MSCI-Germany index returns are independently and identically distributed (IID), that is, each daily return is a realization from a normal distribution with the same mean and standard deviation.

In the case of the normal distribution, since the likelihood is a function of two arguments, we can visualize it with a three-dimensional surface as in Figure 2. It is also useful to plot the so-called contours of the likelihood, which we obtain by "slicing" the shape in Figure 2 horizontally at various levels of the likelihood.

Each contour corresponds to a pair of parameter values (and the respective likelihood value). In Figure 3, for example, we could observe that the pair  $(\mu, \sigma) = (-0.23e - 3, 0.31e - 3)$ , with a likelihood value of 0.6, is more likely than the pair  $(\mu, \sigma) = (0.096e - 3, 0.33e - 3)$ , with a likelihood value of 0.1, since the corresponding likelihood is larger.

# BAYES' THEOREM

Bayes' theorem is the cornerstone of the Bayesian framework. Formally, it is a result from introductory probability theory, linking the unconditional distribution of a random variable with its conditional distribution. For Bayesian proponents, it is the representation of the philosophical principle underlying the Bayesian framework that probability is a measure of the degree of belief one has about an uncertain event. Bayes' theorem is a rule that can be used to update the beliefs that one holds in light of new information (for example, observed data).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/8211ea6f69be60bf487847b61b5b5d1a8c8ea2e788bbeb2d9a77909e4c87629c.jpg)
Figure 2 The Likelihood Function for the Parameters of the Normal Distribution

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/3eaa470e0119b50ab3a1daf715c702c653168db5281142253aa102cd632e6ca9.jpg)
Figure 3 The Likelihood Function for the Parameters of the Normal Distribution: Contour Plot


We first consider the discrete version of Bayes' theorem. Denote the evidence prior to observing the data by  $E$  and suppose that a researcher's belief in it can be expressed as the probability  $P(E)$ . The Bayes theorem tells us that, after observing the data,  $D$ , the belief in  $E$  is adjusted according to the following expression:

$$
P (E \mid D) = \frac{P (D \mid E) \times P (E)}{P (D)} \tag {8}
$$ where:


1.  $P(D\mid E)$  is the conditional probability of the data given that the prior evidence,  $E$  , is true.
2.  $P(D)$  is the unconditional (marginal) probability of the data,  $P(D) > 0$ ; that is, the probability of  $D$  irrespective of  $E$ , also expressed as

$$
P (D) = P (D \mid E) \times P (E) + P (D \mid E^{c}) \times P (E^{c})
$$ where the subscript  $c$  denotes a complementary event.


The probability of  $E$  before seeing the data,  $P(E)$ , is called the prior probability, whereas the updated probability,  $P(E \mid D)$ , is called the posterior probability. Notice that the magnitude of the adjustment of the prior probability,  $P(E)$ , after observing the data is given by the ratio  $P(D \mid E) / P(D)$ . The conditional probability,  $P(D \mid E)$ , when considered as a function of  $E$ , is in fact the likelihood function, as will become clear further below.

As an illustration, consider a manager in an event-driven hedge fund. The manager is testing a strategy that involves identifying potential acquisition targets and examines the effectiveness of various company screens, in particular the ratio of stock price to free cash flow per share (PFCF). Let us define the following events:

$D =$  Company  $X$ 's PFCF has been more than three times lower than the sector average for the past three years.

$E =$  Company  $X$  becomes an acquisition target in the course of a given year.

Independently of the screen, the manager assesses the probability of company  $X$  being targeted at  $40\%$ . That is, denoting by  $E^c$  the event that  $X$  does not become a target in the course of the year, we have

$$
P (E) = 0. 4
$$ and


$$
P (E^{c}) = 0. 6
$$

Suppose further that the manager's analysis suggests that the probability a target company's PFCF has been more than three times lower than the sector average for the past three years is  $75\%$  while the probability that a nontarget company has been having that low of a PFCF for the past three years is  $35\%$ :

$$
P (D \mid E) = 0. 7 5
$$ and


$$
P (D \mid E^{c}) = 0. 3 5
$$

If a bidder does appear on the scene, what is the chance that the targeted company had been detected by the manager's screen? To answer this question, the manager needs to update the prior probability  $P(E)$  and compute the posterior probability  $P(E \mid D)$ . Applying (8), we obtain

$$
\begin{array}{l} P (E \mid D) = \frac{0 . 7 5 \times 0 . 4}{0 . 7 5 \times 0 . 4 + 0 . 3 5 \times 0 . 6} \\ \approx 0. 5 9 \tag {9} \\ \end{array}
$$

After taking into account the company's persistently low PFCF, the probability of a takeover increases from  $40\%$  to  $59\%$ .

In financial applications, the continuous version of the Bayes' theorem (as follows later) is predominantly used. Nevertheless, the discrete form has some important uses, two of which we briefly outline now.

# Bayes' Theorem and Model Selection

The usual approach to modeling of a financial phenomenon is to specify the analytical and distributional properties of a process that one thinks generated the observed data and treat this process as if it were the true one. Clearly, in doing so, one introduces a certain amount of error into the estimation process. Accounting for model risk might be no less important than accounting for (within-model) parameter uncertainty, although it seems to preoccupy researchers less often.

One usually entertains a small number of models as plausible ones. The idea of applying the Bayes' theorem to model selection is to combine the information derived from the data with the prior beliefs one has about the degree of model validity. One can then select the single "best" model with the highest posterior probability and rely on the inference provided by it or one can weigh the inference of each model by its posterior probability and obtain an "averaged-out" conclusion.

# Bayes' Theorem and Classification

Classification refers to assigning an object, based on its characteristics, into one out of several categories. It is most often applied in the area of credit and insurance risk, when a creditor (an insurer) attempts to determine the creditworthiness (riskiness) of a potential borrower (policyholder). Classification is a statistical problem because of the existence of information asymmetry—the creditor's (insurer's) aim is to determine with very high probability the unknown status of the borrower (policyholder). For example, suppose that a bank would like to rate a borrower into one of three categories: low risk (L), medium risk (M), and high risk (H). It collects data on the borrower's characteristics such as the current ratio, the debt-to-equity ratio, the interest coverage ratio, and the return on capital. Denote these observed data by the four-dimensional vector  $y$ . The dynamics of  $y$  depends on the borrower's category and is described by one of three (multivariate) distributions,

$$
\begin{array}{l} f (\boldsymbol {y} | C = L) \\ f (\boldsymbol {y} | C = M) \\ \end{array}
$$ or


$$ f (y \mid C = H)
$$ where  $C$  is a random variable describing the category. Let the bank's belief about the borrower's category be  $\pi_{i}$ , where


$$
\begin{array}{l} \pi_{1} = \pi (C = L) \\ \pi_{2} = \pi (C = M) \\ \end{array}
$$ and


$$
\pi_{3} = \pi (C = H)
$$

The discrete version of Bayes' theorem can be employed to evaluate the posterior (updated) probability,  $\pi(C = i \mid y), i = L, M, H,$  that the borrower belongs to each of the three categories.

Let us now take our first steps in illustrating how Bayes' theorem helps in making inferences about an unknown distribution parameter.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/90d1d4042af9df25f7c3b297a01aa3c3ce8e5d160fafd696ba6932f2a5f527fa.jpg) where  $D_{\mathrm{i}} = -1$  if  $P_{\mathrm{i +1}} <   P_{\mathrm{i}}$
Figure 4 The Number of Consecutive Trade-by-Trade Price Increases


$$
D_{i} = 0 \quad i f P_{i + 1} = P_{i}
$$

$$
D_{i} = 1 \text{if } P_{i + 1} > P_{i}
$$

$$
A_{1} = D_{1} + D_{2}
$$

$$
A_{2} = D_{2} + D_{3}
$$

.

$$
A_{4} = D_{4} + D_{5}
$$

Note:  $X =$  number of occurrences of  $A = 2$  within the sample period

# Bayesian Inference for the Binomial Probability

Suppose we are interested in analyzing the dynamic properties of the intraday price changes for a stock. In particular, we want to evaluate the probability of consecutive trade-by-trade price increases. In an oversimplified scenario, this problem could be formalized as a binomial experiment.

The binomial experiment is a setting in which the source of randomness is a binary one (only takes on two alternative modes/states) and the probability of both states is constant throughout. The binomial random variable is the number of occurrences of the state of interest. In our illustration, the two states are "the consecutive trade-by-trade price change is an increase" and "the consecutive trade-by-trade price change is a decrease or null." The random variable is the number of consecutive price increases. Denote it by  $X$ . Denote the probability of a consecutive increase by  $\theta$ . Our goal is to draw a conclusion about the unknown probability,  $\theta$ .

As an illustration, we consider the transaction data for the AT&T stock during the two-month period from January 4, 1993, through February

26, 1993 (a total of 55,668 price records). The diagram in Figure 4 shows how we define the binomial random variable given six price observations,  $P_{1},\ldots ,P_{6}$  . (Notice that the realizations of the random variable are one less than the number of price records.) A consecutive price increase is "coded" as  $A = 2$  and its probability is  $\theta = P(A = 2)$  ; all other realizations of  $A$ $(A = -2, - 1,0$  or 1) have a probability of  $1 - \theta$  . We say that the number of consecutive price increases,  $X,$  is distributed as a binomial random variable with parameter  $\theta$  . The probability mass function of  $X$  is represented by the expression

$$
\begin{array}{l} P (X = x \mid \theta) = \left( \begin{array}{c} n \\ x \end{array} \right) \theta^{x} (1 - \theta)^{n - x} \\ x = 0, 1, 2, \dots , n \tag {10} \\ \end{array}
$$ where  $n$  is the sample size (the number of trade-by-trade price changes; a price change could be zero) and  $\binom{n}{x} = \frac{n!}{x!(n-x)!}$ . During the sample period, there are  $X = 176$  trade-by-trade consecutive price increases. This information is embodied in the likelihood function for  $\theta$ :


$$
L (\theta \mid X = 1 7 6) = \theta^{1 7 6} (1 - \theta)^{5 5 6 6 7 - 1 7 6} \tag {11}
$$

We would like to combine that information with our prior belief about what the probability of a consecutive price increase is. We denote the prior distribution of an unknown parameter  $\theta$  by  $\pi (\theta)$ , the posterior distribution of  $\theta$  by  $\pi (\theta |data)$ , and the likelihood function by  $L(\theta |data)$ .

We consider two prior scenarios for the probability of consecutive price increases,  $\theta$ :

1. We do not have any particular belief about the probability  $\theta$ . Then, the prior distribution could be represented by a uniform distribution on the interval [0, 1]. Note that this prior assumption implies an expected value for  $\theta$  of 0.5. The density function of  $\theta$  is given by

$$
\pi (\theta) = 1, \qquad 0 \leq \theta \leq 1
$$

2. Our intuition suggests that the probability of a consecutive price increase is around  $2\%$ . A possible choice of a prior distribution for  $\theta$  is the beta distribution. The density function of  $\theta$  is then written as

$$
\pi (\theta \mid \alpha , \beta) = \frac{1}{B (\alpha , \beta)} \theta^{\alpha - 1} (1 - \theta)^{\beta - 1}, \quad 0 \leq \theta \leq 1 \tag {12}
$$ where  $\alpha > 0$  and  $\beta > 0$  are the parameters of the beta distribution and  $B(\alpha, \beta)$  is the so-called beta function. We set the parameters  $\alpha$  and  $\beta$  to 1.6 and 78.4, respectively.


Figure 5 presents the plots of the two prior densities. Notice that under the uniform prior, all values of  $\theta$  are equally likely, while under the beta prior, we assert higher prior probability for some values and lower prior probability for others.

Combining the sample information with the prior beliefs, we obtain  $\theta$  's posterior distribution. We rewrite Bayes' theorem with the notation in the current discussion:

$$ p (\theta \mid x) = \frac{L (\theta \mid x) \pi (\theta)}{f (x)} \tag {13}
$$ where  $f(x)$  is the unconditional (marginal) distribution of the random variable  $X$ , given by


$$ f (x) = \int L (\theta \mid x) \pi (x) \mathrm{d} \theta \tag {14}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/ff5fa807986a8272a5c1c527b3602a23619db8f64ae5f44f3ff971a1725bc90e.jpg)

Figure 5 Density Curves of the Two Prior Distributions for the Binomial Parameter,  $\theta$
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/644c11385fd86130778e03fcdb6ef150323e927835dc4c1e62dba9ea119e2533.jpg)
Note: The density curve on top is the uniform density, while the one at the bottom is the beta density.

Since  $f(x)$  is obtained by averaging over all possible values of  $\theta$ , it does not depend on  $\theta$ . Therefore, we can rewrite (8) as

$$
\pi (\theta \mid x) \propto L (\theta \mid x) \pi (\theta) \tag {15}
$$

The expression in (15) provides us with the posterior density of  $\theta$  up to some unknown constant. However, in certain cases we would still be able to recognize the posterior distribution as a known distribution, as we see shortly. Since both assumed prior distributions of  $\theta$  are continuous, the posterior density is also continuous and (13) and (15), in fact, represent the continuous version of Bayes' theorem.

Let us see what the posterior distribution for  $\theta$  is under each of the two prior scenarios.

1. The posterior of  $\theta$  under the uniform prior scenario is written as

$$
\begin{array}{l} \pi (\theta \mid x) \propto L (\theta \mid x) \times 1 \\ \propto \theta^{1 7 6} (1 - \theta)^{5 5 6 6 7 - 1 7 6} \\ = \theta^{1 7 7 - 1} (1 - \theta)^{5 5 4 9 2 - 1} \tag {16} \\ \end{array}
$$ where the first  $\alpha$  refers to omitting the marginal data distribution term in (14), while the second  $\alpha$  refers to omitting the constant term from the likelihood function.


The expression  $\theta^{177 - 1}(1 - \theta)^{55492 - 1}$  above resembles the density function of the beta distribution in (12). The missing part is the term  $B(177,55492)$ , which is a constant with respect to  $\theta$ . We call  $\theta^{\alpha -1}(1 - \theta)^{\beta -1}$  the kernel of a beta distribution with parameters  $\alpha$  and  $\beta$ . Obtaining it is sufficient to identify uniquely the posterior of  $\theta$  as a beta distribution with parameters  $\alpha = 177$  and  $\beta = 55492$ .

2. The beta distribution is the conjugate prior distribution for the binomial parameter  $\theta$ . This means that the posterior distribution of  $\theta$  is also a beta distribution (of course, with updated parameters):

$$
\begin{array}{l} \pi (\theta \mid x) \propto L (\theta \mid x) \pi (\theta) \\ \propto \theta^{1 7 6} (1 - \theta)^{5 5 6 6 7 - 1 7 6} \theta^{1. 6 - 1} (1 - \theta)^{7 8. 4 - 1} \\ = \theta^{1 7 7. 6 - 1} (1 - \theta)^{5 5 5 6 9. 4 - 1} \tag {17} \\ \end{array}
$$ where again we omit any constants with respect to  $\theta$ . As expected, we can recognize the expression in the last line above as the kernel of a beta distribution with parameters  $\alpha = 177.6$  and  $\beta = 55569.4$ .


Finally, we might want to obtain a single number as an estimate of  $\theta$ . In the classical (frequentist) setting, the usual estimator of  $\theta$  is the maximum likelihood estimator (the value maximizing the likelihood function in (11)), which happens to be the sample proportion  $\widehat{\theta}$ :

$$
\widehat {\theta} = \frac{1 7 6}{5 5 6 6 7} = 0. 0 0 3 1 6 \tag {18}
$$ or  $0.316\%$ .


In the Bayesian setting, one possible estimate of  $\theta$  is the posterior mean, that is, the mean of  $\theta$ 's posterior distribution. Since the mean of the beta distribution is given by  $\alpha / (\alpha + \beta)$ , the posterior mean of  $\theta$  (the expected probability of consecutive trade-by-trade increase in the price of the AT&T stock) under the uniform prior scenario is


$$
\widetilde {\theta}_{U} = \frac{1 7 7}{1 7 7 + 5 5 4 9 2} = 0. 0 0 3 1 8
$$ or  $0.318\%$ , while the posterior mean of  $\theta$  under the beta prior scenario is


$$
\widetilde {\theta}_{B} = \frac{1 7 7 . 6}{1 7 7 . 6 + 5 5 5 6 9 . 4} = 0. 0 0 3 1 9
$$ or  $0.319\%$ .


The two posterior estimates and the maximum-likelihood estimate are the same for all practical purposes. The reason is that the sample size is so large that the information contained in the data sample "swamps out" the prior information.

# KEY POINTS

- Statistical analysis is employed from the vantage point of either of the two main statistical philosophical traditions—frequentist and Bayesian.
- The frequentist interpretation of the probability of an event is that it is the limit of its long-run relative frequency (i.e., the frequency with which it occurs as the amount of data increases without bound).
- The Bayesian view of the world is based on the subjectivist interpretation of probability: Probability is subjective, a degree of belief that is updated as information or data are acquired.
- In the Bayesian framework, probability beliefs based on the existing knowledge base take the form of the prior probability; the posterior probability represents the updated beliefs.
- The likelihood function is a statistical construct summarizing the information contained in the sample of data.
- Bayes' theorem links the unconditional and unconditional probabilities. Under the Bayesian approach, prior beliefs are combined with sample information to create updated posterior beliefs.

- Two important applications of the discrete form of Bayes' theorem are model selection and classification.
- In financial applications, the continuous version of Bayes' theorem is predominantly used.


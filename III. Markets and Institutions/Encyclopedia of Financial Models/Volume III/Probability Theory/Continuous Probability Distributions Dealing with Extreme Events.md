
---
title: "Continuous Probability Distributions Dealing with Extreme Events"
parent_directory: "Probability Theory"
formatted: "2025-12-21 07:00:00 AM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags:
  - "extreme value theory"
  - "heavy tailed distributions"
  - "stable distributions"
  - "generalized extreme value"
secondary_tags:
  - "generalized pareto distribution"
  - "normal inverse gaussian"
  - "alpha stable distribution"
  - "skewness in finance"
  - "risk management"
  - "asset return modeling"
  - "financial risk theory"
  - "probability distributions"
cssclasses: academia
---

# Continuous Probability Distributions Dealing with Extreme Events

MARKUS HÖCHSTÖTTER, PhD

Assistant Professor, University of Karlsruhe

SVETLOZAR T. RACHEV, PhD, Dr Sci

Frey Family Foundation Chair-Professor, Department of Applied Mathematics and Statistics, Stony Brook University, and Chief Scientist, FinAnalytica

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: Continuous probability distributions are commonly the preferred candidates when modeling financial asset returns. The most popular of them is unquestionably the normal distribution because of its appealing properties as well as the fact that it serves as the limit distribution for many sums of random variables such as, for example, aggregated returns. The normal distribution generally renders modeling easy because all moments exist. However, the normal distribution fails to reflect stylized facts commonly encountered in asset returns, namely, the possibility of very extreme movements and skewness. To remedy this shortcoming, probability distributions accounting for such extreme price changes have become increasingly popular. Some of these distributions concentrate exclusively on extreme values and others permit any real number, but in a manner that is capable of reflecting market behavior. Consequently, there is a selection of probability distributions that can realistically reproduce asset price changes. Their common shortcoming is generally that they are mathematically difficult to handle.

In this entry, we present a collection of continuous probability distributions that are used in finance in the context of modeling extreme events. Although there are distributions that are appealing in nature due to their mathematical simplicity, the ones introduced in this entry are sometimes rather complicated, using parameters that are not necessarily intuitive. However, due to the observed behavior of many quantities in finance, there is a need for more flexible distributions compared to keeping models mathematically simple.

While the Student's $t$-distribution is able to mimic some behavior inherent in financial data such as so-called heavy tails (which means that a lot of the probability mass is attributed to extreme values), it fails to capture other observed behavior such as skewness. Hence, we decided not to include the Student's $t$-distribution in this entry.

In this entry, we present the generalized extreme value distribution, the generalized Pareto distribution, the normal inverse Gaussian distribution, and the $\alpha$-stable distribution together with their parameters of location and spread. The presentation of each distribution is accompanied by some illustration to help render the theory more appealing.

# GENERALIZED EXTREME VALUE DISTRIBUTION

Sometimes it is of interest to analyze the probability distribution of extreme values of some random variable rather than the entire distribution. This occurs in risk management (including operational risk, credit risk, and market risk) and risk control in portfolio management. For example, a portfolio manager may be interested in the maximum loss a portfolio might incur with a certain probability. For this purpose, generalized extreme value (GEV) distributions are designed. They are characterized by the real-valued parameter  $\xi$ . Thus, the abbreviated appellation for this distribution is  $GEV(\xi)$ .


Extreme value theory, a branch of statistics that focuses solely on the extremes (tails) of a distribution, distinguishes between three different types of generalized extreme value distributions: Gumbel distribution, Fréchet distribution, and Weibull distribution. In the extreme value theory literature, these distributions are referred to respectively as Type I, Type II, and Type III. (See Embrechts, Klüppelberg, and Mikosch [2003], De Haan and Ferreira [2006], and Kotz and Nadarajah [2002].) The three types are related in that we obtain one type from another by simply varying the value of the parameter  $\xi$ . This makes GEV distributions extremely pleasant for handling financial data.

For the Gumbel distribution, the general parameter is zero (i.e., $\xi = 0$) and its density function is

$$
f (x) = e^{- x} \exp \left\{- e^{- x} \right\}
$$

A plot of this density is given by the dashed graph in Figure 1 that corresponds to $\xi = 0$. The distribution function of the Gumbel distribution is then

$$
F (x) = \exp \left\{- e^{- x} \right\}
$$

Again, for  $\xi = 0$ , we have the distribution function displayed by the dashed graph in Figure 2.

The second  $GEV(\xi)$  distribution is the Fréchet distribution, which is given for  $\xi > 0$  and has density

$$ f (x) = (1 + \xi x)^{- \xi - 1} \cdot \exp \{- x^{- \xi} \}
$$ with corresponding distribution function


$$
F (x) = \exp \left\{- (1 + x)^{- 1 / \xi} \right\}
$$

Note that the prerequisite  $1 + \xi x > 0$  has to be met. For a parameter value of  $\xi = 0.5$ , an example of the density and distribution function is given by the dotted graphs in Figures 1 and 3, respectively.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/3baa5cbf6c5cb0f7e28d1ca1beb8c41b547aad51092fe09da42b0feab398f407.jpg)
Figure 1  $GEV(\xi)$  Density Function for Various Parameter Values

Finally, the Weibull distribution corresponds to  $\xi < 0$ . It has the density function

$$ f (x) = (1 + \xi x)^{- \xi - 1} \cdot \exp \left\{- x^{- \xi} \right\}
$$

A plot of this distribution can be seen in Figure 1, with  $\xi = -0.5$  (solid line). Again,  $1 + \xi x > 0$  has to be met. It is remarkable that the density function graph vanishes in a finite right end point, that is, becomes zero. Thus, the support is on  $(-\infty , - 1 / \xi)$ . The corresponding distribution function is


$$
F (x) = \exp \left\{- (1 + x)^{- 1} / \xi \right\}
$$ a graph of which is depicted in Figure 2 for  $\xi = -0.5$  (solid line).


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/8ca69a606f1124c90dd25c4ebf19bdf2b18d663015d2c3927e06f3c0222abd09.jpg)
Figure 2  $GEV(\xi)$  Distribution Function for Various Parameter Values

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/0060c82c096fcda8323f284369c0536c8a7c3cd7ac63df323218388eaf769608.jpg)
Figure 3 Generalized Pareto Density Function for Various Parameter Values

Notice that the extreme parts of the density function (i.e., the tails) of the Fréchet distribution vanish more slowly than that of the Gumbel distribution. Consequently, a Fréchet type distribution should be applied when dealing with scenarios of large extremes.

# GENERALIZED PARETODISTRIBUTION

A distribution often employed to model large values, such as price changes well beyond the typical change, is the generalized Pareto distribution or, as we will often refer to it here, simply Pareto distribution. This distribution serves as the distribution of the so called "peaks over thresholds," which are values exceeding certain benchmarks or loss severity.

For example, consider  $n$  random variables  $X_{1}, X_{2}, \ldots, X_{n}$  that are all identically distributed and independent of each other. Slightly idealized, they might represent the returns of some stock on  $n$  different observation days. As the number of observations  $n$  increases, suppose that their maximum observed return follows the distribution law of a GEV distribution with parameter  $\xi$ . Furthermore, let  $u$  be some sufficiently large threshold return. Suppose that on day  $i$ , the return exceeded this threshold. Then, given the exceedance, the amount return  $X_{i}$  surpassed  $u$  by, that is,  $X_{i} - u$ , is a generalized Pareto distributed random variable.


The following density function characterizes the Pareto distribution

$$ f (x) = \left\{ \begin{array}{c c} \frac{1}{\beta} \left(1 + \xi \frac{x}{\beta}\right)^{- 1 - 1 / \xi}, & x \geq 0 \\ 0 & \text{else} \end{array} \right.
$$ with  $\beta > 0$  and  $1 + (\xi x) / \beta > 0$ . Hence, the distribution is right skewed since the support is only on the positive real line. The corresponding distribution function is given by


$$
F (x) = \frac{1}{\beta} \left(1 + \xi \frac{x}{\beta}\right)^{- 1 - 1 / \xi}, x \geq 0
$$

As we can see, the Pareto distribution is characterized by two parameters  $\beta$  and  $\xi$ . In brief, the distribution is denoted by  $Pa(\beta, \xi)$ . The parameter  $\beta$  serves as a scale parameter while the parameter  $\xi$  is responsible for the overall shape as becomes obvious by the density plots in Figure 3. The distribution function is displayed, in Figure 4, for a selection of parameter values.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/620db7b6754cdab2f37387bdec2790848208a371caed6e59532b296e45d67101.jpg)
Figure 4 Generalized Pareto Distribution Function for Various Parameter Values


For  $\beta < 1$ , the mean is

$$
E (X) = \beta / 1 - \xi
$$

When  $\beta$  becomes very small approaching zero, then the distribution results in the exponential distribution with parameter  $\lambda = 1 / \beta$ .

The Pareto distribution is commonly used to represent the tails of other distributions. For example, while in neighborhoods about the mean, the normal distribution might serve well to model financial returns; for the tails (i.e., the end parts of the density curve), however, one might be better advised to apply the Pareto distribution. The reason is that the normal distribution may not assign sufficient probability to more pronounced price changes measured in log-returns. On the other hand, if one wishes to model behavior that attributes less probability to extreme values than the normal distribution would suggest, this could be accomplished by the Pareto distribution as well. The reason why the class of the Pareto distributions provides a prime candidate for these tasks is due to the fact that it allows for a great variety of different shapes one can smoothly obtain by altering the parameter values.


# NORMAL INVERSE GAUSSIAN DISTRIBUTION

Another candidate for the modeling of financial returns is the normal inverse Gaussian distribution. It is considered suitable since it assigns a large amount of probability mass to the tails. This reflects the inherent risks in financial returns that are neglected by the normal distribution since it models asset returns behaving more moderately. But in recent history, we have experienced more extreme shocks than the normal distribution would have suggested with reasonable probability.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/75f278425b7a3ba7b201f610a60c080d58a60d6a727ebc66bdb07f38467786d7.jpg)
Figure 5 Normal Inverse Gaussian Density Function for Various Parameter Values

The distribution is characterized by four parameters,  $a,b,\mu$  and  $\delta$ . In brief, the distribution is denoted by  $NIG(a,b,\mu,\delta)$ . For real values  $x$ , the density function is given by

$$
\begin{array}{l} f (x) \frac{a \cdot \delta}{\pi} \exp \left\{\delta \sqrt{a^{2} - b^{2}} + b (x - \mu) \right\} \\ \times \frac{K_{1} \left(a \sqrt{\delta^{2} + (x - \mu)^{2}}\right)}{\sqrt{\delta^{2} + (x - \mu)^{2}}} \\ \end{array}
$$ where  $K_{1}$  is the so-called Bessel function of the third kind. In Figure 5, we display the density function for a selection of parameter values.


The distribution function is, as in the normal distribution case, not analytically presentable. It has to be determined with the help of numerical methods. We display the distribution function for a selection of parameter values in Figure 6.

The parameters have the following interpretation. Parameter  $a$  determines the overall shape of the density while  $b$  controls skewness. The location or position of the density function is governed via parameter  $\mu$  and  $\delta$  is responsible for scaling. These parameters have values according to the following


$$
\begin{array}{l} a > 0 \\ 0 \leq b <   a \\ \mu \in R \\ \delta > 0 \\ \end{array}
$$

The mean of a NIG random variable is

$$
E (X) = \mu + \frac{\delta \cdot b}{\sqrt{a^{2} - b^{2}}}
$$ and the variance is


$$
V a r (X) = \delta \frac{a^{2}}{\left(\sqrt{a^{2} - b^{2}}\right)^{3}}
$$

# Normal Distribution versus Normal Inverse Gaussian Distribution

Due to a relationship to the normal distribution that is beyond the scope here, there are some common features between the normal and NIG distributions.

The scaling property of the NIG distribution guarantees that any NIG random variable multiplied by some real constant is again a NIG random variable. Formally, for some  $k\in R$  and

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/cbb4b74f88a87114aa2ea9a3e60f42a1106b23b2f5e2357f695dd37d0034b586.jpg)
Figure 6 Normal Inverse Gaussian Distribution Function for Various Parameter Values

$X\sim NIG(a,b,\mu ,\delta)$  , we have that

$$ k \cdot X \sim N I G \left(\frac{a}{k}, \frac{b}{k}, k \cdot \mu , k \cdot \delta\right) \tag {1}
$$

Among others, the result in equation (1) implies that the factor  $k$  shifts the density function by the  $k$ -fold of the original position. Moreover, we can reduce skewness in that we inflate  $X$  by some factor  $k$ .

Also, the NIG distribution is summation stable such that, under certain prerequisites concerning the parameters, independent NIG random variables are again NIG. More precisely, if we have the random variables  $X_{1} \sim NIG(a, b, \mu_{1}, \delta_{1})$  and  $X_{2} \sim NIG(a, b, \mu_{2}, \delta_{2})$ , the sum is  $X_{1} + X_{2} \sim NIG(a, b, \mu_{1} + \mu_{2}, \delta_{1} + \delta_{2})$ . So, we see that only location and scale are affected by summation.

# $\alpha$  -STABLE DISTRIBUTION

The final distribution we introduce is the class of $\alpha$-stable distributions. (For a further discussion of stable distributions, see Samorodnitsky and Taqqu [2000].) Often, these distributions are simply referred to as stable distributions. While many models in finance have been modeled historically using the normal distribution based on its pleasant tractability, concerns have been raised that it underestimates the danger of downturns of extreme magnitude inherent in stock markets. The sudden declines of stock prices experienced during several crises since the late 1980s—October 19, 1987 ("Black Monday"), July 1997 ("Asian currency crisis"), 1998-1999 ("Russian ruble crisis"), 2001 ("Dot-com bubble"), and July 2007 and following ("Subprime mortgage crisis")—are examples that call for distributional alternatives accounting for extreme price shocks more adequately than the normal distribution. This may be even more necessary considering that financial crashes with serious price movements might become even more frequent in time given the major events that transpired throughout the global financial markets in 2008. The immense threat radiating from heavy tails in stock return distributions made industry professionals aware of the urgency to take them seriously and reflect them in their models.


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/97059c07a3023386af53fef9cb694d843addf3d13eea36a4b358706147c22900.jpg)
Figure 7 Comparison of the Normal (Dash-Dotted) and  $\alpha$ -Stable (Solid) Density Functions

Many distributional alternatives providing more realistic chances to severe price movements are known, such as the Student's  $t$ , for example, or the GEV distributions presented earlier in this entry. In the early 1960s, Benoit Mandelbrot suggested as a distribution for commodity price changes the class of stable distributions. The reason is that, through their particular parameterization, they are capable of modeling moderate scenarios as supported by the normal distribution as well as extreme ones beyond the scope of most of the distributions that we have presented in this entry.

The stable distribution is characterized by the four parameters  $\alpha$ ,  $\beta$ ,  $\sigma$ , and  $\mu$ . In brief, we denote the  $\alpha$ -stable distribution by  $S(\alpha, \beta, \sigma, \mu)$ . Parameter  $\alpha$  is the so-called tail index or characteristic exponent. It determines how much probability is assigned around the center and the tails of the distribution. The lower the value  $\alpha$ , the more pointed about the center is the density and the heavier are the tails. These two features are referred to as excess kurtosis relative to the normal distribution. This can be visualized graphically as we have done in Figure 7 where we compare the normal density to an  $\alpha$ -stable density with a low  $\alpha = 1.5$ . The parameters for the normal distribution are  $\mu = 0.14$  and  $\sigma = 4.23$ . The parameters for the stable distribution are  $\alpha = 1.5, \beta = 0, \sigma = 1$ , and  $\mu = 0$ . Note that symbols common to both distributions have different meanings.


The density graphs are obtained from fitting the distributions to the same sample data of arbitrarily generated numbers. The parameter  $\alpha$  is related to the parameter  $\xi$  of the Pareto distribution, resulting in the tails of the density functions of  $\alpha$ -stable random variables vanishing at a rate proportional to the Pareto tail.

The tails of the Pareto as well as the  $\alpha$ -stable distribution decay at a rate with fixed power  $\alpha$ ,  $x^{-\alpha}$  (i.e., power law), which is in contrast to the normal distribution whose tails decay at an exponential rate (i.e., roughly  $e^{-x^2 /2}$ ). We illustrate the effect focusing on the probability of exceeding some value  $x$  somewhere in the upper tail, say  $x = 3$ . Moreover, we choose the parameter of stability to be  $\alpha = 1.5$ . Under the normal law, the probability of exceedance is roughly  $e^{-3^2 / 2} = 0.011$  while under the power law it is about  $3^{-1.5} = 0.1925$ . Next, we let the benchmark  $x$  become gradually larger. Then the probability of assuming a value at least twice or four times as large (i.e.,  $2x$  or  $4x$ ) is roughly


$$ e^{- \frac{(2 \times 3)^{2}}{2}} \approx 0
$$ or


$$ e^{- \frac{(4 \times 3)^{2}}{2}} \approx 0
$$ for the normal distribution. In contrast, under the power law, the same exceedance probabilities would be  $(2 \times 3)^{-1.5} = 0.068$  or  $(4 \times 3)^{-1.5} \approx 0.024$ . This is a much slower rate than under the normal distribution. Note that the value of  $x = 3$  plays no role for the power tails while the exceedance probability of the normal distribution decays faster the further out we are in the tails (i.e., the larger is  $x$ ). The same reasoning applies to the lower tails considering the probability of falling below a benchmark  $x$  rather than exceeding it.


The parameter  $\beta$  indicates skewness where negative values represent left skewness while positive values indicate right skewness. The scale parameter  $\sigma$  has a similar interpretation as the standard deviation. Finally, the parameter  $\mu$  indicates location of the distribution. Its interpretability depends on the parameter  $\alpha$ . If the latter is between 1 and 2, then  $\mu$  is equal to the mean.

Possible values of the parameters are listed below:

$$
\begin{array}{l} \alpha \quad (0, 2) \\ \begin{array}{c c} \beta & [ - 1, 1 ] \end{array} \\ \begin{array}{c c} \sigma & (0, \infty) \end{array} \\ \begin{array}{c c} \mu & \mathbb {R} \end{array} \\ \end{array}
$$

Depending on the parameters  $\alpha$  and  $\beta$ , the distribution has either support on the entire real line or only the part extending to the right of some location.

In general, the density function is not explicitly presentable. Instead, the distribution of the $\alpha$-stable random variable is given by its characteristic function. The characteristic function is given by


$$
\begin{array}{l} \varphi (t) = \int_{- \infty}^{\infty} e^{i t x} f (x) d x \\ = \left\{ \begin{array}{l} \exp \left\{- \sigma^{\alpha} | t |^{\alpha} \left[ 1 - i \beta \operatorname{si gn} (t) \tan \frac{\pi \alpha}{2} \right] + i \mu t \right\}, \quad \alpha \neq 1 \\ \exp \left\{- \sigma | t | \left[ 1 - i \beta \frac{2}{\pi} \operatorname{si gn} (t) \ln (t) \right] + i \mu t \right\}, \quad \alpha = 1 \end{array} \right. \tag {2} \\ \end{array}
$$

The density, then, has to be retrieved by an inverse transform to the characteristic function. Numerical procedures are employed for this task to approximate the necessary computations. The characteristic function (2) is presented here more for the sake of completeness rather than necessity. So, one should not be discouraged if it appears overwhelmingly complex.

In Figures 8 and 9, we present the density function for varying parameters  $\beta$  and  $\alpha$ , respectively. Note in Figure 9 that for a  $\beta = 1$ , the density is positive only on a half-line toward the right as  $\alpha$  approaches 2.

Only in the case of an  $\alpha$  of 0.5, 1, or 2 can the functional form of the density be stated. For our purpose here, only the case  $\alpha = 2$  is of interest because for this special case, the stable distribution represents the normal distribution. Then, the parameter  $\beta$  ceases to have any meaning since the normal distribution is not asymmetric.

A feature of the stable distributions is that moments such as the mean, for example, exist only up to the power  $\alpha$ . (Recall that a moment exists when the according integral of the absolute values is finite.) So, except for the normal case (where  $\alpha = 2$ ), there exists no finite variance. It becomes even more extreme when  $\alpha$  is equal to 1 or less such that not even the mean exists anymore. The nonexistence of the variance is a major drawback when applying stable distributions to financial data. This is one reason why the use of this family of distribution in finance is still contended.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/c7d452f59c1ce937c61d12f9cd7b9d0547da7f08ba3242787ed7a717b5f63234.jpg)
Figure 8 Stable Density Function for Various Values of  $\beta$


This class of distributions owes its name to the stability property for the normal distribution

(Property 2): The weighted sum of an arbitrary number of  $\alpha$ -stable random variables with the same parameters is, again,  $\alpha$ -stable distributed. More formally, let  $X_{1},\ldots ,X_{n}$  be identically distributed and independent of each other. Then, assume that for any  $n\in \mathbb{N}$  there exists a positive constant  $a_{n}$  and a real constant  $b_{n}$  such that the normalized sum  $Y(n)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/5810d41e6f42e804ee550a46ec8682c848b9d240d3b0ca3a6350b034a2cc9cfb.jpg)
Figure 9 Stable Density Function (totally right-skewed) for Various Values of  $\alpha$


$$
\begin{array}{l} Y (n) = a_{n} \left(X_{1} + X_{2} + \dots + X_{n}\right) \\ + b_{n} \sim S (\alpha , \beta , \sigma , \mu) \tag {3} \\ \end{array}
$$ converges in distribution to a random variable  $X$ , then this random variable  $X$  must be stable with some parameters  $\alpha, \beta, \sigma,$  and  $\mu$ . Again, recall that convergence in distribution means that the distribution function of  $Y(n)$  in equation (3) converges to the distribution function on the right-hand side of equation (3).


In the context of financial returns, this means that monthly returns can be treated as the sum of weekly returns and, again, weekly returns themselves can be understood as the sum of daily returns. According to equation (3), they are equally distributed up to rescaling by the parameters  $a_{n}$  and  $b_{n}$ .

From the presentation of the normal distribution, we know that it serves as a limit distribution of a sum of identically distributed random variables that are independent and have finite variance. In particular, the sum converges in distribution to the standard normal distribution once the random variables have been summed and transformed appropriately. The prerequisite, however, was that the variance exists. Now, we can drop the requirement for finite variance and only ask for independence and identical distributions to arrive at the generalized central limit theorem expressed by equation (3). The sum of transformed random variables following rather arbitrary laws will have a distribution that follows a stable distribution law as the number  $n$  becomes very large. Thus, the class of  $\alpha$ -stable distributions provides a greater set of limit distributions than the normal distribution containing the latter as a special case. Theoretically, this justifies the use of  $\alpha$ -stable distributions as the choice for modeling asset returns when we consider the returns to be the resulting sum of many independent shocks.

Let us resume the previous example with the random dynamic and the related stock price evolution. Suppose, now, that the 10-day dynamic was  $S_{\alpha}$  distributed. We denote the according random variable by  $V_{10}$ . We select a fairly moderate stable parameter of  $\alpha = 1.8$ . A value in this vicinity is commonly estimated for daily and even weekly stock returns. The skewness and location parameters are both set to zero, that is,  $\beta = \mu = 0$ . The scale is  $\sigma = 1$ , so that if the distribution was normal, that is,  $\alpha = 2$ , the variance would be 2 and, hence, consistent with the previous distributions. Note, however, that for  $\alpha = 1.8$ , the variance does not exist. Here the probability of the dynamic's exceedance of the lower threshold of 1 is

$$
P \left(V_{10} > 1\right) = 0.2413 \tag{4}
$$ compared to 0.2398 and 0.1870 in the normal and Student's t cases, respectively. Again, the probability in (4) corresponds to the event that in 10 days, the stock price will be greater than \271. So, it is more likely than in the normal and Student's t model.


For the higher threshold of 3.5, we obtain

$$
P (V_{10} > 3.5) = 0.0181
$$ compared to 0.0067 and 0.0124 from the normal and Student's t cases, respectively. This event corresponds to a stock price beyond \3,312, which is an immense increase. Under the normal distribution assumption, this event is virtually unlikely. It would happen in less than 1\% of the 10-day periods. However, under the stable as well as the Student's t assumption, this could happen in 1.81\% or 1.24\% of the scenarios, which is three times or double the probability, respectively. Just for comparison, let us assume \alpha = 1.6, which is more common during a rough market climate. The dynamic would now exceed the threshold of 1 with probability


$$
P \left(V_{10} > 1\right) = 0.2428
$$ which fits in with the other distribution. For 3.5, we have


$$
P \left(V_{10} > 3.5\right) = 0.0315 \tag{5}
$$ which is equal to five times the probability under the normal distribution and almost three times the probability under the Student's  $t$  distribution assumption. For this threshold, the same probability as in equation (5) could only be achieved with a variance of  $\sigma^2 = 4$ , which would give the overall distribution a different shape. In the Student's  $t$  case, the degree of freedom parameter would have to be less than 3 such that now the variance would not exist any longer.


For the stable parameters chosen, the same results are obtained when the sign of the returns is negative and losses are considered. For example,  $P(V_{10} < -3.5) = 0.0315$  corresponds to the probability of obtaining a stock price of \$3 or less. This scenario would only be given  $0.67\%$  probability in a normal distribution model. With respect to large portfolios such as those managed by large banks, negative returns deserve much more attention since losses of great magnitude result in widespread damages to industries beyond the financial industry.

As another example, let's look at what happened to the stock price of American International Group (AIG) in September 2008. On one single day, the stock lost  $60\%$  of its value. That corresponds to a return of about  $-0.94$ . (Keep in mind that we are analyzing logarithmic returns.) If we choose a normal distribution with  $\mu = 0$  and  $\sigma^2 = 0.0012$  for the daily returns, a drop in price of this magnitude or less has near zero probability. The distributional parameters were chosen to best mimic the behavior of the AIG returns. By comparison, if we take an  $\alpha$ -stable distribution with  $\alpha = 1.6$ ,  $\beta = 0$ ,  $\mu = 0$ , and  $\sigma = 0.001$  where these parameters were selected to fit the AIG returns, we obtain the probability for a decline of at least this size of 0.00003, that is,  $0.003\%$ . So even with this distribution, an event of this impact is almost negligible. As a consequence, we have to chose a lower parameter  $\alpha$  for the stable distribution. That brings to light the immense risk inherent in the return distributions when they are truly  $\alpha$ -stable.

# KEY POINTS

- Heavy tails are the general reference term for probability distributions whose probability mass in the tails (i.e., extreme parts of the distribution) is heavier than in the case of a normal distribution. Although there is no unique definition of the feature, there exists a selection of parameters that express whether a distribution is heavy-tailed with respect to the normal distribution. Financial asset returns commonly exhibit heavy tails, which imposes additional risk on asset managers that solely rely on theory based on the normal distribution and other candidates with appealing properties. Hence, it is necessary to account for heavy tails.
- Extreme value theory comprises a collection of distributions dealing with the most extreme values of some set. Either these distributions concentrate on the maxima and minima, respectively, or the most extreme values beyond thresholds. In general, this theory distinguishes among three different kinds of extreme value behavior. Financial risk theory has become intertwined with extreme value theory since it has become common knowledge that it does not suffice to base all analysis on the normal distribution alone.
- Stable distributions form a class of distributions capable of dealing with many stylized facts observed for asset returns. Moreover, the distributions from this class exhibit the property of stability under summation, roughly meaning that sums of random variables following certain probability laws are again distributed as individual random variables. This makes them appealing for the characterization of asset return behavior observed in the real world.
- Skewness is basically a measure of asymmetry of some distribution. While the normal distribution is symmetric about its mean, many other distributions do not share this feature. In fact, when analyzing asset returns, it is often revealed that they are noticeably skewed to one side; that is, they are asymmetric. Consequently, it is important to consider skewness when dealing with asset returns in order to avoid additional risk arising from its neglect.


- The generalized central limit theorem is the extension of the central limit theorem stating that the appropriately scaled sum of certain random variables is eventually standard normally distributed when their number becomes large. However, the criteria for these random variables for the central limit theorem to hold are sometimes unrealistic. The generalized central limit theorem, in contrast, relaxes some of these criteria to include a larger selection of random variables that would fail to sum up to a standard normally distributed random variable. The lim iting distributions of these sums are instead members of the class of  $\alpha$ -stable distributions. This theorem provides a justification for the use of stable distributions in mathematical finance.


# REFERENCES

De Haan, L., and Ferreira, A. (2006). Extreme Value Theory: An Introduction. New York: Springer.
Embrechts, P., Klüppelberg, C., and Mikosch, T. (2003). Modelling Extremal Events: For Insurance and Finance. Berlin: Springer.
Kotz, S., and Nadarajah, S. (2002). Extreme Value Distributions: Theory and Applications. London: Imperial College Press.
Samorodnitsky, G., and Taqqu, M. (2000). Stable Non-Gaussian Random Processes: Stochastic Models. Boca Raton, FL: Chapman & Hall/CRC.

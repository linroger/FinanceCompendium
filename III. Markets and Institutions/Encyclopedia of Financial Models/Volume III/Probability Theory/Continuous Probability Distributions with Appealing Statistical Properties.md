
# Continuous Probability Distributions with Appealing Statistical Properties

MARKUS HÖCHSTÖTTER, PhD

Assistant Professor, University of Karlsruhe

SVETLOZAR T. RACHEV, PhD, Dr Sci

Frey Family Foundation Chair-Professor, Department of Applied Mathematics and Statistics, Stony Brook University, and Chief Scientist, FinAnalytica


FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: To model the behavior of certain financial assets in a stochastic environment, we can usually resort to a variety of theoretical distributions. Most commonly, probability distributions are selected that are analytically well known. For example, the normal distribution is often the distribution of choice when asset returns are modeled, or the exponential distribution is applied to characterize the randomness of the time between two successive defaults of firms in a bond portfolio. Many other distributions are related to them or built on them in a well-known manner. These distributions often display pleasant features such as stability under summation—meaning that the return of a portfolio of assets whose returns follow a certain distribution again follows the same distribution. However, one has to be careful using these distributions since their advantage of mathematical tractability is often outweighed by the fact that the stochastic behavior of the true asset returns is not well captured by these distributions.

In this entry, we discuss the more commonly used distributions with appealing statistical properties that are used in finance. The distributions discussed are the normal distribution, the chi-square distribution, the Student's  $t$ -distribution, the Fisher's  $F$ -distribution, the exponential distribution, the gamma distribution (including the special Erlang distribution), the beta distribution, and the log-normal distribution. Many of the distributions enjoy widespread attention in finance, or statistical applications in general, due to their well-known characteristics or mathematical simplicity. However, as we emphasize, the use of some of them might be ill-suited to replicate the real-world behavior of financial returns. For a more technical discussion of continuous distributions, see Evans, Hastings,


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/670d1a24c71cd531ccdce24ccd2db8614f49898d792fb55e135b8cd0d79f8539.jpg) and Peacock (2000) or Johnson, Kotz, and Balakrishnan (1995).
Figure 1 Normal Density Function for Various Parameter Values


# NORMAL DISTRIBUTION

The first distribution we discuss is the normal distribution. It is the distribution most commonly used in finance despite its many limitations. This distribution, also referred to as the Gaussian distribution (named after the mathematician and physicist C. F. Gauss), is characterized by the two parameters: mean  $(\mu)$  and standard deviation  $(\sigma)$ . The distribution is denoted by  $N(\mu, \sigma^2)$ . When  $\mu = 0$  and  $\sigma^2 = 1$ , then we obtain the standard normal distribution.

For  $x\in R$  , the density function for the normal distribution is given by
The density in equation (1) is always positive. Hence, we have support (i.e., positive density) on the entire real line. Furthermore, the density function is symmetric about  $\mu$ . A plot of the density function for several parameter values is given in Figure 1. As can be seen, the value of  $\mu$  results in a horizontal shift from 0 while  $\sigma$  inflates or deflates the graph. A characteristic of the normal distribution is that the densities are bell shaped.

A problem is that the distribution function cannot be solved for analytically and therefore has to be approximated numerically. In the particular case of the standard normal distribution, the values are tabulated. Standard statistical software provides the values for the standard normal distribution as well as most of the distributions presented in this entry. The standard normal distribution is commonly denoted by the Greek letter  $\Phi$  such that we have  $\Phi (x) = F(x) = P(X\leq x)$ , for some standard normal random variable  $X$ . In Figure 2, graphs of the distribution function are given for three different sets of parameters.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/7e7ea65d542589e4d3608043db0a7f42eaced988084f34836ad6623c7ed000e9.jpg)
Figure 2 Normal Distribution Function for Various Parameter Values


# Properties of the Normal Distribution

The normal distribution provides one of the most important classes of probability distributions due to two appealing properties that generally are not shared by all distributions:

Property 1. The distribution is location-scale invariant.

Property 2. The distribution is stable under summation.

Property 1, the location-scale invariance property, guarantees that we may multiply  $X$  by  $b$  and add  $a$  where  $a$  and  $b$  are any real numbers. Then, the resulting  $a + b \cdot X$  is, again, normally distributed, more precisely,  $N(a + \mu, b\sigma)$ . Consequently, a normal random variable will still be normally distributed if we change the units of measurement. The change into  $a + b \cdot X$  can be interpreted as observing the same  $X$ , however, measured in a different scale. In particular, if  $a$  and  $b$  are such that the mean and variance of the resulting  $a + b \cdot X$  are 0 and 1, respectively, then  $a + b \cdot X$  is called the standardization of  $X$ .


Property 2, stability under summation, ensures that the sum of an arbitrary number  $n$  of normal random variables,  $X_{1}, X_{2}, \ldots, X_{n}$  is, again, normally distributed provided that the random variables behave independently of each other. This is important for aggregating quantities.

These properties are illustrated later in the entry.

Furthermore, the normal distribution is often mentioned in the context of the central limit theorem. It states that a sum of random variables with identical distributions and being independent of each other results in a normal random variable. We restate this formally as follows:

Let  $X_{1}, X_{2}, \ldots, X_{n}$  be identically distributed random variables with mean  $E(X_{i}) = \mu$  and  $Var(X_{i}) = \sigma^{2}$  and do not influence the outcome of each other (i.e., are independent).

Then, we have

$$
\frac{\sum_{i = 1}^{n} X_{i} - n \cdot \mu}{\sigma \sqrt{n}} \xrightarrow {D} N (0, 1) \tag {2}
$$ as the number  $n$  approaches infinity. The  $D$  above the convergence arrow in equation (2) indicates that the distribution function of the left expression converges to the standard normal distribution.


Generally, for  $n = 30$  in equation (2), we consider equality of the distributions; that is, the left-hand side is  $N(0,1)$  distributed. In certain cases, depending on the distribution of the  $X_{i}$  and the corresponding parameter values,  $n < 30$  justifies the use of the standard normal distribution for the left-hand side of equation (2). If the  $X_{i}$  are Bernoulli random variables, that is,  $X_{i} \sim B(p)$ , with parameter  $p$  such that  $n \cdot p \geq 5$ , then we also assume equality in the distributions in equation (2). Depending on  $p$ , this can mean that  $n$  is much smaller than 30.

These properties make the normal distribution the most popular distribution in finance. But this popularity is somewhat contentious, however, for reasons that will be given as we progress in this entry.

The last property we will discuss of the normal distribution that is shared with some other distributions is the bell shape of the density function. This particular shape helps in roughly assessing the dispersion of the distribution due to a rule of thumb commonly referred to as the empirical rule. Due to this rule, we have

$$
\begin{array}{l} P \left(X \in [ \mu \pm \sigma ]\right) = F (\mu + \sigma) - F (\mu - \sigma) \approx 68 \% \\ P \left(X \in [ \mu \pm 2 \sigma ]\right) = F (\mu + 2 \sigma) - F (\mu - 2 \sigma) \approx 95 \% \\ P \left(X \in [ \mu \pm 3 \sigma ]\right) = F (\mu + 3 \sigma) - F (\mu - 3 \sigma) \approx 100 \% \\ \end{array}
$$

The above states that approximately  $68\%$  of the probability is given to values that lie in an interval one standard deviation  $\sigma$  about the mean  $\mu$ . About  $95\%$  probability is given to values within  $2\sigma$  to the mean, while nearly all probability is assigned to values within  $3\sigma$  from the mean.

By comparison, the so-called Chebychev inequalities valid for any type of distribution—so not necessarily bell-shaped—yield

$$
\begin{array}{l} P \left(X \in [ \mu \pm \sigma ]\right) \approx 0 \% \\ P \left(X \in [ \mu \pm 2 \sigma ]\right) \approx 75 \% \\ P \left(X \in [ \mu \pm 3 \sigma ]\right) \approx 89 \% \\ \end{array}
$$ which provides a much coarser assessment than the empirical rule as we can see, for example, by the assessed  $0\%$  of data contained inside of one standard deviation about the mean.


# Applications to Stock Returns

# Applying Properties 1 and 2 to Stock Returns

With respect to Property 1, consider an example of normally distributed stock returns  $r$  with mean  $\mu$ . If  $\mu$  is nonzero, this means that the returns are a combination of a constant  $\mu$  and random behavior centered about zero. If we were only interested in the latter, we would subtract  $\mu$  from the returns and thereby obtain a new random variable  $\tilde{r} = r - \mu$ , which is again normally distributed.

With respect to Property 2, we give two examples. First, let us present the effect of aggregation over time. We consider daily stock returns that, by our assumption, follow a normal law. By adding the returns from each trading day during a particular week, we obtain the week's return as  $r_w = r_{Mo} + r_{Tu} + \ldots + r_{Fr}$  where  $r_{Mo}, r_{Tu}, \ldots, r_{Fr}$  are the returns from Monday through Friday. The weekly return  $r_w$  is normally distributed as well. The second example applies to portfolio returns. Consider a portfolio consisting of  $n$  different stocks, each with normally distributed returns. We denote the corresponding returns by  $R_1$  through  $R_n$ . Furthermore, in the portfolio we weight each stock  $i$  with  $w_i$ , for  $i = 1, 2, \ldots, n$ . The resulting portfolio return  $R_p = w_1R_1 + w_2R_2 + \ldots + w_nR_n$  is also a normal random variable.

# Using the Normal Distribution to Approximate the Binomial Distribution

Consider the binomial stock price model. At time  $t = 0$ , the stock price was  $S_0 = \20$ . At time  $t = 1$ , the stock price was either up or down by  $10\%$  so that the resulting price was either  $S_0 = \$ 18  or  $S_0 = \22$ . Both up- and down movement occurred with probability  $P($ \$18) =  P($ \22) = 0.5 . Now we extend the model to an arbitrary number of  $n$  days. Suppose each day  $i, i = 1, 2, \ldots, n$ , the stock price developed in the same manner as on the first day. That is, the price is either up  $10\%$  with  $50\%$  probability or down  $10\%$  with the same probability. If on day  $i$  the price is up, we denote this by  $X_i = 1$  and  $X_i = 0$  if the price is down. The  $X_i$  are, hence,  $B(0.5)$  random variables. After, say, 50 days, we have a total of  $Y = X_1 + X_2 + \ldots + X_{50}$  up-movements. Note that because of the assumed independence of the  $X_i$ , that  $Y$  is a  $B(50, 0.5)$  random variable with mean  $n \cdot p = 25$  and variance  $n \cdot p \cdot (1 - p) = 12.5$ . Let us introduce

$$
Z_{5 0} = \frac{Y - 2 5}{\sqrt{1 2 . 5}}
$$

From the comments regarding equation (2), we can assume that  $Z_{50}$  is approximately  $N(25,12.5)$  distributed. So, the probability of at most 15 up-movements, for example, is given by  $P(Y \leq 15) = \Phi((15 - 25) / \sqrt{12.5}) = 0.23\%$ . By comparison, the probability of no more than five up-movements is equal to  $P(Y \leq 5) = \Phi((5 - 25) / \sqrt{12.5}) = 0\%$ .

# Normal Distribution for Logarithmic Returns

As another example, let  $X$  be some random variable representing a quantitative daily market dynamic such as new information about the economy. A dynamic can be understood as some driving force governing the development of other variables. We assume that it is normally distributed with mean  $E(X) = \mu = 0$  and variance  $Var(X) = \sigma^2 = 0.2$ . Formally, we would write  $X \sim N(0, 0.2)$ . So, on average, the value of the daily dynamic will be zero with a standard deviation of  $\sqrt{0.2}$ . In addition, we introduce a stock price  $S$  as a random variable, which is equal to  $S_0$  at the beginning.


After one day, the stock price is modeled to depend on the dynamic  $X$  as follows

$$
S_{1} = S_{0} \cdot e^{X}
$$ where  $S_{1}$  is the stock price after one day. The exponent  $X$  in this presentation is referred to as a logarithmic return in contrast to a multiplicative return  $R$  obtained from the formula  $R = S_{1} / S_{0} - 1$ . So, for example, if  $X = 0.01$ ,  $S_{1}$  is equal to  $e^{0.01} \cdot S_{0}$ . That is almost equal to  $1.01 \cdot S_{0}$ , which corresponds to an increase of  $1\%$  relative to  $S_{0}$ . The probability of  $X$  being, for instance, no greater than 0.01 after one day is given by


$$
\begin{array}{l} P (X \leq 0. 0 1) = \int_{- \infty}^{0. 0 1} f (x) d x \\ = \int_{- \infty}^{0. 0 1} \frac{1}{\sqrt{2 \pi} \sqrt{0 . 2}} e^{- \frac{x^{2}}{2 \cdot 0 . 2}} d x \approx 0. 5 1 \\ \end{array}
$$

Consequently, after one day, the stock price increases, at most, by  $1\%$  with  $51\%$  probability, that is,  $P(S_{1} \leq 1.01 \cdot S_{0}) \approx 0.51$ .

Next, suppose we are interested in a five-day outlook where the daily dynamics  $X_{i}$ ,  $i = 1,2,\ldots ,5$  of each of the following consecutive five days are distributed identically as  $X$  and independent of each other. Since the dynamic is modeled to equal exactly the continuously compounded return—that is logarithmic returns—we refer to  $X$  as the return in this entry. For the resulting five-day returns, we introduce the random variable  $Y = X_{1} + X_{2} + \dots +X_{5}$  as the linear combination of the five individual daily returns. We know that  $Y$  is normally distributed from Property 2. More precisely,  $Y\sim N(0,1)$ . So, on average, the return tends in neither direction, but the volatility measured by the standard deviation is now  $\sqrt{5}\approx 2.24$  times that of the daily return  $X$ . Consequently, the probability of  $Y$  not exceeding a value of 0.01 is now,


$$
P (Y \leq 0. 0 1) = \int_{- \infty}^{0. 0 1} \frac{1}{\sqrt{2 \pi} \sqrt{1}} e^{- \frac{y^{2}}{2 . 1}} d y \approx 0. 5 0
$$

We see that the fivefold variance results in a greater likelihood to exceed the threshold 0.01, that is,

$$
\begin{array}{l} P (Y > 0. 0 1) = 1 - P (Y \leq 0. 0 1) \\ \approx 0. 5 0 > 0. 4 9 \approx P (X > 0. 0 1) \\ \end{array}
$$

We model the stock price after five days as

$$
S_{5} = S_{0} \cdot e^{Y} = S_{0} \cdot e^{X_{1} + X_{2} + \ldots + X_{5}}
$$

So, after five days, the probability for the stock price to have increased by no more than  $1\%$  relative to  $S_0$  is equal to

$$
P (S_{5} \leq e^{0. 0 1} \cdot S_{0}) = P (S_{5} \leq 1. 0 1 \cdot S_{0}) \approx 0. 5 0
$$

There are two reasons why in finance logarithmic returns are commonly used. First, logarithmic returns are often easier to handle than multiplicative returns. Second, if we consider returns that are attributed to ever shorter periods of time (e.g., from yearly to monthly to weekly to daily and so on), the resulting compounded return after some fixed amount of time can be expressed as a logarithmic return. The theory behind this can be obtained from any introductory book on calculus.

# CHI-SQUARE DISTRIBUTION

Our next distribution is the chi-square distribution. Let  $Z$  be a standard normal random variable, in brief  $Z \sim N(0,1)$ , and let  $X = Z^2$ . Then  $X$  is distributed chi-square with one degree of freedom. We denote this as  $X \sim X^2(1)$ . The degrees of freedom indicate how many independently behaving standard normal random variables the resulting variable is composed of. Here  $X$  is just composed of one, namely  $Z$ , and therefore has one degree of freedom.

Because  $Z$  is squared, the chi-square distributed random variable assumes only nonnegative values; that is, the support is on the nonnegative real numbers. It has mean  $E(X) = 1$  and variance  $Var(X) = 2$ .


In general, the chi-square distribution is characterized by the degrees of freedom  $n$ , which assume the values 1, 2, ..., Let  $X_{1}, X_{2}, \ldots, X_{n}$  be  $n \chi^2(1)$  distributed random variables that are all independent of each other. Then their sum,  $S$ , is

$$
S = \sum_{i = 1}^{n} X_{i} \sim \chi^{2} (n) \tag {3}
$$

In words, the sum is again distributed chi-square but this time with  $n$  degrees of freedom. The corresponding mean is  $E(X) = n$ , and the variance equals  $Var(X) = 2 \cdot n$ . So, the mean and variance are directly related to the degrees of freedom.

From the relationship in equation (3), we see that the degrees of freedom equal the number of independent  $\chi^2(1)$  distributed  $X_i$  in the sum. If we have  $X_1 \sim \chi^2(n_1)$  and  $X_2 \sim \chi^2(n_2)$ , it follows that

$$
X_{1} + X_{2} \sim \chi^{2} \left(n_{1} + n_{2}\right) \tag {4}
$$

From property (4), we have that chi-square distributions have Property 2; that is, they are stable under summation in the sense that the sum of any two chi-squared distributed random variables is itself chi-square distributed.

The chi-square density function with  $n$  degrees of freedom is given by

$$ f (x) = \left\{ \begin{array}{c c} f (x) = \frac{1}{2^{n / 2} \Gamma \left(n / 2\right)} \cdot e^{- x / 2} \cdot x^{n / 2 - 1}, & x \geq 0 \\ 0 & x <   0 \end{array} \right.
$$ for  $n = 1,2,\ldots$  where  $\Gamma (\cdot)$  is the gamma function. Figure 3 shows a few examples of the chi-square density function with varying degrees of freedom. As can be observed, the chi-square distribution is skewed to the right.


# Application to Modeling Short-Term Interest Rates

As an example of an application of the chi-square distribution, we present a simplified model of short-term interest rates, that is, so-called short rates. The short rate given by  $r_t$ , at any time  $t$ , is assumed to be a nonnegative continuous random variable. Furthermore, we let the short rate be composed of  $d$  independent dynamics  $X_1, X_2, \ldots, X_d$  according to

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/49e5c792f41267a9fc554e88e36e70fb93431c5e084f3cd901c5148d507f41bc.jpg)
Figure 3 Density Functions of Chi-Square Distributions for Various Degrees of Freedom  $n$


$$ r_{t} = X_{1}^{2} + X_{2}^{2} + \dots + X_{d}^{2}
$$ where  $d$  is some positive integer number. In addition, each  $X_{i}$  is given as a standard normal random variable independent of all other dynamics. Then, the resulting short rate  $r_t$  is chi-square distributed with  $d$  degrees of freedom, that is,  $r_t \sim \chi^2(d)$ .


If we let  $d = 2$  (i.e., there are two dynamics governing the short rate), the probability of a short rate between 0 and  $1\%$  is  $0.5\%$ . That is, we have to expect that on five out of 1,000 days, we will have a short rate assuming some value in the interval (0,0.01]. If, in addition, we had one more dynamic included such that  $r_t \sim \chi^2(3)$ , then, the same interval would have probability  $P(r_t \in (0,0.01]) \approx 0.03\%$ , which is close to being an unlikely event. We see that the more dynam- ics are involved, the less probable small interest rates such as  $1\%$  or less become.


It should be realized, however, that this is merely an approach to model the short rate statistically and not an economic model explaining the factors driving the short rate.

# STUDENT  $t$ -DISTRIBUTION

An important continuous probability distribution when the population variance of a distribution is unknown is the Students  $t$ -distribution (also referred to as the  $t$ -distribution and Student's distribution.

The  $t$ -distribution is a mixture of the normal and chi-square distributions. To derive the distribution, let  $X$  be distributed standard normal, that is,  $X \sim N(0,1)$ , and  $S$  be chi-square distributed with  $n$  degrees of freedom, that is,  $S \sim \chi^2(n)$ . Furthermore, if  $X$  and  $Y$  are independent of each other (which is to be understood as not influencing the outcome of the other), then

$$
Z = \frac{X}{\sqrt{S / n}} \sim t (n) \tag {5}
$$

In words, equation (5) states that the resulting random variable  $Z$  is Student's  $t$ -distributed with  $n$  degrees of freedom. The degrees of freedom are inherited from the chi-square distribution of  $S$ .

How can we interpret equation (5)? Suppose we have a population of normally distributed values with zero mean. The corresponding normal random variable may be denoted as  $X$ . If one also knows the standard deviation of  $X$ ,

$$
\sigma = \sqrt{V a r (X)}
$$ with  $X / \sigma$ , we obtain a standard normal random variable.


However, if  $\sigma$  is not known, we have to use, for example,

$$
\sqrt{S / n} = \sqrt{1 / n \cdot (X_{1}^{2} + X_{2}^{2} + \cdots + X_{n}^{2})}
$$ instead where  $X_1^2, X_2^2, \dots, X_n^2$  are  $n$  random variables identically distributed as  $X$ . Moreover,  $X_1, X_2, \dots, X_n$  have to assume values independently of each other. Then, the distribution of


$$
X / \sqrt{S / n}
$$ is the  $t$  -distribution with  $n$  degrees of freedom, that is,


$$
X / \sqrt{S / n} \sim t (n)
$$

By dividing by  $\sigma$  or  $S / n$ , we generate rescaled random variables that follow a standardized distribution. Quantities similar to  $X / \sqrt{S / n}$  play an important role in parameter estimation.

The density function is defined as

$$ f (x) = \frac{1}{\sqrt{n \cdot \pi}} \cdot \frac{\Gamma \left(\frac{n + 1}{2}\right)}{\Gamma \left(\frac{n}{2}\right)} \cdot \left(1 + \frac{x^{2}}{n}\right)^{- \frac{n + 1}{2}} \tag {6}
$$ where the gamma function  $\Gamma$  is incorporated again. The density function is symmetric and has support (i.e., is positive) on all  $R$ .


Basically, the Student's  $t$ -distribution has a similar shape to the normal distribution, but thicker tails. For large degrees of freedom  $n$ , the Student's  $t$ -distribution does not significantly differ from the standard normal distribution. As a matter of fact, for  $n \geq 100$ , it is practically indistinguishable from  $N(0,1)$ .

Figure 4 shows the Student's  $t$ -density function for various degrees of freedom plotted against the standard normal density function. The same is done for the distribution function in Figure 5.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/40f0dbeee84a36ec6a251df56b2fadc59b4ae816eec51dcec591a09b0541fc0e.jpg)
Figure 4 Density Function of the  $t$ -Distribution for Various Degrees of Freedom  $n$  Compared to the Standard Normal Density Function ( $N(0,1)$ )

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/e7dc477e232f703ccaaaa6b2e03180e30831dc74e23cf7f0b795f7c435621765.jpg)
Figure 5 Distribution Function of the  $t$ -Distribution for Various Degrees of Freedom  $n$  Compared to the Standard Normal Density Function ( $N(0,1)$ )


In general, the lower the degrees of freedom, the heavier the tails of the distribution, making extreme outcomes much more likely than for greater degrees of freedom or, in the limit, the normal distribution. This can be seen by the distribution function that we depicted in Figure 5 for  $n = 1$  and  $n = 5$  against the standard normal cumulative distribution function (cdf). For lower degrees of freedom such as  $n = 1$ , the solid curve starts to rise earlier and approach 1 later than for higher degrees of freedom such as  $n = 5$  or the  $N(0,1)$  case.

This can be understood as follows. When we rescale  $X$  by dividing by  $\sqrt{S / n}$  as in equation (5), the resulting  $X / \sqrt{S / n}$  obviously inherits randomness from both  $X$  and  $S$ . Now, when  $S$  is composed of few  $X_{i}$ , only, say  $n = 3$ , such that  $X / \sqrt{S / n}$  has three degrees of freedom, there is a lot of dispersion from  $S$  relative to the standard normal distribution. By including more independent  $N(0,1)$  random variables  $X_{i}$  such that the degrees of freedom increase,  $S$  becomes less dispersed. Thus, much uncertainty relative to the standard normal distribution stemming from the denominator in  $X / \sqrt{S / n}$  vanishes. The share of randomness in  $X / \sqrt{S / n}$  originating from  $X$  alone prevails such that the normal characteristics preponderate. Finally, as  $n$  goes to infinity, we have something that is nearly standard normally distributed.


The mean of the Student's  $t$  random variable is zero, that is  $E(X) = 0$ , while the variance is a function of the degrees of freedom  $n$  as follows

$$
\sigma^{2} = \operatorname{Va r} (X) = \frac{n}{n - 2}
$$

For  $n = 1$  and 2, there is no finite variance. Distributions with such small degrees of freedom generate extreme movements quite frequently relative to higher degrees of freedom. Precisely for this reason, stock price returns are often found to be modeled quite well using distributions with small degrees of freedom, or alternatively, large variances.

# Application to Stock Returns

Let us resume the example at the end of the presentation of the normal distribution. We consider, once again, the 5-day return  $Y$  with standard normal distribution. Suppose that now we do not know the variance. For this reason, at any point in time  $t$ , we rescale the observations of  $Y$  by


$$
\sqrt{\frac{1}{5} \cdot \left(Y_{- 1}^{2} + Y_{- 2}^{2} + \cdots + Y_{- 5}^{2}\right)}
$$ where the  $Y_{-1}^2, Y_{-2}^2, \ldots, Y_{-5}^2$  are the five independent weekly returns immediately prior to  $Y$ . The resulting rescaled weekly returns


$$
Z = \frac{Y}{\sqrt{Y_{- 1}^{2} + Y_{- 2}^{2} + \cdots + Y_{- 5}^{2}}}
$$ then are  $t(5)$  distributed. The probability of  $Y$  not exceeding a value of 0.01 is now


$$
P (Y \leq 0. 0 1) = F (0. 0 1) = 0. 5 0 8 3
$$ where  $F$  is the cumulative distribution function of the Student's  $t$ -distribution with five degrees of freedom. Under the  $N(0,1)$ , this probability was about the same.


Again, we model the stock price after five days as  $S_{5} = S_{0} \cdot e^{Y}$  where  $S_{0}$  is today's price. As we know, when  $Y \leq 0.01$ , then  $S_{5} \leq S_{0} \cdot e^{0.01} = S_{0} \cdot 1.01$ . Again, it follows that the stock price increases by at most  $1\%$  with probability of about 0.51. So far there is not much difference here between the standard normal and the  $t(5)$  distribution.

Let's analyze the stock of American International Group (AIG) in September 2008. During one week, that is, five trading days, the stock lost about  $67\%$  of its value. That corresponds to a value of the 5-day return of  $Y = -1.0986$  because of  $e^{Y} = e^{-1.0986} = 0.3333 = 1 - 0.6667$ . In the  $N(0,1)$  model, a decline of this magnitude or even worse would occur with probability

$$
P (Y \leq -1.0986) = \Phi (-1.0986) = 13.6 \%
$$ while under the  $t(5)$  assumption, we would obtain


$$
P (Y \leq - 1. 0 9 8 6) = F (- 1. 0 9 8 6) = 1 6. 1
$$

This is  $2.5\%$  more likely in the  $t(5)$  model. So, stock price returns exhibiting extreme move ments such as that of the AIG stock price should not be modeled using the normal distribution.


# F-DISTRIBUTION

Our next distribution is the  $F$ -distribution. It is defined as follows. Let  $X \sim \chi^2(n_1)$  and  $Y \sim \chi^2(n_2)$ .

Furthermore, assuming  $X$  and  $Y$  to be independent, then the ratio

$$
F \left(n_{1}, n_{2}\right) = \frac{X / n_{1}}{Y / n_{2}} \tag {7}
$$ has an  $F$ -distribution with  $n_1$  and  $n_2$  degrees of freedom inherited from the underlying chi-square distributions of  $X$  and  $Y$ , respectively. We see that the random variable in equation (7) assumes nonnegative values only because neither  $X$  nor  $Y$  are ever negative. Hence, the support is on the nonnegative real numbers. Also like the chi-square distribution, the  $F$ -distribution is skewed to the right.


The  $F$ -distribution has a rather complicated looking density function of the form

$$
\begin{array}{l} f (x) \\ = \left\{ \begin{array}{c c} \frac{F \left(\frac{n_{1} + n_{2}}{2}\right)}{F \left(\frac{n_{1}}{2}\right) F \left(\frac{N_{2}}{2}\right)} \cdot \left(\frac{n_{1}}{n_{2}}\right)^{n_{1 / 2}} \cdot \frac{x^{n_{1 / 2} - 1}}{\left[ 1 + x \cdot \frac{n_{1}}{2} \right]^{\frac{n_{1} + n_{2}}{2}}}, & x \geq 0 \\ 0 & x <   0 \end{array} \right. \tag {8} \\ \end{array}
$$

Figure 6 displays the density function (8) for various degrees of freedom. As the degrees of freedom  $n_1$  and  $n_2$  increase, the function graph becomes more peaked and less asymmetric while the tails lose mass.

The mean is given by

$$
E (X) = \frac{n_{2}}{n_{2} - 2}, \quad \text{fo r} n_{2} > 2 \tag {9}
$$ while the variance equals


$$
\sigma^{2} = \operatorname{Va r} (X) = \frac{2 n_{2}^{2} \left(n_{1} + n_{2} - 2\right)}{n_{1} \left(n_{2} - 2\right)^{2} \left(n_{2} - 4\right)}, \text{fo r} n_{2} > 4 \tag {10}
$$ the first chi-square random variable, while the variance in equation (10) is influenced by the degrees of freedom of both random variables.

Note that according to equation (9), the mean is not affected by the degrees of freedom  $n_1$  of

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/5410917cb01da5a1bc891a9eb20549527a40b5fc404500e7abf091094361ede9.jpg)
Figure 6 Density Function of the  $F$ -Distribution for Various Degrees of Freedom  $n_1$  and  $n_2$


# EXPONENTIAL DISTRIBUTION

The exponential distribution is characterized by the positive real-valued parameter  $\lambda$ . In brief, we use the notation  $\mathrm{Exp}(\lambda)$ . An exponential random variable assumes nonnegative values only. The density defined for  $\lambda > 0$  by

$$ f (x) = \left\{ \begin{array}{c} \lambda \cdot e^{- \lambda x},   x \geq 0 \\ 0 \qquad x <   0 \end{array} \right.
$$ is right skewed. Figure 7 presents the density function for various parameter values  $\lambda$ .


The distribution function is obtained by simple integration as

$$
F (x) = 1 - e^{- \lambda x}
$$

For identical parameter values as in Figure 7, we have plots of the exponential distribution function shown in Figure 8.

For this distribution, both the mean and variance are relatively simple functions of the pa rameter. That is, for the mean


$$
E (X) = \frac{1}{\lambda}
$$ and for the variance


$$
V a r (X) = \frac{1}{\lambda^{2}}
$$

There is an inverse relationship between the exponential distribution and the Poisson distribution. Suppose we have a Poisson random variable  $N$  with parameter  $\lambda$ , i.e.,  $N \sim Poi(\lambda)$ , counting the occurrences of some event within a time frame of length  $T$ . Furthermore, let  $X_1, X_2, \ldots$  be the  $Exp(\lambda)$  distributed interarrival times between the individual occurrences. That is between time zero and the first event,  $X_1$  units of time have passed, between the first event and the second,  $X_2$  units of time have elapsed, and so on. Now, over these  $T$  units of time, we expect  $T \cdot \lambda = T \cdot E(N)$  events to occur. Alternatively, we have an average of  $T / (T \cdot \lambda) = 1 / \lambda = E(X)$  units of time to wait between occurrences.

Suppose that by time  $T$  we have counted exactly  $n$  events. Then the accrued time  $\tau$  elapsed when the event occurs for the  $n$ th time is obtained by the sum of all individual interarrival times  $X_{1}, X_{2}, \ldots, X_{n}$ , which cannot be greater than  $T$ . Formally

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/706aa8efb223fb10788dd16c9b5fb8345e466a5caff2cab5a39c53bd9ccabb4b.jpg)
Figure 7 Exponential Density Function for Various Parameter Values  $\lambda$


$$
\tau = \sum_{i}^{n} X_{i} \leq T \tag {11}
$$

A result of this relationship is

$$
E (N) = \lambda = \frac{1}{E (X)}
$$

The exponential distribution is commonly referred to as a distribution with a "no memory" property in the context of life-span that ends due to some break.

That means that there is no difference in the probability between the following two events. Event one states that the object will live for the first  $\tau$  units of time after the object's creation while event two states that the object will continue living for the next  $\tau$  units of time after it has already survived some  $t$  units of time. In other words, if some interarrival time or survival time (i.e., the time between certain occurrences) is  $Exp(\lambda)$  distributed, one starts all over waiting at any given time  $t$  provided that the break has not occurred yet. (Technically, these considerations as well as the following equation (12) require the understanding of the notion conditional distributions. Here it will suffice to apply pure intuition.) So, for example, let the time until the next default of one of several corporate bonds held in some portfolio be given as an exponential random variable. Then the probability of the first bond defaulting in no more than  $t$  units of time given that none have defaulted so far is the same as the probability of the nth bond defaulting after at most  $t$  units of time given that  $n - 1$  bonds have already defaulted. That is, we only care about the probability distribution of the time of occurrence of the next default regardless of how many bonds have already defaulted.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/c4956d0b1330cab7086b24cea810547fe59cca66e8f6a0d43f9a22d842ce5807.jpg)
Figure 8 Distribution Function  $F(x)$  of the Exponential Distribution for Various Parameter Values  $\lambda$


Finally, an additional property of the exponential distribution is its relationship to the chi-square distribution. Let  $X$  be  $Exp(\lambda)$ . Then  $X$  is also chi-square distributed with two degrees of freedom, that is,  $X \sim \chi^2(2)$ .

# Applications in Finance

In applications in finance, the parameter  $\lambda$  often has the meaning of a default rate, default intensity, or hazard rate. This can be understood by observing the ratio

$$
\frac{P (X \in (t , t + d t ])}{d t \cdot P (X > t)} \tag {12}
$$ which expresses the probability of the event of interest such as default of some company occurring between time  $t$  and  $t + dt$  given that it has not happened by time  $t$ , relative to the length of the horizon,  $dt$ . Now, let the length of the interval,  $dt$ , approach zero, and this ratio in equation (12) will have  $\lambda$  as its limit.


The exponential distribution is often used in credit risk models where the number of defaulting bonds or loans in some portfolio over some period of time is represented by a Poisson random variable and the random times between successive defaults by exponentially distributed random variables. In general, then, the time until the nth default is given by the sum in equation (11).


Consider, for example, a portfolio of bonds. Moreover, we consider the number of defaults in this portfolio in one year to be some Poisson random variable with parameter  $\lambda = 5$ , that is, we expect five defaults per year. The same parameter, then, represents the default intensity of the exponentially distributed time between two successive defaults, that is,  $\tau \sim Exp(5)$ , so that on average, we have to wait  $E(\tau) = 1 / 5$  of a year or 2.4 months. For example, the probability of less than three months (i.e.,  $1 / 4$  of a year) between two successive defaults is given by

$$
P (\tau \leq 0. 2 5) = 1 - e^{- 5. 0. 2 5} = 0. 7 1 3 5
$$ or roughly  $71\%$ . Now, the probability of no default in any given year is then


$$
P (\tau > 1) = e^{- 5. 1} = 0. 0 0 6 7
$$ or  $0.67\%$ .


# RECTANGULAR DISTRIBUTION

The simplest continuous distribution we are going to introduce is the rectangular distribution. Often, it is used to generate simulations of random outcomes of experiments via transformation. If a random variable  $X$  is rectangular distributed, we denote this by  $X \sim \text{Re}(a, b)$  where  $a$  and  $b$  are the parameters of the distribution.

The support is on the real interval  $[a, b]$ . The density function is given by

$$ f (x) = \left\{ \begin{array}{c c} \frac{1}{b - a}, & a \leq x \leq b \\ 0 & x \notin [ a, b ] \end{array} \right. \tag {13}
$$

We see that this density function is always constant, either zero or between the bounds  $a$  and  $b$ , equal to the inverse of the interval width. Figure 9 displays the density function (13) for some general parameters  $a$  and  $b$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/02a268d871af0ea5dad5fa8a69c5cd8eff37adef14b0485e14dd6b866d8f37ae.jpg)
Figure 9 Density Function of a  $Re(a,b)$  Distribution

Through integration, the distribution function and the variance is a function of the form

$$
F (x) = \left\{ \begin{array}{c c} 0 & x <   a \\ \frac{1}{b - a} & a \leq x \leq b \\ 1 & x > b \end{array} \right. \tag {14}
$$

The mean is equal to

$$
E (X) = \frac{a + b}{2}
$$

$$
\operatorname{Va r} (X) = \frac{(b - a)^{2}}{1 2}
$$

In Figure 10, we have the distribution function given by equation (14) with some general parameters  $a$  and  $b$ . By analyzing the plot, we can see that the distribution function is not differentiable at  $a$  or  $b$ , since the derivatives of  $F$  do not exist for these values. At any other real value  $x$ , the derivative exists (being 0) and is continuous. We say in the latter case that  $f$  is smooth there.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/70423002af0ce1425bff447268c733c78105b4ab86989f5b16954704e65c35cc.jpg)
Figure 10 Distribution Function of a  $Re(a,b)$  Distribution

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/0b771c41e16346f08cb1d131370d814c021ba73f3d7f6333c3705b8d0f10d13b.jpg)
Figure 11 Density Function of a Gamma Distribution  $Ga(\lambda, b)$


# GAMMA DISTRIBUTION

Next we introduce the gamma distribution for positive, real-valued random variables. Characterized by two parameters,  $\lambda$  and  $c$ , this distribution class embraces several special cases. It is skewed to the right with support on the positive real line. We denote that a random variable  $X$  is gamma distributed with parameter  $\lambda$  and  $c$  by writing  $X \sim Ga(\lambda, c)$  where  $\lambda$  and  $c$  are positive real numbers.

The density function is given by

$$ f (x) = \left\{ \begin{array}{c c} \frac{\lambda (\lambda x)^{c - 1} \exp \{- \lambda x \}}{\Gamma (c)}, & x > 0 \\ 0 & x \leq 0 \end{array} \right. \tag {15}
$$ with gamma function  $\Gamma$ . A plot of the density function from equation (15) is provided in


Figure 11. The distribution function is

$$
F (x) = \left\{ \begin{array}{c c} 0 & x <   0 \\ \int^{\lambda x} u^{c - 1} e^{- u} d u \\ \frac{0}{b^{c} \Gamma (c)}, & x \geq 0 \end{array} \right.
$$

The mean is

$$
E (X) = \frac{c}{\lambda}
$$ with variance


$$
V a r (X) = \frac{c}{\lambda^{2}}
$$

# Erlang Distribution

A special case is the Erlang distribution, which arises for natural number values of the parameter  $c$ , that is,  $c \in \mathbb{N}$ . The intuition behind it is as follows. Suppose we have  $c$  exponential random variables with the same parameter  $\lambda$ , that is,  $X_{1}, X_{2}, \ldots, X_{c} \sim Exp(\lambda)$  all being independent of each other. Then the sum of these

$$
S = \sum_{i = 1}^{c} X_{i}
$$ is distributed  $G a(\lambda, c)$  such that the resulting distribution function is

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/89b00dc6c617e7166ccfaec40eab079da59dd022364a5e128f15b8efaac1cf14.jpg)
Figure 12 Density Function of a Beta Distribution  $Be(c, d)$


$$
F (s) = \left\{ \begin{array}{c c} 0 & s <   0 \\ 1 - e^{- \lambda s} \sum_{i = 1}^{c - 1} \frac{(\lambda s)^{i}}{i !}, & s \geq 0 \end{array} \right.
$$

So, when we add the identically  $Exp(\lambda)$  distributed interarrival times until the  $c$  th default, for example, the resulting combined waiting time is Erlang distributed with parameters  $c$  and  $\lambda$ .

# BETA DISTRIBUTION

The beta distribution is characterized by the two parameters  $c$  and  $d$  that are any positive real numbers. We abbreviate this distribution by  $Be(c, d)$ . It has a density function with support on the interval [0,1], that is, only for  $x \in [0,1]$  does the density function assume positive values. In the context of credit risk modeling, it commonly serves as an approximation for generating random defaults when the true underlying probabilities of default of certain companies are unknown.

The density function is defined by

$$ f (x) = \left\{ \begin{array}{c c} \frac{1}{B (c , d)} x^{c - 1} (1 - x)^{d - 1}, & 0 \leq x \leq 1 \\ 0 & \text{el se} \end{array} \right.
$$ where  $B(c,d)$  denotes the beta function with parameters  $c$  and  $d$ . The density function may assume various different shapes depending on  $c$  and  $d$ . For a few exemplary values, we present the plots in Figure 12. As we can see, for  $c = d$ , the density function is symmetric about  $x = 0.5$ .


# LOG-NORMAL DISTRIBUTION

Another important distribution in finance is the log-normal distribution. It is connected to the normal distribution via the following relationship. Let  $Y$  be a normal random variable with mean  $\mu$  and variance  $\sigma^2$ . Then the random variable

$$
X = e^{\Upsilon}
$$ is log-normally distributed with parameters  $\mu$  and  $\sigma^2$ . In brief, we denote this distribution by  $X \sim Ln(\mu, \sigma^2)$ .


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/04c5b4291d70e1028e16c3102ac883e3a2825044a5a35cfef087172b373ef8b3.jpg)
Figure 13 Density Function of the Log-Normal Distribution for Various Values of  $\mu$  and  $\sigma^2$

Since the exponential function  $e^{Y} = \exp(Y)$  only yields positive values, the support of the log-normal distribution is on the positive half of the real line only, as will be seen by its density function given by

$$ f (x) = \left\{ \begin{array}{c c} \frac{1}{x \sigma \sqrt{2 \pi}} e^{\frac{(\ln x - \mu)^{2}}{2 \sigma^{2}}}, & x > 0 \\ 0 & \text{el se} \end{array} \right. \tag {16}
$$ which looks strikingly similar to the normal density function given by (2). Figure 13 depicts the density function for several parameter values.


This density function results in the log-normal distribution function

$$
F (x) = \Phi \left(\frac{\ln x - \mu}{\sigma}\right)
$$ where  $\Phi (\cdot)$  is the distribution function of the standard normal distribution. (This is the result of the one-to-one relationship between the values of a log-normal and a standard normal random variable.) A plot of the distribution function for different parameter values can be found in Figure 14.


Mean and variance of a log-normal random variable are

$$
E (X) = e^{\left(\mu + \sigma^{2} / 2\right)} \tag {17}
$$ and


$$
\operatorname{Va r} (X) = e^{\sigma^{2}} \left(e^{\sigma^{2}} - 1\right) e^{2 \mu} \tag {18}
$$

# Application to Modeling Asset Returns

The reason for the popularity of the log-normal distribution is that logarithmic asset returns  $r$  have been historically modeled as normally distributed such that the related asset prices are modeled by a log-normal distribution. That is, let  $P_{t}$  denote today's asset price and, furthermore, let the daily return  $r$  be  $N(\mu, \sigma^2)$ . Then in a simplified fashion, tomorrow's price is given by  $P_{t+1} = P_t \cdot e^r$  while the percentage change between the two prices,  $e^r$ , is log-normally distributed, that is,  $Ln(\mu, \sigma^2)$ .

The log-normal distribution is closed under special operations as well. If we let the  $n$ random variables  $X_{1},\ldots ,X_{n}$  be log-normally distributed each with parameters  $\mu$  and  $\sigma^2$  and uninfluenced by each other, then multiplying all of these and taking the nth root we have that

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/36960c77ac0693cd966a9d71b64efdc0f6779d33f72ccd58433857822b88feca.jpg)
Figure 14 Distribution Function of the Log-Normal Distribution for Various Parameter Values  $\mu$  and  $\sigma^2$


$$
\sqrt [ n ]{\prod_{i = 1}^{n} X_{i}} \sim L n (\mu , \sigma^{2})
$$ where the product sign is defined as


$$
\prod_{i = 1}^{n} X_{i} \equiv X_{1} \times X_{2} \times \dots \times X_{n}
$$

As an example, we consider a very simplified stock price model. Let  S = \100  be today's stock price of some company. We model tomorrow's price  S_{1}  as driven by the 1-day dynamic  X  from the previous example of the normal distribution. In particular, the model is

$$
S_{1} = S_{0} \cdot e^{X}
$$

By some slight manipulation of the above equation, we see that the ratio of tomorrow's price over today's price


$$
\frac{S_{1}}{S_{0}} = e^{X}
$$ follows a log-normal distribution with parameters  $\mu$  and  $\sigma$ , that is,  $S_{1} / S_{0} \sim LN(\mu, \sigma^{2})$ . We may now be interested in the probability that tomorrow's price is greater than 120; that is,


$$
\begin{array}{l} P \left(S_{1} > 1 2 0\right) = P \left(S_{0} e^{X} > 1 2 0\right) \\ = P (1 0 0 \cdot e^{X} > 1 2 0) \\ \end{array}
$$

This corresponds to

$$
\begin{array}{l} P \left(\frac{S_{1}}{S_{0}} > \frac{1 2 0}{S_{0}}\right) = P \left(e^{X} > 1. 2 0\right) \\ = 1 - P \left(e^{X} \leq 1. 2 0\right) \\ = 1 - F (1. 2) \\ = 1 - 0. 8 1 9 0 = 0. 1 8 1 0 \\ \end{array}
$$ where in the third equation on the right-hand side, we have applied the log-normal cumulative probability distribution function F. So, in roughly 18\% of the scenarios, tomorrow's stock price S_{1} will exceed the price of today, S_{0} = \100,


by at least  $20\%$ . From equation (17), the mean of the ratio is

$$
E \left(\frac{S_{1}}{S_{0}}\right) = \mu_{S_{1} / S_{0}} = e^{0 + \frac{0 . 2}{2}} = 1. 1 0 5 2
$$ implying that we have to expect tomorrow's stock price to be roughly  $10\%$  greater than today, even though the dynamic  $X$  itself has an expected value of 0. Finally, equation (18) yields the variance


$$
V a r \left(\frac{S_{1}}{S_{0}}\right) = \sigma_{S_{1 / S_{0}}}^{2} = e^{0. 2} (e^{0. 2} - 1) = 0. 2 7 0 4
$$ which is only slightly larger than that of the dynamic  $X$  itself.


The statistical concepts learned to this point can be used for pricing certain types of derivative instruments such as the Black-Scholes option pricing model.

# KEY POINTS

- The more commonly used distributions with appealing statistical properties that are used in finance are the normal distribution, the chi-square distribution, the Student's  $t$ -distribution, the Fisher's  $F$ -distribution, the exponential distribution, the gamma, the beta distribution, and the log-normal distribution.
- The normal distribution is probably the most famous probability distribution. Its popularity is credited to the fact that it serves as the distribution of many random sums of random variables. Moreover, it serves as the origin for many other probability distributions with appealing properties.
- The empirical rule is helpful in assessing how the data of most samples are dispersed even if we do not know the underlying distribution. The theoretical counterpart, the Chebychev inequality, provides limits for the dispersion of any probability distribution whose variance we know.

- Logarithmic returns in contrast to percentage returns is the most commonly used method to express changes of asset prices. The reason for the widespread use of returns computed in terms of logarithms lies in the simple mathematical tractability of their form. Moreover, their intuitive appeal results from the fact that they can be understood as the relative price changes obtained from constant trading.
- The default intensity finds extended use in financial models considering stochastic default such as the default of some bond in a bond portfolio. It expresses the probability of defaulting within the next unit of time interval as we let the length of this interval approach zero.
- The interarrival time is the random variable associated with the time between two successive random events. For example, for a bond portfolio manager it is of interest to model the time between some default in the portfolio and the next default. Commonly, the interarrival time is modeled as an exponential random variable.

# NOTES

1. There exist generalizations such that the distributions need no longer be identical. However, this is beyond the scope of this entry.
2. For values near 0, the logarithmic return  $X$  is virtually equal to the multiplicative return  $R$ . Rounding to two decimals, they are both equal to 0.01 here.
3. For some computer software, the probability will be given as 0.5 due to rounding.

# REFERENCE

Evans, M., Hastings, N., and Peacock, B. (2000). Statistical Distributions, 3rd ed. New York: Wiley.

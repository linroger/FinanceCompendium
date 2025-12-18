---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: The Lognormal Distribution
linter-yaml-title-alias: The Lognormal Distribution
---

# The Lognormal Distribution

It is common in option pricing to assume the lognormality of asset prices. The purpose of this chapter is to explain the meaning of this assumption. We first review the normal distribution, which gives rise to the lognormal distribution. We then define lognormality and illustrate some common calculations based on lognormality. These calculations result in terms that look much like the parts of the Black-Scholes formula. Finally, we examine stock returns to see whether stock price data seem consistent with lognormality.

We will find that stock prices are not exactly lognormal. Nevertheless, the lognormal assumption is the basis for many frequently used pricing formulas. Moreover, it is difficult to understand more realistic models used in practice without first understanding models based on the lognormal distribution.

# I. THE NORMAL DISTRIBUTION

A random variable,  $\tilde{x}$ , obeys the normal distribution—or is normally distributed—if the probability that  $\tilde{x}$  takes on a particular value is described by the normal density function, which we represent by  $\phi$ . The formula for the normal density function is

$$
\phi (x; \mu , \sigma) \equiv \frac {1}{\sigma \sqrt {2 \pi}} e ^ {- \frac {1}{2} \left(\frac {x - \mu}{\sigma}\right) ^ {2}} \tag {1}
$$

Notice in equation (1) that in order to calculate a value for  $\phi$ , in addition to  $x$ , you need to supply two numbers: a mean,  $\mu$ , and a standard deviation,  $\sigma$ . For this reason, the normal distribution is said to be a two-parameter distribution; it is completely described by the mean and the standard deviation.

Figure 1 graphs equation (1) for two different standard deviations (1 and 1.5), and for the same mean (0). The normal density with  $\mu = 0$  and  $\sigma = 1$  is called the standard normal density. When working with the standard normal density, we will write  $\phi(x)$ , without a mean and standard deviation.

# FIGURE I

Two normal densities with mean 0, one with  $\sigma = 1$  (the standard normal), the other with  $\sigma = 1.5$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/333a26e29958236fa8e5497a46bb5c80941b9bade9396ffa1670294b950733ed.jpg)

Compared to the standard normal density, the normal density with  $\sigma = 1.5$  assigns lower probabilities to values of  $x$  close to 0, and greater probabilities for  $x$  farther from 0. Increasing the variance spreads out the distribution. The mean locates the center of the distribution, and the standard deviation tells you how spread out it is. The normal density is symmetric about the mean,  $\mu$ , meaning that

$$
\phi (\mu + a; \mu , \sigma) = \phi (\mu - a; \mu , \sigma)
$$

If a random variable  $x$  is normally distributed with mean  $\mu$  and standard deviation  $\sigma$ , we write this as

$$ x \sim \mathcal {N} (\mu , \sigma^ {2})
$$

We will use  $z$  to represent a random variable that has the standard normal distribution:

$$ z \sim \mathcal {N} (0, 1)
$$

We can use the normal distribution to compute the probability of different events, but we have to be careful about what we mean by an event. Since the distribution is continuous, there are an infinite number of events that can occur when we randomly draw a number from the distribution. (This is unlike the binomial distribution, in which an event can have only one of two values.) The probability of any particular number being drawn from the normal distribution is zero. Thus, we use the normal distribution to describe the probability that a number randomly selected from the normal distribution will be in a particular range.

We could ask, for example, what is the probability that if we draw a number from the standard normal distribution, it will be less than some number  $a$ ? The area under the curve to the left of  $a$ , denoted  $N(a)$ , equals this probability,  $\operatorname{Pr}(z < a)$ . We call  $N(a)$  the cumulative normal distribution function. The integral from  $-\infty$  to  $a$  is the area under the density over that range; it is cumulative in that it sums the probabilities from  $-\infty$  to  $a$ .

# FIGURE 2

Top panel: Area under the normal curve to the left of 0.3. Bottom panel: Cumulative normal distribution. The height at  $x = 0.3$ , given by  $N(0.3)$ , is 0.6179.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/172900039466dedd20de5f48a04dbd76c34f26b15a7a2c755efa5c20ec814b7f.jpg)

Standard Normal Density,  $\phi (z)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/f232aad60f74cb25c7d2dc56b601064c43f29d5a708e13fc4257bf0f5f7705cf.jpg)

Standard Normal Distribution,  $\mathrm{N}(z)$

Mathematically, this is accomplished by integrating the standard normal density, equation (1) with  $\mu = 0$  and  $\sigma = 1$ , from  $-\infty$  to  $a$ :

$$
\boxed {N (a) \equiv \int_ {- \infty} ^ {a} \frac {1}{\sqrt {2 \pi}} e ^ {- \frac {1}{2} x ^ {2}} d x} \tag {2}
$$

As an example,  $N(0.3)$  is shown in Figure 2. In the top panel,  $N(0.3)$  is the area under the normal density curve between  $-\infty$  and 0.3. In the bottom panel,  $N(0.3)$  is a point on the cumulative distribution. The range  $-\infty$  to  $+\infty$  covers all possible outcomes for a single draw from a normal distribution. The probability that a randomly drawn number will be less than  $\infty$  is 1; hence,  $N(\infty) = 1$ . As you may already have surmised, the  $N(a)$  defined above is the same  $N(\cdot)$  used in computing the Black-Scholes formula.

There is no simple formula for the cumulative normal distribution function, equation (2), but it is a frequent-enough calculation that modern spreadsheets have it as a built-in function. (In Excel the function is called NormSDist.) The area under the normal density from  $-\infty$  to 0.3 is 0.6179. Thus, if you draw a number from the standard normal distribution,  $61.79\%$  of the time the number you draw will be less than 0.3.

Suppose that we wish to know the probability that a number drawn from the standard normal distribution will be between  $a$  and  $-a$ . We have

$$
\Pr (z <   - a) = N (- a)
$$

$$
\Pr (z <   a) = N (a)
$$

These relationships imply that

$$
\Pr (- a <   z <   a) = N (a) - N (- a)
$$

The area under the curve between  $-a$  and  $a$  equals the difference between the area below  $a$  and the area below  $-a$ . Since the standard normal distribution is symmetric about 0, the area under the curve above  $a$  equals the area under the curve below  $-a$ . Thus,

$$
N (- a) = 1 - N (a) \tag {3}
$$

Example 1. The probability that a number drawn from the standard normal distribution will be between  $-0.3$  and  $+0.3$  is

$$
\begin{array}{l} \Pr (- 0. 3 <   z <   0. 3) = N (0. 3) - N (- 0. 3) \\ = N (0. 3) - [ 1 - N (0. 3) ] \\ = 2 \times 0. 6 1 7 9 - 1 = 0. 2 3 5 8 \\ \end{array}
$$

Finally, if a variable obeys the standard normal distribution, it is extremely unlikely to take on large positive or negative values. The probability that a single draw will be below  $-3$  or above 3 is only 0.0027. If you drew from a standard normal distribution every day, you would draw above 3 or below  $-3$  only about once a year. The probability of being below  $-4$  or above 4 is 0.000063, which, with daily draws, would occur on average about once every 43.25 years.

# Converting a Normal Random Variable to Standard Normal

If we have an arbitrary normal random variable, it is easy to convert it to standard normal. Suppose

$$ x \sim \mathcal {N} (\mu , \sigma^ {2})
$$

Then we can create a standard normal random variable,  $z$ , by subtracting the mean and dividing by the standard deviation:

$$ z = \frac {x - \mu}{\sigma} \tag {4}
$$

Using this fact, we can compute the probability that  $x$  is less than some number  $b$ :

$$
\begin{array}{l} \Pr (x <   b) = \Pr \left(\frac {x - \mu}{\sigma} <   \frac {b - \mu}{\sigma}\right) \tag {5} \\ = N \left(\frac {b - \mu}{\sigma}\right) \\ \end{array}
$$

Using equation (3), the complementary probability is

$$
\begin{array}{l} \Pr (x > b) = 1 - \Pr (x <   b) \\ = 1 - N \left(\frac {b - \mu}{\sigma}\right) \tag {6} \\ = N \left(\frac {\mu - b}{\sigma}\right) \\ \end{array}
$$

This result will be helpful in interpreting the Black-Scholes formula.

If we have a standard normal random variable  $z$ , we can generate a variable  $x \sim \mathcal{N}(\mu, \sigma^2)$ , using the following:

$$ x = \mu + \sigma z \tag {7}
$$

Example 2. Suppose that  $x \sim \mathcal{N}(3, 25)$  and  $z \sim \mathcal{N}(0, 1)$ . Then

$$
\frac {x - 3}{5} \sim \mathcal {N} (0, 1)
$$ and


$$

3 + 5 \times z \sim \mathcal {N} (3, 2 5)

$$

# Sums of Normal Random Variables

Suppose we have  $n$  jointly distributed random variables  $x_{i}, i = 1, \dots, n$ , with mean and variance  $\operatorname{E}(x_i) = \mu_i$ ,  $\operatorname{Var}(x_i) = \sigma_i^2$ , and covariance  $\operatorname{Cov}(x_i, x_j) = \sigma_{ij}$ . (The covariance between two random variables measures their tendency to move together. We can also write the covariance in terms of  $\rho_{ij}$ , the correlation between  $x_{i}$  and  $x_{j}$ :  $\sigma_{ij} = \rho_{ij}\sigma_i\sigma_j$ .) Then the weighted sum of the  $n$  random variables has mean

$$

\mathrm {E} \left(\sum_ {i = 1} ^ {n} \omega_ {i} x _ {i}\right) = \sum_ {i = 1} ^ {n} \omega_ {i} \mu_ {i} \tag {8}

$$ and variance


$$

\operatorname {V a r} \left(\sum_ {i = 1} ^ {n} \omega_ {i} x _ {i}\right) = \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \omega_ {i} \omega_ {j} \sigma_ {i j} \tag {9}

$$ where  $\omega_{i}$  and  $\omega_{j}$  represent arbitrary weights. These formulas for the mean and variance are true for any distribution of the  $x_{i}$ .

In general, the distribution of a sum of random variables is different from the distribution of the individual random variables. However, the normal distribution is an example of a stable distribution. A distribution is stable if sums of random variables have the same distribution as the original random variables. In this case, the sum of jointly-normally distributed random variables is normal. Thus, if  $x_{i}$  are jointly-normally distributed,

$$
\sum_ {i = 1} ^ {n} \omega_ {i} x _ {i} \sim \mathcal {N} \left(\sum_ {i = 1} ^ {n} \omega_ {i} \mu_ {i}, \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \omega_ {i} \omega_ {j} \sigma_ {i j}\right) \tag {10}
$$

A familiar special case of this occurs with the sum of two random variables:

$$ a x _ {1} + b x _ {2} \sim \mathcal {N} \left(a \mu_ {1} + b \mu_ {2}, a ^ {2} \sigma_ {1} ^ {2} + b ^ {2} \sigma_ {2} ^ {2} + 2 a b \rho \sigma_ {1} \sigma_ {2}\right)
$$

The Central Limit Theorem. Why does the normal distribution appear in option pricing (and frequently in other contexts)? The normal distribution is important because it arises naturally when random variables are added. The normal distribution was originally discovered by mathematicians studying series of random events, such as gambling outcomes and observational errors. Suppose, for example, that a surveyor is making observations to draft a map. The measurements will always have some error, and the error will differ from measurement to measurement. Errors can arise from observational error, imprecise use of the instruments, or simply from recording the wrong number. Whatever the reason, the errors will in general be accidental and, hence, uncorrelated. If you were using such error-prone data, you would like to know the statistical distribution of these errors in order to assess the reliability of your conclusions for a given number of observations, and also to decide how many observations to make to achieve a given degree of reliability. It would seem that the nature of the errors would differ depending on who made them, the kind of equipment used, and so forth. The remarkable result is that sums of such errors are approximately normal.

The normal distribution is therefore not just a convenient, aesthetically pleasing distribution, but it arises in nature when outcomes can be characterized as sums of independent random variables with a finite variance. The distribution of such a sum approaches normality. This result is known as the central limit theorem. $^3$

In the context of asset returns, the continuously compounded stock return over a year is the sum of the daily continuously compounded returns. If news and other factors are the shocks that cause asset prices to change, and if these changes are independent, then it is natural to think that longer-period continuously compounded returns are normally distributed. Since the central limit theorem is a theorem about what happens in the limit, sums of just a few random variables may not appear normal. But the normality of continuously compounded returns is a reasonable starting point for thinking about stock returns.

# 2. THE LOGNORMAL DISTRIBUTION

A random variable,  $y$ , is said to be lognormally distributed if  $\ln(y)$  is normally distributed. Put another way, if  $x$  is normally distributed,  $y$  is lognormal if it can be written in either of two equivalent ways:

$$
\ln (y) = x
$$ or


$$ y = e ^ {x}
$$

This last equation is the link between normally distributed continuously compounded returns and lognormality of the stock price.

By definition, the continuously compounded return from 0 to  $t$  is

$$
R (0, t) = \ln \left(S _ {t} / S _ {0}\right) \tag {11}
$$

Suppose  $R(0, t)$  is normally distributed. By exponentiating both sides, we obtain

$$
S _ {t} = S _ {0} e ^ {R (0, t)} \tag {12}
$$

Equation (12) shows that if continuously compounded returns are normally distributed, then the stock price is lognormally distributed. Exponentiation converts the continuously compounded return,  $R(0,t)$ , into one plus the effective total return from 0 to  $t$ ,  $e^{R(0,t)}$ . Notice that because  $S_{t}$  is created by exponentiation of  $R(0,t)$ , a lognormal stock price cannot be negative.

We saw that the sum of normal variables is normal. For this reason, the product of lognormal random variables is lognormal. If  $x_{1}$  and  $x_{2}$  are normal, then  $y_{1} = e^{x_{1}}$  and  $y_{2} = e^{x_{2}}$  are lognormal. The product of  $y_{1}$  and  $y_{2}$  is

$$ y _ {1} \times y _ {2} = e ^ {x _ {1}} \times e ^ {x _ {2}} = e ^ {x _ {1} + x _ {2}}
$$

Since  $x_{1} + x_{2}$  is normal,  $e^{x_1 + x_2}$  is lognormal. Thus, because normality is preserved by addition, lognormality is preserved by multiplication. However, just as the product of normal random variables is not normal, the sum of lognormal random variables is not lognormal.

The binomial model generates a stock price distribution that appears lognormal; this was an example of the central limit theorem. In the binomial model, the continuously compounded stock return is binomially distributed. Sums of binomial random variables approach normality. Thus, in the binomial model, the continuously compounded return approaches normality and the stock price distribution approaches lognormality.

If  $\ln (y)\sim \mathcal{N}(m,v^2)$ , the lognormal density function is given by

$$ g (y; m, v) \equiv \frac {1}{y v \sqrt {2 \pi}} e ^ {- \frac {1}{2} \left(\frac {\ln (y) - m}{v}\right) ^ {2}}
$$

Figure 3 displays three different lognormal densities for various values of  $m$  and  $\nu$ . Notice that the lognormal distribution is nonnegative and skewed to the right. The distribution for which the underlying normal distribution has a high mean (1.5) and low standard deviation (0.2) most resembles the normal distribution. It is still bounded below by zero and skewed to the right. Two of the distributions in Figure 3 are based upon exponentiating the distributions in Figure 1.

We can compute the mean and variance of a lognormally distributed random variable. If  $x \sim \mathcal{N}(m, v^2)$ , then the expected value of  $e^x$  is given by

$$
\boxed {\mathrm {E} \left(e ^ {x}\right) = e ^ {m + \frac {1}{2} v ^ {2}}} \tag {13}
$$

We prove this in Appendix A, but it is intuitive that the mean of the exponentiated variable will be greater than the exponentiated mean of the underlying normal variable. Exponentiation is asymmetric: A positive random draw generates a bigger increase than an identical negative random draw does a decrease. To see this, consider a mean zero binomial random variable that is 0.5 with probability 0.5 and  $-0.5$  with probability 0.5. You can verify that  $e^{0.5} = 1.6487$ . Thus,  $\frac{e^{0.5} + e^{-0.5}}{2} = \frac{1.6487 + 0.6065}{2} = 1.128$ , which is obviously greater than  $e^0 = 1$ .

# FIGURE 3

Graph of the lognormal density for  $y$ , where  $\ln(y) \sim \mathcal{N}(0,1)$ ,  $\ln(y) \sim \mathcal{N}(0,1.5)$ , and  $\ln(y) \sim \mathcal{N}(1.5,0.2)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/ea015e6523e9b60bdf569308187e0290cbeffc071c6408d2fce3bcb1449bc94c.jpg)

Probability Density

This is a specific example of Jensen's inequality: The expectation of a function of a random variable is not generally equal to the function evaluated at the expectation of the random variable. In the context of this example,  $\mathrm{E}(e^x) \neq e^{\mathrm{E}(x)}$ . Since the exponential function is convex, Jensen's inequality implies that  $\mathrm{E}(e^x) > e^{\mathrm{E}(x)}$ . Derivatives theory is replete with examples of Jensen's inequality.

The variance of a lognormal random variable is

$$
\operatorname {V a r} \left(e ^ {x}\right) = e ^ {2 m + v ^ {2}} \left(e ^ {v ^ {2}} - 1\right) \tag {14}
$$

While we can compute the variance of a lognormal variable, it is much more convenient to use only the variance of  $\ln (y)$ , which is normal.

# 3. A LOGNORMAL MODEL OF STOCK PRICES

How do we implement lognormality as a model for the stock price? If the stock price  $S_{t}$  is lognormal, we can write

$$
\frac {S _ {t}}{S _ {0}} = e ^ {x}
$$ where  $x$ , the continuously compounded return from 0 to  $t$ , is normally distributed. We want to find a specification for  $x$  that provides a useful way to think about stock prices.


Let the continuously compounded return from time  $t$  to some later time  $s$  be  $R(t, s)$ . Suppose we have times  $t_0 < t_1 < t_2$ . By the definition of the continuously compounded return, we have

$$

S _ {t _ {1}} = S _ {t _ {0}} e ^ {R (t _ {0}, t _ {1})}

$$

$$

S _ {t _ {2}} = S _ {t _ {1}} e ^ {R \left(t _ {1}, t _ {2}\right)}

$$

The stock price at  $t_2$  can therefore be expressed as

$$

\begin{array}{l} S _ {t _ {2}} = S _ {t _ {1}} e ^ {R (t _ {1}, t _ {2})} \\ = S _ {t _ {0}} e ^ {R (t _ {0}, t _ {1})} e ^ {R (t _ {1}, t _ {2})} \\ = S _ {t _ {0}} e ^ {R \left(t _ {0}, t _ {1}\right) + R \left(t _ {1}, t _ {2}\right)} \\ \end{array}

$$

Thus, the continuously compounded return from  $t_0$  to  $t_2$ ,  $R(t_0, t_2)$ , is the sum of the continuously compounded returns over the shorter periods:

$$

R \left(t _ {0}, t _ {2}\right) = R \left(t _ {0}, t _ {1}\right) + R \left(t _ {1}, t _ {2}\right) \tag {15}

$$

Example 3. Suppose the stock price is initially \$100 and the continuously compounded return on a stock is 15\% one year and 3\% the next year. The price after 1 year is $100e^0.15 = $116.1834, and after 2 years is \$116.1834e^{0.03} = 119.722. This equals 100e^{0.15+0.03} = 100e^{0.18}.

Equation (15), together with the assumption that returns are independent and identically distributed over time, implies that the mean and variance of returns over different horizons are proportional to the length of the horizon. Take the period of time from 0 to  $T$  and carve it up into  $n$  intervals of length  $h$ , where  $h = T / n$ . We can then write the continuously compounded return from 0 to  $T$  as the sum of the  $n$  returns over the shorter periods:

$$

\begin{array}{l} R (0, T) = R (0, h) + R (h, 2 h) + \dots + R [ (n - 1) h, T ] \\ = \sum_ {i = 1} ^ {n} R [ (i - 1) h, i h ] \\ \end{array}

$$

Let  $\operatorname{E}(R[(i - 1)h,ih]) = \alpha_h$  and  $\operatorname{Var}(R[(i - 1)h,ih]) = \sigma_h^2$ . Then over the entire period, the mean and variance are

$$

\operatorname {E} [ R (0, T) ] = n \alpha_ {h} \tag {16}

$$

$$

\operatorname {V a r} [ R (0, T) ] = n \sigma_ {h} ^ {2} \tag {17}

$$

Thus, if returns are independent and identically distributed, the mean and variance of the continuously compounded returns are proportional to time. This result corresponds with the intuition that both the mean and variance of the return should be greater over long horizons than over short horizons.

Now we have enough background to present an explicit lognormal model of the stock price. Generally we will let  $t$  be denominated in years and  $\alpha$  and  $\sigma$  be the annual mean and standard deviation, with  $\delta$  the annual dividend yield on the stock. We will assume that the continuously compounded capital gain from 0 to  $t$ ,  $\ln (S_t / S_0)$ , is normally distributed with mean  $(\alpha - \delta - 0.5\sigma^2)t$  and variance  $\sigma^2 t$ :

$$

\ln \left(S _ {t} / S _ {0}\right) \sim \mathcal {N} [ (\alpha - \delta - 0. 5 \sigma^ {2}) t, \sigma^ {2} t ] \tag {18}

$$

This gives us two equivalent ways to write an expression for the stock price.

First, recall from equation (7) that we can convert a standard normal random variable,  $Z$ , into one with an arbitrary mean or variance by multiplying by the standard deviation and adding the mean. We can write

$$

\ln \left(S _ {t} / S _ {0}\right) = (\alpha - \delta - \frac {1}{2} \sigma^ {2}) t + \sigma \sqrt {t} Z \tag {19}

$$

Second, we can exponentiate equation (19) to obtain an expression for the stock price:

$$

\boxed {S _ {t} = S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) t + \sigma \sqrt {t} Z}} \tag {20}

$$

We will use equation (20) often in what follows.

You may be wondering how to interpret equations (18), (19), and (20). The subtraction of the dividend yield,  $\delta$ , is necessary since, other things equal, a higher dividend yield means a lower future stock price. But why do we subtract  $\frac{1}{2}\sigma^2$  in the mean?

To understand equation (20) it helps to compute the expected stock price. We can do this by breaking up the right-hand side of equation (20) into two terms, one of which contains the random variable  $Z$  and the other of which does not:

$$

S _ {t} = S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) t} e ^ {\sigma \sqrt {t} Z}

$$

Next, evaluate the expectation of  $e^{\sigma \sqrt{i} Z}$  using equation (13). Since  $z \sim \mathcal{N}(0, 1)$ , we have

$$

\mathrm {E} \left(e ^ {\sigma \sqrt {t} Z}\right) = e ^ {\frac {1}{2} \sigma^ {2} t}

$$

This gives us

$$

\mathrm {E} \left(S _ {t}\right) = S _ {0} e ^ {\left(\alpha - \delta - \frac {1}{2} \sigma^ {2}\right) t} e ^ {\frac {1}{2} \sigma^ {2} t} = S _ {0} e ^ {\left(\alpha - \delta\right) t} \tag {21}

$$

We therefore have

$$

\ln \mathrm {E} \left(\frac {S _ {t}}{S _ {0}}\right) = (\alpha - \delta) t \tag {22}

$$

The expression  $\alpha - \delta$  is the continuously compounded expected rate of appreciation on the stock. If we did not subtract  $\frac{1}{2}\sigma^2$  in equation (20), then the expected rate of appreciation would be  $\alpha - \delta + \frac{1}{2}\sigma^2$ . This is fine (we can define things as we like), except that it renders  $\alpha$  difficult to interpret.

Thus, the issue is purely one of creating an expression where it is easy to interpret the parameters. If we want  $\alpha - \delta$  to have an interpretation as the continuously compounded expected capital gain on the stock, then because of equation (13), we need to subtract  $\frac{1}{2}\sigma^2$ .

The median stock price—the value such that  $50\%$  of the time prices will be above or below that value—is obtained by setting  $Z = 0$  in equation (20). The median is thus

$$

S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) t} = \mathrm {E} (S _ {t}) e ^ {- \frac {1}{2} \sigma^ {2} t}

$$

This equation demonstrates that the median is below the mean. More than  $50\%$  of the time, a lognormally distributed stock will earn below its expected return. Perhaps more surprisingly, if  $\sigma$  is large, a lognormally distributed stock will lose money ( $S_{t} < S_{0}$ ) more than half the time!


Example 4. Suppose that the stock price today is \$100, the expected rate of return on the stock is  $\alpha = 10\% / \text{year}$ , and the standard deviation (volatility) is  $\sigma = 30\% / \text{year}$ . If the stock is lognormally distributed, the continuously compounded 2-year return is  $20\%$  and the 2-year volatility is  $0.30 \times \sqrt{2} = 0.4243$ . Thus, we have

$$

S _ {2} = \$ 100 e ^ {(0. 1 - \frac {1}{2} (0. 3 ^ {2}) \times 2 + \sigma \sqrt {2} Z}

$$

The expected value of  $S_{2}$  is

$$

\mathrm {E} (S _ {2}) = \\mathbb {1} 0 0 e ^ {(0. 1 \times 2)} = \\mathbb {1} 2 2. 1 4

$$

The median stock price is

$$

\$ 100 e ^ {(0. 1 - 0. 5 \times 0. 3 ^ {2}) \times 2} = \$ 1 1 1. 6 3

$$

If the volatility were  $60\%$ , the expected value would still be 122.14, but the median would be

$$

\$ 100 e ^ {(0. 1 - 0. 5 \times 0. 6 ^ {2}) \times 2} = \$ 85. 2 1

$$

Half the time, after 2 years the stock price would be below this value.

We can also define a "one standard deviation move" in the stock price. Since  $z$  has the standard normal distribution, then if  $Z = 1$ , the continuously compounded stock return is the mean plus one standard deviation, and if  $Z = -1$ , the continuously compounded stock return is the mean minus one standard deviation.

Example 5. Using the same assumptions as in Example 4, a one standard deviation move up over 2 years is given by

$$

S _ {2} = \$ 1 0 0 e ^ {(0. 1 - \frac {1}{2} 0. 3 ^ {2}) \times 2 + \sigma \sqrt {2} \times 1} = \$ 1 7 0. 6 2

$$

A one standard deviation move down is given by

$$

S _ {2} = \$ 1 0 0 e ^ {(0. 1 - \frac {1}{2} 0. 3 ^ {2}) \times 2 - \sigma \sqrt {2} \times 1} = \$ 7 3. 0 3

$$

We can think of these prices as logarithmically centered around the mean price of 122.14.

In the three different ways to construct a binomial model, all had up and down stock price moves of the form

$$

S _ {u} = S e ^ {\alpha h + \sigma \sqrt {h}}; \qquad S _ {d} = S e ^ {\alpha h - \sigma \sqrt {h}}

$$ where  $\alpha$  differed for the three models. In all cases, we generated up and down moves by setting  $Z = \pm 1$ . As  $h \to 0$  the three models converge; the effects of the different  $\alpha$ 's in each case are offset by the different risk-neutral probabilities.

# 4. LOGNORMAL PROBABILITY CALCULATIONS

If  $S_{t}$  is lognormally distributed, we can use this fact to compute a number of probabilities and expectations. For example, we can compute the probability that an option will expire in the money, and, given that it expires in the money, the expected stock price. In this section we will present formulas for these calculations.

# Probabilities

If the stock price today is  $S_0$ , what is the probability that  $S_t < K$ , where  $K$  is some arbitrary number? Note that  $S_t < K$  exactly when  $\ln(S_t) < \ln(K)$ . Since  $\ln(S_t)$  is normally distributed, we can just use the normal calculations we developed above. We have

$$
\ln (S _ {t} / S _ {0}) \sim \mathcal {N} [ (\alpha - \delta - 0. 5 \sigma^ {2}) t, \sigma^ {2} t ]
$$ or, equivalently,


$$

\ln \left(S _ {t}\right) \sim \mathcal {N} \left[ \ln \left(S _ {0}\right) + (\alpha - \delta - 0. 5 \sigma^ {2}) t, \sigma^ {2} t \right]

$$

We can create a standard normal number random variable,  $Z$ , by subtracting the mean and dividing by the standard deviation:

$$

Z = \frac {\ln (S _ {t}) - \ln (S _ {0}) - (\alpha - \delta - 0 . 5 \sigma^ {2}) t}{\sigma \sqrt {t}}

$$

We have  $\operatorname*{Pr}(S_t < K) = \operatorname*{Pr}[\ln (S_t) < \ln (K)]$ . Subtracting the mean from both  $\ln (S_t)$  and  $\ln (K)$  and dividing by the standard deviation, we obtain

$$

\Pr (S _ {t} <   K) =

$$

$$

\operatorname * {P r} \left[ \frac {\ln (S _ {t}) - \ln (S _ {0}) - (\alpha - \delta - 0 . 5 \sigma^ {2}) t}{\sigma \sqrt {t}} <   \frac {\ln (K) - \ln (S _ {0}) - (\alpha - \delta - 0 . 5 \sigma^ {2}) t}{\sigma \sqrt {t}} \right]

$$

Since the left-hand side is a standard normal random variable, the probability that  $S_{t} < K$  is

$$

\operatorname * {P r} (S _ {t} <   K) = \operatorname * {P r} \left[ Z <   \frac {\ln (K) - \ln (S _ {0}) - (\alpha - \delta - 0 . 5 \sigma^ {2}) t}{\sigma \sqrt {t}} \right]

$$

Since  $Z\sim \mathcal{N}(0,1)$ $\operatorname *{Pr}(S_t < K)$  is

$$

\operatorname * {P r} (S _ {t} <   K) = N \left[ \frac {\ln (K) - \ln (S _ {0}) - (\alpha - \delta - 0 . 5 \sigma^ {2}) t}{\sigma \sqrt {t}} \right]

$$

This can also be written

$$

\boxed {\operatorname * {P r} \left(S _ {t} <   K\right) = N (- \hat {d} _ {2})} \tag {23}

$$ where  $\hat{d}_2$  is the standard Black-Scholes argument with the risk-free rate,  $r$ , replaced with the actual expected return on the stock,  $\alpha$ . We can also perform the complementary calculation.

We have  $\operatorname*{Pr}(S_t > K) = 1 - \operatorname*{Pr}(S_t < K)$ , so

$$
\Pr \left(S _ {t} > K\right) = N \left(\hat {d} _ {2}\right) \tag {24}
$$

The expression  $N(\hat{d}_2)$  contains the true expected return on the stock,  $\alpha$ . If we replace  $\alpha$  with  $r$ , the risk-free rate in equations (23) and (24), we obtain the risk-neutral probabilities that  $S_t$  is above or below  $K$ . It is exactly these risk-neutral versions of equations (23) and (24) that appear in the Black-Scholes call and put option pricing formulas.

# Lognormal Prediction Intervals

We can now answer questions about future prices, such as "What is the range of prices such that there is a  $95\%$  probability that the stock price will be in that range 1 year from today?" To answer this question, we compute the  $95\%$  prediction intervals for a number of different time horizons.

Suppose we would like to know the prices  $S_{t}^{L}$  and  $S_{t}^{U}$  such that  $\operatorname*{Pr}(S_t < S_t^L) = p / 2$  and  $\operatorname*{Pr}(S_t > S_t^U) = p / 2$ . If the stock price is  $S_0$ , we can generate  $S_{t}^{L}$  and  $S_{t}^{U}$  as follows. We know from equation (23) that

$$
\Pr (S <   S _ {t} ^ {L}) = N (- \hat {d} _ {2})
$$ where


$$

\hat {d} _ {2} = [ \ln (S _ {0} / S _ {t} ^ {L}) + (\alpha - \delta - 0. 5 \sigma^ {2}) t ] / \sigma \sqrt {t}

$$

Thus, we want to find the  $S_{t}^{L}$  such that the probability that  $S_{t}$  is less than  $S_{t}^{L}$  is  $p / 2$ , or

$$ p / 2 = N (- \hat {d} _ {2})
$$

In order to do this, we need to invert the cumulative standard normal distribution function—i.e., ask what number  $\hat{d}_2$  corresponds to a given probability. We can write this inverse cumulative normal probability function as  $N^{-1}(p)$ . Then by definition,  $N^{-1}[N(x)] = x$ . Fortunately, this is a standard calculation, and Excel and other spreadsheets contain a built-in function that does this. (In Excel it is NormSInv().) We have

$$
N ^ {- 1} (p / 2) = - \hat {d} _ {2}
$$

Solving explicitly for  $S_{t}^{L}$  gives us

$$
S _ {t} ^ {L} = S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) t + \sigma \sqrt {t} N ^ {- 1} (p / 2)}
$$

Similarly, we can solve for the upper bound  $S_t^U$  such that

$$
N ^ {- 1} (1 - p / 2) = - [ \ln (S _ {0} / S _ {t} ^ {U}) + (\alpha - \delta - 0. 5 \sigma^ {2}) t ] / \sigma \sqrt {t}
$$

This gives us

$$
S _ {t} ^ {U} = S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) t + \sigma \sqrt {t} N ^ {- 1} (1 - p / 2)}
$$

Thus, to generate a prediction interval for a lognormal price, we need only find the values of  $z$  corresponding to the same prediction interval for a  $\mathcal{N}(0,1)$  variable, and then substitute those values into the expression for the lognormal price.

Example 6. If  $p = 5\%$ ,  $N^{-1}(0.025) = -1.96$  and  $N^{-1}(0.975) = 1.96$ . That is, there is a  $5\%$  probability that a standard normal random variable will be outside the range (-1.96, 1.96). Thus, if  $S_0 = \$100$ ,  $t = 2$ ,  $\alpha = 0.10$ ,  $\delta = 0$ , and  $\sigma = 0.30$ , we have

$$
\begin{array}{l} S _ {t} ^ {L} = S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) t - \sigma \sqrt {t} 1. 9 6} \\ = S _ {0} e ^ {(0. 1 0 - \frac {1}{2} 0. 3 ^ {2}) \times 2 - 0. 3 \times \sqrt {2} \times 1. 9 6} \\ = \$ 48.599 \\ \end{array}
$$

Similarly, for  $S_{t}^{U}$  we have

$$
\begin{array}{l} S _ {t} ^ {U} = S _ {0} e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) t + \sigma \sqrt {t} 1. 9 6} \\ = \$ 2 5 6. 4 0 \\ \end{array}
$$

Example 7. Suppose we have a lognormally distributed 50 stock with a 15\% continuously compounded expected rate of return, a zero dividend yield, and a 30\% volatility. Consider a horizon of 1 month (t = \frac{1}{12}). The monthly continuously compounded mean return is

$$
\begin{array}{l} (\alpha - \delta - \frac {1}{2} \sigma^ {2}) t = \left(0. 1 5 - 0 - \frac {1}{2} 0. 3 ^ {2}\right) \frac {1}{1 2} \\ = 0. 0 0 8 7 5 \\ \end{array}
$$ and the monthly standard deviation is


$$

\begin{array}{l} \sigma \sqrt {t} = 0. 3 \sqrt {\frac {1}{1 2}} \\ = 0. 0 8 6 6 \\ \end{array}

$$

For the standard normal distribution, there is a  $68.27\%$  probability of drawing a number in the interval  $(-1, +1)$ , and a  $95.45\%$  probability of drawing a number in the interval  $(-2, +2)$ . Thus, over a 1-month horizon, there is a  $68.27\%$  chance that the continuously compounded return on the stock will be  $0.00875 \pm 0.0866$  (i.e., the return is between  $-7.88\%$  and  $9.54\%$ ), and a  $95.45\%$  chance that the return will be  $0.00875 \pm 2 \times 0.0866$  (the return will be between  $-16.44\%$  and  $18.19\%$ ):

$$

\begin{array}{l} - 0.0788 \leq \ln \left(\frac {S _ {\text {one month}}}{50}\right) \leq 0.0954 \quad \mathrm{prob} = 68.27 \% \\ - 0.1644 \leq \ln \left(\frac {S _ {\text {one month}}}{50}\right) \leq 0.1819 \quad \mathrm{prob} = 95.45 \% \\ \end{array}

$$

Equivalently, by exponentiating all of these terms (for example,  $\50e^{-0.0788} = \$ 46.22 ,  $e^{\ln \left(\frac{S_{\text{one month}}}{50}\right)} = S_{\text{one month}} / 50\$ , etc.), we can express the prediction interval in terms of prices

$$

\$ 46.22 \leq S _ {\text {one month}} \leq \$ 55.06 \quad \text {prob} = 68.27 \%

$$

$$

\$ 42.35 \leq S_{\text{one month}} \leq \$ 62.09 \quad \text{prob} = 95.45 \%

$$

Using this same logic, we can compute one standard deviation and two standard deviation intervals over different horizons. This will give us  $68.27\%$  and  $95.45\%$  prediction intervals

TABLEI
Stock prices (\$) corresponding to  $-2, -1, 1,$  and 2 standard deviations from the initial stock price of 50.

<table><tr><td>Horizon</td><td>Fraction of a Year</td><td>-2σ</td><td>-1σ</td><td>+1σ</td><td>+2σ</td></tr><tr><td>1 Day</td><td>0.0027</td><td>48.47</td><td>49.24</td><td>50.81</td><td>51.61</td></tr><tr><td>1 Month</td><td>0.0849</td><td>42.35</td><td>46.22</td><td>55.06</td><td>60.09</td></tr><tr><td>1 Year</td><td>1</td><td>30.48</td><td>41.14</td><td>74.97</td><td>101.19</td></tr><tr><td>2 Years</td><td>2</td><td>26.40</td><td>40.36</td><td>94.28</td><td>144.11</td></tr><tr><td>5 Years</td><td>5</td><td>22.10</td><td>43.22</td><td>165.31</td><td>323.33</td></tr></table> over those horizons, which are displayed in Table 1. For example, there is a 95.45\% chance over a 1-day horizon that a \$50 stock will be between \$48.47 and \$51.61. Over a 5-year horizon, there is a 95.45\% chance that the stock price will be between \$22.10 and 323.33.


The calculation in Example 7 is often used to compute loss probabilities and risk exposure. This is how value at risk (VaR) is calculated. The idea behind VaR is to assess the magnitude of a possible loss on a position that can occur with a given probability over a given horizon. So, for example, if we examine the 1-day horizon in Table 1, there is a  $2.275\%$  probability that over a 1-day horizon the stock price will drop below  $\$48.47$ . In practice, it is common to evaluate the magnitude of moves of  $1.96\sigma$  since this corresponds to a  $5\%$  ("once in 20 days") probability of occurrence.

Box 1 illustrates how the probability calculations in this section can be used to analyze the cost of portfolio insurance over time.

# The Conditional Expected Price

Given that an option expires in-the-money, what is the expected stock price? The answer to this question is the expected stock price conditional upon the option expiring in-the-money. For a put with strike price  $K$ , we want to calculate  $\mathrm{E}(S_t|S_t < K)$ , the expected stock price conditional on  $S_t < K$ . To compute this expectation, we need to take into account only the portion of the probability density representing stock prices below  $K$ .

To understand the calculations we are going to perform in this section, consider a binomial model in which the strike price is \$50, and the stock price at expiration can be $20, $40, \$60, or \$80, with probabilities 1/8, 3/8, 3/8, and 1/8. If a put is in the money at expiration, the stock price is either \$20 or 40. Suppose that for these two values we sum the stock price times the probability. We obtain

$$

\sum_ {S _ {t} <   5 0} \Pr (S _ {t}) \times S _ {t} = \left(\frac {1}{8} \times \$ 2 0\right) + \left(\frac {3}{8} \times \$ 4 0\right) = \$ 1 7. 5 0 \tag {25}

$$

# BOX I: Portfolio Insurance for the Long Run

The cost of insuring a stock portfolio so that it performs at least as well as a zero-coupon bond is increasing with the time to maturity of the insurance. The demonstration of this relies on the absence of arbitrage, which is incontrovertible but does not always provide intuition about the result. Using the results in this section, we can reconcile the historical low probability of stocks underperforming bonds with the increasing cost of insurance as we insure over a longer horizon.

The probability that  $S_{T} < K$  is given by equation (23). By setting the strike price to equal the forward price, i.e.,  $K_{T} = S_{0}e^{rT}$ , we can use equation (23) to calculate the probability that stocks bought at time 0 will have underperformed bonds at time  $T$ . After simplification, equation (23) can be written

$$

\Pr (S _ {T} <   K _ {T}) = N \left(\frac {\frac {1}{2} \sigma^ {2} - (\alpha - r)}{\sigma} \sqrt {T}\right)

$$

Thus, if the stock is lognormally distributed, the probability of the stock underperforming a zero-coupon bond depends on the size of the risk premium on stocks,  $\alpha - r$ , relative to one-half the variance,  $\frac{1}{2}\sigma^2$ . If the risk premium is high, puts will be increasingly less likely to pay off in the long run, even though the put price is increasing with horizon.

The put price depends in part on the risk-neutral probability that the stock will underperform bonds,  $\operatorname{Pr}^* (S_T < K)$ . This is obtained by setting  $\alpha = r$ , and we then have

$$

\operatorname * {P r} ^ {*} (S _ {T} <   K _ {T}) = N \left(\frac {1}{2} \sigma \sqrt {T}\right)

$$

The risk-neutral probability that the put will pay off is increasing with time. This fact does not by itself explain the price of the put increasing with time, since the put price also depends on the conditional expectation of the stock price when the put is in the money. However, this example does illustrate how historical true probabilities can mislead about the price of insurance.

The value  \$17.50 is clearly not an expected stock price since it is below the lowest possible price (\$ 20). We call \$17.50 the partial expectation of the stock price conditional upon  $S_{t} <$ 50. When we compute a conditional expectation, we are conditioning upon the event  $S_{t} <$ 50, which occurs with probability 0.5. We can convert a partial expectation into a conditional expectation by dividing by the probability of the conditioning event ( $S_{t} <50). Thus, the conditional expectation is

$$

\begin{array}{l} \frac {1}{\Pr \left(S _ {t} <   5 0\right)} \sum_ {S _ {t} <   5 0} \Pr \left(S _ {t}\right) \times S _ {t} = \frac {1}{0 . 5} \left[ \left(\frac {1}{8} \times \$ 2 0\right) + \left(\frac {3}{8} \times \$ 4 0\right) \right] \\ = \$ 35 \tag{26} \\ \end{array}

$$

The calculations for a lognormally distributed price are analogous, using integrals rather than summations.

The partial expectation of  $S_{t}$ , conditional on  $S_{t} < K$ , is

$$

\begin{array}{l} \int_ {0} ^ {K} S _ {t} g \left(S _ {t}; S _ {0}\right) d S _ {t} = S _ {0} e ^ {(\alpha - \delta) t} N \left(\frac {\ln (K) - \left[ \ln \left(S _ {0}\right) + (\alpha - \delta + 0 . 5 \sigma^ {2}) t \right]}{\sigma \sqrt {t}}\right) \tag {27} \\ = S _ {0} e ^ {(\alpha - \delta) t} N (- \hat {d} _ {1}) \\ \end{array}

$$ where  $g(S_{t};S_{0})$  is the probability density of  $S_{t}$  conditional on  $S_{0}$ , and  $\hat{d}_1$  is the Black-Scholes  $d_{1}$  with  $\alpha$  replacing  $r$ .

The probability that  $S_{t} < K$  is  $N(-\hat{d}_{2})$ . Thus, the expectation of  $S_{t}$  conditional on  $S_{t} < K$  is

$$
\boxed { \begin{array}{l} \mathrm {E} (S _ {t} | S _ {t} <   K) = S _ {0} e ^ {(\alpha - \delta) t} \frac {N (- \hat {d} _ {1})}{N (- \hat {d} _ {2})} \\ \hline \end{array} } \tag {28}
$$

For a call, we are interested in the expected price conditional on  $S_{t} > K$ . The partial expectation of  $S_{t}$  conditional on  $S_{t} > K$  is

$$
\begin{array}{l} \int_ {K} ^ {\infty} S _ {t} g \left(S _ {t}; S _ {0}\right) d S _ {t} = S _ {0} e ^ {(\alpha - \delta) t} N \left(\frac {\ln \left(S _ {0}\right) - \ln (K) + (\alpha - \delta + 0 . 5 \sigma^ {2}) t}{\sigma \sqrt {t}}\right) \tag {29} \\ = S _ {0} e ^ {(\alpha - \delta) t} N (\hat {d} _ {1}) \\ \end{array}
$$

As before, except for the fact that it contains the expected rate of return on the stock,  $\alpha$ , instead of the risk-free rate, the second term is just the Black-Scholes expression,  $N(d_{1})$ . The conditional expectation is

$$
\boxed {E (S _ {t} | S _ {t} > K) = S _ {0} e ^ {(\alpha - \delta) t} \frac {N (\hat {d} _ {1})}{N (\hat {d} _ {2})}} \tag {30}
$$

# The Black-Scholes Formula

Using equations (23), (24), (28), and (30), we can now heuristically derive the Black-Scholes formula. The Black-Scholes formula can be derived by assuming risk-neutrality. In this case, the expected return on stocks,  $\alpha$ , will equal  $r$ , the risk-free rate. If we let  $g^{*}$  denote the risk-neutral lognormal probability density,  $\mathrm{E}^{*}$  denote the expectation taken with respect to risk-neutral probabilities, and  $\operatorname{Pr}^{*}$  denote those probabilities, the price of a European call option on a stock will be

$$
\begin{array}{l} C (S, K, \sigma , r, t, \delta) = e ^ {- r t} \int_ {K} ^ {\infty} (S _ {t} - K) g ^ {*} (S _ {t}; S _ {0}) d S _ {t} \\ = e ^ {- r t} \mathrm {E} ^ {*} (S - K | S > K) \times \Pr^ {*} (S > K) \\ \end{array}
$$

We can rewrite this as

$$
\begin{array}{l} C (S, K, \sigma , r, t, \delta) = e ^ {- r t} \mathrm {E} ^ {*} (S | S > K) \times \Pr^ {*} (S > K) \\ - e ^ {- r t} \mathrm {E} ^ {*} (K | S > K) \times \Pr^ {*} (S > K) \\ \end{array}
$$

Using (23) and (30), with  $\alpha = r$ , this becomes

$$
C (S, K, \sigma , r, t, \delta) = e ^ {- \delta t} S N (d _ {1}) - K e ^ {- r t} N (d _ {2})
$$ which is the Black-Scholes formula.


Similarly, the formula for a European put option on a stock is derived by computing

$$

P (S, K, \sigma , r, t, \delta) = e ^ {- r t} \mathrm {E} ^ {*} (K - S | K > S) \times \Pr^ {*} (K > S)

$$

We can rewrite this as

$$

\begin{array}{l} P (S, K, \sigma , r, t, \delta) = e ^ {- r t} \mathrm {E} ^ {*} (K | K > S) \times \Pr^ {*} (K > S) \\ - e ^ {- r t} \mathrm {E} ^ {*} (S | K > S) \times \Pr^ {*} (K > S) \\ \end{array}

$$ and using (24) and (28), with  $\alpha = r$ , this becomes

$$
P (S, K, \sigma , r, t, \delta) = K e ^ {- r t} N (- d _ {2}) - e ^ {- \delta t} S N (- d _ {1})
$$

# 5. ESTIMATING THE PARAMETERS OF A LOGNORMAL DISTRIBUTION

In this section we will see how to estimate the mean and variance of lognormally distributed price data.

When stocks are lognormally distributed, a price  $S_{t}$  evolves from the previous price observed at time  $t - h$ , according to

$$
S _ {t} = S _ {t - h} e ^ {(\alpha - \delta - \sigma^ {2} / 2) h + \sigma \sqrt {h} z}
$$

Suppose we have daily observations. How would we estimate the mean and standard deviation? We have

$$
\ln \left(S _ {t}\right) = \ln \left(S _ {t - h}\right) + (\alpha - \delta - \sigma^ {2} / 2) h + \sigma \sqrt {h} z
$$

Thus

$$
\operatorname {E} \left[ \ln \left(S _ {t} / S _ {t - h}\right) \right] = (\alpha - \delta - \sigma^ {2} / 2) h
$$

$$
\operatorname {V a r} \left[ \ln \left(S _ {t} / S _ {t - h}\right) \right] = \sigma^ {2} h
$$

By using the log ratio of prices at adjacent points in time, we can compute the continuously compounded mean and variance. Note that to estimate  $\alpha$ , we have to add one-half the estimate of the variance to the estimate of the mean.

Example 8. Table 2 contains seven weekly stock price observations along with continuously compounded returns computed from those observations. You can compute the mean and standard deviation of the values in the third column (for example, using the Average and Stdev functions in Excel). Since these are weekly observations, we are estimating the weekly mean of the log price ratio and the weekly standard deviation.

The mean of the second column in Table 2 is 0.006745 and the standard deviation is 0.038208. The annualized standard deviation is

$$
\text {A n n u a l i z e d s t a n d a r d} = 0. 0 3 8 2 0 8 \times \sqrt {5 2} = 0. 2 7 5 5
$$

Two adjustments are needed to interpret the mean. First, we have to annualize it. Second, since we computed the mean of the log returns, we have to add back one-half the variance.

TABLE 2

Hypothetical weekly stock price observations and corresponding weekly continuously compounded returns,  $\ln (S_t / S_{t - 1})$

<table><tr><td>Week</td><td>Price ($)</td><td>ln(S_t/S_{t-1})</td></tr><tr><td>1</td><td>100</td><td>—</td></tr><tr><td>2</td><td>105.04</td><td>0.0492</td></tr><tr><td>3</td><td>105.76</td><td>0.0068</td></tr><tr><td>4</td><td>108.93</td><td>0.0295</td></tr><tr><td>5</td><td>102.50</td><td>-0.0608</td></tr><tr><td>6</td><td>104.80</td><td>0.0222</td></tr><tr><td>7</td><td>104.13</td><td>-0.0064</td></tr></table>

Thus, we obtain

$$
\text {A n n u a l i z e d} = 0. 0 0 6 7 4 5 \times 5 2 + 0. 5 \times 0. 2 7 5 5 ^ {2} = 0. 3 8 8 7
$$

The prices were generated randomly assuming using a standard deviation of  $30\%$  and a mean of  $10\%$ . Despite having only six observations, the standard deviation estimate is quite close to the true value of  $30\%$ . The estimated mean, however, is quite far off.

We used hypothetical data in this example in order to compare the estimates to the true underlying parameters, something we cannot do with real data. As this example illustrates, mean returns are hard to estimate precisely because the mean is determined by the difference between where you start and where you end. If you start at a price of  \$100 and end at a price of\$ 104, the in-between prices are irrelevant: If you had a big negative weekly return (say -20\%), it must have been offset by a big positive return (on the order of +20\%), or you would not have ended up at 104! Having many frequent observations is not helpful in estimating mean returns. What is helpful is having a long time interval, and seven weeks is not long.

Statistical theory tells us the precision of our estimate of the mean. With a normally distributed random variable, the standard deviation of the estimated mean is the standard deviation of the variable divided by the square root of the number of observations. The data in this example were generated using an actual weekly  $\sigma$  of  $0.3 / \sqrt{52} = 0.0416$ . Divide this by  $\sqrt{6}$  (since there are six return observations) to get 0.017. Thus, one standard deviation for our estimate of the mean is  $1.7\%$  on a weekly basis, or  $12.25\%$  annualized. There is a  $68\%$  probability that the annualized continuously compounded mean falls in the range  $38\% \pm 12.25\%$ ! A  $95\%$  confidence interval is  $38\% \pm 24.5\%$ . This is a wide range. Even with 10 years of weekly data, one standard deviation for our estimated annualized mean would be  $30\% / \sqrt{520} = 1.3\%$ .

When we estimate a standard deviation, we are interested in the movement of the price. The more observations we have, the more precisely we can estimate movement. With six observations, an approximate  $95\%$  confidence interval for the standard deviation is approximately  $\pm 18$  percentage points. With only 26 weekly observations, the  $95\%$  confidence interval shrinks to  $\pm 8$  percentage points. Moreover, unlike the mean, we can increase the precision of our estimate of the standard deviation by making more frequent observations. In general, standard deviations are easier to estimate than means.

In this discussion we have assumed that the variance is not changing over time. There is good evidence, however, that the variance does change over time, and sophisticated statistical methods can be used to estimate changing variances.

You should also be aware that, in practice, using data from very tiny intervals (e.g., hourly prices) may not increase precision. Over short time periods, factors such as bid-ask bounce—the movement of the price between the bid and ask spreads due to some orders being sells and others being buys—can introduce into prices noise that is not related to the values we are trying to measure.

# 6. HOW ARE ASSET PRICES DISTRIBUTED?

The lognormal model assumes that stock returns are independent over time (today's return does not affect future returns), that mean and volatility are constant over time, and that the distribution of continuously compounded returns is normal. However, implied volatilities differ for options with different strikes. One possible explanation is that stock prices are not lognormally distributed. How can we tell whether lognormality (or some other particular distribution) is a reasonable approximation for actual stock prices?

# Histograms

One way to assess lognormality is simply to plot the continuously compounded returns as a histogram and see whether the resulting distribution appears normal. The top row of Figure 4 presents histograms for daily returns over a 10-year period for the S&P 500 index and for IBM. The bottom row is histograms for weekly returns. Also plotted on each graph is a normal distribution, computed using the historical mean and standard deviation for each return series. $^{6}$  Several observations are pertinent.

None of the histograms appears exactly normal. All of the histograms exhibit a peak around zero; the presence or absence of this peakedness is referred to as kurtosis (a measure of how "sharp" the peak of the distribution is), and the graph displays leptokurtosis (lepto

# FIGURE 4

Histograms for daily and weekly returns on the S&P 500 index and IBM, from July 1, 2001 to July 1, 2011.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/2d61be18b6465f98cf0c88000ce5d7aebeae3c7d0bba8e96fa2ad9ef4fb6eb64.jpg)

S&P 500 Daily Return

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/1efe2ff21b65213a0ed6e0251864ab6702f1cfad564bb00b4dfca4819c30919f.jpg)

IBM Daily Return

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/0c8afd6e19caff007ef2f799696932b2108fd83b592101f2a679e82b968fb214.jpg)

S&P 500 Weekly Return

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/6be154a2bf521fa17da198a5825e7a0218ead396ddf89d542a722c0f3ef81c70.jpg)

IBM Weekly Return meaning "small, thin, delicate"). For a normally distributed random variable, kurtosis is 3. For the data plotted in Figure 4, kurtosis for the S&P and IBM are 8.03 and 9.54 for daily returns, and 4.68 and 5.21 for weekly returns. Accompanying the peaks are fat tails, large returns that occur more often than would be predicted by the lognormal model. These shapes are typical for stock returns.

There are several possible explanations for returns appearing nonnormal. One is that stock prices can jump discretely from time to time. Another explanation is that returns are normally distributed, but with a variance that changes over time. If actual daily returns are drawn from a distribution that has a  $1\%$  volatility half the time and a  $2\%$  volatility half the time, the stock price histogram will appear fat-tailed. This blend of two distributions is commonly referred to as a mixture of normals model. Long-horizon returns, which result from summing short-horizon returns, will still appear normal.

# Normal Probability Plots

Figure 5 presents normal probability plots for the same data as Figure 4. These plots are an alternative to histograms for assessing normality. We will examine normal probability plots as a tool for assessing normality and also to introduce a technique that we will encounter again in discussing Monte Carlo simulation.

# FIGURE 5

Normal probability plots for daily and weekly returns on the S&P 500 index and IBM from July 1, 2001 to July 1, 2011.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/6fc82e469d26206a52d49a554ddad8d37fa86951f52f189e9fa51ff19a9a96b7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/66b3b746b20463eab3791a58e20f286f7afa8d5c32b83681b7c6e804827976d8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/5790452f1bcd672567264f1bbd4c6ce7ea6c288ffa048571a10474f8958cce2e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/09824903e5ee729ec56c1ac033db44a8a090849a49c0c9ea00e87caa9320a4e2.jpg)

The interpretation of these plots is straightforward: If the data points (plotted with a "+" lie along the straight line in the graph, the data are consistent with a normal distribution. If the data plot is curved, the data are less likely to have come from a normal distribution. In both cases it appears the data are not normal. There are too many points to the left of the line for low values and to the right of the line for high values. The interpretation of the plots is that extreme low and high returns occur more often than with a normal distribution.

For both the S&P index and IBM, the weekly returns appear more normal than daily returns, in that the observations more closely resemble the straight line. This is the relationship we would expect from the central limit theorem. Weekly returns are the sum of daily returns. If daily returns are independent and identically distributed, the summed daily returns will tend toward normality.

We will consider a simple example to see how a normal plot is constructed. First we have to define two concepts, order statistics and quantiles. Suppose that we randomly draw  $n$  random variables  $x_{i}$ ,  $i = 1, \dots, n$ , from some distribution with the cumulative distribution function  $F(x)$ . (For the normal distribution,  $F(x) = N(x)$ ). If we sort the data in ascending order, the sorted data are called order statistics.

Example 9. Suppose we draw from a distribution five times and obtain the values  $\{7, 3, 11, 5, 4\}$ . The order statistics are  $\{3, 4, 5, 7, 11\}$ .

The  $q$ th quantile of the distribution  $F$  is the smallest value  $x$  such that  $F(x) \geq q$ . In words, the  $q$ th quantile is the  $x$  such that there is at least probability  $q$  of drawing a value from the distribution less than or equal to  $x$ .

Example 10. Suppose  $z$  is standard normal. The  $10\%$  quantile is the value such that there is a  $10\%$  chance that a draw from the standard normal distribution is less than that number. Using the inverse cumulative distribution,  $N^{-1}(0.10) = -1.282$ . Thus, the  $10\%$  quantile is -1.281. The  $30\%$  quantile is  $N^{-1}(0.3) = -0.524$ .

The idea of the normal probability plot (which can be done for any distribution, not just normal) is to compare the distance between the quantiles of the data with the distance between the quantiles of the normal distribution. If they are the same, the normal probability plot is a straight line.

To see how this works, suppose we have the five values in Example 9. We want to assign quantiles to the data points, so with five data points we need five quantiles. Divide the range  $0 - 100\%$  into  $0 - 20\%$ ,  $20\% - 40\%$ , and so forth. Assign the order statistics (the ordered data points) to the midpoints of these ranges, so that 3 is assigned a quantile value of  $10\%$ , 4 a quantile value of  $30\%$ , 5 to  $50\%$ , 7 to  $70\%$ , and 11 to  $90\%$ . The normal probability plot then graphs these points against the points from the corresponding quantiles of the standard normal distribution.

The top left panel of Figure 6 presents the normal plot for the data in Example 9 with the data points plotted against the corresponding  $z$ -values of the standard normal distribution. Appendix B explains the construction of this plot. The top right panel is exactly the same, except that the  $y$ -axis is labeled with probabilities corresponding to the  $z$ -values.

The data do not appear normal, though with only five points there is a large possibility for error.

The bottom row of Figure 6 presents normal probability plots with two different  $y$ -axes for 1000 randomly generated points from a  $\mathcal{N}(0,1)$  distribution. In this case the data lie along the line and, hence, appear normal. In all of the normal probability plots, the straight

# FIGURE 6

Normal probability plots for the five data points in Example 9: 3, 4, 5, 7, and 11 (top) and 1000 points randomly generated from a  $\mathcal{N}(0,1)$  distribution (bottom).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/4a94bfe747b0a4552b1b4f4e143e73bf34f557d73148b04bc7be1d59bed1558c.jpg)

Normal Probability Plot

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/c5f255dc4ae825d6f9270f7ea9645ca4f65bb0eb86251d9b72884879a39e384e.jpg)

Normal Probability Plot

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/4a24ed02fbdc219a46cb5f847c7381b941ace2e616124a8283e32102b023f4cb.jpg)

Normal Probability Plot

Data

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/8673a1b2429f35e6a9fb370827bc5d7215e3ffc7c3a3bac359c847b604c31df1.jpg)

Normal Probability Plot

Data line is drawn connecting the  $25\%$  and  $75\%$  quantiles of the data. In essence, the normal probability plot changes the scale on the y-axis so the cumulative normal distribution is a straight line rather than an S-shaped curve.

# CHAPTER SUMMARY

The normal distribution has these characteristics:

- It is symmetric; i.e., the right and left sides are mirror images of each other.
- It runs to plus and minus infinity, which means it is possible (albeit perhaps unlikely) that any number could occur when you draw from the distribution.
- It is unimodal; i.e., it has a single hump, which occurs at the mean.
- Sums of normal random variables are normal.

The lognormal distribution arises from assuming that continuously compounded returns are normally distributed. The lognormal distribution has these characteristics:

- It is skewed to the right.
- It runs from zero to plus infinity, which means that negative outcomes are impossible.
- It is unimodal (i.e., it has a single hump), which occurs to the left of the mean.
- Products of lognormal random variables are lognormal.

The Black-Scholes formula arises from a straightforward lognormal probability calculation using risk-neutral probabilities. The contribution of Black and Scholes was not the particular formula but rather the appearance of the risk-free rate in the formula.

From examining histograms and normal probability plots for daily and weekly continuously compounded returns, we can see that there are too many large returns relative to normally distributed returns. Although continuously compounded returns do not appear to be exactly normal, the Black-Scholes model and the accompanying assumption of lognormality is used frequently. We will explore extensions that are consistent with departures from normality we have seen in this chapter.

# FURTHER READING

Both the histogram and normal probability plot verify that continuously compounded returns in practice are not normally distributed. The question is whether this matters for pricing, and if so, how to modify the assumed price distributions and pricing formulas to obtain more accurate derivative prices. Two modifications allow the stock to jump discretely and to permit volatility to be stochastic.

An excellent discussion of the basic characteristics of stock returns is Campbell et al. (1997, chs. 1 and 2). The history of the normal distribution is entertainingly recounted in Bernstein (1996). (See in particular the accounts of DeMoivre, Gauss, and Galton.)

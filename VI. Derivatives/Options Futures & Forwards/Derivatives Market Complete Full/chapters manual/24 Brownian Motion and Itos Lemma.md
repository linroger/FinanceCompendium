---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Brownian Motion and Itos Lemma
linter-yaml-title-alias: Brownian Motion and Itos Lemma
---

# Brownian Motion and Itos Lemma

Third, it is typical when pricing derivatives to use the risk-neutral process for an asset rather than the actual process. We illustrate risk-neutral pricing when the stock follows an Ito process.

Practitioners and academic derivatives researchers alike rely on the concepts and techniques we discuss here.

# I. THE BLACK-SCHOLES ASSUMPTION ABOUT STOCK PRICES

The vast majority of technical option pricing discussions, including the original paper by Black and Scholes, begin by assuming that the price of the underlying asset follows a process like the following:

$$
\frac {d S (t)}{S (t)} = (\alpha - \delta) d t + \sigma d Z (t) \tag {1}
$$

In this expression,  $S(t)$  is the stock price,  $dS(t)$  is the instantaneous change in the stock price,  $\alpha$  is the continuously compounded expected return on the stock,  $\sigma$  is the standard deviation of the instantaneous return (volatility), and  $Z(t)$  is a normally distributed random variable that follows a process called Brownian motion. The variable  $dZ(t)$  represents the change in  $Z(t)$  over a short period of time. A stock obeying equation (1) is said to follow a process called geometric Brownian motion. Expressions like equation (1) are called stochastic differential equations.

From Chapter 20 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

One goal of this chapter is to understand the meaning of equations like (1). For our purposes, there are two important implications of this equation:

1. If the stock price follows equation (1), the distribution of  $S(T)$ , conditional upon the current price  $S(0)$ , is lognormal, i.e.,

$$
\ln [ S (T) ] \sim \mathcal {N} (\ln [ S (0) ] + [ \alpha - \delta - 0. 5 \sigma^ {2} ] T, \sigma^ {2} T)
$$

The assumption that the stock follows geometric Brownian motion thus provides a foundation for our assumption that the stock price is lognormally distributed.

2. Lognormality tells us about the distribution of the stock price at a point in time. For many purposes, however, we are interested not just in the distribution at a terminal point but also the path the stock price takes in getting to that terminal point. With barrier options, for example, the price of the option depends upon the probability that the asset price reaches the barrier. Geometric Brownian motion allows us to describe this path.

Our goal is to provide a heuristic, rather than technical, understanding of equations like (1).

# 2. BROWNIAN MOTION

A stochastic process is a random process that is a function of time. Brownian motion, which is a basic building block for standard derivatives pricing models, is a stochastic process that evolves in continuous time, with movements that are continuous. A careful mathematical formulation of Brownian motion requires mathematics beyond the scope and purpose of this chapter. Our goal here is to provide an intuitive understanding.

# Definition of Brownian Motion

Brownian motion is a continuous stochastic process,  $Z(t)$ , with the following characteristics:

$Z(0) = 0$

- $Z(t + s) - Z(t)$  is normally distributed with mean 0 and variance  $s$ .
- $Z(t + s_1) - Z(t)$  is independent of  $Z(t) - Z(t - s_2)$ , where  $s_1, s_2 > 0$ . In other words, nonoverlapping increments are independently distributed.
- $Z(t)$  is continuous (you can draw a picture of Brownian motion without lifting your pencil).

These properties imply that  $Z(t)$  is a martingale: a stochastic process for which  $\operatorname{E}[Z(t + s)|Z(t)] = Z(t)$ . The process  $Z(t)$  is also called a diffusion process. Brownian motion is an example of a random walk, which is a stochastic process with independent increments.

We can obtain a heuristic understanding of Brownian motion by modeling the change in  $Z(t)$  as binomial, times a scale factor that makes the change in  $Z(t)$  small over a small period of time. Brownian motion is then the limit of a sum of infinitesimal increments over a period of time. Denote the short period of time as  $h$ , and let  $Y(t)$  be a random draw from a binomial distribution, where  $Y(t)$  is  $\pm 1$  with probability 0.5. Note that  $\operatorname{E}[Y(t)] = 0$  and  $\operatorname{Var}[Y(t)] = 1$ . We can write

$$
Z (t + h) - Z (t) = Y (t + h) \sqrt {h} \tag {2}
$$

Over any period of time longer than  $h$ ,  $Z$  will be the sum of the binomial increments specified in equation (2). Let  $n = T / h$  be the number of intervals of length  $h$  between 0 and  $T$ . We have

$$
Z (T) - Z (0) = \sum_ {i = 1} ^ {n} (Z [ i h ] - Z [ (i - 1) h ]) = \sum_ {i = 1} ^ {n} Y (i h) \sqrt {h}
$$

Since  $h = T / n$ , we can also write this as

$$
Z (T) - Z (0) = \sqrt {T} \left[ \frac {1}{\sqrt {n}} \sum_ {i = 1} ^ {n} Y (i h) \right] \tag {3}
$$

To understand the properties of  $Z(T)$ , we must first understand the properties of the term in square brackets in equation (3). Since  $\operatorname{E}[Y(ih)] = 0$ , we have

$$
\mathrm {E} \left[ \frac {1}{\sqrt {n}} \sum_ {i = 1} ^ {n} Y (i h) \right] = 0
$$

Also, since  $\operatorname{Var}[Y(ih)] = 1$ , and the  $Y$ 's are independent, we have

$$
\operatorname {V a r} \left[ \frac {1}{\sqrt {n}} \sum_ {i = 1} ^ {n} Y (i h) \right] = \frac {1}{n} \sum_ {i = 1} ^ {n} 1 = 1
$$

Thus, the term in square brackets has mean 0 and variance 1, since it is the sum of  $n$  independent random variables with mean 0 and variance 1, divided by  $\sqrt{n}$ .

By the central limit theorem, the distribution of the sum of independent binomial random variables approaches normality. We have

$$
\lim  _ {n \rightarrow \infty} \frac {1}{\sqrt {n}} \sum_ {i = 1} ^ {n} Y (i h) \sim \mathcal {N} (0, 1)
$$

The division by  $\sqrt{n}$  in this expression prevents the variance from going to infinity as  $n$  goes to infinity.

Returning to equation (3), the multiplication by  $\sqrt{T}$  on the right-hand side multiplies the variance by  $T$ . Thus, in the limit we have

$$
Z (T) - Z (0) \rightarrow \mathcal {N} (0, T)
$$

To summarize, we have verified that the  $Z(T)$  we have constructed has some of the characteristics of Brownian motion: It is normally distributed with mean zero and variance  $T$ , and increments to  $Z(T)$  are independent.

We have not verified that the  $Z(T)$  defined in equation (3) is a continuous process; hence, we have not demonstrated that it is true Brownian motion. However, it is plausible that  $Z(T)$  is continuous because the magnitude of the increments is  $\sqrt{h} = \sqrt{T / n}$ , and  $h \to 0$  as  $n \to \infty$ .

We can write an expression denoting the Brownian increment. As  $h$  becomes small, rename  $h$  as  $dt$  and the change in  $Z$  as  $dZ(t)$ . We then have

$$ d Z (t) = Y (t) \sqrt {d t} \tag {4}
$$

This representation of the Brownian process is mathematically informal but surprisingly useful nevertheless. Equation (4) is just like equation (2), except that  $Z(t + h) - Z(t)$  is now called  $dZ(t)$ , and  $\sqrt{h}$  is now  $\sqrt{dt}$ . Equation (4) is a mathematical way to say, "Over small periods of time, changes in the value of the process are normally distributed with a variance that is proportional to the length of the time period."

Although expressions like equation (4) appear in the derivatives literature, it is mathematically appropriate to deal with sums of increments rather than increments. These sums are written as integrals, for example:

$$
Z (T) = Z (0) + \lim  _ {n \rightarrow \infty} \sqrt {T} \left[ \frac {1}{\sqrt {n}} \sum_ {i = 1} ^ {n} Y (i h) \right]\rightarrow Z (0) + \int_ {0} ^ {T} d Z (t) \tag {5}
$$

The integral in expression (5) is called a stochastic integral.

# Properties of Brownian Motion

We now use equation (3) to understand some additional properties of Brownian motion. The following derivations will be informal, intended to provide intuition rather than actual proofs. In particular, we continue to use the binomial approximation to the Brownian process.

The quadratic variation of a process is defined as the sum of the squared increments to the process. Thus, the quadratic variation of the Brownian process  $Z(t)$  is

$$
\lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} (Z [ i h ] - Z [ (i - 1) h ]) ^ {2} = \lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} \left(\sqrt {h} Y _ {i h}\right) ^ {2} = \lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} h Y _ {i h} ^ {2}
$$

Since we are treating  $Y_{i}$  as binomial, taking on the values  $\pm 1$ , we have  $Y_{ih}^{2} = 1$  and hence

$$
\lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} h Y _ {i h} ^ {2} = \lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} \frac {T}{n} = T
$$

In other words,

$$
\lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} (Z [ i h ] - Z [ (i - 1) h ]) ^ {2} = T \tag {6}
$$

Surprisingly, the quadratic variation of a Brownian process from time 0 to time  $T$  is not a random variable, but it is finite and equal to  $T$ . The fact that quadratic variation is finite implies that higher-order variations are zero. Thus, for example, the sum of the cubed increments is zero. The finite quadratic variation of a Brownian process turns out to be an extremely important result that we will encounter again.

The total variation of the Brownian process is

$$
\lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} | \sqrt {h} Y _ {i h} | = \lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} \sqrt {h} | Y _ {i h} |
$$

Again, treating  $Y_{ih}$  as binomial, we have  $|Y_{ih}| = 1$ , and hence

$$
\lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} \sqrt {h} | Y _ {i h} | = \lim  _ {n \rightarrow \infty} \sqrt {T} \sum_ {i = 1} ^ {n} \frac {1}{\sqrt {n}} = \sqrt {T} \lim  _ {n \rightarrow \infty} \sqrt {n} = \infty
$$

In words, the absolute length of a Brownian path is infinite over any finite interval. In order for a path to have infinite length over a finite interval of time, it must move up and down rapidly. This behavior implies the infinite crossing property, which states that a Brownian path will cross its starting point an infinite number of times in an interval of any finite length.

# Arithmetic Brownian Motion

The Brownian motion process described above is a building block for more elaborate and realistic processes. With pure Brownian motion, the expected change in  $Z$  is 0, and the variance per unit time is 1. We can generalize this to allow an arbitrary variance and a nonzero mean. To make this generalization, we can write

$$
X (t + h) - X (t) = \alpha h + \sigma Y (t + h) \sqrt {h}
$$

This equation implies that  $X(T)$  is normally distributed. Since  $h = T / n$ , we have

$$
\begin{array}{l} X (T) - X (0) = \sum_ {i = 1} ^ {n} \left(\alpha \frac {T}{n} + \sigma Y (i h) \sqrt {\frac {T}{n}}\right) \\ = \alpha T + \sigma \left(\sqrt {T} \sum_ {i = 1} ^ {n} \frac {Y (i h)}{\sqrt {n}}\right) \\ \end{array}
$$

We have seen that as  $n\to \infty$  , the term in parentheses on the right-hand side has the distribution  $\mathcal{N}(0,T)$  . We can write

$$
X (T) - X (0) = \alpha T + \sigma Z (T) \tag {7}
$$

The differential form of this expression is

$$ d X (t) = \alpha d t + \sigma d Z (t) \tag {8}
$$

This process is called arithmetic Brownian motion. We say that  $\alpha$  is the instantaneous mean per unit time and  $\sigma^2$  is the instantaneous variance per unit time. The variable  $X(t)$  is the sum of the individual changes  $dX$ . An implication of equation (8) is that  $X(T)$  is normally distributed, or

$$
X (T) - X (0) \sim \mathcal {N} (\alpha T, \sigma^ {2} T)
$$

As before, there is an integral representation of equation (8):

$$
X (T) = X (0) + \int_ {0} ^ {T} \alpha d t + \int_ {0} ^ {T} \sigma d Z (t)
$$

This expression is equivalent to equation (7).

Here are some of the properties of the process in equation (8):

- $X(t)$  is normally distributed because it is a scaled Brownian process.
- The random term has been multiplied by a scale factor that enables us to specify the variance of the process. Since  $dZ(t)$  has a variance of 1 per unit time,  $\sigma dZ(t)$  will have a variance of  $\sigma^2$  per unit time.
- The  $\alpha dt$  term introduces a nonrandom drift into the process. Adding  $\alpha dt$  has the effect of adding  $\alpha$  per unit time to  $X(t)$ .

Being able to adjust the drift and variance is a big step toward a more useful model, but arithmetic Brownian motion has several drawbacks:

- There is nothing to prevent  $X$  from becoming negative, so it is a poor model for stock prices.
- The mean and variance of changes in dollar terms are independent of the level of the stock price. In practice, if the price of a stock doubles, we would expect both the dollar expected return and the dollar standard deviation of returns to approximately double.

# The Ornstein-Uhlenbeck Process

Another modification of the arithmetic Brownian process permits mean reversion. It is natural to consider mean reversion when modeling commodity prices or interest rates. For example, if the interest rate becomes sufficiently high, it is likely to fall, and if the value is sufficiently low, it is likely to rise. Commodity prices may also exhibit this tendency to revert to the mean. We can incorporate mean reversion by modifying the drift term:

$$ d X (t) = \lambda [ \alpha - X (t) ] d t + \sigma d Z (t) \tag {9}
$$

Equation (9) is called an Ornstein-Uhlenbeck process.

Equation (9) has the implication that if  $X$  rises above  $\alpha$ , the drift,  $\lambda[\alpha - X(t)]$ , will become negative. If  $X$  falls below  $\alpha$ , the drift becomes positive. The parameter  $\lambda$  measures the speed of the reversion: If  $\lambda$  is large, reversion happens more quickly. In the long run, we expect  $X$  to revert toward  $\alpha$ . As with arithmetic Brownian motion,  $X$  can still become negative.

# 3. GEOMETRIC BROWNIAN MOTION

In general, we can write both the drift and volatility as functions of  $X$  (or other variables):

$$ d X (t) = \alpha [ X (t) ] d t + \sigma [ X (t) ] d Z (t) \tag {10}
$$

This equation, in which the drift,  $\alpha$ , and volatility,  $\sigma$ , depend on  $X(t)$ , is called an Itô process.

Suppose we modify arithmetic Brownian motion to make the instantaneous mean and standard deviation proportional to  $X(t)$ :

$$ d X (t) = \alpha X (t) d t + \sigma X (t) d Z (t)
$$

This is an Itô process that can also be written

$$
\frac {d X (t)}{X (t)} = \alpha d t + \sigma d Z (t) \tag {11}
$$

This equation says that the dollar mean and standard deviation of  $X(t)$  are  $\alpha X(t)$  and  $\sigma X(t)$ , proportional to the level of  $X(t)$ . Thus, the percentage change in  $X(t)$  is normally distributed with instantaneous mean  $\alpha$  and instantaneous variance  $\sigma^2$ . The process in equation (11) is known as geometric Brownian motion. For the rest of the chapter, we will frequently assume that prices of stocks and other assets follow equation (11).

The integral representation for equation (11) is

$$
X (T) - X (0) = \int_ {0} ^ {T} \alpha X (t) d t + \int_ {0} ^ {T} \sigma X (t) d Z (t)
$$

# Lognormality

We now circle back to our discussion of lognormality because of this fact: A variable that follows geometric Brownian motion is lognormally distributed. Suppose we start a process at  $X(0)$  and it follows geometric Brownian motion. Because the mean and variance at time  $t$  are proportional to  $X(t)$ , the evolution of  $X$  implied by equation (11) generates compounding (the change in  $X$  is proportional to  $X$ ) and, hence, nonnormality.

While  $X$  is not normal,  $\ln [X(t)]$  is normally distributed:

$$
\ln [ X (t) ] \sim \mathcal {N} (\ln [ X (0) ] + (\alpha - 0. 5 \sigma^ {2}) t, \sigma^ {2} t) \tag {12}
$$

As a result, we can write

$$
X (t) = X (0) e ^ {\left(\alpha - 0. 5 \sigma^ {2}\right) t + \sigma \sqrt {t} Z} \tag {13}
$$ where  $Z \sim \mathcal{N}(0,1)$ . This is the link between Brownian motion and lognormality. If a variable is distributed in such a way that instantaneous percentage changes follow geometric Brownian motion, then over discrete periods of time, the variable is lognormally distributed.


Given that  $X$  follows (11), we can compute the expected value of  $X$  at a point in the future. It follows from the equation that

$$

\begin{array}{l} \operatorname {E} [ X (t) ] = X (0) e ^ {(\alpha - 0. 5 \sigma^ {2}) t} \mathrm {E} _ {0} \left(e ^ {\sigma \sqrt {t} Z}\right) \\ = X (0) e ^ {\left(\alpha - 0. 5 \sigma^ {2}\right) t} e ^ {0. 5 \sigma^ {2} t} \tag {14} \\ = X (0) e ^ {\alpha t} \\ \end{array}

$$

Thus,  $\alpha$  in equation (11) is the continuously compounded expected return on  $X$ .

# Relative Importance of the Drift and Noise Terms

Consider the discrete counterpart for arithmetic Brownian motion:

$$

X (t + h) - X (t) = \alpha h + \sigma Y (t) \sqrt {h}

$$

Over a short interval of time, there are two components to the change in  $X$ : a deterministic component,  $\alpha h$ , and a random component,  $\sigma Y(t)\sqrt{h}$ . An important fact is that over short periods of time, the character of the Brownian process is determined almost entirely by the random component. The drift can be undetectable amid all the up and down movement generated by the random term.

To understand why the random term is important over short horizons, consider the ratio of the standard deviation to the drift:

$$

{\frac {\sigma \sqrt {h}}{\alpha h}} = {\frac {\sigma}{\alpha \sqrt {h}}}

$$

This ratio becomes infinite as  $h$  approaches  $dt$ .

A numerical example shows this concretely. Suppose  $\alpha = 10\%$  and  $\sigma = 10\%$ . Over a year, the mean and standard deviations are the same. Table 1 shows that the ratio increases as the time interval becomes smaller. Over a period of 1 day, the standard deviation is 19 times larger than the mean. This is important in practice since it means that when you look at daily returns, you are primarily seeing the movement of a random variable following pure Brownian motion. The deterministic drift (the expected return) is virtually undetectable.

As the time interval becomes longer than a year, the reverse happens: The mean becomes more important than the standard deviation. Since the mean is proportional to  $h$  while the standard deviation is proportional to  $\sqrt{h}$ , the mean comes to dominate over longer horizons.

# Multiplication Rules

The dominance of the noise term over short intervals has another implication. Since the behavior of  $dX$  is dominated by the noise term, the squared return,  $(dX)^2$ , reflects primarily

TABLEI
The last column computes the ratio of the per-period standard deviation to the per-period mean for different time intervals. The ratio becomes infinite as the time interval goes to zero.

<table><tr><td>Period Length</td><td>h</td><td>αh</td><td>σ√h</td><td>σ√h/αh</td></tr><tr><td>5 years</td><td>5</td><td>0.5</td><td>0.2236</td><td>0.447</td></tr><tr><td>1 year</td><td>1</td><td>0.100</td><td>0.100</td><td>1.000</td></tr><tr><td>1 month</td><td>0.0833</td><td>0.0083</td><td>0.0289</td><td>3.464</td></tr><tr><td>1 day</td><td>0.0027</td><td>0.00027</td><td>0.0052</td><td>19.105</td></tr><tr><td>1 minute</td><td>0.000002</td><td>0.0000002</td><td>0.00014</td><td>724.983</td></tr></table> the noise term. We have


$$

[ X (t + h) - X (t) ] ^ {2} = \left[ \alpha X (t) h + \sigma X (t) Y (t) \sqrt {h} \right] ^ {2}

$$

Expanding this expression and simplifying, we have

$$

[ X (t + h) - X (t) ] ^ {2} = \alpha^ {2} X (t) ^ {2} h ^ {2} + 2 \alpha \sigma X (t) ^ {2} Y (t) h ^ {1. 5} + \sigma^ {2} X (t) ^ {2} Y (t) ^ {2} h

$$

Suppose that  $h$  is 1 day. Then  $h = 0.00274$ ,  $h^{1.5} = 0.000143$ , and  $h^2 = 0.0000075$ . If  $h$  is 1 hour, then  $h = 0.000114$ ,  $h^{1.5} = 0.0000012$ , and  $h^2 = 0.00000001$ . Clearly, the relative magnitude of the term multiplied by  $h$  is much greater than the other terms as  $h$  becomes very small. In addition, if we think of  $Y$  as binomial, then  $Y(t)^2 = 1$ . This leads us to write

$$

[ X (t + h) - X (t) ] ^ {2} \approx \sigma^ {2} X (t) ^ {2} h

$$ or


$$

[ d X (t) ] ^ {2} = \sigma^ {2} X (t) ^ {2} d t

$$ essentially ignoring all terms that are higher powers of  $h$ . This equation tells us that if we look at the squared stock price change over a small interval, all we are seeing is the effect of the variance.

We can also consider terms like

$$
[ X (t + h) - X (t) ] h
$$

Rewriting this expression gives us

$$
\left[ \alpha X (t) h + \sigma X (t) Y (t) \sqrt {h} \right] h = \alpha X (t) h ^ {2} + \sigma X (t) Y (t) h ^ {1. 5}
$$

Since the smallest power of  $h$  is 1.5, this entire term vanishes relative to  $h$  as  $h$  goes to zero.

One way to make these calculations mechanical is to use the following so-called multiplication rules for terms containing  $dt$  and  $dZ$ :

$$ d t \times d Z = 0 \tag {15a}
$$

$$
(d t) ^ {2} = 0 \tag {15b}
$$

$$
(d Z) ^ {2} = d t \tag {15c}
$$

The reasoning behind these multiplication rules is that the multiplications resulting in powers of  $dt$  greater than 1 vanish in the limit.

# Modeling Correlated Asset Prices

Some derivatives have a payoff depending on more than one asset price. In order to price such a derivative it is necessary to specify the pairwise correlations among the various assets. To be concrete, suppose that we have  $m$  asset processes

$$ d X _ {i} / X _ {i} = \left(\alpha_ {i} - \delta_ {i}\right) d t + \sigma_ {i} d Z _ {i} \quad i = 1, \dots , m \tag {16}
$$

The correlation between  $X_{i}$  and  $X_{j}$  will be generated by correlation between the uncertain part of the returns, the Brownian processes  $Z_{i}(t)$  and  $Z_{j}(t)$ . We can create correlated diffusion processes by expressing  $dZ_{i}$  and  $dZ_{j}$  as sums of independent diffusions.

An example will illustrate how to construct correlated  $dZ_{i}(t)$ 's. Suppose that we want the returns on stocks 1 and 2 to have correlation  $\rho dt$ . This means that  $dZ_{1}(t)$  and  $dZ_{2}(t)$  — which are the source of randomness—must exhibit a correlation of  $\rho dt$ . Let  $W_{1}(t)$  and  $W_{2}(t)$  be independent Brownian motions and define

$$ d Z _ {1} (t) = d W _ {1} (t); \qquad d Z _ {2} (t) = \rho d W _ {1} (t) + \sqrt {1 - \rho^ {2}} d W _ {2} (t)
$$

This is known as the Cholesky decomposition. In order to evaluate the product  $dZ_{1}(t)dZ_{2}(t)$ , we need to evaluate both  $dW_{1}(t)^{2}$  and  $dW_{1}(t)dW_{2}(t)$ . We know from our previous discussion of multiplication rules that  $dW_{1}(t)^{2} = dt$ . But how do we evaluate the product  $dW_{1}(t)dW_{2}(t)$ ?

The independence of  $W_{1}(t)$  and  $W_{2}(t)$  implies that

$$
\mathrm {E} _ {t} \left\{\left[ W _ {1} (t + s) - W _ {1} (t) \right] \left[ W _ {2} (t + s) - W _ {2} (t) \right] \right\} = 0
$$

(You can think of the increments to each process as generated by independent binomial random variables.) Using the differential notation, we can write  $dW_{i}(t)\times dW_{j}(t) = 0$

We therefore have

$$
\begin{array}{l} d Z _ {1} (t) d Z _ {2} (t) = d W _ {1} (t) [ \rho d W _ {1} (t) + \sqrt {1 - \rho^ {2}} d W _ {2} (t) ] \\ = \rho d W _ {1} (t) ^ {2} + \sqrt {1 - \rho^ {2}} d W _ {1} (t) d W _ {2} (t) \\ = \rho d t \\ \end{array}
$$

We can generalize this example to  $n$  processes as follows. We construct the  $dZ_{i}$  in equation (16) as

$$ d Z _ {i} (t) = \sum_ {k = 1} ^ {n} \lambda_ {i, k} d W _ {k} (t) \tag {17}
$$ where we scale the coefficients so that  $\sum_{k=1}^{n} \lambda_{i,k}^2 = 1$ . (In the previous example, the squared coefficients also summed to 1.) Because the Brownian increments are jointly-normally


distributed, their sum is normal. We also have

$$

\operatorname {V a r} \left[ d Z _ {i} (t) \right] = \operatorname {V a r} \left(\sum_ {k = 1} ^ {n} \lambda_ {i, k} d W _ {k} (t)\right) = \sum_ {k = 1} ^ {n} \lambda_ {i, k} ^ {2} d W _ {k} (t) ^ {2} = d t

$$

The correlation depends on the sum of the product of the weights:6

$$ d Z _ {i} (t) d Z _ {j} (t) = \sum_ {k = 1} ^ {n} \lambda_ {i, k} d W _ {k} (t) \sum_ {k = 1} ^ {n} \lambda_ {j, k} d W _ {k} (t) = \sum_ {k = 1} ^ {n} \lambda_ {i, k} \lambda_ {j, k} d t \equiv \rho_ {i, j} d t
$$ where  $\rho_{i,j} \equiv \sum_{k=1}^{n} \lambda_{i,k} \lambda_{j,k}$ . This calculation uses the fact that  $dW_i(t)$  and  $dW_j(t)$  are independent if  $i \neq j$ , so that  $dW_i(t)dW_j(t) = 0, i \neq j$ .


Example 1. Let  $X_{i}(t)$  be given by equation (16), with  $dZ_{i}(t)$  given by equation (17). Using the multiplication rules, we can compute  $dX_{i}(t)^{2}$  and  $dX_{i}(t)dX_{j}(t)$ :

$$

\begin{array}{l} d X _ {i} (t) ^ {2} = X _ {i} (t) ^ {2} \left[ (\alpha_ {i} - \delta_ {i}) d t ^ {2} + (\alpha_ {i} - \delta_ {i}) \sigma_ {i} d t d Z _ {i} + \sigma_ {i} ^ {2} d Z _ {i} ^ {2} \right] \\ = X _ {i} (t) ^ {2} \sigma_ {i} ^ {2} d t \tag {18} \\ \end{array}

$$

$$

\begin{array}{l} d X _ {i} (t) d X _ {j} (t) = X _ {i} (t) X _ {j} (t) \Big [ (\alpha_ {i} - \delta_ {i}) (\alpha_ {j} - \delta_ {j}) d t ^ {2} + (\alpha_ {i} - \delta_ {i}) \sigma_ {j} d t d Z _ {j} \\ \left. + \left(\alpha_ {j} - \delta_ {j}\right) \sigma_ {i} d t d Z _ {i} + \sigma_ {i} \sigma_ {j} d Z _ {i} d Z _ {j} \right] \\ = X _ {i} (t) X _ {j} (t) \sigma_ {i} \sigma_ {j} \rho_ {i, j} d t \tag {19} \\ \end{array}

$$ where  $\rho_{i,j} = \sum_{k = 1}^{n}\lambda_{i,k}\lambda_{j,k}dt$

# 4. ITO'S LEMMA

The price of a call option depends on the stock price. If the stock price follows an Itô process (e.g., geometric Brownian motion), the price of the call option will also follow an Itô process. Itô's Lemma, which we discuss in this section, is a tool for deriving the process followed by a call (or any other derivative with a payoff depending on the stock price) when the underlying stock follows an Itô process.

We will assume that the stock price,  $S(t)$ , follows the Itô process given by

$$ d S (t) = \left\{\hat {\alpha} [ S (t), t ] - \hat {\delta} [ S (t), t ] \right\} d t + \hat {\sigma} [ S (t), t ] d Z (t) \tag {20}
$$

In this equation, the expected return,  $\alpha$ , the dividend yield,  $\delta$ , and the volatility,  $\sigma$ , can be functions of the stock price and time. When we specify that  $S(t)$  follows geometric Brownian motion, then we are assuming specifically that  $\hat{\alpha}[S(t), t] = \alpha S(t)$ ,  $\hat{\delta}[S(t), t] = \delta S(t)$ , and  $\hat{\sigma}[S(t), t] = \sigma S(t)$ .

# FIGURE I

Illustration of Jensen's inequality. The function  $V[S(t)]$  is convex. Equally spaced changes in  $S(t)$  give rise to unequally spaced changes in  $V(S(t))$ . In particular,  $V[S(t) + \epsilon] - V[S(t)] > V[S(t) - \epsilon]$  because  $V$  is an increasing convex function of  $S$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/1275ddfa9664694390dde711af3e27423b2760acce15a42ba1716b17fb0950fd.jpg)

# Functions of an Itô Process

Consider an option with price  $V(S_{t}, t)$ , where  $S_{t}$  is the time  $t$  stock price. To understand how the option will behave, consider a stock price process in which  $S$  obeys a geometric random walk with equal probabilities of up and down moves. Figure 1 illustrates this situation. Notice that equal changes up and down in  $S$  do not give rise to equal changes in  $V(S, t)$ . Since  $V$  is an increasing convex function of  $S$ , a change to  $S + \epsilon$  increases  $V$  by more than a change to  $S - \epsilon$  decreases  $V$ . Thus, if the expected change in  $S$  is zero, the expected change in  $V$  will not be zero. Intuitively, the actual expected change in  $V$  will depend on the curvature of  $V$  and the probability distribution of  $S$ , which tells us the expected size of the up and down moves.

In Figure 1, the second derivative is positive; that is, the slope of  $V$  becomes greater as  $S$  increases. As is evident in the figure, the expected change in  $V$  will then be positive. The figure illustrates Jensen's inequality:  $V[\operatorname{E}(S)] \leq \operatorname{E}[V(S)]$  if  $V$  is convex.

Using a Taylor series expansion, we can see how  $V$  depends on  $S$ . We have

$$
\begin{array}{l} V (S + d S, t + d t) = V (S, t) + V _ {S} d S + V _ {t} d t \\ + \frac {1}{2} V _ {S S} (d S) ^ {2} + \frac {1}{2} V _ {t t} (d t) ^ {2} + V _ {S t} d S d t \\ + \text {t e r m s i n} (d t) ^ {3 / 2} \text {a n d h i g h e r} \\ \end{array}
$$

The multiplication rules already discussed in Section 3 tell us that since  $S$  is an Itô process, the terms  $(dt)^2$  and  $dS \times dt$  vanish, along with all higher-order terms. Intuitively, since the interval of time is short, the noise term dominates, and the squared noise term is the same order of magnitude as the drift. This result stems from the property of quadratic variation that we discussed in Section 2. If we integrate the Taylor expansion with respect to time, then the term containing squared changes will be proportional to time. Higher-order terms will sum to zero. This calculation is the basis for Itô's Lemma.

Proposition I (Itô's Lemma) Let the change in the stock price be given by equation (20). If  $C[S(t), t]$  is a twice-differentiable function of  $S(t)$ , then the change in  $C, dC[S(t), t]$ , is

$$
\begin{array}{l} d C (S, t) = C _ {S} d S + \frac {1}{2} C _ {S S} (d S) ^ {2} + C _ {t} d t \tag {21} \\ = \left\{\left[ \hat {\alpha} (S, t) - \hat {\delta} (S, t) \right] C _ {S} + \frac {1}{2} \hat {\sigma} (S, t) ^ {2} C _ {S S} + C _ {t} \right\} d t + \hat {\sigma} (S, t) C _ {S} d Z \\ \end{array}
$$

(We use the notation  $C_S = \partial C / \partial S$ ,  $C_{SS} = \partial^2 C / \partial S^2$ , and  $C_t = \partial C / \partial t$ .) The terms in braces are the expected change in the option price.

In the case where  $S(t)$  follows geometric Brownian motion, we have  $\hat{\alpha}[S(t), t] = \alpha S(t), \hat{\delta}[S(t), t] = \delta S(t)$ , and  $\hat{\sigma}[S(t), t] = \sigma S(t)$ ; hence,

$$ d C (S, t) = \left[ (\alpha - \delta) S C _ {S} + \frac {1}{2} \sigma^ {2} S ^ {2} C _ {S S} + C _ {t} \right] d t + \sigma S C _ {S} d Z
$$

If there is no uncertainty  $(\sigma = 0)$  or if  $C(S, t)$  is linear  $(C_{SS} = 0)$ , then Ito's Lemma reduces to the calculation of a total derivative familiar from ordinary calculus:

$$ d C (S, t) = C _ {S} d S + C _ {t} d t
$$

The extra term involving the variance arises from  $(dS)^2$  and is the Jensen's inequality correction stemming from the uncertainty of the stochastic process coupled with the curvature of  $C(S, t)$ .

Consider the following equation:

$$
\begin{array}{l} C [ S (t + h), t + h ] - C [ S (t), t ] \approx [ S (t + h) - S (t) ] \Delta [ S (t), t ] \\ + \frac {1}{2} [ S (t + h) - S (t) ] ^ {2} \Gamma [ S (t), t ] + \theta [ S (t), t ] h \\ \end{array}
$$

Make the substitutions  $h \to dt$  and  $S(t + h) - S(t) \to dS$ , and  $\Gamma, \Delta$ , and  $\theta$  are just partial derivatives of the option price:

$$
\Delta \equiv C _ {S}; \qquad \Gamma \equiv C _ {S S}; \qquad \theta = C _ {t}
$$

The delta-gamma approximation over a very short period of time is just Itô's Lemma.

We can use Itô's Lemma to verify that the expression for a lognormal stock price satisfies the equation for geometric Brownian motion, equation (20).

Example 2. The expression for a lognormal stock price is

$$
S (t) = S (0) e ^ {(\alpha - \delta - \frac {1}{2} \sigma^ {2}) t + \sigma Z (t)} \tag {22}
$$

The stock price is a function of the Brownian process  $Z(t)$ . We can use Itô's Lemma to characterize the behavior of the stock as a function of  $Z(t)$ . We have

$$
\frac {\partial S (t)}{\partial t} = \left(\alpha - \delta - \frac {1}{2} \sigma^ {2}\right) S (t); \quad \frac {\partial S (t)}{\partial Z (t)} = \sigma S (t); \quad \frac {\partial^ {2} S (t)}{\partial Z (t) ^ {2}} = \sigma^ {2} S (t)
$$

Itô's Lemma states that  $dS(t)$  is given as

$$
\begin{array}{l} d S (t) = \frac {\partial S (t)}{\partial t} d t + \frac {\partial S (t)}{\partial Z (t)} d Z (t) + \frac {1}{2} \frac {\partial^ {2} S (t)}{\partial Z (t) ^ {2}} [ d Z (t) ] ^ {2} \\ = \left(\alpha - \delta - \frac {1}{2} \sigma^ {2}\right) S (t) d t + \sigma S (t) d Z (t) + \frac {1}{2} \sigma^ {2} S (t) d t \\ = (\alpha - \delta) S (t) d t + \sigma S (t) d Z (t) \\ \end{array}
$$

In going from the second line to the third we have used the fact that  $dZ(t)^2 = dt$ . This calculation demonstrates that by using Ito's Lemma to differentiate equation (22), we recover equation (20).

Example 3. Let  $Y(t) = \ln [S(t)]$ . Then

$$ d \ln [ S (t) ] = \frac {d S (t)}{S (t)} - \frac {1}{2} \frac {d S (t) ^ {2}}{S (t) ^ {2}} = \frac {d S (t)}{S (t)} - \frac {1}{2} \sigma^ {2} d t \tag {23}
$$

Thus,  $d\ln [S(t)]$  follows the same process as  $dS(t) / S(t)$ , except with a drift term arising from the concavity of the logarithmic function. This is due to Jensen's inequality.

Note that equation (23) implies that continuously compounded returns—measured as  $\ln(S(T) / S(0))$ —are lower than the instantaneous return,  $\alpha - \delta$ , by the factor  $0.5\sigma^2$ .

# Multivariate Itô's Lemma

So far we have considered the case where the value of an option depends on a single Itô process. A derivative may have a value depending on more than one price, in which case we can use a multivariate generalization of Itô's Lemma.

Proposition 2 (Multivariate Itô's Lemma) Suppose we have  $n$  correlated Itô processes:

$$
\frac {d S _ {i} (t)}{S _ {i} (t)} = \alpha_ {i} d t + \sigma_ {i} d Z _ {i}, \quad i = 1, \ldots , n
$$

Denote the pairwise correlations as  $\operatorname{E}(dZ_i \times dZ_j) = \rho_{i,j} dt$ . If  $C(S_1, \ldots, S_n, t)$  is a twice-differentiable function of the  $S_i$ 's, we have

$$ d C (S _ {1}, \dots , S _ {n}, t) = \sum_ {i = 1} ^ {n} C _ {S _ {i}} d S _ {i} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} d S _ {i} d S _ {j} C _ {S _ {i} S _ {j}} + C _ {t} d t
$$

The expected change in  $C$  per unit time is

$$
\frac {1}{d t} \mathrm {E} [ d C (S _ {1}, \dots , S _ {n}, t) ] = \sum_ {i = 1} ^ {n} \alpha_ {i} S _ {i} C _ {S _ {i}} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \sigma_ {i} \sigma_ {j} \rho_ {i j} S _ {i} S _ {j} C _ {S _ {i} S _ {j}} + C _ {t}
$$

Example 4. Suppose  $C(S_1, S_2) = S_1S_2$ . Then by Ito's Lemma we have

$$ d \left(S _ {1} S _ {2}\right) = S _ {2} d S _ {1} + S _ {1} d S _ {2} + d S _ {1} d S _ {2}
$$

This implies that

$$
\mathrm {E} (d C) = \left(\alpha_ {1} + \alpha_ {2} + \rho \sigma_ {1} \sigma_ {2}\right) S _ {1} S _ {2} d t
$$

Note that since  $C(S_1, S_2)$  does not depend explicitly on time,  $C_t = 0$ .

Example 4 is interesting because we know that the product of lognormal variables is lognormal. Hence, we might expect that the drift for the product of two lognormal variables would just be the sum of the drifts. However, the drift has an extra term, due to the covariation between the two variables.

Example 5. Suppose  $C(S_1, S_2) = S_1 / S_2$ . Then by Itô's Lemma we have

$$ d \left(\frac {S _ {1}}{S _ {2}}\right) = d S _ {1} \frac {1}{S _ {2}} - d S _ {2} \frac {S _ {1}}{S _ {2} ^ {2}} + 0. 5 \left[ 2 (d S _ {2}) ^ {2} \frac {S _ {1}}{S _ {2} ^ {3}} - 2 d S _ {1} d S _ {2} \frac {1}{S _ {2} ^ {2}} \right]
$$

This implies that

$$ d \left(\frac {S _ {1}}{S _ {2}}\right) \frac {S _ {2}}{S _ {1}} = \left(\alpha_ {1} - \alpha_ {2} + \sigma_ {2} ^ {2} - \rho \sigma_ {1} \sigma_ {2}\right) d t + \sigma_ {1} d Z _ {1} - \sigma_ {2} d Z _ {2} \tag {24}
$$

From the earlier discussion of correlated Itô processes, we can also write (24) as

$$ d \left(\frac {S _ {1}}{S _ {2}}\right) \frac {S _ {2}}{S _ {1}} = \left(\alpha_ {1} - \alpha_ {2} + \sigma_ {2} ^ {2} - \rho \sigma_ {1} \sigma_ {2}\right) d t + \hat {\sigma} d Z
$$ where  $\hat{\sigma} = \sigma_1^2 +\sigma_2^2 -2\rho \sigma_1\sigma_2$  and  $dZ = (\sigma_{1}dZ_{1} - \sigma_{2}dZ_{2}) / \hat{\sigma}$


Even if  $S_{1}$  and  $S_{2}$  have equal drifts (i.e.,  $\alpha_{1} = \alpha_{2}$ ), the ratio of the two prices will not generally have zero drift because of Jensen's inequality.

# 5. THE SHARPE RATIO

If asset  $i$  has expected return  $\alpha_{i}$ , the risk premium is defined as

$$

\text {R i s k p r e m i u m} _ {i} = \alpha_ {i} - r

$$ where  $r$  is the risk-free rate. The Sharpe ratio for asset  $i$  is the risk premium,  $\alpha_{i} - r$ , per unit of volatility,  $\sigma_{i}$ :

$$
\text {S h a r p e} _ {i} = \frac {\alpha_ {i} - r}{\sigma_ {i}} \tag {25}
$$

The main point of this section is to present and discuss the result that two assets with prices driven by the same  $dZ$ , and hence with returns that are perfectly correlated, will have the same Sharpe ratio.

At the outset, we should note that the Sharpe ratio is commonly used to compare well-diversified portfolios and is not intended to compare individual assets. In particular, if diversifiable risk is different, two assets with the same  $\sigma$  can have different risk premiums (and hence different Sharpe ratios) if they have different covariances with the market. However, we can use the Sharpe ratio to compare two perfectly correlated claims, such as a derivative and its underlying asset.

To see that two perfectly correlated assets must have the same Sharpe ratio, consider the processes for two non-dividend-paying stocks:

$$ d S _ {1} = \alpha_ {1} S _ {1} d t + \sigma_ {1} S _ {1} d Z \tag {26}
$$

$$ d S _ {2} = \alpha_ {2} S _ {2} d t + \sigma_ {2} S _ {2} d Z \tag {27}
$$

Because the two stock prices are driven by the same  $dZ$ , it must be the case that  $(\alpha_{1} - r) / \sigma_{1} = (\alpha_{2} - r) / \sigma_{2}$ , or else there will be an arbitrage opportunity.

The arbitrage is straightforward. Suppose that the Sharpe ratio for asset 1 is greater than that for asset 2. We then buy  $1 / (\sigma_1 S_1)$  shares of asset 1 and short  $1 / (\sigma_2 S_2)$  shares of asset 2. These two positions will generally have different costs, so we invest (or borrow) the cost difference,  $1 / \sigma_1 - 1 / \sigma_2$ , by buying (or borrowing) the risk-free bond, which has the rate of return  $r dt$ . The return on the two assets and the risk-free bond is

$$
\frac {1}{\sigma_ {1} S _ {1}} d S _ {1} - \frac {1}{\sigma_ {2} S _ {2}} d S _ {2} + \left(\frac {1}{\sigma_ {2}} - \frac {1}{\sigma_ {1}}\right) r d t = \left(\frac {\alpha_ {1} - r}{\sigma_ {1}} - \frac {\alpha_ {2} - r}{\sigma_ {2}}\right) d t \tag {28}
$$

This demonstrates that if the Sharpe ratio of asset 1 is greater than that of asset 2, we can construct a zero-investment portfolio with a positive risk-free return. Therefore, to preclude arbitrage, assets 1 and 2 must have the same Sharpe ratio.

The Sharpe ratio for a stock and an option on the stock are the same. The reason is that the stock and option have the same underlying source of risk—the same  $dZ$ . They do not have the same volatility—the volatility of a call option is greater than that of the stock—and, hence, they do not have the same risk premium. However, they do have the same Sharpe ratio.

# 6. RISK-NEUTRAL VALUATION

In this section we provide some examples of risk-neutral valuation of some simple claims when an asset price,  $S(t)$ , follows geometric Brownian motion:

$$
\frac {d S (t)}{S (t)} = (\alpha - \delta) d t + \sigma d \tilde {Z} (t) \tag {29}
$$

Equation (29) describes the evolution of the stock price in the real world: the physical distribution. The corresponding risk-neutral distribution for the stock is

$$
\frac {d S (t)}{S (t)} = (r - \delta) d t + \sigma d Z (t) \tag {30}
$$

We have previously used the fact that if a claim has the time  $T$  payoff  $V(S(T), T)$ , we can compute its price,  $V(S(0), 0)$ , by computing the expected payoff under the risk-neutral distribution and discounting that expectation at the risk-free rate:

$$
V (S (0), 0) = e ^ {- r T} \mathrm {E} _ {0} ^ {*} [ V (S (T), T) ] \tag {31}
$$ where  $\mathrm{E}_0^*$  represents an expectation under the risk-neutral distribution. In this section we will illustrate valuation for some simple claims using equation (31).


# A Claim That Pays  $S(T)^a$

Consider a claim that pays  $V(S(T), T) = S(T)^a$ . Because  $S$  follows geometric Brownian motion, the terminal price,  $S(T)$ , is lognormally distributed. The expected payoff to the claim is

$$

S (T) ^ {a} = S (0) ^ {a} e ^ {a (r - \delta - 0. 5 \sigma^ {2}) T + a \sigma Z (T)}

$$

Computing the expectation of a lognormal variable, and discounting at the risk-free rate, we have

$$

\begin{array}{l} e ^ {- r T} \mathrm {E} [ S (T) ^ {a} ] = e ^ {- r T} S (0) ^ {a} e ^ {a (r - \delta - 0. 5 \sigma^ {2}) T + 0. 5 a ^ {2} \sigma^ {2} T} \\ = e ^ {- r T} S (0) ^ {a} e ^ {[ a (r - \delta) + 0. 5 a (a - 1) \sigma^ {2} ] T} \\ \end{array}

$$

This is the present value—or alternatively, the prepaid forward price—for a claim that pays  $S(T)^a$ . The forward price is the expectation without discounting.

Proposition 3 Suppose that  $S(t)$  follows the process given by equation (30) and that the risk-free rate is constant. The value at time 0 of a claim paying  $S(T)^a$  —the prepaid forward price—is

$$

F _ {0, T} ^ {P} [ S (T) ^ {a} ] = e ^ {- r T} S (0) ^ {a} e ^ {\left[ a (r - \delta) + \frac {1}{2} a (a - 1) \sigma^ {2} \right] T} \tag {32}

$$

The forward price for  $S(T)^a$  is

$$

F _ {0, T} [ S (T) ^ {a} ] = S (0) ^ {a} e ^ {\left[ a (r - \delta) + \frac {1}{2} a (a - 1) \sigma^ {2} \right] T} \tag {33}

$$

An alternative way to compute  $\operatorname{E}[S(T)^a]$  is to use Ito's Lemma to derive the process followed by  $S(t)^a$ . We have

$$

\begin{array}{l} d S ^ {a} = a S ^ {a - 1} d S + 0. 5 a (a - 1) S ^ {a - 2} d S ^ {2} \\ = a S ^ {a} \frac {d S}{S} + 0. 5 a (a - 1) S ^ {a} \sigma^ {2} d t \\ \end{array}

$$

Using equation (30), this implies that

$$

\frac {d S (t) ^ {a}}{S ^ {a}} = [ a (r - \delta) + 0. 5 a (a - 1) \sigma^ {2} ] d t + a \sigma d Z \tag {34}

$$

The solution to equation (34) is

$$

S (T) ^ {a} = S (0) ^ {a} e ^ {a (r - \delta + 0. 5 a (a - 1) \sigma^ {2}) T - 0. 5 a ^ {2} \sigma^ {2} T + a \sigma Z (T)}

$$

You can see this by analogy with the solution for  $dS / S$ , in which the deterministic term in the exponent is the drift minus one-half the variance. Computing  $\mathrm{E}_0^*[S(0)^a]$  using this equation yields equation (33).

Finally, it is important to note that, whereas the present value of a non-dividend-paying stock is today's stock price, the present value of a claim paying  $S(T)^a$  is not  $S(0)^a$ . The reason is Jensen's inequality. When  $a > 1$ , the payoff is convex and investors will pay extra in order to obtain the boost to returns afforded by that convexity (gains on the stock benefit from an increase in the delta of the claim, while losses are damped by a decrease in delta). When  $a < 1$ , the payoff is concave and investors value the claim at less than  $S(0)^a$  because positive returns are damped (gains on the stock are reduced on the claim due to the reduction in delta, while losses are enhanced by the increase in delta). You can see these effects in equation (32), where the price of the claim depends upon  $a - 1$ . One simple way to summarize this is that  $S(0)$  and  $S(0)^a$  cannot simultaneously be the fair prices for claims paying  $S(T)$  and  $S(T)^a$ . If the stock is a traded asset, then the price of a claim paying  $S^a$  requires a Jensen's inequality adjustment.

# Specific Examples

We now examine four special cases of equations (32) and (33):  $a = -1, 0, 1$ , and 2.

Claims on  $S$ . First, suppose  $a = 1$ . Equation (32) then gives us

$$

V (0) = S (0) e ^ {- \delta T}

$$

This is the prepaid forward price on a stock.

Claims on  $S^0$ . If  $a = 0$ , the claim does not depend on the stock price; rather, since  $S^0 = 1$  it is a bond. Setting  $a = 0$  gives us

$$

V (0) = e ^ {- r T}

$$

This is the price of a  $T$ -period pure discount bond.

Claims on  $S^2$ . When  $a = 2$ , the claim pays  $S(T)^2$ . From equation (33), the forward price is

$$

\begin{array}{l} F _ {0, T} (S ^ {2}) = e ^ {r T} S (0) ^ {2} e ^ {- [ - r + 2 \delta - \sigma^ {2} ] T} \\ = S (0) ^ {2} e ^ {2 (r - \delta) T} e ^ {\sigma^ {2} T} \tag {35} \\ = \left[ F _ {0, T} (S) \right] ^ {2} e ^ {\sigma^ {2} T} \\ \end{array}

$$

Thus, the forward price on the squared stock price is the squared forward price times a variance term. The squared forward price is intuitive, but the variance term requires some discussion.

One way to think about equation (35) is to perform the following thought experiment. Suppose that we have an ordinary stock with a price denominated in dollars. Now imagine that we have a second stock that is identical to the first except that instead of receiving dollars when we sell the stock, we receive one share of ordinary stock for each dollar in the quoted price of the second stock. This conversion from dollars to shares is what it means to have a squared security.

With the squared stock, when the stock price goes up, we not only receive the extra dollars a share of stock is worth, but we also receive the appreciated value of each share that we receive in lieu of dollars. We therefore receive an extra gain when the stock price goes up.

The effect works in reverse when the price goes down. In that case, we receive fewer dollars per share, and each share received in lieu of dollars is worth less as well. However, the lower price per share hurts us less because we receive fewer shares! Thus, on average, the extra we receive when the price goes up exceeds the loss when the price goes down. This effect becomes more important as the variance is greater, since large losses and large gains become more likely.

The result is that we will pay extra for the security, and the extra amount is positively related to the variance.

Claims on  $1 / S$ . Finally, let  $a = -1$ , so the claim pays  $1 / S$ . Using equation (33) with  $a = -1$ , we get

$$

\begin{array}{l} F _ {0, T} (1 / S) = \left[ 1 / S (0) \right] e ^ {(\delta - r) T} e ^ {\sigma^ {2} T} \\ = F _ {0, T} ^ {- 1} e ^ {\sigma^ {2} T} \\ \end{array}

$$

As with the squared security, the forward price is increasing in volatility.

The payoffs for both the  $S^2$  and  $1 / S$  securities are convex; hence, Jensen's inequality tells us that the price is higher when the asset price is risky than when it is certain. In both cases the forward price contains a volatility term, and in both cases the price is increasing in volatility. If we considered a concave claim—for example,  $\sqrt{S}$ —the effect of increased volatility would be to lower the value of the claim. Problems 5-8 provide examples.

# Valuing a Claim on  $S^a Q^b$

We now consider a claim based on the product of two asset prices. Consider a claim paying  $S(T)^a Q(T)^b$  where  $S$  and  $Q$  follow the risk-neutral processes

$$

\frac {d S}{S} = \left(r - \delta_ {S}\right) d t + \sigma_ {S} d Z _ {S} \tag {36}

$$ and  $Q$  follows

$$
\frac {d Q}{Q} = \left(r - \delta_ {Q}\right) d t + \sigma_ {Q} d Z _ {Q} \tag {37}
$$ where


$$ d Z _ {S} d Z _ {Q} = \rho d t
$$

Proposition 4 Suppose that  $S$  and  $Q$  follow the processes given by equations (36) and (37). The forward prices for  $S^a$  and  $Q^b$  are given by Proposition 3. The forward price for  $S^a Q^b$  is the product of those two forward prices times a covariance correction factor:

$$
F _ {t, T} (S ^ {a} Q ^ {b}) = F _ {t, T} (S ^ {a}) F _ {t, T} (Q ^ {b}) e ^ {a b \rho \sigma_ {S} \sigma_ {Q} (T - t)}
$$

The variance of  $S^a Q^b$  is given by

$$ a ^ {2} \sigma_ {S} ^ {2} + b ^ {2} \sigma_ {Q} ^ {2} + 2 a b \rho \sigma_ {S} \sigma_ {Q}
$$

The squared security,  $S^2$ , is a special case of Proposition 4. When  $S = Q$ ,  $a = b = 1$  and  $\rho = 1$  (since a variable is perfectly correlated with itself), the covariance term becomes

$$ a b \rho \sigma_ {S} \sigma_ {Q} = \sigma_ {S} ^ {2}
$$

This gives us the same result as equation (35) for the forward price for a squared stock.

We obtain the price for the claim by computing  $e^{-r(T - t)}\mathrm{E}_t^* \left[ S(T)^a Q(T)^b \right]$ . We can compute the expectation by using the fact that  $S(T)^a$  and  $Q(T)^b$  are both lognormal. We have

$$
\begin{array}{l} S (T) ^ {a} Q (T) ^ {b} = S (0) ^ {a} e ^ {a (r - \delta_ {S} - 0. 5 \sigma_ {S} ^ {2}) T + a \sigma_ {S} Z _ {S} (T)} Q (0) ^ {b} e ^ {b (r - \delta_ {Q} - 0. 5 \sigma_ {Q} ^ {2}) T + b \sigma_ {Q} Z _ {Q} (T)} \\ = S (0) ^ {a} Q (0) ^ {b} e ^ {a (r - \delta_ {S} - 0. 5 \sigma_ {S} ^ {2}) T + b (r - \delta_ {Q} - 0. 5 \sigma_ {Q} ^ {2}) T} e ^ {a \sigma_ {S} Z _ {S} (T) + b \sigma_ {Q} Z _ {Q} (T)} \\ \end{array}
$$

Note that the expectation of the second exponential term is

$$ e ^ {0. 5 \left[ a ^ {2} \sigma_ {S} ^ {2} + b ^ {2} \sigma_ {Q} ^ {2} + 2 a b \sigma_ {S} \sigma_ {Q} \rho \right] T}
$$

The expected time-  $T$  value of  $S^a Q^b$  under the risk-neutral measure is therefore

$$
\mathrm {E} _ {0} ^ {B} [ S (T) ^ {a} Q (T) ^ {b} ] = S (0) ^ {a} Q (0) ^ {b} e ^ {[ a (r - \delta_ {S}) + b (r - \delta_ {Q}) + \frac {1}{2} a (a - 1) \sigma_ {S} ^ {2} + \frac {1}{2} b (b - 1) \sigma_ {Q} ^ {2} + a b \rho \sigma_ {S} \sigma_ {Q} ] T}
$$

Using Proposition 3—in particular, equation (33)—this expression can be rewritten as

$$
F _ {0, T} \left(S ^ {a} Q ^ {b}\right) = F _ {0, T} \left(S ^ {a}\right) F _ {0, T} \left(Q ^ {b}\right) e ^ {a b \rho \sigma_ {S} \sigma_ {Q} T} \tag {38}
$$

The expression on the right is the product of the forward prices times a factor that accounts for the covariance between the two assets.

This is an important result: The price that results when we multiply two prices together requires a correction for the covariance.

Proposition 4 can be generalized. Suppose there are  $n$  stocks, each of which follows the process

$$
\frac {d S _ {i}}{S _ {i}} = \left(\alpha_ {i} - \delta_ {i}\right) d t + \sigma_ {i} d z _ {i} \tag {39}
$$ where  $dz_{i}dz_{j} = \rho_{ij}dt$ . Let


$$

V (t) = \prod_ {i = 1} ^ {n} S _ {i} ^ {a _ {i}} \tag {40}

$$

The forward price for  $V$  is then

$$

F _ {0, T} (V) = \prod_ {i = 1} ^ {n} \left[ F _ {0, T} \left(S _ {i}\right) \right] ^ {a _ {i}} e ^ {\sum_ {i = 1} ^ {n - 1} \sum_ {j = i + 1} ^ {n} \rho_ {i j} \sigma_ {i} \sigma_ {j} a _ {i} a _ {j} T} \tag {41}

$$

# 7. JUMPS IN THE STOCK PRICE

A practical objection to the Brownian process as a model of the stock price is that Brownian paths are continuous—there are no discrete jumps in the stock price. In practice, asset prices occasionally do seem to jump; a famous example is October 19, 1987, when the Dow Jones index fell  $22\%$  in a single day. A move of this size is exceedingly unlikely in the lognormal model. On a smaller scale, consider the stock price of a company that reports unexpectedly favorable earnings. To account for such nonlognormal behavior, Merton (1976) proposed modeling the stock price as lognormal with an occasional discrete jump.

We can use the Poisson to count the number of jumps that occur in any interval. Conditional on a jump occurring, we assign some distribution to the change in the stock price. The lognormal is a convenient choice for computing the price change if the jump occurs.

We can write a stock price process with jumps as follows. With the Poisson process, the probability of a jump event is proportional to the length of time. Furthermore, for an infinitesimal interval  $dt$ , the probability of more than a single jump is zero (this is part of the definition of the Poisson process). Let  $q(t)$  represent the cumulative jump and  $dq$  the change in the cumulative jump. Most of the time, there is no jump and  $dq = 0$ . When there is a jump, the random variable  $Y$  denotes the magnitude of the jump, and  $k = E(Y) - 1$  is then the expected percentage change in the stock price. If  $\lambda$  is the expected number of jumps per unit time over an interval  $dt$ , then

$$

\begin{array}{l} \Pr (\text {j u m p}) = \lambda d t \\ \Pr (\text {n o j u m p}) = 1 - \lambda d t \\ \end{array}

$$

We can then write the stock price process as

$$ d S (t) / S (t) = (\alpha - \lambda k) d t + \sigma d Z + d q \tag {42}
$$ where


$$ d q = \left\{ \begin{array}{l l} 0 & \text {i f t h e r e i s n o j u m p} \\ Y - 1 & \text {i f t h e r e i s a j u m p} \end{array} \right.
$$ and  $\mathrm{E}(dq) = \lambda kdt$ . The drift term contains  $-\lambda kdt$  for the following reason: The  $dq$  term has a nonzero expectation, so we subtract  $\lambda kdt$  in order to preserve the interpretation of  $\alpha$  as the expected return on the stock. We have


$$

\mathrm {E} (d S / S) = (\alpha - \lambda k) d t + \mathrm {E} (\sigma d Z) + \mathrm {E} (d q) = \alpha d t

$$

Thus, for example, if there is on average a downward jump, then  $k < 0$ , and, when no jump is occurring, we need extra drift of  $-\lambda kdt > 0$  to compensate for the occasional bad times due to the jump.

The upshot of this model is that when no jump is occurring, the stock price  $S$  evolves as geometric Brownian motion. When the jump occurs, the new stock price is  $YS$ .

Proposition 5 Suppose an asset follows equation (42). If  $C(S, t)$  is a twice continuously differentiable function of the stock price, the process followed by  $C$  is

$$ d C (S, t) = C _ {S} d S + \frac {1}{2} C _ {S S} \sigma^ {2} S ^ {2} d t + C _ {t} d t + \lambda E _ {Y} [ C (S Y, t) - C (S, t) ] \tag {43}
$$

The last term in equation (43) is the expected change in the option price conditional on the jump times the probability of the jump.

The last term in equation (43) accounts for the jump. That term is not present in the version of Itô's Lemma for a stock that cannot jump, equation (21).

# CHAPTER SUMMARY

A stochastic process  $Z(t)$  is a Brownian motion if it is normally distributed, changes independently over time, has variance proportional to time, and is continuous. The change in Brownian motion is denoted  $dZ(t)$ . The process  $Z(t)$  and its change  $dZ(t)$  provide the foundation for modern derivatives pricing models. The Brownian process  $Z(t)$  by itself would be a poor model of an asset price, but its change,  $dZ(t)$ , provides a model for asset risk. By multiplying  $dZ(t)$  by a scale factor and adding a drift term, we can control the variance and mean, and thereby construct more realistic processes. Such processes are called Ito processes or diffusion processes. Black and Scholes used just such a process in their original derivation of the option pricing model.

Given that a stock follows a particular Itô process, Itô's Lemma permits us to compute the process followed by an option or other claim on the stock. The pricing of claims with payoffs  $S^a$  and  $S^a Q^b$ , where  $S$  and  $Q$  follow geometric Brownian motion, illustrates the use of Itô's Lemma.

An important objection to Brownian motion as a driving process for a stock is the continuity of its path. It is possible to add jumps to a Brownian process, and there is a version of Itô's Lemma for such cases.

# FURTHER READING

Many books cover the material in this chapter at a more advanced level. Merton (1990) in particular is an outstanding introduction. Other good sources include Neftci (2000), Duffie (2001), Wilmott (1998), Karatzas and Shreve (1991), and Baxter and Rennie (1996).
